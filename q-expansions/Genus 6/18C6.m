
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
              fs_18C6 := [Kq | 1/2*(-zeta^2 + 2)*q + 1/2*(zeta^2 - zeta - 2)*q^2
+ 1/2*(-2*zeta^2 + zeta + 4)*q^4 + 1/2*(2*zeta^2 - zeta - 4)*q^5 + (zeta^2 - 
zeta - 2)*q^7 + 1/2*(5*zeta^2 - 10)*q^8 + 1/2*(zeta^2 - 2*zeta - 2)*q^10 + 
(-zeta^2 - zeta + 2)*q^11 - 1/2*zeta*q^13 + zeta*q^14 + 1/2*(3*zeta^2 + 3*zeta -
6)*q^16 + 1/2*(3*zeta^2 - 6*zeta - 6)*q^17 + (-zeta^2 + 2)*q^19 + 1/2*(3*zeta^2 
- 3*zeta - 6)*q^20 + (-2*zeta^2 + zeta + 4)*q^22 + (-2*zeta^2 + zeta + 4)*q^23 +
(-zeta^2 + zeta + 2)*q^25 + 1/2*(zeta^2 - 2)*q^26 + (zeta^2 - 2*zeta - 2)*q^28 +
1/2*(zeta^2 + zeta - 2)*q^29 + 4*zeta*q^31 + 1/2*zeta*q^32 + 1/2*(-3*zeta^2 - 
3*zeta + 6)*q^34 + (-zeta^2 + 2*zeta + 2)*q^35 + 1/2*(7*zeta^2 - 14)*q^37 + 
(zeta^2 - zeta - 2)*q^38 + 1/2*(10*zeta^2 - 5*zeta - 20)*q^40 + (4*zeta^2 - 
2*zeta - 8)*q^41 + (zeta^2 - zeta - 2)*q^43 + (-3*zeta^2 + 6)*q^44 + (-zeta^2 + 
2*zeta + 2)*q^46 + (2*zeta^2 + 2*zeta - 4)*q^47 - 3/2*zeta*q^49 - zeta*q^50 + 
1/2*(-zeta^2 - zeta + 2)*q^52 + (-3*zeta^2 + 6)*q^55 + (-5*zeta^2 + 5*zeta + 
10)*q^56 + 1/2*(2*zeta^2 - zeta - 4)*q^58 + (-8*zeta^2 + 4*zeta + 16)*q^59 + 
1/2*(-7*zeta^2 + 7*zeta + 14)*q^61 + (-4*zeta^2 + 8)*q^62 + 1/2*(-7*zeta^2 + 
14*zeta + 14)*q^64 + 1/2*(zeta^2 + zeta - 2)*q^65 - 5*zeta*q^67 - 9/2*zeta*q^68 
+ (zeta^2 + zeta - 2)*q^70 + (-3*zeta^2 + 6*zeta + 6)*q^71 + 1/2*(7*zeta^2 - 
14)*q^73 + 1/2*(-7*zeta^2 + 7*zeta + 14)*q^74 + (-2*zeta^2 + zeta + 4)*q^76 + 
(4*zeta^2 - 2*zeta - 8)*q^77 + (zeta^2 - zeta - 2)*q^79 + 1/2*(-9*zeta^2 + 
18)*q^80 + (2*zeta^2 - 4*zeta - 4)*q^82 + (-4*zeta^2 - 4*zeta + 8)*q^83 - 
9/2*zeta*q^85 + zeta*q^86 + (-5*zeta^2 - 5*zeta + 10)*q^88 + 1/2*(-3*zeta^2 + 
6*zeta + 6)*q^89 + (zeta^2 - 2)*q^91 + (-3*zeta^2 + 3*zeta + 6)*q^92 + (4*zeta^2
- 2*zeta - 8)*q^94 + (2*zeta^2 - zeta - 4)*q^95 + (zeta^2 - zeta - 2)*q^97 + 
1/2*(3*zeta^2 - 6)*q^98 + (-zeta^2 + 2*zeta + 2)*q^100 + (2*zeta^2 + 2*zeta - 
4)*q^101 + 4*zeta*q^103 + 5/2*zeta*q^104 + 1/2*(-11*zeta^2 + 22)*q^109 + 
(3*zeta^2 - 3*zeta - 6)*q^110 + (-6*zeta^2 + 3*zeta + 12)*q^112 + 1/2*(2*zeta^2 
- zeta - 4)*q^113 + (-3*zeta^2 + 3*zeta + 6)*q^115 + 1/2*(3*zeta^2 - 6)*q^116 + 
(-4*zeta^2 + 8*zeta + 8)*q^118 + (3*zeta^2 + 3*zeta - 6)*q^119 + 1/2*zeta*q^121 
- 7/2*zeta*q^122 + (4*zeta^2 + 4*zeta - 8)*q^124 + 1/2*(7*zeta^2 - 14*zeta - 
14)*q^125 + (-zeta^2 + 2)*q^127 + 1/2*(19*zeta^2 - 19*zeta - 38)*q^128 + 
1/2*(2*zeta^2 - zeta - 4)*q^130 + (-2*zeta^2 + zeta + 4)*q^131 + (2*zeta^2 - 
2*zeta - 4)*q^133 + (5*zeta^2 - 10)*q^134 + 1/2*(15*zeta^2 - 30*zeta - 30)*q^136
+ 1/2*(zeta^2 + zeta - 2)*q^137 + 4*zeta*q^139 + 3*zeta*q^140 + (3*zeta^2 + 
3*zeta - 6)*q^142 + (zeta^2 - 2*zeta - 2)*q^143 + 1/2*(3*zeta^2 - 6)*q^145 + 
1/2*(-7*zeta^2 + 7*zeta + 14)*q^146 + 1/2*(14*zeta^2 - 7*zeta - 28)*q^148 + 
1/2*(-10*zeta^2 + 5*zeta + 20)*q^149 + (10*zeta^2 - 10*zeta - 20)*q^151 + 
(5*zeta^2 - 10)*q^152 + (2*zeta^2 - 4*zeta - 4)*q^154 + (-4*zeta^2 - 4*zeta + 
8)*q^155 + 17/2*zeta*q^157 + zeta*q^158 + 1/2*(zeta^2 + zeta - 2)*q^160 + 
(2*zeta^2 - 4*zeta - 4)*q^161 + (8*zeta^2 - 16)*q^163 + (6*zeta^2 - 6*zeta - 
12)*q^164 + (-8*zeta^2 + 4*zeta + 16)*q^166 + (10*zeta^2 - 5*zeta - 20)*q^167 + 
(-6*zeta^2 + 6*zeta + 12)*q^169 + 1/2*(9*zeta^2 - 18)*q^170 + (zeta^2 - 2*zeta -
2)*q^172 + 1/2*(-11*zeta^2 - 11*zeta + 22)*q^173 - 2*zeta*q^175 + 9*zeta*q^176 +
1/2*(3*zeta^2 + 3*zeta - 6)*q^178 + (6*zeta^2 - 12*zeta - 12)*q^179 + (-zeta^2 +
2)*q^181 + (-zeta^2 + zeta + 2)*q^182 + (-10*zeta^2 + 5*zeta + 20)*q^184 + 
1/2*(-14*zeta^2 + 7*zeta + 28)*q^185 + (-9*zeta^2 + 9*zeta + 18)*q^187 + 
(6*zeta^2 - 12)*q^188 + (zeta^2 - 2*zeta - 2)*q^190 + (5*zeta^2 + 5*zeta - 
10)*q^191 - 1/2*zeta*q^193 + zeta*q^194 + 1/2*(-3*zeta^2 - 3*zeta + 6)*q^196 + 
1/2*(-3*zeta^2 + 6*zeta + 6)*q^197 + (-10*zeta^2 + 20)*q^199 + (5*zeta^2 - 
5*zeta - 10)*q^200 + (4*zeta^2 - 2*zeta - 8)*q^202 + (-2*zeta^2 + zeta + 
4)*q^203 + (6*zeta^2 - 6*zeta - 12)*q^205 + (-4*zeta^2 + 8)*q^206 + 
1/2*(-3*zeta^2 + 6*zeta + 6)*q^208 + (-2*zeta^2 - 2*zeta + 4)*q^209 - 
5*zeta*q^211 + (-zeta^2 + 2*zeta + 2)*q^215 + (-8*zeta^2 + 16)*q^217 + 
1/2*(11*zeta^2 - 11*zeta - 22)*q^218 + (-6*zeta^2 + 3*zeta + 12)*q^220 + 
1/2*(6*zeta^2 - 3*zeta - 12)*q^221 + (zeta^2 - zeta - 2)*q^223 + (-zeta^2 + 
2)*q^224 + 1/2*(zeta^2 - 2*zeta - 2)*q^226 + (-zeta^2 - zeta + 2)*q^227 - 
1/2*zeta*q^229 - 3*zeta*q^230 + 1/2*(5*zeta^2 + 5*zeta - 10)*q^232 + 
1/2*(-15*zeta^2 + 30*zeta + 30)*q^233 + (6*zeta^2 - 12)*q^235 + (-12*zeta^2 + 
12*zeta + 24)*q^236 + (6*zeta^2 - 3*zeta - 12)*q^238 + (16*zeta^2 - 8*zeta - 
32)*q^239 + 1/2*(29*zeta^2 - 29*zeta - 58)*q^241 + 1/2*(-zeta^2 + 2)*q^242 + 
1/2*(-7*zeta^2 + 14*zeta + 14)*q^244 + 1/2*(3*zeta^2 + 3*zeta - 6)*q^245 - 
zeta*q^247 - 20*zeta*q^248 + 1/2*(-7*zeta^2 - 7*zeta + 14)*q^250 + (3*zeta^2 - 
6*zeta - 6)*q^251 + (6*zeta^2 - 12)*q^253 + (zeta^2 - zeta - 2)*q^254 + 
1/2*(10*zeta^2 - 5*zeta - 20)*q^256 + 1/2*(-10*zeta^2 + 5*zeta + 20)*q^257 + 
(-7*zeta^2 + 7*zeta + 14)*q^259 + 1/2*(3*zeta^2 - 6)*q^260 + (-zeta^2 + 2*zeta +
2)*q^262 + (2*zeta^2 + 2*zeta - 4)*q^263 + 2*zeta*q^266 + (-5*zeta^2 - 5*zeta + 
10)*q^268 + 1/2*(-9*zeta^2 + 18*zeta + 18)*q^269 + (-zeta^2 + 2)*q^271 + 
1/2*(-27*zeta^2 + 27*zeta + 54)*q^272 + 1/2*(2*zeta^2 - zeta - 4)*q^274 + 
(-4*zeta^2 + 2*zeta + 8)*q^275 + (zeta^2 - zeta - 2)*q^277 + (-4*zeta^2 + 
8)*q^278 + (-5*zeta^2 + 10*zeta + 10)*q^280 + 1/2*(7*zeta^2 + 7*zeta - 14)*q^281
- 14*zeta*q^283 + 9*zeta*q^284 + (-zeta^2 - zeta + 2)*q^286 + (-4*zeta^2 + 
8*zeta + 8)*q^287 + (-5*zeta^2 + 10)*q^289 + 1/2*(-3*zeta^2 + 3*zeta + 6)*q^290 
+ 1/2*(14*zeta^2 - 7*zeta - 28)*q^292 + 1/2*(-22*zeta^2 + 11*zeta + 44)*q^293 + 
(-12*zeta^2 + 12*zeta + 24)*q^295 + 1/2*(-35*zeta^2 + 70)*q^296 + 1/2*(-5*zeta^2
+ 10*zeta + 10)*q^298 + (-zeta^2 - zeta + 2)*q^299 + 2*zeta*q^301 + 
10*zeta*q^302 + (3*zeta^2 + 3*zeta - 6)*q^304 + 1/2*(7*zeta^2 - 14*zeta - 
14)*q^305 + (8*zeta^2 - 16)*q^307 + (6*zeta^2 - 6*zeta - 12)*q^308 + (-8*zeta^2 
+ 4*zeta + 16)*q^310 + (4*zeta^2 - 2*zeta - 8)*q^311 + 1/2*(-25*zeta^2 + 25*zeta
+ 50)*q^313 + 1/2*(-17*zeta^2 + 34)*q^314 + (zeta^2 - 2*zeta - 2)*q^316 + 
1/2*(-5*zeta^2 - 5*zeta + 10)*q^317 - 3*zeta*q^319 - 21/2*zeta*q^320 + 
(-2*zeta^2 - 2*zeta + 4)*q^322 + (3*zeta^2 - 6*zeta - 6)*q^323 + (-zeta^2 + 
2)*q^325 + (-8*zeta^2 + 8*zeta + 16)*q^326 + (20*zeta^2 - 10*zeta - 40)*q^328 + 
(-8*zeta^2 + 4*zeta + 16)*q^329 + (zeta^2 - zeta - 2)*q^331 + (-12*zeta^2 + 
24)*q^332 + (5*zeta^2 - 10*zeta - 10)*q^334 + (5*zeta^2 + 5*zeta - 10)*q^335 + 
13*zeta*q^337 - 6*zeta*q^338 + 1/2*(-9*zeta^2 - 9*zeta + 18)*q^340 + (-8*zeta^2 
+ 16*zeta + 16)*q^341 + (10*zeta^2 - 20)*q^343 + (-5*zeta^2 + 5*zeta + 10)*q^344
+ 1/2*(-22*zeta^2 + 11*zeta + 44)*q^346 + (-2*zeta^2 + zeta + 4)*q^347 + (zeta^2
- zeta - 2)*q^349 + (2*zeta^2 - 4)*q^350 + (zeta^2 - 2*zeta - 2)*q^352 + 
(-4*zeta^2 - 4*zeta + 8)*q^353 + 9*zeta*q^355 + 9/2*zeta*q^356 + (-6*zeta^2 - 
6*zeta + 12)*q^358 + (3*zeta^2 - 6*zeta - 6)*q^359 + 1/2*(15*zeta^2 - 30)*q^361 
+ (zeta^2 - zeta - 2)*q^362 + (2*zeta^2 - zeta - 4)*q^364 + 1/2*(-14*zeta^2 + 
7*zeta + 28)*q^365 + (10*zeta^2 - 10*zeta - 20)*q^367 + (9*zeta^2 - 18)*q^368 + 
1/2*(-7*zeta^2 + 14*zeta + 14)*q^370 - 5*zeta*q^373 - 9*zeta*q^374 + (10*zeta^2 
+ 10*zeta - 20)*q^376 + 1/2*(-zeta^2 + 2*zeta + 2)*q^377 + (8*zeta^2 - 16)*q^379
+ (3*zeta^2 - 3*zeta - 6)*q^380 + (10*zeta^2 - 5*zeta - 20)*q^382 + (10*zeta^2 -
5*zeta - 20)*q^383 + (6*zeta^2 - 6*zeta - 12)*q^385 + 1/2*(zeta^2 - 2)*q^386 + 
(zeta^2 - 2*zeta - 2)*q^388 + (8*zeta^2 + 8*zeta - 16)*q^389 + 9*zeta*q^391 + 
15/2*zeta*q^392 + 1/2*(3*zeta^2 + 3*zeta - 6)*q^394 + (-zeta^2 + 2*zeta + 
2)*q^395 + 1/2*(-29*zeta^2 + 58)*q^397 + (10*zeta^2 - 10*zeta - 20)*q^398 + 
(6*zeta^2 - 3*zeta - 12)*q^400 + 1/2*(14*zeta^2 - 7*zeta - 28)*q^401 + 
(-4*zeta^2 + 4*zeta + 8)*q^403 + (6*zeta^2 - 12)*q^404 + (-zeta^2 + 2*zeta + 
2)*q^406 + (7*zeta^2 + 7*zeta - 14)*q^407 - 19/2*zeta*q^409 + 6*zeta*q^410 + 
(4*zeta^2 + 4*zeta - 8)*q^412 + (8*zeta^2 - 16*zeta - 16)*q^413 + (-12*zeta^2 + 
24)*q^415 + 1/2*(-zeta^2 + zeta + 2)*q^416 + (-4*zeta^2 + 2*zeta + 8)*q^418 + 
(4*zeta^2 - 2*zeta - 8)*q^419 + 1/2*(-25*zeta^2 + 25*zeta + 50)*q^421 + 
(5*zeta^2 - 10)*q^422 + (-3*zeta^2 - 3*zeta + 6)*q^425 - 7*zeta*q^427 + (zeta^2 
+ zeta - 2)*q^430 + 1/2*(-11*zeta^2 + 22)*q^433 + (8*zeta^2 - 8*zeta - 16)*q^434
+ 1/2*(-22*zeta^2 + 11*zeta + 44)*q^436 + (-4*zeta^2 + 2*zeta + 8)*q^437 + 
(10*zeta^2 - 10*zeta - 20)*q^439 + (15*zeta^2 - 30)*q^440 + 1/2*(3*zeta^2 - 
6*zeta - 6)*q^442 + (-10*zeta^2 - 10*zeta + 20)*q^443 + 9/2*zeta*q^445 + 
zeta*q^446 + (-7*zeta^2 - 7*zeta + 14)*q^448 + (6*zeta^2 - 12*zeta - 12)*q^449 +
(-12*zeta^2 + 24)*q^451 + 1/2*(3*zeta^2 - 3*zeta - 6)*q^452 + (-2*zeta^2 + zeta 
+ 4)*q^454 + (-2*zeta^2 + zeta + 4)*q^455 + 1/2*(29*zeta^2 - 29*zeta - 58)*q^457
+ 1/2*(zeta^2 - 2)*q^458 + (-3*zeta^2 + 6*zeta + 6)*q^460 + (-4*zeta^2 - 4*zeta 
+ 8)*q^461 + 4*zeta*q^463 - 9/2*zeta*q^464 + 1/2*(15*zeta^2 + 15*zeta - 
30)*q^466 + (-6*zeta^2 + 12*zeta + 12)*q^467 + (10*zeta^2 - 20)*q^469 + 
(-6*zeta^2 + 6*zeta + 12)*q^470 + (-40*zeta^2 + 20*zeta + 80)*q^472 + (4*zeta^2 
- 2*zeta - 8)*q^473 + (-2*zeta^2 + 2*zeta + 4)*q^475 + (9*zeta^2 - 18)*q^476 + 
(8*zeta^2 - 16*zeta - 16)*q^478 + (-7*zeta^2 - 7*zeta + 14)*q^479 + 
7/2*zeta*q^481 + 29/2*zeta*q^482 + 1/2*(zeta^2 + zeta - 2)*q^484 + (-zeta^2 + 
2*zeta + 2)*q^485 + (8*zeta^2 - 16)*q^487 + 1/2*(35*zeta^2 - 35*zeta - 70)*q^488
+ 1/2*(6*zeta^2 - 3*zeta - 12)*q^490 + (10*zeta^2 - 5*zeta - 20)*q^491 + 
1/2*(9*zeta^2 - 9*zeta - 18)*q^493 + (zeta^2 - 2)*q^494 + (12*zeta^2 - 24*zeta -
24)*q^496 + (-6*zeta^2 - 6*zeta + 12)*q^497 - 5*zeta*q^499 - 21/2*zeta*q^500 + 
(-3*zeta^2 - 3*zeta + 6)*q^502 + (6*zeta^2 - 12*zeta - 12)*q^503 + (6*zeta^2 - 
12)*q^505 + (-6*zeta^2 + 6*zeta + 12)*q^506 + (-2*zeta^2 + zeta + 4)*q^508 + 
(16*zeta^2 - 8*zeta - 32)*q^509 + (-7*zeta^2 + 7*zeta + 14)*q^511 + 
1/2*(23*zeta^2 - 46)*q^512 + 1/2*(-5*zeta^2 + 10*zeta + 10)*q^514 + (-4*zeta^2 -
4*zeta + 8)*q^515 - 12*zeta*q^517 - 7*zeta*q^518 + 1/2*(5*zeta^2 + 5*zeta - 
10)*q^520 + (-6*zeta^2 + 12*zeta + 12)*q^521 + (-19*zeta^2 + 38)*q^523 + 
(-3*zeta^2 + 3*zeta + 6)*q^524 + (4*zeta^2 - 2*zeta - 8)*q^526 + (-24*zeta^2 + 
12*zeta + 48)*q^527 + 1/2*(-11*zeta^2 + 11*zeta + 22)*q^529 + (2*zeta^2 - 4*zeta
- 4)*q^532 + (2*zeta^2 + 2*zeta - 4)*q^533 + 25*zeta*q^536 + 1/2*(9*zeta^2 + 
9*zeta - 18)*q^538 + (3*zeta^2 - 6*zeta - 6)*q^539 + 1/2*(-11*zeta^2 + 22)*q^541
+ (zeta^2 - zeta - 2)*q^542 + 1/2*(6*zeta^2 - 3*zeta - 12)*q^544 + 
1/2*(22*zeta^2 - 11*zeta - 44)*q^545 + (10*zeta^2 - 10*zeta - 20)*q^547 + 
1/2*(3*zeta^2 - 6)*q^548 + (-2*zeta^2 + 4*zeta + 4)*q^550 + (zeta^2 + zeta - 
2)*q^551 + 2*zeta*q^553 + zeta*q^554 + (4*zeta^2 + 4*zeta - 8)*q^556 + 
1/2*(21*zeta^2 - 42*zeta - 42)*q^557 + (zeta^2 - 2)*q^559 + (9*zeta^2 - 9*zeta -
18)*q^560 + 1/2*(14*zeta^2 - 7*zeta - 28)*q^562 + (-20*zeta^2 + 10*zeta + 
40)*q^563 + 1/2*(3*zeta^2 - 3*zeta - 6)*q^565 + (14*zeta^2 - 28)*q^566 + 
(-15*zeta^2 + 30*zeta + 30)*q^568 + 1/2*(19*zeta^2 + 19*zeta - 38)*q^569 + 
4*zeta*q^571 - 3*zeta*q^572 + (4*zeta^2 + 4*zeta - 8)*q^574 + (-2*zeta^2 + 
4*zeta + 4)*q^575 + 1/2*(-11*zeta^2 + 22)*q^577 + (5*zeta^2 - 5*zeta - 10)*q^578
+ 1/2*(6*zeta^2 - 3*zeta - 12)*q^580 + (16*zeta^2 - 8*zeta - 32)*q^581 + 
1/2*(-35*zeta^2 + 70)*q^584 + 1/2*(-11*zeta^2 + 22*zeta + 22)*q^586 + (11*zeta^2
+ 11*zeta - 22)*q^587 + 8*zeta*q^589 - 12*zeta*q^590 + 1/2*(-21*zeta^2 - 21*zeta
+ 42)*q^592 + 1/2*(9*zeta^2 - 18*zeta - 18)*q^593 + (9*zeta^2 - 18)*q^595 + 
1/2*(-15*zeta^2 + 15*zeta + 30)*q^596 + (-2*zeta^2 + zeta + 4)*q^598 + 
(-8*zeta^2 + 4*zeta + 16)*q^599 + 1/2*(-25*zeta^2 + 25*zeta + 50)*q^601 + 
(-2*zeta^2 + 4)*q^602 + (10*zeta^2 - 20*zeta - 20)*q^604 + 1/2*(-zeta^2 - zeta +
2)*q^605 + 13*zeta*q^607 + zeta*q^608 + 1/2*(-7*zeta^2 - 7*zeta + 14)*q^610 + 
(-2*zeta^2 + 4*zeta + 4)*q^611 + (17*zeta^2 - 34)*q^613 + (-8*zeta^2 + 8*zeta + 
16)*q^614 + (20*zeta^2 - 10*zeta - 40)*q^616 + 1/2*(14*zeta^2 - 7*zeta - 
28)*q^617 + (10*zeta^2 - 10*zeta - 20)*q^619 + (-12*zeta^2 + 24)*q^620 + 
(2*zeta^2 - 4*zeta - 4)*q^622 + (-3*zeta^2 - 3*zeta + 6)*q^623 - 11/2*zeta*q^625
- 25/2*zeta*q^626 + 1/2*(17*zeta^2 + 17*zeta - 34)*q^628 + 1/2*(-21*zeta^2 + 
42*zeta + 42)*q^629 + (-10*zeta^2 + 20)*q^631 + (-5*zeta^2 + 5*zeta + 10)*q^632 
+ 1/2*(-10*zeta^2 + 5*zeta + 20)*q^634 + (2*zeta^2 - zeta - 4)*q^635 + 
1/2*(3*zeta^2 - 3*zeta - 6)*q^637 + (3*zeta^2 - 6)*q^638 + 1/2*(19*zeta^2 - 
38*zeta - 38)*q^640 + 1/2*(13*zeta^2 + 13*zeta - 26)*q^641 + 4*zeta*q^643 - 
6*zeta*q^644 + (-3*zeta^2 - 3*zeta + 6)*q^646 + (-9*zeta^2 + 18*zeta + 18)*q^647
+ (24*zeta^2 - 48)*q^649 + (zeta^2 - zeta - 2)*q^650 + (16*zeta^2 - 8*zeta - 
32)*q^652 + (-8*zeta^2 + 4*zeta + 16)*q^653 + (-3*zeta^2 + 3*zeta + 6)*q^655 + 
(-18*zeta^2 + 36)*q^656 + (-4*zeta^2 + 8*zeta + 8)*q^658 + (-zeta^2 - zeta + 
2)*q^659 + 17/2*zeta*q^661 + zeta*q^662 + (-20*zeta^2 - 20*zeta + 40)*q^664 + 
(-2*zeta^2 + 4*zeta + 4)*q^665 + (-3*zeta^2 + 6)*q^667 + (15*zeta^2 - 15*zeta - 
30)*q^668 + (10*zeta^2 - 5*zeta - 20)*q^670 + (-14*zeta^2 + 7*zeta + 28)*q^671 +
1/2*(-25*zeta^2 + 25*zeta + 50)*q^673 + (-13*zeta^2 + 26)*q^674 + (-6*zeta^2 + 
12*zeta + 12)*q^676 + (-4*zeta^2 - 4*zeta + 8)*q^677 + 2*zeta*q^679 + 
45/2*zeta*q^680 + (8*zeta^2 + 8*zeta - 16)*q^682 + (-6*zeta^2 + 12*zeta + 
12)*q^683 + 1/2*(3*zeta^2 - 6)*q^685 + (-10*zeta^2 + 10*zeta + 20)*q^686 + 
(-6*zeta^2 + 3*zeta + 12)*q^688 + (zeta^2 - zeta - 2)*q^691 + 1/2*(-33*zeta^2 + 
66)*q^692 + (-zeta^2 + 2*zeta + 2)*q^694 + (-4*zeta^2 - 4*zeta + 8)*q^695 - 
18*zeta*q^697 + zeta*q^698 + (-2*zeta^2 - 2*zeta + 4)*q^700 + 1/2*(27*zeta^2 - 
54*zeta - 54)*q^701 + (7*zeta^2 - 14)*q^703 + (-21*zeta^2 + 21*zeta + 42)*q^704 
+ (-8*zeta^2 + 4*zeta + 16)*q^706 + (-8*zeta^2 + 4*zeta + 16)*q^707 + 
1/2*(-25*zeta^2 + 25*zeta + 50)*q^709 + (-9*zeta^2 + 18)*q^710 + 1/2*(-15*zeta^2
+ 30*zeta + 30)*q^712 + (8*zeta^2 + 8*zeta - 16)*q^713 - 3*zeta*q^715 - 
18*zeta*q^716 + (-3*zeta^2 - 3*zeta + 6)*q^718 + (-3*zeta^2 + 6*zeta + 6)*q^719 
+ (-8*zeta^2 + 16)*q^721 + 1/2*(-15*zeta^2 + 15*zeta + 30)*q^722 + (-2*zeta^2 + 
zeta + 4)*q^724 + (2*zeta^2 - zeta - 4)*q^725 + (-17*zeta^2 + 17*zeta + 
34)*q^727 + (-5*zeta^2 + 10)*q^728 + 1/2*(-7*zeta^2 + 14*zeta + 14)*q^730 + 
(3*zeta^2 + 3*zeta - 6)*q^731 - 23*zeta*q^733 + 10*zeta*q^734 + (-zeta^2 - zeta 
+ 2)*q^736 + (10*zeta^2 - 20*zeta - 20)*q^737 + (-10*zeta^2 + 20)*q^739 + 
1/2*(-21*zeta^2 + 21*zeta + 42)*q^740 + (4*zeta^2 - 2*zeta - 8)*q^743 + 
1/2*(-15*zeta^2 + 15*zeta + 30)*q^745 + (5*zeta^2 - 10)*q^746 + (-9*zeta^2 + 
18*zeta + 18)*q^748 - 5*zeta*q^751 - 18*zeta*q^752 + 1/2*(zeta^2 + zeta - 
2)*q^754 + (-10*zeta^2 + 20*zeta + 20)*q^755 + (-zeta^2 + 2)*q^757 + (-8*zeta^2 
+ 8*zeta + 16)*q^758 + (10*zeta^2 - 5*zeta - 20)*q^760 + 1/2*(-34*zeta^2 + 
17*zeta + 68)*q^761 + (11*zeta^2 - 11*zeta - 22)*q^763 + (15*zeta^2 - 30)*q^764 
+ (5*zeta^2 - 10*zeta - 10)*q^766 + (-4*zeta^2 - 4*zeta + 8)*q^767 - 
1/2*zeta*q^769 + 6*zeta*q^770 + 1/2*(-zeta^2 - zeta + 2)*q^772 + 1/2*(-15*zeta^2
+ 30*zeta + 30)*q^773 + (8*zeta^2 - 16)*q^775 + (-5*zeta^2 + 5*zeta + 10)*q^776 
+ (16*zeta^2 - 8*zeta - 32)*q^778 + (8*zeta^2 - 4*zeta - 16)*q^779 + (18*zeta^2 
- 18*zeta - 36)*q^781 + (-9*zeta^2 + 18)*q^782 + 1/2*(-9*zeta^2 + 18*zeta + 
18)*q^784 + 1/2*(-17*zeta^2 - 17*zeta + 34)*q^785 + 13*zeta*q^787 + 
9/2*zeta*q^788 + (zeta^2 + zeta - 2)*q^790 + (-zeta^2 + 2*zeta + 2)*q^791 + 
1/2*(-7*zeta^2 + 14)*q^793 + 1/2*(29*zeta^2 - 29*zeta - 58)*q^794 + (-20*zeta^2 
+ 10*zeta + 40)*q^796 + 1/2*(62*zeta^2 - 31*zeta - 124)*q^797 + (18*zeta^2 - 
18*zeta - 36)*q^799 + (zeta^2 - 2)*q^800 + 1/2*(7*zeta^2 - 14*zeta - 14)*q^802 +
(7*zeta^2 + 7*zeta - 14)*q^803 - 6*zeta*q^805 - 4*zeta*q^806 + (10*zeta^2 + 
10*zeta - 20)*q^808 + 1/2*(-27*zeta^2 + 54*zeta + 54)*q^809 + (8*zeta^2 - 
16)*q^811 + (-3*zeta^2 + 3*zeta + 6)*q^812 + (14*zeta^2 - 7*zeta - 28)*q^814 + 
(-16*zeta^2 + 8*zeta + 32)*q^815 + (2*zeta^2 - 2*zeta - 4)*q^817 + 
1/2*(19*zeta^2 - 38)*q^818 + (6*zeta^2 - 12*zeta - 12)*q^820 + 1/2*(7*zeta^2 + 
7*zeta - 14)*q^821 - 14*zeta*q^823 - 20*zeta*q^824 + (-8*zeta^2 - 8*zeta + 
16)*q^826 + (-3*zeta^2 + 6*zeta + 6)*q^827 + (-zeta^2 + 2)*q^829 + (12*zeta^2 - 
12*zeta - 24)*q^830 + 1/2*(-14*zeta^2 + 7*zeta + 28)*q^832 + 1/2*(18*zeta^2 - 
9*zeta - 36)*q^833 + (15*zeta^2 - 15*zeta - 30)*q^835 + (-6*zeta^2 + 12)*q^836 +
(2*zeta^2 - 4*zeta - 4)*q^838 + (-13*zeta^2 - 13*zeta + 26)*q^839 - 
13*zeta*q^841 - 25/2*zeta*q^842 + (-5*zeta^2 - 5*zeta + 10)*q^844 + (6*zeta^2 - 
12*zeta - 12)*q^845 + (-zeta^2 + 2)*q^847 + (-6*zeta^2 + 3*zeta + 12)*q^850 + 
(14*zeta^2 - 7*zeta - 28)*q^851 + (-17*zeta^2 + 17*zeta + 34)*q^853 + (7*zeta^2 
- 14)*q^854 + 1/2*(13*zeta^2 + 13*zeta - 26)*q^857 + 22*zeta*q^859 + 
3*zeta*q^860 + (9*zeta^2 - 18*zeta - 18)*q^863 + 1/2*(-33*zeta^2 + 66)*q^865 + 
1/2*(11*zeta^2 - 11*zeta - 22)*q^866 + (-16*zeta^2 + 8*zeta + 32)*q^868 + 
(4*zeta^2 - 2*zeta - 8)*q^869 + (5*zeta^2 - 5*zeta - 10)*q^871 + 1/2*(55*zeta^2 
- 110)*q^872 + (-2*zeta^2 + 4*zeta + 4)*q^874 + (7*zeta^2 + 7*zeta - 14)*q^875 +
53/2*zeta*q^877 + 10*zeta*q^878 + (9*zeta^2 + 9*zeta - 18)*q^880 + (6*zeta^2 - 
12*zeta - 12)*q^881 + (-28*zeta^2 + 56)*q^883 + 1/2*(9*zeta^2 - 9*zeta - 
18)*q^884 + (-20*zeta^2 + 10*zeta + 40)*q^886 + (-2*zeta^2 + zeta + 4)*q^887 + 
(2*zeta^2 - 2*zeta - 4)*q^889 + 1/2*(-9*zeta^2 + 18)*q^890 + (zeta^2 - 2*zeta - 
2)*q^892 + (4*zeta^2 + 4*zeta - 8)*q^893 - 18*zeta*q^895 + 19*zeta*q^896 + 
(-6*zeta^2 - 6*zeta + 12)*q^898 + (4*zeta^2 - 8*zeta - 8)*q^899 + (12*zeta^2 - 
12*zeta - 24)*q^902 + 1/2*(10*zeta^2 - 5*zeta - 20)*q^904 + (2*zeta^2 - zeta - 
4)*q^905 + (-26*zeta^2 + 26*zeta + 52)*q^907 + (-3*zeta^2 + 6)*q^908 + (-zeta^2 
+ 2*zeta + 2)*q^910 + (-7*zeta^2 - 7*zeta + 14)*q^911 + 24*zeta*q^913 + 
29/2*zeta*q^914 + 1/2*(-zeta^2 - zeta + 2)*q^916 + (2*zeta^2 - 4*zeta - 4)*q^917
+ (-zeta^2 + 2)*q^919 + (15*zeta^2 - 15*zeta - 30)*q^920 + (-8*zeta^2 + 4*zeta +
16)*q^922 + (-6*zeta^2 + 3*zeta + 12)*q^923 + (7*zeta^2 - 7*zeta - 14)*q^925 + 
(-4*zeta^2 + 8)*q^926 + 1/2*(-zeta^2 + 2*zeta + 2)*q^928 + 1/2*(-29*zeta^2 - 
29*zeta + 58)*q^929 - 3*zeta*q^931 + 45/2*zeta*q^932 + (6*zeta^2 + 6*zeta - 
12)*q^934 + (9*zeta^2 - 18*zeta - 18)*q^935 + 1/2*(25*zeta^2 - 50)*q^937 + 
(-10*zeta^2 + 10*zeta + 20)*q^938 + (12*zeta^2 - 6*zeta - 24)*q^940 + 
1/2*(-58*zeta^2 + 29*zeta + 116)*q^941 + (-12*zeta^2 + 12*zeta + 24)*q^943 + 
(36*zeta^2 - 72)*q^944 + (2*zeta^2 - 4*zeta - 4)*q^946 + (5*zeta^2 + 5*zeta - 
10)*q^947 + 7/2*zeta*q^949 - 2*zeta*q^950 + (15*zeta^2 + 15*zeta - 30)*q^952 + 
1/2*(-3*zeta^2 + 6*zeta + 6)*q^953 + (15*zeta^2 - 30)*q^955 + (24*zeta^2 - 
24*zeta - 48)*q^956 + (-14*zeta^2 + 7*zeta + 28)*q^958 + (-2*zeta^2 + zeta + 
4)*q^959 + 1/2*(33*zeta^2 - 33*zeta - 66)*q^961 + 1/2*(-7*zeta^2 + 14)*q^962 + 
1/2*(29*zeta^2 - 58*zeta - 58)*q^964 + 1/2*(zeta^2 + zeta - 2)*q^965 - 
23*zeta*q^967 - 5/2*zeta*q^968 + (zeta^2 + zeta - 2)*q^970 + (9*zeta^2 - 18*zeta
- 18)*q^971 + (-8*zeta^2 + 16)*q^973 + (-8*zeta^2 + 8*zeta + 16)*q^974 + 
1/2*(42*zeta^2 - 21*zeta - 84)*q^976 + (28*zeta^2 - 14*zeta - 56)*q^977 + 
(9*zeta^2 - 9*zeta - 18)*q^979 + 1/2*(9*zeta^2 - 18)*q^980 + (5*zeta^2 - 10*zeta
- 10)*q^982 + (-10*zeta^2 - 10*zeta + 20)*q^983 + 9/2*zeta*q^985 + 
9/2*zeta*q^986 + (-zeta^2 - zeta + 2)*q^988 + (2*zeta^2 - 4*zeta - 4)*q^989 + 
(17*zeta^2 - 34)*q^991 + (4*zeta^2 - 4*zeta - 8)*q^992 + (-12*zeta^2 + 6*zeta + 
24)*q^994 + (20*zeta^2 - 10*zeta - 40)*q^995 + 1/2*(-7*zeta^2 + 7*zeta + 
14)*q^997 + (5*zeta^2 - 10)*q^998 + 1/2*(35*zeta^2 - 70*zeta - 70)*q^1000 + 
(2*zeta^2 + 2*zeta - 4)*q^1001 + 36*zeta*q^1003 - 9*zeta*q^1004 + (-6*zeta^2 - 
6*zeta + 12)*q^1006 + 1/2*(43*zeta^2 - 86)*q^1009 + O(q^1010), zeta*q + zeta*q^2
+ (zeta^2 + zeta - 2)*q^4 + (-zeta^2 + 2*zeta + 2)*q^5 + (-2*zeta^2 + 4)*q^7 + 
(-5*zeta^2 + 5*zeta + 10)*q^8 + (-2*zeta^2 + zeta + 4)*q^10 + (4*zeta^2 - 2*zeta
- 8)*q^11 + (-zeta^2 + zeta + 2)*q^13 + (-2*zeta^2 + 4)*q^14 + (3*zeta^2 - 
6*zeta - 6)*q^16 + (3*zeta^2 + 3*zeta - 6)*q^17 + 2*zeta*q^19 + 3*zeta*q^20 + 
(2*zeta^2 + 2*zeta - 4)*q^22 + (2*zeta^2 - 4*zeta - 4)*q^23 + (2*zeta^2 - 
4)*q^25 + (-zeta^2 + zeta + 2)*q^26 + (-4*zeta^2 + 2*zeta + 8)*q^28 + (-2*zeta^2
+ zeta + 4)*q^29 + (8*zeta^2 - 8*zeta - 16)*q^31 + (-zeta^2 + 2)*q^32 + 
(-3*zeta^2 + 6*zeta + 6)*q^34 + (-2*zeta^2 - 2*zeta + 4)*q^35 - 7*zeta*q^37 + 
2*zeta*q^38 + (-5*zeta^2 - 5*zeta + 10)*q^40 + (-4*zeta^2 + 8*zeta + 8)*q^41 + 
(-2*zeta^2 + 4)*q^43 + (6*zeta^2 - 6*zeta - 12)*q^44 + (4*zeta^2 - 2*zeta - 
8)*q^46 + (-8*zeta^2 + 4*zeta + 16)*q^47 + (-3*zeta^2 + 3*zeta + 6)*q^49 + 
(2*zeta^2 - 4)*q^50 + (-zeta^2 + 2*zeta + 2)*q^52 + 6*zeta*q^55 - 10*zeta*q^56 +
(-zeta^2 - zeta + 2)*q^58 + (8*zeta^2 - 16*zeta - 16)*q^59 + (7*zeta^2 - 
14)*q^61 + (8*zeta^2 - 8*zeta - 16)*q^62 + (14*zeta^2 - 7*zeta - 28)*q^64 + 
(-2*zeta^2 + zeta + 4)*q^65 + (-10*zeta^2 + 10*zeta + 20)*q^67 + (9*zeta^2 - 
18)*q^68 + (2*zeta^2 - 4*zeta - 4)*q^70 + (-6*zeta^2 - 6*zeta + 12)*q^71 - 
7*zeta*q^73 - 7*zeta*q^74 + (2*zeta^2 + 2*zeta - 4)*q^76 + (-4*zeta^2 + 8*zeta +
8)*q^77 + (-2*zeta^2 + 4)*q^79 + (9*zeta^2 - 9*zeta - 18)*q^80 + (-8*zeta^2 + 
4*zeta + 16)*q^82 + (16*zeta^2 - 8*zeta - 32)*q^83 + (-9*zeta^2 + 9*zeta + 
18)*q^85 + (-2*zeta^2 + 4)*q^86 + (-10*zeta^2 + 20*zeta + 20)*q^88 + (-3*zeta^2 
- 3*zeta + 6)*q^89 - 2*zeta*q^91 - 6*zeta*q^92 + (-4*zeta^2 - 4*zeta + 8)*q^94 +
(-2*zeta^2 + 4*zeta + 4)*q^95 + (-2*zeta^2 + 4)*q^97 + (-3*zeta^2 + 3*zeta + 
6)*q^98 + (4*zeta^2 - 2*zeta - 8)*q^100 + (-8*zeta^2 + 4*zeta + 16)*q^101 + 
(8*zeta^2 - 8*zeta - 16)*q^103 + (-5*zeta^2 + 10)*q^104 + 11*zeta*q^109 + 
6*zeta*q^110 + (6*zeta^2 + 6*zeta - 12)*q^112 + (-zeta^2 + 2*zeta + 2)*q^113 + 
(6*zeta^2 - 12)*q^115 + (-3*zeta^2 + 3*zeta + 6)*q^116 + (16*zeta^2 - 8*zeta - 
32)*q^118 + (-12*zeta^2 + 6*zeta + 24)*q^119 + (zeta^2 - zeta - 2)*q^121 + 
(7*zeta^2 - 14)*q^122 + (8*zeta^2 - 16*zeta - 16)*q^124 + (7*zeta^2 + 7*zeta - 
14)*q^125 + 2*zeta*q^127 + 19*zeta*q^128 + (-zeta^2 - zeta + 2)*q^130 + 
(2*zeta^2 - 4*zeta - 4)*q^131 + (-4*zeta^2 + 8)*q^133 + (-10*zeta^2 + 10*zeta + 
20)*q^134 + (-30*zeta^2 + 15*zeta + 60)*q^136 + (-2*zeta^2 + zeta + 4)*q^137 + 
(8*zeta^2 - 8*zeta - 16)*q^139 + (-6*zeta^2 + 12)*q^140 + (6*zeta^2 - 12*zeta - 
12)*q^142 + (2*zeta^2 + 2*zeta - 4)*q^143 - 3*zeta*q^145 - 7*zeta*q^146 + 
(-7*zeta^2 - 7*zeta + 14)*q^148 + (5*zeta^2 - 10*zeta - 10)*q^149 + (-20*zeta^2 
+ 40)*q^151 + (-10*zeta^2 + 10*zeta + 20)*q^152 + (-8*zeta^2 + 4*zeta + 
16)*q^154 + (16*zeta^2 - 8*zeta - 32)*q^155 + (17*zeta^2 - 17*zeta - 34)*q^157 +
(-2*zeta^2 + 4)*q^158 + (zeta^2 - 2*zeta - 2)*q^160 + (4*zeta^2 + 4*zeta - 
8)*q^161 - 16*zeta*q^163 + 12*zeta*q^164 + (8*zeta^2 + 8*zeta - 16)*q^166 + 
(-10*zeta^2 + 20*zeta + 20)*q^167 + (12*zeta^2 - 24)*q^169 + (-9*zeta^2 + 9*zeta
+ 18)*q^170 + (-4*zeta^2 + 2*zeta + 8)*q^172 + (22*zeta^2 - 11*zeta - 44)*q^173 
+ (-4*zeta^2 + 4*zeta + 8)*q^175 + (-18*zeta^2 + 36)*q^176 + (3*zeta^2 - 6*zeta 
- 6)*q^178 + (12*zeta^2 + 12*zeta - 24)*q^179 + 2*zeta*q^181 - 2*zeta*q^182 + 
(10*zeta^2 + 10*zeta - 20)*q^184 + (7*zeta^2 - 14*zeta - 14)*q^185 + (18*zeta^2 
- 36)*q^187 + (-12*zeta^2 + 12*zeta + 24)*q^188 + (-4*zeta^2 + 2*zeta + 8)*q^190
+ (-20*zeta^2 + 10*zeta + 40)*q^191 + (-zeta^2 + zeta + 2)*q^193 + (-2*zeta^2 + 
4)*q^194 + (-3*zeta^2 + 6*zeta + 6)*q^196 + (-3*zeta^2 - 3*zeta + 6)*q^197 + 
20*zeta*q^199 + 10*zeta*q^200 + (-4*zeta^2 - 4*zeta + 8)*q^202 + (2*zeta^2 - 
4*zeta - 4)*q^203 + (-12*zeta^2 + 24)*q^205 + (8*zeta^2 - 8*zeta - 16)*q^206 + 
(6*zeta^2 - 3*zeta - 12)*q^208 + (8*zeta^2 - 4*zeta - 16)*q^209 + (-10*zeta^2 + 
10*zeta + 20)*q^211 + (-2*zeta^2 - 2*zeta + 4)*q^215 + 16*zeta*q^217 + 
11*zeta*q^218 + (6*zeta^2 + 6*zeta - 12)*q^220 + (-3*zeta^2 + 6*zeta + 6)*q^221 
+ (-2*zeta^2 + 4)*q^223 + (2*zeta^2 - 2*zeta - 4)*q^224 + (-2*zeta^2 + zeta + 
4)*q^226 + (4*zeta^2 - 2*zeta - 8)*q^227 + (-zeta^2 + zeta + 2)*q^229 + 
(6*zeta^2 - 12)*q^230 + (5*zeta^2 - 10*zeta - 10)*q^232 + (-15*zeta^2 - 15*zeta 
+ 30)*q^233 - 12*zeta*q^235 - 24*zeta*q^236 + (-6*zeta^2 - 6*zeta + 12)*q^238 + 
(-16*zeta^2 + 32*zeta + 32)*q^239 + (-29*zeta^2 + 58)*q^241 + (zeta^2 - zeta - 
2)*q^242 + (14*zeta^2 - 7*zeta - 28)*q^244 + (-6*zeta^2 + 3*zeta + 12)*q^245 + 
(-2*zeta^2 + 2*zeta + 4)*q^247 + (40*zeta^2 - 80)*q^248 + (-7*zeta^2 + 14*zeta +
14)*q^250 + (6*zeta^2 + 6*zeta - 12)*q^251 - 12*zeta*q^253 + 2*zeta*q^254 + 
(-5*zeta^2 - 5*zeta + 10)*q^256 + (5*zeta^2 - 10*zeta - 10)*q^257 + (14*zeta^2 -
28)*q^259 + (-3*zeta^2 + 3*zeta + 6)*q^260 + (4*zeta^2 - 2*zeta - 8)*q^262 + 
(-8*zeta^2 + 4*zeta + 16)*q^263 + (-4*zeta^2 + 8)*q^266 + (-10*zeta^2 + 20*zeta 
+ 20)*q^268 + (-9*zeta^2 - 9*zeta + 18)*q^269 + 2*zeta*q^271 - 27*zeta*q^272 + 
(-zeta^2 - zeta + 2)*q^274 + (4*zeta^2 - 8*zeta - 8)*q^275 + (-2*zeta^2 + 
4)*q^277 + (8*zeta^2 - 8*zeta - 16)*q^278 + (20*zeta^2 - 10*zeta - 40)*q^280 + 
(-14*zeta^2 + 7*zeta + 28)*q^281 + (-28*zeta^2 + 28*zeta + 56)*q^283 + 
(-18*zeta^2 + 36)*q^284 + (-2*zeta^2 + 4*zeta + 4)*q^286 + (-8*zeta^2 - 8*zeta +
16)*q^287 + 10*zeta*q^289 - 3*zeta*q^290 + (-7*zeta^2 - 7*zeta + 14)*q^292 + 
(11*zeta^2 - 22*zeta - 22)*q^293 + (24*zeta^2 - 48)*q^295 + (35*zeta^2 - 35*zeta
- 70)*q^296 + (10*zeta^2 - 5*zeta - 20)*q^298 + (4*zeta^2 - 2*zeta - 8)*q^299 + 
(4*zeta^2 - 4*zeta - 8)*q^301 + (-20*zeta^2 + 40)*q^302 + (6*zeta^2 - 12*zeta - 
12)*q^304 + (7*zeta^2 + 7*zeta - 14)*q^305 - 16*zeta*q^307 + 12*zeta*q^308 + 
(8*zeta^2 + 8*zeta - 16)*q^310 + (-4*zeta^2 + 8*zeta + 8)*q^311 + (25*zeta^2 - 
50)*q^313 + (17*zeta^2 - 17*zeta - 34)*q^314 + (-4*zeta^2 + 2*zeta + 8)*q^316 + 
(10*zeta^2 - 5*zeta - 20)*q^317 + (-6*zeta^2 + 6*zeta + 12)*q^319 + (21*zeta^2 -
42)*q^320 + (-4*zeta^2 + 8*zeta + 8)*q^322 + (6*zeta^2 + 6*zeta - 12)*q^323 + 
2*zeta*q^325 - 16*zeta*q^326 + (-20*zeta^2 - 20*zeta + 40)*q^328 + (8*zeta^2 - 
16*zeta - 16)*q^329 + (-2*zeta^2 + 4)*q^331 + (24*zeta^2 - 24*zeta - 48)*q^332 +
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
- 10)*q^520 + (-12*zeta^2 - 12*zeta + 24)*q^521 + 38*zeta*q^523 - 6*zeta*q^524 +
(-4*zeta^2 - 4*zeta + 8)*q^526 + (24*zeta^2 - 48*zeta - 48)*q^527 + (11*zeta^2 -
22)*q^529 + (-8*zeta^2 + 4*zeta + 16)*q^532 + (-8*zeta^2 + 4*zeta + 16)*q^533 + 
(-50*zeta^2 + 100)*q^536 + (9*zeta^2 - 18*zeta - 18)*q^538 + (6*zeta^2 + 6*zeta 
- 12)*q^539 + 11*zeta*q^541 + 2*zeta*q^542 + (-3*zeta^2 - 3*zeta + 6)*q^544 + 
(-11*zeta^2 + 22*zeta + 22)*q^545 + (-20*zeta^2 + 40)*q^547 + (-3*zeta^2 + 
3*zeta + 6)*q^548 + (8*zeta^2 - 4*zeta - 16)*q^550 + (-4*zeta^2 + 2*zeta + 
8)*q^551 + (4*zeta^2 - 4*zeta - 8)*q^553 + (-2*zeta^2 + 4)*q^554 + (8*zeta^2 - 
16*zeta - 16)*q^556 + (21*zeta^2 + 21*zeta - 42)*q^557 - 2*zeta*q^559 + 
18*zeta*q^560 + (-7*zeta^2 - 7*zeta + 14)*q^562 + (20*zeta^2 - 40*zeta - 
40)*q^563 + (-3*zeta^2 + 6)*q^565 + (-28*zeta^2 + 28*zeta + 56)*q^566 + 
(60*zeta^2 - 30*zeta - 120)*q^568 + (-38*zeta^2 + 19*zeta + 76)*q^569 + 
(8*zeta^2 - 8*zeta - 16)*q^571 + (6*zeta^2 - 12)*q^572 + (8*zeta^2 - 16*zeta - 
16)*q^574 + (-4*zeta^2 - 4*zeta + 8)*q^575 + 11*zeta*q^577 + 10*zeta*q^578 + 
(-3*zeta^2 - 3*zeta + 6)*q^580 + (-16*zeta^2 + 32*zeta + 32)*q^581 + (35*zeta^2 
- 35*zeta - 70)*q^584 + (22*zeta^2 - 11*zeta - 44)*q^586 + (-44*zeta^2 + 22*zeta
+ 88)*q^587 + (16*zeta^2 - 16*zeta - 32)*q^589 + (24*zeta^2 - 48)*q^590 + 
(-21*zeta^2 + 42*zeta + 42)*q^592 + (9*zeta^2 + 9*zeta - 18)*q^593 - 
18*zeta*q^595 - 15*zeta*q^596 + (2*zeta^2 + 2*zeta - 4)*q^598 + (8*zeta^2 - 
16*zeta - 16)*q^599 + (25*zeta^2 - 50)*q^601 + (4*zeta^2 - 4*zeta - 8)*q^602 + 
(-40*zeta^2 + 20*zeta + 80)*q^604 + (2*zeta^2 - zeta - 4)*q^605 + (26*zeta^2 - 
26*zeta - 52)*q^607 + (-2*zeta^2 + 4)*q^608 + (-7*zeta^2 + 14*zeta + 14)*q^610 +
(-4*zeta^2 - 4*zeta + 8)*q^611 - 34*zeta*q^613 - 16*zeta*q^614 + (-20*zeta^2 - 
20*zeta + 40)*q^616 + (-7*zeta^2 + 14*zeta + 14)*q^617 + (-20*zeta^2 + 40)*q^619
+ (24*zeta^2 - 24*zeta - 48)*q^620 + (-8*zeta^2 + 4*zeta + 16)*q^622 + 
(12*zeta^2 - 6*zeta - 24)*q^623 + (-11*zeta^2 + 11*zeta + 22)*q^625 + (25*zeta^2
- 50)*q^626 + (17*zeta^2 - 34*zeta - 34)*q^628 + (-21*zeta^2 - 21*zeta + 
42)*q^629 + 20*zeta*q^631 - 10*zeta*q^632 + (5*zeta^2 + 5*zeta - 10)*q^634 + 
(-2*zeta^2 + 4*zeta + 4)*q^635 + (-3*zeta^2 + 6)*q^637 + (-6*zeta^2 + 6*zeta + 
12)*q^638 + (-38*zeta^2 + 19*zeta + 76)*q^640 + (-26*zeta^2 + 13*zeta + 
52)*q^641 + (8*zeta^2 - 8*zeta - 16)*q^643 + (12*zeta^2 - 24)*q^644 + (-6*zeta^2
+ 12*zeta + 12)*q^646 + (-18*zeta^2 - 18*zeta + 36)*q^647 - 48*zeta*q^649 + 
2*zeta*q^650 + (-16*zeta^2 - 16*zeta + 32)*q^652 + (8*zeta^2 - 16*zeta - 
16)*q^653 + (6*zeta^2 - 12)*q^655 + (36*zeta^2 - 36*zeta - 72)*q^656 + 
(16*zeta^2 - 8*zeta - 32)*q^658 + (4*zeta^2 - 2*zeta - 8)*q^659 + (17*zeta^2 - 
17*zeta - 34)*q^661 + (-2*zeta^2 + 4)*q^662 + (-40*zeta^2 + 80*zeta + 80)*q^664 
+ (-4*zeta^2 - 4*zeta + 8)*q^665 + 6*zeta*q^667 + 30*zeta*q^668 + (-10*zeta^2 - 
10*zeta + 20)*q^670 + (14*zeta^2 - 28*zeta - 28)*q^671 + (25*zeta^2 - 50)*q^673 
+ (26*zeta^2 - 26*zeta - 52)*q^674 + (24*zeta^2 - 12*zeta - 48)*q^676 + 
(16*zeta^2 - 8*zeta - 32)*q^677 + (4*zeta^2 - 4*zeta - 8)*q^679 + (-45*zeta^2 + 
90)*q^680 + (16*zeta^2 - 32*zeta - 32)*q^682 + (-12*zeta^2 - 12*zeta + 24)*q^683
- 3*zeta*q^685 - 20*zeta*q^686 + (6*zeta^2 + 6*zeta - 12)*q^688 + (-2*zeta^2 + 
4)*q^691 + (33*zeta^2 - 33*zeta - 66)*q^692 + (4*zeta^2 - 2*zeta - 8)*q^694 + 
(16*zeta^2 - 8*zeta - 32)*q^695 + (-36*zeta^2 + 36*zeta + 72)*q^697 + (-2*zeta^2
+ 4)*q^698 + (-4*zeta^2 + 8*zeta + 8)*q^700 + (27*zeta^2 + 27*zeta - 54)*q^701 -
14*zeta*q^703 - 42*zeta*q^704 + (8*zeta^2 + 8*zeta - 16)*q^706 + (8*zeta^2 - 
16*zeta - 16)*q^707 + (25*zeta^2 - 50)*q^709 + (18*zeta^2 - 18*zeta - 36)*q^710 
+ (30*zeta^2 - 15*zeta - 60)*q^712 + (-32*zeta^2 + 16*zeta + 64)*q^713 + 
(-6*zeta^2 + 6*zeta + 12)*q^715 + (36*zeta^2 - 72)*q^716 + (-6*zeta^2 + 12*zeta 
+ 12)*q^718 + (-6*zeta^2 - 6*zeta + 12)*q^719 + 16*zeta*q^721 - 15*zeta*q^722 + 
(2*zeta^2 + 2*zeta - 4)*q^724 + (-2*zeta^2 + 4*zeta + 4)*q^725 + (34*zeta^2 - 
68)*q^727 + (10*zeta^2 - 10*zeta - 20)*q^728 + (14*zeta^2 - 7*zeta - 28)*q^730 +
(-12*zeta^2 + 6*zeta + 24)*q^731 + (-46*zeta^2 + 46*zeta + 92)*q^733 + 
(-20*zeta^2 + 40)*q^734 + (-2*zeta^2 + 4*zeta + 4)*q^736 + (20*zeta^2 + 20*zeta 
- 40)*q^737 + 20*zeta*q^739 - 21*zeta*q^740 + (-4*zeta^2 + 8*zeta + 8)*q^743 + 
(15*zeta^2 - 30)*q^745 + (-10*zeta^2 + 10*zeta + 20)*q^746 + (36*zeta^2 - 
18*zeta - 72)*q^748 + (-10*zeta^2 + 10*zeta + 20)*q^751 + (36*zeta^2 - 72)*q^752
+ (zeta^2 - 2*zeta - 2)*q^754 + (-20*zeta^2 - 20*zeta + 40)*q^755 + 2*zeta*q^757
- 16*zeta*q^758 + (-10*zeta^2 - 10*zeta + 20)*q^760 + (17*zeta^2 - 34*zeta - 
34)*q^761 + (-22*zeta^2 + 44)*q^763 + (-30*zeta^2 + 30*zeta + 60)*q^764 + 
(-20*zeta^2 + 10*zeta + 40)*q^766 + (16*zeta^2 - 8*zeta - 32)*q^767 + (-zeta^2 +
zeta + 2)*q^769 + (-12*zeta^2 + 24)*q^770 + (-zeta^2 + 2*zeta + 2)*q^772 + 
(-15*zeta^2 - 15*zeta + 30)*q^773 - 16*zeta*q^775 - 10*zeta*q^776 + (-16*zeta^2 
- 16*zeta + 32)*q^778 + (-8*zeta^2 + 16*zeta + 16)*q^779 + (-36*zeta^2 + 
72)*q^781 + (18*zeta^2 - 18*zeta - 36)*q^782 + (18*zeta^2 - 9*zeta - 36)*q^784 +
(34*zeta^2 - 17*zeta - 68)*q^785 + (26*zeta^2 - 26*zeta - 52)*q^787 + (-9*zeta^2
+ 18)*q^788 + (2*zeta^2 - 4*zeta - 4)*q^790 + (-2*zeta^2 - 2*zeta + 4)*q^791 + 
7*zeta*q^793 + 29*zeta*q^794 + (20*zeta^2 + 20*zeta - 40)*q^796 + (-31*zeta^2 + 
62*zeta + 62)*q^797 + (-36*zeta^2 + 72)*q^799 + (-2*zeta^2 + 2*zeta + 4)*q^800 +
(-14*zeta^2 + 7*zeta + 28)*q^802 + (-28*zeta^2 + 14*zeta + 56)*q^803 + 
(-12*zeta^2 + 12*zeta + 24)*q^805 + (8*zeta^2 - 16)*q^806 + (20*zeta^2 - 40*zeta
- 40)*q^808 + (-27*zeta^2 - 27*zeta + 54)*q^809 - 16*zeta*q^811 - 6*zeta*q^812 +
(-14*zeta^2 - 14*zeta + 28)*q^814 + (16*zeta^2 - 32*zeta - 32)*q^815 + 
(-4*zeta^2 + 8)*q^817 + (-19*zeta^2 + 19*zeta + 38)*q^818 + (-24*zeta^2 + 
12*zeta + 48)*q^820 + (-14*zeta^2 + 7*zeta + 28)*q^821 + (-28*zeta^2 + 28*zeta +
56)*q^823 + (40*zeta^2 - 80)*q^824 + (-16*zeta^2 + 32*zeta + 32)*q^826 + 
(-6*zeta^2 - 6*zeta + 12)*q^827 + 2*zeta*q^829 + 24*zeta*q^830 + (7*zeta^2 + 
7*zeta - 14)*q^832 + (-9*zeta^2 + 18*zeta + 18)*q^833 + (-30*zeta^2 + 60)*q^835 
+ (12*zeta^2 - 12*zeta - 24)*q^836 + (-8*zeta^2 + 4*zeta + 16)*q^838 + 
(52*zeta^2 - 26*zeta - 104)*q^839 + (-26*zeta^2 + 26*zeta + 52)*q^841 + 
(25*zeta^2 - 50)*q^842 + (-10*zeta^2 + 20*zeta + 20)*q^844 + (12*zeta^2 + 
12*zeta - 24)*q^845 + 2*zeta*q^847 + (6*zeta^2 + 6*zeta - 12)*q^850 + 
(-14*zeta^2 + 28*zeta + 28)*q^851 + (34*zeta^2 - 68)*q^853 + (-14*zeta^2 + 
14*zeta + 28)*q^854 + (-26*zeta^2 + 13*zeta + 52)*q^857 + (44*zeta^2 - 44*zeta -
88)*q^859 + (-6*zeta^2 + 12)*q^860 + (18*zeta^2 + 18*zeta - 36)*q^863 + 
33*zeta*q^865 + 11*zeta*q^866 + (16*zeta^2 + 16*zeta - 32)*q^868 + (-4*zeta^2 + 
8*zeta + 8)*q^869 + (-10*zeta^2 + 20)*q^871 + (-55*zeta^2 + 55*zeta + 110)*q^872
+ (8*zeta^2 - 4*zeta - 16)*q^874 + (-28*zeta^2 + 14*zeta + 56)*q^875 + 
(53*zeta^2 - 53*zeta - 106)*q^877 + (-20*zeta^2 + 40)*q^878 + (18*zeta^2 - 
36*zeta - 36)*q^880 + (12*zeta^2 + 12*zeta - 24)*q^881 + 56*zeta*q^883 + 
9*zeta*q^884 + (20*zeta^2 + 20*zeta - 40)*q^886 + (2*zeta^2 - 4*zeta - 4)*q^887 
+ (-4*zeta^2 + 8)*q^889 + (9*zeta^2 - 9*zeta - 18)*q^890 + (-4*zeta^2 + 2*zeta +
8)*q^892 + (-16*zeta^2 + 8*zeta + 32)*q^893 + (-36*zeta^2 + 36*zeta + 72)*q^895 
+ (-38*zeta^2 + 76)*q^896 + (-12*zeta^2 + 24*zeta + 24)*q^898 + (8*zeta^2 + 
8*zeta - 16)*q^899 + 24*zeta*q^902 + (-5*zeta^2 - 5*zeta + 10)*q^904 + 
(-2*zeta^2 + 4*zeta + 4)*q^905 + (52*zeta^2 - 104)*q^907 + (6*zeta^2 - 6*zeta - 
12)*q^908 + (4*zeta^2 - 2*zeta - 8)*q^910 + (28*zeta^2 - 14*zeta - 56)*q^911 + 
(48*zeta^2 - 48*zeta - 96)*q^913 + (-29*zeta^2 + 58)*q^914 + (-zeta^2 + 2*zeta +
2)*q^916 + (4*zeta^2 + 4*zeta - 8)*q^917 + 2*zeta*q^919 + 30*zeta*q^920 + 
(8*zeta^2 + 8*zeta - 16)*q^922 + (6*zeta^2 - 12*zeta - 12)*q^923 + (-14*zeta^2 +
28)*q^925 + (8*zeta^2 - 8*zeta - 16)*q^926 + (2*zeta^2 - zeta - 4)*q^928 + 
(58*zeta^2 - 29*zeta - 116)*q^929 + (-6*zeta^2 + 6*zeta + 12)*q^931 + 
(-45*zeta^2 + 90)*q^932 + (12*zeta^2 - 24*zeta - 24)*q^934 + (18*zeta^2 + 
18*zeta - 36)*q^935 - 25*zeta*q^937 - 20*zeta*q^938 + (-12*zeta^2 - 12*zeta + 
24)*q^940 + (29*zeta^2 - 58*zeta - 58)*q^941 + (24*zeta^2 - 48)*q^943 + 
(-72*zeta^2 + 72*zeta + 144)*q^944 + (-8*zeta^2 + 4*zeta + 16)*q^946 + 
(-20*zeta^2 + 10*zeta + 40)*q^947 + (7*zeta^2 - 7*zeta - 14)*q^949 + (4*zeta^2 -
8)*q^950 + (30*zeta^2 - 60*zeta - 60)*q^952 + (-3*zeta^2 - 3*zeta + 6)*q^953 - 
30*zeta*q^955 + 48*zeta*q^956 + (14*zeta^2 + 14*zeta - 28)*q^958 + (2*zeta^2 - 
4*zeta - 4)*q^959 + (-33*zeta^2 + 66)*q^961 + (7*zeta^2 - 7*zeta - 14)*q^962 + 
(-58*zeta^2 + 29*zeta + 116)*q^964 + (-2*zeta^2 + zeta + 4)*q^965 + (-46*zeta^2 
+ 46*zeta + 92)*q^967 + (5*zeta^2 - 10)*q^968 + (2*zeta^2 - 4*zeta - 4)*q^970 + 
(18*zeta^2 + 18*zeta - 36)*q^971 + 16*zeta*q^973 - 16*zeta*q^974 + (-21*zeta^2 -
21*zeta + 42)*q^976 + (-28*zeta^2 + 56*zeta + 56)*q^977 + (-18*zeta^2 + 
36)*q^979 + (-9*zeta^2 + 9*zeta + 18)*q^980 + (-20*zeta^2 + 10*zeta + 40)*q^982 
+ (40*zeta^2 - 20*zeta - 80)*q^983 + (9*zeta^2 - 9*zeta - 18)*q^985 + (-9*zeta^2
+ 18)*q^986 + (-2*zeta^2 + 4*zeta + 4)*q^988 + (4*zeta^2 + 4*zeta - 8)*q^989 - 
34*zeta*q^991 + 8*zeta*q^992 + (12*zeta^2 + 12*zeta - 24)*q^994 + (-20*zeta^2 + 
40*zeta + 40)*q^995 + (7*zeta^2 - 14)*q^997 + (-10*zeta^2 + 10*zeta + 20)*q^998 
+ (-70*zeta^2 + 35*zeta + 140)*q^1000 + (-8*zeta^2 + 4*zeta + 16)*q^1001 + 
(72*zeta^2 - 72*zeta - 144)*q^1003 + (18*zeta^2 - 36)*q^1004 + (-12*zeta^2 + 
24*zeta + 24)*q^1006 - 43*zeta*q^1009 + O(q^1010), 1/2*(-zeta^2 + 2)*q + 
1/2*(zeta^2 + zeta - 2)*q^2 + 1/2*(2*zeta^2 - zeta - 4)*q^4 - 3/2*zeta*q^5 + 
(-2*zeta^2 + 2*zeta + 4)*q^7 + 1/2*(zeta^2 - 2*zeta - 2)*q^8 + 1/2*(-3*zeta^2 + 
6*zeta + 6)*q^10 - 1/2*zeta*q^13 + (4*zeta^2 - 2*zeta - 8)*q^14 + 1/2*(-zeta^2 -
zeta + 2)*q^16 + 1/2*(3*zeta^2 - 6)*q^17 + (2*zeta^2 - 4)*q^19 + 1/2*(3*zeta^2 +
3*zeta - 6)*q^20 + (2*zeta^2 - 2*zeta - 4)*q^25 + 1/2*(-zeta^2 + 2*zeta + 
2)*q^26 + (2*zeta^2 - 4*zeta - 4)*q^28 + 1/2*(9*zeta^2 - 9*zeta - 18)*q^29 - 
2*zeta*q^31 + 1/2*(-2*zeta^2 + zeta + 4)*q^32 + 1/2*(-3*zeta^2 - 3*zeta + 
6)*q^34 + (-6*zeta^2 + 12)*q^35 + 1/2*(zeta^2 - 2)*q^37 + (-2*zeta^2 - 2*zeta + 
4)*q^38 + 1/2*(6*zeta^2 - 3*zeta - 12)*q^40 + 3*zeta*q^41 + (4*zeta^2 - 4*zeta -
8)*q^43 + (-6*zeta^2 + 6*zeta + 12)*q^47 + 9/2*zeta*q^49 + (-4*zeta^2 + 2*zeta +
8)*q^50 + 1/2*(zeta^2 + zeta - 2)*q^52 + (3*zeta^2 - 6)*q^53 + (-2*zeta^2 - 
2*zeta + 4)*q^56 + 1/2*(-18*zeta^2 + 9*zeta + 36)*q^58 + 1/2*(-zeta^2 + zeta + 
2)*q^61 + (-2*zeta^2 + 4*zeta + 4)*q^62 + 1/2*(-zeta^2 + 2*zeta + 2)*q^64 + 
1/2*(3*zeta^2 - 3*zeta - 6)*q^65 - 2*zeta*q^67 + 1/2*(-6*zeta^2 + 3*zeta + 
12)*q^68 + (6*zeta^2 + 6*zeta - 12)*q^70 + (6*zeta^2 - 12)*q^71 + 
1/2*(-11*zeta^2 + 22)*q^73 + 1/2*(-zeta^2 - zeta + 2)*q^74 + (-4*zeta^2 + 2*zeta
+ 8)*q^76 + (-8*zeta^2 + 8*zeta + 16)*q^79 + 1/2*(3*zeta^2 - 6*zeta - 6)*q^80 + 
(3*zeta^2 - 6*zeta - 6)*q^82 + (-6*zeta^2 + 6*zeta + 12)*q^83 + 9/2*zeta*q^85 + 
(-8*zeta^2 + 4*zeta + 16)*q^86 + 1/2*(3*zeta^2 - 6)*q^89 + (-2*zeta^2 + 4)*q^91 
+ (12*zeta^2 - 6*zeta - 24)*q^94 + 6*zeta*q^95 + (zeta^2 - zeta - 2)*q^97 + 
1/2*(9*zeta^2 - 18*zeta - 18)*q^98 + (-2*zeta^2 + 4*zeta + 4)*q^100 + (-3*zeta^2
+ 3*zeta + 6)*q^101 - 2*zeta*q^103 + 1/2*(2*zeta^2 - zeta - 4)*q^104 + 
(-3*zeta^2 - 3*zeta + 6)*q^106 + (-6*zeta^2 + 12)*q^107 + 1/2*(-11*zeta^2 + 
22)*q^109 + (-4*zeta^2 + 2*zeta + 8)*q^112 - 15/2*zeta*q^113 + 1/2*(-9*zeta^2 + 
18*zeta + 18)*q^116 + (6*zeta^2 - 6*zeta - 12)*q^119 - 11/2*zeta*q^121 + 
1/2*(2*zeta^2 - zeta - 4)*q^122 + (2*zeta^2 + 2*zeta - 4)*q^124 + 1/2*(-3*zeta^2
+ 6)*q^125 + (8*zeta^2 - 16)*q^127 + 1/2*(zeta^2 + zeta - 2)*q^128 + 
1/2*(-6*zeta^2 + 3*zeta + 12)*q^130 - 6*zeta*q^131 + (8*zeta^2 - 8*zeta - 
16)*q^133 + (-2*zeta^2 + 4*zeta + 4)*q^134 + 1/2*(-3*zeta^2 + 6*zeta + 6)*q^136 
+ 1/2*(9*zeta^2 - 9*zeta - 18)*q^137 + 10*zeta*q^139 + (12*zeta^2 - 6*zeta - 
24)*q^140 + (-6*zeta^2 - 6*zeta + 12)*q^142 + 1/2*(27*zeta^2 - 54)*q^145 + 
1/2*(11*zeta^2 + 11*zeta - 22)*q^146 + 1/2*(-2*zeta^2 + zeta + 4)*q^148 + 
9/2*zeta*q^149 + (4*zeta^2 - 4*zeta - 8)*q^151 + (-2*zeta^2 + 4*zeta + 4)*q^152 
+ (6*zeta^2 - 6*zeta - 12)*q^155 - 13/2*zeta*q^157 + (16*zeta^2 - 8*zeta - 
32)*q^158 + 1/2*(-3*zeta^2 - 3*zeta + 6)*q^160 + (-4*zeta^2 + 8)*q^163 + 
(-3*zeta^2 - 3*zeta + 6)*q^164 + (12*zeta^2 - 6*zeta - 24)*q^166 + 6*zeta*q^167 
+ (-6*zeta^2 + 6*zeta + 12)*q^169 + 1/2*(9*zeta^2 - 18*zeta - 18)*q^170 + 
(-4*zeta^2 + 8*zeta + 8)*q^172 + 1/2*(-3*zeta^2 + 3*zeta + 6)*q^173 - 
8*zeta*q^175 + 1/2*(-3*zeta^2 - 3*zeta + 6)*q^178 + (-6*zeta^2 + 12)*q^179 + 
(5*zeta^2 - 10)*q^181 + (2*zeta^2 + 2*zeta - 4)*q^182 + 3/2*zeta*q^185 + 
(6*zeta^2 - 12*zeta - 12)*q^188 + (6*zeta^2 - 12*zeta - 12)*q^190 + (6*zeta^2 - 
6*zeta - 12)*q^191 - 13/2*zeta*q^193 + (-2*zeta^2 + zeta + 4)*q^194 + 
1/2*(-9*zeta^2 - 9*zeta + 18)*q^196 + 1/2*(3*zeta^2 - 6)*q^197 + (2*zeta^2 - 
4)*q^199 + (2*zeta^2 + 2*zeta - 4)*q^200 + (6*zeta^2 - 3*zeta - 12)*q^202 - 
18*zeta*q^203 + (-9*zeta^2 + 9*zeta + 18)*q^205 + (-2*zeta^2 + 4*zeta + 4)*q^206
+ 1/2*(zeta^2 - 2*zeta - 2)*q^208 + 4*zeta*q^211 + (-6*zeta^2 + 3*zeta + 
12)*q^212 + (6*zeta^2 + 6*zeta - 12)*q^214 + (12*zeta^2 - 24)*q^215 + (-8*zeta^2
+ 16)*q^217 + 1/2*(11*zeta^2 + 11*zeta - 22)*q^218 + 3/2*zeta*q^221 + (4*zeta^2 
- 4*zeta - 8)*q^223 + (-2*zeta^2 + 4*zeta + 4)*q^224 + 1/2*(-15*zeta^2 + 30*zeta
+ 30)*q^226 + (-6*zeta^2 + 6*zeta + 12)*q^227 + 23/2*zeta*q^229 + 1/2*(9*zeta^2 
+ 9*zeta - 18)*q^232 + 1/2*(-21*zeta^2 + 42)*q^233 + (-18*zeta^2 + 36)*q^235 + 
(-12*zeta^2 + 6*zeta + 24)*q^238 + 6*zeta*q^239 + 1/2*(-13*zeta^2 + 13*zeta + 
26)*q^241 + 1/2*(-11*zeta^2 + 22*zeta + 22)*q^242 + 1/2*(zeta^2 - 2*zeta - 
2)*q^244 + 1/2*(-27*zeta^2 + 27*zeta + 54)*q^245 + 2*zeta*q^247 + (4*zeta^2 - 
2*zeta - 8)*q^248 + 1/2*(3*zeta^2 + 3*zeta - 6)*q^250 + (12*zeta^2 - 24)*q^251 +
(-8*zeta^2 - 8*zeta + 16)*q^254 + 1/2*(2*zeta^2 - zeta - 4)*q^256 - 
15/2*zeta*q^257 + (2*zeta^2 - 2*zeta - 4)*q^259 + 1/2*(-3*zeta^2 + 6*zeta + 
6)*q^260 + (-6*zeta^2 + 12*zeta + 12)*q^262 + (6*zeta^2 - 6*zeta - 12)*q^263 + 
9*zeta*q^265 + (-16*zeta^2 + 8*zeta + 32)*q^266 + (2*zeta^2 + 2*zeta - 4)*q^268 
+ 1/2*(-21*zeta^2 + 42)*q^269 + (8*zeta^2 - 16)*q^271 + 1/2*(3*zeta^2 + 3*zeta -
6)*q^272 + 1/2*(-18*zeta^2 + 9*zeta + 36)*q^274 + (-5*zeta^2 + 5*zeta + 
10)*q^277 + (10*zeta^2 - 20*zeta - 20)*q^278 + (6*zeta^2 - 12*zeta - 12)*q^280 +
1/2*(-27*zeta^2 + 27*zeta + 54)*q^281 - 2*zeta*q^283 + (-12*zeta^2 + 6*zeta + 
24)*q^284 + (12*zeta^2 - 24)*q^287 + (4*zeta^2 - 8)*q^289 + 1/2*(-27*zeta^2 - 
27*zeta + 54)*q^290 + 1/2*(22*zeta^2 - 11*zeta - 44)*q^292 + 9/2*zeta*q^293 + 
1/2*(-zeta^2 + 2*zeta + 2)*q^296 + 1/2*(9*zeta^2 - 18*zeta - 18)*q^298 - 
16*zeta*q^301 + (-8*zeta^2 + 4*zeta + 16)*q^302 + (2*zeta^2 + 2*zeta - 4)*q^304 
+ 1/2*(-3*zeta^2 + 6)*q^305 + (-10*zeta^2 + 20)*q^307 + (-12*zeta^2 + 6*zeta + 
24)*q^310 + 12*zeta*q^311 + 1/2*(23*zeta^2 - 23*zeta - 46)*q^313 + 
1/2*(-13*zeta^2 + 26*zeta + 26)*q^314 + (8*zeta^2 - 16*zeta - 16)*q^316 + 
1/2*(21*zeta^2 - 21*zeta - 42)*q^317 + 1/2*(-6*zeta^2 + 3*zeta + 12)*q^320 + 
(-6*zeta^2 + 12)*q^323 + (2*zeta^2 - 4)*q^325 + (4*zeta^2 + 4*zeta - 8)*q^326 + 
(-6*zeta^2 + 3*zeta + 12)*q^328 + 24*zeta*q^329 + (10*zeta^2 - 10*zeta - 
20)*q^331 + (6*zeta^2 - 12*zeta - 12)*q^332 + (6*zeta^2 - 12*zeta - 12)*q^334 + 
(6*zeta^2 - 6*zeta - 12)*q^335 + zeta*q^337 + (12*zeta^2 - 6*zeta - 24)*q^338 + 
1/2*(-9*zeta^2 - 9*zeta + 18)*q^340 + (4*zeta^2 - 8)*q^343 + (4*zeta^2 + 4*zeta 
- 8)*q^344 + 1/2*(6*zeta^2 - 3*zeta - 12)*q^346 + 6*zeta*q^347 + (7*zeta^2 - 
7*zeta - 14)*q^349 + (-8*zeta^2 + 16*zeta + 16)*q^350 + (-9*zeta^2 + 9*zeta + 
18)*q^353 + 18*zeta*q^355 + 1/2*(-6*zeta^2 + 3*zeta + 12)*q^356 + (6*zeta^2 + 
6*zeta - 12)*q^358 + 1/2*(3*zeta^2 - 6)*q^361 + (-5*zeta^2 - 5*zeta + 10)*q^362 
+ (4*zeta^2 - 2*zeta - 8)*q^364 - 33/2*zeta*q^365 + (4*zeta^2 - 4*zeta - 
8)*q^367 + 1/2*(3*zeta^2 - 6*zeta - 6)*q^370 + (12*zeta^2 - 12*zeta - 24)*q^371 
- 5*zeta*q^373 + (-6*zeta^2 - 6*zeta + 12)*q^376 + 1/2*(9*zeta^2 - 18)*q^377 + 
(14*zeta^2 - 28)*q^379 + (-6*zeta^2 - 6*zeta + 12)*q^380 + (-12*zeta^2 + 6*zeta 
+ 24)*q^382 - 6*zeta*q^383 + 1/2*(-13*zeta^2 + 26*zeta + 26)*q^386 + (-zeta^2 + 
2*zeta + 2)*q^388 + (-3*zeta^2 + 3*zeta + 6)*q^389 + 1/2*(-18*zeta^2 + 9*zeta + 
36)*q^392 + 1/2*(-3*zeta^2 - 3*zeta + 6)*q^394 + (-24*zeta^2 + 48)*q^395 + 
1/2*(25*zeta^2 - 50)*q^397 + (-2*zeta^2 - 2*zeta + 4)*q^398 + (4*zeta^2 - 2*zeta
- 8)*q^400 - 3/2*zeta*q^401 + (2*zeta^2 - 2*zeta - 4)*q^403 + (3*zeta^2 - 6*zeta
- 6)*q^404 + (-18*zeta^2 + 36*zeta + 36)*q^406 - 25/2*zeta*q^409 + (18*zeta^2 - 
9*zeta - 36)*q^410 + (2*zeta^2 + 2*zeta - 4)*q^412 + (-18*zeta^2 + 36)*q^415 + 
1/2*(-zeta^2 - zeta + 2)*q^416 - 12*zeta*q^419 + 1/2*(-13*zeta^2 + 13*zeta + 
26)*q^421 + (4*zeta^2 - 8*zeta - 8)*q^422 + (-3*zeta^2 + 6*zeta + 6)*q^424 + 
(-6*zeta^2 + 6*zeta + 12)*q^425 + 2*zeta*q^427 + (12*zeta^2 - 6*zeta - 24)*q^428
+ (-12*zeta^2 - 12*zeta + 24)*q^430 + (6*zeta^2 - 12)*q^431 + 1/2*(-11*zeta^2 + 
22)*q^433 + (8*zeta^2 + 8*zeta - 16)*q^434 + 1/2*(22*zeta^2 - 11*zeta - 
44)*q^436 + (-14*zeta^2 + 14*zeta + 28)*q^439 + 1/2*(3*zeta^2 - 6*zeta - 
6)*q^442 + (-6*zeta^2 + 6*zeta + 12)*q^443 + 9/2*zeta*q^445 + (-8*zeta^2 + 
4*zeta + 16)*q^446 + (2*zeta^2 + 2*zeta - 4)*q^448 + (9*zeta^2 - 18)*q^449 + 
1/2*(15*zeta^2 + 15*zeta - 30)*q^452 + (12*zeta^2 - 6*zeta - 24)*q^454 - 
6*zeta*q^455 + 1/2*(-zeta^2 + zeta + 2)*q^457 + 1/2*(23*zeta^2 - 46*zeta - 
46)*q^458 + (9*zeta^2 - 9*zeta - 18)*q^461 + 4*zeta*q^463 + 1/2*(18*zeta^2 - 
9*zeta - 36)*q^464 + 1/2*(21*zeta^2 + 21*zeta - 42)*q^466 + (12*zeta^2 - 
24)*q^467 + (-8*zeta^2 + 16)*q^469 + (18*zeta^2 + 18*zeta - 36)*q^470 + 
(-8*zeta^2 + 8*zeta + 16)*q^475 + (-6*zeta^2 + 12*zeta + 12)*q^476 + (6*zeta^2 -
12*zeta - 12)*q^478 + (-6*zeta^2 + 6*zeta + 12)*q^479 + 1/2*zeta*q^481 + 
1/2*(26*zeta^2 - 13*zeta - 52)*q^482 + 1/2*(11*zeta^2 + 11*zeta - 22)*q^484 + 
(3*zeta^2 - 6)*q^485 + (2*zeta^2 - 4)*q^487 + 1/2*(-zeta^2 - zeta + 2)*q^488 + 
1/2*(54*zeta^2 - 27*zeta - 108)*q^490 + 1/2*(-27*zeta^2 + 27*zeta + 54)*q^493 + 
(2*zeta^2 - 4*zeta - 4)*q^494 + (2*zeta^2 - 4*zeta - 4)*q^496 + (24*zeta^2 - 
24*zeta - 48)*q^497 - 20*zeta*q^499 + 1/2*(6*zeta^2 - 3*zeta - 12)*q^500 + 
(-12*zeta^2 - 12*zeta + 24)*q^502 + (-9*zeta^2 + 18)*q^505 + (-16*zeta^2 + 
8*zeta + 32)*q^508 - 15*zeta*q^509 + (-22*zeta^2 + 22*zeta + 44)*q^511 + 
1/2*(zeta^2 - 2*zeta - 2)*q^512 + 1/2*(-15*zeta^2 + 30*zeta + 30)*q^514 + 
(6*zeta^2 - 6*zeta - 12)*q^515 + (-4*zeta^2 + 2*zeta + 8)*q^518 + 1/2*(3*zeta^2 
+ 3*zeta - 6)*q^520 + (-3*zeta^2 + 6)*q^521 + (8*zeta^2 - 16)*q^523 + (6*zeta^2 
+ 6*zeta - 12)*q^524 + (-12*zeta^2 + 6*zeta + 24)*q^526 + 6*zeta*q^527 + 
1/2*(-23*zeta^2 + 23*zeta + 46)*q^529 + (9*zeta^2 - 18*zeta - 18)*q^530 + 
(-8*zeta^2 + 16*zeta + 16)*q^532 + (-3*zeta^2 + 3*zeta + 6)*q^533 - 
18*zeta*q^535 + (4*zeta^2 - 2*zeta - 8)*q^536 + 1/2*(21*zeta^2 + 21*zeta - 
42)*q^538 + 1/2*(zeta^2 - 2)*q^541 + (-8*zeta^2 - 8*zeta + 16)*q^542 + 
1/2*(6*zeta^2 - 3*zeta - 12)*q^544 - 33/2*zeta*q^545 + (22*zeta^2 - 22*zeta - 
44)*q^547 + 1/2*(-9*zeta^2 + 18*zeta + 18)*q^548 + (-18*zeta^2 + 18*zeta + 
36)*q^551 + 32*zeta*q^553 + (10*zeta^2 - 5*zeta - 20)*q^554 + (-10*zeta^2 - 
10*zeta + 20)*q^556 + 1/2*(3*zeta^2 - 6)*q^557 + (4*zeta^2 - 8)*q^559 + 
(-6*zeta^2 - 6*zeta + 12)*q^560 + 1/2*(54*zeta^2 - 27*zeta - 108)*q^562 + 
6*zeta*q^563 + 1/2*(45*zeta^2 - 45*zeta - 90)*q^565 + (-2*zeta^2 + 4*zeta + 
4)*q^566 + (-6*zeta^2 + 12*zeta + 12)*q^568 + 1/2*(-15*zeta^2 + 15*zeta + 
30)*q^569 - 8*zeta*q^571 + (-12*zeta^2 - 12*zeta + 24)*q^574 + 1/2*(25*zeta^2 - 
50)*q^577 + (-4*zeta^2 - 4*zeta + 8)*q^578 + 1/2*(-54*zeta^2 + 27*zeta + 
108)*q^580 + 24*zeta*q^581 + 1/2*(11*zeta^2 - 22*zeta - 22)*q^584 + 
1/2*(9*zeta^2 - 18*zeta - 18)*q^586 + (-12*zeta^2 + 12*zeta + 24)*q^587 + 
8*zeta*q^589 + 1/2*(zeta^2 + zeta - 2)*q^592 + 1/2*(-33*zeta^2 + 66)*q^593 + 
(18*zeta^2 - 36)*q^595 + 1/2*(-9*zeta^2 - 9*zeta + 18)*q^596 - 18*zeta*q^599 + 
1/2*(35*zeta^2 - 35*zeta - 70)*q^601 + (-16*zeta^2 + 32*zeta + 32)*q^602 + 
(-4*zeta^2 + 8*zeta + 8)*q^604 + 1/2*(33*zeta^2 - 33*zeta - 66)*q^605 + 
10*zeta*q^607 + (4*zeta^2 - 2*zeta - 8)*q^608 + 1/2*(3*zeta^2 + 3*zeta - 
6)*q^610 + (-6*zeta^2 + 12)*q^611 + (-19*zeta^2 + 38)*q^613 + (10*zeta^2 + 
10*zeta - 20)*q^614 - 3/2*zeta*q^617 + (4*zeta^2 - 4*zeta - 8)*q^619 + 
(-6*zeta^2 + 12*zeta + 12)*q^620 + (12*zeta^2 - 24*zeta - 24)*q^622 + (6*zeta^2 
- 6*zeta - 12)*q^623 - 29/2*zeta*q^625 + 1/2*(-46*zeta^2 + 23*zeta + 92)*q^626 +
1/2*(13*zeta^2 + 13*zeta - 26)*q^628 + 1/2*(-3*zeta^2 + 6)*q^629 + (-4*zeta^2 + 
8)*q^631 + (-8*zeta^2 - 8*zeta + 16)*q^632 + 1/2*(-42*zeta^2 + 21*zeta + 
84)*q^634 + 24*zeta*q^635 + 1/2*(-9*zeta^2 + 9*zeta + 18)*q^637 + 1/2*(-3*zeta^2
+ 6*zeta + 6)*q^640 + 1/2*(45*zeta^2 - 45*zeta - 90)*q^641 - 2*zeta*q^643 + 
(6*zeta^2 + 6*zeta - 12)*q^646 + (-18*zeta^2 + 36)*q^647 + (-2*zeta^2 - 2*zeta +
4)*q^650 + (8*zeta^2 - 4*zeta - 16)*q^652 + 9*zeta*q^653 + (18*zeta^2 - 18*zeta 
- 36)*q^655 + (-3*zeta^2 + 6*zeta + 6)*q^656 + (24*zeta^2 - 48*zeta - 48)*q^658 
+ (6*zeta^2 - 6*zeta - 12)*q^659 + 23/2*zeta*q^661 + (-20*zeta^2 + 10*zeta + 
40)*q^662 + (-6*zeta^2 - 6*zeta + 12)*q^664 + (24*zeta^2 - 48)*q^665 + 
(-6*zeta^2 - 6*zeta + 12)*q^668 + (-12*zeta^2 + 6*zeta + 24)*q^670 + 
1/2*(11*zeta^2 - 11*zeta - 22)*q^673 + (zeta^2 - 2*zeta - 2)*q^674 + (6*zeta^2 -
12*zeta - 12)*q^676 + (-3*zeta^2 + 3*zeta + 6)*q^677 - 4*zeta*q^679 + 
1/2*(-18*zeta^2 + 9*zeta + 36)*q^680 + (-18*zeta^2 + 36)*q^683 + 1/2*(27*zeta^2 
- 54)*q^685 + (-4*zeta^2 - 4*zeta + 8)*q^686 + (8*zeta^2 - 4*zeta - 16)*q^688 + 
3*zeta*q^689 + (-14*zeta^2 + 14*zeta + 28)*q^691 + 1/2*(3*zeta^2 - 6*zeta - 
6)*q^692 + (6*zeta^2 - 12*zeta - 12)*q^694 + (-30*zeta^2 + 30*zeta + 60)*q^695 -
9*zeta*q^697 + (-14*zeta^2 + 7*zeta + 28)*q^698 + (8*zeta^2 + 8*zeta - 16)*q^700
+ 1/2*(51*zeta^2 - 102)*q^701 + (-2*zeta^2 + 4)*q^703 + (18*zeta^2 - 9*zeta - 
36)*q^706 + 12*zeta*q^707 + 1/2*(47*zeta^2 - 47*zeta - 94)*q^709 + (18*zeta^2 - 
36*zeta - 36)*q^710 + 1/2*(-3*zeta^2 + 6*zeta + 6)*q^712 + (12*zeta^2 - 6*zeta -
24)*q^716 + (-8*zeta^2 + 16)*q^721 + 1/2*(-3*zeta^2 - 3*zeta + 6)*q^722 + 
(-10*zeta^2 + 5*zeta + 20)*q^724 + 18*zeta*q^725 + (-14*zeta^2 + 14*zeta + 
28)*q^727 + (2*zeta^2 - 4*zeta - 4)*q^728 + 1/2*(-33*zeta^2 + 66*zeta + 
66)*q^730 + (-12*zeta^2 + 12*zeta + 24)*q^731 + 7*zeta*q^733 + (-8*zeta^2 + 
4*zeta + 16)*q^734 + (-10*zeta^2 + 20)*q^739 + 1/2*(-3*zeta^2 - 3*zeta + 
6)*q^740 + (-24*zeta^2 + 12*zeta + 48)*q^742 + 6*zeta*q^743 + 1/2*(-27*zeta^2 + 
27*zeta + 54)*q^745 + (-5*zeta^2 + 10*zeta + 10)*q^746 + (-24*zeta^2 + 24*zeta +
48)*q^749 + 10*zeta*q^751 + (-12*zeta^2 + 6*zeta + 24)*q^752 + 1/2*(-9*zeta^2 - 
9*zeta + 18)*q^754 + (12*zeta^2 - 24)*q^755 + (-19*zeta^2 + 38)*q^757 + 
(-14*zeta^2 - 14*zeta + 28)*q^758 + (-12*zeta^2 + 6*zeta + 24)*q^760 - 
15/2*zeta*q^761 + (-22*zeta^2 + 22*zeta + 44)*q^763 + (-6*zeta^2 + 12*zeta + 
12)*q^764 + (-6*zeta^2 + 12*zeta + 12)*q^766 - 37/2*zeta*q^769 + 1/2*(13*zeta^2 
+ 13*zeta - 26)*q^772 + 1/2*(27*zeta^2 - 54)*q^773 + (8*zeta^2 - 16)*q^775 + 
(zeta^2 + zeta - 2)*q^776 + (6*zeta^2 - 3*zeta - 12)*q^778 - 12*zeta*q^779 + 
1/2*(-9*zeta^2 + 18*zeta + 18)*q^784 + 1/2*(39*zeta^2 - 39*zeta - 78)*q^785 + 
16*zeta*q^787 + 1/2*(-6*zeta^2 + 3*zeta + 12)*q^788 + (24*zeta^2 + 24*zeta - 
48)*q^790 + (-30*zeta^2 + 60)*q^791 + 1/2*(-zeta^2 + 2)*q^793 + 1/2*(-25*zeta^2 
- 25*zeta + 50)*q^794 + (-4*zeta^2 + 2*zeta + 8)*q^796 - 51/2*zeta*q^797 + 
(18*zeta^2 - 18*zeta - 36)*q^799 + (2*zeta^2 - 4*zeta - 4)*q^800 + 
1/2*(-3*zeta^2 + 6*zeta + 6)*q^802 + (-4*zeta^2 + 2*zeta + 8)*q^806 + (-3*zeta^2
- 3*zeta + 6)*q^808 + 1/2*(39*zeta^2 - 78)*q^809 + (8*zeta^2 - 16)*q^811 + 
(18*zeta^2 + 18*zeta - 36)*q^812 - 12*zeta*q^815 + (-16*zeta^2 + 16*zeta + 
32)*q^817 + 1/2*(-25*zeta^2 + 50*zeta + 50)*q^818 + (9*zeta^2 - 18*zeta - 
18)*q^820 + 1/2*(-15*zeta^2 + 15*zeta + 30)*q^821 + 22*zeta*q^823 + (4*zeta^2 - 
2*zeta - 8)*q^824 + (24*zeta^2 - 48)*q^827 + (-7*zeta^2 + 14)*q^829 + (18*zeta^2
+ 18*zeta - 36)*q^830 + 1/2*(-2*zeta^2 + zeta + 4)*q^832 - 27/2*zeta*q^833 + 
(-18*zeta^2 + 18*zeta + 36)*q^835 + (-12*zeta^2 + 24*zeta + 24)*q^838 + 
(12*zeta^2 - 12*zeta - 24)*q^839 + 26*zeta*q^841 + 1/2*(26*zeta^2 - 13*zeta - 
52)*q^842 + (-4*zeta^2 - 4*zeta + 8)*q^844 + (-18*zeta^2 + 36)*q^845 + 
(-22*zeta^2 + 44)*q^847 + (3*zeta^2 + 3*zeta - 6)*q^848 + (12*zeta^2 - 6*zeta - 
24)*q^850 + (-5*zeta^2 + 5*zeta + 10)*q^853 + (2*zeta^2 - 4*zeta - 4)*q^854 + 
(6*zeta^2 - 12*zeta - 12)*q^856 + 1/2*(-39*zeta^2 + 39*zeta + 78)*q^857 - 
26*zeta*q^859 + (-24*zeta^2 + 12*zeta + 48)*q^860 + (-6*zeta^2 - 6*zeta + 
12)*q^862 + (-12*zeta^2 + 24)*q^863 + 1/2*(-9*zeta^2 + 18)*q^865 + 
1/2*(11*zeta^2 + 11*zeta - 22)*q^866 + (16*zeta^2 - 8*zeta - 32)*q^868 + 
(2*zeta^2 - 2*zeta - 4)*q^871 + 1/2*(11*zeta^2 - 22*zeta - 22)*q^872 + 
(-6*zeta^2 + 6*zeta + 12)*q^875 - 25/2*zeta*q^877 + (28*zeta^2 - 14*zeta - 
56)*q^878 + (-15*zeta^2 + 30)*q^881 + (2*zeta^2 - 4)*q^883 + 1/2*(-3*zeta^2 - 
3*zeta + 6)*q^884 + (12*zeta^2 - 6*zeta - 24)*q^886 + 12*zeta*q^887 + (32*zeta^2
- 32*zeta - 64)*q^889 + 1/2*(9*zeta^2 - 18*zeta - 18)*q^890 + (-4*zeta^2 + 
8*zeta + 8)*q^892 + (24*zeta^2 - 24*zeta - 48)*q^893 - 18*zeta*q^895 + (4*zeta^2
- 2*zeta - 8)*q^896 + (-9*zeta^2 - 9*zeta + 18)*q^898 + (18*zeta^2 - 36)*q^899 +
(-9*zeta^2 + 18)*q^901 + 1/2*(30*zeta^2 - 15*zeta - 60)*q^904 + 15*zeta*q^905 + 
(-8*zeta^2 + 8*zeta + 16)*q^907 + (6*zeta^2 - 12*zeta - 12)*q^908 + (-6*zeta^2 +
12*zeta + 12)*q^910 + (12*zeta^2 - 12*zeta - 24)*q^911 + 1/2*(2*zeta^2 - zeta - 
4)*q^914 + 1/2*(-23*zeta^2 - 23*zeta + 46)*q^916 + (-24*zeta^2 + 48)*q^917 + 
(8*zeta^2 - 16)*q^919 + (-18*zeta^2 + 9*zeta + 36)*q^922 + 6*zeta*q^923 + 
(-2*zeta^2 + 2*zeta + 4)*q^925 + (4*zeta^2 - 8*zeta - 8)*q^926 + 1/2*(9*zeta^2 -
18*zeta - 18)*q^928 + 1/2*(-3*zeta^2 + 3*zeta + 6)*q^929 - 18*zeta*q^931 + 
1/2*(42*zeta^2 - 21*zeta - 84)*q^932 + (-12*zeta^2 - 12*zeta + 24)*q^934 + 
1/2*(37*zeta^2 - 74)*q^937 + (8*zeta^2 + 8*zeta - 16)*q^938 + (36*zeta^2 - 
18*zeta - 72)*q^940 - 27/2*zeta*q^941 + (-6*zeta^2 + 6*zeta + 12)*q^947 - 
11/2*zeta*q^949 + (16*zeta^2 - 8*zeta - 32)*q^950 + (6*zeta^2 + 6*zeta - 
12)*q^952 + 1/2*(-9*zeta^2 + 18)*q^953 + (18*zeta^2 - 36)*q^955 + (-6*zeta^2 - 
6*zeta + 12)*q^956 + (12*zeta^2 - 6*zeta - 24)*q^958 - 18*zeta*q^959 + 
1/2*(-15*zeta^2 + 15*zeta + 30)*q^961 + 1/2*(zeta^2 - 2*zeta - 2)*q^962 + 
1/2*(13*zeta^2 - 26*zeta - 26)*q^964 + 1/2*(39*zeta^2 - 39*zeta - 78)*q^965 - 
2*zeta*q^967 + 1/2*(22*zeta^2 - 11*zeta - 44)*q^968 + (-3*zeta^2 - 3*zeta + 
6)*q^970 + (18*zeta^2 - 36)*q^971 + (40*zeta^2 - 80)*q^973 + (-2*zeta^2 - 2*zeta
+ 4)*q^974 + 1/2*(-2*zeta^2 + zeta + 4)*q^976 - 9*zeta*q^977 + 1/2*(27*zeta^2 - 
54*zeta - 54)*q^980 + (24*zeta^2 - 24*zeta - 48)*q^983 + 9/2*zeta*q^985 + 
1/2*(54*zeta^2 - 27*zeta - 108)*q^986 + (-2*zeta^2 - 2*zeta + 4)*q^988 + 
(26*zeta^2 - 52)*q^991 + (-2*zeta^2 - 2*zeta + 4)*q^992 + (-48*zeta^2 + 24*zeta 
+ 96)*q^994 + 6*zeta*q^995 + 1/2*(-37*zeta^2 + 37*zeta + 74)*q^997 + (-20*zeta^2
+ 40*zeta + 40)*q^998 + 1/2*(3*zeta^2 - 6*zeta - 6)*q^1000 + (-24*zeta^2 + 
12*zeta + 48)*q^1004 + (-12*zeta^2 + 24)*q^1007 + 1/2*(-11*zeta^2 + 22)*q^1009 +
O(q^1010), zeta*q^3 + (-zeta^2 + 2*zeta + 2)*q^6 + (zeta^2 - 2*zeta - 2)*q^9 + 
(-zeta^2 - zeta + 2)*q^12 + (3*zeta^2 - 3*zeta - 6)*q^18 + (-2*zeta^2 + 4)*q^21 
+ (2*zeta^2 - zeta - 4)*q^24 + (-3*zeta^2 + 3*zeta + 6)*q^27 + (3*zeta^2 - 
6)*q^33 + 3*zeta*q^36 + (2*zeta^2 - 2*zeta - 4)*q^39 + (-2*zeta^2 - 2*zeta + 
4)*q^42 + (-zeta^2 + 2*zeta + 2)*q^48 - 3*zeta*q^51 + (-6*zeta^2 + 3*zeta + 
12)*q^54 - zeta*q^57 + (2*zeta^2 + 2*zeta - 4)*q^63 + (3*zeta^2 + 3*zeta - 
6)*q^66 + (-6*zeta^2 + 6*zeta + 12)*q^69 + (-3*zeta^2 + 6)*q^72 + (5*zeta^2 - 
10)*q^75 + (4*zeta^2 - 2*zeta - 8)*q^78 + (6*zeta^2 - 3*zeta - 12)*q^81 + 
(4*zeta^2 - 2*zeta - 8)*q^84 + (-6*zeta^2 + 12)*q^87 + (-4*zeta^2 + 4*zeta + 
8)*q^93 + (-zeta^2 - zeta + 2)*q^96 + (-3*zeta^2 - 3*zeta + 6)*q^99 + (3*zeta^2 
- 6*zeta - 6)*q^102 + (3*zeta^2 - 6*zeta - 6)*q^108 - 4*zeta*q^111 + (zeta^2 - 
2*zeta - 2)*q^114 + (-4*zeta^2 + 2*zeta + 8)*q^117 + (9*zeta^2 - 9*zeta - 
18)*q^123 + 6*zeta*q^126 + (zeta^2 - 2)*q^129 + (-6*zeta^2 + 3*zeta + 12)*q^132 
+ (-12*zeta^2 + 6*zeta + 24)*q^138 + (6*zeta^2 - 12)*q^141 + (3*zeta^2 - 3*zeta 
- 6)*q^144 + (-3*zeta^2 + 3*zeta + 6)*q^147 + (5*zeta^2 + 5*zeta - 10)*q^150 + 
(-3*zeta^2 + 6*zeta + 6)*q^153 + (-2*zeta^2 + 4*zeta + 4)*q^156 + 12*zeta*q^159 
+ (9*zeta^2 - 18)*q^162 + (-2*zeta^2 + 4*zeta + 4)*q^168 + (-zeta^2 + 2*zeta + 
2)*q^171 + (-6*zeta^2 - 6*zeta + 12)*q^174 + (3*zeta^2 - 3*zeta - 6)*q^177 + 
(-8*zeta^2 + 16)*q^183 + (-8*zeta^2 + 4*zeta + 16)*q^186 - 6*zeta*q^189 + 
(2*zeta^2 - zeta - 4)*q^192 - 9*zeta*q^198 + (5*zeta^2 - 5*zeta - 10)*q^201 + 
(3*zeta^2 + 3*zeta - 6)*q^204 + (12*zeta^2 - 6*zeta - 24)*q^207 - 12*zeta*q^213 
+ (3*zeta^2 + 3*zeta - 6)*q^216 + 11*zeta*q^219 + (4*zeta^2 - 8*zeta - 8)*q^222 
+ (-5*zeta^2 - 5*zeta + 10)*q^225 + (zeta^2 + zeta - 2)*q^228 + (-6*zeta^2 + 
6*zeta + 12)*q^231 + (-6*zeta^2 + 12)*q^234 + (4*zeta^2 - 8)*q^237 + (-9*zeta^2 
+ 18)*q^243 + (18*zeta^2 - 9*zeta - 36)*q^246 + (-12*zeta^2 + 24)*q^249 + 
(-6*zeta^2 + 12)*q^252 + (zeta^2 + zeta - 2)*q^258 + (6*zeta^2 + 6*zeta - 
12)*q^261 + (3*zeta^2 - 6*zeta - 6)*q^264 + 6*zeta*q^267 + 4*zeta*q^273 + 
(6*zeta^2 - 12*zeta - 12)*q^276 + (8*zeta^2 - 4*zeta - 16)*q^279 + (6*zeta^2 + 
6*zeta - 12)*q^282 + 3*zeta*q^288 + (-5*zeta^2 + 10)*q^291 + (-6*zeta^2 + 3*zeta
+ 12)*q^294 + 9*zeta*q^297 + (-10*zeta^2 + 5*zeta + 20)*q^300 + (-9*zeta^2 + 
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
(6*zeta^2 - 12)*q^519 + 18*zeta*q^522 + (-10*zeta^2 + 10*zeta + 20)*q^525 + 
(3*zeta^2 + 3*zeta - 6)*q^528 + (-6*zeta^2 + 3*zeta + 12)*q^531 + (-6*zeta^2 + 
12*zeta + 12)*q^534 + 12*zeta*q^537 + 14*zeta*q^543 + (-4*zeta^2 + 8*zeta + 
8)*q^546 + (8*zeta^2 + 8*zeta - 16)*q^549 + (6*zeta^2 + 6*zeta - 12)*q^552 + 
(12*zeta^2 - 24)*q^558 + (-9*zeta^2 + 18)*q^561 + (-12*zeta^2 + 6*zeta + 
24)*q^564 + (-6*zeta^2 + 12*zeta + 12)*q^567 + (18*zeta^2 - 36)*q^573 + 
(-3*zeta^2 + 6)*q^576 + (5*zeta^2 - 5*zeta - 10)*q^579 + (-5*zeta^2 - 5*zeta + 
10)*q^582 + (3*zeta^2 - 6*zeta - 6)*q^588 - 12*zeta*q^591 + (-9*zeta^2 + 18*zeta
+ 18)*q^594 - 10*zeta*q^597 + (5*zeta^2 - 10*zeta - 10)*q^600 + (-10*zeta^2 + 
5*zeta + 20)*q^603 + (12*zeta^2 - 12*zeta - 24)*q^609 - 9*zeta*q^612 + 
(28*zeta^2 - 14*zeta - 56)*q^618 + (-18*zeta^2 + 36)*q^621 + (4*zeta^2 - 2*zeta 
- 8)*q^624 + (-3*zeta^2 + 6)*q^627 + (20*zeta^2 - 20*zeta - 40)*q^633 + 
(-12*zeta^2 - 12*zeta + 24)*q^636 + (-12*zeta^2 + 24*zeta + 24)*q^639 + 
(-3*zeta^2 + 6*zeta + 6)*q^642 - 9*zeta*q^648 - 8*zeta*q^651 + (16*zeta^2 - 
32*zeta - 32)*q^654 + (11*zeta^2 - 22*zeta - 22)*q^657 + (-6*zeta^2 + 6*zeta + 
12)*q^663 + (-12*zeta^2 + 12*zeta + 24)*q^666 + (-26*zeta^2 + 52)*q^669 + 
(4*zeta^2 - 2*zeta - 8)*q^672 + 15*zeta*q^675 + (12*zeta^2 - 6*zeta - 24)*q^678 
+ (-21*zeta^2 + 42)*q^681 - 3*zeta*q^684 + (14*zeta^2 - 14*zeta - 28)*q^687 + 
(12*zeta^2 - 6*zeta - 24)*q^693 + (-6*zeta^2 + 12*zeta + 12)*q^696 + 
3*zeta*q^699 + (6*zeta^2 + 6*zeta - 12)*q^702 + (-3*zeta^2 + 6*zeta + 6)*q^708 +
(-4*zeta^2 - 4*zeta + 8)*q^711 + (6*zeta^2 + 6*zeta - 12)*q^714 + (6*zeta^2 - 
6*zeta - 12)*q^717 + (7*zeta^2 - 14)*q^723 + (-4*zeta^2 + 2*zeta + 8)*q^726 + 
(9*zeta^2 + 9*zeta - 18)*q^729 + (16*zeta^2 - 8*zeta - 32)*q^732 + (-27*zeta^2 +
54)*q^738 + (-2*zeta^2 + 2*zeta + 4)*q^741 + (4*zeta^2 + 4*zeta - 8)*q^744 + 
(12*zeta^2 + 12*zeta - 24)*q^747 + 21*zeta*q^753 + (6*zeta^2 + 6*zeta - 
12)*q^756 + 18*zeta*q^759 + (-2*zeta^2 + 4*zeta + 4)*q^762 + (-zeta^2 - zeta + 
2)*q^768 + (-21*zeta^2 + 21*zeta + 42)*q^771 - 3*zeta*q^774 + (8*zeta^2 - 
16)*q^777 - 18*zeta*q^783 + (-18*zeta^2 + 36)*q^789 + (-9*zeta^2 + 9*zeta + 
18)*q^792 + (2*zeta^2 + 2*zeta - 4)*q^798 + (6*zeta^2 - 12*zeta - 12)*q^801 + 
(-5*zeta^2 + 10*zeta + 10)*q^804 - 24*zeta*q^807 + 20*zeta*q^813 + (3*zeta^2 - 
6*zeta - 6)*q^816 + (4*zeta^2 - 8*zeta - 8)*q^819 + (3*zeta^2 + 3*zeta - 
6)*q^822 + (15*zeta^2 - 15*zeta - 30)*q^825 + (-18*zeta^2 + 18*zeta + 36)*q^828 
+ (10*zeta^2 - 20)*q^831 + (-38*zeta^2 + 19*zeta + 76)*q^834 + (-12*zeta^2 + 
24)*q^837 + (-6*zeta^2 + 12)*q^843 - 18*zeta*q^846 + (-4*zeta^2 + 4*zeta + 
8)*q^849 + (12*zeta^2 + 12*zeta - 24)*q^852 + (6*zeta^2 - 12*zeta - 12)*q^858 + 
18*zeta*q^861 + (3*zeta^2 - 6*zeta - 6)*q^864 - 8*zeta*q^867 + (5*zeta^2 + 
5*zeta - 10)*q^873 + (-11*zeta^2 - 11*zeta + 22)*q^876 + (30*zeta^2 - 30*zeta - 
60)*q^879 + (9*zeta^2 - 18)*q^882 + (-8*zeta^2 + 4*zeta + 16)*q^888 + (9*zeta^2 
- 18*zeta - 18)*q^891 + (-12*zeta^2 + 6*zeta + 24)*q^894 + (12*zeta^2 - 
24)*q^897 + (15*zeta^2 - 30)*q^900 + (-2*zeta^2 + 2*zeta + 4)*q^903 + (10*zeta^2
+ 10*zeta - 20)*q^906 + (zeta^2 - 2*zeta - 2)*q^912 + (18*zeta^2 - 9*zeta - 
36)*q^918 - 7*zeta*q^921 + (6*zeta^2 - 12*zeta - 12)*q^924 + (-28*zeta^2 + 
14*zeta + 56)*q^927 + (-18*zeta^2 + 18*zeta + 36)*q^933 + 6*zeta*q^936 + 
(-29*zeta^2 + 58)*q^939 + (-8*zeta^2 + 4*zeta + 16)*q^942 + (-8*zeta^2 + 4*zeta 
+ 16)*q^948 + (18*zeta^2 - 36)*q^951 + (36*zeta^2 - 36*zeta - 72)*q^954 + 
(-18*zeta^2 + 18*zeta + 36)*q^957 + (3*zeta^2 - 6*zeta - 6)*q^963 + (12*zeta^2 -
24*zeta - 24)*q^966 + 3*zeta*q^969 + (18*zeta^2 - 9*zeta - 36)*q^972 - 
10*zeta*q^975 + (4*zeta^2 - 8*zeta - 8)*q^978 + (-16*zeta^2 + 32*zeta + 
32)*q^981 + (-9*zeta^2 - 9*zeta + 18)*q^984 + (-12*zeta^2 + 12*zeta + 24)*q^987 
+ (4*zeta^2 - 8)*q^993 + (24*zeta^2 - 12*zeta - 48)*q^996 + (12*zeta^2 - 12*zeta
- 24)*q^999 + (-24*zeta^2 + 12*zeta + 48)*q^1002 + 6*zeta*q^1008 + O(q^1010), 
1/2*(-zeta^2 + 2*zeta + 2)*q + 1/2*(-3*zeta^2 + 3*zeta + 6)*q^2 - 3/2*zeta*q^4 +
1/2*(6*zeta^2 - 3*zeta - 12)*q^5 + (2*zeta^2 + 2*zeta - 4)*q^7 + 1/2*(3*zeta^2 -
6)*q^8 + 1/2*(9*zeta^2 - 18)*q^10 + 1/2*(-2*zeta^2 + zeta + 4)*q^13 + 
6*zeta*q^14 + 1/2*(-3*zeta^2 + 3*zeta + 6)*q^16 + 1/2*(-3*zeta^2 + 6*zeta + 
6)*q^17 + (2*zeta^2 - 4*zeta - 4)*q^19 + 1/2*(-9*zeta^2 + 9*zeta + 18)*q^20 + 
(-2*zeta^2 - 2*zeta + 4)*q^25 + 1/2*(-3*zeta^2 + 6)*q^26 + (-6*zeta^2 + 12)*q^28
+ 1/2*(9*zeta^2 + 9*zeta - 18)*q^29 + (-4*zeta^2 + 2*zeta + 8)*q^31 - 
3/2*zeta*q^32 + 1/2*(-9*zeta^2 + 9*zeta + 18)*q^34 + (6*zeta^2 - 12*zeta - 
12)*q^35 + 1/2*(zeta^2 - 2*zeta - 2)*q^37 + (6*zeta^2 - 6*zeta - 12)*q^38 - 
9/2*zeta*q^40 + (-6*zeta^2 + 3*zeta + 12)*q^41 + (-4*zeta^2 - 4*zeta + 8)*q^43 +
(-6*zeta^2 - 6*zeta + 12)*q^47 + 1/2*(18*zeta^2 - 9*zeta - 36)*q^49 - 
6*zeta*q^50 + 1/2*(3*zeta^2 - 3*zeta - 6)*q^52 + (-3*zeta^2 + 6*zeta + 6)*q^53 +
(6*zeta^2 - 6*zeta - 12)*q^56 + 27/2*zeta*q^58 + 1/2*(zeta^2 + zeta - 2)*q^61 + 
(-6*zeta^2 + 12)*q^62 + 1/2*(3*zeta^2 - 6)*q^64 + 1/2*(3*zeta^2 + 3*zeta - 
6)*q^65 + (-4*zeta^2 + 2*zeta + 8)*q^67 - 9/2*zeta*q^68 + (18*zeta^2 - 18*zeta -
36)*q^70 + (-6*zeta^2 + 12*zeta + 12)*q^71 + 1/2*(-11*zeta^2 + 22*zeta + 
22)*q^73 + 1/2*(3*zeta^2 - 3*zeta - 6)*q^74 + 6*zeta*q^76 + (8*zeta^2 + 8*zeta -
16)*q^79 + 1/2*(9*zeta^2 - 18)*q^80 + (-9*zeta^2 + 18)*q^82 + (-6*zeta^2 - 
6*zeta + 12)*q^83 + 1/2*(18*zeta^2 - 9*zeta - 36)*q^85 - 12*zeta*q^86 + 
1/2*(-3*zeta^2 + 6*zeta + 6)*q^89 + (-2*zeta^2 + 4*zeta + 4)*q^91 - 18*zeta*q^94
+ (-12*zeta^2 + 6*zeta + 24)*q^95 + (-zeta^2 - zeta + 2)*q^97 + 1/2*(27*zeta^2 -
54)*q^98 + (6*zeta^2 - 12)*q^100 + (-3*zeta^2 - 3*zeta + 6)*q^101 + (-4*zeta^2 +
2*zeta + 8)*q^103 + 3/2*zeta*q^104 + (-9*zeta^2 + 9*zeta + 18)*q^106 + (6*zeta^2
- 12*zeta - 12)*q^107 + 1/2*(-11*zeta^2 + 22*zeta + 22)*q^109 + 6*zeta*q^112 + 
1/2*(30*zeta^2 - 15*zeta - 60)*q^113 + 1/2*(-27*zeta^2 + 54)*q^116 + (6*zeta^2 +
6*zeta - 12)*q^119 + 1/2*(-22*zeta^2 + 11*zeta + 44)*q^121 + 3/2*zeta*q^122 + 
(6*zeta^2 - 6*zeta - 12)*q^124 + 1/2*(3*zeta^2 - 6*zeta - 6)*q^125 + (8*zeta^2 -
16*zeta - 16)*q^127 + 1/2*(-3*zeta^2 + 3*zeta + 6)*q^128 + 9/2*zeta*q^130 + 
(12*zeta^2 - 6*zeta - 24)*q^131 + (-8*zeta^2 - 8*zeta + 16)*q^133 + (-6*zeta^2 +
12)*q^134 + 1/2*(9*zeta^2 - 18)*q^136 + 1/2*(9*zeta^2 + 9*zeta - 18)*q^137 + 
(20*zeta^2 - 10*zeta - 40)*q^139 + 18*zeta*q^140 + (-18*zeta^2 + 18*zeta + 
36)*q^142 + 1/2*(27*zeta^2 - 54*zeta - 54)*q^145 + 1/2*(-33*zeta^2 + 33*zeta + 
66)*q^146 + 3/2*zeta*q^148 + 1/2*(-18*zeta^2 + 9*zeta + 36)*q^149 + (-4*zeta^2 -
4*zeta + 8)*q^151 + (-6*zeta^2 + 12)*q^152 + (6*zeta^2 + 6*zeta - 12)*q^155 + 
1/2*(-26*zeta^2 + 13*zeta + 52)*q^157 + 24*zeta*q^158 + 1/2*(-9*zeta^2 + 9*zeta 
+ 18)*q^160 + (-4*zeta^2 + 8*zeta + 8)*q^163 + (9*zeta^2 - 9*zeta - 18)*q^164 - 
18*zeta*q^166 + (-12*zeta^2 + 6*zeta + 24)*q^167 + (6*zeta^2 + 6*zeta - 
12)*q^169 + 1/2*(27*zeta^2 - 54)*q^170 + (12*zeta^2 - 24)*q^172 + 1/2*(-3*zeta^2
- 3*zeta + 6)*q^173 + (-16*zeta^2 + 8*zeta + 32)*q^175 + 1/2*(-9*zeta^2 + 9*zeta
+ 18)*q^178 + (6*zeta^2 - 12*zeta - 12)*q^179 + (5*zeta^2 - 10*zeta - 10)*q^181 
+ (-6*zeta^2 + 6*zeta + 12)*q^182 + 1/2*(-6*zeta^2 + 3*zeta + 12)*q^185 + 
(18*zeta^2 - 36)*q^188 + (-18*zeta^2 + 36)*q^190 + (6*zeta^2 + 6*zeta - 
12)*q^191 + 1/2*(-26*zeta^2 + 13*zeta + 52)*q^193 - 3*zeta*q^194 + 
1/2*(-27*zeta^2 + 27*zeta + 54)*q^196 + 1/2*(-3*zeta^2 + 6*zeta + 6)*q^197 + 
(2*zeta^2 - 4*zeta - 4)*q^199 + (-6*zeta^2 + 6*zeta + 12)*q^200 - 9*zeta*q^202 +
(36*zeta^2 - 18*zeta - 72)*q^203 + (9*zeta^2 + 9*zeta - 18)*q^205 + (-6*zeta^2 +
12)*q^206 + 1/2*(-3*zeta^2 + 6)*q^208 + (8*zeta^2 - 4*zeta - 16)*q^211 - 
9*zeta*q^212 + (18*zeta^2 - 18*zeta - 36)*q^214 + (-12*zeta^2 + 24*zeta + 
24)*q^215 + (-8*zeta^2 + 16*zeta + 16)*q^217 + 1/2*(-33*zeta^2 + 33*zeta + 
66)*q^218 + 1/2*(-6*zeta^2 + 3*zeta + 12)*q^221 + (-4*zeta^2 - 4*zeta + 8)*q^223
+ (-6*zeta^2 + 12)*q^224 + 1/2*(45*zeta^2 - 90)*q^226 + (-6*zeta^2 - 6*zeta + 
12)*q^227 + 1/2*(46*zeta^2 - 23*zeta - 92)*q^229 + 1/2*(27*zeta^2 - 27*zeta - 
54)*q^232 + 1/2*(21*zeta^2 - 42*zeta - 42)*q^233 + (-18*zeta^2 + 36*zeta + 
36)*q^235 + 18*zeta*q^238 + (-12*zeta^2 + 6*zeta + 24)*q^239 + 1/2*(13*zeta^2 + 
13*zeta - 26)*q^241 + 1/2*(-33*zeta^2 + 66)*q^242 + 1/2*(-3*zeta^2 + 6)*q^244 + 
1/2*(-27*zeta^2 - 27*zeta + 54)*q^245 + (4*zeta^2 - 2*zeta - 8)*q^247 + 
6*zeta*q^248 + 1/2*(9*zeta^2 - 9*zeta - 18)*q^250 + (-12*zeta^2 + 24*zeta + 
24)*q^251 + (24*zeta^2 - 24*zeta - 48)*q^254 - 3/2*zeta*q^256 + 1/2*(30*zeta^2 -
15*zeta - 60)*q^257 + (-2*zeta^2 - 2*zeta + 4)*q^259 + 1/2*(-9*zeta^2 + 
18)*q^260 + (18*zeta^2 - 36)*q^262 + (6*zeta^2 + 6*zeta - 12)*q^263 + (18*zeta^2
- 9*zeta - 36)*q^265 - 24*zeta*q^266 + (6*zeta^2 - 6*zeta - 12)*q^268 + 
1/2*(21*zeta^2 - 42*zeta - 42)*q^269 + (8*zeta^2 - 16*zeta - 16)*q^271 + 
1/2*(-9*zeta^2 + 9*zeta + 18)*q^272 + 27/2*zeta*q^274 + (5*zeta^2 + 5*zeta - 
10)*q^277 + (30*zeta^2 - 60)*q^278 + (-18*zeta^2 + 36)*q^280 + 1/2*(-27*zeta^2 -
27*zeta + 54)*q^281 + (-4*zeta^2 + 2*zeta + 8)*q^283 - 18*zeta*q^284 + 
(-12*zeta^2 + 24*zeta + 24)*q^287 + (4*zeta^2 - 8*zeta - 8)*q^289 + 
1/2*(81*zeta^2 - 81*zeta - 162)*q^290 - 33/2*zeta*q^292 + 1/2*(-18*zeta^2 + 
9*zeta + 36)*q^293 + 1/2*(-3*zeta^2 + 6)*q^296 + 1/2*(-27*zeta^2 + 54)*q^298 + 
(-32*zeta^2 + 16*zeta + 64)*q^301 - 12*zeta*q^302 + (6*zeta^2 - 6*zeta - 
12)*q^304 + 1/2*(3*zeta^2 - 6*zeta - 6)*q^305 + (-10*zeta^2 + 20*zeta + 
20)*q^307 + 18*zeta*q^310 + (-24*zeta^2 + 12*zeta + 48)*q^311 + 1/2*(-23*zeta^2 
- 23*zeta + 46)*q^313 + 1/2*(-39*zeta^2 + 78)*q^314 + (-24*zeta^2 + 48)*q^316 + 
1/2*(21*zeta^2 + 21*zeta - 42)*q^317 - 9/2*zeta*q^320 + (6*zeta^2 - 12*zeta - 
12)*q^323 + (2*zeta^2 - 4*zeta - 4)*q^325 + (-12*zeta^2 + 12*zeta + 24)*q^326 + 
9*zeta*q^328 + (-48*zeta^2 + 24*zeta + 96)*q^329 + (-10*zeta^2 - 10*zeta + 
20)*q^331 + (18*zeta^2 - 36)*q^332 + (-18*zeta^2 + 36)*q^334 + (6*zeta^2 + 
6*zeta - 12)*q^335 + (2*zeta^2 - zeta - 4)*q^337 + 18*zeta*q^338 + 
1/2*(-27*zeta^2 + 27*zeta + 54)*q^340 + (4*zeta^2 - 8*zeta - 8)*q^343 + 
(-12*zeta^2 + 12*zeta + 24)*q^344 - 9/2*zeta*q^346 + (-12*zeta^2 + 6*zeta + 
24)*q^347 + (-7*zeta^2 - 7*zeta + 14)*q^349 + (-24*zeta^2 + 48)*q^350 + 
(-9*zeta^2 - 9*zeta + 18)*q^353 + (36*zeta^2 - 18*zeta - 72)*q^355 - 
9/2*zeta*q^356 + (18*zeta^2 - 18*zeta - 36)*q^358 + 1/2*(3*zeta^2 - 6*zeta - 
6)*q^361 + (15*zeta^2 - 15*zeta - 30)*q^362 - 6*zeta*q^364 + 1/2*(66*zeta^2 - 
33*zeta - 132)*q^365 + (-4*zeta^2 - 4*zeta + 8)*q^367 + 1/2*(-9*zeta^2 + 
18)*q^370 + (12*zeta^2 + 12*zeta - 24)*q^371 + (-10*zeta^2 + 5*zeta + 20)*q^373 
+ (-18*zeta^2 + 18*zeta + 36)*q^376 + 1/2*(-9*zeta^2 + 18*zeta + 18)*q^377 + 
(14*zeta^2 - 28*zeta - 28)*q^379 + (18*zeta^2 - 18*zeta - 36)*q^380 + 
18*zeta*q^382 + (12*zeta^2 - 6*zeta - 24)*q^383 + 1/2*(-39*zeta^2 + 78)*q^386 + 
(3*zeta^2 - 6)*q^388 + (-3*zeta^2 - 3*zeta + 6)*q^389 - 27/2*zeta*q^392 + 
1/2*(-9*zeta^2 + 9*zeta + 18)*q^394 + (24*zeta^2 - 48*zeta - 48)*q^395 + 
1/2*(25*zeta^2 - 50*zeta - 50)*q^397 + (6*zeta^2 - 6*zeta - 12)*q^398 - 
6*zeta*q^400 + 1/2*(6*zeta^2 - 3*zeta - 12)*q^401 + (-2*zeta^2 - 2*zeta + 
4)*q^403 + (9*zeta^2 - 18)*q^404 + (54*zeta^2 - 108)*q^406 + 1/2*(-50*zeta^2 + 
25*zeta + 100)*q^409 + 27*zeta*q^410 + (6*zeta^2 - 6*zeta - 12)*q^412 + 
(-18*zeta^2 + 36*zeta + 36)*q^415 + 1/2*(3*zeta^2 - 3*zeta - 6)*q^416 + 
(24*zeta^2 - 12*zeta - 48)*q^419 + 1/2*(13*zeta^2 + 13*zeta - 26)*q^421 + 
(12*zeta^2 - 24)*q^422 + (9*zeta^2 - 18)*q^424 + (-6*zeta^2 - 6*zeta + 12)*q^425
+ (4*zeta^2 - 2*zeta - 8)*q^427 + 18*zeta*q^428 + (-36*zeta^2 + 36*zeta + 
72)*q^430 + (-6*zeta^2 + 12*zeta + 12)*q^431 + 1/2*(-11*zeta^2 + 22*zeta + 
22)*q^433 + (-24*zeta^2 + 24*zeta + 48)*q^434 - 33/2*zeta*q^436 + (14*zeta^2 + 
14*zeta - 28)*q^439 + 1/2*(-9*zeta^2 + 18)*q^442 + (-6*zeta^2 - 6*zeta + 
12)*q^443 + 1/2*(18*zeta^2 - 9*zeta - 36)*q^445 - 12*zeta*q^446 + (6*zeta^2 - 
6*zeta - 12)*q^448 + (-9*zeta^2 + 18*zeta + 18)*q^449 + 1/2*(-45*zeta^2 + 
45*zeta + 90)*q^452 - 18*zeta*q^454 + (12*zeta^2 - 6*zeta - 24)*q^455 + 
1/2*(zeta^2 + zeta - 2)*q^457 + 1/2*(69*zeta^2 - 138)*q^458 + (9*zeta^2 + 9*zeta
- 18)*q^461 + (8*zeta^2 - 4*zeta - 16)*q^463 + 27/2*zeta*q^464 + 1/2*(63*zeta^2 
- 63*zeta - 126)*q^466 + (-12*zeta^2 + 24*zeta + 24)*q^467 + (-8*zeta^2 + 
16*zeta + 16)*q^469 + (-54*zeta^2 + 54*zeta + 108)*q^470 + (8*zeta^2 + 8*zeta - 
16)*q^475 + (-18*zeta^2 + 36)*q^476 + (-18*zeta^2 + 36)*q^478 + (-6*zeta^2 - 
6*zeta + 12)*q^479 + 1/2*(2*zeta^2 - zeta - 4)*q^481 + 39/2*zeta*q^482 + 
1/2*(33*zeta^2 - 33*zeta - 66)*q^484 + (-3*zeta^2 + 6*zeta + 6)*q^485 + 
(2*zeta^2 - 4*zeta - 4)*q^487 + 1/2*(3*zeta^2 - 3*zeta - 6)*q^488 - 
81/2*zeta*q^490 + 1/2*(27*zeta^2 + 27*zeta - 54)*q^493 + (6*zeta^2 - 12)*q^494 +
(-6*zeta^2 + 12)*q^496 + (24*zeta^2 + 24*zeta - 48)*q^497 + (-40*zeta^2 + 
20*zeta + 80)*q^499 + 9/2*zeta*q^500 + (-36*zeta^2 + 36*zeta + 72)*q^502 + 
(-9*zeta^2 + 18*zeta + 18)*q^505 + 24*zeta*q^508 + (30*zeta^2 - 15*zeta - 
60)*q^509 + (22*zeta^2 + 22*zeta - 44)*q^511 + 1/2*(3*zeta^2 - 6)*q^512 + 
1/2*(45*zeta^2 - 90)*q^514 + (6*zeta^2 + 6*zeta - 12)*q^515 - 6*zeta*q^518 + 
1/2*(9*zeta^2 - 9*zeta - 18)*q^520 + (3*zeta^2 - 6*zeta - 6)*q^521 + (8*zeta^2 -
16*zeta - 16)*q^523 + (-18*zeta^2 + 18*zeta + 36)*q^524 + 18*zeta*q^526 + 
(-12*zeta^2 + 6*zeta + 24)*q^527 + 1/2*(23*zeta^2 + 23*zeta - 46)*q^529 + 
(27*zeta^2 - 54)*q^530 + (24*zeta^2 - 48)*q^532 + (-3*zeta^2 - 3*zeta + 6)*q^533
+ (-36*zeta^2 + 18*zeta + 72)*q^535 + 6*zeta*q^536 + 1/2*(63*zeta^2 - 63*zeta - 
126)*q^538 + 1/2*(zeta^2 - 2*zeta - 2)*q^541 + (24*zeta^2 - 24*zeta - 48)*q^542 
- 9/2*zeta*q^544 + 1/2*(66*zeta^2 - 33*zeta - 132)*q^545 + (-22*zeta^2 - 22*zeta
+ 44)*q^547 + 1/2*(-27*zeta^2 + 54)*q^548 + (-18*zeta^2 - 18*zeta + 36)*q^551 + 
(64*zeta^2 - 32*zeta - 128)*q^553 + 15*zeta*q^554 + (-30*zeta^2 + 30*zeta + 
60)*q^556 + 1/2*(-3*zeta^2 + 6*zeta + 6)*q^557 + (4*zeta^2 - 8*zeta - 8)*q^559 +
(18*zeta^2 - 18*zeta - 36)*q^560 - 81/2*zeta*q^562 + (-12*zeta^2 + 6*zeta + 
24)*q^563 + 1/2*(-45*zeta^2 - 45*zeta + 90)*q^565 + (-6*zeta^2 + 12)*q^566 + 
(18*zeta^2 - 36)*q^568 + 1/2*(-15*zeta^2 - 15*zeta + 30)*q^569 + (-16*zeta^2 + 
8*zeta + 32)*q^571 + (-36*zeta^2 + 36*zeta + 72)*q^574 + 1/2*(25*zeta^2 - 
50*zeta - 50)*q^577 + (12*zeta^2 - 12*zeta - 24)*q^578 + 81/2*zeta*q^580 + 
(-48*zeta^2 + 24*zeta + 96)*q^581 + 1/2*(33*zeta^2 - 66)*q^584 + 1/2*(-27*zeta^2
+ 54)*q^586 + (-12*zeta^2 - 12*zeta + 24)*q^587 + (16*zeta^2 - 8*zeta - 
32)*q^589 + 1/2*(3*zeta^2 - 3*zeta - 6)*q^592 + 1/2*(33*zeta^2 - 66*zeta - 
66)*q^593 + (18*zeta^2 - 36*zeta - 36)*q^595 + 1/2*(27*zeta^2 - 27*zeta - 
54)*q^596 + (36*zeta^2 - 18*zeta - 72)*q^599 + 1/2*(-35*zeta^2 - 35*zeta + 
70)*q^601 + (-48*zeta^2 + 96)*q^602 + (12*zeta^2 - 24)*q^604 + 1/2*(33*zeta^2 + 
33*zeta - 66)*q^605 + (20*zeta^2 - 10*zeta - 40)*q^607 + 6*zeta*q^608 + 
1/2*(9*zeta^2 - 9*zeta - 18)*q^610 + (6*zeta^2 - 12*zeta - 12)*q^611 + 
(-19*zeta^2 + 38*zeta + 38)*q^613 + (-30*zeta^2 + 30*zeta + 60)*q^614 + 
1/2*(6*zeta^2 - 3*zeta - 12)*q^617 + (-4*zeta^2 - 4*zeta + 8)*q^619 + 
(-18*zeta^2 + 36)*q^620 + (-36*zeta^2 + 72)*q^622 + (6*zeta^2 + 6*zeta - 
12)*q^623 + 1/2*(-58*zeta^2 + 29*zeta + 116)*q^625 - 69/2*zeta*q^626 + 
1/2*(39*zeta^2 - 39*zeta - 78)*q^628 + 1/2*(3*zeta^2 - 6*zeta - 6)*q^629 + 
(-4*zeta^2 + 8*zeta + 8)*q^631 + (24*zeta^2 - 24*zeta - 48)*q^632 + 
63/2*zeta*q^634 + (-48*zeta^2 + 24*zeta + 96)*q^635 + 1/2*(9*zeta^2 + 9*zeta - 
18)*q^637 + 1/2*(9*zeta^2 - 18)*q^640 + 1/2*(45*zeta^2 + 45*zeta - 90)*q^641 + 
(-4*zeta^2 + 2*zeta + 8)*q^643 + (18*zeta^2 - 18*zeta - 36)*q^646 + (18*zeta^2 -
36*zeta - 36)*q^647 + (6*zeta^2 - 6*zeta - 12)*q^650 - 12*zeta*q^652 + 
(-18*zeta^2 + 9*zeta + 36)*q^653 + (-18*zeta^2 - 18*zeta + 36)*q^655 + 
(-9*zeta^2 + 18)*q^656 + (-72*zeta^2 + 144)*q^658 + (6*zeta^2 + 6*zeta - 
12)*q^659 + 1/2*(46*zeta^2 - 23*zeta - 92)*q^661 - 30*zeta*q^662 + (-18*zeta^2 +
18*zeta + 36)*q^664 + (-24*zeta^2 + 48*zeta + 48)*q^665 + (18*zeta^2 - 18*zeta -
36)*q^668 + 18*zeta*q^670 + 1/2*(-11*zeta^2 - 11*zeta + 22)*q^673 + (3*zeta^2 - 
6)*q^674 + (-18*zeta^2 + 36)*q^676 + (-3*zeta^2 - 3*zeta + 6)*q^677 + (-8*zeta^2
+ 4*zeta + 16)*q^679 - 27/2*zeta*q^680 + (18*zeta^2 - 36*zeta - 36)*q^683 + 
1/2*(27*zeta^2 - 54*zeta - 54)*q^685 + (12*zeta^2 - 12*zeta - 24)*q^686 - 
12*zeta*q^688 + (-6*zeta^2 + 3*zeta + 12)*q^689 + (14*zeta^2 + 14*zeta - 
28)*q^691 + 1/2*(9*zeta^2 - 18)*q^692 + (-18*zeta^2 + 36)*q^694 + (-30*zeta^2 - 
30*zeta + 60)*q^695 + (-18*zeta^2 + 9*zeta + 36)*q^697 - 21*zeta*q^698 + 
(24*zeta^2 - 24*zeta - 48)*q^700 + 1/2*(-51*zeta^2 + 102*zeta + 102)*q^701 + 
(-2*zeta^2 + 4*zeta + 4)*q^703 - 27*zeta*q^706 + (-24*zeta^2 + 12*zeta + 
48)*q^707 + 1/2*(-47*zeta^2 - 47*zeta + 94)*q^709 + (54*zeta^2 - 108)*q^710 + 
1/2*(9*zeta^2 - 18)*q^712 + 18*zeta*q^716 + (-8*zeta^2 + 16*zeta + 16)*q^721 + 
1/2*(9*zeta^2 - 9*zeta - 18)*q^722 + 15*zeta*q^724 + (-36*zeta^2 + 18*zeta + 
72)*q^725 + (14*zeta^2 + 14*zeta - 28)*q^727 + (6*zeta^2 - 12)*q^728 + 
1/2*(99*zeta^2 - 198)*q^730 + (-12*zeta^2 - 12*zeta + 24)*q^731 + (14*zeta^2 - 
7*zeta - 28)*q^733 - 12*zeta*q^734 + (-10*zeta^2 + 20*zeta + 20)*q^739 + 
1/2*(9*zeta^2 - 9*zeta - 18)*q^740 + 36*zeta*q^742 + (-12*zeta^2 + 6*zeta + 
24)*q^743 + 1/2*(27*zeta^2 + 27*zeta - 54)*q^745 + (-15*zeta^2 + 30)*q^746 + 
(-24*zeta^2 - 24*zeta + 48)*q^749 + (20*zeta^2 - 10*zeta - 40)*q^751 - 
18*zeta*q^752 + 1/2*(-27*zeta^2 + 27*zeta + 54)*q^754 + (-12*zeta^2 + 24*zeta + 
24)*q^755 + (-19*zeta^2 + 38*zeta + 38)*q^757 + (42*zeta^2 - 42*zeta - 84)*q^758
+ 18*zeta*q^760 + 1/2*(30*zeta^2 - 15*zeta - 60)*q^761 + (22*zeta^2 + 22*zeta - 
44)*q^763 + (-18*zeta^2 + 36)*q^764 + (18*zeta^2 - 36)*q^766 + 1/2*(-74*zeta^2 +
37*zeta + 148)*q^769 + 1/2*(39*zeta^2 - 39*zeta - 78)*q^772 + 1/2*(-27*zeta^2 + 
54*zeta + 54)*q^773 + (8*zeta^2 - 16*zeta - 16)*q^775 + (-3*zeta^2 + 3*zeta + 
6)*q^776 - 9*zeta*q^778 + (24*zeta^2 - 12*zeta - 48)*q^779 + 1/2*(27*zeta^2 - 
54)*q^784 + 1/2*(39*zeta^2 + 39*zeta - 78)*q^785 + (32*zeta^2 - 16*zeta - 
64)*q^787 - 9/2*zeta*q^788 + (72*zeta^2 - 72*zeta - 144)*q^790 + (30*zeta^2 - 
60*zeta - 60)*q^791 + 1/2*(-zeta^2 + 2*zeta + 2)*q^793 + 1/2*(75*zeta^2 - 
75*zeta - 150)*q^794 + 6*zeta*q^796 + 1/2*(102*zeta^2 - 51*zeta - 204)*q^797 + 
(-18*zeta^2 - 18*zeta + 36)*q^799 + (6*zeta^2 - 12)*q^800 + 1/2*(9*zeta^2 - 
18)*q^802 - 6*zeta*q^806 + (-9*zeta^2 + 9*zeta + 18)*q^808 + 1/2*(-39*zeta^2 + 
78*zeta + 78)*q^809 + (8*zeta^2 - 16*zeta - 16)*q^811 + (-54*zeta^2 + 54*zeta + 
108)*q^812 + (24*zeta^2 - 12*zeta - 48)*q^815 + (16*zeta^2 + 16*zeta - 32)*q^817
+ 1/2*(-75*zeta^2 + 150)*q^818 + (-27*zeta^2 + 54)*q^820 + 1/2*(-15*zeta^2 - 
15*zeta + 30)*q^821 + (44*zeta^2 - 22*zeta - 88)*q^823 + 6*zeta*q^824 + 
(-24*zeta^2 + 48*zeta + 48)*q^827 + (-7*zeta^2 + 14*zeta + 14)*q^829 + 
(-54*zeta^2 + 54*zeta + 108)*q^830 + 3/2*zeta*q^832 + 1/2*(54*zeta^2 - 27*zeta -
108)*q^833 + (18*zeta^2 + 18*zeta - 36)*q^835 + (36*zeta^2 - 72)*q^838 + 
(12*zeta^2 + 12*zeta - 24)*q^839 + (52*zeta^2 - 26*zeta - 104)*q^841 + 
39/2*zeta*q^842 + (-12*zeta^2 + 12*zeta + 24)*q^844 + (18*zeta^2 - 36*zeta - 
36)*q^845 + (-22*zeta^2 + 44*zeta + 44)*q^847 + (-9*zeta^2 + 9*zeta + 18)*q^848 
- 18*zeta*q^850 + (5*zeta^2 + 5*zeta - 10)*q^853 + (6*zeta^2 - 12)*q^854 + 
(-18*zeta^2 + 36)*q^856 + 1/2*(-39*zeta^2 - 39*zeta + 78)*q^857 + (-52*zeta^2 + 
26*zeta + 104)*q^859 - 36*zeta*q^860 + (-18*zeta^2 + 18*zeta + 36)*q^862 + 
(12*zeta^2 - 24*zeta - 24)*q^863 + 1/2*(-9*zeta^2 + 18*zeta + 18)*q^865 + 
1/2*(-33*zeta^2 + 33*zeta + 66)*q^866 - 24*zeta*q^868 + (-2*zeta^2 - 2*zeta + 
4)*q^871 + 1/2*(33*zeta^2 - 66)*q^872 + (-6*zeta^2 - 6*zeta + 12)*q^875 + 
1/2*(-50*zeta^2 + 25*zeta + 100)*q^877 + 42*zeta*q^878 + (15*zeta^2 - 30*zeta - 
30)*q^881 + (2*zeta^2 - 4*zeta - 4)*q^883 + 1/2*(9*zeta^2 - 9*zeta - 18)*q^884 -
18*zeta*q^886 + (-24*zeta^2 + 12*zeta + 48)*q^887 + (-32*zeta^2 - 32*zeta + 
64)*q^889 + 1/2*(27*zeta^2 - 54)*q^890 + (12*zeta^2 - 24)*q^892 + (24*zeta^2 + 
24*zeta - 48)*q^893 + (-36*zeta^2 + 18*zeta + 72)*q^895 + 6*zeta*q^896 + 
(-27*zeta^2 + 27*zeta + 54)*q^898 + (-18*zeta^2 + 36*zeta + 36)*q^899 + 
(-9*zeta^2 + 18*zeta + 18)*q^901 - 45/2*zeta*q^904 + (-30*zeta^2 + 15*zeta + 
60)*q^905 + (8*zeta^2 + 8*zeta - 16)*q^907 + (18*zeta^2 - 36)*q^908 + (18*zeta^2
- 36)*q^910 + (12*zeta^2 + 12*zeta - 24)*q^911 + 3/2*zeta*q^914 + 
1/2*(-69*zeta^2 + 69*zeta + 138)*q^916 + (24*zeta^2 - 48*zeta - 48)*q^917 + 
(8*zeta^2 - 16*zeta - 16)*q^919 + 27*zeta*q^922 + (-12*zeta^2 + 6*zeta + 
24)*q^923 + (2*zeta^2 + 2*zeta - 4)*q^925 + (12*zeta^2 - 24)*q^926 + 
1/2*(-27*zeta^2 + 54)*q^928 + 1/2*(-3*zeta^2 - 3*zeta + 6)*q^929 + (-36*zeta^2 +
18*zeta + 72)*q^931 + 63/2*zeta*q^932 + (-36*zeta^2 + 36*zeta + 72)*q^934 + 
1/2*(37*zeta^2 - 74*zeta - 74)*q^937 + (-24*zeta^2 + 24*zeta + 48)*q^938 - 
54*zeta*q^940 + 1/2*(54*zeta^2 - 27*zeta - 108)*q^941 + (-6*zeta^2 - 6*zeta + 
12)*q^947 + 1/2*(-22*zeta^2 + 11*zeta + 44)*q^949 + 24*zeta*q^950 + (18*zeta^2 -
18*zeta - 36)*q^952 + 1/2*(9*zeta^2 - 18*zeta - 18)*q^953 + (18*zeta^2 - 36*zeta
- 36)*q^955 + (18*zeta^2 - 18*zeta - 36)*q^956 - 18*zeta*q^958 + (36*zeta^2 - 
18*zeta - 72)*q^959 + 1/2*(15*zeta^2 + 15*zeta - 30)*q^961 + 1/2*(3*zeta^2 - 
6)*q^962 + 1/2*(-39*zeta^2 + 78)*q^964 + 1/2*(39*zeta^2 + 39*zeta - 78)*q^965 + 
(-4*zeta^2 + 2*zeta + 8)*q^967 + 33/2*zeta*q^968 + (-9*zeta^2 + 9*zeta + 
18)*q^970 + (-18*zeta^2 + 36*zeta + 36)*q^971 + (40*zeta^2 - 80*zeta - 80)*q^973
+ (6*zeta^2 - 6*zeta - 12)*q^974 + 3/2*zeta*q^976 + (18*zeta^2 - 9*zeta - 
36)*q^977 + 1/2*(81*zeta^2 - 162)*q^980 + (24*zeta^2 + 24*zeta - 48)*q^983 + 
1/2*(18*zeta^2 - 9*zeta - 36)*q^985 + 81/2*zeta*q^986 + (-6*zeta^2 + 6*zeta + 
12)*q^988 + (26*zeta^2 - 52*zeta - 52)*q^991 + (6*zeta^2 - 6*zeta - 12)*q^992 + 
72*zeta*q^994 + (-12*zeta^2 + 6*zeta + 24)*q^995 + 1/2*(37*zeta^2 + 37*zeta - 
74)*q^997 + (-60*zeta^2 + 120)*q^998 + 1/2*(-9*zeta^2 + 18)*q^1000 - 
36*zeta*q^1004 + (12*zeta^2 - 24*zeta - 24)*q^1007 + 1/2*(-11*zeta^2 + 22*zeta +
22)*q^1009 + O(q^1010), q - 3*q^5 - q^7 - 3*q^11 - q^13 - 6*q^17 - 4*q^19 + 
3*q^23 + 4*q^25 - 3*q^29 + 5*q^31 + 3*q^35 + 2*q^37 - 3*q^41 - q^43 + 9*q^47 - 
6*q^49 + 6*q^53 + 9*q^55 + 3*q^59 - 13*q^61 + 3*q^65 - 7*q^67 + 12*q^71 - 
10*q^73 + 3*q^77 + 11*q^79 + 9*q^83 + 18*q^85 - 6*q^89 + q^91 + 12*q^95 + 
11*q^97 - 15*q^101 - 7*q^103 - 12*q^107 + 2*q^109 + 9*q^113 - 9*q^115 + 6*q^119 
- 2*q^121 + 3*q^125 - 16*q^127 - 21*q^131 + 4*q^133 - 3*q^137 + 5*q^139 + 
3*q^143 + 9*q^145 - 15*q^149 - 13*q^151 - 15*q^155 - 13*q^157 - 3*q^161 + 
20*q^163 - 9*q^167 - 12*q^169 + 9*q^173 - 4*q^175 - 12*q^179 + 2*q^181 - 6*q^185
+ 18*q^187 - 15*q^191 + 11*q^193 - 6*q^197 - 4*q^199 + 3*q^203 + 9*q^205 + 
12*q^209 + 17*q^211 + 3*q^215 - 5*q^217 + 6*q^221 - q^223 - 27*q^227 - 13*q^229 
+ 6*q^233 - 27*q^235 + 27*q^239 - q^241 + 18*q^245 + 4*q^247 - 12*q^251 - 
9*q^253 + 9*q^257 - 2*q^259 + 21*q^263 - 18*q^265 + 6*q^269 + 8*q^271 - 12*q^275
- q^277 - 3*q^281 + 5*q^283 + 3*q^287 + 19*q^289 + 21*q^293 - 9*q^295 - 3*q^299 
+ q^301 + 39*q^305 + 20*q^307 - 21*q^311 - q^313 + 21*q^317 + 9*q^319 + 24*q^323
- 4*q^325 - 9*q^329 + 11*q^331 + 21*q^335 + 23*q^337 - 15*q^341 + 13*q^343 - 
9*q^347 - q^349 - 3*q^353 - 36*q^355 - 3*q^361 + 30*q^365 - 13*q^367 - 6*q^371 -
q^373 + 3*q^377 - 16*q^379 + 15*q^383 - 9*q^385 - 15*q^389 - 18*q^391 - 33*q^395
+ 2*q^397 - 3*q^401 - 5*q^403 - 6*q^407 + 23*q^409 - 3*q^413 - 27*q^415 - 
9*q^419 + 35*q^421 - 24*q^425 + 13*q^427 - 24*q^431 - 34*q^433 - 12*q^437 + 
35*q^439 + 9*q^443 + 18*q^445 + 18*q^449 + 9*q^451 - 3*q^455 - 37*q^457 - 
3*q^461 - 19*q^463 - 12*q^467 + 7*q^469 + 3*q^473 - 16*q^475 - 27*q^479 - 
2*q^481 - 33*q^485 + 32*q^487 + 3*q^491 + 18*q^493 - 12*q^497 + 5*q^499 + 
36*q^503 + 45*q^505 - 39*q^509 + 10*q^511 + 21*q^515 - 27*q^517 - 42*q^521 + 
8*q^523 - 30*q^527 - 14*q^529 + 3*q^533 + 36*q^535 + 18*q^539 - 34*q^541 - 
6*q^545 - 13*q^547 + 12*q^551 - 11*q^553 + 30*q^557 + q^559 - 9*q^563 - 27*q^565
- 15*q^569 - 31*q^571 + 12*q^575 - 10*q^577 - 9*q^581 - 18*q^583 - 15*q^587 - 
20*q^589 - 6*q^593 - 18*q^595 + 39*q^599 + 35*q^601 + 6*q^605 + 41*q^607 - 
9*q^611 + 26*q^613 - 3*q^617 - 13*q^619 + 6*q^623 - 29*q^625 - 12*q^629 - 
16*q^631 + 48*q^635 + 6*q^637 + 33*q^641 + 41*q^643 - 9*q^649 + 21*q^653 + 
63*q^655 + 21*q^659 + 11*q^661 - 12*q^665 - 9*q^667 + 39*q^671 + 11*q^673 - 
15*q^677 - 11*q^679 + 36*q^683 + 9*q^685 - 6*q^689 - q^691 - 15*q^695 + 18*q^697
+ 6*q^701 - 8*q^703 + 15*q^707 - 25*q^709 + 15*q^713 - 9*q^715 + 7*q^721 - 
12*q^725 - 37*q^727 + 6*q^731 + 23*q^733 + 21*q^737 - 16*q^739 - 9*q^743 + 
45*q^745 + 12*q^749 - 31*q^751 + 39*q^755 - 10*q^757 - 27*q^761 - 2*q^763 - 
3*q^767 - q^769 - 18*q^773 + 20*q^775 + 12*q^779 - 36*q^781 + 39*q^785 - 
43*q^787 - 9*q^791 + 13*q^793 + 9*q^797 - 54*q^799 + 30*q^803 + 9*q^805 - 
6*q^809 + 20*q^811 - 60*q^815 + 4*q^817 - 51*q^821 - 19*q^823 + 12*q^827 + 
50*q^829 + 36*q^833 + 27*q^835 + 9*q^839 - 20*q^841 + 36*q^845 + 2*q^847 + 
6*q^851 - 13*q^853 - 27*q^857 + 41*q^859 - 24*q^863 - 27*q^865 - 33*q^869 + 
7*q^871 - 3*q^875 + 23*q^877 - 30*q^881 - 4*q^883 - 21*q^887 + 16*q^889 - 
36*q^893 + 36*q^895 - 15*q^899 - 36*q^901 - 6*q^905 + 47*q^907 + 45*q^911 - 
27*q^913 + 21*q^917 - 16*q^919 - 12*q^923 + 8*q^925 - 27*q^929 + 24*q^931 - 
54*q^935 - 34*q^937 + 21*q^941 - 9*q^943 - 27*q^947 + 10*q^949 - 54*q^953 + 
45*q^955 + 3*q^959 - 6*q^961 - 33*q^965 - 43*q^967 - 5*q^973 + 57*q^977 + 
18*q^979 - 51*q^983 + 18*q^985 - 3*q^989 + 8*q^991 + 12*q^995 - q^997 - 3*q^1001
- 18*q^1003 - 24*q^1007 - 10*q^1009 + O(q^1010)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 5);
              X_18C6 := Curve(P_Q, [ PolynomialRing(RationalField(), 6) |
x[1]^2 - 7/4*x[2]^2 + 39/7*x[2]*x[3] + 6/7*x[2]*x[4] + 2*x[2]*x[5] + 
3/7*x[2]*x[6] - 3/28*x[3]^2 + 93/7*x[3]*x[4] - 31/14*x[3]*x[5] - 11/7*x[3]*x[6] 
+ 75/7*x[4]^2 - 11/7*x[4]*x[5] + 30/7*x[4]*x[6] - 17/84*x[5]^2 + 17/7*x[5]*x[6] 
+ 22/7*x[6]^2,
x[1]*x[2] + 7/4*x[2]^2 - 57/14*x[2]*x[3] - 6/7*x[2]*x[4] - 3/2*x[2]*x[5] - 
3/7*x[2]*x[6] + 17/28*x[3]^2 - 72/7*x[3]*x[4] + 31/14*x[3]*x[5] + 4/7*x[3]*x[6] 
- 75/7*x[4]^2 + 4/7*x[4]*x[5] - 30/7*x[4]*x[6] + 1/28*x[5]^2 - 10/7*x[5]*x[6] - 
22/7*x[6]^2,
x[1]*x[3] - 1/4*x[2]^2 + 45/28*x[2]*x[3] - 3/14*x[2]*x[4] + 1/4*x[2]*x[5] + 
1/7*x[2]*x[6] - 2/7*x[3]^2 + 17/7*x[3]*x[4] - 5/21*x[3]*x[5] - 6/7*x[3]*x[6] + 
18/7*x[4]^2 + 1/7*x[4]*x[5] + 3/7*x[4]*x[6] - 2/21*x[5]^2 + 10/21*x[5]*x[6] + 
5/7*x[6]^2,
x[1]*x[4] - 1/4*x[2]^2 + 5/14*x[2]*x[3] + 2/7*x[2]*x[4] + 1/6*x[2]*x[5] + 
1/7*x[2]*x[6] - 17/84*x[3]^2 + 10/7*x[3]*x[4] - 17/42*x[3]*x[5] + 1/7*x[3]*x[6] 
+ 11/7*x[4]^2 + 1/7*x[4]*x[5] + 10/7*x[4]*x[6] + 25/252*x[5]^2 + 1/7*x[5]*x[6] +
8/21*x[6]^2,
x[1]*x[5] - 45/28*x[2]*x[3] + 3/14*x[2]*x[4] - 1/4*x[2]*x[5] + 6/7*x[2]*x[6] - 
13/28*x[3]^2 - 24/7*x[3]*x[4] + 1/14*x[3]*x[5] + 6/7*x[3]*x[6] + 3/7*x[4]^2 + 
6/7*x[4]*x[5] - 3/7*x[4]*x[6] + 29/84*x[5]^2 - 8/7*x[5]*x[6] - 5/7*x[6]^2,
x[1]*x[6] - x[2]^2 + 23/7*x[2]*x[3] + 3/7*x[2]*x[4] + x[2]*x[5] + 5/7*x[2]*x[6] 
- 3/7*x[3]^2 + 50/7*x[3]*x[4] - 32/21*x[3]*x[5] - 9/7*x[3]*x[6] + 48/7*x[4]^2 - 
2/7*x[4]*x[5] + 15/7*x[4]*x[6] - 1/7*x[5]^2 + 22/21*x[5]*x[6] + 18/7*x[6]^2,
x[1]^3 - 90819/758540*x[2]*x[4]*x[5] - 459393/189635*x[2]*x[4]*x[6] + 
383977/568905*x[2]*x[5]^2 + 1974979/1137810*x[2]*x[5]*x[6] - 
864381/758540*x[2]*x[6]^2 + 1114607/2275620*x[3]^3 + 2664177/379270*x[3]^2*x[4] 
- 1653431/2275620*x[3]^2*x[5] + 224823/44620*x[3]^2*x[6] + 
997583/379270*x[3]*x[4]^2 + 2020211/758540*x[3]*x[4]*x[5] + 
200671/16490*x[3]*x[4]*x[6] - 580657/6826860*x[3]*x[5]^2 + 
2321029/379270*x[3]*x[5]*x[6] - 10010561/2275620*x[3]*x[6]^2 - 
4749669/379270*x[4]^3 - 883998/189635*x[4]^2*x[5] - 1069968/189635*x[4]^2*x[6] +
284941/2275620*x[4]*x[5]^2 + 3201633/379270*x[4]*x[5]*x[6] - 
2961691/379270*x[4]*x[6]^2 + 6353813/6826860*x[5]^3 + 323825/455124*x[5]^2*x[6] 
- 470093/758540*x[5]*x[6]^2 - 869027/189635*x[6]^3,
x[1]^2*x[2] - 22328/189635*x[2]*x[4]*x[5] + 113746/189635*x[2]*x[4]*x[6] - 
338879/568905*x[2]*x[5]^2 - 480561/379270*x[2]*x[5]*x[6] + 
124183/189635*x[2]*x[6]^2 + 309953/1137810*x[3]^3 - 635157/189635*x[3]^2*x[4] + 
164127/379270*x[3]^2*x[5] - 102187/33465*x[3]^2*x[6] - 992831/379270*x[3]*x[4]^2
- 626108/189635*x[3]*x[4]*x[5] - 123087/16490*x[3]*x[4]*x[6] - 
5743/3413430*x[3]*x[5]^2 - 3028139/1137810*x[3]*x[5]*x[6] + 
1168021/1137810*x[3]*x[6]^2 + 1370169/189635*x[4]^3 + 1279847/379270*x[4]^2*x[5]
+ 1856497/379270*x[4]^2*x[6] + 224137/568905*x[4]*x[5]^2 - 
1420041/379270*x[4]*x[5]*x[6] + 817691/189635*x[4]*x[6]^2 - 
1610203/3413430*x[5]^3 - 534605/682686*x[5]^2*x[6] + 302419/1137810*x[5]*x[6]^2 
+ 1807757/568905*x[6]^3,
x[1]^2*x[3] + 25359/379270*x[2]*x[4]*x[5] - 271583/379270*x[2]*x[4]*x[6] - 
9408/189635*x[2]*x[5]^2 - 1110101/2275620*x[2]*x[5]*x[6] + 
139443/189635*x[2]*x[6]^2 + 863777/758540*x[3]^3 + 383411/379270*x[3]^2*x[4] + 
1915147/2275620*x[3]^2*x[5] - 22429/66930*x[3]^2*x[6] - 
1655997/758540*x[3]*x[4]^2 - 899641/379270*x[3]*x[4]*x[5] - 
16019/32980*x[3]*x[4]*x[6] + 295553/2275620*x[3]*x[5]^2 + 
3403067/2275620*x[3]*x[5]*x[6] - 2096021/758540*x[3]*x[6]^2 + 
272823/379270*x[4]^3 - 50831/758540*x[4]^2*x[5] + 2771419/758540*x[4]^2*x[6] - 
14506/189635*x[4]*x[5]^2 + 1028303/758540*x[4]*x[5]*x[6] - 
89713/379270*x[4]*x[6]^2 + 474919/6826860*x[5]^3 + 17581/1365372*x[5]^2*x[6] - 
581979/758540*x[5]*x[6]^2 + 440099/1137810*x[6]^3,
x[1]^2*x[4] + 62479/568905*x[2]*x[4]*x[5] - 56966/189635*x[2]*x[4]*x[6] + 
137312/1706715*x[2]*x[5]^2 + 37483/1137810*x[2]*x[5]*x[6] - 
7903/189635*x[2]*x[6]^2 - 154403/1137810*x[3]^3 + 17462/189635*x[3]^2*x[4] + 
104027/3413430*x[3]^2*x[5] + 6397/33465*x[3]^2*x[6] + 357711/379270*x[3]*x[4]^2 
+ 446329/568905*x[3]*x[4]*x[5] + 3577/16490*x[3]*x[4]*x[6] + 
35833/3413430*x[3]*x[5]^2 + 22199/1137810*x[3]*x[5]*x[6] + 
84393/379270*x[3]*x[6]^2 - 179829/189635*x[4]^3 - 897521/1137810*x[4]^2*x[5] - 
184037/379270*x[4]^2*x[6] - 113042/568905*x[4]*x[5]^2 + 
156771/379270*x[4]*x[5]*x[6] - 128681/189635*x[4]*x[6]^2 + 
203039/10240290*x[5]^3 + 111917/682686*x[5]^2*x[6] - 324497/3413430*x[5]*x[6]^2 
- 56659/189635*x[6]^3,
x[1]^2*x[5] - 1513/4462*x[2]*x[4]*x[5] + 8337/4462*x[2]*x[4]*x[6] + 
1922/6693*x[2]*x[5]^2 - 5657/8924*x[2]*x[5]*x[6] + 2004/2231*x[2]*x[6]^2 - 
8585/8924*x[3]^3 - 12915/4462*x[3]^2*x[4] + 10117/26772*x[3]^2*x[5] - 
901/4462*x[3]^2*x[6] - 795/8924*x[3]*x[4]^2 + 8623/4462*x[3]*x[4]*x[5] - 
1953/388*x[3]*x[4]*x[6] + 11579/26772*x[3]*x[5]^2 - 8665/8924*x[3]*x[5]*x[6] + 
16081/8924*x[3]*x[6]^2 + 13905/4462*x[4]^3 + 7487/8924*x[4]^2*x[5] - 
19107/8924*x[4]^2*x[6] - 3465/2231*x[4]*x[5]^2 - 30979/8924*x[4]*x[5]*x[6] - 
5019/4462*x[4]*x[6]^2 - 15659/80316*x[5]^3 + 16541/26772*x[5]^2*x[6] - 
40051/26772*x[5]*x[6]^2 - 505/4462*x[6]^3,
x[1]^2*x[6] - 29694/189635*x[2]*x[4]*x[5] - 147722/189635*x[2]*x[4]*x[6] + 
48056/189635*x[2]*x[5]^2 + 136553/568905*x[2]*x[5]*x[6] + 
13854/189635*x[2]*x[6]^2 + 99149/189635*x[3]^3 + 348779/189635*x[3]^2*x[4] + 
162769/568905*x[3]^2*x[5] + 51929/33465*x[3]^2*x[6] - 29694/189635*x[3]*x[4]^2 -
13174/189635*x[3]*x[4]*x[5] + 16977/8245*x[3]*x[4]*x[6] + 
33687/189635*x[3]*x[5]^2 + 512053/189635*x[3]*x[5]*x[6] - 
431117/189635*x[3]*x[6]^2 - 539808/189635*x[4]^3 - 206762/189635*x[4]^2*x[5] - 
100552/189635*x[4]^2*x[6] - 200519/568905*x[4]*x[5]^2 + 
440781/189635*x[4]*x[5]*x[6] - 551102/189635*x[4]*x[6]^2 + 60377/189635*x[5]^3 +
132845/341343*x[5]^2*x[6] - 186243/189635*x[5]*x[6]^2 - 1011214/568905*x[6]^3,
x[1]*x[2]^2 + 3455/37927*x[2]*x[4]*x[5] + 13535/37927*x[2]*x[4]*x[6] + 
36364/37927*x[2]*x[5]^2 + 194018/113781*x[2]*x[5]*x[6] - 40267/37927*x[2]*x[6]^2
- 63857/113781*x[3]^3 + 101142/37927*x[3]^2*x[4] - 70922/113781*x[3]^2*x[5] + 
16999/6693*x[3]^2*x[6] + 117236/37927*x[3]*x[4]^2 + 188575/37927*x[3]*x[4]*x[5] 
+ 16577/1649*x[3]*x[4]*x[6] - 105923/341343*x[3]*x[5]^2 + 
214714/113781*x[3]*x[5]*x[6] + 23627/113781*x[3]*x[6]^2 - 245880/37927*x[4]^3 - 
99538/37927*x[4]^2*x[5] - 77300/37927*x[4]^2*x[6] - 6401/37927*x[4]*x[5]^2 + 
192189/37927*x[4]*x[5]*x[6] - 91246/37927*x[4]*x[6]^2 + 172180/341343*x[5]^3 + 
404645/341343*x[5]^2*x[6] + 433/113781*x[5]*x[6]^2 - 356336/113781*x[6]^3,
x[1]*x[2]*x[3] + 404/1649*x[2]*x[4]*x[5] - 703/3298*x[2]*x[4]*x[6] + 
1000/4947*x[2]*x[5]^2 + 16451/19788*x[2]*x[5]*x[6] - 4449/3298*x[2]*x[6]^2 - 
5609/6596*x[3]^3 + 4453/3298*x[3]^2*x[4] - 16991/19788*x[3]^2*x[5] + 
278/291*x[3]^2*x[6] + 19755/6596*x[3]*x[4]^2 + 4341/1649*x[3]*x[4]*x[5] + 
24619/6596*x[3]*x[4]*x[6] - 3649/19788*x[3]*x[5]^2 - 713/19788*x[3]*x[5]*x[6] + 
9541/6596*x[3]*x[6]^2 - 15027/3298*x[4]^3 - 13707/6596*x[4]^2*x[5] - 
30817/6596*x[4]^2*x[6] + 783/3298*x[4]*x[5]^2 + 10439/6596*x[4]*x[5]*x[6] - 
2111/3298*x[4]*x[6]^2 + 7345/59364*x[5]^3 + 6535/59364*x[5]^2*x[6] + 
16441/19788*x[5]*x[6]^2 - 14741/9894*x[6]^3,
x[1]*x[2]*x[4] + 60119/568905*x[2]*x[4]*x[5] + 258389/189635*x[2]*x[4]*x[6] - 
169268/1706715*x[2]*x[5]^2 - 241406/568905*x[2]*x[5]*x[6] + 
62062/189635*x[2]*x[6]^2 + 262096/568905*x[3]^3 - 262768/189635*x[3]^2*x[4] + 
912266/1706715*x[3]^2*x[5] - 35563/33465*x[3]^2*x[6] - 422442/189635*x[3]*x[4]^2
- 927046/568905*x[3]*x[4]*x[5] - 24459/8245*x[3]*x[4]*x[6] + 
35164/1706715*x[3]*x[5]^2 - 353728/568905*x[3]*x[5]*x[6] - 
22476/189635*x[3]*x[6]^2 + 680526/189635*x[4]^3 + 589882/568905*x[4]^2*x[5] + 
313954/189635*x[4]^2*x[6] + 52918/568905*x[4]*x[5]^2 - 
327327/189635*x[4]*x[5]*x[6] + 209324/189635*x[4]*x[6]^2 - 855178/5120145*x[5]^3
- 48211/341343*x[5]^2*x[6] - 119156/1706715*x[5]*x[6]^2 + 164436/189635*x[6]^3,
x[1]*x[2]*x[5] + 136106/189635*x[2]*x[4]*x[5] - 291459/379270*x[2]*x[4]*x[6] - 
147812/568905*x[2]*x[5]^2 - 707221/758540*x[2]*x[5]*x[6] + 
398373/379270*x[2]*x[6]^2 + 1199621/758540*x[3]^3 - 574497/379270*x[3]^2*x[4] + 
3030071/2275620*x[3]^2*x[5] - 31232/11155*x[3]^2*x[6] - 
1920831/758540*x[3]*x[4]^2 - 665879/189635*x[3]*x[4]*x[5] - 
152397/32980*x[3]*x[4]*x[6] - 421691/2275620*x[3]*x[5]^2 - 
824353/758540*x[3]*x[5]*x[6] - 656833/758540*x[3]*x[6]^2 + 1852659/379270*x[4]^3
+ 675007/758540*x[4]^2*x[5] + 6421797/758540*x[4]^2*x[6] + 
50489/379270*x[4]*x[5]^2 + 434689/758540*x[4]*x[5]*x[6] + 
1677291/379270*x[4]*x[6]^2 - 866593/6826860*x[5]^3 - 24757/455124*x[5]^2*x[6] - 
777701/2275620*x[5]*x[6]^2 + 957979/379270*x[6]^3,
x[1]*x[2]*x[6] + 70266/189635*x[2]*x[4]*x[5] - 16567/189635*x[2]*x[4]*x[6] - 
46124/189635*x[2]*x[5]^2 + 14833/568905*x[2]*x[5]*x[6] + 
23544/189635*x[2]*x[6]^2 - 9311/189635*x[3]^3 - 2951/189635*x[3]^2*x[4] - 
126061/568905*x[3]^2*x[5] - 39716/33465*x[3]^2*x[6] + 70266/189635*x[3]*x[4]^2 -
47684/189635*x[3]*x[4]*x[5] + 8562/8245*x[3]*x[4]*x[6] - 
34653/189635*x[3]*x[5]^2 - 319842/189635*x[3]*x[5]*x[6] + 
199668/189635*x[3]*x[6]^2 + 128292/189635*x[4]^3 - 28942/189635*x[4]^2*x[5] + 
316798/189635*x[4]^2*x[6] + 361841/568905*x[4]*x[5]^2 - 
38534/189635*x[4]*x[5]*x[6] + 549308/189635*x[4]*x[6]^2 - 33973/189635*x[5]^3 - 
74402/341343*x[5]^2*x[6] + 209772/189635*x[5]*x[6]^2 + 579136/568905*x[6]^3,
x[1]*x[3]^2 + 133843/758540*x[2]*x[4]*x[5] - 422853/379270*x[2]*x[4]*x[6] + 
100481/568905*x[2]*x[5]^2 + 387523/758540*x[2]*x[5]*x[6] - 
514213/758540*x[2]*x[6]^2 - 150109/379270*x[3]^3 + 328303/189635*x[3]^2*x[4] - 
102922/568905*x[3]^2*x[5] + 44469/44620*x[3]^2*x[6] + 2030193/758540*x[3]*x[4]^2
+ 1378153/758540*x[3]*x[4]*x[5] + 127671/32980*x[3]*x[4]*x[6] - 
51011/1137810*x[3]*x[5]^2 + 756699/758540*x[3]*x[5]*x[6] - 
202519/189635*x[3]*x[6]^2 - 818481/189635*x[4]^3 - 1418711/758540*x[4]^2*x[5] - 
1153221/758540*x[4]^2*x[6] + 372193/2275620*x[4]*x[5]^2 + 
2323613/758540*x[4]*x[5]*x[6] - 242134/189635*x[4]*x[6]^2 + 
318776/1706715*x[5]^3 + 6475/37927*x[5]^2*x[6] + 164527/568905*x[5]*x[6]^2 - 
456117/379270*x[6]^3,
x[1]*x[3]*x[4] - 53549/568905*x[2]*x[4]*x[5] + 97827/379270*x[2]*x[4]*x[6] - 
105412/1706715*x[2]*x[5]^2 - 577831/2275620*x[2]*x[5]*x[6] + 
137191/379270*x[2]*x[6]^2 + 250091/2275620*x[3]^3 - 119109/379270*x[3]^2*x[4] + 
844681/6826860*x[3]^2*x[5] - 10412/33465*x[3]^2*x[6] - 766727/758540*x[3]*x[4]^2
- 101023/189635*x[3]*x[4]*x[5] - 18569/32980*x[3]*x[4]*x[6] + 
829199/6826860*x[3]*x[5]^2 - 351383/2275620*x[3]*x[5]*x[6] - 
46501/758540*x[3]*x[6]^2 + 583923/379270*x[4]^3 + 1632677/2275620*x[4]^2*x[5] + 
852629/758540*x[4]^2*x[6] - 16517/379270*x[4]*x[5]^2 - 
1821121/2275620*x[4]*x[5]*x[6] + 124487/379270*x[4]*x[6]^2 - 
1185083/20480580*x[5]^3 - 28931/1365372*x[5]^2*x[6] - 
1550851/6826860*x[5]*x[6]^2 + 167723/379270*x[6]^3,
x[1]*x[3]*x[5] - 136841/758540*x[2]*x[4]*x[5] + 163428/189635*x[2]*x[4]*x[6] - 
142402/568905*x[2]*x[5]^2 - 162324/189635*x[2]*x[5]*x[6] + 
896721/758540*x[2]*x[6]^2 + 149881/758540*x[3]^3 - 1061217/379270*x[3]^2*x[4] + 
995941/2275620*x[3]^2*x[5] - 73723/44620*x[3]^2*x[6] - 271254/189635*x[3]*x[4]^2
- 1266471/758540*x[3]*x[4]*x[5] - 48978/8245*x[3]*x[4]*x[6] + 
622849/2275620*x[3]*x[5]^2 - 254757/189635*x[3]*x[5]*x[6] + 
579277/758540*x[3]*x[6]^2 + 1809999/379270*x[4]^3 + 794821/379270*x[4]^2*x[5] + 
1181331/379270*x[4]^2*x[6] - 61947/758540*x[4]*x[5]^2 - 
426124/189635*x[4]*x[5]*x[6] + 615441/379270*x[4]*x[6]^2 - 
1216103/6826860*x[5]^3 - 8455/455124*x[5]^2*x[6] - 2144311/2275620*x[5]*x[6]^2 +
244372/189635*x[6]^3,
x[1]*x[3]*x[6] + 3540/37927*x[2]*x[4]*x[5] - 34762/37927*x[2]*x[4]*x[6] + 
1582/37927*x[2]*x[5]^2 - 14555/113781*x[2]*x[5]*x[6] + 7537/37927*x[2]*x[6]^2 + 
12550/37927*x[3]^3 + 47371/37927*x[3]^2*x[4] + 8621/113781*x[3]^2*x[5] - 
815/6693*x[3]^2*x[6] + 3540/37927*x[3]*x[4]^2 - 6959/37927*x[3]*x[4]*x[5] + 
1447/1649*x[3]*x[4]*x[6] + 858/37927*x[3]*x[5]^2 + 115162/113781*x[3]*x[5]*x[6] 
- 40835/37927*x[3]*x[6]^2 - 59934/37927*x[4]^3 - 31402/37927*x[4]^2*x[5] + 
59992/37927*x[4]^2*x[6] + 11720/113781*x[4]*x[5]^2 + 90546/37927*x[4]*x[5]*x[6] 
- 22906/37927*x[4]*x[6]^2 + 4581/37927*x[5]^3 + 58712/341343*x[5]^2*x[6] - 
55157/113781*x[5]*x[6]^2 - 45440/113781*x[6]^3,
x[1]*x[4]^2 - 33457/568905*x[2]*x[4]*x[5] - 18917/189635*x[2]*x[4]*x[6] + 
27068/568905*x[2]*x[5]^2 + 26921/189635*x[2]*x[5]*x[6] - 
36576/189635*x[2]*x[6]^2 - 17431/189635*x[3]^3 - 52358/568905*x[3]^2*x[4] - 
13397/189635*x[3]^2*x[5] + 7289/33465*x[3]^2*x[6] + 115271/189635*x[3]*x[4]^2 + 
227453/568905*x[3]*x[4]*x[5] + 3567/8245*x[3]*x[4]*x[6] - 
98317/1706715*x[3]*x[5]^2 + 18443/189635*x[3]*x[5]*x[6] + 
41969/568905*x[3]*x[6]^2 - 91438/189635*x[4]^3 - 1432/189635*x[4]^2*x[5] + 
8323/189635*x[4]^2*x[6] + 124723/1706715*x[4]*x[5]^2 + 
76681/189635*x[4]*x[5]*x[6] - 145276/568905*x[4]*x[6]^2 + 20891/568905*x[5]^3 + 
15142/341343*x[5]^2*x[6] + 54031/568905*x[5]*x[6]^2 - 167834/568905*x[6]^3,
x[1]*x[4]*x[5] + 771/189635*x[2]*x[4]*x[5] - 20799/379270*x[2]*x[4]*x[6] + 
34268/568905*x[2]*x[5]^2 + 340759/758540*x[2]*x[5]*x[6] - 
167517/379270*x[2]*x[6]^2 - 241699/758540*x[3]^3 + 332343/379270*x[3]^2*x[4] - 
1107929/2275620*x[3]^2*x[5] + 9473/11155*x[3]^2*x[6] + 571989/758540*x[3]*x[4]^2
+ 217336/189635*x[3]*x[4]*x[5] + 69423/32980*x[3]*x[4]*x[6] - 
225191/2275620*x[3]*x[5]^2 + 408127/758540*x[3]*x[5]*x[6] - 
12433/758540*x[3]*x[6]^2 - 718821/379270*x[4]^3 - 261733/758540*x[4]^2*x[5] - 
1635423/758540*x[4]^2*x[6] + 101769/379270*x[4]*x[5]^2 + 
886149/758540*x[4]*x[5]*x[6] - 426789/379270*x[4]*x[6]^2 + 994507/6826860*x[5]^3
+ 5407/455124*x[5]^2*x[6] + 582179/2275620*x[5]*x[6]^2 - 273801/379270*x[6]^3,
x[1]*x[4]*x[6] - 3222/37927*x[2]*x[4]*x[5] + 11583/37927*x[2]*x[4]*x[6] + 
1260/37927*x[2]*x[5]^2 - 1859/113781*x[2]*x[5]*x[6] + 1304/37927*x[2]*x[6]^2 - 
2423/37927*x[3]^3 - 10267/37927*x[3]^2*x[4] + 2503/113781*x[3]^2*x[5] + 
496/6693*x[3]^2*x[6] - 3222/37927*x[3]*x[4]^2 + 3184/37927*x[3]*x[4]*x[5] - 
336/1649*x[3]*x[4]*x[6] + 1019/37927*x[3]*x[5]^2 + 31/37927*x[3]*x[5]*x[6] + 
4061/37927*x[3]*x[6]^2 + 8652/37927*x[4]^3 + 7882/37927*x[4]^2*x[5] - 
13976/37927*x[4]^2*x[6] - 15167/113781*x[4]*x[5]^2 - 8101/37927*x[4]*x[5]*x[6] +
15320/37927*x[4]*x[6]^2 + 541/113781*x[5]^3 + 28973/341343*x[5]^2*x[6] - 
10031/113781*x[5]*x[6]^2 - 11354/113781*x[6]^3,
x[1]*x[5]^2 - 29037/151708*x[2]*x[4]*x[5] - 89397/75854*x[2]*x[4]*x[6] + 
9725/37927*x[2]*x[5]^2 + 384621/151708*x[2]*x[5]*x[6] - 
316737/151708*x[2]*x[6]^2 - 25173/37927*x[3]^3 + 179172/37927*x[3]^2*x[4] - 
133511/75854*x[3]^2*x[5] + 28701/8924*x[3]^2*x[6] + 426087/151708*x[3]*x[4]^2 + 
224121/151708*x[3]*x[4]*x[5] + 68229/6596*x[3]*x[4]*x[6] - 
7336/37927*x[3]*x[5]^2 + 301965/151708*x[3]*x[5]*x[6] - 76077/75854*x[3]*x[6]^2 
- 325134/37927*x[4]^3 - 215997/151708*x[4]^2*x[5] - 1028079/151708*x[4]^2*x[6] +
198303/151708*x[4]*x[5]^2 + 406095/151708*x[4]*x[5]*x[6] - 
134001/37927*x[4]*x[6]^2 + 116413/227562*x[5]^3 - 51211/75854*x[5]^2*x[6] + 
95177/75854*x[5]*x[6]^2 - 196083/75854*x[6]^3,
x[1]*x[5]*x[6] - 378/1649*x[2]*x[4]*x[5] + 1884/1649*x[2]*x[4]*x[6] - 
18/1649*x[2]*x[5]^2 + 1/1649*x[2]*x[5]*x[6] + 1065/1649*x[2]*x[6]^2 - 
837/1649*x[3]^3 - 3222/1649*x[3]^2*x[4] - 114/1649*x[3]^2*x[5] - 
31/97*x[3]^2*x[6] - 378/1649*x[3]*x[4]^2 + 567/1649*x[3]*x[4]*x[5] - 
5826/1649*x[3]*x[4]*x[6] + 9/1649*x[3]*x[5]^2 - 1673/1649*x[3]*x[5]*x[6] + 
1803/1649*x[3]*x[6]^2 + 3834/1649*x[4]^3 + 2196/1649*x[4]^2*x[5] - 
1308/1649*x[4]^2*x[6] - 501/1649*x[4]*x[5]^2 - 4101/1649*x[4]*x[5]*x[6] - 
690/1649*x[4]*x[6]^2 - 246/1649*x[5]^3 - 83/4947*x[5]^2*x[6] - 
337/1649*x[5]*x[6]^2 + 164/1649*x[6]^3,
x[1]*x[6]^2 - 14208/189635*x[2]*x[4]*x[5] - 107199/189635*x[2]*x[4]*x[6] + 
27592/189635*x[2]*x[5]^2 - 4098/189635*x[2]*x[5]*x[6] + 99473/189635*x[2]*x[6]^2
+ 62768/189635*x[3]^3 + 222828/189635*x[3]^2*x[4] + 31836/189635*x[3]^2*x[5] + 
5691/11155*x[3]^2*x[6] - 14208/189635*x[3]*x[4]^2 - 11668/189635*x[3]*x[4]*x[5] 
+ 6054/8245*x[3]*x[4]*x[6] + 19184/189635*x[3]*x[5]^2 + 
256656/189635*x[3]*x[5]*x[6] - 322729/189635*x[3]*x[6]^2 - 336456/189635*x[4]^3 
- 134184/189635*x[4]^2*x[5] + 96576/189635*x[4]^2*x[6] - 
34536/189635*x[4]*x[5]^2 + 408242/189635*x[4]*x[5]*x[6] - 
373089/189635*x[4]*x[6]^2 + 108892/568905*x[5]^3 + 24823/113781*x[5]^2*x[6] - 
182226/189635*x[5]*x[6]^2 - 55346/189635*x[6]^3,
x[2]^3 + 11376/37927*x[2]*x[4]*x[5] - 464238/37927*x[2]*x[4]*x[6] - 
298964/113781*x[2]*x[5]^2 - 165697/113781*x[2]*x[5]*x[6] + 
114474/37927*x[2]*x[6]^2 - 142570/113781*x[3]^3 + 588840/37927*x[3]^2*x[4] - 
390650/113781*x[3]^2*x[5] + 8656/2231*x[3]^2*x[6] + 504427/37927*x[3]*x[4]^2 - 
346864/37927*x[3]*x[4]*x[5] + 14885/1649*x[3]*x[4]*x[6] + 
989318/341343*x[3]*x[5]^2 + 139945/37927*x[3]*x[5]*x[6] - 
602597/113781*x[3]*x[6]^2 - 662382/37927*x[4]^3 - 212379/37927*x[4]^2*x[5] + 
227115/37927*x[4]^2*x[6] - 57476/113781*x[4]*x[5]^2 + 27543/37927*x[4]*x[5]*x[6]
- 192662/37927*x[4]*x[6]^2 + 80294/341343*x[5]^3 - 110645/37927*x[5]^2*x[6] - 
103953/37927*x[5]*x[6]^2 + 168602/37927*x[6]^3,
x[2]^2*x[3] - 22238/37927*x[2]*x[4]*x[5] + 49222/37927*x[2]*x[4]*x[6] - 
36628/113781*x[2]*x[5]^2 - 86095/113781*x[2]*x[5]*x[6] + 56556/37927*x[2]*x[6]^2
+ 35800/37927*x[3]^3 - 194578/37927*x[3]^2*x[4] + 57709/37927*x[3]^2*x[5] - 
15142/6693*x[3]^2*x[6] - 287727/37927*x[3]*x[4]^2 - 96914/37927*x[3]*x[4]*x[5] -
14077/1649*x[3]*x[4]*x[6] - 2690/37927*x[3]*x[5]^2 - 
161519/113781*x[3]*x[5]*x[6] - 23859/37927*x[3]*x[6]^2 + 288690/37927*x[4]^3 + 
159895/37927*x[4]^2*x[5] + 126557/37927*x[4]^2*x[6] - 16256/37927*x[4]*x[5]^2 - 
191847/37927*x[4]*x[5]*x[6] + 53426/37927*x[4]*x[6]^2 - 12771/37927*x[5]^3 - 
99821/341343*x[5]^2*x[6] - 31471/113781*x[5]*x[6]^2 + 269594/113781*x[6]^3,
x[2]^2*x[4] - 204944/568905*x[2]*x[4]*x[5] - 604484/189635*x[2]*x[4]*x[6] - 
10432/1706715*x[2]*x[5]^2 + 444446/568905*x[2]*x[5]*x[6] - 
60652/189635*x[2]*x[6]^2 - 475006/568905*x[3]^3 + 995373/189635*x[3]^2*x[4] - 
2479106/1706715*x[3]^2*x[5] + 72028/33465*x[3]^2*x[6] + 
563802/189635*x[3]*x[4]^2 + 1775026/568905*x[3]*x[4]*x[5] + 
50854/8245*x[3]*x[4]*x[6] + 153626/1706715*x[3]*x[5]^2 + 
872998/568905*x[3]*x[5]*x[6] - 58934/189635*x[3]*x[6]^2 - 2545416/189635*x[4]^3 
- 1428142/568905*x[4]^2*x[5] - 782794/189635*x[4]^2*x[6] - 
19131/189635*x[4]*x[5]^2 + 784802/189635*x[4]*x[5]*x[6] - 
604604/189635*x[4]*x[6]^2 + 1798438/5120145*x[5]^3 - 12710/341343*x[5]^2*x[6] + 
195686/1706715*x[5]*x[6]^2 - 212156/189635*x[6]^3,
x[2]^2*x[5] - 12262/8245*x[2]*x[4]*x[5] - 10446/8245*x[2]*x[4]*x[6] + 
604/24735*x[2]*x[5]^2 + 22403/8245*x[2]*x[5]*x[6] - 29868/8245*x[2]*x[6]^2 - 
15373/8245*x[3]^3 + 63522/8245*x[3]^2*x[4] - 56638/24735*x[3]^2*x[5] + 
3034/485*x[3]^2*x[6] + 45453/8245*x[3]*x[4]^2 + 26638/8245*x[3]*x[4]*x[5] + 
145233/8245*x[3]*x[4]*x[6] + 24433/24735*x[3]*x[5]^2 + 21339/8245*x[3]*x[5]*x[6]
- 7891/8245*x[3]*x[6]^2 - 125334/8245*x[4]^3 - 76781/8245*x[4]^2*x[5] - 
120771/8245*x[4]^2*x[6] + 7436/8245*x[4]*x[5]^2 + 14173/8245*x[4]*x[5]*x[6] - 
63006/8245*x[4]*x[6]^2 + 24764/74205*x[5]^3 - 535/4947*x[5]^2*x[6] + 
30913/24735*x[5]*x[6]^2 - 42754/8245*x[6]^3,
x[2]^2*x[6] - 20616/37927*x[2]*x[4]*x[5] + 34280/37927*x[2]*x[4]*x[6] + 
4672/37927*x[2]*x[5]^2 - 57944/113781*x[2]*x[5]*x[6] - 23580/37927*x[2]*x[6]^2 -
26804/37927*x[3]^3 - 106940/37927*x[3]^2*x[4] + 3020/113781*x[3]^2*x[5] + 
8263/6693*x[3]^2*x[6] - 20616/37927*x[3]*x[4]^2 + 24328/37927*x[3]*x[4]*x[5] - 
10920/1649*x[3]*x[4]*x[6] + 4260/37927*x[3]*x[5]^2 + 24918/37927*x[3]*x[5]*x[6] 
+ 2536/37927*x[3]*x[6]^2 + 112992/37927*x[4]^3 + 76424/37927*x[4]^2*x[5] - 
335492/37927*x[4]^2*x[6] - 91396/113781*x[4]*x[5]^2 - 
166816/37927*x[4]*x[5]*x[6] - 155104/37927*x[4]*x[6]^2 - 4308/37927*x[5]^3 - 
129403/341343*x[5]^2*x[6] - 3408/37927*x[5]*x[6]^2 - 136496/113781*x[6]^3,
x[2]*x[3]^2 - 4694/37927*x[2]*x[4]*x[5] + 32766/37927*x[2]*x[4]*x[6] - 
23521/113781*x[2]*x[5]^2 - 21887/37927*x[2]*x[5]*x[6] + 31940/37927*x[2]*x[6]^2 
+ 10572/37927*x[3]^3 - 21008/37927*x[3]^2*x[4] + 31874/113781*x[3]^2*x[5] - 
3898/2231*x[3]^2*x[6] - 42621/37927*x[3]*x[4]^2 - 70462/37927*x[3]*x[4]*x[5] - 
7107/1649*x[3]*x[4]*x[6] - 752/37927*x[3]*x[5]^2 - 20531/37927*x[3]*x[5]*x[6] + 
41183/37927*x[3]*x[6]^2 + 164454/37927*x[4]^3 + 68809/37927*x[4]^2*x[5] + 
79059/37927*x[4]^2*x[6] - 22826/113781*x[4]*x[5]^2 - 98721/37927*x[4]*x[5]*x[6] 
+ 49958/37927*x[4]*x[6]^2 - 55762/341343*x[5]^3 - 20365/113781*x[5]^2*x[6] - 
51293/113781*x[5]*x[6]^2 + 48226/37927*x[6]^3,
x[2]*x[3]*x[4] + 107903/568905*x[2]*x[4]*x[5] - 134282/189635*x[2]*x[4]*x[6] + 
21304/1706715*x[2]*x[5]^2 + 49481/189635*x[2]*x[5]*x[6] - 
36106/189635*x[2]*x[6]^2 - 123263/568905*x[3]^3 + 226749/189635*x[3]^2*x[4] - 
642853/1706715*x[3]^2*x[5] + 19444/33465*x[3]^2*x[6] + 541661/189635*x[3]*x[4]^2
+ 106826/189635*x[3]*x[4]*x[5] + 9617/8245*x[3]*x[4]*x[6] - 
35387/1706715*x[3]*x[5]^2 + 228419/568905*x[3]*x[5]*x[6] - 
13147/189635*x[3]*x[6]^2 - 333798/189635*x[4]^3 - 473351/568905*x[4]^2*x[5] - 
147957/189635*x[4]^2*x[6] - 23129/568905*x[4]*x[5]^2 + 
877153/568905*x[4]*x[5]*x[6] - 53762/189635*x[4]*x[6]^2 + 502439/5120145*x[5]^3 
- 5165/341343*x[5]^2*x[6] + 187603/1706715*x[5]*x[6]^2 - 215554/568905*x[6]^3,
x[2]*x[3]*x[5] - 47869/189635*x[2]*x[4]*x[5] - 139062/189635*x[2]*x[4]*x[6] + 
179263/568905*x[2]*x[5]^2 + 198011/189635*x[2]*x[5]*x[6] - 
246351/189635*x[2]*x[6]^2 - 78316/189635*x[3]^3 + 557424/189635*x[3]^2*x[4] - 
458701/568905*x[3]^2*x[5] + 22323/11155*x[3]^2*x[6] + 331401/189635*x[3]*x[4]^2 
+ 578871/189635*x[3]*x[4]*x[5] + 53067/8245*x[3]*x[4]*x[6] - 
93754/568905*x[3]*x[5]^2 + 133723/189635*x[3]*x[5]*x[6] - 
118342/189635*x[3]*x[6]^2 - 1011528/189635*x[4]^3 - 218567/189635*x[4]^2*x[5] - 
799617/189635*x[4]^2*x[6] + 53097/189635*x[4]*x[5]^2 + 
366421/189635*x[4]*x[5]*x[6] - 416892/189635*x[4]*x[6]^2 + 176633/1706715*x[5]^3
+ 11038/37927*x[5]^2*x[6] + 697006/568905*x[5]*x[6]^2 - 305018/189635*x[6]^3,
x[2]*x[3]*x[6] - 1176/8245*x[2]*x[4]*x[5] + 4762/8245*x[2]*x[4]*x[6] - 
56/8245*x[2]*x[5]^2 + 3857/24735*x[2]*x[5]*x[6] - 1084/8245*x[2]*x[6]^2 - 
2604/8245*x[3]^3 - 10024/8245*x[3]^2*x[4] - 1064/24735*x[3]^2*x[5] + 
131/1455*x[3]^2*x[6] - 1176/8245*x[3]*x[4]^2 + 1764/8245*x[3]*x[4]*x[5] - 
536/8245*x[3]*x[4]*x[6] + 28/8245*x[3]*x[5]^2 - 16714/24735*x[3]*x[5]*x[6] + 
1212/8245*x[3]*x[6]^2 + 11928/8245*x[4]^3 + 6832/8245*x[4]^2*x[5] - 
6268/8245*x[4]^2*x[6] - 4676/24735*x[4]*x[5]^2 - 17156/8245*x[4]*x[5]*x[6] + 
52/8245*x[4]*x[6]^2 - 2296/24735*x[5]^3 - 3343/14841*x[5]^2*x[6] + 
14444/24735*x[5]*x[6]^2 + 12524/24735*x[6]^3,
x[2]*x[4]^2 + 134756/568905*x[2]*x[4]*x[5] - 200044/189635*x[2]*x[4]*x[6] - 
319972/1706715*x[2]*x[5]^2 - 79334/568905*x[2]*x[5]*x[6] + 
120078/189635*x[2]*x[6]^2 - 78526/568905*x[3]^3 + 1542824/568905*x[3]^2*x[4] - 
943646/1706715*x[3]^2*x[5] + 13208/33465*x[3]^2*x[6] + 360977/189635*x[3]*x[4]^2
- 149828/189635*x[3]*x[4]*x[5] + 24114/8245*x[3]*x[4]*x[6] + 
522766/1706715*x[3]*x[5]^2 + 284698/568905*x[3]*x[5]*x[6] - 
252292/568905*x[3]*x[6]^2 - 446966/189635*x[4]^3 - 358447/568905*x[4]^2*x[5] + 
419046/189635*x[4]^2*x[6] + 92156/1706715*x[4]*x[5]^2 + 
442966/568905*x[4]*x[5]*x[6] - 118472/568905*x[4]*x[6]^2 + 287518/5120145*x[5]^3
- 57662/341343*x[5]^2*x[6] - 630604/1706715*x[5]*x[6]^2 + 99984/189635*x[6]^3
]);
