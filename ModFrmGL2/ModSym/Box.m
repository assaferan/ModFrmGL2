freeze;

/*********************************************************************************
                                                                          
                  Modular Symbols in Magma                         

  Author: Eran Assaf
                                                                         
  FILE: Box.m (modular curve algorithm based on J. Box's paper)

  exports intrinsics:
  ModularCurve(G::GrpPSL2);                                 
                                                                      
*************************************************************************************
*/

import "linalg.m" : KernelOn, Restrict, RelativeBasis, RelativeEltseq;
import "operators.m" : ActionOnModularSymbolsBasis;

// function : gen_to_mat
// input: g - a matrix in GL(2,Q)
//        C - a space of cuspidal modular symbols, closed under the action of g
// output: the matrix describing the (left) action of g on C

function gen_to_mat(g, C)
    MS := AmbientSpace(C);
    vprintf ModularCurves, 1 : "computing action of \n%o\n", g;
    t := Cputime();
    gM := ActionOnModularSymbolsBasis(Eltseq(g), MS);
    vprintf ModularCurves, 1 : "\t\ttime = %o\n", Cputime(t);
    gC := Restrict(gM, VectorSpace(C));
    return Transpose(gC);
end function;

// function : make_nf_func
// input : a - an element of a number field K/F
//         F - the base ring (could probably remove this from the arguments)
//         f_F - a map from F to F.
// output : f(a), where f is the natural extension of f_F to K.

function make_nf_func(a, F, f_F)
    K := Parent(a);
    if K eq F then
	return f_F(a);
    end if;
    assert BaseRing(K) eq F;
    return &+[f_F(Eltseq(a)[i])*Basis(K)[i]
	      : i in [1..Degree(K)]];
end function;

// function : gauss_sum
// input: eps - a Dirichlet character
//        Q_huge - the coefficient field for the result
// output: g(eps), the Gauss sum of eps, in the field Q_huge.
// TODO: Q_huge is not really a parameter, only a coercion in the end, could move it outside.

function gauss_sum(eps, Q_huge)
    cond := Conductor(eps);
    chi := DirichletGroupFull(cond)!eps;
    if cond eq 1 then
	return Q_huge!1;
    end if;
    Q_cond<zeta_cond> := CyclotomicField(cond);
    Z_cond_star := [i : i in [0..cond-1] | GCD(i,cond) eq 1];
    gs := &+[zeta_cond^i*chi(i) : i in Z_cond_star];
    return Q_huge!gs;
end function;

// function : Rop
// input: eps - a Dirichlet character
//        SKpowersQ_L - a sequence [S_cond^i : i in [1..cond]]
//                     where cond = Cond(eps), and S_cond describes the action of [1, 1/cond, 1, 0]
// output: matrix describing the action of the twisting operator R_eps

function Rop(eps, SKpowersQ_L)
    cond := Conductor(eps);
    if cond eq 1 then
	return SKpowersQ_L[1][1]^0;
    end if;
    return &+[(eps^(-1))(i-1)*SKpowersQ_L[cond][i] : i in [1..cond]];
end function;

// function: pi
// input: mu - a vector in the space of modular symbols
//        oldspace_full - a subspace of the space of modular symbols which
//                        is the full image of an old subspace.
//        oldspaces - a sequence of the different components of oldspace_full,
//                    according to the different degeneracy maps.
//        B_mat - a matrix describing the degeneracy map corresponding to inclusion (d = 1)
// output: If mu is in oldspace_full, pi(mu), the projection of mu to the subspace corresponding to d = 1.
//         Otherwise, returns mu.

