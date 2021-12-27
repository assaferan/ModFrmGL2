
    /****************************************************
    Loading this file in magma loads the objects fs_18C6 
    and X_18C6. fs_18C6 is a list of power series which form 
    a basis for the space of cusp forms. X_18C6 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | -1, -3, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_18C6 := [Kq | (-zeta^2 + 2)*q + (zeta^2 - zeta - 2)*q^2 + 
(-2*zeta^2 + zeta + 4)*q^4 + (2*zeta^2 - zeta - 4)*q^5 + (2*zeta^2 - 2*zeta - 
4)*q^7 + (5*zeta^2 - 10)*q^8 + (zeta^2 - 2*zeta - 2)*q^10 + (-2*zeta^2 - 2*zeta 
+ 4)*q^11 - zeta*q^13 + 2*zeta*q^14 + (3*zeta^2 + 3*zeta - 6)*q^16 + (3*zeta^2 -
6*zeta - 6)*q^17 + (-2*zeta^2 + 4)*q^19 + (3*zeta^2 - 3*zeta - 6)*q^20 + 
(-4*zeta^2 + 2*zeta + 8)*q^22 + (-4*zeta^2 + 2*zeta + 8)*q^23 + (-2*zeta^2 + 
2*zeta + 4)*q^25 + (zeta^2 - 2)*q^26 + (2*zeta^2 - 4*zeta - 4)*q^28 + (zeta^2 + 
zeta - 2)*q^29 + 8*zeta*q^31 + zeta*q^32 + (-3*zeta^2 - 3*zeta + 6)*q^34 + 
(-2*zeta^2 + 4*zeta + 4)*q^35 + (7*zeta^2 - 14)*q^37 + (2*zeta^2 - 2*zeta - 
4)*q^38 + (10*zeta^2 - 5*zeta - 20)*q^40 + (8*zeta^2 - 4*zeta - 16)*q^41 + 
(2*zeta^2 - 2*zeta - 4)*q^43 + (-6*zeta^2 + 12)*q^44 + (-2*zeta^2 + 4*zeta + 
4)*q^46 + (4*zeta^2 + 4*zeta - 8)*q^47 - 3*zeta*q^49 - 2*zeta*q^50 + (-zeta^2 - 
zeta + 2)*q^52 + (-6*zeta^2 + 12)*q^55 + (-10*zeta^2 + 10*zeta + 20)*q^56 + 
(2*zeta^2 - zeta - 4)*q^58 + (-16*zeta^2 + 8*zeta + 32)*q^59 + (-7*zeta^2 + 
7*zeta + 14)*q^61 + (-8*zeta^2 + 16)*q^62 + (-7*zeta^2 + 14*zeta + 14)*q^64 + 
(zeta^2 + zeta - 2)*q^65 - 10*zeta*q^67 - 9*zeta*q^68 + (2*zeta^2 + 2*zeta - 
4)*q^70 + (-6*zeta^2 + 12*zeta + 12)*q^71 + (7*zeta^2 - 14)*q^73 + (-7*zeta^2 + 
7*zeta + 14)*q^74 + (-4*zeta^2 + 2*zeta + 8)*q^76 + (8*zeta^2 - 4*zeta - 
16)*q^77 + (2*zeta^2 - 2*zeta - 4)*q^79 + (-9*zeta^2 + 18)*q^80 + (4*zeta^2 - 
8*zeta - 8)*q^82 + (-8*zeta^2 - 8*zeta + 16)*q^83 - 9*zeta*q^85 + 2*zeta*q^86 + 
(-10*zeta^2 - 10*zeta + 20)*q^88 + (-3*zeta^2 + 6*zeta + 6)*q^89 + (2*zeta^2 - 
4)*q^91 + (-6*zeta^2 + 6*zeta + 12)*q^92 + (8*zeta^2 - 4*zeta - 16)*q^94 + 
(4*zeta^2 - 2*zeta - 8)*q^95 + (2*zeta^2 - 2*zeta - 4)*q^97 + (3*zeta^2 - 
6)*q^98 + (-2*zeta^2 + 4*zeta + 4)*q^100 + (4*zeta^2 + 4*zeta - 8)*q^101 + 
8*zeta*q^103 + 5*zeta*q^104 + (-11*zeta^2 + 22)*q^109 + (6*zeta^2 - 6*zeta - 
12)*q^110 + (-12*zeta^2 + 6*zeta + 24)*q^112 + (2*zeta^2 - zeta - 4)*q^113 + 
(-6*zeta^2 + 6*zeta + 12)*q^115 + (3*zeta^2 - 6)*q^116 + (-8*zeta^2 + 16*zeta + 
16)*q^118 + (6*zeta^2 + 6*zeta - 12)*q^119 + zeta*q^121 - 7*zeta*q^122 + 
(8*zeta^2 + 8*zeta - 16)*q^124 + (7*zeta^2 - 14*zeta - 14)*q^125 + (-2*zeta^2 + 
4)*q^127 + (19*zeta^2 - 19*zeta - 38)*q^128 + (2*zeta^2 - zeta - 4)*q^130 + 
(-4*zeta^2 + 2*zeta + 8)*q^131 + (4*zeta^2 - 4*zeta - 8)*q^133 + (10*zeta^2 - 
20)*q^134 + (15*zeta^2 - 30*zeta - 30)*q^136 + (zeta^2 + zeta - 2)*q^137 + 
8*zeta*q^139 + 6*zeta*q^140 + (6*zeta^2 + 6*zeta - 12)*q^142 + (2*zeta^2 - 
4*zeta - 4)*q^143 + (3*zeta^2 - 6)*q^145 + (-7*zeta^2 + 7*zeta + 14)*q^146 + 
(14*zeta^2 - 7*zeta - 28)*q^148 + (-10*zeta^2 + 5*zeta + 20)*q^149 + (20*zeta^2 
- 20*zeta - 40)*q^151 + (10*zeta^2 - 20)*q^152 + (4*zeta^2 - 8*zeta - 8)*q^154 +
(-8*zeta^2 - 8*zeta + 16)*q^155 + 17*zeta*q^157 + 2*zeta*q^158 + (zeta^2 + zeta 
- 2)*q^160 + (4*zeta^2 - 8*zeta - 8)*q^161 + (16*zeta^2 - 32)*q^163 + (12*zeta^2
- 12*zeta - 24)*q^164 + (-16*zeta^2 + 8*zeta + 32)*q^166 + (20*zeta^2 - 10*zeta 
- 40)*q^167 + (-12*zeta^2 + 12*zeta + 24)*q^169 + (9*zeta^2 - 18)*q^170 + 
(2*zeta^2 - 4*zeta - 4)*q^172 + (-11*zeta^2 - 11*zeta + 22)*q^173 - 4*zeta*q^175
+ 18*zeta*q^176 + (3*zeta^2 + 3*zeta - 6)*q^178 + (12*zeta^2 - 24*zeta - 
24)*q^179 + (-2*zeta^2 + 4)*q^181 + (-2*zeta^2 + 2*zeta + 4)*q^182 + (-20*zeta^2
+ 10*zeta + 40)*q^184 + (-14*zeta^2 + 7*zeta + 28)*q^185 + (-18*zeta^2 + 18*zeta
+ 36)*q^187 + (12*zeta^2 - 24)*q^188 + (2*zeta^2 - 4*zeta - 4)*q^190 + 
(10*zeta^2 + 10*zeta - 20)*q^191 - zeta*q^193 + 2*zeta*q^194 + (-3*zeta^2 - 
3*zeta + 6)*q^196 + (-3*zeta^2 + 6*zeta + 6)*q^197 + (-20*zeta^2 + 40)*q^199 + 
(10*zeta^2 - 10*zeta - 20)*q^200 + (8*zeta^2 - 4*zeta - 16)*q^202 + (-4*zeta^2 +
2*zeta + 8)*q^203 + (12*zeta^2 - 12*zeta - 24)*q^205 + (-8*zeta^2 + 16)*q^206 + 
(-3*zeta^2 + 6*zeta + 6)*q^208 + (-4*zeta^2 - 4*zeta + 8)*q^209 - 10*zeta*q^211 
+ (-2*zeta^2 + 4*zeta + 4)*q^215 + (-16*zeta^2 + 32)*q^217 + (11*zeta^2 - 
11*zeta - 22)*q^218 + (-12*zeta^2 + 6*zeta + 24)*q^220 + (6*zeta^2 - 3*zeta - 
12)*q^221 + (2*zeta^2 - 2*zeta - 4)*q^223 + (-2*zeta^2 + 4)*q^224 + (zeta^2 - 
2*zeta - 2)*q^226 + (-2*zeta^2 - 2*zeta + 4)*q^227 - zeta*q^229 - 6*zeta*q^230 +
(5*zeta^2 + 5*zeta - 10)*q^232 + (-15*zeta^2 + 30*zeta + 30)*q^233 + (12*zeta^2 
- 24)*q^235 + (-24*zeta^2 + 24*zeta + 48)*q^236 + (12*zeta^2 - 6*zeta - 
24)*q^238 + (32*zeta^2 - 16*zeta - 64)*q^239 + (29*zeta^2 - 29*zeta - 58)*q^241 
+ (-zeta^2 + 2)*q^242 + (-7*zeta^2 + 14*zeta + 14)*q^244 + (3*zeta^2 + 3*zeta - 
6)*q^245 - 2*zeta*q^247 - 40*zeta*q^248 + (-7*zeta^2 - 7*zeta + 14)*q^250 + 
(6*zeta^2 - 12*zeta - 12)*q^251 + (12*zeta^2 - 24)*q^253 + (2*zeta^2 - 2*zeta - 
4)*q^254 + (10*zeta^2 - 5*zeta - 20)*q^256 + (-10*zeta^2 + 5*zeta + 20)*q^257 + 
(-14*zeta^2 + 14*zeta + 28)*q^259 + (3*zeta^2 - 6)*q^260 + (-2*zeta^2 + 4*zeta +
4)*q^262 + (4*zeta^2 + 4*zeta - 8)*q^263 + 4*zeta*q^266 + (-10*zeta^2 - 10*zeta 
+ 20)*q^268 + (-9*zeta^2 + 18*zeta + 18)*q^269 + (-2*zeta^2 + 4)*q^271 + 
(-27*zeta^2 + 27*zeta + 54)*q^272 + (2*zeta^2 - zeta - 4)*q^274 + (-8*zeta^2 + 
4*zeta + 16)*q^275 + (2*zeta^2 - 2*zeta - 4)*q^277 + (-8*zeta^2 + 16)*q^278 + 
(-10*zeta^2 + 20*zeta + 20)*q^280 + (7*zeta^2 + 7*zeta - 14)*q^281 - 
28*zeta*q^283 + 18*zeta*q^284 + (-2*zeta^2 - 2*zeta + 4)*q^286 + (-8*zeta^2 + 
16*zeta + 16)*q^287 + (-10*zeta^2 + 20)*q^289 + (-3*zeta^2 + 3*zeta + 6)*q^290 +
(14*zeta^2 - 7*zeta - 28)*q^292 + (-22*zeta^2 + 11*zeta + 44)*q^293 + 
(-24*zeta^2 + 24*zeta + 48)*q^295 + (-35*zeta^2 + 70)*q^296 + (-5*zeta^2 + 
10*zeta + 10)*q^298 + (-2*zeta^2 - 2*zeta + 4)*q^299 + 4*zeta*q^301 + 
20*zeta*q^302 + (6*zeta^2 + 6*zeta - 12)*q^304 + (7*zeta^2 - 14*zeta - 14)*q^305
+ (16*zeta^2 - 32)*q^307 + (12*zeta^2 - 12*zeta - 24)*q^308 + (-16*zeta^2 + 
8*zeta + 32)*q^310 + (8*zeta^2 - 4*zeta - 16)*q^311 + (-25*zeta^2 + 25*zeta + 
50)*q^313 + (-17*zeta^2 + 34)*q^314 + (2*zeta^2 - 4*zeta - 4)*q^316 + (-5*zeta^2
- 5*zeta + 10)*q^317 - 6*zeta*q^319 - 21*zeta*q^320 + (-4*zeta^2 - 4*zeta + 
8)*q^322 + (6*zeta^2 - 12*zeta - 12)*q^323 + (-2*zeta^2 + 4)*q^325 + (-16*zeta^2
+ 16*zeta + 32)*q^326 + (40*zeta^2 - 20*zeta - 80)*q^328 + (-16*zeta^2 + 8*zeta 
+ 32)*q^329 + (2*zeta^2 - 2*zeta - 4)*q^331 + (-24*zeta^2 + 48)*q^332 + 
(10*zeta^2 - 20*zeta - 20)*q^334 + (10*zeta^2 + 10*zeta - 20)*q^335 + 
26*zeta*q^337 - 12*zeta*q^338 + (-9*zeta^2 - 9*zeta + 18)*q^340 + (-16*zeta^2 + 
32*zeta + 32)*q^341 + (20*zeta^2 - 40)*q^343 + (-10*zeta^2 + 10*zeta + 20)*q^344
+ (-22*zeta^2 + 11*zeta + 44)*q^346 + (-4*zeta^2 + 2*zeta + 8)*q^347 + (2*zeta^2
- 2*zeta - 4)*q^349 + (4*zeta^2 - 8)*q^350 + (2*zeta^2 - 4*zeta - 4)*q^352 + 
(-8*zeta^2 - 8*zeta + 16)*q^353 + 18*zeta*q^355 + 9*zeta*q^356 + (-12*zeta^2 - 
12*zeta + 24)*q^358 + (6*zeta^2 - 12*zeta - 12)*q^359 + (15*zeta^2 - 30)*q^361 +
(2*zeta^2 - 2*zeta - 4)*q^362 + (4*zeta^2 - 2*zeta - 8)*q^364 + (-14*zeta^2 + 
7*zeta + 28)*q^365 + (20*zeta^2 - 20*zeta - 40)*q^367 + (18*zeta^2 - 36)*q^368 +
(-7*zeta^2 + 14*zeta + 14)*q^370 - 10*zeta*q^373 - 18*zeta*q^374 + (20*zeta^2 + 
20*zeta - 40)*q^376 + (-zeta^2 + 2*zeta + 2)*q^377 + (16*zeta^2 - 32)*q^379 + 
(6*zeta^2 - 6*zeta - 12)*q^380 + (20*zeta^2 - 10*zeta - 40)*q^382 + (20*zeta^2 -
10*zeta - 40)*q^383 + (12*zeta^2 - 12*zeta - 24)*q^385 + (zeta^2 - 2)*q^386 + 
(2*zeta^2 - 4*zeta - 4)*q^388 + (16*zeta^2 + 16*zeta - 32)*q^389 + 18*zeta*q^391
+ 15*zeta*q^392 + (3*zeta^2 + 3*zeta - 6)*q^394 + (-2*zeta^2 + 4*zeta + 4)*q^395
+ (-29*zeta^2 + 58)*q^397 + (20*zeta^2 - 20*zeta - 40)*q^398 + (12*zeta^2 - 
6*zeta - 24)*q^400 + (14*zeta^2 - 7*zeta - 28)*q^401 + (-8*zeta^2 + 8*zeta + 
16)*q^403 + (12*zeta^2 - 24)*q^404 + (-2*zeta^2 + 4*zeta + 4)*q^406 + (14*zeta^2
+ 14*zeta - 28)*q^407 - 19*zeta*q^409 + 12*zeta*q^410 + (8*zeta^2 + 8*zeta - 
16)*q^412 + (16*zeta^2 - 32*zeta - 32)*q^413 + (-24*zeta^2 + 48)*q^415 + 
(-zeta^2 + zeta + 2)*q^416 + (-8*zeta^2 + 4*zeta + 16)*q^418 + (8*zeta^2 - 
4*zeta - 16)*q^419 + (-25*zeta^2 + 25*zeta + 50)*q^421 + (10*zeta^2 - 20)*q^422 
+ (-6*zeta^2 - 6*zeta + 12)*q^425 - 14*zeta*q^427 + (2*zeta^2 + 2*zeta - 
4)*q^430 + (-11*zeta^2 + 22)*q^433 + (16*zeta^2 - 16*zeta - 32)*q^434 + 
(-22*zeta^2 + 11*zeta + 44)*q^436 + (-8*zeta^2 + 4*zeta + 16)*q^437 + (20*zeta^2
- 20*zeta - 40)*q^439 + (30*zeta^2 - 60)*q^440 + (3*zeta^2 - 6*zeta - 6)*q^442 +
(-20*zeta^2 - 20*zeta + 40)*q^443 + 9*zeta*q^445 + 2*zeta*q^446 + (-14*zeta^2 - 
14*zeta + 28)*q^448 + (12*zeta^2 - 24*zeta - 24)*q^449 + (-24*zeta^2 + 48)*q^451
+ (3*zeta^2 - 3*zeta - 6)*q^452 + (-4*zeta^2 + 2*zeta + 8)*q^454 + (-4*zeta^2 + 
2*zeta + 8)*q^455 + (29*zeta^2 - 29*zeta - 58)*q^457 + (zeta^2 - 2)*q^458 + 
(-6*zeta^2 + 12*zeta + 12)*q^460 + (-8*zeta^2 - 8*zeta + 16)*q^461 + 
8*zeta*q^463 - 9*zeta*q^464 + (15*zeta^2 + 15*zeta - 30)*q^466 + (-12*zeta^2 + 
24*zeta + 24)*q^467 + (20*zeta^2 - 40)*q^469 + (-12*zeta^2 + 12*zeta + 24)*q^470
+ (-80*zeta^2 + 40*zeta + 160)*q^472 + (8*zeta^2 - 4*zeta - 16)*q^473 + 
(-4*zeta^2 + 4*zeta + 8)*q^475 + (18*zeta^2 - 36)*q^476 + (16*zeta^2 - 32*zeta -
32)*q^478 + (-14*zeta^2 - 14*zeta + 28)*q^479 + 7*zeta*q^481 + 29*zeta*q^482 + 
(zeta^2 + zeta - 2)*q^484 + (-2*zeta^2 + 4*zeta + 4)*q^485 + (16*zeta^2 - 
32)*q^487 + (35*zeta^2 - 35*zeta - 70)*q^488 + (6*zeta^2 - 3*zeta - 12)*q^490 + 
(20*zeta^2 - 10*zeta - 40)*q^491 + (9*zeta^2 - 9*zeta - 18)*q^493 + (2*zeta^2 - 
4)*q^494 + (24*zeta^2 - 48*zeta - 48)*q^496 + (-12*zeta^2 - 12*zeta + 24)*q^497 
- 10*zeta*q^499 - 21*zeta*q^500 + (-6*zeta^2 - 6*zeta + 12)*q^502 + (12*zeta^2 -
24*zeta - 24)*q^503 + (12*zeta^2 - 24)*q^505 + (-12*zeta^2 + 12*zeta + 24)*q^506
+ (-4*zeta^2 + 2*zeta + 8)*q^508 + (32*zeta^2 - 16*zeta - 64)*q^509 + 
(-14*zeta^2 + 14*zeta + 28)*q^511 + (23*zeta^2 - 46)*q^512 + (-5*zeta^2 + 
10*zeta + 10)*q^514 + (-8*zeta^2 - 8*zeta + 16)*q^515 - 24*zeta*q^517 - 
14*zeta*q^518 + (5*zeta^2 + 5*zeta - 10)*q^520 + (-12*zeta^2 + 24*zeta + 
24)*q^521 + O(q^522), (-zeta^2 + 2)*q + (zeta^2 - zeta - 2)*q^2 + (-2*zeta^2 + 
zeta + 4)*q^4 + (2*zeta^2 - zeta - 4)*q^5 + (2*zeta^2 - 2*zeta - 4)*q^7 + 
(5*zeta^2 - 10)*q^8 + (zeta^2 - 2*zeta - 2)*q^10 + (-2*zeta^2 - 2*zeta + 4)*q^11
- zeta*q^13 + 2*zeta*q^14 + (3*zeta^2 + 3*zeta - 6)*q^16 + (3*zeta^2 - 6*zeta - 
6)*q^17 + (-2*zeta^2 + 4)*q^19 + (3*zeta^2 - 3*zeta - 6)*q^20 + (-4*zeta^2 + 
2*zeta + 8)*q^22 + (-4*zeta^2 + 2*zeta + 8)*q^23 + (-2*zeta^2 + 2*zeta + 4)*q^25
+ (zeta^2 - 2)*q^26 + (2*zeta^2 - 4*zeta - 4)*q^28 + (zeta^2 + zeta - 2)*q^29 + 
8*zeta*q^31 + zeta*q^32 + (-3*zeta^2 - 3*zeta + 6)*q^34 + (-2*zeta^2 + 4*zeta + 
4)*q^35 + (7*zeta^2 - 14)*q^37 + (2*zeta^2 - 2*zeta - 4)*q^38 + (10*zeta^2 - 
5*zeta - 20)*q^40 + (8*zeta^2 - 4*zeta - 16)*q^41 + (2*zeta^2 - 2*zeta - 4)*q^43
+ (-6*zeta^2 + 12)*q^44 + (-2*zeta^2 + 4*zeta + 4)*q^46 + (4*zeta^2 + 4*zeta - 
8)*q^47 - 3*zeta*q^49 - 2*zeta*q^50 + (-zeta^2 - zeta + 2)*q^52 + (-6*zeta^2 + 
12)*q^55 + (-10*zeta^2 + 10*zeta + 20)*q^56 + (2*zeta^2 - zeta - 4)*q^58 + 
(-16*zeta^2 + 8*zeta + 32)*q^59 + (-7*zeta^2 + 7*zeta + 14)*q^61 + (-8*zeta^2 + 
16)*q^62 + (-7*zeta^2 + 14*zeta + 14)*q^64 + (zeta^2 + zeta - 2)*q^65 - 
10*zeta*q^67 - 9*zeta*q^68 + (2*zeta^2 + 2*zeta - 4)*q^70 + (-6*zeta^2 + 12*zeta
+ 12)*q^71 + (7*zeta^2 - 14)*q^73 + (-7*zeta^2 + 7*zeta + 14)*q^74 + (-4*zeta^2 
+ 2*zeta + 8)*q^76 + (8*zeta^2 - 4*zeta - 16)*q^77 + (2*zeta^2 - 2*zeta - 
4)*q^79 + (-9*zeta^2 + 18)*q^80 + (4*zeta^2 - 8*zeta - 8)*q^82 + (-8*zeta^2 - 
8*zeta + 16)*q^83 - 9*zeta*q^85 + 2*zeta*q^86 + (-10*zeta^2 - 10*zeta + 20)*q^88
+ (-3*zeta^2 + 6*zeta + 6)*q^89 + (2*zeta^2 - 4)*q^91 + (-6*zeta^2 + 6*zeta + 
12)*q^92 + (8*zeta^2 - 4*zeta - 16)*q^94 + (4*zeta^2 - 2*zeta - 8)*q^95 + 
(2*zeta^2 - 2*zeta - 4)*q^97 + (3*zeta^2 - 6)*q^98 + (-2*zeta^2 + 4*zeta + 
4)*q^100 + (4*zeta^2 + 4*zeta - 8)*q^101 + 8*zeta*q^103 + 5*zeta*q^104 + 
(-11*zeta^2 + 22)*q^109 + (6*zeta^2 - 6*zeta - 12)*q^110 + (-12*zeta^2 + 6*zeta 
+ 24)*q^112 + (2*zeta^2 - zeta - 4)*q^113 + (-6*zeta^2 + 6*zeta + 12)*q^115 + 
(3*zeta^2 - 6)*q^116 + (-8*zeta^2 + 16*zeta + 16)*q^118 + (6*zeta^2 + 6*zeta - 
12)*q^119 + zeta*q^121 - 7*zeta*q^122 + (8*zeta^2 + 8*zeta - 16)*q^124 + 
(7*zeta^2 - 14*zeta - 14)*q^125 + (-2*zeta^2 + 4)*q^127 + (19*zeta^2 - 19*zeta -
38)*q^128 + (2*zeta^2 - zeta - 4)*q^130 + (-4*zeta^2 + 2*zeta + 8)*q^131 + 
(4*zeta^2 - 4*zeta - 8)*q^133 + (10*zeta^2 - 20)*q^134 + (15*zeta^2 - 30*zeta - 
30)*q^136 + (zeta^2 + zeta - 2)*q^137 + 8*zeta*q^139 + 6*zeta*q^140 + (6*zeta^2 
+ 6*zeta - 12)*q^142 + (2*zeta^2 - 4*zeta - 4)*q^143 + (3*zeta^2 - 6)*q^145 + 
(-7*zeta^2 + 7*zeta + 14)*q^146 + (14*zeta^2 - 7*zeta - 28)*q^148 + (-10*zeta^2 
+ 5*zeta + 20)*q^149 + (20*zeta^2 - 20*zeta - 40)*q^151 + (10*zeta^2 - 20)*q^152
+ (4*zeta^2 - 8*zeta - 8)*q^154 + (-8*zeta^2 - 8*zeta + 16)*q^155 + 
17*zeta*q^157 + 2*zeta*q^158 + (zeta^2 + zeta - 2)*q^160 + (4*zeta^2 - 8*zeta - 
8)*q^161 + (16*zeta^2 - 32)*q^163 + (12*zeta^2 - 12*zeta - 24)*q^164 + 
(-16*zeta^2 + 8*zeta + 32)*q^166 + (20*zeta^2 - 10*zeta - 40)*q^167 + 
(-12*zeta^2 + 12*zeta + 24)*q^169 + (9*zeta^2 - 18)*q^170 + (2*zeta^2 - 4*zeta -
4)*q^172 + (-11*zeta^2 - 11*zeta + 22)*q^173 - 4*zeta*q^175 + 18*zeta*q^176 + 
(3*zeta^2 + 3*zeta - 6)*q^178 + (12*zeta^2 - 24*zeta - 24)*q^179 + (-2*zeta^2 + 
4)*q^181 + (-2*zeta^2 + 2*zeta + 4)*q^182 + (-20*zeta^2 + 10*zeta + 40)*q^184 + 
(-14*zeta^2 + 7*zeta + 28)*q^185 + (-18*zeta^2 + 18*zeta + 36)*q^187 + 
(12*zeta^2 - 24)*q^188 + (2*zeta^2 - 4*zeta - 4)*q^190 + (10*zeta^2 + 10*zeta - 
20)*q^191 - zeta*q^193 + 2*zeta*q^194 + (-3*zeta^2 - 3*zeta + 6)*q^196 + 
(-3*zeta^2 + 6*zeta + 6)*q^197 + (-20*zeta^2 + 40)*q^199 + (10*zeta^2 - 10*zeta 
- 20)*q^200 + (8*zeta^2 - 4*zeta - 16)*q^202 + (-4*zeta^2 + 2*zeta + 8)*q^203 + 
(12*zeta^2 - 12*zeta - 24)*q^205 + (-8*zeta^2 + 16)*q^206 + (-3*zeta^2 + 6*zeta 
+ 6)*q^208 + (-4*zeta^2 - 4*zeta + 8)*q^209 - 10*zeta*q^211 + (-2*zeta^2 + 
4*zeta + 4)*q^215 + (-16*zeta^2 + 32)*q^217 + (11*zeta^2 - 11*zeta - 22)*q^218 +
(-12*zeta^2 + 6*zeta + 24)*q^220 + (6*zeta^2 - 3*zeta - 12)*q^221 + (2*zeta^2 - 
2*zeta - 4)*q^223 + (-2*zeta^2 + 4)*q^224 + (zeta^2 - 2*zeta - 2)*q^226 + 
(-2*zeta^2 - 2*zeta + 4)*q^227 - zeta*q^229 - 6*zeta*q^230 + (5*zeta^2 + 5*zeta 
- 10)*q^232 + (-15*zeta^2 + 30*zeta + 30)*q^233 + (12*zeta^2 - 24)*q^235 + 
(-24*zeta^2 + 24*zeta + 48)*q^236 + (12*zeta^2 - 6*zeta - 24)*q^238 + (32*zeta^2
- 16*zeta - 64)*q^239 + (29*zeta^2 - 29*zeta - 58)*q^241 + (-zeta^2 + 2)*q^242 +
(-7*zeta^2 + 14*zeta + 14)*q^244 + (3*zeta^2 + 3*zeta - 6)*q^245 - 2*zeta*q^247 
- 40*zeta*q^248 + (-7*zeta^2 - 7*zeta + 14)*q^250 + (6*zeta^2 - 12*zeta - 
12)*q^251 + (12*zeta^2 - 24)*q^253 + (2*zeta^2 - 2*zeta - 4)*q^254 + (10*zeta^2 
- 5*zeta - 20)*q^256 + (-10*zeta^2 + 5*zeta + 20)*q^257 + (-14*zeta^2 + 14*zeta 
+ 28)*q^259 + (3*zeta^2 - 6)*q^260 + (-2*zeta^2 + 4*zeta + 4)*q^262 + (4*zeta^2 
+ 4*zeta - 8)*q^263 + 4*zeta*q^266 + (-10*zeta^2 - 10*zeta + 20)*q^268 + 
(-9*zeta^2 + 18*zeta + 18)*q^269 + (-2*zeta^2 + 4)*q^271 + (-27*zeta^2 + 27*zeta
+ 54)*q^272 + (2*zeta^2 - zeta - 4)*q^274 + (-8*zeta^2 + 4*zeta + 16)*q^275 + 
(2*zeta^2 - 2*zeta - 4)*q^277 + (-8*zeta^2 + 16)*q^278 + (-10*zeta^2 + 20*zeta +
20)*q^280 + (7*zeta^2 + 7*zeta - 14)*q^281 - 28*zeta*q^283 + 18*zeta*q^284 + 
(-2*zeta^2 - 2*zeta + 4)*q^286 + (-8*zeta^2 + 16*zeta + 16)*q^287 + (-10*zeta^2 
+ 20)*q^289 + (-3*zeta^2 + 3*zeta + 6)*q^290 + (14*zeta^2 - 7*zeta - 28)*q^292 +
(-22*zeta^2 + 11*zeta + 44)*q^293 + (-24*zeta^2 + 24*zeta + 48)*q^295 + 
(-35*zeta^2 + 70)*q^296 + (-5*zeta^2 + 10*zeta + 10)*q^298 + (-2*zeta^2 - 2*zeta
+ 4)*q^299 + 4*zeta*q^301 + 20*zeta*q^302 + (6*zeta^2 + 6*zeta - 12)*q^304 + 
(7*zeta^2 - 14*zeta - 14)*q^305 + (16*zeta^2 - 32)*q^307 + (12*zeta^2 - 12*zeta 
- 24)*q^308 + (-16*zeta^2 + 8*zeta + 32)*q^310 + (8*zeta^2 - 4*zeta - 16)*q^311 
+ (-25*zeta^2 + 25*zeta + 50)*q^313 + (-17*zeta^2 + 34)*q^314 + (2*zeta^2 - 
4*zeta - 4)*q^316 + (-5*zeta^2 - 5*zeta + 10)*q^317 - 6*zeta*q^319 - 
21*zeta*q^320 + (-4*zeta^2 - 4*zeta + 8)*q^322 + (6*zeta^2 - 12*zeta - 12)*q^323
+ (-2*zeta^2 + 4)*q^325 + (-16*zeta^2 + 16*zeta + 32)*q^326 + (40*zeta^2 - 
20*zeta - 80)*q^328 + (-16*zeta^2 + 8*zeta + 32)*q^329 + (2*zeta^2 - 2*zeta - 
4)*q^331 + (-24*zeta^2 + 48)*q^332 + (10*zeta^2 - 20*zeta - 20)*q^334 + 
(10*zeta^2 + 10*zeta - 20)*q^335 + 26*zeta*q^337 - 12*zeta*q^338 + (-9*zeta^2 - 
9*zeta + 18)*q^340 + (-16*zeta^2 + 32*zeta + 32)*q^341 + (20*zeta^2 - 40)*q^343 
+ (-10*zeta^2 + 10*zeta + 20)*q^344 + (-22*zeta^2 + 11*zeta + 44)*q^346 + 
(-4*zeta^2 + 2*zeta + 8)*q^347 + (2*zeta^2 - 2*zeta - 4)*q^349 + (4*zeta^2 - 
8)*q^350 + (2*zeta^2 - 4*zeta - 4)*q^352 + (-8*zeta^2 - 8*zeta + 16)*q^353 + 
18*zeta*q^355 + 9*zeta*q^356 + (-12*zeta^2 - 12*zeta + 24)*q^358 + (6*zeta^2 - 
12*zeta - 12)*q^359 + (15*zeta^2 - 30)*q^361 + (2*zeta^2 - 2*zeta - 4)*q^362 + 
(4*zeta^2 - 2*zeta - 8)*q^364 + (-14*zeta^2 + 7*zeta + 28)*q^365 + (20*zeta^2 - 
20*zeta - 40)*q^367 + (18*zeta^2 - 36)*q^368 + (-7*zeta^2 + 14*zeta + 14)*q^370 
- 10*zeta*q^373 - 18*zeta*q^374 + (20*zeta^2 + 20*zeta - 40)*q^376 + (-zeta^2 + 
2*zeta + 2)*q^377 + (16*zeta^2 - 32)*q^379 + (6*zeta^2 - 6*zeta - 12)*q^380 + 
(20*zeta^2 - 10*zeta - 40)*q^382 + (20*zeta^2 - 10*zeta - 40)*q^383 + (12*zeta^2
- 12*zeta - 24)*q^385 + (zeta^2 - 2)*q^386 + (2*zeta^2 - 4*zeta - 4)*q^388 + 
(16*zeta^2 + 16*zeta - 32)*q^389 + 18*zeta*q^391 + 15*zeta*q^392 + (3*zeta^2 + 
3*zeta - 6)*q^394 + (-2*zeta^2 + 4*zeta + 4)*q^395 + (-29*zeta^2 + 58)*q^397 + 
(20*zeta^2 - 20*zeta - 40)*q^398 + (12*zeta^2 - 6*zeta - 24)*q^400 + (14*zeta^2 
- 7*zeta - 28)*q^401 + (-8*zeta^2 + 8*zeta + 16)*q^403 + (12*zeta^2 - 24)*q^404 
+ (-2*zeta^2 + 4*zeta + 4)*q^406 + (14*zeta^2 + 14*zeta - 28)*q^407 - 
19*zeta*q^409 + 12*zeta*q^410 + (8*zeta^2 + 8*zeta - 16)*q^412 + (16*zeta^2 - 
32*zeta - 32)*q^413 + (-24*zeta^2 + 48)*q^415 + (-zeta^2 + zeta + 2)*q^416 + 
(-8*zeta^2 + 4*zeta + 16)*q^418 + (8*zeta^2 - 4*zeta - 16)*q^419 + (-25*zeta^2 +
25*zeta + 50)*q^421 + (10*zeta^2 - 20)*q^422 + (-6*zeta^2 - 6*zeta + 12)*q^425 -
14*zeta*q^427 + (2*zeta^2 + 2*zeta - 4)*q^430 + (-11*zeta^2 + 22)*q^433 + 
(16*zeta^2 - 16*zeta - 32)*q^434 + (-22*zeta^2 + 11*zeta + 44)*q^436 + 
(-8*zeta^2 + 4*zeta + 16)*q^437 + (20*zeta^2 - 20*zeta - 40)*q^439 + (30*zeta^2 
- 60)*q^440 + (3*zeta^2 - 6*zeta - 6)*q^442 + (-20*zeta^2 - 20*zeta + 40)*q^443 
+ 9*zeta*q^445 + 2*zeta*q^446 + (-14*zeta^2 - 14*zeta + 28)*q^448 + (12*zeta^2 -
24*zeta - 24)*q^449 + (-24*zeta^2 + 48)*q^451 + (3*zeta^2 - 3*zeta - 6)*q^452 + 
(-4*zeta^2 + 2*zeta + 8)*q^454 + (-4*zeta^2 + 2*zeta + 8)*q^455 + (29*zeta^2 - 
29*zeta - 58)*q^457 + (zeta^2 - 2)*q^458 + (-6*zeta^2 + 12*zeta + 12)*q^460 + 
(-8*zeta^2 - 8*zeta + 16)*q^461 + 8*zeta*q^463 - 9*zeta*q^464 + (15*zeta^2 + 
15*zeta - 30)*q^466 + (-12*zeta^2 + 24*zeta + 24)*q^467 + (20*zeta^2 - 40)*q^469
+ (-12*zeta^2 + 12*zeta + 24)*q^470 + (-80*zeta^2 + 40*zeta + 160)*q^472 + 
(8*zeta^2 - 4*zeta - 16)*q^473 + (-4*zeta^2 + 4*zeta + 8)*q^475 + (18*zeta^2 - 
36)*q^476 + (16*zeta^2 - 32*zeta - 32)*q^478 + (-14*zeta^2 - 14*zeta + 28)*q^479
+ 7*zeta*q^481 + 29*zeta*q^482 + (zeta^2 + zeta - 2)*q^484 + (-2*zeta^2 + 4*zeta
+ 4)*q^485 + (16*zeta^2 - 32)*q^487 + (35*zeta^2 - 35*zeta - 70)*q^488 + 
(6*zeta^2 - 3*zeta - 12)*q^490 + (20*zeta^2 - 10*zeta - 40)*q^491 + (9*zeta^2 - 
9*zeta - 18)*q^493 + (2*zeta^2 - 4)*q^494 + (24*zeta^2 - 48*zeta - 48)*q^496 + 
(-12*zeta^2 - 12*zeta + 24)*q^497 - 10*zeta*q^499 - 21*zeta*q^500 + (-6*zeta^2 -
6*zeta + 12)*q^502 + (12*zeta^2 - 24*zeta - 24)*q^503 + (12*zeta^2 - 24)*q^505 +
(-12*zeta^2 + 12*zeta + 24)*q^506 + (-4*zeta^2 + 2*zeta + 8)*q^508 + (32*zeta^2 
- 16*zeta - 64)*q^509 + (-14*zeta^2 + 14*zeta + 28)*q^511 + (23*zeta^2 - 
46)*q^512 + (-5*zeta^2 + 10*zeta + 10)*q^514 + (-8*zeta^2 - 8*zeta + 16)*q^515 -
24*zeta*q^517 - 14*zeta*q^518 + (5*zeta^2 + 5*zeta - 10)*q^520 + (-12*zeta^2 + 
24*zeta + 24)*q^521 + O(q^522), zeta*q + zeta*q^2 + (zeta^2 + zeta - 2)*q^4 + 
(-zeta^2 + 2*zeta + 2)*q^5 + (-2*zeta^2 + 4)*q^7 + (-5*zeta^2 + 5*zeta + 10)*q^8
+ (-2*zeta^2 + zeta + 4)*q^10 + (4*zeta^2 - 2*zeta - 8)*q^11 + (-zeta^2 + zeta +
2)*q^13 + (-2*zeta^2 + 4)*q^14 + (3*zeta^2 - 6*zeta - 6)*q^16 + (3*zeta^2 + 
3*zeta - 6)*q^17 + 2*zeta*q^19 + 3*zeta*q^20 + (2*zeta^2 + 2*zeta - 4)*q^22 + 
(2*zeta^2 - 4*zeta - 4)*q^23 + (2*zeta^2 - 4)*q^25 + (-zeta^2 + zeta + 2)*q^26 +
(-4*zeta^2 + 2*zeta + 8)*q^28 + (-2*zeta^2 + zeta + 4)*q^29 + (8*zeta^2 - 8*zeta
- 16)*q^31 + (-zeta^2 + 2)*q^32 + (-3*zeta^2 + 6*zeta + 6)*q^34 + (-2*zeta^2 - 
2*zeta + 4)*q^35 - 7*zeta*q^37 + 2*zeta*q^38 + (-5*zeta^2 - 5*zeta + 10)*q^40 + 
(-4*zeta^2 + 8*zeta + 8)*q^41 + (-2*zeta^2 + 4)*q^43 + (6*zeta^2 - 6*zeta - 
12)*q^44 + (4*zeta^2 - 2*zeta - 8)*q^46 + (-8*zeta^2 + 4*zeta + 16)*q^47 + 
(-3*zeta^2 + 3*zeta + 6)*q^49 + (2*zeta^2 - 4)*q^50 + (-zeta^2 + 2*zeta + 
2)*q^52 + 6*zeta*q^55 - 10*zeta*q^56 + (-zeta^2 - zeta + 2)*q^58 + (8*zeta^2 - 
16*zeta - 16)*q^59 + (7*zeta^2 - 14)*q^61 + (8*zeta^2 - 8*zeta - 16)*q^62 + 
(14*zeta^2 - 7*zeta - 28)*q^64 + (-2*zeta^2 + zeta + 4)*q^65 + (-10*zeta^2 + 
10*zeta + 20)*q^67 + (9*zeta^2 - 18)*q^68 + (2*zeta^2 - 4*zeta - 4)*q^70 + 
(-6*zeta^2 - 6*zeta + 12)*q^71 - 7*zeta*q^73 - 7*zeta*q^74 + (2*zeta^2 + 2*zeta 
- 4)*q^76 + (-4*zeta^2 + 8*zeta + 8)*q^77 + (-2*zeta^2 + 4)*q^79 + (9*zeta^2 - 
9*zeta - 18)*q^80 + (-8*zeta^2 + 4*zeta + 16)*q^82 + (16*zeta^2 - 8*zeta - 
32)*q^83 + (-9*zeta^2 + 9*zeta + 18)*q^85 + (-2*zeta^2 + 4)*q^86 + (-10*zeta^2 +
20*zeta + 20)*q^88 + (-3*zeta^2 - 3*zeta + 6)*q^89 - 2*zeta*q^91 - 6*zeta*q^92 +
(-4*zeta^2 - 4*zeta + 8)*q^94 + (-2*zeta^2 + 4*zeta + 4)*q^95 + (-2*zeta^2 + 
4)*q^97 + (-3*zeta^2 + 3*zeta + 6)*q^98 + (4*zeta^2 - 2*zeta - 8)*q^100 + 
(-8*zeta^2 + 4*zeta + 16)*q^101 + (8*zeta^2 - 8*zeta - 16)*q^103 + (-5*zeta^2 + 
10)*q^104 + 11*zeta*q^109 + 6*zeta*q^110 + (6*zeta^2 + 6*zeta - 12)*q^112 + 
(-zeta^2 + 2*zeta + 2)*q^113 + (6*zeta^2 - 12)*q^115 + (-3*zeta^2 + 3*zeta + 
6)*q^116 + (16*zeta^2 - 8*zeta - 32)*q^118 + (-12*zeta^2 + 6*zeta + 24)*q^119 + 
(zeta^2 - zeta - 2)*q^121 + (7*zeta^2 - 14)*q^122 + (8*zeta^2 - 16*zeta - 
16)*q^124 + (7*zeta^2 + 7*zeta - 14)*q^125 + 2*zeta*q^127 + 19*zeta*q^128 + 
(-zeta^2 - zeta + 2)*q^130 + (2*zeta^2 - 4*zeta - 4)*q^131 + (-4*zeta^2 + 
8)*q^133 + (-10*zeta^2 + 10*zeta + 20)*q^134 + (-30*zeta^2 + 15*zeta + 60)*q^136
+ (-2*zeta^2 + zeta + 4)*q^137 + (8*zeta^2 - 8*zeta - 16)*q^139 + (-6*zeta^2 + 
12)*q^140 + (6*zeta^2 - 12*zeta - 12)*q^142 + (2*zeta^2 + 2*zeta - 4)*q^143 - 
3*zeta*q^145 - 7*zeta*q^146 + (-7*zeta^2 - 7*zeta + 14)*q^148 + (5*zeta^2 - 
10*zeta - 10)*q^149 + (-20*zeta^2 + 40)*q^151 + (-10*zeta^2 + 10*zeta + 
20)*q^152 + (-8*zeta^2 + 4*zeta + 16)*q^154 + (16*zeta^2 - 8*zeta - 32)*q^155 + 
(17*zeta^2 - 17*zeta - 34)*q^157 + (-2*zeta^2 + 4)*q^158 + (zeta^2 - 2*zeta - 
2)*q^160 + (4*zeta^2 + 4*zeta - 8)*q^161 - 16*zeta*q^163 + 12*zeta*q^164 + 
(8*zeta^2 + 8*zeta - 16)*q^166 + (-10*zeta^2 + 20*zeta + 20)*q^167 + (12*zeta^2 
- 24)*q^169 + (-9*zeta^2 + 9*zeta + 18)*q^170 + (-4*zeta^2 + 2*zeta + 8)*q^172 +
(22*zeta^2 - 11*zeta - 44)*q^173 + (-4*zeta^2 + 4*zeta + 8)*q^175 + (-18*zeta^2 
+ 36)*q^176 + (3*zeta^2 - 6*zeta - 6)*q^178 + (12*zeta^2 + 12*zeta - 24)*q^179 +
2*zeta*q^181 - 2*zeta*q^182 + (10*zeta^2 + 10*zeta - 20)*q^184 + (7*zeta^2 - 
14*zeta - 14)*q^185 + (18*zeta^2 - 36)*q^187 + (-12*zeta^2 + 12*zeta + 24)*q^188
+ (-4*zeta^2 + 2*zeta + 8)*q^190 + (-20*zeta^2 + 10*zeta + 40)*q^191 + (-zeta^2 
+ zeta + 2)*q^193 + (-2*zeta^2 + 4)*q^194 + (-3*zeta^2 + 6*zeta + 6)*q^196 + 
(-3*zeta^2 - 3*zeta + 6)*q^197 + 20*zeta*q^199 + 10*zeta*q^200 + (-4*zeta^2 - 
4*zeta + 8)*q^202 + (2*zeta^2 - 4*zeta - 4)*q^203 + (-12*zeta^2 + 24)*q^205 + 
(8*zeta^2 - 8*zeta - 16)*q^206 + (6*zeta^2 - 3*zeta - 12)*q^208 + (8*zeta^2 - 
4*zeta - 16)*q^209 + (-10*zeta^2 + 10*zeta + 20)*q^211 + (-2*zeta^2 - 2*zeta + 
4)*q^215 + 16*zeta*q^217 + 11*zeta*q^218 + (6*zeta^2 + 6*zeta - 12)*q^220 + 
(-3*zeta^2 + 6*zeta + 6)*q^221 + (-2*zeta^2 + 4)*q^223 + (2*zeta^2 - 2*zeta - 
4)*q^224 + (-2*zeta^2 + zeta + 4)*q^226 + (4*zeta^2 - 2*zeta - 8)*q^227 + 
(-zeta^2 + zeta + 2)*q^229 + (6*zeta^2 - 12)*q^230 + (5*zeta^2 - 10*zeta - 
10)*q^232 + (-15*zeta^2 - 15*zeta + 30)*q^233 - 12*zeta*q^235 - 24*zeta*q^236 + 
(-6*zeta^2 - 6*zeta + 12)*q^238 + (-16*zeta^2 + 32*zeta + 32)*q^239 + 
(-29*zeta^2 + 58)*q^241 + (zeta^2 - zeta - 2)*q^242 + (14*zeta^2 - 7*zeta - 
28)*q^244 + (-6*zeta^2 + 3*zeta + 12)*q^245 + (-2*zeta^2 + 2*zeta + 4)*q^247 + 
(40*zeta^2 - 80)*q^248 + (-7*zeta^2 + 14*zeta + 14)*q^250 + (6*zeta^2 + 6*zeta -
12)*q^251 - 12*zeta*q^253 + 2*zeta*q^254 + (-5*zeta^2 - 5*zeta + 10)*q^256 + 
(5*zeta^2 - 10*zeta - 10)*q^257 + (14*zeta^2 - 28)*q^259 + (-3*zeta^2 + 3*zeta +
6)*q^260 + (4*zeta^2 - 2*zeta - 8)*q^262 + (-8*zeta^2 + 4*zeta + 16)*q^263 + 
(-4*zeta^2 + 8)*q^266 + (-10*zeta^2 + 20*zeta + 20)*q^268 + (-9*zeta^2 - 9*zeta 
+ 18)*q^269 + 2*zeta*q^271 - 27*zeta*q^272 + (-zeta^2 - zeta + 2)*q^274 + 
(4*zeta^2 - 8*zeta - 8)*q^275 + (-2*zeta^2 + 4)*q^277 + (8*zeta^2 - 8*zeta - 
16)*q^278 + (20*zeta^2 - 10*zeta - 40)*q^280 + (-14*zeta^2 + 7*zeta + 28)*q^281 
+ (-28*zeta^2 + 28*zeta + 56)*q^283 + (-18*zeta^2 + 36)*q^284 + (-2*zeta^2 + 
4*zeta + 4)*q^286 + (-8*zeta^2 - 8*zeta + 16)*q^287 + 10*zeta*q^289 - 
3*zeta*q^290 + (-7*zeta^2 - 7*zeta + 14)*q^292 + (11*zeta^2 - 22*zeta - 
22)*q^293 + (24*zeta^2 - 48)*q^295 + (35*zeta^2 - 35*zeta - 70)*q^296 + 
(10*zeta^2 - 5*zeta - 20)*q^298 + (4*zeta^2 - 2*zeta - 8)*q^299 + (4*zeta^2 - 
4*zeta - 8)*q^301 + (-20*zeta^2 + 40)*q^302 + (6*zeta^2 - 12*zeta - 12)*q^304 + 
(7*zeta^2 + 7*zeta - 14)*q^305 - 16*zeta*q^307 + 12*zeta*q^308 + (8*zeta^2 + 
8*zeta - 16)*q^310 + (-4*zeta^2 + 8*zeta + 8)*q^311 + (25*zeta^2 - 50)*q^313 + 
(17*zeta^2 - 17*zeta - 34)*q^314 + (-4*zeta^2 + 2*zeta + 8)*q^316 + (10*zeta^2 -
5*zeta - 20)*q^317 + (-6*zeta^2 + 6*zeta + 12)*q^319 + (21*zeta^2 - 42)*q^320 + 
(-4*zeta^2 + 8*zeta + 8)*q^322 + (6*zeta^2 + 6*zeta - 12)*q^323 + 2*zeta*q^325 -
16*zeta*q^326 + (-20*zeta^2 - 20*zeta + 40)*q^328 + (8*zeta^2 - 16*zeta - 
16)*q^329 + (-2*zeta^2 + 4)*q^331 + (24*zeta^2 - 24*zeta - 48)*q^332 + 
(-20*zeta^2 + 10*zeta + 40)*q^334 + (-20*zeta^2 + 10*zeta + 40)*q^335 + 
(26*zeta^2 - 26*zeta - 52)*q^337 + (12*zeta^2 - 24)*q^338 + (-9*zeta^2 + 18*zeta
+ 18)*q^340 + (-16*zeta^2 - 16*zeta + 32)*q^341 - 20*zeta*q^343 - 10*zeta*q^344 
+ (11*zeta^2 + 11*zeta - 22)*q^346 + (2*zeta^2 - 4*zeta - 4)*q^347 + (-2*zeta^2 
+ 4)*q^349 + (-4*zeta^2 + 4*zeta + 8)*q^350 + (-4*zeta^2 + 2*zeta + 8)*q^352 + 
(16*zeta^2 - 8*zeta - 32)*q^353 + (18*zeta^2 - 18*zeta - 36)*q^355 + (-9*zeta^2 
+ 18)*q^356 + (-12*zeta^2 + 24*zeta + 24)*q^358 + (6*zeta^2 + 6*zeta - 12)*q^359
- 15*zeta*q^361 + 2*zeta*q^362 + (-2*zeta^2 - 2*zeta + 4)*q^364 + (7*zeta^2 - 
14*zeta - 14)*q^365 + (-20*zeta^2 + 40)*q^367 + (-18*zeta^2 + 18*zeta + 
36)*q^368 + (14*zeta^2 - 7*zeta - 28)*q^370 + (-10*zeta^2 + 10*zeta + 20)*q^373 
+ (18*zeta^2 - 36)*q^374 + (20*zeta^2 - 40*zeta - 40)*q^376 + (-zeta^2 - zeta + 
2)*q^377 - 16*zeta*q^379 + 6*zeta*q^380 + (-10*zeta^2 - 10*zeta + 20)*q^382 + 
(-10*zeta^2 + 20*zeta + 20)*q^383 + (-12*zeta^2 + 24)*q^385 + (-zeta^2 + zeta + 
2)*q^386 + (-4*zeta^2 + 2*zeta + 8)*q^388 + (-32*zeta^2 + 16*zeta + 64)*q^389 + 
(18*zeta^2 - 18*zeta - 36)*q^391 + (-15*zeta^2 + 30)*q^392 + (3*zeta^2 - 6*zeta 
- 6)*q^394 + (-2*zeta^2 - 2*zeta + 4)*q^395 + 29*zeta*q^397 + 20*zeta*q^398 + 
(-6*zeta^2 - 6*zeta + 12)*q^400 + (-7*zeta^2 + 14*zeta + 14)*q^401 + (8*zeta^2 -
16)*q^403 + (-12*zeta^2 + 12*zeta + 24)*q^404 + (4*zeta^2 - 2*zeta - 8)*q^406 + 
(-28*zeta^2 + 14*zeta + 56)*q^407 + (-19*zeta^2 + 19*zeta + 38)*q^409 + 
(-12*zeta^2 + 24)*q^410 + (8*zeta^2 - 16*zeta - 16)*q^412 + (16*zeta^2 + 16*zeta
- 32)*q^413 + 24*zeta*q^415 - zeta*q^416 + (4*zeta^2 + 4*zeta - 8)*q^418 + 
(-4*zeta^2 + 8*zeta + 8)*q^419 + (25*zeta^2 - 50)*q^421 + (-10*zeta^2 + 10*zeta 
+ 20)*q^422 + (12*zeta^2 - 6*zeta - 24)*q^425 + (-14*zeta^2 + 14*zeta + 
28)*q^427 + (2*zeta^2 - 4*zeta - 4)*q^430 + 11*zeta*q^433 + 16*zeta*q^434 + 
(11*zeta^2 + 11*zeta - 22)*q^436 + (4*zeta^2 - 8*zeta - 8)*q^437 + (-20*zeta^2 +
40)*q^439 + (-30*zeta^2 + 30*zeta + 60)*q^440 + (-6*zeta^2 + 3*zeta + 12)*q^442 
+ (40*zeta^2 - 20*zeta - 80)*q^443 + (9*zeta^2 - 9*zeta - 18)*q^445 + (-2*zeta^2
+ 4)*q^446 + (-14*zeta^2 + 28*zeta + 28)*q^448 + (12*zeta^2 + 12*zeta - 
24)*q^449 + 24*zeta*q^451 + 3*zeta*q^452 + (2*zeta^2 + 2*zeta - 4)*q^454 + 
(2*zeta^2 - 4*zeta - 4)*q^455 + (-29*zeta^2 + 58)*q^457 + (-zeta^2 + zeta + 
2)*q^458 + (12*zeta^2 - 6*zeta - 24)*q^460 + (16*zeta^2 - 8*zeta - 32)*q^461 + 
(8*zeta^2 - 8*zeta - 16)*q^463 + (9*zeta^2 - 18)*q^464 + (15*zeta^2 - 30*zeta - 
30)*q^466 + (-12*zeta^2 - 12*zeta + 24)*q^467 - 20*zeta*q^469 - 12*zeta*q^470 + 
(40*zeta^2 + 40*zeta - 80)*q^472 + (-4*zeta^2 + 8*zeta + 8)*q^473 + (4*zeta^2 - 
8)*q^475 + (-18*zeta^2 + 18*zeta + 36)*q^476 + (-32*zeta^2 + 16*zeta + 64)*q^478
+ (28*zeta^2 - 14*zeta - 56)*q^479 + (7*zeta^2 - 7*zeta - 14)*q^481 + 
(-29*zeta^2 + 58)*q^482 + (zeta^2 - 2*zeta - 2)*q^484 + (-2*zeta^2 - 2*zeta + 
4)*q^485 - 16*zeta*q^487 + 35*zeta*q^488 + (-3*zeta^2 - 3*zeta + 6)*q^490 + 
(-10*zeta^2 + 20*zeta + 20)*q^491 + (-9*zeta^2 + 18)*q^493 + (-2*zeta^2 + 2*zeta
+ 4)*q^494 + (-48*zeta^2 + 24*zeta + 96)*q^496 + (24*zeta^2 - 12*zeta - 
48)*q^497 + (-10*zeta^2 + 10*zeta + 20)*q^499 + (21*zeta^2 - 42)*q^500 + 
(-6*zeta^2 + 12*zeta + 12)*q^502 + (12*zeta^2 + 12*zeta - 24)*q^503 - 
12*zeta*q^505 - 12*zeta*q^506 + (2*zeta^2 + 2*zeta - 4)*q^508 + (-16*zeta^2 + 
32*zeta + 32)*q^509 + (14*zeta^2 - 28)*q^511 + (-23*zeta^2 + 23*zeta + 46)*q^512
+ (10*zeta^2 - 5*zeta - 20)*q^514 + (16*zeta^2 - 8*zeta - 32)*q^515 + 
(-24*zeta^2 + 24*zeta + 48)*q^517 + (14*zeta^2 - 28)*q^518 + (5*zeta^2 - 10*zeta
- 10)*q^520 + (-12*zeta^2 - 12*zeta + 24)*q^521 + O(q^522), (-zeta^2 + 2)*q + 
(zeta^2 + zeta - 2)*q^2 + (2*zeta^2 - zeta - 4)*q^4 - 3*zeta*q^5 + (-4*zeta^2 + 
4*zeta + 8)*q^7 + (zeta^2 - 2*zeta - 2)*q^8 + (-3*zeta^2 + 6*zeta + 6)*q^10 - 
zeta*q^13 + (8*zeta^2 - 4*zeta - 16)*q^14 + (-zeta^2 - zeta + 2)*q^16 + 
(3*zeta^2 - 6)*q^17 + (4*zeta^2 - 8)*q^19 + (3*zeta^2 + 3*zeta - 6)*q^20 + 
(4*zeta^2 - 4*zeta - 8)*q^25 + (-zeta^2 + 2*zeta + 2)*q^26 + (4*zeta^2 - 8*zeta 
- 8)*q^28 + (9*zeta^2 - 9*zeta - 18)*q^29 - 4*zeta*q^31 + (-2*zeta^2 + zeta + 
4)*q^32 + (-3*zeta^2 - 3*zeta + 6)*q^34 + (-12*zeta^2 + 24)*q^35 + (zeta^2 - 
2)*q^37 + (-4*zeta^2 - 4*zeta + 8)*q^38 + (6*zeta^2 - 3*zeta - 12)*q^40 + 
6*zeta*q^41 + (8*zeta^2 - 8*zeta - 16)*q^43 + (-12*zeta^2 + 12*zeta + 24)*q^47 +
9*zeta*q^49 + (-8*zeta^2 + 4*zeta + 16)*q^50 + (zeta^2 + zeta - 2)*q^52 + 
(6*zeta^2 - 12)*q^53 + (-4*zeta^2 - 4*zeta + 8)*q^56 + (-18*zeta^2 + 9*zeta + 
36)*q^58 + (-zeta^2 + zeta + 2)*q^61 + (-4*zeta^2 + 8*zeta + 8)*q^62 + (-zeta^2 
+ 2*zeta + 2)*q^64 + (3*zeta^2 - 3*zeta - 6)*q^65 - 4*zeta*q^67 + (-6*zeta^2 + 
3*zeta + 12)*q^68 + (12*zeta^2 + 12*zeta - 24)*q^70 + (12*zeta^2 - 24)*q^71 + 
(-11*zeta^2 + 22)*q^73 + (-zeta^2 - zeta + 2)*q^74 + (-8*zeta^2 + 4*zeta + 
16)*q^76 + (-16*zeta^2 + 16*zeta + 32)*q^79 + (3*zeta^2 - 6*zeta - 6)*q^80 + 
(6*zeta^2 - 12*zeta - 12)*q^82 + (-12*zeta^2 + 12*zeta + 24)*q^83 + 9*zeta*q^85 
+ (-16*zeta^2 + 8*zeta + 32)*q^86 + (3*zeta^2 - 6)*q^89 + (-4*zeta^2 + 8)*q^91 +
(24*zeta^2 - 12*zeta - 48)*q^94 + 12*zeta*q^95 + (2*zeta^2 - 2*zeta - 4)*q^97 + 
(9*zeta^2 - 18*zeta - 18)*q^98 + (-4*zeta^2 + 8*zeta + 8)*q^100 + (-6*zeta^2 + 
6*zeta + 12)*q^101 - 4*zeta*q^103 + (2*zeta^2 - zeta - 4)*q^104 + (-6*zeta^2 - 
6*zeta + 12)*q^106 + (-12*zeta^2 + 24)*q^107 + (-11*zeta^2 + 22)*q^109 + 
(-8*zeta^2 + 4*zeta + 16)*q^112 - 15*zeta*q^113 + (-9*zeta^2 + 18*zeta + 
18)*q^116 + (12*zeta^2 - 12*zeta - 24)*q^119 - 11*zeta*q^121 + (2*zeta^2 - zeta 
- 4)*q^122 + (4*zeta^2 + 4*zeta - 8)*q^124 + (-3*zeta^2 + 6)*q^125 + (16*zeta^2 
- 32)*q^127 + (zeta^2 + zeta - 2)*q^128 + (-6*zeta^2 + 3*zeta + 12)*q^130 - 
12*zeta*q^131 + (16*zeta^2 - 16*zeta - 32)*q^133 + (-4*zeta^2 + 8*zeta + 
8)*q^134 + (-3*zeta^2 + 6*zeta + 6)*q^136 + (9*zeta^2 - 9*zeta - 18)*q^137 + 
20*zeta*q^139 + (24*zeta^2 - 12*zeta - 48)*q^140 + (-12*zeta^2 - 12*zeta + 
24)*q^142 + (27*zeta^2 - 54)*q^145 + (11*zeta^2 + 11*zeta - 22)*q^146 + 
(-2*zeta^2 + zeta + 4)*q^148 + 9*zeta*q^149 + (8*zeta^2 - 8*zeta - 16)*q^151 + 
(-4*zeta^2 + 8*zeta + 8)*q^152 + (12*zeta^2 - 12*zeta - 24)*q^155 - 
13*zeta*q^157 + (32*zeta^2 - 16*zeta - 64)*q^158 + (-3*zeta^2 - 3*zeta + 
6)*q^160 + (-8*zeta^2 + 16)*q^163 + (-6*zeta^2 - 6*zeta + 12)*q^164 + (24*zeta^2
- 12*zeta - 48)*q^166 + 12*zeta*q^167 + (-12*zeta^2 + 12*zeta + 24)*q^169 + 
(9*zeta^2 - 18*zeta - 18)*q^170 + (-8*zeta^2 + 16*zeta + 16)*q^172 + (-3*zeta^2 
+ 3*zeta + 6)*q^173 - 16*zeta*q^175 + (-3*zeta^2 - 3*zeta + 6)*q^178 + 
(-12*zeta^2 + 24)*q^179 + (10*zeta^2 - 20)*q^181 + (4*zeta^2 + 4*zeta - 8)*q^182
+ 3*zeta*q^185 + (12*zeta^2 - 24*zeta - 24)*q^188 + (12*zeta^2 - 24*zeta - 
24)*q^190 + (12*zeta^2 - 12*zeta - 24)*q^191 - 13*zeta*q^193 + (-4*zeta^2 + 
2*zeta + 8)*q^194 + (-9*zeta^2 - 9*zeta + 18)*q^196 + (3*zeta^2 - 6)*q^197 + 
(4*zeta^2 - 8)*q^199 + (4*zeta^2 + 4*zeta - 8)*q^200 + (12*zeta^2 - 6*zeta - 
24)*q^202 - 36*zeta*q^203 + (-18*zeta^2 + 18*zeta + 36)*q^205 + (-4*zeta^2 + 
8*zeta + 8)*q^206 + (zeta^2 - 2*zeta - 2)*q^208 + 8*zeta*q^211 + (-12*zeta^2 + 
6*zeta + 24)*q^212 + (12*zeta^2 + 12*zeta - 24)*q^214 + (24*zeta^2 - 48)*q^215 +
(-16*zeta^2 + 32)*q^217 + (11*zeta^2 + 11*zeta - 22)*q^218 + 3*zeta*q^221 + 
(8*zeta^2 - 8*zeta - 16)*q^223 + (-4*zeta^2 + 8*zeta + 8)*q^224 + (-15*zeta^2 + 
30*zeta + 30)*q^226 + (-12*zeta^2 + 12*zeta + 24)*q^227 + 23*zeta*q^229 + 
(9*zeta^2 + 9*zeta - 18)*q^232 + (-21*zeta^2 + 42)*q^233 + (-36*zeta^2 + 
72)*q^235 + (-24*zeta^2 + 12*zeta + 48)*q^238 + 12*zeta*q^239 + (-13*zeta^2 + 
13*zeta + 26)*q^241 + (-11*zeta^2 + 22*zeta + 22)*q^242 + (zeta^2 - 2*zeta - 
2)*q^244 + (-27*zeta^2 + 27*zeta + 54)*q^245 + 4*zeta*q^247 + (8*zeta^2 - 4*zeta
- 16)*q^248 + (3*zeta^2 + 3*zeta - 6)*q^250 + (24*zeta^2 - 48)*q^251 + 
(-16*zeta^2 - 16*zeta + 32)*q^254 + (2*zeta^2 - zeta - 4)*q^256 - 15*zeta*q^257 
+ (4*zeta^2 - 4*zeta - 8)*q^259 + (-3*zeta^2 + 6*zeta + 6)*q^260 + (-12*zeta^2 +
24*zeta + 24)*q^262 + (12*zeta^2 - 12*zeta - 24)*q^263 + 18*zeta*q^265 + 
(-32*zeta^2 + 16*zeta + 64)*q^266 + (4*zeta^2 + 4*zeta - 8)*q^268 + (-21*zeta^2 
+ 42)*q^269 + (16*zeta^2 - 32)*q^271 + (3*zeta^2 + 3*zeta - 6)*q^272 + 
(-18*zeta^2 + 9*zeta + 36)*q^274 + (-10*zeta^2 + 10*zeta + 20)*q^277 + 
(20*zeta^2 - 40*zeta - 40)*q^278 + (12*zeta^2 - 24*zeta - 24)*q^280 + 
(-27*zeta^2 + 27*zeta + 54)*q^281 - 4*zeta*q^283 + (-24*zeta^2 + 12*zeta + 
48)*q^284 + (24*zeta^2 - 48)*q^287 + (8*zeta^2 - 16)*q^289 + (-27*zeta^2 - 
27*zeta + 54)*q^290 + (22*zeta^2 - 11*zeta - 44)*q^292 + 9*zeta*q^293 + (-zeta^2
+ 2*zeta + 2)*q^296 + (9*zeta^2 - 18*zeta - 18)*q^298 - 32*zeta*q^301 + 
(-16*zeta^2 + 8*zeta + 32)*q^302 + (4*zeta^2 + 4*zeta - 8)*q^304 + (-3*zeta^2 + 
6)*q^305 + (-20*zeta^2 + 40)*q^307 + (-24*zeta^2 + 12*zeta + 48)*q^310 + 
24*zeta*q^311 + (23*zeta^2 - 23*zeta - 46)*q^313 + (-13*zeta^2 + 26*zeta + 
26)*q^314 + (16*zeta^2 - 32*zeta - 32)*q^316 + (21*zeta^2 - 21*zeta - 42)*q^317 
+ (-6*zeta^2 + 3*zeta + 12)*q^320 + (-12*zeta^2 + 24)*q^323 + (4*zeta^2 - 
8)*q^325 + (8*zeta^2 + 8*zeta - 16)*q^326 + (-12*zeta^2 + 6*zeta + 24)*q^328 + 
48*zeta*q^329 + (20*zeta^2 - 20*zeta - 40)*q^331 + (12*zeta^2 - 24*zeta - 
24)*q^332 + (12*zeta^2 - 24*zeta - 24)*q^334 + (12*zeta^2 - 12*zeta - 24)*q^335 
+ 2*zeta*q^337 + (24*zeta^2 - 12*zeta - 48)*q^338 + (-9*zeta^2 - 9*zeta + 
18)*q^340 + (8*zeta^2 - 16)*q^343 + (8*zeta^2 + 8*zeta - 16)*q^344 + (6*zeta^2 -
3*zeta - 12)*q^346 + 12*zeta*q^347 + (14*zeta^2 - 14*zeta - 28)*q^349 + 
(-16*zeta^2 + 32*zeta + 32)*q^350 + (-18*zeta^2 + 18*zeta + 36)*q^353 + 
36*zeta*q^355 + (-6*zeta^2 + 3*zeta + 12)*q^356 + (12*zeta^2 + 12*zeta - 
24)*q^358 + (3*zeta^2 - 6)*q^361 + (-10*zeta^2 - 10*zeta + 20)*q^362 + (8*zeta^2
- 4*zeta - 16)*q^364 - 33*zeta*q^365 + (8*zeta^2 - 8*zeta - 16)*q^367 + 
(3*zeta^2 - 6*zeta - 6)*q^370 + (24*zeta^2 - 24*zeta - 48)*q^371 - 10*zeta*q^373
+ (-12*zeta^2 - 12*zeta + 24)*q^376 + (9*zeta^2 - 18)*q^377 + (28*zeta^2 - 
56)*q^379 + (-12*zeta^2 - 12*zeta + 24)*q^380 + (-24*zeta^2 + 12*zeta + 
48)*q^382 - 12*zeta*q^383 + (-13*zeta^2 + 26*zeta + 26)*q^386 + (-2*zeta^2 + 
4*zeta + 4)*q^388 + (-6*zeta^2 + 6*zeta + 12)*q^389 + (-18*zeta^2 + 9*zeta + 
36)*q^392 + (-3*zeta^2 - 3*zeta + 6)*q^394 + (-48*zeta^2 + 96)*q^395 + 
(25*zeta^2 - 50)*q^397 + (-4*zeta^2 - 4*zeta + 8)*q^398 + (8*zeta^2 - 4*zeta - 
16)*q^400 - 3*zeta*q^401 + (4*zeta^2 - 4*zeta - 8)*q^403 + (6*zeta^2 - 12*zeta -
12)*q^404 + (-36*zeta^2 + 72*zeta + 72)*q^406 - 25*zeta*q^409 + (36*zeta^2 - 
18*zeta - 72)*q^410 + (4*zeta^2 + 4*zeta - 8)*q^412 + (-36*zeta^2 + 72)*q^415 + 
(-zeta^2 - zeta + 2)*q^416 - 24*zeta*q^419 + (-13*zeta^2 + 13*zeta + 26)*q^421 +
(8*zeta^2 - 16*zeta - 16)*q^422 + (-6*zeta^2 + 12*zeta + 12)*q^424 + (-12*zeta^2
+ 12*zeta + 24)*q^425 + 4*zeta*q^427 + (24*zeta^2 - 12*zeta - 48)*q^428 + 
(-24*zeta^2 - 24*zeta + 48)*q^430 + (12*zeta^2 - 24)*q^431 + (-11*zeta^2 + 
22)*q^433 + (16*zeta^2 + 16*zeta - 32)*q^434 + (22*zeta^2 - 11*zeta - 44)*q^436 
+ (-28*zeta^2 + 28*zeta + 56)*q^439 + (3*zeta^2 - 6*zeta - 6)*q^442 + 
(-12*zeta^2 + 12*zeta + 24)*q^443 + 9*zeta*q^445 + (-16*zeta^2 + 8*zeta + 
32)*q^446 + (4*zeta^2 + 4*zeta - 8)*q^448 + (18*zeta^2 - 36)*q^449 + (15*zeta^2 
+ 15*zeta - 30)*q^452 + (24*zeta^2 - 12*zeta - 48)*q^454 - 12*zeta*q^455 + 
(-zeta^2 + zeta + 2)*q^457 + (23*zeta^2 - 46*zeta - 46)*q^458 + (18*zeta^2 - 
18*zeta - 36)*q^461 + 8*zeta*q^463 + (18*zeta^2 - 9*zeta - 36)*q^464 + 
(21*zeta^2 + 21*zeta - 42)*q^466 + (24*zeta^2 - 48)*q^467 + (-16*zeta^2 + 
32)*q^469 + (36*zeta^2 + 36*zeta - 72)*q^470 + (-16*zeta^2 + 16*zeta + 32)*q^475
+ (-12*zeta^2 + 24*zeta + 24)*q^476 + (12*zeta^2 - 24*zeta - 24)*q^478 + 
(-12*zeta^2 + 12*zeta + 24)*q^479 + zeta*q^481 + (26*zeta^2 - 13*zeta - 
52)*q^482 + (11*zeta^2 + 11*zeta - 22)*q^484 + (6*zeta^2 - 12)*q^485 + (4*zeta^2
- 8)*q^487 + (-zeta^2 - zeta + 2)*q^488 + (54*zeta^2 - 27*zeta - 108)*q^490 + 
(-27*zeta^2 + 27*zeta + 54)*q^493 + (4*zeta^2 - 8*zeta - 8)*q^494 + (4*zeta^2 - 
8*zeta - 8)*q^496 + (48*zeta^2 - 48*zeta - 96)*q^497 - 40*zeta*q^499 + (6*zeta^2
- 3*zeta - 12)*q^500 + (-24*zeta^2 - 24*zeta + 48)*q^502 + (-18*zeta^2 + 
36)*q^505 + (-32*zeta^2 + 16*zeta + 64)*q^508 - 30*zeta*q^509 + (-44*zeta^2 + 
44*zeta + 88)*q^511 + (zeta^2 - 2*zeta - 2)*q^512 + (-15*zeta^2 + 30*zeta + 
30)*q^514 + (12*zeta^2 - 12*zeta - 24)*q^515 + (-8*zeta^2 + 4*zeta + 16)*q^518 +
(3*zeta^2 + 3*zeta - 6)*q^520 + (-6*zeta^2 + 12)*q^521 + O(q^522), zeta*q^3 + 
(-zeta^2 + 2*zeta + 2)*q^6 + (zeta^2 - 2*zeta - 2)*q^9 + (-zeta^2 - zeta + 
2)*q^12 + (3*zeta^2 - 3*zeta - 6)*q^18 + (-2*zeta^2 + 4)*q^21 + (2*zeta^2 - zeta
- 4)*q^24 + (-3*zeta^2 + 3*zeta + 6)*q^27 + (3*zeta^2 - 6)*q^33 + 3*zeta*q^36 + 
(2*zeta^2 - 2*zeta - 4)*q^39 + (-2*zeta^2 - 2*zeta + 4)*q^42 + (-zeta^2 + 2*zeta
+ 2)*q^48 - 3*zeta*q^51 + (-6*zeta^2 + 3*zeta + 12)*q^54 - zeta*q^57 + (2*zeta^2
+ 2*zeta - 4)*q^63 + (3*zeta^2 + 3*zeta - 6)*q^66 + (-6*zeta^2 + 6*zeta + 
12)*q^69 + (-3*zeta^2 + 6)*q^72 + (5*zeta^2 - 10)*q^75 + (4*zeta^2 - 2*zeta - 
8)*q^78 + (6*zeta^2 - 3*zeta - 12)*q^81 + (4*zeta^2 - 2*zeta - 8)*q^84 + 
(-6*zeta^2 + 12)*q^87 + (-4*zeta^2 + 4*zeta + 8)*q^93 + (-zeta^2 - zeta + 
2)*q^96 + (-3*zeta^2 - 3*zeta + 6)*q^99 + (3*zeta^2 - 6*zeta - 6)*q^102 + 
(3*zeta^2 - 6*zeta - 6)*q^108 - 4*zeta*q^111 + (zeta^2 - 2*zeta - 2)*q^114 + 
(-4*zeta^2 + 2*zeta + 8)*q^117 + (9*zeta^2 - 9*zeta - 18)*q^123 + 6*zeta*q^126 +
(zeta^2 - 2)*q^129 + (-6*zeta^2 + 3*zeta + 12)*q^132 + (-12*zeta^2 + 6*zeta + 
24)*q^138 + (6*zeta^2 - 12)*q^141 + (3*zeta^2 - 3*zeta - 6)*q^144 + (-3*zeta^2 +
3*zeta + 6)*q^147 + (5*zeta^2 + 5*zeta - 10)*q^150 + (-3*zeta^2 + 6*zeta + 
6)*q^153 + (-2*zeta^2 + 4*zeta + 4)*q^156 + 12*zeta*q^159 + (9*zeta^2 - 
18)*q^162 + (-2*zeta^2 + 4*zeta + 4)*q^168 + (-zeta^2 + 2*zeta + 2)*q^171 + 
(-6*zeta^2 - 6*zeta + 12)*q^174 + (3*zeta^2 - 3*zeta - 6)*q^177 + (-8*zeta^2 + 
16)*q^183 + (-8*zeta^2 + 4*zeta + 16)*q^186 - 6*zeta*q^189 + (2*zeta^2 - zeta - 
4)*q^192 - 9*zeta*q^198 + (5*zeta^2 - 5*zeta - 10)*q^201 + (3*zeta^2 + 3*zeta - 
6)*q^204 + (12*zeta^2 - 6*zeta - 24)*q^207 - 12*zeta*q^213 + (3*zeta^2 + 3*zeta 
- 6)*q^216 + 11*zeta*q^219 + (4*zeta^2 - 8*zeta - 8)*q^222 + (-5*zeta^2 - 5*zeta
+ 10)*q^225 + (zeta^2 + zeta - 2)*q^228 + (-6*zeta^2 + 6*zeta + 12)*q^231 + 
(-6*zeta^2 + 12)*q^234 + (4*zeta^2 - 8)*q^237 + (-9*zeta^2 + 18)*q^243 + 
(18*zeta^2 - 9*zeta - 36)*q^246 + (-12*zeta^2 + 24)*q^249 + (-6*zeta^2 + 
12)*q^252 + (zeta^2 + zeta - 2)*q^258 + (6*zeta^2 + 6*zeta - 12)*q^261 + 
(3*zeta^2 - 6*zeta - 6)*q^264 + 6*zeta*q^267 + 4*zeta*q^273 + (6*zeta^2 - 
12*zeta - 12)*q^276 + (8*zeta^2 - 4*zeta - 16)*q^279 + (6*zeta^2 + 6*zeta - 
12)*q^282 + 3*zeta*q^288 + (-5*zeta^2 + 10)*q^291 + (-6*zeta^2 + 3*zeta + 
12)*q^294 + 9*zeta*q^297 + (-10*zeta^2 + 5*zeta + 20)*q^300 + (-9*zeta^2 + 
9*zeta + 18)*q^306 + (14*zeta^2 - 14*zeta - 28)*q^309 + (-2*zeta^2 - 2*zeta + 
4)*q^312 + (-12*zeta^2 + 24*zeta + 24)*q^318 + 3*zeta*q^321 + (-9*zeta^2 + 
9*zeta + 18)*q^324 - 16*zeta*q^327 + (-4*zeta^2 + 8*zeta + 8)*q^333 + (-2*zeta^2
- 2*zeta + 4)*q^336 + (6*zeta^2 - 6*zeta - 12)*q^339 + (-3*zeta^2 + 3*zeta + 
6)*q^342 + (12*zeta^2 - 6*zeta - 24)*q^348 + (6*zeta^2 - 12)*q^351 + (6*zeta^2 -
3*zeta - 12)*q^354 + (6*zeta^2 - 12)*q^357 + (-2*zeta^2 + 2*zeta + 4)*q^363 + 
(-8*zeta^2 - 8*zeta + 16)*q^366 + (-18*zeta^2 + 9*zeta + 36)*q^369 + (4*zeta^2 -
8*zeta - 8)*q^372 + (6*zeta^2 - 12*zeta - 12)*q^378 + 2*zeta*q^381 + (-zeta^2 + 
2*zeta + 2)*q^384 + (-zeta^2 - zeta + 2)*q^387 + (9*zeta^2 - 18)*q^396 + 
(2*zeta^2 - 4)*q^399 + (10*zeta^2 - 5*zeta - 20)*q^402 + (-6*zeta^2 + 3*zeta + 
12)*q^408 + (3*zeta^2 - 6)*q^411 + (18*zeta^2 - 36)*q^414 + (-19*zeta^2 + 
19*zeta + 38)*q^417 + (-6*zeta^2 - 6*zeta + 12)*q^423 + (12*zeta^2 - 24*zeta - 
24)*q^426 - 6*zeta*q^429 + (-6*zeta^2 + 3*zeta + 12)*q^432 + (-11*zeta^2 + 
22*zeta + 22)*q^438 + (6*zeta^2 - 3*zeta - 12)*q^441 + (4*zeta^2 + 4*zeta - 
8)*q^444 + (-6*zeta^2 + 6*zeta + 12)*q^447 - 15*zeta*q^450 + (10*zeta^2 - 
20)*q^453 + (-2*zeta^2 + zeta + 4)*q^456 + (9*zeta^2 - 9*zeta - 18)*q^459 + 
(-12*zeta^2 + 6*zeta + 24)*q^462 + (6*zeta^2 - 6*zeta - 12)*q^468 + (-4*zeta^2 +
4*zeta + 8)*q^471 + (4*zeta^2 + 4*zeta - 8)*q^474 + (12*zeta^2 - 24*zeta - 
24)*q^477 - 12*zeta*q^483 + (-9*zeta^2 - 9*zeta + 18)*q^486 - 4*zeta*q^489 + 
(-9*zeta^2 + 18*zeta + 18)*q^492 + (-12*zeta^2 - 12*zeta + 24)*q^498 + 
(-12*zeta^2 + 12*zeta + 24)*q^501 + (6*zeta^2 - 6*zeta - 12)*q^504 + (9*zeta^2 -
18)*q^507 + (3*zeta^2 - 3*zeta - 6)*q^513 + (-2*zeta^2 + zeta + 4)*q^516 + 
(6*zeta^2 - 12)*q^519 + O(q^522), (-zeta^2 + 2*zeta + 2)*q + (-3*zeta^2 + 3*zeta
+ 6)*q^2 - 3*zeta*q^4 + (6*zeta^2 - 3*zeta - 12)*q^5 + (4*zeta^2 + 4*zeta - 
8)*q^7 + (3*zeta^2 - 6)*q^8 + (9*zeta^2 - 18)*q^10 + (-2*zeta^2 + zeta + 4)*q^13
+ 12*zeta*q^14 + (-3*zeta^2 + 3*zeta + 6)*q^16 + (-3*zeta^2 + 6*zeta + 6)*q^17 +
(4*zeta^2 - 8*zeta - 8)*q^19 + (-9*zeta^2 + 9*zeta + 18)*q^20 + (-4*zeta^2 - 
4*zeta + 8)*q^25 + (-3*zeta^2 + 6)*q^26 + (-12*zeta^2 + 24)*q^28 + (9*zeta^2 + 
9*zeta - 18)*q^29 + (-8*zeta^2 + 4*zeta + 16)*q^31 - 3*zeta*q^32 + (-9*zeta^2 + 
9*zeta + 18)*q^34 + (12*zeta^2 - 24*zeta - 24)*q^35 + (zeta^2 - 2*zeta - 2)*q^37
+ (12*zeta^2 - 12*zeta - 24)*q^38 - 9*zeta*q^40 + (-12*zeta^2 + 6*zeta + 
24)*q^41 + (-8*zeta^2 - 8*zeta + 16)*q^43 + (-12*zeta^2 - 12*zeta + 24)*q^47 + 
(18*zeta^2 - 9*zeta - 36)*q^49 - 12*zeta*q^50 + (3*zeta^2 - 3*zeta - 6)*q^52 + 
(-6*zeta^2 + 12*zeta + 12)*q^53 + (12*zeta^2 - 12*zeta - 24)*q^56 + 27*zeta*q^58
+ (zeta^2 + zeta - 2)*q^61 + (-12*zeta^2 + 24)*q^62 + (3*zeta^2 - 6)*q^64 + 
(3*zeta^2 + 3*zeta - 6)*q^65 + (-8*zeta^2 + 4*zeta + 16)*q^67 - 9*zeta*q^68 + 
(36*zeta^2 - 36*zeta - 72)*q^70 + (-12*zeta^2 + 24*zeta + 24)*q^71 + (-11*zeta^2
+ 22*zeta + 22)*q^73 + (3*zeta^2 - 3*zeta - 6)*q^74 + 12*zeta*q^76 + (16*zeta^2 
+ 16*zeta - 32)*q^79 + (9*zeta^2 - 18)*q^80 + (-18*zeta^2 + 36)*q^82 + 
(-12*zeta^2 - 12*zeta + 24)*q^83 + (18*zeta^2 - 9*zeta - 36)*q^85 - 24*zeta*q^86
+ (-3*zeta^2 + 6*zeta + 6)*q^89 + (-4*zeta^2 + 8*zeta + 8)*q^91 - 36*zeta*q^94 +
(-24*zeta^2 + 12*zeta + 48)*q^95 + (-2*zeta^2 - 2*zeta + 4)*q^97 + (27*zeta^2 - 
54)*q^98 + (12*zeta^2 - 24)*q^100 + (-6*zeta^2 - 6*zeta + 12)*q^101 + (-8*zeta^2
+ 4*zeta + 16)*q^103 + 3*zeta*q^104 + (-18*zeta^2 + 18*zeta + 36)*q^106 + 
(12*zeta^2 - 24*zeta - 24)*q^107 + (-11*zeta^2 + 22*zeta + 22)*q^109 + 
12*zeta*q^112 + (30*zeta^2 - 15*zeta - 60)*q^113 + (-27*zeta^2 + 54)*q^116 + 
(12*zeta^2 + 12*zeta - 24)*q^119 + (-22*zeta^2 + 11*zeta + 44)*q^121 + 
3*zeta*q^122 + (12*zeta^2 - 12*zeta - 24)*q^124 + (3*zeta^2 - 6*zeta - 6)*q^125 
+ (16*zeta^2 - 32*zeta - 32)*q^127 + (-3*zeta^2 + 3*zeta + 6)*q^128 + 
9*zeta*q^130 + (24*zeta^2 - 12*zeta - 48)*q^131 + (-16*zeta^2 - 16*zeta + 
32)*q^133 + (-12*zeta^2 + 24)*q^134 + (9*zeta^2 - 18)*q^136 + (9*zeta^2 + 9*zeta
- 18)*q^137 + (40*zeta^2 - 20*zeta - 80)*q^139 + 36*zeta*q^140 + (-36*zeta^2 + 
36*zeta + 72)*q^142 + (27*zeta^2 - 54*zeta - 54)*q^145 + (-33*zeta^2 + 33*zeta +
66)*q^146 + 3*zeta*q^148 + (-18*zeta^2 + 9*zeta + 36)*q^149 + (-8*zeta^2 - 
8*zeta + 16)*q^151 + (-12*zeta^2 + 24)*q^152 + (12*zeta^2 + 12*zeta - 24)*q^155 
+ (-26*zeta^2 + 13*zeta + 52)*q^157 + 48*zeta*q^158 + (-9*zeta^2 + 9*zeta + 
18)*q^160 + (-8*zeta^2 + 16*zeta + 16)*q^163 + (18*zeta^2 - 18*zeta - 36)*q^164 
- 36*zeta*q^166 + (-24*zeta^2 + 12*zeta + 48)*q^167 + (12*zeta^2 + 12*zeta - 
24)*q^169 + (27*zeta^2 - 54)*q^170 + (24*zeta^2 - 48)*q^172 + (-3*zeta^2 - 
3*zeta + 6)*q^173 + (-32*zeta^2 + 16*zeta + 64)*q^175 + (-9*zeta^2 + 9*zeta + 
18)*q^178 + (12*zeta^2 - 24*zeta - 24)*q^179 + (10*zeta^2 - 20*zeta - 20)*q^181 
+ (-12*zeta^2 + 12*zeta + 24)*q^182 + (-6*zeta^2 + 3*zeta + 12)*q^185 + 
(36*zeta^2 - 72)*q^188 + (-36*zeta^2 + 72)*q^190 + (12*zeta^2 + 12*zeta - 
24)*q^191 + (-26*zeta^2 + 13*zeta + 52)*q^193 - 6*zeta*q^194 + (-27*zeta^2 + 
27*zeta + 54)*q^196 + (-3*zeta^2 + 6*zeta + 6)*q^197 + (4*zeta^2 - 8*zeta - 
8)*q^199 + (-12*zeta^2 + 12*zeta + 24)*q^200 - 18*zeta*q^202 + (72*zeta^2 - 
36*zeta - 144)*q^203 + (18*zeta^2 + 18*zeta - 36)*q^205 + (-12*zeta^2 + 
24)*q^206 + (-3*zeta^2 + 6)*q^208 + (16*zeta^2 - 8*zeta - 32)*q^211 - 
18*zeta*q^212 + (36*zeta^2 - 36*zeta - 72)*q^214 + (-24*zeta^2 + 48*zeta + 
48)*q^215 + (-16*zeta^2 + 32*zeta + 32)*q^217 + (-33*zeta^2 + 33*zeta + 
66)*q^218 + (-6*zeta^2 + 3*zeta + 12)*q^221 + (-8*zeta^2 - 8*zeta + 16)*q^223 + 
(-12*zeta^2 + 24)*q^224 + (45*zeta^2 - 90)*q^226 + (-12*zeta^2 - 12*zeta + 
24)*q^227 + (46*zeta^2 - 23*zeta - 92)*q^229 + (27*zeta^2 - 27*zeta - 54)*q^232 
+ (21*zeta^2 - 42*zeta - 42)*q^233 + (-36*zeta^2 + 72*zeta + 72)*q^235 + 
36*zeta*q^238 + (-24*zeta^2 + 12*zeta + 48)*q^239 + (13*zeta^2 + 13*zeta - 
26)*q^241 + (-33*zeta^2 + 66)*q^242 + (-3*zeta^2 + 6)*q^244 + (-27*zeta^2 - 
27*zeta + 54)*q^245 + (8*zeta^2 - 4*zeta - 16)*q^247 + 12*zeta*q^248 + (9*zeta^2
- 9*zeta - 18)*q^250 + (-24*zeta^2 + 48*zeta + 48)*q^251 + (48*zeta^2 - 48*zeta 
- 96)*q^254 - 3*zeta*q^256 + (30*zeta^2 - 15*zeta - 60)*q^257 + (-4*zeta^2 - 
4*zeta + 8)*q^259 + (-9*zeta^2 + 18)*q^260 + (36*zeta^2 - 72)*q^262 + (12*zeta^2
+ 12*zeta - 24)*q^263 + (36*zeta^2 - 18*zeta - 72)*q^265 - 48*zeta*q^266 + 
(12*zeta^2 - 12*zeta - 24)*q^268 + (21*zeta^2 - 42*zeta - 42)*q^269 + (16*zeta^2
- 32*zeta - 32)*q^271 + (-9*zeta^2 + 9*zeta + 18)*q^272 + 27*zeta*q^274 + 
(10*zeta^2 + 10*zeta - 20)*q^277 + (60*zeta^2 - 120)*q^278 + (-36*zeta^2 + 
72)*q^280 + (-27*zeta^2 - 27*zeta + 54)*q^281 + (-8*zeta^2 + 4*zeta + 16)*q^283 
- 36*zeta*q^284 + (-24*zeta^2 + 48*zeta + 48)*q^287 + (8*zeta^2 - 16*zeta - 
16)*q^289 + (81*zeta^2 - 81*zeta - 162)*q^290 - 33*zeta*q^292 + (-18*zeta^2 + 
9*zeta + 36)*q^293 + (-3*zeta^2 + 6)*q^296 + (-27*zeta^2 + 54)*q^298 + 
(-64*zeta^2 + 32*zeta + 128)*q^301 - 24*zeta*q^302 + (12*zeta^2 - 12*zeta - 
24)*q^304 + (3*zeta^2 - 6*zeta - 6)*q^305 + (-20*zeta^2 + 40*zeta + 40)*q^307 + 
36*zeta*q^310 + (-48*zeta^2 + 24*zeta + 96)*q^311 + (-23*zeta^2 - 23*zeta + 
46)*q^313 + (-39*zeta^2 + 78)*q^314 + (-48*zeta^2 + 96)*q^316 + (21*zeta^2 + 
21*zeta - 42)*q^317 - 9*zeta*q^320 + (12*zeta^2 - 24*zeta - 24)*q^323 + 
(4*zeta^2 - 8*zeta - 8)*q^325 + (-24*zeta^2 + 24*zeta + 48)*q^326 + 
18*zeta*q^328 + (-96*zeta^2 + 48*zeta + 192)*q^329 + (-20*zeta^2 - 20*zeta + 
40)*q^331 + (36*zeta^2 - 72)*q^332 + (-36*zeta^2 + 72)*q^334 + (12*zeta^2 + 
12*zeta - 24)*q^335 + (4*zeta^2 - 2*zeta - 8)*q^337 + 36*zeta*q^338 + 
(-27*zeta^2 + 27*zeta + 54)*q^340 + (8*zeta^2 - 16*zeta - 16)*q^343 + 
(-24*zeta^2 + 24*zeta + 48)*q^344 - 9*zeta*q^346 + (-24*zeta^2 + 12*zeta + 
48)*q^347 + (-14*zeta^2 - 14*zeta + 28)*q^349 + (-48*zeta^2 + 96)*q^350 + 
(-18*zeta^2 - 18*zeta + 36)*q^353 + (72*zeta^2 - 36*zeta - 144)*q^355 - 
9*zeta*q^356 + (36*zeta^2 - 36*zeta - 72)*q^358 + (3*zeta^2 - 6*zeta - 6)*q^361 
+ (30*zeta^2 - 30*zeta - 60)*q^362 - 12*zeta*q^364 + (66*zeta^2 - 33*zeta - 
132)*q^365 + (-8*zeta^2 - 8*zeta + 16)*q^367 + (-9*zeta^2 + 18)*q^370 + 
(24*zeta^2 + 24*zeta - 48)*q^371 + (-20*zeta^2 + 10*zeta + 40)*q^373 + 
(-36*zeta^2 + 36*zeta + 72)*q^376 + (-9*zeta^2 + 18*zeta + 18)*q^377 + 
(28*zeta^2 - 56*zeta - 56)*q^379 + (36*zeta^2 - 36*zeta - 72)*q^380 + 
36*zeta*q^382 + (24*zeta^2 - 12*zeta - 48)*q^383 + (-39*zeta^2 + 78)*q^386 + 
(6*zeta^2 - 12)*q^388 + (-6*zeta^2 - 6*zeta + 12)*q^389 - 27*zeta*q^392 + 
(-9*zeta^2 + 9*zeta + 18)*q^394 + (48*zeta^2 - 96*zeta - 96)*q^395 + (25*zeta^2 
- 50*zeta - 50)*q^397 + (12*zeta^2 - 12*zeta - 24)*q^398 - 12*zeta*q^400 + 
(6*zeta^2 - 3*zeta - 12)*q^401 + (-4*zeta^2 - 4*zeta + 8)*q^403 + (18*zeta^2 - 
36)*q^404 + (108*zeta^2 - 216)*q^406 + (-50*zeta^2 + 25*zeta + 100)*q^409 + 
54*zeta*q^410 + (12*zeta^2 - 12*zeta - 24)*q^412 + (-36*zeta^2 + 72*zeta + 
72)*q^415 + (3*zeta^2 - 3*zeta - 6)*q^416 + (48*zeta^2 - 24*zeta - 96)*q^419 + 
(13*zeta^2 + 13*zeta - 26)*q^421 + (24*zeta^2 - 48)*q^422 + (18*zeta^2 - 
36)*q^424 + (-12*zeta^2 - 12*zeta + 24)*q^425 + (8*zeta^2 - 4*zeta - 16)*q^427 +
36*zeta*q^428 + (-72*zeta^2 + 72*zeta + 144)*q^430 + (-12*zeta^2 + 24*zeta + 
24)*q^431 + (-11*zeta^2 + 22*zeta + 22)*q^433 + (-48*zeta^2 + 48*zeta + 
96)*q^434 - 33*zeta*q^436 + (28*zeta^2 + 28*zeta - 56)*q^439 + (-9*zeta^2 + 
18)*q^442 + (-12*zeta^2 - 12*zeta + 24)*q^443 + (18*zeta^2 - 9*zeta - 36)*q^445 
- 24*zeta*q^446 + (12*zeta^2 - 12*zeta - 24)*q^448 + (-18*zeta^2 + 36*zeta + 
36)*q^449 + (-45*zeta^2 + 45*zeta + 90)*q^452 - 36*zeta*q^454 + (24*zeta^2 - 
12*zeta - 48)*q^455 + (zeta^2 + zeta - 2)*q^457 + (69*zeta^2 - 138)*q^458 + 
(18*zeta^2 + 18*zeta - 36)*q^461 + (16*zeta^2 - 8*zeta - 32)*q^463 + 
27*zeta*q^464 + (63*zeta^2 - 63*zeta - 126)*q^466 + (-24*zeta^2 + 48*zeta + 
48)*q^467 + (-16*zeta^2 + 32*zeta + 32)*q^469 + (-108*zeta^2 + 108*zeta + 
216)*q^470 + (16*zeta^2 + 16*zeta - 32)*q^475 + (-36*zeta^2 + 72)*q^476 + 
(-36*zeta^2 + 72)*q^478 + (-12*zeta^2 - 12*zeta + 24)*q^479 + (2*zeta^2 - zeta -
4)*q^481 + 39*zeta*q^482 + (33*zeta^2 - 33*zeta - 66)*q^484 + (-6*zeta^2 + 
12*zeta + 12)*q^485 + (4*zeta^2 - 8*zeta - 8)*q^487 + (3*zeta^2 - 3*zeta - 
6)*q^488 - 81*zeta*q^490 + (27*zeta^2 + 27*zeta - 54)*q^493 + (12*zeta^2 - 
24)*q^494 + (-12*zeta^2 + 24)*q^496 + (48*zeta^2 + 48*zeta - 96)*q^497 + 
(-80*zeta^2 + 40*zeta + 160)*q^499 + 9*zeta*q^500 + (-72*zeta^2 + 72*zeta + 
144)*q^502 + (-18*zeta^2 + 36*zeta + 36)*q^505 + 48*zeta*q^508 + (60*zeta^2 - 
30*zeta - 120)*q^509 + (44*zeta^2 + 44*zeta - 88)*q^511 + (3*zeta^2 - 6)*q^512 +
(45*zeta^2 - 90)*q^514 + (12*zeta^2 + 12*zeta - 24)*q^515 - 12*zeta*q^518 + 
(9*zeta^2 - 9*zeta - 18)*q^520 + (6*zeta^2 - 12*zeta - 12)*q^521 + O(q^522), q -
3*q^5 - q^7 - 3*q^11 - q^13 - 6*q^17 - 4*q^19 + 3*q^23 + 4*q^25 - 3*q^29 + 
5*q^31 + 3*q^35 + 2*q^37 - 3*q^41 - q^43 + 9*q^47 - 6*q^49 + 6*q^53 + 9*q^55 + 
3*q^59 - 13*q^61 + 3*q^65 - 7*q^67 + 12*q^71 - 10*q^73 + 3*q^77 + 11*q^79 + 
9*q^83 + 18*q^85 - 6*q^89 + q^91 + 12*q^95 + 11*q^97 - 15*q^101 - 7*q^103 - 
12*q^107 + 2*q^109 + 9*q^113 - 9*q^115 + 6*q^119 - 2*q^121 + 3*q^125 - 16*q^127 
- 21*q^131 + 4*q^133 - 3*q^137 + 5*q^139 + 3*q^143 + 9*q^145 - 15*q^149 - 
13*q^151 - 15*q^155 - 13*q^157 - 3*q^161 + 20*q^163 - 9*q^167 - 12*q^169 + 
9*q^173 - 4*q^175 - 12*q^179 + 2*q^181 - 6*q^185 + 18*q^187 - 15*q^191 + 
11*q^193 - 6*q^197 - 4*q^199 + 3*q^203 + 9*q^205 + 12*q^209 + 17*q^211 + 3*q^215
- 5*q^217 + 6*q^221 - q^223 - 27*q^227 - 13*q^229 + 6*q^233 - 27*q^235 + 
27*q^239 - q^241 + 18*q^245 + 4*q^247 - 12*q^251 - 9*q^253 + 9*q^257 - 2*q^259 +
21*q^263 - 18*q^265 + 6*q^269 + 8*q^271 - 12*q^275 - q^277 - 3*q^281 + 5*q^283 +
3*q^287 + 19*q^289 + 21*q^293 - 9*q^295 - 3*q^299 + q^301 + 39*q^305 + 20*q^307 
- 21*q^311 - q^313 + 21*q^317 + 9*q^319 + 24*q^323 - 4*q^325 - 9*q^329 + 
11*q^331 + 21*q^335 + 23*q^337 - 15*q^341 + 13*q^343 - 9*q^347 - q^349 - 3*q^353
- 36*q^355 - 3*q^361 + 30*q^365 - 13*q^367 - 6*q^371 - q^373 + 3*q^377 - 
16*q^379 + 15*q^383 - 9*q^385 - 15*q^389 - 18*q^391 - 33*q^395 + 2*q^397 - 
3*q^401 - 5*q^403 - 6*q^407 + 23*q^409 - 3*q^413 - 27*q^415 - 9*q^419 + 35*q^421
- 24*q^425 + 13*q^427 - 24*q^431 - 34*q^433 - 12*q^437 + 35*q^439 + 9*q^443 + 
18*q^445 + 18*q^449 + 9*q^451 - 3*q^455 - 37*q^457 - 3*q^461 - 19*q^463 - 
12*q^467 + 7*q^469 + 3*q^473 - 16*q^475 - 27*q^479 - 2*q^481 - 33*q^485 + 
32*q^487 + 3*q^491 + 18*q^493 - 12*q^497 + 5*q^499 + 36*q^503 + 45*q^505 - 
39*q^509 + 10*q^511 + 21*q^515 - 27*q^517 - 42*q^521 + O(q^522)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 5);
              X_18C6 := Curve(P_Q, [ PolynomialRing(RationalField(), 6) |
x[1]^2 - 7*x[2]^2 + 78/7*x[2]*x[3] + 24/7*x[2]*x[4] + 4*x[2]*x[5] + 
12/7*x[2]*x[6] - 3/28*x[3]^2 + 186/7*x[3]*x[4] - 31/14*x[3]*x[5] - 
22/7*x[3]*x[6] + 300/7*x[4]^2 - 22/7*x[4]*x[5] + 120/7*x[4]*x[6] - 17/84*x[5]^2 
+ 34/7*x[5]*x[6] + 88/7*x[6]^2,
x[1]*x[2] + 7/2*x[2]^2 - 57/14*x[2]*x[3] - 12/7*x[2]*x[4] - 3/2*x[2]*x[5] - 
6/7*x[2]*x[6] + 17/56*x[3]^2 - 72/7*x[3]*x[4] + 31/28*x[3]*x[5] + 4/7*x[3]*x[6] 
- 150/7*x[4]^2 + 4/7*x[4]*x[5] - 60/7*x[4]*x[6] + 1/56*x[5]^2 - 10/7*x[5]*x[6] -
44/7*x[6]^2,
x[1]*x[3] - x[2]^2 + 45/14*x[2]*x[3] - 6/7*x[2]*x[4] + 1/2*x[2]*x[5] + 
4/7*x[2]*x[6] - 2/7*x[3]^2 + 34/7*x[3]*x[4] - 5/21*x[3]*x[5] - 12/7*x[3]*x[6] + 
72/7*x[4]^2 + 2/7*x[4]*x[5] + 12/7*x[4]*x[6] - 2/21*x[5]^2 + 20/21*x[5]*x[6] + 
20/7*x[6]^2,
x[1]*x[4] - 1/2*x[2]^2 + 5/14*x[2]*x[3] + 4/7*x[2]*x[4] + 1/6*x[2]*x[5] + 
2/7*x[2]*x[6] - 17/168*x[3]^2 + 10/7*x[3]*x[4] - 17/84*x[3]*x[5] + 1/7*x[3]*x[6]
+ 22/7*x[4]^2 + 1/7*x[4]*x[5] + 20/7*x[4]*x[6] + 25/504*x[5]^2 + 1/7*x[5]*x[6] +
16/21*x[6]^2,
x[1]*x[5] - 45/14*x[2]*x[3] + 6/7*x[2]*x[4] - 1/2*x[2]*x[5] + 24/7*x[2]*x[6] - 
13/28*x[3]^2 - 48/7*x[3]*x[4] + 1/14*x[3]*x[5] + 12/7*x[3]*x[6] + 12/7*x[4]^2 + 
12/7*x[4]*x[5] - 12/7*x[4]*x[6] + 29/84*x[5]^2 - 16/7*x[5]*x[6] - 20/7*x[6]^2,
x[1]*x[6] - 2*x[2]^2 + 23/7*x[2]*x[3] + 6/7*x[2]*x[4] + x[2]*x[5] + 
10/7*x[2]*x[6] - 3/14*x[3]^2 + 50/7*x[3]*x[4] - 16/21*x[3]*x[5] - 9/7*x[3]*x[6] 
+ 96/7*x[4]^2 - 2/7*x[4]*x[5] + 30/7*x[4]*x[6] - 1/14*x[5]^2 + 22/21*x[5]*x[6] +
36/7*x[6]^2,
x[1]^3 - 90819/189635*x[2]*x[4]*x[5] - 3675144/189635*x[2]*x[4]*x[6] + 
767954/568905*x[2]*x[5]^2 + 3949958/568905*x[2]*x[5]*x[6] - 
1728762/189635*x[2]*x[6]^2 + 1114607/2275620*x[3]^3 + 2664177/189635*x[3]^2*x[4]
- 1653431/2275620*x[3]^2*x[5] + 224823/22310*x[3]^2*x[6] + 
1995166/189635*x[3]*x[4]^2 + 2020211/379270*x[3]*x[4]*x[5] + 
401342/8245*x[3]*x[4]*x[6] - 580657/6826860*x[3]*x[5]^2 + 
2321029/189635*x[3]*x[5]*x[6] - 10010561/568905*x[3]*x[6]^2 - 
18998676/189635*x[4]^3 - 3535992/189635*x[4]^2*x[5] - 8559744/189635*x[4]^2*x[6]
+ 284941/1137810*x[4]*x[5]^2 + 6403266/189635*x[4]*x[5]*x[6] - 
11846764/189635*x[4]*x[6]^2 + 6353813/6826860*x[5]^3 + 323825/227562*x[5]^2*x[6]
- 470093/189635*x[5]*x[6]^2 - 6952216/189635*x[6]^3,
x[1]^2*x[2] - 44656/189635*x[2]*x[4]*x[5] + 454984/189635*x[2]*x[4]*x[6] - 
338879/568905*x[2]*x[5]^2 - 480561/189635*x[2]*x[5]*x[6] + 
496732/189635*x[2]*x[6]^2 + 309953/2275620*x[3]^3 - 635157/189635*x[3]^2*x[4] + 
164127/758540*x[3]^2*x[5] - 102187/33465*x[3]^2*x[6] - 992831/189635*x[3]*x[4]^2
- 626108/189635*x[3]*x[4]*x[5] - 123087/8245*x[3]*x[4]*x[6] - 
5743/6826860*x[3]*x[5]^2 - 3028139/1137810*x[3]*x[5]*x[6] + 
1168021/568905*x[3]*x[6]^2 + 5480676/189635*x[4]^3 + 1279847/189635*x[4]^2*x[5] 
+ 3712994/189635*x[4]^2*x[6] + 224137/568905*x[4]*x[5]^2 - 
1420041/189635*x[4]*x[5]*x[6] + 3270764/189635*x[4]*x[6]^2 - 
1610203/6826860*x[5]^3 - 534605/682686*x[5]^2*x[6] + 302419/568905*x[5]*x[6]^2 +
7231028/568905*x[6]^3,
x[1]^2*x[3] + 50718/189635*x[2]*x[4]*x[5] - 1086332/189635*x[2]*x[4]*x[6] - 
18816/189635*x[2]*x[5]^2 - 1110101/568905*x[2]*x[5]*x[6] + 
1115544/189635*x[2]*x[6]^2 + 863777/758540*x[3]^3 + 383411/189635*x[3]^2*x[4] + 
1915147/2275620*x[3]^2*x[5] - 22429/33465*x[3]^2*x[6] - 
1655997/189635*x[3]*x[4]^2 - 899641/189635*x[3]*x[4]*x[5] - 
16019/8245*x[3]*x[4]*x[6] + 295553/2275620*x[3]*x[5]^2 + 
3403067/1137810*x[3]*x[5]*x[6] - 2096021/189635*x[3]*x[6]^2 + 
1091292/189635*x[4]^3 - 50831/189635*x[4]^2*x[5] + 5542838/189635*x[4]^2*x[6] - 
29012/189635*x[4]*x[5]^2 + 1028303/189635*x[4]*x[5]*x[6] - 
358852/189635*x[4]*x[6]^2 + 474919/6826860*x[5]^3 + 17581/682686*x[5]^2*x[6] - 
581979/189635*x[5]*x[6]^2 + 1760396/568905*x[6]^3,
x[1]^2*x[4] + 124958/568905*x[2]*x[4]*x[5] - 227864/189635*x[2]*x[4]*x[6] + 
137312/1706715*x[2]*x[5]^2 + 37483/568905*x[2]*x[5]*x[6] - 
31612/189635*x[2]*x[6]^2 - 154403/2275620*x[3]^3 + 17462/189635*x[3]^2*x[4] + 
104027/6826860*x[3]^2*x[5] + 6397/33465*x[3]^2*x[6] + 357711/189635*x[3]*x[4]^2 
+ 446329/568905*x[3]*x[4]*x[5] + 3577/8245*x[3]*x[4]*x[6] + 
35833/6826860*x[3]*x[5]^2 + 22199/1137810*x[3]*x[5]*x[6] + 
84393/189635*x[3]*x[6]^2 - 719316/189635*x[4]^3 - 897521/568905*x[4]^2*x[5] - 
368074/189635*x[4]^2*x[6] - 113042/568905*x[4]*x[5]^2 + 
156771/189635*x[4]*x[5]*x[6] - 514724/189635*x[4]*x[6]^2 + 
203039/20480580*x[5]^3 + 111917/682686*x[5]^2*x[6] - 324497/1706715*x[5]*x[6]^2 
- 226636/189635*x[6]^3,
x[1]^2*x[5] - 3026/2231*x[2]*x[4]*x[5] + 33348/2231*x[2]*x[4]*x[6] + 
3844/6693*x[2]*x[5]^2 - 5657/2231*x[2]*x[5]*x[6] + 16032/2231*x[2]*x[6]^2 - 
8585/8924*x[3]^3 - 12915/2231*x[3]^2*x[4] + 10117/26772*x[3]^2*x[5] - 
901/2231*x[3]^2*x[6] - 795/2231*x[3]*x[4]^2 + 8623/2231*x[3]*x[4]*x[5] - 
1953/97*x[3]*x[4]*x[6] + 11579/26772*x[3]*x[5]^2 - 8665/4462*x[3]*x[5]*x[6] + 
16081/2231*x[3]*x[6]^2 + 55620/2231*x[4]^3 + 7487/2231*x[4]^2*x[5] - 
38214/2231*x[4]^2*x[6] - 6930/2231*x[4]*x[5]^2 - 30979/2231*x[4]*x[5]*x[6] - 
20076/2231*x[4]*x[6]^2 - 15659/80316*x[5]^3 + 16541/13386*x[5]^2*x[6] - 
40051/6693*x[5]*x[6]^2 - 2020/2231*x[6]^3,
x[1]^2*x[6] - 59388/189635*x[2]*x[4]*x[5] - 590888/189635*x[2]*x[4]*x[6] + 
48056/189635*x[2]*x[5]^2 + 273106/568905*x[2]*x[5]*x[6] + 
55416/189635*x[2]*x[6]^2 + 99149/379270*x[3]^3 + 348779/189635*x[3]^2*x[4] + 
162769/1137810*x[3]^2*x[5] + 51929/33465*x[3]^2*x[6] - 59388/189635*x[3]*x[4]^2 
- 13174/189635*x[3]*x[4]*x[5] + 33954/8245*x[3]*x[4]*x[6] + 
33687/379270*x[3]*x[5]^2 + 512053/189635*x[3]*x[5]*x[6] - 
862234/189635*x[3]*x[6]^2 - 2159232/189635*x[4]^3 - 413524/189635*x[4]^2*x[5] - 
402208/189635*x[4]^2*x[6] - 200519/568905*x[4]*x[5]^2 + 
881562/189635*x[4]*x[5]*x[6] - 2204408/189635*x[4]*x[6]^2 + 60377/379270*x[5]^3 
+ 132845/341343*x[5]^2*x[6] - 372486/189635*x[5]*x[6]^2 - 4044856/568905*x[6]^3,
x[1]*x[2]^2 + 3455/37927*x[2]*x[4]*x[5] + 27070/37927*x[2]*x[4]*x[6] + 
18182/37927*x[2]*x[5]^2 + 194018/113781*x[2]*x[5]*x[6] - 80534/37927*x[2]*x[6]^2
- 63857/455124*x[3]^3 + 50571/37927*x[3]^2*x[4] - 35461/227562*x[3]^2*x[5] + 
16999/13386*x[3]^2*x[6] + 117236/37927*x[3]*x[4]^2 + 188575/75854*x[3]*x[4]*x[5]
+ 16577/1649*x[3]*x[4]*x[6] - 105923/1365372*x[3]*x[5]^2 + 
107357/113781*x[3]*x[5]*x[6] + 23627/113781*x[3]*x[6]^2 - 491760/37927*x[4]^3 - 
99538/37927*x[4]^2*x[5] - 154600/37927*x[4]^2*x[6] - 6401/75854*x[4]*x[5]^2 + 
192189/37927*x[4]*x[5]*x[6] - 182492/37927*x[4]*x[6]^2 + 43045/341343*x[5]^3 + 
404645/682686*x[5]^2*x[6] + 433/113781*x[5]*x[6]^2 - 712672/113781*x[6]^3,
x[1]*x[2]*x[3] + 808/1649*x[2]*x[4]*x[5] - 1406/1649*x[2]*x[4]*x[6] + 
1000/4947*x[2]*x[5]^2 + 16451/9894*x[2]*x[5]*x[6] - 8898/1649*x[2]*x[6]^2 - 
5609/13192*x[3]^3 + 4453/3298*x[3]^2*x[4] - 16991/39576*x[3]^2*x[5] + 
278/291*x[3]^2*x[6] + 19755/3298*x[3]*x[4]^2 + 4341/1649*x[3]*x[4]*x[5] + 
24619/3298*x[3]*x[4]*x[6] - 3649/39576*x[3]*x[5]^2 - 713/19788*x[3]*x[5]*x[6] + 
9541/3298*x[3]*x[6]^2 - 30054/1649*x[4]^3 - 13707/3298*x[4]^2*x[5] - 
30817/1649*x[4]^2*x[6] + 783/3298*x[4]*x[5]^2 + 10439/3298*x[4]*x[5]*x[6] - 
4222/1649*x[4]*x[6]^2 + 7345/118728*x[5]^3 + 6535/59364*x[5]^2*x[6] + 
16441/9894*x[5]*x[6]^2 - 29482/4947*x[6]^3,
x[1]*x[2]*x[4] + 60119/568905*x[2]*x[4]*x[5] + 516778/189635*x[2]*x[4]*x[6] - 
84634/1706715*x[2]*x[5]^2 - 241406/568905*x[2]*x[5]*x[6] + 
124124/189635*x[2]*x[6]^2 + 65524/568905*x[3]^3 - 131384/189635*x[3]^2*x[4] + 
456133/3413430*x[3]^2*x[5] - 35563/66930*x[3]^2*x[6] - 422442/189635*x[3]*x[4]^2
- 463523/568905*x[3]*x[4]*x[5] - 24459/8245*x[3]*x[4]*x[6] + 
8791/1706715*x[3]*x[5]^2 - 176864/568905*x[3]*x[5]*x[6] - 
22476/189635*x[3]*x[6]^2 + 1361052/189635*x[4]^3 + 589882/568905*x[4]^2*x[5] + 
627908/189635*x[4]^2*x[6] + 26459/568905*x[4]*x[5]^2 - 
327327/189635*x[4]*x[5]*x[6] + 418648/189635*x[4]*x[6]^2 - 
427589/10240290*x[5]^3 - 48211/682686*x[5]^2*x[6] - 119156/1706715*x[5]*x[6]^2 +
328872/189635*x[6]^3,
x[1]*x[2]*x[5] + 272212/189635*x[2]*x[4]*x[5] - 582918/189635*x[2]*x[4]*x[6] - 
147812/568905*x[2]*x[5]^2 - 707221/379270*x[2]*x[5]*x[6] + 
796746/189635*x[2]*x[6]^2 + 1199621/1517080*x[3]^3 - 574497/379270*x[3]^2*x[4] +
3030071/4551240*x[3]^2*x[5] - 31232/11155*x[3]^2*x[6] - 
1920831/379270*x[3]*x[4]^2 - 665879/189635*x[3]*x[4]*x[5] - 
152397/16490*x[3]*x[4]*x[6] - 421691/4551240*x[3]*x[5]^2 - 
824353/758540*x[3]*x[5]*x[6] - 656833/379270*x[3]*x[6]^2 + 3705318/189635*x[4]^3
+ 675007/379270*x[4]^2*x[5] + 6421797/189635*x[4]^2*x[6] + 
50489/379270*x[4]*x[5]^2 + 434689/379270*x[4]*x[5]*x[6] + 
3354582/189635*x[4]*x[6]^2 - 866593/13653720*x[5]^3 - 24757/455124*x[5]^2*x[6] -
777701/1137810*x[5]*x[6]^2 + 1915958/189635*x[6]^3,
x[1]*x[2]*x[6] + 70266/189635*x[2]*x[4]*x[5] - 33134/189635*x[2]*x[4]*x[6] - 
23062/189635*x[2]*x[5]^2 + 14833/568905*x[2]*x[5]*x[6] + 
47088/189635*x[2]*x[6]^2 - 9311/758540*x[3]^3 - 2951/379270*x[3]^2*x[4] - 
126061/2275620*x[3]^2*x[5] - 19858/33465*x[3]^2*x[6] + 70266/189635*x[3]*x[4]^2 
- 23842/189635*x[3]*x[4]*x[5] + 8562/8245*x[3]*x[4]*x[6] - 
34653/758540*x[3]*x[5]^2 - 159921/189635*x[3]*x[5]*x[6] + 
199668/189635*x[3]*x[6]^2 + 256584/189635*x[4]^3 - 28942/189635*x[4]^2*x[5] + 
633596/189635*x[4]^2*x[6] + 361841/1137810*x[4]*x[5]^2 - 
38534/189635*x[4]*x[5]*x[6] + 1098616/189635*x[4]*x[6]^2 - 33973/758540*x[5]^3 -
37201/341343*x[5]^2*x[6] + 209772/189635*x[5]*x[6]^2 + 1158272/568905*x[6]^3,
x[1]*x[3]^2 + 133843/189635*x[2]*x[4]*x[5] - 1691412/189635*x[2]*x[4]*x[6] + 
200962/568905*x[2]*x[5]^2 + 387523/189635*x[2]*x[5]*x[6] - 
1028426/189635*x[2]*x[6]^2 - 150109/379270*x[3]^3 + 656606/189635*x[3]^2*x[4] - 
102922/568905*x[3]^2*x[5] + 44469/22310*x[3]^2*x[6] + 2030193/189635*x[3]*x[4]^2
+ 1378153/379270*x[3]*x[4]*x[5] + 127671/8245*x[3]*x[4]*x[6] - 
51011/1137810*x[3]*x[5]^2 + 756699/379270*x[3]*x[5]*x[6] - 
810076/189635*x[3]*x[6]^2 - 6547848/189635*x[4]^3 - 1418711/189635*x[4]^2*x[5] -
2306442/189635*x[4]^2*x[6] + 372193/1137810*x[4]*x[5]^2 + 
2323613/189635*x[4]*x[5]*x[6] - 1937072/189635*x[4]*x[6]^2 + 
318776/1706715*x[5]^3 + 12950/37927*x[5]^2*x[6] + 658108/568905*x[5]*x[6]^2 - 
1824468/189635*x[6]^3,
x[1]*x[3]*x[4] - 107098/568905*x[2]*x[4]*x[5] + 195654/189635*x[2]*x[4]*x[6] - 
105412/1706715*x[2]*x[5]^2 - 577831/1137810*x[2]*x[5]*x[6] + 
274382/189635*x[2]*x[6]^2 + 250091/4551240*x[3]^3 - 119109/379270*x[3]^2*x[4] + 
844681/13653720*x[3]^2*x[5] - 10412/33465*x[3]^2*x[6] - 
766727/379270*x[3]*x[4]^2 - 101023/189635*x[3]*x[4]*x[5] - 
18569/16490*x[3]*x[4]*x[6] + 829199/13653720*x[3]*x[5]^2 - 
351383/2275620*x[3]*x[5]*x[6] - 46501/379270*x[3]*x[6]^2 + 1167846/189635*x[4]^3
+ 1632677/1137810*x[4]^2*x[5] + 852629/189635*x[4]^2*x[6] - 
16517/379270*x[4]*x[5]^2 - 1821121/1137810*x[4]*x[5]*x[6] + 
248974/189635*x[4]*x[6]^2 - 1185083/40961160*x[5]^3 - 28931/1365372*x[5]^2*x[6] 
- 1550851/3413430*x[5]*x[6]^2 + 335446/189635*x[6]^3,
x[1]*x[3]*x[5] - 136841/189635*x[2]*x[4]*x[5] + 1307424/189635*x[2]*x[4]*x[6] - 
284804/568905*x[2]*x[5]^2 - 649296/189635*x[2]*x[5]*x[6] + 
1793442/189635*x[2]*x[6]^2 + 149881/758540*x[3]^3 - 1061217/189635*x[3]^2*x[4] +
995941/2275620*x[3]^2*x[5] - 73723/22310*x[3]^2*x[6] - 
1085016/189635*x[3]*x[4]^2 - 1266471/379270*x[3]*x[4]*x[5] - 
195912/8245*x[3]*x[4]*x[6] + 622849/2275620*x[3]*x[5]^2 - 
509514/189635*x[3]*x[5]*x[6] + 579277/189635*x[3]*x[6]^2 + 7239996/189635*x[4]^3
+ 1589642/189635*x[4]^2*x[5] + 4725324/189635*x[4]^2*x[6] - 
61947/379270*x[4]*x[5]^2 - 1704496/189635*x[4]*x[5]*x[6] + 
2461764/189635*x[4]*x[6]^2 - 1216103/6826860*x[5]^3 - 8455/227562*x[5]^2*x[6] - 
2144311/568905*x[5]*x[6]^2 + 1954976/189635*x[6]^3,
x[1]*x[3]*x[6] + 7080/37927*x[2]*x[4]*x[5] - 139048/37927*x[2]*x[4]*x[6] + 
1582/37927*x[2]*x[5]^2 - 29110/113781*x[2]*x[5]*x[6] + 30148/37927*x[2]*x[6]^2 +
6275/37927*x[3]^3 + 47371/37927*x[3]^2*x[4] + 8621/227562*x[3]^2*x[5] - 
815/6693*x[3]^2*x[6] + 7080/37927*x[3]*x[4]^2 - 6959/37927*x[3]*x[4]*x[5] + 
2894/1649*x[3]*x[4]*x[6] + 429/37927*x[3]*x[5]^2 + 115162/113781*x[3]*x[5]*x[6] 
- 81670/37927*x[3]*x[6]^2 - 239736/37927*x[4]^3 - 62804/37927*x[4]^2*x[5] + 
239968/37927*x[4]^2*x[6] + 11720/113781*x[4]*x[5]^2 + 
181092/37927*x[4]*x[5]*x[6] - 91624/37927*x[4]*x[6]^2 + 4581/75854*x[5]^3 + 
58712/341343*x[5]^2*x[6] - 110314/113781*x[5]*x[6]^2 - 181760/113781*x[6]^3,
x[1]*x[4]^2 - 33457/568905*x[2]*x[4]*x[5] - 37834/189635*x[2]*x[4]*x[6] + 
13534/568905*x[2]*x[5]^2 + 26921/189635*x[2]*x[5]*x[6] - 
73152/189635*x[2]*x[6]^2 - 17431/758540*x[3]^3 - 26179/568905*x[3]^2*x[4] - 
13397/758540*x[3]^2*x[5] + 7289/66930*x[3]^2*x[6] + 115271/189635*x[3]*x[4]^2 + 
227453/1137810*x[3]*x[4]*x[5] + 3567/8245*x[3]*x[4]*x[6] - 
98317/6826860*x[3]*x[5]^2 + 18443/379270*x[3]*x[5]*x[6] + 
41969/568905*x[3]*x[6]^2 - 182876/189635*x[4]^3 - 1432/189635*x[4]^2*x[5] + 
16646/189635*x[4]^2*x[6] + 124723/3413430*x[4]*x[5]^2 + 
76681/189635*x[4]*x[5]*x[6] - 290552/568905*x[4]*x[6]^2 + 20891/2275620*x[5]^3 +
7571/341343*x[5]^2*x[6] + 54031/568905*x[5]*x[6]^2 - 335668/568905*x[6]^3,
x[1]*x[4]*x[5] + 1542/189635*x[2]*x[4]*x[5] - 41598/189635*x[2]*x[4]*x[6] + 
34268/568905*x[2]*x[5]^2 + 340759/379270*x[2]*x[5]*x[6] - 
335034/189635*x[2]*x[6]^2 - 241699/1517080*x[3]^3 + 332343/379270*x[3]^2*x[4] - 
1107929/4551240*x[3]^2*x[5] + 9473/11155*x[3]^2*x[6] + 571989/379270*x[3]*x[4]^2
+ 217336/189635*x[3]*x[4]*x[5] + 69423/16490*x[3]*x[4]*x[6] - 
225191/4551240*x[3]*x[5]^2 + 408127/758540*x[3]*x[5]*x[6] - 
12433/379270*x[3]*x[6]^2 - 1437642/189635*x[4]^3 - 261733/379270*x[4]^2*x[5] - 
1635423/189635*x[4]^2*x[6] + 101769/379270*x[4]*x[5]^2 + 
886149/379270*x[4]*x[5]*x[6] - 853578/189635*x[4]*x[6]^2 + 
994507/13653720*x[5]^3 + 5407/455124*x[5]^2*x[6] + 582179/1137810*x[5]*x[6]^2 - 
547602/189635*x[6]^3,
x[1]*x[4]*x[6] - 3222/37927*x[2]*x[4]*x[5] + 23166/37927*x[2]*x[4]*x[6] + 
630/37927*x[2]*x[5]^2 - 1859/113781*x[2]*x[5]*x[6] + 2608/37927*x[2]*x[6]^2 - 
2423/151708*x[3]^3 - 10267/75854*x[3]^2*x[4] + 2503/455124*x[3]^2*x[5] + 
248/6693*x[3]^2*x[6] - 3222/37927*x[3]*x[4]^2 + 1592/37927*x[3]*x[4]*x[5] - 
336/1649*x[3]*x[4]*x[6] + 1019/151708*x[3]*x[5]^2 + 31/75854*x[3]*x[5]*x[6] + 
4061/37927*x[3]*x[6]^2 + 17304/37927*x[4]^3 + 7882/37927*x[4]^2*x[5] - 
27952/37927*x[4]^2*x[6] - 15167/227562*x[4]*x[5]^2 - 8101/37927*x[4]*x[5]*x[6] +
30640/37927*x[4]*x[6]^2 + 541/455124*x[5]^3 + 28973/682686*x[5]^2*x[6] - 
10031/113781*x[5]*x[6]^2 - 22708/113781*x[6]^3,
x[1]*x[5]^2 - 29037/37927*x[2]*x[4]*x[5] - 357588/37927*x[2]*x[4]*x[6] + 
19450/37927*x[2]*x[5]^2 + 384621/37927*x[2]*x[5]*x[6] - 633474/37927*x[2]*x[6]^2
- 25173/37927*x[3]^3 + 358344/37927*x[3]^2*x[4] - 133511/75854*x[3]^2*x[5] + 
28701/4462*x[3]^2*x[6] + 426087/37927*x[3]*x[4]^2 + 224121/75854*x[3]*x[4]*x[5] 
+ 68229/1649*x[3]*x[4]*x[6] - 7336/37927*x[3]*x[5]^2 + 
301965/75854*x[3]*x[5]*x[6] - 152154/37927*x[3]*x[6]^2 - 2601072/37927*x[4]^3 - 
215997/37927*x[4]^2*x[5] - 2056158/37927*x[4]^2*x[6] + 198303/75854*x[4]*x[5]^2 
+ 406095/37927*x[4]*x[5]*x[6] - 1072008/37927*x[4]*x[6]^2 + 116413/227562*x[5]^3
- 51211/37927*x[5]^2*x[6] + 190354/37927*x[5]*x[6]^2 - 784332/37927*x[6]^3,
x[1]*x[5]*x[6] - 756/1649*x[2]*x[4]*x[5] + 7536/1649*x[2]*x[4]*x[6] - 
18/1649*x[2]*x[5]^2 + 2/1649*x[2]*x[5]*x[6] + 4260/1649*x[2]*x[6]^2 - 
837/3298*x[3]^3 - 3222/1649*x[3]^2*x[4] - 57/1649*x[3]^2*x[5] - 
31/97*x[3]^2*x[6] - 756/1649*x[3]*x[4]^2 + 567/1649*x[3]*x[4]*x[5] - 
11652/1649*x[3]*x[4]*x[6] + 9/3298*x[3]*x[5]^2 - 1673/1649*x[3]*x[5]*x[6] + 
3606/1649*x[3]*x[6]^2 + 15336/1649*x[4]^3 + 4392/1649*x[4]^2*x[5] - 
5232/1649*x[4]^2*x[6] - 501/1649*x[4]*x[5]^2 - 8202/1649*x[4]*x[5]*x[6] - 
2760/1649*x[4]*x[6]^2 - 123/1649*x[5]^3 - 83/4947*x[5]^2*x[6] - 
674/1649*x[5]*x[6]^2 + 656/1649*x[6]^3,
x[1]*x[6]^2 - 14208/189635*x[2]*x[4]*x[5] - 214398/189635*x[2]*x[4]*x[6] + 
13796/189635*x[2]*x[5]^2 - 4098/189635*x[2]*x[5]*x[6] + 
198946/189635*x[2]*x[6]^2 + 15692/189635*x[3]^3 + 111414/189635*x[3]^2*x[4] + 
7959/189635*x[3]^2*x[5] + 5691/22310*x[3]^2*x[6] - 14208/189635*x[3]*x[4]^2 - 
5834/189635*x[3]*x[4]*x[5] + 6054/8245*x[3]*x[4]*x[6] + 4796/189635*x[3]*x[5]^2 
+ 128328/189635*x[3]*x[5]*x[6] - 322729/189635*x[3]*x[6]^2 - 
672912/189635*x[4]^3 - 134184/189635*x[4]^2*x[5] + 193152/189635*x[4]^2*x[6] - 
17268/189635*x[4]*x[5]^2 + 408242/189635*x[4]*x[5]*x[6] - 
746178/189635*x[4]*x[6]^2 + 27223/568905*x[5]^3 + 24823/227562*x[5]^2*x[6] - 
182226/189635*x[5]*x[6]^2 - 110692/189635*x[6]^3,
x[2]^3 + 5688/37927*x[2]*x[4]*x[5] - 464238/37927*x[2]*x[4]*x[6] - 
74741/113781*x[2]*x[5]^2 - 165697/227562*x[2]*x[5]*x[6] + 
114474/37927*x[2]*x[6]^2 - 71285/455124*x[3]^3 + 147210/37927*x[3]^2*x[4] - 
195325/455124*x[3]^2*x[5] + 2164/2231*x[3]^2*x[6] + 504427/75854*x[3]*x[4]^2 - 
86716/37927*x[3]*x[4]*x[5] + 14885/3298*x[3]*x[4]*x[6] + 
494659/1365372*x[3]*x[5]^2 + 139945/151708*x[3]*x[5]*x[6] - 
602597/227562*x[3]*x[6]^2 - 662382/37927*x[4]^3 - 212379/75854*x[4]^2*x[5] + 
227115/37927*x[4]^2*x[6] - 14369/113781*x[4]*x[5]^2 + 27543/75854*x[4]*x[5]*x[6]
- 192662/37927*x[4]*x[6]^2 + 40147/1365372*x[5]^3 - 110645/151708*x[5]^2*x[6] - 
103953/75854*x[5]*x[6]^2 + 168602/37927*x[6]^3,
x[2]^2*x[3] - 22238/37927*x[2]*x[4]*x[5] + 98444/37927*x[2]*x[4]*x[6] - 
18314/113781*x[2]*x[5]^2 - 86095/113781*x[2]*x[5]*x[6] + 
113112/37927*x[2]*x[6]^2 + 8950/37927*x[3]^3 - 97289/37927*x[3]^2*x[4] + 
57709/151708*x[3]^2*x[5] - 7571/6693*x[3]^2*x[6] - 287727/37927*x[3]*x[4]^2 - 
48457/37927*x[3]*x[4]*x[5] - 14077/1649*x[3]*x[4]*x[6] - 1345/75854*x[3]*x[5]^2 
- 161519/227562*x[3]*x[5]*x[6] - 23859/37927*x[3]*x[6]^2 + 577380/37927*x[4]^3 +
159895/37927*x[4]^2*x[5] + 253114/37927*x[4]^2*x[6] - 8128/37927*x[4]*x[5]^2 - 
191847/37927*x[4]*x[5]*x[6] + 106852/37927*x[4]*x[6]^2 - 12771/151708*x[5]^3 - 
99821/682686*x[5]^2*x[6] - 31471/113781*x[5]*x[6]^2 + 539188/113781*x[6]^3,
x[2]^2*x[4] - 102472/568905*x[2]*x[4]*x[5] - 604484/189635*x[2]*x[4]*x[6] - 
2608/1706715*x[2]*x[5]^2 + 222223/568905*x[2]*x[5]*x[6] - 
60652/189635*x[2]*x[6]^2 - 237503/2275620*x[3]^3 + 995373/758540*x[3]^2*x[4] - 
1239553/6826860*x[3]^2*x[5] + 18007/33465*x[3]^2*x[6] + 
281901/189635*x[3]*x[4]^2 + 887513/1137810*x[3]*x[4]*x[5] + 
25427/8245*x[3]*x[4]*x[6] + 76813/6826860*x[3]*x[5]^2 + 
436499/1137810*x[3]*x[5]*x[6] - 29467/189635*x[3]*x[6]^2 - 2545416/189635*x[4]^3
- 714071/568905*x[4]^2*x[5] - 782794/189635*x[4]^2*x[6] - 
19131/758540*x[4]*x[5]^2 + 392401/189635*x[4]*x[5]*x[6] - 
604604/189635*x[4]*x[6]^2 + 899219/20480580*x[5]^3 - 6355/682686*x[5]^2*x[6] + 
97843/1706715*x[5]*x[6]^2 - 212156/189635*x[6]^3,
x[2]^2*x[5] - 12262/8245*x[2]*x[4]*x[5] - 20892/8245*x[2]*x[4]*x[6] + 
302/24735*x[2]*x[5]^2 + 22403/8245*x[2]*x[5]*x[6] - 59736/8245*x[2]*x[6]^2 - 
15373/32980*x[3]^3 + 31761/8245*x[3]^2*x[4] - 28319/49470*x[3]^2*x[5] + 
1517/485*x[3]^2*x[6] + 45453/8245*x[3]*x[4]^2 + 13319/8245*x[3]*x[4]*x[5] + 
145233/8245*x[3]*x[4]*x[6] + 24433/98940*x[3]*x[5]^2 + 
21339/16490*x[3]*x[5]*x[6] - 7891/8245*x[3]*x[6]^2 - 250668/8245*x[4]^3 - 
76781/8245*x[4]^2*x[5] - 241542/8245*x[4]^2*x[6] + 3718/8245*x[4]*x[5]^2 + 
14173/8245*x[4]*x[5]*x[6] - 126012/8245*x[4]*x[6]^2 + 6191/74205*x[5]^3 - 
535/9894*x[5]^2*x[6] + 30913/24735*x[5]*x[6]^2 - 85508/8245*x[6]^3,
x[2]^2*x[6] - 10308/37927*x[2]*x[4]*x[5] + 34280/37927*x[2]*x[4]*x[6] + 
1168/37927*x[2]*x[5]^2 - 28972/113781*x[2]*x[5]*x[6] - 23580/37927*x[2]*x[6]^2 -
6701/75854*x[3]^3 - 26735/37927*x[3]^2*x[4] + 755/227562*x[3]^2*x[5] + 
8263/26772*x[3]^2*x[6] - 10308/37927*x[3]*x[4]^2 + 6082/37927*x[3]*x[4]*x[5] - 
5460/1649*x[3]*x[4]*x[6] + 1065/75854*x[3]*x[5]^2 + 12459/75854*x[3]*x[5]*x[6] +
1268/37927*x[3]*x[6]^2 + 112992/37927*x[4]^3 + 38212/37927*x[4]^2*x[5] - 
335492/37927*x[4]^2*x[6] - 22849/113781*x[4]*x[5]^2 - 83408/37927*x[4]*x[5]*x[6]
- 155104/37927*x[4]*x[6]^2 - 1077/75854*x[5]^3 - 129403/1365372*x[5]^2*x[6] - 
1704/37927*x[5]*x[6]^2 - 136496/113781*x[6]^3,
x[2]*x[3]^2 - 9388/37927*x[2]*x[4]*x[5] + 131064/37927*x[2]*x[4]*x[6] - 
23521/113781*x[2]*x[5]^2 - 43774/37927*x[2]*x[5]*x[6] + 127760/37927*x[2]*x[6]^2
+ 5286/37927*x[3]^3 - 21008/37927*x[3]^2*x[4] + 15937/113781*x[3]^2*x[5] - 
3898/2231*x[3]^2*x[6] - 85242/37927*x[3]*x[4]^2 - 70462/37927*x[3]*x[4]*x[5] - 
14214/1649*x[3]*x[4]*x[6] - 376/37927*x[3]*x[5]^2 - 20531/37927*x[3]*x[5]*x[6] +
82366/37927*x[3]*x[6]^2 + 657816/37927*x[4]^3 + 137618/37927*x[4]^2*x[5] + 
316236/37927*x[4]^2*x[6] - 22826/113781*x[4]*x[5]^2 - 
197442/37927*x[4]*x[5]*x[6] + 199832/37927*x[4]*x[6]^2 - 27881/341343*x[5]^3 - 
20365/113781*x[5]^2*x[6] - 102586/113781*x[5]*x[6]^2 + 192904/37927*x[6]^3,
x[2]*x[3]*x[4] + 107903/568905*x[2]*x[4]*x[5] - 268564/189635*x[2]*x[4]*x[6] + 
10652/1706715*x[2]*x[5]^2 + 49481/189635*x[2]*x[5]*x[6] - 
72212/189635*x[2]*x[6]^2 - 123263/2275620*x[3]^3 + 226749/379270*x[3]^2*x[4] - 
642853/6826860*x[3]^2*x[5] + 9722/33465*x[3]^2*x[6] + 541661/189635*x[3]*x[4]^2 
+ 53413/189635*x[3]*x[4]*x[5] + 9617/8245*x[3]*x[4]*x[6] - 
35387/6826860*x[3]*x[5]^2 + 228419/1137810*x[3]*x[5]*x[6] - 
13147/189635*x[3]*x[6]^2 - 667596/189635*x[4]^3 - 473351/568905*x[4]^2*x[5] - 
295914/189635*x[4]^2*x[6] - 23129/1137810*x[4]*x[5]^2 + 
877153/568905*x[4]*x[5]*x[6] - 107524/189635*x[4]*x[6]^2 + 
502439/20480580*x[5]^3 - 5165/682686*x[5]^2*x[6] + 187603/1706715*x[5]*x[6]^2 - 
431108/568905*x[6]^3,
x[2]*x[3]*x[5] - 95738/189635*x[2]*x[4]*x[5] - 556248/189635*x[2]*x[4]*x[6] + 
179263/568905*x[2]*x[5]^2 + 396022/189635*x[2]*x[5]*x[6] - 
985404/189635*x[2]*x[6]^2 - 39158/189635*x[3]^3 + 557424/189635*x[3]^2*x[4] - 
458701/1137810*x[3]^2*x[5] + 22323/11155*x[3]^2*x[6] + 662802/189635*x[3]*x[4]^2
+ 578871/189635*x[3]*x[4]*x[5] + 106134/8245*x[3]*x[4]*x[6] - 
46877/568905*x[3]*x[5]^2 + 133723/189635*x[3]*x[5]*x[6] - 
236684/189635*x[3]*x[6]^2 - 4046112/189635*x[4]^3 - 437134/189635*x[4]^2*x[5] - 
3198468/189635*x[4]^2*x[6] + 53097/189635*x[4]*x[5]^2 + 
732842/189635*x[4]*x[5]*x[6] - 1667568/189635*x[4]*x[6]^2 + 
176633/3413430*x[5]^3 + 11038/37927*x[5]^2*x[6] + 1394012/568905*x[5]*x[6]^2 - 
1220072/189635*x[6]^3,
x[2]*x[3]*x[6] - 1176/8245*x[2]*x[4]*x[5] + 9524/8245*x[2]*x[4]*x[6] - 
28/8245*x[2]*x[5]^2 + 3857/24735*x[2]*x[5]*x[6] - 2168/8245*x[2]*x[6]^2 - 
651/8245*x[3]^3 - 5012/8245*x[3]^2*x[4] - 266/24735*x[3]^2*x[5] + 
131/2910*x[3]^2*x[6] - 1176/8245*x[3]*x[4]^2 + 882/8245*x[3]*x[4]*x[5] - 
536/8245*x[3]*x[4]*x[6] + 7/8245*x[3]*x[5]^2 - 8357/24735*x[3]*x[5]*x[6] + 
1212/8245*x[3]*x[6]^2 + 23856/8245*x[4]^3 + 6832/8245*x[4]^2*x[5] - 
12536/8245*x[4]^2*x[6] - 2338/24735*x[4]*x[5]^2 - 17156/8245*x[4]*x[5]*x[6] + 
104/8245*x[4]*x[6]^2 - 574/24735*x[5]^3 - 3343/29682*x[5]^2*x[6] + 
14444/24735*x[5]*x[6]^2 + 25048/24735*x[6]^3,
x[2]*x[4]^2 + 67378/568905*x[2]*x[4]*x[5] - 200044/189635*x[2]*x[4]*x[6] - 
79993/1706715*x[2]*x[5]^2 - 39667/568905*x[2]*x[5]*x[6] + 
120078/189635*x[2]*x[6]^2 - 39263/2275620*x[3]^3 + 385706/568905*x[3]^2*x[4] - 
471823/6826860*x[3]^2*x[5] + 3302/33465*x[3]^2*x[6] + 360977/379270*x[3]*x[4]^2 
- 37457/189635*x[3]*x[4]*x[5] + 12057/8245*x[3]*x[4]*x[6] + 
261383/6826860*x[3]*x[5]^2 + 142349/1137810*x[3]*x[5]*x[6] - 
126146/568905*x[3]*x[6]^2 - 446966/189635*x[4]^3 - 358447/1137810*x[4]^2*x[5] + 
419046/189635*x[4]^2*x[6] + 23039/1706715*x[4]*x[5]^2 + 
221483/568905*x[4]*x[5]*x[6] - 118472/568905*x[4]*x[6]^2 + 
143759/20480580*x[5]^3 - 28831/682686*x[5]^2*x[6] - 315302/1706715*x[5]*x[6]^2 +
99984/189635*x[6]^3
]);
