
    /****************************************************
    Loading this file in magma loads the objects fs_32A1_shim 
    and X_32A1_shim. fs_32A1_shim is a list of power series which form 
    a basis for the space of cusp forms. X_32A1_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_32A1_shim := [Kq | q - 2*q^5 - 3*q^9 + 6*q^13 + 2*q^17 - q^25 -
10*q^29 - 2*q^37 + 10*q^41 + 6*q^45 + O(q^47)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_32A1_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3, 
"grevlex") |
-x[1]^3 + x[2]^2*x[3] - 5184*x[1]*x[3]^2
]);
