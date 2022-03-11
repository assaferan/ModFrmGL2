
    /****************************************************
    Loading this file in magma loads the objects fs_8K1 
    and X_8K1. fs_8K1 is a list of power series which form 
    a basis for the space of cusp forms. X_8K1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, \[ 1, 0, 0, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_8K1 := [Kq | (zeta^3 + zeta)*q^2 + (-2*zeta^3 - 2*zeta)*q^10 + 
(-3*zeta^3 - 3*zeta)*q^18 + (6*zeta^3 + 6*zeta)*q^26 + (2*zeta^3 + 2*zeta)*q^34 
+ (-zeta^3 - zeta)*q^50 + (-10*zeta^3 - 10*zeta)*q^58 + (-2*zeta^3 - 
2*zeta)*q^74 + (10*zeta^3 + 10*zeta)*q^82 + (6*zeta^3 + 6*zeta)*q^90 + 
(-7*zeta^3 - 7*zeta)*q^98 + (14*zeta^3 + 14*zeta)*q^106 + (-10*zeta^3 - 
10*zeta)*q^122 + (-12*zeta^3 - 12*zeta)*q^130 + (-6*zeta^3 - 6*zeta)*q^146 + 
(9*zeta^3 + 9*zeta)*q^162 + (-4*zeta^3 - 4*zeta)*q^170 + (10*zeta^3 + 
10*zeta)*q^178 + (18*zeta^3 + 18*zeta)*q^194 + (-2*zeta^3 - 2*zeta)*q^202 + 
(6*zeta^3 + 6*zeta)*q^218 + (-14*zeta^3 - 14*zeta)*q^226 + (-18*zeta^3 - 
18*zeta)*q^234 + (-11*zeta^3 - 11*zeta)*q^242 + (12*zeta^3 + 12*zeta)*q^250 + 
(-22*zeta^3 - 22*zeta)*q^274 + (20*zeta^3 + 20*zeta)*q^290 + (14*zeta^3 + 
14*zeta)*q^298 + (-6*zeta^3 - 6*zeta)*q^306 + (22*zeta^3 + 22*zeta)*q^314 + 
(23*zeta^3 + 23*zeta)*q^338 + (-26*zeta^3 - 26*zeta)*q^346 + (-18*zeta^3 - 
18*zeta)*q^362 + (4*zeta^3 + 4*zeta)*q^370 + (-14*zeta^3 - 14*zeta)*q^386 + 
(-2*zeta^3 - 2*zeta)*q^394 + (-20*zeta^3 - 20*zeta)*q^410 + (12*zeta^3 + 
12*zeta)*q^442 + (3*zeta^3 + 3*zeta)*q^450 + (30*zeta^3 + 30*zeta)*q^458 + 
(26*zeta^3 + 26*zeta)*q^466 + (-30*zeta^3 - 30*zeta)*q^482 + (14*zeta^3 + 
14*zeta)*q^490 + (2*zeta^3 + 2*zeta)*q^514 + (30*zeta^3 + 30*zeta)*q^522 + 
(-28*zeta^3 - 28*zeta)*q^530 + (-26*zeta^3 - 26*zeta)*q^538 + (-18*zeta^3 - 
18*zeta)*q^554 + (10*zeta^3 + 10*zeta)*q^562 + (-13*zeta^3 - 13*zeta)*q^578 + 
(-34*zeta^3 - 34*zeta)*q^586 + (20*zeta^3 + 20*zeta)*q^610 + (26*zeta^3 + 
26*zeta)*q^626 + (22*zeta^3 + 22*zeta)*q^634 + (-6*zeta^3 - 6*zeta)*q^650 + 
(6*zeta^3 + 6*zeta)*q^666 + (18*zeta^3 + 18*zeta)*q^674 + O(q^680)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_8K1 := Curve(P_Q, [ PolynomialRing(CyclotomicField(8), 2) | ]);
