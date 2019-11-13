freeze;

////////////////////////////////////////////////////////////////////
//                                                                //
//                      Creation functions                        //
//                                                                //
////////////////////////////////////////////////////////////////////

// update, 3rd Sept 2002: changed order in which
// generators of SL2(Z) are given, to be compatible
// with functions for computing words for matrices
// in terms of T=[1,1,0,1] and S=[0,-1,1,0],
// as used in the intersection_pairing modular symbols file.

function init_psl2_group(N,R) 
    /* The basic internal creation function. */
    G := New(GrpPSL2);
    // warning!  Need to check for which
    // rings GL(2,R) works or not!!!
    if (Type(R) in {Rng,RngInt,FldRat}) then 
       G`MatrixGroup := GL(2,R);
    else
       G`MatrixGroup := MatrixAlgebra(R,2);
    end if;
    G`BaseRing := R;
    G`Level := N;
    G`conjugate_list := [GL(2,R)!1];
    G`IsNormalizer := false;
    G`IsOfGammaType := true;
    G`IsReal := true;
    return G;
end function;

function init_psl2_group_char(N,R,char) 
    G := init_psl2_group(N,R);
    G`character_list := [char];
    return G;
end function;
 
intrinsic PSL2(R::Rng) -> GrpPSL2
    {The projective special linear matrix group PSL(2,R).}
    require Type(R) in {RngInt, FldRat, FldQuad, FldNum, FldRe}: 
           "The Argument must have type RngInt, FldRat, FldQuad, or FldRe";
    require not R cmpeq ComplexField(): "The Argument must be contained in the reals";
    if Type(R) eq FldQuad then
	require Discriminant(R) gt 0: "The Argument must be a ring contained in the reals";
    end if;
     
    G := init_psl2_group(1,R);
    G`BaseRing := R;
    G`Level := 1;
    G`IsOfGammaType := true;
    G`IsReal := true;
    G`gammaType_list:=[[1,1,1]];
    if Type(R) eq RngInt then
       T := G![1,1,0,1];
       S := G![0,1,-1,0];
       G`Generators := [T,S];
    end if;
    G`conjugate_list:=[GL(2,R)!1];
    return G;
end intrinsic;

intrinsic CongruenceSubgroup(A::SeqEnum) -> GrpPSL2
    {Given A = [n,m,p], this returns
    the congruence subgroup consisting of 2 by 2 matrices
    with integer coefficients [a,b,c,d]
    with a = d = 1 mod m,
    b = 0 mod p, and c = 0 mod n}
    require Universe(A) eq Integers() and #A eq 3
            and &and[A[i] ge 1 : i in [1..3]]: 
           "Please provide a list of 3 positive integers";
    n,m,p := Explode(A);
    require ((n*p) mod m) eq 0 :
            "The Argument must be a sequence N of 3 integers "
           * "with N[2] dividing N[1]*N[3]";
    N := Lcm(A);
    G := init_psl2_group(N,IntegerRing());
    G`gammaType_list := [A];
    return G;
end intrinsic;

intrinsic CongruenceSubgroup(A::SeqEnum,char::GrpDrchElt) -> GrpPSL2
    {Given N = [n,m,p], this returns
    the congruence subgroup consisting of 2 by 2 matrices
    with integer coefficients [a,b,c,d]
    with  b = 0 mod p, and c = 0 mod n, and char(a) = 1
    for char a Dirichlet character mod m}
    require Type(char) eq GrpDrchElt: "second argument must be a Dirichlet character";
    require A[2] mod Conductor(char) eq 0: 
      "The second argument must be a Dirichlet character with conductor dividing A[2]";    
    A[2] := Conductor(char);
    require char(-1) eq 1 : "Please give a character chi satisfying chi(-1) = 1";
    G := CongruenceSubgroup(A);
    subgroup_list_required := A[2] ne 1;  
    // Also not required if kernel(char) eq {1,-1} :
    if Order(Parent(char)) div Order(char) in {1,2} then 
        subgroup_list_required := false; end if;
    if subgroup_list_required then G`subgroup_list := [char]; end if;
    return G;
end intrinsic;

