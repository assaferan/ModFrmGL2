
    /****************************************************
    Loading this file in magma loads the objects fs_11A1 
    and X_11A1. fs_11A1 is a list of power series which form 
    a basis for the space of cusp forms. X_11A1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_11A1 := [Kq | q - 2*q^2 - q^3 + 2*q^4 + q^5 + 2*q^6 - 2*q^7 - 
2*q^9 - 2*q^10 + q^11 - 2*q^12 + 4*q^13 + 4*q^14 - q^15 - 4*q^16 - 2*q^17 + 
4*q^18 + 2*q^20 + 2*q^21 - 2*q^22 - q^23 - 4*q^25 - 8*q^26 + 5*q^27 - 4*q^28 + 
2*q^30 + 7*q^31 + 8*q^32 - q^33 + 4*q^34 - 2*q^35 - 4*q^36 + 3*q^37 - 4*q^39 - 
8*q^41 - 4*q^42 - 6*q^43 + 2*q^44 - 2*q^45 + 2*q^46 + 8*q^47 + 4*q^48 - 3*q^49 +
8*q^50 + 2*q^51 + 8*q^52 - 6*q^53 - 10*q^54 + q^55 + 5*q^59 - 2*q^60 + 12*q^61 -
14*q^62 + 4*q^63 - 8*q^64 + 4*q^65 + 2*q^66 - 7*q^67 - 4*q^68 + q^69 + 4*q^70 - 
3*q^71 + 4*q^73 - 6*q^74 + 4*q^75 - 2*q^77 + 8*q^78 - 10*q^79 - 4*q^80 + q^81 + 
16*q^82 - 6*q^83 + 4*q^84 - 2*q^85 + 12*q^86 + 15*q^89 + 4*q^90 - 8*q^91 - 
2*q^92 - 7*q^93 - 16*q^94 - 8*q^96 - 7*q^97 + 6*q^98 - 2*q^99 - 8*q^100 + 
2*q^101 - 4*q^102 - 16*q^103 + 2*q^105 + 12*q^106 + 18*q^107 + 10*q^108 + 
10*q^109 - 2*q^110 - 3*q^111 + 8*q^112 + 9*q^113 - q^115 - 8*q^117 - 10*q^118 + 
4*q^119 + O(q^121)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_11A1 := Curve(P_Q, [ PolynomialRing(RationalField(), 2) | ]);
