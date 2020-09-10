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

function NewformDecompositionSubspaceMaps2(M, prec)
    ms := MultiSpaces(M);
    S := CuspidalSubspace(M);
    D := NewformDecomposition(S);
    DD := [* *];

    F := Rationals();
    evs := AssociativeArray(D);
    for d in D do
	evs_d := [];
	v := EigenvectorModSymSign(d,1);
	f := qEigenform(d, prec);
	K := BaseRing(v);
	F := Compositum(F, K);
	assert IsIsomorphic(K, BaseRing(Parent(f)));
	f := PowerSeriesRing(K)!f;
	for sig in Automorphisms(K) do
	    Append(~evs_d, <ApplyAut(sig, v), ApplyAut(sig, f)>);
	end for;
	evs[d] := <evs_d, K>;
    end for;
    
    for d in D do
	K := evs[d][2];
	M_old := AmbientSpace(d);
	if not IsIdentical(M_old, M) then
	    assert exists(i){i : i in [1..#ms] | IsCompatibleChar(ms[i],M_old)};
	    M_new := ms[i];
	    quo_mat := Matrix([Representation(MultiQuotientMaps(M)[i](x))
			       : x in Basis(M)]);
	    quo_lev := Level(M_new) div Level(M_old);
	    divs := Divisors(quo_lev);
	    betas := [];
	    for m in divs do
		dmap := DegeneracyMatrix(M_new, M_old, m);
		beta := Transpose(dmap) * Transpose(quo_mat);
		// Append(~betas, <ChangeRing(beta, K), quo_lev div m>);
		Append(~betas, <ChangeRing(beta, K), m>);
	    end for;
	    for j in [1..#betas] do
		for ev in evs[d][1] do
		    v, f := Explode(ev);
		    V := sub<Parent(v)|[v]>;
		    Append(~DD, <V, betas[j], betas, f>);
		end for;
	    end for;
	else
	    one := <IdentityMatrix(K, Dimension(M)), 1>;
	    for ev in evs[d][1] do
		v, f := Explode(ev);
		V := sub<Parent(v)|[v]>;
		Append(~DD, <V, one, [one], f>);
	    end for;
	end if;
    end for;
    return DD, F;
end function;

function TwistBasis0(N, prec)
    X := DirichletGroupFull(N);
    L := Compositum(CyclotomicField(N), BaseRing(X));
    X_even := [chi : chi in Elements(X) | Evaluate(chi, -1) eq 1];
    M := ModularSymbols(CongruenceSubgroup(N));
    S := CuspidalSubspace(M);
    D, K := NewformDecompositionSubspaceMaps2(M, prec);

    KL := Compositum(K, L);
    R<q> := PowerSeriesRing(KL);
    indices_covered := {};
    next_idx := 1;
    twist_bases := [* *];
    twist_f_bases := [* *];

    while next_idx le #D do
	printf "Covered %o out of %o hecke irreds...\n", #indices_covered, #D;
	f := D[next_idx][4];
	beta := D[next_idx][2];
	f := Evaluate(f, q^beta[2]);
	v1_plus := Basis(D[next_idx][1])[1];
	v1_plus := ChangeRing(v1_plus * beta[1], KL);
	twist_basis_plus := [];
	twist_f_basis := [R | ];
	for eps in X_even do
	    c := Conductor(eps);
	    chi := DirichletGroupFull(c)!eps;
	    u := [c, 1, 0, c];
	    u_mat := Transpose(ActionOnModularSymbolsBasis(u, M));
	    R_chi := ChangeRing(&+[Evaluate(chi^(-1), t) * u_mat^t : t in [0..c-1]], KL);
	    v_plus := v1_plus * R_chi;
	    assert exists(j){j : j in [1..#D] |
			     v_plus in ChangeRing(D[j][1] * D[j][2][1] ,KL)};
	    betas := D[j][3];
	    
	    v_plus_orig := Solution(ChangeRing(D[j][2][1], KL), v_plus);
	    
	    g := GaussSum(chi^(-1));
	    assert IsSubfield(FieldOfFractions(Parent(g)), KL);
	    g := KL!g;
	    f_twist := g * R!Twist(f, BaseExtend(chi, KL));
	    
	    assert &and[Coefficient(f_twist,n) eq 0 : n in [0..prec-1]
			    | n mod beta[2] ne 0];
	    f_twist_orig := &+[Coefficient(f_twist,beta[2]*n)*q^n
			       : n in [0..(prec - 1) div beta[2]]];
	    
	    for beta in betas do
		v_p := v_plus_orig * ChangeRing(beta[1], KL);
		f_twist_new := Evaluate(f_twist_orig, q^beta[2]);
		// f_twist_new := Evaluate(f_twist, q^beta[2]);
		assert exists(j){j : j in [1..#D] |
			     v_p in ChangeRing(D[j][1] * D[j][2][1] ,KL)};
		Include(~indices_covered, j);
		Append(~twist_basis_plus, v_p);
		Append(~twist_f_basis, f_twist_new);
	    end for;
	end for;
	Append(~twist_bases, twist_basis_plus);
	Append(~twist_f_bases, twist_f_basis);
	while next_idx in indices_covered do
	    next_idx +:= 1;
	end while;
    end while;
    big_basis := [];
    for basis in twist_bases do
	for v in basis do
	    assert IsSubfield(BaseRing(v), KL);
	    Append(~big_basis, ChangeRing(v, KL));
	end for;
    end for;
    V := sub<Universe(big_basis) | big_basis>;
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

import "ModFrm/q-expansions.m" : PowerSeriesNormalizeMagma;

// At the moment, this seems to work only for N <= 8...
// It also works for half of the groups of level 9 - fails for 9A3, 9C4
// Figure out why!!!
// For 10 the procedure Genus(X) starts getting heavy, for some reason
// For 11 the basis finding is already getting long
// It seems that we fail to find the right constants for a two-dimensional space

function get_qexps_by_twist(H, B0, F0)
    N := Level(H);
    // B0, F0 := TwistBasis0(N, prec);
    spaces := [* sub<Universe(basis) | basis> : basis in B0 *];
    M_H := ModularSymbols(H, 2, Rationals(), 0);
    S_H := CuspidalSubspace(M_H);
    M_full := ModularSymbols(CongruenceSubgroup(N), 2, Rationals(), 0);
    beta := Transpose(DegeneracyMatrix(M_full, M_H, GL(2, Rationals())!1));
    M := ModularSymbols(CongruenceSubgroup(N));  
    phi := FullGammaIsom(M, M_full);
    im_S_H := DualVectorSpace(S_H) * beta * Transpose(phi^(-1));
    K := BaseRing(spaces[1]);
    for j in [1..#F0] do 
	K := Compositum(K,BaseRing(Universe(F0[j])));
	K := Compositum(K,BaseRing(Universe(B0[j])));
    end for;
    spaces := [ChangeRing(space, K) : space in spaces];
    im_S_H := ChangeRing(im_S_H, K);
    R<q> := PowerSeriesRing(K);
    fs := [];
    for j in [1..#B0] do
	B := Basis(im_S_H meet spaces[j]);
	mat_B0 := ChangeRing(Matrix(B0[j]), K);
	for b in B do
	    twist_coeffs := Solution(mat_B0, b);
	    f := &+[twist_coeffs[i] * R!F0[j][i] : i in [1..#F0[j]]];
	    Append(~fs, f);
	end for;
    end for;
    return [PowerSeriesNormalizeMagma(f) : f in fs];
end function;

function LoadGroupsByLevel(L)
  gens_by_level := AssociativeArray();
  for l in L do
     if IsDefined(gens_by_level, l`level) then
       Append(~gens_by_level[l`level], <l`name, l`matgens>);
     else
       gens_by_level[l`level] := [<l`name, l`matgens>];
     end if;
  end for;
  return gens_by_level;
end function;

function Test_qExpansions(level, L)
    test_grps := [l : l in L | l`level eq level and l`genus gt 2];
    // 100 should suffice at the moment. Later check how to determine required precision.
    prec := 100;
    B0, F0 := TwistBasis0(level, prec);
    failed := [];
    for grp in test_grps do
	H := PSL2Subgroup(sub<GL(2, Integers(level)) | grp`matgens>);
	try
	    fs := get_qexps_by_twist(H, B0, F0);
	    max_deg := Maximum(7-grp`genus, 2);
	    X := FindCurveSimple(fs, prec, max_deg);
	    // The second case for hyperelliptic curves -
	    // should check that more thoroughly
	    if Genus(X) notin [grp`genus,0] then
		Append(~failed, grp`name);
	    end if;
	catch e
	    Append(~failed, <grp`name, e`Object >);
	end try;
    end for;
    return failed;
end function;
