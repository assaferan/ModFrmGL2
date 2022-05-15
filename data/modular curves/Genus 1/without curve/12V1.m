
    /****************************************************
    Loading this file in magma loads the objects fs_12V1 
    and X_12V1. fs_12V1 is a list of power series which form 
    a basis for the space of cusp forms. X_12V1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | -3, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_12V1 := [Kq | q^6 - q^18 - 2*q^30 + q^54 + 4*q^66 - 2*q^78 + 
2*q^90 + 2*q^102 - 4*q^114 - 8*q^138 - q^150 - q^162 + 6*q^174 + 8*q^186 - 
4*q^198 + 6*q^222 + 2*q^234 - 6*q^246 + 4*q^258 - 2*q^270 - 7*q^294 - 2*q^306 - 
2*q^318 - 8*q^330 + 4*q^342 + 4*q^354 - 2*q^366 + 4*q^390 - 4*q^402 + 8*q^414 + 
8*q^426 + 10*q^438 + q^450 - 8*q^474 + q^486 - 4*q^498 - 4*q^510 - 6*q^522 - 
6*q^534 - 8*q^558 + 8*q^570 + 2*q^582 + 4*q^594 - 18*q^606 + 16*q^618 - 12*q^642
- 2*q^654 - 6*q^666 + 18*q^678 + 16*q^690 - 2*q^702 + 5*q^726 + 6*q^738 + 
12*q^750 - 8*q^762 - 4*q^774 - 4*q^786 + 2*q^810 - 6*q^822 - 12*q^834 - 8*q^858 
- 12*q^870 + 7*q^882 + 14*q^894 - 16*q^906 + 2*q^918 - 16*q^930 - 2*q^942 + 
2*q^954 + 12*q^978 + 8*q^990 + 24*q^1002 - 9*q^1014 - 4*q^1026 + 6*q^1038 - 
4*q^1062 + O(q^1068)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_12V1 := Curve(P_Q, [ PolynomialRing(ext<K|Polynomial(K, [-3, 0, 
1])> where K is RationalField(), 2) | ]);
