freeze;


intrinsic IsHomomorphism ( s :: Map ) -> BoolElt
{ Check if s is a homomorphism. s must be a map from GrpPerm to GrpPerm or
  from GrpPC to GrpPC. }

    G := Domain(s);
    H := Codomain(s);
    require (ISA(Type(G), GrpPerm) and ISA(Type(H), GrpPerm)) or
		(ISA(Type(G), GrpPC) and ISA(Type(H), GrpPC)):
		"Map must be between two groups of type GrpPerm or GrpPC";

    if ISA(Type(G), GrpPC) then
	isHom := IsHomomorphism( G, H, [H | s(G.i) : i in [1 .. NPCgens(G)] ] );
    else
	isHom := IsHomomorphism( G, H, [H |  s(G.i) : i in [1 .. Ngens(G)] ] );
    end if;

    return isHom;

end intrinsic;

intrinsic IsHomomorphism ( G :: GrpPC , H :: GrpPerm , c :: SeqEnum ) -> BoolElt, Map
{Determines if the mapping defined by c contructs a homomorphism G -> H.}
    H_c := sub < H | c >;
    if not IsSoluble ( H_c ) then
        return false, _;
    end if;

    R_H_c, phi_H_c := PCGroup ( H_c );
    b, h := IsHomomorphism ( G, R_H_c, [ h @ phi_H_c : h in c ] );
    if not b then
        return false, _;
    end if;

    return true, hom < G -> H | c >;
end intrinsic;

/* 
//Not necessary -- will be replaced by the definition of IsCentral
//in package/Group/GrpMat/util/order.m. So commented out here.
// DR 2 nov 2010.
intrinsic IsCentral(G :: Grp, x :: GrpElt) -> BoolElt
{Is x a central element of the group G}
    return IsCentral(G, sub<G|x>);
end intrinsic;
*/

intrinsic IsInnerAutomorphism(G :: Grp, N :: Grp, f :: Map) -> BoolElt, GrpElt
{True if the automorphism f : N -> N is induced by an inner automorphism of G.
Requires N to be normal in G. If so, a conjugating element of G is also
returned.}
    C := G;
    ce := G!1;
    // "TRIAL CODE";
    for x in Generators(N) do
	g2 := x@f;
	g1 := x^ce;
	fl, z := IsConjugate(C, g1, g2);
	if not fl then
	    return false, _;
	end if;
	ce := ce*z;
	C := Centralizer(C,g2);
    end for;
    return true, ce;
end intrinsic;

intrinsic IsInnerAutomorphism(G :: Grp, f :: Map) -> BoolElt, GrpElt
{True if the automorphism f : G -> G is induced by an inner automorphism of G.
If so, a conjugating element of G is also returned.}
    return IsInnerAutomorphism(G, G, f);
end intrinsic;

intrinsic NDgens ( G :: Grp ) -> RngIntElt
{Returns the number of 'dot' generators of the given group G, i.e. if G is GrpPC then NPCgens,
if G is GrpPerm or GrpMat then Ngens.}

    if Type(G) eq GrpPC then
        return NPCgens(G);
    else
        return Ngens(G);
    end if;

end intrinsic;

