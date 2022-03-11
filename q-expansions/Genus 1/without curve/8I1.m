
    /****************************************************
    Loading this file in magma loads the objects fs_8I1 
    and X_8I1. fs_8I1 is a list of power series which form 
    a basis for the space of cusp forms. X_8I1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | -2, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_8I1 := [Kq | q - 2*q^2 - 2*q^5 - 3*q^9 + 4*q^10 + 6*q^13 + 
2*q^17 + 6*q^18 - q^25 - 12*q^26 - 10*q^29 - 4*q^34 - 2*q^37 + 10*q^41 + 6*q^45 
- 7*q^49 + 2*q^50 + 14*q^53 + 20*q^58 - 10*q^61 - 12*q^65 - 6*q^73 + 4*q^74 + 
9*q^81 - 20*q^82 - 4*q^85 + 10*q^89 - 12*q^90 + 18*q^97 + 14*q^98 - 2*q^101 - 
28*q^106 + 6*q^109 - 14*q^113 - 18*q^117 - 11*q^121 + 20*q^122 + 12*q^125 + 
24*q^130 - 22*q^137 + 20*q^145 + 12*q^146 + 14*q^149 - 6*q^153 + 22*q^157 - 
18*q^162 + 23*q^169 + 8*q^170 - 26*q^173 - 20*q^178 - 18*q^181 + 4*q^185 - 
14*q^193 - 36*q^194 - 2*q^197 + 4*q^202 - 20*q^205 - 12*q^218 + 12*q^221 + 
3*q^225 + 28*q^226 + 30*q^229 + 26*q^233 + 36*q^234 - 30*q^241 + 22*q^242 + 
14*q^245 - 24*q^250 + 2*q^257 + 30*q^261 - 28*q^265 - 26*q^269 + 44*q^274 - 
18*q^277 + 10*q^281 - 13*q^289 - 40*q^290 - 34*q^293 - 28*q^298 + 20*q^305 + 
12*q^306 + 26*q^313 - 44*q^314 + 22*q^317 - 6*q^325 + 6*q^333 + 18*q^337 - 
46*q^338 + O(q^344)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_8I1 := Curve(P_Q, [ PolynomialRing(ext<K|Polynomial(K, [-2, 0, 
1])> where K is RationalField(), 2) | ]);
