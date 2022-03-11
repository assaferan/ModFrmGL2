
    /****************************************************
    Loading this file in magma loads the objects fs_19B1_shim 
    and X_19B1_shim. fs_19B1_shim is a list of power series which form 
    a basis for the space of cusp forms. X_19B1_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_19B1_shim := [Kq | q - 2*q^3 - 2*q^4 + 3*q^5 - q^7 + q^9 + 
3*q^11 + 4*q^12 - 4*q^13 - 6*q^15 + 4*q^16 - 3*q^17 + q^19 - 6*q^20 + 2*q^21 + 
4*q^25 + 4*q^27 + 2*q^28 + 6*q^29 - 4*q^31 - 6*q^33 - 3*q^35 - 2*q^36 + 2*q^37 +
8*q^39 - 6*q^41 - q^43 - 6*q^44 + 3*q^45 - 3*q^47 - 8*q^48 - 6*q^49 + 6*q^51 + 
8*q^52 + 12*q^53 + 9*q^55 + O(q^57)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_19B1_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3, 
"grevlex") |
-x[1]^3 + x[2]^2*x[3] - 864*x[1]*x[3]^2 + 432*x[3]^3
]);
