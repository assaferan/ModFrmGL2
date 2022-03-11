
    /****************************************************
    Loading this file in magma loads the objects fs_12T1 
    and X_12T1. fs_12T1 is a list of power series which form 
    a basis for the space of cusp forms. X_12T1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, \[ 1, 0, -1, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_12T1 := [Kq | zeta^3*q^2 + 2*zeta^3*q^6 - 2*zeta^3*q^10 - 
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
18*zeta^3*q^394 + 16*zeta^3*q^398 - 8*zeta^3*q^402 + 12*zeta^3*q^410 + 
16*zeta^3*q^414 - 16*zeta^3*q^418 - 20*zeta^3*q^422 + 16*zeta^3*q^426 - 
8*zeta^3*q^430 + 20*zeta^3*q^438 - 4*zeta^3*q^442 - 8*zeta^3*q^446 + 
2*zeta^3*q^450 + 12*zeta^3*q^454 + 22*zeta^3*q^458 + 10*zeta^3*q^466 - 
16*zeta^3*q^474 - 16*zeta^3*q^478 + 18*zeta^3*q^482 + 2*zeta^3*q^486 + 
14*zeta^3*q^490 + 8*zeta^3*q^494 - 8*zeta^3*q^498 + 20*zeta^3*q^502 - 
32*zeta^3*q^506 - 8*zeta^3*q^510 + 2*zeta^3*q^514 - 12*zeta^3*q^522 - 
8*zeta^3*q^526 + 4*zeta^3*q^530 - 12*zeta^3*q^534 - 10*zeta^3*q^538 + 
8*zeta^3*q^542 - 4*zeta^3*q^550 - 26*zeta^3*q^554 - 16*zeta^3*q^558 + 
26*zeta^3*q^562 - 28*zeta^3*q^566 + 16*zeta^3*q^570 - 13*zeta^3*q^578 + 
4*zeta^3*q^582 - 18*zeta^3*q^586 - 8*zeta^3*q^590 + 8*zeta^3*q^594 + 
16*zeta^3*q^598 - 36*zeta^3*q^606 + 4*zeta^3*q^610 + 12*zeta^3*q^614 + 
32*zeta^3*q^618 - 24*zeta^3*q^622 - 6*zeta^3*q^626 + 6*zeta^3*q^634 + 
24*zeta^3*q^638 - 24*zeta^3*q^642 - 8*zeta^3*q^646 + 2*zeta^3*q^650 - 
4*zeta^3*q^654 + 20*zeta^3*q^662 - 12*zeta^3*q^666 + 8*zeta^3*q^670 + 
18*zeta^3*q^674 + 36*zeta^3*q^678 + 32*zeta^3*q^682 + 32*zeta^3*q^690 - 
12*zeta^3*q^694 + 30*zeta^3*q^698 - 4*zeta^3*q^702 + 2*zeta^3*q^706 - 
16*zeta^3*q^710 - 24*zeta^3*q^718 - 3*zeta^3*q^722 + 10*zeta^3*q^726 - 
20*zeta^3*q^730 - 8*zeta^3*q^734 + 12*zeta^3*q^738 - 10*zeta^3*q^746 + 
24*zeta^3*q^750 - 12*zeta^3*q^754 + 20*zeta^3*q^758 - 16*zeta^3*q^762 - 
8*zeta^3*q^774 - 2*zeta^3*q^778 - 16*zeta^3*q^782 - 8*zeta^3*q^786 + 
16*zeta^3*q^790 + 14*zeta^3*q^794 - 30*zeta^3*q^802 + O(q^804)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_12T1 := Curve(P_Q, [ PolynomialRing(CyclotomicField(12), 2) | 
]);
