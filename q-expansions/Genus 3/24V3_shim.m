
    /****************************************************
    Loading this file in magma loads the objects fs_24V3_shim 
    and X_24V3_shim. fs_24V3_shim is a list of power series which form 
    a basis for the space of cusp forms. X_24V3_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_24V3_shim := [Kq | q - 2*q^5 + q^9 - 2*q^13 + 2*q^17 - q^25 + 
6*q^29 - 4*q^33 + 6*q^37 - 6*q^41 - 2*q^45 - 7*q^49 - 2*q^53 + 4*q^57 - 2*q^61 +
4*q^65 + 8*q^69 + 10*q^73 + q^81 - 4*q^85 - 6*q^89 - 8*q^93 + 2*q^97 - 18*q^101 
- 2*q^109 + 18*q^113 - 2*q^117 + 5*q^121 + O(q^122), q^2 - q^6 - 2*q^10 + q^18 +
4*q^22 - 2*q^26 + 2*q^30 + 2*q^34 - 4*q^38 - 8*q^46 - q^50 - q^54 + 6*q^58 + 
8*q^62 - 4*q^66 + 6*q^74 + 2*q^78 - 6*q^82 + 4*q^86 - 2*q^90 - 7*q^98 - 2*q^102 
- 2*q^106 - 8*q^110 + 4*q^114 + 4*q^118 + O(q^122), q^3 - 4*q^11 - 2*q^15 + 
4*q^19 + 8*q^23 + q^27 - 8*q^31 - 2*q^39 - 4*q^43 + 2*q^51 + 8*q^55 - 4*q^59 + 
4*q^67 - 8*q^71 - q^75 + 8*q^79 + 4*q^83 + 6*q^87 - 8*q^95 - 4*q^99 - 16*q^103 +
12*q^107 + 6*q^111 - 16*q^115 + O(q^122)] ;
              P_Q<[x]> := WeightedProjectiveSpace(Rationals(), [ 1, 4, 1 ]);
              X_24V3_shim := Curve(P_Q, [ PolynomialRing(RationalField(), [ 1, 
4, 1 ]) |
-x[1]^8 - 14*x[1]^4*x[3]^4 + x[2]^2 - x[3]^8
]);
