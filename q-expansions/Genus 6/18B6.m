
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
              fs_18B6 := [Kq | 1/2*(zeta^4 - zeta^2 - zeta)*q^2 + 1/2*(zeta^5 + 
zeta^4 - 2*zeta^2 - 2*zeta)*q^4 + 1/2*(-zeta^5 + zeta^2 + zeta)*q^8 + 
1/2*(-zeta^5 + 2*zeta^4 - zeta^2 - zeta)*q^10 + (zeta^5 - zeta^4)*q^14 + 
1/2*(2*zeta^5 - zeta^4 - zeta^2 - zeta)*q^16 + 1/2*(-3*zeta^4 + 3*zeta^2 + 
3*zeta)*q^20 + (-zeta^5 - zeta^4 + 2*zeta^2 + 2*zeta)*q^22 + 1/2*(zeta^5 - 
zeta^2 - zeta)*q^26 + (zeta^5 - 2*zeta^4 + zeta^2 + zeta)*q^28 + 1/2*(-5*zeta^5 
+ 5*zeta^4)*q^32 + 1/2*(-6*zeta^5 + 3*zeta^4 + 3*zeta^2 + 3*zeta)*q^34 + (zeta^4
- zeta^2 - zeta)*q^38 + 1/2*(-zeta^5 - zeta^4 + 2*zeta^2 + 2*zeta)*q^40 + 
(3*zeta^5 - 3*zeta^2 - 3*zeta)*q^44 + (zeta^5 - 2*zeta^4 + zeta^2 + zeta)*q^46 +
(-zeta^5 + zeta^4)*q^50 + 1/2*(2*zeta^5 - zeta^4 - zeta^2 - zeta)*q^52 + (zeta^4
- zeta^2 - zeta)*q^56 + 1/2*(zeta^5 + zeta^4 - 2*zeta^2 - 2*zeta)*q^58 + 
(-4*zeta^5 + 4*zeta^2 + 4*zeta)*q^62 + 1/2*(-3*zeta^5 + 6*zeta^4 - 3*zeta^2 - 
3*zeta)*q^64 + 1/2*(9*zeta^5 - 9*zeta^4)*q^68 + (2*zeta^5 - zeta^4 - zeta^2 - 
zeta)*q^70 + 1/2*(-7*zeta^4 + 7*zeta^2 + 7*zeta)*q^74 + (zeta^5 + zeta^4 - 
2*zeta^2 - 2*zeta)*q^76 + 1/2*(-3*zeta^5 + 3*zeta^2 + 3*zeta)*q^80 + (-2*zeta^5 
+ 4*zeta^4 - 2*zeta^2 - 2*zeta)*q^82 + (zeta^5 - zeta^4)*q^86 + (2*zeta^5 - 
zeta^4 - zeta^2 - zeta)*q^88 + (3*zeta^4 - 3*zeta^2 - 3*zeta)*q^92 + (2*zeta^5 +
2*zeta^4 - 4*zeta^2 - 4*zeta)*q^94 + 1/2*(3*zeta^5 - 3*zeta^2 - 3*zeta)*q^98 + 
(-zeta^5 + 2*zeta^4 - zeta^2 - zeta)*q^100 + 1/2*(-zeta^5 + zeta^4)*q^104 + 
(3*zeta^4 - 3*zeta^2 - 3*zeta)*q^110 + (-zeta^5 - zeta^4 + 2*zeta^2 + 
2*zeta)*q^112 + 1/2*(-3*zeta^5 + 3*zeta^2 + 3*zeta)*q^116 + (4*zeta^5 - 8*zeta^4
+ 4*zeta^2 + 4*zeta)*q^118 + 1/2*(-7*zeta^5 + 7*zeta^4)*q^122 + (-8*zeta^5 + 
4*zeta^4 + 4*zeta^2 + 4*zeta)*q^124 + 1/2*(zeta^4 - zeta^2 - zeta)*q^128 + 
1/2*(zeta^5 + zeta^4 - 2*zeta^2 - 2*zeta)*q^130 + (5*zeta^5 - 5*zeta^2 - 
5*zeta)*q^134 + 1/2*(3*zeta^5 - 6*zeta^4 + 3*zeta^2 + 3*zeta)*q^136 + (-3*zeta^5
+ 3*zeta^4)*q^140 + (6*zeta^5 - 3*zeta^4 - 3*zeta^2 - 3*zeta)*q^142 + 
1/2*(-7*zeta^4 + 7*zeta^2 + 7*zeta)*q^146 + 1/2*(-7*zeta^5 - 7*zeta^4 + 
14*zeta^2 + 14*zeta)*q^148 + (-zeta^5 + zeta^2 + zeta)*q^152 + (-2*zeta^5 + 
4*zeta^4 - 2*zeta^2 - 2*zeta)*q^154 + (zeta^5 - zeta^4)*q^158 + 1/2*(-10*zeta^5 
+ 5*zeta^4 + 5*zeta^2 + 5*zeta)*q^160 + (-6*zeta^4 + 6*zeta^2 + 6*zeta)*q^164 + 
(-4*zeta^5 - 4*zeta^4 + 8*zeta^2 + 8*zeta)*q^166 + 1/2*(9*zeta^5 - 9*zeta^2 - 
9*zeta)*q^170 + (zeta^5 - 2*zeta^4 + zeta^2 + zeta)*q^172 + (3*zeta^5 - 
3*zeta^4)*q^176 + 1/2*(6*zeta^5 - 3*zeta^4 - 3*zeta^2 - 3*zeta)*q^178 + (-zeta^4
+ zeta^2 + zeta)*q^182 + (zeta^5 + zeta^4 - 2*zeta^2 - 2*zeta)*q^184 + 
(-6*zeta^5 + 6*zeta^2 + 6*zeta)*q^188 + (-zeta^5 + 2*zeta^4 - zeta^2 - 
zeta)*q^190 + (zeta^5 - zeta^4)*q^194 + 1/2*(6*zeta^5 - 3*zeta^4 - 3*zeta^2 - 
3*zeta)*q^196 + (-zeta^4 + zeta^2 + zeta)*q^200 + (2*zeta^5 + 2*zeta^4 - 
4*zeta^2 - 4*zeta)*q^202 + (-4*zeta^5 + 4*zeta^2 + 4*zeta)*q^206 + 1/2*(zeta^5 -
2*zeta^4 + zeta^2 + zeta)*q^208 + 1/2*(11*zeta^4 - 11*zeta^2 - 11*zeta)*q^218 + 
(3*zeta^5 + 3*zeta^4 - 6*zeta^2 - 6*zeta)*q^220 + (5*zeta^5 - 5*zeta^2 - 
5*zeta)*q^224 + 1/2*(-zeta^5 + 2*zeta^4 - zeta^2 - zeta)*q^226 + (-3*zeta^5 + 
3*zeta^4)*q^230 + 1/2*(-2*zeta^5 + zeta^4 + zeta^2 + zeta)*q^232 + (12*zeta^4 - 
12*zeta^2 - 12*zeta)*q^236 + (3*zeta^5 + 3*zeta^4 - 6*zeta^2 - 6*zeta)*q^238 + 
1/2*(-zeta^5 + zeta^2 + zeta)*q^242 + 1/2*(-7*zeta^5 + 14*zeta^4 - 7*zeta^2 - 
7*zeta)*q^244 + (4*zeta^5 - 4*zeta^4)*q^248 + 1/2*(-14*zeta^5 + 7*zeta^4 + 
7*zeta^2 + 7*zeta)*q^250 + (zeta^4 - zeta^2 - zeta)*q^254 + 1/2*(7*zeta^5 + 
7*zeta^4 - 14*zeta^2 - 14*zeta)*q^256 + 1/2*(-3*zeta^5 + 3*zeta^2 + 
3*zeta)*q^260 + (zeta^5 - 2*zeta^4 + zeta^2 + zeta)*q^262 + (2*zeta^5 - 
2*zeta^4)*q^266 + (10*zeta^5 - 5*zeta^4 - 5*zeta^2 - 5*zeta)*q^268 + 
1/2*(-9*zeta^4 + 9*zeta^2 + 9*zeta)*q^272 + 1/2*(zeta^5 + zeta^4 - 2*zeta^2 - 
2*zeta)*q^274 + (-4*zeta^5 + 4*zeta^2 + 4*zeta)*q^278 + (-zeta^5 + 2*zeta^4 - 
zeta^2 - zeta)*q^280 + (-9*zeta^5 + 9*zeta^4)*q^284 + (-2*zeta^5 + zeta^4 + 
zeta^2 + zeta)*q^286 + 1/2*(-3*zeta^4 + 3*zeta^2 + 3*zeta)*q^290 + 
1/2*(-7*zeta^5 - 7*zeta^4 + 14*zeta^2 + 14*zeta)*q^292 + 1/2*(7*zeta^5 - 
7*zeta^2 - 7*zeta)*q^296 + 1/2*(5*zeta^5 - 10*zeta^4 + 5*zeta^2 + 5*zeta)*q^298 
+ (10*zeta^5 - 10*zeta^4)*q^302 + (2*zeta^5 - zeta^4 - zeta^2 - zeta)*q^304 + 
(-6*zeta^4 + 6*zeta^2 + 6*zeta)*q^308 + (-4*zeta^5 - 4*zeta^4 + 8*zeta^2 + 
8*zeta)*q^310 + 1/2*(-17*zeta^5 + 17*zeta^2 + 17*zeta)*q^314 + (zeta^5 - 
2*zeta^4 + zeta^2 + zeta)*q^316 + 1/2*(9*zeta^5 - 9*zeta^4)*q^320 + (-4*zeta^5 +
2*zeta^4 + 2*zeta^2 + 2*zeta)*q^322 + (-8*zeta^4 + 8*zeta^2 + 8*zeta)*q^326 + 
(-2*zeta^5 - 2*zeta^4 + 4*zeta^2 + 4*zeta)*q^328 + (12*zeta^5 - 12*zeta^2 - 
12*zeta)*q^332 + (-5*zeta^5 + 10*zeta^4 - 5*zeta^2 - 5*zeta)*q^334 + (-6*zeta^5 
+ 6*zeta^4)*q^338 + 1/2*(18*zeta^5 - 9*zeta^4 - 9*zeta^2 - 9*zeta)*q^340 + 
(zeta^4 - zeta^2 - zeta)*q^344 + 1/2*(-11*zeta^5 - 11*zeta^4 + 22*zeta^2 + 
22*zeta)*q^346 + (2*zeta^5 - 2*zeta^2 - 2*zeta)*q^350 + (5*zeta^5 - 10*zeta^4 + 
5*zeta^2 + 5*zeta)*q^352 + 1/2*(-9*zeta^5 + 9*zeta^4)*q^356 + (-12*zeta^5 + 
6*zeta^4 + 6*zeta^2 + 6*zeta)*q^358 + (zeta^4 - zeta^2 - zeta)*q^362 + (-zeta^5 
- zeta^4 + 2*zeta^2 + 2*zeta)*q^364 + (3*zeta^5 - 3*zeta^2 - 3*zeta)*q^368 + 
1/2*(7*zeta^5 - 14*zeta^4 + 7*zeta^2 + 7*zeta)*q^370 + (-9*zeta^5 + 
9*zeta^4)*q^374 + (-4*zeta^5 + 2*zeta^4 + 2*zeta^2 + 2*zeta)*q^376 + (-3*zeta^4 
+ 3*zeta^2 + 3*zeta)*q^380 + (5*zeta^5 + 5*zeta^4 - 10*zeta^2 - 10*zeta)*q^382 +
1/2*(zeta^5 - zeta^2 - zeta)*q^386 + (zeta^5 - 2*zeta^4 + zeta^2 + zeta)*q^388 +
1/2*(-3*zeta^5 + 3*zeta^4)*q^392 + 1/2*(6*zeta^5 - 3*zeta^4 - 3*zeta^2 - 
3*zeta)*q^394 + (10*zeta^4 - 10*zeta^2 - 10*zeta)*q^398 + (zeta^5 + zeta^4 - 
2*zeta^2 - 2*zeta)*q^400 + (-6*zeta^5 + 6*zeta^2 + 6*zeta)*q^404 + (zeta^5 - 
2*zeta^4 + zeta^2 + zeta)*q^406 + (6*zeta^5 - 6*zeta^4)*q^410 + (-8*zeta^5 + 
4*zeta^4 + 4*zeta^2 + 4*zeta)*q^412 + 1/2*(5*zeta^4 - 5*zeta^2 - 5*zeta)*q^416 +
(-2*zeta^5 - 2*zeta^4 + 4*zeta^2 + 4*zeta)*q^418 + (5*zeta^5 - 5*zeta^2 - 
5*zeta)*q^422 + (2*zeta^5 - zeta^4 - zeta^2 - zeta)*q^430 + (8*zeta^4 - 8*zeta^2
- 8*zeta)*q^434 + 1/2*(11*zeta^5 + 11*zeta^4 - 22*zeta^2 - 22*zeta)*q^436 + 
(-3*zeta^5 + 3*zeta^2 + 3*zeta)*q^440 + 1/2*(-3*zeta^5 + 6*zeta^4 - 3*zeta^2 - 
3*zeta)*q^442 + (zeta^5 - zeta^4)*q^446 + (6*zeta^5 - 3*zeta^4 - 3*zeta^2 - 
3*zeta)*q^448 + 1/2*(-3*zeta^4 + 3*zeta^2 + 3*zeta)*q^452 + (-zeta^5 - zeta^4 + 
2*zeta^2 + 2*zeta)*q^454 + 1/2*(zeta^5 - zeta^2 - zeta)*q^458 + (-3*zeta^5 + 
6*zeta^4 - 3*zeta^2 - 3*zeta)*q^460 + 1/2*(-3*zeta^5 + 3*zeta^4)*q^464 + 
1/2*(30*zeta^5 - 15*zeta^4 - 15*zeta^2 - 15*zeta)*q^466 + (-6*zeta^4 + 6*zeta^2 
+ 6*zeta)*q^470 + (4*zeta^5 + 4*zeta^4 - 8*zeta^2 - 8*zeta)*q^472 + (-9*zeta^5 +
9*zeta^2 + 9*zeta)*q^476 + (-8*zeta^5 + 16*zeta^4 - 8*zeta^2 - 8*zeta)*q^478 + 
1/2*(29*zeta^5 - 29*zeta^4)*q^482 + 1/2*(-2*zeta^5 + zeta^4 + zeta^2 + 
zeta)*q^484 + 1/2*(-7*zeta^4 + 7*zeta^2 + 7*zeta)*q^488 + 1/2*(3*zeta^5 + 
3*zeta^4 - 6*zeta^2 - 6*zeta)*q^490 + (zeta^5 - zeta^2 - zeta)*q^494 + 
(-4*zeta^5 + 8*zeta^4 - 4*zeta^2 - 4*zeta)*q^496 + 1/2*(21*zeta^5 - 
21*zeta^4)*q^500 + (-6*zeta^5 + 3*zeta^4 + 3*zeta^2 + 3*zeta)*q^502 + (-6*zeta^4
+ 6*zeta^2 + 6*zeta)*q^506 + (zeta^5 + zeta^4 - 2*zeta^2 - 2*zeta)*q^508 + 
1/2*(-19*zeta^5 + 19*zeta^2 + 19*zeta)*q^512 + 1/2*(5*zeta^5 - 10*zeta^4 + 
5*zeta^2 + 5*zeta)*q^514 + (-7*zeta^5 + 7*zeta^4)*q^518 + 1/2*(-2*zeta^5 + 
zeta^4 + zeta^2 + zeta)*q^520 + (3*zeta^4 - 3*zeta^2 - 3*zeta)*q^524 + (2*zeta^5
+ 2*zeta^4 - 4*zeta^2 - 4*zeta)*q^526 + (2*zeta^5 - 4*zeta^4 + 2*zeta^2 + 
2*zeta)*q^532 + (-5*zeta^5 + 5*zeta^4)*q^536 + 1/2*(18*zeta^5 - 9*zeta^4 - 
9*zeta^2 - 9*zeta)*q^538 + (zeta^4 - zeta^2 - zeta)*q^542 + 1/2*(-15*zeta^5 - 
15*zeta^4 + 30*zeta^2 + 30*zeta)*q^544 + 1/2*(-3*zeta^5 + 3*zeta^2 + 
3*zeta)*q^548 + (2*zeta^5 - 4*zeta^4 + 2*zeta^2 + 2*zeta)*q^550 + (zeta^5 - 
zeta^4)*q^554 + (-8*zeta^5 + 4*zeta^4 + 4*zeta^2 + 4*zeta)*q^556 + (3*zeta^4 - 
3*zeta^2 - 3*zeta)*q^560 + 1/2*(7*zeta^5 + 7*zeta^4 - 14*zeta^2 - 14*zeta)*q^562
+ (14*zeta^5 - 14*zeta^2 - 14*zeta)*q^566 + (-3*zeta^5 + 6*zeta^4 - 3*zeta^2 - 
3*zeta)*q^568 + (3*zeta^5 - 3*zeta^4)*q^572 + (8*zeta^5 - 4*zeta^4 - 4*zeta^2 - 
4*zeta)*q^574 + (5*zeta^4 - 5*zeta^2 - 5*zeta)*q^578 + 1/2*(-3*zeta^5 - 3*zeta^4
+ 6*zeta^2 + 6*zeta)*q^580 + 1/2*(7*zeta^5 - 7*zeta^2 - 7*zeta)*q^584 + 
1/2*(11*zeta^5 - 22*zeta^4 + 11*zeta^2 + 11*zeta)*q^586 + (-12*zeta^5 + 
12*zeta^4)*q^590 + 1/2*(-14*zeta^5 + 7*zeta^4 + 7*zeta^2 + 7*zeta)*q^592 + 
1/2*(15*zeta^4 - 15*zeta^2 - 15*zeta)*q^596 + (-zeta^5 - zeta^4 + 2*zeta^2 + 
2*zeta)*q^598 + (-2*zeta^5 + 2*zeta^2 + 2*zeta)*q^602 + (10*zeta^5 - 20*zeta^4 +
10*zeta^2 + 10*zeta)*q^604 + (-5*zeta^5 + 5*zeta^4)*q^608 + 1/2*(-14*zeta^5 + 
7*zeta^4 + 7*zeta^2 + 7*zeta)*q^610 + (-8*zeta^4 + 8*zeta^2 + 8*zeta)*q^614 + 
(-2*zeta^5 - 2*zeta^4 + 4*zeta^2 + 4*zeta)*q^616 + (12*zeta^5 - 12*zeta^2 - 
12*zeta)*q^620 + (-2*zeta^5 + 4*zeta^4 - 2*zeta^2 - 2*zeta)*q^622 + 
1/2*(-25*zeta^5 + 25*zeta^4)*q^626 + 1/2*(-34*zeta^5 + 17*zeta^4 + 17*zeta^2 + 
17*zeta)*q^628 + (zeta^4 - zeta^2 - zeta)*q^632 + 1/2*(-5*zeta^5 - 5*zeta^4 + 
10*zeta^2 + 10*zeta)*q^634 + (3*zeta^5 - 3*zeta^2 - 3*zeta)*q^638 + 1/2*(-zeta^5
+ 2*zeta^4 - zeta^2 - zeta)*q^640 + (6*zeta^5 - 6*zeta^4)*q^644 + (-6*zeta^5 + 
3*zeta^4 + 3*zeta^2 + 3*zeta)*q^646 + (zeta^4 - zeta^2 - zeta)*q^650 + 
(-8*zeta^5 - 8*zeta^4 + 16*zeta^2 + 16*zeta)*q^652 + (-6*zeta^5 + 6*zeta^2 + 
6*zeta)*q^656 + (4*zeta^5 - 8*zeta^4 + 4*zeta^2 + 4*zeta)*q^658 + (zeta^5 - 
zeta^4)*q^662 + (8*zeta^5 - 4*zeta^4 - 4*zeta^2 - 4*zeta)*q^664 + (-15*zeta^4 + 
15*zeta^2 + 15*zeta)*q^668 + (5*zeta^5 + 5*zeta^4 - 10*zeta^2 - 10*zeta)*q^670 +
(-13*zeta^5 + 13*zeta^2 + 13*zeta)*q^674 + (-6*zeta^5 + 12*zeta^4 - 6*zeta^2 - 
6*zeta)*q^676 + 1/2*(-9*zeta^5 + 9*zeta^4)*q^680 + (16*zeta^5 - 8*zeta^4 - 
8*zeta^2 - 8*zeta)*q^682 + (-10*zeta^4 + 10*zeta^2 + 10*zeta)*q^686 + (-zeta^5 -
zeta^4 + 2*zeta^2 + 2*zeta)*q^688 + 1/2*(33*zeta^5 - 33*zeta^2 - 33*zeta)*q^692 
+ (zeta^5 - 2*zeta^4 + zeta^2 + zeta)*q^694 + (zeta^5 - zeta^4)*q^698 + 
(4*zeta^5 - 2*zeta^4 - 2*zeta^2 - 2*zeta)*q^700 + (9*zeta^4 - 9*zeta^2 - 
9*zeta)*q^704 + (-4*zeta^5 - 4*zeta^4 + 8*zeta^2 + 8*zeta)*q^706 + (-9*zeta^5 + 
9*zeta^2 + 9*zeta)*q^710 + 1/2*(-3*zeta^5 + 6*zeta^4 - 3*zeta^2 - 3*zeta)*q^712 
+ (18*zeta^5 - 18*zeta^4)*q^716 + (-6*zeta^5 + 3*zeta^4 + 3*zeta^2 + 
3*zeta)*q^718 + 1/2*(-15*zeta^4 + 15*zeta^2 + 15*zeta)*q^722 + (zeta^5 + zeta^4 
- 2*zeta^2 - 2*zeta)*q^724 + (zeta^5 - zeta^2 - zeta)*q^728 + 1/2*(7*zeta^5 - 
14*zeta^4 + 7*zeta^2 + 7*zeta)*q^730 + (10*zeta^5 - 10*zeta^4)*q^734 + 
(10*zeta^5 - 5*zeta^4 - 5*zeta^2 - 5*zeta)*q^736 + 1/2*(21*zeta^4 - 21*zeta^2 - 
21*zeta)*q^740 + (5*zeta^5 - 5*zeta^2 - 5*zeta)*q^746 + (-9*zeta^5 + 18*zeta^4 -
9*zeta^2 - 9*zeta)*q^748 + (-6*zeta^5 + 6*zeta^4)*q^752 + 1/2*(2*zeta^5 - zeta^4
- zeta^2 - zeta)*q^754 + (-8*zeta^4 + 8*zeta^2 + 8*zeta)*q^758 + (-zeta^5 - 
zeta^4 + 2*zeta^2 + 2*zeta)*q^760 + (-15*zeta^5 + 15*zeta^2 + 15*zeta)*q^764 + 
(-5*zeta^5 + 10*zeta^4 - 5*zeta^2 - 5*zeta)*q^766 + (6*zeta^5 - 6*zeta^4)*q^770 
+ 1/2*(2*zeta^5 - zeta^4 - zeta^2 - zeta)*q^772 + (zeta^4 - zeta^2 - zeta)*q^776
+ (8*zeta^5 + 8*zeta^4 - 16*zeta^2 - 16*zeta)*q^778 + (-9*zeta^5 + 9*zeta^2 + 
9*zeta)*q^782 + 1/2*(3*zeta^5 - 6*zeta^4 + 3*zeta^2 + 3*zeta)*q^784 + 
1/2*(-9*zeta^5 + 9*zeta^4)*q^788 + (2*zeta^5 - zeta^4 - zeta^2 - zeta)*q^790 + 
1/2*(29*zeta^4 - 29*zeta^2 - 29*zeta)*q^794 + (10*zeta^5 + 10*zeta^4 - 20*zeta^2
- 20*zeta)*q^796 + (-5*zeta^5 + 5*zeta^2 + 5*zeta)*q^800 + 1/2*(-7*zeta^5 + 
14*zeta^4 - 7*zeta^2 - 7*zeta)*q^802 + (-4*zeta^5 + 4*zeta^4)*q^806 + (-4*zeta^5
+ 2*zeta^4 + 2*zeta^2 + 2*zeta)*q^808 + (3*zeta^4 - 3*zeta^2 - 3*zeta)*q^812 + 
(7*zeta^5 + 7*zeta^4 - 14*zeta^2 - 14*zeta)*q^814 + 1/2*(19*zeta^5 - 19*zeta^2 -
19*zeta)*q^818 + (6*zeta^5 - 12*zeta^4 + 6*zeta^2 + 6*zeta)*q^820 + (4*zeta^5 - 
4*zeta^4)*q^824 + (-16*zeta^5 + 8*zeta^4 + 8*zeta^2 + 8*zeta)*q^826 + (12*zeta^4
- 12*zeta^2 - 12*zeta)*q^830 + 1/2*(3*zeta^5 + 3*zeta^4 - 6*zeta^2 - 
6*zeta)*q^832 + (6*zeta^5 - 6*zeta^2 - 6*zeta)*q^836 + (-2*zeta^5 + 4*zeta^4 - 
2*zeta^2 - 2*zeta)*q^838 + 1/2*(-25*zeta^5 + 25*zeta^4)*q^842 + (10*zeta^5 - 
5*zeta^4 - 5*zeta^2 - 5*zeta)*q^844 + (-3*zeta^5 - 3*zeta^4 + 6*zeta^2 + 
6*zeta)*q^850 + (7*zeta^5 - 7*zeta^2 - 7*zeta)*q^854 + (-3*zeta^5 + 
3*zeta^4)*q^860 + 1/2*(11*zeta^4 - 11*zeta^2 - 11*zeta)*q^866 + (8*zeta^5 + 
8*zeta^4 - 16*zeta^2 - 16*zeta)*q^868 + 1/2*(-11*zeta^5 + 11*zeta^2 + 
11*zeta)*q^872 + (2*zeta^5 - 4*zeta^4 + 2*zeta^2 + 2*zeta)*q^874 + (10*zeta^5 - 
10*zeta^4)*q^878 + (6*zeta^5 - 3*zeta^4 - 3*zeta^2 - 3*zeta)*q^880 + 
1/2*(-9*zeta^4 + 9*zeta^2 + 9*zeta)*q^884 + (-10*zeta^5 - 10*zeta^4 + 20*zeta^2 
+ 20*zeta)*q^886 + 1/2*(-9*zeta^5 + 9*zeta^2 + 9*zeta)*q^890 + (zeta^5 - 
2*zeta^4 + zeta^2 + zeta)*q^892 + (zeta^5 - zeta^4)*q^896 + (-12*zeta^5 + 
6*zeta^4 + 6*zeta^2 + 6*zeta)*q^898 + (12*zeta^4 - 12*zeta^2 - 12*zeta)*q^902 + 
1/2*(-zeta^5 - zeta^4 + 2*zeta^2 + 2*zeta)*q^904 + (3*zeta^5 - 3*zeta^2 - 
3*zeta)*q^908 + (zeta^5 - 2*zeta^4 + zeta^2 + zeta)*q^910 + 1/2*(29*zeta^5 - 
29*zeta^4)*q^914 + 1/2*(2*zeta^5 - zeta^4 - zeta^2 - zeta)*q^916 + (-3*zeta^4 + 
3*zeta^2 + 3*zeta)*q^920 + (-4*zeta^5 - 4*zeta^4 + 8*zeta^2 + 8*zeta)*q^922 + 
(-4*zeta^5 + 4*zeta^2 + 4*zeta)*q^926 + 1/2*(-5*zeta^5 + 10*zeta^4 - 5*zeta^2 - 
5*zeta)*q^928 + 1/2*(-45*zeta^5 + 45*zeta^4)*q^932 + (12*zeta^5 - 6*zeta^4 - 
6*zeta^2 - 6*zeta)*q^934 + (-10*zeta^4 + 10*zeta^2 + 10*zeta)*q^938 + (-6*zeta^5
- 6*zeta^4 + 12*zeta^2 + 12*zeta)*q^940 + (12*zeta^5 - 12*zeta^2 - 
12*zeta)*q^944 + (-2*zeta^5 + 4*zeta^4 - 2*zeta^2 - 2*zeta)*q^946 + (-2*zeta^5 +
2*zeta^4)*q^950 + (-6*zeta^5 + 3*zeta^4 + 3*zeta^2 + 3*zeta)*q^952 + (-24*zeta^4
+ 24*zeta^2 + 24*zeta)*q^956 + (-7*zeta^5 - 7*zeta^4 + 14*zeta^2 + 
14*zeta)*q^958 + 1/2*(-7*zeta^5 + 7*zeta^2 + 7*zeta)*q^962 + 1/2*(29*zeta^5 - 
58*zeta^4 + 29*zeta^2 + 29*zeta)*q^964 + 1/2*(zeta^5 - zeta^4)*q^968 + (2*zeta^5
- zeta^4 - zeta^2 - zeta)*q^970 + (-8*zeta^4 + 8*zeta^2 + 8*zeta)*q^974 + 
1/2*(7*zeta^5 + 7*zeta^4 - 14*zeta^2 - 14*zeta)*q^976 + 1/2*(-9*zeta^5 + 
9*zeta^2 + 9*zeta)*q^980 + (-5*zeta^5 + 10*zeta^4 - 5*zeta^2 - 5*zeta)*q^982 + 
1/2*(9*zeta^5 - 9*zeta^4)*q^986 + (2*zeta^5 - zeta^4 - zeta^2 - zeta)*q^988 + 
(-20*zeta^4 + 20*zeta^2 + 20*zeta)*q^992 + (-6*zeta^5 - 6*zeta^4 + 12*zeta^2 + 
12*zeta)*q^994 + (5*zeta^5 - 5*zeta^2 - 5*zeta)*q^998 + 1/2*(7*zeta^5 - 
14*zeta^4 + 7*zeta^2 + 7*zeta)*q^1000 + (9*zeta^5 - 9*zeta^4)*q^1004 + 
(-12*zeta^5 + 6*zeta^4 + 6*zeta^2 + 6*zeta)*q^1006 + O(q^1010), (-zeta^5 + 
zeta^2 + zeta)*q^2 + (zeta^5 - 2*zeta^4 + zeta^2 + zeta)*q^4 + (zeta^5 - 
zeta^4)*q^8 + (2*zeta^5 - zeta^4 - zeta^2 - zeta)*q^10 + (2*zeta^4 - 2*zeta^2 - 
2*zeta)*q^14 + (-zeta^5 - zeta^4 + 2*zeta^2 + 2*zeta)*q^16 + (3*zeta^5 - 
3*zeta^2 - 3*zeta)*q^20 + (-2*zeta^5 + 4*zeta^4 - 2*zeta^2 - 2*zeta)*q^22 + 
(-zeta^5 + zeta^4)*q^26 + (-4*zeta^5 + 2*zeta^4 + 2*zeta^2 + 2*zeta)*q^28 + 
(-5*zeta^4 + 5*zeta^2 + 5*zeta)*q^32 + (3*zeta^5 + 3*zeta^4 - 6*zeta^2 - 
6*zeta)*q^34 + (-2*zeta^5 + 2*zeta^2 + 2*zeta)*q^38 + (-zeta^5 + 2*zeta^4 - 
zeta^2 - zeta)*q^40 + (-6*zeta^5 + 6*zeta^4)*q^44 + (-4*zeta^5 + 2*zeta^4 + 
2*zeta^2 + 2*zeta)*q^46 + (-2*zeta^4 + 2*zeta^2 + 2*zeta)*q^50 + (-zeta^5 - 
zeta^4 + 2*zeta^2 + 2*zeta)*q^52 + (-2*zeta^5 + 2*zeta^2 + 2*zeta)*q^56 + 
(zeta^5 - 2*zeta^4 + zeta^2 + zeta)*q^58 + (8*zeta^5 - 8*zeta^4)*q^62 + 
(6*zeta^5 - 3*zeta^4 - 3*zeta^2 - 3*zeta)*q^64 + (9*zeta^4 - 9*zeta^2 - 
9*zeta)*q^68 + (-2*zeta^5 - 2*zeta^4 + 4*zeta^2 + 4*zeta)*q^70 + (7*zeta^5 - 
7*zeta^2 - 7*zeta)*q^74 + (2*zeta^5 - 4*zeta^4 + 2*zeta^2 + 2*zeta)*q^76 + 
(3*zeta^5 - 3*zeta^4)*q^80 + (8*zeta^5 - 4*zeta^4 - 4*zeta^2 - 4*zeta)*q^82 + 
(2*zeta^4 - 2*zeta^2 - 2*zeta)*q^86 + (-2*zeta^5 - 2*zeta^4 + 4*zeta^2 + 
4*zeta)*q^88 + (-6*zeta^5 + 6*zeta^2 + 6*zeta)*q^92 + (4*zeta^5 - 8*zeta^4 + 
4*zeta^2 + 4*zeta)*q^94 + (-3*zeta^5 + 3*zeta^4)*q^98 + (4*zeta^5 - 2*zeta^4 - 
2*zeta^2 - 2*zeta)*q^100 + (-zeta^4 + zeta^2 + zeta)*q^104 + (-6*zeta^5 + 
6*zeta^2 + 6*zeta)*q^110 + (-2*zeta^5 + 4*zeta^4 - 2*zeta^2 - 2*zeta)*q^112 + 
(3*zeta^5 - 3*zeta^4)*q^116 + (-16*zeta^5 + 8*zeta^4 + 8*zeta^2 + 8*zeta)*q^118 
+ (-7*zeta^4 + 7*zeta^2 + 7*zeta)*q^122 + (8*zeta^5 + 8*zeta^4 - 16*zeta^2 - 
16*zeta)*q^124 + (-zeta^5 + zeta^2 + zeta)*q^128 + (zeta^5 - 2*zeta^4 + zeta^2 +
zeta)*q^130 + (-10*zeta^5 + 10*zeta^4)*q^134 + (-6*zeta^5 + 3*zeta^4 + 3*zeta^2 
+ 3*zeta)*q^136 + (-6*zeta^4 + 6*zeta^2 + 6*zeta)*q^140 + (-6*zeta^5 - 6*zeta^4 
+ 12*zeta^2 + 12*zeta)*q^142 + (7*zeta^5 - 7*zeta^2 - 7*zeta)*q^146 + (-7*zeta^5
+ 14*zeta^4 - 7*zeta^2 - 7*zeta)*q^148 + (2*zeta^5 - 2*zeta^4)*q^152 + (8*zeta^5
- 4*zeta^4 - 4*zeta^2 - 4*zeta)*q^154 + (2*zeta^4 - 2*zeta^2 - 2*zeta)*q^158 + 
(5*zeta^5 + 5*zeta^4 - 10*zeta^2 - 10*zeta)*q^160 + (12*zeta^5 - 12*zeta^2 - 
12*zeta)*q^164 + (-8*zeta^5 + 16*zeta^4 - 8*zeta^2 - 8*zeta)*q^166 + (-9*zeta^5 
+ 9*zeta^4)*q^170 + (-4*zeta^5 + 2*zeta^4 + 2*zeta^2 + 2*zeta)*q^172 + (6*zeta^4
- 6*zeta^2 - 6*zeta)*q^176 + (-3*zeta^5 - 3*zeta^4 + 6*zeta^2 + 6*zeta)*q^178 + 
(2*zeta^5 - 2*zeta^2 - 2*zeta)*q^182 + (2*zeta^5 - 4*zeta^4 + 2*zeta^2 + 
2*zeta)*q^184 + (12*zeta^5 - 12*zeta^4)*q^188 + (4*zeta^5 - 2*zeta^4 - 2*zeta^2 
- 2*zeta)*q^190 + (2*zeta^4 - 2*zeta^2 - 2*zeta)*q^194 + (-3*zeta^5 - 3*zeta^4 +
6*zeta^2 + 6*zeta)*q^196 + (2*zeta^5 - 2*zeta^2 - 2*zeta)*q^200 + (4*zeta^5 - 
8*zeta^4 + 4*zeta^2 + 4*zeta)*q^202 + (8*zeta^5 - 8*zeta^4)*q^206 + (-2*zeta^5 +
zeta^4 + zeta^2 + zeta)*q^208 + (-11*zeta^5 + 11*zeta^2 + 11*zeta)*q^218 + 
(6*zeta^5 - 12*zeta^4 + 6*zeta^2 + 6*zeta)*q^220 + (-10*zeta^5 + 
10*zeta^4)*q^224 + (2*zeta^5 - zeta^4 - zeta^2 - zeta)*q^226 + (-6*zeta^4 + 
6*zeta^2 + 6*zeta)*q^230 + (zeta^5 + zeta^4 - 2*zeta^2 - 2*zeta)*q^232 + 
(-24*zeta^5 + 24*zeta^2 + 24*zeta)*q^236 + (6*zeta^5 - 12*zeta^4 + 6*zeta^2 + 
6*zeta)*q^238 + (zeta^5 - zeta^4)*q^242 + (14*zeta^5 - 7*zeta^4 - 7*zeta^2 - 
7*zeta)*q^244 + (8*zeta^4 - 8*zeta^2 - 8*zeta)*q^248 + (7*zeta^5 + 7*zeta^4 - 
14*zeta^2 - 14*zeta)*q^250 + (-2*zeta^5 + 2*zeta^2 + 2*zeta)*q^254 + (7*zeta^5 -
14*zeta^4 + 7*zeta^2 + 7*zeta)*q^256 + (3*zeta^5 - 3*zeta^4)*q^260 + (-4*zeta^5 
+ 2*zeta^4 + 2*zeta^2 + 2*zeta)*q^262 + (4*zeta^4 - 4*zeta^2 - 4*zeta)*q^266 + 
(-10*zeta^5 - 10*zeta^4 + 20*zeta^2 + 20*zeta)*q^268 + (9*zeta^5 - 9*zeta^2 - 
9*zeta)*q^272 + (zeta^5 - 2*zeta^4 + zeta^2 + zeta)*q^274 + (8*zeta^5 - 
8*zeta^4)*q^278 + (4*zeta^5 - 2*zeta^4 - 2*zeta^2 - 2*zeta)*q^280 + (-18*zeta^4 
+ 18*zeta^2 + 18*zeta)*q^284 + (2*zeta^5 + 2*zeta^4 - 4*zeta^2 - 4*zeta)*q^286 +
(3*zeta^5 - 3*zeta^2 - 3*zeta)*q^290 + (-7*zeta^5 + 14*zeta^4 - 7*zeta^2 - 
7*zeta)*q^292 + (-7*zeta^5 + 7*zeta^4)*q^296 + (-10*zeta^5 + 5*zeta^4 + 5*zeta^2
+ 5*zeta)*q^298 + (20*zeta^4 - 20*zeta^2 - 20*zeta)*q^302 + (-2*zeta^5 - 
2*zeta^4 + 4*zeta^2 + 4*zeta)*q^304 + (12*zeta^5 - 12*zeta^2 - 12*zeta)*q^308 + 
(-8*zeta^5 + 16*zeta^4 - 8*zeta^2 - 8*zeta)*q^310 + (17*zeta^5 - 
17*zeta^4)*q^314 + (-4*zeta^5 + 2*zeta^4 + 2*zeta^2 + 2*zeta)*q^316 + (9*zeta^4 
- 9*zeta^2 - 9*zeta)*q^320 + (4*zeta^5 + 4*zeta^4 - 8*zeta^2 - 8*zeta)*q^322 + 
(16*zeta^5 - 16*zeta^2 - 16*zeta)*q^326 + (-4*zeta^5 + 8*zeta^4 - 4*zeta^2 - 
4*zeta)*q^328 + (-24*zeta^5 + 24*zeta^4)*q^332 + (20*zeta^5 - 10*zeta^4 - 
10*zeta^2 - 10*zeta)*q^334 + (-12*zeta^4 + 12*zeta^2 + 12*zeta)*q^338 + 
(-9*zeta^5 - 9*zeta^4 + 18*zeta^2 + 18*zeta)*q^340 + (-2*zeta^5 + 2*zeta^2 + 
2*zeta)*q^344 + (-11*zeta^5 + 22*zeta^4 - 11*zeta^2 - 11*zeta)*q^346 + 
(-4*zeta^5 + 4*zeta^4)*q^350 + (-20*zeta^5 + 10*zeta^4 + 10*zeta^2 + 
10*zeta)*q^352 + (-9*zeta^4 + 9*zeta^2 + 9*zeta)*q^356 + (12*zeta^5 + 12*zeta^4 
- 24*zeta^2 - 24*zeta)*q^358 + (-2*zeta^5 + 2*zeta^2 + 2*zeta)*q^362 + 
(-2*zeta^5 + 4*zeta^4 - 2*zeta^2 - 2*zeta)*q^364 + (-6*zeta^5 + 6*zeta^4)*q^368 
+ (-14*zeta^5 + 7*zeta^4 + 7*zeta^2 + 7*zeta)*q^370 + (-18*zeta^4 + 18*zeta^2 + 
18*zeta)*q^374 + (4*zeta^5 + 4*zeta^4 - 8*zeta^2 - 8*zeta)*q^376 + (6*zeta^5 - 
6*zeta^2 - 6*zeta)*q^380 + (10*zeta^5 - 20*zeta^4 + 10*zeta^2 + 10*zeta)*q^382 +
(-zeta^5 + zeta^4)*q^386 + (-4*zeta^5 + 2*zeta^4 + 2*zeta^2 + 2*zeta)*q^388 + 
(-3*zeta^4 + 3*zeta^2 + 3*zeta)*q^392 + (-3*zeta^5 - 3*zeta^4 + 6*zeta^2 + 
6*zeta)*q^394 + (-20*zeta^5 + 20*zeta^2 + 20*zeta)*q^398 + (2*zeta^5 - 4*zeta^4 
+ 2*zeta^2 + 2*zeta)*q^400 + (12*zeta^5 - 12*zeta^4)*q^404 + (-4*zeta^5 + 
2*zeta^4 + 2*zeta^2 + 2*zeta)*q^406 + (12*zeta^4 - 12*zeta^2 - 12*zeta)*q^410 + 
(8*zeta^5 + 8*zeta^4 - 16*zeta^2 - 16*zeta)*q^412 + (-5*zeta^5 + 5*zeta^2 + 
5*zeta)*q^416 + (-4*zeta^5 + 8*zeta^4 - 4*zeta^2 - 4*zeta)*q^418 + (-10*zeta^5 +
10*zeta^4)*q^422 + (-2*zeta^5 - 2*zeta^4 + 4*zeta^2 + 4*zeta)*q^430 + 
(-16*zeta^5 + 16*zeta^2 + 16*zeta)*q^434 + (11*zeta^5 - 22*zeta^4 + 11*zeta^2 + 
11*zeta)*q^436 + (6*zeta^5 - 6*zeta^4)*q^440 + (6*zeta^5 - 3*zeta^4 - 3*zeta^2 -
3*zeta)*q^442 + (2*zeta^4 - 2*zeta^2 - 2*zeta)*q^446 + (-6*zeta^5 - 6*zeta^4 + 
12*zeta^2 + 12*zeta)*q^448 + (3*zeta^5 - 3*zeta^2 - 3*zeta)*q^452 + (-2*zeta^5 +
4*zeta^4 - 2*zeta^2 - 2*zeta)*q^454 + (-zeta^5 + zeta^4)*q^458 + (12*zeta^5 - 
6*zeta^4 - 6*zeta^2 - 6*zeta)*q^460 + (-3*zeta^4 + 3*zeta^2 + 3*zeta)*q^464 + 
(-15*zeta^5 - 15*zeta^4 + 30*zeta^2 + 30*zeta)*q^466 + (12*zeta^5 - 12*zeta^2 - 
12*zeta)*q^470 + (8*zeta^5 - 16*zeta^4 + 8*zeta^2 + 8*zeta)*q^472 + (18*zeta^5 -
18*zeta^4)*q^476 + (32*zeta^5 - 16*zeta^4 - 16*zeta^2 - 16*zeta)*q^478 + 
(29*zeta^4 - 29*zeta^2 - 29*zeta)*q^482 + (zeta^5 + zeta^4 - 2*zeta^2 - 
2*zeta)*q^484 + (7*zeta^5 - 7*zeta^2 - 7*zeta)*q^488 + (3*zeta^5 - 6*zeta^4 + 
3*zeta^2 + 3*zeta)*q^490 + (-2*zeta^5 + 2*zeta^4)*q^494 + (16*zeta^5 - 8*zeta^4 
- 8*zeta^2 - 8*zeta)*q^496 + (21*zeta^4 - 21*zeta^2 - 21*zeta)*q^500 + (6*zeta^5
+ 6*zeta^4 - 12*zeta^2 - 12*zeta)*q^502 + (12*zeta^5 - 12*zeta^2 - 
12*zeta)*q^506 + (2*zeta^5 - 4*zeta^4 + 2*zeta^2 + 2*zeta)*q^508 + (19*zeta^5 - 
19*zeta^4)*q^512 + (-10*zeta^5 + 5*zeta^4 + 5*zeta^2 + 5*zeta)*q^514 + 
(-14*zeta^4 + 14*zeta^2 + 14*zeta)*q^518 + (zeta^5 + zeta^4 - 2*zeta^2 - 
2*zeta)*q^520 + (-6*zeta^5 + 6*zeta^2 + 6*zeta)*q^524 + (4*zeta^5 - 8*zeta^4 + 
4*zeta^2 + 4*zeta)*q^526 + (-8*zeta^5 + 4*zeta^4 + 4*zeta^2 + 4*zeta)*q^532 + 
(-10*zeta^4 + 10*zeta^2 + 10*zeta)*q^536 + (-9*zeta^5 - 9*zeta^4 + 18*zeta^2 + 
18*zeta)*q^538 + (-2*zeta^5 + 2*zeta^2 + 2*zeta)*q^542 + (-15*zeta^5 + 30*zeta^4
- 15*zeta^2 - 15*zeta)*q^544 + (3*zeta^5 - 3*zeta^4)*q^548 + (-8*zeta^5 + 
4*zeta^4 + 4*zeta^2 + 4*zeta)*q^550 + (2*zeta^4 - 2*zeta^2 - 2*zeta)*q^554 + 
(8*zeta^5 + 8*zeta^4 - 16*zeta^2 - 16*zeta)*q^556 + (-6*zeta^5 + 6*zeta^2 + 
6*zeta)*q^560 + (7*zeta^5 - 14*zeta^4 + 7*zeta^2 + 7*zeta)*q^562 + (-28*zeta^5 +
28*zeta^4)*q^566 + (12*zeta^5 - 6*zeta^4 - 6*zeta^2 - 6*zeta)*q^568 + (6*zeta^4 
- 6*zeta^2 - 6*zeta)*q^572 + (-8*zeta^5 - 8*zeta^4 + 16*zeta^2 + 16*zeta)*q^574 
+ (-10*zeta^5 + 10*zeta^2 + 10*zeta)*q^578 + (-3*zeta^5 + 6*zeta^4 - 3*zeta^2 - 
3*zeta)*q^580 + (-7*zeta^5 + 7*zeta^4)*q^584 + (-22*zeta^5 + 11*zeta^4 + 
11*zeta^2 + 11*zeta)*q^586 + (-24*zeta^4 + 24*zeta^2 + 24*zeta)*q^590 + 
(7*zeta^5 + 7*zeta^4 - 14*zeta^2 - 14*zeta)*q^592 + (-15*zeta^5 + 15*zeta^2 + 
15*zeta)*q^596 + (-2*zeta^5 + 4*zeta^4 - 2*zeta^2 - 2*zeta)*q^598 + (4*zeta^5 - 
4*zeta^4)*q^602 + (-40*zeta^5 + 20*zeta^4 + 20*zeta^2 + 20*zeta)*q^604 + 
(-10*zeta^4 + 10*zeta^2 + 10*zeta)*q^608 + (7*zeta^5 + 7*zeta^4 - 14*zeta^2 - 
14*zeta)*q^610 + (16*zeta^5 - 16*zeta^2 - 16*zeta)*q^614 + (-4*zeta^5 + 8*zeta^4
- 4*zeta^2 - 4*zeta)*q^616 + (-24*zeta^5 + 24*zeta^4)*q^620 + (8*zeta^5 - 
4*zeta^4 - 4*zeta^2 - 4*zeta)*q^622 + (-25*zeta^4 + 25*zeta^2 + 25*zeta)*q^626 +
(17*zeta^5 + 17*zeta^4 - 34*zeta^2 - 34*zeta)*q^628 + (-2*zeta^5 + 2*zeta^2 + 
2*zeta)*q^632 + (-5*zeta^5 + 10*zeta^4 - 5*zeta^2 - 5*zeta)*q^634 + (-6*zeta^5 +
6*zeta^4)*q^638 + (2*zeta^5 - zeta^4 - zeta^2 - zeta)*q^640 + (12*zeta^4 - 
12*zeta^2 - 12*zeta)*q^644 + (6*zeta^5 + 6*zeta^4 - 12*zeta^2 - 12*zeta)*q^646 +
(-2*zeta^5 + 2*zeta^2 + 2*zeta)*q^650 + (-16*zeta^5 + 32*zeta^4 - 16*zeta^2 - 
16*zeta)*q^652 + (12*zeta^5 - 12*zeta^4)*q^656 + (-16*zeta^5 + 8*zeta^4 + 
8*zeta^2 + 8*zeta)*q^658 + (2*zeta^4 - 2*zeta^2 - 2*zeta)*q^662 + (-8*zeta^5 - 
8*zeta^4 + 16*zeta^2 + 16*zeta)*q^664 + (30*zeta^5 - 30*zeta^2 - 30*zeta)*q^668 
+ (10*zeta^5 - 20*zeta^4 + 10*zeta^2 + 10*zeta)*q^670 + (26*zeta^5 - 
26*zeta^4)*q^674 + (24*zeta^5 - 12*zeta^4 - 12*zeta^2 - 12*zeta)*q^676 + 
(-9*zeta^4 + 9*zeta^2 + 9*zeta)*q^680 + (-16*zeta^5 - 16*zeta^4 + 32*zeta^2 + 
32*zeta)*q^682 + (20*zeta^5 - 20*zeta^2 - 20*zeta)*q^686 + (-2*zeta^5 + 4*zeta^4
- 2*zeta^2 - 2*zeta)*q^688 + (-33*zeta^5 + 33*zeta^4)*q^692 + (-4*zeta^5 + 
2*zeta^4 + 2*zeta^2 + 2*zeta)*q^694 + (2*zeta^4 - 2*zeta^2 - 2*zeta)*q^698 + 
(-4*zeta^5 - 4*zeta^4 + 8*zeta^2 + 8*zeta)*q^700 + (-18*zeta^5 + 18*zeta^2 + 
18*zeta)*q^704 + (-8*zeta^5 + 16*zeta^4 - 8*zeta^2 - 8*zeta)*q^706 + (18*zeta^5 
- 18*zeta^4)*q^710 + (6*zeta^5 - 3*zeta^4 - 3*zeta^2 - 3*zeta)*q^712 + 
(36*zeta^4 - 36*zeta^2 - 36*zeta)*q^716 + (6*zeta^5 + 6*zeta^4 - 12*zeta^2 - 
12*zeta)*q^718 + (15*zeta^5 - 15*zeta^2 - 15*zeta)*q^722 + (2*zeta^5 - 4*zeta^4 
+ 2*zeta^2 + 2*zeta)*q^724 + (-2*zeta^5 + 2*zeta^4)*q^728 + (-14*zeta^5 + 
7*zeta^4 + 7*zeta^2 + 7*zeta)*q^730 + (20*zeta^4 - 20*zeta^2 - 20*zeta)*q^734 + 
(-10*zeta^5 - 10*zeta^4 + 20*zeta^2 + 20*zeta)*q^736 + (-21*zeta^5 + 21*zeta^2 +
21*zeta)*q^740 + (-10*zeta^5 + 10*zeta^4)*q^746 + (36*zeta^5 - 18*zeta^4 - 
18*zeta^2 - 18*zeta)*q^748 + (-12*zeta^4 + 12*zeta^2 + 12*zeta)*q^752 + (-zeta^5
- zeta^4 + 2*zeta^2 + 2*zeta)*q^754 + (16*zeta^5 - 16*zeta^2 - 16*zeta)*q^758 + 
(-2*zeta^5 + 4*zeta^4 - 2*zeta^2 - 2*zeta)*q^760 + (30*zeta^5 - 30*zeta^4)*q^764
+ (20*zeta^5 - 10*zeta^4 - 10*zeta^2 - 10*zeta)*q^766 + (12*zeta^4 - 12*zeta^2 -
12*zeta)*q^770 + (-zeta^5 - zeta^4 + 2*zeta^2 + 2*zeta)*q^772 + (-2*zeta^5 + 
2*zeta^2 + 2*zeta)*q^776 + (16*zeta^5 - 32*zeta^4 + 16*zeta^2 + 16*zeta)*q^778 +
(18*zeta^5 - 18*zeta^4)*q^782 + (-6*zeta^5 + 3*zeta^4 + 3*zeta^2 + 3*zeta)*q^784
+ (-9*zeta^4 + 9*zeta^2 + 9*zeta)*q^788 + (-2*zeta^5 - 2*zeta^4 + 4*zeta^2 + 
4*zeta)*q^790 + (-29*zeta^5 + 29*zeta^2 + 29*zeta)*q^794 + (20*zeta^5 - 
40*zeta^4 + 20*zeta^2 + 20*zeta)*q^796 + (10*zeta^5 - 10*zeta^4)*q^800 + 
(14*zeta^5 - 7*zeta^4 - 7*zeta^2 - 7*zeta)*q^802 + (-8*zeta^4 + 8*zeta^2 + 
8*zeta)*q^806 + (4*zeta^5 + 4*zeta^4 - 8*zeta^2 - 8*zeta)*q^808 + (-6*zeta^5 + 
6*zeta^2 + 6*zeta)*q^812 + (14*zeta^5 - 28*zeta^4 + 14*zeta^2 + 14*zeta)*q^814 +
(-19*zeta^5 + 19*zeta^4)*q^818 + (-24*zeta^5 + 12*zeta^4 + 12*zeta^2 + 
12*zeta)*q^820 + (8*zeta^4 - 8*zeta^2 - 8*zeta)*q^824 + (16*zeta^5 + 16*zeta^4 -
32*zeta^2 - 32*zeta)*q^826 + (-24*zeta^5 + 24*zeta^2 + 24*zeta)*q^830 + 
(3*zeta^5 - 6*zeta^4 + 3*zeta^2 + 3*zeta)*q^832 + (-12*zeta^5 + 12*zeta^4)*q^836
+ (8*zeta^5 - 4*zeta^4 - 4*zeta^2 - 4*zeta)*q^838 + (-25*zeta^4 + 25*zeta^2 + 
25*zeta)*q^842 + (-10*zeta^5 - 10*zeta^4 + 20*zeta^2 + 20*zeta)*q^844 + 
(-6*zeta^5 + 12*zeta^4 - 6*zeta^2 - 6*zeta)*q^850 + (-14*zeta^5 + 
14*zeta^4)*q^854 + (-6*zeta^4 + 6*zeta^2 + 6*zeta)*q^860 + (-11*zeta^5 + 
11*zeta^2 + 11*zeta)*q^866 + (16*zeta^5 - 32*zeta^4 + 16*zeta^2 + 16*zeta)*q^868
+ (11*zeta^5 - 11*zeta^4)*q^872 + (-8*zeta^5 + 4*zeta^4 + 4*zeta^2 + 
4*zeta)*q^874 + (20*zeta^4 - 20*zeta^2 - 20*zeta)*q^878 + (-6*zeta^5 - 6*zeta^4 
+ 12*zeta^2 + 12*zeta)*q^880 + (9*zeta^5 - 9*zeta^2 - 9*zeta)*q^884 + 
(-20*zeta^5 + 40*zeta^4 - 20*zeta^2 - 20*zeta)*q^886 + (9*zeta^5 - 
9*zeta^4)*q^890 + (-4*zeta^5 + 2*zeta^4 + 2*zeta^2 + 2*zeta)*q^892 + (2*zeta^4 -
2*zeta^2 - 2*zeta)*q^896 + (12*zeta^5 + 12*zeta^4 - 24*zeta^2 - 24*zeta)*q^898 +
(-24*zeta^5 + 24*zeta^2 + 24*zeta)*q^902 + (-zeta^5 + 2*zeta^4 - zeta^2 - 
zeta)*q^904 + (-6*zeta^5 + 6*zeta^4)*q^908 + (-4*zeta^5 + 2*zeta^4 + 2*zeta^2 + 
2*zeta)*q^910 + (29*zeta^4 - 29*zeta^2 - 29*zeta)*q^914 + (-zeta^5 - zeta^4 + 
2*zeta^2 + 2*zeta)*q^916 + (6*zeta^5 - 6*zeta^2 - 6*zeta)*q^920 + (-8*zeta^5 + 
16*zeta^4 - 8*zeta^2 - 8*zeta)*q^922 + (8*zeta^5 - 8*zeta^4)*q^926 + (10*zeta^5 
- 5*zeta^4 - 5*zeta^2 - 5*zeta)*q^928 + (-45*zeta^4 + 45*zeta^2 + 45*zeta)*q^932
+ (-12*zeta^5 - 12*zeta^4 + 24*zeta^2 + 24*zeta)*q^934 + (20*zeta^5 - 20*zeta^2 
- 20*zeta)*q^938 + (-12*zeta^5 + 24*zeta^4 - 12*zeta^2 - 12*zeta)*q^940 + 
(-24*zeta^5 + 24*zeta^4)*q^944 + (8*zeta^5 - 4*zeta^4 - 4*zeta^2 - 4*zeta)*q^946
+ (-4*zeta^4 + 4*zeta^2 + 4*zeta)*q^950 + (6*zeta^5 + 6*zeta^4 - 12*zeta^2 - 
12*zeta)*q^952 + (48*zeta^5 - 48*zeta^2 - 48*zeta)*q^956 + (-14*zeta^5 + 
28*zeta^4 - 14*zeta^2 - 14*zeta)*q^958 + (7*zeta^5 - 7*zeta^4)*q^962 + 
(-58*zeta^5 + 29*zeta^4 + 29*zeta^2 + 29*zeta)*q^964 + (zeta^4 - zeta^2 - 
zeta)*q^968 + (-2*zeta^5 - 2*zeta^4 + 4*zeta^2 + 4*zeta)*q^970 + (16*zeta^5 - 
16*zeta^2 - 16*zeta)*q^974 + (7*zeta^5 - 14*zeta^4 + 7*zeta^2 + 7*zeta)*q^976 + 
(9*zeta^5 - 9*zeta^4)*q^980 + (20*zeta^5 - 10*zeta^4 - 10*zeta^2 - 
10*zeta)*q^982 + (9*zeta^4 - 9*zeta^2 - 9*zeta)*q^986 + (-2*zeta^5 - 2*zeta^4 + 
4*zeta^2 + 4*zeta)*q^988 + (40*zeta^5 - 40*zeta^2 - 40*zeta)*q^992 + (-12*zeta^5
+ 24*zeta^4 - 12*zeta^2 - 12*zeta)*q^994 + (-10*zeta^5 + 10*zeta^4)*q^998 + 
(-14*zeta^5 + 7*zeta^4 + 7*zeta^2 + 7*zeta)*q^1000 + (18*zeta^4 - 18*zeta^2 - 
18*zeta)*q^1004 + (12*zeta^5 + 12*zeta^4 - 24*zeta^2 - 24*zeta)*q^1006 + 
O(q^1010), (-2*zeta^3 + 1)*q + (6*zeta^3 - 3)*q^5 + (2*zeta^3 - 1)*q^7 + 
(6*zeta^3 - 3)*q^11 + (2*zeta^3 - 1)*q^13 + (12*zeta^3 - 6)*q^17 + (8*zeta^3 - 
4)*q^19 + (-6*zeta^3 + 3)*q^23 + (-8*zeta^3 + 4)*q^25 + (6*zeta^3 - 3)*q^29 + 
(-10*zeta^3 + 5)*q^31 + (-6*zeta^3 + 3)*q^35 + (-4*zeta^3 + 2)*q^37 + (6*zeta^3 
- 3)*q^41 + (2*zeta^3 - 1)*q^43 + (-18*zeta^3 + 9)*q^47 + (12*zeta^3 - 6)*q^49 +
(-12*zeta^3 + 6)*q^53 + (-18*zeta^3 + 9)*q^55 + (-6*zeta^3 + 3)*q^59 + 
(26*zeta^3 - 13)*q^61 + (-6*zeta^3 + 3)*q^65 + (14*zeta^3 - 7)*q^67 + 
(-24*zeta^3 + 12)*q^71 + (20*zeta^3 - 10)*q^73 + (-6*zeta^3 + 3)*q^77 + 
(-22*zeta^3 + 11)*q^79 + (-18*zeta^3 + 9)*q^83 + (-36*zeta^3 + 18)*q^85 + 
(12*zeta^3 - 6)*q^89 + (-2*zeta^3 + 1)*q^91 + (-24*zeta^3 + 12)*q^95 + 
(-22*zeta^3 + 11)*q^97 + (30*zeta^3 - 15)*q^101 + (14*zeta^3 - 7)*q^103 + 
(24*zeta^3 - 12)*q^107 + (-4*zeta^3 + 2)*q^109 + (-18*zeta^3 + 9)*q^113 + 
(18*zeta^3 - 9)*q^115 + (-12*zeta^3 + 6)*q^119 + (4*zeta^3 - 2)*q^121 + 
(-6*zeta^3 + 3)*q^125 + (32*zeta^3 - 16)*q^127 + (42*zeta^3 - 21)*q^131 + 
(-8*zeta^3 + 4)*q^133 + (6*zeta^3 - 3)*q^137 + (-10*zeta^3 + 5)*q^139 + 
(-6*zeta^3 + 3)*q^143 + (-18*zeta^3 + 9)*q^145 + (30*zeta^3 - 15)*q^149 + 
(26*zeta^3 - 13)*q^151 + (30*zeta^3 - 15)*q^155 + (26*zeta^3 - 13)*q^157 + 
(6*zeta^3 - 3)*q^161 + (-40*zeta^3 + 20)*q^163 + (18*zeta^3 - 9)*q^167 + 
(24*zeta^3 - 12)*q^169 + (-18*zeta^3 + 9)*q^173 + (8*zeta^3 - 4)*q^175 + 
(24*zeta^3 - 12)*q^179 + (-4*zeta^3 + 2)*q^181 + (12*zeta^3 - 6)*q^185 + 
(-36*zeta^3 + 18)*q^187 + (30*zeta^3 - 15)*q^191 + (-22*zeta^3 + 11)*q^193 + 
(12*zeta^3 - 6)*q^197 + (8*zeta^3 - 4)*q^199 + (-6*zeta^3 + 3)*q^203 + 
(-18*zeta^3 + 9)*q^205 + (-24*zeta^3 + 12)*q^209 + (-34*zeta^3 + 17)*q^211 + 
(-6*zeta^3 + 3)*q^215 + (10*zeta^3 - 5)*q^217 + (-12*zeta^3 + 6)*q^221 + 
(2*zeta^3 - 1)*q^223 + (54*zeta^3 - 27)*q^227 + (26*zeta^3 - 13)*q^229 + 
(-12*zeta^3 + 6)*q^233 + (54*zeta^3 - 27)*q^235 + (-54*zeta^3 + 27)*q^239 + 
(2*zeta^3 - 1)*q^241 + (-36*zeta^3 + 18)*q^245 + (-8*zeta^3 + 4)*q^247 + 
(24*zeta^3 - 12)*q^251 + (18*zeta^3 - 9)*q^253 + (-18*zeta^3 + 9)*q^257 + 
(4*zeta^3 - 2)*q^259 + (-42*zeta^3 + 21)*q^263 + (36*zeta^3 - 18)*q^265 + 
(-12*zeta^3 + 6)*q^269 + (-16*zeta^3 + 8)*q^271 + (24*zeta^3 - 12)*q^275 + 
(2*zeta^3 - 1)*q^277 + (6*zeta^3 - 3)*q^281 + (-10*zeta^3 + 5)*q^283 + 
(-6*zeta^3 + 3)*q^287 + (-38*zeta^3 + 19)*q^289 + (-42*zeta^3 + 21)*q^293 + 
(18*zeta^3 - 9)*q^295 + (6*zeta^3 - 3)*q^299 + (-2*zeta^3 + 1)*q^301 + 
(-78*zeta^3 + 39)*q^305 + (-40*zeta^3 + 20)*q^307 + (42*zeta^3 - 21)*q^311 + 
(2*zeta^3 - 1)*q^313 + (-42*zeta^3 + 21)*q^317 + (-18*zeta^3 + 9)*q^319 + 
(-48*zeta^3 + 24)*q^323 + (8*zeta^3 - 4)*q^325 + (18*zeta^3 - 9)*q^329 + 
(-22*zeta^3 + 11)*q^331 + (-42*zeta^3 + 21)*q^335 + (-46*zeta^3 + 23)*q^337 + 
(30*zeta^3 - 15)*q^341 + (-26*zeta^3 + 13)*q^343 + (18*zeta^3 - 9)*q^347 + 
(2*zeta^3 - 1)*q^349 + (6*zeta^3 - 3)*q^353 + (72*zeta^3 - 36)*q^355 + (6*zeta^3
- 3)*q^361 + (-60*zeta^3 + 30)*q^365 + (26*zeta^3 - 13)*q^367 + (12*zeta^3 - 
6)*q^371 + (2*zeta^3 - 1)*q^373 + (-6*zeta^3 + 3)*q^377 + (32*zeta^3 - 16)*q^379
+ (-30*zeta^3 + 15)*q^383 + (18*zeta^3 - 9)*q^385 + (30*zeta^3 - 15)*q^389 + 
(36*zeta^3 - 18)*q^391 + (66*zeta^3 - 33)*q^395 + (-4*zeta^3 + 2)*q^397 + 
(6*zeta^3 - 3)*q^401 + (10*zeta^3 - 5)*q^403 + (12*zeta^3 - 6)*q^407 + 
(-46*zeta^3 + 23)*q^409 + (6*zeta^3 - 3)*q^413 + (54*zeta^3 - 27)*q^415 + 
(18*zeta^3 - 9)*q^419 + (-70*zeta^3 + 35)*q^421 + (48*zeta^3 - 24)*q^425 + 
(-26*zeta^3 + 13)*q^427 + (48*zeta^3 - 24)*q^431 + (68*zeta^3 - 34)*q^433 + 
(24*zeta^3 - 12)*q^437 + (-70*zeta^3 + 35)*q^439 + (-18*zeta^3 + 9)*q^443 + 
(-36*zeta^3 + 18)*q^445 + (-36*zeta^3 + 18)*q^449 + (-18*zeta^3 + 9)*q^451 + 
(6*zeta^3 - 3)*q^455 + (74*zeta^3 - 37)*q^457 + (6*zeta^3 - 3)*q^461 + 
(38*zeta^3 - 19)*q^463 + (24*zeta^3 - 12)*q^467 + (-14*zeta^3 + 7)*q^469 + 
(-6*zeta^3 + 3)*q^473 + (32*zeta^3 - 16)*q^475 + (54*zeta^3 - 27)*q^479 + 
(4*zeta^3 - 2)*q^481 + (66*zeta^3 - 33)*q^485 + (-64*zeta^3 + 32)*q^487 + 
(-6*zeta^3 + 3)*q^491 + (-36*zeta^3 + 18)*q^493 + (24*zeta^3 - 12)*q^497 + 
(-10*zeta^3 + 5)*q^499 + (-72*zeta^3 + 36)*q^503 + (-90*zeta^3 + 45)*q^505 + 
(78*zeta^3 - 39)*q^509 + (-20*zeta^3 + 10)*q^511 + (-42*zeta^3 + 21)*q^515 + 
(54*zeta^3 - 27)*q^517 + (84*zeta^3 - 42)*q^521 + (-16*zeta^3 + 8)*q^523 + 
(60*zeta^3 - 30)*q^527 + (28*zeta^3 - 14)*q^529 + (-6*zeta^3 + 3)*q^533 + 
(-72*zeta^3 + 36)*q^535 + (-36*zeta^3 + 18)*q^539 + (68*zeta^3 - 34)*q^541 + 
(12*zeta^3 - 6)*q^545 + (26*zeta^3 - 13)*q^547 + (-24*zeta^3 + 12)*q^551 + 
(22*zeta^3 - 11)*q^553 + (-60*zeta^3 + 30)*q^557 + (-2*zeta^3 + 1)*q^559 + 
(18*zeta^3 - 9)*q^563 + (54*zeta^3 - 27)*q^565 + (30*zeta^3 - 15)*q^569 + 
(62*zeta^3 - 31)*q^571 + (-24*zeta^3 + 12)*q^575 + (20*zeta^3 - 10)*q^577 + 
(18*zeta^3 - 9)*q^581 + (36*zeta^3 - 18)*q^583 + (30*zeta^3 - 15)*q^587 + 
(40*zeta^3 - 20)*q^589 + (12*zeta^3 - 6)*q^593 + (36*zeta^3 - 18)*q^595 + 
(-78*zeta^3 + 39)*q^599 + (-70*zeta^3 + 35)*q^601 + (-12*zeta^3 + 6)*q^605 + 
(-82*zeta^3 + 41)*q^607 + (18*zeta^3 - 9)*q^611 + (-52*zeta^3 + 26)*q^613 + 
(6*zeta^3 - 3)*q^617 + (26*zeta^3 - 13)*q^619 + (-12*zeta^3 + 6)*q^623 + 
(58*zeta^3 - 29)*q^625 + (24*zeta^3 - 12)*q^629 + (32*zeta^3 - 16)*q^631 + 
(-96*zeta^3 + 48)*q^635 + (-12*zeta^3 + 6)*q^637 + (-66*zeta^3 + 33)*q^641 + 
(-82*zeta^3 + 41)*q^643 + (18*zeta^3 - 9)*q^649 + (-42*zeta^3 + 21)*q^653 + 
(-126*zeta^3 + 63)*q^655 + (-42*zeta^3 + 21)*q^659 + (-22*zeta^3 + 11)*q^661 + 
(24*zeta^3 - 12)*q^665 + (18*zeta^3 - 9)*q^667 + (-78*zeta^3 + 39)*q^671 + 
(-22*zeta^3 + 11)*q^673 + (30*zeta^3 - 15)*q^677 + (22*zeta^3 - 11)*q^679 + 
(-72*zeta^3 + 36)*q^683 + (-18*zeta^3 + 9)*q^685 + (12*zeta^3 - 6)*q^689 + 
(2*zeta^3 - 1)*q^691 + (30*zeta^3 - 15)*q^695 + (-36*zeta^3 + 18)*q^697 + 
(-12*zeta^3 + 6)*q^701 + (16*zeta^3 - 8)*q^703 + (-30*zeta^3 + 15)*q^707 + 
(50*zeta^3 - 25)*q^709 + (-30*zeta^3 + 15)*q^713 + (18*zeta^3 - 9)*q^715 + 
(-14*zeta^3 + 7)*q^721 + (24*zeta^3 - 12)*q^725 + (74*zeta^3 - 37)*q^727 + 
(-12*zeta^3 + 6)*q^731 + (-46*zeta^3 + 23)*q^733 + (-42*zeta^3 + 21)*q^737 + 
(32*zeta^3 - 16)*q^739 + (18*zeta^3 - 9)*q^743 + (-90*zeta^3 + 45)*q^745 + 
(-24*zeta^3 + 12)*q^749 + (62*zeta^3 - 31)*q^751 + (-78*zeta^3 + 39)*q^755 + 
(20*zeta^3 - 10)*q^757 + (54*zeta^3 - 27)*q^761 + (4*zeta^3 - 2)*q^763 + 
(6*zeta^3 - 3)*q^767 + (2*zeta^3 - 1)*q^769 + (36*zeta^3 - 18)*q^773 + 
(-40*zeta^3 + 20)*q^775 + (-24*zeta^3 + 12)*q^779 + (72*zeta^3 - 36)*q^781 + 
(-78*zeta^3 + 39)*q^785 + (86*zeta^3 - 43)*q^787 + (18*zeta^3 - 9)*q^791 + 
(-26*zeta^3 + 13)*q^793 + (-18*zeta^3 + 9)*q^797 + (108*zeta^3 - 54)*q^799 + 
(-60*zeta^3 + 30)*q^803 + (-18*zeta^3 + 9)*q^805 + (12*zeta^3 - 6)*q^809 + 
(-40*zeta^3 + 20)*q^811 + (120*zeta^3 - 60)*q^815 + (-8*zeta^3 + 4)*q^817 + 
(102*zeta^3 - 51)*q^821 + (38*zeta^3 - 19)*q^823 + (-24*zeta^3 + 12)*q^827 + 
(-100*zeta^3 + 50)*q^829 + (-72*zeta^3 + 36)*q^833 + (-54*zeta^3 + 27)*q^835 + 
(-18*zeta^3 + 9)*q^839 + (40*zeta^3 - 20)*q^841 + (-72*zeta^3 + 36)*q^845 + 
(-4*zeta^3 + 2)*q^847 + (-12*zeta^3 + 6)*q^851 + (26*zeta^3 - 13)*q^853 + 
(54*zeta^3 - 27)*q^857 + (-82*zeta^3 + 41)*q^859 + (48*zeta^3 - 24)*q^863 + 
(54*zeta^3 - 27)*q^865 + (66*zeta^3 - 33)*q^869 + (-14*zeta^3 + 7)*q^871 + 
(6*zeta^3 - 3)*q^875 + (-46*zeta^3 + 23)*q^877 + (60*zeta^3 - 30)*q^881 + 
(8*zeta^3 - 4)*q^883 + (42*zeta^3 - 21)*q^887 + (-32*zeta^3 + 16)*q^889 + 
(72*zeta^3 - 36)*q^893 + (-72*zeta^3 + 36)*q^895 + (30*zeta^3 - 15)*q^899 + 
(72*zeta^3 - 36)*q^901 + (12*zeta^3 - 6)*q^905 + (-94*zeta^3 + 47)*q^907 + 
(-90*zeta^3 + 45)*q^911 + (54*zeta^3 - 27)*q^913 + (-42*zeta^3 + 21)*q^917 + 
(32*zeta^3 - 16)*q^919 + (24*zeta^3 - 12)*q^923 + (-16*zeta^3 + 8)*q^925 + 
(54*zeta^3 - 27)*q^929 + (-48*zeta^3 + 24)*q^931 + (108*zeta^3 - 54)*q^935 + 
(68*zeta^3 - 34)*q^937 + (-42*zeta^3 + 21)*q^941 + (18*zeta^3 - 9)*q^943 + 
(54*zeta^3 - 27)*q^947 + (-20*zeta^3 + 10)*q^949 + (108*zeta^3 - 54)*q^953 + 
(-90*zeta^3 + 45)*q^955 + (-6*zeta^3 + 3)*q^959 + (12*zeta^3 - 6)*q^961 + 
(66*zeta^3 - 33)*q^965 + (86*zeta^3 - 43)*q^967 + (10*zeta^3 - 5)*q^973 + 
(-114*zeta^3 + 57)*q^977 + (-36*zeta^3 + 18)*q^979 + (102*zeta^3 - 51)*q^983 + 
(-36*zeta^3 + 18)*q^985 + (6*zeta^3 - 3)*q^989 + (-16*zeta^3 + 8)*q^991 + 
(-24*zeta^3 + 12)*q^995 + (2*zeta^3 - 1)*q^997 + (6*zeta^3 - 3)*q^1001 + 
(36*zeta^3 - 18)*q^1003 + (48*zeta^3 - 24)*q^1007 + (20*zeta^3 - 10)*q^1009 + 
O(q^1010), (zeta^5 - zeta^2 + zeta)*q + (3*zeta^5 + 3*zeta^4)*q^5 + (2*zeta^4 + 
2*zeta^2 - 2*zeta)*q^7 + (6*zeta^4 + 6*zeta^2 - 6*zeta)*q^11 + (-5*zeta^5 - 
5*zeta^4)*q^13 + (3*zeta^5 - 3*zeta^2 + 3*zeta)*q^17 + (2*zeta^5 - 2*zeta^2 + 
2*zeta)*q^19 + (6*zeta^5 + 6*zeta^4)*q^23 + (4*zeta^4 + 4*zeta^2 - 4*zeta)*q^25 
+ (-3*zeta^4 - 3*zeta^2 + 3*zeta)*q^29 + (4*zeta^5 + 4*zeta^4)*q^31 + (-6*zeta^5
+ 6*zeta^2 - 6*zeta)*q^35 + (5*zeta^5 - 5*zeta^2 + 5*zeta)*q^37 + (-6*zeta^5 - 
6*zeta^4)*q^41 + (-10*zeta^4 - 10*zeta^2 + 10*zeta)*q^43 + (3*zeta^5 + 
3*zeta^4)*q^49 + (6*zeta^5 - 6*zeta^2 + 6*zeta)*q^53 + (-18*zeta^5 + 18*zeta^2 -
18*zeta)*q^55 + (-12*zeta^5 - 12*zeta^4)*q^59 + (5*zeta^4 + 5*zeta^2 - 
5*zeta)*q^61 + (-15*zeta^4 - 15*zeta^2 + 15*zeta)*q^65 + (-2*zeta^5 - 
2*zeta^4)*q^67 + (-6*zeta^5 + 6*zeta^2 - 6*zeta)*q^71 + (-zeta^5 + zeta^2 - 
zeta)*q^73 + (-12*zeta^5 - 12*zeta^4)*q^77 + (-10*zeta^4 - 10*zeta^2 + 
10*zeta)*q^79 + (9*zeta^5 + 9*zeta^4)*q^85 + (3*zeta^5 - 3*zeta^2 + 3*zeta)*q^89
+ (10*zeta^5 - 10*zeta^2 + 10*zeta)*q^91 + (6*zeta^5 + 6*zeta^4)*q^95 + 
(-10*zeta^4 - 10*zeta^2 + 10*zeta)*q^97 + (-6*zeta^4 - 6*zeta^2 + 6*zeta)*q^101 
+ (16*zeta^5 + 16*zeta^4)*q^103 + (-12*zeta^5 + 12*zeta^2 - 12*zeta)*q^107 + 
(-7*zeta^5 + 7*zeta^2 - 7*zeta)*q^109 + (9*zeta^5 + 9*zeta^4)*q^113 + (18*zeta^4
+ 18*zeta^2 - 18*zeta)*q^115 + (6*zeta^4 + 6*zeta^2 - 6*zeta)*q^119 + 
(-25*zeta^5 - 25*zeta^4)*q^121 + (3*zeta^5 - 3*zeta^2 + 3*zeta)*q^125 + 
(2*zeta^5 - 2*zeta^2 + 2*zeta)*q^127 + (-6*zeta^5 - 6*zeta^4)*q^131 + (4*zeta^4 
+ 4*zeta^2 - 4*zeta)*q^133 + (15*zeta^4 + 15*zeta^2 - 15*zeta)*q^137 + 
(-8*zeta^5 - 8*zeta^4)*q^139 + (30*zeta^5 - 30*zeta^2 + 30*zeta)*q^143 + 
(9*zeta^5 - 9*zeta^2 + 9*zeta)*q^145 + (15*zeta^5 + 15*zeta^4)*q^149 + 
(-4*zeta^4 - 4*zeta^2 + 4*zeta)*q^151 + (12*zeta^4 + 12*zeta^2 - 12*zeta)*q^155 
+ (-5*zeta^5 - 5*zeta^4)*q^157 + (-12*zeta^5 + 12*zeta^2 - 12*zeta)*q^161 + 
(-4*zeta^5 + 4*zeta^2 - 4*zeta)*q^163 + (18*zeta^5 + 18*zeta^4)*q^167 + 
(12*zeta^4 + 12*zeta^2 - 12*zeta)*q^169 + (9*zeta^4 + 9*zeta^2 - 9*zeta)*q^173 +
(-8*zeta^5 - 8*zeta^4)*q^175 + (-12*zeta^5 + 12*zeta^2 - 12*zeta)*q^179 + 
(14*zeta^5 - 14*zeta^2 + 14*zeta)*q^181 + (15*zeta^5 + 15*zeta^4)*q^185 + 
(18*zeta^4 + 18*zeta^2 - 18*zeta)*q^187 + (-6*zeta^4 - 6*zeta^2 + 6*zeta)*q^191 
+ (25*zeta^5 + 25*zeta^4)*q^193 + (-15*zeta^5 + 15*zeta^2 - 15*zeta)*q^197 + 
(20*zeta^5 - 20*zeta^2 + 20*zeta)*q^199 + (6*zeta^5 + 6*zeta^4)*q^203 + 
(-18*zeta^4 - 18*zeta^2 + 18*zeta)*q^205 + (12*zeta^4 + 12*zeta^2 - 
12*zeta)*q^209 + (-14*zeta^5 - 14*zeta^4)*q^211 + (30*zeta^5 - 30*zeta^2 + 
30*zeta)*q^215 + (-8*zeta^5 + 8*zeta^2 - 8*zeta)*q^217 + (-15*zeta^5 - 
15*zeta^4)*q^221 + (-10*zeta^4 - 10*zeta^2 + 10*zeta)*q^223 + (-18*zeta^4 - 
18*zeta^2 + 18*zeta)*q^227 + (-5*zeta^5 - 5*zeta^4)*q^229 + (15*zeta^5 - 
15*zeta^2 + 15*zeta)*q^233 + (11*zeta^4 + 11*zeta^2 - 11*zeta)*q^241 + (9*zeta^4
+ 9*zeta^2 - 9*zeta)*q^245 + (-10*zeta^5 - 10*zeta^4)*q^247 + (-30*zeta^5 + 
30*zeta^2 - 30*zeta)*q^251 + (-36*zeta^5 + 36*zeta^2 - 36*zeta)*q^253 + 
(-27*zeta^5 - 27*zeta^4)*q^257 + (10*zeta^4 + 10*zeta^2 - 10*zeta)*q^259 + 
(-24*zeta^4 - 24*zeta^2 + 24*zeta)*q^263 + (18*zeta^5 + 18*zeta^4)*q^265 + 
(-3*zeta^5 + 3*zeta^2 - 3*zeta)*q^269 + (-10*zeta^5 + 10*zeta^2 - 10*zeta)*q^271
+ (-24*zeta^5 - 24*zeta^4)*q^275 + (-10*zeta^4 - 10*zeta^2 + 10*zeta)*q^277 + 
(15*zeta^4 + 15*zeta^2 - 15*zeta)*q^281 + (4*zeta^5 + 4*zeta^4)*q^283 + 
(12*zeta^5 - 12*zeta^2 + 12*zeta)*q^287 + (-8*zeta^5 + 8*zeta^2 - 8*zeta)*q^289 
+ (15*zeta^5 + 15*zeta^4)*q^293 + (-36*zeta^4 - 36*zeta^2 + 36*zeta)*q^295 + 
(-30*zeta^4 - 30*zeta^2 + 30*zeta)*q^299 + (20*zeta^5 + 20*zeta^4)*q^301 + 
(-15*zeta^5 + 15*zeta^2 - 15*zeta)*q^305 + (20*zeta^5 - 20*zeta^2 + 
20*zeta)*q^307 + (-24*zeta^5 - 24*zeta^4)*q^311 + (-25*zeta^4 - 25*zeta^2 + 
25*zeta)*q^313 + (-15*zeta^4 - 15*zeta^2 + 15*zeta)*q^317 + (18*zeta^5 + 
18*zeta^4)*q^319 + (6*zeta^5 - 6*zeta^2 + 6*zeta)*q^323 + (20*zeta^5 - 20*zeta^2
+ 20*zeta)*q^325 + (26*zeta^4 + 26*zeta^2 - 26*zeta)*q^331 + (-6*zeta^4 - 
6*zeta^2 + 6*zeta)*q^335 + (10*zeta^5 + 10*zeta^4)*q^337 + (-24*zeta^5 + 
24*zeta^2 - 24*zeta)*q^341 + (-20*zeta^5 + 20*zeta^2 - 20*zeta)*q^343 + 
(-18*zeta^5 - 18*zeta^4)*q^347 + (2*zeta^4 + 2*zeta^2 - 2*zeta)*q^349 + 
(-30*zeta^4 - 30*zeta^2 + 30*zeta)*q^353 + (-18*zeta^5 - 18*zeta^4)*q^355 + 
(18*zeta^5 - 18*zeta^2 + 18*zeta)*q^359 + (-15*zeta^5 + 15*zeta^2 - 
15*zeta)*q^361 + (-3*zeta^5 - 3*zeta^4)*q^365 + (32*zeta^4 + 32*zeta^2 - 
32*zeta)*q^367 + (12*zeta^4 + 12*zeta^2 - 12*zeta)*q^371 + (-14*zeta^5 - 
14*zeta^4)*q^373 + (-15*zeta^5 + 15*zeta^2 - 15*zeta)*q^377 + (-4*zeta^5 + 
4*zeta^2 - 4*zeta)*q^379 + (30*zeta^5 + 30*zeta^4)*q^383 + (-36*zeta^4 - 
36*zeta^2 + 36*zeta)*q^385 + (30*zeta^4 + 30*zeta^2 - 30*zeta)*q^389 + 
(18*zeta^5 + 18*zeta^4)*q^391 + (30*zeta^5 - 30*zeta^2 + 30*zeta)*q^395 + 
(-7*zeta^5 + 7*zeta^2 - 7*zeta)*q^397 + (-15*zeta^5 - 15*zeta^4)*q^401 + 
(-20*zeta^4 - 20*zeta^2 + 20*zeta)*q^403 + (30*zeta^4 + 30*zeta^2 - 
30*zeta)*q^407 + (-35*zeta^5 - 35*zeta^4)*q^409 + (24*zeta^5 - 24*zeta^2 + 
24*zeta)*q^413 + (29*zeta^4 + 29*zeta^2 - 29*zeta)*q^421 + (12*zeta^4 + 
12*zeta^2 - 12*zeta)*q^425 + (-10*zeta^5 - 10*zeta^4)*q^427 + (-24*zeta^5 + 
24*zeta^2 - 24*zeta)*q^431 + (11*zeta^5 - 11*zeta^2 + 11*zeta)*q^433 + 
(12*zeta^5 + 12*zeta^4)*q^437 + (8*zeta^4 + 8*zeta^2 - 8*zeta)*q^439 + (9*zeta^5
+ 9*zeta^4)*q^445 + (-18*zeta^5 + 18*zeta^2 - 18*zeta)*q^449 + (36*zeta^5 - 
36*zeta^2 + 36*zeta)*q^451 + (30*zeta^5 + 30*zeta^4)*q^455 + (35*zeta^4 + 
35*zeta^2 - 35*zeta)*q^457 + (6*zeta^4 + 6*zeta^2 - 6*zeta)*q^461 + (4*zeta^5 + 
4*zeta^4)*q^463 + (-12*zeta^5 + 12*zeta^2 - 12*zeta)*q^467 + (4*zeta^5 - 
4*zeta^2 + 4*zeta)*q^469 + (60*zeta^5 + 60*zeta^4)*q^473 + (8*zeta^4 + 8*zeta^2 
- 8*zeta)*q^475 + (-18*zeta^4 - 18*zeta^2 + 18*zeta)*q^479 + (-25*zeta^5 - 
25*zeta^4)*q^481 + (30*zeta^5 - 30*zeta^2 + 30*zeta)*q^485 + (20*zeta^5 - 
20*zeta^2 + 20*zeta)*q^487 + (6*zeta^5 + 6*zeta^4)*q^491 + (-9*zeta^4 - 9*zeta^2
+ 9*zeta)*q^493 + (-12*zeta^4 - 12*zeta^2 + 12*zeta)*q^497 + (22*zeta^5 + 
22*zeta^4)*q^499 + (18*zeta^5 - 18*zeta^2 + 18*zeta)*q^505 + (-6*zeta^5 - 
6*zeta^4)*q^509 + (-2*zeta^4 - 2*zeta^2 + 2*zeta)*q^511 + (48*zeta^4 + 48*zeta^2
- 48*zeta)*q^515 + (30*zeta^5 - 30*zeta^2 + 30*zeta)*q^521 + (-10*zeta^5 + 
10*zeta^2 - 10*zeta)*q^523 + (12*zeta^5 + 12*zeta^4)*q^527 + (13*zeta^4 + 
13*zeta^2 - 13*zeta)*q^529 + (30*zeta^4 + 30*zeta^2 - 30*zeta)*q^533 + 
(-36*zeta^5 - 36*zeta^4)*q^535 + (-18*zeta^5 + 18*zeta^2 - 18*zeta)*q^539 + 
(41*zeta^5 - 41*zeta^2 + 41*zeta)*q^541 + (-21*zeta^5 - 21*zeta^4)*q^545 + 
(-40*zeta^4 - 40*zeta^2 + 40*zeta)*q^547 + (-6*zeta^4 - 6*zeta^2 + 6*zeta)*q^551
+ (20*zeta^5 + 20*zeta^4)*q^553 + (-15*zeta^5 + 15*zeta^2 - 15*zeta)*q^557 + 
(-50*zeta^5 + 50*zeta^2 - 50*zeta)*q^559 + (27*zeta^4 + 27*zeta^2 - 
27*zeta)*q^565 + (3*zeta^4 + 3*zeta^2 - 3*zeta)*q^569 + (-44*zeta^5 - 
44*zeta^4)*q^571 + (-24*zeta^5 + 24*zeta^2 - 24*zeta)*q^575 + (-37*zeta^5 + 
37*zeta^2 - 37*zeta)*q^577 + (36*zeta^4 + 36*zeta^2 - 36*zeta)*q^583 + 
(30*zeta^4 + 30*zeta^2 - 30*zeta)*q^587 + (8*zeta^5 + 8*zeta^4)*q^589 + 
(39*zeta^5 - 39*zeta^2 + 39*zeta)*q^593 + (-18*zeta^5 + 18*zeta^2 - 
18*zeta)*q^595 + (-12*zeta^5 - 12*zeta^4)*q^599 + (-zeta^4 - zeta^2 + 
zeta)*q^601 + (-75*zeta^4 - 75*zeta^2 + 75*zeta)*q^605 + (10*zeta^5 + 
10*zeta^4)*q^607 + (-10*zeta^5 + 10*zeta^2 - 10*zeta)*q^613 + (-15*zeta^5 - 
15*zeta^4)*q^617 + (-40*zeta^4 - 40*zeta^2 + 40*zeta)*q^619 + (6*zeta^4 + 
6*zeta^2 - 6*zeta)*q^623 + (29*zeta^5 + 29*zeta^4)*q^625 + (15*zeta^5 - 
15*zeta^2 + 15*zeta)*q^629 + (-4*zeta^5 + 4*zeta^2 - 4*zeta)*q^631 + (6*zeta^5 +
6*zeta^4)*q^635 + (-15*zeta^4 - 15*zeta^2 + 15*zeta)*q^637 + (-21*zeta^4 - 
21*zeta^2 + 21*zeta)*q^641 + (40*zeta^5 + 40*zeta^4)*q^643 + (-18*zeta^5 + 
18*zeta^2 - 18*zeta)*q^647 + (72*zeta^5 - 72*zeta^2 + 72*zeta)*q^649 + 
(-30*zeta^5 - 30*zeta^4)*q^653 + (-18*zeta^4 - 18*zeta^2 + 18*zeta)*q^655 + 
(-6*zeta^4 - 6*zeta^2 + 6*zeta)*q^659 + (-29*zeta^5 - 29*zeta^4)*q^661 + 
(-12*zeta^5 + 12*zeta^2 - 12*zeta)*q^665 + (18*zeta^5 - 18*zeta^2 + 
18*zeta)*q^667 + (-30*zeta^5 - 30*zeta^4)*q^671 + (-zeta^4 - zeta^2 + 
zeta)*q^673 + (-42*zeta^4 - 42*zeta^2 + 42*zeta)*q^677 + (20*zeta^5 + 
20*zeta^4)*q^679 + (-45*zeta^5 + 45*zeta^2 - 45*zeta)*q^685 + (-30*zeta^5 - 
30*zeta^4)*q^689 + (-10*zeta^4 - 10*zeta^2 + 10*zeta)*q^691 + (-24*zeta^4 - 
24*zeta^2 + 24*zeta)*q^695 + (-18*zeta^5 - 18*zeta^4)*q^697 + (-39*zeta^5 + 
39*zeta^2 - 39*zeta)*q^701 + (10*zeta^5 - 10*zeta^2 + 10*zeta)*q^703 + 
(12*zeta^5 + 12*zeta^4)*q^707 + (-19*zeta^4 - 19*zeta^2 + 19*zeta)*q^709 + 
(24*zeta^4 + 24*zeta^2 - 24*zeta)*q^713 + (90*zeta^5 + 90*zeta^4)*q^715 + 
(-18*zeta^5 + 18*zeta^2 - 18*zeta)*q^719 + (-32*zeta^5 + 32*zeta^2 - 
32*zeta)*q^721 + (12*zeta^5 + 12*zeta^4)*q^725 + (-10*zeta^4 - 10*zeta^2 + 
10*zeta)*q^727 + (-30*zeta^4 - 30*zeta^2 + 30*zeta)*q^731 + (-14*zeta^5 - 
14*zeta^4)*q^733 + (12*zeta^5 - 12*zeta^2 + 12*zeta)*q^737 + (-52*zeta^5 + 
52*zeta^2 - 52*zeta)*q^739 + (-36*zeta^5 - 36*zeta^4)*q^743 + (45*zeta^4 + 
45*zeta^2 - 45*zeta)*q^745 + (-24*zeta^4 - 24*zeta^2 + 24*zeta)*q^749 + 
(10*zeta^5 + 10*zeta^4)*q^751 + (12*zeta^5 - 12*zeta^2 + 12*zeta)*q^755 + 
(-10*zeta^5 + 10*zeta^2 - 10*zeta)*q^757 + (9*zeta^5 + 9*zeta^4)*q^761 + 
(-14*zeta^4 - 14*zeta^2 + 14*zeta)*q^763 + (60*zeta^4 + 60*zeta^2 - 
60*zeta)*q^767 + (-23*zeta^5 - 23*zeta^4)*q^769 + (45*zeta^5 - 45*zeta^2 + 
45*zeta)*q^773 + (-16*zeta^5 + 16*zeta^2 - 16*zeta)*q^775 + (-12*zeta^5 - 
12*zeta^4)*q^779 + (-36*zeta^4 - 36*zeta^2 + 36*zeta)*q^781 + (-15*zeta^4 - 
15*zeta^2 + 15*zeta)*q^785 + (-38*zeta^5 - 38*zeta^4)*q^787 + (-18*zeta^5 + 
18*zeta^2 - 18*zeta)*q^791 + (25*zeta^5 - 25*zeta^2 + 25*zeta)*q^793 + 
(-45*zeta^5 - 45*zeta^4)*q^797 + (-6*zeta^4 - 6*zeta^2 + 6*zeta)*q^803 + 
(-36*zeta^5 - 36*zeta^4)*q^805 + (3*zeta^5 - 3*zeta^2 + 3*zeta)*q^809 + 
(-16*zeta^5 + 16*zeta^2 - 16*zeta)*q^811 + (-12*zeta^5 - 12*zeta^4)*q^815 + 
(-20*zeta^4 - 20*zeta^2 + 20*zeta)*q^817 + (21*zeta^4 + 21*zeta^2 - 
21*zeta)*q^821 + (4*zeta^5 + 4*zeta^4)*q^823 + (30*zeta^5 - 30*zeta^2 + 
30*zeta)*q^827 + (38*zeta^5 - 38*zeta^2 + 38*zeta)*q^829 + (9*zeta^5 + 
9*zeta^4)*q^833 + (54*zeta^4 + 54*zeta^2 - 54*zeta)*q^835 + (18*zeta^4 + 
18*zeta^2 - 18*zeta)*q^839 + (20*zeta^5 + 20*zeta^4)*q^841 + (-36*zeta^5 + 
36*zeta^2 - 36*zeta)*q^845 + (50*zeta^5 - 50*zeta^2 + 50*zeta)*q^847 + 
(30*zeta^5 + 30*zeta^4)*q^851 + (14*zeta^4 + 14*zeta^2 - 14*zeta)*q^853 + 
(-45*zeta^4 - 45*zeta^2 + 45*zeta)*q^857 + (-8*zeta^5 - 8*zeta^4)*q^859 + 
(-6*zeta^5 + 6*zeta^2 - 6*zeta)*q^863 + (-27*zeta^5 + 27*zeta^2 - 27*zeta)*q^865
+ (60*zeta^5 + 60*zeta^4)*q^869 + (10*zeta^4 + 10*zeta^2 - 10*zeta)*q^871 + 
(6*zeta^4 + 6*zeta^2 - 6*zeta)*q^875 + (55*zeta^5 + 55*zeta^4)*q^877 + (6*zeta^5
- 6*zeta^2 + 6*zeta)*q^881 + (-16*zeta^5 + 16*zeta^2 - 16*zeta)*q^883 + 
(30*zeta^5 + 30*zeta^4)*q^887 + (4*zeta^4 + 4*zeta^2 - 4*zeta)*q^889 + 
(-36*zeta^5 - 36*zeta^4)*q^895 + (12*zeta^5 - 12*zeta^2 + 12*zeta)*q^899 + 
(18*zeta^5 - 18*zeta^2 + 18*zeta)*q^901 + (42*zeta^5 + 42*zeta^4)*q^905 + 
(8*zeta^4 + 8*zeta^2 - 8*zeta)*q^907 + (54*zeta^4 + 54*zeta^2 - 54*zeta)*q^911 +
(12*zeta^5 - 12*zeta^2 + 12*zeta)*q^917 + (38*zeta^5 - 38*zeta^2 + 
38*zeta)*q^919 + (30*zeta^5 + 30*zeta^4)*q^923 + (20*zeta^4 + 20*zeta^2 - 
20*zeta)*q^925 + (27*zeta^4 + 27*zeta^2 - 27*zeta)*q^929 + (6*zeta^5 + 
6*zeta^4)*q^931 + (-54*zeta^5 + 54*zeta^2 - 54*zeta)*q^935 + (23*zeta^5 - 
23*zeta^2 + 23*zeta)*q^937 + (15*zeta^5 + 15*zeta^4)*q^941 + (-36*zeta^4 - 
36*zeta^2 + 36*zeta)*q^943 + (-18*zeta^4 - 18*zeta^2 + 18*zeta)*q^947 + 
(5*zeta^5 + 5*zeta^4)*q^949 + (-45*zeta^5 + 45*zeta^2 - 45*zeta)*q^953 + 
(18*zeta^5 - 18*zeta^2 + 18*zeta)*q^955 + (-30*zeta^5 - 30*zeta^4)*q^959 + 
(-15*zeta^4 - 15*zeta^2 + 15*zeta)*q^961 + (75*zeta^4 + 75*zeta^2 - 
75*zeta)*q^965 + (-38*zeta^5 - 38*zeta^4)*q^967 + (54*zeta^5 - 54*zeta^2 + 
54*zeta)*q^971 + (16*zeta^5 - 16*zeta^2 + 16*zeta)*q^973 + (-30*zeta^5 - 
30*zeta^4)*q^977 + (18*zeta^4 + 18*zeta^2 - 18*zeta)*q^979 + (-24*zeta^4 - 
24*zeta^2 + 24*zeta)*q^983 + (-45*zeta^5 - 45*zeta^4)*q^985 + (60*zeta^5 - 
60*zeta^2 + 60*zeta)*q^989 + (26*zeta^5 - 26*zeta^2 + 26*zeta)*q^991 + 
(60*zeta^5 + 60*zeta^4)*q^995 + (53*zeta^4 + 53*zeta^2 - 53*zeta)*q^997 + 
(60*zeta^4 + 60*zeta^2 - 60*zeta)*q^1001 + (-36*zeta^5 - 36*zeta^4)*q^1003 + 
(12*zeta^5 - 12*zeta^2 + 12*zeta)*q^1007 + (-37*zeta^5 + 37*zeta^2 - 
37*zeta)*q^1009 + O(q^1010), (2*zeta^5 + zeta^4 - zeta^2 + zeta)*q^3 + (3*zeta^4
+ 3*zeta^2 - 3*zeta)*q^9 + (-3*zeta^5 - 6*zeta^4 - 3*zeta^2 + 3*zeta)*q^15 + 
(zeta^5 - zeta^4 - 2*zeta^2 + 2*zeta)*q^21 + (-6*zeta^5 - 3*zeta^4 + 3*zeta^2 - 
3*zeta)*q^27 + (-3*zeta^5 + 3*zeta^4 + 6*zeta^2 - 6*zeta)*q^33 + (zeta^5 + 
2*zeta^4 + zeta^2 - zeta)*q^39 + (9*zeta^5 - 9*zeta^2 + 9*zeta)*q^45 + 
(12*zeta^5 + 6*zeta^4 - 6*zeta^2 + 6*zeta)*q^51 + (-8*zeta^5 - 4*zeta^4 + 
4*zeta^2 - 4*zeta)*q^57 + (3*zeta^5 + 3*zeta^4)*q^63 + (3*zeta^5 + 6*zeta^4 + 
3*zeta^2 - 3*zeta)*q^69 + (-4*zeta^5 + 4*zeta^4 + 8*zeta^2 - 8*zeta)*q^75 + 
(-9*zeta^4 - 9*zeta^2 + 9*zeta)*q^81 + (-3*zeta^5 + 3*zeta^4 + 6*zeta^2 - 
6*zeta)*q^87 + (-5*zeta^5 - 10*zeta^4 - 5*zeta^2 + 5*zeta)*q^93 + (-9*zeta^5 - 
9*zeta^4)*q^99 + (-6*zeta^5 - 3*zeta^4 + 3*zeta^2 - 3*zeta)*q^105 + (4*zeta^5 + 
2*zeta^4 - 2*zeta^2 + 2*zeta)*q^111 + (-3*zeta^5 + 3*zeta^2 - 3*zeta)*q^117 + 
(-3*zeta^5 - 6*zeta^4 - 3*zeta^2 + 3*zeta)*q^123 + (zeta^5 - zeta^4 - 2*zeta^2 +
2*zeta)*q^129 + (9*zeta^5 + 18*zeta^4 + 9*zeta^2 - 9*zeta)*q^135 + (9*zeta^5 - 
9*zeta^4 - 18*zeta^2 + 18*zeta)*q^141 + (6*zeta^5 + 12*zeta^4 + 6*zeta^2 - 
6*zeta)*q^147 + (18*zeta^4 + 18*zeta^2 - 18*zeta)*q^153 + (-12*zeta^5 - 6*zeta^4
+ 6*zeta^2 - 6*zeta)*q^159 + (18*zeta^5 + 9*zeta^4 - 9*zeta^2 + 9*zeta)*q^165 + 
(-12*zeta^4 - 12*zeta^2 + 12*zeta)*q^171 + (3*zeta^5 + 6*zeta^4 + 3*zeta^2 - 
3*zeta)*q^177 + (13*zeta^5 - 13*zeta^4 - 26*zeta^2 + 26*zeta)*q^183 + (-3*zeta^5
+ 3*zeta^4 + 6*zeta^2 - 6*zeta)*q^189 + (3*zeta^5 - 3*zeta^4 - 6*zeta^2 + 
6*zeta)*q^195 + (7*zeta^5 + 14*zeta^4 + 7*zeta^2 - 7*zeta)*q^201 + (-9*zeta^5 + 
9*zeta^2 - 9*zeta)*q^207 + (-24*zeta^5 - 12*zeta^4 + 12*zeta^2 - 12*zeta)*q^213 
+ (-20*zeta^5 - 10*zeta^4 + 10*zeta^2 - 10*zeta)*q^219 + (-12*zeta^5 - 
12*zeta^4)*q^225 + (3*zeta^5 + 6*zeta^4 + 3*zeta^2 - 3*zeta)*q^231 + (-11*zeta^5
+ 11*zeta^4 + 22*zeta^2 - 22*zeta)*q^237 + (18*zeta^5 + 9*zeta^4 - 9*zeta^2 + 
9*zeta)*q^243 + (9*zeta^5 - 9*zeta^4 - 18*zeta^2 + 18*zeta)*q^249 + (-18*zeta^5 
- 36*zeta^4 - 18*zeta^2 + 18*zeta)*q^255 + (-9*zeta^5 - 9*zeta^4)*q^261 + 
(12*zeta^5 + 6*zeta^4 - 6*zeta^2 + 6*zeta)*q^267 + (2*zeta^5 + zeta^4 - zeta^2 +
zeta)*q^273 + (15*zeta^5 - 15*zeta^2 + 15*zeta)*q^279 + (12*zeta^5 + 24*zeta^4 +
12*zeta^2 - 12*zeta)*q^285 + (-11*zeta^5 + 11*zeta^4 + 22*zeta^2 - 
22*zeta)*q^291 + (9*zeta^5 - 9*zeta^4 - 18*zeta^2 + 18*zeta)*q^297 + (-15*zeta^5
+ 15*zeta^4 + 30*zeta^2 - 30*zeta)*q^303 + (7*zeta^5 + 14*zeta^4 + 7*zeta^2 - 
7*zeta)*q^309 + (-9*zeta^4 - 9*zeta^2 + 9*zeta)*q^315 + (24*zeta^5 + 12*zeta^4 -
12*zeta^2 + 12*zeta)*q^321 + (4*zeta^5 + 2*zeta^4 - 2*zeta^2 + 2*zeta)*q^327 + 
(6*zeta^4 + 6*zeta^2 - 6*zeta)*q^333 + (9*zeta^5 + 18*zeta^4 + 9*zeta^2 - 
9*zeta)*q^339 + (9*zeta^5 - 9*zeta^4 - 18*zeta^2 + 18*zeta)*q^345 + (-3*zeta^5 -
6*zeta^4 - 3*zeta^2 + 3*zeta)*q^351 + (6*zeta^5 - 6*zeta^4 - 12*zeta^2 + 
12*zeta)*q^357 + (2*zeta^5 + 4*zeta^4 + 2*zeta^2 - 2*zeta)*q^363 + (9*zeta^5 - 
9*zeta^2 + 9*zeta)*q^369 + (-6*zeta^5 - 3*zeta^4 + 3*zeta^2 - 3*zeta)*q^375 + 
(-32*zeta^5 - 16*zeta^4 + 16*zeta^2 - 16*zeta)*q^381 + (3*zeta^5 + 
3*zeta^4)*q^387 + (-21*zeta^5 - 42*zeta^4 - 21*zeta^2 + 21*zeta)*q^393 + 
(-4*zeta^5 + 4*zeta^4 + 8*zeta^2 - 8*zeta)*q^399 + (-27*zeta^5 + 27*zeta^2 - 
27*zeta)*q^405 + (-3*zeta^5 + 3*zeta^4 + 6*zeta^2 - 6*zeta)*q^411 + (-5*zeta^5 -
10*zeta^4 - 5*zeta^2 + 5*zeta)*q^417 + (27*zeta^5 + 27*zeta^4)*q^423 + 
(-6*zeta^5 - 3*zeta^4 + 3*zeta^2 - 3*zeta)*q^429 + (18*zeta^5 + 9*zeta^4 - 
9*zeta^2 + 9*zeta)*q^435 + (-18*zeta^5 + 18*zeta^2 - 18*zeta)*q^441 + 
(-15*zeta^5 - 30*zeta^4 - 15*zeta^2 + 15*zeta)*q^447 + (13*zeta^5 - 13*zeta^4 - 
26*zeta^2 + 26*zeta)*q^453 + (-36*zeta^5 - 18*zeta^4 + 18*zeta^2 - 
18*zeta)*q^459 + (-15*zeta^5 + 15*zeta^4 + 30*zeta^2 - 30*zeta)*q^465 + 
(13*zeta^5 + 26*zeta^4 + 13*zeta^2 - 13*zeta)*q^471 + (-18*zeta^4 - 18*zeta^2 + 
18*zeta)*q^477 + (6*zeta^5 + 3*zeta^4 - 3*zeta^2 + 3*zeta)*q^483 + (40*zeta^5 + 
20*zeta^4 - 20*zeta^2 + 20*zeta)*q^489 + (27*zeta^4 + 27*zeta^2 - 27*zeta)*q^495
+ (-9*zeta^5 - 18*zeta^4 - 9*zeta^2 + 9*zeta)*q^501 + (12*zeta^5 - 12*zeta^4 - 
24*zeta^2 + 24*zeta)*q^507 + (24*zeta^5 + 12*zeta^4 - 12*zeta^2 + 12*zeta)*q^513
+ (9*zeta^5 - 9*zeta^4 - 18*zeta^2 + 18*zeta)*q^519 + (4*zeta^5 + 8*zeta^4 + 
4*zeta^2 - 4*zeta)*q^525 + (-9*zeta^5 + 9*zeta^2 - 9*zeta)*q^531 + (24*zeta^5 + 
12*zeta^4 - 12*zeta^2 + 12*zeta)*q^537 + (4*zeta^5 + 2*zeta^4 - 2*zeta^2 + 
2*zeta)*q^543 + (39*zeta^5 + 39*zeta^4)*q^549 + (-6*zeta^5 - 12*zeta^4 - 
6*zeta^2 + 6*zeta)*q^555 + (-18*zeta^5 + 18*zeta^4 + 36*zeta^2 - 36*zeta)*q^561 
+ (-9*zeta^5 - 9*zeta^4)*q^567 + (-15*zeta^5 + 15*zeta^4 + 30*zeta^2 - 
30*zeta)*q^573 + (-11*zeta^5 - 22*zeta^4 - 11*zeta^2 + 11*zeta)*q^579 + 
(9*zeta^5 + 9*zeta^4)*q^585 + (12*zeta^5 + 6*zeta^4 - 6*zeta^2 + 6*zeta)*q^591 +
(-8*zeta^5 - 4*zeta^4 + 4*zeta^2 - 4*zeta)*q^597 + (-21*zeta^5 + 21*zeta^2 - 
21*zeta)*q^603 + (3*zeta^5 + 6*zeta^4 + 3*zeta^2 - 3*zeta)*q^609 + (-9*zeta^5 + 
9*zeta^4 + 18*zeta^2 - 18*zeta)*q^615 + (-9*zeta^5 - 18*zeta^4 - 9*zeta^2 + 
9*zeta)*q^621 + (12*zeta^5 - 12*zeta^4 - 24*zeta^2 + 24*zeta)*q^627 + 
(-17*zeta^5 - 34*zeta^4 - 17*zeta^2 + 17*zeta)*q^633 + (-36*zeta^4 - 36*zeta^2 +
36*zeta)*q^639 + (-6*zeta^5 - 3*zeta^4 + 3*zeta^2 - 3*zeta)*q^645 + (-10*zeta^5 
- 5*zeta^4 + 5*zeta^2 - 5*zeta)*q^651 + (-30*zeta^4 - 30*zeta^2 + 30*zeta)*q^657
+ (6*zeta^5 + 12*zeta^4 + 6*zeta^2 - 6*zeta)*q^663 + (zeta^5 - zeta^4 - 2*zeta^2
+ 2*zeta)*q^669 + (12*zeta^5 - 12*zeta^4 - 24*zeta^2 + 24*zeta)*q^675 + 
(-27*zeta^5 + 27*zeta^4 + 54*zeta^2 - 54*zeta)*q^681 + (13*zeta^5 + 26*zeta^4 + 
13*zeta^2 - 13*zeta)*q^687 + (-9*zeta^5 + 9*zeta^2 - 9*zeta)*q^693 + (-12*zeta^5
- 6*zeta^4 + 6*zeta^2 - 6*zeta)*q^699 + (-54*zeta^5 - 27*zeta^4 + 27*zeta^2 - 
27*zeta)*q^705 + (-33*zeta^5 - 33*zeta^4)*q^711 + (27*zeta^5 + 54*zeta^4 + 
27*zeta^2 - 27*zeta)*q^717 + (zeta^5 - zeta^4 - 2*zeta^2 + 2*zeta)*q^723 + 
(27*zeta^4 + 27*zeta^2 - 27*zeta)*q^729 + (18*zeta^5 - 18*zeta^4 - 36*zeta^2 + 
36*zeta)*q^735 + (-4*zeta^5 - 8*zeta^4 - 4*zeta^2 + 4*zeta)*q^741 + (27*zeta^5 +
27*zeta^4)*q^747 + (24*zeta^5 + 12*zeta^4 - 12*zeta^2 + 12*zeta)*q^753 + 
(-18*zeta^5 - 9*zeta^4 + 9*zeta^2 - 9*zeta)*q^759 + (54*zeta^5 - 54*zeta^2 + 
54*zeta)*q^765 + (9*zeta^5 + 18*zeta^4 + 9*zeta^2 - 9*zeta)*q^771 + (2*zeta^5 - 
2*zeta^4 - 4*zeta^2 + 4*zeta)*q^777 + (9*zeta^5 - 9*zeta^4 - 18*zeta^2 + 
18*zeta)*q^783 + (21*zeta^5 - 21*zeta^4 - 42*zeta^2 + 42*zeta)*q^789 + 
(18*zeta^5 + 36*zeta^4 + 18*zeta^2 - 18*zeta)*q^795 + (18*zeta^4 + 18*zeta^2 - 
18*zeta)*q^801 + (-12*zeta^5 - 6*zeta^4 + 6*zeta^2 - 6*zeta)*q^807 + (16*zeta^5 
+ 8*zeta^4 - 8*zeta^2 + 8*zeta)*q^813 + (3*zeta^4 + 3*zeta^2 - 3*zeta)*q^819 + 
(-12*zeta^5 - 24*zeta^4 - 12*zeta^2 + 12*zeta)*q^825 + (zeta^5 - zeta^4 - 
2*zeta^2 + 2*zeta)*q^831 + (15*zeta^5 + 30*zeta^4 + 15*zeta^2 - 15*zeta)*q^837 +
(-3*zeta^5 + 3*zeta^4 + 6*zeta^2 - 6*zeta)*q^843 + (-5*zeta^5 - 10*zeta^4 - 
5*zeta^2 + 5*zeta)*q^849 + (-36*zeta^5 + 36*zeta^2 - 36*zeta)*q^855 + (-6*zeta^5
- 3*zeta^4 + 3*zeta^2 - 3*zeta)*q^861 + (38*zeta^5 + 19*zeta^4 - 19*zeta^2 + 
19*zeta)*q^867 + (-33*zeta^5 - 33*zeta^4)*q^873 + (21*zeta^5 + 42*zeta^4 + 
21*zeta^2 - 21*zeta)*q^879 + (9*zeta^5 - 9*zeta^4 - 18*zeta^2 + 18*zeta)*q^885 +
(27*zeta^5 + 27*zeta^4)*q^891 + (-3*zeta^5 + 3*zeta^4 + 6*zeta^2 - 6*zeta)*q^897
+ (-zeta^5 - 2*zeta^4 - zeta^2 + zeta)*q^903 + (-45*zeta^5 - 45*zeta^4)*q^909 + 
(-78*zeta^5 - 39*zeta^4 + 39*zeta^2 - 39*zeta)*q^915 + (40*zeta^5 + 20*zeta^4 - 
20*zeta^2 + 20*zeta)*q^921 + (-21*zeta^5 + 21*zeta^2 - 21*zeta)*q^927 + 
(-21*zeta^5 - 42*zeta^4 - 21*zeta^2 + 21*zeta)*q^933 + (zeta^5 - zeta^4 - 
2*zeta^2 + 2*zeta)*q^939 + (18*zeta^5 + 9*zeta^4 - 9*zeta^2 + 9*zeta)*q^945 + 
(21*zeta^5 - 21*zeta^4 - 42*zeta^2 + 42*zeta)*q^951 + (-9*zeta^5 - 18*zeta^4 - 
9*zeta^2 + 9*zeta)*q^957 + (36*zeta^4 + 36*zeta^2 - 36*zeta)*q^963 + (-48*zeta^5
- 24*zeta^4 + 24*zeta^2 - 24*zeta)*q^969 + (-8*zeta^5 - 4*zeta^4 + 4*zeta^2 - 
4*zeta)*q^975 + (6*zeta^4 + 6*zeta^2 - 6*zeta)*q^981 + (-9*zeta^5 - 18*zeta^4 - 
9*zeta^2 + 9*zeta)*q^987 + (-11*zeta^5 + 11*zeta^4 + 22*zeta^2 - 22*zeta)*q^993 
+ (-12*zeta^5 - 6*zeta^4 + 6*zeta^2 - 6*zeta)*q^999 + (21*zeta^5 - 21*zeta^4 - 
42*zeta^2 + 42*zeta)*q^1005 + O(q^1010), (-zeta^5 - 2*zeta^4 - zeta^2 + zeta)*q 
+ (-3*zeta^5 + 3*zeta^4 + 6*zeta^2 - 6*zeta)*q^5 + (4*zeta^5 + 2*zeta^4 - 
2*zeta^2 + 2*zeta)*q^7 + (-12*zeta^5 - 6*zeta^4 + 6*zeta^2 - 6*zeta)*q^11 + 
(-5*zeta^5 + 5*zeta^4 + 10*zeta^2 - 10*zeta)*q^13 + (3*zeta^5 + 6*zeta^4 + 
3*zeta^2 - 3*zeta)*q^17 + (-2*zeta^5 - 4*zeta^4 - 2*zeta^2 + 2*zeta)*q^19 + 
(-6*zeta^5 + 6*zeta^4 + 12*zeta^2 - 12*zeta)*q^23 + (8*zeta^5 + 4*zeta^4 - 
4*zeta^2 + 4*zeta)*q^25 + (6*zeta^5 + 3*zeta^4 - 3*zeta^2 + 3*zeta)*q^29 + 
(4*zeta^5 - 4*zeta^4 - 8*zeta^2 + 8*zeta)*q^31 + (-6*zeta^5 - 12*zeta^4 - 
6*zeta^2 + 6*zeta)*q^35 + (-5*zeta^5 - 10*zeta^4 - 5*zeta^2 + 5*zeta)*q^37 + 
(6*zeta^5 - 6*zeta^4 - 12*zeta^2 + 12*zeta)*q^41 + (-20*zeta^5 - 10*zeta^4 + 
10*zeta^2 - 10*zeta)*q^43 + (3*zeta^5 - 3*zeta^4 - 6*zeta^2 + 6*zeta)*q^49 + 
(6*zeta^5 + 12*zeta^4 + 6*zeta^2 - 6*zeta)*q^53 + (18*zeta^5 + 36*zeta^4 + 
18*zeta^2 - 18*zeta)*q^55 + (12*zeta^5 - 12*zeta^4 - 24*zeta^2 + 24*zeta)*q^59 +
(10*zeta^5 + 5*zeta^4 - 5*zeta^2 + 5*zeta)*q^61 + (30*zeta^5 + 15*zeta^4 - 
15*zeta^2 + 15*zeta)*q^65 + (-2*zeta^5 + 2*zeta^4 + 4*zeta^2 - 4*zeta)*q^67 + 
(-6*zeta^5 - 12*zeta^4 - 6*zeta^2 + 6*zeta)*q^71 + (zeta^5 + 2*zeta^4 + zeta^2 -
zeta)*q^73 + (12*zeta^5 - 12*zeta^4 - 24*zeta^2 + 24*zeta)*q^77 + (-20*zeta^5 - 
10*zeta^4 + 10*zeta^2 - 10*zeta)*q^79 + (9*zeta^5 - 9*zeta^4 - 18*zeta^2 + 
18*zeta)*q^85 + (3*zeta^5 + 6*zeta^4 + 3*zeta^2 - 3*zeta)*q^89 + (-10*zeta^5 - 
20*zeta^4 - 10*zeta^2 + 10*zeta)*q^91 + (-6*zeta^5 + 6*zeta^4 + 12*zeta^2 - 
12*zeta)*q^95 + (-20*zeta^5 - 10*zeta^4 + 10*zeta^2 - 10*zeta)*q^97 + (12*zeta^5
+ 6*zeta^4 - 6*zeta^2 + 6*zeta)*q^101 + (16*zeta^5 - 16*zeta^4 - 32*zeta^2 + 
32*zeta)*q^103 + (-12*zeta^5 - 24*zeta^4 - 12*zeta^2 + 12*zeta)*q^107 + 
(7*zeta^5 + 14*zeta^4 + 7*zeta^2 - 7*zeta)*q^109 + (-9*zeta^5 + 9*zeta^4 + 
18*zeta^2 - 18*zeta)*q^113 + (36*zeta^5 + 18*zeta^4 - 18*zeta^2 + 18*zeta)*q^115
+ (-12*zeta^5 - 6*zeta^4 + 6*zeta^2 - 6*zeta)*q^119 + (-25*zeta^5 + 25*zeta^4 + 
50*zeta^2 - 50*zeta)*q^121 + (3*zeta^5 + 6*zeta^4 + 3*zeta^2 - 3*zeta)*q^125 + 
(-2*zeta^5 - 4*zeta^4 - 2*zeta^2 + 2*zeta)*q^127 + (6*zeta^5 - 6*zeta^4 - 
12*zeta^2 + 12*zeta)*q^131 + (8*zeta^5 + 4*zeta^4 - 4*zeta^2 + 4*zeta)*q^133 + 
(-30*zeta^5 - 15*zeta^4 + 15*zeta^2 - 15*zeta)*q^137 + (-8*zeta^5 + 8*zeta^4 + 
16*zeta^2 - 16*zeta)*q^139 + (30*zeta^5 + 60*zeta^4 + 30*zeta^2 - 30*zeta)*q^143
+ (-9*zeta^5 - 18*zeta^4 - 9*zeta^2 + 9*zeta)*q^145 + (-15*zeta^5 + 15*zeta^4 + 
30*zeta^2 - 30*zeta)*q^149 + (-8*zeta^5 - 4*zeta^4 + 4*zeta^2 - 4*zeta)*q^151 + 
(-24*zeta^5 - 12*zeta^4 + 12*zeta^2 - 12*zeta)*q^155 + (-5*zeta^5 + 5*zeta^4 + 
10*zeta^2 - 10*zeta)*q^157 + (-12*zeta^5 - 24*zeta^4 - 12*zeta^2 + 
12*zeta)*q^161 + (4*zeta^5 + 8*zeta^4 + 4*zeta^2 - 4*zeta)*q^163 + (-18*zeta^5 +
18*zeta^4 + 36*zeta^2 - 36*zeta)*q^167 + (24*zeta^5 + 12*zeta^4 - 12*zeta^2 + 
12*zeta)*q^169 + (-18*zeta^5 - 9*zeta^4 + 9*zeta^2 - 9*zeta)*q^173 + (-8*zeta^5 
+ 8*zeta^4 + 16*zeta^2 - 16*zeta)*q^175 + (-12*zeta^5 - 24*zeta^4 - 12*zeta^2 + 
12*zeta)*q^179 + (-14*zeta^5 - 28*zeta^4 - 14*zeta^2 + 14*zeta)*q^181 + 
(-15*zeta^5 + 15*zeta^4 + 30*zeta^2 - 30*zeta)*q^185 + (36*zeta^5 + 18*zeta^4 - 
18*zeta^2 + 18*zeta)*q^187 + (12*zeta^5 + 6*zeta^4 - 6*zeta^2 + 6*zeta)*q^191 + 
(25*zeta^5 - 25*zeta^4 - 50*zeta^2 + 50*zeta)*q^193 + (-15*zeta^5 - 30*zeta^4 - 
15*zeta^2 + 15*zeta)*q^197 + (-20*zeta^5 - 40*zeta^4 - 20*zeta^2 + 
20*zeta)*q^199 + (-6*zeta^5 + 6*zeta^4 + 12*zeta^2 - 12*zeta)*q^203 + 
(-36*zeta^5 - 18*zeta^4 + 18*zeta^2 - 18*zeta)*q^205 + (-24*zeta^5 - 12*zeta^4 +
12*zeta^2 - 12*zeta)*q^209 + (-14*zeta^5 + 14*zeta^4 + 28*zeta^2 - 
28*zeta)*q^211 + (30*zeta^5 + 60*zeta^4 + 30*zeta^2 - 30*zeta)*q^215 + (8*zeta^5
+ 16*zeta^4 + 8*zeta^2 - 8*zeta)*q^217 + (15*zeta^5 - 15*zeta^4 - 30*zeta^2 + 
30*zeta)*q^221 + (-20*zeta^5 - 10*zeta^4 + 10*zeta^2 - 10*zeta)*q^223 + 
(36*zeta^5 + 18*zeta^4 - 18*zeta^2 + 18*zeta)*q^227 + (-5*zeta^5 + 5*zeta^4 + 
10*zeta^2 - 10*zeta)*q^229 + (15*zeta^5 + 30*zeta^4 + 15*zeta^2 - 15*zeta)*q^233
+ (22*zeta^5 + 11*zeta^4 - 11*zeta^2 + 11*zeta)*q^241 + (-18*zeta^5 - 9*zeta^4 +
9*zeta^2 - 9*zeta)*q^245 + (-10*zeta^5 + 10*zeta^4 + 20*zeta^2 - 20*zeta)*q^247 
+ (-30*zeta^5 - 60*zeta^4 - 30*zeta^2 + 30*zeta)*q^251 + (36*zeta^5 + 72*zeta^4 
+ 36*zeta^2 - 36*zeta)*q^253 + (27*zeta^5 - 27*zeta^4 - 54*zeta^2 + 
54*zeta)*q^257 + (20*zeta^5 + 10*zeta^4 - 10*zeta^2 + 10*zeta)*q^259 + 
(48*zeta^5 + 24*zeta^4 - 24*zeta^2 + 24*zeta)*q^263 + (18*zeta^5 - 18*zeta^4 - 
36*zeta^2 + 36*zeta)*q^265 + (-3*zeta^5 - 6*zeta^4 - 3*zeta^2 + 3*zeta)*q^269 + 
(10*zeta^5 + 20*zeta^4 + 10*zeta^2 - 10*zeta)*q^271 + (24*zeta^5 - 24*zeta^4 - 
48*zeta^2 + 48*zeta)*q^275 + (-20*zeta^5 - 10*zeta^4 + 10*zeta^2 - 
10*zeta)*q^277 + (-30*zeta^5 - 15*zeta^4 + 15*zeta^2 - 15*zeta)*q^281 + 
(4*zeta^5 - 4*zeta^4 - 8*zeta^2 + 8*zeta)*q^283 + (12*zeta^5 + 24*zeta^4 + 
12*zeta^2 - 12*zeta)*q^287 + (8*zeta^5 + 16*zeta^4 + 8*zeta^2 - 8*zeta)*q^289 + 
(-15*zeta^5 + 15*zeta^4 + 30*zeta^2 - 30*zeta)*q^293 + (-72*zeta^5 - 36*zeta^4 +
36*zeta^2 - 36*zeta)*q^295 + (60*zeta^5 + 30*zeta^4 - 30*zeta^2 + 30*zeta)*q^299
+ (20*zeta^5 - 20*zeta^4 - 40*zeta^2 + 40*zeta)*q^301 + (-15*zeta^5 - 30*zeta^4 
- 15*zeta^2 + 15*zeta)*q^305 + (-20*zeta^5 - 40*zeta^4 - 20*zeta^2 + 
20*zeta)*q^307 + (24*zeta^5 - 24*zeta^4 - 48*zeta^2 + 48*zeta)*q^311 + 
(-50*zeta^5 - 25*zeta^4 + 25*zeta^2 - 25*zeta)*q^313 + (30*zeta^5 + 15*zeta^4 - 
15*zeta^2 + 15*zeta)*q^317 + (18*zeta^5 - 18*zeta^4 - 36*zeta^2 + 36*zeta)*q^319
+ (6*zeta^5 + 12*zeta^4 + 6*zeta^2 - 6*zeta)*q^323 + (-20*zeta^5 - 40*zeta^4 - 
20*zeta^2 + 20*zeta)*q^325 + (52*zeta^5 + 26*zeta^4 - 26*zeta^2 + 26*zeta)*q^331
+ (12*zeta^5 + 6*zeta^4 - 6*zeta^2 + 6*zeta)*q^335 + (10*zeta^5 - 10*zeta^4 - 
20*zeta^2 + 20*zeta)*q^337 + (-24*zeta^5 - 48*zeta^4 - 24*zeta^2 + 
24*zeta)*q^341 + (20*zeta^5 + 40*zeta^4 + 20*zeta^2 - 20*zeta)*q^343 + 
(18*zeta^5 - 18*zeta^4 - 36*zeta^2 + 36*zeta)*q^347 + (4*zeta^5 + 2*zeta^4 - 
2*zeta^2 + 2*zeta)*q^349 + (60*zeta^5 + 30*zeta^4 - 30*zeta^2 + 30*zeta)*q^353 +
(-18*zeta^5 + 18*zeta^4 + 36*zeta^2 - 36*zeta)*q^355 + (18*zeta^5 + 36*zeta^4 + 
18*zeta^2 - 18*zeta)*q^359 + (15*zeta^5 + 30*zeta^4 + 15*zeta^2 - 15*zeta)*q^361
+ (3*zeta^5 - 3*zeta^4 - 6*zeta^2 + 6*zeta)*q^365 + (64*zeta^5 + 32*zeta^4 - 
32*zeta^2 + 32*zeta)*q^367 + (-24*zeta^5 - 12*zeta^4 + 12*zeta^2 - 
12*zeta)*q^371 + (-14*zeta^5 + 14*zeta^4 + 28*zeta^2 - 28*zeta)*q^373 + 
(-15*zeta^5 - 30*zeta^4 - 15*zeta^2 + 15*zeta)*q^377 + (4*zeta^5 + 8*zeta^4 + 
4*zeta^2 - 4*zeta)*q^379 + (-30*zeta^5 + 30*zeta^4 + 60*zeta^2 - 60*zeta)*q^383 
+ (-72*zeta^5 - 36*zeta^4 + 36*zeta^2 - 36*zeta)*q^385 + (-60*zeta^5 - 30*zeta^4
+ 30*zeta^2 - 30*zeta)*q^389 + (18*zeta^5 - 18*zeta^4 - 36*zeta^2 + 
36*zeta)*q^391 + (30*zeta^5 + 60*zeta^4 + 30*zeta^2 - 30*zeta)*q^395 + (7*zeta^5
+ 14*zeta^4 + 7*zeta^2 - 7*zeta)*q^397 + (15*zeta^5 - 15*zeta^4 - 30*zeta^2 + 
30*zeta)*q^401 + (-40*zeta^5 - 20*zeta^4 + 20*zeta^2 - 20*zeta)*q^403 + 
(-60*zeta^5 - 30*zeta^4 + 30*zeta^2 - 30*zeta)*q^407 + (-35*zeta^5 + 35*zeta^4 +
70*zeta^2 - 70*zeta)*q^409 + (24*zeta^5 + 48*zeta^4 + 24*zeta^2 - 24*zeta)*q^413
+ (58*zeta^5 + 29*zeta^4 - 29*zeta^2 + 29*zeta)*q^421 + (-24*zeta^5 - 12*zeta^4 
+ 12*zeta^2 - 12*zeta)*q^425 + (-10*zeta^5 + 10*zeta^4 + 20*zeta^2 - 
20*zeta)*q^427 + (-24*zeta^5 - 48*zeta^4 - 24*zeta^2 + 24*zeta)*q^431 + 
(-11*zeta^5 - 22*zeta^4 - 11*zeta^2 + 11*zeta)*q^433 + (-12*zeta^5 + 12*zeta^4 +
24*zeta^2 - 24*zeta)*q^437 + (16*zeta^5 + 8*zeta^4 - 8*zeta^2 + 8*zeta)*q^439 + 
(9*zeta^5 - 9*zeta^4 - 18*zeta^2 + 18*zeta)*q^445 + (-18*zeta^5 - 36*zeta^4 - 
18*zeta^2 + 18*zeta)*q^449 + (-36*zeta^5 - 72*zeta^4 - 36*zeta^2 + 
36*zeta)*q^451 + (-30*zeta^5 + 30*zeta^4 + 60*zeta^2 - 60*zeta)*q^455 + 
(70*zeta^5 + 35*zeta^4 - 35*zeta^2 + 35*zeta)*q^457 + (-12*zeta^5 - 6*zeta^4 + 
6*zeta^2 - 6*zeta)*q^461 + (4*zeta^5 - 4*zeta^4 - 8*zeta^2 + 8*zeta)*q^463 + 
(-12*zeta^5 - 24*zeta^4 - 12*zeta^2 + 12*zeta)*q^467 + (-4*zeta^5 - 8*zeta^4 - 
4*zeta^2 + 4*zeta)*q^469 + (-60*zeta^5 + 60*zeta^4 + 120*zeta^2 - 
120*zeta)*q^473 + (16*zeta^5 + 8*zeta^4 - 8*zeta^2 + 8*zeta)*q^475 + (36*zeta^5 
+ 18*zeta^4 - 18*zeta^2 + 18*zeta)*q^479 + (-25*zeta^5 + 25*zeta^4 + 50*zeta^2 -
50*zeta)*q^481 + (30*zeta^5 + 60*zeta^4 + 30*zeta^2 - 30*zeta)*q^485 + 
(-20*zeta^5 - 40*zeta^4 - 20*zeta^2 + 20*zeta)*q^487 + (-6*zeta^5 + 6*zeta^4 + 
12*zeta^2 - 12*zeta)*q^491 + (-18*zeta^5 - 9*zeta^4 + 9*zeta^2 - 9*zeta)*q^493 +
(24*zeta^5 + 12*zeta^4 - 12*zeta^2 + 12*zeta)*q^497 + (22*zeta^5 - 22*zeta^4 - 
44*zeta^2 + 44*zeta)*q^499 + (-18*zeta^5 - 36*zeta^4 - 18*zeta^2 + 
18*zeta)*q^505 + (6*zeta^5 - 6*zeta^4 - 12*zeta^2 + 12*zeta)*q^509 + (-4*zeta^5 
- 2*zeta^4 + 2*zeta^2 - 2*zeta)*q^511 + (-96*zeta^5 - 48*zeta^4 + 48*zeta^2 - 
48*zeta)*q^515 + (30*zeta^5 + 60*zeta^4 + 30*zeta^2 - 30*zeta)*q^521 + 
(10*zeta^5 + 20*zeta^4 + 10*zeta^2 - 10*zeta)*q^523 + (-12*zeta^5 + 12*zeta^4 + 
24*zeta^2 - 24*zeta)*q^527 + (26*zeta^5 + 13*zeta^4 - 13*zeta^2 + 13*zeta)*q^529
+ (-60*zeta^5 - 30*zeta^4 + 30*zeta^2 - 30*zeta)*q^533 + (-36*zeta^5 + 36*zeta^4
+ 72*zeta^2 - 72*zeta)*q^535 + (-18*zeta^5 - 36*zeta^4 - 18*zeta^2 + 
18*zeta)*q^539 + (-41*zeta^5 - 82*zeta^4 - 41*zeta^2 + 41*zeta)*q^541 + 
(21*zeta^5 - 21*zeta^4 - 42*zeta^2 + 42*zeta)*q^545 + (-80*zeta^5 - 40*zeta^4 + 
40*zeta^2 - 40*zeta)*q^547 + (12*zeta^5 + 6*zeta^4 - 6*zeta^2 + 6*zeta)*q^551 + 
(20*zeta^5 - 20*zeta^4 - 40*zeta^2 + 40*zeta)*q^553 + (-15*zeta^5 - 30*zeta^4 - 
15*zeta^2 + 15*zeta)*q^557 + (50*zeta^5 + 100*zeta^4 + 50*zeta^2 - 
50*zeta)*q^559 + (54*zeta^5 + 27*zeta^4 - 27*zeta^2 + 27*zeta)*q^565 + 
(-6*zeta^5 - 3*zeta^4 + 3*zeta^2 - 3*zeta)*q^569 + (-44*zeta^5 + 44*zeta^4 + 
88*zeta^2 - 88*zeta)*q^571 + (-24*zeta^5 - 48*zeta^4 - 24*zeta^2 + 
24*zeta)*q^575 + (37*zeta^5 + 74*zeta^4 + 37*zeta^2 - 37*zeta)*q^577 + 
(72*zeta^5 + 36*zeta^4 - 36*zeta^2 + 36*zeta)*q^583 + (-60*zeta^5 - 30*zeta^4 + 
30*zeta^2 - 30*zeta)*q^587 + (8*zeta^5 - 8*zeta^4 - 16*zeta^2 + 16*zeta)*q^589 +
(39*zeta^5 + 78*zeta^4 + 39*zeta^2 - 39*zeta)*q^593 + (18*zeta^5 + 36*zeta^4 + 
18*zeta^2 - 18*zeta)*q^595 + (12*zeta^5 - 12*zeta^4 - 24*zeta^2 + 24*zeta)*q^599
+ (-2*zeta^5 - zeta^4 + zeta^2 - zeta)*q^601 + (150*zeta^5 + 75*zeta^4 - 
75*zeta^2 + 75*zeta)*q^605 + (10*zeta^5 - 10*zeta^4 - 20*zeta^2 + 20*zeta)*q^607
+ (10*zeta^5 + 20*zeta^4 + 10*zeta^2 - 10*zeta)*q^613 + (15*zeta^5 - 15*zeta^4 -
30*zeta^2 + 30*zeta)*q^617 + (-80*zeta^5 - 40*zeta^4 + 40*zeta^2 - 
40*zeta)*q^619 + (-12*zeta^5 - 6*zeta^4 + 6*zeta^2 - 6*zeta)*q^623 + (29*zeta^5 
- 29*zeta^4 - 58*zeta^2 + 58*zeta)*q^625 + (15*zeta^5 + 30*zeta^4 + 15*zeta^2 - 
15*zeta)*q^629 + (4*zeta^5 + 8*zeta^4 + 4*zeta^2 - 4*zeta)*q^631 + (-6*zeta^5 + 
6*zeta^4 + 12*zeta^2 - 12*zeta)*q^635 + (-30*zeta^5 - 15*zeta^4 + 15*zeta^2 - 
15*zeta)*q^637 + (42*zeta^5 + 21*zeta^4 - 21*zeta^2 + 21*zeta)*q^641 + 
(40*zeta^5 - 40*zeta^4 - 80*zeta^2 + 80*zeta)*q^643 + (-18*zeta^5 - 36*zeta^4 - 
18*zeta^2 + 18*zeta)*q^647 + (-72*zeta^5 - 144*zeta^4 - 72*zeta^2 + 
72*zeta)*q^649 + (30*zeta^5 - 30*zeta^4 - 60*zeta^2 + 60*zeta)*q^653 + 
(-36*zeta^5 - 18*zeta^4 + 18*zeta^2 - 18*zeta)*q^655 + (12*zeta^5 + 6*zeta^4 - 
6*zeta^2 + 6*zeta)*q^659 + (-29*zeta^5 + 29*zeta^4 + 58*zeta^2 - 58*zeta)*q^661 
+ (-12*zeta^5 - 24*zeta^4 - 12*zeta^2 + 12*zeta)*q^665 + (-18*zeta^5 - 36*zeta^4
- 18*zeta^2 + 18*zeta)*q^667 + (30*zeta^5 - 30*zeta^4 - 60*zeta^2 + 
60*zeta)*q^671 + (-2*zeta^5 - zeta^4 + zeta^2 - zeta)*q^673 + (84*zeta^5 + 
42*zeta^4 - 42*zeta^2 + 42*zeta)*q^677 + (20*zeta^5 - 20*zeta^4 - 40*zeta^2 + 
40*zeta)*q^679 + (45*zeta^5 + 90*zeta^4 + 45*zeta^2 - 45*zeta)*q^685 + 
(30*zeta^5 - 30*zeta^4 - 60*zeta^2 + 60*zeta)*q^689 + (-20*zeta^5 - 10*zeta^4 + 
10*zeta^2 - 10*zeta)*q^691 + (48*zeta^5 + 24*zeta^4 - 24*zeta^2 + 24*zeta)*q^695
+ (-18*zeta^5 + 18*zeta^4 + 36*zeta^2 - 36*zeta)*q^697 + (-39*zeta^5 - 78*zeta^4
- 39*zeta^2 + 39*zeta)*q^701 + (-10*zeta^5 - 20*zeta^4 - 10*zeta^2 + 
10*zeta)*q^703 + (-12*zeta^5 + 12*zeta^4 + 24*zeta^2 - 24*zeta)*q^707 + 
(-38*zeta^5 - 19*zeta^4 + 19*zeta^2 - 19*zeta)*q^709 + (-48*zeta^5 - 24*zeta^4 +
24*zeta^2 - 24*zeta)*q^713 + (90*zeta^5 - 90*zeta^4 - 180*zeta^2 + 
180*zeta)*q^715 + (-18*zeta^5 - 36*zeta^4 - 18*zeta^2 + 18*zeta)*q^719 + 
(32*zeta^5 + 64*zeta^4 + 32*zeta^2 - 32*zeta)*q^721 + (-12*zeta^5 + 12*zeta^4 + 
24*zeta^2 - 24*zeta)*q^725 + (-20*zeta^5 - 10*zeta^4 + 10*zeta^2 - 
10*zeta)*q^727 + (60*zeta^5 + 30*zeta^4 - 30*zeta^2 + 30*zeta)*q^731 + 
(-14*zeta^5 + 14*zeta^4 + 28*zeta^2 - 28*zeta)*q^733 + (12*zeta^5 + 24*zeta^4 + 
12*zeta^2 - 12*zeta)*q^737 + (52*zeta^5 + 104*zeta^4 + 52*zeta^2 - 
52*zeta)*q^739 + (36*zeta^5 - 36*zeta^4 - 72*zeta^2 + 72*zeta)*q^743 + 
(90*zeta^5 + 45*zeta^4 - 45*zeta^2 + 45*zeta)*q^745 + (48*zeta^5 + 24*zeta^4 - 
24*zeta^2 + 24*zeta)*q^749 + (10*zeta^5 - 10*zeta^4 - 20*zeta^2 + 20*zeta)*q^751
+ (12*zeta^5 + 24*zeta^4 + 12*zeta^2 - 12*zeta)*q^755 + (10*zeta^5 + 20*zeta^4 +
10*zeta^2 - 10*zeta)*q^757 + (-9*zeta^5 + 9*zeta^4 + 18*zeta^2 - 18*zeta)*q^761 
+ (-28*zeta^5 - 14*zeta^4 + 14*zeta^2 - 14*zeta)*q^763 + (-120*zeta^5 - 
60*zeta^4 + 60*zeta^2 - 60*zeta)*q^767 + (-23*zeta^5 + 23*zeta^4 + 46*zeta^2 - 
46*zeta)*q^769 + (45*zeta^5 + 90*zeta^4 + 45*zeta^2 - 45*zeta)*q^773 + 
(16*zeta^5 + 32*zeta^4 + 16*zeta^2 - 16*zeta)*q^775 + (12*zeta^5 - 12*zeta^4 - 
24*zeta^2 + 24*zeta)*q^779 + (-72*zeta^5 - 36*zeta^4 + 36*zeta^2 - 
36*zeta)*q^781 + (30*zeta^5 + 15*zeta^4 - 15*zeta^2 + 15*zeta)*q^785 + 
(-38*zeta^5 + 38*zeta^4 + 76*zeta^2 - 76*zeta)*q^787 + (-18*zeta^5 - 36*zeta^4 -
18*zeta^2 + 18*zeta)*q^791 + (-25*zeta^5 - 50*zeta^4 - 25*zeta^2 + 
25*zeta)*q^793 + (45*zeta^5 - 45*zeta^4 - 90*zeta^2 + 90*zeta)*q^797 + 
(12*zeta^5 + 6*zeta^4 - 6*zeta^2 + 6*zeta)*q^803 + (-36*zeta^5 + 36*zeta^4 + 
72*zeta^2 - 72*zeta)*q^805 + (3*zeta^5 + 6*zeta^4 + 3*zeta^2 - 3*zeta)*q^809 + 
(16*zeta^5 + 32*zeta^4 + 16*zeta^2 - 16*zeta)*q^811 + (12*zeta^5 - 12*zeta^4 - 
24*zeta^2 + 24*zeta)*q^815 + (-40*zeta^5 - 20*zeta^4 + 20*zeta^2 - 
20*zeta)*q^817 + (-42*zeta^5 - 21*zeta^4 + 21*zeta^2 - 21*zeta)*q^821 + 
(4*zeta^5 - 4*zeta^4 - 8*zeta^2 + 8*zeta)*q^823 + (30*zeta^5 + 60*zeta^4 + 
30*zeta^2 - 30*zeta)*q^827 + (-38*zeta^5 - 76*zeta^4 - 38*zeta^2 + 
38*zeta)*q^829 + (-9*zeta^5 + 9*zeta^4 + 18*zeta^2 - 18*zeta)*q^833 + 
(108*zeta^5 + 54*zeta^4 - 54*zeta^2 + 54*zeta)*q^835 + (-36*zeta^5 - 18*zeta^4 +
18*zeta^2 - 18*zeta)*q^839 + (20*zeta^5 - 20*zeta^4 - 40*zeta^2 + 40*zeta)*q^841
+ (-36*zeta^5 - 72*zeta^4 - 36*zeta^2 + 36*zeta)*q^845 + (-50*zeta^5 - 
100*zeta^4 - 50*zeta^2 + 50*zeta)*q^847 + (-30*zeta^5 + 30*zeta^4 + 60*zeta^2 - 
60*zeta)*q^851 + (28*zeta^5 + 14*zeta^4 - 14*zeta^2 + 14*zeta)*q^853 + 
(90*zeta^5 + 45*zeta^4 - 45*zeta^2 + 45*zeta)*q^857 + (-8*zeta^5 + 8*zeta^4 + 
16*zeta^2 - 16*zeta)*q^859 + (-6*zeta^5 - 12*zeta^4 - 6*zeta^2 + 6*zeta)*q^863 +
(27*zeta^5 + 54*zeta^4 + 27*zeta^2 - 27*zeta)*q^865 + (-60*zeta^5 + 60*zeta^4 + 
120*zeta^2 - 120*zeta)*q^869 + (20*zeta^5 + 10*zeta^4 - 10*zeta^2 + 
10*zeta)*q^871 + (-12*zeta^5 - 6*zeta^4 + 6*zeta^2 - 6*zeta)*q^875 + (55*zeta^5 
- 55*zeta^4 - 110*zeta^2 + 110*zeta)*q^877 + (6*zeta^5 + 12*zeta^4 + 6*zeta^2 - 
6*zeta)*q^881 + (16*zeta^5 + 32*zeta^4 + 16*zeta^2 - 16*zeta)*q^883 + 
(-30*zeta^5 + 30*zeta^4 + 60*zeta^2 - 60*zeta)*q^887 + (8*zeta^5 + 4*zeta^4 - 
4*zeta^2 + 4*zeta)*q^889 + (-36*zeta^5 + 36*zeta^4 + 72*zeta^2 - 72*zeta)*q^895 
+ (12*zeta^5 + 24*zeta^4 + 12*zeta^2 - 12*zeta)*q^899 + (-18*zeta^5 - 36*zeta^4 
- 18*zeta^2 + 18*zeta)*q^901 + (-42*zeta^5 + 42*zeta^4 + 84*zeta^2 - 
84*zeta)*q^905 + (16*zeta^5 + 8*zeta^4 - 8*zeta^2 + 8*zeta)*q^907 + (-108*zeta^5
- 54*zeta^4 + 54*zeta^2 - 54*zeta)*q^911 + (12*zeta^5 + 24*zeta^4 + 12*zeta^2 - 
12*zeta)*q^917 + (-38*zeta^5 - 76*zeta^4 - 38*zeta^2 + 38*zeta)*q^919 + 
(-30*zeta^5 + 30*zeta^4 + 60*zeta^2 - 60*zeta)*q^923 + (40*zeta^5 + 20*zeta^4 - 
20*zeta^2 + 20*zeta)*q^925 + (-54*zeta^5 - 27*zeta^4 + 27*zeta^2 - 
27*zeta)*q^929 + (6*zeta^5 - 6*zeta^4 - 12*zeta^2 + 12*zeta)*q^931 + (-54*zeta^5
- 108*zeta^4 - 54*zeta^2 + 54*zeta)*q^935 + (-23*zeta^5 - 46*zeta^4 - 23*zeta^2 
+ 23*zeta)*q^937 + (-15*zeta^5 + 15*zeta^4 + 30*zeta^2 - 30*zeta)*q^941 + 
(-72*zeta^5 - 36*zeta^4 + 36*zeta^2 - 36*zeta)*q^943 + (36*zeta^5 + 18*zeta^4 - 
18*zeta^2 + 18*zeta)*q^947 + (5*zeta^5 - 5*zeta^4 - 10*zeta^2 + 10*zeta)*q^949 +
(-45*zeta^5 - 90*zeta^4 - 45*zeta^2 + 45*zeta)*q^953 + (-18*zeta^5 - 36*zeta^4 -
18*zeta^2 + 18*zeta)*q^955 + (30*zeta^5 - 30*zeta^4 - 60*zeta^2 + 60*zeta)*q^959
+ (-30*zeta^5 - 15*zeta^4 + 15*zeta^2 - 15*zeta)*q^961 + (-150*zeta^5 - 
75*zeta^4 + 75*zeta^2 - 75*zeta)*q^965 + (-38*zeta^5 + 38*zeta^4 + 76*zeta^2 - 
76*zeta)*q^967 + (54*zeta^5 + 108*zeta^4 + 54*zeta^2 - 54*zeta)*q^971 + 
(-16*zeta^5 - 32*zeta^4 - 16*zeta^2 + 16*zeta)*q^973 + (30*zeta^5 - 30*zeta^4 - 
60*zeta^2 + 60*zeta)*q^977 + (36*zeta^5 + 18*zeta^4 - 18*zeta^2 + 18*zeta)*q^979
+ (48*zeta^5 + 24*zeta^4 - 24*zeta^2 + 24*zeta)*q^983 + (-45*zeta^5 + 45*zeta^4 
+ 90*zeta^2 - 90*zeta)*q^985 + (60*zeta^5 + 120*zeta^4 + 60*zeta^2 - 
60*zeta)*q^989 + (-26*zeta^5 - 52*zeta^4 - 26*zeta^2 + 26*zeta)*q^991 + 
(-60*zeta^5 + 60*zeta^4 + 120*zeta^2 - 120*zeta)*q^995 + (106*zeta^5 + 53*zeta^4
- 53*zeta^2 + 53*zeta)*q^997 + (-120*zeta^5 - 60*zeta^4 + 60*zeta^2 - 
60*zeta)*q^1001 + (-36*zeta^5 + 36*zeta^4 + 72*zeta^2 - 72*zeta)*q^1003 + 
(12*zeta^5 + 24*zeta^4 + 12*zeta^2 - 12*zeta)*q^1007 + (37*zeta^5 + 74*zeta^4 + 
37*zeta^2 - 37*zeta)*q^1009 + O(q^1010)] ;
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
x[3]^2 - 3/4*x[4]^2 + 3*x[5]^2 - 1/4*x[6]^2,
x[1]^3 - 1/5*x[1]*x[5]*x[6] - 1/20*x[1]*x[6]^2 + 1/24*x[2]*x[3]*x[4] - 
1/20*x[2]*x[3]*x[5] - 1/60*x[2]*x[3]*x[6] - 7/160*x[2]*x[4]^2 - 
1/10*x[2]*x[4]*x[5] + 1/30*x[2]*x[4]*x[6] + 3/20*x[2]*x[5]^2 - 
1/120*x[2]*x[5]*x[6] + 1/480*x[2]*x[6]^2,
x[1]^2*x[2] - 1/24*x[2]*x[3]*x[4] - 1/24*x[2]*x[3]*x[6] + 1/8*x[2]*x[4]*x[5] - 
1/12*x[2]*x[4]*x[6] - 1/24*x[2]*x[5]*x[6],
x[1]^2*x[3] - 1/48*x[3]*x[4]*x[6] + 1/8*x[3]*x[5]^2 - 1/24*x[3]*x[5]*x[6] - 
1/48*x[3]*x[6]^2 + 1/64*x[4]^3 + 3/32*x[4]^2*x[5] + 3/64*x[4]^2*x[6] + 
1/8*x[4]*x[5]^2 - 1/16*x[4]*x[5]*x[6] - 11/192*x[4]*x[6]^2 - 3/8*x[5]^3 - 
1/8*x[5]^2*x[6] - 1/32*x[5]*x[6]^2 - 1/192*x[6]^3,
x[1]^2*x[4] - 1/18*x[3]*x[4]*x[6] - 1/12*x[3]*x[5]^2 - 1/36*x[3]*x[5]*x[6] - 
1/32*x[4]^3 + 5/48*x[4]^2*x[5] - 5/96*x[4]^2*x[6] + 1/6*x[4]*x[5]^2 - 
1/12*x[4]*x[5]*x[6] + 1/288*x[4]*x[6]^2 - 1/12*x[5]^3 + 1/144*x[5]*x[6]^2 - 
1/288*x[6]^3,
x[1]^2*x[5] - 1/48*x[3]*x[4]*x[6] - 1/24*x[3]*x[5]^2 - 1/24*x[3]*x[5]*x[6] + 
1/144*x[3]*x[6]^2 - 1/64*x[4]^3 - 1/32*x[4]^2*x[5] - 5/192*x[4]^2*x[6] + 
1/8*x[4]*x[5]^2 - 1/16*x[4]*x[5]*x[6] + 1/64*x[4]*x[6]^2 + 1/8*x[5]^3 + 
1/24*x[5]^2*x[6] + 1/96*x[5]*x[6]^2 - 1/576*x[6]^3,
x[1]^2*x[6] - 1/24*x[3]*x[4]*x[6] - 1/24*x[3]*x[6]^2 + 1/8*x[4]*x[5]*x[6] - 
1/12*x[4]*x[6]^2 - 1/24*x[5]*x[6]^2,
x[1]*x[2]^2 + 1/6*x[2]*x[3]*x[4] - 1/8*x[2]*x[4]^2 + 1/12*x[2]*x[4]*x[6] + 
1/6*x[2]*x[5]*x[6] + 1/24*x[2]*x[6]^2,
x[1]*x[2]*x[3] + 1/24*x[3]*x[4]*x[6] - 1/4*x[3]*x[5]^2 + 1/12*x[3]*x[5]*x[6] + 
1/24*x[3]*x[6]^2 + 1/32*x[4]^3 - 1/16*x[4]^2*x[5] + 3/32*x[4]^2*x[6] - 
1/8*x[4]*x[5]*x[6] + 5/96*x[4]*x[6]^2 - 1/4*x[5]^3 + 1/48*x[5]*x[6]^2 - 
1/96*x[6]^3,
x[1]*x[2]*x[4] + 1/18*x[3]*x[4]*x[6] + 1/3*x[3]*x[5]^2 + 1/9*x[3]*x[5]*x[6] + 
1/12*x[4]^2*x[5] - 1/24*x[4]^2*x[6] - 2/3*x[4]*x[5]^2 + 1/3*x[4]*x[5]*x[6] + 
1/36*x[4]*x[6]^2 + 1/3*x[5]^3 - 1/36*x[5]*x[6]^2 + 1/72*x[6]^3,
x[1]*x[2]*x[5] + 1/12*x[3]*x[4]*x[6] + 1/6*x[3]*x[5]^2 - 1/36*x[3]*x[6]^2 + 
1/16*x[4]^3 + 5/48*x[4]^2*x[6] - 1/16*x[4]*x[6]^2 - 1/2*x[5]^3 - 1/6*x[5]^2*x[6]
+ 1/144*x[6]^3,
x[1]*x[2]*x[6] + 1/6*x[3]*x[4]*x[6] - 1/8*x[4]^2*x[6] + 1/12*x[4]*x[6]^2 + 
1/6*x[5]*x[6]^2 + 1/24*x[6]^3,
x[1]*x[3]^2 - 39/5*x[1]*x[5]*x[6] - 11/5*x[1]*x[6]^2 + 3/4*x[2]*x[3]*x[4] - 
6/5*x[2]*x[3]*x[5] - 33/20*x[2]*x[3]*x[6] + 3/40*x[2]*x[4]^2 - 
9/10*x[2]*x[4]*x[5] - 6/5*x[2]*x[4]*x[6] + 3/5*x[2]*x[5]^2 - 6/5*x[2]*x[5]*x[6] 
- 3/40*x[2]*x[6]^2,
x[1]*x[3]*x[4] - 47/5*x[1]*x[5]*x[6] - 13/5*x[1]*x[6]^2 + x[2]*x[3]*x[4] - 
3/5*x[2]*x[3]*x[5] - 11/5*x[2]*x[3]*x[6] - 3/20*x[2]*x[4]^2 - 6/5*x[2]*x[4]*x[5]
- 27/20*x[2]*x[4]*x[6] + 9/5*x[2]*x[5]^2 - 8/5*x[2]*x[5]*x[6] - 
1/10*x[2]*x[6]^2,
x[1]*x[3]*x[5] + 8/5*x[1]*x[5]*x[6] + 2/5*x[1]*x[6]^2 + 2/5*x[2]*x[3]*x[5] + 
3/10*x[2]*x[3]*x[6] + 9/40*x[2]*x[4]^2 + 3/10*x[2]*x[4]*x[5] + 
3/20*x[2]*x[4]*x[6] - 6/5*x[2]*x[5]^2 + 2/5*x[2]*x[5]*x[6] + 1/40*x[2]*x[6]^2,
x[1]*x[3]*x[6] + 3*x[1]*x[5]*x[6] + x[1]*x[6]^2 + x[2]*x[3]*x[6] + 
3/4*x[2]*x[4]*x[6] + 1/4*x[2]*x[6]^2,
x[1]*x[4]^2 - 56/5*x[1]*x[5]*x[6] - 47/15*x[1]*x[6]^2 + x[2]*x[3]*x[4] - 
4/5*x[2]*x[3]*x[5] - 13/5*x[2]*x[3]*x[6] - 1/5*x[2]*x[4]^2 - 3/5*x[2]*x[4]*x[5] 
- 9/5*x[2]*x[4]*x[6] + 12/5*x[2]*x[5]^2 - 9/5*x[2]*x[5]*x[6] - 2/15*x[2]*x[6]^2,
x[1]*x[4]*x[5] + 9/5*x[1]*x[5]*x[6] + 8/15*x[1]*x[6]^2 + 1/5*x[2]*x[3]*x[5] + 
2/5*x[2]*x[3]*x[6] + 3/10*x[2]*x[4]^2 + 2/5*x[2]*x[4]*x[5] + 1/5*x[2]*x[4]*x[6] 
- 3/5*x[2]*x[5]^2 + 1/5*x[2]*x[5]*x[6] + 1/30*x[2]*x[6]^2,
x[1]*x[4]*x[6] + 4*x[1]*x[5]*x[6] + x[1]*x[6]^2 + x[2]*x[3]*x[6] + 
x[2]*x[4]*x[6] + x[2]*x[5]*x[6],
x[1]*x[5]^2 - 1/5*x[1]*x[5]*x[6] - 2/15*x[1]*x[6]^2 + 1/5*x[2]*x[3]*x[5] - 
1/10*x[2]*x[3]*x[6] - 3/40*x[2]*x[4]^2 + 3/20*x[2]*x[4]*x[5] - 
1/20*x[2]*x[4]*x[6] + 2/5*x[2]*x[5]^2 - 1/20*x[2]*x[5]*x[6] - 1/120*x[2]*x[6]^2,
x[2]^3 + 1/3*x[2]*x[3]*x[4] - x[2]*x[3]*x[5] - 1/3*x[2]*x[3]*x[6] - 
1/2*x[2]*x[4]^2 + x[2]*x[4]*x[5] - 1/3*x[2]*x[4]*x[6] + 1/3*x[2]*x[5]*x[6] + 
1/6*x[2]*x[6]^2,
x[2]^2*x[3] + 1/4*x[4]^3 - 1/4*x[4]^2*x[5] + 3/4*x[4]^2*x[6] + x[4]*x[5]^2 - 
x[4]*x[5]*x[6] - 1/4*x[4]*x[6]^2 - x[5]^3 - x[5]^2*x[6] - 5/12*x[5]*x[6]^2 - 
1/12*x[6]^3,
x[2]^2*x[4] - 13/18*x[3]*x[4]*x[6] - 1/3*x[3]*x[5]^2 + 2/9*x[3]*x[5]*x[6] + 
1/6*x[3]*x[6]^2 - 5/8*x[4]^3 + 5/12*x[4]^2*x[5] - 29/24*x[4]^2*x[6] - 
4/3*x[4]*x[5]^2 + 7/6*x[4]*x[5]*x[6] + 37/72*x[4]*x[6]^2 + 11/3*x[5]^3 + 
2*x[5]^2*x[6] + 7/36*x[5]*x[6]^2 - 1/72*x[6]^3,
x[2]^2*x[5] + 1/6*x[3]*x[4]*x[6] - 2/3*x[3]*x[5]^2 - 1/3*x[3]*x[5]*x[6] - 
1/18*x[3]*x[6]^2 + 1/8*x[4]^3 - 1/4*x[4]^2*x[5] + 5/24*x[4]^2*x[6] + x[4]*x[5]^2
- 1/2*x[4]*x[5]*x[6] - 1/8*x[4]*x[6]^2 - x[5]^3 - 1/3*x[5]^2*x[6] + 
1/12*x[5]*x[6]^2 + 1/72*x[6]^3,
x[2]^2*x[6] + 1/3*x[3]*x[4]*x[6] - x[3]*x[5]*x[6] - 1/3*x[3]*x[6]^2 - 
1/2*x[4]^2*x[6] + x[4]*x[5]*x[6] - 1/3*x[4]*x[6]^2 + 1/3*x[5]*x[6]^2 + 
1/6*x[6]^3,
x[2]*x[3]^2 - 3/4*x[2]*x[4]^2 + 3*x[2]*x[5]^2 - 1/4*x[2]*x[6]^2,
x[3]^3 - 1/4*x[3]*x[4]*x[6] + 3/2*x[3]*x[5]^2 - 1/2*x[3]*x[5]*x[6] - 
1/4*x[3]*x[6]^2 - 9/16*x[4]^3 - 3/8*x[4]^2*x[5] + 9/16*x[4]^2*x[6] + 
3*x[4]*x[5]^2 - 3/4*x[4]*x[5]*x[6] + 1/16*x[4]*x[6]^2 - 3/2*x[5]^3 + 
1/8*x[5]*x[6]^2 - 1/16*x[6]^3,
x[3]^2*x[4] - 3/4*x[4]^3 + 3*x[4]*x[5]^2 - 1/4*x[4]*x[6]^2,
x[3]^2*x[5] - 3/4*x[4]^2*x[5] + 3*x[5]^3 - 1/4*x[5]*x[6]^2,
x[3]^2*x[6] - 3/4*x[4]^2*x[6] + 3*x[5]^2*x[6] - 1/4*x[6]^3,
x[3]*x[4]^2 - 1/3*x[3]*x[4]*x[6] - 2*x[3]*x[5]^2 - 2/3*x[3]*x[5]*x[6] - 
3/4*x[4]^3 - 1/2*x[4]^2*x[5] + 3/4*x[4]^2*x[6] + 4*x[4]*x[5]^2 - x[4]*x[5]*x[6] 
+ 1/12*x[4]*x[6]^2 - 2*x[5]^3 + 1/6*x[5]*x[6]^2 - 1/12*x[6]^3,
x[3]*x[4]*x[5] - 1/2*x[3]*x[4]*x[6] - x[3]*x[5]^2 + 1/6*x[3]*x[6]^2 - 3/8*x[4]^3
- 3/4*x[4]^2*x[5] - 5/8*x[4]^2*x[6] + 1/2*x[4]*x[5]*x[6] + 3/8*x[4]*x[6]^2 + 
3*x[5]^3 + 2*x[5]^2*x[6] + 1/4*x[5]*x[6]^2 - 1/24*x[6]^3
]);
