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
{ returns true if and only if G is of real type (normalized by J).
  In fact we check more - we check that its image in GL(Z/NZ) is of real type}
   if not assigned G`IsReal then
       if Level(G) eq 1 then
	   G`IsReal := true;
       else
	   G_N := ImageInLevelGL(G);
	   J := ModLevelGL(G)![-1,0,0,1];
	   G`IsReal := G_N^J eq G_N;
       end if;
/*
  J := GL(2,Integers())![-1,0,0,1];	
      gens := Generators(G);  
    G`IsReal := true;
    for g in gens do
      if not PSL2(Integers())!(J * Matrix(g) * J) in G then
         G`IsReal := false;
         break;
      end if;
    end for;
*/
  end if;
  return G`IsReal;
end intrinsic;

intrinsic IsGammaNS(G::GrpPSL2) -> BoolElt
{returns true if and only if G is Gamma non split Cartan}
// Since there are different orders whose units are GammaNS
   // at the moment we only return true if the group was explicitly built
   // using GammaNS
   if not assigned G`IsNSCartan then G`IsNSCartan := false; end if;
/*
   if assigned G`IsNSCartan then return G`IsNSCartan; end if;
   // at the moment we ony support prime non-split Cartan
   if IsPrime(Level(G)) then     
     u := NSCartanU(G);
     if IsSquare(u) then
       G`IsNSCartan := false;
       G`IsNSCartanPlus := false;
     else
       H := GammaNS(Level(G), u);
       G`IsNSCartan :=  (G eq H);
     end if;
   else
     G`IsNSCartan := false;
     G`IsNSCartanPlus := false;
   end if;
*/
   return G`IsNSCartan;
end intrinsic;

intrinsic IsGammaNSplus(G::GrpPSL2) -> BoolElt
{returns true if and only if G is the normalizer of Gamma non split Cartan}
// Since there are different orders whose units are GammaNS
   // at the moment we only return true if the group was explicitly built
   // using GammaNS
   if not assigned G`IsNSCartanPlus then G`IsNSCartanPlus := false; end if;
/*
   if assigned G`IsNSCartanPlus then return G`IsNSCartanPlus; end if;
   // at the moment we ony support prime non-split Cartan
   if IsPrime(Level(G)) then     
     u := NSCartanU(G);
     if IsSquare(u) then
       G`IsNSCartan := false;
       G`IsNSCartanPlus := false;
     else
       H := GammaNSplus(Level(G), u);
       G`IsNSCartanPlus := (G eq H);
     end if;
   else
     G`IsNSCartan := false;
     G`IsNSCartanPlus := false;
   end if;
*/
   return G`IsNSCartanPlus;
end intrinsic;




