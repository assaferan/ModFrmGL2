
    /****************************************************
    Loading this file in magma loads the objects fs_12A3 
    and X_12A3. fs_12A3 is a list of power series which form 
    a basis for the space of cusp forms. X_12A3 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | -3, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_12A3 := [Kq | q^2 - 4*q^14 + 2*q^26 + 8*q^38 - 5*q^50 - 4*q^62 
- 10*q^74 + 8*q^86 + 9*q^98 + 14*q^122 - 16*q^134 - 10*q^146 - 4*q^158 - 8*q^182
+ 14*q^194 + 20*q^206 + 2*q^218 - 11*q^242 + 20*q^254 - 32*q^266 - 16*q^278 - 
4*q^302 + 14*q^314 + 8*q^326 - 9*q^338 + O(q^348), q + 4*q^13 - 13*q^25 + 2*q^37
+ 7*q^49 - 10*q^61 + 16*q^73 + 18*q^85 - 8*q^97 - 20*q^109 - 11*q^121 + 18*q^145
- 22*q^157 + 3*q^169 - 20*q^181 + 14*q^193 + 54*q^205 + 4*q^229 - 8*q^241 - 
54*q^265 + 28*q^277 - q^289 + 26*q^313 - 52*q^325 - 32*q^337 + O(q^348), q^5 - 
q^17 - q^29 - 3*q^41 + 3*q^53 + 4*q^65 + q^89 - 3*q^101 + 5*q^113 - 8*q^125 - 
5*q^137 - q^149 + 5*q^173 + 2*q^185 + 5*q^197 - 4*q^221 + 7*q^233 + 7*q^245 - 
5*q^257 + q^269 - 7*q^281 - 5*q^293 - 10*q^305 + q^317 + O(q^348)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_12A3 := Curve(P_Q, [ PolynomialRing(RationalField(), 3) |
x[1]^4 - x[2]^3*x[3] + 27*x[3]^4
]);
