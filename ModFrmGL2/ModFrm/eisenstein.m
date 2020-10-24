freeze;

/****-*-magma-* EXPORT DATE: 2004-03-08 ************************************
                                                                            
                     MODFORM: Modular Forms in MAGMA
 
                              William A. Stein        
                         
   FILE: eisenstein.m

   2020-09 (Eran):
      Added MakeEisensteinSeriesNotGamma to construct Eisenstein Series for 
      groups other than Gamma0(N), Gamma1(N).
      At the moment, only for trivial characters.
      Modified ComputeAllEisensteinSeries accordingly.

   2007-09 (Steve):
      Change EisensteinSeries yet again!!  
      See the entry below (2006-10, item 2) for the story so far.
      In that change, I decided to list and store the EisensteinSeries
      for all the characters instead of just for M`DirichletCharacters
      (the set of Galois reps).
      But that meant I was wasting significant time and space. 
      Now, EisensteinSeries by default will compute, store and return 
      the series which have character in M`DirichletCharacters. 
      However when the vararg AllCharacters:=true, it will return all
      the series (just like now), but **store nothing**.
      Spaces satisfying IsGamma1 are not treated differently now 
      (whereas originally it listed all conjugates in this case).

      DimensionOfEisensteinSpace: it's slightly more efficient to work
      out the dimension in ComputeAllEisensteinSeries, which we now do.

   2007-03 (Steve):
      1) Add general Atkin-Lehner operators (before, there was only w_N).
       
      2) AtkinLehnerOnEisensteinSeries now returns only A, i instead of
         A*F, A, i, since the A*F was never used by calling functions.

      3) Revisit the first of the 2006-10 bugs.
         Reverting the fix in ComputeAllEisensteinSeries, and replacing 
         psi by psibar in q-expansions instead. 
         
         The definition of Eisenstein series (now) used in this package is, 
         exactly as in Miyake section 7.1,
            E_<chi,psi,t>(z) := Sum_{c,d} chi(c) * psi(d) / (c*T*z+d)^k
         where T = t*Conductor(psi).
         The q-expansion of this is some constant times 
            c_0 + sum_{m \geq 1}[sum_{n|m}psibar(n)n^{k-1}chi(m/n)] q^{mt}
         (see q-expansions.m).
         Before the 2006-10 fix, the psibar in this formula was completely 
         missing absent from the package. With that fix, some inconsistencies
         remained. 

         Now, I claim that at least constructing the Eisenstein series, 
         their q-expansions, and their Atkin-Lehner operators is all correct.

   2007-01 (Steve): 
         Fix minor bug in AtkinLehnerOnEisensteinModularFormsSpace: 
         (return matrix over FieldOfFractions(BaseRing(M)) instead of Q.

   2006-10 (Steve): 
      1) Fixed bug in ComputeAllEisensteinSeries 
         (by putting a bar on a character, see comment in the code)

      2) Corrected the previous (2006-04) bug fix. In fact the problem 
         came from EisensteinSeries, not DimensionOfEisensteinSpace.
         EisensteinSeries was using M`DirichletCharacters whereas it
         needs to use all conjugates (over Z) of these as well.
         
         Example 1: 
         > Qi := CyclotomicField(4); i := Qi.1;
         > Chi := DirichletGroup(25, Qi);
         > Mchi2 := ModularForms(Chi.1^2);
         > Dimension(Mchi2);
         // Previously returned 8, now gives 6
          
         Example 2 (apparently this was the example behind the 2006-04 fix):
         > G<chi>:=DirichletGroup(9,CyclotomicField(3));
         > M:=ModularForms(chi^2);
         > Dimension(M);  // Fixed 2006-04 (prior to that, returned 2)
         4
         > EisensteinSeries(M);
         // Now returns four series, previously only gave two 
         // (even after the 2006-04 fix)

   2006-04-12 (WAS): Fixed major bug in DimensionOfEisensteinSpace...
   
   01/04/04 (WAS):
        Fixed minor bug AtkinLehnerOnEisensteinModularFormsSpace(M, q)
        that affected
        "operators.m:function compute_Wq(M, q)"---in some cases WE was over Z,
        so DirectSum(WS,WE) would terminate with an error, since WS is over Q.

   07/06/03(WAS): Fixed bug in ExtendBaseMaximal introduced by changing
             how Dirichlet characters work.  I had assumed that the parent
             after base extension had properties that it didn't have.  -- WAS
             Also bug in construction of Eisenstein series -- got the wrong 
             ones in some cases!  
   
   Revision 1.6  2002/09/11 18:22:18  was
   Fixed bug in ComputeAllEisensteinSeries that manifest itself
   when some of the characters eps that define M do not satisfy
   eps(-1) eq (-1)^k.

   Revision 1.5  2002/09/11 18:16:04  was
   nothing.

   Revision 1.4  2002/09/11 18:12:43  was
   Rewrote ExtendBaseMaximal to be more efficient and fix a bug.

   Revision 1.3  2002/01/17 03:54:33  was
   added a comment

   Revision 1.2  2001/10/25 02:53:03  was
   Fixed serious bug in function ExtendBaseMaximal(eps) that occured when
   the user "stupidly" created a character like
         G<a>:=DirichletGroup(27, CyclotomicField(4));
   (Note that 4 doesn't divide EulerPhi(27)!)
   Also fixed a bug in ComputeAllEisensteinSeries that might appear when there
   is more than one character.

   Revision 1.1  2001/05/30 18:51:48  was
   Initial revision


   [Theorem 15, page IV-39 in Ogg's Modular Forms book looks very relevant.]

 ***************************************************************************/

