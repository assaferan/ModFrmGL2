freeze;

AddAttribute(GrpMat,"ApproxOrder");

forward FindBaseSolGp;

intrinsic LMGBase(G :: GrpMat :  SetBase := true, DimLim := 0,
      OrbDimLim := 20, OptBOLen:=100, MinIndex:=2, AllSubmodules := false,
      SRBase:=false, MaxBOLen:=10^6, TryLowIndex:=0, Print:=0) ->
                                                   Tup, SeqEnum, SeqEnum
{Use LMG methods to find a base for matrix group G over a finite field}
/* Use radical quotient structure computed by LMG functions to find a good base
 * for matrix group G over finite field.
 * It returns B (the base), BDim (the dimensions of the subspaces or vectors
 * in  B) and BOL (the lengths of the basic orbits).
 * If SetBase is true then it assigns the new base to G as an attribute.
 */
  local T, Q, phi, K, V, InvIm, StabG, SubOrbs, BestRep, SubV, TrySub, B, BOL,
   BDim, cG, cQ, GM, KM, maxG, nmq, got, R, H, sB, sublist, BH, BOLH, yes, GG;
  if not IsFinite(BaseRing(G)) then
    error "FindBasePoints only works for matrix groups over finite fields";
  end if;
  if DimLim eq 0 then DimLim := Dimension(G) div 2; end if;
  t := Cputime();
  T:=CompositionTree(G);
  u := Cputime();
  if Print ge 2 then "Found composition tree. Time =", u-t; end if;
  Q, phi, K:=LMGRadicalQuotient(G);
  t := Cputime();
  if Print gt 0 then
    "Group has order:",#G,"Radical quotient order:",#Q," Time =", t-u;
  end if;
  if #Q eq 1 then
    if Print gt 0 then
      "Calling FindBaseSolGp to get base points"; 
    end if;
    G`ApproxOrder := G`Order;
    yes, B, BOL :=  FindBaseSolGp(G : Print:=Print);
    if #G ne &*BOL then
       if Print gt 0 then
          "Order mismatch. Will run RandomSchreier";
       end if;
       GG := G;
       GG`Base := B;
       RandomSchreier(GG);
       B:=GG`Base; BOL:=BasicOrbitLengths(GG);
    end if;
    BDim := [ Type(b) eq ModTupFld select Dimension(b) else 1 : b in B];
    if SetBase then G`Base := B; end if;
    return B, BDim, BOL;
  end if;
  V:=VectorSpace(G);

  InvIm := function(R)
    //inverse image in G of subgroup R of Q
    local H;
    H := sub< Generic(G) | K, [R.i @@ phi : i in [1..Ngens(R)]] >;
    H`Order:= #R * K`Order;
    return H;
  end function;

  StabG := function(H,R,W)
    //stabiliser in subgroup H of matrix group G of subspace W of V, where we
    //know that the stabilizer contains K, and H/K is the subgroup R of
    //permutation group Q. Return stabiliser and its image in Q
    local O, d, posW, gens, h, act, HS, RS;
    O := SetToIndexedSet(Orbit(H,W));
    d := #O;
    posW := Position(O,W);
    //set up induced action of R on orbit of W
    gens := [ Sym(d) | ];
    for i in [1..Ngens(R)] do
      h := (R.i) @@ phi;
      Append(~gens,[Position(O,O[i]^h) : i in [1..d]]);
    end for;
    act := hom< R->Sym(d) | gens >;
    RS := Stabiliser(Image(act),posW) @@ act;
    HS := InvIm(RS);
    return O, HS, RS;
  end function;

  SubOrbs := function(H,O)
   //orbits lengths of H on (indexed set) O. return list of lengths
   //and corresponding list of positions in O of an orbit with that length
   local seen, sizes, reps, HO;
   seen := [false : i in [1..#O]];
   sizes := []; reps:=[];
   for i in [1..#O] do if not seen[i] then
     HO := Orbit(H,O[i]);
     for o in HO do seen[Position(O,o)] := true; end for;
     if not #HO in sizes then
       Append(~sizes,#HO); Append(~reps,i);
     end if;
   end if; end for;
   return sizes, reps;
  end function;

  BestRep := function(sizes, reps)
  //choose base point after calling SubOrbs
    local choose, s, sc;
    choose := 0;
    for i in [1..#sizes] do
      s := sizes[i];
      if (choose eq 0 and s gt 1 ) or
       (choose ne 0 and s gt 1 and Abs(s-OptBOLen) lt Abs(sc-OptBOLen)) then
        choose := i; sc := sizes[choose];
      end if;
    end for;
    if choose eq 0 then return false, _; end if;
    return true, reps[choose];
  end function;

  SubV := function(SM,M)
   //the subspace of V defined by submodule SM of M
   return sub < V | [ V!m(SM.i) : i in [1..Dimension(SM)] ] >
          where m := Morphism(SM,M);
  end function;

  B := <>; BOL := [Integers()|];
  cG := G; cQ := Q; //current values of subgroups of G and Q
  
  TrySub := procedure(cG,cQ,~B,~BOL,~H,~R : all:=false)
    //see if subgroup R of cQ gets us some new base points
    local M, MM, CSM, MH, MMH, CSMH, ASM, ASMH, W, O, sizes, reps,
          found, pos, OO;
    M := GModule(cG);
    CSM := CompositionSeries(M);
    MH := GModule(H);
    CSMH := CompositionSeries(MH);
    if Print gt 1 then
      "Lengths of composition series of group and subgroup are", #CSM, #CSMH;
    end if;
    found := false;
    if [Dimension(m) : m in CSM] ne [Dimension(m) : m in CSMH] then
      if Print gt 1 then
        "Possible difference in composition series of group and subgroup";
      end if;
      for SM in CSMH do if Dimension(SM) le DimLim then
        W := SubV(SM,MH);
        if exists{g : g in [cG.i:i in [1..Ngens(cG)]] | W^g ne W} then
           found := true; break;
        end if;
      end if; end for;
    end if;
    if not found then
      //MM := MinimalSubmodules(M);
      MM := IndecomposableSummands(Socle(M));
      MMH := IndecomposableSummands(Socle(MH));
      if Print gt 1 then
       "Numbers of indecomposable summands of socle of group and subgroup are",
           #MM, #MMH;
      end if;
      if #MMH gt #MM then
        for SM in MMH do if Dimension(SM) le DimLim then
          W := SubV(SM,MH);
          if exists{g : g in [cG.i:i in [1..Ngens(cG)]] | W^g ne W} then
            found := true; break;
          end if;
        end if; end for;
      end if;
    end if;
    if not found and all and #CSMH le 8 then
       if Print gt 0 then "Finding all submodules"; end if;
       ASM := Submodules(M); ASMH := Submodules(MH);
       if Print gt 1 then
         "Numbers of submodules of groups and subgroup are", #ASM, #ASMH;
       end if;
       if #ASMH gt #ASM then
         for SM in ASMH do if Dimension(SM) le DimLim then
           W := SubV(SM,MH);
           if exists{g : g in [cG.i:i in [1..Ngens(cG)]] | W^g ne W} then
              found := true; break;
           end if;
         end if; end for;
       end if;
    end if;
    if not found then return; end if;
    O,H,R := StabG(cG,cQ,W);
    if Print gt 0 then 
       "New base point of dimension:",Dimension(W),
       "Basic orbit length:",#O;
    end if;
    Append(~B,W); Append(~BOL,#O); 
    if Dimension(W) le OrbDimLim then //take other base points in this orbit
      if Print gt 0 then
         "Looking for new base points within this basic orbit";
      end if;
      while true do
        if #R eq 1 then return; end if;
        sizes, reps := SubOrbs(H,O);
        found, pos := BestRep(sizes,reps);
        if not found then return; end if;
        W := O[pos];
        OO,H,R := StabG(H,R,W);
        if Print gt 0 then 
         "  New base point of dimension:",Dimension(W),
         "  Basic orbit length:",#OO;
         end if;
        Append(~B,W); Append(~BOL,#OO); 
      end while;
    end if;
  end procedure;

  //Check whether K appears to have any more submodules than G. If not
  //then a different approach is needed.
  GM := GModule(G); KM := GModule(K);
  if #CompositionSeries(GM) eq #CompositionSeries(KM)
    and #IndecomposableSummands(Socle(GM)) eq
        #IndecomposableSummands(Socle(KM)) then
    if Print gt 0 then
     "G and K seem to have the same submodules. Trying maximal subgroups of G.";
    end if;
    maxG := LMGMaximalSubgroups(G);
    //make use of the fact that an initial subsequence consists of maximals
    //containing K. We will ignore those.
    nmq := #MaximalSubgroups(Q);
    for i in [nmq+1..#maxG] do
      if #G div maxG[i]`order gt MaxBOLen then continue; end if;
      if Print gt 0 then "Trying maximal subgroup of G of order",maxG[i]`order;
      end if;
      B, _, BOL:= $$(maxG[i]`subgroup : DimLim:=DimLim, OptBOLen:=OptBOLen,
                 OrbDimLim:=OrbDimLim, MinIndex:=MinIndex, AllSubmodules:=false,
                 Print:=Print);
      if #B ne 0 then
        if BOL[1] * #G div maxG[i]`order gt MaxBOLen then continue; end if;
        if Print gt 0 then
           "Running RandomSchreier to get basic orbit lengths",maxG[i]`order;
        end if;
        GG := G;
        GG`Base := B;
        RandomSchreier(GG);
        B:=GG`Base;
        BDim := [ Type(b) eq ModTupFld select Dimension(b) else 1 : b in B];
        BOL:=BasicOrbitLengths(GG);
        if SetBase then G`Base := B; end if;
        return B, BDim, BOL;
      end if;
    end for;
    if TryLowIndex eq 0 then
      if Print gt 0 then "Unable to find base."; end if;
      return <>,_,_;
    end if;
    if Print gt 0 then
     "No good. Trying low index subgroups of G.";
    end if;
    liG := LMGLowIndexSubgroups(G,TryLowIndex);
    if Print gt 1 then
       "Found", #liG, "subgroups of index at most", TryLowIndex;
    end if;
    //make use of the fact that an initial subsequence consists of maximals
    //containing K. We will ignore those.
    for lis in liG do
      if LMGIsSubgroup(lis,K) then continue; end if;
      if Print gt 0 then
        "Trying low index subgroup of G of order", LMGOrder(lis);
      end if;
      B, _, BOL:= $$(lis : DimLim:=DimLim, OptBOLen:=OptBOLen,
                 OrbDimLim:=OrbDimLim, MinIndex:=MinIndex, AllSubmodules:=false,
                 Print:=Print);
      if #B ne 0 then
        if BOL[1] * #G div LMGOrder(lis) gt MaxBOLen then continue; end if;
        if Print gt 0 then
           "Running RandomSchreier to get basic orbit lengths", LMGOrder(lis);
        end if;
        GG := G;
        GG`Base := B;
        RandomSchreier(GG);
        B:=GG`Base;
        BDim := [ Type(b) eq ModTupFld select Dimension(b) else 1 : b in B];
        BOL:=BasicOrbitLengths(GG);
        if SetBase then G`Base := B; end if;
        return B, BDim, BOL;
      end if;
    end for;
    if Print gt 0 then "Unable to find base."; end if;
    return <>,_,_;
  end if;

  //start by trying stabiliser
  if Print gt 0 then "Trying point stabilizer"; end if;
  R := Stabiliser(Q,1); H := InvIm(R);
  TrySub(cG,cQ,~B,~BOL,~H,~R : all:=true);
  if #B eq 0 then //didn't work
    R := cQ; H := cG;
    if Print gt 0 then "No good"; end if;
  end if;

  while #R gt 1 do
    if Print gt 1 then "Current order of R is", #R; end if;
    if #R * #K le 1000 then break; end if;
    cG := H; cQ := R; //current values of subgroups of G and Q
    sB := #B;
    cs := CompositionSeries(R);
    S := cs[j] where j := Max( [k: k in [1..#cs] | Index(R,cs[k]) le 4096] );
    if #R gt #S then
      if Print gt 0 then
        "Trying term in composition series";
      end if;
      R := S;
      H := InvIm(R);
      if Print gt 0 then
        "Trying subgroup of index:",Index(cQ,R);
      end if;
      TrySub(cG,cQ,~B,~BOL,~H,~R : all := AllSubmodules );
      if #B gt sB then continue; end if;
      R := cQ; H := cG;
      if Print gt 0 then "No good"; end if;
    end if;
    fi := Min(FactoredOrder(R)[1][1], 10);
    for liint in [<MinIndex,fi>,<fi+1,20>,<21,100>,<101,1000>,<1001,10000>,
                                         <10001,50000>,<50001,100000>] do
      if Print gt 0 then
        "Finding subgroups with index from",liint[1],"to",liint[2];
      end if;
      sublist := LowIndexSubgroups(R,liint);
      for S in sublist do
        R := S;
        H := InvIm(R);
        if Print gt 0 then
          "Trying subgroup of index:",Index(cQ,R);
        end if;
        TrySub(cG,cQ,~B,~BOL,~H,~R : all := AllSubmodules );
        if #B gt sB then break liint; end if;
        R := cQ; H := cG;
        if Print gt 0 then "No good"; end if;
      end for;
    end for;
    if #B eq sB then
      if Print gt 0 then "Giving up"; end if;
      break;
    end if;
  end while;
    
//finish by getting BSGS of remaining group
  AssertAttribute(H, "Order", LMGOrder(K) * #R);
  if Ngens(H) eq 0 then
    assert G`Order eq &*BOL;
    BDim := [ Type(b) eq ModTupFld select Dimension(b) else 1 : b in B];
    if SetBase then G`Base := B; end if;
    return B, BDim, BOL;
  end if;
  if IsSoluble(R) and SRBase then
    if Print gt 0 then
      "Calling FindBaseSolGp to get remaining base points"; 
    end if;
    H`ApproxOrder := H`Order;
    yes, BH, BOLH :=  FindBaseSolGp(H : Print:=Print);
    if #H ne &*BOLH then
       if Print gt 0 then
          "Order mismatch. Will run RandomSchreier";
       end if;
       H`Base := BH;
       RandomSchreier(H);
       BH:=H`Base; BOLH:=BasicOrbitLengths(H);
    end if;
  else
    if Print gt 0 then
      "Using RandomSchreier to get remaining base points"; 
    end if;
    if not assigned H`Base then
      LMGInitialise(H:Al:="RS");
    end if;
    RandomSchreier(H);
    BH := Base(H); BOLH := BasicOrbitLengths(H);
  end if;
  for i in [1..#BH] do
    if Print gt 0 then 
      "  New base point, basic orbit length:",BOLH[i];
    end if;
    Append(~B,BH[i]); Append(~BOL,BOLH[i]);
  end for;
  assert G`Order eq &*BOL;
  BDim := [ Type(b) eq ModTupFld select Dimension(b) else 1 : b in B];
  if SetBase then G`Base := B; end if;
  return  B, BDim, BOL;
end intrinsic;

MatGpCB := function(G)
//G matrix group. Find matrix mat such that G^mat displays Aschbacher
//C1- and C2-decompositions. This makes RandomSchreier work better.
  local M, I, cs, cf, cb, cbc, cb2, cb2c, gx;
  if Ngens(G) eq 0 then return Id(G); end if;
  M := GModule(G);
  I := [M];
  cb := Matrix(BaseRing(G),0,0,[]);
  for i in I do
    cs, cf, cbc := CompositionSeries(i);
    cb2 := Matrix(BaseRing(G),0,0,[]);
    for x in cf do
      gx := ActionGroup(x);
      cb2c := IsPrimitive(gx) cmpeq "unknown" or IsPrimitive(gx)
                    select Matrix(Id(gx)) else ImprimitiveBasis(gx);
      cb2 := DiagonalJoin(cb2,cb2c);
    end for;
    cbc := cb2 * cbc;
    cb := DiagonalJoin(cb,cbc);
  end for;
  cb1 := VerticalJoin( < Matrix(Morphism(i,M)) : i in I > );
  cb := Generic(G)!(cb * cb1);
  return cb^-1;
end function;

FindBaseSolGp := function(G : Print:=0)
// same assuming G soluble
local cb, V, i, W, len, Gc, B, BOL, H, BH, BOLH, d;
    if Ngens(G) eq 0 then return true, <>, []; end if;
    if forall{ g : g in Generators(G) | IsScalar(g) } then
      if Print gt 0 then
        "Using RandomSchrier to get remaining base points";
      end if;
      RandomSchreier(G);
      return true, Base(G), BasicOrbitLengths(G);
    end if;
    cb := MatGpCB(G);
    cbi := cb^-1;
    Gc := G^cb;
    if forall{ g : g in Generators(Gc) | IsDiagonal(g) } then
      if Print gt 0 then
        "Using RandomSchrier to get remaining base points";
      end if;
      RandomSchreier(Gc);
      B := (Gc^(cbi))`Base;
      return true, B, BasicOrbitLengths(Gc);
    end if; 
    V := VectorSpace(G);
    d := Dimension(V);
    for n in [1..d] do
      for m in [1..n] do
        W := sub<V | [ V!(cbi[i]) : i in [m..n] ] >;
        len := #Orbit(G,W);
        if len gt 1 then break n; end if;
      end for;
    end for;
    if len eq 1 then
      if Print gt 0 then "Cannot find nontrivial orbit"; end if;
      return false, <>, [Integers()|];
    end if;
    if Print gt 0 then
      "New base point. Basic orbit length:",len;
    end if;
    B := < W >; BOL := [ len ];
    H := ApproximateStabiliser(G,G,W);
    H`ApproxOrder := G`ApproxOrder div len;
    if H`ApproxOrder gt 1 then
      isit, BH, BOLH := FindBaseSolGp(H : Print:=Print);
      if not isit then return false, BH, BOLH; end if;
      for i in [1..#BH] do
        Append(~B,BH[i]); Append(~BOL,BOLH[i]);
      end for;
    end if;
    return true, B, BOL;
end function;
