freeze;

/*
  Extracted from RowRed.tex by MagmaCode 2.1 on Fri Feb 22 00:59:07 2019

  An alternative implementation of the internal function WeightBase 
  (defined in RowRed.m).

  February 2019 Don Taylor

  $Id: Weights.m 58292 2019-02-22 04:02:49Z don $

*/

declare attributes Map: ContravariantForm, WeightFrame;
declare verbose Weights, 3;

//==============================================================================
intrinsic TheWeightSpaces( Q::SeqEnum[AlgMatElt] : U := BaseModule(Universe(Q)) )
      -> SeqEnum[SeqEnum], SeqEnum[PowModTupRng]
{The common eigenspaces of a sequence of commuting matrices}
  A := Universe( Q );
  k := BaseRing( A );
  V := BaseModule( A );

  K := (k cmpeq Rationals() or ISA(Type(k),FldAlg))
    select SplittingField( [ CharacteristicPolynomial(M) : M in Q ] )
      else SplittingField( { CharacteristicPolynomial(M) : M in Q } );

  if k ne K then
    Q := [ ChangeRing(M,K) : M in Q ];
    U := ChangeRing(U,K);
    V := ChangeRing(V,K);
  end if;

    restriction := func< M, S | Solution(T,T*M) where T is Matrix(Basis(S)),
          func< v | &+[ v[i]*V!(S.i) : i in [1..Dimension(S)] ] > >;

  spaces := [* U *];
  eigvals := [ [] ];
  for M in Q do
    spaces_ := [* *];
    eigvals_ := [];
    for i := 1 to #spaces do
      ev := eigvals[i];
      X, h := restriction(M,spaces[i]);
      for e in Eigenvalues(X) do
        Append(~spaces_,
          sub<V| [h(b) : b in Basis(Eigenspace(X,e[1]))]>);
        Append(~eigvals_, ev cat [e[1]]);
      end for;
    end for;
    spaces := spaces_;
    eigvals := eigvals_;
  end for;
  return eigvals, spaces;
end intrinsic;
//------------------------------------------------------------------------------


//==============================================================================
intrinsic ContravariantFormSpace(rho::Map[GrpLie,GrpMat])
 -> ModMatGrp, ModGrp, ModGrp
{The space of contravariant forms on the image of rho}
  G := Domain(rho);

  RD := RootDatum(G);
  ell := Rank(RD); // "SemisimpleRank(G)"
  B := Basis(BaseRing(G));
  N := NumPosRoots(RD);
  X := [ rho(elt<G|<i,a>>) : a in B, i in [1..ell] ];
  Xm := [ rho(elt<G|<N+i,a>>) : a in B, i in [1..ell] ];
  I := Generic(Image(rho));
  M := GModule(sub< I | [g : g in X cat Xm ] >);
  D := GModule(sub< I | [Transpose(g) : g in Xm cat X ] >);
  return AHom(M,D), M, D;
end intrinsic;
//------------------------------------------------------------------------------


//==============================================================================
intrinsic ContravariantForm(rho::Map[GrpLie,GrpMat]) -> AlgMatElt
{The contravariant form for the image of the matrix
 representation f of a group of Lie type}
  if assigned rho`ContravariantForm then return rho`ContravariantForm; end if;
  E := ContravariantFormSpace(rho);
  K := BaseRing(E);
  n := Dimension(Codomain(rho));
  A := MatrixAlgebra(K,n);
  B := Basis(E);
  b := #B;
  vprint Weights,1 : "Contravariant form space dimension =",b;

  if b eq 1 then
    rho`ContravariantForm := A!B[1];
    return rho`ContravariantForm;
  end if;

  if Characteristic(K) eq 2 then
    Q := Matrix(K,b,b,[Coordinates(E,Transpose(J)) : J in B]);
    Z := Eigenspace(Q,1);
    Bsym := [ &+[ Eltseq(Z.j)[i]*Matrix(B[i]) : i in [1..b]] : j in [1..Dimension(Z)]];
  else
    B := [Matrix(J) : J in B];
    Bsym := {@ @};
    for J in B do
      JT := Transpose(J);
      if J eq JT then
        Include(~Bsym,J);
      else
        Jsym := J + JT;
        if Jsym ne 0 then Include(~Bsym,Jsym); end if;
      end if;
    end for;
    Bsym := Basis(sub<E|Bsym>);
  end if;
  if #Bsym eq 1 then
    rho`ContravariantForm := A!Bsym[1];
    return rho`ContravariantForm;
  end if;

  BSym := [ J : J in Bsym | Rank(J) ne 1 ];
  ranks := { Rank(J) : J in Bsym } diff {n};
  if not IsEmpty(ranks) then
    ndx := Index([Rank(J) : J in Bsym], Min(ranks));
    rho`ContravariantForm := A!Bsym[ndx];
    return rho`ContravariantForm;
  end if;
  C := Matrix(Bsym[1]*Bsym[2]^-1);
  evs := Eigenvalues(C);
  if not IsEmpty(evs) then
    c := Rep(evs)[1];
    J := Bsym[1] - c*Bsym[2];
    rho`ContravariantForm := A!J;
    return rho`ContravariantForm;
  else
    error "Contravariant form not found";
  end if;
