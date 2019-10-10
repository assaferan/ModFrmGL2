freeze;


intrinsic IsCongruence(G::GrpPSL2) -> BoolElt
    {returns true if and only if G is a congruence subgroup}
       return Type(G`BaseRing) eq RngInt and
       (not assigned G`AtkinLehnerInvolutions or
       Dimension(G`AtkinLehnerInvolutions) eq 0);	
end intrinsic;
    
intrinsic IsGamma0(G::GrpPSL2) -> BoolElt
    {returns true if and only if G is equal to Gamma_0(N) for some N}
    return IsCongruence(G) and G`IsOfGammaType
    and #G`gammaType_list eq 1 and
    G`gammaType_list[1][2] eq 1 and
    G`gammaType_list[1][3] eq 1 and
    not assigned G`subgroup_list;
end intrinsic;


intrinsic IsGamma1(G::GrpPSL2) -> BoolElt
    {returns true if and only if G is equal to Gamma_1(N) for some N}
    return IsCongruence(G) and G`IsOfGammaType
    and #G`gammaType_list eq 1
    and  G`gammaType_list[1][2] eq G`gammaType_list[1][1]
    and  G`gammaType_list[1][3] eq 1
    and  not assigned G`subgroup_list;
 end intrinsic;

intrinsic IsGamma(G::GrpPSL2) -> BoolElt
    {returns true if and only if G is equal to Gamma(N) for some N}
    return IsCongruence(G) and G`IsOfGammaType
    and #G`gammaType_list eq 1 and
    G`gammaType_list[1][1] eq  G`gammaType_list[1][2] and
    G`gammaType_list[1][2] eq  G`gammaType_list[1][3];
    not assigned G`subgroup_list;
end intrinsic;
 
intrinsic IsGammaUpper0(G::GrpPSL2) -> BoolElt
    {returns true if and only if G is equal to Gamma^0(N) for some N}
    return IsCongruence(G) and G`IsOfGammaType
    and #G`gammaType_list eq 1 and
    G`gammaType_list[1][2] eq 1 and
    G`gammaType_list[1][1] eq 1 and
    not assigned G`subgroup_list;
end intrinsic;

intrinsic IsGammaUpper1(G::GrpPSL2) -> BoolElt
    {returns true if and only if G is equal to Gamma^1(N) for some N}
    return IsCongruence(G) and G`IsOfGammaType
    and #G`gammaType_list eq 1
    and  G`gammaType_list[1][2] eq G`gammaType_list[1][3]
    and  G`gammaType_list[1][1] eq 1
    and  not assigned G`subgroup_list;
end intrinsic;

intrinsic IsOfRealType(G::GrpPSL2) -> BoolElt
{ returns true if and only if G is of real type (normalized by J) }
  J := GL(2,Integers())![-1,0,0,1];
  gens := Generators(G);
  for g in gens do
    if not PSL2(Integers())!(J * Matrix(g) * J) in G then
       return false;
    end if;
  end for;
  return true;
end intrinsic;

intrinsic IsGammaNS(G::GrpPSL2) -> BoolElt
{returns true if and only if G is Gamma non split Cartan}
   u := NSCartanU(G);
   if u eq 0 then return false; end if;
   return G eq GammaNS(Level(G), u);
end intrinsic;

intrinsic IsGammaNSplus(G::GrpPSL2) -> BoolElt
{returns true if and only if G is the normalizer of Gamma non split Cartan}
   u := NSCartanU(G);
   if u eq 0 then return false; end if;
   return G eq GammaNSplus(Level(G), u);
end intrinsic;




