
    /****************************************************
    Loading this file in magma loads the objects fs_9H1 
    and X_9H1. fs_9H1 is a list of power series which form 
    a basis for the space of cusp forms. X_9H1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | 1, -3, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_9H1 := [Kq | q^3 - 2*q^12 - q^21 + 5*q^39 + 4*q^48 - 7*q^57 - 
5*q^75 + 2*q^84 - 4*q^93 + 11*q^111 + 8*q^129 - 6*q^147 - 10*q^156 - q^183 - 
8*q^192 + 5*q^201 - 7*q^219 + 14*q^228 + 17*q^237 - 5*q^273 - 19*q^291 + 
10*q^300 - 13*q^309 + 2*q^327 - 4*q^336 - 11*q^363 + 8*q^372 + 20*q^381 + 
7*q^399 + 23*q^417 - 22*q^444 - 19*q^453 + 14*q^471 - 25*q^489 + 12*q^507 - 
16*q^516 + 5*q^525 - 7*q^543 + 23*q^579 + 12*q^588 + 11*q^597 + 20*q^624 - 
13*q^633 + 4*q^651 - 28*q^669 - 22*q^687 + 17*q^723 + 2*q^732 - 35*q^741 + 
16*q^768 - 11*q^777 - 10*q^804 + 29*q^813 + 26*q^831 + 32*q^849 - 17*q^867 + 
O(q^873)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_9H1 := Curve(P_Q, [ PolynomialRing(ext<K|Polynomial(K, [1, -3, 
0, 1])> where K is RationalField(), 2) | ]);
