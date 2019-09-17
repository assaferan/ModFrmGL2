freeze;

GBZ_HOMOG := false;

NO_TEST_POLY := true;
NO_TEST_POLY := false;

USE_COLON_IDEAL := true;

/*
USE_ColonGBOverZ:
    - Much faster for MAN 3050, 4677 [127 s] at least
    - wrong: coho (2,4,5,157)
*/

USE_ColonGBOverZ := true;
USE_ColonGBOverZ := false;

DEFAULT_FactorizationBound2 := 10^50;
DEFAULT_FactorizationBound2 := 10^40;
DEFAULT_ECMLimit := 10000;
DEFAULT_ECMLimit := 6000;
DEFAULT_ECMLimit := 0;

//SetVerbose("Factorization", 1);

USE_NEW_DECOMP := true;
USE_NEW_DECOMP := false;
DUMP_P := false;

C3<ZETA_3> := CyclotomicField(3);

declare verbose MinimalAssociatedPrimes, 3;

Z := IntegerRing();

ColonGBOverZ := function(B, D, TP)
    P := Universe(B);
    vw := VariableWeights(P);
    vw1 := vw cat [1];
//"Got vw1:", vw1;
    GI, f := Homogenization(Generic(P), false);
    Hvar := GI.#vw1;
    HI := Ideal(f(B));
    HI := ChangeOrder(HI, "grevlexw", vw1);
    GI := Generic(HI);

    BHI := Basis(HI);
//"M:", M;
//SetVerbose("Groebner",1);
    if TP cmpne 0 then
	M := EModule(GI, 3, "toptop", 2);
	L := [M![f, 0, 0]: f in BHI];
	h_TP := f(TP);
	h_1 := Hvar^WeightedDegree(h_TP); // make whole vec homogeneous
	if 1 eq 1 then
	    Append(~L, M![h_TP, h_1, 0]);
	    Append(~L, M![0, D, 1]);
	else
	    Append(~L, M![D, 1, 0]);
	    Append(~L, M![0, h_TP, h_1]);
	end if;
	coord := 3;
    else
	M := EModule(GI, 2, "pot");
	L := [M![f, 0]: f in BHI];
	Append(~L, M![D, 1]);
	coord := 2;
    end if;
//L;

    /*
    4/6/18: wrong to pass SUnit in module case; example for bad result:
    B = [ 2*x1^2 - 2*x1 - 1, x12 - x1, 3*x2 - 4*x1 + 2 ], D = 6.
    [~/bugs/mina]
    */

    vprint MinimalAssociatedPrimes: "ColonGBOverZ: Get mod GB";
//"D fact:", PrimeBasis(D); "L:", L;
    vtime MinimalAssociatedPrimes:
	MG := GroebnerBasis(L); //: SUnit := D);

//"MG:", MG;

//SetVerbose("Groebner",0);
    G1 := [v[coord]: v in MG | &and[v[j] eq 0: j in [1 .. coord - 1]]];
    r := (G1@@f);
    S := Ideal(r);
//"First S:", S;
    vprint MinimalAssociatedPrimes: "ColonGBOverZ: Get S GB:";
    vtime MinimalAssociatedPrimes:
	Groebner(S: SUnit := D);
//"GB S:", S;

    MarkGroebner(S);
    return S;
end function;

LiftFromQToZ := function(I, R)
    Groebner(I);

//"SAT I:", I; "SAT R:", R;

    denomlcm := Lcm([Z|CoefficientDenominator(f) : f in Basis(I)]);
    J := ideal<R | [f*CoefficientDenominator(f) : f in Basis(I)] >;
//"SAT denomlcm:", denomlcm; "SAT J:", J;

    if denomlcm eq 1 then
	return J;
    end if;

//vprintf MinimalAssociatedPrimes: "Sat:", denomlcm;
    if 1 eq 1 then

	D := denomlcm;
	B := Basis(J);

	return ColonGBOverZ(B, D, 0);
/*
//time
while true do
	P := Universe(B);
	vw := VariableWeights(P);
	vw1 := vw cat [1];
//"Got vw1:", vw1;
	GI, f := Homogenization(Generic(P), false);
	HI := Ideal(f(B));
	HI := ChangeOrder(HI, "grevlexw", vw1);
	GI:=Generic(HI);

	M := EModule(GI, 2, "pot");
//"M:", M;
//SetVerbose("Groebner",1);
	BHI := Basis(HI);
	L := [M![f, 0]: f in BHI] cat [M![D, 1]];
	MG := GroebnerBasis(L: SUnit := D);
	G1 := [v[2]: v in MG | v[1] eq 0];
	r := (G1@@f);
	S := Ideal(r);
//"S:", S;
//"Get S GB:"; time
	Groebner(S: SUnit := D);
	return S;
    end while;
*/

    end if;

