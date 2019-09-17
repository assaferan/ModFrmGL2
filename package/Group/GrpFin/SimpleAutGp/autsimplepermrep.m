freeze;

/* find preferably minimal degree permutation representation of the
 * automorphism groups of the finite simple groups.
 */
import "SpinRepsAuts.m": Spin8PlusS4;
import "autf22.m": AutF22;
import "autf24.m": AutF24;
import "authn.m": AutHN;
import "autj3.m": AutJ3;
import "auton.m": AutON;
import "aute62.m": AutE62;
import "autf42.m": AutF42;
import "auttf42.m": AutTF42;
import "autg23.m": AutG23;
import "co1.m": Co1;
import "f23.m": F23;
import "ru.m": Ru;
import "g29.m": G29;

VecToP := function(v,p)
  return Vector([x^p : x in Eltseq(v)]);
end function;

MatToP := function(m,p)
  local nr;
  nr := NumberOfRows(m);
  return Matrix(nr,nr,[x^p : x in Eltseq(m)]);
end function;

GL2 := function(n,q)
// Extension of GL(n,q) by graph isomorphisms - degree is twice as large.
local G, gens, mat, G2;
  if n lt 3 then error "n must be at least 3 in GL2"; end if;
  G := GL(n,q);
  gens := [GL(2*n,q) | DirectSum(g,Transpose(g^-1)) :
                        g in [G.i: i in [1..Ngens(G)]] ];
  mat := MatrixAlgebra(GF(q),2*n)!0;
  InsertBlock(~mat,Identity(G),1,n+1); InsertBlock(~mat,Identity(G),n+1,1);
  Append(~gens,mat);
  G2 := sub< GL(2*n,q) | gens >;
  AssertAttribute(G2,"Order",2*#G);
  return G2;
end function;

PGL2 := function(n,q)
// Extension of PGL(n,q) by graph isomorphisms - degree is twice as large.
  local G, V, OI;
  if n lt 3 then error "n must be at least 3 in PGL2"; end if;
  G := GL2(n,q);
  V:=VectorSpace(G);
  OI := OrbitImage(G,sub<V|V.1>);
  AssertAttribute(OI,"Order",2*GCD(n,q-1)*SimpleGroupOrder(<1,n-1,q>));
  return OI;
end function;

PGammaL2 := function(n,q)
//Extension of PGammaL by graph automorphism
  local p, np, w, F, G, ng, perms, perm, lv, V, v, vi, d, c, ct, g, gti,
        NF, VNO, Z, S;
  if n lt 3 then error "n must be at least 3 in PGammaL2"; end if;
  Z := Integers();
  p := Factorisation(q)[1][1];
  if p eq q then
    return PGL2(n,q);
  end if;
  np := (q^n - 1) div (q-1);
  F<w> := GF(q); 
  G := GL(n,F);
  ng := Ngens(G);
  perms := [ [] : i in [1..ng+2] ];
  lv := w^(q-2);
  V := VectorSpace(G);
  NF := func < x | x eq 0 select 0 else Log(x)+1 >;
  VNO := function(v)
    local d, vv, vn;
    d := Depth(v);
    vv := v*v[d]^-1;
    vn := 1 + (q^(n-d) - 1) div (q-1) +
             &+ [Z|q^(n-i)*NF(vv[i]) : i in [d+1..n] ];
    return vn;
  end function;

  //loop through point and determine action of generators
  
  v := V!([0: i in [1..n-1]] cat [1]);
  d := n;
  ct := 1;
  while true do
    for i in [1..ng] do
      g := G.i; gti := Transpose(g^-1);
      perms[i][ct] := VNO(v^g);
      perms[i][ct+np] := VNO(v^gti)+np;
    end for;

    // field automorphism:
    vi := VNO(V![v[i]^p : i in [1..n]]);
    perms[ng+1][ct] := vi; perms[ng+1][ct+np] := vi+np;
    
    // graph automorphism:
    perms[ng+2][ct] := ct+np; perms[ng+2][ct+np] := ct;

    //move on to next vector
    ct +:= 1;
    c:=n;
    while c gt d and v[c] eq lv do v[c]:=0; c-:=1; end while;
    if c eq d then
      if d eq 1 then break; end if;
      v[d]:=0; d-:=1; v[d]:=1;
    else v[c] := v[c] eq 0 select 1 else v[c]*w;
    end if;
  end while;

  S := sub< Sym(2*np) | perms >;
  AssertAttribute(S,"Order",
          2*Factorisation(q)[1][2]*GCD(n,q-1)*SimpleGroupOrder(<1,n-1,q>));
  return S;
end function;

PGammaO := function(n,q)
  local p, V, v, MG, O, deg, PG, gens;
  p := Factorisation(q)[1][1];
  MG := SO(n,q);
  V := VectorSpace(MG);
  O := SetToIndexedSet(Orbit(MG,sub<V|V.1>));
  deg := #O;
  gens := [];
  for i in [1..Ngens(MG)] do
    Append(~gens, [Position(O,o*MG.i) : o in O] );
  end for;
  if q ne p then
  //field automorphism:
    Append(~gens,[Position(O,sub<V|VecToP(o.1,p)>) : o in O]);
  end if;
  PG := sub< Sym(deg) | gens >;
  AssertAttribute(PG,"Order",
          Factorisation(q)[1][2]*2*SimpleGroupOrder(<2,(n-1) div 2,q>) );
  return PG;
end function;

PGammaSp2Dim4 := function(q)
  local K, X, w, diag, mgens, mimgens, V, v, MG, O, deg, PG, oaut, PG2, DP, inj,
        gens, imgens;
  assert Factorisation(q)[1][1] eq 2;
  if q eq 2 then
    error "The group <3,2,2> is isomorphic to S_6 and is not simple";
  end if;
  K := GF(q);
  X := GL(4,q);
  w := PrimitiveElement(K);
  diag := [<i,i,1> : i in [1..4]];
  //make Chevalley generators of Sp(4,q)
  mgens := [
  X!Matrix(K,4,4,diag cat [<1,2,w>, <3,4,-w>]),  //a
  X!Matrix(K,4,4,diag cat [<4,3,-w>, <2,1,w>]),  //-a
  X!Matrix(K,4,4,diag cat [<1,3,w>, <2,4,w>]), //a+b
  X!Matrix(K,4,4,diag cat [<4,2,w>, <3,1,w>]),//-a-b
  X!Matrix(K,4,4,diag cat [<1,4,w>]), //2a+b
  X!Matrix(K,4,4,diag cat [<4,1,w>]), //-2a-b
  X!Matrix(K,4,4,diag cat [<2,3,w>]), //b
  X!Matrix(K,4,4,diag cat [<3,2,w>]) //-b
  ];
  //images under graph automorphism (q even)
  mimgens := [
  X!Matrix(K,4,4,diag cat [<2,3,w^2>]), //b
  X!Matrix(K,4,4,diag cat [<3,2,w^2>]), //-b
  X!Matrix(K,4,4,diag cat [<1,4,w^2>]), //2a+b
  X!Matrix(K,4,4,diag cat [<4,1,w^2>]), //-2a-b
  X!Matrix(K,4,4,diag cat [<1,3,w>, <2,4,w>]), //a+b
  X!Matrix(K,4,4,diag cat [<4,2,w>, <3,1,w>]),//-a-b
  X!Matrix(K,4,4,diag cat [<1,2,w>, <3,4,-w>]),  //a
  X!Matrix(K,4,4,diag cat [<4,3,-w>, <2,1,w>])  //-a
  ];
  MG := sub< GL(4,q) | mgens >;

  V := VectorSpace(MG);
  O := SetToIndexedSet(Orbit(MG,sub<V|V.1>));
  deg := #O;
  gens := [ Sym(deg) | ];
  imgens := [ Sym(deg) | ];
  for i in [1..#mgens] do
    Append(~gens, [Position(O,o*mgens[i]) : o in O] );
    Append(~imgens, [Position(O,o*mimgens[i]) : o in O] );
  end for;
  if q ne 2 then
  //field automorphism:
    Append(~gens,[Position(O,sub<V|VecToP(o.1,2)>) : o in O]);
    Append(~imgens,gens[#gens]);
  end if;
  PG := sub< Sym(deg) | gens >;
  DP, inj := DirectProduct(PG,PG);
  PG2 := sub< Sym(2*deg) |
          [ inj[1](gens[i]) * inj[2](imgens[i]) : i in [1..#gens]]
          cat [Sym(2*deg)!([deg+1..2*deg] cat Eltseq(gens[#gens]^-1))] >;
    AssertAttribute(PG2,"Order",
          2*Factorisation(q)[1][2]*SimpleGroupOrder(<3,2,q>) );
  return PG2;
end function;

PGammaSp := function(n,q)
  local p, V, v, MG, O, deg, PG, gens;
  if n eq 4 and IsEven(q) then
    return PGammaSp2Dim4(q);
  end if;
  p := Factorisation(q)[1][1];
  MG := CSp(n,q);
  V := VectorSpace(MG);
  O := SetToIndexedSet(Orbit(MG,sub<V|V.1>));
  deg := #O;
  gens := [];
  for i in [1..Ngens(MG)] do
    Append(~gens, [Position(O,o*MG.i) : o in O] );
  end for;
  if q ne p then
  //field automorphism:
    Append(~gens,[Position(O,sub<V|VecToP(o.1,p)>) : o in O]);
  end if;
  PG := sub< Sym(deg) | gens >;
  AssertAttribute(PG,"Order",
          Factorisation(q)[1][2]*GCD(2,q-1)*SimpleGroupOrder(<3,n div 2,q>) );
  return PG;
end function;

Suzuki := function(q)
  local p, V, v, MG, O, deg, PG, gens;
  p := Factorisation(q)[1][1];
  assert p eq 2 and q ne p and IsOdd(Factorisation(q)[1][2]);
  MG := Sz(q);
  V := VectorSpace(MG);
  O := SetToIndexedSet(Orbit(MG,sub<V|V.1>));
  deg := #O;
  gens := [];
  for i in [1..Ngens(MG)] do
    Append(~gens, [Position(O,o*MG.i) : o in O] );
  end for;
  //field automorphism:
  Append(~gens,[Position(O,sub<V|VecToP(o.1,p)>) : o in O]);
  PG := sub< Sym(deg) | gens >;
  AssertAttribute(PG,"Order",
          Factorisation(q)[1][2]*SimpleGroupOrder(<11,2,q>) );
  return PG;
end function;

InOmega := function(g,d,q,sign)
  local isf, form;
  if sign eq 1 then
    if d eq 2 then form := Matrix(GF(q),2,2,[0,1,1,0]);
    else isf, form := SymmetricBilinearForm(GOPlus(d,q));
    end if;
  elif sign eq -1 then
    isf, form := SymmetricBilinearForm(GOMinus(d,q));
  else
    isf, form := SymmetricBilinearForm(GO(d,q));
  end if;
  return SpinorNorm(GL(d,q)!g,form) eq 0;
end function;
  
SOMinusOmega := function(d,q,eps)
//An element of SO^eps(d,q) - Omega^eps(d,q).
    local  X;
    assert eps in {-1,0,1};
    X := IsOdd(d) select SO(d,q) else
          eps eq 1 select SOPlus(d,q) else SOMinus(d,q);
    for i in [1..Ngens(X)] do
      if not InOmega(X.i,d,q,eps) then
        return X.i;
        break;
      end if;
    end for;
end function;

GOMinusSO := function(d,q,eps)
  //An element of GO^eps(d,q) - SO^eps(d,q); determinant -1.
  local G;
  assert IsOdd(q);
  assert eps in {-1,0,1};
  if eps eq 0 then
    return GL(d,q)!ScalarMatrix(GF(q),d,-1);
  end if;
  G := eps eq 1 select GOPlus(d,q) else GOMinus(d,q);
  for g in [G.i : i in [1..Ngens(G)]] do
    if Determinant(g) ne 1 then return g; end if;
  end for;
end function;

AutO8Plus := function(q)
  local p, V, v, MG, O, deg, PG, gens, ord;
  _,MG := Spin8PlusS4(q);
  p := Factorisation(q)[1][1];
  V := VectorSpace(MG);
  O := SetToIndexedSet(Orbit(MG,sub<V|V.1>));
  deg := #O;
  gens := [];
  for i in [1..Ngens(MG)] do
    Append(~gens, [Position(O,o*MG.i) : o in O] );
  end for;
  if p ne q then
  //field automorphism:
    Append(~gens,[Position(O,sub<V|VecToP(o.1,p)>) : o in O]);
  end if;
  PG := sub< Sym(deg) | gens >;
  ord := 6*Factorisation(q)[1][2]*GCD(2,q-1)^2*SimpleGroupOrder(<4,4,q>);
  AssertAttribute(PG,"Order",ord);
  return PG;
end function;

PGammaOPlus := function(n,q)
  local p, V, v, MG, O, deg, PG, gens, ord;
  if n eq 8 then
    return AutO8Plus(q);
  end if;
  p := Factorisation(q)[1][1];
  if p eq q then
    PG := PCGOPlus(n,q);
  else
    MG := CGOPlus(n,q);
    V := VectorSpace(MG);
    O := SetToIndexedSet(Orbit(MG,sub<V|V.1>));
    deg := #O;
    gens := [];
    for i in [1..Ngens(MG)] do
      Append(~gens, [Position(O,o*MG.i) : o in O] );
    end for;
  //field automorphism:
    Append(~gens,[Position(O,sub<V|VecToP(o.1,p)>) : o in O]);
    PG := sub< Sym(deg) | gens >;
  end if;
  ord := n mod 4 eq 2 and q mod 4 eq 3 select
       4*Factorisation(q)[1][2]*SimpleGroupOrder(<4,n div 2,q>) else
       2*Factorisation(q)[1][2]*GCD(2,q-1)^2*SimpleGroupOrder(<4,n div 2,q>);
  AssertAttribute(PG,"Order",ord);
  return PG;
end function;

PGammaOMinus := function(n,q)
  local p, MG, om, V, O, oa, pom, poms, deg, gens, imMgens, SS, tf, fa, pfa,
        pim1, pim2, fpim, g, gim, ss, gen, PG, ord, ipom, orb, x, y, pos, lo;
  p := Factorisation(q)[1][1];
  if q eq p then
    PG := PCGOMinus(n,q);
  else
    MG := CGOMinus(n,q);
    om := sub< MG | MG.1, MG.2 >;
    V := VectorSpace(MG);
    O := Orbit(MG,sub<V|V.1>);
    O := SetToIndexedSet(O);
    deg := #O;
    gens := [];
    for i in [1..Ngens(MG)] do
      Append(~gens, [Position(O,o*MG.i) : o in O] );
    end for;
    pom := sub< Sym(deg) | gens[1], gens[2] >;
    T := CompositionTree(om);
    oa := function(g) //the OrbitAction
      flag, w := CompositionTreeElementToWord(om,g); assert flag;
      return Evaluate(CompositionTreeNiceToUser(om)(w),[pom.1,pom.2]);
    end function;
    oai := hom< pom->om | [om.1,om.2] >; //and its inverse

    AssertAttribute(pom, "Order", SimpleGroupOrder(<12,n div 2,q>));
    RandomSchreier(pom);

  //field automorphism - in type O- the field auto does not usually fix the
  //form so we have to conjugate the result after applying MatToP
    imMgens := [GL(n,q)!MatToP(MG.i,p): i in [1..2]];
    SS:=sub<GL(n,q)| imMgens>;
    tf := TransformForm(SS);
    //define automorphism of om as map and make it a homomorphism of pom
    fa := func< x | (GL(n,q)!MatToP(x,p))^tf >;
    ipom := [(pom.i) @ oai @ fa @ oa : i in [1..2]];
    pfa := hom< pom->pom | ipom >;
    //Now work out action oof field automorphism on the permuted points
    gen := [];
    //reduce stabiliser to two generators
    poms := Stabiliser(pom,1);
    repeat ss := sub< poms | Random(poms), Random(poms) >;
    until ss eq poms;
    pim1 := ss.1 @ pfa; pim2 := ss.2 @ pfa;
    fpim := SetToSequence(Fix(pim1) meet Fix(pim2))[1];
    //build up gen using orbit calculation
    orb := {@ 1 @};
    gen := [fpim] cat [0 : i in [2..Degree(pom)]];
    pos := 1;
    while pos le #orb do
      x := orb[pos];
      for i in [1..2] do
        y := x^pom.i;
        if not y in orb then
           gen[y] := gen[x]^ipom[i];
          Include(~orb, y);
        end if;
      end for;
      pos +:= 1;
    end while;
    Append(~gens,gen);
    PG := sub< Sym(deg) | gens >;
  end if;
  ord := n mod 4 eq 0 or q mod 4 eq 1 select
       2*Factorisation(q)[1][2]*GCD(2,q-1)*SimpleGroupOrder(<12,n div 2,q>) else
       2*Factorisation(q)[1][2]*GCD(2,q-1)^2*SimpleGroupOrder(<12,n div 2,q>);
  AssertAttribute(PG,"Order",ord);
  return PG;
end function;

AutG2 := function(q)
 local p, MG, V, O, deg, gens, PG, IIA, a, b, ia, ib, m, isit, c, D, inj, SS;
  p := Factorisation(q)[1][1];
  if q eq 3 then
    PG := AutG23();
    AssertAttribute(PG,"Order",8491392);
    return PG;
  elif q eq 9 then
    IIA := function(P,m)
      local isc, g, C, h;
      //does m induce an inner automorphism of P?
      isc, g := IsConjugate(P, P.1, P.1@m);
      if not isc then return false, _; end if;
      C := Centraliser(P, P.1^g);
      isc, h := IsConjugate(C, P.2^g, P.2@m);
      if not isc then return false, _; end if;
      return true, g*h;
    end function;
    MG := G29();
    PG:=OrbitImage(MG, sub<V|V.1>)  where V:=VectorSpace(MG);
    a:=PG.1; b:=PG.2; ia:=PG.3; ib:=PG.4;
    PG := sub<Generic(PG) | [a,b]>;
    AssertAttribute(PG, "Order", 22594320403200); RandomSchreier(PG); 
    m := hom<PG->PG | [ia,ib]>;
    isit,c := IIA(PG,m^4); assert isit;
    D,inj := DirectProduct([PG,PG,PG,PG]);
    deg := Degree(PG);
    SS := Sym(4*deg);
    PG:= sub<SS | (a@inj[1]) * (a@m@inj[2]) * (a@m@m@inj[3]) * (a@m@m@m@inj[4]),
                  (b@inj[1]) * (b@m@inj[2]) * (b@m@m@inj[3]) * (b@m@m@m@inj[4]),
                   SS!([deg+1..4*deg] cat Eltseq(c^-1)) >; 
    AssertAttribute(PG, "Order", 90377281612800); RandomSchreier(PG); 
    MPs := MinimalPartitions(PG); 
    MP := [m: m in MPs | #m[1] eq 2][1];
    PG := BlocksImage(PG,MP);
    //AssertAttribute(PG, "Order", 90377281612800);
    return PG;
  else
    if p eq 3 then
 "WARNING: the graph automorphism of G2(",q,") has not been implemented yet.";
      "The automorphism group returned is not the full automorphism group";
    end if;
    MG := G2(q);
    V := VectorSpace(MG);
    O := SetToIndexedSet(Orbit(MG,sub<V|V.1>));
    deg := #O;
    gens := [];
    for i in [1..Ngens(MG)] do
      Append(~gens, [Position(O,o*MG.i) : o in O] );
    end for;
    if q ne p then
    //field automorphism:
      Append(~gens,[Position(O,sub<V|VecToP(o.1,p)>) : o in O]);
    end if;
    PG := sub< Sym(deg) | gens >;
    AssertAttribute(PG,"Order",
            Factorisation(q)[1][2]*SimpleGroupOrder(<5,2,q>) );
    return PG;
  end if;
end function;

AutRee := function(q)
  local p, V, v, MG, O, deg, PG, gens;
  p := Factorisation(q)[1][1];
  MG := Ree(q);
  V := VectorSpace(MG);
  O := SetToIndexedSet(Orbit(MG,sub<V|V.1>));
  deg := #O;
  gens := [];
  for i in [1..Ngens(MG)] do
    Append(~gens, [Position(O,o*MG.i) : o in O] );
  end for;
  //field automorphism:
  Append(~gens,[Position(O,sub<V|VecToP(o.1,p)>) : o in O]);
  PG := sub< Sym(deg) | gens >;
  AssertAttribute(PG,"Order",
          Factorisation(q)[1][2]*SimpleGroupOrder(<14,2,q>) );
  return PG;
end function;

Aut3D4 := function(q)
  local p, qq, V, v, MG, O, deg, PG, gens;
  MG := ChevalleyGroup("3D",4,q);
  qq := #BaseRing(MG); assert qq eq q^3;
  p := Factorisation(qq)[1][1];
  V := VectorSpace(MG);
  O := SetToIndexedSet(Orbit(MG,sub<V|V.1,V.2>));
  deg := #O;
  gens := [];
  for i in [1..Ngens(MG)] do
    Append(~gens, [Position(O,o*MG.i) : o in O] );
  end for;
  //field automorphism:
  Append(~gens,
             [Position(O,sub<V|VecToP(o.1,p), VecToP(o.2,p)>) : o in O]);
  PG := sub< Sym(deg) | gens >;
  AssertAttribute(PG,"Order",
          Factorisation(qq)[1][2]*SimpleGroupOrder(<13,4,q>) );
  return PG;
end function;

intrinsic AutomorphismGroupSimpleGroup(grp::Tup) -> GrpPerm
{A permutation representation of the finite simple group defined by the
  triple grp, as returned by IsSimpleOrder}
  local norsimp, type, rank, q, pgl, agl, p, e, X;

  type := grp[1]; rank := grp[2]; q := grp[3]; 
  procedure notsimp();
   error
   "the group defined by the triple <",type,",",rank,",",q,"> is not simple";
  end procedure;
  case type:
  when 19:
    if not IsPrime(q) then notsimp(); end if;
    agl := CyclicGroup(q-1);
    return agl;
  when 17:
    if rank lt 5 then notsimp(); end if;
    if rank eq 6 then return PGammaL(2,9);
    else return Sym(rank);
    end if;
  when 1:
    if rank eq 1 and q lt 4 then notsimp(); end if;
    if rank eq 1 then
      pgl := PGammaL(2,q);
      AssertAttribute(pgl,"Order",
            Factorisation(q)[1][2]*GCD(2,q-1)*SimpleGroupOrder(<1,1,q>));
      return pgl;
    else return PGammaL2(rank+1,q);
      AssertAttribute(pgl,"Order",
            2*Factorisation(q)[1][2]*GCD(2,q-1)*SimpleGroupOrder(<1,1,q>));
    end if;
  when 10:
     if rank eq 1 and q lt 4 or rank eq 2 and q eq 2 then notsimp(); end if;
     return PGammaU(rank+1,q);
  when 2:
    if IsEven(q) then
      error "Field must have odd order for orthogonal groups in odd dimension";
    end if;
    return PGammaO(2*rank+1,q);
  when 3:
    return PGammaSp(2*rank,q);
  when 11:
    p := Factorisation(q)[1][1];
    e := Factorisation(q)[1][2];
    if p ne 2 or IsEven(e) or e eq 1 then
      error "For the Suzuki groups we must have q=2^e with e odd and e>1";
    end if;
    return Suzuki(q);
  when 4:
    if rank lt 3 then
       error "<",type,",",rank,",",q,"> is not a valid triple";
    end if;
    return PGammaOPlus(2*rank,q);
  when 12:
    if rank lt 3 then
       error "<",type,",",rank,",",q,"> is not a valid triple";
    end if;
    return PGammaOMinus(2*rank,q);
  when 5:
    if q eq 2 then notsimp(); end if;
    return AutG2(q);
  when 14:
    p := Factorisation(q)[1][1];
    e := Factorisation(q)[1][2];
    if p ne 3 or IsEven(e) or e eq 1 then
      error "For the small Ree groups we must have q=3^e with e odd and e>1";
    end if;
    return AutRee(q);
  when 13:
    return Aut3D4(q);
  when 6:
    if q eq 2 then
      X := AutF42();
      return X;
    else error
      "Sorry, the automorphism group of F4(q) for q > 2 is not yet available";
    end if;
  when 7:
    if q eq 2 then
      X := AutE62();
      return X;
    else error
       "Sorry, the automorphism group of E6(q) for q > 2 is not yet available";
    end if;
  when 15:
    if q eq 2 then
      X := AutTF42();
      return X;
    else error
    "Sorry, the automorphism group of ^2F4(2^n) for n > 1 is not yet available";
    end if;
  when 18: //sporadics
    case rank:
      when 1: return PrimitiveGroup(11,6);  //M11
      when 2: return TransitiveGroup(24,18441); //M12
      when 3: return PrimitiveGroup(22,2); //M22
      when 4: return PrimitiveGroup(23,5); //M23
      when 5: return PrimitiveGroup(24,3); //M24
      when 6: return PrimitiveGroup(266,1); //J1
      when 7: return PrimitiveGroup(100,36); //HS
      when 8: return PrimitiveGroup(100,34); //J2 = HJ
      when 9: return PrimitiveGroup(275,2); //McL
      when 10: return PrimitiveGroup(1782,2); //Suz
      when 11: return AutJ3(); //J3
      when 12: return Co1(); //Co1
      when 13: return PrimitiveGroup(2300,1); //Co2
      when 14: return PrimitiveGroup(276,4); //Co3
      when 15: return PrimitiveGroup(2058,2); //He
      when 16: return AutF22();
      when 17: return F23();; //Fi23
      when 18: return AutF24(); //Fi24
      when 20: return Ru(); //Ru
      when 21: return AutON(); //O'N
      when 23: return AutHN(); //HN
      else
        if rank le 26 then
           "Sorry, the automorphism group of",
                  SimpleGroupName(<18,rank,0>),"is not yet available";
        else error
          "<",type, rank,",0> is not a valid type of finite simple group";
        end if;
        return false,_,_;
    end case;
  else error type, "is not a valid type of finite simple group";
    return false,_,_;
  end case;
end intrinsic;

intrinsic AutomorphismGroupSimpleGroup(
               type :: MonStgElt, d :: RngIntElt, q :: RngIntElt) -> GrpPerm
{A permutation representation of the classical finite simple group defined by
  type, d, q}
  local trip;
  case type:
    when "L": trip := <1, d-1, q>;
    when "U": trip := <10, d-1, q>;
    when "S":
      if IsOdd(d) then
         error "degree must be even for symplectic groups";
      end if;
      trip := <3, d div 2, q>;
    when "O":
      if IsEven(d) or IsEven(q) then
         error "degree and q must both be odd for groups of type \"O\"";
      end if;
      trip := <2, d div 2, q>;
    when "O+":
      if IsOdd(d) then
         error "degree must be even for groups of type \"O+\"";
      end if;
      trip := <4, d div 2, q>;
    when "O-":
      if IsOdd(d) then
         error "degree must be even for groups of type \"O-\"";
      end if;
      trip := <12, d div 2, q>;
  else error type, d, q, "is not valid input for AutomorphismGroupSimpleGroup";
  end case;
  return AutomorphismGroupSimpleGroup(trip);
end intrinsic;

intrinsic AutomorphismGroupSimpleGroup(
               type :: MonStgElt, dq :: RngIntElt) -> GrpPerm
{A permutation representation of the exceptional, alternating or cyclic finite
simple group of degree dq or over the field of order dq}
  local trip;
  case type:
    when "A": trip := <17, dq, 0>;
    when "C": trip := <19, 0, dq>;
    when "G2": trip := <5, 0, dq>;
    when "Suz": trip := <11, 0, dq>;
    when "Sz": trip := <11, 0, dq>;
    when "2B2": trip := <11, 0, dq>;
    when "TB2": trip := <11, 0, dq>;
    when "Ree": trip := <14, 0, dq>;
    when "R": trip := <14, 0, dq>;
    when "2G2": trip := <14, 0, dq>;
    when "TG2": trip := <14, 0, dq>;
    when "3D4": trip := <13, 0, dq>;
    when "TD4": trip := <13, 0, dq>;
    when "F4": trip := <6, 0, dq>;
    when "E6": trip := <7, 0, dq>;
    when "2F4": trip := <15, 0, dq>;
    when "TF4": trip := <15, 0, dq>;
  else error type, dq, "is not valid input for AutomorphismGroupSimpleGroup";
  end case;
  return AutomorphismGroupSimpleGroup(trip);
end intrinsic;

intrinsic AutomorphismGroupSimpleGroup(ident :: MonStgElt) -> GrpPerm
{A permutation representation of the exceptional, alternating or cyclic finite
simple group defined by type q}
  local trip, dq;
  if ident[1] eq "A" then
    dq := StringToInteger(Substring(ident,2,#ident-1));
    trip := <17, dq, 0>;
  elif ident[1] eq "C" and
                 ident[2] in {"1","2","3","4","5","6","7","8","9"} then 
    dq := StringToInteger(Substring(ident,2,#ident-1));
    trip := <19, 0, dq>;
  else
    case ident:
      when "M11": trip := <18, 1, 0>;
      when "M12": trip := <18, 2, 0>;
      when "M22": trip := <18, 3, 0>;
      when "M23": trip := <18, 4, 0>;
      when "M24": trip := <18, 5, 0>;
      when "J1": trip := <18, 6, 0>;
      when "HS": trip := <18, 7, 0>;
      when "J2": trip := <18, 8, 0>;
      when "HJ": trip := <18, 8, 0>;
      when "McL": trip := <18, 9, 0>;
      when "Suz": trip := <18, 10, 0>;
      when "J3": trip := <18, 11, 0>;
      when "Co1": trip := <18, 12, 0>;
      when "Co2": trip := <18, 13, 0>;
      when "Co3": trip := <18, 14, 0>;
      when "He": trip := <18, 15, 0>;
      when "Fi22": trip := <18, 16, 0>;
      when "F22": trip := <18, 16, 0>;
      when "Fi23": trip := <18, 17, 0>;
      when "F23": trip := <18, 17, 0>;
      when "Fi24": trip := <18, 18, 0>;
      when "F24": trip := <18, 18, 0>;
      when "Ru": trip := <18, 20, 0>;
      when "ON": trip := <18, 21, 0>;
      when "HN": trip := <18, 23, 0>;
    else error ident, "is not valid input for AutomorphismGroupSimpleGroup";
    end case;
  end if;
  return AutomorphismGroupSimpleGroup(trip);
end intrinsic;
