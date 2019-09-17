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
   V1v1v2:  SeqEnum, //i-th entry is indexed list of pairs v1,v2 of vertices
                      //of D with edges v1->V1[i], V1[i]->v2
    V1chi:  SeqEnum, //i-th entry is maximal curvature chi from V1v1v2[i]
       V2:  SetIndx, //list of intermult pairs
        D:  GrphDir, //the digraph with vertices numbered V1 followed by V2
    edges:  SetIndx  //edges of digraph
>;

PlaceF := recformat<  //for places
    relno:   RngIntElt, //relation number of place 
      pos:   RngIntElt, //position of place in loc list for relation
        c:   RngIntElt, //third generator of place
        C:   MonStgElt, //colour of place, = "R" or "G"
     OSPL:   SetIndx,   //List of OneStep reachable places and distances
   OSCurv:   SeqEnum,   //OSCurv[i] is maximal curvature of OSPL[i]
    OSnce:   SeqEnum    //OSnce[i] is number of consolidated edges in step
>;

DefineInvs := procedure(F, ~invgen, rgreen : verbose:=0 )
  local ng, ni;
  ng := Ngens(F);
  ni := ng+1;
  for i in [1..ng] do
    if F.i^2 in rgreen or F.i^-2 in rgreen then
      invgen[i] := i; 
    else invgen[i] := ni; invgen[ni] := i; ni+:=1;
    end if;
  end for;
  if verbose gt 1 then
    "Inverses of generators are:",invgen;
  end if;
end procedure;

VerifyPregroup := function(pgp, invgen, isred)
  //check pegroups acioms P4 and P5 (P1-P3 don't need checking)
  local nmg, rg, ix, iy, t, u, v;
  //Check P4 - first do cases (x,x^-1y) = y, (xy^-1,y) = x
  nmg := #invgen;
  rg := [ i : i in [1..nmg] | isred[i] ];
  for x in rg do for y in rg do
    ix := invgen[x]; iy := invgen[y];
    t := pgp[ix][y];
    if t ne 0 and pgp[x][t] ne y then return false, <x,ix,y>; end if;
    t := pgp[x][iy];
    if t ne 0 and pgp[t][y] ne x then return false, <x,iy,y>; end if;
  end for; end for;
  //now rest of P4 and P5
  for x in rg do for y in rg do
    if y eq invgen[x] then continue; end if;
    t := pgp[x][y];
    if t ne 0 then
      for z in rg do
        if z eq invgen[y] or z eq invgen[t] then continue; end if;
        u := pgp[y][z];
        if u ne 0 then
          if (pgp[t][z] ne pgp[x][u]) then return false, <x,y,z>; end if; //P4
          for w in rg do
            if w eq invgen[z] or w eq invgen[u] then continue; end if;
            if pgp[z][w] ne 0 and pgp[t][z] eq 0 and pgp[u][w] eq 0 then
              return false, <x,y,z,w>; //P5
            end if;
          end for;
        end if;
      end for;
    end if;
  end for; end for;
  return true, _;
end function;


