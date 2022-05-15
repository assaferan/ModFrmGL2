
    /****************************************************
    Loading this file in magma loads the objects fs_18B6 
    and X_18B6. fs_18B6 is a list of power series which form 
    a basis for the space of cusp forms. X_18B6 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, \[ 1, 0, 0, -1, 0, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_18B6 := [Kq | (zeta^4 - zeta^2 - zeta)*q^2 + (zeta^5 + zeta^4 -
2*zeta^2 - 2*zeta)*q^4 + (-zeta^5 + zeta^2 + zeta)*q^8 + (-zeta^5 + 2*zeta^4 - 
zeta^2 - zeta)*q^10 + (2*zeta^5 - 2*zeta^4)*q^14 + (2*zeta^5 - zeta^4 - zeta^2 -
zeta)*q^16 + (-3*zeta^4 + 3*zeta^2 + 3*zeta)*q^20 + (-2*zeta^5 - 2*zeta^4 + 
4*zeta^2 + 4*zeta)*q^22 + (zeta^5 - zeta^2 - zeta)*q^26 + (2*zeta^5 - 4*zeta^4 +
2*zeta^2 + 2*zeta)*q^28 + (-5*zeta^5 + 5*zeta^4)*q^32 + (-6*zeta^5 + 3*zeta^4 + 
3*zeta^2 + 3*zeta)*q^34 + (2*zeta^4 - 2*zeta^2 - 2*zeta)*q^38 + (-zeta^5 - 
zeta^4 + 2*zeta^2 + 2*zeta)*q^40 + (6*zeta^5 - 6*zeta^2 - 6*zeta)*q^44 + 
(2*zeta^5 - 4*zeta^4 + 2*zeta^2 + 2*zeta)*q^46 + (-2*zeta^5 + 2*zeta^4)*q^50 + 
(2*zeta^5 - zeta^4 - zeta^2 - zeta)*q^52 + (2*zeta^4 - 2*zeta^2 - 2*zeta)*q^56 +
(zeta^5 + zeta^4 - 2*zeta^2 - 2*zeta)*q^58 + (-8*zeta^5 + 8*zeta^2 + 
8*zeta)*q^62 + (-3*zeta^5 + 6*zeta^4 - 3*zeta^2 - 3*zeta)*q^64 + (9*zeta^5 - 
9*zeta^4)*q^68 + (4*zeta^5 - 2*zeta^4 - 2*zeta^2 - 2*zeta)*q^70 + (-7*zeta^4 + 
7*zeta^2 + 7*zeta)*q^74 + (2*zeta^5 + 2*zeta^4 - 4*zeta^2 - 4*zeta)*q^76 + 
(-3*zeta^5 + 3*zeta^2 + 3*zeta)*q^80 + (-4*zeta^5 + 8*zeta^4 - 4*zeta^2 - 
4*zeta)*q^82 + (2*zeta^5 - 2*zeta^4)*q^86 + (4*zeta^5 - 2*zeta^4 - 2*zeta^2 - 
2*zeta)*q^88 + (6*zeta^4 - 6*zeta^2 - 6*zeta)*q^92 + (4*zeta^5 + 4*zeta^4 - 
8*zeta^2 - 8*zeta)*q^94 + (3*zeta^5 - 3*zeta^2 - 3*zeta)*q^98 + (-2*zeta^5 + 
4*zeta^4 - 2*zeta^2 - 2*zeta)*q^100 + (-zeta^5 + zeta^4)*q^104 + (6*zeta^4 - 
6*zeta^2 - 6*zeta)*q^110 + (-2*zeta^5 - 2*zeta^4 + 4*zeta^2 + 4*zeta)*q^112 + 
(-3*zeta^5 + 3*zeta^2 + 3*zeta)*q^116 + (8*zeta^5 - 16*zeta^4 + 8*zeta^2 + 
8*zeta)*q^118 + (-7*zeta^5 + 7*zeta^4)*q^122 + (-16*zeta^5 + 8*zeta^4 + 8*zeta^2
+ 8*zeta)*q^124 + (zeta^4 - zeta^2 - zeta)*q^128 + (zeta^5 + zeta^4 - 2*zeta^2 -
2*zeta)*q^130 + (10*zeta^5 - 10*zeta^2 - 10*zeta)*q^134 + (3*zeta^5 - 6*zeta^4 +
3*zeta^2 + 3*zeta)*q^136 + (-6*zeta^5 + 6*zeta^4)*q^140 + (12*zeta^5 - 6*zeta^4 
- 6*zeta^2 - 6*zeta)*q^142 + (-7*zeta^4 + 7*zeta^2 + 7*zeta)*q^146 + (-7*zeta^5 
- 7*zeta^4 + 14*zeta^2 + 14*zeta)*q^148 + (-2*zeta^5 + 2*zeta^2 + 2*zeta)*q^152 
+ (-4*zeta^5 + 8*zeta^4 - 4*zeta^2 - 4*zeta)*q^154 + (2*zeta^5 - 2*zeta^4)*q^158
+ (-10*zeta^5 + 5*zeta^4 + 5*zeta^2 + 5*zeta)*q^160 + (-12*zeta^4 + 12*zeta^2 + 
12*zeta)*q^164 + (-8*zeta^5 - 8*zeta^4 + 16*zeta^2 + 16*zeta)*q^166 + (9*zeta^5 
- 9*zeta^2 - 9*zeta)*q^170 + (2*zeta^5 - 4*zeta^4 + 2*zeta^2 + 2*zeta)*q^172 + 
(6*zeta^5 - 6*zeta^4)*q^176 + (6*zeta^5 - 3*zeta^4 - 3*zeta^2 - 3*zeta)*q^178 + 
(-2*zeta^4 + 2*zeta^2 + 2*zeta)*q^182 + (2*zeta^5 + 2*zeta^4 - 4*zeta^2 - 
4*zeta)*q^184 + (-12*zeta^5 + 12*zeta^2 + 12*zeta)*q^188 + (-2*zeta^5 + 4*zeta^4
- 2*zeta^2 - 2*zeta)*q^190 + (2*zeta^5 - 2*zeta^4)*q^194 + (6*zeta^5 - 3*zeta^4 
- 3*zeta^2 - 3*zeta)*q^196 + (-2*zeta^4 + 2*zeta^2 + 2*zeta)*q^200 + (4*zeta^5 +
4*zeta^4 - 8*zeta^2 - 8*zeta)*q^202 + (-8*zeta^5 + 8*zeta^2 + 8*zeta)*q^206 + 
(zeta^5 - 2*zeta^4 + zeta^2 + zeta)*q^208 + (11*zeta^4 - 11*zeta^2 - 
11*zeta)*q^218 + (6*zeta^5 + 6*zeta^4 - 12*zeta^2 - 12*zeta)*q^220 + (10*zeta^5 
- 10*zeta^2 - 10*zeta)*q^224 + (-zeta^5 + 2*zeta^4 - zeta^2 - zeta)*q^226 + 
(-6*zeta^5 + 6*zeta^4)*q^230 + (-2*zeta^5 + zeta^4 + zeta^2 + zeta)*q^232 + 
(24*zeta^4 - 24*zeta^2 - 24*zeta)*q^236 + (6*zeta^5 + 6*zeta^4 - 12*zeta^2 - 
12*zeta)*q^238 + (-zeta^5 + zeta^2 + zeta)*q^242 + (-7*zeta^5 + 14*zeta^4 - 
7*zeta^2 - 7*zeta)*q^244 + (8*zeta^5 - 8*zeta^4)*q^248 + (-14*zeta^5 + 7*zeta^4 
+ 7*zeta^2 + 7*zeta)*q^250 + (2*zeta^4 - 2*zeta^2 - 2*zeta)*q^254 + (7*zeta^5 + 
7*zeta^4 - 14*zeta^2 - 14*zeta)*q^256 + (-3*zeta^5 + 3*zeta^2 + 3*zeta)*q^260 + 
(2*zeta^5 - 4*zeta^4 + 2*zeta^2 + 2*zeta)*q^262 + (4*zeta^5 - 4*zeta^4)*q^266 + 
(20*zeta^5 - 10*zeta^4 - 10*zeta^2 - 10*zeta)*q^268 + (-9*zeta^4 + 9*zeta^2 + 
9*zeta)*q^272 + (zeta^5 + zeta^4 - 2*zeta^2 - 2*zeta)*q^274 + (-8*zeta^5 + 
8*zeta^2 + 8*zeta)*q^278 + (-2*zeta^5 + 4*zeta^4 - 2*zeta^2 - 2*zeta)*q^280 + 
(-18*zeta^5 + 18*zeta^4)*q^284 + (-4*zeta^5 + 2*zeta^4 + 2*zeta^2 + 
2*zeta)*q^286 + (-3*zeta^4 + 3*zeta^2 + 3*zeta)*q^290 + (-7*zeta^5 - 7*zeta^4 + 
14*zeta^2 + 14*zeta)*q^292 + (7*zeta^5 - 7*zeta^2 - 7*zeta)*q^296 + (5*zeta^5 - 
10*zeta^4 + 5*zeta^2 + 5*zeta)*q^298 + (20*zeta^5 - 20*zeta^4)*q^302 + (4*zeta^5
- 2*zeta^4 - 2*zeta^2 - 2*zeta)*q^304 + (-12*zeta^4 + 12*zeta^2 + 12*zeta)*q^308
+ (-8*zeta^5 - 8*zeta^4 + 16*zeta^2 + 16*zeta)*q^310 + (-17*zeta^5 + 17*zeta^2 +
17*zeta)*q^314 + (2*zeta^5 - 4*zeta^4 + 2*zeta^2 + 2*zeta)*q^316 + (9*zeta^5 - 
9*zeta^4)*q^320 + (-8*zeta^5 + 4*zeta^4 + 4*zeta^2 + 4*zeta)*q^322 + (-16*zeta^4
+ 16*zeta^2 + 16*zeta)*q^326 + (-4*zeta^5 - 4*zeta^4 + 8*zeta^2 + 8*zeta)*q^328 
+ (24*zeta^5 - 24*zeta^2 - 24*zeta)*q^332 + (-10*zeta^5 + 20*zeta^4 - 10*zeta^2 
- 10*zeta)*q^334 + (-12*zeta^5 + 12*zeta^4)*q^338 + (18*zeta^5 - 9*zeta^4 - 
9*zeta^2 - 9*zeta)*q^340 + (2*zeta^4 - 2*zeta^2 - 2*zeta)*q^344 + (-11*zeta^5 - 
11*zeta^4 + 22*zeta^2 + 22*zeta)*q^346 + (4*zeta^5 - 4*zeta^2 - 4*zeta)*q^350 + 
(10*zeta^5 - 20*zeta^4 + 10*zeta^2 + 10*zeta)*q^352 + (-9*zeta^5 + 
9*zeta^4)*q^356 + (-24*zeta^5 + 12*zeta^4 + 12*zeta^2 + 12*zeta)*q^358 + 
(2*zeta^4 - 2*zeta^2 - 2*zeta)*q^362 + (-2*zeta^5 - 2*zeta^4 + 4*zeta^2 + 
4*zeta)*q^364 + (6*zeta^5 - 6*zeta^2 - 6*zeta)*q^368 + (7*zeta^5 - 14*zeta^4 + 
7*zeta^2 + 7*zeta)*q^370 + (-18*zeta^5 + 18*zeta^4)*q^374 + (-8*zeta^5 + 
4*zeta^4 + 4*zeta^2 + 4*zeta)*q^376 + (-6*zeta^4 + 6*zeta^2 + 6*zeta)*q^380 + 
(10*zeta^5 + 10*zeta^4 - 20*zeta^2 - 20*zeta)*q^382 + (zeta^5 - zeta^2 - 
zeta)*q^386 + (2*zeta^5 - 4*zeta^4 + 2*zeta^2 + 2*zeta)*q^388 + (-3*zeta^5 + 
3*zeta^4)*q^392 + (6*zeta^5 - 3*zeta^4 - 3*zeta^2 - 3*zeta)*q^394 + (20*zeta^4 -
20*zeta^2 - 20*zeta)*q^398 + (2*zeta^5 + 2*zeta^4 - 4*zeta^2 - 4*zeta)*q^400 + 
(-12*zeta^5 + 12*zeta^2 + 12*zeta)*q^404 + (2*zeta^5 - 4*zeta^4 + 2*zeta^2 + 
2*zeta)*q^406 + (12*zeta^5 - 12*zeta^4)*q^410 + (-16*zeta^5 + 8*zeta^4 + 
8*zeta^2 + 8*zeta)*q^412 + (5*zeta^4 - 5*zeta^2 - 5*zeta)*q^416 + (-4*zeta^5 - 
4*zeta^4 + 8*zeta^2 + 8*zeta)*q^418 + (10*zeta^5 - 10*zeta^2 - 10*zeta)*q^422 + 
(4*zeta^5 - 2*zeta^4 - 2*zeta^2 - 2*zeta)*q^430 + (16*zeta^4 - 16*zeta^2 - 
16*zeta)*q^434 + (11*zeta^5 + 11*zeta^4 - 22*zeta^2 - 22*zeta)*q^436 + 
(-6*zeta^5 + 6*zeta^2 + 6*zeta)*q^440 + (-3*zeta^5 + 6*zeta^4 - 3*zeta^2 - 
3*zeta)*q^442 + (2*zeta^5 - 2*zeta^4)*q^446 + (12*zeta^5 - 6*zeta^4 - 6*zeta^2 -
6*zeta)*q^448 + (-3*zeta^4 + 3*zeta^2 + 3*zeta)*q^452 + (-2*zeta^5 - 2*zeta^4 + 
4*zeta^2 + 4*zeta)*q^454 + (zeta^5 - zeta^2 - zeta)*q^458 + (-6*zeta^5 + 
12*zeta^4 - 6*zeta^2 - 6*zeta)*q^460 + (-3*zeta^5 + 3*zeta^4)*q^464 + (30*zeta^5
- 15*zeta^4 - 15*zeta^2 - 15*zeta)*q^466 + (-12*zeta^4 + 12*zeta^2 + 
12*zeta)*q^470 + (8*zeta^5 + 8*zeta^4 - 16*zeta^2 - 16*zeta)*q^472 + (-18*zeta^5
+ 18*zeta^2 + 18*zeta)*q^476 + (-16*zeta^5 + 32*zeta^4 - 16*zeta^2 - 
16*zeta)*q^478 + (29*zeta^5 - 29*zeta^4)*q^482 + (-2*zeta^5 + zeta^4 + zeta^2 + 
zeta)*q^484 + (-7*zeta^4 + 7*zeta^2 + 7*zeta)*q^488 + (3*zeta^5 + 3*zeta^4 - 
6*zeta^2 - 6*zeta)*q^490 + (2*zeta^5 - 2*zeta^2 - 2*zeta)*q^494 + (-8*zeta^5 + 
16*zeta^4 - 8*zeta^2 - 8*zeta)*q^496 + (21*zeta^5 - 21*zeta^4)*q^500 + 
(-12*zeta^5 + 6*zeta^4 + 6*zeta^2 + 6*zeta)*q^502 + (-12*zeta^4 + 12*zeta^2 + 
12*zeta)*q^506 + (2*zeta^5 + 2*zeta^4 - 4*zeta^2 - 4*zeta)*q^508 + (-19*zeta^5 +
19*zeta^2 + 19*zeta)*q^512 + (5*zeta^5 - 10*zeta^4 + 5*zeta^2 + 5*zeta)*q^514 + 
(-14*zeta^5 + 14*zeta^4)*q^518 + (-2*zeta^5 + zeta^4 + zeta^2 + zeta)*q^520 + 
(6*zeta^4 - 6*zeta^2 - 6*zeta)*q^524 + (4*zeta^5 + 4*zeta^4 - 8*zeta^2 - 
8*zeta)*q^526 + (4*zeta^5 - 8*zeta^4 + 4*zeta^2 + 4*zeta)*q^532 + (-10*zeta^5 + 
10*zeta^4)*q^536 + (18*zeta^5 - 9*zeta^4 - 9*zeta^2 - 9*zeta)*q^538 + (2*zeta^4 
- 2*zeta^2 - 2*zeta)*q^542 + (-15*zeta^5 - 15*zeta^4 + 30*zeta^2 + 
30*zeta)*q^544 + (-3*zeta^5 + 3*zeta^2 + 3*zeta)*q^548 + (4*zeta^5 - 8*zeta^4 + 
4*zeta^2 + 4*zeta)*q^550 + (2*zeta^5 - 2*zeta^4)*q^554 + (-16*zeta^5 + 8*zeta^4 
+ 8*zeta^2 + 8*zeta)*q^556 + (6*zeta^4 - 6*zeta^2 - 6*zeta)*q^560 + (7*zeta^5 + 
7*zeta^4 - 14*zeta^2 - 14*zeta)*q^562 + (28*zeta^5 - 28*zeta^2 - 28*zeta)*q^566 
+ (-6*zeta^5 + 12*zeta^4 - 6*zeta^2 - 6*zeta)*q^568 + (6*zeta^5 - 
6*zeta^4)*q^572 + (16*zeta^5 - 8*zeta^4 - 8*zeta^2 - 8*zeta)*q^574 + (10*zeta^4 
- 10*zeta^2 - 10*zeta)*q^578 + (-3*zeta^5 - 3*zeta^4 + 6*zeta^2 + 6*zeta)*q^580 
+ (7*zeta^5 - 7*zeta^2 - 7*zeta)*q^584 + (11*zeta^5 - 22*zeta^4 + 11*zeta^2 + 
11*zeta)*q^586 + (-24*zeta^5 + 24*zeta^4)*q^590 + (-14*zeta^5 + 7*zeta^4 + 
7*zeta^2 + 7*zeta)*q^592 + (15*zeta^4 - 15*zeta^2 - 15*zeta)*q^596 + (-2*zeta^5 
- 2*zeta^4 + 4*zeta^2 + 4*zeta)*q^598 + (-4*zeta^5 + 4*zeta^2 + 4*zeta)*q^602 + 
(20*zeta^5 - 40*zeta^4 + 20*zeta^2 + 20*zeta)*q^604 + (-10*zeta^5 + 
10*zeta^4)*q^608 + (-14*zeta^5 + 7*zeta^4 + 7*zeta^2 + 7*zeta)*q^610 + 
(-16*zeta^4 + 16*zeta^2 + 16*zeta)*q^614 + (-4*zeta^5 - 4*zeta^4 + 8*zeta^2 + 
8*zeta)*q^616 + (24*zeta^5 - 24*zeta^2 - 24*zeta)*q^620 + (-4*zeta^5 + 8*zeta^4 
- 4*zeta^2 - 4*zeta)*q^622 + (-25*zeta^5 + 25*zeta^4)*q^626 + (-34*zeta^5 + 
17*zeta^4 + 17*zeta^2 + 17*zeta)*q^628 + (2*zeta^4 - 2*zeta^2 - 2*zeta)*q^632 + 
(-5*zeta^5 - 5*zeta^4 + 10*zeta^2 + 10*zeta)*q^634 + (6*zeta^5 - 6*zeta^2 - 
6*zeta)*q^638 + (-zeta^5 + 2*zeta^4 - zeta^2 - zeta)*q^640 + (12*zeta^5 - 
12*zeta^4)*q^644 + (-12*zeta^5 + 6*zeta^4 + 6*zeta^2 + 6*zeta)*q^646 + (2*zeta^4
- 2*zeta^2 - 2*zeta)*q^650 + (-16*zeta^5 - 16*zeta^4 + 32*zeta^2 + 
32*zeta)*q^652 + (-12*zeta^5 + 12*zeta^2 + 12*zeta)*q^656 + (8*zeta^5 - 
16*zeta^4 + 8*zeta^2 + 8*zeta)*q^658 + (2*zeta^5 - 2*zeta^4)*q^662 + (16*zeta^5 
- 8*zeta^4 - 8*zeta^2 - 8*zeta)*q^664 + (-30*zeta^4 + 30*zeta^2 + 30*zeta)*q^668
+ (10*zeta^5 + 10*zeta^4 - 20*zeta^2 - 20*zeta)*q^670 + (-26*zeta^5 + 26*zeta^2 
+ 26*zeta)*q^674 + (-12*zeta^5 + 24*zeta^4 - 12*zeta^2 - 12*zeta)*q^676 + 
(-9*zeta^5 + 9*zeta^4)*q^680 + (32*zeta^5 - 16*zeta^4 - 16*zeta^2 - 
16*zeta)*q^682 + (-20*zeta^4 + 20*zeta^2 + 20*zeta)*q^686 + (-2*zeta^5 - 
2*zeta^4 + 4*zeta^2 + 4*zeta)*q^688 + (33*zeta^5 - 33*zeta^2 - 33*zeta)*q^692 + 
(2*zeta^5 - 4*zeta^4 + 2*zeta^2 + 2*zeta)*q^694 + (2*zeta^5 - 2*zeta^4)*q^698 + 
(8*zeta^5 - 4*zeta^4 - 4*zeta^2 - 4*zeta)*q^700 + (18*zeta^4 - 18*zeta^2 - 
18*zeta)*q^704 + (-8*zeta^5 - 8*zeta^4 + 16*zeta^2 + 16*zeta)*q^706 + 
(-18*zeta^5 + 18*zeta^2 + 18*zeta)*q^710 + (-3*zeta^5 + 6*zeta^4 - 3*zeta^2 - 
3*zeta)*q^712 + (36*zeta^5 - 36*zeta^4)*q^716 + (-12*zeta^5 + 6*zeta^4 + 
6*zeta^2 + 6*zeta)*q^718 + (-15*zeta^4 + 15*zeta^2 + 15*zeta)*q^722 + (2*zeta^5 
+ 2*zeta^4 - 4*zeta^2 - 4*zeta)*q^724 + (2*zeta^5 - 2*zeta^2 - 2*zeta)*q^728 + 
(7*zeta^5 - 14*zeta^4 + 7*zeta^2 + 7*zeta)*q^730 + (20*zeta^5 - 20*zeta^4)*q^734
+ (20*zeta^5 - 10*zeta^4 - 10*zeta^2 - 10*zeta)*q^736 + (21*zeta^4 - 21*zeta^2 -
21*zeta)*q^740 + (10*zeta^5 - 10*zeta^2 - 10*zeta)*q^746 + (-18*zeta^5 + 
36*zeta^4 - 18*zeta^2 - 18*zeta)*q^748 + (-12*zeta^5 + 12*zeta^4)*q^752 + 
(2*zeta^5 - zeta^4 - zeta^2 - zeta)*q^754 + (-16*zeta^4 + 16*zeta^2 + 
16*zeta)*q^758 + (-2*zeta^5 - 2*zeta^4 + 4*zeta^2 + 4*zeta)*q^760 + (-30*zeta^5 
+ 30*zeta^2 + 30*zeta)*q^764 + (-10*zeta^5 + 20*zeta^4 - 10*zeta^2 - 
10*zeta)*q^766 + (12*zeta^5 - 12*zeta^4)*q^770 + (2*zeta^5 - zeta^4 - zeta^2 - 
zeta)*q^772 + (2*zeta^4 - 2*zeta^2 - 2*zeta)*q^776 + (16*zeta^5 + 16*zeta^4 - 
32*zeta^2 - 32*zeta)*q^778 + (-18*zeta^5 + 18*zeta^2 + 18*zeta)*q^782 + 
(3*zeta^5 - 6*zeta^4 + 3*zeta^2 + 3*zeta)*q^784 + (-9*zeta^5 + 9*zeta^4)*q^788 +
(4*zeta^5 - 2*zeta^4 - 2*zeta^2 - 2*zeta)*q^790 + (29*zeta^4 - 29*zeta^2 - 
29*zeta)*q^794 + (20*zeta^5 + 20*zeta^4 - 40*zeta^2 - 40*zeta)*q^796 + 
(-10*zeta^5 + 10*zeta^2 + 10*zeta)*q^800 + (-7*zeta^5 + 14*zeta^4 - 7*zeta^2 - 
7*zeta)*q^802 + (-8*zeta^5 + 8*zeta^4)*q^806 + (-8*zeta^5 + 4*zeta^4 + 4*zeta^2 
+ 4*zeta)*q^808 + (6*zeta^4 - 6*zeta^2 - 6*zeta)*q^812 + (14*zeta^5 + 14*zeta^4 
- 28*zeta^2 - 28*zeta)*q^814 + (19*zeta^5 - 19*zeta^2 - 19*zeta)*q^818 + 
(12*zeta^5 - 24*zeta^4 + 12*zeta^2 + 12*zeta)*q^820 + (8*zeta^5 - 
8*zeta^4)*q^824 + (-32*zeta^5 + 16*zeta^4 + 16*zeta^2 + 16*zeta)*q^826 + 
(24*zeta^4 - 24*zeta^2 - 24*zeta)*q^830 + (3*zeta^5 + 3*zeta^4 - 6*zeta^2 - 
6*zeta)*q^832 + (12*zeta^5 - 12*zeta^2 - 12*zeta)*q^836 + (-4*zeta^5 + 8*zeta^4 
- 4*zeta^2 - 4*zeta)*q^838 + (-25*zeta^5 + 25*zeta^4)*q^842 + (20*zeta^5 - 
10*zeta^4 - 10*zeta^2 - 10*zeta)*q^844 + (-6*zeta^5 - 6*zeta^4 + 12*zeta^2 + 
12*zeta)*q^850 + (14*zeta^5 - 14*zeta^2 - 14*zeta)*q^854 + (-6*zeta^5 + 
6*zeta^4)*q^860 + (11*zeta^4 - 11*zeta^2 - 11*zeta)*q^866 + (16*zeta^5 + 
16*zeta^4 - 32*zeta^2 - 32*zeta)*q^868 + (-11*zeta^5 + 11*zeta^2 + 
11*zeta)*q^872 + (4*zeta^5 - 8*zeta^4 + 4*zeta^2 + 4*zeta)*q^874 + (20*zeta^5 - 
20*zeta^4)*q^878 + (12*zeta^5 - 6*zeta^4 - 6*zeta^2 - 6*zeta)*q^880 + O(q^882), 
(zeta^4 - zeta^2 - zeta)*q^2 + (zeta^5 + zeta^4 - 2*zeta^2 - 2*zeta)*q^4 + 
(-zeta^5 + zeta^2 + zeta)*q^8 + (-zeta^5 + 2*zeta^4 - zeta^2 - zeta)*q^10 + 
(2*zeta^5 - 2*zeta^4)*q^14 + (2*zeta^5 - zeta^4 - zeta^2 - zeta)*q^16 + 
(-3*zeta^4 + 3*zeta^2 + 3*zeta)*q^20 + (-2*zeta^5 - 2*zeta^4 + 4*zeta^2 + 
4*zeta)*q^22 + (zeta^5 - zeta^2 - zeta)*q^26 + (2*zeta^5 - 4*zeta^4 + 2*zeta^2 +
2*zeta)*q^28 + (-5*zeta^5 + 5*zeta^4)*q^32 + (-6*zeta^5 + 3*zeta^4 + 3*zeta^2 + 
3*zeta)*q^34 + (2*zeta^4 - 2*zeta^2 - 2*zeta)*q^38 + (-zeta^5 - zeta^4 + 
2*zeta^2 + 2*zeta)*q^40 + (6*zeta^5 - 6*zeta^2 - 6*zeta)*q^44 + (2*zeta^5 - 
4*zeta^4 + 2*zeta^2 + 2*zeta)*q^46 + (-2*zeta^5 + 2*zeta^4)*q^50 + (2*zeta^5 - 
zeta^4 - zeta^2 - zeta)*q^52 + (2*zeta^4 - 2*zeta^2 - 2*zeta)*q^56 + (zeta^5 + 
zeta^4 - 2*zeta^2 - 2*zeta)*q^58 + (-8*zeta^5 + 8*zeta^2 + 8*zeta)*q^62 + 
(-3*zeta^5 + 6*zeta^4 - 3*zeta^2 - 3*zeta)*q^64 + (9*zeta^5 - 9*zeta^4)*q^68 + 
(4*zeta^5 - 2*zeta^4 - 2*zeta^2 - 2*zeta)*q^70 + (-7*zeta^4 + 7*zeta^2 + 
7*zeta)*q^74 + (2*zeta^5 + 2*zeta^4 - 4*zeta^2 - 4*zeta)*q^76 + (-3*zeta^5 + 
3*zeta^2 + 3*zeta)*q^80 + (-4*zeta^5 + 8*zeta^4 - 4*zeta^2 - 4*zeta)*q^82 + 
(2*zeta^5 - 2*zeta^4)*q^86 + (4*zeta^5 - 2*zeta^4 - 2*zeta^2 - 2*zeta)*q^88 + 
(6*zeta^4 - 6*zeta^2 - 6*zeta)*q^92 + (4*zeta^5 + 4*zeta^4 - 8*zeta^2 - 
8*zeta)*q^94 + (3*zeta^5 - 3*zeta^2 - 3*zeta)*q^98 + (-2*zeta^5 + 4*zeta^4 - 
2*zeta^2 - 2*zeta)*q^100 + (-zeta^5 + zeta^4)*q^104 + (6*zeta^4 - 6*zeta^2 - 
6*zeta)*q^110 + (-2*zeta^5 - 2*zeta^4 + 4*zeta^2 + 4*zeta)*q^112 + (-3*zeta^5 + 
3*zeta^2 + 3*zeta)*q^116 + (8*zeta^5 - 16*zeta^4 + 8*zeta^2 + 8*zeta)*q^118 + 
(-7*zeta^5 + 7*zeta^4)*q^122 + (-16*zeta^5 + 8*zeta^4 + 8*zeta^2 + 8*zeta)*q^124
+ (zeta^4 - zeta^2 - zeta)*q^128 + (zeta^5 + zeta^4 - 2*zeta^2 - 2*zeta)*q^130 +
(10*zeta^5 - 10*zeta^2 - 10*zeta)*q^134 + (3*zeta^5 - 6*zeta^4 + 3*zeta^2 + 
3*zeta)*q^136 + (-6*zeta^5 + 6*zeta^4)*q^140 + (12*zeta^5 - 6*zeta^4 - 6*zeta^2 
- 6*zeta)*q^142 + (-7*zeta^4 + 7*zeta^2 + 7*zeta)*q^146 + (-7*zeta^5 - 7*zeta^4 
+ 14*zeta^2 + 14*zeta)*q^148 + (-2*zeta^5 + 2*zeta^2 + 2*zeta)*q^152 + 
(-4*zeta^5 + 8*zeta^4 - 4*zeta^2 - 4*zeta)*q^154 + (2*zeta^5 - 2*zeta^4)*q^158 +
(-10*zeta^5 + 5*zeta^4 + 5*zeta^2 + 5*zeta)*q^160 + (-12*zeta^4 + 12*zeta^2 + 
12*zeta)*q^164 + (-8*zeta^5 - 8*zeta^4 + 16*zeta^2 + 16*zeta)*q^166 + (9*zeta^5 
- 9*zeta^2 - 9*zeta)*q^170 + (2*zeta^5 - 4*zeta^4 + 2*zeta^2 + 2*zeta)*q^172 + 
(6*zeta^5 - 6*zeta^4)*q^176 + (6*zeta^5 - 3*zeta^4 - 3*zeta^2 - 3*zeta)*q^178 + 
(-2*zeta^4 + 2*zeta^2 + 2*zeta)*q^182 + (2*zeta^5 + 2*zeta^4 - 4*zeta^2 - 
4*zeta)*q^184 + (-12*zeta^5 + 12*zeta^2 + 12*zeta)*q^188 + (-2*zeta^5 + 4*zeta^4
- 2*zeta^2 - 2*zeta)*q^190 + (2*zeta^5 - 2*zeta^4)*q^194 + (6*zeta^5 - 3*zeta^4 
- 3*zeta^2 - 3*zeta)*q^196 + (-2*zeta^4 + 2*zeta^2 + 2*zeta)*q^200 + (4*zeta^5 +
4*zeta^4 - 8*zeta^2 - 8*zeta)*q^202 + (-8*zeta^5 + 8*zeta^2 + 8*zeta)*q^206 + 
(zeta^5 - 2*zeta^4 + zeta^2 + zeta)*q^208 + (11*zeta^4 - 11*zeta^2 - 
11*zeta)*q^218 + (6*zeta^5 + 6*zeta^4 - 12*zeta^2 - 12*zeta)*q^220 + (10*zeta^5 
- 10*zeta^2 - 10*zeta)*q^224 + (-zeta^5 + 2*zeta^4 - zeta^2 - zeta)*q^226 + 
(-6*zeta^5 + 6*zeta^4)*q^230 + (-2*zeta^5 + zeta^4 + zeta^2 + zeta)*q^232 + 
(24*zeta^4 - 24*zeta^2 - 24*zeta)*q^236 + (6*zeta^5 + 6*zeta^4 - 12*zeta^2 - 
12*zeta)*q^238 + (-zeta^5 + zeta^2 + zeta)*q^242 + (-7*zeta^5 + 14*zeta^4 - 
7*zeta^2 - 7*zeta)*q^244 + (8*zeta^5 - 8*zeta^4)*q^248 + (-14*zeta^5 + 7*zeta^4 
+ 7*zeta^2 + 7*zeta)*q^250 + (2*zeta^4 - 2*zeta^2 - 2*zeta)*q^254 + (7*zeta^5 + 
7*zeta^4 - 14*zeta^2 - 14*zeta)*q^256 + (-3*zeta^5 + 3*zeta^2 + 3*zeta)*q^260 + 
(2*zeta^5 - 4*zeta^4 + 2*zeta^2 + 2*zeta)*q^262 + (4*zeta^5 - 4*zeta^4)*q^266 + 
(20*zeta^5 - 10*zeta^4 - 10*zeta^2 - 10*zeta)*q^268 + (-9*zeta^4 + 9*zeta^2 + 
9*zeta)*q^272 + (zeta^5 + zeta^4 - 2*zeta^2 - 2*zeta)*q^274 + (-8*zeta^5 + 
8*zeta^2 + 8*zeta)*q^278 + (-2*zeta^5 + 4*zeta^4 - 2*zeta^2 - 2*zeta)*q^280 + 
(-18*zeta^5 + 18*zeta^4)*q^284 + (-4*zeta^5 + 2*zeta^4 + 2*zeta^2 + 
2*zeta)*q^286 + (-3*zeta^4 + 3*zeta^2 + 3*zeta)*q^290 + (-7*zeta^5 - 7*zeta^4 + 
14*zeta^2 + 14*zeta)*q^292 + (7*zeta^5 - 7*zeta^2 - 7*zeta)*q^296 + (5*zeta^5 - 
10*zeta^4 + 5*zeta^2 + 5*zeta)*q^298 + (20*zeta^5 - 20*zeta^4)*q^302 + (4*zeta^5
- 2*zeta^4 - 2*zeta^2 - 2*zeta)*q^304 + (-12*zeta^4 + 12*zeta^2 + 12*zeta)*q^308
+ (-8*zeta^5 - 8*zeta^4 + 16*zeta^2 + 16*zeta)*q^310 + (-17*zeta^5 + 17*zeta^2 +
17*zeta)*q^314 + (2*zeta^5 - 4*zeta^4 + 2*zeta^2 + 2*zeta)*q^316 + (9*zeta^5 - 
9*zeta^4)*q^320 + (-8*zeta^5 + 4*zeta^4 + 4*zeta^2 + 4*zeta)*q^322 + (-16*zeta^4
+ 16*zeta^2 + 16*zeta)*q^326 + (-4*zeta^5 - 4*zeta^4 + 8*zeta^2 + 8*zeta)*q^328 
+ (24*zeta^5 - 24*zeta^2 - 24*zeta)*q^332 + (-10*zeta^5 + 20*zeta^4 - 10*zeta^2 
- 10*zeta)*q^334 + (-12*zeta^5 + 12*zeta^4)*q^338 + (18*zeta^5 - 9*zeta^4 - 
9*zeta^2 - 9*zeta)*q^340 + (2*zeta^4 - 2*zeta^2 - 2*zeta)*q^344 + (-11*zeta^5 - 
11*zeta^4 + 22*zeta^2 + 22*zeta)*q^346 + (4*zeta^5 - 4*zeta^2 - 4*zeta)*q^350 + 
(10*zeta^5 - 20*zeta^4 + 10*zeta^2 + 10*zeta)*q^352 + (-9*zeta^5 + 
9*zeta^4)*q^356 + (-24*zeta^5 + 12*zeta^4 + 12*zeta^2 + 12*zeta)*q^358 + 
(2*zeta^4 - 2*zeta^2 - 2*zeta)*q^362 + (-2*zeta^5 - 2*zeta^4 + 4*zeta^2 + 
4*zeta)*q^364 + (6*zeta^5 - 6*zeta^2 - 6*zeta)*q^368 + (7*zeta^5 - 14*zeta^4 + 
7*zeta^2 + 7*zeta)*q^370 + (-18*zeta^5 + 18*zeta^4)*q^374 + (-8*zeta^5 + 
4*zeta^4 + 4*zeta^2 + 4*zeta)*q^376 + (-6*zeta^4 + 6*zeta^2 + 6*zeta)*q^380 + 
(10*zeta^5 + 10*zeta^4 - 20*zeta^2 - 20*zeta)*q^382 + (zeta^5 - zeta^2 - 
zeta)*q^386 + (2*zeta^5 - 4*zeta^4 + 2*zeta^2 + 2*zeta)*q^388 + (-3*zeta^5 + 
3*zeta^4)*q^392 + (6*zeta^5 - 3*zeta^4 - 3*zeta^2 - 3*zeta)*q^394 + (20*zeta^4 -
20*zeta^2 - 20*zeta)*q^398 + (2*zeta^5 + 2*zeta^4 - 4*zeta^2 - 4*zeta)*q^400 + 
(-12*zeta^5 + 12*zeta^2 + 12*zeta)*q^404 + (2*zeta^5 - 4*zeta^4 + 2*zeta^2 + 
2*zeta)*q^406 + (12*zeta^5 - 12*zeta^4)*q^410 + (-16*zeta^5 + 8*zeta^4 + 
8*zeta^2 + 8*zeta)*q^412 + (5*zeta^4 - 5*zeta^2 - 5*zeta)*q^416 + (-4*zeta^5 - 
4*zeta^4 + 8*zeta^2 + 8*zeta)*q^418 + (10*zeta^5 - 10*zeta^2 - 10*zeta)*q^422 + 
(4*zeta^5 - 2*zeta^4 - 2*zeta^2 - 2*zeta)*q^430 + (16*zeta^4 - 16*zeta^2 - 
16*zeta)*q^434 + (11*zeta^5 + 11*zeta^4 - 22*zeta^2 - 22*zeta)*q^436 + 
(-6*zeta^5 + 6*zeta^2 + 6*zeta)*q^440 + (-3*zeta^5 + 6*zeta^4 - 3*zeta^2 - 
3*zeta)*q^442 + (2*zeta^5 - 2*zeta^4)*q^446 + (12*zeta^5 - 6*zeta^4 - 6*zeta^2 -
6*zeta)*q^448 + (-3*zeta^4 + 3*zeta^2 + 3*zeta)*q^452 + (-2*zeta^5 - 2*zeta^4 + 
4*zeta^2 + 4*zeta)*q^454 + (zeta^5 - zeta^2 - zeta)*q^458 + (-6*zeta^5 + 
12*zeta^4 - 6*zeta^2 - 6*zeta)*q^460 + (-3*zeta^5 + 3*zeta^4)*q^464 + (30*zeta^5
- 15*zeta^4 - 15*zeta^2 - 15*zeta)*q^466 + (-12*zeta^4 + 12*zeta^2 + 
12*zeta)*q^470 + (8*zeta^5 + 8*zeta^4 - 16*zeta^2 - 16*zeta)*q^472 + (-18*zeta^5
+ 18*zeta^2 + 18*zeta)*q^476 + (-16*zeta^5 + 32*zeta^4 - 16*zeta^2 - 
16*zeta)*q^478 + (29*zeta^5 - 29*zeta^4)*q^482 + (-2*zeta^5 + zeta^4 + zeta^2 + 
zeta)*q^484 + (-7*zeta^4 + 7*zeta^2 + 7*zeta)*q^488 + (3*zeta^5 + 3*zeta^4 - 
6*zeta^2 - 6*zeta)*q^490 + (2*zeta^5 - 2*zeta^2 - 2*zeta)*q^494 + (-8*zeta^5 + 
16*zeta^4 - 8*zeta^2 - 8*zeta)*q^496 + (21*zeta^5 - 21*zeta^4)*q^500 + 
(-12*zeta^5 + 6*zeta^4 + 6*zeta^2 + 6*zeta)*q^502 + (-12*zeta^4 + 12*zeta^2 + 
12*zeta)*q^506 + (2*zeta^5 + 2*zeta^4 - 4*zeta^2 - 4*zeta)*q^508 + (-19*zeta^5 +
19*zeta^2 + 19*zeta)*q^512 + (5*zeta^5 - 10*zeta^4 + 5*zeta^2 + 5*zeta)*q^514 + 
(-14*zeta^5 + 14*zeta^4)*q^518 + (-2*zeta^5 + zeta^4 + zeta^2 + zeta)*q^520 + 
(6*zeta^4 - 6*zeta^2 - 6*zeta)*q^524 + (4*zeta^5 + 4*zeta^4 - 8*zeta^2 - 
8*zeta)*q^526 + (4*zeta^5 - 8*zeta^4 + 4*zeta^2 + 4*zeta)*q^532 + (-10*zeta^5 + 
10*zeta^4)*q^536 + (18*zeta^5 - 9*zeta^4 - 9*zeta^2 - 9*zeta)*q^538 + (2*zeta^4 
- 2*zeta^2 - 2*zeta)*q^542 + (-15*zeta^5 - 15*zeta^4 + 30*zeta^2 + 
30*zeta)*q^544 + (-3*zeta^5 + 3*zeta^2 + 3*zeta)*q^548 + (4*zeta^5 - 8*zeta^4 + 
4*zeta^2 + 4*zeta)*q^550 + (2*zeta^5 - 2*zeta^4)*q^554 + (-16*zeta^5 + 8*zeta^4 
+ 8*zeta^2 + 8*zeta)*q^556 + (6*zeta^4 - 6*zeta^2 - 6*zeta)*q^560 + (7*zeta^5 + 
7*zeta^4 - 14*zeta^2 - 14*zeta)*q^562 + (28*zeta^5 - 28*zeta^2 - 28*zeta)*q^566 
+ (-6*zeta^5 + 12*zeta^4 - 6*zeta^2 - 6*zeta)*q^568 + (6*zeta^5 - 
6*zeta^4)*q^572 + (16*zeta^5 - 8*zeta^4 - 8*zeta^2 - 8*zeta)*q^574 + (10*zeta^4 
- 10*zeta^2 - 10*zeta)*q^578 + (-3*zeta^5 - 3*zeta^4 + 6*zeta^2 + 6*zeta)*q^580 
+ (7*zeta^5 - 7*zeta^2 - 7*zeta)*q^584 + (11*zeta^5 - 22*zeta^4 + 11*zeta^2 + 
11*zeta)*q^586 + (-24*zeta^5 + 24*zeta^4)*q^590 + (-14*zeta^5 + 7*zeta^4 + 
7*zeta^2 + 7*zeta)*q^592 + (15*zeta^4 - 15*zeta^2 - 15*zeta)*q^596 + (-2*zeta^5 
- 2*zeta^4 + 4*zeta^2 + 4*zeta)*q^598 + (-4*zeta^5 + 4*zeta^2 + 4*zeta)*q^602 + 
(20*zeta^5 - 40*zeta^4 + 20*zeta^2 + 20*zeta)*q^604 + (-10*zeta^5 + 
10*zeta^4)*q^608 + (-14*zeta^5 + 7*zeta^4 + 7*zeta^2 + 7*zeta)*q^610 + 
(-16*zeta^4 + 16*zeta^2 + 16*zeta)*q^614 + (-4*zeta^5 - 4*zeta^4 + 8*zeta^2 + 
8*zeta)*q^616 + (24*zeta^5 - 24*zeta^2 - 24*zeta)*q^620 + (-4*zeta^5 + 8*zeta^4 
- 4*zeta^2 - 4*zeta)*q^622 + (-25*zeta^5 + 25*zeta^4)*q^626 + (-34*zeta^5 + 
17*zeta^4 + 17*zeta^2 + 17*zeta)*q^628 + (2*zeta^4 - 2*zeta^2 - 2*zeta)*q^632 + 
(-5*zeta^5 - 5*zeta^4 + 10*zeta^2 + 10*zeta)*q^634 + (6*zeta^5 - 6*zeta^2 - 
6*zeta)*q^638 + (-zeta^5 + 2*zeta^4 - zeta^2 - zeta)*q^640 + (12*zeta^5 - 
12*zeta^4)*q^644 + (-12*zeta^5 + 6*zeta^4 + 6*zeta^2 + 6*zeta)*q^646 + (2*zeta^4
- 2*zeta^2 - 2*zeta)*q^650 + (-16*zeta^5 - 16*zeta^4 + 32*zeta^2 + 
32*zeta)*q^652 + (-12*zeta^5 + 12*zeta^2 + 12*zeta)*q^656 + (8*zeta^5 - 
16*zeta^4 + 8*zeta^2 + 8*zeta)*q^658 + (2*zeta^5 - 2*zeta^4)*q^662 + (16*zeta^5 
- 8*zeta^4 - 8*zeta^2 - 8*zeta)*q^664 + (-30*zeta^4 + 30*zeta^2 + 30*zeta)*q^668
+ (10*zeta^5 + 10*zeta^4 - 20*zeta^2 - 20*zeta)*q^670 + (-26*zeta^5 + 26*zeta^2 
+ 26*zeta)*q^674 + (-12*zeta^5 + 24*zeta^4 - 12*zeta^2 - 12*zeta)*q^676 + 
(-9*zeta^5 + 9*zeta^4)*q^680 + (32*zeta^5 - 16*zeta^4 - 16*zeta^2 - 
16*zeta)*q^682 + (-20*zeta^4 + 20*zeta^2 + 20*zeta)*q^686 + (-2*zeta^5 - 
2*zeta^4 + 4*zeta^2 + 4*zeta)*q^688 + (33*zeta^5 - 33*zeta^2 - 33*zeta)*q^692 + 
(2*zeta^5 - 4*zeta^4 + 2*zeta^2 + 2*zeta)*q^694 + (2*zeta^5 - 2*zeta^4)*q^698 + 
(8*zeta^5 - 4*zeta^4 - 4*zeta^2 - 4*zeta)*q^700 + (18*zeta^4 - 18*zeta^2 - 
18*zeta)*q^704 + (-8*zeta^5 - 8*zeta^4 + 16*zeta^2 + 16*zeta)*q^706 + 
(-18*zeta^5 + 18*zeta^2 + 18*zeta)*q^710 + (-3*zeta^5 + 6*zeta^4 - 3*zeta^2 - 
3*zeta)*q^712 + (36*zeta^5 - 36*zeta^4)*q^716 + (-12*zeta^5 + 6*zeta^4 + 
6*zeta^2 + 6*zeta)*q^718 + (-15*zeta^4 + 15*zeta^2 + 15*zeta)*q^722 + (2*zeta^5 
+ 2*zeta^4 - 4*zeta^2 - 4*zeta)*q^724 + (2*zeta^5 - 2*zeta^2 - 2*zeta)*q^728 + 
(7*zeta^5 - 14*zeta^4 + 7*zeta^2 + 7*zeta)*q^730 + (20*zeta^5 - 20*zeta^4)*q^734
+ (20*zeta^5 - 10*zeta^4 - 10*zeta^2 - 10*zeta)*q^736 + (21*zeta^4 - 21*zeta^2 -
21*zeta)*q^740 + (10*zeta^5 - 10*zeta^2 - 10*zeta)*q^746 + (-18*zeta^5 + 
36*zeta^4 - 18*zeta^2 - 18*zeta)*q^748 + (-12*zeta^5 + 12*zeta^4)*q^752 + 
(2*zeta^5 - zeta^4 - zeta^2 - zeta)*q^754 + (-16*zeta^4 + 16*zeta^2 + 
16*zeta)*q^758 + (-2*zeta^5 - 2*zeta^4 + 4*zeta^2 + 4*zeta)*q^760 + (-30*zeta^5 
+ 30*zeta^2 + 30*zeta)*q^764 + (-10*zeta^5 + 20*zeta^4 - 10*zeta^2 - 
10*zeta)*q^766 + (12*zeta^5 - 12*zeta^4)*q^770 + (2*zeta^5 - zeta^4 - zeta^2 - 
zeta)*q^772 + (2*zeta^4 - 2*zeta^2 - 2*zeta)*q^776 + (16*zeta^5 + 16*zeta^4 - 
32*zeta^2 - 32*zeta)*q^778 + (-18*zeta^5 + 18*zeta^2 + 18*zeta)*q^782 + 
(3*zeta^5 - 6*zeta^4 + 3*zeta^2 + 3*zeta)*q^784 + (-9*zeta^5 + 9*zeta^4)*q^788 +
(4*zeta^5 - 2*zeta^4 - 2*zeta^2 - 2*zeta)*q^790 + (29*zeta^4 - 29*zeta^2 - 
29*zeta)*q^794 + (20*zeta^5 + 20*zeta^4 - 40*zeta^2 - 40*zeta)*q^796 + 
(-10*zeta^5 + 10*zeta^2 + 10*zeta)*q^800 + (-7*zeta^5 + 14*zeta^4 - 7*zeta^2 - 
7*zeta)*q^802 + (-8*zeta^5 + 8*zeta^4)*q^806 + (-8*zeta^5 + 4*zeta^4 + 4*zeta^2 
+ 4*zeta)*q^808 + (6*zeta^4 - 6*zeta^2 - 6*zeta)*q^812 + (14*zeta^5 + 14*zeta^4 
- 28*zeta^2 - 28*zeta)*q^814 + (19*zeta^5 - 19*zeta^2 - 19*zeta)*q^818 + 
(12*zeta^5 - 24*zeta^4 + 12*zeta^2 + 12*zeta)*q^820 + (8*zeta^5 - 
8*zeta^4)*q^824 + (-32*zeta^5 + 16*zeta^4 + 16*zeta^2 + 16*zeta)*q^826 + 
(24*zeta^4 - 24*zeta^2 - 24*zeta)*q^830 + (3*zeta^5 + 3*zeta^4 - 6*zeta^2 - 
6*zeta)*q^832 + (12*zeta^5 - 12*zeta^2 - 12*zeta)*q^836 + (-4*zeta^5 + 8*zeta^4 
- 4*zeta^2 - 4*zeta)*q^838 + (-25*zeta^5 + 25*zeta^4)*q^842 + (20*zeta^5 - 
10*zeta^4 - 10*zeta^2 - 10*zeta)*q^844 + (-6*zeta^5 - 6*zeta^4 + 12*zeta^2 + 
12*zeta)*q^850 + (14*zeta^5 - 14*zeta^2 - 14*zeta)*q^854 + (-6*zeta^5 + 
6*zeta^4)*q^860 + (11*zeta^4 - 11*zeta^2 - 11*zeta)*q^866 + (16*zeta^5 + 
16*zeta^4 - 32*zeta^2 - 32*zeta)*q^868 + (-11*zeta^5 + 11*zeta^2 + 
11*zeta)*q^872 + (4*zeta^5 - 8*zeta^4 + 4*zeta^2 + 4*zeta)*q^874 + (20*zeta^5 - 
20*zeta^4)*q^878 + (12*zeta^5 - 6*zeta^4 - 6*zeta^2 - 6*zeta)*q^880 + O(q^882), 
(-2*zeta^5 + 2*zeta^2 + 2*zeta)*q^2 + (2*zeta^5 - 4*zeta^4 + 2*zeta^2 + 
2*zeta)*q^4 + (2*zeta^5 - 2*zeta^4)*q^8 + (4*zeta^5 - 2*zeta^4 - 2*zeta^2 - 
2*zeta)*q^10 + (4*zeta^4 - 4*zeta^2 - 4*zeta)*q^14 + (-2*zeta^5 - 2*zeta^4 + 
4*zeta^2 + 4*zeta)*q^16 + (6*zeta^5 - 6*zeta^2 - 6*zeta)*q^20 + (-4*zeta^5 + 
8*zeta^4 - 4*zeta^2 - 4*zeta)*q^22 + (-2*zeta^5 + 2*zeta^4)*q^26 + (-8*zeta^5 + 
4*zeta^4 + 4*zeta^2 + 4*zeta)*q^28 + (-10*zeta^4 + 10*zeta^2 + 10*zeta)*q^32 + 
(6*zeta^5 + 6*zeta^4 - 12*zeta^2 - 12*zeta)*q^34 + (-4*zeta^5 + 4*zeta^2 + 
4*zeta)*q^38 + (-2*zeta^5 + 4*zeta^4 - 2*zeta^2 - 2*zeta)*q^40 + (-12*zeta^5 + 
12*zeta^4)*q^44 + (-8*zeta^5 + 4*zeta^4 + 4*zeta^2 + 4*zeta)*q^46 + (-4*zeta^4 +
4*zeta^2 + 4*zeta)*q^50 + (-2*zeta^5 - 2*zeta^4 + 4*zeta^2 + 4*zeta)*q^52 + 
(-4*zeta^5 + 4*zeta^2 + 4*zeta)*q^56 + (2*zeta^5 - 4*zeta^4 + 2*zeta^2 + 
2*zeta)*q^58 + (16*zeta^5 - 16*zeta^4)*q^62 + (12*zeta^5 - 6*zeta^4 - 6*zeta^2 -
6*zeta)*q^64 + (18*zeta^4 - 18*zeta^2 - 18*zeta)*q^68 + (-4*zeta^5 - 4*zeta^4 + 
8*zeta^2 + 8*zeta)*q^70 + (14*zeta^5 - 14*zeta^2 - 14*zeta)*q^74 + (4*zeta^5 - 
8*zeta^4 + 4*zeta^2 + 4*zeta)*q^76 + (6*zeta^5 - 6*zeta^4)*q^80 + (16*zeta^5 - 
8*zeta^4 - 8*zeta^2 - 8*zeta)*q^82 + (4*zeta^4 - 4*zeta^2 - 4*zeta)*q^86 + 
(-4*zeta^5 - 4*zeta^4 + 8*zeta^2 + 8*zeta)*q^88 + (-12*zeta^5 + 12*zeta^2 + 
12*zeta)*q^92 + (8*zeta^5 - 16*zeta^4 + 8*zeta^2 + 8*zeta)*q^94 + (-6*zeta^5 + 
6*zeta^4)*q^98 + (8*zeta^5 - 4*zeta^4 - 4*zeta^2 - 4*zeta)*q^100 + (-2*zeta^4 + 
2*zeta^2 + 2*zeta)*q^104 + (-12*zeta^5 + 12*zeta^2 + 12*zeta)*q^110 + (-4*zeta^5
+ 8*zeta^4 - 4*zeta^2 - 4*zeta)*q^112 + (6*zeta^5 - 6*zeta^4)*q^116 + 
(-32*zeta^5 + 16*zeta^4 + 16*zeta^2 + 16*zeta)*q^118 + (-14*zeta^4 + 14*zeta^2 +
14*zeta)*q^122 + (16*zeta^5 + 16*zeta^4 - 32*zeta^2 - 32*zeta)*q^124 + 
(-2*zeta^5 + 2*zeta^2 + 2*zeta)*q^128 + (2*zeta^5 - 4*zeta^4 + 2*zeta^2 + 
2*zeta)*q^130 + (-20*zeta^5 + 20*zeta^4)*q^134 + (-12*zeta^5 + 6*zeta^4 + 
6*zeta^2 + 6*zeta)*q^136 + (-12*zeta^4 + 12*zeta^2 + 12*zeta)*q^140 + 
(-12*zeta^5 - 12*zeta^4 + 24*zeta^2 + 24*zeta)*q^142 + (14*zeta^5 - 14*zeta^2 - 
14*zeta)*q^146 + (-14*zeta^5 + 28*zeta^4 - 14*zeta^2 - 14*zeta)*q^148 + 
(4*zeta^5 - 4*zeta^4)*q^152 + (16*zeta^5 - 8*zeta^4 - 8*zeta^2 - 8*zeta)*q^154 +
(4*zeta^4 - 4*zeta^2 - 4*zeta)*q^158 + (10*zeta^5 + 10*zeta^4 - 20*zeta^2 - 
20*zeta)*q^160 + (24*zeta^5 - 24*zeta^2 - 24*zeta)*q^164 + (-16*zeta^5 + 
32*zeta^4 - 16*zeta^2 - 16*zeta)*q^166 + (-18*zeta^5 + 18*zeta^4)*q^170 + 
(-8*zeta^5 + 4*zeta^4 + 4*zeta^2 + 4*zeta)*q^172 + (12*zeta^4 - 12*zeta^2 - 
12*zeta)*q^176 + (-6*zeta^5 - 6*zeta^4 + 12*zeta^2 + 12*zeta)*q^178 + (4*zeta^5 
- 4*zeta^2 - 4*zeta)*q^182 + (4*zeta^5 - 8*zeta^4 + 4*zeta^2 + 4*zeta)*q^184 + 
(24*zeta^5 - 24*zeta^4)*q^188 + (8*zeta^5 - 4*zeta^4 - 4*zeta^2 - 4*zeta)*q^190 
+ (4*zeta^4 - 4*zeta^2 - 4*zeta)*q^194 + (-6*zeta^5 - 6*zeta^4 + 12*zeta^2 + 
12*zeta)*q^196 + (4*zeta^5 - 4*zeta^2 - 4*zeta)*q^200 + (8*zeta^5 - 16*zeta^4 + 
8*zeta^2 + 8*zeta)*q^202 + (16*zeta^5 - 16*zeta^4)*q^206 + (-4*zeta^5 + 2*zeta^4
+ 2*zeta^2 + 2*zeta)*q^208 + (-22*zeta^5 + 22*zeta^2 + 22*zeta)*q^218 + 
(12*zeta^5 - 24*zeta^4 + 12*zeta^2 + 12*zeta)*q^220 + (-20*zeta^5 + 
20*zeta^4)*q^224 + (4*zeta^5 - 2*zeta^4 - 2*zeta^2 - 2*zeta)*q^226 + (-12*zeta^4
+ 12*zeta^2 + 12*zeta)*q^230 + (2*zeta^5 + 2*zeta^4 - 4*zeta^2 - 4*zeta)*q^232 +
(-48*zeta^5 + 48*zeta^2 + 48*zeta)*q^236 + (12*zeta^5 - 24*zeta^4 + 12*zeta^2 + 
12*zeta)*q^238 + (2*zeta^5 - 2*zeta^4)*q^242 + (28*zeta^5 - 14*zeta^4 - 
14*zeta^2 - 14*zeta)*q^244 + (16*zeta^4 - 16*zeta^2 - 16*zeta)*q^248 + 
(14*zeta^5 + 14*zeta^4 - 28*zeta^2 - 28*zeta)*q^250 + (-4*zeta^5 + 4*zeta^2 + 
4*zeta)*q^254 + (14*zeta^5 - 28*zeta^4 + 14*zeta^2 + 14*zeta)*q^256 + (6*zeta^5 
- 6*zeta^4)*q^260 + (-8*zeta^5 + 4*zeta^4 + 4*zeta^2 + 4*zeta)*q^262 + (8*zeta^4
- 8*zeta^2 - 8*zeta)*q^266 + (-20*zeta^5 - 20*zeta^4 + 40*zeta^2 + 
40*zeta)*q^268 + (18*zeta^5 - 18*zeta^2 - 18*zeta)*q^272 + (2*zeta^5 - 4*zeta^4 
+ 2*zeta^2 + 2*zeta)*q^274 + (16*zeta^5 - 16*zeta^4)*q^278 + (8*zeta^5 - 
4*zeta^4 - 4*zeta^2 - 4*zeta)*q^280 + (-36*zeta^4 + 36*zeta^2 + 36*zeta)*q^284 +
(4*zeta^5 + 4*zeta^4 - 8*zeta^2 - 8*zeta)*q^286 + (6*zeta^5 - 6*zeta^2 - 
6*zeta)*q^290 + (-14*zeta^5 + 28*zeta^4 - 14*zeta^2 - 14*zeta)*q^292 + 
(-14*zeta^5 + 14*zeta^4)*q^296 + (-20*zeta^5 + 10*zeta^4 + 10*zeta^2 + 
10*zeta)*q^298 + (40*zeta^4 - 40*zeta^2 - 40*zeta)*q^302 + (-4*zeta^5 - 4*zeta^4
+ 8*zeta^2 + 8*zeta)*q^304 + (24*zeta^5 - 24*zeta^2 - 24*zeta)*q^308 + 
(-16*zeta^5 + 32*zeta^4 - 16*zeta^2 - 16*zeta)*q^310 + (34*zeta^5 - 
34*zeta^4)*q^314 + (-8*zeta^5 + 4*zeta^4 + 4*zeta^2 + 4*zeta)*q^316 + (18*zeta^4
- 18*zeta^2 - 18*zeta)*q^320 + (8*zeta^5 + 8*zeta^4 - 16*zeta^2 - 16*zeta)*q^322
+ (32*zeta^5 - 32*zeta^2 - 32*zeta)*q^326 + (-8*zeta^5 + 16*zeta^4 - 8*zeta^2 - 
8*zeta)*q^328 + (-48*zeta^5 + 48*zeta^4)*q^332 + (40*zeta^5 - 20*zeta^4 - 
20*zeta^2 - 20*zeta)*q^334 + (-24*zeta^4 + 24*zeta^2 + 24*zeta)*q^338 + 
(-18*zeta^5 - 18*zeta^4 + 36*zeta^2 + 36*zeta)*q^340 + (-4*zeta^5 + 4*zeta^2 + 
4*zeta)*q^344 + (-22*zeta^5 + 44*zeta^4 - 22*zeta^2 - 22*zeta)*q^346 + 
(-8*zeta^5 + 8*zeta^4)*q^350 + (-40*zeta^5 + 20*zeta^4 + 20*zeta^2 + 
20*zeta)*q^352 + (-18*zeta^4 + 18*zeta^2 + 18*zeta)*q^356 + (24*zeta^5 + 
24*zeta^4 - 48*zeta^2 - 48*zeta)*q^358 + (-4*zeta^5 + 4*zeta^2 + 4*zeta)*q^362 +
(-4*zeta^5 + 8*zeta^4 - 4*zeta^2 - 4*zeta)*q^364 + (-12*zeta^5 + 
12*zeta^4)*q^368 + (-28*zeta^5 + 14*zeta^4 + 14*zeta^2 + 14*zeta)*q^370 + 
(-36*zeta^4 + 36*zeta^2 + 36*zeta)*q^374 + (8*zeta^5 + 8*zeta^4 - 16*zeta^2 - 
16*zeta)*q^376 + (12*zeta^5 - 12*zeta^2 - 12*zeta)*q^380 + (20*zeta^5 - 
40*zeta^4 + 20*zeta^2 + 20*zeta)*q^382 + (-2*zeta^5 + 2*zeta^4)*q^386 + 
(-8*zeta^5 + 4*zeta^4 + 4*zeta^2 + 4*zeta)*q^388 + (-6*zeta^4 + 6*zeta^2 + 
6*zeta)*q^392 + (-6*zeta^5 - 6*zeta^4 + 12*zeta^2 + 12*zeta)*q^394 + (-40*zeta^5
+ 40*zeta^2 + 40*zeta)*q^398 + (4*zeta^5 - 8*zeta^4 + 4*zeta^2 + 4*zeta)*q^400 +
(24*zeta^5 - 24*zeta^4)*q^404 + (-8*zeta^5 + 4*zeta^4 + 4*zeta^2 + 4*zeta)*q^406
+ (24*zeta^4 - 24*zeta^2 - 24*zeta)*q^410 + (16*zeta^5 + 16*zeta^4 - 32*zeta^2 -
32*zeta)*q^412 + (-10*zeta^5 + 10*zeta^2 + 10*zeta)*q^416 + (-8*zeta^5 + 
16*zeta^4 - 8*zeta^2 - 8*zeta)*q^418 + (-20*zeta^5 + 20*zeta^4)*q^422 + 
(-4*zeta^5 - 4*zeta^4 + 8*zeta^2 + 8*zeta)*q^430 + (-32*zeta^5 + 32*zeta^2 + 
32*zeta)*q^434 + (22*zeta^5 - 44*zeta^4 + 22*zeta^2 + 22*zeta)*q^436 + 
(12*zeta^5 - 12*zeta^4)*q^440 + (12*zeta^5 - 6*zeta^4 - 6*zeta^2 - 6*zeta)*q^442
+ (4*zeta^4 - 4*zeta^2 - 4*zeta)*q^446 + (-12*zeta^5 - 12*zeta^4 + 24*zeta^2 + 
24*zeta)*q^448 + (6*zeta^5 - 6*zeta^2 - 6*zeta)*q^452 + (-4*zeta^5 + 8*zeta^4 - 
4*zeta^2 - 4*zeta)*q^454 + (-2*zeta^5 + 2*zeta^4)*q^458 + (24*zeta^5 - 12*zeta^4
- 12*zeta^2 - 12*zeta)*q^460 + (-6*zeta^4 + 6*zeta^2 + 6*zeta)*q^464 + 
(-30*zeta^5 - 30*zeta^4 + 60*zeta^2 + 60*zeta)*q^466 + (24*zeta^5 - 24*zeta^2 - 
24*zeta)*q^470 + (16*zeta^5 - 32*zeta^4 + 16*zeta^2 + 16*zeta)*q^472 + 
(36*zeta^5 - 36*zeta^4)*q^476 + (64*zeta^5 - 32*zeta^4 - 32*zeta^2 - 
32*zeta)*q^478 + (58*zeta^4 - 58*zeta^2 - 58*zeta)*q^482 + (2*zeta^5 + 2*zeta^4 
- 4*zeta^2 - 4*zeta)*q^484 + (14*zeta^5 - 14*zeta^2 - 14*zeta)*q^488 + (6*zeta^5
- 12*zeta^4 + 6*zeta^2 + 6*zeta)*q^490 + (-4*zeta^5 + 4*zeta^4)*q^494 + 
(32*zeta^5 - 16*zeta^4 - 16*zeta^2 - 16*zeta)*q^496 + (42*zeta^4 - 42*zeta^2 - 
42*zeta)*q^500 + (12*zeta^5 + 12*zeta^4 - 24*zeta^2 - 24*zeta)*q^502 + 
(24*zeta^5 - 24*zeta^2 - 24*zeta)*q^506 + (4*zeta^5 - 8*zeta^4 + 4*zeta^2 + 
4*zeta)*q^508 + (38*zeta^5 - 38*zeta^4)*q^512 + (-20*zeta^5 + 10*zeta^4 + 
10*zeta^2 + 10*zeta)*q^514 + (-28*zeta^4 + 28*zeta^2 + 28*zeta)*q^518 + 
(2*zeta^5 + 2*zeta^4 - 4*zeta^2 - 4*zeta)*q^520 + (-12*zeta^5 + 12*zeta^2 + 
12*zeta)*q^524 + (8*zeta^5 - 16*zeta^4 + 8*zeta^2 + 8*zeta)*q^526 + (-16*zeta^5 
+ 8*zeta^4 + 8*zeta^2 + 8*zeta)*q^532 + (-20*zeta^4 + 20*zeta^2 + 20*zeta)*q^536
+ (-18*zeta^5 - 18*zeta^4 + 36*zeta^2 + 36*zeta)*q^538 + (-4*zeta^5 + 4*zeta^2 +
4*zeta)*q^542 + (-30*zeta^5 + 60*zeta^4 - 30*zeta^2 - 30*zeta)*q^544 + (6*zeta^5
- 6*zeta^4)*q^548 + (-16*zeta^5 + 8*zeta^4 + 8*zeta^2 + 8*zeta)*q^550 + 
(4*zeta^4 - 4*zeta^2 - 4*zeta)*q^554 + (16*zeta^5 + 16*zeta^4 - 32*zeta^2 - 
32*zeta)*q^556 + (-12*zeta^5 + 12*zeta^2 + 12*zeta)*q^560 + (14*zeta^5 - 
28*zeta^4 + 14*zeta^2 + 14*zeta)*q^562 + (-56*zeta^5 + 56*zeta^4)*q^566 + 
(24*zeta^5 - 12*zeta^4 - 12*zeta^2 - 12*zeta)*q^568 + (12*zeta^4 - 12*zeta^2 - 
12*zeta)*q^572 + (-16*zeta^5 - 16*zeta^4 + 32*zeta^2 + 32*zeta)*q^574 + 
(-20*zeta^5 + 20*zeta^2 + 20*zeta)*q^578 + (-6*zeta^5 + 12*zeta^4 - 6*zeta^2 - 
6*zeta)*q^580 + (-14*zeta^5 + 14*zeta^4)*q^584 + (-44*zeta^5 + 22*zeta^4 + 
22*zeta^2 + 22*zeta)*q^586 + (-48*zeta^4 + 48*zeta^2 + 48*zeta)*q^590 + 
(14*zeta^5 + 14*zeta^4 - 28*zeta^2 - 28*zeta)*q^592 + (-30*zeta^5 + 30*zeta^2 + 
30*zeta)*q^596 + (-4*zeta^5 + 8*zeta^4 - 4*zeta^2 - 4*zeta)*q^598 + (8*zeta^5 - 
8*zeta^4)*q^602 + (-80*zeta^5 + 40*zeta^4 + 40*zeta^2 + 40*zeta)*q^604 + 
(-20*zeta^4 + 20*zeta^2 + 20*zeta)*q^608 + (14*zeta^5 + 14*zeta^4 - 28*zeta^2 - 
28*zeta)*q^610 + (32*zeta^5 - 32*zeta^2 - 32*zeta)*q^614 + (-8*zeta^5 + 
16*zeta^4 - 8*zeta^2 - 8*zeta)*q^616 + (-48*zeta^5 + 48*zeta^4)*q^620 + 
(16*zeta^5 - 8*zeta^4 - 8*zeta^2 - 8*zeta)*q^622 + (-50*zeta^4 + 50*zeta^2 + 
50*zeta)*q^626 + (34*zeta^5 + 34*zeta^4 - 68*zeta^2 - 68*zeta)*q^628 + 
(-4*zeta^5 + 4*zeta^2 + 4*zeta)*q^632 + (-10*zeta^5 + 20*zeta^4 - 10*zeta^2 - 
10*zeta)*q^634 + (-12*zeta^5 + 12*zeta^4)*q^638 + (4*zeta^5 - 2*zeta^4 - 
2*zeta^2 - 2*zeta)*q^640 + (24*zeta^4 - 24*zeta^2 - 24*zeta)*q^644 + (12*zeta^5 
+ 12*zeta^4 - 24*zeta^2 - 24*zeta)*q^646 + (-4*zeta^5 + 4*zeta^2 + 4*zeta)*q^650
+ (-32*zeta^5 + 64*zeta^4 - 32*zeta^2 - 32*zeta)*q^652 + (24*zeta^5 - 
24*zeta^4)*q^656 + (-32*zeta^5 + 16*zeta^4 + 16*zeta^2 + 16*zeta)*q^658 + 
(4*zeta^4 - 4*zeta^2 - 4*zeta)*q^662 + (-16*zeta^5 - 16*zeta^4 + 32*zeta^2 + 
32*zeta)*q^664 + (60*zeta^5 - 60*zeta^2 - 60*zeta)*q^668 + (20*zeta^5 - 
40*zeta^4 + 20*zeta^2 + 20*zeta)*q^670 + (52*zeta^5 - 52*zeta^4)*q^674 + 
(48*zeta^5 - 24*zeta^4 - 24*zeta^2 - 24*zeta)*q^676 + (-18*zeta^4 + 18*zeta^2 + 
18*zeta)*q^680 + (-32*zeta^5 - 32*zeta^4 + 64*zeta^2 + 64*zeta)*q^682 + 
(40*zeta^5 - 40*zeta^2 - 40*zeta)*q^686 + (-4*zeta^5 + 8*zeta^4 - 4*zeta^2 - 
4*zeta)*q^688 + (-66*zeta^5 + 66*zeta^4)*q^692 + (-8*zeta^5 + 4*zeta^4 + 
4*zeta^2 + 4*zeta)*q^694 + (4*zeta^4 - 4*zeta^2 - 4*zeta)*q^698 + (-8*zeta^5 - 
8*zeta^4 + 16*zeta^2 + 16*zeta)*q^700 + (-36*zeta^5 + 36*zeta^2 + 36*zeta)*q^704
+ (-16*zeta^5 + 32*zeta^4 - 16*zeta^2 - 16*zeta)*q^706 + (36*zeta^5 - 
36*zeta^4)*q^710 + (12*zeta^5 - 6*zeta^4 - 6*zeta^2 - 6*zeta)*q^712 + (72*zeta^4
- 72*zeta^2 - 72*zeta)*q^716 + (12*zeta^5 + 12*zeta^4 - 24*zeta^2 - 
24*zeta)*q^718 + (30*zeta^5 - 30*zeta^2 - 30*zeta)*q^722 + (4*zeta^5 - 8*zeta^4 
+ 4*zeta^2 + 4*zeta)*q^724 + (-4*zeta^5 + 4*zeta^4)*q^728 + (-28*zeta^5 + 
14*zeta^4 + 14*zeta^2 + 14*zeta)*q^730 + (40*zeta^4 - 40*zeta^2 - 40*zeta)*q^734
+ (-20*zeta^5 - 20*zeta^4 + 40*zeta^2 + 40*zeta)*q^736 + (-42*zeta^5 + 42*zeta^2
+ 42*zeta)*q^740 + (-20*zeta^5 + 20*zeta^4)*q^746 + (72*zeta^5 - 36*zeta^4 - 
36*zeta^2 - 36*zeta)*q^748 + (-24*zeta^4 + 24*zeta^2 + 24*zeta)*q^752 + 
(-2*zeta^5 - 2*zeta^4 + 4*zeta^2 + 4*zeta)*q^754 + (32*zeta^5 - 32*zeta^2 - 
32*zeta)*q^758 + (-4*zeta^5 + 8*zeta^4 - 4*zeta^2 - 4*zeta)*q^760 + (60*zeta^5 -
60*zeta^4)*q^764 + (40*zeta^5 - 20*zeta^4 - 20*zeta^2 - 20*zeta)*q^766 + 
(24*zeta^4 - 24*zeta^2 - 24*zeta)*q^770 + (-2*zeta^5 - 2*zeta^4 + 4*zeta^2 + 
4*zeta)*q^772 + (-4*zeta^5 + 4*zeta^2 + 4*zeta)*q^776 + (32*zeta^5 - 64*zeta^4 +
32*zeta^2 + 32*zeta)*q^778 + (36*zeta^5 - 36*zeta^4)*q^782 + (-12*zeta^5 + 
6*zeta^4 + 6*zeta^2 + 6*zeta)*q^784 + (-18*zeta^4 + 18*zeta^2 + 18*zeta)*q^788 +
(-4*zeta^5 - 4*zeta^4 + 8*zeta^2 + 8*zeta)*q^790 + (-58*zeta^5 + 58*zeta^2 + 
58*zeta)*q^794 + (40*zeta^5 - 80*zeta^4 + 40*zeta^2 + 40*zeta)*q^796 + 
(20*zeta^5 - 20*zeta^4)*q^800 + (28*zeta^5 - 14*zeta^4 - 14*zeta^2 - 
14*zeta)*q^802 + (-16*zeta^4 + 16*zeta^2 + 16*zeta)*q^806 + (8*zeta^5 + 8*zeta^4
- 16*zeta^2 - 16*zeta)*q^808 + (-12*zeta^5 + 12*zeta^2 + 12*zeta)*q^812 + 
(28*zeta^5 - 56*zeta^4 + 28*zeta^2 + 28*zeta)*q^814 + (-38*zeta^5 + 
38*zeta^4)*q^818 + (-48*zeta^5 + 24*zeta^4 + 24*zeta^2 + 24*zeta)*q^820 + 
(16*zeta^4 - 16*zeta^2 - 16*zeta)*q^824 + (32*zeta^5 + 32*zeta^4 - 64*zeta^2 - 
64*zeta)*q^826 + (-48*zeta^5 + 48*zeta^2 + 48*zeta)*q^830 + (6*zeta^5 - 
12*zeta^4 + 6*zeta^2 + 6*zeta)*q^832 + (-24*zeta^5 + 24*zeta^4)*q^836 + 
(16*zeta^5 - 8*zeta^4 - 8*zeta^2 - 8*zeta)*q^838 + (-50*zeta^4 + 50*zeta^2 + 
50*zeta)*q^842 + (-20*zeta^5 - 20*zeta^4 + 40*zeta^2 + 40*zeta)*q^844 + 
(-12*zeta^5 + 24*zeta^4 - 12*zeta^2 - 12*zeta)*q^850 + (-28*zeta^5 + 
28*zeta^4)*q^854 + (-12*zeta^4 + 12*zeta^2 + 12*zeta)*q^860 + (-22*zeta^5 + 
22*zeta^2 + 22*zeta)*q^866 + (32*zeta^5 - 64*zeta^4 + 32*zeta^2 + 32*zeta)*q^868
+ (22*zeta^5 - 22*zeta^4)*q^872 + (-16*zeta^5 + 8*zeta^4 + 8*zeta^2 + 
8*zeta)*q^874 + (40*zeta^4 - 40*zeta^2 - 40*zeta)*q^878 + (-12*zeta^5 - 
12*zeta^4 + 24*zeta^2 + 24*zeta)*q^880 + O(q^882), (-4*zeta^3 + 2)*q + 
(12*zeta^3 - 6)*q^5 + (4*zeta^3 - 2)*q^7 + (12*zeta^3 - 6)*q^11 + (4*zeta^3 - 
2)*q^13 + (24*zeta^3 - 12)*q^17 + (16*zeta^3 - 8)*q^19 + (-12*zeta^3 + 6)*q^23 +
(-16*zeta^3 + 8)*q^25 + (12*zeta^3 - 6)*q^29 + (-20*zeta^3 + 10)*q^31 + 
(-12*zeta^3 + 6)*q^35 + (-8*zeta^3 + 4)*q^37 + (12*zeta^3 - 6)*q^41 + (4*zeta^3 
- 2)*q^43 + (-36*zeta^3 + 18)*q^47 + (24*zeta^3 - 12)*q^49 + (-24*zeta^3 + 
12)*q^53 + (-36*zeta^3 + 18)*q^55 + (-12*zeta^3 + 6)*q^59 + (52*zeta^3 - 
26)*q^61 + (-12*zeta^3 + 6)*q^65 + (28*zeta^3 - 14)*q^67 + (-48*zeta^3 + 
24)*q^71 + (40*zeta^3 - 20)*q^73 + (-12*zeta^3 + 6)*q^77 + (-44*zeta^3 + 
22)*q^79 + (-36*zeta^3 + 18)*q^83 + (-72*zeta^3 + 36)*q^85 + (24*zeta^3 - 
12)*q^89 + (-4*zeta^3 + 2)*q^91 + (-48*zeta^3 + 24)*q^95 + (-44*zeta^3 + 
22)*q^97 + (60*zeta^3 - 30)*q^101 + (28*zeta^3 - 14)*q^103 + (48*zeta^3 - 
24)*q^107 + (-8*zeta^3 + 4)*q^109 + (-36*zeta^3 + 18)*q^113 + (36*zeta^3 - 
18)*q^115 + (-24*zeta^3 + 12)*q^119 + (8*zeta^3 - 4)*q^121 + (-12*zeta^3 + 
6)*q^125 + (64*zeta^3 - 32)*q^127 + (84*zeta^3 - 42)*q^131 + (-16*zeta^3 + 
8)*q^133 + (12*zeta^3 - 6)*q^137 + (-20*zeta^3 + 10)*q^139 + (-12*zeta^3 + 
6)*q^143 + (-36*zeta^3 + 18)*q^145 + (60*zeta^3 - 30)*q^149 + (52*zeta^3 - 
26)*q^151 + (60*zeta^3 - 30)*q^155 + (52*zeta^3 - 26)*q^157 + (12*zeta^3 - 
6)*q^161 + (-80*zeta^3 + 40)*q^163 + (36*zeta^3 - 18)*q^167 + (48*zeta^3 - 
24)*q^169 + (-36*zeta^3 + 18)*q^173 + (16*zeta^3 - 8)*q^175 + (48*zeta^3 - 
24)*q^179 + (-8*zeta^3 + 4)*q^181 + (24*zeta^3 - 12)*q^185 + (-72*zeta^3 + 
36)*q^187 + (60*zeta^3 - 30)*q^191 + (-44*zeta^3 + 22)*q^193 + (24*zeta^3 - 
12)*q^197 + (16*zeta^3 - 8)*q^199 + (-12*zeta^3 + 6)*q^203 + (-36*zeta^3 + 
18)*q^205 + (-48*zeta^3 + 24)*q^209 + (-68*zeta^3 + 34)*q^211 + (-12*zeta^3 + 
6)*q^215 + (20*zeta^3 - 10)*q^217 + (-24*zeta^3 + 12)*q^221 + (4*zeta^3 - 
2)*q^223 + (108*zeta^3 - 54)*q^227 + (52*zeta^3 - 26)*q^229 + (-24*zeta^3 + 
12)*q^233 + (108*zeta^3 - 54)*q^235 + (-108*zeta^3 + 54)*q^239 + (4*zeta^3 - 
2)*q^241 + (-72*zeta^3 + 36)*q^245 + (-16*zeta^3 + 8)*q^247 + (48*zeta^3 - 
24)*q^251 + (36*zeta^3 - 18)*q^253 + (-36*zeta^3 + 18)*q^257 + (8*zeta^3 - 
4)*q^259 + (-84*zeta^3 + 42)*q^263 + (72*zeta^3 - 36)*q^265 + (-24*zeta^3 + 
12)*q^269 + (-32*zeta^3 + 16)*q^271 + (48*zeta^3 - 24)*q^275 + (4*zeta^3 - 
2)*q^277 + (12*zeta^3 - 6)*q^281 + (-20*zeta^3 + 10)*q^283 + (-12*zeta^3 + 
6)*q^287 + (-76*zeta^3 + 38)*q^289 + (-84*zeta^3 + 42)*q^293 + (36*zeta^3 - 
18)*q^295 + (12*zeta^3 - 6)*q^299 + (-4*zeta^3 + 2)*q^301 + (-156*zeta^3 + 
78)*q^305 + (-80*zeta^3 + 40)*q^307 + (84*zeta^3 - 42)*q^311 + (4*zeta^3 - 
2)*q^313 + (-84*zeta^3 + 42)*q^317 + (-36*zeta^3 + 18)*q^319 + (-96*zeta^3 + 
48)*q^323 + (16*zeta^3 - 8)*q^325 + (36*zeta^3 - 18)*q^329 + (-44*zeta^3 + 
22)*q^331 + (-84*zeta^3 + 42)*q^335 + (-92*zeta^3 + 46)*q^337 + (60*zeta^3 - 
30)*q^341 + (-52*zeta^3 + 26)*q^343 + (36*zeta^3 - 18)*q^347 + (4*zeta^3 - 
2)*q^349 + (12*zeta^3 - 6)*q^353 + (144*zeta^3 - 72)*q^355 + (12*zeta^3 - 
6)*q^361 + (-120*zeta^3 + 60)*q^365 + (52*zeta^3 - 26)*q^367 + (24*zeta^3 - 
12)*q^371 + (4*zeta^3 - 2)*q^373 + (-12*zeta^3 + 6)*q^377 + (64*zeta^3 - 
32)*q^379 + (-60*zeta^3 + 30)*q^383 + (36*zeta^3 - 18)*q^385 + (60*zeta^3 - 
30)*q^389 + (72*zeta^3 - 36)*q^391 + (132*zeta^3 - 66)*q^395 + (-8*zeta^3 + 
4)*q^397 + (12*zeta^3 - 6)*q^401 + (20*zeta^3 - 10)*q^403 + (24*zeta^3 - 
12)*q^407 + (-92*zeta^3 + 46)*q^409 + (12*zeta^3 - 6)*q^413 + (108*zeta^3 - 
54)*q^415 + (36*zeta^3 - 18)*q^419 + (-140*zeta^3 + 70)*q^421 + (96*zeta^3 - 
48)*q^425 + (-52*zeta^3 + 26)*q^427 + (96*zeta^3 - 48)*q^431 + (136*zeta^3 - 
68)*q^433 + (48*zeta^3 - 24)*q^437 + (-140*zeta^3 + 70)*q^439 + (-36*zeta^3 + 
18)*q^443 + (-72*zeta^3 + 36)*q^445 + (-72*zeta^3 + 36)*q^449 + (-36*zeta^3 + 
18)*q^451 + (12*zeta^3 - 6)*q^455 + (148*zeta^3 - 74)*q^457 + (12*zeta^3 - 
6)*q^461 + (76*zeta^3 - 38)*q^463 + (48*zeta^3 - 24)*q^467 + (-28*zeta^3 + 
14)*q^469 + (-12*zeta^3 + 6)*q^473 + (64*zeta^3 - 32)*q^475 + (108*zeta^3 - 
54)*q^479 + (8*zeta^3 - 4)*q^481 + (132*zeta^3 - 66)*q^485 + (-128*zeta^3 + 
64)*q^487 + (-12*zeta^3 + 6)*q^491 + (-72*zeta^3 + 36)*q^493 + (48*zeta^3 - 
24)*q^497 + (-20*zeta^3 + 10)*q^499 + (-144*zeta^3 + 72)*q^503 + (-180*zeta^3 + 
90)*q^505 + (156*zeta^3 - 78)*q^509 + (-40*zeta^3 + 20)*q^511 + (-84*zeta^3 + 
42)*q^515 + (108*zeta^3 - 54)*q^517 + (168*zeta^3 - 84)*q^521 + (-32*zeta^3 + 
16)*q^523 + (120*zeta^3 - 60)*q^527 + (56*zeta^3 - 28)*q^529 + (-12*zeta^3 + 
6)*q^533 + (-144*zeta^3 + 72)*q^535 + (-72*zeta^3 + 36)*q^539 + (136*zeta^3 - 
68)*q^541 + (24*zeta^3 - 12)*q^545 + (52*zeta^3 - 26)*q^547 + (-48*zeta^3 + 
24)*q^551 + (44*zeta^3 - 22)*q^553 + (-120*zeta^3 + 60)*q^557 + (-4*zeta^3 + 
2)*q^559 + (36*zeta^3 - 18)*q^563 + (108*zeta^3 - 54)*q^565 + (60*zeta^3 - 
30)*q^569 + (124*zeta^3 - 62)*q^571 + (-48*zeta^3 + 24)*q^575 + (40*zeta^3 - 
20)*q^577 + (36*zeta^3 - 18)*q^581 + (72*zeta^3 - 36)*q^583 + (60*zeta^3 - 
30)*q^587 + (80*zeta^3 - 40)*q^589 + (24*zeta^3 - 12)*q^593 + (72*zeta^3 - 
36)*q^595 + (-156*zeta^3 + 78)*q^599 + (-140*zeta^3 + 70)*q^601 + (-24*zeta^3 + 
12)*q^605 + (-164*zeta^3 + 82)*q^607 + (36*zeta^3 - 18)*q^611 + (-104*zeta^3 + 
52)*q^613 + (12*zeta^3 - 6)*q^617 + (52*zeta^3 - 26)*q^619 + (-24*zeta^3 + 
12)*q^623 + (116*zeta^3 - 58)*q^625 + (48*zeta^3 - 24)*q^629 + (64*zeta^3 - 
32)*q^631 + (-192*zeta^3 + 96)*q^635 + (-24*zeta^3 + 12)*q^637 + (-132*zeta^3 + 
66)*q^641 + (-164*zeta^3 + 82)*q^643 + (36*zeta^3 - 18)*q^649 + (-84*zeta^3 + 
42)*q^653 + (-252*zeta^3 + 126)*q^655 + (-84*zeta^3 + 42)*q^659 + (-44*zeta^3 + 
22)*q^661 + (48*zeta^3 - 24)*q^665 + (36*zeta^3 - 18)*q^667 + (-156*zeta^3 + 
78)*q^671 + (-44*zeta^3 + 22)*q^673 + (60*zeta^3 - 30)*q^677 + (44*zeta^3 - 
22)*q^679 + (-144*zeta^3 + 72)*q^683 + (-36*zeta^3 + 18)*q^685 + (24*zeta^3 - 
12)*q^689 + (4*zeta^3 - 2)*q^691 + (60*zeta^3 - 30)*q^695 + (-72*zeta^3 + 
36)*q^697 + (-24*zeta^3 + 12)*q^701 + (32*zeta^3 - 16)*q^703 + (-60*zeta^3 + 
30)*q^707 + (100*zeta^3 - 50)*q^709 + (-60*zeta^3 + 30)*q^713 + (36*zeta^3 - 
18)*q^715 + (-28*zeta^3 + 14)*q^721 + (48*zeta^3 - 24)*q^725 + (148*zeta^3 - 
74)*q^727 + (-24*zeta^3 + 12)*q^731 + (-92*zeta^3 + 46)*q^733 + (-84*zeta^3 + 
42)*q^737 + (64*zeta^3 - 32)*q^739 + (36*zeta^3 - 18)*q^743 + (-180*zeta^3 + 
90)*q^745 + (-48*zeta^3 + 24)*q^749 + (124*zeta^3 - 62)*q^751 + (-156*zeta^3 + 
78)*q^755 + (40*zeta^3 - 20)*q^757 + (108*zeta^3 - 54)*q^761 + (8*zeta^3 - 
4)*q^763 + (12*zeta^3 - 6)*q^767 + (4*zeta^3 - 2)*q^769 + (72*zeta^3 - 36)*q^773
+ (-80*zeta^3 + 40)*q^775 + (-48*zeta^3 + 24)*q^779 + (144*zeta^3 - 72)*q^781 + 
(-156*zeta^3 + 78)*q^785 + (172*zeta^3 - 86)*q^787 + (36*zeta^3 - 18)*q^791 + 
(-52*zeta^3 + 26)*q^793 + (-36*zeta^3 + 18)*q^797 + (216*zeta^3 - 108)*q^799 + 
(-120*zeta^3 + 60)*q^803 + (-36*zeta^3 + 18)*q^805 + (24*zeta^3 - 12)*q^809 + 
(-80*zeta^3 + 40)*q^811 + (240*zeta^3 - 120)*q^815 + (-16*zeta^3 + 8)*q^817 + 
(204*zeta^3 - 102)*q^821 + (76*zeta^3 - 38)*q^823 + (-48*zeta^3 + 24)*q^827 + 
(-200*zeta^3 + 100)*q^829 + (-144*zeta^3 + 72)*q^833 + (-108*zeta^3 + 54)*q^835 
+ (-36*zeta^3 + 18)*q^839 + (80*zeta^3 - 40)*q^841 + (-144*zeta^3 + 72)*q^845 + 
(-8*zeta^3 + 4)*q^847 + (-24*zeta^3 + 12)*q^851 + (52*zeta^3 - 26)*q^853 + 
(108*zeta^3 - 54)*q^857 + (-164*zeta^3 + 82)*q^859 + (96*zeta^3 - 48)*q^863 + 
(108*zeta^3 - 54)*q^865 + (132*zeta^3 - 66)*q^869 + (-28*zeta^3 + 14)*q^871 + 
(12*zeta^3 - 6)*q^875 + (-92*zeta^3 + 46)*q^877 + (120*zeta^3 - 60)*q^881 + 
O(q^882), (2*zeta^5 - 2*zeta^2 + 2*zeta)*q + (6*zeta^5 + 6*zeta^4)*q^5 + 
(4*zeta^4 + 4*zeta^2 - 4*zeta)*q^7 + (12*zeta^4 + 12*zeta^2 - 12*zeta)*q^11 + 
(-10*zeta^5 - 10*zeta^4)*q^13 + (6*zeta^5 - 6*zeta^2 + 6*zeta)*q^17 + (4*zeta^5 
- 4*zeta^2 + 4*zeta)*q^19 + (12*zeta^5 + 12*zeta^4)*q^23 + (8*zeta^4 + 8*zeta^2 
- 8*zeta)*q^25 + (-6*zeta^4 - 6*zeta^2 + 6*zeta)*q^29 + (8*zeta^5 + 
8*zeta^4)*q^31 + (-12*zeta^5 + 12*zeta^2 - 12*zeta)*q^35 + (10*zeta^5 - 
10*zeta^2 + 10*zeta)*q^37 + (-12*zeta^5 - 12*zeta^4)*q^41 + (-20*zeta^4 - 
20*zeta^2 + 20*zeta)*q^43 + (6*zeta^5 + 6*zeta^4)*q^49 + (12*zeta^5 - 12*zeta^2 
+ 12*zeta)*q^53 + (-36*zeta^5 + 36*zeta^2 - 36*zeta)*q^55 + (-24*zeta^5 - 
24*zeta^4)*q^59 + (10*zeta^4 + 10*zeta^2 - 10*zeta)*q^61 + (-30*zeta^4 - 
30*zeta^2 + 30*zeta)*q^65 + (-4*zeta^5 - 4*zeta^4)*q^67 + (-12*zeta^5 + 
12*zeta^2 - 12*zeta)*q^71 + (-2*zeta^5 + 2*zeta^2 - 2*zeta)*q^73 + (-24*zeta^5 -
24*zeta^4)*q^77 + (-20*zeta^4 - 20*zeta^2 + 20*zeta)*q^79 + (18*zeta^5 + 
18*zeta^4)*q^85 + (6*zeta^5 - 6*zeta^2 + 6*zeta)*q^89 + (20*zeta^5 - 20*zeta^2 +
20*zeta)*q^91 + (12*zeta^5 + 12*zeta^4)*q^95 + (-20*zeta^4 - 20*zeta^2 + 
20*zeta)*q^97 + (-12*zeta^4 - 12*zeta^2 + 12*zeta)*q^101 + (32*zeta^5 + 
32*zeta^4)*q^103 + (-24*zeta^5 + 24*zeta^2 - 24*zeta)*q^107 + (-14*zeta^5 + 
14*zeta^2 - 14*zeta)*q^109 + (18*zeta^5 + 18*zeta^4)*q^113 + (36*zeta^4 + 
36*zeta^2 - 36*zeta)*q^115 + (12*zeta^4 + 12*zeta^2 - 12*zeta)*q^119 + 
(-50*zeta^5 - 50*zeta^4)*q^121 + (6*zeta^5 - 6*zeta^2 + 6*zeta)*q^125 + 
(4*zeta^5 - 4*zeta^2 + 4*zeta)*q^127 + (-12*zeta^5 - 12*zeta^4)*q^131 + 
(8*zeta^4 + 8*zeta^2 - 8*zeta)*q^133 + (30*zeta^4 + 30*zeta^2 - 30*zeta)*q^137 +
(-16*zeta^5 - 16*zeta^4)*q^139 + (60*zeta^5 - 60*zeta^2 + 60*zeta)*q^143 + 
(18*zeta^5 - 18*zeta^2 + 18*zeta)*q^145 + (30*zeta^5 + 30*zeta^4)*q^149 + 
(-8*zeta^4 - 8*zeta^2 + 8*zeta)*q^151 + (24*zeta^4 + 24*zeta^2 - 24*zeta)*q^155 
+ (-10*zeta^5 - 10*zeta^4)*q^157 + (-24*zeta^5 + 24*zeta^2 - 24*zeta)*q^161 + 
(-8*zeta^5 + 8*zeta^2 - 8*zeta)*q^163 + (36*zeta^5 + 36*zeta^4)*q^167 + 
(24*zeta^4 + 24*zeta^2 - 24*zeta)*q^169 + (18*zeta^4 + 18*zeta^2 - 
18*zeta)*q^173 + (-16*zeta^5 - 16*zeta^4)*q^175 + (-24*zeta^5 + 24*zeta^2 - 
24*zeta)*q^179 + (28*zeta^5 - 28*zeta^2 + 28*zeta)*q^181 + (30*zeta^5 + 
30*zeta^4)*q^185 + (36*zeta^4 + 36*zeta^2 - 36*zeta)*q^187 + (-12*zeta^4 - 
12*zeta^2 + 12*zeta)*q^191 + (50*zeta^5 + 50*zeta^4)*q^193 + (-30*zeta^5 + 
30*zeta^2 - 30*zeta)*q^197 + (40*zeta^5 - 40*zeta^2 + 40*zeta)*q^199 + 
(12*zeta^5 + 12*zeta^4)*q^203 + (-36*zeta^4 - 36*zeta^2 + 36*zeta)*q^205 + 
(24*zeta^4 + 24*zeta^2 - 24*zeta)*q^209 + (-28*zeta^5 - 28*zeta^4)*q^211 + 
(60*zeta^5 - 60*zeta^2 + 60*zeta)*q^215 + (-16*zeta^5 + 16*zeta^2 - 
16*zeta)*q^217 + (-30*zeta^5 - 30*zeta^4)*q^221 + (-20*zeta^4 - 20*zeta^2 + 
20*zeta)*q^223 + (-36*zeta^4 - 36*zeta^2 + 36*zeta)*q^227 + (-10*zeta^5 - 
10*zeta^4)*q^229 + (30*zeta^5 - 30*zeta^2 + 30*zeta)*q^233 + (22*zeta^4 + 
22*zeta^2 - 22*zeta)*q^241 + (18*zeta^4 + 18*zeta^2 - 18*zeta)*q^245 + 
(-20*zeta^5 - 20*zeta^4)*q^247 + (-60*zeta^5 + 60*zeta^2 - 60*zeta)*q^251 + 
(-72*zeta^5 + 72*zeta^2 - 72*zeta)*q^253 + (-54*zeta^5 - 54*zeta^4)*q^257 + 
(20*zeta^4 + 20*zeta^2 - 20*zeta)*q^259 + (-48*zeta^4 - 48*zeta^2 + 
48*zeta)*q^263 + (36*zeta^5 + 36*zeta^4)*q^265 + (-6*zeta^5 + 6*zeta^2 - 
6*zeta)*q^269 + (-20*zeta^5 + 20*zeta^2 - 20*zeta)*q^271 + (-48*zeta^5 - 
48*zeta^4)*q^275 + (-20*zeta^4 - 20*zeta^2 + 20*zeta)*q^277 + (30*zeta^4 + 
30*zeta^2 - 30*zeta)*q^281 + (8*zeta^5 + 8*zeta^4)*q^283 + (24*zeta^5 - 
24*zeta^2 + 24*zeta)*q^287 + (-16*zeta^5 + 16*zeta^2 - 16*zeta)*q^289 + 
(30*zeta^5 + 30*zeta^4)*q^293 + (-72*zeta^4 - 72*zeta^2 + 72*zeta)*q^295 + 
(-60*zeta^4 - 60*zeta^2 + 60*zeta)*q^299 + (40*zeta^5 + 40*zeta^4)*q^301 + 
(-30*zeta^5 + 30*zeta^2 - 30*zeta)*q^305 + (40*zeta^5 - 40*zeta^2 + 
40*zeta)*q^307 + (-48*zeta^5 - 48*zeta^4)*q^311 + (-50*zeta^4 - 50*zeta^2 + 
50*zeta)*q^313 + (-30*zeta^4 - 30*zeta^2 + 30*zeta)*q^317 + (36*zeta^5 + 
36*zeta^4)*q^319 + (12*zeta^5 - 12*zeta^2 + 12*zeta)*q^323 + (40*zeta^5 - 
40*zeta^2 + 40*zeta)*q^325 + (52*zeta^4 + 52*zeta^2 - 52*zeta)*q^331 + 
(-12*zeta^4 - 12*zeta^2 + 12*zeta)*q^335 + (20*zeta^5 + 20*zeta^4)*q^337 + 
(-48*zeta^5 + 48*zeta^2 - 48*zeta)*q^341 + (-40*zeta^5 + 40*zeta^2 - 
40*zeta)*q^343 + (-36*zeta^5 - 36*zeta^4)*q^347 + (4*zeta^4 + 4*zeta^2 - 
4*zeta)*q^349 + (-60*zeta^4 - 60*zeta^2 + 60*zeta)*q^353 + (-36*zeta^5 - 
36*zeta^4)*q^355 + (36*zeta^5 - 36*zeta^2 + 36*zeta)*q^359 + (-30*zeta^5 + 
30*zeta^2 - 30*zeta)*q^361 + (-6*zeta^5 - 6*zeta^4)*q^365 + (64*zeta^4 + 
64*zeta^2 - 64*zeta)*q^367 + (24*zeta^4 + 24*zeta^2 - 24*zeta)*q^371 + 
(-28*zeta^5 - 28*zeta^4)*q^373 + (-30*zeta^5 + 30*zeta^2 - 30*zeta)*q^377 + 
(-8*zeta^5 + 8*zeta^2 - 8*zeta)*q^379 + (60*zeta^5 + 60*zeta^4)*q^383 + 
(-72*zeta^4 - 72*zeta^2 + 72*zeta)*q^385 + (60*zeta^4 + 60*zeta^2 - 
60*zeta)*q^389 + (36*zeta^5 + 36*zeta^4)*q^391 + (60*zeta^5 - 60*zeta^2 + 
60*zeta)*q^395 + (-14*zeta^5 + 14*zeta^2 - 14*zeta)*q^397 + (-30*zeta^5 - 
30*zeta^4)*q^401 + (-40*zeta^4 - 40*zeta^2 + 40*zeta)*q^403 + (60*zeta^4 + 
60*zeta^2 - 60*zeta)*q^407 + (-70*zeta^5 - 70*zeta^4)*q^409 + (48*zeta^5 - 
48*zeta^2 + 48*zeta)*q^413 + (58*zeta^4 + 58*zeta^2 - 58*zeta)*q^421 + 
(24*zeta^4 + 24*zeta^2 - 24*zeta)*q^425 + (-20*zeta^5 - 20*zeta^4)*q^427 + 
(-48*zeta^5 + 48*zeta^2 - 48*zeta)*q^431 + (22*zeta^5 - 22*zeta^2 + 
22*zeta)*q^433 + (24*zeta^5 + 24*zeta^4)*q^437 + (16*zeta^4 + 16*zeta^2 - 
16*zeta)*q^439 + (18*zeta^5 + 18*zeta^4)*q^445 + (-36*zeta^5 + 36*zeta^2 - 
36*zeta)*q^449 + (72*zeta^5 - 72*zeta^2 + 72*zeta)*q^451 + (60*zeta^5 + 
60*zeta^4)*q^455 + (70*zeta^4 + 70*zeta^2 - 70*zeta)*q^457 + (12*zeta^4 + 
12*zeta^2 - 12*zeta)*q^461 + (8*zeta^5 + 8*zeta^4)*q^463 + (-24*zeta^5 + 
24*zeta^2 - 24*zeta)*q^467 + (8*zeta^5 - 8*zeta^2 + 8*zeta)*q^469 + (120*zeta^5 
+ 120*zeta^4)*q^473 + (16*zeta^4 + 16*zeta^2 - 16*zeta)*q^475 + (-36*zeta^4 - 
36*zeta^2 + 36*zeta)*q^479 + (-50*zeta^5 - 50*zeta^4)*q^481 + (60*zeta^5 - 
60*zeta^2 + 60*zeta)*q^485 + (40*zeta^5 - 40*zeta^2 + 40*zeta)*q^487 + 
(12*zeta^5 + 12*zeta^4)*q^491 + (-18*zeta^4 - 18*zeta^2 + 18*zeta)*q^493 + 
(-24*zeta^4 - 24*zeta^2 + 24*zeta)*q^497 + (44*zeta^5 + 44*zeta^4)*q^499 + 
(36*zeta^5 - 36*zeta^2 + 36*zeta)*q^505 + (-12*zeta^5 - 12*zeta^4)*q^509 + 
(-4*zeta^4 - 4*zeta^2 + 4*zeta)*q^511 + (96*zeta^4 + 96*zeta^2 - 96*zeta)*q^515 
+ (60*zeta^5 - 60*zeta^2 + 60*zeta)*q^521 + (-20*zeta^5 + 20*zeta^2 - 
20*zeta)*q^523 + (24*zeta^5 + 24*zeta^4)*q^527 + (26*zeta^4 + 26*zeta^2 - 
26*zeta)*q^529 + (60*zeta^4 + 60*zeta^2 - 60*zeta)*q^533 + (-72*zeta^5 - 
72*zeta^4)*q^535 + (-36*zeta^5 + 36*zeta^2 - 36*zeta)*q^539 + (82*zeta^5 - 
82*zeta^2 + 82*zeta)*q^541 + (-42*zeta^5 - 42*zeta^4)*q^545 + (-80*zeta^4 - 
80*zeta^2 + 80*zeta)*q^547 + (-12*zeta^4 - 12*zeta^2 + 12*zeta)*q^551 + 
(40*zeta^5 + 40*zeta^4)*q^553 + (-30*zeta^5 + 30*zeta^2 - 30*zeta)*q^557 + 
(-100*zeta^5 + 100*zeta^2 - 100*zeta)*q^559 + (54*zeta^4 + 54*zeta^2 - 
54*zeta)*q^565 + (6*zeta^4 + 6*zeta^2 - 6*zeta)*q^569 + (-88*zeta^5 - 
88*zeta^4)*q^571 + (-48*zeta^5 + 48*zeta^2 - 48*zeta)*q^575 + (-74*zeta^5 + 
74*zeta^2 - 74*zeta)*q^577 + (72*zeta^4 + 72*zeta^2 - 72*zeta)*q^583 + 
(60*zeta^4 + 60*zeta^2 - 60*zeta)*q^587 + (16*zeta^5 + 16*zeta^4)*q^589 + 
(78*zeta^5 - 78*zeta^2 + 78*zeta)*q^593 + (-36*zeta^5 + 36*zeta^2 - 
36*zeta)*q^595 + (-24*zeta^5 - 24*zeta^4)*q^599 + (-2*zeta^4 - 2*zeta^2 + 
2*zeta)*q^601 + (-150*zeta^4 - 150*zeta^2 + 150*zeta)*q^605 + (20*zeta^5 + 
20*zeta^4)*q^607 + (-20*zeta^5 + 20*zeta^2 - 20*zeta)*q^613 + (-30*zeta^5 - 
30*zeta^4)*q^617 + (-80*zeta^4 - 80*zeta^2 + 80*zeta)*q^619 + (12*zeta^4 + 
12*zeta^2 - 12*zeta)*q^623 + (58*zeta^5 + 58*zeta^4)*q^625 + (30*zeta^5 - 
30*zeta^2 + 30*zeta)*q^629 + (-8*zeta^5 + 8*zeta^2 - 8*zeta)*q^631 + (12*zeta^5 
+ 12*zeta^4)*q^635 + (-30*zeta^4 - 30*zeta^2 + 30*zeta)*q^637 + (-42*zeta^4 - 
42*zeta^2 + 42*zeta)*q^641 + (80*zeta^5 + 80*zeta^4)*q^643 + (-36*zeta^5 + 
36*zeta^2 - 36*zeta)*q^647 + (144*zeta^5 - 144*zeta^2 + 144*zeta)*q^649 + 
(-60*zeta^5 - 60*zeta^4)*q^653 + (-36*zeta^4 - 36*zeta^2 + 36*zeta)*q^655 + 
(-12*zeta^4 - 12*zeta^2 + 12*zeta)*q^659 + (-58*zeta^5 - 58*zeta^4)*q^661 + 
(-24*zeta^5 + 24*zeta^2 - 24*zeta)*q^665 + (36*zeta^5 - 36*zeta^2 + 
36*zeta)*q^667 + (-60*zeta^5 - 60*zeta^4)*q^671 + (-2*zeta^4 - 2*zeta^2 + 
2*zeta)*q^673 + (-84*zeta^4 - 84*zeta^2 + 84*zeta)*q^677 + (40*zeta^5 + 
40*zeta^4)*q^679 + (-90*zeta^5 + 90*zeta^2 - 90*zeta)*q^685 + (-60*zeta^5 - 
60*zeta^4)*q^689 + (-20*zeta^4 - 20*zeta^2 + 20*zeta)*q^691 + (-48*zeta^4 - 
48*zeta^2 + 48*zeta)*q^695 + (-36*zeta^5 - 36*zeta^4)*q^697 + (-78*zeta^5 + 
78*zeta^2 - 78*zeta)*q^701 + (20*zeta^5 - 20*zeta^2 + 20*zeta)*q^703 + 
(24*zeta^5 + 24*zeta^4)*q^707 + (-38*zeta^4 - 38*zeta^2 + 38*zeta)*q^709 + 
(48*zeta^4 + 48*zeta^2 - 48*zeta)*q^713 + (180*zeta^5 + 180*zeta^4)*q^715 + 
(-36*zeta^5 + 36*zeta^2 - 36*zeta)*q^719 + (-64*zeta^5 + 64*zeta^2 - 
64*zeta)*q^721 + (24*zeta^5 + 24*zeta^4)*q^725 + (-20*zeta^4 - 20*zeta^2 + 
20*zeta)*q^727 + (-60*zeta^4 - 60*zeta^2 + 60*zeta)*q^731 + (-28*zeta^5 - 
28*zeta^4)*q^733 + (24*zeta^5 - 24*zeta^2 + 24*zeta)*q^737 + (-104*zeta^5 + 
104*zeta^2 - 104*zeta)*q^739 + (-72*zeta^5 - 72*zeta^4)*q^743 + (90*zeta^4 + 
90*zeta^2 - 90*zeta)*q^745 + (-48*zeta^4 - 48*zeta^2 + 48*zeta)*q^749 + 
(20*zeta^5 + 20*zeta^4)*q^751 + (24*zeta^5 - 24*zeta^2 + 24*zeta)*q^755 + 
(-20*zeta^5 + 20*zeta^2 - 20*zeta)*q^757 + (18*zeta^5 + 18*zeta^4)*q^761 + 
(-28*zeta^4 - 28*zeta^2 + 28*zeta)*q^763 + (120*zeta^4 + 120*zeta^2 - 
120*zeta)*q^767 + (-46*zeta^5 - 46*zeta^4)*q^769 + (90*zeta^5 - 90*zeta^2 + 
90*zeta)*q^773 + (-32*zeta^5 + 32*zeta^2 - 32*zeta)*q^775 + (-24*zeta^5 - 
24*zeta^4)*q^779 + (-72*zeta^4 - 72*zeta^2 + 72*zeta)*q^781 + (-30*zeta^4 - 
30*zeta^2 + 30*zeta)*q^785 + (-76*zeta^5 - 76*zeta^4)*q^787 + (-36*zeta^5 + 
36*zeta^2 - 36*zeta)*q^791 + (50*zeta^5 - 50*zeta^2 + 50*zeta)*q^793 + 
(-90*zeta^5 - 90*zeta^4)*q^797 + (-12*zeta^4 - 12*zeta^2 + 12*zeta)*q^803 + 
(-72*zeta^5 - 72*zeta^4)*q^805 + (6*zeta^5 - 6*zeta^2 + 6*zeta)*q^809 + 
(-32*zeta^5 + 32*zeta^2 - 32*zeta)*q^811 + (-24*zeta^5 - 24*zeta^4)*q^815 + 
(-40*zeta^4 - 40*zeta^2 + 40*zeta)*q^817 + (42*zeta^4 + 42*zeta^2 - 
42*zeta)*q^821 + (8*zeta^5 + 8*zeta^4)*q^823 + (60*zeta^5 - 60*zeta^2 + 
60*zeta)*q^827 + (76*zeta^5 - 76*zeta^2 + 76*zeta)*q^829 + (18*zeta^5 + 
18*zeta^4)*q^833 + (108*zeta^4 + 108*zeta^2 - 108*zeta)*q^835 + (36*zeta^4 + 
36*zeta^2 - 36*zeta)*q^839 + (40*zeta^5 + 40*zeta^4)*q^841 + (-72*zeta^5 + 
72*zeta^2 - 72*zeta)*q^845 + (100*zeta^5 - 100*zeta^2 + 100*zeta)*q^847 + 
(60*zeta^5 + 60*zeta^4)*q^851 + (28*zeta^4 + 28*zeta^2 - 28*zeta)*q^853 + 
(-90*zeta^4 - 90*zeta^2 + 90*zeta)*q^857 + (-16*zeta^5 - 16*zeta^4)*q^859 + 
(-12*zeta^5 + 12*zeta^2 - 12*zeta)*q^863 + (-54*zeta^5 + 54*zeta^2 - 
54*zeta)*q^865 + (120*zeta^5 + 120*zeta^4)*q^869 + (20*zeta^4 + 20*zeta^2 - 
20*zeta)*q^871 + (12*zeta^4 + 12*zeta^2 - 12*zeta)*q^875 + (110*zeta^5 + 
110*zeta^4)*q^877 + (12*zeta^5 - 12*zeta^2 + 12*zeta)*q^881 + O(q^882), 
(4*zeta^5 + 2*zeta^4 - 2*zeta^2 + 2*zeta)*q^3 + (6*zeta^4 + 6*zeta^2 - 
6*zeta)*q^9 + (-6*zeta^5 - 12*zeta^4 - 6*zeta^2 + 6*zeta)*q^15 + (2*zeta^5 - 
2*zeta^4 - 4*zeta^2 + 4*zeta)*q^21 + (-12*zeta^5 - 6*zeta^4 + 6*zeta^2 - 
6*zeta)*q^27 + (-6*zeta^5 + 6*zeta^4 + 12*zeta^2 - 12*zeta)*q^33 + (2*zeta^5 + 
4*zeta^4 + 2*zeta^2 - 2*zeta)*q^39 + (18*zeta^5 - 18*zeta^2 + 18*zeta)*q^45 + 
(24*zeta^5 + 12*zeta^4 - 12*zeta^2 + 12*zeta)*q^51 + (-16*zeta^5 - 8*zeta^4 + 
8*zeta^2 - 8*zeta)*q^57 + (6*zeta^5 + 6*zeta^4)*q^63 + (6*zeta^5 + 12*zeta^4 + 
6*zeta^2 - 6*zeta)*q^69 + (-8*zeta^5 + 8*zeta^4 + 16*zeta^2 - 16*zeta)*q^75 + 
(-18*zeta^4 - 18*zeta^2 + 18*zeta)*q^81 + (-6*zeta^5 + 6*zeta^4 + 12*zeta^2 - 
12*zeta)*q^87 + (-10*zeta^5 - 20*zeta^4 - 10*zeta^2 + 10*zeta)*q^93 + 
(-18*zeta^5 - 18*zeta^4)*q^99 + (-12*zeta^5 - 6*zeta^4 + 6*zeta^2 - 
6*zeta)*q^105 + (8*zeta^5 + 4*zeta^4 - 4*zeta^2 + 4*zeta)*q^111 + (-6*zeta^5 + 
6*zeta^2 - 6*zeta)*q^117 + (-6*zeta^5 - 12*zeta^4 - 6*zeta^2 + 6*zeta)*q^123 + 
(2*zeta^5 - 2*zeta^4 - 4*zeta^2 + 4*zeta)*q^129 + (18*zeta^5 + 36*zeta^4 + 
18*zeta^2 - 18*zeta)*q^135 + (18*zeta^5 - 18*zeta^4 - 36*zeta^2 + 36*zeta)*q^141
+ (12*zeta^5 + 24*zeta^4 + 12*zeta^2 - 12*zeta)*q^147 + (36*zeta^4 + 36*zeta^2 -
36*zeta)*q^153 + (-24*zeta^5 - 12*zeta^4 + 12*zeta^2 - 12*zeta)*q^159 + 
(36*zeta^5 + 18*zeta^4 - 18*zeta^2 + 18*zeta)*q^165 + (-24*zeta^4 - 24*zeta^2 + 
24*zeta)*q^171 + (6*zeta^5 + 12*zeta^4 + 6*zeta^2 - 6*zeta)*q^177 + (26*zeta^5 -
26*zeta^4 - 52*zeta^2 + 52*zeta)*q^183 + (-6*zeta^5 + 6*zeta^4 + 12*zeta^2 - 
12*zeta)*q^189 + (6*zeta^5 - 6*zeta^4 - 12*zeta^2 + 12*zeta)*q^195 + (14*zeta^5 
+ 28*zeta^4 + 14*zeta^2 - 14*zeta)*q^201 + (-18*zeta^5 + 18*zeta^2 - 
18*zeta)*q^207 + (-48*zeta^5 - 24*zeta^4 + 24*zeta^2 - 24*zeta)*q^213 + 
(-40*zeta^5 - 20*zeta^4 + 20*zeta^2 - 20*zeta)*q^219 + (-24*zeta^5 - 
24*zeta^4)*q^225 + (6*zeta^5 + 12*zeta^4 + 6*zeta^2 - 6*zeta)*q^231 + 
(-22*zeta^5 + 22*zeta^4 + 44*zeta^2 - 44*zeta)*q^237 + (36*zeta^5 + 18*zeta^4 - 
18*zeta^2 + 18*zeta)*q^243 + (18*zeta^5 - 18*zeta^4 - 36*zeta^2 + 36*zeta)*q^249
+ (-36*zeta^5 - 72*zeta^4 - 36*zeta^2 + 36*zeta)*q^255 + (-18*zeta^5 - 
18*zeta^4)*q^261 + (24*zeta^5 + 12*zeta^4 - 12*zeta^2 + 12*zeta)*q^267 + 
(4*zeta^5 + 2*zeta^4 - 2*zeta^2 + 2*zeta)*q^273 + (30*zeta^5 - 30*zeta^2 + 
30*zeta)*q^279 + (24*zeta^5 + 48*zeta^4 + 24*zeta^2 - 24*zeta)*q^285 + 
(-22*zeta^5 + 22*zeta^4 + 44*zeta^2 - 44*zeta)*q^291 + (18*zeta^5 - 18*zeta^4 - 
36*zeta^2 + 36*zeta)*q^297 + (-30*zeta^5 + 30*zeta^4 + 60*zeta^2 - 
60*zeta)*q^303 + (14*zeta^5 + 28*zeta^4 + 14*zeta^2 - 14*zeta)*q^309 + 
(-18*zeta^4 - 18*zeta^2 + 18*zeta)*q^315 + (48*zeta^5 + 24*zeta^4 - 24*zeta^2 + 
24*zeta)*q^321 + (8*zeta^5 + 4*zeta^4 - 4*zeta^2 + 4*zeta)*q^327 + (12*zeta^4 + 
12*zeta^2 - 12*zeta)*q^333 + (18*zeta^5 + 36*zeta^4 + 18*zeta^2 - 18*zeta)*q^339
+ (18*zeta^5 - 18*zeta^4 - 36*zeta^2 + 36*zeta)*q^345 + (-6*zeta^5 - 12*zeta^4 -
6*zeta^2 + 6*zeta)*q^351 + (12*zeta^5 - 12*zeta^4 - 24*zeta^2 + 24*zeta)*q^357 +
(4*zeta^5 + 8*zeta^4 + 4*zeta^2 - 4*zeta)*q^363 + (18*zeta^5 - 18*zeta^2 + 
18*zeta)*q^369 + (-12*zeta^5 - 6*zeta^4 + 6*zeta^2 - 6*zeta)*q^375 + (-64*zeta^5
- 32*zeta^4 + 32*zeta^2 - 32*zeta)*q^381 + (6*zeta^5 + 6*zeta^4)*q^387 + 
(-42*zeta^5 - 84*zeta^4 - 42*zeta^2 + 42*zeta)*q^393 + (-8*zeta^5 + 8*zeta^4 + 
16*zeta^2 - 16*zeta)*q^399 + (-54*zeta^5 + 54*zeta^2 - 54*zeta)*q^405 + 
(-6*zeta^5 + 6*zeta^4 + 12*zeta^2 - 12*zeta)*q^411 + (-10*zeta^5 - 20*zeta^4 - 
10*zeta^2 + 10*zeta)*q^417 + (54*zeta^5 + 54*zeta^4)*q^423 + (-12*zeta^5 - 
6*zeta^4 + 6*zeta^2 - 6*zeta)*q^429 + (36*zeta^5 + 18*zeta^4 - 18*zeta^2 + 
18*zeta)*q^435 + (-36*zeta^5 + 36*zeta^2 - 36*zeta)*q^441 + (-30*zeta^5 - 
60*zeta^4 - 30*zeta^2 + 30*zeta)*q^447 + (26*zeta^5 - 26*zeta^4 - 52*zeta^2 + 
52*zeta)*q^453 + (-72*zeta^5 - 36*zeta^4 + 36*zeta^2 - 36*zeta)*q^459 + 
(-30*zeta^5 + 30*zeta^4 + 60*zeta^2 - 60*zeta)*q^465 + (26*zeta^5 + 52*zeta^4 + 
26*zeta^2 - 26*zeta)*q^471 + (-36*zeta^4 - 36*zeta^2 + 36*zeta)*q^477 + 
(12*zeta^5 + 6*zeta^4 - 6*zeta^2 + 6*zeta)*q^483 + (80*zeta^5 + 40*zeta^4 - 
40*zeta^2 + 40*zeta)*q^489 + (54*zeta^4 + 54*zeta^2 - 54*zeta)*q^495 + 
(-18*zeta^5 - 36*zeta^4 - 18*zeta^2 + 18*zeta)*q^501 + (24*zeta^5 - 24*zeta^4 - 
48*zeta^2 + 48*zeta)*q^507 + (48*zeta^5 + 24*zeta^4 - 24*zeta^2 + 24*zeta)*q^513
+ (18*zeta^5 - 18*zeta^4 - 36*zeta^2 + 36*zeta)*q^519 + (8*zeta^5 + 16*zeta^4 + 
8*zeta^2 - 8*zeta)*q^525 + (-18*zeta^5 + 18*zeta^2 - 18*zeta)*q^531 + (48*zeta^5
+ 24*zeta^4 - 24*zeta^2 + 24*zeta)*q^537 + (8*zeta^5 + 4*zeta^4 - 4*zeta^2 + 
4*zeta)*q^543 + (78*zeta^5 + 78*zeta^4)*q^549 + (-12*zeta^5 - 24*zeta^4 - 
12*zeta^2 + 12*zeta)*q^555 + (-36*zeta^5 + 36*zeta^4 + 72*zeta^2 - 
72*zeta)*q^561 + (-18*zeta^5 - 18*zeta^4)*q^567 + (-30*zeta^5 + 30*zeta^4 + 
60*zeta^2 - 60*zeta)*q^573 + (-22*zeta^5 - 44*zeta^4 - 22*zeta^2 + 
22*zeta)*q^579 + (18*zeta^5 + 18*zeta^4)*q^585 + (24*zeta^5 + 12*zeta^4 - 
12*zeta^2 + 12*zeta)*q^591 + (-16*zeta^5 - 8*zeta^4 + 8*zeta^2 - 8*zeta)*q^597 +
(-42*zeta^5 + 42*zeta^2 - 42*zeta)*q^603 + (6*zeta^5 + 12*zeta^4 + 6*zeta^2 - 
6*zeta)*q^609 + (-18*zeta^5 + 18*zeta^4 + 36*zeta^2 - 36*zeta)*q^615 + 
(-18*zeta^5 - 36*zeta^4 - 18*zeta^2 + 18*zeta)*q^621 + (24*zeta^5 - 24*zeta^4 - 
48*zeta^2 + 48*zeta)*q^627 + (-34*zeta^5 - 68*zeta^4 - 34*zeta^2 + 
34*zeta)*q^633 + (-72*zeta^4 - 72*zeta^2 + 72*zeta)*q^639 + (-12*zeta^5 - 
6*zeta^4 + 6*zeta^2 - 6*zeta)*q^645 + (-20*zeta^5 - 10*zeta^4 + 10*zeta^2 - 
10*zeta)*q^651 + (-60*zeta^4 - 60*zeta^2 + 60*zeta)*q^657 + (12*zeta^5 + 
24*zeta^4 + 12*zeta^2 - 12*zeta)*q^663 + (2*zeta^5 - 2*zeta^4 - 4*zeta^2 + 
4*zeta)*q^669 + (24*zeta^5 - 24*zeta^4 - 48*zeta^2 + 48*zeta)*q^675 + 
(-54*zeta^5 + 54*zeta^4 + 108*zeta^2 - 108*zeta)*q^681 + (26*zeta^5 + 52*zeta^4 
+ 26*zeta^2 - 26*zeta)*q^687 + (-18*zeta^5 + 18*zeta^2 - 18*zeta)*q^693 + 
(-24*zeta^5 - 12*zeta^4 + 12*zeta^2 - 12*zeta)*q^699 + (-108*zeta^5 - 54*zeta^4 
+ 54*zeta^2 - 54*zeta)*q^705 + (-66*zeta^5 - 66*zeta^4)*q^711 + (54*zeta^5 + 
108*zeta^4 + 54*zeta^2 - 54*zeta)*q^717 + (2*zeta^5 - 2*zeta^4 - 4*zeta^2 + 
4*zeta)*q^723 + (54*zeta^4 + 54*zeta^2 - 54*zeta)*q^729 + (36*zeta^5 - 36*zeta^4
- 72*zeta^2 + 72*zeta)*q^735 + (-8*zeta^5 - 16*zeta^4 - 8*zeta^2 + 8*zeta)*q^741
+ (54*zeta^5 + 54*zeta^4)*q^747 + (48*zeta^5 + 24*zeta^4 - 24*zeta^2 + 
24*zeta)*q^753 + (-36*zeta^5 - 18*zeta^4 + 18*zeta^2 - 18*zeta)*q^759 + 
(108*zeta^5 - 108*zeta^2 + 108*zeta)*q^765 + (18*zeta^5 + 36*zeta^4 + 18*zeta^2 
- 18*zeta)*q^771 + (4*zeta^5 - 4*zeta^4 - 8*zeta^2 + 8*zeta)*q^777 + (18*zeta^5 
- 18*zeta^4 - 36*zeta^2 + 36*zeta)*q^783 + (42*zeta^5 - 42*zeta^4 - 84*zeta^2 + 
84*zeta)*q^789 + (36*zeta^5 + 72*zeta^4 + 36*zeta^2 - 36*zeta)*q^795 + 
(36*zeta^4 + 36*zeta^2 - 36*zeta)*q^801 + (-24*zeta^5 - 12*zeta^4 + 12*zeta^2 - 
12*zeta)*q^807 + (32*zeta^5 + 16*zeta^4 - 16*zeta^2 + 16*zeta)*q^813 + (6*zeta^4
+ 6*zeta^2 - 6*zeta)*q^819 + (-24*zeta^5 - 48*zeta^4 - 24*zeta^2 + 
24*zeta)*q^825 + (2*zeta^5 - 2*zeta^4 - 4*zeta^2 + 4*zeta)*q^831 + (30*zeta^5 + 
60*zeta^4 + 30*zeta^2 - 30*zeta)*q^837 + (-6*zeta^5 + 6*zeta^4 + 12*zeta^2 - 
12*zeta)*q^843 + (-10*zeta^5 - 20*zeta^4 - 10*zeta^2 + 10*zeta)*q^849 + 
(-72*zeta^5 + 72*zeta^2 - 72*zeta)*q^855 + (-12*zeta^5 - 6*zeta^4 + 6*zeta^2 - 
6*zeta)*q^861 + (76*zeta^5 + 38*zeta^4 - 38*zeta^2 + 38*zeta)*q^867 + 
(-66*zeta^5 - 66*zeta^4)*q^873 + (42*zeta^5 + 84*zeta^4 + 42*zeta^2 - 
42*zeta)*q^879 + O(q^882), (-2*zeta^5 - 4*zeta^4 - 2*zeta^2 + 2*zeta)*q + 
(-6*zeta^5 + 6*zeta^4 + 12*zeta^2 - 12*zeta)*q^5 + (8*zeta^5 + 4*zeta^4 - 
4*zeta^2 + 4*zeta)*q^7 + (-24*zeta^5 - 12*zeta^4 + 12*zeta^2 - 12*zeta)*q^11 + 
(-10*zeta^5 + 10*zeta^4 + 20*zeta^2 - 20*zeta)*q^13 + (6*zeta^5 + 12*zeta^4 + 
6*zeta^2 - 6*zeta)*q^17 + (-4*zeta^5 - 8*zeta^4 - 4*zeta^2 + 4*zeta)*q^19 + 
(-12*zeta^5 + 12*zeta^4 + 24*zeta^2 - 24*zeta)*q^23 + (16*zeta^5 + 8*zeta^4 - 
8*zeta^2 + 8*zeta)*q^25 + (12*zeta^5 + 6*zeta^4 - 6*zeta^2 + 6*zeta)*q^29 + 
(8*zeta^5 - 8*zeta^4 - 16*zeta^2 + 16*zeta)*q^31 + (-12*zeta^5 - 24*zeta^4 - 
12*zeta^2 + 12*zeta)*q^35 + (-10*zeta^5 - 20*zeta^4 - 10*zeta^2 + 10*zeta)*q^37 
+ (12*zeta^5 - 12*zeta^4 - 24*zeta^2 + 24*zeta)*q^41 + (-40*zeta^5 - 20*zeta^4 +
20*zeta^2 - 20*zeta)*q^43 + (6*zeta^5 - 6*zeta^4 - 12*zeta^2 + 12*zeta)*q^49 + 
(12*zeta^5 + 24*zeta^4 + 12*zeta^2 - 12*zeta)*q^53 + (36*zeta^5 + 72*zeta^4 + 
36*zeta^2 - 36*zeta)*q^55 + (24*zeta^5 - 24*zeta^4 - 48*zeta^2 + 48*zeta)*q^59 +
(20*zeta^5 + 10*zeta^4 - 10*zeta^2 + 10*zeta)*q^61 + (60*zeta^5 + 30*zeta^4 - 
30*zeta^2 + 30*zeta)*q^65 + (-4*zeta^5 + 4*zeta^4 + 8*zeta^2 - 8*zeta)*q^67 + 
(-12*zeta^5 - 24*zeta^4 - 12*zeta^2 + 12*zeta)*q^71 + (2*zeta^5 + 4*zeta^4 + 
2*zeta^2 - 2*zeta)*q^73 + (24*zeta^5 - 24*zeta^4 - 48*zeta^2 + 48*zeta)*q^77 + 
(-40*zeta^5 - 20*zeta^4 + 20*zeta^2 - 20*zeta)*q^79 + (18*zeta^5 - 18*zeta^4 - 
36*zeta^2 + 36*zeta)*q^85 + (6*zeta^5 + 12*zeta^4 + 6*zeta^2 - 6*zeta)*q^89 + 
(-20*zeta^5 - 40*zeta^4 - 20*zeta^2 + 20*zeta)*q^91 + (-12*zeta^5 + 12*zeta^4 + 
24*zeta^2 - 24*zeta)*q^95 + (-40*zeta^5 - 20*zeta^4 + 20*zeta^2 - 20*zeta)*q^97 
+ (24*zeta^5 + 12*zeta^4 - 12*zeta^2 + 12*zeta)*q^101 + (32*zeta^5 - 32*zeta^4 -
64*zeta^2 + 64*zeta)*q^103 + (-24*zeta^5 - 48*zeta^4 - 24*zeta^2 + 
24*zeta)*q^107 + (14*zeta^5 + 28*zeta^4 + 14*zeta^2 - 14*zeta)*q^109 + 
(-18*zeta^5 + 18*zeta^4 + 36*zeta^2 - 36*zeta)*q^113 + (72*zeta^5 + 36*zeta^4 - 
36*zeta^2 + 36*zeta)*q^115 + (-24*zeta^5 - 12*zeta^4 + 12*zeta^2 - 
12*zeta)*q^119 + (-50*zeta^5 + 50*zeta^4 + 100*zeta^2 - 100*zeta)*q^121 + 
(6*zeta^5 + 12*zeta^4 + 6*zeta^2 - 6*zeta)*q^125 + (-4*zeta^5 - 8*zeta^4 - 
4*zeta^2 + 4*zeta)*q^127 + (12*zeta^5 - 12*zeta^4 - 24*zeta^2 + 24*zeta)*q^131 +
(16*zeta^5 + 8*zeta^4 - 8*zeta^2 + 8*zeta)*q^133 + (-60*zeta^5 - 30*zeta^4 + 
30*zeta^2 - 30*zeta)*q^137 + (-16*zeta^5 + 16*zeta^4 + 32*zeta^2 - 
32*zeta)*q^139 + (60*zeta^5 + 120*zeta^4 + 60*zeta^2 - 60*zeta)*q^143 + 
(-18*zeta^5 - 36*zeta^4 - 18*zeta^2 + 18*zeta)*q^145 + (-30*zeta^5 + 30*zeta^4 +
60*zeta^2 - 60*zeta)*q^149 + (-16*zeta^5 - 8*zeta^4 + 8*zeta^2 - 8*zeta)*q^151 +
(-48*zeta^5 - 24*zeta^4 + 24*zeta^2 - 24*zeta)*q^155 + (-10*zeta^5 + 10*zeta^4 +
20*zeta^2 - 20*zeta)*q^157 + (-24*zeta^5 - 48*zeta^4 - 24*zeta^2 + 
24*zeta)*q^161 + (8*zeta^5 + 16*zeta^4 + 8*zeta^2 - 8*zeta)*q^163 + (-36*zeta^5 
+ 36*zeta^4 + 72*zeta^2 - 72*zeta)*q^167 + (48*zeta^5 + 24*zeta^4 - 24*zeta^2 + 
24*zeta)*q^169 + (-36*zeta^5 - 18*zeta^4 + 18*zeta^2 - 18*zeta)*q^173 + 
(-16*zeta^5 + 16*zeta^4 + 32*zeta^2 - 32*zeta)*q^175 + (-24*zeta^5 - 48*zeta^4 -
24*zeta^2 + 24*zeta)*q^179 + (-28*zeta^5 - 56*zeta^4 - 28*zeta^2 + 
28*zeta)*q^181 + (-30*zeta^5 + 30*zeta^4 + 60*zeta^2 - 60*zeta)*q^185 + 
(72*zeta^5 + 36*zeta^4 - 36*zeta^2 + 36*zeta)*q^187 + (24*zeta^5 + 12*zeta^4 - 
12*zeta^2 + 12*zeta)*q^191 + (50*zeta^5 - 50*zeta^4 - 100*zeta^2 + 
100*zeta)*q^193 + (-30*zeta^5 - 60*zeta^4 - 30*zeta^2 + 30*zeta)*q^197 + 
(-40*zeta^5 - 80*zeta^4 - 40*zeta^2 + 40*zeta)*q^199 + (-12*zeta^5 + 12*zeta^4 +
24*zeta^2 - 24*zeta)*q^203 + (-72*zeta^5 - 36*zeta^4 + 36*zeta^2 - 
36*zeta)*q^205 + (-48*zeta^5 - 24*zeta^4 + 24*zeta^2 - 24*zeta)*q^209 + 
(-28*zeta^5 + 28*zeta^4 + 56*zeta^2 - 56*zeta)*q^211 + (60*zeta^5 + 120*zeta^4 +
60*zeta^2 - 60*zeta)*q^215 + (16*zeta^5 + 32*zeta^4 + 16*zeta^2 - 16*zeta)*q^217
+ (30*zeta^5 - 30*zeta^4 - 60*zeta^2 + 60*zeta)*q^221 + (-40*zeta^5 - 20*zeta^4 
+ 20*zeta^2 - 20*zeta)*q^223 + (72*zeta^5 + 36*zeta^4 - 36*zeta^2 + 
36*zeta)*q^227 + (-10*zeta^5 + 10*zeta^4 + 20*zeta^2 - 20*zeta)*q^229 + 
(30*zeta^5 + 60*zeta^4 + 30*zeta^2 - 30*zeta)*q^233 + (44*zeta^5 + 22*zeta^4 - 
22*zeta^2 + 22*zeta)*q^241 + (-36*zeta^5 - 18*zeta^4 + 18*zeta^2 - 
18*zeta)*q^245 + (-20*zeta^5 + 20*zeta^4 + 40*zeta^2 - 40*zeta)*q^247 + 
(-60*zeta^5 - 120*zeta^4 - 60*zeta^2 + 60*zeta)*q^251 + (72*zeta^5 + 144*zeta^4 
+ 72*zeta^2 - 72*zeta)*q^253 + (54*zeta^5 - 54*zeta^4 - 108*zeta^2 + 
108*zeta)*q^257 + (40*zeta^5 + 20*zeta^4 - 20*zeta^2 + 20*zeta)*q^259 + 
(96*zeta^5 + 48*zeta^4 - 48*zeta^2 + 48*zeta)*q^263 + (36*zeta^5 - 36*zeta^4 - 
72*zeta^2 + 72*zeta)*q^265 + (-6*zeta^5 - 12*zeta^4 - 6*zeta^2 + 6*zeta)*q^269 +
(20*zeta^5 + 40*zeta^4 + 20*zeta^2 - 20*zeta)*q^271 + (48*zeta^5 - 48*zeta^4 - 
96*zeta^2 + 96*zeta)*q^275 + (-40*zeta^5 - 20*zeta^4 + 20*zeta^2 - 
20*zeta)*q^277 + (-60*zeta^5 - 30*zeta^4 + 30*zeta^2 - 30*zeta)*q^281 + 
(8*zeta^5 - 8*zeta^4 - 16*zeta^2 + 16*zeta)*q^283 + (24*zeta^5 + 48*zeta^4 + 
24*zeta^2 - 24*zeta)*q^287 + (16*zeta^5 + 32*zeta^4 + 16*zeta^2 - 16*zeta)*q^289
+ (-30*zeta^5 + 30*zeta^4 + 60*zeta^2 - 60*zeta)*q^293 + (-144*zeta^5 - 
72*zeta^4 + 72*zeta^2 - 72*zeta)*q^295 + (120*zeta^5 + 60*zeta^4 - 60*zeta^2 + 
60*zeta)*q^299 + (40*zeta^5 - 40*zeta^4 - 80*zeta^2 + 80*zeta)*q^301 + 
(-30*zeta^5 - 60*zeta^4 - 30*zeta^2 + 30*zeta)*q^305 + (-40*zeta^5 - 80*zeta^4 -
40*zeta^2 + 40*zeta)*q^307 + (48*zeta^5 - 48*zeta^4 - 96*zeta^2 + 96*zeta)*q^311
+ (-100*zeta^5 - 50*zeta^4 + 50*zeta^2 - 50*zeta)*q^313 + (60*zeta^5 + 30*zeta^4
- 30*zeta^2 + 30*zeta)*q^317 + (36*zeta^5 - 36*zeta^4 - 72*zeta^2 + 
72*zeta)*q^319 + (12*zeta^5 + 24*zeta^4 + 12*zeta^2 - 12*zeta)*q^323 + 
(-40*zeta^5 - 80*zeta^4 - 40*zeta^2 + 40*zeta)*q^325 + (104*zeta^5 + 52*zeta^4 -
52*zeta^2 + 52*zeta)*q^331 + (24*zeta^5 + 12*zeta^4 - 12*zeta^2 + 12*zeta)*q^335
+ (20*zeta^5 - 20*zeta^4 - 40*zeta^2 + 40*zeta)*q^337 + (-48*zeta^5 - 96*zeta^4 
- 48*zeta^2 + 48*zeta)*q^341 + (40*zeta^5 + 80*zeta^4 + 40*zeta^2 - 
40*zeta)*q^343 + (36*zeta^5 - 36*zeta^4 - 72*zeta^2 + 72*zeta)*q^347 + (8*zeta^5
+ 4*zeta^4 - 4*zeta^2 + 4*zeta)*q^349 + (120*zeta^5 + 60*zeta^4 - 60*zeta^2 + 
60*zeta)*q^353 + (-36*zeta^5 + 36*zeta^4 + 72*zeta^2 - 72*zeta)*q^355 + 
(36*zeta^5 + 72*zeta^4 + 36*zeta^2 - 36*zeta)*q^359 + (30*zeta^5 + 60*zeta^4 + 
30*zeta^2 - 30*zeta)*q^361 + (6*zeta^5 - 6*zeta^4 - 12*zeta^2 + 12*zeta)*q^365 +
(128*zeta^5 + 64*zeta^4 - 64*zeta^2 + 64*zeta)*q^367 + (-48*zeta^5 - 24*zeta^4 +
24*zeta^2 - 24*zeta)*q^371 + (-28*zeta^5 + 28*zeta^4 + 56*zeta^2 - 
56*zeta)*q^373 + (-30*zeta^5 - 60*zeta^4 - 30*zeta^2 + 30*zeta)*q^377 + 
(8*zeta^5 + 16*zeta^4 + 8*zeta^2 - 8*zeta)*q^379 + (-60*zeta^5 + 60*zeta^4 + 
120*zeta^2 - 120*zeta)*q^383 + (-144*zeta^5 - 72*zeta^4 + 72*zeta^2 - 
72*zeta)*q^385 + (-120*zeta^5 - 60*zeta^4 + 60*zeta^2 - 60*zeta)*q^389 + 
(36*zeta^5 - 36*zeta^4 - 72*zeta^2 + 72*zeta)*q^391 + (60*zeta^5 + 120*zeta^4 + 
60*zeta^2 - 60*zeta)*q^395 + (14*zeta^5 + 28*zeta^4 + 14*zeta^2 - 14*zeta)*q^397
+ (30*zeta^5 - 30*zeta^4 - 60*zeta^2 + 60*zeta)*q^401 + (-80*zeta^5 - 40*zeta^4 
+ 40*zeta^2 - 40*zeta)*q^403 + (-120*zeta^5 - 60*zeta^4 + 60*zeta^2 - 
60*zeta)*q^407 + (-70*zeta^5 + 70*zeta^4 + 140*zeta^2 - 140*zeta)*q^409 + 
(48*zeta^5 + 96*zeta^4 + 48*zeta^2 - 48*zeta)*q^413 + (116*zeta^5 + 58*zeta^4 - 
58*zeta^2 + 58*zeta)*q^421 + (-48*zeta^5 - 24*zeta^4 + 24*zeta^2 - 
24*zeta)*q^425 + (-20*zeta^5 + 20*zeta^4 + 40*zeta^2 - 40*zeta)*q^427 + 
(-48*zeta^5 - 96*zeta^4 - 48*zeta^2 + 48*zeta)*q^431 + (-22*zeta^5 - 44*zeta^4 -
22*zeta^2 + 22*zeta)*q^433 + (-24*zeta^5 + 24*zeta^4 + 48*zeta^2 - 
48*zeta)*q^437 + (32*zeta^5 + 16*zeta^4 - 16*zeta^2 + 16*zeta)*q^439 + 
(18*zeta^5 - 18*zeta^4 - 36*zeta^2 + 36*zeta)*q^445 + (-36*zeta^5 - 72*zeta^4 - 
36*zeta^2 + 36*zeta)*q^449 + (-72*zeta^5 - 144*zeta^4 - 72*zeta^2 + 
72*zeta)*q^451 + (-60*zeta^5 + 60*zeta^4 + 120*zeta^2 - 120*zeta)*q^455 + 
(140*zeta^5 + 70*zeta^4 - 70*zeta^2 + 70*zeta)*q^457 + (-24*zeta^5 - 12*zeta^4 +
12*zeta^2 - 12*zeta)*q^461 + (8*zeta^5 - 8*zeta^4 - 16*zeta^2 + 16*zeta)*q^463 +
(-24*zeta^5 - 48*zeta^4 - 24*zeta^2 + 24*zeta)*q^467 + (-8*zeta^5 - 16*zeta^4 - 
8*zeta^2 + 8*zeta)*q^469 + (-120*zeta^5 + 120*zeta^4 + 240*zeta^2 - 
240*zeta)*q^473 + (32*zeta^5 + 16*zeta^4 - 16*zeta^2 + 16*zeta)*q^475 + 
(72*zeta^5 + 36*zeta^4 - 36*zeta^2 + 36*zeta)*q^479 + (-50*zeta^5 + 50*zeta^4 + 
100*zeta^2 - 100*zeta)*q^481 + (60*zeta^5 + 120*zeta^4 + 60*zeta^2 - 
60*zeta)*q^485 + (-40*zeta^5 - 80*zeta^4 - 40*zeta^2 + 40*zeta)*q^487 + 
(-12*zeta^5 + 12*zeta^4 + 24*zeta^2 - 24*zeta)*q^491 + (-36*zeta^5 - 18*zeta^4 +
18*zeta^2 - 18*zeta)*q^493 + (48*zeta^5 + 24*zeta^4 - 24*zeta^2 + 24*zeta)*q^497
+ (44*zeta^5 - 44*zeta^4 - 88*zeta^2 + 88*zeta)*q^499 + (-36*zeta^5 - 72*zeta^4 
- 36*zeta^2 + 36*zeta)*q^505 + (12*zeta^5 - 12*zeta^4 - 24*zeta^2 + 
24*zeta)*q^509 + (-8*zeta^5 - 4*zeta^4 + 4*zeta^2 - 4*zeta)*q^511 + (-192*zeta^5
- 96*zeta^4 + 96*zeta^2 - 96*zeta)*q^515 + (60*zeta^5 + 120*zeta^4 + 60*zeta^2 -
60*zeta)*q^521 + (20*zeta^5 + 40*zeta^4 + 20*zeta^2 - 20*zeta)*q^523 + 
(-24*zeta^5 + 24*zeta^4 + 48*zeta^2 - 48*zeta)*q^527 + (52*zeta^5 + 26*zeta^4 - 
26*zeta^2 + 26*zeta)*q^529 + (-120*zeta^5 - 60*zeta^4 + 60*zeta^2 - 
60*zeta)*q^533 + (-72*zeta^5 + 72*zeta^4 + 144*zeta^2 - 144*zeta)*q^535 + 
(-36*zeta^5 - 72*zeta^4 - 36*zeta^2 + 36*zeta)*q^539 + (-82*zeta^5 - 164*zeta^4 
- 82*zeta^2 + 82*zeta)*q^541 + (42*zeta^5 - 42*zeta^4 - 84*zeta^2 + 
84*zeta)*q^545 + (-160*zeta^5 - 80*zeta^4 + 80*zeta^2 - 80*zeta)*q^547 + 
(24*zeta^5 + 12*zeta^4 - 12*zeta^2 + 12*zeta)*q^551 + (40*zeta^5 - 40*zeta^4 - 
80*zeta^2 + 80*zeta)*q^553 + (-30*zeta^5 - 60*zeta^4 - 30*zeta^2 + 
30*zeta)*q^557 + (100*zeta^5 + 200*zeta^4 + 100*zeta^2 - 100*zeta)*q^559 + 
(108*zeta^5 + 54*zeta^4 - 54*zeta^2 + 54*zeta)*q^565 + (-12*zeta^5 - 6*zeta^4 + 
6*zeta^2 - 6*zeta)*q^569 + (-88*zeta^5 + 88*zeta^4 + 176*zeta^2 - 
176*zeta)*q^571 + (-48*zeta^5 - 96*zeta^4 - 48*zeta^2 + 48*zeta)*q^575 + 
(74*zeta^5 + 148*zeta^4 + 74*zeta^2 - 74*zeta)*q^577 + (144*zeta^5 + 72*zeta^4 -
72*zeta^2 + 72*zeta)*q^583 + (-120*zeta^5 - 60*zeta^4 + 60*zeta^2 - 
60*zeta)*q^587 + (16*zeta^5 - 16*zeta^4 - 32*zeta^2 + 32*zeta)*q^589 + 
(78*zeta^5 + 156*zeta^4 + 78*zeta^2 - 78*zeta)*q^593 + (36*zeta^5 + 72*zeta^4 + 
36*zeta^2 - 36*zeta)*q^595 + (24*zeta^5 - 24*zeta^4 - 48*zeta^2 + 48*zeta)*q^599
+ (-4*zeta^5 - 2*zeta^4 + 2*zeta^2 - 2*zeta)*q^601 + (300*zeta^5 + 150*zeta^4 - 
150*zeta^2 + 150*zeta)*q^605 + (20*zeta^5 - 20*zeta^4 - 40*zeta^2 + 
40*zeta)*q^607 + (20*zeta^5 + 40*zeta^4 + 20*zeta^2 - 20*zeta)*q^613 + 
(30*zeta^5 - 30*zeta^4 - 60*zeta^2 + 60*zeta)*q^617 + (-160*zeta^5 - 80*zeta^4 +
80*zeta^2 - 80*zeta)*q^619 + (-24*zeta^5 - 12*zeta^4 + 12*zeta^2 - 
12*zeta)*q^623 + (58*zeta^5 - 58*zeta^4 - 116*zeta^2 + 116*zeta)*q^625 + 
(30*zeta^5 + 60*zeta^4 + 30*zeta^2 - 30*zeta)*q^629 + (8*zeta^5 + 16*zeta^4 + 
8*zeta^2 - 8*zeta)*q^631 + (-12*zeta^5 + 12*zeta^4 + 24*zeta^2 - 24*zeta)*q^635 
+ (-60*zeta^5 - 30*zeta^4 + 30*zeta^2 - 30*zeta)*q^637 + (84*zeta^5 + 42*zeta^4 
- 42*zeta^2 + 42*zeta)*q^641 + (80*zeta^5 - 80*zeta^4 - 160*zeta^2 + 
160*zeta)*q^643 + (-36*zeta^5 - 72*zeta^4 - 36*zeta^2 + 36*zeta)*q^647 + 
(-144*zeta^5 - 288*zeta^4 - 144*zeta^2 + 144*zeta)*q^649 + (60*zeta^5 - 
60*zeta^4 - 120*zeta^2 + 120*zeta)*q^653 + (-72*zeta^5 - 36*zeta^4 + 36*zeta^2 -
36*zeta)*q^655 + (24*zeta^5 + 12*zeta^4 - 12*zeta^2 + 12*zeta)*q^659 + 
(-58*zeta^5 + 58*zeta^4 + 116*zeta^2 - 116*zeta)*q^661 + (-24*zeta^5 - 48*zeta^4
- 24*zeta^2 + 24*zeta)*q^665 + (-36*zeta^5 - 72*zeta^4 - 36*zeta^2 + 
36*zeta)*q^667 + (60*zeta^5 - 60*zeta^4 - 120*zeta^2 + 120*zeta)*q^671 + 
(-4*zeta^5 - 2*zeta^4 + 2*zeta^2 - 2*zeta)*q^673 + (168*zeta^5 + 84*zeta^4 - 
84*zeta^2 + 84*zeta)*q^677 + (40*zeta^5 - 40*zeta^4 - 80*zeta^2 + 80*zeta)*q^679
+ (90*zeta^5 + 180*zeta^4 + 90*zeta^2 - 90*zeta)*q^685 + (60*zeta^5 - 60*zeta^4 
- 120*zeta^2 + 120*zeta)*q^689 + (-40*zeta^5 - 20*zeta^4 + 20*zeta^2 - 
20*zeta)*q^691 + (96*zeta^5 + 48*zeta^4 - 48*zeta^2 + 48*zeta)*q^695 + 
(-36*zeta^5 + 36*zeta^4 + 72*zeta^2 - 72*zeta)*q^697 + (-78*zeta^5 - 156*zeta^4 
- 78*zeta^2 + 78*zeta)*q^701 + (-20*zeta^5 - 40*zeta^4 - 20*zeta^2 + 
20*zeta)*q^703 + (-24*zeta^5 + 24*zeta^4 + 48*zeta^2 - 48*zeta)*q^707 + 
(-76*zeta^5 - 38*zeta^4 + 38*zeta^2 - 38*zeta)*q^709 + (-96*zeta^5 - 48*zeta^4 +
48*zeta^2 - 48*zeta)*q^713 + (180*zeta^5 - 180*zeta^4 - 360*zeta^2 + 
360*zeta)*q^715 + (-36*zeta^5 - 72*zeta^4 - 36*zeta^2 + 36*zeta)*q^719 + 
(64*zeta^5 + 128*zeta^4 + 64*zeta^2 - 64*zeta)*q^721 + (-24*zeta^5 + 24*zeta^4 +
48*zeta^2 - 48*zeta)*q^725 + (-40*zeta^5 - 20*zeta^4 + 20*zeta^2 - 
20*zeta)*q^727 + (120*zeta^5 + 60*zeta^4 - 60*zeta^2 + 60*zeta)*q^731 + 
(-28*zeta^5 + 28*zeta^4 + 56*zeta^2 - 56*zeta)*q^733 + (24*zeta^5 + 48*zeta^4 + 
24*zeta^2 - 24*zeta)*q^737 + (104*zeta^5 + 208*zeta^4 + 104*zeta^2 - 
104*zeta)*q^739 + (72*zeta^5 - 72*zeta^4 - 144*zeta^2 + 144*zeta)*q^743 + 
(180*zeta^5 + 90*zeta^4 - 90*zeta^2 + 90*zeta)*q^745 + (96*zeta^5 + 48*zeta^4 - 
48*zeta^2 + 48*zeta)*q^749 + (20*zeta^5 - 20*zeta^4 - 40*zeta^2 + 40*zeta)*q^751
+ (24*zeta^5 + 48*zeta^4 + 24*zeta^2 - 24*zeta)*q^755 + (20*zeta^5 + 40*zeta^4 +
20*zeta^2 - 20*zeta)*q^757 + (-18*zeta^5 + 18*zeta^4 + 36*zeta^2 - 
36*zeta)*q^761 + (-56*zeta^5 - 28*zeta^4 + 28*zeta^2 - 28*zeta)*q^763 + 
(-240*zeta^5 - 120*zeta^4 + 120*zeta^2 - 120*zeta)*q^767 + (-46*zeta^5 + 
46*zeta^4 + 92*zeta^2 - 92*zeta)*q^769 + (90*zeta^5 + 180*zeta^4 + 90*zeta^2 - 
90*zeta)*q^773 + (32*zeta^5 + 64*zeta^4 + 32*zeta^2 - 32*zeta)*q^775 + 
(24*zeta^5 - 24*zeta^4 - 48*zeta^2 + 48*zeta)*q^779 + (-144*zeta^5 - 72*zeta^4 +
72*zeta^2 - 72*zeta)*q^781 + (60*zeta^5 + 30*zeta^4 - 30*zeta^2 + 30*zeta)*q^785
+ (-76*zeta^5 + 76*zeta^4 + 152*zeta^2 - 152*zeta)*q^787 + (-36*zeta^5 - 
72*zeta^4 - 36*zeta^2 + 36*zeta)*q^791 + (-50*zeta^5 - 100*zeta^4 - 50*zeta^2 + 
50*zeta)*q^793 + (90*zeta^5 - 90*zeta^4 - 180*zeta^2 + 180*zeta)*q^797 + 
(24*zeta^5 + 12*zeta^4 - 12*zeta^2 + 12*zeta)*q^803 + (-72*zeta^5 + 72*zeta^4 + 
144*zeta^2 - 144*zeta)*q^805 + (6*zeta^5 + 12*zeta^4 + 6*zeta^2 - 6*zeta)*q^809 
+ (32*zeta^5 + 64*zeta^4 + 32*zeta^2 - 32*zeta)*q^811 + (24*zeta^5 - 24*zeta^4 -
48*zeta^2 + 48*zeta)*q^815 + (-80*zeta^5 - 40*zeta^4 + 40*zeta^2 - 
40*zeta)*q^817 + (-84*zeta^5 - 42*zeta^4 + 42*zeta^2 - 42*zeta)*q^821 + 
(8*zeta^5 - 8*zeta^4 - 16*zeta^2 + 16*zeta)*q^823 + (60*zeta^5 + 120*zeta^4 + 
60*zeta^2 - 60*zeta)*q^827 + (-76*zeta^5 - 152*zeta^4 - 76*zeta^2 + 
76*zeta)*q^829 + (-18*zeta^5 + 18*zeta^4 + 36*zeta^2 - 36*zeta)*q^833 + 
(216*zeta^5 + 108*zeta^4 - 108*zeta^2 + 108*zeta)*q^835 + (-72*zeta^5 - 
36*zeta^4 + 36*zeta^2 - 36*zeta)*q^839 + (40*zeta^5 - 40*zeta^4 - 80*zeta^2 + 
80*zeta)*q^841 + (-72*zeta^5 - 144*zeta^4 - 72*zeta^2 + 72*zeta)*q^845 + 
(-100*zeta^5 - 200*zeta^4 - 100*zeta^2 + 100*zeta)*q^847 + (-60*zeta^5 + 
60*zeta^4 + 120*zeta^2 - 120*zeta)*q^851 + (56*zeta^5 + 28*zeta^4 - 28*zeta^2 + 
28*zeta)*q^853 + (180*zeta^5 + 90*zeta^4 - 90*zeta^2 + 90*zeta)*q^857 + 
(-16*zeta^5 + 16*zeta^4 + 32*zeta^2 - 32*zeta)*q^859 + (-12*zeta^5 - 24*zeta^4 -
12*zeta^2 + 12*zeta)*q^863 + (54*zeta^5 + 108*zeta^4 + 54*zeta^2 - 
54*zeta)*q^865 + (-120*zeta^5 + 120*zeta^4 + 240*zeta^2 - 240*zeta)*q^869 + 
(40*zeta^5 + 20*zeta^4 - 20*zeta^2 + 20*zeta)*q^871 + (-24*zeta^5 - 12*zeta^4 + 
12*zeta^2 - 12*zeta)*q^875 + (110*zeta^5 - 110*zeta^4 - 220*zeta^2 + 
220*zeta)*q^877 + (12*zeta^5 + 24*zeta^4 + 12*zeta^2 - 12*zeta)*q^881 + 
O(q^882)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 5);
              X_18B6 := Curve(P_Q, [ PolynomialRing(RationalField(), 6) |
x[1]^2 - 1/24*x[3]*x[4] - 1/24*x[3]*x[6] + 1/8*x[4]*x[5] - 1/12*x[4]*x[6] - 
1/24*x[5]*x[6],
x[1]*x[2] + 1/6*x[3]*x[4] - 1/8*x[4]^2 + 1/12*x[4]*x[6] + 1/6*x[5]*x[6] + 
1/24*x[6]^2,
x[1]*x[3] + 3*x[1]*x[5] + x[1]*x[6] + x[2]*x[3] + 3/4*x[2]*x[4] + 1/4*x[2]*x[6],
x[1]*x[4] + 4*x[1]*x[5] + x[1]*x[6] + x[2]*x[3] + x[2]*x[4] + x[2]*x[5],
x[2]^2 + 1/3*x[3]*x[4] - x[3]*x[5] - 1/3*x[3]*x[6] - 1/2*x[4]^2 + x[4]*x[5] - 
1/3*x[4]*x[6] + 1/3*x[5]*x[6] + 1/6*x[6]^2,
x[3]^2 - 3/4*x[4]^2 + 3*x[5]^2 - 1/4*x[6]^2
]);