intrinsic CongruenceSubgroup(k::RngIntElt,N::RngIntElt) -> GrpPSL2
    {The congruence subgroup 
    Gamma_0(N), Gamma_1(N), Gamma(N), Gamma^1(N), or Gamma^0(N),
    when k = 0,1,2,3, or 4  respectively.}
    if k notin {0,1,2,3,4} then
	error "First argument must in {0,1,2,3,4}";
    end if;
    if N lt 1 then
	error "Second argument must be a positive integer";
    end if;
    if N eq 1 then
	return PSL2(Integers());
    end if;
    case k:
	when 0:
	return CongruenceSubgroup([N,1,1]);
	when 1:
	return CongruenceSubgroup([N,N,1]);
	when 2:
	return CongruenceSubgroup([N,N,N]);
	when 3:
	return CongruenceSubgroup([1,N,N]);
	when 4:
	return CongruenceSubgroup([1,1,N]);
    end case;
end intrinsic;

intrinsic CongruenceSubgroup(N::RngIntElt) -> GrpPSL2
   {The full projective congruence subgroup Gamma(N).}
   return CongruenceSubgroup(2,N);
end intrinsic;


//////////////////////////////////////////////////////////
//                                                      //
//  creation of special congruence subgroups            //
//                                                      //
//////////////////////////////////////////////////////////


intrinsic Gamma0(N::RngIntElt) -> GrpPSL2
    {creates the congruence subgroup Gamma_0(N)}
    require N gt 0: "Argument must be a positive integer";
    G := CongruenceSubgroup([N,1,1]);    
    return G;
end intrinsic;

intrinsic Gamma1(N::RngIntElt) -> GrpPSL2
   {creates the congruence subgroup Gamma_1(N)}
   require N gt 0: "Argument must be a positive integer";
    G := CongruenceSubgroup([N,N,1]);    
    return G;
 end intrinsic;


intrinsic GammaUpper0(N::RngIntElt) -> GrpPSL2
    {creates the congruence subgroup Gamma^0(N)}
    require N gt 0: "Argument must be a positive integer";
    G := CongruenceSubgroup([1,1,N]);    
    return G;
end intrinsic;

intrinsic GammaUpper1(N::RngIntElt) -> GrpPSL2
   {creates the congruence subgroup Gamma^1(N)}
   require N gt 0: "Argument must be a positive integer";
    G := CongruenceSubgroup([1,N,N]);    
    return G;
end intrinsic;

