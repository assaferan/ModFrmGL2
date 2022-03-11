
    /****************************************************
    Loading this file in magma loads the objects fs_17B1_shim 
    and X_17B1_shim. fs_17B1_shim is a list of power series which form 
    a basis for the space of cusp forms. X_17B1_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_17B1_shim := [Kq | q - q^2 - q^4 - 2*q^5 + 4*q^7 + 3*q^8 - 
3*q^9 + 2*q^10 - 2*q^13 - 4*q^14 - q^16 + q^17 + 3*q^18 - 4*q^19 + 2*q^20 + 
4*q^23 - q^25 + 2*q^26 - 4*q^28 + 6*q^29 + 4*q^31 - 5*q^32 + O(q^34)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_17B1_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3, 
"grevlex") |
-x[1]^3 + x[2]^2*x[3] + 7371*x[1]*x[3]^2 + 240570*x[3]^3
]);
