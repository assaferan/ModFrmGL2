
    /****************************************************
    Loading this file in magma loads the objects fs_16H1 
    and X_16H1. fs_16H1 is a list of power series which form 
    a basis for the space of cusp forms. X_16H1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | 2, 0, -4, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_16H1 := [Kq | 1/3*(-zeta^3 + 3*zeta)*q + 2/3*zeta*q^5 + 
(-zeta^3 + 3*zeta)*q^9 + 2*zeta*q^13 + 1/3*(-2*zeta^3 + 6*zeta)*q^17 + 
1/3*(-zeta^3 + 3*zeta)*q^25 - 10/3*zeta*q^29 + 2/3*zeta*q^37 + 1/3*(10*zeta^3 - 
30*zeta)*q^41 + 2*zeta*q^45 + 1/3*(7*zeta^3 - 21*zeta)*q^49 - 14/3*zeta*q^53 - 
10/3*zeta*q^61 + (4*zeta^3 - 12*zeta)*q^65 + (-2*zeta^3 + 6*zeta)*q^73 + 
(-3*zeta^3 + 9*zeta)*q^81 + 4/3*zeta*q^85 + 1/3*(10*zeta^3 - 30*zeta)*q^89 + 
(-6*zeta^3 + 18*zeta)*q^97 + 2/3*zeta*q^101 + 2*zeta*q^109 + 1/3*(14*zeta^3 - 
42*zeta)*q^113 + 6*zeta*q^117 + 1/3*(-11*zeta^3 + 33*zeta)*q^121 + 4*zeta*q^125 
+ 1/3*(-22*zeta^3 + 66*zeta)*q^137 + 1/3*(-20*zeta^3 + 60*zeta)*q^145 - 
14/3*zeta*q^149 + (-2*zeta^3 + 6*zeta)*q^153 + 22/3*zeta*q^157 + 1/3*(23*zeta^3 
- 69*zeta)*q^169 - 26/3*zeta*q^173 + 6*zeta*q^181 + 1/3*(4*zeta^3 - 
12*zeta)*q^185 + 1/3*(14*zeta^3 - 42*zeta)*q^193 + 2/3*zeta*q^197 - 
20/3*zeta*q^205 + 4*zeta*q^221 + (-zeta^3 + 3*zeta)*q^225 - 10*zeta*q^229 + 
1/3*(26*zeta^3 - 78*zeta)*q^233 + (10*zeta^3 - 30*zeta)*q^241 - 14/3*zeta*q^245 
+ 1/3*(-2*zeta^3 + 6*zeta)*q^257 - 10*zeta*q^261 + 1/3*(-28*zeta^3 + 
84*zeta)*q^265 - 26/3*zeta*q^269 + 6*zeta*q^277 + 1/3*(10*zeta^3 - 
30*zeta)*q^281 + 1/3*(13*zeta^3 - 39*zeta)*q^289 + 34/3*zeta*q^293 + 
1/3*(-20*zeta^3 + 60*zeta)*q^305 + 1/3*(26*zeta^3 - 78*zeta)*q^313 + 
22/3*zeta*q^317 + 2*zeta*q^325 + 2*zeta*q^333 + (-6*zeta^3 + 18*zeta)*q^337 - 
10/3*zeta*q^349 + 1/3*(-34*zeta^3 + 102*zeta)*q^353 + 1/3*(-19*zeta^3 + 
57*zeta)*q^361 + 4*zeta*q^365 + O(q^368)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_16H1 := Curve(P_Q, [ PolynomialRing(ext<K|Polynomial(K, [2, 0, 
-4, 0, 1])> where K is RationalField(), 2) | ]);