end intrinsic;
//------------------------------------------------------------------------------


//==============================================================================
intrinsic FrameBase(R::RootDtm, lambda::ModTupFldElt) -> SeqEnum,SeqEnum,SeqEnum
{Construct a frame base for the root datum R and weight
 vector lambda in the root lattice}
 require not IsZero(lambda) : "the weight should be nonzero";
 n := Rank(R); // Semisimple rank
 C := ChangeRing(CartanMatrix(R),Rationals());

 wts := [ lambda ];
 j := 1;
 S := CoxeterGroup(GrpFPCox,R);
 action := [One(S)];
 K := [1..n];
 J := [s : s in K | lambda[s] eq 0];
 Q := [K,J];
 T := { s : s in K | s notin J };
 while not IsEmpty(J) do
   if exists(r,mu){ <r,mu> : r in T | exists{ s : s in J | mu[s] ne 0 }
     where mu is wts[j] - wts[j][r]*C[r]} then

     Append(~wts,mu);
     Append(~action,action[j]*S.r);
     K := J;
     J := [s : s in J | C[r,s] eq 0];
     Append(~Q,J);
     Exclude(~T,r);
   else
     j +:= 1;
     T := { s : s in K | s notin J };
   end if;
 end while;
 return wts, action, Q;
end intrinsic;
//------------------------------------------------------------------------------