time
S := Saturation(J, R!denomlcm);
return S;

"LiftFromQToZ J:"; J;
"denomlcm:", denomlcm;
"R!denomlcm:", denomlcm;
"****";
SetVerbose("Groebner", 1);
IndentPush();

    S := Saturation(J, R!denomlcm);

"Saturation:", S;
IndentPop();
"****";
SetVerbose("Groebner", 0);

    return S;
end function;


LiftFromFpToZ := function(I, R)
    Groebner(I);

    /* use explicit declaration, so the mapping is not returned */
    result := ideal<R | Characteristic(I), Basis(I) >;
    return result;
end function;


/* test whether the ideal I contains any of the ideals of L
 */
IsSuperset := function(I, L) 
    for J in L do
        if J subset I then
            return true;
        end if;
    end for;

    return false;
end function;


/* check whether el divides some element in list
 */
dividesElement := function(el, list)
    for x in list do
        if IsDivisibleBy(x, el) then
            return true;
        end if;
    end for;

    return false;
end function;



/* For every element $e$ in the list, check, whether is divisible by the first element $x$.
 * If this is the case, divide by the highest possible power of $x$.
 * Then check, whether $e$ and $x$ have a common factor; if this is the case, replace $x$ and $e$
 * by their cofactors, add the gcd to the list, and return. The reasoning behind this is
 * that it is desirable to get the smallest possible factors.
 * 
 * The return value indicates whether the list has been changed or not.
 *
 * assumes that all elements are positive (only relevant for sorting)
 */
