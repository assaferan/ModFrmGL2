
    /****************************************************
    Loading this file in magma loads the objects fs_8B1 
    and X_8B1. fs_8B1 is a list of power series which form 
    a basis for the space of cusp forms. X_8B1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | -2, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_8B1 := [Kq | q + 2*q^5 - 3*q^9 - 6*q^13 + 2*q^17 - q^25 + 
10*q^29 + 2*q^37 + 10*q^41 - 6*q^45 - 7*q^49 - 14*q^53 + 10*q^61 - 12*q^65 - 
6*q^73 + 9*q^81 + 4*q^85 + 10*q^89 + 18*q^97 + 2*q^101 - 6*q^109 - 14*q^113 + 
18*q^117 - 11*q^121 - 12*q^125 - 22*q^137 + 20*q^145 - 14*q^149 - 6*q^153 - 
22*q^157 + 23*q^169 + 26*q^173 + O(q^176)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_8B1 := Curve(P_Q, [ PolynomialRing(ext<K|Polynomial(K, [-2, 0, 
1])> where K is RationalField(), 2) | ]);
