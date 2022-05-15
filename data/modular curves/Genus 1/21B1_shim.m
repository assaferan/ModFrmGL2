
    /****************************************************
    Loading this file in magma loads the objects fs_21B1_shim 
    and X_21B1_shim. fs_21B1_shim is a list of power series which form 
    a basis for the space of cusp forms. X_21B1_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_21B1_shim := [Kq | q - q^2 + q^3 - q^4 - 2*q^5 - q^6 - q^7 + 
3*q^8 + q^9 + 2*q^10 + 4*q^11 - q^12 - 2*q^13 + q^14 - 2*q^15 - q^16 - 6*q^17 - 
q^18 + 4*q^19 + 2*q^20 - q^21 - 4*q^22 + 3*q^24 - q^25 + 2*q^26 + q^27 + q^28 - 
2*q^29 + 2*q^30 + O(q^31)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_21B1_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3, 
"grevlex") |
-x[1]^3 + x[2]^2*x[3] + 5211*x[1]*x[3]^2 + 31050*x[3]^3
]);
