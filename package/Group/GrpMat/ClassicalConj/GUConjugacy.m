freeze;

// Title: Conjugacy Classes in Finite Unitary Groups
// Full documentation in the file: GUConjugacy.pdf
// Author: Don Taylor
// Project start: January 2018
// ====================================================
/*
    $Id: GUConjugacy.m 56619 2018-03-15 05:53:52Z don $
*/
//==============================================================================
import "common.m" : centralJoin, convert;

//==============================================================================
intrinsic TildeDualPolynomial( f::RngUPolElt ) -> RngUPolElt
{ The twisted dual of the polynomial f }
  eseq := Coefficients(f);
  a0 := eseq[1];
  require a0 ne 0 : "Polynomial must have non-zero constant term";
  K := CoefficientRing(f);
  flag, q := IsSquare(#K);
  require flag : "Field size must be a square";
  cseq := [e^q : e in eseq ];
  return cseq[1]^-1 * Parent(f)!Reverse(cseq);
end intrinsic;
//------------------------------------------------------------------------------


//==============================================================================
intrinsic TildeIrreduciblePolynomials( q::RngIntElt, d::RngIntElt ) -> SeqEnum
{All monic polynomials of degree d with no proper
 tilde-symmetric factors}
  K := GF(q^2);
  P := PolynomialRing(K);

  xi := PrimitiveElement(K)^(q-1);
  if d eq 1 then return [P| P.1-xi^i : i in [0..q] ]; end if;
  m := d div 2;
  if IsEven(d) then
     pols := (m eq 1) select [P| P.1-a : a in K | a ne 0 ]
       else AllIrreduciblePolynomials(K,m);
     pols := Setseq({ h*hh : h in pols | h ne hh where hh is TildeDualPolynomial(h) });
  else // d is odd
    pols := [P| ];
    V := VectorSpace(K,m);

    for i := 0 to q do
      a0 := xi^i;
      for v in V do
        eseq := [a0] cat Eltseq(v);
        eseq cat:= [a0*eseq[m+1-j]^q : j in [0..m-1]] cat [K!1];
        f := P!eseq;
        if IsIrreducible(f) then Append(~pols,f); end if;
      end for;
    end for;
  end if;
  return pols;
end intrinsic;
//------------------------------------------------------------------------------


//==============================================================================
intrinsic ClassInvariantsGU( d::RngIntElt, q::RngIntElt ) -> SeqEnum
{The sequence of conjugacy class invariants for the general
 unitary group GU(d,q)}

  Phi := &cat[ TildeIrreduciblePolynomials(q,i) : i in [1..d] ];
  parts := [ Partitions(i) : i in [1..d] ];

  previous := [ [] : n in [1..d]];

  for f in Phi do
    conj_inv := previous;
    for n in [0..d-1] do
      for i := 1 to (d-n) div Degree(f) do
        for conj_seq in ((n ne 0) select previous[n] else [[]]) do
          for lambda in parts[i] do
            Append( ~conj_inv[n+Degree(f)*i], conj_seq cat [<f,lambda>] );
          end for;
        end for;
      end for;
    end for;
    previous := conj_inv;
  end for;
  return [Sort(mu) : mu in conj_inv[d]];
end intrinsic;
//------------------------------------------------------------------------------

primaryTildeFactors := function(pif)
  P := Parent(pif[1][1]);
  pols := [P|  ];
  parts := [];
  duals := [P| ];
  j := 1;
  for i := 1 to #pif do
    f := pif[i][1]; ndx := pif[i][2];
    h := TildeDualPolynomial(f);
    if f eq h then
      if j eq 1 or pols[j-1] ne f then
        pols[j] := f;
        parts[j] := [];
        j +:= 1;
      end if;
      Append(~parts[j-1], ndx);
    elif f notin duals then // skip if in duals
      if IsEmpty(duals) or h ne duals[#duals] then
        Append(~duals,h);
        pols[j] := h*f;
        parts[j] := [];
        j +:= 1;
      end if;
      Append(~parts[j-1], ndx);
    end if;
  end for;
  return pols, parts;
end function;


//==============================================================================
intrinsic ConjugacyInvariantGU( g::GrpMatElt ) -> SeqEnum
{The conjugacy class invariant of the unitary matrix A}
  F := BaseRing(g);
  flag, q := IsSquare(#F);
  require flag : "field size must be a square";
  std, sigma := StandardHermitianForm(Nrows(g),F);
  require g*std*ConjugateTranspose(g,sigma) eq std :
    "matrix is not in the standard unitary group";
  pif := PrimaryInvariantFactors(g);
  pols, parts := primaryTildeFactors(pif);
  return Sort([<pols[i],Reverse(parts[i])> : i in [1..#pols]]);
end intrinsic;
//------------------------------------------------------------------------------

splitCompanion := function(h)
  d := Degree(h);
  A := CompanionMatrix(h);
  F := BaseRing(h);
  flag, q := IsSquare(#F); assert flag;
  Lambda, sigma := StandardHermitianForm(d,F);
  return GU(2*d,q)!DiagonalJoin(A,Lambda*ConjugateTranspose(A^-1,sigma)*Lambda);
end function;

evenCompanion := function( f )
  error if f ne TildeDualPolynomial(f), "polynomial must be ~symmetric";
  e := Degree( f ); assert IsEven(e);
  d := e div 2;
  F := BaseRing(f);
  flag, q := IsSquare(#F); assert flag;

  a0 := Coefficient(f,0);
  flag, b0 := Hilbert90(-1/a0,q); assert flag;
  bbar0 := b0^q;
  a := Coefficients( f )[2..d+1];
  b := [-a[i]*bbar0 : i in [1..d] ];
  C := ZeroMatrix( BaseRing(f), e, e );
  for i := 1 to d-1 do
    C[i,i+1] := 1;
    C[d+1,i+1] := b[i];
    C[d+i+1,d+i] := 1;
    C[e-i+1,e] := -b[i]^q/bbar0;
  end for;
  C[d,e] := 1/bbar0;
  C[d+1,1] := b0;
  C[d+1,e] := -b[d]^q/bbar0;
  return C;
end function;

oddCompanion := function( f )

  error if f ne TildeDualPolynomial(f), "polynomial must be ~symmetric";
  e := Degree( f ); assert IsOdd(e);
  F := BaseRing(f);
  flag, q := IsSquare(#F); assert flag;

  a0 := Coefficient(f,0);
  if e eq 1 then return Matrix(F,1,1, [-a0]); end if;
  d := e div 2;
  a := Coefficients( f );
  zeta := PrimitiveElement(F);
  F0 := sub<F | zeta^(q+1) >;

  if Evaluate(f,1) eq 0 then
    u := zeta^(q-1);
    flag, b0 := Hilbert90(u/a0,q); assert flag;
    bbar0 := b0^q;
    b := [ &+[ bbar0*a[j]/u^(i-j+2) : j in [1..i+1]] : i in [1..d] ];
  else
    u := 1;
    flag, b0 := Hilbert90(1/a0,q); assert flag;
    bbar0 := b0^q;
    b := [ &+[ bbar0*a[j] : j in [1..i+1]] : i in [1..d] ];
  end if;
  flag, c := NormEquation(F,F0!(b[d] + b[d]^q)); assert flag;
  C := ZeroMatrix( BaseRing(f), e, e );
  for i := 1 to d-1 do
    C[i,i+1] := 1;
    C[d+2,i+1] := b[i];
    C[d+i+2,d+i+1] := 1;
    C[e-i+1,e] := -b[i]^q/bbar0;
  end for;
  C[d,e] := 1/bbar0;
  C[d+1,d+1] := u;
  C[d+1,e] := -c^q/bbar0;
  C[d+2,d+1] := c*u;
  C[d+2,1] := b0;
  C[d+2,e] := -b[d]^q/bbar0;
  return C;
end function;

antidiagPerm := function(m1,m2)
  X := [ i : i in [1..m1] ] cat [ 2*m1+1+i : i in [1..m2] ] cat
      [ m1+1, 2*m1+m2+2 ] cat
      [ 2*m1+m2+2+i : i in [1..m2] ] cat [ m1+1+i: i in [1..m1] ];
  return Sym(2*m1+2*m2+2)!X;
end function;

uTransform := function( F,mA,mB )
  flag, q := IsSquare(#F); assert flag;
  zeta := PrimitiveElement(F);
  t := zeta/(zeta + zeta^q);
  e := IsOdd(q) select (q-1) div 2 else q-1;
  n := zeta^e;
  M := Matrix(F,2,2, [1,n, 1-t,-n*t]);
  Z := IdentityMatrix(F,mA+mB);
  return DiagonalJoin(<Z,M,Z>);
end function;

unitaryJoin := function(A,B)
  nA := Nrows(A); nB := Nrows(B);
  mA := nA div 2; mB := nB div 2;

  if nA eq 0 then return B; end if;
  if nB eq 0 then return A; end if;
  if nA eq 2*mA then return centralJoin(A,B); end if;
  if nB eq 2*mB then return centralJoin(B,A); end if;
  F := BaseRing(A);
  pi := antidiagPerm(mA,mB);
  C0 := DiagonalJoin(A,B);
  C := Matrix(F,n,n, [C0[i^pi,j^pi] : i,j in [1..n]]) where n is nA+nB;
  X := uTransform(F,mA,mB);
  return X*C*X^-1;
end function;

splitComponent := function( f, mu )
  factors := Factorisation(f);
  h := factors[1][1];
  assert f eq h*factors[2][1];
  X := ZeroMatrix( BaseRing(f), 0, 0 );
  for i in mu do
    X := centralJoin(X, splitCompanion(h^i));
  end for;
  return X;
end function;

nonsplitComponent := function(f,mu)
  assert IsIrreducible(f);
  d := Degree(f);
  X := ZeroMatrix( BaseRing(f), 0, 0 );
  for e in mu do
    X := IsEven(d*e) select unitaryJoin(X, evenCompanion(f^e))
                    else unitaryJoin(X, oddCompanion(f^e));
  end for;
  return X;
end function;


//==============================================================================
intrinsic RepresentativeMatrixGU( inv::SeqEnum[Tup] ) -> GrpMatElt
{ A representative matrix of the unitary conjugacy class with
  invariant inv }
  F := BaseRing(Parent(inv[1][1]));
  X := ZeroMatrix( F, 0, 0 );
  for polpart in inv do
    f, mu := Explode(polpart);
    X := IsIrreducible(f) select unitaryJoin(X, nonsplitComponent(f,mu))
                       else unitaryJoin(X, splitComponent(f,mu));
  end for;
  return GeneralUnitaryGroup(Nrows(X),F)!X;
end intrinsic;
//------------------------------------------------------------------------------


//==============================================================================
intrinsic ClassRepresentativesGU( d::RngIntElt, q::RngIntElt )
   -> SeqEnum, SeqEnum
{ Representatives for the conjugacy classes of the unitary
  group GU(d,q) and their invariants}
  inv := ClassInvariantsGU(d,q);
  return [ RepresentativeMatrixGU(mu) : mu in inv ], inv;
end intrinsic;
//------------------------------------------------------------------------------

A_fn := func< f, m, Q | IsIrreducible(f) select OrderGU(m,Q) else OrderGL(m,Q) >;

kappa := function(plist,d)
  val := 0;
  for mu in plist do
    e, m := Explode(mu);
    val +:= (e-1)*m^2;
  end for;
  for i := 1 to #plist-1 do
    e := plist[i][1];
    m := plist[i][2];
    val +:= &+[ 2*e*m*plist[j][2] : j in [i+1..#plist]];
  end for;
  return val*d;
end function;

B_fn := function(f,plist)
  flag, q := IsSquare(#BaseRing(f)); assert flag;
  d := Degree(f);
  return q^kappa(plist,d) * &*[A_fn(f,mu[2],q^d) : mu in plist];
end function;


//==============================================================================
intrinsic CentraliserOrderGU( mu::SeqEnum[Tup] ) -> RngIntElt
{The order of the centraliser of an element in the unitary
 group whose conjugacy invariant is mu}
 return &*[ B_fn(lambda[1],convert(lambda[2])) : lambda in mu ];
end intrinsic;
//------------------------------------------------------------------------------


//==============================================================================
intrinsic ClassesGU( d::RngIntElt, q::RngIntElt ) -> SeqEnum
{The conjugacy classes of GU(d,q)}
  ord := OrderGU(d,q);
  return Sort([car<Integers(),Integers(),GU(d,q)>|
    < Order(M), ord div CentraliserOrderGU(mu), M > :
        mu in ClassInvariantsGU(d,q) | true
        where M is RepresentativeMatrixGU(mu) ]);
end intrinsic;
//------------------------------------------------------------------------------

diagMatrixGU := function(n,q,r)
  F := GF(q^2);
  xi := PrimitiveElement(F);
  A := IdentityMatrix(F,n);
  A[1,1] := xi^r;
  A[n,n] := xi^(-q*r);
  return A;
end function;


//==============================================================================
intrinsic ExtendedSU( n::RngIntElt, q::RngIntElt, m::RngIntElt)
   -> GrpMat
{The subgroup of GU(n,q) that contains SU(n,q) as a subgroup
 of index m}
  require m gt 0 : "the index should be positive";
  if m eq 1 then G := SU(n,q);
  elif m eq q + 1 then G := GU(n,q);
  else
    divides, r := IsDivisibleBy(q + 1, m);
    require divides : "the index should divide q + 1";
    G := sub< GU(n,q) | SU(n,q), diagMatrixGU(n,q,r) >;
    G`Order := OrderSU(n,q) * m;
  end if;
  return G;
end intrinsic;
//------------------------------------------------------------------------------


//==============================================================================
intrinsic IndexOfSU( G::GrpMat ) -> RngIntElt
{The index of the special unitary group in G}
  F := BaseRing(G);
  require ISA(Type(F), FldFin) : "the base field should be finite";
  require IsUnitaryGroup(G) : "G should contain the special unitary
    group and be a subgroup of the general unitary group";
  return LCM([Order(Determinant(g)) : g in Generators(G)]);
end intrinsic;
//------------------------------------------------------------------------------

ClassInvDeterminant := func< mu |
  &*[ ((-1)^Degree(f)*Coefficient(f,0))^&+pi
  where f is pt[1] where pi is pt[2] : pt in mu ]>;

CentOrderModSU := func< q,mu | (q+1) div GCD(Append(Flat([pt[2] :
  pt in mu ]),q+1)) >;


//==============================================================================
intrinsic ClassInvariantsExtSU( d::RngIntElt, q::RngIntElt, m::RngIntElt )
  -> SeqEnum
{The sequence of conjugacy class invariants for the subgroup of
 GU(d,q) containing SU(d,q) as a subgroup of index m}
  flag, k := IsDivisibleBy( q+1, m );
  error if not flag, "m must divide q+1";
  F := GF(q^2);
  xi := PrimitiveElement(F)^(q-1);

  cGU := ClassInvariantsGU( d, q );
  if m eq q + 1 then return [ <mu,1> : mu in cGU ]; end if;
  conj_inv := [];
  for mu in cGU do
    if ClassInvDeterminant(mu)^m eq 1 then
      r := (q+1) div LCM(m,CentOrderModSU(q,mu));
      for i := 0 to r-1 do
        Append( ~conj_inv, <mu,i> );
      end for;
    end if;
  end for;
  return conj_inv;
end intrinsic;
//------------------------------------------------------------------------------


//==============================================================================
intrinsic RepresentativeMatrixExtSU( inv::Tup ) -> GrpMatElt
{Given an extended conjugacy invariant, return a matrix which
 represents the conjugacy class in ExtSU}
  mu, a := Explode(inv);
  M := RepresentativeMatrixGU(mu);
  F := BaseRing(M);
  flag, q := IsSquare(#F); assert flag;
  n := Nrows(M);
  if a ne 0 then
    eta := PrimitiveElement(F)^a;
    D := IdentityMatrix(F,n);
    D[1,1] := eta^q;
    D[n,n] := eta^-1;
    R := Parent(M)!(D^-1*M*D);
  else
    R := M;
  end if;
  return R;
end intrinsic;
//------------------------------------------------------------------------------


//==============================================================================
intrinsic ClassRepresentativesSU( d::RngIntElt, q::RngIntElt )
   -> SeqEnum, SeqEnum
{ Representatives for the conjugacy classes of the special
  unitary group SU(d,q) and their invariants}
  allinv := ClassInvariantsExtSU(d,q,1);
  return [ RepresentativeMatrixExtSU(inv) : inv in allinv ], allinv;
end intrinsic;
//------------------------------------------------------------------------------


//==============================================================================
intrinsic ClassesExtSU( d::RngIntElt, q::RngIntElt, m::RngIntElt ) -> SeqEnum
{The conjugacy classes of the extended special unitary group
 ExtSL(d,q,m)}
  G := ExtendedSU(d,q,m);
  ord := OrderGU(d,q);
  cl := [car<Integers(),Integers(),G>|];
  for inv in ClassInvariantsExtSU(d,q,m) do
    mu := inv[1];
    M := G!RepresentativeMatrixExtSU(inv);
    len := (ord*LCM(m,CentOrderModSU(q,mu))) div
           (CentraliserOrderGU(mu)*(q+1));
    Append(~cl, < Order(M), len, M > );
  end for;
  return cl;
end intrinsic;
//------------------------------------------------------------------------------


//==============================================================================
intrinsic InternalClassesExtendedSU( G::GrpMat ) -> BoolElt
{Internal function: attempt to assign the conjugacy classes
 of the extended special unitary group. Return true if
 successful}
  if not (ISA(Type(BaseRing(G)), FldFin) and IsUnitaryGroup(G)) then
    vprint Classes: "Extended unitary tried and failed";
    return false;
  end if;

  if not assigned G`Classes then
    m := LCM([Order(Determinant(g)) : g in Generators(G)]);
    d := Degree(G);
    flag, q := IsSquare(#BaseRing(G)); assert flag;
    vprint Classes: "assigning unitary classes";
    G`Classes := ClassesExtSU(d,q,m);
  end if;
  return true;
end intrinsic;
//------------------------------------------------------------------------------

