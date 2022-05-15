
    /****************************************************
    Loading this file in magma loads the objects fs_35A3_shim 
    and X_35A3_shim. fs_35A3_shim is a list of power series which form 
    a basis for the space of cusp forms. X_35A3_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_35A3_shim := [Kq | q - 2*q^6 - 2*q^8 - q^11 + 4*q^13 - q^15 + 
2*q^16 + 2*q^18 + 2*q^20 + q^21 + 2*q^22 - 4*q^23 + q^25 + 2*q^26 - 4*q^27 - 
2*q^28 + q^29 - 2*q^30 + O(q^31), q^2 - 3*q^4 - q^5 + 2*q^6 + q^7 + 3*q^8 - q^9 
+ q^10 - q^11 - 4*q^12 + 2*q^13 - q^14 - q^15 - q^16 + 2*q^17 - q^18 + 4*q^19 - 
q^20 + q^21 - 2*q^22 - 4*q^23 + 4*q^24 + q^28 - q^29 + 2*q^30 + O(q^31), q^3 - 
2*q^4 - q^5 + 2*q^6 + q^7 + 2*q^8 - 2*q^9 - 2*q^11 - 2*q^12 + q^13 + 2*q^16 + 
3*q^17 - 2*q^18 + 2*q^19 - 2*q^22 - 2*q^23 - 2*q^26 - q^27 + 2*q^29 + 2*q^30 + 
O(q^31)] ;
              P_Q<[x]> := WeightedProjectiveSpace(Rationals(), [ 1, 4, 1 ]);
              X_35A3_shim := Curve(P_Q, [ PolynomialRing(RationalField(), [ 1, 
4, 1 ]) |
-x[1]^8 + 12*x[1]^7*x[3] - 50*x[1]^6*x[3]^2 + 108*x[1]^5*x[3]^3 - 
131*x[1]^4*x[3]^4 + 76*x[1]^3*x[3]^5 + 10*x[1]^2*x[3]^6 - 44*x[1]*x[3]^7 + 
x[2]^2 + 19*x[3]^8
]);
