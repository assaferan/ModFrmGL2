
    /****************************************************
    Loading this file in magma loads the objects fs_15E3_shim 
    and X_15E3_shim. fs_15E3_shim is a list of power series which form 
    a basis for the space of cusp forms. X_15E3_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_15E3_shim := [Kq | q - q^4 - q^10 - 2*q^13 - q^16 + 4*q^19 + 
4*q^22 + q^25 - 2*q^34 - 10*q^37 + 3*q^40 + 4*q^43 - 7*q^49 + 2*q^52 - 4*q^55 + 
2*q^58 - 2*q^61 + 7*q^64 + 12*q^67 + 10*q^73 - 4*q^76 - 10*q^82 + 2*q^85 - 
12*q^88 - 8*q^94 + 2*q^97 - q^100 - 16*q^103 + 10*q^106 + 14*q^109 + 4*q^118 + 
5*q^121 - 8*q^127 + 2*q^130 + O(q^132), q^2 - q^5 - 3*q^8 + 4*q^11 - 2*q^17 + 
q^20 - 2*q^26 + 2*q^29 + 5*q^32 + 4*q^38 - 10*q^41 - 4*q^44 - 8*q^47 + q^50 + 
10*q^53 + 4*q^59 + 2*q^65 + 2*q^68 + 8*q^71 - 10*q^74 + q^80 - 12*q^83 + 4*q^86 
+ 6*q^89 - 4*q^95 - 7*q^98 - 6*q^101 + 6*q^104 + 12*q^107 - 4*q^110 - 2*q^113 - 
2*q^116 - 2*q^122 - q^125 - 3*q^128 + 12*q^131 + O(q^132), q^3 - q^6 - q^9 - 
q^12 + q^15 + q^18 + 3*q^24 + q^27 - q^30 - 4*q^33 + q^36 - 2*q^39 - q^45 - q^48
+ 2*q^51 - q^54 + 4*q^57 - q^60 + 4*q^66 - 3*q^72 + q^75 + 2*q^78 - q^81 - 
2*q^87 + q^90 - 5*q^96 + 4*q^99 - 2*q^102 - q^108 - 10*q^111 - 4*q^114 + 2*q^117
+ 3*q^120 + 10*q^123 + 4*q^129 + O(q^132)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_15E3_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3) |
x[1]^3*x[3] - x[1]^2*x[2]^2 + x[1]*x[2]*x[3]^2 - x[2]^3*x[3] - 5*x[3]^4
]);