intrinsic AllSubgroups (G :: Grp ) -> SeqEnum
{Return a list of all subgroups of the finite group G - not just
 representatives of the conjugacy classes.}
  S := [s`subgroup: s in Subgroups(G)];
  if IsAbelian(G) then return S; end if;
  return &cat[[s^t : t in Transversal(G,Normaliser(G,s))] : s in S];
end intrinsic;

MinimalOvergps := function(G,H)
//return list of subgroups K of finite group K that are minimal overgroups 
  local subs, ca, ba, P, MP, I, S;
  subs := [PowerStructure(Type(G))|];
  if H eq G then return subs; end if;
  ca, P := CosetAction(G,H);
  if IsPrimitive(P) then
    Append(~subs,G);
    return subs;
  end if;
  MP := MinimalPartitions(P);
  for b in MP do
    ba, I := BlocksAction(P,b);
    S := Stabiliser(I,1) @@ ba @@ ca;
    Append(~subs, S);
  end for;
  return subs;
end function;

IntermediateSubgps := function(G,H: AllSubs:=0, Print:=0)
/* Return list of all subgroups K of finite group G with H < K < G 
 * There are two methods used for this. If AllSubs is true then
 * we compute all subgroups and then calculate which contain H.
 * Otherwise we use a recursive method calculating minimal overgroups
 * of H recursively.
 */
  local subs, MO, MOR, S, AS;
  subs := [PowerStructure(Type(G))|];
  if H eq G then return subs; end if;
  if AllSubs cmpeq 0 then
    //we have to decide which method to use.
    if #H eq 1 or Index(G,H) gt 50 * #H^2 then
       AllSubs := true;
    else AllSubs := false;
    end if;
  end if;
  if AllSubs then
    if Print gt 0 then
       "Computing all subgroups of order divisible by |H|";
    end if;
    if Type(G) eq GrpPC then
      S := [s`subgroup: s in Subgroups(G) | s`order mod #H eq 0];
    else
      S := [s`subgroup: s in Subgroups(G : OrderMultipleOf := #H )];
    end if;
    if Print gt 0 then
      "There are",#S,"conjugacy classes of subgroups of order divisible by |H|";
    end if;
    AS :=  &cat[[s^t : t in Transversal(G,Normaliser(G,s))] : s in S];
    if Print gt 0 then
       "There are",#AS,"subgroups of order divisible by |H|";
    end if;
    if #H gt 1 then
      AS := [ s : s in AS | H subset s ];
    end if;
    Exclude(~AS,H); Exclude(~AS,G);
    return AS;
  end if;
  if Print gt 0 then "Using recursive method"; end if;
  MO := MinimalOvergps(G,H);
  if MO eq [G] then return subs; end if;
  subs := MO;
  for S in subs do
    MOR := $$(G,S : AllSubs:=AllSubs, Print:=0);
    for m in MOR do if not m eq G and not m in subs then
      Append(~subs,m);
    end if; end for;
  end for;
  return subs;
end function;

intrinsic MinimalOvergroups(G :: GrpPerm, H :: GrpPerm) -> SeqEnum
{List of all minimal overgroups of subgroup H of G}
   require H subset G :
       "Second argument of MinimalOvergroups must be a subgroup of the first";
   return MinimalOvergps(G,H);
end intrinsic;

intrinsic MinimalOvergroups(G :: GrpMat, H :: GrpMat) -> SeqEnum
{List of all minimal overgroups of subgroup H of G}
   require H subset G :
       "Second argument of MinimalOvergroups must be a subgroup of the first";
   return MinimalOvergps(G,H);
end intrinsic;

intrinsic MinimalOvergroups(G :: GrpPC, H :: GrpPC) -> SeqEnum
{List of all minimal overgroups of subgroup H of G}
   require H subset G :
       "Second argument of MinimalOvergroups must be a subgroup of the first";
   return MinimalOvergps(G,H);
end intrinsic;

intrinsic IntermediateSubgroups(G :: GrpPerm, H :: GrpPerm :
                          AllSubgroups:=0, Print:=0) -> SeqEnum
{List of all minimal overgroups of subgroup H of G}
   require H subset G :
   "Second argument of IntermediateSubgroups must be a subgroup of the first";
   return IntermediateSubgps(G,H : AllSubs:=AllSubgroups, Print:=Print);
end intrinsic;

intrinsic IntermediateSubgroups(G :: GrpMat, H :: GrpMat :
                          AllSubgroups:=0, Print:=0) -> SeqEnum
{List of all minimal overgroups of subgroup H of G}
   require H subset G :
   "Second argument of IntermediateSubgroups must be a subgroup of the first";
   return IntermediateSubgps(G,H : AllSubs:=AllSubgroups, Print:=Print);
end intrinsic;

intrinsic IntermediateSubgroups(G :: GrpPC, H :: GrpPC :
                          AllSubgroups:=0, Print:=0) -> SeqEnum
{List of all minimal overgroups of subgroup H of G}
   require H subset G :
   "Second argument of IntermediateSubgroups must be a subgroup of the first";
   return IntermediateSubgps(G,H : AllSubs:=AllSubgroups, Print:=Print);
end intrinsic;
