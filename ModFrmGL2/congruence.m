import "GrpPSL2/GrpPSL2/misc.m" : Conjugates,
       IsConjugate, NormalizerGrpMat;

import "ModSym/Box.m" : ModularCurve, get_M_K;

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

// !! TODO - choose a conjugate contained in B0(M) with M maximal 
function GetGLModel(H : RealType := true)
  N := Modulus(BaseRing(H));
  SL_N := SL(2, Integers(N));
  GL_N := GL(2, BaseRing(H));
  N_H := NormalizerGrpMat(GL_N, H);
  Q, pi_Q := N_H / H;
  subs := SubgroupClasses(N_H/H : OrderEqual := EulerPhi(N));
  cands := [s`subgroup@@pi_Q : s in subs];
  cands := &join[Conjugates(N_H, c) : c in cands | c meet SL_N eq H];
  error if IsEmpty(cands), Error("No model with surjective determinant");

  if RealType then
      eta := GL_N![-1,0,0,1];
      cands := [c : c in cands | c^eta eq c];
      error if IsEmpty(cands), Error("No model with surjective determinant, 
                 	                        which commutes with eta");
  end if;
  // We would perfer a model for which the Hecke operators are standard
  U, psi := UnitGroup(Integers(N));
  if exists(c){c : c in cands |
	       sub<GL(2,Integers(N))
		  | [[1,0,0,psi(t)] : t in Generators(U)]> subset c} then
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
load "csg6-lev120.dat";
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

function checkShimura(grps)
    shimura_list := [];
    for grp in grps do
	print "checking group ", grp`name;
	try
	    G := createPSL2(grp);
	catch err
	    continue;
	end try;
	if IsGammaShimura(G) then
	    Append(~shimura_list, grp`name);
	end if;
    end for;
    return shimura_list;
end function;

function qExpansionBasis(grp_name, grps)
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
    max_M, loc := Maximum([get_M_K(c) : c in cands]);
    print "Best M found among conjugates is ", max_M;
    G := cands[loc];
    X, fs := ModularCurve(G, grp`genus);
    return X, fs;
end function;

procedure write_qexps(grp_name, fs, X)
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
    K<zeta> := BaseRing(Kq);
    poly<x> := DefiningPolynomial(K);
    // This should always be the rationa field, but just in case
    F := BaseRing(K);
    // This is just for fun, to have an accurate notation
    /*
    cond := Norm(Conductor(AbelianExtension(AbsoluteField(K))));
    Q_cond<zeta_c> := CyclotomicField(cond);
    zeta_c_plus := zeta_c + zeta_c^(-1);
    if MinimalPolynomial(zeta) eq MinimalPolynomial(zeta_c) then
	suf := Sprintf("%o", cond);
    elif MinimalPolynomial(zeta) eq MinimalPolynomial(zeta_c_plus) then
	suf := Sprintf("%o_plus", cond);
    else
	suf := "";
    end if;
   */
    suf := "";
    X_Q := ChangeRing(X, Rationals());
    Proj<[x]> := AmbientSpace(X_Q);
    write_str := Sprintf("
    	      F := %m;	
	      f<x> := Polynomial(F, %m);
	      K<zeta%o> := ext<F|f>;
	      Kq<q> := PowerSeriesRing(K);
	      fs_%o := [Kq | %m", F, Eltseq(poly), suf, grp_name, fs[1]);
    write_str cat:= &cat[Sprintf(", %m", f) : f in fs];
    write_str cat:= "] ;";
    write_str cat:= Sprintf("
    	      P_Q<[x]> := ProjectiveSpace(Rationals(), %o);
    	      X_%o := Curve(P_Q, %m);",
			    Dimension(Proj), grp_name, DefiningPolynomials(X_Q)); 
    Write(fname, preamble cat write_str : Overwrite);
end procedure;
