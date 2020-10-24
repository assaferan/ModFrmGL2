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

function act_on_qexp(t, f, N)
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
  _<q_ND> := PowerSeriesRing(BaseRing(R));
  K<zeta> := CyclotomicField(N*Integers()!d);
  prec := AbsolutePrecision(f);
  tf := &+[Coefficient(f,n) * zeta^(b*n) * q_ND^(n * s)
	      : n in [0..prec-1] | Coefficient(f,n) ne 0];
  return scalar * tf + O(q^prec * scalar), D;
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
  cusps := Cusps(G);
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
  return res, Ns, orig_exps;
end function;

function HeckeActionOnExpansion(G,p,bound)
  alphas := HeckeGeneralCaseRepresentatives(G,p);
  return GetActionOnExpansion(G, alphas, bound);
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

function size(f)
  return #Sprintf("%o",f);
end function;


// Supersimplify functions - This is probably only necessary on
// functions coming from index 3 or 4 covers because the rational
// functions that are output are ridiculously complicated

function transcheck(f)
  //printf "Finding optimal translation.\n";
  t := Parent(f).1;
  done := true;
  if size(Evaluate(f,t-1)) lt size(f) then
    upp := 0;
    mid := -1;
    low := -2;
    while size(Evaluate(f,t+low)) lt size(Evaluate(f,t+mid)) do
      upp := mid;
      mid := low;
      low := low*2;
    end while;
    done := false;
  end if;
  if size(Evaluate(f,t+1)) lt size(f) then
    low := 0;
    mid := 1;
    upp := 2;
    while size(Evaluate(f,t+2*mid)) lt size(f) do
      low := mid;
      mid := 2*mid;
      upp := 2*mid;
    end while;
    done := false;
  end if;
  if done eq false then
    uppsiz := size(Evaluate(f,t+upp));
    midsiz := size(Evaluate(f,t+mid));
    lowsiz := size(Evaluate(f,t+low));
    round := 0;
    while done eq false do
      round := round + 1;
      //printf "Bisection method, round %o.\n",round;
      //printf "low = %o, lowsiz = %o.\n",low,lowsiz;
      //printf "mid = %o, midsiz = %o.\n",mid,midsiz;
      //printf "upp = %o, uppsiz = %o.\n",upp,uppsiz;
      if (upp-low) le 1 then
        done := true;
      else
        check1 := Round((low+mid)/2);
        check2 := Round((mid+upp)/2);
        newsiz1 := size(Evaluate(f,t+check1));
        newsiz2 := size(Evaluate(f,t+check2));
        sizelist := [lowsiz,newsiz1,midsiz,newsiz2,uppsiz];
        ind := Index(sizelist,Min(sizelist));
        if (ind eq 2) then
          upp := mid;
          uppsiz := midsiz;
          mid := check1;
          midsiz := newsiz1;
        end if;
        if (ind eq 3) then
          low := check1;
          lowsiz := newsiz1;
          upp := check2;
          uppsiz := newsiz2;
        end if;
        if (ind eq 4) then
          low := mid;
          lowsiz := midsiz;
          mid := check2;
          midsiz := newsiz2;
        end if;
      end if;
    end while;
    f2 := Evaluate(f,t+mid);
    if size(f2) lt size(f) then
      //printf "It is %o.\n",mid;
      retM := Matrix([[1,mid],[0,1]]);
      //printf "It is %o.\n",mid;
      retM := Matrix([[1,mid],[0,1]]);
    else
      //printf "It is %o.\n",0;
      f2 := f;
      retM := Matrix([[1,0],[0,1]]);
    end if;
  else
    f2 := f;
    //printf "It is %o.\n",0;
    retM := Matrix([[1,0],[0,1]]);
  end if;
  return f2,retM;
end function;

// This function returns the optimal scaling of the
// polynomial g with relatively prime integer coefficients.

