freeze;

import "lmgrec.m": LMGRF, ZZZ;

MatGpCB := function(G)
//G matrix group. Find matrix mat such that G^mat displays Aschbacher
//C1- and C2-decompositions. This makes RandomSchreier work better.
  local M, I, cs, cf, cb, cbc, cb2, cb2c, gx;
  if Ngens(G) eq 0 then return Id(G); end if;
  M := GModule(G);
  //I := IndecomposableSummands(M); too slow in some examples
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

NameChange := function(t)
/* t should be a triple returned by SimpleGroupName
 * return corresponding triple required by SimpleGroupOrder
 */
  local u,v,w;
  u := Type(t[1]) eq RngIntElt select t[1] else
    case < t[1] |
      "A" : 1,
      "B" : 2,
      "C" : 3,
      "D" : 4,
      "G" : 5,
      "F" : 6,
      "E" : 7,
     "2A" : 10,
     "2B" : 11,
     "2D" : 12,
     "3D" : 13,
     "2G" : 14,
     "2F" : 15,
     "2E" : 16,
    default : t[1] >;

  //<"E",7,q> and <"E",8,q> should become <8,7,q> and <9,8,q>
  if u eq 7 then u := t[2]+1; end if;
  v:=t[2];
  w := (t[1] cmpeq 17 or t[1] cmpeq 18) select 0 else t[3];
  //CompositionTree treats 2F42 as sporadic
  if t[1] cmpeq 18 and t[2] cmpeq 0 and t[3] cmpeq "TF42" then
    u := 15; v := 4; w := 2;
  end if;
  return <u,v,w>;
end function;