intrinsic GammaNS(N::RngIntElt, u::RngIntResElt) -> GrpPSL2
{creates the congruence subgroup Gamma_ns(N), choosing u as the nonsquare
    such that N | a-d, N | b-uc}
  require N gt 0: "N must be a positive integer";
  require Modulus(Parent(u)) eq N: "u must be a mod N residue";
  primes := [x[1] : x in Factorization(N)];
  good_u := &and[not IsSquare(IntegerRing(p)!u) : p in primes | p ne 2];
  require good_u: "u must be a nonsquare mod every prime dividing N";
  G_N := GL(2, IntegerRing(N));
  // currently assumes N=p is prime
  // In general will have to consider arbitrary irreducibles
  F := GF(N);
  // TODO : Treat the general case for N 
  if N eq 2 then
    C_N := sub<G_N | [0,1,1,1]>; 
  else
    F2<t> := ExtensionField<F,t | t^2-F!u>;
    zeta := PrimitiveElement(F2);
    a := F!((zeta + Frobenius(zeta))/2);
    b := F!((zeta - Frobenius(zeta))/(2*t));
    g := [a,F!u*b,b,a];
    C_N := sub<G_N | [IntegerRing(N)!x : x in g]>;
  end if;
  G := PSL2Subgroup(C_N);
  G`Label := Sprintf("Gamma_ns(%o)", N);
  G`IsReal := true;
  G`NSCartanU := u;
  return G;
end intrinsic;

intrinsic GammaNS(N::RngIntElt) -> GrpPSL2
{creates the congruence subgroup Gamma_ns(N)}
   u := PrimitiveElement(IntegerRing(N));
   return GammaNS(N,u);
end intrinsic;

intrinsic GammaNSplus(N::RngIntElt, u::RngIntResElt) -> GrpPSL2
{creates the congruence subgroup Gamma_ns^plus(N)}
   return Normalizer(GammaNS(N,u));
end intrinsic;

intrinsic GammaNSplus(N::RngIntElt) -> GrpPSL2
{creates the congruence subgroup Gamma_ns^plus(N)}
  return Normalizer(GammaNS(N));
end intrinsic;

// Creation of Quotient

intrinsic '/'(G::GrpPSL2, H::GrpPSL2) -> GrpPSL2
{Currently assumes the same level.}
   require ModLevelGL(G) eq ModLevelGL(H) :
          "the groups must be of the same level";
   return ImageInLevelGL(G)/ImageInLevelGL(H);
end intrinsic;

//////////////////////////////////////////////////////////
//                                                      //
//  creation of normalizer of G                         //
//                                                      //
//////////////////////////////////////////////////////////

intrinsic Normalizer(G::GrpPSL2) -> GrpPSL2
   {The normalizer of a congruence subgroup in SL_2(R)}
   // require IsGamma0(G): "the argument must be Gamma_0(N) for some integer N";
   if Level(G) eq 1 then return G; end if;
   if IsGamma0(G) then
     H := init_psl2_group(Level(G),Integers());
     N := Level(G);
     H`gammaType_list := [[N,1,1]]; 
     F := Factorization(N);
     r := #F;
     H`LevelFactorization := F;
     H`AtkinLehnerInvolutions := VectorSpace(FiniteField(2),r);
   else     
     N_G := Normalizer(ModLevelGL(G), ImageInLevelGL(G));
     H := PSL2Subgroup(N_G, true);
   end if;
   H`IsNormalizer := true;
   H`Label := Sprintf("Normalizer in PSL_2(%o) of ", G`BaseRing) cat Label(G);
   if IsOfRealType(G) then H`IsReal := true; end if;
   if IsGammaNS(G) then
     H`NSCartanU := G`NSCartanU;
     H`IsNSCartan := false;
     H`IsNSCartanPlus := true;
   end if;
   return H;
end intrinsic;

intrinsic MaximalNormalizingWithAbelianQuotient(G_prime::GrpMat,
						G::GrpMat,
						H::GrpMat) -> GrpMat
{}
    N_G := Normalizer(G_prime, G);
    require H subset N_G : "H must normalize G";
    Q, pi_Q := N_G / G;
    H_im := H@pi_Q;
    require IsAbelian(H_im) : "HG/G must be Abelian";
    // At the moment, magma cannot compute irreducible modules for
    // non soluble groups over characteristic 0 fields
    // if (not IsSoluble(Q)) or (#Q eq 1) then
    // In fact, if Q is not nilpotent,
    // currently don't know how to find maximal abelian subgroups
    if IsAbelian(Q) then
       return N_G;
    elif not IsNilpotent(Q) then
       return H;
    else
      // find a maximal abelian subgroup containing H
      A := sub<Q | Center(Q), H_im>;
      C := Centralizer(Q,A);
      while (C ne A) do
	gens := Generators(C);
        for g in gens do
	  if g notin A then
	    A := sub<Q|A,g>;
            break;
          end if;
        end for;
        C := Centralizer(Q,A);
      end while;
    end if;
    return A @@ pi_Q;
end intrinsic;

intrinsic MaximalNormalizingWithAbelianQuotient(G::GrpPSL2) -> GrpPSL2
{}
    if Level(G) eq 1 then return G; end if;
    im_G  := ImageInLevelGL(G);
    G_prime := MaximalNormalizingWithAbelianQuotient(ModLevelGL(G),
						     im_G, im_G);
    H := PSL2Subgroup(G_prime, true);
    H`Label := Sprintf("Maximal Abelian Subgroup of Normalizer in 
                        PSL_2(%o) of ", G`BaseRing) cat Label(G);
    if IsOfRealType(G) then H`IsReal := true; end if;
    if IsGammaNS(G) then
      H`NSCartanU := G`NSCartanU;
      H`IsNSCartan := false;
      H`IsNSCartanPlus := true;
    end if;
    return H;
end intrinsic;

//////////////////////////////////////////////////////////
//                                                      //
//  creation of random elements of congruence subgroups //
//                                                      //
//////////////////////////////////////////////////////////


intrinsic Random(G::GrpPSL2,m::RngIntElt) -> GrpPSL2Elt
    {returns a random element of the projective linear group G,
    m determines the size of the coefficients}    
    // assume the group is congruence, given by [N,M,P]
    N,M,P := Explode(G`gammaType_list[1]);
    limN := Ceiling(m/N);
    limM := Ceiling(m/M);
    limP := Ceiling(m/P);

    g := 0;
    while g ne 1 do
    c := Random(-limN,limN)*N;
    d := Random(-limM,limM)*M + 1;
    b := Random(-limP,limP)*P;
	g, r,a := Xgcd(-c*b,d);
    end while;
    // b and c have been lumped together;
    // so have to change r to r*b, and c*b to c, so that
    // r*b, a = Xgcd(-c,d) :
    b := r*b;
    // matrix [a,b,c,d] is OK, but would like to
    // have top coeffs, a,b as close as possible to
    // requested range, so need to add a multiple of
    // bottom row to top row.
    // WARNING : the following is not quite right yet!
    fac1 := M div Gcd(M,N);
    fac2 := P div Gcd(P,d);
    mul := Lcm(fac1,fac2);
    if c gt 0 then
	lims1 := [-Floor((a+m)/mul/c),Floor((m-a)/mul/c)];
    elif c lt 0 then
	lims1 := [-Floor((m-a)/mul/c),Floor(-(m+a)/mul/c)];
    else lims1 := [0,0];
    end if;
    if d gt 0 then
	lims2 := [-Floor((b+m)/mul/d),Floor((m-b)/mul/d)];
    elif d lt 0 then
	lims2 := [-Floor((m-b)/mul/d),Floor(-(m+b)/mul/d)];
    else lims2 := [0,0];
    end if;

    lims := [Max(lims1[1],lims2[1]),Min(lims1[2],lims2[2])];
    if lims[2] lt lims[1] then
	t := 0;
    else
	t := Random([lims[1],lims[2]]);
    end if;
    
    g := G![a + mul*c*t,b + mul*d*t,c,d];    
    return g;
