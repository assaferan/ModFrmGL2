freeze;

USE_SEARCH := 0 eq 1;
USE_SEARCH := 1 eq 1;
NEW_SEARCH := 1 eq 1;
RED_COEFFS_NB := 32;
DEF_VERB := 2;
HIGH_VERB := 3;

/*******************************************************************************
				Prec
*******************************************************************************/

CFB := func<b | ComplexField(b: Bits)>;
CFD := func<d | ComplexField(d)>;
RFB := func<b | RealField(b: Bits)>;
RFD := func<d | RealField(d)>;
GPB := func<F | Precision(F: Bits)>;
GPD := func<F | Precision(F)>;

BASE_EXTRA_PREC := 64;
REAL_EXTRA_PREC := 64;
round_prec := func<x | Ceiling(x/64)*64>;

MIN_NEAR_BPREC := 128;
MIN_BASE_PREC := 38;

/*******************************************************************************
			Aux
*******************************************************************************/

function sort_cmp(a, b)
    c := Real(a) - Real(b);
    if c ne 0 then return Sign(c); end if;
    return Sign(Imaginary(a) - Imaginary(b));
end function;

function ParentVar(f)
    P := Parent(f);
    return P, P.1;
end function;

/*******************************************************************************
			Min Poly
*******************************************************************************/

function minpol(Q, D: Prec := 0)

    if Prec gt 0 then
	C<i> := ComplexField(Prec);
	Q := ChangeUniverse(Q, C);
    end if;

    R := Universe(Q);
    //R := RealField(Precision(R));
    RR := RealField(Precision(R));

RR;

R := IntegerRing();
    k := #Q;

    EE := [];
    S := Q;
    rmax := 0;
    imax := 0;
max := 0;
min := Infinity();

    m, e := MantissaExponent(RR!1);
    min := m;

    for i := 1 to D do
	E := [];
	for z in S do
	    m, e := MantissaExponent(Real(z));
	    //rmax := Max(rmax, e);
	    max := Max(max, e);
	    min := Min(min, e);
	    Append(~E, <m, e>);
	    m, e := MantissaExponent(Imaginary(z));
	    //imax := Max(imax, e);
	    max := Max(max, e);
	    min := Min(min, e);
	    Append(~E, <m, e>);
	end for;
	Append(~EE, E);
	S := [Q[j]*S[j]: j in [1 .. k]];
    end for;

    A := ZeroMatrix(R, D + 1, 2*k + D + 1);
    for j := 1 to k do
	A[1, 2*j - 1] := 2^-min;
    end for;
    A[1, 2*k + 1] := 1;

    for i := 1 to D do
	E := EE[i];
	for j := 1 to #E do
	    t := E[j];
	    m, e := Explode(t);
	    A[1 + i, j] := m*2^(e - min);
	end for;
	A[1 + i, 2*k + 1 + i] := 1;
    end for;
    return A, min;
end function;

/*******************************************************************************
			Graeffe
*******************************************************************************/

function graeffe0(f, N)
    x := Parent(f).1;
    for i := 1 to N do
	p := f*Evaluate(f, -x);
	f := Polynomial([Coefficient(p, i): i in [0 .. Degree(p) by 2]]);
    end for;
    return f;
end function;

function graeffe(f, N: Prec := 0, ResPrec := 30)
    if Prec gt 0 then
	R := RealField(Prec);
	f := PolynomialRing(R)!f;
    end if;
    g := graeffe0(f, N);
//g;
    d := Degree(g);
    RR := RealField(ResPrec);
    Q := [
	Abs(RR!(Coefficient(g, d-j-1)/Coefficient(g, d-j)))^((1/2^(N))): // N-1
	j in [0..d-1]
    ];
    return Q;
end function;

/*
N:=20; vtime ComplexRoots: g:=graeffe0(f, N); c:=-Coefficient(g, Degree(g) - 1); c; 
(C!c)^((1/2^N));
*/

/*******************************************************************************
				Multi-Newton
*******************************************************************************/

MNEWTON_PREC := 30;
MNEWTON_DEF_RADIUS := 1;

