freeze;

orbitAction := function(G, list, ModScalars)
    n := #list;
    assert n gt 0;
    K := G;
    phis := [PowerStructure(Map)|];
    Ps := [];
    Ks := [];
    i := 0;
    Done := ModScalars select
            func< K | forall{t: t in Generators(K)|IsScalar(t)} >
            else IsTrivial;
    repeat
        i +:= 1;
        phi_i, P_i, K_i := OrbitAction(G, list[i]);
        Append(~phis, phi_i);
        Append(~Ps, P_i);
        Append(~Ks, K_i);
        K := K meet K_i;
    until Done(K) or i eq n;
    DP, inj, proj := DirectProduct(Ps);
    IG := [ &*[ inj[i](phis[i](G.j)): i in [1 .. #Ps] ]: j in [1 .. Ngens(G)]];
    SP := sub<DP | IG >;
    forw := hom < G -> SP | IG >;
 
    return forw, SP, K;
end function;

orbitActionMS := function(G)
    V := RSpace(G);
    list := [ sub<V|V.i> : i in [1..Dimension(V)]];
    n := #list;
    I := [];
    i := 0;
    oldK := G;
    K := G;
    repeat
        i +:= 1;
        phi_i, P_i, K_i := OrbitAction(G, list[i]);
        if not oldK subset K_i then
          Append(~I,i);
          K := K meet K_i;
          oldK := K;
        end if;
    until  forall{t: t in Generators(K)|IsScalar(t)} or i eq n;
    if #I eq 0 then I := [1]; end if;
 
    return OrbitAction(G, {list[i]:i in I});
end function;

FaithfulRepresentation := function (G:ModScalars:=false)
   BSGS (G);
   if ModScalars then return orbitActionMS(G); end if;
   B := BasicOrbitLengths (G);
   L :=[**];
   for i in [1..#B] do
     r := Representative (BasicOrbit (G, i));
     Append(~L,r);
   end for;
   return orbitAction(G,L,ModScalars);
end function;

NormaliserOfMatrixGroup := function(G,H:ModScalars:=true,UseRadQuot:=true)
/* Normaliser of H in matrix group G */

  IsGFq := IsFinite(BaseRing(G)) and (Type(BaseRing(G)) eq FldFin);
  if UseRadQuot then
    if HasAttribute(G,"RadicalQuotient") then
      phi := G`RadicalQuotient;
      Q := Image(phi);
      N := Kernel(phi);
    else 
      if IsGFq then
        Q, phi, N := LMGRadicalQuotient(G);
      else
        Q, phi, N := RadicalQuotient(G);
      end if;
      if IsGFq and HasBSGS(G) then //redefine phi using BSGS
        phi := hom< G->Q | [Q.i : i in [1..Ngens(G)]] >;
      end if;
    end if;
    HQ := sub< Q | [H.i @ phi : i in [1..Ngens(H)]] >;
    NQ := Normaliser(Q,HQ);
    //NQI := sub< Generic(G) | N, [NQ.i @@ phi : i in [1..Ngens(NQ)]] >;
    NQI := sub< G | N, [NQ.i @@ phi : i in [1..Ngens(NQ)]] >;
    NQI`Order := #NQ * #N;
    return Normaliser(NQI,H : UseRadQuot := false);
  end if;
  if ModScalars then
    phi, P := FaithfulRepresentation(G:ModScalars:=true);
    N := Normaliser(P,phi(H)) @@ phi;
  else
    N := G;
  end if;
  if IsNormal(N, H) then
    return N;
  end if;
  phi, P := FaithfulRepresentation(N:ModScalars:=false);
  N := Normaliser(P,phi(H)) @@ phi;
  return N;
end function;

IsConjugateMatrixGroup := function(G,H,K:ModScalars:=true,UseRadQuot:=true)
/* Are subgroups H,K of matrix group conjugate? */

  IsGFq := IsFinite(BaseRing(G)) and (Type(BaseRing(G)) eq FldFin);
  if UseRadQuot then
    if HasAttribute(G,"RadicalQuotient") then
      phi := G`RadicalQuotient;
      Q := Image(phi);
      N := Kernel(phi);
    else
      if IsGFq and GrpMatUseLMG(G) then
        Q, phi, N := LMGRadicalQuotient(G);
      else
        Q, phi, N := RadicalQuotient(G);
      end if;
    end if;
    HQ := sub< Q | [H.i @ phi : i in [1..Ngens(H)]] >;
    KQ := sub< Q | [K.i @ phi : i in [1..Ngens(K)]] >;
    ans, g := IsConjugate(Q, HQ, KQ);
    if not ans then return ans, _; end if;
    g := g@@phi;
    Hg := H^g;
    if Hg eq K then return true,g; end if;
    //print "Must compute normalizer!";
    NKQ := Normaliser(Q, KQ);
    //NKQI := sub< Generic(G) | N, [NKQ.i @@ phi : i in [1..Ngens(NKQ)]] >;
    NKQI := sub< G | N, [NKQ.i @@ phi : i in [1..Ngens(NKQ)]] >;
    NKQI`Order := #N * #NKQ;
    ans, h := IsConjugate(NKQI, Hg, K : UseRadQuot:= false);
    if not ans then return false,_; end if;
    return true, g*h;
  end if;
  if not ModScalars then
     phi, P := FaithfulRepresentation(G);
     ans,g := IsConjugate(P,phi(H),phi(K));
     if ans then return true, g@@phi;
     else return false,_;
     end if;
  end if;
  phi, P := FaithfulRepresentation(G:ModScalars:=true);
  ans,g := IsConjugate(P,phi(H),phi(K));
  if not ans then return false,_; end if;
  g := g@@phi;
  Hg := H^g;
  if Hg eq K then return true,g; end if;
  //print "Must compute normalizer!";
  N := Normaliser(P,phi(K)) @@ phi;
  ans, h := $$(N, Hg, K : ModScalars:=false, UseRadQuot:=false);
  if not ans then return false,_; end if;
  return true, g*h;
end function;

intrinsic PermutationRepresentation(G :: GrpMat: ModScalars := false) ->
          Map, GrpPerm, GrpMat
{A faithful permutation representation of matrix group G; faithful
modulo scalars if ModScalars set to true}
  return FaithfulRepresentation(G:ModScalars:=ModScalars);
end intrinsic;

intrinsic Normaliser(G :: GrpMat, H :: GrpMat :
                              UseRadQuot:=true, Check:=true ) -> GrpMat
{Normaliser of H in matrix group G}

  IsGFq := IsFinite(BaseRing(G)) and (Type(BaseRing(G)) eq FldFin);
  if Check then
    ISgp := IsGFq and GrpMatUseLMG(G) select
		LMGIsSubgroup else func<G,H|H subset G>;
    if not ISgp(G,H) then
      error "Normaliser: Second argument must be a subgroup of first";
    end if;
  end if;
  IsN := IsGFq and GrpMatUseLMG(H) select LMGIsNormal else IsNormal;
  if IsN(G,H) then return G; end if;
  if IsGFq and GrpMatUseLMG(G) then 
      N:= LMGNormaliser(G, H);
      assert HasAttribute(N, "Order");
      return N;
  else
      N:=NormaliserOfMatrixGroup(G,H:ModScalars:=true,UseRadQuot:=UseRadQuot);
      assert HasAttribute(N, "Order");
      return N;
  end if;
end intrinsic;

intrinsic IsConjugate
       (G :: GrpMat, H :: GrpMat, K :: GrpMat :
                                 UseRadQuot:=true, Check:=true) ->
                   BoolElt, GrpMatElt
{Test subgroups of matrix group for conjugacy}

  gen := Generic(G);
  require gen cmpeq Generic(H): "1st and 2nd arguments must have same degree and field";
  require gen cmpeq Generic(K): "1st and 3rd arguments must have same degree and field";

  IsGFq := IsFinite(BaseRing(G)) and (Type(BaseRing(G)) eq FldFin);
  OrdH := IsGFq and GrpMatUseLMG(H) select LMGOrder else Order;
  OrdK := IsGFq and GrpMatUseLMG(K) select LMGOrder else Order;
  if OrdH(H) ne OrdK(K) then return false, _; end if;
  if Check then
    ISgp := IsGFq and GrpMatUseLMG(G) select
		LMGIsSubgroup else func<G,H|H subset G>;
    if not ISgp(G,H) then
      error "IsConjugate: Second argument must be a subgroup of first";
    end if;
    if not ISgp(G,K) then
      error "IsConjugate: Third argument must be a subgroup of first";
    end if;
  end if;
  IsNH := IsGFq and GrpMatUseLMG(H) select LMGIsNormal else IsNormal;
  IsNK := IsGFq and GrpMatUseLMG(K) select LMGIsNormal else IsNormal;
  EqHK := IsGFq and GrpMatUseLMG(H) and GrpMatUseLMG(K) select
	    LMGEqual else func<x,y|x eq y>;
  if EqHK(H, K) then return true, Id(G);
  elif IsNH(G,H) or IsNK(G,K) then
    return false, _;
  end if;
  if IsGFq and GrpMatUseLMG(G) then 
    return LMGIsConjugate(G, H, K);
  else
    return
       IsConjugateMatrixGroup(G,H,K:ModScalars:=true,UseRadQuot:=UseRadQuot);
  end if;
end intrinsic;

intrinsic CompositionSeries(G :: GrpMat) -> SeqEnum
{Composition series of matrix group G}
local phi, P, K, cs1, cs2, KP, rho;

  IsGFq := IsFinite(BaseRing(G)) and (Type(BaseRing(G)) eq FldFin);
  if IsGFq and GrpMatUseLMG(G) then
    return LMGCompositionSeries(G);
  end if;

  if #G eq 1 then return [G]; end if;
  BSGS(G);
  if BasicOrbitLength(G,1) eq 1 then
    b := Base(G);
    b := [* b[i]: i in [2..#b] | BasicOrbitLength(G,i) gt 1 *];
    GG := sub<G|G>;
    GG`Base := b;
    GG`Order := #G;
    RandomSchreier(GG);
  else
      GG := G;
  end if;

  phi, P, K := BaseAction(GG);
  cs1 := CompositionSeries(P);
  if #K eq 1 then
    return [ s @@ phi : s in cs1 ];
  end if;
  cs2 := CompositionSeries(K);
  return [ s @@ phi : s in Prune(cs1) ] cat [ s : s in cs2 ];

end intrinsic;
