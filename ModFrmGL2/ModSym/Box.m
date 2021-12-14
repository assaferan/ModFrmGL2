import "linalg.m" : Restrict;

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

function gauss_sum(eps, Q21, zeta7, K, Q3_to_Q21, Q7_to_Q21)
    if Order(eps) eq 1 then
	return Q21!1;
    end if;
    return &+[Q7_to_Q21(zeta7)^i*Q3_to_Q21(eps(i)) : i in [0..K-1]];
end function;

function Rop(eps, SKpowersQ3, K)
    if Order(eps) eq 1 then
	return SKpowersQ3[1]^0;
    end if;
    return &+[(eps^(-1))(i-1)*SKpowersQ3[i] : i in [1..K]];
end function;

function pi35(mu, oldspace35, oldspace351, oldspace357, B351_mat)
    Kf := BaseRing(Parent(mu));
    if mu in ChangeRing(oldspace35, Kf) then
	oldsp1 := ChangeRing(oldspace351, Kf);
	oldsp7 := ChangeRing(oldspace357, Kf);
	oldsp := VectorSpaceWithBasis(Basis(oldsp1) cat Basis(oldsp7));
	bb := Solution(Matrix(Basis(oldsp)), mu);
    else
	return mu;
    end if;
    dd := Dimension(oldsp) div 2;
    mu1 := &+[bb[i]*Basis(oldsp)[i] : i in [1..dd]];
    mu7 := &+[bb[i+dd]*Basis(oldsp)[i+dd] : i in [1..dd]];
    assert mu1 + mu7 eq mu;
    return mu1*ChangeRing(Transpose(B351_mat), Kf);
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

