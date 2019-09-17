freeze;

//  Copyright (C) 2009-2011 Moriz Minzlaff <minzlaff@daad-alumni.de>

//*****************************************************************************
//
// This package implements Minzlaff's algorithm for computing zeta functions of
// superelliptic curves in larger characteristic [1].
//
// [1] Minzlaff, M.: Computing Zeta Functions of Superelliptic Curves in Larger
//   Characteristic. Mathematics in Computer Science. 3(2), 209--224 (2010)
//
//*****************************************************************************

import "linearrecurrence.m" : UpperCaseDD;

import "../zeta.m" : check_lpol;

declare verbose Minzlaff, 1;

// A few generalities on the differentials and the spaces W_{s,t}:
// The differential x^iy^j dx lies in
//	the iota-th block of W_{s,t}
// with
//	s \in \{ i, i-1, ..., max{-1, i- (b-1)} \}
//	t = (j div a)+1 if j \ge 0
//	t = (-j div a) if j < 0
//	iota = a - (j rem a) if j \ge 0
//	iota = (-j rem a) if j < 0

function Row(j,a)
//    Returns row index of x^...y^j dx
//
//    INPUT:
//
//    - ``j`` - a finite cardinal
//    - ``a`` - a finite cardinal
//
    if (j ge 0) then
        return (j div a)+1;
    else
        return (-j) div a;
    end if;
end function;

function Block(j,a)
//    Returns block index of x^...y^j dx
//
//    INPUT:
//
//    - ``j`` - a finite cardinal
//    - ``a`` - a finite cardinal
//
    if (j ge 0) then
        return a - (j mod a);
    else
        return (-j) mod a;
    end if;
end function;

function ScalarCoefficients(j, k, a, hk, p, q, N)
// Returns the scalar coefficients \mu_{k,r,j}, i.e.
//	res_[r] := \mu_{k,r-1,j}
// (note the shift by 1 in the argument r!)
// the sequence has length b*k+1
//
    R1 := CoefficientRing(hk);
    res_ := [ R1 | ];

    for r := 0 to Degree(hk) do
        lambda := Coefficient(hk, r);
        // num = numerator of the two binomial expressions
        num := 1;
        for i := 0 to N-2 do
            num := num*(-(j/a)-i);
        end for;
        // denom = denominator of the two binomial expressions
        denom := Factorial(k)*Factorial((N-1)-k);
        // last summand
        summand := num/denom;
        sum := (-1)^(N-1+k)*summand;
        // summing up going down
        for l := N-2 to k by -1 do
            summand := summand*(l+1-k)/(-(j/a)-l);
            sum := sum + (-1)^(l+k)*summand;
        end for;
        sum := R1!sum;
        res_[r+1] := p*lambda*sum;
    end for;

    return res_;
end function;

function RSCombination(h)
// returns polynomial sequences r_ and s_ such that
// r_[i]h + s_[i]Derivative(h) = x^i
// where i \le b-2 and deg r_[i] \le b-2. deg s_[i] \le b-1
//
    b := Degree(h);
    rk := b+(b-1);
    R := CoefficientRing(Parent(h));
    RMat := MatrixRing(R, rk);

    dh := Derivative(h);

    M := RMat!0;
    for c := 1 to rk do
        for r := 1 to b-1 do
            if ((c-1)-(r-1) ge 0) then
                M[r,c] := Coefficient(h, (c-1)-(r-1));
            end if;
        end for;
        for r := b to rk do
            if ((c-1)-(r-b) ge 0) then
                M[r,c] := Coefficient(dh, (c-1)-(r-b));
            end if;
        end for;
    end for;
    Mi := M^(-1);

    resR_ := [ Polynomial([ Mi[i,c] : c in [1..b-1] ]) : i in [1..b-1] ];
    resS_ := [ Polynomial([ Mi[i,c] : c in [b..rk] ]) : i in [1..b-1] ];

    return resR_, resS_;
end function;

function CastElement(R, e)
//    Return the image / a preimage of e in R
//
//    INPUT:
//
//    -  ``R`` - (a polynomial ring over) UnramifiedQuotientRing(K,N)
//    -  ``e`` - an element of (or a polynomial over)
//               UnramifiedQuotientRing(K,N') with N' = N-1 or N+1
//
//    OUTPUT:
//
//    An element of R
//
//    NOTE:
//
//    This function is needed since Magma cannot coerce between
//    UnramifiedQuotientRing(K,N) with different N
//
    RR := CoefficientRing(R);
    // If K/L with L prime, then RR is the UnramifiedQuotientRing(L,N)
    // If R is not a polynomial ring, then (RR eq RRR)
    RRR := CoefficientRing(RR);
    e_ := Eltseq(e);
    res_ := [];
    for i := 1 to #e_ do
        e__ := Eltseq(e_[i]);
        res__ := [];
        for j := 1 to #e__ do
            res__[j] := RRR!e__[j];
        end for;
        res_[i] := RR!res__;
    end for;
    return R!res_;
