
    /****************************************************
    Loading this file in magma loads the objects fs_8K1_shim 
    and X_8K1_shim. fs_8K1_shim is a list of power series which form 
    a basis for the space of cusp forms. X_8K1_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_8K1_shim := [Kq | q - 2*q^5 - 3*q^9 + 6*q^13 + 2*q^17 - q^25 - 
10*q^29 - 2*q^37 + 10*q^41 + 6*q^45 - 7*q^49 + 14*q^53 - 10*q^61 - 12*q^65 - 
6*q^73 + 9*q^81 - 4*q^85 + 10*q^89 + 18*q^97 - 2*q^101 + 6*q^109 - 14*q^113 - 
18*q^117 - 11*q^121 + 12*q^125 - 22*q^137 + 20*q^145 + 14*q^149 - 6*q^153 + 
22*q^157 + 23*q^169 - 26*q^173 - 18*q^181 + 4*q^185 - 14*q^193 - 2*q^197 - 
20*q^205 + 12*q^221 + 3*q^225 + 30*q^229 + 26*q^233 - 30*q^241 + 14*q^245 + 
2*q^257 + 30*q^261 - 28*q^265 - 26*q^269 - 18*q^277 + 10*q^281 - 13*q^289 - 
34*q^293 + 20*q^305 + 26*q^313 + 22*q^317 - 6*q^325 + 6*q^333 + 18*q^337 + 
O(q^340)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_8K1_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3, 
"grevlex") |
-x[1]^3 + x[2]^2*x[3] + 1296*x[1]*x[3]^2
]);
