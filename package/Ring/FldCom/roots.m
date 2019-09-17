freeze;

//freeze;

declare verbose ComplexRoots, 3;

import "newton.m": roots, get_kth_roots;

DUMP := true;
DUMP := false;
DUMP_FACT := false;

/////////

Z := IntegerRing();

/////////

function complex_conv(f)
    emin := Infinity();
    RC := [];
    IC := [];
    for c in Eltseq(f) do
	rm, re := MantissaExponent(Real(c));
	if rm ne 0 then
	    emin := Min(emin, re);
	else
	    re := 0;
	end if;
	Append(~RC, <rm, re>);
	im, ie := MantissaExponent(Imaginary(c));
	if im ne 0 then
	    emin := Min(emin, ie);
	else
	    ie := 0;
	end if;
	Append(~IC, <im, ie>);
    end for;
    P := PolynomialRing(Z);
    x := P.1;
    s := emin;
    fr := Polynomial([t[1]*2^(t[2] - s): t in RC]);
    gr := Polynomial([t[1]*2^(t[2] - s): t in IC]);
    return fr, gr;
end function;

/////////

/*
function sort_cmp(ta, tb)
    a := ta[1];
    b := tb[1];
    c := Real(a) - Real(b);
    if c ne 0 then return Sign(c); end if;
    // A lot of code assumes conjugates are adjacent:
    ia := Imaginary(a);
    ib := Imaginary(b);
    c := Abs(ia) - Abs(ib);
    if c ne 0 then return Sign(c); end if;
    return Sign(ia - ib);
end function;
*/

function sort_cmp(ta, tb)
    // A lot of code assumes conjugates are adjacent; sort by abs im first
    a := ta[1];
    b := tb[1];
    ia := Imaginary(a);
    ib := Imaginary(b);
    c := Abs(ia) - Abs(ib);
    if c ne 0 then return Sign(c); end if;
    c := Real(a) - Real(b);
    if c ne 0 then return Sign(c); end if;
    return Sign(ia - ib);
end function;

