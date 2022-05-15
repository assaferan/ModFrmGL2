
    /****************************************************
    Loading this file in magma loads the objects fs_12S1 
    and X_12S1. fs_12S1 is a list of power series which form 
    a basis for the space of cusp forms. X_12S1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, \[ 1, 0, -1, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_12S1 := [Kq | zeta^3*q^4 - 4*zeta^3*q^28 + 2*zeta^3*q^52 + 
8*zeta^3*q^76 - 5*zeta^3*q^100 - 4*zeta^3*q^124 - 10*zeta^3*q^148 + 
8*zeta^3*q^172 + 9*zeta^3*q^196 + 14*zeta^3*q^244 - 16*zeta^3*q^268 - 
10*zeta^3*q^292 - 4*zeta^3*q^316 - 8*zeta^3*q^364 + 14*zeta^3*q^388 + 
20*zeta^3*q^412 + 2*zeta^3*q^436 - 11*zeta^3*q^484 + 20*zeta^3*q^508 - 
32*zeta^3*q^532 - 16*zeta^3*q^556 - 4*zeta^3*q^604 + 14*zeta^3*q^628 + 
8*zeta^3*q^652 - 9*zeta^3*q^676 + 20*zeta^3*q^700 + 26*zeta^3*q^724 + 
2*zeta^3*q^772 - 28*zeta^3*q^796 + O(q^804)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_12S1 := Curve(P_Q, [ PolynomialRing(CyclotomicField(12), 2) | 
]);
