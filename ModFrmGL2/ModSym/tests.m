freeze;

/****-*-magma-* EXPORT DATE: 2004-03-08 ************************************
                                                                          
                  HECKE:  Modular Symbols in Magma                       
                           William A. Stein                                
                                                                         
  FILE: tests.m  (Some code to test the functionality.)                   

  $Header: /home/was/magma/packages/modsym/code/RCS/tests.m,v 1.3 2001/05/30 19:18:00 was Exp was $

  $Log: tests.m,v $
  Revision 1.3  2001/05/30 19:18:00  was
  ?

  Revision 1.2  2001/05/14 04:59:44  was
  nothing..

  Revision 1.1  2001/04/20 04:47:02  was
  Initial revision

  Revision 1.7  2000/08/01 21:40:25  was
  Fixed the "Random lies!!!"

  Revision 1.6  2000/08/01 04:23:31  was
  Don't know... left out.

  Revision 1.5  2000/06/03 04:30:23  was
  ...

  Revision 1.4  2000/06/03 04:18:02  was
  fine tune

  Revision 1.3  2000/06/03 04:13:00  was
  got rid of imports.

  Revision 1.2  2000/06/03 04:11:03  was
  Round

  Revision 1.1  2000/05/02 08:11:07  was
  Initial revision
  
                                                                         
 ***************************************************************************/

if assigned SmallestPrimeNondivisor then
   delete SmallestPrimeNondivisor;
end if;
import "./ModSym/arith.m" : SmallestPrimeNondivisor;

function my_idxG0(n)
   return 
      &*[Integers()| t[1]^t[2] + t[1]^(t[2]-1) : t in Factorization(n)];
end function;

function my_Round(x)   // this function disappeared from MAGMA!!!!!!!!!!
   n := Floor(x);
   return (x-n) ge 0.5 select n+1 else n;
end function;



print "This program runs a series of tests on the Modular Symbols";
print "package.  If any of the tests fail or the program produces an";
print "error message while executing, then something is wrong.";
print "The tests are randomized, so running them multiple times";
print "could be wise.\n";
print "--------------------------------------------------------------\n";


maxN := 15;
maxk := 6;
base := Rationals();
//base := GF(5);

function RandomSpace()
      N      := Random([1..maxN]);
      k      := Random([2..maxk]);
      if N eq 0 then
         N := 1;
         "WEIRD! - BUG IN RANDOM!!";
      end if;
      G      := DirichletGroup(N,Rationals());
      eps    := Random(G);
      printf "\n\n\n\t\t=>>>> k = %o, N = %o, eps = %o <<<<=\n", k, N, eps;
      return ModularSymbols(eps,k), N, k, eps;
end function;


function RandomRationalSpace()
      N := Random(1,maxN);
      if N eq 0 then
         N := 1;
         "WEIRD! - BUG IN RANDOM!!";
      end if;
      k := Random(2,maxk);
      G := DirichletGroup(N);
      eps := Random(G);
      printf "\n\n\n\t\t=>>>> k = %o, N = %o, eps = %o <<<<=\n", k, N, eps;
      return ModularSymbols(eps,k), N, k, eps;
end function;



function RandomSpaceWithTrivialCharacter()
      N      := Random(maxN) + 1;
      k      := Random(2,Max(2,maxk - (N div 10)));
      printf " k = %o, N = %o ...\n", 
                  k, N;
      return ModularSymbols(N, k), N, k;
end function;


/* Compute several random spaces of modular symbols, and verify
   that their dimensions agree with the dimensions computed using
   the standard dimension formulas. */
procedure Test_DimensionConsistency(numchecks)
   print "** Dimension of cuspidal subspace test **";
   if Characteristic(base) ne 0 then
      return;
   end if;

   for i in [1..numchecks] do
      M,N,k,eps := RandomSpace();
      t := Cputime();
      d := DimensionCuspForms(eps,k);
      assert 2*d eq Dimension(CuspidalSubspace(M));
      printf " \tdim  = %o,    \t%os\n",Dimension(CuspidalSubspace(M)),Cputime(t);
   end for;
end procedure;


/* Compute two random Hecke operators on a random space, and
   verify that they commute. */
procedure Test_HeckeOperatorsCommute(numcheck)
   print "** Hecke operators commute test **";
   for i in [1..numcheck] do
      M := RandomSpace();
      t := Cputime();
      n := Random(2,17);
      m := Random(2,17);
      T1:= HeckeOperator(M,n);
      T2:= HeckeOperator(M,m);
      printf "n = %o, m = %o\n", n, m;
      assert T1*T2 eq T2*T1;
      printf " time = %os\n", Cputime(t);
   end for;
end procedure;


