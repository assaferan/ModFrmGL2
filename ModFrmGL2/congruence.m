import "GrpPSL2/GrpPSL2/misc.m" : Conjugates,
       IsConjugate, NormalizerGrpMat;

import "ModSym/Box.m" : ModularCurveBox, get_M_K,
       get_M_K_normalizer,
       FindCurveSimple, FindHyperellipticCurve;

// These two functions are to get a GL2 model from a subgroup of PSL(2,Z)
// Helper functions for creation
function GetRealConjugate(H)
  GL_N := GL(2, BaseRing(H));
  N_H := NormalizerGrpMat(GL_N, H);
  N_H_conjs := Conjugates(GL_N, N_H);
  eta := GL_N![-1,0,0,1];
  real := exists(real_N_H){ real_N_H : real_N_H in N_H_conjs
			    | eta in real_N_H};
  error if not real, Error("No real type conjugate");
  dummy, alpha := IsConjugate(GL_N,N_H,real_N_H);
  real_H := H^alpha;
  assert real_H^eta eq real_H;
  return real_H; 
end function;

function GetGLModels(H : RealType := true)
  N := Modulus(BaseRing(H));
  SL_N := SL(2, Integers(N));
  GL_N := GL(2, BaseRing(H));
  N_H := NormalizerGrpMat(GL_N, H);
  Q, pi_Q := N_H / H;
  subs := SubgroupClasses(Q : OrderEqual := EulerPhi(N));

  cands := [s`subgroup@@pi_Q : s in subs];
  cands := &join[Conjugates(N_H, c) : c in cands | c meet SL_N eq H];
  cands := SetToSequence(cands);
  conj_reps := [];
  already_rep := {};
  i := 1;
  while i le #cands do
      Append(~conj_reps, cands[i]);
      Include(~already_rep, i);
      for j in [i+1..#cands] do
	  if IsConjugate(GL_N, cands[i], cands[j]) then
	      Include(~already_rep, j);
	  end if;
      end for;
      while i in already_rep do
	  i +:= 1;
      end while;
  end while;
  if RealType then
      real_reps := {};
      eta := GL_N![-1,0,0,1];
      for grp in conj_reps do
	   N_grp := NormalizerGrpMat(GL_N, grp);
	   N_grp_conjs := Conjugates(GL_N, N_grp);
	   real := exists(real_N_grp){ real_N_grp : real_N_grp in N_grp_conjs
				       | eta in real_N_grp};
	   if real then
	       _, alpha := IsConjugate(GL_N,N_grp,real_N_grp);
	       Include(~real_reps, grp^alpha);
	   end if;
      end for;
      conj_reps := real_reps;
  end if;
  return conj_reps;
end function;

function GetGLModel(H : RealType := true)
    N := Modulus(BaseRing(H));
    GL_N := GL(2, Integers(N));
    cands := GetGLModels(H : RealType := RealType);
    error if IsEmpty(cands), (RealType) select Error("No model with surjective determinant, 
                 	                         which commutes with eta")
							else Error("No model with surjective determinant");
  // We would prefer a model for which the Hecke operators are standard
  U, psi := UnitGroup(Integers(N));
  if exists(c){c : c in cands |
	       sub<GL_N | [[1,0,0,psi(t)] : t in Generators(U)]> subset c} then
      return c;
  else
      return Random(cands);
  end if;
end function;

// This treats the database of congruence subgroups

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

function IsSameEigenform(f,g)
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

// The load can't be in a function. do that before.
// Have to change original data files to be able to import them.
/*
dir := GetCurrentDirectory();
ChangeDirectory("/Users/eranassaf/Documents/Research/Modular\ Symbols/csg24.dat/");
ChangeDirectory("/Users/eranassaf/Dropbox\ \(Dartmouth\ College\)\
/Research/ModularSymbols/csg24.dat/");
if assigned L then
    delete L;
end if;
load "csg15-lev240.dat";
ChangeDirectory(dir);
*/

function GetAllEigenformsLevel(N, grps)
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
	is_in_eigs := &or [IsSameEigenform(f,eig) : eig in eigs];
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

function GetAllEigenforms(grps)
  result := AssociativeArray();
  not_in_eigs := [];
  errors := [];
  for N in Keys(grps) do
	  res, neig, err := GetAllEigenformsLevel(N, grps[N]);
     for k in Keys(res) do
	result[k] := res[k];
     end for;
     not_in_eigs cat:= neig;
     errors cat:= err;
  end for;
  return result, not_in_eigs, errors;
end function;

function LoadGroups(L)
  grps_by_name := AssociativeArray();
  for l in L do
     grps_by_name[l`name] := l;
  end for;
  return grps_by_name;
