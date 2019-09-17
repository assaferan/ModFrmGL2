freeze;

/*
Routines for handling the negative case of the exponential integral.
These will all go away if/when we use a newer version of MPFR.
*/


/*
For large negative x we can use the asymptotic expansion:

    Ei(x) = (e^x / x) * Sigma(k!/x^k)
          = (e^x / x) * (1 + 1/x + 2/x^2 + 6/x^3 + ...)

Asymptotic expansions are strange things; the above series is
divergent everywhere, but starts out by converging to the correct
value.  The trick is to stop the evaluation before the divergence
occurs.  This is not always possible (depending on the value of
x and the desired precision), so this method may fail.

It can be seen from the series above that the larger x is, the
better.  So this is suitable for large values of x whereas the
series expansion is suitable for small values of x.

In the above series, the last term that we can use is k!/x^k
where | k!/x^k | < | (k + 1)!/x^(k+1) | -- after that point
the terms are increasing and divergence sets in.  To ease
notation in the following slightly, let u = |x| = -x.  Then
for that last term we have:

        k! / u^k <  (k + 1)! / u^(k + 1)
  <=>          u <  k + 1
  <=>          k >= floor(u)

Since we want the last possible term (the minimal k with the
above property), we take k = floor(u) and let u = k + d.  Then
that term, in magnitude, is

        k! / u^k  ~=  Sqrt(2*pi*k) * (k/e)^k / u^k
                   = (Sqrt(2*pi*k) / e^k) / (u / k)^k
                   = (Sqrt(2*pi*k) / e^k) / ((k + d) / k)^k
                   = (Sqrt(2*pi*k) / e^k) / (1 + d/k)^k
                  ~= (Sqrt(2*pi*k) / e^k) / e^d
                   = (Sqrt(2*pi*k) / e^(k + d)
                   =  Sqrt(2*pi*k) / e^u

We want this to be sufficiently small relative to 1 that it is
a plausible stopping point.  i.e., modulo leeway, we want

       2^-prec > Sqrt(2*pi*k) / e^u
  <=>   2^prec < e^u / Sqrt(2*pi*k)
  <=>     prec < Log_2( e^u / Sqrt(2*pi*k))
  <=>     prec < u Log_2(e) - Log_2(Sqrt(2*pi)) - Log_2(k) / 2
  <~>     prec < u 1.44+  -  1.33-  - Log_2(u) / 2
  <~>     prec < 1.44+ * u - 2 - Floor(Log_2(u))/2
  <=>     prec < 1.44+ * u - 2 - (expt(u) - 1)/2
  <~>     prec < 1.44+ * u - 3 - Floor(expt(u)/2)

If that condition is not satisfied, then we will not try this
approach.
*/

function eint_asymptotic(x)
    assert x lt 0;

    origR := Parent(x);
    prec := BitPrecision(origR);
    u := Abs(x);
    k := Floor(u);
    if k le 0 or (u / Log(2) - Log(2, 2*Pi(origR)*k)/2) le prec then
	return false, _;
    end if;

    // TODO: Choose the working precision more carefully, based on an
    // estimate of the number of terms that will actually be used.
    //
    working_prec := prec + 10;
    R := RealField(working_prec : Bits);

    sum := R!1;
    k := 0;
    t := R!1;
    ix := 1/R!x;

    repeat
	k +:= 1;

	oldt := t;
	t *:= ix*k;
	if Abs(t) gt Abs(oldt) then
	    return false, _;
	end if;

	oldsum := sum;
	sum +:= t;
    until sum eq oldsum;

    ei := sum*ix*Exp(x);
    return true, origR!ei;
end function;


/*
For intermediate negative x we could use the continued fraction
approach; this is not currently done.
*/


/*
For smaller negative x we can use the series expansion

    Ei(x) = gamma + ln |x| + Sigma(x^k/(k*k!))

From Abramovitz and Stegun 5.1.20, with E1(x) = -Ei(-x):

    ln(1 + 2/x) / 2 < e^x E1(x) < ln(1 + 1/x)    x > 0

Thus |Ei(x)| > e^x ln(1 - 2/x) / 2 for x < 0.

So |Ei(x)| > 2^a where a = Floor(Log_2(e^x ln(1 - 2/x) / 2))
and if we can compute to absolute precision a - p then we get
the result precisely enough.

The maximum term in the summation is T_m = x^m / m*m! where
m is minimal (m >= 1) such that (m + 1)^2/m >= |x|.  Since the
sum is alternating, it is then easy to see that the sum as a
whole is bounded by T_m.

So, let b = Ceiling(Log_2(Max(gamma, ln |x|, |T_m|))) so that
2^b is at least as large as all these terms.  Then by working
in precision b - (a - p) we ensure that we get values to the
required absolute precision of (a - p).  There will be some
slop factor since few terms will be that big and there is much
cancellation; it is not clear how many extra guard bits are
desirable.
*/

function eint_series(x)
    assert x lt 0;

    origR := Parent(x);
    ax := Abs(x);
    a := Floor(Log(2, Exp(x)*Log(1 - 2/x)/2));

    m := Max(1, Floor(ax) - 2);
    if (m + 1)^2/m lt ax then m +:= 1; end if;
    assert (m + 1)^2/m ge ax;
    aTm := ax^m / (m*Factorial(m));

    b := Max(0, Ceiling(Log(2, Max(Abs(Log(ax)), aTm))));
    p := BitPrecision(origR);

    prec := Max(b - a + p, p);	// paranoia; b - a should be at least 0
    prec +:= 10;		// guard bits for precision loss
    R := RealField(prec : Bits);
    x := R!x;

    ei := EulerGamma(R) + Log(Abs(x));
    sum := R!0;
    k := 0;
    t := R!1;

    repeat
	k +:= 1;
	t := t*x/k;
	d := t/k;
	oldsum := sum;
	sum +:= d;
    until sum eq oldsum;

    ei +:= sum;
    return origR!ei;
end function;


intrinsic InternalExponentialIntegralNegative(x::FldReElt) -> FldReElt
{Internal}
    assert x lt 0;

    ok, ei := eint_asymptotic(x);
    if not ok then
	ei := eint_series(x);
    end if;
    return ei;
end intrinsic;
