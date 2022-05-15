
    /****************************************************
    Loading this file in magma loads the objects fs_8A3 
    and X_8A3. fs_8A3 is a list of power series which form 
    a basis for the space of cusp forms. X_8A3 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | -2, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_8A3 := [Kq | zeta*q - 3*zeta*q^9 + 2*zeta*q^17 - zeta*q^25 + 
10*zeta*q^41 - 7*zeta*q^49 - 12*zeta*q^65 - 6*zeta*q^73 + 9*zeta*q^81 + 
10*zeta*q^89 + 18*zeta*q^97 - 14*zeta*q^113 - 11*zeta*q^121 - 22*zeta*q^137 + 
20*zeta*q^145 - 6*zeta*q^153 + 23*zeta*q^169 + 4*zeta*q^185 - 14*zeta*q^193 + 
3*zeta*q^225 + 26*zeta*q^233 - 30*zeta*q^241 + 2*zeta*q^257 - 28*zeta*q^265 + 
10*zeta*q^281 - 13*zeta*q^289 + 20*zeta*q^305 + 26*zeta*q^313 + 18*zeta*q^337 + 
34*zeta*q^353 - 19*zeta*q^361 - 30*zeta*q^369 - 60*zeta*q^377 + 2*zeta*q^401 - 
6*zeta*q^409 + O(q^424), zeta*q - 3*zeta*q^9 + 2*zeta*q^17 - zeta*q^25 + 
10*zeta*q^41 - 7*zeta*q^49 - 12*zeta*q^65 - 6*zeta*q^73 + 9*zeta*q^81 + 
10*zeta*q^89 + 18*zeta*q^97 - 14*zeta*q^113 - 11*zeta*q^121 - 22*zeta*q^137 + 
20*zeta*q^145 - 6*zeta*q^153 + 23*zeta*q^169 + 4*zeta*q^185 - 14*zeta*q^193 + 
3*zeta*q^225 + 26*zeta*q^233 - 30*zeta*q^241 + 2*zeta*q^257 - 28*zeta*q^265 + 
10*zeta*q^281 - 13*zeta*q^289 + 20*zeta*q^305 + 26*zeta*q^313 + 18*zeta*q^337 + 
34*zeta*q^353 - 19*zeta*q^361 - 30*zeta*q^369 - 60*zeta*q^377 + 2*zeta*q^401 - 
6*zeta*q^409 + O(q^424), q^2 - 2*q^10 - 3*q^18 + 6*q^26 + 2*q^34 - q^50 - 
10*q^58 - 2*q^74 + 10*q^82 + 6*q^90 - 7*q^98 + 14*q^106 - 10*q^122 - 12*q^130 - 
6*q^146 + 9*q^162 - 4*q^170 + 10*q^178 + 18*q^194 - 2*q^202 + 6*q^218 - 14*q^226
- 18*q^234 - 11*q^242 + 12*q^250 - 22*q^274 + 20*q^290 + 14*q^298 - 6*q^306 + 
22*q^314 + 23*q^338 - 26*q^346 - 18*q^362 + 4*q^370 - 14*q^386 - 2*q^394 - 
20*q^410 + O(q^424), zeta*q^5 - 3*zeta*q^13 + 5*zeta*q^29 + zeta*q^37 - 
3*zeta*q^45 - 7*zeta*q^53 + 5*zeta*q^61 + 2*zeta*q^85 + zeta*q^101 - 
3*zeta*q^109 + 9*zeta*q^117 - 6*zeta*q^125 - 7*zeta*q^149 - 11*zeta*q^157 + 
13*zeta*q^173 + 9*zeta*q^181 + zeta*q^197 + 10*zeta*q^205 - 6*zeta*q^221 - 
15*zeta*q^229 - 7*zeta*q^245 - 15*zeta*q^261 + 13*zeta*q^269 + 9*zeta*q^277 + 
17*zeta*q^293 - 11*zeta*q^317 + 3*zeta*q^325 - 3*zeta*q^333 + 5*zeta*q^349 - 
6*zeta*q^365 - 7*zeta*q^373 + 17*zeta*q^389 - 19*zeta*q^397 + 9*zeta*q^405 - 
15*zeta*q^421 + O(q^424)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_8A3 := Curve(P_Q, [ PolynomialRing(RationalField(), 3) |
x[1]^3*x[3] + 4*x[1]*x[3]^3 - 4*x[2]^4
]);