end intrinsic;



//////////////////////////////////////////////////////////
//                                                      //
//      Methods of obtaining new congruence subgroups:  //
//  conjugation and intersetcion                        //
//                                                      //
//////////////////////////////////////////////////////////

intrinsic Conjugate(G::GrpPSL2, A::GrpMatElt) -> GrpPSL2
{This function returns the conjugation of G by A, i.e. A^(-1)*G*A
     At the moment we only support the case where
     both input and output are subgroups of PSL2(Z)}
  // At the moment we always calculate generators
  // If they have not been calculated yet, can add later more efficient
  // methods
  gens := Generators(G);
  H_gens := [];
  for g in gens do
      elt := A^(-1) * GL(2,Rationals())!Eltseq(g) * A;
      new_g := PSL2(Integers())!Eltseq(elt);
      Append(~H_gens, new_g);
  end for;
  new_level := Level(G) * Integers()!(Determinant(A));
  mod_level :=  SL(2,quo<G`BaseRing | new_level>);
  gens_level := [Eltseq(h) : h in H_gens] cat [[-1,0,0,-1]];
  im_in_level := sub<mod_level | gens_level >;
  return PSL2Subgroup(im_in_level, false);
end intrinsic;

intrinsic '^'(G::GrpPSL2, A::GrpMatElt) -> GrpPSL2
{}
  return Conjugate(G,A);
end intrinsic;

intrinsic Intersection(G::GrpPSL2,H::GrpPSL2) -> GrpPSL2
    {returns the intersection of two congruence subgroups.}

  require Type(G`BaseRing) eq RngInt : "G, H must be congruence subgroups";

  if G`IsOfGammaType and H`IsOfGammaType then
    conListG := G`conjugate_list;
    conListH := H`conjugate_list;
    require #conListG eq 1 and #conListH eq 1 and
    conListG[1] eq GL(2,G`BaseRing)!1 and
    conListH[1] eq GL(2,H`BaseRing)!1:
    "Not yet implemented for the
    groups you have entered";
    // initiate group
    // find the 3 integers giving group
    HL := (H`gammaType_list)[1];
    GL := (G`gammaType_list)[1];
    A := [Lcm(HL[i],GL[i]) : i in [1..3]];   
    K := init_psl2_group(Lcm(A),Integers());
    K`gammaType_list := [A];
    K`IsOfGammaType := true;
    return K;
  else
    N := LeastCommonMultiple(Level(G), Level(H));   
    if (Type(G`BaseRing) in {Rng,RngInt,FldRat}) then 
        ModLevel := SL(2,quo<G`BaseRing | N>);
    else
        ModLevel := MatrixAlgebra(quo<G`BaseRing | N>,2);
    end if;
    gens_G := [Eltseq(x) : x in Generators(G)];
    gens_H := [Eltseq(x) : x in Generators(H)];
    Append(~gens_G, [-1,0,0,-1]);
    Append(~gens_H, [-1,0,0,-1]);
    G_image := sub<ModLevel | gens_G>;
    H_image := sub<ModLevel | gens_H>;
    return PSL2Subgroup(G_image meet H_image);
  end if;
end intrinsic;
 

intrinsic 'meet' (G::GrpPSL2,H::GrpPSL2) -> GrpPSL2
    {returns the intersection of two congruence subgroups.}
    return Intersection(G,H);
end intrinsic;

import "../../ModSym/core.m" : CosetReduce, ManinSymbolGenList;

intrinsic calcLevel(G::GrpPSL2) -> RngIntElt
{calculates the level of a subgroup of PSL2}
  mlist := ManinSymbolGenList(2,G,G`BaseRing);
  coset_list := mlist`coset_list;
  find_coset := mlist`find_coset;
  T := ModLevel(G) ! [1,1,0,1];
  T_map := [CosetReduce(ModLevel(G)!Matrix(x) * T,
		      find_coset) : x in coset_list];
  perm_T := SymmetricGroup(#T_map)!T_map;
  level := Order(perm_T);
  return level;
end intrinsic;

 // Eventually we would like to compute the level and check
 // whether it is a congruence subgroup ourselves
 
intrinsic SubgroupFromGens(G::GrpPSL2, gens::SeqEnum, N::RngIntElt,
			   IsExactLevel::BoolElt) -> GrpPSL2
     {returns the subgroup of G generated by gens.}
     H := New(GrpPSL2);
     H`MatrixGroup := G`MatrixGroup;
     H`BaseRing := G`BaseRing;
     H`IsOfGammaType := false;
     H`Generators := gens;
     if (Type(H`BaseRing) in {Rng,RngInt,FldRat}) then 
        H`ModLevel := SL(2,quo<H`BaseRing | N>);
     else
        H`ModLevel := MatrixAlgebra(quo<H`BaseRing | N>,2);
     end if;
     H`ImageInLevel := sub< H`ModLevel | [H`ModLevel!Matrix(g) : g in gens]>;
     if IsExactLevel then
       H`Level := N;
     else
       H`Level := calcLevel(H);
     end if;
     return H;
end intrinsic;

intrinsic PSL2SubgroupFromGens(gens::SeqEnum, R::Rng, N::RngIntElt,
			       IsExactLevel::BoolElt) -> GrpPSL2
     {returns the subgroup of PSL2(R) generated by gens}
    return SubgroupFromGens(PSL2(R), gens, N, IsExactLevel);
end intrinsic;

// Lift an element of SL2(Z/NZ) to an element of SL2(Z)
 
intrinsic FindLiftToSL2(g::GrpMatElt) -> GrpPSL2Elt
{finds a lift in SL2 for g}
     elt_g := ElementToSequence(g);
     if #elt_g eq 1 then return PSL2(Integers())!1; end if;
     a,b,c,d := Explode(elt_g); 
     N := Modulus(Parent(a));
     Z := Integers();
     a_prime := Z!a;
     b_prime := Z!b;
     if a_prime eq 0 then
        a_prime +:= N;
     end if;
     gcd_res, x, y := Xgcd(a_prime, b_prime);
     while gcd_res ne 1 do
           b_prime +:= N; 
           gcd_res, x, y := Xgcd(a_prime, b_prime);
     end while;
     det := a_prime * Z!d - b_prime*Z!c;
     c_prime := Z!c - y * (1 -det);
     d_prime := Z!d + x * (1 - det);       
//lift_g := SL(2,Z)![a_prime, b_prime, c_prime, d_prime];
     lift_g := PSL2(Integers())![a_prime, b_prime, c_prime, d_prime];
     return lift_g;
end intrinsic;

function get_mod_level(H, N)
     if N eq 1 then
       dim := 1;
       level := 2;
     else
       dim := 2;
       level := N;
     end if;
     is_gl := (Type(H`BaseRing) in {Rng,RngInt,FldRat});
     if is_gl then 
        ModLevel := SL(dim, quo<H`BaseRing | level>);
        ModLevelGL := GL(dim, quo<H`BaseRing | level>);
     else
        ModLevel := MatrixAlgebra(quo<H`BaseRing | level>, dim);
        ModLevelGL := MatrixAlgebra(quo<H`BaseRing | level>, dim);
     end if;
     return ModLevel, ModLevelGL;
end function;

intrinsic SubgroupFromMod(G::GrpPSL2, N::RngIntElt, H0::GrpMat,
			  IsExactLevel::BoolElt) -> GrpPSL2
     {returns the subgroup of G generated whose image is H0.}
     H := New(GrpPSL2);
     H`MatrixGroup := G`MatrixGroup;
     H`BaseRing := G`BaseRing;
     H`IsOfGammaType := false;
     H`ModLevel, H`ModLevelGL := get_mod_level(H, N);
     if N eq 1 then
       H`ImageInLevel := H`ModLevel;
       H`ImageInLevelGL := H`ModLevelGL;
     else
       H`ImageInLevel := H0 meet H`ModLevel;
       H`ImageInLevelGL := H0;
     end if;
     cosets, find_coset := Transversal(H`ModLevel, H`ImageInLevel);
     if N eq 1 then
       H`FS_cosets := [G!1];
     else
       H`FS_cosets := [G | FindLiftToSL2(c) : c in cosets];
     end if;
     codom := [<i, cosets[i]^(-1)> : i in [1..#cosets]];
     coset_idx := map<cosets -> codom |
       [<cosets[i], codom[i] > : i in [1..#cosets]] >;
     H`FindCoset := find_coset*coset_idx;
     det_cosets := Transversal(H0, H`ImageInLevel);
     dom := [Determinant(x) : x in det_cosets];
     H`DetRep := map< dom -> H0 | [<Determinant(x),x> : x in det_cosets] >;
     if IsExactLevel then
        H`Level := N;
     else
        H`Level := calcLevel(H);
        H`ModLevel, H`ModLevelGL := get_mod_level(H, H`Level);
        if H`Level eq 1 then
	  H0bar := H`ModLevelGL;
        else
          H0bar := sub<H`ModLevelGL | Generators(H0) >;
        end if;
        return SubgroupFromMod(G, H`Level, H0bar, true);
     end if;
     return H;
end intrinsic;

intrinsic PSL2Subgroup(H::GrpMat, IsExactLevel::BoolElt) -> GrpPSL2
 {returns a subgroup of PSL2(Z) whose image is H (assumes -I in H)}
     require Type(BaseRing(H)) eq RngIntRes : "Image group must be Z/NZ";
     require Dimension(H) eq 2 : "Group must be of 2x2 matrices";
     // This check takes too long to verify
     // require GL(2,BaseRing(H))![-1,0,0,-1] in H : "Currently assume -I in H";
     N := Modulus(BaseRing(H));   
     return SubgroupFromMod(PSL2(Integers()), N, H, IsExactLevel);
end intrinsic;

intrinsic PSL2Subgroup(H::GrpMat) -> GrpPSL2
 {returns a subgroup of PSL2(Z) whose image is H (assumes -I in H)}
   return PSL2Subgroup(H, true);
end intrinsic;

intrinsic PSL2Subgroup(H::GrpMat,label::MonStgElt) -> GrpPSL2
 {returns a subgroup of PSL2(Z) whose image is H (assumes -I in H)}
   ret :=  PSL2Subgroup(H, true);
   ret`Label := label;
   return ret;
end intrinsic;
