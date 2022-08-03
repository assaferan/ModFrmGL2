import "ModSym/Box.m" : precisionForCurve, FindCurveSimple, get_degeneracy_maps;
import "ModSym/linalg.m" : Restrict;
import "ModSym/modsym.m" : ModularSymbolsSub;
import "ModSym/operators.m" : ActionOnModularSymbolsBasis;
import "congruence.m" : createPSL2Models;

function FindIsomorphicGroup(PG, t)
    GL2Q := GL(2, Rationals());
    alpha := GL2Q![1,0,0,t];
    gensG := Generators(PG);
    new_gens := [alpha * GL2Q!Eltseq(gg) * alpha^(-1) : gg in gensG];
    N := Level(PG);
    return PSL2Subgroup(sub<GL(2, Integers(N*t)) | new_gens>);
end function;

// fund the label of PG in shim_list
function IdentifyLabelShimura(PG, labels, grps)
    N := Level(PG);
    level_labels := [label : label in labels | grps[label]`level eq N];
    for label in level_labels do
	grp := grps[label];
	vprintf ModularCurves, 1 : "Computing possible GL2 models for the group %o...\n", label;
	Gs := createPSL2Models(grp);
	vprintf ModularCurves, 1 : "Finding a model of Shimura type...\n";
	assert exists(i){i : i in [1..#Gs] | IsGammaShimura(Gs[i])};
	vprintf ModularCurves, 1 : "Extracting parameters...\n";
	_, U, phi, H, t := IsGammaShimura(Gs[i]);
	PG_label := GammaShimura(U, phi, H, t);
	if (PG eq PG_label) then return label, U, phi, H, t; end if;
    end for;
    return false;
end function;

function checkALQuotientShimura(idx, labels, grps)
    label := labels[idx];
    grp := grps[label];
    GL2Q := GL(2, Rationals());
    vprintf ModularCurves, 1 : "Computing possible GL2 models for the group %o...\n", label;
    Gs := createPSL2Models(grp);
    vprintf ModularCurves, 1 : "Finding a model of Shimura type...\n";
    // otherwise this is not of Shimura type
    assert exists(i){i : i in [1..#Gs] | IsGammaShimura(Gs[i])};
    _, U, phi, H, t := IsGammaShimura(Gs[i]);
    PG := GammaShimura(U, phi, H, t);
    if (t ne 1) then
	vprintf ModularCurves, 1 : "t is not 1, finding an isomorphic group...\n";
	PG := FindIsomorphicGroup(PG,t);
	label, U, phi, H, t := IdentifyLabelShimura(PG, labels, grps);
	vprintf ModularCurves, 1: "isomrophic to %o\n", label;
	// verification
	assert t eq 1;
    end if;
    N := Level(PG);
    U_t, phi_t := UnitGroup(Integers(N*t));
    red_N := hom<Integers(N*t) -> Integers(N)|>;
    gens := [U_t.i : i in [1..Ngens(U_t)]];
    red_U := hom<U_t -> U | [red_N(phi_t(x))@@phi : x in gens]>;
    H_t := H@@red_U;
    MS_H := ModularSymbolsH(N*t, [Integers()!phi_t(g) : g in Generators(H_t)], 2, 0);
    C_H := CuspidalSubspace(MS_H);
    qs := {p^Valuation(N,p) : p in PrimeDivisors(N)};
    al_qs := AssociativeArray();
    gensG := Generators(PG);
    subsets := [S : S in Subsets(qs) | not IsEmpty(S)];
    //    for q in qs do
    for S in subsets do
	q := &*S;
	d, x, y:= XGCD(q,-Integers()!(N/q));
        g := [q*x, y, N, q];
	is_al := &and[GL2Q!g * GL2Q!Eltseq(gg) * GL2Q!g^(-1) in PG : gg in gensG];
	if is_al then
	    A := ActionOnModularSymbolsBasis(g, MS_H);
	    al := Restrict(A, Representation(C_H));
	    al_qs[q] := al;
	end if;
    end for;
     // genus check
    g := Dimension(C_H) div 2;
    //    all_als := [<&*S,&*{MatrixAlgebra(Rationals(), 2*g) | al_qs[s] : s in S}> : S in Subsets(Keys(al_qs)) | not IsEmpty(S)];

    // we're only interested in the planar curve case
    assert exists(d){d : d in [1..10] | (d-1)*(d-2) eq 2*g};
    f := d + (d mod 2);
    // for al in all_als do
    for q in Keys(al_qs) do
	//	g_quo := Dimension(Kernel(al[2]-1)) div 2;
	g_quo := Dimension(Kernel(al_qs[q]-1)) div 2;
	// Riemann-Hurwitz
	RH := 2*g-2 - 2*(2*g_quo-2) - f;
	if (RH ne 0) then
	    vprintf ModularCurves, 1 : "The quotient by W_{%o} has genus %o, contradicting RH as for a plane curve as we expected %o fixed points, but there are %o.\n", q, g_quo, f, RH + f;
	    return false, q, g_quo, f, RH + f;
	end if;
    end for;
    return true;
end function;

// Here G is a PSL2subgroup of level N and p is a prime divisor of N.
// Find an AL of determinant p for G
// For now, assume p^2 does not divide N
// We only find one, since any two are related by a det 1 element
function FindALGeneralAtPrime(G,p)
    M2Z := MatrixAlgebra(Integers(),2);
    M2Fp := MatrixAlgebra(GF(p),2);
    V, psi := VectorSpace(M2Fp);
    G_N := ImageInLevelGL(G);
    Gp := sub<GL(2, GF(p)) | [GL(2,Integers(p))!g : g in Generators(G_N)]>;
    gens := [g : g in Generators(Gp)];
    R<x,y> := PolynomialRing(GF(p), 2);
    P1 := ProjectiveSpace(R);
    polys := [];
    for g in gens do
	a,b,c,d := Explode(Eltseq(g));
	f := b*x^2 + (d-a)*x*y-c*y^2;
	Append(~polys, f);
    end for;
    X := Scheme(P1, polys);
    // these are the possible gamma_0 mod p such that gamma_0 * G * gamma_0^(-1) is in M_2(Z)
    // up to multiplication by a scalar in Z_p^x (that's the reason for t running over P1 and not A2)
    mats := [Matrix(2,2,[t[1]*p[1],t[1]*p[2],t[2]*p[1],t[2]*p[2]]) : t in Points(P1), p in Points(X)];
    for gamma_0 in mats do
	T := hom< V->V | [psi(gamma_0 * (psi^(-1))(V.x) * Adjoint(gamma_0)) : x in [1..4]]>;
	h_basis := [(psi^(-1))(b) : b in Basis(Image(T))];
	h_params := CartesianPower(GF(p),#h_basis);
	// Finding lifts mod p^2
	res := [M2Z!gamma_0 * M2Z!g * Adjoint(M2Z!gamma_0) : g in gens];
	assert &and[&and[x mod p eq 0 : x in Eltseq(ress)] : ress in res];
	res := [MatrixAlgebra(GF(p),2)!(ress div p) : ress in res];
	R<[x]> := PolynomialRing(GF(p),4);
	x_mat := Matrix(2,2,x); 
	eqs := [[Eltseq(x_mat * Matrix(g) * Adjoint(gamma_0) + gamma_0 * Matrix(g) * Adjoint(x_mat) + res[i] - Matrix(t)) : t in Gp] : i->g in gens];
	// Here it might be sometimes faster to loop over solutions to one of them (when there are less than #Gp
	// These are linear equations, but this is the shortest lines of code to produce the solutions...
	all_gamma1s := [&join[{Eltseq(p) : p in Points(Scheme(AffineSpace(R),eqsss))}
			      : eqsss in eqss] : eqss in eqs];
	gamma1s := &meet all_gamma1s;
	al_cands := [M2Z!gamma_0 + p*(M2Z!gamma_1) : gamma_1 in gamma1s];
	for gamma in al_cands do
	    is_good := true;
	    for g in gens do
		res := M2Z!gamma * M2Z!g * Adjoint(M2Z!gamma);
		assert &and[x mod p eq 0 : x in Eltseq(res)];
		res := MatrixAlgebra(GF(p),2)!(res div p);
		for h_param in h_params do
		    h := &+[h_param[i]*h_basis[i] : i in [1..#h_basis]];
		    if (h + res) notin Gp then
			is_good := false;
			break;
		    end if;
		end for;
		if not is_good then break; end if;
	    end for;
	    if (is_good) then return true, gamma; end if;
	end for;
    end for;
    return false, _;
end function;

function al_model(grp, qs)
    GL2Q := GL(2, Rationals());
    Gs := createPSL2Models(grp);
    assert exists(i){i : i in [1..#Gs] | IsGammaShimura(Gs[i])};
    _, U, phi, H, t := IsGammaShimura(Gs[i]);
    PG := GammaShimura(U, phi, H, t);
    assert t eq 1;
    N := Level(PG);
    U_t, phi_t := UnitGroup(Integers(N*t));
    red_N := hom<Integers(N*t) -> Integers(N)|>;
    gens := [U_t.i : i in [1..Ngens(U_t)]];
    red_U := hom<U_t -> U | [red_N(phi_t(x))@@phi : x in gens]>;
    H_t := H@@red_U;
    MS_H := ModularSymbolsH(N*t, [Integers()!phi_t(g) 
				  : g in Generators(H_t)],2,1); 
    C_H := CuspidalSubspace(MS_H);
    // qs := {p^Valuation(N,p) : p in PrimeDivisors(N)};
    al_qs := AssociativeArray();
    gensG := Generators(PG);
    V := VectorSpace(C_H);
    for q in qs do
	d, x, y:= XGCD(q,-Integers()!(N/q));
	g := [q*x, y, N, q];
	assert &and[GL2Q!g * GL2Q!Eltseq(gg) * GL2Q!g^(-1) in PG : gg in gensG];
	al := ActionOnModularSymbolsBasis(g, MS_H); 
	V := V meet Kernel(al-1);
    end for;
    al_cusp := ModularSymbolsSub(MS_H, V);
    prec := precisionForCurve(PG) div N;
    // That was naive to think that this would work...
    // The issue is that we have non-trivial character, and so the 
    // fixed vectors are linear combinations of an eigenform with its conjugate
    // defined by the pseudo-eigenvalues
    // qexps := qExpansionBasis(al_cusp, prec);
    // X := FindCurveSimple(qexps, prec, 3);
    // return X;
    D := NewformDecomposition(C_H);
    Cbmat := BasisMatrix(VectorSpace(C_H));
    D_V := [ ];
    for d in D do
	quo_level := N div Level(AssociatedNewSpace(d));
	if (quo_level ne 1) then
	    betas := [];
	    for m in Divisors(quo_level) do
		alpha, ims_alpha, beta, alpha_new := 
		    get_degeneracy_maps(AmbientSpace(d), MS_H, m);
		Append(~betas, beta);
	    end for;
	    basis := VerticalJoin([BasisMatrix(Image(beta)) : beta in betas]);
	    im_D := sub<VectorSpace(MS_H) | Rows(basis * Cbmat)>;
	else
	    im_D := VectorSpace(d);
	end if;
	if (Dimension(im_D meet V) gt 0) then
	    Append(~D_V, d);
	end if;
    end for;
    // D := [d : d in D | Dimension(VectorSpace(d) meet V) gt 0];
    D := D_V;
    gauss_sums := [GaussSum(DirichletCharacter(d)) : d in D];
    Q_cyc := FieldOfFractions(Universe(gauss_sums));
    al_fs := [ ];
    // for now only handle the case of a single AL quotient
    assert #qs eq 1;
    Q := qs[1];
    for i->d in D do
	f0 := qEigenform(d, prec);
	_<q> := Parent(f0);
	F := BaseRing(Parent(f0));
	quo_level := N div Level(AssociatedNewSpace(d));
	divs := Divisors(quo_level);
	// for now we only treat the case #divs le 2
	assert #divs le 2;
	if (GCD(quo_level, Q) eq 1) then
	    fs := [Evaluate(f0, q^ddiv) : ddiv in divs];
	else
	    fs := [&+[ddiv*Evaluate(f0, q^ddiv) : ddiv in divs]];
	end if;
	for f in fs do
	/*
	F_nor := NormalClosure(AbsoluteField(F));
	F_nor_q<q> := PowerSeriesRing(F_nor);
	gal, aut, galmap := AutomorphismGroup(F_nor, Rationals());
	_, cc := HasComplexConjugate(F_nor);
	assert exists(cc_gal){g : g in gal | 
			      galmap(g)(F_nor.1) eq cc(F_nor.1)};
	fix_F := [g : g in gal | galmap(g)(F.1) eq F.1];
	Append(~fix_F, cc_gal);
	reps := Transversal(gal, sub<gal| fix_F>);
	f_elt := AbsEltseq(f);
	f_conjs := [F_nor_q![galmap(r)(x) : x in f_elt]+O(q^prec) 
		    : r in reps];
	g := gauss_sums[i];
	F := F_nor;
	p := MinimalPolynomial(F.1);
	p_K := ChangeRing(p, K);
	K := ext< K | Factorization(p_K)[1][1]>;
	// assert Evaluate(p,K.1) eq 0;
	assert IsSubfield(BaseRing(F),K);
	h := hom<F->K | K.1>;
	Kq<q> := PowerSeriesRing(K);
	for f_conj in f_conjs do
	    a_qs := [Coefficient(f_conj,q) : q in qs];
	    // assume for now #a_qs = 1
	    assert #a_qs eq 1;
	    a := h(a_qs[1]);
	    lambda := g/a;
	    fc := Kq![h(x) : x in AbsEltseq(f_conj)];
	    fbar := Kq![h(cc(x)) : x in AbsEltseq(f_conj)] + O(q^prec);
	    al_f := fc + lambda * fbar;
	    Append(~al_fs, al_f);
	end for;
       */
	    g := gauss_sums[i];
	    p := MinimalPolynomial(F.1);
	    p_K := ChangeRing(p, Q_cyc);
	    K := ext< Q_cyc | Factorization(p_K)[1][1]>;
	    if (Type(F) ne FldRat) then
		assert IsSubfield(BaseRing(F),K);
		h := hom<F->K | K.1>;
	    else
		h := hom<F->K | >;
	    end if;
	    
	    has_cc := false;
	    if Type(F) ne FldRat then
		has_cc, cc := HasComplexConjugate(F);
	    end if;
	    if not has_cc then
		cc := IdentityHomomorphism(F);
	    end if;
	    Kq<q> := PowerSeriesRing(K);
	    a_qs := [Coefficient(f,q) : q in qs];
	    // assume for now #a_qs = 1
	    assert #a_qs eq 1;
	    a := h(a_qs[1]);
	    if not has_cc then
		// in this case f is fixed by the Atkin-Lehner and so
		// f itself is a fixed eigenvector
		lambda := 0;
	    else
		lambda := g/a;
	    end if;
	    fc := Kq![h(x) : x in AbsEltseq(f)] + O(q^prec);
	    fbar := Kq![h(cc(x)) : x in AbsEltseq(f)] + O(q^prec);
	    al_f := fc + lambda * fbar;
	    
	    Q_cyc_q<q> := PowerSeriesRing(Q_cyc);
	    tr_f := Q_cyc_q![Trace(x) : x in AbsEltseq(al_f)] + O(q^prec);
	    eps := DirichletCharacter(d);
	    cyc_order := CyclotomicOrder(BaseRing(Parent(eps)));
	    prim_elt := PrimitiveElement(Integers(cyc_order));
	    e := CRT([Integers()!prim_elt,1],[cyc_order,N]);
	    Q_N<zeta_N> := CyclotomicField(LCM(N,CyclotomicOrder(Q_cyc)));
	    if (Type(Q_cyc) ne FldRat) then
		aut_cyc := [hom<Q_cyc->Q_cyc | Q_cyc.1^(e^i mod N*cyc_order)> 
			    : i in [1..cyc_order] | GCD(i,cyc_order) eq 1];
	    else
		aut_cyc := [hom<Q_cyc->Q_cyc | >];
	    end if;    
	    Q_N_q<q> := PowerSeriesRing(Q_N);  
	    al_fs cat:= [Q_N_q![Q_N!(&+[a((Q_cyc.1^(N*i))*x) : a in aut_cyc]) 
				: x in AbsEltseq(tr_f)]+O(q^prec) 
			 : i in [0..#aut_cyc-1]];
	end for;
    end for;
    max_deg := Maximum(7-#al_fs, 3);
    X := FindCurveSimple(al_fs, prec, max_deg);
    return X;
end function;


function CanonicalRingShimura(grp : prec := 100)
    GL2Q := GL(2, Rationals());
    Gs := createPSL2Models(grp);
    assert exists(i){i : i in [1..#Gs] | IsGammaShimura(Gs[i])};
    _, U, phi, H, t := IsGammaShimura(Gs[i]);
    PG := GammaShimura(U, phi, H, t);
    assert t eq 1;
    s := Signature(PG);
    level := Level(PG);
    g := s[1];
    e := s[2];
    delta := s[3];
    assert delta ge 1;
    r := #e;
    if r eq 0 then
	if g ge 1 then
	    // This is Theorem 4.1.3 in DZB+Voight Stacky curve paper
	    // for log curves
	    gen_degs := [3,2,1,1];
	    rel_degs := [6,4,3,2];
	    idx := Minimum(delta, 4);
	    gen_deg := gen_degs[idx];
	    rel_deg := rel_degs[idx];
	else
	    // This follows from the discussion of the genus 0 case
	    gen_degs := [0,1,1,1];
	    rel_degs := [0,0,0,2];
	    idx := Minimum(delta, 4);
	    gen_deg := gen_degs[idx];
	    rel_deg := rel_degs[idx];
	end if;
    else
	e := Maximum(e);
	if g ge 1 then
	    // This is Theorem 8.4.1 in stacky curve
	    gen_deg := Maximum(3,e);
	    rel_deg := 2*gen_deg;
	else
	    if delta eq 0 then
		if r eq 3 then 
		    exceptional := [[2,3,7],[2,3,8],[2,3,9],[2,4,5],[2,5,5],[3,3,4],[3,3,5],
				    [3,3,6],[3,4,4],[3,4,5],[4,4,4]];
		    gen_degs := [21,15,9,10,6,12,9,6,8,5,4];
		    rel_degs := [42,30,24,20,16,24,18,15,16,16,5];
		elif r eq 4 then
		    exceptional := [[2,2,2,3], [2,2,2,4],[2,2,2,5],[2,2,3,3],
				    [2,2,3,4],[2,3,33]];
		    gen_degs := [9,7,5,6,4,3];
		    rel_degs := [18,14,12,12,13,9];
		elif r eq 5 then
		    exceptional := [[2,2,2,2,2],[2,2,2,2,3]];
		    gen_degs := [5,3];
		    rel_degs := [10,8];
		else
		    exceptional := [[2 : i in [1..r]]];
		    gen_degs := [3];
		    rel_degs := [6];
		end if;
		
		if s[2] in exceptional then
		    idx := Index(exceptional, s[2]);
		    gen_deg := gen_degs[idx];
		    rel_deg := rel_degs[idx];
		end if;
	    end if;
	    // Theorem 9.3.1
	    gen_deg := e;
	    rel_deg := 2*e;
	end if;
    end if;
    // TODO - fix the needed precision
    
    ring_gens := AssociativeArray();
    
    N := Level(PG);
    U_t, phi_t := UnitGroup(Integers(N*t));
    red_N := hom<Integers(N*t) -> Integers(N)|>;
    gens := [U_t.i : i in [1..Ngens(U_t)]];
    red_U := hom<U_t -> U | [red_N(phi_t(x))@@phi : x in gens]>;
    H_t := H@@red_U;
    for d in [1..gen_deg] do
	MS_H := ModularSymbolsH(N*t, [Integers()!phi_t(g) 
				  : g in Generators(H_t)],2*d,1); 
	C_H := CuspidalSubspace(MS_H);
	fs := qIntegralBasis(C_H, prec);
	// K := 1;
	// The Eisenstein series are returned with denominator N = level !!
	// eis := EisensteinSeries(ModularForms(PG,2*d));
	eis := EisensteinSeries(ModularForms(DirichletCharacter(MS_H),2*d));
	eis := [qExpansion(f, prec) : f in eis];
	/*
	gap := level div K;
	eis_elt := [AbsEltseq(f) : f in eis];
	assert &and[ &and[f[x] eq 0 : x in [1..#f] | (x-1) mod gap ne 0] : f in eis_elt];
	eis_elt := [[f[gap*i+1] : i in [0..(#f-1) div gap]] : f in eis_elt];
	eis := [Universe(eis)!f_elt : f_elt in eis_elt];
       */
	ring_gens[d] := fs cat eis;
    end for;
    fs := &cat [ring_gens[d] : d in [1..gen_deg]];
    grading := &cat[[d : x in ring_gens[d]] : d in [1..gen_deg]];
    R<[x]> := PolynomialRing(Rationals(),grading);
    degmons := [MonomialsOfWeightedDegree(R, d) : d in [1..rel_deg]];
    _<q> := Universe(fs);
    prods := [[Evaluate(m, fs) + O(q^prec) : m in degmons[d]] :
	      d in [1..rel_deg]];
    coeffs := [[&cat[Eltseq(x) : x in AbsEltseq(f)] : f in prod]
	       : prod in prods];
    kers := [IsEmpty(c) select VectorSpace(Rationals(),0) else Kernel(Matrix(c))
	     : c in coeffs];
    rels := [[&+[Eltseq(kers[d].i)[j]*degmons[d][j] : j in [1..#degmons[d]]] :
	      i in [1..Dimension(kers[d])]] : d in [1..rel_deg]];
    is_all := false;
    d := 1;
    not_in_I := rels;
    I := ideal<R | 0>;
    while not is_all do
	I +:= ideal<R | &cat not_in_I[1..d]>;
	not_in_I := [[x : x in r | x notin I] : r in rels];
	is_all := &and[IsEmpty(x) : x in not_in_I];
	d +:= 1;
    end while;
    X := Curve(ProjectiveSpace(R),I);
    return X, fs, K;
end function;
