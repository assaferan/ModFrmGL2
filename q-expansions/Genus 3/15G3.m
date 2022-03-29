
    /****************************************************
    Loading this file in magma loads the objects fs_15G3 
    and X_15G3. fs_15G3 is a list of power series which form 
    a basis for the space of cusp forms. X_15G3 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | 1, 4, -4, -1, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_15G3 := [Kq | 1/2*(-zeta^3 + 3*zeta + 2)*q^3 + 1/2*(zeta^3 - 
3*zeta + 3)*q^6 + 1/2*(zeta^3 - 3*zeta + 3)*q^9 + 1/2*(zeta^3 - 3*zeta - 2)*q^12
+ 1/2*(-6*zeta^3 + 18*zeta - 3)*q^15 + 1/2*(-zeta^3 + 3*zeta + 2)*q^18 + 
1/2*(-3*zeta^3 + 9*zeta - 9)*q^24 + 1/2*(-zeta^3 + 3*zeta + 2)*q^27 + 
1/2*(6*zeta^3 - 18*zeta + 3)*q^30 + (2*zeta^3 - 6*zeta - 4)*q^33 + 1/2*(-zeta^3 
+ 3*zeta - 3)*q^36 + (zeta^3 - 3*zeta + 3)*q^39 + 1/2*(6*zeta^3 - 18*zeta + 
3)*q^45 + 1/2*(zeta^3 - 3*zeta - 2)*q^48 + (-zeta^3 + 3*zeta - 3)*q^51 + 
1/2*(zeta^3 - 3*zeta + 3)*q^54 + (-2*zeta^3 + 6*zeta + 4)*q^57 + 1/2*(6*zeta^3 -
18*zeta + 3)*q^60 + (-2*zeta^3 + 6*zeta - 6)*q^66 + 1/2*(3*zeta^3 - 9*zeta - 
6)*q^72 + 1/2*(-6*zeta^3 + 18*zeta - 3)*q^75 + (-zeta^3 + 3*zeta + 2)*q^78 + 
1/2*(zeta^3 - 3*zeta + 3)*q^81 + (zeta^3 - 3*zeta - 2)*q^87 + 1/2*(-6*zeta^3 + 
18*zeta - 3)*q^90 + 1/2*(5*zeta^3 - 15*zeta + 15)*q^96 + (-2*zeta^3 + 6*zeta - 
6)*q^99 + (zeta^3 - 3*zeta - 2)*q^102 + 1/2*(zeta^3 - 3*zeta - 2)*q^108 + 
(5*zeta^3 - 15*zeta + 15)*q^111 + (2*zeta^3 - 6*zeta + 6)*q^114 + (-zeta^3 + 
3*zeta + 2)*q^117 + 1/2*(-18*zeta^3 + 54*zeta - 9)*q^120 + (-5*zeta^3 + 15*zeta 
+ 10)*q^123 + (-2*zeta^3 + 6*zeta - 6)*q^129 + (-2*zeta^3 + 6*zeta + 4)*q^132 + 
1/2*(-6*zeta^3 + 18*zeta - 3)*q^135 + (-4*zeta^3 + 12*zeta - 12)*q^141 + 
1/2*(-zeta^3 + 3*zeta - 3)*q^144 + 1/2*(7*zeta^3 - 21*zeta - 14)*q^147 + 
1/2*(6*zeta^3 - 18*zeta + 3)*q^150 + (zeta^3 - 3*zeta - 2)*q^153 + (-zeta^3 + 
3*zeta - 3)*q^156 + (5*zeta^3 - 15*zeta + 15)*q^159 + 1/2*(-zeta^3 + 3*zeta + 
2)*q^162 + (12*zeta^3 - 36*zeta + 6)*q^165 + (2*zeta^3 - 6*zeta + 6)*q^171 + 
(-zeta^3 + 3*zeta - 3)*q^174 + (2*zeta^3 - 6*zeta - 4)*q^177 + 1/2*(-6*zeta^3 + 
18*zeta - 3)*q^180 + (zeta^3 - 3*zeta - 2)*q^183 + 1/2*(-7*zeta^3 + 21*zeta + 
14)*q^192 + (6*zeta^3 - 18*zeta + 3)*q^195 + (2*zeta^3 - 6*zeta - 4)*q^198 + 
(-6*zeta^3 + 18*zeta - 18)*q^201 + (zeta^3 - 3*zeta + 3)*q^204 + (4*zeta^3 - 
12*zeta - 8)*q^213 + 1/2*(-3*zeta^3 + 9*zeta - 9)*q^216 + (-5*zeta^3 + 15*zeta -
15)*q^219 + (-5*zeta^3 + 15*zeta + 10)*q^222 + 1/2*(6*zeta^3 - 18*zeta + 
3)*q^225 + (2*zeta^3 - 6*zeta - 4)*q^228 + (zeta^3 - 3*zeta + 3)*q^234 + 
1/2*(6*zeta^3 - 18*zeta + 3)*q^240 + 1/2*(-zeta^3 + 3*zeta + 2)*q^243 + 
(5*zeta^3 - 15*zeta + 15)*q^246 + (-6*zeta^3 + 18*zeta - 18)*q^249 + (-6*zeta^3 
+ 18*zeta - 3)*q^255 + (2*zeta^3 - 6*zeta - 4)*q^258 + (-zeta^3 + 3*zeta - 
3)*q^261 + (6*zeta^3 - 18*zeta + 18)*q^264 + (3*zeta^3 - 9*zeta - 6)*q^267 + 
1/2*(6*zeta^3 - 18*zeta + 3)*q^270 + (4*zeta^3 - 12*zeta - 8)*q^282 + 
(-12*zeta^3 + 36*zeta - 6)*q^285 + 1/2*(-5*zeta^3 + 15*zeta + 10)*q^288 + 
(-zeta^3 + 3*zeta - 3)*q^291 + 1/2*(-7*zeta^3 + 21*zeta - 21)*q^294 + (2*zeta^3 
- 6*zeta - 4)*q^297 + 1/2*(6*zeta^3 - 18*zeta + 3)*q^300 + (-3*zeta^3 + 9*zeta +
6)*q^303 + (-zeta^3 + 3*zeta - 3)*q^306 + (8*zeta^3 - 24*zeta + 24)*q^309 + 
(3*zeta^3 - 9*zeta - 6)*q^312 + (-5*zeta^3 + 15*zeta + 10)*q^318 + (6*zeta^3 - 
18*zeta + 18)*q^321 + 1/2*(-zeta^3 + 3*zeta - 3)*q^324 + (-7*zeta^3 + 21*zeta + 
14)*q^327 + (-12*zeta^3 + 36*zeta - 6)*q^330 + (-5*zeta^3 + 15*zeta + 10)*q^333 
+ (-zeta^3 + 3*zeta - 3)*q^339 + (-2*zeta^3 + 6*zeta + 4)*q^342 + (-zeta^3 + 
3*zeta + 2)*q^348 + (zeta^3 - 3*zeta + 3)*q^351 + (-2*zeta^3 + 6*zeta - 6)*q^354
+ 1/2*(18*zeta^3 - 54*zeta + 9)*q^360 + 1/2*(-5*zeta^3 + 15*zeta + 10)*q^363 + 
(-zeta^3 + 3*zeta - 3)*q^366 + (5*zeta^3 - 15*zeta + 15)*q^369 + 1/2*(-6*zeta^3 
+ 18*zeta - 3)*q^375 + (4*zeta^3 - 12*zeta + 12)*q^381 + 1/2*(-3*zeta^3 + 9*zeta
- 9)*q^384 + (2*zeta^3 - 6*zeta - 4)*q^387 + (-6*zeta^3 + 18*zeta - 3)*q^390 + 
(6*zeta^3 - 18*zeta - 12)*q^393 + (2*zeta^3 - 6*zeta + 6)*q^396 + (6*zeta^3 - 
18*zeta - 12)*q^402 + 1/2*(6*zeta^3 - 18*zeta + 3)*q^405 + (-3*zeta^3 + 9*zeta +
6)*q^408 + (3*zeta^3 - 9*zeta + 9)*q^411 + (2*zeta^3 - 6*zeta - 4)*q^417 + 
(4*zeta^3 - 12*zeta - 8)*q^423 + (-4*zeta^3 + 12*zeta - 12)*q^426 + (-4*zeta^3 +
12*zeta - 12)*q^429 + 1/2*(zeta^3 - 3*zeta - 2)*q^432 + (6*zeta^3 - 18*zeta + 
3)*q^435 + (5*zeta^3 - 15*zeta - 10)*q^438 + 1/2*(-7*zeta^3 + 21*zeta - 
21)*q^441 + (-5*zeta^3 + 15*zeta - 15)*q^444 + (-11*zeta^3 + 33*zeta + 22)*q^447
+ 1/2*(-6*zeta^3 + 18*zeta - 3)*q^450 + (4*zeta^3 - 12*zeta - 8)*q^453 + 
(-6*zeta^3 + 18*zeta - 18)*q^456 + (-zeta^3 + 3*zeta - 3)*q^459 + (zeta^3 - 
3*zeta - 2)*q^468 + (-7*zeta^3 + 21*zeta - 21)*q^471 + (-5*zeta^3 + 15*zeta + 
10)*q^477 + 1/2*(30*zeta^3 - 90*zeta + 15)*q^480 + 1/2*(zeta^3 - 3*zeta + 
3)*q^486 + (2*zeta^3 - 6*zeta + 6)*q^489 + (5*zeta^3 - 15*zeta - 10)*q^492 + 
(-12*zeta^3 + 36*zeta - 6)*q^495 + (6*zeta^3 - 18*zeta - 12)*q^498 + 
1/2*(9*zeta^3 - 27*zeta - 18)*q^507 + (6*zeta^3 - 18*zeta + 3)*q^510 + 
(-2*zeta^3 + 6*zeta + 4)*q^513 + (2*zeta^3 - 6*zeta + 6)*q^516 + (9*zeta^3 - 
27*zeta + 27)*q^519 + (zeta^3 - 3*zeta - 2)*q^522 + (-2*zeta^3 + 6*zeta + 
4)*q^528 + (-2*zeta^3 + 6*zeta - 6)*q^531 + (-3*zeta^3 + 9*zeta - 9)*q^534 + 
(-10*zeta^3 + 30*zeta + 20)*q^537 + 1/2*(6*zeta^3 - 18*zeta + 3)*q^540 + 
(5*zeta^3 - 15*zeta - 10)*q^543 + (-zeta^3 + 3*zeta - 3)*q^549 + (30*zeta^3 - 
90*zeta + 15)*q^555 + (4*zeta^3 - 12*zeta + 12)*q^561 + (4*zeta^3 - 12*zeta + 
12)*q^564 + (12*zeta^3 - 36*zeta + 6)*q^570 + (-8*zeta^3 + 24*zeta + 16)*q^573 +
1/2*(7*zeta^3 - 21*zeta + 21)*q^576 + (-zeta^3 + 3*zeta - 3)*q^579 + (zeta^3 - 
3*zeta - 2)*q^582 + (-6*zeta^3 + 18*zeta - 3)*q^585 + 1/2*(-7*zeta^3 + 21*zeta +
14)*q^588 + (-3*zeta^3 + 9*zeta - 9)*q^591 + (-2*zeta^3 + 6*zeta - 6)*q^594 + 
(4*zeta^3 - 12*zeta - 8)*q^597 + 1/2*(-18*zeta^3 + 54*zeta - 9)*q^600 + 
(6*zeta^3 - 18*zeta - 12)*q^603 + (3*zeta^3 - 9*zeta + 9)*q^606 + (-zeta^3 + 
3*zeta + 2)*q^612 + (-30*zeta^3 + 90*zeta - 15)*q^615 + (-8*zeta^3 + 24*zeta + 
16)*q^618 + (-zeta^3 + 3*zeta - 3)*q^624 + (8*zeta^3 - 24*zeta - 16)*q^627 + 
(-10*zeta^3 + 30*zeta + 20)*q^633 + (-5*zeta^3 + 15*zeta - 15)*q^636 + 
(-4*zeta^3 + 12*zeta - 12)*q^639 + (-6*zeta^3 + 18*zeta + 12)*q^642 + 
(-12*zeta^3 + 36*zeta - 6)*q^645 + 1/2*(3*zeta^3 - 9*zeta - 6)*q^648 + (7*zeta^3
- 21*zeta + 21)*q^654 + (5*zeta^3 - 15*zeta - 10)*q^657 + (-12*zeta^3 + 36*zeta 
- 6)*q^660 + (2*zeta^3 - 6*zeta - 4)*q^663 + (5*zeta^3 - 15*zeta + 15)*q^666 + 
(-4*zeta^3 + 12*zeta - 12)*q^669 + 1/2*(-6*zeta^3 + 18*zeta - 3)*q^675 + (zeta^3
- 3*zeta - 2)*q^678 + (10*zeta^3 - 30*zeta + 30)*q^681 + (-2*zeta^3 + 6*zeta - 
6)*q^684 + (-3*zeta^3 + 9*zeta + 6)*q^687 + (3*zeta^3 - 9*zeta + 9)*q^696 + 
(3*zeta^3 - 9*zeta + 9)*q^699 + (-zeta^3 + 3*zeta + 2)*q^702 + (-24*zeta^3 + 
72*zeta - 12)*q^705 + (-2*zeta^3 + 6*zeta + 4)*q^708 + (8*zeta^3 - 24*zeta - 
16)*q^717 + 1/2*(-6*zeta^3 + 18*zeta - 3)*q^720 + (7*zeta^3 - 21*zeta - 
14)*q^723 + 1/2*(5*zeta^3 - 15*zeta + 15)*q^726 + 1/2*(zeta^3 - 3*zeta + 
3)*q^729 + (-zeta^3 + 3*zeta + 2)*q^732 + O(q^735), (zeta^3 - 3*zeta + 1)*q^3 + 
(2*zeta^3 - 6*zeta)*q^6 + (-zeta^3 + 3*zeta)*q^9 + (2*zeta^3 - 6*zeta + 2)*q^12 
+ (-2*zeta^3 + 6*zeta - 2)*q^18 + (-3*zeta^3 + 9*zeta)*q^21 + (zeta^3 - 3*zeta +
1)*q^27 + (2*zeta^3 - 6*zeta + 2)*q^33 + (-2*zeta^3 + 6*zeta)*q^36 + (zeta^3 - 
3*zeta)*q^39 + (-6*zeta^3 + 18*zeta - 6)*q^42 + (-4*zeta^3 + 12*zeta - 4)*q^48 +
(2*zeta^3 - 6*zeta)*q^51 + (2*zeta^3 - 6*zeta)*q^54 + (-5*zeta^3 + 15*zeta - 
5)*q^57 + (3*zeta^3 - 9*zeta + 3)*q^63 + (4*zeta^3 - 12*zeta)*q^66 + (6*zeta^3 -
18*zeta)*q^69 + (2*zeta^3 - 6*zeta + 2)*q^78 + (-zeta^3 + 3*zeta)*q^81 + 
(-6*zeta^3 + 18*zeta)*q^84 + (10*zeta^3 - 30*zeta + 10)*q^87 + (-3*zeta^3 + 
9*zeta - 3)*q^93 + (-8*zeta^3 + 24*zeta)*q^96 + (-2*zeta^3 + 6*zeta)*q^99 + 
(4*zeta^3 - 12*zeta + 4)*q^102 + (2*zeta^3 - 6*zeta + 2)*q^108 + (2*zeta^3 - 
6*zeta)*q^111 + (-10*zeta^3 + 30*zeta)*q^114 + (-zeta^3 + 3*zeta - 1)*q^117 + 
(-8*zeta^3 + 24*zeta - 8)*q^123 + (6*zeta^3 - 18*zeta)*q^126 + (zeta^3 - 
3*zeta)*q^129 + (4*zeta^3 - 12*zeta + 4)*q^132 + (12*zeta^3 - 36*zeta + 
12)*q^138 + (2*zeta^3 - 6*zeta)*q^141 + (4*zeta^3 - 12*zeta)*q^144 + (2*zeta^3 -
6*zeta + 2)*q^147 + (-2*zeta^3 + 6*zeta - 2)*q^153 + (2*zeta^3 - 6*zeta)*q^156 +
(-4*zeta^3 + 12*zeta)*q^159 + (-2*zeta^3 + 6*zeta - 2)*q^162 + (5*zeta^3 - 
15*zeta)*q^171 + (20*zeta^3 - 60*zeta)*q^174 + (-10*zeta^3 + 30*zeta - 10)*q^177
+ (7*zeta^3 - 21*zeta + 7)*q^183 + (-6*zeta^3 + 18*zeta)*q^186 + (-3*zeta^3 + 
9*zeta)*q^189 + (-8*zeta^3 + 24*zeta - 8)*q^192 + (-4*zeta^3 + 12*zeta - 
4)*q^198 + (-3*zeta^3 + 9*zeta)*q^201 + (4*zeta^3 - 12*zeta)*q^204 + (-6*zeta^3 
+ 18*zeta - 6)*q^207 + (-8*zeta^3 + 24*zeta - 8)*q^213 + (-14*zeta^3 + 
42*zeta)*q^219 + (4*zeta^3 - 12*zeta + 4)*q^222 + (-10*zeta^3 + 30*zeta - 
10)*q^228 + (-6*zeta^3 + 18*zeta)*q^231 + (-2*zeta^3 + 6*zeta)*q^234 + (zeta^3 -
3*zeta + 1)*q^243 + (-16*zeta^3 + 48*zeta)*q^246 + (6*zeta^3 - 18*zeta)*q^249 + 
(6*zeta^3 - 18*zeta + 6)*q^252 + (2*zeta^3 - 6*zeta + 2)*q^258 + (-10*zeta^3 + 
30*zeta)*q^261 + (-3*zeta^3 + 9*zeta - 3)*q^273 + (12*zeta^3 - 36*zeta)*q^276 + 
(3*zeta^3 - 9*zeta)*q^279 + (4*zeta^3 - 12*zeta + 4)*q^282 + (8*zeta^3 - 24*zeta
+ 8)*q^288 + (17*zeta^3 - 51*zeta)*q^291 + (4*zeta^3 - 12*zeta)*q^294 + 
(2*zeta^3 - 6*zeta + 2)*q^297 + (12*zeta^3 - 36*zeta + 12)*q^303 + (-4*zeta^3 + 
12*zeta)*q^306 + (-4*zeta^3 + 12*zeta)*q^309 + (-8*zeta^3 + 24*zeta - 8)*q^318 +
(12*zeta^3 - 36*zeta)*q^321 + (-2*zeta^3 + 6*zeta)*q^324 + (5*zeta^3 - 15*zeta +
5)*q^327 + (-2*zeta^3 + 6*zeta - 2)*q^333 + (12*zeta^3 - 36*zeta)*q^336 + 
(-4*zeta^3 + 12*zeta)*q^339 + (10*zeta^3 - 30*zeta + 10)*q^342 + (20*zeta^3 - 
60*zeta + 20)*q^348 + (zeta^3 - 3*zeta)*q^351 + (-20*zeta^3 + 60*zeta)*q^354 + 
(-6*zeta^3 + 18*zeta - 6)*q^357 + (-7*zeta^3 + 21*zeta - 7)*q^363 + (14*zeta^3 -
42*zeta)*q^366 + (8*zeta^3 - 24*zeta)*q^369 + (-6*zeta^3 + 18*zeta - 6)*q^372 + 
(-6*zeta^3 + 18*zeta - 6)*q^378 + (-8*zeta^3 + 24*zeta)*q^381 + (-zeta^3 + 
3*zeta - 1)*q^387 + (12*zeta^3 - 36*zeta + 12)*q^393 + (-4*zeta^3 + 
12*zeta)*q^396 + (15*zeta^3 - 45*zeta)*q^399 + (-6*zeta^3 + 18*zeta - 6)*q^402 +
(-18*zeta^3 + 54*zeta)*q^411 + (-12*zeta^3 + 36*zeta)*q^414 + (20*zeta^3 - 
60*zeta + 20)*q^417 + (-2*zeta^3 + 6*zeta - 2)*q^423 + (-16*zeta^3 + 
48*zeta)*q^426 + (2*zeta^3 - 6*zeta)*q^429 + (-4*zeta^3 + 12*zeta - 4)*q^432 + 
(-28*zeta^3 + 84*zeta - 28)*q^438 + (-2*zeta^3 + 6*zeta)*q^441 + (4*zeta^3 - 
12*zeta)*q^444 + (10*zeta^3 - 30*zeta + 10)*q^447 + (7*zeta^3 - 21*zeta + 
7)*q^453 + (2*zeta^3 - 6*zeta)*q^459 + (-12*zeta^3 + 36*zeta - 12)*q^462 + 
(-2*zeta^3 + 6*zeta - 2)*q^468 + (-13*zeta^3 + 39*zeta)*q^471 + (4*zeta^3 - 
12*zeta + 4)*q^477 + (-18*zeta^3 + 54*zeta - 18)*q^483 + (2*zeta^3 - 
6*zeta)*q^486 + (11*zeta^3 - 33*zeta)*q^489 + (-16*zeta^3 + 48*zeta - 16)*q^492 
+ (12*zeta^3 - 36*zeta + 12)*q^498 + (12*zeta^3 - 36*zeta)*q^501 + (-12*zeta^3 +
36*zeta - 12)*q^507 + (-5*zeta^3 + 15*zeta - 5)*q^513 + (2*zeta^3 - 
6*zeta)*q^516 + (6*zeta^3 - 18*zeta)*q^519 + (-20*zeta^3 + 60*zeta - 20)*q^522 +
(-8*zeta^3 + 24*zeta - 8)*q^528 + (10*zeta^3 - 30*zeta)*q^531 + (-10*zeta^3 + 
30*zeta - 10)*q^537 + (17*zeta^3 - 51*zeta + 17)*q^543 + (-6*zeta^3 + 
18*zeta)*q^546 + (-7*zeta^3 + 21*zeta)*q^549 + (6*zeta^3 - 18*zeta + 6)*q^558 + 
(4*zeta^3 - 12*zeta)*q^561 + (4*zeta^3 - 12*zeta)*q^564 + (3*zeta^3 - 9*zeta + 
3)*q^567 + (22*zeta^3 - 66*zeta + 22)*q^573 + (8*zeta^3 - 24*zeta)*q^576 + 
(11*zeta^3 - 33*zeta)*q^579 + (34*zeta^3 - 102*zeta + 34)*q^582 + (4*zeta^3 - 
12*zeta + 4)*q^588 + (-18*zeta^3 + 54*zeta)*q^591 + (4*zeta^3 - 12*zeta)*q^594 +
(-5*zeta^3 + 15*zeta - 5)*q^597 + (3*zeta^3 - 9*zeta + 3)*q^603 + (24*zeta^3 - 
72*zeta)*q^606 + (-30*zeta^3 + 90*zeta)*q^609 + (-4*zeta^3 + 12*zeta - 4)*q^612 
+ (-8*zeta^3 + 24*zeta - 8)*q^618 + (6*zeta^3 - 18*zeta)*q^621 + (-4*zeta^3 + 
12*zeta)*q^624 + (-10*zeta^3 + 30*zeta - 10)*q^627 + (-13*zeta^3 + 39*zeta - 
13)*q^633 + (-8*zeta^3 + 24*zeta)*q^636 + (8*zeta^3 - 24*zeta)*q^639 + 
(24*zeta^3 - 72*zeta + 24)*q^642 + (9*zeta^3 - 27*zeta)*q^651 + (10*zeta^3 - 
30*zeta)*q^654 + (14*zeta^3 - 42*zeta + 14)*q^657 + (2*zeta^3 - 6*zeta + 
2)*q^663 + (-4*zeta^3 + 12*zeta)*q^666 + (-19*zeta^3 + 57*zeta)*q^669 + 
(24*zeta^3 - 72*zeta + 24)*q^672 + (-8*zeta^3 + 24*zeta - 8)*q^678 + (-8*zeta^3 
+ 24*zeta)*q^681 + (10*zeta^3 - 30*zeta)*q^684 + (-15*zeta^3 + 45*zeta - 
15)*q^687 + (6*zeta^3 - 18*zeta + 6)*q^693 + (-24*zeta^3 + 72*zeta)*q^699 + 
(2*zeta^3 - 6*zeta + 2)*q^702 + (-20*zeta^3 + 60*zeta - 20)*q^708 + (-12*zeta^3 
+ 36*zeta)*q^714 + (20*zeta^3 - 60*zeta + 20)*q^717 + (-23*zeta^3 + 69*zeta - 
23)*q^723 + (-14*zeta^3 + 42*zeta)*q^726 + (-zeta^3 + 3*zeta)*q^729 + (14*zeta^3
- 42*zeta + 14)*q^732 + O(q^735), (zeta^3 - 5*zeta + 1)*q^3 + (-2*zeta^3 - 
4*zeta^2 + 6*zeta + 8)*q^6 + (-zeta^3 - 2*zeta^2 + 3*zeta + 4)*q^9 + (-2*zeta^3 
+ 10*zeta - 2)*q^12 + (-2*zeta^3 + 10*zeta - 2)*q^18 + (3*zeta^3 + 6*zeta^2 - 
9*zeta - 12)*q^21 + (-zeta^3 + 5*zeta - 1)*q^27 + (2*zeta^3 - 10*zeta + 2)*q^33 
+ (2*zeta^3 + 4*zeta^2 - 6*zeta - 8)*q^36 + (zeta^3 + 2*zeta^2 - 3*zeta - 
4)*q^39 + (6*zeta^3 - 30*zeta + 6)*q^42 + (-4*zeta^3 + 20*zeta - 4)*q^48 + 
(-2*zeta^3 - 4*zeta^2 + 6*zeta + 8)*q^51 + (2*zeta^3 + 4*zeta^2 - 6*zeta - 
8)*q^54 + (5*zeta^3 - 25*zeta + 5)*q^57 + (3*zeta^3 - 15*zeta + 3)*q^63 + 
(-4*zeta^3 - 8*zeta^2 + 12*zeta + 16)*q^66 + (6*zeta^3 + 12*zeta^2 - 18*zeta - 
24)*q^69 + (2*zeta^3 - 10*zeta + 2)*q^78 + (zeta^3 + 2*zeta^2 - 3*zeta - 4)*q^81
+ (-6*zeta^3 - 12*zeta^2 + 18*zeta + 24)*q^84 + (-10*zeta^3 + 50*zeta - 10)*q^87
+ (-3*zeta^3 + 15*zeta - 3)*q^93 + (8*zeta^3 + 16*zeta^2 - 24*zeta - 32)*q^96 + 
(-2*zeta^3 - 4*zeta^2 + 6*zeta + 8)*q^99 + (-4*zeta^3 + 20*zeta - 4)*q^102 + 
(2*zeta^3 - 10*zeta + 2)*q^108 + (-2*zeta^3 - 4*zeta^2 + 6*zeta + 8)*q^111 + 
(-10*zeta^3 - 20*zeta^2 + 30*zeta + 40)*q^114 + (zeta^3 - 5*zeta + 1)*q^117 + 
(-8*zeta^3 + 40*zeta - 8)*q^123 + (-6*zeta^3 - 12*zeta^2 + 18*zeta + 24)*q^126 +
(zeta^3 + 2*zeta^2 - 3*zeta - 4)*q^129 + (-4*zeta^3 + 20*zeta - 4)*q^132 + 
(12*zeta^3 - 60*zeta + 12)*q^138 + (-2*zeta^3 - 4*zeta^2 + 6*zeta + 8)*q^141 + 
(4*zeta^3 + 8*zeta^2 - 12*zeta - 16)*q^144 + (-2*zeta^3 + 10*zeta - 2)*q^147 + 
(-2*zeta^3 + 10*zeta - 2)*q^153 + (-2*zeta^3 - 4*zeta^2 + 6*zeta + 8)*q^156 + 
(-4*zeta^3 - 8*zeta^2 + 12*zeta + 16)*q^159 + (2*zeta^3 - 10*zeta + 2)*q^162 + 
(-5*zeta^3 - 10*zeta^2 + 15*zeta + 20)*q^171 + (20*zeta^3 + 40*zeta^2 - 60*zeta 
- 80)*q^174 + (10*zeta^3 - 50*zeta + 10)*q^177 + (7*zeta^3 - 35*zeta + 7)*q^183 
+ (6*zeta^3 + 12*zeta^2 - 18*zeta - 24)*q^186 + (-3*zeta^3 - 6*zeta^2 + 9*zeta +
12)*q^189 + (8*zeta^3 - 40*zeta + 8)*q^192 + (-4*zeta^3 + 20*zeta - 4)*q^198 + 
(3*zeta^3 + 6*zeta^2 - 9*zeta - 12)*q^201 + (4*zeta^3 + 8*zeta^2 - 12*zeta - 
16)*q^204 + (6*zeta^3 - 30*zeta + 6)*q^207 + (-8*zeta^3 + 40*zeta - 8)*q^213 + 
(-14*zeta^3 - 28*zeta^2 + 42*zeta + 56)*q^219 + (-4*zeta^3 + 20*zeta - 4)*q^222 
+ (-10*zeta^3 + 50*zeta - 10)*q^228 + (6*zeta^3 + 12*zeta^2 - 18*zeta - 
24)*q^231 + (-2*zeta^3 - 4*zeta^2 + 6*zeta + 8)*q^234 + (zeta^3 - 5*zeta + 
1)*q^243 + (16*zeta^3 + 32*zeta^2 - 48*zeta - 64)*q^246 + (6*zeta^3 + 12*zeta^2 
- 18*zeta - 24)*q^249 + (-6*zeta^3 + 30*zeta - 6)*q^252 + (2*zeta^3 - 10*zeta + 
2)*q^258 + (10*zeta^3 + 20*zeta^2 - 30*zeta - 40)*q^261 + (-3*zeta^3 + 15*zeta -
3)*q^273 + (-12*zeta^3 - 24*zeta^2 + 36*zeta + 48)*q^276 + (3*zeta^3 + 6*zeta^2 
- 9*zeta - 12)*q^279 + (-4*zeta^3 + 20*zeta - 4)*q^282 + (8*zeta^3 - 40*zeta + 
8)*q^288 + (-17*zeta^3 - 34*zeta^2 + 51*zeta + 68)*q^291 + (4*zeta^3 + 8*zeta^2 
- 12*zeta - 16)*q^294 + (-2*zeta^3 + 10*zeta - 2)*q^297 + (12*zeta^3 - 60*zeta +
12)*q^303 + (4*zeta^3 + 8*zeta^2 - 12*zeta - 16)*q^306 + (-4*zeta^3 - 8*zeta^2 +
12*zeta + 16)*q^309 + (-8*zeta^3 + 40*zeta - 8)*q^318 + (-12*zeta^3 - 24*zeta^2 
+ 36*zeta + 48)*q^321 + (-2*zeta^3 - 4*zeta^2 + 6*zeta + 8)*q^324 + (-5*zeta^3 +
25*zeta - 5)*q^327 + (-2*zeta^3 + 10*zeta - 2)*q^333 + (-12*zeta^3 - 24*zeta^2 +
36*zeta + 48)*q^336 + (-4*zeta^3 - 8*zeta^2 + 12*zeta + 16)*q^339 + (-10*zeta^3 
+ 50*zeta - 10)*q^342 + (20*zeta^3 - 100*zeta + 20)*q^348 + (-zeta^3 - 2*zeta^2 
+ 3*zeta + 4)*q^351 + (-20*zeta^3 - 40*zeta^2 + 60*zeta + 80)*q^354 + (6*zeta^3 
- 30*zeta + 6)*q^357 + (-7*zeta^3 + 35*zeta - 7)*q^363 + (-14*zeta^3 - 28*zeta^2
+ 42*zeta + 56)*q^366 + (8*zeta^3 + 16*zeta^2 - 24*zeta - 32)*q^369 + (6*zeta^3 
- 30*zeta + 6)*q^372 + (-6*zeta^3 + 30*zeta - 6)*q^378 + (8*zeta^3 + 16*zeta^2 -
24*zeta - 32)*q^381 + (zeta^3 - 5*zeta + 1)*q^387 + (12*zeta^3 - 60*zeta + 
12)*q^393 + (4*zeta^3 + 8*zeta^2 - 12*zeta - 16)*q^396 + (15*zeta^3 + 30*zeta^2 
- 45*zeta - 60)*q^399 + (6*zeta^3 - 30*zeta + 6)*q^402 + (18*zeta^3 + 36*zeta^2 
- 54*zeta - 72)*q^411 + (-12*zeta^3 - 24*zeta^2 + 36*zeta + 48)*q^414 + 
(-20*zeta^3 + 100*zeta - 20)*q^417 + (-2*zeta^3 + 10*zeta - 2)*q^423 + 
(16*zeta^3 + 32*zeta^2 - 48*zeta - 64)*q^426 + (2*zeta^3 + 4*zeta^2 - 6*zeta - 
8)*q^429 + (4*zeta^3 - 20*zeta + 4)*q^432 + (-28*zeta^3 + 140*zeta - 28)*q^438 +
(2*zeta^3 + 4*zeta^2 - 6*zeta - 8)*q^441 + (4*zeta^3 + 8*zeta^2 - 12*zeta - 
16)*q^444 + (-10*zeta^3 + 50*zeta - 10)*q^447 + (7*zeta^3 - 35*zeta + 7)*q^453 +
(2*zeta^3 + 4*zeta^2 - 6*zeta - 8)*q^459 + (12*zeta^3 - 60*zeta + 12)*q^462 + 
(-2*zeta^3 + 10*zeta - 2)*q^468 + (13*zeta^3 + 26*zeta^2 - 39*zeta - 52)*q^471 +
(-4*zeta^3 + 20*zeta - 4)*q^477 + (-18*zeta^3 + 90*zeta - 18)*q^483 + (-2*zeta^3
- 4*zeta^2 + 6*zeta + 8)*q^486 + (11*zeta^3 + 22*zeta^2 - 33*zeta - 44)*q^489 + 
(16*zeta^3 - 80*zeta + 16)*q^492 + (12*zeta^3 - 60*zeta + 12)*q^498 + 
(-12*zeta^3 - 24*zeta^2 + 36*zeta + 48)*q^501 + (12*zeta^3 - 60*zeta + 12)*q^507
+ (-5*zeta^3 + 25*zeta - 5)*q^513 + (-2*zeta^3 - 4*zeta^2 + 6*zeta + 8)*q^516 + 
(6*zeta^3 + 12*zeta^2 - 18*zeta - 24)*q^519 + (20*zeta^3 - 100*zeta + 20)*q^522 
+ (-8*zeta^3 + 40*zeta - 8)*q^528 + (-10*zeta^3 - 20*zeta^2 + 30*zeta + 
40)*q^531 + (10*zeta^3 - 50*zeta + 10)*q^537 + (17*zeta^3 - 85*zeta + 17)*q^543 
+ (6*zeta^3 + 12*zeta^2 - 18*zeta - 24)*q^546 + (-7*zeta^3 - 14*zeta^2 + 21*zeta
+ 28)*q^549 + (6*zeta^3 - 30*zeta + 6)*q^558 + (-4*zeta^3 - 8*zeta^2 + 12*zeta +
16)*q^561 + (4*zeta^3 + 8*zeta^2 - 12*zeta - 16)*q^564 + (-3*zeta^3 + 15*zeta - 
3)*q^567 + (22*zeta^3 - 110*zeta + 22)*q^573 + (-8*zeta^3 - 16*zeta^2 + 24*zeta 
+ 32)*q^576 + (11*zeta^3 + 22*zeta^2 - 33*zeta - 44)*q^579 + (-34*zeta^3 + 
170*zeta - 34)*q^582 + (4*zeta^3 - 20*zeta + 4)*q^588 + (18*zeta^3 + 36*zeta^2 -
54*zeta - 72)*q^591 + (4*zeta^3 + 8*zeta^2 - 12*zeta - 16)*q^594 + (5*zeta^3 - 
25*zeta + 5)*q^597 + (3*zeta^3 - 15*zeta + 3)*q^603 + (-24*zeta^3 - 48*zeta^2 + 
72*zeta + 96)*q^606 + (-30*zeta^3 - 60*zeta^2 + 90*zeta + 120)*q^609 + (4*zeta^3
- 20*zeta + 4)*q^612 + (-8*zeta^3 + 40*zeta - 8)*q^618 + (-6*zeta^3 - 12*zeta^2 
+ 18*zeta + 24)*q^621 + (-4*zeta^3 - 8*zeta^2 + 12*zeta + 16)*q^624 + (10*zeta^3
- 50*zeta + 10)*q^627 + (-13*zeta^3 + 65*zeta - 13)*q^633 + (8*zeta^3 + 
16*zeta^2 - 24*zeta - 32)*q^636 + (8*zeta^3 + 16*zeta^2 - 24*zeta - 32)*q^639 + 
(-24*zeta^3 + 120*zeta - 24)*q^642 + (-9*zeta^3 - 18*zeta^2 + 27*zeta + 
36)*q^651 + (10*zeta^3 + 20*zeta^2 - 30*zeta - 40)*q^654 + (-14*zeta^3 + 70*zeta
- 14)*q^657 + (2*zeta^3 - 10*zeta + 2)*q^663 + (4*zeta^3 + 8*zeta^2 - 12*zeta - 
16)*q^666 + (-19*zeta^3 - 38*zeta^2 + 57*zeta + 76)*q^669 + (-24*zeta^3 + 
120*zeta - 24)*q^672 + (-8*zeta^3 + 40*zeta - 8)*q^678 + (8*zeta^3 + 16*zeta^2 -
24*zeta - 32)*q^681 + (10*zeta^3 + 20*zeta^2 - 30*zeta - 40)*q^684 + (15*zeta^3 
- 75*zeta + 15)*q^687 + (6*zeta^3 - 30*zeta + 6)*q^693 + (-24*zeta^3 - 48*zeta^2
+ 72*zeta + 96)*q^699 + (-2*zeta^3 + 10*zeta - 2)*q^702 + (-20*zeta^3 + 100*zeta
- 20)*q^708 + (-12*zeta^3 - 24*zeta^2 + 36*zeta + 48)*q^714 + (-20*zeta^3 + 
100*zeta - 20)*q^717 + (-23*zeta^3 + 115*zeta - 23)*q^723 + (14*zeta^3 + 
28*zeta^2 - 42*zeta - 56)*q^726 + (-zeta^3 - 2*zeta^2 + 3*zeta + 4)*q^729 + 
(-14*zeta^3 + 70*zeta - 14)*q^732 + O(q^735)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_15G3 := Curve(P_Q, [ PolynomialRing(ext<K|Polynomial(K, [1, 4, 
-4, -1, 1])> where K is RationalField(), 3) |
x[1]^2 + x[1]*x[2] - 5/16*x[2]^2 - 3/16*x[3]^2
]);
