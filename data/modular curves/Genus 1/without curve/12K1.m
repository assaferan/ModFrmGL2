
    /****************************************************
    Loading this file in magma loads the objects fs_12K1 
    and X_12K1. fs_12K1 is a list of power series which form 
    a basis for the space of cusp forms. X_12K1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | -3, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_12K1 := [Kq | q^4 - 4*q^28 + 2*q^52 + 8*q^76 - 5*q^100 - 
4*q^124 - 10*q^148 + 8*q^172 + 9*q^196 + 14*q^244 - 16*q^268 - 10*q^292 - 
4*q^316 - 8*q^364 + 14*q^388 + O(q^408)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_12K1 := Curve(P_Q, [ PolynomialRing(ext<K|Polynomial(K, [-3, 0, 
1])> where K is RationalField(), 2) | ]);
