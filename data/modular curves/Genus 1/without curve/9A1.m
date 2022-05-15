
    /****************************************************
    Loading this file in magma loads the objects fs_9A1 
    and X_9A1. fs_9A1 is a list of power series which form 
    a basis for the space of cusp forms. X_9A1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | 1, -3, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_9A1 := [Kq | q^3 - 2*q^12 - q^21 + 5*q^39 + 4*q^48 - 7*q^57 - 
5*q^75 + 2*q^84 - 4*q^93 + O(q^99)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_9A1 := Curve(P_Q, [ PolynomialRing(ext<K|Polynomial(K, [1, -3, 
0, 1])> where K is RationalField(), 2) | ]);
