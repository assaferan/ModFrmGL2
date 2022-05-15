
    /****************************************************
    Loading this file in magma loads the objects fs_13B3 
    and X_13B3. fs_13B3 is a list of power series which form 
    a basis for the space of cusp forms. X_13B3 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | -1, 3, 6, -4, -5, 1, 1 
]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_13B3 := [Kq | q + (-zeta^5 + 4*zeta^3 - zeta^2 - 3*zeta + 
1)*q^2 + (2*zeta^5 - 9*zeta^3 + zeta^2 + 9*zeta + 1)*q^3 + (-zeta^5 + 4*zeta^3 -
zeta^2 - 3*zeta - 2)*q^4 + (zeta^5 - 3*zeta^3 + 2*zeta^2 - 7)*q^5 + (-zeta^5 + 
5*zeta^3 - 6*zeta - 1)*q^6 + (-zeta^5 + 4*zeta^3 - zeta^2 - 3*zeta - 3)*q^7 + 
(-2*zeta^5 + 7*zeta^3 - 3*zeta^2 - 3*zeta + 9)*q^8 + (2*zeta^5 - 11*zeta^3 - 
zeta^2 + 15*zeta - 1)*q^9 + (zeta^5 - 4*zeta^3 + zeta^2 + 3*zeta)*q^10 + 
(2*zeta^5 - 9*zeta^3 + zeta^2 + 9*zeta - 1)*q^11 + (zeta^5 - 2*zeta^3 + 3*zeta^2
- 3*zeta - 7)*q^12 + (-2*zeta^5 + 8*zeta^3 - 2*zeta^2 - 6*zeta + 7)*q^14 + 
(-zeta^5 + 5*zeta^3 - 6*zeta - 4)*q^15 + (zeta^5 - 5*zeta^3 + 6*zeta + 4)*q^16 +
(2*zeta^5 - 9*zeta^3 + zeta^2 + 9*zeta + 2)*q^17 + (zeta^5 - 5*zeta^3 + 
6*zeta)*q^18 + (zeta^5 - 3*zeta^3 + 2*zeta^2 + 2)*q^19 + (3*zeta^3 + 3*zeta^2 - 
9*zeta + 4)*q^20 + (2*zeta^5 - 5*zeta^3 + 5*zeta^2 - 3*zeta - 12)*q^21 + 
(-3*zeta^5 + 15*zeta^3 - 18*zeta - 1)*q^22 + (-4*zeta^5 + 18*zeta^3 - 2*zeta^2 -
18*zeta - 5)*q^23 + (-3*zeta^5 + 13*zeta^3 - 2*zeta^2 - 12*zeta + 3)*q^24 + 
(-3*zeta^5 + 10*zeta^3 - 5*zeta^2 - 3*zeta + 14)*q^25 + (3*zeta^5 - 11*zeta^3 + 
4*zeta^2 + 6*zeta - 14)*q^27 + (zeta^5 - 4*zeta^3 + zeta^2 + 3*zeta + 3)*q^28 + 
(-8*zeta^5 + 37*zeta^3 - 3*zeta^2 - 39*zeta - 12)*q^29 + (zeta^3 + zeta^2 - 
3*zeta + 1)*q^30 + (-5*zeta^5 + 17*zeta^3 - 8*zeta^2 - 6*zeta + 24)*q^31 + 
(2*zeta^5 - 15*zeta^3 - 5*zeta^2 + 27*zeta - 3)*q^32 + (4*zeta^5 - 23*zeta^3 - 
3*zeta^2 + 33*zeta + 2)*q^33 + (3*zeta^5 - 14*zeta^3 + zeta^2 + 15*zeta - 
6)*q^34 + (-zeta^5 + 9*zeta^3 + 4*zeta^2 - 18*zeta + 6)*q^35 + (4*zeta^5 - 
20*zeta^3 + 24*zeta + 11)*q^36 + (-3*zeta^5 + 14*zeta^3 - zeta^2 - 15*zeta - 
1)*q^37 + (3*zeta^5 - 15*zeta^3 + 18*zeta - 5)*q^38 + (3*zeta^5 - 12*zeta^3 + 
3*zeta^2 + 9*zeta - 14)*q^40 + (10*zeta^5 - 44*zeta^3 + 6*zeta^2 + 42*zeta + 
1)*q^41 + (-2*zeta^5 + 9*zeta^3 - zeta^2 - 9*zeta + 1)*q^42 + (-3*zeta^5 + 
17*zeta^3 + 2*zeta^2 - 24*zeta + 5)*q^43 + (-zeta^5 + 8*zeta^3 + 3*zeta^2 - 
15*zeta - 1)*q^44 + (-2*zeta^5 + 12*zeta^3 + 2*zeta^2 - 18*zeta + 5)*q^45 + 
(-zeta^5 + 5*zeta^3 - 6*zeta + 2)*q^46 + (zeta^5 - 5*zeta^3 + 6*zeta - 9)*q^47 +
(-zeta^5 + 6*zeta^3 + zeta^2 - 9*zeta + 1)*q^48 + (zeta^5 - 5*zeta^3 + 6*zeta + 
2)*q^49 + (2*zeta^5 - 7*zeta^3 + 3*zeta^2 + 3*zeta - 8)*q^50 + (-zeta^5 + zeta^3
- 4*zeta^2 + 6*zeta + 8)*q^51 + (-4*zeta^5 + 9*zeta^3 - 11*zeta^2 + 9*zeta + 
27)*q^53 + (-2*zeta^3 - 2*zeta^2 + 6*zeta + 9)*q^54 + (3*zeta^5 - 13*zeta^3 + 
2*zeta^2 + 12*zeta + 2)*q^55 + (5*zeta^5 - 28*zeta^3 - 3*zeta^2 + 39*zeta - 
2)*q^56 + (-zeta^3 - zeta^2 + 3*zeta + 3)*q^57 + (2*zeta^5 - 8*zeta^3 + 2*zeta^2
+ 6*zeta + 5)*q^58 + (4*zeta^3 + 4*zeta^2 - 12*zeta - 1)*q^59 + (-zeta^5 + 
3*zeta^3 - 2*zeta^2 + 8)*q^60 + (zeta^5 - 11*zeta^3 - 6*zeta^2 + 24*zeta - 
6)*q^61 + (2*zeta^5 - 6*zeta^3 + 4*zeta^2 - 13)*q^62 + (7*zeta^5 - 33*zeta^3 + 
2*zeta^2 + 36*zeta + 12)*q^63 + (-zeta^5 + 9*zeta^3 + 4*zeta^2 - 18*zeta - 
6)*q^64 + (zeta^5 + 5*zeta^2 - 9*zeta - 8)*q^66 + (-11*zeta^5 + 50*zeta^3 - 
5*zeta^2 - 51*zeta - 12)*q^67 + (-3*zeta^3 - 3*zeta^2 + 9*zeta + 8)*q^68 + 
(-zeta^5 + 4*zeta^3 - zeta^2 - 3*zeta - 4)*q^69 + (3*zeta^5 - 13*zeta^3 + 
2*zeta^2 + 12*zeta - 11)*q^70 + (-3*zeta^3 - 3*zeta^2 + 9*zeta - 13)*q^71 + 
(-3*zeta^5 + 13*zeta^3 - 2*zeta^2 - 12*zeta - 6)*q^72 + (-6*zeta^5 + 27*zeta^3 -
3*zeta^2 - 27*zeta + 25)*q^73 + (5*zeta^5 - 24*zeta^3 + zeta^2 + 27*zeta + 
2)*q^74 + (-6*zeta^5 + 26*zeta^3 - 4*zeta^2 - 24*zeta + 5)*q^75 + (-3*zeta^5 + 
10*zeta^3 - 5*zeta^2 - 3*zeta + 8)*q^76 + (5*zeta^3 + 5*zeta^2 - 15*zeta - 
4)*q^77 + (-zeta^5 + 12*zeta^3 + 7*zeta^2 - 27*zeta - 8)*q^79 + (-4*zeta^5 + 
19*zeta^3 - zeta^2 - 21*zeta - 10)*q^80 + (10*zeta^5 - 43*zeta^3 + 7*zeta^2 + 
39*zeta - 2)*q^81 + (-3*zeta^5 + 17*zeta^3 + 2*zeta^2 - 24*zeta - 4)*q^82 + 
(9*zeta^5 - 34*zeta^3 + 11*zeta^2 + 21*zeta - 44)*q^83 + (-3*zeta^5 + 19*zeta^3 
+ 4*zeta^2 - 30*zeta + 1)*q^84 + (-zeta^5 + 2*zeta^3 - 3*zeta^2 + 3*zeta - 
3)*q^85 + (-zeta^5 + 8*zeta^3 + 3*zeta^2 - 15*zeta - 7)*q^86 + (-3*zeta^5 + 
15*zeta^3 - 18*zeta - 8)*q^87 + (-9*zeta^5 + 41*zeta^3 - 4*zeta^2 - 42*zeta - 
5)*q^88 + (-7*zeta^5 + 35*zeta^3 - 42*zeta - 27)*q^89 + (3*zeta^3 + 3*zeta^2 - 
9*zeta - 8)*q^90 + (-5*zeta^5 + 19*zeta^3 - 6*zeta^2 - 12*zeta + 23)*q^92 + 
(-7*zeta^5 + 30*zeta^3 - 5*zeta^2 - 27*zeta + 9)*q^93 + (7*zeta^5 - 30*zeta^3 + 
5*zeta^2 + 27*zeta)*q^94 + (-zeta^5 + zeta^3 - 4*zeta^2 + 6*zeta - 5)*q^95 + 
(-2*zeta^5 + 4*zeta^3 - 6*zeta^2 + 6*zeta + 7)*q^96 + (-7*zeta^5 + 36*zeta^3 + 
zeta^2 - 45*zeta - 1)*q^97 + (-2*zeta^5 + 9*zeta^3 - zeta^2 - 9*zeta - 1)*q^98 +
(-2*zeta^5 + 2*zeta^3 - 8*zeta^2 + 12*zeta + 17)*q^99 + (6*zeta^5 - 32*zeta^3 - 
2*zeta^2 + 42*zeta - 1)*q^100 + (13*zeta^5 - 55*zeta^3 + 10*zeta^2 + 48*zeta - 
5)*q^101 + (2*zeta^5 - 10*zeta^3 + 12*zeta + 3)*q^102 + (8*zeta^5 - 31*zeta^3 + 
9*zeta^2 + 21*zeta - 37)*q^103 + (-2*zeta^5 + 7*zeta^3 - 3*zeta^2 - 3*zeta + 
13)*q^105 + (3*zeta^5 - 15*zeta^3 + 18*zeta + 2)*q^106 + (zeta^5 - 7*zeta^3 - 
2*zeta^2 + 12*zeta + 14)*q^107 + (-5*zeta^5 + 27*zeta^3 + 2*zeta^2 - 36*zeta + 
4)*q^108 + (2*zeta^5 - 2*zeta^3 + 8*zeta^2 - 12*zeta - 10)*q^109 + (2*zeta^5 - 
9*zeta^3 + zeta^2 + 9*zeta - 1)*q^110 + (-5*zeta^5 + 29*zeta^3 + 4*zeta^2 - 
42*zeta - 3)*q^111 + (2*zeta^5 - 7*zeta^3 + 3*zeta^2 + 3*zeta - 13)*q^112 + 
(2*zeta^5 - 11*zeta^3 - zeta^2 + 15*zeta + 9)*q^113 + (-zeta^5 + 3*zeta^3 - 
2*zeta^2 + 4)*q^114 + (8*zeta^5 - 37*zeta^3 + 3*zeta^2 + 39*zeta + 17)*q^115 + 
(-6*zeta^5 + 17*zeta^3 - 13*zeta^2 + 3*zeta + 40)*q^116 + (4*zeta^5 - 25*zeta^3 
- 5*zeta^2 + 39*zeta + 2)*q^118 + (zeta^5 - 6*zeta^3 - zeta^2 + 9*zeta + 
2)*q^119 + (-4*zeta^5 + 18*zeta^3 - 2*zeta^2 - 18*zeta - 5)*q^120 + (6*zeta^5 - 
35*zeta^3 - 5*zeta^2 + 51*zeta - 5)*q^121 + (-5*zeta^5 + 25*zeta^3 - 30*zeta + 
11)*q^122 + (11*zeta^5 - 60*zeta^3 - 5*zeta^2 + 81*zeta + 10)*q^123 + (9*zeta^5 
- 49*zeta^3 - 4*zeta^2 + 66*zeta - 4)*q^124 + (-zeta^5 - zeta^3 - 6*zeta^2 + 
12*zeta + 16)*q^125 + (-4*zeta^5 + 17*zeta^3 - 3*zeta^2 - 15*zeta - 5)*q^126 + 
(10*zeta^5 - 49*zeta^3 + zeta^2 + 57*zeta + 21)*q^127 + (14*zeta^5 - 60*zeta^3 +
10*zeta^2 + 54*zeta + 3)*q^128 + (-3*zeta^5 + 12*zeta^3 - 3*zeta^2 - 9*zeta + 
14)*q^129 + (5*zeta^5 - 21*zeta^3 + 4*zeta^2 + 18*zeta - 26)*q^131 + (10*zeta^5 
- 43*zeta^3 + 7*zeta^2 + 39*zeta - 4)*q^132 + (-4*zeta^5 + 16*zeta^3 - 4*zeta^2 
- 12*zeta + 1)*q^133 + (2*zeta^5 - 9*zeta^3 + zeta^2 + 9*zeta + 6)*q^134 + 
(-6*zeta^5 + 23*zeta^3 - 7*zeta^2 - 15*zeta + 30)*q^135 + (-6*zeta^5 + 30*zeta^3
- 36*zeta - 1)*q^136 + (4*zeta^3 + 4*zeta^2 - 12*zeta + 12)*q^137 + (-2*zeta^5 +
7*zeta^3 - 3*zeta^2 - 3*zeta + 9)*q^138 + (-6*zeta^5 + 41*zeta^3 + 11*zeta^2 - 
69*zeta + 6)*q^139 + (-9*zeta^5 + 40*zeta^3 - 5*zeta^2 - 39*zeta - 12)*q^140 + 
(-15*zeta^5 + 67*zeta^3 - 8*zeta^2 - 66*zeta - 6)*q^141 + (-3*zeta^5 + 5*zeta^3 
- 10*zeta^2 + 12*zeta + 26)*q^142 + (3*zeta^5 - 11*zeta^3 + 4*zeta^2 + 6*zeta - 
15)*q^144 + (13*zeta^5 - 62*zeta^3 + 3*zeta^2 + 69*zeta + 35)*q^145 + (-7*zeta^5
+ 37*zeta^3 + 2*zeta^2 - 48*zeta - 26)*q^146 + (zeta^5 - 6*zeta^3 - zeta^2 + 
9*zeta + 1)*q^147 + (2*zeta^5 - 15*zeta^3 - 5*zeta^2 + 27*zeta + 3)*q^148 + 
(-3*zeta^3 - 3*zeta^2 + 9*zeta)*q^149 + (5*zeta^5 - 27*zeta^3 - 2*zeta^2 + 
36*zeta + 2)*q^150 + (12*zeta^5 - 46*zeta^3 + 14*zeta^2 + 30*zeta - 55)*q^151 + 
(-4*zeta^5 + 19*zeta^3 - zeta^2 - 21*zeta + 2)*q^152 + (-4*zeta^5 + 21*zeta^3 + 
zeta^2 - 27*zeta - 13)*q^153 + (-6*zeta^5 + 29*zeta^3 - zeta^2 - 33*zeta - 
9)*q^154 + (8*zeta^5 - 31*zeta^3 + 9*zeta^2 + 21*zeta - 40)*q^155 + (zeta^5 + 
zeta^3 + 6*zeta^2 - 12*zeta - 14)*q^157 + (-4*zeta^5 + 25*zeta^3 + 5*zeta^2 - 
39*zeta - 24)*q^158 + (-13*zeta^5 + 55*zeta^3 - 10*zeta^2 - 48*zeta + 15)*q^159 
+ (8*zeta^3 + 8*zeta^2 - 24*zeta + 13)*q^160 + (-7*zeta^5 + 25*zeta^3 - 
10*zeta^2 - 12*zeta + 36)*q^161 + (4*zeta^3 + 4*zeta^2 - 12*zeta - 3)*q^162 + 
(2*zeta^5 - 9*zeta^3 + zeta^2 + 9*zeta + 16)*q^163 + (7*zeta^5 - 21*zeta^3 + 
14*zeta^2 - 35)*q^164 + (zeta^5 - 4*zeta^3 + zeta^2 + 3*zeta + 3)*q^165 + 
(4*zeta^5 - 23*zeta^3 - 3*zeta^2 + 33*zeta + 26)*q^166 + (-16*zeta^5 + 66*zeta^3
- 14*zeta^2 - 54*zeta + 12)*q^167 + (-zeta^5 - 2*zeta^3 - 7*zeta^2 + 15*zeta + 
7)*q^168 + (-4*zeta^5 + 20*zeta^3 - 24*zeta + 7)*q^170 + (-2*zeta^5 + 13*zeta^3 
+ 3*zeta^2 - 21*zeta - 18)*q^171 + (-7*zeta^5 + 37*zeta^3 + 2*zeta^2 - 48*zeta -
31)*q^172 + (-8*zeta^5 + 56*zeta^3 + 16*zeta^2 - 96*zeta + 8)*q^173 + (-3*zeta^5
+ 7*zeta^3 - 8*zeta^2 + 6*zeta + 19)*q^174 + (8*zeta^5 - 45*zeta^3 - 5*zeta^2 + 
63*zeta - 2)*q^175 + (-zeta^5 + 4*zeta^3 - zeta^2 - 3*zeta - 3)*q^176 + 
(5*zeta^5 - 15*zeta^3 + 10*zeta^2 - 21)*q^177 + (zeta^5 + 2*zeta^3 + 7*zeta^2 - 
15*zeta + 7)*q^178 + (-9*zeta^5 + 41*zeta^3 - 4*zeta^2 - 42*zeta - 5)*q^179 + 
(-6*zeta^5 + 31*zeta^3 + zeta^2 - 39*zeta - 25)*q^180 + (-zeta^5 + 12*zeta^3 + 
7*zeta^2 - 27*zeta + 3)*q^181 + (-zeta^3 - zeta^2 + 3*zeta - 5)*q^183 + 
(-3*zeta^5 + 16*zeta^3 + zeta^2 - 21*zeta - 18)*q^184 + (-3*zeta^5 + 12*zeta^3 -
3*zeta^2 - 9*zeta + 2)*q^185 + (7*zeta^5 - 38*zeta^3 - 3*zeta^2 + 51*zeta + 
2)*q^186 + (zeta^5 - 11*zeta^3 - 6*zeta^2 + 24*zeta + 6)*q^187 + (4*zeta^5 - 
15*zeta^3 + 5*zeta^2 + 9*zeta + 14)*q^188 + (-6*zeta^5 + 35*zeta^3 + 5*zeta^2 - 
51*zeta + 7)*q^189 + (-5*zeta^5 + 24*zeta^3 - zeta^2 - 27*zeta + 11)*q^190 + 
(-9*zeta^5 + 41*zeta^3 - 4*zeta^2 - 42*zeta - 13)*q^191 + (5*zeta^5 - 20*zeta^3 
+ 5*zeta^2 + 15*zeta - 9)*q^192 + (18*zeta^5 - 80*zeta^3 + 10*zeta^2 + 78*zeta +
12)*q^193 + (-6*zeta^5 + 28*zeta^3 - 2*zeta^2 - 30*zeta + 9)*q^194 + (-zeta^5 + 
7*zeta^3 + 2*zeta^2 - 12*zeta - 2)*q^196 + (8*zeta^5 - 40*zeta^3 + 48*zeta + 
27)*q^197 + (3*zeta^5 - 16*zeta^3 - zeta^2 + 21*zeta + 7)*q^198 + (11*zeta^5 - 
61*zeta^3 - 6*zeta^2 + 84*zeta - 6)*q^199 + (2*zeta^5 - 5*zeta^3 + 5*zeta^2 - 
3*zeta - 4)*q^200 + (-6*zeta^5 + 31*zeta^3 + zeta^2 - 39*zeta - 11)*q^201 + 
(3*zeta^5 - 8*zeta^3 + 7*zeta^2 - 3*zeta - 3)*q^202 + (-11*zeta^5 + 34*zeta^3 - 
21*zeta^2 - 3*zeta + 66)*q^203 + (zeta^5 - 9*zeta^3 - 4*zeta^2 + 18*zeta)*q^204 
+ (-4*zeta^5 + 19*zeta^3 - zeta^2 - 21*zeta - 13)*q^205 + (3*zeta^5 - 19*zeta^3 
- 4*zeta^2 + 30*zeta + 26)*q^206 + (-3*zeta^5 + 10*zeta^3 - 5*zeta^2 - 3*zeta + 
22)*q^207 + (4*zeta^5 - 19*zeta^3 + zeta^2 + 21*zeta - 9)*q^209 + (-3*zeta^5 + 
13*zeta^3 - 2*zeta^2 - 12*zeta - 2)*q^210 + (-5*zeta^3 - 5*zeta^2 + 15*zeta + 
27)*q^211 + (4*zeta^5 - 31*zeta^3 - 11*zeta^2 + 57*zeta - 5)*q^212 + (10*zeta^5 
- 30*zeta^3 + 20*zeta^2 - 53)*q^213 + (-2*zeta^5 + 5*zeta^3 - 5*zeta^2 + 3*zeta 
- 3)*q^214 + (6*zeta^5 - 37*zeta^3 - 7*zeta^2 + 57*zeta - 15)*q^215 + (zeta^5 - 
3*zeta^3 + 2*zeta^2 - 13)*q^216 + (12*zeta^5 - 69*zeta^3 - 9*zeta^2 + 99*zeta - 
7)*q^217 + (-10*zeta^5 + 44*zeta^3 - 6*zeta^2 - 42*zeta)*q^218 + (17*zeta^5 - 
75*zeta^3 + 10*zeta^2 + 72*zeta + 7)*q^219 + (5*zeta^5 - 21*zeta^3 + 4*zeta^2 + 
18*zeta - 18)*q^220 + (-zeta^5 - 2*zeta^3 - 7*zeta^2 + 15*zeta + 11)*q^222 + 
(-6*zeta^5 + 27*zeta^3 - 3*zeta^2 - 27*zeta - 12)*q^223 + (19*zeta^5 - 83*zeta^3
+ 12*zeta^2 + 78*zeta + 8)*q^224 + (-5*zeta^5 + 23*zeta^3 - 2*zeta^2 - 24*zeta -
9)*q^225 + (zeta^5 + 5*zeta^3 + 10*zeta^2 - 24*zeta - 20)*q^226 + (-3*zeta^5 + 
23*zeta^3 + 8*zeta^2 - 42*zeta + 7)*q^227 + (-2*zeta^5 + 7*zeta^3 - 3*zeta^2 - 
3*zeta - 3)*q^228 + (-8*zeta^5 + 25*zeta^3 - 15*zeta^2 - 3*zeta + 31)*q^229 + 
(3*zeta^5 - 17*zeta^3 - 2*zeta^2 + 24*zeta - 5)*q^230 + (17*zeta^5 - 74*zeta^3 +
11*zeta^2 + 69*zeta - 4)*q^231 + (-2*zeta^5 + 11*zeta^3 + zeta^2 - 15*zeta - 
23)*q^232 + (3*zeta^5 - 10*zeta^3 + 5*zeta^2 + 3*zeta - 22)*q^233 + (-9*zeta^5 +
30*zeta^3 - 15*zeta^2 - 9*zeta + 55)*q^235 + (-8*zeta^5 + 27*zeta^3 - 13*zeta^2 
- 9*zeta + 29)*q^236 + (16*zeta^5 - 68*zeta^3 + 12*zeta^2 + 60*zeta - 11)*q^237 
+ (-8*zeta^5 + 37*zeta^3 - 3*zeta^2 - 39*zeta - 2)*q^238 + (-3*zeta^5 + 6*zeta^3
- 9*zeta^2 + 9*zeta + 5)*q^239 + (zeta^5 - 7*zeta^3 - 2*zeta^2 + 12*zeta - 
4)*q^240 + (-11*zeta^5 + 56*zeta^3 + zeta^2 - 69*zeta - 10)*q^241 + (zeta^5 - 
5*zeta^3 + 6*zeta + 4)*q^242 + (8*zeta^5 - 35*zeta^3 + 5*zeta^2 + 33*zeta + 
19)*q^243 + (13*zeta^5 - 54*zeta^3 + 11*zeta^2 + 45*zeta)*q^244 + (zeta^3 + 
zeta^2 - 3*zeta - 4)*q^245 + (6*zeta^5 - 15*zeta^3 + 15*zeta^2 - 9*zeta - 
31)*q^246 + (zeta^5 - zeta^3 + 4*zeta^2 - 6*zeta + 5)*q^248 + (-6*zeta^5 + 
28*zeta^3 - 2*zeta^2 - 30*zeta - 17)*q^249 + (-2*zeta^5 + 4*zeta^3 - 6*zeta^2 + 
6*zeta + 13)*q^250 + (-16*zeta^5 + 82*zeta^3 + 2*zeta^2 - 102*zeta - 8)*q^251 + 
(3*zeta^5 - 3*zeta^3 + 12*zeta^2 - 18*zeta - 32)*q^252 + (-5*zeta^5 + 28*zeta^3 
+ 3*zeta^2 - 39*zeta + 2)*q^253 + (-13*zeta^5 + 57*zeta^3 - 8*zeta^2 - 54*zeta -
9)*q^254 + (zeta^3 + zeta^2 - 3*zeta - 4)*q^255 + (-3*zeta^5 + 19*zeta^3 + 
4*zeta^2 - 30*zeta - 6)*q^256 + (8*zeta^5 - 45*zeta^3 - 5*zeta^2 + 63*zeta + 
60)*q^257 + (-2*zeta^5 + 11*zeta^3 + zeta^2 - 15*zeta - 10)*q^258 + (-8*zeta^3 -
8*zeta^2 + 24*zeta + 9)*q^259 + (-7*zeta^5 + 30*zeta^3 - 5*zeta^2 - 27*zeta + 
35)*q^261 + (8*zeta^5 - 38*zeta^3 + 2*zeta^2 + 42*zeta + 15)*q^262 + (19*zeta^5 
- 82*zeta^3 + 13*zeta^2 + 75*zeta + 1)*q^263 + (-10*zeta^5 + 56*zeta^3 + 
6*zeta^2 - 78*zeta - 9)*q^264 + (5*zeta^5 - 16*zeta^3 + 9*zeta^2 + 3*zeta - 
36)*q^265 + (-7*zeta^5 + 31*zeta^3 - 4*zeta^2 - 30*zeta)*q^266 + (6*zeta^5 - 
36*zeta^3 - 6*zeta^2 + 54*zeta - 7)*q^267 + (-9*zeta^5 + 28*zeta^3 - 17*zeta^2 -
3*zeta + 52)*q^268 + (-zeta^5 + 2*zeta^3 - 3*zeta^2 + 3*zeta - 10)*q^269 + 
(-4*zeta^5 + 21*zeta^3 + zeta^2 - 27*zeta - 17)*q^270 + (-23*zeta^5 + 106*zeta^3
- 9*zeta^2 - 111*zeta - 40)*q^271 + (-zeta^3 - zeta^2 + 3*zeta + 4)*q^272 + 
(4*zeta^5 - 12*zeta^3 + 8*zeta^2 - 24)*q^274 + (-16*zeta^5 + 72*zeta^3 - 
8*zeta^2 - 72*zeta - 5)*q^275 + (zeta^5 - 5*zeta^3 + 6*zeta + 8)*q^276 + 
(5*zeta^5 - 35*zeta^3 - 10*zeta^2 + 60*zeta - 5)*q^277 + (5*zeta^5 - 30*zeta^3 -
5*zeta^2 + 45*zeta - 6)*q^278 + (-6*zeta^5 + 25*zeta^3 - 5*zeta^2 - 21*zeta - 
16)*q^279 + (-4*zeta^5 + 25*zeta^3 + 5*zeta^2 - 39*zeta + 12)*q^280 + (5*zeta^5 
- 14*zeta^3 + 11*zeta^2 - 3*zeta - 34)*q^281 + (6*zeta^5 - 31*zeta^3 - zeta^2 + 
39*zeta + 7)*q^282 + (-34*zeta^5 + 156*zeta^3 - 14*zeta^2 - 162*zeta - 44)*q^283
+ (6*zeta^5 - 34*zeta^3 - 4*zeta^2 + 48*zeta + 47)*q^284 + (zeta^5 - 2*zeta^3 + 
3*zeta^2 - 3*zeta - 10)*q^285 + (11*zeta^5 - 31*zeta^3 + 24*zeta^2 - 6*zeta - 
58)*q^287 + (-zeta^5 - 2*zeta^3 - 7*zeta^2 + 15*zeta + 34)*q^288 + (-zeta^5 + 
10*zeta^3 + 5*zeta^2 - 21*zeta - 34)*q^289 + (zeta^5 - 12*zeta^3 - 7*zeta^2 + 
27*zeta - 10)*q^290 + (2*zeta^5 + zeta^3 + 11*zeta^2 - 21*zeta - 16)*q^291 + 
(8*zeta^5 - 41*zeta^3 - zeta^2 + 51*zeta - 17)*q^292 + (16*zeta^5 - 87*zeta^3 - 
7*zeta^2 + 117*zeta - 8)*q^293 + (2*zeta^3 + 2*zeta^2 - 6*zeta - 3)*q^294 + 
(-5*zeta^5 + 22*zeta^3 - 3*zeta^2 - 21*zeta - 2)*q^295 + (11*zeta^5 - 51*zeta^3 
+ 4*zeta^2 + 54*zeta + 8)*q^296 + (9*zeta^5 - 42*zeta^3 + 3*zeta^2 + 45*zeta + 
11)*q^297 + (-3*zeta^5 + 18*zeta^3 + 3*zeta^2 - 27*zeta)*q^298 + (-zeta^5 - 
3*zeta^3 - 8*zeta^2 + 18*zeta + 9)*q^300 + (-12*zeta^5 + 59*zeta^3 - zeta^2 - 
69*zeta - 37)*q^301 + (3*zeta^5 - 22*zeta^3 - 7*zeta^2 + 39*zeta + 39)*q^302 + 
(14*zeta^5 - 74*zeta^3 - 4*zeta^2 + 96*zeta + 13)*q^303 + (-zeta^5 + 2*zeta^3 - 
3*zeta^2 + 3*zeta + 10)*q^304 + (-zeta^5 + 17*zeta^3 + 12*zeta^2 - 42*zeta + 
19)*q^305 + (9*zeta^5 - 39*zeta^3 + 6*zeta^2 + 36*zeta + 5)*q^306 + (-2*zeta^5 +
18*zeta^3 + 8*zeta^2 - 36*zeta)*q^307 + (-zeta^5 + 9*zeta^3 + 4*zeta^2 - 18*zeta
- 7)*q^308 + (-5*zeta^5 + 23*zeta^3 - 2*zeta^2 - 24*zeta - 13)*q^309 + (6*zeta^5
- 31*zeta^3 - zeta^2 + 39*zeta + 23)*q^310 + (-15*zeta^5 + 63*zeta^3 - 12*zeta^2
- 54*zeta + 58)*q^311 + (-4*zeta^5 + 9*zeta^3 - 11*zeta^2 + 9*zeta + 14)*q^313 +
(4*zeta^3 + 4*zeta^2 - 12*zeta - 11)*q^314 + (-10*zeta^5 + 49*zeta^3 - zeta^2 - 
57*zeta - 32)*q^315 + (6*zeta^5 - 18*zeta^3 + 12*zeta^2 - 1)*q^316 + (-8*zeta^5 
+ 14*zeta^3 - 26*zeta^2 + 30*zeta + 72)*q^317 + (7*zeta^5 - 42*zeta^3 - 7*zeta^2
+ 63*zeta + 3)*q^318 + (-9*zeta^5 + 55*zeta^3 + 10*zeta^2 - 84*zeta + 2)*q^319 +
(2*zeta^5 - 13*zeta^3 - 3*zeta^2 + 21*zeta + 6)*q^320 + (-5*zeta^5 + 28*zeta^3 +
3*zeta^2 - 39*zeta + 1)*q^321 + (-2*zeta^5 + 12*zeta^3 + 2*zeta^2 - 18*zeta - 
17)*q^322 + (3*zeta^5 - 7*zeta^3 + 8*zeta^2 - 6*zeta - 19)*q^323 + (10*zeta^5 - 
37*zeta^3 + 13*zeta^2 + 21*zeta - 38)*q^324 + (3*zeta^5 + 15*zeta^2 - 27*zeta - 
34)*q^326 + (26*zeta^5 - 114*zeta^3 + 16*zeta^2 + 108*zeta - 4)*q^327 + 
(-17*zeta^5 + 72*zeta^3 - 13*zeta^2 - 63*zeta + 20)*q^328 + (5*zeta^5 - 
19*zeta^3 + 6*zeta^2 + 12*zeta + 22)*q^329 + (2*zeta^5 - 8*zeta^3 + 2*zeta^2 + 
6*zeta - 7)*q^330 + (11*zeta^5 - 55*zeta^3 + 66*zeta + 9)*q^331 + (-12*zeta^5 + 
68*zeta^3 + 8*zeta^2 - 96*zeta + 19)*q^332 + (zeta^5 + 5*zeta^3 + 10*zeta^2 - 
24*zeta - 18)*q^333 + (-8*zeta^5 + 28*zeta^3 - 12*zeta^2 - 12*zeta + 2)*q^334 + 
(15*zeta^5 - 71*zeta^3 + 4*zeta^2 + 78*zeta + 39)*q^335 + (-5*zeta^5 + 23*zeta^3
- 2*zeta^2 - 24*zeta - 7)*q^336 + (-5*zeta^5 + 8*zeta^3 - 17*zeta^2 + 21*zeta + 
28)*q^337 + (-10*zeta^5 + 28*zeta^3 - 22*zeta^2 + 6*zeta + 51)*q^339 + (5*zeta^5
- 18*zeta^3 + 7*zeta^2 + 9*zeta - 9)*q^340 + (-23*zeta^5 + 104*zeta^3 - 
11*zeta^2 - 105*zeta - 11)*q^341 + (8*zeta^5 - 32*zeta^3 + 8*zeta^2 + 24*zeta + 
5)*q^342 + (-7*zeta^5 + 38*zeta^3 + 3*zeta^2 - 51*zeta + 23)*q^343 + (zeta^5 + 
4*zeta^3 + 9*zeta^2 - 21*zeta + 13)*q^344 + (-2*zeta^5 + 15*zeta^3 + 5*zeta^2 - 
27*zeta + 8)*q^345 + (8*zeta^5 - 48*zeta^3 - 8*zeta^2 + 72*zeta - 8)*q^346 + 
(7*zeta^5 - 37*zeta^3 - 2*zeta^2 + 48*zeta - 7)*q^347 + (-3*zeta^5 + 10*zeta^3 -
5*zeta^2 - 3*zeta + 22)*q^348 + (7*zeta^5 - 32*zeta^3 + 3*zeta^2 + 33*zeta - 
1)*q^349 + (3*zeta^5 - 12*zeta^3 + 3*zeta^2 + 9*zeta - 4)*q^350 + (-12*zeta^5 + 
40*zeta^3 - 20*zeta^2 - 12*zeta + 51)*q^352 + (6*zeta^5 - 23*zeta^3 + 7*zeta^2 +
15*zeta - 12)*q^353 + (-9*zeta^5 + 36*zeta^3 - 9*zeta^2 - 27*zeta + 14)*q^354 + 
(-10*zeta^5 + 66*zeta^3 + 16*zeta^2 - 108*zeta + 29)*q^355 + (-6*zeta^5 + 
16*zeta^3 - 14*zeta^2 + 6*zeta + 53)*q^356 + (4*zeta^5 - 25*zeta^3 - 5*zeta^2 + 
39*zeta + 1)*q^357 + (7*zeta^5 - 34*zeta^3 + zeta^2 + 39*zeta + 5)*q^358 + 
(10*zeta^5 - 22*zeta^3 + 28*zeta^2 - 24*zeta - 75)*q^359 + (-zeta^5 + 13*zeta^3 
+ 8*zeta^2 - 30*zeta + 11)*q^360 + (4*zeta^5 - 11*zeta^3 + 9*zeta^2 - 3*zeta - 
38)*q^361 + (-15*zeta^5 + 69*zeta^3 - 6*zeta^2 - 72*zeta - 13)*q^362 + 
(-6*zeta^3 - 6*zeta^2 + 18*zeta + 1)*q^363 + (19*zeta^5 - 72*zeta^3 + 23*zeta^2 
+ 45*zeta - 94)*q^365 + (7*zeta^5 - 29*zeta^3 + 6*zeta^2 + 24*zeta - 4)*q^366 + 
(-5*zeta^5 + 31*zeta^3 + 6*zeta^2 - 48*zeta - 38)*q^367 + (2*zeta^5 - 15*zeta^3 
- 5*zeta^2 + 27*zeta - 8)*q^368 + (-3*zeta^5 + 4*zeta^3 - 11*zeta^2 + 15*zeta + 
12)*q^369 + (-4*zeta^5 + 17*zeta^3 - 3*zeta^2 - 15*zeta)*q^370 + (11*zeta^5 - 
70*zeta^3 - 15*zeta^2 + 111*zeta - 6)*q^371 + (-9*zeta^3 - 9*zeta^2 + 27*zeta + 
5)*q^372 + (-5*zeta^5 + 41*zeta^3 + 16*zeta^2 - 78*zeta + 21)*q^373 + (4*zeta^5 
- 24*zeta^3 - 4*zeta^2 + 36*zeta + 21)*q^374 + (-zeta^5 + 2*zeta^3 - 3*zeta^2 + 
3*zeta + 13)*q^375 + (13*zeta^5 - 42*zeta^3 + 23*zeta^2 + 9*zeta - 66)*q^376 + 
(-zeta^5 + 7*zeta^3 + 2*zeta^2 - 12*zeta - 8)*q^378 + (25*zeta^5 - 113*zeta^3 + 
12*zeta^2 + 114*zeta + 40)*q^379 + (7*zeta^5 - 27*zeta^3 + 8*zeta^2 + 18*zeta - 
5)*q^380 + (6*zeta^5 - 35*zeta^3 - 5*zeta^2 + 51*zeta + 10)*q^381 + (-13*zeta^5 
+ 56*zeta^3 - 9*zeta^2 - 51*zeta + 35)*q^382 + (-16*zeta^5 + 88*zeta^3 + 
8*zeta^2 - 120*zeta - 6)*q^383 + (9*zeta^5 - 44*zeta^3 + zeta^2 + 51*zeta + 
14)*q^384 + (6*zeta^5 - 23*zeta^3 + 7*zeta^2 + 15*zeta - 27)*q^385 + (2*zeta^3 +
2*zeta^2 - 6*zeta - 8)*q^386 + (-11*zeta^5 + 48*zeta^3 - 7*zeta^2 - 45*zeta - 
13)*q^387 + (-9*zeta^5 + 48*zeta^3 + 3*zeta^2 - 63*zeta - 31)*q^388 + (2*zeta^5 
- 24*zeta^3 - 14*zeta^2 + 54*zeta + 20)*q^389 + (5*zeta^5 - 20*zeta^3 + 5*zeta^2
+ 15*zeta - 19)*q^391 + (-2*zeta^5 + 10*zeta^3 - 12*zeta - 3)*q^392 + 
(-17*zeta^5 + 76*zeta^3 - 9*zeta^2 - 75*zeta - 11)*q^393 + (-5*zeta^5 + 
17*zeta^3 - 8*zeta^2 - 6*zeta - 8)*q^394 + (6*zeta^5 - 28*zeta^3 + 2*zeta^2 + 
30*zeta - 13)*q^395 + (zeta^5 - 14*zeta^3 - 9*zeta^2 + 33*zeta - 2)*q^396 + 
(10*zeta^5 - 61*zeta^3 - 11*zeta^2 + 93*zeta - 7)*q^397 + (5*zeta^5 - 25*zeta^3 
+ 30*zeta + 1)*q^398 + (-zeta^5 + 2*zeta^3 - 3*zeta^2 + 3*zeta - 4)*q^399 + 
(6*zeta^5 - 27*zeta^3 + 3*zeta^2 + 27*zeta + 7)*q^400 + (-10*zeta^5 + 41*zeta^3 
- 9*zeta^2 - 33*zeta + 25)*q^401 + (-5*zeta^5 + 13*zeta^3 - 12*zeta^2 + 6*zeta +
28)*q^402 + (16*zeta^5 - 64*zeta^3 + 16*zeta^2 + 48*zeta - 53)*q^404 + 
(-5*zeta^5 + 22*zeta^3 - 3*zeta^2 - 21*zeta - 9)*q^405 + (-2*zeta^5 + 9*zeta^3 -
zeta^2 - 9*zeta - 12)*q^406 + (-7*zeta^5 + 43*zeta^3 + 8*zeta^2 - 66*zeta - 
7)*q^407 + (zeta^5 + 3*zeta^3 + 8*zeta^2 - 18*zeta - 11)*q^408 + (21*zeta^5 - 
120*zeta^3 - 15*zeta^2 + 171*zeta - 10)*q^409 + (-3*zeta^5 + 17*zeta^3 + 
2*zeta^2 - 24*zeta + 3)*q^410 + (-8*zeta^5 + 24*zeta^3 - 16*zeta^2 + 44)*q^411 +
(-12*zeta^5 + 65*zeta^3 + 5*zeta^2 - 87*zeta + 15)*q^412 + (-12*zeta^5 + 
47*zeta^3 - 13*zeta^2 - 33*zeta + 22)*q^413 + (-6*zeta^5 + 25*zeta^3 - 5*zeta^2 
- 21*zeta)*q^414 + (-22*zeta^5 + 82*zeta^3 - 28*zeta^2 - 48*zeta + 115)*q^415 + 
(5*zeta^5 - 9*zeta^3 + 16*zeta^2 - 18*zeta - 20)*q^417 + (-zeta^5 - 3*zeta^3 - 
8*zeta^2 + 18*zeta + 26)*q^418 + (11*zeta^5 - 53*zeta^3 + 2*zeta^2 + 60*zeta + 
1)*q^419 + (-5*zeta^3 - 5*zeta^2 + 15*zeta - 9)*q^420 + (-6*zeta^5 + 29*zeta^3 -
zeta^2 - 33*zeta + 1)*q^421 + (-3*zeta^5 + 5*zeta^3 - 10*zeta^2 + 12*zeta - 
5)*q^422 + (-12*zeta^5 + 70*zeta^3 + 10*zeta^2 - 102*zeta + 9)*q^423 + (-zeta^5 
+ 17*zeta^3 + 12*zeta^2 - 42*zeta - 4)*q^424 + (-9*zeta^5 + 46*zeta^3 + zeta^2 -
57*zeta - 2)*q^425 + (-7*zeta^5 + 28*zeta^3 - 7*zeta^2 - 21*zeta + 17)*q^426 + 
(20*zeta^5 - 88*zeta^3 + 12*zeta^2 + 84*zeta + 17)*q^427 + (-zeta^5 + 9*zeta^3 +
4*zeta^2 - 18*zeta - 14)*q^428 + (-zeta^5 - 3*zeta^3 - 8*zeta^2 + 18*zeta + 
24)*q^430 + (-4*zeta^5 + 10*zeta^3 - 10*zeta^2 + 6*zeta + 27)*q^431 + (-7*zeta^5
+ 32*zeta^3 - 3*zeta^2 - 33*zeta - 12)*q^432 + (-7*zeta^5 + 30*zeta^3 - 5*zeta^2
- 27*zeta - 16)*q^433 + (3*zeta^5 - 13*zeta^3 + 2*zeta^2 + 12*zeta + 2)*q^434 + 
(-5*zeta^5 + 33*zeta^3 + 8*zeta^2 - 54*zeta + 13)*q^435 + (-8*zeta^5 + 42*zeta^3
+ 2*zeta^2 - 54*zeta - 12)*q^436 + (6*zeta^5 - 25*zeta^3 + 5*zeta^2 + 21*zeta - 
24)*q^437 + (-zeta^5 + 8*zeta^3 + 3*zeta^2 - 15*zeta - 7)*q^438 + (23*zeta^5 - 
101*zeta^3 + 14*zeta^2 + 96*zeta + 8)*q^439 + (2*zeta^5 - 12*zeta^3 - 2*zeta^2 +
18*zeta + 17)*q^440 + (zeta^5 - 7*zeta^3 - 2*zeta^2 + 12*zeta + 1)*q^441 + 
(-6*zeta^5 + 20*zeta^3 - 10*zeta^2 - 6*zeta + 46)*q^443 + (-13*zeta^5 + 
55*zeta^3 - 10*zeta^2 - 48*zeta + 9)*q^444 + (26*zeta^5 - 124*zeta^3 + 6*zeta^2 
+ 138*zeta + 67)*q^445 + (-6*zeta^5 + 30*zeta^3 - 36*zeta + 3)*q^446 + 
(-3*zeta^5 + 9*zeta^3 - 6*zeta^2 + 12)*q^447 + (2*zeta^5 - zeta^3 + 9*zeta^2 - 
15*zeta + 3)*q^448 + (11*zeta^5 - 61*zeta^3 - 6*zeta^2 + 84*zeta - 5)*q^449 + 
(-7*zeta^5 + 28*zeta^3 - 7*zeta^2 - 21*zeta + 23)*q^450 + (23*zeta^5 - 
128*zeta^3 - 13*zeta^2 + 177*zeta + 12)*q^451 + (4*zeta^5 - 10*zeta^3 + 
10*zeta^2 - 6*zeta - 39)*q^452 + (-4*zeta^5 + 19*zeta^3 - zeta^2 - 21*zeta - 
19)*q^453 + (5*zeta^5 - 26*zeta^3 - zeta^2 + 33*zeta - 11)*q^454 + (-3*zeta^5 + 
13*zeta^3 - 2*zeta^2 - 12*zeta + 10)*q^456 + (-25*zeta^5 + 117*zeta^3 - 8*zeta^2
- 126*zeta - 51)*q^457 + (15*zeta^5 - 59*zeta^3 + 16*zeta^2 + 42*zeta - 
26)*q^458 + (7*zeta^5 - 35*zeta^3 + 42*zeta - 1)*q^459 + (11*zeta^5 - 42*zeta^3 
+ 13*zeta^2 + 27*zeta - 55)*q^460 + (7*zeta^5 - 29*zeta^3 + 6*zeta^2 + 24*zeta +
1)*q^461 + (-6*zeta^5 + 35*zeta^3 + 5*zeta^2 - 51*zeta - 6)*q^462 + (8*zeta^5 - 
37*zeta^3 + 3*zeta^2 + 39*zeta - 30)*q^463 + (5*zeta^5 - 33*zeta^3 - 8*zeta^2 + 
54*zeta - 13)*q^464 + (-11*zeta^5 + 50*zeta^3 - 5*zeta^2 - 51*zeta - 16)*q^465 +
(6*zeta^5 - 25*zeta^3 + 5*zeta^2 + 21*zeta)*q^466 + (19*zeta^5 - 46*zeta^3 + 
49*zeta^2 - 33*zeta - 135)*q^467 + (-15*zeta^5 + 47*zeta^3 - 28*zeta^2 - 6*zeta 
+ 85)*q^469 + (-7*zeta^5 + 31*zeta^3 - 4*zeta^2 - 30*zeta - 11)*q^470 + 
(5*zeta^5 - 20*zeta^3 + 5*zeta^2 + 15*zeta - 11)*q^471 + (zeta^5 - 15*zeta^3 - 
10*zeta^2 + 36*zeta + 3)*q^472 + (zeta^5 + 2*zeta^3 + 7*zeta^2 - 15*zeta - 
20)*q^473 + (-3*zeta^5 + 23*zeta^3 + 8*zeta^2 - 42*zeta - 4)*q^474 + (-5*zeta^5 
+ 24*zeta^3 - zeta^2 - 27*zeta + 3)*q^475 + (-7*zeta^5 + 38*zeta^3 + 3*zeta^2 - 
51*zeta + 10)*q^476 + (-3*zeta^5 + 17*zeta^3 + 2*zeta^2 - 24*zeta - 16)*q^477 + 
(19*zeta^5 - 79*zeta^3 + 16*zeta^2 + 66*zeta - 13)*q^478 + (zeta^5 - 7*zeta^3 - 
2*zeta^2 + 12*zeta - 14)*q^479 + (-5*zeta^5 + 15*zeta^3 - 10*zeta^2 + 33)*q^480 
+ (-10*zeta^5 + 39*zeta^3 - 11*zeta^2 - 27*zeta + 31)*q^482 + (zeta^5 - 6*zeta^3
- zeta^2 + 9*zeta + 15)*q^483 + (16*zeta^5 - 76*zeta^3 + 4*zeta^2 + 84*zeta + 
31)*q^484 + (5*zeta^5 - 25*zeta^3 + 30*zeta - 6)*q^485 + (13*zeta^5 - 51*zeta^3 
+ 14*zeta^2 + 36*zeta - 46)*q^486 + (-31*zeta^5 + 166*zeta^3 + 11*zeta^2 - 
219*zeta + 3)*q^487 + (4*zeta^5 - 21*zeta^3 - zeta^2 + 27*zeta - 14)*q^488 + 
(-15*zeta^5 + 43*zeta^3 - 32*zeta^2 + 6*zeta + 78)*q^489 + (2*zeta^5 - 8*zeta^3 
+ 2*zeta^2 + 6*zeta + 1)*q^490 + (-19*zeta^5 + 87*zeta^3 - 8*zeta^2 - 90*zeta - 
5)*q^491 + (21*zeta^5 - 91*zeta^3 + 14*zeta^2 + 84*zeta - 14)*q^492 + (4*zeta^5 
- 7*zeta^3 + 13*zeta^2 - 15*zeta - 33)*q^493 + (zeta^5 - zeta^3 + 4*zeta^2 - 
6*zeta - 15)*q^495 + (11*zeta^5 - 50*zeta^3 + 5*zeta^2 + 51*zeta + 16)*q^496 + 
(9*zeta^5 - 49*zeta^3 - 4*zeta^2 + 66*zeta + 66)*q^497 + (-5*zeta^5 + 27*zeta^3 
+ 2*zeta^2 - 36*zeta + 4)*q^498 + (15*zeta^5 - 54*zeta^3 + 21*zeta^2 + 27*zeta -
62)*q^499 + (-5*zeta^5 + 13*zeta^3 - 12*zeta^2 + 6*zeta - 10)*q^500 + 
(-18*zeta^5 + 94*zeta^3 + 4*zeta^2 - 120*zeta - 16)*q^501 + (-14*zeta^5 + 
60*zeta^3 - 10*zeta^2 - 54*zeta + 32)*q^502 + (24*zeta^5 - 141*zeta^3 - 
21*zeta^2 + 207*zeta - 12)*q^503 + 13*q^504 + (-8*zeta^5 + 34*zeta^3 - 6*zeta^2 
- 30*zeta - 9)*q^505 + (-2*zeta^5 + 9*zeta^3 - zeta^2 - 9*zeta + 1)*q^506 + 
(-3*zeta^5 + 34*zeta^3 + 19*zeta^2 - 75*zeta - 35)*q^508 + (11*zeta^5 - 
46*zeta^3 + 9*zeta^2 + 39*zeta - 12)*q^509 + (2*zeta^5 - 7*zeta^3 + 3*zeta^2 + 
3*zeta - 5)*q^510 + (5*zeta^5 - 32*zeta^3 - 7*zeta^2 + 51*zeta - 30)*q^511 + 
(9*zeta^5 - 27*zeta^3 + 18*zeta^2 - 59)*q^512 + (6*zeta^5 - 30*zeta^3 + 36*zeta 
- 5)*q^513 + (-2*zeta^5 - 8*zeta^3 - 18*zeta^2 + 42*zeta - 13)*q^514 + 
(-19*zeta^5 + 72*zeta^3 - 23*zeta^2 - 45*zeta + 96)*q^515 + (4*zeta^5 - 
22*zeta^3 - 2*zeta^2 + 30*zeta - 7)*q^516 + (-15*zeta^5 + 65*zeta^3 - 10*zeta^2 
- 60*zeta + 16)*q^517 + (7*zeta^5 - 36*zeta^3 - zeta^2 + 45*zeta + 17)*q^518 + 
(8*zeta^5 - 16*zeta^3 + 24*zeta^2 - 24*zeta - 32)*q^519 + (-10*zeta^5 + 
42*zeta^3 - 8*zeta^2 - 36*zeta + 19)*q^521 + (-11*zeta^5 + 53*zeta^3 - 2*zeta^2 
- 60*zeta - 23)*q^522 + (-13*zeta^5 + 60*zeta^3 - 5*zeta^2 - 63*zeta - 38)*q^523
+ (-3*zeta^5 + 21*zeta^3 + 6*zeta^2 - 36*zeta + 20)*q^524 + (-3*zeta^5 + zeta^3 
- 14*zeta^2 + 24*zeta + 18)*q^525 + (3*zeta^5 - 8*zeta^3 + 7*zeta^2 - 3*zeta - 
6)*q^526 + (-13*zeta^5 + 67*zeta^3 + 2*zeta^2 - 84*zeta - 1)*q^527 + (2*zeta^5 -
5*zeta^3 + 5*zeta^2 - 3*zeta - 12)*q^528 + (-4*zeta^5 + 28*zeta^3 + 8*zeta^2 - 
48*zeta - 6)*q^529 + (8*zeta^5 - 33*zeta^3 + 7*zeta^2 + 27*zeta)*q^530 + 
(11*zeta^5 - 41*zeta^3 + 14*zeta^2 + 24*zeta - 27)*q^531 + (-11*zeta^5 + 
51*zeta^3 - 4*zeta^2 - 54*zeta + 29)*q^532 + (-zeta^3 - zeta^2 + 3*zeta + 
8)*q^534 + (-10*zeta^5 + 49*zeta^3 - zeta^2 - 57*zeta - 30)*q^535 + (2*zeta^5 - 
5*zeta^3 + 5*zeta^2 - 3*zeta - 32)*q^536 + (-10*zeta^5 + 56*zeta^3 + 6*zeta^2 - 
78*zeta - 9)*q^537 + (-4*zeta^5 + 13*zeta^3 - 7*zeta^2 - 3*zeta + 21)*q^538 + 
(zeta^5 - 8*zeta^3 - 3*zeta^2 + 15*zeta + 1)*q^539 + (7*zeta^5 - 41*zeta^3 - 
6*zeta^2 + 60*zeta - 15)*q^540 + (-6*zeta^3 - 6*zeta^2 + 18*zeta + 33)*q^541 + 
(-2*zeta^5 + 15*zeta^3 + 5*zeta^2 - 27*zeta + 14)*q^542 + (38*zeta^5 - 
167*zeta^3 + 23*zeta^2 + 159*zeta)*q^543 + (-14*zeta^5 + 55*zeta^3 - 15*zeta^2 -
39*zeta + 19)*q^544 + (6*zeta^5 - 20*zeta^3 + 10*zeta^2 + 6*zeta - 34)*q^545 + 
(12*zeta^5 - 53*zeta^3 + 7*zeta^2 + 51*zeta - 34)*q^547 + (-8*zeta^5 + 40*zeta^3
- 48*zeta - 36)*q^548 + (6*zeta^5 - 35*zeta^3 - 5*zeta^2 + 51*zeta + 46)*q^549 +
(11*zeta^5 - 55*zeta^3 + 66*zeta + 8)*q^550 + (4*zeta^5 - 10*zeta^3 + 10*zeta^2 
- 6*zeta - 35)*q^551 + (6*zeta^5 - 35*zeta^3 - 5*zeta^2 + 51*zeta - 3)*q^552 + 
(-2*zeta^5 + 21*zeta^3 + 11*zeta^2 - 45*zeta - 6)*q^553 + (-5*zeta^5 + 30*zeta^3
+ 5*zeta^2 - 45*zeta + 5)*q^554 + (-2*zeta^5 + 9*zeta^3 - zeta^2 - 9*zeta - 
3)*q^555 + (-28*zeta^5 + 119*zeta^3 - 21*zeta^2 - 105*zeta)*q^556 + (11*zeta^5 -
53*zeta^3 + 2*zeta^2 + 60*zeta + 38)*q^557 + (-11*zeta^5 + 44*zeta^3 - 11*zeta^2
- 33*zeta + 38)*q^558 + (-7*zeta^5 + 24*zeta^3 - 11*zeta^2 - 9*zeta + 42)*q^560 
+ (-15*zeta^5 + 64*zeta^3 - 11*zeta^2 - 57*zeta + 9)*q^561 + (2*zeta^5 - 
7*zeta^3 + 3*zeta^2 + 3*zeta)*q^562 + (3*zeta^5 - 22*zeta^3 - 7*zeta^2 + 39*zeta
- 22)*q^563 + (-9*zeta^5 + 23*zeta^3 - 22*zeta^2 + 12*zeta + 54)*q^564 + 
(8*zeta^5 - 48*zeta^3 - 8*zeta^2 + 72*zeta - 15)*q^565 + (8*zeta^5 - 34*zeta^3 +
6*zeta^2 + 30*zeta + 20)*q^566 + (13*zeta^5 - 42*zeta^3 + 23*zeta^2 + 9*zeta - 
60)*q^567 + (13*zeta^5 - 85*zeta^3 - 20*zeta^2 + 138*zeta - 16)*q^568 + 
(-13*zeta^5 + 62*zeta^3 - 3*zeta^2 - 69*zeta - 44)*q^569 + (2*zeta^5 - 7*zeta^3 
+ 3*zeta^2 + 3*zeta - 4)*q^570 + (7*zeta^5 - 32*zeta^3 + 3*zeta^2 + 33*zeta - 
34)*q^571 + (9*zeta^5 - 18*zeta^3 + 27*zeta^2 - 27*zeta - 58)*q^573 + 
(-12*zeta^5 + 50*zeta^3 - 10*zeta^2 - 42*zeta + 17)*q^574 + (-3*zeta^5 + 
17*zeta^3 + 2*zeta^2 - 24*zeta - 25)*q^575 + (-6*zeta^5 + 23*zeta^3 - 7*zeta^2 -
15*zeta + 2)*q^576 + (8*zeta^5 - 35*zeta^3 + 5*zeta^2 + 33*zeta - 2)*q^577 + 
(11*zeta^3 + 11*zeta^2 - 33*zeta + 6)*q^578 + (12*zeta^5 - 62*zeta^3 - 2*zeta^2 
+ 78*zeta + 18)*q^579 + (14*zeta^5 - 47*zeta^3 + 23*zeta^2 + 15*zeta - 89)*q^580
+ (-14*zeta^5 + 87*zeta^3 + 17*zeta^2 - 135*zeta + 32)*q^581 + (-10*zeta^5 + 
47*zeta^3 - 3*zeta^2 - 51*zeta - 9)*q^582 + (-35*zeta^5 + 151*zeta^3 - 24*zeta^2
- 138*zeta + 11)*q^583 + (-11*zeta^5 + 25*zeta^3 - 30*zeta^2 + 24*zeta + 
84)*q^584 + (9*zeta^5 - 46*zeta^3 - zeta^2 + 57*zeta)*q^586 + (-12*zeta^5 + 
39*zeta^3 - 21*zeta^2 - 9*zeta + 79)*q^587 + (3*zeta^5 - 12*zeta^3 + 3*zeta^2 + 
9*zeta - 5)*q^588 + (-8*zeta^5 + 40*zeta^3 - 48*zeta + 7)*q^589 + (-8*zeta^5 + 
41*zeta^3 + zeta^2 - 51*zeta + 9)*q^590 + (-3*zeta^5 + 18*zeta^3 + 3*zeta^2 - 
27*zeta + 8)*q^591 + (2*zeta^5 - 9*zeta^3 + zeta^2 + 9*zeta + 3)*q^592 + 
(14*zeta^5 - 70*zeta^3 + 84*zeta - 48)*q^593 + (-7*zeta^5 + 32*zeta^3 - 3*zeta^2
- 33*zeta - 6)*q^594 + (7*zeta^5 - 29*zeta^3 + 6*zeta^2 + 24*zeta + 1)*q^595 + 
(6*zeta^5 - 21*zeta^3 + 9*zeta^2 + 9*zeta - 18)*q^596 + (-11*zeta^3 - 11*zeta^2 
+ 33*zeta + 5)*q^597 + (-14*zeta^5 + 51*zeta^3 - 19*zeta^2 - 27*zeta + 70)*q^599
+ (23*zeta^5 - 102*zeta^3 + 13*zeta^2 + 99*zeta + 2)*q^600 + (6*zeta^5 - 
30*zeta^3 + 36*zeta + 27)*q^601 + (5*zeta^5 - 15*zeta^3 + 10*zeta^2 + 11)*q^602 
+ (-6*zeta^5 + 27*zeta^3 - 3*zeta^2 - 27*zeta + 34)*q^603 + (-19*zeta^5 + 
102*zeta^3 + 7*zeta^2 - 135*zeta + 20)*q^604 + (-6*zeta^5 + 40*zeta^3 + 
10*zeta^2 - 66*zeta + 21)*q^605 + (10*zeta^5 - 33*zeta^3 + 17*zeta^2 + 9*zeta - 
40)*q^606 + (-22*zeta^5 + 119*zeta^3 + 9*zeta^2 - 159*zeta - 13)*q^607 + 
(-8*zeta^5 + 29*zeta^3 - 11*zeta^2 - 15*zeta + 12)*q^608 + (-6*zeta^5 + 
22*zeta^3 - 8*zeta^2 - 12*zeta + 33)*q^609 + (11*zeta^5 - 48*zeta^3 + 7*zeta^2 +
45*zeta - 37)*q^610 + (5*zeta^5 - 34*zeta^3 - 9*zeta^2 + 57*zeta + 11)*q^612 + 
(19*zeta^5 - 88*zeta^3 + 7*zeta^2 + 93*zeta + 14)*q^613 + (-12*zeta^5 + 
60*zeta^3 - 72*zeta - 26)*q^614 + (4*zeta^5 - 25*zeta^3 - 5*zeta^2 + 39*zeta - 
4)*q^615 + (-7*zeta^5 + 12*zeta^3 - 23*zeta^2 + 27*zeta + 49)*q^616 + (20*zeta^5
- 120*zeta^3 - 20*zeta^2 + 180*zeta + 1)*q^617 + (-5*zeta^5 + 26*zeta^3 + zeta^2
- 33*zeta + 3)*q^618 + (-6*zeta^5 + 27*zeta^3 - 3*zeta^2 - 27*zeta + 25)*q^619 +
(-9*zeta^5 + 53*zeta^3 + 8*zeta^2 - 78*zeta + 21)*q^620 + (10*zeta^5 - 49*zeta^3
+ zeta^2 + 57*zeta + 34)*q^621 + (-4*zeta^5 + 34*zeta^3 + 14*zeta^2 - 66*zeta - 
65)*q^622 + (-13*zeta^5 + 44*zeta^3 - 21*zeta^2 - 15*zeta + 87)*q^623 + 
(19*zeta^5 - 59*zeta^3 + 36*zeta^2 + 6*zeta - 108)*q^625 + (16*zeta^5 - 
67*zeta^3 + 13*zeta^2 + 57*zeta - 11)*q^626 + (-zeta^5 + 3*zeta^3 - 2*zeta^2 + 
3)*q^627 + (3*zeta^5 - 5*zeta^3 + 10*zeta^2 - 12*zeta + 6)*q^628 + (-3*zeta^5 + 
24*zeta^3 + 9*zeta^2 - 45*zeta - 8)*q^629 + (2*zeta^5 - 2*zeta^3 + 8*zeta^2 - 
12*zeta + 9)*q^630 + (18*zeta^5 - 87*zeta^3 + 3*zeta^2 + 99*zeta + 35)*q^631 + 
(-21*zeta^3 - 21*zeta^2 + 63*zeta + 32)*q^632 + (-12*zeta^5 + 67*zeta^3 + 
7*zeta^2 - 93*zeta)*q^633 + (-4*zeta^5 + 6*zeta^3 - 14*zeta^2 + 18*zeta + 
26)*q^634 + (-9*zeta^5 + 49*zeta^3 + 4*zeta^2 - 66*zeta - 48)*q^635 + (-6*zeta^5
+ 14*zeta^3 - 16*zeta^2 + 12*zeta + 23)*q^636 + (zeta^5 - 13*zeta^3 - 8*zeta^2 +
30*zeta + 5)*q^638 + (33*zeta^5 - 148*zeta^3 + 17*zeta^2 + 147*zeta + 34)*q^639 
+ (-20*zeta^5 + 89*zeta^3 - 11*zeta^2 - 87*zeta - 31)*q^640 + (zeta^5 - 9*zeta^3
- 4*zeta^2 + 18*zeta + 26)*q^641 + (-2*zeta^5 + 8*zeta^3 - 2*zeta^2 - 6*zeta + 
3)*q^642 + (5*zeta^5 - 42*zeta^3 - 17*zeta^2 + 81*zeta - 3)*q^643 + (9*zeta^5 - 
53*zeta^3 - 8*zeta^2 + 78*zeta - 14)*q^644 + (8*zeta^5 - 30*zeta^3 + 10*zeta^2 +
18*zeta - 41)*q^645 + (17*zeta^5 - 72*zeta^3 + 13*zeta^2 + 63*zeta + 5)*q^646 + 
(28*zeta^5 - 124*zeta^3 + 16*zeta^2 + 120*zeta + 8)*q^647 + (-16*zeta^5 + 
65*zeta^3 - 15*zeta^2 - 51*zeta + 29)*q^648 + (13*zeta^5 - 47*zeta^3 + 18*zeta^2
+ 24*zeta - 43)*q^649 + (-2*zeta^5 - 6*zeta^3 - 16*zeta^2 + 36*zeta + 13)*q^651 
+ (11*zeta^3 + 11*zeta^2 - 33*zeta - 62)*q^652 + (-29*zeta^5 + 131*zeta^3 - 
14*zeta^2 - 132*zeta - 12)*q^653 + (-12*zeta^5 + 66*zeta^3 + 6*zeta^2 - 90*zeta 
- 10)*q^654 + (-18*zeta^5 + 65*zeta^3 - 25*zeta^2 - 33*zeta + 98)*q^655 + 
(-4*zeta^5 + 25*zeta^3 + 5*zeta^2 - 39*zeta + 4)*q^656 + (5*zeta^5 - 47*zeta^3 -
22*zeta^2 + 96*zeta - 22)*q^657 + (11*zeta^5 - 39*zeta^3 + 16*zeta^2 + 18*zeta -
49)*q^658 + (zeta^5 + 2*zeta^3 + 7*zeta^2 - 15*zeta + 33)*q^659 + (-zeta^5 + 
4*zeta^3 - zeta^2 - 3*zeta - 3)*q^660 + (42*zeta^5 - 193*zeta^3 + 17*zeta^2 + 
201*zeta + 51)*q^661 + (11*zeta^5 - 46*zeta^3 + 9*zeta^2 + 39*zeta - 29)*q^662 +
(10*zeta^5 - 31*zeta^3 + 19*zeta^2 + 3*zeta - 74)*q^664 + (10*zeta^5 - 43*zeta^3
+ 7*zeta^2 + 39*zeta + 9)*q^665 + (-4*zeta^5 + 24*zeta^3 + 4*zeta^2 - 36*zeta - 
19)*q^666 + (-3*zeta^5 + 30*zeta^3 + 15*zeta^2 - 63*zeta + 31)*q^667 + 
(-24*zeta^5 + 102*zeta^3 - 18*zeta^2 - 90*zeta + 68)*q^668 + (3*zeta^5 - 
21*zeta^3 - 6*zeta^2 + 36*zeta - 6)*q^669 + (3*zeta^5 - 22*zeta^3 - 7*zeta^2 + 
39*zeta - 11)*q^670 + (-12*zeta^5 + 45*zeta^3 - 15*zeta^2 - 27*zeta + 47)*q^671 
+ (13*zeta^5 - 66*zeta^3 - zeta^2 + 81*zeta + 19)*q^672 + (35*zeta^5 - 
164*zeta^3 + 11*zeta^2 + 177*zeta + 73)*q^673 + (16*zeta^5 - 71*zeta^3 + 
9*zeta^2 + 69*zeta)*q^674 + (zeta^5 - 4*zeta^3 + zeta^2 + 3*zeta - 15)*q^675 + 
(4*zeta^5 - 22*zeta^3 - 2*zeta^2 + 30*zeta - 36)*q^677 + (13*zeta^5 - 54*zeta^3 
+ 11*zeta^2 + 45*zeta - 17)*q^678 + (-17*zeta^5 + 81*zeta^3 - 4*zeta^2 - 90*zeta
- 25)*q^679 + (5*zeta^5 - 24*zeta^3 + zeta^2 + 27*zeta - 4)*q^680 + (zeta^5 + 
5*zeta^2 - 9*zeta)*q^681 + (15*zeta^5 - 74*zeta^3 + zeta^2 + 87*zeta + 12)*q^682
+ (-17*zeta^5 + 95*zeta^3 + 10*zeta^2 - 132*zeta + 4)*q^683 + (6*zeta^5 - 
37*zeta^3 - 7*zeta^2 + 57*zeta + 10)*q^684 + (8*zeta^5 - 56*zeta^3 - 16*zeta^2 +
96*zeta - 28)*q^685 + (-15*zeta^5 + 77*zeta^3 + 2*zeta^2 - 96*zeta - 43)*q^686 +
(-37*zeta^5 + 163*zeta^3 - 22*zeta^2 - 156*zeta + 7)*q^687 + (-8*zeta^5 + 
30*zeta^3 - 10*zeta^2 - 18*zeta + 41)*q^688 + (3*zeta^5 - 12*zeta^3 + 3*zeta^2 +
9*zeta - 14)*q^690 + (21*zeta^5 - 92*zeta^3 + 13*zeta^2 + 87*zeta + 27)*q^691 + 
(-40*zeta^5 + 168*zeta^3 - 32*zeta^2 - 144*zeta + 8)*q^692 + (7*zeta^5 - 
46*zeta^3 - 11*zeta^2 + 75*zeta - 1)*q^693 + (5*zeta^5 - 30*zeta^3 - 5*zeta^2 + 
45*zeta + 7)*q^694 + (zeta^5 - 22*zeta^3 - 17*zeta^2 + 57*zeta - 29)*q^695 + 
(14*zeta^5 - 83*zeta^3 - 13*zeta^2 + 123*zeta - 2)*q^696 + (-9*zeta^5 + 
26*zeta^3 - 19*zeta^2 + 3*zeta + 43)*q^697 + (-11*zeta^5 + 54*zeta^3 - zeta^2 - 
63*zeta - 4)*q^698 + (-10*zeta^5 + 46*zeta^3 - 4*zeta^2 - 48*zeta - 13)*q^699 + 
(18*zeta^5 - 85*zeta^3 + 5*zeta^2 + 93*zeta + 28)*q^700 + (-4*zeta^5 - 4*zeta^3 
- 24*zeta^2 + 48*zeta + 25)*q^701 + O(q^702), 1/6*(zeta^5 - 5*zeta^3 + 6*zeta)*q
+ 1/6*(-2*zeta^5 + 6*zeta^3 - 4*zeta^2 + 9)*q^2 + 1/6*(3*zeta^5 - 14*zeta^3 + 
zeta^2 + 15*zeta + 3)*q^3 + 1/6*(-5*zeta^5 + 21*zeta^3 - 4*zeta^2 - 18*zeta - 
4)*q^4 + 1/6*(3*zeta^3 + 3*zeta^2 - 9*zeta - 8)*q^5 + 1/6*(-3*zeta^5 + 14*zeta^3
- zeta^2 - 15*zeta - 2)*q^6 + 1/6*(-4*zeta^5 + 17*zeta^3 - 3*zeta^2 - 15*zeta - 
5)*q^7 + 1/6*(-5*zeta^5 + 21*zeta^3 - 4*zeta^2 - 18*zeta + 15)*q^8 + 
1/6*(6*zeta^5 - 29*zeta^3 + zeta^2 + 33*zeta)*q^9 + 1/6*(2*zeta^5 - 5*zeta^3 + 
5*zeta^2 - 3*zeta - 11)*q^10 + 1/6*(3*zeta^5 - 16*zeta^3 - zeta^2 + 21*zeta + 
7)*q^11 + 1/6*(5*zeta^3 + 5*zeta^2 - 15*zeta - 9)*q^12 + 1/6*(-7*zeta^5 + 
33*zeta^3 - 2*zeta^2 - 36*zeta + 14)*q^14 + 1/6*(-zeta^5 + 6*zeta^3 + zeta^2 - 
9*zeta - 8)*q^15 + 1/6*(zeta^5 - 6*zeta^3 - zeta^2 + 9*zeta + 8)*q^16 + 
1/6*(9*zeta^5 - 39*zeta^3 + 6*zeta^2 + 36*zeta + 5)*q^17 + 1/6*(7*zeta^5 - 
36*zeta^3 - zeta^2 + 45*zeta - 6)*q^18 + 1/6*(8*zeta^5 - 32*zeta^3 + 8*zeta^2 + 
24*zeta + 5)*q^19 + 1/6*(5*zeta^5 - 17*zeta^3 + 8*zeta^2 + 6*zeta + 7)*q^20 + 
1/6*(2*zeta^5 - 2*zeta^3 + 8*zeta^2 - 12*zeta - 17)*q^21 + 1/6*(-11*zeta^5 + 
50*zeta^3 - 5*zeta^2 - 51*zeta - 4)*q^22 + 1/6*(-6*zeta^5 + 25*zeta^3 - 5*zeta^2
- 21*zeta)*q^23 + 1/6*(-5*zeta^5 + 23*zeta^3 - 2*zeta^2 - 24*zeta)*q^24 + 
1/6*(-7*zeta^5 + 28*zeta^3 - 7*zeta^2 - 21*zeta + 23)*q^25 + 1/6*(7*zeta^5 - 
30*zeta^3 + 5*zeta^2 + 27*zeta - 22)*q^27 + 1/6*(2*zeta^5 - 2*zeta^3 + 8*zeta^2 
- 12*zeta - 17)*q^28 + 1/6*(-11*zeta^5 + 53*zeta^3 - 2*zeta^2 - 60*zeta - 
23)*q^29 + 1/6*(2*zeta^5 - 7*zeta^3 + 3*zeta^2 + 3*zeta + 2)*q^30 + 
1/6*(-11*zeta^5 + 44*zeta^3 - 11*zeta^2 - 33*zeta + 38)*q^31 + 1/6*(-4*zeta^5 + 
7*zeta^3 - 13*zeta^2 + 15*zeta - 6)*q^32 + 1/6*(5*zeta^5 - 31*zeta^3 - 6*zeta^2 
+ 48*zeta + 3)*q^33 + 1/6*(15*zeta^5 - 76*zeta^3 - zeta^2 + 93*zeta - 19)*q^34 +
1/6*(2*zeta^5 - 2*zeta^3 + 8*zeta^2 - 12*zeta + 9)*q^35 + 1/6*(4*zeta^5 - 
29*zeta^3 - 9*zeta^2 + 51*zeta + 42)*q^36 + 1/6*(-4*zeta^5 + 24*zeta^3 + 
4*zeta^2 - 36*zeta - 19)*q^37 + 1/6*(16*zeta^5 - 83*zeta^3 - 3*zeta^2 + 105*zeta
- 18)*q^38 + 1/6*(7*zeta^5 - 32*zeta^3 + 3*zeta^2 + 33*zeta - 21)*q^40 + 
1/6*(16*zeta^5 - 69*zeta^3 + 11*zeta^2 + 63*zeta - 4)*q^41 + 1/6*(-3*zeta^5 + 
16*zeta^3 + zeta^2 - 21*zeta - 7)*q^42 + 1/6*(-11*zeta^5 + 52*zeta^3 - 3*zeta^2 
- 57*zeta + 4)*q^43 + 1/6*(-8*zeta^5 + 47*zeta^3 + 7*zeta^2 - 69*zeta + 3)*q^44 
+ 1/6*(-7*zeta^5 + 34*zeta^3 - zeta^2 - 39*zeta + 5)*q^45 + 1/6*(-6*zeta^5 + 
26*zeta^3 - 4*zeta^2 - 24*zeta + 1)*q^46 + 1/6*(-2*zeta^5 + 9*zeta^3 - zeta^2 - 
9*zeta - 6)*q^47 + 1/6*(-2*zeta^5 + 11*zeta^3 + zeta^2 - 15*zeta + 1)*q^48 + 
1/6*(zeta^5 - 8*zeta^3 - 3*zeta^2 + 15*zeta + 12)*q^49 + 1/6*(5*zeta^5 - 
13*zeta^3 + 12*zeta^2 - 6*zeta - 33)*q^50 + 1/6*(zeta^5 - 12*zeta^3 - 7*zeta^2 +
27*zeta + 10)*q^51 + 1/6*(-zeta^5 - 13*zeta^3 - 18*zeta^2 + 48*zeta + 35)*q^53 +
1/6*(-2*zeta^5 - zeta^3 - 11*zeta^2 + 21*zeta + 36)*q^54 + 1/6*(5*zeta^5 - 
18*zeta^3 + 7*zeta^2 + 9*zeta - 10)*q^55 + 1/6*(13*zeta^5 - 65*zeta^3 + 
78*zeta)*q^56 + 1/6*(3*zeta^5 - 17*zeta^3 - 2*zeta^2 + 24*zeta + 1)*q^57 + 
1/6*(9*zeta^5 - 38*zeta^3 + 7*zeta^2 + 33*zeta + 9)*q^58 + 1/6*(13*zeta^5 - 
48*zeta^3 + 17*zeta^2 + 27*zeta + 3)*q^59 + 1/6*(zeta^5 - 8*zeta^3 - 3*zeta^2 + 
15*zeta + 8)*q^60 + 1/6*(-8*zeta^5 + 24*zeta^3 - 16*zeta^2 - 11)*q^61 + 
1/6*(6*zeta^5 - 13*zeta^3 + 17*zeta^2 - 15*zeta - 50)*q^62 + 1/6*(9*zeta^5 - 
48*zeta^3 - 3*zeta^2 + 63*zeta + 34)*q^63 + 1/6*(-13*zeta^5 + 74*zeta^3 + 
9*zeta^2 - 105*zeta + 2)*q^64 + 1/6*(-zeta^5 + 14*zeta^3 + 9*zeta^2 - 33*zeta - 
11)*q^66 + 1/6*(-16*zeta^5 + 73*zeta^3 - 7*zeta^2 - 75*zeta - 17)*q^67 + 
1/6*(-3*zeta^5 - 7*zeta^3 - 22*zeta^2 + 48*zeta + 65)*q^68 + 1/6*(-3*zeta^5 + 
13*zeta^3 - 2*zeta^2 - 12*zeta - 6)*q^69 + 1/6*(10*zeta^5 - 49*zeta^3 + zeta^2 +
57*zeta - 20)*q^70 + 1/6*(4*zeta^5 - 19*zeta^3 + zeta^2 + 21*zeta - 16)*q^71 + 
1/6*(-12*zeta^5 + 52*zeta^3 - 8*zeta^2 - 48*zeta - 11)*q^72 + 1/6*(-17*zeta^5 + 
85*zeta^3 - 102*zeta + 39)*q^73 + 1/6*(21*zeta^5 - 93*zeta^3 + 12*zeta^2 + 
90*zeta + 8)*q^74 + 1/6*(-10*zeta^5 + 45*zeta^3 - 5*zeta^2 - 45*zeta + 2)*q^75 +
1/6*(-8*zeta^5 + 13*zeta^3 - 27*zeta^2 + 33*zeta + 71)*q^76 + 1/6*(-4*zeta^5 + 
30*zeta^3 + 10*zeta^2 - 54*zeta - 5)*q^77 + 1/6*(-15*zeta^5 + 90*zeta^3 + 
15*zeta^2 - 135*zeta - 1)*q^79 + 1/6*(-5*zeta^5 + 25*zeta^3 - 30*zeta - 17)*q^80
+ 1/6*(17*zeta^5 - 67*zeta^3 + 18*zeta^2 + 48*zeta - 25)*q^81 + 1/6*(-2*zeta^5 +
16*zeta^3 + 6*zeta^2 - 30*zeta - 5)*q^82 + 1/6*(19*zeta^5 - 82*zeta^3 + 
13*zeta^2 + 75*zeta - 65)*q^83 + 1/6*(-zeta^5 + 14*zeta^3 + 9*zeta^2 - 33*zeta +
2)*q^84 + 1/6*(-10*zeta^5 + 39*zeta^3 - 11*zeta^2 - 27*zeta - 7)*q^85 + 
1/6*(-14*zeta^5 + 77*zeta^3 + 7*zeta^2 - 105*zeta + 3)*q^86 + 1/6*(-4*zeta^5 + 
22*zeta^3 + 2*zeta^2 - 30*zeta - 11)*q^87 + 1/6*(-13*zeta^5 + 65*zeta^3 - 
78*zeta - 26)*q^88 + 1/6*(-7*zeta^5 + 43*zeta^3 + 8*zeta^2 - 66*zeta - 58)*q^89 
+ 1/6*(-8*zeta^5 + 46*zeta^3 + 6*zeta^2 - 66*zeta - 3)*q^90 + 1/6*(-12*zeta^5 + 
53*zeta^3 - 7*zeta^2 - 51*zeta + 36)*q^92 + 1/6*(-12*zeta^5 + 54*zeta^3 - 
6*zeta^2 - 54*zeta + 5)*q^93 + 1/6*(12*zeta^5 - 45*zeta^3 + 15*zeta^2 + 27*zeta 
- 23)*q^94 + 1/6*(-11*zeta^5 + 42*zeta^3 - 13*zeta^2 - 27*zeta - 10)*q^95 + 
1/6*(-7*zeta^5 + 25*zeta^3 - 10*zeta^2 - 12*zeta + 18)*q^96 + 1/6*(-24*zeta^5 + 
111*zeta^3 - 9*zeta^2 - 117*zeta - 7)*q^97 + 1/6*(-10*zeta^5 + 43*zeta^3 - 
7*zeta^2 - 39*zeta - 4)*q^98 + 1/6*(3*zeta^5 - 29*zeta^3 - 14*zeta^2 + 60*zeta +
20)*q^99 + 1/6*(19*zeta^5 - 90*zeta^3 + 5*zeta^2 + 99*zeta + 3)*q^100 + 
1/6*(23*zeta^5 - 85*zeta^3 + 30*zeta^2 + 48*zeta - 52)*q^101 + 1/6*(2*zeta^5 - 
17*zeta^3 - 7*zeta^2 + 33*zeta + 26)*q^102 + 1/6*(19*zeta^5 - 85*zeta^3 + 
10*zeta^2 + 84*zeta - 57)*q^103 + 1/6*(-zeta^5 + zeta^3 - 4*zeta^2 + 6*zeta + 
15)*q^105 + 1/6*(3*zeta^5 - 28*zeta^3 - 13*zeta^2 + 57*zeta + 44)*q^106 + 
1/6*(-zeta^5 - 6*zeta^3 - 11*zeta^2 + 27*zeta + 42)*q^107 + 1/6*(-18*zeta^5 + 
84*zeta^3 - 6*zeta^2 - 90*zeta + 1)*q^108 + 1/3*(2*zeta^5 - 3*zeta^3 + 7*zeta^2 
- 9*zeta - 10)*q^109 + 1/6*(12*zeta^5 - 51*zeta^3 + 9*zeta^2 + 45*zeta + 
2)*q^110 + 1/6*(-5*zeta^5 + 34*zeta^3 + 9*zeta^2 - 57*zeta - 4)*q^111 + 
1/6*(zeta^5 - zeta^3 + 4*zeta^2 - 6*zeta - 15)*q^112 + 1/6*(-4*zeta^5 + 
11*zeta^3 - 9*zeta^2 + 3*zeta + 10)*q^113 + 1/6*(-3*zeta^5 + 4*zeta^3 - 
11*zeta^2 + 15*zeta + 30)*q^114 + 1/6*(11*zeta^5 - 48*zeta^3 + 7*zeta^2 + 
45*zeta + 13)*q^115 + 1/6*(-2*zeta^5 - 10*zeta^3 - 20*zeta^2 + 48*zeta + 
49)*q^116 + 1/6*(30*zeta^5 - 164*zeta^3 - 14*zeta^2 + 222*zeta - 19)*q^118 + 
1/6*(-13*zeta^3 - 13*zeta^2 + 39*zeta + 39)*q^119 + 1/6*(-6*zeta^5 + 25*zeta^3 -
5*zeta^2 - 21*zeta)*q^120 + 1/6*(14*zeta^5 - 73*zeta^3 - 3*zeta^2 + 93*zeta - 
4)*q^121 + 1/6*(-24*zeta^5 + 125*zeta^3 + 5*zeta^2 - 159*zeta + 30)*q^122 + 
1/6*(19*zeta^5 - 103*zeta^3 - 8*zeta^2 + 138*zeta + 16)*q^123 + 1/6*(28*zeta^5 -
134*zeta^3 + 6*zeta^2 + 150*zeta + 1)*q^124 + 1/6*(9*zeta^5 - 56*zeta^3 - 
11*zeta^2 + 87*zeta + 12)*q^125 + 1/6*(-20*zeta^5 + 85*zeta^3 - 15*zeta^2 - 
75*zeta - 12)*q^126 + 1/6*(11*zeta^5 - 74*zeta^3 - 19*zeta^2 + 123*zeta + 
91)*q^127 + 1/6*(24*zeta^5 - 87*zeta^3 + 33*zeta^2 + 45*zeta - 52)*q^128 + 
1/6*(-7*zeta^5 + 32*zeta^3 - 3*zeta^2 - 33*zeta + 21)*q^129 + 1/6*(9*zeta^5 - 
42*zeta^3 + 3*zeta^2 + 45*zeta - 34)*q^131 + 1/6*(17*zeta^5 - 69*zeta^3 + 
16*zeta^2 + 54*zeta - 21)*q^132 + 1/6*(-8*zeta^5 + 21*zeta^3 - 19*zeta^2 + 
9*zeta + 42)*q^133 + 1/6*(5*zeta^5 - 23*zeta^3 + 2*zeta^2 + 24*zeta + 9)*q^134 +
1/6*(-12*zeta^5 + 52*zeta^3 - 8*zeta^2 - 48*zeta + 43)*q^135 + 1/6*(-23*zeta^5 +
104*zeta^3 - 11*zeta^2 - 105*zeta - 7)*q^136 + 1/3*(2*zeta^3 + 2*zeta^2 - 6*zeta
+ 8)*q^137 + 1/6*(-5*zeta^5 + 21*zeta^3 - 4*zeta^2 - 18*zeta + 15)*q^138 + 
1/6*(3*zeta^5 + 11*zeta^3 + 26*zeta^2 - 60*zeta + 11)*q^139 + 1/6*(-14*zeta^5 + 
53*zeta^3 - 17*zeta^2 - 33*zeta + 15)*q^140 + 1/6*(-23*zeta^5 + 104*zeta^3 - 
11*zeta^2 - 105*zeta - 12)*q^141 + 1/6*(5*zeta^5 - 42*zeta^3 - 17*zeta^2 + 
81*zeta + 28)*q^142 + 1/6*(6*zeta^5 - 25*zeta^3 + 5*zeta^2 + 21*zeta - 22)*q^144
+ 1/6*(16*zeta^5 - 80*zeta^3 + 96*zeta + 57)*q^145 + 1/6*(-5*zeta^5 + 54*zeta^3 
+ 29*zeta^2 - 117*zeta - 114)*q^146 + 1/6*(-3*zeta^3 - 3*zeta^2 + 9*zeta + 
1)*q^147 + 1/6*(17*zeta^5 - 97*zeta^3 - 12*zeta^2 + 138*zeta - 7)*q^148 + 
1/2*(-3*zeta^5 + 11*zeta^3 - 4*zeta^2 - 6*zeta - 1)*q^149 + 1/6*(12*zeta^5 - 
60*zeta^3 + 72*zeta + 5)*q^150 + 1/6*(29*zeta^5 - 129*zeta^3 + 16*zeta^2 + 
126*zeta - 86)*q^151 + 1/6*(-21*zeta^5 + 91*zeta^3 - 14*zeta^2 - 84*zeta - 
3)*q^152 + 1/6*(-3*zeta^5 + 32*zeta^3 + 17*zeta^2 - 69*zeta - 65)*q^153 + 
1/6*(-7*zeta^5 + 46*zeta^3 + 11*zeta^2 - 75*zeta - 51)*q^154 + 1/6*(16*zeta^5 - 
70*zeta^3 + 10*zeta^2 + 66*zeta - 57)*q^155 + 1/6*(-7*zeta^5 + 46*zeta^3 + 
11*zeta^2 - 75*zeta - 12)*q^157 + 1/6*(zeta^5 + 41*zeta^3 + 46*zeta^2 - 132*zeta
- 151)*q^158 + 1/6*(-23*zeta^5 + 95*zeta^3 - 20*zeta^2 - 78*zeta + 32)*q^159 + 
1/6*(11*zeta^5 - 36*zeta^3 + 19*zeta^2 + 9*zeta + 21)*q^160 + 1/6*(-13*zeta^5 + 
52*zeta^3 - 13*zeta^2 - 39*zeta + 52)*q^161 + 1/6*(15*zeta^5 - 56*zeta^3 + 
19*zeta^2 + 33*zeta + 1)*q^162 + 1/6*(-5*zeta^5 + 17*zeta^3 - 8*zeta^2 - 6*zeta 
+ 19)*q^163 + 1/6*(14*zeta^5 - 49*zeta^3 + 21*zeta^2 + 21*zeta - 56)*q^164 + 
1/6*(4*zeta^5 - 17*zeta^3 + 3*zeta^2 + 15*zeta + 5)*q^165 + 1/6*(zeta^5 - 
29*zeta^3 - 24*zeta^2 + 78*zeta + 93)*q^166 + 1/3*(-15*zeta^5 + 51*zeta^3 - 
24*zeta^2 - 18*zeta + 49)*q^167 + 1/6*(-13*zeta^3 - 13*zeta^2 + 39*zeta + 
13)*q^168 + 1/6*(-21*zeta^5 + 109*zeta^3 + 4*zeta^2 - 138*zeta + 24)*q^170 + 
1/6*(zeta^5 + 17*zeta^3 + 22*zeta^2 - 60*zeta - 77)*q^171 + 1/6*(-5*zeta^5 + 
49*zeta^3 + 24*zeta^2 - 102*zeta - 104)*q^172 + 1/3*(4*zeta^5 + 20*zeta^2 - 
36*zeta + 8)*q^173 + 1/6*(-2*zeta^5 - 3*zeta^3 - 13*zeta^2 + 27*zeta + 26)*q^174
+ 1/6*(19*zeta^5 - 97*zeta^3 - 2*zeta^2 + 120*zeta + 1)*q^175 + 1/6*(-4*zeta^5 +
17*zeta^3 - 3*zeta^2 - 15*zeta - 5)*q^176 + 1/6*(14*zeta^5 - 55*zeta^3 + 
15*zeta^2 + 39*zeta - 40)*q^177 + 1/6*(18*zeta^5 - 67*zeta^3 + 23*zeta^2 + 
39*zeta + 15)*q^178 + 1/6*(-13*zeta^5 + 65*zeta^3 - 78*zeta - 26)*q^179 + 
1/6*(-5*zeta^5 + 40*zeta^3 + 15*zeta^2 - 75*zeta - 73)*q^180 + 1/6*(-4*zeta^5 + 
35*zeta^3 + 15*zeta^2 - 69*zeta - 1)*q^181 + 1/6*(-5*zeta^5 + 23*zeta^3 - 
2*zeta^2 - 24*zeta + 1)*q^183 + 1/6*(-2*zeta^5 + 17*zeta^3 + 7*zeta^2 - 33*zeta 
- 39)*q^184 + 1/6*(-6*zeta^5 + 17*zeta^3 - 13*zeta^2 + 3*zeta + 29)*q^185 + 
1/6*(17*zeta^5 - 85*zeta^3 + 102*zeta + 6)*q^186 + 1/6*(13*zeta^5 - 78*zeta^3 - 
13*zeta^2 + 117*zeta)*q^187 + 1/6*(17*zeta^5 - 71*zeta^3 + 14*zeta^2 + 60*zeta +
23)*q^188 + 1/6*(-16*zeta^5 + 81*zeta^3 + zeta^2 - 99*zeta + 6)*q^189 + 
1/6*(-24*zeta^5 + 123*zeta^3 + 3*zeta^2 - 153*zeta + 31)*q^190 + 1/6*(-35*zeta^5
+ 154*zeta^3 - 21*zeta^2 - 147*zeta - 26)*q^191 + 1/6*(10*zeta^5 - 34*zeta^3 + 
16*zeta^2 + 12*zeta - 37)*q^192 + 1/3*(14*zeta^5 - 59*zeta^3 + 11*zeta^2 + 
51*zeta - 3)*q^193 + 1/6*(-33*zeta^5 + 167*zeta^3 + 2*zeta^2 - 204*zeta + 
38)*q^194 + 1/6*(-9*zeta^5 + 50*zeta^3 + 5*zeta^2 - 69*zeta + 4)*q^196 + 
1/6*(8*zeta^5 - 53*zeta^3 - 13*zeta^2 + 87*zeta + 74)*q^197 + 1/6*(2*zeta^5 - 
28*zeta^3 - 18*zeta^2 + 66*zeta + 61)*q^198 + 1/6*(32*zeta^5 - 156*zeta^3 + 
4*zeta^2 + 180*zeta - 1)*q^199 + 1/6*(10*zeta^5 - 42*zeta^3 + 8*zeta^2 + 36*zeta
- 17)*q^200 + 1/6*(-10*zeta^5 + 53*zeta^3 + 3*zeta^2 - 69*zeta - 16)*q^201 + 
1/6*(36*zeta^5 - 143*zeta^3 + 37*zeta^2 + 105*zeta + 7)*q^202 + 1/6*(-11*zeta^5 
+ 24*zeta^3 - 31*zeta^2 + 27*zeta + 87)*q^203 + 1/6*(-8*zeta^5 + 26*zeta^3 - 
14*zeta^2 - 6*zeta - 3)*q^204 + 1/6*(-5*zeta^5 + 22*zeta^3 - 3*zeta^2 - 21*zeta 
- 11)*q^205 + 1/6*(-zeta^5 - 24*zeta^3 - 29*zeta^2 + 81*zeta + 104)*q^206 + 
1/6*(zeta^5 - 12*zeta^3 - 7*zeta^2 + 27*zeta + 23)*q^207 + 1/6*(19*zeta^5 - 
97*zeta^3 - 2*zeta^2 + 120*zeta - 25)*q^209 + 1/6*(-5*zeta^5 + 18*zeta^3 - 
7*zeta^2 - 9*zeta + 10)*q^210 + 1/6*(-5*zeta^5 + 2*zeta^3 - 23*zeta^2 + 39*zeta 
+ 81)*q^211 + 1/6*(-12*zeta^5 + 29*zeta^3 - 31*zeta^2 + 21*zeta - 12)*q^212 + 
1/6*(17*zeta^5 - 55*zeta^3 + 30*zeta^2 + 12*zeta - 80)*q^213 + 1/6*(-20*zeta^5 +
79*zeta^3 - 21*zeta^2 - 57*zeta - 10)*q^214 + 1/6*(18*zeta^5 - 91*zeta^3 - 
zeta^2 + 111*zeta - 16)*q^215 + 1/6*(-6*zeta^5 + 33*zeta^3 + 3*zeta^2 - 45*zeta 
- 8)*q^216 + 1/6*(28*zeta^5 - 145*zeta^3 - 5*zeta^2 + 183*zeta - 4)*q^217 + 
1/3*(-8*zeta^5 + 35*zeta^3 - 5*zeta^2 - 33*zeta + 1)*q^218 + 1/6*(27*zeta^5 - 
113*zeta^3 + 22*zeta^2 + 96*zeta - 12)*q^219 + 1/6*(17*zeta^5 - 82*zeta^3 + 
3*zeta^2 + 93*zeta - 34)*q^220 + 1/6*(4*zeta^5 - 33*zeta^3 - 13*zeta^2 + 63*zeta
+ 13)*q^222 + 1/2*(-3*zeta^5 + 11*zeta^3 - 4*zeta^2 - 6*zeta + 3)*q^223 + 
1/6*(31*zeta^5 - 122*zeta^3 + 33*zeta^2 + 87*zeta - 36)*q^224 + 1/6*(-17*zeta^5 
+ 76*zeta^3 - 9*zeta^2 - 75*zeta - 16)*q^225 + 1/6*(-13*zeta^5 + 84*zeta^3 + 
19*zeta^2 - 135*zeta - 16)*q^226 + 1/6*(5*zeta^5 - 6*zeta^3 + 19*zeta^2 - 
27*zeta + 12)*q^227 + 1/6*(-14*zeta^5 + 57*zeta^3 - 13*zeta^2 - 45*zeta - 
8)*q^228 + 1/6*(-25*zeta^5 + 103*zeta^3 - 22*zeta^2 - 84*zeta + 63)*q^229 + 
1/6*(11*zeta^5 - 52*zeta^3 + 3*zeta^2 + 57*zeta - 4)*q^230 + 1/6*(28*zeta^5 - 
119*zeta^3 + 21*zeta^2 + 105*zeta - 17)*q^231 + 1/6*(-zeta^5 + 2*zeta^3 - 
3*zeta^2 + 3*zeta - 13)*q^232 + 1/6*(-zeta^5 + 12*zeta^3 + 7*zeta^2 - 27*zeta - 
23)*q^233 + 1/6*(-8*zeta^5 + 19*zeta^3 - 21*zeta^2 + 15*zeta + 69)*q^235 + 
1/6*(-21*zeta^5 + 44*zeta^3 - 61*zeta^2 + 57*zeta + 165)*q^236 + 1/6*(28*zeta^5 
- 111*zeta^3 + 29*zeta^2 + 81*zeta - 46)*q^237 + 1/6*(-39*zeta^5 + 169*zeta^3 - 
26*zeta^2 - 156*zeta - 13)*q^238 + 1/6*(-16*zeta^5 + 65*zeta^3 - 15*zeta^2 - 
51*zeta + 27)*q^239 + 1/6*(2*zeta^5 - 12*zeta^3 - 2*zeta^2 + 18*zeta - 5)*q^240 
+ 1/6*(-31*zeta^5 + 147*zeta^3 - 8*zeta^2 - 162*zeta - 20)*q^241 + 
1/6*(11*zeta^5 - 56*zeta^3 - zeta^2 + 69*zeta - 6)*q^242 + 1/6*(28*zeta^5 - 
123*zeta^3 + 17*zeta^2 + 117*zeta + 32)*q^243 + 1/6*(24*zeta^5 - 75*zeta^3 + 
45*zeta^2 + 9*zeta - 89)*q^244 + 1/6*(zeta^5 + zeta^3 + 6*zeta^2 - 12*zeta - 
19)*q^245 + 1/6*(11*zeta^5 - 31*zeta^3 + 24*zeta^2 - 6*zeta - 51)*q^246 + 
1/6*(12*zeta^5 - 53*zeta^3 + 7*zeta^2 + 51*zeta - 10)*q^248 + 1/6*(-8*zeta^5 + 
33*zeta^3 - 7*zeta^2 - 27*zeta - 8)*q^249 + 1/6*(-8*zeta^5 + 3*zeta^3 - 
37*zeta^2 + 63*zeta + 104)*q^250 + 1/3*(-25*zeta^5 + 117*zeta^3 - 8*zeta^2 - 
126*zeta - 11)*q^251 + 1/6*(-11*zeta^5 + 76*zeta^3 + 21*zeta^2 - 129*zeta - 
30)*q^252 + 1/6*(-13*zeta^5 + 65*zeta^3 - 78*zeta)*q^253 + 1/6*(-67*zeta^5 + 
286*zeta^3 - 49*zeta^2 - 255*zeta - 30)*q^254 + 1/6*(-4*zeta^5 + 22*zeta^3 + 
2*zeta^2 - 30*zeta - 1)*q^255 + 1/6*(6*zeta^5 - 14*zeta^3 + 16*zeta^2 - 12*zeta 
- 5)*q^256 + 1/6*(3*zeta^5 - 45*zeta^3 - 30*zeta^2 + 108*zeta + 143)*q^257 + 
1/6*(-zeta^5 + 15*zeta^3 + 10*zeta^2 - 36*zeta - 39)*q^258 + 1/6*(9*zeta^5 - 
61*zeta^3 - 16*zeta^2 + 102*zeta + 8)*q^259 + 1/6*(-14*zeta^5 + 67*zeta^3 - 
3*zeta^2 - 75*zeta + 47)*q^261 + 1/6*(10*zeta^5 - 55*zeta^3 - 5*zeta^2 + 75*zeta
+ 44)*q^262 + 1/6*(32*zeta^5 - 124*zeta^3 + 36*zeta^2 + 84*zeta - 49)*q^263 + 
1/6*(-13*zeta^5 + 78*zeta^3 + 13*zeta^2 - 117*zeta - 13)*q^264 + 1/6*(-zeta^5 + 
18*zeta^3 + 13*zeta^2 - 45*zeta - 39)*q^265 + 1/6*(-40*zeta^5 + 170*zeta^3 - 
30*zeta^2 - 150*zeta - 11)*q^266 + 1/6*(13*zeta^5 - 70*zeta^3 - 5*zeta^2 + 
93*zeta - 7)*q^267 + 1/6*(-11*zeta^5 + 30*zeta^3 - 25*zeta^2 + 9*zeta + 
71)*q^268 + 1/6*(-3*zeta^5 + 11*zeta^3 - 4*zeta^2 - 6*zeta - 14)*q^269 + 
1/6*(-3*zeta^5 + 28*zeta^3 + 13*zeta^2 - 57*zeta - 57)*q^270 + 1/6*(-32*zeta^5 +
145*zeta^3 - 15*zeta^2 - 147*zeta - 45)*q^271 + 1/6*(4*zeta^5 - 22*zeta^3 - 
2*zeta^2 + 30*zeta + 1)*q^272 + 1/3*(2*zeta^5 - 4*zeta^3 + 6*zeta^2 - 6*zeta - 
16)*q^274 + 1/6*(-24*zeta^5 + 115*zeta^3 - 5*zeta^2 - 129*zeta - 30)*q^275 + 
1/6*(zeta^5 - 2*zeta^3 + 3*zeta^2 - 3*zeta)*q^276 + 1/6*(-5*zeta^5 - 25*zeta^2 +
45*zeta - 10)*q^277 + 1/6*(29*zeta^5 - 160*zeta^3 - 15*zeta^2 + 219*zeta - 
25)*q^278 + 1/6*(-23*zeta^5 + 99*zeta^3 - 16*zeta^2 - 90*zeta - 27)*q^279 + 
1/6*(-13*zeta^5 + 65*zeta^3 - 78*zeta + 13)*q^280 + 1/6*(zeta^5 + 12*zeta^3 + 
17*zeta^2 - 45*zeta - 41)*q^281 + 1/6*(14*zeta^5 - 69*zeta^3 + zeta^2 + 81*zeta 
+ 12)*q^282 + 1/3*(-24*zeta^5 + 113*zeta^3 - 7*zeta^2 - 123*zeta - 39)*q^283 + 
1/6*(2*zeta^5 - 33*zeta^3 - 23*zeta^2 + 81*zeta + 110)*q^284 + 1/6*(-3*zeta^5 + 
20*zeta^3 + 5*zeta^2 - 33*zeta - 9)*q^285 + 1/6*(19*zeta^5 - 58*zeta^3 + 
37*zeta^2 + 3*zeta - 90)*q^287 + 1/6*(-8*zeta^5 + 9*zeta^3 - 31*zeta^2 + 45*zeta
+ 105)*q^288 + 1/6*(4*zeta^5 + zeta^3 + 21*zeta^2 - 39*zeta - 83)*q^289 + 
1/6*(-7*zeta^5 + 19*zeta^3 - 16*zeta^2 + 6*zeta - 16)*q^290 + 1/6*(-2*zeta^5 + 
30*zeta^3 + 20*zeta^2 - 72*zeta - 23)*q^291 + 1/6*(46*zeta^5 - 201*zeta^3 + 
29*zeta^2 + 189*zeta - 10)*q^292 + 1/6*(51*zeta^5 - 243*zeta^3 + 12*zeta^2 + 
270*zeta + 1)*q^293 + 1/6*(-3*zeta^5 + 19*zeta^3 + 4*zeta^2 - 30*zeta - 2)*q^294
+ 1/6*(-27*zeta^5 + 115*zeta^3 - 20*zeta^2 - 102*zeta - 10)*q^295 + 
1/6*(15*zeta^5 - 82*zeta^3 - 7*zeta^2 + 111*zeta + 52)*q^296 + 1/6*(12*zeta^5 - 
64*zeta^3 - 4*zeta^2 + 84*zeta + 41)*q^297 + 1/2*(-7*zeta^5 + 38*zeta^3 + 
3*zeta^2 - 51*zeta + 5)*q^298 + 1/6*(2*zeta^5 - 25*zeta^3 - 15*zeta^2 + 57*zeta 
+ 14)*q^300 + 1/6*(-13*zeta^5 + 78*zeta^3 + 13*zeta^2 - 117*zeta - 91)*q^301 + 
1/6*(-4*zeta^5 - 26*zeta^3 - 46*zeta^2 + 114*zeta + 159)*q^302 + 1/6*(31*zeta^5 
- 156*zeta^3 - zeta^2 + 189*zeta + 23)*q^303 + 1/6*(3*zeta^5 - 20*zeta^3 - 
5*zeta^2 + 33*zeta + 9)*q^304 + 1/6*(13*zeta^5 - 38*zeta^3 + 27*zeta^2 - 3*zeta 
+ 30)*q^305 + 1/6*(49*zeta^5 - 208*zeta^3 + 37*zeta^2 + 183*zeta + 20)*q^306 + 
1/3*(-7*zeta^5 + 44*zeta^3 + 9*zeta^2 - 69*zeta + 2)*q^307 + 1/6*(15*zeta^5 - 
54*zeta^3 + 21*zeta^2 + 27*zeta - 4)*q^308 + 1/6*(-7*zeta^5 + 27*zeta^3 - 
8*zeta^2 - 18*zeta)*q^309 + 1/6*(5*zeta^5 - 42*zeta^3 - 17*zeta^2 + 81*zeta + 
77)*q^310 + 1/6*(-47*zeta^5 + 226*zeta^3 - 9*zeta^2 - 255*zeta + 102)*q^311 + 
1/6*(-14*zeta^5 + 52*zeta^3 - 18*zeta^2 - 30*zeta + 35)*q^313 + 1/6*(4*zeta^5 + 
9*zeta^3 + 29*zeta^2 - 63*zeta - 86)*q^314 + 1/6*(-11*zeta^5 + 63*zeta^3 + 
8*zeta^2 - 90*zeta - 69)*q^315 + 1/6*(61*zeta^5 - 244*zeta^3 + 61*zeta^2 + 
183*zeta + 17)*q^316 + 1/3*(8*zeta^5 - 62*zeta^3 - 22*zeta^2 + 114*zeta + 
37)*q^317 + 1/6*(4*zeta^5 - 37*zeta^3 - 17*zeta^2 + 75*zeta + 3)*q^318 + 
1/6*(-8*zeta^5 + 60*zeta^3 + 20*zeta^2 - 108*zeta + 3)*q^319 + 1/6*(20*zeta^5 - 
108*zeta^3 - 8*zeta^2 + 144*zeta - 9)*q^320 + 1/6*(-12*zeta^5 + 61*zeta^3 + 
zeta^2 - 75*zeta - 1)*q^321 + 1/6*(13*zeta^3 + 13*zeta^2 - 39*zeta - 52)*q^322 +
1/6*(11*zeta^5 - 9*zeta^3 + 46*zeta^2 - 72*zeta - 130)*q^323 + 1/6*(32*zeta^5 - 
144*zeta^3 + 16*zeta^2 + 144*zeta - 73)*q^324 + 1/6*(-13*zeta^5 + 92*zeta^3 + 
27*zeta^2 - 159*zeta - 33)*q^326 + 1/3*(21*zeta^5 - 92*zeta^3 + 13*zeta^2 + 
87*zeta - 4)*q^327 + 1/6*(-30*zeta^5 + 125*zeta^3 - 25*zeta^2 - 105*zeta + 
39)*q^328 + 1/6*(16*zeta^5 - 68*zeta^3 + 12*zeta^2 + 60*zeta + 33)*q^329 + 
1/6*(7*zeta^5 - 33*zeta^3 + 2*zeta^2 + 36*zeta - 14)*q^330 + 1/6*(35*zeta^5 - 
162*zeta^3 + 13*zeta^2 + 171*zeta + 20)*q^331 + 1/6*(-43*zeta^5 + 204*zeta^3 - 
11*zeta^2 - 225*zeta + 15)*q^332 + 1/6*(-11*zeta^5 + 74*zeta^3 + 19*zeta^2 - 
123*zeta - 16)*q^333 + 1/3*(-35*zeta^5 + 142*zeta^3 - 33*zeta^2 - 111*zeta - 
9)*q^334 + 1/6*(19*zeta^5 - 91*zeta^3 + 4*zeta^2 + 102*zeta + 54)*q^335 + 
1/6*(-7*zeta^5 + 33*zeta^3 - 2*zeta^2 - 36*zeta - 12)*q^336 + 1/6*(-7*zeta^5 + 
6*zeta^3 - 29*zeta^2 + 45*zeta + 47)*q^337 + 1/6*(-19*zeta^5 + 61*zeta^3 - 
34*zeta^2 - 12*zeta + 82)*q^339 + 1/6*(12*zeta^5 - 24*zeta^3 + 36*zeta^2 - 
36*zeta - 91)*q^340 + 1/6*(-34*zeta^5 + 164*zeta^3 - 6*zeta^2 - 186*zeta - 
49)*q^341 + 1/6*(51*zeta^5 - 212*zeta^3 + 43*zeta^2 + 177*zeta + 21)*q^342 + 
1/6*(-26*zeta^5 + 143*zeta^3 + 13*zeta^2 - 195*zeta + 39)*q^343 + 1/6*(18*zeta^5
- 65*zeta^3 + 25*zeta^2 + 33*zeta + 23)*q^344 + 1/6*(-zeta^5 + 13*zeta^3 + 
8*zeta^2 - 30*zeta + 11)*q^345 + 1/3*(24*zeta^5 - 132*zeta^3 - 12*zeta^2 + 
180*zeta - 20)*q^346 + 1/6*(29*zeta^5 - 132*zeta^3 + 13*zeta^2 + 135*zeta - 
2)*q^347 + 1/6*(-8*zeta^5 + 27*zeta^3 - 13*zeta^2 - 9*zeta + 43)*q^348 + 
1/6*(10*zeta^5 - 56*zeta^3 - 6*zeta^2 + 78*zeta + 33)*q^349 + 1/6*(17*zeta^5 - 
82*zeta^3 + 3*zeta^2 + 93*zeta - 21)*q^350 + 1/6*(-33*zeta^5 + 137*zeta^3 - 
28*zeta^2 - 114*zeta + 92)*q^352 + 1/6*(13*zeta^5 - 37*zeta^3 + 28*zeta^2 - 
6*zeta - 69)*q^353 + 1/6*(-18*zeta^5 + 59*zeta^3 - 31*zeta^2 - 15*zeta + 
71)*q^354 + 1/6*(-21*zeta^5 + 120*zeta^3 + 15*zeta^2 - 171*zeta + 35)*q^355 + 
1/6*(11*zeta^5 - 77*zeta^3 - 22*zeta^2 + 132*zeta + 50)*q^356 + 1/6*(-13*zeta^3 
- 13*zeta^2 + 39*zeta)*q^357 + 1/6*(26*zeta^5 - 117*zeta^3 + 13*zeta^2 + 
117*zeta + 13)*q^358 + 1/6*(-5*zeta^5 + 71*zeta^3 + 46*zeta^2 - 168*zeta - 
88)*q^359 + 1/6*(9*zeta^5 - 26*zeta^3 + 19*zeta^2 - 3*zeta + 18)*q^360 + 
1/6*(13*zeta^5 - 33*zeta^3 + 32*zeta^2 - 18*zeta - 103)*q^361 + 1/6*(-21*zeta^5 
+ 107*zeta^3 + 2*zeta^2 - 132*zeta - 52)*q^362 + 1/6*(zeta^5 - 17*zeta^3 - 
12*zeta^2 + 42*zeta + 6)*q^363 + 1/6*(39*zeta^5 - 168*zeta^3 + 27*zeta^2 + 
153*zeta - 137)*q^365 + 1/6*(13*zeta^5 - 44*zeta^3 + 21*zeta^2 + 15*zeta - 
42)*q^366 + 1/6*(zeta^5 + 42*zeta^3 + 47*zeta^2 - 135*zeta - 166)*q^367 + 
1/6*(zeta^5 - 13*zeta^3 - 8*zeta^2 + 30*zeta - 11)*q^368 + 1/6*(-9*zeta^5 + 
26*zeta^3 - 19*zeta^2 + 3*zeta + 29)*q^369 + 1/6*(-25*zeta^5 + 105*zeta^3 - 
20*zeta^2 - 90*zeta - 7)*q^370 + 1/6*(5*zeta^5 - 57*zeta^3 - 32*zeta^2 + 
126*zeta - 10)*q^371 + 1/6*(5*zeta^5 - 43*zeta^3 - 18*zeta^2 + 84*zeta + 
9)*q^372 + 1/6*(7*zeta^5 - 2*zeta^3 + 33*zeta^2 - 57*zeta + 32)*q^373 + 
1/6*(-39*zeta^3 - 39*zeta^2 + 117*zeta + 130)*q^374 + 1/6*(-4*zeta^5 + 8*zeta^3 
- 12*zeta^2 + 12*zeta + 39)*q^375 + 1/6*(25*zeta^5 - 92*zeta^3 + 33*zeta^2 + 
51*zeta - 101)*q^376 + 1/6*(-15*zeta^5 + 80*zeta^3 + 5*zeta^2 - 105*zeta + 
4)*q^378 + 1/6*(37*zeta^5 - 150*zeta^3 + 35*zeta^2 + 117*zeta - 4)*q^379 + 
1/6*(15*zeta^5 - 35*zeta^3 + 40*zeta^2 - 30*zeta - 94)*q^380 + 1/6*(-zeta^5 - 
13*zeta^3 - 18*zeta^2 + 48*zeta + 11)*q^381 + 1/6*(-56*zeta^5 + 275*zeta^3 - 
5*zeta^2 - 321*zeta + 87)*q^382 + 1/3*(-17*zeta^5 + 88*zeta^3 + 3*zeta^2 - 
111*zeta - 7)*q^383 + 1/6*(25*zeta^5 - 117*zeta^3 + 8*zeta^2 + 126*zeta + 
24)*q^384 + 1/6*(15*zeta^5 - 67*zeta^3 + 8*zeta^2 + 66*zeta - 43)*q^385 + 
1/3*(7*zeta^5 - 27*zeta^3 + 8*zeta^2 + 18*zeta - 3)*q^386 + 1/6*(-18*zeta^5 + 
62*zeta^3 - 28*zeta^2 - 24*zeta + 39)*q^387 + 1/6*(-6*zeta^5 + 74*zeta^3 + 
44*zeta^2 - 168*zeta - 163)*q^388 + 1/3*(17*zeta^5 - 100*zeta^3 - 15*zeta^2 + 
147*zeta + 1)*q^389 + 1/6*(16*zeta^5 - 75*zeta^3 + 5*zeta^2 + 81*zeta - 
35)*q^391 + 1/6*(-2*zeta^5 + 17*zeta^3 + 7*zeta^2 - 33*zeta - 26)*q^392 + 
1/6*(-26*zeta^5 + 114*zeta^3 - 16*zeta^2 - 108*zeta - 7)*q^393 + 1/6*(-36*zeta^5
+ 146*zeta^3 - 34*zeta^2 - 114*zeta - 21)*q^394 + 1/6*(29*zeta^5 - 147*zeta^3 - 
2*zeta^2 + 180*zeta - 38)*q^395 + 1/6*(-21*zeta^5 + 73*zeta^3 - 32*zeta^2 - 
30*zeta - 10)*q^396 + 1/6*(14*zeta^5 - 87*zeta^3 - 17*zeta^2 + 135*zeta - 
8)*q^397 + 1/6*(36*zeta^5 - 185*zeta^3 - 5*zeta^2 + 231*zeta - 30)*q^398 + 
1/6*(-9*zeta^5 + 35*zeta^3 - 10*zeta^2 - 24*zeta - 8)*q^399 + 1/6*(9*zeta^5 - 
38*zeta^3 + 7*zeta^2 + 33*zeta + 1)*q^400 + 1/6*(-19*zeta^5 + 80*zeta^3 - 
15*zeta^2 - 69*zeta + 33)*q^401 + 1/6*(-7*zeta^5 + 16*zeta^3 - 19*zeta^2 + 
15*zeta + 42)*q^402 + 1/6*(59*zeta^5 - 279*zeta^3 + 16*zeta^2 + 306*zeta - 
112)*q^404 + 1/6*(-8*zeta^5 + 26*zeta^3 - 14*zeta^2 - 6*zeta + 19)*q^405 + 
1/6*(-3*zeta^5 + 3*zeta^3 - 12*zeta^2 + 18*zeta + 19)*q^406 + 1/6*(3*zeta^5 + 
10*zeta^3 + 25*zeta^2 - 57*zeta - 6)*q^407 + 1/6*(-4*zeta^5 + 35*zeta^3 + 
15*zeta^2 - 69*zeta - 14)*q^408 + 1/6*(49*zeta^5 - 253*zeta^3 - 8*zeta^2 + 
318*zeta - 4)*q^409 + 1/6*(-9*zeta^5 + 44*zeta^3 - zeta^2 - 51*zeta + 2)*q^410 +
1/3*(-6*zeta^5 + 18*zeta^3 - 12*zeta^2 + 32)*q^411 + 1/6*(-48*zeta^5 + 
221*zeta^3 - 19*zeta^2 - 231*zeta + 8)*q^412 + 1/6*(-25*zeta^5 + 77*zeta^3 - 
48*zeta^2 - 6*zeta + 115)*q^413 + 1/6*(-11*zeta^5 + 35*zeta^3 - 20*zeta^2 - 
6*zeta + 39)*q^414 + 1/6*(-39*zeta^5 + 161*zeta^3 - 34*zeta^2 - 132*zeta + 
160)*q^415 + 1/6*(15*zeta^5 - 48*zeta^3 + 27*zeta^2 + 9*zeta - 46)*q^417 + 
1/6*(-9*zeta^5 - 4*zeta^3 - 49*zeta^2 + 93*zeta + 148)*q^418 + 1/6*(13*zeta^5 - 
99*zeta^3 - 34*zeta^2 + 180*zeta + 120)*q^419 + 1/6*(-6*zeta^5 + 19*zeta^3 - 
11*zeta^2 - 3*zeta - 14)*q^420 + 1/6*(-41*zeta^5 + 209*zeta^3 + 4*zeta^2 - 
258*zeta + 37)*q^421 + 1/6*(-37*zeta^5 + 144*zeta^3 - 41*zeta^2 - 99*zeta - 
18)*q^422 + 1/6*(-27*zeta^5 + 142*zeta^3 + 7*zeta^2 - 183*zeta + 7)*q^423 + 
1/6*(-11*zeta^5 + 80*zeta^3 + 25*zeta^2 - 141*zeta - 6)*q^424 + 1/6*(-31*zeta^5 
+ 143*zeta^3 - 12*zeta^2 - 150*zeta - 10)*q^425 + 1/6*(-14*zeta^5 + 52*zeta^3 - 
18*zeta^2 - 30*zeta + 43)*q^426 + 1/6*(32*zeta^5 - 123*zeta^3 + 37*zeta^2 + 
81*zeta - 38)*q^427 + 1/6*(-21*zeta^5 + 114*zeta^3 + 9*zeta^2 - 153*zeta + 
2)*q^428 + 1/6*(17*zeta^5 - 100*zeta^3 - 15*zeta^2 + 147*zeta + 14)*q^430 + 
1/6*(-14*zeta^5 + 17*zeta^3 - 53*zeta^2 + 75*zeta + 152)*q^431 + 1/6*(-10*zeta^5
+ 43*zeta^3 - 7*zeta^2 - 39*zeta - 7)*q^432 + 1/6*(-27*zeta^5 + 117*zeta^3 - 
18*zeta^2 - 108*zeta - 28)*q^433 + 1/6*(23*zeta^5 - 114*zeta^3 + zeta^2 + 
135*zeta - 20)*q^434 + 1/6*(-9*zeta^5 + 54*zeta^3 + 9*zeta^2 - 81*zeta + 
16)*q^435 + 1/3*(-7*zeta^5 + 37*zeta^3 + 2*zeta^2 - 48*zeta - 9)*q^436 + 
1/6*(18*zeta^5 - 86*zeta^3 + 4*zeta^2 + 96*zeta - 41)*q^437 + 1/6*(12*zeta^5 - 
43*zeta^3 + 17*zeta^2 + 21*zeta - 5)*q^438 + 1/6*(37*zeta^5 - 152*zeta^3 + 
33*zeta^2 + 123*zeta - 26)*q^439 + 1/6*(-13*zeta^3 - 13*zeta^2 + 39*zeta + 
52)*q^440 + 1/6*(8*zeta^5 - 45*zeta^3 - 5*zeta^2 + 63*zeta - 4)*q^441 + 
1/3*(2*zeta^5 - 17*zeta^3 - 7*zeta^2 + 33*zeta + 23)*q^443 + 1/6*(-23*zeta^5 + 
89*zeta^3 - 26*zeta^2 - 60*zeta + 44)*q^444 + 1/6*(32*zeta^5 - 163*zeta^3 - 
3*zeta^2 + 201*zeta + 120)*q^445 + 1/2*(-9*zeta^5 + 40*zeta^3 - 5*zeta^2 - 
39*zeta - 1)*q^446 + 1/2*(-3*zeta^5 + 12*zeta^3 - 3*zeta^2 - 9*zeta + 8)*q^447 +
1/6*(32*zeta^5 - 123*zeta^3 + 37*zeta^2 + 81*zeta + 14)*q^448 + 1/6*(31*zeta^5 -
152*zeta^3 + 3*zeta^2 + 177*zeta)*q^449 + 1/6*(-26*zeta^5 + 123*zeta^3 - 
7*zeta^2 - 135*zeta + 49)*q^450 + 1/6*(41*zeta^5 - 223*zeta^3 - 18*zeta^2 + 
300*zeta + 22)*q^451 + 1/6*(14*zeta^5 - 29*zeta^3 + 41*zeta^2 - 39*zeta - 
128)*q^452 + 1/6*(-5*zeta^5 + 16*zeta^3 - 9*zeta^2 - 3*zeta + 1)*q^453 + 
1/6*(24*zeta^5 - 127*zeta^3 - 7*zeta^2 + 165*zeta - 29)*q^454 + 1/6*(-11*zeta^5 
+ 54*zeta^3 - zeta^2 - 63*zeta + 20)*q^456 + 1/6*(-33*zeta^5 + 159*zeta^3 - 
6*zeta^2 - 180*zeta - 82)*q^457 + 1/6*(31*zeta^5 - 96*zeta^3 + 59*zeta^2 + 
9*zeta - 140)*q^458 + 1/6*(29*zeta^5 - 130*zeta^3 + 15*zeta^2 + 129*zeta + 
6)*q^459 + 1/6*(22*zeta^5 - 95*zeta^3 + 15*zeta^2 + 87*zeta - 79)*q^460 + 
1/6*(45*zeta^5 - 188*zeta^3 + 37*zeta^2 + 159*zeta + 14)*q^461 + 1/6*(-3*zeta^5 
+ 29*zeta^3 + 14*zeta^2 - 60*zeta - 7)*q^462 + 1/6*(26*zeta^5 - 132*zeta^3 - 
2*zeta^2 + 162*zeta - 51)*q^463 + 1/6*(9*zeta^5 - 54*zeta^3 - 9*zeta^2 + 81*zeta
- 16)*q^464 + 1/6*(-16*zeta^5 + 69*zeta^3 - 11*zeta^2 - 63*zeta - 9)*q^465 + 
1/6*(11*zeta^5 - 35*zeta^3 + 20*zeta^2 + 6*zeta - 39)*q^466 + 1/6*(-2*zeta^5 + 
89*zeta^3 + 79*zeta^2 - 249*zeta - 163)*q^467 + 1/6*(-20*zeta^5 + 59*zeta^3 - 
41*zeta^2 + 3*zeta + 118)*q^469 + 1/6*(-11*zeta^5 + 39*zeta^3 - 16*zeta^2 - 
18*zeta + 18)*q^470 + 1/6*(10*zeta^5 - 36*zeta^3 + 14*zeta^2 + 18*zeta - 
33)*q^471 + 1/6*(-29*zeta^5 + 104*zeta^3 - 41*zeta^2 - 51*zeta - 6)*q^472 + 
1/6*(-13*zeta^5 + 78*zeta^3 + 13*zeta^2 - 117*zeta - 13)*q^473 + 1/6*(16*zeta^5 
- 50*zeta^3 + 30*zeta^2 + 6*zeta + 1)*q^474 + 1/6*(-26*zeta^5 + 113*zeta^3 - 
17*zeta^2 - 105*zeta - 3)*q^475 + 1/6*(-39*zeta^5 + 208*zeta^3 + 13*zeta^2 - 
273*zeta + 39)*q^476 + 1/6*(10*zeta^5 - 32*zeta^3 + 18*zeta^2 + 6*zeta - 
17)*q^477 + 1/6*(35*zeta^5 - 123*zeta^3 + 52*zeta^2 + 54*zeta - 102)*q^478 + 
1/6*(-zeta^5 - 34*zeta^3 - 39*zeta^2 + 111*zeta + 98)*q^479 + 1/6*(-2*zeta^5 - 
5*zeta^3 - 15*zeta^2 + 33*zeta + 40)*q^480 + 1/6*(-39*zeta^5 + 183*zeta^3 - 
12*zeta^2 - 198*zeta + 71)*q^482 + 13/6*q^483 + 1/6*(20*zeta^5 - 109*zeta^3 - 
9*zeta^2 + 147*zeta + 86)*q^484 + 1/6*(26*zeta^5 - 114*zeta^3 + 16*zeta^2 + 
108*zeta - 1)*q^485 + 1/6*(45*zeta^5 - 210*zeta^3 + 15*zeta^2 + 225*zeta - 
92)*q^486 + 1/6*(-94*zeta^5 + 449*zeta^3 - 21*zeta^2 - 501*zeta - 17)*q^487 + 
1/6*(27*zeta^5 - 117*zeta^3 + 18*zeta^2 + 108*zeta - 11)*q^488 + 1/6*(-27*zeta^5
+ 86*zeta^3 - 49*zeta^2 - 15*zeta + 122)*q^489 + 1/6*(13*zeta^5 - 54*zeta^3 + 
11*zeta^2 + 45*zeta + 5)*q^490 + 1/6*(-27*zeta^5 + 145*zeta^3 + 10*zeta^2 - 
192*zeta - 78)*q^491 + 1/6*(35*zeta^5 - 154*zeta^3 + 21*zeta^2 + 147*zeta - 
14)*q^492 + 1/6*(-5*zeta^5 + 47*zeta^3 + 22*zeta^2 - 96*zeta - 37)*q^493 + 
1/6*(-8*zeta^5 + 47*zeta^3 + 7*zeta^2 - 69*zeta - 10)*q^495 + 1/6*(16*zeta^5 - 
69*zeta^3 + 11*zeta^2 + 63*zeta + 9)*q^496 + 1/6*(5*zeta^5 - 44*zeta^3 - 
19*zeta^2 + 87*zeta + 120)*q^497 + 1/6*(-18*zeta^5 + 84*zeta^3 - 6*zeta^2 - 
90*zeta + 1)*q^498 + 1/6*(43*zeta^5 - 188*zeta^3 + 27*zeta^2 + 177*zeta - 
111)*q^499 + 1/6*(-46*zeta^5 + 182*zeta^3 - 48*zeta^2 - 132*zeta - 27)*q^500 + 
1/3*(-22*zeta^5 + 108*zeta^3 - 2*zeta^2 - 126*zeta - 15)*q^501 + 1/3*(-33*zeta^5
+ 162*zeta^3 - 3*zeta^2 - 189*zeta + 47)*q^502 + 1/2*(15*zeta^5 - 83*zeta^3 - 
8*zeta^2 + 114*zeta - 3)*q^503 + 1/6*(13*zeta^3 + 13*zeta^2 - 39*zeta - 
26)*q^504 + 1/6*(-14*zeta^5 + 41*zeta^3 - 29*zeta^2 + 3*zeta + 52)*q^505 + 
1/6*(-13*zeta^5 + 65*zeta^3 - 78*zeta + 13)*q^506 + 1/6*(-56*zeta^5 + 321*zeta^3
+ 41*zeta^2 - 459*zeta - 1)*q^508 + 1/6*(20*zeta^5 - 77*zeta^3 + 23*zeta^2 + 
51*zeta - 43)*q^509 + 1/6*(5*zeta^5 - 10*zeta^3 + 15*zeta^2 - 15*zeta - 
39)*q^510 + 1/6*(29*zeta^5 - 133*zeta^3 + 12*zeta^2 + 138*zeta - 32)*q^511 + 
1/6*(4*zeta^5 + 7*zeta^3 + 27*zeta^2 - 57*zeta - 72)*q^512 + 1/6*(29*zeta^5 - 
128*zeta^3 + 17*zeta^2 + 123*zeta + 1)*q^513 + 1/6*(-49*zeta^5 + 182*zeta^3 - 
63*zeta^2 - 105*zeta - 33)*q^514 + 1/6*(-37*zeta^5 + 158*zeta^3 - 27*zeta^2 - 
141*zeta + 137)*q^515 + 1/6*(17*zeta^5 - 78*zeta^3 + 7*zeta^2 + 81*zeta - 
5)*q^516 + 1/6*(-25*zeta^5 + 116*zeta^3 - 9*zeta^2 - 123*zeta - 2)*q^517 + 
1/6*(6*zeta^5 - 58*zeta^3 - 28*zeta^2 + 120*zeta + 105)*q^518 + 1/3*(12*zeta^5 -
40*zeta^3 + 20*zeta^2 + 12*zeta - 36)*q^519 + 1/6*(-51*zeta^5 + 249*zeta^3 - 
6*zeta^2 - 288*zeta + 68)*q^521 + 1/6*(-13*zeta^5 + 77*zeta^3 + 12*zeta^2 - 
114*zeta - 76)*q^522 + 1/6*(-18*zeta^5 + 67*zeta^3 - 23*zeta^2 - 39*zeta + 
3)*q^523 + 1/6*(-14*zeta^5 + 68*zeta^3 - 2*zeta^2 - 78*zeta + 23)*q^524 + 
1/6*(-3*zeta^5 - 10*zeta^3 - 25*zeta^2 + 57*zeta + 32)*q^525 + 1/6*(39*zeta^5 - 
155*zeta^3 + 40*zeta^2 + 114*zeta + 4)*q^526 + 1/6*(-45*zeta^5 + 208*zeta^3 - 
17*zeta^2 - 219*zeta - 12)*q^527 + 1/6*(2*zeta^5 - 2*zeta^3 + 8*zeta^2 - 12*zeta
- 17)*q^528 + 1/3*(7*zeta^5 - 20*zeta^3 + 15*zeta^2 - 3*zeta - 1)*q^529 + 
1/6*(15*zeta^5 - 45*zeta^3 + 30*zeta^2 - 61)*q^530 + 1/6*(25*zeta^5 - 67*zeta^3 
+ 58*zeta^2 - 24*zeta - 148)*q^531 + 1/6*(-48*zeta^5 + 243*zeta^3 + 3*zeta^2 - 
297*zeta + 70)*q^532 + 1/6*(8*zeta^5 - 42*zeta^3 - 2*zeta^2 + 54*zeta + 1)*q^534
+ 1/6*(-11*zeta^5 + 65*zeta^3 + 10*zeta^2 - 96*zeta - 73)*q^535 + 1/6*(7*zeta^5 
- 27*zeta^3 + 8*zeta^2 + 18*zeta - 39)*q^536 + 1/6*(-13*zeta^5 + 78*zeta^3 + 
13*zeta^2 - 117*zeta - 13)*q^537 + 1/6*(-7*zeta^5 + 25*zeta^3 - 10*zeta^2 - 
12*zeta + 31)*q^538 + 1/6*(-6*zeta^5 + 19*zeta^3 - 11*zeta^2 - 3*zeta - 1)*q^539
+ 1/6*(25*zeta^5 - 120*zeta^3 + 5*zeta^2 + 135*zeta - 14)*q^540 + 1/2*(11*zeta^5
- 59*zeta^3 - 4*zeta^2 + 78*zeta + 2)*q^541 + 1/6*(-7*zeta^5 + 37*zeta^3 + 
2*zeta^2 - 48*zeta + 17)*q^542 + 1/6*(61*zeta^5 - 265*zeta^3 + 40*zeta^2 + 
246*zeta - 13)*q^543 + 1/6*(-29*zeta^5 + 84*zeta^3 - 61*zeta^2 + 9*zeta + 
143)*q^544 + 1/3*(4*zeta^5 - 13*zeta^3 + 7*zeta^2 + 3*zeta - 23)*q^545 + 
1/6*(50*zeta^5 - 248*zeta^3 + 2*zeta^2 + 294*zeta - 79)*q^547 + 1/3*(-4*zeta^5 +
22*zeta^3 + 2*zeta^2 - 30*zeta - 28)*q^548 + 1/6*(zeta^5 - 39*zeta^3 - 34*zeta^2
+ 108*zeta + 139)*q^549 + 1/6*(36*zeta^5 - 166*zeta^3 + 14*zeta^2 + 174*zeta + 
19)*q^550 + 1/6*(-7*zeta^5 + 51*zeta^3 + 16*zeta^2 - 90*zeta - 34)*q^551 + 
1/6*(12*zeta^5 - 65*zeta^3 - 5*zeta^2 + 87*zeta - 2)*q^552 + 1/6*(31*zeta^5 - 
109*zeta^3 + 46*zeta^2 + 48*zeta + 3)*q^553 + 1/6*(-30*zeta^5 + 165*zeta^3 + 
15*zeta^2 - 225*zeta + 25)*q^554 + 1/6*(-8*zeta^5 + 35*zeta^3 - 5*zeta^2 - 
33*zeta - 6)*q^555 + 1/6*(-49*zeta^5 + 175*zeta^3 - 70*zeta^2 - 84*zeta + 
119)*q^556 + 1/6*(13*zeta^5 - 62*zeta^3 + 3*zeta^2 + 69*zeta + 46)*q^557 + 
1/6*(-39*zeta^5 + 184*zeta^3 - 11*zeta^2 - 201*zeta + 77)*q^558 + 1/6*(-7*zeta^5
+ 20*zeta^3 - 15*zeta^2 + 3*zeta + 53)*q^560 + 1/6*(-26*zeta^5 + 104*zeta^3 - 
26*zeta^2 - 78*zeta + 39)*q^561 + 1/6*(5*zeta^5 - 5*zeta^3 + 20*zeta^2 - 30*zeta
- 49)*q^562 + 1/6*(13*zeta^5 - 65*zeta^3 + 78*zeta - 26)*q^563 + 1/6*(-9*zeta^5 
+ 10*zeta^3 - 35*zeta^2 + 51*zeta + 76)*q^564 + 1/6*(23*zeta^5 - 116*zeta^3 - 
zeta^2 + 141*zeta - 15)*q^565 + 1/3*(15*zeta^5 - 65*zeta^3 + 10*zeta^2 + 60*zeta
+ 17)*q^566 + 1/6*(31*zeta^5 - 122*zeta^3 + 33*zeta^2 + 87*zeta - 101)*q^567 + 
1/6*(8*zeta^5 - 78*zeta^3 - 38*zeta^2 + 162*zeta - 23)*q^568 + 1/6*(-16*zeta^5 +
71*zeta^3 - 9*zeta^2 - 69*zeta - 39)*q^569 + 1/6*(5*zeta^5 - 9*zeta^3 + 
16*zeta^2 - 18*zeta - 41)*q^570 + 1/6*(15*zeta^5 - 76*zeta^3 - zeta^2 + 93*zeta 
- 45)*q^571 + 1/6*(5*zeta^5 + 20*zeta^3 + 45*zeta^2 - 105*zeta - 81)*q^573 + 
1/6*(-22*zeta^5 + 87*zeta^3 - 23*zeta^2 - 63*zeta + 44)*q^574 + 1/6*(-zeta^5 + 
15*zeta^3 + 10*zeta^2 - 36*zeta - 52)*q^575 + 1/6*(-47*zeta^5 + 193*zeta^3 - 
42*zeta^2 - 156*zeta - 11)*q^576 + 1/6*(54*zeta^5 - 268*zeta^3 + 2*zeta^2 + 
318*zeta - 53)*q^577 + 1/6*(27*zeta^5 - 97*zeta^3 + 38*zeta^2 + 48*zeta + 
17)*q^578 + 1/3*(12*zeta^5 - 61*zeta^3 - zeta^2 + 75*zeta + 14)*q^579 + 
1/6*(9*zeta^5 - 13*zeta^3 + 32*zeta^2 - 42*zeta - 107)*q^580 + 1/6*(-37*zeta^5 +
193*zeta^3 + 8*zeta^2 - 246*zeta + 35)*q^581 + 1/6*(-13*zeta^5 + 76*zeta^3 + 
11*zeta^2 - 111*zeta - 61)*q^582 + 1/6*(-59*zeta^5 + 241*zeta^3 - 54*zeta^2 - 
192*zeta + 66)*q^583 + 1/6*(7*zeta^5 - 84*zeta^3 - 49*zeta^2 + 189*zeta + 
96)*q^584 + 1/6*(63*zeta^5 - 326*zeta^3 - 11*zeta^2 + 411*zeta - 53)*q^586 + 
1/6*(-33*zeta^5 + 94*zeta^3 - 71*zeta^2 + 15*zeta + 217)*q^587 + 1/6*(6*zeta^5 -
20*zeta^3 + 10*zeta^2 + 6*zeta - 23)*q^588 + 1/6*(-39*zeta^5 + 172*zeta^3 - 
23*zeta^2 - 165*zeta - 1)*q^589 + 1/6*(-47*zeta^5 + 245*zeta^3 + 10*zeta^2 - 
312*zeta + 47)*q^590 + 1/6*(-11*zeta^5 + 53*zeta^3 - 2*zeta^2 - 60*zeta + 
8)*q^591 + 1/6*(8*zeta^5 - 35*zeta^3 + 5*zeta^2 + 33*zeta + 6)*q^592 + 
1/3*(25*zeta^5 - 132*zeta^3 - 7*zeta^2 + 171*zeta - 42)*q^593 + 1/6*(-31*zeta^5 
+ 135*zeta^3 - 20*zeta^2 - 126*zeta - 16)*q^594 + 1/6*(13*zeta^5 - 39*zeta^3 + 
26*zeta^2 - 52)*q^595 + 1/2*(5*zeta^5 - 11*zeta^3 + 14*zeta^2 - 12*zeta - 
37)*q^596 + 1/6*(5*zeta^5 - 47*zeta^3 - 22*zeta^2 + 96*zeta + 11)*q^597 + 
1/6*(-28*zeta^5 + 116*zeta^3 - 24*zeta^2 - 96*zeta + 103)*q^599 + 1/6*(36*zeta^5
- 163*zeta^3 + 17*zeta^2 + 165*zeta + 13)*q^600 + 1/2*(2*zeta^5 - 11*zeta^3 - 
zeta^2 + 15*zeta + 14)*q^601 + 1/6*(39*zeta^5 - 156*zeta^3 + 39*zeta^2 + 
117*zeta + 26)*q^602 + 1/6*(-8*zeta^5 + 40*zeta^3 - 48*zeta + 39)*q^603 + 
1/6*(-75*zeta^5 + 345*zeta^3 - 30*zeta^2 - 360*zeta + 8)*q^604 + 1/6*(-15*zeta^5
+ 82*zeta^3 + 7*zeta^2 - 111*zeta + 25)*q^605 + 1/6*(30*zeta^5 - 126*zeta^3 + 
24*zeta^2 + 108*zeta - 77)*q^606 + 1/6*(-48*zeta^5 + 245*zeta^3 + 5*zeta^2 - 
303*zeta - 26)*q^607 + 1/6*(-19*zeta^5 + 37*zeta^3 - 58*zeta^2 + 60*zeta + 
145)*q^608 + 1/6*(-14*zeta^5 + 53*zeta^3 - 17*zeta^2 - 33*zeta + 54)*q^609 + 
1/6*(40*zeta^5 - 197*zeta^3 + 3*zeta^2 + 231*zeta - 73)*q^610 + 1/6*(46*zeta^5 -
253*zeta^3 - 23*zeta^2 + 345*zeta - 21)*q^612 + 1/6*(26*zeta^5 - 141*zeta^3 - 
11*zeta^2 + 189*zeta + 87)*q^613 + 1/3*(-6*zeta^5 + 47*zeta^3 + 17*zeta^2 - 
87*zeta - 70)*q^614 + 1/6*(5*zeta^5 - 33*zeta^3 - 8*zeta^2 + 54*zeta - 5)*q^615 
+ 1/6*(-39*zeta^3 - 39*zeta^2 + 117*zeta + 65)*q^616 + 1/6*(19*zeta^5 - 
136*zeta^3 - 41*zeta^2 + 237*zeta + 1)*q^617 + 1/6*(-20*zeta^5 + 91*zeta^3 - 
9*zeta^2 - 93*zeta - 1)*q^618 + 1/6*(-17*zeta^5 + 85*zeta^3 - 102*zeta + 
39)*q^619 + 1/6*(-33*zeta^5 + 158*zeta^3 - 7*zeta^2 - 177*zeta + 20)*q^620 + 
1/6*(11*zeta^5 - 61*zeta^3 - 6*zeta^2 + 84*zeta + 65)*q^621 + 1/6*(10*zeta^5 + 
45*zeta^3 + 95*zeta^2 - 225*zeta - 312)*q^622 + 1/6*(-4*zeta^5 - 9*zeta^3 - 
29*zeta^2 + 63*zeta + 99)*q^623 + 1/6*(25*zeta^5 - 72*zeta^3 + 53*zeta^2 - 
9*zeta - 150)*q^625 + 1/6*(29*zeta^5 - 106*zeta^3 + 39*zeta^2 + 57*zeta - 
73)*q^626 + 1/6*(-3*zeta^5 + 3*zeta^3 - 12*zeta^2 + 18*zeta + 32)*q^627 + 
1/6*(36*zeta^5 - 140*zeta^3 + 40*zeta^2 + 96*zeta + 19)*q^628 + 1/6*(-29*zeta^5 
+ 166*zeta^3 + 21*zeta^2 - 237*zeta + 9)*q^629 + 1/6*(23*zeta^5 - 88*zeta^3 + 
27*zeta^2 + 57*zeta + 19)*q^630 + 1/6*(46*zeta^5 - 217*zeta^3 + 13*zeta^2 + 
237*zeta + 56)*q^631 + 1/6*(32*zeta^5 - 202*zeta^3 - 42*zeta^2 + 318*zeta + 
21)*q^632 + 1/6*(-27*zeta^5 + 139*zeta^3 + 4*zeta^2 - 174*zeta - 5)*q^633 + 
1/3*(-9*zeta^5 - 2*zeta^3 - 47*zeta^2 + 87*zeta + 131)*q^634 + 1/6*(-5*zeta^5 + 
62*zeta^3 + 37*zeta^2 - 141*zeta - 156)*q^635 + 1/6*(-19*zeta^5 + 69*zeta^3 - 
26*zeta^2 - 36*zeta + 52)*q^636 + 1/6*(12*zeta^5 - 77*zeta^3 - 17*zeta^2 + 
123*zeta + 2)*q^638 + 1/6*(50*zeta^5 - 211*zeta^3 + 39*zeta^2 + 183*zeta + 
1)*q^639 + 1/6*(-31*zeta^5 + 114*zeta^3 - 41*zeta^2 - 63*zeta + 39)*q^640 + 
1/6*(-34*zeta^5 + 130*zeta^3 - 40*zeta^2 - 84*zeta + 23)*q^641 + 1/6*(-11*zeta^5
+ 53*zeta^3 - 2*zeta^2 - 60*zeta + 14)*q^642 + 1/6*(-28*zeta^5 + 85*zeta^3 - 
55*zeta^2 - 3*zeta - 15)*q^643 + 1/6*(26*zeta^5 - 130*zeta^3 + 156*zeta - 
13)*q^644 + 1/6*(15*zeta^5 - 63*zeta^3 + 12*zeta^2 + 54*zeta - 58)*q^645 + 
1/6*(102*zeta^5 - 429*zeta^3 + 81*zeta^2 + 369*zeta + 35)*q^646 + 1/3*(22*zeta^5
- 96*zeta^3 + 14*zeta^2 + 90*zeta)*q^647 + 1/6*(-31*zeta^5 + 114*zeta^3 - 
41*zeta^2 - 63*zeta + 91)*q^648 + 1/6*(48*zeta^5 - 217*zeta^3 + 23*zeta^2 + 
219*zeta - 96)*q^649 + 1/6*(-zeta^5 - 25*zeta^3 - 30*zeta^2 + 84*zeta + 
28)*q^651 + 1/6*(11*zeta^5 - 7*zeta^3 + 48*zeta^2 - 78*zeta - 173)*q^652 + 
1/6*(-43*zeta^5 + 208*zeta^3 - 7*zeta^2 - 237*zeta - 62)*q^653 + 1/3*(-10*zeta^5
+ 55*zeta^3 + 5*zeta^2 - 75*zeta - 8)*q^654 + 1/6*(-28*zeta^5 + 108*zeta^3 - 
32*zeta^2 - 72*zeta + 133)*q^655 + 1/6*(-5*zeta^5 + 33*zeta^3 + 8*zeta^2 - 
54*zeta + 5)*q^656 + 1/6*(-24*zeta^5 + 64*zeta^3 - 56*zeta^2 + 24*zeta - 
39)*q^657 + 1/6*(28*zeta^5 - 119*zeta^3 + 21*zeta^2 + 105*zeta - 82)*q^658 + 
1/6*(-8*zeta^5 + 37*zeta^3 - 3*zeta^2 - 39*zeta + 41)*q^659 + 1/6*(-2*zeta^5 + 
2*zeta^3 - 8*zeta^2 + 12*zeta + 17)*q^660 + 1/6*(59*zeta^5 - 284*zeta^3 + 
11*zeta^2 + 321*zeta + 111)*q^661 + 1/6*(48*zeta^5 - 233*zeta^3 + 7*zeta^2 + 
267*zeta - 75)*q^662 + 1/6*(-4*zeta^5 + 48*zeta^3 + 28*zeta^2 - 108*zeta - 
79)*q^664 + 1/6*(17*zeta^5 - 56*zeta^3 + 29*zeta^2 + 15*zeta - 47)*q^665 + 
1/6*(41*zeta^3 + 41*zeta^2 - 123*zeta - 134)*q^666 + 1/6*(2*zeta^5 + 13*zeta^3 +
23*zeta^2 - 57*zeta + 43)*q^667 + 1/3*(-50*zeta^5 + 244*zeta^3 - 6*zeta^2 - 
282*zeta + 81)*q^668 + 1/2*(-4*zeta^3 - 4*zeta^2 + 12*zeta - 3)*q^669 + 
1/6*(2*zeta^5 - 21*zeta^3 - 11*zeta^2 + 45*zeta - 15)*q^670 + 1/6*(-37*zeta^5 + 
167*zeta^3 - 18*zeta^2 - 168*zeta + 87)*q^671 + 1/6*(30*zeta^5 - 147*zeta^3 + 
3*zeta^2 + 171*zeta + 31)*q^672 + 1/6*(46*zeta^5 - 222*zeta^3 + 8*zeta^2 + 
252*zeta + 117)*q^673 + 1/6*(25*zeta^5 - 115*zeta^3 + 10*zeta^2 + 120*zeta + 
13)*q^674 + 1/6*(-8*zeta^5 + 41*zeta^3 + zeta^2 - 51*zeta - 7)*q^675 + 
1/3*(-4*zeta^5 + 16*zeta^3 - 4*zeta^2 - 12*zeta - 11)*q^677 + 1/6*(24*zeta^5 - 
92*zeta^3 + 28*zeta^2 + 60*zeta - 55)*q^678 + 1/6*(-21*zeta^5 + 125*zeta^3 + 
20*zeta^2 - 186*zeta - 114)*q^679 + 1/6*(27*zeta^5 - 117*zeta^3 + 18*zeta^2 + 
108*zeta + 2)*q^680 + 1/6*(7*zeta^5 - 26*zeta^3 + 9*zeta^2 + 15*zeta - 11)*q^681
+ 1/6*(51*zeta^5 - 233*zeta^3 + 22*zeta^2 + 240*zeta + 28)*q^682 + 
1/6*(-42*zeta^5 + 212*zeta^3 + 2*zeta^2 - 258*zeta - 3)*q^683 + 1/6*(52*zeta^5 -
280*zeta^3 - 20*zeta^2 + 372*zeta - 29)*q^684 + 1/3*(6*zeta^5 - 40*zeta^3 - 
10*zeta^2 + 66*zeta - 18)*q^685 + 1/6*(-13*zeta^5 + 117*zeta^3 + 52*zeta^2 - 
234*zeta - 208)*q^686 + 1/6*(-59*zeta^5 + 267*zeta^3 - 28*zeta^2 - 270*zeta - 
12)*q^687 + 1/6*(-15*zeta^5 + 63*zeta^3 - 12*zeta^2 - 54*zeta + 58)*q^688 + 
1/6*(7*zeta^5 - 32*zeta^3 + 3*zeta^2 + 33*zeta - 21)*q^690 + 1/6*(34*zeta^5 - 
118*zeta^3 + 52*zeta^2 + 48*zeta - 69)*q^691 + 1/3*(-36*zeta^5 + 124*zeta^3 - 
56*zeta^2 - 48*zeta + 104)*q^692 + 1/6*(-4*zeta^5 - 9*zeta^3 - 29*zeta^2 + 
63*zeta - 5)*q^693 + 1/6*(42*zeta^5 - 225*zeta^3 - 15*zeta^2 + 297*zeta - 
25)*q^694 + 1/6*(-18*zeta^5 + 53*zeta^3 - 37*zeta^2 + 3*zeta - 45)*q^695 + 
1/6*(19*zeta^5 - 117*zeta^3 - 22*zeta^2 + 180*zeta - 1)*q^696 + 1/6*(-20*zeta^5 
+ 71*zeta^3 - 29*zeta^2 - 33*zeta + 73)*q^697 + 1/6*(-43*zeta^5 + 193*zeta^3 - 
22*zeta^2 - 192*zeta - 16)*q^698 + 1/6*(-14*zeta^5 + 67*zeta^3 - 3*zeta^2 - 
75*zeta - 26)*q^699 + 1/6*(23*zeta^5 - 127*zeta^3 - 12*zeta^2 + 174*zeta + 
97)*q^700 + 1/6*(-3*zeta^5 - 29*zeta^3 - 44*zeta^2 + 114*zeta + 48)*q^701 + 
O(q^702), 1/2*(zeta^5 - 3*zeta^3 + 2*zeta^2)*q + 1/2*(-6*zeta^5 + 24*zeta^3 - 
6*zeta^2 - 18*zeta + 7)*q^2 + 1/2*(13*zeta^5 - 58*zeta^3 + 7*zeta^2 + 57*zeta + 
3)*q^3 + 1/2*(-7*zeta^5 + 31*zeta^3 - 4*zeta^2 - 30*zeta - 10)*q^4 + 
1/2*(4*zeta^5 - 11*zeta^3 + 9*zeta^2 - 3*zeta - 30)*q^5 + 1/2*(-7*zeta^5 + 
36*zeta^3 + zeta^2 - 45*zeta - 6)*q^6 + 1/2*(-8*zeta^5 + 37*zeta^3 - 3*zeta^2 - 
39*zeta - 15)*q^7 + 1/2*(-11*zeta^5 + 37*zeta^3 - 18*zeta^2 - 12*zeta + 49)*q^8 
+ 1/2*(12*zeta^5 - 65*zeta^3 - 5*zeta^2 + 87*zeta - 2)*q^9 + 1/2*(4*zeta^5 - 
15*zeta^3 + 5*zeta^2 + 9*zeta - 3)*q^10 + 1/2*(17*zeta^5 - 76*zeta^3 + 9*zeta^2 
+ 75*zeta - 5)*q^11 + 1/2*(6*zeta^5 - 11*zeta^3 + 19*zeta^2 - 21*zeta - 41)*q^12
+ 1/2*(-11*zeta^5 + 43*zeta^3 - 12*zeta^2 - 30*zeta + 38)*q^14 + 1/2*(-3*zeta^5 
+ 16*zeta^3 + zeta^2 - 21*zeta - 18)*q^15 + 1/2*(3*zeta^5 - 16*zeta^3 - zeta^2 +
21*zeta + 18)*q^16 + 1/2*(13*zeta^5 - 61*zeta^3 + 4*zeta^2 + 66*zeta + 11)*q^17 
+ 1/2*(7*zeta^5 - 32*zeta^3 + 3*zeta^2 + 33*zeta - 8)*q^18 + 1/2*(6*zeta^5 - 
20*zeta^3 + 10*zeta^2 + 6*zeta + 9)*q^19 + 1/2*(zeta^5 + 9*zeta^3 + 14*zeta^2 - 
36*zeta + 17)*q^20 + 1/2*(12*zeta^5 - 28*zeta^3 + 32*zeta^2 - 24*zeta - 71)*q^21
+ 1/2*(-19*zeta^5 + 96*zeta^3 + zeta^2 - 117*zeta - 8)*q^22 + 1/2*(-20*zeta^5 + 
89*zeta^3 - 11*zeta^2 - 87*zeta - 18)*q^23 + 1/2*(-25*zeta^5 + 109*zeta^3 - 
16*zeta^2 - 102*zeta + 16)*q^24 + 1/2*(-17*zeta^5 + 54*zeta^3 - 31*zeta^2 - 
9*zeta + 79)*q^25 + 1/2*(15*zeta^5 - 54*zeta^3 + 21*zeta^2 + 27*zeta - 68)*q^27 
+ 1/2*(-2*zeta^5 + 12*zeta^3 + 2*zeta^2 - 18*zeta + 9)*q^28 + 1/2*(-43*zeta^5 + 
197*zeta^3 - 18*zeta^2 - 204*zeta - 49)*q^29 + 1/2*(5*zeta^3 + 5*zeta^2 - 
15*zeta + 4)*q^30 + 1/2*(-27*zeta^5 + 88*zeta^3 - 47*zeta^2 - 21*zeta + 
128)*q^31 + 1/2*(14*zeta^5 - 97*zeta^3 - 27*zeta^2 + 165*zeta - 8)*q^32 + 
1/2*(29*zeta^5 - 165*zeta^3 - 20*zeta^2 + 234*zeta + 17)*q^33 + 1/2*(17*zeta^5 -
78*zeta^3 + 7*zeta^2 + 81*zeta - 35)*q^34 + 1/2*(-4*zeta^5 + 38*zeta^3 + 
18*zeta^2 - 78*zeta + 25)*q^35 + 1/2*(22*zeta^5 - 109*zeta^3 + zeta^2 + 129*zeta
+ 52)*q^36 + 1/2*(-24*zeta^5 + 110*zeta^3 - 10*zeta^2 - 114*zeta - 5)*q^37 + 
1/2*(16*zeta^5 - 81*zeta^3 - zeta^2 + 99*zeta - 24)*q^38 + 1/2*(13*zeta^5 - 
54*zeta^3 + 11*zeta^2 + 45*zeta - 57)*q^40 + 1/2*(66*zeta^5 - 289*zeta^3 + 
41*zeta^2 + 273*zeta - 6)*q^41 + 1/2*(-17*zeta^5 + 76*zeta^3 - 9*zeta^2 - 
75*zeta + 5)*q^42 + 1/2*(-15*zeta^5 + 82*zeta^3 + 7*zeta^2 - 111*zeta + 20)*q^43
+ 1/2*(-2*zeta^5 + 35*zeta^3 + 25*zeta^2 - 87*zeta - 25)*q^44 + 1/2*(-9*zeta^5 +
52*zeta^3 + 7*zeta^2 - 75*zeta + 21)*q^45 + 1/2*(-4*zeta^5 + 18*zeta^3 - 
2*zeta^2 - 18*zeta + 9)*q^46 + 1/2*(-2*zeta^5 - 5*zeta^3 - 15*zeta^2 + 33*zeta -
8)*q^47 + 1/2*(-6*zeta^5 + 35*zeta^3 + 5*zeta^2 - 51*zeta + 3)*q^48 + 
1/2*(7*zeta^5 - 34*zeta^3 + zeta^2 + 39*zeta + 10)*q^49 + 1/2*(17*zeta^5 - 
65*zeta^3 + 20*zeta^2 + 42*zeta - 43)*q^50 + 1/2*(-7*zeta^5 + 8*zeta^3 - 
27*zeta^2 + 39*zeta + 52)*q^51 + 1/2*(-23*zeta^5 + 47*zeta^3 - 68*zeta^2 + 
66*zeta + 153)*q^53 + 1/2*(-4*zeta^5 + 7*zeta^3 - 13*zeta^2 + 15*zeta + 46)*q^54
+ 1/2*(15*zeta^5 - 64*zeta^3 + 11*zeta^2 + 57*zeta + 4)*q^55 + 1/2*(31*zeta^5 - 
171*zeta^3 - 16*zeta^2 + 234*zeta - 2)*q^56 + 1/2*(zeta^5 - 9*zeta^3 - 4*zeta^2 
+ 18*zeta + 11)*q^57 + 1/2*(15*zeta^5 - 68*zeta^3 + 7*zeta^2 + 69*zeta + 
25)*q^58 + 1/2*(-5*zeta^5 + 50*zeta^3 + 25*zeta^2 - 105*zeta - 9)*q^59 + 
1/2*(-3*zeta^5 + 8*zeta^3 - 7*zeta^2 + 3*zeta + 30)*q^60 + 1/2*(6*zeta^5 - 
60*zeta^3 - 30*zeta^2 + 126*zeta - 23)*q^61 + 1/2*(20*zeta^5 - 73*zeta^3 + 
27*zeta^2 + 39*zeta - 68)*q^62 + 1/2*(39*zeta^5 - 182*zeta^3 + 13*zeta^2 + 
195*zeta + 52)*q^63 + 1/2*(-5*zeta^5 + 50*zeta^3 + 25*zeta^2 - 105*zeta - 
36)*q^64 + 1/2*(9*zeta^5 - 8*zeta^3 + 37*zeta^2 - 57*zeta - 63)*q^66 + 
1/2*(-62*zeta^5 + 279*zeta^3 - 31*zeta^2 - 279*zeta - 45)*q^67 + 1/2*(5*zeta^5 -
39*zeta^3 - 14*zeta^2 + 72*zeta + 47)*q^68 + 1/2*(-9*zeta^5 + 43*zeta^3 - 
2*zeta^2 - 48*zeta - 20)*q^69 + 1/2*(14*zeta^5 - 63*zeta^3 + 7*zeta^2 + 63*zeta 
- 46)*q^70 + 1/2*(-10*zeta^5 + 45*zeta^3 - 5*zeta^2 - 45*zeta - 62)*q^71 + 
1/2*(-22*zeta^5 + 104*zeta^3 - 6*zeta^2 - 114*zeta - 31)*q^72 + 1/2*(-23*zeta^5 
+ 117*zeta^3 + 2*zeta^2 - 144*zeta + 81)*q^73 + 1/2*(31*zeta^5 - 151*zeta^3 + 
4*zeta^2 + 174*zeta + 14)*q^74 + 1/2*(-48*zeta^5 + 209*zeta^3 - 31*zeta^2 - 
195*zeta + 28)*q^75 + 1/2*(-14*zeta^5 + 43*zeta^3 - 27*zeta^2 - 3*zeta + 
51)*q^76 + 1/2*(6*zeta^5 + 12*zeta^3 + 42*zeta^2 - 90*zeta - 55)*q^77 + 
1/2*(-zeta^5 + 56*zeta^3 + 51*zeta^2 - 159*zeta - 69)*q^79 + 1/2*(-17*zeta^5 + 
81*zeta^3 - 4*zeta^2 - 90*zeta - 43)*q^80 + 1/2*(65*zeta^5 - 279*zeta^3 + 
46*zeta^2 + 252*zeta - 23)*q^81 + 1/2*(-24*zeta^5 + 136*zeta^3 + 16*zeta^2 - 
192*zeta - 25)*q^82 + 1/2*(41*zeta^5 - 156*zeta^3 + 49*zeta^2 + 99*zeta - 
193)*q^83 + 1/2*(-21*zeta^5 + 128*zeta^3 + 23*zeta^2 - 195*zeta - 2)*q^84 + 
1/2*(-6*zeta^5 + 15*zeta^3 - 15*zeta^2 + 9*zeta - 13)*q^85 + 1/2*(-8*zeta^5 + 
53*zeta^3 + 13*zeta^2 - 87*zeta - 25)*q^86 + 1/2*(-26*zeta^5 + 138*zeta^3 + 
8*zeta^2 - 180*zeta - 43)*q^87 + 1/2*(-61*zeta^5 + 275*zeta^3 - 30*zeta^2 - 
276*zeta - 18)*q^88 + 1/2*(-23*zeta^5 + 121*zeta^3 + 6*zeta^2 - 156*zeta - 
122)*q^89 + 1/2*(-2*zeta^5 + 24*zeta^3 + 14*zeta^2 - 54*zeta - 33)*q^90 + 
1/2*(-24*zeta^5 + 91*zeta^3 - 29*zeta^2 - 57*zeta + 106)*q^92 + 1/2*(-60*zeta^5 
+ 260*zeta^3 - 40*zeta^2 - 240*zeta + 47)*q^93 + 1/2*(42*zeta^5 - 179*zeta^3 + 
31*zeta^2 + 159*zeta - 11)*q^94 + 1/2*(-7*zeta^5 + 16*zeta^3 - 19*zeta^2 + 
15*zeta - 22)*q^95 + 1/2*(-19*zeta^5 + 43*zeta^3 - 52*zeta^2 + 42*zeta + 
82)*q^96 + 1/2*(-44*zeta^5 + 227*zeta^3 + 7*zeta^2 - 285*zeta - 13)*q^97 + 
1/2*(-12*zeta^5 + 55*zeta^3 - 5*zeta^2 - 57*zeta - 6)*q^98 + 1/2*(-13*zeta^5 + 
13*zeta^3 - 52*zeta^2 + 78*zeta + 104)*q^99 + 1/2*(37*zeta^5 - 196*zeta^3 - 
11*zeta^2 + 255*zeta + 3)*q^100 + 1/2*(83*zeta^5 - 351*zeta^3 + 64*zeta^2 + 
306*zeta - 44)*q^101 + 1/2*(16*zeta^5 - 77*zeta^3 + 3*zeta^2 + 87*zeta + 
16)*q^102 + 1/2*(37*zeta^5 - 145*zeta^3 + 40*zeta^2 + 102*zeta - 163)*q^103 + 
1/2*(-7*zeta^5 + 25*zeta^3 - 10*zeta^2 - 12*zeta + 49)*q^105 + 1/2*(29*zeta^5 - 
138*zeta^3 + 7*zeta^2 + 153*zeta + 14)*q^106 + 1/2*(-3*zeta^5 - 15*zeta^2 + 
27*zeta + 68)*q^107 + 1/2*(-28*zeta^5 + 148*zeta^3 + 8*zeta^2 - 192*zeta + 
13)*q^108 + (10*zeta^5 - 17*zeta^3 + 33*zeta^2 - 39*zeta - 52)*q^109 + 
1/2*(10*zeta^5 - 43*zeta^3 + 7*zeta^2 + 39*zeta - 4)*q^110 + 1/2*(-37*zeta^5 + 
212*zeta^3 + 27*zeta^2 - 303*zeta - 24)*q^111 + 1/2*(7*zeta^5 - 25*zeta^3 + 
10*zeta^2 + 12*zeta - 49)*q^112 + 1/2*(22*zeta^5 - 125*zeta^3 - 15*zeta^2 + 
177*zeta + 48)*q^113 + 1/2*(-5*zeta^5 + 14*zeta^3 - 11*zeta^2 + 3*zeta + 
24)*q^114 + 1/2*(33*zeta^5 - 152*zeta^3 + 13*zeta^2 + 159*zeta + 69)*q^115 + 
1/2*(-28*zeta^5 + 72*zeta^3 - 68*zeta^2 + 36*zeta + 191)*q^116 + 1/2*(20*zeta^5 
- 134*zeta^3 - 34*zeta^2 + 222*zeta + 23)*q^118 + 1/2*(14*zeta^5 - 71*zeta^3 - 
zeta^2 + 87*zeta + 15)*q^119 + 1/2*(-20*zeta^5 + 89*zeta^3 - 11*zeta^2 - 87*zeta
- 18)*q^120 + 1/2*(36*zeta^5 - 205*zeta^3 - 25*zeta^2 + 291*zeta - 14)*q^121 + 
1/2*(-24*zeta^5 + 127*zeta^3 + 7*zeta^2 - 165*zeta + 40)*q^122 + 1/2*(81*zeta^5 
- 445*zeta^3 - 40*zeta^2 + 606*zeta + 66)*q^123 + 1/2*(54*zeta^5 - 290*zeta^3 - 
20*zeta^2 + 384*zeta - 7)*q^124 + 1/2*(-3*zeta^5 - 16*zeta^3 - 31*zeta^2 + 
75*zeta + 74)*q^125 + 1/2*(-26*zeta^5 + 117*zeta^3 - 13*zeta^2 - 117*zeta - 
26)*q^126 + 1/2*(61*zeta^5 - 294*zeta^3 + 11*zeta^2 + 333*zeta + 99)*q^127 + 
1/2*(78*zeta^5 - 331*zeta^3 + 59*zeta^2 + 291*zeta - 10)*q^128 + 1/2*(-13*zeta^5
+ 54*zeta^3 - 11*zeta^2 - 45*zeta + 57)*q^129 + 1/2*(17*zeta^5 - 82*zeta^3 + 
3*zeta^2 + 93*zeta - 84)*q^131 + 1/2*(69*zeta^5 - 297*zeta^3 + 48*zeta^2 + 
270*zeta - 31)*q^132 + 1/2*(-18*zeta^5 + 69*zeta^3 - 21*zeta^2 - 45*zeta + 
16)*q^133 + 1/2*(17*zeta^5 - 85*zeta^3 + 102*zeta + 31)*q^134 + 1/2*(-26*zeta^5 
+ 102*zeta^3 - 28*zeta^2 - 72*zeta + 125)*q^135 + 1/2*(-37*zeta^5 + 186*zeta^3 +
zeta^2 - 225*zeta - 11)*q^136 + (4*zeta^5 - 14*zeta^3 + 6*zeta^2 + 6*zeta + 
28)*q^137 + 1/2*(-11*zeta^5 + 37*zeta^3 - 18*zeta^2 - 12*zeta + 49)*q^138 + 
1/2*(-41*zeta^5 + 265*zeta^3 + 60*zeta^2 - 426*zeta + 13)*q^139 + 
1/2*(-40*zeta^5 + 175*zeta^3 - 25*zeta^2 - 165*zeta - 41)*q^140 + 
1/2*(-97*zeta^5 + 430*zeta^3 - 55*zeta^2 - 417*zeta - 14)*q^141 + 
1/2*(-15*zeta^5 + 18*zeta^3 - 57*zeta^2 + 81*zeta + 134)*q^142 + 1/2*(14*zeta^5 
- 51*zeta^3 + 19*zeta^2 + 27*zeta - 68)*q^144 + 1/2*(52*zeta^5 - 250*zeta^3 + 
10*zeta^2 + 282*zeta + 151)*q^145 + 1/2*(-39*zeta^5 + 204*zeta^3 + 9*zeta^2 - 
261*zeta - 128)*q^146 + 1/2*(8*zeta^5 - 47*zeta^3 - 7*zeta^2 + 69*zeta + 
7)*q^147 + 1/2*(7*zeta^5 - 73*zeta^3 - 38*zeta^2 + 156*zeta + 39)*q^148 + 
1/2*(3*zeta^5 - 33*zeta^3 - 18*zeta^2 + 72*zeta + 3)*q^149 + 1/2*(34*zeta^5 - 
184*zeta^3 - 14*zeta^2 + 246*zeta + 17)*q^150 + 1/2*(57*zeta^5 - 219*zeta^3 + 
66*zeta^2 + 144*zeta - 250)*q^151 + 1/2*(-21*zeta^5 + 97*zeta^3 - 8*zeta^2 - 
102*zeta + 7)*q^152 + 1/2*(-25*zeta^5 + 128*zeta^3 + 3*zeta^2 - 159*zeta - 
65)*q^153 + 1/2*(-41*zeta^5 + 194*zeta^3 - 11*zeta^2 - 213*zeta - 43)*q^154 + 
1/2*(34*zeta^5 - 136*zeta^3 + 34*zeta^2 + 102*zeta - 163)*q^155 + 1/2*(5*zeta^5 
+ 10*zeta^3 + 35*zeta^2 - 75*zeta - 74)*q^157 + 1/2*(-31*zeta^5 + 177*zeta^3 + 
22*zeta^2 - 252*zeta - 129)*q^158 + 1/2*(-103*zeta^5 + 441*zeta^3 - 74*zeta^2 - 
396*zeta + 84)*q^159 + 1/2*(5*zeta^5 + 10*zeta^3 + 35*zeta^2 - 75*zeta + 
57)*q^160 + 1/2*(-33*zeta^5 + 116*zeta^3 - 49*zeta^2 - 51*zeta + 166)*q^161 + 
1/2*(-7*zeta^5 + 62*zeta^3 + 27*zeta^2 - 123*zeta - 19)*q^162 + 1/2*(27*zeta^5 -
145*zeta^3 - 10*zeta^2 + 192*zeta + 81)*q^163 + 1/2*(42*zeta^5 - 119*zeta^3 + 
91*zeta^2 - 21*zeta - 210)*q^164 + 1/2*(8*zeta^5 - 37*zeta^3 + 3*zeta^2 + 
39*zeta + 15)*q^165 + 1/2*(13*zeta^5 - 85*zeta^3 - 20*zeta^2 + 138*zeta + 
127)*q^166 + (-51*zeta^5 + 211*zeta^3 - 44*zeta^2 - 174*zeta + 43)*q^167 + 
1/2*(-14*zeta^5 + 11*zeta^3 - 59*zeta^2 + 93*zeta + 85)*q^168 + 1/2*(-21*zeta^5 
+ 107*zeta^3 + 2*zeta^2 - 132*zeta + 32)*q^170 + 1/2*(-7*zeta^5 + 53*zeta^3 + 
18*zeta^2 - 96*zeta - 91)*q^171 + 1/2*(-29*zeta^5 + 159*zeta^3 + 14*zeta^2 - 
216*zeta - 148)*q^172 + (-28*zeta^5 + 184*zeta^3 + 44*zeta^2 - 300*zeta + 
8)*q^173 + 1/2*(-18*zeta^5 + 39*zeta^3 - 51*zeta^2 + 45*zeta + 112)*q^174 + 
1/2*(51*zeta^5 - 283*zeta^3 - 28*zeta^2 + 390*zeta + 3)*q^175 + 1/2*(-8*zeta^5 +
37*zeta^3 - 3*zeta^2 - 39*zeta - 15)*q^176 + 1/2*(34*zeta^5 - 97*zeta^3 + 
73*zeta^2 - 15*zeta - 150)*q^177 + 1/2*(6*zeta^5 + 5*zeta^3 + 35*zeta^2 - 
69*zeta + 29)*q^178 + 1/2*(-61*zeta^5 + 275*zeta^3 - 30*zeta^2 - 276*zeta - 
18)*q^179 + 1/2*(-23*zeta^5 + 124*zeta^3 + 9*zeta^2 - 165*zeta - 117)*q^180 + 
1/2*(10*zeta^5 + 23*zeta^3 + 73*zeta^2 - 159*zeta - 69)*q^181 + 1/2*(-7*zeta^5 +
15*zeta^3 - 20*zeta^2 + 18*zeta + 11)*q^183 + 1/2*(-4*zeta^5 + 31*zeta^3 + 
11*zeta^2 - 57*zeta - 83)*q^184 + 1/2*(-16*zeta^5 + 63*zeta^3 - 17*zeta^2 - 
45*zeta + 17)*q^185 + 1/2*(47*zeta^5 - 255*zeta^3 - 20*zeta^2 + 342*zeta + 
20)*q^186 + 1/2*(zeta^5 - 50*zeta^3 - 45*zeta^2 + 141*zeta + 58)*q^187 + 
1/2*(33*zeta^5 - 149*zeta^3 + 16*zeta^2 + 150*zeta + 69)*q^188 + 1/2*(-34*zeta^5
+ 193*zeta^3 + 23*zeta^2 - 273*zeta + 24)*q^189 + 1/2*(-26*zeta^5 + 127*zeta^3 -
3*zeta^2 - 147*zeta + 51)*q^190 + 1/2*(-63*zeta^5 + 304*zeta^3 - 11*zeta^2 - 
345*zeta - 70)*q^191 + 1/2*(38*zeta^5 - 156*zeta^3 + 34*zeta^2 + 126*zeta - 
51)*q^192 + (52*zeta^5 - 229*zeta^3 + 31*zeta^2 + 219*zeta + 17)*q^193 + 
1/2*(-37*zeta^5 + 165*zeta^3 - 20*zeta^2 - 162*zeta + 70)*q^194 + 1/2*(-5*zeta^5
+ 38*zeta^3 + 13*zeta^2 - 69*zeta - 14)*q^196 + 1/2*(34*zeta^5 - 173*zeta^3 - 
3*zeta^2 + 213*zeta + 124)*q^197 + 1/2*(26*zeta^5 - 130*zeta^3 + 156*zeta + 
39)*q^198 + 1/2*(66*zeta^5 - 360*zeta^3 - 30*zeta^2 + 486*zeta - 13)*q^199 + 
1/2*(20*zeta^5 - 52*zeta^3 + 48*zeta^2 - 24*zeta - 71)*q^200 + 1/2*(-48*zeta^5 +
257*zeta^3 + 17*zeta^2 - 339*zeta - 62)*q^201 + 1/2*(8*zeta^5 + 5*zeta^3 + 
45*zeta^2 - 87*zeta - 19)*q^202 + 1/2*(-53*zeta^5 + 154*zeta^3 - 111*zeta^2 + 
15*zeta + 319)*q^203 + 1/2*(10*zeta^5 - 74*zeta^3 - 24*zeta^2 + 132*zeta + 
5)*q^204 + 1/2*(-11*zeta^5 + 54*zeta^3 - zeta^2 - 63*zeta - 55)*q^205 + 
1/2*(9*zeta^5 - 70*zeta^3 - 25*zeta^2 + 129*zeta + 130)*q^206 + 1/2*(-9*zeta^5 +
30*zeta^3 - 15*zeta^2 - 9*zeta + 79)*q^207 + 1/2*(21*zeta^5 - 101*zeta^3 + 
4*zeta^2 + 114*zeta - 43)*q^209 + 1/2*(-15*zeta^5 + 64*zeta^3 - 11*zeta^2 - 
57*zeta - 4)*q^210 + 1/2*(-19*zeta^5 + 58*zeta^3 - 37*zeta^2 - 3*zeta + 
133)*q^211 + 1/2*(30*zeta^5 - 211*zeta^3 - 61*zeta^2 + 363*zeta - 10)*q^212 + 
1/2*(57*zeta^5 - 161*zeta^3 + 124*zeta^2 - 30*zeta - 300)*q^213 + 
1/2*(-10*zeta^5 + 23*zeta^3 - 27*zeta^2 + 21*zeta - 12)*q^214 + 1/2*(28*zeta^5 -
167*zeta^3 - 27*zeta^2 + 249*zeta - 62)*q^215 + 1/2*(-2*zeta^5 + 7*zeta^3 - 
3*zeta^2 - 3*zeta - 30)*q^216 + 1/2*(74*zeta^5 - 417*zeta^3 - 47*zeta^2 + 
585*zeta - 14)*q^217 + (-34*zeta^5 + 149*zeta^3 - 21*zeta^2 - 141*zeta + 
5)*q^218 + 1/2*(103*zeta^5 - 451*zeta^3 + 64*zeta^2 + 426*zeta + 12)*q^219 + 
1/2*(25*zeta^5 - 106*zeta^3 + 19*zeta^2 + 93*zeta - 84)*q^220 + 1/2*(-10*zeta^5 
- zeta^3 - 51*zeta^2 + 93*zeta + 85)*q^222 + 1/2*(-21*zeta^5 + 93*zeta^3 - 
12*zeta^2 - 90*zeta - 45)*q^223 + 1/2*(109*zeta^5 - 472*zeta^3 + 73*zeta^2 + 
435*zeta + 10)*q^224 + 1/2*(-37*zeta^5 + 182*zeta^3 - 3*zeta^2 - 213*zeta - 
48)*q^225 + 1/2*(7*zeta^5 + 28*zeta^3 + 63*zeta^2 - 147*zeta - 118)*q^226 + 
1/2*(-19*zeta^5 + 136*zeta^3 + 41*zeta^2 - 237*zeta + 24)*q^227 + 
1/2*(-12*zeta^5 + 45*zeta^3 - 15*zeta^2 - 27*zeta - 14)*q^228 + 1/2*(-55*zeta^5 
+ 163*zeta^3 - 112*zeta^2 + 6*zeta + 229)*q^229 + 1/2*(15*zeta^5 - 82*zeta^3 - 
7*zeta^2 + 111*zeta - 20)*q^230 + 1/2*(118*zeta^5 - 513*zeta^3 + 77*zeta^2 + 
477*zeta - 37)*q^231 + 1/2*(17*zeta^5 - 66*zeta^3 + 19*zeta^2 + 45*zeta - 
101)*q^232 + 1/2*(9*zeta^5 - 30*zeta^3 + 15*zeta^2 + 9*zeta - 79)*q^233 + 
1/2*(-38*zeta^5 + 123*zeta^3 - 67*zeta^2 - 27*zeta + 237)*q^235 + 
1/2*(-55*zeta^5 + 196*zeta^3 - 79*zeta^2 - 93*zeta + 165)*q^236 + 
1/2*(114*zeta^5 - 487*zeta^3 + 83*zeta^2 + 435*zeta - 72)*q^237 + 
1/2*(-47*zeta^5 + 219*zeta^3 - 16*zeta^2 - 234*zeta - 15)*q^238 + 
1/2*(-34*zeta^5 + 81*zeta^3 - 89*zeta^2 + 63*zeta + 123)*q^239 + 1/2*(4*zeta^5 -
28*zeta^3 - 8*zeta^2 + 48*zeta - 17)*q^240 + 1/2*(-77*zeta^5 + 401*zeta^3 + 
16*zeta^2 - 510*zeta - 62)*q^241 + 1/2*(11*zeta^5 - 44*zeta^3 + 11*zeta^2 + 
33*zeta - 8)*q^242 + 1/2*(62*zeta^5 - 299*zeta^3 + 11*zeta^2 + 339*zeta + 
98)*q^243 + 1/2*(66*zeta^5 - 269*zeta^3 + 61*zeta^2 + 213*zeta - 29)*q^244 + 
1/2*(zeta^5 + zeta^3 + 6*zeta^2 - 12*zeta - 21)*q^245 + 1/2*(41*zeta^5 - 
99*zeta^3 + 106*zeta^2 - 72*zeta - 213)*q^246 + 1/2*(20*zeta^5 - 47*zeta^3 + 
53*zeta^2 - 39*zeta - 52)*q^248 + 1/2*(-18*zeta^5 + 85*zeta^3 - 5*zeta^2 - 
93*zeta - 70)*q^249 + 1/2*(-6*zeta^5 - zeta^3 - 31*zeta^2 + 57*zeta + 78)*q^250 
+ (-53*zeta^5 + 275*zeta^3 + 10*zeta^2 - 348*zeta - 29)*q^251 + 1/2*(13*zeta^5 +
65*zeta^2 - 117*zeta - 156)*q^252 + 1/2*(-31*zeta^5 + 171*zeta^3 + 16*zeta^2 - 
234*zeta + 2)*q^253 + 1/2*(-79*zeta^5 + 356*zeta^3 - 39*zeta^2 - 357*zeta - 
50)*q^254 + 1/2*(-2*zeta^5 + 12*zeta^3 + 2*zeta^2 - 18*zeta - 11)*q^255 + 
1/2*(-28*zeta^5 + 170*zeta^3 + 30*zeta^2 - 258*zeta - 37)*q^256 + 1/2*(3*zeta^5 
- 61*zeta^3 - 46*zeta^2 + 156*zeta + 281)*q^257 + 1/2*(-9*zeta^5 + 51*zeta^3 + 
6*zeta^2 - 72*zeta - 49)*q^258 + 1/2*(-7*zeta^5 - 27*zeta^3 - 62*zeta^2 + 
144*zeta + 88)*q^259 + 1/2*(-24*zeta^5 + 119*zeta^3 - zeta^2 - 141*zeta + 
111)*q^261 + 1/2*(44*zeta^5 - 207*zeta^3 + 13*zeta^2 + 225*zeta + 66)*q^262 + 
1/2*(116*zeta^5 - 498*zeta^3 + 82*zeta^2 + 450*zeta - 23)*q^263 + 
1/2*(-75*zeta^5 + 420*zeta^3 + 45*zeta^2 - 585*zeta - 61)*q^264 + 1/2*(17*zeta^5
- 52*zeta^3 + 33*zeta^2 + 3*zeta - 139)*q^265 + 1/2*(-38*zeta^5 + 166*zeta^3 - 
24*zeta^2 - 156*zeta - 3)*q^266 + 1/2*(35*zeta^5 - 204*zeta^3 - 29*zeta^2 + 
297*zeta - 23)*q^267 + 1/2*(-45*zeta^5 + 132*zeta^3 - 93*zeta^2 + 9*zeta + 
259)*q^268 + 1/2*(-13*zeta^5 + 57*zeta^3 - 8*zeta^2 - 54*zeta - 48)*q^269 + 
1/2*(-17*zeta^5 + 92*zeta^3 + 7*zeta^2 - 123*zeta - 81)*q^270 + 1/2*(-110*zeta^5
+ 503*zeta^3 - 47*zeta^2 - 519*zeta - 161)*q^271 + 1/2*(2*zeta^5 - 12*zeta^3 - 
2*zeta^2 + 18*zeta + 11)*q^272 + (10*zeta^5 - 28*zeta^3 + 22*zeta^2 - 6*zeta - 
60)*q^274 + 1/2*(-110*zeta^5 + 491*zeta^3 - 59*zeta^2 - 483*zeta - 12)*q^275 + 
1/2*(-5*zeta^5 + 20*zeta^3 - 5*zeta^2 - 15*zeta + 34)*q^276 + 1/2*(35*zeta^5 - 
230*zeta^3 - 55*zeta^2 + 375*zeta - 10)*q^277 + 1/2*(19*zeta^5 - 142*zeta^3 - 
47*zeta^2 + 255*zeta + 15)*q^278 + 1/2*(-47*zeta^5 + 221*zeta^3 - 14*zeta^2 - 
240*zeta - 81)*q^279 + 1/2*(-17*zeta^5 + 103*zeta^3 + 18*zeta^2 - 156*zeta + 
51)*q^280 + 1/2*(23*zeta^5 - 58*zeta^3 + 57*zeta^2 - 33*zeta - 161)*q^281 + 
1/2*(44*zeta^5 - 233*zeta^3 - 13*zeta^2 + 303*zeta + 42)*q^282 + (-94*zeta^5 + 
427*zeta^3 - 43*zeta^2 - 435*zeta - 87)*q^283 + 1/2*(-37*zeta^3 - 37*zeta^2 + 
111*zeta + 220)*q^284 + 1/2*(3*zeta^5 - 2*zeta^3 + 13*zeta^2 - 21*zeta - 
41)*q^285 + 1/2*(67*zeta^5 - 178*zeta^3 + 157*zeta^2 - 69*zeta - 352)*q^287 + 
1/2*(-30*zeta^5 + 99*zeta^3 - 51*zeta^2 - 27*zeta + 169)*q^288 + 1/2*(22*zeta^5 
- 69*zeta^3 + 41*zeta^2 + 9*zeta - 163)*q^289 + 1/2*(3*zeta^5 - 47*zeta^3 - 
32*zeta^2 + 114*zeta - 42)*q^290 + 1/2*(20*zeta^5 - 16*zeta^3 + 84*zeta^2 - 
132*zeta - 137)*q^291 + 1/2*(32*zeta^5 - 149*zeta^3 + 11*zeta^2 + 159*zeta - 
76)*q^292 + 1/2*(95*zeta^5 - 509*zeta^3 - 34*zeta^2 + 672*zeta - 17)*q^293 + 
1/2*(zeta^5 + 9*zeta^3 + 14*zeta^2 - 36*zeta - 22)*q^294 + 1/2*(-29*zeta^5 + 
129*zeta^3 - 16*zeta^2 - 126*zeta - 12)*q^295 + 1/2*(77*zeta^5 - 352*zeta^3 + 
33*zeta^2 + 363*zeta + 34)*q^296 + 1/2*(56*zeta^5 - 258*zeta^3 + 22*zeta^2 + 
270*zeta + 47)*q^297 + 1/2*(-15*zeta^5 + 96*zeta^3 + 21*zeta^2 - 153*zeta - 
9)*q^298 + 1/2*(-14*zeta^5 + 5*zeta^3 - 65*zeta^2 + 111*zeta + 96)*q^300 + 
1/2*(-51*zeta^5 + 254*zeta^3 - zeta^2 - 303*zeta - 167)*q^301 + 1/2*(4*zeta^5 - 
64*zeta^3 - 44*zeta^2 + 156*zeta + 197)*q^302 + 1/2*(101*zeta^5 - 542*zeta^3 - 
37*zeta^2 + 717*zeta + 83)*q^303 + 1/2*(-3*zeta^5 + 2*zeta^3 - 13*zeta^2 + 
21*zeta + 41)*q^304 + 1/2*(zeta^5 + 48*zeta^3 + 53*zeta^2 - 153*zeta + 82)*q^305
+ 1/2*(53*zeta^5 - 234*zeta^3 + 31*zeta^2 + 225*zeta + 28)*q^306 + (zeta^5 + 
32*zeta^3 + 37*zeta^2 - 105*zeta - 36)*q^307 + 1/2*(-17*zeta^5 + 116*zeta^3 + 
31*zeta^2 - 195*zeta - 40)*q^308 + 1/2*(-15*zeta^5 + 69*zeta^3 - 6*zeta^2 - 
72*zeta - 52)*q^309 + 1/2*(27*zeta^5 - 142*zeta^3 - 7*zeta^2 + 183*zeta + 
109)*q^310 + 1/2*(-71*zeta^5 + 306*zeta^3 - 49*zeta^2 - 279*zeta + 252)*q^311 + 
1/2*(-36*zeta^5 + 86*zeta^3 - 94*zeta^2 + 66*zeta + 153)*q^313 + 1/2*(-6*zeta^5 
+ 49*zeta^3 + 19*zeta^2 - 93*zeta - 64)*q^314 + 1/2*(-39*zeta^5 + 195*zeta^3 - 
234*zeta - 143)*q^315 + 1/2*(23*zeta^5 - 42*zeta^3 + 73*zeta^2 - 81*zeta - 
11)*q^316 + (-18*zeta^5 + 20*zeta^3 - 70*zeta^2 + 102*zeta + 175)*q^317 + 
1/2*(52*zeta^5 - 305*zeta^3 - 45*zeta^2 + 447*zeta + 29)*q^318 + 1/2*(-62*zeta^5
+ 368*zeta^3 + 58*zeta^2 - 546*zeta - 9)*q^319 + 1/2*(14*zeta^5 - 82*zeta^3 - 
12*zeta^2 + 120*zeta + 17)*q^320 + 1/2*(-32*zeta^5 + 177*zeta^3 + 17*zeta^2 - 
243*zeta - 3)*q^321 + 1/2*(-2*zeta^5 + 25*zeta^3 + 15*zeta^2 - 57*zeta - 
82)*q^322 + 1/2*(15*zeta^5 - 31*zeta^3 + 44*zeta^2 - 42*zeta - 110)*q^323 + 
1/2*(58*zeta^5 - 206*zeta^3 + 84*zeta^2 + 96*zeta - 223)*q^324 + 1/2*(17*zeta^5 
+ 6*zeta^3 + 91*zeta^2 - 171*zeta - 189)*q^326 + (91*zeta^5 - 398*zeta^3 + 
57*zeta^2 + 375*zeta - 22)*q^327 + 1/2*(-136*zeta^5 + 583*zeta^3 - 97*zeta^2 - 
525*zeta + 111)*q^328 + 1/2*(46*zeta^5 - 216*zeta^3 + 14*zeta^2 + 234*zeta + 
109)*q^329 + 1/2*(11*zeta^5 - 43*zeta^3 + 12*zeta^2 + 30*zeta - 38)*q^330 + 
1/2*(75*zeta^5 - 384*zeta^3 - 9*zeta^2 + 477*zeta + 56)*q^331 + 1/2*(-61*zeta^5 
+ 334*zeta^3 + 29*zeta^2 - 453*zeta + 75)*q^332 + 1/2*(9*zeta^5 + 22*zeta^3 + 
67*zeta^2 - 147*zeta - 118)*q^333 + (-17*zeta^5 + 48*zeta^3 - 37*zeta^2 + 9*zeta
+ 7)*q^334 + 1/2*(59*zeta^5 - 281*zeta^3 + 14*zeta^2 + 312*zeta + 166)*q^335 + 
1/2*(-27*zeta^5 + 123*zeta^3 - 12*zeta^2 - 126*zeta - 28)*q^336 + 
1/2*(-41*zeta^5 + 76*zeta^3 - 129*zeta^2 + 141*zeta + 227)*q^337 + 
1/2*(-63*zeta^5 + 167*zeta^3 - 148*zeta^2 + 66*zeta + 322)*q^339 + 
1/2*(24*zeta^5 - 82*zeta^3 + 38*zeta^2 + 30*zeta - 61)*q^340 + 1/2*(-154*zeta^5 
+ 690*zeta^3 - 80*zeta^2 - 684*zeta - 35)*q^341 + 1/2*(45*zeta^5 - 182*zeta^3 + 
43*zeta^2 + 141*zeta + 25)*q^342 + 1/2*(-20*zeta^5 + 155*zeta^3 + 55*zeta^2 - 
285*zeta + 23)*q^343 + 1/2*(10*zeta^5 - 9*zeta^3 + 41*zeta^2 - 63*zeta + 
57)*q^344 + 1/2*(-9*zeta^5 + 67*zeta^3 + 22*zeta^2 - 120*zeta + 33)*q^345 + 
(16*zeta^5 - 116*zeta^3 - 36*zeta^2 + 204*zeta + 12)*q^346 + 1/2*(37*zeta^5 - 
190*zeta^3 - 5*zeta^2 + 237*zeta - 26)*q^347 + 1/2*(-42*zeta^5 + 169*zeta^3 - 
41*zeta^2 - 129*zeta + 107)*q^348 + 1/2*(58*zeta^5 - 262*zeta^3 + 28*zeta^2 + 
264*zeta - 5)*q^349 + 1/2*(23*zeta^5 - 84*zeta^3 + 31*zeta^2 + 45*zeta - 
57)*q^350 + 1/2*(-73*zeta^5 + 231*zeta^3 - 134*zeta^2 - 36*zeta + 316)*q^352 + 
1/2*(41*zeta^5 - 161*zeta^3 + 44*zeta^2 + 114*zeta - 71)*q^353 + 1/2*(-64*zeta^5
+ 261*zeta^3 - 59*zeta^2 - 207*zeta + 83)*q^354 + 1/2*(-47*zeta^5 + 302*zeta^3 +
67*zeta^2 - 483*zeta + 119)*q^355 + 1/2*(-17*zeta^5 + 33*zeta^3 - 52*zeta^2 + 
54*zeta + 202)*q^356 + 1/2*(30*zeta^5 - 181*zeta^3 - 31*zeta^2 + 273*zeta + 
14)*q^357 + 1/2*(46*zeta^5 - 229*zeta^3 + zeta^2 + 273*zeta + 31)*q^358 + 
1/2*(51*zeta^5 - 95*zeta^3 + 160*zeta^2 - 174*zeta - 388)*q^359 + 1/2*(-3*zeta^5
+ 52*zeta^3 + 37*zeta^2 - 129*zeta + 46)*q^360 + 1/2*(57*zeta^5 - 217*zeta^3 + 
68*zeta^2 + 138*zeta - 189)*q^361 + 1/2*(-97*zeta^5 + 441*zeta^3 - 44*zeta^2 - 
450*zeta - 52)*q^362 + 1/2*(-11*zeta^5 - 3*zeta^3 - 58*zeta^2 + 108*zeta + 
66)*q^363 + 1/2*(85*zeta^5 - 326*zeta^3 + 99*zeta^2 + 213*zeta - 405)*q^365 + 
1/2*(43*zeta^5 - 178*zeta^3 + 37*zeta^2 + 147*zeta - 32)*q^366 + 1/2*(-21*zeta^5
+ 140*zeta^3 + 35*zeta^2 - 231*zeta - 192)*q^367 + 1/2*(9*zeta^5 - 67*zeta^3 - 
22*zeta^2 + 120*zeta - 33)*q^368 + 1/2*(-31*zeta^5 + 60*zeta^3 - 95*zeta^2 + 
99*zeta + 145)*q^369 + 1/2*(-21*zeta^5 + 87*zeta^3 - 18*zeta^2 - 72*zeta - 
1)*q^370 + 1/2*(75*zeta^5 - 459*zeta^3 - 84*zeta^2 + 702*zeta - 4)*q^371 + 
1/2*(-13*zeta^5 - 15*zeta^3 - 80*zeta^2 + 162*zeta + 99)*q^372 + 1/2*(-25*zeta^5
+ 200*zeta^3 + 75*zeta^2 - 375*zeta + 84)*q^373 + 1/2*(30*zeta^5 - 167*zeta^3 - 
17*zeta^2 + 231*zeta + 112)*q^374 + 1/2*(-16*zeta^5 + 58*zeta^3 - 22*zeta^2 - 
30*zeta + 65)*q^375 + 1/2*(71*zeta^5 - 218*zeta^3 + 137*zeta^2 + 15*zeta - 
357)*q^376 + 1/2*(-11*zeta^5 + 56*zeta^3 + zeta^2 - 69*zeta - 14)*q^378 + 
1/2*(111*zeta^5 - 496*zeta^3 + 59*zeta^2 + 489*zeta + 150)*q^379 + 
1/2*(31*zeta^5 - 113*zeta^3 + 42*zeta^2 + 60*zeta - 46)*q^380 + 1/2*(51*zeta^5 -
295*zeta^3 - 40*zeta^2 + 426*zeta + 61)*q^381 + 1/2*(-74*zeta^5 + 311*zeta^3 - 
59*zeta^2 - 267*zeta + 203)*q^382 + (-55*zeta^5 + 302*zeta^3 + 27*zeta^2 - 
411*zeta - 27)*q^383 + 1/2*(67*zeta^5 - 343*zeta^3 - 8*zeta^2 + 426*zeta + 
78)*q^384 + 1/2*(29*zeta^5 - 111*zeta^3 + 34*zeta^2 + 72*zeta - 125)*q^385 + 
(-5*zeta^5 + 35*zeta^3 + 10*zeta^2 - 60*zeta - 21)*q^386 + 1/2*(-46*zeta^5 + 
196*zeta^3 - 34*zeta^2 - 174*zeta - 39)*q^387 + 1/2*(-58*zeta^5 + 300*zeta^3 + 
10*zeta^2 - 378*zeta - 157)*q^388 + (3*zeta^5 - 62*zeta^3 - 47*zeta^2 + 159*zeta
+ 69)*q^389 + 1/2*(26*zeta^5 - 103*zeta^3 + 27*zeta^2 + 75*zeta - 95)*q^391 + 
1/2*(-16*zeta^5 + 77*zeta^3 - 3*zeta^2 - 87*zeta - 16)*q^392 + 1/2*(-102*zeta^5 
+ 452*zeta^3 - 58*zeta^2 - 438*zeta - 33)*q^393 + 1/2*(-30*zeta^5 + 110*zeta^3 -
40*zeta^2 - 60*zeta - 37)*q^394 + 1/2*(33*zeta^5 - 153*zeta^3 + 12*zeta^2 + 
162*zeta - 70)*q^395 + 1/2*(13*zeta^5 - 117*zeta^3 - 52*zeta^2 + 234*zeta)*q^396
+ 1/2*(64*zeta^5 - 379*zeta^3 - 59*zeta^2 + 561*zeta - 14)*q^397 + 
1/2*(36*zeta^5 - 163*zeta^3 + 17*zeta^2 + 165*zeta - 40)*q^398 + 1/2*(-7*zeta^5 
+ 21*zeta^3 - 14*zeta^2 - 18)*q^399 + 1/2*(31*zeta^5 - 138*zeta^3 + 17*zeta^2 + 
135*zeta + 25)*q^400 + 1/2*(-97*zeta^5 + 412*zeta^3 - 73*zeta^2 - 363*zeta + 
125)*q^401 + 1/2*(-31*zeta^5 + 76*zeta^3 - 79*zeta^2 + 51*zeta + 172)*q^402 + 
1/2*(91*zeta^5 - 353*zeta^3 + 102*zeta^2 + 240*zeta - 304)*q^404 + 
1/2*(-16*zeta^5 + 68*zeta^3 - 12*zeta^2 - 60*zeta - 31)*q^405 + 1/2*(9*zeta^5 - 
41*zeta^3 + 4*zeta^2 + 42*zeta - 47)*q^406 + 1/2*(-57*zeta^5 + 340*zeta^3 + 
55*zeta^2 - 507*zeta - 50)*q^407 + 1/2*(12*zeta^5 + zeta^3 + 61*zeta^2 - 
111*zeta - 96)*q^408 + 1/2*(131*zeta^5 - 735*zeta^3 - 80*zeta^2 + 1026*zeta - 
14)*q^409 + 1/2*(-17*zeta^5 + 94*zeta^3 + 9*zeta^2 - 129*zeta + 10)*q^410 + 
(-22*zeta^5 + 62*zeta^3 - 48*zeta^2 + 12*zeta + 120)*q^411 + 1/2*(-62*zeta^5 + 
325*zeta^3 + 15*zeta^2 - 417*zeta + 58)*q^412 + 1/2*(-85*zeta^5 + 341*zeta^3 - 
84*zeta^2 - 258*zeta + 129)*q^413 + 1/2*(-31*zeta^5 + 127*zeta^3 - 28*zeta^2 - 
102*zeta + 13)*q^414 + 1/2*(-95*zeta^5 + 359*zeta^3 - 116*zeta^2 - 222*zeta + 
484)*q^415 + 1/2*(47*zeta^5 - 100*zeta^3 + 135*zeta^2 - 123*zeta - 216)*q^417 + 
1/2*(-7*zeta^5 - 10*zeta^3 - 45*zeta^2 + 93*zeta + 142)*q^418 + 1/2*(105*zeta^5 
- 489*zeta^3 + 36*zeta^2 + 522*zeta + 16)*q^419 + 1/2*(-4*zeta^5 - zeta^3 - 
21*zeta^2 + 39*zeta - 40)*q^420 + 1/2*(-43*zeta^5 + 189*zeta^3 - 26*zeta^2 - 
180*zeta + 59)*q^421 + 1/2*(-13*zeta^5 + 10*zeta^3 - 55*zeta^2 + 87*zeta - 
18)*q^422 + 1/2*(-73*zeta^5 + 416*zeta^3 + 51*zeta^2 - 591*zeta + 23)*q^423 + 
1/2*(13*zeta^5 + 44*zeta^3 + 109*zeta^2 - 249*zeta - 124)*q^424 + 
1/2*(-57*zeta^5 + 293*zeta^3 + 8*zeta^2 - 366*zeta - 20)*q^425 + 1/2*(-62*zeta^5
+ 258*zeta^3 - 52*zeta^2 - 216*zeta + 89)*q^426 + 1/2*(102*zeta^5 - 443*zeta^3 +
67*zeta^2 + 411*zeta + 48)*q^427 + 1/2*(-13*zeta^5 + 74*zeta^3 + 9*zeta^2 - 
105*zeta - 36)*q^428 + 1/2*(zeta^5 - 40*zeta^3 - 35*zeta^2 + 111*zeta + 
96)*q^430 + 1/2*(-28*zeta^5 + 81*zeta^3 - 59*zeta^2 + 9*zeta + 150)*q^431 + 
1/2*(-32*zeta^5 + 145*zeta^3 - 15*zeta^2 - 147*zeta - 47)*q^432 + 
1/2*(-53*zeta^5 + 251*zeta^3 - 14*zeta^2 - 276*zeta - 82)*q^433 + 1/2*(27*zeta^5
- 102*zeta^3 + 33*zeta^2 + 63*zeta - 46)*q^434 + 1/2*(-25*zeta^5 + 160*zeta^3 + 
35*zeta^2 - 255*zeta + 52)*q^435 + (-31*zeta^5 + 167*zeta^3 + 12*zeta^2 - 
222*zeta - 35)*q^436 + 1/2*(28*zeta^5 - 120*zeta^3 + 20*zeta^2 + 108*zeta - 
103)*q^437 + 1/2*(-16*zeta^5 + 105*zeta^3 + 25*zeta^2 - 171*zeta - 39)*q^438 + 
1/2*(139*zeta^5 - 606*zeta^3 + 89*zeta^2 + 567*zeta + 8)*q^439 + 1/2*(2*zeta^5 -
25*zeta^3 - 15*zeta^2 + 57*zeta + 82)*q^440 + 1/2*(4*zeta^5 - 35*zeta^3 - 
15*zeta^2 + 69*zeta + 14)*q^441 + (-8*zeta^5 + 27*zeta^3 - 13*zeta^2 - 9*zeta + 
79)*q^443 + 1/2*(-91*zeta^5 + 387*zeta^3 - 68*zeta^2 - 342*zeta + 60)*q^444 + 
1/2*(110*zeta^5 - 527*zeta^3 + 23*zeta^2 + 591*zeta + 290)*q^445 + 
1/2*(-33*zeta^5 + 162*zeta^3 - 3*zeta^2 - 189*zeta + 9)*q^446 + 1/2*(-21*zeta^5 
+ 60*zeta^3 - 45*zeta^2 + 9*zeta + 90)*q^447 + 1/2*(6*zeta^5 + 21*zeta^3 + 
51*zeta^2 - 117*zeta + 8)*q^448 + 1/2*(67*zeta^5 - 366*zeta^3 - 31*zeta^2 + 
495*zeta - 8)*q^449 + 1/2*(-40*zeta^5 + 155*zeta^3 - 45*zeta^2 - 105*zeta + 
133)*q^450 + 1/2*(163*zeta^5 - 905*zeta^3 - 90*zeta^2 + 1248*zeta + 96)*q^451 + 
1/2*(52*zeta^5 - 189*zeta^3 + 71*zeta^2 + 99*zeta - 198)*q^452 + 1/2*(zeta^5 + 
5*zeta^2 - 9*zeta - 79)*q^453 + 1/2*(22*zeta^5 - 127*zeta^3 - 17*zeta^2 + 
183*zeta - 29)*q^454 + 1/2*(-15*zeta^5 + 66*zeta^3 - 9*zeta^2 - 63*zeta + 
46)*q^456 + 1/2*(-117*zeta^5 + 545*zeta^3 - 40*zeta^2 - 582*zeta - 214)*q^457 + 
1/2*(105*zeta^5 - 422*zeta^3 + 103*zeta^2 + 321*zeta - 154)*q^458 + 
1/2*(41*zeta^5 - 204*zeta^3 + zeta^2 + 243*zeta + 2)*q^459 + 1/2*(48*zeta^5 - 
187*zeta^3 + 53*zeta^2 + 129*zeta - 231)*q^460 + 1/2*(37*zeta^5 - 150*zeta^3 + 
35*zeta^2 + 117*zeta + 6)*q^461 + 1/2*(-47*zeta^5 + 271*zeta^3 + 36*zeta^2 - 
390*zeta - 41)*q^462 + 1/2*(32*zeta^5 - 166*zeta^3 - 6*zeta^2 + 210*zeta - 
97)*q^463 + 1/2*(25*zeta^5 - 160*zeta^3 - 35*zeta^2 + 255*zeta - 52)*q^464 + 
1/2*(-54*zeta^5 + 243*zeta^3 - 27*zeta^2 - 243*zeta - 61)*q^465 + 1/2*(31*zeta^5
- 127*zeta^3 + 28*zeta^2 + 102*zeta - 13)*q^466 + 1/2*(96*zeta^5 - 203*zeta^3 + 
277*zeta^2 - 255*zeta - 691)*q^467 + 1/2*(-76*zeta^5 + 225*zeta^3 - 155*zeta^2 +
9*zeta + 428)*q^469 + 1/2*(-27*zeta^5 + 117*zeta^3 - 18*zeta^2 - 108*zeta - 
38)*q^470 + 1/2*(42*zeta^5 - 174*zeta^3 + 36*zeta^2 + 144*zeta - 59)*q^471 + 
1/2*(19*zeta^5 - 158*zeta^3 - 63*zeta^2 + 303*zeta + 26)*q^472 + 1/2*(zeta^5 + 
28*zeta^3 + 33*zeta^2 - 93*zeta - 85)*q^473 + 1/2*(-30*zeta^5 + 202*zeta^3 + 
52*zeta^2 - 336*zeta - 31)*q^474 + 1/2*(-26*zeta^5 + 121*zeta^3 - 9*zeta^2 - 
129*zeta + 11)*q^475 + 1/2*(-33*zeta^5 + 194*zeta^3 + 29*zeta^2 - 285*zeta + 
23)*q^476 + 1/2*(-36*zeta^5 + 208*zeta^3 + 28*zeta^2 - 300*zeta - 85)*q^477 + 
1/2*(123*zeta^5 - 513*zeta^3 + 102*zeta^2 + 432*zeta - 94)*q^478 + 
1/2*(53*zeta^5 - 252*zeta^3 + 13*zeta^2 + 279*zeta - 44)*q^479 + 1/2*(-22*zeta^5
+ 61*zeta^3 - 49*zeta^2 + 15*zeta + 150)*q^480 + 1/2*(-61*zeta^5 + 227*zeta^3 - 
78*zeta^2 - 132*zeta + 201)*q^482 + 1/2*(-12*zeta^5 + 46*zeta^3 - 14*zeta^2 - 
30*zeta + 67)*q^483 + 1/2*(86*zeta^5 - 405*zeta^3 + 25*zeta^2 + 441*zeta + 
136)*q^484 + 1/2*(24*zeta^5 - 114*zeta^3 + 6*zeta^2 + 126*zeta - 25)*q^485 + 
1/2*(73*zeta^5 - 278*zeta^3 + 87*zeta^2 + 177*zeta - 258)*q^486 + 
1/2*(-194*zeta^5 + 1033*zeta^3 + 63*zeta^2 - 1353*zeta - 27)*q^487 + 
1/2*(11*zeta^5 - 47*zeta^3 + 8*zeta^2 + 42*zeta - 65)*q^488 + 1/2*(-91*zeta^5 + 
246*zeta^3 - 209*zeta^2 + 81*zeta + 472)*q^489 + 1/2*(11*zeta^5 - 44*zeta^3 + 
11*zeta^2 + 33*zeta + 5)*q^490 + 1/2*(-143*zeta^5 + 647*zeta^3 - 68*zeta^2 - 
654*zeta - 18)*q^491 + 1/2*(161*zeta^5 - 700*zeta^3 + 105*zeta^2 + 651*zeta - 
84)*q^492 + 1/2*(21*zeta^5 - 29*zeta^3 + 76*zeta^2 - 102*zeta - 175)*q^493 + 
1/2*(13*zeta^3 + 13*zeta^2 - 39*zeta - 52)*q^495 + 1/2*(54*zeta^5 - 243*zeta^3 +
27*zeta^2 + 243*zeta + 61)*q^496 + 1/2*(-5*zeta^5 - 22*zeta^3 - 47*zeta^2 + 
111*zeta + 302)*q^497 + 1/2*(-28*zeta^5 + 148*zeta^3 + 8*zeta^2 - 192*zeta + 
13)*q^498 + 1/2*(85*zeta^5 - 294*zeta^3 + 131*zeta^2 + 117*zeta - 351)*q^499 + 
1/2*(-28*zeta^5 + 78*zeta^3 - 62*zeta^2 + 18*zeta - 43)*q^500 + (-64*zeta^5 + 
340*zeta^3 + 20*zeta^2 - 444*zeta - 51)*q^501 + (-43*zeta^5 + 176*zeta^3 - 
39*zeta^2 - 141*zeta + 111)*q^502 + 1/2*(153*zeta^5 - 879*zeta^3 - 114*zeta^2 + 
1260*zeta - 15)*q^503 + 1/2*(-26*zeta^5 + 117*zeta^3 - 13*zeta^2 - 117*zeta + 
52)*q^504 + 1/2*(-28*zeta^5 + 113*zeta^3 - 27*zeta^2 - 87*zeta - 22)*q^505 + 
1/2*(-15*zeta^5 + 61*zeta^3 - 14*zeta^2 - 48*zeta + 27)*q^506 + 1/2*(-18*zeta^5 
+ 201*zeta^3 + 111*zeta^2 - 441*zeta - 185)*q^508 + 1/2*(82*zeta^5 - 347*zeta^3 
+ 63*zeta^2 + 303*zeta - 71)*q^509 + 1/2*(11*zeta^5 - 38*zeta^3 + 17*zeta^2 + 
15*zeta - 31)*q^510 + 1/2*(7*zeta^5 - 47*zeta^3 - 12*zeta^2 + 78*zeta - 
138)*q^511 + 1/2*(40*zeta^5 - 111*zeta^3 + 89*zeta^2 - 27*zeta - 270)*q^512 + 
1/2*(31*zeta^5 - 150*zeta^3 + 5*zeta^2 + 171*zeta - 19)*q^513 + 1/2*(-7*zeta^5 -
60*zeta^3 - 95*zeta^2 + 243*zeta - 49)*q^514 + 1/2*(-83*zeta^5 + 320*zeta^3 - 
95*zeta^2 - 213*zeta + 405)*q^515 + 1/2*(19*zeta^5 - 100*zeta^3 - 5*zeta^2 + 
129*zeta - 29)*q^516 + 1/2*(-127*zeta^5 + 554*zeta^3 - 81*zeta^2 - 519*zeta + 
84)*q^517 + 1/2*(50*zeta^5 - 248*zeta^3 + 2*zeta^2 + 294*zeta + 87)*q^518 + 
(36*zeta^5 - 80*zeta^3 + 100*zeta^2 - 84*zeta - 164)*q^519 + 1/2*(-67*zeta^5 + 
263*zeta^3 - 72*zeta^2 - 186*zeta + 168)*q^521 + 1/2*(-61*zeta^5 + 291*zeta^3 - 
14*zeta^2 - 324*zeta - 104)*q^522 + 1/2*(-32*zeta^5 + 149*zeta^3 - 11*zeta^2 - 
159*zeta - 153)*q^523 + 1/2*(-4*zeta^5 + 36*zeta^3 + 16*zeta^2 - 72*zeta + 
91)*q^524 + 1/2*(-31*zeta^5 + 42*zeta^3 - 113*zeta^2 + 153*zeta + 178)*q^525 + 
1/2*(5*zeta^5 + 23*zeta^3 + 48*zeta^2 - 114*zeta - 34)*q^526 + 1/2*(-81*zeta^5 +
418*zeta^3 + 13*zeta^2 - 525*zeta - 20)*q^527 + 1/2*(12*zeta^5 - 28*zeta^3 + 
32*zeta^2 - 24*zeta - 71)*q^528 + (-19*zeta^5 + 122*zeta^3 + 27*zeta^2 - 
195*zeta - 21)*q^529 + 1/2*(39*zeta^5 - 157*zeta^3 + 38*zeta^2 + 120*zeta - 
19)*q^530 + 1/2*(77*zeta^5 - 297*zeta^3 + 88*zeta^2 + 198*zeta - 156)*q^531 + 
1/2*(-56*zeta^5 + 265*zeta^3 - 15*zeta^2 - 291*zeta + 132)*q^532 + 1/2*(6*zeta^5
- 24*zeta^3 + 6*zeta^2 + 18*zeta + 11)*q^534 + 1/2*(-43*zeta^5 + 213*zeta^3 - 
2*zeta^2 - 252*zeta - 135)*q^535 + 1/2*(51*zeta^5 - 207*zeta^3 + 48*zeta^2 + 
162*zeta - 149)*q^536 + 1/2*(-75*zeta^5 + 420*zeta^3 + 45*zeta^2 - 585*zeta - 
61)*q^537 + 1/2*(-21*zeta^5 + 65*zeta^3 - 40*zeta^2 - 6*zeta + 109)*q^538 + 
1/2*(10*zeta^5 - 69*zeta^3 - 19*zeta^2 + 117*zeta + 9)*q^539 + 1/2*(33*zeta^5 - 
186*zeta^3 - 21*zeta^2 + 261*zeta - 62)*q^540 + 1/2*(21*zeta^5 - 99*zeta^3 + 
6*zeta^2 + 108*zeta + 66)*q^541 + 1/2*(-3*zeta^5 + 31*zeta^3 + 16*zeta^2 - 
66*zeta + 63)*q^542 + 1/2*(257*zeta^5 - 1125*zeta^3 + 160*zeta^2 + 1062*zeta - 
39)*q^543 + 1/2*(-87*zeta^5 + 344*zeta^3 - 91*zeta^2 - 249*zeta + 123)*q^544 + 
(14*zeta^5 - 45*zeta^3 + 25*zeta^2 + 9*zeta - 79)*q^545 + 1/2*(64*zeta^5 - 
282*zeta^3 + 38*zeta^2 + 270*zeta - 173)*q^547 + (-8*zeta^5 + 46*zeta^3 + 
6*zeta^2 - 66*zeta - 80)*q^548 + 1/2*(9*zeta^5 - 83*zeta^3 - 38*zeta^2 + 
168*zeta + 221)*q^549 + 1/2*(74*zeta^5 - 378*zeta^3 - 8*zeta^2 + 468*zeta + 
51)*q^550 + 1/2*(13*zeta^5 - 23*zeta^3 + 42*zeta^2 - 48*zeta - 142)*q^551 + 
1/2*(38*zeta^5 - 217*zeta^3 - 27*zeta^2 + 309*zeta - 4)*q^552 + 1/2*(-29*zeta^5 
+ 217*zeta^3 + 72*zeta^2 - 390*zeta - 43)*q^553 + 1/2*(-20*zeta^5 + 145*zeta^3 +
45*zeta^2 - 255*zeta - 15)*q^554 + 1/2*(-14*zeta^5 + 67*zeta^3 - 3*zeta^2 - 
75*zeta - 16)*q^555 + 1/2*(-161*zeta^5 + 679*zeta^3 - 126*zeta^2 - 588*zeta + 
49)*q^556 + 1/2*(31*zeta^5 - 156*zeta^3 - zeta^2 + 189*zeta + 164)*q^557 + 
1/2*(-61*zeta^5 + 238*zeta^3 - 67*zeta^2 - 165*zeta + 209)*q^558 + 
1/2*(-29*zeta^5 + 98*zeta^3 - 47*zeta^2 - 33*zeta + 177)*q^560 + 
1/2*(-106*zeta^5 + 454*zeta^3 - 76*zeta^2 - 408*zeta + 61)*q^561 + 1/2*(zeta^5 +
7*zeta^3 + 12*zeta^2 - 30*zeta - 11)*q^562 + 1/2*(3*zeta^5 - 35*zeta^3 - 
20*zeta^2 + 78*zeta - 100)*q^563 + 1/2*(-53*zeta^5 + 126*zeta^3 - 139*zeta^2 + 
99*zeta + 314)*q^564 + 1/2*(41*zeta^5 - 238*zeta^3 - 33*zeta^2 + 345*zeta - 
59)*q^565 + (31*zeta^5 - 147*zeta^3 + 8*zeta^2 + 162*zeta + 51)*q^566 + 
1/2*(77*zeta^5 - 236*zeta^3 + 149*zeta^2 + 15*zeta - 357)*q^567 + 1/2*(82*zeta^5
- 514*zeta^3 - 104*zeta^2 + 804*zeta - 47)*q^568 + 1/2*(-34*zeta^5 + 169*zeta^3 
- zeta^2 - 201*zeta - 187)*q^569 + 1/2*(9*zeta^5 - 29*zeta^3 + 16*zeta^2 + 
6*zeta - 27)*q^570 + 1/2*(21*zeta^5 - 122*zeta^3 - 17*zeta^2 + 177*zeta - 
89)*q^571 + 1/2*(59*zeta^5 - 114*zeta^3 + 181*zeta^2 - 189*zeta - 369)*q^573 + 
1/2*(-96*zeta^5 + 407*zeta^3 - 73*zeta^2 - 357*zeta + 94)*q^574 + 1/2*(3*zeta^5 
+ 5*zeta^3 + 20*zeta^2 - 42*zeta - 116)*q^575 + 1/2*(-27*zeta^5 + 91*zeta^3 - 
44*zeta^2 - 30*zeta + 11)*q^576 + 1/2*(64*zeta^5 - 250*zeta^3 + 70*zeta^2 + 
174*zeta - 119)*q^577 + 1/2*(-5*zeta^5 + 85*zeta^3 + 60*zeta^2 - 210*zeta + 
19)*q^578 + (46*zeta^5 - 245*zeta^3 - 15*zeta^2 + 321*zeta + 52)*q^579 + 
1/2*(55*zeta^5 - 181*zeta^3 + 94*zeta^2 + 48*zeta - 365)*q^580 + 1/2*(-69*zeta^5
+ 415*zeta^3 + 70*zeta^2 - 624*zeta + 129)*q^581 + 1/2*(-71*zeta^5 + 328*zeta^3 
- 27*zeta^2 - 345*zeta - 41)*q^582 + 1/2*(-239*zeta^5 + 1031*zeta^3 - 164*zeta^2
- 942*zeta + 94)*q^583 + 1/2*(-53*zeta^5 + 100*zeta^3 - 165*zeta^2 + 177*zeta + 
418)*q^584 + 1/2*(61*zeta^5 - 288*zeta^3 + 17*zeta^2 + 315*zeta - 61)*q^586 + 
1/2*(-143*zeta^5 + 558*zeta^3 - 157*zeta^2 - 387*zeta + 397)*q^587 + 
1/2*(22*zeta^5 - 90*zeta^3 + 20*zeta^2 + 72*zeta - 29)*q^588 + 1/2*(-41*zeta^5 +
198*zeta^3 - 7*zeta^2 - 225*zeta + 27)*q^589 + 1/2*(-45*zeta^5 + 229*zeta^3 + 
4*zeta^2 - 282*zeta + 53)*q^590 + 1/2*(-13*zeta^5 + 75*zeta^3 + 10*zeta^2 - 
108*zeta + 34)*q^591 + 1/2*(14*zeta^5 - 67*zeta^3 + 3*zeta^2 + 75*zeta + 
16)*q^592 + (25*zeta^5 - 152*zeta^3 - 27*zeta^2 + 231*zeta - 56)*q^593 + 
1/2*(-45*zeta^5 + 213*zeta^3 - 12*zeta^2 - 234*zeta - 34)*q^594 + 1/2*(33*zeta^5
- 133*zeta^3 + 32*zeta^2 + 102*zeta - 12)*q^595 + 1/2*(39*zeta^5 - 141*zeta^3 + 
54*zeta^2 + 72*zeta - 105)*q^596 + 1/2*(-17*zeta^5 - 15*zeta^3 - 100*zeta^2 + 
198*zeta + 121)*q^597 + 1/2*(-66*zeta^5 + 238*zeta^3 - 92*zeta^2 - 120*zeta + 
321)*q^599 + 1/2*(158*zeta^5 - 697*zeta^3 + 93*zeta^2 + 669*zeta - 11)*q^600 + 
1/2*(12*zeta^5 - 69*zeta^3 - 9*zeta^2 + 99*zeta + 120)*q^601 + 1/2*(31*zeta^5 - 
106*zeta^3 + 49*zeta^2 + 39*zeta + 50)*q^602 + 1/2*(-14*zeta^5 + 90*zeta^3 + 
20*zeta^2 - 144*zeta + 81)*q^603 + 1/2*(-101*zeta^5 + 527*zeta^3 + 22*zeta^2 - 
672*zeta + 74)*q^604 + 1/2*(-25*zeta^5 + 164*zeta^3 + 39*zeta^2 - 267*zeta + 
89)*q^605 + 1/2*(64*zeta^5 - 200*zeta^3 + 120*zeta^2 + 24*zeta - 267)*q^606 + 
1/2*(-154*zeta^5 + 837*zeta^3 + 67*zeta^2 - 1125*zeta - 96)*q^607 + 
1/2*(-35*zeta^5 + 117*zeta^3 - 58*zeta^2 - 36*zeta + 87)*q^608 + 1/2*(-76*zeta^5
+ 313*zeta^3 - 67*zeta^2 - 255*zeta + 160)*q^609 + 1/2*(54*zeta^5 - 241*zeta^3 +
29*zeta^2 + 237*zeta - 165)*q^610 + 1/2*(28*zeta^5 - 193*zeta^3 - 53*zeta^2 + 
327*zeta + 59)*q^612 + 1/2*(132*zeta^5 - 603*zeta^3 + 57*zeta^2 + 621*zeta + 
59)*q^613 + (-40*zeta^5 + 195*zeta^3 - 5*zeta^2 - 225*zeta - 64)*q^614 + 
1/2*(25*zeta^5 - 151*zeta^3 - 26*zeta^2 + 228*zeta - 11)*q^615 + 1/2*(-46*zeta^5
+ 77*zeta^3 - 153*zeta^2 + 183*zeta + 309)*q^616 + 1/2*(141*zeta^5 - 826*zeta^3 
- 121*zeta^2 + 1209*zeta + 45)*q^617 + 1/2*(-28*zeta^5 + 143*zeta^3 + 3*zeta^2 -
177*zeta + 9)*q^618 + 1/2*(-23*zeta^5 + 117*zeta^3 + 2*zeta^2 - 144*zeta + 
81)*q^619 + 1/2*(-41*zeta^5 + 232*zeta^3 + 27*zeta^2 - 327*zeta + 88)*q^620 + 
1/2*(35*zeta^5 - 177*zeta^3 - 2*zeta^2 + 216*zeta + 151)*q^621 + 1/2*(-12*zeta^5
+ 141*zeta^3 + 81*zeta^2 - 315*zeta - 338)*q^622 + 1/2*(-46*zeta^5 + 155*zeta^3 
- 75*zeta^2 - 51*zeta + 335)*q^623 + 1/2*(97*zeta^5 - 284*zeta^3 + 201*zeta^2 - 
21*zeta - 548)*q^625 + 1/2*(107*zeta^5 - 450*zeta^3 + 85*zeta^2 + 387*zeta - 
77)*q^626 + 1/2*(-3*zeta^5 + 5*zeta^3 - 10*zeta^2 + 12*zeta + 20)*q^627 + 
1/2*(14*zeta^5 - 16*zeta^3 + 54*zeta^2 - 78*zeta + 23)*q^628 + 1/2*(-11*zeta^5 +
120*zeta^3 + 65*zeta^2 - 261*zeta - 75)*q^629 + 1/2*(13*zeta^5 - 26*zeta^3 + 
39*zeta^2 - 39*zeta + 39)*q^630 + 1/2*(140*zeta^5 - 717*zeta^3 - 17*zeta^2 + 
891*zeta + 190)*q^631 + 1/2*(-10*zeta^5 - 96*zeta^3 - 146*zeta^2 + 378*zeta + 
231)*q^632 + 1/2*(-79*zeta^5 + 437*zeta^3 + 42*zeta^2 - 600*zeta - 19)*q^633 + 
(zeta^5 - 38*zeta^3 - 33*zeta^2 + 105*zeta + 83)*q^634 + 1/2*(-31*zeta^5 + 
184*zeta^3 + 29*zeta^2 - 273*zeta - 230)*q^635 + 1/2*(-51*zeta^5 + 123*zeta^3 - 
132*zeta^2 + 90*zeta + 224)*q^636 + 1/2*(-4*zeta^5 - 47*zeta^3 - 67*zeta^2 + 
177*zeta + 80)*q^638 + 1/2*(176*zeta^5 - 781*zeta^3 + 99*zeta^2 + 759*zeta + 
117)*q^639 + 1/2*(-81*zeta^5 + 354*zeta^3 - 51*zeta^2 - 333*zeta - 109)*q^640 + 
1/2*(36*zeta^5 - 230*zeta^3 - 50*zeta^2 + 366*zeta + 135)*q^641 + 
1/2*(-15*zeta^5 + 55*zeta^3 - 20*zeta^2 - 30*zeta + 38)*q^642 + 1/2*(44*zeta^5 -
319*zeta^3 - 99*zeta^2 + 561*zeta + 7)*q^643 + 1/2*(48*zeta^5 - 274*zeta^3 - 
34*zeta^2 + 390*zeta - 53)*q^644 + 1/2*(35*zeta^5 - 133*zeta^3 + 42*zeta^2 + 
84*zeta - 174)*q^645 + 1/2*(94*zeta^5 - 397*zeta^3 + 73*zeta^2 + 345*zeta + 
29)*q^646 + (90*zeta^5 - 396*zeta^3 + 54*zeta^2 + 378*zeta + 4)*q^647 + 
1/2*(-129*zeta^5 + 538*zeta^3 - 107*zeta^2 - 453*zeta + 159)*q^648 + 
1/2*(84*zeta^5 - 287*zeta^3 + 133*zeta^2 + 105*zeta - 302)*q^649 + 
1/2*(-33*zeta^5 + 25*zeta^3 - 140*zeta^2 + 222*zeta + 192)*q^651 + 
1/2*(47*zeta^5 - 151*zeta^3 + 84*zeta^2 + 30*zeta - 303)*q^652 + 
1/2*(-197*zeta^5 + 882*zeta^3 - 103*zeta^2 - 873*zeta - 36)*q^653 + (-44*zeta^5 
+ 243*zeta^3 + 23*zeta^2 - 333*zeta - 34)*q^654 + 1/2*(-78*zeta^5 + 282*zeta^3 -
108*zeta^2 - 144*zeta + 419)*q^655 + 1/2*(-25*zeta^5 + 151*zeta^3 + 26*zeta^2 - 
228*zeta + 11)*q^656 + 1/2*(30*zeta^5 - 260*zeta^3 - 110*zeta^2 + 510*zeta - 
83)*q^657 + 1/2*(60*zeta^5 - 205*zeta^3 + 95*zeta^2 + 75*zeta - 264)*q^658 + 
1/2*(32*zeta^5 - 151*zeta^3 + 9*zeta^2 + 165*zeta + 159)*q^659 + 1/2*(2*zeta^5 -
12*zeta^3 - 2*zeta^2 + 18*zeta - 9)*q^660 + 1/2*(241*zeta^5 - 1096*zeta^3 + 
109*zeta^2 + 1119*zeta + 203)*q^661 + 1/2*(66*zeta^5 - 265*zeta^3 + 65*zeta^2 + 
201*zeta - 187)*q^662 + 1/2*(34*zeta^5 - 98*zeta^3 + 72*zeta^2 - 12*zeta - 
289)*q^664 + 1/2*(43*zeta^5 - 180*zeta^3 + 35*zeta^2 + 153*zeta + 21)*q^665 + 
1/2*(-34*zeta^5 + 185*zeta^3 + 15*zeta^2 - 249*zeta - 104)*q^666 + 
1/2*(-2*zeta^5 + 69*zeta^3 + 59*zeta^2 - 189*zeta + 137)*q^667 + (-68*zeta^5 + 
282*zeta^3 - 58*zeta^2 - 234*zeta + 195)*q^668 + 1/2*(18*zeta^5 - 120*zeta^3 - 
30*zeta^2 + 198*zeta - 21)*q^669 + 1/2*(14*zeta^5 - 101*zeta^3 - 31*zeta^2 + 
177*zeta - 45)*q^670 + 1/2*(-67*zeta^5 + 243*zeta^3 - 92*zeta^2 - 126*zeta + 
261)*q^671 + 1/2*(98*zeta^5 - 515*zeta^3 - 25*zeta^2 + 663*zeta + 109)*q^672 + 
1/2*(162*zeta^5 - 756*zeta^3 + 54*zeta^2 + 810*zeta + 307)*q^673 + 
1/2*(113*zeta^5 - 499*zeta^3 + 66*zeta^2 + 480*zeta - 13)*q^674 + 1/2*(-6*zeta^5
+ 13*zeta^3 - 17*zeta^2 + 15*zeta - 19)*q^675 + (-6*zeta^5 - 10*zeta^3 - 
40*zeta^2 + 84*zeta - 5)*q^677 + 1/2*(100*zeta^5 - 422*zeta^3 + 78*zeta^2 + 
366*zeta - 97)*q^678 + 1/2*(-109*zeta^5 + 511*zeta^3 - 34*zeta^2 - 552*zeta - 
114)*q^679 + 1/2*(25*zeta^5 - 115*zeta^3 + 10*zeta^2 + 120*zeta - 16)*q^680 + 
1/2*(17*zeta^5 - 32*zeta^3 + 53*zeta^2 - 57*zeta - 63)*q^681 + 1/2*(101*zeta^5 -
511*zeta^3 - 6*zeta^2 + 624*zeta + 74)*q^682 + 1/2*(-108*zeta^5 + 596*zeta^3 + 
56*zeta^2 - 816*zeta - 7)*q^683 + 1/2*(38*zeta^5 - 222*zeta^3 - 32*zeta^2 + 
324*zeta + 29)*q^684 + (18*zeta^5 - 124*zeta^3 - 34*zeta^2 + 210*zeta - 
58)*q^685 + 1/2*(-93*zeta^5 + 467*zeta^3 + 2*zeta^2 - 564*zeta - 212)*q^686 + 
1/2*(-267*zeta^5 + 1173*zeta^3 - 162*zeta^2 - 1116*zeta + 64)*q^687 + 
1/2*(-35*zeta^5 + 133*zeta^3 - 42*zeta^2 - 84*zeta + 174)*q^688 + 1/2*(13*zeta^5
- 54*zeta^3 + 11*zeta^2 + 45*zeta - 57)*q^690 + 1/2*(86*zeta^5 - 368*zeta^3 + 
62*zeta^2 + 330*zeta + 85)*q^691 + (-116*zeta^5 + 484*zeta^3 - 96*zeta^2 - 
408*zeta + 56)*q^692 + 1/2*(52*zeta^5 - 325*zeta^3 - 65*zeta^2 + 507*zeta + 
13)*q^693 + 1/2*(32*zeta^5 - 181*zeta^3 - 21*zeta^2 + 255*zeta + 15)*q^694 + 
1/2*(-6*zeta^5 - 43*zeta^3 - 73*zeta^2 + 183*zeta - 127)*q^695 + 1/2*(95*zeta^5 
- 551*zeta^3 - 76*zeta^2 + 798*zeta + 17)*q^696 + 1/2*(-58*zeta^5 + 159*zeta^3 -
131*zeta^2 + 45*zeta + 281)*q^697 + 1/2*(-69*zeta^5 + 343*zeta^3 - 2*zeta^2 - 
408*zeta - 30)*q^698 + 1/2*(-56*zeta^5 + 255*zeta^3 - 25*zeta^2 - 261*zeta - 
52)*q^699 + 1/2*(107*zeta^5 - 499*zeta^3 + 36*zeta^2 + 534*zeta + 123)*q^700 + 
1/2*(-51*zeta^5 + 53*zeta^3 - 202*zeta^2 + 300*zeta + 296)*q^701 + O(q^702)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_13B3 := Curve(P_Q, [ PolynomialRing(RationalField(), 3) |
x[1]^4 - 141/8*x[1]^3*x[2] - 87/8*x[1]^3*x[3] + 63*x[1]^2*x[2]^2 - 
15/2*x[1]^2*x[2]*x[3] + 13*x[1]^2*x[3]^2 + 81/2*x[1]*x[2]^3 - 
99/2*x[1]*x[2]^2*x[3] + 27/2*x[1]*x[2]*x[3]^2 - 11/2*x[1]*x[3]^3 - 81*x[2]^4 + 
81/4*x[2]^3*x[3] + 9/4*x[2]^2*x[3]^2 - 9/4*x[2]*x[3]^3 + 3/4*x[3]^4
]);