forward EisensteinBasisHelper;

import "../ModSym/boundary.m" : CuspEquivGrp;

import "misc.m":  EchelonPowerSeriesSequence;

import "modular_symbols.m" : MF_ModularSymbols;

import "predicates.m": SpaceType;

import "q-expansions.m": ApproximatePrecisionBound, 
                         BasisOfAmbientEisensteinSpace;

function QZeta(n)
   assert Type(n) eq RngIntElt; 
   assert n ge 1;
   if n le 2 then
      return RationalField();
   else
      return CyclotomicField(n);
   end if;
end function;

function ExponentOfZModN(N)
   // This could probably be optimized.
   return Exponent(UnitGroup(Integers(N)));
end function;

/* Let eps : (Z/N)^* ----> Q(zeta_n) be a Dirichlet character.
   This function returns an equal Dirichlet character
       chi : (Z/N)^* ----> Q(zeta_m)
   where m is LCM(n, exponent of (Z/N)^*).
*/
// Now extened to eps : D ---> Q(zeta_n)
function ExtendBaseMaximal(eps)

   assert Type(eps) eq SeqEnum;
   assert #eps gt 0;
   if Type(eps[1]) eq GrpDrchElt then
     N := Modulus(eps[1]);
     g := ExponentOfZModN(N);
     if g eq 1 then
        g := 2;
     end if;
     _, r := DistinguishedRoot(Parent(eps[1]));

     R := QZeta(LCM(g,r));
     G := DirichletGroup(Modulus(eps[1]),R);
     ans := [G!e : e in eps];
   elif Type(eps[1]) eq GrpChrElt then
     D := Domain(eps[1]);
     g := Exponent(D);
     if g eq 1 then
       R := Rationals();
     else
       R := CyclotomicField(g);
     end if;
     G := CharacterGroup(Parent(eps[1])`QuotientMap,R,
			 Parent(eps[1])`GammaPrime, Parent(eps[1])`Gamma);
     ans := [G!e : e in eps];
   else
     assert false; // Characters are only allowed to be GrpChrElt or GrpDrchElt
   end if;

   return ans;
end function;


function MakeEisensteinSeries(M,chi,psi,t)
   assert Type(M) eq ModFrm;
   assert Type(chi) eq GrpDrchElt;
   assert Type(psi) eq GrpDrchElt;
   assert Type(t) eq RngIntElt;
   assert Level(M) mod (Conductor(chi)*Conductor(psi)*t) eq 0;

   f := New(ModFrmElt);
   f`parent :=
          BaseExtend(EisensteinSubspace(M), QZeta(LCM(Order(chi),Order(psi))));
   f`eisenstein :=<MinimalBaseRingCharacter(AssociatedPrimitiveCharacter(chi)),
                   MinimalBaseRingCharacter(AssociatedPrimitiveCharacter(psi)),
                    t, chi, psi>;
   return f;
end function;

function MakeEisensteinSeriesNotGamma(M, vecs, vecs0, eps_vals)
    assert Type(M) eq ModFrm;
    
    f := New(ModFrmElt);
    // Check here if we need in general to extend
    f`parent := EisensteinSubspace(M);
    f`eisenstein := <vecs, vecs0, eps_vals>;
    return f;
end function;

function IsInSequence(x, seq)
   for i in [1..#seq] do
      if x eq seq[i] then
         return true, i;
      end if;
   end for;
   return false, _;
end function;

forward act;

function ActionOnEisensteinSeries(gamma, f)
    if Type(gamma) eq GrpPSL2Elt then
	gamma := Matrix(gamma);
    end if;
    M := AmbientSpace(Parent(f));
    k := Weight(M);
    N := Level(M);
    // if k eq 2 we use Jeremy's code at the moment.
    if (k eq 2) then
      basislist, _, elt := Explode(EisensteinData(f));
      new_vec := act(elt,gamma,N,basislist);
      return MakeEisensteinSeriesNotGamma(M, basislist, [], new_vec);
    end if;
    vecs, vecs0, eps_vals := Explode(EisensteinData(f));
    new_vecs := [v * gamma : v in vecs];
    new_vecs0 := [v * gamma : v in vecs0];
//    new_dets := [det*Determinant(gamma) : det in det_vals];
// M := AmbientSpace(Parent(f));
    return MakeEisensteinSeriesNotGamma(M, new_vecs, new_vecs0,
					eps_vals);
end function;

function lift(r,N)
  liftr := Integers()!r;
  liftr := liftr mod N;
  if (liftr eq 0) then
    liftr := N;
  end if;
  return liftr;
end function;

function act(elt,g,N,basislist)
  K<zeta> := CyclotomicField(N);
  newvec := [ K!0 : i in [1..#basislist]];
  det := lift(Determinant(g),N);
  for i in [1..#basislist-1] do
    a := basislist[i][1];
    b := basislist[i][2];
    imag := <lift(g[1][1]*a+g[2][1]*b,N),lift(g[1][2]*a+g[2][2]*b,N)>;
    if (imag[1] gt N/2) then
      imag[1] := N-imag[1];
      imag[2] := N-imag[2];
    end if;
    if ((imag[1] eq 0) or (imag[1] eq N/2)) and (imag[2] gt N/2) then
      imag[1] := N-imag[1];
      imag[2] := N-imag[2];
    end if;
    imag[1] := imag[1] mod N;
    imag[2] := imag[2] mod N;
    ind := Index(basislist,imag);
    if (ind eq 0) then
      error Sprintf("Error! The vector %o is not in our basis list!.\n",imag);
    end if;
    // Act on elt by zeta^i -> zeta^(i*det)
    coeffs := Eltseq(elt[i]);
    newvec[ind] := &+[ coeffs[i]*zeta^((i-1)*det) : i in [1..#coeffs]];
  end for;
  c := newvec[#basislist];
  for i in [1..#basislist] do
    newvec[i] := newvec[i] - c;
  end for;  
  newvec2 := [ newvec[i] : i in [1..#basislist-1]];
  return VectorSpace(K,#basislist-1)!newvec2;
end function;

function EisensteinRouse(G)
  // Step 3 - Compute Eisenstein series

  // First do the forms that transform nicely under SL_2.
  // Note that there are 3*N^2/8 cusps on Gamma(N) if N is a power of 2, and so the space of Eisenstein
  // series (which should be spanned by the xcoords) has dimension 3*N^2/8 - 1. The relation between these
  // is that the sum of all of them is zero (since the sum of all of them is a holomorphic modular form of
  // weight 2 on Gamma(N)).

  N := Level(G);
  basislist := [];
  for a in [0..Floor(N/2)] do
    for b in [0..N-1] do
      if GCD([a,b,N]) eq 1 then
        addtolist := true;
        if (a eq 0) and (b gt N/2) then
          addtolist := false;
        end if;
        if (a eq N/2) and (b gt N/2) then
          addtolist := false;
        end if;
        if addtolist eq true then
	  vprintf ModularForms,3 :
	    "Adding %o to the basis list.\n",<a,b>;
          Append(~basislist,<a,b>);
        end if;
      end if;
    end for;
  end for;
  lastbasis := basislist[#basislist];
  dimen := #basislist - 1;
  vprintf ModularForms, 3:
    "The space of Eisenstein series has dimension %o.\n",dimen;

  // Represent an element of M_2(Gamma) that is a linear combination of the p_tau as a list
  // of coefficients in Q(zeta) corresponding to the basis vectors.

  vprintf ModularForms, 2:
    "Computing action of generators of subsub intersect SL_2 on Eisenstein series for Gamma(%o).\n",N;

  subsub := ImageInLevelGL(G);

  matlist := [];
  sl2sub := subsub meet ModLevel(G);
  K<zeta> := CyclotomicField(N);
  for g in Generators(sl2sub) do
    // Compute a matrix representing g on the space.
    M := ZeroMatrix(Rationals(),dimen,dimen);
    for i in [1..dimen] do
      // We could call act here, but it is wasteful since we only need the
      // image of a single basis element
      rowmat := ZeroMatrix(K,1,#basislist);
      a := basislist[i][1];
      b := basislist[i][2];
      imag := <lift(g[1][1]*a+g[2][1]*b,N),lift(g[1][2]*a+g[2][2]*b,N)>;
      if (imag[1] gt N/2) then
        imag[1] := N-imag[1];
        imag[2] := N-imag[2];
      end if;
      if ((imag[1] eq 0) or (imag[1] eq N/2)) and (imag[2] gt N/2) then
        imag[1] := N-imag[1];
        imag[2] := N-imag[2];
      end if;
      imag[1] := imag[1] mod N;
      imag[2] := imag[2] mod N;
      indind := Index(basislist,imag);
      if (indind eq 0) then
	error Sprintf("Error! The vector %o is not in our basis list!.\n",imag);
      end if;
      rowmat[1][indind] := 1;
      if rowmat[1][#basislist] ne 0 then
        c := rowmat[1][#basislist];
        for j in [1..#basislist] do
          rowmat[1][j] := rowmat[1][j] - c;
        end for;
      end if;
      for j in [1..dimen] do
        M[j][i] := rowmat[1][j];
      end for;
    end for;
    Append(~matlist,M);
  end for;

  I := IdentityMatrix(Rationals(),dimen);
  if #matlist eq 0 then
    Append(~matlist,I);
  end if;
  vprintf ModularForms, 2:
    "Finding vectors invariant under %o intersect SL_2.\n", subsub;
  Ker := Kernel(Transpose(matlist[1]-I));
  for m in [2..#matlist] do
    Ker := Ker meet Kernel(Transpose(matlist[m]-I));
  end for;
  kerbasis := Basis(Ker);
  vprintf ModularForms, 2:
    "The dimension of the space of Eisenstein series for subsub intersect SL_2 is %o.\n",#kerbasis;
  if (#kerbasis ne (#Cusps(G) - 1)) then
    error Sprintf("Error! We didn't get enough Eisenstein series!.\n");
  end if;

  // Now we look at the Q-span of the forms with coefficients in Q(zeta_N)
  // that are linear combinations of the elements in K.

  phiN := EulerPhi(N);
  vprintf ModularForms, 2:
    "Computing the action of the generators of subsub on the Q-vector space of dimension %o.\n",phiN*#kerbasis;
  matlist := [];
  genlist := SetToSequence(Generators(subsub));
  for g in genlist do
    M := ZeroMatrix(Rationals(),phiN*#kerbasis,phiN*#kerbasis);
    for k in [1..#kerbasis] do
      // Compute image of zeta^i*(kth basis vector) under the action of g
      basisvec := act(kerbasis[k],g,N,basislist);
      vprintf ModularForms, 3:
        "Basis vector is %o.\n",[ basisvec[j] : j in [1..dimen]];
      vprintf ModularForms, 3:
        "Attempting to coerce into K.\n";
      kelt := Ker![ basisvec[j] : j in [1..dimen]];
      coords := Coordinates(Ker,kelt);

      det := Integers()!Determinant(g);
      for i in [0..phiN-1] do
        // Write the image of zeta^i*(kth basis vector) to column
        // (i+1) + phiN*k
        fac := Eltseq(zeta^(i*det));
        for j in [0..phiN-1] do
          for m in [1..#kerbasis] do
            entry := coords[m]*fac[j+1];
            M[(m-1)*phiN+(j+1)][i+1 + phiN*(k-1)] := entry;
          end for;
        end for;
      end for;
    end for;
    Append(~matlist,M);
  end for;

  I := IdentityMatrix(Rationals(),phiN*#kerbasis);
  if #matlist eq 0 then
    Append(~matlist,I);
  end if;
  vprintf ModularForms, 2:
    "Finding vectors invariant under %o.\n", subsub;
  Ker2 := Kernel(Transpose(matlist[1]-I));
  for m in [2..#matlist] do
    Ker2 := Ker2 meet Kernel(Transpose(matlist[m]-I));
  end for;
  ker2basis := Basis(Ker2);
  vprintf ModularForms, 2: "The dimension is %o.\n",#ker2basis;

  // Translate back to the original form

  finalbasismat := ZeroMatrix(K,#ker2basis,dimen);
  Vsp := VectorSpace(K,dimen);
  for n in [1..#ker2basis] do
    vec := Vsp!0;
    for m in [1..phiN*#kerbasis] do
      formnum := Floor((m-1)/phiN) + 1;
      rootnum := m - phiN*(formnum-1) - 1;
      vec := vec + ker2basis[n][m]*zeta^rootnum*(Vsp!kerbasis[formnum]);
    end for;
    finalbasismat[n] := vec;
  end for;

  return basislist, finalbasismat;
end function;

function ComputeAllEisensteinSeries(M : all:=false)
   assert Type(M) eq ModFrm;
   assert SpaceType(M) in {"full", "eis"};
   ans := [* *]; 
   N   := Level(M);
   k   := Weight(M);
   if not IsOfGammaType(M) then
       /*
     error "This function is not implemented for levels other than 
            Gamma0 or Gamma1";
      
       if not &and[IsTrivial(eps) : eps in DirichletCharacters(M)] then
	   error "Not implemented for nontrivial characters";
       end if;
*/
       // if k = 2, right now we only take care of trivial character case
       if (k eq 2) then
         G := LevelSubgroup(M);
         basislist, vecs := EisensteinRouse(G);
         ans := [* MakeEisensteinSeriesNotGamma(M, basislist, [], vec)
		    : vec in Rows(vecs) *];
       else
         G := Parent(DirichletCharacters(M)[1])`GammaPrime;
         H := ImageInLevel(G);
       // We don't want to trace over the Galois action on the cyclotomic field,
       // as this will create linear dependence.
       // H := ImageInLevelGL(G);
       // This is actually an overkill
       // Can do with the reduction
         reprs := [PSL2(Integers()) | FindLiftToSL2(h) : h in H];
/*       reprs := [FindLiftToM2Z(Matrix(h) : det := Integers()!Determinant(h))
	 : h in H]; */
       // cusps := Cusps(G);

         for eps in DirichletCharacters(M) do
		 //eps_vals := [eps(r)^(-1) : r in reprs];
		 //eps_vals := [eps(ModLevelGL(G)!Matrix(r))^(-1) : r in reprs];
		 // det_vals := [Determinant(r) : r in reprs];
	   if Level(G) eq 1 then
             eps_vals := [Codomain(eps)!1 : r in reprs];
           else
             eps_vals := [eps(ModLevelGL(G)!Matrix(r))^(-1) : r in reprs];
           end if;
	   k_cusp := k gt 1 select k else 3;
	   ms := ModularSymbols(eps, k_cusp, 0);
	   _ := BoundaryMap(ms);
	   if assigned ms`cusplist then
	       cusps := [x[1] : x in  ms`cusplist | x[2] ne 0];
	   else // check that is true!
	       cusps := [];
	   end if;
	   if (k eq 2) and IsTrivial(eps) and not IsEmpty(cusps) then
	       cusp0 := cusps[1];
	       cusps := cusps[2..#cusps];
	       v0 := Eltseq(cusp0);
	       vecs0 := [Vector([-v0[2], v0[1]]) * Matrix(r) : r in reprs];
	   else
	       vecs0 := [];
	   end if;
	   if k eq 1 then
	       find_coset := ms`mlist`find_coset;
	       orbit_table := ms`orbit_table;
	       coset_list :=  ms`mlist`coset_list;
	       ineq_cusps := [];
	       for cusp in cusps do
		   d, minus_c := Explode(cusp);
		   if minus_c ne 0 then
		       scalar := -1;
		       eq_cusp := [d, -minus_c];
		   else
		       scalar := 1;
		       eq_cusp := [-d,0];
		   end if;
		   // not very efficient - can do better by using the table
		   found := false;
		   for other in ineq_cusps do
		       found := CuspEquivGrp(coset_list, find_coset,
					     G, orbit_table, other[1],
					     eq_cusp);
		       if found then
			   break;
		       end if;
		   end for;
		   if not found then
		       bool, g := CuspEquivGrp(coset_list, find_coset,
					     G, orbit_table, cusp[1],
					     eq_cusp);
		       if not bool or eps(g)*scalar eq -1 then
			   Append(~ineq_cusps, cusp);
		       end if;
		   end if;
	       end for;
	       cusps := ineq_cusps;
	   end if;
	   for cusp in cusps do
	       v := Eltseq(cusp);
	       vecs := [Vector([-v[2], v[1]]) * Matrix(r) : r in reprs];
               Append(~ans, MakeEisensteinSeriesNotGamma(M, vecs, vecs0,
							 eps_vals));
	   end for;
         end for;
       end if;
       dim := #ans;

       // So far, we only have the H meet SL2-invariant space of
       // Eisenstein forms.
       // Would like to get the ones that are also invariant for the GL2-action

      // Now we look at the Q-span of the forms with coefficients in Q(zeta_N)
      // that are linear combinations of the elements in K.
/*
       phiN := EulerPhi(N);
       printf "Computing the action of the generators on the Q-vector space of dimension %o.\n",phiN*dim;
       matlist := [];
       genlist := SetToSequence(Generators(ImageInLevelGL(G)));
       for g in genlist do
         M := ZeroMatrix(Rationals(),phiN*dim,phiN*dim);
         for k in [1..dim] do
           // Compute image of zeta^i*(kth basis vector) under the action of g
           basisvec := act(kerbasis[k],g,N,basislist);
    //printf "Basis vector is %o.\n",[ basisvec[j] : j in [1..dimen]];
    //printf "Attempting to coerce into K.\n";
    kelt := Ker![ basisvec[j] : j in [1..dimen]];
    coords := Coordinates(Ker,kelt);

    det := Integers()!Determinant(g);
    for i in [0..phiN-1] do
      // Write the image of zeta^i*(kth basis vector) to column
      // (i+1) + phiN*k
      fac := Eltseq(zeta^(i*det));
      for j in [0..phiN-1] do
        for m in [1..#kerbasis] do
          entry := coords[m]*fac[j+1];
          M[(m-1)*phiN+(j+1)][i+1 + phiN*(k-1)] := entry;
        end for;
      end for;
    end for;
  end for;
  Append(~matlist,M);
end for;

I := IdentityMatrix(Rationals(),phiN*#kerbasis);
if #matlist eq 0 then
  Append(~matlist,I);
end if;
printf "Finding vectors invariant under subsub.\n",subnum;
Ker2 := Kernel(Transpose(matlist[1]-I));
for m in [2..#matlist] do
  Ker2 := Ker2 meet Kernel(Transpose(matlist[m]-I));
end for;
ker2basis := Basis(Ker2);
printf "The dimension is %o.\n",#ker2basis;

// Translate back to the original form

finalbasismat := ZeroMatrix(K,#ker2basis,dimen);
Vsp := VectorSpace(K,dimen);
for n in [1..#ker2basis] do
  vec := Vsp!0;
  for m in [1..phiN*#kerbasis] do
    formnum := Floor((m-1)/phiN) + 1;
    rootnum := m - phiN*(formnum-1) - 1;
    vec := vec + ker2basis[n][m]*zeta^rootnum*(Vsp!kerbasis[formnum]);
  end for;
  finalbasismat[n] := vec;
end for;

*/
       if all then 
	   return ans, _;
       else
	   return ans, dim;
       end if;
   end if;

   eps := ExtendBaseMaximal(DirichletCharacters(M));
   K   := BaseRing(eps[1]);
   Chi := Universe(eps);
   if Type(Chi) eq GrpDrch then
     Chi1 := DirichletGroupCopy(Chi);
   elif Type(Chi) eq GrpChr then
     Chi1 := CharacterGroupCopy(Chi);
   else
     assert false; // Shouldn't happen
   end if;
       // work in this copy, make a big mess, then toss the lot at the end

   if all then
      // include all conjugates in the list of characters. 
      new_eps := [];
      for chi in eps do 
        e := Order(chi);
        if e in {1,2} then Append( ~new_eps, chi); continue; end if;
        new_eps cat:= [ chi^k : k in [1..e-1] | GCD(e,k) eq 1 ];
      end for;
      eps := new_eps;
   end if;

   // Divide up Chi by conductor:

   if IsOfGammaType(M) then
     C   := [[] : i in [1..N]];
     for e in Elements(Chi1) do
        Append(~C[Conductor(e)],e);
     end for;
   else
     C := [];
     conds := {};
     conds_inds := {};
     for e in Elements(Chi1) do
       c := Conductor(e);
       if c in conds then
         Append(~C[conds_inds(c)], e);
       else
         Include(~conds, c);
         C[#C+1] := [e];
         Include(~conds_inds, <c, #C>);
         conds_to_ind := map< conds -> Integers() | conds_inds>;
       end if;
     end for;
   end if;

// Should modify what's below for the case of arbitrary level subgroup

/* Find all pairs chi, psi such that
     chi * psibar = eps (nebentypus)
   See [Miyake] Lemma 7.1.1. 
*/
   dims := [0 : i in [1..#eps]];  // record dimensions
   for L in Divisors(N) do
      GL := (k eq 1) select [cc : cc in C[L] | IsEven(cc)]
                      else   C[L];
      for R in Divisors(N div L) do
         GR := C[R];
  
         for chi in GL do
            for psi in GR do
               if Evaluate(chi*psi,-1) eq (-1)^k then
                  in_eps, idx := IsInSequence( chi*(psi^-1), eps);
                  if in_eps then
                     for t in Divisors(N div (R*L)) do
                        if Weight(M) eq 2 and t eq 1 and 
                              IsTrivial(chi) and IsTrivial(psi) then
                           // do nothing
                        else
                           Append(~ans, MakeEisensteinSeries(M, Chi!chi, Chi!psi, t));      
                           dims[idx] +:= 1;
                        end if;
                     end for;
                  end if;
               end if;
            end for;
         end for;
      end for;
   end for;
   dim := &+[ EulerPhi(Order(eps[i]))*dims[i] : i in [1..#eps]];

   if all then 
      return ans, _;
   else
      return ans, dim;
   end if;
end function;


intrinsic EisensteinSeries(M::ModFrm : AllCharacters:=false) -> List
{List of the Eisenstein series associated to M.}
/*   
   chi is a primitive character of conductor L
   psi is a primitive character of conductor R
   RLt divides N
   chi*psi = eps, or if gamma_1, the parity condition.
  
   This function can definitely be optimized much more.
*/
   require Characteristic(BaseRing(M)) eq 0 : 
           "Argument 1 must have characteristic 0.";
    if not assigned M`eisenstein_series
       or (AllCharacters and SpaceType(M) in {"full","eis"}) then // MW
      case SpaceType(M):
         when "full", "eis": 
            if AllCharacters then
               return ComputeAllEisensteinSeries(M : all:=true); // don't store them (too bulky)
            end if;
            M`eisenstein_series, dim := ComputeAllEisensteinSeries(M : all:=false);
            E := EisensteinSubspace(AmbientSpace(M));
            E`dimension := dim;
         when "full_half_int":
            error "Eisenstein series not implemented for half-integral weight";
         when "cusp", "cusp_new", "cusp_half_int":
            M`eisenstein_series := [* *]; 
         when "eis_new":
            require not AllCharacters: 
              "The optional parameter AllCharacters must be 'false' for newform spaces";
            M`eisenstein_series := [* *];
            for class in Newforms(M) do
               for f in class do
                  Append(~M`eisenstein_series, f);
               end for;
            end for;
         else: 
            error "Bug in EisensteinSeries.";
      end case; 
   end if;

   return M`eisenstein_series;
end intrinsic;


function DimensionOfEisensteinSpace(M)
   assert Type(M) eq ModFrm;
   assert IsAmbientSpace(M);
   
   if not IsOfGammaType(M) then
       chars := DirichletCharacters(M);
       k := Weight(M);
       if #chars eq 1 and IsTrivial(chars[1]) then
	   G := LevelSubgroup(M);
	   minus_one := IsCoercible(ImageInLevel(G), [-1,0,0,-1]);
	   if Level(G) eq 1 then
	       minus_one := true;
	   end if;
	   if IsEven(k) and k ge 4 then
	       return #Cusps(G);
	   elif IsOdd(k) and k ge 3 and not minus_one then
	       return #RegularCusps(G); // regular cusps?
	   elif k eq 2 then
	       return #Cusps(G)-1;
	   elif k eq 1 and not minus_one then
	       return #RegularCusps(G) div 2;
	   elif k eq 0 then
	       return 1;
	   else // k lt 0 or k gt 0 and minus_one
	       return 0;
	   end if;
       end if;
       if k ge 2 then
	   A := MF_ModularSymbols(AmbientSpace(M),0);
	   dim_A := &+[Dimension(a) : a in A];
	   S := [CuspidalSubspace(a) : a in A];
	   dim_S := &+[Dimension(s) : s in S];
	   return dim_A - dim_S;
       end if;
   end if;
  
   N := Level(M);
   if IsGamma0(M) then
      if IsOdd(Weight(M)) then
         dim := 0;
      else
         dim := &+[EulerPhi(GCD(d,N div d)) : d in Divisors(N)];
         if Weight(M) eq 2 then
            dim -:= 1;
         end if;
      end if;
   elif IsGamma1(M) then
      if N in {1, 2} then
         dim := N;
      elif N eq 4 then 
         if IsOdd(Weight(M)) then
            dim := 2;
         else
            dim := 3;
         end if;
      else
         dim := &+[EulerPhi(GCD(d,N)) : d in [1..N]] div 2;
      end if;
      if Weight(M) eq 1 then
         dim div:= 2;
      elif Weight(M) eq 2 then
         dim -:= 1;
      end if;
   else
      // Calls ComputeAllEisensteinSeries which stores series and gets dimension
      if not assigned M`eis or not assigned M`eis`dimension or M`eis`dimension eq -1 then
         _ := EisensteinSeries(M : AllCharacters:=false);
      end if;
      assert M`eis`dimension ge 0;  
      dim := M`eis`dimension;
   end if;
   return dim;
end function;

// Return obj_q, obj_qq (the q- and q-prime parts of obj)
// satisfying obj = obj_q * obj_qq,
// where obj is either a RngIntElt or a GrpDrchElt.

function q_qprime_split(obj,q)  
   if Type(obj) eq RngIntElt then
      q := &*[Integers()| ff[1]^ff[2] : ff in Factorization(obj) | q mod ff[1] eq 0];
      qq := obj div q;
      assert q*qq eq obj and GCD(q,qq) eq 1;
      return q, qq;
   elif Type(obj) eq GrpDrchElt then
      q, qq := q_qprime_split( Modulus(obj), q);
      chis := Decomposition(obj);
      assert &and[ Modulus(obj) mod Modulus(chi) eq 0 : chi in chis ];
      chi_qs := [* chi : chi in chis | q mod Modulus(chi) eq 0 *];
      chi_qqs := [* chi : chi in chis | qq mod Modulus(chi) eq 0 *];
 error if #chis ne #chi_qs + # chi_qqs, 
  "Mistake occurred splitting the character";
      // multiply together the lists (can't use &* here):
      chi_q := DirichletGroup(1)! 1;
      for chi1 in chi_qs do chi_q *:= chi1; end for;
      chi_qq := DirichletGroup(1)! 1;
      for chi1 in chi_qqs do chi_qq *:= chi1; end for;
      error if obj ne chi_q*chi_qq, "Mistake occurred splitting the character";
      return chi_q, chi_qq;
   end if;
end function;

function AtkinLehnerOnEisensteinSeries(E,q)
   assert Type(E) eq ModFrmElt;
   assert IsEisensteinSeries(E);
   k := Weight(E);
   assert IsEven(k);   // This is not strictly necessary!
                       // we do this to avoid thinking about how
                       // to deal with N^(k/2).
   M := AmbientSpace(Parent(E));
   assert IsGamma0(M) or IsGamma1(M) or 
          // (&and [e^2 eq 1 : e in DirichletCharacters(M)]);
          (&and [ Conductor(e^2) eq 1 : e in DirichletCharacters(M)]);

   _,_,t,chi,psi := Explode(EisensteinData(E));
   L := Conductor(chi);
   R := Conductor(psi);
   N := Level(M);   

   // Adjust q so that q and qq:=N/q are coprime.
   error if q eq 1 or N mod q ne 0, 
         "q should be a nontrivial factor of the level";
   q, qq := q_qprime_split(N, q);

   if q eq N then 
     // ORIGINAL CASE (WAS)
     A := N^(k div 2) / (R*t)^k * chi(-1);
     
     t_new   := N div (R*L*t);
     chi_new := psi;
     psi_new := chi;
   
   else
     /* NEW CASE (Steve)
       (generalises the old case, but keep using the old case anyway...)
     Notation: 
       Let T = R*t. Then 
         E_<chi,psi,T>(z) := Sum_{c,d} chi(c) * psi(d) / (c*T*z+d)^k
       Split everything into its q-part and q-prime part, 
       eg T = T_q*T_qq, chi = chi_q*chi_qq 
       (note: we arranged above that N_q = q and N_qq = qq)
       
     I calculated (using the matrix eta_q as defined by Miyake) that 
       E_<chi,psi,T> | eta_q = A * E_<chi_new,psi_new,T_new>
     where A, chi_new, psi_new, T_new are as defined below.
     */

     T := R*t;
     T_q, T_qq := q_qprime_split(T, q);
     chi_q, chi_qq := q_qprime_split(chi, q);
     psi_q, psi_qq := q_qprime_split(psi, q);

     A := q^(k div 2) / T_q^k * chi_q(-T_qq)^-1 * chi_qq(T_q)^-1 
                              * psi_q(T_qq) * psi_qq(T_q);
     chi_new := psi_q * chi_qq; 
     psi_new := chi_q * psi_qq;
     T_new   := q div T_q * T_qq;
     t_new := T_new div Conductor(psi_new);
   end if;       
   
   ES := EisensteinSeries(M);
   for i in [1..#ES] do F := ES[i];
      eis := EisensteinData(F);            
      if eis[3] eq t_new and eis[4] eq chi_new and eis[5] eq psi_new then
         return A, i;
      end if;
   end for;
   error "OH NO!!  Didn't find Eisenstein series!";
end function;

function AtkinLehnerOnEisensteinSeriesBasis(M,q)
   assert Type(M) eq ModFrm;
   ES := EisensteinSeries(M);
   if #ES eq 0 then
      return MatrixAlgebra(RationalField(),0)!1;
   end if;
   k := Weight(M);
   assert IsEven(k);   // This is not strictly necessary!
                       // we do this to avoid thinking about how
                       // to deal with N^(k/2).
   assert IsGamma0(M) or IsGamma1(M) or 
          // (&and [e^2 eq 1 : e in DirichletCharacters(M)]);
          (&and [ Conductor(e^2) eq 1 : e in DirichletCharacters(M)]);

   chi := EisensteinData(ES[1])[4];
   K := BaseRing(Parent(chi));
   W := MatrixAlgebra(K,#ES)!0;

   for i in [1..#ES] do E := ES[i];
      c, j := AtkinLehnerOnEisensteinSeries(E,q);
      W[i,j] := c;
   end for;
   okay := W^2 eq 1 or 
           W^2 eq -1 and q ne Level(M) and not IsGamma0(M);
   error if not okay, "The Atkin-Lehner operator obtained is wrong";
   return W;
end function;

function ChangeOfBasis_EisensteinSeries_To_CanonicalBasis(M)
   assert Type(M) eq ModFrm;
   assert IsEisenstein(M);

   B  := Basis(M);   
   ES := EisensteinSeries(M);
   assert #ES eq Dimension(M);

   if #ES eq 0 then
      return MatrixAlgebra(RationalField(),0)!1;
   end if;

   n := PrecisionBound(M);
   chi := EisensteinData(ES[1])[4];
   ES_qexp := [PowerSeries(e,n) : e in ES];      
   M_qexp := [PowerSeries(f,n) : f in Basis(M)];
   K := BaseRing(Parent(chi));
   Eis := RMatrixSpace(K,#ES,n)! (&cat [[Coefficient(e,i) : i in [0..n-1]] : e in ES_qexp]);
   Std := RMatrixSpace(K,Dimension(M),n)! (&cat [[Coefficient(b,i) : i in [0..n-1]] : 
                   b in M_qexp]);
   return Solution(Std,Eis);
end function;

function AtkinLehnerOnEisensteinModularFormsSpace(M, q)
   assert Type(q) eq RngIntElt;
   assert Type(M) eq ModFrm;
   assert IsEisenstein(M);
   if Dimension(M) eq 0 then  
      // Need field of fractions, since Atkin-Lehner doesn't
      // preserve integrality, and "function compute_Wq(M, q)"
      // in ModFrm/operators.m assumes this. 
      return MatrixAlgebra(FieldOfFractions(BaseRing(M)),0)!1;
   end if;

   k := Weight(M);
   assert IsEven(k);   // This is not strictly necessary!
                       // we do this to avoid thinking about how
                       // to deal with N^(k/2).
   assert IsGamma0(M) or IsGamma1(M) or 
          // (&and [e^2 eq 1 : e in DirichletCharacters(M)]);
          (&and [ Conductor(e^2) eq 1 : e in DirichletCharacters(M)]);
          // TO DO: why the last restriction ??

   W := AtkinLehnerOnEisensteinSeriesBasis(M, q);
   C := ChangeOfBasis_EisensteinSeries_To_CanonicalBasis(M);
   W := C^(-1)*W*C;
   // fix by Steve:
   //return MatrixAlgebra(RationalField(),Nrows(W))!Eltseq(W);      
   return MatrixAlgebra(FieldOfFractions(BaseRing(M)),Nrows(W))!Eltseq(W);  
end function;

