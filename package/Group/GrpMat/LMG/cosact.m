freeze;

AddAttribute(Map,"TransInfo");
                 //for storing transversal as part of coset action map

import "meet.m" : MeetRad;

CosAct := function(G, H :ker:=true )
//H is a subgroup of G - compute coset action of G on H
  local RF,r,rpc,rad,rq,Gtorq,rtopc,hmeetr,imh,rtrans,rinf,imtrans,imind,
        ind,imca,imci,imk,rca,rci,rk,ca,ci,ck,invimtrans,genims,genim,imgen,
        impt,mul,rim,shift,invrtrans,ggens,hgens,inviwmci,inviwmh,rmul,hmul,
        P,nr;

  RF := recformat<rtrans : SetIndx, imtrans : SetIndx>;
   
  r := G`LMGNode;
  rpc := r`radPC;
  rad := r`rad;
  rq := r`radquot;
  Gtorq := r`Gtoradquot;
  rtopc := r`radtoPC;

  hmeetr := MeetRad(G,H);
  //want it as PC-group
  hmeetr := sub< rpc | [ g @ rtopc : g in Generators(hmeetr) ] >;
  vprint LMG, 2 : "Order of intersection of subgroup with radical:", #hmeetr;
  rtrans := RightTransversal(rpc, hmeetr);
  invrtrans := [r @@ rtopc : r in rtrans];
  vprint LMG, 2 : "Found transversal in radical, size:", #invrtrans;
  rind := #rtrans;

  ggens := [Generic(G)|G.i : i in [1..Ngens(G)]];
  hgens := [Generic(H)|H.i : i in [1..Ngens(H)]];

  imh := sub< rq | [ h @ Gtorq : h in hgens] >;
  vprint LMG, 2 : "Order of subgroup image in radical quotient:", #imh;
  imtrans := RightTransversal(rq,imh);
  vprint LMG, 2 : "Found transversal in radical quotient, size:", #imtrans;
  imind := #imtrans;
  ind := rind * imind;
  if ind ge 2^31 then
    error "Index of subgroup is too large";
  end if;

  imca, imci, imk := CosetAction(rq,imh);
  vprint LMG, 2 : "Found coset action in radical quotient";
  assert forall{i : i in [1..imind] | 1^imca(imtrans[i]) eq i};

  if rind eq 1 then
    ca := map< Generic(G) -> imci | x :-> x @ Gtorq @ imca,
                                    x :-> x @@ imca @@ Gtorq >;
    ci := imci;
    ck := sub< Generic(G) | rad, [ g @@ Gtorq : g in Generators(imk) ] >; 
    ca`TransInfo := rec< RF | rtrans:=rtrans, imtrans := imtrans >;
    return ca, ci, ck;
  end if;

  rca, rci, rk := CosetAction(rpc,hmeetr);
  vprint LMG, 2 : "Found coset action in radical";
  assert forall{i : i in [1..rind] | 1^rca(rtrans[i]) eq i};
  invimtrans := {@ g @@ Gtorq : g in imtrans @};

  inviwmh := InverseWordMap(imh);

  genims := [Sym(ind)|]; //images of generators of G under ca
  for gen in [G.i : i in [1..Ngens(G)]] do
    vprint LMG, 2 : "Calculating generator image";
    imgen := gen @ Gtorq;
    genim := [];
    for imct in [1..imind] do
      impt := 1^imca(imtrans[imct] * imgen);
      shift := rind*(impt-1);
      mul := invimtrans[imct] * gen * invimtrans[impt]^-1; //in rad H
      //need to write it as element of radical * element of H
      hmul := Evaluate(inviwmh(Gtorq(mul)),hgens);
      rmul := mul * hmul^-1;
      for rct in [1..rind] do
        rim := 1^rca(rtopc(hmul^-1 * invrtrans[rct] * mul));
        Append(~genim, shift+rim);
      end for;
    end for;
    Append(~genims, Sym(ind)!genim);
    vprint LMG, 2 : "Done";
  end for;
  ci := sub< Sym(ind) | genims >;
  inviwmci := InverseWordMap(ci);
  //Map ca will cause error if applied to element not in G, but can't help that
  ca := map< Generic(G) -> Sym(ind) |
            x :-> Evaluate(w,genims) where _,w := LMGIsIn(G,x),
            x :-> Evaluate(inviwmci(x),ggens) >;
  ca`TransInfo := rec< RF | rtrans:=rtrans, imtrans := imtrans >;
  if not ker then return ca, ci, _; end if;
  //We will get the kernel by taking random elements and forming normal
  //closure
  ordk := LMGOrder(G) div #ci;
  nr := 1;
  P := RandomProcess(G);
  vprint LMG, 2 : "Finding kernel of coset action";
  repeat
    nr *:=2;
    vprint LMG, 3: "doubling number of random elements in kernel";
    //add nr more random elements in kernel
    ck := sub< Generic(G) | 
          [ g^-1 * (g @ ca @@ ca) where g:=Random(P) : i in [1..nr]] >;
    ck := LMGNormalClosure(G,ck);
  until LMGOrder(ck) eq ordk;
  vprint LMG, 2 : "Done";
  return ca, ci, ck;
end function;
