// freeze;
ROOT_DIR := "./";
v1, v2, v3 := GetVersion();
version := Vector([v1, v2, v3]);
if version lt Vector([2,19,6]) then
    error Sprintf("This package only supports Magma version >= 2.19-6!
    	  	    This is version %o.%o-%o!", v1, v2, v3);
end if;
AttachSpec(ROOT_DIR cat "ModFrmGL2.spec");
SetHelpUseExternalBrowser(false);
SetDebugOnError(true);
// SetVerbose("ModularSymbols", 0);

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
if assigned MC_NewformDecompositionOfCuspidalSubspace then
   delete MC_NewformDecompositionOfCuspidalSubspace;
end if;
import "./ModSym/multichar.m" : MC_NewformDecompositionOfCuspidalSubspace;
import "./Tests/nsCartan.m" : Test_NSCartan_11, Test_NSCartan_17, Test_NSCartan;
import "./ModSym/decomp.m" : GetNN;
import "./ModSym/modsym.m" : GetRealConjugate;
import "twists.m" : TwistBasis0, get_qexps_from_bases, FindCurveSimple;

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

forward MakeGroupCopy, my_Gamma;

procedure Test_DimensionConsistency_GammaN_Single(N, k)
  t := Cputime();
  M := ModularSymbols(CongruenceSubgroup(N), k);
  M1 := ModularSymbols(my_Gamma(N, "full"), k);
  // This wouldn't work when k is odd, since we need Gamma prime to
  // contain -1.
  // Test without characters
  //  M2 := ModularSymbols(my_Gamma(N, "full"), k, Rationals(), 0);
  assert Dimension(M) eq Dimension(M1);
  //  assert Dimension(M) eq Dimension(M2);
  S := CuspidalSubspace(M);
  S1 := CuspidalSubspace(M1);
  //  S2 := CuspidalSubspace(M2);
  assert Dimension(S) eq Dimension(S1);
  //  assert Dimension(S) eq Dimension(S2);
  printf " \tdim  = %o,    \t%os\n",Dimension(CuspidalSubspace(M)),Cputime(t);
end procedure;

/* Compute several random spaces of modular symbols, and verify
   that their dimensions agree with the dimensions computed using
   the standard dimension formulas. */

procedure Test_DimensionConsistency_Single(M, N, k, eps)
    t := Cputime();
    d := DimensionCuspForms(eps,k);
    assert 2*d eq Dimension(CuspidalSubspace(M));
    printf " \tdim  = %o,    \t%os\n",Dimension(CuspidalSubspace(M)),Cputime(t);
end procedure;

procedure Test_DimensionConsistency(numchecks)
   print "** Dimension of cuspidal subspace test **";
   if Characteristic(base) ne 0 then
      return;
   end if;

   for i in [1..numchecks] do
      M,N,k,eps := RandomSpace();
      Test_DimensionConsistency_Single(M, N, k, eps);
      M_copy := MakeGroupCopy(M);
      Test_DimensionConsistency_Single(M_copy, N, k, eps);
      // Testing Gamma(N)
      Test_DimensionConsistency_GammaN_Single(N,k);
   end for;
end procedure;

/* Compute two random Hecke operators on a random space, and
   verify that they commute. */

procedure Test_HeckeOperatorsCommute_Single(M)
    t := Cputime();
    n := Random(2,17);
    m := Random(2,17);
    T1:= HeckeOperator(M,n);
    T2:= HeckeOperator(M,m);
    printf "n = %o, m = %o\n", n, m;
    assert T1*T2 eq T2*T1;
    printf " time = %os\n", Cputime(t);
end procedure;

procedure Test_HeckeOperatorsCommute(numcheck)
   print "** Hecke operators commute test **";
   for i in [1..numcheck] do
      M := RandomSpace();
      Test_HeckeOperatorsCommute_Single(M);
      //if Evaluate(DirichletCharacter(M),-1) eq 1 then
	  Test_HeckeOperatorsCommute_Single(MakeGroupCopy(M));
      //end if;
   end for;
end procedure;

procedure Test_DegeneracyMaps_Single(M, N, k, eps)
    t := Cputime();
    if N gt 1 then
	if IsOfGammaType(M) then
            divs := [d : d in Divisors(N) | d mod Conductor(eps) eq 0 ];
	else
	    G_N := ImageInLevelGL(LevelSubgroup(M));
	    divs := [d : d in GetNN(M) | d meet G_N subset Kernel(eps)];
	end if;
        NN   := Random(divs);
    else
        return;
    end if;
    
    oldM := ModularSymbols(M,NN);
    print "  Lower level space has level ",NN;

    if IsOfGammaType(M) then
	one := 1;
	d := N div NN;
	idx := my_idxG0(N) div my_idxG0(NN);
	idx_d := idx * (d^(k-2));
    else
	one := GL(2, Rationals())!1;
	NN_prime := sub<ModLevelGL(LevelSubgroup(M)) | G_N, NN>;
	PNN := PSL2Subgroup(NN_prime);
	d := GL(2, Rationals())![1,0,0,N div Level(PNN)];
	idx := Index(PNN, LevelSubgroup(M));
	idx_d := Index(PNN, LevelSubgroup(M)^d);
    end if;
    
    beta_1  := DegeneracyMatrix(oldM,M,one);
    alpha_1 := DegeneracyMatrix(M,oldM,one);
    
    
    beta_d  := DegeneracyMatrix(oldM,M,d);
    alpha_d := DegeneracyMatrix(M,oldM,d);
    
    if Dimension(M) eq 0 or Dimension(oldM) eq 0 then
        return;
    end if;
    
    ba_1:= beta_1*alpha_1; 
    X   := Parent(ba_1)!0;
    for i in [1..NumberOfRows(X)] do 
        X[i,i] := 1;
    end for;
    assert ba_1 eq X*idx;
    ba_d := beta_d*alpha_d;
    assert ba_d eq X*idx_d;
    printf " time = %os\n", Cputime(t);
end procedure;

procedure Test_DegeneracyMaps(numcheck)
   print "** Degeneracy maps test **";
   print "This tests conversion between Manin and modular symbols.";
   for i in [1..numcheck] do
      M,N,k,eps := RandomSpace();
      Test_DegeneracyMaps_Single(M, N, k, eps);
      //if Evaluate(eps, -1) eq 1 then
	  M_copy := MakeGroupCopy(M);
	  eps_copy := DirichletCharacter(M_copy);
	  Test_DegeneracyMaps_Single(M_copy, N, k, eps_copy);
      //end if;
   end for;
end procedure;

/* Compute several random spaces of modular symbols with trivial
   character, and verify that the dimensions of their cuspidal new 
   subspaces agree with the dimensions computed using the standard 
   dimension formulas. */

procedure Test_DimensionNewSubspace_Single(M, N, k)
    t := Cputime();
    d := DimensionNewCuspFormsGamma0(N,k);
    assert 2*d eq Dimension(NewSubspace(CuspidalSubspace(M)));
    printf " \tdim  = %o,    \t%os\n",
           Dimension(NewSubspace(CuspidalSubspace(M))),Cputime(t);
end procedure;

procedure Test_DimensionNewSubspace(numcheck)
   if Characteristic(base) ne 0 then
      return;
   end if;
   print "** Dimension of new subspace check **";
   for i in [1..numcheck] do
      M,N,k := RandomSpaceWithTrivialCharacter();
      Test_DimensionNewSubspace_Single(M, N, k);
      // This cannot work on the copy due to the differnet definition of new
   end for;
end procedure;

procedure Test_NewformDecomposition_Single(M)
    t := Cputime();
    D := NewformDecomposition(CuspidalSubspace(M));
    D;
    printf " \ttime  = %os\n\n",Cputime(t);
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
      Test_NewformDecomposition_Single(M);
      //if Evaluate(DirichletCharacter(M),-1) eq 1 then
	  Test_NewformDecomposition_Single(MakeGroupCopy(M));
      //end if;
   end for;
end procedure;

procedure Test_Decomposition_Single(M)
    t := Cputime();
    D := Decomposition(M,13);
    D;
    for A in D do
        VectorSpace(A);
    end for;
    printf " \ttime  = %os\n\n",Cputime(t);
end procedure;

procedure Test_Decomposition(numchecks)
   print "** Compute a bunch of decompositions ** ";
   print "The only check is that the program doesn't bomb.";
   print "For decomposition to work at all, things must be working well.\n";

   for i in [1..numchecks] do
      M := RandomSpace();
      Test_Decomposition_Single(M);
      //if Evaluate(DirichletCharacter(M),-1) eq 1 then
	  Test_Decomposition_Single(MakeGroupCopy(M));
      //end if;
      
   end for;

end procedure;

procedure Test_Eigenforms_Single(M)
    t := Cputime();
    D := Decomposition(NewSubspace(CuspidalSubspace(M)),23);
    D;
    for i in [1..#D] do
        if IsIrreducible(D[i]) and IsCuspidal(D[i]) then
            qEigenform(D[i],7);
        end if;
    end for;
    printf " \ttime  = %os\n\n",Cputime(t);
end procedure;

procedure Test_Eigenforms(numchecks)
   print "** Compute a bunch of eigenforms ** ";
   print "The only check is that the program doesn't bomb.";
   for i in [1..numchecks] do
       M := RandomSpace();
       Test_Eigenforms_Single(M);
       //if Evaluate(DirichletCharacter(M), -1) eq 1 then
	   Test_Eigenforms_Single(MakeGroupCopy(M));
       //end if;
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
  // gens := [-G_N!1];
  gens := [];
  U, psi := UnitGroup(Z_N);
  // This matches our convention for the Galois action
  for t in Generators(U) do
    Append(~gens, G_N![1,0,0,psi(t)]);
  end for;
  if Type(type) eq RngIntElt then
     Append(~gens, G_N![1,1,0,1]);   
     if type eq 0 then
       for t in Generators(U) do
	 Append(~gens, G_N![psi(t),0,0,1]);
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

// Not used at the moment - in the end would like to use that for testing

function MakeGroupCopy(M)
  k := Weight(M);
  sign := Sign(M);
  eps := DirichletCharacter(M);
  R := BaseRing(eps);
  /*
  if (Evaluate(eps,-1) eq -1) then
     print "Currently can only work with even characters...";
     return false;
  end if;
  */
  N := Level(M);
  G0 := my_Gamma(N,0);
  G1 := my_Gamma(N,1);
  Q, pi_Q := G0 / G1;
  gens := GeneratorsSequence(ImageInLevel(G0));
  // Should add coercion of Dirichlet character to group character
  // (Maybe should just extend the functionality of Dirichlet character
  // instead?)
  X := Elements(CharacterGroup(pi_Q, R, G0, G1));
  vals_all := [[Evaluate(x, g) : g in gens] : x in X];
  vals_eps := [Evaluate(eps, g[2,2]) : g in gens];
  i := Index(vals_all, vals_eps);
  if i ne 0 then
      return ModularSymbols(X[i], k, sign);
  end if;
  print "Error! Could not find an appropriate character!\n";
  return false;
end function;


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


// This fails at N = 8 when char = true,
// because the multicharacter decomposition decomposes one of the seemingly irreducible spaces !???

procedure Test_NewformDecomp(N, char)
    print "Testing NewformDecomposition of S_2(Gamma(N))";
    if (char) then
	M := ModularSymbols(my_Gamma(N, "full"));
    else
	M := ModularSymbols(my_Gamma(N, "full") ,2, Rationals(), 0);
    end if;
    S := CuspidalSubspace(M);
    D := NewformDecomposition(S);
    dims := [Dimension(d) : d in D];
    M0 := ModularSymbols(CongruenceSubgroup(N));
    if (N eq 1) or char then
	S0 := CuspidalSubspace(M0);
	D0 := NewformDecomposition(S0);
    else
	D0 := MC_NewformDecompositionOfCuspidalSubspace(M0);
    end if;
    dims0 := [Dimension(d) : d in D0];
    assert dims eq dims0;
end procedure;

function GetAllCycHom(F, K)
  assert Type(F) in [FldCyc, FldRat];
  assert Type(K) in [FldCyc, FldRat];
  if Type(F) eq FldRat then
    ret := [hom<F->K | >];
  else
    cond_K := Conductor(K);
    cond_F := Conductor(F);
    K_cyc := CyclotomicField(cond_K);
    F_cyc := CyclotomicField(cond_F);
    is_K_cyc, phi_K := IsIsomorphic(K, K_cyc);
    is_F_cyc, phi_F := IsIsomorphic(F, F_cyc);
    assert is_F_cyc and is_K_cyc;
    ret := [hom<F_cyc->K_cyc | K_cyc.1^((cond_K div cond_F)*j)>
	     : j in [0..cond_F-1] | GCD(j,cond_F) eq 1];
    ret := [phi_F*h*((phi_K)^(-1)): h in ret];
  end if;
  return ret;
end function;

procedure Test_Eisenstein_Single(N,k : prec := 100, gamma_type:=0)
    print "Testing creation of Eisenstein series";
    tt := Cputime();
    assert gamma_type in [0,1];
    G := (gamma_type eq 0) select Gamma0(N) else Gamma1(N);
    E_orig := EisensteinSeries(ModularForms(G,k));
    E := EisensteinSeries(ModularForms(my_Gamma(N,gamma_type),k));
// assert #E eq Dimension(EisensteinSubspace(ModularForms(G,k)));
    assert #E eq #E_orig;
    if #E ne 0 then
        f_orig := [PowerSeries(e, prec) : e in E_orig];
	_<q> := Parent(f_orig[1]);
	f := [PowerSeries(e, prec*N) : e in E];
	f_vecs := [Vector(AbsEltseq(x)) : x in f];
	f_orig_vecs := [Vector(AbsEltseq(Evaluate(f,q^N))) : f in f_orig];

        // This is not good enough, as we might need a different embedding
        /*
        cond := LCM([Conductor(BaseRing(Universe(fs)))
			: fs in [f_vecs, f_orig_vecs]]);
        K := CyclotomicField(cond);
        
        assert &and[IsSubfield(BaseRing(Universe(fs)), K)
		    : fs in [f_vecs, f_orig_vecs]];
        _ := Solution(ChangeRing(Matrix(f_vecs), K),
		      ChangeRing(Matrix(f_orig_vecs),K));
	*/
        // The fields
        Fs := [* BaseRing(Universe(fs)) : fs in [*f_vecs, f_orig_vecs*] *];
        // They should be cyclotomic fields
        assert &and[Type(F) in [FldCyc,FldRat] : F in Fs];
        conds := [Conductor(F) : F in Fs];
        cond := LCM(conds);
        K := CyclotomicField(cond);
        embs := [GetAllCycHom(F,K) : F in Fs];
        for hs in CartesianProduct(embs) do
	  M := ChangeRing(Matrix(f_vecs), hs[1]);
          M_orig := ChangeRing(Matrix(f_orig_vecs), hs[2]);
/*
          submats := [Submatrix(mat, [1..#E], [1+N*j : j in [0..#E-1]])
	       : mat in [M, M_orig]];
          if submats[1]*submats[2]^(-1)*M_orig eq M then
*/
          if EchelonForm(M) eq EchelonForm(M_orig) then
	    Cputime(tt);
	    return;
          end if;
	end for;
        // If we are here no pair of embeddings worked!
        assert false;
    end if;
    Cputime(tt);
end procedure;

procedure Test_Eisenstein(numcheck)
    for i in [1..numcheck] do
	N      := Random([1..maxN]);
	k      := Random([2..maxk]);
	Test_Eisenstein_Single(N,k);
        Test_Eisenstein_Single(N,k : gamma_type := 1);
    end for;
end procedure;

procedure Test_S13()
    print "Testing exceptional Gamma_S(13)";
    tt := Cputime();
    p := 13;
//    B<i,j,k> := Quaternions();
    B<i,j,k> := QuaternionAlgebra(Rationals(), -1,-1);
    O_B := QuaternionOrder([1,i,j,k]);
    //    O_B, i, j, k := QuaternionStandardOrder();
    _, mp := pMatrixRing(O_B,p);
    S4tp := sub<GL(2,p) | [mp(1+s) : s in [i,j,k]]
    			cat [mp(1-s) : s in [i,j,k]] cat [-1]>;
    H_S4 := sub<GL(2,Integers(p)) | Generators(S4tp)>;
    H_S4 := GetRealConjugate(H_S4);
    G_S4 := PSL2Subgroup(H_S4);
    M := ModularSymbols(G_S4, 2, Rationals(), 0);
    S := CuspidalSubspace(M);
    D := Decomposition(S, HeckeBound(S));
    assert #D eq 1;
    f := qEigenform(D[1]);
    R<q> := Parent(f);
    K<a> := BaseRing(R);
    assert qEigenform(D[1],20) eq
	   q + a*q^2 + (-a^2 - 2*a)*q^3 + (a^2 - 2)*q^4 +
	   (a^2 + 2*a - 2)*q^5 + (-a - 1)*q^6 + (a^2 - 3)*q^7 +
	   (-2*a^2 - 3*a + 1)*q^8 + (a^2 + 3*a - 1)*q^9 +
	   (-a + 1)*q^10 + (-a^2 - 2*a - 2)*q^11 + (a^2 + 3*a)*q^12 +
	   (-2*a^2 - 2*a + 1)*q^14 + (a^2 + a - 2)*q^15 +
	   (-a^2 - a + 2)*q^16 + (-a^2 + a + 2)*q^17 +
	   (a^2 + 1)*q^18 + (-2*a^2 - a + 2)*q^19 + O(q^20);
    f := DefiningPolynomial(K);
    _<x> := Parent(f);
    assert f eq x^3 + 2*x^2 - x - 1;
    Cputime(tt);
end procedure;

procedure Test_2adic()
    print "Testing example of a 2-adic group";
    tt := Cputime();
    gens := [[1,3,12,3],[1,1,12,7],[1,3,0,3],[1,0,2,3]];
    N := 16;
    H_N := sub<GL(2,Integers(N)) | gens>;
    H_N := GetRealConjugate(H_N);
    H := PSL2Subgroup(H_N);
    
    M := ModularSymbols(H, 2, Rationals(), 0);
    S := CuspidalSubspace(M);
    D := Decomposition(S, HeckeBound(S));
    f := qEigenform(D[1],100);
    _<q> := Parent(f);
    assert f eq q - 4*q^5 - 3*q^9 - 4*q^13 - 2*q^17 + 11*q^25 - 4*q^29 +
		12*q^37 - 10*q^41 + 12*q^45 - 7*q^49 - 4*q^53 + 12*q^61 +
		16*q^65 - 6*q^73 + 9*q^81 + 8*q^85 + 10*q^89 - 18*q^97 + O(q^100); 
    Cputime(tt);
end procedure;

procedure Test_NotRealType()
    print "Testing example of a group not of real type";
    tt := Cputime();
    gens := [[ 7, 0, 0, 7 ],[ 2, 3, 3, 5 ],[ 0, 7, 7, 7 ],
	     [ 3, 0, 0, 3 ],[ 4, 7, 7, 3 ]];
    N := 8;
    H_N := sub<GL(2,Integers(N)) | gens>;
    H := PSL2Subgroup(H_N);
    
    M := ModularSymbols(H, 2, Rationals(), 0);
    S := CuspidalSubspace(M);
    assert &and[IsScalar(HeckeOperator(S,p)) : p in PrimesUpTo(100)];
    assert HeckeOperator(S,97)[1,1] eq 18;
    Cputime(tt);
end procedure;

function Test_Shimura(N)
    Z_N := Integers(N);
    U, phi := UnitGroup(Z_N);
    H := Random(Subgroups(U));
//    h_gens := [phi(g) : g in Generators(U_h`subgroup)];
//    all_gens := [phi(g) : g in Generators(U)];           
    t := Random(Divisors(N));
//    mat_gens := [[-1,0,0,-1],[1,t,0,1]] cat [[a,0,0,1] : a in h_gens]
//		cat [[1,0,0,d] : d in all_gens];
//    gamma := PSL2Subgroup(sub<GL(2, Integers(N)) | mat_gens>);
    gamma := GammaShimura(N, U, phi, H`subgroup, t);
//   M := ModularSymbols(gamma, 2, Rationals(), 0);
    M := ModularSymbols(gamma);
    S := CuspidalSubspace(M);
    D := NewformDecomposition(S);
    // D := Decomposition(S, HeckeBound(S));
    return D, S;
end function;

procedure Test_IsotypicDecomposition()
  printf "Testing dimensions of isotypic components...\n";
  H_N := sub<GL(2,Integers(11^2))|[[1,61,45,1],[10,2,62,111]]>;
  H := PSL2Subgroup(H_N);
  M := ModularSymbols(H, 2, Rationals(), 0);
  S := CuspidalSubspace(M);
  assert IsotypicDimensionDecomposition(S) eq
    [ <1, 2>, <5, 2>, <5, 2>, <35, 2>, <35, 2>, <50, 2>,
	<90, 2>, <90, 2>, <200, 2> ];
  H := my_Gamma(22,0);
  M := ModularSymbols(H, 2, Rationals(), 0);
  S := CuspidalSubspace(M);
  assert IsotypicDimensionDecomposition(S) eq [<1,4>];
  assert IsotypicDimensionDecomposition(S : Proof) eq [<2,2>];
  printf "Testing issue #5";
  H_N := sub<GL(2,Integers(25))|[[11,19,9,14],[4,16,7,22]]>;
  H := PSL2Subgroup(H_N);
  M := ModularSymbols(H, 2, Rationals(), 0);
  S := CuspidalSubspace(M);
  assert IsotypicDimensionDecomposition(S) eq
     [<2, 2>, <2, 2>, <2, 2>, <2, 2>, <2, 4>, <2, 4>, <4, 2>, <8, 2>, <8, 2>];
end procedure;

procedure DoTests(numchecks)
   // Tests from the paper
   Test_2adic();
   Test_NotRealType();
   Test_NSCartan_11();
   Test_NSCartan_17();
   Test_S13();
   // These test that everything works for
   // Gamma0, Gamma1 as in the examples from Stein's book
   Test_Stein();
   // Test_Zywina();
   // testing random spaces of type gamma0 and gamma1
   Test_Eisenstein(numchecks);
   Test_Eigenforms(numchecks);
   Test_NewformDecomposition(numchecks);
   Test_Decomposition(numchecks);
   Test_HeckeOperatorsCommute(numchecks);
   Test_DegeneracyMaps(numchecks);
   Test_DimensionNewSubspace(numchecks);
   Test_DimensionConsistency(numchecks);
 //  Test_EllipticCurve();
   Test_qExpansionBasis(numchecks);
   // This is no longer really needed
   // Test_Rouse();
   // not needed - tests the construction of spaces for ns cartan
   // Test_NSCartan(30);
   Test_IsotypicDecomposition();
end procedure;


