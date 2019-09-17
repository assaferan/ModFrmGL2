freeze;

//  Copyright (C) 2009-2011 Moriz Minzlaff <minzlaff@daad-alumni.de>

//*****************************************************************************
//
// This package implements Bostan et al.'s algorithm for linear
// recurrences [1] with modifications a la Harvey [2].
//
// [1] Bostan, A., Gaudry, P., Schost, E.: Linear recurrences with polynomial
//   coefficients and application to integer factorization and Cartier-Manin
//   operator. SIAM J. Comput. 36, 1777–1806 (2007)
//
// [2] Harvey, D.: Kedlaya's algorithm in larger characteristic. Int. Math.
//   Res. Notices 2007 (2007)
//
// [3] von zur Gathen, J., Gerhard J.: Modern Computer Algebra. Cambridge
//   University Press (2003)
//
//*****************************************************************************

function LowerCaseDD(alpha,beta,d)
//    Return the product dd(alpha,beta,d)
//
//    INPUT:
//
//    -  ``alpha`` - an element of R
//    -  ``beta`` - an element of R
//    -  ``d`` - a finite cardinal
//
//    OUTPUT:
//
//    Returns the element dd(alpha,beta,d) of R
//
    res := beta;
    for i := 2 to d do
        res := res*i;
    end for;
    for i := -d to d do
        res := res*(alpha + i*beta);
    end for;
    return res;
end function;

function LowerCaseDD_(alpha, beta, d)
//    Return all factors of dd(alpha,beta,d)
//
//    INPUT:
//
//    -  ``alpha`` - an element of R
//    -  ``beta`` - an element of R
//    -  ``d`` - a finite cardinal
//
//    OUTPUT:
//
//    Returns a sequence whose entries are the factors of dd(alpha,beta,d)
//    ordered as before Theorem 5
//
    res_ := [ beta ];
    for i := 2 to d do
        res_[i] := i;
    end for;
    for i := -d to d do
        res_[2*d+1+i] := alpha + i*beta;
    end for;
    return res_;
end function;



