
    /****************************************************
    Loading this file in magma loads the objects fs_14E1 
    and X_14E1. fs_14E1 is a list of power series which form 
    a basis for the space of cusp forms. X_14E1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, \[ 1, -1, 1, -1, 1, -1, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_14E1 := [Kq | (zeta^5 + 5*zeta^4 + 3*zeta^3 + 3*zeta^2 - 2*zeta
+ 1)*q + (2*zeta^5 + 3*zeta^4 - zeta^3 + 6*zeta^2 - 4*zeta + 2)*q^3 + (-9*zeta^5
+ 18*zeta^4 - 6*zeta^3 + 15*zeta^2 - 24*zeta + 12)*q^5 + (24*zeta^5 - 13*zeta^4 
+ 9*zeta^3 + 2*zeta^2 + 22*zeta - 11)*q^7 + (6*zeta^5 - 12*zeta^4 + 4*zeta^3 - 
10*zeta^2 + 16*zeta - 8)*q^9 + (-6*zeta^5 - 9*zeta^4 + 3*zeta^3 - 18*zeta^2 + 
12*zeta - 6)*q^11 + (2*zeta^5 + 10*zeta^4 + 6*zeta^3 + 6*zeta^2 - 4*zeta + 
2)*q^13 + (3*zeta^5 + 15*zeta^4 + 9*zeta^3 + 9*zeta^2 - 6*zeta + 3)*q^15 + 
(6*zeta^5 + 9*zeta^4 - 3*zeta^3 + 18*zeta^2 - 12*zeta + 6)*q^17 + (3*zeta^5 - 
6*zeta^4 + 2*zeta^3 - 5*zeta^2 + 8*zeta - 4)*q^19 + (-15*zeta^5 + 2*zeta^4 - 
24*zeta^3 + 11*zeta^2 - 26*zeta + 13)*q^21 + (-9*zeta^5 + 18*zeta^4 - 6*zeta^3 +
15*zeta^2 - 24*zeta + 12)*q^23 + (8*zeta^5 + 12*zeta^4 - 4*zeta^3 + 24*zeta^2 - 
16*zeta + 8)*q^25 + (-5*zeta^5 - 25*zeta^4 - 15*zeta^3 - 15*zeta^2 + 10*zeta - 
5)*q^27 + (-6*zeta^5 - 30*zeta^4 - 18*zeta^3 - 18*zeta^2 + 12*zeta - 6)*q^29 + 
(-14*zeta^5 - 21*zeta^4 + 7*zeta^3 - 42*zeta^2 + 28*zeta - 14)*q^31 + (9*zeta^5 
- 18*zeta^4 + 6*zeta^3 - 15*zeta^2 + 24*zeta - 12)*q^33 + (-27*zeta^5 + 
33*zeta^4 + 45*zeta^3 - 39*zeta^2 + 12*zeta - 6)*q^35 + (3*zeta^5 - 6*zeta^4 + 
2*zeta^3 - 5*zeta^2 + 8*zeta - 4)*q^37 + (4*zeta^5 + 6*zeta^4 - 2*zeta^3 + 
12*zeta^2 - 8*zeta + 4)*q^39 + (6*zeta^5 + 30*zeta^4 + 18*zeta^3 + 18*zeta^2 - 
12*zeta + 6)*q^41 + (-4*zeta^5 - 20*zeta^4 - 12*zeta^3 - 12*zeta^2 + 8*zeta - 
4)*q^43 + (-12*zeta^5 - 18*zeta^4 + 6*zeta^3 - 36*zeta^2 + 24*zeta - 12)*q^45 + 
(27*zeta^5 - 54*zeta^4 + 18*zeta^3 - 45*zeta^2 + 72*zeta - 36)*q^47 + 
(-54*zeta^5 + 17*zeta^4 - 57*zeta^3 + 20*zeta^2 - 74*zeta + 37)*q^49 + 
(-9*zeta^5 + 18*zeta^4 - 6*zeta^3 + 15*zeta^2 - 24*zeta + 12)*q^51 + (6*zeta^5 +
9*zeta^4 - 3*zeta^3 + 18*zeta^2 - 12*zeta + 6)*q^53 + (-9*zeta^5 - 45*zeta^4 - 
27*zeta^3 - 27*zeta^2 + 18*zeta - 9)*q^55 + (-zeta^5 - 5*zeta^4 - 3*zeta^3 - 
3*zeta^2 + 2*zeta - 1)*q^57 + (18*zeta^5 + 27*zeta^4 - 9*zeta^3 + 54*zeta^2 - 
36*zeta + 18)*q^59 + (3*zeta^5 - 6*zeta^4 + 2*zeta^3 - 5*zeta^2 + 8*zeta - 
4)*q^61 + (18*zeta^5 - 22*zeta^4 - 30*zeta^3 + 26*zeta^2 - 8*zeta + 4)*q^63 + 
(-18*zeta^5 + 36*zeta^4 - 12*zeta^3 + 30*zeta^2 - 48*zeta + 24)*q^65 + 
(-14*zeta^5 - 21*zeta^4 + 7*zeta^3 - 42*zeta^2 + 28*zeta - 14)*q^67 + (3*zeta^5 
+ 15*zeta^4 + 9*zeta^3 + 9*zeta^2 - 6*zeta + 3)*q^69 + (-2*zeta^5 - 3*zeta^4 + 
zeta^3 - 6*zeta^2 + 4*zeta - 2)*q^73 + (-12*zeta^5 + 24*zeta^4 - 8*zeta^3 + 
20*zeta^2 - 32*zeta + 16)*q^75 + (45*zeta^5 - 6*zeta^4 + 72*zeta^3 - 33*zeta^2 +
78*zeta - 39)*q^77 + (39*zeta^5 - 78*zeta^4 + 26*zeta^3 - 65*zeta^2 + 104*zeta -
52)*q^79 + (2*zeta^5 + 3*zeta^4 - zeta^3 + 6*zeta^2 - 4*zeta + 2)*q^81 + 
(12*zeta^5 + 60*zeta^4 + 36*zeta^3 + 36*zeta^2 - 24*zeta + 12)*q^83 + (9*zeta^5 
+ 45*zeta^4 + 27*zeta^3 + 27*zeta^2 - 18*zeta + 9)*q^85 + (-12*zeta^5 - 
18*zeta^4 + 6*zeta^3 - 36*zeta^2 + 24*zeta - 12)*q^87 + (-45*zeta^5 + 90*zeta^4 
- 30*zeta^3 + 75*zeta^2 - 120*zeta + 60)*q^89 + (48*zeta^5 - 26*zeta^4 + 
18*zeta^3 + 4*zeta^2 + 44*zeta - 22)*q^91 + (21*zeta^5 - 42*zeta^4 + 14*zeta^3 -
35*zeta^2 + 56*zeta - 28)*q^93 + (-6*zeta^5 - 9*zeta^4 + 3*zeta^3 - 18*zeta^2 + 
12*zeta - 6)*q^95 + (-10*zeta^5 - 50*zeta^4 - 30*zeta^3 - 30*zeta^2 + 20*zeta - 
10)*q^97 + (6*zeta^5 + 30*zeta^4 + 18*zeta^3 + 18*zeta^2 - 12*zeta + 6)*q^99 + 
(30*zeta^5 + 45*zeta^4 - 15*zeta^3 + 90*zeta^2 - 60*zeta + 30)*q^101 + 
(-33*zeta^5 + 66*zeta^4 - 22*zeta^3 + 55*zeta^2 - 88*zeta + 44)*q^103 + 
(72*zeta^5 - 39*zeta^4 + 27*zeta^3 + 6*zeta^2 + 66*zeta - 33)*q^105 + 
(-45*zeta^5 + 90*zeta^4 - 30*zeta^3 + 75*zeta^2 - 120*zeta + 60)*q^107 + 
(-2*zeta^5 - 3*zeta^4 + zeta^3 - 6*zeta^2 + 4*zeta - 2)*q^109 + (-zeta^5 - 
5*zeta^4 - 3*zeta^3 - 3*zeta^2 + 2*zeta - 1)*q^111 + (6*zeta^5 + 30*zeta^4 + 
18*zeta^3 + 18*zeta^2 - 12*zeta + 6)*q^113 + (18*zeta^5 + 27*zeta^4 - 9*zeta^3 +
54*zeta^2 - 36*zeta + 18)*q^115 + (12*zeta^5 - 24*zeta^4 + 8*zeta^3 - 20*zeta^2 
+ 32*zeta - 16)*q^117 + (-45*zeta^5 + 6*zeta^4 - 72*zeta^3 + 33*zeta^2 - 78*zeta
+ 39)*q^119 + (6*zeta^5 - 12*zeta^4 + 4*zeta^3 - 10*zeta^2 + 16*zeta - 8)*q^121 
+ (12*zeta^5 + 18*zeta^4 - 6*zeta^3 + 36*zeta^2 - 24*zeta + 12)*q^123 + 
(-3*zeta^5 - 15*zeta^4 - 9*zeta^3 - 9*zeta^2 + 6*zeta - 3)*q^125 + (8*zeta^5 + 
40*zeta^4 + 24*zeta^3 + 24*zeta^2 - 16*zeta + 8)*q^127 + (-8*zeta^5 - 12*zeta^4 
+ 4*zeta^3 - 24*zeta^2 + 16*zeta - 8)*q^129 + (-9*zeta^5 + 18*zeta^4 - 6*zeta^3 
+ 15*zeta^2 - 24*zeta + 12)*q^131 + (9*zeta^5 - 11*zeta^4 - 15*zeta^3 + 
13*zeta^2 - 4*zeta + 2)*q^133 + (45*zeta^5 - 90*zeta^4 + 30*zeta^3 - 75*zeta^2 +
120*zeta - 60)*q^135 + (-42*zeta^5 - 63*zeta^4 + 21*zeta^3 - 126*zeta^2 + 
84*zeta - 42)*q^137 + (20*zeta^5 + 100*zeta^4 + 60*zeta^3 + 60*zeta^2 - 40*zeta 
+ 20)*q^139 + (-9*zeta^5 - 45*zeta^4 - 27*zeta^3 - 27*zeta^2 + 18*zeta - 
9)*q^141 + (-12*zeta^5 - 18*zeta^4 + 6*zeta^3 - 36*zeta^2 + 24*zeta - 12)*q^143 
+ (54*zeta^5 - 108*zeta^4 + 36*zeta^3 - 90*zeta^2 + 144*zeta - 72)*q^145 + 
(-3*zeta^5 + 20*zeta^4 + 54*zeta^3 - 37*zeta^2 + 34*zeta - 17)*q^147 + 
(-9*zeta^5 + 18*zeta^4 - 6*zeta^3 + 15*zeta^2 - 24*zeta + 12)*q^149 + (34*zeta^5
+ 51*zeta^4 - 17*zeta^3 + 102*zeta^2 - 68*zeta + 34)*q^151 + (-6*zeta^5 - 
30*zeta^4 - 18*zeta^3 - 18*zeta^2 + 12*zeta - 6)*q^153 + (-21*zeta^5 - 
105*zeta^4 - 63*zeta^3 - 63*zeta^2 + 42*zeta - 21)*q^155 + (-26*zeta^5 - 
39*zeta^4 + 13*zeta^3 - 78*zeta^2 + 52*zeta - 26)*q^157 + (-9*zeta^5 + 18*zeta^4
- 6*zeta^3 + 15*zeta^2 - 24*zeta + 12)*q^159 + (-27*zeta^5 + 33*zeta^4 + 
45*zeta^3 - 39*zeta^2 + 12*zeta - 6)*q^161 + (-33*zeta^5 + 66*zeta^4 - 22*zeta^3
+ 55*zeta^2 - 88*zeta + 44)*q^163 + (-18*zeta^5 - 27*zeta^4 + 9*zeta^3 - 
54*zeta^2 + 36*zeta - 18)*q^165 + (-12*zeta^5 - 60*zeta^4 - 36*zeta^3 - 
36*zeta^2 + 24*zeta - 12)*q^167 + (-9*zeta^5 - 45*zeta^4 - 27*zeta^3 - 27*zeta^2
+ 18*zeta - 9)*q^169 + (4*zeta^5 + 6*zeta^4 - 2*zeta^3 + 12*zeta^2 - 8*zeta + 
4)*q^171 + (27*zeta^5 - 54*zeta^4 + 18*zeta^3 - 45*zeta^2 + 72*zeta - 36)*q^173 
+ (-60*zeta^5 + 8*zeta^4 - 96*zeta^3 + 44*zeta^2 - 104*zeta + 52)*q^175 + 
(-27*zeta^5 + 54*zeta^4 - 18*zeta^3 + 45*zeta^2 - 72*zeta + 36)*q^177 + 
(42*zeta^5 + 63*zeta^4 - 21*zeta^3 + 126*zeta^2 - 84*zeta + 42)*q^179 + 
(-10*zeta^5 - 50*zeta^4 - 30*zeta^3 - 30*zeta^2 + 20*zeta - 10)*q^181 + (-zeta^5
- 5*zeta^4 - 3*zeta^3 - 3*zeta^2 + 2*zeta - 1)*q^183 + (-6*zeta^5 - 9*zeta^4 + 
3*zeta^3 - 18*zeta^2 + 12*zeta - 6)*q^185 + (27*zeta^5 - 54*zeta^4 + 18*zeta^3 -
45*zeta^2 + 72*zeta - 36)*q^187 + (-120*zeta^5 + 65*zeta^4 - 45*zeta^3 - 
10*zeta^2 - 110*zeta + 55)*q^189 + (27*zeta^5 - 54*zeta^4 + 18*zeta^3 - 
45*zeta^2 + 72*zeta - 36)*q^191 + (22*zeta^5 + 33*zeta^4 - 11*zeta^3 + 66*zeta^2
- 44*zeta + 22)*q^193 + (6*zeta^5 + 30*zeta^4 + 18*zeta^3 + 18*zeta^2 - 12*zeta 
+ 6)*q^195 + (18*zeta^5 + 90*zeta^4 + 54*zeta^3 + 54*zeta^2 - 36*zeta + 
18)*q^197 + (-14*zeta^5 - 21*zeta^4 + 7*zeta^3 - 42*zeta^2 + 28*zeta - 14)*q^199
+ (21*zeta^5 - 42*zeta^4 + 14*zeta^3 - 35*zeta^2 + 56*zeta - 28)*q^201 + 
(-144*zeta^5 + 78*zeta^4 - 54*zeta^3 - 12*zeta^2 - 132*zeta + 66)*q^203 + 
(-54*zeta^5 + 108*zeta^4 - 36*zeta^3 + 90*zeta^2 - 144*zeta + 72)*q^205 + 
(-12*zeta^5 - 18*zeta^4 + 6*zeta^3 - 36*zeta^2 + 24*zeta - 12)*q^207 + (3*zeta^5
+ 15*zeta^4 + 9*zeta^3 + 9*zeta^2 - 6*zeta + 3)*q^209 + (-4*zeta^5 - 20*zeta^4 -
12*zeta^3 - 12*zeta^2 + 8*zeta - 4)*q^211 + (36*zeta^5 - 72*zeta^4 + 24*zeta^3 -
60*zeta^2 + 96*zeta - 48)*q^215 + (105*zeta^5 - 14*zeta^4 + 168*zeta^3 - 
77*zeta^2 + 182*zeta - 91)*q^217 + (3*zeta^5 - 6*zeta^4 + 2*zeta^3 - 5*zeta^2 + 
8*zeta - 4)*q^219 + (12*zeta^5 + 18*zeta^4 - 6*zeta^3 + 36*zeta^2 - 24*zeta + 
12)*q^221 + (8*zeta^5 + 40*zeta^4 + 24*zeta^3 + 24*zeta^2 - 16*zeta + 8)*q^223 +
(-8*zeta^5 - 40*zeta^4 - 24*zeta^3 - 24*zeta^2 + 16*zeta - 8)*q^225 + (-6*zeta^5
- 9*zeta^4 + 3*zeta^3 - 18*zeta^2 + 12*zeta - 6)*q^227 + (-33*zeta^5 + 66*zeta^4
- 22*zeta^3 + 55*zeta^2 - 88*zeta + 44)*q^229 + (27*zeta^5 - 33*zeta^4 - 
45*zeta^3 + 39*zeta^2 - 12*zeta + 6)*q^231 + (63*zeta^5 - 126*zeta^4 + 42*zeta^3
- 105*zeta^2 + 168*zeta - 84)*q^233 + (-54*zeta^5 - 81*zeta^4 + 27*zeta^3 - 
162*zeta^2 + 108*zeta - 54)*q^235 + (-13*zeta^5 - 65*zeta^4 - 39*zeta^3 - 
39*zeta^2 + 26*zeta - 13)*q^237 + (-12*zeta^5 - 60*zeta^4 - 36*zeta^3 - 
36*zeta^2 + 24*zeta - 12)*q^239 + (-2*zeta^5 - 3*zeta^4 + zeta^3 - 6*zeta^2 + 
4*zeta - 2)*q^241 + (-48*zeta^5 + 96*zeta^4 - 32*zeta^3 + 80*zeta^2 - 128*zeta +
64)*q^243 + (171*zeta^5 - 111*zeta^4 + 9*zeta^3 + 51*zeta^2 + 120*zeta - 
60)*q^245 + (6*zeta^5 - 12*zeta^4 + 4*zeta^3 - 10*zeta^2 + 16*zeta - 8)*q^247 + 
(24*zeta^5 + 36*zeta^4 - 12*zeta^3 + 72*zeta^2 - 48*zeta + 24)*q^249 + 
(-9*zeta^5 - 45*zeta^4 - 27*zeta^3 - 27*zeta^2 + 18*zeta - 9)*q^253 + (18*zeta^5
+ 27*zeta^4 - 9*zeta^3 + 54*zeta^2 - 36*zeta + 18)*q^255 + (-9*zeta^5 + 
18*zeta^4 - 6*zeta^3 + 15*zeta^2 - 24*zeta + 12)*q^257 + (9*zeta^5 - 11*zeta^4 -
15*zeta^3 + 13*zeta^2 - 4*zeta + 2)*q^259 + (-36*zeta^5 + 72*zeta^4 - 24*zeta^3 
+ 60*zeta^2 - 96*zeta + 48)*q^261 + (-6*zeta^5 - 9*zeta^4 + 3*zeta^3 - 18*zeta^2
+ 12*zeta - 6)*q^263 + (9*zeta^5 + 45*zeta^4 + 27*zeta^3 + 27*zeta^2 - 18*zeta +
9)*q^265 + (15*zeta^5 + 75*zeta^4 + 45*zeta^3 + 45*zeta^2 - 30*zeta + 15)*q^267 
+ (6*zeta^5 + 9*zeta^4 - 3*zeta^3 + 18*zeta^2 - 12*zeta + 6)*q^269 + (-33*zeta^5
+ 66*zeta^4 - 22*zeta^3 + 55*zeta^2 - 88*zeta + 44)*q^271 + (-30*zeta^5 + 
4*zeta^4 - 48*zeta^3 + 22*zeta^2 - 52*zeta + 26)*q^273 + (36*zeta^5 - 72*zeta^4 
+ 24*zeta^3 - 60*zeta^2 + 96*zeta - 48)*q^275 + (-26*zeta^5 - 39*zeta^4 + 
13*zeta^3 - 78*zeta^2 + 52*zeta - 26)*q^277 + (14*zeta^5 + 70*zeta^4 + 42*zeta^3
+ 42*zeta^2 - 28*zeta + 14)*q^279 + (30*zeta^5 + 150*zeta^4 + 90*zeta^3 + 
90*zeta^2 - 60*zeta + 30)*q^281 + (58*zeta^5 + 87*zeta^4 - 29*zeta^3 + 
174*zeta^2 - 116*zeta + 58)*q^283 + (9*zeta^5 - 18*zeta^4 + 6*zeta^3 - 15*zeta^2
+ 24*zeta - 12)*q^285 + (144*zeta^5 - 78*zeta^4 + 54*zeta^3 + 12*zeta^2 + 
132*zeta - 66)*q^287 + (24*zeta^5 - 48*zeta^4 + 16*zeta^3 - 40*zeta^2 + 64*zeta 
- 32)*q^289 + (-20*zeta^5 - 30*zeta^4 + 10*zeta^3 - 60*zeta^2 + 40*zeta - 
20)*q^291 + (6*zeta^5 + 30*zeta^4 + 18*zeta^3 + 18*zeta^2 - 12*zeta + 6)*q^293 +
(27*zeta^5 + 135*zeta^4 + 81*zeta^3 + 81*zeta^2 - 54*zeta + 27)*q^295 + 
(30*zeta^5 + 45*zeta^4 - 15*zeta^3 + 90*zeta^2 - 60*zeta + 30)*q^297 + 
(-18*zeta^5 + 36*zeta^4 - 12*zeta^3 + 30*zeta^2 - 48*zeta + 24)*q^299 + 
(-96*zeta^5 + 52*zeta^4 - 36*zeta^3 - 8*zeta^2 - 88*zeta + 44)*q^301 + 
(-45*zeta^5 + 90*zeta^4 - 30*zeta^3 + 75*zeta^2 - 120*zeta + 60)*q^303 + 
(-6*zeta^5 - 9*zeta^4 + 3*zeta^3 - 18*zeta^2 + 12*zeta - 6)*q^305 + (-28*zeta^5 
- 140*zeta^4 - 84*zeta^3 - 84*zeta^2 + 56*zeta - 28)*q^307 + (11*zeta^5 + 
55*zeta^4 + 33*zeta^3 + 33*zeta^2 - 22*zeta + 11)*q^309 + (-54*zeta^5 - 
81*zeta^4 + 27*zeta^3 - 162*zeta^2 + 108*zeta - 54)*q^311 + (-69*zeta^5 + 
138*zeta^4 - 46*zeta^3 + 115*zeta^2 - 184*zeta + 92)*q^313 + (90*zeta^5 - 
12*zeta^4 + 144*zeta^3 - 66*zeta^2 + 156*zeta - 78)*q^315 + (27*zeta^5 - 
54*zeta^4 + 18*zeta^3 - 45*zeta^2 + 72*zeta - 36)*q^317 + (36*zeta^5 + 54*zeta^4
- 18*zeta^3 + 108*zeta^2 - 72*zeta + 36)*q^319 + (15*zeta^5 + 75*zeta^4 + 
45*zeta^3 + 45*zeta^2 - 30*zeta + 15)*q^321 + (-3*zeta^5 - 15*zeta^4 - 9*zeta^3 
- 9*zeta^2 + 6*zeta - 3)*q^323 + (16*zeta^5 + 24*zeta^4 - 8*zeta^3 + 48*zeta^2 -
32*zeta + 16)*q^325 + (3*zeta^5 - 6*zeta^4 + 2*zeta^3 - 5*zeta^2 + 8*zeta - 
4)*q^327 + (81*zeta^5 - 99*zeta^4 - 135*zeta^3 + 117*zeta^2 - 36*zeta + 
18)*q^329 + (39*zeta^5 - 78*zeta^4 + 26*zeta^3 - 65*zeta^2 + 104*zeta - 
52)*q^331 + (4*zeta^5 + 6*zeta^4 - 2*zeta^3 + 12*zeta^2 - 8*zeta + 4)*q^333 + 
(-21*zeta^5 - 105*zeta^4 - 63*zeta^3 - 63*zeta^2 + 42*zeta - 21)*q^335 + 
(-34*zeta^5 - 170*zeta^4 - 102*zeta^3 - 102*zeta^2 + 68*zeta - 34)*q^337 + 
(12*zeta^5 + 18*zeta^4 - 6*zeta^3 + 36*zeta^2 - 24*zeta + 12)*q^339 + 
(-63*zeta^5 + 126*zeta^4 - 42*zeta^3 + 105*zeta^2 - 168*zeta + 84)*q^341 + 
(48*zeta^5 + 23*zeta^4 + 165*zeta^3 - 94*zeta^2 + 142*zeta - 71)*q^343 + 
(-27*zeta^5 + 54*zeta^4 - 18*zeta^3 + 45*zeta^2 - 72*zeta + 36)*q^345 + 
(18*zeta^5 + 27*zeta^4 - 9*zeta^3 + 54*zeta^2 - 36*zeta + 18)*q^347 + (26*zeta^5
+ 130*zeta^4 + 78*zeta^3 + 78*zeta^2 - 52*zeta + 26)*q^349 + (-10*zeta^5 - 
50*zeta^4 - 30*zeta^3 - 30*zeta^2 + 20*zeta - 10)*q^351 + (-42*zeta^5 - 
63*zeta^4 + 21*zeta^3 - 126*zeta^2 + 84*zeta - 42)*q^353 + (-27*zeta^5 + 
33*zeta^4 + 45*zeta^3 - 39*zeta^2 + 12*zeta - 6)*q^357 + (-45*zeta^5 + 90*zeta^4
- 30*zeta^3 + 75*zeta^2 - 120*zeta + 60)*q^359 + (-36*zeta^5 - 54*zeta^4 + 
18*zeta^3 - 108*zeta^2 + 72*zeta - 36)*q^361 + (-2*zeta^5 - 10*zeta^4 - 6*zeta^3
- 6*zeta^2 + 4*zeta - 2)*q^363 + (-3*zeta^5 - 15*zeta^4 - 9*zeta^3 - 9*zeta^2 + 
6*zeta - 3)*q^365 + (10*zeta^5 + 15*zeta^4 - 5*zeta^3 + 30*zeta^2 - 20*zeta + 
10)*q^367 + (36*zeta^5 - 72*zeta^4 + 24*zeta^3 - 60*zeta^2 + 96*zeta - 48)*q^369
+ (-45*zeta^5 + 6*zeta^4 - 72*zeta^3 + 33*zeta^2 - 78*zeta + 39)*q^371 + 
(75*zeta^5 - 150*zeta^4 + 50*zeta^3 - 125*zeta^2 + 200*zeta - 100)*q^373 + 
(-6*zeta^5 - 9*zeta^4 + 3*zeta^3 - 18*zeta^2 + 12*zeta - 6)*q^375 + (-12*zeta^5 
- 60*zeta^4 - 36*zeta^3 - 36*zeta^2 + 24*zeta - 12)*q^377 + (8*zeta^5 + 
40*zeta^4 + 24*zeta^3 + 24*zeta^2 - 16*zeta + 8)*q^379 + (16*zeta^5 + 24*zeta^4 
- 8*zeta^3 + 48*zeta^2 - 32*zeta + 16)*q^381 + (99*zeta^5 - 198*zeta^4 + 
66*zeta^3 - 165*zeta^2 + 264*zeta - 132)*q^383 + (-216*zeta^5 + 117*zeta^4 - 
81*zeta^3 - 18*zeta^2 - 198*zeta + 99)*q^385 + (-24*zeta^5 + 48*zeta^4 - 
16*zeta^3 + 40*zeta^2 - 64*zeta + 32)*q^387 + (30*zeta^5 + 45*zeta^4 - 15*zeta^3
+ 90*zeta^2 - 60*zeta + 30)*q^389 + (9*zeta^5 + 45*zeta^4 + 27*zeta^3 + 
27*zeta^2 - 18*zeta + 9)*q^391 + (3*zeta^5 + 15*zeta^4 + 9*zeta^3 + 9*zeta^2 - 
6*zeta + 3)*q^393 + (-78*zeta^5 - 117*zeta^4 + 39*zeta^3 - 234*zeta^2 + 156*zeta
- 78)*q^395 + (111*zeta^5 - 222*zeta^4 + 74*zeta^3 - 185*zeta^2 + 296*zeta - 
148)*q^397 + (-24*zeta^5 + 13*zeta^4 - 9*zeta^3 - 2*zeta^2 - 22*zeta + 11)*q^399
+ (-9*zeta^5 + 18*zeta^4 - 6*zeta^3 + 15*zeta^2 - 24*zeta + 12)*q^401 + 
(-28*zeta^5 - 42*zeta^4 + 14*zeta^3 - 84*zeta^2 + 56*zeta - 28)*q^403 + 
(3*zeta^5 + 15*zeta^4 + 9*zeta^3 + 9*zeta^2 - 6*zeta + 3)*q^405 + (3*zeta^5 + 
15*zeta^4 + 9*zeta^3 + 9*zeta^2 - 6*zeta + 3)*q^407 + (22*zeta^5 + 33*zeta^4 - 
11*zeta^3 + 66*zeta^2 - 44*zeta + 22)*q^409 + (63*zeta^5 - 126*zeta^4 + 
42*zeta^3 - 105*zeta^2 + 168*zeta - 84)*q^411 + (-135*zeta^5 + 18*zeta^4 - 
216*zeta^3 + 99*zeta^2 - 234*zeta + 117)*q^413 + (-108*zeta^5 + 216*zeta^4 - 
72*zeta^3 + 180*zeta^2 - 288*zeta + 144)*q^415 + (40*zeta^5 + 60*zeta^4 - 
20*zeta^3 + 120*zeta^2 - 80*zeta + 40)*q^417 + (-12*zeta^5 - 60*zeta^4 - 
36*zeta^3 - 36*zeta^2 + 24*zeta - 12)*q^419 + (-22*zeta^5 - 110*zeta^4 - 
66*zeta^3 - 66*zeta^2 + 44*zeta - 22)*q^421 + (36*zeta^5 + 54*zeta^4 - 18*zeta^3
+ 108*zeta^2 - 72*zeta + 36)*q^423 + (-36*zeta^5 + 72*zeta^4 - 24*zeta^3 + 
60*zeta^2 - 96*zeta + 48)*q^425 + (9*zeta^5 - 11*zeta^4 - 15*zeta^3 + 13*zeta^2 
- 4*zeta + 2)*q^427 + (18*zeta^5 - 36*zeta^4 + 12*zeta^3 - 30*zeta^2 + 48*zeta -
24)*q^429 + (-30*zeta^5 - 45*zeta^4 + 15*zeta^3 - 90*zeta^2 + 60*zeta - 
30)*q^431 + (-10*zeta^5 - 50*zeta^4 - 30*zeta^3 - 30*zeta^2 + 20*zeta - 
10)*q^433 + (-18*zeta^5 - 90*zeta^4 - 54*zeta^3 - 54*zeta^2 + 36*zeta - 
18)*q^435 + (-6*zeta^5 - 9*zeta^4 + 3*zeta^3 - 18*zeta^2 + 12*zeta - 6)*q^437 + 
(3*zeta^5 - 6*zeta^4 + 2*zeta^3 - 5*zeta^2 + 8*zeta - 4)*q^439 + (-114*zeta^5 + 
74*zeta^4 - 6*zeta^3 - 34*zeta^2 - 80*zeta + 40)*q^441 + (27*zeta^5 - 54*zeta^4 
+ 18*zeta^3 - 45*zeta^2 + 72*zeta - 36)*q^443 + (90*zeta^5 + 135*zeta^4 - 
45*zeta^3 + 270*zeta^2 - 180*zeta + 90)*q^445 + (3*zeta^5 + 15*zeta^4 + 9*zeta^3
+ 9*zeta^2 - 6*zeta + 3)*q^447 + (-18*zeta^5 - 90*zeta^4 - 54*zeta^3 - 54*zeta^2
+ 36*zeta - 18)*q^449 + (-36*zeta^5 - 54*zeta^4 + 18*zeta^3 - 108*zeta^2 + 
72*zeta - 36)*q^451 + (-51*zeta^5 + 102*zeta^4 - 34*zeta^3 + 85*zeta^2 - 
136*zeta + 68)*q^453 + (-54*zeta^5 + 66*zeta^4 + 90*zeta^3 - 78*zeta^2 + 24*zeta
- 12)*q^455 + (-69*zeta^5 + 138*zeta^4 - 46*zeta^3 + 115*zeta^2 - 184*zeta + 
92)*q^457 + (-30*zeta^5 - 45*zeta^4 + 15*zeta^3 - 90*zeta^2 + 60*zeta - 
30)*q^459 + (-6*zeta^5 - 30*zeta^4 - 18*zeta^3 - 18*zeta^2 + 12*zeta - 6)*q^461 
+ (-16*zeta^5 - 80*zeta^4 - 48*zeta^3 - 48*zeta^2 + 32*zeta - 16)*q^463 + 
(-42*zeta^5 - 63*zeta^4 + 21*zeta^3 - 126*zeta^2 + 84*zeta - 42)*q^465 + 
(63*zeta^5 - 126*zeta^4 + 42*zeta^3 - 105*zeta^2 + 168*zeta - 84)*q^467 + 
(105*zeta^5 - 14*zeta^4 + 168*zeta^3 - 77*zeta^2 + 182*zeta - 91)*q^469 + 
(39*zeta^5 - 78*zeta^4 + 26*zeta^3 - 65*zeta^2 + 104*zeta - 52)*q^471 + 
(24*zeta^5 + 36*zeta^4 - 12*zeta^3 + 72*zeta^2 - 48*zeta + 24)*q^473 + 
(-4*zeta^5 - 20*zeta^4 - 12*zeta^3 - 12*zeta^2 + 8*zeta - 4)*q^475 + (-6*zeta^5 
- 30*zeta^4 - 18*zeta^3 - 18*zeta^2 + 12*zeta - 6)*q^477 + (-6*zeta^5 - 9*zeta^4
+ 3*zeta^3 - 18*zeta^2 + 12*zeta - 6)*q^479 + (6*zeta^5 - 12*zeta^4 + 4*zeta^3 -
10*zeta^2 + 16*zeta - 8)*q^481 + (72*zeta^5 - 39*zeta^4 + 27*zeta^3 + 6*zeta^2 +
66*zeta - 33)*q^483 + (90*zeta^5 - 180*zeta^4 + 60*zeta^3 - 150*zeta^2 + 
240*zeta - 120)*q^485 + (-38*zeta^5 - 57*zeta^4 + 19*zeta^3 - 114*zeta^2 + 
76*zeta - 38)*q^487 + (11*zeta^5 + 55*zeta^4 + 33*zeta^3 + 33*zeta^2 - 22*zeta +
11)*q^489 + (24*zeta^5 + 120*zeta^4 + 72*zeta^3 + 72*zeta^2 - 48*zeta + 
24)*q^491 + (-36*zeta^5 - 54*zeta^4 + 18*zeta^3 - 108*zeta^2 + 72*zeta - 
36)*q^493 + (-54*zeta^5 + 108*zeta^4 - 36*zeta^3 + 90*zeta^2 - 144*zeta + 
72)*q^495 + (-33*zeta^5 + 66*zeta^4 - 22*zeta^3 + 55*zeta^2 - 88*zeta + 
44)*q^499 + (-24*zeta^5 - 36*zeta^4 + 12*zeta^3 - 72*zeta^2 + 48*zeta - 
24)*q^501 + (45*zeta^5 + 225*zeta^4 + 135*zeta^3 + 135*zeta^2 - 90*zeta + 
45)*q^505 + (-18*zeta^5 - 27*zeta^4 + 9*zeta^3 - 54*zeta^2 + 36*zeta - 18)*q^507
+ (-9*zeta^5 + 18*zeta^4 - 6*zeta^3 + 15*zeta^2 - 24*zeta + 12)*q^509 + 
(15*zeta^5 - 2*zeta^4 + 24*zeta^3 - 11*zeta^2 + 26*zeta - 13)*q^511 + 
(-15*zeta^5 + 30*zeta^4 - 10*zeta^3 + 25*zeta^2 - 40*zeta + 20)*q^513 + 
(66*zeta^5 + 99*zeta^4 - 33*zeta^3 + 198*zeta^2 - 132*zeta + 66)*q^515 + 
(27*zeta^5 + 135*zeta^4 + 81*zeta^3 + 81*zeta^2 - 54*zeta + 27)*q^517 + 
(-9*zeta^5 - 45*zeta^4 - 27*zeta^3 - 27*zeta^2 + 18*zeta - 9)*q^519 + (78*zeta^5
+ 117*zeta^4 - 39*zeta^3 + 234*zeta^2 - 156*zeta + 78)*q^521 + (3*zeta^5 - 
6*zeta^4 + 2*zeta^3 - 5*zeta^2 + 8*zeta - 4)*q^523 + (-36*zeta^5 + 44*zeta^4 + 
60*zeta^3 - 52*zeta^2 + 16*zeta - 8)*q^525 + (63*zeta^5 - 126*zeta^4 + 42*zeta^3
- 105*zeta^2 + 168*zeta - 84)*q^527 + (-28*zeta^5 - 42*zeta^4 + 14*zeta^3 - 
84*zeta^2 + 56*zeta - 28)*q^529 + (-18*zeta^5 - 90*zeta^4 - 54*zeta^3 - 
54*zeta^2 + 36*zeta - 18)*q^531 + (12*zeta^5 + 60*zeta^4 + 36*zeta^3 + 36*zeta^2
- 24*zeta + 12)*q^533 + (90*zeta^5 + 135*zeta^4 - 45*zeta^3 + 270*zeta^2 - 
180*zeta + 90)*q^535 + (-63*zeta^5 + 126*zeta^4 - 42*zeta^3 + 105*zeta^2 - 
168*zeta + 84)*q^537 + (9*zeta^5 - 60*zeta^4 - 162*zeta^3 + 111*zeta^2 - 
102*zeta + 51)*q^539 + (-105*zeta^5 + 210*zeta^4 - 70*zeta^3 + 175*zeta^2 - 
280*zeta + 140)*q^541 + (-20*zeta^5 - 30*zeta^4 + 10*zeta^3 - 60*zeta^2 + 
40*zeta - 20)*q^543 + (-3*zeta^5 - 15*zeta^4 - 9*zeta^3 - 9*zeta^2 + 6*zeta - 
3)*q^545 + (8*zeta^5 + 40*zeta^4 + 24*zeta^3 + 24*zeta^2 - 16*zeta + 8)*q^547 + 
(4*zeta^5 + 6*zeta^4 - 2*zeta^3 + 12*zeta^2 - 8*zeta + 4)*q^549 + (-18*zeta^5 + 
36*zeta^4 - 12*zeta^3 + 30*zeta^2 - 48*zeta + 24)*q^551 + (117*zeta^5 - 
143*zeta^4 - 195*zeta^3 + 169*zeta^2 - 52*zeta + 26)*q^553 + (9*zeta^5 - 
18*zeta^4 + 6*zeta^3 - 15*zeta^2 + 24*zeta - 12)*q^555 + (-66*zeta^5 - 99*zeta^4
+ 33*zeta^3 - 198*zeta^2 + 132*zeta - 66)*q^557 + (-8*zeta^5 - 40*zeta^4 - 
24*zeta^3 - 24*zeta^2 + 16*zeta - 8)*q^559 + O(q^560)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_14E1 := Curve(P_Q, [ PolynomialRing(CyclotomicField(14), 2) | 
]);
