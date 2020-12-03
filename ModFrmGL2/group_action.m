import "ModSym/boundary.m" : BuildTOrbitTable, CuspEquivGrp;
import "ModSym/core.m" : CosetReduce;
import "ModSym/operators.m" : ActionOnModularSymbolsBasis,
  HeckeGeneralCaseRepresentatives;
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

function ALGaussSum(chi)
  if IsTrivial(chi) then
     return -1;
  end if;
  return GaussSum(chi);
end function;

function get_eta_relations(eta, eps, chars, conds, rev_inds, lambda, Q, N)
  eps_dec := Decomposition(eps * eta^2);
  assert exists(eps_Q){eps_Q : eps_Q in eps_dec | Modulus(eps_Q) eq Q};
  if Q eq N then
	eps_NQ := DirichletGroup(1)!1;
  else
	eps_NQ := &*[eps_d : eps_d in eps_dec | eps_d ne eps_Q];
  end if;
  rels := [];
  fac := Factorization(Q);
  assert #fac eq 1;
  q := fac[1][1];
  e := fac[1][2];
  fac := Factorization(Conductor(eps_Q));
  if IsEmpty(fac) then
     alpha := 0;
  else
     alpha := fac[1][2];
  end if;
  for j in [1..#chars] do
	chi := chars[j];
	beta := Factorization(conds[chi])[1][2];
	Q_double_prime := q^Maximum([e, alpha-beta+e, 2*(e-beta)]);
	// see Proposition 4.5 in [Atkin-Li]
	lhs := ALGaussSum(chi^(-1)) * lambda[rev_inds[eta*chi]];
	rhs_num := chi(-1) * eps_NQ(Q div q^beta) * eps_Q(-1);
	rhs_denom := (Q_double_prime div Q) * EulerPhi(Q div q^beta);
	chi1s := [chi1 : chi1 in chars |
		  conds[chi1] eq Q div q^beta and
		  conds[chi * eps_Q * chi1] eq Q_double_prime * q^beta div Q];
        if IsEmpty(chi1s) then
           rhs_sum := 0;
        else
	   rhs_sum := &+[ALGaussSum(chi1)*ALGaussSum(chi*eps_Q*chi1)
			    *lambda[rev_inds[eps_Q^(-1) * chi1^(-1)*eta]]
			    : chi1 in chi1s];
        end if;
	rhs := rhs_num / rhs_denom * lambda[rev_inds[eta]] * rhs_sum;
	Append(~rels, lhs - rhs);
	if conds[chi]^2 le Q then
  	    lhs := lambda[rev_inds[chi*eta]]
	           *lambda[rev_inds[eps_Q^(-1) * chi^(-1)*eta]];
	    rhs := eps_NQ(Q)^(-1) * eps_Q(-1);
	    Append(~rels, lhs-rhs);
	end if;
    end for;
    return rels;
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
   
    g := ALGaussSum(eps_Q);// IsTrivial(eps_Q) select -1 else GaussSum(eps_Q);
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
// K := CyclotomicField(Q * EulerPhi(Q));
    K := CyclotomicField((q-1)*q^(e-1));
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
	lhs := ALGaussSum(chi^(-1)) * lambda[j];
	rhs_num := chi(-1) * eps_NQ(Q div q^beta) * eps_Q(-1);
	rhs_denom := (Q_double_prime div Q) * EulerPhi(Q div q^beta);
	chi1s := [chi1 : chi1 in chars |
		  conds[chi1] eq Q div q^beta and
		  conds[chi * eps_Q * chi1] eq Q_double_prime * q^beta div Q];
        if IsEmpty(chi1s) then
           rhs_sum := 0;
        else
	   rhs_sum := &+[ALGaussSum(chi1)*ALGaussSum(chi*eps_Q*chi1)
		     *lambda[rev_inds[eps_Q^(-1) * chi1^(-1)]] : chi1 in chi1s];
        end if;
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
    return X;
// return X[1][rev_inds[1]];					
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

// This function return for alpha in M_2(Z), and an index j in the cusp list,
// the index of the cusp around which one should look, and the parabolic
// matrix t to act on the q-expansion there.
// !!! TODO : there are many things here that could be precomputed. 

function GetCuspAndMatrix(alpha, cusps, j, G,
			  orbit_table, find_coset, coset_list)
  GL2Q := GL(2, Rationals());
  x := cusps[j];
  vec := ChangeRing(Vector(Eltseq(x)),Rationals()) * Transpose(alpha);
  a := Eltseq(Cusp(vec));
  g := CuspInftyElt(a);
  betas := [GL2Q!Eltseq(CuspInftyElt(c)) : c in cusps];
  cusp_idxs := [CosetReduce(ModLevel(G)!Eltseq(beta), find_coset) :
			   beta in betas];
  cusp_orbit_idxs := [orbit_table[idx][1] : idx in cusp_idxs];
  orb, exp := Explode(orbit_table[CosetReduce(ModLevel(G)!Eltseq(g), 
						    find_coset)]);
  alpha_j := Index(cusp_orbit_idxs, orb);
  bool, gamma := CuspEquivGrp(coset_list, find_coset, G,
			      orbit_table, a, Eltseq(cusps[alpha_j]));
  t := betas[alpha_j]^(-1) * GL2Q!Eltseq(gamma)^(-1) * alpha * betas[j];
  assert IsZero(t[2,1]);
  return alpha_j, t;
end function;

function GetCuspMap(alpha, cusps, G, orbit_table, find_coset, coset_list)
  GL2Q := GL(2, Rationals());
  betas := [GL2Q!Eltseq(CuspInftyElt(c)) : c in cusps];
  cusp_idxs := [CosetReduce(ModLevel(G)!Eltseq(beta), find_coset) :
			   beta in betas];
  cusp_orbit_idxs := [orbit_table[idx][1] : idx in cusp_idxs];
  cusp_orbit_exps := [orbit_table[idx][2] : idx in cusp_idxs];
  alpha_map := [];
  ts := [];
  for j in [1..#cusps] do
	x := cusps[j];
	vec := ChangeRing(Vector(Eltseq(x)),Rationals()) * Transpose(alpha);
        a := Eltseq(Cusp(vec));
        g := CuspInftyElt(a);
        orb, exp := Explode(orbit_table[CosetReduce(ModLevel(G)!Eltseq(g), 
						    find_coset)]);
        alpha_j := Index(cusp_orbit_idxs, orb);
        // r := exp - cusp_orbit_exps[alpha_j];
        bool, gamma := CuspEquivGrp(coset_list, find_coset, G,
				    orbit_table, a, Eltseq(cusps[alpha_j]));
        t := betas[alpha_j]^(-1) * GL2Q!Eltseq(gamma)^(-1) * alpha * betas[j];
        assert IsZero(t[2,1]);
        // r := t[1,2];
        Append(~alpha_map, alpha_j);
        Append(~ts, t);
  end for;
  return alpha_map, ts;
end function;

// This function returns f|t, where f is a fourier expansion in q = e^(2 pi i/N)
// and t is a parabolic matrix of positive determinant
// It assumes the ring of coefficients of f is large enough to contain
// the necessary roots of unity
function act_on_qexp(t, f, N : change_field := false)
  assert IsZero(t[2,1]);
  R<q> := Parent(f);
  det := Determinant(t);
  b := Integers()!t[1,2];
  d := t[2,2];
  if d lt 0 then
     d := -d;
     b := -b;
  end if;
  scalar := det * d^(-2); // also a / d
  D := Denominator(scalar);
  s := Numerator(scalar);
  Nd := N*Integers()!d;
  K<zeta> := CyclotomicField(Nd);
// _<q_ND> := PowerSeriesRing(BaseRing(R));

  // !! TODO : maybe change it to depend whether zeta is in R
  if change_field then
    Kf := BaseRing(R);
    if Type(Kf) eq RngMPol then
      Kf_base := BaseRing(Kf);
    else
      Kf_base := Kf;
    end if;
    cond_f := Norm(Conductor(AbelianExtension(AbsoluteField(Kf_base))));
    cond := LCM(cond_f, Nd);
    Qcond<zeta_c> := CyclotomicField(cond);
    if Type(Kf) eq RngMPol then
       R_base := ChangeRing(Kf,Qcond);
    else
       R_base := Qcond;
    end if;
    assert IsSubfield(K, Qcond);
    zeta := Qcond!zeta;
  else
    R_base := BaseRing(R);
  end if;

  _<q_ND> := PowerSeriesRing(R_base);
  
  prec := AbsolutePrecision(f);
  tf := &+[R_base!Coefficient(f,n) * zeta^(b*n) * q_ND^(n * s)
	     //  tf := &+[Coefficient(f,n) * zeta^(b*n) * q_ND^(n * s)
	      : n in [0..prec-1] | Coefficient(f,n) ne 0];
  return scalar * tf + O(q_ND^(prec * s)), D;
end function;

// This function returns the action on the q-expansions of modular forms
// given by tha alphas.
// More precisely if T(f) = \sum f|[alpha], then it returns the
// q-expansions of T(f)|[beta] where beta(infty) = s, and s ranges over
// the cusps of G.
// This is given in terms of the original q-expansions
// f|[beta_j] = \sum a_{n,j} q_N^n
// Since this action might yield q-expansions with larger denominator,
// (q_N' with different N'), we also return the denominators (N's)
// of the different q-expansions.

function GetActionOnExpansion(G, alphas, bound)
  GL2Q := GL(2, Rationals());
  cusps := CuspsG(G);
  infty := cusps![1,0];
// cusps, sigmas := GaloisOrbit(infty);
  orbits := GaloisOrbits(cusps);
  cusps := &cat[orb[2] : orb in orbits];
  sigmas := &cat[orb[3] : orb in orbits];
  N := Level(G);
  // We don't want a multicharacter one
  M := ModularSymbols(G, 2, Rationals(), 0);
  coset_list :=  M`mlist`coset_list;
  find_coset := M`mlist`find_coset;
  orbit_table := BuildTOrbitTable(coset_list, find_coset, G);
  alpha_maps := [];
  ts := [];
  for alpha in alphas do
      alpha_map, t := GetCuspMap(GL2Q!alpha, cusps, G,
				 orbit_table, find_coset, coset_list);
      Append(~alpha_maps, alpha_map);
      Append(~ts, t);
  end for;
  if IsEmpty(alphas) then
    D := 1;
  else
    D := Abs(LCM([Integers()!Determinant(GL2Q!alpha) : alpha in alphas]));
  end if;
  K<zeta> := CyclotomicField(N*D);
  R := PolynomialRing(K, bound*#cusps);
  var_names := [[Sprintf("a_{%o,%o}", i, j) : j in [1..#cusps]]
		 : i in [1..bound]];
  AssignNames(~R, &cat var_names);
  a := [[R.(#cusps*(i-1) + j) : j in [1..#cusps]] : i in [1..bound]];
  A<q_N> := PowerSeriesRing(R);
  orig_exps := [&+[a[n][j] * q_N^(n) : n in [1..bound]] + O(q_N^(bound+1)) :
							    j in [1..#cusps]];
  res := [];
  Ns := [];
  for j in [1..#cusps] do
    f := A!0;
// D := 1;
    N_f := N;
    for l in [1..#alphas] do
      f_l, d := act_on_qexp(ts[l][j],orig_exps[alpha_maps[l][j]],N);
      N_l := N * d;
      next_N := LCM(N_l, N_f);
      _<q_ND> := Parent(f_l);
      f := Evaluate(f, q_ND^(next_N div N_f) )
	    + Evaluate(f_l, q_ND^(next_N div N_l));
      // f +:= f_l;
      N_f := next_N;
    end for;
    Append(~res, f);
    Append(~Ns, N_f);
  end for;
  return res, Ns, orig_exps, sigmas;
end function;

function HeckeActionOnExpansion(G,p,bound)
  alphas := HeckeGeneralCaseRepresentatives(G,p);
  return GetActionOnExpansion(G, alphas, bound);
end function;

// This function gtes as input the following:
// orig_exps - the original Fourier expansions at each of the cusps.
// alphas - a set of matrices in M_2(Z)
// widths - the width of the Fourier expansion at every cusp
// (i.e. w such that the variable in the power seriesis q_w = e^(2 pi i z /w)
// alpha_maps - for each alpha, and each cusp specifies the index of the cusp
// around which the Fourier expansion of f|alpha should be
// ts - for each auch pair (alpha, cusp) gives the parabolic matrix that acts
// w - the lcm of the widths, to specify the maximal field of definition
function get_hecke_action(orig_exps, alphas, widths, alpha_maps , ts, w)
  A := Universe(orig_exps);
  res := [];
  ws := [];
  for k in [1..#orig_exps] do
    f := A!0;
    w_f := widths[k];
    for l in [1..#alphas] do
       k_orig := alpha_maps[l][k];
       f_l, d := act_on_qexp(ts[l][k], orig_exps[k_orig],w);
       w_l := w * d;
       next_w := LCM(w_l, w_f);
       _<q_wD> := Parent(f_l);
       f := Evaluate(f, q_wD^(next_w div w_f) )
	    + Evaluate(f_l, q_wD^(next_w div w_l));
       w_f := next_w;
    end for;
    Append(~res, f);
    Append(~ws, w_f);
  end for;
  return res, ws;
end function;

function get_galois_action(orig_exps, widths, cusps, g, w,
			   G, orbit_table, find_coset, coset_list)
  GL2Q := GL(2, Rationals());
  A := Universe(orig_exps);
  res := [];
  ws := [];
  for k in [1..#orig_exps] do
    mat_g := getCuspGaloisAction(g, cusps[k]);
    k_orig, t := GetCuspAndMatrix(GL2Q!Eltseq(mat_g), cusps, 1, G,
			   orbit_table, find_coset, coset_list);
    f, d := act_on_qexp(t, orig_exps[k_orig],w); // : change_field := true);
    Append(~res, f);
    Append(~ws, w*d);
  end for;
  return res, ws;
end function;

// lambdas is a vector of eigenvalues
// This gives a qexpansion of an eigenform in base extension to the
// cyclotomic field

function get_qexp_coef_from_eigenvalues(G,n,lambdas : known_as := [])
  assert Type(G) eq GrpPSL2;
  assert IsField(Universe(lambdas));
  if n eq 1 then return 1; end if;
  GL2Q := GL(2, Rationals());
  p := Factorization(n)[1][1];
  alphas := HeckeGeneralCaseRepresentatives(G,p);
  cusps := CuspsG(G);
  infty := cusps![1,0];
  // TODO : This might change between different cusps.
  // We should actually get the fields of definition from the Galois orbits.
  N := CuspWidth(G, infty);
  U, psi := UnitGroup(Integers(N));
  gens := [psi(g) : g in Generators(U)];
  // The orbit of the cusp at infinity should give us enough equations
  // but one has to be careful there, so for now we use all the equations
  cusps := Elements(cusps);
  // cusps := GaloisOrbit(infty);
  assert cusps[1] eq infty;
  widths := [CuspWidth(G, s) :  s in cusps];
  w := LCM(widths);
  // We don't want a multicharacter one
  M := ModularSymbols(G, 2, Rationals(), 0);
  coset_list :=  M`mlist`coset_list;
  find_coset := M`mlist`find_coset;
  orbit_table := BuildTOrbitTable(coset_list, find_coset, G);
  alpha_maps := [];
  ts := [];
  for alpha in alphas do
      alpha_map, t := GetCuspMap(GL2Q!alpha, cusps, G,
				 orbit_table, find_coset, coset_list);
      Append(~alpha_maps, alpha_map);
      Append(~ts, t);
  end for;

  if IsEmpty(alphas) then
    D := 1;
  else
    D := Abs(LCM([Integers()!Determinant(GL2Q!alpha) : alpha in alphas]));
  end if;
  QN := CyclotomicField(N);
  K<zeta> := CyclotomicField(N*D);
  Kf := Universe(lambdas);
  if Type(Kf) eq FldRat then
    cond_f := 1;
  else
    cond_f := Norm(Conductor(AbelianExtension(AbsoluteField(Kf))));
  end if;
  cond := LCM([cond_f, N*D, w*D]);
  Qcond<zeta_c> := CyclotomicField(cond);
  assert IsSubfield(K, Qcond);
  assert IsSubfield(CyclotomicField(w*D), Qcond);
  zeta := Qcond!zeta;
  num_known := IsEmpty(known_as) select 0 else #known_as[1];
  num_as := n - num_known;
  R := PolynomialRing(Qcond, num_as*EulerPhi(N)*#cusps);
  var_names := [[[Sprintf("a_{%o,%o,%o}", k, i, j) : j in [0..EulerPhi(N)-1]]
		  : i in [num_known+1..n]] : k in [1..#cusps]];
  AssignNames(~R, &cat &cat var_names);
  a_new := [[[R.(EulerPhi(N)*(num_as*(k-1) + i-1)+j+1)
	      : j in [0..EulerPhi(N)-1]] : i in [1..num_as]]
	 : k in [1..#cusps]];
  if not IsEmpty(known_as) then
    a := [[Eltseq(QN!x) : x in known_as[k]] cat a_new[k] : k in [1..#cusps]];
  else
    a := a_new;
  end if;
  A<q_w> := PowerSeriesRing(R);
  // Here we use the Galois action on the cusps to relate the q-expansions.
  orig_exps := [&+[&+[a[k][i][j+1]*zeta^(D*j)
		       : j in [0..EulerPhi(N)-1]]*q_w^((w div widths[k])*i)
		    + O(q_w^((w div widths[k])*(n+1)))
		    : i in [1..n] ] : k in [1..#cusps]];
  gal_exps := [];
  for g in gens do
	  gal_exps cat:= [&+[&+[a[k][i][j+1]*zeta^(D*j*Integers()!g)
		       : j in [0..EulerPhi(N)-1]]*q_w^((w div widths[k])*i)
		    + O(q_w^((w div widths[k])*(n+1)))
		    : i in [1..n] ] : k in [1..#cusps]];
  end for;
  res, ws := get_hecke_action(orig_exps, alphas, widths, alpha_maps , ts, w);
  res_gal := [];
  ws_gal := [];
  for g in gens do
    res_g, ws_g := get_galois_action(orig_exps, widths, cusps, g, w, G,
				     orbit_table, find_coset, coset_list);
    res_gal cat:= res_g;
    ws_gal cat:= ws_g;
  end for;

  polygals := [[Coefficient(res_gal[k], j*(w div widths[k])) : j in [1..n]]
		  : k in [1..#res_gal]];
  for k in [1..#res_gal] do
      mult := ws_gal[k] div w;
      max_j := n div mult;
      for j in [1..max_j] do
	    polygals[k][j*mult] -:=
	      Coefficient(gal_exps[k],
			   j*(w div widths[k]));
      end for;
  end for;
  polygals := &cat polygals;
  polys := [[Coefficient(res[k], j*(w div widths[k])) : j in [1..n]]
	      : k in [1..#res]];
  for k in [1..#res] do
      mult := ws[k] div w;
      max_j := n div mult;
      for j in [1..max_j] do
	    polys[k][j*mult] -:=
	      (Qcond!lambdas[p])*Coefficient(orig_exps[k],
					     j*(w div widths[k]));
      end for;
  end for;
  polys := &cat polys;
  polys cat:= polygals;
  
  // We may assume a_{1,0} = 1
  polys cat:= [a[1][1][j] : j in [2..#a[1][1]]];
  arr := [[Qcond!Coefficient(poly,i,1) : poly in polys]
	     : i in [2..NumberOfGenerators(R)]];
  relmatQ := Matrix([Flat([Eltseq(aij) : aij in ai]) : ai in arr]);
// Here we have to be careful - the safe side
// would be to take the whole kernel and not normalize.
// The problem is that it could be that the first term vanishes.
// const_term := [-Qcond!Coefficient(poly,N,1) : poly in polys];
  const_term := [-Qcond!Coefficient(poly,1,1) : poly in polys];
  vec := Vector(Flat([Eltseq(aij) : aij in const_term]));
  sol := Solution(relmatQ, vec);
//ker := Kernel(relmatQ);
//dim := Dimension(ker);
  // return all possiblities
//  ret := [Evaluate(Coefficient(orig_exps[1],p), Eltseq(sol))
//	     : sol in Basis(ker)];
  sol_orig := [1] cat Eltseq(sol);
  // Here we use the fact that the first cusp is the cusp at infinity.
  // should verify that
  ret := [[Evaluate(Coefficient(f,j*(w div widths[1])), sol_orig)
	     : j in [1..n]] : f in orig_exps];
  return ret;
end function;

function qExpHeckeParams(G, alphas)
  GL2Q := GL(2, Rationals());
  cusps := CuspsG(G);
  infty := cusps![1,0];
  // cusps, dd := GaloisOrbit(infty);
  orbits := GaloisOrbits(cusps);
  reps := [orb[1] : orb in orbits];
  cusps := &cat [orb[2] : orb in orbits];
  dd := &cat [orb[3] : orb in orbits];
  mm := &cat [ [i : j in [1..#orbits[i][2]]] : i in [1..#orbits]];
  M := ModularSymbols(G, 2, Rationals(), 0);
  coset_list :=  M`mlist`coset_list;
  find_coset := M`mlist`find_coset;
  orbit_table := BuildTOrbitTable(coset_list, find_coset, G);
  t_cusps := [];
  for orb in orbits do 
    for i in [1..#orb[2]] do
      mat := getCuspGaloisAction(orb[3][i], orb[1]);
      k_orig, h := GetCuspAndMatrix(GL2Q!Eltseq(mat), cusps, 1, G,
			   orbit_table, find_coset, coset_list);
      assert k_orig eq #t_cusps + 1;
      if h[1,1] lt 0 then h := -h; end if;
      Append(~t_cusps, h[1,2]);
    end for;
  end for;
  s := [[] : alpha in alphas];
  c := [[Integers() | ] : alpha in alphas];
  t := [[Integers() | ] : alpha in alphas];
  I := [ [[],[]] : s in cusps];
  d := [[Integers() | ] : alpha in alphas];
  m := [[] : alpha in alphas];
  for idx in [1..#alphas] do
      alpha := alphas[idx];
      for j in [1..#cusps] do
        cusp_idx, h := GetCuspAndMatrix(GL2Q!alpha, cusps, j, G,
				 orbit_table, find_coset, coset_list);
        Append(~s[idx], cusp_idx);
        if h[1,1] lt 0 then h := -h; end if;
        if h[1,1] eq 1 then
          Append(~I[j][1], idx);
        else
	  Append(~I[j][2], idx);
        end if;
        Append(~c[idx], h[1,2]);
        Append(~t[idx], t_cusps[cusp_idx]);
        Append(~d[idx], dd[cusp_idx]);
        Append(~m[idx], mm[cusp_idx]);
      end for;
  end for;
  return I, s, c, t, d, m;
end function;

function my_sum(arr, univ)
  if IsEmpty(arr) then
    return univ!0;
  end if;
  return &+arr;
end function;

// Now a_n_p and a_n_p2 should be sequences of length
// equal to the number of Galois orbits
function qExpCoeff(G, n, p, lambda_p, a_n_p, a_n_p2)
  assert n mod p eq 0;
  alphas := HeckeGeneralCaseRepresentatives(G,p);
  I, s, c, t, d, m := qExpHeckeParams(G, alphas);

  K := Parent(a_n_p);
// K := Universe(a_n_p);
  zeta := K.1;
  if (Type(K) eq FldRat) then
    sigma := [[hom<K -> K | > : ddd in dd] : dd in d];
  else
    sigma := [[hom<K -> K | zeta^ddd> : ddd in dd] : dd in d];
  end if;

  // C := [p * lambda_p * a : a in a_n_p];
  C := p * lambda_p * a_n_p;
  if n mod p^2 eq 0 then
       /*
    C := [C[j] - p^2 * &+[zeta^((c[i][j]-t[i][j]*p)*(n div p^2)) *
		      sigma[i][j](a_n_p2[m[i][j]])
		     : i in I[j][2]] : j in [1..#C]];
       */
    C -:= p^2 * my_sum([zeta^((c[i][1]-t[i][1]*p)*(n div p^2)) *
		      sigma[i][1](a_n_p2[m[i][1]])
			 : i in I[1][2] | m[i][1] eq 1], K);
  end if;
  
// const_term := Vector(&cat[Eltseq(c) : c in C]);
  const_term := Vector(Eltseq(C));

  // !!! TODO - figure out the permutation, exactly
/*
  coeffs := [[[[zeta^((c[i][j]-t[i][j]*p)*(n div p)+d[i][j]*k)
	     : i in I[j][1] | m[i][j] eq l] : l in [1..#C]]
              : k in [0..Degree(K)-1]] : j in [1..#C]];
*/
  coeffs :=  [[zeta^((c[i][1]-t[i][1]*p)*(n div p)+d[i][1]*k)
	     : i in I[1][1] | m[i][1] eq 1] : k in [0..Degree(K)-1]];
/*
  mats := [Matrix([&cat[ Eltseq(my_sum([zeta^((c[i][j]-t[i][j]*p)*(n div p)+d[i][j]*k)
					   : i in I[j][1] | m[i][j] eq l]))
			 : l in [1..#C]] : k in [0..Degree(K)-1]])
	      : j in [1..#C]];
*/

/*
  mats := [Matrix([&cat[ Eltseq(my_sum(coeffs[j][k][l], K)) : l in [1..#C]]
		: k in [1..Degree(K)]]) : j in [1..#C]];
  mat := VerticalJoin(mats);

*/
  mat := Matrix([Eltseq(my_sum(coeffs[k], K)) : k in [1..Degree(K)]]);

  // !!! TODO: This matrix might be non-invertible at primes dividing the
  // conductor (failure of muiltiplicity one) due to a wrong choice of
  // representative, e.g. when G = GammaNS(11) 

  return K!Eltseq(const_term * mat^(-1));
end function;

function qEigenform2(A, prec)
  f := qEigenform(A, prec);
  Kf := BaseRing(Parent(f));
  G := LevelSubgroup(A);
  N := CuspWidth(G, Infinity());

  K := ext<Kf | CyclotomicPolynomial(N)>;
  zeta := K.1;
  R<q> := PowerSeriesRing(K);
  // !!! TODO : Here we should somehow produce the values at the other cusps.
  // (at different Galois orbits)
  // Maybe not - we know there should be a solution which is supported
  // on the Galois orbit at infinity.
  a := [K | 1];
  for n in [2..prec-1] do
    p := PrimeDivisors(n)[1];
    a_n_p2 := (n mod p^2 eq 0) select a[n div p^2] else 0;
    Append(~a, qExpCoeff(G, n, p, Coefficient(f,p), a[n div p], a_n_p2));
  end for;
  a := [0] cat a;
  return R!a + O(q^prec);
end function;

procedure testGammaGroup(G, upto : num_form := 1)
  M := ModularSymbols(G, 2, Rationals(), 0);
  S := CuspidalSubspace(M);
  D := NewformDecomposition(S);
  f := qEigenform(D[num_form], upto+1);
  lambdas := [Coefficient(f,n) : n in [1..upto]];
  for p in PrimesUpTo(upto) do
    assert get_qexp_coef_from_eigenvalues(G,p,lambdas) eq lambdas[p];
    vprintf ModularSymbols, 2: "verified prime %o", p;
  end for;
end procedure;

function checkSols(G, coeffs, lambdas, Kf)
  n := #coeffs;
  N := Level(G);
  K<zeta_N> := CyclotomicField(N);
  Qcond<zeta_c> := Universe(coeffs);
  cond := Conductor(Qcond);
  cusps := CuspsG(G);
  infty := cusps![1,0];
  cusps, sigmas := GaloisOrbit(infty);
  lifts := [CRT([1,Integers()!d], [cond div N, N]) : d in sigmas];
  auts := [hom<Qcond -> Qcond | zeta_c^(d)> : d in lifts];
  _<q_N> := PowerSeriesRing(Qcond);
  for p in PrimesUpTo(n) do
    res, Ns, orig_qexps, sigmas := HeckeActionOnExpansion(G, p, n);
    skips := [nn div N : nn in Ns];
    all_coeffs := &cat[[aut(c) : aut in auts] : c in coeffs];
    orig_exps := [&+[Evaluate(Coefficient(qexp,i), all_coeffs)*q_N^i
			: i in [1..n]] : qexp in orig_qexps];
    res_exps := [&+[Evaluate(Coefficient(res[j],i*skips[j]), all_coeffs)*q_N^i
			: i in [1..n div skips[j]]] : j in [1..#res]];
  assert &and[Valuation(res_exps[i]
		      - (Qcond!lambdas[p])*orig_exps[i]) gt n div skips[i]
	    : i in [1..#res]];
  end for;
end function;

// This could be made much more efficient,
// but we would like something that works first, and for that
// visualization is important

function qExpansionsDependence(G,bound)
  GL2Q := GL(2, Rationals());
  // We take traces of the q-expansions at the different cusps.
  // i.e. compute Tr(f)|beta for each cusp beta
  // Since Tr(f) is Gamma(1)-invariant, they should all be equal
  coset_reps := [GL2Q!Eltseq(x) : x in CosetRepresentatives(G)];
  trace_map, Ns := GetActionOnExpansion(G, coset_reps, bound);
  N := LCM(Ns);
  R := BaseRing(Universe(trace_map));
  K := BaseRing(R);
  cusps := Cusps(G);
  a := [[R.(#cusps*(i-1) + j) : j in [1..#cusps]] : i in [1..bound]];
  mats := [Matrix([[Coefficient(Coefficient(tr,i), a[i][j], 1)
		       : j in [1..#cusps]] : tr in trace_map])
	      : i in [1..bound]];
  mats_K := [ChangeRing(mat, K) : mat in mats];
  mats_K_diff := [Matrix([mat_K[j] - mat_K[1]
			     : j in [2..#cusps]])
		     : mat_K in mats_K];
  kers := [Kernel(Transpose(mat_K_diff)) : mat_K_diff in mats_K_diff];
  // We actually hope that this is the case :)
  assert &and[Dimension(kers[n]) eq 1 : n in [1..#kers] | GCD(n,N) eq 1];
  a1s := Basis(kers[1])[1];
  // Verification
  subs := Eltseq(a1s) cat [R.(i+#cusps) : i in [1..(bound-1)*#cusps]];
  sub_coeffs := [Evaluate(Coefficient(trace_map[j],1)
			  -Coefficient(trace_map[1],1),
			subs) : j in [2..#cusps]];
  assert &and[IsZero(c) : c in sub_coeffs];
  return a1s;
end function;

function qExpansionHeckeEigenform(G, lambdas)
  // Have to define everything
  N := Level(G);
  K := CyclotomicField(N);
  known_as := Eltseq(qExpansionsDependence(G,1));
  n_cusps := #known_as;
  // In fact, we can do more, until the first prime larger than #lambdas
  // and we only need the eigenvalues at primes
  for n in [2..#lambdas] do
    // Smallest prime dividing n (yes, there are faster ways to get it...)
    p := Factorization(n)[1][1];
    // In fact, it seems we only need the first term - make it
    // more efficient afterwards
    hecke_act, Ns, orig_exps := HeckeActionOnExpansion(G,p,n);
    // assert &and [Nn eq N*p : Nn in Ns];
    assert &and[Nn eq Ns[1] : Nn in Ns];
    exp := Ns[1] div N;
    A<q_ND> := Universe(hecke_act);
    diffs := [hecke_act[j] - lambdas[p]*Evaluate(orig_exps[j], q_ND^exp)
	   : j in [1..n_cusps]];
    R := BaseRing(A);
    subs := known_as cat [R.(i+(n-1)*n_cusps) : i in [1..n_cusps]];
    eqs := [Evaluate(Coefficient(t,n), subs) : t in diffs];
    a := [[R.(n_cusps*(i-1) + j) : j in [1..n_cusps]] : i in [1..n]];
    mat := Matrix([[Coefficient(e,a[n][j], 1) : j in [1..n_cusps]] : e in eqs]);
    vec := Vector([-ConstantTerm(e) : e in eqs]);
    // Is that always posssible? probably not...
    ans := ChangeRing(Solution(Transpose(mat), vec), K);
    known_as cat:= Eltseq(ans);
    // Checking ourselves
    assert &and[IsZero(Evaluate(Coefficient(t,n), known_as)) : t in diffs];
    print "Done with ", n;
  end for;
  coeffs := [known_as[1 + i*n_cusps] : i in [0..#lambdas-1]];
  _<q> := PowerSeriesRing(Universe(coeffs));
  f := &+[coeffs[n]*q^n : n in [1..#coeffs]] + O(q^(#coeffs+1));
  return f;
end function;

// old code
/*
function HeckeActionOnExpansion(G,p,bound)
    GL2Q := GL(2, Rationals());
    alphas := HeckeGeneralCaseRepresentatives(G,p);
    cusps := Cusps(G);
    N := Level(G);
    M := ModularSymbols(G);
    coset_list :=  M`mlist`coset_list;
    find_coset := M`mlist`find_coset;
    orbit_table := BuildTOrbitTable(coset_list, find_coset, G);
    alpha_maps := [];
    ts := [];
    for alpha in alphas do
      alpha_map, t := GetCuspMap(GL2Q!alpha, cusps, G,
				 orbit_table, find_coset, coset_list);
      Append(~alpha_maps, alpha_map);
      Append(~ts, t);
    end for;
    K<zeta> := CyclotomicField(N*p);
    R := PolynomialRing(K, bound*#cusps);
    var_names := [[Sprintf("a_{%o,%o}", i, j) : j in [1..#cusps]]
		 : i in [1..bound]];
    AssignNames(~R, &cat var_names);
    a := [[R.(#cusps*(i-1) + j) : j in [1..#cusps]] : i in [1..bound]];
    A<q_N> := PowerSeriesRing(R);
    orig_exps := [&+[a[n][j] * q_N^(n) : n in [1..bound]] + O(q_N^(bound+1)) :
							    j in [1..#cusps]];
    Tp := [];
    Ns := [];
    for j in [1..#cusps] do
       f := A!0;
       D := 1;
       N_f := N;
       for l in [1..#alphas] do
	  f_l, d := act_on_qexp(ts[l][j],orig_exps[alpha_maps[l][j]],N);
          N_l := N * d;
          next_N := LCM(N_l, N_f);
          _<q_ND> := Parent(f_l);
          f := Evaluate(f, q_ND^(next_N div N_f) )
	    + Evaluate(f_l, q_ND^(next_N div N_l));
          // f +:= f_l;
          N_f := next_N;
       end for;
       Append(~Tp, f);
       Append(~Ns, N_f);
    end for;
    return Tp, Ns;
end function;
*/

