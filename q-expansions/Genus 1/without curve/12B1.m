
    /****************************************************
    Loading this file in magma loads the objects fs_12B1 
    and X_12B1. fs_12B1 is a list of power series which form 
    a basis for the space of cusp forms. X_12B1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, \[ 1, 0, -1, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_12B1 := [Kq | zeta^3*q^4 - 4*zeta^3*q^28 + 2*zeta^3*q^52 + 
8*zeta^3*q^76 - 5*zeta^3*q^100 - 4*zeta^3*q^124 - 10*zeta^3*q^148 + 
8*zeta^3*q^172 + 9*zeta^3*q^196 + O(q^204)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_12B1 := Curve(P_Q, [ PolynomialRing(CyclotomicField(12), 2) | 
]);
