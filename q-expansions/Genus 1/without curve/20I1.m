
    /****************************************************
    Loading this file in magma loads the objects fs_20I1 
    and X_20I1. fs_20I1 is a list of power series which form 
    a basis for the space of cusp forms. X_20I1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, \[ 1, 0, -1, 0, 1, 0, -1, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_20I1 := [Kq | zeta^5*q^10 + zeta^5*q^50 - 4*zeta^5*q^70 - 
3*zeta^5*q^90 + 4*zeta^5*q^110 - 2*zeta^5*q^130 + 2*zeta^5*q^170 + 
4*zeta^5*q^190 + 4*zeta^5*q^230 + zeta^5*q^250 - 2*zeta^5*q^290 - 8*zeta^5*q^310
- 4*zeta^5*q^350 + 6*zeta^5*q^370 - 6*zeta^5*q^410 - 8*zeta^5*q^430 - 
3*zeta^5*q^450 + 4*zeta^5*q^470 + 9*zeta^5*q^490 + 6*zeta^5*q^530 + 
4*zeta^5*q^550 - 4*zeta^5*q^590 - 2*zeta^5*q^610 + 12*zeta^5*q^630 - 
2*zeta^5*q^650 + 8*zeta^5*q^670 - 6*zeta^5*q^730 - 16*zeta^5*q^770 + 
9*zeta^5*q^810 - 16*zeta^5*q^830 + 2*zeta^5*q^850 - 6*zeta^5*q^890 + 
8*zeta^5*q^910 + 4*zeta^5*q^950 - 14*zeta^5*q^970 - 12*zeta^5*q^990 + 
6*zeta^5*q^1010 + 4*zeta^5*q^1030 + 14*zeta^5*q^1090 + 18*zeta^5*q^1130 + 
4*zeta^5*q^1150 + 6*zeta^5*q^1170 - 8*zeta^5*q^1190 + 5*zeta^5*q^1210 + 
zeta^5*q^1250 - 12*zeta^5*q^1270 + 12*zeta^5*q^1310 - 16*zeta^5*q^1330 + 
10*zeta^5*q^1370 + O(q^1380)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_20I1 := Curve(P_Q, [ PolynomialRing(CyclotomicField(20), 2) | 
]);
