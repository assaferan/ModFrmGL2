
    /****************************************************
    Loading this file in magma loads the objects fs_7B1_shim 
    and X_7B1_shim. fs_7B1_shim is a list of power series which form 
    a basis for the space of cusp forms. X_7B1_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_7B1_shim := [Kq | q + q^2 - q^4 - 3*q^8 - 3*q^9 + 4*q^11 - q^16
- 3*q^18 + 4*q^22 + 8*q^23 - 5*q^25 + 2*q^29 + 5*q^32 + 3*q^36 - 6*q^37 - 
12*q^43 - 4*q^44 + 8*q^46 - 5*q^50 - 10*q^53 + 2*q^58 + 7*q^64 + 4*q^67 + 
16*q^71 + 9*q^72 - 6*q^74 + 8*q^79 + 9*q^81 - 12*q^86 - 12*q^88 - 8*q^92 - 
12*q^99 + 5*q^100 - 10*q^106 - 20*q^107 + 18*q^109 + 2*q^113 - 2*q^116 + 5*q^121
+ 16*q^127 - 3*q^128 + 4*q^134 - 10*q^137 + 16*q^142 + 3*q^144 + 6*q^148 + 
22*q^149 - 24*q^151 + 8*q^158 + 9*q^162 - 20*q^163 - 13*q^169 + 12*q^172 - 
4*q^176 + 4*q^179 - 24*q^184 + 8*q^191 + 18*q^193 - 26*q^197 - 12*q^198 + 
15*q^200 - 24*q^207 - 12*q^211 + 10*q^212 - 20*q^214 + 18*q^218 + 15*q^225 + 
2*q^226 - 6*q^232 + 22*q^233 + 16*q^239 + 5*q^242 + 32*q^253 + 16*q^254 - 
17*q^256 - 6*q^261 + 32*q^263 - 4*q^268 - 10*q^274 - 20*q^275 - 10*q^277 - 
26*q^281 - 16*q^284 - 15*q^288 - 17*q^289 + 18*q^296 + 22*q^298 - 24*q^302 - 
8*q^316 - 34*q^317 + 8*q^319 - 9*q^324 - 20*q^326 + 36*q^331 + 18*q^333 + 
30*q^337 - 13*q^338 + O(q^343)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_7B1_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3, 
"grevlex") |
-x[1]^3 + x[2]^2*x[3] + 2835*x[1]*x[3]^2 + 71442*x[3]^3
]);
