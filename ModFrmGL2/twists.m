// Following correspondence with Joshua Box, this is implementation of twists
// in order to get q-expansions.

import "./ModSym/operators.m" : ActionOnModularSymbolsBasis;
import "./ModSym/qexpansion.m" : EigenvectorModSymSign;

function TwistBasis(N, prec)
    X := DirichletGroupFull(N);
    L := BaseRing(X);
    X_even := [chi : chi in Elements(X) | Evaluate(chi, -1) eq 1];
    M := ModularSymbols(CongruenceSubgroup(N), 2, Rationals(), 0);
    S := CuspidalSubspace(M);
    D := NewformDecomposition(S);
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

function TwistBasis0(N, prec)
    X := DirichletGroupFull(N);
    L := BaseRing(X);
    X_even := [chi : chi in Elements(X) | Evaluate(chi, -1) eq 1];
    M := ModularSymbols(CongruenceSubgroup(N));
    S := CuspidalSubspace(M);
    D := NewformDecomposition(S);
    v1_plus := ChangeRing(EigenvectorModSymSign(D[1], 1), L);
    v1_minus := ChangeRing(EigenvectorModSymSign(D[1], -1), L);
    beta := Transpose(DegeneracyMatrix(MultiSpaces(M)[1], AmbientSpace(D[1]),1));
    quo_mat := Matrix([Representation(MultiQuotientMaps(M)[1](x)) : x in Basis(M)]);
    v1_plus := v1_plus * beta * Transpose(quo_mat);
    v1_minus := v1_minus * beta * Transpose(quo_mat);
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
