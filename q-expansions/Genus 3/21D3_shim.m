
    /****************************************************
    Loading this file in magma loads the objects fs_21D3_shim 
    and X_21D3_shim. fs_21D3_shim is a list of power series which form 
    a basis for the space of cusp forms. X_21D3_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_21D3_shim := [Kq | q - 2*q^4 - 2*q^5 - q^7 + 2*q^8 + q^9 + 
4*q^10 + 4*q^11 - q^13 - 2*q^14 - 2*q^15 - 2*q^16 - 4*q^17 - 2*q^18 + 3*q^19 + 
q^21 - 4*q^22 + 2*q^24 + 2*q^26 + q^27 + 4*q^28 - 6*q^31 + 2*q^32 + 2*q^33 + 
4*q^34 + 4*q^35 + 5*q^37 - 4*q^38 - 2*q^39 - 4*q^40 - 2*q^41 - q^43 - 4*q^44 - 
2*q^47 - 2*q^48 - 4*q^51 - 4*q^53 - 4*q^55 - 2*q^56 + 3*q^57 + 4*q^58 + 16*q^59 
+ O(q^60), q^2 - q^4 - 2*q^5 - q^6 + q^7 + q^8 + q^9 + 2*q^10 + 2*q^11 + q^12 - 
q^13 - 3*q^14 - 3*q^16 - 2*q^17 - q^18 + 2*q^19 + 2*q^20 + q^24 + 2*q^26 + q^28 
- 2*q^29 - 2*q^30 - 3*q^31 + q^32 + 2*q^34 + 4*q^35 - q^36 + 4*q^37 - 2*q^38 - 
q^39 - 2*q^40 + 4*q^41 + 3*q^42 - 3*q^43 - 4*q^44 - 4*q^47 + q^48 - 4*q^49 + 
q^50 - 2*q^51 - 2*q^53 + q^54 - 4*q^55 - q^56 + q^57 + 6*q^58 + 8*q^59 + 
O(q^60), q^3 - 2*q^5 - 2*q^6 + q^7 + 2*q^8 + q^9 + 2*q^11 - 2*q^13 - 2*q^16 - 
4*q^17 + 3*q^19 + 4*q^20 - 2*q^21 + 2*q^24 - q^25 + 2*q^26 - 2*q^28 - 4*q^29 + 
3*q^31 - 6*q^32 + 2*q^33 + 4*q^34 + 2*q^35 - 2*q^36 + 5*q^37 - 2*q^38 - q^39 - 
4*q^40 + 8*q^41 + 4*q^42 - 6*q^43 - 4*q^44 - 2*q^45 - 2*q^47 + 2*q^48 - 3*q^49 +
2*q^50 - 4*q^51 + 2*q^52 + 8*q^53 - 8*q^55 - 2*q^56 + 2*q^57 + 4*q^58 + 4*q^59 +
O(q^60)] ;
              P_Q<[x]> := WeightedProjectiveSpace(Rationals(), [ 1, 4, 1 ]);
              X_21D3_shim := Curve(P_Q, [ PolynomialRing(RationalField(), [ 1, 
4, 1 ]) |
-x[1]^8 + 6*x[1]^6*x[3]^2 - 4*x[1]^5*x[3]^3 - 11*x[1]^4*x[3]^4 + 
24*x[1]^3*x[3]^5 - 22*x[1]^2*x[3]^6 + 8*x[1]*x[3]^7 + x[2]^2 - x[3]^8
]);
