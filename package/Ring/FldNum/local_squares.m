freeze;

declare attributes RngOrd:
  LocalSquareClasses;

// The quadratic defect as defined by O. T. O'Meara in "Introduction to quadratic forms", Springer, 1973.

intrinsic QuadraticDefect(a::RngElt, p::RngOrdIdl) -> RngIntElt
{Returns the valuation of the quadratic defect of a at the prime ideal p}
  R:= Order(p);
  require IsPrime(p) and IsMaximal(R): "The second argument must be a prime ideal of a maximal order";
  ok, a:= IsCoercible(NumberField(R), a);
  require ok : "The first argument must be in the order of the second argument";

  if IsZero(a) then return Infinity(); end if;
  v:= Valuation(a, p);
  if IsOdd(v) then return v; end if;    // trivial

  pi:= PrimitiveElement(p);
  a /:= pi^v;
  k, h:= ResidueClassField(p);
  ok, s:= IsSquare(h(a));

  if Minimum(p) ne 2 then
    return ok select Infinity() else v;
  end if;

  // The case 2 \in p:
  // make a of the form 1 + eps*pi^w, then try to increase w if necessary.
  assert ok;
  a /:= (s @@ h)^2;
  w:= Valuation(a-1, p);
  assert w ge 1;
  ee:= 2*Valuation(Order(p) ! 2, p);

  // If 1 < w < 2e is even, we can lift once more, see O'Meara 63:2.
  while w lt ee and IsEven(w) do
    s:= SquareRoot(h((a - 1) / pi^w));
    a /:= (1+(s@@h)*pi^(w div 2))^2;
    w:= Valuation(a-1, p);
  end while;

  // The following line is O'Meara 63:3 (w==ee) and 63:5 (ww<ee).
  return (w gt ee) or (w eq ee and not IsIrreducible(Polynomial([k | ((a-1)/4) @ h, 1, 1]))) select Infinity() else v+w;
end intrinsic;

