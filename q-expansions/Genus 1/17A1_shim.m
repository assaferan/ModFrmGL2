
    /****************************************************
    Loading this file in magma loads the objects fs_17A1_shim 
    and X_17A1_shim. fs_17A1_shim is a list of power series which form 
    a basis for the space of cusp forms. X_17A1_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_17A1_shim := [Kq | q - q^2 - q^4 - 2*q^5 + 4*q^7 + 3*q^8 - 
3*q^9 + 2*q^10 - 2*q^13 - 4*q^14 - q^16 + O(q^17)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_17A1_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3, 
"grevlex") |
-x[1]^3 + x[2]^2*x[3] + 891*x[1]*x[3]^2 + 648810*x[3]^3
]);
