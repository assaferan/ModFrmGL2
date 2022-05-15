
    /****************************************************
    Loading this file in magma loads the objects fs_9A4 
    and X_9A4. fs_9A4 is a list of power series which form 
    a basis for the space of cusp forms. X_9A4 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | 1, -3, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_9A4 := [Kq | (-zeta^2 + 2)*q - zeta*q^4 + (2*zeta^2 + 2*zeta - 
4)*q^7 + (3*zeta^2 - 6)*q^10 + zeta*q^13 + (-5*zeta^2 - 5*zeta + 10)*q^16 + 
(-2*zeta^2 + 4)*q^19 + 6*zeta*q^22 + (-2*zeta^2 - 2*zeta + 4)*q^25 + (-2*zeta^2 
+ 4)*q^28 - 8*zeta*q^31 + (9*zeta^2 + 9*zeta - 18)*q^34 + (7*zeta^2 - 14)*q^37 -
3*zeta*q^40 + (2*zeta^2 + 2*zeta - 4)*q^43 + (-6*zeta^2 + 12)*q^46 + 3*zeta*q^49
+ (-zeta^2 - zeta + 2)*q^52 + (-6*zeta^2 + 12)*q^55 - 3*zeta*q^58 + (-7*zeta^2 -
7*zeta + 14)*q^61 + (-zeta^2 + 2)*q^64 + 10*zeta*q^67 + (-6*zeta^2 - 6*zeta + 
12)*q^70 + (7*zeta^2 - 14)*q^73 - 2*zeta*q^76 + (2*zeta^2 + 2*zeta - 4)*q^79 + 
(12*zeta^2 - 24)*q^82 + 9*zeta*q^85 + (6*zeta^2 + 6*zeta - 12)*q^88 + (2*zeta^2 
- 4)*q^91 - 12*zeta*q^94 + (2*zeta^2 + 2*zeta - 4)*q^97 + (2*zeta^2 - 4)*q^100 -
8*zeta*q^103 + (-11*zeta^2 + 22)*q^109 + 10*zeta*q^112 + (-6*zeta^2 - 6*zeta + 
12)*q^115 + (-24*zeta^2 + 48)*q^118 - zeta*q^121 + (8*zeta^2 + 8*zeta - 
16)*q^124 + (-2*zeta^2 + 4)*q^127 - 3*zeta*q^130 + (4*zeta^2 + 4*zeta - 8)*q^133
+ (9*zeta^2 - 18)*q^136 - 8*zeta*q^139 + (-18*zeta^2 - 18*zeta + 36)*q^142 + 
(3*zeta^2 - 6)*q^145 + 7*zeta*q^148 + (20*zeta^2 + 20*zeta - 40)*q^151 + 
(12*zeta^2 - 24)*q^154 - 17*zeta*q^157 + (9*zeta^2 + 9*zeta - 18)*q^160 + 
(16*zeta^2 - 32)*q^163 + 24*zeta*q^166 + (-12*zeta^2 - 12*zeta + 24)*q^169 + 
(-2*zeta^2 + 4)*q^172 + 4*zeta*q^175 + (-9*zeta^2 - 9*zeta + 18)*q^178 + 
(-2*zeta^2 + 4)*q^181 + 6*zeta*q^184 + (-18*zeta^2 - 18*zeta + 36)*q^187 + 
(6*zeta^2 - 12)*q^190 + zeta*q^193 + (-3*zeta^2 - 3*zeta + 6)*q^196 + 
(-20*zeta^2 + 40)*q^199 - 12*zeta*q^202 + (12*zeta^2 + 12*zeta - 24)*q^205 + 
(-5*zeta^2 + 10)*q^208 + 10*zeta*q^211 + (-16*zeta^2 + 32)*q^217 - 6*zeta*q^220 
+ (2*zeta^2 + 2*zeta - 4)*q^223 + (3*zeta^2 - 6)*q^226 + zeta*q^229 + (-3*zeta^2
- 3*zeta + 6)*q^232 + (12*zeta^2 - 24)*q^235 - 18*zeta*q^238 + (29*zeta^2 + 
29*zeta - 58)*q^241 + (7*zeta^2 - 14)*q^244 + 2*zeta*q^247 + (21*zeta^2 + 
21*zeta - 42)*q^250 + (12*zeta^2 - 24)*q^253 - 19*zeta*q^256 + (-14*zeta^2 - 
14*zeta + 28)*q^259 + (-6*zeta^2 + 12)*q^262 + (-10*zeta^2 - 10*zeta + 20)*q^268
+ (-2*zeta^2 + 4)*q^271 - 3*zeta*q^274 + (2*zeta^2 + 2*zeta - 4)*q^277 + 
(-6*zeta^2 + 12)*q^280 + 28*zeta*q^283 + (6*zeta^2 + 6*zeta - 12)*q^286 + 
(-10*zeta^2 + 20)*q^289 + 7*zeta*q^292 + (-24*zeta^2 - 24*zeta + 48)*q^295 + 
(-15*zeta^2 + 30)*q^298 - 4*zeta*q^301 + (-10*zeta^2 - 10*zeta + 20)*q^304 + 
(16*zeta^2 - 32)*q^307 + 24*zeta*q^310 + (-25*zeta^2 - 25*zeta + 50)*q^313 + 
(-2*zeta^2 + 4)*q^316 + 6*zeta*q^319 + (12*zeta^2 + 12*zeta - 24)*q^322 + 
(-2*zeta^2 + 4)*q^325 - 12*zeta*q^328 + (2*zeta^2 + 2*zeta - 4)*q^331 + 
(30*zeta^2 - 60)*q^334 - 26*zeta*q^337 + (-9*zeta^2 - 9*zeta + 18)*q^340 + 
(20*zeta^2 - 40)*q^343 + 33*zeta*q^346 + (2*zeta^2 + 2*zeta - 4)*q^349 + 
(-18*zeta^2 + 36)*q^352 - 18*zeta*q^355 + (36*zeta^2 + 36*zeta - 72)*q^358 + 
(15*zeta^2 - 30)*q^361 + 2*zeta*q^364 + (20*zeta^2 + 20*zeta - 40)*q^367 + 
(-21*zeta^2 + 42)*q^370 + 10*zeta*q^373 + (-12*zeta^2 - 12*zeta + 24)*q^376 + 
(16*zeta^2 - 32)*q^379 - 30*zeta*q^382 + (12*zeta^2 + 12*zeta - 24)*q^385 + 
O(q^387), (-zeta^2 + 2)*q - zeta*q^4 + (2*zeta^2 + 2*zeta - 4)*q^7 + (3*zeta^2 -
6)*q^10 + zeta*q^13 + (-5*zeta^2 - 5*zeta + 10)*q^16 + (-2*zeta^2 + 4)*q^19 + 
6*zeta*q^22 + (-2*zeta^2 - 2*zeta + 4)*q^25 + (-2*zeta^2 + 4)*q^28 - 8*zeta*q^31
+ (9*zeta^2 + 9*zeta - 18)*q^34 + (7*zeta^2 - 14)*q^37 - 3*zeta*q^40 + (2*zeta^2
+ 2*zeta - 4)*q^43 + (-6*zeta^2 + 12)*q^46 + 3*zeta*q^49 + (-zeta^2 - zeta + 
2)*q^52 + (-6*zeta^2 + 12)*q^55 - 3*zeta*q^58 + (-7*zeta^2 - 7*zeta + 14)*q^61 +
(-zeta^2 + 2)*q^64 + 10*zeta*q^67 + (-6*zeta^2 - 6*zeta + 12)*q^70 + (7*zeta^2 -
14)*q^73 - 2*zeta*q^76 + (2*zeta^2 + 2*zeta - 4)*q^79 + (12*zeta^2 - 24)*q^82 + 
9*zeta*q^85 + (6*zeta^2 + 6*zeta - 12)*q^88 + (2*zeta^2 - 4)*q^91 - 12*zeta*q^94
+ (2*zeta^2 + 2*zeta - 4)*q^97 + (2*zeta^2 - 4)*q^100 - 8*zeta*q^103 + 
(-11*zeta^2 + 22)*q^109 + 10*zeta*q^112 + (-6*zeta^2 - 6*zeta + 12)*q^115 + 
(-24*zeta^2 + 48)*q^118 - zeta*q^121 + (8*zeta^2 + 8*zeta - 16)*q^124 + 
(-2*zeta^2 + 4)*q^127 - 3*zeta*q^130 + (4*zeta^2 + 4*zeta - 8)*q^133 + (9*zeta^2
- 18)*q^136 - 8*zeta*q^139 + (-18*zeta^2 - 18*zeta + 36)*q^142 + (3*zeta^2 - 
6)*q^145 + 7*zeta*q^148 + (20*zeta^2 + 20*zeta - 40)*q^151 + (12*zeta^2 - 
24)*q^154 - 17*zeta*q^157 + (9*zeta^2 + 9*zeta - 18)*q^160 + (16*zeta^2 - 
32)*q^163 + 24*zeta*q^166 + (-12*zeta^2 - 12*zeta + 24)*q^169 + (-2*zeta^2 + 
4)*q^172 + 4*zeta*q^175 + (-9*zeta^2 - 9*zeta + 18)*q^178 + (-2*zeta^2 + 
4)*q^181 + 6*zeta*q^184 + (-18*zeta^2 - 18*zeta + 36)*q^187 + (6*zeta^2 - 
12)*q^190 + zeta*q^193 + (-3*zeta^2 - 3*zeta + 6)*q^196 + (-20*zeta^2 + 
40)*q^199 - 12*zeta*q^202 + (12*zeta^2 + 12*zeta - 24)*q^205 + (-5*zeta^2 + 
10)*q^208 + 10*zeta*q^211 + (-16*zeta^2 + 32)*q^217 - 6*zeta*q^220 + (2*zeta^2 +
2*zeta - 4)*q^223 + (3*zeta^2 - 6)*q^226 + zeta*q^229 + (-3*zeta^2 - 3*zeta + 
6)*q^232 + (12*zeta^2 - 24)*q^235 - 18*zeta*q^238 + (29*zeta^2 + 29*zeta - 
58)*q^241 + (7*zeta^2 - 14)*q^244 + 2*zeta*q^247 + (21*zeta^2 + 21*zeta - 
42)*q^250 + (12*zeta^2 - 24)*q^253 - 19*zeta*q^256 + (-14*zeta^2 - 14*zeta + 
28)*q^259 + (-6*zeta^2 + 12)*q^262 + (-10*zeta^2 - 10*zeta + 20)*q^268 + 
(-2*zeta^2 + 4)*q^271 - 3*zeta*q^274 + (2*zeta^2 + 2*zeta - 4)*q^277 + 
(-6*zeta^2 + 12)*q^280 + 28*zeta*q^283 + (6*zeta^2 + 6*zeta - 12)*q^286 + 
(-10*zeta^2 + 20)*q^289 + 7*zeta*q^292 + (-24*zeta^2 - 24*zeta + 48)*q^295 + 
(-15*zeta^2 + 30)*q^298 - 4*zeta*q^301 + (-10*zeta^2 - 10*zeta + 20)*q^304 + 
(16*zeta^2 - 32)*q^307 + 24*zeta*q^310 + (-25*zeta^2 - 25*zeta + 50)*q^313 + 
(-2*zeta^2 + 4)*q^316 + 6*zeta*q^319 + (12*zeta^2 + 12*zeta - 24)*q^322 + 
(-2*zeta^2 + 4)*q^325 - 12*zeta*q^328 + (2*zeta^2 + 2*zeta - 4)*q^331 + 
(30*zeta^2 - 60)*q^334 - 26*zeta*q^337 + (-9*zeta^2 - 9*zeta + 18)*q^340 + 
(20*zeta^2 - 40)*q^343 + 33*zeta*q^346 + (2*zeta^2 + 2*zeta - 4)*q^349 + 
(-18*zeta^2 + 36)*q^352 - 18*zeta*q^355 + (36*zeta^2 + 36*zeta - 72)*q^358 + 
(15*zeta^2 - 30)*q^361 + 2*zeta*q^364 + (20*zeta^2 + 20*zeta - 40)*q^367 + 
(-21*zeta^2 + 42)*q^370 + 10*zeta*q^373 + (-12*zeta^2 - 12*zeta + 24)*q^376 + 
(16*zeta^2 - 32)*q^379 - 30*zeta*q^382 + (12*zeta^2 + 12*zeta - 24)*q^385 + 
O(q^387), 2*zeta*q + (-2*zeta^2 - 2*zeta + 4)*q^4 + (4*zeta^2 - 8)*q^7 - 
6*zeta*q^10 + (2*zeta^2 + 2*zeta - 4)*q^13 + (-10*zeta^2 + 20)*q^16 + 
4*zeta*q^19 + (12*zeta^2 + 12*zeta - 24)*q^22 + (-4*zeta^2 + 8)*q^25 + 
4*zeta*q^28 + (-16*zeta^2 - 16*zeta + 32)*q^31 + (18*zeta^2 - 36)*q^34 - 
14*zeta*q^37 + (-6*zeta^2 - 6*zeta + 12)*q^40 + (4*zeta^2 - 8)*q^43 + 
12*zeta*q^46 + (6*zeta^2 + 6*zeta - 12)*q^49 + (-2*zeta^2 + 4)*q^52 + 
12*zeta*q^55 + (-6*zeta^2 - 6*zeta + 12)*q^58 + (-14*zeta^2 + 28)*q^61 + 
2*zeta*q^64 + (20*zeta^2 + 20*zeta - 40)*q^67 + (-12*zeta^2 + 24)*q^70 - 
14*zeta*q^73 + (-4*zeta^2 - 4*zeta + 8)*q^76 + (4*zeta^2 - 8)*q^79 - 
24*zeta*q^82 + (18*zeta^2 + 18*zeta - 36)*q^85 + (12*zeta^2 - 24)*q^88 - 
4*zeta*q^91 + (-24*zeta^2 - 24*zeta + 48)*q^94 + (4*zeta^2 - 8)*q^97 - 
4*zeta*q^100 + (-16*zeta^2 - 16*zeta + 32)*q^103 + 22*zeta*q^109 + (20*zeta^2 + 
20*zeta - 40)*q^112 + (-12*zeta^2 + 24)*q^115 + 48*zeta*q^118 + (-2*zeta^2 - 
2*zeta + 4)*q^121 + (16*zeta^2 - 32)*q^124 + 4*zeta*q^127 + (-6*zeta^2 - 6*zeta 
+ 12)*q^130 + (8*zeta^2 - 16)*q^133 - 18*zeta*q^136 + (-16*zeta^2 - 16*zeta + 
32)*q^139 + (-36*zeta^2 + 72)*q^142 - 6*zeta*q^145 + (14*zeta^2 + 14*zeta - 
28)*q^148 + (40*zeta^2 - 80)*q^151 - 24*zeta*q^154 + (-34*zeta^2 - 34*zeta + 
68)*q^157 + (18*zeta^2 - 36)*q^160 - 32*zeta*q^163 + (48*zeta^2 + 48*zeta - 
96)*q^166 + (-24*zeta^2 + 48)*q^169 + 4*zeta*q^172 + (8*zeta^2 + 8*zeta - 
16)*q^175 + (-18*zeta^2 + 36)*q^178 + 4*zeta*q^181 + (12*zeta^2 + 12*zeta - 
24)*q^184 + (-36*zeta^2 + 72)*q^187 - 12*zeta*q^190 + (2*zeta^2 + 2*zeta - 
4)*q^193 + (-6*zeta^2 + 12)*q^196 + 40*zeta*q^199 + (-24*zeta^2 - 24*zeta + 
48)*q^202 + (24*zeta^2 - 48)*q^205 + 10*zeta*q^208 + (20*zeta^2 + 20*zeta - 
40)*q^211 + 32*zeta*q^217 + (-12*zeta^2 - 12*zeta + 24)*q^220 + (4*zeta^2 - 
8)*q^223 - 6*zeta*q^226 + (2*zeta^2 + 2*zeta - 4)*q^229 + (-6*zeta^2 + 12)*q^232
- 24*zeta*q^235 + (-36*zeta^2 - 36*zeta + 72)*q^238 + (58*zeta^2 - 116)*q^241 - 
14*zeta*q^244 + (4*zeta^2 + 4*zeta - 8)*q^247 + (42*zeta^2 - 84)*q^250 - 
24*zeta*q^253 + (-38*zeta^2 - 38*zeta + 76)*q^256 + (-28*zeta^2 + 56)*q^259 + 
12*zeta*q^262 + (-20*zeta^2 + 40)*q^268 + 4*zeta*q^271 + (-6*zeta^2 - 6*zeta + 
12)*q^274 + (4*zeta^2 - 8)*q^277 + 12*zeta*q^280 + (56*zeta^2 + 56*zeta - 
112)*q^283 + (12*zeta^2 - 24)*q^286 + 20*zeta*q^289 + (14*zeta^2 + 14*zeta - 
28)*q^292 + (-48*zeta^2 + 96)*q^295 + 30*zeta*q^298 + (-8*zeta^2 - 8*zeta + 
16)*q^301 + (-20*zeta^2 + 40)*q^304 - 32*zeta*q^307 + (48*zeta^2 + 48*zeta - 
96)*q^310 + (-50*zeta^2 + 100)*q^313 + 4*zeta*q^316 + (12*zeta^2 + 12*zeta - 
24)*q^319 + (24*zeta^2 - 48)*q^322 + 4*zeta*q^325 + (-24*zeta^2 - 24*zeta + 
48)*q^328 + (4*zeta^2 - 8)*q^331 - 60*zeta*q^334 + (-52*zeta^2 - 52*zeta + 
104)*q^337 + (-18*zeta^2 + 36)*q^340 - 40*zeta*q^343 + (66*zeta^2 + 66*zeta - 
132)*q^346 + (4*zeta^2 - 8)*q^349 + 36*zeta*q^352 + (-36*zeta^2 - 36*zeta + 
72)*q^355 + (72*zeta^2 - 144)*q^358 - 30*zeta*q^361 + (4*zeta^2 + 4*zeta - 
8)*q^364 + (40*zeta^2 - 80)*q^367 + 42*zeta*q^370 + (20*zeta^2 + 20*zeta - 
40)*q^373 + (-24*zeta^2 + 48)*q^376 - 32*zeta*q^379 + (-60*zeta^2 - 60*zeta + 
120)*q^382 + (24*zeta^2 - 48)*q^385 + O(q^387), (-zeta^2 + 2)*q^2 + (-zeta^2 - 
zeta + 2)*q^5 + zeta*q^8 + (2*zeta^2 - 4)*q^11 + (2*zeta^2 + 2*zeta - 4)*q^14 - 
3*zeta*q^17 + (zeta^2 - 2)*q^20 + (2*zeta^2 + 2*zeta - 4)*q^23 + zeta*q^26 + 
(-zeta^2 + 2)*q^29 + (-3*zeta^2 - 3*zeta + 6)*q^32 + 2*zeta*q^35 + (-2*zeta^2 + 
4)*q^38 + (-4*zeta^2 - 4*zeta + 8)*q^41 + 2*zeta*q^44 + (-4*zeta^2 + 8)*q^47 + 
(-2*zeta^2 - 2*zeta + 4)*q^50 + (2*zeta^2 - 4)*q^56 + (8*zeta^2 + 8*zeta - 
16)*q^59 - 8*zeta*q^62 + (-zeta^2 + 2)*q^65 + (3*zeta^2 + 3*zeta - 6)*q^68 + 
6*zeta*q^71 + (7*zeta^2 - 14)*q^74 + (-4*zeta^2 - 4*zeta + 8)*q^77 - 5*zeta*q^80
+ (8*zeta^2 - 16)*q^83 + (2*zeta^2 + 2*zeta - 4)*q^86 + 3*zeta*q^89 + (-2*zeta^2
+ 4)*q^92 + (-2*zeta^2 - 2*zeta + 4)*q^95 + 3*zeta*q^98 + (-4*zeta^2 + 8)*q^101 
+ (zeta^2 + zeta - 2)*q^104 + (-6*zeta^2 + 12)*q^110 + (-zeta^2 - zeta + 
2)*q^113 - zeta*q^116 + (-6*zeta^2 + 12)*q^119 + (-7*zeta^2 - 7*zeta + 14)*q^122
- 7*zeta*q^125 + (-7*zeta^2 + 14)*q^128 + (2*zeta^2 + 2*zeta - 4)*q^131 + 
10*zeta*q^134 + (-zeta^2 + 2)*q^137 + (-2*zeta^2 - 2*zeta + 4)*q^140 - 
2*zeta*q^143 + (7*zeta^2 - 14)*q^146 + (5*zeta^2 + 5*zeta - 10)*q^149 + 
2*zeta*q^152 + (8*zeta^2 - 16)*q^155 + (2*zeta^2 + 2*zeta - 4)*q^158 - 
4*zeta*q^161 + (4*zeta^2 - 8)*q^164 + (-10*zeta^2 - 10*zeta + 20)*q^167 + 
9*zeta*q^170 + (11*zeta^2 - 22)*q^173 + (10*zeta^2 + 10*zeta - 20)*q^176 - 
12*zeta*q^179 + (2*zeta^2 - 4)*q^182 + (7*zeta^2 + 7*zeta - 14)*q^185 - 
4*zeta*q^188 + (-10*zeta^2 + 20)*q^191 + (2*zeta^2 + 2*zeta - 4)*q^194 + 
3*zeta*q^197 + (-2*zeta^2 + 4)*q^200 + (2*zeta^2 + 2*zeta - 4)*q^203 - 
8*zeta*q^206 + (4*zeta^2 - 8)*q^209 + 2*zeta*q^215 + (-11*zeta^2 + 22)*q^218 + 
(-3*zeta^2 - 3*zeta + 6)*q^221 + 6*zeta*q^224 + (2*zeta^2 - 4)*q^227 + 
(-6*zeta^2 - 6*zeta + 12)*q^230 + 15*zeta*q^233 + (-8*zeta^2 + 16)*q^236 + 
(-16*zeta^2 - 16*zeta + 32)*q^239 - zeta*q^242 + (-3*zeta^2 + 6)*q^245 + 
(-8*zeta^2 - 8*zeta + 16)*q^248 - 6*zeta*q^251 + (-2*zeta^2 + 4)*q^254 + 
(5*zeta^2 + 5*zeta - 10)*q^257 - zeta*q^260 + (-4*zeta^2 + 8)*q^263 + (4*zeta^2 
+ 4*zeta - 8)*q^266 + 9*zeta*q^269 + (15*zeta^2 - 30)*q^272 + (4*zeta^2 + 4*zeta
- 8)*q^275 - 8*zeta*q^278 + (-7*zeta^2 + 14)*q^281 + (-6*zeta^2 - 6*zeta + 
12)*q^284 + 8*zeta*q^287 + (3*zeta^2 - 6)*q^290 + (11*zeta^2 + 11*zeta - 
22)*q^293 - 7*zeta*q^296 + (2*zeta^2 - 4)*q^299 + (20*zeta^2 + 20*zeta - 
40)*q^302 - 7*zeta*q^305 + (4*zeta^2 - 8)*q^308 + (-4*zeta^2 - 4*zeta + 8)*q^311
- 17*zeta*q^314 + (5*zeta^2 - 10)*q^317 + (-zeta^2 - zeta + 2)*q^320 - 
6*zeta*q^323 + (16*zeta^2 - 32)*q^326 + (8*zeta^2 + 8*zeta - 16)*q^329 + 
8*zeta*q^332 + (-10*zeta^2 + 20)*q^335 + (-12*zeta^2 - 12*zeta + 24)*q^338 + 
16*zeta*q^341 + (2*zeta^2 - 4)*q^344 + (2*zeta^2 + 2*zeta - 4)*q^347 + 
4*zeta*q^350 + (8*zeta^2 - 16)*q^353 + (-3*zeta^2 - 3*zeta + 6)*q^356 - 
6*zeta*q^359 + (-2*zeta^2 + 4)*q^362 + (7*zeta^2 + 7*zeta - 14)*q^365 + 
10*zeta*q^368 + (-18*zeta^2 - 18*zeta + 36)*q^374 + zeta*q^377 + (2*zeta^2 - 
4)*q^380 + (-10*zeta^2 - 10*zeta + 20)*q^383 + zeta*q^386 + O(q^387), 2*zeta*q^2
+ (-2*zeta^2 + 4)*q^5 + (2*zeta^2 + 2*zeta - 4)*q^8 - 4*zeta*q^11 + (4*zeta^2 - 
8)*q^14 + (-6*zeta^2 - 6*zeta + 12)*q^17 - 2*zeta*q^20 + (4*zeta^2 - 8)*q^23 + 
(2*zeta^2 + 2*zeta - 4)*q^26 + 2*zeta*q^29 + (-6*zeta^2 + 12)*q^32 + (4*zeta^2 +
4*zeta - 8)*q^35 + 4*zeta*q^38 + (-8*zeta^2 + 16)*q^41 + (4*zeta^2 + 4*zeta - 
8)*q^44 + 8*zeta*q^47 + (-4*zeta^2 + 8)*q^50 - 4*zeta*q^56 + (16*zeta^2 - 
32)*q^59 + (-16*zeta^2 - 16*zeta + 32)*q^62 + 2*zeta*q^65 + (6*zeta^2 - 12)*q^68
+ (12*zeta^2 + 12*zeta - 24)*q^71 - 14*zeta*q^74 + (-8*zeta^2 + 16)*q^77 + 
(-10*zeta^2 - 10*zeta + 20)*q^80 - 16*zeta*q^83 + (4*zeta^2 - 8)*q^86 + 
(6*zeta^2 + 6*zeta - 12)*q^89 + 4*zeta*q^92 + (-4*zeta^2 + 8)*q^95 + (6*zeta^2 +
6*zeta - 12)*q^98 + 8*zeta*q^101 + (2*zeta^2 - 4)*q^104 + 12*zeta*q^110 + 
(-2*zeta^2 + 4)*q^113 + (-2*zeta^2 - 2*zeta + 4)*q^116 + 12*zeta*q^119 + 
(-14*zeta^2 + 28)*q^122 + (-14*zeta^2 - 14*zeta + 28)*q^125 + 14*zeta*q^128 + 
(4*zeta^2 - 8)*q^131 + (20*zeta^2 + 20*zeta - 40)*q^134 + 2*zeta*q^137 + 
(-4*zeta^2 + 8)*q^140 + (-4*zeta^2 - 4*zeta + 8)*q^143 - 14*zeta*q^146 + 
(10*zeta^2 - 20)*q^149 + (4*zeta^2 + 4*zeta - 8)*q^152 - 16*zeta*q^155 + 
(4*zeta^2 - 8)*q^158 + (-8*zeta^2 - 8*zeta + 16)*q^161 - 8*zeta*q^164 + 
(-20*zeta^2 + 40)*q^167 + (18*zeta^2 + 18*zeta - 36)*q^170 - 22*zeta*q^173 + 
(20*zeta^2 - 40)*q^176 + (-24*zeta^2 - 24*zeta + 48)*q^179 - 4*zeta*q^182 + 
(14*zeta^2 - 28)*q^185 + (-8*zeta^2 - 8*zeta + 16)*q^188 + 20*zeta*q^191 + 
(4*zeta^2 - 8)*q^194 + (6*zeta^2 + 6*zeta - 12)*q^197 + 4*zeta*q^200 + (4*zeta^2
- 8)*q^203 + (-16*zeta^2 - 16*zeta + 32)*q^206 - 8*zeta*q^209 + (4*zeta^2 + 
4*zeta - 8)*q^215 + 22*zeta*q^218 + (-6*zeta^2 + 12)*q^221 + (12*zeta^2 + 
12*zeta - 24)*q^224 - 4*zeta*q^227 + (-12*zeta^2 + 24)*q^230 + (30*zeta^2 + 
30*zeta - 60)*q^233 + 16*zeta*q^236 + (-32*zeta^2 + 64)*q^239 + (-2*zeta^2 - 
2*zeta + 4)*q^242 + 6*zeta*q^245 + (-16*zeta^2 + 32)*q^248 + (-12*zeta^2 - 
12*zeta + 24)*q^251 + 4*zeta*q^254 + (10*zeta^2 - 20)*q^257 + (-2*zeta^2 - 
2*zeta + 4)*q^260 + 8*zeta*q^263 + (8*zeta^2 - 16)*q^266 + (18*zeta^2 + 18*zeta 
- 36)*q^269 - 30*zeta*q^272 + (8*zeta^2 - 16)*q^275 + (-16*zeta^2 - 16*zeta + 
32)*q^278 + 14*zeta*q^281 + (-12*zeta^2 + 24)*q^284 + (16*zeta^2 + 16*zeta - 
32)*q^287 - 6*zeta*q^290 + (22*zeta^2 - 44)*q^293 + (-14*zeta^2 - 14*zeta + 
28)*q^296 - 4*zeta*q^299 + (40*zeta^2 - 80)*q^302 + (-14*zeta^2 - 14*zeta + 
28)*q^305 - 8*zeta*q^308 + (-8*zeta^2 + 16)*q^311 + (-34*zeta^2 - 34*zeta + 
68)*q^314 - 10*zeta*q^317 + (-2*zeta^2 + 4)*q^320 + (-12*zeta^2 - 12*zeta + 
24)*q^323 - 32*zeta*q^326 + (16*zeta^2 - 32)*q^329 + (16*zeta^2 + 16*zeta - 
32)*q^332 + 20*zeta*q^335 + (-24*zeta^2 + 48)*q^338 + (32*zeta^2 + 32*zeta - 
64)*q^341 - 4*zeta*q^344 + (4*zeta^2 - 8)*q^347 + (8*zeta^2 + 8*zeta - 16)*q^350
- 16*zeta*q^353 + (-6*zeta^2 + 12)*q^356 + (-12*zeta^2 - 12*zeta + 24)*q^359 + 
4*zeta*q^362 + (14*zeta^2 - 28)*q^365 + (20*zeta^2 + 20*zeta - 40)*q^368 + 
(-36*zeta^2 + 72)*q^374 + (2*zeta^2 + 2*zeta - 4)*q^377 - 4*zeta*q^380 + 
(-20*zeta^2 + 40)*q^383 + (2*zeta^2 + 2*zeta - 4)*q^386 + O(q^387)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 3);
              X_9A4 := Curve(P_Q, [ PolynomialRing(RationalField(), 4) |
x[1]*x[4] - x[2]*x[3],
x[1]^3 - 3*x[1]^2*x[2] + 3/4*x[1]*x[2]^2 + 1/8*x[2]^3 + 9*x[3]^3 - 
27/2*x[3]^2*x[4] + 9/8*x[4]^3
]);
