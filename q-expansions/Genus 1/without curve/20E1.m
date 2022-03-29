
    /****************************************************
    Loading this file in magma loads the objects fs_20E1 
    and X_20E1. fs_20E1 is a list of power series which form 
    a basis for the space of cusp forms. X_20E1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, \[ 1, 0, -1, 0, 1, 0, -1, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_20E1 := [Kq | zeta^5*q^10 + zeta^5*q^50 - 4*zeta^5*q^70 - 
3*zeta^5*q^90 + 4*zeta^5*q^110 - 2*zeta^5*q^130 + 2*zeta^5*q^170 + 
4*zeta^5*q^190 + 4*zeta^5*q^230 + zeta^5*q^250 - 2*zeta^5*q^290 - 8*zeta^5*q^310
- 4*zeta^5*q^350 + 6*zeta^5*q^370 - 6*zeta^5*q^410 - 8*zeta^5*q^430 - 
3*zeta^5*q^450 + 4*zeta^5*q^470 + 9*zeta^5*q^490 + 6*zeta^5*q^530 + 
4*zeta^5*q^550 - 4*zeta^5*q^590 - 2*zeta^5*q^610 + 12*zeta^5*q^630 - 
2*zeta^5*q^650 + 8*zeta^5*q^670 + O(q^700)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_20E1 := Curve(P_Q, [ PolynomialRing(CyclotomicField(20), 2) | 
]);
