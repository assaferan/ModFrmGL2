import "ModSym/linalg.m" : Restrict;
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

function get_qexpansion_basis(M, W, prec)
    als := [AtkinLehner(M,w) : w in W];
    S := CuspidalSubspace(M);
    V := &meet([VectorSpace(S)] cat [Eigenspace(al,1) : al in als]);
    D := NewformDecomposition(S);
    D_V := [d : d in D | Dimension(VectorSpace(d) meet V) gt 0];
    Qq<q> := PowerSeriesRing(Rationals());
    qexp_basis := [Qq | ];
    for d in D_V do
	d_old := AssociatedNewSpace(d);
	M_old := AmbientSpace(d_old);
	f := qEigenform(d_old,prec);
	v := d_old`eigen;
	K := BaseRing(v);
	if Degree(K) gt 1 then
	    L := NormalClosure(K);
	    gal_rel, aut_rel, psi_rel := AutomorphismGroup(L,K);
	    gal, aut, psi := AutomorphismGroup(L);
	    coset_reps := Transversal(gal ,gal_rel);
	    gal := [psi(x) : x in coset_reps];
	    K := L;
	else
	    gal := Automorphisms(K);
	end if;
	R<qK> := PowerSeriesRing(K);
	f := R!f;
	v := ChangeRing(v, K);
	v_orb := AssociativeArray();
	f_orb := AssociativeArray();
	for sig in gal do
	    v_orb[sig] := Vector([sig(x) : x in Eltseq(v)]);
	    f_orb[sig] := Parent(f)![sig(x) : x in AbsEltseq(f)]
			  + O(qK^prec);
	end for;
	divs := Divisors(Level(d) div Level(d_old));
	iotas := AssociativeArray(divs);
	vs := AssociativeArray(divs);
	d_K := ChangeRing(DualVectorSpace(d), K);
	B := BasisMatrix(d_K);
	for a in divs do
	    iotas[a] := Transpose(DegeneracyMatrix(M,M_old,a));
	    vs[a] := AssociativeArray();
	    for sig in gal do
		vs[a][sig] := Solution(B, v_orb[sig] * ChangeRing(iotas[a], K));
	    end for;
	end for;
	basis := Matrix(&cat[[vs[a][sig] : sig in gal] : a in divs]);
	al_K := [ChangeRing(DualAtkinLehner(d, w), K) : w in W];
	al_mats := [Solution(basis, basis*al) : al in al_K];
	fixed := &meet([VectorSpace(K, Dimension(d_K))] cat
		       [Eigenspace(mat,1) : mat in al_mats]);
	fs := &cat[[a * Evaluate(f_orb[sig], qK^a)
		    + O(qK^prec) : sig in gal]
		   : a in divs];
	fixed_fs := [&+[b[i]*fs[i] : i in [1..#fs]] : b in Basis(fixed)];
	xi := K.1;
	gal_orbs := [[Parent(g)![(&+[sig(xi^i*x) : sig in gal])
				 : x in AbsEltseq(g)] + O(qK^prec)
		      : i in [0..Degree(K)-1]] : g in fixed_fs];
	new_qexps := &cat gal_orbs;
	mat := Matrix([AbsEltseq(f) : f in new_qexps]);
	basis := Basis(RowSpace(mat));
	qexp_basis cat:= [Qq!Eltseq(b) + O(q^prec) : b in basis];
    end for;
    return qexp_basis;
end function;