function UpperCaseDD_(alpha, beta, k)
//    Return all factors of D(alpha,beta,d)
//
//    INPUT:
//
//    -  ``alpha`` - an element of R
//    -  ``beta`` - an element of R
//    -  ``k`` - a finite cardinal
//
//    OUTPUT:
//
//    Returns a sequence whose entries are the factors of D(alpha, beta, k) as
//    defined before Lemma 6
//
    k_ := [ k ];
    while k_[#k_] gt 1 do
        k_[#k_+1] := ShiftRight(k_[#k_],1);
    end while;

    res_ := [ ];
    for i := 1 to #k_-1 do
        res_[2*i-1] := LowerCaseDD(beta*(k_[i+1]+1),beta,k_[i+1]);
        res_[2*i] := LowerCaseDD(alpha*k_[i+1],beta,k_[i+1]);
    end for;
    return res_;
end function;

function RetrieveInverses(prodInv,r_)
//    Implements [1, Lemma 1]
//
//    INPUT:
//
//    -  ``prodInv`` - the inverse of the product of the elements in r_
//    -  ``r_`` - sequence of ring elements
//
//    OUTPUT:
//
//    A sequence inv_ such that inv_[i] = r_[i]^{-1}
//
    if (#r_ eq 0) then
        return [prodInv];
    end if;
    rProd := [ r_[1] ];
    for i := 2 to #r_ do
        rProd[i] := r_[i]*rProd[i-1];
    end for;
    inv_ := [ ];
    inv_[#r_] := prodInv;
    for i := #r_-1 to 1 by -1 do
        inv_[i] := r_[i+1]*inv_[i+1];
    end for;
    for i := 2 to #r_ do
        inv_[i] := rProd[i-1]*inv_[i];
    end for;
    return inv_;
end function;

function ShiftEvaluationPre(alpha, beta, ddi_, d, RPol)
//    Implements precompuations for [1, Theorem 5]
//
//    INPUT:
//
//    -  ``alpha`` - an element of R
//    -  ``beta`` - an element of R
//    -  ``ddi_`` - contains the inverses of the factors of
//                 dd(alpha, beta, d) in the order of the definition
//    -  ``d`` - a finite cardinal (= #baseValues_)
//    -  ``RPol`` - univariate polynomial ring over R
//
//    OUTPUT:
//
//    Returns the two sequences partiali_ and delta_ such that
//    partiali_[i] = partial(i-1,d)^{-1} and delta_[i] =
//    delta(a, i-1, d) as in BGS07, Lemma 2
//
    R := CoefficientRing(RPol);
    partiali_ := [ R!1 ];
    for i := 2 to d do
        partiali_[1] := ddi_[i]*partiali_[1];
    end for;
    if (ModByPowerOf2(d,1) eq 1) then
        partiali_[1] := -partiali_[1];
    end if;
    partiali_[2] := -d*partiali_[1];
    for i := 3 to d+1 do
        partiali_[i] := ((i-1)-d-1)*ddi_[i-1]*partiali_[i-1];
    end for;

    a := alpha*ddi_[1];
    delta_ := [ R!1 ];
    for i := 0 to d do
        delta_[1] := delta_[1]*(a-i);
    end for;
    for i := 2 to d+1 do
        delta_[i] := (a+i-1)*(ddi_[d+i-1]*beta)*delta_[i-1];
    end for;

    s := elt< RPol | [ ddi_[d+i]*beta : i in [1..2*d+1] ] >;

    return partiali_, delta_, s;
end function;

function ShiftEvaluation(partiali_, delta_, s, ddi_, d,\
                         baseValues_, RPol)
//    Implements [1, Theorem 5]
//
//    INPUT:
//
//    -  ``partiali_`` - a sequence of elements of a ring R
//    -  ``delta_`` - a sequence of elements of R
//    -  ``s`` - a polynomial over R
//    -  ``ddi_`` - contains the inverses of the factors of
//                 dd(alpha, beta, d) in the order of the definition in BGS07
//    -  ``d`` - a finite cardinal
//    -  ``baseValues_`` - a sequence with i-th entry is f(r + (i-1)*beta)
//                         where f is a polynomial over R of degree d
//    -  ``RPol`` - polynomial ring over R
//
//    OUTPUT:
//
//    Returns a sequence with i-th entry f(r + (i-1)*beta + alpha)
//
//    NOTE:
//    Complexity: 2M(d) + O(d) = O( M(d) )
//    (together with ShiftEvaluationPre)
//
    p := elt< RPol | [ baseValues_[i]*partiali_[i] : i in [1..d+1] ]>;
    q := p*s;   // this multiplication accounts for roughly
                // 1/3 of all computation time spent in LinearRecurrence
    res_ := [ delta_[k+1]*Coefficient(q,d+k) : k in [0..d] ];

    return res_;
end function;

function Algorithm10_3(moduli_, k)
//    Implements [3, Algorithm 10.3]
//
//    NOTE: #moduli_ = 2^k
//
    n := #moduli_;
    res_ := [ [ moduli_[j] : j in [1..n]] ];
    for i := 2 to k+1 do
        res_[i] := [];
        for j := 1 to ShiftRight(n,(i-1)) do
            res_[i,j] := res_[i-1, 2*j-1]*res_[i-1, 2*j];
        end for;
    end for;
    return res_;
end function;

function Algorithm10_5(f, moduli_, Mij_)
//    Implements [3, Algorithm 10.5]
//
//    NOTE:
//    #moduli_ = 2^k
//    #Mij_ = k+1
//
    n := #moduli_;
    k := #Mij_ -1;
    rem_ := [ f ];
    while (k gt 0) do
        remOld_ := rem_;
        rem_ := [ ];
        for i := 1 to ShiftRight(n,k) do
            rem_ := rem_ cat [ remOld_[i] mod Mij_[k,2*i-1],\
                               remOld_[i] mod Mij_[k,2*i] ];
        end for;
        k := k-1;
    end while;
    res_ := [ Coefficient(rem_[i],0) : i in [1..#rem_] ];
    return res_;
end function;

function Algorithm10_9(points_, cvalues_, Mij_)
//    Implements [3, Algorithm 10.9]
//
//    NOTE:
//    #points_ = #values_ = 2^k
//    #Mij_ = k+1
//
    k := #Mij_ -1;
    if (k eq 0) then
        return cvalues_[1];
    end if;

    n := #points_;
    Mij1_ := [ Mij_[i][1..ShiftRight(n,i)] : i in [1..k] ];
    Mij2_ := [ Mij_[i][ShiftRight(n,i)+1..ShiftRight(n,i-1)] :\
               i in [1..k] ];
    res_ := Mij_[k,2]*Algorithm10_9(points_[1..ShiftRight(n,1)],\
            cvalues_[1..ShiftRight(n,1)], Mij1_) +\
            Mij_[k,1]*Algorithm10_9(points_[ShiftRight(n,1)+1..n],\
            cvalues_[ShiftRight(n,1)+1..n], Mij2_);
    return res_;
end function;

function MatrixAPEvaluationPre(k, alpha, beta, DDi_, RPol)
//    Implements precomputations for [1, Theorem 8]
//
//    INPUT:
//
//    -  ``k`` - a finite cardinal
//    -  ``alpha`` - an element of R
//    -  ``beta`` - an element of R
//    -  ``DDi_`` - a sequence containing the inverses of the lower case
//                  dds contained in the upper case DD, the order
//                  is the same as in the definition before Lemma 6,
//                  i.e. DDi_[2*i-1] = dd(beta*(k_{i}+1),beta,k_{i})^(-1),
//                       DDi_[2*i] = dd(alpha*k_{i},beta,k_{i})^(-1)
//    - ``RPol`` - a polynomial ring over R
//
//    OUTPUT:
//
//    Returns a sequence of integers k_, an integer logk, and sequences
//    of sequences of elements of R ddi1__, partiali1__, delta1__,
//    and a sequence of polynomials s1_ over R (and the same with
//    2 instead of 1)
//
    k_ := [ k ];             			// k_[i] = k_{i-1}
    while k_[#k_] gt 1 do				// k_[1] = k_0 = k
        k_[#k_+1] := ShiftRight(k_[#k_],1);
    end while;
    logk := #k_-1;					// = Floor(Log(2,k));

    ddi1__ := [];
    partiali1__ := [];
    delta1__ := [];
    s1_ := [];
    ddi2__ := [];
    partiali2__ := [];
    delta2__ := [];
    s2_ := [];
    for i := logk to 1 by -1 do
        d := k_[i+1];
        dd1_ := LowerCaseDD_((k_[i+1]+1)*beta, beta, d);
        ddi1__[i] := RetrieveInverses(DDi_[2*i-1], dd1_);
        dd2_ := LowerCaseDD_(k_[i+1]*alpha, beta, d);
        ddi2__[i] := RetrieveInverses(DDi_[2*i], dd2_);
        partiali1__[i], delta1__[i], s1_[i] :=\
            ShiftEvaluationPre((k_[i+1]+1)*beta, beta, ddi1__[i],\
            k_[i+1], RPol);
        partiali2__[i], delta2__[i], s2_[i] :=\
            ShiftEvaluationPre((k_[i+1])*alpha, beta, ddi2__[i],\
            k_[i+1], RPol);
    end for;

    return k_, logk, ddi1__, partiali1__, delta1__, s1_, ddi2__,\
           partiali2__, delta2__, s2_;
end function;


function MatrixAPEvaluation(M, k_, logk,\
  ddi1__, partiali1__, delta1__, s1_,\
  ddi2__, partiali2__, delta2__, s2_, alpha, beta, DDi_)
//    Implements [1, Theorem 8]
//
//    INPUT:
//
//    -  ``M`` - matrix of linear polynomials
//    -  ``k_`` - a sequence of finite cardinals
//    -  ``logk`` - a finite cardinal
//    -  ``ddi1__`` - a sequence of sequences of elements of a ring R
//    -  ``partiali1__`` - a sequence of sequences of elements of a ring R
//    -  ``delta1__`` - a sequence of sequences of elements of a ring R
//    -  ``s1_`` - a sequence of polynomials over R
//    -  ``ddi2__`` - a sequence of sequences of elements of a ring R
//    -  ``partiali2__`` - a sequence of sequences of elements of a ring R
//    -  ``delta2__`` - a sequence of sequences of elements of a ring R
//    -  ``s2_`` - a sequence of polynomials over R
//    -  ``alpha`` - an element of R
//    -  ``beta`` - an element of R
//    -  ``DDi_`` - a sequence containing the inverses of the lower case
//                  dds contained in the upper case DD, the order
//                  is the same as in the definition before Lemma 6,
//                  i.e. DDi_[2*i-1] = dd(beta*(k_{i}+1),beta,k_{i})^(-1),
//                       DDi_[2*i] = dd(alpha*k_{i},beta,k_{i})^(-1)
//    OUTPUT:
//
//    Returns a sequence with i-th entry M_k((i-1)*beta) where
//    M_k(X) = M(X + alpha)...M(X + alpha*k)
//
//    NOTE:
//    Complexity (together with MatrixAPEvaluationPre):
//    If M is an nxn matrix, then the runtime is O( MM(n)k + n^2M(k) )
//
    // PRELIMINARIES
    R := CoefficientRing(CoefficientRing(M));
    RPol := PolynomialRing(R);
    n := Degree(Parent(M));
    RMat := MatrixRing(R,n);

    // STEP logk+1
    res_ := [ RMat | Evaluate(M, alpha), Evaluate(M, alpha+beta) ];
    old1_ := [ RMat | 0, 0 ];
    old2_ := [ RMat | 0, 0 ];

    // STEPS logk to 2
    for i := logk to 1 by -1 do
    // at the start of step i
    //	res_[l] = M_k_[i+1]((l-1)*beta), l = 1,...,k_[i+1]+1
    //
    // during step i we set
    // 	old1_[l] = M_k_[i]((l-1)*beta)
    // 	old2_[l] = M_k_[i]((l-1)*beta + alpha*k_[i])
    //
    // at the end of the step i
    // 	res_[l] = M_k_[i]((l-1)*beta), l = 1,...,k_[i]+1
    //
        old1_ := old1_ cat [ 0 : l in [#old1_+1..2*(k_[i+1]+1)] ];
        // make space for new matrices
        old2_ := old2_ cat [ 0 : l in [#old2_+1..2*(k_[i+1]+1)] ];

        if (ModByPowerOf2(k_[i],1) eq 1) then
        // "correction" term in case of odd k_[i]
            correction_ := [ RMat | Evaluate(M, l*beta + alpha*k_[i]) :\
                             l in [0..k_[i]] ];
        end if;
        d := k_[i+1];

        for r := 1 to n do
        // to deduce the components of M_k_[i]
            for c := 1 to n do
            // we need more values of each component of M_k_[i+1]
                baseValues_ := [ res_[j][r,c] : j in [1..k_[i+1]+1] ];
                values1_ := baseValues_ cat \
                    ShiftEvaluation(partiali1__[i], delta1__[i],\
                    s1_[i], ddi1__[i], d, baseValues_, RPol);
                shiftedValues_ :=\
                    ShiftEvaluation(partiali2__[i], delta2__[i],\
                    s2_[i], ddi2__[i], d, baseValues_, RPol);
                values2_ := shiftedValues_ cat \
                    ShiftEvaluation(partiali1__[i], delta1__[i],\
                    s1_[i], ddi1__[i], d, shiftedValues_, RPol);
                for l := 1 to 2*(k_[i+1]+1) do
                    old1_[l][r,c] := values1_[l];
                    old2_[l][r,c] := values2_[l];
                end for;
            end for;
        end for;
        // using the evaluated matrices, compute the new res_
        if (ModByPowerOf2(k_[i],1) eq 0) then
            res_ := [ old1_[l]*old2_[l] : l in [1..k_[i]+1] ];
        else
            res_ := [ old1_[l]*old2_[l]*correction_[l] :\
                      l in [1..k_[i]+1] ];
        end if;
    end for;

    return res_;
end function;

function MatrixEvaluationPre(M, k, ki_)
//    Implements precomputations for [1, Corollary 10]
//
//    INPUT:
//
//    - ``M`` - a matrix of linear polynomials
//    - ``k`` - an integer > 0
//    - ``ki_`` - a sequence of integers such that ki_[i] = i^{-1},
//                i=1, ..., k2-1 (k2 is the smallest power of 2 >k)
//
//    OUTPUT:
//
    k2 := #ki_ +1;

    //	1: Proposition 9 of BGS07, Evaluate Mk at 0, 1, ..., k2-1
    R := CoefficientRing(CoefficientRing(M));
    n := Degree(Parent(M));
    RMat := MatrixRing(R,n);
    M_ := [ Evaluate(M,i) : i in [1..k+k2-1] ];
    L_ := [ RMat | ];
    for i := k2 to k+1 by -1 do
        L_[i] := 1;
    end for;
    for i := k to 1 by -1 do
        L_[i] := M_[i]*L_[i+1];
    end for;		// L_ is ok, collects M(1),...,M(k)
    C_ := [ RMat!1 ];
    for i := 2 to k+1 do
        C_[i] := C_[i-1]*M_[k+i-1];
    end for;
	C_[k2] := M_[2*k];
    for j := 2*k-1 to k2 by -1 do
        C_[k2] := M_[j]*C_[k2];
    end for;
    for i := k2-1 to k+2 by -1 do
        C_[i] := M_[i]*C_[i+1];
    end for;		// C_ is ok, collects M(k+1),...,M(2*k)
    R_ := [ RMat!1 : i in [1..k+1] ];
    for i := k+2 to k2 do
        R_[i] := R_[i-1]*M_[k+i-1];
    end for;		// R_ is ok, collects M(2*k+1),...,M(2*k+(k2-k))

    MkEval_ := [ L_[i]*C_[i]*R_[i] : i in [1..k2] ];
    // at  this point, MkEval_[i] contains M_k(i-1), 1 \le i \le k2

    // 2: Interpolate to compute M_k(X) a la Algorithm 10.11
    // zur Gathen/Gerhard
    // i. this replaces the use of algorithm 10_5
    facki_ := [ R!1 ];		// facki_[i] contains 1/fac(i)
    for i := 2 to k2-1 do
        facki_[i] := facki_[i-1]*ki_[i];
    end for;
    sign := -1;
    s_ := [ R!sign*facki_[k2-1] ];
    for i := 2 to k2-1 do
        sign := -sign;
        s_[i] := sign*facki_[i-1]*facki_[k2-i];
    end for;
    s_[k2] := facki_[k2-1];

    // ii. call algorithm 10_3
    points_ := [ R!i : i in [0..k2-1] ];
    RPol := PolynomialRing(R);
    x := RPol.1;
    logk2 := Ilog2(k2);
    Mij_ := Algorithm10_3([ x-points_[i] : i in [1..k2] ], logk2);

    // iii. call algorithm 10_9
    points_ := [ R!i : i in [0..k2-1] ];
    Mk := Parent(M)!0;
    for r := 1 to n do
        for c := 1 to n do
            Mk[r,c] := Algorithm10_9(points_,\
              [ s_[i]*MkEval_[i][r,c] : i in [1..k2] ], Mij_);
        end for;
    end for;

    return Mk;
end function;

function MatrixEvaluation(Mk, k2, beta_)
//    Implements [1, Corollary 10]
//
//    INPUT:
//
//    - ``Mk`` - a matrix of polynomials
//    - ``k2`` - an integer >0
//    - ``beta_``
//
//    OUTPUT:
//    The sequence of matrixes M_k(beta) with beta in beta_
//
//    NOTE:
//    If C := \ceil(beta_/k2) and M an nxn matrix, then the
//    complexity is O( C(MM(n)k + n^2M(k)\log(k)) )
//    (together w/ MatrixEvaluationPre)
//
    R := CoefficientRing(CoefficientRing(Mk));
    n := Degree(Parent(Mk));
    RMat := MatrixRing(R,n);
    RPol := PolynomialRing(R);
    x := RPol.1;
    logk2 := Ilog2(k2);

    // 3: Evaluate M_k(X) at the points specified by beta_
    res_ := [ RMat!0 : i in [1..#beta_] ];
    p := 1;
    while (p+k2-1 le #beta_) do
        moduli_ := [ x-beta_[i] : i in [p..p+k2-1] ];
        Mij_ := Algorithm10_3(moduli_, logk2);
        for r := 1 to n do
            for c := 1 to n do
                values_ := Algorithm10_5(Mk[r,c], moduli_, Mij_);
                for i := 1 to k2 do
                    res_[p+i-1][r,c] := values_[i];
                end for;
            end for;
        end for;
        p := p+k2;
    end while;
    if (p le #beta_) then
        b := #beta_;
        for i := b+1 to p+k2-1 do
            beta_[i] := 0;
        end for;
        moduli_ := [ x-beta_[i] : i in [p..p+k2-1] ];
        Mij_ := Algorithm10_3(moduli_, logk2);
        for r := 1 to n do
            for c := 1 to n do
                values_ := Algorithm10_5(Mk[r,c], moduli_, Mij_);
                for i := 1 to b-p+1 do
                    res_[p+i-1][r,c] := values_[i];
                end for;
            end for;
        end for;
    end if;

    return res_;
end function;

/*
intrinsic UpperCaseDD(alpha::RngElt, beta::RngElt, k::RngIntElt) -> RngElt
{
    Implements [1, Lemma 6]

    INPUT:

    -  ``alpha`` - an element of R
    -  ``beta`` - an element of R
    -  ``k`` - a finite cardinal

    OUTPUT:

    Returns the element D(alpha, beta, k) of R
}
*/
function UpperCaseDD(alpha, beta, k)
    k_ := [ k ];
    while k_[#k_] gt 1 do
        k_[#k_+1] := Floor(k_[#k_]/2);
    end while;

    R := Parent(alpha);
    res := R!1;
    for i := 1 to #k_-1 do
        res := res*LowerCaseDD(beta*(k_[i+1]+1),beta,k_[i+1])*\
                   LowerCaseDD(alpha*k_[i+1],beta,k_[i+1]);
    end for;
    return res;
end function;

// Not documented

intrinsic BGS(M::AlgMatElt[RngUPol],
              L_::SeqEnum[RngIntElt],
              R_::SeqEnum[RngIntElt]
              : DDi := 0, s := 0)
       -> SeqEnum[AlgMatElt]
/*
    Implements [2, Theorem 10]

    INPUT:

    -  ``M`` - a matrix of linear polynomials over R
    -  ``L_`` - a sequence of finite cardinals
    -  ``R_`` - a sequence of finite cardinals
    -  ``DDi`` - an (invertible) element of R
    -  ``s`` - a finite cardinal

    OUTPUT:

    A sequence of matrices of polynomials over R such that the i-th entry is
    given by M(L_[i],R_[i]) = M(L_[i]+1)M(L_[i]+2)...M(R_[i])

    NOTE:

    It is assumed that 0 <= L_[i] < R_[i] <= L_[i+1] < R_[i+1] <= T,
    where r = #L_ = #R_ and 0 < r < T^(1/2), s = Floor(log_4(R_[r]))
    and DDi = DD(1,2^s,2^s)^(-1)

    The complexity is O( MM(n)T^(0.5) + n^2*M(T^(0.5)) ) (where M is an
    nxn matrix)
*/
{
Bostan-Gaudry-Schost algorithm: given a matrix M whose entries are linear polynomials,
returns a sequence S such that S[i] is the product M(L_[i]+1)M(L_[i]+2)...M(R_[i])
} 
    // TODO checks
    require #R_ eq #L_ : "Number of interval boundaries do not match.";

    R := BaseRing(BaseRing(M));

    if DDi cmpeq 0 or s eq 0 then
        s := Ilog(4, R_[#R_]);
        DDi := UpperCaseDD(R!1,2^s,2^s) ^ -1;
    end if;

    // PRELIMINARIES
    r := #L_;	// r is allowed to change (e.g. in the final step)
    r0 := #L_;	// r0 must never change
    k := 2^s;	// current interval length
    factorsDD_ := UpperCaseDD_(1,k,k);  // r_[1] = dd(alpha,beta,d)
                                        // with alpha = k*(d+1), beta=k, d=k/2
    // DDi_[1] = dd(alpha, beta, d)^(-1)
    DDi_ := RetrieveInverses(DDi,factorsDD_);
    if (k gt 1) then
        d := ShiftRight(k,1);
        // the 1st entry is 2^s
        factorsdd_ := LowerCaseDD_(k*(d+1),k,d);

        // the entries d+1 to 3d+1 are 2^s,2*2^s, ...,(2^s+1)*2^s
        ki_ := RetrieveInverses(DDi_[1],factorsdd_);
        ki_ := [ factorsdd_[1]*ki_[i] : i in [d+1..#factorsdd_-1]];
        // ki_ = inverses of 1,2,...,k=2^s (in that order)
    else
        // ugly hack, in case k=1 we could do things much simpler
        ki_ := [ 1 ];
    end if;

    RPol := CoefficientRing(M);
    x := RPol.1;
    n := Degree(Parent(M));
    RMat := MatrixRing(R,n);
    // res_[i] will contain M(L_i,R_i) at the end
    res_ := [ RMat!1 : j in [1..r0] ];

    // STEP 0
    // get interval indices
    // l_[j] stores "index" of first interval
    // that fits into [L_[j]+1,...,R_[j]]
    l_ := [ Integers() | ];
    for j := 1 to r0 do
        qu,re := Quotrem(L_[j], k);
        if (re gt 0) then
            l_[j] := qu+2;
        else
            l_[j] := qu+1;
        end if;
    end for;
    // r_[j] stores "index" of last such interval
    r_ := [ Integers() | R_[j] div k : j in [1..r0] ];

    // evaluate
    k_, logk, ddi1__, partiali1__, delta1__, s1_,\
      ddi2__, partiali2__, delta2__, s2_ :=\
      MatrixAPEvaluationPre(k, 1, k, DDi_, RPol);
    // (the following currently accounts for 50% of all
    //  computation time in LinearRecurrences)
    M_ := MatrixAPEvaluation(M, k_, logk,\
          ddi1__, partiali1__, delta1__, s1_,\
          ddi2__, partiali2__, delta2__, s2_, 1, k, DDi_);
    M_ := M_[1..#M_-1] cat \
      MatrixAPEvaluation(Evaluate(M,x+k^2), k_, logk,\
        ddi1__, partiali1__, delta1__, s1_,\
        ddi2__, partiali2__, delta2__, s2_, 1, k, DDi_);
    M_ := M_[1..#M_-1] cat \
      MatrixAPEvaluation(Evaluate(M,x+2*k^2), k_, logk,\
          ddi1__, partiali1__, delta1__, s1_,\
          ddi2__, partiali2__, delta2__, s2_, 1, k, DDi_);
    M_ := M_[1..#M_-1] cat \
        MatrixAPEvaluation(Evaluate(M,x+3*k^2), k_, logk,\
          ddi1__, partiali1__, delta1__, s1_,\
          ddi2__, partiali2__, delta2__, s2_, 1, k, DDi_);
    // M_[i] contains M((i-1)k,ik), i=1,...,4k,4k+1 i.e.
    // the matrix belonging to the i-th interval [(i-1)k+1,ik]

    // collect/glue
    for j := 1 to r0 do
        for m := l_[j] to r_[j] do
            res_[j] := res_[j]*M_[m];
        end for;
    end for;
    // the interval [LApprox_[j]+1,...,RApprox_[j]]
    LApprox_ := [ Integers() | (l_[j]-1)*k : j in [1..r0] ];
    // is the current approximation (and subinterval) of
    // [L_[j]+1,...,R_[j]]
    RApprox_ := [ Integers() | r_[j]*k : j in [1..r0] ];
        // the matrix res_[j] stores
        // the corresponding matrix M(LApprox_[j],RApprox_[j])
        //  RApprox_ (and LApprox_) replaces N_j^{()}
        //  in the originial BGS07 proof

    // STEPS i
    // it may happen that after step 0, LApprox_[j] > RApprox_[j]
    //in that case, we set these values to a new common value between
    // L_[j] and R_[j]
    for j := 1 to r0 do
        if (LApprox_[j] gt RApprox_[j]) then
            newValue := L_[j] + ShiftRight(R_[j] - L_[j], 1);
            LApprox_[j] := newValue;
            RApprox_[j] := newValue;
        end if;
    end for;

    while (k gt 2*r0) do
        // at the start of each loop we have
        // LApprox_[j]-k < L_[j] \le LApprox[j]
        // RApprox_[j] \le R_[j] < RApprox[j]+k
        kOld := k;
        k := Isqrt(r*k);
        if (k^2 lt r*kOld) then
            k := k+1;
        end if;
        // the new interval length k = Ceiling(Sqrt(r*k));
        // note: since k gt 2r, we have
        //	k < kOld \le 2^s (*)
        // k2 is smallest power of 2 strictly larger than k
	k2 := 2^(Ilog2(k)+1);
        // we need k2 to use the tree structure of MatrixEvaluation
        // note: because of (*), k2 \le 2^s
        // for each interval boundary we'll have rho intervals
        // to better approximate it
        rho := kOld div k;

        // l_[j] = number 1,2,3,... of leftmost interval
        l_ := [ Integers() | (LApprox_[j] - L_[j]) div k : j in [1..r0] ];
        // (counting from the right and
        // starting from current approximation invertal)
        // of current interval length k that fits into\
        // [L_[j]+1,...,R_[j]]
        // likewise, r_[j] contains the number the rightmost interval
        // if l_[j] (resp. r_[j]) is 0,
        // then LApprox_[j]-L_[j]<k (resp. R_[j]-RApprox_[j]<k)
        // and there is nothing to do in this iteration
        r_ := [ Integers() | (R_[j] - RApprox_[j]) div k : j in [1..r0] ];

        // prepare MatrixEvaluation
        MPre := MatrixEvaluationPre(M, k, ki_[1..k2-1]);
        // the ki_ elements that we need here
        // are all defined because of (*)

        // evaluate left
        evalPoints_ := [ Integers() | ];
        for j := 1 to r0 do
            evalPoints_ := evalPoints_ cat [ LApprox_[j] - m*k :\
                                             m in [1..rho] ];
        end for;
        M_ := MatrixEvaluation(MPre, k2, evalPoints_);
        // collect/glue left
        for j := 1 to r0 do
            for m := 1 to l_[j] do
                res_[j] := M_[m+(j-1)*rho]*res_[j];
            end for;
        end for;

        // evaluate right
        evalPoints_ := [ Integers() | ];
        for j := 1 to r0 do
            evalPoints_ := evalPoints_ cat [ RApprox_[j] + m*k :\
                                             m in [0..rho-1] ];
        end for;
        M_ := MatrixEvaluation(MPre, k2, evalPoints_);
        // this could actually be optimised
        // in the first call to MatrixEvaluation in this loop
        // also output M_k(X)
        // and in this call simply evaluate
        // this wouldn't change overall O-complexity, though

        // collect/glue right
        for j := 1 to r0 do
            for m := 1 to r_[j] do
                res_[j] := res_[j]*M_[m+(j-1)*rho];
            end for;
        end for;

        LApprox_ := [ Integers() | LApprox_[j] - l_[j]*k : j in [1..r0] ];
        RApprox_ := [ Integers() | RApprox_[j] + r_[j]*k : j in [1..r0] ];
    end while;

    // FINAL STEP (k \le 2r)
    while (r ge 1) do
        // at the start of each loop we have
        // LApprox_[j]-2*r < L_[j] \le LApprox[j]
        // RApprox_[j] \le R_[j] < RApprox[j]+2*r
        if (k gt r) then
            // else we may safely skip the following
            // also: we wouldn't have enough inverses
            r2 := 2^(Ilog2(r)+1);
            // same thing as before with k and k2
            MPre := MatrixEvaluationPre(M, r, ki_[1..r2-1]);
            M_ := MatrixEvaluation(MPre, r2, [ LApprox_[j]-r : j in [1..r0] ]);
            for j := 1 to r0 do
                if (LApprox_[j]-L_[j] ge r) then
                    res_[j] := M_[j]*res_[j];
                    LApprox_[j] := LApprox_[j]-r;
                end if;
            end for;
            M_ := MatrixEvaluation(MPre, r2, RApprox_);
            for j := 1 to r0 do
                if (R_[j]-RApprox_[j] ge r) then
                    res_[j] := res_[j]*M_[j];
                    RApprox_[j] := RApprox_[j]+r;
                end if;
            end for;
            // now:
            // LApprox_[j] - L_[j] < r and
            // R_[j] - RApprox_[j] < r
        end if;
        if (r gt 1) then
            r := ShiftRight(r,1) + ModByPowerOf2(r,1);
        else
            r := 0;
        end if;
    end while;

    return res_;
end intrinsic;
