freeze;

IsCyclicallyReduced := function(w) //useful in making examples
  return Subword(w,1,1)^-1 ne Subword(w,#w,1);
end function;


RelF := recformat<    //for green relations and their inverses
     wd:   SeqEnum,   //square of relation as list of positive integers
                      //we use square to simplify tracing in OneStep
    inv:   Tup,       //inv[i] is the number of the inverse relation of
                      //relation number i, and the position in the inverse
                      //relation that it starts
    len:   RngIntElt, //length of relation i.e. #wd[i] div 2
      k:   RngIntElt, //largest k with rel = w^k (len div k would be better)
    loc:   SeqEnum,   //list of locations for the relation
 locinv:   SeqEnum    //locinv[i] is inverse of loc[i] specified by its
                      //position in inv[i] that it starts
>;

VGF := recformat<     //for the vertex graph
       V1:  SetIndx, //pairs of edges in the locations
   V1locs:  SeqEnum, //V1locs[n] is a list of locations corresponding to V1[n],
                      //where Rels[i]`loc[j] is listed as  <i,j>.
        D:  GrphDir, //the digraph with vertices numbered V1
    edges:  SetIndx  //edges of digraph
>;

PlaceF := recformat<  //for places
    relno:   RngIntElt, //relation number of place 
      pos:   RngIntElt, //position of place in loc list for relation
        c:   RngIntElt, //third generator of place
     OSPL:   SetIndx,   //List of OneStep reachable places and distances
   OSCurv:   SeqEnum    //OSCurv[i] is maximal curvature of OSPL[i]
>;

DefineInvs := procedure(F, ~invgen, rels : verbose:=0, involgens:=false )
  local ng, ni;
  ng := Ngens(F);
  ni := ng+1;
  for i in [1..ng] do
    if involgens and (F.i^2 in rels or F.i^-2 in rels) then
      invgen[i] := i; 
    else invgen[i] := ni; invgen[ni] := i; ni+:=1;
    end if;
  end for;
  if verbose gt 1 then
    "Inverses of generators are:",invgen;
  end if;
end procedure;

DefineRels := procedure(~Rels, ~nrels, invgen, rels :
                                 verbose:=false, involgens:=false)
  //set up formatted list of green relators
  local rel, dd, l, k, w, rg, r, ir, rel2;
  nrels := 0;
  for rg in rels do
    l := #rg;
    if l le 2 then
      if involgens and rg eq Subword(rg,1,1)^2 then continue; end if;
    end if;
    rel := rec< RelF | >;
    rel`len := l;
    //is it proper power
    dd := Divisors(l);
    for d in dd do
      if rg eq Subword(rg,1,d)^(l div d) then
         k := l div d;
         rel`k := k;
         break;
      end if;
    end for;
    r := Eltseq(rg);
    if r[1] eq -r[l] then
      error "A green relator is not cyclically reduced";
    end if;
    for i in [1..l] do
      if r[i] lt 0 then r[i] := invgen[-r[i]]; end if;
    end for;
    //It is convenient for checking for cyclic conjugates to store r^2
    rel`wd := r cat r;
    for j in [1..nrels-1] do
      rel2 := Rels[j];
      if rel2`len eq l and rel2`k eq k then
        w := rel2`wd;
        for t in [1..l div k] do
          if w[t..t+l-1] eq r then
             //Rels[i] is a cyclic conjugate of Rels[j]
             error "A relator is a cyclic conjugate of another";
          end if;
        end for;
      end if;
    end for;
    rel`loc := []; rel`locinv := [];
    Append(~Rels, rel);
    nrels +:= 1;
  end for;

  //Now inverses of relators
  for i in [1..nrels] do
    rel := Rels[i];
    l := rel`len; k := rel`k;
    r := rel`wd[1..l];
    ir := Reverse([invgen[i] : i in r]);
    for j in [1..nrels] do
      rel2 := Rels[j];
      if rel2`len eq l and rel`k eq k then
        w := rel2`wd;
        for t in [1..l div k] do
          if w[t..t+l-1] eq ir then
             //inverse of Rels[i] is a cyclic conjugate of Rels[j]
             if i ne j then
               error
                i,j,"A relator is a cyclic conjugate of the inverse of another";
             end if;
             if verbose gt 0 then
             "Note: a relator is a cyclic conjugate of the inverse of itself";
             end if;
             Rels[i]`inv := <j,t>; continue i;
          end if;
        end for;
      end if;
    end for;
    Append(~Rels,
     rec<RelF | len:=l, k:=rel`k, wd := ir cat ir, loc := [], locinv := []> );
    Rels[i]`inv := <#Rels,1>;
    Rels[#Rels]`inv := <i,1>;
  end for;
  if verbose gt 1 then
    "The green relators and their inverses are:";
    for rel in Rels do (rel`wd)[1..rel`len]; end for;
  end if;
