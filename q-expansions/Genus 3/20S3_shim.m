
    /****************************************************
    Loading this file in magma loads the objects fs_20S3_shim 
    and X_20S3_shim. fs_20S3_shim is a list of power series which form 
    a basis for the space of cusp forms. X_20S3_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_20S3_shim := [Kq | q - 2*q^4 - 3*q^5 + 4*q^8 + 3*q^9 + 2*q^10 -
2*q^13 - 4*q^16 - 6*q^18 + 2*q^20 + 7*q^25 + 2*q^26 - 4*q^29 + 6*q^34 + 6*q^36 -
8*q^40 - 8*q^41 - 3*q^45 - 7*q^49 - 8*q^50 + 18*q^53 + 8*q^58 + 12*q^61 + 8*q^64
+ 4*q^65 - 12*q^68 - 22*q^73 - 14*q^74 + 12*q^80 - 9*q^81 - 6*q^85 + O(q^89), 
q^2 - 2*q^4 - q^5 + 2*q^8 + 3*q^9 - q^10 - q^13 - 3*q^17 - 3*q^18 + 4*q^20 + 
4*q^25 - 4*q^29 - 4*q^32 + 6*q^34 + 7*q^37 - 6*q^40 - 6*q^45 - 7*q^49 - q^50 + 
2*q^52 + 9*q^53 + 4*q^58 + 8*q^64 + 3*q^65 - 6*q^68 + 6*q^72 - 11*q^73 - 14*q^74
+ 4*q^80 - 8*q^82 + 3*q^85 + O(q^89), q^3 - q^4 - q^5 - q^7 + 2*q^8 + q^9 + q^10
- 2*q^13 - q^15 - 2*q^16 + 3*q^17 - 3*q^18 + 2*q^19 + q^20 + 2*q^21 - 3*q^23 + 
3*q^25 + q^26 - 2*q^27 - 5*q^29 + 2*q^31 + 3*q^34 + q^35 + 3*q^36 - q^37 + 
2*q^39 - 4*q^40 - 7*q^41 + 5*q^43 - q^45 + 3*q^47 - 2*q^49 - 4*q^50 - 6*q^51 + 
12*q^53 - 4*q^57 + 4*q^58 - 6*q^59 + 5*q^61 - q^63 + 4*q^64 + 3*q^65 - q^67 - 
6*q^68 + 6*q^69 + 6*q^71 - 12*q^73 - 7*q^74 + q^75 - 4*q^79 + 6*q^80 + q^81 - 
3*q^83 - 6*q^85 + 6*q^87 + O(q^89)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_20S3_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3) |
x[1]^3*x[3] - x[1]^2*x[2]^2 - 3*x[1]^2*x[3]^2 + x[1]*x[2]^3 + 4*x[1]*x[3]^3 - 
2*x[3]^4
]);