procedure Test_DegeneracyMaps(numcheck)
   print "** Degeneracy maps test **";
   print "This tests conversion between Manin and modular symbols.";
   for i in [1..numcheck] do
      t := Cputime();
      M,N,k,eps := RandomSpace();
      if N gt 1 then
         divs := [d : d in Divisors(N) | d mod Conductor(eps) eq 0 ];
         NN   := Random(divs);
      else
         continue;
      end if;

      oldM := ModularSymbols(M,NN);
      print "  Lower level space has level ",NN;

      beta_1  := DegeneracyMatrix(oldM,M,1);
      alpha_1 := DegeneracyMatrix(M,oldM,1);
      d := N div NN;
      beta_d  := DegeneracyMatrix(oldM,M,d);
      alpha_d := DegeneracyMatrix(M,oldM,d);
 
      if Dimension(M) eq 0 or Dimension(oldM) eq 0 then
         continue;
      end if;

      ba_1:= beta_1*alpha_1; 
      X   := Parent(ba_1)!0;
      idx := my_idxG0(N) div my_idxG0(NN);
      for i in [1..NumberOfRows(X)] do 
         X[i,i] := idx;
      end for;
      assert ba_1 eq X;
      ba_d := beta_d*alpha_d;
      assert ba_d eq X*(d^(k-2));
      printf " time = %os\n", Cputime(t);
   end for;

end procedure;



/* Compute several random spaces of modular symbols with trivial
   character, and verify that the dimensions of their cuspidal new 
   subspaces agree with the dimensions computed using the standard 
   dimension formulas. */

procedure Test_DimensionNewSubspace(numcheck)
   if Characteristic(base) ne 0 then
      return;
   end if;
   print "** Dimension of new subspace check **";
   for i in [1..numcheck] do
      M,N,k := RandomSpaceWithTrivialCharacter();
      t := Cputime();
      d := DimensionNewCuspFormsGamma0(N,k);
      assert 2*d eq Dimension(NewSubspace(CuspidalSubspace(M)));
      printf " \tdim  = %o,    \t%os\n",
              Dimension(NewSubspace(CuspidalSubspace(M))),Cputime(t);
   end for;
end procedure;


procedure Test_NewformDecomposition(numchecks)
   if Characteristic(base) ne 0 then
      return;
   end if;

   print "** Compute a bunch of NEWFORM decompositions ** ";
   print "The only check is that the program doesn't bomb.";
   print "For decomposition to work at all, things must be working well.\n";

   for i in [1..numchecks] do
      M := RandomSpace();
      t := Cputime();
      D := NewformDecomposition(CuspidalSubspace(M));
      D;
      printf " \ttime  = %os\n\n",Cputime(t);
   end for;
end procedure;


procedure Test_Decomposition(numchecks)
   print "** Compute a bunch of decompositions ** ";
   print "The only check is that the program doesn't bomb.";
   print "For decomposition to work at all, things must be working well.\n";

   for i in [1..numchecks] do
      M := RandomSpace();
      t := Cputime();
      D := Decomposition(M,13);
      D;
      for A in D do
         VectorSpace(A);
      end for;
      printf " \ttime  = %os\n\n",Cputime(t);
   end for;

end procedure;