function pr35(flist, check, N35, prec)
    K := Universe(flist);
    if IsAbsoluteField(K) then
	folds := [f : f in N35 |
		  &and[Coefficients(MinimalPolynomial(flist[i]))
		       eq Coefficients(MinimalPolynomial(Coefficient(f,i)))
		       : i in [1..check]]];
    else
	folds := [f : f in N35 |
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

function chartwist(flist, i, chi, Q3_to_Q21)
    return [Q3_to_Q21(chi(n))^i*flist[n] : n in [1..#flist]];
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

function make_real_twist_orbit(alist, Kf_to_KK, Tpluslist,
			       prec, cc, sigma, NN, Nold,
			       oldspaces_full, oldspaces,
			       C, Cplus, chi, Q21, zeta7,
			       K, SKpowersQ3,
			       B_mats,
			       Tr_mats,
			       deg_divs,
			       num_coset_reps,
			       Q3_to_Q21, Q7_to_Q21)
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
	intsn := intsn meet Kernel(ChangeRing(T, Kf) - Kf!alist[i+1]);
    end for;
    Hb := [x*ChangeRing(BasisMatrix(Cplus),Kf) : x in Basis(intsn)];
    H := sub<Universe(Hb)|Hb> meet subsp;
    assert Dimension(H) eq 1;
    mu := Basis(H)[1];
    LKK<qKK> := PowerSeriesRing(Codomain(Kf_to_KK), prec);
    mutwists := [];
    ftwists := [];
    powerlist := [];
    for i in [0..2] do
	Append(~powerlist, i);
	ftw := chartwist(flist, 2*i, chi,Q3_to_Q21);
	ftwists cat:= [[gauss_sum(chi^(-2*i),Q21,zeta7,K,Q3_to_Q21,Q7_to_Q21)*a : a in ftw]];
	mutw := mu*ChangeRing(Transpose(Rop(chi^(-2*i), SKpowersQ3, K)), Kf);
	mutwists cat:= [mutw];
	// TODO !! Check whether this is the right thing to do here!!
	// What if there are more than 2?
	for sp_idx in [1..#oldspaces_full] do
	    if mutw in ChangeRing(oldspaces_full[sp_idx], Kf) then
		mutwists cat:= [pi(mutw, oldspaces_full[sp_idx],
				  oldspaces[sp_idx], B_mats[sp_idx][1]) *
			       Transpose(ChangeRing(Tr_mats[sp_idx][2], Kf))
			       / num_coset_reps[sp_idx]];
		ftwpr := pr(ftw, #alist, Nold[sp_idx], prec);
		d := deg_divs[sp_idx][2];
		ftwprB := &+[gauss_sum(chi^(-2*i),Q21,zeta7,K,
				       Q3_to_Q21,Q7_to_Q21)
			     *ftwpr[j]*qKK^(d*j)
			     : j in [1..prec-1]];
		ftwists cat:= [[Coefficient(ftwprB,idx) : idx in [1..prec-1]]];
		Append(~powerlist, i);
	    end if;
	end for;
    end for;
    return VectorSpaceWithBasis(mutwists), ftwists, powerlist;
end function;

function first_nonzero_cf(a)
    for b in a do
	if not IsZero(b) then
	    return b;
	end if;
    end for;
end function;

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

function Pdmatrix(Pd, d, powerlist, chi, Q3, Q21, zeta7,K, Q3_to_Q21, Q7_to_Q21)
    n := #powerlist;
    gs_ratios := [Pd(gauss_sum(chi^(-2*i),Q21,zeta7,K, Q3_to_Q21, Q7_to_Q21))
		     /gauss_sum(chi^(-2*i),Q21,zeta7,K, Q3_to_Q21, Q7_to_Q21)
		  : i in powerlist];
    small_diag := DiagonalMatrix([a@@Q3_to_Q21 : a in gs_ratios]);
    Zn := ZeroMatrix(Q3, n);
    list := [];
    for i in [0..EulerPhi(K)-1] do
	j := (d*i) mod K;
	if j eq K-1 then
	    Append(~list, [-small_diag : k in [1..EulerPhi(K)]]);
	else
	    Zns := [Zn : k in [1..EulerPhi(K)-1]];
	    Insert(~Zns, j+1, small_diag);
	    Append(~list, Zns);
	end if;
    end for;
    return BlockMatrix(list);
end function;

function fixed_cusp_forms_QQ(a2s, a3s, Tpluslist, Kf_to_KKs, prec,
			     Gamma_fixed_spaces, Bmats, Pds, ds,
			     cc, sigma, NN, Nold,
			     oldspaces_full,
			     oldspaces,
			     C, Cplus, chi,
			     Q21, Q3, zeta21, zeta7,
			     K, SKpowersQ3,
			     B_mats,
			     Tr_mats,
			     deg_divs,
			     num_coset_reps, J,
			     Q7plus_to_Q7, Q7_to_Q21, Q3_to_Q21)
    FCF := [];
    twist_orbit_indices := [];
    for i in [1..#a2s] do
	alist := [1,a2s[i], a3s[i]];
	Kf_to_KK := Kf_to_KKs[i];
	Kf := Domain(Kf_to_KK);
	KK := Codomain(Kf_to_KK);
	Q21_to_KK := hom<Q21->KK| KK!zeta21>;
	real_twist_orbit_ms, twist_mfs, powerlist :=
	    make_real_twist_orbit(alist, Kf_to_KK, Tpluslist,
				  prec, cc, sigma, NN, Nold,
				  oldspaces_full, oldspaces,
				  C, Cplus, chi, Q21, zeta7,
				  K, SKpowersQ3,
				  B_mats,
				  Tr_mats,
				  deg_divs,
				  num_coset_reps,
				  Q3_to_Q21, Q7_to_Q21);
	twist_orbit_index := [];
	FCF_orbit := [];
	for GFS in Gamma_fixed_spaces do
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
					  chi, Q3, Q21,
					  zeta7,K, Q3_to_Q21, Q7_to_Q21),Kf)^(-1))-
			       IdentityMatrix(Kf,
					      EulerPhi(K)));
		end for;
		fmssQQ_cc := [[cc(Kf_to_KK(a)) : a in Eltseq(v)]
			      : v in Basis(fixed_ms_space_QQ)];
		fixed_basis_cfs_cc := [[cc(Kf_to_KK(a)) : a in mulist]
				       : mulist in fixed_basis_cfs];
		fixed_cusp_forms_orbit_raw :=
		    [&+[clist[i]*Vector(twist_mfs[i]) : i in [1..#clist]]
		     : clist in fixed_basis_cfs_cc];
		fcf_ext := &cat[[Vector(Q7_to_Q21(zeta7^(-i))*f)
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
		fixed_cusp_forms_orbit_Q7plus :=
		    [Vector([(a@@Q7_to_Q21)@@Q7plus_to_Q7 :
			     a in Eltseq(f)])
		     : f in fixed_cusp_forms_orbit_ns];
		FCF_orbit cat:= [fixed_cusp_forms_orbit_Q7plus];
		twist_orbit_index cat:=
		    [[i : j in [1..#fixed_cusp_forms_orbit_Q7plus]]];
	    else
		FCF_orbit cat:= [[]];
		twist_orbit_index cat:= [[]];
	    end if;
	end for;
	FCF cat:= [FCF_orbit];
	twist_orbit_indices cat:= [twist_orbit_index];
    end for;
    return [&cat[FCF[i][j] : i in [1..#FCF]] : j in [1..#Gamma_fixed_spaces]]
	 , [&cat[twist_orbit_indices[i][j] : i in [1..#FCF]]
	    : j in [1..#Gamma_fixed_spaces]];
end function;

function IsCompatibleChar(M1, M2)
    eps1 := DirichletCharacter(M1);
    eps2 := DirichletCharacter(M2);
    return
	IsCoercible(Parent(eps1), eps2) and (Parent(eps1)!eps2 eq eps1); 
end function;

function NewformDecompositionSubspaceMaps(M)
    ms := MultiSpaces(M);
    S := CuspidalSubspace(M);
    D := NewformDecomposition(S);
    DD := [* *];
    ims := [* *];
    for d in D do
	M_old := AmbientSpace(AssociatedNewSpace(d));
	if not IsIdentical(M_old, M) then
	    assert exists(i){i : i in [1..#ms] |
			     IsCompatibleChar(ms[i],M_old)};
	    M_new := ms[i];
	    multi := MultiQuotientMaps(M)[i];
	    quo_mat := Matrix([Representation(multi(x))
			       : x in Basis(M)]);
	    quo_inv := Matrix([Representation(b@@multi)
			       : b in Basis(M_new)]);
	    quo_lev := Level(M_new) div Level(M_old);
	    divs := Divisors(quo_lev);
	    betas := [];
	    for m in divs do
		dmap := DegeneracyMatrix(M_new, M_old, m);
		alpha := DegeneracyMatrix(M_old, M_new, m)
			 * Transpose(quo_mat);
		beta := Transpose(dmap) * Transpose(quo_mat);
		im_d := DualVectorSpace(d) * beta;
		im := VectorSpace(d) * alpha;
		Append(~ims, [im, im_d]);
		Append(~betas, <alpha, beta, quo_lev div m>);
	    end for;
	    for j in [1..#betas] do
		Append(~DD, <d, betas[j]>);
	    end for;
	else
	    one := <IdentityMatrix(BaseRing(d), Dimension(M)),
		    IdentityMatrix(BaseRing(d), Dimension(M)), 1>;
	    Append(~DD, <d, one >);
	    Append(~ims, [VectorSpace(d), DualVectorSpace(d)]);
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

function BoxExample(gens, Bgens, prec)
    M := 5;
    K := 7;
    N := M * K^2;
    g1 := CRT([8,1], [K^2,M]);
    g2 := CRT([1,2], [K^2,M]);
    MS := ModularSymbolsH(N, [g1,g2], 2, 0);
    C := CuspidalSubspace(MS);
    dim := Dimension(C);
    assert dim eq 122;
    old_levels := [N div p : p in PrimeDivisors(N)];
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

    T3 := HeckeOperator(C,3);
    T3plus := Restrict(T3, Cplus);
    T2 := HeckeOperator(C,2);
    T2plus := Restrict(T2, Cplus);
    Qrt2<rt2> := QuadraticField(2);
    Q21<zeta21> := CyclotomicField(21);
    sigma_Q21 := hom<Q21 -> Q21 | zeta21>;

    function sigma_i(a)
	return sigma(a, Q21, sigma_Q21);
    end function;
    
    _<x21> := PolynomialRing(Q21);
    Q21rt2<r2> := NumberField(x21^2-2);
    Q21rt17<r17> := NumberField(x21^2-17); 
    Q7<zeta7> := CyclotomicField(7);
    Embed(Q7, Q21, zeta21^(3*4));
    Q7plus<z7plus>, Q7plus_to_Q7 := sub<Q7 | zeta7 + zeta7^(-1)>;
    Q3<zeta3> := CyclotomicField(3);
    Embed(Q3, Q21, zeta21^(-7));
    Q3_to_Q21 := hom<Q3->Q21 | zeta21^(-7)>;
    Q7_to_Q21 := hom<Q7->Q21 | zeta21^(3*4)>;
    _<x3> := PolynomialRing(Q3);
    _<x7> := PolynomialRing(Q7);
    Q3rt2<rrr2> := NumberField(x3^2-2);
    Q3rt17<rrr17> := NumberField(x3^2-17);
    Q7plusq<q7p> := PowerSeriesRing(Q7plus, prec);
    Q3rt2_to_Q21rt2 := hom<Q3rt2 -> Q21rt2 | r2>;
    Qrt2_to_Q3rt2 := hom<Qrt2 -> Q3rt2 | rrr2>;
    Q3rt17_to_Q21rt17 := hom<Q3rt17 -> Q21rt17 | r17>;
    assert Q21rt2!zeta3 eq Q3rt2_to_Q21rt2(Q3rt2!zeta3);
    assert Q21rt17!zeta3 eq Q3rt17_to_Q21rt17(Q3rt17!zeta3);
    cc_Q21 := hom<Q21 -> Q21 | zeta21^(-1)>;

    function cc(a)
	return make_Q21_func(a, Q21, cc_Q21);
    end function;
    
    assert cc(Q21rt2!zeta21) eq Q21rt2!(zeta21^(-1));
    assert cc(Q21rt17!zeta21) eq Q21rt17!(zeta21^(-1));
    P2_Q21 := hom<Q21 -> Q21 | zeta21^(-5)>;
    Pm1_Q21 := hom<Q21 -> Q21 | zeta21^13>;
    
    I := IdentityMatrix(Rationals(), dim);
    chi := [eps : eps in Elements(DirichletGroup(K, Q3))
	    | eps(3) eq -zeta3][1];
    assert Order(chi) eq 6;
    SK := Matrix(2,2,[1,1/K,0,1]);
    SK_mat := ChangeRing(gen_to_mat([SK],C,C), Q3);
    SKpowers := [ChangeRing(I, Q3)];
    while (#SKpowers lt K) do
	SKpowers cat:= [SK_mat*SKpowers[#SKpowers]];
    end while;
    SKpowersQ3 := [ChangeRing(M, Q3) : M in SKpowers];
    a2s := [* 1,0,(-1+rrr17)/2,-2,rrr2,1+rrr2 *];
    a3s := [* 0,1,-(1+rrr17)/2,-3,-(1+rrr2),1-rrr2 *];
    a2stw := [* chi(2)^3*a : a in a2s *];
    a3stw := [* chi(3)^3*a : a in a3s *];
    assert a2s eq a2stw;
    assert &and[a3s[i] eq -a3stw[i] : i in [1..#a3s]];
    a2s := a2s cat [* a2stw[i] : i in [2..6] *];
    a3s := a3s cat [* a3stw[i] : i in [2..6] *];
    Tpluslist := [T2plus,T3plus];
 
    N35 := C_old_new[2];
    N49 := C_old_new[1];
    Nnew := NewSubspace(C);

    nfd_old := [NewformDecomposition(s) : s in C_old_new];    
    nfd := NewformDecomposition(Nnew);
    Nold := [[* qEigenform(d,prec) : d in nf *] : nf in nfd_old]; 
    Nnew := [* qEigenform(d,prec) : d in nfd *];
    NN := (&cat Nold) cat Nnew;
    oldspace_bases := [[* Rows(Transpose(tr)) : tr in m *] : m in Tr_mats];
    oldspaces := [[sub<Universe(bb) | bb> : bb in bases]
		  : bases in oldspace_bases];
   
    oldspaces_full := [&+spaces : spaces in oldspaces];
    assert &and[Dimension(oldspaces_full[i]) eq
		&+[Dimension(s) : s in oldspaces[i]] : i in [1..#oldspaces]];

    fixed_spaces := [Kernel(Transpose(gmat)-
			   IdentityMatrix(Rationals(), Nrows(gmat)))
		     : gmat in gs];
    Gamma_fixed_spaces := [fixed_spaces[1] meet fixed_spaces[2],
			   fixed_spaces[1] meet fixed_spaces[3],
			   fixed_spaces[1] meet fixed_spaces[4],
			   fixed_spaces[1] meet fixed_spaces[2]
				       meet fixed_spaces[3]];
    Kf_to_KKs := [Q3_to_Q21,Q3_to_Q21,Q3rt17_to_Q21rt17,Q3_to_Q21,
		  Q3rt2_to_Q21rt2,Q3rt2_to_Q21rt2,Q3_to_Q21,
		  Q3rt17_to_Q21rt17,Q3_to_Q21,Q3rt2_to_Q21rt2,
		  Q3rt2_to_Q21rt2];
    Gamma_fixed_spaces := [Gamma_fixed_spaces[i]
			   : i in [1..#Gamma_fixed_spaces - 1]];
    function P2(a)
	return make_Q21_func(a, Q21, P2_Q21);
    end function;
    function Pm1(a)
	return make_Q21_func(a, Q21, Pm1_Q21);
    end function;
    fs,tos := fixed_cusp_forms_QQ(a2s,a3s,Tpluslist,Kf_to_KKs,prec,
				  Gamma_fixed_spaces,Bs,
				  [P2,Pm1],
				  [2,-1], cc, sigma_i,
				  NN,Nold,
				  oldspaces_full, oldspaces,
				  C, Cplus, chi,
				  Q21, Q3, zeta21, zeta7,
				  K, SKpowersQ3,
				  B_mats,
				  Tr_mats,
				  deg_divs,
				  num_coset_reps,
				  J,
				  Q7plus_to_Q7, Q7_to_Q21, Q3_to_Q21);
    return fs, tos;
end function;

function int_qexp(f, prec, q7p, Q7plus)
    den := LCM([Denominator(f[i]) : i in [1..prec-1]]);
    ff := ChangeRing(f, Q7plus);
    return den*&+[ff[i]*q7p^i : i in [1..prec-1]];
end function;

function FindCurveSimple(qexps, prec, n_rel)
    R<q> := Universe(qexps);
    K := BaseRing(R);
    zeta := K.1;
    fs := [f + O(q^prec) : f in qexps];
    n := #fs;
    R<[x]> := PolynomialRing(K,n);
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
    gens, Bgens := get_Box_gens();
    fs, tos := BoxExample(gens, Bgens, prec);
    assert &and[#fs[1] eq 6, #fs[2] eq 5, #fs[3] eq 8];
    Q7plus := BaseRing(Universe(fs[1]));
    _<q7p> := PowerSeriesRing(Q7plus);
    fs_qexps:=[[int_qexp(f,prec,q7p,Q7plus) : f in AA] : AA in fs];
    curves := [FindCurveSimple(fs, prec, 2) : fs in fs_qexps];
    assert [Genus(X) : X in curves] eq [6,5,8];
end procedure;

