
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
24)*q^521 + (-38*zeta^2 + 76)*q^523 + (-6*zeta^2 + 6*zeta + 12)*q^524 + 
(8*zeta^2 - 4*zeta - 16)*q^526 + (-48*zeta^2 + 24*zeta + 96)*q^527 + (-11*zeta^2
+ 11*zeta + 22)*q^529 + (4*zeta^2 - 8*zeta - 8)*q^532 + (4*zeta^2 + 4*zeta - 
8)*q^533 + 50*zeta*q^536 + (9*zeta^2 + 9*zeta - 18)*q^538 + (6*zeta^2 - 12*zeta 
- 12)*q^539 + (-11*zeta^2 + 22)*q^541 + (2*zeta^2 - 2*zeta - 4)*q^542 + 
(6*zeta^2 - 3*zeta - 12)*q^544 + (22*zeta^2 - 11*zeta - 44)*q^545 + (20*zeta^2 -
20*zeta - 40)*q^547 + (3*zeta^2 - 6)*q^548 + (-4*zeta^2 + 8*zeta + 8)*q^550 + 
(2*zeta^2 + 2*zeta - 4)*q^551 + 4*zeta*q^553 + 2*zeta*q^554 + (8*zeta^2 + 8*zeta
- 16)*q^556 + (21*zeta^2 - 42*zeta - 42)*q^557 + (2*zeta^2 - 4)*q^559 + 
(18*zeta^2 - 18*zeta - 36)*q^560 + (14*zeta^2 - 7*zeta - 28)*q^562 + (-40*zeta^2
+ 20*zeta + 80)*q^563 + (3*zeta^2 - 3*zeta - 6)*q^565 + (28*zeta^2 - 56)*q^566 +
(-30*zeta^2 + 60*zeta + 60)*q^568 + (19*zeta^2 + 19*zeta - 38)*q^569 + 
8*zeta*q^571 - 6*zeta*q^572 + (8*zeta^2 + 8*zeta - 16)*q^574 + (-4*zeta^2 + 
8*zeta + 8)*q^575 + (-11*zeta^2 + 22)*q^577 + (10*zeta^2 - 10*zeta - 20)*q^578 +
(6*zeta^2 - 3*zeta - 12)*q^580 + (32*zeta^2 - 16*zeta - 64)*q^581 + (-35*zeta^2 
+ 70)*q^584 + (-11*zeta^2 + 22*zeta + 22)*q^586 + (22*zeta^2 + 22*zeta - 
44)*q^587 + 16*zeta*q^589 - 24*zeta*q^590 + (-21*zeta^2 - 21*zeta + 42)*q^592 + 
(9*zeta^2 - 18*zeta - 18)*q^593 + (18*zeta^2 - 36)*q^595 + (-15*zeta^2 + 15*zeta
+ 30)*q^596 + (-4*zeta^2 + 2*zeta + 8)*q^598 + (-16*zeta^2 + 8*zeta + 32)*q^599 
+ (-25*zeta^2 + 25*zeta + 50)*q^601 + (-4*zeta^2 + 8)*q^602 + (20*zeta^2 - 
40*zeta - 40)*q^604 + (-zeta^2 - zeta + 2)*q^605 + 26*zeta*q^607 + 2*zeta*q^608 
+ (-7*zeta^2 - 7*zeta + 14)*q^610 + (-4*zeta^2 + 8*zeta + 8)*q^611 + (34*zeta^2 
- 68)*q^613 + (-16*zeta^2 + 16*zeta + 32)*q^614 + (40*zeta^2 - 20*zeta - 
80)*q^616 + (14*zeta^2 - 7*zeta - 28)*q^617 + (20*zeta^2 - 20*zeta - 40)*q^619 +
(-24*zeta^2 + 48)*q^620 + (4*zeta^2 - 8*zeta - 8)*q^622 + (-6*zeta^2 - 6*zeta + 
12)*q^623 - 11*zeta*q^625 - 25*zeta*q^626 + (17*zeta^2 + 17*zeta - 34)*q^628 + 
(-21*zeta^2 + 42*zeta + 42)*q^629 + (-20*zeta^2 + 40)*q^631 + (-10*zeta^2 + 
10*zeta + 20)*q^632 + (-10*zeta^2 + 5*zeta + 20)*q^634 + (4*zeta^2 - 2*zeta - 
8)*q^635 + (3*zeta^2 - 3*zeta - 6)*q^637 + (6*zeta^2 - 12)*q^638 + (19*zeta^2 - 
38*zeta - 38)*q^640 + (13*zeta^2 + 13*zeta - 26)*q^641 + 8*zeta*q^643 - 
12*zeta*q^644 + (-6*zeta^2 - 6*zeta + 12)*q^646 + (-18*zeta^2 + 36*zeta + 
36)*q^647 + (48*zeta^2 - 96)*q^649 + (2*zeta^2 - 2*zeta - 4)*q^650 + (32*zeta^2 
- 16*zeta - 64)*q^652 + (-16*zeta^2 + 8*zeta + 32)*q^653 + (-6*zeta^2 + 6*zeta +
12)*q^655 + (-36*zeta^2 + 72)*q^656 + (-8*zeta^2 + 16*zeta + 16)*q^658 + 
(-2*zeta^2 - 2*zeta + 4)*q^659 + 17*zeta*q^661 + 2*zeta*q^662 + (-40*zeta^2 - 
40*zeta + 80)*q^664 + (-4*zeta^2 + 8*zeta + 8)*q^665 + (-6*zeta^2 + 12)*q^667 + 
(30*zeta^2 - 30*zeta - 60)*q^668 + (20*zeta^2 - 10*zeta - 40)*q^670 + 
(-28*zeta^2 + 14*zeta + 56)*q^671 + (-25*zeta^2 + 25*zeta + 50)*q^673 + 
(-26*zeta^2 + 52)*q^674 + (-12*zeta^2 + 24*zeta + 24)*q^676 + (-8*zeta^2 - 
8*zeta + 16)*q^677 + 4*zeta*q^679 + 45*zeta*q^680 + (16*zeta^2 + 16*zeta - 
32)*q^682 + (-12*zeta^2 + 24*zeta + 24)*q^683 + (3*zeta^2 - 6)*q^685 + 
(-20*zeta^2 + 20*zeta + 40)*q^686 + (-12*zeta^2 + 6*zeta + 24)*q^688 + (2*zeta^2
- 2*zeta - 4)*q^691 + (-33*zeta^2 + 66)*q^692 + (-2*zeta^2 + 4*zeta + 4)*q^694 +
(-8*zeta^2 - 8*zeta + 16)*q^695 - 36*zeta*q^697 + 2*zeta*q^698 + (-4*zeta^2 - 
4*zeta + 8)*q^700 + (27*zeta^2 - 54*zeta - 54)*q^701 + (14*zeta^2 - 28)*q^703 + 
(-42*zeta^2 + 42*zeta + 84)*q^704 + (-16*zeta^2 + 8*zeta + 32)*q^706 + 
(-16*zeta^2 + 8*zeta + 32)*q^707 + (-25*zeta^2 + 25*zeta + 50)*q^709 + 
(-18*zeta^2 + 36)*q^710 + (-15*zeta^2 + 30*zeta + 30)*q^712 + (16*zeta^2 + 
16*zeta - 32)*q^713 - 6*zeta*q^715 - 36*zeta*q^716 + (-6*zeta^2 - 6*zeta + 
12)*q^718 + (-6*zeta^2 + 12*zeta + 12)*q^719 + (-16*zeta^2 + 32)*q^721 + 
(-15*zeta^2 + 15*zeta + 30)*q^722 + (-4*zeta^2 + 2*zeta + 8)*q^724 + (4*zeta^2 -
2*zeta - 8)*q^725 + (-34*zeta^2 + 34*zeta + 68)*q^727 + (-10*zeta^2 + 20)*q^728 
+ (-7*zeta^2 + 14*zeta + 14)*q^730 + (6*zeta^2 + 6*zeta - 12)*q^731 - 
46*zeta*q^733 + 20*zeta*q^734 + (-2*zeta^2 - 2*zeta + 4)*q^736 + (20*zeta^2 - 
40*zeta - 40)*q^737 + (-20*zeta^2 + 40)*q^739 + (-21*zeta^2 + 21*zeta + 
42)*q^740 + (8*zeta^2 - 4*zeta - 16)*q^743 + (-15*zeta^2 + 15*zeta + 30)*q^745 +
(10*zeta^2 - 20)*q^746 + (-18*zeta^2 + 36*zeta + 36)*q^748 - 10*zeta*q^751 - 
36*zeta*q^752 + (zeta^2 + zeta - 2)*q^754 + (-20*zeta^2 + 40*zeta + 40)*q^755 + 
(-2*zeta^2 + 4)*q^757 + (-16*zeta^2 + 16*zeta + 32)*q^758 + (20*zeta^2 - 10*zeta
- 40)*q^760 + (-34*zeta^2 + 17*zeta + 68)*q^761 + (22*zeta^2 - 22*zeta - 
44)*q^763 + (30*zeta^2 - 60)*q^764 + (10*zeta^2 - 20*zeta - 20)*q^766 + 
(-8*zeta^2 - 8*zeta + 16)*q^767 - zeta*q^769 + 12*zeta*q^770 + (-zeta^2 - zeta +
2)*q^772 + (-15*zeta^2 + 30*zeta + 30)*q^773 + (16*zeta^2 - 32)*q^775 + 
(-10*zeta^2 + 10*zeta + 20)*q^776 + (32*zeta^2 - 16*zeta - 64)*q^778 + 
(16*zeta^2 - 8*zeta - 32)*q^779 + (36*zeta^2 - 36*zeta - 72)*q^781 + (-18*zeta^2
+ 36)*q^782 + (-9*zeta^2 + 18*zeta + 18)*q^784 + (-17*zeta^2 - 17*zeta + 
34)*q^785 + 26*zeta*q^787 + 9*zeta*q^788 + (2*zeta^2 + 2*zeta - 4)*q^790 + 
(-2*zeta^2 + 4*zeta + 4)*q^791 + (-7*zeta^2 + 14)*q^793 + (29*zeta^2 - 29*zeta -
58)*q^794 + (-40*zeta^2 + 20*zeta + 80)*q^796 + (62*zeta^2 - 31*zeta - 
124)*q^797 + (36*zeta^2 - 36*zeta - 72)*q^799 + (2*zeta^2 - 4)*q^800 + (7*zeta^2
- 14*zeta - 14)*q^802 + (14*zeta^2 + 14*zeta - 28)*q^803 - 12*zeta*q^805 - 
8*zeta*q^806 + (20*zeta^2 + 20*zeta - 40)*q^808 + (-27*zeta^2 + 54*zeta + 
54)*q^809 + (16*zeta^2 - 32)*q^811 + (-6*zeta^2 + 6*zeta + 12)*q^812 + 
(28*zeta^2 - 14*zeta - 56)*q^814 + (-32*zeta^2 + 16*zeta + 64)*q^815 + (4*zeta^2
- 4*zeta - 8)*q^817 + (19*zeta^2 - 38)*q^818 + (12*zeta^2 - 24*zeta - 24)*q^820 
+ (7*zeta^2 + 7*zeta - 14)*q^821 - 28*zeta*q^823 - 40*zeta*q^824 + (-16*zeta^2 -
16*zeta + 32)*q^826 + (-6*zeta^2 + 12*zeta + 12)*q^827 + (-2*zeta^2 + 4)*q^829 +
(24*zeta^2 - 24*zeta - 48)*q^830 + (-14*zeta^2 + 7*zeta + 28)*q^832 + (18*zeta^2
- 9*zeta - 36)*q^833 + (30*zeta^2 - 30*zeta - 60)*q^835 + (-12*zeta^2 + 
24)*q^836 + (4*zeta^2 - 8*zeta - 8)*q^838 + (-26*zeta^2 - 26*zeta + 52)*q^839 - 
26*zeta*q^841 - 25*zeta*q^842 + (-10*zeta^2 - 10*zeta + 20)*q^844 + (12*zeta^2 -
24*zeta - 24)*q^845 + (-2*zeta^2 + 4)*q^847 + (-12*zeta^2 + 6*zeta + 24)*q^850 +
(28*zeta^2 - 14*zeta - 56)*q^851 + (-34*zeta^2 + 34*zeta + 68)*q^853 + 
(14*zeta^2 - 28)*q^854 + (13*zeta^2 + 13*zeta - 26)*q^857 + 44*zeta*q^859 + 
6*zeta*q^860 + (18*zeta^2 - 36*zeta - 36)*q^863 + (-33*zeta^2 + 66)*q^865 + 
(11*zeta^2 - 11*zeta - 22)*q^866 + (-32*zeta^2 + 16*zeta + 64)*q^868 + (8*zeta^2
- 4*zeta - 16)*q^869 + (10*zeta^2 - 10*zeta - 20)*q^871 + (55*zeta^2 - 
110)*q^872 + (-4*zeta^2 + 8*zeta + 8)*q^874 + (14*zeta^2 + 14*zeta - 28)*q^875 +
53*zeta*q^877 + 20*zeta*q^878 + (18*zeta^2 + 18*zeta - 36)*q^880 + (12*zeta^2 - 
24*zeta - 24)*q^881 + O(q^882), (-zeta^2 + 2)*q + (zeta^2 - zeta - 2)*q^2 + 
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
24)*q^521 + (-38*zeta^2 + 76)*q^523 + (-6*zeta^2 + 6*zeta + 12)*q^524 + 
(8*zeta^2 - 4*zeta - 16)*q^526 + (-48*zeta^2 + 24*zeta + 96)*q^527 + (-11*zeta^2
+ 11*zeta + 22)*q^529 + (4*zeta^2 - 8*zeta - 8)*q^532 + (4*zeta^2 + 4*zeta - 
8)*q^533 + 50*zeta*q^536 + (9*zeta^2 + 9*zeta - 18)*q^538 + (6*zeta^2 - 12*zeta 
- 12)*q^539 + (-11*zeta^2 + 22)*q^541 + (2*zeta^2 - 2*zeta - 4)*q^542 + 
(6*zeta^2 - 3*zeta - 12)*q^544 + (22*zeta^2 - 11*zeta - 44)*q^545 + (20*zeta^2 -
20*zeta - 40)*q^547 + (3*zeta^2 - 6)*q^548 + (-4*zeta^2 + 8*zeta + 8)*q^550 + 
(2*zeta^2 + 2*zeta - 4)*q^551 + 4*zeta*q^553 + 2*zeta*q^554 + (8*zeta^2 + 8*zeta
- 16)*q^556 + (21*zeta^2 - 42*zeta - 42)*q^557 + (2*zeta^2 - 4)*q^559 + 
(18*zeta^2 - 18*zeta - 36)*q^560 + (14*zeta^2 - 7*zeta - 28)*q^562 + (-40*zeta^2
+ 20*zeta + 80)*q^563 + (3*zeta^2 - 3*zeta - 6)*q^565 + (28*zeta^2 - 56)*q^566 +
(-30*zeta^2 + 60*zeta + 60)*q^568 + (19*zeta^2 + 19*zeta - 38)*q^569 + 
8*zeta*q^571 - 6*zeta*q^572 + (8*zeta^2 + 8*zeta - 16)*q^574 + (-4*zeta^2 + 
8*zeta + 8)*q^575 + (-11*zeta^2 + 22)*q^577 + (10*zeta^2 - 10*zeta - 20)*q^578 +
(6*zeta^2 - 3*zeta - 12)*q^580 + (32*zeta^2 - 16*zeta - 64)*q^581 + (-35*zeta^2 
+ 70)*q^584 + (-11*zeta^2 + 22*zeta + 22)*q^586 + (22*zeta^2 + 22*zeta - 
44)*q^587 + 16*zeta*q^589 - 24*zeta*q^590 + (-21*zeta^2 - 21*zeta + 42)*q^592 + 
(9*zeta^2 - 18*zeta - 18)*q^593 + (18*zeta^2 - 36)*q^595 + (-15*zeta^2 + 15*zeta
+ 30)*q^596 + (-4*zeta^2 + 2*zeta + 8)*q^598 + (-16*zeta^2 + 8*zeta + 32)*q^599 
+ (-25*zeta^2 + 25*zeta + 50)*q^601 + (-4*zeta^2 + 8)*q^602 + (20*zeta^2 - 
40*zeta - 40)*q^604 + (-zeta^2 - zeta + 2)*q^605 + 26*zeta*q^607 + 2*zeta*q^608 
+ (-7*zeta^2 - 7*zeta + 14)*q^610 + (-4*zeta^2 + 8*zeta + 8)*q^611 + (34*zeta^2 
- 68)*q^613 + (-16*zeta^2 + 16*zeta + 32)*q^614 + (40*zeta^2 - 20*zeta - 
80)*q^616 + (14*zeta^2 - 7*zeta - 28)*q^617 + (20*zeta^2 - 20*zeta - 40)*q^619 +
(-24*zeta^2 + 48)*q^620 + (4*zeta^2 - 8*zeta - 8)*q^622 + (-6*zeta^2 - 6*zeta + 
12)*q^623 - 11*zeta*q^625 - 25*zeta*q^626 + (17*zeta^2 + 17*zeta - 34)*q^628 + 
(-21*zeta^2 + 42*zeta + 42)*q^629 + (-20*zeta^2 + 40)*q^631 + (-10*zeta^2 + 
10*zeta + 20)*q^632 + (-10*zeta^2 + 5*zeta + 20)*q^634 + (4*zeta^2 - 2*zeta - 
8)*q^635 + (3*zeta^2 - 3*zeta - 6)*q^637 + (6*zeta^2 - 12)*q^638 + (19*zeta^2 - 
38*zeta - 38)*q^640 + (13*zeta^2 + 13*zeta - 26)*q^641 + 8*zeta*q^643 - 
12*zeta*q^644 + (-6*zeta^2 - 6*zeta + 12)*q^646 + (-18*zeta^2 + 36*zeta + 
36)*q^647 + (48*zeta^2 - 96)*q^649 + (2*zeta^2 - 2*zeta - 4)*q^650 + (32*zeta^2 
- 16*zeta - 64)*q^652 + (-16*zeta^2 + 8*zeta + 32)*q^653 + (-6*zeta^2 + 6*zeta +
12)*q^655 + (-36*zeta^2 + 72)*q^656 + (-8*zeta^2 + 16*zeta + 16)*q^658 + 
(-2*zeta^2 - 2*zeta + 4)*q^659 + 17*zeta*q^661 + 2*zeta*q^662 + (-40*zeta^2 - 
40*zeta + 80)*q^664 + (-4*zeta^2 + 8*zeta + 8)*q^665 + (-6*zeta^2 + 12)*q^667 + 
(30*zeta^2 - 30*zeta - 60)*q^668 + (20*zeta^2 - 10*zeta - 40)*q^670 + 
(-28*zeta^2 + 14*zeta + 56)*q^671 + (-25*zeta^2 + 25*zeta + 50)*q^673 + 
(-26*zeta^2 + 52)*q^674 + (-12*zeta^2 + 24*zeta + 24)*q^676 + (-8*zeta^2 - 
8*zeta + 16)*q^677 + 4*zeta*q^679 + 45*zeta*q^680 + (16*zeta^2 + 16*zeta - 
32)*q^682 + (-12*zeta^2 + 24*zeta + 24)*q^683 + (3*zeta^2 - 6)*q^685 + 
(-20*zeta^2 + 20*zeta + 40)*q^686 + (-12*zeta^2 + 6*zeta + 24)*q^688 + (2*zeta^2
- 2*zeta - 4)*q^691 + (-33*zeta^2 + 66)*q^692 + (-2*zeta^2 + 4*zeta + 4)*q^694 +
(-8*zeta^2 - 8*zeta + 16)*q^695 - 36*zeta*q^697 + 2*zeta*q^698 + (-4*zeta^2 - 
4*zeta + 8)*q^700 + (27*zeta^2 - 54*zeta - 54)*q^701 + (14*zeta^2 - 28)*q^703 + 
(-42*zeta^2 + 42*zeta + 84)*q^704 + (-16*zeta^2 + 8*zeta + 32)*q^706 + 
(-16*zeta^2 + 8*zeta + 32)*q^707 + (-25*zeta^2 + 25*zeta + 50)*q^709 + 
(-18*zeta^2 + 36)*q^710 + (-15*zeta^2 + 30*zeta + 30)*q^712 + (16*zeta^2 + 
16*zeta - 32)*q^713 - 6*zeta*q^715 - 36*zeta*q^716 + (-6*zeta^2 - 6*zeta + 
12)*q^718 + (-6*zeta^2 + 12*zeta + 12)*q^719 + (-16*zeta^2 + 32)*q^721 + 
(-15*zeta^2 + 15*zeta + 30)*q^722 + (-4*zeta^2 + 2*zeta + 8)*q^724 + (4*zeta^2 -
2*zeta - 8)*q^725 + (-34*zeta^2 + 34*zeta + 68)*q^727 + (-10*zeta^2 + 20)*q^728 
+ (-7*zeta^2 + 14*zeta + 14)*q^730 + (6*zeta^2 + 6*zeta - 12)*q^731 - 
46*zeta*q^733 + 20*zeta*q^734 + (-2*zeta^2 - 2*zeta + 4)*q^736 + (20*zeta^2 - 
40*zeta - 40)*q^737 + (-20*zeta^2 + 40)*q^739 + (-21*zeta^2 + 21*zeta + 
42)*q^740 + (8*zeta^2 - 4*zeta - 16)*q^743 + (-15*zeta^2 + 15*zeta + 30)*q^745 +
(10*zeta^2 - 20)*q^746 + (-18*zeta^2 + 36*zeta + 36)*q^748 - 10*zeta*q^751 - 
36*zeta*q^752 + (zeta^2 + zeta - 2)*q^754 + (-20*zeta^2 + 40*zeta + 40)*q^755 + 
(-2*zeta^2 + 4)*q^757 + (-16*zeta^2 + 16*zeta + 32)*q^758 + (20*zeta^2 - 10*zeta
- 40)*q^760 + (-34*zeta^2 + 17*zeta + 68)*q^761 + (22*zeta^2 - 22*zeta - 
44)*q^763 + (30*zeta^2 - 60)*q^764 + (10*zeta^2 - 20*zeta - 20)*q^766 + 
(-8*zeta^2 - 8*zeta + 16)*q^767 - zeta*q^769 + 12*zeta*q^770 + (-zeta^2 - zeta +
2)*q^772 + (-15*zeta^2 + 30*zeta + 30)*q^773 + (16*zeta^2 - 32)*q^775 + 
(-10*zeta^2 + 10*zeta + 20)*q^776 + (32*zeta^2 - 16*zeta - 64)*q^778 + 
(16*zeta^2 - 8*zeta - 32)*q^779 + (36*zeta^2 - 36*zeta - 72)*q^781 + (-18*zeta^2
+ 36)*q^782 + (-9*zeta^2 + 18*zeta + 18)*q^784 + (-17*zeta^2 - 17*zeta + 
34)*q^785 + 26*zeta*q^787 + 9*zeta*q^788 + (2*zeta^2 + 2*zeta - 4)*q^790 + 
(-2*zeta^2 + 4*zeta + 4)*q^791 + (-7*zeta^2 + 14)*q^793 + (29*zeta^2 - 29*zeta -
58)*q^794 + (-40*zeta^2 + 20*zeta + 80)*q^796 + (62*zeta^2 - 31*zeta - 
124)*q^797 + (36*zeta^2 - 36*zeta - 72)*q^799 + (2*zeta^2 - 4)*q^800 + (7*zeta^2
- 14*zeta - 14)*q^802 + (14*zeta^2 + 14*zeta - 28)*q^803 - 12*zeta*q^805 - 
8*zeta*q^806 + (20*zeta^2 + 20*zeta - 40)*q^808 + (-27*zeta^2 + 54*zeta + 
54)*q^809 + (16*zeta^2 - 32)*q^811 + (-6*zeta^2 + 6*zeta + 12)*q^812 + 
(28*zeta^2 - 14*zeta - 56)*q^814 + (-32*zeta^2 + 16*zeta + 64)*q^815 + (4*zeta^2
- 4*zeta - 8)*q^817 + (19*zeta^2 - 38)*q^818 + (12*zeta^2 - 24*zeta - 24)*q^820 
+ (7*zeta^2 + 7*zeta - 14)*q^821 - 28*zeta*q^823 - 40*zeta*q^824 + (-16*zeta^2 -
16*zeta + 32)*q^826 + (-6*zeta^2 + 12*zeta + 12)*q^827 + (-2*zeta^2 + 4)*q^829 +
(24*zeta^2 - 24*zeta - 48)*q^830 + (-14*zeta^2 + 7*zeta + 28)*q^832 + (18*zeta^2
- 9*zeta - 36)*q^833 + (30*zeta^2 - 30*zeta - 60)*q^835 + (-12*zeta^2 + 
24)*q^836 + (4*zeta^2 - 8*zeta - 8)*q^838 + (-26*zeta^2 - 26*zeta + 52)*q^839 - 
26*zeta*q^841 - 25*zeta*q^842 + (-10*zeta^2 - 10*zeta + 20)*q^844 + (12*zeta^2 -
24*zeta - 24)*q^845 + (-2*zeta^2 + 4)*q^847 + (-12*zeta^2 + 6*zeta + 24)*q^850 +
(28*zeta^2 - 14*zeta - 56)*q^851 + (-34*zeta^2 + 34*zeta + 68)*q^853 + 
(14*zeta^2 - 28)*q^854 + (13*zeta^2 + 13*zeta - 26)*q^857 + 44*zeta*q^859 + 
6*zeta*q^860 + (18*zeta^2 - 36*zeta - 36)*q^863 + (-33*zeta^2 + 66)*q^865 + 
(11*zeta^2 - 11*zeta - 22)*q^866 + (-32*zeta^2 + 16*zeta + 64)*q^868 + (8*zeta^2
- 4*zeta - 16)*q^869 + (10*zeta^2 - 10*zeta - 20)*q^871 + (55*zeta^2 - 
110)*q^872 + (-4*zeta^2 + 8*zeta + 8)*q^874 + (14*zeta^2 + 14*zeta - 28)*q^875 +
53*zeta*q^877 + 20*zeta*q^878 + (18*zeta^2 + 18*zeta - 36)*q^880 + (12*zeta^2 - 
24*zeta - 24)*q^881 + O(q^882), 2*zeta*q + 2*zeta*q^2 + (2*zeta^2 + 2*zeta - 
4)*q^4 + (-2*zeta^2 + 4*zeta + 4)*q^5 + (-4*zeta^2 + 8)*q^7 + (-10*zeta^2 + 
10*zeta + 20)*q^8 + (-4*zeta^2 + 2*zeta + 8)*q^10 + (8*zeta^2 - 4*zeta - 
16)*q^11 + (-2*zeta^2 + 2*zeta + 4)*q^13 + (-4*zeta^2 + 8)*q^14 + (6*zeta^2 - 
12*zeta - 12)*q^16 + (6*zeta^2 + 6*zeta - 12)*q^17 + 4*zeta*q^19 + 6*zeta*q^20 +
(4*zeta^2 + 4*zeta - 8)*q^22 + (4*zeta^2 - 8*zeta - 8)*q^23 + (4*zeta^2 - 
8)*q^25 + (-2*zeta^2 + 2*zeta + 4)*q^26 + (-8*zeta^2 + 4*zeta + 16)*q^28 + 
(-4*zeta^2 + 2*zeta + 8)*q^29 + (16*zeta^2 - 16*zeta - 32)*q^31 + (-2*zeta^2 + 
4)*q^32 + (-6*zeta^2 + 12*zeta + 12)*q^34 + (-4*zeta^2 - 4*zeta + 8)*q^35 - 
14*zeta*q^37 + 4*zeta*q^38 + (-10*zeta^2 - 10*zeta + 20)*q^40 + (-8*zeta^2 + 
16*zeta + 16)*q^41 + (-4*zeta^2 + 8)*q^43 + (12*zeta^2 - 12*zeta - 24)*q^44 + 
(8*zeta^2 - 4*zeta - 16)*q^46 + (-16*zeta^2 + 8*zeta + 32)*q^47 + (-6*zeta^2 + 
6*zeta + 12)*q^49 + (4*zeta^2 - 8)*q^50 + (-2*zeta^2 + 4*zeta + 4)*q^52 + 
12*zeta*q^55 - 20*zeta*q^56 + (-2*zeta^2 - 2*zeta + 4)*q^58 + (16*zeta^2 - 
32*zeta - 32)*q^59 + (14*zeta^2 - 28)*q^61 + (16*zeta^2 - 16*zeta - 32)*q^62 + 
(28*zeta^2 - 14*zeta - 56)*q^64 + (-4*zeta^2 + 2*zeta + 8)*q^65 + (-20*zeta^2 + 
20*zeta + 40)*q^67 + (18*zeta^2 - 36)*q^68 + (4*zeta^2 - 8*zeta - 8)*q^70 + 
(-12*zeta^2 - 12*zeta + 24)*q^71 - 14*zeta*q^73 - 14*zeta*q^74 + (4*zeta^2 + 
4*zeta - 8)*q^76 + (-8*zeta^2 + 16*zeta + 16)*q^77 + (-4*zeta^2 + 8)*q^79 + 
(18*zeta^2 - 18*zeta - 36)*q^80 + (-16*zeta^2 + 8*zeta + 32)*q^82 + (32*zeta^2 -
16*zeta - 64)*q^83 + (-18*zeta^2 + 18*zeta + 36)*q^85 + (-4*zeta^2 + 8)*q^86 + 
(-20*zeta^2 + 40*zeta + 40)*q^88 + (-6*zeta^2 - 6*zeta + 12)*q^89 - 4*zeta*q^91 
- 12*zeta*q^92 + (-8*zeta^2 - 8*zeta + 16)*q^94 + (-4*zeta^2 + 8*zeta + 8)*q^95 
+ (-4*zeta^2 + 8)*q^97 + (-6*zeta^2 + 6*zeta + 12)*q^98 + (8*zeta^2 - 4*zeta - 
16)*q^100 + (-16*zeta^2 + 8*zeta + 32)*q^101 + (16*zeta^2 - 16*zeta - 32)*q^103 
+ (-10*zeta^2 + 20)*q^104 + 22*zeta*q^109 + 12*zeta*q^110 + (12*zeta^2 + 12*zeta
- 24)*q^112 + (-2*zeta^2 + 4*zeta + 4)*q^113 + (12*zeta^2 - 24)*q^115 + 
(-6*zeta^2 + 6*zeta + 12)*q^116 + (32*zeta^2 - 16*zeta - 64)*q^118 + (-24*zeta^2
+ 12*zeta + 48)*q^119 + (2*zeta^2 - 2*zeta - 4)*q^121 + (14*zeta^2 - 28)*q^122 +
(16*zeta^2 - 32*zeta - 32)*q^124 + (14*zeta^2 + 14*zeta - 28)*q^125 + 
4*zeta*q^127 + 38*zeta*q^128 + (-2*zeta^2 - 2*zeta + 4)*q^130 + (4*zeta^2 - 
8*zeta - 8)*q^131 + (-8*zeta^2 + 16)*q^133 + (-20*zeta^2 + 20*zeta + 40)*q^134 +
(-60*zeta^2 + 30*zeta + 120)*q^136 + (-4*zeta^2 + 2*zeta + 8)*q^137 + (16*zeta^2
- 16*zeta - 32)*q^139 + (-12*zeta^2 + 24)*q^140 + (12*zeta^2 - 24*zeta - 
24)*q^142 + (4*zeta^2 + 4*zeta - 8)*q^143 - 6*zeta*q^145 - 14*zeta*q^146 + 
(-14*zeta^2 - 14*zeta + 28)*q^148 + (10*zeta^2 - 20*zeta - 20)*q^149 + 
(-40*zeta^2 + 80)*q^151 + (-20*zeta^2 + 20*zeta + 40)*q^152 + (-16*zeta^2 + 
8*zeta + 32)*q^154 + (32*zeta^2 - 16*zeta - 64)*q^155 + (34*zeta^2 - 34*zeta - 
68)*q^157 + (-4*zeta^2 + 8)*q^158 + (2*zeta^2 - 4*zeta - 4)*q^160 + (8*zeta^2 + 
8*zeta - 16)*q^161 - 32*zeta*q^163 + 24*zeta*q^164 + (16*zeta^2 + 16*zeta - 
32)*q^166 + (-20*zeta^2 + 40*zeta + 40)*q^167 + (24*zeta^2 - 48)*q^169 + 
(-18*zeta^2 + 18*zeta + 36)*q^170 + (-8*zeta^2 + 4*zeta + 16)*q^172 + (44*zeta^2
- 22*zeta - 88)*q^173 + (-8*zeta^2 + 8*zeta + 16)*q^175 + (-36*zeta^2 + 
72)*q^176 + (6*zeta^2 - 12*zeta - 12)*q^178 + (24*zeta^2 + 24*zeta - 48)*q^179 +
4*zeta*q^181 - 4*zeta*q^182 + (20*zeta^2 + 20*zeta - 40)*q^184 + (14*zeta^2 - 
28*zeta - 28)*q^185 + (36*zeta^2 - 72)*q^187 + (-24*zeta^2 + 24*zeta + 48)*q^188
+ (-8*zeta^2 + 4*zeta + 16)*q^190 + (-40*zeta^2 + 20*zeta + 80)*q^191 + 
(-2*zeta^2 + 2*zeta + 4)*q^193 + (-4*zeta^2 + 8)*q^194 + (-6*zeta^2 + 12*zeta + 
12)*q^196 + (-6*zeta^2 - 6*zeta + 12)*q^197 + 40*zeta*q^199 + 20*zeta*q^200 + 
(-8*zeta^2 - 8*zeta + 16)*q^202 + (4*zeta^2 - 8*zeta - 8)*q^203 + (-24*zeta^2 + 
48)*q^205 + (16*zeta^2 - 16*zeta - 32)*q^206 + (12*zeta^2 - 6*zeta - 24)*q^208 +
(16*zeta^2 - 8*zeta - 32)*q^209 + (-20*zeta^2 + 20*zeta + 40)*q^211 + (-4*zeta^2
- 4*zeta + 8)*q^215 + 32*zeta*q^217 + 22*zeta*q^218 + (12*zeta^2 + 12*zeta - 
24)*q^220 + (-6*zeta^2 + 12*zeta + 12)*q^221 + (-4*zeta^2 + 8)*q^223 + (4*zeta^2
- 4*zeta - 8)*q^224 + (-4*zeta^2 + 2*zeta + 8)*q^226 + (8*zeta^2 - 4*zeta - 
16)*q^227 + (-2*zeta^2 + 2*zeta + 4)*q^229 + (12*zeta^2 - 24)*q^230 + (10*zeta^2
- 20*zeta - 20)*q^232 + (-30*zeta^2 - 30*zeta + 60)*q^233 - 24*zeta*q^235 - 
48*zeta*q^236 + (-12*zeta^2 - 12*zeta + 24)*q^238 + (-32*zeta^2 + 64*zeta + 
64)*q^239 + (-58*zeta^2 + 116)*q^241 + (2*zeta^2 - 2*zeta - 4)*q^242 + 
(28*zeta^2 - 14*zeta - 56)*q^244 + (-12*zeta^2 + 6*zeta + 24)*q^245 + (-4*zeta^2
+ 4*zeta + 8)*q^247 + (80*zeta^2 - 160)*q^248 + (-14*zeta^2 + 28*zeta + 
28)*q^250 + (12*zeta^2 + 12*zeta - 24)*q^251 - 24*zeta*q^253 + 4*zeta*q^254 + 
(-10*zeta^2 - 10*zeta + 20)*q^256 + (10*zeta^2 - 20*zeta - 20)*q^257 + 
(28*zeta^2 - 56)*q^259 + (-6*zeta^2 + 6*zeta + 12)*q^260 + (8*zeta^2 - 4*zeta - 
16)*q^262 + (-16*zeta^2 + 8*zeta + 32)*q^263 + (-8*zeta^2 + 16)*q^266 + 
(-20*zeta^2 + 40*zeta + 40)*q^268 + (-18*zeta^2 - 18*zeta + 36)*q^269 + 
4*zeta*q^271 - 54*zeta*q^272 + (-2*zeta^2 - 2*zeta + 4)*q^274 + (8*zeta^2 - 
16*zeta - 16)*q^275 + (-4*zeta^2 + 8)*q^277 + (16*zeta^2 - 16*zeta - 32)*q^278 +
(40*zeta^2 - 20*zeta - 80)*q^280 + (-28*zeta^2 + 14*zeta + 56)*q^281 + 
(-56*zeta^2 + 56*zeta + 112)*q^283 + (-36*zeta^2 + 72)*q^284 + (-4*zeta^2 + 
8*zeta + 8)*q^286 + (-16*zeta^2 - 16*zeta + 32)*q^287 + 20*zeta*q^289 - 
6*zeta*q^290 + (-14*zeta^2 - 14*zeta + 28)*q^292 + (22*zeta^2 - 44*zeta - 
44)*q^293 + (48*zeta^2 - 96)*q^295 + (70*zeta^2 - 70*zeta - 140)*q^296 + 
(20*zeta^2 - 10*zeta - 40)*q^298 + (8*zeta^2 - 4*zeta - 16)*q^299 + (8*zeta^2 - 
8*zeta - 16)*q^301 + (-40*zeta^2 + 80)*q^302 + (12*zeta^2 - 24*zeta - 24)*q^304 
+ (14*zeta^2 + 14*zeta - 28)*q^305 - 32*zeta*q^307 + 24*zeta*q^308 + (16*zeta^2 
+ 16*zeta - 32)*q^310 + (-8*zeta^2 + 16*zeta + 16)*q^311 + (50*zeta^2 - 
100)*q^313 + (34*zeta^2 - 34*zeta - 68)*q^314 + (-8*zeta^2 + 4*zeta + 16)*q^316 
+ (20*zeta^2 - 10*zeta - 40)*q^317 + (-12*zeta^2 + 12*zeta + 24)*q^319 + 
(42*zeta^2 - 84)*q^320 + (-8*zeta^2 + 16*zeta + 16)*q^322 + (12*zeta^2 + 12*zeta
- 24)*q^323 + 4*zeta*q^325 - 32*zeta*q^326 + (-40*zeta^2 - 40*zeta + 80)*q^328 +
(16*zeta^2 - 32*zeta - 32)*q^329 + (-4*zeta^2 + 8)*q^331 + (48*zeta^2 - 48*zeta 
- 96)*q^332 + (-40*zeta^2 + 20*zeta + 80)*q^334 + (-40*zeta^2 + 20*zeta + 
80)*q^335 + (52*zeta^2 - 52*zeta - 104)*q^337 + (24*zeta^2 - 48)*q^338 + 
(-18*zeta^2 + 36*zeta + 36)*q^340 + (-32*zeta^2 - 32*zeta + 64)*q^341 - 
40*zeta*q^343 - 20*zeta*q^344 + (22*zeta^2 + 22*zeta - 44)*q^346 + (4*zeta^2 - 
8*zeta - 8)*q^347 + (-4*zeta^2 + 8)*q^349 + (-8*zeta^2 + 8*zeta + 16)*q^350 + 
(-8*zeta^2 + 4*zeta + 16)*q^352 + (32*zeta^2 - 16*zeta - 64)*q^353 + (36*zeta^2 
- 36*zeta - 72)*q^355 + (-18*zeta^2 + 36)*q^356 + (-24*zeta^2 + 48*zeta + 
48)*q^358 + (12*zeta^2 + 12*zeta - 24)*q^359 - 30*zeta*q^361 + 4*zeta*q^362 + 
(-4*zeta^2 - 4*zeta + 8)*q^364 + (14*zeta^2 - 28*zeta - 28)*q^365 + (-40*zeta^2 
+ 80)*q^367 + (-36*zeta^2 + 36*zeta + 72)*q^368 + (28*zeta^2 - 14*zeta - 
56)*q^370 + (-20*zeta^2 + 20*zeta + 40)*q^373 + (36*zeta^2 - 72)*q^374 + 
(40*zeta^2 - 80*zeta - 80)*q^376 + (-2*zeta^2 - 2*zeta + 4)*q^377 - 
32*zeta*q^379 + 12*zeta*q^380 + (-20*zeta^2 - 20*zeta + 40)*q^382 + (-20*zeta^2 
+ 40*zeta + 40)*q^383 + (-24*zeta^2 + 48)*q^385 + (-2*zeta^2 + 2*zeta + 4)*q^386
+ (-8*zeta^2 + 4*zeta + 16)*q^388 + (-64*zeta^2 + 32*zeta + 128)*q^389 + 
(36*zeta^2 - 36*zeta - 72)*q^391 + (-30*zeta^2 + 60)*q^392 + (6*zeta^2 - 12*zeta
- 12)*q^394 + (-4*zeta^2 - 4*zeta + 8)*q^395 + 58*zeta*q^397 + 40*zeta*q^398 + 
(-12*zeta^2 - 12*zeta + 24)*q^400 + (-14*zeta^2 + 28*zeta + 28)*q^401 + 
(16*zeta^2 - 32)*q^403 + (-24*zeta^2 + 24*zeta + 48)*q^404 + (8*zeta^2 - 4*zeta 
- 16)*q^406 + (-56*zeta^2 + 28*zeta + 112)*q^407 + (-38*zeta^2 + 38*zeta + 
76)*q^409 + (-24*zeta^2 + 48)*q^410 + (16*zeta^2 - 32*zeta - 32)*q^412 + 
(32*zeta^2 + 32*zeta - 64)*q^413 + 48*zeta*q^415 - 2*zeta*q^416 + (8*zeta^2 + 
8*zeta - 16)*q^418 + (-8*zeta^2 + 16*zeta + 16)*q^419 + (50*zeta^2 - 100)*q^421 
+ (-20*zeta^2 + 20*zeta + 40)*q^422 + (24*zeta^2 - 12*zeta - 48)*q^425 + 
(-28*zeta^2 + 28*zeta + 56)*q^427 + (4*zeta^2 - 8*zeta - 8)*q^430 + 
22*zeta*q^433 + 32*zeta*q^434 + (22*zeta^2 + 22*zeta - 44)*q^436 + (8*zeta^2 - 
16*zeta - 16)*q^437 + (-40*zeta^2 + 80)*q^439 + (-60*zeta^2 + 60*zeta + 
120)*q^440 + (-12*zeta^2 + 6*zeta + 24)*q^442 + (80*zeta^2 - 40*zeta - 
160)*q^443 + (18*zeta^2 - 18*zeta - 36)*q^445 + (-4*zeta^2 + 8)*q^446 + 
(-28*zeta^2 + 56*zeta + 56)*q^448 + (24*zeta^2 + 24*zeta - 48)*q^449 + 
48*zeta*q^451 + 6*zeta*q^452 + (4*zeta^2 + 4*zeta - 8)*q^454 + (4*zeta^2 - 
8*zeta - 8)*q^455 + (-58*zeta^2 + 116)*q^457 + (-2*zeta^2 + 2*zeta + 4)*q^458 + 
(24*zeta^2 - 12*zeta - 48)*q^460 + (32*zeta^2 - 16*zeta - 64)*q^461 + (16*zeta^2
- 16*zeta - 32)*q^463 + (18*zeta^2 - 36)*q^464 + (30*zeta^2 - 60*zeta - 
60)*q^466 + (-24*zeta^2 - 24*zeta + 48)*q^467 - 40*zeta*q^469 - 24*zeta*q^470 + 
(80*zeta^2 + 80*zeta - 160)*q^472 + (-8*zeta^2 + 16*zeta + 16)*q^473 + (8*zeta^2
- 16)*q^475 + (-36*zeta^2 + 36*zeta + 72)*q^476 + (-64*zeta^2 + 32*zeta + 
128)*q^478 + (56*zeta^2 - 28*zeta - 112)*q^479 + (14*zeta^2 - 14*zeta - 
28)*q^481 + (-58*zeta^2 + 116)*q^482 + (2*zeta^2 - 4*zeta - 4)*q^484 + 
(-4*zeta^2 - 4*zeta + 8)*q^485 - 32*zeta*q^487 + 70*zeta*q^488 + (-6*zeta^2 - 
6*zeta + 12)*q^490 + (-20*zeta^2 + 40*zeta + 40)*q^491 + (-18*zeta^2 + 36)*q^493
+ (-4*zeta^2 + 4*zeta + 8)*q^494 + (-96*zeta^2 + 48*zeta + 192)*q^496 + 
(48*zeta^2 - 24*zeta - 96)*q^497 + (-20*zeta^2 + 20*zeta + 40)*q^499 + 
(42*zeta^2 - 84)*q^500 + (-12*zeta^2 + 24*zeta + 24)*q^502 + (24*zeta^2 + 
24*zeta - 48)*q^503 - 24*zeta*q^505 - 24*zeta*q^506 + (4*zeta^2 + 4*zeta - 
8)*q^508 + (-32*zeta^2 + 64*zeta + 64)*q^509 + (28*zeta^2 - 56)*q^511 + 
(-46*zeta^2 + 46*zeta + 92)*q^512 + (20*zeta^2 - 10*zeta - 40)*q^514 + 
(32*zeta^2 - 16*zeta - 64)*q^515 + (-48*zeta^2 + 48*zeta + 96)*q^517 + 
(28*zeta^2 - 56)*q^518 + (10*zeta^2 - 20*zeta - 20)*q^520 + (-24*zeta^2 - 
24*zeta + 48)*q^521 + 76*zeta*q^523 - 12*zeta*q^524 + (-8*zeta^2 - 8*zeta + 
16)*q^526 + (48*zeta^2 - 96*zeta - 96)*q^527 + (22*zeta^2 - 44)*q^529 + 
(-16*zeta^2 + 8*zeta + 32)*q^532 + (-16*zeta^2 + 8*zeta + 32)*q^533 + 
(-100*zeta^2 + 200)*q^536 + (18*zeta^2 - 36*zeta - 36)*q^538 + (12*zeta^2 + 
12*zeta - 24)*q^539 + 22*zeta*q^541 + 4*zeta*q^542 + (-6*zeta^2 - 6*zeta + 
12)*q^544 + (-22*zeta^2 + 44*zeta + 44)*q^545 + (-40*zeta^2 + 80)*q^547 + 
(-6*zeta^2 + 6*zeta + 12)*q^548 + (16*zeta^2 - 8*zeta - 32)*q^550 + (-8*zeta^2 +
4*zeta + 16)*q^551 + (8*zeta^2 - 8*zeta - 16)*q^553 + (-4*zeta^2 + 8)*q^554 + 
(16*zeta^2 - 32*zeta - 32)*q^556 + (42*zeta^2 + 42*zeta - 84)*q^557 - 
4*zeta*q^559 + 36*zeta*q^560 + (-14*zeta^2 - 14*zeta + 28)*q^562 + (40*zeta^2 - 
80*zeta - 80)*q^563 + (-6*zeta^2 + 12)*q^565 + (-56*zeta^2 + 56*zeta + 
112)*q^566 + (120*zeta^2 - 60*zeta - 240)*q^568 + (-76*zeta^2 + 38*zeta + 
152)*q^569 + (16*zeta^2 - 16*zeta - 32)*q^571 + (12*zeta^2 - 24)*q^572 + 
(16*zeta^2 - 32*zeta - 32)*q^574 + (-8*zeta^2 - 8*zeta + 16)*q^575 + 
22*zeta*q^577 + 20*zeta*q^578 + (-6*zeta^2 - 6*zeta + 12)*q^580 + (-32*zeta^2 + 
64*zeta + 64)*q^581 + (70*zeta^2 - 70*zeta - 140)*q^584 + (44*zeta^2 - 22*zeta -
88)*q^586 + (-88*zeta^2 + 44*zeta + 176)*q^587 + (32*zeta^2 - 32*zeta - 
64)*q^589 + (48*zeta^2 - 96)*q^590 + (-42*zeta^2 + 84*zeta + 84)*q^592 + 
(18*zeta^2 + 18*zeta - 36)*q^593 - 36*zeta*q^595 - 30*zeta*q^596 + (4*zeta^2 + 
4*zeta - 8)*q^598 + (16*zeta^2 - 32*zeta - 32)*q^599 + (50*zeta^2 - 100)*q^601 +
(8*zeta^2 - 8*zeta - 16)*q^602 + (-80*zeta^2 + 40*zeta + 160)*q^604 + (4*zeta^2 
- 2*zeta - 8)*q^605 + (52*zeta^2 - 52*zeta - 104)*q^607 + (-4*zeta^2 + 8)*q^608 
+ (-14*zeta^2 + 28*zeta + 28)*q^610 + (-8*zeta^2 - 8*zeta + 16)*q^611 - 
68*zeta*q^613 - 32*zeta*q^614 + (-40*zeta^2 - 40*zeta + 80)*q^616 + (-14*zeta^2 
+ 28*zeta + 28)*q^617 + (-40*zeta^2 + 80)*q^619 + (48*zeta^2 - 48*zeta - 
96)*q^620 + (-16*zeta^2 + 8*zeta + 32)*q^622 + (24*zeta^2 - 12*zeta - 48)*q^623 
+ (-22*zeta^2 + 22*zeta + 44)*q^625 + (50*zeta^2 - 100)*q^626 + (34*zeta^2 - 
68*zeta - 68)*q^628 + (-42*zeta^2 - 42*zeta + 84)*q^629 + 40*zeta*q^631 - 
20*zeta*q^632 + (10*zeta^2 + 10*zeta - 20)*q^634 + (-4*zeta^2 + 8*zeta + 
8)*q^635 + (-6*zeta^2 + 12)*q^637 + (-12*zeta^2 + 12*zeta + 24)*q^638 + 
(-76*zeta^2 + 38*zeta + 152)*q^640 + (-52*zeta^2 + 26*zeta + 104)*q^641 + 
(16*zeta^2 - 16*zeta - 32)*q^643 + (24*zeta^2 - 48)*q^644 + (-12*zeta^2 + 
24*zeta + 24)*q^646 + (-36*zeta^2 - 36*zeta + 72)*q^647 - 96*zeta*q^649 + 
4*zeta*q^650 + (-32*zeta^2 - 32*zeta + 64)*q^652 + (16*zeta^2 - 32*zeta - 
32)*q^653 + (12*zeta^2 - 24)*q^655 + (72*zeta^2 - 72*zeta - 144)*q^656 + 
(32*zeta^2 - 16*zeta - 64)*q^658 + (8*zeta^2 - 4*zeta - 16)*q^659 + (34*zeta^2 -
34*zeta - 68)*q^661 + (-4*zeta^2 + 8)*q^662 + (-80*zeta^2 + 160*zeta + 
160)*q^664 + (-8*zeta^2 - 8*zeta + 16)*q^665 + 12*zeta*q^667 + 60*zeta*q^668 + 
(-20*zeta^2 - 20*zeta + 40)*q^670 + (28*zeta^2 - 56*zeta - 56)*q^671 + 
(50*zeta^2 - 100)*q^673 + (52*zeta^2 - 52*zeta - 104)*q^674 + (48*zeta^2 - 
24*zeta - 96)*q^676 + (32*zeta^2 - 16*zeta - 64)*q^677 + (8*zeta^2 - 8*zeta - 
16)*q^679 + (-90*zeta^2 + 180)*q^680 + (32*zeta^2 - 64*zeta - 64)*q^682 + 
(-24*zeta^2 - 24*zeta + 48)*q^683 - 6*zeta*q^685 - 40*zeta*q^686 + (12*zeta^2 + 
12*zeta - 24)*q^688 + (-4*zeta^2 + 8)*q^691 + (66*zeta^2 - 66*zeta - 132)*q^692 
+ (8*zeta^2 - 4*zeta - 16)*q^694 + (32*zeta^2 - 16*zeta - 64)*q^695 + 
(-72*zeta^2 + 72*zeta + 144)*q^697 + (-4*zeta^2 + 8)*q^698 + (-8*zeta^2 + 
16*zeta + 16)*q^700 + (54*zeta^2 + 54*zeta - 108)*q^701 - 28*zeta*q^703 - 
84*zeta*q^704 + (16*zeta^2 + 16*zeta - 32)*q^706 + (16*zeta^2 - 32*zeta - 
32)*q^707 + (50*zeta^2 - 100)*q^709 + (36*zeta^2 - 36*zeta - 72)*q^710 + 
(60*zeta^2 - 30*zeta - 120)*q^712 + (-64*zeta^2 + 32*zeta + 128)*q^713 + 
(-12*zeta^2 + 12*zeta + 24)*q^715 + (72*zeta^2 - 144)*q^716 + (-12*zeta^2 + 
24*zeta + 24)*q^718 + (-12*zeta^2 - 12*zeta + 24)*q^719 + 32*zeta*q^721 - 
30*zeta*q^722 + (4*zeta^2 + 4*zeta - 8)*q^724 + (-4*zeta^2 + 8*zeta + 8)*q^725 +
(68*zeta^2 - 136)*q^727 + (20*zeta^2 - 20*zeta - 40)*q^728 + (28*zeta^2 - 
14*zeta - 56)*q^730 + (-24*zeta^2 + 12*zeta + 48)*q^731 + (-92*zeta^2 + 92*zeta 
+ 184)*q^733 + (-40*zeta^2 + 80)*q^734 + (-4*zeta^2 + 8*zeta + 8)*q^736 + 
(40*zeta^2 + 40*zeta - 80)*q^737 + 40*zeta*q^739 - 42*zeta*q^740 + (-8*zeta^2 + 
16*zeta + 16)*q^743 + (30*zeta^2 - 60)*q^745 + (-20*zeta^2 + 20*zeta + 40)*q^746
+ (72*zeta^2 - 36*zeta - 144)*q^748 + (-20*zeta^2 + 20*zeta + 40)*q^751 + 
(72*zeta^2 - 144)*q^752 + (2*zeta^2 - 4*zeta - 4)*q^754 + (-40*zeta^2 - 40*zeta 
+ 80)*q^755 + 4*zeta*q^757 - 32*zeta*q^758 + (-20*zeta^2 - 20*zeta + 40)*q^760 +
(34*zeta^2 - 68*zeta - 68)*q^761 + (-44*zeta^2 + 88)*q^763 + (-60*zeta^2 + 
60*zeta + 120)*q^764 + (-40*zeta^2 + 20*zeta + 80)*q^766 + (32*zeta^2 - 16*zeta 
- 64)*q^767 + (-2*zeta^2 + 2*zeta + 4)*q^769 + (-24*zeta^2 + 48)*q^770 + 
(-2*zeta^2 + 4*zeta + 4)*q^772 + (-30*zeta^2 - 30*zeta + 60)*q^773 - 
32*zeta*q^775 - 20*zeta*q^776 + (-32*zeta^2 - 32*zeta + 64)*q^778 + (-16*zeta^2 
+ 32*zeta + 32)*q^779 + (-72*zeta^2 + 144)*q^781 + (36*zeta^2 - 36*zeta - 
72)*q^782 + (36*zeta^2 - 18*zeta - 72)*q^784 + (68*zeta^2 - 34*zeta - 136)*q^785
+ (52*zeta^2 - 52*zeta - 104)*q^787 + (-18*zeta^2 + 36)*q^788 + (4*zeta^2 - 
8*zeta - 8)*q^790 + (-4*zeta^2 - 4*zeta + 8)*q^791 + 14*zeta*q^793 + 
58*zeta*q^794 + (40*zeta^2 + 40*zeta - 80)*q^796 + (-62*zeta^2 + 124*zeta + 
124)*q^797 + (-72*zeta^2 + 144)*q^799 + (-4*zeta^2 + 4*zeta + 8)*q^800 + 
(-28*zeta^2 + 14*zeta + 56)*q^802 + (-56*zeta^2 + 28*zeta + 112)*q^803 + 
(-24*zeta^2 + 24*zeta + 48)*q^805 + (16*zeta^2 - 32)*q^806 + (40*zeta^2 - 
80*zeta - 80)*q^808 + (-54*zeta^2 - 54*zeta + 108)*q^809 - 32*zeta*q^811 - 
12*zeta*q^812 + (-28*zeta^2 - 28*zeta + 56)*q^814 + (32*zeta^2 - 64*zeta - 
64)*q^815 + (-8*zeta^2 + 16)*q^817 + (-38*zeta^2 + 38*zeta + 76)*q^818 + 
(-48*zeta^2 + 24*zeta + 96)*q^820 + (-28*zeta^2 + 14*zeta + 56)*q^821 + 
(-56*zeta^2 + 56*zeta + 112)*q^823 + (80*zeta^2 - 160)*q^824 + (-32*zeta^2 + 
64*zeta + 64)*q^826 + (-12*zeta^2 - 12*zeta + 24)*q^827 + 4*zeta*q^829 + 
48*zeta*q^830 + (14*zeta^2 + 14*zeta - 28)*q^832 + (-18*zeta^2 + 36*zeta + 
36)*q^833 + (-60*zeta^2 + 120)*q^835 + (24*zeta^2 - 24*zeta - 48)*q^836 + 
(-16*zeta^2 + 8*zeta + 32)*q^838 + (104*zeta^2 - 52*zeta - 208)*q^839 + 
(-52*zeta^2 + 52*zeta + 104)*q^841 + (50*zeta^2 - 100)*q^842 + (-20*zeta^2 + 
40*zeta + 40)*q^844 + (24*zeta^2 + 24*zeta - 48)*q^845 + 4*zeta*q^847 + 
(12*zeta^2 + 12*zeta - 24)*q^850 + (-28*zeta^2 + 56*zeta + 56)*q^851 + 
(68*zeta^2 - 136)*q^853 + (-28*zeta^2 + 28*zeta + 56)*q^854 + (-52*zeta^2 + 
26*zeta + 104)*q^857 + (88*zeta^2 - 88*zeta - 176)*q^859 + (-12*zeta^2 + 
24)*q^860 + (36*zeta^2 + 36*zeta - 72)*q^863 + 66*zeta*q^865 + 22*zeta*q^866 + 
(32*zeta^2 + 32*zeta - 64)*q^868 + (-8*zeta^2 + 16*zeta + 16)*q^869 + 
(-20*zeta^2 + 40)*q^871 + (-110*zeta^2 + 110*zeta + 220)*q^872 + (16*zeta^2 - 
8*zeta - 32)*q^874 + (-56*zeta^2 + 28*zeta + 112)*q^875 + (106*zeta^2 - 106*zeta
- 212)*q^877 + (-40*zeta^2 + 80)*q^878 + (36*zeta^2 - 72*zeta - 72)*q^880 + 
(24*zeta^2 + 24*zeta - 48)*q^881 + O(q^882), (-zeta^2 + 2)*q + (zeta^2 + zeta - 
2)*q^2 + (2*zeta^2 - zeta - 4)*q^4 - 3*zeta*q^5 + (-4*zeta^2 + 4*zeta + 8)*q^7 +
(zeta^2 - 2*zeta - 2)*q^8 + (-3*zeta^2 + 6*zeta + 6)*q^10 - zeta*q^13 + 
(8*zeta^2 - 4*zeta - 16)*q^14 + (-zeta^2 - zeta + 2)*q^16 + (3*zeta^2 - 6)*q^17 
+ (4*zeta^2 - 8)*q^19 + (3*zeta^2 + 3*zeta - 6)*q^20 + (4*zeta^2 - 4*zeta - 
8)*q^25 + (-zeta^2 + 2*zeta + 2)*q^26 + (4*zeta^2 - 8*zeta - 8)*q^28 + (9*zeta^2
- 9*zeta - 18)*q^29 - 4*zeta*q^31 + (-2*zeta^2 + zeta + 4)*q^32 + (-3*zeta^2 - 
3*zeta + 6)*q^34 + (-12*zeta^2 + 24)*q^35 + (zeta^2 - 2)*q^37 + (-4*zeta^2 - 
4*zeta + 8)*q^38 + (6*zeta^2 - 3*zeta - 12)*q^40 + 6*zeta*q^41 + (8*zeta^2 - 
8*zeta - 16)*q^43 + (-12*zeta^2 + 12*zeta + 24)*q^47 + 9*zeta*q^49 + (-8*zeta^2 
+ 4*zeta + 16)*q^50 + (zeta^2 + zeta - 2)*q^52 + (6*zeta^2 - 12)*q^53 + 
(-4*zeta^2 - 4*zeta + 8)*q^56 + (-18*zeta^2 + 9*zeta + 36)*q^58 + (-zeta^2 + 
zeta + 2)*q^61 + (-4*zeta^2 + 8*zeta + 8)*q^62 + (-zeta^2 + 2*zeta + 2)*q^64 + 
(3*zeta^2 - 3*zeta - 6)*q^65 - 4*zeta*q^67 + (-6*zeta^2 + 3*zeta + 12)*q^68 + 
(12*zeta^2 + 12*zeta - 24)*q^70 + (12*zeta^2 - 24)*q^71 + (-11*zeta^2 + 22)*q^73
+ (-zeta^2 - zeta + 2)*q^74 + (-8*zeta^2 + 4*zeta + 16)*q^76 + (-16*zeta^2 + 
16*zeta + 32)*q^79 + (3*zeta^2 - 6*zeta - 6)*q^80 + (6*zeta^2 - 12*zeta - 
12)*q^82 + (-12*zeta^2 + 12*zeta + 24)*q^83 + 9*zeta*q^85 + (-16*zeta^2 + 8*zeta
+ 32)*q^86 + (3*zeta^2 - 6)*q^89 + (-4*zeta^2 + 8)*q^91 + (24*zeta^2 - 12*zeta -
48)*q^94 + 12*zeta*q^95 + (2*zeta^2 - 2*zeta - 4)*q^97 + (9*zeta^2 - 18*zeta - 
18)*q^98 + (-4*zeta^2 + 8*zeta + 8)*q^100 + (-6*zeta^2 + 6*zeta + 12)*q^101 - 
4*zeta*q^103 + (2*zeta^2 - zeta - 4)*q^104 + (-6*zeta^2 - 6*zeta + 12)*q^106 + 
(-12*zeta^2 + 24)*q^107 + (-11*zeta^2 + 22)*q^109 + (-8*zeta^2 + 4*zeta + 
16)*q^112 - 15*zeta*q^113 + (-9*zeta^2 + 18*zeta + 18)*q^116 + (12*zeta^2 - 
12*zeta - 24)*q^119 - 11*zeta*q^121 + (2*zeta^2 - zeta - 4)*q^122 + (4*zeta^2 + 
4*zeta - 8)*q^124 + (-3*zeta^2 + 6)*q^125 + (16*zeta^2 - 32)*q^127 + (zeta^2 + 
zeta - 2)*q^128 + (-6*zeta^2 + 3*zeta + 12)*q^130 - 12*zeta*q^131 + (16*zeta^2 -
16*zeta - 32)*q^133 + (-4*zeta^2 + 8*zeta + 8)*q^134 + (-3*zeta^2 + 6*zeta + 
6)*q^136 + (9*zeta^2 - 9*zeta - 18)*q^137 + 20*zeta*q^139 + (24*zeta^2 - 12*zeta
- 48)*q^140 + (-12*zeta^2 - 12*zeta + 24)*q^142 + (27*zeta^2 - 54)*q^145 + 
(11*zeta^2 + 11*zeta - 22)*q^146 + (-2*zeta^2 + zeta + 4)*q^148 + 9*zeta*q^149 +
(8*zeta^2 - 8*zeta - 16)*q^151 + (-4*zeta^2 + 8*zeta + 8)*q^152 + (12*zeta^2 - 
12*zeta - 24)*q^155 - 13*zeta*q^157 + (32*zeta^2 - 16*zeta - 64)*q^158 + 
(-3*zeta^2 - 3*zeta + 6)*q^160 + (-8*zeta^2 + 16)*q^163 + (-6*zeta^2 - 6*zeta + 
12)*q^164 + (24*zeta^2 - 12*zeta - 48)*q^166 + 12*zeta*q^167 + (-12*zeta^2 + 
12*zeta + 24)*q^169 + (9*zeta^2 - 18*zeta - 18)*q^170 + (-8*zeta^2 + 16*zeta + 
16)*q^172 + (-3*zeta^2 + 3*zeta + 6)*q^173 - 16*zeta*q^175 + (-3*zeta^2 - 3*zeta
+ 6)*q^178 + (-12*zeta^2 + 24)*q^179 + (10*zeta^2 - 20)*q^181 + (4*zeta^2 + 
4*zeta - 8)*q^182 + 3*zeta*q^185 + (12*zeta^2 - 24*zeta - 24)*q^188 + (12*zeta^2
- 24*zeta - 24)*q^190 + (12*zeta^2 - 12*zeta - 24)*q^191 - 13*zeta*q^193 + 
(-4*zeta^2 + 2*zeta + 8)*q^194 + (-9*zeta^2 - 9*zeta + 18)*q^196 + (3*zeta^2 - 
6)*q^197 + (4*zeta^2 - 8)*q^199 + (4*zeta^2 + 4*zeta - 8)*q^200 + (12*zeta^2 - 
6*zeta - 24)*q^202 - 36*zeta*q^203 + (-18*zeta^2 + 18*zeta + 36)*q^205 + 
(-4*zeta^2 + 8*zeta + 8)*q^206 + (zeta^2 - 2*zeta - 2)*q^208 + 8*zeta*q^211 + 
(-12*zeta^2 + 6*zeta + 24)*q^212 + (12*zeta^2 + 12*zeta - 24)*q^214 + (24*zeta^2
- 48)*q^215 + (-16*zeta^2 + 32)*q^217 + (11*zeta^2 + 11*zeta - 22)*q^218 + 
3*zeta*q^221 + (8*zeta^2 - 8*zeta - 16)*q^223 + (-4*zeta^2 + 8*zeta + 8)*q^224 +
(-15*zeta^2 + 30*zeta + 30)*q^226 + (-12*zeta^2 + 12*zeta + 24)*q^227 + 
23*zeta*q^229 + (9*zeta^2 + 9*zeta - 18)*q^232 + (-21*zeta^2 + 42)*q^233 + 
(-36*zeta^2 + 72)*q^235 + (-24*zeta^2 + 12*zeta + 48)*q^238 + 12*zeta*q^239 + 
(-13*zeta^2 + 13*zeta + 26)*q^241 + (-11*zeta^2 + 22*zeta + 22)*q^242 + (zeta^2 
- 2*zeta - 2)*q^244 + (-27*zeta^2 + 27*zeta + 54)*q^245 + 4*zeta*q^247 + 
(8*zeta^2 - 4*zeta - 16)*q^248 + (3*zeta^2 + 3*zeta - 6)*q^250 + (24*zeta^2 - 
48)*q^251 + (-16*zeta^2 - 16*zeta + 32)*q^254 + (2*zeta^2 - zeta - 4)*q^256 - 
15*zeta*q^257 + (4*zeta^2 - 4*zeta - 8)*q^259 + (-3*zeta^2 + 6*zeta + 6)*q^260 +
(-12*zeta^2 + 24*zeta + 24)*q^262 + (12*zeta^2 - 12*zeta - 24)*q^263 + 
18*zeta*q^265 + (-32*zeta^2 + 16*zeta + 64)*q^266 + (4*zeta^2 + 4*zeta - 
8)*q^268 + (-21*zeta^2 + 42)*q^269 + (16*zeta^2 - 32)*q^271 + (3*zeta^2 + 3*zeta
- 6)*q^272 + (-18*zeta^2 + 9*zeta + 36)*q^274 + (-10*zeta^2 + 10*zeta + 
20)*q^277 + (20*zeta^2 - 40*zeta - 40)*q^278 + (12*zeta^2 - 24*zeta - 24)*q^280 
+ (-27*zeta^2 + 27*zeta + 54)*q^281 - 4*zeta*q^283 + (-24*zeta^2 + 12*zeta + 
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
(3*zeta^2 + 3*zeta - 6)*q^520 + (-6*zeta^2 + 12)*q^521 + (16*zeta^2 - 32)*q^523 
+ (12*zeta^2 + 12*zeta - 24)*q^524 + (-24*zeta^2 + 12*zeta + 48)*q^526 + 
12*zeta*q^527 + (-23*zeta^2 + 23*zeta + 46)*q^529 + (18*zeta^2 - 36*zeta - 
36)*q^530 + (-16*zeta^2 + 32*zeta + 32)*q^532 + (-6*zeta^2 + 6*zeta + 12)*q^533 
- 36*zeta*q^535 + (8*zeta^2 - 4*zeta - 16)*q^536 + (21*zeta^2 + 21*zeta - 
42)*q^538 + (zeta^2 - 2)*q^541 + (-16*zeta^2 - 16*zeta + 32)*q^542 + (6*zeta^2 -
3*zeta - 12)*q^544 - 33*zeta*q^545 + (44*zeta^2 - 44*zeta - 88)*q^547 + 
(-9*zeta^2 + 18*zeta + 18)*q^548 + (-36*zeta^2 + 36*zeta + 72)*q^551 + 
64*zeta*q^553 + (20*zeta^2 - 10*zeta - 40)*q^554 + (-20*zeta^2 - 20*zeta + 
40)*q^556 + (3*zeta^2 - 6)*q^557 + (8*zeta^2 - 16)*q^559 + (-12*zeta^2 - 12*zeta
+ 24)*q^560 + (54*zeta^2 - 27*zeta - 108)*q^562 + 12*zeta*q^563 + (45*zeta^2 - 
45*zeta - 90)*q^565 + (-4*zeta^2 + 8*zeta + 8)*q^566 + (-12*zeta^2 + 24*zeta + 
24)*q^568 + (-15*zeta^2 + 15*zeta + 30)*q^569 - 16*zeta*q^571 + (-24*zeta^2 - 
24*zeta + 48)*q^574 + (25*zeta^2 - 50)*q^577 + (-8*zeta^2 - 8*zeta + 16)*q^578 +
(-54*zeta^2 + 27*zeta + 108)*q^580 + 48*zeta*q^581 + (11*zeta^2 - 22*zeta - 
22)*q^584 + (9*zeta^2 - 18*zeta - 18)*q^586 + (-24*zeta^2 + 24*zeta + 48)*q^587 
+ 16*zeta*q^589 + (zeta^2 + zeta - 2)*q^592 + (-33*zeta^2 + 66)*q^593 + 
(36*zeta^2 - 72)*q^595 + (-9*zeta^2 - 9*zeta + 18)*q^596 - 36*zeta*q^599 + 
(35*zeta^2 - 35*zeta - 70)*q^601 + (-32*zeta^2 + 64*zeta + 64)*q^602 + 
(-8*zeta^2 + 16*zeta + 16)*q^604 + (33*zeta^2 - 33*zeta - 66)*q^605 + 
20*zeta*q^607 + (8*zeta^2 - 4*zeta - 16)*q^608 + (3*zeta^2 + 3*zeta - 6)*q^610 +
(-12*zeta^2 + 24)*q^611 + (-38*zeta^2 + 76)*q^613 + (20*zeta^2 + 20*zeta - 
40)*q^614 - 3*zeta*q^617 + (8*zeta^2 - 8*zeta - 16)*q^619 + (-12*zeta^2 + 
24*zeta + 24)*q^620 + (24*zeta^2 - 48*zeta - 48)*q^622 + (12*zeta^2 - 12*zeta - 
24)*q^623 - 29*zeta*q^625 + (-46*zeta^2 + 23*zeta + 92)*q^626 + (13*zeta^2 + 
13*zeta - 26)*q^628 + (-3*zeta^2 + 6)*q^629 + (-8*zeta^2 + 16)*q^631 + 
(-16*zeta^2 - 16*zeta + 32)*q^632 + (-42*zeta^2 + 21*zeta + 84)*q^634 + 
48*zeta*q^635 + (-9*zeta^2 + 9*zeta + 18)*q^637 + (-3*zeta^2 + 6*zeta + 6)*q^640
+ (45*zeta^2 - 45*zeta - 90)*q^641 - 4*zeta*q^643 + (12*zeta^2 + 12*zeta - 
24)*q^646 + (-36*zeta^2 + 72)*q^647 + (-4*zeta^2 - 4*zeta + 8)*q^650 + 
(16*zeta^2 - 8*zeta - 32)*q^652 + 18*zeta*q^653 + (36*zeta^2 - 36*zeta - 
72)*q^655 + (-6*zeta^2 + 12*zeta + 12)*q^656 + (48*zeta^2 - 96*zeta - 96)*q^658 
+ (12*zeta^2 - 12*zeta - 24)*q^659 + 23*zeta*q^661 + (-40*zeta^2 + 20*zeta + 
80)*q^662 + (-12*zeta^2 - 12*zeta + 24)*q^664 + (48*zeta^2 - 96)*q^665 + 
(-12*zeta^2 - 12*zeta + 24)*q^668 + (-24*zeta^2 + 12*zeta + 48)*q^670 + 
(11*zeta^2 - 11*zeta - 22)*q^673 + (2*zeta^2 - 4*zeta - 4)*q^674 + (12*zeta^2 - 
24*zeta - 24)*q^676 + (-6*zeta^2 + 6*zeta + 12)*q^677 - 8*zeta*q^679 + 
(-18*zeta^2 + 9*zeta + 36)*q^680 + (-36*zeta^2 + 72)*q^683 + (27*zeta^2 - 
54)*q^685 + (-8*zeta^2 - 8*zeta + 16)*q^686 + (16*zeta^2 - 8*zeta - 32)*q^688 + 
6*zeta*q^689 + (-28*zeta^2 + 28*zeta + 56)*q^691 + (3*zeta^2 - 6*zeta - 6)*q^692
+ (12*zeta^2 - 24*zeta - 24)*q^694 + (-60*zeta^2 + 60*zeta + 120)*q^695 - 
18*zeta*q^697 + (-28*zeta^2 + 14*zeta + 56)*q^698 + (16*zeta^2 + 16*zeta - 
32)*q^700 + (51*zeta^2 - 102)*q^701 + (-4*zeta^2 + 8)*q^703 + (36*zeta^2 - 
18*zeta - 72)*q^706 + 24*zeta*q^707 + (47*zeta^2 - 47*zeta - 94)*q^709 + 
(36*zeta^2 - 72*zeta - 72)*q^710 + (-3*zeta^2 + 6*zeta + 6)*q^712 + (24*zeta^2 -
12*zeta - 48)*q^716 + (-16*zeta^2 + 32)*q^721 + (-3*zeta^2 - 3*zeta + 6)*q^722 +
(-20*zeta^2 + 10*zeta + 40)*q^724 + 36*zeta*q^725 + (-28*zeta^2 + 28*zeta + 
56)*q^727 + (4*zeta^2 - 8*zeta - 8)*q^728 + (-33*zeta^2 + 66*zeta + 66)*q^730 + 
(-24*zeta^2 + 24*zeta + 48)*q^731 + 14*zeta*q^733 + (-16*zeta^2 + 8*zeta + 
32)*q^734 + (-20*zeta^2 + 40)*q^739 + (-3*zeta^2 - 3*zeta + 6)*q^740 + 
(-48*zeta^2 + 24*zeta + 96)*q^742 + 12*zeta*q^743 + (-27*zeta^2 + 27*zeta + 
54)*q^745 + (-10*zeta^2 + 20*zeta + 20)*q^746 + (-48*zeta^2 + 48*zeta + 
96)*q^749 + 20*zeta*q^751 + (-24*zeta^2 + 12*zeta + 48)*q^752 + (-9*zeta^2 - 
9*zeta + 18)*q^754 + (24*zeta^2 - 48)*q^755 + (-38*zeta^2 + 76)*q^757 + 
(-28*zeta^2 - 28*zeta + 56)*q^758 + (-24*zeta^2 + 12*zeta + 48)*q^760 - 
15*zeta*q^761 + (-44*zeta^2 + 44*zeta + 88)*q^763 + (-12*zeta^2 + 24*zeta + 
24)*q^764 + (-12*zeta^2 + 24*zeta + 24)*q^766 - 37*zeta*q^769 + (13*zeta^2 + 
13*zeta - 26)*q^772 + (27*zeta^2 - 54)*q^773 + (16*zeta^2 - 32)*q^775 + 
(2*zeta^2 + 2*zeta - 4)*q^776 + (12*zeta^2 - 6*zeta - 24)*q^778 - 24*zeta*q^779 
+ (-9*zeta^2 + 18*zeta + 18)*q^784 + (39*zeta^2 - 39*zeta - 78)*q^785 + 
32*zeta*q^787 + (-6*zeta^2 + 3*zeta + 12)*q^788 + (48*zeta^2 + 48*zeta - 
96)*q^790 + (-60*zeta^2 + 120)*q^791 + (-zeta^2 + 2)*q^793 + (-25*zeta^2 - 
25*zeta + 50)*q^794 + (-8*zeta^2 + 4*zeta + 16)*q^796 - 51*zeta*q^797 + 
(36*zeta^2 - 36*zeta - 72)*q^799 + (4*zeta^2 - 8*zeta - 8)*q^800 + (-3*zeta^2 + 
6*zeta + 6)*q^802 + (-8*zeta^2 + 4*zeta + 16)*q^806 + (-6*zeta^2 - 6*zeta + 
12)*q^808 + (39*zeta^2 - 78)*q^809 + (16*zeta^2 - 32)*q^811 + (36*zeta^2 + 
36*zeta - 72)*q^812 - 24*zeta*q^815 + (-32*zeta^2 + 32*zeta + 64)*q^817 + 
(-25*zeta^2 + 50*zeta + 50)*q^818 + (18*zeta^2 - 36*zeta - 36)*q^820 + 
(-15*zeta^2 + 15*zeta + 30)*q^821 + 44*zeta*q^823 + (8*zeta^2 - 4*zeta - 
16)*q^824 + (48*zeta^2 - 96)*q^827 + (-14*zeta^2 + 28)*q^829 + (36*zeta^2 + 
36*zeta - 72)*q^830 + (-2*zeta^2 + zeta + 4)*q^832 - 27*zeta*q^833 + (-36*zeta^2
+ 36*zeta + 72)*q^835 + (-24*zeta^2 + 48*zeta + 48)*q^838 + (24*zeta^2 - 24*zeta
- 48)*q^839 + 52*zeta*q^841 + (26*zeta^2 - 13*zeta - 52)*q^842 + (-8*zeta^2 - 
8*zeta + 16)*q^844 + (-36*zeta^2 + 72)*q^845 + (-44*zeta^2 + 88)*q^847 + 
(6*zeta^2 + 6*zeta - 12)*q^848 + (24*zeta^2 - 12*zeta - 48)*q^850 + (-10*zeta^2 
+ 10*zeta + 20)*q^853 + (4*zeta^2 - 8*zeta - 8)*q^854 + (12*zeta^2 - 24*zeta - 
24)*q^856 + (-39*zeta^2 + 39*zeta + 78)*q^857 - 52*zeta*q^859 + (-48*zeta^2 + 
24*zeta + 96)*q^860 + (-12*zeta^2 - 12*zeta + 24)*q^862 + (-24*zeta^2 + 
48)*q^863 + (-9*zeta^2 + 18)*q^865 + (11*zeta^2 + 11*zeta - 22)*q^866 + 
(32*zeta^2 - 16*zeta - 64)*q^868 + (4*zeta^2 - 4*zeta - 8)*q^871 + (11*zeta^2 - 
22*zeta - 22)*q^872 + (-12*zeta^2 + 12*zeta + 24)*q^875 - 25*zeta*q^877 + 
(56*zeta^2 - 28*zeta - 112)*q^878 + (-30*zeta^2 + 60)*q^881 + O(q^882), 
2*zeta*q^3 + (-2*zeta^2 + 4*zeta + 4)*q^6 + (2*zeta^2 - 4*zeta - 4)*q^9 + 
(-2*zeta^2 - 2*zeta + 4)*q^12 + (6*zeta^2 - 6*zeta - 12)*q^18 + (-4*zeta^2 + 
8)*q^21 + (4*zeta^2 - 2*zeta - 8)*q^24 + (-6*zeta^2 + 6*zeta + 12)*q^27 + 
(6*zeta^2 - 12)*q^33 + 6*zeta*q^36 + (4*zeta^2 - 4*zeta - 8)*q^39 + (-4*zeta^2 -
4*zeta + 8)*q^42 + (-2*zeta^2 + 4*zeta + 4)*q^48 - 6*zeta*q^51 + (-12*zeta^2 + 
6*zeta + 24)*q^54 - 2*zeta*q^57 + (4*zeta^2 + 4*zeta - 8)*q^63 + (6*zeta^2 + 
6*zeta - 12)*q^66 + (-12*zeta^2 + 12*zeta + 24)*q^69 + (-6*zeta^2 + 12)*q^72 + 
(10*zeta^2 - 20)*q^75 + (8*zeta^2 - 4*zeta - 16)*q^78 + (12*zeta^2 - 6*zeta - 
24)*q^81 + (8*zeta^2 - 4*zeta - 16)*q^84 + (-12*zeta^2 + 24)*q^87 + (-8*zeta^2 +
8*zeta + 16)*q^93 + (-2*zeta^2 - 2*zeta + 4)*q^96 + (-6*zeta^2 - 6*zeta + 
12)*q^99 + (6*zeta^2 - 12*zeta - 12)*q^102 + (6*zeta^2 - 12*zeta - 12)*q^108 - 
8*zeta*q^111 + (2*zeta^2 - 4*zeta - 4)*q^114 + (-8*zeta^2 + 4*zeta + 16)*q^117 +
(18*zeta^2 - 18*zeta - 36)*q^123 + 12*zeta*q^126 + (2*zeta^2 - 4)*q^129 + 
(-12*zeta^2 + 6*zeta + 24)*q^132 + (-24*zeta^2 + 12*zeta + 48)*q^138 + 
(12*zeta^2 - 24)*q^141 + (6*zeta^2 - 6*zeta - 12)*q^144 + (-6*zeta^2 + 6*zeta + 
12)*q^147 + (10*zeta^2 + 10*zeta - 20)*q^150 + (-6*zeta^2 + 12*zeta + 12)*q^153 
+ (-4*zeta^2 + 8*zeta + 8)*q^156 + 24*zeta*q^159 + (18*zeta^2 - 36)*q^162 + 
(-4*zeta^2 + 8*zeta + 8)*q^168 + (-2*zeta^2 + 4*zeta + 4)*q^171 + (-12*zeta^2 - 
12*zeta + 24)*q^174 + (6*zeta^2 - 6*zeta - 12)*q^177 + (-16*zeta^2 + 32)*q^183 +
(-16*zeta^2 + 8*zeta + 32)*q^186 - 12*zeta*q^189 + (4*zeta^2 - 2*zeta - 8)*q^192
- 18*zeta*q^198 + (10*zeta^2 - 10*zeta - 20)*q^201 + (6*zeta^2 + 6*zeta - 
12)*q^204 + (24*zeta^2 - 12*zeta - 48)*q^207 - 24*zeta*q^213 + (6*zeta^2 + 
6*zeta - 12)*q^216 + 22*zeta*q^219 + (8*zeta^2 - 16*zeta - 16)*q^222 + 
(-10*zeta^2 - 10*zeta + 20)*q^225 + (2*zeta^2 + 2*zeta - 4)*q^228 + (-12*zeta^2 
+ 12*zeta + 24)*q^231 + (-12*zeta^2 + 24)*q^234 + (8*zeta^2 - 16)*q^237 + 
(-18*zeta^2 + 36)*q^243 + (36*zeta^2 - 18*zeta - 72)*q^246 + (-24*zeta^2 + 
48)*q^249 + (-12*zeta^2 + 24)*q^252 + (2*zeta^2 + 2*zeta - 4)*q^258 + (12*zeta^2
+ 12*zeta - 24)*q^261 + (6*zeta^2 - 12*zeta - 12)*q^264 + 12*zeta*q^267 + 
8*zeta*q^273 + (12*zeta^2 - 24*zeta - 24)*q^276 + (16*zeta^2 - 8*zeta - 
32)*q^279 + (12*zeta^2 + 12*zeta - 24)*q^282 + 6*zeta*q^288 + (-10*zeta^2 + 
20)*q^291 + (-12*zeta^2 + 6*zeta + 24)*q^294 + 18*zeta*q^297 + (-20*zeta^2 + 
10*zeta + 40)*q^300 + (-18*zeta^2 + 18*zeta + 36)*q^306 + (28*zeta^2 - 28*zeta -
56)*q^309 + (-4*zeta^2 - 4*zeta + 8)*q^312 + (-24*zeta^2 + 48*zeta + 48)*q^318 +
6*zeta*q^321 + (-18*zeta^2 + 18*zeta + 36)*q^324 - 32*zeta*q^327 + (-8*zeta^2 + 
16*zeta + 16)*q^333 + (-4*zeta^2 - 4*zeta + 8)*q^336 + (12*zeta^2 - 12*zeta - 
24)*q^339 + (-6*zeta^2 + 6*zeta + 12)*q^342 + (24*zeta^2 - 12*zeta - 48)*q^348 +
(12*zeta^2 - 24)*q^351 + (12*zeta^2 - 6*zeta - 24)*q^354 + (12*zeta^2 - 
24)*q^357 + (-4*zeta^2 + 4*zeta + 8)*q^363 + (-16*zeta^2 - 16*zeta + 32)*q^366 +
(-36*zeta^2 + 18*zeta + 72)*q^369 + (8*zeta^2 - 16*zeta - 16)*q^372 + (12*zeta^2
- 24*zeta - 24)*q^378 + 4*zeta*q^381 + (-2*zeta^2 + 4*zeta + 4)*q^384 + 
(-2*zeta^2 - 2*zeta + 4)*q^387 + (18*zeta^2 - 36)*q^396 + (4*zeta^2 - 8)*q^399 +
(20*zeta^2 - 10*zeta - 40)*q^402 + (-12*zeta^2 + 6*zeta + 24)*q^408 + (6*zeta^2 
- 12)*q^411 + (36*zeta^2 - 72)*q^414 + (-38*zeta^2 + 38*zeta + 76)*q^417 + 
(-12*zeta^2 - 12*zeta + 24)*q^423 + (24*zeta^2 - 48*zeta - 48)*q^426 - 
12*zeta*q^429 + (-12*zeta^2 + 6*zeta + 24)*q^432 + (-22*zeta^2 + 44*zeta + 
44)*q^438 + (12*zeta^2 - 6*zeta - 24)*q^441 + (8*zeta^2 + 8*zeta - 16)*q^444 + 
(-12*zeta^2 + 12*zeta + 24)*q^447 - 30*zeta*q^450 + (20*zeta^2 - 40)*q^453 + 
(-4*zeta^2 + 2*zeta + 8)*q^456 + (18*zeta^2 - 18*zeta - 36)*q^459 + (-24*zeta^2 
+ 12*zeta + 48)*q^462 + (12*zeta^2 - 12*zeta - 24)*q^468 + (-8*zeta^2 + 8*zeta +
16)*q^471 + (8*zeta^2 + 8*zeta - 16)*q^474 + (24*zeta^2 - 48*zeta - 48)*q^477 - 
24*zeta*q^483 + (-18*zeta^2 - 18*zeta + 36)*q^486 - 8*zeta*q^489 + (-18*zeta^2 +
36*zeta + 36)*q^492 + (-24*zeta^2 - 24*zeta + 48)*q^498 + (-24*zeta^2 + 24*zeta 
+ 48)*q^501 + (12*zeta^2 - 12*zeta - 24)*q^504 + (18*zeta^2 - 36)*q^507 + 
(6*zeta^2 - 6*zeta - 12)*q^513 + (-4*zeta^2 + 2*zeta + 8)*q^516 + (12*zeta^2 - 
24)*q^519 + 36*zeta*q^522 + (-20*zeta^2 + 20*zeta + 40)*q^525 + (6*zeta^2 + 
6*zeta - 12)*q^528 + (-12*zeta^2 + 6*zeta + 24)*q^531 + (-12*zeta^2 + 24*zeta + 
24)*q^534 + 24*zeta*q^537 + 28*zeta*q^543 + (-8*zeta^2 + 16*zeta + 16)*q^546 + 
(16*zeta^2 + 16*zeta - 32)*q^549 + (12*zeta^2 + 12*zeta - 24)*q^552 + (24*zeta^2
- 48)*q^558 + (-18*zeta^2 + 36)*q^561 + (-24*zeta^2 + 12*zeta + 48)*q^564 + 
(-12*zeta^2 + 24*zeta + 24)*q^567 + (36*zeta^2 - 72)*q^573 + (-6*zeta^2 + 
12)*q^576 + (10*zeta^2 - 10*zeta - 20)*q^579 + (-10*zeta^2 - 10*zeta + 20)*q^582
+ (6*zeta^2 - 12*zeta - 12)*q^588 - 24*zeta*q^591 + (-18*zeta^2 + 36*zeta + 
36)*q^594 - 20*zeta*q^597 + (10*zeta^2 - 20*zeta - 20)*q^600 + (-20*zeta^2 + 
10*zeta + 40)*q^603 + (24*zeta^2 - 24*zeta - 48)*q^609 - 18*zeta*q^612 + 
(56*zeta^2 - 28*zeta - 112)*q^618 + (-36*zeta^2 + 72)*q^621 + (8*zeta^2 - 4*zeta
- 16)*q^624 + (-6*zeta^2 + 12)*q^627 + (40*zeta^2 - 40*zeta - 80)*q^633 + 
(-24*zeta^2 - 24*zeta + 48)*q^636 + (-24*zeta^2 + 48*zeta + 48)*q^639 + 
(-6*zeta^2 + 12*zeta + 12)*q^642 - 18*zeta*q^648 - 16*zeta*q^651 + (32*zeta^2 - 
64*zeta - 64)*q^654 + (22*zeta^2 - 44*zeta - 44)*q^657 + (-12*zeta^2 + 12*zeta +
24)*q^663 + (-24*zeta^2 + 24*zeta + 48)*q^666 + (-52*zeta^2 + 104)*q^669 + 
(8*zeta^2 - 4*zeta - 16)*q^672 + 30*zeta*q^675 + (24*zeta^2 - 12*zeta - 
48)*q^678 + (-42*zeta^2 + 84)*q^681 - 6*zeta*q^684 + (28*zeta^2 - 28*zeta - 
56)*q^687 + (24*zeta^2 - 12*zeta - 48)*q^693 + (-12*zeta^2 + 24*zeta + 24)*q^696
+ 6*zeta*q^699 + (12*zeta^2 + 12*zeta - 24)*q^702 + (-6*zeta^2 + 12*zeta + 
12)*q^708 + (-8*zeta^2 - 8*zeta + 16)*q^711 + (12*zeta^2 + 12*zeta - 24)*q^714 +
(12*zeta^2 - 12*zeta - 24)*q^717 + (14*zeta^2 - 28)*q^723 + (-8*zeta^2 + 4*zeta 
+ 16)*q^726 + (18*zeta^2 + 18*zeta - 36)*q^729 + (32*zeta^2 - 16*zeta - 
64)*q^732 + (-54*zeta^2 + 108)*q^738 + (-4*zeta^2 + 4*zeta + 8)*q^741 + 
(8*zeta^2 + 8*zeta - 16)*q^744 + (24*zeta^2 + 24*zeta - 48)*q^747 + 
42*zeta*q^753 + (12*zeta^2 + 12*zeta - 24)*q^756 + 36*zeta*q^759 + (-4*zeta^2 + 
8*zeta + 8)*q^762 + (-2*zeta^2 - 2*zeta + 4)*q^768 + (-42*zeta^2 + 42*zeta + 
84)*q^771 - 6*zeta*q^774 + (16*zeta^2 - 32)*q^777 - 36*zeta*q^783 + (-36*zeta^2 
+ 72)*q^789 + (-18*zeta^2 + 18*zeta + 36)*q^792 + (4*zeta^2 + 4*zeta - 8)*q^798 
+ (12*zeta^2 - 24*zeta - 24)*q^801 + (-10*zeta^2 + 20*zeta + 20)*q^804 - 
48*zeta*q^807 + 40*zeta*q^813 + (6*zeta^2 - 12*zeta - 12)*q^816 + (8*zeta^2 - 
16*zeta - 16)*q^819 + (6*zeta^2 + 6*zeta - 12)*q^822 + (30*zeta^2 - 30*zeta - 
60)*q^825 + (-36*zeta^2 + 36*zeta + 72)*q^828 + (20*zeta^2 - 40)*q^831 + 
(-76*zeta^2 + 38*zeta + 152)*q^834 + (-24*zeta^2 + 48)*q^837 + (-12*zeta^2 + 
24)*q^843 - 36*zeta*q^846 + (-8*zeta^2 + 8*zeta + 16)*q^849 + (24*zeta^2 + 
24*zeta - 48)*q^852 + (12*zeta^2 - 24*zeta - 24)*q^858 + 36*zeta*q^861 + 
(6*zeta^2 - 12*zeta - 12)*q^864 - 16*zeta*q^867 + (10*zeta^2 + 10*zeta - 
20)*q^873 + (-22*zeta^2 - 22*zeta + 44)*q^876 + (60*zeta^2 - 60*zeta - 
120)*q^879 + O(q^882), (-zeta^2 + 2*zeta + 2)*q + (-3*zeta^2 + 3*zeta + 6)*q^2 -
3*zeta*q^4 + (6*zeta^2 - 3*zeta - 12)*q^5 + (4*zeta^2 + 4*zeta - 8)*q^7 + 
(3*zeta^2 - 6)*q^8 + (9*zeta^2 - 18)*q^10 + (-2*zeta^2 + zeta + 4)*q^13 + 
12*zeta*q^14 + (-3*zeta^2 + 3*zeta + 6)*q^16 + (-3*zeta^2 + 6*zeta + 6)*q^17 + 
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
(9*zeta^2 - 9*zeta - 18)*q^520 + (6*zeta^2 - 12*zeta - 12)*q^521 + (16*zeta^2 - 
32*zeta - 32)*q^523 + (-36*zeta^2 + 36*zeta + 72)*q^524 + 36*zeta*q^526 + 
(-24*zeta^2 + 12*zeta + 48)*q^527 + (23*zeta^2 + 23*zeta - 46)*q^529 + 
(54*zeta^2 - 108)*q^530 + (48*zeta^2 - 96)*q^532 + (-6*zeta^2 - 6*zeta + 
12)*q^533 + (-72*zeta^2 + 36*zeta + 144)*q^535 + 12*zeta*q^536 + (63*zeta^2 - 
63*zeta - 126)*q^538 + (zeta^2 - 2*zeta - 2)*q^541 + (48*zeta^2 - 48*zeta - 
96)*q^542 - 9*zeta*q^544 + (66*zeta^2 - 33*zeta - 132)*q^545 + (-44*zeta^2 - 
44*zeta + 88)*q^547 + (-27*zeta^2 + 54)*q^548 + (-36*zeta^2 - 36*zeta + 
72)*q^551 + (128*zeta^2 - 64*zeta - 256)*q^553 + 30*zeta*q^554 + (-60*zeta^2 + 
60*zeta + 120)*q^556 + (-3*zeta^2 + 6*zeta + 6)*q^557 + (8*zeta^2 - 16*zeta - 
16)*q^559 + (36*zeta^2 - 36*zeta - 72)*q^560 - 81*zeta*q^562 + (-24*zeta^2 + 
12*zeta + 48)*q^563 + (-45*zeta^2 - 45*zeta + 90)*q^565 + (-12*zeta^2 + 
24)*q^566 + (36*zeta^2 - 72)*q^568 + (-15*zeta^2 - 15*zeta + 30)*q^569 + 
(-32*zeta^2 + 16*zeta + 64)*q^571 + (-72*zeta^2 + 72*zeta + 144)*q^574 + 
(25*zeta^2 - 50*zeta - 50)*q^577 + (24*zeta^2 - 24*zeta - 48)*q^578 + 
81*zeta*q^580 + (-96*zeta^2 + 48*zeta + 192)*q^581 + (33*zeta^2 - 66)*q^584 + 
(-27*zeta^2 + 54)*q^586 + (-24*zeta^2 - 24*zeta + 48)*q^587 + (32*zeta^2 - 
16*zeta - 64)*q^589 + (3*zeta^2 - 3*zeta - 6)*q^592 + (33*zeta^2 - 66*zeta - 
66)*q^593 + (36*zeta^2 - 72*zeta - 72)*q^595 + (27*zeta^2 - 27*zeta - 54)*q^596 
+ (72*zeta^2 - 36*zeta - 144)*q^599 + (-35*zeta^2 - 35*zeta + 70)*q^601 + 
(-96*zeta^2 + 192)*q^602 + (24*zeta^2 - 48)*q^604 + (33*zeta^2 + 33*zeta - 
66)*q^605 + (40*zeta^2 - 20*zeta - 80)*q^607 + 12*zeta*q^608 + (9*zeta^2 - 
9*zeta - 18)*q^610 + (12*zeta^2 - 24*zeta - 24)*q^611 + (-38*zeta^2 + 76*zeta + 
76)*q^613 + (-60*zeta^2 + 60*zeta + 120)*q^614 + (6*zeta^2 - 3*zeta - 12)*q^617 
+ (-8*zeta^2 - 8*zeta + 16)*q^619 + (-36*zeta^2 + 72)*q^620 + (-72*zeta^2 + 
144)*q^622 + (12*zeta^2 + 12*zeta - 24)*q^623 + (-58*zeta^2 + 29*zeta + 
116)*q^625 - 69*zeta*q^626 + (39*zeta^2 - 39*zeta - 78)*q^628 + (3*zeta^2 - 
6*zeta - 6)*q^629 + (-8*zeta^2 + 16*zeta + 16)*q^631 + (48*zeta^2 - 48*zeta - 
96)*q^632 + 63*zeta*q^634 + (-96*zeta^2 + 48*zeta + 192)*q^635 + (9*zeta^2 + 
9*zeta - 18)*q^637 + (9*zeta^2 - 18)*q^640 + (45*zeta^2 + 45*zeta - 90)*q^641 + 
(-8*zeta^2 + 4*zeta + 16)*q^643 + (36*zeta^2 - 36*zeta - 72)*q^646 + (36*zeta^2 
- 72*zeta - 72)*q^647 + (12*zeta^2 - 12*zeta - 24)*q^650 - 24*zeta*q^652 + 
(-36*zeta^2 + 18*zeta + 72)*q^653 + (-36*zeta^2 - 36*zeta + 72)*q^655 + 
(-18*zeta^2 + 36)*q^656 + (-144*zeta^2 + 288)*q^658 + (12*zeta^2 + 12*zeta - 
24)*q^659 + (46*zeta^2 - 23*zeta - 92)*q^661 - 60*zeta*q^662 + (-36*zeta^2 + 
36*zeta + 72)*q^664 + (-48*zeta^2 + 96*zeta + 96)*q^665 + (36*zeta^2 - 36*zeta -
72)*q^668 + 36*zeta*q^670 + (-11*zeta^2 - 11*zeta + 22)*q^673 + (6*zeta^2 - 
12)*q^674 + (-36*zeta^2 + 72)*q^676 + (-6*zeta^2 - 6*zeta + 12)*q^677 + 
(-16*zeta^2 + 8*zeta + 32)*q^679 - 27*zeta*q^680 + (36*zeta^2 - 72*zeta - 
72)*q^683 + (27*zeta^2 - 54*zeta - 54)*q^685 + (24*zeta^2 - 24*zeta - 48)*q^686 
- 24*zeta*q^688 + (-12*zeta^2 + 6*zeta + 24)*q^689 + (28*zeta^2 + 28*zeta - 
56)*q^691 + (9*zeta^2 - 18)*q^692 + (-36*zeta^2 + 72)*q^694 + (-60*zeta^2 - 
60*zeta + 120)*q^695 + (-36*zeta^2 + 18*zeta + 72)*q^697 - 42*zeta*q^698 + 
(48*zeta^2 - 48*zeta - 96)*q^700 + (-51*zeta^2 + 102*zeta + 102)*q^701 + 
(-4*zeta^2 + 8*zeta + 8)*q^703 - 54*zeta*q^706 + (-48*zeta^2 + 24*zeta + 
96)*q^707 + (-47*zeta^2 - 47*zeta + 94)*q^709 + (108*zeta^2 - 216)*q^710 + 
(9*zeta^2 - 18)*q^712 + 36*zeta*q^716 + (-16*zeta^2 + 32*zeta + 32)*q^721 + 
(9*zeta^2 - 9*zeta - 18)*q^722 + 30*zeta*q^724 + (-72*zeta^2 + 36*zeta + 
144)*q^725 + (28*zeta^2 + 28*zeta - 56)*q^727 + (12*zeta^2 - 24)*q^728 + 
(99*zeta^2 - 198)*q^730 + (-24*zeta^2 - 24*zeta + 48)*q^731 + (28*zeta^2 - 
14*zeta - 56)*q^733 - 24*zeta*q^734 + (-20*zeta^2 + 40*zeta + 40)*q^739 + 
(9*zeta^2 - 9*zeta - 18)*q^740 + 72*zeta*q^742 + (-24*zeta^2 + 12*zeta + 
48)*q^743 + (27*zeta^2 + 27*zeta - 54)*q^745 + (-30*zeta^2 + 60)*q^746 + 
(-48*zeta^2 - 48*zeta + 96)*q^749 + (40*zeta^2 - 20*zeta - 80)*q^751 - 
36*zeta*q^752 + (-27*zeta^2 + 27*zeta + 54)*q^754 + (-24*zeta^2 + 48*zeta + 
48)*q^755 + (-38*zeta^2 + 76*zeta + 76)*q^757 + (84*zeta^2 - 84*zeta - 
168)*q^758 + 36*zeta*q^760 + (30*zeta^2 - 15*zeta - 60)*q^761 + (44*zeta^2 + 
44*zeta - 88)*q^763 + (-36*zeta^2 + 72)*q^764 + (36*zeta^2 - 72)*q^766 + 
(-74*zeta^2 + 37*zeta + 148)*q^769 + (39*zeta^2 - 39*zeta - 78)*q^772 + 
(-27*zeta^2 + 54*zeta + 54)*q^773 + (16*zeta^2 - 32*zeta - 32)*q^775 + 
(-6*zeta^2 + 6*zeta + 12)*q^776 - 18*zeta*q^778 + (48*zeta^2 - 24*zeta - 
96)*q^779 + (27*zeta^2 - 54)*q^784 + (39*zeta^2 + 39*zeta - 78)*q^785 + 
(64*zeta^2 - 32*zeta - 128)*q^787 - 9*zeta*q^788 + (144*zeta^2 - 144*zeta - 
288)*q^790 + (60*zeta^2 - 120*zeta - 120)*q^791 + (-zeta^2 + 2*zeta + 2)*q^793 +
(75*zeta^2 - 75*zeta - 150)*q^794 + 12*zeta*q^796 + (102*zeta^2 - 51*zeta - 
204)*q^797 + (-36*zeta^2 - 36*zeta + 72)*q^799 + (12*zeta^2 - 24)*q^800 + 
(9*zeta^2 - 18)*q^802 - 12*zeta*q^806 + (-18*zeta^2 + 18*zeta + 36)*q^808 + 
(-39*zeta^2 + 78*zeta + 78)*q^809 + (16*zeta^2 - 32*zeta - 32)*q^811 + 
(-108*zeta^2 + 108*zeta + 216)*q^812 + (48*zeta^2 - 24*zeta - 96)*q^815 + 
(32*zeta^2 + 32*zeta - 64)*q^817 + (-75*zeta^2 + 150)*q^818 + (-54*zeta^2 + 
108)*q^820 + (-15*zeta^2 - 15*zeta + 30)*q^821 + (88*zeta^2 - 44*zeta - 
176)*q^823 + 12*zeta*q^824 + (-48*zeta^2 + 96*zeta + 96)*q^827 + (-14*zeta^2 + 
28*zeta + 28)*q^829 + (-108*zeta^2 + 108*zeta + 216)*q^830 + 3*zeta*q^832 + 
(54*zeta^2 - 27*zeta - 108)*q^833 + (36*zeta^2 + 36*zeta - 72)*q^835 + 
(72*zeta^2 - 144)*q^838 + (24*zeta^2 + 24*zeta - 48)*q^839 + (104*zeta^2 - 
52*zeta - 208)*q^841 + 39*zeta*q^842 + (-24*zeta^2 + 24*zeta + 48)*q^844 + 
(36*zeta^2 - 72*zeta - 72)*q^845 + (-44*zeta^2 + 88*zeta + 88)*q^847 + 
(-18*zeta^2 + 18*zeta + 36)*q^848 - 36*zeta*q^850 + (10*zeta^2 + 10*zeta - 
20)*q^853 + (12*zeta^2 - 24)*q^854 + (-36*zeta^2 + 72)*q^856 + (-39*zeta^2 - 
39*zeta + 78)*q^857 + (-104*zeta^2 + 52*zeta + 208)*q^859 - 72*zeta*q^860 + 
(-36*zeta^2 + 36*zeta + 72)*q^862 + (24*zeta^2 - 48*zeta - 48)*q^863 + 
(-9*zeta^2 + 18*zeta + 18)*q^865 + (-33*zeta^2 + 33*zeta + 66)*q^866 - 
48*zeta*q^868 + (-4*zeta^2 - 4*zeta + 8)*q^871 + (33*zeta^2 - 66)*q^872 + 
(-12*zeta^2 - 12*zeta + 24)*q^875 + (-50*zeta^2 + 25*zeta + 100)*q^877 + 
84*zeta*q^878 + (30*zeta^2 - 60*zeta - 60)*q^881 + O(q^882), 2*q - 6*q^5 - 2*q^7
- 6*q^11 - 2*q^13 - 12*q^17 - 8*q^19 + 6*q^23 + 8*q^25 - 6*q^29 + 10*q^31 + 
6*q^35 + 4*q^37 - 6*q^41 - 2*q^43 + 18*q^47 - 12*q^49 + 12*q^53 + 18*q^55 + 
6*q^59 - 26*q^61 + 6*q^65 - 14*q^67 + 24*q^71 - 20*q^73 + 6*q^77 + 22*q^79 + 
18*q^83 + 36*q^85 - 12*q^89 + 2*q^91 + 24*q^95 + 22*q^97 - 30*q^101 - 14*q^103 -
24*q^107 + 4*q^109 + 18*q^113 - 18*q^115 + 12*q^119 - 4*q^121 + 6*q^125 - 
32*q^127 - 42*q^131 + 8*q^133 - 6*q^137 + 10*q^139 + 6*q^143 + 18*q^145 - 
30*q^149 - 26*q^151 - 30*q^155 - 26*q^157 - 6*q^161 + 40*q^163 - 18*q^167 - 
24*q^169 + 18*q^173 - 8*q^175 - 24*q^179 + 4*q^181 - 12*q^185 + 36*q^187 - 
30*q^191 + 22*q^193 - 12*q^197 - 8*q^199 + 6*q^203 + 18*q^205 + 24*q^209 + 
34*q^211 + 6*q^215 - 10*q^217 + 12*q^221 - 2*q^223 - 54*q^227 - 26*q^229 + 
12*q^233 - 54*q^235 + 54*q^239 - 2*q^241 + 36*q^245 + 8*q^247 - 24*q^251 - 
18*q^253 + 18*q^257 - 4*q^259 + 42*q^263 - 36*q^265 + 12*q^269 + 16*q^271 - 
24*q^275 - 2*q^277 - 6*q^281 + 10*q^283 + 6*q^287 + 38*q^289 + 42*q^293 - 
18*q^295 - 6*q^299 + 2*q^301 + 78*q^305 + 40*q^307 - 42*q^311 - 2*q^313 + 
42*q^317 + 18*q^319 + 48*q^323 - 8*q^325 - 18*q^329 + 22*q^331 + 42*q^335 + 
46*q^337 - 30*q^341 + 26*q^343 - 18*q^347 - 2*q^349 - 6*q^353 - 72*q^355 - 
6*q^361 + 60*q^365 - 26*q^367 - 12*q^371 - 2*q^373 + 6*q^377 - 32*q^379 + 
30*q^383 - 18*q^385 - 30*q^389 - 36*q^391 - 66*q^395 + 4*q^397 - 6*q^401 - 
10*q^403 - 12*q^407 + 46*q^409 - 6*q^413 - 54*q^415 - 18*q^419 + 70*q^421 - 
48*q^425 + 26*q^427 - 48*q^431 - 68*q^433 - 24*q^437 + 70*q^439 + 18*q^443 + 
36*q^445 + 36*q^449 + 18*q^451 - 6*q^455 - 74*q^457 - 6*q^461 - 38*q^463 - 
24*q^467 + 14*q^469 + 6*q^473 - 32*q^475 - 54*q^479 - 4*q^481 - 66*q^485 + 
64*q^487 + 6*q^491 + 36*q^493 - 24*q^497 + 10*q^499 + 72*q^503 + 90*q^505 - 
78*q^509 + 20*q^511 + 42*q^515 - 54*q^517 - 84*q^521 + 16*q^523 - 60*q^527 - 
28*q^529 + 6*q^533 + 72*q^535 + 36*q^539 - 68*q^541 - 12*q^545 - 26*q^547 + 
24*q^551 - 22*q^553 + 60*q^557 + 2*q^559 - 18*q^563 - 54*q^565 - 30*q^569 - 
62*q^571 + 24*q^575 - 20*q^577 - 18*q^581 - 36*q^583 - 30*q^587 - 40*q^589 - 
12*q^593 - 36*q^595 + 78*q^599 + 70*q^601 + 12*q^605 + 82*q^607 - 18*q^611 + 
52*q^613 - 6*q^617 - 26*q^619 + 12*q^623 - 58*q^625 - 24*q^629 - 32*q^631 + 
96*q^635 + 12*q^637 + 66*q^641 + 82*q^643 - 18*q^649 + 42*q^653 + 126*q^655 + 
42*q^659 + 22*q^661 - 24*q^665 - 18*q^667 + 78*q^671 + 22*q^673 - 30*q^677 - 
22*q^679 + 72*q^683 + 18*q^685 - 12*q^689 - 2*q^691 - 30*q^695 + 36*q^697 + 
12*q^701 - 16*q^703 + 30*q^707 - 50*q^709 + 30*q^713 - 18*q^715 + 14*q^721 - 
24*q^725 - 74*q^727 + 12*q^731 + 46*q^733 + 42*q^737 - 32*q^739 - 18*q^743 + 
90*q^745 + 24*q^749 - 62*q^751 + 78*q^755 - 20*q^757 - 54*q^761 - 4*q^763 - 
6*q^767 - 2*q^769 - 36*q^773 + 40*q^775 + 24*q^779 - 72*q^781 + 78*q^785 - 
86*q^787 - 18*q^791 + 26*q^793 + 18*q^797 - 108*q^799 + 60*q^803 + 18*q^805 - 
12*q^809 + 40*q^811 - 120*q^815 + 8*q^817 - 102*q^821 - 38*q^823 + 24*q^827 + 
100*q^829 + 72*q^833 + 54*q^835 + 18*q^839 - 40*q^841 + 72*q^845 + 4*q^847 + 
12*q^851 - 26*q^853 - 54*q^857 + 82*q^859 - 48*q^863 - 54*q^865 - 66*q^869 + 
14*q^871 - 6*q^875 + 46*q^877 - 60*q^881 + O(q^882)] ;
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
2/7*x[4]*x[5] + 15/7*x[4]*x[6] - 1/7*x[5]^2 + 22/21*x[5]*x[6] + 18/7*x[6]^2
]);
