
    /****************************************************
    Loading this file in magma loads the objects fs_9H1_shim 
    and X_9H1_shim. fs_9H1_shim is a list of power series which form 
    a basis for the space of cusp forms. X_9H1_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_9H1_shim := [Kq | q - 2*q^4 - q^7 + 5*q^13 + 4*q^16 - 7*q^19 - 
5*q^25 + 2*q^28 - 4*q^31 + 11*q^37 + 8*q^43 - 6*q^49 - 10*q^52 - q^61 - 8*q^64 +
5*q^67 - 7*q^73 + 14*q^76 + 17*q^79 - 5*q^91 - 19*q^97 + 10*q^100 - 13*q^103 + 
2*q^109 - 4*q^112 - 11*q^121 + 8*q^124 + 20*q^127 + 7*q^133 + 23*q^139 - 
22*q^148 - 19*q^151 + 14*q^157 - 25*q^163 + 12*q^169 - 16*q^172 + 5*q^175 - 
7*q^181 + 23*q^193 + 12*q^196 + 11*q^199 + 20*q^208 - 13*q^211 + 4*q^217 - 
28*q^223 - 22*q^229 + 17*q^241 + 2*q^244 - 35*q^247 + 16*q^256 - 11*q^259 - 
10*q^268 + 29*q^271 + 26*q^277 + 32*q^283 - 17*q^289 + O(q^291)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_9H1_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3, 
"grevlex") |
-x[1]^3 + x[2]^2*x[3] - 11664*x[3]^3
]);
