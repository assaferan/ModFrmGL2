// This treats the database of congruence subgroups

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
