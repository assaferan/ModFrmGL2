
    /****************************************************
    Loading this file in magma loads the objects fs_15I1_shim 
    and X_15I1_shim. fs_15I1_shim is a list of power series which form 
    a basis for the space of cusp forms. X_15I1_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_15I1_shim := [Kq | q - q^2 - q^3 - q^4 + q^5 + q^6 + 3*q^8 + 
q^9 - q^10 - 4*q^11 + q^12 - 2*q^13 - q^15 - q^16 + 2*q^17 - q^18 + 4*q^19 - 
q^20 + 4*q^22 - 3*q^24 + q^25 + 2*q^26 - q^27 - 2*q^29 + q^30 - 5*q^32 + 4*q^33 
- 2*q^34 - q^36 - 10*q^37 - 4*q^38 + 2*q^39 + 3*q^40 + 10*q^41 + 4*q^43 + 4*q^44
+ q^45 + 8*q^47 + q^48 - 7*q^49 - q^50 - 2*q^51 + 2*q^52 - 10*q^53 + q^54 - 
4*q^55 - 4*q^57 + 2*q^58 - 4*q^59 + q^60 - 2*q^61 + 7*q^64 - 2*q^65 - 4*q^66 + 
12*q^67 - 2*q^68 - 8*q^71 + 3*q^72 + 10*q^73 + 10*q^74 - q^75 - 4*q^76 - 2*q^78 
- q^80 + q^81 - 10*q^82 + 12*q^83 + 2*q^85 - 4*q^86 + 2*q^87 - 12*q^88 - 6*q^89 
+ O(q^90)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_15I1_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3, 
"grevlex") |
-x[1]^3 + x[2]^2*x[3] + 27*x[1]*x[3]^2 - 8694*x[3]^3
]);
