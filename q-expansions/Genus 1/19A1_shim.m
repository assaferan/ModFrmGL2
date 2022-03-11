
    /****************************************************
    Loading this file in magma loads the objects fs_19A1_shim 
    and X_19A1_shim. fs_19A1_shim is a list of power series which form 
    a basis for the space of cusp forms. X_19A1_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_19A1_shim := [Kq | q - 2*q^3 - 2*q^4 + 3*q^5 - q^7 + q^9 + 
3*q^11 + 4*q^12 - 4*q^13 - 6*q^15 + 4*q^16 - 3*q^17 + O(q^19)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_19A1_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3, 
"grevlex") |
-x[1]^3 + x[2]^2*x[3] + 12096*x[1]*x[3]^2 + 544752*x[3]^3
]);
