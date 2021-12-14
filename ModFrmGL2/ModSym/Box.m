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

/*
function P2(a, Q21, P2_Q21)
    F := Parent(a);
    if F eq Q21 then
	return P2_Q21(a);
    end if;
    V, embinv := VectorSpace(F, BaseRing(F));
    emb := embinv^(-1);
    return &+[P2_Q21(Eltseq(a)[i])*emb(Basis(V)[i])
	      : i in [1..Dimension(V)]];
end function;

function Pm1(a, Q21, Pm1_Q21)
    F := Parent(a);
    if F eq Q21 then
	return Pm1_Q21(a);
    end if;
    V, embinv := VectorSpace(F, BaseRing(F));
    emb := embinv^(-1);
    return &+[Pm1_Q21(Eltseq(a)[i])*emb(Basis(V)[i])
	      : i in [1..Dimension(V)]];
end function;
*/

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

function make_real_twist_orbit(alist, Kf_to_KK,Tpluslist,
			       prec, cc, sigma, NN, N35, N49,
			       oldspace35, oldspace351,
			       oldspace357, oldspace49,
			       oldspace491,
			       C, Cplus, chi, Q21, zeta7,
			       K, SKpowersQ3,
			       B351_mat, B491_mat,
			       Tr357_mat, Tr495_mat,
			       CosetReps357, CosetReps495,
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
    if exists(g){g : g in N49 | IsEqualPowerSeries(f,g)} then
	subsp := ChangeRing(oldspace491, Kf);
    elif exists(g){g : g in N35 | IsEqualPowerSeries(f,g)} then
	subsp := ChangeRing(oldspace351, Kf);
    else
	subsp := VectorSpace(Kf, dim);
    end if;
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
	if mutw in ChangeRing(oldspace35, Kf) then
	    mutwists cat:= [pi35(mutw, oldspace35, oldspace351,
				 oldspace357, B351_mat)*
			    Transpose(ChangeRing(Tr357_mat, Kf))
			    / #CosetReps357];
	    ftwpr35 := pr35(ftw, #alist, N35, prec);
	    ftwpr35B7 := &+[gauss_sum(chi^(-2*i),Q21,zeta7,K,Q3_to_Q21,Q7_to_Q21)
			    *ftwpr35[j]*qKK^(7*j)
			    : j in [1..prec-1]];
	    ftwists cat:= [[Coefficient(ftwpr35B7,i) : i in [1..prec-1]]];
	    Append(~powerlist, i);
	elif mutw in ChangeRing(oldspace49, Kf) then
	    mutwists cat:= [mutw * Transpose(ChangeRing(Tr495_mat, Kf)
					     *ChangeRing(B491_mat, Kf))
			    / #CosetReps495];
	    ftwB7 := &+[gauss_sum(chi^(-2*i),Q21,zeta7,K,Q3_to_Q21,Q7_to_Q21)
			*ftw[j]*qKK^(5*j)
			: j in [1..prec-1]];
	    ftwists cat:= [[Coefficient(ftwB7,i) : i in [1..prec-1]]];
	    Append(~powerlist, i);
	end if;
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
			CosetReps357, CosetReps495,
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
				  CosetReps357, CosetReps495,
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
			     cc, sigma, NN, N35, N49,
			     oldspace35, oldspace351,
			     oldspace357,
			     oldspace49, oldspace491,
			     C, Cplus, chi,
			     Q21, Q3, zeta21, zeta7,
			     K, SKpowersQ3,
			     B351_mat, B491_mat,
			     Tr357_mat, Tr495_mat,
			     CosetReps357, CosetReps495, J,
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
				  prec, cc, sigma, NN, N35, N49,
				  oldspace35, oldspace351,
				  oldspace357,
				  oldspace49, oldspace491,
				  C, Cplus, chi, Q21, zeta7,
				  K, SKpowersQ3,
				  B351_mat, B491_mat,
				  Tr357_mat, Tr495_mat,
				  CosetReps357, CosetReps495,
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
		    // [Vector([((a@@Q21_to_KK)@@Q7_to_Q21)@@Q7plus_to_Q7 :
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

function BoxExample()
    M := 5;
    K := 7;
    N := M * K^2;
    g1 := CRT([8,1], [K^2,M]);
    g2 := CRT([1,2], [K^2,M]);
    MS := ModularSymbolsH(N, [g1,g2], 2, 0);
    C := CuspidalSubspace(MS);
    assert Dimension(C) eq 122;
    dim := Dimension(C);
    M35 := ModularSymbolsH(35, [CRT([2,1],[5,7])], 2, 0);
    M49 := ModularSymbolsH(49, [8], 2, 0);
    C35 := CuspidalSubspace(M35);
    C49 := CuspidalSubspace(M49);
    Cnew := NewSubspace(C);
    C35new := NewSubspace(C35);
    C49new := NewSubspace(C49);
    assert Dimension(C35) eq Dimension(C35new);
    assert Dimension(C49) eq Dimension(C49new);
    C35b := Basis(C35);
    C49b := Basis(C49);
    C35mat := Transpose(Matrix([Eltseq(c) : c in C35b]));
    C49mat := Transpose(Matrix([Eltseq(c) : c in C49b]));
    g0 := [61,-55,10,-9];
    assert Determinant(Matrix(2,2,g0)) eq 1;
    phi7 := [3,1,-10,-3];
    assert Determinant(Matrix(2,2,phi7)) eq 1;
    w5 := [2890, 193 , -8685, -580];
    assert Determinant(Matrix(2,2,w5)) eq 5;
    phi7w5 := Eltseq(Matrix(2,2,phi7)*Matrix(2,2,w5));
    gens := [g0,phi7,w5,phi7w5];
    gmats := [Matrix(2,2,[g[1],g[2]/K,g[3]*K,g[4]]) : g in gens];
    Bmats := [Matrix(2,2,[6,5/K,-5*K,-4]),IdentityMatrix(Rationals(),2)];
    // This could be made faster,
    // but right now I want to follow Box closely
    gs := [gen_to_mat([g^(-1)],C,C) : g in gmats];
    Bs := [gen_to_mat([B^(-1)],C,C) : B in Bmats];
    J := Transpose(StarInvolution(C));
//    Qdim := VectorSpace(Rationals(), dim);
    Cplus := Kernel(Transpose(J-1));
    CosetReps351 := [Matrix(2,2,g) : g in [[1,0,0,1],[8,-3, 35, -13],[ 29, -21,1\
05, -76],[ 29,-17, 70, -41],[-13, 3,-35,8],[ -76, 21,-105,29],[-41,  17,-70,  \
29]]];
    CosetReps357 := [Matrix(2,2,g) : g in [[1,0,0,7],[1, 1,0, 7],[ 8,-3,245,-91],[ 1,-1,0,7],[-13,3,-245, 56],[1,2,0,7],[ 43,-16,245,-91]]];
    CosetReps491 := [Matrix(2,2,g) : g in [[1, 0,0, 1],[-13,2,-98,15],[ 50,-11,4\
41, -97],[ 155,-114,1274,-937],[-41,11,-343,92],[ -83,34,-686,281]]];
    CosetReps495 := [Matrix(2,2,g) : g in [[1, 0,0, 5],[1, 1,0, 5],[ 1, -1, 0,  \
5],[1, 2,0, 5],[ 50,-11,2205, -485],[71,-32,2940,-1325]]];
    Tr357_mat, Tr357_ims := gen_to_mat([gam : gam in CosetReps357],C35,C);
    Tr351_mat, Tr351_ims := gen_to_mat(CosetReps351,C35,C);
    Tr491_mat, Tr491_ims := gen_to_mat(CosetReps491,C49,C);
    Tr495_mat, Tr495_ims := gen_to_mat(CosetReps495,C49,C);

    assert [Rank(m) : m in [*Tr357_mat, Tr351_mat, Tr491_mat, Tr495_mat*]]
	   eq [14,14,6,6];

    Tr357_mat /:= 7;
    Tr495_mat /:= 5;

    I14 := IdentityMatrix(Rationals(), 14);
    I6 := IdentityMatrix(Rationals(), 6);
    
    B351_mat := Bdmatrix(C35,C35mat,1,C);
    B357_mat := Bdmatrix(C35,C35mat,7,C);
    B491_mat := Bdmatrix(C49,C49mat,1,C);
    B495_mat := Bdmatrix(C49,C49mat,5,C);
    
    assert Transpose(Tr351_mat)*Transpose(B351_mat) eq 7*I14;
    assert Transpose(Tr357_mat)*Transpose(B357_mat) eq 7*I14;
    assert Transpose(Tr491_mat)*Transpose(B491_mat) eq 6*I6;
    assert Transpose(Tr495_mat)*Transpose(B495_mat) eq 6*I6;
    T3 := HeckeOperator(C,3);
    T3plus := Restrict(T3, Cplus);
    T2 := HeckeOperator(C,2);
    T2plus := Restrict(T2, Cplus);
    prec := 200;
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
    N35 := NewSubspace(C35);
    N49 := NewSubspace(C49);
    Nnew := NewSubspace(C);
    nfd35 := NewformDecomposition(N35);
    nfd49 := NewformDecomposition(N49);
    nfd := NewformDecomposition(Nnew);
    N35 := [* qEigenform(d,prec) : d in nfd35 *];
    N49 := [* qEigenform(d,prec) : d in nfd49 *];
    Nnew := [* qEigenform(d,prec) : d in nfd *];
    NN := N49 cat N35 cat Nnew;
    oldspace491 := Rows(Transpose(Tr491_mat));
    oldspace491_basis := Rows(Transpose(Tr491_mat));
    oldspace491 := sub< Universe(oldspace491_basis) | oldspace491_basis >;
    oldspace495_basis := Rows(Transpose(Tr495_mat));
    oldspace495 := sub< Universe(oldspace495_basis) | oldspace495_basis >;
    oldspace49 := oldspace491 + oldspace495;
    oldspace351_basis := Rows(Transpose(Tr351_mat));
    oldspace351 := sub< Universe(oldspace351_basis) | oldspace351_basis >;
    oldspace357_basis := Rows(Transpose(Tr357_mat));
    oldspace357 := sub< Universe(oldspace357_basis) | oldspace357_basis >;
    oldspace35 := oldspace351 + oldspace357;
    assert Dimension(oldspace35) eq
	   Dimension(oldspace351) + Dimension(oldspace357);
    assert Dimension(oldspace49) eq
	   Dimension(oldspace491) + Dimension(oldspace495);
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
				  NN,N35,N49,
				  oldspace35, oldspace351,
				  oldspace357,
				  oldspace49, oldspace491,
				  C, Cplus, chi,
				  Q21, Q3, zeta21, zeta7,
				  K, SKpowersQ3,
				  B351_mat, B491_mat,
				  Tr357_mat, Tr495_mat,
				  CosetReps357, CosetReps495, J,
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
//     T, E := EchelonForm(Matrix([AbsEltseq(f) : f in fs]));
    n := #fs;
//    fs := [&+[E[j][i]*fs[i] : i in [1..n]] : j in [1..n]];
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

function testBoxExample()
    fs, tos := BoxExample();
    assert &and[#fs[1] eq 6, #fs[2] eq 5, #fs[3] eq 8];
    fs_qexps:=[[int_qexp(f,prec,q7p,Q7plus) : f in AA] : AA in fs];
    curves := [FindCurveSimple(fs, 200, 2) : fs in fs_qexps];
    assert [Genus(X) : X in curves] eq [6,5,8];
end function;

