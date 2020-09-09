// Following correspondence with Joshua Box, this is implementation of twists
// in order to get q-expansions.

import "./ModSym/operators.m" : ActionOnModularSymbolsBasis;
import "./ModSym/qexpansion.m" : EigenvectorModSymSign;
import "ModSym/modsym.m" : get_degeneracy_reps;
import "ModSym/core.m" : ConvFromModularSymbol;

function TwistBasis_old(N, prec)
    X := DirichletGroupFull(N);
    L := BaseRing(X);
    X_even := [chi : chi in Elements(X) | Evaluate(chi, -1) eq 1];
    M := ModularSymbols(CongruenceSubgroup(N), 2, Rationals(), 0);
    S := CuspidalSubspace(M);
    // D := NewformDecomposition(S);
    D := Decomposition(S, HeckeBound(S));
    v1_plus := ChangeRing(EigenvectorModSymSign(D[1], 1), L);
    v1_minus := ChangeRing(EigenvectorModSymSign(D[1], -1), L);
    twist_basis_plus := [];
    twist_basis_minus := [];
    u := [1, 1, 0, 1]; 
    u_mat := Transpose(ActionOnModularSymbolsBasis(u, M));
    for chi in X_even do
	R_chi := ChangeRing(&+[Evaluate(chi^(-1), t) * u_mat^t : t in [0..N-1]], L);
	Append(~twist_basis_plus, v1_plus * R_chi);
	Append(~twist_basis_minus, v1_minus * R_chi);
    end for;
    twist_basis := twist_basis_plus cat twist_basis_minus;
    assert sub<Universe(twist_basis) | twist_basis> eq ChangeRing(DualVectorSpace(S), L);
    f := qEigenform(D[1], prec);
    K := BaseRing(Parent(f));
    KL := Compositum(K,L);
    R := PowerSeriesRing(KL);
    twist_f_basis := [R | Twist(f, chi) : chi in X_even];
    return twist_basis, twist_f_basis;
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
    for d in D do
	M_old := AmbientSpace(d);
	if not IsIdentical(M_old, M) then
	    assert exists(i){i : i in [1..#ms] | IsCompatibleChar(ms[i],M_old)};
	    M_new := ms[i];
	    quo_mat := Matrix([Representation(MultiQuotientMaps(M)[i](x))
			       : x in Basis(M)]);
	    quo_lev := Level(M_new) div Level(M_old);
	    divs := Divisors(quo_lev);
	    betas := [];
	    ims := [];
	    for m in divs do
		dmap := DegeneracyMatrix(M_new, M_old, m);
		beta := Transpose(dmap) * Transpose(quo_mat);
		im_d := DualVectorSpace(d) * beta;
		Append(~ims, im_d);
		Append(~betas, <beta, quo_lev div m>);
	    end for;
	    for j in [1..#betas] do
		Append(~DD, <d, betas[j], betas>);
	    end for;
	else
	    one := <IdentityMatrix(BaseRing(d), Dimension(M)), 1>;
	    Append(~DD, <d, one, [one]>); 
	end if;
    end for;
    return DD;
end function;

function TwistBasis0(N, prec)
    X := DirichletGroupFull(N);
    L := BaseRing(X);
    X_even := [chi : chi in Elements(X) | Evaluate(chi, -1) eq 1];
    M := ModularSymbols(CongruenceSubgroup(N));
    S := CuspidalSubspace(M);
    D := NewformDecompositionSubspaceMaps(M);

    indices_covered := {};
    next_idx := 1;
    twist_bases := [* *];
    twist_f_bases := [* *];
    fields := [* *];
    while next_idx le #D do
	f := qEigenform(D[next_idx][1], prec);
	K := BaseRing(Parent(f));
	Append(~fields, K);
	KL := Compositum(K,L);
	R<q> := PowerSeriesRing(KL);

	v1_plus := EigenvectorModSymSign(D[next_idx][1], 1);
	assert IsIsomorphic(BaseRing(v1_plus), K);
//	v1_minus := EigenvectorModSymSign(D[next_idx][1], -1);
//	assert IsIsomorphic(BaseRing(v1_minus), K);
	v1_plus := ChangeRing(v1_plus, KL);
//	v1_minus := ChangeRing(v1_minus, KL);
	// embed them in the underlying vector space of M
	v1_plus := v1_plus * ChangeRing(D[next_idx][2][1], KL);
//	v1_minus := v1_minus * ChangeRing(D[next_idx][2][1], KL);
	twist_basis_plus := [];
//	twist_basis_minus := [];
	twist_f_basis := [R | ];
	// u := [1, 1, 0, 1];
	for chi in X_even do
	    c := Conductor(chi);
	    u := [c, 1, 0, c];
	    u_mat := Transpose(ActionOnModularSymbolsBasis(u, M));
	    R_chi := ChangeRing(&+[Evaluate(chi^(-1), t) * u_mat^t : t in [0..N-1]], KL);
	    v_plus := v1_plus * R_chi;
//	    v_minus := v1_minus * R_chi;
	    assert exists(j){j : j in [1..#D] |
			     v_plus in ChangeRing(DualVectorSpace(D[j][1])
						  * D[j][2][1] ,KL)};
	    Include(~indices_covered, j);
	    betas := D[j][3];
	    v_plus_orig := Solution(ChangeRing(D[j][2][1], KL), v_plus);
//	    v_minus_orig := Solution(ChangeRing(D[j][2][1], KL), v_minus);
	    f_twist := R!Twist(f, BaseExtend(chi, KL));
	    for beta in betas do
		v_p := v_plus_orig * ChangeRing(beta[1], KL);
//		v_m := v_minus_orig * ChangeRing(beta[1], KL);
		g := Evaluate(f_twist, q^beta[2]);
		for sig in Automorphisms(KL) do
		    Append(~twist_basis_plus, ApplyAut(sig, v_p));
//		    Append(~twist_basis_minus, ApplyAut(sig, v_m));
		    Append(~twist_f_basis, ApplyAut(sig, g));
		end for;
	    end for;
	end for;
//	twist_basis := twist_basis_plus cat twist_basis_minus;
//	Append(~twist_bases, twist_basis);
	Append(~twist_bases, twist_basis_plus);
	Append(~twist_f_bases, twist_f_basis);
	while next_idx in indices_covered do
	    next_idx +:= 1;
	end while;
    end while;
    for F in fields do
	KL := Compositum(L, F);
    end for;
    big_basis := &cat [[ChangeRing(v, KL) : v in basis] : basis in twist_bases];
    V := sub<Universe(big_basis) | big_basis>;
    // assert V eq ChangeRing(DualVectorSpace(S), KL);
    assert Dimension(V) eq Dimension(S) div 2;
    return twist_bases, twist_f_bases;
end function;

function TwistBasis(N, prec)
    X := DirichletGroupFull(N);
    L := BaseRing(X);
    X_even := [chi : chi in Elements(X) | Evaluate(chi, -1) eq 1];
    M := ModularSymbols(CongruenceSubgroup(N), 2, Rationals(), 0);
    S := CuspidalSubspace(M);
    D := NewformDecomposition(S);

    indices_covered := {};
    next_idx := 1;
    twist_bases := [* *];
    twist_f_bases := [* *];
    fields := [* *];
    one := GL(2, Rationals())!1;
    while next_idx le #D do
	d := D[next_idx];
	d_old := AssociatedNewSpace(d);
	f := qEigenform(d, prec);
	K := BaseRing(Parent(f));
	Append(~fields, K);
	KL := Compositum(K,L);
	R<q> := PowerSeriesRing(KL);
	v1_plus := EigenvectorModSymSign(d_old, 1);
	assert IsIsomorphic(BaseRing(v1_plus), K);
	v1_plus := ChangeRing(v1_plus, KL);
	// embed them in the underlying vector space of M
	beta := DegeneracyMatrix(AmbientSpace(d),AmbientSpace(d_old),one);
	v1_plus := v1_plus * ChangeRing(Transpose(beta), KL);
	twist_basis_plus := [];
	twist_f_basis := [R | ];
	for chi in X_even do
	    c := Conductor(chi);
	    u := [c, N, 0, c];
	    u_mat := Transpose(ActionOnModularSymbolsBasis(u, M));
	    R_chi := ChangeRing(&+[Evaluate(chi^(-1), t) * u_mat^t : t in [0..N-1]], KL);
	    v_plus := v1_plus * R_chi;
	    assert exists(j){j : j in [1..#D] |
			     v_plus in ChangeRing(DualVectorSpace(D[j]) ,KL)};
	    Include(~indices_covered, j);
	    d := D[j];
	    d_old := AssociatedNewSpace(d);
	    quo_lev := Level(d) div Level(d_old);
	    divisors := get_degeneracy_reps(d_old, d, Divisors(quo_lev));
	    betas := [Transpose(DegeneracyMatrix(AmbientSpace(d),AmbientSpace(d_old),m))
		      : m in divisors];
	    assert exists(beta){beta : beta in betas |
				v_plus in ChangeRing(DualVectorSpace(d_old)*beta, KL)};
	    v_plus_orig := Solution(ChangeRing(beta, KL), v_plus);
	    f_twist := R!Twist(f, BaseExtend(chi, KL));
	    for l in [1..#divisors] do
		v_p := v_plus_orig * ChangeRing(betas[l], KL);
		g := Evaluate(f_twist, q^(quo_lev div Integers()!divisors[l][1,1]));
		for sig in Automorphisms(KL) do
		    Append(~twist_basis_plus, ApplyAut(sig, v_p));
		    Append(~twist_f_basis, ApplyAut(sig, g));
		end for;
	    end for;
	end for;
	Append(~twist_bases, twist_basis_plus);
	Append(~twist_f_bases, twist_f_basis);
	while next_idx in indices_covered do
	    next_idx +:= 1;
	end while;
    end while;
    for F in fields do
	KL := Compositum(L, F);
    end for;
    big_basis := &cat [[ChangeRing(v, KL) : v in basis] : basis in twist_bases];
    V := sub<Universe(big_basis) | big_basis>;
    // assert V eq ChangeRing(DualVectorSpace(S), KL);
    assert Dimension(V) eq Dimension(S) div 2;
    return twist_bases, twist_f_bases;
end function;

function qExpansion(vs, N, prec)
    twist_basis, twist_f_basis := TwistBasis(N, prec);
    g := #twist_basis div 2;
    L := BaseRing(Universe(twist_basis));
    K := BaseRing(vs);
    KL := Compositum(K,L);
    R<q> := PowerSeriesRing(KL);
    twist_coeffs := Solution(ChangeRing(Matrix(twist_basis), KL), ChangeRing(vs, KL));
    f := &+[twist_coeffs[i] * R!twist_f_basis[i] : i in [1..g]];
    f_nor := f / Coefficient(f, 1);
    return f_nor;
end function;

// Here x is a symbol for Gamma(N)
function FullGammaIsomElt(M, x)
    N := Level(Parent(x));
    symb := ModularSymbol(x);
    new_symb := ModularSymbolApply([1,0,0,N], symb);
    new_x := ConvFromModularSymbol(M, new_symb);
    return new_x;
end function;

function FullGammaIsom(M, M_full)
    return Matrix([Representation(FullGammaIsomElt(M, x)) :
		   x in Basis(M_full)]);
end function;

function FindCurveSimple(qexps, prec, n_rel)
    R<q> := Universe(qexps);
    K<zeta> := BaseRing(R);
    fs := [f + O(q^prec) : f in qexps];
    n := #fs;
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