function pi(mu, oldspace_full, oldspaces, B_mat)
    Kf := BaseRing(Parent(mu));
    if mu in ChangeRing(oldspace_full, Kf) then
	oldsps := [ChangeRing(s, Kf) : s in oldspaces];
	basis := &cat [Basis(s) : s in oldsps];
	oldsp := VectorSpaceWithBasis(basis);
	bb := Solution(Matrix(Basis(oldsp)), mu);
    else
	return mu;
    end if;
    dd := [Dimension(s) : s in oldspaces];
    cumsum := [&+dd[1..i] : i in [0..#dd]];
    mus := [&+[bb[i]*Basis(oldsp)[i] : i in [cumsum[j]+1..cumsum[j+1]]]
	       : j in [1..#dd]];
    assert &+mus eq mu;
    return mus[1]*ChangeRing(Transpose(B_mat), Kf);
end function;

// function: pr
// input: flist - a list of coefficients of the q-expansion f of a twist of a newform
//        check - a list of indices in which to check equality of coefficients
//        Nold - a list of eigenforms in a certain old subspace, to test against.
//        prec - required precision
//        Kf_to_KK - an embedding of the field Kf (over Q_L) to the field KK (over Q_huge)
// output: pr(f), the projection of f onto Nold.
//         (so that f - pr(f) vanishes at all indices in check, which are the ones prime to the level)

function pr(flist, check, Nold, prec, Kf_to_KK)
    folds := [f : f in Nold |
	      &and[Coefficients(AbsoluteMinimalPolynomial(flist[i]))
		   eq Coefficients(AbsoluteMinimalPolynomial(Coefficient(f,i)))
		   : i in check]];
    assert #folds eq 1;
    fold := folds[1];
    Kf := Domain(Kf_to_KK);
    KK := Codomain(Kf_to_KK);
    assert KK eq Universe(flist);
    Kfold := BaseRing(Parent(fold));
    if Type(Kfold) ne FldRat then
       _, Kfold_to_Kf := IsSubfield(Kfold, Kf);
    else
       Kfold_to_Kf := hom<Kfold->Kf|>;
    end if;
    aut := Automorphisms(AbsoluteField(Kfold));
    embs := [a*Kfold_to_Kf*Kf_to_KK : a in aut];
    embs := [e : e in embs | &and[e(Coefficient(fold, i)) eq flist[i]
				  : i in check]];
    // Again - no longer true with character
    // assert #embs eq 1;
    assert #embs ge 1;
    return [embs[1](Coefficient(fold, i)) : i in [1..prec-1]];
end function;

// function: chartwist
// input: flist - a list of coefficients of the q-expansion f of a newform.
//        chi - a Dirichlet character
//        Q_L_t_Q_huge - a embedding of Q_L into Q_huge
// ouptut: a list of the coefficients of f twisted by chi.

function chartwist(flist, chi, Q_L_to_Q_huge)
    return [Q_L_to_Q_huge(chi(n))*flist[n] : n in [1..#flist]];
end function;

// function: IsEqualPowerSeries
// input: f,g - two power series
// output: true if there is an isomorphism between their base fields sending one to the other.

function IsEqualPowerSeries(f, g)
    Kf := BaseRing(Parent(f));
    Kg := BaseRing(Parent(g));
    if (Type(Kf) eq FldRat) or (Type(Kg) eq FldRat) then
	is_isom := IsIsomorphic(Kf, Kg);
	if is_isom then phi := hom<Kf->Kg|>; end if;
    else
	is_isom, phi := IsIsomorphic(Kf, Kg);
    end if;
    if not is_isom then return false; end if;
    auts := Automorphisms(Kg);
    embs := [phi*aut : aut in auts];
    prec := Minimum(AbsolutePrecision(f), AbsolutePrecision(g));
    return exists(e){e : e in embs |
		     &and[e(Coefficient(f, i))
			  eq Coefficient(g,i) : i in [0..prec-1]]};
end function;

// procedure: add_old_twists
// input: new_mutwists - a list of twists of a vector mu in the space of modular symbols
//        new_ftwists - a list of the coefficients of the q-expansions of the forms corresponding to
//                      the vectors in new_mutwists
//        new_powerlist - a list of exponents of the characters corresponding to each of the twists
//        ftws - the same as new_ftwists but without normalizing by the gauss sums
//        oldspaces_full - the images of the old subspaces
//        oldspaces - a list of the list of images of each of the degeneracy maps for each old subspace
//        Kf - the coefficient field of f (over Q_L)
//        B_mats - the matrices representing the degeneracy maps
//        Tr_mats - the matrices representing the dual (trace) degeneracy maps
//        num_coset_reps - the number of coset representatives for each degeneracy map
//        alist - the original list of coefficients of the q-expansion of f
//        Nold - the q-expansions of the eigenforms in each of the old subspaces.
//        prec - required precision
//        deg_divs - the divisors of the degeneracy maps
//        Q_huge - the cyclotomic field continaing Q_L and Q_K.
//        qKK - a variable for the power series ring
//        chis - the basis of Dirichlet characters
//        Nnew - the q-expansions of the eigenforms in the new subspace.
//        Kf_to_KK - the embedding of Kf into KK
// output: new_mutwists - the projections of each of the vectors in new_mutwists to the relevant old subspace,
//                        and their images by the corresponding degeneracy maps
//         new_ftwists ad new_powerlist will contain the corresponsing q-expansions and character exponents.

procedure add_old_twists(~new_mutwists, ~new_ftwists, ~new_powerlist,
			 ftws, oldspaces_full, oldspaces,
			 Kf, B_mats, Tr_mats, num_coset_reps,
			 alist, Nold, prec, deg_divs, Q_huge,
			 qKK, chis, Nnew, Kf_to_KK)
    n_mutwists := [];
    n_ftwists := [];
    n_powerlist := [];
    for mutw_idx in [1..#new_mutwists] do
	mutw := new_mutwists[mutw_idx];
	gs := gauss_sum(chis[mutw_idx], Q_huge);
	ftw := ftws[mutw_idx];
	cond := Conductor(chis[mutw_idx]);
	check := [i : i in [1..Min(#alist, prec - 1)] | GCD(i, cond) eq 1];
	is_old := false;
	for sp_idx in [1..#oldspaces_full] do
	    if mutw in ChangeRing(oldspaces_full[sp_idx], Kf) then
		is_old := true;
		ftwpr := pr(ftw, check, Nold[sp_idx], prec, Kf_to_KK);
		for j in [1..#deg_divs[sp_idx]] do
		    d := deg_divs[sp_idx][j];
		    n_mutwists cat:= [pi(mutw, oldspaces_full[sp_idx],
				       oldspaces[sp_idx],
				       B_mats[sp_idx][1]) *
				    Transpose(ChangeRing(Tr_mats[sp_idx][j],Kf))
				    / num_coset_reps[sp_idx]];
		    ftwprB := &+[gs*ftwpr[j]*qKK^(d*j) : j in [1..prec-1]];
		    n_ftwists cat:= [[Coefficient(ftwprB,idx)
					: idx in [1..prec-1]]];
		    Append(~n_powerlist, new_powerlist[mutw_idx]);
		end for;
		break;
	    end if;
	end for;
	if not is_old then
	    ftwpr := pr(ftw, check, Nnew, prec, Kf_to_KK);
	    n_mutwists cat:= [mutw];
	    ftwprB := &+[gs*ftwpr[j]*qKK^(j) : j in [1..prec-1]];
	    n_ftwists cat:= [[Coefficient(ftwprB,idx)
					: idx in [1..prec-1]]];
	    Append(~n_powerlist, new_powerlist[mutw_idx]);
	end if;
    end for;
    new_mutwists := n_mutwists;
    new_ftwists := n_ftwists;
    new_powerlist := n_powerlist;
    return;
end procedure;

// function: make_real_twist_orbit
// input: alist - a list of coefficients of the q-expansion of f
//        primes - a list of prime numbers
//        Kf_to_KK - an embedding of Kf into KK
//        Tpluslist - a list of the Hecke operators on the plus subspace
//                    Tpluslist[i] is the Hecke operator at the prime primes[i]
//        prec - required precision
//        cc - complex conjugation
//        NN - list of all q-expansions of eigenforms
//        Nold - list of q-expansions of eigenforms in each of the old subspaces
//        oldspaces_full - the images of the old subspaces
//        oldspaces - the images of each degeneracy map from an old subspace
//        C - the cuspidal modular symbols subspace
//        Cplus - the plus subspace (fixed under the star involution)
//        chis - a basis or the Dirichlet characters
//        Q_huge - the large coefficient field (containing Q_K and Q_L)
//        zeta_K - K-th root of unity
//        K - an integer.
//        SKpowersQ_L - the list of powers of the matrices S_cond for the twisting of characters
//        B_mats - matrices of degeneracy maps
//        Tr_mats - matrices of the dual (trace) degeneracy maps
//        deg_divs - divisors corresponding to the degeneracy maps
//        num_coset_reps - the number of coset representatives corresponding to each degeneracy map
//        Q_L_to_Q_huge - an embedding of Q_L into Q_huge
//        Nnew - the q-expansions of the eigenforms in the new subspace.
// output: V = V(f) - a vector space spanned by the twists and degeneracy maps applied to f
//             V is equipped with the twists as a basis.
//         ftwists - a list of the coefficients of the q-expansions corresponding to each of these twists
//         powerlists - the exponents of the Dirichlet characters corresponding to each of these twists

function make_real_twist_orbit(alist, primes, Kf_to_KK, Tpluslist,
			       prec, cc, NN, Nold,
			       oldspaces_full, oldspaces,
			       C, Cplus, chis,
			       Q_huge, zeta_K,
			       K, SKpowersQ_L,
			       B_mats,
			       Tr_mats,
			       deg_divs,
			       num_coset_reps,
			       Q_L_to_Q_huge, Nnew)
    Kf := Domain(Kf_to_KK);
    dim := Dimension(C);
    fpos :=[g : g in NN |
	    &and[Coefficients(MinimalPolynomial(alist[i]))
		 eq Coefficients(MinimalPolynomial(Coefficient(g,i)))
		 : i in [1..#alist]]];
    assert #fpos eq 1;
    f := fpos[1];
    F := BaseRing(Parent(f));
    if (Type(F) eq FldRat) then
	embs := [hom<F->Kf|>];
    else
	embs := [hom<F->Kf | r[1]> : r in Roots(DefiningPolynomial(F),Kf)];
    end if;
    embs := [e : e in embs | &and[e(Coefficient(f, i)) eq alist[i]
				  : i in [1..#alist]]];
    // assert #embs eq 1;
    assert #embs ge 1;
    emb := embs[1];
    flist := [Kf_to_KK(emb(Coefficient(f,i))) : i in [1..prec-1]];
    subsp := VectorSpace(Kf, dim);
    for i in [1..#Nold] do
	if exists(g){g : g in Nold[i] | IsEqualPowerSeries(f,g)} then
	    subsp := ChangeRing(oldspaces[i][1], Kf);
	    break;
	end if;
    end for;

    intsn := VectorSpace(Kf, Dimension(C) div 2);
    for i in [1..#Tpluslist] do
	T := Tpluslist[i];
	intsn := intsn meet Kernel(ChangeRing(T, Kf) - Kf!alist[primes[i]]);
    end for;
    Hb := [x*ChangeRing(BasisMatrix(Cplus),Kf) : x in Basis(intsn)];
    H := sub<Universe(Hb)|Hb> meet subsp;
    // This is no longer true with character
    // This space will consist of both f and its conjugate.
    // !! Take care - maybe have to choose consistently
    assert Dimension(H) eq 1;
    // assert Dimension(H) ge 1;
    mu := Basis(H)[1];
    LKK<qKK> := PowerSeriesRing(Codomain(Kf_to_KK), prec);
    
    zero_vec := Vector([0 : chi in chis]);

    // This is just for coercing issues.
    mu0 := mu*ChangeRing(Transpose(Rop(Universe(chis)!1,SKpowersQ_L)), Kf);
    
    base_mutwists := [mu0];
    base_ftwists := [flist];
    base_powerlist := [zero_vec];

    orig_mutwists := [[mu0]];
    orig_ftws := [[flist]];
    orig_powerlist := [[zero_vec]];
    
    add_old_twists(~base_mutwists, ~base_ftwists, ~base_powerlist,
		   [flist], oldspaces_full, oldspaces,
		   Kf, B_mats, Tr_mats, num_coset_reps,
		   alist, Nold, prec, deg_divs, Q_huge,
		   qKK, [Universe(chis)!1], Nnew, Kf_to_KK);

    mutwists := [base_mutwists];
    ftwists := [base_ftwists];
    powerlist := [base_powerlist];
    
    for gen_idx in [1..#chis] do
	chi := chis[gen_idx];
	n_chi := Order(chi);
	e_chi := Vector([0 : j in [1..gen_idx-1]] cat [1]
			cat [0 : j in [gen_idx+1..#chis]]);
	for i in [1..n_chi-1] do
	    new_powerlist := [v + e_chi : v in orig_powerlist[#powerlist]];

	    chars := [&*[chis[i]^(-exp[i]) : i in [1..#chis]]
		      : exp in new_powerlist];

	    chars := [* DirichletGroupFull(Conductor(eps))!eps
		      : eps in chars *];

	    new_ftws := [chartwist(flist, eps^(-1), Q_L_to_Q_huge)
			 : eps in chars];
	    
	    new_ftwists := [[gauss_sum(chars[i], Q_huge)*a
			     : a in new_ftws[i]] : i in [1..#chars]];
	    
	    new_mutwists := [mu*ChangeRing(Transpose(Rop(eps,
							SKpowersQ_L)), Kf)
			     : eps in chars];

	    Append(~orig_powerlist, new_powerlist);
	    Append(~orig_ftws, new_ftws);
	    Append(~orig_mutwists, new_mutwists);
	    
	    add_old_twists(~new_mutwists, ~new_ftwists, ~new_powerlist,
			 new_ftws, oldspaces_full, oldspaces,
			 Kf, B_mats, Tr_mats, num_coset_reps,
			 alist, Nold, prec, deg_divs, Q_huge,
			 qKK, chars, Nnew, Kf_to_KK);

	    Append(~powerlist, new_powerlist);
	    Append(~ftwists, new_ftwists);
	    Append(~mutwists, new_mutwists);
	end for;
	
	orig_powerlist := [&cat orig_powerlist];
	orig_ftws := [&cat orig_ftws];
	orig_mutwists := [&cat orig_mutwists];
	
	powerlist := [&cat powerlist];
	ftwists := [&cat ftwists];
	mutwists := [&cat mutwists];
    end for;
    powerlist := powerlist[1];
    ftwists := ftwists[1];
    mutwists := mutwists[1];
    return VectorSpaceWithBasis(mutwists), ftwists, powerlist;
end function;

// function: coeffs_by_zeta
// input: x - an element of a number field K(f) over Q_L
//        Q_g - a cyclotomic field of order g dividing L
//        Q_L - a cyclotomic field
// output: elements x_k such that x = sum x_k zeta_g^k

// When we have an element of a number field over a cyclotomic field
function coeffs_by_zeta(x, Q_g, Q_L, Q_g_to_Kf)
    Kf := Parent(x);
    d := Degree(Q_g);
    if IsIsomorphic(Kf, Q_g) then
	auts := Automorphisms(Q_g);
	assert exists(aut){aut : aut in auts | Q_g_to_Kf(aut(Q_g!x)) eq x};
	pre_x := aut(Q_g!x);
	assert Q_g_to_Kf(pre_x) eq x;
	return Eltseq(pre_x);
//	return Eltseq(Q_g!x);
	// wishful thinking - the map has no inverse defined.
	// return Eltseq(x@@Q_g_to_Kf);
    end if;
    if Kf eq Q_L then
	Kf_Q_g := RelativeField(Q_g, Q_L);
	x_k := [Kf!Kf_Q_g![y[j] : y in [Eltseq(z) : z in Eltseq(Kf_Q_g!x)]]
		: j in [1..d]];
    else
	//	if Q_L eq Q_g then
	if IsIsomorphic(Q_L, Q_g) then
	    // we have x = sum a_i alpha^i, where alpha generates Kf over Q_L
	    // with a_i in Q_L.
	    // Then a_i = sum a_{ij} zeta^j, 
	    // so x = sum a_{ij} alpha^i zeta^j with a_{ij} in Q
	    // If we write x_j = sum a_{ij} alpha^i, then we want to get the x_j.
	    // Note that Eltseq(x)_i = a_i = sum a_{ij} zeta^j
	    a_is := Eltseq(x);
	    // Eltseq(a_i)_j = a_{ij}
	    a_ijs := [Eltseq(Q_g!a_i) : a_i in a_is];
	    // x_j = sum a_{ij} alpha^i
	    x_k := [Kf![a_i[j] : a_i in a_ijs] : j in [1..d]];
	else
	    Q_L_Q_g := RelativeField(Q_g, Q_L);
	    // Kf_Q_g := ext<Q_L_Q_g | DefiningPolynomial(Kf)>;
	    // we have x = sum a_i alpha^i, where alpha generates Kf over Q_L
	    // with a_i in Q_L.
	    // Then a_i = sum a_{ij} beta^j, where beta generates Q_L over Q_g
	    // so x = sum a_{ij} alpha^i beta^j with a_{ij} in Q_g
	    // Finally, in Q_g we have a_{ij} = sum a_{ijk} zeta^k with a_{ijk} in Q.
	    // so x = sum a_{ijk} alpha^i beta^j zeta^k.
	    // If we write x_k = sum a_{ijk} alpha^i beta^j, then we want to get the x_k.
	    // Note that Eltseq(x)_i = a_i = sum a_{ijk} beta^j zeta^k
	    a_is := Eltseq(x);
	    // Eltseq(Q_L_Q_g!a_i)_j = a_{ij} = sum a_{ijk} zeta^k
	    a_ijs := [Eltseq(Q_L_Q_g!a_i) : a_i in a_is];
	    // a_{ijk} = Eltseq(a_ij)
	    a_ijks := [[Eltseq(a_ij) : a_ij in row] : row in a_ijs];
	    // y_{ki} = sum a_{ijk} beta^j
	    y_ki := [[Q_L!Q_L_Q_g![a_ij[k] : a_ij in a_i] : a_i in a_ijks] : k in [1..d]];
	    // x_k = sum y_{ki} alpha^i
	    x_k := [Kf!y_k : y_k in y_ki];
	end if;
    end if;
    return x_k;
end function;

// function: Pdmatrix
// input: Pd - an automorphism of KK extending sigma_d, the automorphism of Q_K given by zeta_K |-> zeta_K^d
//        d - the integer representing the automorphism sigma_d
//        powerlist - list of exponents of Dirichlet characters corresponding to the twists used as basis
//        chis - a basis for the Dirichlet characters
//        Q_L - cyclotomic field of order L
//        Q_huge - cyclotomic field containing Q_K and Q_L
//        zeta_K - K-th order root of unity
//        K - an integer
//        Q_L_to_Q_huge - an embedding of Q_L into Q_huge
//        Q_K_to_Q_huge - an embedding of Q_K into Q_huge
//        perm_d - a permutation describing the way sigma_d permutes the basis f_j.
// output: a matrix representing the action of sigma_d on the twist orbit space
//         in the basis zeta_K^i g(chi_j^(-1)) f_j, where f_j are the unnormalized twists
//         (on which sigma_d acts via the permutation perm_d), chi_j are the corresponding characters
//         and g(chi_j^(-1)) are the gauss sums, so that g(chi_j^(-1)) f_j is the basis for the
//         twist orbit space over Q_K.
// The basis here is first f_1, f_2, \ldots, f_n,
// zeta f_1, \ldots zeta f_n, and so forth

function Pdmatrix(Pd, d, powerlist, chis,
		  Q_L, Q_huge, zeta_K, K,
		  Q_L_to_Q_huge, Q_K_to_Q_huge, perm_d)
    n := #powerlist;
    chars := [&*[chis[i]^(-exp[i]) : i in [1..#chis]]
	      : exp in powerlist];
    
    chars := [* DirichletGroupFull(Conductor(eps))!eps
	      : eps in chars *];
 
    gs_ratios := [Pd(gauss_sum(chars[i], Q_huge))
		  /gauss_sum(chars[perm_d[i]], Q_huge)
		  : i in [1..#chars]];

    list := [];
    Q_K := Domain(Q_K_to_Q_huge);
    zeta_L := Q_L.1;
    L := EulerPhi(K) div 2;
    L0 := L div GCD(K,L);
    zeta_L0 := zeta_L^GCD(K,L);
    _, u, v := XGCD(K,L0);
    // Here we use the fact that zeta = zeta^(uK+vL0) = zeta_L0^u*zeta_K^v
    // since zeta = zeta_LCM(K,L)
    for i in [0..EulerPhi(K)-1] do
	j := (d*i) mod K;
	elts := [Eltseq(zeta_K^j * x) : x in gs_ratios];
	coeffs := [&+[zeta_L0^(u*i)*x_elt[i+1]*Vector(Q_L,Eltseq(zeta_K^(v*i)))
			    : i in [0..Degree(Q_huge)-1]] : x_elt in elts];
	Append(~list, [MonomialMatrix(n,n,[gr[i] : gr in coeffs], perm_d)
				     : i in [1..EulerPhi(K)]]);
    end for;
    return BlockMatrix(list);
end function;

// function: fixed_cusp_forms_QQ
// input: as - a list of coefficients of q-expansions of eigenforms in the cusp form space.
//        primes - a list of primes for the Hecke operators
//        Tpluslist - a list of Hecke operators on the plus subspace at the primes
//        Kf_to_KKs - a list of field embeddingd from the coefficient fields over Q_L to over Q_huge
//        prec - required precision
//        GFS - the subspace of vectors fixed by Gamma (G meet SL2)
//        Bmats - matrices describing the SL2-part of the action of the generators ith nontrivial determinant
//        Pds - automorphisms extending the morphisms sigma_d of Q_K
//        ds - a list of integer corresponding to the automorphisms sigma_d of Q_K, matching the Bmats
//        cc - complex conjugation
//        NN - list of all eigenforms
//        Nold - list of eigenforms sorted by the old subspaces
//        oldspaces_full - the images of the old subspaces
//        oldspaces - the images of the degeneracy maps from the old subspaces
//        C - the cuspidal space of modular symbols
//        Cplus - the plus subspace (fixed under the star involution) of C.
//        chis - a basis for the Dirichlet characters
//        Q_huge - cyclotomic field containing Q_K and Q_L
//        Q_L - cyclotomic field containing the image of the Dirichlet characters
//        zeta_huge - a root of unity generating Q_huge
//        zeta_K - a K-th root of unity
//        K - an integer
//        SKpowersQ_L - list of powers of the action of S_cond on C, for all conductors of characters
//        B_mats - matrices of degeneracy maps
//        Tr_mats - matrices od degeneracy trace maps
//        deg_divs - divisors corresponding to degeneracy maps
//        num_coset_reps - number of coset representatives for each degeneracy map.
//        J - the star involution.
//        Q_K_plus_to_Q_K - embedding of the totally real subfield in Q_K
//        Q_K_to_Q_huge - embedding of Q_K in Q_huge
//        Q_L_to_Q_huge - embedding of Q_L in Q_huge
//        Q_gcd - intersection of Q_K and Q_L.
//        zeta_gcd - a root of unity generating Q_gcd.
//        Q_gcd_to_Q_K - an embedding of Q_gcd into Q_K.
//        Nnew - the eigenforms corresponding to the new subspace
// output: fs - a list of coefficients of q-expansions that are fixed under G.
//              i.e. they lie in GFS and are fixed by the actions of Bmats[i]*sigma_ds[i]
//         tos - the indices of the orbit spaces from which the cusp forms originate.

function fixed_cusp_forms_QQ(as, primes, Tpluslist, Kf_to_KKs, prec,
			     GFS, Bmats, Pds, ds,
			     cc, NN, Nold,
			     oldspaces_full,
			     oldspaces,
			     C, Cplus, chis,
			     Q_huge, Q_L, zeta_huge, zeta_K,
			     SKpowersQ_L,
			     B_mats,
			     Tr_mats,
			     deg_divs,
			     num_coset_reps, J,
			     Q_K_plus_to_Q_K, Q_K_to_Q_huge, Q_L_to_Q_huge,
			     Q_gcd, zeta_gcd, Q_gcd_to_Q_K, Nnew, eps_BPd_gens,
			     gcd_fields, gcd_field_embs)
    assert prec ge #as + 1;
    Q_K := Parent(zeta_K);
    K := CyclotomicOrder(Q_K);
    FCF := [];
    twist_orbit_indices := [];
    already_visited := {};
    i := 1;
    KK_aps := [*[Kf_to_KKs[j](aps[j]) : aps in as] : j in [1..#as[1]]*];
    fs := [];
    // we now stop once we collect enough forms
    while (#already_visited lt #as[1]) and (2*#fs lt Dimension(GFS)) do
	while (i in already_visited) do
	    i +:= 1;
	end while;
	vprintf ModularCurves, 1 : "Computing twist orbit no. %o out of %o\n", i, #as[1];
	alist := [aps[i] : aps in as];
	Kf_to_KK := Kf_to_KKs[i];
	Kf := Domain(Kf_to_KK);
	KK := Codomain(Kf_to_KK);
	Q_huge_to_KK := hom<Q_huge->KK | KK!zeta_huge>;
	real_twist_orbit_ms, twist_mfs, powerlist :=
	    make_real_twist_orbit(alist, primes, Kf_to_KK, Tpluslist,
				  prec, cc, NN, Nold,
				  oldspaces_full, oldspaces,
				  C, Cplus, chis,
				  Q_huge, zeta_K,
				  K, SKpowersQ_L,
				  B_mats,
				  Tr_mats,
				  deg_divs,
				  num_coset_reps,
				  Q_L_to_Q_huge, Nnew);
	// making sure we can identify forms uniquely
//	assert Rank(Matrix(twist_mfs)) eq #twist_mfs;
	twist_all_aps := [* *];
	for twist_mf in twist_mfs do
	    nonzero := exists(pivot){pivot : pivot in [1..#twist_mf]
				     | twist_mf[pivot] ne 0};
	    if nonzero then
		twist_aps := [x/twist_mf[pivot] : x in twist_mf];
	    else
		twist_aps := twist_mf;
	    end if;
	    Append(~twist_all_aps, twist_aps);
	    inlist := exists(j){j : j in [1..#as[1]] |
				BaseRing(Universe(KK_aps[j])) eq
				BaseRing(Universe(twist_aps)) and
				&and[MinimalPolynomial(KK_aps[j][l]) eq
				     MinimalPolynomial(twist_aps[l]) : l in [1..Min(#as, prec-1)]]};
	    if inlist then
		Include(~already_visited, j);
	    end if;
	end for;
	twist_orbit_index := [];
	FCF_orbit := [];
	fixed_space_basis := Basis(ChangeRing(GFS, Kf)
					     meet real_twist_orbit_ms);
	dim_orbit := Dimension(real_twist_orbit_ms);
	vprintf ModularCurves, 1 : "Dimension of orbit is %o\n", dim_orbit;
	if #fixed_space_basis gt 0 then
	    // latest addition - let us see if it works
	    // idea - sometimes Kf intersects Q_K in more than Q_L
	  
	    Q_gcd<zeta_gcd> := gcd_fields[i];
	    Q_gcd_to_Kf := gcd_field_embs[i][1];
	    Q_gcd_to_Q_K := gcd_field_embs[i][2];
	    Q_K<zeta_K> := Domain(Q_K_to_Q_huge);
	    
	    // ends here
            vprintf ModularCurves, 1 :
		"Orbit intersects fixed space with dimension %o.\n", #fixed_space_basis;
	    vprintf ModularCurves, 1 : "Finding G-fixed vectors...\n";
	    fixed_basis_cfs :=
		[Eltseq(Solution(BasisMatrix(real_twist_orbit_ms), mu))
		 : mu in fixed_space_basis];
	    
	    coeffs_zeta := [[coeffs_by_zeta(b, Q_gcd, Q_L, Q_gcd_to_Kf) : b in b_imgs]
			    : b_imgs in fixed_basis_cfs];
	    zeta_to_Q_K := [[Vector(Kf,Eltseq(Q_gcd_to_Q_K(zeta_gcd)^i
					    *zeta_K^r))
			   : i in [0..Degree(Q_gcd)-1]]
			  : r in [0..EulerPhi(K)-1]];
	    fb_imgs_tr := [[[&+[cz[l][i+1]*zeta_to_Q_K[r+1][i+1]
			       : i in [0..Degree(Q_gcd)-1]]
			     : l in [1..dim_orbit]]
			    : r in [0..EulerPhi(K)-1]]
			  : cz in coeffs_zeta];
	    fb_imgs_block := [Matrix([Vector(Eltseq(Transpose(Matrix(fb_img_tr[r+1]))))
					     : fb_img_tr in fb_imgs_tr])
				      : r in [0..EulerPhi(K)-1]];
	    fixed_basis_block := VerticalJoin(fb_imgs_block);
	    fixed_ms_space_QQ := VectorSpace(Kf,EulerPhi(K)*#fixed_space_basis);
	
	    for k in [1..#Bmats] do
		Bmat := Bmats[k];
		Pd := Pds[k];
		d := ds[k];
		B_imgs := [mu*ChangeRing(Transpose(Bmat),Kf)
			   : mu in fixed_space_basis];
		// This fails for 8A3 with character. Why?
		// assert &and[mu*ChangeRing(Transpose(J),Kf)
		// 	    eq mu : mu in B_imgs];
		B_imgs_cfs :=
		    [Eltseq(Solution(BasisMatrix(real_twist_orbit_ms),
				     ChangeRing(mu,Kf))) : mu in B_imgs];

		coeffs_zeta := [[coeffs_by_zeta(b, Q_gcd, Q_L, Q_gcd_to_Kf) : b in b_imgs]
				: b_imgs in B_imgs_cfs];
		B_imgs_tr := [[[&+[cz[l][i+1]*zeta_to_Q_K[r+1][i+1]
				   : i in [0..Degree(Q_gcd)-1]]
				: l in [1..dim_orbit]]
			       : r in [0..EulerPhi(K)-1]]
			      : cz in coeffs_zeta];
		B_imgs_block := [Matrix([Vector(Eltseq(Transpose(Matrix(b_imgs_tr[r+1]))))
					        : b_imgs_tr in B_imgs_tr])
					 : r in [0..EulerPhi(K)-1]];
		B_imgs_block := VerticalJoin(B_imgs_block);

		perm_d := [Index(twist_all_aps, [Pd(x) : x in twist_ap])
			   : twist_ap in twist_all_aps];
		// Check that the Pd action does permute the basis elements
		assert Sort(perm_d) eq [1..dim_orbit];
		pd_mat := Pdmatrix(Pd,d,powerlist,chis, Q_L, Q_huge,
				   zeta_K, K, Q_L_to_Q_huge,Q_K_to_Q_huge,
				   perm_d);
		// The inverse is for action on the symbols,
		// which is complex conjugated.
//		B_pd_mat := B_imgs_block * ChangeRing(pd_mat, Kf)^(-1);
                B_pd_mat := B_imgs_block * ChangeRing(pd_mat, Kf);
		B_pd_cfs := Solution(fixed_basis_block, B_pd_mat);
		I_mat := IdentityMatrix(Kf,EulerPhi(K)*#fixed_space_basis);
		fixed_B_pd := Kernel(B_pd_cfs - eps_BPd_gens[k]^(-1)*I_mat);
		fixed_ms_space_QQ meet:= fixed_B_pd;
	    end for;
	    // With characters this is no longer true as GFS
	    // is the restriction of scalars to QQ
	    assert Dimension(fixed_ms_space_QQ) eq #fixed_space_basis;
	    
	    // Here we need to take complex conjugates because of Proposition 4.10 in [Box]
	    
	    fmssQQ_cc := [[cc(Kf_to_KK(a)) : a in Eltseq(v)]
			  : v in Basis(fixed_ms_space_QQ)];
	    fixed_basis_cfs_cc := [[cc(Kf_to_KK(a)) : a in mulist]
				   : mulist in fixed_basis_cfs];
	    fixed_cusp_forms_orbit_raw :=
		[&+[clist[i]*Vector(twist_mfs[i]) : i in [1..#clist]]
		 : clist in fixed_basis_cfs_cc];
	    fcf_ext := &cat[[Vector(Q_K_to_Q_huge(zeta_K^(-i))*f)
			     : f in fixed_cusp_forms_orbit_raw]
			    : i in [0..EulerPhi(K)-1]];
	    fsols := [&+[fmssQQ_cc[i][j]*fcf_ext[j] : j in [1..#fcf_ext]]
		      : i in [1..#fmssQQ_cc]];

	    // We look for things fixed by the automorphisms of KK that leave Q_K fixed.
	    // There are several ways to do this, here we take a direct one.

	    // !! TODO - Here we have a problem if KK is not Galois over Q_huge
	    // Taking the normal closure is very expensive,
	    // see e.g. 71A6, 79A6
	    
	    // Step I - summing over automorphisms of KK/Q_huge
	    if KK ne Q_huge then
		vprintf ModularCurves, 2 : "Degree of the field KK is %o. ", Degree(KK);
		vprintf ModularCurves, 2 : "Extending the forms.\n";
		xi := KK.1;
		basis := [xi^i : i in [0..Degree(KK)-1]];
		fsols := &cat[[[Trace(b*v[i]) : i in [1..Degree(v)]]
				  : b in basis] : v in fsols];
		// we leave out the first term, since it corresponds to F
		// and we just want to zero out all the other coefficients
		// vecs_Q_huge := [&cat[Eltseq(v[j])[2..Degree(KK)] :
		//		     j in [1..Degree(v)]] : v in all_vecs];
		// ker := Kernel(Matrix(vecs_Q_huge));
		// fsols := [&+[b[i]*all_vecs[i] : i in [1..#all_vecs]] : b in Basis(ker)];
		/*
		aut_KK := Automorphisms(KK);
		xi := KK.1;
		fsols_conj := [[Vector([sig(a) : a in Eltseq(f)])
			    : f in fsols] : sig in aut_KK];
		xi_conj := [sig(xi) : sig in aut_KK];
		// fixed_cusp_forms_orbit_ns :=
		fsols := 
		    &cat[[&+[xi_conj[l]^j * fsols_conj[l][i] : l in [1..#aut_KK]]
			 : j in [0..Degree(KK)-1]]
			 : i in [1..#fsols] ];
	       */
	    end if;

	    // Step II - summing over automorphisms of Q_huge/Q_K
	    L := EulerPhi(K);
	    if IsEven(L) then L div:= 2; end if;
	    L_0 := L div GCD(K,L);
	    powers := [CRT([1,a],[K,L_0]) : a in [1..L_0] | GCD(a,L_0) eq 1];
	    aut_Q_huge := [hom<Q_huge -> Q_huge | zeta_huge^pow> : pow in powers];
	    xi := zeta_huge^K;
	    fsols_conj := [[Vector([sig(a) : a in Eltseq(f)])
			    : f in fsols] : sig in aut_Q_huge];
	    xi_conj := [sig(xi) : sig in aut_Q_huge];
	    fixed_cusp_forms_orbit_ns :=
		&cat[[&+[xi_conj[l]^j * fsols_conj[l][i] : l in [1..#aut_Q_huge]]
		      : j in [0..EulerPhi(L_0)-1]]
		     : i in [1..#fsols] ];

	    Q_K_plus := Domain(Q_K_plus_to_Q_K);
	    in_Q_K := &and &cat[ [IsCoercible(Q_K, a) : a in Eltseq(f)]
				 : f in fixed_cusp_forms_orbit_ns ];
	    
	    if in_Q_K then
		in_Q_K_plus := &and &cat[ [IsCoercible(Q_K_plus, Q_K!a) : a in Eltseq(f)]
					  : f in fixed_cusp_forms_orbit_ns ];
		if in_Q_K_plus then
		    fixed_cusp_forms_orbit_Q_K_plus :=
			[Vector([(a@@Q_K_to_Q_huge)@@Q_K_plus_to_Q_K : a in Eltseq(f)])
			 : f in fixed_cusp_forms_orbit_ns];
		    vprintf ModularCurves, 1 : "Coefficients are in Q_K_plus.\n";
		else
		    fixed_cusp_forms_orbit_Q_K_plus :=
		    [Vector([a@@Q_K_to_Q_huge : a in Eltseq(f)])
		     : f in fixed_cusp_forms_orbit_ns];
		    vprintf ModularCurves, 1 : "Coefficients are in Q_K.\n";
		end if;
	    else
		in_Q_huge := &and &cat[ [IsCoercible(Q_huge, a) : a in Eltseq(f)]
					: f in fixed_cusp_forms_orbit_ns ];
		if in_Q_huge then
		    fixed_cusp_forms_orbit_Q_K_plus :=
			[Vector([Q_huge!a  : a in Eltseq(f)]) : f in fixed_cusp_forms_orbit_ns];
		    vprintf ModularCurves, 1 : "Coefficients are in Q_huge.\n";
		else
		    fixed_cusp_forms_orbit_Q_K_plus := fixed_cusp_forms_orbit_ns;
		    vprintf ModularCurves, 1 : "Coefficients are not in Q_huge!\n";
		end if;
	    end if;

	    FF := BaseRing(fixed_cusp_forms_orbit_Q_K_plus[1]);
	    deg := Degree(fixed_cusp_forms_orbit_Q_K_plus[1]);
	    Q_mat := Matrix([&cat[Eltseq(a) : a in Eltseq(f)]
			     : f in fixed_cusp_forms_orbit_Q_K_plus]);
	    Q_basis := Basis(RowSpace(Q_mat));
	    fs := [Vector([FF![b[Degree(FF)*i + j + 1]
			       : j in [0..Degree(FF)-1]]
			   : i in [0..deg-1]]) : b in Q_basis];
	    fixed_cusp_forms_orbit_Q_K_plus := fs;

	    vprintf ModularCurves, 1 : "Obtained %o forms from this orbit.\n", #fs;
	    
	    FCF_orbit cat:= [fixed_cusp_forms_orbit_Q_K_plus];
	    twist_orbit_index cat:=
		[[i : j in [1..#fixed_cusp_forms_orbit_Q_K_plus]]];
	else
	    FCF_orbit cat:= [[]];
	    twist_orbit_index cat:= [[]];
	end if;
	FCF cat:= [FCF_orbit];
	twist_orbit_indices cat:= [twist_orbit_index];
	fs := &cat [FCF[i][1] : i in [1..#FCF]];
    end while;
    // fs := &cat [FCF[i][1] : i in [1..#FCF]];
    tos := &cat[twist_orbit_indices[i][1] : i in [1..#FCF]];
    // make sure we have the right number of forms
    assert 2*#fs eq Dimension(GFS);
    return fs, tos;
end function;

// function: IsCompatibleChar
// input: M1, M2 - Modular symbols spaces
// output: true if it is possible to coerce one of the characters to the other,
//         i.e. if there is a degeneracy map between them.

function IsCompatibleChar(M1, M2)
    eps1 := DirichletCharacter(M1);
    eps2 := DirichletCharacter(M2);
    return
	IsCoercible(Parent(eps1), eps2) and (Parent(eps1)!eps2 eq eps1); 
end function;

// function: getBoxGandAL
// input: num - an integer between 1 and 3
// output: G - a subgroup of GL(2, Integers(35))
//         ws - a list of Atkin-Lehner elements
//         G and ws are the group and Atkin-Lehner operators used in the examples
//         in J. Box's paper. This is a helper function to reproduce them.

function getBoxGandAL(num)
    PGnsplus7 := GammaNSplus(7,Integers(7)!5);
    Gnsplus7 := ImageInLevelGL(PGnsplus7);
    PG := PGnsplus7;
    if num gt 1 then
	Ge7 := Subgroups(Gnsplus7 : IndexEqual := 2, IsCyclic)[1]`subgroup;
	PGe7 := PSL2Subgroup(Ge7);
	PG := PGe7;
    end if;
    PG := PG meet Gamma0(5);
    G := ImageInLevelGL(PG);
    w5 := [2890, 193 , -8685, -580];
    assert Determinant(Matrix(2,2,w5)) eq 5;
    phi7 := [3,1,-10,-3];
    assert Determinant(Matrix(2,2,phi7)) eq 1;
    phi7w5 := Eltseq(Matrix(2,2,phi7)*Matrix(2,2,w5));
    ws := [[],[w5], [phi7w5]];
    return G, ws[num];
end function;

// !!TODO!! - isn't this the same as ImageInLevelGL(Gamma0(N)) ?
// function: make_Borel
// input: N - an integer
// output: B_0(N) the standard Borel subgroup of GL(2, Integers(N))

function make_Borel(N)
    gens := [[1,1,0,1]];
    for t in [1..N-1] do
	if GCD(t, N) eq 1 then
	    Append(~gens, [t,0,0,1]);
	    Append(~gens, [1,0,0,t]);
	end if;
    end for;
    return sub<GL(2, Integers(N)) | gens>;
end function;

// function: get_M_K
// input: G - a subgroup of GL(2, Integers(N)) for some N
// output: M, K such that G_M = B_0(M) and G = G_M meet G_K and GCD(K,M) = 1.
//         Here G_M, G_K are the images of G in GL(2, M), GL(2,K).
//         Note that M = 1, K = N always works, but sometimes, e.g. in Box's examples,
//         we can get lucky and have larger M.

function get_M_K(G)
    N := Modulus(BaseRing(G));
    // First we find M such that G_M is contained in B_0(M)
    M := GCD([N] cat [Integers()!g[2,1] : g in Generators(G)]);
    K := N div M;
    // we make sure that GCD(K,M) eq 1
    fac := Factorization(N);
    M := &*([1] cat [fa[1]^fa[2] : fa in fac | K mod fa[1] ne 0]);
    // Now we reduce it until equality holds
    divs := Reverse(Divisors(M));
    found := false;
    // we don't try 1 because GL(2,1) etc.
    for M in divs[1..#divs-1] do
	G_M := sub< GL(2, Integers(M)) |
		  [[Integers(M)!x : x in Eltseq(g)] : g in Generators(G)]>;
	B_M := make_Borel(M);
	if G_M eq B_M then
	    PG_M := PSL2Subgroup(G_M);
	    if K eq 1 then
		PG_meet := PG_M;
	    else	    
		G_K := sub< GL(2, Integers(K)) |
			  [[Integers(K)!x : x in Eltseq(g)] : g in Generators(G)]>;
		PG_K := PSL2Subgroup(G_K);
		PG_meet := PG_M meet PG_K;
	    end if;
	    //if G eq ImageInLevel(PG_K : N := N) meet ImageInLevel(PG_M : N := N) then
	    PG := PSL2Subgroup(G);
	    if PG eq PG_meet then
		found := true;
		break;
	    end if;
	end if;
    end for;
    if not found then M := 1; end if;
    
    K := N div M;

    return M, K;
end function;

// find M, K such that G = B0(M) meet G_K and H contains B1(M)
function get_M_K_normalizer(G, H)
    N := Modulus(BaseRing(G));
    // First we find M such that G_M is contained in B_0(M)
    M := GCD([N] cat [Integers()!g[2,1] : g in Generators(G)]);
    K := N div M;
    // we make sure that GCD(K,M) eq 1
    fac := Factorization(N);
    M := &*([1] cat [fa[1]^fa[2] : fa in fac | K mod fa[1] ne 0]);
    // Now we reduce it until equality holds
    divs := Reverse(Divisors(M));
    found := false;
    // we don't try 1 because GL(2,1) etc.
    for M in divs[1..#divs-1] do
	G_M := sub< GL(2, Integers(M)) |
		  [[Integers(M)!x : x in Eltseq(g)] : g in Generators(G)]>;
	H_M := sub< GL(2, Integers(M)) |
		  [[Integers(M)!x : x in Eltseq(g)] : g in Generators(H)]>;
	B_M := make_Borel(M);
	B1M := sub<B_M | [1,1,0,1]>;
	small := PSL2Subgroup(B1M) meet CongruenceSubgroup(K);
	if (G_M eq B_M) and (small subset PSL2Subgroup(H)) then
	    PG_M := PSL2Subgroup(G_M);
	    if K eq 1 then
		PG_meet := PG_M;
	    else	    
		G_K := sub< GL(2, Integers(K)) |
			  [[Integers(K)!x : x in Eltseq(g)] : g in Generators(G)]>;
		PG_K := PSL2Subgroup(G_K);
		PG_meet := PG_M meet PG_K;
	    end if;
	    //if G eq ImageInLevel(PG_K : N := N) meet ImageInLevel(PG_M : N := N) then
	    PG := PSL2Subgroup(G);
	    if PG eq PG_meet then
		found := true;
		break;
	    end if;
	end if;
    end for;
    if not found then M := 1; end if;
    
    K := N div M;

    return M, K;
end function;

// function: get_gens
// input: G - a subgroup of GL(2, Integers(N))
// output: gens - lifts to SL2(Z) of generators of G with trivial determinant
//         Bgens - lifts to SL2(Z) of elements B such that B*[d,0,0,1] is a generator of G, with d ne 1.
//         K, M - relatively prime integers such that G = B_0(M) meet G_K.
//         ds - a list corresponding to Bgens of the determinants of these generators.

function get_gens(G, eps)
    N := Modulus(BaseRing(G));
    M, K := get_M_K_normalizer(G, Kernel(eps));
    H := G meet SL(2, Integers(N));
    gens := [Eltseq(FindLiftToSL2(g)) : g in Generators(H)];
    if IsEmpty(gens) then
	gens := [[1,0,0,1]];
    end if;
    quo, quo_mat := G/H;
    Cs := [g@@quo_mat : g in Generators(quo)];
    ds := [Determinant(C) : C in Cs];
    Bgens := [C*GL(2,Integers(N))![Determinant(C),0,0,1]^(-1) : C in Cs];
//    Bgens := [C*GL(2,Integers(N))![1,0,0,Determinant(C)]^(-1) : C in Cs];
    Bgens := [Eltseq(FindLiftToSL2(b)) : b in Bgens];
    return gens, Bgens, K, M, ds;
end function;

// !! TODO !! - This should be embedded in the modular symbols package
// in multichar.m for general multicharacter spaces.

// function: get_degeneracy_maps
// input: M_old - old subspace of modular symbols
//        M - new subspace of modular symbols
//        d - the degree of the map.
// output: alpha - the degeneracy map alpha_d : C(M_old) -> C(M)
//         where C is the cuspidal subspace
//         ims_alpha - the images of alpha of the basis vectors as elements in M
//         beta - the degeneracy map beta_d : C(M) -> C(M_old)
//         alpha_new - the restriction of alpha_d to the new subspace of C(M_old). 

function get_degeneracy_maps(M_old, M, d)
    C := CuspidalSubspace(M);
    C_old := CuspidalSubspace(M_old);
    C_old_new := NewSubspace(C_old);
    Cbmat := BasisMatrix(VectorSpace(C));
    Cboldmat := BasisMatrix(VectorSpace(C_old));
    Cboldnewmat := BasisMatrix(VectorSpace(C_old_new));
    ms := MultiSpaces(M);
    ms_old := MultiSpaces(M_old);
    all_alphas := [];
    all_betas := [];
    for j in [1..#ms_old] do
	assert exists(i){i : i in [1..#ms]
			 | IsCompatibleChar(ms[i], ms_old[j])};
	m_old := ms_old[j];
	deg := DegeneracyMatrix(m_old, ms[i], d);
	deg_d := DegeneracyMatrix(ms[i], m_old, d);
	multi := MultiQuotientMaps(M)[i];
	multi_old := MultiQuotientMaps(M_old)[j];
	quo_mat := Matrix([Representation(multi(x))
			       : x in Basis(M)]);
	quo_old := Matrix([Representation(multi_old(b))
			   : b in Basis(M_old)]);
	deg_eltseq := [&cat[RelativeEltseq(x, BaseRing(M)) : x in Eltseq(row)]
		       : row in Rows(quo_old*deg)];
	deg_d_eltseq := [&cat[RelativeEltseq(x, BaseRing(M_old)) : x in Eltseq(row)]
			 : row in Rows(quo_mat*deg_d)];
	quo_inv := Matrix([Representation((z*b)@@multi)
			   : z in RelativeBasis(BaseRing(ms[i]), BaseRing(M)),
			     b in Basis(ms[i])]);
	quo_old_inv := Matrix([Representation((z*b)@@multi_old)
			       : z in RelativeBasis(BaseRing(ms_old[j]), BaseRing(M_old)),
				 b in Basis(ms_old[j])]);
	alpha := Matrix(deg_eltseq)*quo_inv;
	beta := Transpose(quo_old_inv)*Transpose(Matrix(deg_d_eltseq));
	Append(~all_alphas, alpha);
	Append(~all_betas, beta);
    end for;
    big_alpha := &+all_alphas;
    big_beta := &+all_betas;
//    Cboldmat := ChangeRing(Cboldmat, BaseRing(M));
//    Cboldnewmat := ChangeRing(Cboldnewmat, BaseRing(M));
//    big_beta := ChangeRing(big_beta, BaseRing(M));

    ims_mat := Cboldmat*big_alpha;
    alpha_C := Transpose(Solution(Cbmat, ims_mat));
    beta_C := Transpose(Solution(Cboldmat, Cbmat*Transpose(big_beta)));
    alpha_new_C := Transpose(Solution(Cbmat, Cboldnewmat*big_alpha));
    return alpha_C, [M!v : v in Rows(ims_mat)], beta_C, alpha_new_C;
end function;

// function: get_old_spaces
// input: MS - a space of modular symbols
// output: Tr_mats - matrices of the degeneracy trace maps between the cuspidal spaces
//         Tr_ims - the images of the trace maps as elements of MS
//         B_mats - matrices of the degeneracy maps
//         deg_divs - divisors d corresponding to the degeneracy maps
//         num_coset_reps - the number of coset representatives for each degeneracy maps
//         oldspaces_full - the images of the old subspaces in MS
//         oldspaces - the images of each of the degeneracy maps
//         C_old_new - the new subspace of each of the old subspaces.

// !! TODO - right now we treat the newforms in the top level separately.
// However, this could be done in the same way.
function get_old_spaces(MS)
    N := Level(MS);
    // old_levels := [N div p : p in PrimeDivisors(N)];
    C := CuspidalSubspace(MS);
    // This takes plenty of time, see if we really need it.
    // We just need the characters and the levels of these spaces here.
    D := NewformDecomposition(C);
    old_levels := Sort([lev : lev in {Level(AssociatedNewSpace(d)) : d in D}
			| lev ne N]);
    dirichlet_groups := [DirichletGroupFull(level) : level in old_levels];
    // reduce them to minimal base rings 
    conds := [Conductor(BaseRing(grp)) : grp in dirichlet_groups];
    dirichlet_groups := [DirichletGroup(old_levels[i],
					CyclotomicField(conds[i]))
			 : i in [1..#old_levels]];
    chars := [*[dirichlet_groups[i]!DirichletCharacter(d) : d in D |
		Level(AssociatedNewSpace(d)) eq (old_levels[i])]
	      : i in [1..#old_levels]*];
    M_old := [ModularSymbols(chis, 2, 0 : F := BaseRing(MS))
	      : chis in chars | not IsEmpty(chis)];
    C_old := [CuspidalSubspace(m) : m in M_old];
    C_old_new := [NewSubspace(c) : c in C_old];
    
    num_coset_reps := [];
    Tr_mats := [];
    Tr_ims := [];
    B_mats := [];
    deg_divs := [];
    Tr_mats_new := [];
    for m_old in M_old do
	N_old := Level(m_old);
	a := N div N_old;
	m_Tr_mats := [* *];
	m_Tr_ims := [* *];
	m_B_mats := [* *];
	m_deg_divs := [];
	m_Tr_mats_new := [* *];
	// This isn't always right, but it doesnt matter
	num_reps := GCD(N_old, a) eq 1 select a + 1 else a;
	for d in Divisors(a) do
	    tr_mat, tr_ims, b_mat, tr_mat_new := get_degeneracy_maps(m_old, MS, d);
	    Append(~m_Tr_mats, tr_mat/d);
	    Append(~m_Tr_mats_new, tr_mat_new/d);
	    Append(~m_Tr_ims, tr_ims);
	    Append(~m_B_mats, b_mat*d);
	    Append(~m_deg_divs, d);
	    m_dim := Dimension(CuspidalSubspace(m_old));
	    assert Rank(tr_mat) eq m_dim;
	    I := IdentityMatrix(Rationals(), m_dim);
	    id_mat := Transpose(tr_mat)*Transpose(b_mat);
	    num_reps := id_mat[1,1];
	    assert id_mat eq num_reps*I;
	end for;
	// We will be using the fact that the first degeneracy map
	// is the inclusion
	assert m_deg_divs[1] eq 1;
	Append(~Tr_mats, m_Tr_mats);
	Append(~Tr_ims, m_Tr_ims);
	Append(~B_mats, m_B_mats);
	Append(~deg_divs, m_deg_divs);
	Append(~num_coset_reps, num_reps);
	Append(~Tr_mats_new, m_Tr_mats_new);
    end for; 
 
    //   oldspace_bases := [[* Rows(Transpose(tr)) : tr in m *] : m in Tr_mats];
    oldspace_bases := [[* Rows(Transpose(tr)) : tr in m *] : m in Tr_mats_new];
    oldspaces := [[sub<Universe(bb) | bb> : bb in bases]
		  : bases in oldspace_bases];
   
    oldspaces_full := [&+spaces : spaces in oldspaces];
   
    assert &and[Dimension(oldspaces_full[i]) eq
		&+[Dimension(s) : s in oldspaces[i]] : i in [1..#oldspaces]];
    
    return Tr_mats, Tr_ims, B_mats, deg_divs,
	   num_coset_reps, oldspaces_full, oldspaces, C_old_new;
end function;

// function: createFieldEmbeddings
// input: K - an integer
//        NN - a list of eigenforms
//        C - the cuspidal space of modular symbols
//        ds - a list of integers corresponsing to automorphisms sigma_d on Q(zeta_K)
// output: field_embs - a list of embedding of the coefficient fields of the eigenforms
//                      (from a field over Q_L to a field over Q_huge)
//         cc - complex conjugation
//         Ps_Q_huge - automorphisms of Q_huge extending the sigma_d's.
//         SKpowersQ_L - powers of the S_cond for conductors dividing K in Q_L
//         Q_huge - a cyclotomic field containing both Q_L and Q_K
//         Q_L - a cyclotomic field containing the images of the Dirichlet characters
//         zeta_huge - a root of unity generating Q_huge
//         zeta_K - a K-th root of unity
//         Q_K_plus_to_Q_K - an embedding of the totally real subfield of Q_K
//         Q_K_to_Q_huge - an embedding of Q_K in Q_huge
//         Q_L_to_Q_huge - an embedding of Q_L in Q_huge
//         elts - lifts of ds to integers
//         Q_gcd - intersection of Q_K and Q_L
//         zeta_gcd - a root of unity generating Q_gcd
//         Q_gcd_to_Q_K - an embdding of Q_gcd into Q_K

function createFieldEmbeddings(K, NN, C, ds)

    dim := Dimension(C);

    base_field := BaseField(C);
    assert (Type(base_field) eq FldCyc) or (Type(base_field) eq FldRat);
    // This line destroyed much, reverting it for now
    // cyc_base := Order(UnitGroup(AbsoluteField(base_field)).1);
    cyc_base := 1;
    L := EulerPhi(K);
    // We will only consider even characters
    if IsEven(L) then
	L := L div 2;
    end if;
    ds := [CRT([Integers()!d, 1],[K, cyc_base div GCD(K, cyc_base)]) : d in ds];
    Knew := LCM(K, cyc_base);
    L := LCM(L, cyc_base);
    Q_L<zeta_L> := CyclotomicField(L);
    Q_K<zeta_K> := CyclotomicField(Knew);
    Q_gcd<zeta_gcd> := CyclotomicField(GCD(Knew,L));
    Q_K_plus, Q_K_plus_to_Q_K := sub<Q_K | zeta_K + zeta_K^(-1)>;

    assert IsSubfield(base_field, Q_gcd);
    assert IsSubfield(base_field, Q_K);
    assert IsSubfield(base_field, Q_L);
    
    Q_K_q<q> := PowerSeriesRing(Q_K);
    
    Q_huge<zeta_huge> := CyclotomicField(LCM(Knew,L));

    _, Q_K_to_Q_huge := IsSubfield(Q_K, Q_huge);
    _, Q_L_to_Q_huge := IsSubfield(Q_L, Q_huge);
    _, Q_gcd_to_Q_K := IsSubfield(Q_gcd, Q_K);
    _, Q_gcd_to_Q_L := IsSubfield(Q_gcd, Q_L);

    _<x_L> := PolynomialRing(Q_L);
    _<x_huge> := PolynomialRing(Q_huge);
    
    fields := [* BaseRing(Parent(f)) : f in NN *];
    huge_fields := [* *];
    field_embs := [* *];
    gcd_fields := [* *];
    gcd_field_embs := [* *];
    for i in [1..#fields] do
	vprintf ModularCurves, 2 : "Constructing field embedding no. %o out of %o.\n", i, #fields;
	Kf := fields[i];
	Kf_base := BaseRing(Kf);
	vprintf ModularCurves, 2 : "K(f) = %o\n", Kf;
	if IsSubfield(Kf_base, Q_L) and (Kf ne Q_L) then
	    poly := Evaluate(DefiningPolynomial(Kf), x_L);
	    // Since K(f) is Galois, f(x) should decompose to factors of the same degree,
	    // and using any one of them will give us the compositum.
	    fac := Factorization(Evaluate(poly, x_L));
	    degrees := {Degree(fa[1]) : fa in fac };
	    assert #degrees eq 1;
	    d := SetToSequence(degrees)[1];
	    if d ne 1 then
		vprintf ModularCurves, 2 : "Field is not contained in Q_L, enlarging field.\n";
		poly := fac[1][1];
		Kf := NumberField(poly);
		vprintf ModularCurves, 2 : "Kf = %o\n", Kf;
		F_to_Kf := hom<fields[i] -> Kf | Kf.1 >;
		Embed(fields[i], Kf, Kf.1);
		fac := Factorization(Evaluate(poly, x_huge));
		degrees := {Degree(fa[1]) : fa in fac };
		assert #degrees eq 1;
		d := SetToSequence(degrees)[1];
		_, Q_L_to_Kf := IsSubfield(Q_L, Kf);
		// cond_Kf := Norm(Conductor(AbelianExtension(AbsoluteField(Kf))));
		cyc_Kf := Order(UnitGroup(AbsoluteField(Kf)).1);
                assert IsSubfield(CyclotomicField(cyc_Kf), AbsoluteField(Kf));
		Q_gcd_f<zeta_gcd_f> := CyclotomicField(GCD(cyc_Kf, Knew));
		Q_gcd_f_L := CyclotomicField(LCM(GCD(cyc_Kf, Knew), L));
		_, Q_gcd_f_to_Q_gcd_f_L := IsSubfield(Q_gcd_f, Q_gcd_f_L);
		_, Q_L_to_Q_gcd_f_L := IsSubfield(Q_L, Q_gcd_f_L);
		_, Q_gcd_f_to_Q_K := IsSubfield(Q_gcd_f, Q_K);
		_, Q_gcd_f_L_to_Kf := IsSubfield(Q_gcd_f_L, Kf);
		Q_gcd_f_to_Kf := Q_gcd_f_to_Q_gcd_f_L*Q_gcd_f_L_to_Kf;
                poly := MinimalPolynomial(Kf.1, Q_gcd_f_L);
                fac := Factorization(Evaluate(poly, x_huge));
		degrees := {Degree(fa[1]) : fa in fac };
		assert #degrees eq 1;
		d := SetToSequence(degrees)[1];
		if d ne 1 then
		    vprintf ModularCurves, 2 : "Field is not contained in Q_huge, enlarging field.\n";
		    KK := NumberField(fac[1][1]);
		    vprintf ModularCurves, 2 : "KK = %o\n", KK;
		    Kf_to_KK := hom<Kf -> KK | KK.1 >;
		else
		    KK := Q_huge;
		    root := -Coefficient(fac[1][1],0);
		    Kf_to_KK := hom<Kf -> KK | root>;
		end if;
	    else
		Kf := Q_L;
		KK := Q_huge;
		Kf_to_KK := Q_L_to_Q_huge;
		Q_gcd_f := Q_gcd;
		zeta_gcd_f := zeta_gcd;
		Q_gcd_f_to_Kf := Q_gcd_to_Q_L;
		Q_gcd_f_to_Q_K := Q_gcd_to_Q_K;
		root := -Coefficient(fac[1][1],0);
		if Type(fields[i]) eq FldRat then
		    F_to_Kf := hom<fields[i] -> Kf | >;
		else
		    F_to_Kf := hom<fields[i] -> Kf | root>;
// Magma claims it to be invalid
// Embed(fields[i], Kf, root);
		end if;
	    end if;
	elif Kf eq Q_L then
	    KK := Q_huge;
	    Kf_to_KK := Q_L_to_Q_huge;
	    Q_gcd_f := Q_gcd;
	    zeta_gcd_f := zeta_gcd;
	    Q_gcd_f_to_Kf := Q_gcd_to_Q_L;
	    Q_gcd_f_to_Q_K := Q_gcd_to_Q_K;
	else
	    // This might not be the case, but we start by treating this one
	    assert IsSubfield(Q_L, Kf);
	    Kf := RelativeField(Q_L, Kf);
	    _, F_to_Kf := IsSubfield(fields[i], Kf);
	    _, Q_L_to_Kf := IsSubfield(Q_L, Kf);
	    cyc_Kf := Order(UnitGroup(AbsoluteField(Kf)).1);
	    assert IsSubfield(CyclotomicField(cyc_Kf), Kf);
	    Q_gcd_f<zeta_gcd_f> := CyclotomicField(GCD(cyc_Kf, Knew));
	    Q_gcd_f_L := CyclotomicField(LCM(GCD(cyc_Kf, Knew), L));
	    _, Q_gcd_f_to_Q_gcd_f_L := IsSubfield(Q_gcd_f, Q_gcd_f_L);
	    _, Q_L_to_Q_gcd_f_L := IsSubfield(Q_L, Q_gcd_f_L);
	    _, Q_gcd_f_to_Q_K := IsSubfield(Q_gcd_f, Q_K);
	    _, Q_gcd_f_L_to_Kf := IsSubfield(Q_gcd_f_L, Kf);
	    Q_gcd_f_to_Kf := Q_gcd_f_to_Q_gcd_f_L*Q_gcd_f_L_to_Kf;
	    poly := DefiningPolynomial(Kf);
	    KK := ext< Q_huge | Evaluate(poly, x_huge)>;
	    Kf_to_KK := hom<Kf -> KK | KK.1>;
	    Embed(Kf, KK, KK.1);
	    
	    /*
	    assert IsSubfield(Q_L, Kf_base);	
	    Kf_base_over_Q_L := RelativeField(Q_L, Kf_base);
	    poly_base := DefiningPolynomial(Kf_base_over_Q_L);
	    KK_base := ext< Q_huge | Evaluate(poly_base, x_huge)>;
	    poly := DefiningPolynomial(Kf);
	    Kf_base_to_KK_base := hom<Kf_base_over_Q_L -> KK_base | KK_base.1>;
	    Embed(Kf_base, KK_base, KK_base.1);
	    _<x_base> := PolynomialRing(KK_base);
	    KK := ext< KK_base | Evaluate(poly, x_base)>;
	    Kf_to_KK := hom<Kf -> KK | KK.1>;
	    Embed(Kf, KK, KK.1);
	   */
	  
	end if;
	
	vprintf ModularCurves, 2 : "Check that the embeddings commute...\n";
	_, Q_L_to_Kf := IsSubfield(Q_L, Kf);
	_, Q_huge_to_KK := IsSubfield(Q_huge, KK);
	// We check that the different embedding commute as they should
	assert Q_huge_to_KK(Q_L_to_Q_huge(zeta_L)) eq
	       Kf_to_KK(Q_L_to_Kf(zeta_L));
        // Magma sometimes throws an Invalid embedding error, and I don't know why
        try
          Embed(Domain(F_to_Kf), Kf, F_to_Kf(Domain(F_to_Kf).1));
        catch e
	  tmp := 0;
	end try;
	Append(~field_embs, Kf_to_KK);
	Append(~huge_fields, KK);
	Append(~gcd_fields, Q_gcd_f);
	Append(~gcd_field_embs, [* Q_gcd_f_to_Kf, Q_gcd_f_to_Q_K *]);
	assert Kf_to_KK(Q_gcd_f_to_Kf(zeta_gcd_f)) eq
	       Q_huge_to_KK(Q_K_to_Q_huge(Q_gcd_f_to_Q_K(zeta_gcd_f)));
    end for;

    cc_Q_huge := hom<Q_huge -> Q_huge | zeta_huge^(-1)>;

    function cc(a)
	return make_nf_func(a, Q_huge, cc_Q_huge);
    end function;

    assert &and[cc(F!zeta_huge) eq F!(zeta_huge^(-1)) : F in huge_fields];

    if (Knew eq 1) then
	elts := [1 : d in ds];
    else
	elts := [Integers()!(Integers(Knew)!d) : d in ds];
    end if;
  
    powers := [CRT([e,1],[Knew,L div GCD(Knew,L)]) : e in elts];
    // Checking that CRT actually worked
    assert &and[p ne -1 : p in powers];
    Ps_Q_huge := [hom<Q_huge -> Q_huge | zeta_huge^pow> : pow in powers];

    I := IdentityMatrix(Rationals(), dim);

    X := DirichletGroupFull(K);
    conds := {Conductor(x) : x in Elements(X)};
 
    SKpowersQ_L := AssociativeArray(conds);
    for cond in conds do
	S_cond := Matrix(2,2,[1,1/cond,0,1]);
	S_cond_mat := ChangeRing(gen_to_mat(S_cond,C), Q_L);
	S_cond_powers := [ChangeRing(I, Q_L)];
	while (#S_cond_powers lt K) do
	    S_cond_powers cat:= [S_cond_mat*S_cond_powers[#S_cond_powers]];
	end while;
	SKpowersQ_L[cond] := [ChangeRing(M, Q_L) : M in S_cond_powers];
    end for;
    
    return field_embs, cc, Ps_Q_huge, SKpowersQ_L, Q_huge,
	   Q_L, zeta_huge, zeta_K, Q_K_plus_to_Q_K, Q_K_to_Q_huge,
	   Q_L_to_Q_huge, elts, Q_gcd, zeta_gcd,
	   Q_gcd_to_Q_K, gcd_fields, gcd_field_embs;
end function;

// function: qExpansions
// input: fs - vectors of coefficients for q-expansions
//        prec - required precision
//        qKp - a target power series variable
//        Q_K_plus - a target base ring for the power series
// output: a q-expansion which is a scalar multiple of the vector.

function qExpansions(fs, prec, q, K, integral)
    if integral then
	den := LCM([Denominator(f[i]) : i in [1..prec-1], f in fs]);
    else
	den := 1;
    end if;
    ffs := [ChangeRing(f, K) : f in fs];
    // qexps := [&+[ff[i]*q^i : i in [1..prec-1]] : ff in ffs];
    qexps := [den*&+[ff[i]*q^i : i in [1..prec-1]] + O(q^prec) : ff in ffs];
    return qexps;
end function;

// function: FindCurveSimple
// input: qexps - a list of q-expansions
//        prec - precision
//        n_rel - maximal degree in which we expect to find a relation.
// output: X - a curve describing the image of the canonical embedding using these q-expansions 

function FindCurveSimple(qexps, prec, n_rel)
    R<q> := Universe(qexps);
    K := BaseRing(R);
    zeta := K.1;
    fs := [f + O(q^prec) : f in qexps];
    g := #fs;
    R<[x]> := PolynomialRing(K,g);
    degmons := [MonomialsOfDegree(R, d) : d in [1..n_rel]];
    prods := [[Evaluate(m, fs) + O(q^prec) : m in degmons[d]] :
	      d in [1..n_rel]];
    kers := [Kernel(Matrix([AbsEltseq(f) : f in prod])) : prod in prods];
    rels := [[&+[Eltseq(kers[d].i)[j]*degmons[d][j] : j in [1..#degmons[d]]] :
	      i in [1..Dimension(kers[d])]] : d in [1..n_rel]];
    // We want to generate the ideal with the lowest possible degree
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
    // I := ideal<R | &cat rels>;
    // This might throw an error in the hyperelliptic case. 
    X := Curve(ProjectiveSpace(R),I : Nonsingular);
    // Do we want to assert X is coercible to Q?
    return X;
end function;

function FindHyperellipticCurve(qexps, prec)
    R<q> := Universe(qexps);
    K := BaseRing(R);
//  assert K eq Rationals();
    fs := [f + O(q^prec) : f in qexps];
    g := #fs;
    T, E := EchelonForm(Matrix([&cat[Eltseq(x)
				     : x in AbsEltseq(f)] : f in fs]));
    fs := [&+[E[j][i]*fs[i] : i in [1..g]] : j in [1..g]];
    x := fs[g-1] / fs[g];
    y := q * Derivative(x) / fs[g];
    mons := [x^i : i in [0..2*g+2]] cat [-y^2];
    denom := q^(-(2*g+2)*Valuation(x));
    f_mons := [denom*m + O(q^AbsolutePrecision(y)) : m in mons];
    ker := Kernel(Matrix([AbsEltseq(f : FixedLength) : f in f_mons]));
    assert Dimension(ker) eq 1;
    ker_b := Basis(ker)[1];
    ker_b /:= -ker_b[2*g+4];
    R<x> := PolynomialRing(K);
    poly := &+[ker_b[i+1]*x^i : i in [0..2*g+2]];
    X := HyperellipticCurve(-poly);
    return X, fs;
end function;

function getJMap(G, qexps, prec)
    g := Genus(G);
    nu_infty := #Cusps(G);
    // nu_ell := #EllipticPoints(G);
    H := Universe(EllipticPoints(G)); 
    nu_2 := #[H | pt : pt in EllipticPoints(G) |
	      Order(Matrix(Stabilizer(pt, G))) eq 4];
    nu_3 := #[H | pt : pt in EllipticPoints(G) |
	      Order(Matrix(Stabilizer(pt, G))) eq 6];
    // This bounds are from Rouse, DZB and Drew's paper
    E4_k := Ceiling((2*nu_infty + nu_2 + nu_3 + 5*g-4)/(2*(g-1)));  
    // TODO : Should differentiate the degree 3 elliptic points here
    E6_k := Ceiling((3*nu_infty + nu_2 + 2*nu_3 + 7*g-6)/(2*(g-1)));
    if IsOdd(E4_k) then
	E4_k +:= 1;
    end if;
    if IsOdd(E6_k) then
	E6_k +:= 1;
    end if;
    R<q> := Universe(qexps);
    K := BaseRing(R);
    fs := [f + O(q^prec) : f in qexps];
    assert g eq #fs;
    R<[x]> := PolynomialRing(K,g);
    degmons := AssociativeArray();
    // we add this because there is something wrong with the bounds.
    // computing E4
    E4_found := false;
    while (not E4_found) do
	vprintf ModularCurves, 1:
	    "Trying to find E4 with weight %o\n", E4_k;
	//    for d in {E4_k-4, E4_k, E6_k-6, E6_k} do
	for d in {E4_k-4, E4_k} do
	    degmons[d] := MonomialsOfDegree(R, d div 2);
	end for;
	E4 := qExpansion(EisensteinSeries(ModularForms(1,4))[1],prec);
	//    E6 := qExpansion(EisensteinSeries(ModularForms(1,6))[1],prec);
	prods_E4 := [Evaluate(m, fs) + O(q^prec) : m in degmons[E4_k]];
	prods_E4 cat:= [E4*Evaluate(m, fs)*q^4 + O(q^prec) : m in degmons[E4_k-4]];
//    prods_E6 := [Evaluate(m, fs) + O(q^prec) : m in degmons[E6_k]];
//    prods_E6 cat:= [E6*Evaluate(m, fs)*q^6 + O(q^prec) : m in degmons[E6_k-6]];
	ker_E4 := Kernel(Matrix([AbsEltseq(f) : f in prods_E4]));
//    ker_E6 := Kernel(Matrix([AbsEltseq(f) : f in prods_E6]));
	E4_found :=  exists(v_E4){v : v in Basis(ker_E4)
			| not &and[v[i] eq 0 :
				   i in [1..#degmons[E4_k]]] and
			not &and[v[#degmons[E4_k]+i] eq 0 :
				 i in [1..#degmons[E4_k-4]]]};
	E4_k +:= 2;
    end while;
    E6_found := false;
    while (not E6_found) do
	vprintf ModularCurves, 1:
	    "Trying to find E6 with weight %o\n", E6_k;
	for d in {E6_k-6, E6_k} do
	    degmons[d] := MonomialsOfDegree(R, d div 2);
	end for;
	E6 := qExpansion(EisensteinSeries(ModularForms(1,6))[1],prec);
	prods_E6 := [Evaluate(m, fs) + O(q^prec) : m in degmons[E6_k]];
	prods_E6 cat:= [E6*Evaluate(m, fs)*q^6 + O(q^prec) : m in degmons[E6_k-6]];
	ker_E6 := Kernel(Matrix([AbsEltseq(f) : f in prods_E6]));
	E6_found := exists(v_E6){v : v in Basis(ker_E6) |
			not &and[v[i] eq 0 :
				   i in [1..#degmons[E6_k]]] and
			not &and[v[#degmons[E6_k]+i] eq 0 :
				 i in [1..#degmons[E6_k-6]]]};
	E6_k +:= 2;
    end while;

    E4_k -:= 2;
    E6_k -:= 2;
    
    E4_num := &+[v_E4[i]*degmons[E4_k][i] : i in [1..#degmons[E4_k]]];
    E4_denom := &+[v_E4[#degmons[E4_k]+i]*degmons[E4_k-4][i]
		   : i in [1..#degmons[E4_k-4]]];
    E6_num := &+[v_E6[i]*degmons[E6_k][i] : i in [1..#degmons[E6_k]]];
    E6_denom := &+[v_E6[#degmons[E6_k]+i]*degmons[E6_k-6][i]
		   : i in [1..#degmons[E6_k-6]]];
    E4 := E4_num / E4_denom;
    E6 := E6_num / E6_denom;
    j := 1728*E4^3/(E4^3-E6^2);
    _<[x]> := Parent(E4);
    return E4, E6, j;
end function;

// This only works when conjugating one eigenform
// gives you another eigenform
function FindRationalCurve(qexps, prec, n_rel)
    _<q> := PowerSeriesRing(Rationals());
    fs := [];
    for qexp in qexps do
      K := BaseRing(Parent(qexp));
      zeta := K.1;
      for j in [0..Degree(K)-1] do
        f := &+[Trace(zeta^j*Coefficient(qexp, n))*q^n : n in [1..prec-1]];
        f +:= O(q^prec);
        Append(~fs, f);
      end for;
    end for;
    T, E := EchelonForm(Matrix([AbsEltseq(f) : f in fs]));
    fs := [&+[E[j][i]*fs[i] : i in [1..#fs]] : j in [1..#fs]];
    n := #fs;
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

// This function takes a list of characters and outputs its product
// X is  a character group from which to take the trivial character in the default scenario
function character_product(list, X)
    chi := X!1;
    for i in [1..#list] do
	chi := chi * list[i];
    end for;
    return chi;
end function;

function create_character(G, Chars)
        // this is a temporary patch to allow for activation without a character
    if IsEmpty(Chars) then
	// we create the trivial character
	Q, pi_Q := G/G;
	PG := PSL2Subgroup(G);
	eps := CharacterGroup(pi_Q, Rationals(), PG, PG)!1;
    else
	assert #Chars eq 1;
	eps := Chars[1];
    end if;
    return eps;
end function;

function compute_ms_action(G, eps, gens, Bgens, K, M, ds, AtkinLehner)

    GL_N := GL(2, BaseRing(G));
    eps_gens := [eps(G!g) : g in gens];
    // the value of eps on BP_d
    // eps_BPd_gens := [eps(GL_N!Bgens[i]*GL_N![1,0,0,ds[i]]) : i in [1..#Bgens]]; 
    eps_BPd_gens := [eps(GL_N!Bgens[i]*GL_N![ds[i],0,0,1]) : i in [1..#Bgens]]; 
    
    N := M * K^2;

    g0 := CRT([1+K,1], [K^2,M]);
    U, mU := UnitGroup(Integers(M));
    alphas := [Integers()!mU(x) : x in Generators(U)];
    gs := [g0] cat [CRT([1,alpha], [K^2,M]) : alpha in alphas];
    MS := ModularSymbolsH(N, gs, 2, 0, eps);

    C := CuspidalSubspace(MS);
    dim := Dimension(C);

    vprintf ModularCurves, 1 : "Dimension of large cusp form space is %o.\n", dim;
    
    GL2Q := GL(2, Rationals());
    alpha_K := GL(2, Rationals())![1,0,0,1/K];
    gmats := [Matrix(GL2Q!g^alpha_K) : g in gens];
    Bmats := [Matrix(GL2Q!g^alpha_K) : g in Bgens];
    al_mats := [Matrix(GL2Q!g^alpha_K) : g in AtkinLehner];
    
    vprintf ModularCurves, 1 : "Computing action of Gamma on large cusp form space...\n";

    B0M := M eq 1 select PSL2(Integers()) else Gamma0(M);
    B0M_gens := [Eltseq(x) : x in Generators(B0M)];
    B0M_mats := [Matrix(GL2Q!g^alpha_K) : g in B0M_gens];
    
    gexps := [FindWord(B0M, B0M!g) : g in gens];
    Bexps := [FindWord(B0M, B0M!g) : g in Bgens];

    assert &and[&*([GL2Q!1]
		   cat [B0M_mats[Abs(x)]^(Sign(x)) : x in gexps[i]]) in [gmats[i], -gmats[i]]
		: i in [1..#gmats]];

    assert &and[&*([GL2Q!1]
		   cat [B0M_mats[Abs(x)]^(Sign(x)) : x in Bexps[i]]) in [Bmats[i], -Bmats[i]]
		: i in [1..#Bmats]];

    // We modify the code to make profiling easier
    //    B0M_C := [Transpose(gen_to_mat(g^(-1), C)) : g in B0M_mats];
    B0M_C := [];
    for g in B0M_mats do
	Append(~B0M_C, Transpose(gen_to_mat(g^(-1), C)));
    end for;
    I_mat := Universe(B0M_C)!1;
    gs := [Transpose(&*([I_mat] cat [B0M_C[Abs(x)]^(Sign(x)) : x in exp]))
	   : exp in gexps];
    Bs := [Transpose(&*([I_mat] cat [B0M_C[Abs(x)]^(Sign(x)) : x in exp]))
		  : exp in Bexps];

    // This is for debugging, in case we need any
 //   assert gs eq [gen_to_mat(g^(-1),C) : g in gmats];
 //   assert Bs eq [gen_to_mat(B^(-1),C) : B in Bmats];
    // Bs := [gen_to_mat(B,C) : B in Bmats];
    gs cat:= [gen_to_mat(g^(-1),C) : g in al_mats];
    // We want the space fixed by the Atkin-Lehner
    eps_gens cat:= [1 : g in al_mats];
    
    return MS, C, gs, Bs, eps_gens, eps_BPd_gens;
end function;

function compute_newforms(C, C_old_new, prec, N)
    
    Nnew := NewSubspace(C);
    
    J := Transpose(StarInvolution(C));
    Cplus := Kernel(Transpose(J-1));

    // This would ensure that we can separate all the forms,
    // but it is an overkill. Instead we raise it slowly.
    // prec := Max(prec, HeckeBound(C));
    
    nfd_old := [NewformDecomposition(s) : s in C_old_new];    
    nfd := NewformDecomposition(Nnew);
    
    vprintf ModularCurves, 1 : "Computing Hecke operators...\n";
    
    max_hecke := 1;
    num_distinct := 0;

    // We want only the Hecke operators prime to p
    // because the embedding of the oldform is no longer
    // an eigenform for the other Hecke operators
    primes := [];
    sep_all := false;
    prec_old := [0 : d in C_old_new];
    level_facs := [Level(C) div Level(d) : d in C_old_new];

    while (not sep_all) do   
	repeat
	    max_hecke := NextPrime(max_hecke);
	until N mod max_hecke ne 0;
	
	Append(~primes, max_hecke);

	if max_hecke ge prec then
	    prec := max_hecke + 1;
	end if;

	Nold := [[* qEigenform(d,prec) : d in nf *] : nf in nfd_old]; 
	Nnew := [* qEigenform(d,prec) : d in nfd *];
	NN := (&cat ([[* *]] cat Nold)) cat Nnew;
	
	num_distinct := 
	    #{[Coefficients(MinimalPolynomial(Coefficient(f,i)))
	       : i in [1..max_hecke]] : f in NN};
	// we also want to be able to cut the exact subspace
	// using only prime to level Hecke operators
	num_distinct_old := 
	    [ #{[Coefficients(MinimalPolynomial(Coefficient(f,p)))
		 : p in primes] : f in n_old} : n_old in Nold];
	sep_old := [num_distinct_old[i] eq #Nold[i] : i in [1..#Nold]];
	for i in [1..#Nold] do
	    if sep_old[i] and (prec_old[i] eq 0) then
		prec_old[i] := max_hecke;
	    end if;
	end for;
	sep_all := &and sep_old and (num_distinct eq #NN);

    end while;

    // we want to be able to separate level-raised oldforms when computing the Pd action
    prec := Maximum([prec] cat [prec_old[i] * level_facs[i] : i in [1..#Nold]]);

    Nold := [[* qEigenform(d,prec) : d in nf *] : nf in nfd_old]; 
    Nnew := [* qEigenform(d,prec) : d in nfd *];
    NN := (&cat ([[* *]] cat Nold)) cat Nnew;

    Ts := [HeckeOperator(C, p) : p in primes];
    Tpluslist := [Restrict(T, Cplus) : T in Ts];

    as := [[*Coefficient(f, n) : f in NN *] : n in [1..max_hecke]];

    return NN, Nold, Nnew, as, nfd, nfd_old, Tpluslist, primes, prec;
end function;

function prepare_character_representatives(K)
    X := DirichletGroupFull(K);
    A, phi := AbelianGroup(X);

    Z2 := AbelianGroup([2]);
    h := hom< A -> Z2 | a :-> IsEven(phi(a)) select 0 else 1>;
    A_even := Kernel(h);
    chis := [phi(g) : g in Generators(A_even)];
    if IsTrivial(A_even) then
	chis := [phi(A_even!0)];
    end if;

    quo, quo_map := A / (2*A_even);
    char_reps := [phi(g@@quo_map) : g in quo];
    
    return X, char_reps, chis;
end function;

function get_gamma_fixed_space(eps_gens, gs)
    min_polys := [MinimalPolynomial(xi) : xi in eps_gens];
 
    fixed_spaces := [Kernel(Evaluate(min_polys[i], Transpose(gs[i])))
		     : i in [1..#gs]];
    
    Gamma_fixed_space := &meet fixed_spaces;
    
    return Gamma_fixed_space;
end function;

function restrict_to_character_reps(nfd, nfd_old, as, X, char_reps, K)
   
    nfd_chars := [* DirichletCharacter(f) : f in nfd *];
    nfd_decomp := [* Decomposition(chi) : chi in nfd_chars *];
    nfd_K_part := [* character_product([* chi : chi in chis | K mod Modulus(chi) eq 0 *], X)
		   : chis in nfd_decomp *];
    
    nfd_old_chars := [[* DirichletCharacter(f) : f in nf *] : nf in nfd_old];
    nfd_old_decomp := [[* Decomposition(chi) : chi in chis *] : chis in nfd_old_chars];
    nfd_old_K_part := [[* character_product([* chi : chi in chis
					     | K mod Modulus(chi) eq 0 *], X)

			: chis in nf_decomp *] : nf_decomp in nfd_old_decomp]; 


/*   
    nfd_trivial := [i : i in [1..#nfd] |
		    X!DirichletCharacter(nfd[i]) in char_reps];
    nfd_old_trivial := [[i : i in [1..#nf] |
			 X!DirichletCharacter(nf[i]) in char_reps]
			: nf in nfd_old]; 
*/
    
    nfd_trivial := [i : i in [1..#nfd] | X!nfd_K_part[i] in char_reps];
    nfd_old_trivial := [[i : i in [1..#nfd_old[j]] | X!nfd_old_K_part[j][i] in char_reps]
			: j in [1..#nfd_old]];
    
    cumsum := [0] cat [&+[#nf : nf in nfd_old[1..i]] : i in [1..#nfd_old]];
    a_idxs := &cat[ [idx + cumsum[j] : idx in nfd_old_trivial[j]]
		    : j in [1..#nfd_old]];
    a_idxs cat:= [idx + cumsum[#cumsum] : idx in nfd_trivial];

    as := [[* aps[idx] : idx in a_idxs *] : aps in as ];

    return a_idxs, as;
end function;

function get_aut_extensions(Ps_Q_huge, Q_huge)
    Ps := [];
    for P_Q_huge in Ps_Q_huge do
	function P(a)
	    return make_nf_func(a, Q_huge, P_Q_huge);
	end function;
	Append(~Ps, P);
    end for;
    return Ps;
end function;

// function: BoxMethod
// input: G - a subgroup of GL(2, N) for some N
//        prec - a required precision for the q-expansions
//        AtkinLehner - a list of AtkinLehner operators
// output: fs - a list of coefficients of q-expansions for a basis of cusp forms in S_2(G, Q)
//         tos - indices indicating from which twist orbit each of them was taken.

function BoxMethod(G, prec : AtkinLehner := [], Chars := [], M := 0)

    eps := create_character(G, Chars);
    
    gens, Bgens, best_K, best_M, ds := get_gens(G, eps);
    if M eq 0 then
	M := best_M;
	K := best_K;
    else
	N := Modulus(BaseRing(G));
	K := N div M;
    end if;
    N := M * K^2;

    vprintf ModularCurves, 1 :  "Found generators. K = %o and M = %o.\n", K, M;

    MS, C, gs, Bmats, eps_gens, eps_BPd_gens :=
	compute_ms_action(G, eps, gens, Bgens, K, M, ds, AtkinLehner);

    J := Transpose(StarInvolution(C));
    Cplus := Kernel(Transpose(J-1));

    vprintf ModularCurves, 1 : "Computing the Gamma fixed space...\n";

    GFS := get_gamma_fixed_space(eps_gens, gs);

    vprintf ModularCurves, 1 : "Dimension of fixed space is %o.\n",
			       Dimension(GFS);

    // making sure we will have enough equations. (Maybe, what about zero columns?)
    numrels := Dimension(GFS) div 2 + 2;
    prec := Maximum(prec, numrels + 1);
    
    vprintf ModularCurves, 1 : "Computing old subspaces...\n";

    Tr_mats, Tr_ims, B_mats, deg_divs,
    num_coset_reps, oldspaces_full,
    oldspaces, C_old_new := get_old_spaces(MS);

    vprintf ModularCurves, 1 : "Computing newforms...\n";
    
    NN, Nold, Nnew, as, nfd, nfd_old, Tpluslist, primes, prec :=
	compute_newforms(C, C_old_new, prec, N);

    vprintf ModularCurves, 1 : "Creating field embeddings...\n";
    
    field_embs, cc, Ps_Q_huge, SKpowersQ_L,
    Q_huge, Q_L, zeta_huge, zeta_K,
    Q_K_plus_to_Q_K, Q_K_to_Q_huge,
    Q_L_to_Q_huge, ds,
    Q_gcd, zeta_gcd, Q_gcd_to_Q_K,
    gcd_fields, gcd_field_embs := createFieldEmbeddings(K, NN, C, ds);

    // Taking only the forms with trivial Nebentypus character is not good enough
    // We need to take represenatives for X / X^2!

    vprintf ModularCurves, 1 : "Preparing character group...\n";

    X, char_reps, chis := prepare_character_representatives(K);
    a_idxs, as := restrict_to_character_reps(nfd, nfd_old, as, X, char_reps, K);

    gcd_fields := [* gcd_fields[i] : i in a_idxs *];
    gcd_field_embs := [* gcd_field_embs[i] : i in a_idxs *];
    Kf_to_KKs := [* field_embs[i] : i in a_idxs *];
    
    Pds := get_aut_extensions(Ps_Q_huge, Q_huge);

    vprintf ModularCurves, 1 : "Entering fixed_cusp_forms_QQ...\n";
    
    fs,tos := fixed_cusp_forms_QQ(as, primes, Tpluslist, Kf_to_KKs, prec,
				  GFS,Bmats,
				  Pds,ds,
				  cc,
				  NN,Nold,
				  oldspaces_full, oldspaces,
				  C, Cplus, chis,
				  Q_huge, Q_L, zeta_huge, zeta_K,
				  SKpowersQ_L,
				  B_mats,
				  Tr_mats,
				  deg_divs,
				  num_coset_reps,
				  J,
				  Q_K_plus_to_Q_K, Q_K_to_Q_huge,
				  Q_L_to_Q_huge, Q_gcd, zeta_gcd,
				  Q_gcd_to_Q_K, Nnew, eps_BPd_gens,
				  gcd_fields, gcd_field_embs);
    
    // We now have the forms over BaseField(eps)
    // and we still need to get restriction of scalars to Q.
    // (summing over the Galois orbit of the character)

    F := BaseField(C);
    cyc_base := Order(UnitGroup(F).1);
    
    powers := [CRT([1,a],[K div GCD(K, cyc_base),cyc_base]) : a in [1..cyc_base] |
	       GCD(a,cyc_base) eq 1];
    Q_K := Parent(zeta_K);
    aut_Q_K := [hom<Q_K -> Q_K | zeta_K^pow> : pow in powers];
    
    // auts := Automorphisms(F);
    auts := aut_Q_K;
    xi := F.1;
    fs_conj := [[Vector([sig(a) : a in Eltseq(f)])
		 : f in fs] : sig in auts];
    //    fs := &cat fs_conj;
    
    xi_conj := [sig(xi) : sig in auts];
    fs := &cat[[&+[xi_conj[l]^j * fs_conj[l][i] : l in [1..#auts]]
		: j in [0..Degree(F)-1]]
	       : i in [1..#fs] ];
   
    return fs, tos;
end function;

function precisionForCurve(PG : Proof := false)
    
    genus := Genus(PG);
    max_deg := Maximum(7-genus, 3);
    // This is the precision needed for linearly independent equations
    prec := Binomial(max_deg + genus - 1, max_deg);
    prec *:= Level(PG);
    prec +:= 2;
    if Proof then
	k := 2*max_deg;
	m := Index(PG);
	N := Level(PG);
	// This is the Sturm bound for weight k modular forms
	sturm := Ceiling(k*m/12 - (m-1)/N);
	// we multiply by the level since our q-expansions are in q^{1/N}
	// should replace that by the K that we are using
	// In general, should be the cusp width, but only if this is the
	// uniformizer we are actually using.
	prec := Maximum(prec, sturm * N);
    end if;
   
    return prec, max_deg;
end function;

function getCurveFromForms(fs, prec, max_deg, genus : CheckGenus := true)
    assert genus ge 2;

    assert Minimum([AbsolutePrecision(f) : f in fs]) ge prec;
    
    X := FindCurveSimple(fs, prec, max_deg);
    
    // If could not find equations, magma now spits an error
    // when trying to compute the genus
    // g := Genus(X);
    
    // if g eq 0 then
    if DefiningPolynomials(X) eq [0] then
	//print "Curve is Hyperelliptic. Finding equations not implemented yet.";
	X, fs := FindHyperellipticCurve(fs, prec);
	return X, fs;
    else
	if CheckGenus then
	    vprintf ModularCurves, 1: "Computing genus of curve...\n";
	    g := Genus(X);
	    vprintf ModularCurves, 1: "Done.";
	    if g eq 0 then
		// print "Curve is Hyperelliptic. Finding equations not implemented yet.";
		X, fs := FindHyperellipticCurve(fs, prec);
		return X, fs;
	    else
		assert g eq genus;
		X_Q := ChangeRing(X, Rationals());
		return X_Q, fs;
	    end if;
	else
	    X_Q := ChangeRing(X, Rationals());
	    return X_Q, fs;
	end if;
    end if;
end function;

// function: ModularCurve
// input: G - a subgroup of GL(2, N) for some N
//        genus - the genus of PSL2Subgroup(G)
//        optional - Precision, if we would like to override the precision of the q-expansions
// output: X - a model for the canonical embdding of the modular curve X_G
//         fs - the q-expansions of a basis of cusp forms

function ModularCurveBox(G, genus : Precision := 0, Proof := false,
			 chars := false)
    assert genus ge 2;
    N := Modulus(BaseRing(G));
    PG := PSL2Subgroup(G);
    prec, max_deg := precisionForCurve(PG : Proof := Proof);
    if Precision ne 0 then
        prec := Max(prec, Precision);
    end if;
    if chars then
      MS := CuspidalSubspace(ModularSymbols(PG));
      fs := qExpansionBasis(MS, prec : Al := "Box");
    else  
      fs := BoxMethod(G, prec);
      K := BaseRing(Universe(fs));
      _<q> := PowerSeriesRing(K);
      fs := qExpansions(fs, prec, q, K, true);
    end if;
    return getCurveFromForms(fs, prec, max_deg, genus);
end function;

intrinsic ModularCurve(G::GrpPSL2 : Proof := false) -> Crv[FldRat],
                                                       SeqEnum[RngSerPowElt]
{Returns the canonical embedding of the modular curve associated to G,
 together with the q-expansions of a basis of cusp forms.}
  if IsGamma0(G) then
      db := ModularCurveDatabase("Canonical");
      return ModularCurve(db, Level(G));
  end if;
  genus := Genus(G);
  require genus ge 2 : "Currenty not implemented for genus < 2";
  return ModularCurveBox(ImageInLevelGL(G), genus : Proof := Proof);
end intrinsic;

// procedure: testBoxExample
// tests the 3 examples from the paper [Box]

procedure testBoxExample()
    prec := 200;
    fs := [* *];
    for num in [1..3] do
	vprintf ModularCurves, 1 : "computing for Box's group number %o.\n", num;
	G, ws := getBoxGandAL(num);
	Append(~fs, BoxMethod(G, prec : AtkinLehner := ws));
    end for;
    assert &and[#fs[1] eq 6, #fs[2] eq 5, #fs[3] eq 8];
    fs_qexps := [* *];
    for num in [1..3] do
        Q_K_plus := BaseRing(Universe(fs[num]));
        _<qKp> := PowerSeriesRing(Q_K_plus);
        Append(~fs_qexps, qExpansions(fs[num],prec,qKp,Q_K_plus,true));
    end for;
    curves := [* FindCurveSimple(fs, prec, 2) : fs in fs_qexps *];
    assert [Genus(X) : X in curves] eq [6,5,8];
end procedure;

// This tests Box's method using the database of congruence subgroups
import "../congruence.m" : qExpansionBasisPSL2, createPSL2, write_qexps;

procedure testBoxSingle(grps_by_name, name : Proof := false,
					     Normalizers := false,
					     WriteFile := false,
					     CheckGenus := true,
					     M := 0)
    genus := grps_by_name[name]`genus;
    PG := createPSL2(grps_by_name[name]);
    prec, max_deg := precisionForCurve(PG : Proof := Proof);
    fs := qExpansionBasisPSL2(name, grps_by_name : Precision := prec,
						   Normalizers := Normalizers,
						   M := M);
    if (genus gt 1) then
	X<[x]>, fs := getCurveFromForms(fs, prec, max_deg, genus : CheckGenus := CheckGenus);
	vprintf ModularCurves, 1 : "Canonical curve is %o\n", X;
    else
	vprintf ModularCurves, 1 : "Curve is of genus 1. Right now not implemented in general. Writing a dummy P1.\n";
	R<q> := Universe(fs);
	K := BaseRing(R);
	// we return a dummy P1 for now
	R<x,y> := PolynomialRing(K,2);
	X := Curve(ProjectiveSpace(R));
    end if;
    if WriteFile then
	write_qexps(name, fs, X);
    end if;
end procedure;

// Not working -
// 10C3 - arguments do not define a curve

// Not working with character -
// 10A3 - arguments do not define a curve

procedure testBox(grps_by_name : Proof := false,
				 Normalizers := false,
				 WriteFiles := false)
    
    working_examples := ["7A3", "8A2", "8A3", "8B3", "8A5",
			 "9A2", "9B2", "9A3", "9A4", "9B4", "9C4",
			 "10A2", "10B2", "10A3", "10A4", 
			 "11A2", "11A6",
			 "12B2", "12E2",
			 "14B6",
			 "17A6",
			 "18A6", "18B6", "18C6",
			 "20C6",
			 "21B6", "21C6",
			 // We exclude 22C6 because it takes too much time.
			 // Once normalizers is running well enough, can add it back.
			 "22A6", "22B6", // "22C6",
			 "24G6",
			 "30E6",
			 "35E6",
			 "58A6",
			 "66B6",
			 "66D6",
			 "69A6",
			 "87A6",
			 "121A6"];

    for name in working_examples do
	vprintf ModularCurves, 1 : "Working on group %o\n", name;
	testBoxSingle(grps_by_name, name : Proof := Proof,
					   Normalizers := Normalizers,
					   WriteFile := WriteFiles);
    end for;

    testBoxExample();
end procedure;
