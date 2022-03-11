
    /****************************************************
    Loading this file in magma loads the objects fs_12S1_shim 
    and X_12S1_shim. fs_12S1_shim is a list of power series which form 
    a basis for the space of cusp forms. X_12S1_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_12S1_shim := [Kq | q - 4*q^7 + 2*q^13 + 8*q^19 - 5*q^25 - 
4*q^31 - 10*q^37 + 8*q^43 + 9*q^49 + 14*q^61 - 16*q^67 - 10*q^73 - 4*q^79 - 
8*q^91 + 14*q^97 + 20*q^103 + 2*q^109 - 11*q^121 + 20*q^127 - 32*q^133 - 
16*q^139 - 4*q^151 + 14*q^157 + 8*q^163 - 9*q^169 + 20*q^175 + 26*q^181 + 
2*q^193 - 28*q^199 + O(q^201)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_12S1_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3, 
"grevlex") |
-x[1]^3 + x[2]^2*x[3] - 46656*x[3]^3
]);
