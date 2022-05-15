
    /****************************************************
    Loading this file in magma loads the objects fs_24D1 
    and X_24D1. fs_24D1 is a list of power series which form 
    a basis for the space of cusp forms. X_24D1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | 1, 0, -4, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_24D1 := [Kq | q^2 - 2*q^10 + 6*q^18 + 6*q^26 + 2*q^34 - q^50 - 
10*q^58 - 2*q^74 + 10*q^82 - 12*q^90 - 7*q^98 + 14*q^106 - 10*q^122 - 12*q^130 -
6*q^146 - 18*q^162 - 4*q^170 + 10*q^178 + 18*q^194 - 2*q^202 + 6*q^218 - 
14*q^226 + 36*q^234 - 11*q^242 + 12*q^250 - 22*q^274 + 20*q^290 + 14*q^298 + 
12*q^306 + 22*q^314 + 23*q^338 - 26*q^346 - 18*q^362 + O(q^368)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_24D1 := Curve(P_Q, [ PolynomialRing(ext<K|Polynomial(K, [1, 0, 
-4, 0, 1])> where K is RationalField(), 2) | ]);
