
    /****************************************************
    Loading this file in magma loads the objects fs_48J3_shim 
    and X_48J3_shim. fs_48J3_shim is a list of power series which form 
    a basis for the space of cusp forms. X_48J3_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_48J3_shim := [Kq | q - 2*q^5 + q^9 - 2*q^13 + 2*q^17 - q^25 + 
6*q^29 - 4*q^33 + 6*q^37 - 6*q^41 - 2*q^45 - 7*q^49 - 2*q^53 + 4*q^57 - 2*q^61 +
O(q^63), q^2 - q^6 - 2*q^10 + q^18 + 4*q^22 - 2*q^26 + 2*q^30 + 2*q^34 - 4*q^38 
- 8*q^46 - q^50 - q^54 + 6*q^58 + 8*q^62 + O(q^63), q^3 - 4*q^11 - 2*q^15 + 
4*q^19 + 8*q^23 + q^27 - 8*q^31 - 2*q^39 - 4*q^43 + 2*q^51 + 8*q^55 - 4*q^59 + 
O(q^63)] ;
              P_Q<[x]> := WeightedProjectiveSpace(Rationals(), [ 1, 4, 1 ]);
              X_48J3_shim := Curve(P_Q, [ PolynomialRing(RationalField(), [ 1, 
4, 1 ]) |
-x[1]^8 - 14*x[1]^4*x[3]^4 + x[2]^2 - x[3]^8
]);
