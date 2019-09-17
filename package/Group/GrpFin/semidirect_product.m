freeze;

/*
>From D.F.Holt@warwick.ac.uk Thu Mar  4 03:18:11 2010

This is a slightly improved version of a SemidirectProduct function.

SemidirectProduct := function(K,H,phi)
 semidirect product of K by H using homomorphism phi:H->Aut(K)

It works in theory for all types of finite groups, but if H and K are
not both permutation groups then it will just return something of large
degree using regular representations.

There should be a different version for the case when they are both GrpPC
that returns GrpPC, but I will leave that for someone else unless there is
an urgent demand! That should be routine to write.

When H and K are both permutation groups, it now tries a bit harder to find
a perm rep of the semidirect product G of reasonably low degree. It also
returns the injection maps K->G and H->G.

I have not tested it very thoroughly! I would of course be interested in
any feedback if anyone should use it.
*/

RegularSemidirectProduct := function(K,H,phi : MaxDeg:=10^6, Print:=0 )
 /* semidirect product of K by H using homomorphism phi:H->Aut(K)
  * H needs to be a permutation group.
  */
  local psi, HH, hnp, rho, pr, P, faithful, Kelts, deg, gens, gen,
        pg, G, m1, m2;
  if Print gt 0 then 
        "Using regular action of normal subgroup of order", #K;
  end if;
  deg := #K;
  if deg gt MaxDeg then
    error "Degree is too large. Increase MaxDeg";
  end if;
  Kelts := {@ k : k in K @};
  gens := [];
  // Generators of K first - given by right action
  for g in [K.i : i in [1..Ngens(K)]] do
    gen := [ Position(Kelts, Kelts[i]*g) : i in [1..#K] ];
    Append(~gens,gen);
  end for; 
  // Now generators of H
  for g in [H.i : i in [1..Ngens(H)]] do
    pg := phi(g);
    gen := [ Position(Kelts, Kelts[i] @ pg) : i in [1..#K] ];
    Append(~gens,gen);
  end for; 
  G := sub< Sym(deg) | gens >;
  m1 := hom< K->G | [G.i : i in [1..Ngens(K)]] >;
  m2 := hom< H->G | [G.(i+Ngens(K)) : i in [1..Ngens(H)]] >;
  m3 := hom< G->H | [Id(H):i in [1..Ngens(K)]] cat [H.i : i in [1..Ngens(H)]] >;
  if #G eq #H * #K then
    return G, m1, m2, m3;
  end if;
  if Type(H) ne GrpPerm then
    //must form regular perm rep of H
    if #H gt MaxDeg then
      error "H too large large for regular action.";
    end if;
    HH := CosetImage(H,sub<H|>);
  else
    HH := H;
  end if;
  deg := Degree(HH) + #K;
  if deg gt MaxDeg then
    error "Degree is too large. Increase MaxDeg";
  end if;
  if Print gt 0 then  "Degree of semidirect product will be", deg; end if;
  for i in [1..Ngens(K)] do
    gens[i] cat:= [#K+j : j in [1..Degree(HH)] ];
  end for;
  for i in [1..Ngens(H)] do
    gens[Ngens(K) + i] cat:= [#K + j^HH.i : j in [1..Degree(HH)] ];
  end for;
  G := sub< Sym(deg) | gens >;
  m1 := hom< K->G | [G.i : i in [1..Ngens(K)]] >;
  m2 := hom< H->G | [G.(i+Ngens(K)) : i in [1..Ngens(H)]] >;
  m3 := hom< G->H | [Id(H):i in [1..Ngens(K)]] cat [H.i : i in [1..Ngens(H)]] >;
  return G, m1, m2, m3;
end function;
  
intrinsic SemidirectProduct(K::Grp, H::Grp, phi::Map : MaxDeg:=10^6,Print:=0,
                                    UseRegular := false ) -> Grp, Map, Map, Map
{The semidirect product P of K by H using homomorphism phi:H->Aut(K). Also
  returns maps embeddings K and H into P and projection P->H }

  local faithful, OK, stabs, repslist, dK, dS, dH, dom, ct,
        deg, gens, gen, pg, A, rho, P, pr, Ielts, gg, G, m1, m2;

  if UseRegular then
    return RegularSemidirectProduct(K,H,phi:MaxDeg:=MaxDeg, Print:=Print);
  end if;

  if ISA(Type(K), GrpPC) and ISA(Type(H), GrpPC) then
    G := Extension(K, H, [H.i @ phi: i in [1..NPCgens(H)]]);
    m1 := hom< K->G | [G.(i+NPCgens(H)) : i in [1..NPCgens(K)]] >;
    m2 := hom< H->G | [G.i : i in [1..NPCgens(H)]] >;
    m3 := hom< G->H |
             [H.i : i in [1..NPCgens(H)]] cat [Id(H) : i in [1..NPCgens(K)]] >;
    return G, m1, m2, m3;
  end if;

  if not ISA(Type(K), GrpPerm) or not ISA(Type(H), GrpPerm) then
    // "Using regular representation of normal subgroup";
    return RegularSemidirectProduct(K,H,phi:MaxDeg:=MaxDeg,Print:=Print);
  end if;

  OK := Orbits(K);
  stabs := [ Stabiliser(K,o[1]) : o in OK ];
  deg := &+[ Index(K,Normaliser(K,S)) : S in stabs ];
  if deg ge #K then
    return RegularSemidirectProduct(K,H,phi:MaxDeg:=MaxDeg,Print:=Print);
  end if;

  repslist := stabs;
  ct := 0;
  while ct lt #repslist do
    ct+:=1;
    S := repslist[ct];
    for T in [ S @ phi(H.i) : i in [1..Ngens(H)] ] do
      if forall{ R : R in repslist | not IsConjugate(K,R,T) } then
        Append(~repslist, T);
        deg +:= Index(K,Normaliser(K,S));
        if deg ge #K then
          return RegularSemidirectProduct(K,H,phi:MaxDeg:=MaxDeg,Print:=Print);
        end if;
      end if;
    end for;
  end while;

  A := Codomain(phi);
  rho, P := PermutationRepresentation(A);
  pr := hom< H->P | [ H.i @ phi @ rho : i in [1..Ngens(H)]] >;
  dH := Degree(H);
  if #&meet{ Core(K,Normaliser(K,T)) : T in repslist } eq 1 then
    //we can define the representation on the conjugates of repslist
    I := sub< P | [ A.i @ rho : i in [1..Ngens(A)] | IsInner(A.i) ] >;
    faithful := #sub< P | I, Image(pr) > eq #I * #H;
    dom := &join{@ {@ T^r : r in Transversal(K,T) @} :  T in repslist @};
    dS := #dom;
    deg := faithful select dS else dS + dH; 
    if Print gt 0 then
       "Using conjugation action on stabilisers, degree is",deg;
    end if;
    gens := [Sym(deg) |];
    //Generators of K first
    for g in [K.i : i in [1..Ngens(K)]] do
      gen := [ Position(dom, dom[i]^g) : i in [1..dS] ];
      if not faithful then gen cat:= [dS+i: i in [1..dH]]; end if;
      Append(~gens,gen);
    end for; 
    // Now generators of H
    for g in [H.i : i in [1..Ngens(H)]] do
      pg := phi(g);
      gen := [ Position(dom, dom[i] @ pg) : i in [1..dS] ];
      if not faithful then gen cat:= [dS+i^g: i in [1..dH] ]; end if;
      Append(~gens,gen);
    end for; 
    G := sub< Sym(deg) | gens >;
    m1 := hom< K->G | [G.i : i in [1..Ngens(K)]] >;
    m2 := hom< H->G | [G.(i+Ngens(K)) : i in [1..Ngens(H)]] >;
    m3 := hom< G->H |
       [Id(H) : i in [1..Ngens(K)]] cat [H.i : i in [1..Ngens(H)]] >;
    return G, m1, m2, m3;
  end if;

  //Next try embedding into wreath product of K and H
  faithful := #Kernel(pr) eq 1;
  I := Image(pr);
  dK := Degree(K);
  dS := #I * dK;
  if dS ge #K then
    //degree too large
    return RegularSemidirectProduct(K,H,phi:MaxDeg:=MaxDeg,Print:=Print);
  end if;

  Ielts := {@ i : i in I @};
  deg := faithful select dS else dS + dH; 
  if Print gt 0 then
     "Using wreath product type representation. Degree is", deg;
  end if;
  if deg gt MaxDeg then
    error "Degree is too large. Increase MaxDeg";
  end if;
  //points in range [(i-1)*dS+1 .. i*dS] are images of points [1..dS] under
  //Ielts[i]^-1. 
  gens := [Sym(deg) |];
  // Generators of K first
  for g in [K.i : i in [1..Ngens(K)]] do
    gen := &cat[ [ p^(g @ (Ielts[i] @@ rho)) + (i-1)*dK : p in [1..dK] ] :
                                                            i in [1..#I] ];
    if not faithful then gen cat:= [dS+i: i in [1..dH]]; end if;
    Append(~gens,gen);
  end for; 
  // Now generators of H
  for g in [H.i : i in [1..Ngens(H)]] do
    gg := pr(g^-1);
    gen := &cat[ [p + (Position(Ielts,gg*Ielts[i]) - 1)*dK : p in [1..dK] ] :
                                                            i in [1..#I] ];
    if not faithful then gen cat:= [dS+i^g: i in [1..dH] ]; end if;
    Append(~gens,gen);
  end for; 
  G := sub< Sym(deg) | gens >;
  m1 := hom< K->G | [G.i : i in [1..Ngens(K)]] >;
  m2 := hom< H->G | [G.(i+Ngens(K)) : i in [1..Ngens(H)]] >;
  m3 := hom< G->H |
      [Id(H) : i in [1..Ngens(K)]] cat [H.i : i in [1..Ngens(H)]] >;
  return G, m1, m2, m3;

end intrinsic;

intrinsic AffineSplitExtension(M :: ModGrp : MaxDeg:=10^6, Print:=0 ) ->
      GrpPerm, Map, Map, Map
{The split extension of RG-module M by G having M as regular normal subgroup}
  local K, F, sf, psi, H, HH, hnp, rho, pr, P, faithful, Kelts, deg, gens, gen,
        pg, G, m1, m2;
  K := BaseRing(M);
  if not IsFinite(K) then
    error "Base ring of module is infinite";
  end if;
  H := Group(M);
  if Type(K) eq FldFin and not IsPrime(#K) then
    F := PrimeField(K);
    MM, MtoMM := WriteOverSmallerField(M,F);
    sf := true;
  else
    sf := false; MM:=M;
  end if;
  deg := #M;
  if deg gt MaxDeg then
    error "Order of M is too large. Increase MaxDeg";
  end if;
  Melts := {@ k : k in MM @};
  gens := [];
  // Generators of MM first - given by right action
  for g in [MM.i : i in [1..Ngens(MM)]] do
    gen := [ Position(Melts, Melts[i] + g) : i in [1..#MM] ];
    Append(~gens,gen);
  end for; 
  // Now generators of H
  for g in [H.i : i in [1..Ngens(H)]] do
    gen := [ Position(Melts, Melts[i] * g) : i in [1..#M] ];
    Append(~gens,gen);
  end for;
  G := sub< Sym(deg) | gens >;
  
  m1 := sf select map< M->G | m :-> &*[G.i^e[i] : i in [1..Ngens(MM)]] where
                                e:= [Integers()| e: e in Eltseq(MtoMM(m))] >
         else map< M->G | m :-> &*[G.i^e[i] : i in [1..Ngens(M)]] where
                                e:= [Integers()| e: e in Eltseq(m)] >;
  m2 := hom< H->G | [G.(i+Ngens(MM)) : i in [1..Ngens(H)]] >;
  m3 := hom< G->H | [Id(H):i in [1..Ngens(MM)]] cat [H.i : i in [1..Ngens(H)]]>;
  if #G eq #H * #M then
    return G, m1, m2, m3;
  end if;
  if Type(H) eq GrpPerm then
     HH:=H;
  elif Type(H) eq GrpMat then
    HH := Image(PermutationRepresentation(H));
  else
    if #H gt MaxDeg then
      error "H too large large for regular action.";
    end if;
    HH := CosetImage(H,sub<H|>);
  end if;
  deg := Degree(HH) + #M;
  if deg gt MaxDeg then
    error "Degree is too large. Increase MaxDeg";
  end if;
  if Print gt 0 then  "Degree of semidirect product will be", deg; end if;
  for i in [1..Ngens(MM)] do
    gens[i] cat:= [#M+j : j in [1..Degree(HH)] ];
  end for;
  for i in [1..Ngens(H)] do
    gens[Ngens(MM) + i] cat:= [#M + j^HH.i : j in [1..Degree(HH)] ];
  end for;
  G := sub< Sym(deg) | gens >;
  m1 := sf select map< M->G | m :-> &*[G.i^e[i] : i in [1..Ngens(MM)]] where
                                e:= [Integers()| e: e in Eltseq(MtoMM(m))] >
         else map< M->G | m :-> &*[G.i^e[i] : i in [1..Ngens(M)]] where
                                e:= [Integers()| e: e in Eltseq(m)] >;
  m2 := hom< H->G | [G.(i+Ngens(MM)) : i in [1..Ngens(H)]] >;
  m3 := hom< G->H | [Id(H):i in [1..Ngens(MM)]] cat [H.i : i in [1..Ngens(H)]]>;
  return G, m1, m2, m3;
end intrinsic;