end function;

function CastMatrix(R, M)
//    Return the image / a preimage of M over R
//
//    INPUT:
//
//    -  ``R`` - a (polynomial) matrix ring over UnramifiedQuotientRing(K,N)
//    -  ``M`` - a (polynomial) matrix over UnramifiedQuotientRing(K,N') with
//               N' = N-1 or N+1
//
//    OUTPUT:
//
//    An element of R
//
//    NOTE:
//
//    This function is needed since Magma cannot coerce between
//    UnramifiedQuotientRing(K,N) with different N
//
    RR := CoefficientRing(R);
    res := ZeroMatrix(RR, Nrows(M), Ncols(M));
    for i := 1 to Nrows(M) do
        for j := 1 to Ncols(M) do
            res[i,j] := CastElement(RR, M[i,j]);
        end for;
    end for;
    return res;
end function;

function HRedMatrix(t, iota, a, h, R1PolMatH)
// given row index t and block index iota,
// the equation of the curve (via a,h)
// return the horizontal reduction matrix
// for row t and block iota
// also return the denominators as a sequence of polynomials
// i.e.
// resM = M_H^{t,\iota}(s)
// resD = d_H^{t,\iota}(s)
//
    R1Pol<s> := Parent(h);

    resM := R1PolMatH!0;

    b := Degree(h);
    lambda := LeadingCoefficient(h);
    h1 := Reductum(h);    // h - LeadingTerm(h);

    resD :=  lambda*(b*(a*t+iota-a) -a*s);
    c_ := [ R1Pol | a*Coefficient(h1, 0)*s ];
    c_ := c_ cat [ R1Pol | a*Coefficient(h1, i)*s -\
                   (a*t+iota-a)*Coefficient(Derivative(h1), i-1) :\
                   i in [1..b-1] ];

    for i := 1 to b-1 do
        resM[i,i+1] := resD;
    end for;
    for i := 1 to b do
        resM[b,i] := c_[i];
    end for;

    return resM, resD;
end function;

