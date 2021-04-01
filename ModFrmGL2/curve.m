// This file is for finding the equations for the curve - the end result

// These two functions should be useful when having an elliptic curve, and trying
// to get the j-map

// Can we do it more efficiently?
function ProduceProds(f,g,max_a,max_b,prec)
    R<q> := Parent(f);
    prods := [[R!1]];
    for a in [1..max_a] do
	Append(~prods[1], f*prods[1][#prods[1]] + O(q^prec));
    end for;
    for b in [1..max_b] do
	Append(~prods, [g*p + O(q^prec) : p in prods[#prods]]);
    end for;
    return &cat prods;
end function;

function FindRelation(f, g, max_a, max_b)
    prec := (max_a+1)*(max_b+1);
    assert prec le Minimum(Degree(f), Degree(g));
    prods := ProduceProds(f,g,max_a,max_b,prec);
    min_deg_f := Minimum(Valuation(f)*max_a,0);
    min_deg_g := Minimum(Valuation(g)*max_b, 0);
    min_deg := min_deg_f +  min_deg_g;
    max_deg := prec - 1 + min_deg;
    prod_coeffs := [[Coefficient(prod, n) : n in [min_deg..max_deg]]
		    : prod in prods];
    ker := Kernel(Matrix(prod_coeffs));
    return ker;
end function;

function testFindRelation(N)
    h := Index(Gamma0(N));
    a := h + h div 6; // experimental
    prec := (a+1)*(h+1);
    p := NextPrime(prec);
    f := qEigenform(CuspidalSubspace(ModularSymbols(N)), prec);
    K := BaseRing(Parent(f));
    p_K := Factorization(Integers(K)!!p)[1][1];
    F, phi := ResidueClassField(p_K);
    R<q> := LaurentSeriesRing(F);
    f := &+[phi(Coefficient(f,n))*q^n : n in [1..Degree(f)-1]];
    E4 := qExpansion(EisensteinSeries(ModularForms(1,4))[1],prec+3);
    delta := qExpansion(Newforms(CuspidalSubspace(ModularForms(1,12)))[1][1],
			prec+3);
    j := (240*E4)^3 / delta;
//    f := R!f;
    j := R!j;
    dj := q * Derivative(j);
    rel := FindRelation(j, f / dj, a, h);
    return rel;
end function;

// This was specific for GammaNS(7)

function get_differential_qexpansion(u0, v0, f, prec)
    A<q> := LaurentSeriesRing(Parent(u0));
    B<r> := PolynomialRing(A);
    r_poly := (Evaluate(f, q+u0) - r^2 - v0^2) / (2*v0);
    z := r_poly;
    for i in [1..prec] do
	z := Evaluate(z, r_poly);
    end for;
    z := Evaluate(z, 0);
    f_nonnor := q/(z+v0);
    fns7 := f_nonnor / Coefficient(f_nonnor, 1);
    return fns7;
end function;

// This function is supposed to get equations
// Right now only looks for quadrics and cubics and quartics

// Should handle the hyperelliptic case, etc.

function FindCurve(qexps, prec, n_rel)
    _<q> := PowerSeriesRing(Rationals(),prec);
    fs := [f + O(q^prec) : f in qexps];
    Ks := [* BaseRing(Parent(f)) : f in fs *];
    fs := &cat[[Parent(q) | [Trace(Ks[j].1^i*c) : c in AbsEltseq(fs[j])] :
			    i in [0..Degree(Ks[j])-1]] : j in [1..#fs]];
    n := #fs;
    T, E := EchelonForm(Matrix([AbsEltseq(f) : f in fs]));
    fs := [&+[E[j][i]*fs[i] + O(q^prec) : i in [1..n]] : j in [1..n]];
    n := #[f : f in fs | not IsZero(f)];
    fs := fs[1..n];
    R<[x]> := PolynomialRing(Rationals(),n);
    degmons := [MonomialsOfDegree(R, d) : d in [1..n_rel]];
    prods := [[Evaluate(m, fs) + O(q^prec) : m in degmons[d]] :
	      d in [1..n_rel]];
    kers := [Kernel(Matrix([AbsEltseq(f) : f in prod])) : prod in prods];
    rels := [[&+[Eltseq(kers[d].i)[j]*degmons[d][j] : j in [1..#degmons[d]]] :
	      i in [1..Dimension(kers[d])]] : d in [1..n_rel]];
    I := ideal<R | &cat rels>;
    X := Curve(ProjectiveSpace(R),I);
    return X;
end function;

function FindCurveSimple(qexps, prec, n_rel)
    R<q> := Universe(qexps);
    K<zeta> := BaseRing(R);
    fs := [f + O(q^prec) : f in qexps];
    n := #fs;
    R<[x]> := PolynomialRing(K,n);
    degmons := [MonomialsOfDegree(R, d) : d in [1..n_rel]];
    prods := [[Evaluate(m, fs) + O(q^prec) : m in degmons[d]] :
	      d in [1..n_rel]];
    // This part is for equations over QQ, but should be tested thoroughly
    /*
prod_traces := [[&cat[[Trace(zeta^j*x) : x in AbsEltseq(f)] :  
j in [0..Degree(K)-1]] : f in prod] : prod in prods];
kers := [Kernel(Matrix(pr_tr)) : pr_tr in prod_traces];
*/
    kers := [Kernel(Matrix([AbsEltseq(f) : f in prod])) : prod in prods];
    rels := [[&+[Eltseq(kers[d].i)[j]*degmons[d][j] : j in [1..#degmons[d]]] :
	      i in [1..Dimension(kers[d])]] : d in [1..n_rel]];
    I := ideal<R | &cat rels>;
    X := Curve(ProjectiveSpace(R),I);
    return X;
end function;

procedure CurveTest(H, prec, nrel)
    M := ModularSymbols(H, 2, Rationals(), 0);
    S := CuspidalSubspace(M);
    g := Dimension(S) div 2;
    qexps := get_qexp(H, prec);
    X := find_curve(qexps, prec, nrel);
    assert Genus(X) eq g;
end procedure;
