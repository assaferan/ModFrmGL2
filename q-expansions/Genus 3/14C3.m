
    /****************************************************
    Loading this file in magma loads the objects fs_14C3 
    and X_14C3. fs_14C3 is a list of power series which form 
    a basis for the space of cusp forms. X_14C3 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | 1, -2, -1, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_14C3 := [Kq | (2*zeta^2 + zeta + 1)*q + (zeta^2 - 3*zeta + 
4)*q^3 + (-9*zeta^2 + 6*zeta + 27)*q^5 + (-21*zeta^2 + 35)*q^7 + (6*zeta^2 - 
4*zeta - 18)*q^9 + (-3*zeta^2 + 9*zeta - 12)*q^11 + (4*zeta^2 + 2*zeta + 2)*q^13
+ (6*zeta^2 + 3*zeta + 3)*q^15 + (3*zeta^2 - 9*zeta + 12)*q^17 + (3*zeta^2 - 
2*zeta - 9)*q^19 + (21*zeta - 7)*q^21 + (-9*zeta^2 + 6*zeta + 27)*q^23 + 
(4*zeta^2 - 12*zeta + 16)*q^25 + (-10*zeta^2 - 5*zeta - 5)*q^27 + (-12*zeta^2 - 
6*zeta - 6)*q^29 + (-7*zeta^2 + 21*zeta - 28)*q^31 + (9*zeta^2 - 6*zeta - 
27)*q^33 + (63*zeta^2 - 63*zeta - 84)*q^35 + (3*zeta^2 - 2*zeta - 9)*q^37 + 
(2*zeta^2 - 6*zeta + 8)*q^39 + (12*zeta^2 + 6*zeta + 6)*q^41 + (-8*zeta^2 - 
4*zeta - 4)*q^43 + (-6*zeta^2 + 18*zeta - 24)*q^45 + (27*zeta^2 - 18*zeta - 
81)*q^47 + (21*zeta^2 + 42*zeta - 49)*q^49 + (-9*zeta^2 + 6*zeta + 27)*q^51 + 
(3*zeta^2 - 9*zeta + 12)*q^53 + (-18*zeta^2 - 9*zeta - 9)*q^55 + (-2*zeta^2 - 
zeta - 1)*q^57 + (9*zeta^2 - 27*zeta + 36)*q^59 + (3*zeta^2 - 2*zeta - 9)*q^61 +
(-42*zeta^2 + 42*zeta + 56)*q^63 + (-18*zeta^2 + 12*zeta + 54)*q^65 + (-7*zeta^2
+ 21*zeta - 28)*q^67 + (6*zeta^2 + 3*zeta + 3)*q^69 + (-zeta^2 + 3*zeta - 
4)*q^73 + (-12*zeta^2 + 8*zeta + 36)*q^75 + (-63*zeta + 21)*q^77 + (39*zeta^2 - 
26*zeta - 117)*q^79 + (zeta^2 - 3*zeta + 4)*q^81 + (24*zeta^2 + 12*zeta + 
12)*q^83 + (18*zeta^2 + 9*zeta + 9)*q^85 + (-6*zeta^2 + 18*zeta - 24)*q^87 + 
(-45*zeta^2 + 30*zeta + 135)*q^89 + (-42*zeta^2 + 70)*q^91 + (21*zeta^2 - 
14*zeta - 63)*q^93 + (-3*zeta^2 + 9*zeta - 12)*q^95 + (-20*zeta^2 - 10*zeta - 
10)*q^97 + (12*zeta^2 + 6*zeta + 6)*q^99 + (15*zeta^2 - 45*zeta + 60)*q^101 + 
(-33*zeta^2 + 22*zeta + 99)*q^103 + (-63*zeta^2 + 105)*q^105 + (-45*zeta^2 + 
30*zeta + 135)*q^107 + (-zeta^2 + 3*zeta - 4)*q^109 + (-2*zeta^2 - zeta - 
1)*q^111 + (12*zeta^2 + 6*zeta + 6)*q^113 + (9*zeta^2 - 27*zeta + 36)*q^115 + 
(12*zeta^2 - 8*zeta - 36)*q^117 + (63*zeta - 21)*q^119 + (6*zeta^2 - 4*zeta - 
18)*q^121 + (6*zeta^2 - 18*zeta + 24)*q^123 + (-6*zeta^2 - 3*zeta - 3)*q^125 + 
(16*zeta^2 + 8*zeta + 8)*q^127 + (-4*zeta^2 + 12*zeta - 16)*q^129 + (-9*zeta^2 +
6*zeta + 27)*q^131 + (-21*zeta^2 + 21*zeta + 28)*q^133 + (45*zeta^2 - 30*zeta - 
135)*q^135 + (-21*zeta^2 + 63*zeta - 84)*q^137 + (40*zeta^2 + 20*zeta + 
20)*q^139 + (-18*zeta^2 - 9*zeta - 9)*q^141 + (-6*zeta^2 + 18*zeta - 24)*q^143 +
(54*zeta^2 - 36*zeta - 162)*q^145 + (42*zeta^2 - 63*zeta - 49)*q^147 + 
(-9*zeta^2 + 6*zeta + 27)*q^149 + (17*zeta^2 - 51*zeta + 68)*q^151 + (-12*zeta^2
- 6*zeta - 6)*q^153 + (-42*zeta^2 - 21*zeta - 21)*q^155 + (-13*zeta^2 + 39*zeta 
- 52)*q^157 + (-9*zeta^2 + 6*zeta + 27)*q^159 + (63*zeta^2 - 63*zeta - 84)*q^161
+ (-33*zeta^2 + 22*zeta + 99)*q^163 + (-9*zeta^2 + 27*zeta - 36)*q^165 + 
(-24*zeta^2 - 12*zeta - 12)*q^167 + (-18*zeta^2 - 9*zeta - 9)*q^169 + (2*zeta^2 
- 6*zeta + 8)*q^171 + (27*zeta^2 - 18*zeta - 81)*q^173 + (84*zeta - 28)*q^175 + 
(-27*zeta^2 + 18*zeta + 81)*q^177 + (21*zeta^2 - 63*zeta + 84)*q^179 + 
(-20*zeta^2 - 10*zeta - 10)*q^181 + (-2*zeta^2 - zeta - 1)*q^183 + (-3*zeta^2 + 
9*zeta - 12)*q^185 + (27*zeta^2 - 18*zeta - 81)*q^187 + (105*zeta^2 - 175)*q^189
+ (27*zeta^2 - 18*zeta - 81)*q^191 + (11*zeta^2 - 33*zeta + 44)*q^193 + 
(12*zeta^2 + 6*zeta + 6)*q^195 + (36*zeta^2 + 18*zeta + 18)*q^197 + (-7*zeta^2 +
21*zeta - 28)*q^199 + (21*zeta^2 - 14*zeta - 63)*q^201 + (126*zeta^2 - 
210)*q^203 + (-54*zeta^2 + 36*zeta + 162)*q^205 + (-6*zeta^2 + 18*zeta - 
24)*q^207 + (6*zeta^2 + 3*zeta + 3)*q^209 + (-8*zeta^2 - 4*zeta - 4)*q^211 + 
(36*zeta^2 - 24*zeta - 108)*q^215 + (-147*zeta + 49)*q^217 + (3*zeta^2 - 2*zeta 
- 9)*q^219 + (6*zeta^2 - 18*zeta + 24)*q^221 + (16*zeta^2 + 8*zeta + 8)*q^223 + 
(-16*zeta^2 - 8*zeta - 8)*q^225 + (-3*zeta^2 + 9*zeta - 12)*q^227 + (-33*zeta^2 
+ 22*zeta + 99)*q^229 + (-63*zeta^2 + 63*zeta + 84)*q^231 + (63*zeta^2 - 42*zeta
- 189)*q^233 + (-27*zeta^2 + 81*zeta - 108)*q^235 + (-26*zeta^2 - 13*zeta - 
13)*q^237 + (-24*zeta^2 - 12*zeta - 12)*q^239 + (-zeta^2 + 3*zeta - 4)*q^241 + 
(-48*zeta^2 + 32*zeta + 144)*q^243 + (-189*zeta^2 + 63*zeta + 294)*q^245 + 
(6*zeta^2 - 4*zeta - 18)*q^247 + (12*zeta^2 - 36*zeta + 48)*q^249 + (-18*zeta^2 
- 9*zeta - 9)*q^253 + (9*zeta^2 - 27*zeta + 36)*q^255 + (-9*zeta^2 + 6*zeta + 
27)*q^257 + (-21*zeta^2 + 21*zeta + 28)*q^259 + (-36*zeta^2 + 24*zeta + 
108)*q^261 + (-3*zeta^2 + 9*zeta - 12)*q^263 + (18*zeta^2 + 9*zeta + 9)*q^265 + 
(30*zeta^2 + 15*zeta + 15)*q^267 + (3*zeta^2 - 9*zeta + 12)*q^269 + (-33*zeta^2 
+ 22*zeta + 99)*q^271 + (42*zeta - 14)*q^273 + (36*zeta^2 - 24*zeta - 108)*q^275
+ (-13*zeta^2 + 39*zeta - 52)*q^277 + (28*zeta^2 + 14*zeta + 14)*q^279 + 
(60*zeta^2 + 30*zeta + 30)*q^281 + (29*zeta^2 - 87*zeta + 116)*q^283 + (9*zeta^2
- 6*zeta - 27)*q^285 + (-126*zeta^2 + 210)*q^287 + (24*zeta^2 - 16*zeta - 
72)*q^289 + (-10*zeta^2 + 30*zeta - 40)*q^291 + (12*zeta^2 + 6*zeta + 6)*q^293 +
(54*zeta^2 + 27*zeta + 27)*q^295 + (15*zeta^2 - 45*zeta + 60)*q^297 + 
(-18*zeta^2 + 12*zeta + 54)*q^299 + (84*zeta^2 - 140)*q^301 + (-45*zeta^2 + 
30*zeta + 135)*q^303 + (-3*zeta^2 + 9*zeta - 12)*q^305 + (-56*zeta^2 - 28*zeta -
28)*q^307 + (22*zeta^2 + 11*zeta + 11)*q^309 + (-27*zeta^2 + 81*zeta - 
108)*q^311 + (-69*zeta^2 + 46*zeta + 207)*q^313 + (-126*zeta + 42)*q^315 + 
(27*zeta^2 - 18*zeta - 81)*q^317 + (18*zeta^2 - 54*zeta + 72)*q^319 + (30*zeta^2
+ 15*zeta + 15)*q^321 + (-6*zeta^2 - 3*zeta - 3)*q^323 + (8*zeta^2 - 24*zeta + 
32)*q^325 + (3*zeta^2 - 2*zeta - 9)*q^327 + (-189*zeta^2 + 189*zeta + 252)*q^329
+ (39*zeta^2 - 26*zeta - 117)*q^331 + (2*zeta^2 - 6*zeta + 8)*q^333 + 
(-42*zeta^2 - 21*zeta - 21)*q^335 + (-68*zeta^2 - 34*zeta - 34)*q^337 + 
(6*zeta^2 - 18*zeta + 24)*q^339 + (-63*zeta^2 + 42*zeta + 189)*q^341 + 
(63*zeta^2 - 168*zeta - 49)*q^343 + (-27*zeta^2 + 18*zeta + 81)*q^345 + 
(9*zeta^2 - 27*zeta + 36)*q^347 + (52*zeta^2 + 26*zeta + 26)*q^349 + (-20*zeta^2
- 10*zeta - 10)*q^351 + (-21*zeta^2 + 63*zeta - 84)*q^353 + (63*zeta^2 - 63*zeta
- 84)*q^357 + (-45*zeta^2 + 30*zeta + 135)*q^359 + (-18*zeta^2 + 54*zeta - 
72)*q^361 + (-4*zeta^2 - 2*zeta - 2)*q^363 + (-6*zeta^2 - 3*zeta - 3)*q^365 + 
(5*zeta^2 - 15*zeta + 20)*q^367 + (36*zeta^2 - 24*zeta - 108)*q^369 + (63*zeta -
21)*q^371 + (75*zeta^2 - 50*zeta - 225)*q^373 + (-3*zeta^2 + 9*zeta - 12)*q^375 
+ (-24*zeta^2 - 12*zeta - 12)*q^377 + (16*zeta^2 + 8*zeta + 8)*q^379 + (8*zeta^2
- 24*zeta + 32)*q^381 + (99*zeta^2 - 66*zeta - 297)*q^383 + (189*zeta^2 - 
315)*q^385 + (-24*zeta^2 + 16*zeta + 72)*q^387 + (15*zeta^2 - 45*zeta + 
60)*q^389 + (18*zeta^2 + 9*zeta + 9)*q^391 + (6*zeta^2 + 3*zeta + 3)*q^393 + 
(-39*zeta^2 + 117*zeta - 156)*q^395 + (111*zeta^2 - 74*zeta - 333)*q^397 + 
(21*zeta^2 - 35)*q^399 + (-9*zeta^2 + 6*zeta + 27)*q^401 + (-14*zeta^2 + 42*zeta
- 56)*q^403 + (6*zeta^2 + 3*zeta + 3)*q^405 + (6*zeta^2 + 3*zeta + 3)*q^407 + 
(11*zeta^2 - 33*zeta + 44)*q^409 + (63*zeta^2 - 42*zeta - 189)*q^411 + (189*zeta
- 63)*q^413 + (-108*zeta^2 + 72*zeta + 324)*q^415 + (20*zeta^2 - 60*zeta + 
80)*q^417 + (-24*zeta^2 - 12*zeta - 12)*q^419 + (-44*zeta^2 - 22*zeta - 
22)*q^421 + (18*zeta^2 - 54*zeta + 72)*q^423 + (-36*zeta^2 + 24*zeta + 
108)*q^425 + (-21*zeta^2 + 21*zeta + 28)*q^427 + (18*zeta^2 - 12*zeta - 
54)*q^429 + (-15*zeta^2 + 45*zeta - 60)*q^431 + (-20*zeta^2 - 10*zeta - 
10)*q^433 + (-36*zeta^2 - 18*zeta - 18)*q^435 + (-3*zeta^2 + 9*zeta - 12)*q^437 
+ (3*zeta^2 - 2*zeta - 9)*q^439 + (126*zeta^2 - 42*zeta - 196)*q^441 + 
(27*zeta^2 - 18*zeta - 81)*q^443 + (45*zeta^2 - 135*zeta + 180)*q^445 + 
(6*zeta^2 + 3*zeta + 3)*q^447 + (-36*zeta^2 - 18*zeta - 18)*q^449 + (-18*zeta^2 
+ 54*zeta - 72)*q^451 + (-51*zeta^2 + 34*zeta + 153)*q^453 + (126*zeta^2 - 
126*zeta - 168)*q^455 + (-69*zeta^2 + 46*zeta + 207)*q^457 + (-15*zeta^2 + 
45*zeta - 60)*q^459 + (-12*zeta^2 - 6*zeta - 6)*q^461 + (-32*zeta^2 - 16*zeta - 
16)*q^463 + (-21*zeta^2 + 63*zeta - 84)*q^465 + (63*zeta^2 - 42*zeta - 
189)*q^467 + (-147*zeta + 49)*q^469 + (39*zeta^2 - 26*zeta - 117)*q^471 + 
(12*zeta^2 - 36*zeta + 48)*q^473 + (-8*zeta^2 - 4*zeta - 4)*q^475 + O(q^476), 
1/3*(-zeta^2 + 3)*q + 2/3*zeta^2*q^3 + 1/3*(zeta - 2)*q^5 + 1/3*(5*zeta^2 - 
5*zeta)*q^9 + 1/3*(4*zeta + 4)*q^11 + (zeta^2 - zeta - 3)*q^13 + 1/3*(4*zeta^2 -
12)*q^15 - 1/3*zeta^2*q^17 + 1/3*(2*zeta - 4)*q^19 + 1/3*(-4*zeta^2 + 
4*zeta)*q^23 + (-zeta - 1)*q^25 + 1/3*(-4*zeta^2 + 4*zeta + 12)*q^27 + 
1/3*(-8*zeta^2 + 24)*q^29 + 1/3*(-8*zeta + 16)*q^33 + 1/3*(-8*zeta^2 + 
8*zeta)*q^37 + (-4*zeta - 4)*q^39 + 1/3*(-5*zeta^2 + 5*zeta + 15)*q^41 + 
1/3*(4*zeta^2 - 12)*q^43 - 5/3*zeta^2*q^45 + 1/3*(4*zeta - 8)*q^47 + 
1/3*(-4*zeta^2 + 4*zeta)*q^51 + 1/3*(10*zeta + 10)*q^53 + 1/3*(4*zeta^2 - 4*zeta
- 12)*q^55 + 1/3*(8*zeta^2 - 24)*q^57 - 10/3*zeta^2*q^59 + 1/3*(-5*zeta + 
10)*q^61 + (2*zeta^2 - 2*zeta)*q^65 + 1/3*(8*zeta^2 - 8*zeta - 24)*q^69 + 
5/3*zeta^2*q^73 + (2*zeta - 4)*q^75 + 1/3*(8*zeta^2 - 8*zeta)*q^79 + 1/3*(zeta +
1)*q^81 + 1/3*(-10*zeta^2 + 10*zeta + 30)*q^83 + 1/3*(-2*zeta^2 + 6)*q^85 + 
16/3*zeta^2*q^87 + 1/3*(5*zeta - 10)*q^89 + 1/3*(4*zeta + 4)*q^95 + 1/3*(-zeta^2
+ zeta + 3)*q^97 + 1/3*(-20*zeta^2 + 60)*q^99 + 3*zeta^2*q^101 + 1/3*(-8*zeta + 
16)*q^103 + 1/3*(8*zeta^2 - 8*zeta)*q^107 + 1/3*(-8*zeta - 8)*q^109 + 
1/3*(16*zeta^2 - 16*zeta - 48)*q^111 + (-2*zeta^2 + 6)*q^113 + 4/3*zeta^2*q^115 
+ (5*zeta - 10)*q^117 + 1/3*(5*zeta^2 - 5*zeta)*q^121 + 1/3*(20*zeta + 20)*q^123
+ 1/3*(-8*zeta^2 + 8*zeta + 24)*q^125 + 1/3*(20*zeta^2 - 60)*q^127 - 
8/3*zeta^2*q^129 + (-2*zeta + 4)*q^131 + 1/3*(-8*zeta^2 + 8*zeta)*q^135 + 
1/3*(2*zeta^2 - 2*zeta - 6)*q^139 + 1/3*(16*zeta^2 - 48)*q^141 - 4*zeta^2*q^143 
+ 1/3*(8*zeta - 16)*q^145 + 1/3*(10*zeta^2 - 10*zeta)*q^149 + 1/3*(-4*zeta - 
4)*q^151 + 1/3*(5*zeta^2 - 5*zeta - 15)*q^153 - 5/3*zeta^2*q^157 + 1/3*(-20*zeta
+ 40)*q^159 + 1/3*(4*zeta^2 - 4*zeta)*q^163 + 1/3*(-16*zeta - 16)*q^165 + 
1/3*(-4*zeta^2 + 4*zeta + 12)*q^167 + 1/3*(-5*zeta^2 + 15)*q^169 - 
10/3*zeta^2*q^171 + (-zeta + 2)*q^173 + 1/3*(-40*zeta^2 + 40*zeta)*q^177 + 
(-5*zeta^2 + 5*zeta + 15)*q^181 + 1/3*(-20*zeta^2 + 60)*q^183 + 8/3*zeta^2*q^185
+ 1/3*(4*zeta - 8)*q^187 + 1/3*(-16*zeta^2 + 16*zeta)*q^191 + 1/3*(-10*zeta - 
10)*q^193 + (-4*zeta^2 + 4*zeta + 12)*q^195 + 1/3*(10*zeta^2 - 30)*q^197 + 
1/3*(-10*zeta^2 + 10*zeta)*q^205 + 1/3*(-20*zeta - 20)*q^207 + 1/3*(8*zeta^2 - 
8*zeta - 24)*q^209 + (-8*zeta^2 + 24)*q^211 + 1/3*(-4*zeta + 8)*q^215 + 
1/3*(20*zeta^2 - 20*zeta)*q^219 + (2*zeta + 2)*q^221 + (4*zeta^2 - 4*zeta - 
12)*q^223 + (5*zeta^2 - 15)*q^225 - 2*zeta^2*q^227 + (-5*zeta + 10)*q^229 + 
1/3*(8*zeta + 8)*q^235 + 1/3*(-16*zeta^2 + 16*zeta + 48)*q^237 + (4*zeta^2 - 
12)*q^239 - 3*zeta^2*q^241 + 1/3*(10*zeta - 20)*q^243 + (4*zeta^2 - 
4*zeta)*q^247 + 1/3*(40*zeta + 40)*q^249 + 1/3*(14*zeta^2 - 14*zeta - 42)*q^251 
+ 1/3*(16*zeta^2 - 48)*q^253 + 4/3*zeta^2*q^255 + (5*zeta - 10)*q^257 + 
1/3*(40*zeta^2 - 40*zeta)*q^261 + (-8*zeta - 8)*q^263 + 1/3*(10*zeta^2 - 10*zeta
- 30)*q^265 + 1/3*(20*zeta^2 - 60)*q^267 + 13/3*zeta^2*q^269 + 1/3*(20*zeta - 
40)*q^271 + (-4*zeta^2 + 4*zeta)*q^275 + 1/3*(22*zeta + 22)*q^277 + 
1/3*(-16*zeta^2 + 48)*q^281 + 2/3*zeta^2*q^283 + 1/3*(-8*zeta + 16)*q^285 + 
(-5*zeta^2 + 5*zeta)*q^289 + 1/3*(4*zeta + 4)*q^291 + 1/3*(23*zeta^2 - 23*zeta -
69)*q^293 + 1/3*(-20*zeta^2 + 60)*q^295 + 16/3*zeta^2*q^297 + (-4*zeta + 
8)*q^299 + (12*zeta^2 - 12*zeta)*q^303 + 1/3*(-10*zeta - 10)*q^305 + 
1/3*(-14*zeta^2 + 14*zeta + 42)*q^307 + 1/3*(-32*zeta^2 + 96)*q^309 + 
16/3*zeta^2*q^311 + (zeta - 2)*q^313 + 1/3*(-2*zeta^2 + 2*zeta)*q^317 + 
1/3*(32*zeta + 32)*q^319 + 1/3*(-16*zeta^2 + 16*zeta + 48)*q^321 + 
1/3*(-4*zeta^2 + 12)*q^323 + 3*zeta^2*q^325 + 1/3*(16*zeta - 32)*q^327 + 
1/3*(-20*zeta^2 + 20*zeta)*q^331 + 1/3*(-40*zeta - 40)*q^333 + 1/3*(-8*zeta^2 + 
24)*q^337 + 4*zeta^2*q^339 + 1/3*(16*zeta^2 - 16*zeta)*q^345 + (-4*zeta - 
4)*q^347 + (-zeta^2 + zeta + 3)*q^349 + (8*zeta^2 - 24)*q^351 - 7/3*zeta^2*q^353
+ 1/3*(-20*zeta^2 + 20*zeta)*q^359 + 1/3*(-11*zeta - 11)*q^361 + 1/3*(-10*zeta^2
+ 10*zeta + 30)*q^363 + 1/3*(10*zeta^2 - 30)*q^365 - 4/3*zeta^2*q^367 + 
1/3*(-25*zeta + 50)*q^369 + 1/3*(10*zeta^2 - 10*zeta)*q^373 + 1/3*(32*zeta + 
32)*q^375 + (8*zeta^2 - 8*zeta - 24)*q^377 + 1/3*(20*zeta^2 - 60)*q^379 - 
40/3*zeta^2*q^381 + 1/3*(-4*zeta + 8)*q^383 + 1/3*(-20*zeta^2 + 20*zeta)*q^387 +
1/3*(8*zeta + 8)*q^389 + 1/3*(-4*zeta^2 + 4*zeta + 12)*q^391 + (-8*zeta^2 + 
24)*q^393 - 8/3*zeta^2*q^395 + 1/3*(11*zeta - 22)*q^397 + (8*zeta^2 - 
8*zeta)*q^401 + 1/3*(zeta^2 - zeta - 3)*q^405 + 1/3*(32*zeta^2 - 96)*q^407 - 
9*zeta^2*q^409 + 1/3*(-20*zeta^2 + 20*zeta)*q^415 + 1/3*(-8*zeta - 8)*q^417 + 
1/3*(10*zeta^2 - 10*zeta - 30)*q^419 + (-2*zeta^2 + 6)*q^421 - 20/3*zeta^2*q^423
+ (-zeta + 2)*q^425 + (-16*zeta^2 + 16*zeta)*q^429 + (-12*zeta - 12)*q^431 + 
(-5*zeta^2 + 5*zeta + 15)*q^433 + 1/3*(32*zeta^2 - 96)*q^435 + 8/3*zeta^2*q^437 
+ (-4*zeta + 8)*q^439 + 1/3*(-16*zeta^2 + 16*zeta)*q^443 + 1/3*(10*zeta + 
10)*q^445 + 1/3*(-20*zeta^2 + 20*zeta + 60)*q^447 + (6*zeta^2 - 18)*q^449 + 
20/3*zeta^2*q^451 + 1/3*(8*zeta - 16)*q^453 + (10*zeta^2 - 10*zeta)*q^457 + 
1/3*(-8*zeta - 8)*q^459 + 1/3*(5*zeta^2 - 5*zeta - 15)*q^461 + 1/3*(-40*zeta^2 +
120)*q^463 + 1/3*(-14*zeta + 28)*q^467 + 1/3*(-20*zeta^2 + 20*zeta)*q^471 + 
1/3*(-16*zeta - 16)*q^473 + (-2*zeta^2 + 2*zeta + 6)*q^475 + O(q^476), zeta*q + 
(-2*zeta^2 + 4*zeta + 4)*q^3 + (-2*zeta^2 + zeta + 2)*q^5 + (-5*zeta^2 + 10)*q^9
+ (4*zeta^2 - 4*zeta - 4)*q^11 + (3*zeta^2 + 3*zeta - 9)*q^13 - 4*zeta*q^15 + 
(zeta^2 - 2*zeta - 2)*q^17 + (-4*zeta^2 + 2*zeta + 4)*q^19 + (4*zeta^2 - 8)*q^23
+ (-3*zeta^2 + 3*zeta + 3)*q^25 + (-4*zeta^2 - 4*zeta + 12)*q^27 + 8*zeta*q^29 +
(16*zeta^2 - 8*zeta - 16)*q^33 + (8*zeta^2 - 16)*q^37 + (-12*zeta^2 + 12*zeta + 
12)*q^39 + (-5*zeta^2 - 5*zeta + 15)*q^41 - 4*zeta*q^43 + (5*zeta^2 - 10*zeta - 
10)*q^45 + (-8*zeta^2 + 4*zeta + 8)*q^47 + (4*zeta^2 - 8)*q^51 + (10*zeta^2 - 
10*zeta - 10)*q^53 + (4*zeta^2 + 4*zeta - 12)*q^55 - 8*zeta*q^57 + (10*zeta^2 - 
20*zeta - 20)*q^59 + (10*zeta^2 - 5*zeta - 10)*q^61 + (-6*zeta^2 + 12)*q^65 + 
(8*zeta^2 + 8*zeta - 24)*q^69 + (-5*zeta^2 + 10*zeta + 10)*q^73 + (-12*zeta^2 + 
6*zeta + 12)*q^75 + (-8*zeta^2 + 16)*q^79 + (zeta^2 - zeta - 1)*q^81 + 
(-10*zeta^2 - 10*zeta + 30)*q^83 + 2*zeta*q^85 + (-16*zeta^2 + 32*zeta + 
32)*q^87 + (-10*zeta^2 + 5*zeta + 10)*q^89 + (4*zeta^2 - 4*zeta - 4)*q^95 + 
(-zeta^2 - zeta + 3)*q^97 + 20*zeta*q^99 + (-9*zeta^2 + 18*zeta + 18)*q^101 + 
(16*zeta^2 - 8*zeta - 16)*q^103 + (-8*zeta^2 + 16)*q^107 + (-8*zeta^2 + 8*zeta +
8)*q^109 + (16*zeta^2 + 16*zeta - 48)*q^111 + 6*zeta*q^113 + (-4*zeta^2 + 8*zeta
+ 8)*q^115 + (-30*zeta^2 + 15*zeta + 30)*q^117 + (-5*zeta^2 + 10)*q^121 + 
(20*zeta^2 - 20*zeta - 20)*q^123 + (-8*zeta^2 - 8*zeta + 24)*q^125 - 
20*zeta*q^127 + (8*zeta^2 - 16*zeta - 16)*q^129 + (12*zeta^2 - 6*zeta - 
12)*q^131 + (8*zeta^2 - 16)*q^135 + (2*zeta^2 + 2*zeta - 6)*q^139 - 
16*zeta*q^141 + (12*zeta^2 - 24*zeta - 24)*q^143 + (-16*zeta^2 + 8*zeta + 
16)*q^145 + (-10*zeta^2 + 20)*q^149 + (-4*zeta^2 + 4*zeta + 4)*q^151 + (5*zeta^2
+ 5*zeta - 15)*q^153 + (5*zeta^2 - 10*zeta - 10)*q^157 + (40*zeta^2 - 20*zeta - 
40)*q^159 + (-4*zeta^2 + 8)*q^163 + (-16*zeta^2 + 16*zeta + 16)*q^165 + 
(-4*zeta^2 - 4*zeta + 12)*q^167 + 5*zeta*q^169 + (10*zeta^2 - 20*zeta - 
20)*q^171 + (6*zeta^2 - 3*zeta - 6)*q^173 + (40*zeta^2 - 80)*q^177 + (-15*zeta^2
- 15*zeta + 45)*q^181 + 20*zeta*q^183 + (-8*zeta^2 + 16*zeta + 16)*q^185 + 
(-8*zeta^2 + 4*zeta + 8)*q^187 + (16*zeta^2 - 32)*q^191 + (-10*zeta^2 + 10*zeta 
+ 10)*q^193 + (-12*zeta^2 - 12*zeta + 36)*q^195 - 10*zeta*q^197 + (10*zeta^2 - 
20)*q^205 + (-20*zeta^2 + 20*zeta + 20)*q^207 + (8*zeta^2 + 8*zeta - 24)*q^209 +
24*zeta*q^211 + (8*zeta^2 - 4*zeta - 8)*q^215 + (-20*zeta^2 + 40)*q^219 + 
(6*zeta^2 - 6*zeta - 6)*q^221 + (12*zeta^2 + 12*zeta - 36)*q^223 - 15*zeta*q^225
+ (6*zeta^2 - 12*zeta - 12)*q^227 + (30*zeta^2 - 15*zeta - 30)*q^229 + (8*zeta^2
- 8*zeta - 8)*q^235 + (-16*zeta^2 - 16*zeta + 48)*q^237 - 12*zeta*q^239 + 
(9*zeta^2 - 18*zeta - 18)*q^241 + (-20*zeta^2 + 10*zeta + 20)*q^243 + 
(-12*zeta^2 + 24)*q^247 + (40*zeta^2 - 40*zeta - 40)*q^249 + (14*zeta^2 + 
14*zeta - 42)*q^251 - 16*zeta*q^253 + (-4*zeta^2 + 8*zeta + 8)*q^255 + 
(-30*zeta^2 + 15*zeta + 30)*q^257 + (-40*zeta^2 + 80)*q^261 + (-24*zeta^2 + 
24*zeta + 24)*q^263 + (10*zeta^2 + 10*zeta - 30)*q^265 - 20*zeta*q^267 + 
(-13*zeta^2 + 26*zeta + 26)*q^269 + (-40*zeta^2 + 20*zeta + 40)*q^271 + 
(12*zeta^2 - 24)*q^275 + (22*zeta^2 - 22*zeta - 22)*q^277 + 16*zeta*q^281 + 
(-2*zeta^2 + 4*zeta + 4)*q^283 + (16*zeta^2 - 8*zeta - 16)*q^285 + (15*zeta^2 - 
30)*q^289 + (4*zeta^2 - 4*zeta - 4)*q^291 + (23*zeta^2 + 23*zeta - 69)*q^293 + 
20*zeta*q^295 + (-16*zeta^2 + 32*zeta + 32)*q^297 + (24*zeta^2 - 12*zeta - 
24)*q^299 + (-36*zeta^2 + 72)*q^303 + (-10*zeta^2 + 10*zeta + 10)*q^305 + 
(-14*zeta^2 - 14*zeta + 42)*q^307 + 32*zeta*q^309 + (-16*zeta^2 + 32*zeta + 
32)*q^311 + (-6*zeta^2 + 3*zeta + 6)*q^313 + (2*zeta^2 - 4)*q^317 + (32*zeta^2 -
32*zeta - 32)*q^319 + (-16*zeta^2 - 16*zeta + 48)*q^321 + 4*zeta*q^323 + 
(-9*zeta^2 + 18*zeta + 18)*q^325 + (-32*zeta^2 + 16*zeta + 32)*q^327 + 
(20*zeta^2 - 40)*q^331 + (-40*zeta^2 + 40*zeta + 40)*q^333 + 8*zeta*q^337 + 
(-12*zeta^2 + 24*zeta + 24)*q^339 + (-16*zeta^2 + 32)*q^345 + (-12*zeta^2 + 
12*zeta + 12)*q^347 + (-3*zeta^2 - 3*zeta + 9)*q^349 - 24*zeta*q^351 + (7*zeta^2
- 14*zeta - 14)*q^353 + (20*zeta^2 - 40)*q^359 + (-11*zeta^2 + 11*zeta + 
11)*q^361 + (-10*zeta^2 - 10*zeta + 30)*q^363 - 10*zeta*q^365 + (4*zeta^2 - 
8*zeta - 8)*q^367 + (50*zeta^2 - 25*zeta - 50)*q^369 + (-10*zeta^2 + 20)*q^373 +
(32*zeta^2 - 32*zeta - 32)*q^375 + (24*zeta^2 + 24*zeta - 72)*q^377 - 
20*zeta*q^379 + (40*zeta^2 - 80*zeta - 80)*q^381 + (8*zeta^2 - 4*zeta - 8)*q^383
+ (20*zeta^2 - 40)*q^387 + (8*zeta^2 - 8*zeta - 8)*q^389 + (-4*zeta^2 - 4*zeta +
12)*q^391 + 24*zeta*q^393 + (8*zeta^2 - 16*zeta - 16)*q^395 + (-22*zeta^2 + 
11*zeta + 22)*q^397 + (-24*zeta^2 + 48)*q^401 + (zeta^2 + zeta - 3)*q^405 - 
32*zeta*q^407 + (27*zeta^2 - 54*zeta - 54)*q^409 + (20*zeta^2 - 40)*q^415 + 
(-8*zeta^2 + 8*zeta + 8)*q^417 + (10*zeta^2 + 10*zeta - 30)*q^419 + 6*zeta*q^421
+ (20*zeta^2 - 40*zeta - 40)*q^423 + (6*zeta^2 - 3*zeta - 6)*q^425 + (48*zeta^2 
- 96)*q^429 + (-36*zeta^2 + 36*zeta + 36)*q^431 + (-15*zeta^2 - 15*zeta + 
45)*q^433 - 32*zeta*q^435 + (-8*zeta^2 + 16*zeta + 16)*q^437 + (24*zeta^2 - 
12*zeta - 24)*q^439 + (16*zeta^2 - 32)*q^443 + (10*zeta^2 - 10*zeta - 10)*q^445 
+ (-20*zeta^2 - 20*zeta + 60)*q^447 - 18*zeta*q^449 + (-20*zeta^2 + 40*zeta + 
40)*q^451 + (-16*zeta^2 + 8*zeta + 16)*q^453 + (-30*zeta^2 + 60)*q^457 + 
(-8*zeta^2 + 8*zeta + 8)*q^459 + (5*zeta^2 + 5*zeta - 15)*q^461 + 40*zeta*q^463 
+ (28*zeta^2 - 14*zeta - 28)*q^467 + (20*zeta^2 - 40)*q^471 + (-16*zeta^2 + 
16*zeta + 16)*q^473 + (-6*zeta^2 - 6*zeta + 18)*q^475 + O(q^476)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_14C3 := Curve(P_Q, [ PolynomialRing(ext<K|Polynomial(K, [1, -2, 
-1, 1])> where K is RationalField(), 3) |
x[1]^2 + 12*x[1]*x[2] - 2*x[1]*x[3] - 27*x[2]^2 + 9*x[2]*x[3] - 13*x[3]^2
]);
