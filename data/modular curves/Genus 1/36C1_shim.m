
    /****************************************************
    Loading this file in magma loads the objects fs_36C1_shim 
    and X_36C1_shim. fs_36C1_shim is a list of power series which form 
    a basis for the space of cusp forms. X_36C1_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_36C1_shim := [Kq | q - 4*q^7 + 2*q^13 + 8*q^19 - 5*q^25 - 
4*q^31 - 10*q^37 + 8*q^43 + 9*q^49 + 14*q^61 - 16*q^67 + O(q^71)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_36C1_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3, 
"grevlex") |
-x[1]^3 + x[2]^2*x[3] - 46656*x[3]^3
]);
