freeze;

/********************************************************

       LPolynomial / ZetaFunction (top level)

********************************************************/

import "../CrvHyp/curve.m" : LPolynomialOld, NaiveEulerFactor;

declare verbose ZetaFunction, 1; 

declare attributes Crv : LPolynomial;


function check_lpol(l,q)
  // Test (using exact arithmetic) whether the polynomial l
  // has roots of absolute value q^(-1/2).

  x := PolynomialRing(RationalField()).1;
  f := Evaluate(l,x)*Evaluate(l,-x);
  g := Polynomial([Coefficient(f,2*i) : i in [0..Degree(l)]]);
  g := Evaluate(g,x/q);

  return HasAllRootsOnUnitCircle(g);
end function;

function cache(C, l)
  check := check_lpol(l, #BaseRing(C));
  error if not check,
    "LPolynomial not computed correctly, " *
    "please report to magma-bugs@maths.usyd.edu.au";

  C`LPolynomial := l;
  return l;
end function;


function minzlaff_condition(a, d, p, n)
  g := ShiftRight((a-1)*(d-1), 1);
  bound := n*g/2 + 2*g*Log(p,2);
  N := Floor(bound+1);
  return p gt (a*N-1)*d;
end function;

function minzlaff_is_faster(g, p, n)
  // empirical constants C1, C2
  // [TODO]
  C1 := 100;
  C2 := 0.1;
  t1 := Sqrt(p) * n^(7/2) * g^(5/2);
  t2 := Log(p) * n^5 * g^8;
  t  := p * n^3 * g^4;
  return Max(C1*t1 , C2*t2) lt t;
end function;


intrinsic LPolynomial(C::Crv[FldFin] : Al := "Default") -> RngUPolElt
{The numerator of ZetaFunction(C)}

  if assigned C`LPolynomial then
    return C`LPolynomial;
  end if;

  require Al in {"Default", "Naive", "Harrison", "Tuitman", "Minzlaff"} :
        "'Al' should be \"Naive\", \"Harrison\", \"Tuitman\" or \"Minzlaff\"";

  vprintf ZetaFunction : "%o algorithm requested\n", Al;

  if Al ne "Naive" and not HasFunctionField(C) then
    Al := "Naive";
  elif ExactConstantField(AlgorithmicFunctionField(FunctionField(C))) ne BaseField(C) then
    // this is needed to preserve previous behaviour of this signature
    Al := "Naive";
  end if;

  // TO DO p = 2

  Fq:=BaseRing(C);
  q:=#Fq;
  p:=Characteristic(Fq);
  n:=Degree(Fq);
  g:=Genus(C);

  if g eq 0 then
    return Polynomial([1]);
  end if;

  if g eq 1 then
    // ignore 'Al', always use genus 1 method
    if ISA(Type(C), CrvEll) then
      E := C;
    elif IsProjective(C) then 
      E := EllipticCurve(C);
    else
      E := EllipticCurve(ProjectiveClosure(C));
    end if;
    l := Numerator(ZetaFunction(E));
    return cache(C, l);
  end if;

  hyper, H := IsHyperelliptic(C);
  if hyper and IsOdd(p) then
    H := SimplifiedModel(H);
  end if;

  /* Notes about algorithm selection:
     Minzlaff advantage is the saving of O(sqrt p),
     so he beats the others when p is large enough.
     Tuitman advantage vs Harrison is mainly due to 
     precomputing reduction matrices.

     TO DO
     If "Minzlaff" requested but not applicable, use default
     (currently runtime error).
     Minzlaff vs Tuitman selection.
     Refine Naive selection, eg for p = 2
  */

  if Al eq "Default" then
    if (g eq 3 and (p lt 50 and q lt 100)) or
       (g eq 4 and q lt 20) or
       (g eq 5 and q lt 10)
    then
      Al := "Naive"; 
    elif hyper and IsOdd(p) and IsOdd(Degree(H)) and
      minzlaff_condition(2, Degree(H), p, n) and minzlaff_is_faster(g, p, n)
    then
      Al := "Minzlaff";
    elif g eq 2 and q ne p then
      // "Harrison" means all old (non-naive) methods, including all char 2.
      // Note: for each fixed p, "Harrison" is best for q=p^k large enough,
      // but for some small values of k, "Tuitman" would be marginally better.
      Al := "Harrison";
    elif p eq 2 then
      Al := hyper select "Harrison" else "Naive";
    elif hyper or g in [3..5] then
      Al := "Tuitman";
    else
      Al := "Naive";
    end if;
  end if;

  vprintf ZetaFunction : "%o algorithm will be used\n", Al;

  if Al eq "Minzlaff" then
    H1, H2 := HyperellipticPolynomials(H);  assert IsZero(H2);
    zeta := ZetaFunction(2, H1);
    return cache(C, Numerator(zeta));
  end if;

  if Al eq "Tuitman" then

    if hyper then
      f,h:=HyperellipticPolynomials(H);  assert IsZero(h);
      if q eq p then
        Q:=RationalField();
        Qx<x>:=PolynomialRing(Q);
        Qxy<y>:=PolynomialRing(Qx);
        Qt<t>:=RationalFunctionField(Q);
        F:=y^2;
        for i:=0 to Degree(f) do
          F:=F-(IntegerRing()!Coefficient(f,i))*x^i;
        end for;
        W0:=IdentityMatrix(Qt,2);
        Winf:=Matrix(Qt,[[1,0],[0,1/t^(g+1)]]);
      else 
        m:=PolynomialRing(IntegerRing())!DefiningPolynomial(Fq);
        K<a>:=NumberField(m);
        Kx<x>:=PolynomialRing(K);
        Kxy<y>:=PolynomialRing(Kx);
        Kt<t>:=RationalFunctionField(K);
        F:=y^2;
        for i:=0 to Degree(f) do
          for j:=1 to n do
            F:=F-(IntegerRing()!Eltseq(Coefficient(f,i))[j])*a^(j-1)*x^i;
          end for;
        end for;
        W0:=IdentityMatrix(Kt,2);
        Winf:=Matrix(Kt,[[1,0],[0,1/t^(g+1)]]);
      end if;
      l := LPolynomial(F,p:W0:=W0,Winf:=Winf);
      return cache(C, l);
    end if;

    try
      F, W0, Winf := GonalityPreservingLift(C);
      found_lift := true;
      vprint ZetaFunction: "Found a good lift, using Tuitman's algorithm\n";
    catch E
      found_lift := false;
      if "Did not find an optimal lift" notin E`Object then
        error E;
      end if;
      vprint ZetaFunction: "Did not find a good lift for Tuitman's algorithm\n";
    end try;
    if found_lift then
      l := LPolynomial(F,p:W0:=W0,Winf:=Winf);
      return cache(C, l);
    end if;

  end if;

  if Al eq "Harrison" then  // revert to the old algorithm choice
    assert hyper;
    l := LPolynomialOld(H);
    return cache(C, l);
  end if;

  // Naive
  if hyper then
    l := NaiveEulerFactor(H);
  else
    l := LPolynomial(AlgorithmicFunctionField(FunctionField(C)), 1);
  end if;
  return cache(C, l);

end intrinsic;

/////////////////////////////////////////////////////////////////////////

intrinsic ZetaFunction(C::Crv[FldFin] : Al := "Default") -> FldFunRatUElt
{The zeta function of the curve C (with respect to the field of geometric irreducibility)}

  require Al in {"Default", "Naive", "Harrison", "Tuitman", "Minzlaff"} :
        "'Al' should be \"Naive\", \"Harrison\", \"Tuitman\" or \"Minzlaff\"";

  l := LPolynomial(C : Al:=Al);
  T := Parent(l).1;
  q := #BaseRing(C);
  return l / ((1-T)*(1-q*T));

end intrinsic;

/////////////////////////////////////////////////////////////////////////
// TO DO

intrinsic LPolynomial(C::Crv[FldFin], m::RngIntElt) -> RngUPolElt
{The L-polynomial of the curve C over the extension of degree m of its base field (with respect to the field of geometric irreducibility)}
    require HasFunctionField(C) : "Curve must have a computable function field";
    return LPolynomial(AlgorithmicFunctionField(FunctionField(C)), m);
end intrinsic;

intrinsic ZetaFunction(C::Crv[FldFin], m::RngIntElt) -> FldFunRatUElt
{The zeta function of the curve C over the extension of degree m of its base field (with respect to the field of geometric irreducibility)}
    require HasFunctionField(C) : "Curve must have a computable function field";
    return ZetaFunction(AlgorithmicFunctionField(FunctionField(C)), m);
end intrinsic;