coprimeStep := function(list)
    tmp := list;
    x := tmp[1];
    modified := false;
    for i in [2..#tmp] do
        while tmp[i] mod x eq 0 do
            tmp[i] /:= x;
            modified := true;
        end while;
        g := Gcd(tmp[i], x);
        if g gt 1 then
            tmp[1] /:= g;
            tmp[i] /:= g;
            Append(~tmp, g);
            tmp := [x : x in {y : y in tmp | y ne 1}];

            return true, tmp;
        end if;
    end for;

    if modified then
        tmp := [x : x in {y : y in tmp | y ne 1}];
    end if;

    return modified, tmp;
end function;
        

/* return a list of integer, such that the prime factors are the same as
 * in the given list, but all entries in the returned list are coprime
 */
toCoprime := function(list)
    result := [];
    /* make positive and remove ones */
    tmp := [Abs(x) : x in list | Abs(x) ne 1];
    while #tmp gt 0 do
        modified := true;
        while modified do
            modified, tmp := coprimeStep(tmp);
        end while;
        Append(~result, tmp[1]);
        Remove(~tmp, 1);
    end while;

    return Sort(result);
end function;

/* Compute all non-trivial gcds between elements in l1 and elements in l2
 */
commonFactors := function(l1, l2)
    result := [];

    for el1 in l1 do
        for el2 in l2 do
            g := Gcd(el1, el2);
            if g ne 1 and not g in result then
                Append(~result, g);
            end if;
        end for;
    end for;

    Sort(~result);
    return result;
end function;


/* Compute the prime factors in l
 * The second parameter specifies an upper bound for the biggest compositie factor.
 * If there is a composite factor bigger than this bound, the list [0] is returned.
 * The default value for this bound is 2^150
 * If composite Bound is 0, then try to factor arbitrarily large numbers
 */
computePrimes := function(list: compositeBound := 2^150)
    composites := toCoprime(list);
    primes := [];

    if #composites gt 0 and compositeBound gt 0 and Max(composites) gt compositeBound then
        return [0];
    end if;

    for c in composites do
        ff := Factorization(c);
        for f in ff do
            Append(~primes, f[1]);
        end for;
    end for;

    return Sort(primes);
end function;




/* compute a list of primes which is sufficient for the calculation 
 * of the minimal associated primes, i.e. a list $S$ of primes, such
 * that $p \in S$ for every associated prime $P \in \MinAss(I)$
 * with $p \in P$.
 * 
 * At the moment, this computes a Gr\"obner basis over the integers.
 * This should be changed, since it is very inefficient.
 */
sufficientPrimes := function(I, useRandomTechniques, factorizationBound, FactorizationBound2, trialDivisionBound, groebnerBasisBound, TestPoly: limited := false)
    zeroNecessary := true;

//"I:", I;

    function get_Q_DC_primes(I)
	vprintf MinimalAssociatedPrimes:
	    "Computing Groebner basis over Q for denominator coefficients: ";
        J := ChangeRing(I, Rationals());
        t := Cputime();
        Groebner(J);
        t := Cputime(t);
        vprintf MinimalAssociatedPrimes: "%o\n", t;

        G := GroebnerBasis(J);
	D := [CoefficientDenominator(f): f in G];
        //vprint MinimalAssociatedPrimes: "Denominator coefficients:", D;
	D := CoprimeBasis(D);
	D := &cat[PrimeBasis(t[1]): t in D];
	D := Sort(Setseq(Seqset(D)));
        vprint MinimalAssociatedPrimes: "DC Primes:", D;
	return D;
    end function;

    if limited then
	D := get_Q_DC_primes(I);
	return D;
    end if;

// GB over Z always better now (AKS; Oct 2016):
useRandomTechniques := false;
//useRandomTechniques := true;


    if not useRandomTechniques then
	t := Cputime();
	if 0 eq 1 then
	    dclist := get_Q_DC_primes(I);
	    plist := {p: p in [1 .. 100] | IsPrime(p)} join Set(dclist);
	    plist := Sort(Setseq(plist));
	    G := [];

	    "HACK: SKIP GB over Z";
	elif 1 eq 1 then

	    dclist := get_Q_DC_primes(I);
	    plist := {p: p in [1 .. 50] | IsPrime(p)} join Set(dclist);
	    plist := Sort(Setseq(plist));

	    GI := Generic(I);

/*
// MAN 7068 bigp
plist cat:= [42318239, 628950916165933317821, 
        17492263436396618826479713];
*/
	    vprint MinimalAssociatedPrimes: "S-unit plist:", plist;
	    if 0 eq 1 then

		function decompose(B: seen := {})

		    bestf := 0;
		    bestd := Infinity();
		    for f in B do
			if IsZero(f) then continue; end if;
			Lf := Factorization(f);
			if exists{t: t in Lf | t[1] in seen} then
			    continue;
			end if;
			d := &*[TotalDegree(t[1]): t in Lf];
			if #Lf gt 1 and d lt bestd then
			    bestf := f;
			    bestd := d;
			end if;
		    end for;
		    if bestf eq 0 then
			vprintf MinimalAssociatedPrimes:
		    "Computing Groebner basis over Z (no factor; len %o):\n",
			    #B;
B;
			vtime MinimalAssociatedPrimes:
			    G := GroebnerBasis(B: SUnit := &*plist);
			return G;
		    end if;

		    f := bestf;
		    Lf := Factorization(f);
		    vprint MinimalAssociatedPrimes:
			"Found best basis reducible factorization:", Lf;

		    G := [];
		    seen2 := seen join {t[1]: t in Lf};
		    for t in Lf do
			f := t[1];
			J := I + Ideal(f);
			vprint MinimalAssociatedPrimes: "Reduce with factor";
			vtime MinimalAssociatedPrimes: JB := Reduce(Basis(J));
			if 1 eq 1 then
			    vprintf MinimalAssociatedPrimes:
				"USE GB over Q with denom (reduced len %o):\n",
				#JB;
			    vtime MinimalAssociatedPrimes: GB, den := GroebnerBasis(
				JB: Homogenize:=false, ReturnDenominators
			    );
			    vprint MinimalAssociatedPrimes: "Got denom:", den;
			    G cat:= [GI!x: x in den];
			else
			    vprintf MinimalAssociatedPrimes:
	"Recurse for ideal over Z with factor %o (reduced len %o):\n",
				f, #JB;
			    IndentPush();
			    G cat:= decompose(JB: seen := seen2);
			    IndentPop();
			end if;
		    end for;
		    return G;
		end function;

		G := decompose(Basis(I));
	    elif 0 eq 1 then 
		vprintf MinimalAssociatedPrimes:
		    "Computing Groebner basis over Z (denoms): ";
		G, D := GroebnerBasis(
		    Basis(I): SUnit := &*plist, ReturnDenominators
		);
"First denom D:", D;
		D := CoprimeBasis(Set(plist) join Set(D));
		D := &cat[PrimeBasis(t[1]): t in D];
		D := Sort(Setseq(Seqset(D)));
//"New denom D:", D;
		plist := D;
	    elif USE_ColonGBOverZ and TestPoly cmpne 0 then  // wrong: coho (2,4,5,157)
		vprintf MinimalAssociatedPrimes:
		    "Computing Groebner basis over Z with TP and plist:\n";

		if TestPoly cmpne 0 then
		    if Type(TestPoly) eq RngMPolElt then
			TP := GI!TestPoly;
		    else
			//TP := ideal<GI | [GJ!f: f in Basis(TestPoly)]>;
			TP := 0;
		    end if;
		else
		    TP := 0;
		end if;

		S := ColonGBOverZ(Basis(I), &*plist, TP);
		G := GroebnerBasis(S);
	    else
//I;
function fix(f)
    C,M:=CoefficientsAndMonomials(f);
    return C[1]*M[1] + &+[Parent(M[1])|M[i]: i in [2..#M]];
end function;
//"I small:", [fix(x): x in Basis(I)];
		vprintf MinimalAssociatedPrimes:
		    "Computing Groebner basis over Z:\n";
		IndentPush();

		BB := Basis(I);
		BBr := 0;
		//BBr := Reduce(BB); // Stuck for Cox (2,5,7,32)

		if 1 eq 1 then
		    for TL in [0.1, 2, 10, 10^6] do
		    //for TL in [0.1, 10, 10^6] do
			for t in [
			    <false, false>,
			    <true, false>,
			    <true, true>,
			    <false, true>
			] do
			    homog, red := Explode(t);
			    if red and BBr cmpeq 0 then continue; end if;
			    vprintf MinimalAssociatedPrimes:
				"homog: %o, red: %o, TL: %.1o\n",
				homog, red, TL;
			    G := 0;
			    vtime MinimalAssociatedPrimes:
				l, G := GroebnerBasis(
				    red select BBr else BB, TL:
				    SUnit := &*plist, Homogenize := homog
				);
			    if l then
				break TL;
			    end if;
			end for;
		    end for;
		else
		    vtime MinimalAssociatedPrimes:
			G := GroebnerBasis(BBr: SUnit := &*plist);
		end if;
		IndentPop();
	    end if;
	else
	    vprintf MinimalAssociatedPrimes: "Computing Groebner basis over Z: ";
	    G := GroebnerBasis(I);
	    plist := [];
	end if;
	t := Cputime(t);

        vprintf MinimalAssociatedPrimes: "%o\n", t;
//G;

        d := plist cat [LeadingCoefficient(f) : f in G];

        if #[f : f in G | f in Integers()] gt 0 then
            zeroNecessary := false;
        end if;
    else
        R := Generic(I);

        vprintf MinimalAssociatedPrimes: "Computing Groebner basis over Q (1): ";
        t := Cputime();
        J, d := GroebnerBasis(Basis(ChangeRing(I, Rationals())) : ReturnDenominators);
        t := Cputime(t);
        vprintf MinimalAssociatedPrimes: "%o\n", t;

        if 1 in J then
            zeroNecessary := false;
        end if;

        grp := Sym(Rank(R));
	grp_seen := {};

        for i in [2..groebnerBasisBound] do

	    if #grp_seen eq #grp then
                vprint MinimalAssociatedPrimes: "Run out of group elts";
		break;
	    end if;

            // use trial-division on the big factors
            res := [];

            vprintf MinimalAssociatedPrimes: "%o divisors\n", #d;
            vprintf MinimalAssociatedPrimes: "Trial division: ";
            t := Cputime();
            for x in d do
                //vprintf MinimalAssociatedPrimes, 3: "divisor: %o\n", x;

                divisors, remainder := TrialDivision(
		    x, trialDivisionBound: Proof := -1
		);
                res cat:= [y[1] : y in divisors] cat remainder;
            end for;
            t := Cputime(t);
            vprintf MinimalAssociatedPrimes: "%o\n", t;

            d := res;

//"Max d:", Maximum(d);

            if
	    //i ge 5 and
	    (#d eq 0 or Maximum(d) le factorizationBound) then
                break;
            else
                vprintf MinimalAssociatedPrimes: "Digits of maximal divisor: %o\n", Floor(Log(10, Maximum(d))) + 1;
            end if;

	    repeat
		sigma := Random(grp);
	    until sigma notin grp_seen;
	    Include(~grp_seen, sigma);

            vprintf MinimalAssociatedPrimes: "Using random permutation: %o\n", sigma;

	    if 1 eq 1 then
		//RR := PolynomialRing(BaseRing(R), Rank(R), "grevlex");
		//RR := PolynomialRing(BaseRing(R), Grading(R)^sigma);
		w := Grading(R);
		w := [w[i^sigma^-1]: i in [1 .. #w]];
		RR := PolynomialRing(BaseRing(R), w);
//"R:", R;
//"RR:", RR;
		alpha := hom< R -> RR | [RR.j^sigma : j in [1..Rank(R)]]>;
	    else
		alpha := hom< R -> R | [R.j^sigma : j in [1..Rank(R)]]>;
	    end if;

            vprintf MinimalAssociatedPrimes: "Computing Groebner basis over Q (%o): ", i;
            t := Cputime();
            _, d2 := GroebnerBasis(Basis(ChangeRing(Ideal(alpha(Basis(I))), Rationals())) : ReturnDenominators);
            t := Cputime(t);
            vprintf MinimalAssociatedPrimes: "%o\n", t;

            d := commonFactors(d, d2);
vprint MinimalAssociatedPrimes: "New common d:", d;
        end for;

    end if;

    if #d ne 0 and Maximum(d) gt factorizationBound then
        vprintf MinimalAssociatedPrimes: "Digits of maximal divisor: %o\n", Floor(Log(10, Maximum(d))) + 1;

	if 1 eq 1 and useRandomTechniques then
	    vprint MinimalAssociatedPrimes: "Give up; recurse to Z case";
	    // AKS, Dec 14: Recurse to Z case, since factorization is doomed
	    return $$(
		I, false,
		factorizationBound, trialDivisionBound, groebnerBasisBound
	    );
	end if;
    end if;

    vprint MinimalAssociatedPrimes: "Get Integer factorization:";
    t := Cputime();
    D := CoprimeBasis(d);
//"First D:", D;
    D := [t[1]: t in D];
    result := [];
    vtime MinimalAssociatedPrimes:
    while #D gt 0 do
	n := D[#D];
//"Got n:", n;
	Prune(~D);
	if n gt FactorizationBound2 then
	    T, R := TrialDivision(n: Proof := -1);
//"T:", T; "R:", R;
	    D cat:= [t[1]: t in T];
	    for n in R do
		if n le FactorizationBound2 then
//Universe(D); Parent(d);
		    Append(~D, n);
		else
		    F, u, R2 := Factorization(
			n: MPQSLimit := 0, ECMLimit := DEFAULT_ECMLimit,
			Proof := false
		    );
		    result cat:= [t[1]: t in F];
		    if assigned R2 and #R2 gt 0 then
			vprintf MinimalAssociatedPrimes:
			"Discard hard composites %o\n", R2;
		    end if;
		end if;
	    end for;
	else
	    F := Factorization(n);
	    result cat:= [t[1]: t in F];
	end if;
    end while;
    Sort(~result);
//"Final primes:", result;
    t := Cputime(t);

    if zeroNecessary then
        Append(~result, 0);
    end if;

    return result;
end function;



/* Given an ideal I and a list of primes,
 * check for any prime p in the list primes, whether
 * Groebner(I) mod p != Groebner(I mod p).
 * If this is the case, then the prime is necessary.
 */
necessaryPrimes := function(I, primes)
    if #primes eq 0 then
        return [];
    end if;

    J := ChangeRing(I, Rationals());
    vprintf MinimalAssociatedPrimes: "Computing Groebner basis over Q: ";
    t := Cputime();
    Groebner(J);
    t := Cputime(t);
    vprintf MinimalAssociatedPrimes: "%o\n", t;

    denoms := [CoefficientDenominator(f) : f in Basis(J)];

    result := [];

    if 0 in primes and not 1 in J then
        Append(~result, 0);
    end if;

    for p in primes do
        if p eq 0 then
            continue;
        end if;

        if dividesElement(p, denoms) then
            vprintf MinimalAssociatedPrimes: "%o is a divisor (necessary)\n", p;
            result cat:= [p];
        else
            /* construct the ideal over the new coefficient ring again, 
             * since otherwise magma won't recognize that both ideals are defined over the same ring.
             */
            i := ChangeRing(I, GF(p));
            vprintf MinimalAssociatedPrimes: "Computing Groebner basis over GF(%o): ", p;
            t := Cputime();
            Groebner(i);
            t := Cputime(t);
            vprintf MinimalAssociatedPrimes: "%o", t;

            r := Generic(i);
            if not ideal< r | Basis(J) > subset i then
                result cat:= [p];
                vprintf MinimalAssociatedPrimes: " (necessary)\n";
            else
                vprintf MinimalAssociatedPrimes: " (not necessary)\n";
            end if;
        end if;
    end for;

    return result;
end function;

function Check_TestPoly(I, TP)
    if TP cmpeq 0 then
	return false;
    end if;

    GI := Generic(I);
    if Type(TP) eq RngMPolElt then
	TP := GI!TP;
	return TP in I;
    else
	TP := ideal<GI | [GI!f: f in Basis(TP)]>;
	return TP subset I;
    end if;
end function;

function NewDecomp(
    I, R, SingleInfinite, TestPrimeIdealInf, TestPoly, rf: ExcludeVars := {}
)

    if 1 in I then return false, []; end if;

    n := Rank(I);
    d, L := Dimension(I);
    vprint MinimalAssociatedPrimes: "**** NewDecomp Decomp";
    vprintf MinimalAssociatedPrimes: "Input Dim: %o, vars: %o\n", d, L;
    vprint MinimalAssociatedPrimes: "Input Order:", MonomialOrder(I);
    vprint MinimalAssociatedPrimes: "SingleInfinite:", SingleInfinite;

    //TestPoly := Generic(I) ! TestPoly;
//"TestPoly:", TestPoly;

    if Check_TestPoly(I, TestPoly) then
	vprint MinimalAssociatedPrimes: "TestPoly in I; skip";
	return false, [];
    end if;

    O := MonomialOrder(R);

    if d eq 0 then
	TP := TestPoly;
	if TP cmpne 0 and Type(TP) ne RngMPolElt then
	    TP := Generic(I)!0;
	else
	    TP := Generic(I) ! TestPoly;
	end if;
        D := RadicalDecomposition(I, TP);

	primes_Q := [];
        for x in D do
//"Lift try P:", x;
//"Lift try R:", R;
	    if Check_TestPoly(x, TestPoly) then
		continue;
	    end if;
	    P := ChangeOrder(x, O);
	    vprint MinimalAssociatedPrimes: "Move P back to O";
	    vtime MinimalAssociatedPrimes: Groebner(P);
//"Lift new P:", P;
P := rf(P);
//"Restored P:", P;
	    J := LiftFromQToZ(P, R);
	    Append(~primes_Q, J);
	    if SingleInfinite and TestPrimeIdealInf(J) then
		if DUMP_P then "GOOD P; stop with SingleInfinite"; P; end if;
		return true, primes_Q;
	    end if;
	    //"BAD P";
	end for;
	return false, primes_Q;
    end if;

    if #L eq 1 then
	v := L[1];
	V := [v] cat [x: x in [n .. 1 by -1] | x ne v];
    else
	V := [x: x in [n .. 1 by -1]];
    end if;
    V := [x: x in V | x notin ExcludeVars];

    excl := ExcludeVars;

    vprint MinimalAssociatedPrimes: "Variable list V:", V;
    for v in V do
	C := ChangeOrder(I, "univ", v);
	vprintf MinimalAssociatedPrimes: "Get GB for univ %o (%o)\n", v, Generic(I).v;
	Include(~excl, v);
	vtime MinimalAssociatedPrimes: CB := GroebnerBasis(C);

	goodf := false;
	f := 0;
	k := #CB;
	while k ge 1 and not goodf do
	    f := CB[k];
	    fac := Factorization(CB[k]);
	    vprintf MinimalAssociatedPrimes: "Try CB[%o]; fac:\n", k;
	    vprint MinimalAssociatedPrimes: fac;
	    goodf := IsUnivariate(f) and (#fac gt 1 or fac[1, 2] gt 1);
	    if goodf then
		break;
	    end if;
	    k -:= 1;
break;
	end while;

	if goodf then
	    vprint MinimalAssociatedPrimes: "UNIVARIATE!";

//"CB:", CB;
	    primes_Q := [];
	    Jtodo := [];
	    for ti := 1 to #fac do
		t := fac[ti];
		g := f div t[1]^t[2];
		vprintf MinimalAssociatedPrimes: "Try ti: %o, t: %o\n", ti, t;
		IndentPush();
		vprintf MinimalAssociatedPrimes: "g: %o\n", g;
		vprint MinimalAssociatedPrimes: "Reduce Basis";
//"RED IN:", CB cat [g];
		vtime MinimalAssociatedPrimes: J := Ideal(Reduce(CB cat [g]));
//"New J:", J;
		vprint MinimalAssociatedPrimes: "Get direct GB";
		vtime MinimalAssociatedPrimes: Groebner(J: Al := "Direct", GlobalModular := false);
		Jdim := Dimension(J);
		vprintf MinimalAssociatedPrimes: "New J has basis len %o, dim %o\n", #Basis(J), Jdim;
		if Jdim eq 0 then
		    vprint MinimalAssociatedPrimes: "Recurse on J:"; // J;
		    IndentPush();
		    vtime MinimalAssociatedPrimes: l, PP := NewDecomp(
			J, R, SingleInfinite, TestPrimeIdealInf, TestPoly, rf:
			    ExcludeVars := excl
		    );
		    IndentPop();
		    if l then
			IndentPop();
			return l, PP;
		    end if;
		    primes_Q cat:= PP;
		else
		    Append(~Jtodo, J);
		end if;
		IndentPop();
	    end for;

	    Sort(~Jtodo, func<I, J | Dimension(I) - Dimension(J)>);
	    vprint MinimalAssociatedPrimes: "Jtodo dims:", [Dimension(x): x in Jtodo];
	    for J in Jtodo do
		IndentPush();
		vprint MinimalAssociatedPrimes: "Recurse on J:"; //, J;
		l, PP := NewDecomp(
		    J, R, SingleInfinite, TestPrimeIdealInf, TestPoly, rf:
			ExcludeVars := excl
		);
		IndentPop();
		if l then
		    return l, PP;
		end if;
		primes_Q cat:= PP;
	    end for;
	    return false, primes_Q;
	end if;

    end for;

    if TestPoly cmpeq 0 or Type(TestPoly) ne RngMPolElt then
	TestPoly := Generic(I)!0;
    else
	TestPoly := Generic(I)!TestPoly;
    end if;

    vprint MinimalAssociatedPrimes: "GIVE UP; fall back on RadicalDecomposition";
    return false, RadicalDecomposition(I, TestPoly);
end function;


/* given an ideal I in an integer ring,
 * compute the minimal primes above I.
 * 
 * There are two kinds of ideals which are returned.
 * * Either the ideal does not contain a prime number. In this case,
 *   the generators are really a Groebner basis of the ideal tensored
 *   with Q, i.e., to get generators over Z for the ideal, one has
 *   to use saturation. (In particular, the ideal might not be prime)
 * * In the second case, the ideal contains a prime number (and in this
 *   case, we really have a prime ideal). Then the ideal might not be minimal,
 *   i.e., there might exist a prime ideal not containing a prime, which
 *   is contained in the given ideal.
 * Both phenomena have to be taken care of when using this function.
 */

ofactorizationBound := 10^60;

intrinsic MinimalAssociatedPrimes(I::RngMPol : useRandomTechniques := true, sufficient := [], exclude := [], factorizationBound := 10^60, trialDivisionBound := 10^4, groebnerBasisBound := 20, saturate := 1, SingleInfinite := false,
limited := false, TestPrimeIdealInf := 0, TestPoly := 0, Primes := 0,
FactorizationBound2 := DEFAULT_FactorizationBound2 ) -> SeqEnum
{Compute the set of minimal associated primes of I}
    require IsField(CoefficientRing(Generic(I))) or CoefficientRing(Generic(I)) eq Integers(): "Coefficient ring must be a field or the ring of integers";

    if IsField(CoefficientRing(Generic(I))) then
        return RadicalDecomposition(I, Generic(I)!TestPoly);
    end if;

    if NO_TEST_POLY then
	TestPoly := 0;
    end if;

    if #Basis(I) eq 0 then
        return [I];
    end if;

    primes_Q := [];

    R := Generic(I);

//"R:", R; "I:", I;

if 0 notin exclude then

    J := ChangeRing(I, Rationals());
//"J:", J;

    vprintf MinimalAssociatedPrimes: "Get GB over Q: ";
    t := Cputime();
    Groebner(J);
//"GB J:", J;

    vprintf MinimalAssociatedPrimes: "%o\n", Cputime(t);
//"J generic:", Generic(J);
//"J easy generic:", Generic(EasyIdeal(J));

    if 1 notin J then
        if saturate ne 1 then
            vprintf MinimalAssociatedPrimes: "Saturating over Q: ";
            t := Cputime();
            J := Saturation(J, Generic(J)!saturate);
            t := Cputime(t);
            vprintf MinimalAssociatedPrimes: "%o\n", t;
        end if;
        vprintf MinimalAssociatedPrimes: "Computing prime ideals over Q\n";

	GJ := Generic(J);
	TPR := GJ!0;
	if TestPoly cmpne 0 then
	    if Type(TestPoly) eq RngMPolElt then
		TP := GJ!TestPoly;
		TPR := TP;
	    else
		//TP := ideal<GJ | [GJ!f: f in Basis(TestPoly)]>;
		//TP := ideal<GJ | [GJ!f: f in Basis(TestPoly)[1..1]]>;
		TP := 0;
	    end if;
	else
	    TP := 0;
	end if;

	if USE_COLON_IDEAL and TP cmpne 0 then
	    vprint MinimalAssociatedPrimes: "Get ColonIdeal by TestPoly";
	    vtime MinimalAssociatedPrimes:
		CJ := ColonIdeal(J, TP);
	    vprint MinimalAssociatedPrimes: "Colon ideal equal:", CJ eq J;
	    J := CJ;
	end if;

	function remove_zeta(I)
	    n := Rank(I);
	    zeta := Generic(I).n;
	    f := zeta^2 + zeta + 1;
	    if 0 eq 1 and f in Basis(I) then
		GI := Generic(I);
		"Remove zeta from I";
		J := ChangeRing(I, C3);
		Jzeta := Generic(J).n;
		J := Ideal(Basis(J) cat [Jzeta - ZETA_3]);
//"Orig I:", I; "New J:", J;
		cf := hom<C3 -> GI | zeta>;
		pf := hom<Generic(J) -> GI | cf, [GI.i: i in [1 .. n]]>;
		f := func<I | Ideal([pf(g): g in Basis(I)])>;
		return true, J, f;
	    end if;
	    return false, I, func<I|I>;
	end function;

	OJ := J;
	over_C3, J, rf := remove_zeta(J);

        t := Cputime();
//J;
	if USE_NEW_DECOMP and 1 notin J then
	    try_single, primes_Q := NewDecomp(
		J, R, SingleInfinite, TestPrimeIdealInf, TP, rf
	    );
	    if try_single then
		return primes_Q;
	    end if;
	else
	    primes_Q := RadicalDecomposition(J, TPR);
	end if;

//"First primes_Q:", primes_Q;
	primes_Q := [rf(I): I in primes_Q];
//"Restored primes_Q:", primes_Q;

        t := Cputime(t);
        vprintf MinimalAssociatedPrimes: "    Time: %o\n    prime ideals: %o\n", t, #primes_Q;
        vprintf MinimalAssociatedPrimes: "Intersection with Z: ";
        Nprimes_Q := [];
        t := Cputime();
        for P in primes_Q do
	    J := LiftFromQToZ(P, R);
	    Append(~Nprimes_Q, J);
	    if SingleInfinite and TestPrimeIdealInf(J) then
		if DUMP_P then "GOOD J:", J; end if;
		vprintf MinimalAssociatedPrimes: "%o\n", Cputime(t);
		vprint MinimalAssociatedPrimes:
		    "Now found infinite family; break out";
		return Nprimes_Q;
	    end if;
	    if DUMP_P then "BAD J:", J; end if;
	end for;
        vprintf MinimalAssociatedPrimes: "%o\n", Cputime(t);
	primes_Q := Nprimes_Q;
//"GOT primes_Q:", primes_Q;
    end if;
end if;

    if #sufficient eq 0 then
        vprintf MinimalAssociatedPrimes: "Computing sufficient primes.\n";
        t := Cputime();
        IndentPush();
	CI := Ideal(Basis(I));
        sufficient := sufficientPrimes(CI, useRandomTechniques, factorizationBound, FactorizationBound2, trialDivisionBound, groebnerBasisBound, TestPoly: limited := limited);
        IndentPop();
        t := Cputime(t);
        vprintf MinimalAssociatedPrimes: "Time: %o; primes: %o\n", t, sufficient;
    end if;

    sufficient := [p : p in sufficient | not p in exclude];

    vprintf MinimalAssociatedPrimes: "Computing necessary primes.\n";
    t := Cputime();
    IndentPush();

    necessary := necessaryPrimes(I, sufficient);
    IndentPop();
    t := Cputime(t);
    vprintf MinimalAssociatedPrimes: "Time: %o; primes: %o\n", t, necessary;


    // copy list. 
    // TODO: is there a better way?
    result := [ P : P in primes_Q ];

    for p in necessary do
        if p eq 0 then
            continue;
        end if;

        J := ChangeRing(I, GF(p));
//"I for mod p:", I; "J:", J;
//"First J:", J; "Red:", Reduce(Basis(J));
//"First J easy for mod p:", EasyIdeal(J);

	GJ := Generic(J);
	if USE_COLON_IDEAL and TestPoly cmpne 0 then
	    if Type(TestPoly) eq RngMPolElt then
		TP := GJ!TestPoly;
	    else
		TP := ideal<GJ | [GJ!f: f in Basis(TestPoly)]>;
	    end if;

	    vprint MinimalAssociatedPrimes: "Get ColonIdeal by TestPoly";
	    vtime MinimalAssociatedPrimes:
		CJ := ColonIdeal(J, TP);
//"Got CJ:", CJ;
	    vprint MinimalAssociatedPrimes: "Colon ideal equal:", CJ eq J;
	    J := CJ;
	else
	    TP := 0;
	end if;

        if saturate ne 1 then
            vprintf MinimalAssociatedPrimes: "Saturating over GF(%o): ", p;
            t := Cputime();
            J := Saturation(J, Generic(J)!saturate);
            t := Cputime(t);
            vprintf MinimalAssociatedPrimes: "%o\n", t;
        end if;
        vprintf MinimalAssociatedPrimes:
	    "Computing prime ideals over GF(%o) [dim %o]: ", p, Dimension(J);
	if SingleInfinite and IsZeroDimensional(J) then
	    vprint MinimalAssociatedPrimes: "[Skip since finite]";
	    continue;
	end if;
        t := Cputime();
//SetVerbose("Decomposition", 1);
/*
"Change J to lex"; 
J := ChangeOrder(J, "lex");
time Groebner(J);
J := Ideal(Basis(J));
MarkGroebner(J);
*/
	if TP cmpeq 0 or Type(TP) ne RngMPolElt then
	    TP := Generic(J)!0;
	end if;

//"J:", J;

        primes_p := RadicalDecomposition(J, TP);
        t := Cputime(t);
        vprintf MinimalAssociatedPrimes: "%o\n", t;
        vprintf MinimalAssociatedPrimes: "    prime ideals: %o\n", #primes_p;

        counter := 0;
        for P in primes_p do
            PZ := LiftFromFpToZ(P, R);
            if not IsSuperset(PZ, primes_Q) then
                result cat:= [PZ];
                counter +:= 1;
            end if;
        end for;
        vprintf MinimalAssociatedPrimes: "    necessary: %o\n", counter;
    end for;

    return result;
end intrinsic;
