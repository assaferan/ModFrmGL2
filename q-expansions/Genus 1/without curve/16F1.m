
    /****************************************************
    Loading this file in magma loads the objects fs_16F1 
    and X_16F1. fs_16F1 is a list of power series which form 
    a basis for the space of cusp forms. X_16F1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | 2, 0, -4, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_16F1 := [Kq | q - 4*q^5 - 3*q^9 - 4*q^13 - 2*q^17 + 11*q^25 - 
4*q^29 + 12*q^37 - 10*q^41 + 12*q^45 - 7*q^49 - 4*q^53 + 12*q^61 + 16*q^65 - 
6*q^73 + 9*q^81 + 8*q^85 + 10*q^89 - 18*q^97 - 20*q^101 - 20*q^109 - 14*q^113 + 
12*q^117 - 11*q^121 - 24*q^125 + 22*q^137 + 16*q^145 - 20*q^149 + 6*q^153 + 
12*q^157 + 3*q^169 - 4*q^173 - 20*q^181 - 48*q^185 + 14*q^193 + 28*q^197 + 
40*q^205 + 8*q^221 - 33*q^225 - 4*q^229 + 26*q^233 + 30*q^241 + 28*q^245 + 
2*q^257 + 12*q^261 + 16*q^265 - 20*q^269 + 28*q^277 + 10*q^281 - 13*q^289 - 
4*q^293 - 48*q^305 - 26*q^313 + 28*q^317 - 44*q^325 - 36*q^333 + 18*q^337 - 
36*q^349 + 34*q^353 - 19*q^361 + 24*q^365 + O(q^368)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_16F1 := Curve(P_Q, [ PolynomialRing(ext<K|Polynomial(K, [2, 0, 
-4, 0, 1])> where K is RationalField(), 2) | ]);