//==============================================================================
intrinsic FrameBase(R::RootDtm, lambda::SeqEnum) -> SeqEnum,SeqEnum,SeqEnum
{"}
 return FrameBase(R,Vector(Rationals(),lambda));
end intrinsic;
//------------------------------------------------------------------------------


//==============================================================================
intrinsic DominantWt( R::RootDtm, lambda::ModTupFldElt : J := [1..Rank(R)] )
   -> ModTupFldElt
{The unique dominant weight in the orbit of lambda (given in
 the weight basis) under the action of the parabolic subgroup
 W_J of the Weyl group W of the root datum R}
  C := ChangeRing(CartanMatrix(R),Rationals());
  S := CoxeterGroup(GrpFPCox,R);
  w := One(S);
  while exists(i){ i : i in J | lambda[i] lt 0 } do
    w *:= S.i;
    lambda -:= lambda[i]*C[i];
  end while;
  return lambda, w;
end intrinsic;
//------------------------------------------------------------------------------


//==============================================================================
intrinsic WtOrbit(R::RootDtm,lambda::ModTupFldElt : J := [1..Rank(R)])
   -> SetIndx, SeqEnum
{The orbit of lambda (given in the weight basis) under the
 action of the Weyl group W. The second return value is the
 corresponding sequence of Weyl group words. If the parameter J
 is supplied, the parabolic subgroup W_J is used in place of W}
 C := ChangeRing(CartanMatrix(R),Rationals());
 S := CoxeterGroup(GrpFPCox,R);
 if IsZero(lambda) then return {@ lambda @}, [Id(S)]; end if;

 lambda := DominantWt(R,lambda  : J := J);
 current := {@ lambda @};
 thisAction := [ One(S) ];
 T := {@ @};  A := [ ];
 repeat
   previous := current;
   T join:= current;
   current := {@ @};
   lastAction := thisAction;
   A cat:= thisAction;
   thisAction := [ ];
   for k := 1 to #previous do
     mu := previous[k];
     K := { j : j in J | mu[j] lt 0 };
     for i in J do
       if mu[i] gt 0 and forall{ j : j in K | j le i
                     or mu[j] ge C[i,j]*mu[i] } then
         Include(~current, mu - mu[i]*C[i]);
         Append(~thisAction, lastAction[k]*S.i);
       end if;
     end for;
   end for;
 until IsEmpty(current);
 return T, A;
end intrinsic;
//------------------------------------------------------------------------------


//==============================================================================
intrinsic WtOrbit(R::RootDtm,lambda::SeqEnum : J := [1..Rank(R)]) -> SetIndx, SeqEnum
  { " }
 return WtOrbit(R, Vector(Rationals(),lambda) : J := J);
end intrinsic;
//------------------------------------------------------------------------------


//==============================================================================
intrinsic UnipotentFixedSpace(rho::Map[GrpLie,GrpMat]) -> ModTupRng
{The space of fixed points of the unipotent radical of the
 standard Borel subgroup acting on the image of rho}
  L := Domain(rho);
  ell := SemisimpleRank(L);
  B := Basis(BaseRing(L));
  X := [ rho(elt<L|<i,b>>) : b in B, i in [1..ell] ];
  E := &meet[Eigenspace(u,1) : u in X];
  if Dimension(E) gt 1 then
    pos := PositiveRoots(L : Basis := "Root");
    ndx := [ i : i in [ell+1..#pos] | #Support(pos[i]) eq 2 ];
    for j in ndx do
      E meet:= &meet[ Eigenspace(rho(elt<L|<j,b>>),1) : b in B ];
      if Dimension(E) eq 1 then break; end if;
    end for;
  end if;
  return E;
end intrinsic;
//------------------------------------------------------------------------------

highestWeight2 := function(rho)
  G := Domain(rho);
  ell := SemisimpleRank(G);
  fixU := UnipotentFixedSpace(rho);
  N := NumPosRoots(G);
  if Dimension(fixU) ne 1 then
    J := ContravariantForm(rho);
    V := VectorSpace(BaseRing(J),Nrows(J),J);
    R0 := NullSpace(J);
    pos := PositiveRoots(G : Basis := "Root");
    ndx := [ i : i in [1..N] | #Support(pos[i]) le 2 ];
    E := &meet[ Eigenspace(rho(elt<G|<N+j,1>>),1) : j in ndx ];
    assert exists(w){ w : w in fixU | w notin R0 and w notin E
      and DotProduct(V!w,V!w) ne 0};
    lambda := [ (w*rho(elt<G|<N+i,1>>) - w in R0) select 0 else 1 : i in [1..ell]];
  else
    w := fixU.1;
    lambda := [ (w*rho(elt<G|<N+i,1>>) eq w) select 0 else 1 : i in [1..ell]];
  end if;
  return VectorSpace(Rationals(),ell)!lambda, w;
end function;


//==============================================================================
intrinsic HighestWeight(rho::Map[GrpLie,GrpMat]) -> ModTupRngElt, ModTupRngElt
{}
  G := Domain(rho);
  K := BaseRing(G);

  require IsFinite(K) : "The base ring must be finite";

  if #K eq 2 then
    require K eq BaseRing(Codomain(rho)):
    "The representation must be over the base ring of the group";
    return highestWeight2(rho);
  end if;

  xi := PrimitiveElement(K);
  ell := SemisimpleRank(G);

  torus := [ Matrix(rho(TorusTerm(G,i,xi))) : i in [1..ell] ];
  fixU := UnipotentFixedSpace(rho);

  if Dimension(fixU) ne 1 then
    J := ContravariantForm(rho);
    R0 := NullSpace(J);

    evals, spaces := TheWeightSpaces(torus : U := fixU);
    assert exists(r){ r : r in [1..#spaces] | spaces[r] notsubset R0 };
    eigenvals := evals[r];
    assert exists(w){ w : w in spaces[r] | w notin R0 };
  else
    w := fixU.1;
    R0 := sub<Generic(fixU)|0>;
    j := Depth(w); // the index of the first non-zero entry
    eigenvals := [ (w*torus[i])[j]*w[j]^-1 : i in [1..ell] ];
  end if;

  lambda := [Log(xi,K!x) : x in eigenvals];

  N := NumPosRoots(G);
  q0 := #K - 1;
  for i := 1 to ell do
    if lambda[i] eq 0 then
      g := rho(elt<G|<N+i,xi>>);
      if w^g - w notin R0 then lambda[i] := q0; end if;
    end if;
  end for;
  return VectorSpace(Rationals(),ell)!lambda, w;
end intrinsic;
//------------------------------------------------------------------------------


//==============================================================================
intrinsic HighestWeight(t::MonStgElt,k::RngIntElt,q::RngIntElt,
  X::SeqEnum,Xm::SeqEnum) -> ModTupRngElt, ModTupRngElt
{Highest weight and maximal vector}
  G := GroupOfLieType(t cat IntegerToString(k),q : Isogeny := "SC");
  return HighestWeight( Morphism(G,X,Xm) );
end intrinsic;
//------------------------------------------------------------------------------

FrameRecord := recformat<
  wtBase : SeqEnum,    // "B"
  vecBase : SeqEnum,   // "vectB"
  wtOrbits : SeqEnum,  // "Orbits"
  vecOrbits : SeqEnum, // "vectOrbit"
  Weylgps : SeqEnum,   // "Ws"
  actions : SeqEnum,   // "Actions"
  w0J : SeqEnum,
  form : AlgMatElt >;  // "M"


//==============================================================================
intrinsic WeightFrameData(rho::Map[GrpLie,GrpMat]) -> Rec
{ Data needed for row reduction calculations }

 if assigned rho`WeightFrame then return rho`WeightFrame; end if;
 G := Domain(rho);
 I := Codomain(rho);

 R := RootDatum(G);

 lambda, v0 := HighestWeight(rho);
 orbit, action := WtOrbit(R,lambda);
 vecOrbit := [ v0^rho(elt<G|a>) : a in action ];

 wtBase, act, Jchain := FrameBase(R,lambda);
 vecBase := [ v0^rho(elt<G|a>) : a in act ];
 k := #wtBase;

 W := CoxeterGroup(R);
 Weylgps := [ ReflectionSubgroup(W, J) : J in Jchain ];

 longelts := [LongestElement(Q) : Q in Weylgps];
 w0J := [longelts[i-1]^-1 * longelts[i] : i in [2..#longelts]];

 wtOrbits := [ orbit ];
 vecOrbits := [ vecOrbit ];
 actions := [ [Eltseq(a) : a in action] ];
 for i := 2 to k do
   orbit, action := WtOrbit(R, wtBase[i] : J := Jchain[i]);
   Append( ~wtOrbits, orbit );
   Append( ~vecOrbits, [ vecBase[i]^rho(elt<G|a>) : a in action ] );
   Append( ~actions, [Eltseq(a) : a in action] );
 end for;

 rho`WeightFrame := rec< FrameRecord |
   wtBase := wtBase,
   vecBase := vecBase,
   wtOrbits := wtOrbits,
   vecOrbits := vecOrbits,
   Weylgps := Weylgps,
   actions := actions,
   w0J := w0J,
   form := ContravariantForm(rho) >;
 return rho`WeightFrame;
end intrinsic;
//------------------------------------------------------------------------------

weightBase := function( rho )
  if (not assigned rho`WeightBase_B) then
    r := WeightFrameData(rho);
    rho`WeightBase_B          := r`wtBase;
    rho`WeightBase_vectB      := r`vecBase;
    rho`WeightBase_vectOrbit  := r`vecOrbits[1];
    rho`WeightBase_Orbits     := r`wtOrbits;
    rho`WeightBase_J          := [];
    rho`WeightBase_Ws         := r`Weylgps;
    rho`WeightBase_Actions    := r`actions;
    rho`WeightBase_M          := r`form;
    rho`WeightBase_WeylMxs    := [];
  end if;
  return rho`WeightBase_B,
    rho`WeightBase_vectB,
    rho`WeightBase_vectOrbit,
    rho`WeightBase_Orbits,
    rho`WeightBase_J,               // NOT USED
    rho`WeightBase_Ws,
    rho`WeightBase_Actions,
    rho`WeightBase_M,
    rho`WeightBase_WeylMxs;         // NOT USED
end function;

