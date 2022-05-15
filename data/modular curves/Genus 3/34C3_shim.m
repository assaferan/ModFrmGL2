
    /****************************************************
    Loading this file in magma loads the objects fs_34C3_shim 
    and X_34C3_shim. fs_34C3_shim is a list of power series which form 
    a basis for the space of cusp forms. X_34C3_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_34C3_shim := [Kq | q - 2*q^4 - 2*q^5 + 4*q^7 + 2*q^8 - 3*q^9 - 
2*q^13 + 2*q^16 + q^17 - 4*q^19 + 4*q^20 + 4*q^23 - q^25 - 8*q^28 + 6*q^29 + 
4*q^31 - 6*q^32 + O(q^35), q^2 - q^4 - q^8 - 2*q^10 + 4*q^14 + 3*q^16 - 3*q^18 +
2*q^20 - 2*q^26 - 4*q^28 - q^32 + q^34 + O(q^35), q^3 - 2*q^4 - q^5 + q^6 + 
4*q^7 - 2*q^9 - q^10 - 3*q^11 + q^12 - 2*q^13 + 4*q^14 + 2*q^16 + q^17 - 2*q^18 
+ 3*q^20 - 4*q^21 - 3*q^22 + 2*q^23 + q^24 + 2*q^25 - 2*q^26 - 2*q^27 - 4*q^28 +
3*q^29 + 4*q^31 - 4*q^32 + 6*q^33 + q^34 + O(q^35)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_34C3_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3) |
x[1]^3*x[3] - x[1]^2*x[2]^2 - 3*x[1]^2*x[3]^2 + 2*x[1]*x[2]^3 + 
3*x[1]*x[2]^2*x[3] - 3*x[1]*x[2]*x[3]^2 + 4*x[1]*x[3]^3 - x[2]^4 + 4*x[2]^3*x[3]
- 6*x[2]^2*x[3]^2 + 4*x[2]*x[3]^3 - 2*x[3]^4
]);
