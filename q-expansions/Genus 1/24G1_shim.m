
    /****************************************************
    Loading this file in magma loads the objects fs_24G1_shim 
    and X_24G1_shim. fs_24G1_shim is a list of power series which form 
    a basis for the space of cusp forms. X_24G1_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_24G1_shim := [Kq | q - q^3 - 2*q^5 + q^9 + 4*q^11 - 2*q^13 + 
2*q^15 + 2*q^17 - 4*q^19 - 8*q^23 - q^25 - q^27 + 6*q^29 + 8*q^31 - 4*q^33 + 
6*q^37 + 2*q^39 - 6*q^41 + 4*q^43 - 2*q^45 + O(q^47)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_24G1_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3, 
"grevlex") |
-x[1]^3 + x[2]^2*x[3] + 5616*x[1]*x[3]^2 - 120960*x[3]^3
]);