DefinePregroup := procedure(~pgp, ~imult, ~isred, invgen, rred :
                                         verify:=true, verbose:=0)
  //define pregroup multiplication table and intermult pairs as boolean array
  //note we leave a a^-1 undefined
  local nmg, w, a, b, c, ia, ib, ic, flag, gens;
  nmg := #invgen;
  pgp := [[0 : i in [1..nmg]] : j in [1..nmg]];
  isred := [ false : i in [1..nmg] ];
           //isred means generator occurs in a red relator	
  for r in rred do
    if #r ne 3 then
      error "Red relators must have length 3";
    end if;
    w := Eltseq(r);
    for i in [1..#r] do
      if w[i] lt 0 then w[i] := invgen[-w[i]]; end if;
    end for;
    a:=w[1]; b:=w[2]; c:=w[3]; ia:=invgen[a]; ib:=invgen[b]; ic:=invgen[c];
    if a eq ic then
      error "A red relator is not cyclically reduced";
    end if;
    pgp[a][b]:=ic; pgp[b][c]:=ia; pgp[c][a]:=ib;
    pgp[ic][ib]:=a; pgp[ib][ia]:=c; pgp[ia][ic]:=b;
    isred[a]:=true; isred[b]:=true; isred[c]:=true;
    isred[ia]:=true; isred[ib]:=true; isred[ic]:=true;
  end for;
  if verbose gt 1 then
    "Pregroup multiplication table:";
     for i in [1..nmg] do
       [ pgp[i][j] : j in [1..nmg]];
     end for; 
  end if;
  if verify then
    flag, gens := VerifyPregroup(pgp,invgen,isred);
    if flag and verbose gt 0 then
      "Pregroup axioms successfully verified.";
    elif not flag then
      if #gens eq 3 then
        error "Pregroup axiom (P4) fails on generators",gens;
      else
        error "Pregroup axiom (P5) fails on generators",gens;
      end if;
    end if;
  end if;
  imult := [[false : i in [1..nmg]] : j in [1..nmg]];
  if rred eq [] then return; end if;
  for i in [1..nmg] do for j in [1..nmg] do if invgen[j] ne i then
    if pgp[i][j] ne 0 then imult[i][j]:=true;
    else
      for k in [1..nmg] do
        if pgp[i][k] ne 0 and pgp[invgen[k]][j] ne 0 then
          imult[i][j]:=true;
        end if;
      end for;
    end if;
  end if; end for; end for; 
end procedure;

DefineRels := procedure(~Rels, ~nrels, ~isgreen, invgen, rgreen :
                                                      verbose:=false)
  //set up formatted list of green relators
  local rel, dd, l, k, w, rg, r, ir, rel2;
  isgreen := [ false : i in [1..#invgen] ];
          //isgreen specifies whether the genertor occurs in a green relator
  nrels := 0;
  for rg in rgreen do
    l := #rg;
    if l le 2 then
      if rg eq Subword(rg,1,1)^2 then continue; end if;
      error "Non-square relators must have length at least 3";
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
      isgreen[r[i]] := true; isgreen[invgen[r[i]]] := true;
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
                "A relator is a cyclic conjugate of the inverse of another";
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

DefineVertexGraph := function(Rels,imult,invgen)
  local V1, V1locs, rel, loc, pos, nmg, V2, D, edges, vi, vj;
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
  // V2 is a list of intermult pairs <i,j>
  nmg := #invgen;
  V2 := {@ <i,j> : i in [1..nmg], j in [1..nmg] | imult[i][j] @};
  edges := {@ @};
  //calculate edges of digraph
  //V1 -> V1
  for i in [1..#V1] do for j in [1..#V1] do
    vi := V1[i]; vj := V1[j];
    if invgen[vi[2]] eq vj[1] and
                        (invgen[vi[1]] ne vj[2] or #V1locs[j] gt 1) then
      //invgen[vi[1] = vj[2] and  #V1locs[j] = 1 would mean only location
      //was inverse of vi, in that case we don't want an edge
      Include(~edges,[i,j]);
    end if;
  end for; end for;
  //V1 -> V2
  for i in [1..#V1] do for j in [1..#V2] do
    vi := V1[i]; vj := V2[j];
    if invgen[vi[2]] eq vj[1] then
      Include(~edges,[i,#V1+j]);
    end if;
  end for; end for;
  for i in [1..#V2] do for j in [1..#V1] do
    vi := V2[i]; vj := V1[j];
    if invgen[vi[2]] eq vj[1] then
      Include(~edges,[#V1+i,j]);
    end if;
  end for; end for;
    
  D := Digraph< #V1 + #V2 | edges >;
  E := Edges(D);
  if #V2 gt 0 then
   for e in E do
    //edges with source in V1 or V2 have weight 1 or 2, respectively
    if Index(EndVertices(e)[1]) le #V1 then AssignWeight(~D,e,1);
    else AssignWeight(~D,E!e,0);
    end if;
   end for;
  end if;
  return rec < VGF | V1:=V1, V1locs:=V1locs, V2:=V2, edges:=edges, D:=D >; 
end function;

CalculateVertexData := procedure(~VG,invgen : noboundary:=false )
  local V1, V2, D, V, E, v1l, v2l, g1, g2, a, b, r, d, l1, l2, dvv, onr;
  
  V1 := VG`V1; V2 := VG`V2; D := VG`D; V := VertexSet(D); E := Edges(D);
  VG`V1v1v2 := []; VG`V1chi := [];
  //For vertices v, we need the shortest length of a nonempty path
  //from v to v (Reachable doesn't do that). This is recorded as dvv[i]
  dvv := [];
  for v in V do
    onr := [ w : w in OutNeighbours(v) | Reachable(w,v) ];
    if onr eq [] then Append(~dvv,-1);
    elif Index(v) gt #V1 then Append(~dvv,Min([Distance(w,v) : w in onr]));
    else Append(~dvv,1+Min([Distance(w,v) : w in onr]));
    end if;
  end for;
  for i in [1..#V1] do
     v1l := [Index(InitialVertex(e)): e in E | TerminalVertex(e) eq V!i];
     v2l := [Index(TerminalVertex(e)): e in E | InitialVertex(e) eq V!i];
     //sanity check
     a := V1[i][1]; b := V1[i][2];
     assert forall{v1 : v1 in v1l | (v1 le #V1 and V1[v1][2] eq invgen[a])
                              or  (v1 gt #V1 and V2[v1-#V1][2] eq invgen[a])};
     assert forall{v2 : v2 in v2l | (v2 le #V1 and V1[v2][1] eq invgen[b])
                              or  (v2 gt #V1 and V2[v2-#V1][1] eq invgen[b])};
     l1 := {@ PowerSequence(IntegerRing()) | @};
     l2 := [Rationals()|];
     for v1 in v1l do
       g1 := v1 le #V1;
       for v2 in v2l do
         g2 := v2 le #V1;
         Include(~l1,[v1,v2]);
         if v1 eq v2 then
           d := dvv[v1] eq -1 select 10 else dvv[v1]; 
         else r, d := Reachable(V!v2,V!v1);
           if not r then d := 10; end if;
         end if;
         if g1 and g2 then
           assert d ne 0;
           if noboundary then
             chi := d eq 1 select -1/6 else d eq 2 select -1/4 else d eq 3
               select -3/10 else d eq 4 select -1/3 else d eq 5 select -5/14
               else d eq 6 select -3/8 else d eq 7 select -7/18 else -2/5;
           else
             chi := d eq 1 select -1/6 else d eq 2 select -1/4 else d eq 3
                         select -3/10 else -1/3;
           end if;
         elif (g1 and not g2) then
           chi := d eq 0 select 0 else d eq 1 select -1/6 else -1/4;
         elif (not g1 and g2) then
           assert d ne 0;
           chi := d eq 1 select 0 else d eq 2 select -1/6 else -1/4;
         else
           assert d ne 0;
           chi := 0;
         end if;
         Append(~l2,chi);
       end for;
     end for;
     VG`V1v1v2[i] := l1; VG`V1chi[i] := l2;
  end for;
end procedure;

CalculateBlobData := function(pgp, imult, invgen, isred, isgreen)
  local Evalw, redgens, rggens, trip, triplist, rdlist, tripcurv, nmg,
        rtrip, rw4, rw5, a, b, c, d, e;
  Evalw := function(w)
    //evaluate word in pregroup - not very efficient!
    local v, reduce, p;
    v := w;
    reduce := false;
    for i in [1..#w-1] do
      if w[i+1] eq invgen[w[i]] then
        Remove(~v,i); Remove(~v,i); reduce := true; break;
      end if;
      p := pgp[w[i]][w[i+1]];
      if p ne 0 then
        Remove(~v,i); v[i] := p; reduce := true; break;
      end if;
    end for;
    if reduce then return($$(v)); end if;
    return v;
  end function;
  nmg := #invgen;
  redgens := [ a : a in [1..nmg] | isred[a] ];
  rggens := [ a : a in redgens | isgreen[a] ];
  triplist:= {@ [a,b,c] : a in redgens, b in redgens, c in redgens |
                          b ne invgen[a] and c ne invgen[b] and
                          imult[a][b] and imult[b][c] and
                          #[t : t in [a,b,c] | not isgreen[t]] le 1 @};
  rdlist := [ Evalw(t) : t in triplist ];
  tripcurv:=[];
  for tc in [1..#triplist] do
    trip := triplist[tc];
    ng := #[t: t in trip | not isgreen[t] ];
    rtrip := rdlist[tc];
    if rtrip eq [] then
      tripcurv[tc] := ng eq 1 select -1/4 else -1/6;
      continue;
    end if;
    if #rtrip eq 1 then
      d := invgen[rtrip[1]];
      tripcurv[tc] := ng eq 1 and not isgreen[d] select -5/14
                      else ng eq 1 select -1/3 else -1/4;  
      continue;
    end if;
    if ng eq 1 then tripcurv[tc] := -5/14; continue; end if;
    if #rtrip eq 2 and isgreen[rtrip[1]] and isgreen[rtrip[2]] then
      tripcurv[tc] := -3/10;
      d := invgen[rtrip[1]];
      continue;
    end if;
    //now extend to words of length 4, 5, 6
    a := trip[1]; b:= trip[2]; c := trip[3];
    for d in rggens do
      if d ne invgen[c] and imult[c][d] and Evalw([b,c,d]) ne [] then
        rw4 := Evalw(rtrip cat [d]);
        for e in rggens do
          if e ne invgen[d] and imult[d][e] and Evalw([c,d,e]) ne [] and
                                                Evalw([b,c,d,e]) ne [] then
            rw5 := Evalw(rw4 cat [e]);
            if #rw5 eq 1 and isgreen[rw5[1]] then 
              tripcurv[tc] := -1/3; continue tc;
            end if;
          end if;
        end for;
      end if;
    end for;
    tripcurv[tc] := -5/14;
  end for;
  return triplist, tripcurv;
end function;

DefinePlaces := function(Rels,nrels,invgen,VG)
  local nmg, V1, V2, edges, PL, rel, loc, a, b, c, ib, p1, p2;
  nmg := #invgen;
  PL := [];
  //also keep a list PLnos[i][j] of numbers of places with relno=i, pos=j
  PLnos := [];
  V1 := VG`V1; V2 := VG`V2; edges := VG`edges;
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
          Append(~PL, rec< PlaceF | relno:=i, pos:=j, c:=c, C:="G" >);
          Append(~PLnos[i][j],#PL);
        end if; 
        //Is there a red place?
        if Position(V2,<ib,c>) ne 0 then
          Append(~PL, rec< PlaceF | relno:=i, pos:=j, c:=c, C:="R" >);
          Append(~PLnos[i][j],#PL);
        end if;
      end for;
    end for;
  end for;
  return PL, PLnos;
end function;

CalculateOneStep := procedure(~PL,PLnos,invgen,imult,VG,Rels,triplist,tripcurv:
                                verbose:=0)
  local IncludeEntry, nmg, pl, OSPL, OSCurv, relno, rel, pos, k, wd, lw, pos1,
        a, b, c, d, ib, id, loc, locinv, pv, tl, V, V1, V2, postl, v, v1, v2,
       VertexCurvature, v1v2, vchi, chi1, vl, arel, arelino, arelipos, areliwd,
        arelilw, qpl, qc, l, posr, dr, vr, tlr, qplr, cr, v1r, v2r, pos0,
        piecelen, OSnce;
  IncludeEntry := procedure(~OSPL,~OSCurv,~OSnce,plno,l,chi,nce)
    local p;
    p := Position(OSPL,[plno,l]);
    if p eq 0 then
      Include(~OSPL,[plno,l]); Append(~OSCurv,chi); Append(~OSnce,nce);
    elif chi gt OSCurv[p] then OSCurv[p] := chi; OSnce[p] := nce;
    end if;
  end procedure;
  v1v2 := VG`V1v1v2; vchi := VG`V1chi;
  VertexCurvature := function(v1,v,v2)
    local p;
    p := Position(v1v2[v],[v1,v2]);
    if verbose gt 0 and  p eq 0 then
       "Warning: triple not found in VertexCurvature",v1,v,v2;
    end if;
    return p eq 0 select -5/14 else vchi[v][p];
  end function;
  BlobCurvature := function(x,y,z)
    local p;
    p := Position(triplist,[x,y,z]);
    if verbose gt 2 and  p eq 0 then
       "Warning: triple not found in BlobCurvature",x,y,z;
    end if;
    return p eq 0 select -5/14 else tripcurv[p];
  end function;
  V := VertexSet(VG`D); V1 := VG`V1; V2 := VG`V2;
  nmg := #invgen;
  if verbose gt 0 then #PL,"places"; end if;
  for pct in [1..#PL] do
    pl := PL[pct];
    relno := pl`relno;
    rel := Rels[relno];
    pos := pl`pos;
    wd := rel`wd; lw := rel`len div rel`k;
    loc := rel`loc; locinv := rel`locinv;
    a := loc[pos][1]; b := loc[pos][2]; c := pl`c; ib := invgen[b];
    assert wd[pos] eq b;
    if verbose gt 1 then
       "pct =",pct, "place",pl`relno, pl`pos, pl`C, "a,b,c,ib",a,b,c,ib;
    end if;
    OSPL := {@ @}; OSCurv := []; OSnce := [];
    if pl`C eq "R" then
      pos1 := pos eq lw select 1 else pos+1;
      assert b eq loc[pos1][1];
      d := loc[pos1][2];
      v := Position(V1,<b,d>);
      for qc in PLnos[relno][pos1] do
        qpl := PL[qc];
        for y in [1..nmg] do if imult[y][ib] then
          v1 := #V1 + Position(V2,<y,ib>);
          v2 := qpl`C eq "G" select Position(V1,<invgen[d],qpl`c>)
                 else #V1 + Position(V2,<invgen[d],qpl`c>);
          IncludeEntry(~OSPL,~OSCurv,~OSnce,qc,1,
                          BlobCurvature(y,ib,c) + VertexCurvature(v1,v,v2),1); 
        end if; end for; 
      end for;
      PL[pct]`OSPL := OSPL;  PL[pct]`OSCurv := OSCurv; PL[pct]`OSnce := OSnce;
      continue;
    end if;
    //now pl`C = "G"
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
      while areliwd[arelipos] eq bb do
        piecelen +:= 1;
        if piecelen eq rel`len - 1 then
          error "A piece of a relator consists of all but one letter";
        end if;
        pos1 := pos0 eq lw select 1 else pos0+1;
        assert loc[pos1][1] eq bb;
        arelipos1 := arelipos eq arelilw select 1 else arelipos+1;
        v1 := Position(V1,<invgen[areliwd[arelipos1]], ibb>);
        d := loc[pos1][2];
        v := Position(V1,<bb,d>);
        //tl := [Index(x) : x in OutNeighbours(V!v)];
        for qc in PLnos[relno][pos1] do
          qpl := PL[qc];
          cr := qpl`c;
          if qpl`C eq "G" then
            v2 := Position(V1,<invgen[d],cr>);
            chi1 := VertexCurvature(v1,v,v2);
            IncludeEntry(~OSPL,~OSCurv,~OSnce,qc,l,chi1,1);
          else
            //step includes an extra red edge
            v2 := #V1 + Position(V2,<invgen[d],cr>);
            chi1 := VertexCurvature(v1,v,v2);
            posr := pos1 eq lw select 1 else pos1+1;
            assert d eq loc[posr][1];
            id := invgen[d];
            dr := loc[posr][2];
            vr := Position(V1,<d,dr>);
            for qcr in PLnos[relno][posr] do
              qplr := PL[qcr];
              for yr in [1..nmg] do if imult[yr][id] then
                v1r := #V1 + Position(V2,<yr,id>);
                v2r := qplr`C eq "G" select Position(V1,<invgen[dr],qplr`c>)
                       else #V1 + Position(V2,<invgen[dr],qplr`c>);
                IncludeEntry(~OSPL,~OSCurv,~OSnce,qcr,l+1,
                chi1 + BlobCurvature(yr,id,cr) + VertexCurvature(v1r,vr,v2r),2); 
              end if; end for; 
            end for;
          end if;
        end for; //for qc in PLnos[relno][pos1] do

        arelipos := arelipos1; pos0 := pos1; bb := d; ibb := invgen[bb];
        assert wd[pos1] eq d;
        l +:= 1;
      end while; //while areliwd[arelipos] eq bb do
    end for; //for lct in vl do

    PL[pct]`OSPL := OSPL;  PL[pct]`OSCurv := OSCurv; PL[pct]`OSnce :=OSnce;
  end for;
end procedure;

TestRSym := function(epsilon, Rels, nrels, PL, PLnos :
                                         verbose:=0, complete:=false)
  local zeta, rel, len, inc, pls, pd, pl, plno, ql, qlno, l, lp, mp,
        chi, psi, psip, L1, L2, p, success, nce;
  zeta := Ceiling(6*(1+epsilon)) - 1;
  
  success := true;
  for rct in [1..nrels] do
    rel := Rels[rct];
    len := rel`len; inc := len div rel`k;
    if verbose gt 0 then
       "Testing relation number ",rct,":  "; (rel`wd)[1..len];
    end if;
    for pos in [1..inc] do
      for pno in PLnos[rct][pos] do
        pls := PL[pno];
        L1 := {@ [pno, 0] @}; //first two components of list L 
        L2 := [ [0, 0/1, 0, 0] ]; //third and fourth components of list L 
        for i in [1..zeta] do
          for j in [1..#L2] do if L2[j][1] eq i-1 then
            plno := L1[j][1]; pl := PL[plno]; l := L1[j][2]; psi := L2[j][2];
            for k in [1..#pl`OSPL] do
              pd := pl`OSPL[k];
              qlno := pd[1]; ql := PL[qlno]; lp := pd[2];
              nce := (pl`OSnce)[k];
              if l + lp le len then
                chi := pl`OSCurv[k];
                mp := lp*(1 + epsilon)/len;
                psip := psi + mp + chi;
                if psip lt 0 then continue; end if;
                if psip gt 0 and qlno eq pno and l + lp eq len then
                   Include(~L1,[qlno,l+lp]); Append(~L2,[i,psip,j,nce]);
                   if complete then
                     "This relator fails";
                     if verbose gt 1 then L1, L2; end if;
                     success := false;
                     continue rct;
                   end if;
                   return false, L1, L2; 
                end if;
                p := Position(L1,[qlno,l+lp]);
                if p eq 0 then
                  Include(~L1,[qlno,l+lp]); Append(~L2,[i,psip,j,nce]);
                elif psip gt L2[p][2] then L2[p]:=[i,psip,j,nce];
                end if;
              end if;
            end for;
          end if; end for;
        end for;
      end for;
    end for;
  end for;
  if complete then return success, _, _; end if;
  return true, _, _;
end function;

intrinsic IsHyperbolic(F :: GrpFP, rred :: SeqEnum, rgreen :: SeqEnum
               : epsilon := 1/10,  Print:=0, 
          noboundary:=false, verifypgp := true, complete:=false)
          -> BoolElt, SeqEnum, SeqEnum
{Try to prove that the finitely presented group with relators rred cat rgreen
 is hyperbolic, using Richard Parker's RSym procedure}
  /* F is a free group, rred is list of red relators, all of length 3,
   * rgreen is list of green relators
   */
  local ng, invgen, Rels, nrels, isgreen, isred, pgp, imult, VG, PL,
        triplist, tripcurv, rt, rtn, result;
  //set of list invgen of inverses of generators (all +ve ints)
  ng := Ngens(F);
  if #Relations(F) gt 0 then
    error "The first input value of IsHyperbolic should be a free group";
  end if;
  invgen := [];
  DefineInvs(F, ~invgen, rgreen : verbose:=Print );
  pgp := []; imult := []; isred := []; isgreen := [];
  rt := Cputime();
  DefinePregroup(~pgp,~imult,~isred,invgen,rred :
      verify:=verifypgp, verbose:=Print );
  if Print gt 0 then
    rtn := Cputime();
    "Defined pregroup. Time =",rtn-rt;
    rt := rtn;
  end if;
  Rels := [];
  DefineRels(~Rels,~nrels, ~isgreen, invgen, rgreen : verbose:=Print );
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
  VG := DefineVertexGraph(Rels,imult,invgen);
  if Print gt 0 then
    rtn := Cputime();
    "Defined vertex graph.",#VG`V1,"+",#VG`V2,"vertices.",#VG`edges,
    "edges.  Time =",rtn-rt;
    rt := rtn;
  end if;
  CalculateVertexData(~VG, invgen : noboundary:=noboundary);
  if Print gt 0 then
    rtn := Cputime();
    "Calculated vertex data. Time =",rtn-rt;
    rt := rtn;
  end if;
  triplist, tripcurv := CalculateBlobData(pgp, imult, invgen, isred, isgreen);
  if Print gt 0 then
    rtn := Cputime();
    "Calculated blob data. Time =",rtn-rt;
    rt := rtn;
  end if;
  PL, PLnos := DefinePlaces(Rels,nrels,invgen,VG);
  if Print gt 0 then
    rtn := Cputime();
    "Defined places. Time =",rtn-rt;
    rt := rtn;
  end if;
  CalculateOneStep(~PL,PLnos,invgen,imult,VG,Rels,triplist,tripcurv :
      verbose:=Print);
  if Print gt 0 then
    rtn := Cputime();
    "Calculated single step curvatures. Time =",rtn-rt;
    rt := rtn;
  end if;
  result, L1, L2 := TestRSym(
     epsilon, Rels, nrels, PL, PLnos :verbose:=Print, complete:=complete); 
  if Print gt 0 then
    "Tested RSym. Time =",rtn-rt;
  end if;
  if assigned L1 then
    return result, [L1[i] cat L2[i] : i in [1..#L1]], PL;
  end if;
  return result, _, _;
end intrinsic;

/* Examples
F<a,a2,b,b2> := FreeGroup(4);
rred:=[ a^2*a2, b^2*b2];
rgreen := [a2^2, b2^2, (a*b)^4];
IsHyperbolic(F,rred,rgreen,1); //true
IsHyperbolic(F,rred,rgreen,2); //false

F<a,b> := FreeGroup(2);
rred := [b^3]; rgreen := [a^2, (a*b)^7];
IsHyperbolic(F,rred,rgreen,1/10); //true
IsHyperbolic(F,rred,rgreen,1/2); //false

rred:=[b^3];
rgreen := [a^2, (a*b)^13, (a,b)^6];
IsHyperbolic(F,rred,rgreen,1/10); //false
rgreen := [a^2, (a*b)^13, (a,b)^7];
IsHyperbolic(F,rred,rgreen,1/10); //true

F<a,b,c,d> := FreeGroup(4);
rred:=[]; rgreen := [ (a,b)*(c,d) ];
IsHyperbolic(F,rred,rgreen,1/10); //true

F<a,b,b2> := FreeGroup(4);
rred:=[ a^3, b^2*b2];
rgreen := [b2^2, (a*b)^6, (a,b)^6];
IsHyperbolic(F,rred,rgreen,1); //true

*/

/*
intrinsic IsHyperbolic(F :: GrpFP, rred :: SeqEnum, rgreen :: SeqEnum,
               : epsilon :: RngIntElt : Print:=0, 
          noboundary:=false, verifypgp := true, complete:=false)
          -> BoolElt, SeqEnum, SeqEnum
{Try to prove that the finitely presented group with relators rred cat rgreen
 is hyperbolic, using Richard Parker's RSym procedure}
  /* F is a free group, rred is list of red relators, all of length 3,
   * rgreen is list of green relators
   *
   return IsHyperbolic(F, rred, rgreen, RationalField()!epsilon:
   Print := Print, noboundary:=noboundary, verifypgp:=verifypgp,
   complete:=complete);
end intrinsic;
*/

/* input to the function - a list group_list of nontrivial finite groups, and a non-negative integer, number.

output:
1. a free group F of rank the total number of inverse pairs of elements in each finite group, excluding the identity, plus number
2. a list rred of relators of length 3
3. a list rgreen of quadratic relators (length 2)
such that F  and the union of rred and rgreen defines a free product of the given finite groups and free group of rank number
4. A function which on input a list of elements from the finite groups,
or of generators and their inverses from a free group of frank number
returns the corresponding word in F
5. The non-identity elements of the finite groups, in the order to which
they correspond to the generators of F.
*/



intrinsic RedRelatorsForFreeProduct(group_list::List, number::RngIntElt) -> GrpFP, SeqEnum, SeqEnum, UserProgram, List
{Compute input data for IsHyperbolic corresponding to the free product of the groups in group_list and a free group of rank number. }

    rred:= [];
    rgreen:= [];

    gen_lists:= [* *];
    gen_counts:= [];

    //First need to generate the group by one of each inverse
    //pair of elements, excluding the identity.
    for group in group_list do
       group_gens:= [];
       for x in group do
	 if not (x eq group.0) and not (x^-1 in group_gens) then
	    Append(~group_gens, x);
	 end if;
       end for;
       Append(~gen_lists, group_gens);
       Append(~gen_counts, #group_gens);
    end for;

    total_gens:= &+gen_counts + number;
    F:= FreeGroup(total_gens);

    //Make the function for mapping from sequences of elements
    //of the groups in the group_list to relators in F.
    //The input list_pairs must be a list of pairs, where the first elt of the
    //pair is the number of a group in the list of lists
    //(or 0 if its an element of the free group at the end), and the second is
    //an element of that group. 
    MakeGreenRelator:= function(list_pairs)
      relator:= F.0;
      for i in [1..#list_pairs] do
	factor:= list_pairs[i][1];
	assert (factor gt 0) and (factor lt #group_list + 2);
	elt:= list_pairs[i][2];
	if factor lt (#group_list + 1) then
	    //we are in one of the finite factors.
	   assert elt in group_list[factor];
	   if factor eq 1 then
	      offset:= 0;
	   else
	      offset:= &+[gen_counts[j] : j in [1..(factor-1)]]; 
	      //bump up count by
	      //the elts of the free group corresponding to previous factors.
	   end if;
	   if exists(match){j : j in [1..gen_counts[factor]] | gen_lists[factor][j] eq elt} then
	     relator:= relator*F.(offset + match);
	   else
	      assert exists(match){j : j in [1..#gen_lists[factor]] | gen_lists[factor][j] eq elt^-1};
	     relator:= relator*F.(offset + match)^(-1);
	   end if;
	else //we are in the free part
	   offset:= total_gens - number;
	   if elt gt 0 then
	      relator:= relator*F.(elt+offset);
	   else
	      elt:= -1*elt;
	      relator:= relator*F.(elt+offset)^-1;
	   end if;
	 end if;
       end for;
       return relator;
    end function;
      

    //now need to make the relators - we need the involutory
    //elements to go in grels, and sufficiently many triples
    //that every pair of elements in each of the groups occurs
    //together in one triple.
    offset:= 0;
    for i in [1..#group_list] do
       group_gens:= gen_lists[i];
       nr_gens:= gen_counts[i];
       for j in [1..nr_gens] do
	  elt:= group_gens[j];
	  if elt^2 eq group_list[i].0 then 
	    Append(~rgreen, F.(offset + j)^2); //involutions go in green relators
	    to_test:= [1..(j-1)] cat [(j+1)..nr_gens];
	  else
	    to_test:= [1..nr_gens];
	  end if;
	  for l in to_test do
	    if exists(prod){prod: prod in [1..nr_gens] | elt*group_gens[l] eq
	       group_gens[prod]} then
	       Append(~rred, F.(offset+j)*F.(offset+l)*F.(offset + prod)^-1);
	    else
	       assert exists(prod){prod: prod in [1..nr_gens] | elt*group_gens[l] eq
	       group_gens[prod]^-1};
	       Append(~rred, F.(offset+j)*F.(offset+l)*F.(offset + prod));
	    end if;
	  end for;
       end for;
       offset:= offset + nr_gens;
    end for;

    return F, rred, rgreen, MakeGreenRelator, gen_lists;
end intrinsic;



/*
Now for some tests

g:= Alt(4); h:= CyclicGroup(5); k:= Alt(5); l:= DihedralGroup(5);

//testing first that the red and green relators define the right groups and
//that the maps do the right thing.

F, rred, rgreen, func, e:= RedRelatorsForFreeProduct([g], 0);
G, phi:= quo<F|rred cat rgreen>;
perm, phi2:= PermutationGroup(G);
assert IsIsomorphic(perm, g);
l:= [*<1, g!(1, 2, 3)>, <1, g!(1, 4)(2, 3)>, <1, g!(1, 2)(3, 4)>*];
elt:= func(l);
(elt@phi)@phi2;
//Should be a conjugate of (1, 4, 2).

F, rred, rgreen, func, e:= RedRelatorsForFreeProduct([h], 0);
G, phi:= quo<F|rred cat rgreen>;
perm, phi2:= PermutationGroup(G);
assert IsIsomorphic(perm, h);
l:= [*<1, h.1>, <1, (h.1)^2>, <1, (h.1)^7>*];
elt:= func(l);
(elt@phi)@phi2;
//Should be identity


F, rred, rgreen, func, e:= RedRelatorsForFreeProduct([k], 0);
G, phi:= quo<F|rred cat rgreen>;
perm, phi2:= PermutationGroup(G);
assert IsIsomorphic(perm, k);
l:= [*<1, k!(1, 2, 3, 4, 5)>, <1, k!(1, 5, 3)>, <1, k!(1, 2)(3, 4)>*];
elt:= func(l);
(elt@phi)@phi2;
//Should be identity
IsHyperbolic(F, rred, rgreen,1 : Print:= 3); //true. Also, each row and column of
//the pregroup mult table should have a single zero entry.

F, rred, rgreen, func, e:= RedRelatorsForFreeProduct([l], 0);
perm, phi2:= PermutationGroup(G);
assert IsIsomorphic(perm, l);
l:= [*<1, l!(1, 2, 3, 4, 5)>, <1, l!(2, 5)(3, 4)>, <1, l!(1, 5)(2, 4)>*];
elt:= func(l);
(elt@phi)@phi2;
//Should be identity
IsHyperbolic(F, rred, rgreen,1 : Print:= 3); //true. Also, each row and column of
//the pregroup mult table should have a single zero entry.


F, rred, rgreen, func, e:= RedRelatorsForFreeProduct([*g, h*], 2);
e;                        
//[*
//    [
//        (1, 2)(3, 4), NOTE: If these come out in a different order
//        (1, 3, 2),          then so will output of function below.
//        (1, 4, 3),
//        (2, 3, 4),
//        (1, 2, 4),
//        (1, 3)(2, 4),
//        (1, 4)(2, 3)
//    ],
//    [
//        (1, 2, 3, 4, 5),
//        (1, 3, 5, 2, 4)
//    ]
//*]
word:= func([*<1, g!(1, 3, 2)>, <2, h!(1, 5, 4, 3, 2)>, <3, -2>, <3, 1>, <2, h!(1, 3, 5, 2, 4)>*]);
//F.2 * F.8^-1 * F.11^-1 * F.10 * F.9
IsHyperbolic(F, rred, rgreen, 1/10);
//true
Append(~rgreen, word);
IsHyperbolic(F, rred, rgreen, 1 : Print:= 3);
//true
*/