procedure Test_Eigenforms(numchecks)
   print "** Compute a bunch of eigenforms ** ";
   print "The only check is that the program doesn't bomb.";
   for i in [1..numchecks] do
      M := RandomSpace();
      t := Cputime();
      D := Decomposition(NewSubspace(CuspidalSubspace(M)),23);
      D;
      for i in [1..#D] do
         if IsIrreducible(D[i]) and IsCuspidal(D[i]) then
            qEigenform(D[i],7);
         end if;
      end for;
      printf " \ttime  = %os\n\n",Cputime(t);
   end for;
end procedure;


procedure Test_EllipticCurve()
   if Characteristic(base) ne 0 then
      return;
   end if;

   print "** Computing c_4 and c_6 for elliptic curve 37A...";
   M := ModularSymbols(37,2);
   A := SortDecomposition(NewformDecomposition(CuspidalSubspace(M)))[1];
   time E := EllipticCurve(A : Database:=false);
   print "Testing Tamagawa number computation...";
   assert TamagawaNumber(A,37) eq TamagawaNumber(E,37);
   print "success.";

   print "** Computing c_4 and c_6 for elliptic curve 65A...";
   M := ModularSymbols(65,2);
   A := SortDecomposition(NewformDecomposition(CuspidalSubspace(M)))[1];
   time E := EllipticCurve(A : Database := false);
   print "Testing Tamagawa number computation...";
   assert TamagawaNumber(A,5) eq TamagawaNumber(E,5);
   print "success.";

   print "** Testing database...";
   D := EllipticCurveDatabase();
   repeat 
      N := Random(11,300);
      n := NumberOfIsogenyClasses(D, N);
   until n gt 0;
   r := Random(1,n);
   E := EllipticCurve(D,N,r,1);
   printf "Curve %o at level %o.\n", r, N;
   M := ModularSymbols(E);
   printf "Found in space of modular symbols = %o.\n",M;
   printf "Trying to recover curve...";
   F := EllipticCurve(M);
   if E eq F then
      print "Recovered elliptic curve.";
   else
      assert false;
   end if;
end procedure;


procedure Test_qExpansionBasis(numchecks)
   print "** Integral Basis Tests ** ";
   for i in [1..numchecks] do
      M := CuspidalSubspace(RandomRationalSpace());
      t := Cputime();
      bnd := my_Round(HeckeBound(M));
      delete M`qintbasis;
      Quniv := qExpansionBasis(M, bnd : Al := "Universal");
      Quniv;
      delete M`qintbasis;
      Qnf   := qExpansionBasis(M, bnd : Al := "Newform");
      Qnf;
      if Quniv ne Qnf then
         error "Test_qExpansionBasis failed on ",M;
      end if;
      printf "\t\t\tTEST PASSED!!!\n";
      printf " \ttime  = %os\n\n",Cputime(t);
   end for;
end procedure;


procedure Test_AtkinLehner(numchecks)
   for i in [1..numchecks] do
      N := Random(maxN)+1;
      k := 2*Random(1,Max(1,maxk-(N div 10)));
      printf " k = %o, N = %o ...\n", k, N;
      S := CuspidalSubspace(ModularSymbols(N,k,+1));
      t := Cputime();
      print "S = ", S;
      [qExpansionBasis(A,25) : A in AtkinLehnerDecomposition(S)]; 
      print "time = ", Cputime(t);
   end for;
end procedure;

// Here we test some of Jeremy Rouse's results
// Currently just tests genus

procedure Test_Rouse_single(gens, level, genus, id)
   printf "Testing X_%o ...\n", id;
   t := Cputime();
   N := level;
   G := GL(2,IntegerRing(N));
   H_N := sub<G | gens>;
   H := PSL2Subgroup(H_N, true);
// print "Creating space of modular symbols...\n";
   M := ModularSymbols(H);
//print "Done!\n";
// print "Computing cuspidal subspace...\n";
   S := CuspidalSubspace(M);
// print "Done!\n";
   assert Dimension(S) eq 2*genus;
   print "time = ", Cputime(t);  
end procedure;

procedure Test_Rouse()
  Test_Rouse_single([[1,3,10,7],[1,0,4,13],[1,2,4,13],[1,3,12,15]],16,1,150);
  Test_Rouse_single([[1,3,0,7],[1,0,4,5],[1,3,14,7],[1,1,6,3]],16,1,153);
  Test_Rouse_single([[1,3,12,3],[1,1,12,7],[1,3,0,3],[1,0,2,3]],16,1,155);
  Test_Rouse_single([[1,3,12,3],[1,0,2,3],[1,0,4,5],[1,2,0,13]],16,1,156);
  Test_Rouse_single([[13,10,0,1],[13,13,2,3],[15,13,0,1],[11,11,2,1]],16,1,165);
  Test_Rouse_single([[5,15,2,3],[13,13,2,3],[15,13,0,1],[11,11,2,1]],16,1,166);
  Test_Rouse_single([[3,0,0,7],[3,0,0,3],[3,3,2,1],[3,2,0,1]],16,1,167);
  Test_Rouse_single([[4,7,15,12],[7,14,7,9],[2,1,11,9]],16,2,441);
  Test_Rouse_single([[9,0,8,7],[15,14,0,3],[7,0,8,3],[1,0,0,7],[15,0,0,7]],16,2,504);
  Test_Rouse_single([[7,0,0,3],[3,5,14,7],[7,7,2,1]],16,3,556);
  Test_Rouse_single([[3,5,6,3],[3,5,14,7],[7,7,2,1]],16,3,558);
  Test_Rouse_single([[7,14,0,1],[1,5,6,11],[3,0,0,7]],16,3,563);
  Test_Rouse_single([[7,14,0,1],[5,0,0,1],[1,5,6,3]],16,3,566);
  Test_Rouse_single([[25,18,2,7],[25,25,2,7],[1,0,8,1],[25,11,2,7]],32,3,619);
  Test_Rouse_single([[29,0,4,1],[31,27,0,1],[1,4,0,1],[31,31,2,1]],32,3,649);
end procedure;

function my_Gamma(N, type)
  if N eq 1 then
     // just take en entire GL(2,N) for some N
    return PSL2Subgroup(GL(2,IntegerRing(2)), false);
  end if;
  Z_N := IntegerRing(N);
  G_N := GL(2, Z_N);
  gens := [-G_N!1];
  U, psi := UnitGroup(Z_N);
  for t in Generators(U) do
     Append(~gens, G_N![psi(t),0,0,1]);
  end for;
  if Type(type) eq RngIntElt then
     Append(~gens, G_N![1,1,0,1]);   
     if type eq 0 then
       for t in Generators(U) do
          Append(~gens, G_N![1,0,0,psi(t)]);
       end for;
     end if;
  end if;
  H_N := sub<G_N | gens>;
  return PSL2Subgroup(H_N, true);
end function;

// Here we test some easy examples from Stein's book
procedure Test_Stein_8_33()
  printf "Testing Stein Example 8.33\n";
  M := ModularSymbols(my_Gamma(1,0),4);
  assert Dimension(M) eq 1;
  // There is only the Eisenstein - E4
  for p in [2,3,5,7,11] do
     Tp := HeckeOperator(M,p);
     assert Tp eq Matrix([[p^3+1]]);
  end for;
end procedure;

procedure Test_Stein_8_34()
  printf "Testing Stein Example 8.34\n";
  M := ModularSymbols(my_Gamma(11,0));
  assert Dimension(M) eq 3;
  T := HeckeOperator(M,2);
  assert Eigenvalues(T) eq {<3,1>,<-2,2>};
end procedure;

procedure Test_Stein_8_35()
  printf "Testing Stein Example 8.35\n";
  M := ModularSymbols(my_Gamma(3,0),6);
  assert Dimension(M) eq 4;
  T2 := HeckeOperator(M,2);
  assert Eigenvalues(T2) eq {<33,2>,<-6,2>};
  T3 := HeckeOperator(M,3);
  assert Eigenvalues(T3) eq {<1,1>, <243,1>, <9,2>};
  T5 := HeckeOperator(M,5);
  assert Eigenvalues(T5) eq {<3126,2>, <6,2>};
  T7 := HeckeOperator(M,7);
  assert Eigenvalues(T7) eq {<16808,2>,<-40,2>};
  S := CuspidalSubspace(M);
  assert Dimension(S) eq 2;
  g := qEigenform(S,8);
  q := Parent(g).1;
  assert g eq q-6*q^2+9*q^3+4*q^4+6*q^5-54*q^6-40*q^7+O(q^8);
end procedure;

procedure Test_Stein_8_36()
  printf "Testing Stein Example 8.36\n";
  M := ModularSymbols(my_Gamma(43,0));
  assert Dimension(M) eq 7;
  T2 := HeckeOperator(M,2);
  f2 := CharacteristicPolynomial(T2);
  x := Parent(f2).1;
  assert f2 eq (x-3)*(x+2)^2*(x^2-2)^2;
  S := CuspidalSubspace(M);
  assert Dimension(S) eq 6;
end procedure;

procedure Test_Stein_8_37()
  printf "Testing Stein Example 8.37\n";
  SetVerbose("ModularSymbols", 2);
  M := ModularSymbols(my_Gamma(2004,0));
  SetVerbose("ModularSymbols", 0);
  assert Dimension(M) eq 673;
  M_plus := ModularSymbols(my_Gamma(2004,0),2,-1);
  assert Dimension(M_plus) eq 331;
end procedure;

procedure Test_Stein_9_6()
  printf "Testing Stein Example 9.6\n";
  M_old := ModularSymbols(my_Gamma(11,0));
  S_old := CuspidalSubspace(M_old);
  assert Dimension(S_old) eq 2;
  M := ModularSymbols(my_Gamma(22,0));
  S := CuspidalSubspace(M);
  assert Dimension(S) eq 4;
  T2 := HeckeOperator(S,2);
  f2 := CharacteristicPolynomial(T2);
  x := Parent(f2).1;
  assert f2 eq (x^2+2*x+2)^2;
  Snew := NewSubspace(S);
  assert Dimension(Snew) eq 0;
end procedure;

procedure Test_Stein_9_7()
  printf "Testing Stein Example 9.7\n";
  M := ModularForms(my_Gamma(45,0));
  assert Dimension(M) eq 10;
  S := CuspidalSubspace(M);
  assert Dimension(S) eq 3;
  B := Basis(S,14);
  q := Universe(B).1;
  assert B eq [
    q - q^4 - q^10 - 2*q^13 + O(q^14),
    q^2 - q^5 - 3*q^8 + 4*q^11 + O(q^14),
    q^3 - q^6 - q^9 - q^12 + O(q^14)
	       ];
  Bnew := Basis(NewSubspace(S),14);
  assert Bnew eq [
    q + q^2 - q^4 - q^5 - 3*q^8 - q^10 + 4*q^11 - 2*q^13 + O(q^14)
		  ];
  M := ModularForms(my_Gamma(9,0));
  assert Dimension(M) eq 3;
  S := CuspidalSubspace(M);
  assert Dimension(S) eq 0;
  B := Basis(CuspidalSubspace(ModularForms(my_Gamma(15,0))), 10);
  assert B eq [
    q - q^2 - q^3 - q^4 + q^5 + q^6 + 3*q^8 + q^9 + O(q^10)
	       ];
end procedure;

procedure Test_Stein_9_8()
  printf "Testing Stein Example 9.8\n";
  S_old := CuspidalSubspace(ModularSymbols(my_Gamma(11,0),2,1));
  assert Dimension(S_old) eq 1;
  S := CuspidalSubspace(ModularSymbols(my_Gamma(55,0),2,1));
  assert Dimension(S) eq 5;
  S_new := NewSubspace(S);
  assert Dimension(S_new) eq 3;
  T5 := HeckeOperator(S_new,5);
  assert Eigenvalues(T5) eq {<1,1>,<-1,2>};
  T4 := HeckeOperator(S_new,4);
  T2 := HeckeOperator(S_new,2);
  assert T5 eq 2*T2-T4-2;
end procedure;

procedure Test_Stein()
  Test_Stein_8_33();
  Test_Stein_8_34();
  Test_Stein_8_35();
  Test_Stein_8_36();
// Here it takes quite a while to generate the group Gamma0(2004)
// in an alternative way - intersection with SL2 takes too much time
// Test_Stein_8_37();
   Test_Stein_9_6();
// At the moment spends too much time computing Hecke operators
// at primes dividing the level, so we don't run them every time
// Test_Stein_9_7();
// Test_Stein_9_8();
end procedure;

// just to record the actions 
function action_on_mod_sym(N)
  M := ModularSymbols(CongruenceSubgroup(N), 2, Rationals(), 0);
  S := CuspidalSubspace(M);
  D := NewformDecomposition(S);
  G := SL(2, Integers(N));
  gens := [Eltseq(FindLiftToSL2(x)): x in Generators(G)];
  import "./Geometry/ModSym/operators.m" : ActionOnModularSymbolsBasis;
  actions := [ActionOnModularSymbolsBasis(g, M) : g in gens];
  F := CyclotomicField(7);
  S_action := [ChangeRing(Restrict(a, VectorSpace(S)),F) : a in actions];
  S_mod := GModule(G, S_action);
  irred := Decomposition(S_mod);
  irr := [S_mod!b : b in Basis(irred[1])];
  irr_in_M := Matrix(irr)*ChangeRing(BasisMatrix(VectorSpace(S)),F);
  s := actions[3];
  t := actions[1];
  mults :=[Parent(t)!1, s, t, s*t, t*s, t^2];
  v := Basis(ChangeRing(VectorSpace(D[1]),F) meet
	     sub<ChangeRing(VectorSpace(M),F) | Rows(irr_in_M)>)[1];

  vecs := [v*ChangeRing(g,F) : g in mults];
  return 0;
end function;

function make_group_copy(M)
  k := Weight(M);
  sign := Sign(M);
  eps := DirichletCharacter(M);
  if (Evaluate(eps,-1) eq -1) then
     print "Currently can only work with even characters...";
     return false;
  end if;
  N := Level(M);
  G0 := my_Gamma(N,0);
  G1 := my_Gamma(N,1);
  Q, pi_Q := G0`ImageInLevel / G1`ImageInLevel;
  gens := SetToSequence(Generators(G0`ImageInLevel));
  D := AbsolutelyIrreducibleModules(Q,Rationals());
  reps := [pi_Q * Representation(r) : r in D];
  vals_all := [[r(g)[1,1] : g in gens] : r in reps];
  vals_eps := [Evaluate(eps, g[2,2]) : g in gens];
  for i in [1..#reps] do
     if vals_eps eq vals_all[i] then
	return ModularSymbols(D[i], k, sign, G0, pi_Q); 
     end if;
  end for;
  print "Error! Could not find an appropriate character!\n";
  return false;
end function;

function genusNSCartan(N, plus)
  primes_mul := Factorization(N);
  primes := [x[1] : x in primes_mul];
  beta3 := &and[p mod 3 eq 2 : p in primes];
  if beta3 then beta3 := 1; else beta3 := 0; end if;
  mult_n := 2^(#primes);
  A := (N-6)*EulerPhi(N) / 12;
  B := beta3 / 3;
  if plus then
    A := A / (mult_n);
    C := N / (mult_n * 4);
    for p_m in primes_mul do
       p := p_m[1];
       m := p_m[2];
       if p mod 4 eq 1 then C := C*(1-1/p); end if;
       if p mod 4 eq 3 then C := C*(1+1/p+2/p^m); end if;
    end for;
  else
    B := B * (mult_n);
    beta2 := &and[p mod 4 eq 3 : p in primes];
    if beta2 then beta2 := 1; else beta2 := 0; end if;
    C := mult_n * beta2 / 4;
  end if;
  return 1 + A - B - C;
end function;

procedure SingleTestNSCartan(N, plus)
  if plus then
    G := GammaNSplus(N);
  else
    G := GammaNS(N);
  end if;
  M := ModularSymbols(G);
  S := CuspidalSubspace(M);
  assert Dimension(S) eq 2*genusNSCartan(N,plus);
end procedure;

procedure TestNSCartan_11()
  printf "Testing the eigenform of non-split Cartan 11...\n";
  N := 11;
  G := GammaNSplus(N);
  M := ModularSymbols(G);
  S := CuspidalSubspace(M);
  f := qEigenform(S,100);
  f2 := qExpansion(Newform("121k2A"),100);
  assert f eq f2;
end procedure;

function conjugateForm(sigma, f, prec)
  q := Parent(f).1;
  conj := [sigma(x) : x in Coefficients(f)];
  conj_f := &+([conj[i]*q^i : i in [1..#conj]]);
  return conj_f + O(q^prec);
end function;

function traceForm(f, prec)
  q := Parent(f).1;
  K := BaseRing(Parent(f));
  coefs := [Trace(x) : x in Coefficients(f)];
  trace_f := &+([coefs[i]*q^i : i in [1..#coefs]]);
  return PowerSeriesRing(Rationals())!(trace_f + O(q^prec));
end function;

function IsFormConjugate(f1,f2,prec)
  assert Parent(f1) eq Parent(f2);
  K := BaseRing(Parent(f1));
  Gal_K := Automorphisms(K);
  for sigma in Gal_K do
    if conjugateForm(sigma,f1,prec) eq f2 then
      return true;
    end if;
  end for;
  return false;
end function;

procedure TestNSCartan_17()
  printf "Testing the eigenforms of non-split Cartan 17...\n";
  N := 17;
  G := GammaNSplus(N);
  M := ModularSymbols(G);
  S := CuspidalSubspace(M);
  D := Decomposition(S, HeckeBound(S));
  // These are tested against the results of Mercuri and Schoof
  g1 := qEigenform(D[1],19);
  g2 := qEigenform(D[2], 17);
  g3 := qEigenform(D[3], 13);
// Here they are from the paper
  q := Parent(g1).1;
  f1 := q-q^2-q^4+2*q^5-4*q^7+3*q^8-3*q^9-2*q^10-2*q^13+
    4*q^14-q^16+3*q^18+O(q^19);
  assert f1 eq g1;
  q := Parent(g2).1;
  K := BaseRing(Parent(g2));
  a := K.1;
  f2 := q-(a+1)*q^2+a*q^3+(a+2)*q^4-(a+1)*q^5-3*q^6+(a-1)*q^7-3*q^8-a*q^9+
  (a+4)*q^10-3*q^11+(a+3)*q^12-(a+2)*q^13+(a-2)*q^14-3*q^15+(a-1)*q^16+O(q^17);
  assert IsFormConjugate(f2,g2,17);
  q := Parent(g3).1;
  K := BaseRing(Parent(g3));
  b := K.1;
  f3 := q-(b^2+b-2)*q^2-(b+1)*q^3+b*q^4+(b^2+b-4)*q^5+(2*b^2+2*b-3)*q^6+b*q^7+
  (b^2+b-3)*q^8+(b^2+2*b-2)*q^9+
  (2*b^2+b-6)*q^10-(2*b^2-2)*q^11-(b^2+b)*q^12+O(q^13);
  assert IsFormConjugate(f3,g3,13);
end procedure;

function buildEigenbasisNS(N)
  G := GammaNSplus(N);
  M := ModularSymbols(G);
  S := CuspidalSubspace(M);
// return qIntegralBasis(S,prec : Al := "Universal");
  prec := Dimension(S) div 2 + 10;
  return qEigenformBasis(M, prec);
end function;

function timeEigenbasisNS(N)
  res := [];
  primes := PrimesUpTo(N);
  odd_primes := primes[2..#primes];
  for p in odd_primes do
     printf "Constructing eigenbasis for Xns+(%o)...\n", p;
     tm := Cputime();
     tmp := buildEigenbasisNS(p);
     tm := Cputime() - tm;
     printf "Took %o seconds.\n", tm;
     Append(~res, [p,tm]);
  end for;
  return res;
end function;

// These are tests for the non-split Cartan
procedure Test_NS_cartan(max_N)
   // right now, this is only worked out for odd primes
   //  !!! TODO : handle all N, shouldn't be much more work
  printf "Testing dimensions of non-split Cartan...\n";
  primes := PrimesUpTo(max_N);
  odd_primes := primes[2..#primes];
  for p in odd_primes do
      printf "testing p=%o..\n", p;
      SingleTestNSCartan(p, false);
      SingleTestNSCartan(p, true);
  end for;
end procedure;

function benchmark(G)
  M := ModularForms(G);
  Snew := NewSubspace(CuspidalSubspace(M));
  prec := Dimension(Snew) + 10;
  tm := Cputime();
  tmp := [* qExpansion(f[1],prec) : f in Newforms(Snew) *];
  return Cputime() - tm;
end function;

function Test_John_timing(N)
  G := GammaNSplus(N);
  p := NextPrime(Index(G));
  // Constructing a Gamma0(p) with ~ same number of representatives
  time_0 := benchmark(Gamma0(p));
  time_1 := benchmark(G);
  return [time_0, time_1];
end function;

function get_traces_data_up_to(max_N, prec)
  primes := PrimesUpTo(max_N);
  odd_primes := primes[2..#primes];
  res := [];
  for p in odd_primes do
     G := GammaNSplus(p);
     M := ModularForms(G);
     Snew := NewSubspace(CuspidalSubspace(M));
     forms := [* qExpansion(f[1],prec) : f in Newforms(Snew) *];
     trace_forms := [traceForm(f,prec) : f in forms];
     if #trace_forms ne 0 then
        trace_form := &+trace_forms;
     else
        trace_form := PowerSeriesRing(Rationals())!0;
     end if;
     Append(~res, trace_form);
  end for;
  return odd_primes, res;
end function;

function get_decomposition_dim_and_char_poly(N, max_p)
  G := GammaNSplus(N);
  M := ModularSymbols(G,2,1);
  S := CuspidalSubspace(M);
  D := Decomposition(S, HeckeBound(S));
  dims := [Dimension(d) : d in D];
  primes := PrimesUpTo(max_p);
  polys := [CharacteristicPolynomial(HeckeOperator(S,p)) : p in primes];
  facs := [<primes[i], Factorization(polys[i])> : i in [1..#primes]];
  return dims, facs;
end function;

procedure dec_dim_char_poly_up_to(N, max_p, output_fname)
  // This is just so that the polynomials will look better
  R<x> := PolynomialRing(Rationals());
  primes := PrimesUpTo(N);
  odd_primes := primes[5..#primes];
  output_file := Open(output_fname, "w");
  for p in odd_primes do
     fprintf output_file, "Data for X_ns+(%o):\n", p;
     dims, facs := get_decomposition_dim_and_char_poly(p, max_p);
     fprintf output_file, "Dimensions of the irreducible subspaces:\n%o\n",
             dims;
     fprintf output_file, "Factorization of the characteristic polynomial of the Hecke operators:\n%o\n\n", facs;
  end for;
  delete output_file;
end procedure;

procedure Test_Zywina()
  printf "Testing the Zywina example Gamma(7)...\n";
  N := 7;
  G := my_Gamma(N, "full");
  // until we shall make it work with characters
  // M := ModularSymbols(G)
  M := ModularSymbols(G, 2, Rationals(), 0);
  S := CuspidalSubspace(M);
  f := qIntegralBasis(S, 12);
  q := Universe(f).1;
  assert f[1] eq q-3*q^8+O(q^12);
  assert f[2] eq q^2-3*q^9+O(q^12);
  assert f[3] eq q^4-4*q^11+O(q^12);
  s := GL(2, Rationals())![0,-1,1,0];
  s_mat := ActionOnEchelonFormBasis(s, M);
  F := CyclotomicField(7);
  zeta_7 := F.1;
  alpha := zeta_7 + zeta_7^(-1);
  vals := [-3*alpha^2-2*alpha+2, 2*alpha^2-alpha-6, alpha^2+3*alpha-3,
	     -alpha^2-3*alpha+3, 3*alpha^2+2*alpha-2, 2*alpha^2-alpha-6];
  Zywina_mat := 1/7 * SymmetricMatrix(F, vals);
  assert s_mat eq Zywina_mat;
end procedure;

function all_hecke(N, p)
  GL_N := GL(2, Integers(N));
  SL_N := SL(2, Integers(N));
  triv := sub<GL_N | -GL_N!1>;
  all_subs := [triv] cat IntermediateSubgroups(GL_N, triv) cat [GL_N];
  subs := [s : s in all_subs | #(s / (s meet SL_N)) eq EulerPhi(N)];
  Gs := [PSL2Subgroup(s) : s in all_subs];
  Ms := [ModularSymbols(G, 2, Rationals(), 0) : G in Gs];
  return [* HeckeOperator(M,p) : M in Ms *];
end function;

function get_eigenforms(N, gens : prec := -1)
  if N eq 1 then
    return [];
  end if;
  SL_N := SL(2, Integers(N));
  H := sub<SL_N | gens>;
  G := PSL2Subgroup(H);
  M := ModularSymbols(G, 2, Rationals(), 0);
  S := CuspidalSubspace(M);
  // When we make this one work as well, we will use it
  // D := Decomposition(S, HeckeBound(S));
  D := NewformDecomposition(S);
  if prec eq -1 then prec := 2*Dimension(S)+10; end if;
  B := [*qEigenform(d, prec) : d in D*]; 
  // B := qIntegralBasis(S, 2*Dimension(S) + 10);
  return B;
end function;

function GetEigenforms(grp : prec := -1)
  return get_eigenforms(grp`level, grp`matgens : prec := prec);
end function;

function is_same_eigenform(f,g)
  K_f := BaseRing(Parent(f));
  K_g := BaseRing(Parent(g));
  auts := Automorphisms(K_g);
  // This branching is due to Magma's different behaviour in the case of the rational field
  K_f_is_Q := K_f eq Rationals();
  K_g_is_Q := K_g eq Rationals();
  if K_f_is_Q or K_g_is_Q then
    if K_f_is_Q ne K_g_is_Q then
      return false;
    else
      phi := auts[1];
    end if;
  else
    is_isomorphic, phi := IsIsomorphic(K_f, K_g);
    if not is_isomorphic then return false; end if;
  end if;
  q := Parent(g).1;
  prec := Minimum(AbsolutePrecision(f), AbsolutePrecision(g));
  for aut in auts do
    psi := phi*aut;
    is_eq := &and [Coefficient(f,i)@psi eq Coefficient(g,i) : i in [1..prec-1]];
    if is_eq then return true; end if;
  end for;
  return false;	      
end function;
	      
function get_all_eigenforms_level(N, grps)
  M_full := ModularSymbols(CongruenceSubgroup(N));
  S_full := CuspidalSubspace(M_full);
  D := NewformDecomposition(S_full);
  prec := 2*Dimension(S_full)+10;
  eigs := [* qEigenform(d, prec) : d in D*];
  result := AssociativeArray();
  not_in_eigs := [];
  errors := [];
  for G in grps do
    printf "working on G = %o\n", G[1];
    try
      result[G[1]] := get_eigenforms(N, G[2]);
      are_in_eigs := true;
      for f in result[G[1]] do
	is_in_eigs := &or [is_same_eigenform(f,eig) : eig in eigs];
        are_in_eigs := are_in_eigs and is_in_eigs;
      end for;
      if not are_in_eigs then
        Append(~not_in_eigs, G[1]);
      end if;
    catch err
        Append(~errors, <G[1],err`Object>);
    end try;
  end for;
  return result, not_in_eigs, errors;
end function;

function get_all_eigenforms(grps)
  result := AssociativeArray();
  not_in_eigs := [];
  errors := [];
  for N in Keys(grps) do
	  res, neig, err := get_all_eigenforms_level(N, grps[N]);
     for k in Keys(res) do
	result[k] := res[k];
     end for;
     not_in_eigs cat:= neig;
     errors cat:= err;
  end for;
  return result, not_in_eigs, errors;
end function;

// The load can't be in a function. do that before.
// Have to change original data files to be able to import them.

  dir := GetCurrentDirectory();
  ChangeDirectory("/Users/eranassaf/Documents/Research/Modular\ Symbols/csg24.dat/");
  if assigned L then
    delete L;
  end if;
  load "/Users/eranassaf/Documents/Research/Modular\ Symbols/csg24.dat/csg6-lev120.dat";
  ChangeDirectory(dir);

function load_groups(L)
  grps_by_name := AssociativeArray();
  for l in L do
     grps_by_name[l`name] := l;
  end for;
  return grps_by_name;
end function;

function load_groups_by_level(L)
  gens_by_level := AssociativeArray();
  for l in L do
     if IsDefined(gens_by_level, l`level) then
       Append(~gens_by_level[l`level], <l`name, l`matgens>);
     else
       gens_by_level[l`level] := [<l`name, l`matgens>];
     end if;
  end for;
  return gens_by_level;
end function;

function load_groups_genus(L)
  grps_by_genus := AssociativeArray();
  for l in L do
     if IsDefined(grps_by_genus, l`genus) then
       Append(~grps_by_genus[l`genus], l`name);
     else
       grps_by_genus[l`genus] := [l`name];
     end if;
  end for;
  return grps_by_genus;
end function;

procedure DoTests(numchecks)
   Test_Eigenforms(numchecks);
   Test_NewformDecomposition(numchecks);
   Test_Decomposition(numchecks);
   Test_HeckeOperatorsCommute(numchecks);
   Test_DegeneracyMaps(numchecks);
   Test_DimensionNewSubspace(numchecks);
   Test_DimensionConsistency(numchecks);
 //  Test_EllipticCurve();
   Test_qExpansionBasis(numchecks);
   Test_Rouse();
   Test_Stein();
   Test_NS_cartan(30);
   TestNSCartan_11();
   TestNSCartan_17();
// Test_Zywina();
end procedure;

function get_det_n_order(G, n)
  N := Level(G);
  H := ImageInLevelGL(G);
  gens := Generators(H);
  prods := {H!1};
  old_prods := {};
  while #old_prods ne #prods do
    old_prods := prods;
    new_prods := &join{{g1*g2 : g2 in prods} : g1 in gens};
    new_prods := new_prods join &join{{g2*g1 : g2 in prods} : g1 in gens};
    prods := prods join new_prods;
  end while;
  basis := [Vector(prod) : prod in prods];
  U := sub<Universe(basis) | basis>;
  M2N := MatrixAlgebra(Integers(N),2);
  det_n_reps := [M2N!Eltseq(x) : x in U | (x[1]*x[4]-x[2]*x[3] eq n) and
		    (x ne 0)];
  return det_n_reps;
end function;

function involution(A)
  a,b,c,d := Explode(Eltseq(A));
  return Parent(A)![d,-b,-c,a];
end function;

// This is incredibly slow, but seems to at least work...

function get_hecke_representatives(G,n)
  N := Level(G);
  M2N := MatrixAlgebra(Integers(N),2);
  M2Z := MatrixAlgebra(Integers(), 2);
  det_n_reps := get_det_n_order(G,n);
  H := ImageInLevel(G);
  // !!! TODO : This could be done much more efficiently, using Todd-Coxeter
  // Unfortunately, at the moment Magma would only do it with groups as
  // arguments
  good_idxs := [1..#det_n_reps];
  equivalents := [];
  i := 1;
  while i lt #good_idxs do
       for_removal := [];                    
       for j in good_idxs[i+1..#good_idxs] do
	  if exists(h){h : h in H | det_n_reps[good_idxs[i]] eq
		       h*det_n_reps[j]} then
	     Append(~for_removal, j);
          end if;
       end for;
       good_idxs := [j : j in good_idxs | j notin for_removal];
       Append(~equivalents, [good_idxs[i]] cat for_removal);
       i +:= 1;
  end while;
  R := &cat[[[n div a, b, 0, a] : b in [0..a-1]] : a in Divisors(n)];
  d, n_inv, dummy := XGCD(n,N);
  reps := [];
  for r in R do
    for j in [1..#equivalents] do
       idx := 1;
       found := false;
       while (not found) and (idx le #equivalents[j]) do
          xr := det_n_reps[equivalents[j][idx]] * involution(M2N!r);
          // We lift to ZZ because magma can't compute ideal<M2N | d>
          if M2Z!xr in ideal<M2Z | d> then
            mod_rep := MatrixAlgebra(Integers(N div d), 2)!(M2Z!xr div d);
            mod_rep := n_inv * mod_rep;
            rep := FindLiftToM2Z(mod_rep)*M2Z!r;
            if M2N!rep eq det_n_reps[equivalents[j][idx]] then
              Append(~reps, rep);
              found := true;
            end if;
          end if;
          idx +:= 1;
      end while;
    end for;
  end for;
  return [Eltseq(rep) : rep in reps];
end function;
