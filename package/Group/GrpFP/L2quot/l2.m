freeze;

import "minass.m": USE_COLON_IDEAL;

DUMP := true;
DUMP := false;

USE_NF := true; USE_GB := true;
USE_NF := false; USE_GB := false;

import "l2subgroups.m": isA4, isS4, isA5, isDihedral;

declare verbose L2Quotients, 3;


/* all k-element subsets of [1..m]
 */
subsets := function(m, k)
    if k gt m then
        return [];
    end if;

    tmp := [1..k];
    result := [tmp];

    i := k;

    while true do
        while i gt 0 and tmp[i] eq m-k+i do
            i -:= 1;
        end while;

        if i le 0 then
            break;
        end if;

        tmp[i] +:= 1;

        while i lt k do
            i +:= 1;
            tmp[i] := tmp[i-1] + 1;
        end while;

        Append(~result, tmp);
    end while;

    return result;
end function;


/* return the index of the variable x_{S[1] \dotsb S[k]} in
 * R[x_{1 \dotsb m}, \dotsc, x_1].
 */
indexOf := function(S, m)
    k := #S;
    if k eq 1 then
        return 2^m - Index(subsets(m, k), S);
    else
        return 2^m
            - (&+[Binomial(m, i) : i in [1..k-1]] + Index(subsets(m, k), S));
    end if;
end function;


/* return the graded polynomial ring R[x_{1 \dotsb m}, \dotsc, x_1]
 */
getRing := function(m)
    OW := Reverse(&cat [[i : j in [1..Binomial(m, i)]] : i in [1..m]]);
    r := PolynomialRing(Integers(), OW);

// MAN 3050 (with no SingleInfinite) is faster with the Binomial weights
    nv := &+[Binomial(m, i): i in [1 .. m]];
    r := PolynomialRing( Integers(), nv, "grevlex");

    //GW2 := [1, 2, 2, 1, 1, 1, 1];
GW2 := [1, 1, 1, 1, 1, 1, 1]; // Needed for MAN 3050, 4677 [, 3132?]
    if nv eq #GW2 then
	r := PolynomialRing( Integers(),  GW2);
    elif nv eq 3 then
	GW := [1, 1, 1];
	r := PolynomialRing( Integers(),  GW);
    end if;

//"nv:", nv; "Use ring:", r;

    names := [];

    for k in Reverse([1..m]) do
        for s in Reverse(subsets(m, k)) do
            Append(~names, "x" cat &cat[Sprint(i) : i in s]);
        end for;
    end for;
    AssignNames(~r, names);

    return r;
end function;

variableIndices := function(m)
    result := [];

    for k in Reverse([1..m]) do
        for s in Reverse(subsets(m, k)) do
            Append(~result, s);
        end for;
    end for;

    return result;
end function;

/* return variable x_{S[1] \dotsb S[k]} in R.
 */
x := function(R, S)
    m := Round(Log(2, Rank(R) + 1));
    return R.indexOf(S, m);
end function;


/* invert word
 */
