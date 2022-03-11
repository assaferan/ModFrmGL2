
    /****************************************************
    Loading this file in magma loads the objects fs_10C1 
    and X_10C1. fs_10C1 is a list of power series which form 
    a basis for the space of cusp forms. X_10C1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | -1, -1, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_10C1 := [Kq | zeta*q + (2*zeta - 2)*q^3 - 3*q^5 + (-2*zeta + 
2)*q^7 + zeta*q^9 + (-2*zeta + 2)*q^13 + 6*q^15 + (6*zeta - 6)*q^17 - 
4*zeta*q^19 - 4*zeta*q^21 + (-6*zeta + 6)*q^23 + 3*q^25 + (-4*zeta + 4)*q^27 + 
6*zeta*q^29 - 4*zeta*q^31 - 6*q^35 + (-2*zeta + 2)*q^37 - 4*zeta*q^39 + 
6*zeta*q^41 + (10*zeta - 10)*q^43 - 3*q^45 + (6*zeta - 6)*q^47 - 3*zeta*q^49 + 
12*zeta*q^51 + (6*zeta - 6)*q^53 + (-8*zeta + 8)*q^57 + 12*zeta*q^59 + 
2*zeta*q^61 + (-2*zeta + 2)*q^63 - 6*q^65 + (-2*zeta + 2)*q^67 - 12*zeta*q^69 - 
12*zeta*q^71 + (-2*zeta + 2)*q^73 - 6*q^75 + 8*zeta*q^79 - 11*zeta*q^81 + 
(-6*zeta + 6)*q^83 + 18*q^85 + (12*zeta - 12)*q^87 - 6*zeta*q^89 + 4*zeta*q^91 +
(-8*zeta + 8)*q^93 + 12*q^95 + (-2*zeta + 2)*q^97 + 6*zeta*q^101 + (-14*zeta + 
14)*q^103 + 12*q^105 + (6*zeta - 6)*q^107 + 2*zeta*q^109 - 4*zeta*q^111 + 
(6*zeta - 6)*q^113 - 18*q^115 + (-2*zeta + 2)*q^117 - 12*zeta*q^119 - 
11*zeta*q^121 + (12*zeta - 12)*q^123 - 3*q^125 + (-2*zeta + 2)*q^127 + 
20*zeta*q^129 + (8*zeta - 8)*q^133 - 12*q^135 + (-18*zeta + 18)*q^137 - 
4*zeta*q^139 + 12*zeta*q^141 - 18*q^145 + (-6*zeta + 6)*q^147 - 6*zeta*q^149 + 
20*zeta*q^151 + (6*zeta - 6)*q^153 + 12*q^155 + (22*zeta - 22)*q^157 + 
12*zeta*q^159 + 12*zeta*q^161 + (10*zeta - 10)*q^163 + (-18*zeta + 18)*q^167 - 
9*zeta*q^169 - 4*zeta*q^171 + (6*zeta - 6)*q^173 + 6*q^175 + (24*zeta - 
24)*q^177 - 12*zeta*q^179 - 10*zeta*q^181 + (4*zeta - 4)*q^183 - 6*q^185 + 
8*zeta*q^189 + O(q^190)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_10C1 := Curve(P_Q, [ PolynomialRing(ext<K|Polynomial(K, [-1, -1,
1])> where K is RationalField(), 2) | ]);
