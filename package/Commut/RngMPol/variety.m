freeze;

function comp_sort_cmp(a, b)
    a := a[1];
    b := b[1];
    c := Real(a) - Real(b);
    if c ne 0 then return Sign(c); end if;
    return Sign(Imaginary(a) - Imaginary(b));
end function;

intrinsic InternalVarietyRC(I, R: OB := Basis(I), Check := false) -> []
{Internal}

    t := Type(R);
    if t eq FldRe then
	comp := false;
    else
	assert t eq FldCom;
	comp := true;
    end if;

    vprint Variety: "Variety over:", R;

    vprint Variety: "GET GB";
    vtime Variety: Groebner(I);
    assert IsZeroDimensional(I);

    if MonomialOrder(I) ne <"lex"> then
	I := ChangeOrder(I, "lex");
    end if;

    if 0 eq 1 then
	vprint Variety: "GET RadicalDecomposition";
	vtime Variety: D := RadicalDecomposition(I);
    else
	vprint Variety: "GET TRIANG";
	vtime Variety: D := TriangularDecomposition(I);
    end if;
    vprint Variety: "Decomposition len:", #D;

    n := Rank(I);
    P := Generic(I);
    PR := ChangeRing(P, R);
    S := [];

    p := Precision(R);
    if comp then
	RA := [ComplexField(p + 10*i): i in [1 .. n]];
    else
	RA := [RealField(p + 10*i): i in [1 .. n]];
    end if;

    //vprint Variety: "RA:", RA;

    for i := 1 to #D do
	vprint Variety: "*** BRANCH", i;
	J := D[i];

	E := EasyIdeal(J);
	Q := Generic(E)/E;
	vprint Variety: "Check whether radical";
	vtime Variety:
	for i := n - 1 to 1 by -1 do
	    //"mp", i; time 
	    f := MinimalPolynomial(Q.i);
	    if not IsSquarefree(f) then
		vprint Variety: "Move to Radical";
		vtime Variety: J := Radical(J);
		break;
	    end if;
	end for;

	vprint Variety: "Get GB";
	vtime Variety: G := GroebnerBasis(ChangeOrder(J, "lex"));
	assert #G eq n;
	//"Here G:", G;

	function get_sol(t, v)
	    TR := RA[v];
	    f := G[v];
	    f := CoefficientDenominator(f)*f; // Avoid bad rational arithmetic
	    l, uf, vv := IsUnivariate(f);
	    //printf "v: %o, f: %o, t: %o\n", v, f, t; "TR:", TR;
	    if l then
		//"uf:", uf;
		L := Roots(uf, TR);
	    else
		TPR := ChangeRing(P, TR);
		ef := TPR!f;
		for j := v + 1 to n do
		    ef := Evaluate(ef, j, t[j]);
		end for;
		ef := UnivariatePolynomial(ef);
		//"ef:", ef;
		L := Roots(ef, TR);
	    end if;
	    L := [t[1]: t in L];
	    //"Got roots L:", L;
	    res := [];
	    for x in L do
		u := t;
		u[v] := x;
		if v eq 1 then
		    Append(~res, u);
		else
		    IndentPush();
		    res cat:= get_sol(u, v - 1);
		    IndentPop();
		end if;
	    end for;
	    return res;
	end function;

	z := R!0;
	t := <z: i in [1 .. n]>;
	vprint Variety: "Get branch solutions";
	vtime Variety: SS := get_sol(t, n);
	vprint Variety: "Num branch solutions:", #SS;
	S cat:= SS;
    end for;

    if comp then
	Sort(~S, comp_sort_cmp);
    else
	Sort(~S);
    end if;

    vprint Variety: "Total number of solutions:", #S;

    if Check and #S gt 0 then
	//vprint Variety: "Do eval"; vtime Variety:
	"Do variety eval check; variety size:", #S;
	time ev := [[RealField(5)!Norm(Evaluate(f, t)): f in OB]: t in S];
	//"Eval:", ev;
	"Eval MAX:", Max([Abs(x): x in t, t in ev]) + 0;
    end if;

    return S;
end intrinsic;
