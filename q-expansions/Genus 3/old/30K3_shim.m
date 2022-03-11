
    /****************************************************
    Loading this file in magma loads the objects fs_30K3_shim 
    and X_30K3_shim. fs_30K3_shim is a list of power series which form 
    a basis for the space of cusp forms. X_30K3_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_30K3_shim := [Kq | q - q^4 - q^6 - 2*q^7 + q^9 + q^10 - 2*q^11 
+ 2*q^12 + 2*q^14 - q^15 + 3*q^16 + 4*q^17 - 2*q^20 - 2*q^21 - 2*q^22 - q^24 + 
q^25 - 2*q^26 - 2*q^28 - 4*q^29 + 4*q^31 - 4*q^32 + 2*q^33 - 2*q^34 + 2*q^35 - 
q^36 - 4*q^37 + 4*q^38 + 2*q^39 + q^40 + 2*q^41 + 2*q^42 + 6*q^44 + O(q^46), q -
q^4 - q^6 - 2*q^7 + q^9 + q^10 - 2*q^11 + 2*q^12 + 2*q^14 - q^15 + 3*q^16 + 
4*q^17 - 2*q^20 - 2*q^21 - 2*q^22 - q^24 + q^25 - 2*q^26 - 2*q^28 - 4*q^29 + 
4*q^31 - 4*q^32 + 2*q^33 - 2*q^34 + 2*q^35 - q^36 - 4*q^37 + 4*q^38 + 2*q^39 + 
q^40 + 2*q^41 + 2*q^42 + 6*q^44 + O(q^46), q^2 - q^4 - q^6 - q^8 + q^10 + q^12 +
3*q^16 + q^18 - q^20 - 4*q^22 + q^24 - 2*q^26 - q^30 - q^32 + 2*q^34 - q^36 + 
4*q^38 - q^40 + 4*q^44 + O(q^46), q^3 + q^4 - q^5 - q^6 - 2*q^7 - 2*q^8 + q^10 +
2*q^11 + 2*q^13 + 2*q^14 + q^16 + 2*q^17 - 4*q^19 - 2*q^21 - 2*q^22 + q^24 - 
2*q^26 + q^27 - 2*q^28 - 2*q^29 + 4*q^31 + 2*q^32 - 2*q^33 - 2*q^34 + 2*q^35 + 
q^36 + 6*q^37 + 4*q^38 - q^40 - 8*q^41 + 2*q^42 - 4*q^43 - 2*q^44 - q^45 + 
O(q^46)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_30K3_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3) |
x[1]*x[3] - x[2]^2 - x[2]*x[3]
]);
