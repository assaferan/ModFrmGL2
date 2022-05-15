
    /****************************************************
    Loading this file in magma loads the objects fs_8A1 
    and X_8A1. fs_8A1 is a list of power series which form 
    a basis for the space of cusp forms. X_8A1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | -2, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_8A1 := [Kq | q + 2*q^5 - 3*q^9 - 6*q^13 + 2*q^17 - q^25 + 
10*q^29 + 2*q^37 + 10*q^41 - 6*q^45 - 7*q^49 - 14*q^53 + 10*q^61 - 12*q^65 - 
6*q^73 + 9*q^81 + 4*q^85 + O(q^88)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_8A1 := Curve(P_Q, [ PolynomialRing(ext<K|Polynomial(K, [-2, 0, 
1])> where K is RationalField(), 2) | ]);
