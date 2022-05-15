
    /****************************************************
    Loading this file in magma loads the objects fs_12F1 
    and X_12F1. fs_12F1 is a list of power series which form 
    a basis for the space of cusp forms. X_12F1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | -3, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_12F1 := [Kq | q^6 - q^18 - 2*q^30 + q^54 + 4*q^66 - 2*q^78 + 
2*q^90 + 2*q^102 - 4*q^114 - 8*q^138 - q^150 - q^162 + 6*q^174 + 8*q^186 - 
4*q^198 + 6*q^222 + 2*q^234 - 6*q^246 + 4*q^258 - 2*q^270 + O(q^276)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_12F1 := Curve(P_Q, [ PolynomialRing(ext<K|Polynomial(K, [-3, 0, 
1])> where K is RationalField(), 2) | ]);