end procedure;

SetLocations := procedure(~Rels:verbose:=false)
// fill in the loc and locinv fields of Rels
  local rel, wd, k, ino, ipos, a, b, lw;
  for i in [1..#Rels] do
    rel := Rels[i];
    wd := rel`wd; k := rel`k; ino := rel`inv[1]; ipos := rel`inv[2];
    lw := rel`len div k;
    for j in [1..lw] do
      a := j eq 1 select wd[lw] else wd[j-1];
      b := wd[j];
      Rels[i]`loc[j] := <a,b>;
      Rels[i]`locinv[j] := ipos;
      //consistency check
      if IsDefined(Rels[ino]`locinv,ipos) and Rels[ino]`locinv[ipos] ne j then
         error "Inverse locations not involutory";
      end if;
      ipos := ipos eq 1 select lw else ipos-1;
    end for;
  end for;
end procedure;

DefineVertexGraph := function(Rels,invgen)
  local V1, V1locs, rel, loc, pos, nmg, D, edges, vi, vj;
  /* V1 = list of pairs <a,b> s.t. <a,b> is a location of some relator.
   * V1locs[n] is a list of positions of the locations equal to V1[n],
   * where Rels[i]`loc[j] is listed as  <i,j>.
   */
  V1 := {@ @}; V1locs := [];
  for i in [1..#Rels] do
    rel := Rels[i]; loc := rel`loc;
    for j in [1..#loc] do
      Include(~V1,loc[j]);
      pos := Position(V1,loc[j]);
      if IsDefined(V1locs,pos) then Append(~V1locs[pos],<i,j>);
      else V1locs[pos] := [ <i,j> ];
      end if;
    end for;
  end for;
  edges := {@ @};
  //calculate edges of digraph
  for i in [1..#V1] do for j in [1..#V1] do
    vi := V1[i]; vj := V1[j];
    if invgen[vi[2]] eq vj[1] and
                        (invgen[vi[1]] ne vj[2] or #V1locs[j] gt 1) then
      //invgen[vi[1] = vj[2] and  #V1locs[j] = 1 would mean only location
      //was inverse of vi, in that case we don't want an edge
      Include(~edges,[i,j]);
    end if;
  end for; end for;
    
  D := Digraph< #V1 | edges >;
  E := Edges(D);
  return rec < VGF | V1:=V1, V1locs:=V1locs, edges:=edges, D:=D >; 
end function;

CalculateMinCircuit := function(VG)
  local V1, D, V, E, d, onr, onr2, min;
  V1 := VG`V1; D := VG`D; V := VertexSet(D); E := Edges(D);
  //For vertices v, we need the shortest length of a path of length at least 3
  //from v to v (Reachable doesn't do that). This is recorded as dvv[i]
  min := -1;
  for v in V do
    onr := [ z : z in OutNeighbours(v) | Reachable(z,v) ];
    for w in onr do
      onr2 := [ z : z in OutNeighbours(w) | Reachable(z,v) ];
      if v in onr2 and (min eq -1 or 4 lt min) then min := 4; end if;
      for x in onr2 do if x ne v then
        d := Distance(x,v);
        if min eq -1 or 2+d lt min then min := 2+d; end if;
      end if; end for;
    end for;
  end for;
  return min;
end function;

DefinePlaces := function(Rels,nrels,invgen,VG)
  local nmg, V1, edges, PL, rel, loc, a, b, c, ib, p1, p2;
  nmg := #invgen;
  PL := [];
  //also keep a list PLnos[i][j] of numbers of places with relno=i, pos=j
  PLnos := [];
  V1 := VG`V1; edges := VG`edges;
  for i in [1..nrels] do
    PLnos[i] := [];
    rel := Rels[i]; loc := rel`loc;
    for j in [1..#loc] do
      PLnos[i][j] := [];
      a := rel`loc[j][1]; b := rel`loc[j][2]; ib := invgen[b];
      p1 := Position(V1, <a,b>);
      for c in [1..nmg] do
        //Is there a green place?
        p2 := Position(V1,<ib,c>);
        if p2 ne 0 and [p1,p2] in edges then
          Append(~PL, rec< PlaceF | relno:=i, pos:=j, c:=c >);
          Append(~PLnos[i][j],#PL);
        end if; 
      end for;
    end for;
  end for;
  return PL, PLnos;
end function;

CalculateOneStep := procedure(~PL,PLnos,invgen,VG,Rels,~Cp: verbose:=0)
  local IncludeEntry, nmg, pl, OSPL, relno, rel, pos, k, wd, lw, pos1,
        a, b, c, d, ib, id, loc, locinv, pv, tl, V, V1,  postl, v, v1, v2,
       VertexCurvature,  vl, arel, arelino, arelipos, areliwd,
        arelilw, qpl, qc, l, posr, dr, vr, tlr, qplr, cr, v1r, v2r, pos0,
        rlen, piecelen;
  IncludeEntry := procedure(~OSPL,plno,l)
    Include(~OSPL,[plno,l]);
  end procedure;
  V := VertexSet(VG`D); V1 := VG`V1;
  nmg := #invgen;
  Cp :=  -1/1;
  if verbose gt 0 then #PL,"places"; end if;
  for pct in [1..#PL] do
    pl := PL[pct];
    relno := pl`relno;
    rel := Rels[relno];
    pos := pl`pos;
    wd := rel`wd; rlen := rel`len; lw := rel`len div rel`k;
    loc := rel`loc; locinv := rel`locinv;
    a := loc[pos][1]; b := loc[pos][2]; c := pl`c; ib := invgen[b];
    assert wd[pos] eq b;
    if verbose gt 1 then
       "pct =",pct, "place",pl`relno, pl`pos, pl`C, "a,b,c,ib",a,b,c,ib;
    end if;
    OSPL := {@ @};
    vl := VG`V1locs[Position(V1,<ib,c>)];
    for lct in vl do
      //the inverse location is more helpful for tracing the consolidated edge.
      arelino := Rels[lct[1]]`inv[1];
      arelipos := Rels[lct[1]]`locinv[lct[2]];
      if arelino eq relno and arelipos eq pos then
        //inverse relation
        continue;
      end if;
      areliwd := Rels[arelino]`wd;
      arelilw := Rels[arelino]`len div Rels[arelino]`k;
      assert areliwd[arelipos] eq b;
      l := 1;
      bb := b; ibb := ib; pos0 := pos; //this changes
      piecelen := 0;
      while areliwd[arelipos] eq bb and piecelen le rlen do
        piecelen +:= 1;
        pos1 := pos0 eq lw select 1 else pos0+1;
        assert loc[pos1][1] eq bb;
        arelipos1 := arelipos eq arelilw select 1 else arelipos+1;
        v1 := Position(V1,<invgen[areliwd[arelipos1]], ibb>);
        d := loc[pos1][2];
        v := Position(V1,<bb,d>);
        for qc in PLnos[relno][pos1] do
          qpl := PL[qc];
          cr := qpl`c;
          v2 := Position(V1,<invgen[d],cr>);
          IncludeEntry(~OSPL,qc,l);
        end for; //for qc in PLnos[relno][pos1] do

        arelipos := arelipos1; pos0 := pos1; bb := d; ibb := invgen[bb];
        assert wd[pos1] eq d;
        l +:= 1;
      end while; //while areliwd[arelipos] eq bb do
      if piecelen/rlen gt Cp then Cp := piecelen/rlen; end if;
    end for; //for lct in vl do

    PL[pct]`OSPL := OSPL;
  end for;
end procedure;

CalculateC := function(Rels, nrels, PL, PLnos : verbose:=0)
  local rel, len, inc, pls, pd, pl, plno, ql, qlno, l, lp, mp, L1, p, C, seen;
  
  C := -1;
  seen := [ false : i in [1..#PL] ];
  for rct in [1..nrels] do
    if verbose gt 0 then "Decomposing relation",rct; end if;
    rel := Rels[rct];
    len := rel`len; inc := len div rel`k;
    for pos in [1..inc] do
      for pno in PLnos[rct][pos] do
        seen[pno] := true;
        pls := PL[pno];
        L1 := {@ [pno, 0, 0] @};
        i := 0;
        for i in [1..len] do
          if C ne -1 and i ge C then break; end if;
          for j in [1..#L1] do if L1[j][3] eq i-1 then
            plno := L1[j][1]; pl := PL[plno]; l := L1[j][2];
            for k in [1..#pl`OSPL] do
              pd := pl`OSPL[k];
              qlno := pd[1]; ql := PL[qlno]; lp := pd[2];
              if qlno ne pno and seen[qlno] then
                                 //already done circuits through here!
                continue;
              end if;
              if l + lp eq len and (C eq -1 or i lt C) then
                C := i;
              elif l + lp lt len then
                Include(~L1,[qlno,l+lp,i]);
              end if;
            end for;
          end if; end for;
        end for;
      end for;
    end for;
  end for;
  return C;
end function;

intrinsic SmallCancellationConditions(G :: GrpFP : Print:=0, involgens:=false)
          -> RngIntElt, RngIntElt, FldRatElt
{Compute optimal values i, j, k' such that G satisfies the small cancellation
conditions T(i), C(j), and C'(k) for k > k'.}
  /* If there are no internal vertices then i = -1 is returned.
   * If no pieces, then k=-1 returned, if no relator is a product of
   * pieces, then j = -1 returned.
   * If involgens is true then edges labelled by involutory generators x
   * are regarded as undirected, and are not regarded as
   * pieces of the relator x^2.
   */
  local rels, invgen, Rels, nrels, isred, pgp, VG, PL, rt, rtn, result,
        T, Cp, C;
  rels := [ LHS(r)*RHS(r)^-1 : r in Relations(G) ];
  //set of list invgen of inverses of generators (all +ve ints)
  invgen := [];
  DefineInvs(G, ~invgen, rels : verbose:=Print, involgens:=involgens );
  rt := Cputime();
  Rels := [];
  DefineRels(~Rels,~nrels, invgen, rels :
                                  verbose:=Print, involgens:=involgens );
  if Print gt 0 then
    rtn := Cputime();
    "Defined relations. Time =",rtn-rt;
    rt := rtn;
  end if;
  SetLocations(~Rels : verbose:=Print);
  if Print gt 0 then
    rtn := Cputime();
    "Set locations. Time =",rtn-rt;
    rt := rtn;
  end if;
  VG := DefineVertexGraph(Rels,invgen);
  if Print gt 0 then
    rtn := Cputime();
    "Defined vertex graph.",#VG`V1,"vertices.",#VG`edges,
    "edges.  Time =",rtn-rt;
    rt := rtn;
  end if;
  T := CalculateMinCircuit(VG);
  if Print gt 0 then
    rtn := Cputime();
    "Calculated minimal circuit. Time =",rtn-rt;
    rt := rtn;
  end if;
  PL, PLnos := DefinePlaces(Rels,nrels,invgen,VG);
  if Print gt 0 then
    rtn := Cputime();
    "Defined places. Time =",rtn-rt;
    rt := rtn;
  end if;
  CalculateOneStep(~PL,PLnos,invgen,VG,Rels,~Cp : verbose:=Print);
  if Print gt 0 then
    rtn := Cputime();
    "Calculated single steps. Time =",rtn-rt;
    rt := rtn;
  end if;
  C:= CalculateC(Rels, nrels, PL, PLnos :verbose:=Print ); 
  if Print gt 0 then
    rtn := Cputime();
    "Calculated C. Time =",rtn-rt;
  end if;
  if T eq -1 then
   "There are no internal vertices in any van Kampen diagram for this presentation.";
  else
   "This presentation satisfies T(",T,").";
  end if;
  if C eq -1 then
   "No symmetrized relator in this presentation is a product of pieces.";
  else
   "This presentation satisfies C(",C,").";
  end if;
  if Cp eq -1 then
   "There are no pieces in this presentation.";
  else
   "This presentation satisfies C'(k) for all k >",Cp,".";
  end if;
  return T, C, Cp;
end intrinsic;