function HRedMatrixSeq(genM, genD, L_, R_, DDi, slr, p, N, B, Vi, R1MatH,\
R0PolMatH)
//    Given the generic reduction matrix genM for the current row and block
//    together with its denominator genD
//    and given interval boundaries L_ and R_
//    return the matrix sequences specified by these intervals, i.e.
//    resM_[l] = M_H^{t,\iota}(l) and resD_[l] = "d_H^{t,\iota}(l)"
//
//    NOTE:
//
//    Computations are carried out mod p^N
//    but the result is given mod p^{N+1}
//
    R1Pol := Parent(genD);
    R1 := CoefficientRing(R1Pol);

    R0Pol := CoefficientRing(R0PolMatH);
    R0 := CoefficientRing(R0Pol);
    R0PolMat := MatrixRing(R0Pol, 1);

    tempM_ := BGS(Transpose(CastMatrix(R0PolMatH,genM)), L_,\
                               R_ : DDi := DDi, s := slr);
    tempM_ := [ Transpose(tempM_[m]) : m in [1..#tempM_] ];
    tempD_ := BGS(Transpose(R0PolMat!CastElement(R0Pol,genD)),\
                               L_, R_ : DDi := DDi, s := slr);
    tempD_ := [ Transpose(tempD_[m]) : m in [1..#tempD_] ];
    if (N lt B) then    // we need to compute the remaining matrices
        if (N eq 1) then    // everything is congruent mod p
            tempM_ := tempM_ cat [ tempM_[1] : l in [N+1..B] ];
            tempD_ := tempD_ cat [ tempD_[1] : l in [N+1..B] ];
        else    // apply the vandermonde trick
                // denominators
            R0Mat := Parent(tempD_[1]);
            taylor_ := [ R0Mat | ];
            for l := 1 to N do
                taylor_[l] := 0;
                for m := 1 to N do
                    taylor_[l] := taylor_[l] + tempD_[m]*Vi[m,l];
                end for;
            end for;
            for l := N+1 to B do
                tempD_[l] := R0Mat!0;
                c := 1;
                for i := 1 to N do
                    tempD_[l] := tempD_[l] + taylor_[i]*c;
                    c := c*l;
                end for;
            end for;
            // matrix
            R0Mat := Parent(tempM_[1]);
            taylor_ := [ R0Mat | ];
            for l := 1 to N do
                taylor_[l] := 0;
                for m := 1 to N do
                    taylor_[l] := taylor_[l] + tempM_[m]*Vi[m,l];
                end for;
            end for;
            for l := N+1 to B do
                tempM_[l] := R0Mat!0;
                c := 1;
                for i := 1 to N do
                    tempM_[l] := tempM_[l] + taylor_[i]*c;
                    c := c*l;
                    end for;
                end for;
        end if;
    end if;
    resM_ := [ CastMatrix(R1MatH,tempM_[l]) : l in [1..B] ];
    resD_ := [ CastElement(R1,tempD_[l][1,1]) : l in [1..B] ];

    return resM_, resD_;
end function;

function HReduce(i, iota, mu_, genM, genD, M_, D_, p, R1ModH)
// reduces the differential T_{(i,j),k} horizontally
//
    R1 := CoefficientRing(R1ModH);
    b := Dimension(R1ModH);

    res := R1ModH!0;

    // Note: #mu_ = b*k+1
    res[1] := mu_[#mu_];	// Recall: mu_[r] = mu_{k,r+1,j}

    for l := i+ #mu_ to 1 by -1 do
        for m := 1 to b-1 do
            res := res*Evaluate(genM, p*l-m)*( Evaluate(genD, p*l-m)^(-1) );
        end for;
        res := res*Evaluate(genM, p*l-b);
        d := Evaluate(genD, p*l-b);
        res := R1ModH![ R1!(res[m] div d) : m in [1..b] ];
        res := res*M_[l]*( D_[l]^(-1) );
        res := res*Evaluate(genM, (l-1)*p)*(Evaluate(genD,(l-1)*p)^(-1));
        if ((l-1)-i-1 ge 0) then
            res[1] := res[1] + mu_[(l-1)-i];
        end if;
    end for;

    return res;
end function;

function VRedMatrixSeq(j, a, h, r_, s_, p, N, R1MatV, R1PolMatV)
// Given the data to compute the generic reduction matrix
// (and its denominator) of the iota-th block,
// return the matrix sequences needed for vertical reduction, i.e.
// resM_[k] = M_V^{\iota}(k) and resD_[k] = "d_V^{\iota}(k)"
//
    b := Degree(h);
    R1 := CoefficientRing(h);
    R1Pol := Parent(h);
    t := R1Pol.1;
    R1PolMat := MatrixRing(R1Pol, 1);

    t_ := [ 0 ] cat [ Row(-p*(a*k + j), a) : k in [0..N-1] ];
    L_ := [ t_[i] : i in [1..#t_-1] ];
    R_ := [ t_[i] : i in [2..#t_] ];
    slr := Ilog(4, R_[#R_]);
    DDi := UpperCaseDD(R1!1, 2^slr, 2^slr);
    DDi := DDi^(-1);

    iota := Block(-p*j, a);

    genM := R1PolMatV!0;
    c_ := [ R1Pol | ];
    for i := 0 to b-2 do
        c_ := [ (a*t + iota-a)*Coefficient(r_[i+1], m) +\
                a*Coefficient(Derivative(s_[i+1]), m) : m in [0..b-2] ];
        for m := 1 to b-1 do
            genM[i+1,m] := c_[m];
        end for;
    end for;
    resM_ := BGS(Transpose(genM), L_, R_ : DDi := DDi, s:=slr);
    resM_ := [ Transpose(resM_[m]) : m in [1..#resM_] ];

    genD := R1PolMat!(a*t +iota-a);
    tempD_ := BGS(Transpose(genD), L_, R_ : DDi := DDi, s:=slr);
    tempD_ := [ Transpose(tempD_[m]) : m in [1..#tempD_] ];
    resD_ := [ tempD_[k][1,1] : k in [1..N] ];

    return resM_, resD_;
end function;

function VReduce(i, j, a, h, wH_, M_, D_, R1ModV)
// "vertically" reduces the already
// "horziontally reduced" differential
// w_{(i,j)} = wH_[*,j,i+1]
//
    R1 := CoefficientRing(h);

    b := Degree(h);
    N := #wH_;

    res := R1ModV![ wH_[N, j, i+1][m] : m in [2..b] ];

    for k := N-1 to 1 by -1 do
        res := res*M_[k+1];
        d := D_[k+1];
        res := R1ModV![ R1!(res[m] div d) : m in [1..b-1] ];
        res := R1ModV![ wH_[k, j, i+1][m] + res[m-1] : m in [2..b] ];
    end for;

    res := res*M_[1]*( D_[1]^(-1));

    return res;
end function;

/*
intrinsic AbsoluteFrobeniusAction(a::RngIntElt, hbar::RngUPolElt,N::RngIntElt)\
-> AlgMatElt
{
    Implements [1, Algorithm 1]

    INPUT:

    -  ``a`` - an integer > 1
    -  ``hbar`` - a squarefree univariate polynomial over a finite field
                  of degree coprime to a
    -  ``N`` - an integer > 0 setting the desired precision

    OUTPUT:

    A integer matrix modulo p^N representing the action of the
    absolute Frobenius on the first crystalline cohomology space
    of the smooth projective model of y^a - hbar = 0.

    NOTE:

    The complexity is O( p^(1/2) n MM(g) N^(5/2) + \log(p)ng^4N^4 )
}
*/
function AbsoluteFrobeniusAction(a, hbar, N)
    // Step 0: Setup
    K := CoefficientRing(hbar);
    p := Characteristic(K);
    q := #K;
    n := Degree(K);
    b := Degree(hbar);

    // Check user input
    error if not IsFinite(K), "The curve must be defined over a finite field.";
    error if not IsSeparable(hbar),
        "The current implementation only supports squarefree hbar.";
    error if not (Gcd(a,b) eq 1),
        "The current implementation needs a and the degree of hbar to be coprime.";
    error if (a lt 2), "Please enter an integer a > 1.";
    error if (b lt 2), "Please enter a polynomial hbar of degree > 1.";
    error if (N lt 1), "Please enter a positive precision N";
    error if (p le (a*N-1)*b), "Characteristic too small";

    vprint Minzlaff : "Minzlaff algorithm";
    time0 := Cputime();

    R0 := UnramifiedQuotientRing(K,N);
    R0Pol := PolynomialRing(R0);
    R1 := UnramifiedQuotientRing(K,N+1);
    R1Pol := PolynomialRing(R1);

    h := R1Pol!hbar;

    // Step 1: Horizontal reduction
    R1MatH := MatrixRing(R1, b);
    R1ModH := RModule(R1, b);
    R1PolMatH := MatrixRing(R1Pol, b);
    R0PolMatH := MatrixRing(R0Pol, b);

    wH_ := [ [ [] : j in [1..a-1] ] : k in [0..N-1] ];
    // stores the results of the reduction
    // wH_[k+1,j,i+1] = w_{(i,j),k}
    // Note: w_{(i,j),k} is nonzero only in the
    // iota(j)-th block, so _only_ this block is stored

    // vandermonde trick: preliminaries
    R0Mat := MatrixRing(R0, N);
    if (N lt b-1 +b*(N-1)) and (N gt 1) then
        // V := elt< R0Mat | [ i^j : i in [1..N], j in [0..N-1] ] >;
        V := Matrix(N, [R0 | i^j : i in [1..N], j in [0..N-1] ]); // syntax fix
        Vi := R0Mat!(V^(-1));
    else
        Vi := R0Mat!1;
    end if;

    hk := R1Pol!1;
    hFrob := R1Pol![ FrobeniusImage(Coefficient(h,i)) : i in [0..Degree(h)] ];
    // at the start of the k-th loop hk = (hFrob)^k
    for k := 0 to N-1 do
        // reduction matrix sequences: preliminaries
        B := b-1 +b*k;
        min := Min(N, B);
        L_ := [ (l-1)*p : l in [1..min] ];
        R_ := [ l*p -b-1 : l in [1..min] ];
        slr := Ilog(4, R_[#R_]);
        DDi := UpperCaseDD(R0!1, 2^slr, 2^slr);
        DDi := DDi^(-1);

        for j := 1 to a-1 do
            // j and k fix the row index
            t := Row(-p*(a*k +j), a);
            // horizontal reductions are performed
            // row by row from "bottom to top"

            //iota := Block(-p*(a*k +j), a);
            // j fixes the block index
            // Note: this really is independent of k!
            iota := Block(-p*j, a);
            // Block(-p*(a*k+j), a) = Block(-p*j, a)
            assert( -(t*a+iota) eq -p*(a*k+j) );

            // generic reduction matrix
            genM, genD := HRedMatrix(t, iota, a, h, R1PolMatH);

            // reduction matrix sequences: evaluation
            M_, D_ := HRedMatrixSeq(genM, genD, L_, R_, DDi, slr,\
                                    p, N, B, Vi, R1MatH, R0PolMatH);

            // approximate frobenius action
            mu_ := ScalarCoefficients(j, k, a, hk, p, q, N);

            // reduce
            wH_[k+1,j] := [ HReduce(i, iota, mu_, genM, genD, M_,\
                                    D_, p, R1ModH) : i in [0..b-2] ];
        end for;
        hk := hk*hFrob;
    end for;

    vprintf Minzlaff : "Step 1 : %os\n", Cputime(time0);
    time1 := Cputime();

    // Step 2: Vertical reduction
    R1MatV := MatrixRing(R1, b-1);
    R1ModV := RModule(R1, b-1);
    R1PolMatV := MatrixRing(R1Pol, b-1);
    wV_ := [ [] : j in [1..a-1] ];
    // stores the results of the reduction
    // wV_[j,i+1] = w_{(i,j)}
    // Note: w_{(i,j)} is nonzero only in the
    // iota(j)-th block, so _only_ this block is stored
    // Note: block size is now b-1!
    // (as opposed to b during horizontal reduction)

    // reduction matrix sequences: preliminaries
    // compute the r_i and s_i needed to define the
    // vertical reduction matrices
    r_, s_ := RSCombination(h);

    for j := 1 to a-1 do
        // reduction matrix sequences: evaluation
        M_, D_ := VRedMatrixSeq(j, a, h, r_, s_, p, N,\
                                R1MatV, R1PolMatV);

        // reduce
        wV_[j] := [ VReduce(i, j, a, h, wH_, M_, D_, R1ModV) :\
                            i in [0..b-2] ];
    end for;

    vprintf Minzlaff : "Step 2 : %os\n", Cputime(time1);

    // Step 3: Assemble output
    R0Mat := MatrixRing(R0, (a-1)*(b-1));
    res := R0Mat!0;
    for j := 1 to a-1 do
        for i := 0 to b-2 do
            for m := 1 to b-1 do
                res[(j-1)*(b-1) +i+1, (Block(-p*j, a)-1)*(b-1) +m] :=\
                                       CastElement(R0,(wV_[j,i+1][m]));
            end for;
        end for;
    end for;

    return res;
end function;

// TO DO not expose?

intrinsic ZetaFunction(a::RngIntElt, hbar::RngUPolElt) -> FldFunRatUElt
{The zeta function of the superelliptic curve y^a=hbar
(using the implementation by Minzlaff)}
/*
    Implements [1, Corollary]

    INPUT:

    -  ``a`` - an integer > 1
    -  ``hbar`` - a squarefree univariate polynomial over a
                  finite field of degree coprime to a

    OUTPUT:

    A rational function over QQ
*/
    // Step 0: Setup
    Z := Integers();
    p := Characteristic(CoefficientRing(hbar));
    q := #CoefficientRing(hbar);
    n := Degree(CoefficientRing(hbar));
    g := ShiftRight((a-1)*(Degree(hbar)-1), 1);

    // Step 1: Determine needed precision
    bound := n*g/2 + 2*g*Log(p,2);
    // N is the first integer strictly larger than bound
    N := Floor(bound+1);

    // Step 2: Determine absolute Frobenius action mod precision
    M := AbsoluteFrobeniusAction(a, hbar, N);

    // Step 3: Determine Frobenius action mod precision
    MM := M;
    for i in [1..n-1] do
         // Apply Frobenius to MM
         for j := 1 to Nrows(MM) do
             for k := 1 to Ncols(MM) do
                 MM[j, k] := FrobeniusImage(MM[j, k]);
             end for;
         end for;
         // Multiply
         M := M * MM;
    end for;

    // Step 4: Determine L polynomial
    ZPol<t> := PolynomialRing(Z);
    CP := CharacteristicPolynomial(M);
    Chi := ZPol!CP;
    L := ZPol!(t^(2*g)*Evaluate(Chi, 1/t));
    coeff_ := [ Coefficient(L, i) : i in [0..2*g] ];
    prec := p^N;
    mid := ShiftRight(prec,1);
    for i := 0 to g do
        if (coeff_[i+1] gt mid) then
            coeff_[i+1] := coeff_[i+1]-prec;
        end if;
    end for;
    for i := 0 to g-1 do
        coeff_[2*g-i+1] := (q^(g-i))*coeff_[i+1];
	end for;
    L := Polynomial(coeff_);

    assert check_lpol(L, q);

    // Step 5: Output zeta function
    return L / (q*t^2 - (q+1)*t + 1);
end intrinsic;
