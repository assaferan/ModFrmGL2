
    /****************************************************
    Loading this file in magma loads the objects fs_12L1 
    and X_12L1. fs_12L1 is a list of power series which form 
    a basis for the space of cusp forms. X_12L1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, \[ 1, 0, -1, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_12L1 := [Kq | zeta^3*q^2 + 2*zeta^3*q^6 - 2*zeta^3*q^10 - 
2*zeta^3*q^18 + 4*zeta^3*q^22 - 2*zeta^3*q^26 - 4*zeta^3*q^30 + 2*zeta^3*q^34 - 
4*zeta^3*q^38 - 8*zeta^3*q^46 - zeta^3*q^50 + 2*zeta^3*q^54 + 6*zeta^3*q^58 + 
8*zeta^3*q^62 + 8*zeta^3*q^66 + 6*zeta^3*q^74 - 4*zeta^3*q^78 - 6*zeta^3*q^82 + 
4*zeta^3*q^86 + 4*zeta^3*q^90 - 7*zeta^3*q^98 + 4*zeta^3*q^102 - 2*zeta^3*q^106 
- 8*zeta^3*q^110 - 8*zeta^3*q^114 + 4*zeta^3*q^118 - 2*zeta^3*q^122 + 
4*zeta^3*q^130 - 4*zeta^3*q^134 - 16*zeta^3*q^138 + 8*zeta^3*q^142 + 
10*zeta^3*q^146 - 2*zeta^3*q^150 - 8*zeta^3*q^158 - 2*zeta^3*q^162 - 
4*zeta^3*q^166 - 4*zeta^3*q^170 + 12*zeta^3*q^174 - 6*zeta^3*q^178 + 
16*zeta^3*q^186 + 8*zeta^3*q^190 + 2*zeta^3*q^194 - 8*zeta^3*q^198 - 
18*zeta^3*q^202 + 16*zeta^3*q^206 - 12*zeta^3*q^214 - 2*zeta^3*q^218 + 
12*zeta^3*q^222 + 18*zeta^3*q^226 + 16*zeta^3*q^230 + 4*zeta^3*q^234 + 
5*zeta^3*q^242 - 12*zeta^3*q^246 + 12*zeta^3*q^250 - 8*zeta^3*q^254 + 
8*zeta^3*q^258 - 4*zeta^3*q^262 - 4*zeta^3*q^270 - 6*zeta^3*q^274 - 
12*zeta^3*q^278 - 8*zeta^3*q^286 - 12*zeta^3*q^290 - 14*zeta^3*q^294 + 
14*zeta^3*q^298 - 16*zeta^3*q^302 - 4*zeta^3*q^306 - 16*zeta^3*q^310 - 
2*zeta^3*q^314 - 4*zeta^3*q^318 + 12*zeta^3*q^326 - 16*zeta^3*q^330 + 
24*zeta^3*q^334 - 9*zeta^3*q^338 + 8*zeta^3*q^342 + 6*zeta^3*q^346 + 
8*zeta^3*q^354 + 12*zeta^3*q^358 + 6*zeta^3*q^362 - 4*zeta^3*q^366 - 
12*zeta^3*q^370 + 8*zeta^3*q^374 + 2*zeta^3*q^386 + 8*zeta^3*q^390 - 
18*zeta^3*q^394 + 16*zeta^3*q^398 - 8*zeta^3*q^402 + O(q^408)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_12L1 := Curve(P_Q, [ PolynomialRing(CyclotomicField(12), 2) | 
]);
