import "ModSym/operators.m" : ActionOnModularSymbolsBasis;
import "ModSym/qexpansion.m" : EigenvectorModSymSign,
       get_eigenvector_galois_orbit,
       get_eigenform_galois_orbit;
import "ModSym/linalg.m" : Restrict;
import "ModSym/modsym.m" : get_degeneracy_reps;

// Here we try to use the GL2 action on X(p) to get q-expansions of eigenforms
// of weight 2 (differentials) so we can get an equation
function get_ns_qexp(N, prec : plus := false)
    G := GL(2,Integers(N));
    M := ModularSymbols(CongruenceSubgroup(N),2, Rationals(),0);
    S := CuspidalSubspace(M);
    Z := Center(G);
    PG, quo_G := G / Z;
    G0 := SL(2, Integers(N));
    PG0 := G0 @ quo_G;
    gens := GeneratorsSequence(PG0);
    quo_G0 := hom< G0 -> PG0 | [quo_G(x) : x in GeneratorsSequence(G0)]>;
    gens_seq := [Eltseq(FindLiftToSL2(g @@ quo_G0)) : g in gens];
    gen_mats := [ActionOnModularSymbolsBasis(g, M) : g in gens_seq];
    gen_mats_tr := [Transpose(g) : g in gen_mats];
    cusp_forms_space := DualVectorSpace(S);
    gens_rest := [Restrict(x, cusp_forms_space) : x in gen_mats_tr];
    Omega := GModule(PG0, gens_rest);
    Omega_PG := Induction(Omega, PG);
    if plus then
	T_prime := ImageInLevelGL(GammaNSplus(N));
    else
	T_prime := ImageInLevelGL(GammaNS(N));
    end if;
    vprintf ModularSymbols, 1:
	"Restricting the representation to the subgroup...\n";
    Omega_T_prime := Restriction(Omega_PG,quo_G(T_prime));
    vprintf ModularSymbols, 1: "Done.\n";
    t_primes := [Representation(Omega_T_prime)(g) :
		 g in Generators(quo_G(T_prime))];
    T_prime_inv := &meet[Kernel(n-1) : n in t_primes];
    proj_basis := [Vector(Eltseq(x)[1..Dimension(S)]) :
		   x in Basis(T_prime_inv)];
    B := BasisMatrix(cusp_forms_space);
    T_prime_proj := sub<cusp_forms_space | [b*B : b in proj_basis]>;
    
    D := NewformDecomposition(S);

    qexpansions := [PowerSeriesRing(Rationals())|];
    eig_plus_big_basis := [];
    eig_minus_big_basis := [];
    // r_max := 2;
    // Ts := [[* *] : r in [1..r_max]];
    companion_matrices := [* *];
    K<zeta> := CyclotomicField(N);
    _<q> := PowerSeriesRing(K);
    
    for d in D do
	f := qEigenform(d, prec);
	R := Parent(f);
	q_R := R.1;
	F := BaseRing(R);
	deg := Degree(F);
	alpha := PrimitiveElement(F);
	d_old := AssociatedNewSpace(d);
	ev_plus := EigenvectorModSymSign(d_old,1);
	ev_minus := EigenvectorModSymSign(d_old,-1);
	// Forcing magma to admit they are over the same field
	assert IsIsomorphic(BaseRing(ev_minus), F);
	N1 := CuspWidth(LevelSubgroup(d_old), Infinity());
	N2 := CuspWidth(LevelSubgroup(d), Infinity());
	divisors := Divisors(N1 mod N2 eq 0
			     select N1 div N2 else N2 div N1);
	divisors := get_degeneracy_reps(d_old, d, divisors);
	for a in divisors do
	    mat := DegeneracyMatrix(AmbientSpace(d),AmbientSpace(d_old),a);
	    f_a := Evaluate(f, q_R^a[1,1]);
	    qexpansions cat:= [&+[Trace(alpha^i * Coefficient(f_a,j)) * q^j :
				  j in [1..prec-1]] : i in [0..Degree(F)-1]];
	    eig_plus_big_basis cat:= [Vector([Trace(alpha^i * x) :
				x in Eltseq(ev_plus)]) * Transpose(mat)  :
				      i in [0..Degree(F)-1]];
	    eig_minus_big_basis cat:= [Vector([Trace(alpha^i * x) :
				x in Eltseq(ev_minus)]) * Transpose(mat)  :
				       i in [0..Degree(F)-1]];
	    /*
	    for r in [1..r_max] do
		T := Matrix([[Trace(alpha^(i+j) * Coefficient(f_a, r)) :
			      j in [0..deg-1]] : i in [0..deg-1]]);
		Append(~Ts[r], T);
	    end for;
	    Append(~companion_matrices,
		   CompanionMatrix(MinimalPolynomial(alpha)));
	   */
	end for;
    end for;

    // This matrix is for untangling the linear relations created
    // when taking rational bases via traces
    //T := [Matrix(BlockDiagMat(<x : x in Ts[r]>)) : r in [1..r_max]];
    // Duplicating - for plus and minus !!! verify
    //T := [DirectSum(t,t) : t in T];

    Ts := [DiagonalMatrix(Rationals(), [Trace(Coefficient(f,n)) :
				      f in qexpansions]) : n in [1..prec-1]];
    Ts := [DirectSum(T,T) : T in Ts];
    cusp_basis := BasisMatrix(cusp_forms_space);
    eig_plus_in_cusp := Solution(cusp_basis, Matrix(eig_plus_big_basis));
    eig_minus_in_cusp := Solution(cusp_basis, Matrix(eig_minus_big_basis));
    eig_in_cusp := VerticalJoin([eig_plus_in_cusp, eig_minus_in_cusp]);
    u := Transpose(ActionOnModularSymbolsBasis([1,1,0,1], M));
    u_act := eig_in_cusp * Restrict(u, cusp_forms_space);
    u_action_a := Solution(eig_in_cusp, u_act);
    u_action_K := ChangeRing(Matrix(u_action_a),K);
    n_invs := [];
    for n in [1..prec-1] do
	d, n_inv, _ := XGCD(n,N);
	// if d eq 1 then Append(~idxs, n); end if;
	if d eq 1 then
	    Append(~n_invs, n_inv);
	else
	    Append(~n_invs, n);
	end if;
    end for;
    mats := [(u_action_K - zeta^n_invs[n]) * Ts[n] : n in [1..prec-1]];
    coeff_space := &meet [Kernel(mat) : mat in mats];

    // Here we assume this space is one-dimensional
    // If not should add here equations for the other coefficients.
    // (increase r_max)
    // Problem : This is not one dimensional!
    // assert Dimension(coeff_space) eq 1;
    // coeffs := Basis(coeff_space)[1];

    coeffs := &+[b : b in Basis(coeff_space)];
    
    star := DualStarInvolution(M);
    T_prime_plus := Kernel(star-1) meet T_prime_proj;
    qexps := [];
    for vec in Basis(T_prime_plus) do
	vec_in_terms_of_eig_plus :=
	    Solution(Matrix(eig_plus_big_basis), vec);
	v := ChangeRing(vec_in_terms_of_eig_plus, K);
	vec_qexp := &+[v[i]*coeffs[i]*qexpansions[i] :
		       i in [1..#qexpansions]];
	Append(~qexps, vec_qexp);
    end for;
    return qexps;
end function;

procedure verify_linear_U_relation(U, u, D, eig_plus_basis, eig_minus_basis)
    KL := BaseRing(U);
    g := Nrows(U) div 2;
    Uplusplus := Submatrix(U, [1..g], [1..g]);
    Uplusminus := Submatrix(U, [1..g], [g+1..2*g]);
    Uminusplus := Submatrix(U, [g+1..2*g], [1..g]);
    Uminusminus := Submatrix(U, [g+1..2*g], [g+1..2*g]);
    dims := [Dimension(d) div 2 : d in D];
    dimsum := [&+dims[1..i] : i in [0..#D]];
    Uplusplus_D := [[*Submatrix(Uplusplus, [dimsum[b]+1..dimsum[b+1]], 
				[dimsum[b_prime]+1..dimsum[b_prime+1]]) :
		     b_prime in [1..#D] *] : b in [1..#D]];
    Uplusminus_D := [[*Submatrix(Uplusminus, [dimsum[b]+1..dimsum[b+1]], 
				 [dimsum[b_prime]+1..dimsum[b_prime+1]]) :
		      b_prime in [1..#D] *] : b in [1..#D]];
    Uminusplus_D := [[*Submatrix(Uminusplus, [dimsum[b]+1..dimsum[b+1]], 
				 [dimsum[b_prime]+1..dimsum[b_prime+1]]) :
		      b_prime in [1..#D] *] : b in [1..#D]];
    Uminusminus_D := [[*Submatrix(Uminusminus, [dimsum[b]+1..dimsum[b+1]], 
				  [dimsum[b_prime]+1..dimsum[b_prime+1]]) :
		       b_prime in [1..#D] *] : b in [1..#D]];
    for b in [1..#D] do
	for sig in [1..dims[b]] do
	    plus_part := &+[&+[Uplusplus_D[b][b_prime][sig, sig_prime]*
			       ChangeRing(eig_plus_basis[b_prime][sig_prime],KL)
			       : sig_prime in [1..dims[b_prime]]] :
			    b_prime in [1..#D]];
	    minus_part := &+[&+[Uplusminus_D[b][b_prime][sig, sig_prime]*
				ChangeRing(eig_minus_basis[b_prime][sig_prime],
					   KL) : sig_prime in
						 [1..dims[b_prime]]] :
			     b_prime in [1..#D]];
	    assert plus_part + minus_part eq ChangeRing(eig_plus_basis[b][sig],
							KL) * ChangeRing(u,KL);
	    plus_part := &+[&+[Uminusplus_D[b][b_prime][sig, sig_prime]*
			       ChangeRing(eig_plus_basis[b_prime][sig_prime],KL)
			       : sig_prime in [1..dims[b_prime]]] :
			    b_prime in [1..#D]];
	    minus_part := &+[&+[Uminusminus_D[b][b_prime][sig, sig_prime]*
				ChangeRing(eig_minus_basis[b_prime][sig_prime],
					   KL) : sig_prime in
						 [1..dims[b_prime]]] :
			     b_prime in [1..#D]];
	    assert plus_part + minus_part eq ChangeRing(eig_minus_basis[b][sig],
							KL) * ChangeRing(u,KL);
	end for;
    end for;
end procedure;

// Finds the coefficients giving the eigenvectors in terms of the eigenforms
// This is slow, but at least works for N = 7...
// The reason it is slow is that we don't work over QQ to simplify the
// linear algebra

function IsCompatibleChar(M1, M2)
    eps1 := DirichletCharacter(M1);
    eps2 := DirichletCharacter(M2);
    return
	IsCoercible(Parent(eps1), eps2) and (Parent(eps1)!eps2 eq eps1); 
end function;

// TODO : support arbitrary weight (Q^(k/2)-1). Right now k = 2
function getALpseudoEigenvaluePrimary(f, eps, Q)
    N := Modulus(eps);
    assert GCD(Q, N div Q) eq 1;
    eps_dec := Decomposition(eps);
    assert exists(eps_Q){eps_Q : eps_Q in eps_dec | Modulus(eps_Q) eq Q};
    if Q eq N then
	eps_NQ := DirichletGroup(1)!1;
    else
	eps_NQ := &*[eps_d : eps_d in eps_dec | eps_d ne eps_Q];
    end if;
   
    g := IsTrivial(eps_Q) select -1 else GaussSum(eps_Q);
    fac := Factorization(Q);
    assert #fac eq 1;
    q := fac[1][1];
    e := fac[1][2];
    if Coefficient(f, q) ne 0 then
	return g / Coefficient(f,q);
    end if;
    // Here we have to check if f is q-primitive,
    // otherwise get information from the twists
    if Conductor(eps_Q)^2 gt Q then
	is_primitive := false;
    elif IsOdd(e) then
	is_primitive := true;
    elif q eq 2 then
	if Conductor(eps_Q)^2 eq Q then
	    is_primitive := true;
	elif e ge 4 then
	    is_primitive := false;
	elif e eq 2 and IsTrivial(eps_Q) then
	    is_primitive := true;
	    return -eps_NQ(q)^(-1);
	end if;
    end if;
    // At the moment assert q-primitivity here. Later tackle that
    // assert is_primitive;
    fac := Factorization(Conductor(eps_Q));
    if IsEmpty(fac) then
	alpha := 0;
    else
	alpha := fac[1][2];
    end if;
    X := DirichletGroupFull(q^(e-1));
    K := CyclotomicField(Q * EulerPhi(Q));
    R<[lambda]> := PolynomialRing(K,#X);
    chars := Elements(X);
    conds := AssociativeArray(chars);
    rev_inds := AssociativeArray(chars);
    for j in [1..#X] do
	chi := chars[j];
	conds[chi] := IsTrivial(chi) select q else Conductor(chi);
	rev_inds[chi] := j; 
    end for;
    rels := [];
    for j in [1..#X] do
	chi := chars[j];
	beta := Factorization(conds[chi])[1][2];
	Q_double_prime := q^Maximum([e, alpha-beta+e, 2*(e-beta)]);
	// see Proposition 4.5 in [Atkin-Li]
	lhs := GaussSum(chi^(-1)) * lambda[j];
	rhs_num := chi(-1) * eps_NQ(Q div q^beta) * eps_Q(-1);
	rhs_denom := (Q_double_prime div Q) * EulerPhi(Q div q^beta);
	chi1s := [chi1 : chi1 in chars |
		  conds[chi1] eq Q div q^beta and
		  conds[chi * eps_Q * chi1] eq Q_double_prime * q^beta div Q];
	rhs_sum := &+[GaussSum(chi1)*GaussSum(chi*eps_Q*chi1)
		      *lambda[rev_inds[eps_Q^(-1) * chi1^(-1)]] : chi1 in chi1s];
	rhs := rhs_num / rhs_denom * lambda[1] * rhs_sum;
	Append(~rels, lhs - rhs);
	if conds[chi]^2 le Q then
	    lhs := lambda[j]*lambda[rev_inds[eps_Q^(-1) * chi^(-1)]];
	    rhs := eps_NQ(Q)^(-1) * eps_Q(-1);
	    Append(~rels, lhs-rhs);
	end if;
    end for;
    I := ideal<R | rels>;
    X := Variety(I); 
    return X[1][rev_inds[1]];					
end function;

function getALpseudoEigenvalue(f, eps, q)
    fac := Factorization(q);
    if IsEmpty(fac) then
	return 1;
    end if;
    // using Prop. 1.4 from [Atkin-Li]
    Q := fac[1][1]^fac[1][2];
    Q_prime := q div Q;
    eps_dec := Decomposition(eps);
    assert exists(eps_Q){eps_Q : eps_Q in eps_dec | Modulus(eps_Q) eq Q};
    Q_prime_comps := [eps_d : eps_d in eps_dec | Q_prime mod Modulus(eps_d) eq 0];
    if IsEmpty(Q_prime_comps) then
	eps_Q_prime := DirichletGroup(Q_prime)!1;
    else
	eps_Q_prime := &*Q_prime_comps;
    end if;
    
    eps_G := eps_Q^(-1) * eps_Q_prime;
    R<q> := Parent(f);
    G := R!0;
    k := 2;
    prec := AbsolutePrecision(f);
    for n in [1..prec-1] do
	if n eq 1 then
	    bn := 1;
	elif IsPrime(n) then
	    if Q mod n eq 0 then
		bn := eps_Q_prime(n)*ComplexConjugate(Coefficient(f,n));
	    else
		bn := eps_Q(n)^(-1)*Coefficient(f,n);
	    end if;
	else
	    fac := Factorization(n); 
            if #fac eq 1 then
		// a_{p^r} := a_p * a_{p^{r-1}} - eps(p)p^{k-1} a_{p^{r-2}}.
		p  := fac[1][1];
		r  := fac[1][2];
		eps_p := Evaluate(eps_G,p);
		bn := Coefficient(G,p) * Coefficient(G,p^(r-1))
                      - eps_p*p^(k-1)*Coefficient(G,p^(r-2));
            else  // a_m*a_r := a_{mr} and we know all a_i for i<n.
		m  := fac[1][1]^fac[1][2];
		bn := Coefficient(G,m)*Coefficient(G,n div m);
            end if; 
	end if;
	G +:= bn * q^n;
    end for;
   
    lamda_Q := getALpseudoEigenvaluePrimary(f, eps, Q);
    lamda_Q_prime := getALpseudoEigenvalue(G, eps_G, Q_prime);
    return lamda_Q * lamda_Q_prime * eps_Q_prime(Q);
end function;

function getEigenformAndVectors(d, prec)
    f := qEigenform(d, prec);
    R := Parent(f);
    // q_R := R.1;
    F := AbsoluteField(BaseRing(R));
    // Append(~fields, F);
    // aut := Automorphisms(F);
    gal, _, psi := AutomorphismGroup(F, Rationals());
    aut := [psi(g) : g in gal];
    // This is saved to make sure we follow the same order
    // Append(~sigmas, aut);
    ev_plus := EigenvectorModSymSign(d,1);
    ev_minus := EigenvectorModSymSign(d,-1);
    // Forcing magma to admit they are over the same field
    assert IsIsomorphic(BaseRing(ev_plus), F);
    assert IsIsomorphic(BaseRing(ev_minus), F);
    ev_plus := ChangeRing(ev_plus, F);
    ev_minus := ChangeRing(ev_minus, F);
    // Here we find sigma_plus and sigma_minus by observing the eigenvalues
    p := 2;
    sig_plus := aut;
    sig_minus := aut;
    
    while (#sig_plus gt 1) or (#sig_minus gt 1) do
	T_p := ChangeRing(DualHeckeOperator(AmbientSpace(d),p), F);
	a_p := Coefficient(f,p);
	sig_plus := [sigma : sigma in sig_plus |
		     a_p * ApplyAut(sigma, ev_plus) eq
		     ApplyAut(sigma, ev_plus) * T_p];
	sig_minus := [sigma : sigma in sig_minus |
		      a_p * ApplyAut(sigma, ev_minus) eq
		      ApplyAut(sigma, ev_minus) * T_p];
	p := NextPrime(p);
    end while;
    ev_plus := ApplyAut(sig_plus[1], ev_plus);
    ev_minus := ApplyAut(sig_minus[1], ev_minus);
    return f, ev_plus, ev_minus, F, aut;
end function;

function getDualDegeneracyMaps(d, M, ms)
    M_old := AmbientSpace(d);
    betas := [];
    if not IsIdentical(M_old, M) then
	assert exists(i){i : i in [1..#ms] | IsCompatibleChar(ms[i],M_old)};
	M_new := ms[i];
	quo_mat := Matrix([Representation(MultiQuotientMaps(M)[i](x))
			   : x in Basis(M)]);
	quo_lev := Level(M_new) div Level(M_old);
	divs := Divisors(quo_lev);
	for m in divs do
	    dmap := DegeneracyMatrix(M_new, M_old, m);
	    beta := Transpose(dmap) * Transpose(quo_mat);
	    Append(~betas, <beta, m>);
	end for;
    else
	Append(~betas, <IdentityMatrix(BaseRing(d), Dimension(M)), 1>);
    end if;
    return betas;
end function;

function allEigenformsAndVectors(f, ev_plus, ev_minus, betas, F, aut, all_qexps)
    q := Parent(f).1;
    prec := AbsolutePrecision(f);
    qexps := [];
    eig_plus := [];
    eig_minus := [];
    
    for beta in betas do
	mat := ChangeRing(beta[1], F);
	f_a := beta[2]*Evaluate(f, q^beta[2]);
	Append(~qexps, f_a);
	for sigma in aut do
	    Append(~all_qexps, ApplyAut(sigma, f_a));
	    Append(~eig_plus, ApplyAut(sigma,ev_plus)*mat);
	    Append(~eig_minus, ApplyAut(sigma,ev_minus)*mat);
	end for;
    end for;
    return qexps, all_qexps, eig_plus, eig_minus;
end function;

// Here cusp_forms_space in an irreducible constituent of Dual(S)
// (as a subspace of Dual(M))
// and D is the decomposition to irreducible Hecke modules

function find_xi_on_irred_slow(M, eig_basis, qexps, prec)
    L := BaseField(Universe(eig_basis));

    // cusp_space := ChangeRing(cusp_space_orig, L);
    
    Ts := [[Coefficient(f,n): f in qexps] : n in [1..prec-1]];
    Ts := [DiagonalMatrix(t) : t in Ts];

    cusp_space := sub<Universe(eig_basis) | eig_basis>;
    cusp_basis := BasisMatrix(cusp_space);
    eig_in_cusp := Solution(cusp_basis, Matrix(eig_basis));
    
    _, N := IsSquare(Level(M));
    u := Transpose(ActionOnModularSymbolsBasis([N,1,0,N], M));
    
    u_act := eig_in_cusp * Restrict(ChangeRing(u, L), cusp_space);
    u_action_a := Solution(eig_in_cusp, u_act);
    K<zeta> := CyclotomicField(N);
    KL := Compositum(K,L);
    U := ChangeRing(u_action_a, KL);
    // verifying the equations hold
    // verify_linear_U_relation(U, u, D, eig_plus_basis, eig_minus_basis);
    X := [Kernel(ChangeRing(Ts[n],KL) *
		 (Transpose(U) -
		  ScalarMatrix(KL,Dimension(cusp_space),zeta^n))) :
	  n in [1..prec-1]];
    xi :=  &meet X;
    // get Atkin-Lehner equations
    w := Transpose(ActionOnModularSymbolsBasis([0,-1,N^2,0], M));
    w := ChangeRing(w, BaseRing(Universe(eig_basis)));
    w_eqs := [];
    /*
    for j in [1..#eig_basis] do
	v := eig_basis[j];
	f := qexps[j];
	N_old := Level(D[j]);
	eps := DirichletCharacter(D[j]);
	g := IsTrivial(eps) select -1 else GaussSum(eps);
	// Check here what happens for oldforms - do we need to change anything?
	// The Atkin-Lehner pseudo-eigenvalue in the original space
	
	if Coefficient(f, N_old) ne 0 then
	    al_pseudo := g / Coefficient(f, N_old);
	    w_v := Solution(Matrix(eig_basis), v * w);
	    lam := &+Eltseq(w_v);
	    e_j := Solution(Matrix(eig_basis), v);
	    // equat := lam * e_j - ((N^2 div N_old) * al_pseudo / lam) * w_v;
	    equat := Coefficient(f, N_old) * lam * e_j - ((N^2 div N_old) * g / lam) * w_v;
	    Append(~w_eqs, equat);
	end if;
    end for;
    */
    if not IsEmpty(w_eqs) then
	Y := Kernel(Matrix(w_eqs));
	xi meet:= Y;
    end if;
    return &+Basis(xi);
end function;

// This should be something one does with M!!A, actually
function getDualNewspaceImage(M,A)
    ms := MultiSpaces(M);
    M_old := AmbientSpace(A);
    if IsIdentical(M_old, M) then
	return DualVectorSpace(A);
    end if;
    assert exists(i){i : i in [1..#ms] | IsCompatibleChar(ms[i],M_old)};
    M_new := ms[i];
    quo_mat := Matrix([Representation(MultiQuotientMaps(M)[i](x))
		       : x in Basis(M)]);
    quo_lev := Level(M_new) div Level(M_old);
    divs := Divisors(quo_lev);
    im_A := sub<DualVectorSpace(M) | >;
    for m in divs do
	dmap := DegeneracyMatrix(M_new, M_old, m);
	beta := Transpose(dmap) * Transpose(quo_mat);
	im_A +:= DualVectorSpace(A) * beta;
    end for;

    return im_A;
end function;

/*
function getIrreducibleFactor(V)
    A := V;
    basis := BasisMatrix(VectorSpace(A));
    while not IsIrreducible(A) do
	A,_,T := Meataxe(A);
	basis := Matrix(T[1..Dimension(A)]) * basis;
    end while;
    return sub<VectorSpace(V)|Rows(basis)>;
end function;
*/

function decompose(V, im_D)
    irred_spaces := [];
    irred_D := [];
    for idx in [1..#im_D] do
	d := im_D[idx];
	F := BaseRing(Universe(im_D[idx]));
	V_F := ChangeRing(V,F);
	W := sub<V_F|im_D[idx]>;
	d_vec := sub<VectorSpace(V_F) | d>;

	fields := [* Compositum(BaseRing(d_vec), BaseRing(irr)) : irr in irred_spaces *];
	covered := exists(j){j : j in [1..#irred_spaces] |
			     //BaseRing(d_vec) eq BaseRing(irred_spaces[j]) and
			     ChangeRing(d_vec, fields[j]) subset
				       ChangeRing(irred_spaces[j], fields[j])};
	if covered then
	    Append(~irred_D[j], idx);
	else
	    irrs := DirectSumDecomposition(W);
	    irreps := [sub<VectorSpace(V_F) | Rows(Morphism(irr,W)*Morphism(W,V_F))>
		       : irr in irrs];
	    incidence := [d_vec subset irr select [idx] else [] : irr in irreps];
	    irred_spaces cat:= irreps;
	    irred_D cat:= incidence;
	end if;
    end for;
    irred_spaces := [irred_spaces[idx] : idx in [1..#irred_spaces] |
		     not IsEmpty(irred_D[idx])];
    irred_D := [irr : irr in irred_D | not IsEmpty(irr)];
    return irred_spaces, irred_D;
end function;

function get_fs_vecs_slow(N, prec)
    M := ModularSymbols(CongruenceSubgroup(N));
    S := CuspidalSubspace(M);
    g := Dimension(S) div 2;
    D := NewformDecomposition(S);
    cusp_forms_space := DualVectorSpace(S);
    // generators for the group action
    u := [1,1,0,1];
    w := [0,-1,1,0];
    G := sub<SL(2, Integers(N)) | [u,w]>;
    u_M := Transpose(ActionOnModularSymbolsBasis([N,1,0,N], M));
    w_M := Transpose(ActionOnModularSymbolsBasis([0,-1,N^2,0], M));
    u_S := Restrict(u_M, cusp_forms_space);
    w_S := Restrict(w_M, cusp_forms_space);
    Omega := GModule(G, [u_S, w_S]);
    // at the moment ignore multiplicities. Later can decompose ad hoc using the
    // generators
    all_qexps := [* *];
    eig_plus_basis := [* *];
    eig_minus_basis := [* *];
    
    for d in D do
	f, ev_plus, ev_minus, F, aut := getEigenformAndVectors(d, prec);
	
	betas := getDualDegeneracyMaps(d, M, MultiSpaces(M));

	_, all_qexps, eig_plus, eig_minus := allEigenformsAndVectors(f, ev_plus,
								     ev_minus,
								     betas, F, aut,
								     all_qexps);
	for i in [1..#eig_plus] do
	    Append(~eig_plus_basis, eig_plus[i]);
	end for;
	for i in [1..#eig_minus] do
	    Append(~eig_minus_basis, eig_minus[i]);
	end for;
    end for;
    eig_basis := eig_plus_basis cat eig_minus_basis;
    im_D := [*Rows(Solution(ChangeRing(BasisMatrix(cusp_forms_space),
				       BaseRing(v)), v)) : v in eig_basis*];
    irred_subs, irred_D := decompose(Omega, im_D);
    irred_qexps := [* [all_qexps[(idx - 1) mod g + 1] : idx in irr] : irr in irred_D *];
    irred_D := [*[eig_basis[idx]: idx in irr] : irr in irred_D *];
    irred_subs := [irr*ChangeRing(BasisMatrix(cusp_forms_space), BaseRing(irr))
		   : irr in irred_subs];
    xis := [* *];
    eigs := [* *];
    qexps := [* *];
    for idx in [1..#irred_D] do
	xi := find_xi_on_irred_slow(M, irred_D[idx], irred_qexps[idx], prec);
	Append(~xis, xi);
	Append(~eigs, irred_D[idx]);
	Append(~qexps, irred_qexps[idx]);
    end for;
    fs_pm := [*[xis[j][i]^(-1) * ChangeRing(eigs[j][i],BaseRing(xis[j]))
		: i in [1..Degree(xis[j])]] : j in [1..#xis] *];
    // We assume here that the indices were sorted and we had an equal
    // number of pluses and minuses in every irreducible piece
    B := [*[vs[i] + vs[i + #vs div 2] : i in [1..#vs div 2]] : vs in fs_pm*];
    F := [* fs[1..#fs div 2] : fs in qexps*];
    return B, F;
end function;  

function find_xi_slow(N, prec)
    G := GL(2,Integers(N));
    M := ModularSymbols(PSL2Subgroup(sub<G|[-1,0,0,-1]>),2, Rationals(),0);
    S := CuspidalSubspace(M);
    D := NewformDecomposition(S);
    
    cusp_forms_space := DualVectorSpace(S);

    qexpansions := [* *];
    eig_plus_basis := [* *];
    eig_minus_basis := [* *];
    fields := [* *];
    sigmas := [* *];
    all_qexps := [* *];
    
    for d in D do
	f := qEigenform(d, prec);
	R := Parent(f);
	q_R := R.1;
	F := BaseRing(R);
	Append(~fields, F);
	aut := Automorphisms(F);
	// This is saved to make sure we follow the same order
	Append(~sigmas, aut);
	deg := Degree(F);
	alpha := PrimitiveElement(F);
	d_old := AssociatedNewSpace(d);
	ev_plus := EigenvectorModSymSign(d_old,1);
	ev_minus := EigenvectorModSymSign(d_old,-1);
	// Forcing magma to admit they are over the same field
	assert IsIsomorphic(BaseRing(ev_minus), F);
	ev_minus := ChangeRing(ev_minus, F);
	// Here we find sigma_plus and sigma_minus by observing the eigenvalues
	p := 2;
	sig_plus := aut;
	sig_minus := aut;
	
	while (#sig_plus gt 1) or (#sig_minus gt 1) do
	    T_p := ChangeRing(DualHeckeOperator(AmbientSpace(d_old),p), F);
	    a_p := Coefficient(f,p);
	    sig_plus := [sigma : sigma in sig_plus |
			 //		 sigma(a_p)*ev_plus eq ev_plus * T_p];
			 a_p * ApplyAut(sigma, ev_plus) eq
			 ApplyAut(sigma, ev_plus) * T_p];
	    sig_minus := [sigma : sigma in sig_minus |
			  //			  sigma(a_p)*ev_minus eq ev_minus * T_p];
			  a_p * ApplyAut(sigma, ev_minus) eq
			  ApplyAut(sigma, ev_minus) * T_p];
	    p := NextPrime(p);
	end while;
	ev_plus := ApplyAut(sig_plus[1], ev_plus);
	ev_minus := ApplyAut(sig_minus[1], ev_minus);
	// N1 := CuspWidth(LevelSubgroup(d_old), Infinity());
	// N2 := CuspWidth(LevelSubgroup(d), Infinity());
	N1 := Level(d_old);
	N2 := Level(d);
	divisors := Divisors(N1 mod N2 eq 0
			     select N1 div N2 else N2 div N1);
//	divisors := Divisors(Level(d));
	divisors := get_degeneracy_reps(d_old, d, divisors);
	qexps := [];
	eig_plus := [];
	eig_minus := [];
	for a in divisors do
	    mat := DegeneracyMatrix(AmbientSpace(d),AmbientSpace(d_old),a);
	    mat := ChangeRing(Transpose(mat), F);
	    f_a := Evaluate(f, q_R^(Level(d) div (Level(d_old)*Integers()!a[1,1])));
	    Append(~qexps, f_a);
	    for sigma in aut do
		sig_f_a :=
		    &+[sigma(Coefficient(f_a,i))*q_R^i :
		       i in [1..prec-1]] + O(q_R^prec);
		sig_ev_plus := Vector([sigma(x) : x in Eltseq(ev_plus)]);
		sig_ev_minus:= Vector([sigma(x) : x in Eltseq(ev_minus)]);
		Append(~all_qexps, sig_f_a);
		Append(~eig_plus, sig_ev_plus*mat);
		Append(~eig_minus, sig_ev_minus*mat);
	    end for;
	end for;
	Append(~qexpansions, qexps);
	Append(~eig_plus_basis, eig_plus);
	Append(~eig_minus_basis, eig_minus);
    end for;
    Ts_plus := [[* &cat[[sigma(Coefficient(f,n))
			: f in qexpansions[b]] : sigma in sigmas[b]]
		 : b in [1..#D] *] : n in [1..prec-1]];
    Ts_minus := [[* &cat[[sigma(Coefficient(f,n))
			: f in qexpansions[b]] : sigma in sigmas[b]]
		: b in [1..#D] *] : n in [1..prec-1]];
    L := fields[1];
    for F in fields[2..#D] do
	L := Compositum(L, F);
    end for;
    all_qexps := [PowerSeriesRing(L)!f : f in all_qexps];
    eig_plus_big_basis := &cat[[ChangeRing(eig, L) : eig in eigs] :
			eigs in eig_plus_basis ];
    eig_minus_big_basis := &cat[[ChangeRing(eig, L) : eig in eigs] :
			       eigs in eig_minus_basis ];
    Ts_plus_all := [&cat [[L!y : y in x] : x in t] : t in Ts_plus];
    Ts_plus_all := [DiagonalMatrix(t) : t in Ts_plus_all];
    Ts_minus_all := [&cat [[L!y : y in x] : x in t] : t in Ts_minus];
    Ts_minus_all := [DiagonalMatrix(t) : t in Ts_minus_all];
    Ts := [DirectSum(Ts_plus_all[i], Ts_minus_all[i]) : i in [1..prec-1]];
    cusp_basis := ChangeRing(BasisMatrix(cusp_forms_space), L);
    eig_plus_in_cusp := Solution(cusp_basis, Matrix(eig_plus_big_basis));
    eig_minus_in_cusp := Solution(cusp_basis, Matrix(eig_minus_big_basis));
    eig_in_cusp := VerticalJoin([eig_plus_in_cusp, eig_minus_in_cusp]);
    u := Transpose(ActionOnModularSymbolsBasis([1,1/N,0,1], M));
    u_act := eig_in_cusp * Restrict(ChangeRing(u, L), cusp_forms_space);
    u_action_a := Solution(eig_in_cusp, u_act);
    K<zeta> := CyclotomicField(N);
    KL := Compositum(K,L);
    U := ChangeRing(u_action_a, KL);
    // verifying the equations hold
    verify_linear_U_relation(U, u, D, eig_plus_basis, eig_minus_basis);
    // This is something very weird that turned out -
    // In N = 7, the coefficient of q^2 was multiplied by zeta^4 and not by
    // zeta^2 as I thought it would.
    // Maybe the action is not the natural action I suspected !?
    // idxs := [];
    n_invs := [];
    for n in [1..prec-1] do
	d, n_inv, _ := XGCD(n,N);
	// if d eq 1 then Append(~idxs, n); end if;
	if d eq 1 then
	    Append(~n_invs, n_inv);
	else
	    Append(~n_invs, n);
	end if;
    end for;
    X := [Kernel(ChangeRing(Ts[n],KL) *
		 (Transpose(U) -
		  ScalarMatrix(KL,Dimension(S),zeta^(n_invs[n])))) :
		 n in [1..prec-1]];
    xi :=  &meet X;
    return xi, eig_plus_big_basis cat eig_minus_big_basis, all_qexps;
end function;

// TODO : work modulo large primes for faster linear algebra

function find_xi(N, prec)
    QQ := Rationals();
    G := GL(2,Integers(N));
    M := ModularSymbols(PSL2Subgroup(sub<G|[-1,0,0,-1]>),2, Rationals(),0);
    S := CuspidalSubspace(M);
    D := NewformDecomposition(S);
    
    cusp_forms_space := DualVectorSpace(S);

    R<q> := PowerSeriesRing(QQ);
    all_qexps := [R|];
    eig_plus_basis := [cusp_forms_space | ];
    eig_minus_basis := [cusp_forms_space | ];
    companion_matrices := [];
    trace_matrices := [* *];
    comp_mats := [* *];
    degrees := [];
    for d in D do
	f := qEigenform(d, prec);
	R := Parent(f);
	q_R := R.1;
	F := BaseRing(R);
	aut := Automorphisms(F);
	deg := Degree(F);
	alpha := PrimitiveElement(F);
	comp_mat := CompanionMatrix(MinimalPolynomial(alpha));
	traces := Matrix([[Trace(alpha^(i+j)) : i in [0..deg-1]]
			  : j in [0..deg-1]]);
	d_old := AssociatedNewSpace(d);
	ev_plus := EigenvectorModSymSign(d_old,1);
	ev_minus := EigenvectorModSymSign(d_old,-1);
	// Forcing magma to admit they are over the same field
	assert IsIsomorphic(BaseRing(ev_minus), F);
	ev_minus := ChangeRing(ev_minus, F);
	// Here we find sigma_plus and sigma_minus by observing the eigenvalues
	p := 2;
	sig_plus := aut;
	sig_minus := aut;
	
	while (#sig_plus gt 1) or (#sig_minus gt 1) do
	    T_p := ChangeRing(DualHeckeOperator(AmbientSpace(d_old),p), F);
	    a_p := Coefficient(f,p);
	    sig_plus := [sigma : sigma in sig_plus |
			 //		 sigma(a_p)*ev_plus eq ev_plus * T_p];
			 a_p * ApplyAut(sigma, ev_plus) eq
			 ApplyAut(sigma, ev_plus) * T_p];
	    sig_minus := [sigma : sigma in sig_minus |
			  //			  sigma(a_p)*ev_minus eq ev_minus * T_p];
			  a_p * ApplyAut(sigma, ev_minus) eq
			  ApplyAut(sigma, ev_minus) * T_p];
	    p := NextPrime(p);
	end while;
	ev_plus := ApplyAut(sig_plus[1], ev_plus);
	ev_minus := ApplyAut(sig_minus[1], ev_minus);
	// N1 := CuspWidth(LevelSubgroup(d_old), Infinity());
	// N2 := CuspWidth(LevelSubgroup(d), Infinity());
	N1 := Level(d_old);
	N2 := Level(d);
	divisors := Divisors(N1 mod N2 eq 0
			     select N1 div N2 else N2 div N1);
	divisors := get_degeneracy_reps(d_old, d, divisors);
	for a in divisors do
	    mat := DegeneracyMatrix(AmbientSpace(d),AmbientSpace(d_old),a);
	    f_a := Evaluate(f, q_R^(N2 div (N1 * Integers()!a[1,1])));
	    all_qexps cat:= [&+[Trace(alpha^i * Coefficient(f_a,j)) * q^j :
				  j in [1..prec-1]] : i in [0..Degree(F)-1]];
	    eig_plus_basis cat:= [Vector([Trace(alpha^i * x) :
				x in Eltseq(ev_plus)]) * Transpose(mat)  :
				      i in [0..Degree(F)-1]];
	    eig_minus_basis cat:= [Vector([Trace(alpha^i * x) :
				x in Eltseq(ev_minus)]) * Transpose(mat)  :
				   i in [0..Degree(F)-1]];
	    f_a_coeffs := [Eltseq(Coefficient(f_a, n)) : n in [1..prec-1]];
	    companion := [* &+[f_a_coeff[i] * comp_mat^(i-1)
			       : i in [1..#f_a_coeff]]
			  : f_a_coeff in f_a_coeffs*];
	    Append(~companion_matrices, companion);
	    Append(~comp_mats, comp_mat);
	    Append(~trace_matrices, traces);
	    Append(~degrees, deg);
	end for;
    end for;
    Ts := [];
    for n in [1..prec-1] do
	T := KMatrixSpace(Rationals(),0,0)!0;
	for c in companion_matrices do
	    T := DirectSum(T, c[n]);
	end for;
	T := DirectSum(T,T);
	Append(~Ts, Transpose(T));
    end for;

    big_trace_mat := KMatrixSpace(Rationals(),0,0)!0;
    for trace_mat in trace_matrices do
	big_trace_mat := DirectSum(big_trace_mat, trace_mat);
    end for;
    big_trace_mat := DirectSum(big_trace_mat, big_trace_mat);

    cusp_basis := BasisMatrix(cusp_forms_space);
    eig_plus_in_cusp := Solution(cusp_basis, Matrix(eig_plus_basis));
    eig_minus_in_cusp := Solution(cusp_basis, Matrix(eig_minus_basis));
    eig_in_cusp := VerticalJoin([eig_plus_in_cusp, eig_minus_in_cusp]);
    u := Transpose(ActionOnModularSymbolsBasis([1,1,0,1], M));
    u_act := eig_in_cusp * Restrict(u, cusp_forms_space);
    u_action_a := Solution(eig_in_cusp, u_act);
    K<zeta> := CyclotomicField(N);
    U := ChangeRing(u_action_a, K);
    
    n_invs := [];
    for n in [1..prec-1] do
	d, n_inv, _ := XGCD(n,N);
	// if d eq 1 then Append(~idxs, n); end if;
	if d eq 1 then
	    Append(~n_invs, n_inv);
	else
	    Append(~n_invs, n);
	end if;
    end for;
    X := [Kernel(ChangeRing(Ts[n],K) *
		 (Transpose(U) -
		  ScalarMatrix(K,Dimension(S),zeta^(n_invs[n])))) :
		 n in [1..prec-1]];
    xi :=  &meet X;
    alpha := xi * ChangeRing(big_trace_mat^(-1), K);
    degrees cat:= degrees;
    cumsum := [&+degrees[1..d] : d in [0..#degrees]];
    beta := Eltseq(&+[b : b in Basis(alpha)]);
    beta_parts := [beta[cumsum[j]+1..cumsum[j+1]] : j in [1..#degrees]];
    comp_mats cat:= comp_mats;
    companion := [* ChangeRing(&+[ beta_parts[j][i] * comp_mats[j]^(i-1)
			       : i in [1..degrees[j]]], K)
		  : j in [1..#degrees] *];
    mat := KMatrixSpace(K,0,0)!0;
    for comp_mat in companion do
	mat := DirectSum(mat, comp_mat);
    end for;
    return mat, eig_plus_basis cat eig_minus_basis, all_qexps;
end function;

function get_qexp(H, prec)
    N := Level(H);
    G := GL(2,Integers(N));
    M := ModularSymbols(PSL2Subgroup(sub<G|[-1,0,0,-1]>),2, Rationals(),0);
    S := CuspidalSubspace(M);
    // Computing degeneracy map
    M_H := ModularSymbols(H, 2, Rationals(), 0);
    beta := DegeneracyMatrix(M, M_H, GL(2, Rationals())!1);
    S_H := CuspidalSubspace(M_H);
    //    assert T_prime_proj eq DualVectorSpace(S_H) * Transpose(beta);
    oldsub := DualVectorSpace(S_H) * Transpose(beta);
    // xi, eig_big_basis, qexpansions := find_xi_slow(N, prec);
    mat, eig_basis, qexpansions := find_xi(N, prec);
    // coeffs := &+[b : b in Basis(xi)];
    // any element with non-zero entries should do -
    // this is a choice of automorphism of the representation.
    // K := BaseRing(coeffs);
    K := BaseRing(mat);
    eig_basis := [ChangeRing(e, K) : e in eig_basis];
    g := Dimension(S) div 2;
    // fs_0 := [coeffs[i]^(-1) * eig_big_basis[i] : i in [1..2*g]];
    fs_0 := mat^(-1) * Matrix(eig_basis);
    fs := [fs_0[i] + fs_0[i + g] : i in [1..g]];
    hol_subspace := sub<Universe(fs) | fs>;
    old_hol := ChangeRing(oldsub,K) meet hol_subspace;
    qexps := [];
    for vec in Basis(old_hol) do
	// Why was that?
	/*
	v := Solution(Matrix(eig_basis), vec) * mat;
	vec_qexp := &+[v[i]*(PowerSeriesRing(K)!qexpansions[(i-1) mod g + 1]) :
		       i in [1..2*g]];
       */
	v := Solution(Matrix(fs), vec);
	vec_qexp := &+[v[i]*(PowerSeriesRing(K)!qexpansions[i]) : i in [1..g]];
	Append(~qexps, vec_qexp);
    end for;
    return qexps;
end function;

// just to record the actions 
function action_on_mod_sym(N)
  M := ModularSymbols(CongruenceSubgroup(N), 2, Rationals(), 0);
  S := CuspidalSubspace(M);
  D := NewformDecomposition(S);
  G := SL(2, Integers(N));
  gens := [Eltseq(FindLiftToSL2(x)): x in Generators(G)];
  actions := [ActionOnModularSymbolsBasis(g, M) : g in gens];
  F := CyclotomicField(7);
  S_action := [ChangeRing(Restrict(a, VectorSpace(S)),F) : a in actions];
  S_mod := GModule(G, S_action);
  irred := Decomposition(S_mod);
  irr := [S_mod!b : b in Basis(irred[1])];
  irr_in_M := Matrix(irr)*ChangeRing(BasisMatrix(VectorSpace(S)),F);
  s := actions[3];
  t := actions[1];
  mults :=[Parent(t)!1, s, t, s*t, t*s, t^2];
  v := Basis(ChangeRing(VectorSpace(D[1]),F) meet
	     sub<ChangeRing(VectorSpace(M),F) | Rows(irr_in_M)>)[1];

  vecs := [v*ChangeRing(g,F) : g in mults];
  return 0;
end function;
/*
p := 17;
G := GL(2,Integers(p));
Z := Center(G);
PG, quo_G := G / Z;
G0 := SL(2, Integers(p));
PG0 := G0 @ quo_G;
gens := GeneratorsSequence(PG0);
quo_G0 := hom< G0 -> PG0 | [quo_G(x) : x in GeneratorsSequence(G0)]>;
gens_seq := [Eltseq(FindLiftToSL2(g @@ quo_G0)) : g in gens];
M_p := ModularSymbols(PSL2Subgroup(sub<G|[-1,0,0,-1]>), 2, Rationals());
S_p := CuspidalSubspace(M_p);
cusp_forms_space := DualVectorSpace(S_p);
gen_mats := [ActionOnModularSymbolsBasis(g, M_p) : g in gens_seq];
gen_mats_tr := [Transpose(g) : g in gen_mats];
gens_rest := [Restrict(x, cusp_forms_space) : x in gen_mats_tr];
Omega := GModule(PG0, gens_rest);
Omega_PG := Induction(Omega, PG);
// Change this one in the general case
T_prime := sub<G | [1,3,1,1]>;
N_prime := quo_G(Normalizer(G, T_prime));
Omega_N_prime := Restriction(Omega_PG, N_prime);
n_primes := [Representation(Omega_N_prime)(g) : g in Generators(N_prime)];
N_prime_inv := &meet[Kernel(n-1) : n in n_primes];
proj_basis := [Vector(Eltseq(x)[1..Dimension(S_p)]) : x in Basis(N_prime_inv)];
B := BasisMatrix(cusp_forms_space);
N_prime_proj := sub<cusp_forms_space | [b*B : b in proj_basis]>;

*/
