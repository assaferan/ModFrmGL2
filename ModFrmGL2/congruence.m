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
load "/Users/eranassaf/Documents/Research/Modular\ Symbols/csg24.dat/csg6-lev120.dat";
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
