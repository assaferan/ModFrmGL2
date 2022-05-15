
    /****************************************************
    Loading this file in magma loads the objects fs_20H1 
    and X_20H1. fs_20H1 is a list of power series which form 
    a basis for the space of cusp forms. X_20H1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, \[ 1, 0, -1, 0, 1, 0, -1, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_20H1 := [Kq | zeta^5*q^20 - 2*zeta^5*q^60 - zeta^5*q^100 + 
2*zeta^5*q^140 + zeta^5*q^180 + 2*zeta^5*q^260 + 2*zeta^5*q^300 - 6*zeta^5*q^340
- 4*zeta^5*q^380 - 4*zeta^5*q^420 + 6*zeta^5*q^460 + zeta^5*q^500 + 
4*zeta^5*q^540 + 6*zeta^5*q^580 - 4*zeta^5*q^620 - 2*zeta^5*q^700 + 
2*zeta^5*q^740 - 4*zeta^5*q^780 + 6*zeta^5*q^820 - 10*zeta^5*q^860 - 
zeta^5*q^900 - 6*zeta^5*q^940 - 3*zeta^5*q^980 + 12*zeta^5*q^1020 - 
6*zeta^5*q^1060 + 8*zeta^5*q^1140 + 12*zeta^5*q^1180 + 2*zeta^5*q^1220 + 
2*zeta^5*q^1260 - 2*zeta^5*q^1300 + 2*zeta^5*q^1340 + O(q^1380)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_20H1 := Curve(P_Q, [ PolynomialRing(CyclotomicField(20), 2) | 
]);
