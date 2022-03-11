
    /****************************************************
    Loading this file in magma loads the objects fs_6F1_shim 
    and X_6F1_shim. fs_6F1_shim is a list of power series which form 
    a basis for the space of cusp forms. X_6F1_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_6F1_shim := [Kq | q - 4*q^7 + 2*q^13 + 8*q^19 - 5*q^25 - 4*q^31
- 10*q^37 + 8*q^43 + 9*q^49 + 14*q^61 - 16*q^67 - 10*q^73 - 4*q^79 - 8*q^91 + 
14*q^97 + 20*q^103 + 2*q^109 - 11*q^121 + 20*q^127 - 32*q^133 - 16*q^139 - 
4*q^151 + 14*q^157 + 8*q^163 - 9*q^169 + 20*q^175 + 26*q^181 + 2*q^193 - 
28*q^199 - 16*q^211 + 16*q^217 - 28*q^223 - 22*q^229 + 14*q^241 + 16*q^247 + 
40*q^259 - 28*q^271 + 26*q^277 + 32*q^283 - 17*q^289 - 32*q^301 - 16*q^307 - 
22*q^313 - 10*q^325 + 32*q^331 - 34*q^337 - 8*q^343 + 14*q^349 + 45*q^361 + 
O(q^366)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_6F1_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3, 
"grevlex") |
-x[1]^3 + x[2]^2*x[3] - 46656*x[3]^3
]);