end function;

function LoadGroupsByLevel(L)
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

function LoadGroupsByGenus(L)
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

function createPSL2(grp)
    N := grp`level;
    SL_N := SL(2, Integers(N));
    H := sub<SL_N | grp`matgens>;
    real_H := GetRealConjugate(H);
    G := GetGLModel(real_H);
    return PSL2Subgroup(G);
end function;

function createPSL2Models(grp)
    N := grp`level;
    SL_N := SL(2, Integers(N));
    H := sub<SL_N | grp`matgens>;
    real_H := GetRealConjugate(H);
    Gs := GetGLModels(real_H);
    return [PSL2Subgroup(G) : G in Gs];
end function;

function checkShimura(grps)
    shimura_list := [];
    for grp in grps do
	print "checking group ", grp`name;
	try
	    Gs := createPSL2Models(grp);
	catch err
	    continue;
	end try;
	if exists(G){G : G in Gs | IsGammaShimura(G)} then
	    Append(~shimura_list, grp`name);
	end if;
    end for;
    return shimura_list;
end function;

function checkRealTypeSurjective(grps)
    rtsur := [];
    for grp in grps do
	print "checking group ", grp`name;
	try
	    G := createPSL2(grp);
	catch err
	    continue;
	end try;
	Append(~rtsur, grp`name);
    end for;
    return rtsur;
end function;

