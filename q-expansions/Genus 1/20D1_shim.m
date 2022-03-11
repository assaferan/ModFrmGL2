
    /****************************************************
    Loading this file in magma loads the objects fs_20D1_shim 
    and X_20D1_shim. fs_20D1_shim is a list of power series which form 
    a basis for the space of cusp forms. X_20D1_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_20D1_shim := [Kq | q - 2*q^3 - q^5 + 2*q^7 + q^9 + 2*q^13 + 
2*q^15 - 6*q^17 - 4*q^19 - 4*q^21 + 6*q^23 + q^25 + 4*q^27 + 6*q^29 - 4*q^31 + 
O(q^35)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_20D1_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3, 
"grevlex") |
-x[1]^3 + x[2]^2*x[3] - 4752*x[1]*x[3]^2 - 127872*x[3]^3
]);