function scale(g)
  coflist := Coefficients(g);
  ret := 1;
  if #[ i : i in [1..#coflist] | coflist[i] ne 0] ge 2 then
    gcd1 := GCD([Coefficient(g,i) : i in [1..Degree(g)]]);
    //printf "GCD1 = %o.\n",gcd1;
    gcd2 := GCD([Coefficient(g,i) : i in [0..Degree(g)-1]]);
    //printf "GCD2 = %o.\n",gcd2;
    //printf "Computing prime factorization.\n";
    primelist := PrimeDivisors(LCM(gcd1,gcd2));
    //printf "Done!\n";
    for j in [1..#primelist] do
      p := primelist[j];
      vallist := [ Valuation(Coefficient(g,n),p) : n in [0..Degree(g)]];
      //printf "Checking p = %o.\n",p;
      if Valuation(Coefficient(g,Degree(g)),p) gt 0 then
        //printf "Exponent should be negative.\n";
        //printf "List = %o.\n",[ vallist[n+1]/n : n in [1..Degree(g)]];
        ex := Floor(Min([ vallist[n+1]/n : n in [1..Degree(g)]]));
        ex := -ex;
      else
        //printf "Exponent should be positive.\n";
        //printf "List = %o.\n",[ vallist[n+1]/(Degree(g)-n) : n in [0..Degree(g)-1]];
        ex := Floor(Min([ vallist[n+1]/(Degree(g)-n) : n in [0..Degree(g)-1]]));
      end if;

      ret := ret*p^(ex);
    end for;
  end if;
  return ret;
end function;

function scale2(f)
  t := Parent(f).1;
  num := Numerator(f);
  denom := Denominator(f);
  coflist := [ Denominator(Coefficient(num,n)) : n in [0..Degree(num)]];
  coflist := coflist cat [ Denominator(Coefficient(denom,n)) : n in [0..Degree(denom)]];
  mult := LCM(coflist);
  num := PolynomialRing(Integers())!(num*mult);
  denom := PolynomialRing(Integers())!(denom*mult);
  //printf "Current size = %o.\n",size(f);
  //printf "Scaling numerator.\n";
  r1 := scale(num div Content(num));
  //printf "Scaling denominator.\n";
  r2 := scale(denom div Content(denom));
  primelist := PrimeDivisors(Numerator(r1)*Denominator(r1)*Numerator(r2)*Denominator(r2));
  primevals := [];
  for i in [1..#primelist] do
    v1 := Valuation(r1,primelist[i]);
    v2 := Valuation(r2,primelist[i]);
    if (v1 lt 0) and (v2 lt 0) then
      Append(~primevals,Max(v1,v2));
    else
      if (v1 gt 0) and (v2 gt 0) then
        Append(~primevals,Min(v1,v2));
      else
        Append(~primevals,0);
      end if;
    end if;
  end for;
  if #primelist gt 0 then
    scalfac := &*[ primelist[i]^primevals[i] : i in [1..#primelist]];
  else
    scalfac := 1;
  end if;
  //printf "Scaling factor %o.\n",scalfac;
  newf := Evaluate(f,scalfac*t);
  retsize := size(newf);
  //printf "Size of scaled f = %o.\n",retsize;
  return scalfac,retsize;
end function;

// Supersimplify function

function supersimplify(f)
  printf "Call to supersimplify.\n";
  t := Parent(f).1;
  j := f;
  changemat := Matrix([[1,0],[0,1]]);
  prevsize := size(j);
  prevj := j;
  prevmat := changemat;
  alldone := false;
  while alldone eq false do
  printf "Entering simplification iteration. Current size = %o.\n",prevsize;
  scal, newsize := scale2(j);
  jnew := Evaluate(j,t*scal);
  changemat := changemat*Matrix([[scal,0],[0,1]]);
  printf "Size after scaling = %o.\n",newsize;

  // Do translations - do this by
  // factoring num and denom modulo prime
  // powers

  //printf "Translation check.\n";
  num := PolynomialRing(Rationals())!Numerator(jnew);
  denom := PolynomialRing(Rationals())!Denominator(jnew);
  coflist := [ Denominator(Coefficient(num,n)) : n in [0..Degree(num)]];
  num := num*LCM(coflist);
  num := PolynomialRing(Integers())!num;
  coflist := [ Denominator(Coefficient(denom,n)) : n in [0..Degree(denom)]];
  denom := denom*LCM(coflist);
  denom := PolynomialRing(Integers())!denom;
  if Degree(num) gt 0 then
    FF := Factorization(num);
    sqrfreenum := &*[ FF[i][1] : i in [1..#FF]];
  else
    sqrfreenum := PolynomialRing(Integers())!1;
  end if;
  if Degree(denom) gt 0 then
    FF := Factorization(denom);
    sqrfreedenom := &*[ FF[i][1] : i in [1..#FF]];
  else
    sqrfreedenom := PolynomialRing(Integers())!1;
  end if;
  if (Degree(sqrfreenum) gt 0) and (Degree(sqrfreedenom) gt 0) then
    D := GCD(Discriminant(sqrfreenum),Discriminant(sqrfreedenom));
  end if;
  if Degree(sqrfreenum) eq 0 then
    D := Discriminant(sqrfreedenom);
  end if;
  if Degree(sqrfreedenom) eq 0 then
    D := Discriminant(sqrfreenum);
  end if;
  plist := PrimeDivisors(D);
  for n in [1..#plist] do
    p := plist[n];
    F := GF(p);
    RRRR<zzzz> := PolynomialRing(F);
    done := false;
    while done eq false do
      //printf "Translation check at p = %o.\n",p;
      num := PolynomialRing(Rationals())!Numerator(jnew);
      denom := PolynomialRing(Rationals())!Denominator(jnew);
      coflist := [ Denominator(Coefficient(num,n)) : n in [0..Degree(num)]];
      num := num*LCM(coflist);
      num := RRRR!num;
      coflist := [ Denominator(Coefficient(denom,n)) : n in [0..Degree(denom)]];
      denom := denom*LCM(coflist);
      denom := RRRR!denom;
      prod := RRRR!1;
      if (num ne 0) then
        prod := prod*num;
      end if;
      if (denom ne 0) then
        prod := prod*denom;
      end if;
      fac := Factorization(prod);
      //printf "Factorization = %o.\n",fac;
      if (#fac eq 1) and Degree(fac[1][1]) eq 1 then
        r := Integers()!(Roots(prod)[1][1]);
        chk1 := Evaluate(jnew,p*t+r);
        chk2 := Evaluate(jnew,p*t+(-p+r));
        size1 := size(chk1);
        size2 := size(chk2);
       //printf "Possible new sizes are %o and %o.\n",size1,size2;
        minsize := Min(size1,size2);
        if (minsize lt newsize) then
          if (size1 eq minsize) then
            jnew := chk1;
            changemat := changemat*Matrix([[p,r],[0,1]]);
            newsize := size1;
            //printf "Transformation %o. New size = %o.\n",p*t+r,newsize;
          else
            jnew := chk2;
            changemat := changemat*Matrix([[p,r-p],[0,1]]);
            newsize := size2;
            //printf "Transformation %o. New size = %o.\n",p*t+(-p+r),newsize;
          end if;
        else
          done := true;
        end if;
      else
        done := true;
      end if;
    end while;
  end for;
  printf "Translation check done. New size = %o.\n",newsize;
  j := jnew;

  // Do some rounds of random substitutions
  done := false;
  bound := 5;
  it := 0;
  ptlist := [];
  for aa in [-bound..bound] do
    for bb in [-bound..bound] do
      for cc in [-bound..bound] do
        for dd in [0..bound] do
          if GCD([aa,bb,cc,dd]) eq 1 then
            if aa*dd - bb*cc ne 0 then
              Append(~ptlist,<aa,bb,cc,dd>);
            end if;
          end if;
        end for;
      end for;
    end for;
  end for;
  printf "Doing up to 5 rounds of substitutions.\n";
  while done eq false do
    it := it + 1;
    cursize := size(j);
    //printf "Beginning iteration %o. Size = %o.\n",it,cursize;
    minsize := cursize;
    for n in [1..#ptlist] do
      pt := ptlist[n];
      aa := pt[1];
      bb := pt[2];
      cc := pt[3];
      dd := pt[4];
      jnew := Evaluate(j,(aa*t+bb)/(cc*t+dd));
      chksize := size(jnew);
      if (chksize lt minsize) then
        //printf "Index %o has size %o. pt = %o\n",n,chksize,pt;
        minsize := chksize;
        ind := n;
      end if;
    end for;
    if minsize lt cursize then
      pt := ptlist[ind];
      aa := pt[1];
      bb := pt[2];
      cc := pt[3];
      dd := pt[4];
      jnew := Evaluate(j,(aa*t+bb)/(cc*t+dd));
      changemat := changemat*Matrix([[aa,bb],[cc,dd]]);
      printf "After round %o size = %o.\n",it,minsize;
      j := jnew;
      //printf "j = %o.\n",j;
      if (it ge 5) then
        done := true;
      end if;
    else
      done := true;
    end if;
  end while;
  // Translation rounds
  printf "Doing two more random checks.\n";
  j, retM := transcheck(j);
  changemat := changemat*retM;
  // Hack for group number 7
  if size(Evaluate(j,t/31)) lt size(j) then
    j := Evaluate(j,t/31);
    changemat := changemat*Matrix([[1,0],[0,31]]);
  end if;
  printf "Final size is %o.\n",size(j);
  if size(j) ge prevsize then
    alldone := true;
    j := prevj;
    changemat := prevmat;
  else
    prevj := j;
    prevmat := changemat;
    prevsize := size(j);
  end if;
  end while;
  return j, changemat;
end function;

forward GetModularFunctionAndModel;

function CoveringGroup(G)
  cands := MinimalOvergroups(ModLevelGL(G), ImageInLevelGL(G));
  if IsEmpty(cands) then
    return PSL2(Integers());
  end if;
  _, idx := Minimum([Index(cand, ImageInLevelGL(G)) : cand in cands]);
  covergp := PSL2Subgroup(cands[idx], false);
  return covergp;
end function;

function maptoj(curgp, ptlist);
  curptlist := ptlist;
  while (curgp ne PSL2(Integers())) do
    covergp := CoveringGroup(curgp);
    _, _, mp := GetModularFunctionAndModel(curgp);				
    curpt := Domain(mp)!curptlist;
    newpt := mp(curpt);
    curptlist := Coordinates(newpt);
    curgp := covergp;
  end while;
  return newpt;
end function;

function JMap(G)
  curgp := G;
  _, _, mp := GetModularFunctionAndModel(curgp);
  polyRing := CoordinateRing(Domain(mp));
  curpt := GeneratorsSequence(polyRing);
  while (curgp ne PSL2(Integers())) do
    covergp := CoveringGroup(curgp);
    polys := [AlgebraMap(mp)(x) : x in GeneratorsSequence(polyRing)];
// curpt := [AlgebraMap(mp)(x) : x in curpt];
    curpt := [Evaluate(p, curpt) : p in polys];
    curgp := covergp;
    _, _, mp := GetModularFunctionAndModel(covergp);
   polyRing := CoordinateRing(Domain(mp));
  end while;
  return curpt;
end function;

// This function takes two q-expansions and a degree bound
// The first one is a modular function, the second
// is a modular function of degree 1, and the
// third is a degree bound. This function tries to represent
// the first input as a rational function in the second.
// The two modular functions MUST belong to the same
// power series ring.
// The range of coefficients needed is from
// val2+deg*val1 to val2+deg*val1+2*deg+1

function ratfuncrep(modfunc,haup,deg)
  FF<tt> := FunctionField(Rationals());
  printf "Call to ratfuncrep with deg = %o.\n",deg;
  if IsWeaklyZero(modfunc) then
    return Parent(tt)!0;
  end if;
  field := BaseRing(Parent(modfunc));
  q := Parent(modfunc).1;
  M := ZeroMatrix(field,2*deg+2,2*deg+2);
  den := ExponentDenominator(haup);
  val1 := Min(0,Valuation(haup)*den);
  val2 := Min(0,Valuation(modfunc)*den);
  //printf "den = %o.\n",den;
  timet := Cputime();
  printf "Building last %o rows of the matrix.\n",deg+1;
  printf "Using coefficients %o to %o.\n",(val2+deg*val1)/den,(val2+deg*val1+2*deg+1)/den;
  for m in [0..deg] do
    haupprec := (m*val1 + 2*deg+2)/den;
    func2 := -(haup + BigO(q^(haupprec)))^(deg-m)*modfunc;
    //printf "For m = %o, the precision on func2 is from %o to %o.\n",m,Valuati\
on(func2),AbsolutePrecision(func2);
    //printf "For m = %o, precision needed is from %o to %o.\n",m,(val2+(deg-m)*val1)/den,(val2+(deg-m)*val1+2*deg+1)/den;
    //printf "Coefficient range %o to %o.\n",(val2+deg*val1)/den,(val2+deg*val1+2*deg+1)/den;
    for n in [1..2*deg+2] do
      M[m+deg+2][n] := Coefficient(func2,(val2+deg*val1+n-1)/den);
    end for;
  end for;
  printf "Time taken was %o.\n",Cputime(timet);
  timet := Cputime();
  printf "Building the first %o rows of the matrix.\n",deg+1;
  for m in [0..deg] do
    haupprec := (val2+m*val1+2*deg+2)/den;
    func2 := (haup+BigO(q^(haupprec)))^(deg-m);
    //printf "For m = %o, precision on func2 ranges from %o to %o.\n",m,Valuati\
on(func2),AbsolutePrecision(func2);
    //printf "Precision needed is %o to %o.\n",(val2+(deg-m)*val1)/den,(val2+(d\
eg-m)*val1+2*deg+1)/den;
    for n in [1..2*deg+2] do
      M[m+1][n] := Coefficient(func2,(val2+deg*val1+n-1)/den);
    end for;
  end for;
  printf "Time taken was %o.\n",Cputime(timet);
  printf "Solving the linear system of size %ox%o.\n",2*deg+2,2*deg+2;
  timet := Cputime();
  V := Nullspace(M);
  printf "Time taken was %o.\n",Cputime(timet);
  printf "Null space has dimension %o.\n",Dimension(V);
  assert Dimension(V) gt 0;
  v := V.1;
  QQ := Rationals();
  // We really hope that all the entries of V can be coerced into QQ
  numcoeffs := [ QQ!v[i] : i in [1..deg+1]];
  denomcoeffs := [ QQ!v[i] : i in [deg+2..2*deg+2]];
  mult := LCM([Denominator(v[i]) : i in [1..2*deg+2]]);
  numcoeffs := [ numcoeffs[i]*mult : i in [1..deg+1]];
  denomcoeffs := [ denomcoeffs[i]*mult : i in [1..deg+1]];
  ret := &+[ numcoeffs[i]*tt^(deg+1-i) : i in [1..deg+1]]/&+[ denomcoeffs[i]*tt\
^(deg+1-i) : i in [1..deg+1]];
  // New ret check
  numer := &+[ numcoeffs[i]*tt^(deg+1-i) : i in [1..deg+1]];
  denom := &+[ denomcoeffs[i]*tt^(deg+1-i) : i in [1..deg+1]];
  for d in [2..Dimension(V)] do
    vd := V.d;
    numerd := &+[ (QQ!vd[i])*tt^(deg+1-i) : i in [1..deg+1]];
    denomd := &+[ (QQ!vd[i])*tt^(2*deg+2-i) : i in [deg+2..2*deg+2]];
    if (numerd*denom - numer*denomd) ne 0 then
      printf "ERROR in ratfuncrep! is not unique!\n";
      bad := 0;
      bad2 := 1/bad;
    end if;    
  end for;
/*
  retcheck := &+[ numcoeffs[i]*(haup+BigO(q^AbsolutePrecision(modfunc)))^(deg+1-i) : i in [1..deg+1]]/&\
+[
  denomcoeffs[i]*(haup+BigO(q^AbsolutePrecision(modfunc)))^(deg+1-i) : i in [1..deg+1]];
  if IsWeaklyZero(retcheck - modfunc) then
    printf "Success! The linear system worked.\n";
    printf "The result was %o.\n",ret;
  else
    printf "Error! Solving the linear system failed!\n";
    bad := 0;
    bad2 := 1/bad;
  end if;
*/
  return ret;
end function;

// This function takes as input three modular functions
// modfunc, x, y. It also takes a degree bound deg.
// It then represents modfunc as a modular function
// of degree at most deg in the function field of the elliptic
// curve y^2 + a1 xy + a3 y = x^3 + a2 x^2 + a4 x + a6.

function genusoneratfuncrep(modfunc,x,y,deg)
  printf "Call to genusoneratfuncrep with deg = %o.\n",deg;
  field := BaseRing(Parent(modfunc));
  q := Parent(modfunc).1;
  den := LCM(ExponentDenominator(x),ExponentDenominator(y));
  valm := Valuation(modfunc)*den;
  valx := Valuation(x)*den;
  valy := Valuation(y)*den;
  // What range of exponents should we look at?
  val1 := valm + (3*deg-3)+Min(0,valx);
  val2 := (3*deg-3)*Min(0,valx);
  val3 := (3*deg-3)*Min(0,valx)+valy;
  startval := Min([val1,val2,val3]);
  rowlen := 13*deg;
  endval := startval + rowlen;
  //printf "The range of exponents is from %o to %o.\n",startval,endval;
  //printf "The actual precision needed for modfunc is %o.\n",(endval+Max(0,(3*deg-3)*(-valx)))/den;
  // An elliptic function of degree k has the form
  // (A(x) + B(x) y)/C(x), where deg A <= 3k-3, deg B <= 3k-5, and
  // deg C <= 3k-3.
  M := ZeroMatrix(field,9*deg-8,rowlen);
  printf "Building matrix - part 1.\n";
  for m in [0..3*deg-3] do
    relprec := 1+endval - (3*deg-3-m)*valx - valm;
    absprec := relprec - valx;
    func := -(x+BigO(q^(absprec/den)))^(3*deg-3-m)*modfunc;
    for n in [1..rowlen] do
      M[m+1][n] := Coefficient(func,(startval+n-1)/den);
    end for;
  end for;
  printf "Building matrix - part 2.\n";
  for m in [0..3*deg-3] do
    relprec := 1+endval - (3*deg-3-m)*valx;
    absprec := relprec - valx;
    func := (x+BigO(q^(absprec/den)))^(3*deg-3-m);
    for n in [1..rowlen] do
      M[3*deg-1+m][n] := Coefficient(func,(startval+n-1)/den);
    end for;
  end for;
  printf "Building matrix - part 3.\n";
  for m in [0..3*deg-6] do
    relprec := 1+endval - (3*deg-6-m)*valx - valy;
    absprec := relprec - valx;
    func := (x+BigO(q^(absprec/den)))^(3*deg-6-m)*y;
    for n in [1..rowlen] do
      M[6*deg-3+m][n] := Coefficient(func,(startval+n-1)/den);
    end for;
  end for;
  printf "Computing nullspace of %ox%o matrix.\n",NumberOfRows(M),NumberOfColumns(M);
  V := Nullspace(M);
  printf "Done!\n";
  printf "Null space has dimension %o.\n",Dimension(V);
  v := V.1;
  QQ := Rationals();
  // We really hope that all the entries of V can be coerced into QQ
/*
  for n in [1..9*deg-8] do
    printf "Solution %o is %o.\n",n,v[n];
  end for;
  bad := 0;
  bad2 := 1/bad;
*/
  FFF<ttt> := PolynomialRing(QQ);
  ccoeffs := [ QQ!v[i] : i in [1..3*deg-2]];
  acoeffs := [ QQ!v[i] : i in [3*deg-1..6*deg-4]];
  bcoeffs := [ QQ!v[i] : i in [6*deg-3..9*deg-8]];
  reta := &+[ acoeffs[i]*ttt^(3*deg-2-i) : i in [1..3*deg-2]];
  retb := &+[ bcoeffs[i]*ttt^(3*deg-5-i) : i in [1..3*deg-5]];
  retc := &+[ ccoeffs[i]*ttt^(3*deg-2-i) : i in [1..3*deg-2]];
  for d in [2..Dimension(V)] do
    vd := V.d;
    ccoeffsd := [ QQ!vd[i] : i in [1..3*deg-2]];
    acoeffsd := [ QQ!vd[i] : i in [3*deg-1..6*deg-4]];
    bcoeffsd := [ QQ!vd[i] : i in [6*deg-3..9*deg-8]];
    retad := &+[ acoeffsd[i]*ttt^(3*deg-2-i) : i in [1..3*deg-2]];
    retbd := &+[ bcoeffsd[i]*ttt^(3*deg-5-i) : i in [1..3*deg-5]];
    retcd := &+[ ccoeffsd[i]*ttt^(3*deg-2-i) : i in [1..3*deg-2]]; 
    chk1 := reta*retcd - retad*retc;
    chk2 := retb*retcd - retbd*retc;
    if (chk1 ne 0) or (chk2 ne 0) then
      printf "ERROR! Solution is not unique in genusoneratfuncrep.\n";
      bad := 0;
      bad2 := 1/bad;
    end if;
  end for;
  gcd := GCD([reta,retb,retc]);
  //printf "We found gcd = %o.\n",gcd;
  return reta div gcd, retb div gcd, retc div gcd;
end function;

// Function simplifyelliptic - This function takes reta, retb,
// and retc from the genusoneratfuncrep function, and also the
// ainvariants of the elliptic curve, and it outputs two polynomials
// p1 and p2 with the property that the input divided by p1(x) + p2(x)y
// is a square.

function simplifyelliptic(reta,retb,retc,ainvars)
  E := EllipticCurve(ainvars);
  F<x> := FunctionField(Rationals());
  S<zz> := PolynomialRing(F);
  f := zz^2 + ainvars[1]*zz*x + ainvars[3]*zz - (x^3 + ainvars[2]*x^2 + ainvars[4]*x + ainvars[5]);
  K<y> := FunctionField(f);
  elt := (K!Evaluate(reta,x)+K!Evaluate(retb,x)*y)/(K!Evaluate(retc,x));
  D := Divisor(elt);
  S := Support(D);
  infty := Divisor(InfinitePlaces(K)[1]);

  simpd := DivisorGroup(K)!0;
  D2 := DivisorGroup(K)!0;
  for i in [1..#S] do
    val := Valuation(D,S[i]);
    if (val mod 2 eq 1) then
      simpd := simpd + S[i];
    end if;
    D2 := D2 + Floor(val/2)*S[i];
  end for;
  deg := Degree(simpd);
  simpd := simpd - deg*infty;
  D2 := D2 - Degree(D2)*infty;

  // This divisor is probably not principal - Make it so it is!
  OK := EquationOrderFinite(K);

  // Guess a random point on E to add to the divisor to make it principal
  T, phi0 := TorsionSubgroup(E);
  torspoints := { phi0(a) : a in T };
  // We assume that E has rank 1.
  GG, phi := MordellWeilGroup(E);
  num := #Generators(GG);
  P := phi(GG.num);

  found := false;
  it := 0;
  while found eq false do
    chklist := [ it*P + s : s in torspoints ] cat [ -it*P + s : s in torspoints ];
    it2 := 0;
    done := false;
    while done eq false do
      it2 := it2 + 1;
      if it2 gt #chklist then
        done := true;
      else
        pt := chklist[it2];
        if (pt eq E!0) then
          dv := infty;
        else
          xcord := pt[1];
          ycord := pt[2];
          I := ideal<OK | x-xcord,y-ycord>;
          dv := Divisor(Place(I));
        end if;
        dv := dv - infty;
        if IsPrincipal(D2-dv) then
          done := true;
          found := true;
          //printf "We found it! We have pt = %o.\n",pt;
        end if;
      end if;
    end while;
    it := it + 1;
  end while;

  divg := D2-dv;
  a, gfunc := IsPrincipal(divg);
  g := Evaluate(RationalFunction(gfunc),y);
  simp1 := elt/g^2;
  T<z> := PolynomialRing(Rationals());
  elts := Eltseq(simp1);
  elts := [ T!elts[1], T!elts[2] ];
  if Degree(elts[1]) ge 0 then
    denomlcm1 := LCM([ Denominator(Coefficient(elts[1],i)) : i in [0..Degree(elts[1])]]);
    numgcd1 := GCD([ Numerator(Coefficient(elts[1],i)) : i in [0..Degree(elts[1])]]);
  else
    denomlcm1 := 1;
    numgcd1 := 0;
  end if;
  if Degree(elts[2]) ge 0 then
    denomlcm2 := LCM([ Denominator(Coefficient(elts[2],i)) : i in [0..Degree(elts[2])]]);
    numgcd2 := GCD([ Numerator(Coefficient(elts[2],i)) : i in [0..Degree(elts[2])]]);
  else
    denomlcm2 := 1;
    numgcd2 := 0;
  end if;
  denomlcm := LCM([denomlcm1,denomlcm2]);
  numgcd := GCD([numgcd1,numgcd2]);
  aa, bb := SquarefreeFactorization(denomlcm);
  cc, dd := SquarefreeFactorization(numgcd);  
  fac := (aa^2*bb^2)/dd^2;
  return elts[1]*fac,elts[2]*fac;
end function;

import "ModFrm/eisenstein.m" : ActionOnEisensteinSeries;

// Returns the equation over QQ(j) that the Hauptmodule j_H satisfies.
function GetModularFunctionAndModel(H)
  FF<tt> := FunctionField(Rationals());
  RR<t> :=PolynomialRing(Rationals());
  RRR<x,y> := PolynomialRing(Rationals(),2);
  ZZ<b> := PolynomialRing(Integers());
  sub := ImageInLevelGL(H);
  QQ := Rationals();
  N := Level(H);
  prec := 110 * N;
  KK<z> := CyclotomicField(N);
  RRRRR<qq> := PuiseuxSeriesRing(KK);
  E4 := 240*qExpansion(EisensteinSeries(ModularForms(1,4))[1], prec);
  E6 := -504*qExpansion(EisensteinSeries(ModularForms(1,6))[1], prec);
  Delta := E4^3 - E6^2;
  j := 1728*E4^3 / Delta;
  haupt := RRRRR!j;
  if (H eq PSL2(Integers())) then
    X<a,b> := ProjectiveSpace(Rationals(), 1);
    covering_map := map< X -> X | [a, b]>;
    return X, haupt, covering_map;
  end if;
  // Change this
  radN := &*[x[1] : x in Factorization(N)];
// indbound := 8;
  indbound := radN^3;
  covergp := CoveringGroup(H);
  ind := Index(ImageInLevelGL(covergp : N := N), ImageInLevelGL(H));
  gencover := Genus(covergp);
  gen := Genus(H);
  K<zeta> := CyclotomicField(N);
  R<q> := PuiseuxSeriesRing(K);
  bigG := GL(2,Integers(N));
  // This cam from Rouse's code - why do we look at this subgroup?
//  U, phi := UnitGroup(Integers(N));
//  gens := [[phi(g),0,0,1] : g in Generators(U)];
//weird_group := sub<bigG | [3,0,0,1], [5,0,0,1], [1,1,0,1], [-1,0,0,-1]>;
//  weird_group := sub<bigG | gens cat [[1,1,0,1], [-1,0,0,-1]]>;
// indbound := Index(bigG, weird_group);
//phi, B, C := CosetAction(bigG,weird_group);
//  phi, B, C := CosetAction(bigG, ImageInLevelGL(H));
//  permcover := phi(ImageInLevelGL(covergp : N := N));
//  L0 := LowIndexSubgroups(permcover,indbound);
// permcover := ImageInLevelGL(covergp : N := N^2);
  permcover := ImageInLevelGL(covergp : N := N);
  L0 := Subgroups(permcover : IndexLimit := indbound);
  printf "Done! There were %o conjugacy classes.\n",#L0;
  oldcuspnums := [];
  printf "Computing number of cusps for each of these groups...";
  for n in [1..#L0] do
	  // cusps := #Cusps(PSL2Subgroup(L0[n] @@ phi));
    cusps := #Cusps(PSL2Subgroup(L0[n]`subgroup));
    Append(~oldcuspnums,cusps);  
  end for;
  printf "Done!\n";
  assert Maximum(oldcuspnums) ge 2;
  printf "Building the list of all subgroups of index <= %o.\n",indbound;
  L := [];
  cuspnums := [];
  for n in [1..#L0] do
	  //  cursub := L0[n];
    cursub := L0[n]`subgroup;
    Norm := Normalizer(permcover, cursub);
    cosets := RightTransversal(permcover,Norm);
    for m in [1..#cosets] do
      Append(~L,Conjugate(cursub,cosets[m]));
      Append(~cuspnums,oldcuspnums[n]);
    end for;
  end for;
  printf "Done. There are %o subgroups of index <= %o.\n",#L,indbound;
// permgp := phi(ImageInLevelGL(H));
// permgp := ImageInLevelGL(H : N := N^2);
  permgp := ImageInLevelGL(H : N := N);
  printf "Finding which subgroups are contained in permgp...";
// sublist := [ n : n in [1..#L] | L[n] subset permgp and -L[n]!1 in L[n]];
  sublist := [ n : n in [1..#L] | L[n] subset permgp];
  printf "Done!\n";
  done := false;
  found := false;
  it := 1;
  goodgroup := 0;
  while (done eq false) do
    if (it in sublist) then
      //printf "Testing group %o.\n",it;
      cusps := cuspnums[it];
      llst := [ cuspnums[j] : j in [1..it-1] | L[it] subset L[j]];
      if #llst gt 0 then
        cuspsuper := Max(llst);
      else
        cuspsuper := 0;
      end if;
      if (cusps gt cuspsuper) then
        inde := Index(permgp,L[it]);
// sl2ind := Index(sub meet SL(2,Integers(N)),(L[it] @@ phi) meet SL(2,Integers(N)));
        L_N := sub<GL(2,Integers(N)) | Generators(L[it])>;
        sl2ind := Index(sub meet SL(2,Integers(N)),L_N meet SL(2,Integers(N)));
        if (inde eq sl2ind) then
          done := true;
          found := true;
          goodgroup := it;
          printf "Group %o works!\n",it;
          printf "It has %o cusps.\n",cusps;
        end if;
      end if;
      if (done eq false) then
        it := it + 1;
      end if;
    else
      it := it + 1;
    end if;
    if (it gt #L) then
      done := true;
      printf "We didn't find a good subgroup!\n";
      bad := 0;
      bad2 := 1/bad;
    end if;
  end while;
  assert cusps ge 2;
  // Here's the group we'll compute Eisenstein series for.
  // subsub := L[goodgroup] @@ phi;
  subsub := L[goodgroup];
  K := PSL2Subgroup(subsub);
  permsubsub := L[goodgroup];

  xcoord := 0;
  ycoord := 0;
  expdenomx := 0;
  expdenomy := 0;
  alist := [0,0,0,0,0];
  Xcov, haupt, Xcov_map := GetModularFunctionAndModel(covergp);

  // If gencover eq 0 then we computed the Fourier expansion of a hauptmodul
  // We suppose that the Fourier expansion was stored with z as the root of unity.
  // This root of unity may be different than zeta.

  if gencover eq 0 then
    cycfield := BaseRing(Parent(haupt));
    ordofz := 2*Degree(cycfield);
    pow := Floor(N/ordofz);
    expdenom := ExponentDenominator(haupt);
    newhaupt := R!0;
    for n in [Valuation(haupt)*expdenom..AbsolutePrecision(haupt)*expdenom-1] do
      cof := Eltseq(Coefficient(haupt,n/expdenom));
      term := R!(&+[ cof[i]*zeta^(pow*(i-1)) : i in [1..#cof]]*q^(n/expdenom));
      newhaupt := newhaupt + term;
    end for;
    newhaupt := newhaupt + BigO(q^AbsolutePrecision(haupt));
    haupt := newhaupt;
  end if;
  if gencover eq 1 then
    //ee, coords, _ := GetModularFunctionAndModel(covergp);
    alist := aInvariants(Xcov);
    xcoord, ycoord := Explode(haupt);
    cycfield := BaseRing(Parent(xcoord));
    ordofz := 2*Degree(cycfield);
    pow := Floor(N/ordofz);
    newxcoord := R!BigO(q^AbsolutePrecision(xcoord));
    newycoord := R!BigO(q^AbsolutePrecision(ycoord));
    expdenomx := ExponentDenominator(xcoord);
    expdenomy := ExponentDenominator(ycoord);
    for n in [Valuation(xcoord)*expdenomx..AbsolutePrecision(xcoord)*expdenomx-1] do
      cof := Eltseq(Coefficient(xcoord,n/expdenomx));
      term := R!(&+[ cof[i]*zeta^(pow*(i-1)) : i in [1..#cof]]*q^(n/expdenomx));
      newxcoord := newxcoord + term;
    end for;
    for n in [Valuation(ycoord)*expdenomy..AbsolutePrecision(ycoord)*expdenomy-1] do
      cof := Eltseq(Coefficient(ycoord,n/expdenomy));
      term := R!(&+[ cof[i]*zeta^(pow*(i-1)) : i in [1..#cof]]*q^(n/expdenomy));
      newycoord := newycoord + term;
    end for;
    xcoord := newxcoord;
    ycoord := newycoord;
  end if;

  // Enumerate the representatives of the right cosets of subsub in covergp 
  // sorted by coset of sub in covergp

  // S1 and S2 are sets of representatives for the right cosets

  S1 := SetToSequence(RightTransversal(ImageInLevelGL(covergp : N := N),sub));
  S2 := SetToSequence(RightTransversal(sub,subsub));

// bigind := Index(covergp,K);
//  printf "The index of subsub in covergp is %o.\n",bigind;

  eis2basis := EisensteinSeries(ModularForms(K));
  assert #eis2basis gt 0;
  seq := [ i : i in [1..#eis2basis]];
  // The result here is not considered an Eisenstein object by magma
  // x := &+[ seq[m]*eis2basis[m] : m in [1..#eis2basis]];

  fourier_basis := [[[ActionOnEisensteinSeries(S2[j]*S1[i], x)
		       : x in eis2basis] : j in [1..#S2]] : i in [1..#S1]];

  fourierlist := [[ &+[seq[m]*qExpansion(fourier_basis[i][j][m], prec)
		   : m in [1..#eis2basis]] : j in [1..#S2]] : i in [1..#S1]];

  fourierlist := [[Evaluate(f, q^(1/N)) : f in fs] : fs in fourierlist];

  printf "Symmetrizing.\n";
  wt := 0;
  formsused := [];
  if (subsub eq sub) then
    wt := 2;
    formsused := [ fourierlist[i][1] : i in [1..#fourierlist]];
  else
    wt := 4;
    termnum := 0;
    for i in [1..#S1] do
      formtouse := R!0;
      maxnum := #S1*#S2*(#S2-1)/2;
      for j in [1..#S2] do
        for j2 in [j+1..#S2] do
          termnum := termnum+1;
          printf "Doing term %o of %o.\n",termnum,maxnum;
          formtouse := formtouse + fourierlist[i][j]*fourierlist[i][j2];
        end for;
      end for;
      Append(~formsused,formtouse);
    end for;
  end if;
  printf "Done!\n";
  chk := #{ formsused[i] : i in [1..#formsused]};
  s := 2;
  while (chk lt #S1) and (s lt #S2) do		     
		       //  if (chk lt #S1) then
    printf "Error - the number of roots is %o. This is less than %o.\n",chk,#S1;
    printf "Trying again.\n";
// wt := 6;
    s +:= 1;
    wt := 2*s;
    polyRing := PolynomialRing(BaseRing(Universe(fourierlist[1])), #S2);
    poly := ElementarySymmetricPolynomial(polyRing,s);
    formsused := [];
//    termnum := 0;
    for i in [1..#S1] do
      formtouse := Evaluate(poly,fourierlist[i]);
/*
      formtouse := R!0;
      maxnum := #S1*(#S2)*(#S2-1)*(#S2-2)/6;
      for j in [1..#S2] do
        for j2 in [j+1..#S2] do
          for j3 in [j2+1..#S2] do
            termnum := termnum + 1;
            printf "Doing term %o of %o.\n",termnum,maxnum;
            formtouse := formtouse + fourierlist[i][j]*fourierlist[i][j2]*fourierlist[i][j3];
          end for;
        end for;
      end for;
*/
      Append(~formsused,formtouse);
    end for;
// rechk := #{ formsused[i] : i in [1..#formsused]};
    chk := #{ formsused[i] : i in [1..#formsused]};
//printf "This time we have %o roots.\n",rechk;
    printf "This time we have %o roots.\n",chk;
  end while;
/*
    if (rechk lt #S1) then
      printf "We're still screwed!\n";
      bad := 0;
      bad2 := 1/bad;
    end if;
  end if;
*/
  if (chk lt #S1) then
      printf "We're still screwed!\n";
      bad := 0;
      bad2 := 1/bad;
  end if;

  effwt := 0;
  if (wt eq 6) then
    effwt := 6;
    denomfunc := Eisenstein(6,q : Precision := Ceiling(2*prec/N));
  end if;
  if (wt eq 4) then
    effwt := 4;
    denomfunc := Eisenstein(4,q : Precision := Ceiling(2*prec/N));
  end if;
  if (wt eq 2) then
    //if (Index(covergp) mod 3 eq 0) then
    primes := [x[1] : x in Factorization(N)];
    is_sub_gamma0 := exists(p){p : p in primes | covergp subset Gamma0(p)};
    if is_sub_gamma0 then
      effwt := 2;
      denomfunc := p*Eisenstein(2,q^p : Precision := Ceiling(2*prec / N))
         - Eisenstein(2,q : Precision := Ceiling(2*prec/N));
//      denomfunc := 2*Eisenstein(2,q^2 : Precision := Ceiling(2*prec/N)) - Eisenstein(2,q : Precision := Ceiling(2*prec/N));
    else
      effwt := 6;
      denomfunc := Eisenstein(6,q : Precision := Ceiling(2*prec/N))/Eisenstein(4,q : Precision := Ceiling(2*prec/N));
    end if;    
  end if;

  // Step 5 - Compute the minimal polynomial over Q(X(cover)) of
  // the modular function formsused[1]/denomfunc.

  degbound := Ceiling((effwt*Index(H))/(12*ind));
  S<xxx> := PolynomialRing(R);
  poly := S!1;
  for i in [1..#S1] do
    poly := poly*(denomfunc*xxx - formsused[i]);
  end for;
  poly := poly/(denomfunc^Degree(poly));
  modf := formsused[1]/denomfunc;

  if gencover eq 0 then
    coefflist := [];
    for m in [0..Degree(poly)-1] do
      printf "Call to ratfunc with m = %o.\n",m;
      ret := ratfuncrep(Coefficient(poly,m),haupt,(Degree(poly)-m)*degbound);
      //printf "Return of ratfunc is %o.\n",ret;
      Append(~coefflist,ret);
      printf "Result has degree %o.\n",Max(Degree(Numerator(ret)),Degree(Denominator(ret)));
    end for;
    Append(~coefflist,1);
    denom := FF!LCM([Denominator(coefflist[i]) : i in [1..#coefflist]]);
    scaledcoefflist := [ RR!(denom*coefflist[i]) : i in [1..#coefflist]];
    curveeq := &+[ Evaluate(scaledcoefflist[i+1],x)*y^i : i in [0..#coefflist-1]];
    cofs := Coefficients(curveeq,y);
    if not IsIrreducible(curveeq) then
      printf "Error! We didn't get a good primitive element!\n";
      printf "The factorization is %o.\n",Factorization(curveeq);
      bad := 0;
      bad2 := 1/bad;
    end if;
    // Case 1 - Degree is 2
    if (ind eq 2) then
      // First simplify the square root
      cofs := Coefficients(curveeq,y);
      disc := RR!Evaluate(cofs[2]^2 - 4*cofs[1]*cofs[3],[t,0]);
      denom := LCM([Denominator(Coefficient(disc,m)) : m in [0..Degree(disc)]]);
      FFF := Factorization(denom);
      if #FFF gt 0 then
        mult := &*[ FFF[n][1]^(2*Ceiling(FFF[n][2]/2)) : n in [1..#FFF]];
        disc := disc*mult;
        disc := ZZ!disc;
      else
        disc := ZZ!disc;
      end if;
      FFF2 := Factorization(disc);
      if #FFF2 gt 0 then
        discdiv := &*[ FFF2[n][1]^(2*Floor(FFF2[n][2]/2)) : n in [1..#FFF2]];
        newdisc := disc div discdiv;
      else
        newdisc := disc;
      end if;
      printf "Fairly simple model is y^2 = %o.\n",newdisc;
      // Here, y is the new uniformizer, and newdisc is a polynomial in
      // the old one.
      // Case 1a - Degree is 2 and genus is zero
      if (gen eq 0) then
        // uni is the modular function equal to y.
        // We should be able to manually build a conic now
        a := Rationals()!Coefficient(newdisc,2);
        b := -Rationals()!1;
        c := Rationals()!Coefficient(newdisc,0);
        d := Rationals()!0;
        e := Rationals()!0;
        f := Rationals()!Coefficient(newdisc,1);
        CC := Conic([a,b,c,d,e,f]);
        isrational, P := HasRationalPoint(CC);
        printf "The modular curve is a conic given by %o.\n",DefiningEquation(CC);
        if isrational then
          inftyratpoints := true;
          printf "This genus zero curve has a rational point on it, namely %o.\n",P;
          A := Parametrization(CC,P);
          xparam := A([tt,1])[1];
          yparam := A([tt,1])[2];
          printf "We have x = %o.\n",xparam;
          printf "We have y = %o.\n",yparam;
          // Build a polynomial ring over FF, the rational function field.
          RRRR<xx> := PolynomialRing(FF);
          newcurveeq := -xx^2 + a*tt^2 + f*tt + c;
          SSSS<yy> := FunctionField(newcurveeq);
          TTTT<zz> := PolynomialRing(SSSS);
          num := Numerator(yparam);
          denom := Denominator(yparam);
          uniformpoly := Evaluate(denom,zz)*yy - Evaluate(num,zz);
          unifunc := Roots(uniformpoly)[1][1];

          // unifunc is a uniformizer for the function field
          newpoly := MinimalPolynomial(unifunc);
          denom := LCM([Denominator(Coefficient(newpoly,i)) : i in [0..Degree(newpoly)]]);
          newpoly2 := &+[ Evaluate(RR!(denom*Coefficient(newpoly,i)),y)*x^i : i in [0..Degree(newpoly)]];
          if not Degree(newpoly2,y) eq 1 then
            printf "Something is wrong! We don't have a uniformizer!\n";
            printf "The polynomial is %o.\n",newpoly2;
            bad := 0;
            bad2 := 1/bad;
          end if;
          newcofs := Coefficients(newpoly2,y);
          initratfunc := -Evaluate(newcofs[1],[tt,0])/Evaluate(newcofs[2],[tt,0]);
          printf "We have y = %o.\n",initratfunc;
          printf "Here tt is the Hauptmodul for the group %o,\n",H;
          printf "and y is the Hauptmodul for group %o.\n",covergp;
          printf "Optimizing.\n";
          newratfunc, M := supersimplify(initratfunc);
          printf "The final model is y = %o.\n",newratfunc;
          M := ChangeRing(M,Rationals());
          M := M^(-1);
// if subnum in covergpset then
          // Tweak uniformizer
          printf "Computing modular function.\n";
          truncprec := Ceiling(AbsolutePrecision(modf)+20);
          // cofs := Coefficients(curveeq,y);
          modfunccofs := [ Evaluate(RR!Evaluate(cofs[i],[t,0]),(haupt+BigO(q^truncprec))): i in [1..#cofs]];
          olduni := 2*modfunccofs[3]*modf+modfunccofs[2];
          if #FFF gt 0 then
            aa, multsqrt := IsSquare(mult);
            olduni := olduni*multsqrt;
          end if;
          if #FFF2 gt 0 then
            aa, discdivsqrt := IsSquare(discdiv);
            uni := olduni/Evaluate(discdivsqrt,haupt+BigO(q^truncprec));
          else
            uni := olduni;
          end if;
          seqlist := ElementToSequence(unifunc);
          truncprec := Ceiling(AbsolutePrecision(uni)+20);
          printf "Computing uniformizer coefficients.\n";
          coefflist := [ Evaluate(seqlist[i],haupt+BigO(q^truncprec)) : i in [1..#seqlist]];
          printf "Computing uniformizer...\n";
          uniformize := &+[ coefflist[i]*uni^(i-1) : i in [1..#seqlist]];
          newhaupt := (M[1][1]*uniformize + M[1][2])/(M[2][1]*uniformize + M[2][2]);
// end if;
      else
        printf "This genus zero curve has no rational points!\n";
        noratpoints := true;  
      end if;
    end if;
    // Case 1b - Degree is 2 and genus is one
    if (gen eq 1) then
      locsov := true;
      if Degree(newdisc) eq 4 then
        HypC := HyperellipticCurve(newdisc);
        printf "Analyzing the curve y^2 = %o.\n",newdisc;
        if IsLocallySolvable(HypC,2) then
          printf "The curve has 2-adic points.\n";
          if (QuarticNumberOfRealRoots(newdisc) ge 1) or (LeadingCoefficient(newdisc) gt 0) then
            printf "The curve has real points too.\n";
            printf "Therefore it probably has rational points.\n";
            // All the modular curves we've computed have good reduction away
            // from 2. Note that the Shafarevich-Tate groups of all elliptic
            // curves with good reduction away from 2 over Q are trivial,
            // at least assuming strong BSD.
          else
            printf "The curve has no real points!\n";
            locsov := false;
          end if;
        else
          printf "The curve does not have any 2-adic points, and so it doesn't have any rational points either!\n";
          locsov := false;
        end if;
        if (locsov eq false) then
          noratpoints := true;
        else
          // If we get here, the curve should have a rational point.
          pointfound := false;
          searchbound := 1;
          pt := 0;
          while pointfound eq false do
            searchbound := searchbound * 10;
            S := Points(HypC : Bound := searchbound);
            if #S gt 0 then
              pointfound := true;
              pt := SetToIndexedSet(S)[1];
            end if;
          end while;
          printf "We found a point. It is %o.\n",pt;
          E, phi0 := EllipticCurve(HypC,pt);
          s := DefiningPolynomials(phi0);
          E2, phi := MinimalModel(E);
          printf "The modular curve is elliptic. It is the %o.\n",E2;
          s2 := DefiningPolynomials(Inverse(phi0*phi));
        end if;
      end if;
      if Degree(newdisc) eq 3 then
        newdisc := Evaluate(newdisc,t);
        // Right now, x is the old Hauptmodul, and y is the generator
        // of the new
        HypC := HyperellipticCurve(newdisc);
        E, phi0 := EllipticCurve(HypC);
        s := DefiningPolynomials(phi0);
        E2, phi := MinimalModel(E);
        printf "The modular curve is elliptic. It is the %o.\n",E2;
        s2 := DefiningPolynomials(Inverse(phi0*phi));
      end if;
      // Some writing data to files was removed here
      if (locsov eq true) then
        GG, phiphi := MordellWeilGroup(E2);
        if AnalyticRank(E2) eq 0 then
          printf "The rank of this elliptic curve is zero and the rational points are the following.\n";
          // Create the map from Xcur -> Xcover
          EE<XX,YY,ZZ> := EllipticCurve(aInvariants(E2));
          poly1 := Evaluate(s2[1],[XX,YY,ZZ]);
          poly2 := Evaluate(s2[3],[XX,YY,ZZ]);
//          Xcov,_ := GetModularFunctionAndModel(covergp);
          maptocover := map<EE -> Xcov | [poly1,poly2]>;
          for a in GG do
            curpt := phiphi(a);
            jimage := maptoj(covergp,Coordinates(maptocover(curpt)));
            if jimage[2] eq 0 then
              printf "The point %o is a cusp.\n",curpt;
            else
              printf "The point %o maps to j = %o.\n",curpt,jimage[1];
            end if;
          end for;
        else
          inftyratpoints := true;
          printf "The rank of this elliptic curve is positive.\n";
          printf "The Mordell-Weil group is %o.\n",GG;
          printf "Generators are:\n";
          for a in Generators(GG) do
            printf "%o.\n",phiphi(a);
          end for;
// if subnum in covergpset then
            printf "Computing modular function.\n";
            truncprec := Ceiling(AbsolutePrecision(modf)+20);
            modfunccofs := [ Evaluate(RR!Evaluate(cofs[i],[t,0]),(haupt+BigO(q^truncprec))): i in [1..#cofs]];
            olduni := 2*modfunccofs[3]*modf+modfunccofs[2];
            if #FFF gt 0 then
              aa, multsqrt := IsSquare(mult);
              olduni := olduni*multsqrt;
            end if;
            if #FFF2 gt 0 then
              aa, discdivsqrt := IsSquare(discdiv);
              uni := olduni/Evaluate(discdivsqrt,haupt+BigO(q^truncprec));
            else
              uni := olduni;
            end if;
            xmodfunc := haupt;
            ymodfunc := uni;
            firstx := Evaluate(s[1],[xmodfunc,ymodfunc,1]);
            firsty := Evaluate(s[2],[xmodfunc,ymodfunc,1]);
            firstz := Evaluate(s[3],[xmodfunc,ymodfunc,1]);
            xmodfunc := firstx/firstz;
            ymodfunc := firsty/firstz;
            s3 := DefiningPolynomials(phi);
            nextx := Evaluate(s3[1],[xmodfunc,ymodfunc,1]);
            nexty := Evaluate(s3[2],[xmodfunc,ymodfunc,1]);
            nextz := Evaluate(s3[3],[xmodfunc,ymodfunc,1]);
            xmodfunc := nextx/nextz;
            ymodfunc := nexty/nextz;
// end if;
        end if;
      end if;
    end if;
    // Case 1c - Degree is 2 and genus is >= 2 (only genus 2 happens here)
    if (gen ge 2) then
      HypC := HyperellipticCurve(newdisc);
      newC, phi := ReducedMinimalWeierstrassModel(HypC);
      printf "Reduced model is %o.\n",newC;
      printf "Map is %o.\n",DefiningPolynomials(phi);
      J := Jacobian(HypC);
      highbound := RankBound(J);
      printf "The rank of the Jacobian is at most %o.\n",highbound;
      if (highbound eq 0) then
        PS := Chabauty0(J);
        PS := { phi(pt) : pt in PS };
        printf "The following is a list of all the points on the curve:\n";
      else
        PS := Points(newC : Bound := 100000);
        printf "Here are some points on the curve that we found:\n";
      end if;
      // Build the map to the cover
      phi2 := Inverse(phi);
      for pt in PS do
        pt2 := phi2(pt);
        printf "The point on the cover is %o.\n",pt2;
        if (pt2[3] eq 0) then
          p1pt := [1,0]; 
        else
          p1pt := [pt2[1]/pt2[3],1];
        end if;
        jinvar := maptoj(covergp,p1pt);
        if (jinvar[2] eq 0) then
          printf "The point %o is a cusp.\n",pt;
        else
          printf "The point %o maps to j = %o.\n",pt,jinvar[1];
        end if;
        if IsSingular(newC!pt) then
          printf "The latter point is singular.\n";
        end if;
      end for;
    end if;
  end if;
  // Case 2 - Degree is > 2
  if (ind gt 2) then
    C := ProjectiveClosure(Curve(AffineSpace(Rationals(),2),curveeq));
    if (gen eq 0) then
      // This is called only for X_6, X_7 and X_55
      bound := 10;
      found := false;
      while found eq false do
        printf "Searching for a non-singular rational point with bound %o.\n",bound;
        plist := PointSearch(C,bound);
        it := 1;
        done := false;
        while done eq false do
          pt := plist[it];
          if not IsSingular(C!pt) then
            P := C!pt;
            done := true;
            found := true;
          else
            it := it + 1;
          end if;
          if (it gt #plist) then
            done := true;
            bound := bound*2;
          end if;
        end while;
        if bound gt 60000 then
          printf "No point found. Giving up.\n";
          bad := 0;
          bad2 := 1/bad;
        end if;
      end while;
      inftyratpoints := true;
      printf "Parametrizing the curve.\n";
      A := Parametrization(C,P);
      printf "Found it!\n";
      xparam := A([tt,1])[1];
      yparam := A([tt,1])[2];
      printf "We have x = %o.\n",xparam;
      printf "We have y = %o.\n",yparam;
      // Build a polynomial ring over FF, the rational function field.
      RRRR<xx> := PolynomialRing(FF);
      SSSS<yy> := FunctionField(Evaluate(curveeq,[tt,xx]));
      TTTT<zz> := PolynomialRing(SSSS);
      num := Numerator(yparam);
      denom := Denominator(yparam);
      uniformpoly := Evaluate(denom,zz)*yy - Evaluate(num,zz);
      unifunc := Roots(uniformpoly)[1][1];
      seqlist := ElementToSequence(unifunc);
      truncprec := Ceiling(AbsolutePrecision(modf)+20);
      printf "Computing uniformizer coefficients.\n";
      coefflist := [ Evaluate(seqlist[i],haupt+BigO(q^truncprec)) : i in [1..#seqlist]];
      printf "Computing uniformizer...\n";
      uniformize := &+[ coefflist[i]*modf^(i-1) : i in [1..#seqlist]];
      newpoly := MinimalPolynomial(unifunc);
      denom := LCM([Denominator(Coefficient(newpoly,i)) : i in [0..Degree(newpoly)]]);
      newpoly2 := &+[ Evaluate(RR!(denom*Coefficient(newpoly,i)),y)*x^i : i in [0..Degree(newpoly)]];
      if not Degree(newpoly2,y) eq 1 then
        printf "Something is wrong! We don't have a uniformizer!\n";
        printf "The polynomial is %o.\n",newpoly2;
        bad := 0;
        bad2 := 1/bad;
      end if;
      cofs := Coefficients(newpoly2,y);
      initratfunc := -Evaluate(cofs[1],[tt,0])/Evaluate(cofs[2],[tt,0]);
      printf "We have y = %o.\n",initratfunc;
      printf "Here tt is the Hauptmodul for the group %o,\n",H;
      printf "and y is the Hauptmodul for group %o.\n",covergp;
      printf "Optimizing.\n";
      newratfunc, M := supersimplify(initratfunc);
      printf "The final model is y = %o.\n",newratfunc;
      //printf "M = %o.\n",M;
      M := ChangeRing(M,Rationals());
      M := M^(-1);
      newhaupt := (M[1][1]*uniformize + M[1][2])/(M[2][1]*uniformize + M[2][2]);
    end if;
    if (gen gt 0) then
      // This only happens for X_441 - we'll see if we can do the computation
      // anyway.
      printf "We must be doing X_441. Burcu Baran already worked this case out.\n";
      printf "The curve equation is %o.\n",C;
      printf "Determining hyperelliptic model.\n";
      A, B, phi0 := IsHyperelliptic(C);
      printf "The hyperelliptic model is %o.\n",B;
      printf "The map is %o.\n",phi0;
      // The answer should be yes.
      newC, phi := ReducedMinimalWeierstrassModel(B);
      printf "The minimal model is %o.\n",newC;
      printf "The map to the minimal model is %o.\n",phi;
      printf "The covering map written to a file will be wrong!\n";
    end if;  
  end if;
end if;

if gencover eq 1 then
  // In this case ind = 2
  // There are cases where gen = 1 here, but all of the base curves
  // have rank zero. That's why inftyratpoints = false.
  modfuncdisc := Coefficient(poly,1)^2 - 4*Coefficient(poly,0);
  reta, retb, retc := genusoneratfuncrep(modfuncdisc,xcoord,ycoord,2*degbound);
  newreta, newretb := simplifyelliptic(reta,retb,retc,alist);
  // OK, now we build the curve as a cover of the elliptic curve.
  deg := Max([2, 1 + Degree(newretb), Degree(newreta)]);
  P3 := ProjectiveSpace(Rationals(),3);
  CR<x,y,z,w> := CoordinateRing(P3);
  // This is where the curve should go
  // here we refer to alist, the a-invarints read from the model
  // of the cover.
  f1 := y^2*z + alist[1]*x*y*z + alist[3]*y*z^2
   - (x^3 + alist[2]*x^2*z + alist[4]*x*z^2 + alist[5]*z^3);
  f2 := w^2*z^(deg-2);
  if (newreta ne 0) then
    f2 := f2 - &+[ Coefficient(newreta,i)*x^i*z^(deg-i) : i in [0..Degree(newreta)]];
  end if;
  if (newretb ne 0) then
    f2 := f2 - &+[ Coefficient(newretb,i)*y*x^i*z^(deg-1-i) : i in [0..Degree(newretb)]];
  end if;
  printf "Our model is given by:\n";
  printf "%o = 0.\n",Evaluate(f1,[x,y,1,0]);
  printf "w^2 = %o + (%o)*y\n",Evaluate(newreta,x),Evaluate(newretb,x);
  I := ideal<CR | f1,f2>;
  I2 := PrimaryDecomposition(I);
  indextouse := Index([ IsPrime(I2[i]) : i in [1..#I2]],true);
  //printf "The primary decomposition is %o.\n",I2; 
  // Hopefully this is the right piece to look at.
  C := Curve(P3,I2[indextouse]); 
  printf "Computing genus of the model we got.\n"; 
  gencomp := Genus(C);
  printf "It is %o.\n",gencomp;
  if (gen ne gencomp) then
    printf "Error! Our model computation is wrong!.\n";
    bad := 0;
    bad2 := 1/bad;
  end if;
  // Do a search for rational points using the Mordell-Weil group of E
  mwbound := 100;
  EEE := EllipticCurve(alist);
  T, maptotors := TorsionSubgroup(EEE);
  torspoints := { maptotors(t) : t in T };
  MW, maptoMW := MordellWeilGroup(EEE);
  gener := maptoMW(MW.NumberOfGenerators(MW));
  // We are using that all of our elliptic curves have rank 1.
  bigptlist := [ m*gener + t : m in [-mwbound..mwbound], t in torspoints ];
  foundpoints := [];
  for p in bigptlist do
    if p[3] ne 0 then
      wsqr := Evaluate(newreta,p[1])+p[2]*Evaluate(newretb,p[1]);
      issqr, sqr := IsSquare(wsqr);
      if issqr then
        pt := [p[1],p[2],p[3],sqr];
        chk1, cpoint := IsCoercible(C,pt);
        if (chk1 eq true) then
          Append(~foundpoints,cpoint);
        end if;
        if (sqr ne 0) then
          pt := [p[1],p[2],p[3],-sqr];
          chk1, cpoint := IsCoercible(C,pt);
          if (chk1 eq true) then
            Append(~foundpoints,cpoint);
          end if;
        end if;     
      end if;
    end if;
  end for; 
  smallsearch := PointSearch(C,100);
  for pt in smallsearch do
    cpoint := C!pt;
    if Index(foundpoints,cpoint) eq 0 then
      Append(~foundpoints,cpoint);
    end if;
  end for; 
  printf "Here are the points we found on C:\n";
  for pt in foundpoints do
    if (pt[1] ne 0) or (pt[2] ne 0) or (pt[3] ne 0) then
      jinvar := maptoj(covergp,[pt[1],pt[2],pt[3]]);
      if (jinvar[2] eq 0) then
        printf "The point %o is a cusp.\n",pt;
      else
        printf "The point %o maps to j = %o.\n",pt,jinvar[1];
      end if;
      if IsSingular(pt) then
        printf "The latter point is singular.\n";
      end if;
    else 
      printf "The point %o doesn't map to the elliptic curve.\n",pt;
      if IsSingular(pt) then
        printf "It is singular.\n";
      end if;
    end if;
  end for;
  if (gen eq 3) then
  // See if it is hyperelliptic or get the plane quartic model
  // but don't do anything with it.
    B := 0;
    A, B, phi2 := IsGeometricallyHyperelliptic(C);
    if (A eq true) then
      if HasRationalPoint(B) then
        printf "The curve is hyperelliptic. A hyperelliptic model is %o.\n",B;
        printf "The map is %o.\n",phi2;
      else
        printf "This genus 3 curve has a degree 2 map to a conic with no rational points!\n";
        noratpoints := true;
      end if;
    end if;
    if (A eq false) then
      printf "The curve is not geometrically hyperelliptic.\n";
      phi3 := CanonicalMap(C);
      C2 := CanonicalImage(C,phi3);
      quartmod := DefiningEquations(C2)[1];
      printf "It's plane quartic model is %o.\n",Evaluate(quartmod,[x,y,z]);
    end if;
  end if;  
end if;
  
  if (gen eq 0) then
    X<a,b> := ProjectiveSpace(Rationals(), 1);
    assert assigned newratfunc;
    num := Numerator(newratfunc);
    denom := Denominator(newratfunc);
    degdeg := Max(Degree(num),Degree(denom));
    poly1 := &+[ Coefficient(num,i)*a^i*b^(degdeg-i)
		   : i in [0..Degree(num)]];
    poly2 := &+[ Coefficient(denom,i)*a^i*b^(degdeg-i)
		   : i in [0..Degree(denom)]];
    //Y, _ := GetModularFunctionAndModel(covergp);
    covering_map := map< X -> Xcov | [poly1,poly2]>;
    expdenom := ExponentDenominator(newhaupt);
    bestexpdenom := LCM([ Denominator(a/expdenom) : a in [expdenom*Valuation(newhaupt)..expdenom*AbsolutePrecision(newhaupt)-1] | Coefficient(newhaupt,a/expdenom) ne 0]);
    endprec := Floor(bestexpdenom*AbsolutePrecision(newhaupt))/bestexpdenom;
    reparsedhaupt := BigO(qq^endprec);
    for m in [bestexpdenom*Valuation(newhaupt)..bestexpdenom*endprec-1] do
      cof := KK!Eltseq(Coefficient(newhaupt,m/bestexpdenom));
      reparsedhaupt := reparsedhaupt + cof*qq^(m/bestexpdenom);
    end for;
    haupt := reparsedhaupt;
    return X, haupt, covering_map;
  end if;

  if (gen eq 1) then
    X<x,y,z> := EllipticCurve(aInvariants(E2));
    poly1 := Evaluate(s2[1],[x,y,z]);
    poly2 := Evaluate(s2[3],[x,y,z]);
    covering_map := map<X -> Xcov | [poly1,poly2]>;
    expdenom := ExponentDenominator(xmodfunc);
    bestexpdenom := LCM([ Denominator(a/expdenom) : a in [expdenom*Valuation
(xmodfunc)..expdenom*AbsolutePrecision(xmodfunc)-1] | Coefficient(xmodfunc,a/expdenom) ne 0]);
    endprec := Floor(bestexpdenom*AbsolutePrecision(xmodfunc))/bestexpdenom;
    reparsedxmodfunc := BigO(qq^endprec);
    for m in [bestexpdenom*Valuation(xmodfunc)..bestexpdenom*endprec-1] do
      cof := KK!Eltseq(Coefficient(xmodfunc,m/bestexpdenom));
      reparsedxmodfunc := reparsedxmodfunc + cof*qq^(m/bestexpdenom);
    end for;
    xcoord := reparsedxmodfunc;
    expdenom := ExponentDenominator(ymodfunc);
    bestexpdenom := LCM([ Denominator(a/expdenom) : a in [expdenom*Valuation
(ymodfunc)..expdenom*AbsolutePrecision(ymodfunc)-1] | Coefficient(ymodfunc,a/expdenom) ne 0]);
    endprec := Floor(bestexpdenom*AbsolutePrecision(ymodfunc))/bestexpdenom;
    reparsedymodfunc := BigO(qq^endprec);
    for m in [bestexpdenom*Valuation(ymodfunc)..bestexpdenom*endprec-1] do
      cof := KK!Eltseq(Coefficient(ymodfunc,m/bestexpdenom));
      reparsedymodfunc := reparsedymodfunc + cof*qq^(m/bestexpdenom);
    end for;
    ycoord := reparsedymodfunc;
    return X, [xcoord, ycoord], covering_map;
  end if;
  
end function;