function get_best_M(grps, grp_names : Normalizers := false)
    grps_M := [];
    for grp_name in grp_names do
	grp := grps[grp_name];
	N := grp`level;
	gens := grp`matgens;
	H := sub<SL(2, Integers(N)) | gens>;
	real_H := GetRealConjugate(H);
	G := GetGLModel(real_H);
	// We may want to put it in GetGLModel,
	// but it really is just a requirement for the modular curve algorithm
	GL_N := GL(2, Integers(N));
	conjs := [c : c in Conjugates(GL_N, G)];
	// we want to still have real type
	eta := GL_N![-1,0,0,1];
	conjs := [c : c in conjs | c^eta eq c];
	Ms := [GCD([N] cat [Integers()!g[2,1] : g in Generators(c)]) : c in conjs];
	cands := [conjs[i] : i in [1..#Ms] | Ms[i] eq Maximum(Ms)];
	if Normalizers then
	    normalizers := [MaximalNormalizingWithAbelianQuotient(PSL2Subgroup(c)) : c in cands];
	    max_M, loc := Maximum([get_M_K_normalizer(ImageInLevelGL(normalizers[i]), 
						      cands[i]) : i in [1..#cands]]);
	else
	    max_M, loc := Maximum([get_M_K(c) : c in cands]);
	end if;
	Append(~grps_M, <N^2 div max_M, grp_name, max_M>);
	print "Done with ", grp_name;
    end for;
    return Sort(grps_M);
end function;

function qExpansionBasisPSL2(grp_name, grps : Precision := 0,
					      Normalizers := false,
					      M := 0)
    grp := grps[grp_name];
    N := grp`level;
    gens := grp`matgens;
    H := sub<SL(2, Integers(N)) | gens>;
    real_H := GetRealConjugate(H);
    G := GetGLModel(real_H);
    // We may want to put it in GetGLModel,
    // but it really is just a requirement for the modular curve algorithm
    GL_N := GL(2, Integers(N));
    conjs := [c : c in Conjugates(GL_N, G)];
    // we want to still have real type
    eta := GL_N![-1,0,0,1];
    conjs := [c : c in conjs | c^eta eq c];
    Ms := [GCD([N] cat [Integers()!g[2,1] : g in Generators(c)]) : c in conjs];
    cands := [conjs[i] : i in [1..#Ms] | Ms[i] eq Maximum(Ms)];

    // We try to upgrade to normalizers, to be able to use characters
    if Normalizers then
	normalizers := [MaximalNormalizingWithAbelianQuotient(PSL2Subgroup(c)) : c in cands];
	max_M, loc := Maximum([get_M_K_normalizer(ImageInLevelGL(normalizers[i]), cands[i]) : i in [1..#cands]]);
    else
	max_M, loc := Maximum([get_M_K(c) : c in cands]);
    end if;
    vprintf ModularCurves, 1 : "Best M found among conjugates is %o.\n", max_M;
    G := cands[loc];
    if M eq 0 then
	M := max_M;
    end if;
    
    PG := PSL2Subgroup(G);
    vprintf ModularCurves, 2 : "G = ", G;
    if Normalizers then
	MS := ModularSymbols(PG);
    else
	MS := ModularSymbols(PG, 2, Rationals(), 0);
    end if;
    S := CuspidalSubspace(MS);

    fs := qExpansionBasis(S, Precision : Al := "Box", M_val := M);
    
    // This is not working yet
    // fs := qIntegralBasis(S, Precision : Al := "Box");
    
    // debugging
    /*
    X, fs_ms := ModularCurveBox(G, grp`genus : Precision := Precision);

    assert #fs eq #fs_ms;
    
    R<q> := Universe(fs);
    Rms<q> := Universe(fs_ms);
    K := BaseRing(R);
    assert IsIsomorphic(K, BaseRing(Rms));
    fs_trimmed := [Rms!fs[i] + O(q^AbsolutePrecision(fs_ms[i])) : i in [1..#fs]];
    fs_ms_trimmed := [fs_ms[i] + O(q^AbsolutePrecision(fs[i])) : i in [1..#fs]];
    
    assert fs_trimmed eq fs_ms_trimmed;
    */
    // return X, fs;
    return fs;
end function;

procedure write_qexps(grp_name, fs, X : J := [])
    preamble := Sprintf("
    /****************************************************
    Loading this file in magma loads the objects fs_%o 
    and X_%o. fs_%o is a list of power series which form 
    a basis for the space of cusp forms. X_%o is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/
    ",grp_name, grp_name, grp_name, grp_name);
    fname := grp_name cat ".m";
    Kq<q> := Parent(fs[1]);
    K := BaseRing(Kq);
    if Type(K) ne FldRat then
	AssignNames(~K, ["zeta"]);
    end if;
    zeta := K.1;
    poly<x> := DefiningPolynomial(K);
    // This should always be the rational field, but just in case
    F := BaseRing(K);
    suf := "";
    // This is no longer needed, we already get the
    // curve over the rationals (if it is not hyperelliptic)
    //    X_Q := ChangeRing(X, Rationals());
    //    Proj<[x]> := AmbientSpace(X_Q);
    Proj<[x]> := AmbientSpace(X);
    if Type(K) ne FldRat then
	field_def_str := Sprintf("f<x> := Polynomial(F, %m);
	      K<zeta%o> := ext<F|f>;", Eltseq(poly), suf);
    else
	field_def_str := "K := F;";
    end if;
    write_str := Sprintf("
    	      F := %m;	
	      %o
	      Kq<q> := PowerSeriesRing(K);
	      fs_%o := [Kq | %m", F, field_def_str, grp_name, fs[1]);
    if #fs gt 1 then
      write_str cat:= &cat[Sprintf(", %m", f) : f in fs[2..#fs]];
    end if;
    write_str cat:= "] ;";

    wts := Gradings(X)[1];
    is_weighted := Set(wts) ne {1};
    if is_weighted then
	proj_string := Sprintf("P_Q<[x]> := WeightedProjectiveSpace(Rationals(), %o);", wts);
    else
	proj_string := Sprintf("P_Q<[x]> := ProjectiveSpace(Rationals(), %o);", Dimension(Proj));
    end if;

    write_str cat:= Sprintf("
    	      %o
    	      X_%o := Curve(P_Q, %m);",
			    proj_string, grp_name, DefiningPolynomials(X));

    if not IsEmpty(J) then
      jmap := J[1];
      P1<a,b> := Codomain(jmap);
      write_str cat:= "\nP1<a,b> := ProjectiveSpace(Rationals(),1);\n";
      write_str cat:= Sprintf("images := %m;\n",
			      [AlgebraMap(jmap)(P1.i) : i in [1..2]]);
      write_str cat:= Sprintf("Jmap_%o := map<X_%o -> P1 | images>;",
			grp_name, grp_name);
    end if;
    Write(fname, preamble cat write_str : Overwrite);
end procedure;

function qExpansionBasisShimura(grp_name, grps : Proof := false)
    grp := grps[grp_name];
    genus := grp`genus;
    max_deg := Maximum(7-genus, 3);
    PGs := createPSL2Models(grp);
    assert exists(PG){PG : PG in PGs | IsGammaShimura(PG)};
    is_shim, U, phi, H, t := IsGammaShimura(PG);
    assert is_shim;
    prec := Binomial(max_deg + genus - 1, max_deg);
    if Proof then
	k := 2*max_deg; // we multiply forms of weight 2, so degree k
	                // monomials are of weight 2*k
	m := grp`index;
	N := grp`level;
	// This is the Sturm bound for cusp forms
	sturm := Ceiling(k*m/12 - (m-1)/N);
	// We have to multiply by the cusp width at infinity,
	// since our expansions are in q_h = q^(1/h)
	prec := Maximum(prec, sturm * t);
    end if;
    // getting a better model
    // This is using ModularSymbolsH
    N := Level(PG);
    U_t, phi_t := UnitGroup(Integers(N*t));
    red_N := hom<Integers(N*t) -> Integers(N)|>;
    gens := [U_t.i : i in [1..Ngens(U_t)]];
    red_U := hom<U_t -> U | [red_N(phi_t(x))@@phi : x in gens]>;
    H_t := H@@red_U;
    MS_H := ModularSymbolsH(N*t, [Integers()!phi_t(g) : g in Generators(H_t)], 2, 0);
    C_H := CuspidalSubspace(MS_H);
    fs := qIntegralBasis(C_H, prec);
    // This is using my approach
    // Right now we have a problem with images of oldforms
    // leading to an absence of oldforms in the qIntegralBasis
    /*
    PShim := GammaShimura(U, phi, H, t);
    MS := ModularSymbols(PShim);
    C := CuspidalSubspace(MS);
    // Do we want qIntegralBasis or qExpansionBasis ?
    assert fs eq qIntegralBasis(C);
   */
    Qq<q> := PowerSeriesRing(Rationals());
    fs := [Qq!f : f in fs];

    if genus eq 1 then
	A := NewformDecomposition(C_H)[1];
	X := EllipticCurve(A : Database := false);
	X_Q := ChangeRing(X, Rationals());
	return X_Q, fs;
    else
	X := FindCurveSimple(fs, prec, max_deg);
	// This takes too long when the genus is 15
	if genus lt 15 then
	    vprintf ModularCurves, 1: "Computing genus of curve...\n";
	    g := Genus(X);
	    vprintf ModularCurves, 1: "Done.\n";
	    if g eq 0 then
		// print "Curve is Hyperelliptic. Finding equations not implemented yet.";
		X, fs := FindHyperellipticCurve(fs, prec);
		return X, fs;
	    else
		assert g eq genus;
		X_Q := ChangeRing(X, Rationals());
		return X_Q, fs;
	    end if;
	else
	    X_Q := ChangeRing(X, Rationals());
	    return X_Q, fs;
	end if;
    end if;
end function;

function NumSubgroupsTotalZNStar(N)
    U := UnitGroup(Integers(N));
    ps := PrimeDivisors(#U);
    elem_by_p := [[d : d in ElementaryDivisors(U) | d mod p eq 0] : p in ps];
    num_sub := &*([1] cat [1 + &+NumberOfSubgroupsAbelianPGroup(elem_p) : elem_p in elem_by_p]);
    return num_sub;
end function;

function NumSubgroupsZNStarOfOrder(N,h)
    U := UnitGroup(Integers(N));
    ps := PrimeDivisors(#U);
    assert #U eq EulerPhi(N);
    assert #U mod h eq 0;
    vals := [Valuation(h,p) : p in ps];
    elem_by_p := [[d : d in ElementaryDivisors(U) | d mod p eq 0] : p in ps];
    num_sub := &*([1] cat [vals[i] eq 0 select 1 else NumberOfSubgroupsAbelianPGroup(elem_by_p[i])[vals[i]] : i in [1..#ps]]);
    return num_sub;
end function;

function NumShimuraSubgroupsOfLevel(N)
    return #Divisors(N)*NumSubgroupsTotalZNStar(N);
end function;

function NumShimuraSubgroupsOfIndex(h)
    // Note that a group of Shimura type in level N is contained in Gamma0(N)
    // hence its index is at least [Gamma(1) : Gamma0(N)] = P1(Z/NZ) > N
    count := 0;
    for N in [1..h] do
	ps := PrimeDivisors(N);
	gamma_0_index := Integers()!(&*([N] cat [1 + 1/p : p in ps]));
	if h mod gamma_0_index eq 0 then
	    quo := h div gamma_0_index;
	    for t in Divisors(quo) do
		H_index := quo div t;
		if EulerPhi(N) mod H_index eq 0 then
		    count +:= NumSubgroupsZNStarOfOrder(N,EulerPhi(N) div H_index);
		end if;
	    end for;
	end if;
    end for;
    return count;
end function;

function UpperBoundNumShimuraSubgroupsOfGonality(d)
    // Note that a group of Shimura type in level N is contained in Gamma0(N)
    // hence its index is at least [Gamma(1) : Gamma0(N)] = P1(Z/NZ) > N
    count := 0;
    g := (d-1)*(d-2) div 2;
    alpha := 32768/325;
    N_bound := Floor(12*g+1/2*(13*Sqrt(48*g+121)+145));
    genera := [Genus(Gamma0(N)) : N in [1..N_bound]];
    possible_N := [i : i in [1..N_bound] | genera[i] le g];
    // for N in [1..N_bound] do
    for N in possible_N do
	if (N eq 1) then
	    if (g eq 0) then
		count +:= 1;
	    end if;
	    continue;
	end if;
	ps := PrimeDivisors(N);
	max_e2 := (N mod 4 eq 0) select 0 else 2^(#[p : p in ps | p mod 4 eq 1]);
	max_e3 := (N mod 9 eq 0) select 0 else 2^(#[p : p in ps | p mod 3 eq 1]);
	gamma_0_index := Integers()!(&*([N] cat [1 + 1/p : p in ps]));
	gamma_N_index := Integers()!(&*([N^3] cat [1 - 1/p^2 : p in ps]));
	// h_bound := Maximum(128*(g+1), gamma_N_index);
	h_bound := Maximum(Floor(alpha*(d-1)), gamma_N_index);
	quos := [quo : quo in [1..h_bound div gamma_0_index] | N mod quo eq 0];
	for quo in quos do
	    h := gamma_0_index * quo;
	    for t in Divisors(quo) do
		max_num_cusps := h div t;
		g_min := 1 + h/12 - max_e2/4-max_e3/3-max_num_cusps/2;
		if (g ge g_min) then
		    H_index := quo div t;
		    if EulerPhi(N) mod H_index eq 0 then
			count +:= NumSubgroupsZNStarOfOrder(N,EulerPhi(N) div H_index);
		    end if;
		end if;
	    end for;
	end for;
    end for;
    return count;
end function;

function genus(PG)
    // G := sub<ModLevel(PG) | ImageInLevel(PG), [-1,0,0,-1]>;
    // PG := PSL2Subgroup(G);
    return Dimension(CuspidalSubspace(ModularSymbols(PG, 2, Rationals(), 0))) div 2;
end function;

function ShimuraSubgroupsOfGenus(g)
    // Note that a group of Shimura type in level N is contained in Gamma0(N)
    // hence its index is at least [Gamma(1) : Gamma0(N)] = P1(Z/NZ) > N
    ret := [];
    N_bound := Floor(12*g+1/2*(13*Sqrt(48*g+121)+145));
    genera := [Genus(Gamma0(N)) : N in [1..N_bound]];
    possible_N := [i : i in [1..N_bound] | genera[i] le g];
    // for N in [1..N_bound] do
    for N in possible_N do
	if (N eq 1) then
	    if (g eq 0) then
		Append(~ret, PSL2(Integers()));
	    end if;
	    continue;
	end if;
	ps := PrimeDivisors(N);
	max_e2 := (N mod 4 eq 0) select 0 else 2^(#[p : p in ps | p mod 4 eq 1]);
	max_e3 := (N mod 9 eq 0) select 0 else 2^(#[p : p in ps | p mod 3 eq 1]);
	gamma_0_index := Integers()!(&*([N] cat [1 + 1/p : p in ps]));
	gamma_N_index := Integers()!(&*([N^3] cat [1 - 1/p^2 : p in ps]));
	h_bound := Maximum(128*(g+1), gamma_N_index);
	quos := [quo : quo in [1..h_bound div gamma_0_index] | N mod quo eq 0];
	for quo in quos do
	    h := gamma_0_index * quo;
	    for t in Divisors(quo) do
		max_num_cusps := h div t;
		g_min := 1 + h/12 - max_e2/4-max_e3/3-max_num_cusps/2;
		if (g ge g_min) then
		    H_index := quo div t;
		    if EulerPhi(N) mod H_index eq 0 then
			U, phi := UnitGroup(Integers(N));
			subs := [H`subgroup : H in Subgroups(U) | #H`subgroup * H_index eq EulerPhi(N)];
			if N gt 2 then
			    subs := [H : H in subs | (-1)@@phi in H];
			end if;
			for H in subs do
			    G := GammaShimura(U, phi, H, t);
			    assert Index(G) eq h;
			    if genus(G) eq g then
				Append(~ret, G);
			    end if;
			end for;
		    end if;
		end if;
	    end for;
	end for;
    end for;
    return ret;
end function;