GetCompSer := procedure(G)
  local T, series, tofacs, fromfacs, factoword, ims, cslen, Y, W, wds,
        flag, w, factorsol, factorname, factorord, ord, issimp, name, r;

  vprint LMG, 1: "Finding composition series of group";
  series, tofacs, fromfacs, factoword, flag, nodes := CompositionTreeSeries(G);
  vprint LMG, 1: "Found composition series of group";
  if not flag then
    error "CompositionTree has failed to compute a composition series";
  end if;
  ims := [* Codomain(t) : t in tofacs *];
  cslen := #tofacs;

  Y := [ PowerSequence(Generic(G)) | ];
  for cfno in [1..cslen] do
    Append( ~Y, [ (ims[cfno].i) @ Function(fromfacs[cfno]) :
                                              i in [1..Ngens(ims[cfno])] ] );
  end for; 

  /* for each SLP matrix its corresponding SLP - if the matrices take too much
   * space, we may need to compute when required.
   */
  W := [];
  for cfno in [1..cslen] do
    wds := [];
    for  g in Y[cfno] do
      flag, w := CompositionTreeElementToWord(G,g); assert flag;
      Append(~wds, w);
    end for; 
    Append( ~W, wds );
  end for; 

  factorsol := [];
  factorname := [* *];
  factorord := [];
  /* These record information about the i-th composition factor
   * CF = series[i]/series[i-1]
   *
   * factorsol[i] is true iff CF[i] is solvable.
   *
   *
   * factorname[i] is just a name for the i-th composition factor.
   */
  vprint LMG, 1: "Composition series has length",cslen;
  ord := 1;
  for cfno in [1..cslen] do
    if Type(ims[cfno]) eq GrpPC or Type(ims[cfno]) eq GrpAb  or
       (Type(ims[cfno]) eq GrpPerm and Ngens(ims[cfno]) eq 1 ) then
      factorsol[cfno] := true;
      factorname[cfno] := < 19, 0, #ims[cfno] >;
      factorord[cfno] := #ims[cfno];
      ord *:= factorord[cfno];
    else
      // wrap by EOB to run NameLimit Trials 
      if assigned nodes[cfno]`LeafData`Name then
        vprint LMG,3 :
              "Name of composition factor was computed by CompositionTree";
        issimp:=true;  name:= [nodes[cfno]`LeafData`Name];
      else
        vprint LMG,3 :
              "Name of composition factor was not computed by CompositionTree";
        NameLimit := 5;
        NmrTrials := 0;
        repeat 
         if Type(ims[cfno]) eq GrpMat then
           issimp, name :=  SimpleGroupName(ims[cfno] : OmegaFactor:=100); 
         else
           issimp, name :=  SimpleGroupName(ims[cfno]);
         end if;
         NmrTrials +:= 1;
        until NmrTrials gt NameLimit or issimp;
      end if;
      if issimp eq false then 
         error "Failed to show that composition factor is simple";
      end if;
      assert issimp;
      //In a few cases we need to change the name to a more conventional one!
      if name[1][1] cmpeq "D" and name[1][2] eq 3 then
        name[1][1] := "A";
      elif name[1][1] cmpeq "2D" and name[1][2] eq 2 then
        name[1][1] := "A"; name[1][2] := 1; name[1][3] := name[1][3]^2;
      elif name[1][1] cmpeq "2D" and name[1][2] eq 3 then
        name[1][1] := "2A";
      elif name[1][1] cmpeq "B" and name[1][2] eq 1 then
        name[1][1] := "A";
      elif name[1][1] cmpeq "B" and name[1][2] eq 2 then
        name[1][1] := "C";
      end if;
      factorsol[cfno] := false;
      factorname[cfno] := name[1];
      factorord[cfno] := SimpleGroupOrder(NameChange(factorname[cfno]));
      ord *:= factorord[cfno];
    end if;
  end for; //for cfno in [1..cslen] do
  //vprint LMG, 1: "Order of group is: ",ord;
  //G`Order := ord; now done earlier
  r := rec<LMGRF| RS := false, T:=CompositionTree(G),
          verified:=G`LMGNode`verified,
          series:=series, tofacs:=tofacs, fromfacs:=fromfacs,
          factoword:=factoword, W:=W, Y:=Y, ims:=ims, factorsol:=factorsol,
          factorname:=factorname, factorord:=factorord,
          isunirad:=false, israd:=false>; 
  G`LMGNode := r;
end procedure;

Initialize := procedure(G : Al:="", VerifyOrder := true, CTLimit := 5,
                                  RandomSchreierBound := ZZZ`LMGSchreierBound)
  local cb, Gc, verified, SmallBound, SmallOrderBound, rs_run, GG;
  SmallBound := 5000;
  SmallOrderBound := 10^8;
  rs_run := assigned G`Order select -1 else 200;
  
  if HasCompositionTree(G) then
    if CompositionTreeOrder(G) eq 1 then
      G`Order := 1;
      vprint LMG, 1: "Order of group is: ",G`Order;
    else
      vprint LMG, 1: "Using the known composition tree of this group";
      G`FactoredOrder := CompositionTreeFactoredOrder(G);
      vprint LMG, 2: "Factored order of group is: ",G`FactoredOrder;
      G`Order := CompositionTreeOrder(G);
      vprint LMG, 1: "Order of group is: ",G`Order;
    end if;
    G`LMGNode := rec<LMGRF| RS := false, T := CompositionTree(G),
                                                 verified := false >;
    return;
  end if;

  if VerifyOrder and not assigned G`Order then
    // first test if G is very small
    GG := sub< Generic(G) | [G.i : i in [1..Ngens(G)]] >;
    flag := RandomSchreierBounded (GG, SmallBound : Run:=rs_run );
    if flag and #GG le SmallOrderBound then
       vprint LMG, 1: "Using BSGS on this group";
       BSGS(G);
       G`LMGNode := rec<LMGRF| RS := true, verified := true >;
       vprint LMG, 1: "Order of group is: ",G`Order;
       return;
    end if;
    //we use CompositionTree to find the order of the group, since
    //BSGS with verify can be very slow
    for i := 1 to CTLimit do
	T := CompositionTree(G);
	if HasCompositionTree(G) then break; end if;
	vprintf LMG, 1: "CompositionTree failed attempt %o/%o.", i, CTLimit;
    end for;
    if not HasCompositionTree(G) then
	//"HasCompositionTree G:"; "G dump:"; G: Magma;
	error "Unable to construct composition tree";
    end if;
    if not CompositionTreeFastVerification(G) then
      //"WARNING: Cannot verify correctness of calculations with this group.";
      verified := false;
    elif not CompositionTreeVerify(G) then
      vprint LMG, 1: "CompositionTreeVerify failed. Correcting it.";
      CleanCompositionTree(G);
      T := CompositionTree (G: Verify := true);
      verified := true;
    else verified := true;
    end if;
    if CompositionTreeOrder(G) eq 1 then
      G`Order := 1;
      vprint LMG, 1: "Order of group is: ",G`Order;
    else
      G`FactoredOrder := CompositionTreeFactoredOrder(G);
      vprint LMG, 2: "Factored order of group is: ",G`FactoredOrder;
      G`Order := CompositionTreeOrder(G);
      if verified then
        vprint LMG, 1:"Used CompositionTree with Verify to find order of group";
      else
        vprint LMG, 1: "Used CompositionTree to find order of group";
      end if;
      vprint LMG, 1: "Order of group is: ",G`Order;
    end if;
  else verified := assigned G`Order;
  end if;

  if Al eq "CT" then Al := "CompositionTree"; end if;
  if Al eq "RS" then Al := "RandomSchreier"; end if;

  if Al eq "" then
    // first test if G is very small
    flag := RandomSchreierBounded (G, SmallBound : Run:=rs_run );
    if flag then
       vprint LMG, 1: "Using RandomSchreier on this group";
       G`LMGNode := rec<LMGRF| RS := true, verified := verified >;
       vprint LMG, 1: "Order of group is: ",G`Order;
       return;
    end if;

    vprint LMG,1: "Initialize with RandomSchreierBound = ",
             RandomSchreierBound;
  end if;
  if Al ne "CompositionTree" then
    cb := MatGpCB(G);
    Gc := G^cb;
    if assigned G`Order then
      Gc`Order := G`Order;
    end if;
  end if;
  flag := false;
  if Al eq "RandomSchreier" then
     RandomSchreier(Gc : Run:=rs_run );
     flag := true;
  elif Al ne "CompositionTree" then
    flag := RandomSchreierBounded (Gc, RandomSchreierBound : Run:=rs_run );
  end if;

  if flag then 
     vprint LMG, 1: "Using RandomSchreier on this group";
     if not HasAttribute(G,"Base") then
        G`Base := (Gc^(cb^-1))`Base;
     end if;
    RandomSchreier(G : Run:=rs_run );
    vprint LMG, 1: "Order of group is: ",G`Order;
  end if;

  if flag and #G eq #Gc then 
    G`LMGNode := rec<LMGRF| RS := true, verified := verified >;
  else 
    vprint LMG, 1: "Using CompositionTree on this group";
    for i := 1 to CTLimit do
	T := CompositionTree(G);
	if HasCompositionTree(G) then break; end if;
	// "LMGadvice - CompositionTree failed. Trying again.";
	// "G dump:"; G: Magma;
	vprintf LMG, 1: "CompositionTree failed attempt %o/%o.", i, CTLimit;
    end for;
    if not HasCompositionTree(G) then
	error "Unable to construct composition tree";
    end if;
    vprint LMG, 1: "Composition tree computed";
    if CompositionTreeOrder(G) eq 1 then
      G`Order := 1;
      vprint LMG, 1: "Order of group is: ",G`Order;
    else
      G`FactoredOrder := CompositionTreeFactoredOrder(G);
      vprint LMG, 2: "Factored order of group is: ",G`FactoredOrder;
      G`Order := CompositionTreeOrder(G);
      vprint LMG, 1: "Order of group is: ",G`Order;
    end if;
    G`LMGNode := rec<LMGRF| RS := false, T := CompositionTree(G),
                                               verified := verified >;
  end if;

end procedure;
