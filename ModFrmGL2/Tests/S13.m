procedure Test_S13()
    printf "Testing exceptional Gamma_S(13)...";
//tt := Cputime();
    p := 13;
//    B<i,j,k> := Quaternions();
    B<i,j,k> := QuaternionAlgebra(Rationals(), -1,-1);
    O_B := QuaternionOrder([1,i,j,k]);
    //    O_B, i, j, k := QuaternionStandardOrder();
    _, mp := pMatrixRing(O_B,p);
    S4tp := sub<GL(2,p) | [mp(1+s) : s in [i,j,k]]
    			cat [mp(1-s) : s in [i,j,k]] cat [-1]>;
    H_S4 := sub<GL(2,Integers(p)) | Generators(S4tp)>;
//    H_S4 := GetRealConjugate(H_S4);
    G_S4 := PSL2Subgroup(H_S4);
    G_S4 := RealTypeConjugate(G_S4);
    M := ModularSymbols(G_S4, 2, Rationals(), 0);
    S := CuspidalSubspace(M);
    D := Decomposition(S, HeckeBound(S));
    assert #D eq 1;
    f := qEigenform(D[1]);
    R<q> := Parent(f);
    K<a> := BaseRing(R);
    assert qEigenform(D[1],20) eq
	   q + a*q^2 + (-a^2 - 2*a)*q^3 + (a^2 - 2)*q^4 +
	   (a^2 + 2*a - 2)*q^5 + (-a - 1)*q^6 + (a^2 - 3)*q^7 +
	   (-2*a^2 - 3*a + 1)*q^8 + (a^2 + 3*a - 1)*q^9 +
	   (-a + 1)*q^10 + (-a^2 - 2*a - 2)*q^11 + (a^2 + 3*a)*q^12 +
	   (-2*a^2 - 2*a + 1)*q^14 + (a^2 + a - 2)*q^15 +
	   (-a^2 - a + 2)*q^16 + (-a^2 + a + 2)*q^17 +
	   (a^2 + 1)*q^18 + (-2*a^2 - a + 2)*q^19 + O(q^20);
    f := DefiningPolynomial(K);
    _<x> := Parent(f);
    assert f eq x^3 + 2*x^2 - x - 1;
// Cputime(tt);
end procedure;

Test_S13();
