
    /****************************************************
    Loading this file in magma loads the objects fs_11A1_shim 
    and X_11A1_shim. fs_11A1_shim is a list of power series which form 
    a basis for the space of cusp forms. X_11A1_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_11A1_shim := [Kq | q - 2*q^2 - q^3 + 2*q^4 + q^5 + 2*q^6 - 
2*q^7 - 2*q^9 - 2*q^10 + O(q^11)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_11A1_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3, 
"grevlex") |
-x[1]^3 + x[2]^2*x[3] + 13392*x[1]*x[3]^2 + 1080432*x[3]^3
]);