intrinsic mnewton(f::RngUPolElt, count::RngIntElt:
    Fixed := 0,
    X := 0,
    Prec := X cmpeq 0 or #X eq 0 select
	MNEWTON_PREC else Precision(Universe(X)),
    Radius := MNEWTON_DEF_RADIUS
) -> []
{Internal}
    // /home/magma/old_magma/old/src/vpoly

    n := Degree(f);
    bi := Fixed + 1;

    RR := RealField(3);
    RN := RealField(64: Bits);
    CN := ComplexField(64: Bits);
    CC<i> := ComplexField(3);

    C<i> := ComplexField(Prec);

    vprintf ComplexRoots: "MNEWTON; degree %o, nsteps %o\n", n, count;
    // "MNEWTON DUMP f:", f; "par f:", Parent(f); "Prec:", Prec;

    if X cmpne 0 then
	X := ChangeUniverse(X, C);
	if false and Radius eq MNEWTON_DEF_RADIUS then
	    Radius := &*[Norm(z): z in X]^(1/(2*#X));
	    vprintf ComplexRoots: "Choose geometric radius: %.3o\n", Radius;
	end if;
    else
	X := [];
    end if;

    Radius := C!Radius;

    k := n - #X;
    if k gt 0 then
	vprintf ComplexRoots: "Add %o new initial points (of %o)\n", k, n;
	vprintf ComplexRoots: "Radius: %o\n", Radius;
	a := 2*3*i/k;
	X cat:= [Radius*Exp(a*j): j in [1 .. k]];
    end if;
    assert #X eq n;
    last_X := X;

    //"START X:", X; "Univ X:", Universe(X);

    min := Infinity();
    stop_bound := 10^-Prec;

    di := 0;
    ZEIT := Cputime();
    A := Eltseq(f);
    for step := 1 to count do
//vprintf ComplexRoots: "Step: %o\nX: %o\n", step, X;

	vprintf ComplexRoots: "Step %o, %o", step, Cputime(ZEIT);

	if 1 eq 1 and step gt 1 then
	    //nd := [Norm(X[i] - last_X[i]): i in [1 .. #X]];
	    nd := [Norm(CN!di[i]): i in [1 .. #di]];
	    min := Min(nd);
	    max := Max(nd);
	    vprintf ComplexRoots: "; {{DIFF MAX: %.3o, MIN: %.3o, AV: %.3o}}\n",
		max, min, &+nd/#nd;
	    if 0 eq 1 then
		IndentPush();
		[RR!x: x in nd];
		IndentPop();
	    end if;
	    if step ge 2*n and max le stop_bound then
		break;
	    end if;
	else
	    vprint ComplexRoots: "";
	end if;
	if 0 eq 1 then
	    IndentPush();
	    vprint ComplexRoots: [CC!x: x in X];
	    IndentPop();
	end if;
	last_X := X;

	di := [];
	for i := bi to n do
	    if 0 eq 1 then
		z := X[i];
		sum := Evaluate(f, z);
		prod := &*[z - X[k]: k in [1 .. n] | k ne i];
	    else
		sum := A[n + 1];
		prod := sum;
		for k := 1 to n do
		    sum := sum*X[i] + A[n + 1 - k];
		    if k ne i then
			prod *:= X[i] - X[k];
		    end if;
		end for;

		//no := Norm(prod); X[i] -:= (sum*ComplexConjugate(prod))/no;
	    end if;

	    if prod eq 0 then
		return X, min;
	    end if;

	    d := sum/prod;
	    X[i] -:= d;
	    Append(~di, d);
	end for;
    end for;

    OX := X[1 .. bi - 1];
    X := X[bi .. #X];
    Sort(~X, sort_cmp);
    X := OX cat X;

    return X, min;
end intrinsic;

/*******************************************************************************
			    Direct Newton
*******************************************************************************/

NEW_NORM := true;

function newton(
    f, c: Limit := 100, Near := [], Cohen := false, Verb := DEF_VERB,
    Dyn := true //false
)

    PRINT_EVAL := false;

    if NEW_NORM then
	norm := function(ec, c)
	    nec := Max(Abs(Real(ec)), Abs(Imaginary(ec)));
	    //nc := Min(Abs(Real(c)), Abs(Imaginary(c)));
	    nc := Max(Abs(Real(c)), Abs(Imaginary(c)));
	    if nc eq 0 then nc := 10^10; end if;
	    return nec, nec/nc;
	end function;
    else
	norm := function(ec, c)
	    nec := Norm(ec);
	    nc := Norm(c);
	    return nec, nec/nc;
	end function;
    end if;

    fR := BaseRing(Parent(f));
//"fR:", fR;
    f_inexact := Type(fR) notin {RngInt, FldRat};
    f_over_R := Type(fR) eq FldRe;

    of := f;
    df := Derivative(f);

    CC<i> := ComplexField(10);
    if PRINT_EVAL then
	RR := RealField(4);
    else
	RR := RealField(3);
    end if;

    RN := RealField(64: Bits);

    p := GPB(Parent(c));

    if NEW_NORM then
	// needed for hard[3] to stop:
	nbound := RN!2^(-Ceiling(0.9*p));
	nbound2 := RN!2^(-Ceiling(0.8*p));
	ebound := RN!2^(-Ceiling(0.9*p));

	sh := 10;
	sh := 32;
	nbound := RN!2^(-(p - sh));
	nbound2 := RN!2^(-(p - 2*sh));
	ebound := RN!2^(-(p - sh));

	cbound := RN!2^(-p);
    else
	nbound := RN!2^(-2*(p-2));
	ebound := RN!2^(-2*(p-1));
	cbound := RN!2^(-p);
    end if;

    inc_ndwb := RN!2^(0.95*Log(2, nbound));

    log2 := Log(RN!2);
    log_RN := func<x | x eq 0 select -Infinity() else Log(RN!x)/log2>;
    ci := func<R, x | x cmpeq -Infinity() select x else R!x>;

    //"---------";
    vprintf ComplexRoots: "NEWTON; deg %o, dyn: %o, bprec p: %o\n", Degree(f), Dyn, p;
    vprintf ComplexRoots: "nbound: %.3o[%.3o]\n", nbound, log_RN(nbound);
    vprintf ComplexRoots: "inc_ndwb: %.3o[%.3o]\n", inc_ndwb, log_RN(inc_ndwb);
    vprintf ComplexRoots: "ebound: %.3o[%.3o]\n", ebound, log_RN(ebound);
    vprintf ComplexRoots: "Step limit: %o\n", Limit;

    /*
    if Verb ge HIGH_VERB then
	vprintf ComplexRoots: "nbound: %o, ebound: %o\n", nbound+0.0, ebound+0.0;
    end if;
    */

    near := #Near gt 0;
    last_nd := Infinity();
    last_ndw := Infinity();
    last_lnnec := Infinity();
    ec := Evaluate(f, c);
/*
"Par c:", Parent(c);
"Par ec:", Parent(ec);
"Par f:", Parent(f);
"BaseRing:", BaseRing(Parent(f));
//"f:", f;
"ec:", ec;
*/
    norm_ec, norm_ecw := norm(ec, c);
    step := 0;
    ve := 0;

    if Verb lt HIGH_VERB then
	if PRINT_EVAL then
	    vprintf ComplexRoots: "Eval lnorms:";
	else
	    vprintf ComplexRoots: "dx lnorms:";
	end if;
    end if;

    /*
    best_c := c;
    best_norm_ecw := norm_ecw;
    non_best_count := 0;
    */

    prec := 0;
    HardLimit := 10*Limit;

    //HardLimit := 10^10;
    //Limit := 100; HardLimit := Limit;

    while true do
	step +:= 1;
	edc := Evaluate(df, c);
	if #Near eq 0 then
	    dx := ec/edc;
	elif #Near eq 1 then
	    dx := ec/(edc - ec/(c - Near[1]));
	else
	    dx := ec/(edc - ec*&+[1/(c - y): y in Near]);
	end if;

	count := 0;

/*
"here Near:", Near;
"here c:", c;
"***";
if #Near gt 0 then "DIFF c-Near[1]:", c-Near[1]; end if;
"***";
"here ec:", ec;
"here 1/(c-y):", [1/(c-y): y in Near];
"here ec*sum 1/(c-y):", #Near eq 0 select 0 else ec*&+[1/(c - y): y in Near];
"here dx:", dx;
*/

/*
"Parent(dx):", Parent(dx);
"Parent(c):", Parent(c);
"Parent(ec):", Parent(ec);
"Parent(edc):", Parent(edc);
"near:", near;
*/

    while true do
	nc := c - dx;
	nd, ndw := norm(dx, c);
	if Cohen then
	    if nd lt nbound then
		vprintf ComplexRoots: ve;
		vprintf ComplexRoots: "Cohen: Stable at step (ndx %o < nbound %o)\n",
		    step, nd, nbound;
		return nc, step;
	    end if;
	end if;

	nec := Evaluate(f, nc);
	norm_nec, norm_necw := norm(nec, nc);
	lnorm_nec := log_RN(norm_nec);
	lnorm_necw := log_RN(norm_necw);

	if Verb ge HIGH_VERB then
	    vprintf ComplexRoots: "nc: %o\n", CC!nc;
	    vprintf ComplexRoots:
	    " %.3o[%.1o]->%.3o[%.1o] / %.3o[%.1o]->%.3o[%.1o]\n",
		ci(RR, nd), ci(RR, log_RN(nd)),
		ci(RR, ndw), ci(RR, log_RN(ndw)),
		ci(RR, norm_nec), ci(RR, lnorm_nec),
		ci(RR, norm_necw), ci(RR, lnorm_necw);
	    ve := "";
	else
	    ln := PRINT_EVAL select lnorm_necw else log_RN(ndw);
	    vprintf ComplexRoots: " %o", ci(RR, ln);
	    if prec gt 0 then
		vprintf ComplexRoots: "[%o]", prec;
	    end if;
	    //vprintf ComplexRoots: "{%o}", lnorm_nec;
	    ve := "\n";
	end if;
	//"nc:", nc;

	if Dyn and prec gt 0 and prec lt p then
	    ;
	elif NEW_NORM then

	    if
		c eq nc or nec eq 0 or ndw lt nbound or norm_necw lt ebound
		or ndw ge last_ndw and ndw lt inc_ndwb
	    then
		vprint ComplexRoots: ve cat "Stable 1 at step", step;
vprint ComplexRoots: c eq nc, nec eq 0, ndw lt nbound,norm_necw lt ebound,
		ndw ge last_ndw and ndw lt inc_ndwb;

		if Verb lt HIGH_VERB then
		    vprintf ComplexRoots:
		    "%.3o[%.1o]->%.3o[%.1o] / %.3o[%.1o]->%.3o[%.1o]\n",
			ci(RR, nd), ci(RR, log_RN(nd)),
			ci(RR, ndw), ci(RR, log_RN(ndw)),
			ci(RR, norm_nec), ci(RR, lnorm_nec),
			ci(RR, norm_necw), ci(RR, lnorm_necw);
		end if;
		return nc, step;
	    end if;
	    /*
	    if best_norm_ecw lt norm_ecw then
		best_c := nc;
		best_norm_ecw := norm_necw;
		best_ndw := ndw;
		non_best_count := 0;
	    else
		non_best_count +:= 1;
		if non_best_count ge 5 and best_norm_ecw le nbound then
		    ve cat "Stable at step", step;
		    vprintf ComplexRoots: "Return with best ndw %o, norm_ecw %o\n",
			best_ndw, best_norm_ecw;
		    return best_c, step;
		end if;
	    end if;
	    */
	else
	    if
		c eq nc or nec eq 0 or nd lt nbound or norm_nec lt ebound or
		nd ge last_nd and ndw lt nbound2
	    then
		vprint ComplexRoots: ve cat "Stable 2 at step", step;
		return nc, step;
	    end if;
	end if;

	if Cohen then
	    if norm_nec ge norm_ec and norm_nec gt cbound then
		dx := dx/4;
		count +:= 1;
		vprintf ComplexRoots: ve;
		vprintf ComplexRoots: "Cohen ADJUST (count %o); new dx %o\n", count, CC!dx;
		if count eq 20 then
		    vprint ComplexRoots: "FAIL Cohen count", 20;
		    return 0, step;
		end if;
		continue;
	    end if;
	end if;

	break;
    end while;

	if step gt HardLimit or step gt Limit and ndw gt last_ndw and lnorm_nec ge last_lnnec/2 then
	    break;
	end if;

	if Dyn then
	    lndw := log_RN(ndw);
	    if lndw lt 0 then
		dprec := round_prec(4*-lndw + 2); // BASE_EXTRA_PREC
		//"dprec:", dprec;
		if dprec gt p then
		    dprec := p;
		end if;
		if prec eq 0 and dprec lt p or prec gt 0 and dprec gt prec then
		    prec := dprec;
		    NC := CFB(prec);
		    NR := RFB(prec + 64);
		    nc := NC!nc;
		    nec := NC!nec;
		    norm_ec := NR!norm_ec; // not needed in non-Cohen
		    nd := RN!nd; // needed?
		    ndw := RN!ndw; // needed?
		    // lnorm_nec := CN!lnorm_nec; // in RN

		    if Verb ge HIGH_VERB then
			"NEW NC:", NC;
			"MOVE to prec", dprec;
			"NEW NR:", NR;
		    end if;
		    if f_inexact then
			if f_over_R then
			    PP := PolynomialRing(NR);
			else
			    PP := PolynomialRing(NC);
			end if;
			f := PP!of;
			df := Derivative(f);
		    end if;
		end if;
	    end if;
	end if;

	c := nc;
	ec := nec;
	norm_ec := norm_nec;
	last_nd := nd;
	last_ndw := ndw;
	last_lnnec := lnorm_nec;
    end while;

    if Verb lt HIGH_VERB then
	vprint ComplexRoots: "";
    end if;

    vprint ComplexRoots: "Hit step limit at", step;
    return 0, step;
    return c, step;

end function;

/*******************************************************************************
			    Laguerre
*******************************************************************************/

function laguerre(f, c: Limit := 100)

    n := Degree(f);
    df := Derivative(f);
    d2f := Derivative(Derivative(f));

    CC<i> := ComplexField(10);
    RR := RealField(10);

    p := Precision(Parent(c));

    nbound := 10^(-2*(p-2));
    ebound := 10^(-2*(p-1));
    vprint ComplexRoots: "---------";
    vprint ComplexRoots: "LAGUERRE; limit", Limit;
    vprintf ComplexRoots: "Prec p: %o, nbound: %o, ebound: %o\n", p, nbound+0.0, ebound+0.0;

    last_nd := Infinity();
    last_lnnec := Infinity();
    ec := Evaluate(f, c);
    step := 0;
    while true do
	step +:= 1;
	edc := Evaluate(df, c);
	G := edc/ec;

	ed2c := Evaluate(d2f, c);
	G2 := G^2;
	H := G2 - ed2c/ec;

	s := Sqrt((n - 1)*(n*H - G2));
	den1 := G + s;
	den2 := G - s;
	no1 := Norm(den1);
	no2 := Norm(den2);
	if /*1 eq 0 or*/ no1 gt no2 then
	    den := den1;
	else
	    den := den2;
	end if;

	if 0 eq 1 then
	    IndentPush();
	    vprint ComplexRoots: "G:", G;
	    vprint ComplexRoots: "H:", H;
	    vprint ComplexRoots: "den1:", den1;
	    vprint ComplexRoots: "den2:", den2;
	    vprint ComplexRoots: "no1:", no1;
	    vprint ComplexRoots: "no2:", no2;
	    vprint ComplexRoots: "a:", n/den;
	    IndentPop();
	end if;

	nc := c - n/den;

	nec := Evaluate(f, nc);
	nnec := Norm(nec);
	lnnec := nnec eq 0 select 0 else Log(10, nnec);
	nd := Norm(c - nc);
	vprintf ComplexRoots: "nc: %o, norm: %.3o, nec: %.3o [%.1o]\n",
	    CC!nc, RR!nd, RR!nnec, RR!lnnec;
//"nc:", nc;
	if
	    c eq nc or nd lt nbound or nnec lt ebound or
	    nd ge last_nd and nd lt 10^-20
	then
	    "Stable at step", step;
	    return nc;
	end if;
	if step gt Limit and lnnec ge last_lnnec then
	    break;
	end if;
	c := nc;
	ec := nec;
	last_nd := nd;
	last_lnnec := lnnec;
    end while;

    vprint ComplexRoots: "Hit step limit at", step;
return 0;
    return c;

end function;

/*******************************************************************************
			    Main Roots
*******************************************************************************/

USE_RAND := 1 eq 1;
RAND_RANGE := 10000;
rand := func<|Random(RAND_RANGE)/RAND_RANGE>;
rands := func<|Random(-RAND_RANGE, RAND_RANGE)/RAND_RANGE>;

function get_rand_comp(r, i)
    R := Parent(r);
    br := R!0.5;

    x := r*rands();
    if Sign(x) lt 0 then
	x -:= br;
    else
	x +:= br;
    end if;
    x +:= (br + r*rand())*i;
    return x;
end function;

function get_pts(d, r, N: BPrec := 64)
    // Get N points for deg d, radius r

    R := RealField(BPrec: Bits);
    C<i> := ComplexField(BPrec: Bits);
    r := R!r;
    tpi := Pi(R);
    pi := R!3.14; // inexact
    s := 2*pi/N;
s := pi/N;

    pts := [];
    j := 0;
    arg := R!0.001;
    for j := 1 to N do
	if USE_RAND then
	    x := get_rand_comp(r, i);
	else
	    a := s*(1 + R!0.3*rand());
	    arg := arg + a;
    if arg gt tpi then arg := arg - tpi; end if;
	    rd := R!0.1;
	    x := R!r*(1 - rd + 2*rd*rand())*Exp(i*arg);
	end if;
	Append(~pts, x);
    end for;
    return pts;

end function;

function get_kth_roots(C, c, k, count)

/*
"get_kth_roots C:", C;
"get_kth_roots c:", c;
"get_kth_roots k:", k;
"get_kth_roots par:", Parent(c);
*/

    ro := (C!c)^(1/k);
    if k eq 2 then
	if count eq 1 then
	    return [ro];
	end if;
	return [ro, -ro];
    end if;
    R := [ro];
    i := C.1;
    if 1 eq 1 and Imaginary(c) eq 0 then
	/* Make sure complex conjugates are used for each root */
	if count gt 1 then
	    cc := ComplexConjugate(ro);
	    if cc ne ro then
		Append(~R, cc);
	    end if;
	end if;
	j := 1;
	while #R lt count do
	    arg := 2*j/k*Pi(C);
	    ro2 := ro*Cos(arg) + i*ro*Sin(arg);
	    Append(~R, ro2);
	    if #R lt count then
		cc := ComplexConjugate(ro2);
		if cc ne ro2 then
		    Append(~R, cc);
		end if;
	    end if;
	    j +:= 1;
	end while;
//"res R:", R; "pow:", [z^k: z in R]; "pow norm:", [Norm(c-z^k): z in R];
    elif 1 eq 1 then
	for j := 1 to count - 1 do
	    arg := 2*j/k*Pi(C);
	    ro2 := ro*Cos(arg) + i*ro*Sin(arg);
	    Append(~R, ro2);
	end for;
//"res R:", R; "pow:", [z^k: z in R]; "pow norm:", [Norm(c-z^k): z in R];
    else
	arg := 2/k*Pi(C);
	ru := Cos(arg) + i*Sin(arg);
	//"ro:", ro; "ru:", ru;
	for j := 2 to count do
	    ro *:= ru;
	    //"%%% j:", j, ro;
	    Append(~R, ro);
	end for;
    end if;
    return R;
end function;

function nmapr(x, bp)
    m, e := MantissaExponent(x);
    if m eq 0 then
	return 0, 1;
    end if;
    l := Ilog2(Abs(m));
    s := l - bp;
    if s gt 0 then
	r := ModByPowerOf2(ShiftRight(m, s - 1), 1);
	m := ShiftRight(m, s);
	//printf "orig shifted m: %o, r: %o\n", m, r;
	m +:= r;
    end if;
    v := Valuation(m, 2);
    m := ShiftRight(m, v);
    e +:= s + v;
    return m, e;
end function;

function nmapc(z, bp)
    rm, re := nmapr(Real(z), bp);
    im, ie := nmapr(Imaginary(z), bp);
    return <rm, re, im, ie>;
end function;

function roots(
    f: PR := 3, Prec := MIN_BASE_PREC,
    Limit := PR*Degree(f), Radius:=0, Lag:=false,
    //UseRealRoots := false,
    UseRealRoots,
    Verb := GetVerbose("ComplexRoots"), // DEF_VERB,
    Dyn := 1.3, Initial := []
)
    RR := RealField(5);
    CC<i> := ComplexField(10);

    Prec := Max(Prec, MIN_BASE_PREC);

//Limit := 10^10;
//Limit := 200;

//"PAR 1 f:", Parent(f);

    d := Degree(f);
    T := Cputime();
    P, x := ParentVar(f);
    //assert Type(BaseRing(P)) in {RngInt, FldRat};

    vprintf ComplexRoots: "COMPLEX ROOTS: degree %o\n", Degree(f);
    vprint ComplexRoots: "Coefficient ring:", BaseRing(P);

//printf "f := %o;\n", f;

    extra_prec := BASE_EXTRA_PREC;

    deflation := GCD(Support(f));
    /*
    // Wrong for roots2, 2nd poly
    if d le 100 and Prec ge 100 then
	deflation := GCD(deflation, 2);
    end if;
    */

    /*
    Force deflation max 2 for now, to ensure conjugate roots order fixed.
    f := x^8 - 2*x^4 + 2; // Coming from (should be all close to zero):
    R<x>:=PolynomialRing(Rationals());
    ar:=ArtinRepresentations(NumberField(x^8-2*x^4+2));
    <<Dimension(a),Conductor(a), CFENew(LSeries(a: Precision:=9))>: a in ar>;
    */

    deflation := GCD(deflation, 2);
    //deflation := 1;
    if deflation gt 1 then

	f := P![Coefficient(f, i): i in [0 .. d by deflation]];
	d := Degree(f);

	vprint ComplexRoots: "DEFLATION factor:", deflation;
	vprint ComplexRoots: "Reduced f:", f;

	extra_prec +:= deflation*3;
    end if;

    CN := ComplexField(64: Bits);
    prec := Prec;
    C := CFD(prec);
    bprec := GPB(C);
    bprec := round_prec(bprec + extra_prec);
    Nbp := bprec div 2;

    RF := RFB(bprec);
    C<i> := CFB(bprec);
    obprec := bprec;

    vprintf ComplexRoots:
	"Given d prec: %o, extra_prec: %o, final bit prec: %o\n",
	prec, extra_prec, bprec;
    vprintf ComplexRoots: "Near bp: %o\n", Nbp;

    OR := BaseRing(P);
    f_real := Type(OR) in {RngInt, FldRat, FldRe};
    f_inexact := false;
    use_conj := f_real;
    if not f_real then
	UseRealRoots := false;
    end if;
    vprintf ComplexRoots: "f_real: %o\n", f_real;

    if Type(OR) notin {RngInt, FldRat} then
	op := GPB(OR);
	if 1 eq 1 and op lt bprec then
	    if Type(OR) eq FldRe then
		vprintf ComplexRoots: "Move f to R (prec %o)\n", GPD(RF);
		P := PolynomialRing(RF);
		x := P.1;
	    else
		vprintf ComplexRoots: "Move f to C (prec %o)\n", GPD(C);
		P := PolynomialRing(C);
		x := C.1;
	    end if;
	    f := P!f;
	end if;

	f_inexact := true;
    end if;

    procedure fix_Initial(~Initial)
	oc := #Initial;
	InitialS := Set(Initial);
	Initial := [];
	for z in InitialS do
	    if UseRealRoots and Imaginary(z) eq 0 then
		continue;
	    end if;
	    if z notin Initial and ComplexConjugate(z) notin Initial then
		Append(~Initial, z);
	    end if;
	end for;
	vprintf ComplexRoots: "#Initial reduced from %o to %o\n", oc, #Initial;
    end procedure;

    clogs := [Ilog2(Abs(x)): x in Eltseq(f) | x ne 0];
    mincl := Min(clogs);
    maxcl := Max(clogs);
    avcl := &+clogs/#clogs;

    vprintf ComplexRoots:
	"mincl: %o, maxcl: %o, avcl: %.3o\n", mincl, maxcl, avcl;

    red := Reductum(f);
    dred := Degree(red);
    if 0 eq 1 and #Initial eq 0 and dred le 0.5*d then
	vprint ComplexRoots: "USE INITIAL ROOTS via reductum";
	c1 := Coefficient(f, d);
	c0 := Coefficient(f, dred);
	k := d - dred;
	c := -c0/c1;
	vprintf ComplexRoots: "k: %o, c: %o\n", k, c;

	// Do not use Ceiling(k/2) to avoid real root when k odd
	Initial := get_kth_roots(C, c, k, k div 2);

	/*
	ro := (C!c)^(1/k);
	arg := 2/k*Pi(C);
	ru := Cos(arg) + i*Sin(arg);
	//"ro:", ro; "ru:", ru;
	Initial := [ro];
	vtime ComplexRoots: for i := 1 to k div 2 - 1 do
	    ro *:= ru;
	    //"%%% i:", i, ro;
	    Append(~Initial, ro);
	end for;
	vprintf ComplexRoots: "Computed %o initial root(s)\n", #Initial;
	*/
vprint ComplexRoots: "Approx initial:", [CC!z: z in Initial];
    end if;

    fix_Initial(~Initial);

    if Type(BaseRing(P)) eq FldCom then
	P := PolynomialRing(C);
	x := P.1;
	f := P!f;
    end if;

    pbhist := [bprec];
    pdhist := [GPD(C)];

    function get_radius(f)

	/*
	mc := Max([Abs(c): c in Coefficients(f)]);
	lmc := Log(2, mc);
	vprintf ComplexRoots: "mc: %o, lmc: %o\n", mc, lmc;
	Radius := lmc;
	*/

	d := Degree(f);

	CR := RealField(128: Bits);
	CC := ComplexField(128: Bits);
	L := Eltseq(f);
	l := CC!L[#L];
	//"f:", f;
	L := [CC!L[i]: i in [1 .. #L - 1]] cat [1];
	//"L:", L;
	assert #L eq d + 1;
	AL := [Norm(z): z in L];
	ac := func<i | AL[1 + i]>;
	//AL;

	CauchyB := 1 + Max(AL);
	vprint ComplexRoots: "Cauchy bound:", CauchyB;

	LagrangeB := Max(1, &+AL[[1 .. d]]);
	vprint ComplexRoots: "Lagrange bound:", LagrangeB;

	FujiwaraB := Max(
	    [ac(d - i)^(1/i): i in [1 .. d - 1]] cat [(ac(0)/2)^(1/d)]
	);
	// FujiwaraB *:= 2; // OFF for now
	vprint ComplexRoots: "Fujiwara bound:", FujiwaraB;

	Radius := Min([CauchyB, LagrangeB, FujiwaraB]);
	Radius := Max(Radius, 1);
	vprint ComplexRoots: "NEW RADIUS:", Radius;
	return Radius;
    end function;

    Radius := 0;

    //vprint ComplexRoots: "Get pts";
    //vtime ComplexRoots: pts := get_pts(d, Radius, PR * d: BPrec := bprec);

//"PAR f:", Parent(f);

    RIU := 0;
    if 1 eq 1 and UseRealRoots and f_inexact then

	vprint ComplexRoots: "Get real roots";
	vtime ComplexRoots: R := [t[1]: t in Roots(f, RF)];
	vprint ComplexRoots: "Num real roots:", #R;

    elif 1 eq 1 and UseRealRoots then

	vprint ComplexRoots: "Isolate real roots";
	vtime ComplexRoots: ORI := IsolateRoots(f);
	vprint ComplexRoots: "Num isolated real roots:", #ORI;
	vprint ComplexRoots: "Intervals:", ORI;
	RIU := [];
	for t in ORI do
	    a, b := Explode(t);
	    u := <
		Numerator(a), Valuation(Denominator(a), 2),
		Numerator(b), Valuation(Denominator(b), 2)
	    >;
	    Append(~RIU, u);
	end for;
	vprint ComplexRoots: "Now RIU:", RIU;

	procedure refine_reals(f, ~RIU, e, RF, ~roots)
	    roots := [];
	    vprint ComplexRoots: "Refine real roots to bprec", e;
	    vtime ComplexRoots: for i := 1 to #RIU do
		u := RIU[i];
		an,ak,bn,bk := Explode(u);
		RefineInterval(f, ~an,~ak,~bn,~bk, e);
		RIU[i] := <an,ak,bn,bk>;
		a := an/2^ak;
		b := bn/2^bk;
		m := (a + b)/2;
		r := RF!m;
		Append(~roots, r);
	    end for;
//vprint ComplexRoots: "New RIU:", RIU;
	end procedure;

	refine_reals(f, ~RIU, bprec + REAL_EXTRA_PREC, RF, ~R);
//"GOT REAL R:", R;
    else
	vprint ComplexRoots: "Skip real roots";
	R := [];
    end if;
    nreal := #R;

// USE DEFLATION AND SCALE ROOTS INSTEAD!
    if false and
IsEven(GCD(Support(f))) then
	C := Coefficients(f);
	for j := 3 to #C by 4 do
	    C[j] := -C[j];
	end for;
	ff := Polynomial(C);
vprint ComplexRoots: "Transformed ff:", ff;
	R2 := [t[1]: t in Roots(ff, RF)];
	"Num purely imaginary roots:", #R2;
	R := R cat [i*x: x in R2];
    end if;

    if #R gt 0 then
	tp := &*[x - c: c in R];
	g := f div tp;
	//"First tp:", tp;
	//"New g:", g;
	vprint ComplexRoots: "New g deg:", Degree(g);
	vprint ComplexRoots: "First tp deg:", Degree(tp);
    else
	g := f;
	tp := 1;
    end if;
    otp := tp;

    rev := not f_inexact and Reverse(f) eq f;

    npts := 0;
    nf := 0;
    nf2 := 0;
    last_nf := nf;

    pti := 1; // start not with 0
    pt_ival := ComplexField(30).1;
    ptarg := 2*pi/d where pi := 3;

/*
"ptarg:", ptarg;
i := 1; r:=1;
"ex:", r*(Cos(a) + pt_ival*Sin(a)) where a := ptarg*i;
"again:", (Cos(a) + pt_ival*Sin(a)) where a := ptarg*i;
"again0:", a where a := ptarg*i;
"again0 p:", Parent(a) where a := ptarg*i;
"again0 S:", Sin(a) where a := ptarg*i;
"again1:", pt_ival*Sin(a) where a := ptarg*i;
*/

    //get_next_pt := func<r, i | r*(Cos(a) + pt_ival*Sin(a)) where a := ptarg*i>;
    get_next_pt := func<r, i |
	r^(Abs(Cos(i/10)))*(Cos(a) + pt_ival*Sin(a)) where a := ptarg*i>
    ;

//    for c in pts do

    Sort(~R, sort_cmp);

//R := [* z: z in R *];

    if Lag then
	func1 := laguerre;
    else
	func1 := newton;
    end if;

    lift_prec := false;
    tried_mnewton := false;
    force_dyn_off := false;

    NA := AssociativeArray();
    procedure include_in_NA(~NA, bp, Q)
	for z in Q do
	    t := nmapc(z, bp);
//printf "NEAR INCL: %.3o -> %o\n", z, t;
	    if IsDefined(NA, t) then
		NA[t] := Append(NA[t], z);
	    else
		NA[t] := [z];
	    end if;
	end for;
    end procedure;

    procedure extend_near(NA, bp, z, ~NS)
	t := nmapc(z, bp);
//printf "EXT INCL: %.3o -> %o\n", z, t;
	if IsDefined(NA, t) then
	    for w in NA[t] do
		Include(~NS, w);
	    end for;
	end if;
	if t[4] le -bp then
	    /* Check for case of (r + eps*i) which can be near a real */
	    t := <t[1], t[2], 0, 1>;
	    if IsDefined(NA, t) then
		for w in NA[t] do
		    Include(~NS, w);
//printf " GOT NEAR REAL %o\n", w;
		end for;
	    end if;
	end if;
    end procedure;

    include_in_NA(~NA, Nbp, R);

    done_rec_red := false;
    Initial_close := false;
    use_quad := true;
    last_radius := 0;
    last_radius_try := 0;
    last_radius_fail := 0;

    if 1 eq 1 and maxcl le 100 then
	Limit := Min(Limit, 100);
	Limit_Inc := 10;
    else
	Limit_Inc := Limit;
    end if;

    bprec_inc := bprec div 2;
    nsteps_tot := 0;
    nsteps_count := 0;

    while #R lt d do

	npts +:= 1;
	/*
	if npts gt Limit then break; end if;
	*/

	if nf2 gt 3 or nf gt Max(10, 3*#R) then
	    RR := Roots(f, C: Al := "Schonhage");
	    R := [t[1]: t in RR];
	    assert #R eq d;
	    break;
	end if;

	vprintf ComplexRoots:
	    "*** #R: %o, npts: %o, nfail: %o, nfail2: %o, time: %o\n",
	    #R, npts, nf, nf2, Cputime(T);

	MNS := 1;
	//"tried_mnewton:", tried_mnewton, nf+nf2, MNS*(#R - nreal + 1);
	//if #R gt 0 then Universe(R); end if;

	if
	    1 eq 1 and not done_rec_red /*and nf gt 0*/ and
	    mincl gt RED_COEFFS_NB
	    //maxcl gt RED_COEFFS_NB
	then
	    done_rec_red := true;
	    if mincl gt RED_COEFFS_NB then
		shift := mincl - RED_COEFFS_NB;
	    else
		shift := maxcl - RED_COEFFS_NB;
	    end if;
	    vprintf ComplexRoots:
		"RECURSE on reduced polynomial; shift: %o\n", shift;
	    s := 2^shift;
	    ff := f div s;
	    IndentPush();
	    vtime ComplexRoots: Initial := roots(ff: Prec := Prec);
	    IndentPop();
	    fix_Initial(~Initial);

	    vprint ComplexRoots: "GOT reduced Initial:", Initial;
	elif 1 eq 1 and not tried_mnewton and nf+nf2 ge MNS*(#R - nreal + 1)
	then
	    vprint ComplexRoots: "TRY mnewton";
	    tried_mnewton := true;
	    mns := prec;
	    vtime ComplexRoots: RM, min := mnewton(
		f, mns: X := R, Fixed := #R, Prec := prec
	    );
	    if min le 1 then
		vprint ComplexRoots: "USE RM as initial";
		//"RM:", RM;
		Initial := RM[#R + 1 .. #RM];
		fix_Initial(~Initial);
		Initial_close := true;
		Nbp := Min(Nbp, bprec div 4);
	    end if;

	elif Dyn gt 1 and lift_prec then

	    last_nf := nf;
	    if 1 eq 1 then
		if bprec ge 10000 then
		    //bprec_inc := 1000;
		    bprec_inc := 100;
		else
		    bprec_inc := 100;
		end if;
		bprec := bprec + bprec_inc;
	    else
		bprec := Max(bprec, Ceiling(1.2*bprec));
	    end if;

	    /*
	    if true and bprec gt 10*obprec then
		error "TOO BIG";
	    end if;
	    */

	    bprec := round_prec(bprec);
	    RF := RFB(bprec);
	    C<i> := CFB(bprec);

	    if nreal gt 0 and RIU cmpne 0 then
		refine_reals(f, ~RIU, bprec + REAL_EXTRA_PREC, RF, ~NR);
		//"GOT NEW REAL R:", NR;
		//NR := [t[1]: t in Roots(f, RF)];
		//"RECOMPUTED NEW REAL R:", NR;
	    else
		NR := [];
	    end if;
	    R := [C!z: z in NR] cat [C!R[i]: i in [#NR + 1 .. #R]];

	    Append(~pbhist, bprec);
	    Append(~pdhist, GPD(C));

	    //"LIFT R:", R;
	    vprint ComplexRoots: "LIFT bprec to", bprec;
	    if #R gt 0 then
		vprint ComplexRoots: "Recompute tp";
		if 1 eq 1 and f_real then
		    R1 := R[nreal + 1 .. #R by 2];
		    i := nreal + 1;
		    i := 1; // ignore otp below
		    PP<y> := PolynomialRing(RF);
		    U := [PP|];
		    while i le #R do
			r := R[i];
			if i lt #R and R[i + 1] eq ComplexConjugate(r) then
			    vprint ComplexRoots: "Lift by conj:", i;
			    t := y^2 - 2*Real(r)*y + Norm(r);
			    i +:= 2;
			else
			    t := y - r;
			    i +:= 1;
			end if;
			//"Universe U:", Universe(U); "t p:", Parent(t);
			Append(~U, t);
		    end while;
		    //"Universe U:", Universe(U);
		    //tp := PP!otp * &*U; // WRONG!
		    tp := &*U;
		    //"tp:", tp;
		    delete U;
		else
		    vtime ComplexRoots: tp := &*[x - c: c in R];
		end if;
		vprint ComplexRoots: "Recompute g";
		vtime ComplexRoots: g := f div tp;
		vprint ComplexRoots: "New g parent:", Parent(g);
		vprint ComplexRoots: "New RF:", RF;
		vprint ComplexRoots: "New C:", C;
		//"new g:", g;
	    else
		tp := 1;
		g := f;
	    end if;
	    Radius := 0;
	end if;

	//no := [Norm(Evaluate(f, x)): x in R]; "NORMS:", no;
	//if #R gt 1 then "MAX:", Max(no); end if;
	//"g:", g;

	use_init := false;
	use_intial_radius := false;
	if Degree(g) eq 1 and use_quad then
	    vprint ComplexRoots: "Use linear";
	    vtime ComplexRoots: r := C!-Coefficient(g, 0)/Coefficient(g, 1);
	    vprint ComplexRoots: "Got constant r:", CC!r;
	elif Initial_close and #Initial gt 0 then
	    vprintf ComplexRoots: "Use close Initial point %o\n", #Initial;
	    r := C!Initial[#Initial];
	    Prune(~Initial);
	    use_init := true;
	elif Degree(g) eq 2 and use_quad then
	    /*
	    Coerce into C for Sqrt in case g is still over Q; example problem:
		f:=x^4 - 2*x^2 + 4;
		R:=Roots(f, ComplexField(500));
	    */

	    vprint ComplexRoots: "Use quad";
	    c, b, a := Explode(Coefficients(g));
	    vtime ComplexRoots: r := (-b + Sqrt(C!b^2 - 4*a*c))/(2*a);
	    vprint ComplexRoots: "Got quad r:", CC!r;
	else
	    if #Initial gt 0 then
		vprintf ComplexRoots: "Use Initial point %o\n", #Initial;
		c := C!Initial[#Initial];
		Prune(~Initial);
		use_init := false;
	    else
		if npts le 1 and nf eq 0 then
		    r := 1;
		    vprintf ComplexRoots: "Use initial radius %.3o\n", r;
		elif last_radius ne 0 and last_radius_fail lt 20 then
		    use_intial_radius := true;
		    r := last_radius;
		    last_radius_try +:= 1;
		    //last_radius := 0;
		    vprintf ComplexRoots:
    "Use last root radius %.3o (last_radius_try %o, last_radius_fail %o)\n",
	r, last_radius_try, last_radius_fail;
		else
		    if #Initial eq 0 and Radius eq 0 then
			vprint ComplexRoots:
			    "Recompute radius for degree", Degree(g);
			Radius := get_radius(g);
			vprintf ComplexRoots: "Got radius: %.3o\n", Radius;
			/*
			RevRadius := get_radius(Reverse(g));
			recip := 1/RevRadius;
			vprintf ComplexRoots:
			    "Got rev radius: %.3o, recip: %.3o\n",
			    RevRadius, recip;
			if 0 eq 1 and RevRadius lt Radius then
			    Radius := recip;
			end if;
			vprintf ComplexRoots: "Use radius: %.3o\n", Radius;
			*/
		    end if;
		    r := Radius;
		end if;
		vprintf ComplexRoots: "Use next point %o, radius %.1o\n",
		    pti, r;
		//c := get_rand_comp(RF!r, i);
		c := C!get_next_pt(r, pti);
		//"First c:", c; Parent(c);
		pti +:= 1;
	    end if;

	    dyn := not force_dyn_off;
	    vprint ComplexRoots: "c:", CC!c;
	    vprint ComplexRoots, 3: c;
	    IndentPush();
	    vtime ComplexRoots: r, nsteps := func1(
		g, c: Limit := Limit, Verb := Verb, Dyn := dyn
	    );
	    if Verb ge HIGH_VERB then
		vprint ComplexRoots: "Got initial r:", r;
	    else
		vprint ComplexRoots: "Got initial r (approx):", CC!r;
	    end if;
	    IndentPop();

	    if r ne 0 then
		nsteps_tot +:= nsteps;
		nsteps_count +:= 1;
		Limit := Ceiling(2 * nsteps_tot / nsteps_count);
		Limit := Max(Limit, 10);
		vprint ComplexRoots: "Reset limit to", Limit;
	    end if;

	end if;

	if r eq 0 then
	    nf +:= 1;
	    if nf gt 10 then
		force_dyn_off := true;
	    end if;
	    Limit +:= Limit_Inc;
	    vprint ComplexRoots: "FAIL 1st step";
	    if 1 eq 1 and use_intial_radius then
		last_radius_fail +:= 1;
	    elif 1 eq 1 and tried_mnewton and #Initial eq 0
	    /*or nf mod 10 eq 0*/ then
		lift_prec := true;
	    end if;
	    continue;
	end if;

	Near := [];
	if NEW_SEARCH then
	    NS := {};
	    extend_near(NA, Nbp, r, ~NS);
	    if r in NS then
		vprint ComplexRoots: "New r already in Near!";
		use_quad := Degree(g) gt 2;
		continue;
	    end if;
	    if #NS gt 0 then
		Near := Setseq(NS);
		Sort(~Near, sort_cmp);
	    end if;
	else
	    if USE_SEARCH then
		nc := Norm(r);
		//search_bound := 10^-(Prec/3);
		search_bound := 2^-(1.9*bprec);
		//search_bound := 0.1;
    //"search_bound:", search_bound;
    //"diff norms:", [<y, RR!Norm(r - y)>: y in R];
		Near := [y: y in R | Norm(r - y) le search_bound];
	    end if;
	end if;

	rr := r;
	while true do

	    if #Near gt 0 then
		if bprec lt MIN_NEAR_BPREC then
		    vprint ComplexRoots:
			"Skip and force lift since near and low prec";
		    lift_prec := true;
		    r := "skip";
		    break;
		end if;
		if use_init then
		    vprint ComplexRoots: "Skip since initial point with near";
		    r := "skip";
		    break;
		end if;
	    end if;

	    tf := f;
	    last_Near := Near;
	    if #Near gt 0 then
		vprintf ComplexRoots:
		    "Near (%o): %o\n", #Near, [CC!x: x in Near];
		tbprec := bprec + 64*#Near;
		vprintf ComplexRoots: "Temp bprec: %o\n", tbprec;
		TC := CFB(tbprec);
		Near := [TC!z: z in Near];
		if GPB(Parent(r)) lt tbprec then
		    r := TC!r;
		end if;
		Pf := Parent(f);
		BPf := BaseRing(Pf);
		t := Type(BPf);
		if t eq FldRe and GPB(BPf) lt tbprec then
		    tf := PolynomialRing(RFB(tbprec))!f;
		elif t eq FldCom and GPB(BPf) lt tbprec then
		    tf := PolynomialRing(TC)!f;
		end if;
	    end if;
	    IndentPush();
	    //"Redo with f degree:", Degree(f);
	    vtime ComplexRoots:
		r := newton(
		    tf, r: Limit := Limit, Near := Near, Verb := Verb,
		    Dyn := false
		);
	    vprint ComplexRoots: "Redo r (approx):", CC!r;
	    if Verb ge HIGH_VERB then
		vprint ComplexRoots: "Redo r:", r;
		vprint ComplexRoots: "Orig r:", rr;
	    end if;
	    vprint ComplexRoots: "Diff norm:", RR!Norm(r-rr);
	    IndentPop();

	    if r eq 0 then break; end if;
	    if not NEW_SEARCH then break; end if;

	    //NSc := #NS;
	    NS := {};
	    extend_near(NA, Nbp, r, ~NS);
	    //if #NS eq NSc then break; end if;
	    Near := Setseq(NS);
	    Sort(~Near, sort_cmp);
	    if Near eq last_Near then break; end if;

	    vprintf ComplexRoots: "NEW NEAR ROOTS (%o -> %o)\n",
		#last_Near, #Near;
	    if r in NS then
		vprint ComplexRoots: "New r already in Near!";
		use_quad := Degree(g) gt 2;
		r := "skip";
		break;
	    end if;
	end while;

	if r cmpeq "skip" then
	    continue;
	end if;

	if r in R then
	    vprint ComplexRoots: "Already seen r";
	    continue;
	end if;

	if r eq 0 then
	    vprint ComplexRoots: "FAIL REDO";
	    nf2 +:= 1;
	    if tried_mnewton and #Initial eq 0 then
		lift_prec := true;
	    end if;
	    continue;
	end if;
	assert r ne 0;
	//IndentPop();

	lift_prec := false;

	for ci := 1 to 2 do

	    if ci eq 2 then
		if rev and Abs(Norm(r) - 1) gt 2^(-bprec div 2) then
		    r := 1/r;
		    vprint ComplexRoots: "Use reciprocal r:", CC!r;
		else
		    break;
		end if;
	    end if;

	    im := Imaginary(r);
	    //if im lt 0 then r := ComplexConjugate(r); end if;
	    R := R cat [r];
	    include_in_NA(~NA, Nbp, [r]);

	    single := (not use_conj or im eq 0);
	    if not single then
		rc := ComplexConjugate(r);
		Append(~R, rc);
		include_in_NA(~NA, Nbp, [rc]);
	    end if;

	    if #R eq d then
		vprintf ComplexRoots:
		    "Done after %o points, %o fail(s)\n", npts, nf;

		/*
		vprint ComplexRoots: "Prec b history:", pbhist;
		vprint ComplexRoots: "Prec d history:", pdhist;
		Sort(~R, sort_cmp);
		return R;
		*/
		break;
	    end if;

	    if single then
		t := x - r;
	    else
		//t := (x - r)*(x - rc);
		t := x^2 - 2*Real(r)*x + Norm(r);
	    end if;

	    tp := t*tp;
	    g := g div t;
	    //g := f div tp;
	    //"t:", t;

	    //"Now tp:", tp;

/*
    int := Interpolation(
	R cat [0], [Universe(R)|0: i in [1..#R]] cat [Evaluate(f, 0)]
    );
    int := Polynomial([Real(x): x in Eltseq(int/LeadingCoefficient(int))]);
    "int:", int;
    "int diff:", int-tp;
*/
	end for;

	Radius := 0;
	last_radius := Sqrt(Norm(CN!r));
	last_radius_try := 0;
	last_radius_fail := 0;

	vprint ComplexRoots: "New g deg:", Degree(g);
	//"New g:", g;

//    end for;
    end while;

    if #R lt d then
    //if npts gt Limit then
	vprint ComplexRoots: "OUT OF POINTS!  CARD:", npts - 1;
    end if;

    if deflation gt 1 then
	k := deflation;
	//vprint ComplexRoots: "Deflation R:", R;
//Universe(R);
	vprint ComplexRoots: "EXPAND WITH DEFLATION FACTOR", k;
//"FIRST R:", [CC!x: x in R];
	vtime ComplexRoots: if k eq 2 then
	    R := &cat[[s, -s] where s := Sqrt(C!z): z in R];
	else
	    R := &cat[get_kth_roots(C, z, k, k): z in R];
	end if;
//"NEXT R:", [CC!x: x in R];
    end if;

    Sort(~R, sort_cmp);

    vprint ComplexRoots: "Prec b history:", pbhist;
    vprint ComplexRoots: "Prec d history:", pdhist;

    return R;
end function;

laguerre_poly := function(n: Shift := false)
   P<x> := PolynomialRing(Rationals());
   p0 := P ! 1;
   p1 := 1-x;
   if n eq 0 then return p0;
   elif n eq 1 then return p1;
   else
      for k := 2 to n do
         p2 := 1/k*((2*k-1-x)*p1-(k-1)*p0);
         p0 := p1;
         p1 := p2;
      end for;
      if Shift then
	p2 := Evaluate(p2, 1 - x - x^2);
      end if;
      return p2;
   end if;
end function;

function setup_hard()

//PREC := 30; C<i> := ComplexField(PREC);
Q := RationalField();
P<x> := PolynomialRing(Q);

/******************************************************************************/

hard := [
    x^100 + (300*x+1)^4
];
info := [
    "Moderately close roots, some with very small imaginary part"
];

/******************************************************************************/

// Tom Fisher, underflow or overflow in a R->dbl conversion
f := Polynomial([Q | 10^(-800),10^(-400),-10,1]);
Append(~hard, f);
Append(~info, "Tom Fisher, underflow or overflow; easy small real roots");

/******************************************************************************/
// Stoll ftest (invariant theory)

f :=
1447159821293962629829472327490910180410850344693136923704504407555506649544646\
    160841115922412123443304006655456466178561632559267297111148504382482114919\
    622676429941067752356927971569586402342890295000533961929951486746911856881\
    279433325284709157076153081614831585919684523810594983832991390297070764822\
    137085463939913215638171038818979586612140076840223008687758150554303241139\
    164828079136061210404551794433103856049765984711719318179457407292594938523\
    9270905669*x^6 + 3555447888840354544899205453451105930789404039206161481791\
    980412858872928336994395977574409825566877810359133233335289358165050159880\
    011050521579161190432557482851541407423212861473491100378289087162779985263\
    942535134744925344511127311771436296829378182250952760045508638678527693194\
    855202148665756346197257218394972115220587469588573599851957951453339682364\
    776854783084585472351239152551984335075500574019382825863974429598970611253\
    8203257883772168713885093560532*x^5 + 3639660683479408406879713244915867648\
    020137348564661198287089615995208523185569210070969706183628894857300526094\
    405746459956668478807445191208470075549541692669420370403977270098732529895\
    764401634154713047776780709347001935936596434485223909531424344195424975886\
    158642431608340775080756176510796138499931680948195158123189907443752186592\
    864358731412987940903705236415986728623273056438338466240062757049447157568\
    4365429679756090211544340394067308600340439146279206*x^4 + 
    198712965642690271406427916195630917475652060179617303281129748213729409734\
    584939706287055122665723321239875802785062548393934760422933757975074315699\
    863251109533427521827611254154264491994849639928391652366344165904250265329\
    390724521544623699595308967055078049258070670178195572132597931077231441488\
    661480814526451304318397596069607634506801348989014035311641970918116195738\
    124499032479740113324810358072270293362939508235492080473368018837152216714\
    22531937267472*x^3 + 610258783950161239925297455306535291717483623104142918\
    500651155986224985992332170238992738759644787257085112437025620879906054754\
    097481697270633554918754550893873552260160863746090688726277270904523789728\
    881941092052469582214648337462692981052773655593871777046730848321660246966\
    790530522928764030373692863627488845280329683550065421700811003446189318434\
    590105119035660891309056299974083546072467329823221609814368585366170550016\
    6511374646838096425120817536356348*x^2 + 
    999540973574860501689524984194009563763865259950810238075271764099338076899\
    733951018175090270704754564053693593621852148583403721106476721161693636873\
    804769010799669977066810496263837319414027328167930855605030760582372458694\
    895799908194841960193685192540665315417507942813342897599606204171844528790\
    699098912744921082598578658307013393649163209877190272467880167353048300729\
    896583465239707534289457447387351778925670676749268739793485924687740473562\
    559292005712*x + 6821437779969295642957054101664562497711113738012990375384\
    905131498797624961232647345155330028356900535603774772521694591714803083159\
    659011641106006386666642402852749144402946863816695274935070228193119552092\
    354890445232006438032797527469600991955302359177446044813132641534921053689\
    609512467756713986046136841413051300515451358020548135481147988850358578203\
    622937422906065907054736329662410621572306695140042486522947571524912735377\
    5826033549976552531906591880;

Append(~hard, f);
Append(~info, "Stoll invar theory");

/******************************************************************************/
// Klueners (needs high prec)

f :=
x^16 + 9268764703216501997711433743732834304*x^14 + 
    495362202296292049918176781969345090869678654094324340739939\
    05577132032*x^12 + 72922631295122082058756234650610293267373\
    017742406973737803680602390734403879612276939236015328146227\
    20*x^10 + 12548492428124931734809375857555235898934890346983\
    042633592599850320825440481155641008105899914282570494112699\
    25398109861146527793152*x^8 + 984268936232692732871076106766\
    017577085228603142394260915423283801419700796118897093783293\
    1688851756620731467482071186232712399854784067888218112*x^6 +
    190484752083785739126476830812441674431874006303257778268073\
    634051466713545011676417327865192067273465774913658815753667\
    1504598717195815732359656801990344704*x^4 + 
    120828773273541187232327814323484411816552297069302831393606\
    003824081608737919045955250024766414044250419333560624866561\
    409146217203334787719211729138221324435456*x^2 + 
    275711754813631278195681561790373310594949801871736545546966\
    204282931369247028452116829544644928723326140075230182168829\
    64157354280970930861497194378083660988416;
Append(~hard, f);
Append(~info, "Klueners (high prec)");

return hard, info;
end function;

hard, info := setup_hard();

/******************************************************************************/
/******************************************************************************/
/******************************************************************************/
/******************************************************************************/

/*
https://groups.google.com/forum/#!msg/flint-devel/ta2DiLGF7Qc/EIk7KcYFIlIJ

f:=x^100 + (300*x+1)^4;
// vtime ComplexRoots: R:=roots(f: Limit := 100, Prec:=200, Radius:=1);


f:=x^100 + (300*x+1)^4;
vtime ComplexRoots: R:=roots(f: Limit := 100, Prec:=200, Radius:=1);
R2:=[x: x in R|Imaginary(x) gt 0];
#R2;
di:=[Norm(R2[i]-R2[j]): j in [1..i-1], i in [1..#R2]];Min(di);
co:=[<i,j>: j in [1..i-1], i in [1..#R2]];
co[325];
R2[25];
R2[26];

// These are very close:

> R2[25];                                              
-0.0033333333333333333333333333333333333333333333333333700203405458513182896675\
7788372972271329718750075615363676515642248386055383572175572714216124274879017\
14613455735408416991332375927762273016527331219 + 
2.42081129069647787891293771888851937361065674679076129898912809680959166705428\
7486989505404710807240580962928218198316468123587942701895124415152443847894776\
6076220178554971001220222277759001996610455E-53*i
> R2[26];
-0.0033333333333333333333333333333333333333333333333333055131298588241421198114\
5012465994532271058574326584871091332833368383944636473901128485362568787491443\
13091327667414238359048653257200899000622748824 + 
1.95802587471039002657555894845023612535035093908687071763149574863281239585463\
8374292494300672124018072281544970115322740094775115806461929285338131868656358\
2414119738518176986770283426348341271739158E-53*i
> $1-$2;
6.45072106870271761698561277590697773905866017574903049258518280888000211074709\
8274444228853555487387574015221280679941786322837226705613740159045823954656114\
6482135509049087874859499259833021816971886E-53 - 
4.62785415986087852337378770438283248260305807703890581357632348176779271199649\
1126970111040386832225086813832480829937280288128268954331951298143119792384183\
6621004400367940144499388514106607248712966E-54*i


// Tom Fisher, underflow or overflow in a R->dbl conversion

f := Polynomial([Q | 10^(-800),10^(-400),-10,1]);
C := ComplexField(500);
time Roots(f, C);


P<x>:=PolynomialRing(Q);
f:=Polynomial([Q | 10^(-800),10^(-400),-10,1]);
time R:=roots(f: Prec:=500);

f:=Polynomial([Q | -10^(-800),10^(-400),-10,1]);
time R:=roots(f: Prec:=500);



*/