inv := function(word)
    return [-word[i] : i in Reverse([1..#word])];
end function;


/* cyclically and freely reduce the word represented by the list w.
 */
reduce := function(w)
    if #w eq 0 then
        return w;
    end if;

    max := Maximum(w);
    min := Minimum(w);
    m := Maximum(max, Abs(min));
    F := FreeGroup(m);
    // freely reduce;
    w := Eltseq(F!w);

    // cyclically reduce
    while #w gt 0 and w[1] + w[#w] eq 0 do
        w := w[[2..#w - 1]];
    end while;

    return w;
end function;


/* check, whether the word is of the form X^2*Y (possibly after rotation),
 * where X and Y are subwords. Always finds the longest possible X.
 *
 * Returns (true, X, Y) if this is possible,
 * (false, _, _) otherwise.
 */
FindHighestPower := function(word)

oword := word;

    n := #word;
    k := Floor(n/2);

    base := [];
    exp := 1;
    remainder := word;
    length := 0;

    while k gt 0 do
        for i in [1..n] do
//"k:", k; "i:", i;
            cand := word[[1..k]];
//"cand:", cand;
            power := 1;
//"first sub:", word[[power*k + 1, (power+1)*k]];
            while (power+1)*k le n
                        //and word[[power*k + 1, (power+1)*k]] eq cand do
                        and word[[power*k + 1 .. (power+1)*k]] eq cand do
                power +:= 1;
//"Pass power", power;
            end while;

            if power gt 1 and power*k gt length then
                base := cand;
                exp := power;
                remainder := word[[power*k + 1..n]];
                length := power*k;
            end if;

            word := word[[2..n]] cat [word[1]];
        end for;

        k -:= 1;
    end while;

//printf "FindHighestPower: %o -> %o, %o, %o\n", word, base, exp, remainder;

//"oword:", oword;

/*
b2,e2,r2:=L2QFindHighestPower(oword);

if base ne b2 or
e2 ne exp or
r2 ne remainder then
    "b2:", b2;
    "e2:", e2;
    "r2:", r2;
    error "BAD";
end if;
*/

    return base, exp, remainder;
end function;

Xi := function(m, pol, II)

    if Type(II) eq SeqEnum and #II gt 0 then
	NF := func<f | NormalForm(f, II)>;
    else
	NF := func<f | f>;
    end if;

    pol := NF(pol);

//"Xi II:", II; "Xi", m; time
    if 1 eq 1 then
	/*
	i range: [0 .. l].
	j = l - i.
	pol_exp: m - 1 - 2*j = (m - 1 - 2*l) + 2*i.
	pol_exp_base: (m - 1 - 2*l).
	*/

	l := Floor((m-1)/2);
	pol_exp_base := m - 1 - 2*l;

	sum := 0;
	Q := [];
	for i := 0 to l do
	    if i eq 0 then
		//pow := pol^pol_exp_base;
		if pol_exp_base eq 0 then
		    pow := pol^0;
		else
		    pow := pol;
		    for k := 2 to pol_exp_base do
			pow := NF(pow*pol);
		    end for;
		end if;
//pow := pol^pol_exp_base;
	    else
		if i eq 1 then
		    pol2 := NF(pol*pol);
//pol2 := (pol*pol);
		end if;
		pow := NF(pow*pol2); // pol^(pol_exp_base + 2*i)
//pow := (pow*pol2); // pol^(pol_exp_base + 2*i)
	    end if;
	    j := l - i;
	    Append(~Q, (-1)^j*Binomial(m - 1 - j, j)*pow);
	end for;
	res1 := &+Q;
res1:=NF(res1);
//"res1:", res1;
return res1;
    end if;

"OLD";
time 
    res := &+[(-1)^j*Binomial(m-1-j,j)*pol^(m-1-2*j)
            : j in [0..Floor((m-1)/2)]];
//res := NF(res); "res:", res;
//"res1:", res1; assert res eq res1;
    return res;
end function;

FindHighestPower := L2QFindHighestPower;


/* we use an injective map of the set of words over F_m to the integers.
 *
 * The variables g_i are mapped to i, and g_i^{-1} is mapped to m-i.
 * For words, use the (2m+1)-adic expansion.
 */

wordToNum := function(w, m)
    return Seqint(Reverse([x gt 0 select x else m-x : x in w]), 2*m+1);
end function;


/* Find the minimal value of the map F_m \to \Z on the set of
 * rotations of the word represented by x.
 */
minimalRotation := function(x, m, l)
ox := x;
    min := x;

    for i in [1..l] do
        q, r := Quotrem(x, 2*m+1);
        x := q + r*(2*m+1)^(l-1);

        if x lt min then
            min := x;
        end if;
    end for;

//printf "minimalRotation(%o, %o, %o) -> %o\n", ox, m, l, min;
    return min;
end function;


/* find the minimal representative of the word, its inverse, and all rotations.
 */
minimalRepresentative := function(word, m)
    return Minimum([minimalRotation(wordToNum(w, m), m, #w)
            : w in [word, inv(word)]]);
end function;


/* trace polynomials are stored in an associative array, where the keys are
 * the integer representations of words.
 *
 * This method initializes the polynomials of the g_I with
 * I \subseteq {1,\dotsc,m}.
 */
initializePols := procedure(R, ~pols)
    m := Round(Log(2, Rank(R) + 1));

    F := FreeGroup(m);

    pols[minimalRepresentative([], m)] := 2;

    for s in [SetToSequence(s) : s in Subsets({1..m}) | #s ne 0] do
        pols[minimalRepresentative(s, m)] := x(R, s);
    end for;
end procedure;

/* Compute the trace polynomial of word and store it in the associative array
 * pols.
 * Optionally, reduce by the ideal II.
 *
 * This method is recursive, so several other trace polynomials may be stored
 * in the associative array as well.
 */
L2TracePolynomialList := procedure(word, ~pols, m: II := [])
    word := reduce(word);

    if DUMP then
	printf "L2TracePolynomialList: word: %o, m: %o, II: %o\n",
	    word, m, (II);
	IndentPush();
    end if;

    rep := minimalRepresentative(word, m);

    def, f := IsDefined(pols, rep);
    if def then
	if DUMP then
	    "Already def:", f;
	    IndentPop();
	end if;
        return;
    end if;

    if Type(II) eq SeqEnum and #II eq 0 then
        II := ideal< Parent(pols[1]) | >;
    end if;

    base,exp,remainder := FindHighestPower(word);

    if exp gt 1 then
        baseremainder := reduce(base cat remainder);
        base := reduce(base);
        remainder := reduce(remainder);

        $$(base, ~pols, m : II := II);
        pola := pols[minimalRepresentative(base, m)];
        $$(remainder, ~pols, m : II := II);
        polb := pols[minimalRepresentative(remainder, m)];
        $$(baseremainder, ~pols, m : II := II);
        polab := pols[minimalRepresentative(baseremainder, m)];
        f := NormalForm(Xi(exp, pola, II)*polab - Xi(exp-1,pola, II)*polb, II);
        pols[rep] := f;
	if DUMP then
	    printf "Got new res (exp %o): %o\n", exp, f;
	    IndentPop();
	end if;
        return;
    end if;

    min, i := Minimum(word);

    if min lt 0 then
        // word contains a negative exponent
        v := reduce(word[[i+1..#word]] cat word[[1..i-1]]);
        z := reduce([-min] cat word[[i+1..#word]] cat word[[1..i-1]]);

        $$(v, ~pols, m : II := II);
        $$(z, ~pols, m : II := II);

        fv := pols[minimalRepresentative(v, m)];
        fm := pols[minimalRepresentative(z, m)];
        xx := pols[minimalRepresentative([-min], m)];

        f := NormalForm(xx*fv - fm, II);
        pols[rep] := f;
	if DUMP then
	    printf "Got new res (min %o): %o\n", min, f;
	    IndentPop();
	end if;
        return;
    end if;


    // all exponents are positive.
    for i in [1..m] do
        first := Position(word, i);
        second := Position(word, i, first + 1);

        if second gt 0 then
            // i occurs twice in the word.
            xx := [i];
            y := word[[first+1..second-1]];
            v := word[[second+1..#word]] cat word[[1..first-1]];

            xy := reduce(xx cat y);
            xv := reduce(xx cat v);
            yiv := reduce(inv(y) cat v);


            $$(xy, ~pols, m : II := II);
            $$(xv, ~pols, m : II := II);
            $$(yiv, ~pols, m : II := II);


            fxy := pols[minimalRepresentative(xy, m)];
            fxv := pols[minimalRepresentative(xv, m)];
            fyiv := pols[minimalRepresentative(yiv, m)];

            f := NormalForm(fxy*fxv - fyiv, II);
            pols[rep] := f;
	    if DUMP then
		printf "Got new res (all exp pos; second: %o): %o\n", second, f;
		IndentPop();
	    end if;
            return;
        end if;
    end for;


    // all letters occur at most once, so they must be in the wrong order
    min, i := Minimum(word);
    word := word[[i..#word]] cat word[[1..i-1]];
    for j in [1..#word-1] do
        if word[j] gt word[j+1] then
            w1 := word[[1..j-1]];
            w2 := [word[j]];
            w3 := word[[j+1..#word]];
            w12 := reduce(w1 cat w2);
            w13 := reduce(w1 cat w3);
            w23 := reduce(w2 cat w3);
            w132 := reduce(w1 cat w3 cat w2);
            w1 := reduce(w1);
            w2 := reduce(w2);
            w3 := reduce(w3);

            $$(w1, ~pols, m : II := II);
            f1 := pols[minimalRepresentative(w1, m)];
            $$(w2, ~pols, m : II := II);
            f2 := pols[minimalRepresentative(w2, m)];
            $$(w3, ~pols, m : II := II);
            f3 := pols[minimalRepresentative(w3, m)];
            $$(w12, ~pols, m : II := II);
            f12 := pols[minimalRepresentative(w12, m)];
            $$(w13, ~pols, m : II := II);
            f13 := pols[minimalRepresentative(w13, m)];
            $$(w23, ~pols, m : II := II);
            f23 := pols[minimalRepresentative(w23, m)];
            $$(w132, ~pols, m : II := II);
            f132 := pols[minimalRepresentative(w132, m)];

            f := NormalForm(f1*f23 + f2*f13 + f3*f12 - f1*f2*f3 - f132, II);
            pols[rep] := f;
	    if DUMP then
		printf "Got new res (all letters at most once): %o\n", f;
		IndentPop();
	    end if;
            return;
        end if;
    end for;

    error "illegal word?", word;
end procedure;


/* Utility method to compute trace polynomials.
 *
 * This method initializes a new associative array in each run and is therefore
 * fairly inefficient. It shouldn't be used in L2TracePresentationIdeal
 * or any other method which computes more than one trace polynomial.
 */
intrinsic L2TracePolynomial(w::GrpFPElt : I := []) -> RngMPolElt
{ Compute the L2TracePolynomial of G}
    m := #Generators(Parent(w));
    r := getRing(m);
    pols := AssociativeArray();
    initializePols(r, ~pols);

//"***"; "r:", r; "I:", I;
    if Type(I) eq RngMPol then
	//"Gen I:", Generic(I); //Generic(I) eq Generic(r);
        I := ideal< r | [r!f : f in Basis(I)] >;
    else
        I := ideal< r | >;
    end if;

    L2TracePolynomialList(Eltseq(w), ~pols, m : II := I);

    return pols[minimalRepresentative(reduce(Eltseq(w)), m)];
end intrinsic;


/* return the polynomials lambda_j^i (cf. Proposition 2.4).
 */
getLambdas := function(R, k,l,i)
    m := Round(Log(2, Rank(R) + 1));

    F := FreeGroup(m);

    xk := R!L2TracePolynomial(F.k);
    xl := R!L2TracePolynomial(F.l);
    xi := R!L2TracePolynomial(F.i);
    xkl := R!L2TracePolynomial(F.k*F.l);
    xki := R!L2TracePolynomial(F.k*F.i);
    xli := R!L2TracePolynomial(F.l*F.i);
    xkli := R!L2TracePolynomial(F.k*F.l*F.i);

    return [(xk^2 + xl^2 + xkl^2 - xk*xl*xkl - 2)*xi
            - xk*xki - xl*xli + (xk*xl - xkl)*xkli,
        -xk*xi - xl*xkli + xkl*xli + 2*xki,
        -xl*xi - xk*xkli + xkl*xki + 2*xli,
        -xk*xli - xl*xki - xi*xkl + xk*xl*xi + 2*xkli];
end function;

/* compute the relation ideal I for R, so every zero of I such that rho \neq 0
 * has a realization.
 *
 * Cf. Proposition~2.7 and Corollary 2.5.
 */
getRelationIdeal := function(R, addMoreRelations)
    m := Round(Log(2, Rank(R) + 1));
    F := FreeGroup(m);

    result := [];

    if addMoreRelations then
        maxk := m;
        maxl := m;
    else
        maxk := 1;
        maxl := 2;
    end if;

    for k in [1..maxk] do
        for l in [k+1..maxl] do
            x1 := R!L2TracePolynomial(F.k);
            x2 := R!L2TracePolynomial(F.l);
            x12 := R!L2TracePolynomial(F.k*F.l);

            rho := x1^2 + x2^2 + x12^2 - x1*x2*x12 - 4;

            for i in [j : j in [1..m] | not j in [k,l]] do
                lambdas := getLambdas(R, k,l,i);
                lambda0 := lambdas[1];
                lambda1 := lambdas[2];
                lambda2 := lambdas[3];
                lambda12 := lambdas[4];

                xi := R!L2TracePolynomial(F.i);
                x1i := R!L2TracePolynomial(F.k*F.i);
                x2i := R!L2TracePolynomial(F.l*F.i);
                x12i := R!L2TracePolynomial(F.k*F.l*F.i);

                for j in [SetToSequence(s) : s in Subsets({f : f in [1..m]
                            | not f in [i,k,l]}) | #s ne 0] do
                    Fj := &*[F.f : f in j];
                    xj := R!L2TracePolynomial(Fj);
                    x1j := R!L2TracePolynomial(F.k*Fj);
                    x2j := R!L2TracePolynomial(F.l*Fj);
                    xij := R!L2TracePolynomial(F.i*Fj);
                    x12j := R!L2TracePolynomial(F.k*F.l*Fj);
                    x1ij := R!L2TracePolynomial(F.k*F.i*Fj);
                    x2ij := R!L2TracePolynomial(F.l*F.i*Fj);
                    x12ij := R!L2TracePolynomial(F.k*F.l*F.i*Fj);

                    Append(~result, xij*rho - (lambda0*xj + lambda1*x1j
                            + lambda2*x2j + lambda12*x12j));
                    Append(~result, x1ij*rho - (lambda0*x1j
                            + lambda1*(x1*x1j - xj) + lambda2*x12j
                            + lambda12*(x1*x12j - x2j)));
                    Append(~result, x2ij*rho - (lambda0*x2j
                            + lambda1*(-x12j + x1*x2j + x2*x1j + xj*x12
                                    - x1*x2*xj)
                            + lambda2*(x2*x2j - xj)
                            + lambda12*(x12*x2j - x1*xj + x1j)));
                    Append(~result, x12ij*rho - (lambda0*x12j
                            + lambda1*(x12*x1j - x2*xj + x2j)
                            + lambda2*(x2*x12j - x1j)
                            + lambda12*(x12*x12j - xj)));
                end for;
            end for;
        end for;
    end for;

    for s in subsets(m, 3) do
        i := s[1];
        j := s[2];
        k := s[3];

        xi := x(R, [i]);
        xj := x(R, [j]);
        xk := x(R, [k]);
        xij := x(R, [i,j]);
        xik := x(R, [i,k]);
        xjk := x(R, [j,k]);
        xijk := x(R, [i,j,k]);

        Append(~result, xijk^2 + (xi*xj*xk - xi*xjk - xj*xik - xk*xij)*xijk
                + xi^2 + xj^2 + xk^2 + xij^2 + xik^2 + xjk^2 - xi*xj*xij
                - xi*xk*xik - xj*xk*xjk + xij*xik*xjk - 4);
    end for;

    if m eq 4 then
        // add the following relation (which holds for arbitrary quadruples of
        // 2x2 matrices) to speed up computation
        // TODO: do this also for more than 4 generators
        Append(~result, 2*x(R, [1,2,3,4])
            - x(R, [1,2,3])*x(R,[4]) - x(R,[2,3,4])*x(R,[1])
            - x(R, [1,3,4])*x(R,[2]) - x(R,[1,2,4])*x(R,[3])
            + x(R,[1,2])*x(R,[3])*x(R,[4]) + x(R,[2,3])*x(R,[1])*x(R,[4])
            + x(R,[3,4])*x(R,[1])*x(R,[2]) + x(R,[1,4])*x(R,[2])*x(R,[3])
            - x(R,[1,2])*x(R,[3,4]) - x(R,[1,4])*x(R,[2,3])
            + x(R,[1,3])*x(R,[2,4]) - x(R,[1])*x(R,[2])*x(R,[3])*x(R,[4]));
    end if;


    return ideal< R | result >;
end function;



/* compute the trace polynomial for relations rels with respect
 * to the sign system signSystem.
 */
L2TracePresentationIdeal := function(rels, signSystem :
        I := [], pols := AssociativeArray(), addMoreRelations := false)

    assert #rels eq #signSystem;

    if #rels gt 0 then
        F := Parent(rels[1]);
    else
        F := FreeGroup(2);
    end if;

    m := #Generators(F);

    if not IsDefined(pols, minimalRepresentative([1], m)) then
        r := getRing(m);
        initializePols(r, ~pols);
    else
        r := Parent(pols[minimalRepresentative([1], m)]);
    end if;

    use_nf := false;
    if Type(I) eq SeqEnum then
	if USE_NF and #I eq 0 then
	    use_nf := true;
	    I := [];
	else
	    I := ideal< r | >;
	end if;
    end if;

    result := [];

    for i in [1..#rels] do
if DUMP then
"RELS", i;
end if;
        for beta in [F!1, F.1, F.2, F.1*F.2] do
            seq := Eltseq(rels[i]);
            k := Floor(#seq/2);
            left := F!seq[[1..k]];
            right := (F!seq[[k+1..#seq]])^(-1);

if DUMP then
"****";
"beta:", beta;
"Do left*beta; pols:";
"["; for x in Keys(pols) do printf "   %o: %o\n", x, pols[x]; end for; "]";
end if;

            L2TracePolynomialList(Eltseq(left*beta), ~pols, m : II := I);

if DUMP then
"Do right*beta; pols:", pols;
"["; for x in Keys(pols) do printf "   %o: %o\n", x, pols[x]; end for; "]";
end if;

            L2TracePolynomialList(Eltseq(right*beta), ~pols, m : II := I);

            leftpol := pols[minimalRepresentative(
                    reduce(Eltseq(left*beta)), m)];
            rightpol := pols[minimalRepresentative(
                    reduce(Eltseq(right*beta)), m)];

            newp := leftpol - signSystem[i]*rightpol;
	    if use_nf then
		newp := NormalForm(newp, I);
	    end if;
            Append(~result, newp);
	    if use_nf then
		I := result;

		if USE_GB then
		    //"Do GB of I"; time
		    I := GroebnerBasis(I);
		    //"NEW I:", I;
		end if;
	    end if;

if 1 eq 0 or DUMP then
"TIME:", Cputime();
printf "NEW POL %o: %o\n", #result, newp;
"NEW I:", I;
end if;
        end for;
    end for;


    // hack: store relation ideal in pols; the polynomials are stored at
    // non-negative keys, so we can store the relation ideal at key -1, and the
    // relation ideal with more relations at key -2
    if not addMoreRelations then
        if not IsDefined(pols, -1) then
            relid := getRelationIdeal(r, addMoreRelations);
            pols[-1] := relid;
        else
            relid := pols[-1];
        end if;
    else
        if not IsDefined(pols, -2) then
            relid := getRelationIdeal(r, addMoreRelations);
            pols[-2] := relid;
        else
            relid := pols[-2];
        end if;
    end if;

    if use_nf then
	I := ideal< r | >;

	result := Reduce(result);
    end if;

    if #result gt 0 then
        return I + relid + Ideal(result), pols;
    else
        return I + relid, pols;
    end if;
end function;


/* lexicographical order on sign systems.
 */
CompareSignSystems := function(s1, s2)
    n := Dimension(Parent(s1));
    i := 1;
    while i le n and s1[i] eq s2[i] do
        i +:= 1;
    end while;

    if i gt n then
        return 0;
    end if;

    return Integers()!s1[i] - Integers()!s2[i];
end function;

/* compute all sign systems necessary for relations.
 */
signSystems := function(relations)
    n := #relations;

    if n eq 0 then
        return [[]];
    end if;

    V := VectorSpace(GF(2), n);

    P := Parent(relations[1]);
    m := #Generators(P);

    grp := [];
    for e in CartesianPower([0,1], m) do
        Append(~grp, V![ &+[e[i]*ExponentSum(r, P.i) : i in [1..m]]
                : r in relations]);
    end for;

    result := [];

    for v in V do
        isnew := true;
        for g in grp do
            if v - g in result then
                isnew := false;
                break;
            end if;
        end for;

        if isnew then
            Append(~result, v);
        end if;
    end for;

    Sort(~result, CompareSignSystems);

    return [[(-1)^(Integers()!r[i]) : i in [1..n]] : r in result];
end function;


/* Check whether the trace tuple defined by P is absolutely irreducible.
 */

GetTestPoly := function(P)
    R := Generic(P);
    x1 := x(R, [1]);
    x2 := x(R, [2]);
    x12 := x(R, [1,2]);
    return x1^2 + x2^2 + x12^2 - x1*x2*x12 - 4;
end function;

isAbsolutelyIrreducible := function(P)

/*
"{{{*** isAbsolutelyIrreducible:", P,
not (x1^2 + x2^2 + x12^2 - x1*x2*x12 - 4) in P, "***}}}";
*/

    return GetTestPoly(P) notin P;
end function;


/* Input: Prime ideal P in Z[x_1, \dotsc, x_m].
 * Ouput: Generator of P \cap \Z.
 */
characteristic := function(P)
    ints := [f : f in Basis(P) | f in Integers()];

    if #ints eq 0 then
        return 0;
    else
        return Integers()!ints[1];
    end if;
end function;


/* Input: Prime ideal P in Z[x_1, \dotsc, x_m].
 * Output: Krull dimension of P \otimes K,
 *         where K = GF(p) if P contains a prime p, and K = \Q otherwise.
 */
dimensionOverField := function(P)
    p := characteristic(P);

    if p eq 0 then
        Q := ChangeRing(P, Rationals());
    else
        Q := ChangeRing(P, GF(p));
    end if;

    return Dimension(Q);
end function;


/* Input: Zero dimensional prime ideal P in Z[x_1, \dotsc,  x_m].
 * Output: Vector space dimension of the residue class algebra
 *         K[x_1, \dotsc, x_m]/P \otimes K,
 *         where K = GF(p) if P contains a prime p, and K = \Q otherwise.
 */
quotientDimensionOverField := function(P)
    p := characteristic(P);

    if p eq 0 then
        Q := ChangeRing(P, Rationals());
    else
        Q := ChangeRing(P, GF(p));
    end if;

    return QuotientDimension(Q);
end function;


//load "l2subgroups.magma";


/* Compute the necessary automorphisms of F to get all trace presentation
 * ideals.
 * Cf. Theorem 10.2.
 */
getAutomorphisms := function(F)
    m := #Generators(F);

    res := [hom< F -> F | [F.i : i in [1..m]] >];
    resinv := [hom< F -> F | [F.i : i in [1..m]] >];

    for j in [3..m] do
        tmp := [F.i : i in [1..m]];
        tmp[2] := F.j;
        tmp[j] := F.2;
        Append(~res, hom< F -> F | tmp >);
        Append(~resinv, hom< F -> F | tmp >);

        tmp := [F.i : i in [1..m]];
        tmp[1] := F.j;
        tmp[j] := F.1;
        Append(~res, hom< F -> F | tmp >);
        Append(~resinv, hom< F -> F | tmp >);

        tmp := [F.i : i in [1..m]];
        tmp[2] := F.2*F.j^-1;
        Append(~res, hom< F -> F | tmp >);
        tmp[2] := F.2*F.j;
        Append(~resinv, hom< F -> F | tmp >);
    end for;

    for i in [3..m] do
        for j in [i+1..m] do
            tmp := [F.k : k in [1..m]];
            tmp[1] := F.i;
            tmp[2] := F.j;
            tmp[i] := F.1;
            tmp[j] := F.2;
            Append(~res, hom< F -> F | tmp >);
            Append(~resinv, hom< F -> F | tmp >);

            tmp := [F.k : k in [1..m]];
            tmp[1] := F.i;
            tmp[2] := F.1;
            tmp[i] := F.2*F.j^-1;
            Append(~res, hom< F -> F | tmp >);
            tmp := [F.k : k in [1..m]];
            tmp[1] := F.2;
            tmp[2] := F.i*F.j;
            tmp[i] := F.1;
            Append(~resinv, hom< F -> F | tmp >);
        end for;
    end for;

    return res, resinv;
end function;


signAction := function(P, sigma)
    R := Generic(P);
    m := Round(Log(2, Rank(R) + 1));

    ind := variableIndices(m);
    images := [];
    for s in ind do
        Append(~images, &*[sigma[i] : i in s]*x(R, s));
    end for;
    alpha := hom< R -> R | images >;

    return Ideal(alpha(Basis(P)));
end function;

nontrivialSignSystems := function(m)
    result := [];

    for s in CartesianPower([1,-1],m) do
        ss := [s[i] : i in [1..m]];
        nontrivial := false;
        for i in [1..m] do
            if ss[i] eq -1 then
                nontrivial := true;
                break;
            end if;
        end for;

        if nontrivial then
            Append(~result, ss);
        end if;
    end for;

    return result;
end function;

allSignSystems := function(m)
    result := [];

    for s in CartesianPower([1,-1],m) do
        ss := [s[i] : i in [1..m]];
        Append(~result, ss);
    end for;

    return result;
end function;




declare type L2Quotient;
declare attributes L2Quotient: Group, Ideal, Automorphism;

/* Check, whether list contains a conjugate of P under an element in Sigma.
 *
 * This method is used when the action has a kernel, so there are different
 * ideals which give the same projective representation.
 */
containsConjugate := function(list, P, Sigma)
    for sigma in Sigma do
        if signAction(P, sigma) in list then
            return true;
        end if;
    end for;

    return false;
end function;

/* test, whether the ideal I is above any of the ideals of L
 */
IsSuperset := function(I, L)
    for J in L do
        if J subset I then
            return true;
        end if;
    end for;

    return false;
end function;


/* Return Psi_m(x), where Psi_m is the minimal polynomial of
 * zeta_m + zeta_m^{-1}
 */
Psi := function(m, x)
    Phi := CyclotomicPolynomial(m);
    A := CompanionMatrix(Phi);
    return Evaluate(MinimalPolynomial(A + A^-1), x);
end function;


isPGL := function(P)
    p := characteristic(P);

    if p eq 2 then
        return false;
    end if;

    m := Round(Log(2, Rank(Generic(P)) + 1));

    for s in nontrivialSignSystems(m) do
        if signAction(P, s) eq P then
            return true;
        end if;
    end for;

    return false;
end function;

intrinsic l2TypeAsTuple(P::RngMPol) -> SeqEnum[Tup]
{}
    p := characteristic(P);
    d := dimensionOverField(P);
    k := quotientDimensionOverField(P);

    infty := 0;
    if p ne 0 then
        if d eq 0 then
            if isPGL(P) then
                if k eq 2 then
                    // return Sprintf("PGL(2,%o)", p);
                    return <"PGL", 2, p, 1, 1 >;
                else
                    // return Sprintf("PGL(2,%o^%o)", p, k div 2);
                    return <"PGL", 2, p, k div 2, 1 >;
                end if;
            else
                gp := PSL;
                if k eq 1 then
                    // return Sprintf("L_2(%o)", p);
                    return <"PSL", 2, p, 1, 1 >;
                    xp := 1;
                    xp2 := 1;
                else
                    // return Sprintf("L_2(%o^%o)", p, k);
                    return <"PSL", 2, p, k, 1 >;
                end if;
            end if;
        elif d eq 1 then
            // return Sprintf("L_2(%o^infty)", p);
            return <"PSL", 2, p, infty, 1 >;
        else
            // return Sprintf("L_2(%o^(infty^%o))", p, d);
            return <"PSL", 2, p, infty, d >;
        end if;
    else
        if d eq 0 then
            // return Sprintf("L_2(infty^%o)", k);
            return <"PSL", 2, infty, k, 1 >;
        elif d eq 1 then
            // return Sprintf("L_2(infty^infty)");
            return <"PSL", 2, infty, infty, 1 >;
        else
            // return Sprintf("L_2(infty^(infty^%o))", d);
            return <"PSL", 2, infty, infty, d >;
        end if;
    end if;

end intrinsic;

l2Type := function(P)
// return type of P as string, and whether this contains infinity

    p := characteristic(P);
    d := dimensionOverField(P);
    k := quotientDimensionOverField(P);

    if p ne 0 then
        if d eq 0 then
            if isPGL(P) then
                if k eq 2 then
                    return Sprintf("PGL(2,%o)", p), false;
                else
                    return Sprintf("PGL(2,%o^%o)", p, k div 2), false;
                end if;
            else
                if k eq 1 then
                    return Sprintf("L_2(%o)", p), false;
                else
                    return Sprintf("L_2(%o^%o)", p, k), false;
                end if;
            end if;
        elif d eq 1 then
            return Sprintf("L_2(%o^infty)", p), true;
        else
            return Sprintf("L_2(%o^(infty^%o))", p, d), true;
        end if;
    else
        if d eq 0 then
            return Sprintf("L_2(infty^%o)", k), true;
        elif d eq 1 then
            return Sprintf("L_2(infty^infty)"), true;
        else
            return Sprintf("L_2(infty^(infty^%o))", d), true;
        end if;
    end if;

end function;

l2Type_inf := function(P)

    p := characteristic(P);
    d := dimensionOverField(P);
    k := quotientDimensionOverField(P);

    if p ne 0 then
        if d eq 0 then
            return false;
        else
            return true;
        end if;
    else
	return true;
    end if;

end function;


/* Compute the l2 quotients of G.
 *
 * If the optional parameter Saturate is true, then saturate at rho
 * prior to primary decomposition.
 *
 * If the optional parameter Knot is true, then only the trivial sign
 * system is used, and only prime ideals over Q are considered.
 * Furthermore, the traces of all generators are equal (since the generators
 * are all conjugate).
 *
 * ExactOrders is a list of pairs <g,o>, where g is an element of G and o an
 * order. only compute quotients where g is mapped to an element of order g.
 */
intrinsic L2Quotients(G::GrpFP :
        Knot := false,
        Saturate := false,
        ExactOrders := [],
        UseRandomTechniques := true,
        AddMoreRelations := false,
        Exclude := [],
        FactorizationBound := 10^60,
        TrialDivisionBound := 10^4,
        GroebnerBasisBound := 20,
	Limited := false,
	SingleInfinite := false,
	Primes := 0
        ) -> SeqEnum[L2Quotient]
{ Compute the L2Quotients of G}
    F := FreeGroup(#Generators(G));

    origrels := [LHS(f)*RHS(f)^-1 : f in Relations(G)];

    origrelsEvenOrder := [];
    for pair in ExactOrders do
        g := pair[1];
        ord := pair[2];

        if (ord mod 2) eq 0 and g^ord in origrels then
            Append(~origrelsEvenOrder, g^ord);
            Remove(~origrels, Index(origrels, g^ord));
        end if;
    end for;

    auts, autsinv := getAutomorphisms(F);

    if false and SingleInfinite then
        vprint L2Quotients: "Reverse auts for SingleInfinite";
	auts := Reverse(auts); autsinv := Reverse(autsinv);
    end if;

    result := [];

    pols := AssociativeArray();
    done := false;

    for a in [1..#auts] do
        vprintf L2Quotients: "automorphism %o of %o\n", a, #auts;
        restmp := [];
        restmpchar2 := [];
        alpha := auts[a];
        rels := [alpha(F!Eltseq(r)) : r in origrels];
        relsEvenOrder := [alpha(F!Eltseq(r)) : r in origrelsEvenOrder];

        ss := signSystems(rels);

//"REV ss"; ss := Reverse(ss);
//"Sign Systems:", ss;

        if Knot then
            // for knots, only look at trivial sign system
            // (we are only interested in SL(2,C) representations)
            ss := [ss[1]];
        end if;

        IndentPush();
        for s in [1..#ss] do
            vprintf L2Quotients: "sign system %o of %o\n", s, #ss;

            vprintf L2Quotients, 2: "Time to compute ideal generators: ";
            t := Cputime();
            I, pols := L2TracePresentationIdeal(rels cat relsEvenOrder,
                    ss[s] cat [-1 : i in relsEvenOrder]
                    : pols := pols, addMoreRelations := AddMoreRelations);

            R := Generic(I);
//"Got I:", I;

            if Knot then
                // in knot groups, all generators are conjugate
                for i in [1..#Generators(G)-1] do
                    I +:= Ideal(x(R, [i]) - x(R, [i+1]));
                end for;
            end if;

            t := Cputime(t);

            for b in [1..a-1] do
                beta := autsinv[b];
                ww := (alpha(beta(F.1)), alpha(beta(F.2)));
                L2TracePolynomialList(Eltseq(ww), ~pols, #Generators(G));

                l2pol := pols[minimalRepresentative(reduce(Eltseq(ww)),
                        #Generators(G))];
                I +:= Ideal(Generic(I)!(l2pol - 2) );
            end for;

            for pair in ExactOrders do
                g := alpha(F!Eltseq(pair[1]));
                ord := pair[2];

                L2TracePolynomialList(Eltseq(g), ~pols, #Generators(G));

                l2pol := pols[minimalRepresentative(reduce(Eltseq(g)),
                        #Generators(G))];

                if (ord mod 2) eq 0 then
                    I +:= Ideal(Psi(2*ord, l2pol));
                else
                    I +:= Ideal(Psi(ord, l2pol)*Psi(2*ord, l2pol));
                end if;
            end for;
            vprintf L2Quotients, 2: "%o\n", t;

            vprintf L2Quotients, 2: "Computed polynomials: %o\n", #Keys(pols);
            vprintf L2Quotients, 3: "Ideal:\n%o\n", I;

//            exclude := [];
            excludePrimes := [p : p in Exclude];

//"excludePrimes:", excludePrimes;
	if Primes cmpne 0 then 
	    sufficient := Primes;
	else
            // by default, compute all prime ideals and exclude nothing
            sufficient := [];

            if Knot then
                // for knot groups we are only interested in components in
                // characteristic zero
                sufficient := [0];
            else
                if s ne 1 then
                    Append(~excludePrimes, 2);
//                    exclude := [2];
                end if;
            end if;
	end if;

	    TestNontrivial := func<P|
			not isA4(P) and not isS4(P) and not isA5(P) and
			(Knot or not isDihedral(P))>;
	    TestPrimeIdeal := func<P|
			isAbsolutelyIrreducible(P) and
			TestNontrivial(P)>;

	    if SingleInfinite then
		TestPrimeIdealInf := func<P|
		    TestPrimeIdeal(P) and l2Type_inf(P)>;
	    else
		TestPrimeIdealInf := 0;
	    end if;

	    TestPoly := GetTestPoly(R);
//TestPoly := 0;

            IndentPush();
            t := Cputime();
            if Saturate then
                ma := MinimalAssociatedPrimes(I :
                        sufficient := sufficient,
                        exclude := excludePrimes,
                        useRandomTechniques := UseRandomTechniques,
                        factorizationBound := FactorizationBound,
                        trialDivisionBound := TrialDivisionBound,
                        groebnerBasisBound := GroebnerBasisBound,
                        SingleInfinite := SingleInfinite,
			TestPoly := TestPoly,
			limited := Limited,
                        saturate := x(R, [1])^2 + x(R,[2])^2 + x(R,[1,2])^2
                                - x(R,[1])*x(R,[2])*x(R,[1,2]) - 4);
            else
                ma := MinimalAssociatedPrimes(I :
                        sufficient := sufficient,
                        exclude := excludePrimes,
                        useRandomTechniques := UseRandomTechniques,
                        factorizationBound := FactorizationBound,
                        trialDivisionBound := TrialDivisionBound,
                        groebnerBasisBound := GroebnerBasisBound,
                        SingleInfinite := SingleInfinite,
			TestPoly := TestPoly,
                        TestPrimeIdealInf := TestPrimeIdealInf,
			Primes := Primes,
			limited := Limited);
            end if;
            t := Cputime(t);
            IndentPop();
            vprintf L2Quotients: "Time to compute prime ideals: %o\n", t;
            vprintf L2Quotients: "Prime ideals: %o\n", #ma;

	    Q := RationalField();
	    Qids := [];
            for P in ma do
		
		if characteristic(P) eq 0 then
		    //PQ := ChangeRing(P, Q);
		    PQ := P;
		else
		    PQ := P;
		end if;

		//if SingleInfinite then
		if USE_COLON_IDEAL and TestPoly ne 0 then
		    if not TestNontrivial(PQ) then
			continue;
		    end if;
		elif not TestPrimeIdeal(PQ) then
		    //else "NO:", P;
		    continue;
		end if;

		//"YES:", P;
		q := New(L2Quotient);
		q`Group := G;
		q`Ideal := P;
		q`Automorphism := alpha;

		type, inf := l2Type(P);
		vprintf L2Quotients: "Adding ideal %o\n", type;

		if characteristic(P) eq 2 then
		    /* Treat the primes containing 2 differently, since
		     * these are the only ideals which can contain prime
		     * ideals of other sign systems.
		     */
		    Append(~restmpchar2, q);
		elif
		    /*
		    not containsConjugate([q`Ideal : q in restmp], P,
			allSignSystems(#Generators(G))) then
		    */
		    not containsConjugate(Qids, PQ,
			allSignSystems(#Generators(G))) then

		    // don't add ideals which can be created from known
		    // ideals by a change of signs.
		    Append(~restmp, q);
		    Append(~Qids, PQ);

		    if SingleInfinite and inf then
			vprintf L2Quotients:
		"Found infinite image in SingleInfinite case; break out\n";
			done := true;
			break s;
		    end if;
		end if;
            end for;

	    if USE_NF then
		pols := AssociativeArray(); // Reset
	    end if;

            vprintf L2Quotients: "\n";
        end for;

        IndentPop();

        for x in restmp do
            Append(~result, x);
        end for;

        for x in restmpchar2 do
            if not IsSuperset(x`Ideal, [q`Ideal : q in result]) then
                Append(~result, x);
            end if;
        end for;

	if done then
	    break;
	end if;
    end for;

    return result;
end intrinsic;



getRel := function(x, c, p)
    if c eq 0 then
        return 0;
    end if;

    if c mod 2 eq 0 then
        return Psi(2*c, x);
    else
        if p eq 1 then
            return Psi(c, x);
        else
            return Psi(c, x)*Psi(2*c, x);
        end if;
    end if;
end function;

intrinsic L2Quotients(C::AlgMatElt :
        Saturate := false,
        UseRandomTechniques := true,
        AddMoreRelations := false,
        ExcludePrimes := [],
        FactorizationBound := 10^60,
        TrialDivisionBound := 10^4,
        GroebnerBasisBound := 20
        ) -> SeqEnum[L2Quotient]
{ Compute the L2Quotients of C }

    require IsCoxeterMatrix(C): "C must be a Coxeter matrix";

    m := Nrows(C);
    F := FreeGroup(m);

    rels := [F.i^2 : i in [1..m]];
    for i in [1..m] do
        for j in [i+1..m] do
            if C[i,j] ne 0 then
                Append(~rels, (F.i*F.j)^C[i,j]);
            end if;
        end for;
    end for;

    G := quo< F | rels >;
    alpha := hom< F -> F | [F.i : i in [1..m]] >;

    signrels := [];
    for i in [1..m] do
        for j in [i+1..m] do
            if (C[i,j] mod 2) ne 0 then
                Append(~signrels, F.i*F.j);
            end if;
        end for;
    end for;
    ss := signSystems(signrels);

    R := getRing(m);

    relIdeal := getRelationIdeal(R, AddMoreRelations);


    result := [];
    resultchar2 := [];

    for s in [1..#ss] do
        vprintf L2Quotients: "sign system %o of %o\n", s, #ss;

        // generators have projective order 2
        rels := [x(R, [i]) : i in [1..m]];

        k := 1;
        for i in [1..m] do
            for j in [i+1..m] do
                if (C[i,j] mod 2) ne 0 then
                    Append(~rels, getRel(x(R, [i,j]), C[i,j], ss[s][k]));
                    k +:= 1;
                else
                    Append(~rels, getRel(x(R, [i,j]), C[i,j], 0));
                end if;
            end for;
        end for;

        I := relIdeal + ideal< R | rels >;

        vprintf L2Quotients, 3: "Ideal:\n%o\n", I;

        // we can exclude primes dividing C[1,2], since they lead to reducible
        // images
        sufficient := [];
        excludePrimes := [p : p in ExcludePrimes];
        if C[1,2] ne 0 then
            for p in PrimeDivisors(C[1,2]) do
                Append(~excludePrimes, p);
            end for;
        end if;

        if s gt 1 then
            // 2 is irrelevant for non-trivial sign systems
            // (Note: it is irrelevant if ss[1] is the trivial sign system or
            // not; we only have to include 2 once)
            Append(~excludePrimes, 2);
        end if;

        IndentPush();
        t := Cputime();
        if Saturate then
            ma := MinimalAssociatedPrimes(I :
                    sufficient := sufficient,
                    exclude := excludePrimes,
                    useRandomTechniques := UseRandomTechniques,
                    factorizationBound := FactorizationBound,
                    trialDivisionBound := TrialDivisionBound,
                    groebnerBasisBound := GroebnerBasisBound,
                    saturate := x(R, [1])^2 + x(R,[2])^2 + x(R,[1,2])^2
                            - x(R,[1])*x(R,[2])*x(R,[1,2]) - 4);
        else
            ma := MinimalAssociatedPrimes(I :
                    sufficient := sufficient,
                    exclude := excludePrimes,
                    useRandomTechniques := UseRandomTechniques,
                    factorizationBound := FactorizationBound,
                    trialDivisionBound := TrialDivisionBound,
                    groebnerBasisBound := GroebnerBasisBound);
        end if;
        t := Cputime(t);
        IndentPop();
        vprintf L2Quotients: "Time to compute prime ideals: %o\n", t;
        vprintf L2Quotients: "Prime ideals: %o\n\n", #ma;

        for P in ma do
            if isAbsolutelyIrreducible(P) and not isA4(P) and not isS4(P)
                        and not isA5(P) and not isDihedral(P) then
                q := New(L2Quotient);
                q`Group := G;
                q`Ideal := P;
                q`Automorphism := alpha;

                if 2 in P then
                    /* Treat the primes containing 2 differently, since these
                     * are the only ideals which can contain prime ideals of
                     * other sign systems.
                     */
                    Append(~resultchar2, q);
                elif not containsConjugate([q`Ideal : q in result], P,
                        allSignSystems(#Generators(G))) then
                    // don't add ideals which can be created from known ideals
                    // by a change of signs.
                    Append(~result, q);
                end if;
            end if;
        end for;

    end for;

    for x in resultchar2 do
        if not IsSuperset(x`Ideal, [q`Ideal : q in result]) then
            Append(~result, x);
        end if;
    end for;

    return result;
end intrinsic;


intrinsic Print(q::L2Quotient)
{ Print L2Quotients }
    P := q`Ideal;

    printf "%o", l2Type(P);
end intrinsic;


getTraceTuple := function(P)
    p := characteristic(P);

    if p eq 0 or dimensionOverField(P) gt 0 then
        error "ideal is not maximal";
    end if;

    F := GF(p);
    Q := ChangeRing(P, F);

    A := Generic(Q)/Q;

    d := Dimension(A);

    if d eq 1 then
        K := F;
        return [K!NormalForm(Generic(Q).i, Q) : i in [1..Rank(Generic(P))]];
    else
        bas := MonomialBasis(A);

        repeat
            pol := &+[Random(F)*b : b in bas];
            mp := MinimalPolynomial(pol);
        until Degree(mp) eq d;

	// AKS Nov 16: use default field for extension field

        //K := ext< F | mp >;
        K := ext< F | Degree(mp) >;
	KK<w> := sub<K | Roots(mp, K)[1, 1]>;

        QQ := ChangeRing(Q, KK);
        QQ := ChangeRing(QQ, K);

        M := RadicalDecomposition(QQ)[1];

        return [K!NormalForm(Generic(M).i, M) : i in [1..Rank(Generic(P))]];
    end if;
end function;


/* Given matrices m1 and m2 in SL(2, K) such that < m1, m2 > is absolutely
 * irreducible, and traces (t1, t2, t3, t12, t13, t23, t123), compute the unique
 * matrix m3 such that tr(mi) = ti, tr(mi*mj) = tij, tr(m1*m2*m3) = t123.
 *
 * Cf. Proposition~2.4
 */
getMatrix := function(m1, m2, traces)
    F := Parent(traces[1]);
    A := MatrixAlgebra(F, 2);
    G := GL(2, F);
    t1 := traces[1];
    t2 := traces[2];
    t3 := traces[3];
    t12 := traces[4];
    t13 := traces[5];
    t23 := traces[6];
    t123 := traces[7];


    lambda0 := (t1^2 + t2^2 + t12^2 - t1*t2*t12 - 2)*t3 - t1*t13 - t2*t23
            + (t1*t2 - t12)*t123;
    lambda1 := -t1*t3 - t2*t123 + t12*t23 + 2*t13;
    lambda2 := -t2*t3 - t1*t123 + t12*t13 + 2*t23;
    lambda12 := -t1*t23 - t2*t13 - t3*t12 + t1*t2*t3 + 2*t123;

    rho := t1^2 + t2^2 + t12^2 - t1*t2*t12 - 4;

    return G!(rho^-1*(lambda0*(A!m1^0) + lambda1*(A!m1) + lambda2*(A!m2)
            + lambda12*(A!(m1*m2))));
end function;


intrinsic GetMatrices(q::L2Quotient)
        -> GrpMat[FldFin], SeqEnum[GrpMatElt[FldFin]]
{ Compute matrix images for a finite L2 quotient }
    if not IsFinite(q) then
        error "L2 quotient is not finite";
    end if;

    P := q`Ideal;

    tr := getTraceTuple(P);
    K := Parent(tr[1]);

    m := Round(Log(2, Rank(Generic(P)) + 1));

    t1 := tr[indexOf([1], m)];
    t2 := tr[indexOf([2], m)];
    t12 := tr[indexOf([1,2], m)];

    Pol := PolynomialRing(K); t := Pol.1;

    pol := t^2 - t1*t + 1;

    A := [];

    if not IsIrreducible(pol) then
        // the representation of Plesken-Fabianska, Proposition~3.1 or of
        // Jambor, Proposition~2.4 is already over K
        alpha := Roots(pol)[1][1];
        A := [Matrix(K, 2, 2, [alpha, t2*(alpha - t1) + t12, 0, t1 - alpha]),
                Matrix(K, 2, 2, [0, -1, 1, t2])];
    else
        // Use the method of Jambor, Characters of group representations in
        // arbitrary characteristic, Proposition~2.3, to get a representation
        // over K
        tmp := MatrixGroup< 4, K | [0,-1,0,0,1,t1,0,0,0,0,0,-1,0,0,1,t1],
                [0,t12 - t1*t2,-1,-t1,0,t2,0,1,1,t1,t2,t12,0,-1,0,0] >;
        X := MatrixAlgebra(K, 4);

	repeat
	    repeat
		r1 := Random(tmp);
		r2 := Random(tmp);
		r := Random(K)*(X!r1) + Random(K)*(X!r2);
		mp := MinimalPolynomial(r);
	    until Degree(mp) eq 2 and not IsIrreducible(mp);

	    alpha := Random(Eigenvalues(r))[1];
	    basr := Basis(Eigenspace(r, alpha));

	    bas := [Eltseq(x) : x in [basr[1], basr[1]*tmp.1, basr[2],
		    basr[2]*tmp.2]];

	    M := Matrix(K, 4, 4, bas);
	until Rank(M) eq 4;

        A := [ExtractBlock(M*tmp.1*M^(-1), 1, 1, 2, 2),
                ExtractBlock(M*tmp.2*M^(-1), 1, 1, 2, 2)];
    end if;

    for i in [3..m] do
        Append(~A, getMatrix(A[1], A[2], [tr[indexOf(S, m)]
                : S in [[1], [2], [i], [1,2], [1,i], [2,i], [1,2,i]]]));
    end for;

    G := MatrixGroup<2, K | A >;
    alpha := q`Automorphism;
    B := [IsOne(A[i]) select G.0 else G.i: i in [1 .. #A]];
    assert &and[B[i] eq A[i]: i in [1 .. #A]];

//"Dom:", Domain(alpha); "G:", G;
    //beta := hom< Domain(alpha) -> G | [A[i] : i in [1..m]] : Check := false>;
    beta := hom< Domain(alpha) -> G | [B[i] : i in [1..m]] : Check := false>;
    images := [beta(alpha(Domain(alpha).i)) : i in [1..m]];

//"HERE A:", A; "HERE images:", images;
    //return MatrixGroup<2, K | A >, images;
    // Match group gens to images!!!
    return MatrixGroup<2, K | images >, images;
end intrinsic;


intrinsic AddRingRelations(q::L2Quotient, rels::SeqEnum[RngMPolElt])
        -> SeqEnum[L2Quotients]
{ compute L_2-quotients with the additional ideal relations }
    I := q`Ideal + ideal< Generic(q`Ideal) | rels >;

    ma := MinimalAssociatedPrimes(I);

    result := [];
    resultchar2 := [];
    for P in ma do
        if isAbsolutelyIrreducible(P) and not isA4(P) and not isS4(P)
                    and not isA5(P) and not isDihedral(P) then
            r := New(L2Quotient);
            r`Group := q`Group;
            r`Ideal := P;
            r`Automorphism := q`Automorphism;

            if 2 in P then
                Append(~resultchar2, r);
            elif not containsConjugate([q`Ideal : q in result], P,
                    allSignSystems(#Generators(q`Group))) then
                Append(~result, r);
            end if;
        end if;
    end for;

    for x in resultchar2 do
        if not IsSuperset(x`Ideal, [q`Ideal : q in result]) then
            Append(~result, x);
        end if;
    end for;

    return result;
end intrinsic;

intrinsic SpecifyCharacteristic(q::L2Quotient, p::RngIntElt)
        -> SeqEnum[L2quotients]
{ }
    return AddRingRelations(q, [Generic(q`Ideal)!p]);
end intrinsic;

intrinsic AddGroupRelations(q::L2Quotient, rels::SeqEnum[GrpFPElt])
        -> SeqEnum[L2Quotients]
{ compute L_2-quotients with the additional group relations }
    pols := AssociativeArray();
    P := q`Ideal;
    alpha := q`Automorphism;
    F := Domain(alpha);
    G := q`Group;
    R := Generic(P);
    initializePols(R, ~pols);

    result := [];
    resultchar2 := [];

    for s in allSignSystems(#rels) do
        I, pols := L2TracePresentationIdeal([alpha(F!Eltseq(r)) : r in rels], s
                : I := P, pols := pols);

        ma := MinimalAssociatedPrimes(I);

        for P in ma do
            if isAbsolutelyIrreducible(P) and not isA4(P) and not isS4(P)
                        and not isA5(P) and not isDihedral(P) then
                r := New(L2Quotient);
                r`Group := quo< G | [G!Eltseq(r) : r in rels] >;
                r`Ideal := P;
                r`Automorphism := alpha;

                if 2 in P then
                    Append(~resultchar2, r);
                elif not containsConjugate([q`Ideal : q in result], P,
                        allSignSystems(#Generators(q`Group))) then
                    Append(~result, r);
                end if;
            end if;
        end for;
    end for;

    for x in resultchar2 do
        if not IsSuperset(x`Ideal, [q`Ideal : q in result]) then
            Append(~result, x);
        end if;
    end for;

    return result;
end intrinsic;


intrinsic IsFinite(q::L2Quotient) -> BoolElt
{ Decide whether an L2 quotient is finite }
    P := q`Ideal;

    p := characteristic(P);

    return characteristic(P) ne 0 and dimensionOverField(P) eq 0;
end intrinsic;
