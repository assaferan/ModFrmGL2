
    /****************************************************
    Loading this file in magma loads the objects fs_35E6 
    and X_35E6. fs_35E6 is a list of power series which form 
    a basis for the space of cusp forms. X_35E6 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | -1, -2, 1, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_35E6 := [Kq | (-zeta + 1)*q - 2*zeta*q^2 + (zeta^2 - zeta - 
4)*q^3 + (zeta^2 - 3)*q^5 - 2*zeta^2*q^6 + (-4*zeta^2 - 4*zeta + 4)*q^8 - 
4*zeta*q^9 + (2*zeta^2 - 4)*q^10 + (zeta^2 - 3*zeta - 8)*q^11 + (2*zeta^2 + 
5*zeta - 5)*q^13 + (2*zeta^2 + zeta - 1)*q^15 + (4*zeta^2 - 12)*q^16 + 
(-5*zeta^2 + zeta + 12)*q^17 + (4*zeta^2 + 4*zeta)*q^18 + (6*zeta^2 - 18)*q^19 +
(-6*zeta^2 - 2*zeta + 2)*q^22 + (-6*zeta^2 + 2*zeta + 18)*q^23 + (4*zeta + 
8)*q^24 + (zeta^2 + zeta)*q^25 + (-2*zeta^2 + 6*zeta + 6)*q^26 + (2*zeta^2 + 
3*zeta - 3)*q^27 + (8*zeta^2 + 11*zeta - 11)*q^29 + (-2*zeta^2 - 2*zeta + 
6)*q^30 + (-12*zeta^2 - 6*zeta + 12)*q^31 + (-7*zeta^2 - 10*zeta + 21)*q^33 + 
(2*zeta^2 - 4*zeta + 4)*q^34 + (2*zeta^2 + 6*zeta - 6)*q^37 + (12*zeta^2 - 
24)*q^38 + (-3*zeta^2 + zeta + 8)*q^39 - 4*zeta*q^40 + (-6*zeta^2 - 8*zeta + 
8)*q^41 + (-2*zeta + 2)*q^43 + (4*zeta^2 - 8)*q^45 + (-14*zeta^2 - 2*zeta + 
24)*q^46 + (-3*zeta^2 + 6*zeta + 9)*q^47 + (8*zeta^2 + 4*zeta - 4)*q^48 + 
(2*zeta^2 + 2*zeta - 2)*q^50 + (7*zeta^2 + 8*zeta - 21)*q^51 + (6*zeta^2 - 
12)*q^53 + (-2*zeta^2 + 2*zeta + 6)*q^54 + (4*zeta^2 + zeta - 1)*q^55 + 
(12*zeta^2 + 6*zeta - 6)*q^57 + (-8*zeta^2 + 6*zeta + 24)*q^58 + (4*zeta^2 - 
2*zeta - 12)*q^59 + 4*zeta*q^61 + (-12*zeta^2 - 18*zeta + 18)*q^62 + (-8*zeta + 
8)*q^64 + (-3*zeta^2 + 2*zeta + 9)*q^65 + (-4*zeta^2 + 10*zeta + 28)*q^66 + 
(-10*zeta^2 - 4*zeta + 12)*q^67 + (-10*zeta^2 - 6*zeta + 6)*q^69 + (-4*zeta^2 + 
2*zeta - 2)*q^71 + (8*zeta^2 - 24)*q^72 + (12*zeta^2 - 24)*q^73 + (-2*zeta^2 - 
6*zeta - 8)*q^74 + (zeta^2 + 2*zeta - 3)*q^75 + (2*zeta^2 - 2*zeta + 2)*q^78 + 
(7*zeta^2 + 12*zeta - 21)*q^79 + (4*zeta^2 + 4*zeta)*q^80 + (11*zeta^2 - zeta - 
24)*q^81 + (6*zeta^2 - 4*zeta - 18)*q^82 + (-6*zeta^2 - 5*zeta + 5)*q^85 - 
4*zeta*q^86 + (-3*zeta^2 - 5*zeta - 4)*q^87 + (-4*zeta^2 + 8*zeta + 24)*q^88 + 
(-8*zeta^2 + 24)*q^89 + (4*zeta - 4)*q^90 - 6*zeta*q^93 + (-12*zeta^2 - 6*zeta +
12)*q^94 + (6*zeta^2 + 6*zeta)*q^95 + (6*zeta^2 + 15*zeta - 15)*q^97 + 
(-12*zeta^2 - 4*zeta + 4)*q^99 + (-6*zeta^2 + 6*zeta + 24)*q^101 + (6*zeta^2 - 
8*zeta - 28)*q^102 + (15*zeta^2 - 6*zeta - 45)*q^103 + (12*zeta^2 + 16*zeta - 
16)*q^104 + (6*zeta - 6)*q^106 + (-6*zeta^2 - 12*zeta + 18)*q^107 + (5*zeta^2 + 
5*zeta)*q^109 + (-4*zeta^2 - 6*zeta + 12)*q^110 + (10*zeta^2 + 2*zeta - 2)*q^111
+ (10*zeta^2 + 16*zeta - 16)*q^113 + (-12*zeta^2 - 12*zeta + 36)*q^114 + 
(-8*zeta^2 - 6*zeta + 4)*q^115 + (-4*zeta^2 + 12*zeta + 12)*q^117 + (-4*zeta^2 +
2*zeta - 2)*q^118 - 4*zeta^2*q^120 + (-6*zeta^2 - 24*zeta + 18)*q^121 + 
(-4*zeta^2 - 4*zeta)*q^122 + (2*zeta^2 + 4*zeta + 4)*q^123 + (zeta - 1)*q^125 + 
(-6*zeta^2 - 10*zeta + 10)*q^127 - 16*zeta*q^128 + (2*zeta^2 - 2*zeta - 8)*q^129
+ (-8*zeta^2 - 2*zeta + 12)*q^130 + (8*zeta^2 - 6*zeta - 24)*q^131 + (-8*zeta^2 
- 14*zeta + 14)*q^134 + (-zeta^2 + 2*zeta + 3)*q^135 + (-8*zeta^2 - 12*zeta - 
8)*q^136 + (12*zeta^2 + 12*zeta)*q^137 + (10*zeta^2 + 8*zeta - 30)*q^138 + 
(-6*zeta^2 + 6*zeta - 6)*q^139 + (-3*zeta + 3)*q^141 + (4*zeta^2 + 12*zeta - 
12)*q^142 + (-zeta^2 + 5*zeta + 12)*q^143 + (16*zeta^2 - 32)*q^144 + (-3*zeta^2 
+ 8*zeta + 9)*q^145 + (12*zeta - 12)*q^146 + (12*zeta^2 + 4*zeta - 36)*q^149 + 
(-2*zeta - 4)*q^150 + (-11*zeta^2 + zeta + 24)*q^151 - 24*zeta*q^152 + (4*zeta^2
- 8*zeta + 8)*q^153 + (-6*zeta^2 - 12*zeta + 12)*q^155 + (14*zeta^2 + 18*zeta + 
8)*q^157 + (2*zeta^2 - 12*zeta - 28)*q^158 + (-6*zeta^2 - 6*zeta + 18)*q^159 + 
(-2*zeta^2 + 10*zeta - 10)*q^162 + (6*zeta^2 - 6*zeta - 18)*q^163 + (3*zeta^2 - 
7*zeta - 20)*q^165 + (-6*zeta^2 - zeta + 1)*q^167 + (-12*zeta^2 - 10*zeta + 
10)*q^169 + (6*zeta^2 + 2*zeta - 18)*q^170 + (24*zeta^2 - 48)*q^171 + (-3*zeta^2
+ 6*zeta + 9)*q^173 + (-10*zeta^2 - 8*zeta + 8)*q^174 + (16*zeta^2 + 4*zeta - 
4)*q^176 + (-8*zeta^2 - 10*zeta + 24)*q^177 + (-16*zeta^2 + 32)*q^178 + 
(-18*zeta^2 - 6*zeta + 24)*q^179 + (-18*zeta^2 - 24*zeta + 24)*q^181 + 
4*zeta^2*q^183 + (-4*zeta^2 + 24*zeta + 12)*q^184 + (-4*zeta^2 + 2*zeta + 
12)*q^185 + (6*zeta^2 + 6*zeta)*q^186 + (15*zeta^2 + 22*zeta - 45)*q^187 + 
(12*zeta^2 + 12*zeta - 12)*q^190 + (3*zeta^2 + 24*zeta - 9)*q^191 + (8*zeta^2 - 
8*zeta - 32)*q^192 + (-16*zeta^2 - 16*zeta)*q^193 + (-6*zeta^2 + 18*zeta + 
18)*q^194 + (-4*zeta^2 - 3*zeta + 3)*q^195 + (-2*zeta^2 - 14*zeta + 14)*q^197 + 
(12*zeta^2 + 16*zeta - 36)*q^198 + (8*zeta^2 + 6*zeta - 4)*q^199 + (4*zeta^2 - 
8)*q^200 + (2*zeta^2 - 2*zeta - 6)*q^201 + 12*zeta^2*q^202 + (2*zeta^2 - 6*zeta 
- 6)*q^205 + (36*zeta^2 + 6*zeta - 60)*q^206 + (-28*zeta^2 - 4*zeta + 48)*q^207 
+ (-12*zeta^2 + 8*zeta + 36)*q^208 + (24*zeta^2 + 6*zeta - 6)*q^209 + (-9*zeta +
9)*q^211 + (-6*zeta^2 + 10*zeta + 32)*q^213 + (12*zeta + 24)*q^214 + (2*zeta^2 -
6)*q^215 + (4*zeta^2 + 8*zeta - 8)*q^216 + (10*zeta^2 + 10*zeta - 10)*q^218 + 
(-12*zeta^2 - 12*zeta + 36)*q^219 + (19*zeta^2 + 3*zeta - 32)*q^221 + 
(-10*zeta^2 - 16*zeta + 30)*q^222 + (-30*zeta^2 - 33*zeta + 33)*q^223 + 
(4*zeta^2 + 4*zeta - 4)*q^225 + (-10*zeta^2 + 12*zeta + 30)*q^226 + (-21*zeta^2 
- 3*zeta + 36)*q^227 + (-6*zeta^2 - 34*zeta + 18)*q^229 + (-12*zeta^2 - 14*zeta 
+ 14)*q^230 + (12*zeta^2 + 28*zeta - 28)*q^232 + (12*zeta^2 + 4*zeta - 36)*q^233
+ (-20*zeta^2 - 12*zeta + 16)*q^234 + (-9*zeta^2 - 3*zeta + 12)*q^235 + 
(26*zeta^2 + 7*zeta - 7)*q^237 + (12*zeta^2 + 21*zeta - 21)*q^239 + (4*zeta^2 + 
8*zeta - 12)*q^240 + (6*zeta^2 - 12*zeta - 36)*q^241 + (12*zeta^2 + 24*zeta + 
24)*q^242 + (-16*zeta^2 - 8*zeta + 48)*q^243 + (8*zeta^2 + 6*zeta - 6)*q^246 + 
(-18*zeta^2 + 12*zeta + 54)*q^247 + (-36*zeta^2 - 12*zeta + 48)*q^248 + 
2*zeta*q^250 + (30*zeta^2 + 26*zeta - 26)*q^251 + (-18*zeta^2 - 4*zeta + 
4)*q^253 + (6*zeta^2 - 8*zeta - 18)*q^254 + (-zeta^2 + 7*zeta + 16)*q^255 + 
(-18*zeta^2 - 12*zeta + 54)*q^257 - 4*zeta^2*q^258 + (-16*zeta^2 + 12*zeta + 
48)*q^261 + (22*zeta^2 + 6*zeta - 32)*q^262 + (-26*zeta^2 + 6*zeta + 64)*q^263 +
(20*zeta^2 + 28*zeta - 60)*q^264 + (6*zeta^2 + 6*zeta - 6)*q^265 + (-16*zeta^2 -
8*zeta + 8)*q^267 + (18*zeta^2 + 12*zeta - 12)*q^269 + (-4*zeta^2 - 2*zeta + 
4)*q^270 + (-12*zeta^2 - 16*zeta + 36)*q^271 + (-24*zeta^2 - 20*zeta + 20)*q^272
+ (24*zeta^2 + 24*zeta - 24)*q^274 + (3*zeta^2 + 4*zeta - 9)*q^275 + (24*zeta^2 
- 6*zeta - 60)*q^277 + (6*zeta^2 + 24*zeta - 18)*q^278 + (-24*zeta^2 - 36*zeta +
36)*q^279 + (-16*zeta^2 - 7*zeta + 7)*q^281 - 6*zeta*q^282 + (-31*zeta^2 - 
9*zeta + 44)*q^283 + (6*zeta^2 + 12*zeta - 18)*q^285 + (10*zeta^2 + 4*zeta - 
4)*q^286 + (-2*zeta^2 - 12*zeta + 6)*q^289 + (-14*zeta^2 - 8*zeta + 12)*q^290 + 
(-9*zeta^2 + 3*zeta + 24)*q^291 + (18*zeta^2 + 31*zeta - 31)*q^293 + (6*zeta^2 +
4*zeta - 4)*q^295 + (-12*zeta^2 - 8*zeta + 36)*q^296 + (zeta^2 - zeta - 4)*q^297
+ (20*zeta^2 - 4*zeta - 48)*q^298 + (20*zeta^2 - 18*zeta - 60)*q^299 + (2*zeta^2
- 10*zeta + 10)*q^302 + (18*zeta^2 + 24*zeta - 54)*q^303 + (24*zeta^2 + 
24*zeta)*q^304 + (-4*zeta^2 + 8)*q^305 + (-4*zeta^2 - 24*zeta + 12)*q^306 + 
(14*zeta^2 + 35*zeta - 35)*q^307 + (24*zeta^2 + 15*zeta - 15)*q^309 + (6*zeta^2 
- 12*zeta - 18)*q^310 + (10*zeta^2 + 10*zeta)*q^311 + (-4*zeta^2 - 8*zeta - 
8)*q^312 + (3*zeta^2 + 30*zeta - 9)*q^313 + (36*zeta^2 + 32*zeta - 32)*q^314 + 
(6*zeta^2 + 8*zeta - 18)*q^317 + (-6*zeta^2 + 6*zeta + 24)*q^318 + (5*zeta^2 - 
7*zeta - 24)*q^319 + (8*zeta^2 - 24)*q^320 + (-24*zeta^2 - 6*zeta + 6)*q^321 + 
(-36*zeta^2 - 30*zeta + 30)*q^323 + (-5*zeta^2 - 3*zeta + 4)*q^325 + (18*zeta^2 
+ 6*zeta - 24)*q^326 + (5*zeta^2 + 10*zeta - 15)*q^327 + (-8*zeta^2 - 20*zeta + 
20)*q^328 + (-14*zeta^2 - 4*zeta + 4)*q^330 + (2*zeta^2 - 36*zeta - 6)*q^331 + 
(-4*zeta^2 - 12*zeta - 16)*q^333 + (6*zeta^2 + 10*zeta - 18)*q^334 + (-6*zeta^2 
- 10*zeta + 10)*q^335 + (-6*zeta^2 - 24*zeta + 24)*q^337 + (12*zeta^2 + 4*zeta -
36)*q^338 + (-6*zeta^2 - 4*zeta + 4)*q^339 + (-6*zeta^2 - 6*zeta + 18)*q^341 + 
(24*zeta - 24)*q^342 + (-8*zeta^2 - 8*zeta + 8)*q^344 + (-4*zeta^2 - 10*zeta + 
12)*q^345 + (-12*zeta^2 - 6*zeta + 12)*q^346 + (16*zeta^2 + 6*zeta - 20)*q^347 +
(-24*zeta^2 - 18*zeta + 18)*q^349 + (-8*zeta^2 - 13*zeta + 13)*q^351 + 
(15*zeta^2 - 15*zeta - 60)*q^353 + (-6*zeta^2 + 10*zeta + 32)*q^354 + (-6*zeta^2
- 4*zeta + 18)*q^355 + (-12*zeta^2 - 24*zeta + 24)*q^358 - 16*zeta*q^359 + 
(8*zeta^2 + 8*zeta)*q^360 + (17*zeta^2 + 17*zeta)*q^361 + (18*zeta^2 - 12*zeta -
54)*q^362 + (-36*zeta^2 - 6*zeta + 6)*q^363 + (12*zeta^2 + 12*zeta - 12)*q^365 +
(-4*zeta^2 - 8*zeta + 12)*q^366 + (35*zeta^2 - 3*zeta - 76)*q^367 + (-32*zeta^2 
- 24*zeta + 16)*q^368 + (12*zeta^2 - 8*zeta - 36)*q^369 + (4*zeta^2 - 2*zeta + 
2)*q^370 + (8*zeta^2 - 12*zeta - 24)*q^373 + (8*zeta^2 - 22*zeta - 60)*q^374 + 
(-zeta^2 + zeta + 4)*q^375 + (-12*zeta^2 + 12*zeta + 36)*q^376 + (-30*zeta^2 - 
47*zeta + 47)*q^377 + (-2*zeta + 2)*q^379 + (4*zeta^2 + 2*zeta - 4)*q^381 + 
(-18*zeta^2 - 24*zeta - 12)*q^382 + (-4*zeta^2 - 12*zeta + 12)*q^383 - 
16*zeta^2*q^384 + (-32*zeta^2 - 32*zeta + 32)*q^386 - 8*zeta*q^387 + (-zeta^2 - 
21*zeta - 40)*q^389 + (4*zeta^2 + 2*zeta - 12)*q^390 + (34*zeta^2 + 34*zeta - 
34)*q^391 + (10*zeta^2 + 8*zeta - 8)*q^393 + (2*zeta^2 - 24*zeta - 6)*q^394 + 
(-5*zeta^2 + 7*zeta + 24)*q^395 + (3*zeta^2 + 2*zeta - 9)*q^397 + (12*zeta^2 + 
14*zeta - 14)*q^398 + (4*zeta - 4)*q^400 + (-9*zeta^2 + 4*zeta + 27)*q^401 + 
(6*zeta^2 + 2*zeta - 8)*q^402 + (54*zeta^2 + 24*zeta - 60)*q^403 + (12*zeta^2 + 
11*zeta - 11)*q^405 + (26*zeta^2 + 8*zeta - 8)*q^407 + (-16*zeta^2 - 28*zeta + 
48)*q^408 + (-6*zeta^2 + 6*zeta + 24)*q^409 + (10*zeta^2 + 6*zeta - 8)*q^410 + 
(12*zeta^2 + 24*zeta - 36)*q^411 + (-8*zeta^2 - 32*zeta + 32)*q^414 + 
(-12*zeta^2 + 18*zeta + 60)*q^417 + (-24*zeta^2 - 36*zeta + 72)*q^418 + 
(18*zeta^2 + 24*zeta - 24)*q^419 + (19*zeta - 19)*q^421 - 18*zeta*q^422 + 
(-24*zeta^2 - 12*zeta + 24)*q^423 + (12*zeta^2 + 12*zeta)*q^424 + (-zeta^2 - 
6*zeta + 3)*q^425 + (20*zeta^2 + 4*zeta - 4)*q^426 + (11*zeta^2 + 16*zeta - 
33)*q^429 + (4*zeta^2 - 8)*q^430 + (-37*zeta^2 - 9*zeta + 56)*q^431 + (-4*zeta^2
+ 8*zeta + 12)*q^432 + (24*zeta^2 + 18*zeta - 18)*q^433 + (2*zeta^2 - 3*zeta + 
3)*q^435 + (-48*zeta^2 - 36*zeta + 24)*q^437 + (-12*zeta^2 + 12*zeta + 48)*q^438
+ (-12*zeta^2 + 26*zeta + 36)*q^439 + (-12*zeta^2 - 4*zeta + 4)*q^440 + 
(6*zeta^2 + 22*zeta - 22)*q^442 + (-18*zeta^2 - 4*zeta + 54)*q^443 + (-8*zeta^2 
- 8*zeta)*q^445 + (30*zeta^2 - 6*zeta - 90)*q^446 + (28*zeta^2 + 12*zeta - 
12)*q^447 + (-4*zeta^2 + 23*zeta - 23)*q^449 + (-4*zeta^2 + 12)*q^450 + 
(-4*zeta^2 + 6*zeta + 20)*q^451 + (13*zeta^2 + 14*zeta - 39)*q^453 + (-6*zeta^2 
- 24*zeta + 24)*q^454 - 24*zeta^2*q^456 + (16*zeta^2 + 6*zeta - 48)*q^457 + 
(22*zeta^2 + 34*zeta + 24)*q^458 + (9*zeta^2 + 5*zeta - 8)*q^459 + (-24*zeta^2 -
4*zeta + 4)*q^461 + (36*zeta^2 + 32*zeta - 32)*q^463 + (-12*zeta^2 + 32*zeta + 
36)*q^464 + (6*zeta^2 - 12)*q^465 + (20*zeta^2 - 4*zeta - 48)*q^466 + (7*zeta^2 
+ 18*zeta - 21)*q^467 + (-6*zeta^2 - 12*zeta + 12)*q^470 + (22*zeta^2 + 40*zeta 
- 66)*q^471 + (4*zeta^2 + 12*zeta + 16)*q^472 + (2*zeta^2 - 6*zeta - 16)*q^473 +
(-26*zeta^2 - 38*zeta + 78)*q^474 + (6*zeta - 6)*q^475 + (12*zeta - 12)*q^477 + 
(-12*zeta^2 + 18*zeta + 36)*q^478 + (-10*zeta^2 - 16*zeta - 12)*q^479 - 
14*zeta*q^481 + (-24*zeta^2 - 6*zeta + 6)*q^482 + (-9*zeta^2 + 6*zeta + 
27)*q^485 + (-24*zeta^2 + 8*zeta + 64)*q^486 + (40*zeta^2 - 2*zeta - 84)*q^487 +
(-8*zeta^2 + 24)*q^488 + (6*zeta^2 + 6*zeta - 6)*q^489 + (40*zeta^2 + 49*zeta - 
49)*q^491 + (31*zeta^2 + 21*zeta - 20)*q^493 + (-48*zeta^2 - 12*zeta + 72)*q^494
+ (-8*zeta^2 - 12*zeta + 24)*q^495 + (-24*zeta^2 - 48*zeta + 48)*q^496 + 
(-3*zeta^2 + 9)*q^499 + (-5*zeta^2 + 11*zeta + 32)*q^501 + (-30*zeta^2 - 8*zeta 
+ 90)*q^502 + (-6*zeta^2 - 43*zeta + 43)*q^503 + (-12*zeta^2 - 6*zeta + 6)*q^505
+ (18*zeta^2 + 28*zeta - 54)*q^506 + (-2*zeta^2 + 14*zeta + 32)*q^507 + 
(-4*zeta^2 + 30*zeta + 12)*q^509 + (14*zeta^2 + 6*zeta - 6)*q^510 + (-32*zeta^2 
- 32*zeta + 32)*q^512 + (-6*zeta^2 + 12*zeta + 18)*q^513 + (-24*zeta^2 + 12*zeta
+ 72)*q^514 + (21*zeta^2 + 15*zeta - 12)*q^515 + (6*zeta^2 + 3*zeta - 3)*q^517 +
(-3*zeta + 3)*q^519 + (-4*zeta^2 + 12*zeta + 12)*q^520 + (-22*zeta^2 + 2*zeta + 
48)*q^521 + (-44*zeta^2 - 12*zeta + 64)*q^522 + (24*zeta^2 - 12*zeta - 72)*q^523
+ (12*zeta^2 - 20*zeta + 20)*q^526 + (-12*zeta^2 + 30*zeta + 36)*q^527 + 
(12*zeta^2 - 28*zeta - 80)*q^528 + (39*zeta^2 + 15*zeta - 48)*q^529 + (-6*zeta^2
+ 18)*q^530 + (-8*zeta^2 + 4*zeta - 4)*q^531 + (22*zeta^2 + 34*zeta - 34)*q^533 
+ (16*zeta^2 + 16*zeta - 48)*q^534 + (6*zeta^2 - 6*zeta - 24)*q^535 + 
(-28*zeta^2 - 12*zeta + 32)*q^536 + (6*zeta^2 - 18)*q^537 + (24*zeta^2 + 30*zeta
- 30)*q^538 + (5*zeta^2 - 24*zeta - 15)*q^541 + (-8*zeta^2 + 16*zeta + 48)*q^542
+ (6*zeta^2 + 12*zeta + 12)*q^543 + (5*zeta - 5)*q^545 + (12*zeta^2 + 28*zeta - 
28)*q^547 + (-8*zeta^2 - 8*zeta)*q^549 + (2*zeta^2 - 4*zeta - 12)*q^550 + 
(-18*zeta^2 + 48*zeta + 54)*q^551 + (16*zeta^2 - 4*zeta + 4)*q^552 + (-12*zeta^2
+ 18*zeta - 18)*q^554 + (8*zeta^2 + 10*zeta - 24)*q^555 + (-16*zeta^2 + 12*zeta 
+ 56)*q^557 + (24*zeta^2 - 24*zeta - 72)*q^558 + (4*zeta^2 + 10*zeta - 10)*q^559
+ (52*zeta^2 + 15*zeta - 15)*q^561 + (16*zeta^2 + 18*zeta - 48)*q^562 + 
(46*zeta^2 - 2*zeta - 96)*q^563 + (-6*zeta^2 + 10*zeta + 18)*q^565 + (-18*zeta^2
- 40*zeta + 40)*q^566 + (24*zeta^2 + 16*zeta - 16)*q^568 + (-12*zeta^2 + 20*zeta
+ 36)*q^569 + (-12*zeta - 24)*q^570 + (-14*zeta^2 - 26*zeta - 24)*q^571 + 
(30*zeta^2 + 3*zeta - 3)*q^573 + (-2*zeta^2 - 8*zeta + 8)*q^575 - 32*zeta*q^576 
+ (-21*zeta^2 - 3*zeta + 36)*q^577 + (8*zeta^2 + 12*zeta + 8)*q^578 + 
(-16*zeta^2 - 32*zeta + 48)*q^579 + (6*zeta^2 - 6*zeta + 6)*q^582 + (-12*zeta^2 
- 18*zeta + 36)*q^583 + (24*zeta^2 + 24*zeta)*q^584 + (-16*zeta^2 - 4*zeta + 
24)*q^585 + (-18*zeta^2 + 26*zeta + 54)*q^586 + (-36*zeta^2 - 48*zeta + 
48)*q^587 + (-36*zeta^2 - 72*zeta + 72)*q^589 + (-6*zeta^2 - 4*zeta + 18)*q^590 
+ (12*zeta^2 - 10*zeta - 44)*q^591 + (-16*zeta^2 + 8*zeta + 48)*q^592 + 
(15*zeta^2 - 6*zeta - 45)*q^593 - 2*zeta^2*q^594 + (4*zeta^2 + 10*zeta - 
12)*q^597 + (58*zeta^2 + 18*zeta - 80)*q^598 + (-19*zeta^2 - 15*zeta + 8)*q^599 
+ (-4*zeta^2 - 4*zeta + 12)*q^600 + (-24*zeta^2 - 18*zeta + 18)*q^601 + 
(-16*zeta^2 - 28*zeta + 28)*q^603 + (18*zeta^2 - 6*zeta - 48)*q^605 + (12*zeta^2
- 24*zeta - 72)*q^606 + (-15*zeta^2 - 14*zeta + 45)*q^607 + (-4*zeta + 4)*q^610 
+ (15*zeta^2 - 24*zeta - 45)*q^611 + (-38*zeta^2 + 10*zeta + 96)*q^613 + 
(-14*zeta^2 + 42*zeta + 42)*q^614 + (-2*zeta^2 + 2*zeta - 2)*q^615 + (2*zeta^2 -
4*zeta + 4)*q^617 + (-24*zeta^2 - 18*zeta + 72)*q^618 + (-14*zeta^2 - 24*zeta - 
20)*q^619 + (8*zeta^2 - 14*zeta - 24)*q^621 + (20*zeta^2 + 20*zeta - 20)*q^622 +
(-16*zeta^2 - 12*zeta + 12)*q^624 + (-zeta^2 + 3)*q^625 + (-24*zeta^2 - 30*zeta 
- 12)*q^626 + (18*zeta^2 - 42*zeta - 120)*q^627 + (-18*zeta^2 + 2*zeta - 
2)*q^629 + (36*zeta^2 + 53*zeta - 53)*q^631 + (-24*zeta^2 - 28*zeta + 72)*q^632 
+ (9*zeta^2 - 9*zeta - 36)*q^633 + (4*zeta^2 - 8*zeta - 24)*q^634 + (4*zeta^2 - 
6*zeta - 12)*q^635 + (-14*zeta^2 - 2*zeta + 2)*q^638 + (8*zeta^2 + 24*zeta - 
24)*q^639 + (16*zeta^2 - 32)*q^640 + (-28*zeta^2 - 12*zeta + 32)*q^641 + 
(24*zeta^2 + 36*zeta - 72)*q^642 + (-18*zeta^2 - 3*zeta + 3)*q^643 + (4*zeta^2 +
2*zeta - 2)*q^645 + (36*zeta^2 + 12*zeta - 108)*q^646 + (8*zeta^2 + 20*zeta + 
24)*q^647 + (20*zeta^2 + 24*zeta + 8)*q^648 + (-18*zeta^2 - 26*zeta + 54)*q^649 
+ (-6*zeta^2 - 8*zeta + 8)*q^650 + (-18*zeta^2 + 24*zeta + 54)*q^653 + (-10*zeta
- 20)*q^654 + (14*zeta^2 + 8*zeta - 12)*q^655 + (8*zeta^2 - 24*zeta - 24)*q^656 
+ (24*zeta - 24)*q^657 + (-24*zeta^2 - 27*zeta + 27)*q^659 + (-24*zeta^2 + 
12*zeta + 72)*q^661 + (40*zeta^2 + 36*zeta - 8)*q^662 + (-13*zeta^2 - 10*zeta + 
39)*q^663 + (-24*zeta^2 - 16*zeta + 16)*q^666 + (26*zeta^2 - 54*zeta - 78)*q^667
+ (3*zeta^2 + 27*zeta + 48)*q^669 + (6*zeta^2 - 8*zeta - 18)*q^670 + (12*zeta^2 
+ 4*zeta - 4)*q^671 + 12*zeta^2*q^673 + (6*zeta^2 - 36*zeta - 18)*q^674 + 
(-3*zeta^2 - zeta + 4)*q^675 + (23*zeta^2 - 30*zeta - 69)*q^677 + (-8*zeta^2 - 
10*zeta + 10)*q^678 + (4*zeta^2 - 8*zeta + 8)*q^680 + (15*zeta^2 + 12*zeta - 
45)*q^681 + (-6*zeta^2 + 6*zeta + 24)*q^682 + (40*zeta^2 + 12*zeta - 56)*q^683 +
(12*zeta - 12)*q^685 + (-46*zeta^2 - 6*zeta + 6)*q^687 + (8*zeta^2 - 24)*q^688 +
(-24*zeta^2 - 6*zeta + 36)*q^689 + (2*zeta^2 + 10*zeta + 16)*q^690 + (12*zeta^2 
- 4*zeta - 36)*q^691 + (12*zeta^2 + 22*zeta - 22)*q^694 + (-12*zeta^2 - 6*zeta +
36)*q^695 + (-16*zeta^2 + 4*zeta + 40)*q^696 + (-22*zeta^2 - 16*zeta + 12)*q^697
+ (24*zeta^2 + 12*zeta - 72)*q^698 + (28*zeta^2 + 12*zeta - 12)*q^699 + 
(-36*zeta^2 - 57*zeta + 57)*q^701 + (8*zeta^2 - 10*zeta - 24)*q^702 + 
(-24*zeta^2 + 12*zeta + 72)*q^703 + (8*zeta^2 - 24*zeta - 64)*q^704 + (3*zeta^2 
- 9)*q^705 - 30*zeta^2*q^706 + (-17*zeta^2 + 51)*q^709 + (-8*zeta^2 + 4*zeta + 
24)*q^710 + (4*zeta^2 - 24*zeta - 56)*q^711 + 32*zeta*q^712 + (48*zeta^2 + 
90*zeta - 90)*q^713 + (-6*zeta^2 - zeta + 1)*q^715 + (-9*zeta^2 - 3*zeta + 
12)*q^717 + (16*zeta^2 + 16*zeta)*q^718 + (-4*zeta^2 + 30*zeta + 12)*q^719 + 
(16*zeta^2 + 16*zeta - 16)*q^720 + (34*zeta^2 + 34*zeta - 34)*q^722 + 
(-30*zeta^2 - 42*zeta + 90)*q^723 + (-11*zeta^2 - 3*zeta + 16)*q^725 + 
(36*zeta^2 + 60*zeta - 108)*q^726 + (16*zeta^2 - 2*zeta + 2)*q^727 + (-4*zeta^2 
+ 17*zeta - 17)*q^729 + (-12*zeta^2 + 36)*q^730 + (-10*zeta^2 + 2*zeta + 
24)*q^731 + (-15*zeta^2 - 42*zeta + 45)*q^733 + (-6*zeta^2 + 32*zeta - 32)*q^734
+ 2*zeta*q^737 + (32*zeta^2 + 8*zeta - 48)*q^738 + (37*zeta^2 + 13*zeta - 
48)*q^739 + (-24*zeta^2 - 18*zeta + 18)*q^741 + (18*zeta^2 - 6*zeta + 6)*q^743 +
(12*zeta^2 - 36)*q^744 + (8*zeta^2 + 12*zeta + 8)*q^745 + (28*zeta^2 + 12*zeta -
32)*q^746 + 2*zeta^2*q^750 + (-21*zeta^2 + 12*zeta + 63)*q^751 + (-36*zeta^2 - 
12*zeta + 48)*q^752 + (4*zeta^2 - 34*zeta - 76)*q^753 + (30*zeta^2 - 34*zeta - 
90)*q^754 + (-12*zeta^2 - 11*zeta + 11)*q^755 + (-12*zeta^2 - 4*zeta + 4)*q^757 
- 4*zeta*q^758 + (-14*zeta^2 + 32*zeta + 92)*q^759 + (24*zeta^2 - 48)*q^760 + 
18*zeta*q^761 + (4*zeta^2 + 6*zeta - 6)*q^762 + (12*zeta^2 + 4*zeta - 36)*q^765 
+ (4*zeta^2 + 12*zeta + 16)*q^766 + (-14*zeta^2 + 28)*q^767 + (-4*zeta^2 - 
10*zeta + 10)*q^769 + (-48*zeta^2 - 18*zeta + 18)*q^771 + (15*zeta^2 - 15*zeta -
60)*q^773 + (8*zeta^2 + 8*zeta)*q^774 + (6*zeta^2 - 6*zeta - 18)*q^775 + 
(36*zeta^2 + 48*zeta - 48)*q^776 + (-42*zeta^2 - 22*zeta + 22)*q^778 + 
(12*zeta^2 - 36*zeta - 36)*q^779 + (-10*zeta^2 + 26*zeta + 72)*q^781 + 
(-34*zeta^2 + 102)*q^782 + (-14*zeta^2 - 25*zeta + 25)*q^783 + (-4*zeta^2 + 
14*zeta - 14)*q^785 + (-10*zeta^2 - 4*zeta + 30)*q^786 + (-15*zeta^2 - 33*zeta -
36)*q^787 + (38*zeta^2 + 44*zeta - 114)*q^789 + (14*zeta^2 + 2*zeta - 2)*q^790 +
(32*zeta^2 + 8*zeta - 8)*q^792 + (4*zeta^2 - 12*zeta - 12)*q^793 + (4*zeta^2 - 
2*zeta - 12)*q^794 + (-6*zeta - 12)*q^795 + (-54*zeta^2 - 37*zeta + 37)*q^797 + 
(12*zeta^2 + 27*zeta - 27)*q^799 + (-32*zeta^2 + 64)*q^801 + (-22*zeta^2 - 
4*zeta + 36)*q^802 + (-24*zeta^2 - 36*zeta + 72)*q^803 + (48*zeta^2 + 78*zeta - 
78)*q^806 + (6*zeta^2 + 18*zeta - 18)*q^807 + (-24*zeta - 48)*q^808 + 
(-65*zeta^2 - 9*zeta + 112)*q^809 + (-12*zeta^2 - 2*zeta + 36)*q^810 + 
(50*zeta^2 + 62*zeta - 62)*q^811 + (-40*zeta^2 - 12*zeta + 12)*q^813 + 
(-26*zeta^2 - 36*zeta + 78)*q^814 + (12*zeta^2 + 6*zeta - 12)*q^815 + (-4*zeta^2
+ 28*zeta + 64)*q^816 + (12*zeta^2 - 36)*q^817 + 12*zeta^2*q^818 + (15*zeta^2 - 
12*zeta - 45)*q^821 + (-24*zeta - 48)*q^822 + (22*zeta^2 + 4*zeta - 36)*q^823 + 
(12*zeta^2 - 60*zeta - 36)*q^824 + (10*zeta^2 + 3*zeta - 3)*q^825 + (-34*zeta^2 
- 52*zeta + 52)*q^827 + (4*zeta^2 - 30*zeta - 68)*q^829 + (-36*zeta^2 - 42*zeta 
+ 108)*q^831 + (16*zeta^2 + 40*zeta - 40)*q^832 + (36*zeta^2 + 6*zeta - 6)*q^834
+ (-5*zeta^2 - 6*zeta + 15)*q^835 + (30*zeta^2 + 12*zeta - 36)*q^837 + 
(-18*zeta^2 + 12*zeta + 54)*q^838 + (18*zeta^2 - 18*zeta + 18)*q^839 + 
(-48*zeta^2 - 60*zeta + 60)*q^841 + 38*zeta*q^842 + (-9*zeta^2 + 25*zeta + 
68)*q^843 + (-2*zeta^2 - 12*zeta + 6)*q^845 + (-24*zeta^2 - 36*zeta + 36)*q^846 
+ (24*zeta^2 + 24*zeta - 24)*q^848 + (13*zeta^2 + 4*zeta - 39)*q^849 + (4*zeta^2
+ 6*zeta + 4)*q^850 + (26*zeta^2 - 6*zeta - 64)*q^851 + (24*zeta^2 + 18*zeta - 
18)*q^853 + (24*zeta^2 + 24*zeta - 24)*q^855 + (24*zeta^2 + 24*zeta - 72)*q^856 
+ (26*zeta^2 + 14*zeta - 24)*q^857 + (6*zeta^2 - 16*zeta - 44)*q^858 + 
(12*zeta^2 + 52*zeta - 36)*q^859 + (-18*zeta^2 - 46*zeta + 46)*q^862 + 
26*zeta*q^863 + (-9*zeta^2 - 3*zeta + 12)*q^865 + (-24*zeta^2 - 12*zeta + 
72)*q^866 + (-16*zeta^2 - 2*zeta + 2)*q^867 + (64*zeta^2 + 19*zeta - 19)*q^869 +
(-2*zeta^2 - 10*zeta + 6)*q^870 + (44*zeta^2 + 18*zeta - 52)*q^871 + (20*zeta^2 
- 40)*q^872 + (-12*zeta^2 + 36*zeta + 36)*q^873 + (-72*zeta^2 - 84*zeta + 
84)*q^874 + (-30*zeta^2 - 24*zeta + 90)*q^877 + (-50*zeta^2 - 26*zeta + 
48)*q^878 + (-13*zeta^2 - 5*zeta + 16)*q^879 + (12*zeta^2 + 16*zeta - 36)*q^880 
+ (-24*zeta^2 - 60*zeta + 60)*q^881 + (12*zeta^2 - 28*zeta + 28)*q^883 + 
(2*zeta^2 - 8*zeta - 20)*q^885 + (-32*zeta^2 + 4*zeta + 72)*q^886 + (-14*zeta^2 
- 24*zeta + 42)*q^887 + (-32*zeta^2 - 12*zeta + 12)*q^888 + (-16*zeta^2 - 
16*zeta + 16)*q^890 + (-27*zeta^2 - 40*zeta + 81)*q^891 + (-54*zeta^2 - 18*zeta 
+ 72)*q^893 + (-28*zeta^2 - 32*zeta + 84)*q^894 + (-12*zeta^2 - 18*zeta + 
18)*q^895 + (22*zeta^2 + 20*zeta - 20)*q^897 + (4*zeta^2 + 54*zeta - 12)*q^898 +
(108*zeta^2 + 42*zeta - 132)*q^899 + (18*zeta^2 + 6*zeta - 54)*q^901 + 
(12*zeta^2 + 2*zeta - 2)*q^902 + (24*zeta^2 + 44*zeta - 44)*q^904 + (6*zeta^2 - 
18*zeta - 18)*q^905 + (12*zeta^2 - 14*zeta - 52)*q^906 + (-60*zeta^2 - 6*zeta + 
108)*q^907 + 24*zeta^2*q^909 + (-8*zeta^2 - 8*zeta + 8)*q^911 + (24*zeta^2 + 
48*zeta - 72)*q^912 + (26*zeta^2 - 6*zeta - 64)*q^914 + (4*zeta^2 + 4*zeta - 
12)*q^915 + (10*zeta^2 + 14*zeta - 14)*q^918 + (13*zeta^2 + 36*zeta - 39)*q^919 
+ (-28*zeta^2 - 4*zeta + 48)*q^920 + (-21*zeta^2 + 7*zeta + 56)*q^921 + 
(24*zeta^2 + 40*zeta - 72)*q^922 + (-14*zeta + 14)*q^923 + (-6*zeta^2 - 4*zeta +
4)*q^925 + (-36*zeta^2 - 8*zeta + 108)*q^926 + (72*zeta^2 + 12*zeta - 120)*q^927
+ (42*zeta^2 + 18*zeta - 126)*q^929 + (6*zeta - 6)*q^930 + (10*zeta^2 + 20*zeta 
- 30)*q^933 + (-4*zeta^2 - 18*zeta - 28)*q^934 + (-7*zeta^2 + 15*zeta + 
44)*q^935 + (-24*zeta^2 + 16*zeta + 72)*q^936 + (-22*zeta^2 - 55*zeta + 
55)*q^937 + (36*zeta^2 + 3*zeta - 3)*q^939 + (-36*zeta^2 - 12*zeta + 48)*q^941 +
(4*zeta^2 - 40*zeta - 88)*q^942 + (-18*zeta^2 + 40*zeta + 54)*q^943 + (24*zeta^2
+ 16*zeta - 16)*q^944 + (-12*zeta^2 - 4*zeta + 4)*q^946 + (48*zeta^2 - 6*zeta - 
144)*q^947 + (-48*zeta^2 - 12*zeta + 72)*q^949 + 12*zeta*q^950 + (20*zeta^2 + 
6*zeta - 6)*q^951 + (-58*zeta^2 - 70*zeta + 70)*q^953 + 24*zeta*q^954 + 
(-21*zeta^2 + 3*zeta + 48)*q^955 + (-19*zeta^2 - 26*zeta + 57)*q^957 + 
(-32*zeta^2 - 26*zeta + 26)*q^958 + (16*zeta^2 + 8*zeta - 8)*q^960 + (-23*zeta^2
+ 72*zeta + 69)*q^961 + (14*zeta^2 + 14*zeta)*q^962 + (24*zeta + 48)*q^963 + 
(-16*zeta + 16)*q^965 + (60*zeta^2 + 78*zeta - 78)*q^967 + (48*zeta^2 + 24*zeta 
- 144)*q^968 + (-6*zeta^2 + 42*zeta + 96)*q^969 + (-24*zeta^2 - 6*zeta + 
36)*q^970 + (-30*zeta^2 - 18*zeta + 90)*q^971 + (-4*zeta^2 + 38*zeta - 38)*q^974
+ (-zeta^2 - 4*zeta + 3)*q^975 + (-16*zeta^2 + 32)*q^976 + (58*zeta^2 + 6*zeta -
104)*q^977 + (-6*zeta^2 + 18)*q^978 + (-32*zeta^2 - 8*zeta + 8)*q^979 + 
(20*zeta^2 + 20*zeta - 20)*q^981 + (-40*zeta^2 + 18*zeta + 120)*q^982 + 
(-9*zeta^2 + 21*zeta + 60)*q^983 + (12*zeta^2 - 4*zeta - 32)*q^984 + (12*zeta^2 
- 2*zeta - 36)*q^985 + (42*zeta^2 + 52*zeta - 52)*q^986 + (-12*zeta^2 + 4*zeta +
36)*q^989 + (-4*zeta^2 + 12*zeta + 32)*q^990 + (34*zeta^2 - 14*zeta - 96)*q^991 
+ (-32*zeta^2 + 2*zeta - 2)*q^993 + (2*zeta^2 + 8*zeta - 8)*q^995 + (27*zeta^2 +
9*zeta - 36)*q^997 + (-6*zeta^2 + 12)*q^998 + (4*zeta^2 - 2*zeta - 12)*q^999 + 
(4*zeta^2 + 4*zeta - 4)*q^1000 + (22*zeta^2 + 6*zeta - 6)*q^1002 + (20*zeta^2 + 
18*zeta - 60)*q^1003 + (4*zeta^2 + 2*zeta - 4)*q^1005 + (6*zeta^2 - 74*zeta - 
18)*q^1006 + (36*zeta^2 + 36*zeta - 36)*q^1007 + (-48*zeta^2 - 31*zeta + 
31)*q^1009 + (12*zeta^2 + 12*zeta - 36)*q^1010 + (18*zeta^2 - 12*zeta - 
60)*q^1011 + (-20*zeta^2 + 36*zeta + 60)*q^1013 + (28*zeta^2 + 12*zeta - 
12)*q^1014 + (-16*zeta^2 - 28*zeta + 28)*q^1016 + (-20*zeta^2 + 24*zeta + 
60)*q^1017 + (-38*zeta^2 - 30*zeta + 16)*q^1018 + (70*zeta^2 + 30*zeta - 
80)*q^1019 + (36*zeta^2 + 6*zeta - 6)*q^1021 + (-18*zeta^2 - 6*zeta + 6)*q^1023 
+ (32*zeta^2 - 96)*q^1024 + (8*zeta^2 + 2*zeta - 12)*q^1025 + (-24*zeta^2 - 
12*zeta + 24)*q^1026 + (-9*zeta^2 - 22*zeta + 27)*q^1027 + (30*zeta^2 + 36*zeta 
- 36)*q^1030 + (21*zeta^2 - 16*zeta - 63)*q^1031 + (8*zeta + 16)*q^1032 + 
(-72*zeta^2 - 30*zeta + 84)*q^1033 + (-6*zeta^2 - 6*zeta + 18)*q^1034 + 
(-24*zeta^2 - 28*zeta + 28)*q^1035 + (-4*zeta^2 + 8*zeta - 8)*q^1037 - 
6*zeta*q^1038 + (-54*zeta^2 - 6*zeta + 96)*q^1039 + (-20*zeta^2 - 12*zeta + 
16)*q^1040 + (-4*zeta^2 + 2*zeta + 12)*q^1041 + (4*zeta^2 - 20*zeta + 20)*q^1042
+ (18*zeta^2 + 24*zeta - 54)*q^1045 + (60*zeta^2 + 12*zeta - 96)*q^1046 + 
(-6*zeta^2 + 30*zeta + 72)*q^1047 + (12*zeta^2 - 32*zeta - 36)*q^1048 + 
(12*zeta^2 + 16*zeta - 16)*q^1049 + (-12*zeta^2 - 11*zeta + 11)*q^1051 + 
(-43*zeta^2 - 9*zeta + 68)*q^1053 + (-54*zeta^2 - 30*zeta + 48)*q^1054 + 
(9*zeta^2 - 27)*q^1055 + (30*zeta^2 + 54*zeta - 54)*q^1058 + (-45*zeta^2 - 
60*zeta + 135)*q^1059 + (33*zeta^2 + 33*zeta)*q^1061 + (8*zeta^2 + 24*zeta - 
24)*q^1062 + (-32*zeta^2 - 38*zeta + 38)*q^1063 + (-16*zeta^2 - 6*zeta + 
6)*q^1065 + (-22*zeta^2 + 24*zeta + 66)*q^1066 + (-3*zeta^2 + 15*zeta + 
36)*q^1067 + (-12*zeta^2 + 12*zeta + 36)*q^1069 - 12*zeta^2*q^1070 + (-24*zeta^2
- 40*zeta + 40)*q^1072 + (18*zeta^2 - 2*zeta - 54)*q^1073 + (12*zeta^2 - 
24)*q^1074 + (2*zeta^2 + 2*zeta)*q^1075 - 16*zeta^2*q^1077 + (-4*zeta^2 + 4*zeta
+ 12)*q^1080 + (66*zeta^2 + 24*zeta - 84)*q^1081 + (34*zeta^2 + 24*zeta - 
20)*q^1082 + (17*zeta^2 + 34*zeta - 51)*q^1083 + (24*zeta^2 + 18*zeta - 
18)*q^1086 + (-16*zeta^2 - 24*zeta + 48)*q^1087 + (-40*zeta^2 + 8*zeta + 
96)*q^1088 + (24*zeta^2 + 48*zeta + 48)*q^1089 + 10*zeta*q^1090 + (-12*zeta^2 + 
12*zeta - 12)*q^1091 + (-12*zeta^2 + 38*zeta - 38)*q^1093 + (-12*zeta^2 + 
32*zeta + 36)*q^1094 + (-12*zeta - 24)*q^1095 + (48*zeta^2 - 96)*q^1096 + 
(14*zeta^2 - 24*zeta - 42)*q^1097 + (-16*zeta^2 - 16*zeta + 16)*q^1098 + 
(-41*zeta^2 - 44*zeta + 123)*q^1101 + (-84*zeta^2 - 48*zeta + 72)*q^1102 + 
(68*zeta^2 + 12*zeta - 112)*q^1103 + (-16*zeta^2 - 40*zeta + 48)*q^1104 + 
(16*zeta^2 + 19*zeta - 19)*q^1105 + (10*zeta^2 + 18*zeta - 18)*q^1107 + 
(-22*zeta^2 - 40*zeta - 36)*q^1109 + (6*zeta^2 - 10*zeta - 32)*q^1110 + 
(42*zeta^2 + 60*zeta - 126)*q^1111 + (48*zeta^2 + 36*zeta - 36)*q^1112 + 
(24*zeta^2 - 4*zeta + 4)*q^1114 + (3*zeta^2 - 30*zeta - 9)*q^1115 + (-62*zeta^2 
+ 4*zeta + 132)*q^1117 + (-4*zeta^2 + 12*zeta + 12)*q^1118 + (4*zeta^2 + 8*zeta 
- 8)*q^1119 + (36*zeta^2 + 24*zeta - 24)*q^1121 + (-52*zeta^2 - 74*zeta + 
156)*q^1122 + (-79*zeta^2 - 21*zeta + 116)*q^1123 + 4*zeta*q^1125 + (-4*zeta^2 +
44*zeta - 44)*q^1126 + (-12*zeta^2 - 12*zeta + 12)*q^1128 + (-5*zeta^2 - 36*zeta
+ 15)*q^1129 + (-22*zeta^2 - 10*zeta + 24)*q^1130 + (17*zeta^2 + 13*zeta - 
8)*q^1131 + (42*zeta^2 + 9*zeta - 9)*q^1133 + (-18*zeta^2 - 21*zeta + 21)*q^1135
+ (-24*zeta^2 - 16*zeta + 72)*q^1136 + (2*zeta^2 - 2*zeta - 8)*q^1137 + 
(-44*zeta^2 - 20*zeta + 48)*q^1138 + (-14*zeta^2 + 18*zeta + 42)*q^1139 + 
(-52*zeta^2 - 40*zeta + 40)*q^1142 + (12*zeta^2 - 16*zeta - 36)*q^1143 + 
(8*zeta^2 - 12*zeta - 40)*q^1144 + (28*zeta^2 - 6*zeta - 68)*q^1145 + 
(-30*zeta^2 - 54*zeta + 90)*q^1146 + (24*zeta^2 + 30*zeta - 30)*q^1147 + 
(-20*zeta^2 - 4*zeta + 4)*q^1149 + (2*zeta^2 - 12*zeta - 6)*q^1150 + (12*zeta^2 
- 24)*q^1151 + (32*zeta^2 + 32*zeta)*q^1152 + (42*zeta^2 + 32*zeta - 126)*q^1153
+ (-6*zeta^2 - 24*zeta + 24)*q^1154 + (24*zeta^2 - 16*zeta - 72)*q^1157 + 
(32*zeta + 64)*q^1158 + (-24*zeta^2 + 48)*q^1159 + (-16*zeta^2 + 12*zeta + 
48)*q^1160 + (4*zeta^2 + 6*zeta - 6)*q^1161 + (28*zeta^2 - 2*zeta + 2)*q^1163 + 
(8*zeta^2 + 12*zeta + 8)*q^1165 + (-6*zeta^2 + 18*zeta + 48)*q^1166 + 
(-41*zeta^2 - 62*zeta + 123)*q^1167 + (48*zeta^2 + 48*zeta - 48)*q^1168 + 
(-8*zeta^2 - 20*zeta + 20)*q^1170 + (-5*zeta^2 + 48*zeta + 15)*q^1171 + 
(-34*zeta - 68)*q^1173 + (36*zeta^2 - 24*zeta - 108)*q^1174 + (-6*zeta^2 - 
9*zeta + 9)*q^1175 + (-60*zeta^2 - 18*zeta + 18)*q^1177 + (36*zeta^2 - 72*zeta -
108)*q^1178 + (44*zeta^2 + 12*zeta - 64)*q^1179 + (10*zeta^2 - 54*zeta - 
30)*q^1181 + (-20*zeta^2 + 2*zeta - 2)*q^1182 + (19*zeta^2 + 26*zeta - 
57)*q^1185 + (36*zeta^2 + 6*zeta - 60)*q^1186 + (-40*zeta^2 - 36*zeta + 
8)*q^1187 + (34*zeta^2 + 64*zeta - 64)*q^1189 + (8*zeta^2 + 3*zeta - 3)*q^1191 +
(-8*zeta^2 - 48*zeta + 24)*q^1192 + (29*zeta^2 - zeta - 60)*q^1193 + (-2*zeta^2 
- 10*zeta - 16)*q^1194 + (-9*zeta^2 + 12*zeta + 27)*q^1195 + (-30*zeta^2 - 
34*zeta + 34)*q^1198 + (15*zeta^2 + 20*zeta - 45)*q^1199 + (-4*zeta^2 + 4*zeta +
16)*q^1200 + (67*zeta^2 + 31*zeta - 72)*q^1201 + (24*zeta^2 + 12*zeta - 
72)*q^1202 + (-14*zeta^2 - 9*zeta + 9)*q^1203 + (18*zeta^2 + 6*zeta - 6)*q^1205 
+ (16*zeta^2 - 24*zeta - 48)*q^1206 + (22*zeta^2 - 18*zeta - 80)*q^1207 + 
(-20*zeta^2 - 24*zeta - 8)*q^1208 + (-6*zeta^2 + 18*zeta + 18)*q^1209 + 
(-12*zeta^2 + 12*zeta - 12)*q^1210 + (4*zeta^2 - 42*zeta - 12)*q^1213 + 
(-16*zeta^2 + 14*zeta + 60)*q^1214 + (-8*zeta^2 - 16*zeta - 16)*q^1215 + 
(48*zeta^2 - 144)*q^1216 + (-6*zeta^2 + 27*zeta - 27)*q^1217 + (-36*zeta^2 - 
42*zeta + 42)*q^1219 + (18*zeta^2 - 44*zeta - 124)*q^1221 + (54*zeta^2 + 24*zeta
- 60)*q^1222 + (-9*zeta^2 - 18*zeta + 27)*q^1223 + (-48*zeta^2 - 40*zeta + 
40)*q^1224 + (20*zeta^2 - 28*zeta + 28)*q^1226 + (18*zeta^2 + 24*zeta - 
54)*q^1227 + (36*zeta^2 - 24*zeta - 120)*q^1229 + (2*zeta^2 + 8*zeta - 6)*q^1230
+ (-52*zeta^2 - 46*zeta + 46)*q^1231 + (48*zeta^2 + 48*zeta - 48)*q^1233 + 
(-2*zeta^2 - 12*zeta + 6)*q^1234 + (-30*zeta^2 - 18*zeta + 24)*q^1235 + 
(6*zeta^2 - 18)*q^1237 + (-48*zeta^2 - 38*zeta + 38)*q^1238 + (-24*zeta^2 - 
36*zeta + 36)*q^1240 + (36*zeta^2 + 12*zeta - 108)*q^1241 + (30*zeta^2 + 14*zeta
- 32)*q^1242 + (4*zeta^2 - 2*zeta - 12)*q^1243 + (16*zeta^2 + 22*zeta - 
22)*q^1247 + (-26*zeta^2 - 6*zeta + 40)*q^1249 + (-2*zeta^2 + 4)*q^1250 + 
(12*zeta^2 + 48*zeta - 36)*q^1251 + (-84*zeta^2 - 24*zeta + 24)*q^1254 + 
(4*zeta^2 + 30*zeta - 12)*q^1255 + (64*zeta^2 - 8*zeta - 144)*q^1256 + 
(-6*zeta^2 - 12*zeta - 12)*q^1257 + (18*zeta^2 + 40*zeta - 54)*q^1258 + 
(12*zeta^2 + 58*zeta - 58)*q^1259 + (-36*zeta^2 - 69*zeta + 69)*q^1261 + 
(-36*zeta^2 + 34*zeta + 108)*q^1262 + (-19*zeta^2 + 19*zeta + 76)*q^1263 + 
(-20*zeta^2 + 28*zeta + 96)*q^1264 + (-14*zeta^2 - 18*zeta + 42)*q^1265 - 
18*zeta^2*q^1266 + (9*zeta^2 - 12*zeta - 27)*q^1269 + (14*zeta^2 + 6*zeta - 
16)*q^1270 + (-78*zeta^2 - 30*zeta + 96)*q^1271 + (12*zeta^2 + 24*zeta - 
36)*q^1272 + (-36*zeta^2 - 60*zeta + 60)*q^1273 + (-8*zeta^2 - zeta + 1)*q^1275 
+ (55*zeta^2 + 37*zeta - 36)*q^1277 + (-8*zeta^2 - 24*zeta - 32)*q^1278 + 
(-36*zeta^2 - 14*zeta + 108)*q^1279 + (-24*zeta^2 - 40*zeta + 40)*q^1282 + 
(-12*zeta^2 - 36*zeta + 36)*q^1283 + (-6*zeta^2 - 18*zeta - 24)*q^1285 + 
(18*zeta^2 + 30*zeta - 54)*q^1286 + (20*zeta^2 + 8*zeta - 8)*q^1287 + 
(-32*zeta^2 - 68*zeta + 68)*q^1289 + (-4*zeta^2 - 4*zeta + 12)*q^1290 + 
(40*zeta^2 - 80)*q^1291 + (19*zeta^2 + 10*zeta - 57)*q^1293 + (40*zeta^2 + 
28*zeta - 28)*q^1294 + (48*zeta^2 + 44*zeta - 44)*q^1296 + (32*zeta^2 + 42*zeta 
- 96)*q^1297 + (-10*zeta^2 + 26*zeta + 72)*q^1298 + (6*zeta^2 - 30*zeta - 
72)*q^1299 + (18*zeta^2 + 10*zeta - 10)*q^1301 + (42*zeta^2 + 26*zeta - 
26)*q^1303 + (12*zeta^2 - 24*zeta - 36)*q^1304 + (-28*zeta^2 - 16*zeta + 
24)*q^1305 + (-60*zeta^2 - 24*zeta + 72)*q^1306 + (3*zeta^2 + 30*zeta - 
9)*q^1307 + (16*zeta^2 + 22*zeta - 22)*q^1310 + (-24*zeta^2 - 60*zeta + 
72)*q^1311 + (18*zeta^2 - 6*zeta - 48)*q^1313 + 48*zeta*q^1314 + (-32*zeta^2 - 
26*zeta + 26)*q^1315 + (2*zeta^2 - 12*zeta + 12)*q^1317 + (24*zeta^2 - 6*zeta - 
72)*q^1318 + (-54*zeta^2 - 6*zeta + 96)*q^1319 + (-8*zeta^2 + 20*zeta + 
56)*q^1320 + (24*zeta^2 - 68*zeta - 72)*q^1321 + (24*zeta^2 - 12*zeta + 
12)*q^1322 + 6*zeta*q^1325 + (-16*zeta^2 + 10*zeta + 52)*q^1326 + (32*zeta^2 + 
38*zeta + 12)*q^1327 + (-40*zeta^2 - 18*zeta + 18)*q^1329 + (-52*zeta^2 - 
19*zeta + 19)*q^1331 + (-24*zeta^2 - 12*zeta + 24)*q^1333 + (106*zeta^2 + 
54*zeta - 104)*q^1334 + (-8*zeta^2 - 16*zeta + 24)*q^1335 + (20*zeta^2 + 8*zeta 
- 8)*q^1336 + (54*zeta^2 + 30*zeta - 30)*q^1338 + (-51*zeta^2 + 48*zeta + 
153)*q^1339 + (40*zeta^2 - 8*zeta - 96)*q^1341 + (-12*zeta^2 - 16*zeta + 
36)*q^1342 + (-54*zeta^2 - 11*zeta + 11)*q^1343 + (6*zeta^2 + 18*zeta - 
18)*q^1345 + (-12*zeta^2 - 24*zeta + 36)*q^1346 + (-27*zeta^2 + 31*zeta + 
116)*q^1347 + (-36*zeta^2 - 24*zeta + 108)*q^1349 + (-2*zeta^2 - 4*zeta + 
4)*q^1350 + (8*zeta^2 - 16*zeta + 16)*q^1352 + (16*zeta^2 + 22*zeta - 48)*q^1353
+ (76*zeta^2 + 30*zeta - 92)*q^1354 + (4*zeta^2 - 12*zeta - 32)*q^1355 + 
(-32*zeta^2 - 26*zeta + 26)*q^1357 + (4*zeta^2 - 20*zeta + 20)*q^1359 + 
(-4*zeta^2 - 24*zeta + 12)*q^1360 + (-72*zeta^2 - 42*zeta + 60)*q^1361 + 
(18*zeta^2 - 12*zeta - 60)*q^1362 + (33*zeta^2 - 42*zeta - 99)*q^1363 + 
(24*zeta^2 + 52*zeta - 52)*q^1366 + (-30*zeta^2 + 4*zeta + 90)*q^1367 + 
(48*zeta^2 + 48*zeta)*q^1368 + (-39*zeta^2 - 15*zeta + 48)*q^1369 + 
24*zeta*q^1370 + (38*zeta^2 + 16*zeta - 16)*q^1371 + (10*zeta^2 + 16*zeta - 
16)*q^1373 + (46*zeta^2 + 80*zeta - 138)*q^1374 + (-zeta^2 + 3*zeta + 8)*q^1375 
+ (37*zeta^2 + 18*zeta - 111)*q^1377 + (-12*zeta^2 - 30*zeta + 30)*q^1378 + 
(2*zeta^2 + 48*zeta - 6)*q^1381 + (28*zeta^2 + 4*zeta - 48)*q^1382 + (-20*zeta^2
+ 44*zeta + 128)*q^1383 + (-12*zeta^2 + 12*zeta + 36)*q^1384 + (30*zeta^2 + 
24*zeta - 24)*q^1385 + (72*zeta^2 + 72*zeta - 72)*q^1387 + (4*zeta^2 - 40*zeta -
88)*q^1389 + (-18*zeta^2 + 6*zeta + 48)*q^1390 + (6*zeta^2 + 24*zeta - 
18)*q^1391 + (8*zeta^2 - 12*zeta + 12)*q^1392 + (-32*zeta^2 - 38*zeta + 
38)*q^1394 + (12*zeta^2 - 24*zeta - 36)*q^1395 + (-2*zeta^2 + 4)*q^1397 + 
(-28*zeta^2 - 32*zeta + 84)*q^1398 + (32*zeta^2 + 38*zeta - 38)*q^1399 + 
(32*zeta^2 + 7*zeta - 7)*q^1401 + (36*zeta^2 - 42*zeta - 108)*q^1402 + 
(28*zeta^2 + 4*zeta - 48)*q^1403 + (-9*zeta^2 - 16*zeta + 27)*q^1405 + 
(24*zeta^2 - 12*zeta + 12)*q^1406 + (-48*zeta^2 - 16*zeta + 16)*q^1408 + 
(-33*zeta^2 + 20*zeta + 99)*q^1409 + (6*zeta^2 - 12)*q^1410 + (72*zeta^2 + 
64*zeta - 64)*q^1413 + (-22*zeta^2 - 31*zeta + 31)*q^1415 + (20*zeta^2 + 32*zeta
- 60)*q^1416 + (-25*zeta^2 - 15*zeta + 20)*q^1417 + (-34*zeta^2 + 68)*q^1418 + 
(-14*zeta^2 - 20*zeta + 42)*q^1419 + (-48*zeta^2 - 20*zeta + 20)*q^1422 + 
(10*zeta^2 + 24*zeta - 30)*q^1423 + (-32*zeta^2 - 32*zeta)*q^1424 + (-6*zeta^2 +
6*zeta + 24)*q^1425 + (-48*zeta^2 + 84*zeta + 144)*q^1426 + (-6*zeta^2 + 13*zeta
- 13)*q^1427 + (24*zeta^2 + 30*zeta - 30)*q^1429 + (6*zeta^2 + 10*zeta - 
18)*q^1430 + (-12*zeta^2 - 6*zeta + 12)*q^1431 + (-48*zeta^2 - 24*zeta + 
48)*q^1432 + (3*zeta^2 + 30*zeta - 9)*q^1433 + (-6*zeta^2 - 12*zeta + 12)*q^1434
+ (-22*zeta^2 - 38*zeta + 66)*q^1437 + (-38*zeta^2 - 30*zeta + 16)*q^1438 + 
(-65*zeta^2 - 9*zeta + 112)*q^1439 + (14*zeta^2 + 2*zeta - 2)*q^1441 - 
14*zeta^2*q^1443 + (10*zeta^2 - 2*zeta - 24)*q^1445 + (-18*zeta^2 + 42*zeta + 
120)*q^1446 + (-9*zeta^2 - 74*zeta + 27)*q^1447 + (-24*zeta^2 - 60*zeta + 
60)*q^1448 + (-6*zeta^2 - 14*zeta + 14)*q^1450 + (-42*zeta^2 - 16*zeta + 
126)*q^1451 + (-4*zeta^2 + 8*zeta + 24)*q^1453 + (-16*zeta^2 - 36*zeta + 
48)*q^1454 + (-12*zeta^2 - 9*zeta + 9)*q^1455 + (54*zeta^2 + 90*zeta - 
90)*q^1457 + (4*zeta^2 + 42*zeta - 12)*q^1458 + (-18*zeta^2 - 18*zeta)*q^1459 + 
(-44*zeta^2 - 46*zeta + 132)*q^1461 + (4*zeta^2 - 8*zeta + 8)*q^1462 + 
(-16*zeta^2 - 8*zeta + 8)*q^1464 + (-13*zeta^2 + 18*zeta + 39)*q^1465 + 
(12*zeta^2 + 42*zeta + 60)*q^1466 + (36*zeta^2 + 12*zeta - 48)*q^1467 + 
(-42*zeta^2 - 70*zeta + 70)*q^1469 + (60*zeta^2 + 78*zeta - 78)*q^1471 + 
(-48*zeta^2 + 16*zeta + 144)*q^1472 + (-9*zeta^2 - 31*zeta - 44)*q^1473 + 
(-2*zeta^2 - 2*zeta)*q^1474 + (2*zeta^2 + 6*zeta - 6)*q^1475 + (26*zeta^2 + 
50*zeta - 50)*q^1478 + (11*zeta^2 + 32*zeta - 33)*q^1479 + (-4*zeta^2 - 12*zeta 
- 16)*q^1480 + (49*zeta^2 + 9*zeta - 80)*q^1481 + (24*zeta^2 + 12*zeta - 
72)*q^1482 + (22*zeta^2 + 13*zeta - 13)*q^1483 + (2*zeta^2 + zeta - 1)*q^1485 + 
(-18*zeta^2 - 48*zeta + 54)*q^1486 + (15*zeta^2 - 15*zeta - 60)*q^1487 + 
(24*zeta^2 - 48)*q^1488 + (-54*zeta^2 + 26*zeta + 162)*q^1489 + (24*zeta^2 + 
20*zeta - 20)*q^1490 + (-60*zeta^2 - 4*zeta + 180)*q^1493 + (38*zeta^2 + 20*zeta
- 36)*q^1495 + (-44*zeta^2 - 60*zeta + 132)*q^1496 + (-6*zeta^2 - 3*zeta + 
3)*q^1497 + (28*zeta^2 + 61*zeta - 61)*q^1499 + (-30*zeta^2 + 42*zeta + 
144)*q^1501 + (-54*zeta^2 - 12*zeta + 84)*q^1502 + (12*zeta^2 + 20*zeta - 
36)*q^1503 + (-68*zeta^2 - 30*zeta + 30)*q^1506 + (36*zeta^2 + 48*zeta - 
108)*q^1507 + (37*zeta^2 - 31*zeta - 136)*q^1509 + (12*zeta^2 + 2*zeta - 
36)*q^1510 + (-30*zeta^2 - 54*zeta + 54)*q^1511 + (48*zeta^2 + 40*zeta - 
40)*q^1513 + (12*zeta^2 + 16*zeta - 36)*q^1514 + (-6*zeta^2 + 18*zeta + 
48)*q^1515 + (-14*zeta^2 + 42)*q^1517 + (64*zeta^2 + 18*zeta - 18)*q^1518 + 
(24*zeta - 24)*q^1520 + (24*zeta^2 + 8*zeta - 72)*q^1521 + (-18*zeta^2 - 
18*zeta)*q^1522 + (-44*zeta^2 + 12*zeta + 112)*q^1523 + (-4*zeta^2 - 4*zeta + 
4)*q^1525 + (22*zeta^2 - 4*zeta + 4)*q^1527 + (-48*zeta^2 - 12*zeta + 
144)*q^1528 + (-18*zeta^2 + 48*zeta + 132)*q^1529 + (20*zeta^2 - 4*zeta - 
48)*q^1530 + (24*zeta^2 - 40*zeta - 72)*q^1531 + (-14*zeta + 14)*q^1534 + 
(-21*zeta^2 + 14*zeta + 63)*q^1535 + (32*zeta + 64)*q^1536 + (-42*zeta^2 - 
24*zeta + 36)*q^1537 + (4*zeta^2 - 12*zeta - 12)*q^1538 + (72*zeta^2 + 66*zeta -
66)*q^1539 + (44*zeta^2 + 74*zeta - 74)*q^1541 + (48*zeta^2 + 60*zeta - 
144)*q^1542 + (15*zeta^2 - 15*zeta - 60)*q^1543 + (-64*zeta^2 + 128)*q^1544 + 
(9*zeta^2 + 24*zeta - 27)*q^1545 - 30*zeta^2*q^1546 + (8*zeta^2 - 12*zeta - 
24)*q^1549 + (18*zeta^2 + 6*zeta - 24)*q^1550 + (3*zeta^2 - 9*zeta - 24)*q^1551 
+ (-36*zeta^2 + 24*zeta + 108)*q^1552 + (30*zeta^2 + 47*zeta - 47)*q^1553 + 
(10*zeta - 10)*q^1555 + (-24*zeta^2 - 12*zeta + 24)*q^1557 + (60*zeta^2 + 
36*zeta - 48)*q^1558 + (34*zeta^2 - 102)*q^1559 + (4*zeta^2 - 4*zeta + 4)*q^1560
+ (52*zeta^2 + 16*zeta - 16)*q^1562 + (26*zeta^2 + 28*zeta - 78)*q^1563 + 
(-27*zeta^2 + 3*zeta + 60)*q^1565 + (14*zeta^2 - 22*zeta - 42)*q^1566 + 
(-8*zeta^2 - 20*zeta + 20)*q^1567 + (36*zeta^2 + 24*zeta - 24)*q^1569 + 
(4*zeta^2 + 36*zeta - 12)*q^1570 + (-38*zeta^2 - 2*zeta + 72)*q^1571 + 
(-6*zeta^2 + 60*zeta + 18)*q^1573 + (-66*zeta^2 - 48*zeta + 48)*q^1574 + 
(-48*zeta^2 - 52*zeta + 52)*q^1576 + (32*zeta^2 - 44*zeta - 152)*q^1578 + 
(15*zeta^2 + 39*zeta + 48)*q^1579 + (6*zeta^2 - 12*zeta + 12)*q^1581 + 
(-60*zeta^2 - 54*zeta + 54)*q^1583 + (-32*zeta^2 - 48*zeta + 96)*q^1584 + 
(-2*zeta^2 + 6*zeta + 16)*q^1585 + (20*zeta^2 + 12*zeta - 16)*q^1586 + 
(-9*zeta^2 + 6*zeta + 27)*q^1587 + (-12*zeta^2 - 6*zeta + 6)*q^1590 + (4*zeta^2 
+ 12*zeta - 12)*q^1591 + (28*zeta^2 + 4*zeta - 48)*q^1592 + (-6*zeta^2 - 4*zeta 
+ 4)*q^1593 + (54*zeta^2 + 34*zeta - 162)*q^1594 + (12*zeta^2 + 5*zeta - 
5)*q^1595 + (-58*zeta + 58)*q^1597 + (-12*zeta^2 + 30*zeta + 36)*q^1598 + 
(-12*zeta^2 - 10*zeta + 4)*q^1599 + (8*zeta^2 + 8*zeta)*q^1600 + (10*zeta^2 + 
72*zeta - 30)*q^1601 + (-32*zeta + 32)*q^1602 + (-18*zeta^2 - 24*zeta + 
54)*q^1605 + (-12*zeta^2 + 36*zeta + 96)*q^1606 + (-6*zeta^2 - 24*zeta - 
36)*q^1607 + (4*zeta^2 - 8*zeta - 12)*q^1608 + (32*zeta^2 - 4*zeta + 4)*q^1609 +
(-24*zeta^2 - 48*zeta + 48)*q^1611 + (54*zeta^2 + 42*zeta - 24)*q^1613 + 
(-6*zeta^2 - 18*zeta - 24)*q^1614 + (-6*zeta^2 - 36*zeta + 18)*q^1615 + 
(-48*zeta^2 - 24*zeta + 24)*q^1616 + (-18*zeta^2 - 74*zeta + 74)*q^1618 + 
(27*zeta^2 + 8*zeta - 81)*q^1619 + (-4*zeta^2 + 8*zeta + 24)*q^1621 + 
(-50*zeta^2 + 24*zeta + 150)*q^1622 + (-14*zeta^2 + 5*zeta - 5)*q^1623 + 
(-2*zeta^2 - 5*zeta + 5)*q^1625 + (40*zeta^2 + 56*zeta - 120)*q^1626 + 
(-58*zeta^2 - 42*zeta + 32)*q^1627 + (36*zeta^2 - 24*zeta - 108)*q^1629 + 
(12*zeta^2 + 18*zeta - 18)*q^1630 + (32*zeta^2 + 12*zeta - 96)*q^1633 + 
(24*zeta^2 - 48)*q^1634 + (-5*zeta^2 + 5*zeta + 20)*q^1635 + (-42*zeta^2 - 
21*zeta + 21)*q^1637 + (60*zeta^2 + 16*zeta - 16)*q^1639 + (12*zeta^2 - 8*zeta -
36)*q^1640 + (-16*zeta^2 + 4*zeta + 40)*q^1641 + (42*zeta^2 + 12*zeta - 
60)*q^1642 + (18*zeta^2 - 36*zeta - 54)*q^1643 + (8*zeta^2 + 26*zeta - 
26)*q^1646 + (4*zeta^2 - 4*zeta - 12)*q^1647 + (84*zeta^2 + 60*zeta - 48)*q^1648
+ (57*zeta^2 + 9*zeta - 96)*q^1649 + (-10*zeta^2 - 14*zeta + 30)*q^1650 + 
(26*zeta^2 + 44*zeta - 44)*q^1651 + (12*zeta^2 - 18*zeta + 18)*q^1653 + 
(34*zeta^2 - 36*zeta - 102)*q^1654 + (38*zeta^2 + 2*zeta - 72)*q^1655 + 
(-64*zeta^2 - 48*zeta + 32)*q^1656 + (-21*zeta^2 + 18*zeta + 63)*q^1657 + 
(-60*zeta^2 - 26*zeta + 26)*q^1658 + (27*zeta^2 + 40*zeta - 81)*q^1661 + 
(-30*zeta^2 + 42*zeta + 144)*q^1662 + (-10*zeta^2 - 46*zeta - 72)*q^1663 + 
(-16*zeta^2 + 48*zeta + 48)*q^1664 + (8*zeta^2 - 4*zeta + 4)*q^1665 + 
(-38*zeta^2 - 20*zeta + 20)*q^1667 + (48*zeta^2 + 30*zeta - 36)*q^1669 + 
(-4*zeta^2 + 6*zeta + 20)*q^1670 + (40*zeta^2 + 52*zeta - 120)*q^1671 + 
(-72*zeta^2 - 24*zeta + 24)*q^1672 + (24*zeta^2 + 42*zeta - 42)*q^1674 + 
(4*zeta^2 - 6*zeta - 12)*q^1675 + (-6*zeta^2 + 2*zeta + 16)*q^1677 + (-18*zeta^2
- 72*zeta + 54)*q^1678 + (-72*zeta^2 - 84*zeta + 84)*q^1679 + (-24*zeta^2 - 
5*zeta + 5)*q^1681 + (48*zeta^2 - 24*zeta - 144)*q^1682 + (16*zeta^2 - 44*zeta -
120)*q^1683 + (18*zeta^2 - 6*zeta - 54)*q^1685 + (50*zeta^2 + 16*zeta - 
16)*q^1686 + (-36*zeta^2 - 36*zeta + 36)*q^1688 + (-50*zeta^2 - 52*zeta + 
150)*q^1689 + (8*zeta^2 + 12*zeta + 8)*q^1690 + (-48*zeta^2 - 48*zeta)*q^1691 + 
(6*zeta^2 + 15*zeta - 15)*q^1693 + (-2*zeta^2 - 6*zeta + 6)*q^1695 + (18*zeta^2 
- 30*zeta - 96)*q^1697 + (22*zeta^2 - 4*zeta - 52)*q^1698 + (24*zeta^2 - 54*zeta
- 72)*q^1699 + (-12*zeta^2 + 20*zeta - 20)*q^1702 + (-30*zeta^2 + 34*zeta + 
90)*q^1703 + (8*zeta^2 - 32*zeta - 80)*q^1704 + (-6*zeta - 12)*q^1705 + 
(-24*zeta^2 - 12*zeta + 72)*q^1706 + (-4*zeta^2 - 12*zeta + 12)*q^1707 + 
(28*zeta^2 + 19*zeta - 19)*q^1709 + (-24*zeta^2 + 72)*q^1710 + (-20*zeta^2 - 
18*zeta + 4)*q^1711 + (24*zeta^2 - 24*zeta - 96)*q^1712 + (-38*zeta^2 - 64*zeta 
+ 114)*q^1713 + (28*zeta^2 + 40*zeta - 40)*q^1714 + (-42*zeta^2 - 48*zeta + 
126)*q^1717 + (-28*zeta^2 - 52*zeta - 48)*q^1718 + (-36*zeta^2 - 48*zeta - 
24)*q^1719 - 8*zeta*q^1720 + (-36*zeta^2 - 6*zeta + 6)*q^1721 + (6*zeta^2 + 
34*zeta - 34)*q^1723 + (6*zeta^2 - 4*zeta - 20)*q^1725 + (-26*zeta^2 - 
26*zeta)*q^1726 + (62*zeta^2 + 84*zeta - 186)*q^1727 + (16*zeta^2 + 24*zeta - 
24)*q^1728 + (-6*zeta^2 - 12*zeta + 12)*q^1730 + (15*zeta^2 + 12*zeta - 
45)*q^1731 + (74*zeta^2 + 66*zeta - 16)*q^1733 + (16*zeta^2 + 28*zeta - 
48)*q^1734 + (10*zeta^2 + 16*zeta - 16)*q^1735 + (-64*zeta^2 - 64*zeta + 
64)*q^1737 + (-64*zeta^2 - 90*zeta + 192)*q^1738 + (18*zeta^2 + 12*zeta - 
12)*q^1739 + (-30*zeta^2 + 66*zeta + 90)*q^1741 + (36*zeta^2 + 62*zeta - 
62)*q^1742 + (20*zeta - 20)*q^1744 + (-6*zeta^2 - 24*zeta + 18)*q^1745 + 
(-60*zeta^2 - 36*zeta + 48)*q^1746 + (-6*zeta^2 - 24*zeta - 36)*q^1747 + 
(-42*zeta^2 - 12*zeta + 12)*q^1749 + (-84*zeta^2 - 87*zeta + 87)*q^1751 + 
(24*zeta^2 + 48*zeta - 72)*q^1752 + (81*zeta^2 + 75*zeta - 12)*q^1753 + 
(-36*zeta^2 + 24*zeta + 120)*q^1754 + (5*zeta^2 - 8*zeta - 15)*q^1755 + 
(-10*zeta^2 - 18*zeta + 18)*q^1758 + (74*zeta^2 - 222)*q^1759 + (12*zeta^2 + 
24*zeta + 24)*q^1761 + (24*zeta^2 - 72*zeta - 72)*q^1762 + (-12*zeta^2 - 16*zeta
+ 16)*q^1763 + (30*zeta^2 + 15*zeta - 15)*q^1765 + (-12*zeta^2 - 80*zeta + 
36)*q^1766 + (36*zeta^2 - 72)*q^1767 + (44*zeta^2 + 32*zeta - 24)*q^1768 + 
(16*zeta^2 - 12*zeta - 48)*q^1769 + (-16*zeta^2 - 6*zeta + 6)*q^1770 + (4*zeta^2
- 48*zeta - 12)*q^1773 + (-4*zeta^2 + 24*zeta + 56)*q^1774 + (-2*zeta^2 - 6*zeta
- 8)*q^1775 + (32*zeta^2 + 40*zeta - 96)*q^1776 + (-16*zeta^2 + 2*zeta - 
2)*q^1777 + (24*zeta^2 + 15*zeta - 15)*q^1779 + (-60*zeta^2 - 36*zeta + 
48)*q^1781 + (-14*zeta^2 + 40*zeta + 108)*q^1782 + (-75*zeta^2 - 2*zeta + 
225)*q^1783 + (-12*zeta^2 - 72*zeta + 72)*q^1784 + (-36*zeta^2 - 72*zeta + 
72)*q^1786 + (48*zeta^2 - 20*zeta - 144)*q^1787 + (-12*zeta^2 - 36*zeta - 
48)*q^1789 + (12*zeta^2 - 12*zeta - 36)*q^1790 + (24*zeta^2 + 28*zeta - 
28)*q^1791 + 6*zeta^2*q^1793 + (-22*zeta^2 - 4*zeta + 66)*q^1794 + (16*zeta^2 - 
32)*q^1795 + (-11*zeta^2 - 26*zeta + 33)*q^1797 + (84*zeta^2 + 150*zeta - 
150)*q^1798 + (8*zeta - 8)*q^1800 + (41*zeta^2 - 48*zeta - 123)*q^1801 + 
(30*zeta^2 - 6*zeta - 72)*q^1802 + (-6*zeta^2 + 30*zeta + 72)*q^1803 + (17*zeta 
- 17)*q^1805 + (-6*zeta^2 - 36*zeta + 36)*q^1807 + (-24*zeta^2 + 40*zeta + 
72)*q^1808 + (24*zeta^2 + 10*zeta - 28)*q^1809 + (30*zeta^2 + 18*zeta - 
24)*q^1810 + (14*zeta^2 + 60*zeta - 42)*q^1811 + (-12*zeta^2 - 66*zeta + 
66)*q^1814 + (-30*zeta^2 - 36*zeta + 90)*q^1815 + (-48*zeta^2 - 36*zeta + 
24)*q^1816 + (28*zeta^2 - 30*zeta - 116)*q^1817 + (-24*zeta^2 - 48*zeta + 
72)*q^1818 + (48*zeta^2 + 6*zeta - 6)*q^1819 + (-44*zeta^2 - 15*zeta + 
15)*q^1821 + (8*zeta^2 - 24)*q^1822 + (-45*zeta^2 - 51*zeta - 12)*q^1823 + 
12*zeta*q^1825 + (6*zeta^2 - 24*zeta - 18)*q^1829 + (4*zeta^2 - 4*zeta - 
16)*q^1830 + (33*zeta^2 + 33*zeta)*q^1831 + (68*zeta^2 + 24*zeta - 204)*q^1832 +
(6*zeta^2 + 15*zeta - 15)*q^1833 + (38*zeta^2 + 35*zeta - 35)*q^1835 + 
(-11*zeta^2 + 27*zeta + 76)*q^1837 + (-10*zeta^2 - 36*zeta - 52)*q^1838 + 
(58*zeta^2 + 68*zeta - 174)*q^1839 + (-8*zeta^2 - 32*zeta + 32)*q^1840 + 
(14*zeta^2 - 14*zeta + 14)*q^1842 + (-54*zeta^2 + 36*zeta + 162)*q^1843 + 
(20*zeta^2 + 12*zeta - 16)*q^1845 - 28*zeta*q^1846 + (96*zeta^2 + 100*zeta - 
100)*q^1847 + (39*zeta - 39)*q^1849 + (6*zeta^2 + 4*zeta - 18)*q^1850 + 
(6*zeta^2 - 8*zeta - 28)*q^1851 + (-5*zeta^2 - 30*zeta + 15)*q^1853 + (24*zeta^2
+ 84*zeta - 84)*q^1854 + (64*zeta^2 + 88*zeta - 88)*q^1856 + (-34*zeta^2 - 
58*zeta + 102)*q^1857 + (66*zeta^2 - 18*zeta - 168)*q^1858 + (-14*zeta^2 + 
30*zeta + 88)*q^1859 + (-50*zeta^2 - 62*zeta + 62)*q^1861 + (-70*zeta^2 - 
76*zeta + 76)*q^1863 + (-8*zeta^2 - 48*zeta + 24)*q^1864 + (20*zeta^2 + 8*zeta -
24)*q^1865 + (-20*zeta - 40)*q^1866 + (9*zeta^2 + 54*zeta - 27)*q^1867 + 
(30*zeta^2 + 8*zeta - 8)*q^1870 + (21*zeta^2 - 44*zeta - 63)*q^1871 + 
(-64*zeta^2 - 16*zeta + 96)*q^1872 + (46*zeta^2 + 10*zeta - 72)*q^1873 + 
(22*zeta^2 - 66*zeta - 66)*q^1874 + (-2*zeta^2 - zeta + 1)*q^1875 + (8*zeta^2 + 
74*zeta - 74)*q^1877 + (-36*zeta^2 - 66*zeta + 108)*q^1878 + (-60*zeta^2 - 
18*zeta + 84)*q^1879 + (-24*zeta^2 - 12*zeta + 24)*q^1880 + (-48*zeta^2 - 
72*zeta + 144)*q^1881 + (-24*zeta^2 - 48*zeta + 48)*q^1882 + (17*zeta^2 - 
30*zeta - 51)*q^1885 + (-76*zeta^2 - 40*zeta + 72)*q^1886 + (-20*zeta^2 + 
38*zeta + 116)*q^1887 + (18*zeta^2 + 52*zeta - 52)*q^1889 + (24*zeta^2 + 36*zeta
- 36)*q^1891 + (-17*zeta^2 - 19*zeta - 4)*q^1893 + (102*zeta^2 + 6*zeta - 
192)*q^1894 + (2*zeta^2 - 6)*q^1895 + (-76*zeta^2 - 24*zeta + 24)*q^1896 + 
(-24*zeta^2 - 60*zeta + 60)*q^1898 - 36*zeta*q^1899 + (-53*zeta^2 + 15*zeta + 
136)*q^1901 + (-20*zeta^2 - 28*zeta + 60)*q^1902 + (6*zeta^2 + 3*zeta - 
3)*q^1903 + (2*zeta^2 + 4*zeta - 4)*q^1905 + (58*zeta^2 - 24*zeta - 174)*q^1906 
+ (-75*zeta^2 + 15*zeta + 180)*q^1907 + (6*zeta^2 - 18*zeta + 18)*q^1910 + 
(36*zeta^2 + 60*zeta - 60)*q^1912 + (-48*zeta^2 + 2*zeta + 144)*q^1913 + 
(-12*zeta^2 + 26*zeta + 76)*q^1914 + (8*zeta^2 - 4*zeta - 24)*q^1915 + 
(-8*zeta^2 - 10*zeta + 10)*q^1917 + (-72*zeta^2 - 36*zeta + 36)*q^1919 + 
(-16*zeta^2 - 16*zeta + 48)*q^1920 + (50*zeta^2 + 24*zeta - 52)*q^1921 + 
(-118*zeta^2 - 72*zeta + 92)*q^1922 + (4*zeta^2 - 8*zeta - 12)*q^1923 + 
(48*zeta^2 + 24*zeta - 24)*q^1926 + (-24*zeta^2 + 30*zeta + 72)*q^1927 + 
(-12*zeta^2 + 36*zeta + 96)*q^1928 + (-15*zeta^2 + 33*zeta + 96)*q^1929 - 
32*zeta*q^1930 + (-78*zeta^2 - 48*zeta + 48)*q^1931 + (-72*zeta^2 - 70*zeta + 
70)*q^1933 + (-60*zeta^2 + 36*zeta + 180)*q^1934 + (8*zeta^2 - 16)*q^1935 + 
(72*zeta^2 - 24*zeta - 192)*q^1936 + (-32*zeta^2 + 12*zeta + 96)*q^1937 + 
(84*zeta^2 + 36*zeta - 36)*q^1938 + (32*zeta^2 + 52*zeta - 96)*q^1941 + 
(-42*zeta^2 + 18*zeta + 120)*q^1942 + (86*zeta^2 + 36*zeta - 100)*q^1943 + 
(16*zeta^2 + 64*zeta - 48)*q^1944 + (20*zeta^2 - zeta + 1)*q^1945 + (-62*zeta^2 
- 18*zeta + 18)*q^1947 + (28*zeta^2 + 46*zeta + 36)*q^1949 + (2*zeta^2 + 4*zeta 
+ 4)*q^1950 + (-36*zeta^2 - 14*zeta + 108)*q^1951 + (12*zeta^2 + 64*zeta - 
64)*q^1954 + 34*zeta*q^1955 + (126*zeta^2 + 90*zeta - 72)*q^1957 + (32*zeta^2 + 
48*zeta - 96)*q^1958 + (-12*zeta^2 - 18*zeta + 18)*q^1959 + (12*zeta^2 - 6*zeta 
+ 6)*q^1961 + (-20*zeta^2 + 60)*q^1962 + (43*zeta^2 + 9*zeta - 68)*q^1963 + 
(2*zeta^2 + 10*zeta - 6)*q^1965 + (42*zeta^2 + 12*zeta - 12)*q^1966 + (-8*zeta^2
+ 8*zeta - 8)*q^1968 + (6*zeta^2 + 12*zeta - 18)*q^1969 + (26*zeta^2 + 2*zeta - 
48)*q^1970 + (-24*zeta^2 - 12*zeta + 24)*q^1971 + (18*zeta^2 + 59*zeta - 
59)*q^1973 + (-12*zeta^2 - 5*zeta + 5)*q^1975 + (-24*zeta^2 + 72*zeta + 
72)*q^1976 + (3*zeta^2 + 21*zeta + 36)*q^1977 + (-28*zeta^2 - 4*zeta + 
48)*q^1978 + (-8*zeta^2 - 84*zeta + 24)*q^1979 + (-28*zeta^2 + 20*zeta - 
20)*q^1982 + (48*zeta^2 + 60*zeta - 144)*q^1983 + (-96*zeta^2 - 48*zeta + 
96)*q^1984 + (zeta^2 + 3*zeta + 4)*q^1985 + (32*zeta^2 + 68*zeta - 96)*q^1986 + 
(-34*zeta^2 - 43*zeta + 43)*q^1987 + (12*zeta^2 + 44*zeta - 44)*q^1989 + 
(-2*zeta^2 + 12*zeta + 6)*q^1990 + (-12*zeta^2 + 18*zeta + 60)*q^1991 + 
(-3*zeta^2 + 6*zeta + 9)*q^1993 + (18*zeta^2 + 36*zeta - 36)*q^1994 + (18*zeta^2
+ 42*zeta - 54)*q^1997 + (10*zeta^2 + 2*zeta - 16)*q^1998 + (7*zeta^2 - 5*zeta -
24)*q^1999 + (-4*zeta^2 + 12)*q^2000 + (-2*zeta^2 + 26*zeta - 26)*q^2001 + 
(8*zeta^2 + 32*zeta - 32)*q^2003 + (-13*zeta^2 - 9*zeta + 8)*q^2005 + (22*zeta^2
- 18*zeta - 80)*q^2006 + (60*zeta^2 - 12*zeta - 180)*q^2007 + (-16*zeta^2 + 
44*zeta - 44)*q^2008 + (4*zeta^2 + 6*zeta - 6)*q^2010 + (-11*zeta^2 + 24*zeta + 
33)*q^2011 + (8*zeta^2 - 20*zeta - 56)*q^2013 + (-36*zeta^2 + 108)*q^2014 + 
(30*zeta^2 + 54*zeta - 54)*q^2015 + (18*zeta^2 - 20*zeta + 20)*q^2017 + 
(48*zeta^2 + 34*zeta - 144)*q^2018 + (12*zeta^2 - 24*zeta - 72)*q^2019 + 
(-6*zeta^2 + 12*zeta + 18)*q^2021 + (-24*zeta^2 + 6*zeta - 6)*q^2022 + 
(56*zeta^2 + 20*zeta - 20)*q^2024 + (zeta^2 + 12*zeta - 3)*q^2025 + (-76*zeta^2 
- 36*zeta + 80)*q^2026 + (-94*zeta^2 - 18*zeta + 152)*q^2027 + (-32*zeta^2 - 
80*zeta + 80)*q^2029 + (16*zeta^2 + 23*zeta - 23)*q^2031 + (16*zeta^2 - 24*zeta 
- 48)*q^2032 + (36*zeta^2 - 36*zeta - 144)*q^2033 + (-64*zeta^2 - 24*zeta + 
80)*q^2034 + (18*zeta^2 + 26*zeta - 54)*q^2035 + (60*zeta^2 + 100*zeta - 
100)*q^2038 + (18*zeta^2 - 56*zeta - 54)*q^2039 + (12*zeta^2 - 16*zeta - 
56)*q^2040 + (-74*zeta^2 - 50*zeta + 48)*q^2041 + (-36*zeta^2 - 60*zeta + 
108)*q^2042 + (-12*zeta^2 - 48*zeta + 48)*q^2043 + (-12*zeta^2 - 6*zeta + 
6)*q^2045 + (18*zeta^2 + 24*zeta - 54)*q^2046 + (64*zeta^2 + 48*zeta - 
32)*q^2047 + (-16*zeta^2 - 4*zeta + 48)*q^2049 + (4*zeta^2 + 10*zeta - 
10)*q^2050 + (12*zeta^2 + 18*zeta - 36)*q^2053 + (4*zeta^2 + 22*zeta + 
36)*q^2054 + (-12*zeta^2 + 12*zeta + 48)*q^2055 + (24*zeta^2 + 72*zeta - 
72)*q^2056 + (60*zeta^2 - 18*zeta + 18)*q^2057 + (-36*zeta^2 - 38*zeta + 
38)*q^2059 + (44*zeta^2 + 68*zeta + 48)*q^2061 + (58*zeta^2 + 16*zeta - 
84)*q^2062 + (12*zeta^2 - 60*zeta - 36)*q^2063 + (16*zeta^2 + 8*zeta - 8)*q^2064
+ (-60*zeta^2 - 102*zeta + 102)*q^2066 + (12*zeta^2 + 6*zeta - 36)*q^2067 + 
(45*zeta^2 + 57*zeta + 24)*q^2069 + (24*zeta^2 - 8*zeta - 72)*q^2070 + (30*zeta 
- 30)*q^2071 + (20*zeta^2 + 12*zeta - 12)*q^2073 + (4*zeta^2 + 24*zeta - 
12)*q^2074 + (-42*zeta^2 + 60*zeta + 126)*q^2077 + (-12*zeta^2 - 60*zeta + 
60)*q^2078 - 16*zeta*q^2081 + (-10*zeta^2 - 2*zeta + 16)*q^2082 + (-50*zeta^2 - 
14*zeta + 72)*q^2083 + (-30*zeta^2 - 12*zeta + 12)*q^2085 + (-56*zeta^2 - 
86*zeta + 86)*q^2087 + (-24*zeta^2 + 64*zeta + 72)*q^2088 + (64*zeta^2 + 48*zeta
- 32)*q^2089 + (12*zeta^2 - 24*zeta - 72)*q^2090 + (-10*zeta^2 - 26*zeta + 
30)*q^2091 + (60*zeta^2 + 24*zeta - 24)*q^2094 + (-6*zeta^2 + 18*zeta + 
18)*q^2095 + (56*zeta^2 + 32*zeta - 48)*q^2096 + (40*zeta^2 - 8*zeta - 
96)*q^2097 + (-12*zeta^2 + 8*zeta + 36)*q^2098 + (-70*zeta + 70)*q^2099 + 
O(q^2100), zeta^2*q + (-zeta^2 - 2*zeta + 3)*q^2 + (zeta^2 - 2*zeta - 6)*q^3 + 
(zeta^2 + zeta - 3)*q^5 + (-4*zeta^2 - zeta + 1)*q^6 + (-4*zeta^2 - 2*zeta + 
2)*q^8 + (-2*zeta^2 - 4*zeta + 6)*q^9 + (zeta^2 - zeta - 4)*q^10 + (2*zeta^2 - 
5*zeta - 14)*q^11 + (-zeta^2 + zeta - 1)*q^13 + (3*zeta^2 + zeta - 1)*q^15 + 
(4*zeta^2 + 4*zeta - 12)*q^16 + (-3*zeta^2 + 4*zeta + 14)*q^17 + (4*zeta + 
8)*q^18 + (6*zeta^2 + 6*zeta - 18)*q^19 + (-10*zeta^2 - 3*zeta + 3)*q^22 + 
(-5*zeta^2 - 4*zeta + 15)*q^23 + (-2*zeta^2 + 6*zeta + 16)*q^24 + (zeta + 
2)*q^25 + (zeta^2 + 4*zeta - 3)*q^26 + (zeta^2 + zeta - 1)*q^27 + (5*zeta^2 + 
4*zeta - 4)*q^29 + (-3*zeta^2 - 4*zeta + 9)*q^30 + (-3*zeta^2 - 3*zeta)*q^31 + 
(-12*zeta^2 - 17*zeta + 36)*q^33 + (8*zeta^2 + zeta - 1)*q^34 + (5*zeta^2 + 
8*zeta - 15)*q^37 + (6*zeta^2 - 6*zeta - 24)*q^38 + (-2*zeta^2 + 3*zeta + 
10)*q^39 + (-2*zeta^2 - 4*zeta + 6)*q^40 + (-4*zeta^2 - 3*zeta + 3)*q^41 + 
2*zeta^2*q^43 + (2*zeta^2 - 2*zeta - 8)*q^45 + (-6*zeta^2 + 4*zeta + 20)*q^46 + 
3*zeta*q^47 + (12*zeta^2 + 4*zeta - 4)*q^48 + (2*zeta^2 + zeta - 1)*q^50 + 
(11*zeta^2 + 15*zeta - 33)*q^51 + (3*zeta^2 - 3*zeta - 12)*q^53 + (-zeta^2 + 
3)*q^54 + (7*zeta^2 + 2*zeta - 2)*q^55 + (18*zeta^2 + 6*zeta - 6)*q^57 + 
(-5*zeta^2 - 2*zeta + 15)*q^58 + (3*zeta^2 - 5*zeta - 16)*q^59 + (2*zeta^2 + 
4*zeta - 6)*q^61 + (-6*zeta^2 - 6*zeta + 6)*q^62 + 8*zeta^2*q^64 + (-2*zeta^2 - 
zeta + 6)*q^65 + (-7*zeta^2 + 17*zeta + 48)*q^66 + (-3*zeta^2 - zeta + 4)*q^67 +
(-14*zeta^2 - 5*zeta + 5)*q^69 + (-10*zeta^2 - 2*zeta + 2)*q^71 + (8*zeta^2 + 
8*zeta - 24)*q^72 + (6*zeta^2 - 6*zeta - 24)*q^73 + (2*zeta^2 - 8*zeta - 
20)*q^74 + (2*zeta^2 + 3*zeta - 6)*q^75 + (6*zeta^2 + zeta - 1)*q^78 + 
(13*zeta^2 + 19*zeta - 39)*q^79 + (4*zeta + 8)*q^80 + (6*zeta^2 - 7*zeta - 
26)*q^81 + (4*zeta^2 + 2*zeta - 12)*q^82 + (-7*zeta^2 - 3*zeta + 3)*q^85 + 
(-2*zeta^2 - 4*zeta + 6)*q^86 + (zeta^2 - 6*zeta - 14)*q^87 + (-6*zeta^2 + 
14*zeta + 40)*q^88 + (-8*zeta^2 - 8*zeta + 24)*q^89 - 4*zeta^2*q^90 + (-3*zeta^2
- 6*zeta + 9)*q^93 + (-3*zeta^2 - 3*zeta)*q^94 + (6*zeta + 12)*q^95 + (-3*zeta^2
+ 3*zeta - 3)*q^97 + (-20*zeta^2 - 6*zeta + 6)*q^99 + (-6*zeta^2 + 12*zeta + 
36)*q^101 + (7*zeta^2 - 15*zeta - 44)*q^102 + (12*zeta^2 + 9*zeta - 36)*q^103 + 
(8*zeta^2 + 6*zeta - 6)*q^104 - 6*zeta^2*q^106 + (-12*zeta^2 - 18*zeta + 
36)*q^107 + (5*zeta + 10)*q^109 + (-7*zeta^2 - 10*zeta + 21)*q^110 + (18*zeta^2 
+ 5*zeta - 5)*q^111 + (4*zeta^2 + 5*zeta - 5)*q^113 + (-18*zeta^2 - 24*zeta + 
54)*q^114 + (-zeta^2 - 5*zeta - 8)*q^115 + (2*zeta^2 + 8*zeta - 6)*q^117 + 
(-10*zeta^2 - 2*zeta + 2)*q^118 + (-8*zeta^2 - 2*zeta + 2)*q^120 + (-18*zeta^2 -
30*zeta + 54)*q^121 + (-4*zeta - 8)*q^122 + (-zeta^2 + 5*zeta + 12)*q^123 - 
zeta^2*q^125 + (-2*zeta^2 - 3*zeta + 3)*q^127 + (-8*zeta^2 - 16*zeta + 24)*q^128
+ (2*zeta^2 - 4*zeta - 12)*q^129 + (-3*zeta^2 + zeta + 8)*q^130 + (5*zeta^2 + 
2*zeta - 15)*q^131 + (-2*zeta^2 - 4*zeta + 4)*q^134 + zeta*q^135 + (2*zeta^2 - 
14*zeta - 32)*q^136 + (12*zeta + 24)*q^137 + (14*zeta^2 + 18*zeta - 42)*q^138 + 
(-18*zeta^2 - 3*zeta + 3)*q^139 + 3*zeta^2*q^141 + (10*zeta^2 + 16*zeta - 
30)*q^142 + (-3*zeta^2 + 8*zeta + 22)*q^143 + (8*zeta^2 - 8*zeta - 32)*q^144 + 
(zeta^2 + 5*zeta - 3)*q^145 - 12*zeta^2*q^146 + (14*zeta^2 + 16*zeta - 42)*q^149
+ (zeta^2 - 3*zeta - 8)*q^150 + (-6*zeta^2 + 7*zeta + 26)*q^151 + (-12*zeta^2 - 
24*zeta + 36)*q^152 + (16*zeta^2 + 2*zeta - 2)*q^153 + (-3*zeta + 3)*q^155 + 
(-2*zeta^2 + 20*zeta + 44)*q^157 + (7*zeta^2 - 19*zeta - 52)*q^158 + (-9*zeta^2 
- 12*zeta + 27)*q^159 + (-14*zeta^2 - zeta + 1)*q^162 + (3*zeta^2 - 9)*q^163 + 
(5*zeta^2 - 12*zeta - 34)*q^165 + (-11*zeta^2 - 3*zeta + 3)*q^167 + (-14*zeta^2 
- 6*zeta + 6)*q^169 + (7*zeta^2 + 8*zeta - 21)*q^170 + (12*zeta^2 - 12*zeta - 
48)*q^171 + 3*zeta*q^173 + (-12*zeta^2 - 5*zeta + 5)*q^174 + (28*zeta^2 + 8*zeta
- 8)*q^176 + (-13*zeta^2 - 18*zeta + 39)*q^177 + (-8*zeta^2 + 8*zeta + 32)*q^178
+ (-6*zeta^2 + 12)*q^179 + (-12*zeta^2 - 9*zeta + 9)*q^181 + (8*zeta^2 + 2*zeta 
- 2)*q^183 + (8*zeta^2 + 20*zeta - 24)*q^184 + (-3*zeta^2 + 5*zeta + 16)*q^185 +
(6*zeta + 12)*q^186 + (26*zeta^2 + 37*zeta - 78)*q^187 + (12*zeta^2 + 6*zeta - 
6)*q^190 + (15*zeta^2 + 27*zeta - 45)*q^191 + (8*zeta^2 - 16*zeta - 48)*q^192 + 
(-16*zeta - 32)*q^193 + (3*zeta^2 + 12*zeta - 9)*q^194 + (-5*zeta^2 - 2*zeta + 
2)*q^195 + (10*zeta^2 - zeta + 1)*q^197 + (20*zeta^2 + 28*zeta - 60)*q^198 + 
(zeta^2 + 5*zeta + 8)*q^199 + (2*zeta^2 - 2*zeta - 8)*q^200 + (zeta^2 - 3)*q^201
+ (24*zeta^2 + 6*zeta - 6)*q^202 + (-zeta^2 - 4*zeta + 3)*q^205 + (15*zeta^2 - 
9*zeta - 48)*q^206 + (-12*zeta^2 + 8*zeta + 40)*q^207 + (-8*zeta^2 - 4*zeta + 
24)*q^208 + (42*zeta^2 + 12*zeta - 12)*q^209 + 9*zeta^2*q^211 + (-8*zeta^2 + 
18*zeta + 52)*q^213 + (-6*zeta^2 + 18*zeta + 48)*q^214 + (2*zeta^2 + 2*zeta - 
6)*q^215 + (2*zeta - 2)*q^216 + (10*zeta^2 + 5*zeta - 5)*q^218 + (-18*zeta^2 - 
24*zeta + 54)*q^219 + (8*zeta^2 - 5*zeta - 26)*q^221 + (-18*zeta^2 - 26*zeta + 
54)*q^222 + (-27*zeta^2 - 15*zeta + 15)*q^223 + (4*zeta^2 + 2*zeta - 2)*q^225 + 
(-4*zeta^2 + 2*zeta + 12)*q^226 + (-9*zeta^2 + 6*zeta + 30)*q^227 + (-23*zeta^2 
- 40*zeta + 69)*q^229 + (-10*zeta^2 - 6*zeta + 6)*q^230 + (-4*zeta^2 + 6*zeta - 
6)*q^232 + (14*zeta^2 + 16*zeta - 42)*q^233 + (-4*zeta^2 - 8*zeta - 8)*q^234 + 
(-3*zeta^2 + 6)*q^235 + (45*zeta^2 + 13*zeta - 13)*q^237 + (3*zeta^2 + 6*zeta - 
6)*q^239 + (8*zeta^2 + 12*zeta - 24)*q^240 + (9*zeta^2 - 21*zeta - 60)*q^241 + 
(-6*zeta^2 + 30*zeta + 72)*q^242 + (-20*zeta^2 - 24*zeta + 60)*q^243 + 
(10*zeta^2 + 4*zeta - 4)*q^246 + (-12*zeta^2 - 6*zeta + 36)*q^247 + (-12*zeta^2 
+ 24)*q^248 + (zeta^2 + 2*zeta - 3)*q^250 + (34*zeta^2 + 15*zeta - 15)*q^251 + 
(-32*zeta^2 - 9*zeta + 9)*q^253 + (2*zeta^2 - 2*zeta - 6)*q^254 + (-4*zeta^2 + 
11*zeta + 30)*q^255 + (-24*zeta^2 - 30*zeta + 72)*q^257 + (-8*zeta^2 - 2*zeta + 
2)*q^258 + (-10*zeta^2 - 4*zeta + 30)*q^261 + (8*zeta^2 - 2*zeta - 20)*q^262 + 
(-16*zeta^2 + 22*zeta + 76)*q^263 + (34*zeta^2 + 48*zeta - 102)*q^264 + 
(6*zeta^2 + 3*zeta - 3)*q^265 + (-24*zeta^2 - 8*zeta + 8)*q^267 + (3*zeta^2 + 
9*zeta + 12)*q^269 + (-zeta^2 - zeta)*q^270 + (-20*zeta^2 - 28*zeta + 60)*q^271 
+ (-28*zeta^2 - 12*zeta + 12)*q^272 + (24*zeta^2 + 12*zeta - 12)*q^274 + 
(5*zeta^2 + 7*zeta - 15)*q^275 + (15*zeta^2 - 21*zeta - 72)*q^277 + (18*zeta^2 +
30*zeta - 54)*q^278 + (-12*zeta^2 - 12*zeta + 12)*q^279 + (-25*zeta^2 - 8*zeta +
8)*q^281 + (-3*zeta^2 - 6*zeta + 9)*q^282 + (-11*zeta^2 + 2*zeta + 26)*q^283 + 
(12*zeta^2 + 18*zeta - 36)*q^285 + (16*zeta^2 + 5*zeta - 5)*q^286 + (-8*zeta^2 -
14*zeta + 24)*q^289 + (-3*zeta^2 - 5*zeta - 4)*q^290 + (-6*zeta^2 + 9*zeta + 
30)*q^291 + (5*zeta^2 + 9*zeta - 9)*q^293 + (8*zeta^2 + 3*zeta - 3)*q^295 + 
(-16*zeta^2 - 20*zeta + 48)*q^296 + (zeta^2 - 2*zeta - 6)*q^297 + (12*zeta^2 - 
16*zeta - 56)*q^298 + (11*zeta^2 + 2*zeta - 33)*q^299 + (14*zeta^2 + zeta - 
1)*q^302 + (30*zeta^2 + 42*zeta - 90)*q^303 + (24*zeta + 48)*q^304 + (-2*zeta^2 
+ 2*zeta + 8)*q^305 + (-16*zeta^2 - 28*zeta + 48)*q^306 + (-7*zeta^2 + 7*zeta - 
7)*q^307 + (33*zeta^2 + 12*zeta - 12)*q^309 - 6*zeta*q^310 + (10*zeta + 
20)*q^311 + (2*zeta^2 - 10*zeta - 24)*q^312 + (18*zeta^2 + 33*zeta - 54)*q^313 +
(40*zeta^2 + 18*zeta - 18)*q^314 + (10*zeta^2 + 14*zeta - 30)*q^317 + (-6*zeta^2
+ 12*zeta + 36)*q^318 + (6*zeta^2 - 13*zeta - 38)*q^319 + (8*zeta^2 + 8*zeta - 
24)*q^320 + (-42*zeta^2 - 12*zeta + 12)*q^321 + (-42*zeta^2 - 18*zeta + 
18)*q^323 + (-zeta^2 - 2*zeta - 2)*q^325 + (6*zeta^2 - 12)*q^326 + (10*zeta^2 + 
15*zeta - 30)*q^327 + (4*zeta^2 - 4*zeta + 4)*q^328 + (-24*zeta^2 - 7*zeta + 
7)*q^330 + (-16*zeta^2 - 34*zeta + 48)*q^331 + (4*zeta^2 - 16*zeta - 40)*q^333 +
(11*zeta^2 + 16*zeta - 33)*q^334 + (-2*zeta^2 - 3*zeta + 3)*q^335 + (12*zeta^2 -
3*zeta + 3)*q^337 + (14*zeta^2 + 16*zeta - 42)*q^338 + (-zeta^2 - 3*zeta - 
4)*q^339 + (-9*zeta^2 - 12*zeta + 27)*q^341 - 24*zeta^2*q^342 + (-8*zeta^2 - 
4*zeta + 4)*q^344 + (-9*zeta^2 - 14*zeta + 27)*q^345 + (-3*zeta^2 - 
3*zeta)*q^346 + (5*zeta^2 + zeta - 8)*q^347 + (-30*zeta^2 - 12*zeta + 12)*q^349 
+ (-3*zeta^2 - 4*zeta + 4)*q^351 + (15*zeta^2 - 30*zeta - 90)*q^353 + (-8*zeta^2
+ 18*zeta + 52)*q^354 + (-8*zeta^2 - 10*zeta + 24)*q^355 + (-6*zeta + 6)*q^358 +
(-8*zeta^2 - 16*zeta + 24)*q^359 + (8*zeta + 16)*q^360 + (17*zeta + 34)*q^361 + 
(12*zeta^2 + 6*zeta - 36)*q^362 + (-66*zeta^2 - 18*zeta + 18)*q^363 + (12*zeta^2
+ 6*zeta - 6)*q^365 + (-8*zeta^2 - 12*zeta + 24)*q^366 + (19*zeta^2 - 22*zeta - 
82)*q^367 + (-4*zeta^2 - 20*zeta - 32)*q^368 + (8*zeta^2 + 4*zeta - 24)*q^369 + 
(10*zeta^2 + 2*zeta - 2)*q^370 + (2*zeta^2 - 4*zeta - 6)*q^373 + (15*zeta^2 - 
37*zeta - 104)*q^374 + (-zeta^2 + 2*zeta + 6)*q^375 + (-6*zeta^2 + 18)*q^376 + 
(-13*zeta^2 - 15*zeta + 15)*q^377 + 2*zeta^2*q^379 + (zeta^2 + zeta)*q^381 + 
(3*zeta^2 - 27*zeta - 60)*q^382 + (-10*zeta^2 - 16*zeta + 30)*q^383 + 
(-32*zeta^2 - 8*zeta + 8)*q^384 + (-32*zeta^2 - 16*zeta + 16)*q^386 + (-4*zeta^2
- 8*zeta + 12)*q^387 + (10*zeta^2 - 31*zeta - 82)*q^389 + (5*zeta^2 + 6*zeta - 
15)*q^390 + (34*zeta^2 + 17*zeta - 17)*q^391 + (12*zeta^2 + 5*zeta - 5)*q^393 + 
(-10*zeta^2 - 22*zeta + 30)*q^394 + (-6*zeta^2 + 13*zeta + 38)*q^395 + (4*zeta^2
+ 5*zeta - 12)*q^397 + (10*zeta^2 + 6*zeta - 6)*q^398 - 4*zeta^2*q^400 + 
(-7*zeta^2 - 5*zeta + 21)*q^401 + (2*zeta^2 - 4)*q^402 + (15*zeta^2 + 9*zeta - 
12)*q^403 + (13*zeta^2 + 6*zeta - 6)*q^405 + (44*zeta^2 + 13*zeta - 13)*q^407 + 
(-30*zeta^2 - 44*zeta + 90)*q^408 + (-6*zeta^2 + 12*zeta + 36)*q^409 + (2*zeta^2
+ 4*zeta + 4)*q^410 + (24*zeta^2 + 36*zeta - 72)*q^411 + (16*zeta^2 - 4*zeta + 
4)*q^414 + (-15*zeta^2 + 33*zeta + 96)*q^417 + (-42*zeta^2 - 60*zeta + 
126)*q^418 + (12*zeta^2 + 9*zeta - 9)*q^419 - 19*zeta^2*q^421 + (-9*zeta^2 - 
18*zeta + 27)*q^422 + (-6*zeta^2 - 6*zeta)*q^423 + (12*zeta + 24)*q^424 + 
(-4*zeta^2 - 7*zeta + 12)*q^425 + (36*zeta^2 + 10*zeta - 10)*q^426 + (19*zeta^2 
+ 27*zeta - 57)*q^429 + (2*zeta^2 - 2*zeta - 8)*q^430 + (-14*zeta^2 + 5*zeta + 
38)*q^431 + 4*zeta*q^432 + (30*zeta^2 + 12*zeta - 12)*q^433 + (7*zeta^2 + zeta -
1)*q^435 + (-6*zeta^2 - 30*zeta - 48)*q^437 + (-12*zeta^2 + 24*zeta + 72)*q^438 
+ (zeta^2 + 14*zeta - 3)*q^439 + (-20*zeta^2 - 6*zeta + 6)*q^440 + (-10*zeta^2 +
3*zeta - 3)*q^442 + (-20*zeta^2 - 22*zeta + 60)*q^443 + (-8*zeta - 16)*q^445 + 
(27*zeta^2 + 24*zeta - 81)*q^446 + (44*zeta^2 + 14*zeta - 14)*q^447 + 
(-31*zeta^2 - 2*zeta + 2)*q^449 + (-4*zeta^2 - 4*zeta + 12)*q^450 + (-5*zeta^2 +
11*zeta + 32)*q^451 + (20*zeta^2 + 27*zeta - 60)*q^453 + (12*zeta^2 - 3*zeta + 
3)*q^454 + (-48*zeta^2 - 12*zeta + 12)*q^456 + (19*zeta^2 + 22*zeta - 57)*q^457 
+ (-6*zeta^2 + 40*zeta + 92)*q^458 + (2*zeta^2 + 3*zeta + 2)*q^459 + (-44*zeta^2
- 12*zeta + 12)*q^461 + (40*zeta^2 + 18*zeta - 18)*q^463 + (4*zeta^2 + 20*zeta -
12)*q^464 + (3*zeta^2 - 3*zeta - 12)*q^465 + (12*zeta^2 - 16*zeta - 56)*q^466 + 
(16*zeta^2 + 25*zeta - 48)*q^467 + (-3*zeta + 3)*q^470 + (42*zeta^2 + 62*zeta - 
126)*q^471 + (-4*zeta^2 + 16*zeta + 40)*q^472 + (4*zeta^2 - 10*zeta - 28)*q^473 
+ (-45*zeta^2 - 64*zeta + 135)*q^474 - 6*zeta^2*q^475 - 12*zeta^2*q^477 + 
(-3*zeta^2 + 6*zeta + 9)*q^478 + (3*zeta^2 - 19*zeta - 44)*q^479 + (-7*zeta^2 - 
14*zeta + 21)*q^481 + (-42*zeta^2 - 12*zeta + 12)*q^482 + (-6*zeta^2 - 3*zeta + 
18)*q^485 + (-16*zeta^2 + 24*zeta + 80)*q^486 + (21*zeta^2 - 23*zeta - 88)*q^487
+ (-8*zeta^2 - 8*zeta + 24)*q^488 + (6*zeta^2 + 3*zeta - 3)*q^489 + (31*zeta^2 +
20*zeta - 20)*q^491 + (5*zeta^2 + 16*zeta + 22)*q^493 + (-18*zeta^2 + 6*zeta + 
48)*q^494 + (-14*zeta^2 - 20*zeta + 42)*q^495 + (-12*zeta + 12)*q^496 + 
(-3*zeta^2 - 3*zeta + 9)*q^499 + (-8*zeta^2 + 19*zeta + 54)*q^501 + (-34*zeta^2 
- 38*zeta + 102)*q^502 + (31*zeta^2 - 3*zeta + 3)*q^503 + (-18*zeta^2 - 6*zeta +
6)*q^505 + (32*zeta^2 + 46*zeta - 96)*q^506 + (-8*zeta^2 + 22*zeta + 60)*q^507 +
(11*zeta^2 + 26*zeta - 33)*q^509 + (22*zeta^2 + 7*zeta - 7)*q^510 + (-32*zeta^2 
- 16*zeta + 16)*q^512 + 6*zeta*q^513 + (-18*zeta^2 + 30*zeta + 96)*q^514 + 
(3*zeta^2 + 12*zeta + 18)*q^515 + (9*zeta^2 + 3*zeta - 3)*q^517 + 3*zeta^2*q^519
+ (2*zeta^2 + 8*zeta - 6)*q^520 + (-12*zeta^2 + 14*zeta + 52)*q^521 + 
(-16*zeta^2 + 4*zeta + 40)*q^522 + (18*zeta^2 + 12*zeta - 54)*q^523 + (44*zeta^2
+ 6*zeta - 6)*q^526 + (3*zeta^2 + 18*zeta - 9)*q^527 + (20*zeta^2 - 48*zeta - 
136)*q^528 + (12*zeta^2 + 3*zeta - 18)*q^529 + (-6*zeta^2 - 6*zeta + 18)*q^530 +
(-20*zeta^2 - 4*zeta + 4)*q^531 + (10*zeta^2 + 11*zeta - 11)*q^533 + (24*zeta^2 
+ 32*zeta - 72)*q^534 + (6*zeta^2 - 12*zeta - 36)*q^535 + (-8*zeta^2 - 4*zeta + 
8)*q^536 + (6*zeta^2 + 6*zeta - 18)*q^537 + (18*zeta^2 + 12*zeta - 12)*q^538 + 
(-7*zeta^2 - 19*zeta + 21)*q^541 + (-12*zeta^2 + 28*zeta + 80)*q^542 + 
(-3*zeta^2 + 15*zeta + 36)*q^543 - 5*zeta^2*q^545 + (-4*zeta^2 + 6*zeta - 
6)*q^547 + (-8*zeta - 16)*q^549 + (3*zeta^2 - 7*zeta - 20)*q^550 + (6*zeta^2 + 
30*zeta - 18)*q^551 + (36*zeta^2 + 8*zeta - 8)*q^552 + (-42*zeta^2 - 6*zeta + 
6)*q^554 + (13*zeta^2 + 18*zeta - 39)*q^555 + (-14*zeta^2 + 26*zeta + 80)*q^557 
+ (12*zeta^2 - 36)*q^558 + (-2*zeta^2 + 2*zeta - 2)*q^559 + (89*zeta^2 + 26*zeta
- 26)*q^561 + (25*zeta^2 + 34*zeta - 75)*q^562 + (24*zeta^2 - 26*zeta - 
100)*q^563 + (-zeta^2 + 4*zeta + 3)*q^565 + (4*zeta^2 - 9*zeta + 9)*q^566 + 
(32*zeta^2 + 12*zeta - 12)*q^568 + (-2*zeta^2 + 8*zeta + 6)*q^569 + (6*zeta^2 - 
18*zeta - 48)*q^570 + (6*zeta^2 - 32*zeta - 76)*q^571 + (57*zeta^2 + 15*zeta - 
15)*q^573 + (4*zeta^2 - zeta + 1)*q^575 + (-16*zeta^2 - 32*zeta + 48)*q^576 + 
(-9*zeta^2 + 6*zeta + 30)*q^577 + (-2*zeta^2 + 14*zeta + 32)*q^578 + (-32*zeta^2
- 48*zeta + 96)*q^579 + (18*zeta^2 + 3*zeta - 3)*q^582 + (-21*zeta^2 - 30*zeta +
63)*q^583 + (24*zeta + 48)*q^584 + (-6*zeta^2 + 2*zeta + 16)*q^585 + (-5*zeta^2 
+ 8*zeta + 15)*q^586 + (-24*zeta^2 - 18*zeta + 18)*q^587 + (-18*zeta + 18)*q^589
+ (-8*zeta^2 - 10*zeta + 24)*q^590 + (11*zeta^2 - 21*zeta - 64)*q^591 + 
(-12*zeta^2 + 20*zeta + 64)*q^592 + (12*zeta^2 + 9*zeta - 36)*q^593 + (-4*zeta^2
- zeta + 1)*q^594 + (9*zeta^2 + 14*zeta - 27)*q^597 + (20*zeta^2 - 2*zeta - 
44)*q^598 + (-2*zeta^2 - 13*zeta - 22)*q^599 + (-6*zeta^2 - 8*zeta + 18)*q^600 +
(-30*zeta^2 - 12*zeta + 12)*q^601 + (-4*zeta^2 - 8*zeta + 8)*q^603 + (12*zeta^2 
- 18*zeta - 60)*q^605 + (18*zeta^2 - 42*zeta - 120)*q^606 + (-22*zeta^2 - 
29*zeta + 66)*q^607 + 4*zeta^2*q^610 + (3*zeta^2 - 9*zeta - 9)*q^611 + 
(-24*zeta^2 + 34*zeta + 116)*q^613 + (7*zeta^2 + 28*zeta - 21)*q^614 + 
(-6*zeta^2 - zeta + 1)*q^615 + (8*zeta^2 + zeta - 1)*q^617 + (-33*zeta^2 - 
42*zeta + 99)*q^618 + (5*zeta^2 - 29*zeta - 68)*q^619 + (zeta^2 - 6*zeta - 
3)*q^621 + (20*zeta^2 + 10*zeta - 10)*q^622 + (-20*zeta^2 - 8*zeta + 8)*q^624 + 
(-zeta^2 - zeta + 3)*q^625 + (3*zeta^2 - 33*zeta - 72)*q^626 + (30*zeta^2 - 
72*zeta - 204)*q^627 + (-38*zeta^2 - 9*zeta + 9)*q^629 + (19*zeta^2 + 18*zeta - 
18)*q^631 + (-38*zeta^2 - 52*zeta + 114)*q^632 + (9*zeta^2 - 18*zeta - 54)*q^633
+ (6*zeta^2 - 14*zeta - 40)*q^634 + (zeta^2 - 2*zeta - 3)*q^635 + (-26*zeta^2 - 
7*zeta + 7)*q^638 + (20*zeta^2 + 32*zeta - 60)*q^639 + (8*zeta^2 - 8*zeta - 
32)*q^640 + (-8*zeta^2 - 4*zeta + 8)*q^641 + (42*zeta^2 + 60*zeta - 126)*q^642 +
(-33*zeta^2 - 9*zeta + 9)*q^643 + (6*zeta^2 + 2*zeta - 2)*q^645 + (42*zeta^2 + 
48*zeta - 126)*q^646 + (-6*zeta^2 + 26*zeta + 64)*q^647 + (-2*zeta^2 + 26*zeta +
56)*q^648 + (-31*zeta^2 - 44*zeta + 93)*q^649 + (-4*zeta^2 - 3*zeta + 3)*q^650 +
(-6*zeta^2 + 6*zeta + 18)*q^653 + (5*zeta^2 - 15*zeta - 40)*q^654 + (3*zeta^2 + 
5*zeta + 4)*q^655 + (-4*zeta^2 - 16*zeta + 12)*q^656 - 24*zeta^2*q^657 + 
(-21*zeta^2 - 12*zeta + 12)*q^659 + (-18*zeta^2 + 30*zeta + 96)*q^661 + 
(2*zeta^2 + 34*zeta + 64)*q^662 + (-18*zeta^2 - 23*zeta + 54)*q^663 + 
(-32*zeta^2 - 12*zeta + 12)*q^666 + (-zeta^2 - 28*zeta + 3)*q^667 + (-12*zeta^2 
+ 39*zeta + 102)*q^669 + (2*zeta^2 - 2*zeta - 6)*q^670 + (20*zeta^2 + 6*zeta - 
6)*q^671 + (24*zeta^2 + 6*zeta - 6)*q^673 + (-12*zeta^2 - 30*zeta + 36)*q^674 + 
(-zeta^2 + 2)*q^675 + (8*zeta^2 - 7*zeta - 24)*q^677 + (-6*zeta^2 - 4*zeta + 
4)*q^678 + (16*zeta^2 + 2*zeta - 2)*q^680 + (21*zeta^2 + 27*zeta - 63)*q^681 + 
(-6*zeta^2 + 12*zeta + 36)*q^682 + (14*zeta^2 - 2*zeta - 32)*q^683 - 
12*zeta^2*q^685 + (-86*zeta^2 - 23*zeta + 23)*q^687 + (8*zeta^2 + 8*zeta - 
24)*q^688 + (-9*zeta^2 + 3*zeta + 24)*q^689 + (-4*zeta^2 + 14*zeta + 36)*q^690 +
(10*zeta^2 + 8*zeta - 30)*q^691 + (2*zeta^2 + 6*zeta - 6)*q^694 + (-15*zeta^2 - 
18*zeta + 45)*q^695 + (-10*zeta^2 + 14*zeta + 48)*q^696 + (-3*zeta^2 - 13*zeta -
20)*q^697 + (30*zeta^2 + 36*zeta - 90)*q^698 + (44*zeta^2 + 14*zeta - 14)*q^699 
+ (-15*zeta^2 - 18*zeta + 18)*q^701 + (3*zeta^2 - 2*zeta - 9)*q^702 + 
(-18*zeta^2 + 30*zeta + 96)*q^703 + (16*zeta^2 - 40*zeta - 112)*q^704 + 
(3*zeta^2 + 3*zeta - 9)*q^705 + (-60*zeta^2 - 15*zeta + 15)*q^706 + (-17*zeta^2 
- 17*zeta + 51)*q^709 + (-6*zeta^2 + 10*zeta + 32)*q^710 + (14*zeta^2 - 38*zeta 
- 104)*q^711 + (16*zeta^2 + 32*zeta - 48)*q^712 + (6*zeta^2 + 24*zeta - 
24)*q^713 + (-11*zeta^2 - 3*zeta + 3)*q^715 + (-3*zeta^2 + 6)*q^717 + (16*zeta +
32)*q^718 + (11*zeta^2 + 26*zeta - 33)*q^719 + (16*zeta^2 + 8*zeta - 8)*q^720 + 
(34*zeta^2 + 17*zeta - 17)*q^722 + (-51*zeta^2 - 72*zeta + 153)*q^723 + 
(-4*zeta^2 + zeta + 10)*q^725 + (66*zeta^2 + 96*zeta - 198)*q^726 + (34*zeta^2 +
8*zeta - 8)*q^727 + (-25*zeta^2 - 2*zeta + 2)*q^729 + (-12*zeta^2 - 12*zeta + 
36)*q^730 + (-6*zeta^2 + 8*zeta + 28)*q^731 + (-36*zeta^2 - 57*zeta + 108)*q^733
+ (-44*zeta^2 - 3*zeta + 3)*q^734 + (zeta^2 + 2*zeta - 3)*q^737 + (12*zeta^2 - 
4*zeta - 32)*q^738 + (12*zeta^2 + zeta - 22)*q^739 + (-30*zeta^2 - 12*zeta + 
12)*q^741 + (42*zeta^2 + 9*zeta - 9)*q^743 + (12*zeta^2 + 12*zeta - 36)*q^744 + 
(-2*zeta^2 + 14*zeta + 32)*q^745 + (8*zeta^2 + 4*zeta - 8)*q^746 + (4*zeta^2 + 
zeta - 1)*q^750 + (-15*zeta^2 - 9*zeta + 45)*q^751 + (-12*zeta^2 + 24)*q^752 + 
(19*zeta^2 - 53*zeta - 144)*q^753 + (13*zeta^2 - 4*zeta - 39)*q^754 + 
(-13*zeta^2 - 6*zeta + 6)*q^755 + (-20*zeta^2 - 6*zeta + 6)*q^757 + (-2*zeta^2 -
4*zeta + 6)*q^758 + (-23*zeta^2 + 55*zeta + 156)*q^759 + (12*zeta^2 - 12*zeta - 
48)*q^760 + (9*zeta^2 + 18*zeta - 27)*q^761 + (2*zeta^2 + 2*zeta - 2)*q^762 + 
(14*zeta^2 + 16*zeta - 42)*q^765 + (-4*zeta^2 + 16*zeta + 40)*q^766 + (-7*zeta^2
+ 7*zeta + 28)*q^767 + (2*zeta^2 - 2*zeta + 2)*q^769 + (-78*zeta^2 - 24*zeta + 
24)*q^771 + (15*zeta^2 - 30*zeta - 90)*q^773 + (8*zeta + 16)*q^774 + (3*zeta^2 -
9)*q^775 + (24*zeta^2 + 18*zeta - 18)*q^776 + (-62*zeta^2 - 21*zeta + 21)*q^778 
+ (-6*zeta^2 - 24*zeta + 18)*q^779 + (-18*zeta^2 + 44*zeta + 124)*q^781 + 
(-34*zeta^2 - 34*zeta + 102)*q^782 + (-3*zeta^2 - 7*zeta + 7)*q^783 + 
(-22*zeta^2 - 2*zeta + 2)*q^785 + (-12*zeta^2 - 14*zeta + 36)*q^786 + (9*zeta^2 
- 42*zeta - 102)*q^787 + (60*zeta^2 + 82*zeta - 180)*q^789 + (26*zeta^2 + 7*zeta
- 7)*q^790 + (56*zeta^2 + 16*zeta - 16)*q^792 + (-2*zeta^2 - 8*zeta + 6)*q^793 +
(3*zeta^2 - 5*zeta - 16)*q^794 + (3*zeta^2 - 9*zeta - 24)*q^795 + (-71*zeta^2 - 
27*zeta + 27)*q^797 + (-3*zeta^2 + 6*zeta - 6)*q^799 + (-16*zeta^2 + 16*zeta + 
64)*q^801 + (-9*zeta^2 + 5*zeta + 28)*q^802 + (-42*zeta^2 - 60*zeta + 126)*q^803
+ (18*zeta^2 + 24*zeta - 24)*q^806 + (15*zeta^2 + 24*zeta - 45)*q^807 + 
(12*zeta^2 - 36*zeta - 96)*q^808 + (-28*zeta^2 + 19*zeta + 94)*q^809 + 
(-13*zeta^2 - 14*zeta + 39)*q^810 + (38*zeta^2 + 25*zeta - 25)*q^811 + 
(-68*zeta^2 - 20*zeta + 20)*q^813 + (-44*zeta^2 - 62*zeta + 132)*q^814 + 
(3*zeta^2 + 3*zeta)*q^815 + (-16*zeta^2 + 44*zeta + 120)*q^816 + (12*zeta^2 + 
12*zeta - 36)*q^817 + (24*zeta^2 + 6*zeta - 6)*q^818 + (9*zeta^2 + 3*zeta - 
27)*q^821 + (12*zeta^2 - 36*zeta - 96)*q^822 + (9*zeta^2 - 5*zeta - 28)*q^823 + 
(-18*zeta^2 - 48*zeta + 54)*q^824 + (17*zeta^2 + 5*zeta - 5)*q^825 + (-16*zeta^2
- 17*zeta + 17)*q^827 + (17*zeta^2 - 47*zeta - 128)*q^829 + (-57*zeta^2 - 
78*zeta + 171)*q^831 + (-8*zeta^2 + 8*zeta - 8)*q^832 + (66*zeta^2 + 18*zeta - 
18)*q^834 + (-8*zeta^2 - 11*zeta + 24)*q^835 + (9*zeta^2 + 3*zeta - 12)*q^837 + 
(-12*zeta^2 - 6*zeta + 36)*q^838 + (54*zeta^2 + 9*zeta - 9)*q^839 + (-36*zeta^2 
- 24*zeta + 24)*q^841 + (19*zeta^2 + 38*zeta - 57)*q^842 + (-17*zeta^2 + 42*zeta
+ 118)*q^843 + (-8*zeta^2 - 14*zeta + 24)*q^845 + (-12*zeta^2 - 12*zeta + 
12)*q^846 + (24*zeta^2 + 12*zeta - 12)*q^848 + (15*zeta^2 + 17*zeta - 45)*q^849 
+ (-zeta^2 + 7*zeta + 16)*q^850 + (16*zeta^2 - 22*zeta - 76)*q^851 + (30*zeta^2 
+ 12*zeta - 12)*q^853 + (24*zeta^2 + 12*zeta - 12)*q^855 + (36*zeta^2 + 48*zeta 
- 108)*q^856 + (6*zeta^2 + 8*zeta + 4)*q^857 + (11*zeta^2 - 27*zeta - 76)*q^858 
+ (38*zeta^2 + 64*zeta - 114)*q^859 + (10*zeta^2 - 9*zeta + 9)*q^862 + 
(13*zeta^2 + 26*zeta - 39)*q^863 + (-3*zeta^2 + 6)*q^865 + (-30*zeta^2 - 36*zeta
+ 90)*q^866 + (-30*zeta^2 - 8*zeta + 8)*q^867 + (109*zeta^2 + 32*zeta - 
32)*q^869 + (-7*zeta^2 - 12*zeta + 21)*q^870 + (13*zeta^2 + 5*zeta - 16)*q^871 +
(10*zeta^2 - 10*zeta - 40)*q^872 + (6*zeta^2 + 24*zeta - 18)*q^873 + (-60*zeta^2
- 36*zeta + 36)*q^874 + (-42*zeta^2 - 54*zeta + 126)*q^877 + (-12*zeta^2 - 
14*zeta - 4)*q^878 + (-4*zeta^2 - zeta + 6)*q^879 + (20*zeta^2 + 28*zeta - 
60)*q^880 + (12*zeta^2 - 12*zeta + 12)*q^881 + (52*zeta^2 + 6*zeta - 6)*q^883 + 
(5*zeta^2 - 13*zeta - 36)*q^885 + (-18*zeta^2 + 22*zeta + 80)*q^886 + 
(-26*zeta^2 - 38*zeta + 78)*q^887 + (-52*zeta^2 - 16*zeta + 16)*q^888 + 
(-16*zeta^2 - 8*zeta + 8)*q^890 + (-47*zeta^2 - 67*zeta + 141)*q^891 + 
(-18*zeta^2 + 36)*q^893 + (-44*zeta^2 - 60*zeta + 132)*q^894 + (-6*zeta^2 - 
6*zeta + 6)*q^895 + (24*zeta^2 + 11*zeta - 11)*q^897 + (31*zeta^2 + 58*zeta - 
93)*q^898 + (33*zeta^2 + 9*zeta - 48)*q^899 + (21*zeta^2 + 24*zeta - 63)*q^901 +
(22*zeta^2 + 6*zeta - 6)*q^902 + (4*zeta^2 + 12*zeta - 12)*q^904 + (-3*zeta^2 - 
12*zeta + 9)*q^905 + (13*zeta^2 - 27*zeta - 80)*q^906 + (-27*zeta^2 + 21*zeta + 
96)*q^907 + (48*zeta^2 + 12*zeta - 12)*q^909 + (-8*zeta^2 - 4*zeta + 4)*q^911 + 
(48*zeta^2 + 72*zeta - 144)*q^912 + (16*zeta^2 - 22*zeta - 76)*q^914 + (6*zeta^2
+ 8*zeta - 18)*q^915 + (6*zeta^2 + 5*zeta - 5)*q^918 + (31*zeta^2 + 49*zeta - 
93)*q^919 + (-12*zeta^2 + 8*zeta + 40)*q^920 + (-14*zeta^2 + 21*zeta + 70)*q^921
+ (44*zeta^2 + 64*zeta - 132)*q^922 + 14*zeta^2*q^923 + (-8*zeta^2 - 3*zeta + 
3)*q^925 + (-40*zeta^2 - 44*zeta + 120)*q^926 + (30*zeta^2 - 18*zeta - 96)*q^927
+ (51*zeta^2 + 60*zeta - 153)*q^929 - 6*zeta^2*q^930 + (20*zeta^2 + 30*zeta - 
60)*q^933 + (7*zeta^2 - 25*zeta - 64)*q^934 + (-11*zeta^2 + 26*zeta + 74)*q^935 
+ (-16*zeta^2 - 8*zeta + 48)*q^936 + (11*zeta^2 - 11*zeta + 11)*q^937 + 
(69*zeta^2 + 18*zeta - 18)*q^939 + (-12*zeta^2 + 24)*q^941 + (22*zeta^2 - 
62*zeta - 168)*q^942 + (2*zeta^2 + 22*zeta - 6)*q^943 + (32*zeta^2 + 12*zeta - 
12)*q^944 + (-20*zeta^2 - 6*zeta + 6)*q^946 + (45*zeta^2 + 42*zeta - 135)*q^947 
+ (-18*zeta^2 + 6*zeta + 48)*q^949 + (6*zeta^2 + 12*zeta - 18)*q^950 + 
(34*zeta^2 + 10*zeta - 10)*q^951 + (-46*zeta^2 - 29*zeta + 29)*q^953 + 
(12*zeta^2 + 24*zeta - 36)*q^954 + (-12*zeta^2 + 15*zeta + 54)*q^955 + 
(-32*zeta^2 - 45*zeta + 96)*q^957 + (-38*zeta^2 - 16*zeta + 16)*q^958 + 
(24*zeta^2 + 8*zeta - 8)*q^960 + (13*zeta^2 + 49*zeta - 39)*q^961 + (14*zeta + 
28)*q^962 + (-12*zeta^2 + 36*zeta + 96)*q^963 + 16*zeta^2*q^965 + (42*zeta^2 + 
30*zeta - 30)*q^967 + (60*zeta^2 + 72*zeta - 180)*q^968 + (-24*zeta^2 + 66*zeta 
+ 180)*q^969 + (-9*zeta^2 + 3*zeta + 24)*q^970 + (-39*zeta^2 - 48*zeta + 
117)*q^971 + (-46*zeta^2 - 2*zeta + 2)*q^974 + (-3*zeta^2 - 5*zeta + 9)*q^975 + 
(-8*zeta^2 + 8*zeta + 32)*q^976 + (26*zeta^2 - 20*zeta - 92)*q^977 + (-6*zeta^2 
- 6*zeta + 18)*q^978 + (-56*zeta^2 - 16*zeta + 16)*q^979 + (20*zeta^2 + 10*zeta 
- 10)*q^981 + (-31*zeta^2 - 22*zeta + 93)*q^982 + (-15*zeta^2 + 36*zeta + 
102)*q^983 + (8*zeta^2 - 12*zeta - 40)*q^984 + (11*zeta^2 + 10*zeta - 33)*q^985 
+ (32*zeta^2 + 21*zeta - 21)*q^986 + (-10*zeta^2 - 8*zeta + 30)*q^989 + 
(-8*zeta^2 + 20*zeta + 56)*q^990 + (24*zeta^2 - 38*zeta - 124)*q^991 + 
(-66*zeta^2 - 16*zeta + 16)*q^993 + (-4*zeta^2 + zeta - 1)*q^995 + (9*zeta^2 - 
18)*q^997 + (-3*zeta^2 + 3*zeta + 12)*q^998 + (3*zeta^2 + 2*zeta - 9)*q^999 + 
(4*zeta^2 + 2*zeta - 2)*q^1000 + (38*zeta^2 + 11*zeta - 11)*q^1002 + (29*zeta^2 
+ 38*zeta - 87)*q^1003 + (zeta^2 + zeta)*q^1005 + (-31*zeta^2 - 68*zeta + 
93)*q^1006 + (36*zeta^2 + 18*zeta - 18)*q^1007 + (-65*zeta^2 - 24*zeta + 
24)*q^1009 + (18*zeta^2 + 24*zeta - 54)*q^1010 + (15*zeta^2 - 27*zeta - 
84)*q^1011 + (-2*zeta^2 + 16*zeta + 6)*q^1013 + (44*zeta^2 + 14*zeta - 
14)*q^1014 + (-4*zeta^2 - 8*zeta + 8)*q^1016 + (-8*zeta^2 + 4*zeta + 24)*q^1017 
+ (-4*zeta^2 - 26*zeta - 44)*q^1018 + (20*zeta^2 + 10*zeta - 20)*q^1019 + 
(66*zeta^2 + 18*zeta - 18)*q^1021 + (-30*zeta^2 - 9*zeta + 9)*q^1023 + 
(32*zeta^2 + 32*zeta - 96)*q^1024 + (3*zeta^2 - zeta - 8)*q^1025 + (-6*zeta^2 - 
6*zeta)*q^1026 + (-20*zeta^2 - 31*zeta + 60)*q^1027 + (24*zeta^2 + 15*zeta - 
15)*q^1030 + (13*zeta^2 + 5*zeta - 39)*q^1031 + (-4*zeta^2 + 12*zeta + 
32)*q^1032 + (-21*zeta^2 - 9*zeta + 24)*q^1033 + (-9*zeta^2 - 12*zeta + 
27)*q^1034 + (-20*zeta^2 - 12*zeta + 12)*q^1035 + (-16*zeta^2 - 2*zeta + 
2)*q^1037 + (-3*zeta^2 - 6*zeta + 9)*q^1038 + (-24*zeta^2 + 18*zeta + 84)*q^1039
+ (-4*zeta^2 - 8*zeta - 8)*q^1040 + (-3*zeta^2 - 2*zeta + 9)*q^1041 + (28*zeta^2
+ 2*zeta - 2)*q^1042 + (30*zeta^2 + 42*zeta - 90)*q^1045 + (24*zeta^2 - 12*zeta 
- 72)*q^1046 + (-18*zeta^2 + 48*zeta + 132)*q^1047 + (-4*zeta^2 - 20*zeta + 
12)*q^1048 + (8*zeta^2 + 6*zeta - 6)*q^1049 + (-13*zeta^2 - 6*zeta + 6)*q^1051 +
(-17*zeta^2 + 8*zeta + 50)*q^1053 + (-12*zeta^2 - 18*zeta - 12)*q^1054 + 
(9*zeta^2 + 9*zeta - 27)*q^1055 + (6*zeta^2 + 15*zeta - 15)*q^1058 + (-75*zeta^2
- 105*zeta + 225)*q^1059 + (33*zeta + 66)*q^1061 + (20*zeta^2 + 32*zeta - 
60)*q^1062 + (-26*zeta^2 - 16*zeta + 16)*q^1063 + (-26*zeta^2 - 8*zeta + 
8)*q^1065 + (-10*zeta^2 + 2*zeta + 30)*q^1066 + (-9*zeta^2 + 24*zeta + 
66)*q^1067 + (-6*zeta^2 + 18)*q^1069 + (-24*zeta^2 - 6*zeta + 6)*q^1070 + 
(-8*zeta^2 - 12*zeta + 12)*q^1072 + (17*zeta^2 + 16*zeta - 51)*q^1073 + 
(6*zeta^2 - 6*zeta - 24)*q^1074 + (2*zeta + 4)*q^1075 + (-32*zeta^2 - 8*zeta + 
8)*q^1077 + (-2*zeta^2 + 6)*q^1080 + (21*zeta^2 + 3*zeta - 36)*q^1081 + 
(5*zeta^2 + 19*zeta + 28)*q^1082 + (34*zeta^2 + 51*zeta - 102)*q^1083 + 
(30*zeta^2 + 12*zeta - 12)*q^1086 + (-28*zeta^2 - 40*zeta + 84)*q^1087 + 
(-24*zeta^2 + 32*zeta + 112)*q^1088 + (-12*zeta^2 + 60*zeta + 144)*q^1089 + 
(5*zeta^2 + 10*zeta - 15)*q^1090 + (-36*zeta^2 - 6*zeta + 6)*q^1091 + 
(-62*zeta^2 - 6*zeta + 6)*q^1093 + (4*zeta^2 + 20*zeta - 12)*q^1094 + (6*zeta^2 
- 18*zeta - 48)*q^1095 + (24*zeta^2 - 24*zeta - 96)*q^1096 + (2*zeta^2 - 10*zeta
- 6)*q^1097 + (-16*zeta^2 - 8*zeta + 8)*q^1098 + (-63*zeta^2 - 85*zeta + 
189)*q^1101 + (-18*zeta^2 - 30*zeta - 24)*q^1102 + (28*zeta^2 - 16*zeta - 
88)*q^1103 + (-36*zeta^2 - 56*zeta + 108)*q^1104 + (13*zeta^2 + 8*zeta - 
8)*q^1105 + (2*zeta^2 + 5*zeta - 5)*q^1107 + (9*zeta^2 - 49*zeta - 116)*q^1109 +
(8*zeta^2 - 18*zeta - 52)*q^1110 + (72*zeta^2 + 102*zeta - 216)*q^1111 + 
(60*zeta^2 + 24*zeta - 24)*q^1112 + (52*zeta^2 + 12*zeta - 12)*q^1114 + 
(-12*zeta^2 - 27*zeta + 36)*q^1115 + (-33*zeta^2 + 37*zeta + 140)*q^1117 + 
(2*zeta^2 + 8*zeta - 6)*q^1118 + (2*zeta - 2)*q^1119 + (48*zeta^2 + 18*zeta - 
18)*q^1121 + (-89*zeta^2 - 126*zeta + 267)*q^1122 + (-29*zeta^2 + 8*zeta + 
74)*q^1123 + (2*zeta^2 + 4*zeta - 6)*q^1125 + (-52*zeta^2 - 2*zeta + 2)*q^1126 +
(-12*zeta^2 - 6*zeta + 6)*q^1128 + (-23*zeta^2 - 41*zeta + 69)*q^1129 + 
(-6*zeta^2 - 4*zeta + 4)*q^1130 + (2*zeta^2 + 11*zeta + 18)*q^1131 + (75*zeta^2 
+ 21*zeta - 21)*q^1133 + (-15*zeta^2 - 9*zeta + 9)*q^1135 + (-32*zeta^2 - 
40*zeta + 96)*q^1136 + (2*zeta^2 - 4*zeta - 12)*q^1137 + (-12*zeta^2 - 8*zeta + 
8)*q^1138 + (-5*zeta^2 + 4*zeta + 15)*q^1139 + (-64*zeta^2 - 26*zeta + 
26)*q^1142 + (4*zeta^2 - 4*zeta - 12)*q^1143 + (10*zeta^2 - 22*zeta - 64)*q^1144
+ (17*zeta^2 - 23*zeta - 80)*q^1145 + (-57*zeta^2 - 84*zeta + 171)*q^1146 + 
(18*zeta^2 + 12*zeta - 12)*q^1147 + (-36*zeta^2 - 10*zeta + 10)*q^1149 + 
(-4*zeta^2 - 10*zeta + 12)*q^1150 + (6*zeta^2 - 6*zeta - 24)*q^1151 + (32*zeta +
64)*q^1152 + (58*zeta^2 + 74*zeta - 174)*q^1153 + (12*zeta^2 - 3*zeta + 
3)*q^1154 + (16*zeta^2 + 8*zeta - 48)*q^1157 + (-16*zeta^2 + 48*zeta + 
128)*q^1158 + (-12*zeta^2 + 12*zeta + 48)*q^1159 + (-10*zeta^2 - 4*zeta + 
30)*q^1160 + (2*zeta^2 + 2*zeta - 2)*q^1161 + (58*zeta^2 + 14*zeta - 14)*q^1163 
+ (-2*zeta^2 + 14*zeta + 32)*q^1165 + (-12*zeta^2 + 30*zeta + 84)*q^1166 + 
(-72*zeta^2 - 103*zeta + 216)*q^1167 + (48*zeta^2 + 24*zeta - 24)*q^1168 + 
(4*zeta^2 - 4*zeta + 4)*q^1170 + (19*zeta^2 + 43*zeta - 57)*q^1171 + (17*zeta^2 
- 51*zeta - 136)*q^1173 + (24*zeta^2 + 12*zeta - 72)*q^1174 + (-3*zeta^2 - 
3*zeta + 3)*q^1175 + (-102*zeta^2 - 30*zeta + 30)*q^1177 - 36*zeta*q^1178 + 
(16*zeta^2 - 4*zeta - 40)*q^1179 + (-17*zeta^2 - 44*zeta + 51)*q^1181 + 
(-42*zeta^2 - 10*zeta + 10)*q^1182 + (32*zeta^2 + 45*zeta - 96)*q^1185 + 
(15*zeta^2 - 9*zeta - 48)*q^1186 + (-2*zeta^2 - 34*zeta - 64)*q^1187 + (4*zeta^2
+ 17*zeta - 17)*q^1189 + (13*zeta^2 + 4*zeta - 4)*q^1191 + (-32*zeta^2 - 56*zeta
+ 96)*q^1192 + (15*zeta^2 - 16*zeta - 62)*q^1193 + (4*zeta^2 - 14*zeta - 
36)*q^1194 + (-3*zeta^2 + 3*zeta + 9)*q^1195 + (-26*zeta^2 - 15*zeta + 
15)*q^1198 + (25*zeta^2 + 35*zeta - 75)*q^1199 + (-4*zeta^2 + 8*zeta + 
24)*q^1200 + (18*zeta^2 + 13*zeta - 10)*q^1201 + (30*zeta^2 + 36*zeta - 
90)*q^1202 + (-19*zeta^2 - 7*zeta + 7)*q^1203 + (30*zeta^2 + 9*zeta - 9)*q^1205 
+ (4*zeta^2 - 8*zeta - 12)*q^1206 + (20*zeta^2 - 38*zeta - 116)*q^1207 + 
(2*zeta^2 - 26*zeta - 56)*q^1208 + (3*zeta^2 + 12*zeta - 9)*q^1209 + (-36*zeta^2
- 6*zeta + 6)*q^1210 + (-17*zeta^2 - 38*zeta + 51)*q^1213 + (-15*zeta^2 + 
29*zeta + 88)*q^1214 + (4*zeta^2 - 20*zeta - 48)*q^1215 + (48*zeta^2 + 48*zeta -
144)*q^1216 + (-39*zeta^2 - 3*zeta + 3)*q^1217 + (-30*zeta^2 - 18*zeta + 
18)*q^1219 + (31*zeta^2 - 75*zeta - 212)*q^1221 + (15*zeta^2 + 9*zeta - 
12)*q^1222 + (-18*zeta^2 - 27*zeta + 54)*q^1223 + (-56*zeta^2 - 24*zeta + 
24)*q^1224 + (68*zeta^2 + 10*zeta - 10)*q^1226 + (30*zeta^2 + 42*zeta - 
90)*q^1227 + (30*zeta^2 - 54*zeta - 168)*q^1229 + (6*zeta^2 + 10*zeta - 
18)*q^1230 + (-58*zeta^2 - 26*zeta + 26)*q^1231 + (48*zeta^2 + 24*zeta - 
24)*q^1233 + (-8*zeta^2 - 14*zeta + 24)*q^1234 + (-6*zeta^2 - 12*zeta - 
12)*q^1235 + (6*zeta^2 + 6*zeta - 18)*q^1237 + (-58*zeta^2 - 24*zeta + 
24)*q^1238 + (-12*zeta^2 - 12*zeta + 12)*q^1240 + (42*zeta^2 + 48*zeta - 
126)*q^1241 + (8*zeta^2 + 6*zeta - 4)*q^1242 + (3*zeta^2 - 5*zeta - 16)*q^1243 +
(10*zeta^2 + 8*zeta - 8)*q^1247 + (-10*zeta^2 + 4*zeta + 28)*q^1249 + (-zeta^2 +
zeta + 4)*q^1250 + (36*zeta^2 + 60*zeta - 108)*q^1251 + (-144*zeta^2 - 42*zeta +
42)*q^1254 + (19*zeta^2 + 34*zeta - 57)*q^1255 + (36*zeta^2 - 44*zeta - 
160)*q^1256 + (3*zeta^2 - 15*zeta - 36)*q^1257 + (38*zeta^2 + 58*zeta - 
114)*q^1258 + (-34*zeta^2 + 6*zeta - 6)*q^1259 + (-3*zeta^2 - 18*zeta + 
18)*q^1261 + (-19*zeta^2 - 2*zeta + 57)*q^1262 + (-19*zeta^2 + 38*zeta + 
114)*q^1263 + (-24*zeta^2 + 52*zeta + 152)*q^1264 + (-23*zeta^2 - 32*zeta + 
69)*q^1265 + (-36*zeta^2 - 9*zeta + 9)*q^1266 + (3*zeta^2 - 3*zeta - 9)*q^1269 +
(4*zeta^2 + 2*zeta - 4)*q^1270 + (-24*zeta^2 - 6*zeta + 36)*q^1271 + (24*zeta^2 
+ 36*zeta - 72)*q^1272 + (-12*zeta^2 - 18*zeta + 18)*q^1273 + (-15*zeta^2 - 
4*zeta + 4)*q^1275 + (9*zeta^2 + 28*zeta + 38)*q^1277 + (8*zeta^2 - 32*zeta - 
80)*q^1278 + (-43*zeta^2 - 50*zeta + 129)*q^1279 + (-8*zeta^2 - 12*zeta + 
12)*q^1282 + (-30*zeta^2 - 48*zeta + 90)*q^1283 + (6*zeta^2 - 24*zeta - 
60)*q^1285 + (33*zeta^2 + 48*zeta - 99)*q^1286 + (32*zeta^2 + 10*zeta - 
10)*q^1287 + (4*zeta^2 - 16*zeta + 16)*q^1289 + (-6*zeta^2 - 8*zeta + 18)*q^1290
+ (20*zeta^2 - 20*zeta - 80)*q^1291 + (24*zeta^2 + 29*zeta - 72)*q^1293 + 
(52*zeta^2 + 20*zeta - 20)*q^1294 + (52*zeta^2 + 24*zeta - 24)*q^1296 + 
(53*zeta^2 + 74*zeta - 159)*q^1297 + (-18*zeta^2 + 44*zeta + 124)*q^1298 + 
(18*zeta^2 - 48*zeta - 132)*q^1299 + (26*zeta^2 + 9*zeta - 9)*q^1301 + 
(58*zeta^2 + 21*zeta - 21)*q^1303 - 12*zeta*q^1304 + (-6*zeta^2 - 10*zeta - 
8)*q^1305 + (-18*zeta^2 - 6*zeta + 24)*q^1306 + (18*zeta^2 + 33*zeta - 
54)*q^1307 + (10*zeta^2 + 8*zeta - 8)*q^1310 + (-54*zeta^2 - 84*zeta + 
162)*q^1311 + (12*zeta^2 - 18*zeta - 60)*q^1313 + (24*zeta^2 + 48*zeta - 
72)*q^1314 + (-38*zeta^2 - 16*zeta + 16)*q^1315 + (16*zeta^2 + zeta - 1)*q^1317 
+ (21*zeta^2 + 18*zeta - 63)*q^1318 + (-24*zeta^2 + 18*zeta + 84)*q^1319 + 
(-14*zeta^2 + 34*zeta + 96)*q^1320 + (-10*zeta^2 - 44*zeta + 30)*q^1321 + 
(60*zeta^2 + 12*zeta - 12)*q^1322 + (3*zeta^2 + 6*zeta - 9)*q^1325 + (-13*zeta^2
+ 23*zeta + 72)*q^1326 + (-3*zeta^2 + 41*zeta + 88)*q^1327 + (-62*zeta^2 - 
20*zeta + 20)*q^1329 + (-85*zeta^2 - 26*zeta + 26)*q^1331 + (-6*zeta^2 - 
6*zeta)*q^1333 + (26*zeta^2 + 28*zeta + 4)*q^1334 + (-16*zeta^2 - 24*zeta + 
48)*q^1335 + (32*zeta^2 + 10*zeta - 10)*q^1336 + (78*zeta^2 + 27*zeta - 
27)*q^1338 + (-27*zeta^2 - 3*zeta + 81)*q^1339 + (24*zeta^2 - 32*zeta - 
112)*q^1341 + (-20*zeta^2 - 28*zeta + 60)*q^1342 + (-97*zeta^2 - 27*zeta + 
27)*q^1343 + (-6*zeta^2 + 3*zeta - 3)*q^1345 + (-24*zeta^2 - 36*zeta + 
72)*q^1346 + (-29*zeta^2 + 60*zeta + 178)*q^1347 + (-48*zeta^2 - 60*zeta + 
144)*q^1349 + (-zeta + 1)*q^1350 + (32*zeta^2 + 4*zeta - 4)*q^1352 + (27*zeta^2 
+ 38*zeta - 81)*q^1353 + (23*zeta^2 + 7*zeta - 32)*q^1354 + (8*zeta^2 - 20*zeta 
- 56)*q^1355 + (-38*zeta^2 - 16*zeta + 16)*q^1357 + (28*zeta^2 + 2*zeta - 
2)*q^1359 + (-16*zeta^2 - 28*zeta + 48)*q^1360 + (-15*zeta^2 - 27*zeta - 
24)*q^1361 + (15*zeta^2 - 27*zeta - 84)*q^1362 + (12*zeta^2 - 9*zeta - 
36)*q^1363 + (-4*zeta^2 + 12*zeta - 12)*q^1366 + (-28*zeta^2 - 26*zeta + 
84)*q^1367 + (48*zeta + 96)*q^1368 + (-12*zeta^2 - 3*zeta + 18)*q^1369 + 
(12*zeta^2 + 24*zeta - 36)*q^1370 + (60*zeta^2 + 19*zeta - 19)*q^1371 + 
(4*zeta^2 + 5*zeta - 5)*q^1373 + (86*zeta^2 + 126*zeta - 258)*q^1374 + 
(-2*zeta^2 + 5*zeta + 14)*q^1375 + (46*zeta^2 + 55*zeta - 138)*q^1377 + 
(6*zeta^2 - 6*zeta + 6)*q^1378 + (26*zeta^2 + 50*zeta - 78)*q^1381 + (12*zeta^2 
- 8*zeta - 40)*q^1382 + (-32*zeta^2 + 76*zeta + 216)*q^1383 + (-6*zeta^2 + 
18)*q^1384 + (36*zeta^2 + 15*zeta - 15)*q^1385 + (72*zeta^2 + 36*zeta - 
36)*q^1387 + (22*zeta^2 - 62*zeta - 168)*q^1389 + (-12*zeta^2 + 18*zeta + 
60)*q^1390 + (18*zeta^2 + 30*zeta - 54)*q^1391 + (28*zeta^2 + 4*zeta - 4)*q^1392
+ (-26*zeta^2 - 16*zeta + 16)*q^1394 - 12*zeta*q^1395 + (-zeta^2 + zeta + 
4)*q^1397 + (-44*zeta^2 - 60*zeta + 132)*q^1398 + (26*zeta^2 + 16*zeta - 
16)*q^1399 + (57*zeta^2 + 16*zeta - 16)*q^1401 + (15*zeta^2 - 6*zeta - 
45)*q^1402 + (12*zeta^2 - 8*zeta - 40)*q^1403 + (-17*zeta^2 - 25*zeta + 
51)*q^1405 + (60*zeta^2 + 12*zeta - 12)*q^1406 + (-80*zeta^2 - 24*zeta + 
24)*q^1408 + (-23*zeta^2 - 13*zeta + 69)*q^1409 + (3*zeta^2 - 3*zeta - 
12)*q^1410 + (80*zeta^2 + 36*zeta - 36)*q^1413 + (-13*zeta^2 - 11*zeta + 
11)*q^1415 + (36*zeta^2 + 52*zeta - 108)*q^1416 + (-5*zeta^2 - 10*zeta - 
10)*q^1417 + (-17*zeta^2 + 17*zeta + 68)*q^1418 + (-24*zeta^2 - 34*zeta + 
72)*q^1419 + (-76*zeta^2 - 24*zeta + 24)*q^1422 + (22*zeta^2 + 34*zeta - 
66)*q^1423 + (-32*zeta - 64)*q^1424 + (-6*zeta^2 + 12*zeta + 36)*q^1425 + 
(-6*zeta^2 + 36*zeta + 18)*q^1426 + (-25*zeta^2 - 3*zeta + 3)*q^1427 + 
(18*zeta^2 + 12*zeta - 12)*q^1429 + (11*zeta^2 + 16*zeta - 33)*q^1430 + 
(-3*zeta^2 - 3*zeta)*q^1431 + (-12*zeta^2 - 12*zeta)*q^1432 + (18*zeta^2 + 
33*zeta - 54)*q^1433 + (-3*zeta + 3)*q^1434 + (-41*zeta^2 - 60*zeta + 
123)*q^1437 + (-4*zeta^2 - 26*zeta - 44)*q^1438 + (-28*zeta^2 + 19*zeta + 
94)*q^1439 + (26*zeta^2 + 7*zeta - 7)*q^1441 + (-28*zeta^2 - 7*zeta + 7)*q^1443 
+ (6*zeta^2 - 8*zeta - 28)*q^1445 + (-30*zeta^2 + 72*zeta + 204)*q^1446 + 
(-46*zeta^2 - 83*zeta + 138)*q^1447 + (12*zeta^2 - 12*zeta + 12)*q^1448 + 
(2*zeta^2 - 3*zeta + 3)*q^1450 + (-50*zeta^2 - 58*zeta + 150)*q^1451 + 
(-6*zeta^2 + 14*zeta + 40)*q^1453 + (-34*zeta^2 - 52*zeta + 102)*q^1454 + 
(-15*zeta^2 - 6*zeta + 6)*q^1455 + (18*zeta^2 + 27*zeta - 27)*q^1457 + 
(25*zeta^2 + 46*zeta - 75)*q^1458 + (-18*zeta - 36)*q^1459 + (-67*zeta^2 - 
90*zeta + 201)*q^1461 + (16*zeta^2 + 2*zeta - 2)*q^1462 + (-24*zeta^2 - 8*zeta +
8)*q^1464 + (-4*zeta^2 + 5*zeta + 12)*q^1465 + (-15*zeta^2 + 57*zeta + 
144)*q^1466 + (12*zeta^2 - 24)*q^1467 + (-14*zeta^2 - 21*zeta + 21)*q^1469 + 
(42*zeta^2 + 30*zeta - 30)*q^1471 + (-40*zeta^2 - 32*zeta + 120)*q^1472 + 
(11*zeta^2 - 42*zeta - 106)*q^1473 + (-2*zeta - 4)*q^1474 + (5*zeta^2 + 8*zeta -
15)*q^1475 + (2*zeta^2 + 13*zeta - 13)*q^1478 + (27*zeta^2 + 43*zeta - 
81)*q^1479 + (4*zeta^2 - 16*zeta - 40)*q^1480 + (20*zeta^2 - 11*zeta - 
62)*q^1481 + (30*zeta^2 + 36*zeta - 90)*q^1482 + (31*zeta^2 + 11*zeta - 
11)*q^1483 + (3*zeta^2 + zeta - 1)*q^1485 + (-42*zeta^2 - 66*zeta + 126)*q^1486 
+ (15*zeta^2 - 30*zeta - 90)*q^1487 + (12*zeta^2 - 12*zeta - 48)*q^1488 + 
(-41*zeta^2 - 28*zeta + 123)*q^1489 + (28*zeta^2 + 12*zeta - 12)*q^1490 + 
(-62*zeta^2 - 64*zeta + 186)*q^1493 + (9*zeta^2 + 11*zeta + 4)*q^1495 + 
(-74*zeta^2 - 104*zeta + 222)*q^1496 + (-9*zeta^2 - 3*zeta + 3)*q^1497 + 
(-5*zeta^2 + 14*zeta - 14)*q^1499 + (-36*zeta^2 + 78*zeta + 228)*q^1501 + 
(-21*zeta^2 + 9*zeta + 60)*q^1502 + (22*zeta^2 + 32*zeta - 66)*q^1503 + 
(-106*zeta^2 - 34*zeta + 34)*q^1506 + (60*zeta^2 + 84*zeta - 180)*q^1507 + 
(34*zeta^2 - 65*zeta - 198)*q^1509 + (13*zeta^2 + 14*zeta - 39)*q^1510 + 
(-6*zeta^2 - 15*zeta + 15)*q^1511 + (56*zeta^2 + 24*zeta - 24)*q^1513 + 
(20*zeta^2 + 28*zeta - 60)*q^1514 + (-12*zeta^2 + 30*zeta + 84)*q^1515 + 
(-14*zeta^2 - 14*zeta + 42)*q^1517 + (110*zeta^2 + 32*zeta - 32)*q^1518 - 
24*zeta^2*q^1520 + (28*zeta^2 + 32*zeta - 84)*q^1521 + (-18*zeta - 36)*q^1522 + 
(-28*zeta^2 + 40*zeta + 136)*q^1523 + (-4*zeta^2 - 2*zeta + 2)*q^1525 + 
(48*zeta^2 + 11*zeta - 11)*q^1527 + (-54*zeta^2 - 60*zeta + 162)*q^1528 + 
(-33*zeta^2 + 81*zeta + 228)*q^1529 + (12*zeta^2 - 16*zeta - 56)*q^1530 + 
(4*zeta^2 - 16*zeta - 12)*q^1531 + 14*zeta^2*q^1534 + (-14*zeta^2 - 7*zeta + 
42)*q^1535 + (-16*zeta^2 + 48*zeta + 128)*q^1536 + (-9*zeta^2 - 15*zeta - 
12)*q^1537 + (-2*zeta^2 - 8*zeta + 6)*q^1538 + (78*zeta^2 + 36*zeta - 36)*q^1539
+ (14*zeta^2 + 22*zeta - 22)*q^1541 + (78*zeta^2 + 108*zeta - 234)*q^1542 + 
(15*zeta^2 - 30*zeta - 90)*q^1543 + (-32*zeta^2 + 32*zeta + 128)*q^1544 + 
(21*zeta^2 + 33*zeta - 63)*q^1545 + (-60*zeta^2 - 15*zeta + 15)*q^1546 + 
(2*zeta^2 - 4*zeta - 6)*q^1549 + (6*zeta^2 - 12)*q^1550 + (6*zeta^2 - 15*zeta - 
42)*q^1551 + (-24*zeta^2 - 12*zeta + 72)*q^1552 + (13*zeta^2 + 15*zeta - 
15)*q^1553 - 10*zeta^2*q^1555 + (-6*zeta^2 - 6*zeta)*q^1557 + (12*zeta^2 + 
24*zeta + 24)*q^1558 + (34*zeta^2 + 34*zeta - 102)*q^1559 + (12*zeta^2 + 2*zeta 
- 2)*q^1560 + (88*zeta^2 + 26*zeta - 26)*q^1562 + (40*zeta^2 + 54*zeta - 
120)*q^1563 + (-15*zeta^2 + 18*zeta + 66)*q^1565 + (3*zeta^2 - 8*zeta - 
9)*q^1566 + (4*zeta^2 - 4*zeta + 4)*q^1567 + (48*zeta^2 + 18*zeta - 18)*q^1569 +
(22*zeta^2 + 40*zeta - 66)*q^1570 + (-18*zeta^2 + 16*zeta + 68)*q^1571 + 
(24*zeta^2 + 54*zeta - 72)*q^1573 + (-84*zeta^2 - 33*zeta + 33)*q^1574 + 
(-44*zeta^2 - 24*zeta + 24)*q^1576 + (38*zeta^2 - 82*zeta - 240)*q^1578 + 
(-12*zeta^2 + 51*zeta + 126)*q^1579 + (24*zeta^2 + 3*zeta - 3)*q^1581 + 
(-66*zeta^2 - 30*zeta + 30)*q^1583 + (-56*zeta^2 - 80*zeta + 168)*q^1584 + 
(-4*zeta^2 + 10*zeta + 28)*q^1585 + (4*zeta^2 + 8*zeta + 8)*q^1586 + (-6*zeta^2 
- 3*zeta + 18)*q^1587 + (-18*zeta^2 - 6*zeta + 6)*q^1590 + (10*zeta^2 + 16*zeta 
- 30)*q^1591 + (12*zeta^2 - 8*zeta - 40)*q^1592 + (-zeta^2 - 3*zeta - 4)*q^1593 
+ (71*zeta^2 + 88*zeta - 213)*q^1594 + (19*zeta^2 + 6*zeta - 6)*q^1595 + 
58*zeta^2*q^1597 + (3*zeta^2 + 18*zeta - 9)*q^1598 + (-zeta^2 - 9*zeta - 
16)*q^1599 + (8*zeta + 16)*q^1600 + (46*zeta^2 + 82*zeta - 138)*q^1601 + 
32*zeta^2*q^1602 + (-30*zeta^2 - 42*zeta + 90)*q^1605 + (-24*zeta^2 + 60*zeta + 
168)*q^1606 + (9*zeta^2 - 33*zeta - 84)*q^1607 - 4*zeta*q^1608 + (68*zeta^2 + 
16*zeta - 16)*q^1609 + (-12*zeta + 12)*q^1611 + (6*zeta^2 + 36*zeta + 60)*q^1613
+ (6*zeta^2 - 24*zeta - 60)*q^1614 + (-24*zeta^2 - 42*zeta + 72)*q^1615 + 
(-72*zeta^2 - 24*zeta + 24)*q^1616 + (38*zeta^2 - 9*zeta + 9)*q^1618 + 
(31*zeta^2 + 35*zeta - 93)*q^1619 + (-6*zeta^2 + 14*zeta + 40)*q^1621 + 
(-38*zeta^2 - 26*zeta + 114)*q^1622 + (-33*zeta^2 - 7*zeta + 7)*q^1623 + (zeta^2
- zeta + 1)*q^1625 + (68*zeta^2 + 96*zeta - 204)*q^1626 + (-8*zeta^2 - 34*zeta -
52)*q^1627 + (24*zeta^2 + 12*zeta - 72)*q^1629 + (6*zeta^2 + 6*zeta - 6)*q^1630 
+ (38*zeta^2 + 44*zeta - 114)*q^1633 + (12*zeta^2 - 12*zeta - 48)*q^1634 + 
(-5*zeta^2 + 10*zeta + 30)*q^1635 + (-63*zeta^2 - 21*zeta + 21)*q^1637 + 
(104*zeta^2 + 30*zeta - 30)*q^1639 + (8*zeta^2 + 4*zeta - 24)*q^1640 + 
(-10*zeta^2 + 14*zeta + 48)*q^1641 + (15*zeta^2 - 3*zeta - 36)*q^1642 - 
18*zeta*q^1643 + (-10*zeta^2 + 4*zeta - 4)*q^1646 + (2*zeta^2 - 6)*q^1647 + 
(12*zeta^2 + 48*zeta + 72)*q^1648 + (24*zeta^2 - 15*zeta - 78)*q^1649 + 
(-17*zeta^2 - 24*zeta + 51)*q^1650 + (8*zeta^2 + 13*zeta - 13)*q^1651 + 
(42*zeta^2 + 6*zeta - 6)*q^1653 + (16*zeta^2 - 2*zeta - 48)*q^1654 + (18*zeta^2 
- 16*zeta - 68)*q^1655 + (-8*zeta^2 - 40*zeta - 64)*q^1656 + (-12*zeta^2 - 
3*zeta + 36)*q^1657 + (-94*zeta^2 - 30*zeta + 30)*q^1658 + (47*zeta^2 + 67*zeta 
- 141)*q^1661 + (-36*zeta^2 + 78*zeta + 228)*q^1662 + (18*zeta^2 - 64*zeta - 
164)*q^1663 + (8*zeta^2 + 32*zeta - 24)*q^1664 + (20*zeta^2 + 4*zeta - 4)*q^1665
+ (-56*zeta^2 - 19*zeta + 19)*q^1667 + (9*zeta^2 + 21*zeta + 24)*q^1669 + 
(-5*zeta^2 + 11*zeta + 32)*q^1670 + (66*zeta^2 + 92*zeta - 198)*q^1671 + 
(-120*zeta^2 - 36*zeta + 36)*q^1672 + (6*zeta^2 + 12*zeta - 12)*q^1674 + (zeta^2
- 2*zeta - 3)*q^1675 + (-4*zeta^2 + 6*zeta + 20)*q^1677 + (-54*zeta^2 - 90*zeta 
+ 162)*q^1678 + (-60*zeta^2 - 36*zeta + 36)*q^1679 + (-43*zeta^2 - 12*zeta + 
12)*q^1681 + (36*zeta^2 + 24*zeta - 108)*q^1682 + (30*zeta^2 - 74*zeta - 
208)*q^1683 + (15*zeta^2 + 12*zeta - 45)*q^1685 + (84*zeta^2 + 25*zeta - 
25)*q^1686 + (-36*zeta^2 - 18*zeta + 18)*q^1688 + (-76*zeta^2 - 102*zeta + 
228)*q^1689 + (-2*zeta^2 + 14*zeta + 32)*q^1690 + (-48*zeta - 96)*q^1691 + 
(-3*zeta^2 + 3*zeta - 3)*q^1693 + (2*zeta^2 - zeta + 1)*q^1695 + (24*zeta^2 - 
54*zeta - 156)*q^1697 + (13*zeta^2 - 17*zeta - 60)*q^1698 + (-3*zeta^2 - 30*zeta
+ 9)*q^1699 + (-44*zeta^2 - 6*zeta + 6)*q^1702 + (-13*zeta^2 + 4*zeta + 
39)*q^1703 + (20*zeta^2 - 52*zeta - 144)*q^1704 + (3*zeta^2 - 9*zeta - 
24)*q^1705 + (-30*zeta^2 - 36*zeta + 90)*q^1706 + (4*zeta^2 - 2*zeta + 2)*q^1707
+ (37*zeta^2 + 14*zeta - 14)*q^1709 + (-24*zeta^2 - 24*zeta + 72)*q^1710 + 
(-zeta^2 - 17*zeta - 32)*q^1711 + (24*zeta^2 - 48*zeta - 144)*q^1712 + 
(-70*zeta^2 - 102*zeta + 210)*q^1713 + (16*zeta^2 + 14*zeta - 14)*q^1714 + 
(-66*zeta^2 - 90*zeta + 198)*q^1717 + (12*zeta^2 - 64*zeta - 152)*q^1718 + 
(6*zeta^2 - 54*zeta - 120)*q^1719 + (-4*zeta^2 - 8*zeta + 12)*q^1720 + 
(-66*zeta^2 - 18*zeta + 18)*q^1721 + (-22*zeta^2 + 3*zeta - 3)*q^1723 + 
(5*zeta^2 - 9*zeta - 28)*q^1725 + (-26*zeta - 52)*q^1726 + (104*zeta^2 + 
146*zeta - 312)*q^1727 + (8*zeta^2 + 8*zeta - 8)*q^1728 + (-3*zeta + 3)*q^1730 +
(21*zeta^2 + 27*zeta - 63)*q^1731 + (4*zeta^2 + 62*zeta + 116)*q^1733 + 
(30*zeta^2 + 44*zeta - 90)*q^1734 + (4*zeta^2 + 5*zeta - 5)*q^1735 + (-64*zeta^2
- 32*zeta + 32)*q^1737 + (-109*zeta^2 - 154*zeta + 327)*q^1738 + (3*zeta^2 + 
9*zeta + 12)*q^1739 + (3*zeta^2 + 36*zeta - 9)*q^1741 + (10*zeta^2 + 18*zeta - 
18)*q^1742 - 20*zeta^2*q^1744 + (-18*zeta^2 - 30*zeta + 54)*q^1745 + (-12*zeta^2
- 24*zeta - 24)*q^1746 + (9*zeta^2 - 33*zeta - 84)*q^1747 + (-72*zeta^2 - 
21*zeta + 21)*q^1749 + (-81*zeta^2 - 42*zeta + 42)*q^1751 + (48*zeta^2 + 72*zeta
- 144)*q^1752 + (3*zeta^2 + 72*zeta + 138)*q^1753 + (-30*zeta^2 + 54*zeta + 
168)*q^1754 + (zeta^2 - 3*zeta - 3)*q^1755 + (-2*zeta^2 - 5*zeta + 5)*q^1758 + 
(74*zeta^2 + 74*zeta - 222)*q^1759 + (-6*zeta^2 + 30*zeta + 72)*q^1761 + 
(-12*zeta^2 - 48*zeta + 36)*q^1762 + (-8*zeta^2 - 6*zeta + 6)*q^1763 + 
(45*zeta^2 + 15*zeta - 15)*q^1765 + (-52*zeta^2 - 92*zeta + 156)*q^1766 + 
(18*zeta^2 - 18*zeta - 72)*q^1767 + (6*zeta^2 + 26*zeta + 40)*q^1768 + 
(10*zeta^2 + 4*zeta - 30)*q^1769 + (-26*zeta^2 - 8*zeta + 8)*q^1770 + 
(-20*zeta^2 - 44*zeta + 60)*q^1773 + (-14*zeta^2 + 38*zeta + 104)*q^1774 + 
(2*zeta^2 - 8*zeta - 20)*q^1775 + (52*zeta^2 + 72*zeta - 156)*q^1776 + 
(-34*zeta^2 - 8*zeta + 8)*q^1777 + (33*zeta^2 + 12*zeta - 12)*q^1779 + 
(-12*zeta^2 - 24*zeta - 24)*q^1781 + (-27*zeta^2 + 67*zeta + 188)*q^1782 + 
(-76*zeta^2 - 77*zeta + 228)*q^1783 + (48*zeta^2 - 6*zeta + 6)*q^1784 + 
(-18*zeta + 18)*q^1786 + (38*zeta^2 + 28*zeta - 114)*q^1787 + (12*zeta^2 - 
48*zeta - 120)*q^1789 + (6*zeta^2 - 18)*q^1790 + (20*zeta^2 + 12*zeta - 
12)*q^1791 + (12*zeta^2 + 3*zeta - 3)*q^1793 + (-24*zeta^2 - 26*zeta + 
72)*q^1794 + (8*zeta^2 - 8*zeta - 32)*q^1795 + (-24*zeta^2 - 37*zeta + 
72)*q^1797 + (18*zeta^2 + 42*zeta - 42)*q^1798 - 8*zeta^2*q^1800 + (17*zeta^2 - 
7*zeta - 51)*q^1801 + (18*zeta^2 - 24*zeta - 84)*q^1802 + (-18*zeta^2 + 48*zeta 
+ 132)*q^1803 - 17*zeta^2*q^1805 + (24*zeta^2 - 3*zeta + 3)*q^1807 + (-4*zeta^2 
+ 16*zeta + 12)*q^1808 + (7*zeta^2 + 3*zeta - 8)*q^1809 + (6*zeta^2 + 12*zeta + 
12)*q^1810 + (44*zeta^2 + 74*zeta - 132)*q^1811 + (42*zeta^2 - 6*zeta + 
6)*q^1814 + (-48*zeta^2 - 66*zeta + 144)*q^1815 + (-6*zeta^2 - 30*zeta - 
48)*q^1816 + (29*zeta^2 - 59*zeta - 176)*q^1817 + (-48*zeta^2 - 72*zeta + 
144)*q^1818 + (90*zeta^2 + 24*zeta - 24)*q^1819 + (-73*zeta^2 - 22*zeta + 
22)*q^1821 + (8*zeta^2 + 8*zeta - 24)*q^1822 + (3*zeta^2 - 54*zeta - 114)*q^1823
+ (6*zeta^2 + 12*zeta - 18)*q^1825 + (-6*zeta^2 - 18*zeta + 18)*q^1829 + 
(4*zeta^2 - 8*zeta - 24)*q^1830 + (33*zeta + 66)*q^1831 + (80*zeta^2 + 92*zeta -
240)*q^1832 + (-3*zeta^2 + 3*zeta - 3)*q^1833 + (41*zeta^2 + 19*zeta - 
19)*q^1835 + (-19*zeta^2 + 46*zeta + 130)*q^1837 + (13*zeta^2 - 49*zeta - 
124)*q^1838 + (92*zeta^2 + 126*zeta - 276)*q^1839 + (16*zeta^2 - 4*zeta + 
4)*q^1840 + (42*zeta^2 + 7*zeta - 7)*q^1842 + (-36*zeta^2 - 18*zeta + 
108)*q^1843 + (4*zeta^2 + 8*zeta + 8)*q^1845 + (-14*zeta^2 - 28*zeta + 
42)*q^1846 + (92*zeta^2 + 48*zeta - 48)*q^1847 - 39*zeta^2*q^1849 + (8*zeta^2 + 
10*zeta - 24)*q^1850 + (7*zeta^2 - 15*zeta - 44)*q^1851 + (-20*zeta^2 - 35*zeta 
+ 60)*q^1853 + (-36*zeta^2 + 12*zeta - 12)*q^1854 + (40*zeta^2 + 32*zeta - 
32)*q^1856 + (-63*zeta^2 - 92*zeta + 189)*q^1857 + (42*zeta^2 - 60*zeta - 
204)*q^1858 + (-22*zeta^2 + 52*zeta + 148)*q^1859 + (-38*zeta^2 - 25*zeta + 
25)*q^1861 + (-64*zeta^2 - 35*zeta + 35)*q^1863 + (-32*zeta^2 - 56*zeta + 
96)*q^1864 + (6*zeta^2 + 2*zeta - 8)*q^1865 + (10*zeta^2 - 30*zeta - 80)*q^1866 
+ (36*zeta^2 + 63*zeta - 108)*q^1867 + (52*zeta^2 + 15*zeta - 15)*q^1870 + 
(-zeta^2 - 23*zeta + 3)*q^1871 + (-24*zeta^2 + 8*zeta + 64)*q^1872 + (18*zeta^2 
- 8*zeta - 52)*q^1873 + (-11*zeta^2 - 44*zeta + 33)*q^1874 + (-3*zeta^2 - zeta +
1)*q^1875 + (-58*zeta^2 + 4*zeta - 4)*q^1877 + (-69*zeta^2 - 102*zeta + 
207)*q^1878 + (-21*zeta^2 + 3*zeta + 48)*q^1879 + (-6*zeta^2 - 6*zeta)*q^1880 + 
(-84*zeta^2 - 120*zeta + 252)*q^1881 + (-12*zeta + 12)*q^1882 + (2*zeta^2 - 
13*zeta - 6)*q^1885 + (-18*zeta^2 - 22*zeta - 8)*q^1886 + (-29*zeta^2 + 67*zeta 
+ 192)*q^1887 + (-16*zeta^2 + 9*zeta - 9)*q^1889 + (12*zeta^2 + 12*zeta - 
12)*q^1891 + (zeta^2 - 20*zeta - 42)*q^1893 + (48*zeta^2 - 42*zeta - 180)*q^1894
+ (2*zeta^2 + 2*zeta - 6)*q^1895 + (-128*zeta^2 - 38*zeta + 38)*q^1896 + 
(12*zeta^2 - 12*zeta + 12)*q^1898 + (-18*zeta^2 - 36*zeta + 54)*q^1899 + 
(-34*zeta^2 + 49*zeta + 166)*q^1901 + (-34*zeta^2 - 48*zeta + 102)*q^1902 + 
(9*zeta^2 + 3*zeta - 3)*q^1903 + (zeta - 1)*q^1905 + (46*zeta^2 + 34*zeta - 
138)*q^1906 + (-45*zeta^2 + 60*zeta + 210)*q^1907 + (30*zeta^2 + 3*zeta - 
3)*q^1910 + (12*zeta^2 + 18*zeta - 18)*q^1912 + (-47*zeta^2 - 46*zeta + 
141)*q^1913 + (-19*zeta^2 + 45*zeta + 128)*q^1914 + (6*zeta^2 - 10*zeta - 
32)*q^1915 + (-6*zeta^2 - 4*zeta + 4)*q^1917 + (-108*zeta^2 - 36*zeta + 
36)*q^1919 + (-24*zeta^2 - 32*zeta + 72)*q^1920 + (13*zeta^2 + 11*zeta - 
4)*q^1921 + (-23*zeta^2 - 49*zeta - 52)*q^1922 - 4*zeta*q^1923 + (72*zeta^2 + 
24*zeta - 24)*q^1926 + (-9*zeta^2 + 6*zeta + 27)*q^1927 + (-24*zeta^2 + 60*zeta 
+ 168)*q^1928 + (-24*zeta^2 + 57*zeta + 162)*q^1929 + (-16*zeta^2 - 32*zeta + 
48)*q^1930 + (-108*zeta^2 - 39*zeta + 39)*q^1931 + (-74*zeta^2 - 36*zeta + 
36)*q^1933 + (-42*zeta^2 - 24*zeta + 126)*q^1934 + (4*zeta^2 - 4*zeta - 
16)*q^1935 + (48*zeta^2 - 72*zeta - 240)*q^1936 + (-26*zeta^2 - 20*zeta + 
78)*q^1937 + (132*zeta^2 + 42*zeta - 42)*q^1938 + (58*zeta^2 + 84*zeta - 
174)*q^1941 + (-30*zeta^2 + 48*zeta + 156)*q^1942 + (25*zeta^2 + 11*zeta - 
28)*q^1943 + (48*zeta^2 + 80*zeta - 144)*q^1944 + (41*zeta^2 + 10*zeta - 
10)*q^1945 + (-106*zeta^2 - 31*zeta + 31)*q^1947 + (-9*zeta^2 + 55*zeta + 
128)*q^1949 + (-zeta^2 + 5*zeta + 12)*q^1950 + (-43*zeta^2 - 50*zeta + 
129)*q^1951 + (-40*zeta^2 + 6*zeta - 6)*q^1954 + (17*zeta^2 + 34*zeta - 
51)*q^1955 + (18*zeta^2 + 72*zeta + 108)*q^1957 + (56*zeta^2 + 80*zeta - 
168)*q^1958 + (-6*zeta^2 - 6*zeta + 6)*q^1959 + (30*zeta^2 + 6*zeta - 6)*q^1961 
+ (-20*zeta^2 - 20*zeta + 60)*q^1962 + (17*zeta^2 - 8*zeta - 50)*q^1963 + 
(7*zeta^2 + 12*zeta - 21)*q^1965 + (72*zeta^2 + 21*zeta - 21)*q^1966 + 
(-24*zeta^2 - 4*zeta + 4)*q^1968 + (12*zeta^2 + 18*zeta - 36)*q^1969 + 
(12*zeta^2 - 10*zeta - 44)*q^1970 + (-6*zeta^2 - 6*zeta)*q^1971 + (-23*zeta^2 + 
9*zeta - 9)*q^1973 + (-19*zeta^2 - 6*zeta + 6)*q^1975 + (12*zeta^2 + 48*zeta - 
36)*q^1976 + (-9*zeta^2 + 30*zeta + 78)*q^1977 + (-12*zeta^2 + 8*zeta + 
40)*q^1978 + (-50*zeta^2 - 92*zeta + 150)*q^1979 + (-76*zeta^2 - 14*zeta + 
14)*q^1982 + (78*zeta^2 + 108*zeta - 234)*q^1983 + (-24*zeta^2 - 24*zeta)*q^1984
+ (-zeta^2 + 4*zeta + 10)*q^1985 + (66*zeta^2 + 100*zeta - 198)*q^1986 + 
(-25*zeta^2 - 17*zeta + 17)*q^1987 + (-20*zeta^2 + 6*zeta - 6)*q^1989 + 
(4*zeta^2 + 10*zeta - 12)*q^1990 + (-15*zeta^2 + 33*zeta + 96)*q^1991 + 
3*zeta*q^1993 + (9*zeta - 9)*q^1994 + (39*zeta^2 + 60*zeta - 117)*q^1997 + 
(4*zeta^2 - 2*zeta - 12)*q^1998 + (6*zeta^2 - 11*zeta - 34)*q^1999 + (-4*zeta^2 
- 4*zeta + 12)*q^2000 + (-30*zeta^2 - zeta + 1)*q^2001 + (-16*zeta^2 + 4*zeta - 
4)*q^2003 + (-2*zeta^2 - 7*zeta - 10)*q^2005 + (20*zeta^2 - 38*zeta - 
116)*q^2006 + (54*zeta^2 + 48*zeta - 162)*q^2007 + (-76*zeta^2 - 8*zeta + 
8)*q^2008 + (2*zeta^2 + 2*zeta - 2)*q^2010 + (zeta^2 + 13*zeta - 3)*q^2011 + 
(14*zeta^2 - 34*zeta - 96)*q^2013 + (-36*zeta^2 - 36*zeta + 108)*q^2014 + 
(6*zeta^2 + 15*zeta - 15)*q^2015 + (56*zeta^2 + 9*zeta - 9)*q^2017 + (65*zeta^2 
+ 82*zeta - 195)*q^2018 + (18*zeta^2 - 42*zeta - 120)*q^2019 + 6*zeta*q^2021 + 
(-54*zeta^2 - 12*zeta + 12)*q^2022 + (92*zeta^2 + 28*zeta - 28)*q^2024 + 
(7*zeta^2 + 13*zeta - 21)*q^2025 + (-20*zeta^2 - 16*zeta + 8)*q^2026 + 
(-38*zeta^2 + 20*zeta + 116)*q^2027 + (16*zeta^2 - 16*zeta + 16)*q^2029 + 
(9*zeta^2 + 8*zeta - 8)*q^2031 + (4*zeta^2 - 8*zeta - 12)*q^2032 + (36*zeta^2 - 
72*zeta - 216)*q^2033 + (-20*zeta^2 - 4*zeta + 32)*q^2034 + (31*zeta^2 + 44*zeta
- 93)*q^2035 + (20*zeta^2 + 30*zeta - 30)*q^2038 + (-10*zeta^2 - 38*zeta + 
30)*q^2039 + (14*zeta^2 - 30*zeta - 88)*q^2040 + (-12*zeta^2 - 38*zeta - 
52)*q^2041 + (-66*zeta^2 - 96*zeta + 198)*q^2042 + (24*zeta^2 - 6*zeta + 
6)*q^2043 + (-18*zeta^2 - 6*zeta + 6)*q^2045 + (30*zeta^2 + 42*zeta - 90)*q^2046
+ (8*zeta^2 + 40*zeta + 64)*q^2047 + (-18*zeta^2 - 20*zeta + 54)*q^2049 + 
(-2*zeta^2 + 2*zeta - 2)*q^2050 + (21*zeta^2 + 30*zeta - 63)*q^2053 + (-9*zeta^2
+ 31*zeta + 80)*q^2054 + (-12*zeta^2 + 24*zeta + 72)*q^2055 + (60*zeta^2 + 
96*zeta - 180)*q^2056 + (138*zeta^2 + 30*zeta - 30)*q^2057 + (-34*zeta^2 - 
18*zeta + 18)*q^2059 + (-12*zeta^2 + 80*zeta + 184)*q^2061 + (21*zeta^2 - 5*zeta
- 52)*q^2062 + (-18*zeta^2 - 48*zeta + 54)*q^2063 + (24*zeta^2 + 8*zeta - 
8)*q^2064 + (-18*zeta^2 - 30*zeta + 30)*q^2066 + (15*zeta^2 + 18*zeta - 
45)*q^2067 + (-6*zeta^2 + 63*zeta + 138)*q^2069 + (20*zeta^2 + 16*zeta - 
60)*q^2070 - 30*zeta^2*q^2071 + (28*zeta^2 + 10*zeta - 10)*q^2073 + (16*zeta^2 +
28*zeta - 48)*q^2074 + (-12*zeta^2 + 18*zeta + 36)*q^2077 + (36*zeta^2 - 6*zeta 
+ 6)*q^2078 + (-8*zeta^2 - 16*zeta + 24)*q^2081 + (-4*zeta^2 + 2*zeta + 
12)*q^2082 + (-18*zeta^2 + 4*zeta + 44)*q^2083 + (-48*zeta^2 - 15*zeta + 
15)*q^2085 + (-26*zeta^2 - 28*zeta + 28)*q^2087 + (8*zeta^2 + 40*zeta - 
24)*q^2088 + (8*zeta^2 + 40*zeta + 64)*q^2089 + (18*zeta^2 - 42*zeta - 
120)*q^2090 + (-23*zeta^2 - 36*zeta + 69)*q^2091 + (96*zeta^2 + 30*zeta - 
30)*q^2094 + (3*zeta^2 + 12*zeta - 9)*q^2095 + (12*zeta^2 + 20*zeta + 16)*q^2096
+ (24*zeta^2 - 32*zeta - 112)*q^2097 + (-8*zeta^2 - 4*zeta + 24)*q^2098 + 
70*zeta^2*q^2099 + O(q^2100), (-zeta + 1)*q + 2*zeta*q^2 + (3*zeta^2 + zeta - 
4)*q^3 + (-zeta^2 + 3)*q^5 + (-2*zeta^2 - 4*zeta + 4)*q^6 + (4*zeta^2 + 4*zeta -
4)*q^8 + 4*zeta*q^9 + (2*zeta^2 - 4)*q^10 + (-7*zeta^2 - 3*zeta + 8)*q^11 + 
(2*zeta^2 - zeta + 1)*q^13 + (-2*zeta^2 - 3*zeta + 3)*q^15 + (4*zeta^2 - 
12)*q^16 + (-7*zeta^2 - zeta + 12)*q^17 + (4*zeta^2 + 4*zeta)*q^18 + (-6*zeta^2 
+ 18)*q^19 + (6*zeta^2 + 10*zeta - 10)*q^22 + (-6*zeta^2 - 2*zeta + 18)*q^23 + 
(-8*zeta^2 - 4*zeta + 8)*q^24 + (zeta^2 + zeta)*q^25 + (2*zeta^2 + 6*zeta - 
6)*q^26 + (2*zeta^2 + zeta - 1)*q^27 + (-8*zeta^2 - 5*zeta + 5)*q^29 + 
(-2*zeta^2 + 2*zeta + 6)*q^30 + (6*zeta + 12)*q^31 + (7*zeta^2 - 10*zeta - 
21)*q^33 + (2*zeta^2 + 8*zeta - 8)*q^34 + (2*zeta^2 - 6*zeta - 6)*q^37 + 
(12*zeta^2 - 24)*q^38 + (5*zeta^2 + zeta - 8)*q^39 - 4*zeta*q^40 + (-6*zeta^2 - 
4*zeta + 4)*q^41 + (-2*zeta + 2)*q^43 + (4*zeta^2 - 8)*q^45 + (10*zeta^2 - 
2*zeta - 24)*q^46 + (3*zeta^2 + 6*zeta - 9)*q^47 + (8*zeta^2 + 12*zeta - 
12)*q^48 + (-2*zeta^2 - 2*zeta + 2)*q^50 + (7*zeta^2 - 8*zeta - 21)*q^51 + 
(-6*zeta^2 + 12)*q^53 + (2*zeta^2 + 2*zeta - 6)*q^54 + (4*zeta^2 + 7*zeta - 
7)*q^55 + (-12*zeta^2 - 18*zeta + 18)*q^57 + (-8*zeta^2 - 6*zeta + 24)*q^58 + 
(8*zeta^2 + 2*zeta - 12)*q^59 + 4*zeta*q^61 + (-12*zeta^2 - 6*zeta + 6)*q^62 + 
(-8*zeta + 8)*q^64 + (-3*zeta^2 - 2*zeta + 9)*q^65 + (-24*zeta^2 - 10*zeta + 
28)*q^66 + (2*zeta^2 - 4*zeta - 12)*q^67 + (-10*zeta^2 - 14*zeta + 14)*q^69 + 
(4*zeta^2 + 10*zeta - 10)*q^71 + (8*zeta^2 - 24)*q^72 + (12*zeta^2 - 24)*q^73 + 
(-10*zeta^2 - 6*zeta + 8)*q^74 + (-zeta^2 + 2*zeta + 3)*q^75 + (-2*zeta^2 - 
6*zeta + 6)*q^78 + (7*zeta^2 - 12*zeta - 21)*q^79 + (-4*zeta^2 - 4*zeta)*q^80 + 
(-13*zeta^2 - zeta + 24)*q^81 + (-6*zeta^2 - 4*zeta + 18)*q^82 + (6*zeta^2 + 
7*zeta - 7)*q^85 + 4*zeta*q^86 + (7*zeta^2 + 5*zeta - 4)*q^87 + (20*zeta^2 + 
8*zeta - 24)*q^88 + (8*zeta^2 - 24)*q^89 + (-4*zeta + 4)*q^90 + 6*zeta*q^93 + 
(6*zeta + 12)*q^94 + (6*zeta^2 + 6*zeta)*q^95 + (6*zeta^2 - 3*zeta + 3)*q^97 + 
(12*zeta^2 + 20*zeta - 20)*q^99 + (-18*zeta^2 - 6*zeta + 24)*q^101 + (-22*zeta^2
- 8*zeta + 28)*q^102 + (-15*zeta^2 - 6*zeta + 45)*q^103 + (12*zeta^2 + 8*zeta - 
8)*q^104 + (6*zeta - 6)*q^106 + (-6*zeta^2 + 12*zeta + 18)*q^107 + (5*zeta^2 + 
5*zeta)*q^109 + (4*zeta^2 - 6*zeta - 12)*q^110 + (10*zeta^2 + 18*zeta - 
18)*q^111 + (-10*zeta^2 - 4*zeta + 4)*q^113 + (-12*zeta^2 + 12*zeta + 36)*q^114 
+ (4*zeta^2 + 6*zeta + 4)*q^115 + (4*zeta^2 + 12*zeta - 12)*q^117 + (-4*zeta^2 -
10*zeta + 10)*q^118 + (4*zeta^2 + 8*zeta - 8)*q^120 + (-6*zeta^2 + 24*zeta + 
18)*q^121 + (4*zeta^2 + 4*zeta)*q^122 + (6*zeta^2 + 4*zeta - 4)*q^123 + (-zeta +
1)*q^125 + (6*zeta^2 + 2*zeta - 2)*q^127 + 16*zeta*q^128 + (6*zeta^2 + 2*zeta - 
8)*q^129 + (4*zeta^2 - 2*zeta - 12)*q^130 + (-8*zeta^2 - 6*zeta + 24)*q^131 + 
(8*zeta^2 + 2*zeta - 2)*q^134 + (-zeta^2 - 2*zeta + 3)*q^135 + (16*zeta^2 + 
12*zeta - 8)*q^136 + (12*zeta^2 + 12*zeta)*q^137 + (-10*zeta^2 + 8*zeta + 
30)*q^138 + (-6*zeta^2 - 18*zeta + 18)*q^139 + (-3*zeta + 3)*q^141 + (4*zeta^2 -
12*zeta - 12)*q^142 + (-11*zeta^2 - 5*zeta + 12)*q^143 + (-16*zeta^2 + 32)*q^144
+ (3*zeta^2 + 8*zeta - 9)*q^145 + (-12*zeta + 12)*q^146 + (12*zeta^2 - 4*zeta - 
36)*q^149 + (4*zeta^2 + 2*zeta - 4)*q^150 + (13*zeta^2 + zeta - 24)*q^151 - 
24*zeta*q^152 + (4*zeta^2 + 16*zeta - 16)*q^153 + 6*zeta^2*q^155 + (-22*zeta^2 -
18*zeta + 8)*q^157 + (-26*zeta^2 - 12*zeta + 28)*q^158 + (6*zeta^2 - 6*zeta - 
18)*q^159 + (2*zeta^2 + 14*zeta - 14)*q^162 + (6*zeta^2 + 6*zeta - 18)*q^163 + 
(-17*zeta^2 - 7*zeta + 20)*q^165 + (-6*zeta^2 - 11*zeta + 11)*q^167 + (12*zeta^2
+ 14*zeta - 14)*q^169 + (6*zeta^2 - 2*zeta - 18)*q^170 + (24*zeta^2 - 48)*q^171 
+ (3*zeta^2 + 6*zeta - 9)*q^173 + (-10*zeta^2 - 12*zeta + 12)*q^174 + 
(-16*zeta^2 - 28*zeta + 28)*q^176 + (-8*zeta^2 + 10*zeta + 24)*q^177 + 
(-16*zeta^2 + 32)*q^178 + (6*zeta^2 - 6*zeta - 24)*q^179 + (-18*zeta^2 - 12*zeta
+ 12)*q^181 + (-4*zeta^2 - 8*zeta + 8)*q^183 + (-4*zeta^2 - 24*zeta + 12)*q^184 
+ (-8*zeta^2 - 2*zeta + 12)*q^185 + (6*zeta^2 + 6*zeta)*q^186 + (-15*zeta^2 + 
22*zeta + 45)*q^187 + (-12*zeta^2 - 12*zeta + 12)*q^190 + (3*zeta^2 - 24*zeta - 
9)*q^191 + (24*zeta^2 + 8*zeta - 32)*q^192 + (-16*zeta^2 - 16*zeta)*q^193 + 
(6*zeta^2 + 18*zeta - 18)*q^194 + (-4*zeta^2 - 5*zeta + 5)*q^195 + (2*zeta^2 - 
10*zeta + 10)*q^197 + (12*zeta^2 - 16*zeta - 36)*q^198 + (-4*zeta^2 - 6*zeta - 
4)*q^199 + (-4*zeta^2 + 8)*q^200 + (-2*zeta^2 - 2*zeta + 6)*q^201 + (12*zeta^2 +
24*zeta - 24)*q^202 + (2*zeta^2 + 6*zeta - 6)*q^205 + (24*zeta^2 - 6*zeta - 
60)*q^206 + (20*zeta^2 - 4*zeta - 48)*q^207 + (12*zeta^2 + 8*zeta - 36)*q^208 + 
(24*zeta^2 + 42*zeta - 42)*q^209 + (-9*zeta + 9)*q^211 + (-26*zeta^2 - 10*zeta +
32)*q^213 + (24*zeta^2 + 12*zeta - 24)*q^214 + (-2*zeta^2 + 6)*q^215 + 
4*zeta^2*q^216 + (-10*zeta^2 - 10*zeta + 10)*q^218 + (-12*zeta^2 + 12*zeta + 
36)*q^219 + (-13*zeta^2 + 3*zeta + 32)*q^221 + (10*zeta^2 - 16*zeta - 30)*q^222 
+ (-30*zeta^2 - 27*zeta + 27)*q^223 + (-4*zeta^2 - 4*zeta + 4)*q^225 + 
(-10*zeta^2 - 12*zeta + 30)*q^226 + (-15*zeta^2 + 3*zeta + 36)*q^227 + (6*zeta^2
- 34*zeta - 18)*q^229 + (-12*zeta^2 - 10*zeta + 10)*q^230 + (-12*zeta^2 + 4*zeta
- 4)*q^232 + (12*zeta^2 - 4*zeta - 36)*q^233 + (4*zeta^2 + 12*zeta + 16)*q^234 +
(3*zeta^2 - 3*zeta - 12)*q^235 + (26*zeta^2 + 45*zeta - 45)*q^237 + (-12*zeta^2 
- 3*zeta + 3)*q^239 + (4*zeta^2 - 8*zeta - 12)*q^240 + (30*zeta^2 + 12*zeta - 
36)*q^241 + (36*zeta^2 + 24*zeta - 24)*q^242 + (16*zeta^2 - 8*zeta - 48)*q^243 +
(-8*zeta^2 - 10*zeta + 10)*q^246 + (-18*zeta^2 - 12*zeta + 54)*q^247 + 
(-12*zeta^2 + 12*zeta + 48)*q^248 + 2*zeta*q^250 + (30*zeta^2 + 34*zeta - 
34)*q^251 + (18*zeta^2 + 32*zeta - 32)*q^253 + (6*zeta^2 + 8*zeta - 18)*q^254 + 
(-15*zeta^2 - 7*zeta + 16)*q^255 + (18*zeta^2 - 12*zeta - 54)*q^257 + (-4*zeta^2
- 8*zeta + 8)*q^258 + (-16*zeta^2 - 12*zeta + 48)*q^261 + (10*zeta^2 - 6*zeta - 
32)*q^262 + (38*zeta^2 + 6*zeta - 64)*q^263 + (-20*zeta^2 + 28*zeta + 60)*q^264 
+ (6*zeta^2 + 6*zeta - 6)*q^265 + (16*zeta^2 + 24*zeta - 24)*q^267 + (-6*zeta^2 
- 12*zeta - 12)*q^269 + (-2*zeta - 4)*q^270 + (12*zeta^2 - 16*zeta - 36)*q^271 +
(-24*zeta^2 - 28*zeta + 28)*q^272 + (-24*zeta^2 - 24*zeta + 24)*q^274 + 
(3*zeta^2 - 4*zeta - 9)*q^275 + (-36*zeta^2 - 6*zeta + 60)*q^277 + (-6*zeta^2 + 
24*zeta + 18)*q^278 + (-24*zeta^2 - 12*zeta + 12)*q^279 + (16*zeta^2 + 25*zeta -
25)*q^281 + 6*zeta*q^282 + (-13*zeta^2 + 9*zeta + 44)*q^283 + (-6*zeta^2 + 
12*zeta + 18)*q^285 + (10*zeta^2 + 16*zeta - 16)*q^286 + (-2*zeta^2 + 12*zeta + 
6)*q^289 + (2*zeta^2 + 8*zeta + 12)*q^290 + (15*zeta^2 + 3*zeta - 24)*q^291 + 
(18*zeta^2 + 5*zeta - 5)*q^293 + (-6*zeta^2 - 8*zeta + 8)*q^295 + (-12*zeta^2 + 
8*zeta + 36)*q^296 + (3*zeta^2 + zeta - 4)*q^297 + (-28*zeta^2 - 4*zeta + 
48)*q^298 + (-20*zeta^2 - 18*zeta + 60)*q^299 + (-2*zeta^2 - 14*zeta + 14)*q^302
+ (18*zeta^2 - 24*zeta - 54)*q^303 + (-24*zeta^2 - 24*zeta)*q^304 + (4*zeta^2 - 
8)*q^305 + (4*zeta^2 - 24*zeta - 12)*q^306 + (14*zeta^2 - 7*zeta + 7)*q^307 + 
(-24*zeta^2 - 33*zeta + 33)*q^309 + (6*zeta^2 + 12*zeta - 18)*q^310 + 
(-10*zeta^2 - 10*zeta)*q^311 + (-12*zeta^2 - 8*zeta + 8)*q^312 + (-3*zeta^2 + 
30*zeta + 9)*q^313 + (36*zeta^2 + 40*zeta - 40)*q^314 + (6*zeta^2 - 8*zeta - 
18)*q^317 + (-18*zeta^2 - 6*zeta + 24)*q^318 + (-19*zeta^2 - 7*zeta + 24)*q^319 
+ (-8*zeta^2 + 24)*q^320 + (-24*zeta^2 - 42*zeta + 42)*q^321 + (36*zeta^2 + 
42*zeta - 42)*q^323 + (zeta^2 + 3*zeta + 4)*q^325 + (-6*zeta^2 + 6*zeta + 
24)*q^326 + (-5*zeta^2 + 10*zeta + 15)*q^327 + (-8*zeta^2 + 4*zeta - 4)*q^328 + 
(14*zeta^2 + 24*zeta - 24)*q^330 + (2*zeta^2 + 36*zeta - 6)*q^331 + (-20*zeta^2 
- 12*zeta + 16)*q^333 + (-6*zeta^2 + 10*zeta + 18)*q^334 + (-6*zeta^2 - 2*zeta +
2)*q^335 + (6*zeta^2 - 12*zeta + 12)*q^337 + (12*zeta^2 - 4*zeta - 36)*q^338 + 
(2*zeta^2 + 4*zeta + 4)*q^339 + (6*zeta^2 - 6*zeta - 18)*q^341 + (-24*zeta + 
24)*q^342 + (8*zeta^2 + 8*zeta - 8)*q^344 + (-4*zeta^2 + 10*zeta + 12)*q^345 + 
(6*zeta + 12)*q^346 + (-4*zeta^2 + 6*zeta + 20)*q^347 + (-24*zeta^2 - 30*zeta + 
30)*q^349 + (8*zeta^2 + 3*zeta - 3)*q^351 + (45*zeta^2 + 15*zeta - 60)*q^353 + 
(26*zeta^2 + 10*zeta - 32)*q^354 + (6*zeta^2 - 4*zeta - 18)*q^355 + 
12*zeta^2*q^358 + 16*zeta*q^359 + (-8*zeta^2 - 8*zeta)*q^360 + (17*zeta^2 + 
17*zeta)*q^361 + (-18*zeta^2 - 12*zeta + 54)*q^362 + (-36*zeta^2 - 66*zeta + 
66)*q^363 + (-12*zeta^2 - 12*zeta + 12)*q^365 + (-4*zeta^2 + 8*zeta + 12)*q^366 
+ (41*zeta^2 + 3*zeta - 76)*q^367 + (-16*zeta^2 - 24*zeta - 16)*q^368 + 
(-12*zeta^2 - 8*zeta + 36)*q^369 + (4*zeta^2 + 10*zeta - 10)*q^370 + (8*zeta^2 +
12*zeta - 24)*q^373 + (52*zeta^2 + 22*zeta - 60)*q^374 + (3*zeta^2 + zeta - 
4)*q^375 + (12*zeta^2 + 12*zeta - 36)*q^376 + (-30*zeta^2 - 13*zeta + 13)*q^377 
+ (-2*zeta + 2)*q^379 + (-2*zeta - 4)*q^381 + (-30*zeta^2 - 24*zeta + 12)*q^382 
+ (4*zeta^2 - 12*zeta - 12)*q^383 + (-16*zeta^2 - 32*zeta + 32)*q^384 + 
(32*zeta^2 + 32*zeta - 32)*q^386 + 8*zeta*q^387 + (-41*zeta^2 - 21*zeta + 
40)*q^389 + (-4*zeta^2 + 2*zeta + 12)*q^390 + (34*zeta^2 + 34*zeta - 34)*q^391 +
(-10*zeta^2 - 12*zeta + 12)*q^393 + (2*zeta^2 + 24*zeta - 6)*q^394 + (-19*zeta^2
- 7*zeta + 24)*q^395 + (-3*zeta^2 + 2*zeta + 9)*q^397 + (12*zeta^2 + 10*zeta - 
10)*q^398 + (4*zeta - 4)*q^400 + (-9*zeta^2 - 4*zeta + 27)*q^401 + (2*zeta^2 - 
2*zeta - 8)*q^402 + (-6*zeta^2 + 24*zeta + 60)*q^403 + (12*zeta^2 + 13*zeta - 
13)*q^405 + (-26*zeta^2 - 44*zeta + 44)*q^407 + (-16*zeta^2 + 28*zeta + 
48)*q^408 + (-18*zeta^2 - 6*zeta + 24)*q^409 + (2*zeta^2 + 6*zeta + 8)*q^410 + 
(-12*zeta^2 + 24*zeta + 36)*q^411 + (8*zeta^2 - 16*zeta + 16)*q^414 + (48*zeta^2
+ 18*zeta - 60)*q^417 + (24*zeta^2 - 36*zeta - 72)*q^418 + (18*zeta^2 + 12*zeta 
- 12)*q^419 + (19*zeta - 19)*q^421 + 18*zeta*q^422 + (12*zeta + 24)*q^423 + 
(12*zeta^2 + 12*zeta)*q^424 + (zeta^2 - 6*zeta - 3)*q^425 + (20*zeta^2 + 36*zeta
- 36)*q^426 + (11*zeta^2 - 16*zeta - 33)*q^429 + (4*zeta^2 - 8)*q^430 + 
(19*zeta^2 - 9*zeta - 56)*q^431 + (4*zeta^2 + 8*zeta - 12)*q^432 + (24*zeta^2 + 
30*zeta - 30)*q^433 + (-2*zeta^2 - 7*zeta + 7)*q^435 + (24*zeta^2 + 36*zeta + 
24)*q^437 + (36*zeta^2 + 12*zeta - 48)*q^438 + (12*zeta^2 + 26*zeta - 36)*q^439 
+ (-12*zeta^2 - 20*zeta + 20)*q^440 + (-6*zeta^2 + 10*zeta - 10)*q^442 + 
(-18*zeta^2 + 4*zeta + 54)*q^443 + (-8*zeta^2 - 8*zeta)*q^445 + (-30*zeta^2 - 
6*zeta + 90)*q^446 + (28*zeta^2 + 44*zeta - 44)*q^447 + (4*zeta^2 + 31*zeta - 
31)*q^449 + (-4*zeta^2 + 12)*q^450 + (-16*zeta^2 - 6*zeta + 20)*q^451 + 
(-13*zeta^2 + 14*zeta + 39)*q^453 + (-6*zeta^2 + 12*zeta - 12)*q^454 + 
(24*zeta^2 + 48*zeta - 48)*q^456 + (16*zeta^2 - 6*zeta - 48)*q^457 + (-46*zeta^2
- 34*zeta + 24)*q^458 + (zeta^2 + 5*zeta + 8)*q^459 + (-24*zeta^2 - 44*zeta + 
44)*q^461 + (-36*zeta^2 - 40*zeta + 40)*q^463 + (-12*zeta^2 - 32*zeta + 
36)*q^464 + (6*zeta^2 - 12)*q^465 + (-28*zeta^2 - 4*zeta + 48)*q^466 + 
(-7*zeta^2 + 18*zeta + 21)*q^467 + 6*zeta^2*q^470 + (22*zeta^2 - 40*zeta - 
66)*q^471 + (-20*zeta^2 - 12*zeta + 16)*q^472 + (-14*zeta^2 - 6*zeta + 16)*q^473
+ (26*zeta^2 - 38*zeta - 78)*q^474 + (-6*zeta + 6)*q^475 + (12*zeta - 12)*q^477 
+ (-12*zeta^2 - 18*zeta + 36)*q^478 + (22*zeta^2 + 16*zeta - 12)*q^479 - 
14*zeta*q^481 + (-24*zeta^2 - 42*zeta + 42)*q^482 + (-9*zeta^2 - 6*zeta + 
27)*q^485 + (-40*zeta^2 - 8*zeta + 64)*q^486 + (-44*zeta^2 - 2*zeta + 84)*q^487 
+ (8*zeta^2 - 24)*q^488 + (6*zeta^2 + 6*zeta - 6)*q^489 + (-40*zeta^2 - 31*zeta 
+ 31)*q^491 + (-11*zeta^2 - 21*zeta - 20)*q^493 + (24*zeta^2 - 12*zeta - 
72)*q^494 + (8*zeta^2 - 12*zeta - 24)*q^495 - 24*zeta^2*q^496 + (-3*zeta^2 + 
9)*q^499 + (27*zeta^2 + 11*zeta - 32)*q^501 + (30*zeta^2 - 8*zeta - 90)*q^502 + 
(-6*zeta^2 + 31*zeta - 31)*q^503 + (12*zeta^2 + 18*zeta - 18)*q^505 + (18*zeta^2
- 28*zeta - 54)*q^506 + (-30*zeta^2 - 14*zeta + 32)*q^507 + (4*zeta^2 + 30*zeta 
- 12)*q^509 + (14*zeta^2 + 22*zeta - 22)*q^510 + (32*zeta^2 + 32*zeta - 
32)*q^512 + (-6*zeta^2 - 12*zeta + 18)*q^513 + (-48*zeta^2 - 12*zeta + 72)*q^514
+ (9*zeta^2 + 15*zeta + 12)*q^515 + (6*zeta^2 + 9*zeta - 9)*q^517 + (-3*zeta + 
3)*q^519 + (-4*zeta^2 - 12*zeta + 12)*q^520 + (-26*zeta^2 - 2*zeta + 48)*q^521 +
(20*zeta^2 - 12*zeta - 64)*q^522 + (-24*zeta^2 - 12*zeta + 72)*q^523 + 
(-12*zeta^2 - 44*zeta + 44)*q^526 + (-12*zeta^2 - 30*zeta + 36)*q^527 + 
(68*zeta^2 + 28*zeta - 80)*q^528 + (-9*zeta^2 + 15*zeta + 48)*q^529 + (6*zeta^2 
- 18)*q^530 + (-8*zeta^2 - 20*zeta + 20)*q^531 + (-22*zeta^2 - 10*zeta + 
10)*q^533 + (16*zeta^2 - 16*zeta - 48)*q^534 + (18*zeta^2 + 6*zeta - 24)*q^535 +
(4*zeta^2 - 12*zeta - 32)*q^536 + (-6*zeta^2 + 18)*q^537 + (24*zeta^2 + 18*zeta 
- 18)*q^538 + (5*zeta^2 + 24*zeta - 15)*q^541 + (-40*zeta^2 - 16*zeta + 
48)*q^542 + (18*zeta^2 + 12*zeta - 12)*q^543 + (-5*zeta + 5)*q^545 + (-12*zeta^2
+ 4*zeta - 4)*q^547 + (8*zeta^2 + 8*zeta)*q^549 + (-10*zeta^2 - 4*zeta + 
12)*q^550 + (18*zeta^2 + 48*zeta - 54)*q^551 + (16*zeta^2 + 36*zeta - 36)*q^552 
+ (12*zeta^2 + 42*zeta - 42)*q^554 + (8*zeta^2 - 10*zeta - 24)*q^555 + 
(40*zeta^2 + 12*zeta - 56)*q^557 + (-24*zeta^2 - 24*zeta + 72)*q^558 + (4*zeta^2
- 2*zeta + 2)*q^559 + (-52*zeta^2 - 89*zeta + 89)*q^561 + (16*zeta^2 - 18*zeta -
48)*q^562 + (50*zeta^2 + 2*zeta - 96)*q^563 + (6*zeta^2 + 10*zeta - 18)*q^565 + 
(-18*zeta^2 + 4*zeta - 4)*q^566 + (-24*zeta^2 - 32*zeta + 32)*q^568 + 
(-12*zeta^2 - 20*zeta + 36)*q^569 + (24*zeta^2 + 12*zeta - 24)*q^570 + 
(-38*zeta^2 - 26*zeta + 24)*q^571 + (30*zeta^2 + 57*zeta - 57)*q^573 + (2*zeta^2
- 4*zeta + 4)*q^575 + 32*zeta*q^576 + (-15*zeta^2 + 3*zeta + 36)*q^577 + 
(16*zeta^2 + 12*zeta - 8)*q^578 + (16*zeta^2 - 32*zeta - 48)*q^579 + (-6*zeta^2 
- 18*zeta + 18)*q^582 + (-12*zeta^2 + 18*zeta + 36)*q^583 + (-24*zeta^2 - 
24*zeta)*q^584 + (8*zeta^2 - 4*zeta - 24)*q^585 + (18*zeta^2 + 26*zeta - 
54)*q^586 + (-36*zeta^2 - 24*zeta + 24)*q^587 + 36*zeta^2*q^589 + (-6*zeta^2 + 
4*zeta + 18)*q^590 + (32*zeta^2 + 10*zeta - 44)*q^591 + (32*zeta^2 + 8*zeta - 
48)*q^592 + (-15*zeta^2 - 6*zeta + 45)*q^593 + (-2*zeta^2 - 4*zeta + 4)*q^594 + 
(4*zeta^2 - 10*zeta - 12)*q^597 + (22*zeta^2 - 18*zeta - 80)*q^598 + (-11*zeta^2
- 15*zeta - 8)*q^599 + (4*zeta^2 - 4*zeta - 12)*q^600 + (-24*zeta^2 - 30*zeta + 
30)*q^601 + (16*zeta^2 + 4*zeta - 4)*q^603 + (30*zeta^2 + 6*zeta - 48)*q^605 + 
(-60*zeta^2 - 24*zeta + 72)*q^606 + (15*zeta^2 - 14*zeta - 45)*q^607 + (-4*zeta 
+ 4)*q^610 + (15*zeta^2 + 24*zeta - 45)*q^611 + (58*zeta^2 + 10*zeta - 96)*q^613
+ (14*zeta^2 + 42*zeta - 42)*q^614 + (-2*zeta^2 - 6*zeta + 6)*q^615 + (-2*zeta^2
- 8*zeta + 8)*q^617 + (-24*zeta^2 + 18*zeta + 72)*q^618 + (34*zeta^2 + 24*zeta -
20)*q^619 + (-8*zeta^2 - 14*zeta + 24)*q^621 + (20*zeta^2 + 20*zeta - 20)*q^622 
+ (16*zeta^2 + 20*zeta - 20)*q^624 + (-zeta^2 + 3)*q^625 + (36*zeta^2 + 30*zeta 
- 12)*q^626 + (-102*zeta^2 - 42*zeta + 120)*q^627 + (-18*zeta^2 - 38*zeta + 
38)*q^629 + (-36*zeta^2 - 19*zeta + 19)*q^631 + (-24*zeta^2 + 28*zeta + 
72)*q^632 + (27*zeta^2 + 9*zeta - 36)*q^633 + (-20*zeta^2 - 8*zeta + 24)*q^634 +
(-4*zeta^2 - 6*zeta + 12)*q^635 + (14*zeta^2 + 26*zeta - 26)*q^638 + (8*zeta^2 -
24*zeta - 24)*q^639 + (16*zeta^2 - 32)*q^640 + (4*zeta^2 - 12*zeta - 32)*q^641 +
(-24*zeta^2 + 36*zeta + 72)*q^642 + (-18*zeta^2 - 33*zeta + 33)*q^643 + 
(-4*zeta^2 - 6*zeta + 6)*q^645 + (36*zeta^2 - 12*zeta - 108)*q^646 + (-32*zeta^2
- 20*zeta + 24)*q^647 + (28*zeta^2 + 24*zeta - 8)*q^648 + (18*zeta^2 - 26*zeta -
54)*q^649 + (-6*zeta^2 - 4*zeta + 4)*q^650 + (-18*zeta^2 - 24*zeta + 54)*q^653 +
(20*zeta^2 + 10*zeta - 20)*q^654 + (2*zeta^2 + 8*zeta + 12)*q^655 + (-8*zeta^2 -
24*zeta + 24)*q^656 + (-24*zeta + 24)*q^657 + (24*zeta^2 + 21*zeta - 21)*q^659 +
(-48*zeta^2 - 12*zeta + 72)*q^661 + (32*zeta^2 + 36*zeta + 8)*q^662 + (13*zeta^2
- 10*zeta - 39)*q^663 + (24*zeta^2 + 32*zeta - 32)*q^666 + (26*zeta^2 + 54*zeta 
- 78)*q^667 + (51*zeta^2 + 27*zeta - 48)*q^669 + (-6*zeta^2 - 8*zeta + 18)*q^670
+ (12*zeta^2 + 20*zeta - 20)*q^671 + (-12*zeta^2 - 24*zeta + 24)*q^673 + 
(6*zeta^2 + 36*zeta - 18)*q^674 + (-zeta^2 + zeta + 4)*q^675 + (-23*zeta^2 - 
30*zeta + 69)*q^677 + (-8*zeta^2 - 6*zeta + 6)*q^678 + (-4*zeta^2 - 16*zeta + 
16)*q^680 + (15*zeta^2 - 12*zeta - 45)*q^681 + (-18*zeta^2 - 6*zeta + 24)*q^682 
+ (-16*zeta^2 + 12*zeta + 56)*q^683 + (-12*zeta + 12)*q^685 + (46*zeta^2 + 
86*zeta - 86)*q^687 + (8*zeta^2 - 24)*q^688 + (-12*zeta^2 + 6*zeta + 36)*q^689 +
(18*zeta^2 + 10*zeta - 16)*q^690 + (-12*zeta^2 - 4*zeta + 36)*q^691 + 
(-12*zeta^2 - 2*zeta + 2)*q^694 + (-12*zeta^2 + 6*zeta + 36)*q^695 + (-24*zeta^2
- 4*zeta + 40)*q^696 + (-10*zeta^2 - 16*zeta - 12)*q^697 + (-24*zeta^2 + 12*zeta
+ 72)*q^698 + (28*zeta^2 + 44*zeta - 44)*q^699 + (36*zeta^2 + 15*zeta - 
15)*q^701 + (8*zeta^2 + 10*zeta - 24)*q^702 + (-48*zeta^2 - 12*zeta + 72)*q^703 
+ (-56*zeta^2 - 24*zeta + 64)*q^704 + (-3*zeta^2 + 9)*q^705 + (-30*zeta^2 - 
60*zeta + 60)*q^706 + (-17*zeta^2 + 51)*q^709 + (-16*zeta^2 - 4*zeta + 24)*q^710
+ (-52*zeta^2 - 24*zeta + 56)*q^711 + 32*zeta*q^712 + (48*zeta^2 + 6*zeta - 
6)*q^713 + (6*zeta^2 + 11*zeta - 11)*q^715 + (-3*zeta^2 + 3*zeta + 12)*q^717 + 
(16*zeta^2 + 16*zeta)*q^718 + (4*zeta^2 + 30*zeta - 12)*q^719 + (16*zeta^2 + 
16*zeta - 16)*q^720 + (-34*zeta^2 - 34*zeta + 34)*q^722 + (-30*zeta^2 + 42*zeta 
+ 90)*q^723 + (5*zeta^2 - 3*zeta - 16)*q^725 + (-36*zeta^2 + 60*zeta + 
108)*q^726 + (16*zeta^2 + 34*zeta - 34)*q^727 + (4*zeta^2 + 25*zeta - 25)*q^729 
+ (-12*zeta^2 + 36)*q^730 + (-14*zeta^2 - 2*zeta + 24)*q^731 + (15*zeta^2 - 
42*zeta - 45)*q^733 + (-6*zeta^2 - 44*zeta + 44)*q^734 - 2*zeta*q^737 + 
(16*zeta^2 - 8*zeta - 48)*q^738 + (-11*zeta^2 + 13*zeta + 48)*q^739 + 
(-24*zeta^2 - 30*zeta + 30)*q^741 + (-18*zeta^2 - 42*zeta + 42)*q^743 + 
(12*zeta^2 - 36)*q^744 + (-16*zeta^2 - 12*zeta + 8)*q^745 + (-4*zeta^2 + 12*zeta
+ 32)*q^746 + (-2*zeta^2 - 4*zeta + 4)*q^750 + (-21*zeta^2 - 12*zeta + 63)*q^751
+ (-12*zeta^2 + 12*zeta + 48)*q^752 + (-72*zeta^2 - 34*zeta + 76)*q^753 + 
(-30*zeta^2 - 34*zeta + 90)*q^754 + (-12*zeta^2 - 13*zeta + 13)*q^755 + 
(12*zeta^2 + 20*zeta - 20)*q^757 + 4*zeta*q^758 + (-78*zeta^2 - 32*zeta + 
92)*q^759 + (-24*zeta^2 + 48)*q^760 + 18*zeta*q^761 + (4*zeta^2 + 2*zeta - 
2)*q^762 + (12*zeta^2 - 4*zeta - 36)*q^765 + (-20*zeta^2 - 12*zeta + 16)*q^766 +
(14*zeta^2 - 28)*q^767 + (-4*zeta^2 + 2*zeta - 2)*q^769 + (48*zeta^2 + 78*zeta -
78)*q^771 + (45*zeta^2 + 15*zeta - 60)*q^773 + (8*zeta^2 + 8*zeta)*q^774 + 
(-6*zeta^2 - 6*zeta + 18)*q^775 + (36*zeta^2 + 24*zeta - 24)*q^776 + (42*zeta^2 
+ 62*zeta - 62)*q^778 + (12*zeta^2 + 36*zeta - 36)*q^779 + (62*zeta^2 + 26*zeta 
- 72)*q^781 + (34*zeta^2 - 102)*q^782 + (-14*zeta^2 - 3*zeta + 3)*q^783 + 
(4*zeta^2 + 22*zeta - 22)*q^785 + (-10*zeta^2 + 4*zeta + 30)*q^786 + (51*zeta^2 
+ 33*zeta - 36)*q^787 + (-38*zeta^2 + 44*zeta + 114)*q^789 + (14*zeta^2 + 
26*zeta - 26)*q^790 + (-32*zeta^2 - 56*zeta + 56)*q^792 + (4*zeta^2 + 12*zeta - 
12)*q^793 + (8*zeta^2 + 2*zeta - 12)*q^794 + (-12*zeta^2 - 6*zeta + 12)*q^795 + 
(-54*zeta^2 - 71*zeta + 71)*q^797 + (-12*zeta^2 + 3*zeta - 3)*q^799 + 
(-32*zeta^2 + 64)*q^801 + (14*zeta^2 - 4*zeta - 36)*q^802 + (24*zeta^2 - 36*zeta
- 72)*q^803 + (-48*zeta^2 - 18*zeta + 18)*q^806 + (6*zeta^2 - 18*zeta - 
18)*q^807 + (48*zeta^2 + 24*zeta - 48)*q^808 + (47*zeta^2 - 9*zeta - 112)*q^809 
+ (12*zeta^2 - 2*zeta - 36)*q^810 + (50*zeta^2 + 38*zeta - 38)*q^811 + 
(40*zeta^2 + 68*zeta - 68)*q^813 + (-26*zeta^2 + 36*zeta + 78)*q^814 + (-6*zeta 
- 12)*q^815 + (60*zeta^2 + 28*zeta - 64)*q^816 + (-12*zeta^2 + 36)*q^817 + 
(12*zeta^2 + 24*zeta - 24)*q^818 + (15*zeta^2 + 12*zeta - 45)*q^821 + (48*zeta^2
+ 24*zeta - 48)*q^822 + (-14*zeta^2 + 4*zeta + 36)*q^823 + (-12*zeta^2 - 60*zeta
+ 36)*q^824 + (10*zeta^2 + 17*zeta - 17)*q^825 + (34*zeta^2 + 16*zeta - 
16)*q^827 + (64*zeta^2 + 30*zeta - 68)*q^829 + (36*zeta^2 - 42*zeta - 108)*q^831
+ (16*zeta^2 - 8*zeta + 8)*q^832 + (-36*zeta^2 - 66*zeta + 66)*q^834 + 
(-5*zeta^2 + 6*zeta + 15)*q^835 + (-6*zeta^2 + 12*zeta + 36)*q^837 + (18*zeta^2 
+ 12*zeta - 54)*q^838 + (18*zeta^2 + 54*zeta - 54)*q^839 + (48*zeta^2 + 36*zeta 
- 36)*q^841 - 38*zeta*q^842 + (-59*zeta^2 - 25*zeta + 68)*q^843 + (2*zeta^2 - 
12*zeta - 6)*q^845 + (-24*zeta^2 - 12*zeta + 12)*q^846 + (-24*zeta^2 - 24*zeta +
24)*q^848 + (13*zeta^2 - 4*zeta - 39)*q^849 + (-8*zeta^2 - 6*zeta + 4)*q^850 + 
(-38*zeta^2 - 6*zeta + 64)*q^851 + (24*zeta^2 + 30*zeta - 30)*q^853 + 
(-24*zeta^2 - 24*zeta + 24)*q^855 + (24*zeta^2 - 24*zeta - 72)*q^856 + 
(-2*zeta^2 - 14*zeta - 24)*q^857 + (-38*zeta^2 - 16*zeta + 44)*q^858 + 
(-12*zeta^2 + 52*zeta + 36)*q^859 + (18*zeta^2 - 10*zeta + 10)*q^862 - 
26*zeta*q^863 + (3*zeta^2 - 3*zeta - 12)*q^865 + (24*zeta^2 - 12*zeta - 
72)*q^866 + (-16*zeta^2 - 30*zeta + 30)*q^867 + (-64*zeta^2 - 109*zeta + 
109)*q^869 + (-2*zeta^2 + 10*zeta + 6)*q^870 + (8*zeta^2 - 18*zeta - 52)*q^871 +
(-20*zeta^2 + 40)*q^872 + (12*zeta^2 + 36*zeta - 36)*q^873 + (-72*zeta^2 - 
60*zeta + 60)*q^874 + (-30*zeta^2 + 24*zeta + 90)*q^877 + (2*zeta^2 + 26*zeta + 
48)*q^878 + (3*zeta^2 - 5*zeta - 16)*q^879 + (-12*zeta^2 + 16*zeta + 36)*q^880 +
(-24*zeta^2 + 12*zeta - 12)*q^881 + (-12*zeta^2 - 52*zeta + 52)*q^883 + 
(18*zeta^2 + 8*zeta - 20)*q^885 + (40*zeta^2 + 4*zeta - 72)*q^886 + (14*zeta^2 -
24*zeta - 42)*q^887 + (-32*zeta^2 - 52*zeta + 52)*q^888 + (16*zeta^2 + 16*zeta -
16)*q^890 + (-27*zeta^2 + 40*zeta + 81)*q^891 + (18*zeta^2 - 18*zeta - 72)*q^893
+ (28*zeta^2 - 32*zeta - 84)*q^894 + (-12*zeta^2 - 6*zeta + 6)*q^895 + 
(-22*zeta^2 - 24*zeta + 24)*q^897 + (4*zeta^2 - 54*zeta - 12)*q^898 + (24*zeta^2
- 42*zeta - 132)*q^899 + (-18*zeta^2 + 6*zeta + 54)*q^901 + (12*zeta^2 + 22*zeta
- 22)*q^902 + (-24*zeta^2 - 4*zeta + 4)*q^904 + (6*zeta^2 + 18*zeta - 18)*q^905 
+ (40*zeta^2 + 14*zeta - 52)*q^906 + (48*zeta^2 - 6*zeta - 108)*q^907 + 
(24*zeta^2 + 48*zeta - 48)*q^909 + (8*zeta^2 + 8*zeta - 8)*q^911 + (24*zeta^2 - 
48*zeta - 72)*q^912 + (-38*zeta^2 - 6*zeta + 64)*q^914 + (-4*zeta^2 + 4*zeta + 
12)*q^915 + (-10*zeta^2 - 6*zeta + 6)*q^918 + (13*zeta^2 - 36*zeta - 39)*q^919 +
(-20*zeta^2 + 4*zeta + 48)*q^920 + (35*zeta^2 + 7*zeta - 56)*q^921 + (-24*zeta^2
+ 40*zeta + 72)*q^922 + (14*zeta - 14)*q^923 + (6*zeta^2 + 8*zeta - 8)*q^925 + 
(-36*zeta^2 + 8*zeta + 108)*q^926 + (48*zeta^2 - 12*zeta - 120)*q^927 + 
(-42*zeta^2 + 18*zeta + 126)*q^929 + (-6*zeta + 6)*q^930 + (10*zeta^2 - 20*zeta 
- 30)*q^933 + (32*zeta^2 + 18*zeta - 28)*q^934 + (37*zeta^2 + 15*zeta - 
44)*q^935 + (24*zeta^2 + 16*zeta - 72)*q^936 + (-22*zeta^2 + 11*zeta - 11)*q^937
+ (-36*zeta^2 - 69*zeta + 69)*q^939 + (-12*zeta^2 + 12*zeta + 48)*q^941 + 
(-84*zeta^2 - 40*zeta + 88)*q^942 + (18*zeta^2 + 40*zeta - 54)*q^943 + 
(24*zeta^2 + 32*zeta - 32)*q^944 + (12*zeta^2 + 20*zeta - 20)*q^946 + (48*zeta^2
+ 6*zeta - 144)*q^947 + (24*zeta^2 - 12*zeta - 72)*q^949 + 12*zeta*q^950 + 
(20*zeta^2 + 34*zeta - 34)*q^951 + (58*zeta^2 + 46*zeta - 46)*q^953 - 
24*zeta*q^954 + (-27*zeta^2 - 3*zeta + 48)*q^955 + (19*zeta^2 - 26*zeta - 
57)*q^957 + (-32*zeta^2 - 38*zeta + 38)*q^958 + (-16*zeta^2 - 24*zeta + 
24)*q^960 + (-23*zeta^2 - 72*zeta + 69)*q^961 + (-14*zeta^2 - 14*zeta)*q^962 + 
(48*zeta^2 + 24*zeta - 48)*q^963 + (16*zeta - 16)*q^965 + (-60*zeta^2 - 42*zeta 
+ 42)*q^967 + (48*zeta^2 - 24*zeta - 144)*q^968 + (-90*zeta^2 - 42*zeta + 
96)*q^969 + (12*zeta^2 - 6*zeta - 36)*q^970 + (30*zeta^2 - 18*zeta - 90)*q^971 +
(4*zeta^2 + 46*zeta - 46)*q^974 + (-zeta^2 + 4*zeta + 3)*q^975 + (-16*zeta^2 + 
32)*q^976 + (-46*zeta^2 + 6*zeta + 104)*q^977 + (6*zeta^2 - 18)*q^978 + 
(-32*zeta^2 - 56*zeta + 56)*q^979 + (-20*zeta^2 - 20*zeta + 20)*q^981 + 
(-40*zeta^2 - 18*zeta + 120)*q^982 + (-51*zeta^2 - 21*zeta + 60)*q^983 + 
(-20*zeta^2 - 4*zeta + 32)*q^984 + (-12*zeta^2 - 2*zeta + 36)*q^985 + (42*zeta^2
+ 32*zeta - 32)*q^986 + (-12*zeta^2 - 4*zeta + 36)*q^989 + (-28*zeta^2 - 12*zeta
+ 32)*q^990 + (-62*zeta^2 - 14*zeta + 96)*q^991 + (-32*zeta^2 - 66*zeta + 
66)*q^993 + (-2*zeta^2 + 4*zeta - 4)*q^995 + (9*zeta^2 - 9*zeta - 36)*q^997 + 
(6*zeta^2 - 12)*q^998 + (-4*zeta^2 - 2*zeta + 12)*q^999 + (4*zeta^2 + 4*zeta - 
4)*q^1000 + (-22*zeta^2 - 38*zeta + 38)*q^1002 + (20*zeta^2 - 18*zeta - 
60)*q^1003 + (2*zeta + 4)*q^1005 + (-6*zeta^2 - 74*zeta + 18)*q^1006 + 
(36*zeta^2 + 36*zeta - 36)*q^1007 + (48*zeta^2 + 65*zeta - 65)*q^1009 + 
(12*zeta^2 - 12*zeta - 36)*q^1010 + (42*zeta^2 + 12*zeta - 60)*q^1011 + 
(20*zeta^2 + 36*zeta - 60)*q^1013 + (28*zeta^2 + 44*zeta - 44)*q^1014 + 
(16*zeta^2 + 4*zeta - 4)*q^1016 + (-20*zeta^2 - 24*zeta + 60)*q^1017 + 
(22*zeta^2 + 30*zeta + 16)*q^1018 + (-10*zeta^2 + 30*zeta + 80)*q^1019 + 
(36*zeta^2 + 66*zeta - 66)*q^1021 + (18*zeta^2 + 30*zeta - 30)*q^1023 + 
(32*zeta^2 - 96)*q^1024 + (4*zeta^2 - 2*zeta - 12)*q^1025 + (-12*zeta - 
24)*q^1026 + (9*zeta^2 - 22*zeta - 27)*q^1027 + (-30*zeta^2 - 24*zeta + 
24)*q^1030 + (21*zeta^2 + 16*zeta - 63)*q^1031 + (-16*zeta^2 - 8*zeta + 
16)*q^1032 + (12*zeta^2 - 30*zeta - 84)*q^1033 + (6*zeta^2 - 6*zeta - 18)*q^1034
+ (-24*zeta^2 - 20*zeta + 20)*q^1035 + (4*zeta^2 + 16*zeta - 16)*q^1037 + 
6*zeta*q^1038 + (-42*zeta^2 + 6*zeta + 96)*q^1039 + (-4*zeta^2 - 12*zeta - 
16)*q^1040 + (4*zeta^2 + 2*zeta - 12)*q^1041 + (4*zeta^2 + 28*zeta - 28)*q^1042 
+ (18*zeta^2 - 24*zeta - 54)*q^1045 + (36*zeta^2 - 12*zeta - 96)*q^1046 + 
(66*zeta^2 + 30*zeta - 72)*q^1047 + (-12*zeta^2 - 32*zeta + 36)*q^1048 + 
(12*zeta^2 + 8*zeta - 8)*q^1049 + (12*zeta^2 + 13*zeta - 13)*q^1051 + 
(-25*zeta^2 + 9*zeta + 68)*q^1053 + (-6*zeta^2 - 30*zeta - 48)*q^1054 + 
(-9*zeta^2 + 27)*q^1055 + (-30*zeta^2 - 6*zeta + 6)*q^1058 + (-45*zeta^2 + 
60*zeta + 135)*q^1059 + (33*zeta^2 + 33*zeta)*q^1061 + (-8*zeta^2 + 24*zeta + 
24)*q^1062 + (-32*zeta^2 - 26*zeta + 26)*q^1063 + (16*zeta^2 + 26*zeta - 
26)*q^1065 + (-22*zeta^2 - 24*zeta + 66)*q^1066 + (-33*zeta^2 - 15*zeta + 
36)*q^1067 + (12*zeta^2 + 12*zeta - 36)*q^1069 + (-12*zeta^2 - 24*zeta + 
24)*q^1070 + (24*zeta^2 + 8*zeta - 8)*q^1072 + (18*zeta^2 + 2*zeta - 54)*q^1073 
+ (12*zeta^2 - 24)*q^1074 + (2*zeta^2 + 2*zeta)*q^1075 + (-16*zeta^2 - 32*zeta +
32)*q^1077 + (-4*zeta^2 - 4*zeta + 12)*q^1080 + (18*zeta^2 - 24*zeta - 
84)*q^1081 + (14*zeta^2 + 24*zeta + 20)*q^1082 + (-17*zeta^2 + 34*zeta + 
51)*q^1083 + (-24*zeta^2 - 30*zeta + 30)*q^1086 + (-16*zeta^2 + 24*zeta + 
48)*q^1087 + (-56*zeta^2 - 8*zeta + 96)*q^1088 + (72*zeta^2 + 48*zeta - 
48)*q^1089 + 10*zeta*q^1090 + (-12*zeta^2 - 36*zeta + 36)*q^1091 + (12*zeta^2 + 
62*zeta - 62)*q^1093 + (-12*zeta^2 - 32*zeta + 36)*q^1094 + (24*zeta^2 + 12*zeta
- 24)*q^1095 + (-48*zeta^2 + 96)*q^1096 + (-14*zeta^2 - 24*zeta + 42)*q^1097 + 
(-16*zeta^2 - 16*zeta + 16)*q^1098 + (-41*zeta^2 + 44*zeta + 123)*q^1101 + 
(12*zeta^2 + 48*zeta + 72)*q^1102 + (-44*zeta^2 + 12*zeta + 112)*q^1103 + 
(16*zeta^2 - 40*zeta - 48)*q^1104 + (16*zeta^2 + 13*zeta - 13)*q^1105 + 
(-10*zeta^2 - 2*zeta + 2)*q^1107 + (58*zeta^2 + 40*zeta - 36)*q^1109 + 
(-26*zeta^2 - 10*zeta + 32)*q^1110 + (-42*zeta^2 + 60*zeta + 126)*q^1111 + 
(48*zeta^2 + 60*zeta - 60)*q^1112 + (-24*zeta^2 - 52*zeta + 52)*q^1114 + 
(3*zeta^2 + 30*zeta - 9)*q^1115 + (70*zeta^2 + 4*zeta - 132)*q^1117 + (4*zeta^2 
+ 12*zeta - 12)*q^1118 + 4*zeta^2*q^1119 + (-36*zeta^2 - 48*zeta + 48)*q^1121 + 
(-52*zeta^2 + 74*zeta + 156)*q^1122 + (-37*zeta^2 + 21*zeta + 116)*q^1123 + 
4*zeta*q^1125 + (-4*zeta^2 - 52*zeta + 52)*q^1126 + (12*zeta^2 + 12*zeta - 
12)*q^1128 + (-5*zeta^2 + 36*zeta + 15)*q^1129 + (-2*zeta^2 + 10*zeta + 
24)*q^1130 + (9*zeta^2 + 13*zeta + 8)*q^1131 + (42*zeta^2 + 75*zeta - 75)*q^1133
+ (18*zeta^2 + 15*zeta - 15)*q^1135 + (-24*zeta^2 + 16*zeta + 72)*q^1136 + 
(6*zeta^2 + 2*zeta - 8)*q^1137 + (4*zeta^2 - 20*zeta - 48)*q^1138 + (14*zeta^2 +
18*zeta - 42)*q^1139 + (52*zeta^2 + 64*zeta - 64)*q^1142 + (12*zeta^2 + 16*zeta 
- 36)*q^1143 + (32*zeta^2 + 12*zeta - 40)*q^1144 + (-40*zeta^2 - 6*zeta + 
68)*q^1145 + (30*zeta^2 - 54*zeta - 90)*q^1146 + (24*zeta^2 + 18*zeta - 
18)*q^1147 + (20*zeta^2 + 36*zeta - 36)*q^1149 + (2*zeta^2 + 12*zeta - 6)*q^1150
+ (12*zeta^2 - 24)*q^1151 + (32*zeta^2 + 32*zeta)*q^1152 + (-42*zeta^2 + 32*zeta
+ 126)*q^1153 + (-6*zeta^2 + 12*zeta - 12)*q^1154 + (24*zeta^2 + 16*zeta - 
72)*q^1157 + (-64*zeta^2 - 32*zeta + 64)*q^1158 + (24*zeta^2 - 48)*q^1159 + 
(16*zeta^2 + 12*zeta - 48)*q^1160 + (4*zeta^2 + 2*zeta - 2)*q^1161 + (-28*zeta^2
- 58*zeta + 58)*q^1163 + (-16*zeta^2 - 12*zeta + 8)*q^1165 + (42*zeta^2 + 
18*zeta - 48)*q^1166 + (41*zeta^2 - 62*zeta - 123)*q^1167 + (48*zeta^2 + 48*zeta
- 48)*q^1168 + (8*zeta^2 - 4*zeta + 4)*q^1170 + (-5*zeta^2 - 48*zeta + 
15)*q^1171 + (-68*zeta^2 - 34*zeta + 68)*q^1173 + (-36*zeta^2 - 24*zeta + 
108)*q^1174 + (-6*zeta^2 - 3*zeta + 3)*q^1175 + (60*zeta^2 + 102*zeta - 
102)*q^1177 + (36*zeta^2 + 72*zeta - 108)*q^1178 + (20*zeta^2 - 12*zeta - 
64)*q^1179 + (-10*zeta^2 - 54*zeta + 30)*q^1181 + (-20*zeta^2 - 42*zeta + 
42)*q^1182 + (19*zeta^2 - 26*zeta - 57)*q^1185 + (24*zeta^2 - 6*zeta - 
60)*q^1186 + (-32*zeta^2 - 36*zeta - 8)*q^1187 + (34*zeta^2 + 4*zeta - 4)*q^1189
+ (-8*zeta^2 - 13*zeta + 13)*q^1191 + (-8*zeta^2 + 48*zeta + 24)*q^1192 + 
(31*zeta^2 + zeta - 60)*q^1193 + (-18*zeta^2 - 10*zeta + 16)*q^1194 + (9*zeta^2 
+ 12*zeta - 27)*q^1195 + (30*zeta^2 + 26*zeta - 26)*q^1198 + (15*zeta^2 - 
20*zeta - 45)*q^1199 + (-12*zeta^2 - 4*zeta + 16)*q^1200 + (-5*zeta^2 + 31*zeta 
+ 72)*q^1201 + (-24*zeta^2 + 12*zeta + 72)*q^1202 + (-14*zeta^2 - 19*zeta + 
19)*q^1203 + (-18*zeta^2 - 30*zeta + 30)*q^1205 + (16*zeta^2 + 24*zeta - 
48)*q^1206 + (58*zeta^2 + 18*zeta - 80)*q^1207 + (-28*zeta^2 - 24*zeta + 
8)*q^1208 + (6*zeta^2 + 18*zeta - 18)*q^1209 + (-12*zeta^2 - 36*zeta + 
36)*q^1210 + (4*zeta^2 + 42*zeta - 12)*q^1213 + (-44*zeta^2 - 14*zeta + 
60)*q^1214 + (-24*zeta^2 - 16*zeta + 16)*q^1215 + (-48*zeta^2 + 144)*q^1216 + 
(-6*zeta^2 - 39*zeta + 39)*q^1217 + (36*zeta^2 + 30*zeta - 30)*q^1219 + 
(106*zeta^2 + 44*zeta - 124)*q^1221 + (-6*zeta^2 + 24*zeta + 60)*q^1222 + 
(9*zeta^2 - 18*zeta - 27)*q^1223 + (-48*zeta^2 - 56*zeta + 56)*q^1224 + 
(-20*zeta^2 - 68*zeta + 68)*q^1226 + (18*zeta^2 - 24*zeta - 54)*q^1227 + 
(-84*zeta^2 - 24*zeta + 120)*q^1229 + (-2*zeta^2 + 8*zeta + 6)*q^1230 + 
(-52*zeta^2 - 58*zeta + 58)*q^1231 + (-48*zeta^2 - 48*zeta + 48)*q^1233 + 
(-2*zeta^2 + 12*zeta + 6)*q^1234 + (6*zeta^2 + 18*zeta + 24)*q^1235 + (-6*zeta^2
+ 18)*q^1237 + (-48*zeta^2 - 58*zeta + 58)*q^1238 + (24*zeta^2 + 12*zeta - 
12)*q^1240 + (36*zeta^2 - 12*zeta - 108)*q^1241 + (2*zeta^2 - 14*zeta - 
32)*q^1242 + (-8*zeta^2 - 2*zeta + 12)*q^1243 + (-16*zeta^2 - 10*zeta + 
10)*q^1247 + (-14*zeta^2 + 6*zeta + 40)*q^1249 + (2*zeta^2 - 4)*q^1250 + 
(-12*zeta^2 + 48*zeta + 36)*q^1251 + (84*zeta^2 + 144*zeta - 144)*q^1254 + 
(4*zeta^2 - 30*zeta - 12)*q^1255 + (80*zeta^2 + 8*zeta - 144)*q^1256 + 
(-18*zeta^2 - 12*zeta + 12)*q^1257 + (-18*zeta^2 + 40*zeta + 54)*q^1258 + 
(12*zeta^2 - 34*zeta + 34)*q^1259 + (36*zeta^2 + 3*zeta - 3)*q^1261 + 
(-36*zeta^2 - 34*zeta + 108)*q^1262 + (-57*zeta^2 - 19*zeta + 76)*q^1263 + 
(76*zeta^2 + 28*zeta - 96)*q^1264 + (14*zeta^2 - 18*zeta - 42)*q^1265 + 
(-18*zeta^2 - 36*zeta + 36)*q^1266 + (9*zeta^2 + 12*zeta - 27)*q^1269 + 
(2*zeta^2 - 6*zeta - 16)*q^1270 + (18*zeta^2 - 30*zeta - 96)*q^1271 + 
(-12*zeta^2 + 24*zeta + 36)*q^1272 + (-36*zeta^2 - 12*zeta + 12)*q^1273 + 
(8*zeta^2 + 15*zeta - 15)*q^1275 + (-19*zeta^2 - 37*zeta - 36)*q^1277 + 
(-40*zeta^2 - 24*zeta + 32)*q^1278 + (36*zeta^2 - 14*zeta - 108)*q^1279 + 
(24*zeta^2 + 8*zeta - 8)*q^1282 + (-12*zeta^2 + 36*zeta + 36)*q^1283 + 
(-30*zeta^2 - 18*zeta + 24)*q^1285 + (-18*zeta^2 + 30*zeta + 54)*q^1286 + 
(20*zeta^2 + 32*zeta - 32)*q^1287 + (32*zeta^2 - 4*zeta + 4)*q^1289 + (-4*zeta^2
+ 4*zeta + 12)*q^1290 + (40*zeta^2 - 80)*q^1291 + (-19*zeta^2 + 10*zeta + 
57)*q^1293 + (40*zeta^2 + 52*zeta - 52)*q^1294 + (-48*zeta^2 - 52*zeta + 
52)*q^1296 + (32*zeta^2 - 42*zeta - 96)*q^1297 + (-62*zeta^2 - 26*zeta + 
72)*q^1298 + (-66*zeta^2 - 30*zeta + 72)*q^1299 + (18*zeta^2 + 26*zeta - 
26)*q^1301 + (-42*zeta^2 - 58*zeta + 58)*q^1303 + (12*zeta^2 + 24*zeta - 
36)*q^1304 + (4*zeta^2 + 16*zeta + 24)*q^1305 + (12*zeta^2 - 24*zeta - 
72)*q^1306 + (-3*zeta^2 + 30*zeta + 9)*q^1307 + (-16*zeta^2 - 10*zeta + 
10)*q^1310 + (-24*zeta^2 + 60*zeta + 72)*q^1311 + (-30*zeta^2 - 6*zeta + 
48)*q^1313 + 48*zeta*q^1314 + (-32*zeta^2 - 38*zeta + 38)*q^1315 + (-2*zeta^2 - 
16*zeta + 16)*q^1317 + (24*zeta^2 + 6*zeta - 72)*q^1318 + (-42*zeta^2 + 6*zeta +
96)*q^1319 + (48*zeta^2 + 20*zeta - 56)*q^1320 + (-24*zeta^2 - 68*zeta + 
72)*q^1321 + (24*zeta^2 + 60*zeta - 60)*q^1322 - 6*zeta*q^1325 + (-36*zeta^2 - 
10*zeta + 52)*q^1326 + (44*zeta^2 + 38*zeta - 12)*q^1327 + (-40*zeta^2 - 62*zeta
+ 62)*q^1329 + (52*zeta^2 + 85*zeta - 85)*q^1331 + (12*zeta + 24)*q^1333 + 
(2*zeta^2 + 54*zeta + 104)*q^1334 + (8*zeta^2 - 16*zeta - 24)*q^1335 + 
(20*zeta^2 + 32*zeta - 32)*q^1336 + (-54*zeta^2 - 78*zeta + 78)*q^1338 + 
(-51*zeta^2 - 48*zeta + 153)*q^1339 + (-56*zeta^2 - 8*zeta + 96)*q^1341 + 
(12*zeta^2 - 16*zeta - 36)*q^1342 + (-54*zeta^2 - 97*zeta + 97)*q^1343 + 
(-6*zeta^2 + 6*zeta - 6)*q^1345 + (-12*zeta^2 + 24*zeta + 36)*q^1346 + 
(-89*zeta^2 - 31*zeta + 116)*q^1347 + (36*zeta^2 - 24*zeta - 108)*q^1349 - 
2*zeta^2*q^1350 + (-8*zeta^2 - 32*zeta + 32)*q^1352 + (16*zeta^2 - 22*zeta - 
48)*q^1353 + (16*zeta^2 - 30*zeta - 92)*q^1354 + (-28*zeta^2 - 12*zeta + 
32)*q^1355 + (-32*zeta^2 - 38*zeta + 38)*q^1357 + (-4*zeta^2 - 28*zeta + 
28)*q^1359 + (-4*zeta^2 + 24*zeta + 12)*q^1360 + (12*zeta^2 + 42*zeta + 
60)*q^1361 + (-42*zeta^2 - 12*zeta + 60)*q^1362 + (-33*zeta^2 - 42*zeta + 
99)*q^1363 + (-24*zeta^2 + 4*zeta - 4)*q^1366 + (-30*zeta^2 - 4*zeta + 
90)*q^1367 + (-48*zeta^2 - 48*zeta)*q^1368 + (9*zeta^2 - 15*zeta - 48)*q^1369 + 
24*zeta*q^1370 + (38*zeta^2 + 60*zeta - 60)*q^1371 + (-10*zeta^2 - 4*zeta + 
4)*q^1373 + (46*zeta^2 - 80*zeta - 138)*q^1374 + (-7*zeta^2 - 3*zeta + 8)*q^1375
+ (-37*zeta^2 + 18*zeta + 111)*q^1377 + (-12*zeta^2 + 6*zeta - 6)*q^1378 + 
(2*zeta^2 - 48*zeta - 6)*q^1381 + (20*zeta^2 - 4*zeta - 48)*q^1382 + (108*zeta^2
+ 44*zeta - 128)*q^1383 + (12*zeta^2 + 12*zeta - 36)*q^1384 + (30*zeta^2 + 
36*zeta - 36)*q^1385 + (-72*zeta^2 - 72*zeta + 72)*q^1387 + (84*zeta^2 + 40*zeta
- 88)*q^1389 + (30*zeta^2 + 6*zeta - 48)*q^1390 + (-6*zeta^2 + 24*zeta + 
18)*q^1391 + (8*zeta^2 + 28*zeta - 28)*q^1392 + (32*zeta^2 + 26*zeta - 
26)*q^1394 + (12*zeta^2 + 24*zeta - 36)*q^1395 + (2*zeta^2 - 4)*q^1397 + 
(28*zeta^2 - 32*zeta - 84)*q^1398 + (32*zeta^2 + 26*zeta - 26)*q^1399 + 
(-32*zeta^2 - 57*zeta + 57)*q^1401 + (36*zeta^2 + 42*zeta - 108)*q^1402 + 
(20*zeta^2 - 4*zeta - 48)*q^1403 + (9*zeta^2 - 16*zeta - 27)*q^1405 + (24*zeta^2
+ 60*zeta - 60)*q^1406 + (48*zeta^2 + 80*zeta - 80)*q^1408 + (-33*zeta^2 - 
20*zeta + 99)*q^1409 + (6*zeta^2 - 12)*q^1410 + (72*zeta^2 + 80*zeta - 
80)*q^1413 + (22*zeta^2 + 13*zeta - 13)*q^1415 + (20*zeta^2 - 32*zeta - 
60)*q^1416 + (5*zeta^2 + 15*zeta + 20)*q^1417 + (34*zeta^2 - 68)*q^1418 + 
(14*zeta^2 - 20*zeta - 42)*q^1419 + (48*zeta^2 + 76*zeta - 76)*q^1422 + 
(10*zeta^2 - 24*zeta - 30)*q^1423 + (32*zeta^2 + 32*zeta)*q^1424 + (18*zeta^2 + 
6*zeta - 24)*q^1425 + (48*zeta^2 + 84*zeta - 144)*q^1426 + (-6*zeta^2 - 25*zeta 
+ 25)*q^1427 + (-24*zeta^2 - 18*zeta + 18)*q^1429 + (6*zeta^2 - 10*zeta - 
18)*q^1430 + (6*zeta + 12)*q^1431 + (-24*zeta - 48)*q^1432 + (-3*zeta^2 + 
30*zeta + 9)*q^1433 - 6*zeta^2*q^1434 + (-22*zeta^2 + 38*zeta + 66)*q^1437 + 
(22*zeta^2 + 30*zeta + 16)*q^1438 + (47*zeta^2 - 9*zeta - 112)*q^1439 + 
(14*zeta^2 + 26*zeta - 26)*q^1441 + (14*zeta^2 + 28*zeta - 28)*q^1443 + 
(14*zeta^2 + 2*zeta - 24)*q^1445 + (102*zeta^2 + 42*zeta - 120)*q^1446 + 
(9*zeta^2 - 74*zeta - 27)*q^1447 + (-24*zeta^2 + 12*zeta - 12)*q^1448 + 
(6*zeta^2 - 2*zeta + 2)*q^1450 + (-42*zeta^2 + 16*zeta + 126)*q^1451 + 
(20*zeta^2 + 8*zeta - 24)*q^1453 + (16*zeta^2 - 36*zeta - 48)*q^1454 + 
(-12*zeta^2 - 15*zeta + 15)*q^1455 + (-54*zeta^2 - 18*zeta + 18)*q^1457 + 
(4*zeta^2 - 42*zeta - 12)*q^1458 + (18*zeta^2 + 18*zeta)*q^1459 + (44*zeta^2 - 
46*zeta - 132)*q^1461 + (4*zeta^2 + 16*zeta - 16)*q^1462 + (16*zeta^2 + 24*zeta 
- 24)*q^1464 + (-13*zeta^2 - 18*zeta + 39)*q^1465 + (-72*zeta^2 - 42*zeta + 
60)*q^1466 + (-12*zeta^2 + 12*zeta + 48)*q^1467 + (-42*zeta^2 - 14*zeta + 
14)*q^1469 + (-60*zeta^2 - 42*zeta + 42)*q^1471 + (-48*zeta^2 - 16*zeta + 
144)*q^1472 + (53*zeta^2 + 31*zeta - 44)*q^1473 + (-2*zeta^2 - 2*zeta)*q^1474 + 
(-2*zeta^2 + 6*zeta + 6)*q^1475 + (-26*zeta^2 - 2*zeta + 2)*q^1478 + (11*zeta^2 
- 32*zeta - 33)*q^1479 + (20*zeta^2 + 12*zeta - 16)*q^1480 + (-31*zeta^2 + 
9*zeta + 80)*q^1481 + (-24*zeta^2 + 12*zeta + 72)*q^1482 + (22*zeta^2 + 31*zeta 
- 31)*q^1483 + (-2*zeta^2 - 3*zeta + 3)*q^1485 + (-18*zeta^2 + 48*zeta + 
54)*q^1486 + (45*zeta^2 + 15*zeta - 60)*q^1487 + (-24*zeta^2 + 48)*q^1488 + 
(54*zeta^2 + 26*zeta - 162)*q^1489 + (24*zeta^2 + 28*zeta - 28)*q^1490 + 
(-60*zeta^2 + 4*zeta + 180)*q^1493 + (2*zeta^2 + 20*zeta + 36)*q^1495 + 
(44*zeta^2 - 60*zeta - 132)*q^1496 + (-6*zeta^2 - 9*zeta + 9)*q^1497 + 
(-28*zeta^2 + 5*zeta - 5)*q^1499 + (-114*zeta^2 - 42*zeta + 144)*q^1501 + 
(30*zeta^2 - 12*zeta - 84)*q^1502 + (-12*zeta^2 + 20*zeta + 36)*q^1503 + 
(68*zeta^2 + 106*zeta - 106)*q^1506 + (36*zeta^2 - 48*zeta - 108)*q^1507 + 
(-99*zeta^2 - 31*zeta + 136)*q^1509 + (-12*zeta^2 + 2*zeta + 36)*q^1510 + 
(-30*zeta^2 - 6*zeta + 6)*q^1511 + (-48*zeta^2 - 56*zeta + 56)*q^1513 + 
(12*zeta^2 - 16*zeta - 36)*q^1514 + (-42*zeta^2 - 18*zeta + 48)*q^1515 + 
(14*zeta^2 - 42)*q^1517 + (64*zeta^2 + 110*zeta - 110)*q^1518 + (24*zeta - 
24)*q^1520 + (24*zeta^2 - 8*zeta - 72)*q^1521 + (18*zeta^2 + 18*zeta)*q^1522 + 
(68*zeta^2 + 12*zeta - 112)*q^1523 + (-4*zeta^2 - 4*zeta + 4)*q^1525 + 
(-22*zeta^2 - 48*zeta + 48)*q^1527 + (-48*zeta^2 + 12*zeta + 144)*q^1528 + 
(-114*zeta^2 - 48*zeta + 132)*q^1529 + (-28*zeta^2 - 4*zeta + 48)*q^1530 + 
(-24*zeta^2 - 40*zeta + 72)*q^1531 + (-14*zeta + 14)*q^1534 + (-21*zeta^2 - 
14*zeta + 63)*q^1535 + (-64*zeta^2 - 32*zeta + 64)*q^1536 + (-6*zeta^2 - 24*zeta
- 36)*q^1537 + (-4*zeta^2 - 12*zeta + 12)*q^1538 + (72*zeta^2 + 78*zeta - 
78)*q^1539 + (-44*zeta^2 - 14*zeta + 14)*q^1541 + (48*zeta^2 - 60*zeta - 
144)*q^1542 + (45*zeta^2 + 15*zeta - 60)*q^1543 + (64*zeta^2 - 128)*q^1544 + 
(-9*zeta^2 + 24*zeta + 27)*q^1545 + (-30*zeta^2 - 60*zeta + 60)*q^1546 + 
(8*zeta^2 + 12*zeta - 24)*q^1549 + (6*zeta^2 - 6*zeta - 24)*q^1550 + (-21*zeta^2
- 9*zeta + 24)*q^1551 + (36*zeta^2 + 24*zeta - 108)*q^1552 + (30*zeta^2 + 
13*zeta - 13)*q^1553 + (10*zeta - 10)*q^1555 + (12*zeta + 24)*q^1557 + 
(12*zeta^2 + 36*zeta + 48)*q^1558 + (-34*zeta^2 + 102)*q^1559 + (4*zeta^2 + 
12*zeta - 12)*q^1560 + (-52*zeta^2 - 88*zeta + 88)*q^1562 + (26*zeta^2 - 28*zeta
- 78)*q^1563 + (33*zeta^2 + 3*zeta - 60)*q^1565 + (-14*zeta^2 - 22*zeta + 
42)*q^1566 + (-8*zeta^2 + 4*zeta - 4)*q^1567 + (-36*zeta^2 - 48*zeta + 
48)*q^1569 + (4*zeta^2 - 36*zeta - 12)*q^1570 + (-34*zeta^2 + 2*zeta + 
72)*q^1571 + (6*zeta^2 + 60*zeta - 18)*q^1573 + (-66*zeta^2 - 84*zeta + 
84)*q^1574 + (48*zeta^2 + 44*zeta - 44)*q^1576 + (120*zeta^2 + 44*zeta - 
152)*q^1578 + (63*zeta^2 + 39*zeta - 48)*q^1579 + (6*zeta^2 + 24*zeta - 
24)*q^1581 + (60*zeta^2 + 66*zeta - 66)*q^1583 + (-32*zeta^2 + 48*zeta + 
96)*q^1584 + (-14*zeta^2 - 6*zeta + 16)*q^1585 + (4*zeta^2 + 12*zeta + 
16)*q^1586 + (9*zeta^2 + 6*zeta - 27)*q^1587 + (12*zeta^2 + 18*zeta - 18)*q^1590
+ (4*zeta^2 - 12*zeta - 12)*q^1591 + (20*zeta^2 - 4*zeta - 48)*q^1592 + 
(-2*zeta^2 - 4*zeta - 4)*q^1593 + (-54*zeta^2 + 34*zeta + 162)*q^1594 + 
(12*zeta^2 + 19*zeta - 19)*q^1595 + (-58*zeta + 58)*q^1597 + (-12*zeta^2 - 
30*zeta + 36)*q^1598 + (8*zeta^2 + 10*zeta + 4)*q^1599 + (8*zeta^2 + 
8*zeta)*q^1600 + (-10*zeta^2 + 72*zeta + 30)*q^1601 + (32*zeta - 32)*q^1602 + 
(-18*zeta^2 + 24*zeta + 54)*q^1605 + (-84*zeta^2 - 36*zeta + 96)*q^1606 + 
(-42*zeta^2 - 24*zeta + 36)*q^1607 + (-4*zeta^2 - 8*zeta + 12)*q^1608 + 
(32*zeta^2 + 68*zeta - 68)*q^1609 + 24*zeta^2*q^1611 + (-30*zeta^2 - 42*zeta - 
24)*q^1613 + (-30*zeta^2 - 18*zeta + 24)*q^1614 + (6*zeta^2 - 36*zeta - 
18)*q^1615 + (-48*zeta^2 - 72*zeta + 72)*q^1616 + (18*zeta^2 - 38*zeta + 
38)*q^1618 + (27*zeta^2 - 8*zeta - 81)*q^1619 + (20*zeta^2 + 8*zeta - 24)*q^1621
+ (50*zeta^2 + 24*zeta - 150)*q^1622 + (-14*zeta^2 - 33*zeta + 33)*q^1623 + 
(2*zeta^2 - zeta + 1)*q^1625 + (40*zeta^2 - 56*zeta - 120)*q^1626 + (26*zeta^2 +
42*zeta + 32)*q^1627 + (-36*zeta^2 - 24*zeta + 108)*q^1629 + (12*zeta^2 + 6*zeta
- 6)*q^1630 + (32*zeta^2 - 12*zeta - 96)*q^1633 + (24*zeta^2 - 48)*q^1634 + 
(15*zeta^2 + 5*zeta - 20)*q^1635 + (-42*zeta^2 - 63*zeta + 63)*q^1637 + 
(-60*zeta^2 - 104*zeta + 104)*q^1639 + (12*zeta^2 + 8*zeta - 36)*q^1640 + 
(-24*zeta^2 - 4*zeta + 40)*q^1641 + (-18*zeta^2 + 12*zeta + 60)*q^1642 + 
(-18*zeta^2 - 36*zeta + 54)*q^1643 + (-8*zeta^2 + 10*zeta - 10)*q^1646 + 
(4*zeta^2 + 4*zeta - 12)*q^1647 + (-36*zeta^2 - 60*zeta - 48)*q^1648 + 
(-39*zeta^2 + 9*zeta + 96)*q^1649 + (10*zeta^2 - 14*zeta - 30)*q^1650 + 
(26*zeta^2 + 8*zeta - 8)*q^1651 + (-12*zeta^2 - 42*zeta + 42)*q^1653 + 
(34*zeta^2 + 36*zeta - 102)*q^1654 + (34*zeta^2 - 2*zeta - 72)*q^1655 + 
(-32*zeta^2 - 48*zeta - 32)*q^1656 + (21*zeta^2 + 18*zeta - 63)*q^1657 + 
(-60*zeta^2 - 94*zeta + 94)*q^1658 + (27*zeta^2 - 40*zeta - 81)*q^1661 + 
(-114*zeta^2 - 42*zeta + 144)*q^1662 + (-82*zeta^2 - 46*zeta + 72)*q^1663 + 
(16*zeta^2 + 48*zeta - 48)*q^1664 + (8*zeta^2 + 20*zeta - 20)*q^1665 + 
(38*zeta^2 + 56*zeta - 56)*q^1667 + (-12*zeta^2 - 30*zeta - 36)*q^1669 + 
(16*zeta^2 + 6*zeta - 20)*q^1670 + (-40*zeta^2 + 52*zeta + 120)*q^1671 + 
(-72*zeta^2 - 120*zeta + 120)*q^1672 + (-24*zeta^2 - 6*zeta + 6)*q^1674 + 
(4*zeta^2 + 6*zeta - 12)*q^1675 + (10*zeta^2 + 2*zeta - 16)*q^1677 + (18*zeta^2 
- 72*zeta - 54)*q^1678 + (-72*zeta^2 - 60*zeta + 60)*q^1679 + (24*zeta^2 + 
43*zeta - 43)*q^1681 + (48*zeta^2 + 24*zeta - 144)*q^1682 + (104*zeta^2 + 
44*zeta - 120)*q^1683 + (-18*zeta^2 - 6*zeta + 54)*q^1685 + (50*zeta^2 + 84*zeta
- 84)*q^1686 + (36*zeta^2 + 36*zeta - 36)*q^1688 + (-50*zeta^2 + 52*zeta + 
150)*q^1689 + (-16*zeta^2 - 12*zeta + 8)*q^1690 + (-48*zeta^2 - 48*zeta)*q^1691 
+ (6*zeta^2 - 3*zeta + 3)*q^1693 + (2*zeta^2 - 2*zeta + 2)*q^1695 + (78*zeta^2 +
30*zeta - 96)*q^1697 + (-30*zeta^2 - 4*zeta + 52)*q^1698 + (-24*zeta^2 - 54*zeta
+ 72)*q^1699 + (12*zeta^2 + 44*zeta - 44)*q^1702 + (-30*zeta^2 - 34*zeta + 
90)*q^1703 + (72*zeta^2 + 32*zeta - 80)*q^1704 + (-12*zeta^2 - 6*zeta + 
12)*q^1705 + (24*zeta^2 - 12*zeta - 72)*q^1706 + (-4*zeta^2 + 4*zeta - 4)*q^1707
+ (-28*zeta^2 - 37*zeta + 37)*q^1709 + (-24*zeta^2 + 72)*q^1710 + (16*zeta^2 + 
18*zeta + 4)*q^1711 + (-72*zeta^2 - 24*zeta + 96)*q^1712 + (38*zeta^2 - 64*zeta 
- 114)*q^1713 + (28*zeta^2 + 16*zeta - 16)*q^1714 + (-42*zeta^2 + 48*zeta + 
126)*q^1717 + (76*zeta^2 + 52*zeta - 48)*q^1718 + (-60*zeta^2 - 48*zeta + 
24)*q^1719 - 8*zeta*q^1720 + (-36*zeta^2 - 66*zeta + 66)*q^1721 + (-6*zeta^2 + 
22*zeta - 22)*q^1723 + (14*zeta^2 + 4*zeta - 20)*q^1725 + (-26*zeta^2 - 
26*zeta)*q^1726 + (-62*zeta^2 + 84*zeta + 186)*q^1727 + (16*zeta^2 + 8*zeta - 
8)*q^1728 + 6*zeta^2*q^1730 + (15*zeta^2 - 12*zeta - 45)*q^1731 + (58*zeta^2 + 
66*zeta + 16)*q^1733 + (-16*zeta^2 + 28*zeta + 48)*q^1734 + (10*zeta^2 + 4*zeta 
- 4)*q^1735 + (64*zeta^2 + 64*zeta - 64)*q^1737 + (-64*zeta^2 + 90*zeta + 
192)*q^1738 + (-6*zeta^2 - 12*zeta - 12)*q^1739 + (30*zeta^2 + 66*zeta - 
90)*q^1741 + (36*zeta^2 + 10*zeta - 10)*q^1742 + (20*zeta - 20)*q^1744 + 
(-6*zeta^2 + 24*zeta + 18)*q^1745 + (12*zeta^2 + 36*zeta + 48)*q^1746 + 
(-42*zeta^2 - 24*zeta + 36)*q^1747 + (-42*zeta^2 - 72*zeta + 72)*q^1749 + 
(84*zeta^2 + 81*zeta - 81)*q^1751 + (24*zeta^2 - 48*zeta - 72)*q^1752 + 
(-69*zeta^2 - 75*zeta - 12)*q^1753 + (84*zeta^2 + 24*zeta - 120)*q^1754 + 
(-5*zeta^2 - 8*zeta + 15)*q^1755 + (10*zeta^2 + 2*zeta - 2)*q^1758 + (74*zeta^2 
- 222)*q^1759 + (36*zeta^2 + 24*zeta - 24)*q^1761 + (-24*zeta^2 - 72*zeta + 
72)*q^1762 + (-12*zeta^2 - 8*zeta + 8)*q^1763 + (-30*zeta^2 - 45*zeta + 
45)*q^1765 + (-12*zeta^2 + 80*zeta + 36)*q^1766 + (36*zeta^2 - 72)*q^1767 + 
(20*zeta^2 + 32*zeta + 24)*q^1768 + (-16*zeta^2 - 12*zeta + 48)*q^1769 + 
(-16*zeta^2 - 26*zeta + 26)*q^1770 + (4*zeta^2 + 48*zeta - 12)*q^1773 + 
(-52*zeta^2 - 24*zeta + 56)*q^1774 + (-10*zeta^2 - 6*zeta + 8)*q^1775 + 
(-32*zeta^2 + 40*zeta + 96)*q^1776 + (-16*zeta^2 - 34*zeta + 34)*q^1777 + 
(-24*zeta^2 - 33*zeta + 33)*q^1779 + (12*zeta^2 + 36*zeta + 48)*q^1781 + 
(94*zeta^2 + 40*zeta - 108)*q^1782 + (75*zeta^2 - 2*zeta - 225)*q^1783 + 
(-12*zeta^2 + 48*zeta - 48)*q^1784 + 36*zeta^2*q^1786 + (48*zeta^2 + 20*zeta - 
144)*q^1787 + (-60*zeta^2 - 36*zeta + 48)*q^1789 + (-12*zeta^2 - 12*zeta + 
36)*q^1790 + (24*zeta^2 + 20*zeta - 20)*q^1791 + (-6*zeta^2 - 12*zeta + 
12)*q^1793 + (-22*zeta^2 + 4*zeta + 66)*q^1794 + (16*zeta^2 - 32)*q^1795 + 
(11*zeta^2 - 26*zeta - 33)*q^1797 + (84*zeta^2 + 18*zeta - 18)*q^1798 + (8*zeta 
- 8)*q^1800 + (41*zeta^2 + 48*zeta - 123)*q^1801 + (42*zeta^2 + 6*zeta - 
72)*q^1802 + (66*zeta^2 + 30*zeta - 72)*q^1803 + (-17*zeta + 17)*q^1805 + 
(6*zeta^2 - 24*zeta + 24)*q^1807 + (-24*zeta^2 - 40*zeta + 72)*q^1808 + 
(4*zeta^2 - 10*zeta - 28)*q^1809 + (6*zeta^2 + 18*zeta + 24)*q^1810 + 
(-14*zeta^2 + 60*zeta + 42)*q^1811 + (12*zeta^2 - 42*zeta + 42)*q^1814 + 
(-30*zeta^2 + 36*zeta + 90)*q^1815 + (24*zeta^2 + 36*zeta + 24)*q^1816 + 
(-88*zeta^2 - 30*zeta + 116)*q^1817 + (24*zeta^2 - 48*zeta - 72)*q^1818 + 
(48*zeta^2 + 90*zeta - 90)*q^1819 + (44*zeta^2 + 73*zeta - 73)*q^1821 + 
(8*zeta^2 - 24)*q^1822 + (57*zeta^2 + 51*zeta - 12)*q^1823 + 12*zeta*q^1825 + 
(6*zeta^2 + 24*zeta - 18)*q^1829 + (12*zeta^2 + 4*zeta - 16)*q^1830 + (33*zeta^2
+ 33*zeta)*q^1831 + (-68*zeta^2 + 24*zeta + 204)*q^1832 + (6*zeta^2 - 3*zeta + 
3)*q^1833 + (-38*zeta^2 - 41*zeta + 41)*q^1835 + (-65*zeta^2 - 27*zeta + 
76)*q^1837 + (-62*zeta^2 - 36*zeta + 52)*q^1838 + (-58*zeta^2 + 68*zeta + 
174)*q^1839 + (-8*zeta^2 + 16*zeta - 16)*q^1840 + (-14*zeta^2 - 42*zeta + 
42)*q^1842 + (-54*zeta^2 - 36*zeta + 162)*q^1843 + (4*zeta^2 + 12*zeta + 
16)*q^1845 - 28*zeta*q^1846 + (96*zeta^2 + 92*zeta - 92)*q^1847 + (39*zeta - 
39)*q^1849 + (6*zeta^2 - 4*zeta - 18)*q^1850 + (22*zeta^2 + 8*zeta - 28)*q^1851 
+ (5*zeta^2 - 30*zeta - 15)*q^1853 + (24*zeta^2 - 36*zeta + 36)*q^1854 + 
(-64*zeta^2 - 40*zeta + 40)*q^1856 + (-34*zeta^2 + 58*zeta + 102)*q^1857 + 
(102*zeta^2 + 18*zeta - 168)*q^1858 + (74*zeta^2 + 30*zeta - 88)*q^1859 + 
(-50*zeta^2 - 38*zeta + 38)*q^1861 + (70*zeta^2 + 64*zeta - 64)*q^1863 + 
(-8*zeta^2 + 48*zeta + 24)*q^1864 + (4*zeta^2 - 8*zeta - 24)*q^1865 + 
(-40*zeta^2 - 20*zeta + 40)*q^1866 + (-9*zeta^2 + 54*zeta + 27)*q^1867 + 
(-30*zeta^2 - 52*zeta + 52)*q^1870 + (21*zeta^2 + 44*zeta - 63)*q^1871 + 
(-32*zeta^2 + 16*zeta + 96)*q^1872 + (-26*zeta^2 + 10*zeta + 72)*q^1873 + 
(-22*zeta^2 - 66*zeta + 66)*q^1874 + (-2*zeta^2 - 3*zeta + 3)*q^1875 + 
(-8*zeta^2 + 58*zeta - 58)*q^1877 + (-36*zeta^2 + 66*zeta + 108)*q^1878 + 
(-24*zeta^2 + 18*zeta + 84)*q^1879 + (-12*zeta - 24)*q^1880 + (48*zeta^2 - 
72*zeta - 144)*q^1881 - 24*zeta^2*q^1882 + (17*zeta^2 + 30*zeta - 51)*q^1885 + 
(4*zeta^2 + 40*zeta + 72)*q^1886 + (96*zeta^2 + 38*zeta - 116)*q^1887 + 
(18*zeta^2 - 16*zeta + 16)*q^1889 + (-24*zeta^2 - 12*zeta + 12)*q^1891 + 
(21*zeta^2 + 19*zeta - 4)*q^1893 + (-90*zeta^2 + 6*zeta + 192)*q^1894 + 
(-2*zeta^2 + 6)*q^1895 + (-76*zeta^2 - 128*zeta + 128)*q^1896 + (24*zeta^2 - 
12*zeta + 12)*q^1898 + 36*zeta*q^1899 + (83*zeta^2 + 15*zeta - 136)*q^1901 + 
(20*zeta^2 - 28*zeta - 60)*q^1902 + (6*zeta^2 + 9*zeta - 9)*q^1903 - 
2*zeta^2*q^1905 + (58*zeta^2 + 24*zeta - 174)*q^1906 + (-105*zeta^2 - 15*zeta + 
180)*q^1907 + (6*zeta^2 + 30*zeta - 30)*q^1910 + (-36*zeta^2 - 12*zeta + 
12)*q^1912 + (-48*zeta^2 - 2*zeta + 144)*q^1913 + (-64*zeta^2 - 26*zeta + 
76)*q^1914 + (-16*zeta^2 - 4*zeta + 24)*q^1915 + (-8*zeta^2 - 6*zeta + 6)*q^1917
+ (72*zeta^2 + 108*zeta - 108)*q^1919 + (-16*zeta^2 + 16*zeta + 48)*q^1920 + 
(2*zeta^2 - 24*zeta - 52)*q^1921 + (-26*zeta^2 - 72*zeta - 92)*q^1922 + 
(-4*zeta^2 - 8*zeta + 12)*q^1923 + (-48*zeta^2 - 72*zeta + 72)*q^1926 + 
(-24*zeta^2 - 30*zeta + 72)*q^1927 + (-84*zeta^2 - 36*zeta + 96)*q^1928 + 
(81*zeta^2 + 33*zeta - 96)*q^1929 - 32*zeta*q^1930 + (-78*zeta^2 - 108*zeta + 
108)*q^1931 + (72*zeta^2 + 74*zeta - 74)*q^1933 + (-60*zeta^2 - 36*zeta + 
180)*q^1934 + (8*zeta^2 - 16)*q^1935 + (-120*zeta^2 - 24*zeta + 192)*q^1936 + 
(32*zeta^2 + 12*zeta - 96)*q^1937 + (84*zeta^2 + 132*zeta - 132)*q^1938 + 
(32*zeta^2 - 52*zeta - 96)*q^1941 + (-78*zeta^2 - 18*zeta + 120)*q^1942 + 
(-14*zeta^2 + 36*zeta + 100)*q^1943 + (-16*zeta^2 + 64*zeta + 48)*q^1944 + 
(20*zeta^2 + 41*zeta - 41)*q^1945 + (62*zeta^2 + 106*zeta - 106)*q^1947 + 
(-64*zeta^2 - 46*zeta + 36)*q^1949 + (6*zeta^2 + 4*zeta - 4)*q^1950 + (36*zeta^2
- 14*zeta - 108)*q^1951 + (-12*zeta^2 + 40*zeta - 40)*q^1954 - 34*zeta*q^1955 + 
(54*zeta^2 + 90*zeta + 72)*q^1957 + (-32*zeta^2 + 48*zeta + 96)*q^1958 + 
(-12*zeta^2 - 6*zeta + 6)*q^1959 + (-12*zeta^2 - 30*zeta + 30)*q^1961 + 
(-20*zeta^2 + 60)*q^1962 + (25*zeta^2 - 9*zeta - 68)*q^1963 + (-2*zeta^2 + 
10*zeta + 6)*q^1965 + (42*zeta^2 + 72*zeta - 72)*q^1966 + (8*zeta^2 + 24*zeta - 
24)*q^1968 + (6*zeta^2 - 12*zeta - 18)*q^1969 + (22*zeta^2 - 2*zeta - 48)*q^1970
+ (-12*zeta - 24)*q^1971 + (18*zeta^2 - 23*zeta + 23)*q^1973 + (12*zeta^2 + 
19*zeta - 19)*q^1975 + (-24*zeta^2 - 72*zeta + 72)*q^1976 + (-39*zeta^2 - 
21*zeta + 36)*q^1977 + (20*zeta^2 - 4*zeta - 48)*q^1978 + (8*zeta^2 - 84*zeta - 
24)*q^1979 + (28*zeta^2 + 76*zeta - 76)*q^1982 + (48*zeta^2 - 60*zeta - 
144)*q^1983 + (48*zeta + 96)*q^1984 + (5*zeta^2 + 3*zeta - 4)*q^1985 + 
(-32*zeta^2 + 68*zeta + 96)*q^1986 + (-34*zeta^2 - 25*zeta + 25)*q^1987 + 
(-12*zeta^2 + 20*zeta - 20)*q^1989 + (-2*zeta^2 - 12*zeta + 6)*q^1990 + 
(-48*zeta^2 - 18*zeta + 60)*q^1991 + (3*zeta^2 + 6*zeta - 9)*q^1993 + 
18*zeta^2*q^1994 + (18*zeta^2 - 42*zeta - 54)*q^1997 + (6*zeta^2 - 2*zeta - 
16)*q^1998 + (-17*zeta^2 - 5*zeta + 24)*q^1999 + (4*zeta^2 - 12)*q^2000 + 
(-2*zeta^2 - 30*zeta + 30)*q^2001 + (-8*zeta^2 + 16*zeta - 16)*q^2003 + 
(5*zeta^2 + 9*zeta + 8)*q^2005 + (-58*zeta^2 - 18*zeta + 80)*q^2006 + 
(-60*zeta^2 - 12*zeta + 180)*q^2007 + (-16*zeta^2 - 76*zeta + 76)*q^2008 + 
(-4*zeta^2 - 2*zeta + 2)*q^2010 + (-11*zeta^2 - 24*zeta + 33)*q^2011 + 
(-48*zeta^2 - 20*zeta + 56)*q^2013 + (36*zeta^2 - 108)*q^2014 + (30*zeta^2 + 
6*zeta - 6)*q^2015 + (-18*zeta^2 - 56*zeta + 56)*q^2017 + (48*zeta^2 - 34*zeta -
144)*q^2018 + (60*zeta^2 + 24*zeta - 72)*q^2019 + (6*zeta^2 + 12*zeta - 
18)*q^2021 + (-24*zeta^2 - 54*zeta + 54)*q^2022 + (-56*zeta^2 - 92*zeta + 
92)*q^2024 + (zeta^2 - 12*zeta - 3)*q^2025 + (-4*zeta^2 + 36*zeta + 80)*q^2026 +
(58*zeta^2 - 18*zeta - 152)*q^2027 + (-32*zeta^2 + 16*zeta - 16)*q^2029 + 
(-16*zeta^2 - 9*zeta + 9)*q^2031 + (16*zeta^2 + 24*zeta - 48)*q^2032 + 
(108*zeta^2 + 36*zeta - 144)*q^2033 + (16*zeta^2 - 24*zeta - 80)*q^2034 + 
(-18*zeta^2 + 26*zeta + 54)*q^2035 + (-60*zeta^2 - 20*zeta + 20)*q^2038 + 
(18*zeta^2 + 56*zeta - 54)*q^2039 + (44*zeta^2 + 16*zeta - 56)*q^2040 + 
(-26*zeta^2 - 50*zeta - 48)*q^2041 + (36*zeta^2 - 60*zeta - 108)*q^2042 + 
(-12*zeta^2 + 24*zeta - 24)*q^2043 + (12*zeta^2 + 18*zeta - 18)*q^2045 + 
(18*zeta^2 - 24*zeta - 54)*q^2046 + (-32*zeta^2 - 48*zeta - 32)*q^2047 + 
(16*zeta^2 - 4*zeta - 48)*q^2049 + (4*zeta^2 - 2*zeta + 2)*q^2050 + (12*zeta^2 -
18*zeta - 36)*q^2053 + (-40*zeta^2 - 22*zeta + 36)*q^2054 + (36*zeta^2 + 12*zeta
- 48)*q^2055 + (-24*zeta^2 + 72*zeta + 72)*q^2056 + (60*zeta^2 + 138*zeta - 
138)*q^2057 + (36*zeta^2 + 34*zeta - 34)*q^2059 + (-92*zeta^2 - 68*zeta + 
48)*q^2061 + (-26*zeta^2 + 16*zeta + 84)*q^2062 + (-12*zeta^2 - 60*zeta + 
36)*q^2063 + (16*zeta^2 + 24*zeta - 24)*q^2064 + (60*zeta^2 + 18*zeta - 
18)*q^2066 + (12*zeta^2 - 6*zeta - 36)*q^2067 + (69*zeta^2 + 57*zeta - 
24)*q^2069 + (-24*zeta^2 - 8*zeta + 72)*q^2070 + (-30*zeta + 30)*q^2071 + 
(-20*zeta^2 - 28*zeta + 28)*q^2073 + (4*zeta^2 - 24*zeta - 12)*q^2074 + 
(42*zeta^2 + 60*zeta - 126)*q^2077 + (-12*zeta^2 + 36*zeta - 36)*q^2078 + 
16*zeta*q^2081 + (-6*zeta^2 + 2*zeta + 16)*q^2082 + (22*zeta^2 - 14*zeta - 
72)*q^2083 + (-30*zeta^2 - 48*zeta + 48)*q^2085 + (56*zeta^2 + 26*zeta - 
26)*q^2087 + (-24*zeta^2 - 64*zeta + 72)*q^2088 + (-32*zeta^2 - 48*zeta - 
32)*q^2089 + (-60*zeta^2 - 24*zeta + 72)*q^2090 + (10*zeta^2 - 26*zeta - 
30)*q^2091 + (-60*zeta^2 - 96*zeta + 96)*q^2094 + (-6*zeta^2 - 18*zeta + 
18)*q^2095 + (-8*zeta^2 - 32*zeta - 48)*q^2096 + (-56*zeta^2 - 8*zeta + 
96)*q^2097 + (12*zeta^2 + 8*zeta - 36)*q^2098 + (70*zeta - 70)*q^2099 + 
O(q^2100), zeta^2*q + (zeta^2 + 2*zeta - 3)*q^2 + (zeta^2 - 2)*q^3 + (-zeta^2 - 
zeta + 3)*q^5 + (-zeta + 1)*q^6 + (4*zeta^2 + 2*zeta - 2)*q^8 + (2*zeta^2 + 
4*zeta - 6)*q^9 + (zeta^2 - zeta - 4)*q^10 + (-2*zeta^2 - zeta + 2)*q^11 + 
(5*zeta^2 + zeta - 1)*q^13 + (-zeta^2 - zeta + 1)*q^15 + (4*zeta^2 + 4*zeta - 
12)*q^16 + (-3*zeta^2 + 2*zeta + 10)*q^17 + (4*zeta + 8)*q^18 + (-6*zeta^2 - 
6*zeta + 18)*q^19 + (2*zeta^2 + 3*zeta - 3)*q^22 + (-7*zeta^2 - 8*zeta + 
21)*q^23 + (-2*zeta^2 - 2*zeta)*q^24 + (zeta + 2)*q^25 + (5*zeta^2 + 8*zeta - 
15)*q^26 + (3*zeta^2 + zeta - 1)*q^27 + (-11*zeta^2 - 4*zeta + 4)*q^29 + 
(-zeta^2 + 3)*q^30 + (-3*zeta^2 + 9*zeta + 24)*q^31 + (2*zeta^2 - 3*zeta - 
6)*q^33 + (-4*zeta^2 + zeta - 1)*q^34 + (-zeta^2 - 4*zeta + 3)*q^37 + (6*zeta^2 
- 6*zeta - 24)*q^38 + (2*zeta^2 - zeta - 6)*q^39 + (-2*zeta^2 - 4*zeta + 6)*q^40
+ (-8*zeta^2 - 3*zeta + 3)*q^41 + 2*zeta^2*q^43 + (2*zeta^2 - 2*zeta - 8)*q^45 +
(6*zeta^2 - 8*zeta - 28)*q^46 + (6*zeta^2 + 9*zeta - 18)*q^47 + (4*zeta^2 + 
4*zeta - 4)*q^48 + (-2*zeta^2 - zeta + 1)*q^50 + (3*zeta^2 - zeta - 9)*q^51 + 
(-3*zeta^2 + 3*zeta + 12)*q^53 + (3*zeta^2 + 4*zeta - 9)*q^54 + (zeta^2 + 2*zeta
- 2)*q^55 + (-6*zeta^2 - 6*zeta + 6)*q^57 + (-11*zeta^2 - 14*zeta + 33)*q^58 + 
(3*zeta^2 - zeta - 8)*q^59 + (2*zeta^2 + 4*zeta - 6)*q^61 + (-18*zeta^2 - 6*zeta
+ 6)*q^62 + 8*zeta^2*q^64 + (-4*zeta^2 - 5*zeta + 12)*q^65 + (-7*zeta^2 - 3*zeta
+ 8)*q^66 + (3*zeta^2 - 7*zeta - 20)*q^67 + (-6*zeta^2 - 5*zeta + 5)*q^69 + 
(-2*zeta^2 + 2*zeta - 2)*q^71 + (8*zeta^2 + 8*zeta - 24)*q^72 + (6*zeta^2 - 
6*zeta - 24)*q^73 + (-2*zeta^2 - 4*zeta - 4)*q^74 + zeta*q^75 + (2*zeta^2 - zeta
+ 1)*q^78 + (zeta^2 - 5*zeta - 3)*q^79 + (-4*zeta - 8)*q^80 + (-6*zeta^2 + 
5*zeta + 22)*q^81 + (-8*zeta^2 - 10*zeta + 24)*q^82 + (5*zeta^2 + 3*zeta - 
3)*q^85 + (2*zeta^2 + 4*zeta - 6)*q^86 + (zeta^2 + 4*zeta + 6)*q^87 + (6*zeta^2 
+ 2*zeta - 8)*q^88 + (8*zeta^2 + 8*zeta - 24)*q^89 + 4*zeta^2*q^90 + (3*zeta^2 +
6*zeta - 9)*q^93 + (-3*zeta^2 + 9*zeta + 24)*q^94 + (6*zeta + 12)*q^95 + 
(15*zeta^2 + 3*zeta - 3)*q^97 + (4*zeta^2 + 6*zeta - 6)*q^99 + (-6*zeta^2 + 
12)*q^101 + (-7*zeta^2 - zeta + 12)*q^102 + (-18*zeta^2 - 21*zeta + 54)*q^103 + 
(16*zeta^2 + 6*zeta - 6)*q^104 - 6*zeta^2*q^106 + 6*zeta*q^107 + (5*zeta + 
10)*q^109 + (zeta^2 - 2*zeta - 3)*q^110 + (2*zeta^2 + 5*zeta - 5)*q^111 + 
(-16*zeta^2 - 5*zeta + 5)*q^113 + (-6*zeta^2 + 18)*q^114 + (-zeta^2 + 7*zeta + 
16)*q^115 + (10*zeta^2 + 16*zeta - 30)*q^117 + (2*zeta^2 - 2*zeta + 2)*q^118 + 
(2*zeta - 2)*q^120 + (6*zeta^2 + 18*zeta - 18)*q^121 + (4*zeta + 8)*q^122 + 
(zeta^2 + 3*zeta + 4)*q^123 + zeta^2*q^125 + (10*zeta^2 + 3*zeta - 3)*q^127 + 
(8*zeta^2 + 16*zeta - 24)*q^128 + (2*zeta^2 - 4)*q^129 + (3*zeta^2 - 5*zeta - 
16)*q^130 + (-11*zeta^2 - 14*zeta + 33)*q^131 + (14*zeta^2 + 4*zeta - 4)*q^134 +
(-2*zeta^2 - 3*zeta + 6)*q^135 + (2*zeta^2 + 10*zeta + 16)*q^136 + (12*zeta + 
24)*q^137 + (-6*zeta^2 - 2*zeta + 18)*q^138 + (6*zeta^2 - 3*zeta + 3)*q^139 + 
3*zeta^2*q^141 + (-2*zeta^2 - 8*zeta + 6)*q^142 + (-3*zeta^2 - 2*zeta + 2)*q^143
+ (-8*zeta^2 + 8*zeta + 32)*q^144 + (7*zeta^2 + 11*zeta - 21)*q^145 + 
12*zeta^2*q^146 + (10*zeta^2 + 8*zeta - 30)*q^149 + (zeta^2 + zeta)*q^150 + 
(6*zeta^2 - 5*zeta - 22)*q^151 + (-12*zeta^2 - 24*zeta + 36)*q^152 + (-8*zeta^2 
+ 2*zeta - 2)*q^153 + (12*zeta^2 + 3*zeta - 3)*q^155 + (-2*zeta^2 - 16*zeta - 
28)*q^157 + (-7*zeta^2 - 5*zeta + 4)*q^158 + (3*zeta^2 - 9)*q^159 + (-10*zeta^2 
+ zeta - 1)*q^162 + (9*zeta^2 + 12*zeta - 27)*q^163 + (-5*zeta^2 - 2*zeta + 
6)*q^165 + (-zeta^2 - 3*zeta + 3)*q^167 + (10*zeta^2 + 6*zeta - 6)*q^169 + 
(5*zeta^2 + 4*zeta - 15)*q^170 + (12*zeta^2 - 12*zeta - 48)*q^171 + (6*zeta^2 + 
9*zeta - 18)*q^173 + (-8*zeta^2 - 5*zeta + 5)*q^174 + (-4*zeta^2 - 8*zeta + 
8)*q^176 + (-3*zeta^2 + 2*zeta + 9)*q^177 + (-8*zeta^2 + 8*zeta + 32)*q^178 + 
(6*zeta^2 - 12*zeta - 36)*q^179 + (-24*zeta^2 - 9*zeta + 9)*q^181 + (-2*zeta + 
2)*q^183 + (-16*zeta^2 - 28*zeta + 48)*q^184 + (-3*zeta^2 + zeta + 8)*q^185 + 
(6*zeta + 12)*q^186 + (-4*zeta^2 + 7*zeta + 12)*q^187 + (-12*zeta^2 - 6*zeta + 
6)*q^190 + (-9*zeta^2 - 21*zeta + 27)*q^191 + (8*zeta^2 - 16)*q^192 + (-16*zeta 
- 32)*q^193 + (15*zeta^2 + 24*zeta - 45)*q^194 + (-3*zeta^2 - 2*zeta + 2)*q^195 
+ (14*zeta^2 + zeta - 1)*q^197 + (4*zeta^2 - 4*zeta - 12)*q^198 + (zeta^2 - 
7*zeta - 16)*q^199 + (-2*zeta^2 + 2*zeta + 8)*q^200 + (-3*zeta^2 - 4*zeta + 
9)*q^201 + (6*zeta - 6)*q^202 + (5*zeta^2 + 8*zeta - 15)*q^205 + (15*zeta^2 - 
21*zeta - 72)*q^206 + (12*zeta^2 - 16*zeta - 56)*q^207 + (16*zeta^2 + 20*zeta - 
48)*q^208 + (6*zeta^2 + 12*zeta - 12)*q^209 + 9*zeta^2*q^211 + (-8*zeta^2 - 
2*zeta + 12)*q^213 + (6*zeta^2 + 6*zeta)*q^214 + (-2*zeta^2 - 2*zeta + 6)*q^215 
+ (8*zeta^2 + 2*zeta - 2)*q^216 + (-10*zeta^2 - 5*zeta + 5)*q^218 + (-6*zeta^2 +
18)*q^219 + (-8*zeta^2 + 11*zeta + 38)*q^221 + (2*zeta^2 - 6*zeta - 6)*q^222 + 
(-33*zeta^2 - 15*zeta + 15)*q^223 + (-4*zeta^2 - 2*zeta + 2)*q^225 + (-16*zeta^2
- 22*zeta + 48)*q^226 + (-9*zeta^2 + 12*zeta + 42)*q^227 + (-11*zeta^2 - 28*zeta
+ 33)*q^229 + (-14*zeta^2 - 6*zeta + 6)*q^230 + (-28*zeta^2 - 6*zeta + 6)*q^232 
+ (10*zeta^2 + 8*zeta - 30)*q^233 + (-4*zeta^2 + 16*zeta + 40)*q^234 + (3*zeta^2
- 6*zeta - 18)*q^235 + (7*zeta^2 + 13*zeta - 13)*q^237 + (-21*zeta^2 - 6*zeta + 
6)*q^239 - 4*zeta*q^240 + (9*zeta^2 + 3*zeta - 12)*q^241 + (6*zeta^2 + 18*zeta +
24)*q^242 + (12*zeta^2 + 8*zeta - 36)*q^243 + (-6*zeta^2 - 4*zeta + 4)*q^246 + 
(-24*zeta^2 - 30*zeta + 72)*q^247 + (-12*zeta^2 + 24*zeta + 72)*q^248 + (zeta^2 
+ 2*zeta - 3)*q^250 + (26*zeta^2 + 15*zeta - 15)*q^251 + (4*zeta^2 + 9*zeta - 
9)*q^253 + (10*zeta^2 + 14*zeta - 30)*q^254 + (-4*zeta^2 - 3*zeta + 2)*q^255 + 
(12*zeta^2 + 6*zeta - 36)*q^257 + (-2*zeta + 2)*q^258 + (-22*zeta^2 - 28*zeta + 
66)*q^261 + (8*zeta^2 - 14*zeta - 44)*q^262 + (16*zeta^2 - 10*zeta - 52)*q^263 +
(-6*zeta^2 + 8*zeta + 18)*q^264 + (6*zeta^2 + 3*zeta - 3)*q^265 + (8*zeta^2 + 
8*zeta - 8)*q^267 + (3*zeta^2 - 15*zeta - 36)*q^269 + (zeta^2 - 3*zeta - 
8)*q^270 + (4*zeta^2 - 4*zeta - 12)*q^271 + (-20*zeta^2 - 12*zeta + 12)*q^272 + 
(-24*zeta^2 - 12*zeta + 12)*q^274 + (zeta^2 - zeta - 3)*q^275 + (-15*zeta^2 + 
9*zeta + 48)*q^277 + (6*zeta^2 + 18*zeta - 18)*q^278 + (-36*zeta^2 - 12*zeta + 
12)*q^279 + (7*zeta^2 + 8*zeta - 8)*q^281 + (3*zeta^2 + 6*zeta - 9)*q^282 + 
(-11*zeta^2 + 20*zeta + 62)*q^283 + 6*zeta*q^285 + (4*zeta^2 + 5*zeta - 5)*q^286
+ (4*zeta^2 + 10*zeta - 12)*q^289 + (-3*zeta^2 + 11*zeta + 28)*q^290 + (6*zeta^2
- 3*zeta - 18)*q^291 + (31*zeta^2 + 9*zeta - 9)*q^293 + (-4*zeta^2 - 3*zeta + 
3)*q^295 + (-8*zeta^2 - 4*zeta + 24)*q^296 + (zeta^2 - 2)*q^297 + (-12*zeta^2 + 
8*zeta + 40)*q^298 + (-29*zeta^2 - 38*zeta + 87)*q^299 + (10*zeta^2 - zeta + 
1)*q^302 + (6*zeta^2 - 6*zeta - 18)*q^303 + (-24*zeta - 48)*q^304 + (2*zeta^2 - 
2*zeta - 8)*q^305 + (-8*zeta^2 - 20*zeta + 24)*q^306 + (35*zeta^2 + 7*zeta - 
7)*q^307 + (-15*zeta^2 - 12*zeta + 12)*q^309 + (12*zeta^2 + 18*zeta - 36)*q^310 
+ (-10*zeta - 20)*q^311 + (-2*zeta^2 - 6*zeta - 8)*q^312 + (12*zeta^2 + 27*zeta 
- 36)*q^313 + (32*zeta^2 + 18*zeta - 18)*q^314 + (2*zeta^2 - 2*zeta - 6)*q^317 +
(-6*zeta^2 + 12)*q^318 + (-6*zeta^2 - zeta + 10)*q^319 + (-8*zeta^2 - 8*zeta + 
24)*q^320 + (-6*zeta^2 - 12*zeta + 12)*q^321 + (30*zeta^2 + 18*zeta - 18)*q^323 
+ (-zeta^2 + 4*zeta + 10)*q^325 + (-6*zeta^2 + 12*zeta + 36)*q^326 + 
5*zeta*q^327 + (-20*zeta^2 - 4*zeta + 4)*q^328 + (4*zeta^2 + 7*zeta - 7)*q^330 +
(20*zeta^2 + 38*zeta - 60)*q^331 + (-4*zeta^2 - 8*zeta - 8)*q^333 + (-zeta^2 + 
4*zeta + 3)*q^334 + (-10*zeta^2 - 3*zeta + 3)*q^335 + (24*zeta^2 + 3*zeta - 
3)*q^337 + (10*zeta^2 + 8*zeta - 30)*q^338 + (-zeta^2 + 5*zeta + 12)*q^339 + 
(3*zeta^2 - 9)*q^341 + 24*zeta^2*q^342 + (8*zeta^2 + 4*zeta - 4)*q^344 + (zeta^2
+ 6*zeta - 3)*q^345 + (-3*zeta^2 + 9*zeta + 24)*q^346 + (-5*zeta^2 + 11*zeta + 
32)*q^347 + (-18*zeta^2 - 12*zeta + 12)*q^349 + (13*zeta^2 + 4*zeta - 4)*q^351 +
(15*zeta^2 - 30)*q^353 + (8*zeta^2 + 2*zeta - 12)*q^354 + (4*zeta^2 + 2*zeta - 
12)*q^355 + (24*zeta^2 + 6*zeta - 6)*q^358 + (8*zeta^2 + 16*zeta - 24)*q^359 + 
(-8*zeta - 16)*q^360 + (17*zeta + 34)*q^361 + (-24*zeta^2 - 30*zeta + 72)*q^362 
+ (-6*zeta^2 - 18*zeta + 18)*q^363 + (-12*zeta^2 - 6*zeta + 6)*q^365 + 
4*zeta*q^366 + (19*zeta^2 - 16*zeta - 70)*q^367 + (4*zeta^2 - 28*zeta - 
64)*q^368 + (-16*zeta^2 - 20*zeta + 48)*q^369 + (-2*zeta^2 + 2*zeta - 2)*q^370 +
(14*zeta^2 + 20*zeta - 42)*q^373 + (15*zeta^2 + 7*zeta - 16)*q^374 + (zeta^2 - 
2)*q^375 + (18*zeta^2 + 24*zeta - 54)*q^376 + (-47*zeta^2 - 15*zeta + 15)*q^377 
+ 2*zeta^2*q^379 + (zeta^2 - 3*zeta - 8)*q^381 + (-3*zeta^2 - 21*zeta - 
36)*q^382 + (-2*zeta^2 - 8*zeta + 6)*q^383 + (-8*zeta + 8)*q^384 + (32*zeta^2 + 
16*zeta - 16)*q^386 + (4*zeta^2 + 8*zeta - 12)*q^387 + (-10*zeta^2 - 11*zeta - 
2)*q^389 + (-3*zeta^2 - 2*zeta + 9)*q^390 + (34*zeta^2 + 17*zeta - 17)*q^391 + 
(-8*zeta^2 - 5*zeta + 5)*q^393 + (14*zeta^2 + 26*zeta - 42)*q^394 + (-6*zeta^2 -
zeta + 10)*q^395 + (-2*zeta^2 - zeta + 6)*q^397 + (14*zeta^2 + 6*zeta - 6)*q^398
- 4*zeta^2*q^400 + (-11*zeta^2 - 13*zeta + 33)*q^401 + (2*zeta^2 - 4*zeta - 
12)*q^402 + (-15*zeta^2 + 39*zeta + 108)*q^403 + (11*zeta^2 + 6*zeta - 6)*q^405 
+ (-8*zeta^2 - 13*zeta + 13)*q^407 + (-2*zeta^2 + 12*zeta + 6)*q^408 + 
(-6*zeta^2 + 12)*q^409 + (-2*zeta^2 + 8*zeta + 20)*q^410 + 12*zeta*q^411 + 
(32*zeta^2 + 4*zeta - 4)*q^414 + (15*zeta^2 + 3*zeta - 24)*q^417 + (6*zeta^2 - 
12*zeta - 18)*q^418 + (24*zeta^2 + 9*zeta - 9)*q^419 - 19*zeta^2*q^421 + 
(9*zeta^2 + 18*zeta - 27)*q^422 + (-6*zeta^2 + 18*zeta + 48)*q^423 + (12*zeta + 
24)*q^424 + (-2*zeta^2 - 5*zeta + 6)*q^425 + (4*zeta^2 + 10*zeta - 10)*q^426 + 
(3*zeta^2 - 5*zeta - 9)*q^429 + (2*zeta^2 - 2*zeta - 8)*q^430 + (14*zeta^2 - 
23*zeta - 74)*q^431 + (8*zeta^2 + 12*zeta - 24)*q^432 + (18*zeta^2 + 12*zeta - 
12)*q^433 + (3*zeta^2 - zeta + 1)*q^435 + (-6*zeta^2 + 42*zeta + 96)*q^437 + 
(12*zeta^2 - 24)*q^438 + (25*zeta^2 + 38*zeta - 75)*q^439 + (-4*zeta^2 - 6*zeta 
+ 6)*q^440 + (-22*zeta^2 - 3*zeta + 3)*q^442 + (-16*zeta^2 - 14*zeta + 48)*q^443
+ (-8*zeta - 16)*q^445 + (-33*zeta^2 - 36*zeta + 99)*q^446 + (12*zeta^2 + 
14*zeta - 14)*q^447 + (-23*zeta^2 + 2*zeta - 2)*q^449 + (-4*zeta^2 - 4*zeta + 
12)*q^450 + (-5*zeta^2 - zeta + 8)*q^451 + (-6*zeta^2 + zeta + 18)*q^453 + 
(-24*zeta^2 - 3*zeta + 3)*q^454 + (12*zeta - 12)*q^456 + (13*zeta^2 + 10*zeta - 
39)*q^457 + (-6*zeta^2 - 28*zeta - 44)*q^458 + (-2*zeta^2 + 7*zeta + 18)*q^459 +
(-4*zeta^2 - 12*zeta + 12)*q^461 + (-32*zeta^2 - 18*zeta + 18)*q^463 + 
(-28*zeta^2 - 44*zeta + 84)*q^464 + (3*zeta^2 - 3*zeta - 12)*q^465 + (-12*zeta^2
+ 8*zeta + 40)*q^466 + (2*zeta^2 + 11*zeta - 6)*q^467 + (12*zeta^2 + 3*zeta - 
3)*q^470 + (2*zeta^2 - 18*zeta - 6)*q^471 + (-4*zeta^2 - 8*zeta - 8)*q^472 + 
(-4*zeta^2 - 2*zeta + 4)*q^473 + (7*zeta^2 - 12*zeta - 21)*q^474 + 
6*zeta^2*q^475 - 12*zeta^2*q^477 + (-21*zeta^2 - 30*zeta + 63)*q^478 + (3*zeta^2
+ 13*zeta + 20)*q^479 + (-7*zeta^2 - 14*zeta + 21)*q^481 + (-6*zeta^2 - 12*zeta 
+ 12)*q^482 + (-12*zeta^2 - 15*zeta + 36)*q^485 + (-16*zeta^2 + 8*zeta + 
48)*q^486 + (-21*zeta^2 + 19*zeta + 80)*q^487 + (8*zeta^2 + 8*zeta - 24)*q^488 +
(6*zeta^2 + 3*zeta - 3)*q^489 + (-49*zeta^2 - 20*zeta + 20)*q^491 + (5*zeta^2 - 
26*zeta - 62)*q^493 + (18*zeta^2 - 30*zeta - 96)*q^494 + (2*zeta^2 - 4*zeta - 
6)*q^495 + (-48*zeta^2 - 12*zeta + 12)*q^496 + (-3*zeta^2 - 3*zeta + 9)*q^499 + 
(8*zeta^2 + 3*zeta - 10)*q^501 + (26*zeta^2 + 22*zeta - 78)*q^502 + (-43*zeta^2 
- 3*zeta + 3)*q^503 + (6*zeta^2 + 6*zeta - 6)*q^505 + (4*zeta^2 - 10*zeta - 
12)*q^506 + (-8*zeta^2 - 6*zeta + 4)*q^507 + (19*zeta^2 + 34*zeta - 57)*q^509 + 
(6*zeta^2 + 7*zeta - 7)*q^510 + (32*zeta^2 + 16*zeta - 16)*q^512 + (-12*zeta^2 -
18*zeta + 36)*q^513 + (-18*zeta^2 + 6*zeta + 48)*q^514 + (-3*zeta^2 + 18*zeta + 
42)*q^515 + (3*zeta^2 + 3*zeta - 3)*q^517 + 3*zeta^2*q^519 + (-10*zeta^2 - 
16*zeta + 30)*q^520 + (-12*zeta^2 + 10*zeta + 44)*q^521 + (16*zeta^2 - 28*zeta -
88)*q^522 + (-30*zeta^2 - 36*zeta + 90)*q^523 + (20*zeta^2 - 6*zeta + 6)*q^526 +
(-27*zeta^2 - 42*zeta + 81)*q^527 + (20*zeta^2 + 8*zeta - 24)*q^528 + 
(-12*zeta^2 + 27*zeta + 78)*q^529 + (6*zeta^2 + 6*zeta - 18)*q^530 + (4*zeta^2 -
4*zeta + 4)*q^531 + (-34*zeta^2 - 11*zeta + 11)*q^533 + (8*zeta^2 - 24)*q^534 + 
(6*zeta^2 - 12)*q^535 + (8*zeta^2 - 20*zeta - 56)*q^536 + (-6*zeta^2 - 6*zeta + 
18)*q^537 + (30*zeta^2 + 12*zeta - 12)*q^538 + (17*zeta^2 + 29*zeta - 51)*q^541 
+ (-12*zeta^2 - 4*zeta + 16)*q^542 + (3*zeta^2 + 9*zeta + 12)*q^543 + 
5*zeta^2*q^545 + (-28*zeta^2 - 6*zeta + 6)*q^547 + (8*zeta + 16)*q^549 + 
(-3*zeta^2 - zeta + 4)*q^550 + (42*zeta^2 + 66*zeta - 126)*q^551 + (-4*zeta^2 + 
8*zeta - 8)*q^552 + (-18*zeta^2 + 6*zeta - 6)*q^554 + (3*zeta^2 - 2*zeta - 
9)*q^555 + (14*zeta^2 - 2*zeta - 32)*q^557 + (-36*zeta^2 - 48*zeta + 108)*q^558 
+ (10*zeta^2 + 2*zeta - 2)*q^559 + (-15*zeta^2 - 26*zeta + 26)*q^561 + (7*zeta^2
- 2*zeta - 21)*q^562 + (24*zeta^2 - 22*zeta - 92)*q^563 + (11*zeta^2 + 16*zeta -
33)*q^565 + (-40*zeta^2 - 9*zeta + 9)*q^566 + (-16*zeta^2 - 12*zeta + 12)*q^568 
+ (-22*zeta^2 - 32*zeta + 66)*q^569 + (6*zeta^2 + 6*zeta)*q^570 + (-6*zeta^2 - 
20*zeta - 28)*q^571 + (3*zeta^2 + 15*zeta - 15)*q^573 + (8*zeta^2 + zeta - 
1)*q^575 + (16*zeta^2 + 32*zeta - 48)*q^576 + (-9*zeta^2 + 12*zeta + 42)*q^577 +
(2*zeta^2 + 10*zeta + 16)*q^578 - 16*zeta*q^579 + (6*zeta^2 - 3*zeta + 3)*q^582 
+ (-3*zeta^2 + 6*zeta + 9)*q^583 + (-24*zeta - 48)*q^584 + (6*zeta^2 - 10*zeta -
32)*q^585 + (31*zeta^2 + 44*zeta - 93)*q^586 + (-48*zeta^2 - 18*zeta + 18)*q^587
+ (72*zeta^2 + 18*zeta - 18)*q^589 + (-4*zeta^2 - 2*zeta + 12)*q^590 + 
(11*zeta^2 - zeta - 24)*q^591 + (12*zeta^2 - 4*zeta - 32)*q^592 + (-18*zeta^2 - 
21*zeta + 54)*q^593 + (-zeta + 1)*q^594 + (-zeta^2 - 6*zeta + 3)*q^597 + 
(20*zeta^2 - 38*zeta - 116)*q^598 + (2*zeta^2 - 17*zeta - 38)*q^599 + (2*zeta^2 
- 6)*q^600 + (-18*zeta^2 - 12*zeta + 12)*q^601 + (28*zeta^2 + 8*zeta - 8)*q^603 
+ (12*zeta^2 - 6*zeta - 36)*q^605 + (-18*zeta^2 - 6*zeta + 24)*q^606 + (8*zeta^2
+ zeta - 24)*q^607 + 4*zeta^2*q^610 + (27*zeta^2 + 39*zeta - 81)*q^611 + 
(24*zeta^2 - 14*zeta - 76)*q^613 + (35*zeta^2 + 56*zeta - 105)*q^614 + (2*zeta^2
- zeta + 1)*q^615 + (4*zeta^2 - zeta + 1)*q^617 + (-15*zeta^2 - 6*zeta + 
45)*q^618 + (5*zeta^2 + 19*zeta + 28)*q^619 + (-15*zeta^2 - 22*zeta + 45)*q^621 
+ (20*zeta^2 + 10*zeta - 10)*q^622 + (12*zeta^2 + 8*zeta - 8)*q^624 + (-zeta^2 -
zeta + 3)*q^625 + (3*zeta^2 + 27*zeta + 48)*q^626 + (-30*zeta^2 - 12*zeta + 
36)*q^627 + (2*zeta^2 - 9*zeta + 9)*q^629 + (-53*zeta^2 - 18*zeta + 18)*q^631 + 
(-10*zeta^2 + 4*zeta + 30)*q^632 + (9*zeta^2 - 18)*q^633 + (-6*zeta^2 - 2*zeta +
8)*q^634 + (-7*zeta^2 - 10*zeta + 21)*q^635 + (2*zeta^2 + 7*zeta - 7)*q^638 + 
(-4*zeta^2 - 16*zeta + 12)*q^639 + (8*zeta^2 - 8*zeta - 32)*q^640 + (8*zeta^2 - 
20*zeta - 56)*q^641 + (-6*zeta^2 + 12*zeta + 18)*q^642 + (-3*zeta^2 - 9*zeta + 
9)*q^643 + (-2*zeta^2 - 2*zeta + 2)*q^645 + (30*zeta^2 + 24*zeta - 90)*q^646 + 
(-6*zeta^2 - 14*zeta - 16)*q^647 + (2*zeta^2 + 22*zeta + 40)*q^648 + (5*zeta^2 -
8*zeta - 15)*q^649 + (-8*zeta^2 - 3*zeta + 3)*q^650 + (-30*zeta^2 - 42*zeta + 
90)*q^653 + (5*zeta^2 + 5*zeta)*q^654 + (-3*zeta^2 + 11*zeta + 28)*q^655 + 
(-20*zeta^2 - 32*zeta + 60)*q^656 + 24*zeta^2*q^657 + (27*zeta^2 + 12*zeta - 
12)*q^659 + (-18*zeta^2 + 6*zeta + 48)*q^661 + (-2*zeta^2 + 38*zeta + 80)*q^662 
+ (8*zeta^2 + 3*zeta - 24)*q^663 + (16*zeta^2 + 12*zeta - 12)*q^666 + (53*zeta^2
+ 80*zeta - 159)*q^667 + (12*zeta^2 + 15*zeta + 6)*q^669 + (-10*zeta^2 - 14*zeta
+ 30)*q^670 + (4*zeta^2 + 6*zeta - 6)*q^671 + (-6*zeta + 6)*q^673 + (24*zeta^2 +
42*zeta - 72)*q^674 + (-zeta^2 + 2*zeta + 6)*q^675 + (-38*zeta^2 - 53*zeta + 
114)*q^677 + (-10*zeta^2 - 4*zeta + 4)*q^678 + (8*zeta^2 - 2*zeta + 2)*q^680 + 
(9*zeta^2 + 3*zeta - 27)*q^681 + (-6*zeta^2 + 12)*q^682 + (-14*zeta^2 + 26*zeta 
+ 80)*q^683 + 12*zeta^2*q^685 + (6*zeta^2 + 23*zeta - 23)*q^687 + (8*zeta^2 + 
8*zeta - 24)*q^688 + (-9*zeta^2 + 15*zeta + 48)*q^689 + (4*zeta^2 + 6*zeta + 
4)*q^690 + (-14*zeta^2 - 16*zeta + 42)*q^691 + (-22*zeta^2 - 6*zeta + 6)*q^694 +
(-9*zeta^2 - 6*zeta + 27)*q^695 + (-10*zeta^2 + 6*zeta + 32)*q^696 + (3*zeta^2 -
19*zeta - 44)*q^697 + (-18*zeta^2 - 12*zeta + 54)*q^698 + (12*zeta^2 + 14*zeta -
14)*q^699 + (57*zeta^2 + 18*zeta - 18)*q^701 + (13*zeta^2 + 18*zeta - 39)*q^702 
+ (-18*zeta^2 + 6*zeta + 48)*q^703 + (-16*zeta^2 - 8*zeta + 16)*q^704 + 
(-3*zeta^2 - 3*zeta + 9)*q^705 + (-15*zeta + 15)*q^706 + (-17*zeta^2 - 17*zeta +
51)*q^709 + (-6*zeta^2 + 2*zeta + 16)*q^710 + (-14*zeta^2 - 10*zeta + 8)*q^711 +
(16*zeta^2 + 32*zeta - 48)*q^712 + (90*zeta^2 + 24*zeta - 24)*q^713 + (zeta^2 + 
3*zeta - 3)*q^715 + (-3*zeta^2 + 6*zeta + 18)*q^717 + (16*zeta + 32)*q^718 + 
(19*zeta^2 + 34*zeta - 57)*q^719 + (16*zeta^2 + 8*zeta - 8)*q^720 + (-34*zeta^2 
- 17*zeta + 17)*q^722 + (-9*zeta^2 + 12*zeta + 27)*q^723 + (4*zeta^2 - 7*zeta - 
22)*q^725 + (-6*zeta^2 + 24*zeta + 18)*q^726 + (-2*zeta^2 + 8*zeta - 8)*q^727 + 
(-17*zeta^2 + 2*zeta - 2)*q^729 + (-12*zeta^2 - 12*zeta + 36)*q^730 + (-6*zeta^2
+ 4*zeta + 20)*q^731 + (-6*zeta^2 - 27*zeta + 18)*q^733 + (32*zeta^2 - 3*zeta + 
3)*q^734 + (-zeta^2 - 2*zeta + 3)*q^737 + (12*zeta^2 - 20*zeta - 64)*q^738 + 
(-12*zeta^2 + 25*zeta + 74)*q^739 + (-18*zeta^2 - 12*zeta + 12)*q^741 + 
(6*zeta^2 - 9*zeta + 9)*q^743 + (12*zeta^2 + 12*zeta - 36)*q^744 + (-2*zeta^2 - 
10*zeta - 16)*q^745 + (-8*zeta^2 + 20*zeta + 56)*q^746 + (-zeta + 1)*q^750 + 
(-27*zeta^2 - 33*zeta + 81)*q^751 + (-12*zeta^2 + 24*zeta + 72)*q^752 + 
(-19*zeta^2 - 15*zeta + 8)*q^753 + (-47*zeta^2 - 64*zeta + 141)*q^754 + 
(-11*zeta^2 - 6*zeta + 6)*q^755 + (4*zeta^2 + 6*zeta - 6)*q^757 + (2*zeta^2 + 
4*zeta - 6)*q^758 + (-23*zeta^2 - 9*zeta + 28)*q^759 + (-12*zeta^2 + 12*zeta + 
48)*q^760 + (9*zeta^2 + 18*zeta - 27)*q^761 + (6*zeta^2 + 2*zeta - 2)*q^762 + 
(10*zeta^2 + 8*zeta - 30)*q^765 + (-4*zeta^2 - 8*zeta - 8)*q^766 + (7*zeta^2 - 
7*zeta - 28)*q^767 + (-10*zeta^2 - 2*zeta + 2)*q^769 + (18*zeta^2 + 24*zeta - 
24)*q^771 + (15*zeta^2 - 30)*q^773 + (8*zeta + 16)*q^774 + (-9*zeta^2 - 12*zeta 
+ 27)*q^775 + (48*zeta^2 + 18*zeta - 18)*q^776 + (22*zeta^2 + 21*zeta - 
21)*q^778 + (30*zeta^2 + 48*zeta - 90)*q^779 + (18*zeta^2 + 8*zeta - 20)*q^781 +
(34*zeta^2 + 34*zeta - 102)*q^782 + (-25*zeta^2 - 7*zeta + 7)*q^783 + 
(-14*zeta^2 + 2*zeta - 2)*q^785 + (-8*zeta^2 - 6*zeta + 24)*q^786 + (9*zeta^2 + 
24*zeta + 30)*q^787 + (-16*zeta^2 + 6*zeta + 48)*q^789 + (2*zeta^2 + 7*zeta - 
7)*q^790 + (-8*zeta^2 - 16*zeta + 16)*q^792 + (10*zeta^2 + 16*zeta - 30)*q^793 +
(3*zeta^2 - zeta - 8)*q^794 + (-3*zeta^2 - 3*zeta)*q^795 + (-37*zeta^2 - 27*zeta
+ 27)*q^797 + (-27*zeta^2 - 6*zeta + 6)*q^799 + (-16*zeta^2 + 16*zeta + 
64)*q^801 + (9*zeta^2 - 13*zeta - 44)*q^802 + (6*zeta^2 - 12*zeta - 18)*q^803 + 
(-78*zeta^2 - 24*zeta + 24)*q^806 + (-3*zeta^2 - 12*zeta + 9)*q^807 + (12*zeta^2
+ 12*zeta)*q^808 + (28*zeta^2 - 37*zeta - 130)*q^809 + (11*zeta^2 + 10*zeta - 
33)*q^810 + (62*zeta^2 + 25*zeta - 25)*q^811 + (12*zeta^2 + 20*zeta - 20)*q^813 
+ (-8*zeta^2 + 10*zeta + 24)*q^814 + (3*zeta^2 - 9*zeta - 24)*q^815 + (16*zeta^2
+ 12*zeta - 8)*q^816 + (-12*zeta^2 - 12*zeta + 36)*q^817 + (6*zeta - 6)*q^818 + 
(21*zeta^2 + 27*zeta - 63)*q^821 + (12*zeta^2 + 12*zeta)*q^822 + (-9*zeta^2 + 
13*zeta + 44)*q^823 + (-42*zeta^2 - 72*zeta + 126)*q^824 + (3*zeta^2 + 5*zeta - 
5)*q^825 + (52*zeta^2 + 17*zeta - 17)*q^827 + (17*zeta^2 + 13*zeta - 8)*q^829 + 
(15*zeta^2 - 6*zeta - 45)*q^831 + (40*zeta^2 + 8*zeta - 8)*q^832 + (-6*zeta^2 - 
18*zeta + 18)*q^834 + (-2*zeta^2 + zeta + 6)*q^835 + (-9*zeta^2 + 21*zeta + 
60)*q^837 + (24*zeta^2 + 30*zeta - 72)*q^838 + (-18*zeta^2 + 9*zeta - 9)*q^839 +
(60*zeta^2 + 24*zeta - 24)*q^841 + (-19*zeta^2 - 38*zeta + 57)*q^842 + 
(-17*zeta^2 - 8*zeta + 18)*q^843 + (-4*zeta^2 - 10*zeta + 12)*q^845 + 
(-36*zeta^2 - 12*zeta + 12)*q^846 + (-24*zeta^2 - 12*zeta + 12)*q^848 + 
(11*zeta^2 + 9*zeta - 33)*q^849 + (-zeta^2 - 5*zeta - 8)*q^850 + (-16*zeta^2 + 
10*zeta + 52)*q^851 + (18*zeta^2 + 12*zeta - 12)*q^853 + (-24*zeta^2 - 12*zeta +
12)*q^855 + (12*zeta^2 - 36)*q^856 + (6*zeta^2 - 20*zeta - 52)*q^857 + 
(-11*zeta^2 - 5*zeta + 12)*q^858 + (14*zeta^2 + 40*zeta - 42)*q^859 + (46*zeta^2
+ 9*zeta - 9)*q^862 + (-13*zeta^2 - 26*zeta + 39)*q^863 + (3*zeta^2 - 6*zeta - 
18)*q^865 + (18*zeta^2 + 12*zeta - 54)*q^866 + (-2*zeta^2 - 8*zeta + 8)*q^867 + 
(-19*zeta^2 - 32*zeta + 32)*q^869 + (3*zeta^2 + 8*zeta - 9)*q^870 + (13*zeta^2 -
31*zeta - 88)*q^871 + (-10*zeta^2 + 10*zeta + 40)*q^872 + (30*zeta^2 + 48*zeta -
90)*q^873 + (-84*zeta^2 - 36*zeta + 36)*q^874 + (-18*zeta^2 - 6*zeta + 54)*q^877
+ (-12*zeta^2 + 38*zeta + 100)*q^878 + (4*zeta^2 - 9*zeta - 26)*q^879 + 
(-4*zeta^2 + 4*zeta + 12)*q^880 + (-60*zeta^2 - 12*zeta + 12)*q^881 + (28*zeta^2
- 6*zeta + 6)*q^883 + (5*zeta^2 + 3*zeta - 4)*q^885 + (18*zeta^2 - 14*zeta - 
64)*q^886 + (2*zeta^2 - 10*zeta - 6)*q^887 + (-12*zeta^2 - 16*zeta + 16)*q^888 +
(16*zeta^2 + 8*zeta - 8)*q^890 + (-7*zeta^2 + 13*zeta + 21)*q^891 + (18*zeta^2 -
36*zeta - 108)*q^893 + (12*zeta^2 - 4*zeta - 36)*q^894 + (-18*zeta^2 - 6*zeta + 
6)*q^895 + (-20*zeta^2 - 11*zeta + 11)*q^897 + (-23*zeta^2 - 50*zeta + 69)*q^898
+ (33*zeta^2 - 75*zeta - 216)*q^899 + (-15*zeta^2 - 12*zeta + 45)*q^901 + 
(2*zeta^2 + 6*zeta - 6)*q^902 + (-44*zeta^2 - 12*zeta + 12)*q^904 + (15*zeta^2 +
24*zeta - 45)*q^905 + (13*zeta^2 + zeta - 24)*q^906 + (27*zeta^2 - 33*zeta - 
120)*q^907 + (12*zeta - 12)*q^909 + (8*zeta^2 + 4*zeta - 4)*q^911 - 
24*zeta*q^912 + (-16*zeta^2 + 10*zeta + 52)*q^914 + (-2*zeta^2 + 6)*q^915 + 
(-14*zeta^2 - 5*zeta + 5)*q^918 + (-5*zeta^2 - 23*zeta + 15)*q^919 + (-12*zeta^2
+ 16*zeta + 56)*q^920 + (14*zeta^2 - 7*zeta - 42)*q^921 + (-4*zeta^2 + 16*zeta +
12)*q^922 - 14*zeta^2*q^923 + (4*zeta^2 + 3*zeta - 3)*q^925 + (-32*zeta^2 - 
28*zeta + 96)*q^926 + (30*zeta^2 - 42*zeta - 144)*q^927 + (-33*zeta^2 - 24*zeta 
+ 99)*q^929 + 6*zeta^2*q^930 - 10*zeta*q^933 + (7*zeta^2 + 11*zeta + 8)*q^934 + 
(11*zeta^2 + 4*zeta - 14)*q^935 + (32*zeta^2 + 40*zeta - 96)*q^936 + (-55*zeta^2
- 11*zeta + 11)*q^937 + (-3*zeta^2 - 18*zeta + 18)*q^939 + (-12*zeta^2 + 24*zeta
+ 72)*q^941 + (-22*zeta^2 - 18*zeta + 8)*q^942 + (38*zeta^2 + 58*zeta - 
114)*q^943 + (16*zeta^2 + 12*zeta - 12)*q^944 + (4*zeta^2 + 6*zeta - 6)*q^946 + 
(51*zeta^2 + 54*zeta - 153)*q^947 + (18*zeta^2 - 30*zeta - 96)*q^949 + (6*zeta^2
+ 12*zeta - 18)*q^950 + (6*zeta^2 + 10*zeta - 10)*q^951 + (70*zeta^2 + 29*zeta -
29)*q^953 + (-12*zeta^2 - 24*zeta + 36)*q^954 + (-12*zeta^2 + 9*zeta + 42)*q^955
+ (6*zeta^2 - 7*zeta - 18)*q^957 + (-26*zeta^2 - 16*zeta + 16)*q^958 + 
(-8*zeta^2 - 8*zeta + 8)*q^960 + (-59*zeta^2 - 95*zeta + 177)*q^961 + (-14*zeta 
- 28)*q^962 + (12*zeta^2 + 12*zeta)*q^963 - 16*zeta^2*q^965 + (-78*zeta^2 - 
30*zeta + 30)*q^967 + (36*zeta^2 + 24*zeta - 108)*q^968 + (-24*zeta^2 - 18*zeta 
+ 12)*q^969 + (9*zeta^2 - 15*zeta - 48)*q^970 + (21*zeta^2 + 12*zeta - 63)*q^971
+ (-38*zeta^2 + 2*zeta - 2)*q^974 + (zeta^2 + 3*zeta - 3)*q^975 + (-8*zeta^2 + 
8*zeta + 32)*q^976 + (-26*zeta^2 + 32*zeta + 116)*q^977 + (6*zeta^2 + 6*zeta - 
18)*q^978 + (-8*zeta^2 - 16*zeta + 16)*q^979 + (-20*zeta^2 - 10*zeta + 10)*q^981
+ (-49*zeta^2 - 58*zeta + 147)*q^982 + (-15*zeta^2 - 6*zeta + 18)*q^983 + 
(-8*zeta^2 + 4*zeta + 24)*q^984 + (-13*zeta^2 - 14*zeta + 39)*q^985 + (52*zeta^2
+ 21*zeta - 21)*q^986 + (-14*zeta^2 - 16*zeta + 42)*q^989 + (-8*zeta^2 - 4*zeta 
+ 8)*q^990 + (-24*zeta^2 + 10*zeta + 68)*q^991 + (2*zeta^2 - 16*zeta + 16)*q^993
+ (-8*zeta^2 - zeta + 1)*q^995 + (9*zeta^2 - 18*zeta - 54)*q^997 + (3*zeta^2 - 
3*zeta - 12)*q^998 + (-5*zeta^2 - 6*zeta + 15)*q^999 + (4*zeta^2 + 2*zeta - 
2)*q^1000 + (-6*zeta^2 - 11*zeta + 11)*q^1002 + (11*zeta^2 + 2*zeta - 33)*q^1003
+ (-zeta^2 + 3*zeta + 8)*q^1005 + (-43*zeta^2 - 80*zeta + 129)*q^1006 + 
(36*zeta^2 + 18*zeta - 18)*q^1007 + (31*zeta^2 + 24*zeta - 24)*q^1009 + 
(6*zeta^2 - 18)*q^1010 + (15*zeta^2 - 3*zeta - 36)*q^1011 + (38*zeta^2 + 56*zeta
- 114)*q^1013 + (12*zeta^2 + 14*zeta - 14)*q^1014 + (28*zeta^2 + 8*zeta - 
8)*q^1016 + (-32*zeta^2 - 44*zeta + 96)*q^1017 + (-4*zeta^2 + 34*zeta + 
76)*q^1018 + (-20*zeta^2 + 50*zeta + 140)*q^1019 + (6*zeta^2 + 18*zeta - 
18)*q^1021 + (6*zeta^2 + 9*zeta - 9)*q^1023 + (32*zeta^2 + 32*zeta - 96)*q^1024 
+ (3*zeta^2 - 5*zeta - 16)*q^1025 + (6*zeta^2 - 18*zeta - 48)*q^1026 + 
(-2*zeta^2 - 13*zeta + 6)*q^1027 + (-36*zeta^2 - 15*zeta + 15)*q^1030 + 
(29*zeta^2 + 37*zeta - 87)*q^1031 + (-4*zeta^2 - 4*zeta)*q^1032 + (21*zeta^2 - 
51*zeta - 144)*q^1033 + (3*zeta^2 - 9)*q^1034 + (-28*zeta^2 - 12*zeta + 
12)*q^1035 + (-8*zeta^2 + 2*zeta - 2)*q^1037 + (3*zeta^2 + 6*zeta - 9)*q^1038 + 
(-24*zeta^2 + 30*zeta + 108)*q^1039 + (4*zeta^2 - 16*zeta - 40)*q^1040 + 
(5*zeta^2 + 6*zeta - 15)*q^1041 + (-20*zeta^2 + 2*zeta - 2)*q^1042 + (6*zeta^2 -
6*zeta - 18)*q^1045 + (24*zeta^2 - 36*zeta - 120)*q^1046 + (18*zeta^2 + 12*zeta 
- 12)*q^1047 + (-28*zeta^2 - 44*zeta + 84)*q^1048 + (16*zeta^2 + 6*zeta - 
6)*q^1049 + (11*zeta^2 + 6*zeta - 6)*q^1051 + (-17*zeta^2 + 26*zeta + 86)*q^1053
+ (12*zeta^2 - 42*zeta - 108)*q^1054 + (-9*zeta^2 - 9*zeta + 27)*q^1055 + 
(-54*zeta^2 - 15*zeta + 15)*q^1058 + (-15*zeta^2 + 15*zeta + 45)*q^1059 + 
(33*zeta + 66)*q^1061 + (4*zeta^2 + 16*zeta - 12)*q^1062 + (-38*zeta^2 - 16*zeta
+ 16)*q^1063 + (6*zeta^2 + 8*zeta - 8)*q^1065 + (-34*zeta^2 - 46*zeta + 
102)*q^1066 + (-9*zeta^2 - 6*zeta + 6)*q^1067 + (18*zeta^2 + 24*zeta - 
54)*q^1069 + (-6*zeta + 6)*q^1070 + (40*zeta^2 + 12*zeta - 12)*q^1072 + 
(19*zeta^2 + 20*zeta - 57)*q^1073 + (6*zeta^2 - 6*zeta - 24)*q^1074 + (2*zeta + 
4)*q^1075 + (-8*zeta + 8)*q^1077 + (-6*zeta^2 - 8*zeta + 18)*q^1080 + (21*zeta^2
- 45*zeta - 132)*q^1081 + (-5*zeta^2 + 29*zeta + 68)*q^1082 + 17*zeta*q^1083 + 
(-18*zeta^2 - 12*zeta + 12)*q^1086 + (-4*zeta^2 + 8*zeta + 12)*q^1087 + 
(-24*zeta^2 + 16*zeta + 80)*q^1088 + (12*zeta^2 + 36*zeta + 48)*q^1089 + 
(5*zeta^2 + 10*zeta - 15)*q^1090 + (12*zeta^2 - 6*zeta + 6)*q^1091 + (-38*zeta^2
+ 6*zeta - 6)*q^1093 + (-28*zeta^2 - 44*zeta + 84)*q^1094 + (6*zeta^2 + 
6*zeta)*q^1095 + (-24*zeta^2 + 24*zeta + 96)*q^1096 + (-26*zeta^2 - 38*zeta + 
78)*q^1097 + (-16*zeta^2 - 8*zeta + 8)*q^1098 + (-19*zeta^2 + 3*zeta + 
57)*q^1101 + (-18*zeta^2 + 66*zeta + 168)*q^1102 + (-28*zeta^2 + 40*zeta + 
136)*q^1103 + (-4*zeta^2 - 24*zeta + 12)*q^1104 + (19*zeta^2 + 8*zeta - 
8)*q^1105 + (-18*zeta^2 - 5*zeta + 5)*q^1107 + (9*zeta^2 + 31*zeta + 44)*q^1109 
+ (-8*zeta^2 - 2*zeta + 12)*q^1110 + (-12*zeta^2 + 18*zeta + 36)*q^1111 + 
(36*zeta^2 + 24*zeta - 24)*q^1112 + (4*zeta^2 - 12*zeta + 12)*q^1114 + 
(18*zeta^2 + 33*zeta - 54)*q^1115 + (33*zeta^2 - 29*zeta - 124)*q^1117 + 
(10*zeta^2 + 16*zeta - 30)*q^1118 + (8*zeta^2 + 2*zeta - 2)*q^1119 + (-24*zeta^2
- 18*zeta + 18)*q^1121 + (-15*zeta^2 + 22*zeta + 45)*q^1122 + (-29*zeta^2 + 
50*zeta + 158)*q^1123 + (2*zeta^2 + 4*zeta - 6)*q^1125 + (44*zeta^2 - 2*zeta + 
2)*q^1126 + (12*zeta^2 + 6*zeta - 6)*q^1128 + (13*zeta^2 + 31*zeta - 39)*q^1129 
+ (-6*zeta^2 + 16*zeta + 44)*q^1130 + (-2*zeta^2 + 15*zeta + 34)*q^1131 + 
(9*zeta^2 + 21*zeta - 21)*q^1133 + (21*zeta^2 + 9*zeta - 9)*q^1135 + (-16*zeta^2
- 8*zeta + 48)*q^1136 + (2*zeta^2 - 4)*q^1137 + (12*zeta^2 - 32*zeta - 
88)*q^1138 + (23*zeta^2 + 32*zeta - 69)*q^1139 + (40*zeta^2 + 26*zeta - 
26)*q^1142 + (20*zeta^2 + 28*zeta - 60)*q^1143 + (10*zeta^2 + 2*zeta - 
16)*q^1144 + (-17*zeta^2 + 11*zeta + 56)*q^1145 + (3*zeta^2 - 24*zeta - 
9)*q^1146 + (30*zeta^2 + 12*zeta - 12)*q^1147 + (4*zeta^2 + 10*zeta - 10)*q^1149
+ (8*zeta^2 + 14*zeta - 24)*q^1150 + (6*zeta^2 - 6*zeta - 24)*q^1151 + (32*zeta 
+ 64)*q^1152 + (-26*zeta^2 - 10*zeta + 78)*q^1153 + (-24*zeta^2 - 3*zeta + 
3)*q^1154 + (32*zeta^2 + 40*zeta - 96)*q^1157 + (-16*zeta^2 - 16*zeta)*q^1158 + 
(12*zeta^2 - 12*zeta - 48)*q^1159 + (22*zeta^2 + 28*zeta - 66)*q^1160 + 
(6*zeta^2 + 2*zeta - 2)*q^1161 + (2*zeta^2 - 14*zeta + 14)*q^1163 + (-2*zeta^2 -
10*zeta - 16)*q^1165 + (12*zeta^2 + 6*zeta - 12)*q^1166 + (10*zeta^2 - 21*zeta -
30)*q^1167 + (48*zeta^2 + 24*zeta - 24)*q^1168 + (20*zeta^2 + 4*zeta - 4)*q^1170
+ (-29*zeta^2 - 53*zeta + 87)*q^1171 + (-17*zeta^2 - 17*zeta)*q^1173 + 
(-48*zeta^2 - 60*zeta + 144)*q^1174 + (-9*zeta^2 - 3*zeta + 3)*q^1175 + 
(18*zeta^2 + 30*zeta - 30)*q^1177 + (72*zeta^2 + 108*zeta - 216)*q^1178 + 
(16*zeta^2 - 28*zeta - 88)*q^1179 + (-37*zeta^2 - 64*zeta + 111)*q^1181 + 
(2*zeta^2 - 10*zeta + 10)*q^1182 + (6*zeta^2 - 7*zeta - 18)*q^1185 + (15*zeta^2 
- 21*zeta - 72)*q^1186 + (2*zeta^2 - 38*zeta - 80)*q^1187 + (64*zeta^2 + 17*zeta
- 17)*q^1189 + (-3*zeta^2 - 4*zeta + 4)*q^1191 + (16*zeta^2 + 40*zeta - 
48)*q^1192 + (15*zeta^2 - 14*zeta - 58)*q^1193 + (-4*zeta^2 - 6*zeta - 4)*q^1194
+ (15*zeta^2 + 21*zeta - 45)*q^1195 + (34*zeta^2 + 15*zeta - 15)*q^1198 + 
(5*zeta^2 - 5*zeta - 15)*q^1199 + (-4*zeta^2 + 8)*q^1200 + (-18*zeta^2 + 49*zeta
+ 134)*q^1201 + (-18*zeta^2 - 12*zeta + 54)*q^1202 + (-9*zeta^2 - 7*zeta + 
7)*q^1203 + (-6*zeta^2 - 9*zeta + 9)*q^1205 + (28*zeta^2 + 40*zeta - 84)*q^1206 
+ (20*zeta^2 - 2*zeta - 44)*q^1207 + (-2*zeta^2 - 22*zeta - 40)*q^1208 + 
(15*zeta^2 + 24*zeta - 45)*q^1209 + (12*zeta^2 - 6*zeta + 6)*q^1210 + (25*zeta^2
+ 46*zeta - 75)*q^1213 + (-15*zeta^2 + zeta + 32)*q^1214 + (-4*zeta^2 - 12*zeta 
- 16)*q^1215 + (-48*zeta^2 - 48*zeta + 144)*q^1216 + (27*zeta^2 - 3*zeta + 
3)*q^1217 + (42*zeta^2 + 18*zeta - 18)*q^1219 + (31*zeta^2 + 13*zeta - 
36)*q^1221 + (-15*zeta^2 + 39*zeta + 108)*q^1222 - 9*zeta*q^1223 + (-40*zeta^2 -
24*zeta + 24)*q^1224 + (28*zeta^2 - 10*zeta + 10)*q^1226 + (6*zeta^2 - 6*zeta - 
18)*q^1227 + (-30*zeta^2 + 6*zeta + 72)*q^1229 + (2*zeta^2 + 6*zeta - 6)*q^1230 
+ (-46*zeta^2 - 26*zeta + 26)*q^1231 + (-48*zeta^2 - 24*zeta + 24)*q^1233 + 
(4*zeta^2 + 10*zeta - 12)*q^1234 + (-6*zeta^2 + 24*zeta + 60)*q^1235 + 
(-6*zeta^2 - 6*zeta + 18)*q^1237 + (-38*zeta^2 - 24*zeta + 24)*q^1238 + 
(36*zeta^2 + 12*zeta - 12)*q^1240 + (30*zeta^2 + 24*zeta - 90)*q^1241 + 
(8*zeta^2 - 22*zeta - 60)*q^1242 + (-3*zeta^2 + zeta + 8)*q^1243 + (-22*zeta^2 -
8*zeta + 8)*q^1247 + (-10*zeta^2 + 16*zeta + 52)*q^1249 + (zeta^2 - zeta - 
4)*q^1250 + (12*zeta^2 + 36*zeta - 36)*q^1251 + (24*zeta^2 + 42*zeta - 
42)*q^1254 + (-11*zeta^2 - 26*zeta + 33)*q^1255 + (36*zeta^2 - 28*zeta - 
128)*q^1256 + (-3*zeta^2 - 9*zeta - 12)*q^1257 + (2*zeta^2 + 22*zeta - 6)*q^1258
+ (58*zeta^2 + 6*zeta - 6)*q^1259 + (69*zeta^2 + 18*zeta - 18)*q^1261 + 
(-53*zeta^2 - 70*zeta + 159)*q^1262 + (-19*zeta^2 + 38)*q^1263 + (24*zeta^2 + 
4*zeta - 40)*q^1264 + (5*zeta^2 - 4*zeta - 15)*q^1265 + (-9*zeta + 9)*q^1266 + 
(15*zeta^2 + 21*zeta - 45)*q^1269 + (4*zeta^2 - 10*zeta - 28)*q^1270 + 
(24*zeta^2 - 54*zeta - 156)*q^1271 + 12*zeta*q^1272 + (-60*zeta^2 - 18*zeta + 
18)*q^1273 + (zeta^2 + 4*zeta - 4)*q^1275 + (9*zeta^2 - 46*zeta - 110)*q^1277 + 
(-8*zeta^2 - 16*zeta - 16)*q^1278 + (29*zeta^2 + 22*zeta - 87)*q^1279 + 
(40*zeta^2 + 12*zeta - 12)*q^1282 + (6*zeta^2 + 24*zeta - 18)*q^1283 + 
(-6*zeta^2 - 12*zeta - 12)*q^1285 + (-3*zeta^2 + 12*zeta + 9)*q^1286 + (8*zeta^2
+ 10*zeta - 10)*q^1287 + (68*zeta^2 + 16*zeta - 16)*q^1289 + (-2*zeta^2 + 
6)*q^1290 + (20*zeta^2 - 20*zeta - 80)*q^1291 + (-14*zeta^2 - 9*zeta + 
42)*q^1293 + (28*zeta^2 + 20*zeta - 20)*q^1294 + (-44*zeta^2 - 24*zeta + 
24)*q^1296 + (11*zeta^2 - 10*zeta - 33)*q^1297 + (-18*zeta^2 - 8*zeta + 
20)*q^1298 + (-18*zeta^2 - 12*zeta + 12)*q^1299 + (10*zeta^2 + 9*zeta - 
9)*q^1301 + (-26*zeta^2 - 21*zeta + 21)*q^1303 + (24*zeta^2 + 36*zeta - 
72)*q^1304 + (-6*zeta^2 + 22*zeta + 56)*q^1305 + (18*zeta^2 - 42*zeta - 
120)*q^1306 + (12*zeta^2 + 27*zeta - 36)*q^1307 + (-22*zeta^2 - 8*zeta + 
8)*q^1310 + (6*zeta^2 + 36*zeta - 18)*q^1311 + (-12*zeta^2 + 6*zeta + 36)*q^1313
+ (24*zeta^2 + 48*zeta - 72)*q^1314 + (-26*zeta^2 - 16*zeta + 16)*q^1315 + 
(12*zeta^2 - zeta + 1)*q^1317 + (27*zeta^2 + 30*zeta - 81)*q^1318 + (-24*zeta^2 
+ 30*zeta + 108)*q^1319 + (14*zeta^2 + 6*zeta - 16)*q^1320 + (-58*zeta^2 - 
92*zeta + 174)*q^1321 + (-12*zeta^2 + 12*zeta - 12)*q^1322 + (-3*zeta^2 - 6*zeta
+ 9)*q^1325 + (-13*zeta^2 + 3*zeta + 32)*q^1326 + (3*zeta^2 + 35*zeta + 
64)*q^1327 + (-18*zeta^2 - 20*zeta + 20)*q^1329 + (19*zeta^2 + 26*zeta - 
26)*q^1331 + (-6*zeta^2 + 18*zeta + 48)*q^1333 + (-26*zeta^2 + 80*zeta + 
212)*q^1334 - 8*zeta*q^1335 + (8*zeta^2 + 10*zeta - 10)*q^1336 + (-30*zeta^2 - 
27*zeta + 27)*q^1338 + (-75*zeta^2 - 99*zeta + 225)*q^1339 + (-24*zeta^2 + 
16*zeta + 80)*q^1341 + (4*zeta^2 - 4*zeta - 12)*q^1342 + (-11*zeta^2 - 27*zeta +
27)*q^1343 + (-18*zeta^2 - 3*zeta + 3)*q^1345 + 12*zeta*q^1346 + (-29*zeta^2 - 
2*zeta + 54)*q^1347 + (24*zeta^2 + 12*zeta - 72)*q^1349 + (-4*zeta^2 - zeta + 
1)*q^1350 + (16*zeta^2 - 4*zeta + 4)*q^1352 + (5*zeta^2 - 6*zeta - 15)*q^1353 + 
(23*zeta^2 - 53*zeta - 152)*q^1354 + (-8*zeta^2 - 4*zeta + 8)*q^1355 + 
(-26*zeta^2 - 16*zeta + 16)*q^1357 + (20*zeta^2 - 2*zeta + 2)*q^1359 + (8*zeta^2
+ 20*zeta - 24)*q^1360 + (-15*zeta^2 + 57*zeta + 144)*q^1361 + (-15*zeta^2 + 
3*zeta + 36)*q^1362 + (-54*zeta^2 - 75*zeta + 162)*q^1363 + (-52*zeta^2 - 
12*zeta + 12)*q^1366 + (-32*zeta^2 - 34*zeta + 96)*q^1367 + (-48*zeta - 
96)*q^1368 + (12*zeta^2 - 27*zeta - 78)*q^1369 + (12*zeta^2 + 24*zeta - 
36)*q^1370 + (16*zeta^2 + 19*zeta - 19)*q^1371 + (-16*zeta^2 - 5*zeta + 
5)*q^1373 + (6*zeta^2 - 34*zeta - 18)*q^1374 + (-2*zeta^2 - zeta + 2)*q^1375 + 
(-28*zeta^2 - 19*zeta + 84)*q^1377 + (-30*zeta^2 - 6*zeta + 6)*q^1378 + 
(-22*zeta^2 - 46*zeta + 66)*q^1381 + (12*zeta^2 - 16*zeta - 56)*q^1382 + 
(32*zeta^2 + 12*zeta - 40)*q^1383 + (18*zeta^2 + 24*zeta - 54)*q^1384 + 
(24*zeta^2 + 15*zeta - 15)*q^1385 + (-72*zeta^2 - 36*zeta + 36)*q^1387 + 
(22*zeta^2 + 18*zeta - 8)*q^1389 + (12*zeta^2 - 6*zeta - 36)*q^1390 + (6*zeta^2 
+ 18*zeta - 18)*q^1391 + (-12*zeta^2 + 4*zeta - 4)*q^1392 + (38*zeta^2 + 16*zeta
- 16)*q^1394 + (24*zeta^2 + 36*zeta - 72)*q^1395 + (zeta^2 - zeta - 4)*q^1397 + 
(12*zeta^2 - 4*zeta - 36)*q^1398 + (38*zeta^2 + 16*zeta - 16)*q^1399 + 
(-7*zeta^2 - 16*zeta + 16)*q^1401 + (57*zeta^2 + 78*zeta - 171)*q^1402 + 
(12*zeta^2 - 16*zeta - 56)*q^1403 + (zeta^2 - 7*zeta - 3)*q^1405 + (-12*zeta^2 +
12*zeta - 12)*q^1406 + (16*zeta^2 + 24*zeta - 24)*q^1408 + (-43*zeta^2 - 53*zeta
+ 129)*q^1409 + (3*zeta^2 - 3*zeta - 12)*q^1410 + (64*zeta^2 + 36*zeta - 
36)*q^1413 + (31*zeta^2 + 11*zeta - 11)*q^1415 + (4*zeta^2 - 12*zeta - 
12)*q^1416 + (-5*zeta^2 + 20*zeta + 50)*q^1417 + (17*zeta^2 - 17*zeta - 
68)*q^1418 + (4*zeta^2 - 6*zeta - 12)*q^1419 + (20*zeta^2 + 24*zeta - 24)*q^1422
+ (-2*zeta^2 - 14*zeta + 6)*q^1423 + (32*zeta + 64)*q^1424 + (6*zeta^2 - 
12)*q^1425 + (90*zeta^2 + 132*zeta - 270)*q^1426 + (13*zeta^2 - 3*zeta + 
3)*q^1427 + (-30*zeta^2 - 12*zeta + 12)*q^1429 + (zeta^2 - 4*zeta - 3)*q^1430 + 
(-3*zeta^2 + 9*zeta + 24)*q^1431 + (12*zeta^2 - 36*zeta - 96)*q^1432 + 
(12*zeta^2 + 27*zeta - 36)*q^1433 + (-12*zeta^2 - 3*zeta + 3)*q^1434 + 
(-3*zeta^2 + 16*zeta + 9)*q^1437 + (-4*zeta^2 + 34*zeta + 76)*q^1438 + 
(28*zeta^2 - 37*zeta - 130)*q^1439 + (2*zeta^2 + 7*zeta - 7)*q^1441 + (7*zeta - 
7)*q^1443 + (6*zeta^2 - 4*zeta - 20)*q^1445 + (30*zeta^2 + 12*zeta - 36)*q^1446 
+ (-28*zeta^2 - 65*zeta + 84)*q^1447 + (-60*zeta^2 - 12*zeta + 12)*q^1448 + 
(14*zeta^2 + 3*zeta - 3)*q^1450 + (-34*zeta^2 - 26*zeta + 102)*q^1451 + 
(6*zeta^2 + 2*zeta - 8)*q^1453 + (-2*zeta^2 - 20*zeta + 6)*q^1454 + (-9*zeta^2 -
6*zeta + 6)*q^1455 + (-90*zeta^2 - 27*zeta + 27)*q^1457 + (-17*zeta^2 - 38*zeta 
+ 51)*q^1458 + (18*zeta + 36)*q^1459 + (21*zeta^2 - 2*zeta - 63)*q^1461 + 
(-8*zeta^2 + 2*zeta - 2)*q^1462 + (8*zeta^2 + 8*zeta - 8)*q^1464 + (-22*zeta^2 -
31*zeta + 66)*q^1465 + (-15*zeta^2 - 27*zeta - 24)*q^1466 + (-12*zeta^2 + 
24*zeta + 72)*q^1467 + (-70*zeta^2 - 21*zeta + 21)*q^1469 + (-78*zeta^2 - 
30*zeta + 30)*q^1471 + (-56*zeta^2 - 64*zeta + 168)*q^1472 + (11*zeta^2 + 
20*zeta + 18)*q^1473 + (-2*zeta - 4)*q^1474 + (zeta^2 + 4*zeta - 3)*q^1475 + 
(-50*zeta^2 - 13*zeta + 13)*q^1478 + (-5*zeta^2 - 21*zeta + 15)*q^1479 + 
(4*zeta^2 + 8*zeta + 8)*q^1480 + (-20*zeta^2 + 29*zeta + 98)*q^1481 + 
(-18*zeta^2 - 12*zeta + 54)*q^1482 + (13*zeta^2 + 11*zeta - 11)*q^1483 + 
(-zeta^2 - zeta + 1)*q^1485 + (6*zeta^2 + 30*zeta - 18)*q^1486 + (15*zeta^2 - 
30)*q^1487 + (-12*zeta^2 + 12*zeta + 48)*q^1488 + (67*zeta^2 + 80*zeta - 
201)*q^1489 + (20*zeta^2 + 12*zeta - 12)*q^1490 + (-58*zeta^2 - 56*zeta + 
174)*q^1493 + (-9*zeta^2 + 29*zeta + 76)*q^1495 + (14*zeta^2 - 16*zeta - 
42)*q^1496 + (-3*zeta^2 - 3*zeta + 3)*q^1497 + (-61*zeta^2 - 14*zeta + 
14)*q^1499 + (-36*zeta^2 - 6*zeta + 60)*q^1501 + (21*zeta^2 - 33*zeta - 
108)*q^1502 + (-2*zeta^2 + 8*zeta + 6)*q^1503 + (30*zeta^2 + 34*zeta - 
34)*q^1506 + (12*zeta^2 - 12*zeta - 36)*q^1507 + (-34*zeta^2 + 3*zeta + 
74)*q^1509 + (-11*zeta^2 - 10*zeta + 33)*q^1510 + (-54*zeta^2 - 15*zeta + 
15)*q^1511 + (-40*zeta^2 - 24*zeta + 24)*q^1513 + (4*zeta^2 - 4*zeta - 
12)*q^1514 + (-12*zeta^2 - 6*zeta + 12)*q^1515 + (14*zeta^2 + 14*zeta - 
42)*q^1517 + (18*zeta^2 + 32*zeta - 32)*q^1518 - 24*zeta^2*q^1520 + (20*zeta^2 +
16*zeta - 60)*q^1521 + (18*zeta + 36)*q^1522 + (28*zeta^2 - 16*zeta - 88)*q^1523
+ (-4*zeta^2 - 2*zeta + 2)*q^1525 + (4*zeta^2 - 11*zeta + 11)*q^1527 + 
(-42*zeta^2 - 36*zeta + 126)*q^1528 + (-33*zeta^2 - 15*zeta + 36)*q^1529 + 
(-12*zeta^2 + 8*zeta + 40)*q^1530 + (-44*zeta^2 - 64*zeta + 132)*q^1531 + 
14*zeta^2*q^1534 + (-28*zeta^2 - 35*zeta + 84)*q^1535 + (-16*zeta^2 - 
16*zeta)*q^1536 + (9*zeta^2 - 33*zeta - 84)*q^1537 + (-10*zeta^2 - 16*zeta + 
30)*q^1538 + (66*zeta^2 + 36*zeta - 36)*q^1539 + (-74*zeta^2 - 22*zeta + 
22)*q^1541 + (18*zeta^2 - 12*zeta - 54)*q^1542 + (15*zeta^2 - 30)*q^1543 + 
(32*zeta^2 - 32*zeta - 128)*q^1544 + (3*zeta^2 + 15*zeta - 9)*q^1545 + (-15*zeta
+ 15)*q^1546 + (14*zeta^2 + 20*zeta - 42)*q^1549 + (6*zeta^2 - 12*zeta - 
36)*q^1550 + (-6*zeta^2 - 3*zeta + 6)*q^1551 + (48*zeta^2 + 60*zeta - 
144)*q^1552 + (47*zeta^2 + 15*zeta - 15)*q^1553 - 10*zeta^2*q^1555 + (-6*zeta^2 
+ 18*zeta + 48)*q^1557 + (-12*zeta^2 + 48*zeta + 120)*q^1558 + (-34*zeta^2 - 
34*zeta + 102)*q^1559 + (-4*zeta^2 + 2*zeta - 2)*q^1560 + (-16*zeta^2 - 26*zeta 
+ 26)*q^1562 + (12*zeta^2 - 2*zeta - 36)*q^1563 + (15*zeta^2 - 12*zeta - 
54)*q^1565 + (-25*zeta^2 - 36*zeta + 75)*q^1566 + (-20*zeta^2 - 4*zeta + 
4)*q^1567 + (-24*zeta^2 - 18*zeta + 18)*q^1569 + (-14*zeta^2 - 32*zeta + 
42)*q^1570 + (-18*zeta^2 + 20*zeta + 76)*q^1571 + (36*zeta^2 + 66*zeta - 
108)*q^1573 + (-48*zeta^2 - 33*zeta + 33)*q^1574 + (52*zeta^2 + 24*zeta - 
24)*q^1576 + (38*zeta^2 + 6*zeta - 64)*q^1578 + (12*zeta^2 + 27*zeta + 
30)*q^1579 + (-12*zeta^2 + 3*zeta - 3)*q^1581 + (54*zeta^2 + 30*zeta - 
30)*q^1583 + (-8*zeta^2 + 16*zeta + 24)*q^1584 + (-4*zeta^2 - 2*zeta + 4)*q^1585
+ (-4*zeta^2 + 16*zeta + 40)*q^1586 + (12*zeta^2 + 15*zeta - 36)*q^1587 + 
(6*zeta^2 + 6*zeta - 6)*q^1590 + (-2*zeta^2 - 8*zeta + 6)*q^1591 + (12*zeta^2 - 
16*zeta - 56)*q^1592 + (zeta^2 - 5*zeta - 12)*q^1593 + (-37*zeta^2 - 20*zeta + 
111)*q^1594 + (5*zeta^2 + 6*zeta - 6)*q^1595 + 58*zeta^2*q^1597 + (-27*zeta^2 - 
42*zeta + 81)*q^1598 + (-zeta^2 + 11*zeta + 24)*q^1599 + (8*zeta + 16)*q^1600 + 
(26*zeta^2 + 62*zeta - 78)*q^1601 - 32*zeta^2*q^1602 + (-6*zeta^2 + 6*zeta + 
18)*q^1605 + (-24*zeta^2 - 12*zeta + 24)*q^1606 + (-9*zeta^2 - 15*zeta - 
12)*q^1607 + (-8*zeta^2 - 12*zeta + 24)*q^1608 + (-4*zeta^2 + 16*zeta - 
16)*q^1609 + (48*zeta^2 + 12*zeta - 12)*q^1611 + (6*zeta^2 - 48*zeta - 
108)*q^1613 + (-6*zeta^2 - 12*zeta - 12)*q^1614 + (-12*zeta^2 - 30*zeta + 
36)*q^1615 + (-24*zeta^2 - 24*zeta + 24)*q^1616 + (74*zeta^2 + 9*zeta - 
9)*q^1618 + (23*zeta^2 + 19*zeta - 69)*q^1619 + (6*zeta^2 + 2*zeta - 8)*q^1621 +
(62*zeta^2 + 74*zeta - 186)*q^1622 + (5*zeta^2 - 7*zeta + 7)*q^1623 + (5*zeta^2 
+ zeta - 1)*q^1625 + (12*zeta^2 - 16*zeta - 36)*q^1626 + (-8*zeta^2 + 50*zeta + 
116)*q^1627 + (-48*zeta^2 - 60*zeta + 144)*q^1629 + (18*zeta^2 + 6*zeta - 
6)*q^1630 + (26*zeta^2 + 20*zeta - 78)*q^1633 + (12*zeta^2 - 12*zeta - 
48)*q^1634 + (5*zeta^2 - 10)*q^1635 + (-21*zeta^2 - 21*zeta + 21)*q^1637 + 
(-16*zeta^2 - 30*zeta + 30)*q^1639 + (16*zeta^2 + 20*zeta - 48)*q^1640 + 
(-10*zeta^2 + 6*zeta + 32)*q^1641 + (-15*zeta^2 + 27*zeta + 84)*q^1642 + 
(-36*zeta^2 - 54*zeta + 108)*q^1643 + (-26*zeta^2 - 4*zeta + 4)*q^1646 + 
(6*zeta^2 + 8*zeta - 18)*q^1647 + (12*zeta^2 - 72*zeta - 168)*q^1648 + 
(-24*zeta^2 + 33*zeta + 114)*q^1649 + (3*zeta^2 - 4*zeta - 9)*q^1650 + 
(44*zeta^2 + 13*zeta - 13)*q^1651 + (18*zeta^2 - 6*zeta + 6)*q^1653 + (52*zeta^2
+ 70*zeta - 156)*q^1654 + (18*zeta^2 - 20*zeta - 76)*q^1655 + (8*zeta^2 - 
56*zeta - 128)*q^1656 + (30*zeta^2 + 39*zeta - 90)*q^1657 + (-26*zeta^2 - 
30*zeta + 30)*q^1658 + (7*zeta^2 - 13*zeta - 21)*q^1661 + (-36*zeta^2 - 6*zeta +
60)*q^1662 + (-18*zeta^2 - 28*zeta - 20)*q^1663 + (40*zeta^2 + 64*zeta - 
120)*q^1664 + (-4*zeta^2 + 4*zeta - 4)*q^1665 + (20*zeta^2 + 19*zeta - 
19)*q^1667 + (9*zeta^2 - 39*zeta - 96)*q^1669 + (5*zeta^2 + zeta - 8)*q^1670 + 
(-14*zeta^2 + 12*zeta + 42)*q^1671 + (-24*zeta^2 - 36*zeta + 36)*q^1672 + 
(-42*zeta^2 - 12*zeta + 12)*q^1674 + (7*zeta^2 + 10*zeta - 21)*q^1675 + 
(4*zeta^2 - 2*zeta - 12)*q^1677 + (-18*zeta^2 - 54*zeta + 54)*q^1678 + 
(-84*zeta^2 - 36*zeta + 36)*q^1679 + (5*zeta^2 + 12*zeta - 12)*q^1681 + 
(60*zeta^2 + 72*zeta - 180)*q^1682 + (30*zeta^2 + 14*zeta - 32)*q^1683 + 
(-21*zeta^2 - 24*zeta + 63)*q^1685 + (16*zeta^2 + 25*zeta - 25)*q^1686 + 
(36*zeta^2 + 18*zeta - 18)*q^1688 + (-24*zeta^2 + 2*zeta + 72)*q^1689 + 
(-2*zeta^2 - 10*zeta - 16)*q^1690 + (-48*zeta - 96)*q^1691 + (15*zeta^2 + 3*zeta
- 3)*q^1693 + (6*zeta^2 + zeta - 1)*q^1695 + (24*zeta^2 + 6*zeta - 36)*q^1697 + 
(-13*zeta^2 + 9*zeta + 44)*q^1698 + (-51*zeta^2 - 78*zeta + 153)*q^1699 + 
(-20*zeta^2 + 6*zeta - 6)*q^1702 + (-47*zeta^2 - 64*zeta + 141)*q^1703 + 
(20*zeta^2 + 12*zeta - 16)*q^1704 + (-3*zeta^2 - 3*zeta)*q^1705 + (18*zeta^2 + 
12*zeta - 54)*q^1706 + (-12*zeta^2 - 2*zeta + 2)*q^1707 + (-19*zeta^2 - 14*zeta 
+ 14)*q^1709 + (-24*zeta^2 - 24*zeta + 72)*q^1710 + (-zeta^2 + 19*zeta + 
40)*q^1711 + (-24*zeta^2 + 48)*q^1712 + (6*zeta^2 - 26*zeta - 18)*q^1713 + 
(40*zeta^2 + 14*zeta - 14)*q^1714 + (-18*zeta^2 + 6*zeta + 54)*q^1717 + 
(12*zeta^2 + 40*zeta + 56)*q^1718 + (-6*zeta^2 - 42*zeta - 72)*q^1719 + 
(-4*zeta^2 - 8*zeta + 12)*q^1720 + (-6*zeta^2 - 18*zeta + 18)*q^1721 + 
(-34*zeta^2 - 3*zeta + 3)*q^1723 + (5*zeta^2 - zeta - 12)*q^1725 + (-26*zeta - 
52)*q^1726 + (-20*zeta^2 + 22*zeta + 60)*q^1727 + (24*zeta^2 + 8*zeta - 
8)*q^1728 + (12*zeta^2 + 3*zeta - 3)*q^1730 + (9*zeta^2 + 3*zeta - 27)*q^1731 + 
(-4*zeta^2 + 70*zeta + 148)*q^1733 + (-2*zeta^2 + 12*zeta + 6)*q^1734 + 
(16*zeta^2 + 5*zeta - 5)*q^1735 + (64*zeta^2 + 32*zeta - 32)*q^1737 + 
(-19*zeta^2 + 26*zeta + 57)*q^1738 + (3*zeta^2 - 15*zeta - 36)*q^1739 + 
(63*zeta^2 + 96*zeta - 189)*q^1741 + (62*zeta^2 + 18*zeta - 18)*q^1742 - 
20*zeta^2*q^1744 + (6*zeta^2 + 18*zeta - 18)*q^1745 + (-12*zeta^2 + 48*zeta + 
120)*q^1746 + (-9*zeta^2 - 15*zeta - 12)*q^1747 + (-12*zeta^2 - 21*zeta + 
21)*q^1749 + (87*zeta^2 + 42*zeta - 42)*q^1751 - 24*zeta*q^1752 + (3*zeta^2 - 
78*zeta - 162)*q^1753 + (30*zeta^2 - 6*zeta - 72)*q^1754 + (-9*zeta^2 - 13*zeta 
+ 27)*q^1755 + (18*zeta^2 + 5*zeta - 5)*q^1758 + (74*zeta^2 + 74*zeta - 
222)*q^1759 + (6*zeta^2 + 18*zeta + 24)*q^1761 + (-60*zeta^2 - 96*zeta + 
180)*q^1762 + (-16*zeta^2 - 6*zeta + 6)*q^1763 + (-15*zeta^2 - 15*zeta + 
15)*q^1765 + (28*zeta^2 + 68*zeta - 84)*q^1766 + (18*zeta^2 - 18*zeta - 
72)*q^1767 + (-6*zeta^2 + 38*zeta + 88)*q^1768 + (-22*zeta^2 - 28*zeta + 
66)*q^1769 + (-6*zeta^2 - 8*zeta + 8)*q^1770 + (28*zeta^2 + 52*zeta - 84)*q^1773
+ (-14*zeta^2 - 10*zeta + 8)*q^1774 + (-2*zeta^2 - 4*zeta - 4)*q^1775 + 
(-12*zeta^2 + 8*zeta + 36)*q^1776 + (2*zeta^2 - 8*zeta + 8)*q^1777 + (-15*zeta^2
- 12*zeta + 12)*q^1779 + (-12*zeta^2 + 48*zeta + 120)*q^1781 + (27*zeta^2 + 
13*zeta - 28)*q^1782 + (74*zeta^2 + 73*zeta - 222)*q^1783 + (-72*zeta^2 - 6*zeta
+ 6)*q^1784 + (72*zeta^2 + 18*zeta - 18)*q^1786 + (58*zeta^2 + 68*zeta - 
174)*q^1787 + (-12*zeta^2 - 24*zeta - 24)*q^1789 + (-18*zeta^2 - 24*zeta + 
54)*q^1790 + (28*zeta^2 + 12*zeta - 12)*q^1791 + (-3*zeta + 3)*q^1793 + 
(-20*zeta^2 - 18*zeta + 60)*q^1794 + (8*zeta^2 - 8*zeta - 32)*q^1795 + 
(-2*zeta^2 - 15*zeta + 6)*q^1797 + (150*zeta^2 + 42*zeta - 42)*q^1798 - 
8*zeta^2*q^1800 + (65*zeta^2 + 89*zeta - 195)*q^1801 + (18*zeta^2 - 12*zeta - 
60)*q^1802 + (18*zeta^2 + 12*zeta - 12)*q^1803 + 17*zeta^2*q^1805 + (36*zeta^2 +
3*zeta - 3)*q^1807 + (-44*zeta^2 - 64*zeta + 132)*q^1808 + (7*zeta^2 - 17*zeta -
48)*q^1809 + (-6*zeta^2 + 24*zeta + 60)*q^1810 + (16*zeta^2 + 46*zeta - 
48)*q^1811 + (66*zeta^2 + 6*zeta - 6)*q^1814 + (-12*zeta^2 + 6*zeta + 36)*q^1815
+ (-6*zeta^2 + 42*zeta + 96)*q^1816 + (-29*zeta^2 - zeta + 56)*q^1817 - 
24*zeta*q^1818 + (6*zeta^2 + 24*zeta - 24)*q^1819 + (15*zeta^2 + 22*zeta - 
22)*q^1821 + (8*zeta^2 + 8*zeta - 24)*q^1822 + (3*zeta^2 + 48*zeta + 90)*q^1823 
+ (6*zeta^2 + 12*zeta - 18)*q^1825 + (18*zeta^2 + 30*zeta - 54)*q^1829 + 
(4*zeta^2 - 8)*q^1830 + (33*zeta + 66)*q^1831 + (-56*zeta^2 - 44*zeta + 
168)*q^1832 + (15*zeta^2 + 3*zeta - 3)*q^1833 + (-35*zeta^2 - 19*zeta + 
19)*q^1835 + (-19*zeta^2 - 8*zeta + 22)*q^1837 + (-13*zeta^2 - 23*zeta - 
20)*q^1838 + (-24*zeta^2 + 10*zeta + 72)*q^1839 + (-32*zeta^2 - 4*zeta + 
4)*q^1840 + (14*zeta^2 - 7*zeta + 7)*q^1842 + (-72*zeta^2 - 90*zeta + 
216)*q^1843 + (-4*zeta^2 + 16*zeta + 40)*q^1845 + (-14*zeta^2 - 28*zeta + 
42)*q^1846 + (100*zeta^2 + 48*zeta - 48)*q^1847 - 39*zeta^2*q^1849 + (4*zeta^2 +
2*zeta - 12)*q^1850 + (7*zeta^2 + zeta - 12)*q^1851 + (-10*zeta^2 - 25*zeta + 
30)*q^1853 + (84*zeta^2 + 12*zeta - 12)*q^1854 + (-88*zeta^2 - 32*zeta + 
32)*q^1856 + (-5*zeta^2 + 24*zeta + 15)*q^1857 + (42*zeta^2 - 24*zeta - 
132)*q^1858 + (22*zeta^2 + 8*zeta - 28)*q^1859 + (-62*zeta^2 - 25*zeta + 
25)*q^1861 + (76*zeta^2 + 35*zeta - 35)*q^1863 + (16*zeta^2 + 40*zeta - 
48)*q^1864 + (6*zeta^2 - 14*zeta - 40)*q^1865 + (-10*zeta^2 - 10*zeta)*q^1866 + 
(18*zeta^2 + 45*zeta - 54)*q^1867 + (-8*zeta^2 - 15*zeta + 15)*q^1870 + 
(43*zeta^2 + 65*zeta - 129)*q^1871 + (-24*zeta^2 + 40*zeta + 128)*q^1872 + 
(-18*zeta^2 + 28*zeta + 92)*q^1873 + (-55*zeta^2 - 88*zeta + 165)*q^1874 + 
(-zeta^2 - zeta + 1)*q^1875 + (-74*zeta^2 - 4*zeta + 4)*q^1877 + (-3*zeta^2 + 
30*zeta + 9)*q^1878 + (-21*zeta^2 + 39*zeta + 120)*q^1879 + (6*zeta^2 - 18*zeta 
- 48)*q^1880 + (12*zeta^2 - 24*zeta - 36)*q^1881 + (-48*zeta^2 - 12*zeta + 
12)*q^1882 + (32*zeta^2 + 47*zeta - 96)*q^1885 + (-18*zeta^2 + 58*zeta + 
152)*q^1886 + (29*zeta^2 + 9*zeta - 40)*q^1887 + (52*zeta^2 + 9*zeta - 9)*q^1889
+ (-36*zeta^2 - 12*zeta + 12)*q^1891 + (zeta^2 + 18*zeta + 34)*q^1893 + 
(-48*zeta^2 + 54*zeta + 204)*q^1894 + (-2*zeta^2 - 2*zeta + 6)*q^1895 + 
(-24*zeta^2 - 38*zeta + 38)*q^1896 + (60*zeta^2 + 12*zeta - 12)*q^1898 + 
(18*zeta^2 + 36*zeta - 54)*q^1899 + (34*zeta^2 - 19*zeta - 106)*q^1901 + 
(6*zeta^2 - 8*zeta - 18)*q^1902 + (3*zeta^2 + 3*zeta - 3)*q^1903 + (-4*zeta^2 - 
zeta + 1)*q^1905 + (70*zeta^2 + 82*zeta - 210)*q^1906 + (-45*zeta^2 + 30*zeta + 
150)*q^1907 + (-18*zeta^2 + 3*zeta - 3)*q^1910 + (-60*zeta^2 - 18*zeta + 
18)*q^1912 + (-49*zeta^2 - 50*zeta + 147)*q^1913 + (-19*zeta^2 - 7*zeta + 
24)*q^1914 + (-6*zeta^2 + 2*zeta + 16)*q^1915 + (-10*zeta^2 - 4*zeta + 4)*q^1917
+ (36*zeta^2 + 36*zeta - 36)*q^1919 + (-8*zeta^2 + 24)*q^1920 + (13*zeta^2 - 
37*zeta - 100)*q^1921 + (23*zeta^2 - 95*zeta - 236)*q^1922 + (-8*zeta^2 - 
12*zeta + 24)*q^1923 + (-24*zeta^2 - 24*zeta + 24)*q^1926 + (-39*zeta^2 - 
54*zeta + 117)*q^1927 + (-24*zeta^2 - 12*zeta + 24)*q^1928 + (24*zeta^2 + 9*zeta
- 30)*q^1929 + (-16*zeta^2 - 32*zeta + 48)*q^1930 + (-48*zeta^2 - 39*zeta + 
39)*q^1931 + (70*zeta^2 + 36*zeta - 36)*q^1933 + (-78*zeta^2 - 96*zeta + 
234)*q^1934 + (4*zeta^2 - 4*zeta - 16)*q^1935 + (-48*zeta^2 + 24*zeta + 
144)*q^1936 + (38*zeta^2 + 44*zeta - 114)*q^1937 + (36*zeta^2 + 42*zeta - 
42)*q^1938 + (6*zeta^2 - 20*zeta - 18)*q^1941 + (-30*zeta^2 + 12*zeta + 
84)*q^1942 + (-25*zeta^2 + 61*zeta + 172)*q^1943 + (16*zeta^2 + 48*zeta - 
48)*q^1944 + (-zeta^2 + 10*zeta - 10)*q^1945 + (18*zeta^2 + 31*zeta - 31)*q^1947
+ (-9*zeta^2 - 37*zeta - 56)*q^1949 + (zeta^2 + 3*zeta + 4)*q^1950 + (29*zeta^2 
+ 22*zeta - 87)*q^1951 + (-64*zeta^2 - 6*zeta + 6)*q^1954 + (-17*zeta^2 - 
34*zeta + 51)*q^1955 + (-18*zeta^2 + 108*zeta + 252)*q^1957 + (-8*zeta^2 + 
16*zeta + 24)*q^1958 + (-18*zeta^2 - 6*zeta + 6)*q^1959 + (6*zeta^2 - 6*zeta + 
6)*q^1961 + (-20*zeta^2 - 20*zeta + 60)*q^1962 + (17*zeta^2 - 26*zeta - 
86)*q^1963 + (3*zeta^2 + 8*zeta - 9)*q^1965 + (12*zeta^2 + 21*zeta - 21)*q^1966 
+ (-8*zeta^2 + 4*zeta - 4)*q^1968 - 6*zeta*q^1969 + (12*zeta^2 - 14*zeta - 
52)*q^1970 + (6*zeta^2 - 18*zeta - 48)*q^1971 + (59*zeta^2 + 9*zeta - 9)*q^1973 
+ (5*zeta^2 + 6*zeta - 6)*q^1975 + (-60*zeta^2 - 96*zeta + 180)*q^1976 + 
(-9*zeta^2 - 12*zeta - 6)*q^1977 + (12*zeta^2 - 16*zeta - 56)*q^1978 + 
(-34*zeta^2 - 76*zeta + 102)*q^1979 + (-20*zeta^2 + 14*zeta - 14)*q^1982 + 
(18*zeta^2 - 12*zeta - 54)*q^1983 + (-24*zeta^2 + 72*zeta + 192)*q^1984 + 
(zeta^2 + 2*zeta + 2)*q^1985 + (2*zeta^2 + 36*zeta - 6)*q^1986 + (-43*zeta^2 - 
17*zeta + 17)*q^1987 + (-44*zeta^2 - 6*zeta + 6)*q^1989 + (-8*zeta^2 - 14*zeta +
24)*q^1990 + (-15*zeta^2 - 3*zeta + 24)*q^1991 + (6*zeta^2 + 9*zeta - 18)*q^1993
+ (36*zeta^2 + 9*zeta - 9)*q^1994 + (-3*zeta^2 - 24*zeta + 9)*q^1997 + (4*zeta^2
- 6*zeta - 20)*q^1998 + (-6*zeta^2 + zeta + 14)*q^1999 + (4*zeta^2 + 4*zeta - 
12)*q^2000 + (26*zeta^2 - zeta + 1)*q^2001 + (-32*zeta^2 - 4*zeta + 4)*q^2003 + 
(-2*zeta^2 + 11*zeta + 26)*q^2005 + (-20*zeta^2 + 2*zeta + 44)*q^2006 + 
(-66*zeta^2 - 72*zeta + 198)*q^2007 + (44*zeta^2 - 8*zeta + 8)*q^2008 + 
(-6*zeta^2 - 2*zeta + 2)*q^2010 + (-23*zeta^2 - 35*zeta + 69)*q^2011 + 
(-14*zeta^2 - 6*zeta + 16)*q^2013 + (36*zeta^2 + 36*zeta - 108)*q^2014 + 
(54*zeta^2 + 15*zeta - 15)*q^2015 + (20*zeta^2 - 9*zeta + 9)*q^2017 + (31*zeta^2
+ 14*zeta - 93)*q^2018 + (18*zeta^2 + 6*zeta - 24)*q^2019 + (12*zeta^2 + 18*zeta
- 36)*q^2021 + (6*zeta^2 - 12*zeta + 12)*q^2022 + (-20*zeta^2 - 28*zeta + 
28)*q^2024 + (-5*zeta^2 - 11*zeta + 15)*q^2025 + (-20*zeta^2 + 56*zeta + 
152)*q^2026 + (38*zeta^2 - 56*zeta - 188)*q^2027 + (-80*zeta^2 - 16*zeta + 
16)*q^2029 + (-23*zeta^2 - 8*zeta + 8)*q^2031 + (28*zeta^2 + 40*zeta - 
84)*q^2032 + (36*zeta^2 - 72)*q^2033 + (20*zeta^2 - 44*zeta - 128)*q^2034 + 
(-5*zeta^2 + 8*zeta + 15)*q^2035 + (-100*zeta^2 - 30*zeta + 30)*q^2038 + 
(46*zeta^2 + 74*zeta - 138)*q^2039 + (14*zeta^2 + 2*zeta - 24)*q^2040 + 
(12*zeta^2 - 62*zeta - 148)*q^2041 + (6*zeta^2 - 24*zeta - 18)*q^2042 + 
(-48*zeta^2 - 6*zeta + 6)*q^2043 + (6*zeta^2 + 6*zeta - 6)*q^2045 + (6*zeta^2 - 
6*zeta - 18)*q^2046 + (8*zeta^2 - 56*zeta - 128)*q^2047 + (14*zeta^2 + 12*zeta -
42)*q^2049 + (10*zeta^2 + 2*zeta - 2)*q^2050 + (3*zeta^2 - 6*zeta - 9)*q^2053 + 
(-9*zeta^2 - 13*zeta - 8)*q^2054 + (12*zeta^2 - 24)*q^2055 + (12*zeta^2 + 
48*zeta - 36)*q^2056 + (-18*zeta^2 + 30*zeta - 30)*q^2057 + (38*zeta^2 + 18*zeta
- 18)*q^2059 + (-12*zeta^2 - 56*zeta - 88)*q^2061 + (-21*zeta^2 + 37*zeta + 
116)*q^2062 + (-42*zeta^2 - 72*zeta + 126)*q^2063 + (8*zeta^2 + 8*zeta - 
8)*q^2064 + (102*zeta^2 + 30*zeta - 30)*q^2066 + (9*zeta^2 + 6*zeta - 27)*q^2067
+ (6*zeta^2 + 51*zeta + 90)*q^2069 + (-28*zeta^2 - 32*zeta + 84)*q^2070 + 
30*zeta^2*q^2071 + (-12*zeta^2 - 10*zeta + 10)*q^2073 + (-8*zeta^2 - 20*zeta + 
24)*q^2074 + (72*zeta^2 + 102*zeta - 216)*q^2077 + (-60*zeta^2 - 6*zeta + 
6)*q^2078 + (8*zeta^2 + 16*zeta - 24)*q^2081 + (-4*zeta^2 + 6*zeta + 20)*q^2082 
+ (18*zeta^2 - 32*zeta - 100)*q^2083 + (-12*zeta^2 - 15*zeta + 15)*q^2085 + 
(86*zeta^2 + 28*zeta - 28)*q^2087 + (-56*zeta^2 - 88*zeta + 168)*q^2088 + 
(8*zeta^2 - 56*zeta - 128)*q^2089 + (-18*zeta^2 - 6*zeta + 24)*q^2090 + 
(-3*zeta^2 - 16*zeta + 9)*q^2091 + (-24*zeta^2 - 30*zeta + 30)*q^2094 + 
(-15*zeta^2 - 24*zeta + 45)*q^2095 + (12*zeta^2 - 44*zeta - 112)*q^2096 + 
(-24*zeta^2 + 16*zeta + 80)*q^2097 + (16*zeta^2 + 20*zeta - 48)*q^2098 - 
70*zeta^2*q^2099 + O(q^2100), 1/6*(-2*zeta^2 + zeta + 6)*q + 1/3*(-zeta^2 - 
3*zeta + 3)*q^3 + 1/6*(zeta^2 + 3*zeta - 3)*q^4 + 1/6*(3*zeta^2 + 2*zeta - 
2)*q^5 + 1/6*(2*zeta^2 - zeta - 6)*q^6 + 1/3*(-4*zeta^2 - 5*zeta + 5)*q^7 + 
1/3*(-2*zeta^2 + zeta + 6)*q^8 + 1/3*(3*zeta^2 + 2*zeta - 2)*q^9 + 
1/3*(-2*zeta^2 - 6*zeta + 6)*q^11 + 1/3*(-6*zeta^2 - 4*zeta + 4)*q^12 + 
1/6*(-3*zeta^2 - 9*zeta + 2)*q^14 + 1/3*(-2*zeta^2 + zeta + 6)*q^15 + 
1/2*(3*zeta^2 + 2*zeta - 2)*q^16 + 1/3*(zeta^2 + 3*zeta - 3)*q^18 + 
1/3*(-3*zeta^2 - 2*zeta + 2)*q^19 + 1/6*(2*zeta^2 - zeta - 6)*q^20 + 
1/6*(26*zeta^2 + zeta - 43)*q^21 + 1/3*(2*zeta^2 - zeta - 6)*q^22 + 
1/3*(-3*zeta^2 - 2*zeta + 2)*q^23 + 1/2*(-zeta^2 - 3*zeta + 3)*q^24 + 
1/6*(-zeta^2 - 3*zeta + 3)*q^25 + 1/3*(-3*zeta^2 - 2*zeta + 2)*q^26 + 
1/3*(-11*zeta^2 + 2*zeta + 19)*q^28 + 1/6*(2*zeta^2 - zeta - 6)*q^29 + 
1/6*(-3*zeta^2 - 2*zeta + 2)*q^30 + (zeta^2 + 3*zeta - 3)*q^31 + 1/3*(2*zeta^2 +
6*zeta - 6)*q^32 + 1/3*(15*zeta^2 + 10*zeta - 10)*q^33 + 1/3*(-2*zeta^2 + zeta +
6)*q^34 + 1/3*(-zeta^2 + 4*zeta + 3)*q^35 + (2*zeta^2 - zeta - 6)*q^36 + 
1/3*(-zeta^2 - 3*zeta + 3)*q^38 + 1/3*(-zeta^2 - 3*zeta + 3)*q^39 + 
1/3*(3*zeta^2 + 2*zeta - 2)*q^40 + 1/2*(2*zeta^2 - zeta - 6)*q^41 + 
1/3*(4*zeta^2 + 5*zeta - 5)*q^42 + (-2*zeta^2 + zeta + 6)*q^43 + 1/3*(-12*zeta^2
- 8*zeta + 8)*q^44 + 1/3*(-zeta^2 - 3*zeta + 3)*q^45 + 1/6*(-zeta^2 - 3*zeta + 
3)*q^46 + 1/3*(3*zeta^2 + 2*zeta - 2)*q^47 + (-2*zeta^2 + zeta + 6)*q^48 + 
1/6*(8*zeta^2 + 31*zeta - 3)*q^49 + 1/3*(-3*zeta^2 - 2*zeta + 2)*q^51 + 
1/3*(2*zeta^2 + 6*zeta - 6)*q^52 + (zeta^2 + 3*zeta - 3)*q^53 + 1/6*(3*zeta^2 + 
2*zeta - 2)*q^54 + 1/3*(-4*zeta^2 + 2*zeta + 12)*q^55 + 1/6*(-7*zeta^2 - 14*zeta
+ 7)*q^56 + (2*zeta^2 - zeta - 6)*q^57 + 1/3*(5*zeta^2 + 15*zeta - 15)*q^59 + 
1/3*(2*zeta^2 + 6*zeta - 6)*q^60 + 1/2*(-9*zeta^2 - 6*zeta + 6)*q^61 + 
1/3*(zeta^2 + 17*zeta + 4)*q^63 + 1/6*(10*zeta^2 - 5*zeta - 30)*q^64 + 
1/3*(2*zeta^2 + 6*zeta - 6)*q^66 + (-2*zeta^2 - 6*zeta + 6)*q^67 + 1/3*(6*zeta^2
+ 4*zeta - 4)*q^68 + 1/6*(10*zeta^2 - 5*zeta - 30)*q^69 + 1/6*(-6*zeta^2 + 
3*zeta + 11)*q^70 + 1/3*(10*zeta^2 - 5*zeta - 30)*q^71 + 1/3*(3*zeta^2 + 2*zeta 
- 2)*q^72 + 1/3*(-2*zeta^2 - 6*zeta + 6)*q^73 + 1/3*(3*zeta^2 + 2*zeta - 2)*q^75
+ (-2*zeta^2 + zeta + 6)*q^76 + 1/3*(26*zeta^2 + zeta - 43)*q^77 + 
1/3*(15*zeta^2 + 10*zeta - 10)*q^79 + 1/2*(-zeta^2 - 3*zeta + 3)*q^80 + 
1/6*(7*zeta^2 + 21*zeta - 21)*q^81 + 1/3*(-3*zeta^2 - 2*zeta + 2)*q^82 + 
1/3*(8*zeta^2 - 4*zeta - 24)*q^83 + 1/6*(5*zeta^2 - 41*zeta - 22)*q^84 + 
1/6*(-3*zeta^2 - 2*zeta + 2)*q^86 + 1/3*(zeta^2 + 3*zeta - 3)*q^87 + (-zeta^2 - 
3*zeta + 3)*q^88 + 1/6*(3*zeta^2 + 2*zeta - 2)*q^89 + 1/3*(2*zeta^2 - zeta - 
6)*q^90 + 1/3*(-9*zeta^2 - 6*zeta + 13)*q^91 + 1/3*(-4*zeta^2 + 2*zeta + 
12)*q^92 + (-6*zeta^2 - 4*zeta + 4)*q^93 + 1/3*(zeta^2 + 3*zeta - 3)*q^95 + 
1/2*(-9*zeta^2 - 6*zeta + 6)*q^96 + 1/3*(-2*zeta^2 + zeta + 6)*q^97 + 
1/3*(-9*zeta^2 - 6*zeta + 13)*q^98 + (-4*zeta^2 + 2*zeta + 12)*q^99 + 
1/6*(-3*zeta^2 - 2*zeta + 2)*q^100 + 1/2*(-3*zeta^2 - 9*zeta + 9)*q^101 + 
1/3*(2*zeta^2 - zeta - 6)*q^104 + 1/6*(-25*zeta^2 - 26*zeta + 33)*q^105 + 
1/3*(-2*zeta^2 + zeta + 6)*q^106 + 1/3*(6*zeta^2 + 4*zeta - 4)*q^107 + 
1/3*(-zeta^2 - 3*zeta + 3)*q^108 + 1/6*(-zeta^2 - 3*zeta + 3)*q^109 + 
1/3*(-3*zeta^2 - 2*zeta + 2)*q^110 + (-zeta^2 + 4*zeta + 3)*q^112 + 
1/3*(-10*zeta^2 + 5*zeta + 30)*q^113 + 1/3*(3*zeta^2 + 2*zeta - 2)*q^114 + 
1/3*(zeta^2 + 3*zeta - 3)*q^115 + 1/6*(-zeta^2 - 3*zeta + 3)*q^116 + 
1/3*(6*zeta^2 + 4*zeta - 4)*q^117 + (-2*zeta^2 + zeta + 6)*q^118 + 
1/3*(-6*zeta^2 + 3*zeta + 11)*q^119 + 1/2*(-2*zeta^2 + zeta + 6)*q^120 + 
1/2*(9*zeta^2 + 6*zeta - 6)*q^121 + (-zeta^2 - 3*zeta + 3)*q^122 + 1/3*(2*zeta^2
+ 6*zeta - 6)*q^123 + (3*zeta^2 + 2*zeta - 2)*q^124 + 1/6*(-2*zeta^2 + zeta + 
6)*q^125 + 1/3*(-4*zeta^2 - 5*zeta + 5)*q^126 + 1/3*(-10*zeta^2 + 5*zeta + 
30)*q^127 + (3*zeta^2 + 2*zeta - 2)*q^128 + 1/6*(-13*zeta^2 - 39*zeta + 
39)*q^129 + 1/3*(zeta^2 + 3*zeta - 3)*q^130 + (6*zeta^2 - 3*zeta - 18)*q^132 + 
1/3*(-zeta^2 - 17*zeta - 4)*q^133 + 1/6*(2*zeta^2 - zeta - 6)*q^134 + 
1/3*(-zeta^2 - 3*zeta + 3)*q^136 + 1/3*(3*zeta^2 + 2*zeta - 2)*q^138 + 
1/3*(-8*zeta^2 + 4*zeta + 24)*q^139 + 1/3*(13*zeta^2 + 11*zeta - 18)*q^140 + 
1/3*(-4*zeta^2 + 2*zeta + 12)*q^141 + (3*zeta^2 + 2*zeta - 2)*q^142 + 
1/3*(-2*zeta^2 - 6*zeta + 6)*q^143 + (-zeta^2 - 3*zeta + 3)*q^144 + 
1/6*(-3*zeta^2 - 2*zeta + 2)*q^145 + 1/3*(2*zeta^2 - zeta - 6)*q^146 + 
1/3*(-34*zeta^2 - 32*zeta + 46)*q^147 + 1/6*(-21*zeta^2 - 14*zeta + 14)*q^149 + 
1/6*(zeta^2 + 3*zeta - 3)*q^150 + 1/3*(-zeta^2 - 3*zeta + 3)*q^151 + 
1/3*(-3*zeta^2 - 2*zeta + 2)*q^152 + 1/3*(4*zeta^2 - 2*zeta - 12)*q^153 + 
1/3*(8*zeta^2 + 10*zeta - 10)*q^154 + (2*zeta^2 - zeta - 6)*q^155 + 
1/3*(-3*zeta^2 - 2*zeta + 2)*q^156 + 1/3*(zeta^2 + 3*zeta - 3)*q^157 + 
1/3*(-zeta^2 - 3*zeta + 3)*q^158 + 1/3*(-21*zeta^2 - 14*zeta + 14)*q^159 + 
1/3*(4*zeta^2 - 2*zeta - 12)*q^160 + 1/6*(zeta^2 - 25*zeta - 10)*q^161 + 
(-2*zeta^2 + zeta + 6)*q^162 + 1/3*(33*zeta^2 + 22*zeta - 22)*q^163 + 
1/6*(zeta^2 + 3*zeta - 3)*q^164 + 1/3*(-5*zeta^2 - 15*zeta + 15)*q^165 + 
1/2*(9*zeta^2 + 6*zeta - 6)*q^166 + 1/3*(-20*zeta^2 + 10*zeta + 60)*q^167 + 
1/3*(21*zeta^2 - 35)*q^168 + 1/2*(6*zeta^2 - 3*zeta - 18)*q^169 + 1/3*(3*zeta^2 
+ 2*zeta - 2)*q^170 + 1/3*(4*zeta^2 + 12*zeta - 12)*q^171 + 1/3*(4*zeta^2 + 
12*zeta - 12)*q^172 + 1/3*(-24*zeta^2 - 16*zeta + 16)*q^173 + 1/6*(-2*zeta^2 + 
zeta + 6)*q^174 + 1/3*(5*zeta^2 + zeta - 8)*q^175 + (-4*zeta^2 + 2*zeta + 
12)*q^176 + 1/3*(-39*zeta^2 - 26*zeta + 26)*q^177 + 1/3*(2*zeta^2 + 6*zeta - 
6)*q^178 + 1/3*(5*zeta^2 + 15*zeta - 15)*q^179 + (-3*zeta^2 - 2*zeta + 2)*q^180 
+ 1/6*(14*zeta^2 - 7*zeta - 42)*q^181 + 1/3*(8*zeta^2 + 10*zeta - 10)*q^182 + 
(8*zeta^2 - 4*zeta - 24)*q^183 + 1/2*(-3*zeta^2 - 2*zeta + 2)*q^184 + (-zeta^2 -
3*zeta + 3)*q^186 + 1/3*(-6*zeta^2 - 4*zeta + 4)*q^187 + 1/3*(2*zeta^2 - zeta - 
6)*q^188 + 1/6*(9*zeta^2 + 6*zeta - 13)*q^189 + 1/3*(-2*zeta^2 + zeta + 6)*q^190
+ 1/3*(-12*zeta^2 - 8*zeta + 8)*q^191 + 1/3*(4*zeta^2 + 12*zeta - 12)*q^192 + 
1/3*(zeta^2 + 3*zeta - 3)*q^193 + 1/3*(6*zeta^2 + 4*zeta - 4)*q^194 + 
1/3*(-2*zeta^2 + zeta + 6)*q^195 + 1/6*(43*zeta^2 + 59*zeta - 52)*q^196 + 
1/3*(22*zeta^2 - 11*zeta - 66)*q^197 + 1/3*(-6*zeta^2 - 4*zeta + 4)*q^198 + 
1/3*(-zeta^2 - 3*zeta + 3)*q^200 + 1/6*(75*zeta^2 + 50*zeta - 50)*q^201 + 
1/3*(8*zeta^2 - 4*zeta - 24)*q^202 + 1/3*(4*zeta^2 + 5*zeta - 5)*q^203 + 
1/3*(-2*zeta^2 + zeta + 6)*q^204 + 1/2*(-3*zeta^2 - 2*zeta + 2)*q^205 + 
1/6*(zeta^2 + 3*zeta - 3)*q^206 + (zeta^2 + 3*zeta - 3)*q^207 + (4*zeta^2 - 
2*zeta - 12)*q^209 + 1/3*(zeta^2 - 4*zeta - 3)*q^210 + (-2*zeta^2 + zeta + 
6)*q^211 + 1/3*(15*zeta^2 + 10*zeta - 10)*q^212 + 1/3*(13*zeta^2 + 39*zeta - 
39)*q^213 + 1/2*(-zeta^2 - 3*zeta + 3)*q^214 + (3*zeta^2 + 2*zeta - 2)*q^215 + 
1/6*(-2*zeta^2 + zeta + 6)*q^216 + (-10*zeta^2 - 2*zeta + 16)*q^217 + (2*zeta^2 
- zeta - 6)*q^218 + 1/3*(15*zeta^2 + 10*zeta - 10)*q^219 + 1/3*(4*zeta^2 + 
12*zeta - 12)*q^220 + 1/3*(2*zeta^2 + 6*zeta - 6)*q^221 + 1/3*(-10*zeta^2 + 
5*zeta + 30)*q^223 + 1/6*(-46*zeta^2 - 5*zeta + 75)*q^224 + 1/3*(-2*zeta^2 + 
zeta + 6)*q^225 + (-3*zeta^2 - 2*zeta + 2)*q^226 + 1/3*(-11*zeta^2 - 33*zeta + 
33)*q^227 + 1/3*(-5*zeta^2 - 15*zeta + 15)*q^228 + 1/3*(-3*zeta^2 - 2*zeta + 
2)*q^229 + 1/6*(-2*zeta^2 + zeta + 6)*q^230 + 1/3*(-4*zeta^2 + 58*zeta + 
26)*q^231 + 1/3*(2*zeta^2 - zeta - 6)*q^232 + (-6*zeta^2 - 4*zeta + 4)*q^233 + 
1/3*(-2*zeta^2 - 6*zeta + 6)*q^234 + 1/3*(-zeta^2 - 3*zeta + 3)*q^235 + 
1/3*(33*zeta^2 + 22*zeta - 22)*q^236 + (-6*zeta^2 + 3*zeta + 18)*q^237 + 
1/3*(10*zeta^2 + 2*zeta - 16)*q^238 + 1/3*(2*zeta^2 - zeta - 6)*q^239 + 
(3*zeta^2 + 2*zeta - 2)*q^240 + (-3*zeta^2 - 9*zeta + 9)*q^241 + 1/3*(4*zeta^2 +
12*zeta - 12)*q^242 + 1/3*(-30*zeta^2 - 20*zeta + 20)*q^243 + 1/2*(-14*zeta^2 + 
7*zeta + 42)*q^244 + 1/6*(23*zeta^2 - 8*zeta - 41)*q^245 + 1/2*(-2*zeta^2 + zeta
+ 6)*q^246 + 1/3*(-6*zeta^2 - 4*zeta + 4)*q^247 + (2*zeta^2 + 6*zeta - 6)*q^248 
+ 1/6*(25*zeta^2 + 75*zeta - 75)*q^249 + 1/3*(-10*zeta^2 + 5*zeta + 30)*q^251 + 
1/3*(15*zeta^2 + 24*zeta - 17)*q^252 + 1/3*(10*zeta^2 - 5*zeta - 30)*q^253 + 
1/3*(-12*zeta^2 - 8*zeta + 8)*q^254 + 1/3*(zeta^2 + 3*zeta - 3)*q^255 + 
1/6*(zeta^2 + 3*zeta - 3)*q^256 + 1/3*(24*zeta^2 + 16*zeta - 16)*q^257 + 
(2*zeta^2 - zeta - 6)*q^258 + 1/3*(4*zeta^2 - 2*zeta - 12)*q^260 + 
1/3*(-3*zeta^2 - 2*zeta + 2)*q^261 + 1/3*(4*zeta^2 + 12*zeta - 12)*q^262 + 
(-2*zeta^2 - 6*zeta + 6)*q^263 + 1/3*(24*zeta^2 + 16*zeta - 16)*q^264 + 
(2*zeta^2 - zeta - 6)*q^265 + 1/3*(4*zeta^2 + 5*zeta - 5)*q^266 + (-2*zeta^2 + 
zeta + 6)*q^267 + 1/3*(-21*zeta^2 - 14*zeta + 14)*q^268 + 1/6*(23*zeta^2 + 
69*zeta - 69)*q^269 + 1/6*(-zeta^2 - 3*zeta + 3)*q^270 + 1/3*(3*zeta^2 + 2*zeta 
- 2)*q^271 + 1/3*(10*zeta^2 + 2*zeta - 16)*q^273 + 1/3*(4*zeta^2 - 2*zeta - 
12)*q^274 + 1/3*(6*zeta^2 + 4*zeta - 4)*q^275 + 1/2*(-3*zeta^2 - 9*zeta + 
9)*q^276 + 1/3*(4*zeta^2 + 12*zeta - 12)*q^277 + 1/3*(-15*zeta^2 - 10*zeta + 
10)*q^278 + (4*zeta^2 - 2*zeta - 12)*q^279 + 1/6*(-7*zeta^2 + 7*zeta + 14)*q^280
+ (-6*zeta^2 + 3*zeta + 18)*q^281 + 1/3*(-3*zeta^2 - 2*zeta + 2)*q^282 + 
1/3*(-7*zeta^2 - 21*zeta + 21)*q^283 + 1/3*(-11*zeta^2 - 33*zeta + 33)*q^284 + 
(-3*zeta^2 - 2*zeta + 2)*q^285 + 1/3*(3*zeta^2 + 9*zeta - 2)*q^287 + 
1/3*(10*zeta^2 - 5*zeta - 30)*q^288 + 1/6*(-39*zeta^2 - 26*zeta + 26)*q^289 + 
1/3*(-12*zeta^2 - 8*zeta + 8)*q^292 + 1/3*(16*zeta^2 - 8*zeta - 48)*q^293 + 
1/6*(-8*zeta^2 - 31*zeta + 3)*q^294 + 1/3*(10*zeta^2 - 5*zeta - 30)*q^295 + 
1/3*(zeta^2 + 3*zeta - 3)*q^297 + 1/3*(-zeta^2 - 3*zeta + 3)*q^298 + 
1/3*(-3*zeta^2 - 2*zeta + 2)*q^299 + 1/3*(4*zeta^2 - 2*zeta - 12)*q^300 + 
1/6*(-57*zeta^2 - 66*zeta + 73)*q^301 + 1/3*(-4*zeta^2 + 2*zeta + 12)*q^302 + 
1/3*(39*zeta^2 + 26*zeta - 26)*q^303 + (zeta^2 + 3*zeta - 3)*q^304 + 
1/2*(3*zeta^2 + 9*zeta - 9)*q^305 + 1/3*(-6*zeta^2 - 4*zeta + 4)*q^306 + 
(4*zeta^2 - 2*zeta - 12)*q^307 + 1/3*(5*zeta^2 - 41*zeta - 22)*q^308 + 
1/6*(-2*zeta^2 + zeta + 6)*q^309 + (3*zeta^2 + 9*zeta - 9)*q^311 + 
1/3*(-2*zeta^2 - 6*zeta + 6)*q^312 + 1/3*(-24*zeta^2 - 16*zeta + 16)*q^313 + 
1/3*(-8*zeta^2 + 4*zeta + 24)*q^314 + 1/3*(16*zeta^2 - zeta - 27)*q^315 + 
(2*zeta^2 - zeta - 6)*q^316 + 1/3*(30*zeta^2 + 20*zeta - 20)*q^317 + (-zeta^2 - 
3*zeta + 3)*q^318 + 1/3*(2*zeta^2 + 6*zeta - 6)*q^319 + 1/6*(-15*zeta^2 - 
10*zeta + 10)*q^320 + 1/6*(-10*zeta^2 + 5*zeta + 30)*q^321 + 1/3*(5*zeta^2 + 
zeta - 8)*q^322 + 1/3*(-4*zeta^2 + 2*zeta + 12)*q^323 + 1/6*(57*zeta^2 + 38*zeta
- 38)*q^324 + 1/3*(2*zeta^2 + 6*zeta - 6)*q^326 + 1/3*(12*zeta^2 + 8*zeta - 
8)*q^327 + 1/3*(8*zeta^2 - 4*zeta - 24)*q^328 + 1/3*(-2*zeta^2 + 8*zeta + 
6)*q^329 + 1/3*(4*zeta^2 - 2*zeta - 12)*q^330 + (-3*zeta^2 - 2*zeta + 2)*q^331 +
1/3*(-13*zeta^2 - 39*zeta + 39)*q^332 + 1/6*(3*zeta^2 + 2*zeta - 2)*q^334 + 
(-4*zeta^2 + 2*zeta + 12)*q^335 + 1/2*(-25*zeta^2 - 26*zeta + 33)*q^336 + 
1/3*(-14*zeta^2 + 7*zeta + 42)*q^337 + 1/3*(12*zeta^2 + 8*zeta - 8)*q^338 + 
1/3*(-13*zeta^2 - 39*zeta + 39)*q^339 + 1/3*(-2*zeta^2 - 6*zeta + 6)*q^340 + 
(-12*zeta^2 - 8*zeta + 8)*q^341 + 1/3*(38*zeta^2 - 5*zeta - 65)*q^343 + 
1/6*(-22*zeta^2 + 11*zeta + 66)*q^344 + 1/6*(-15*zeta^2 - 10*zeta + 10)*q^345 + 
1/3*(-4*zeta^2 - 12*zeta + 12)*q^346 + 1/3*(-10*zeta^2 - 30*zeta + 30)*q^347 + 
1/3*(6*zeta^2 + 4*zeta - 4)*q^348 + 1/6*(50*zeta^2 - 25*zeta - 150)*q^349 + 
1/6*(9*zeta^2 + 6*zeta - 13)*q^350 + 1/3*(2*zeta^2 - zeta - 6)*q^351 + 
(-9*zeta^2 - 6*zeta + 6)*q^352 + 1/3*(11*zeta^2 + 33*zeta - 33)*q^353 + 
1/3*(-5*zeta^2 - 15*zeta + 15)*q^354 + 1/3*(-15*zeta^2 - 10*zeta + 10)*q^355 + 
1/2*(6*zeta^2 - 3*zeta - 18)*q^356 + 1/3*(2*zeta^2 - 8*zeta - 6)*q^357 + 
1/3*(-15*zeta^2 - 10*zeta + 10)*q^359 + 1/3*(-zeta^2 - 3*zeta + 3)*q^360 + 
1/6*(11*zeta^2 + 33*zeta - 33)*q^361 + 1/3*(6*zeta^2 + 4*zeta - 4)*q^362 + 
1/3*(-26*zeta^2 + 13*zeta + 78)*q^363 + 1/3*(-2*zeta^2 - 13*zeta - 1)*q^364 + 
1/3*(-4*zeta^2 + 2*zeta + 12)*q^365 + 1/2*(9*zeta^2 + 6*zeta - 6)*q^366 + 
1/3*(5*zeta^2 + 15*zeta - 15)*q^367 + (zeta^2 + 3*zeta - 3)*q^368 + 
1/3*(-3*zeta^2 - 2*zeta + 2)*q^369 + 1/3*(-36*zeta^2 - 3*zeta + 59)*q^371 + 
(-8*zeta^2 + 4*zeta + 24)*q^372 + 1/3*(12*zeta^2 + 8*zeta - 8)*q^373 + 
1/3*(-zeta^2 - 3*zeta + 3)*q^375 + 1/3*(6*zeta^2 + 4*zeta - 4)*q^376 + 
1/3*(-4*zeta^2 - 5*zeta + 5)*q^378 + 1/3*(-22*zeta^2 + 11*zeta + 66)*q^379 + 
(3*zeta^2 + 2*zeta - 2)*q^380 + 1/3*(-14*zeta^2 - 42*zeta + 42)*q^381 + 
1/3*(zeta^2 + 3*zeta - 3)*q^382 + 1/3*(21*zeta^2 + 14*zeta - 14)*q^383 + 
1/6*(-46*zeta^2 + 23*zeta + 138)*q^384 + 1/3*(-25*zeta^2 - 26*zeta + 33)*q^385 +
1/3*(21*zeta^2 + 14*zeta - 14)*q^387 + (-zeta^2 - 3*zeta + 3)*q^388 + 
1/3*(-7*zeta^2 - 21*zeta + 21)*q^389 + 1/3*(-2*zeta^2 + zeta + 6)*q^391 + 
1/3*(14*zeta^2 + 28*zeta - 14)*q^392 + 1/3*(-8*zeta^2 + 4*zeta + 24)*q^393 + 
1/3*(6*zeta^2 + 4*zeta - 4)*q^394 + 1/3*(-5*zeta^2 - 15*zeta + 15)*q^395 + 
1/3*(10*zeta^2 + 30*zeta - 30)*q^396 + 1/3*(33*zeta^2 + 22*zeta - 22)*q^397 + 
1/3*(4*zeta^2 - 2*zeta - 12)*q^398 + 1/3*(33*zeta^2 + 36*zeta - 43)*q^399 + 
1/2*(-2*zeta^2 + zeta + 6)*q^400 + 1/6*(33*zeta^2 + 22*zeta - 22)*q^401 + 
(2*zeta^2 + 6*zeta - 6)*q^402 + 1/6*(-75*zeta^2 - 50*zeta + 50)*q^404 + 
1/6*(14*zeta^2 - 7*zeta - 42)*q^405 + 1/6*(3*zeta^2 + 9*zeta - 2)*q^406 + 
1/3*(-6*zeta^2 - 4*zeta + 4)*q^408 + 1/6*(-19*zeta^2 - 57*zeta + 57)*q^409 + 
1/3*(zeta^2 + 3*zeta - 3)*q^410 + 1/3*(6*zeta^2 + 4*zeta - 4)*q^411 + 
1/3*(2*zeta^2 - zeta - 6)*q^412 + 1/3*(-68*zeta^2 - zeta + 113)*q^413 + 
1/3*(-2*zeta^2 + zeta + 6)*q^414 + 1/3*(-12*zeta^2 - 8*zeta + 8)*q^415 + 
1/3*(zeta^2 + 3*zeta - 3)*q^416 + 1/3*(-13*zeta^2 - 39*zeta + 39)*q^417 + 
1/3*(6*zeta^2 + 4*zeta - 4)*q^418 + 1/3*(20*zeta^2 - 10*zeta - 60)*q^419 + 
1/6*(-46*zeta^2 - 5*zeta + 75)*q^420 + 1/6*(2*zeta^2 - zeta - 6)*q^421 + 
(3*zeta^2 + 2*zeta - 2)*q^422 + 1/3*(-2*zeta^2 - 6*zeta + 6)*q^423 + 
1/3*(5*zeta^2 + 15*zeta - 15)*q^424 + 1/3*(-10*zeta^2 + 5*zeta + 30)*q^426 + 
(-21*zeta - 7)*q^427 + 1/3*(-2*zeta^2 + zeta + 6)*q^428 + 1/3*(12*zeta^2 + 
8*zeta - 8)*q^429 + 1/6*(zeta^2 + 3*zeta - 3)*q^430 + 1/3*(8*zeta^2 + 24*zeta - 
24)*q^431 + 1/3*(26*zeta^2 - 13*zeta - 78)*q^433 + (-9*zeta^2 - 6*zeta + 
13)*q^434 + 1/3*(2*zeta^2 - zeta - 6)*q^435 + 1/6*(-39*zeta^2 - 26*zeta + 
26)*q^436 + (-zeta^2 - 3*zeta + 3)*q^437 + 1/3*(2*zeta^2 + 6*zeta - 6)*q^438 + 
(12*zeta^2 + 8*zeta - 8)*q^439 + (-2*zeta^2 + zeta + 6)*q^440 + 1/3*(41*zeta^2 +
4*zeta - 67)*q^441 + 1/3*(8*zeta^2 - 4*zeta - 24)*q^442 + (-3*zeta^2 - 2*zeta + 
2)*q^443 + 1/6*(-zeta^2 - 3*zeta + 3)*q^445 + 1/3*(-6*zeta^2 - 4*zeta + 4)*q^446
+ 1/3*(16*zeta^2 - 8*zeta - 48)*q^447 + 1/3*(11*zeta^2 + 19*zeta - 12)*q^448 + 
1/6*(2*zeta^2 - zeta - 6)*q^449 + 1/3*(-3*zeta^2 - 2*zeta + 2)*q^450 + 
1/3*(4*zeta^2 + 12*zeta - 12)*q^451 + 1/3*(11*zeta^2 + 33*zeta - 33)*q^452 + 
(4*zeta^2 - 2*zeta - 12)*q^454 + 1/3*(3*zeta^2 + 9*zeta - 2)*q^455 + 
1/3*(10*zeta^2 - 5*zeta - 30)*q^456 + (-12*zeta^2 - 8*zeta + 8)*q^457 + 
1/3*(2*zeta^2 + 6*zeta - 6)*q^458 + 1/3*(-zeta^2 - 3*zeta + 3)*q^459 + 
1/3*(6*zeta^2 + 4*zeta - 4)*q^460 + 1/3*(-22*zeta^2 + 11*zeta + 66)*q^461 + 
1/3*(-26*zeta^2 - zeta + 43)*q^462 + 1/3*(-4*zeta^2 + 2*zeta + 12)*q^463 + 
1/2*(-3*zeta^2 - 2*zeta + 2)*q^464 + (2*zeta^2 + 6*zeta - 6)*q^465 + 1/3*(zeta^2
+ 3*zeta - 3)*q^466 + 1/3*(-30*zeta^2 - 20*zeta + 20)*q^467 + 1/3*(-4*zeta^2 + 
2*zeta + 12)*q^468 + 1/6*(126*zeta^2 + 21*zeta - 203)*q^469 + (-6*zeta^2 - 
4*zeta + 4)*q^471 + 1/3*(7*zeta^2 + 21*zeta - 21)*q^472 + 1/3*(-13*zeta^2 - 
39*zeta + 39)*q^473 + 1/3*(-15*zeta^2 - 10*zeta + 10)*q^474 + 1/3*(2*zeta^2 - 
zeta - 6)*q^475 + 1/3*(-13*zeta^2 - 11*zeta + 18)*q^476 + 1/3*(16*zeta^2 - 
8*zeta - 48)*q^477 + 1/3*(-12*zeta^2 - 8*zeta + 8)*q^478 + 1/3*(13*zeta^2 + 
39*zeta - 39)*q^479 + 1/2*(3*zeta^2 + 9*zeta - 9)*q^480 + 1/3*(-4*zeta^2 + 
2*zeta + 12)*q^482 + 1/3*(29*zeta^2 + 31*zeta - 38)*q^483 + 1/6*(50*zeta^2 - 
25*zeta - 150)*q^484 + 1/3*(3*zeta^2 + 2*zeta - 2)*q^485 + 1/3*(-2*zeta^2 - 
6*zeta + 6)*q^486 + 1/3*(-7*zeta^2 - 21*zeta + 21)*q^487 + (-6*zeta^2 - 4*zeta +
4)*q^488 + (-16*zeta^2 + 8*zeta + 48)*q^489 + 1/3*(3*zeta^2 + 9*zeta - 2)*q^490 
+ 1/3*(10*zeta^2 - 5*zeta - 30)*q^491 + 1/3*(15*zeta^2 + 10*zeta - 10)*q^492 + 
1/3*(2*zeta^2 + 6*zeta - 6)*q^494 + (6*zeta^2 + 4*zeta - 4)*q^495 + (6*zeta^2 - 
3*zeta - 18)*q^496 + 1/3*(67*zeta^2 + 68*zeta - 89)*q^497 + 1/3*(-8*zeta^2 + 
4*zeta + 24)*q^498 + 1/3*(6*zeta^2 + 4*zeta - 4)*q^499 + 1/6*(zeta^2 + 3*zeta - 
3)*q^500 + 1/2*(-13*zeta^2 - 39*zeta + 39)*q^501 + 1/3*(-12*zeta^2 - 8*zeta + 
8)*q^502 + (-10*zeta^2 + 5*zeta + 30)*q^503 + 1/3*(7*zeta^2 + 35*zeta)*q^504 + 
1/2*(-6*zeta^2 + 3*zeta + 18)*q^505 + 1/3*(6*zeta^2 + 4*zeta - 4)*q^506 + 
1/3*(13*zeta^2 + 39*zeta - 39)*q^507 + 1/3*(13*zeta^2 + 39*zeta - 39)*q^508 + 
1/6*(69*zeta^2 + 46*zeta - 46)*q^509 + 1/3*(26*zeta^2 + zeta - 43)*q^511 + 
(8*zeta^2 - 4*zeta - 24)*q^512 + 1/3*(3*zeta^2 + 2*zeta - 2)*q^513 + 
1/3*(2*zeta^2 + 6*zeta - 6)*q^514 + 1/6*(-75*zeta^2 - 50*zeta + 50)*q^516 + 
1/3*(-8*zeta^2 + 4*zeta + 24)*q^517 + 1/3*(40*zeta^2 - 20*zeta - 120)*q^519 + 
1/3*(-3*zeta^2 - 2*zeta + 2)*q^520 + 1/3*(7*zeta^2 + 21*zeta - 21)*q^521 + 
1/3*(-zeta^2 - 3*zeta + 3)*q^522 + 1/3*(39*zeta^2 + 26*zeta - 26)*q^523 + 
1/3*(16*zeta^2 - 8*zeta - 48)*q^524 + 1/6*(-zeta^2 + 25*zeta + 10)*q^525 + 
1/6*(34*zeta^2 - 17*zeta - 102)*q^526 + (-5*zeta^2 - 15*zeta + 15)*q^528 + 
(3*zeta^2 + 9*zeta - 9)*q^529 + 1/3*(3*zeta^2 + 2*zeta - 2)*q^530 + 
1/3*(32*zeta^2 - 16*zeta - 96)*q^531 + 1/3*(-15*zeta^2 - 24*zeta + 17)*q^532 + 
1/3*(-4*zeta^2 + 2*zeta + 12)*q^533 + 1/6*(-3*zeta^2 - 2*zeta + 2)*q^534 + 
1/3*(-2*zeta^2 - 6*zeta + 6)*q^535 + 1/6*(-23*zeta^2 - 69*zeta + 69)*q^536 + 
1/3*(-30*zeta^2 - 20*zeta + 20)*q^537 + (-6*zeta^2 + 3*zeta + 18)*q^538 + 
1/3*(-68*zeta^2 - 64*zeta + 92)*q^539 + 1/3*(-2*zeta^2 + zeta + 6)*q^540 + 
1/6*(51*zeta^2 + 34*zeta - 34)*q^541 + (-zeta^2 - 3*zeta + 3)*q^542 + (3*zeta^2 
+ 9*zeta - 9)*q^543 + 1/3*(3*zeta^2 + 2*zeta - 2)*q^544 + 1/6*(-2*zeta^2 + zeta 
+ 6)*q^545 + 1/3*(9*zeta^2 + 6*zeta - 13)*q^546 + 1/3*(-8*zeta^2 + 4*zeta + 
24)*q^547 + 1/3*(-12*zeta^2 - 8*zeta + 8)*q^548 + (5*zeta^2 + 15*zeta - 
15)*q^549 + 1/3*(zeta^2 + 3*zeta - 3)*q^550 + 1/3*(3*zeta^2 + 2*zeta - 2)*q^551 
+ 1/3*(8*zeta^2 - 4*zeta - 24)*q^552 + 1/3*(-13*zeta^2 + 31*zeta + 32)*q^553 + 
1/3*(-10*zeta^2 + 5*zeta + 30)*q^554 + 1/3*(14*zeta^2 + 42*zeta - 42)*q^556 + 
1/3*(13*zeta^2 + 39*zeta - 39)*q^557 + (6*zeta^2 + 4*zeta - 4)*q^558 + 
1/3*(-2*zeta^2 + zeta + 6)*q^559 + (5*zeta^2 + zeta - 8)*q^560 + 1/3*(8*zeta^2 -
4*zeta - 24)*q^561 + 1/3*(-30*zeta^2 - 20*zeta + 20)*q^562 + 1/3*(-10*zeta^2 - 
30*zeta + 30)*q^563 + 1/3*(4*zeta^2 + 12*zeta - 12)*q^564 + 1/3*(15*zeta^2 + 
10*zeta - 10)*q^565 + 1/3*(-53*zeta^2 + 2*zeta + 89)*q^567 + 1/3*(14*zeta^2 - 
7*zeta - 42)*q^568 + 1/3*(-3*zeta^2 - 2*zeta + 2)*q^569 + 1/3*(-zeta^2 - 3*zeta 
+ 3)*q^570 + 1/3*(-7*zeta^2 - 21*zeta + 21)*q^571 + 1/3*(-6*zeta^2 - 4*zeta + 
4)*q^572 + 1/3*(14*zeta^2 - 7*zeta - 42)*q^573 + 1/6*(25*zeta^2 + 47*zeta - 
26)*q^574 + 1/3*(2*zeta^2 - zeta - 6)*q^575 + (-3*zeta^2 - 2*zeta + 2)*q^576 + 
1/3*(-7*zeta^2 - 21*zeta + 21)*q^577 + 1/3*(-4*zeta^2 - 12*zeta + 12)*q^578 + 
1/3*(-6*zeta^2 - 4*zeta + 4)*q^579 + 1/6*(-2*zeta^2 + zeta + 6)*q^580 + 
1/6*(145*zeta^2 + 134*zeta - 197)*q^581 + 1/3*(2*zeta^2 - zeta - 6)*q^582 + 
1/3*(-42*zeta^2 - 28*zeta + 28)*q^583 + (-zeta^2 - 3*zeta + 3)*q^584 + 
1/3*(-2*zeta^2 - 6*zeta + 6)*q^585 + 1/3*(-14*zeta^2 + 7*zeta + 42)*q^587 + 
1/3*(-55*zeta^2 + 10*zeta + 95)*q^588 + (-4*zeta^2 + 2*zeta + 12)*q^589 + 
(3*zeta^2 + 2*zeta - 2)*q^590 + (8*zeta^2 + 24*zeta - 24)*q^591 + 1/3*(57*zeta^2
+ 38*zeta - 38)*q^593 + 1/3*(9*zeta^2 + 6*zeta - 13)*q^595 + 1/6*(-22*zeta^2 + 
11*zeta + 66)*q^596 + 1/3*(6*zeta^2 + 4*zeta - 4)*q^597 + 1/3*(-8*zeta^2 - 
24*zeta + 24)*q^599 + 1/2*(3*zeta^2 + 2*zeta - 2)*q^600 + 1/3*(-10*zeta^2 + 
5*zeta + 30)*q^601 + 1/3*(-5*zeta^2 - 22*zeta + 1)*q^602 + 1/3*(-26*zeta^2 + 
13*zeta + 78)*q^603 + (3*zeta^2 + 2*zeta - 2)*q^604 + 1/2*(-3*zeta^2 - 9*zeta + 
9)*q^605 + 1/2*(3*zeta^2 + 9*zeta - 9)*q^606 + 1/3*(3*zeta^2 + 2*zeta - 2)*q^607
+ 1/3*(-10*zeta^2 + 5*zeta + 30)*q^608 + 1/6*(-26*zeta^2 - zeta + 43)*q^609 + 
(-2*zeta^2 + zeta + 6)*q^610 + 1/3*(2*zeta^2 + 6*zeta - 6)*q^612 + 1/3*(4*zeta^2
+ 12*zeta - 12)*q^613 + 1/2*(3*zeta^2 + 2*zeta - 2)*q^614 + 1/3*(4*zeta^2 - 
2*zeta - 12)*q^615 + 1/3*(42*zeta^2 - 70)*q^616 + 1/3*(8*zeta^2 - 4*zeta - 
24)*q^617 + 1/3*(-20*zeta^2 - 60*zeta + 60)*q^619 + (-zeta^2 - 3*zeta + 3)*q^620
+ 1/6*(3*zeta^2 + 2*zeta - 2)*q^621 + 1/3*(-2*zeta^2 + zeta + 6)*q^622 + 
1/3*(5*zeta^2 + 22*zeta - 1)*q^623 + (-2*zeta^2 + zeta + 6)*q^624 + 
1/6*(3*zeta^2 + 2*zeta - 2)*q^625 + 1/3*(-2*zeta^2 - 6*zeta + 6)*q^626 + 
1/3*(14*zeta^2 + 42*zeta - 42)*q^627 + (9*zeta^2 + 6*zeta - 6)*q^628 + 
1/3*(-zeta^2 + 4*zeta + 3)*q^630 + 1/3*(-4*zeta^2 + 2*zeta + 12)*q^631 + 
1/3*(33*zeta^2 + 22*zeta - 22)*q^632 + (-zeta^2 - 3*zeta + 3)*q^633 + 
1/3*(7*zeta^2 + 21*zeta - 21)*q^634 + 1/3*(15*zeta^2 + 10*zeta - 10)*q^635 + 
1/3*(-26*zeta^2 + 13*zeta + 78)*q^636 + 1/3*(-12*zeta^2 + 6*zeta + 22)*q^637 + 
1/3*(-2*zeta^2 + zeta + 6)*q^638 + 1/3*(-48*zeta^2 - 32*zeta + 32)*q^639 + 
(-zeta^2 - 3*zeta + 3)*q^640 + 1/6*(-17*zeta^2 - 51*zeta + 51)*q^641 + 
1/3*(-6*zeta^2 - 4*zeta + 4)*q^642 + 1/3*(22*zeta^2 - 11*zeta - 66)*q^643 + 
1/6*(-41*zeta^2 - 46*zeta + 53)*q^644 + 1/6*(-26*zeta^2 + 13*zeta + 78)*q^645 + 
1/3*(6*zeta^2 + 4*zeta - 4)*q^646 + 1/3*(-5*zeta^2 - 15*zeta + 15)*q^647 + 
1/3*(4*zeta^2 + 12*zeta - 12)*q^648 + 1/3*(-78*zeta^2 - 52*zeta + 52)*q^649 + 
1/3*(2*zeta^2 - zeta - 6)*q^650 + (zeta^2 - 25*zeta - 10)*q^651 + (10*zeta^2 - 
5*zeta - 30)*q^652 + (-12*zeta^2 - 8*zeta + 8)*q^653 + 1/6*(zeta^2 + 3*zeta - 
3)*q^654 + 1/2*(-9*zeta^2 - 6*zeta + 6)*q^656 + (-4*zeta^2 + 2*zeta + 12)*q^657 
+ 1/3*(-6*zeta^2 + 3*zeta + 11)*q^658 + 1/3*(-26*zeta^2 + 13*zeta + 78)*q^659 + 
(-9*zeta^2 - 6*zeta + 6)*q^660 + 1/2*(-9*zeta^2 - 27*zeta + 27)*q^661 + 
(-2*zeta^2 - 6*zeta + 6)*q^662 + 1/6*(14*zeta^2 - 7*zeta - 42)*q^664 + 
1/3*(-16*zeta^2 + zeta + 27)*q^665 + 1/3*(3*zeta^2 + 2*zeta - 2)*q^667 + 
(3*zeta^2 + 9*zeta - 9)*q^668 + (-4*zeta^2 - 12*zeta + 12)*q^669 + 
1/6*(-3*zeta^2 - 2*zeta + 2)*q^670 + (16*zeta^2 - 8*zeta - 48)*q^671 + 
1/3*(3*zeta^2 - 54*zeta - 23)*q^672 + 1/3*(-20*zeta^2 + 10*zeta + 60)*q^673 + 
1/3*(-3*zeta^2 - 2*zeta + 2)*q^674 + 1/6*(-25*zeta^2 - 75*zeta + 75)*q^676 + 
1/3*(-6*zeta^2 - 4*zeta + 4)*q^677 + 1/3*(10*zeta^2 - 5*zeta - 30)*q^678 + 
1/3*(10*zeta^2 + 2*zeta - 16)*q^679 + 1/3*(-2*zeta^2 + zeta + 6)*q^680 + 
1/3*(84*zeta^2 + 56*zeta - 56)*q^681 + (-2*zeta^2 - 6*zeta + 6)*q^682 + 
(7*zeta^2 + 21*zeta - 21)*q^683 + 1/3*(12*zeta^2 + 8*zeta - 8)*q^684 + 
1/2*(6*zeta^2 - 3*zeta - 11)*q^686 + (9*zeta^2 + 6*zeta - 6)*q^688 + 
1/3*(2*zeta^2 + 6*zeta - 6)*q^689 + 1/3*(-zeta^2 - 3*zeta + 3)*q^690 + 
1/3*(-6*zeta^2 - 4*zeta + 4)*q^691 + 1/3*(-32*zeta^2 + 16*zeta + 96)*q^692 + 
1/3*(-66*zeta^2 - 72*zeta + 86)*q^693 + 1/6*(10*zeta^2 - 5*zeta - 30)*q^694 + 
1/3*(12*zeta^2 + 8*zeta - 8)*q^695 + 1/2*(zeta^2 + 3*zeta - 3)*q^696 + 
1/3*(2*zeta^2 + 6*zeta - 6)*q^697 + 1/3*(6*zeta^2 + 4*zeta - 4)*q^698 + 
1/3*(22*zeta^2 - 11*zeta - 66)*q^699 + 1/3*(-2*zeta^2 - 13*zeta - 1)*q^700 + 
1/6*(74*zeta^2 - 37*zeta - 222)*q^701 + 1/3*(-6*zeta^2 - 4*zeta + 4)*q^702 + 
1/3*(8*zeta^2 + 24*zeta - 24)*q^704 + 1/3*(6*zeta^2 + 4*zeta - 4)*q^705 + 
1/3*(2*zeta^2 - zeta - 6)*q^706 + 1/3*(69*zeta^2 - 3*zeta - 116)*q^707 + 
1/3*(-46*zeta^2 + 23*zeta + 138)*q^708 + 1/6*(105*zeta^2 + 70*zeta - 70)*q^709 +
(-zeta^2 - 3*zeta + 3)*q^710 + 1/3*(-8*zeta^2 - 24*zeta + 24)*q^711 + 
1/3*(-3*zeta^2 - 2*zeta + 2)*q^712 + (-4*zeta^2 + 2*zeta + 12)*q^713 + 
1/3*(6*zeta^2 - 3*zeta - 11)*q^714 + 1/3*(-4*zeta^2 + 2*zeta + 12)*q^715 + 
1/3*(15*zeta^2 + 10*zeta - 10)*q^716 + 1/3*(-2*zeta^2 - 6*zeta + 6)*q^717 + 
1/3*(-48*zeta^2 - 32*zeta + 32)*q^719 + (-2*zeta^2 + zeta + 6)*q^720 + 
1/6*(3*zeta^2 + 9*zeta - 2)*q^721 + 1/3*(48*zeta^2 + 32*zeta - 32)*q^723 + 
1/2*(-5*zeta^2 - 15*zeta + 15)*q^724 + 1/6*(zeta^2 + 3*zeta - 3)*q^725 + 
1/2*(-9*zeta^2 - 6*zeta + 6)*q^726 + 1/3*(40*zeta^2 - 20*zeta - 120)*q^727 + 
1/3*(-28*zeta^2 - 14*zeta + 42)*q^728 + 1/6*(46*zeta^2 - 23*zeta - 138)*q^729 + 
1/3*(-3*zeta^2 - 2*zeta + 2)*q^730 + 1/3*(zeta^2 + 3*zeta - 3)*q^731 + 
(-7*zeta^2 - 21*zeta + 21)*q^732 + 1/3*(-33*zeta^2 - 22*zeta + 22)*q^733 + 
1/2*(-2*zeta^2 + zeta + 6)*q^734 + 1/3*(2*zeta^2 + 34*zeta + 8)*q^735 + 
1/2*(-6*zeta^2 + 3*zeta + 18)*q^736 + 1/3*(75*zeta^2 + 50*zeta - 50)*q^737 + 
1/3*(-5*zeta^2 - 15*zeta + 15)*q^738 + 1/3*(-16*zeta^2 - 48*zeta + 48)*q^739 + 
1/3*(4*zeta^2 - 2*zeta - 12)*q^741 + 1/3*(-17*zeta^2 - 16*zeta + 23)*q^742 + 
1/3*(4*zeta^2 - 2*zeta - 12)*q^743 + (-9*zeta^2 - 6*zeta + 6)*q^744 + 
1/6*(7*zeta^2 + 21*zeta - 21)*q^745 + (2*zeta^2 + 6*zeta - 6)*q^746 + 
1/3*(-51*zeta^2 - 34*zeta + 34)*q^747 + 1/3*(-4*zeta^2 + 2*zeta + 12)*q^748 + 
1/6*(-17*zeta^2 + 5*zeta + 30)*q^749 + 1/6*(2*zeta^2 - zeta - 6)*q^750 + 
1/3*(-60*zeta^2 - 40*zeta + 40)*q^751 + (-zeta^2 - 3*zeta + 3)*q^752 + 
1/3*(-14*zeta^2 - 42*zeta + 42)*q^753 + 1/3*(3*zeta^2 + 2*zeta - 2)*q^754 + 
1/3*(-2*zeta^2 + zeta + 6)*q^755 + 1/6*(2*zeta^2 + 13*zeta + 1)*q^756 + 
(-4*zeta^2 + 2*zeta + 12)*q^757 + 1/3*(3*zeta^2 + 2*zeta - 2)*q^758 + (4*zeta^2 
+ 12*zeta - 12)*q^759 + 1/3*(zeta^2 + 3*zeta - 3)*q^760 + 1/3*(-15*zeta^2 - 
10*zeta + 10)*q^761 + 1/3*(10*zeta^2 - 5*zeta - 30)*q^762 + 1/3*(23*zeta^2 - 
8*zeta - 41)*q^763 + 1/3*(-4*zeta^2 + 2*zeta + 12)*q^764 + 1/3*(-6*zeta^2 - 
4*zeta + 4)*q^765 + 1/6*(7*zeta^2 + 21*zeta - 21)*q^766 + (2*zeta^2 + 6*zeta - 
6)*q^767 + 1/3*(15*zeta^2 + 10*zeta - 10)*q^768 + 1/3*(-38*zeta^2 + 19*zeta + 
114)*q^769 + 1/3*(2*zeta^2 - 8*zeta - 6)*q^770 + (-12*zeta^2 + 6*zeta + 
36)*q^771 + 1/3*(3*zeta^2 + 2*zeta - 2)*q^772 + 1/3*(-8*zeta^2 - 24*zeta + 
24)*q^773 + 1/3*(5*zeta^2 + 15*zeta - 15)*q^774 + (-3*zeta^2 - 2*zeta + 2)*q^775
+ 1/3*(-8*zeta^2 + 4*zeta + 24)*q^776 + 1/3*(-4*zeta^2 + 2*zeta + 12)*q^778 + 
1/3*(3*zeta^2 + 2*zeta - 2)*q^779 + 1/3*(zeta^2 + 3*zeta - 3)*q^780 + 
1/3*(26*zeta^2 + 78*zeta - 78)*q^781 + 1/2*(23*zeta^2 - 8*zeta - 41)*q^784 + 
1/3*(2*zeta^2 - zeta - 6)*q^785 + (4*zeta^2 + 12*zeta - 12)*q^787 + (-5*zeta^2 -
15*zeta + 15)*q^788 + 1/6*(123*zeta^2 + 82*zeta - 82)*q^789 + 1/3*(-2*zeta^2 + 
zeta + 6)*q^790 + 1/3*(-67*zeta^2 - 68*zeta + 89)*q^791 + 1/3*(-20*zeta^2 + 
10*zeta + 60)*q^792 + (-6*zeta^2 - 4*zeta + 4)*q^793 + 1/3*(8*zeta^2 + 24*zeta -
24)*q^794 + 1/3*(7*zeta^2 + 21*zeta - 21)*q^795 + 1/3*(-12*zeta^2 - 8*zeta + 
8)*q^796 + 1/3*(8*zeta^2 - 4*zeta - 24)*q^797 + 1/3*(zeta^2 + 17*zeta + 4)*q^798
+ 1/3*(-6*zeta^2 - 4*zeta + 4)*q^800 + 1/3*(-5*zeta^2 - 15*zeta + 15)*q^801 + 
1/3*(-4*zeta^2 - 12*zeta + 12)*q^802 + 1/3*(30*zeta^2 + 20*zeta - 20)*q^803 + 
1/6*(98*zeta^2 - 49*zeta - 294)*q^804 + 1/6*(-26*zeta^2 - zeta + 43)*q^805 + 
(-4*zeta^2 + 2*zeta + 12)*q^806 + 1/3*(-96*zeta^2 - 64*zeta + 64)*q^807 + 
1/3*(-5*zeta^2 - 15*zeta + 15)*q^808 + 1/2*(zeta^2 + 3*zeta - 3)*q^809 + 
(3*zeta^2 + 2*zeta - 2)*q^810 + (-6*zeta^2 + 3*zeta + 18)*q^811 + 1/3*(11*zeta^2
- 2*zeta - 19)*q^812 + 1/3*(2*zeta^2 - zeta - 6)*q^813 + 1/3*(-11*zeta^2 - 
33*zeta + 33)*q^815 + (zeta^2 + 3*zeta - 3)*q^816 + 1/3*(-21*zeta^2 - 14*zeta + 
14)*q^817 + 1/3*(14*zeta^2 - 7*zeta - 42)*q^818 + 1/3*(-10*zeta^2 - 2*zeta + 
16)*q^819 + 1/6*(2*zeta^2 - zeta - 6)*q^820 + 1/3*(-15*zeta^2 - 10*zeta + 
10)*q^821 + 1/3*(5*zeta^2 + 15*zeta - 15)*q^823 + 1/6*(-3*zeta^2 - 2*zeta + 
2)*q^824 + 1/3*(-10*zeta^2 + 5*zeta + 30)*q^825 + 1/3*(-15*zeta^2 - 24*zeta + 
17)*q^826 + 1/3*(-10*zeta^2 + 5*zeta + 30)*q^827 + 1/3*(15*zeta^2 + 10*zeta - 
10)*q^828 + 1/3*(-5*zeta^2 - 15*zeta + 15)*q^829 + 1/2*(-3*zeta^2 - 9*zeta + 
9)*q^830 + 1/3*(-39*zeta^2 - 26*zeta + 26)*q^831 + 1/3*(-4*zeta^2 + 2*zeta + 
12)*q^832 + 1/3*(6*zeta^2 + 18*zeta - 4)*q^833 + 1/3*(8*zeta^2 - 4*zeta - 
24)*q^834 + 1/3*(30*zeta^2 + 20*zeta - 20)*q^835 + 1/3*(-10*zeta^2 - 30*zeta + 
30)*q^836 + 1/3*(12*zeta^2 + 8*zeta - 8)*q^838 + 1/3*(-20*zeta^2 + 10*zeta + 
60)*q^839 + 1/3*(-21*zeta^2 - 21*zeta + 28)*q^840 + 1/3*(28*zeta^2 - 14*zeta - 
84)*q^841 + (3*zeta^2 + 2*zeta - 2)*q^842 + 1/3*(-28*zeta^2 - 84*zeta + 
84)*q^843 + (-zeta^2 - 3*zeta + 3)*q^844 + 1/2*(-9*zeta^2 - 6*zeta + 6)*q^845 + 
1/3*(4*zeta^2 - 2*zeta - 12)*q^846 + 1/3*(3*zeta^2 + 72*zeta + 19)*q^847 + 
(6*zeta^2 - 3*zeta - 18)*q^848 + 1/3*(42*zeta^2 + 28*zeta - 28)*q^849 + 
1/3*(-zeta^2 - 3*zeta + 3)*q^850 + 1/3*(69*zeta^2 + 46*zeta - 46)*q^852 + 
1/3*(-46*zeta^2 + 23*zeta + 138)*q^853 + 1/2*(14*zeta^2 + 7*zeta - 21)*q^854 + 
1/3*(8*zeta^2 - 4*zeta - 24)*q^855 + 1/6*(33*zeta^2 + 22*zeta - 22)*q^856 + 
1/3*(7*zeta^2 + 21*zeta - 21)*q^857 + 1/3*(2*zeta^2 + 6*zeta - 6)*q^858 + 
1/3*(60*zeta^2 + 40*zeta - 40)*q^859 + 1/3*(8*zeta^2 - 4*zeta - 24)*q^860 + 
1/6*(-58*zeta^2 + zeta + 97)*q^861 + 1/3*(-14*zeta^2 + 7*zeta + 42)*q^862 + 
(-6*zeta^2 - 4*zeta + 4)*q^863 + 1/6*(-zeta^2 - 3*zeta + 3)*q^864 + 
1/3*(8*zeta^2 + 24*zeta - 24)*q^865 + 1/3*(21*zeta^2 + 14*zeta - 14)*q^866 + 
1/3*(34*zeta^2 - 17*zeta - 102)*q^867 + (4*zeta^2 + 26*zeta + 2)*q^868 + 
(-12*zeta^2 + 6*zeta + 36)*q^869 + 1/6*(3*zeta^2 + 2*zeta - 2)*q^870 + 
1/3*(-zeta^2 - 3*zeta + 3)*q^871 + 1/3*(2*zeta^2 + 6*zeta - 6)*q^872 + 
1/3*(-6*zeta^2 - 4*zeta + 4)*q^873 + 1/3*(2*zeta^2 - zeta - 6)*q^874 + 
1/3*(-4*zeta^2 - 5*zeta + 5)*q^875 + (6*zeta^2 - 3*zeta - 18)*q^876 + (15*zeta^2
+ 10*zeta - 10)*q^877 + (4*zeta^2 + 12*zeta - 12)*q^878 + 1/3*(16*zeta^2 + 
48*zeta - 48)*q^879 + (6*zeta^2 + 4*zeta - 4)*q^880 + 1/2*(2*zeta^2 - zeta - 
6)*q^881 + 1/3*(25*zeta^2 + 5*zeta - 40)*q^882 + (10*zeta^2 - 5*zeta - 30)*q^883
+ (-6*zeta^2 - 4*zeta + 4)*q^884 + 1/3*(13*zeta^2 + 39*zeta - 39)*q^885 + 
1/2*(-5*zeta^2 - 15*zeta + 15)*q^886 + (21*zeta^2 + 14*zeta - 14)*q^887 + 
1/3*(-76*zeta^2 - 74*zeta + 102)*q^889 + 1/3*(4*zeta^2 - 2*zeta - 12)*q^890 + 
1/3*(-60*zeta^2 - 40*zeta + 40)*q^891 + (3*zeta^2 + 9*zeta - 9)*q^892 + 
1/3*(2*zeta^2 + 6*zeta - 6)*q^893 + 1/6*(21*zeta^2 + 14*zeta - 14)*q^894 + 
1/3*(10*zeta^2 - 5*zeta - 30)*q^895 + 1/6*(21*zeta^2 + 147*zeta + 14)*q^896 + 
1/3*(4*zeta^2 - 2*zeta - 12)*q^897 + 1/3*(3*zeta^2 + 2*zeta - 2)*q^898 + 
(-zeta^2 - 3*zeta + 3)*q^899 + (zeta^2 + 3*zeta - 3)*q^900 + 1/3*(6*zeta^2 + 
4*zeta - 4)*q^901 + (-2*zeta^2 + zeta + 6)*q^902 + 1/3*(83*zeta^2 + 4*zeta - 
137)*q^903 + 1/3*(-14*zeta^2 + 7*zeta + 42)*q^904 + 1/6*(-21*zeta^2 - 14*zeta + 
14)*q^905 + 1/3*(zeta^2 + 3*zeta - 3)*q^906 + 1/3*(-11*zeta^2 - 33*zeta + 
33)*q^907 + 1/3*(-69*zeta^2 - 46*zeta + 46)*q^908 + 1/3*(-34*zeta^2 + 17*zeta + 
102)*q^909 + 1/3*(2*zeta^2 - 8*zeta - 6)*q^910 + 1/3*(44*zeta^2 - 22*zeta - 
132)*q^911 + (-9*zeta^2 - 6*zeta + 6)*q^912 + 1/3*(25*zeta^2 + 75*zeta - 
75)*q^913 + 1/3*(-10*zeta^2 - 30*zeta + 30)*q^914 + (-12*zeta^2 - 8*zeta + 
8)*q^915 + (2*zeta^2 - zeta - 6)*q^916 + 1/3*(12*zeta^2 + 36*zeta - 8)*q^917 + 
1/3*(-4*zeta^2 + 2*zeta + 12)*q^918 + 1/3*(15*zeta^2 + 10*zeta - 10)*q^919 + 
1/2*(zeta^2 + 3*zeta - 3)*q^920 + 1/2*(9*zeta^2 + 27*zeta - 27)*q^921 + 
1/3*(12*zeta^2 + 8*zeta - 8)*q^922 + (4*zeta^2 - 2*zeta - 12)*q^923 + 
1/3*(108*zeta^2 + 114*zeta - 142)*q^924 + 1/6*(-51*zeta^2 - 34*zeta + 34)*q^926 
+ 1/3*(-zeta^2 - 3*zeta + 3)*q^927 + 1/3*(-2*zeta^2 - 6*zeta + 6)*q^928 + 
1/2*(-9*zeta^2 - 6*zeta + 6)*q^929 + (-2*zeta^2 + zeta + 6)*q^930 + 
1/3*(-41*zeta^2 - 4*zeta + 67)*q^931 + 1/3*(-8*zeta^2 + 4*zeta + 24)*q^932 + 
1/3*(-57*zeta^2 - 38*zeta + 38)*q^933 + 1/6*(-7*zeta^2 - 21*zeta + 21)*q^934 + 
1/3*(2*zeta^2 + 6*zeta - 6)*q^935 + (6*zeta^2 + 4*zeta - 4)*q^936 + 
1/3*(4*zeta^2 - 2*zeta - 12)*q^937 + 1/3*(49*zeta^2 + 35*zeta - 70)*q^938 + 
(12*zeta^2 - 6*zeta - 36)*q^939 + 1/3*(-3*zeta^2 - 2*zeta + 2)*q^940 + 
1/3*(-zeta^2 - 3*zeta + 3)*q^941 + 1/3*(-zeta^2 - 3*zeta + 3)*q^942 + 
1/3*(6*zeta^2 + 4*zeta - 4)*q^943 + (10*zeta^2 - 5*zeta - 30)*q^944 + 
1/6*(-3*zeta^2 - 9*zeta + 2)*q^945 + (4*zeta^2 - 2*zeta - 12)*q^946 + 
1/3*(-48*zeta^2 - 32*zeta + 32)*q^947 + 1/3*(19*zeta^2 + 57*zeta - 57)*q^948 + 
1/3*(-2*zeta^2 - 6*zeta + 6)*q^949 + 1/3*(3*zeta^2 + 2*zeta - 2)*q^950 + 
(-18*zeta^2 + 9*zeta + 54)*q^951 + 1/3*(-14*zeta^2 + 14*zeta + 28)*q^952 + 
1/3*(4*zeta^2 - 2*zeta - 12)*q^953 + 1/3*(12*zeta^2 + 8*zeta - 8)*q^954 + 
1/3*(4*zeta^2 + 12*zeta - 12)*q^955 + 1/3*(7*zeta^2 + 21*zeta - 21)*q^956 + 
1/3*(-15*zeta^2 - 10*zeta + 10)*q^957 + 1/3*(4*zeta^2 - 2*zeta - 12)*q^958 + 
1/3*(12*zeta^2 - 6*zeta - 22)*q^959 + 1/3*(8*zeta^2 - 4*zeta - 24)*q^960 + 
1/6*(15*zeta^2 + 10*zeta - 10)*q^961 + 1/3*(-zeta^2 - 3*zeta + 3)*q^963 + 
1/3*(-15*zeta^2 - 10*zeta + 10)*q^964 + 1/3*(2*zeta^2 - zeta - 6)*q^965 + 
1/6*(-zeta^2 + 25*zeta + 10)*q^966 + (6*zeta^2 - 3*zeta - 18)*q^967 + 
1/3*(15*zeta^2 + 10*zeta - 10)*q^968 + 1/3*(-2*zeta^2 - 6*zeta + 6)*q^969 + 
1/3*(-2*zeta^2 - 6*zeta + 6)*q^970 + (-12*zeta^2 - 8*zeta + 8)*q^971 + 
1/3*(-28*zeta^2 + 14*zeta + 84)*q^972 + 1/3*(-77*zeta^2 - 70*zeta + 105)*q^973 +
1/3*(4*zeta^2 - 2*zeta - 12)*q^974 + 1/3*(3*zeta^2 + 2*zeta - 2)*q^975 + 
1/2*(9*zeta^2 + 27*zeta - 27)*q^976 + (-3*zeta^2 - 9*zeta + 9)*q^977 + 
1/3*(-33*zeta^2 - 22*zeta + 22)*q^978 + (-4*zeta^2 + 2*zeta + 12)*q^979 + 
1/6*(16*zeta^2 - 43*zeta - 41)*q^980 + 1/3*(-14*zeta^2 + 7*zeta + 42)*q^981 + 
1/3*(12*zeta^2 + 8*zeta - 8)*q^982 + 1/3*(4*zeta^2 + 12*zeta - 12)*q^983 + 
1/6*(5*zeta^2 + 15*zeta - 15)*q^984 + 1/3*(-33*zeta^2 - 22*zeta + 22)*q^985 + 
1/3*(2*zeta^2 - zeta - 6)*q^986 + 1/3*(-25*zeta^2 - 26*zeta + 33)*q^987 + 
1/3*(4*zeta^2 - 2*zeta - 12)*q^988 + 1/6*(-39*zeta^2 - 26*zeta + 26)*q^989 + 
1/3*(2*zeta^2 + 6*zeta - 6)*q^990 + 1/3*(7*zeta^2 + 21*zeta - 21)*q^991 + 
(12*zeta^2 + 8*zeta - 8)*q^992 + (8*zeta^2 - 4*zeta - 24)*q^993 + 1/3*(-9*zeta^2
+ 15*zeta + 20)*q^994 + 1/6*(123*zeta^2 + 82*zeta - 82)*q^996 + 1/3*(5*zeta^2 + 
15*zeta - 15)*q^997 + 1/3*(zeta^2 + 3*zeta - 3)*q^998 + 1/3*(-2*zeta^2 + zeta + 
6)*q^1000 + 1/3*(20*zeta^2 + 4*zeta - 32)*q^1001 + 1/3*(20*zeta^2 - 10*zeta - 
60)*q^1002 + (6*zeta^2 + 4*zeta - 4)*q^1003 + 1/3*(13*zeta^2 + 39*zeta - 
39)*q^1004 + 1/6*(-25*zeta^2 - 75*zeta + 75)*q^1005 + 1/6*(-57*zeta^2 - 38*zeta 
+ 38)*q^1006 + 1/3*(-16*zeta^2 + 8*zeta + 48)*q^1007 + (16*zeta^2 - zeta - 
27)*q^1008 + 1/6*(38*zeta^2 - 19*zeta - 114)*q^1009 + 1/3*(-12*zeta^2 - 8*zeta +
8)*q^1010 + (-5*zeta^2 - 15*zeta + 15)*q^1011 + (-3*zeta^2 - 9*zeta + 9)*q^1012 
+ 1/3*(21*zeta^2 + 14*zeta - 14)*q^1013 + 1/2*(-6*zeta^2 + 3*zeta + 18)*q^1014 +
1/3*(zeta^2 - 4*zeta - 3)*q^1015 + (-4*zeta^2 + 2*zeta + 12)*q^1016 + 
1/3*(48*zeta^2 + 32*zeta - 32)*q^1017 + 1/3*(2*zeta^2 + 6*zeta - 6)*q^1018 + 
1/3*(-4*zeta^2 - 12*zeta + 12)*q^1019 + 1/3*(3*zeta^2 + 2*zeta - 2)*q^1020 + 
1/2*(-22*zeta^2 + 11*zeta + 66)*q^1021 + 1/3*(8*zeta^2 + 10*zeta - 10)*q^1022 + 
(20*zeta^2 - 10*zeta - 60)*q^1023 + 1/6*(-3*zeta^2 - 2*zeta + 2)*q^1024 + 
1/2*(zeta^2 + 3*zeta - 3)*q^1025 + 1/3*(-zeta^2 - 3*zeta + 3)*q^1026 + 
1/3*(-6*zeta^2 - 4*zeta + 4)*q^1027 + (8*zeta^2 - 4*zeta - 24)*q^1028 + 
1/6*(47*zeta^2 + 190*zeta - 15)*q^1029 + 1/6*(2*zeta^2 - zeta - 6)*q^1030 + 
(-3*zeta^2 - 2*zeta + 2)*q^1031 + 1/3*(-10*zeta^2 - 30*zeta + 30)*q^1032 + 
(-7*zeta^2 - 21*zeta + 21)*q^1033 + 1/3*(-6*zeta^2 - 4*zeta + 4)*q^1034 + 
(2*zeta^2 - zeta - 6)*q^1035 + (-4*zeta^2 + 2*zeta + 12)*q^1037 + 1/3*(24*zeta^2
+ 16*zeta - 16)*q^1038 + 1/3*(11*zeta^2 + 33*zeta - 33)*q^1039 + 1/2*(45*zeta^2 
+ 30*zeta - 30)*q^1041 + (-4*zeta^2 + 2*zeta + 12)*q^1042 + 1/3*(4*zeta^2 - 
37*zeta - 19)*q^1043 + (-2*zeta^2 + zeta + 6)*q^1044 + (-6*zeta^2 - 4*zeta + 
4)*q^1045 + 1/3*(-2*zeta^2 - 6*zeta + 6)*q^1046 + (9*zeta^2 + 27*zeta - 
27)*q^1047 + 1/3*(-12*zeta^2 - 8*zeta + 8)*q^1048 + 1/6*(62*zeta^2 - 31*zeta - 
186)*q^1049 + 1/3*(-5*zeta^2 - zeta + 8)*q^1050 + 1/3*(-46*zeta^2 + 23*zeta + 
138)*q^1051 + 1/3*(-69*zeta^2 - 46*zeta + 46)*q^1052 + (2*zeta^2 + 6*zeta - 
6)*q^1053 + (2*zeta^2 + 6*zeta - 6)*q^1054 + (3*zeta^2 + 2*zeta - 2)*q^1055 + 
1/3*(44*zeta^2 - 22*zeta - 132)*q^1056 + 1/3*(-2*zeta^2 + 8*zeta + 6)*q^1057 + 
1/3*(2*zeta^2 - zeta - 6)*q^1058 + (-21*zeta^2 - 14*zeta + 14)*q^1059 + 
1/3*(-5*zeta^2 - 15*zeta + 15)*q^1060 + 1/3*(zeta^2 + 3*zeta - 3)*q^1061 + 
1/3*(12*zeta^2 + 8*zeta - 8)*q^1062 + 1/3*(-2*zeta^2 + zeta + 6)*q^1063 + 
1/3*(-7*zeta^2 - 35*zeta)*q^1064 + 1/3*(26*zeta^2 - 13*zeta - 78)*q^1065 + 
1/3*(21*zeta^2 + 14*zeta - 14)*q^1066 + 1/3*(4*zeta^2 + 12*zeta - 12)*q^1068 + 
1/2*(9*zeta^2 + 6*zeta - 6)*q^1069 + 1/2*(-2*zeta^2 + zeta + 6)*q^1070 + 
1/3*(-2*zeta^2 + 8*zeta + 6)*q^1071 + (-12*zeta^2 + 6*zeta + 36)*q^1072 + 
1/3*(-5*zeta^2 - 15*zeta + 15)*q^1074 + (-zeta^2 - 3*zeta + 3)*q^1075 + 
1/6*(177*zeta^2 + 118*zeta - 118)*q^1076 + 1/3*(20*zeta^2 - 10*zeta - 60)*q^1077
+ 1/3*(-8*zeta^2 - 31*zeta + 3)*q^1078 + (6*zeta^2 - 3*zeta - 18)*q^1079 + 
1/6*(3*zeta^2 + 2*zeta - 2)*q^1080 + 1/3*(2*zeta^2 + 6*zeta - 6)*q^1081 + 
1/3*(2*zeta^2 + 6*zeta - 6)*q^1082 + 1/3*(-33*zeta^2 - 22*zeta + 22)*q^1083 + 
1/3*(-10*zeta^2 + 5*zeta + 30)*q^1084 + (8*zeta^2 + 10*zeta - 10)*q^1085 + 
1/6*(-14*zeta^2 + 7*zeta + 42)*q^1086 + (6*zeta^2 + 4*zeta - 4)*q^1087 + 
1/3*(2*zeta^2 + 6*zeta - 6)*q^1088 + 1/3*(-17*zeta^2 - 51*zeta + 51)*q^1089 + 
(-3*zeta^2 - 2*zeta + 2)*q^1090 + (6*zeta^2 - 3*zeta - 18)*q^1091 + 
1/3*(-4*zeta^2 - 26*zeta - 2)*q^1092 + 1/3*(10*zeta^2 - 5*zeta - 30)*q^1093 + 
1/6*(21*zeta^2 + 14*zeta - 14)*q^1094 + 1/3*(-5*zeta^2 - 15*zeta + 15)*q^1095 + 
1/3*(2*zeta^2 + 6*zeta - 6)*q^1096 + (-15*zeta^2 - 10*zeta + 10)*q^1097 + 
(-2*zeta^2 + zeta + 6)*q^1098 + 1/3*(-34*zeta^2 + 10*zeta + 60)*q^1099 + 
1/3*(8*zeta^2 - 4*zeta - 24)*q^1100 + 1/6*(-69*zeta^2 - 46*zeta + 46)*q^1101 + 
1/3*(zeta^2 + 3*zeta - 3)*q^1102 + (5*zeta^2 + 15*zeta - 15)*q^1103 + 
1/2*(-15*zeta^2 - 10*zeta + 10)*q^1104 + 1/3*(4*zeta^2 - 2*zeta - 12)*q^1105 + 
1/3*(-32*zeta^2 + 23*zeta + 61)*q^1106 + 1/3*(2*zeta^2 - zeta - 6)*q^1107 + 
1/3*(42*zeta^2 + 28*zeta - 28)*q^1108 + 1/2*(-13*zeta^2 - 39*zeta + 39)*q^1109 +
1/3*(78*zeta^2 + 52*zeta - 52)*q^1111 + (-2*zeta^2 + zeta + 6)*q^1112 + 
1/3*(5*zeta^2 - 83*zeta - 36)*q^1113 + 1/3*(-20*zeta^2 + 10*zeta + 60)*q^1114 + 
1/3*(15*zeta^2 + 10*zeta - 10)*q^1115 + (-6*zeta^2 - 18*zeta + 18)*q^1116 + 
1/3*(16*zeta^2 + 48*zeta - 48)*q^1117 + 1/3*(-12*zeta^2 - 8*zeta + 8)*q^1118 + 
1/3*(-28*zeta^2 + 14*zeta + 84)*q^1119 + 1/6*(41*zeta^2 + 46*zeta - 53)*q^1120 +
1/3*(-32*zeta^2 + 16*zeta + 96)*q^1121 + 1/3*(6*zeta^2 + 4*zeta - 4)*q^1122 + 
1/3*(-7*zeta^2 - 21*zeta + 21)*q^1123 + 1/3*(29*zeta^2 + 87*zeta - 87)*q^1124 + 
1/3*(3*zeta^2 + 2*zeta - 2)*q^1125 + 1/2*(-6*zeta^2 + 3*zeta + 18)*q^1126 + 
1/3*(-32*zeta^2 + 2*zeta + 54)*q^1127 + (-2*zeta^2 + zeta + 6)*q^1128 + 
1/2*(-9*zeta^2 - 6*zeta + 6)*q^1129 + (zeta^2 + 3*zeta - 3)*q^1130 + 1/3*(zeta^2
+ 3*zeta - 3)*q^1131 + 1/3*(-21*zeta^2 - 14*zeta + 14)*q^1132 + 1/3*(-2*zeta^2 +
zeta + 6)*q^1133 + 1/6*(-3*zeta^2 - 30*zeta - 5)*q^1134 + 1/3*(-22*zeta^2 + 
11*zeta + 66)*q^1135 + (-15*zeta^2 - 10*zeta + 10)*q^1136 + (-7*zeta^2 - 21*zeta
+ 21)*q^1137 + 1/3*(-2*zeta^2 - 6*zeta + 6)*q^1138 + 1/3*(-3*zeta^2 - 2*zeta + 
2)*q^1139 + 1/3*(-10*zeta^2 + 5*zeta + 30)*q^1140 + 1/3*(-16*zeta^2 + 106*zeta +
62)*q^1141 + 1/3*(2*zeta^2 - zeta - 6)*q^1142 + (18*zeta^2 + 12*zeta - 
12)*q^1143 + 1/3*(-4*zeta^2 - 12*zeta + 12)*q^1144 + 1/3*(zeta^2 + 3*zeta - 
3)*q^1145 + 1/3*(12*zeta^2 + 8*zeta - 8)*q^1146 + 1/3*(31*zeta^2 - 19*zeta - 
58)*q^1148 + 1/6*(-70*zeta^2 + 35*zeta + 210)*q^1149 + 1/6*(3*zeta^2 + 2*zeta - 
2)*q^1150 + (-2*zeta^2 - 6*zeta + 6)*q^1151 + 1/3*(-17*zeta^2 - 51*zeta + 
51)*q^1152 + 1/3*(-60*zeta^2 - 40*zeta + 40)*q^1153 + (8*zeta^2 - 4*zeta - 
24)*q^1154 + 1/3*(62*zeta^2 + 4*zeta - 102)*q^1155 + 1/6*(-58*zeta^2 + 29*zeta +
174)*q^1156 + 1/3*(12*zeta^2 + 8*zeta - 8)*q^1157 + 1/3*(-zeta^2 - 3*zeta + 
3)*q^1158 + (-5*zeta^2 - 15*zeta + 15)*q^1159 + 1/3*(-3*zeta^2 - 2*zeta + 
2)*q^1160 + 1/6*(2*zeta^2 - zeta - 6)*q^1161 + 1/3*(-24*zeta^2 - 9*zeta + 
37)*q^1162 + 1/3*(-14*zeta^2 + 7*zeta + 42)*q^1163 + 1/3*(-6*zeta^2 - 4*zeta + 
4)*q^1164 + (2*zeta^2 + 6*zeta - 6)*q^1165 + (-2*zeta^2 - 6*zeta + 6)*q^1166 + 
(12*zeta^2 + 8*zeta - 8)*q^1167 + (-4*zeta^2 + 2*zeta + 12)*q^1168 + 
1/6*(-151*zeta^2 - 194*zeta + 187)*q^1169 + 1/3*(-4*zeta^2 + 2*zeta + 12)*q^1170
+ 1/3*(30*zeta^2 + 20*zeta - 20)*q^1171 + 1/3*(-8*zeta^2 - 24*zeta + 24)*q^1172 
+ 1/3*(-2*zeta^2 - 6*zeta + 6)*q^1173 + 1/3*(-30*zeta^2 - 20*zeta + 20)*q^1174 +
1/3*(-2*zeta^2 + zeta + 6)*q^1175 + 1/6*(-105*zeta^2 - 105*zeta + 140)*q^1176 + 
1/3*(-10*zeta^2 + 5*zeta + 30)*q^1177 + (-6*zeta^2 - 4*zeta + 4)*q^1178 + 
1/3*(-8*zeta^2 - 24*zeta + 24)*q^1179 + 1/3*(-11*zeta^2 - 33*zeta + 33)*q^1180 +
1/6*(-15*zeta^2 - 10*zeta + 10)*q^1181 + 1/3*(-22*zeta^2 + 11*zeta + 66)*q^1182 
+ 1/3*(72*zeta^2 + 69*zeta - 97)*q^1183 + (9*zeta^2 + 6*zeta - 6)*q^1185 + 
1/3*(7*zeta^2 + 21*zeta - 21)*q^1186 + 1/3*(19*zeta^2 + 57*zeta - 57)*q^1187 + 
1/3*(3*zeta^2 + 2*zeta - 2)*q^1188 + 1/2*(-2*zeta^2 + zeta + 6)*q^1189 + 
1/3*(-8*zeta^2 - 10*zeta + 10)*q^1190 + (-20*zeta^2 + 10*zeta + 60)*q^1191 + 
(-6*zeta^2 - 4*zeta + 4)*q^1192 + (7*zeta^2 + 21*zeta - 21)*q^1193 + 
1/3*(-3*zeta^2 - 2*zeta + 2)*q^1195 + 1/3*(-2*zeta^2 + zeta + 6)*q^1196 + 
1/3*(-40*zeta^2 - 8*zeta + 64)*q^1197 + 1/3*(4*zeta^2 - 2*zeta - 12)*q^1198 + 
1/3*(24*zeta^2 + 16*zeta - 16)*q^1199 + (-zeta^2 - 3*zeta + 3)*q^1200 + 
1/2*(-15*zeta^2 - 45*zeta + 45)*q^1201 + 1/3*(6*zeta^2 + 4*zeta - 4)*q^1202 + 
1/3*(-14*zeta^2 + 7*zeta + 42)*q^1203 + 1/6*(-134*zeta^2 + 11*zeta + 227)*q^1204
+ (-6*zeta^2 + 3*zeta + 18)*q^1205 + 1/3*(-33*zeta^2 - 22*zeta + 22)*q^1206 + 
(-2*zeta^2 - 6*zeta + 6)*q^1207 + 1/3*(-4*zeta^2 - 12*zeta + 12)*q^1208 + 
(-6*zeta^2 - 4*zeta + 4)*q^1209 + 1/3*(8*zeta^2 - 4*zeta - 24)*q^1210 + 
1/3*(4*zeta^2 - 100*zeta - 40)*q^1211 + 1/3*(44*zeta^2 - 22*zeta - 132)*q^1212 +
(3*zeta^2 + 2*zeta - 2)*q^1213 + 1/2*(-5*zeta^2 - 15*zeta + 15)*q^1214 + 
1/3*(10*zeta^2 + 30*zeta - 30)*q^1215 + (3*zeta^2 + 2*zeta - 2)*q^1216 + 
(14*zeta^2 - 7*zeta - 42)*q^1217 + 1/3*(-4*zeta^2 - 5*zeta + 5)*q^1218 + 
1/3*(-14*zeta^2 + 7*zeta + 42)*q^1219 + 1/2*(21*zeta^2 + 14*zeta - 14)*q^1220 + 
1/3*(2*zeta^2 + 6*zeta - 6)*q^1222 + 1/3*(-57*zeta^2 - 38*zeta + 38)*q^1223 + 
(4*zeta^2 - 2*zeta - 12)*q^1224 + 1/6*(-31*zeta^2 - 23*zeta + 44)*q^1225 + 
(-6*zeta^2 + 3*zeta + 18)*q^1226 + 1/3*(78*zeta^2 + 52*zeta - 52)*q^1227 + 
(-3*zeta^2 - 9*zeta + 9)*q^1228 + 1/6*(-7*zeta^2 - 21*zeta + 21)*q^1229 + 
1/2*(3*zeta^2 + 2*zeta - 2)*q^1230 + (18*zeta^2 - 9*zeta - 54)*q^1231 + 
(-25*zeta^2 - 26*zeta + 33)*q^1232 + 1/3*(-8*zeta^2 + 4*zeta + 24)*q^1233 + 
1/3*(12*zeta^2 + 8*zeta - 8)*q^1234 + 1/3*(2*zeta^2 + 6*zeta - 6)*q^1235 + 
1/6*(zeta^2 + 3*zeta - 3)*q^1236 + (-9*zeta^2 - 6*zeta + 6)*q^1237 + (2*zeta^2 -
zeta - 6)*q^1238 + 1/3*(11*zeta^2 - 149*zeta - 68)*q^1239 + (4*zeta^2 - 2*zeta -
12)*q^1240 + 1/3*(-6*zeta^2 - 4*zeta + 4)*q^1241 + 1/3*(-26*zeta^2 - 78*zeta + 
78)*q^1243 + 1/3*(33*zeta^2 + 22*zeta - 22)*q^1244 + 1/6*(50*zeta^2 - 25*zeta - 
150)*q^1245 + 1/6*(2*zeta^2 - 29*zeta - 13)*q^1246 + (2*zeta^2 - zeta - 
6)*q^1247 + 1/3*(-12*zeta^2 - 8*zeta + 8)*q^1248 + 1/6*(35*zeta^2 + 105*zeta - 
105)*q^1249 + (18*zeta^2 + 12*zeta - 12)*q^1251 + (-8*zeta^2 + 4*zeta + 
24)*q^1252 + 1/3*(-50*zeta^2 - 10*zeta + 80)*q^1253 + (-4*zeta^2 + 2*zeta + 
12)*q^1254 + 1/3*(15*zeta^2 + 10*zeta - 10)*q^1255 + 1/3*(-2*zeta^2 - 6*zeta + 
6)*q^1256 + (8*zeta^2 + 24*zeta - 24)*q^1257 + 1/3*(-26*zeta^2 + 13*zeta + 
78)*q^1259 + 1/3*(9*zeta^2 - 15*zeta - 20)*q^1260 + 1/3*(8*zeta^2 - 4*zeta - 
24)*q^1261 + 1/3*(-15*zeta^2 - 10*zeta + 10)*q^1262 + 1/3*(4*zeta^2 + 12*zeta - 
12)*q^1263 + (-5*zeta^2 - 15*zeta + 15)*q^1264 + 1/3*(-15*zeta^2 - 10*zeta + 
10)*q^1265 + (2*zeta^2 - zeta - 6)*q^1266 + 1/3*(46*zeta^2 + 47*zeta - 
61)*q^1267 + (16*zeta^2 - 8*zeta - 48)*q^1268 + 1/3*(4*zeta^2 + 12*zeta - 
12)*q^1270 + (-3*zeta^2 - 9*zeta + 9)*q^1271 + 1/3*(-33*zeta^2 - 22*zeta + 
22)*q^1272 + 1/3*(26*zeta^2 - 13*zeta - 78)*q^1273 + 1/3*(13*zeta^2 + 32*zeta - 
11)*q^1274 + 1/3*(2*zeta^2 - zeta - 6)*q^1275 + 1/3*(12*zeta^2 + 8*zeta - 
8)*q^1276 + 1/3*(-11*zeta^2 - 33*zeta + 33)*q^1277 + 1/3*(-4*zeta^2 - 12*zeta + 
12)*q^1278 + 1/3*(-15*zeta^2 - 10*zeta + 10)*q^1279 + 1/6*(2*zeta^2 - zeta - 
6)*q^1280 + 1/2*(91*zeta^2 + 98*zeta - 119)*q^1281 + (-2*zeta^2 + zeta + 
6)*q^1282 + 1/3*(15*zeta^2 + 10*zeta - 10)*q^1283 + 1/6*(13*zeta^2 + 39*zeta - 
39)*q^1284 + 1/3*(-8*zeta^2 - 24*zeta + 24)*q^1285 + 1/3*(30*zeta^2 + 20*zeta - 
20)*q^1286 + 1/3*(-8*zeta^2 + 4*zeta + 24)*q^1287 + 1/3*(-21*zeta - 7)*q^1288 + 
1/2*(26*zeta^2 - 13*zeta - 78)*q^1289 + (-3*zeta^2 - 2*zeta + 2)*q^1290 + 
1/3*(-14*zeta^2 - 42*zeta + 42)*q^1291 + 1/3*(-2*zeta^2 - 6*zeta + 6)*q^1292 + 
1/3*(-69*zeta^2 - 46*zeta + 46)*q^1293 + 1/6*(34*zeta^2 - 17*zeta - 102)*q^1294 
+ 1/2*(14*zeta^2 - 7*zeta - 42)*q^1296 + 1/3*(-15*zeta^2 - 10*zeta + 10)*q^1297 
+ 1/3*(-10*zeta^2 - 30*zeta + 30)*q^1298 + (11*zeta^2 + 33*zeta - 33)*q^1299 + 
1/3*(-6*zeta^2 - 4*zeta + 4)*q^1300 + 1/6*(-94*zeta^2 + 47*zeta + 282)*q^1301 + 
(10*zeta^2 + 2*zeta - 16)*q^1302 + (12*zeta^2 - 6*zeta - 36)*q^1303 + 
1/3*(60*zeta^2 + 40*zeta - 40)*q^1304 + 1/3*(zeta^2 + 3*zeta - 3)*q^1305 + 
1/3*(-zeta^2 - 3*zeta + 3)*q^1306 + (-9*zeta^2 - 6*zeta + 6)*q^1307 + 
1/3*(10*zeta^2 - 5*zeta - 30)*q^1308 + 1/3*(4*zeta^2 - 16*zeta - 12)*q^1309 + 
1/3*(8*zeta^2 - 4*zeta - 24)*q^1310 + 1/3*(21*zeta^2 + 14*zeta - 14)*q^1311 + 
1/3*(-5*zeta^2 - 15*zeta + 15)*q^1312 + 1/3*(-8*zeta^2 - 24*zeta + 24)*q^1313 + 
1/3*(-6*zeta^2 - 4*zeta + 4)*q^1314 + (-4*zeta^2 + 2*zeta + 12)*q^1315 + 
1/3*(26*zeta^2 + 22*zeta - 36)*q^1316 + (-24*zeta^2 + 12*zeta + 72)*q^1317 + 
1/3*(-3*zeta^2 - 2*zeta + 2)*q^1318 + 1/3*(-8*zeta^2 - 24*zeta + 24)*q^1320 + 
1/3*(-15*zeta^2 - 10*zeta + 10)*q^1321 + 1/3*(-2*zeta^2 + zeta + 6)*q^1322 + 
1/3*(6*zeta^2 - 3*zeta - 11)*q^1323 + (-10*zeta^2 + 5*zeta + 30)*q^1324 + 
(-3*zeta^2 - 2*zeta + 2)*q^1325 + 1/3*(-2*zeta^2 - 6*zeta + 6)*q^1326 + 
1/3*(-4*zeta^2 - 12*zeta + 12)*q^1327 + (-12*zeta^2 - 8*zeta + 8)*q^1328 + 
1/2*(18*zeta^2 - 9*zeta - 54)*q^1329 + 1/3*(zeta^2 - 4*zeta - 3)*q^1330 + 
1/3*(-8*zeta^2 + 4*zeta + 24)*q^1331 + (6*zeta^2 + 18*zeta - 18)*q^1333 + 
1/6*(zeta^2 + 3*zeta - 3)*q^1334 + (3*zeta^2 + 2*zeta - 2)*q^1335 + 
1/6*(-82*zeta^2 + 41*zeta + 246)*q^1336 + 1/3*(11*zeta^2 - 23*zeta - 26)*q^1337 
+ 1/3*(10*zeta^2 - 5*zeta - 30)*q^1338 + 1/3*(3*zeta^2 + 2*zeta - 2)*q^1339 + 
1/3*(7*zeta^2 + 21*zeta - 21)*q^1340 + (3*zeta^2 + 9*zeta - 9)*q^1341 + 
(9*zeta^2 + 6*zeta - 6)*q^1342 + 1/3*(-4*zeta^2 + 2*zeta + 12)*q^1343 + 
1/6*(-110*zeta^2 - zeta + 183)*q^1344 + 1/6*(46*zeta^2 - 23*zeta - 138)*q^1345 +
1/3*(6*zeta^2 + 4*zeta - 4)*q^1346 + 1/3*(2*zeta^2 + 6*zeta - 6)*q^1347 + 
(3*zeta^2 + 9*zeta - 9)*q^1348 + 1/3*(48*zeta^2 + 32*zeta - 32)*q^1349 + 
1/6*(-2*zeta^2 + zeta + 6)*q^1350 + 1/3*(-10*zeta^2 - 2*zeta + 16)*q^1351 + 
1/3*(10*zeta^2 - 5*zeta - 30)*q^1352 + 1/3*(-33*zeta^2 - 22*zeta + 22)*q^1353 + 
1/3*(5*zeta^2 + 15*zeta - 15)*q^1354 + 1/3*(-zeta^2 - 3*zeta + 3)*q^1355 + 
1/3*(-69*zeta^2 - 46*zeta + 46)*q^1356 + 1/3*(-26*zeta^2 + 13*zeta + 78)*q^1357 
+ 1/3*(-19*zeta^2 - 29*zeta + 22)*q^1358 + 1/3*(4*zeta^2 - 2*zeta - 12)*q^1359 +
1/2*(11*zeta^2 + 33*zeta - 33)*q^1361 + 1/3*(11*zeta^2 + 33*zeta - 33)*q^1362 + 
1/3*(-3*zeta^2 - 2*zeta + 2)*q^1363 + (-16*zeta^2 + 8*zeta + 48)*q^1364 + 
1/3*(-8*zeta^2 - 10*zeta + 10)*q^1365 + 1/2*(-2*zeta^2 + zeta + 6)*q^1366 + 
1/3*(-51*zeta^2 - 34*zeta + 34)*q^1367 + 1/3*(8*zeta^2 + 24*zeta - 24)*q^1368 + 
1/6*(37*zeta^2 + 111*zeta - 111)*q^1369 + 1/3*(-6*zeta^2 - 4*zeta + 4)*q^1370 + 
1/3*(68*zeta^2 - 34*zeta - 204)*q^1371 + 1/3*(-32*zeta^2 - 61*zeta + 33)*q^1372 
+ 1/3*(-44*zeta^2 + 22*zeta + 132)*q^1373 + 1/3*(3*zeta^2 + 2*zeta - 2)*q^1374 +
1/3*(-2*zeta^2 - 6*zeta + 6)*q^1375 + 1/6*(25*zeta^2 + 75*zeta - 75)*q^1376 + 
(6*zeta^2 + 4*zeta - 4)*q^1377 + 1/3*(-4*zeta^2 + 2*zeta + 12)*q^1378 + 
1/3*(106*zeta^2 + 122*zeta - 136)*q^1379 + 1/2*(-6*zeta^2 + 3*zeta + 18)*q^1380 
+ 1/6*(57*zeta^2 + 38*zeta - 38)*q^1381 + 1/3*(-zeta^2 - 3*zeta + 3)*q^1382 + 
(-6*zeta^2 - 18*zeta + 18)*q^1383 + (-12*zeta^2 - 8*zeta + 8)*q^1384 + 
1/3*(8*zeta^2 - 4*zeta - 24)*q^1385 + 1/3*(-2*zeta^2 - 34*zeta - 8)*q^1386 + 
(4*zeta^2 - 2*zeta - 12)*q^1387 + (-15*zeta^2 - 10*zeta + 10)*q^1388 + 
1/6*(-25*zeta^2 - 75*zeta + 75)*q^1389 + 1/3*(5*zeta^2 + 15*zeta - 15)*q^1390 + 
(-3*zeta^2 - 2*zeta + 2)*q^1391 + (2*zeta^2 - zeta - 6)*q^1392 + 1/3*(12*zeta^2 
- 6*zeta - 22)*q^1393 + 1/3*(14*zeta^2 - 7*zeta - 42)*q^1394 + (-6*zeta^2 - 
4*zeta + 4)*q^1395 + 1/2*(-11*zeta^2 - 33*zeta + 33)*q^1396 + 1/3*(-28*zeta^2 - 
84*zeta + 84)*q^1397 + (6*zeta^2 + 4*zeta - 4)*q^1398 + 1/3*(28*zeta^2 - 14*zeta
- 84)*q^1399 + 1/6*(14*zeta^2 + 7*zeta - 21)*q^1400 + 1/6*(94*zeta^2 - 47*zeta -
282)*q^1401 + 1/3*(21*zeta^2 + 14*zeta - 14)*q^1402 + (-4*zeta^2 - 12*zeta + 
12)*q^1403 + (zeta^2 + 3*zeta - 3)*q^1404 + (9*zeta^2 + 6*zeta - 6)*q^1405 + 
1/3*(-7*zeta^2 + 154*zeta + 63)*q^1407 + 1/3*(-46*zeta^2 + 23*zeta + 138)*q^1408
+ 1/2*(-51*zeta^2 - 34*zeta + 34)*q^1409 + 1/3*(zeta^2 + 3*zeta - 3)*q^1410 + 
(-3*zeta^2 - 9*zeta + 9)*q^1411 + (9*zeta^2 + 6*zeta - 6)*q^1412 + 
1/3*(20*zeta^2 - 10*zeta - 60)*q^1413 + 1/6*(zeta^2 + 38*zeta + 11)*q^1414 + 
1/3*(-14*zeta^2 + 7*zeta + 42)*q^1415 + (-21*zeta^2 - 14*zeta + 14)*q^1416 + 
(-2*zeta^2 - 6*zeta + 6)*q^1417 + 1/3*(4*zeta^2 + 12*zeta - 12)*q^1418 + 
1/3*(96*zeta^2 + 64*zeta - 64)*q^1419 + 1/3*(-22*zeta^2 + 11*zeta + 66)*q^1420 +
1/6*(-8*zeta^2 - 31*zeta + 3)*q^1421 + (8*zeta^2 - 4*zeta - 24)*q^1422 + 
1/3*(15*zeta^2 + 10*zeta - 10)*q^1423 + 1/2*(-zeta^2 - 3*zeta + 3)*q^1424 + 
(zeta^2 + 3*zeta - 3)*q^1425 + (-3*zeta^2 - 2*zeta + 2)*q^1426 + 1/3*(22*zeta^2 
- 11*zeta - 66)*q^1427 + 1/3*(-26*zeta^2 - 22*zeta + 36)*q^1428 + 1/6*(38*zeta^2
- 19*zeta - 114)*q^1429 + 1/3*(-zeta^2 - 3*zeta + 3)*q^1431 + 1/3*(10*zeta^2 + 
30*zeta - 30)*q^1432 + 1/3*(84*zeta^2 + 56*zeta - 56)*q^1433 + 1/3*(-2*zeta^2 + 
zeta + 6)*q^1434 + 1/3*(6*zeta^2 - 3*zeta - 11)*q^1435 + 1/3*(-10*zeta^2 + 
5*zeta + 30)*q^1436 + (-24*zeta^2 - 16*zeta + 16)*q^1437 + 1/3*(-11*zeta^2 - 
33*zeta + 33)*q^1438 + 1/3*(-16*zeta^2 - 48*zeta + 48)*q^1439 + 1/3*(-15*zeta^2 
- 10*zeta + 10)*q^1440 + 1/3*(-16*zeta^2 + 8*zeta + 48)*q^1441 + 1/3*(zeta^2 - 
4*zeta - 3)*q^1442 + 1/6*(33*zeta^2 + 22*zeta - 22)*q^1444 + 1/6*(13*zeta^2 + 
39*zeta - 39)*q^1445 + (3*zeta^2 + 9*zeta - 9)*q^1446 + 1/3*(66*zeta^2 + 44*zeta
- 44)*q^1447 + 1/3*(10*zeta^2 - 5*zeta - 30)*q^1448 + 1/3*(-36*zeta^2 - 3*zeta +
59)*q^1449 + 1/3*(51*zeta^2 + 34*zeta - 34)*q^1451 + 1/3*(22*zeta^2 + 66*zeta - 
66)*q^1452 + 1/3*(26*zeta^2 + 78*zeta - 78)*q^1453 + 1/6*(3*zeta^2 + 2*zeta - 
2)*q^1454 + (3*zeta^2 + 9*zeta - 2)*q^1456 + (4*zeta^2 - 2*zeta - 12)*q^1457 + 
1/3*(3*zeta^2 + 2*zeta - 2)*q^1458 + 1/3*(25*zeta^2 + 75*zeta - 75)*q^1459 + 
1/3*(4*zeta^2 + 12*zeta - 12)*q^1460 + 1/3*(48*zeta^2 + 32*zeta - 32)*q^1461 + 
1/3*(-8*zeta^2 + 4*zeta + 24)*q^1462 + 1/3*(66*zeta^2 + 72*zeta - 86)*q^1463 + 
1/2*(26*zeta^2 - 13*zeta - 78)*q^1464 + 1/3*(-24*zeta^2 - 16*zeta + 16)*q^1465 +
1/3*(-26*zeta^2 - 78*zeta + 78)*q^1467 + 1/3*(24*zeta^2 + 16*zeta - 16)*q^1468 +
(-4*zeta^2 + 2*zeta + 12)*q^1469 + 1/6*(-23*zeta^2 + 8*zeta + 41)*q^1470 + 
1/3*(8*zeta^2 - 4*zeta - 24)*q^1471 + 1/3*(12*zeta^2 + 8*zeta - 8)*q^1472 + 
1/3*(14*zeta^2 + 42*zeta - 42)*q^1473 + (4*zeta^2 + 12*zeta - 12)*q^1474 + 
1/3*(-15*zeta^2 - 10*zeta + 10)*q^1475 + 1/3*(-22*zeta^2 + 11*zeta + 66)*q^1476 
+ (zeta^2 - 4*zeta - 3)*q^1477 + 1/3*(22*zeta^2 - 11*zeta - 66)*q^1478 + 
1/3*(3*zeta^2 + 2*zeta - 2)*q^1479 + 1/2*(5*zeta^2 + 15*zeta - 15)*q^1481 + 
1/3*(6*zeta^2 + 4*zeta - 4)*q^1482 + (-22*zeta^2 + 11*zeta + 66)*q^1483 + 
1/3*(-zeta^2 + 67*zeta + 24)*q^1484 + 1/3*(2*zeta^2 - zeta - 6)*q^1485 + 
1/6*(-15*zeta^2 - 10*zeta + 10)*q^1486 + (7*zeta^2 + 21*zeta - 21)*q^1487 + 
(6*zeta^2 + 18*zeta - 18)*q^1488 + 1/6*(21*zeta^2 + 14*zeta - 14)*q^1489 + 
1/3*(-2*zeta^2 + zeta + 6)*q^1490 + 1/3*(-160*zeta^2 - 11*zeta + 263)*q^1491 + 
1/3*(32*zeta^2 - 16*zeta - 96)*q^1492 + 1/3*(84*zeta^2 + 56*zeta - 56)*q^1493 + 
1/3*(zeta^2 + 3*zeta - 3)*q^1494 + 1/3*(zeta^2 + 3*zeta - 3)*q^1495 + 
1/3*(-12*zeta^2 - 8*zeta + 8)*q^1496 + 1/3*(-10*zeta^2 + 5*zeta + 30)*q^1497 + 
1/3*(-15*zeta^2 + 18*zeta + 31)*q^1498 + 1/3*(-14*zeta^2 + 7*zeta + 42)*q^1499 +
1/3*(-6*zeta^2 - 4*zeta + 4)*q^1500 + 1/3*(8*zeta^2 + 24*zeta - 24)*q^1501 + 
1/3*(-2*zeta^2 - 6*zeta + 6)*q^1502 + 1/3*(57*zeta^2 + 38*zeta - 38)*q^1503 + 
1/3*(8*zeta^2 - 4*zeta - 24)*q^1504 + 1/6*(-9*zeta^2 + 57*zeta + 34)*q^1505 + 
1/3*(10*zeta^2 - 5*zeta - 30)*q^1506 + 1/3*(12*zeta^2 + 8*zeta - 8)*q^1507 + 
1/3*(-2*zeta^2 - 6*zeta + 6)*q^1508 + 1/6*(-79*zeta^2 - 237*zeta + 237)*q^1509 +
1/3*(6*zeta^2 + 4*zeta - 4)*q^1510 + 1/3*(-28*zeta^2 + 14*zeta + 84)*q^1511 + 
1/3*(14*zeta^2 + 7*zeta - 21)*q^1512 + 1/3*(8*zeta^2 - 4*zeta - 24)*q^1513 + 
(-9*zeta^2 - 6*zeta + 6)*q^1514 + 1/3*(-13*zeta^2 - 39*zeta + 39)*q^1515 + 
(3*zeta^2 + 9*zeta - 9)*q^1516 + 1/3*(-10*zeta^2 + 5*zeta + 30)*q^1518 + 
(31*zeta^2 + 23*zeta - 44)*q^1519 + (2*zeta^2 - zeta - 6)*q^1520 + 
1/3*(-51*zeta^2 - 34*zeta + 34)*q^1521 + 1/3*(-4*zeta^2 - 12*zeta + 12)*q^1522 +
1/3*(7*zeta^2 + 21*zeta - 21)*q^1523 + (-24*zeta^2 - 16*zeta + 16)*q^1524 + 
1/2*(6*zeta^2 - 3*zeta - 18)*q^1525 + 1/6*(-51*zeta^2 - 6*zeta + 83)*q^1526 + 
1/3*(-50*zeta^2 + 25*zeta + 150)*q^1527 + (-9*zeta^2 - 6*zeta + 6)*q^1528 + 
1/3*(-26*zeta^2 - 78*zeta + 78)*q^1529 + 1/3*(2*zeta^2 + 6*zeta - 6)*q^1530 + 
1/3*(-48*zeta^2 - 32*zeta + 32)*q^1531 + 1/3*(28*zeta^2 - 14*zeta - 84)*q^1532 +
1/3*(-4*zeta^2 + 58*zeta + 26)*q^1533 + 1/3*(4*zeta^2 - 2*zeta - 12)*q^1534 + 
(-6*zeta^2 - 4*zeta + 4)*q^1535 + 1/2*(15*zeta^2 + 45*zeta - 45)*q^1536 + 
(-zeta^2 - 3*zeta + 3)*q^1537 + 1/3*(-24*zeta^2 - 16*zeta + 16)*q^1538 + 
1/3*(-26*zeta^2 + 13*zeta + 78)*q^1539 + 1/3*(-46*zeta^2 - 5*zeta + 75)*q^1540 +
1/6*(50*zeta^2 - 25*zeta - 150)*q^1541 + 1/3*(-24*zeta^2 - 16*zeta + 16)*q^1542 
+ 1/3*(-7*zeta^2 - 21*zeta + 21)*q^1543 + 1/3*(2*zeta^2 + 6*zeta - 6)*q^1544 + 
1/6*(3*zeta^2 + 2*zeta - 2)*q^1545 + 1/3*(22*zeta^2 - 11*zeta - 66)*q^1546 + 
1/3*(4*zeta^2 - 16*zeta - 12)*q^1547 + 1/3*(34*zeta^2 - 17*zeta - 102)*q^1548 + 
1/6*(-51*zeta^2 - 34*zeta + 34)*q^1549 + 1/3*(-10*zeta^2 - 30*zeta + 30)*q^1551 
+ (3*zeta^2 + 2*zeta - 2)*q^1552 + (4*zeta^2 - 2*zeta - 12)*q^1553 + (6*zeta^2 -
3*zeta - 18)*q^1555 + (-3*zeta^2 - 2*zeta + 2)*q^1556 + (8*zeta^2 + 24*zeta - 
24)*q^1557 + 1/3*(5*zeta^2 + 15*zeta - 15)*q^1558 + 1/3*(-30*zeta^2 - 20*zeta + 
20)*q^1559 + 1/3*(-4*zeta^2 + 2*zeta + 12)*q^1560 + 1/3*(-58*zeta^2 - 62*zeta + 
76)*q^1561 + 1/3*(-20*zeta^2 + 10*zeta + 60)*q^1562 + 1/3*(-60*zeta^2 - 40*zeta 
+ 40)*q^1563 + 1/3*(zeta^2 + 3*zeta - 3)*q^1564 + 1/3*(8*zeta^2 + 24*zeta - 
24)*q^1565 + 1/6*(-3*zeta^2 - 2*zeta + 2)*q^1566 + 1/3*(-2*zeta^2 + zeta + 
6)*q^1567 + 1/3*(65*zeta^2 + 55*zeta - 90)*q^1568 + (-16*zeta^2 + 8*zeta + 
48)*q^1569 + 1/3*(12*zeta^2 + 8*zeta - 8)*q^1570 + 1/3*(17*zeta^2 + 51*zeta - 
51)*q^1571 + 1/3*(4*zeta^2 + 12*zeta - 12)*q^1572 + 1/3*(24*zeta^2 + 16*zeta - 
16)*q^1573 + 1/6*(-22*zeta^2 + 11*zeta + 66)*q^1574 + 1/3*(-17*zeta^2 - 16*zeta 
+ 23)*q^1575 + 1/3*(40*zeta^2 - 20*zeta - 120)*q^1576 + 1/3*(51*zeta^2 + 34*zeta
- 34)*q^1577 + (2*zeta^2 + 6*zeta - 6)*q^1578 + (-3*zeta^2 - 2*zeta + 2)*q^1580 
+ (-4*zeta^2 + 2*zeta + 12)*q^1581 + 1/3*(9*zeta^2 - 15*zeta - 20)*q^1582 + 
(2*zeta^2 - zeta - 6)*q^1583 + (18*zeta^2 + 12*zeta - 12)*q^1584 + 
1/3*(-10*zeta^2 - 30*zeta + 30)*q^1585 + (zeta^2 + 3*zeta - 3)*q^1586 + 
1/3*(-51*zeta^2 - 34*zeta + 34)*q^1587 + (18*zeta^2 - 9*zeta - 54)*q^1588 + 
1/3*(146*zeta^2 + 4*zeta - 242)*q^1589 + (-2*zeta^2 + zeta + 6)*q^1590 + 
1/3*(2*zeta^2 + 6*zeta - 6)*q^1592 + (-zeta^2 - 3*zeta + 3)*q^1593 + 
1/3*(4*zeta^2 - 2*zeta - 12)*q^1595 + 1/3*(68*zeta^2 + zeta - 113)*q^1596 + 
1/3*(8*zeta^2 - 4*zeta - 24)*q^1597 + 1/3*(6*zeta^2 + 4*zeta - 4)*q^1598 + 
(zeta^2 + 3*zeta - 3)*q^1599 + 1/6*(5*zeta^2 + 15*zeta - 15)*q^1600 + 
1/2*(3*zeta^2 + 2*zeta - 2)*q^1601 + (-2*zeta^2 + zeta + 6)*q^1602 + 
1/3*(8*zeta^2 + 10*zeta - 10)*q^1603 + 1/6*(-10*zeta^2 + 5*zeta + 30)*q^1604 + 
1/6*(15*zeta^2 + 10*zeta - 10)*q^1605 + 1/3*(4*zeta^2 + 12*zeta - 12)*q^1606 + 
1/3*(-7*zeta^2 - 21*zeta + 21)*q^1607 + 1/3*(57*zeta^2 + 38*zeta - 38)*q^1608 + 
1/6*(26*zeta^2 - 13*zeta - 78)*q^1609 + 1/3*(-4*zeta^2 - 5*zeta + 5)*q^1610 + 
1/3*(20*zeta^2 - 10*zeta - 60)*q^1611 + (12*zeta^2 + 8*zeta - 8)*q^1612 + 
1/3*(-22*zeta^2 - 66*zeta + 66)*q^1613 + 1/6*(-23*zeta^2 - 69*zeta + 69)*q^1614 
+ 1/3*(6*zeta^2 + 4*zeta - 4)*q^1615 + 1/2*(-18*zeta^2 + 9*zeta + 54)*q^1616 + 
1/3*(151*zeta^2 - 16*zeta - 257)*q^1617 + 1/3*(-16*zeta^2 + 8*zeta + 48)*q^1618 
+ 1/3*(-33*zeta^2 - 22*zeta + 22)*q^1619 + 1/6*(-19*zeta^2 - 57*zeta + 
57)*q^1620 + 1/6*(47*zeta^2 + 141*zeta - 141)*q^1621 + 1/3*(-24*zeta^2 - 16*zeta
+ 16)*q^1622 + 1/3*(-38*zeta^2 + 19*zeta + 114)*q^1623 + 1/6*(7*zeta^2 + 14*zeta
- 7)*q^1624 + 1/3*(-3*zeta^2 - 2*zeta + 2)*q^1626 + (9*zeta^2 + 27*zeta - 
27)*q^1627 + 1/3*(-33*zeta^2 - 22*zeta + 22)*q^1629 + 1/3*(4*zeta^2 - 2*zeta - 
12)*q^1630 + 1/3*(15*zeta^2 - 39*zeta - 38)*q^1631 + 1/3*(-8*zeta^2 + 4*zeta + 
24)*q^1632 + 1/3*(39*zeta^2 + 26*zeta - 26)*q^1633 + 1/3*(-5*zeta^2 - 15*zeta + 
15)*q^1634 + 1/3*(-4*zeta^2 - 12*zeta + 12)*q^1635 + 1/6*(-141*zeta^2 - 94*zeta 
+ 94)*q^1636 + (18*zeta^2 - 9*zeta - 54)*q^1637 + 1/3*(-16*zeta^2 + 22*zeta + 
34)*q^1638 + 1/3*(32*zeta^2 - 16*zeta - 96)*q^1639 + 1/3*(-12*zeta^2 - 8*zeta + 
8)*q^1640 + 1/2*(-3*zeta^2 - 9*zeta + 9)*q^1641 + (-4*zeta^2 - 12*zeta + 
12)*q^1642 + (18*zeta^2 + 12*zeta - 12)*q^1643 + 1/3*(4*zeta^2 - 2*zeta - 
12)*q^1644 + 1/3*(10*zeta^2 + 2*zeta - 16)*q^1645 + 1/6*(-10*zeta^2 + 5*zeta + 
30)*q^1646 + (3*zeta^2 + 2*zeta - 2)*q^1647 + 1/3*(-4*zeta^2 - 12*zeta + 
12)*q^1649 + 1/3*(-6*zeta^2 - 4*zeta + 4)*q^1650 + 1/3*(-16*zeta^2 + 8*zeta + 
48)*q^1651 + 1/3*(-19*zeta^2 + 97*zeta + 64)*q^1652 + (-2*zeta^2 + zeta + 
6)*q^1653 + 1/2*(-15*zeta^2 - 10*zeta + 10)*q^1654 + (zeta^2 + 3*zeta - 
3)*q^1655 + 1/3*(5*zeta^2 + 15*zeta - 15)*q^1656 + (3*zeta^2 + 2*zeta - 
2)*q^1657 + 1/3*(-8*zeta^2 + 4*zeta + 24)*q^1658 + 1/3*(-117*zeta^2 - 120*zeta +
155)*q^1659 + 1/3*(-26*zeta^2 + 13*zeta + 78)*q^1660 + 1/3*(-4*zeta^2 - 12*zeta 
+ 12)*q^1662 + 1/3*(-14*zeta^2 - 42*zeta + 42)*q^1663 + 1/3*(33*zeta^2 + 22*zeta
- 22)*q^1664 + 1/3*(32*zeta^2 + 19*zeta - 47)*q^1666 + 1/3*(56*zeta^2 - 28*zeta 
- 168)*q^1667 + (-21*zeta^2 - 14*zeta + 14)*q^1668 + (-3*zeta^2 - 9*zeta + 
9)*q^1669 + 1/6*(-zeta^2 - 3*zeta + 3)*q^1670 + (-36*zeta^2 - 24*zeta + 
24)*q^1671 + 1/3*(20*zeta^2 - 10*zeta - 60)*q^1672 + 1/3*(-28*zeta^2 - 14*zeta +
42)*q^1673 + (2*zeta^2 - zeta - 6)*q^1674 + (6*zeta^2 + 4*zeta - 4)*q^1675 + 
(-6*zeta^2 - 18*zeta + 18)*q^1676 + (-2*zeta^2 - 6*zeta + 6)*q^1677 + 
1/3*(-3*zeta^2 - 2*zeta + 2)*q^1678 + 1/3*(10*zeta^2 - 5*zeta - 30)*q^1679 + 
1/2*(-zeta^2 + 25*zeta + 10)*q^1680 + 1/3*(28*zeta^2 - 14*zeta - 84)*q^1681 + 
1/3*(4*zeta^2 + 12*zeta - 12)*q^1683 + 1/6*(-13*zeta^2 - 39*zeta + 39)*q^1684 + 
1/3*(21*zeta^2 + 14*zeta - 14)*q^1685 + (6*zeta^2 - 3*zeta - 18)*q^1686 + 
1/3*(78*zeta^2 + 24*zeta - 122)*q^1687 + (-6*zeta^2 + 3*zeta + 18)*q^1688 + 
1/6*(93*zeta^2 + 62*zeta - 62)*q^1689 + 1/3*(-4*zeta^2 - 12*zeta + 12)*q^1690 + 
1/3*(5*zeta^2 + 15*zeta - 15)*q^1691 + (-6*zeta^2 - 4*zeta + 4)*q^1692 + 
(-8*zeta^2 + 4*zeta + 24)*q^1693 + 1/6*(-38*zeta^2 - 37*zeta + 51)*q^1694 + 
1/3*(-26*zeta^2 + 13*zeta + 78)*q^1695 + 1/3*(39*zeta^2 + 26*zeta - 26)*q^1696 +
(2*zeta^2 + 6*zeta - 6)*q^1697 + 1/3*(7*zeta^2 + 21*zeta - 21)*q^1698 + 
(6*zeta^2 + 4*zeta - 4)*q^1699 + 1/3*(-4*zeta^2 + 2*zeta + 12)*q^1700 + 
1/3*(14*zeta^2 - 98*zeta - 56)*q^1701 + 1/3*(24*zeta^2 + 16*zeta - 16)*q^1703 + 
(7*zeta^2 + 21*zeta - 21)*q^1704 + (4*zeta^2 + 12*zeta - 12)*q^1705 + (-9*zeta^2
- 6*zeta + 6)*q^1706 + 1/3*(8*zeta^2 - 4*zeta - 24)*q^1707 + (-28*zeta^2 - 
35*zeta + 35)*q^1708 + 1/3*(26*zeta^2 - 13*zeta - 78)*q^1709 + 1/3*(-5*zeta^2 - 
15*zeta + 15)*q^1711 + (-2*zeta^2 - 6*zeta + 6)*q^1712 + (15*zeta^2 + 10*zeta - 
10)*q^1713 + 1/3*(-20*zeta^2 + 10*zeta + 60)*q^1714 + 1/3*(-43*zeta^2 - 38*zeta 
+ 59)*q^1715 + 1/3*(16*zeta^2 - 8*zeta - 48)*q^1716 + 1/3*(-24*zeta^2 - 16*zeta 
+ 16)*q^1717 + 1/3*(8*zeta^2 + 24*zeta - 24)*q^1718 + (2*zeta^2 + 6*zeta - 
6)*q^1719 + 1/6*(33*zeta^2 + 22*zeta - 22)*q^1720 + 1/3*(2*zeta^2 - zeta - 
6)*q^1721 + 1/3*(-3*zeta^2 - 9*zeta + 2)*q^1722 + 1/3*(-46*zeta^2 + 23*zeta + 
138)*q^1723 + 1/3*(66*zeta^2 + 44*zeta - 44)*q^1724 + 1/6*(5*zeta^2 + 15*zeta - 
15)*q^1725 + 1/6*(-11*zeta^2 - 33*zeta + 33)*q^1726 + (-12*zeta^2 - 8*zeta + 
8)*q^1727 + 1/3*(2*zeta^2 - zeta - 6)*q^1728 + 1/3*(10*zeta^2 + 2*zeta - 
16)*q^1729 + 1/3*(-8*zeta^2 + 4*zeta + 24)*q^1730 + 1/3*(78*zeta^2 + 52*zeta - 
52)*q^1731 + (-9*zeta^2 - 27*zeta + 27)*q^1732 + 1/3*(-2*zeta^2 - 6*zeta + 
6)*q^1733 + 1/6*(39*zeta^2 + 26*zeta - 26)*q^1734 + 1/3*(-20*zeta^2 + 10*zeta + 
60)*q^1735 + (-14*zeta^2 - 7*zeta + 21)*q^1736 + 1/3*(4*zeta^2 - 2*zeta - 
12)*q^1737 + 1/3*(-30*zeta^2 - 20*zeta + 20)*q^1738 + 1/3*(-2*zeta^2 - 6*zeta + 
6)*q^1740 + 1/2*(21*zeta^2 + 14*zeta - 14)*q^1741 + 1/3*(20*zeta^2 - 10*zeta - 
60)*q^1742 + 1/3*(-149*zeta^2 - 13*zeta + 244)*q^1743 + 1/2*(-2*zeta^2 + zeta + 
6)*q^1744 + 1/6*(-75*zeta^2 - 50*zeta + 50)*q^1745 + (2*zeta^2 + 6*zeta - 
6)*q^1746 + (zeta^2 + 3*zeta - 3)*q^1747 + 1/3*(-15*zeta^2 - 10*zeta + 
10)*q^1748 + 1/3*(68*zeta^2 - 34*zeta - 204)*q^1749 + 1/6*(-3*zeta^2 - 9*zeta + 
2)*q^1750 + 1/3*(2*zeta^2 - zeta - 6)*q^1751 + 1/3*(24*zeta^2 + 16*zeta - 
16)*q^1752 + (-3*zeta^2 - 9*zeta + 9)*q^1753 + 1/3*(zeta^2 + 3*zeta - 3)*q^1754 
+ 1/3*(-3*zeta^2 - 2*zeta + 2)*q^1755 + (24*zeta^2 - 12*zeta - 72)*q^1756 + 
1/3*(-76*zeta^2 - 74*zeta + 102)*q^1757 + 1/3*(-16*zeta^2 + 8*zeta + 48)*q^1758 
+ (-18*zeta^2 - 12*zeta + 12)*q^1759 + (3*zeta^2 + 9*zeta - 9)*q^1760 + 
(-8*zeta^2 - 24*zeta + 24)*q^1761 + 1/3*(3*zeta^2 + 2*zeta - 2)*q^1762 + 
1/3*(16*zeta^2 - 8*zeta - 48)*q^1763 + 1/3*(-36*zeta^2 - 87*zeta + 31)*q^1764 + 
1/3*(22*zeta^2 - 11*zeta - 66)*q^1765 + 1/3*(30*zeta^2 + 20*zeta - 20)*q^1766 + 
(-6*zeta^2 - 18*zeta + 18)*q^1767 + 1/3*(8*zeta^2 + 24*zeta - 24)*q^1768 + 
1/2*(9*zeta^2 + 6*zeta - 6)*q^1769 + 1/3*(-10*zeta^2 + 5*zeta + 30)*q^1770 + 
1/3*(58*zeta^2 + 62*zeta - 76)*q^1771 + (-12*zeta^2 + 6*zeta + 36)*q^1772 + 
1/3*(-78*zeta^2 - 52*zeta + 52)*q^1773 + 1/6*(5*zeta^2 + 15*zeta - 15)*q^1774 + 
1/3*(5*zeta^2 + 15*zeta - 15)*q^1775 + (-22*zeta^2 + 11*zeta + 66)*q^1777 + 
1/3*(17*zeta^2 - 5*zeta - 30)*q^1778 + (-30*zeta^2 + 15*zeta + 90)*q^1779 + 
1/2*(-9*zeta^2 - 6*zeta + 6)*q^1780 + 1/3*(-4*zeta^2 - 12*zeta + 12)*q^1781 + 
1/3*(-7*zeta^2 - 21*zeta + 21)*q^1782 + 1/3*(-15*zeta^2 - 10*zeta + 10)*q^1783 +
1/3*(-16*zeta^2 + 8*zeta + 48)*q^1784 + 1/3*(-10*zeta^2 - 2*zeta + 16)*q^1785 + 
1/3*(-4*zeta^2 + 2*zeta + 12)*q^1786 + 1/3*(-33*zeta^2 - 22*zeta + 22)*q^1787 + 
(-5*zeta^2 - 15*zeta + 15)*q^1788 + 1/2*(15*zeta^2 + 45*zeta - 45)*q^1789 + 
1/3*(-8*zeta^2 + 4*zeta + 24)*q^1791 + 1/3*(31*zeta^2 - 19*zeta - 58)*q^1792 + 
(-32*zeta^2 + 16*zeta + 96)*q^1793 + 1/3*(3*zeta^2 + 2*zeta - 2)*q^1794 + 
1/3*(5*zeta^2 + 15*zeta - 15)*q^1795 + 1/6*(-5*zeta^2 - 15*zeta + 15)*q^1796 + 
(18*zeta^2 + 12*zeta - 12)*q^1797 + 1/3*(-10*zeta^2 + 82*zeta + 44)*q^1799 + 
1/3*(-2*zeta^2 + zeta + 6)*q^1800 + 1/2*(-51*zeta^2 - 34*zeta + 34)*q^1801 + 
1/3*(2*zeta^2 + 6*zeta - 6)*q^1802 + 1/3*(-8*zeta^2 - 24*zeta + 24)*q^1803 + 
1/3*(30*zeta^2 + 20*zeta - 20)*q^1804 + 1/6*(22*zeta^2 - 11*zeta - 66)*q^1805 + 
1/6*(57*zeta^2 + 66*zeta - 73)*q^1806 + 1/3*(-20*zeta^2 + 10*zeta + 60)*q^1807 +
(15*zeta^2 + 10*zeta - 10)*q^1808 + 1/6*(zeta^2 + 3*zeta - 3)*q^1809 + 
1/3*(-2*zeta^2 - 6*zeta + 6)*q^1810 + 1/3*(-75*zeta^2 - 50*zeta + 50)*q^1811 + 
1/3*(4*zeta^2 - 2*zeta - 12)*q^1812 + 1/2*(10*zeta^2 - 5*zeta - 30)*q^1814 + 
1/3*(39*zeta^2 + 26*zeta - 26)*q^1815 + 1/3*(-16*zeta^2 - 48*zeta + 48)*q^1816 +
(3*zeta^2 + 9*zeta - 9)*q^1817 + 1/3*(-3*zeta^2 - 2*zeta + 2)*q^1818 + 
(-2*zeta^2 + zeta + 6)*q^1819 + 1/3*(-11*zeta^2 + 2*zeta + 19)*q^1820 + 
1/6*(22*zeta^2 - 11*zeta - 66)*q^1821 + 1/3*(21*zeta^2 + 14*zeta - 14)*q^1822 + 
1/3*(-35*zeta^2 - 105*zeta + 105)*q^1823 + 1/3*(-13*zeta^2 - 39*zeta + 
39)*q^1824 + 1/3*(6*zeta^2 + 4*zeta - 4)*q^1825 + 1/3*(-16*zeta^2 + 8*zeta + 
48)*q^1826 + 1/3*(-zeta^2 - 17*zeta - 4)*q^1827 + 1/3*(-64*zeta^2 + 32*zeta + 
192)*q^1828 + (30*zeta^2 + 20*zeta - 20)*q^1829 + 1/2*(-3*zeta^2 - 9*zeta + 
9)*q^1830 + 1/3*(-14*zeta^2 - 42*zeta + 42)*q^1831 + 1/3*(-12*zeta^2 - 8*zeta + 
8)*q^1832 + 1/3*(-4*zeta^2 + 2*zeta + 12)*q^1833 + 1/3*(8*zeta^2 - 32*zeta - 
24)*q^1834 + 1/3*(10*zeta^2 - 5*zeta - 30)*q^1835 + (3*zeta^2 + 2*zeta - 
2)*q^1836 + (-13*zeta^2 - 39*zeta + 39)*q^1837 + 1/3*(11*zeta^2 + 33*zeta - 
33)*q^1838 + 1/3*(-51*zeta^2 - 34*zeta + 34)*q^1839 + (2*zeta^2 - zeta - 
6)*q^1840 + 1/6*(222*zeta^2 - 27*zeta - 379)*q^1841 + (-4*zeta^2 + 2*zeta + 
12)*q^1842 + 1/3*(6*zeta^2 + 4*zeta - 4)*q^1843 + (zeta^2 + 3*zeta - 3)*q^1844 +
1/3*(zeta^2 + 3*zeta - 3)*q^1845 + 1/3*(-6*zeta^2 - 4*zeta + 4)*q^1846 + 
1/3*(-50*zeta^2 + 25*zeta + 150)*q^1847 + 1/3*(-7*zeta^2 + 91*zeta + 42)*q^1848 
+ (2*zeta^2 - zeta - 6)*q^1849 + (4*zeta^2 + 12*zeta - 12)*q^1851 + 
1/3*(19*zeta^2 + 57*zeta - 57)*q^1852 + (-6*zeta^2 - 4*zeta + 4)*q^1853 + 
1/3*(-2*zeta^2 + zeta + 6)*q^1854 + 1/3*(33*zeta^2 + 36*zeta - 43)*q^1855 + 
1/6*(-10*zeta^2 + 5*zeta + 30)*q^1856 + 1/3*(129*zeta^2 + 86*zeta - 86)*q^1857 +
(-zeta^2 - 3*zeta + 3)*q^1858 + 1/3*(26*zeta^2 + 78*zeta - 78)*q^1859 + 
(12*zeta^2 + 8*zeta - 8)*q^1860 + 1/6*(70*zeta^2 - 35*zeta - 210)*q^1861 + 
1/3*(-25*zeta^2 - 5*zeta + 40)*q^1862 + 1/3*(-20*zeta^2 + 10*zeta + 60)*q^1863 +
1/3*(-39*zeta^2 - 26*zeta + 26)*q^1864 + 1/3*(-4*zeta^2 - 12*zeta + 12)*q^1865 +
(-3*zeta^2 - 9*zeta + 9)*q^1866 + (-21*zeta^2 - 14*zeta + 14)*q^1867 + 
1/3*(-34*zeta^2 + 17*zeta + 102)*q^1868 + 1/6*(-57*zeta^2 - 66*zeta + 73)*q^1869
+ 1/3*(48*zeta^2 + 32*zeta - 32)*q^1871 + (-2*zeta^2 - 6*zeta + 6)*q^1872 + 
1/3*(zeta^2 + 3*zeta - 3)*q^1873 + 1/3*(24*zeta^2 + 16*zeta - 16)*q^1874 + 
1/3*(-2*zeta^2 + zeta + 6)*q^1875 + 1/6*(-35*zeta^2 - 301*zeta - 42)*q^1876 + 
(-8*zeta^2 + 4*zeta + 24)*q^1877 + 1/3*(24*zeta^2 + 16*zeta - 16)*q^1878 + 
1/3*(11*zeta^2 + 33*zeta - 33)*q^1879 + 1/3*(-2*zeta^2 - 6*zeta + 6)*q^1880 + 
1/3*(-48*zeta^2 - 32*zeta + 32)*q^1881 + 1/3*(20*zeta^2 - 10*zeta - 60)*q^1882 +
1/3*(-169*zeta^2 + 4*zeta + 283)*q^1883 + 1/3*(-16*zeta^2 + 8*zeta + 48)*q^1884 
+ 1/2*(zeta^2 + 3*zeta - 3)*q^1886 + 1/3*(69*zeta^2 + 46*zeta - 46)*q^1888 + 
(-6*zeta^2 + 3*zeta + 18)*q^1889 + 1/3*(-zeta^2 + 4*zeta + 3)*q^1890 + 
(-18*zeta^2 + 9*zeta + 54)*q^1891 + 1/3*(-75*zeta^2 - 50*zeta + 50)*q^1892 + 
(-3*zeta^2 - 9*zeta + 9)*q^1893 + 1/2*(-9*zeta^2 - 27*zeta + 27)*q^1894 + 
1/3*(33*zeta^2 + 22*zeta - 22)*q^1895 + 1/3*(-26*zeta^2 + 13*zeta + 78)*q^1896 +
1/3*(-11*zeta^2 - 19*zeta + 12)*q^1897 + (-zeta^2 - 3*zeta + 3)*q^1900 + 
1/2*(-13*zeta^2 - 39*zeta + 39)*q^1901 + 1/3*(-30*zeta^2 - 20*zeta + 20)*q^1902 
+ 1/3*(80*zeta^2 - 40*zeta - 240)*q^1903 + (9*zeta^2 + 6*zeta - 13)*q^1904 + 
1/3*(-28*zeta^2 + 14*zeta + 84)*q^1905 + 1/3*(-6*zeta^2 - 4*zeta + 4)*q^1906 + 
(10*zeta^2 + 30*zeta - 30)*q^1907 + 1/3*(-16*zeta^2 - 48*zeta + 48)*q^1908 + 
1/6*(75*zeta^2 + 50*zeta - 50)*q^1909 + 1/3*(2*zeta^2 - zeta - 6)*q^1910 + 
1/3*(-31*zeta^2 - 23*zeta + 44)*q^1911 + (4*zeta^2 - 2*zeta - 12)*q^1912 + 
1/3*(-30*zeta^2 - 20*zeta + 20)*q^1913 + 1/3*(-2*zeta^2 - 6*zeta + 6)*q^1914 + 
1/3*(-7*zeta^2 - 21*zeta + 21)*q^1915 + (9*zeta^2 + 6*zeta - 6)*q^1916 + 
(-2*zeta^2 + zeta + 6)*q^1917 + 1/3*(-20*zeta^2 - 4*zeta + 32)*q^1918 + 
1/3*(34*zeta^2 - 17*zeta - 102)*q^1919 + 1/6*(69*zeta^2 + 46*zeta - 46)*q^1920 +
(2*zeta^2 + 6*zeta - 6)*q^1921 + 1/3*(42*zeta^2 + 28*zeta - 28)*q^1923 + 
1/3*(-zeta^2 + 25*zeta + 10)*q^1925 + 1/3*(14*zeta^2 - 7*zeta - 42)*q^1926 + 
(-3*zeta^2 - 2*zeta + 2)*q^1927 + 1/3*(-20*zeta^2 - 60*zeta + 60)*q^1928 + 
1/3*(32*zeta^2 + 96*zeta - 96)*q^1929 + 1/3*(40*zeta^2 - 20*zeta - 120)*q^1931 +
1/3*(57*zeta^2 + 3*zeta - 94)*q^1932 + (18*zeta^2 - 9*zeta - 54)*q^1933 + 
1/6*(69*zeta^2 + 46*zeta - 46)*q^1934 + 1/3*(-7*zeta^2 - 21*zeta + 21)*q^1935 + 
1/2*(-9*zeta^2 - 27*zeta + 27)*q^1936 + 1/3*(-6*zeta^2 - 4*zeta + 4)*q^1937 + 
1/3*(4*zeta^2 - 2*zeta - 12)*q^1938 + 1/3*(-70*zeta^2 + 7*zeta + 119)*q^1939 + 
(-2*zeta^2 + zeta + 6)*q^1940 + 1/6*(111*zeta^2 + 74*zeta - 74)*q^1941 + 
(2*zeta^2 + 6*zeta - 6)*q^1943 + (-18*zeta^2 - 12*zeta + 12)*q^1944 + 
1/3*(-14*zeta^2 + 7*zeta + 42)*q^1945 + 1/3*(28*zeta^2 + 14*zeta - 42)*q^1946 + 
1/3*(124*zeta^2 - 62*zeta - 372)*q^1947 + 1/3*(-33*zeta^2 - 22*zeta + 22)*q^1948
+ 1/2*(5*zeta^2 + 15*zeta - 15)*q^1949 + (-3*zeta^2 - 2*zeta + 2)*q^1951 + 
(-14*zeta^2 + 7*zeta + 42)*q^1952 + (34*zeta^2 + 32*zeta - 46)*q^1953 + 
1/3*(8*zeta^2 - 4*zeta - 24)*q^1954 + 1/3*(3*zeta^2 + 2*zeta - 2)*q^1955 + 
1/3*(46*zeta^2 + 138*zeta - 138)*q^1956 + 1/3*(zeta^2 + 3*zeta - 3)*q^1957 + 
1/3*(-3*zeta^2 - 2*zeta + 2)*q^1958 + 1/3*(50*zeta^2 - 25*zeta - 150)*q^1959 + 
1/3*(14*zeta^2 - 14*zeta - 28)*q^1960 + 1/3*(15*zeta^2 + 10*zeta - 10)*q^1962 + 
1/3*(4*zeta^2 + 12*zeta - 12)*q^1963 + 1/3*(-13*zeta^2 - 39*zeta + 39)*q^1964 + 
1/3*(12*zeta^2 + 8*zeta - 8)*q^1965 + 1/2*(-10*zeta^2 + 5*zeta + 30)*q^1966 + 
1/3*(-162*zeta^2 - 150*zeta + 220)*q^1967 + (4*zeta^2 - 2*zeta - 12)*q^1968 + 
1/3*(-60*zeta^2 - 40*zeta + 40)*q^1969 + 1/3*(-2*zeta^2 - 6*zeta + 6)*q^1970 + 
1/3*(zeta^2 + 3*zeta - 3)*q^1971 + 1/3*(-6*zeta^2 - 4*zeta + 4)*q^1972 + 
1/3*(-26*zeta^2 + 13*zeta + 78)*q^1973 + 1/3*(2*zeta^2 - 8*zeta - 6)*q^1974 + 
1/3*(-10*zeta^2 + 5*zeta + 30)*q^1975 + (-6*zeta^2 - 4*zeta + 4)*q^1976 + 
(-9*zeta^2 - 27*zeta + 27)*q^1977 + (-zeta^2 - 3*zeta + 3)*q^1978 + 
1/3*(-66*zeta^2 - 44*zeta + 44)*q^1979 + 1/3*(20*zeta^2 - 10*zeta - 60)*q^1980 +
1/3*(70*zeta^2 + 14*zeta - 112)*q^1981 + 1/3*(-4*zeta^2 + 2*zeta + 12)*q^1982 + 
1/3*(78*zeta^2 + 52*zeta - 52)*q^1983 + (-5*zeta^2 - 15*zeta + 15)*q^1984 + 
1/3*(-11*zeta^2 - 33*zeta + 33)*q^1985 + (3*zeta^2 + 2*zeta - 2)*q^1986 + 
(14*zeta^2 - 7*zeta - 42)*q^1987 + 1/3*(116*zeta^2 + 19*zeta - 187)*q^1988 + 
1/3*(-8*zeta^2 + 4*zeta + 24)*q^1989 + 1/3*(-6*zeta^2 - 4*zeta + 4)*q^1990 + 
(6*zeta^2 + 18*zeta - 18)*q^1991 + (7*zeta^2 + 21*zeta - 21)*q^1992 + 
1/3*(-48*zeta^2 - 32*zeta + 32)*q^1993 + (-6*zeta^2 + 3*zeta + 18)*q^1994 + 
1/3*(3*zeta^2 - 33*zeta - 16)*q^1995 + 1/3*(8*zeta^2 - 4*zeta - 24)*q^1996 + 
1/3*(-33*zeta^2 - 22*zeta + 22)*q^1997 + (-6*zeta^2 - 18*zeta + 18)*q^1999 + 
1/2*(3*zeta^2 + 2*zeta - 2)*q^2000 + 1/6*(-10*zeta^2 + 5*zeta + 30)*q^2001 + 
1/3*(18*zeta^2 + 12*zeta - 26)*q^2002 + (6*zeta^2 - 3*zeta - 18)*q^2003 + 
1/6*(-237*zeta^2 - 158*zeta + 158)*q^2004 + 1/6*(-11*zeta^2 - 33*zeta + 
33)*q^2005 + 1/3*(-2*zeta^2 - 6*zeta + 6)*q^2006 + 1/3*(42*zeta^2 + 28*zeta - 
28)*q^2007 + (-4*zeta^2 + 2*zeta + 12)*q^2008 + 1/6*(-48*zeta^2 - 81*zeta + 
53)*q^2009 + (4*zeta^2 - 2*zeta - 12)*q^2010 + (-33*zeta^2 - 22*zeta + 
22)*q^2011 + 1/3*(34*zeta^2 + 102*zeta - 102)*q^2012 + (19*zeta^2 + 57*zeta - 
57)*q^2013 + 1/3*(-12*zeta^2 - 8*zeta + 8)*q^2014 + 1/3*(67*zeta^2 + 68*zeta - 
89)*q^2016 + (16*zeta^2 - 8*zeta - 48)*q^2017 + 1/3*(12*zeta^2 + 8*zeta - 
8)*q^2018 + (-6*zeta^2 - 18*zeta + 18)*q^2019 + 1/6*(25*zeta^2 + 75*zeta - 
75)*q^2020 + (6*zeta^2 + 4*zeta - 4)*q^2021 + 1/3*(14*zeta^2 - 7*zeta - 
42)*q^2022 + 1/3*(zeta^2 - 88*zeta - 31)*q^2023 + 1/3*(16*zeta^2 - 8*zeta - 
48)*q^2024 + 1/6*(-21*zeta^2 - 14*zeta + 14)*q^2025 + (-zeta^2 - 3*zeta + 
3)*q^2026 + (-7*zeta^2 - 21*zeta + 21)*q^2027 + 1/3*(66*zeta^2 + 44*zeta - 
44)*q^2028 + 1/6*(50*zeta^2 - 25*zeta - 150)*q^2029 + 1/6*(6*zeta^2 - 3*zeta - 
11)*q^2030 + 1/3*(-2*zeta^2 + zeta + 6)*q^2031 + (15*zeta^2 + 10*zeta - 
10)*q^2032 + 1/3*(zeta^2 + 3*zeta - 3)*q^2033 + 1/3*(4*zeta^2 + 12*zeta - 
12)*q^2034 + 1/6*(62*zeta^2 - 31*zeta - 186)*q^2036 + 1/3*(6*zeta^2 - 3*zeta - 
11)*q^2037 + 1/3*(4*zeta^2 - 2*zeta - 12)*q^2038 + 1/3*(93*zeta^2 + 62*zeta - 
62)*q^2039 + 1/3*(2*zeta^2 + 6*zeta - 6)*q^2040 + 1/3*(8*zeta^2 + 24*zeta - 
24)*q^2041 + 1/3*(-6*zeta^2 - 4*zeta + 4)*q^2042 + 1/3*(-68*zeta^2 + 34*zeta + 
204)*q^2043 + 1/3*(5*zeta^2 - 41*zeta - 22)*q^2044 + 1/6*(-38*zeta^2 + 19*zeta +
114)*q^2045 + (12*zeta^2 + 8*zeta - 8)*q^2046 + (zeta^2 + 3*zeta - 3)*q^2047 + 
(-7*zeta^2 - 21*zeta + 21)*q^2048 + 1/2*(-87*zeta^2 - 58*zeta + 58)*q^2049 + 
1/3*(2*zeta^2 - zeta - 6)*q^2050 + 1/3*(64*zeta^2 + 80*zeta - 80)*q^2051 + 
1/3*(-2*zeta^2 + zeta + 6)*q^2052 + (-30*zeta^2 - 20*zeta + 20)*q^2053 + 
1/3*(14*zeta^2 + 42*zeta - 42)*q^2054 + 1/3*(-2*zeta^2 - 6*zeta + 6)*q^2055 + 
1/3*(42*zeta^2 + 28*zeta - 28)*q^2056 + 1/3*(16*zeta^2 - 8*zeta - 48)*q^2057 + 
1/3*(-38*zeta^2 + 5*zeta + 65)*q^2058 + 1/3*(-10*zeta^2 + 5*zeta + 30)*q^2059 + 
1/3*(-3*zeta^2 - 2*zeta + 2)*q^2060 + 1/3*(-2*zeta^2 - 6*zeta + 6)*q^2061 + 
1/3*(4*zeta^2 + 12*zeta - 12)*q^2062 + 1/3*(6*zeta^2 + 4*zeta - 4)*q^2063 + 
1/2*(-26*zeta^2 + 13*zeta + 78)*q^2064 + 1/3*(67*zeta^2 + 68*zeta - 89)*q^2065 +
(6*zeta^2 - 3*zeta - 18)*q^2066 + (-6*zeta^2 - 4*zeta + 4)*q^2067 + 
1/3*(8*zeta^2 + 24*zeta - 24)*q^2068 + 1/3*(-11*zeta^2 - 33*zeta + 33)*q^2069 + 
1/3*(3*zeta^2 + 2*zeta - 2)*q^2070 + 1/3*(14*zeta^2 - 7*zeta - 42)*q^2071 + 
1/3*(10*zeta^2 - 5*zeta - 30)*q^2073 + (3*zeta^2 + 2*zeta - 2)*q^2074 + 
1/3*(4*zeta^2 + 12*zeta - 12)*q^2075 + (-12*zeta^2 - 36*zeta + 36)*q^2076 + 
(-36*zeta^2 - 24*zeta + 24)*q^2077 + 1/3*(-4*zeta^2 + 2*zeta + 12)*q^2078 + 
1/3*(-10*zeta^2 - 2*zeta + 16)*q^2079 + 1/3*(2*zeta^2 - zeta - 6)*q^2080 + 
1/6*(93*zeta^2 + 62*zeta - 62)*q^2081 + 1/3*(10*zeta^2 + 30*zeta - 30)*q^2082 + 
1/3*(19*zeta^2 + 57*zeta - 57)*q^2083 + 1/3*(57*zeta^2 + 38*zeta - 38)*q^2084 + 
1/3*(-26*zeta^2 + 13*zeta + 78)*q^2085 + 1/6*(38*zeta^2 - 5*zeta - 65)*q^2086 + 
1/3*(-64*zeta^2 + 32*zeta + 192)*q^2087 + 1/3*(-3*zeta^2 - 2*zeta + 2)*q^2088 + 
1/6*(11*zeta^2 + 33*zeta - 33)*q^2089 + 1/3*(-2*zeta^2 - 6*zeta + 6)*q^2090 + 
(3*zeta^2 + 2*zeta - 2)*q^2091 + (6*zeta^2 - 3*zeta - 18)*q^2092 + 1/3*(2*zeta^2
- 8*zeta - 6)*q^2093 + 1/6*(-50*zeta^2 + 25*zeta + 150)*q^2094 + 1/3*(-30*zeta^2
- 20*zeta + 20)*q^2095 + 1/3*(10*zeta^2 + 30*zeta - 30)*q^2097 + (18*zeta^2 + 
12*zeta - 12)*q^2098 + 1/3*(-16*zeta^2 + 8*zeta + 48)*q^2099 + O(q^2100), 
1/2*(-3*zeta^2 - 2*zeta + 2)*q^2 + 1/2*(-zeta^2 - 3*zeta + 3)*q^3 + (zeta^2 + 
3*zeta - 3)*q^4 + 1/2*(-9*zeta^2 - 6*zeta + 13)*q^7 + 1/2*(2*zeta^2 - zeta - 
6)*q^8 + (3*zeta^2 + 2*zeta - 2)*q^9 + 1/2*(zeta^2 + 3*zeta - 3)*q^10 + (-zeta^2
- 3*zeta + 3)*q^11 + 1/2*(-3*zeta^2 - 2*zeta + 2)*q^12 + (-2*zeta^2 + zeta + 
6)*q^13 + (4*zeta^2 + 5*zeta - 5)*q^14 + 1/2*(-2*zeta^2 + zeta + 6)*q^15 + 
(zeta^2 + 3*zeta - 3)*q^17 + (-zeta^2 - 3*zeta + 3)*q^18 + (-3*zeta^2 - 2*zeta +
2)*q^19 + (2*zeta^2 - zeta - 6)*q^20 + (5*zeta^2 + zeta - 8)*q^21 + 
1/2*(-3*zeta^2 - 2*zeta + 2)*q^23 + (-zeta^2 - 3*zeta + 3)*q^24 + (6*zeta^2 + 
4*zeta - 4)*q^26 + 1/2*(2*zeta^2 - zeta - 6)*q^27 + 1/2*(-2*zeta^2 - 13*zeta - 
1)*q^28 + 1/2*(zeta^2 + 3*zeta - 3)*q^32 + (6*zeta^2 + 4*zeta - 4)*q^33 + 
(4*zeta^2 - 2*zeta - 12)*q^34 + 1/2*(3*zeta^2 + 9*zeta - 2)*q^35 + (-2*zeta^2 + 
zeta + 6)*q^36 + (zeta^2 + 3*zeta - 3)*q^38 + 1/2*(-3*zeta^2 - 2*zeta + 2)*q^40 
+ (-2*zeta^2 + zeta + 6)*q^41 + 1/2*(9*zeta^2 + 6*zeta - 13)*q^42 + 
1/2*(-2*zeta^2 + zeta + 6)*q^43 + (-3*zeta^2 - 2*zeta + 2)*q^44 + (-zeta^2 - 
3*zeta + 3)*q^45 + 1/2*(-6*zeta^2 + 3*zeta + 18)*q^48 + (-6*zeta^2 + 3*zeta + 
11)*q^49 + 1/2*(2*zeta^2 - zeta - 6)*q^50 + (-3*zeta^2 - 9*zeta + 9)*q^52 + 
(zeta^2 + 3*zeta - 3)*q^53 + (-3*zeta^2 - 2*zeta + 2)*q^54 + (-2*zeta^2 + zeta +
6)*q^55 + (-14*zeta^2 - 7*zeta + 21)*q^56 + (2*zeta^2 - zeta - 6)*q^57 + 
1/2*(3*zeta^2 + 2*zeta - 2)*q^58 + (3*zeta^2 + 9*zeta - 9)*q^59 + 1/2*(zeta^2 + 
3*zeta - 3)*q^60 + (-9*zeta^2 - 6*zeta + 6)*q^61 + (-6*zeta^2 + 3*zeta + 
18)*q^62 + (-5*zeta^2 - zeta + 8)*q^63 + (-2*zeta^2 + zeta + 6)*q^64 + (3*zeta^2
+ 2*zeta - 2)*q^65 + (zeta^2 + 3*zeta - 3)*q^66 + 1/2*(-zeta^2 - 3*zeta + 
3)*q^67 + (-9*zeta^2 - 6*zeta + 6)*q^68 + (2*zeta^2 - zeta - 6)*q^69 + (zeta^2 -
4*zeta - 3)*q^70 + (6*zeta^2 - 3*zeta - 18)*q^71 + (9*zeta^2 + 6*zeta - 6)*q^72 
+ (-zeta^2 - 3*zeta + 3)*q^73 + 1/2*(3*zeta^2 + 2*zeta - 2)*q^75 + (2*zeta^2 - 
zeta - 6)*q^76 + (10*zeta^2 + 2*zeta - 16)*q^77 + (2*zeta^2 - zeta - 6)*q^78 + 
(-3*zeta^2 - 2*zeta + 2)*q^79 + (3*zeta^2 + 9*zeta - 9)*q^81 + 1/2*(21*zeta^2 + 
14*zeta - 14)*q^82 + 1/2*(18*zeta^2 - 9*zeta - 54)*q^83 + (-2*zeta^2 - 13*zeta -
1)*q^84 + (2*zeta^2 - zeta - 6)*q^85 + (-6*zeta^2 - 4*zeta + 4)*q^86 + 
1/2*(zeta^2 + 3*zeta - 3)*q^87 + (-2*zeta^2 - 6*zeta + 6)*q^88 + (6*zeta^2 + 
4*zeta - 4)*q^89 + (-2*zeta^2 + zeta + 6)*q^90 + (10*zeta^2 + 2*zeta - 16)*q^91 
+ 1/2*(-2*zeta^2 + zeta + 6)*q^92 + (-9*zeta^2 - 6*zeta + 6)*q^93 + (zeta^2 + 
3*zeta - 3)*q^94 + (zeta^2 + 3*zeta - 3)*q^95 + (-6*zeta^2 - 4*zeta + 4)*q^96 + 
(4*zeta^2 - 2*zeta - 12)*q^97 + 1/2*(13*zeta^2 + 32*zeta - 11)*q^98 + (-4*zeta^2
+ 2*zeta + 12)*q^99 + (-3*zeta^2 - 2*zeta + 2)*q^100 + (-4*zeta^2 - 12*zeta + 
12)*q^101 + (-zeta^2 - 3*zeta + 3)*q^102 + 1/2*(3*zeta^2 + 2*zeta - 2)*q^103 + 
(-8*zeta^2 + 4*zeta + 24)*q^104 + (-4*zeta^2 - 5*zeta + 5)*q^105 + (-2*zeta^2 + 
zeta + 6)*q^106 + 1/2*(-9*zeta^2 - 6*zeta + 6)*q^107 + 1/2*(3*zeta^2 + 9*zeta - 
9)*q^108 + (-3*zeta^2 - 9*zeta + 9)*q^109 + 1/2*(9*zeta^2 + 27*zeta - 6)*q^112 +
(-6*zeta^2 + 3*zeta + 18)*q^113 + (3*zeta^2 + 2*zeta - 2)*q^114 + 1/2*(zeta^2 + 
3*zeta - 3)*q^115 + (-zeta^2 - 3*zeta + 3)*q^116 + (-6*zeta^2 - 4*zeta + 
4)*q^117 + (2*zeta^2 - zeta - 6)*q^118 + (2*zeta^2 - 8*zeta - 6)*q^119 + 
(-2*zeta^2 + zeta + 6)*q^120 + (12*zeta^2 + 8*zeta - 8)*q^121 + 1/2*(3*zeta^2 + 
9*zeta - 9)*q^122 + 1/2*(3*zeta^2 + 9*zeta - 9)*q^123 + (18*zeta^2 + 12*zeta - 
12)*q^124 + (-8*zeta^2 + 11*zeta + 17)*q^126 + (-8*zeta^2 + 4*zeta + 24)*q^127 +
1/2*(33*zeta^2 + 22*zeta - 22)*q^128 + (-3*zeta^2 - 9*zeta + 9)*q^129 + 
(-2*zeta^2 - 6*zeta + 6)*q^130 + (12*zeta^2 + 8*zeta - 8)*q^131 + (8*zeta^2 - 
4*zeta - 24)*q^132 + (5*zeta^2 + zeta - 8)*q^133 + (10*zeta^2 - 5*zeta - 
30)*q^134 + 1/2*(-3*zeta^2 - 2*zeta + 2)*q^135 + (4*zeta^2 + 12*zeta - 12)*q^136
+ (-2*zeta^2 - 6*zeta + 6)*q^137 + 1/2*(3*zeta^2 + 2*zeta - 2)*q^138 + 
(-10*zeta^2 + 5*zeta + 30)*q^139 + 1/2*(-11*zeta^2 + 2*zeta + 19)*q^140 + 
(-2*zeta^2 + zeta + 6)*q^141 + (-3*zeta^2 - 2*zeta + 2)*q^142 + (-3*zeta^2 - 
9*zeta + 9)*q^144 + 1/2*(-31*zeta^2 - 23*zeta + 44)*q^147 + (-3*zeta^2 - 2*zeta 
+ 2)*q^149 + (2*zeta^2 + 6*zeta - 6)*q^151 + (-9*zeta^2 - 6*zeta + 6)*q^152 + 
(-4*zeta^2 + 2*zeta + 12)*q^153 + (9*zeta^2 + 6*zeta - 13)*q^154 + (-6*zeta^2 - 
4*zeta + 4)*q^156 + (4*zeta^2 + 12*zeta - 12)*q^157 + (7*zeta^2 + 21*zeta - 
21)*q^158 + (-9*zeta^2 - 6*zeta + 6)*q^159 + 1/2*(2*zeta^2 - zeta - 6)*q^160 + 
(zeta^2 - 4*zeta - 3)*q^161 + 1/2*(10*zeta^2 - 5*zeta - 30)*q^162 + (6*zeta^2 + 
4*zeta - 4)*q^163 + (-6*zeta^2 - 18*zeta + 18)*q^164 + (-2*zeta^2 - 6*zeta + 
6)*q^165 + (-15*zeta^2 - 10*zeta + 10)*q^166 + 1/2*(2*zeta^2 - zeta - 6)*q^167 +
1/2*(14*zeta^2 + 7*zeta - 21)*q^168 + (8*zeta^2 - 4*zeta - 24)*q^169 + 
(-6*zeta^2 - 4*zeta + 4)*q^170 + 1/2*(9*zeta^2 + 27*zeta - 27)*q^172 + 
(-12*zeta^2 - 8*zeta + 8)*q^173 + 1/2*(6*zeta^2 - 3*zeta - 11)*q^175 + 
(-6*zeta^2 + 3*zeta + 18)*q^176 + (-15*zeta^2 - 10*zeta + 10)*q^177 + 
1/2*(-7*zeta^2 - 21*zeta + 21)*q^178 + (3*zeta^2 + 2*zeta - 2)*q^180 + (4*zeta^2
- 2*zeta - 12)*q^181 + (-19*zeta^2 - 29*zeta + 22)*q^182 + 1/2*(18*zeta^2 - 
9*zeta - 54)*q^183 + (-3*zeta^2 - 2*zeta + 2)*q^184 + (4*zeta^2 - 2*zeta - 
12)*q^188 + (-5*zeta^2 - zeta + 8)*q^189 + (2*zeta^2 - zeta - 6)*q^190 + 
(3*zeta^2 + 2*zeta - 2)*q^191 + 1/2*(5*zeta^2 + 15*zeta - 15)*q^192 + 
(-15*zeta^2 - 10*zeta + 10)*q^194 + (22*zeta^2 - 4*zeta - 38)*q^196 + (4*zeta^2 
- 2*zeta - 12)*q^197 + (-6*zeta^2 - 4*zeta + 4)*q^198 + (-2*zeta^2 - 6*zeta + 
6)*q^199 + 1/2*(zeta^2 + 3*zeta - 3)*q^200 + (18*zeta^2 + 12*zeta - 12)*q^201 + 
1/2*(-14*zeta^2 + 7*zeta + 42)*q^202 + 1/2*(9*zeta^2 + 6*zeta - 13)*q^203 + 
(-4*zeta^2 + 2*zeta + 12)*q^204 + (3*zeta^2 + 2*zeta - 2)*q^205 + (-zeta^2 - 
3*zeta + 3)*q^206 + (zeta^2 + 3*zeta - 3)*q^207 + (9*zeta^2 + 6*zeta - 6)*q^208 
+ (4*zeta^2 - 2*zeta - 12)*q^209 + 1/2*(-3*zeta^2 - 9*zeta + 2)*q^210 + 
(6*zeta^2 - 3*zeta - 18)*q^211 + (9*zeta^2 + 6*zeta - 6)*q^212 + (5*zeta^2 + 
15*zeta - 15)*q^213 + (5*zeta^2 + 15*zeta - 15)*q^214 + 1/2*(3*zeta^2 + 2*zeta -
2)*q^215 + (4*zeta^2 - 2*zeta - 12)*q^216 + (-18*zeta^2 + 9*zeta + 33)*q^217 + 
1/2*(-22*zeta^2 + 11*zeta + 66)*q^218 + (6*zeta^2 + 4*zeta - 4)*q^219 + (zeta^2 
+ 3*zeta - 3)*q^220 + (-4*zeta^2 - 12*zeta + 12)*q^221 + (-4*zeta^2 + 2*zeta + 
12)*q^223 + (-11*zeta^2 + 2*zeta + 19)*q^224 + (-2*zeta^2 + zeta + 6)*q^225 + 
(3*zeta^2 + 2*zeta - 2)*q^226 + (-6*zeta^2 - 18*zeta + 18)*q^227 + (-3*zeta^2 - 
9*zeta + 9)*q^228 + (6*zeta^2 + 4*zeta - 4)*q^229 + (-zeta^2 + 25*zeta + 
10)*q^231 + 1/2*(-2*zeta^2 + zeta + 6)*q^232 + (3*zeta^2 + 2*zeta - 2)*q^233 + 
(6*zeta^2 + 18*zeta - 18)*q^234 + (3*zeta^2 + 2*zeta - 2)*q^236 + (-10*zeta^2 + 
5*zeta + 30)*q^237 + (-29*zeta^2 - 10*zeta + 45)*q^238 + (-8*zeta^2 + 4*zeta + 
24)*q^239 + 1/2*(9*zeta^2 + 6*zeta - 6)*q^240 + (2*zeta^2 + 6*zeta - 6)*q^241 + 
1/2*(-7*zeta^2 - 21*zeta + 21)*q^242 + (-6*zeta^2 - 4*zeta + 4)*q^243 + 
(9*zeta^2 + 6*zeta - 13)*q^245 + (2*zeta^2 - zeta - 6)*q^246 + (6*zeta^2 + 
4*zeta - 4)*q^247 + (-3*zeta^2 - 9*zeta + 9)*q^248 + (4*zeta^2 + 12*zeta - 
12)*q^249 + 1/2*(-3*zeta^2 - 2*zeta + 2)*q^250 + (-8*zeta^2 + 4*zeta + 24)*q^251
+ (37*zeta^2 + 20*zeta - 55)*q^252 + (4*zeta^2 - 2*zeta - 12)*q^253 + (9*zeta^2 
+ 6*zeta - 6)*q^254 + (-6*zeta^2 - 18*zeta + 18)*q^256 + (6*zeta^2 + 4*zeta - 
4)*q^257 + 1/2*(2*zeta^2 - zeta - 6)*q^258 + (-6*zeta^2 + 3*zeta + 18)*q^260 + 
(-3*zeta^2 - 2*zeta + 2)*q^261 + (-8*zeta^2 - 24*zeta + 24)*q^262 + 
1/2*(-17*zeta^2 - 51*zeta + 51)*q^263 + (9*zeta^2 + 6*zeta - 6)*q^264 + 
(2*zeta^2 - zeta - 6)*q^265 + (8*zeta^2 - 11*zeta - 17)*q^266 + 1/2*(-2*zeta^2 +
zeta + 6)*q^267 + 1/2*(-63*zeta^2 - 42*zeta + 42)*q^268 + (9*zeta^2 + 27*zeta - 
27)*q^269 + (zeta^2 + 3*zeta - 3)*q^270 + (-9*zeta^2 - 6*zeta + 6)*q^271 + 
(6*zeta^2 - 3*zeta - 18)*q^272 + (6*zeta^2 - 3*zeta - 11)*q^273 + (-8*zeta^2 + 
4*zeta + 24)*q^274 + (3*zeta^2 + 2*zeta - 2)*q^275 + (-2*zeta^2 - 6*zeta + 
6)*q^276 + (5*zeta^2 + 15*zeta - 15)*q^277 + (18*zeta^2 + 12*zeta - 12)*q^278 + 
(12*zeta^2 - 6*zeta - 36)*q^279 + (7*zeta^2 + 14*zeta - 7)*q^280 + (-20*zeta^2 +
10*zeta + 60)*q^281 + (-zeta^2 - 3*zeta + 3)*q^284 + (-3*zeta^2 - 2*zeta + 
2)*q^285 + (4*zeta^2 - 2*zeta - 12)*q^286 + 1/2*(47*zeta^2 + 22*zeta - 71)*q^287
+ (6*zeta^2 - 3*zeta - 18)*q^288 + (-12*zeta^2 - 8*zeta + 8)*q^289 + 
1/2*(-zeta^2 - 3*zeta + 3)*q^290 + (-zeta^2 - 3*zeta + 3)*q^291 + (-3*zeta^2 - 
2*zeta + 2)*q^292 + (6*zeta^2 - 3*zeta - 11)*q^294 + (6*zeta^2 - 3*zeta - 
18)*q^295 + 1/2*(-3*zeta^2 - 9*zeta + 9)*q^298 + 1/2*(2*zeta^2 - zeta - 6)*q^300
+ (-22*zeta^2 - 17*zeta + 31)*q^301 + (10*zeta^2 - 5*zeta - 30)*q^302 + 
1/2*(27*zeta^2 + 18*zeta - 18)*q^303 + (3*zeta^2 + 9*zeta - 9)*q^304 + (3*zeta^2
+ 9*zeta - 9)*q^305 + (18*zeta^2 + 12*zeta - 12)*q^306 + 1/2*(6*zeta^2 - 3*zeta 
- 18)*q^307 + (-4*zeta^2 - 26*zeta - 2)*q^308 + (9*zeta^2 + 6*zeta - 6)*q^310 + 
(zeta^2 + 3*zeta - 3)*q^311 + (zeta^2 + 3*zeta - 3)*q^312 + (-6*zeta^2 - 4*zeta 
+ 4)*q^313 + (14*zeta^2 - 7*zeta - 42)*q^314 + (4*zeta^2 + 5*zeta - 5)*q^315 + 
(26*zeta^2 - 13*zeta - 78)*q^316 + (21*zeta^2 + 14*zeta - 14)*q^317 + (-zeta^2 -
3*zeta + 3)*q^318 + (zeta^2 + 3*zeta - 3)*q^319 + (3*zeta^2 + 2*zeta - 2)*q^320 
+ (-4*zeta^2 + 2*zeta + 12)*q^321 + 1/2*(6*zeta^2 - 3*zeta - 11)*q^322 + 
(4*zeta^2 - 2*zeta - 12)*q^323 + (-6*zeta^2 - 4*zeta + 4)*q^324 + (-zeta^2 - 
3*zeta + 3)*q^325 + (7*zeta^2 + 21*zeta - 21)*q^326 + 1/2*(3*zeta^2 + 2*zeta - 
2)*q^327 + 1/2*(-22*zeta^2 + 11*zeta + 66)*q^328 + (3*zeta^2 + 9*zeta - 2)*q^329
+ (2*zeta^2 - zeta - 6)*q^330 + (-18*zeta^2 - 12*zeta + 12)*q^331 + 
1/2*(11*zeta^2 + 33*zeta - 33)*q^332 + (-33*zeta^2 - 22*zeta + 22)*q^334 + 
1/2*(-2*zeta^2 + zeta + 6)*q^335 + (-12*zeta^2 - 15*zeta + 15)*q^336 + 
(-2*zeta^2 + zeta + 6)*q^337 + 1/2*(-21*zeta^2 - 14*zeta + 14)*q^338 + 
(-5*zeta^2 - 15*zeta + 15)*q^339 + (3*zeta^2 + 9*zeta - 9)*q^340 + (-18*zeta^2 -
12*zeta + 12)*q^341 + (-8*zeta^2 + 4*zeta + 24)*q^342 + 1/2*(-9*zeta^2 - 27*zeta
+ 6)*q^343 + (2*zeta^2 - zeta - 6)*q^344 + (-3*zeta^2 - 2*zeta + 2)*q^345 + 
1/2*(-5*zeta^2 - 15*zeta + 15)*q^347 + 1/2*(3*zeta^2 + 2*zeta - 2)*q^348 + 
(4*zeta^2 - 2*zeta - 12)*q^349 + (-5*zeta^2 - zeta + 8)*q^350 + (-4*zeta^2 + 
2*zeta + 12)*q^351 + (-12*zeta^2 - 8*zeta + 8)*q^352 + (-zeta^2 - 3*zeta + 
3)*q^353 + (-3*zeta^2 - 9*zeta + 9)*q^354 + (-9*zeta^2 - 6*zeta + 6)*q^355 + 
(-10*zeta^2 + 5*zeta + 30)*q^356 + (-3*zeta^2 - 9*zeta + 2)*q^357 + (-10*zeta^2 
+ 5*zeta + 30)*q^358 + (-3*zeta^2 - 9*zeta + 9)*q^360 + 1/2*(-3*zeta^2 - 2*zeta 
+ 2)*q^362 + 1/2*(-18*zeta^2 + 9*zeta + 54)*q^363 + (-18*zeta^2 + 30*zeta + 
40)*q^364 + (-2*zeta^2 + zeta + 6)*q^365 + (9*zeta^2 + 6*zeta - 6)*q^366 + 
1/2*(3*zeta^2 + 9*zeta - 9)*q^367 + 1/2*(3*zeta^2 + 9*zeta - 9)*q^368 + 
(-15*zeta^2 - 10*zeta + 10)*q^369 + (-16*zeta^2 + zeta + 27)*q^371 + (-6*zeta^2 
+ 3*zeta + 18)*q^372 + (18*zeta^2 + 12*zeta - 12)*q^373 + (-2*zeta^2 - 6*zeta + 
6)*q^374 + 1/2*(-zeta^2 - 3*zeta + 3)*q^375 + (-3*zeta^2 - 2*zeta + 2)*q^376 + 
(2*zeta^2 - zeta - 6)*q^377 + 1/2*(19*zeta^2 + 29*zeta - 22)*q^378 + (2*zeta^2 -
zeta - 6)*q^379 + (-3*zeta^2 - 2*zeta + 2)*q^380 + (-5*zeta^2 - 15*zeta + 
15)*q^381 + (-6*zeta^2 - 18*zeta + 18)*q^382 + 1/2*(21*zeta^2 + 14*zeta - 
14)*q^383 + (-6*zeta^2 + 3*zeta + 18)*q^384 + (-8*zeta^2 - 10*zeta + 10)*q^385 +
(-2*zeta^2 + zeta + 6)*q^386 + (15*zeta^2 + 10*zeta - 10)*q^387 + (8*zeta^2 + 
24*zeta - 24)*q^388 + (2*zeta^2 + 6*zeta - 6)*q^389 + (-3*zeta^2 - 2*zeta + 
2)*q^390 + 1/2*(-56*zeta^2 - 7*zeta + 91)*q^392 + (21*zeta^2 + 14*zeta - 
14)*q^394 + (zeta^2 + 3*zeta - 3)*q^395 + (6*zeta^2 + 18*zeta - 18)*q^396 + 
(24*zeta^2 + 16*zeta - 16)*q^397 + (-8*zeta^2 + 4*zeta + 24)*q^398 + (17*zeta^2 
+ 16*zeta - 23)*q^399 + (-12*zeta^2 - 8*zeta + 8)*q^401 + 1/2*(zeta^2 + 3*zeta -
3)*q^402 + (6*zeta^2 + 18*zeta - 18)*q^403 + (9*zeta^2 + 6*zeta - 6)*q^404 + 
(6*zeta^2 - 3*zeta - 18)*q^405 + (-4*zeta^2 - 5*zeta + 5)*q^406 + (3*zeta^2 + 
2*zeta - 2)*q^408 + (-7*zeta^2 - 21*zeta + 21)*q^409 + 1/2*(-7*zeta^2 - 21*zeta 
+ 21)*q^410 + 1/2*(-6*zeta^2 + 3*zeta + 18)*q^412 + (-24*zeta^2 - 9*zeta + 
37)*q^413 + (-2*zeta^2 + zeta + 6)*q^414 + 1/2*(-27*zeta^2 - 18*zeta + 18)*q^415
+ (2*zeta^2 + 6*zeta - 6)*q^416 + (-4*zeta^2 - 12*zeta + 12)*q^417 + (6*zeta^2 +
4*zeta - 4)*q^418 + (8*zeta^2 - 4*zeta - 24)*q^419 + (-11*zeta^2 + 2*zeta + 
19)*q^420 + (6*zeta^2 - 3*zeta - 18)*q^421 + (-27*zeta^2 - 18*zeta + 18)*q^422 +
(-2*zeta^2 - 6*zeta + 6)*q^423 + (zeta^2 + 3*zeta - 3)*q^424 + (-3*zeta^2 - 
2*zeta + 2)*q^425 + (-6*zeta^2 + 3*zeta + 18)*q^426 + 1/2*(21*zeta^2 - 21*zeta -
42)*q^427 + 1/2*(34*zeta^2 - 17*zeta - 102)*q^428 + (6*zeta^2 + 4*zeta - 
4)*q^429 + (2*zeta^2 + 6*zeta - 6)*q^430 + (7*zeta^2 + 21*zeta - 21)*q^431 + 
1/2*(-9*zeta^2 - 6*zeta + 6)*q^432 + (14*zeta^2 - 7*zeta - 42)*q^433 + 
(30*zeta^2 + 6*zeta - 48)*q^434 + 1/2*(2*zeta^2 - zeta - 6)*q^435 + (24*zeta^2 +
16*zeta - 16)*q^436 + (-zeta^2 - 3*zeta + 3)*q^437 + (zeta^2 + 3*zeta - 3)*q^438
+ (36*zeta^2 + 24*zeta - 24)*q^439 + (-4*zeta^2 + 2*zeta + 12)*q^440 + (5*zeta^2
- 20*zeta - 15)*q^441 + (-20*zeta^2 + 10*zeta + 60)*q^442 + 1/2*(-45*zeta^2 - 
30*zeta + 30)*q^443 + (-2*zeta^2 - 6*zeta + 6)*q^445 + (-3*zeta^2 - 2*zeta + 
2)*q^446 + 1/2*(14*zeta^2 - 7*zeta - 42)*q^447 + 1/2*(65*zeta^2 + 34*zeta - 
97)*q^448 + (2*zeta^2 - zeta - 6)*q^449 + (3*zeta^2 + 2*zeta - 2)*q^450 + 
(3*zeta^2 + 9*zeta - 9)*q^451 + (zeta^2 + 3*zeta - 3)*q^452 + (3*zeta^2 + 2*zeta
- 2)*q^453 + (-2*zeta^2 + zeta + 6)*q^454 + (-8*zeta^2 - 10*zeta + 10)*q^455 + 
(2*zeta^2 - zeta - 6)*q^456 + (-30*zeta^2 - 20*zeta + 20)*q^457 + (-5*zeta^2 - 
15*zeta + 15)*q^458 + (2*zeta^2 + 6*zeta - 6)*q^459 + 1/2*(3*zeta^2 + 2*zeta - 
2)*q^460 + (8*zeta^2 - 4*zeta - 24)*q^461 + (-10*zeta^2 - 2*zeta + 16)*q^462 + 
1/2*(-34*zeta^2 + 17*zeta + 102)*q^463 + (3*zeta^2 + 9*zeta - 9)*q^465 + 
(-8*zeta^2 - 24*zeta + 24)*q^466 + 1/2*(-21*zeta^2 - 14*zeta + 14)*q^467 + 
(20*zeta^2 - 10*zeta - 60)*q^468 + (35*zeta^2 - 14*zeta - 63)*q^469 + (2*zeta^2 
- zeta - 6)*q^470 + (-3*zeta^2 - 2*zeta + 2)*q^471 + (7*zeta^2 + 21*zeta - 
21)*q^472 + (-6*zeta^2 - 18*zeta + 18)*q^473 + (3*zeta^2 + 2*zeta - 2)*q^474 + 
(2*zeta^2 - zeta - 6)*q^475 + (30*zeta^2 + 48*zeta - 34)*q^476 + (8*zeta^2 - 
4*zeta - 24)*q^477 + (27*zeta^2 + 18*zeta - 18)*q^478 + (-2*zeta^2 - 6*zeta + 
6)*q^479 + (2*zeta^2 + 6*zeta - 6)*q^480 + (26*zeta^2 - 13*zeta - 78)*q^482 + 
1/2*(25*zeta^2 + 26*zeta - 33)*q^483 + (-6*zeta^2 + 3*zeta + 18)*q^484 + 
(-6*zeta^2 - 4*zeta + 4)*q^485 + (-6*zeta^2 - 18*zeta + 18)*q^486 + (-2*zeta^2 -
6*zeta + 6)*q^487 + 1/2*(-45*zeta^2 - 30*zeta + 30)*q^488 + (-22*zeta^2 + 
11*zeta + 66)*q^489 + 1/2*(19*zeta^2 - 13*zeta - 36)*q^490 + (8*zeta^2 - 4*zeta 
- 24)*q^491 + 1/2*(-3*zeta^2 - 2*zeta + 2)*q^492 + (-zeta^2 - 3*zeta + 3)*q^493 
+ (-6*zeta^2 - 18*zeta + 18)*q^494 + (6*zeta^2 + 4*zeta - 4)*q^495 + (15*zeta^2 
+ 24*zeta - 17)*q^497 + 1/2*(-18*zeta^2 + 9*zeta + 54)*q^498 + (3*zeta^2 + 
2*zeta - 2)*q^499 + (zeta^2 + 3*zeta - 3)*q^500 + (-10*zeta^2 - 30*zeta + 
30)*q^501 + (9*zeta^2 + 6*zeta - 6)*q^502 + 1/2*(-38*zeta^2 + 19*zeta + 
114)*q^503 + (-21*zeta^2 - 21*zeta + 28)*q^504 + (-8*zeta^2 + 4*zeta + 24)*q^505
+ (3*zeta^2 + 2*zeta - 2)*q^506 + 1/2*(9*zeta^2 + 27*zeta - 27)*q^507 + 
(-2*zeta^2 - 6*zeta + 6)*q^508 + (6*zeta^2 + 4*zeta - 4)*q^509 + (-2*zeta^2 + 
zeta + 6)*q^510 + (10*zeta^2 + 2*zeta - 16)*q^511 + 1/2*(-6*zeta^2 + 3*zeta + 
18)*q^512 + (-3*zeta^2 - 2*zeta + 2)*q^513 + (4*zeta^2 + 12*zeta - 12)*q^514 + 
1/2*(-zeta^2 - 3*zeta + 3)*q^515 + (-12*zeta^2 - 8*zeta + 8)*q^516 + (-4*zeta^2 
+ 2*zeta + 12)*q^517 + (16*zeta^2 - 8*zeta - 48)*q^519 + (12*zeta^2 + 8*zeta - 
8)*q^520 + (6*zeta^2 + 18*zeta - 18)*q^521 + (zeta^2 + 3*zeta - 3)*q^522 + 
(-6*zeta^2 - 4*zeta + 4)*q^523 + (-24*zeta^2 + 12*zeta + 72)*q^524 + (-zeta^2 + 
4*zeta + 3)*q^525 + (-22*zeta^2 + 11*zeta + 66)*q^526 + (18*zeta^2 + 12*zeta - 
12)*q^527 + (-6*zeta^2 - 18*zeta + 18)*q^528 + (-zeta^2 - 3*zeta + 3)*q^529 + 
(3*zeta^2 + 2*zeta - 2)*q^530 + (8*zeta^2 - 4*zeta - 24)*q^531 + (-37*zeta^2 - 
20*zeta + 55)*q^532 + (14*zeta^2 - 7*zeta - 42)*q^533 + (-6*zeta^2 - 4*zeta + 
4)*q^534 + 1/2*(3*zeta^2 + 9*zeta - 9)*q^535 + (4*zeta^2 + 12*zeta - 12)*q^536 +
(-15*zeta^2 - 10*zeta + 10)*q^537 + 1/2*(26*zeta^2 - 13*zeta - 78)*q^538 + 
(-31*zeta^2 - 23*zeta + 44)*q^539 + 1/2*(6*zeta^2 - 3*zeta - 18)*q^540 + 
(6*zeta^2 + 4*zeta - 4)*q^541 + (7*zeta^2 + 21*zeta - 21)*q^542 + 1/2*(7*zeta^2 
+ 21*zeta - 21)*q^543 + (6*zeta^2 + 4*zeta - 4)*q^544 + (-6*zeta^2 + 3*zeta + 
18)*q^545 + (-10*zeta^2 - 2*zeta + 16)*q^546 + 1/2*(14*zeta^2 - 7*zeta - 
42)*q^547 + (18*zeta^2 + 12*zeta - 12)*q^548 + (3*zeta^2 + 9*zeta - 9)*q^549 + 
(3*zeta^2 + 2*zeta - 2)*q^551 + 1/2*(6*zeta^2 - 3*zeta - 18)*q^552 + (23*zeta^2 
+ 55*zeta - 20)*q^553 + (12*zeta^2 - 6*zeta - 36)*q^554 + (-7*zeta^2 - 21*zeta +
21)*q^556 + (10*zeta^2 + 30*zeta - 30)*q^557 + (-18*zeta^2 - 12*zeta + 12)*q^558
+ (-8*zeta^2 + 4*zeta + 24)*q^559 + 1/2*(18*zeta^2 - 9*zeta - 33)*q^560 + 
(4*zeta^2 - 2*zeta - 12)*q^561 + (33*zeta^2 + 22*zeta - 22)*q^562 + 
1/2*(9*zeta^2 + 27*zeta - 27)*q^563 + (zeta^2 + 3*zeta - 3)*q^564 + (9*zeta^2 + 
6*zeta - 6)*q^565 + (14*zeta^2 - 7*zeta - 42)*q^566 + 1/2*(-30*zeta^2 - 27*zeta 
+ 41)*q^567 + (14*zeta^2 - 7*zeta - 42)*q^568 + (-6*zeta^2 - 4*zeta + 4)*q^569 +
(-zeta^2 - 3*zeta + 3)*q^570 + (-zeta^2 - 3*zeta + 3)*q^571 + (-12*zeta^2 - 
8*zeta + 8)*q^572 + (8*zeta^2 - 4*zeta - 24)*q^573 + (-31*zeta^2 - 44*zeta + 
37)*q^574 + 1/2*(2*zeta^2 - zeta - 6)*q^575 + (-21*zeta^2 - 14*zeta + 14)*q^576 
+ (-12*zeta^2 - 36*zeta + 36)*q^577 + 1/2*(3*zeta^2 + 9*zeta - 9)*q^578 + 
(-3*zeta^2 - 2*zeta + 2)*q^579 + (-2*zeta^2 + zeta + 6)*q^580 + (-9*zeta^2 + 
15*zeta + 20)*q^581 + (-4*zeta^2 + 2*zeta + 12)*q^582 + (-18*zeta^2 - 12*zeta + 
12)*q^583 + (-2*zeta^2 - 6*zeta + 6)*q^584 + (2*zeta^2 + 6*zeta - 6)*q^585 + 
(24*zeta^2 + 16*zeta - 16)*q^586 + (-20*zeta^2 + 10*zeta + 60)*q^587 + 
1/2*(-59*zeta^2 - 16*zeta + 93)*q^588 + (-12*zeta^2 + 6*zeta + 36)*q^589 + 
(-3*zeta^2 - 2*zeta + 2)*q^590 + (11*zeta^2 + 33*zeta - 33)*q^591 + (21*zeta^2 +
14*zeta - 14)*q^593 + (-2*zeta^2 + zeta + 6)*q^594 + (-10*zeta^2 - 2*zeta + 
16)*q^595 + (-8*zeta^2 + 4*zeta + 24)*q^596 + (-zeta^2 - 3*zeta + 3)*q^598 + 
(-2*zeta^2 - 6*zeta + 6)*q^599 + (3*zeta^2 + 2*zeta - 2)*q^600 + (4*zeta^2 - 
2*zeta - 12)*q^601 + 1/2*(29*zeta^2 + 31*zeta - 38)*q^602 + (-22*zeta^2 + 
11*zeta + 66)*q^603 + (-24*zeta^2 - 16*zeta + 16)*q^604 + (-4*zeta^2 - 12*zeta +
12)*q^605 + (4*zeta^2 + 12*zeta - 12)*q^606 + 1/2*(-45*zeta^2 - 30*zeta + 
30)*q^607 + (-6*zeta^2 + 3*zeta + 18)*q^608 + (-5*zeta^2 - zeta + 8)*q^609 + 
1/2*(6*zeta^2 - 3*zeta - 18)*q^610 + (6*zeta^2 + 4*zeta - 4)*q^611 + (-10*zeta^2
- 30*zeta + 30)*q^612 + (9*zeta^2 + 27*zeta - 27)*q^613 + (9*zeta^2 + 6*zeta - 
6)*q^614 + 1/2*(6*zeta^2 - 3*zeta - 18)*q^615 + (14*zeta^2 + 7*zeta - 21)*q^616 
+ (8*zeta^2 - 4*zeta - 24)*q^617 + 1/2*(-3*zeta^2 - 2*zeta + 2)*q^618 + 
(-3*zeta^2 - 9*zeta + 9)*q^619 + (-6*zeta^2 - 18*zeta + 18)*q^620 + (-14*zeta^2 
+ 7*zeta + 42)*q^622 + 1/2*(-29*zeta^2 - 31*zeta + 38)*q^623 + (-4*zeta^2 - 
12*zeta + 12)*q^626 + (6*zeta^2 + 18*zeta - 18)*q^627 + (-30*zeta^2 - 20*zeta + 
20)*q^628 + (19*zeta^2 + 8*zeta - 29)*q^630 + (-10*zeta^2 + 5*zeta + 30)*q^631 +
(-27*zeta^2 - 18*zeta + 18)*q^632 + (-3*zeta^2 - 9*zeta + 9)*q^633 + (-4*zeta^2 
- 12*zeta + 12)*q^634 + (12*zeta^2 + 8*zeta - 8)*q^635 + (-10*zeta^2 + 5*zeta + 
30)*q^636 + (32*zeta^2 + 19*zeta - 47)*q^637 + (-12*zeta^2 - 8*zeta + 8)*q^639 +
1/2*(-11*zeta^2 - 33*zeta + 33)*q^640 + (3*zeta^2 + 9*zeta - 9)*q^641 + 
1/2*(9*zeta^2 + 6*zeta - 6)*q^642 + (20*zeta^2 - 10*zeta - 60)*q^643 + 
(-13*zeta^2 - 11*zeta + 18)*q^644 + (-6*zeta^2 + 3*zeta + 18)*q^645 + 
(-18*zeta^2 - 12*zeta + 12)*q^646 + 1/2*(-17*zeta^2 - 51*zeta + 51)*q^647 + 
1/2*(17*zeta^2 + 51*zeta - 51)*q^648 + (-30*zeta^2 - 20*zeta + 20)*q^649 + 
(-4*zeta^2 + 2*zeta + 12)*q^650 + (6*zeta^2 - 24*zeta - 18)*q^651 + (32*zeta^2 -
16*zeta - 96)*q^652 + (-3*zeta^2 - 2*zeta + 2)*q^653 + (3*zeta^2 + 9*zeta - 
9)*q^654 + (-4*zeta^2 - 12*zeta + 12)*q^655 + (9*zeta^2 + 6*zeta - 6)*q^656 + 
(-4*zeta^2 + 2*zeta + 12)*q^657 + (2*zeta^2 - 8*zeta - 6)*q^658 + (-2*zeta^2 + 
zeta + 6)*q^659 + (-12*zeta^2 - 8*zeta + 8)*q^660 + (zeta^2 + 3*zeta - 3)*q^661 
+ (9*zeta^2 + 27*zeta - 27)*q^662 + (-6*zeta^2 - 4*zeta + 4)*q^663 + (28*zeta^2 
- 14*zeta - 84)*q^664 + (-4*zeta^2 - 5*zeta + 5)*q^665 + 1/2*(3*zeta^2 + 2*zeta 
- 2)*q^667 + 1/2*(43*zeta^2 + 129*zeta - 129)*q^668 + (-5*zeta^2 - 15*zeta + 
15)*q^669 + (-15*zeta^2 - 10*zeta + 10)*q^670 + (18*zeta^2 - 9*zeta - 54)*q^671 
+ 1/2*(5*zeta^2 - 41*zeta - 22)*q^672 + (4*zeta^2 - 2*zeta - 12)*q^673 + 
(-15*zeta^2 - 10*zeta + 10)*q^674 + 1/2*(zeta^2 + 3*zeta - 3)*q^675 + (3*zeta^2 
+ 9*zeta - 9)*q^676 + (15*zeta^2 + 10*zeta - 10)*q^677 + (6*zeta^2 - 3*zeta - 
18)*q^678 + (-29*zeta^2 - 10*zeta + 45)*q^679 + (8*zeta^2 - 4*zeta - 24)*q^680 +
(33*zeta^2 + 22*zeta - 22)*q^681 + 1/2*(3*zeta^2 + 9*zeta - 9)*q^683 + 
(24*zeta^2 + 16*zeta - 16)*q^684 + (-4*zeta^2 + 2*zeta + 12)*q^685 + (25*zeta^2 
+ 47*zeta - 26)*q^686 + (2*zeta^2 - zeta - 6)*q^687 + 1/2*(9*zeta^2 + 6*zeta - 
6)*q^688 + (2*zeta^2 + 6*zeta - 6)*q^689 + 1/2*(-zeta^2 - 3*zeta + 3)*q^690 + 
(-3*zeta^2 - 2*zeta + 2)*q^691 + (-8*zeta^2 + 4*zeta + 24)*q^692 + (-34*zeta^2 -
32*zeta + 46)*q^693 + (10*zeta^2 - 5*zeta - 30)*q^694 + (15*zeta^2 + 10*zeta - 
10)*q^695 + (zeta^2 + 3*zeta - 3)*q^696 + (-7*zeta^2 - 21*zeta + 21)*q^697 + 
1/2*(51*zeta^2 + 34*zeta - 34)*q^698 + (12*zeta^2 - 6*zeta - 36)*q^699 + 
1/2*(13*zeta^2 + 11*zeta - 18)*q^700 + (14*zeta^2 - 7*zeta - 42)*q^701 + 
(15*zeta^2 + 10*zeta - 10)*q^702 + (5*zeta^2 + 15*zeta - 15)*q^704 + (3*zeta^2 +
2*zeta - 2)*q^705 + (-26*zeta^2 + 13*zeta + 78)*q^706 + 1/2*(38*zeta^2 + 37*zeta
- 51)*q^707 + (-22*zeta^2 + 11*zeta + 66)*q^708 + (12*zeta^2 + 8*zeta - 8)*q^709
+ (zeta^2 + 3*zeta - 3)*q^710 + (-12*zeta^2 - 36*zeta + 36)*q^711 + 
1/2*(45*zeta^2 + 30*zeta - 30)*q^712 + (-6*zeta^2 + 3*zeta + 18)*q^713 + 
(-2*zeta^2 + 8*zeta + 6)*q^714 + (30*zeta^2 + 20*zeta - 20)*q^716 + (zeta^2 + 
3*zeta - 3)*q^717 + (-5*zeta^2 - 15*zeta + 15)*q^718 + (-33*zeta^2 - 22*zeta + 
22)*q^719 + (-6*zeta^2 + 3*zeta + 18)*q^720 + (-4*zeta^2 - 5*zeta + 5)*q^721 + 
1/2*(-22*zeta^2 + 11*zeta + 66)*q^722 + (27*zeta^2 + 18*zeta - 18)*q^723 + 
(-zeta^2 - 3*zeta + 3)*q^724 + (-12*zeta^2 - 8*zeta + 8)*q^726 + 1/2*(2*zeta^2 -
zeta - 6)*q^727 + (49*zeta^2 + 14*zeta - 77)*q^728 + (2*zeta^2 - zeta - 6)*q^729
+ (4*zeta^2 + 12*zeta - 12)*q^731 + 1/2*(-21*zeta^2 - 63*zeta + 63)*q^732 + 
(-4*zeta^2 + 2*zeta + 12)*q^734 + 1/2*(8*zeta^2 + 31*zeta - 3)*q^735 + 
(-4*zeta^2 + 2*zeta + 12)*q^736 + (36*zeta^2 + 24*zeta - 24)*q^737 + (9*zeta^2 +
27*zeta - 27)*q^738 + (-11*zeta^2 - 33*zeta + 33)*q^739 + (4*zeta^2 - 2*zeta - 
12)*q^741 + (zeta^2 - 4*zeta - 3)*q^742 + 1/2*(-10*zeta^2 + 5*zeta + 30)*q^743 +
(-18*zeta^2 - 12*zeta + 12)*q^744 + (zeta^2 + 3*zeta - 3)*q^745 + (-8*zeta^2 - 
24*zeta + 24)*q^746 + (3*zeta^2 + 2*zeta - 2)*q^747 + (-8*zeta^2 + 4*zeta + 
24)*q^748 + (18*zeta^2 + 33*zeta - 19)*q^749 + (-6*zeta^2 - 4*zeta + 4)*q^751 + 
(-5*zeta^2 - 15*zeta + 15)*q^753 + (-6*zeta^2 - 4*zeta + 4)*q^754 + (4*zeta^2 - 
2*zeta - 12)*q^755 + (9*zeta^2 - 15*zeta - 20)*q^756 + (-18*zeta^2 + 9*zeta + 
54)*q^757 + (-39*zeta^2 - 26*zeta + 26)*q^758 + (5*zeta^2 + 15*zeta - 15)*q^759 
+ (3*zeta^2 + 9*zeta - 9)*q^760 + (-12*zeta^2 - 8*zeta + 8)*q^761 + (8*zeta^2 - 
4*zeta - 24)*q^762 + 1/2*(-6*zeta^2 + 45*zeta + 25)*q^763 + (-22*zeta^2 + 
11*zeta + 66)*q^764 + (6*zeta^2 + 4*zeta - 4)*q^765 + (-2*zeta^2 - 6*zeta + 
6)*q^767 + 1/2*(-3*zeta^2 - 2*zeta + 2)*q^768 + (-16*zeta^2 + 8*zeta + 48)*q^769
+ (-3*zeta^2 - 9*zeta + 2)*q^770 + (-16*zeta^2 + 8*zeta + 48)*q^771 + (6*zeta^2 
+ 4*zeta - 4)*q^772 + (-11*zeta^2 - 33*zeta + 33)*q^773 + (-3*zeta^2 - 9*zeta + 
9)*q^774 + (18*zeta^2 - 9*zeta - 54)*q^776 + (22*zeta^2 - 11*zeta - 66)*q^778 + 
(15*zeta^2 + 10*zeta - 10)*q^779 + (2*zeta^2 + 6*zeta - 6)*q^780 + (10*zeta^2 + 
30*zeta - 30)*q^781 + (-3*zeta^2 - 2*zeta + 2)*q^782 + 1/2*(-2*zeta^2 + zeta + 
6)*q^783 + (27*zeta^2 + 18*zeta - 39)*q^784 + (8*zeta^2 - 4*zeta - 24)*q^785 + 
(-12*zeta^2 - 8*zeta + 8)*q^786 + 1/2*(11*zeta^2 + 33*zeta - 33)*q^787 + 
(-16*zeta^2 - 48*zeta + 48)*q^788 + (18*zeta^2 + 12*zeta - 12)*q^789 + 
(14*zeta^2 - 7*zeta - 42)*q^790 + (-15*zeta^2 - 24*zeta + 17)*q^791 + (-4*zeta^2
+ 2*zeta + 12)*q^792 + (9*zeta^2 + 6*zeta - 6)*q^793 + (-5*zeta^2 - 15*zeta + 
15)*q^794 + (3*zeta^2 + 9*zeta - 9)*q^795 + (18*zeta^2 + 12*zeta - 12)*q^796 + 
(-5*zeta^2 - zeta + 8)*q^798 + (4*zeta^2 - 2*zeta - 12)*q^799 + 1/2*(-3*zeta^2 -
2*zeta + 2)*q^800 + (3*zeta^2 + 9*zeta - 9)*q^801 + 1/2*(27*zeta^2 + 81*zeta - 
81)*q^802 + (12*zeta^2 + 8*zeta - 8)*q^803 + (14*zeta^2 - 7*zeta - 42)*q^804 + 
(-5*zeta^2 - zeta + 8)*q^805 + (24*zeta^2 - 12*zeta - 72)*q^806 + 
1/2*(-69*zeta^2 - 46*zeta + 46)*q^807 + 1/2*(-23*zeta^2 - 69*zeta + 69)*q^808 + 
(8*zeta^2 + 24*zeta - 24)*q^809 + 1/2*(-15*zeta^2 - 10*zeta + 10)*q^810 + 
(-16*zeta^2 + 8*zeta + 48)*q^811 + 1/2*(2*zeta^2 + 13*zeta + 1)*q^812 + 
(-2*zeta^2 + zeta + 6)*q^813 + (-2*zeta^2 - 6*zeta + 6)*q^815 + (-15*zeta^2 - 
10*zeta + 10)*q^817 + 1/2*(-18*zeta^2 + 9*zeta + 54)*q^818 + (22*zeta^2 + 
38*zeta - 24)*q^819 + (-12*zeta^2 + 6*zeta + 36)*q^820 + (-36*zeta^2 - 24*zeta +
24)*q^821 + (2*zeta^2 + 6*zeta - 6)*q^822 + 1/2*(5*zeta^2 + 15*zeta - 15)*q^823 
+ (6*zeta^2 + 4*zeta - 4)*q^824 + (-4*zeta^2 + 2*zeta + 12)*q^825 + (-37*zeta^2 
- 20*zeta + 55)*q^826 + 1/2*(-30*zeta^2 + 15*zeta + 90)*q^827 + (9*zeta^2 + 
6*zeta - 6)*q^828 + (4*zeta^2 + 12*zeta - 12)*q^829 + (5*zeta^2 + 15*zeta - 
15)*q^830 + (-12*zeta^2 - 8*zeta + 8)*q^831 + (18*zeta^2 - 9*zeta - 54)*q^832 + 
(19*zeta^2 - 13*zeta - 36)*q^833 + (10*zeta^2 - 5*zeta - 30)*q^834 + 
1/2*(-3*zeta^2 - 2*zeta + 2)*q^835 + (-6*zeta^2 - 18*zeta + 18)*q^836 + 
(-3*zeta^2 - 9*zeta + 9)*q^837 + (6*zeta^2 + 4*zeta - 4)*q^838 + (-2*zeta^2 + 
zeta + 6)*q^839 + 1/2*(-7*zeta^2 - 14*zeta + 7)*q^840 + 1/2*(-33*zeta^2 - 
22*zeta + 22)*q^842 + (-9*zeta^2 - 27*zeta + 27)*q^843 + (15*zeta^2 + 45*zeta - 
45)*q^844 + (-12*zeta^2 - 8*zeta + 8)*q^845 + (-4*zeta^2 + 2*zeta + 12)*q^846 + 
1/2*(-37*zeta^2 + zeta + 62)*q^847 + (6*zeta^2 - 3*zeta - 18)*q^848 + (21*zeta^2
+ 14*zeta - 14)*q^849 + (2*zeta^2 + 6*zeta - 6)*q^850 + (33*zeta^2 + 22*zeta - 
22)*q^852 + (-18*zeta^2 + 9*zeta + 54)*q^853 + (21*zeta^2 - 21*zeta - 42)*q^854 
+ (-24*zeta^2 - 16*zeta + 16)*q^856 + (10*zeta^2 + 30*zeta - 30)*q^857 + 
(24*zeta^2 + 16*zeta - 16)*q^859 + 1/2*(18*zeta^2 - 9*zeta - 54)*q^860 + 
(-9*zeta^2 - 6*zeta + 13)*q^861 + (12*zeta^2 - 6*zeta - 36)*q^862 + 
1/2*(-33*zeta^2 - 22*zeta + 22)*q^863 + (-zeta^2 - 3*zeta + 3)*q^864 + (4*zeta^2
+ 12*zeta - 12)*q^865 + (-3*zeta^2 - 2*zeta + 2)*q^866 + 1/2*(26*zeta^2 - 
13*zeta - 78)*q^867 + (-39*zeta^2 - 33*zeta + 54)*q^868 + (-20*zeta^2 + 10*zeta 
+ 60)*q^869 + (-10*zeta^2 - 30*zeta + 30)*q^871 + 1/2*(-23*zeta^2 - 69*zeta + 
69)*q^872 + (18*zeta^2 + 12*zeta - 12)*q^873 + (2*zeta^2 - zeta - 6)*q^874 + 
1/2*(-9*zeta^2 - 6*zeta + 13)*q^875 + (8*zeta^2 - 4*zeta - 24)*q^876 + (3*zeta^2
+ 2*zeta - 2)*q^877 + (-12*zeta^2 - 36*zeta + 36)*q^878 + (8*zeta^2 + 24*zeta - 
24)*q^879 + (9*zeta^2 + 6*zeta - 6)*q^880 + (2*zeta^2 - zeta - 6)*q^881 + 
(-13*zeta^2 + 31*zeta + 32)*q^882 + (20*zeta^2 - 10*zeta - 60)*q^883 + 
(48*zeta^2 + 32*zeta - 32)*q^884 + (5*zeta^2 + 15*zeta - 15)*q^885 + (12*zeta^2 
+ 36*zeta - 36)*q^886 + 1/2*(15*zeta^2 + 10*zeta - 10)*q^887 + (-5*zeta^2 - 
22*zeta + 1)*q^889 + 1/2*(-14*zeta^2 + 7*zeta + 42)*q^890 + (-21*zeta^2 - 
14*zeta + 14)*q^891 + (4*zeta^2 + 12*zeta - 12)*q^892 + (2*zeta^2 + 6*zeta - 
6)*q^893 + (3*zeta^2 + 2*zeta - 2)*q^894 + (-35*zeta^2 - 28*zeta + 49)*q^896 + 
(2*zeta^2 - zeta - 6)*q^897 + 1/2*(-9*zeta^2 - 6*zeta + 6)*q^898 + (-zeta^2 - 
3*zeta + 3)*q^900 + (6*zeta^2 + 4*zeta - 4)*q^901 + (4*zeta^2 - 2*zeta - 
12)*q^902 + 1/2*(66*zeta^2 + 9*zeta - 107)*q^903 + (-14*zeta^2 + 7*zeta + 
42)*q^904 + (-6*zeta^2 - 4*zeta + 4)*q^905 + (-2*zeta^2 - 6*zeta + 6)*q^906 + 
1/2*(-15*zeta^2 - 45*zeta + 45)*q^907 + (-12*zeta^2 - 8*zeta + 8)*q^908 + 
(-2*zeta^2 + zeta + 6)*q^909 + (-10*zeta^2 + 19*zeta + 23)*q^910 + (14*zeta^2 - 
7*zeta - 42)*q^911 + (-9*zeta^2 - 6*zeta + 6)*q^912 + (8*zeta^2 + 24*zeta - 
24)*q^913 + (8*zeta^2 + 24*zeta - 24)*q^914 + 1/2*(-27*zeta^2 - 18*zeta + 
18)*q^915 + (-16*zeta^2 + 8*zeta + 48)*q^916 + (-32*zeta^2 - 40*zeta + 40)*q^917
+ (10*zeta^2 - 5*zeta - 30)*q^918 + (33*zeta^2 + 22*zeta - 22)*q^919 + (zeta^2 +
3*zeta - 3)*q^920 + (6*zeta^2 + 18*zeta - 18)*q^921 + (-57*zeta^2 - 38*zeta + 
38)*q^922 + (-4*zeta^2 + 2*zeta + 12)*q^923 + (41*zeta^2 + 46*zeta - 53)*q^924 +
(45*zeta^2 + 30*zeta - 30)*q^926 + (zeta^2 + 3*zeta - 3)*q^927 + 1/2*(-zeta^2 - 
3*zeta + 3)*q^928 + (-9*zeta^2 - 6*zeta + 6)*q^929 + (-5*zeta^2 + 20*zeta + 
15)*q^931 + (-30*zeta^2 + 15*zeta + 90)*q^932 + (-27*zeta^2 - 18*zeta + 
18)*q^933 + (-3*zeta^2 - 9*zeta + 9)*q^934 + (-30*zeta^2 - 20*zeta + 20)*q^936 +
(16*zeta^2 - 8*zeta - 48)*q^937 + 1/2*(-91*zeta^2 - 14*zeta + 147)*q^938 + 
(16*zeta^2 - 8*zeta - 48)*q^939 + (-6*zeta^2 - 4*zeta + 4)*q^940 + (-10*zeta^2 -
30*zeta + 30)*q^941 + (-4*zeta^2 - 12*zeta + 12)*q^942 + 1/2*(9*zeta^2 + 6*zeta 
- 6)*q^943 + (18*zeta^2 - 9*zeta - 54)*q^944 + (4*zeta^2 + 5*zeta - 5)*q^945 + 
(2*zeta^2 - zeta - 6)*q^946 + 1/2*(-81*zeta^2 - 54*zeta + 54)*q^947 + (3*zeta^2 
+ 9*zeta - 9)*q^948 + (-3*zeta^2 - 2*zeta + 2)*q^950 + (-20*zeta^2 + 10*zeta + 
60)*q^951 + (14*zeta^2 - 35*zeta - 35)*q^952 + (-4*zeta^2 + 2*zeta + 12)*q^953 +
(-zeta^2 - 3*zeta + 3)*q^955 + (-14*zeta^2 - 42*zeta + 42)*q^956 + (-6*zeta^2 - 
4*zeta + 4)*q^957 + (-34*zeta^2 + 17*zeta + 102)*q^958 + (-4*zeta^2 + 16*zeta + 
12)*q^959 + 1/2*(10*zeta^2 - 5*zeta - 30)*q^960 + (-7*zeta^2 - 21*zeta + 
21)*q^963 + (-72*zeta^2 - 48*zeta + 48)*q^964 + (-zeta^2 + 4*zeta + 3)*q^966 + 
1/2*(46*zeta^2 - 23*zeta - 138)*q^967 + 1/2*(69*zeta^2 + 46*zeta - 46)*q^968 + 
(-2*zeta^2 - 6*zeta + 6)*q^969 + (5*zeta^2 + 15*zeta - 15)*q^970 + (-28*zeta^2 +
14*zeta + 84)*q^972 + (14*zeta^2 - 14*zeta - 28)*q^973 + (6*zeta^2 - 3*zeta - 
18)*q^974 + (9*zeta^2 + 27*zeta - 27)*q^976 + (-4*zeta^2 - 12*zeta + 12)*q^977 +
(-6*zeta^2 - 4*zeta + 4)*q^978 + (-2*zeta^2 + zeta + 6)*q^979 + (-26*zeta^2 - 
22*zeta + 36)*q^980 + (10*zeta^2 - 5*zeta - 30)*q^981 + (-9*zeta^2 - 6*zeta + 
6)*q^982 + 1/2*(15*zeta^2 + 45*zeta - 45)*q^983 + (4*zeta^2 + 12*zeta - 
12)*q^984 + (-6*zeta^2 - 4*zeta + 4)*q^985 + (-4*zeta^2 + 2*zeta + 12)*q^986 + 
(-8*zeta^2 - 10*zeta + 10)*q^987 + (-20*zeta^2 + 10*zeta + 60)*q^988 + 
(-9*zeta^2 - 6*zeta + 6)*q^989 + (2*zeta^2 + 6*zeta - 6)*q^990 + (2*zeta^2 + 
6*zeta - 6)*q^991 + (9*zeta^2 + 6*zeta - 6)*q^992 + (6*zeta^2 - 3*zeta - 
18)*q^993 + (17*zeta^2 + 37*zeta - 16)*q^994 + (-4*zeta^2 + 2*zeta + 12)*q^995 +
(39*zeta^2 + 26*zeta - 26)*q^996 + (9*zeta^2 + 27*zeta - 27)*q^997 + 
1/2*(2*zeta^2 - zeta - 6)*q^1000 + (12*zeta^2 - 6*zeta - 22)*q^1001 + 
1/2*(-2*zeta^2 + zeta + 6)*q^1002 + (-6*zeta^2 - 4*zeta + 4)*q^1003 + (-2*zeta^2
- 6*zeta + 6)*q^1004 + (-6*zeta^2 - 18*zeta + 18)*q^1005 + (12*zeta^2 + 8*zeta -
8)*q^1006 + (-8*zeta^2 + 4*zeta + 24)*q^1007 + (12*zeta^2 + 15*zeta - 15)*q^1008
+ (8*zeta^2 - 4*zeta - 24)*q^1009 + 1/2*(21*zeta^2 + 14*zeta - 14)*q^1010 + 
(-7*zeta^2 - 21*zeta + 21)*q^1011 + (-4*zeta^2 - 12*zeta + 12)*q^1012 + 
(-9*zeta^2 - 6*zeta + 6)*q^1013 + (-8*zeta^2 + 4*zeta + 24)*q^1014 + 
1/2*(-3*zeta^2 - 9*zeta + 2)*q^1015 + (-22*zeta^2 + 11*zeta + 66)*q^1016 + 
(12*zeta^2 + 8*zeta - 8)*q^1017 + 1/2*(15*zeta^2 + 45*zeta - 45)*q^1018 + 
(-2*zeta^2 - 6*zeta + 6)*q^1019 + (6*zeta^2 + 4*zeta - 4)*q^1020 + (-4*zeta^2 + 
2*zeta + 12)*q^1021 + (9*zeta^2 + 6*zeta - 13)*q^1022 + (24*zeta^2 - 12*zeta - 
72)*q^1023 + (9*zeta^2 + 6*zeta - 6)*q^1024 + (-zeta^2 - 3*zeta + 3)*q^1025 + 
(3*zeta^2 + 9*zeta - 9)*q^1026 + (42*zeta^2 + 28*zeta - 28)*q^1027 + (20*zeta^2 
- 10*zeta - 60)*q^1028 + (5*zeta^2 + 43*zeta + 6)*q^1029 + (-2*zeta^2 + zeta + 
6)*q^1030 + (12*zeta^2 + 8*zeta - 8)*q^1031 + 1/2*(-11*zeta^2 - 33*zeta + 
33)*q^1032 + (-9*zeta^2 - 27*zeta + 27)*q^1033 + (2*zeta^2 - zeta - 6)*q^1035 + 
(6*zeta^2 - 3*zeta - 18)*q^1037 + (12*zeta^2 + 8*zeta - 8)*q^1038 + (2*zeta^2 + 
6*zeta - 6)*q^1039 + (-3*zeta^2 - 9*zeta + 9)*q^1040 + (30*zeta^2 + 20*zeta - 
20)*q^1041 + (10*zeta^2 - 5*zeta - 30)*q^1042 + 1/2*(-5*zeta^2 - 43*zeta - 
6)*q^1043 + (2*zeta^2 - zeta - 6)*q^1044 + (-6*zeta^2 - 4*zeta + 4)*q^1045 + 
(17*zeta^2 + 51*zeta - 51)*q^1046 + 1/2*(25*zeta^2 + 75*zeta - 75)*q^1047 + 
(48*zeta^2 + 32*zeta - 32)*q^1048 + (36*zeta^2 - 18*zeta - 108)*q^1049 + 
1/2*(-6*zeta^2 + 3*zeta + 11)*q^1050 + (-2*zeta^2 + zeta + 6)*q^1051 + 
1/2*(81*zeta^2 + 54*zeta - 54)*q^1052 + (-5*zeta^2 - 15*zeta + 15)*q^1053 + 
(-12*zeta^2 - 36*zeta + 36)*q^1054 + (-9*zeta^2 - 6*zeta + 6)*q^1055 + 
(18*zeta^2 - 9*zeta - 54)*q^1056 + (10*zeta^2 - 19*zeta - 23)*q^1057 + 
(-22*zeta^2 + 11*zeta + 66)*q^1058 + (-33*zeta^2 - 22*zeta + 22)*q^1059 + 
(-3*zeta^2 - 9*zeta + 9)*q^1060 + (24*zeta^2 + 16*zeta - 16)*q^1062 + 
1/2*(42*zeta^2 - 21*zeta - 126)*q^1063 + (21*zeta^2 + 21*zeta - 28)*q^1064 + 
(10*zeta^2 - 5*zeta - 30)*q^1065 + (-48*zeta^2 - 32*zeta + 32)*q^1066 + 
(-2*zeta^2 - 6*zeta + 6)*q^1067 + 1/2*(9*zeta^2 + 27*zeta - 27)*q^1068 + 
(33*zeta^2 + 22*zeta - 22)*q^1069 + (10*zeta^2 - 5*zeta - 30)*q^1070 + 
(38*zeta^2 + 16*zeta - 58)*q^1071 + 1/2*(-6*zeta^2 + 3*zeta + 18)*q^1072 + 
1/2*(-zeta^2 - 3*zeta + 3)*q^1075 + (-12*zeta^2 - 8*zeta + 8)*q^1076 + 
(10*zeta^2 - 5*zeta - 30)*q^1077 + (12*zeta^2 - 6*zeta - 22)*q^1078 + 
(-20*zeta^2 + 10*zeta + 60)*q^1079 + (-6*zeta^2 - 4*zeta + 4)*q^1080 + (zeta^2 +
3*zeta - 3)*q^1081 + 1/2*(9*zeta^2 + 27*zeta - 27)*q^1082 + 1/2*(-33*zeta^2 - 
22*zeta + 22)*q^1083 + (22*zeta^2 - 11*zeta - 66)*q^1084 + (27*zeta^2 + 18*zeta 
- 39)*q^1085 + (-4*zeta^2 + 2*zeta + 12)*q^1086 + 1/2*(45*zeta^2 + 30*zeta - 
30)*q^1087 + (-9*zeta^2 - 27*zeta + 27)*q^1088 + (-zeta^2 - 3*zeta + 3)*q^1089 +
1/2*(33*zeta^2 + 22*zeta - 22)*q^1090 + (-8*zeta^2 + 4*zeta + 24)*q^1091 + 
(13*zeta^2 + 11*zeta - 18)*q^1092 + (-16*zeta^2 + 8*zeta + 48)*q^1093 + 
(-33*zeta^2 - 22*zeta + 22)*q^1094 + (-2*zeta^2 - 6*zeta + 6)*q^1095 + 
(-8*zeta^2 - 24*zeta + 24)*q^1096 + (12*zeta^2 + 8*zeta - 8)*q^1097 + 
(-18*zeta^2 + 9*zeta + 54)*q^1098 + (2*zeta^2 - 29*zeta - 13)*q^1099 + (2*zeta^2
- zeta - 6)*q^1100 + (-15*zeta^2 - 10*zeta + 10)*q^1101 + (-zeta^2 - 3*zeta + 
3)*q^1102 + (14*zeta^2 + 42*zeta - 42)*q^1103 + (-9*zeta^2 - 6*zeta + 6)*q^1104 
+ (-8*zeta^2 + 4*zeta + 24)*q^1105 + (20*zeta^2 - 59*zeta - 53)*q^1106 + 
1/2*(-14*zeta^2 + 7*zeta + 42)*q^1107 + (-21*zeta^2 - 14*zeta + 14)*q^1108 + 
(-12*zeta^2 - 36*zeta + 36)*q^1109 + (27*zeta^2 + 18*zeta - 18)*q^1111 + 
(-32*zeta^2 + 16*zeta + 96)*q^1112 + (3*zeta^2 - 33*zeta - 16)*q^1113 + 
(14*zeta^2 - 7*zeta - 42)*q^1114 + (6*zeta^2 + 4*zeta - 4)*q^1115 + (6*zeta^2 + 
18*zeta - 18)*q^1116 + (21*zeta^2 + 14*zeta - 14)*q^1118 + (-8*zeta^2 + 4*zeta +
24)*q^1119 + (13*zeta^2 + 11*zeta - 18)*q^1120 + (-8*zeta^2 + 4*zeta + 
24)*q^1121 + (10*zeta^2 + 30*zeta - 30)*q^1123 + (-12*zeta^2 - 36*zeta + 
36)*q^1124 + (3*zeta^2 + 2*zeta - 2)*q^1125 + (38*zeta^2 - 19*zeta - 114)*q^1126
+ 1/2*(-23*zeta^2 + 8*zeta + 41)*q^1127 + (-4*zeta^2 + 2*zeta + 12)*q^1128 + 
(-27*zeta^2 - 18*zeta + 18)*q^1129 + (-zeta^2 - 3*zeta + 3)*q^1130 + (-42*zeta^2
- 28*zeta + 28)*q^1132 + (-52*zeta^2 - 23*zeta + 79)*q^1134 + (-12*zeta^2 + 
6*zeta + 36)*q^1135 + (-27*zeta^2 - 18*zeta + 18)*q^1136 + (-11*zeta^2 - 33*zeta
+ 33)*q^1137 + (3*zeta^2 + 9*zeta - 9)*q^1138 + (-30*zeta^2 - 20*zeta + 
20)*q^1139 + (-6*zeta^2 + 3*zeta + 18)*q^1140 + (17*zeta^2 + 79*zeta - 2)*q^1141
+ (10*zeta^2 - 5*zeta - 30)*q^1142 + (6*zeta^2 + 4*zeta - 4)*q^1143 + (2*zeta^2 
+ 6*zeta - 6)*q^1144 + (-2*zeta^2 - 6*zeta + 6)*q^1145 + (-3*zeta^2 - 2*zeta + 
2)*q^1146 + 1/2*(-30*zeta^2 + 99*zeta + 83)*q^1148 + (-14*zeta^2 + 7*zeta + 
42)*q^1149 + (-9*zeta^2 - 27*zeta + 27)*q^1151 + (5*zeta^2 + 15*zeta - 
15)*q^1152 + (-18*zeta^2 - 12*zeta + 12)*q^1153 + (-34*zeta^2 + 17*zeta + 
102)*q^1154 + (26*zeta^2 + zeta - 43)*q^1155 + (-2*zeta^2 + zeta + 6)*q^1156 + 
(-21*zeta^2 - 14*zeta + 14)*q^1157 + (-3*zeta^2 - 9*zeta + 9)*q^1159 + 
1/2*(3*zeta^2 + 2*zeta - 2)*q^1160 + (4*zeta^2 - 2*zeta - 12)*q^1161 + 
1/2*(107*zeta^2 + 181*zeta - 118)*q^1162 + (4*zeta^2 - 2*zeta - 12)*q^1163 + 
(9*zeta^2 + 6*zeta - 6)*q^1164 + (-zeta^2 - 3*zeta + 3)*q^1165 + (-2*zeta^2 - 
6*zeta + 6)*q^1166 + (21*zeta^2 + 14*zeta - 14)*q^1167 + (-6*zeta^2 + 3*zeta + 
18)*q^1168 + (-95*zeta^2 - 61*zeta + 138)*q^1169 + (12*zeta^2 - 6*zeta - 
36)*q^1170 + (39*zeta^2 + 26*zeta - 26)*q^1171 + (-16*zeta^2 - 48*zeta + 
48)*q^1172 + (-zeta^2 - 3*zeta + 3)*q^1173 + (39*zeta^2 + 26*zeta - 26)*q^1174 +
(-28*zeta^2 - 14*zeta + 42)*q^1176 + (-8*zeta^2 + 4*zeta + 24)*q^1177 + 
(18*zeta^2 + 12*zeta - 12)*q^1178 + (8*zeta^2 + 24*zeta - 24)*q^1179 + (-zeta^2 
- 3*zeta + 3)*q^1180 + (-15*zeta^2 - 10*zeta + 10)*q^1181 + (-4*zeta^2 + 2*zeta 
+ 12)*q^1182 + 1/2*(zeta^2 + 38*zeta + 11)*q^1183 + (15*zeta^2 + 10*zeta - 
10)*q^1185 + (5*zeta^2 + 15*zeta - 15)*q^1186 + (10*zeta^2 + 30*zeta - 
30)*q^1187 + (6*zeta^2 + 4*zeta - 4)*q^1188 + (2*zeta^2 - zeta - 6)*q^1189 + 
(19*zeta^2 + 29*zeta - 22)*q^1190 + (-22*zeta^2 + 11*zeta + 66)*q^1191 + 
1/2*(-3*zeta^2 - 2*zeta + 2)*q^1192 + (12*zeta^2 + 36*zeta - 36)*q^1193 + 
(2*zeta^2 + 6*zeta - 6)*q^1194 + (12*zeta^2 + 8*zeta - 8)*q^1195 + (-4*zeta^2 + 
2*zeta + 12)*q^1196 + (-24*zeta^2 + 12*zeta + 44)*q^1197 + (8*zeta^2 - 4*zeta - 
24)*q^1198 + (3*zeta^2 + 2*zeta - 2)*q^1199 + 1/2*(-3*zeta^2 - 9*zeta + 
9)*q^1200 + (-9*zeta^2 - 27*zeta + 27)*q^1201 + (-27*zeta^2 - 18*zeta + 
18)*q^1202 + 1/2*(-22*zeta^2 + 11*zeta + 66)*q^1203 + (-15*zeta^2 - 24*zeta + 
17)*q^1204 + (4*zeta^2 - 2*zeta - 12)*q^1205 + (27*zeta^2 + 18*zeta - 18)*q^1206
+ (2*zeta^2 + 6*zeta - 6)*q^1207 + (9*zeta^2 + 27*zeta - 27)*q^1208 + 
1/2*(-14*zeta^2 + 7*zeta + 42)*q^1210 + (8*zeta^2 - 32*zeta - 24)*q^1211 + 
1/2*(50*zeta^2 - 25*zeta - 150)*q^1212 + (-12*zeta^2 - 8*zeta + 8)*q^1213 + 
(16*zeta^2 + 48*zeta - 48)*q^1214 + (2*zeta^2 + 6*zeta - 6)*q^1215 + (21*zeta^2 
+ 14*zeta - 14)*q^1216 + (6*zeta^2 - 3*zeta - 18)*q^1217 + 1/2*(-9*zeta^2 - 
6*zeta + 13)*q^1218 + (-6*zeta^2 + 3*zeta + 18)*q^1219 + (-4*zeta^2 - 12*zeta + 
12)*q^1222 + (-42*zeta^2 - 28*zeta + 28)*q^1223 + (-20*zeta^2 + 10*zeta + 
60)*q^1224 + (-3*zeta^2 - 9*zeta + 2)*q^1225 + (28*zeta^2 - 14*zeta - 84)*q^1226
+ 1/2*(57*zeta^2 + 38*zeta - 38)*q^1227 + 1/2*(-15*zeta^2 - 45*zeta + 45)*q^1228
+ (-4*zeta^2 - 12*zeta + 12)*q^1229 + (-3*zeta^2 - 2*zeta + 2)*q^1230 + 
(20*zeta^2 - 10*zeta - 60)*q^1231 + (-24*zeta^2 - 30*zeta + 30)*q^1232 + 
(8*zeta^2 - 4*zeta - 24)*q^1233 + (-12*zeta^2 - 8*zeta + 8)*q^1234 + (-2*zeta^2 
- 6*zeta + 6)*q^1235 + (zeta^2 + 3*zeta - 3)*q^1236 + (-51*zeta^2 - 34*zeta + 
34)*q^1237 + (28*zeta^2 - 14*zeta - 84)*q^1238 + (zeta^2 - 67*zeta - 24)*q^1239 
+ (-6*zeta^2 + 3*zeta + 18)*q^1240 + 1/2*(zeta^2 + 3*zeta - 3)*q^1242 + 
(-10*zeta^2 - 30*zeta + 30)*q^1243 + (45*zeta^2 + 30*zeta - 30)*q^1244 + 
(8*zeta^2 - 4*zeta - 24)*q^1245 + (-19*zeta^2 + 34*zeta + 43)*q^1246 + 
1/2*(2*zeta^2 - zeta - 6)*q^1247 + (-3*zeta^2 - 2*zeta + 2)*q^1248 + (8*zeta^2 +
24*zeta - 24)*q^1249 + 1/2*(zeta^2 + 3*zeta - 3)*q^1250 + (-6*zeta^2 - 4*zeta + 
4)*q^1251 + (-20*zeta^2 + 10*zeta + 60)*q^1252 + (-30*zeta^2 + 15*zeta + 
55)*q^1253 + (-4*zeta^2 + 2*zeta + 12)*q^1254 + (12*zeta^2 + 8*zeta - 8)*q^1255 
+ (15*zeta^2 + 45*zeta - 45)*q^1256 + (10*zeta^2 + 30*zeta - 30)*q^1257 + 
(-8*zeta^2 + 4*zeta + 24)*q^1259 + (-17*zeta^2 - 37*zeta + 16)*q^1260 + 
(-20*zeta^2 + 10*zeta + 60)*q^1261 + (24*zeta^2 + 16*zeta - 16)*q^1262 + 
1/2*(zeta^2 + 3*zeta - 3)*q^1263 + (3*zeta^2 + 9*zeta - 9)*q^1264 + (-6*zeta^2 -
4*zeta + 4)*q^1265 + (-6*zeta^2 + 3*zeta + 18)*q^1266 + 1/2*(23*zeta^2 + 34*zeta
- 27)*q^1267 + (-2*zeta^2 + zeta + 6)*q^1268 + (-3*zeta^2 - 2*zeta + 2)*q^1269 +
(-3*zeta^2 - 9*zeta + 9)*q^1270 + (6*zeta^2 + 18*zeta - 18)*q^1271 + (-15*zeta^2
- 10*zeta + 10)*q^1272 + (22*zeta^2 - 11*zeta - 66)*q^1273 + (-44*zeta^2 - 
76*zeta + 48)*q^1274 + (3*zeta^2 + 2*zeta - 2)*q^1276 + (-9*zeta^2 - 27*zeta + 
27)*q^1277 + (-8*zeta^2 - 24*zeta + 24)*q^1278 + (-27*zeta^2 - 18*zeta + 
18)*q^1279 + (-12*zeta^2 + 6*zeta + 36)*q^1280 + (63*zeta^2 + 63*zeta - 
84)*q^1281 + 1/2*(58*zeta^2 - 29*zeta - 174)*q^1282 + (30*zeta^2 + 20*zeta - 
20)*q^1283 + (-zeta^2 - 3*zeta + 3)*q^1284 + (-2*zeta^2 - 6*zeta + 6)*q^1285 + 
(-27*zeta^2 - 18*zeta + 18)*q^1286 + (-8*zeta^2 + 4*zeta + 24)*q^1287 + 
1/2*(7*zeta^2 - 7*zeta - 14)*q^1288 + (36*zeta^2 - 18*zeta - 108)*q^1289 + 
1/2*(-3*zeta^2 - 2*zeta + 2)*q^1290 + (-18*zeta^2 - 54*zeta + 54)*q^1291 + 
(10*zeta^2 + 30*zeta - 30)*q^1292 + (-24*zeta^2 - 16*zeta + 16)*q^1293 + 
(-24*zeta^2 + 12*zeta + 72)*q^1294 + (18*zeta^2 - 9*zeta - 54)*q^1296 + 
(3*zeta^2 + 2*zeta - 2)*q^1297 + (-6*zeta^2 - 18*zeta + 18)*q^1298 + (13*zeta^2 
+ 39*zeta - 39)*q^1299 + (9*zeta^2 + 6*zeta - 6)*q^1300 + (-42*zeta^2 + 21*zeta 
+ 126)*q^1301 + (18*zeta^2 - 9*zeta - 33)*q^1302 + 1/2*(-2*zeta^2 + zeta + 
6)*q^1303 + (-9*zeta^2 - 6*zeta + 6)*q^1304 + (zeta^2 + 3*zeta - 3)*q^1305 + 
(-10*zeta^2 - 30*zeta + 30)*q^1306 + 1/2*(-3*zeta^2 - 2*zeta + 2)*q^1307 + 
1/2*(26*zeta^2 - 13*zeta - 78)*q^1308 + (-6*zeta^2 - 18*zeta + 4)*q^1309 + 
(-16*zeta^2 + 8*zeta + 48)*q^1310 + (9*zeta^2 + 6*zeta - 6)*q^1311 + 1/2*(zeta^2
+ 3*zeta - 3)*q^1312 + (7*zeta^2 + 21*zeta - 21)*q^1313 + (-6*zeta^2 - 4*zeta + 
4)*q^1314 + 1/2*(-34*zeta^2 + 17*zeta + 102)*q^1315 + (-11*zeta^2 + 2*zeta + 
19)*q^1316 + (-24*zeta^2 + 12*zeta + 72)*q^1317 + (-33*zeta^2 - 22*zeta + 
22)*q^1318 + (zeta^2 + 3*zeta - 3)*q^1319 + (-3*zeta^2 - 9*zeta + 9)*q^1320 + 
(12*zeta^2 + 8*zeta - 8)*q^1321 + 1/2*(62*zeta^2 - 31*zeta - 186)*q^1322 + 
1/2*(-32*zeta^2 - 19*zeta + 47)*q^1323 + (24*zeta^2 - 12*zeta - 72)*q^1324 + 
(-3*zeta^2 - 2*zeta + 2)*q^1325 + (4*zeta^2 + 12*zeta - 12)*q^1326 + 
1/2*(-7*zeta^2 - 21*zeta + 21)*q^1327 + 1/2*(-81*zeta^2 - 54*zeta + 54)*q^1328 +
(6*zeta^2 - 3*zeta - 18)*q^1329 + (-19*zeta^2 - 8*zeta + 29)*q^1330 + (4*zeta^2 
- 2*zeta - 12)*q^1331 + (3*zeta^2 + 9*zeta - 9)*q^1333 + 1/2*(3*zeta^2 + 2*zeta 
- 2)*q^1335 + (24*zeta^2 - 12*zeta - 72)*q^1336 + (-20*zeta^2 - 46*zeta + 
18)*q^1337 + (4*zeta^2 - 2*zeta - 12)*q^1338 + (-6*zeta^2 - 4*zeta + 4)*q^1339 +
1/2*(21*zeta^2 + 63*zeta - 63)*q^1340 + (5*zeta^2 + 15*zeta - 15)*q^1341 + 
(18*zeta^2 + 12*zeta - 12)*q^1342 + (28*zeta^2 - 14*zeta - 84)*q^1343 + 
(-19*zeta^2 - 8*zeta + 29)*q^1344 + (18*zeta^2 - 9*zeta - 54)*q^1345 + 
(-42*zeta^2 - 28*zeta + 28)*q^1346 + 1/2*(zeta^2 + 3*zeta - 3)*q^1347 + 
(11*zeta^2 + 33*zeta - 33)*q^1348 + (12*zeta^2 + 8*zeta - 8)*q^1349 + (2*zeta^2 
- zeta - 6)*q^1350 + (-6*zeta^2 + 3*zeta + 11)*q^1351 + 1/2*(46*zeta^2 - 23*zeta
- 138)*q^1352 + (-12*zeta^2 - 8*zeta + 8)*q^1353 + (-12*zeta^2 - 36*zeta + 
36)*q^1354 + (3*zeta^2 + 9*zeta - 9)*q^1355 + (-33*zeta^2 - 22*zeta + 22)*q^1356
+ (-10*zeta^2 + 5*zeta + 30)*q^1357 + (46*zeta^2 + 68*zeta - 54)*q^1358 + 
(-12*zeta^2 + 6*zeta + 36)*q^1359 + (-9*zeta^2 - 6*zeta + 6)*q^1360 + (8*zeta^2 
+ 24*zeta - 24)*q^1361 + (6*zeta^2 + 18*zeta - 18)*q^1362 + (-12*zeta^2 + 6*zeta
+ 36)*q^1364 + (-9*zeta^2 - 6*zeta + 13)*q^1365 + (-36*zeta^2 + 18*zeta + 
108)*q^1366 + (-42*zeta^2 - 28*zeta + 28)*q^1367 + (-4*zeta^2 - 12*zeta + 
12)*q^1368 + (12*zeta^2 + 8*zeta - 8)*q^1370 + (24*zeta^2 - 12*zeta - 72)*q^1371
+ 1/2*(61*zeta^2 - 118*zeta - 141)*q^1372 + (-4*zeta^2 + 2*zeta + 12)*q^1373 + 
(-6*zeta^2 - 4*zeta + 4)*q^1374 + (-zeta^2 - 3*zeta + 3)*q^1375 + (4*zeta^2 + 
12*zeta - 12)*q^1376 + (-15*zeta^2 - 10*zeta + 10)*q^1377 + (4*zeta^2 - 2*zeta -
12)*q^1378 + (79*zeta^2 + 62*zeta - 111)*q^1379 + (-4*zeta^2 + 2*zeta + 
12)*q^1380 + (15*zeta^2 + 10*zeta - 10)*q^1381 + (-11*zeta^2 - 33*zeta + 
33)*q^1383 + (-24*zeta^2 - 16*zeta + 16)*q^1384 + (10*zeta^2 - 5*zeta - 
30)*q^1385 + (10*zeta^2 + 2*zeta - 16)*q^1386 + (4*zeta^2 - 2*zeta - 12)*q^1387 
+ 1/2*(-75*zeta^2 - 50*zeta + 50)*q^1388 + (-2*zeta^2 - 6*zeta + 6)*q^1389 + 
(-6*zeta^2 - 18*zeta + 18)*q^1390 + (30*zeta^2 + 20*zeta - 20)*q^1391 + 
1/2*(6*zeta^2 - 3*zeta - 18)*q^1392 + (-4*zeta^2 + 16*zeta + 12)*q^1393 + 
(-32*zeta^2 + 16*zeta + 96)*q^1394 + (-18*zeta^2 - 12*zeta + 12)*q^1395 + 
(-19*zeta^2 - 57*zeta + 57)*q^1396 + (-10*zeta^2 - 30*zeta + 30)*q^1397 + 
(-3*zeta^2 - 2*zeta + 2)*q^1398 + (-18*zeta^2 + 9*zeta + 54)*q^1399 + (7*zeta^2 
- 7*zeta - 14)*q^1400 + (20*zeta^2 - 10*zeta - 60)*q^1401 + 1/2*(27*zeta^2 + 
18*zeta - 18)*q^1402 + 1/2*(-9*zeta^2 - 27*zeta + 27)*q^1403 + (-8*zeta^2 - 
24*zeta + 24)*q^1404 + (30*zeta^2 + 20*zeta - 20)*q^1405 + 1/2*(-21*zeta^2 + 
105*zeta + 70)*q^1407 + (-12*zeta^2 + 6*zeta + 36)*q^1408 + (-6*zeta^2 - 4*zeta 
+ 4)*q^1409 + (10*zeta^2 + 30*zeta - 30)*q^1411 + (75*zeta^2 + 50*zeta - 
50)*q^1412 + (-12*zeta^2 + 6*zeta + 36)*q^1413 + (71*zeta^2 + 31*zeta - 
108)*q^1414 + (-21*zeta^2 - 14*zeta + 14)*q^1416 + (11*zeta^2 + 33*zeta - 
33)*q^1417 + 1/2*(19*zeta^2 + 57*zeta - 57)*q^1418 + (39*zeta^2 + 26*zeta - 
26)*q^1419 + (-2*zeta^2 + zeta + 6)*q^1420 + (6*zeta^2 - 3*zeta - 11)*q^1421 + 
(-32*zeta^2 + 16*zeta + 96)*q^1422 + (36*zeta^2 + 24*zeta - 24)*q^1423 + 
(-6*zeta^2 - 18*zeta + 18)*q^1424 + (zeta^2 + 3*zeta - 3)*q^1425 + 1/2*(2*zeta^2
- zeta - 6)*q^1427 + (11*zeta^2 - 2*zeta - 19)*q^1428 + (10*zeta^2 - 5*zeta - 
30)*q^1429 + (-6*zeta^2 - 4*zeta + 4)*q^1430 + (-zeta^2 - 3*zeta + 3)*q^1431 + 
(-5*zeta^2 - 15*zeta + 15)*q^1432 + (8*zeta^2 - 4*zeta - 24)*q^1434 + 
1/2*(-25*zeta^2 - 47*zeta + 26)*q^1435 + (-20*zeta^2 + 10*zeta + 60)*q^1436 + 
(-39*zeta^2 - 26*zeta + 26)*q^1437 + (6*zeta^2 + 18*zeta - 18)*q^1438 + 
(-13*zeta^2 - 39*zeta + 39)*q^1439 + (-9*zeta^2 - 6*zeta + 6)*q^1440 + 
1/2*(-10*zeta^2 + 19*zeta + 23)*q^1442 + (33*zeta^2 + 22*zeta - 22)*q^1444 + 
(4*zeta^2 + 12*zeta - 12)*q^1445 + (-2*zeta^2 - 6*zeta + 6)*q^1446 + 
1/2*(9*zeta^2 + 6*zeta - 6)*q^1447 + 1/2*(18*zeta^2 - 9*zeta - 54)*q^1448 + 
(-16*zeta^2 + zeta + 27)*q^1449 + 1/2*(-2*zeta^2 + zeta + 6)*q^1450 + (48*zeta^2
+ 32*zeta - 32)*q^1451 + 1/2*(25*zeta^2 + 75*zeta - 75)*q^1452 + (7*zeta^2 + 
21*zeta - 21)*q^1453 + (57*zeta^2 + 38*zeta - 38)*q^1454 + (-2*zeta^2 + zeta + 
6)*q^1455 + (-24*zeta^2 - 30*zeta + 30)*q^1456 + 1/2*(57*zeta^2 + 38*zeta - 
38)*q^1458 + (5*zeta^2 + 15*zeta - 15)*q^1459 + (zeta^2 + 3*zeta - 3)*q^1460 + 
(21*zeta^2 + 14*zeta - 14)*q^1461 + (14*zeta^2 - 7*zeta - 42)*q^1462 + 
(34*zeta^2 + 32*zeta - 46)*q^1463 + (12*zeta^2 - 6*zeta - 36)*q^1464 + 
(-11*zeta^2 - 33*zeta + 33)*q^1466 + (-18*zeta^2 - 54*zeta + 54)*q^1467 + 
1/2*(33*zeta^2 + 22*zeta - 22)*q^1468 + (4*zeta^2 - 2*zeta - 12)*q^1469 + 
(-9*zeta^2 - 6*zeta + 13)*q^1470 + (10*zeta^2 - 5*zeta - 30)*q^1471 + 
1/2*(15*zeta^2 + 10*zeta - 10)*q^1472 + (5*zeta^2 + 15*zeta - 15)*q^1473 + 
(zeta^2 + 3*zeta - 3)*q^1474 + (-9*zeta^2 - 6*zeta + 6)*q^1475 + (26*zeta^2 - 
13*zeta - 78)*q^1476 + (-57*zeta^2 - 24*zeta + 87)*q^1477 + (-12*zeta^2 + 6*zeta
+ 36)*q^1478 + (-7*zeta^2 - 21*zeta + 21)*q^1481 + (-6*zeta^2 - 4*zeta + 
4)*q^1482 + 1/2*(-42*zeta^2 + 21*zeta + 126)*q^1483 + (-9*zeta^2 + 15*zeta + 
20)*q^1484 + (21*zeta^2 + 14*zeta - 14)*q^1486 + 1/2*(31*zeta^2 + 93*zeta - 
93)*q^1487 + (9*zeta^2 + 27*zeta - 27)*q^1488 + (-15*zeta^2 - 10*zeta + 
10)*q^1489 + 1/2*(-6*zeta^2 + 3*zeta + 18)*q^1490 + (-68*zeta^2 - zeta + 
113)*q^1491 + (-20*zeta^2 + 10*zeta + 60)*q^1492 + (69*zeta^2 + 46*zeta - 
46)*q^1493 + (-19*zeta^2 - 57*zeta + 57)*q^1494 + (6*zeta^2 + 4*zeta - 4)*q^1496
+ (-4*zeta^2 + 2*zeta + 12)*q^1497 + 1/2*(38*zeta^2 - 89*zeta - 93)*q^1498 + 
(18*zeta^2 - 9*zeta - 54)*q^1499 + 1/2*(-3*zeta^2 - 2*zeta + 2)*q^1500 + 
(12*zeta^2 + 36*zeta - 36)*q^1501 + (-16*zeta^2 - 48*zeta + 48)*q^1502 + 
(63*zeta^2 + 42*zeta - 42)*q^1503 + (2*zeta^2 - zeta - 6)*q^1504 + (5*zeta^2 + 
22*zeta - 1)*q^1505 + (8*zeta^2 - 4*zeta - 24)*q^1506 + (3*zeta^2 + 9*zeta - 
9)*q^1508 + (-15*zeta^2 - 45*zeta + 45)*q^1509 + (-15*zeta^2 - 10*zeta + 
10)*q^1510 + (-26*zeta^2 + 13*zeta + 78)*q^1511 + 1/2*(-49*zeta^2 - 14*zeta + 
77)*q^1512 + (-14*zeta^2 + 7*zeta + 42)*q^1513 + (36*zeta^2 + 24*zeta - 
24)*q^1514 + 1/2*(-9*zeta^2 - 27*zeta + 27)*q^1515 + (25*zeta^2 + 75*zeta - 
75)*q^1516 + (-4*zeta^2 + 2*zeta + 12)*q^1518 + (18*zeta^2 + 54*zeta - 
12)*q^1519 + (6*zeta^2 - 3*zeta - 18)*q^1520 + (-3*zeta^2 - 2*zeta + 2)*q^1521 +
(3*zeta^2 + 9*zeta - 9)*q^1522 + (-2*zeta^2 - 6*zeta + 6)*q^1523 + (-39*zeta^2 -
26*zeta + 26)*q^1524 + (6*zeta^2 - 3*zeta - 18)*q^1525 + (82*zeta^2 + 29*zeta - 
127)*q^1526 + 1/2*(-46*zeta^2 + 23*zeta + 138)*q^1527 + (24*zeta^2 + 16*zeta - 
16)*q^1528 + (-8*zeta^2 - 24*zeta + 24)*q^1529 + (-6*zeta^2 - 18*zeta + 
18)*q^1530 + (-54*zeta^2 - 36*zeta + 36)*q^1531 + 1/2*(14*zeta^2 - 7*zeta - 
42)*q^1532 + (-zeta^2 + 25*zeta + 10)*q^1533 + (-20*zeta^2 + 10*zeta + 
60)*q^1534 + 1/2*(-9*zeta^2 - 6*zeta + 6)*q^1535 + (12*zeta^2 + 36*zeta - 
36)*q^1536 + (-zeta^2 - 3*zeta + 3)*q^1537 + (-9*zeta^2 - 6*zeta + 6)*q^1538 + 
(-2*zeta^2 + zeta + 6)*q^1539 + (-22*zeta^2 + 4*zeta + 38)*q^1540 + (12*zeta^2 -
6*zeta - 36)*q^1541 + (-6*zeta^2 - 4*zeta + 4)*q^1542 + (-16*zeta^2 - 48*zeta + 
48)*q^1543 + (-zeta^2 - 3*zeta + 3)*q^1544 + (-28*zeta^2 + 14*zeta + 84)*q^1546 
+ (-20*zeta^2 + 38*zeta + 46)*q^1547 + (-2*zeta^2 + zeta + 6)*q^1548 + (6*zeta^2
+ 4*zeta - 4)*q^1549 + (-3*zeta^2 - 9*zeta + 9)*q^1550 + (-4*zeta^2 - 12*zeta + 
12)*q^1551 + (-18*zeta^2 - 12*zeta + 12)*q^1552 + (-20*zeta^2 + 10*zeta + 
60)*q^1553 + (2*zeta^2 - zeta - 6)*q^1555 + (-60*zeta^2 - 40*zeta + 40)*q^1556 +
(8*zeta^2 + 24*zeta - 24)*q^1557 + (-9*zeta^2 - 27*zeta + 27)*q^1558 + 
(27*zeta^2 + 18*zeta - 18)*q^1559 + (2*zeta^2 - zeta - 6)*q^1560 + (-25*zeta^2 -
26*zeta + 33)*q^1561 + (-12*zeta^2 + 6*zeta + 36)*q^1562 + (-21*zeta^2 - 14*zeta
+ 14)*q^1563 + (2*zeta^2 + 6*zeta - 6)*q^1564 + (2*zeta^2 + 6*zeta - 6)*q^1565 +
(3*zeta^2 + 2*zeta - 2)*q^1566 + 1/2*(22*zeta^2 - 11*zeta - 66)*q^1567 + 
1/2*(43*zeta^2 + 59*zeta - 52)*q^1568 + (-26*zeta^2 + 13*zeta + 78)*q^1569 + 
(-21*zeta^2 - 14*zeta + 14)*q^1570 + (6*zeta^2 + 18*zeta - 18)*q^1571 + 
(8*zeta^2 + 24*zeta - 24)*q^1572 + (-21*zeta^2 - 14*zeta + 14)*q^1573 + 
(-2*zeta^2 + zeta + 6)*q^1574 + (zeta^2 - 4*zeta - 3)*q^1575 + (-6*zeta^2 + 
3*zeta + 18)*q^1576 + (-3*zeta^2 - 2*zeta + 2)*q^1577 + 1/2*(17*zeta^2 + 51*zeta
- 51)*q^1578 + (10*zeta^2 + 30*zeta - 30)*q^1579 + (-39*zeta^2 - 26*zeta + 
26)*q^1580 + (-17*zeta^2 - 37*zeta + 16)*q^1582 + (12*zeta^2 - 6*zeta - 
36)*q^1583 + (18*zeta^2 + 12*zeta - 12)*q^1584 + (-7*zeta^2 - 21*zeta + 
21)*q^1585 + (-12*zeta^2 - 36*zeta + 36)*q^1586 + (-27*zeta^2 - 18*zeta + 
18)*q^1587 + (-4*zeta^2 + 2*zeta + 12)*q^1588 + (54*zeta^2 + 15*zeta - 
85)*q^1589 + (-2*zeta^2 + zeta + 6)*q^1590 + (-8*zeta^2 - 24*zeta + 24)*q^1592 +
(zeta^2 + 3*zeta - 3)*q^1593 + (12*zeta^2 + 8*zeta - 8)*q^1594 + (2*zeta^2 - 
zeta - 6)*q^1595 + (24*zeta^2 + 9*zeta - 37)*q^1596 + (-8*zeta^2 + 4*zeta + 
24)*q^1597 + (-12*zeta^2 - 8*zeta + 8)*q^1598 + (-2*zeta^2 - 6*zeta + 6)*q^1599 
+ (-zeta^2 - 3*zeta + 3)*q^1600 + (-12*zeta^2 - 8*zeta + 8)*q^1601 + (22*zeta^2 
- 11*zeta - 66)*q^1602 + (-19*zeta^2 - 29*zeta + 22)*q^1603 + (46*zeta^2 - 
23*zeta - 138)*q^1604 + (6*zeta^2 + 4*zeta - 4)*q^1605 + (2*zeta^2 + 6*zeta - 
6)*q^1606 + 1/2*(-29*zeta^2 - 87*zeta + 87)*q^1607 + 1/2*(69*zeta^2 + 46*zeta - 
46)*q^1608 + (-6*zeta^2 + 3*zeta + 18)*q^1609 + 1/2*(-9*zeta^2 - 6*zeta + 
13)*q^1610 + (20*zeta^2 - 10*zeta - 60)*q^1611 + (-54*zeta^2 - 36*zeta + 
36)*q^1612 + (zeta^2 + 3*zeta - 3)*q^1613 + (-9*zeta^2 - 27*zeta + 27)*q^1614 + 
(-6*zeta^2 - 4*zeta + 4)*q^1615 + (-24*zeta^2 + 12*zeta + 72)*q^1616 + 
(64*zeta^2 - 4*zeta - 108)*q^1617 + 1/2*(58*zeta^2 - 29*zeta - 174)*q^1618 + 
(-63*zeta^2 - 42*zeta + 42)*q^1619 + (2*zeta^2 + 6*zeta - 6)*q^1620 + (16*zeta^2
+ 48*zeta - 48)*q^1621 + (21*zeta^2 + 14*zeta - 14)*q^1622 + 1/2*(-34*zeta^2 + 
17*zeta + 102)*q^1623 + (14*zeta^2 + 7*zeta - 21)*q^1624 + (-2*zeta^2 + zeta + 
6)*q^1625 + (9*zeta^2 + 6*zeta - 6)*q^1626 + 1/2*(9*zeta^2 + 27*zeta - 
27)*q^1627 + (-9*zeta^2 - 6*zeta + 6)*q^1629 + (14*zeta^2 - 7*zeta - 42)*q^1630 
+ (-26*zeta^2 - 64*zeta + 22)*q^1631 + (-2*zeta^2 + zeta + 6)*q^1632 + 
(15*zeta^2 + 10*zeta - 10)*q^1633 + (3*zeta^2 + 9*zeta - 9)*q^1634 + 
1/2*(-zeta^2 - 3*zeta + 3)*q^1635 + (6*zeta^2 + 4*zeta - 4)*q^1636 + (24*zeta^2 
- 12*zeta - 72)*q^1637 + (24*zeta^2 - 54*zeta - 58)*q^1638 + (14*zeta^2 - 7*zeta
- 42)*q^1639 + 1/2*(33*zeta^2 + 22*zeta - 22)*q^1640 + (-4*zeta^2 - 12*zeta + 
12)*q^1641 + (19*zeta^2 + 57*zeta - 57)*q^1642 + (18*zeta^2 + 12*zeta - 
12)*q^1643 + (8*zeta^2 - 4*zeta - 24)*q^1644 + (6*zeta^2 - 3*zeta - 11)*q^1645 +
1/2*(-9*zeta^2 - 6*zeta + 6)*q^1647 + 1/2*(-3*zeta^2 - 9*zeta + 9)*q^1648 + 
(10*zeta^2 + 30*zeta - 30)*q^1649 + (-3*zeta^2 - 2*zeta + 2)*q^1650 + (12*zeta^2
- 6*zeta - 36)*q^1651 + (25*zeta^2 + 89*zeta - 12)*q^1652 + (-2*zeta^2 + zeta + 
6)*q^1653 + (30*zeta^2 + 20*zeta - 20)*q^1654 + (6*zeta^2 + 18*zeta - 18)*q^1655
+ (zeta^2 + 3*zeta - 3)*q^1656 + (15*zeta^2 + 10*zeta - 10)*q^1657 + (26*zeta^2 
- 13*zeta - 78)*q^1658 + (-31*zeta^2 - 44*zeta + 37)*q^1659 + 1/2*(22*zeta^2 - 
11*zeta - 66)*q^1660 + (6*zeta^2 + 4*zeta - 4)*q^1661 + (-5*zeta^2 - 15*zeta + 
15)*q^1662 + 1/2*(-5*zeta^2 - 15*zeta + 15)*q^1663 + (-48*zeta^2 - 32*zeta + 
32)*q^1664 + (-76*zeta^2 - 32*zeta + 116)*q^1666 + 1/2*(30*zeta^2 - 15*zeta - 
90)*q^1667 + (-42*zeta^2 - 28*zeta + 28)*q^1668 + (-12*zeta^2 - 36*zeta + 
36)*q^1669 + (11*zeta^2 + 33*zeta - 33)*q^1670 + (-39*zeta^2 - 26*zeta + 
26)*q^1671 + (4*zeta^2 - 2*zeta - 12)*q^1672 + (49*zeta^2 + 14*zeta - 77)*q^1673
+ (-12*zeta^2 + 6*zeta + 36)*q^1674 + 1/2*(3*zeta^2 + 2*zeta - 2)*q^1675 + 
(-8*zeta^2 - 24*zeta + 24)*q^1676 + (-zeta^2 - 3*zeta + 3)*q^1677 + (-24*zeta^2 
- 16*zeta + 16)*q^1678 + (4*zeta^2 - 2*zeta - 12)*q^1679 + (-3*zeta^2 + 12*zeta 
+ 9)*q^1680 + (20*zeta^2 - 10*zeta - 60)*q^1681 + (42*zeta^2 + 28*zeta - 
28)*q^1682 + (4*zeta^2 + 12*zeta - 12)*q^1683 + (8*zeta^2 + 24*zeta - 24)*q^1684
+ (3*zeta^2 + 2*zeta - 2)*q^1685 + (20*zeta^2 - 10*zeta - 60)*q^1686 + 
(58*zeta^2 - 43*zeta - 111)*q^1687 + (30*zeta^2 - 15*zeta - 90)*q^1688 + 
(30*zeta^2 + 20*zeta - 20)*q^1689 + 1/2*(7*zeta^2 + 21*zeta - 21)*q^1690 + 
(-3*zeta^2 - 9*zeta + 9)*q^1691 + (6*zeta^2 + 4*zeta - 4)*q^1692 + (-26*zeta^2 +
13*zeta + 78)*q^1693 + (-31*zeta^2 + 40*zeta + 65)*q^1694 + (-10*zeta^2 + 5*zeta
+ 30)*q^1695 + (15*zeta^2 + 10*zeta - 10)*q^1696 + (-2*zeta^2 - 6*zeta + 
6)*q^1697 + (-27*zeta^2 - 18*zeta + 18)*q^1699 + (6*zeta^2 - 3*zeta - 18)*q^1700
+ (-14*zeta^2 - 70*zeta)*q^1701 + (-48*zeta^2 - 32*zeta + 32)*q^1703 + (7*zeta^2
+ 21*zeta - 21)*q^1704 + (6*zeta^2 + 18*zeta - 18)*q^1705 + (-15*zeta^2 - 
10*zeta + 10)*q^1706 + (2*zeta^2 - zeta - 6)*q^1707 + 1/2*(-189*zeta^2 - 
126*zeta + 273)*q^1708 + (12*zeta^2 + 8*zeta - 8)*q^1710 + (-3*zeta^2 - 9*zeta +
9)*q^1711 + 1/2*(9*zeta^2 + 27*zeta - 27)*q^1712 + (21*zeta^2 + 14*zeta - 
14)*q^1713 + (26*zeta^2 - 13*zeta - 78)*q^1714 + 1/2*(-18*zeta^2 + 9*zeta + 
33)*q^1715 + (4*zeta^2 - 2*zeta - 12)*q^1716 + (21*zeta^2 + 14*zeta - 14)*q^1717
+ (4*zeta^2 + 12*zeta - 12)*q^1718 + (10*zeta^2 + 30*zeta - 30)*q^1719 + 
(-3*zeta^2 - 2*zeta + 2)*q^1720 + (-16*zeta^2 + 8*zeta + 48)*q^1721 + 
1/2*(-47*zeta^2 - 22*zeta + 71)*q^1722 + 1/2*(-10*zeta^2 + 5*zeta + 30)*q^1723 +
(-15*zeta^2 - 10*zeta + 10)*q^1724 + (zeta^2 + 3*zeta - 3)*q^1725 + (5*zeta^2 + 
15*zeta - 15)*q^1726 + (-6*zeta^2 - 4*zeta + 4)*q^1727 + 1/2*(-18*zeta^2 + 
9*zeta + 54)*q^1728 + (-22*zeta^2 - 38*zeta + 24)*q^1729 + (21*zeta^2 + 14*zeta 
- 14)*q^1731 + (-5*zeta^2 - 15*zeta + 15)*q^1732 + (4*zeta^2 + 12*zeta - 
12)*q^1733 + (12*zeta^2 + 8*zeta - 8)*q^1734 + 1/2*(-10*zeta^2 + 5*zeta + 
30)*q^1735 + (-42*zeta^2 + 42*zeta + 84)*q^1736 + (4*zeta^2 - 2*zeta - 
12)*q^1737 + (6*zeta^2 + 4*zeta - 4)*q^1738 + 1/2*(-zeta^2 - 3*zeta + 3)*q^1740 
+ (30*zeta^2 + 20*zeta - 20)*q^1741 + (-38*zeta^2 + 19*zeta + 114)*q^1742 + 
1/2*(-134*zeta^2 + 11*zeta + 227)*q^1743 + (-18*zeta^2 + 9*zeta + 54)*q^1744 + 
(-6*zeta^2 - 4*zeta + 4)*q^1745 + (-14*zeta^2 - 42*zeta + 42)*q^1746 + 
(16*zeta^2 + 48*zeta - 48)*q^1747 + (-9*zeta^2 - 6*zeta + 6)*q^1748 + (28*zeta^2
- 14*zeta - 84)*q^1749 + (4*zeta^2 + 5*zeta - 5)*q^1750 + (-4*zeta^2 + 2*zeta + 
12)*q^1751 + (9*zeta^2 + 6*zeta - 6)*q^1752 + (-11*zeta^2 - 33*zeta + 33)*q^1753
+ (13*zeta^2 + 39*zeta - 39)*q^1754 + (6*zeta^2 + 4*zeta - 4)*q^1755 + 
(-24*zeta^2 + 12*zeta + 72)*q^1756 + (-5*zeta^2 - 22*zeta + 1)*q^1757 + 
(-54*zeta^2 - 36*zeta + 36)*q^1759 + (4*zeta^2 + 12*zeta - 12)*q^1760 + 
(-7*zeta^2 - 21*zeta + 21)*q^1761 + 1/2*(-3*zeta^2 - 2*zeta + 2)*q^1762 + 
1/2*(-10*zeta^2 + 5*zeta + 30)*q^1763 + (68*zeta^2 + zeta - 113)*q^1764 + 
(-2*zeta^2 + zeta + 6)*q^1765 + (-15*zeta^2 - 10*zeta + 10)*q^1766 + (-6*zeta^2 
- 18*zeta + 18)*q^1767 + (-18*zeta^2 - 54*zeta + 54)*q^1768 + (9*zeta^2 + 6*zeta
- 6)*q^1769 + (-6*zeta^2 + 3*zeta + 18)*q^1770 + (25*zeta^2 + 26*zeta - 
33)*q^1771 + 1/2*(66*zeta^2 - 33*zeta - 198)*q^1772 + (-54*zeta^2 - 36*zeta + 
36)*q^1773 + (16*zeta^2 + 48*zeta - 48)*q^1774 + (3*zeta^2 + 9*zeta - 9)*q^1775 
+ (-32*zeta^2 + 16*zeta + 96)*q^1777 + (-36*zeta^2 - 66*zeta + 38)*q^1778 + 
(-38*zeta^2 + 19*zeta + 114)*q^1779 + (15*zeta^2 + 10*zeta - 10)*q^1780 + 
(8*zeta^2 + 24*zeta - 24)*q^1781 + (-6*zeta^2 - 18*zeta + 18)*q^1782 + 
(-24*zeta^2 - 16*zeta + 16)*q^1783 + (-6*zeta^2 + 3*zeta + 18)*q^1784 + 
(-6*zeta^2 + 3*zeta + 11)*q^1785 + (4*zeta^2 - 2*zeta - 12)*q^1786 + 
1/2*(-11*zeta^2 - 33*zeta + 33)*q^1788 + (-4*zeta^2 - 12*zeta + 12)*q^1789 + 
(15*zeta^2 + 10*zeta - 10)*q^1790 + (8*zeta^2 - 4*zeta - 24)*q^1791 + 
1/2*(-30*zeta^2 + 99*zeta + 83)*q^1792 + (-44*zeta^2 + 22*zeta + 132)*q^1793 + 
(2*zeta^2 + 6*zeta - 6)*q^1796 + (24*zeta^2 + 16*zeta - 16)*q^1797 + (6*zeta^2 -
3*zeta - 18)*q^1798 + (8*zeta^2 + 52*zeta + 4)*q^1799 + (-6*zeta^2 + 3*zeta + 
18)*q^1800 + (-45*zeta^2 - 30*zeta + 30)*q^1801 + (-2*zeta^2 - 6*zeta + 
6)*q^1802 + (-5*zeta^2 - 15*zeta + 15)*q^1803 + (-3*zeta^2 - 2*zeta + 2)*q^1804 
+ (22*zeta^2 + 17*zeta - 31)*q^1806 + (24*zeta^2 - 12*zeta - 72)*q^1807 + 
(27*zeta^2 + 18*zeta - 18)*q^1808 + (5*zeta^2 + 15*zeta - 15)*q^1809 + 
1/2*(zeta^2 + 3*zeta - 3)*q^1810 + (15*zeta^2 + 10*zeta - 10)*q^1811 + 
(-6*zeta^2 + 3*zeta + 18)*q^1812 + (-8*zeta^2 + 4*zeta + 24)*q^1814 + 
1/2*(27*zeta^2 + 18*zeta - 18)*q^1815 + (-13*zeta^2 - 39*zeta + 39)*q^1816 + 
(5*zeta^2 + 15*zeta - 15)*q^1817 + (-45*zeta^2 - 30*zeta + 30)*q^1818 + 
(20*zeta^2 - 10*zeta - 60)*q^1819 + (48*zeta^2 + 18*zeta - 74)*q^1820 + 
(-2*zeta^2 + zeta + 6)*q^1821 + (24*zeta^2 + 16*zeta - 16)*q^1822 + 
1/2*(-7*zeta^2 - 21*zeta + 21)*q^1823 + (-5*zeta^2 - 15*zeta + 15)*q^1824 + 
(3*zeta^2 + 2*zeta - 2)*q^1825 + (-18*zeta^2 + 9*zeta + 54)*q^1826 + (5*zeta^2 +
zeta - 8)*q^1827 + (12*zeta^2 - 6*zeta - 36)*q^1828 + (54*zeta^2 + 36*zeta - 
36)*q^1829 + (-3*zeta^2 - 9*zeta + 9)*q^1830 + (-16*zeta^2 - 48*zeta + 
48)*q^1831 + (27*zeta^2 + 18*zeta - 18)*q^1832 + (-40*zeta^2 + 76*zeta + 
92)*q^1834 + 1/2*(6*zeta^2 - 3*zeta - 18)*q^1835 + (-24*zeta^2 - 16*zeta + 
16)*q^1836 + (-20*zeta^2 - 60*zeta + 60)*q^1837 + (-17*zeta^2 - 51*zeta + 
51)*q^1838 + (-12*zeta^2 - 8*zeta + 8)*q^1839 + 1/2*(6*zeta^2 - 3*zeta - 
18)*q^1840 + (19*zeta^2 + 50*zeta - 15)*q^1841 + 1/2*(-6*zeta^2 + 3*zeta + 
18)*q^1842 + (-18*zeta^2 - 12*zeta + 12)*q^1843 + (34*zeta^2 + 102*zeta - 
102)*q^1844 + (5*zeta^2 + 15*zeta - 15)*q^1845 + (30*zeta^2 + 20*zeta - 
20)*q^1846 + (42*zeta + 14)*q^1848 + (-10*zeta^2 + 5*zeta + 30)*q^1849 + 
(4*zeta^2 + 12*zeta - 12)*q^1851 + 1/2*(-43*zeta^2 - 129*zeta + 129)*q^1852 + 
(33*zeta^2 + 22*zeta - 22)*q^1853 + (6*zeta^2 - 3*zeta - 18)*q^1854 + (17*zeta^2
+ 16*zeta - 23)*q^1855 + (2*zeta^2 - zeta - 6)*q^1856 + (60*zeta^2 + 40*zeta - 
40)*q^1857 + 1/2*(3*zeta^2 + 9*zeta - 9)*q^1858 + (9*zeta^2 + 27*zeta - 
27)*q^1859 + (9*zeta^2 + 6*zeta - 6)*q^1860 + (8*zeta^2 - 4*zeta - 24)*q^1861 + 
(13*zeta^2 - 31*zeta - 32)*q^1862 + 1/2*(-14*zeta^2 + 7*zeta + 42)*q^1863 + 
(30*zeta^2 + 20*zeta - 20)*q^1864 + (-6*zeta^2 - 18*zeta + 18)*q^1865 + (-zeta^2
- 3*zeta + 3)*q^1866 + 1/2*(-51*zeta^2 - 34*zeta + 34)*q^1867 + 1/2*(-38*zeta^2 
+ 19*zeta + 114)*q^1868 + (-22*zeta^2 - 17*zeta + 31)*q^1869 + (-4*zeta^2 + 
2*zeta + 12)*q^1870 + (6*zeta^2 + 18*zeta - 18)*q^1872 + (-11*zeta^2 - 33*zeta +
33)*q^1873 + (-42*zeta^2 - 28*zeta + 28)*q^1874 + 1/2*(-2*zeta^2 + zeta + 
6)*q^1875 + (63*zeta^2 + 42*zeta - 91)*q^1876 + (-8*zeta^2 + 4*zeta + 24)*q^1877
+ (6*zeta^2 + 4*zeta - 4)*q^1878 + (12*zeta^2 + 36*zeta - 36)*q^1879 + (zeta^2 +
3*zeta - 3)*q^1880 + (-24*zeta^2 - 16*zeta + 16)*q^1881 + (-38*zeta^2 + 19*zeta 
+ 114)*q^1882 + 1/2*(-102*zeta^2 - 75*zeta + 145)*q^1883 + (-18*zeta^2 + 9*zeta 
+ 54)*q^1884 + (-3*zeta^2 - 2*zeta + 2)*q^1885 + (-zeta^2 - 3*zeta + 3)*q^1886 +
(33*zeta^2 + 22*zeta - 22)*q^1888 + (16*zeta^2 - 8*zeta - 48)*q^1889 + 
1/2*(10*zeta^2 - 19*zeta - 23)*q^1890 + (-36*zeta^2 + 18*zeta + 108)*q^1891 + 
(-24*zeta^2 - 16*zeta + 16)*q^1892 + (-2*zeta^2 - 6*zeta + 6)*q^1893 + 
(11*zeta^2 + 33*zeta - 33)*q^1894 + (-3*zeta^2 - 2*zeta + 2)*q^1895 + 
(-22*zeta^2 + 11*zeta + 66)*q^1896 + (27*zeta^2 + 39*zeta - 32)*q^1897 + 
(4*zeta^2 - 2*zeta - 12)*q^1898 + (36*zeta^2 + 24*zeta - 24)*q^1899 + (zeta^2 + 
3*zeta - 3)*q^1900 + (-7*zeta^2 - 21*zeta + 21)*q^1901 + (-21*zeta^2 - 14*zeta +
14)*q^1902 + (32*zeta^2 - 16*zeta - 96)*q^1903 + (-30*zeta^2 - 6*zeta + 
48)*q^1904 + (-10*zeta^2 + 5*zeta + 30)*q^1905 + (18*zeta^2 + 12*zeta - 
12)*q^1906 + 1/2*(3*zeta^2 + 9*zeta - 9)*q^1907 + (-4*zeta^2 - 12*zeta + 
12)*q^1908 + (12*zeta^2 + 8*zeta - 8)*q^1909 + (-12*zeta^2 + 6*zeta + 36)*q^1910
+ (-6*zeta^2 - 18*zeta + 4)*q^1911 + (-34*zeta^2 + 17*zeta + 102)*q^1912 + 
(-3*zeta^2 - 2*zeta + 2)*q^1913 + (-zeta^2 - 3*zeta + 3)*q^1914 + 1/2*(-7*zeta^2
- 21*zeta + 21)*q^1915 + (96*zeta^2 + 64*zeta - 64)*q^1916 + (2*zeta^2 - zeta - 
6)*q^1917 + (58*zeta^2 + 20*zeta - 90)*q^1918 + (2*zeta^2 - zeta - 6)*q^1919 + 
(9*zeta^2 + 6*zeta - 6)*q^1920 + (-2*zeta^2 - 6*zeta + 6)*q^1921 + 1/2*(5*zeta^2
+ 15*zeta - 15)*q^1922 + 1/2*(51*zeta^2 + 34*zeta - 34)*q^1923 + (-2*zeta^2 + 
8*zeta + 6)*q^1925 + (-26*zeta^2 + 13*zeta + 78)*q^1926 + (6*zeta^2 + 4*zeta - 
4)*q^1927 + (17*zeta^2 + 51*zeta - 51)*q^1928 + (11*zeta^2 + 33*zeta - 
33)*q^1929 + (3*zeta^2 + 2*zeta - 2)*q^1930 + (46*zeta^2 - 23*zeta - 138)*q^1931
+ 1/2*(46*zeta^2 + 5*zeta - 75)*q^1932 + (26*zeta^2 - 13*zeta - 78)*q^1933 + 
(-42*zeta^2 - 28*zeta + 28)*q^1934 + (-5*zeta^2 - 15*zeta + 15)*q^1935 + 
(-12*zeta^2 - 36*zeta + 36)*q^1936 + (-9*zeta^2 - 6*zeta + 6)*q^1937 + 
(-4*zeta^2 + 2*zeta + 12)*q^1938 + (-14*zeta^2 - 28*zeta + 14)*q^1939 + 
(16*zeta^2 - 8*zeta - 48)*q^1940 + (15*zeta^2 + 10*zeta - 10)*q^1941 + 
(-12*zeta^2 - 36*zeta + 36)*q^1942 + 1/2*(zeta^2 + 3*zeta - 3)*q^1943 + 
(6*zeta^2 + 4*zeta - 4)*q^1944 + (4*zeta^2 - 2*zeta - 12)*q^1945 + (-63*zeta^2 -
105*zeta + 70)*q^1946 + (52*zeta^2 - 26*zeta - 156)*q^1947 + (-24*zeta^2 - 
16*zeta + 16)*q^1948 + (3*zeta^2 + 9*zeta - 9)*q^1949 + (zeta^2 + 3*zeta - 
3)*q^1950 + (-15*zeta^2 - 10*zeta + 10)*q^1951 + 1/2*(-42*zeta^2 + 21*zeta + 
126)*q^1952 + (-6*zeta^2 + 24*zeta + 18)*q^1953 + (2*zeta^2 - zeta - 6)*q^1954 +
(15*zeta^2 + 45*zeta - 45)*q^1956 + (-zeta^2 - 3*zeta + 3)*q^1957 + (-12*zeta^2 
- 8*zeta + 8)*q^1958 + (24*zeta^2 - 12*zeta - 72)*q^1959 + 1/2*(49*zeta^2 + 
56*zeta - 63)*q^1960 + (-51*zeta^2 - 34*zeta + 34)*q^1962 + (-10*zeta^2 - 
30*zeta + 30)*q^1963 + (2*zeta^2 + 6*zeta - 6)*q^1964 + (22*zeta^2 - 11*zeta - 
66)*q^1966 + (19*zeta^2 - 34*zeta - 43)*q^1967 + 1/2*(18*zeta^2 - 9*zeta - 
54)*q^1968 + (-30*zeta^2 - 20*zeta + 20)*q^1969 + (-7*zeta^2 - 21*zeta + 
21)*q^1970 + (9*zeta^2 + 6*zeta - 6)*q^1972 + (14*zeta^2 - 7*zeta - 42)*q^1973 +
(-3*zeta^2 - 9*zeta + 2)*q^1974 + (2*zeta^2 - zeta - 6)*q^1975 + (30*zeta^2 + 
20*zeta - 20)*q^1976 + (-13*zeta^2 - 39*zeta + 39)*q^1977 + 1/2*(-zeta^2 - 
3*zeta + 3)*q^1978 + (-3*zeta^2 - 2*zeta + 2)*q^1979 + (12*zeta^2 - 6*zeta - 
36)*q^1980 + (42*zeta^2 - 21*zeta - 77)*q^1981 + (-6*zeta^2 + 3*zeta + 
18)*q^1982 + 1/2*(81*zeta^2 + 54*zeta - 54)*q^1983 + (6*zeta^2 + 18*zeta - 
18)*q^1984 + (-8*zeta^2 - 24*zeta + 24)*q^1985 + (18*zeta^2 + 12*zeta - 
12)*q^1986 + (20*zeta^2 - 10*zeta - 60)*q^1987 + (64*zeta^2 - 25*zeta - 
115)*q^1988 + (24*zeta^2 - 12*zeta - 72)*q^1989 + (12*zeta^2 + 8*zeta - 
8)*q^1990 + (7*zeta^2 + 21*zeta - 21)*q^1991 + 1/2*(7*zeta^2 + 21*zeta - 
21)*q^1992 + (3*zeta^2 + 2*zeta - 2)*q^1993 + (26*zeta^2 - 13*zeta - 78)*q^1994 
+ (-zeta^2 - 17*zeta - 4)*q^1995 + (2*zeta^2 - zeta - 6)*q^1996 + (9*zeta^2 + 
6*zeta - 6)*q^1997 + (-9*zeta^2 - 27*zeta + 27)*q^1999 + (-2*zeta^2 + zeta + 
6)*q^2001 + (-20*zeta^2 - 4*zeta + 32)*q^2002 + 1/2*(-2*zeta^2 + zeta + 
6)*q^2003 + (-27*zeta^2 - 18*zeta + 18)*q^2004 + (4*zeta^2 + 12*zeta - 
12)*q^2005 + (10*zeta^2 + 30*zeta - 30)*q^2006 + (18*zeta^2 + 12*zeta - 
12)*q^2007 + (-22*zeta^2 + 11*zeta + 66)*q^2008 + (50*zeta^2 + 10*zeta - 
80)*q^2009 + 1/2*(2*zeta^2 - zeta - 6)*q^2010 + (-66*zeta^2 - 44*zeta + 
44)*q^2011 + 1/2*(3*zeta^2 + 9*zeta - 9)*q^2012 + (24*zeta^2 + 72*zeta - 
72)*q^2013 + (12*zeta^2 - 6*zeta - 36)*q^2015 + (15*zeta^2 + 24*zeta - 
17)*q^2016 + (6*zeta^2 - 3*zeta - 18)*q^2017 + 1/2*(9*zeta^2 + 6*zeta - 
6)*q^2018 + (-10*zeta^2 - 30*zeta + 30)*q^2019 + (-3*zeta^2 - 9*zeta + 9)*q^2020
+ (3*zeta^2 + 2*zeta - 2)*q^2021 + (2*zeta^2 - zeta - 6)*q^2022 + 1/2*(25*zeta^2
- 37*zeta - 54)*q^2023 + (6*zeta^2 - 3*zeta - 18)*q^2024 + (-9*zeta^2 - 6*zeta +
6)*q^2025 + (13*zeta^2 + 39*zeta - 39)*q^2026 + (8*zeta^2 + 24*zeta - 24)*q^2027
+ 1/2*(75*zeta^2 + 50*zeta - 50)*q^2028 + (12*zeta^2 - 6*zeta - 36)*q^2029 + 
(-zeta^2 + 4*zeta + 3)*q^2030 + (4*zeta^2 - 2*zeta - 12)*q^2031 + (36*zeta^2 + 
24*zeta - 24)*q^2032 + (7*zeta^2 + 21*zeta - 21)*q^2033 + (8*zeta^2 + 24*zeta - 
24)*q^2034 + (34*zeta^2 - 17*zeta - 102)*q^2036 + (-2*zeta^2 + 8*zeta + 
6)*q^2037 + (30*zeta^2 + 20*zeta - 20)*q^2039 + (-zeta^2 - 3*zeta + 3)*q^2040 + 
(-14*zeta^2 - 42*zeta + 42)*q^2041 + 1/2*(-75*zeta^2 - 50*zeta + 50)*q^2042 + 
(-20*zeta^2 + 10*zeta + 60)*q^2043 + (-4*zeta^2 - 26*zeta - 2)*q^2044 + 
(-14*zeta^2 + 7*zeta + 42)*q^2045 + (18*zeta^2 + 12*zeta - 12)*q^2046 + 
1/2*(zeta^2 + 3*zeta - 3)*q^2047 + 1/2*(-7*zeta^2 - 21*zeta + 21)*q^2048 + 
(-63*zeta^2 - 42*zeta + 42)*q^2049 + 1/2*(-14*zeta^2 + 7*zeta + 42)*q^2050 + 
(72*zeta^2 + 48*zeta - 104)*q^2051 + (10*zeta^2 - 5*zeta - 30)*q^2052 + 
(-15*zeta^2 - 10*zeta + 10)*q^2053 + (-30*zeta^2 - 90*zeta + 90)*q^2054 + 
(-14*zeta^2 + 7*zeta + 42)*q^2057 + 1/2*(9*zeta^2 + 27*zeta - 6)*q^2058 + 
(-6*zeta^2 + 3*zeta + 18)*q^2059 + 1/2*(9*zeta^2 + 6*zeta - 6)*q^2060 + 
(6*zeta^2 + 18*zeta - 18)*q^2061 + (-11*zeta^2 - 33*zeta + 33)*q^2062 + 
1/2*(63*zeta^2 + 42*zeta - 42)*q^2063 + (-18*zeta^2 + 9*zeta + 54)*q^2064 + 
(15*zeta^2 + 24*zeta - 17)*q^2065 + (6*zeta^2 - 3*zeta - 18)*q^2066 + (-6*zeta^2
- 4*zeta + 4)*q^2067 + (2*zeta^2 + 6*zeta - 6)*q^2068 + (-4*zeta^2 - 12*zeta + 
12)*q^2069 + (3*zeta^2 + 2*zeta - 2)*q^2070 + (-10*zeta^2 + 5*zeta + 30)*q^2071 
+ (4*zeta^2 - 2*zeta - 12)*q^2073 + (-36*zeta^2 - 24*zeta + 24)*q^2074 + 
1/2*(9*zeta^2 + 27*zeta - 27)*q^2075 + (-16*zeta^2 - 48*zeta + 48)*q^2076 + 
(-9*zeta^2 - 6*zeta + 6)*q^2077 + (-14*zeta^2 + 7*zeta + 42)*q^2078 + (-6*zeta^2
+ 3*zeta + 11)*q^2079 + (4*zeta^2 - 2*zeta - 12)*q^2080 + (-24*zeta^2 - 16*zeta 
+ 16)*q^2081 + 1/2*(5*zeta^2 + 15*zeta - 15)*q^2082 + 1/2*(31*zeta^2 + 93*zeta -
93)*q^2083 + (-12*zeta^2 - 8*zeta + 8)*q^2084 + (-8*zeta^2 + 4*zeta + 24)*q^2085
+ (3*zeta^2 + 9*zeta - 2)*q^2086 + 1/2*(-38*zeta^2 + 19*zeta + 114)*q^2087 + 
(-9*zeta^2 - 6*zeta + 6)*q^2088 + (2*zeta^2 + 6*zeta - 6)*q^2089 + (-2*zeta^2 - 
6*zeta + 6)*q^2090 + (-6*zeta^2 - 4*zeta + 4)*q^2091 + (64*zeta^2 - 32*zeta - 
192)*q^2092 + (-3*zeta^2 - 9*zeta + 2)*q^2093 + (-4*zeta^2 + 2*zeta + 12)*q^2094
+ (-12*zeta^2 - 8*zeta + 8)*q^2095 + (-12*zeta^2 - 36*zeta + 36)*q^2096 + 
(14*zeta^2 + 42*zeta - 42)*q^2097 + 1/2*(-123*zeta^2 - 82*zeta + 82)*q^2098 + 
(-32*zeta^2 + 16*zeta + 96)*q^2099 + O(q^2100)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 5);
              X_35E6 := Curve(P_Q, [ PolynomialRing(RationalField(), 6) |
x[1]^2 + 16/3*x[3]*x[4] - 1468/49*x[3]*x[5] + 8*x[3]*x[6] - 28/3*x[4]^2 - 
122/49*x[4]*x[5] - 2/3*x[4]*x[6] + 2280/49*x[5]^2 - 1528/49*x[5]*x[6] + 
32/3*x[6]^2,
x[1]*x[2] + 331/63*x[3]*x[4] - 4420/147*x[3]*x[5] + 160/21*x[3]*x[6] - 
598/63*x[4]^2 - 440/147*x[4]*x[5] - 8/63*x[4]*x[6] + 2416/49*x[5]^2 - 
5296/147*x[5]*x[6] + 752/63*x[6]^2,
x[1]*x[3] - 12/7*x[1]*x[5] - 2/7*x[2]*x[3] - 4/7*x[2]*x[4] + 6/7*x[2]*x[5] + 
2/7*x[2]*x[6],
x[1]*x[4] - 12/35*x[1]*x[5] + 8/5*x[1]*x[6] - 9/35*x[2]*x[3] - 18/35*x[2]*x[4] +
48/35*x[2]*x[5] - 8/7*x[2]*x[6],
x[2]^2 + 88/21*x[3]*x[4] - 1312/49*x[3]*x[5] + 40/7*x[3]*x[6] - 181/21*x[4]^2 - 
272/49*x[4]*x[5] + 40/21*x[4]*x[6] + 2208/49*x[5]^2 - 1936/49*x[5]*x[6] + 
272/21*x[6]^2,
x[3]^2 + 8/9*x[3]*x[4] - 20/3*x[3]*x[5] + 8/3*x[3]*x[6] - 20/9*x[4]^2 + 
2/3*x[4]*x[5] - 22/9*x[4]*x[6] + 8*x[5]^2 - 8/3*x[5]*x[6] + 16/9*x[6]^2
]);