intrinsic QuadraticDefect(a::FldRatElt, p::RngIntElt) -> RngIntElt
{"} //"
  require p ge 2 and IsPrime(p: Proof:= false) : "The second argument must be prime";
  if IsZero(a) then return Infinity(); end if;
  v:= Valuation(a, p);
  if IsOdd(v) then return v; end if;
  a/:= p^v;
  a:= Numerator(a)*Denominator(a);
  if p ne 2 then
    return KroneckerSymbol(a, p) eq 1 select Infinity() else v;
  end if;
  return case< a mod 8 | 1: Infinity(), 5: v+2, default: v+1 >;
end intrinsic;

intrinsic QuadraticDefect(a::RngIntElt, p::RngIntElt) -> RngIntElt
{"} //"
  return QuadraticDefect(a/1, p);
end intrinsic;

intrinsic RelativeQuadraticDefect(a::RngElt, p::RngOrdIdl) -> RngIntElt
{Returns the valuation of the relative quadratic defect of a at the prime ideal p}
  q := QuadraticDefect(a, p);
  return Type(q) eq Infty select q else q - Valuation(a, p);
end intrinsic;

intrinsic RelativeQuadraticDefect(a::FldRatElt, p::RngIntElt) -> RngIntElt
{"} //"
  q := QuadraticDefect(a, p);
  return Type(q) eq Infty select q else q - Valuation(a, p);
end intrinsic;

intrinsic RelativeQuadraticDefect(a::RngIntElt, p::RngIntElt) -> RngIntElt
{"} //"
  q := QuadraticDefect(a, p);
  return Type(q) eq Infty select q else q - Valuation(a, p);
end intrinsic;



// Decide if a is a square in the completion at p

intrinsic IsLocalSquare(a::RngElt, p::RngOrdIdl) -> BoolElt
{Returns true if a is a square in the completion at the prime ideal p}
  R:= Order(p);
  require IsPrime(p) and IsMaximal(R): "The second argument must be a prime ideal of a maximal order";
  ok, a:= IsCoercible(NumberField(Order(p)), a);
  require ok : "The first argument must be in the order of the second argument";
  return Type(QuadraticDefect(a,p)) eq Infty;
end intrinsic;

intrinsic IsLocalSquare(a::FldRatElt, p::RngIntElt) -> BoolElt
{"} //"
  require p ge 2 and IsPrime(p: Proof:= false) : "The second argument must be prime";
  return Type(QuadraticDefect(a,p)) eq Infty;
end intrinsic;

intrinsic IsLocalSquare(a::RngIntElt, p::RngIntElt) -> BoolElt
{"} //"
  require p ge 2 and IsPrime(p: Proof:= false) : "The second argument must be prime";
  return Type(QuadraticDefect(a,p)) eq Infty;
end intrinsic;

// Local units modulo squares

// Helper function to ensure x is non-zero.
function forcenonzero(x)
  error if x eq 0, "element must be non-zero";
  return x;
end function;

// Helper function to find y such that xy^2 is integral and Valuation(xy^2, p) = 0
function SquareRepNice(x, p, piinv)
  x *:= Denominator(x)^2;
  v:= Valuation(x, p);
  assert v ge 0 and IsEven(v);
  if v ne 0 then x *:= piinv^v; end if;
  return Order(p) ! x;
end function;

intrinsic LocalMultiplicativeGroupModSquares(p::RngOrdIdl) -> ModFld, Map
{Given a prime ideal over some number field K, this returns a vector space
 over GF(2) isomorphic to K_p^/(K_p^*)^2 and a map representing the isomorphism}
  R:= Order(p);
  require IsPrime(p) and IsMaximal(R): "The ideal must be prime ideal of a maximal order";
  K:= NumberField(R);
  if Minimum(p) ne 2 then
    pi:= PrimitiveElement(p);
    k, h:= ResidueClassField(p);
    e:= Nonsquare(k) @@ h;
    V:= VectorSpace(GF(2), 2);
    m:= map< V -> K |
      x :-> (x[1] eq 0 select 1 else e) * (x[2] eq 0 select 1 else pi),
      y :-> [ IsSquare((y/pi^v) @ h) select 0 else 1, v] where v:= Valuation(forcenonzero(y), p)
    >;
    return V, m;
  else
    if not assigned R`LocalSquareClasses then R`LocalSquareClasses:= AssociativeArray(); end if;
    ok, m:= IsDefined(R`LocalSquareClasses, p);
    if not ok then
      if not IsAbsoluteOrder(R) then
        p:= AbsoluteOrder(R) !! p;
      end if;
      pi:= PrimitiveElement(p);
      e:= RamificationDegree(p);
      dim:= Valuation(Norm(p), 2)*e+2;
      V:= VectorSpace(GF(2), dim);
      I:= p^(2*e+1);
      Q, h:= quo< Order(I) | I >;
      U, g:= UnitGroup(Q);      // fails for non-absolute orders
      M, i:= quo< U | 2*U >;
      assert #M eq 2^(dim-1);
      piinv:= WeakApproximation([p], [-1]);
      m:= map< V -> K | x :-> ((M ! ChangeUniverse(Eltseq(x)[1..dim-1], Integers())) @@ i @ g @@ h) * (x[dim] eq 0 select 1 else pi),
                        y :-> Append(Eltseq(SquareRepNice(y * pi^v, p, piinv) @@ g @ i), v) where v:= Valuation(y, p) mod 2 >;
      R`LocalSquareClasses[p]:= m;
    end if;
    return Domain(m), m;
  end if;
end intrinsic;

intrinsic LocalMultiplicativeGroupModSquares(p::RngIntElt) -> ModFld, Map
{"} //"
  require IsPrime(p: Proof:= false) and p ge 2: "The argument must be prime";
  if p ne 2 then
    e:= Integers() ! Nonsquare(GF(p));
    V:= VectorSpace(GF(2), 2);
    m:= map< V -> Rationals() |
      x :-> (x[1] eq 0 select 1 else e) * (x[2] eq 0 select 1 else p),
      y :-> [ KroneckerSymbol( Integers(p) ! (y/p^v) ) eq 1 select 0 else 1, v] where v:= Valuation(forcenonzero(y), p)
    >;
  else
    V:= VectorSpace(GF(2), 3);
    R:= Integers(8);
    m:= map< V -> Rationals() |
      x :-> (x[1] eq 0 select 1 else 3) * (x[2] eq 0 select 1 else -1) * (x[3] eq 0 select 1 else 2),
      y :-> case< R ! (y/p^v) | R!1: [0,0], R!3: [1,0], R!-1:[0,1], default: [1,1] > cat [ v ] where v:= Valuation(forcenonzero(y), p)
    >;
  end if;
  return V, m;
end intrinsic;

intrinsic UnitSquareClassReps(p::RngOrdIdl) -> []
{Given a prime ideal of some number ring return a system
 of representatives of the units in R_p^* modulo squares}
  V, h:= LocalMultiplicativeGroupModSquares(p);
  U:= sub< V | [V.i: i in [1..Dimension(V)-1]] >;
  return [ Order(p) | u @ h : u in U ];
end intrinsic;

intrinsic UnitSquareClassReps(p::RngIntElt) -> []
{"}//"
  require IsPrime(p) and p ge 2: "The argument must be a prime";
  V, h:= LocalMultiplicativeGroupModSquares(p);
  U:= sub< V | [V.i: i in [1..Dimension(V)-1]] >;
  return [ Integers() | u @ h : u in U ];
end intrinsic;

intrinsic NiceUnitSquareClassRepresentative(u::RngElt, p::RngOrdIdl) -> RngElt
{Given an element u of some number field K and a maximal ideal p of the ring of
 integers of K, find an element v in K such that u and v lie in the same square
 class in the completion at p and v-1 generates the quadratic defect of u}
  R:= Order(p);
  require IsPrime(p) and IsMaximal(R): "The second argument must be a prime ideal of a maximal order";
  K:= NumberField(R);
  ok, u:= IsCoercible(K, u);
  require ok : "Incompatible arguments";
  require Valuation(u, p) eq 0 : "The element is not a local unit";

  if Minimum(p) ne 2 then
    return IsLocalSquare(u,p) select R ! 1 else u;
  end if;

  k,h:= ResidueClassField(p);
  ok, s := IsSquare(h(u));
  assert ok;
  u := u / (s @@ h)^2;
  assert IsOne(h(u));
  e:= Valuation(R ! 2, p);
  pi:= PrimitiveElement(p);

  val := Valuation(u-1, p);
  while val lt 2*e do
    if IsOdd(val) then return u; end if;
    ok, s:= IsSquare(h((u - 1) / pi^val)); assert ok;
    u /:= (1+(s@@h)*pi^(val div 2))^2;
    val := Valuation(u-1, p);
  end while;

  return val eq 2*e and IsIrreducible(Polynomial([k | ((u-1)/4) @ h, 1, 1])) select u else R ! 1;
end intrinsic;

// that is slightly silly...
intrinsic NiceUnitSquareClassRepresentative(u::RngElt, p::RngIntElt) -> RngElt
{"} //"
  require IsPrime(p) and p ge 2: "The second argument must be prime";
  ok, u:= IsCoercible(Rationals(), u);
  require ok : "Incompatible arguments";
  require Valuation(u, p) eq 0 : "The element is not a local unit";

  return IsLocalSquare(u,p) select 1/1 else u;  
end intrinsic;
