
    /****************************************************
    Loading this file in magma loads the objects fs_11B1 
    and X_11B1. fs_11B1 is a list of power series which form 
    a basis for the space of cusp forms. X_11B1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | 1, 3, -3, -4, 1, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_11B1 := [Kq | (zeta^4 + 2*zeta^3 - 3*zeta^2 - 5*zeta + 1)*q + 
(zeta^4 + zeta^3 - 3*zeta^2 - zeta + 1)*q^2 + (-2*zeta^4 + 10*zeta^2 - 8)*q^3 + 
(zeta^2 - zeta - 2)*q^4 + (zeta^4 - zeta^3 - 4*zeta^2 + 3*zeta + 2)*q^5 + 
(-2*zeta^4 + 2*zeta^3 + 8*zeta^2 - 6*zeta - 4)*q^6 + (-2*zeta^2 + 2*zeta + 
4)*q^7 + (-3*zeta^4 + 15*zeta^2 - 12)*q^8 + (-zeta^4 - zeta^3 + 3*zeta^2 + zeta 
- 1)*q^9 + (-zeta^4 - 2*zeta^3 + 3*zeta^2 + 5*zeta - 1)*q^10 + (-2*zeta^4 - 
4*zeta^3 + 6*zeta^2 + 10*zeta - 2)*q^12 + (zeta^4 + zeta^3 - 3*zeta^2 - zeta + 
1)*q^13 + (2*zeta^4 - 10*zeta^2 + 8)*q^14 + (-2*zeta^2 + 2*zeta + 4)*q^15 + 
(-zeta^4 + zeta^3 + 4*zeta^2 - 3*zeta - 2)*q^16 + (5*zeta^4 - 5*zeta^3 - 
20*zeta^2 + 15*zeta + 10)*q^17 + (zeta^2 - zeta - 2)*q^18 + (6*zeta^4 - 
30*zeta^2 + 24)*q^19 + (zeta^4 + zeta^3 - 3*zeta^2 - zeta + 1)*q^20 + (4*zeta^4 
+ 8*zeta^3 - 12*zeta^2 - 20*zeta + 4)*q^21 + (2*zeta^4 + 4*zeta^3 - 6*zeta^2 - 
10*zeta + 2)*q^23 + (-6*zeta^4 - 6*zeta^3 + 18*zeta^2 + 6*zeta - 6)*q^24 + 
(4*zeta^4 - 20*zeta^2 + 16)*q^25 + (-zeta^2 + zeta + 2)*q^26 + (-4*zeta^4 + 
4*zeta^3 + 16*zeta^2 - 12*zeta - 8)*q^27 + (-2*zeta^4 + 2*zeta^3 + 8*zeta^2 - 
6*zeta - 4)*q^28 + (9*zeta^2 - 9*zeta - 18)*q^29 + (2*zeta^4 - 10*zeta^2 + 
8)*q^30 + (2*zeta^4 + 2*zeta^3 - 6*zeta^2 - 2*zeta + 2)*q^31 + (-5*zeta^4 - 
10*zeta^3 + 15*zeta^2 + 25*zeta - 5)*q^32 + (-5*zeta^4 - 10*zeta^3 + 15*zeta^2 +
25*zeta - 5)*q^34 + (-2*zeta^4 - 2*zeta^3 + 6*zeta^2 + 2*zeta - 2)*q^35 + 
(zeta^4 - 5*zeta^2 + 4)*q^36 + (3*zeta^2 - 3*zeta - 6)*q^37 + (6*zeta^4 - 
6*zeta^3 - 24*zeta^2 + 18*zeta + 12)*q^38 + (-2*zeta^4 + 2*zeta^3 + 8*zeta^2 - 
6*zeta - 4)*q^39 + (-3*zeta^2 + 3*zeta + 6)*q^40 + (-5*zeta^4 + 25*zeta^2 - 
20)*q^41 + (4*zeta^4 + 4*zeta^3 - 12*zeta^2 - 4*zeta + 4)*q^42 + (zeta^4 + 
2*zeta^3 - 3*zeta^2 - 5*zeta + 1)*q^45 + (2*zeta^4 + 2*zeta^3 - 6*zeta^2 - 
2*zeta + 2)*q^46 + (-2*zeta^4 + 10*zeta^2 - 8)*q^47 + (2*zeta^2 - 2*zeta - 
4)*q^48 + (-3*zeta^4 + 3*zeta^3 + 12*zeta^2 - 9*zeta - 6)*q^49 + (4*zeta^4 - 
4*zeta^3 - 16*zeta^2 + 12*zeta + 8)*q^50 + (-10*zeta^2 + 10*zeta + 20)*q^51 + 
(-zeta^4 + 5*zeta^2 - 4)*q^52 + (-9*zeta^4 - 9*zeta^3 + 27*zeta^2 + 9*zeta - 
9)*q^53 + (4*zeta^4 + 8*zeta^3 - 12*zeta^2 - 20*zeta + 4)*q^54 + (6*zeta^4 + 
12*zeta^3 - 18*zeta^2 - 30*zeta + 6)*q^56 + (12*zeta^4 + 12*zeta^3 - 36*zeta^2 -
12*zeta + 12)*q^57 + (-9*zeta^4 + 45*zeta^2 - 36)*q^58 + (-8*zeta^2 + 8*zeta + 
16)*q^59 + (-2*zeta^4 + 2*zeta^3 + 8*zeta^2 - 6*zeta - 4)*q^60 + (-6*zeta^4 + 
6*zeta^3 + 24*zeta^2 - 18*zeta - 12)*q^61 + (-2*zeta^2 + 2*zeta + 4)*q^62 + 
(-2*zeta^4 + 10*zeta^2 - 8)*q^63 + (-7*zeta^4 - 7*zeta^3 + 21*zeta^2 + 7*zeta - 
7)*q^64 + (-zeta^4 - 2*zeta^3 + 3*zeta^2 + 5*zeta - 1)*q^65 + (2*zeta^4 + 
4*zeta^3 - 6*zeta^2 - 10*zeta + 2)*q^67 + (5*zeta^4 + 5*zeta^3 - 15*zeta^2 - 
5*zeta + 5)*q^68 + (-4*zeta^4 + 20*zeta^2 - 16)*q^69 + (2*zeta^2 - 2*zeta - 
4)*q^70 + (12*zeta^4 - 12*zeta^3 - 48*zeta^2 + 36*zeta + 24)*q^71 + (3*zeta^4 - 
3*zeta^3 - 12*zeta^2 + 9*zeta + 6)*q^72 + (-2*zeta^2 + 2*zeta + 4)*q^73 + 
(-3*zeta^4 + 15*zeta^2 - 12)*q^74 + (8*zeta^4 + 8*zeta^3 - 24*zeta^2 - 8*zeta + 
8)*q^75 + (6*zeta^4 + 12*zeta^3 - 18*zeta^2 - 30*zeta + 6)*q^76 + (2*zeta^4 + 
4*zeta^3 - 6*zeta^2 - 10*zeta + 2)*q^78 + (-10*zeta^4 - 10*zeta^3 + 30*zeta^2 + 
10*zeta - 10)*q^79 + (zeta^4 - 5*zeta^2 + 4)*q^80 + (11*zeta^2 - 11*zeta - 
22)*q^81 + (-5*zeta^4 + 5*zeta^3 + 20*zeta^2 - 15*zeta - 10)*q^82 + (-6*zeta^4 +
6*zeta^3 + 24*zeta^2 - 18*zeta - 12)*q^83 + (4*zeta^2 - 4*zeta - 8)*q^84 + 
(-5*zeta^4 + 25*zeta^2 - 20)*q^85 + (-18*zeta^4 - 36*zeta^3 + 54*zeta^2 + 
90*zeta - 18)*q^87 + (-9*zeta^4 - 18*zeta^3 + 27*zeta^2 + 45*zeta - 9)*q^89 + 
(zeta^4 + zeta^3 - 3*zeta^2 - zeta + 1)*q^90 + (2*zeta^4 - 10*zeta^2 + 8)*q^91 +
(2*zeta^2 - 2*zeta - 4)*q^92 + (-4*zeta^4 + 4*zeta^3 + 16*zeta^2 - 12*zeta - 
8)*q^93 + (-2*zeta^4 + 2*zeta^3 + 8*zeta^2 - 6*zeta - 4)*q^94 + (6*zeta^2 - 
6*zeta - 12)*q^95 + (10*zeta^4 - 50*zeta^2 + 40)*q^96 + (13*zeta^4 + 13*zeta^3 -
39*zeta^2 - 13*zeta + 13)*q^97 + (3*zeta^4 + 6*zeta^3 - 9*zeta^2 - 15*zeta + 
3)*q^98 + (4*zeta^4 + 8*zeta^3 - 12*zeta^2 - 20*zeta + 4)*q^100 + (-10*zeta^4 - 
10*zeta^3 + 30*zeta^2 + 10*zeta - 10)*q^101 + (10*zeta^4 - 50*zeta^2 + 40)*q^102
+ (-8*zeta^2 + 8*zeta + 16)*q^103 + (-3*zeta^4 + 3*zeta^3 + 12*zeta^2 - 9*zeta -
6)*q^104 + (4*zeta^4 - 4*zeta^3 - 16*zeta^2 + 12*zeta + 8)*q^105 + (9*zeta^2 - 
9*zeta - 18)*q^106 + (6*zeta^4 - 30*zeta^2 + 24)*q^107 + (-4*zeta^4 - 4*zeta^3 +
12*zeta^2 + 4*zeta - 4)*q^108 + (11*zeta^4 + 22*zeta^3 - 33*zeta^2 - 55*zeta + 
11)*q^109 + (-6*zeta^4 - 12*zeta^3 + 18*zeta^2 + 30*zeta - 6)*q^111 + (2*zeta^4 
+ 2*zeta^3 - 6*zeta^2 - 2*zeta + 2)*q^112 + (9*zeta^4 - 45*zeta^2 + 36)*q^113 + 
(-12*zeta^2 + 12*zeta + 24)*q^114 + (2*zeta^4 - 2*zeta^3 - 8*zeta^2 + 6*zeta + 
4)*q^115 + (9*zeta^4 - 9*zeta^3 - 36*zeta^2 + 27*zeta + 18)*q^116 + (zeta^2 - 
zeta - 2)*q^117 + (8*zeta^4 - 40*zeta^2 + 32)*q^118 + (-10*zeta^4 - 10*zeta^3 + 
30*zeta^2 + 10*zeta - 10)*q^119 + (6*zeta^4 + 12*zeta^3 - 18*zeta^2 - 30*zeta + 
6)*q^120 + (6*zeta^4 + 12*zeta^3 - 18*zeta^2 - 30*zeta + 6)*q^122 + (-10*zeta^4 
- 10*zeta^3 + 30*zeta^2 + 10*zeta - 10)*q^123 + (-2*zeta^4 + 10*zeta^2 - 
8)*q^124 + (9*zeta^2 - 9*zeta - 18)*q^125 + (-2*zeta^4 + 2*zeta^3 + 8*zeta^2 - 
6*zeta - 4)*q^126 + (16*zeta^4 - 16*zeta^3 - 64*zeta^2 + 48*zeta + 32)*q^127 + 
(-3*zeta^2 + 3*zeta + 6)*q^128 + (-zeta^4 - zeta^3 + 3*zeta^2 + zeta - 1)*q^130 
+ (-12*zeta^4 - 24*zeta^3 + 36*zeta^2 + 60*zeta - 12)*q^133 + (2*zeta^4 + 
2*zeta^3 - 6*zeta^2 - 2*zeta + 2)*q^134 + (4*zeta^4 - 20*zeta^2 + 16)*q^135 + 
(-15*zeta^2 + 15*zeta + 30)*q^136 + (-10*zeta^4 + 10*zeta^3 + 40*zeta^2 - 
30*zeta - 20)*q^137 + (-4*zeta^4 + 4*zeta^3 + 16*zeta^2 - 12*zeta - 8)*q^138 + 
(-2*zeta^2 + 2*zeta + 4)*q^139 + (2*zeta^4 - 10*zeta^2 + 8)*q^140 + (-4*zeta^4 -
4*zeta^3 + 12*zeta^2 + 4*zeta - 4)*q^141 + (-12*zeta^4 - 24*zeta^3 + 36*zeta^2 +
60*zeta - 12)*q^142 + (-zeta^4 - 2*zeta^3 + 3*zeta^2 + 5*zeta - 1)*q^144 + 
(9*zeta^4 + 9*zeta^3 - 27*zeta^2 - 9*zeta + 9)*q^145 + (2*zeta^4 - 10*zeta^2 + 
8)*q^146 + (6*zeta^2 - 6*zeta - 12)*q^147 + (3*zeta^4 - 3*zeta^3 - 12*zeta^2 + 
9*zeta + 6)*q^148 + (-17*zeta^4 + 17*zeta^3 + 68*zeta^2 - 51*zeta - 34)*q^149 + 
(-8*zeta^2 + 8*zeta + 16)*q^150 + (-16*zeta^4 + 80*zeta^2 - 64)*q^151 + 
(18*zeta^4 + 18*zeta^3 - 54*zeta^2 - 18*zeta + 18)*q^152 + (5*zeta^4 + 10*zeta^3
- 15*zeta^2 - 25*zeta + 5)*q^153 + (-2*zeta^4 - 4*zeta^3 + 6*zeta^2 + 10*zeta - 
2)*q^155 + (-2*zeta^4 - 2*zeta^3 + 6*zeta^2 + 2*zeta - 2)*q^156 + (-2*zeta^4 + 
10*zeta^2 - 8)*q^157 + (10*zeta^2 - 10*zeta - 20)*q^158 + (18*zeta^4 - 18*zeta^3
- 72*zeta^2 + 54*zeta + 36)*q^159 + (-5*zeta^4 + 5*zeta^3 + 20*zeta^2 - 15*zeta 
- 10)*q^160 + (-4*zeta^2 + 4*zeta + 8)*q^161 + (-11*zeta^4 + 55*zeta^2 - 
44)*q^162 + (2*zeta^4 + 2*zeta^3 - 6*zeta^2 - 2*zeta + 2)*q^163 + (-5*zeta^4 - 
10*zeta^3 + 15*zeta^2 + 25*zeta - 5)*q^164 + (6*zeta^4 + 12*zeta^3 - 18*zeta^2 -
30*zeta + 6)*q^166 + (12*zeta^4 + 12*zeta^3 - 36*zeta^2 - 12*zeta + 12)*q^167 + 
(-12*zeta^4 + 60*zeta^2 - 48)*q^168 + (12*zeta^2 - 12*zeta - 24)*q^169 + 
(-5*zeta^4 + 5*zeta^3 + 20*zeta^2 - 15*zeta - 10)*q^170 + (-6*zeta^4 + 6*zeta^3 
+ 24*zeta^2 - 18*zeta - 12)*q^171 + (6*zeta^4 - 30*zeta^2 + 24)*q^173 + 
(-18*zeta^4 - 18*zeta^3 + 54*zeta^2 + 18*zeta - 18)*q^174 + (-8*zeta^4 - 
16*zeta^3 + 24*zeta^2 + 40*zeta - 8)*q^175 + (16*zeta^4 + 32*zeta^3 - 48*zeta^2 
- 80*zeta + 16)*q^177 + (-9*zeta^4 - 9*zeta^3 + 27*zeta^2 + 9*zeta - 9)*q^178 + 
(-24*zeta^4 + 120*zeta^2 - 96)*q^179 + (zeta^2 - zeta - 2)*q^180 + (zeta^4 - 
zeta^3 - 4*zeta^2 + 3*zeta + 2)*q^181 + (2*zeta^4 - 2*zeta^3 - 8*zeta^2 + 6*zeta
+ 4)*q^182 + (12*zeta^2 - 12*zeta - 24)*q^183 + (-6*zeta^4 + 30*zeta^2 - 
24)*q^184 + (3*zeta^4 + 3*zeta^3 - 9*zeta^2 - 3*zeta + 3)*q^185 + (4*zeta^4 + 
8*zeta^3 - 12*zeta^2 - 20*zeta + 4)*q^186 + (-2*zeta^4 - 4*zeta^3 + 6*zeta^2 + 
10*zeta - 2)*q^188 + (8*zeta^4 + 8*zeta^3 - 24*zeta^2 - 8*zeta + 8)*q^189 + 
(-6*zeta^4 + 30*zeta^2 - 24)*q^190 + (-8*zeta^2 + 8*zeta + 16)*q^191 + 
(14*zeta^4 - 14*zeta^3 - 56*zeta^2 + 42*zeta + 28)*q^192 + (5*zeta^4 - 5*zeta^3 
- 20*zeta^2 + 15*zeta + 10)*q^193 + (-13*zeta^2 + 13*zeta + 26)*q^194 + 
(2*zeta^4 - 10*zeta^2 + 8)*q^195 + (-3*zeta^4 - 3*zeta^3 + 9*zeta^2 + 3*zeta - 
3)*q^196 + (11*zeta^4 + 22*zeta^3 - 33*zeta^2 - 55*zeta + 11)*q^197 + (24*zeta^4
+ 48*zeta^3 - 72*zeta^2 - 120*zeta + 24)*q^199 + (12*zeta^4 + 12*zeta^3 - 
36*zeta^2 - 12*zeta + 12)*q^200 + (-4*zeta^4 + 20*zeta^2 - 16)*q^201 + 
(10*zeta^2 - 10*zeta - 20)*q^202 + (-18*zeta^4 + 18*zeta^3 + 72*zeta^2 - 54*zeta
- 36)*q^203 + (-10*zeta^4 + 10*zeta^3 + 40*zeta^2 - 30*zeta - 20)*q^204 + 
(-5*zeta^2 + 5*zeta + 10)*q^205 + (8*zeta^4 - 40*zeta^2 + 32)*q^206 + (-2*zeta^4
- 2*zeta^3 + 6*zeta^2 + 2*zeta - 2)*q^207 + (zeta^4 + 2*zeta^3 - 3*zeta^2 - 
5*zeta + 1)*q^208 + (-4*zeta^4 - 8*zeta^3 + 12*zeta^2 + 20*zeta - 4)*q^210 + 
(12*zeta^4 + 12*zeta^3 - 36*zeta^2 - 12*zeta + 12)*q^211 + (9*zeta^4 - 45*zeta^2
+ 36)*q^212 + (-24*zeta^2 + 24*zeta + 48)*q^213 + (6*zeta^4 - 6*zeta^3 - 
24*zeta^2 + 18*zeta + 12)*q^214 + (12*zeta^2 - 12*zeta - 24)*q^216 + (4*zeta^4 -
20*zeta^2 + 16)*q^217 + (11*zeta^4 + 11*zeta^3 - 33*zeta^2 - 11*zeta + 11)*q^218
+ (4*zeta^4 + 8*zeta^3 - 12*zeta^2 - 20*zeta + 4)*q^219 + (-5*zeta^4 - 10*zeta^3
+ 15*zeta^2 + 25*zeta - 5)*q^221 + (-6*zeta^4 - 6*zeta^3 + 18*zeta^2 + 6*zeta - 
6)*q^222 + (20*zeta^4 - 100*zeta^2 + 80)*q^223 + (10*zeta^2 - 10*zeta - 
20)*q^224 + (-4*zeta^4 + 4*zeta^3 + 16*zeta^2 - 12*zeta - 8)*q^225 + (9*zeta^4 -
9*zeta^3 - 36*zeta^2 + 27*zeta + 18)*q^226 + (-24*zeta^2 + 24*zeta + 48)*q^227 +
(-12*zeta^4 + 60*zeta^2 - 48)*q^228 + (-9*zeta^4 - 9*zeta^3 + 27*zeta^2 + 9*zeta
- 9)*q^229 + (-2*zeta^4 - 4*zeta^3 + 6*zeta^2 + 10*zeta - 2)*q^230 + (-27*zeta^4
- 54*zeta^3 + 81*zeta^2 + 135*zeta - 27)*q^232 + (-21*zeta^4 - 21*zeta^3 + 
63*zeta^2 + 21*zeta - 21)*q^233 + (-zeta^4 + 5*zeta^2 - 4)*q^234 + (-2*zeta^2 + 
2*zeta + 4)*q^235 + (-8*zeta^4 + 8*zeta^3 + 32*zeta^2 - 24*zeta - 16)*q^236 + 
(20*zeta^4 - 20*zeta^3 - 80*zeta^2 + 60*zeta + 40)*q^237 + (10*zeta^2 - 10*zeta 
- 20)*q^238 + (6*zeta^4 - 30*zeta^2 + 24)*q^239 + (2*zeta^4 + 2*zeta^3 - 
6*zeta^2 - 2*zeta + 2)*q^240 + (-22*zeta^4 - 44*zeta^3 + 66*zeta^2 + 110*zeta - 
22)*q^241 + (-10*zeta^4 - 20*zeta^3 + 30*zeta^2 + 50*zeta - 10)*q^243 + 
(-6*zeta^4 - 6*zeta^3 + 18*zeta^2 + 6*zeta - 6)*q^244 + (3*zeta^4 - 15*zeta^2 + 
12)*q^245 + (10*zeta^2 - 10*zeta - 20)*q^246 + (6*zeta^4 - 6*zeta^3 - 24*zeta^2 
+ 18*zeta + 12)*q^247 + (-6*zeta^4 + 6*zeta^3 + 24*zeta^2 - 18*zeta - 12)*q^248 
+ (12*zeta^2 - 12*zeta - 24)*q^249 + (-9*zeta^4 + 45*zeta^2 - 36)*q^250 + 
(2*zeta^4 + 2*zeta^3 - 6*zeta^2 - 2*zeta + 2)*q^251 + (-2*zeta^4 - 4*zeta^3 + 
6*zeta^2 + 10*zeta - 2)*q^252 + (-16*zeta^4 - 32*zeta^3 + 48*zeta^2 + 80*zeta - 
16)*q^254 + (-10*zeta^4 - 10*zeta^3 + 30*zeta^2 + 10*zeta - 10)*q^255 + 
(17*zeta^4 - 85*zeta^2 + 68)*q^256 + (-19*zeta^2 + 19*zeta + 38)*q^257 + 
(-6*zeta^4 + 6*zeta^3 + 24*zeta^2 - 18*zeta - 12)*q^259 + (-zeta^2 + zeta + 
2)*q^260 + (9*zeta^4 - 45*zeta^2 + 36)*q^261 + (22*zeta^4 + 44*zeta^3 - 
66*zeta^2 - 110*zeta + 22)*q^263 + (9*zeta^4 + 18*zeta^3 - 27*zeta^2 - 45*zeta +
9)*q^265 + (-12*zeta^4 - 12*zeta^3 + 36*zeta^2 + 12*zeta - 12)*q^266 + 
(18*zeta^4 - 90*zeta^2 + 72)*q^267 + (2*zeta^2 - 2*zeta - 4)*q^268 + (zeta^4 - 
zeta^3 - 4*zeta^2 + 3*zeta + 2)*q^269 + (4*zeta^4 - 4*zeta^3 - 16*zeta^2 + 
12*zeta + 8)*q^270 + (20*zeta^2 - 20*zeta - 40)*q^271 + (5*zeta^4 - 25*zeta^2 + 
20)*q^272 + (4*zeta^4 + 4*zeta^3 - 12*zeta^2 - 4*zeta + 4)*q^273 + (10*zeta^4 + 
20*zeta^3 - 30*zeta^2 - 50*zeta + 10)*q^274 + (-4*zeta^4 - 8*zeta^3 + 12*zeta^2 
+ 20*zeta - 4)*q^276 + (zeta^4 + zeta^3 - 3*zeta^2 - zeta + 1)*q^277 + (2*zeta^4
- 10*zeta^2 + 8)*q^278 + (2*zeta^2 - 2*zeta - 4)*q^279 + (6*zeta^4 - 6*zeta^3 - 
24*zeta^2 + 18*zeta + 12)*q^280 + (-6*zeta^4 + 6*zeta^3 + 24*zeta^2 - 18*zeta - 
12)*q^281 + (4*zeta^2 - 4*zeta - 8)*q^282 + (28*zeta^4 - 140*zeta^2 + 112)*q^283
+ (12*zeta^4 + 12*zeta^3 - 36*zeta^2 - 12*zeta + 12)*q^284 + (-12*zeta^4 - 
24*zeta^3 + 36*zeta^2 + 60*zeta - 12)*q^285 + (10*zeta^4 + 20*zeta^3 - 30*zeta^2
- 50*zeta + 10)*q^287 + (5*zeta^4 + 5*zeta^3 - 15*zeta^2 - 5*zeta + 5)*q^288 + 
(-8*zeta^4 + 40*zeta^2 - 32)*q^289 + (-9*zeta^2 + 9*zeta + 18)*q^290 + 
(-26*zeta^4 + 26*zeta^3 + 104*zeta^2 - 78*zeta - 52)*q^291 + (-2*zeta^4 + 
2*zeta^3 + 8*zeta^2 - 6*zeta - 4)*q^292 + (9*zeta^2 - 9*zeta - 18)*q^293 + 
(-6*zeta^4 + 30*zeta^2 - 24)*q^294 + (-8*zeta^4 - 8*zeta^3 + 24*zeta^2 + 8*zeta 
- 8)*q^295 + (-9*zeta^4 - 18*zeta^3 + 27*zeta^2 + 45*zeta - 9)*q^296 + 
(17*zeta^4 + 34*zeta^3 - 51*zeta^2 - 85*zeta + 17)*q^298 + (2*zeta^4 + 2*zeta^3 
- 6*zeta^2 - 2*zeta + 2)*q^299 + (-8*zeta^4 + 40*zeta^2 - 32)*q^300 + 
(-16*zeta^4 + 16*zeta^3 + 64*zeta^2 - 48*zeta - 32)*q^302 + (20*zeta^4 - 
20*zeta^3 - 80*zeta^2 + 60*zeta + 40)*q^303 + (-6*zeta^2 + 6*zeta + 12)*q^304 + 
(6*zeta^4 - 30*zeta^2 + 24)*q^305 + (5*zeta^4 + 5*zeta^3 - 15*zeta^2 - 5*zeta + 
5)*q^306 + (22*zeta^4 + 44*zeta^3 - 66*zeta^2 - 110*zeta + 22)*q^307 + 
(16*zeta^4 + 32*zeta^3 - 48*zeta^2 - 80*zeta + 16)*q^309 + (-2*zeta^4 - 2*zeta^3
+ 6*zeta^2 + 2*zeta - 2)*q^310 + (-24*zeta^4 + 120*zeta^2 - 96)*q^311 + 
(6*zeta^2 - 6*zeta - 12)*q^312 + (23*zeta^4 - 23*zeta^3 - 92*zeta^2 + 69*zeta + 
46)*q^313 + (-2*zeta^4 + 2*zeta^3 + 8*zeta^2 - 6*zeta - 4)*q^314 + (-2*zeta^2 + 
2*zeta + 4)*q^315 + (10*zeta^4 - 50*zeta^2 + 40)*q^316 + (2*zeta^4 + 2*zeta^3 - 
6*zeta^2 - 2*zeta + 2)*q^317 + (-18*zeta^4 - 36*zeta^3 + 54*zeta^2 + 90*zeta - 
18)*q^318 + (7*zeta^4 + 14*zeta^3 - 21*zeta^2 - 35*zeta + 7)*q^320 + (12*zeta^4 
+ 12*zeta^3 - 36*zeta^2 - 12*zeta + 12)*q^321 + (4*zeta^4 - 20*zeta^2 + 
16)*q^322 + (30*zeta^2 - 30*zeta - 60)*q^323 + (11*zeta^4 - 11*zeta^3 - 
44*zeta^2 + 33*zeta + 22)*q^324 + (4*zeta^4 - 4*zeta^3 - 16*zeta^2 + 12*zeta + 
8)*q^325 + (-2*zeta^2 + 2*zeta + 4)*q^326 + (-22*zeta^4 + 110*zeta^2 - 88)*q^327
+ (-15*zeta^4 - 15*zeta^3 + 45*zeta^2 + 15*zeta - 15)*q^328 + (4*zeta^4 + 
8*zeta^3 - 12*zeta^2 - 20*zeta + 4)*q^329 + (-20*zeta^4 - 40*zeta^3 + 60*zeta^2 
+ 100*zeta - 20)*q^331 + (-6*zeta^4 - 6*zeta^3 + 18*zeta^2 + 6*zeta - 6)*q^332 +
(3*zeta^4 - 15*zeta^2 + 12)*q^333 + (-12*zeta^2 + 12*zeta + 24)*q^334 + 
(2*zeta^4 - 2*zeta^3 - 8*zeta^2 + 6*zeta + 4)*q^335 + (-4*zeta^4 + 4*zeta^3 + 
16*zeta^2 - 12*zeta - 8)*q^336 + (-13*zeta^2 + 13*zeta + 26)*q^337 + (-12*zeta^4
+ 60*zeta^2 - 48)*q^338 + (18*zeta^4 + 18*zeta^3 - 54*zeta^2 - 18*zeta + 
18)*q^339 + (-5*zeta^4 - 10*zeta^3 + 15*zeta^2 + 25*zeta - 5)*q^340 + (6*zeta^4 
+ 12*zeta^3 - 18*zeta^2 - 30*zeta + 6)*q^342 + (20*zeta^4 + 20*zeta^3 - 
60*zeta^2 - 20*zeta + 20)*q^343 + (-4*zeta^2 + 4*zeta + 8)*q^345 + (6*zeta^4 - 
6*zeta^3 - 24*zeta^2 + 18*zeta + 12)*q^346 + (-28*zeta^4 + 28*zeta^3 + 
112*zeta^2 - 84*zeta - 56)*q^347 + (-18*zeta^2 + 18*zeta + 36)*q^348 + 
(-27*zeta^4 + 135*zeta^2 - 108)*q^349 + (-8*zeta^4 - 8*zeta^3 + 24*zeta^2 + 
8*zeta - 8)*q^350 + (4*zeta^4 + 8*zeta^3 - 12*zeta^2 - 20*zeta + 4)*q^351 + 
(-9*zeta^4 - 18*zeta^3 + 27*zeta^2 + 45*zeta - 9)*q^353 + (16*zeta^4 + 16*zeta^3
- 48*zeta^2 - 16*zeta + 16)*q^354 + (-12*zeta^4 + 60*zeta^2 - 48)*q^355 + 
(-9*zeta^2 + 9*zeta + 18)*q^356 + (20*zeta^4 - 20*zeta^3 - 80*zeta^2 + 60*zeta +
40)*q^357 + (-24*zeta^4 + 24*zeta^3 + 96*zeta^2 - 72*zeta - 48)*q^358 + 
(-2*zeta^2 + 2*zeta + 4)*q^359 + (-3*zeta^4 + 15*zeta^2 - 12)*q^360 + 
(-17*zeta^4 - 17*zeta^3 + 51*zeta^2 + 17*zeta - 17)*q^361 + (-zeta^4 - 2*zeta^3 
+ 3*zeta^2 + 5*zeta - 1)*q^362 + (2*zeta^4 + 4*zeta^3 - 6*zeta^2 - 10*zeta + 
2)*q^364 + (-2*zeta^4 - 2*zeta^3 + 6*zeta^2 + 2*zeta - 2)*q^365 + (-12*zeta^4 + 
60*zeta^2 - 48)*q^366 + (14*zeta^2 - 14*zeta - 28)*q^367 + (-2*zeta^4 + 2*zeta^3
+ 8*zeta^2 - 6*zeta - 4)*q^368 + (5*zeta^4 - 5*zeta^3 - 20*zeta^2 + 15*zeta + 
10)*q^369 + (-3*zeta^2 + 3*zeta + 6)*q^370 + (-18*zeta^4 + 90*zeta^2 - 72)*q^371
+ (-4*zeta^4 - 4*zeta^3 + 12*zeta^2 + 4*zeta - 4)*q^372 + (-22*zeta^4 - 
44*zeta^3 + 66*zeta^2 + 110*zeta - 22)*q^373 + (-18*zeta^4 - 36*zeta^3 + 
54*zeta^2 + 90*zeta - 18)*q^375 + (-6*zeta^4 - 6*zeta^3 + 18*zeta^2 + 6*zeta - 
6)*q^376 + (-9*zeta^4 + 45*zeta^2 - 36)*q^377 + (-8*zeta^2 + 8*zeta + 16)*q^378 
+ (-32*zeta^4 + 32*zeta^3 + 128*zeta^2 - 96*zeta - 64)*q^379 + (6*zeta^4 - 
6*zeta^3 - 24*zeta^2 + 18*zeta + 12)*q^380 + (-32*zeta^2 + 32*zeta + 64)*q^381 +
(8*zeta^4 - 40*zeta^2 + 32)*q^382 + (-20*zeta^4 - 20*zeta^3 + 60*zeta^2 + 
20*zeta - 20)*q^383 + (6*zeta^4 + 12*zeta^3 - 18*zeta^2 - 30*zeta + 6)*q^384 + 
(-5*zeta^4 - 10*zeta^3 + 15*zeta^2 + 25*zeta - 5)*q^386 + (-13*zeta^4 + 
65*zeta^2 - 52)*q^388 + (3*zeta^2 - 3*zeta - 6)*q^389 + (2*zeta^4 - 2*zeta^3 - 
8*zeta^2 + 6*zeta + 4)*q^390 + (10*zeta^4 - 10*zeta^3 - 40*zeta^2 + 30*zeta + 
20)*q^391 + (9*zeta^2 - 9*zeta - 18)*q^392 + (11*zeta^4 + 11*zeta^3 - 33*zeta^2 
- 11*zeta + 11)*q^394 + (10*zeta^4 + 20*zeta^3 - 30*zeta^2 - 50*zeta + 10)*q^395
+ (13*zeta^4 + 26*zeta^3 - 39*zeta^2 - 65*zeta + 13)*q^397 + (24*zeta^4 + 
24*zeta^3 - 72*zeta^2 - 24*zeta + 24)*q^398 + (24*zeta^4 - 120*zeta^2 + 
96)*q^399 + (-4*zeta^2 + 4*zeta + 8)*q^400 + (23*zeta^4 - 23*zeta^3 - 92*zeta^2 
+ 69*zeta + 46)*q^401 + (-4*zeta^4 + 4*zeta^3 + 16*zeta^2 - 12*zeta - 8)*q^402 +
(-2*zeta^2 + 2*zeta + 4)*q^403 + (10*zeta^4 - 50*zeta^2 + 40)*q^404 + (11*zeta^4
+ 11*zeta^3 - 33*zeta^2 - 11*zeta + 11)*q^405 + (18*zeta^4 + 36*zeta^3 - 
54*zeta^2 - 90*zeta + 18)*q^406 + (30*zeta^4 + 60*zeta^3 - 90*zeta^2 - 150*zeta 
+ 30)*q^408 + (-21*zeta^4 - 21*zeta^3 + 63*zeta^2 + 21*zeta - 21)*q^409 + 
(5*zeta^4 - 25*zeta^2 + 20)*q^410 + (20*zeta^2 - 20*zeta - 40)*q^411 + 
(-8*zeta^4 + 8*zeta^3 + 32*zeta^2 - 24*zeta - 16)*q^412 + (16*zeta^4 - 16*zeta^3
- 64*zeta^2 + 48*zeta + 32)*q^413 + (2*zeta^2 - 2*zeta - 4)*q^414 + (6*zeta^4 - 
30*zeta^2 + 24)*q^415 + (-5*zeta^4 - 5*zeta^3 + 15*zeta^2 + 5*zeta - 5)*q^416 + 
(4*zeta^4 + 8*zeta^3 - 12*zeta^2 - 20*zeta + 4)*q^417 + (2*zeta^4 + 4*zeta^3 - 
6*zeta^2 - 10*zeta + 2)*q^419 + (4*zeta^4 + 4*zeta^3 - 12*zeta^2 - 4*zeta + 
4)*q^420 + (-13*zeta^4 + 65*zeta^2 - 52)*q^421 + (-12*zeta^2 + 12*zeta + 
24)*q^422 + (2*zeta^4 - 2*zeta^3 - 8*zeta^2 + 6*zeta + 4)*q^423 + (27*zeta^4 - 
27*zeta^3 - 108*zeta^2 + 81*zeta + 54)*q^424 + (20*zeta^2 - 20*zeta - 40)*q^425 
+ (24*zeta^4 - 120*zeta^2 + 96)*q^426 + (12*zeta^4 + 12*zeta^3 - 36*zeta^2 - 
12*zeta + 12)*q^427 + (6*zeta^4 + 12*zeta^3 - 18*zeta^2 - 30*zeta + 6)*q^428 + 
(12*zeta^4 + 12*zeta^3 - 36*zeta^2 - 12*zeta + 12)*q^431 + (-4*zeta^4 + 
20*zeta^2 - 16)*q^432 + (-19*zeta^2 + 19*zeta + 38)*q^433 + (4*zeta^4 - 4*zeta^3
- 16*zeta^2 + 12*zeta + 8)*q^434 + (-18*zeta^4 + 18*zeta^3 + 72*zeta^2 - 54*zeta
- 36)*q^435 + (11*zeta^2 - 11*zeta - 22)*q^436 + (12*zeta^4 - 60*zeta^2 + 
48)*q^437 + (4*zeta^4 + 4*zeta^3 - 12*zeta^2 - 4*zeta + 4)*q^438 + (-22*zeta^4 -
44*zeta^3 + 66*zeta^2 + 110*zeta - 22)*q^439 + (-3*zeta^4 - 6*zeta^3 + 9*zeta^2 
+ 15*zeta - 3)*q^441 + (-5*zeta^4 - 5*zeta^3 + 15*zeta^2 + 5*zeta - 5)*q^442 + 
(20*zeta^4 - 100*zeta^2 + 80)*q^443 + (-6*zeta^2 + 6*zeta + 12)*q^444 + 
(-9*zeta^4 + 9*zeta^3 + 36*zeta^2 - 27*zeta - 18)*q^445 + (20*zeta^4 - 20*zeta^3
- 80*zeta^2 + 60*zeta + 40)*q^446 + (34*zeta^2 - 34*zeta - 68)*q^447 + 
(-14*zeta^4 + 70*zeta^2 - 56)*q^448 + (13*zeta^4 + 13*zeta^3 - 39*zeta^2 - 
13*zeta + 13)*q^449 + (4*zeta^4 + 8*zeta^3 - 12*zeta^2 - 20*zeta + 4)*q^450 + 
(9*zeta^4 + 18*zeta^3 - 27*zeta^2 - 45*zeta + 9)*q^452 + (-32*zeta^4 - 32*zeta^3
+ 96*zeta^2 + 32*zeta - 32)*q^453 + (24*zeta^4 - 120*zeta^2 + 96)*q^454 + 
(2*zeta^2 - 2*zeta - 4)*q^455 + (-36*zeta^4 + 36*zeta^3 + 144*zeta^2 - 108*zeta 
- 72)*q^456 + (-39*zeta^4 + 39*zeta^3 + 156*zeta^2 - 117*zeta - 78)*q^457 + 
(9*zeta^2 - 9*zeta - 18)*q^458 + (20*zeta^4 - 100*zeta^2 + 80)*q^459 + (2*zeta^4
+ 2*zeta^3 - 6*zeta^2 - 2*zeta + 2)*q^460 + (-33*zeta^4 - 66*zeta^3 + 99*zeta^2 
+ 165*zeta - 33)*q^461 + (-20*zeta^4 - 40*zeta^3 + 60*zeta^2 + 100*zeta - 
20)*q^463 + (-9*zeta^4 - 9*zeta^3 + 27*zeta^2 + 9*zeta - 9)*q^464 + (4*zeta^4 - 
20*zeta^2 + 16)*q^465 + (21*zeta^2 - 21*zeta - 42)*q^466 + (12*zeta^4 - 
12*zeta^3 - 48*zeta^2 + 36*zeta + 24)*q^467 + (zeta^4 - zeta^3 - 4*zeta^2 + 
3*zeta + 2)*q^468 + (-4*zeta^2 + 4*zeta + 8)*q^469 + (2*zeta^4 - 10*zeta^2 + 
8)*q^470 + (-4*zeta^4 - 4*zeta^3 + 12*zeta^2 + 4*zeta - 4)*q^471 + (24*zeta^4 + 
48*zeta^3 - 72*zeta^2 - 120*zeta + 24)*q^472 + (-20*zeta^4 - 40*zeta^3 + 
60*zeta^2 + 100*zeta - 20)*q^474 + (-24*zeta^4 - 24*zeta^3 + 72*zeta^2 + 24*zeta
- 24)*q^475 + (10*zeta^4 - 50*zeta^2 + 40)*q^476 + (-9*zeta^2 + 9*zeta + 
18)*q^477 + (6*zeta^4 - 6*zeta^3 - 24*zeta^2 + 18*zeta + 12)*q^478 + (16*zeta^4 
- 16*zeta^3 - 64*zeta^2 + 48*zeta + 32)*q^479 + (10*zeta^2 - 10*zeta - 20)*q^480
+ (-3*zeta^4 + 15*zeta^2 - 12)*q^481 + (-22*zeta^4 - 22*zeta^3 + 66*zeta^2 + 
22*zeta - 22)*q^482 + (8*zeta^4 + 16*zeta^3 - 24*zeta^2 - 40*zeta + 8)*q^483 + 
(-13*zeta^4 - 26*zeta^3 + 39*zeta^2 + 65*zeta - 13)*q^485 + (-10*zeta^4 - 
10*zeta^3 + 30*zeta^2 + 10*zeta - 10)*q^486 + (-2*zeta^4 + 10*zeta^2 - 8)*q^487 
+ (18*zeta^2 - 18*zeta - 36)*q^488 + (-4*zeta^4 + 4*zeta^3 + 16*zeta^2 - 12*zeta
- 8)*q^489 + (3*zeta^4 - 3*zeta^3 - 12*zeta^2 + 9*zeta + 6)*q^490 + (-2*zeta^2 +
2*zeta + 4)*q^491 + (10*zeta^4 - 50*zeta^2 + 40)*q^492 + (45*zeta^4 + 45*zeta^3 
- 135*zeta^2 - 45*zeta + 45)*q^493 + (-6*zeta^4 - 12*zeta^3 + 18*zeta^2 + 
30*zeta - 6)*q^494 + (2*zeta^4 + 4*zeta^3 - 6*zeta^2 - 10*zeta + 2)*q^496 + 
(-24*zeta^4 - 24*zeta^3 + 72*zeta^2 + 24*zeta - 24)*q^497 + (-12*zeta^4 + 
60*zeta^2 - 48)*q^498 + (-8*zeta^2 + 8*zeta + 16)*q^499 + (9*zeta^4 - 9*zeta^3 -
36*zeta^2 + 27*zeta + 18)*q^500 + (-24*zeta^4 + 24*zeta^3 + 96*zeta^2 - 72*zeta 
- 48)*q^501 + (-2*zeta^2 + 2*zeta + 4)*q^502 + (-38*zeta^4 + 190*zeta^2 - 
152)*q^503 + (-6*zeta^4 - 6*zeta^3 + 18*zeta^2 + 6*zeta - 6)*q^504 + (10*zeta^4 
+ 20*zeta^3 - 30*zeta^2 - 50*zeta + 10)*q^505 + (-24*zeta^4 - 48*zeta^3 + 
72*zeta^2 + 120*zeta - 24)*q^507 + (16*zeta^4 + 16*zeta^3 - 48*zeta^2 - 16*zeta 
+ 16)*q^508 + (42*zeta^4 - 210*zeta^2 + 168)*q^509 + (10*zeta^2 - 10*zeta - 
20)*q^510 + (4*zeta^4 - 4*zeta^3 - 16*zeta^2 + 12*zeta + 8)*q^511 + (11*zeta^4 -
11*zeta^3 - 44*zeta^2 + 33*zeta + 22)*q^512 + (-24*zeta^2 + 24*zeta + 48)*q^513 
+ (19*zeta^4 - 95*zeta^2 + 76)*q^514 + (-8*zeta^4 - 8*zeta^3 + 24*zeta^2 + 
8*zeta - 8)*q^515 + (6*zeta^4 + 12*zeta^3 - 18*zeta^2 - 30*zeta + 6)*q^518 + 
(12*zeta^4 + 12*zeta^3 - 36*zeta^2 - 12*zeta + 12)*q^519 + (3*zeta^4 - 15*zeta^2
+ 12)*q^520 + (-30*zeta^2 + 30*zeta + 60)*q^521 + (9*zeta^4 - 9*zeta^3 - 
36*zeta^2 + 27*zeta + 18)*q^522 + (16*zeta^4 - 16*zeta^3 - 64*zeta^2 + 48*zeta +
32)*q^523 + (16*zeta^4 - 80*zeta^2 + 64)*q^525 + (22*zeta^4 + 22*zeta^3 - 
66*zeta^2 - 22*zeta + 22)*q^526 + (-10*zeta^4 - 20*zeta^3 + 30*zeta^2 + 50*zeta 
- 10)*q^527 + (-19*zeta^4 - 38*zeta^3 + 57*zeta^2 + 95*zeta - 19)*q^529 + 
(9*zeta^4 + 9*zeta^3 - 27*zeta^2 - 9*zeta + 9)*q^530 + (-8*zeta^4 + 40*zeta^2 - 
32)*q^531 + (-12*zeta^2 + 12*zeta + 24)*q^532 + (-5*zeta^4 + 5*zeta^3 + 
20*zeta^2 - 15*zeta - 10)*q^533 + (18*zeta^4 - 18*zeta^3 - 72*zeta^2 + 54*zeta +
36)*q^534 + (6*zeta^2 - 6*zeta - 12)*q^535 + (-6*zeta^4 + 30*zeta^2 - 24)*q^536 
+ (-48*zeta^4 - 48*zeta^3 + 144*zeta^2 + 48*zeta - 48)*q^537 + (-zeta^4 - 
2*zeta^3 + 3*zeta^2 + 5*zeta - 1)*q^538 + (4*zeta^4 + 8*zeta^3 - 12*zeta^2 - 
20*zeta + 4)*q^540 + (34*zeta^4 + 34*zeta^3 - 102*zeta^2 - 34*zeta + 34)*q^541 +
(-20*zeta^4 + 100*zeta^2 - 80)*q^542 + (-2*zeta^2 + 2*zeta + 4)*q^543 + 
(-25*zeta^4 + 25*zeta^3 + 100*zeta^2 - 75*zeta - 50)*q^544 + (11*zeta^4 - 
11*zeta^3 - 44*zeta^2 + 33*zeta + 22)*q^545 + (-4*zeta^2 + 4*zeta + 8)*q^546 + 
(-16*zeta^4 + 80*zeta^2 - 64)*q^547 + (-10*zeta^4 - 10*zeta^3 + 30*zeta^2 + 
10*zeta - 10)*q^548 + (-6*zeta^4 - 12*zeta^3 + 18*zeta^2 + 30*zeta - 6)*q^549 + 
(54*zeta^4 + 108*zeta^3 - 162*zeta^2 - 270*zeta + 54)*q^551 + (-12*zeta^4 - 
12*zeta^3 + 36*zeta^2 + 12*zeta - 12)*q^552 + (-20*zeta^4 + 100*zeta^2 - 
80)*q^553 + (-zeta^2 + zeta + 2)*q^554 + (-6*zeta^4 + 6*zeta^3 + 24*zeta^2 - 
18*zeta - 12)*q^555 + (-2*zeta^4 + 2*zeta^3 + 8*zeta^2 - 6*zeta - 4)*q^556 + 
(-2*zeta^2 + 2*zeta + 4)*q^557 + (-2*zeta^4 + 10*zeta^2 - 8)*q^558 + (-2*zeta^4 
- 4*zeta^3 + 6*zeta^2 + 10*zeta - 2)*q^560 + O(q^561)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_11B1 := Curve(P_Q, [ PolynomialRing(ext<K|Polynomial(K, [1, 3, 
-3, -4, 1, 1])> where K is RationalField(), 2) | ]);
