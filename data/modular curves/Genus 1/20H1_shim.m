
    /****************************************************
    Loading this file in magma loads the objects fs_20H1_shim 
    and X_20H1_shim. fs_20H1_shim is a list of power series which form 
    a basis for the space of cusp forms. X_20H1_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_20H1_shim := [Kq | q - 2*q^3 - q^5 + 2*q^7 + q^9 + 2*q^13 + 
2*q^15 - 6*q^17 - 4*q^19 - 4*q^21 + 6*q^23 + q^25 + 4*q^27 + 6*q^29 - 4*q^31 - 
2*q^35 + 2*q^37 - 4*q^39 + 6*q^41 - 10*q^43 - q^45 - 6*q^47 - 3*q^49 + 12*q^51 -
6*q^53 + 8*q^57 + 12*q^59 + 2*q^61 + 2*q^63 - 2*q^65 + 2*q^67 + O(q^69)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_20H1_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3, 
"grevlex") |
-x[1]^3 + x[2]^2*x[3] + 1728*x[1]*x[3]^2 - 19008*x[3]^3
]);
