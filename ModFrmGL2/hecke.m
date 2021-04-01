// This is for understanding Hecke operators at primes dividing the level

function all_hecke(N, p)
  GL_N := GL(2, Integers(N));
  SL_N := SL(2, Integers(N));
  triv := sub<GL_N | -GL_N!1>;
  all_subs := [triv] cat IntermediateSubgroups(GL_N, triv) cat [GL_N];
  subs := [s : s in all_subs | #(s / (s meet SL_N)) eq EulerPhi(N)];
  Gs := [PSL2Subgroup(s) : s in all_subs];
  Ms := [ModularSymbols(G, 2, Rationals(), 0) : G in Gs];
  return [* HeckeOperator(M,p) : M in Ms *];
end function;

function get_det_n_order(G, n)
  N := Level(G);
  H := ImageInLevelGL(G);
  gens := Generators(H);
  prods := {H!1};
  old_prods := {};
  while #old_prods ne #prods do
    old_prods := prods;
    new_prods := &join{{g1*g2 : g2 in prods} : g1 in gens};
    new_prods := new_prods join &join{{g2*g1 : g2 in prods} : g1 in gens};
    prods := prods join new_prods;
  end while;
  basis := [Vector(prod) : prod in prods];
  U := sub<Universe(basis) | basis>;
  M2N := MatrixAlgebra(Integers(N),2);
  det_n_reps := [M2N!Eltseq(x) : x in U | (x[1]*x[4]-x[2]*x[3] eq n) and
		    (x ne 0)];
  return det_n_reps;
end function;

function involution(A)
  a,b,c,d := Explode(Eltseq(A));
  return Parent(A)![d,-b,-c,a];
end function;

// This is incredibly slow, but seems to at least work...

function get_hecke_representatives(G,n)
  N := Level(G);
  M2N := MatrixAlgebra(Integers(N),2);
  M2Z := MatrixAlgebra(Integers(), 2);
  det_n_reps := get_det_n_order(G,n);
  H := ImageInLevel(G);
  // !!! TODO : This could be done much more efficiently, using Todd-Coxeter
  // Unfortunately, at the moment Magma would only do it with groups as
  // arguments
  good_idxs := [1..#det_n_reps];
  equivalents := [];
  i := 1;
  while i lt #good_idxs do
       for_removal := [];                    
       for j in good_idxs[i+1..#good_idxs] do
	  if exists(h){h : h in H | det_n_reps[good_idxs[i]] eq
		       h*det_n_reps[j]} then
	     Append(~for_removal, j);
          end if;
       end for;
       good_idxs := [j : j in good_idxs | j notin for_removal];
       Append(~equivalents, [good_idxs[i]] cat for_removal);
       i +:= 1;
  end while;
  R := &cat[[[n div a, b, 0, a] : b in [0..a-1]] : a in Divisors(n)];
  d, n_inv, dummy := XGCD(n,N);
  reps := [];
  for r in R do
    for j in [1..#equivalents] do
       idx := 1;
       found := false;
       while (not found) and (idx le #equivalents[j]) do
          xr := det_n_reps[equivalents[j][idx]] * involution(M2N!r);
          // We lift to ZZ because magma can't compute ideal<M2N | d>
          if M2Z!xr in ideal<M2Z | d> then
            mod_rep := MatrixAlgebra(Integers(N div d), 2)!(M2Z!xr div d);
            mod_rep := n_inv * mod_rep;
            rep := FindLiftToM2Z(mod_rep)*M2Z!r;
            if M2N!rep eq det_n_reps[equivalents[j][idx]] then
              Append(~reps, rep);
              found := true;
            end if;
          end if;
          idx +:= 1;
      end while;
    end for;
  end for;
  return [Eltseq(rep) : rep in reps];
end function;

// Atkin-Lehner, based on the paper

// At the moment we assume either that a_q ne 0,
// or that f is a q-primitive newform with a_q = 0
// Here, q is the smallest prime factor of N. (for now)
function get_AL_eigenvalue(f, vec, KL, M)
    N := Level(M);
    k := Weight(M);
    G := GL(2, Integers(N));
    // start by finding the character
    X := DirichletGroup(N, KL);
    gens := UnitGenerators(X);
    mats := [PSL2(Integers()) | FindLiftToSL2(G![g^(-1),0,0,g]) : g in gens];
    diam := [Transpose(ActionOnModularSymbolsBasis(Eltseq(mat), M)) :
	     mat in mats];
    pivot := 1;
    while IsZero(vec[pivot]) do
	pivot +:= 1;
    end while;
    eps_vals := [(vec * ChangeRing(d, KL))[pivot] / vec[pivot] : d in diam];
    eps := DirichletCharacterFromValuesOnUnitGenerators(X,eps_vals);
    eps := Decomposition(eps)[1];
    q, beta_max := Explode(Factorization(N^2)[1]);
    Q := q^beta_max;
    a_q := Coefficient(f, q);
    zeta := Roots(CyclotomicPolynomial(N),KL)[1][1];
    if not IsZero(a_q) then
	return Q^(k div 2 - 1) * my_gauss_sum(eps, zeta) / Coefficient(f, Q);
    end if;
    alpha := Factorization(Conductor(eps))[1][2];
    chis := [];
    chi1s := [];
    for beta in [1..beta_max-1] do
	Q_prime := Maximum([Q, q^alpha*Q div q^beta, Q^2 div q^(2*beta)]);
	cond := [[q^beta], [Q div q^beta], [Q_prime * q^beta div Q]];
	for i in [1..3] do
	    if cond[i][1] eq q then
		Append(~cond[i], 1);
	    end if;
	end for;
	Append(~chis, [* chi : chi in Elements(DirichletGroup(cond[1][1], KL)) |
		 Conductor(chi) in cond[1] *]);
	chi1s_0 := [chi : chi in Elements(DirichletGroup(cond[2][1], KL)) |
		    Conductor(chi) in cond[2]];
	Append(~chi1s, [* [chi1 : chi1 in chi1s_0 |
		   Conductor(chi * eps * chi1) in cond[3]] : chi in chis *]);
    end for;
    all_chis := &cat chis;
    all_chi1s := &cat chi1s;
    chi0 := DirichletGroup(q, KL)!1;
    other_chis := &cat[[* eps^(-1)*chi1^(-1) : chi1 in all_chi1s[i] *]
		       : i in [1..#all_chi1s]];
    new_chis := [* *];
    for chi in other_chis do
	in_chis := exists(j){j : j in [1..#all_chis] | all_chis[j] eq chi};
	in_new := exists(j){j : j in [1..#new_chis] | new_chis[j] eq chi};
	if not in_chis and not in_new then
	    Append(~new_chis, chi);
	end if;
    end for;
    vars := all_chis cat new_chis;
    R<[x]> := PolynomialRing(KL, #vars);
    polys := [];
    for beta in [1..#chis] do
	for i in [1..#chis[beta]] do
	    chi := chis[beta][i];
	    poly := my_gauss_sum(chi^(-1), zeta) * x[i];
	    c := (chi(-1)*eps(-1)) / ((Q_prime / Q)*EulerPhi(Q div q^beta));
	    g_vals := [my_gauss_sum(chi1, zeta) *
		       my_gauss_sum(chi*eps*chi1, zeta)*
		       x[Index(vars, eps^(-1)*chi1^(-1))] :
		       chi1 in chi1s[beta][i]];
	    if #g_vals eq 0 then
		s := 0;
	    else
		s := &+g_vals;
	    end if;
	    poly -:= c*s*x[Index(vars, chi0)];
	    Append(~polys, poly);
	end for;
    end for;
    polys2 := [];
    for i in [1..#all_chis] do
	j := Index(vars, eps^(-1)*all_chis[i]^(-1));
	if j ne 0 then
	    Append(~polys2, x[i] * x[j] - eps(-1));
	end if;
    end for;
    all_polys := polys cat polys2;
    I := ideal<R | all_polys>;
    X := Scheme(AffineSpace(R), I);
    pts := Points(X);
    assert #pts eq 1;
    e := pts[1][Index(vars,chi0)];
    return e;
end function;
