
    /****************************************************
    Loading this file in magma loads the objects fs_41A3_shim 
    and X_41A3_shim. fs_41A3_shim is a list of power series which form 
    a basis for the space of cusp forms. X_41A3_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_41A3_shim := [Kq | q + q^4 - q^5 - 2*q^6 + 2*q^7 - 2*q^8 - 
3*q^10 - 2*q^12 + 2*q^14 + 2*q^15 + 3*q^16 - 2*q^17 + 3*q^18 + 2*q^19 + q^20 - 
3*q^21 + 2*q^23 - q^25 + 2*q^26 + O(q^27), q^2 - 2*q^4 - q^5 + 3*q^8 + q^9 + 
q^10 - 2*q^11 - 2*q^12 + 2*q^13 + 2*q^14 - 4*q^16 - 2*q^18 + 2*q^19 - 3*q^20 - 
q^21 + 4*q^22 + 2*q^23 + 2*q^24 - 4*q^26 + O(q^27), q^3 - 2*q^4 + q^6 - q^7 + 
2*q^8 + 2*q^10 - 3*q^11 - q^12 + 2*q^13 - q^14 - 2*q^15 - 2*q^18 + 3*q^19 + 
2*q^21 + q^22 + 4*q^23 + q^24 - 2*q^25 - 2*q^26 + O(q^27)] ;
              P_Q<[x]> := WeightedProjectiveSpace(Rationals(), [ 1, 4, 1 ]);
              X_41A3_shim := Curve(P_Q, [ PolynomialRing(RationalField(), [ 1, 
4, 1 ]) |
-x[1]^8 + 12*x[1]^7*x[3] - 48*x[1]^6*x[3]^2 + 82*x[1]^5*x[3]^3 - 
60*x[1]^4*x[3]^4 + 8*x[1]^3*x[3]^5 + 27*x[1]^2*x[3]^6 - 16*x[1]*x[3]^7 + x[2]^2 
+ 4*x[3]^8
]);
