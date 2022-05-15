
    /****************************************************
    Loading this file in magma loads the objects fs_10F1 
    and X_10F1. fs_10F1 is a list of power series which form 
    a basis for the space of cusp forms. X_10F1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | -1, 1, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_10F1 := [Kq | zeta*q + (-zeta - 1)*q^2 + (zeta + 1)*q^3 + 
zeta*q^4 - zeta*q^6 + (2*zeta + 2)*q^7 + (-zeta - 1)*q^8 - 2*zeta*q^9 - 
3*zeta*q^11 + (zeta + 1)*q^12 + (-4*zeta - 4)*q^13 - 2*zeta*q^14 + zeta*q^16 + 
(-3*zeta - 3)*q^17 + (2*zeta + 2)*q^18 + 5*zeta*q^19 + 2*zeta*q^21 + (3*zeta + 
3)*q^22 + (6*zeta + 6)*q^23 - zeta*q^24 + 4*zeta*q^26 + (-5*zeta - 5)*q^27 + 
(2*zeta + 2)*q^28 + 2*zeta*q^31 + (-zeta - 1)*q^32 + (-3*zeta - 3)*q^33 + 
3*zeta*q^34 - 2*zeta*q^36 + (2*zeta + 2)*q^37 + (-5*zeta - 5)*q^38 - 4*zeta*q^39
- 3*zeta*q^41 + (-2*zeta - 2)*q^42 + (-4*zeta - 4)*q^43 - 3*zeta*q^44 - 
6*zeta*q^46 + (12*zeta + 12)*q^47 + (zeta + 1)*q^48 - 3*zeta*q^49 - 3*zeta*q^51 
+ (-4*zeta - 4)*q^52 + (6*zeta + 6)*q^53 + 5*zeta*q^54 - 2*zeta*q^56 + (5*zeta +
5)*q^57 + 2*zeta*q^61 + (-2*zeta - 2)*q^62 + (-4*zeta - 4)*q^63 + zeta*q^64 + 
3*zeta*q^66 + (-13*zeta - 13)*q^67 + (-3*zeta - 3)*q^68 + 6*zeta*q^69 + 
12*zeta*q^71 + (2*zeta + 2)*q^72 + (11*zeta + 11)*q^73 - 2*zeta*q^74 + 
5*zeta*q^76 + (-6*zeta - 6)*q^77 + (4*zeta + 4)*q^78 - 10*zeta*q^79 + zeta*q^81 
+ (3*zeta + 3)*q^82 + (-9*zeta - 9)*q^83 + 2*zeta*q^84 + 4*zeta*q^86 + (3*zeta +
3)*q^88 + 15*zeta*q^89 - 8*zeta*q^91 + (6*zeta + 6)*q^92 + (2*zeta + 2)*q^93 - 
12*zeta*q^94 - zeta*q^96 + (2*zeta + 2)*q^97 + (3*zeta + 3)*q^98 + 6*zeta*q^99 -
18*zeta*q^101 + (3*zeta + 3)*q^102 + (-4*zeta - 4)*q^103 + 4*zeta*q^104 - 
6*zeta*q^106 + (-3*zeta - 3)*q^107 + (-5*zeta - 5)*q^108 - 10*zeta*q^109 + 
2*zeta*q^111 + (2*zeta + 2)*q^112 + (-9*zeta - 9)*q^113 - 5*zeta*q^114 + (8*zeta
+ 8)*q^117 - 6*zeta*q^119 - 2*zeta*q^121 + (-2*zeta - 2)*q^122 + (-3*zeta - 
3)*q^123 + 2*zeta*q^124 + 4*zeta*q^126 + (2*zeta + 2)*q^127 + (-zeta - 1)*q^128 
- 4*zeta*q^129 + 12*zeta*q^131 + (-3*zeta - 3)*q^132 + (10*zeta + 10)*q^133 + 
13*zeta*q^134 + 3*zeta*q^136 + (-3*zeta - 3)*q^137 + (-6*zeta - 6)*q^138 + 
5*zeta*q^139 + 12*zeta*q^141 + (-12*zeta - 12)*q^142 + (12*zeta + 12)*q^143 - 
2*zeta*q^144 - 11*zeta*q^146 + (-3*zeta - 3)*q^147 + (2*zeta + 2)*q^148 + 
2*zeta*q^151 + (-5*zeta - 5)*q^152 + (6*zeta + 6)*q^153 + 6*zeta*q^154 - 
4*zeta*q^156 + (2*zeta + 2)*q^157 + (10*zeta + 10)*q^158 + 6*zeta*q^159 + 
12*zeta*q^161 + (-zeta - 1)*q^162 + (11*zeta + 11)*q^163 - 3*zeta*q^164 + 
9*zeta*q^166 + (12*zeta + 12)*q^167 + (-2*zeta - 2)*q^168 + 3*zeta*q^169 - 
10*zeta*q^171 + (-4*zeta - 4)*q^172 + (-24*zeta - 24)*q^173 - 3*zeta*q^176 + 
(-15*zeta - 15)*q^178 - 15*zeta*q^179 + 2*zeta*q^181 + (8*zeta + 8)*q^182 + 
(2*zeta + 2)*q^183 - 6*zeta*q^184 - 2*zeta*q^186 + (9*zeta + 9)*q^187 + (12*zeta
+ 12)*q^188 - 10*zeta*q^189 - 18*zeta*q^191 + (zeta + 1)*q^192 + (-19*zeta - 
19)*q^193 - 2*zeta*q^194 - 3*zeta*q^196 + (-18*zeta - 18)*q^197 + (-6*zeta - 
6)*q^198 + 20*zeta*q^199 - 13*zeta*q^201 + (18*zeta + 18)*q^202 - 3*zeta*q^204 +
4*zeta*q^206 + (-12*zeta - 12)*q^207 + (-4*zeta - 4)*q^208 - 15*zeta*q^209 - 
13*zeta*q^211 + (6*zeta + 6)*q^212 + (12*zeta + 12)*q^213 + 3*zeta*q^214 + 
5*zeta*q^216 + (4*zeta + 4)*q^217 + (10*zeta + 10)*q^218 + 11*zeta*q^219 + 
12*zeta*q^221 + (-2*zeta - 2)*q^222 + (-4*zeta - 4)*q^223 - 2*zeta*q^224 + 
9*zeta*q^226 + (12*zeta + 12)*q^227 + (5*zeta + 5)*q^228 + 20*zeta*q^229 - 
6*zeta*q^231 + (6*zeta + 6)*q^233 - 8*zeta*q^234 + (-10*zeta - 10)*q^237 + 
(6*zeta + 6)*q^238 + 17*zeta*q^241 + (2*zeta + 2)*q^242 + (16*zeta + 16)*q^243 +
2*zeta*q^244 + 3*zeta*q^246 + (-20*zeta - 20)*q^247 + (-2*zeta - 2)*q^248 - 
9*zeta*q^249 + 27*zeta*q^251 + (-4*zeta - 4)*q^252 + (-18*zeta - 18)*q^253 - 
2*zeta*q^254 + zeta*q^256 + (-18*zeta - 18)*q^257 + (4*zeta + 4)*q^258 + 
4*zeta*q^259 + (-12*zeta - 12)*q^262 + (6*zeta + 6)*q^263 + 3*zeta*q^264 - 
10*zeta*q^266 + (15*zeta + 15)*q^267 + (-13*zeta - 13)*q^268 + 2*zeta*q^271 + 
(-3*zeta - 3)*q^272 + (-8*zeta - 8)*q^273 + 3*zeta*q^274 + 6*zeta*q^276 + 
(32*zeta + 32)*q^277 + (-5*zeta - 5)*q^278 - 4*zeta*q^279 + O(q^280)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_10F1 := Curve(P_Q, [ PolynomialRing(ext<K|Polynomial(K, [-1, 1, 
1])> where K is RationalField(), 2) | ]);
