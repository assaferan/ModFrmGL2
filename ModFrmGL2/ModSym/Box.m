import "linalg.m" : Restrict;
import "../GrpPSL2/GrpPSL2/misc.m" : Conjugates,
       IsConjugate, NormalizerGrpMat;

// These two functions are to get a GL2 model from a subgroup of PSL(2,Z)
// Helper functions for creation
function GetRealConjugate(H)
  GL_N := GL(2, BaseRing(H));
  N_H := NormalizerGrpMat(GL_N, H);
  N_H_conjs := Conjugates(GL_N, N_H);
  eta := GL_N![-1,0,0,1];
  real := exists(real_N_H){ real_N_H : real_N_H in N_H_conjs
			    | eta in real_N_H};
  error if not real, Error("No real type conjugate");
  dummy, alpha := IsConjugate(GL_N,N_H,real_N_H);
  real_H := H^alpha;
  assert real_H^eta eq real_H;
  return real_H; 
end function;

function GetGLModel(H : RealType := true)
  N := Modulus(BaseRing(H));
  SL_N := SL(2, Integers(N));
  GL_N := GL(2, BaseRing(H));
  N_H := NormalizerGrpMat(GL_N, H);
  Q, pi_Q := N_H / H;
  subs := SubgroupClasses(N_H/H : OrderEqual := EulerPhi(N));
  cands := [s`subgroup@@pi_Q : s in subs];
  cands := &join[Conjugates(N_H, c) : c in cands | c meet SL_N eq H];
  error if IsEmpty(cands), Error("No model with surjective determinant");

  if RealType then
      eta := GL_N![-1,0,0,1];
      cands := [c : c in cands | c^eta eq c];
      error if IsEmpty(cands), Error("No model with surjective determinant, 
                 	                        which commutes with eta");
  end if;
  // We would perfer a model for which the Hecke operators are standard
  U, psi := UnitGroup(Integers(N));
  if exists(c){c : c in cands |
	       sub<GL(2,Integers(N))
		  | [[1,0,0,psi(t)] : t in Generators(U)]> subset c} then
      return c;
  else
      return Random(cands);
  end if;
end function;

function FindLiftToSL2(g)
     elt_g := ElementToSequence(g);
     if #elt_g eq 1 then return PSL2(Integers())!1; end if;
     a,b,c,d := Explode(elt_g); 
     N := Modulus(Parent(a));
     Z := Integers();
     a_prime := Z!a;
     b_prime := Z!b;
     if a_prime eq 0 then
        a_prime +:= N;
     end if;
     gcd_res, x, y := Xgcd(a_prime, b_prime);
     while gcd_res ne 1 do
           b_prime +:= N; 
           gcd_res, x, y := Xgcd(a_prime, b_prime);
     end while;
     det := a_prime * Z!d - b_prime*Z!c;
     c_prime := Z!c - y * (1 - det);
     d_prime := Z!d + x * (1 - det);       
     lift_g := PSL2(Integers())![a_prime, b_prime, c_prime, d_prime];
     return lift_g;
end function;

function gen_to_mat(gs, C1, C2)
    C1b := Basis(C1);
    C2mat := Transpose(Matrix([Eltseq(c) : c in Basis(C2)]));
    ims := [C2!(&cat[ModularSymbolApply(C1, Eltseq(g),
					ModularSymbolRepresentation(c))
	    : g in gs]) : c in C1b];
    mat_ret := Transpose(Solution(Transpose(C2mat), Matrix([Vector(Eltseq(im))
							    : im in ims])));
    return mat_ret, ims;
end function;

function Bdmatrix(CM, CMmat, t, C)
    ims := [CM!ModularSymbolApply(CM, [t,0,0,1],
				  ModularSymbolRepresentation(c))
	    : c in Basis(C)];
    mat_ret := t*Transpose(Solution(Transpose(CMmat),
				    Matrix([Vector(Eltseq(im)) : 
					    im in ims])));
    return mat_ret;
end function;

function sigma(a, Q21, sigma_Q21)
    K := Parent(a);
    if K eq Q21 then
	return sigma_Q21(a);
    end if;
    return (hom< K->K | -K.1>)(a);
end function;

function make_Q21_func(a, Q21, f_Q21)
    K := Parent(a);
    if K eq Q21 then
	return f_Q21(a);
    end if;
    return &+[f_Q21(Eltseq(a)[i])*Basis(K)[i]
	      : i in [1..Degree(K)]];
end function;

function make_nf_func(a, F, f_F)
    K := Parent(a);
    if K eq F then
	return f_F(a);
    end if;
    assert BaseRing(K) eq F;
    return &+[f_F(Eltseq(a)[i])*Basis(K)[i]
	      : i in [1..Degree(K)]];
end function;

function gauss_sum(eps, Q_huge, zeta_K, K, Q_L_to_Q_huge, Q_K_to_Q_huge)
    if Order(eps) eq 1 then
	return Q_huge!1;
    end if;
    return &+[Q_K_to_Q_huge(zeta_K)^i*Q_L_to_Q_huge(eps(i)) : i in [0..K-1]];
end function;

function Rop(eps, SKpowersQ_L, K)
    if Order(eps) eq 1 then
	return SKpowersQ_L[1]^0;
    end if;
    return &+[(eps^(-1))(i-1)*SKpowersQ_L[i] : i in [1..K]];
end function;

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

function pr(flist, check, Nold, prec)
    K := Universe(flist);
    if IsAbsoluteField(K) then
	folds := [f : f in Nold |
		  &and[Coefficients(MinimalPolynomial(flist[i]))
		       eq Coefficients(MinimalPolynomial(Coefficient(f,i)))
		       : i in [1..check]]];
    else
	folds := [f : f in Nold |
		  &and[Coefficients(AbsoluteMinimalPolynomial(flist[i]))
		       eq Coefficients(AbsoluteMinimalPolynomial(Coefficient(f,i)))
		       : i in [1..check]]];
    end if;
    assert #folds eq 1;
    fold := folds[1];
    Kf := BaseRing(Parent(fold));
    if (Type(Kf) eq FldRat) then
	embs := [hom<Kf->K|>];
    elif IsAbsoluteField(K) then
	embs := [hom<Kf->K | r[1]> : r in Roots(DefiningPolynomial(Kf),K)];
    else
	embs := [hom<AbsoluteField(Kf)->K | r[1]>
		 : r in Roots(DefiningPolynomial(AbsoluteField(Kf)),K)];
    end if;
    embs := [e : e in embs | &and[e(Coefficient(fold, i)) eq flist[i]
				  : i in [1..check]]];
    assert #embs eq 1;
    return [embs[1](Coefficient(fold, i)) : i in [1..prec-1]];
end function;

/*
function chartwist(flist, i, chi, Q_L_to_Q_huge)
    return [Q_L_to_Q_huge(chi(n))^i*flist[n] : n in [1..#flist]];
end function;
*/

function chartwist(flist, chi, Q_L_to_Q_huge)
    return [Q_L_to_Q_huge(chi(n))*flist[n] : n in [1..#flist]];
end function;

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

procedure add_old_twists(~new_mutwists, ~new_ftwists, ~new_powerlist,
			 ftws, oldspaces_full, oldspaces,
			 Kf, B_mats, Tr_mats, num_coset_reps,
			 alist, Nold, prec, deg_divs, Q_huge,
			 zeta_K, K, Q_L_to_Q_huge, Q_K_to_Q_huge,
			 qKK, chis)
    
    for mutw_idx in [1..#new_mutwists] do
	mutw := new_mutwists[mutw_idx];
	ftw := ftws[mutw_idx];
	for sp_idx in [1..#oldspaces_full] do
	    if mutw in ChangeRing(oldspaces_full[sp_idx], Kf) then
		new_mutwists cat:= [pi(mutw, oldspaces_full[sp_idx],
				       oldspaces[sp_idx],
				       B_mats[sp_idx][1]) *
				    Transpose(ChangeRing(Tr_mats[sp_idx][2],
							 Kf))
				    / num_coset_reps[sp_idx]];
		ftwpr := pr(ftw, #alist, Nold[sp_idx], prec);
		d := deg_divs[sp_idx][2];
		ftwprB := &+[gauss_sum(chis[mutw_idx],Q_huge,zeta_K,K,
				       Q_L_to_Q_huge,Q_K_to_Q_huge)
			     *ftwpr[j]*qKK^(d*j)
			     : j in [1..prec-1]];
		new_ftwists cat:= [[Coefficient(ftwprB,idx)
				    : idx in [1..prec-1]]];
		Append(~new_powerlist, new_powerlist[mutw_idx]) ;
	    end if;
	end for;
    end for;
    return;
end procedure;

function make_real_twist_orbit(alist, primes, Kf_to_KK, Tpluslist,
			       prec, cc, sigma, NN, Nold,
			       oldspaces_full, oldspaces,
			       C, Cplus, chis,
			       Q_huge, zeta_K,
			       K, SKpowersQ_L,
			       B_mats,
			       Tr_mats,
			       deg_divs,
			       num_coset_reps,
			       Q_L_to_Q_huge, Q_K_to_Q_huge)
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
    assert #embs eq 1;
    emb := embs[1];
    flist := [cc(Kf_to_KK(emb(Coefficient(f,i)))) : i in [1..prec-1]];
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
	// intsn := intsn meet Kernel(ChangeRing(T, Kf) - Kf!alist[i+1]);
	intsn := intsn meet Kernel(ChangeRing(T, Kf) - Kf!alist[primes[i]]);
    end for;
    Hb := [x*ChangeRing(BasisMatrix(Cplus),Kf) : x in Basis(intsn)];
    H := sub<Universe(Hb)|Hb> meet subsp;
    assert Dimension(H) eq 1;
    mu := Basis(H)[1];
    LKK<qKK> := PowerSeriesRing(Codomain(Kf_to_KK), prec);
    
    zero_vec := Vector([0 : chi in chis]);

    // This is just for coercing issues.
    mu0 := mu*ChangeRing(Transpose(Rop(Universe(chis)!1,SKpowersQ_L, K)), Kf);
    
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
		   zeta_K, K, Q_L_to_Q_huge, Q_K_to_Q_huge,
		   qKK, [Universe(chis)!1]);

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

	    new_ftws := [chartwist(flist, eps^(-1), Q_L_to_Q_huge)
			 : eps in chars];
	    
	    new_ftwists := [[gauss_sum(chars[i],Q_huge,zeta_K,
				       K,Q_L_to_Q_huge,Q_K_to_Q_huge)*a
			     : a in new_ftws[i]] : i in [1..#chars]];
	    
	    new_mutwists := [mu*ChangeRing(Transpose(Rop(eps,
							SKpowersQ_L, K)), Kf)
			     : eps in chars];

	    Append(~orig_powerlist, new_powerlist);
	    Append(~orig_ftws, new_ftws);
	    Append(~orig_mutwists, new_mutwists);
	    
	    add_old_twists(~new_mutwists, ~new_ftwists, ~new_powerlist,
			 new_ftws, oldspaces_full, oldspaces,
			 Kf, B_mats, Tr_mats, num_coset_reps,
			 alist, Nold, prec, deg_divs, Q_huge,
			 zeta_K, K, Q_L_to_Q_huge, Q_K_to_Q_huge,
			 qKK, chars);

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

function first_nonzero_cf(a)
    for b in a do
	if not IsZero(b) then
	    return b;
	end if;
    end for;
end function;

/*
function FixedCuspForms(a2s, a3s, Tpluslist, Kf_to_KKs,
			prec, Gamma_fixed_spaces, cc, sigma,
			NN, N35, N49,
			oldspace35, oldspace351,
			oldspace357,
			oldspace49, oldspace491,
			C, Cplus, chi, Q21, zeta21, zeta7, K,
			SKpowersQ3, B351_mat, B491_mat,
			Tr357_mat, Tr495_mat,
			NumCosetReps357, NumCosetReps495,
			Q7plus_to_Q7, Q7_to_Q21, Q3_to_Q21)
    FCF := [];
    for i in [1..#a2s] do
	alist := [1,a2s[i],a3s[i]];
	Kf_to_KK := Kf_to_KKs[i];
	KK := Codomain(Kf_to_KK);
	Q21_to_KK := hom<Q21 -> KK | KK!zeta21>;
	real_twist_orbit_ms, twist_mfs, pl :=
	    make_real_twist_orbit(alist, Kf_to_KK,
				  Tpluslist, prec, cc, sigma,
				  NN, N35, N49,
				  oldspace35, oldspace351,
				  oldspace357,
				  oldspace49, oldspace491,
				  C, Cplus, chi, Q21, zeta7, K,
				  SKpowersQ3,
				  B351_mat, B491_mat,
				  Tr357_mat, Tr495_mat,
				  NumCosetReps357, NumCosetReps495,
				  Q3_to_Q21, Q7_to_Q21);
	FCF_orbit := [];
	for GFS in Gamma_fixed_spaces do
	    fixed_space_basis := Basis(ChangeRing(GFS, Domain(Kf_to_KK)) meet
						 real_twist_orbit_ms);
	    fixed_basis_cfs :=
		[Eltseq(Solution(BasisMatrix(real_twist_orbit_ms), mu))
		 : mu in fixed_space_basis];
	    fixed_basis_cfs_cc := [[cc(Kf_to_KK(a)) : a in mulist]
				   : mulist in fixed_basis_cfs];
	    fixed_cusp_forms_orbit_raw :=
		[&+[clist[i]*Vector(twist_mfs[i]) : i in [1..#clist]]
		 : clist in fixed_basis_cfs_cc];
	    if Degree(K) eq 2 then
		fixed_cusp_forms_orbit_ns :=
		    &cat[[f+Vector([sigma(a) : a in Eltseq(f)]),
		       (f-Vector([sigma(a) : a in Eltseq(f)]))/KK.1]
			 : f in fixed_cusp_forms_orbit_raw];
	    else
		fixed_cusp_forms_orbit_ns := fixed_cusp_forms_orbit_raw;
	    end if;
	    fixed_cusp_forms_orbit_sc :=
		[Vector([Q7plus_to_Q7@@(Q7_to_Q21@@(Q21_to_KK@@a))
			 : a in Eltseq(f/first_nonzero_cf(Eltseq(f)))])
		 : f in fixed_cusp_forms_orbit_ns];
	    FCF_orbit cat:= [fixed_cusp_forms_orbit_sc];
	end for;
	FCF cat:= [FCF_orbit];
    end for;
    return [&+[FCF[i][j] : i in [1..#FCF]] : j in [1..#Gamma_fixed_spaces]];
end function;
*/

function Pdmatrix(Pd, d, powerlist, chis,
		  Q_L, Q_huge, zeta_K, K, Q_L_to_Q_huge, Q_K_to_Q_huge)
    n := #powerlist;
    chars := [&*[chis[i]^(-exp[i]) : i in [1..#chis]]
	      : exp in powerlist];
 
    gs_ratios := [Pd(gauss_sum(chi,Q_huge,zeta_K, K,
			       Q_L_to_Q_huge, Q_K_to_Q_huge))
		    /gauss_sum(chi,Q_huge,zeta_K, K,
			     Q_L_to_Q_huge, Q_K_to_Q_huge)
		  : chi in chars];
    small_diag := DiagonalMatrix([a@@Q_L_to_Q_huge : a in gs_ratios]);
    Zn := ZeroMatrix(Q_L, n);
    list := [];
    for i in [0..EulerPhi(K)-1] do
	j := (d*i) mod K;
	coeffs := Eltseq(zeta_K^j);
	Append(~list, [c*small_diag : c in coeffs]);
    end for;
    return BlockMatrix(list);
end function;

function fixed_cusp_forms_QQ(as, primes, Tpluslist, Kf_to_KKs, prec,
			     GFS, Bmats, Pds, ds,
			     cc, sigma, NN, Nold,
			     oldspaces_full,
			     oldspaces,
			     C, Cplus, chis,
			     Q_huge, Q_L, zeta_huge, zeta_K,
			     K, SKpowersQ_L,
			     B_mats,
			     Tr_mats,
			     deg_divs,
			     num_coset_reps, J,
			     Q_K_plus_to_Q_K, Q_K_to_Q_huge, Q_L_to_Q_huge :
			     TotallyReal := false)
    FCF := [];
    twist_orbit_indices := [];
    for i in [1..#as[1]] do
	alist := [aps[i] : aps in as];
	Kf_to_KK := Kf_to_KKs[i];
	Kf := Domain(Kf_to_KK);
	KK := Codomain(Kf_to_KK);
	Q_huge_to_KK := hom<Q_huge->KK | KK!zeta_huge>;
	real_twist_orbit_ms, twist_mfs, powerlist :=
	    make_real_twist_orbit(alist, primes, Kf_to_KK, Tpluslist,
				  prec, cc, sigma, NN, Nold,
				  oldspaces_full, oldspaces,
				  C, Cplus, chis,
				  Q_huge, zeta_K,
				  K, SKpowersQ_L,
				  B_mats,
				  Tr_mats,
				  deg_divs,
				  num_coset_reps,
				  Q_L_to_Q_huge, Q_K_to_Q_huge);
	twist_orbit_index := [];
	FCF_orbit := [];
	fixed_space_basis := Basis(ChangeRing(GFS, Kf)
					     meet real_twist_orbit_ms);
	if #fixed_space_basis gt 0 then
	    fixed_basis_cfs :=
		[Eltseq(Solution(BasisMatrix(real_twist_orbit_ms), mu))
		 : mu in fixed_space_basis];
	    fixed_basis_block :=
		DirectSum([Matrix(fixed_basis_cfs)
			   : i in [1..EulerPhi(K)]]);
	    fixed_ms_space_QQ :=
		VectorSpace(Kf,
			    EulerPhi(K)*#fixed_space_basis);
	    for k in [1..#Bmats] do
		Bmat := Bmats[k];
		Pd := Pds[k];
		d := ds[k];
		B_imgs := [mu*ChangeRing(Transpose(Bmat),Kf)
			   : mu in fixed_space_basis];
		assert &and[mu*ChangeRing(Transpose(J),Kf)
			    eq mu : mu in B_imgs];
		B_imgs_cfs :=
		    [Eltseq(Solution(BasisMatrix(real_twist_orbit_ms),
				     ChangeRing(mu,Kf))) : mu in B_imgs];
		B_imgs_block :=
		    DirectSum([Matrix(B_imgs_cfs)
			       : j in [1..EulerPhi(K)]]);
		fixed_ms_space_QQ meet:=
		    Kernel(Solution(fixed_basis_block,
				    B_imgs_block*
				    ChangeRing(Pdmatrix(Pd,d,
							powerlist,
							chis, Q_L, Q_huge,
							zeta_K, K, Q_L_to_Q_huge,
							Q_K_to_Q_huge),Kf)^(-1))-
			   IdentityMatrix(Kf,
					  EulerPhi(K)*#fixed_space_basis));
	    end for;
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
	    if Degree(KK) eq 2 then
		fixed_cusp_forms_orbit_ns :=
		    &cat[[f+Vector([sigma(a) : a in Eltseq(f)]),
			  (f-Vector([sigma(a) : a in Eltseq(f)]))/KK.1]
			 : f in fsols];
	    else
		fixed_cusp_forms_orbit_ns := fsols;
	    end if;
	    if (TotallyReal) then
		fixed_cusp_forms_orbit_Q_K_plus :=
		    [Vector([(a@@Q_K_to_Q_huge)@@Q_K_plus_to_Q_K :
			     a in Eltseq(f)])
		     : f in fixed_cusp_forms_orbit_ns];
	    else
		fixed_cusp_forms_orbit_Q_K_plus :=
		[Vector([a@@Q_K_to_Q_huge : a in Eltseq(f)])
		 : f in fixed_cusp_forms_orbit_ns];
	    end if;
	    FCF_orbit cat:= [fixed_cusp_forms_orbit_Q_K_plus];
	    twist_orbit_index cat:=
		[[i : j in [1..#fixed_cusp_forms_orbit_Q_K_plus]]];
	else
	    FCF_orbit cat:= [[]];
	    twist_orbit_index cat:= [[]];
	end if;
	FCF cat:= [FCF_orbit];
	twist_orbit_indices cat:= [twist_orbit_index];
    end for;
    return &cat [FCF[i][1] : i in [1..#FCF]],
	   &cat[twist_orbit_indices[i][1] : i in [1..#FCF]];
end function;

function IsCompatibleChar(M1, M2)
    eps1 := DirichletCharacter(M1);
    eps2 := DirichletCharacter(M2);
    return
	IsCoercible(Parent(eps1), eps2) and (Parent(eps1)!eps2 eq eps1); 
end function;

forward get_degeneracy_maps;

function NewformDecompositionSubspaceMaps(M)
    ms := MultiSpaces(M);
    S := CuspidalSubspace(M);
    Sb := BasisMatrix(VectorSpace(S));
    Sbd := BasisMatrix(DualVectorSpace(S));
    D := NewformDecomposition(S);
    DD := [* *];
    ims := [* *];
    for d in D do
	M_old := RestrictionOfScalarsToQ(AmbientSpace(AssociatedNewSpace(d)));
	if not IsIdentical(M_old, M) then
	    quo_lev := Level(M) div Level(M_old);
	    divs := Divisors(quo_lev);
	    betas := [];
	    for m in divs do
		alpha, ims_alpha, beta := get_degeneracy_maps(M_old, M, m);
		im_d := Image(beta);
		im := Image(alpha);
		Append(~ims, [im, im_d]);
		Append(~betas, <alpha, beta, quo_lev div m>);
	    end for;
	    for j in [1..#betas] do
		Append(~DD, <d, betas[j]>);
	    end for;
	else
	    one := <IdentityMatrix(BaseRing(d), Dimension(S)),
		    IdentityMatrix(BaseRing(d), Dimension(S)), 1>;
	    Append(~DD, <d, one >);
	    im := VectorSpaceWithBasis(
			  Solution(Sb,BasisMatrix(VectorSpace(d))));
	    im_d := VectorSpaceWithBasis(
			    Solution(Sbd, BasisMatrix(DualVectorSpace(d))));
	    Append(~ims, [im, im_d]);
	end if;
    end for;
    dim := &+[Dimension(d[1])*Degree(BaseRing(d[1])) : d in DD];
    assert dim eq Dimension(S);
    return DD, ims;
end function;

function get_Box_gens()
    g0 := [61,-55,10,-9];
    assert Determinant(Matrix(2,2,g0)) eq 1;
    phi7 := [3,1,-10,-3];
    assert Determinant(Matrix(2,2,phi7)) eq 1;
    w5 := [2890, 193 , -8685, -580];
    assert Determinant(Matrix(2,2,w5)) eq 5;
    phi7w5 := Eltseq(Matrix(2,2,phi7)*Matrix(2,2,w5));
    gens := [g0,phi7,w5,phi7w5];
    Bgens := [[6,5,-5,-4],[1,0,0,1]];
    return gens, Bgens;
end function;

function getBoxGens(num)
    g0 := [61,-55,10,-9];
    assert Determinant(Matrix(2,2,g0)) eq 1;
    phi7 := [3,1,-10,-3];
    assert Determinant(Matrix(2,2,phi7)) eq 1;
    w5 := [2890, 193 , -8685, -580];
    assert Determinant(Matrix(2,2,w5)) eq 5;
    phi7w5 := Eltseq(Matrix(2,2,phi7)*Matrix(2,2,w5));
    gens := [g0,phi7,w5,phi7w5];
    Bgens := [[6,5,-5,-4],[1,0,0,1]];
    ws := [gens[num+1]];
    if num eq 1 then
	gens := gens[1..2];
	ws := [];
    else
	gens := [gens[1]];
    end if;
    return gens, ws, Bgens;
end function;

function get_gens(G)
    N := Modulus(BaseRing(G));
    M := GCD([N] cat [Integers()!g[2,1] : g in Generators(G)]);
    K := N div M;
    // assert GCD(K,M) eq 1;
    // instead we make sure that GCD(K,M) eq 1
    fac := Factorization(N);
    M := &*([1] cat [fa[1]^fa[2] : fa in fac | K mod fa[1] ne 0]);
    K := N div M;
    Cs := [g : g in Generators(G) | Determinant(g) ne 1];
    ds := [Determinant(C) : C in Cs];
    Bgens := [C*GL(2,Integers(N))![Determinant(C),0,0,1]^(-1) : C in Cs];
    gens := [g : g in Generators(G) | Determinant(g) eq 1];
    // Check whether this is really necessary
    Bgens := [Eltseq(FindLiftToSL2(b)) : b in Bgens];
    gens := [Eltseq(FindLiftToSL2(g)) : g in gens];
    return gens, Bgens, K, M, ds;
end function;

function get_degeneracy_maps(M_old, M, d)
    C := CuspidalSubspace(M);
    C_old := CuspidalSubspace(M_old);
    Cbmat := BasisMatrix(VectorSpace(C));
    Cboldmat := BasisMatrix(VectorSpace(C_old));
    ms := MultiSpaces(M);
    ms_old := MultiSpaces(M_old);
    all_alphas := [];
    all_betas := [];
    for j in [1..#ms_old] do
	assert exists(i){i : i in [1..#ms]
			 | IsCompatibleChar(ms[i], ms_old[j])};
	deg := DegeneracyMatrix(ms_old[j], ms[i], d);
	deg_d := DegeneracyMatrix(ms[i], ms_old[j], d);
	multi := MultiQuotientMaps(M)[i];
	multi_old := MultiQuotientMaps(M_old)[j];
	quo_mat := Matrix([Representation(multi(x))
			       : x in Basis(M)]);
	// quo_old := Matrix([Representation(multi_old(Representation(b)))
	quo_old := Matrix([Representation(multi_old(b))
			   : b in Basis(M_old)]);
	deg_eltseq := [&cat[Eltseq(x) : x in Eltseq(row)]
		       : row in Rows(quo_old*deg)];
	deg_d_eltseq := [&cat[Eltseq(x) : x in Eltseq(row)]
			 : row in Rows(quo_mat*deg_d)];
	quo_inv := Matrix([Representation((z*b)@@multi)
			   : z in Basis(BaseRing(ms[i])),
			     b in Basis(ms[i])]);
	quo_old_inv := Matrix([Representation((z*b)@@multi_old)
			       : z in Basis(BaseRing(ms_old[j])),
				 b in Basis(ms_old[j])]);
	alpha := Matrix(deg_eltseq)*quo_inv;
	beta := Transpose(quo_old_inv)*Transpose(Matrix(deg_d_eltseq));
	Append(~all_alphas, alpha);
	Append(~all_betas, beta);
    end for;
    big_alpha := &+all_alphas;
    big_beta := &+all_betas;
    ims_mat := Cboldmat*big_alpha;
    alpha_C := Transpose(Solution(Cbmat, ims_mat));
    beta_C := Transpose(Solution(Cboldmat, Cbmat*Transpose(big_beta)));
    return alpha_C, [M!v : v in Rows(ims_mat)], beta_C;
end function;

function get_old_spaces(MS)
    N := Level(MS);
    old_levels := [N div p : p in PrimeDivisors(N)];
    C := CuspidalSubspace(MS);
    D := NewformDecomposition(C);
    dirichlet_groups := [DirichletGroupFull(level) : level in old_levels];
    chars := [*[dirichlet_groups[i]!DirichletCharacter(d) : d in D |
		Level(d) eq (old_levels[i])] : i in [1..#old_levels]*];
    M_old := [ModularSymbols(chis, 2) : chis in chars];
    C_old := [CuspidalSubspace(m) : m in M_old];
    C_old_new := [NewSubspace(c) : c in C_old];
    assert &and[Dimension(C_old[i]) eq Dimension(C_old_new[i])
		: i in [1..#C_old]];
    C_oldb := [* Basis(c) : c in C_old *];
    C_oldmat := [* Transpose(Matrix([Eltseq(c) : c in b])) : b in C_oldb *];
    
    num_coset_reps := [];
    Tr_mats := [];
    Tr_ims := [];
    B_mats := [];
    deg_divs := [];
    for m_old in M_old do
	N_old := Level(m_old);
	a := N div N_old;
	m_Tr_mats := [* *];
	m_Tr_ims := [* *];
	m_B_mats := [* *];
	m_deg_divs := [];
	num_reps := GCD(N_old, a) eq 1 select a + 1 else a;
	for d in Divisors(a) do
	    tr_mat, tr_ims, b_mat := get_degeneracy_maps(m_old, MS, d);
	    Append(~m_Tr_mats, tr_mat/d);
	    Append(~m_Tr_ims, tr_ims);
	    Append(~m_B_mats, b_mat*d);
	    Append(~m_deg_divs, d);
	    m_dim := Dimension(CuspidalSubspace(m_old));
	    assert Rank(tr_mat) eq m_dim;
	    I := IdentityMatrix(Rationals(), m_dim);
	    assert Transpose(tr_mat)*Transpose(b_mat) eq num_reps*I;
	end for;
	// We will be using the fact that the first degeneracy map
	// is the inclusion
	assert m_deg_divs[1] eq 1;
	Append(~Tr_mats, m_Tr_mats);
	Append(~Tr_ims, m_Tr_ims);
	Append(~B_mats, m_B_mats);
	Append(~deg_divs, m_deg_divs);
	Append(~num_coset_reps, num_reps);
    end for; 
 
    oldspace_bases := [[* Rows(Transpose(tr)) : tr in m *] : m in Tr_mats];
    oldspaces := [[sub<Universe(bb) | bb> : bb in bases]
		  : bases in oldspace_bases];
   
    oldspaces_full := [&+spaces : spaces in oldspaces];
    assert &and[Dimension(oldspaces_full[i]) eq
		&+[Dimension(s) : s in oldspaces[i]] : i in [1..#oldspaces]];
    
    return Tr_mats, Tr_ims, B_mats, deg_divs,
	   num_coset_reps, oldspaces_full, oldspaces, C_old_new;
end function;

function get_relevant_components(gs, MS)
  C := CuspidalSubspace(MS);
  fixed_spaces := [Kernel(Transpose(gmat)-
			   IdentityMatrix(Rationals(), Nrows(gmat)))
		     : gmat in gs];
  H_inv := &meet fixed_spaces;
  Cb := Basis(C);
  Cmat := Transpose(Matrix([Eltseq(c) : c in Cb]));
  DD, ims := NewformDecompositionSubspaceMaps(MS);
  //  proj := [*BasisMatrix(DualVectorSpace(dd[1]))*dd[2][2] : dd in DD*];
  proj := [* im[2] : im in ims *];
  H_inv_bas := Transpose(BasisMatrix(H_inv));
  H_components := [i : i in [1..#proj] | proj[i]*H_inv_bas ne 0];
  S_H := [*DD[h] : h in H_components*];
  return S_H;
end function;

function createFieldEmbeddings(K, NN, C, ds)

    dim := Dimension(C);
    
    Q_L<zeta_L> := CyclotomicField(EulerPhi(K) div 2);
    Q_K<zeta_K> := CyclotomicField(K);
    Q_K_plus<z_K_plus>, Q_K_plus_to_Q_K := sub<Q_K | zeta_K + zeta_K^(-1)>;
    
    Q_K_q<q> := PowerSeriesRing(Q_K);
    
    Q_huge<zeta_huge> := CyclotomicField(LCM(EulerPhi(K) div 2, K));

    _, Q_K_to_Q_huge := IsSubfield(Q_K, Q_huge);
    _, Q_L_to_Q_huge := IsSubfield(Q_L, Q_huge);

    _<x_L> := PolynomialRing(Q_L);
    _<x_huge> := PolynomialRing(Q_huge);
    
    fields := [* BaseRing(Parent(f)) : f in NN *];
    min_polys := [* DefiningPolynomial(F) : F in fields *];
    huge_fields := [* *];
    for poly in min_polys do
	fac := Factorization(Evaluate(poly, x_huge));
	nt_facs := [f[1] : f in fac | Degree(f[1]) ne 1];
	assert #nt_facs le 1;
	if #nt_facs eq 1 then
	    KK := NumberField(nt_facs[1]);
	else
	    KK := Q_huge;
	end if;
	Append(~huge_fields, KK);
    end for;
		     
    field_embs := [* *];
    for i in [1..#fields] do
	Kf := fields[i];
	Kf_base := BaseRing(Kf);
	if (Type(Kf_base) eq FldRat) and (Kf ne Q_L) then
	    Kf := NumberField(Evaluate(DefiningPolynomial(Kf), x_L));
	end if;
	assert IsSubfield(fields[i], Kf);
	is_sub, emb := IsSubfield(Kf, huge_fields[i]);
	assert is_sub;
	Append(~field_embs, emb);
    end for;

    cc_Q_huge := hom<Q_huge -> Q_huge | zeta_huge^(-1)>;

    function cc(a)
	return make_nf_func(a, Q_huge, cc_Q_huge);
    end function;

    assert &and[cc(F!zeta_huge) eq F!(zeta_huge^(-1)) : F in huge_fields];

    elts := [Integers()!(Integers(K)!d^(-1)) : d in ds];
    powers := [CRT([e,1],[K,EulerPhi(K) div 2]) : e in elts];
    Ps_Q_huge := [hom<Q_huge -> Q_huge | zeta_huge^pow> : pow in powers];

    I := IdentityMatrix(Rationals(), dim);

    X := DirichletGroupFull(K);
    X_gens := Generators(X);
    
    chis := [IsEven(chi) select chi else chi^2 : chi in X_gens];
    chis := [chi : chi in chis | not IsTrivial(chi)];

    SK := Matrix(2,2,[1,1/K,0,1]);
    SK_mat := ChangeRing(gen_to_mat([SK],C,C), Q_L);
    SKpowers := [ChangeRing(I, Q_L)];
    while (#SKpowers lt K) do
	SKpowers cat:= [SK_mat*SKpowers[#SKpowers]];
    end while;
    SKpowersQ_L := [ChangeRing(M, Q_L) : M in SKpowers];

    sigma_Q_huge := hom<Q_huge -> Q_huge | zeta_huge>;

    function sigma_i(a)
	return sigma(a, Q_huge, sigma_Q_huge);
    end function;
    
    return field_embs, cc, Ps_Q_huge, SKpowersQ_L, Q_huge,
	   Q_L, zeta_huge, zeta_K, Q_K_plus_to_Q_K, Q_K_to_Q_huge,
	   Q_L_to_Q_huge, chis, elts, sigma_i;
end function;

forward BoxMethod;

function BoxExample(gens, ws, Bgens, prec)
    GG := GL(2, Integers(35));
    Cs := [GG!Bgens[1] * GG![4,0,0,1], GG!Bgens[2] * GG![-1,0,0,1]];
    Cgens := [Eltseq(c) : c in Cs];
    G := sub< GG | gens cat Cgens>;
    return BoxMethod(G, prec : AtkinLehner := ws, TotallyReal := true);
end function;

function int_qexp(f, prec, qKp, Q_K_plus)
    den := LCM([Denominator(f[i]) : i in [1..prec-1]]);
    ff := ChangeRing(f, Q_K_plus);
    return den*&+[ff[i]*qKp^i : i in [1..prec-1]];
end function;

function FindCurveSimple(qexps, prec, n_rel)
    R<q> := Universe(qexps);
    K := BaseRing(R);
    zeta := K.1;
    fs := [f + O(q^prec) : f in qexps];
    g := #fs;
    T, E := EchelonForm(Matrix([AbsEltseq(f) : f in fs]));
    fs := [&+[E[j][i]*fs[i] : i in [1..g]] : j in [1..g]];
    R<[x]> := PolynomialRing(K,g);
    degmons := [MonomialsOfDegree(R, d) : d in [1..n_rel]];
    prods := [[Evaluate(m, fs) + O(q^prec) : m in degmons[d]] :
	      d in [1..n_rel]];
    kers := [Kernel(Matrix([AbsEltseq(f) : f in prod])) : prod in prods];
    rels := [[&+[Eltseq(kers[d].i)[j]*degmons[d][j] : j in [1..#degmons[d]]] :
	      i in [1..Dimension(kers[d])]] : d in [1..n_rel]];
    I := ideal<R | &cat rels>;
    X := Curve(ProjectiveSpace(R),I);
    return X, fs;
end function;

function FindHyperellipticCurve(qexps, prec)
    R<q> := Universe(qexps);
    K := BaseRing(R);
    fs := [f + O(q^prec) : f in qexps];
    g := #fs;
    T, E := EchelonForm(Matrix([AbsEltseq(f) : f in fs]));
    fs := [&+[E[j][i]*fs[i] : i in [1..g]] : j in [1..g]];
    x := fs[g-1] / fs[g];
    y := q * Derivative(x) / fs[g];
    mons := [x^i : i in [0..2*g+2]] cat [-y^2];
    denom := q^(-(2*g+2)*Valuation(x));
    f_mons := [denom*m + O(q^AbsolutePrecision(x)) : m in mons];
    ker := Kernel(Matrix([AbsEltseq(f : FixedLength) : f in f_mons]));
    assert Dimension(ker) eq 1;
    ker_b := Basis(ker)[1];
    ker_b /:= -ker_b[2*g+4];
    R<x> := PolynomialRing(K);
    poly := &+[ker_b[i+1]*x^i : i in [0..2*g+2]];
    X := HyperellipticCurve(poly);
    return X, fs;
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

procedure testBoxExample()
    prec := 200;
    fs := [* *];
    for num in [1..3] do
	gens, ws, Bgens := getBoxGens(num);
	Append(~fs, BoxExample(gens, ws, Bgens, prec));
    end for;
    assert &and[#fs[1] eq 6, #fs[2] eq 5, #fs[3] eq 8];
    Q_K_plus := BaseRing(Universe(fs[1]));
    _<qKp> := PowerSeriesRing(Q_K_plus);
    fs_qexps:=[[int_qexp(f,prec,qKp,Q_K_plus) : f in AA] : AA in fs];
    curves := [FindCurveSimple(fs, prec, 2) : fs in fs_qexps];
    assert [Genus(X) : X in curves] eq [6,5,8];
end procedure;

function BoxMethod(G, prec : AtkinLehner := [], TotallyReal := false)
    gens, Bgens, K, M, ds := get_gens(G);
    gens cat:= AtkinLehner;
    N := M * K^2;
    g1 := CRT([1+K,1], [K^2,M]);
    alpha := Integers()!PrimitiveElement(Integers(M));
    g2 := CRT([1,alpha], [K^2,M]);
    MS := ModularSymbolsH(N, [g1,g2], 2, 0);

    // !! TODO !! Set precision by the group
    // bound := HeckeBound(MS);
    // prec := K*M*bound;
    
    C := CuspidalSubspace(MS);
    dim := Dimension(C);

    GL2Q := GL(2, Rationals());
    alpha_K := GL(2, Rationals())![1,0,0,1/K];
    gmats := [Matrix(GL2Q!g^alpha_K) : g in gens];
    Bmats := [Matrix(GL2Q!g^alpha_K) : g in Bgens];
    
    // This could be made faster,
    // but right now I want to follow Box closely
    gs := [gen_to_mat([g^(-1)],C,C) : g in gmats];
    Bs := [gen_to_mat([B^(-1)],C,C) : B in Bmats];
    J := Transpose(StarInvolution(C));

    Cplus := Kernel(Transpose(J-1));

    Tr_mats, Tr_ims, B_mats, deg_divs,
    num_coset_reps, oldspaces_full,
    oldspaces, C_old_new := get_old_spaces(MS);

    Nnew := NewSubspace(C);

    nfd_old := [NewformDecomposition(s) : s in C_old_new];    
    nfd := NewformDecomposition(Nnew);
    Nold := [[* qEigenform(d,prec) : d in nf *] : nf in nfd_old]; 
    Nnew := [* qEigenform(d,prec) : d in nfd *];
    NN := (&cat Nold) cat Nnew;

    max_hecke := 1;
    num_distinct := 0;

    // We want only the Hecke operators prime to p
    // because the embedding of the oldform is no longer
    // an eigenform for the other Hecke operators
    primes := [];
    while (num_distinct lt #NN) do
	repeat
	    max_hecke := NextPrime(max_hecke);
	until N mod max_hecke ne 0;
	Append(~primes, max_hecke);
	num_distinct := 
	    #{[Coefficients(MinimalPolynomial(Coefficient(f,i)))
			   : i in [1..max_hecke]] : f in NN};
    end while;

    Ts := [HeckeOperator(C, p) : p in primes];
    Tpluslist := [Restrict(T, Cplus) : T in Ts];

    as := [[*Coefficient(f, n) : f in NN *] : n in [1..max_hecke]];

    field_embs, cc, Ps_Q_huge, SKpowersQ_L,
    Q_huge, Q_L, zeta_huge, zeta_K,
    Q_K_plus_to_Q_K, Q_K_to_Q_huge,
    Q_L_to_Q_huge, chis, elts, sigma_i := createFieldEmbeddings(K, NN, C, ds);

    // Taking only the forms with trivial Nebentypus character is not good enough
    // We need to take represenatives for X / X^2!

    X := DirichletGroupFull(K);
    A, phi := AbelianGroup(X);
    quo, quo_map := A / (2*A);
    char_reps := [phi(g@@quo_map) : g in quo];
/*
    nfd_trivial := [i : i in [1..#nfd] |
		    IsTrivial(DirichletCharacter(nfd[i]))];
    nfd_old_trivial := [[i : i in [1..#nf] |
			 IsTrivial(DirichletCharacter(nf[i]))]
			: nf in nfd_old]; 
*/

    nfd_trivial := [i : i in [1..#nfd] |
		    X!DirichletCharacter(nfd[i]) in char_reps];
    nfd_old_trivial := [[i : i in [1..#nf] |
			 X!DirichletCharacter(nf[i]) in char_reps]
			: nf in nfd_old]; 

    cumsum := [0] cat [&+[#nf : nf in nfd_old[1..i]] : i in [1..#nfd_old]];
    a_idxs := &cat[ [idx + cumsum[j] : idx in nfd_old_trivial[j]]
		    : j in [1..#nfd_old]];
    a_idxs cat:= [idx + cumsum[#cumsum] : idx in nfd_trivial];

    as := [[* aps[idx] : idx in a_idxs *] : aps in as ];

    fixed_spaces := [Kernel(Transpose(gmat)-
			   IdentityMatrix(Rationals(), Nrows(gmat)))
		     : gmat in gs];

    Gamma_fixed_space := &meet fixed_spaces;
    
    Kf_to_KKs := [* field_embs[i] : i in a_idxs *];
    // Kf_to_KKs := field_embs;
    
    Ps := [];
    for P_Q_huge in Ps_Q_huge do
	function P(a)
	    return make_nf_func(a, Q_huge, P_Q_huge);
	end function;
	Append(~Ps, P);
    end for;

    fs,tos := fixed_cusp_forms_QQ(as, primes, Tpluslist,Kf_to_KKs,prec,
				  Gamma_fixed_space,Bs,
				  Ps,elts,
				  cc, sigma_i,
				  NN,Nold,
				  oldspaces_full, oldspaces,
				  C, Cplus, chis,
				  Q_huge, Q_L, zeta_huge, zeta_K,
				  K, SKpowersQ_L,
				  B_mats,
				  Tr_mats,
				  deg_divs,
				  num_coset_reps,
				  J,
				  Q_K_plus_to_Q_K, Q_K_to_Q_huge,
				  Q_L_to_Q_huge
				  : TotallyReal := TotallyReal);
    return fs, tos;
end function;

function qExpansionBasis(grp_name, prec, grps)
    grp := grps[grp_name];
    N := grp`level;
    gens := grp`matgens;
    H := sub<SL(2, Integers(N)) | gens>;
    real_H := GetRealConjugate(H);
    G := GetGLModel(real_H);
    fs := BoxMethod(G, prec);
    max_deg := Maximum(7-grp`genus, 2);
    Q_K_plus := BaseRing(Universe(fs));
    _<qKp> := PowerSeriesRing(Q_K_plus);
    fs_qexps:=[int_qexp(f,prec,qKp,Q_K_plus) : f in fs];
    X, fs := FindCurveSimple(fs_qexps, prec, max_deg);
    g := Genus(X);
    if g eq 0 then
	X, fs := FindHyperellipticCurve(fs_qexps, prec);
    end if;
    assert Genus(X) eq grp`genus;
    return fs;
end function;

function ModularCurve(G, genus, prec)
    assert genus ge 2;
    fs := BoxMethod(G, prec);
    max_deg := Maximum(7-genus, 2);
    K := BaseRing(Universe(fs));
    _<q> := PowerSeriesRing(K);
    fs_qexps:=[int_qexp(f,prec,q,K) : f in fs];
    X, fs := FindCurveSimple(fs_qexps, prec, max_deg);
    g := Genus(X);
    if g eq 0 then
	X, fs := FindHyperellipticCurve(fs_qexps, prec);
    end if;
    assert Genus(X) eq genus;
    return X;
end function;
