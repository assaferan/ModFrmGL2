
    /****************************************************
    Loading this file in magma loads the objects fs_39A3_shim 
    and X_39A3_shim. fs_39A3_shim is a list of power series which form 
    a basis for the space of cusp forms. X_39A3_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_39A3_shim := [Kq | q + q^5 - q^6 - 2*q^7 - 3*q^8 + q^9 - q^10 +
q^11 + q^12 - q^15 + q^16 + 2*q^17 + 3*q^20 + 2*q^21 + 3*q^22 - 2*q^23 + q^25 + 
q^26 - 2*q^28 - 4*q^29 - 3*q^30 + 4*q^32 - 3*q^33 + 4*q^34 - 8*q^35 + O(q^36), q
+ q^5 - q^6 - 2*q^7 - 3*q^8 + q^9 - q^10 + q^11 + q^12 - q^15 + q^16 + 2*q^17 + 
3*q^20 + 2*q^21 + 3*q^22 - 2*q^23 + q^25 + q^26 - 2*q^28 - 4*q^29 - 3*q^30 + 
4*q^32 - 3*q^33 + 4*q^34 - 8*q^35 + O(q^36), q^2 - 2*q^4 - 2*q^5 + q^6 + 2*q^7 +
q^8 + 2*q^10 - 2*q^12 - 2*q^14 - 2*q^15 + 4*q^17 + q^18 - 2*q^19 - 2*q^20 + 
2*q^21 - 2*q^22 + q^24 - q^26 + 2*q^28 + 2*q^30 + 2*q^31 + q^32 - 2*q^34 + 
O(q^36), q^3 - q^4 - 3*q^5 + q^6 + 4*q^7 + q^8 - q^10 - 3*q^11 - 2*q^12 - q^13 +
2*q^14 - q^15 + 2*q^16 + 4*q^17 - 2*q^19 + 3*q^20 - 3*q^22 - 2*q^23 - 2*q^24 + 
2*q^25 - q^26 + q^27 - 4*q^28 + 6*q^29 + q^30 - 2*q^31 + q^33 + O(q^36)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_39A3_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3) |
x[1]*x[3] - x[2]^2 + x[2]*x[3]
]);
