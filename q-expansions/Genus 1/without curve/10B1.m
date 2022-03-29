
    /****************************************************
    Loading this file in magma loads the objects fs_10B1 
    and X_10B1. fs_10B1 is a list of power series which form 
    a basis for the space of cusp forms. X_10B1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | -1, 1, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_10B1 := [Kq | q + q^2 - q^3 + q^4 - q^6 - 2*q^7 + q^8 - 2*q^9 -
3*q^11 - q^12 + 4*q^13 - 2*q^14 + q^16 + 3*q^17 - 2*q^18 + 5*q^19 + 2*q^21 - 
3*q^22 - 6*q^23 - q^24 + 4*q^26 + 5*q^27 - 2*q^28 + 2*q^31 + q^32 + 3*q^33 + 
3*q^34 - 2*q^36 - 2*q^37 + 5*q^38 - 4*q^39 - 3*q^41 + 2*q^42 + 4*q^43 - 3*q^44 -
6*q^46 - 12*q^47 - q^48 - 3*q^49 - 3*q^51 + 4*q^52 - 6*q^53 + 5*q^54 - 2*q^56 - 
5*q^57 + 2*q^61 + 2*q^62 + 4*q^63 + q^64 + 3*q^66 + 13*q^67 + 3*q^68 + 6*q^69 + 
12*q^71 - 2*q^72 - 11*q^73 - 2*q^74 + 5*q^76 + 6*q^77 - 4*q^78 - 10*q^79 + q^81 
- 3*q^82 + 9*q^83 + 2*q^84 + 4*q^86 - 3*q^88 + 15*q^89 - 8*q^91 - 6*q^92 - 
2*q^93 - 12*q^94 - q^96 - 2*q^97 - 3*q^98 + 6*q^99 - 18*q^101 - 3*q^102 + 
4*q^103 + 4*q^104 - 6*q^106 + 3*q^107 + 5*q^108 - 10*q^109 + 2*q^111 - 2*q^112 +
9*q^113 - 5*q^114 - 8*q^117 - 6*q^119 - 2*q^121 + 2*q^122 + 3*q^123 + 2*q^124 + 
4*q^126 - 2*q^127 + q^128 - 4*q^129 + 12*q^131 + 3*q^132 - 10*q^133 + 13*q^134 +
3*q^136 + 3*q^137 + 6*q^138 + 5*q^139 + O(q^140)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_10B1 := Curve(P_Q, [ PolynomialRing(ext<K|Polynomial(K, [-1, 1, 
1])> where K is RationalField(), 2) | ]);
