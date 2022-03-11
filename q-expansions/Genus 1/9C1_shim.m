
    /****************************************************
    Loading this file in magma loads the objects fs_9C1_shim 
    and X_9C1_shim. fs_9C1_shim is a list of power series which form 
    a basis for the space of cusp forms. X_9C1_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_9C1_shim := [Kq | q - 2*q^4 - q^7 + 5*q^13 + 4*q^16 - 7*q^19 - 
5*q^25 + 2*q^28 - 4*q^31 + 11*q^37 + 8*q^43 - 6*q^49 - 10*q^52 - q^61 - 8*q^64 +
5*q^67 - 7*q^73 + 14*q^76 + 17*q^79 - 5*q^91 - 19*q^97 + O(q^99)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_9C1_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3, 
"grevlex") |
-x[1]^3 + x[2]^2*x[3] + 314928*x[3]^3
]);
