freeze;

/*
AKS, Mar 2018.
*/

Z := IntegerRing();

function mcp(X, Alg: CheckDeg, DoDet := false)
    // Base Ring: R[x], where Alg for matrices over R supported

    P := BaseRing(X);
    R := BaseRing(P);

    //"P:", P; "R:", R;

    if Type(R) eq RngIntRes then
	M := Modulus(R);
	L := 0;
	if Ilog2(M) le 40 then
	    L := Factorization(M);
	else
	    L, u, O := Factorization(
		M: Proof := false, MPQSLimit := 0, ECMLimit := 1000
	    );
	    if assigned O and #O gt 0 then
		L := 0;
		//"mcp GIVE UP:", O;
	    end if;
	end if;

	function do_berkowitz(X)
	    cp := CharacteristicPolynomial(X: Al := "Berkowitz");
	    if DoDet then
		cp := Polynomial([Coefficient(cp, 0)]);
	    end if;
	    return cp;
	end function;

	if L cmpeq 0 then
	    return do_berkowitz(X);
	end if;

	//"L:", L;

	CL := <>;
	ML := [];
	maxdegs := 0;
	for t in L do
	    if t[2] eq 1 then
		F := GF(t[1], 1: Check := false);
		PP := PolynomialRing(F);
		C := mcp(Matrix(PP, X), Alg:
		    CheckDeg := CheckDeg, DoDet := DoDet);
	    else
		S := IntegerRing(t[1]^t[2]);
		PP := PolynomialRing(S);
		C := do_berkowitz(Matrix(PP, X));
	    end if;
	    degs := [Degree(c): c in Eltseq(C)];
	    if maxdegs cmpeq 0 then
		maxdegs := degs;
	    else
		nl := #degs;
		ol := #maxdegs;
		new := [Max(maxdegs[i], degs[i]): i in [1 .. Min(ol, nl)]];
		if ol gt nl then
		    new cat:= maxdegs[nl + 1 .. ol];
		else
		    new cat:= degs[ol + 1 .. nl];
		end if;
	    end if;
	    Append(~CL, C);
	    Append(~ML, t[1]^t[2]);
	end for;

	//"CL:", CL; "ML:", ML; "maxdegs:", maxdegs;

	Q := [];
	for i := 1 to #maxdegs do
	    q := [];
	    for j := 0 to maxdegs[i] do
		X := [Z!Coefficient(Coefficient(c, i - 1), j): c in CL];
		x := R!CRT(X, ML);
		Append(~q, x);
	    end for;
	    f := Polynomial(q);
	    Append(~Q, f);
	end for;
	f := Polynomial(Q);
	return f;
    end if;

    F := FieldOfFractions(R);
    OR := R;
    OF := F;

    n := Ncols(X);
    D := [Max([Degree(X[i, j]): j in [1 .. n]]): i in [1 .. n]];
    D := [Max(x, 0): x in D];
    B := &+D + 1;

    D2 := [Max([Degree(X[i, j]): i in [1 .. n]]): j in [1 .. n]];
    D2 := [Max(x, 0): x in D2];
    B2 := &+D2 + 1;

    B := Min(B, B2);

    //"Orig B:", B; "Orig D:", D;

    coerce := false;
    if Type(R) eq FldFin then
	q := #R;
	if CheckDeg then
	    B +:= 5;
	    C := Max(2*B + 1, 2^16);
	else
	    C := B + 1;
	end if;
	if q lt C then
	    l := Ceiling(Log(q, C));
	    R := ext<R | l>;
	    //"Move R to", R;
	    F := R;
	    coerce := true;
	end if;

	ES := {};
	procedure move_to_next_e(~e, ~ES)
	    repeat
		e := Random(R);
	    until e notin ES;
	    Include(~ES, e);
	end procedure;
	move_to_next_e(~e, ~ES);
    else
	procedure move_to_next_e(~e, ~ES)
	    if e gt 0 then
		e := -e;
	    else
		e := -e + 1;
	    end if;
	end procedure;
	e := 0;
    end if;

    next_e := e;
    po := [];
    ev := [];

    // MA := MatrixRing(R, Ncols(X));
    // PMA := PolynomialRing(MA);

    while true do
	while #ev lt B do
	    e := next_e;
	    mp := Alg(Matrix(n, [Evaluate(f, e): f in Eltseq(X)]));
	    move_to_next_e(~next_e, ~ES);
	    if CheckDeg then
		dmp := Degree(mp);
		if #ev gt 0 and dmp gt Degree(ev[#ev]) then
		    // Restart
		    po := [e];
		    ev := [mp];
		    continue;
		elif CheckDeg and #ev gt 0 and dmp lt Degree(ev[#ev]) then
		    // Reject this one
		    continue;
		end if;
	    end if;
	    //"e p:", Parent(e); if #po gt 0 then "po U:", Universe(po); end if;
	    Append(~po, e);
	    Append(~ev, mp);
	end while;

	//"next_e:", next_e; "po:", po; // "ev:", ev;

	E := Transpose(Matrix([Eltseq(x): x in ev]));
	E := Matrix(F, E);
	poF := ChangeUniverse(po, F);
	res := [Interpolation(poF, Eltseq(E[i])): i in [1..Nrows(E)]];
	delete E, poF;
	//"res:", res;

	coerce := true;
	if coerce then
	    l, res := IsCoercible(PowerSequence(P), res);
	    if not l then
		//"FAIL COERCE";
		B := #po + 5;
		//printf "RETRY: e %o, B %o\n", e, B;
		continue;
	    end if;
	end if;

	if not CheckDeg then
	    break;
	end if;

	r := Polynomial(R, [Evaluate(c, e): c in res]);
	t := Evaluate(r, Matrix(n, [Evaluate(f, e): f in Eltseq(X)]));
	if t eq 0 then
	    break;
	end if;

	B := #po + 3;
	//printf "RETRY: e %o, B %o\n", e, B;
    end while;

    //"res:", res; "U res:", Universe(res);

    res := Polynomial(P, res);
    return res;

end function;

intrinsic InternalMCPoly(X::Mtrx, CP::BoolElt) -> RngUPol
{Internal}
    Alg := CP select CharacteristicPolynomial else MinimalPolynomial;
    return mcp(X, Alg: CheckDeg := not CP);
end intrinsic;

intrinsic InternalDeterminant(X::Mtrx) -> RngUPol
{Internal}
    Alg := func<X | Polynomial([Determinant(X)])>;
    Alg := func<X | [Determinant(X)]>;
    D := mcp(X, Alg: CheckDeg := false, DoDet);
    assert Degree(D) le 0;
    return Coefficient(D, 0);
end intrinsic;
