
    /****************************************************
    Loading this file in magma loads the objects fs_33C3_shim 
    and X_33C3_shim. fs_33C3_shim is a list of power series which form 
    a basis for the space of cusp forms. X_33C3_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_33C3_shim := [Kq | q - q^5 - 2*q^6 + 2*q^7 - 2*q^8 - q^9 - 
2*q^10 + q^11 + 2*q^12 + 4*q^14 + 2*q^15 - 2*q^16 - 2*q^17 + 4*q^18 + 2*q^20 - 
4*q^21 + 5*q^23 + 2*q^24 - 2*q^25 - 4*q^26 - q^27 - 4*q^28 - 4*q^29 + O(q^31), 
q^2 - q^4 - q^5 - q^6 + 2*q^7 - q^8 + q^9 + q^12 - 2*q^13 + q^15 + q^16 - q^18 -
2*q^21 + q^22 + 3*q^23 + q^24 + q^25 + 2*q^26 - 2*q^27 - 2*q^29 + O(q^31), q^3 -
2*q^6 - q^9 + 2*q^12 + q^15 + 2*q^18 - 2*q^21 - 2*q^27 - 2*q^30 + O(q^31)] ;
              P_Q<[x]> := WeightedProjectiveSpace(Rationals(), [ 1, 4, 1 ]);
              X_33C3_shim := Curve(P_Q, [ PolynomialRing(RationalField(), [ 1, 
4, 1 ]) |
-x[1]^8 - 10*x[1]^6*x[3]^2 + 8*x[1]^5*x[3]^3 - 47*x[1]^4*x[3]^4 + 
40*x[1]^3*x[3]^5 - 82*x[1]^2*x[3]^6 + 44*x[1]*x[3]^7 + x[2]^2 - 33*x[3]^8
]);