procedure ncomplex_roots_epsilon_reduce(~S,bp) eps:=2^(-bp/2); // MW
 for i in [1..#S] do r:=S[i][1];
  if Abs(Real(r)) le eps then S[i]:=<Imaginary(r)*Parent(r).1,S[i][2]>; end if;
  if Abs(Imaginary(r)) le eps then S[i]:=<Real(r),S[i][2]>; end if; end for;
 end procedure;

intrinsic InternalComplexRoots(f::RngUPolElt, p::RngIntElt: Initial := []) -> []
{Internal}

    //SetVerbose("ComplexRoots", 2);

//"ICR", f;

    P := Parent(f);
    v := Valuation(f);
    if v gt 0 then
	S := InternalComplexRoots(f div P.1^v, p) cat [<0, v>];
	Sort(~S, sort_cmp);
	return S;
    end if;

    if Degree(f) eq 0 then
	return [CartesianProduct(ComplexField(p), IntegerRing())|];
    end if;

    if DUMP then
	"**************";
	"*** InternalComplexRoots";
	B := BaseRing(Parent(f));
	if Type(B) eq FldCom then
	    B<i> := B; 
	end if;
	"Base ring:", BaseRing(Parent(f));
	P<x> := Parent(f);
	printf "f := %m;\n", f;
	printf "Prec := %o;\n", p;
	printf "time R := Roots(f, ComplexField(%o));\n", p;
    end if;

    C := ComplexField(p);
    i := C.1;
    if Sprint(i) eq "$.1" then
	C<i> := i;
    end if;
    PC := PolynomialRing(C); y:=PC.1;

    P := Parent(f);
    R := BaseRing(P);
    t := Type(R);
    d := Degree(f);

    scaled_neg_trail :=
	func<f | C!-Coefficient(f, 0)/Coefficient(f, Degree(f))>;

    if d eq 1 then
	return [<scaled_neg_trail(f), 1>];
    end if;

    su := Support(f);
    if su eq [0, d] then
	if DUMP then
	    printf "Use %o-th roots\n", d;
	end if;
	c := scaled_neg_trail(f);
	S := get_kth_roots(C, c, d, d);
	S := [<r, 1> : r in S];
//"First S", S;
	Sort(~S, sort_cmp);
//"Next S", S;
	return S;
    end if;

    if t in {FldCom, FldRe} then
	PZ := PolynomialRing(Z);
	l, ff := IsCoercible(PZ, f);
	if l then
	    if DUMP then "Move to", Z; end if;
	    f := ff;
	    R := Z;
	    P := PZ;
	    t := Type(R);
	end if;
    end if;

    if t eq FldCom then
	RR := RealField(Precision(R));
	PRR := PolynomialRing(RR);
	l, ff := IsCoercible(PRR, f);
	if l then
	    if DUMP then "Move to", RR; end if;
	    f := ff;
	    R := RR;
	    P := PRR;
	    t := Type(R);
	end if;
    end if;

    if t eq FldCom then
	fr, fi := complex_conv(f);
	no := fr^2 + fi^2;

	if DUMP_FACT then
	    "no degree:", Degree(no); "Get fact"; zeit := Cputime();
	end if;

	L := SquarefreeFactorization(PrimitivePart(no));

	if DUMP_FACT then
	    "Fact time:", Cputime(zeit);
	    ds := {* Degree(t[1])^^t[2]: t in L *};
	    ds;
	    if #ds gt 1 then
		ds;
		"Base ring:", BaseRing(Parent(f));
		printf "f := %o;\n", f;
		printf "Prec := %o;\n", p;
	    end if;
	end if;

	// "Got fr:", fr; "Got fi:", fi; "Got no:", no; "L:", L;

	if Precision(R) gt p then
	    CC := R;
	else
	    CC := C;
	end if;
	PCC := PolynomialRing(CC);

	if #L gt 1 or L[1, 2] gt 1 then
   	    GR := QuadraticField(-1); I:=GR.1;
	    PGR := PolynomialRing(GR);
	    ff := PGR!fr + I*PGR!fi;
	    L := Factorization(ff);
	    h := hom<GR -> CC | CC.1>;
	    h := hom<PGR -> PCC | h, PCC.1>;
	    L := [<h(t[1]), t[2]>: t in L];
	else
	    L := [<PCC!f, 1>];
	end if;
    elif t eq FldRe then
	fr, fi := complex_conv(f);
	assert fi eq 0;
	L := SquarefreeFactorization(PrimitivePart(fr));
	// "Got fr:", fr; "L:", L;

	if Precision(R) gt p then
	    RR := R;
	else
	    RR := RealField(p);
	end if;
	PRR := PolynomialRing(RR);

	if #L gt 1 or L[1, 2] gt 1 then
	    L := [<PRR!t[1], t[2]>: t in L];
	else
	    L := [<PRR!f, 1>];
	end if;
    else
	if t eq FldRat then
	    f := PolynomialRing(Z)!(LCM([Denominator(x): x in Eltseq(f)])*f);
	end if;
	f := PrimitivePart(f);
	L := Factorization(f);
    end if;

    S := [];

    for t in L do
	f := t[1];
	if Degree(f) eq 1 then
	    ro := [scaled_neg_trail(f)];
	else
	    ro := roots(f: Prec := p, Initial := Initial);
	end if;
	S cat:= [<z, t[2]>: z in ro];
    end for;
    //"DO FINAL SORT";
    Sort(~S, sort_cmp);
    //"FIRST S sort:", S;
    U := Universe(S)[1];
    ncomplex_roots_epsilon_reduce(~S,Precision(U:Bits)); // MW
    //"U:", U;
    if Type(U) eq FldRe then
	UC := ComplexField(Precision(U: Bits): Bits);
	S := [<UC!t[1], t[2]>: t in S];
    end if;

    if DUMP then
	"&&&&&&&&&&&&&"; "RES S:", S; "RES S Universe:", Universe(S);
    end if;

    return S;
end intrinsic;
