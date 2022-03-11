
    /****************************************************
    Loading this file in magma loads the objects fs_18G1 
    and X_18G1. fs_18G1 is a list of power series which form 
    a basis for the space of cusp forms. X_18G1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | -1, -3, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_18G1 := [Kq | 1/2*(-zeta^2 + 2)*q^3 + 1/2*(zeta^2 + zeta - 
2)*q^6 + 1/2*(zeta^2 + zeta - 2)*q^9 + 1/2*(-2*zeta^2 + zeta + 4)*q^12 - 
3/2*zeta*q^18 + (zeta^2 - zeta - 2)*q^21 + 1/2*(zeta^2 - 2*zeta - 2)*q^24 - 
3/2*zeta*q^27 + 1/2*(-3*zeta^2 + 3*zeta + 6)*q^33 + 1/2*(3*zeta^2 - 6)*q^36 + 
zeta*q^39 + (-2*zeta^2 + zeta + 4)*q^42 + 1/2*(zeta^2 + zeta - 2)*q^48 + 
1/2*(3*zeta^2 - 6)*q^51 + 1/2*(-3*zeta^2 + 6*zeta + 6)*q^54 + 1/2*(zeta^2 - 
2)*q^57 + (-2*zeta^2 + zeta + 4)*q^63 + 1/2*(6*zeta^2 - 3*zeta - 12)*q^66 - 
3*zeta*q^69 + 1/2*(-3*zeta^2 + 3*zeta + 6)*q^72 + 1/2*(-5*zeta^2 + 5*zeta + 
10)*q^75 + (zeta^2 - 2*zeta - 2)*q^78 + 1/2*(-3*zeta^2 + 6*zeta + 6)*q^81 + 
(zeta^2 - 2*zeta - 2)*q^84 + (3*zeta^2 - 3*zeta - 6)*q^87 - 2*zeta*q^93 + 
1/2*(-2*zeta^2 + zeta + 4)*q^96 + 1/2*(6*zeta^2 - 3*zeta - 12)*q^99 + 
1/2*(-3*zeta^2 - 3*zeta + 6)*q^102 + 1/2*(-3*zeta^2 - 3*zeta + 6)*q^108 + 
(2*zeta^2 - 4)*q^111 + 1/2*(-zeta^2 - zeta + 2)*q^114 + (zeta^2 - 2*zeta - 
2)*q^117 + 9/2*zeta*q^123 + (3*zeta^2 - 6)*q^126 + 1/2*(-zeta^2 + zeta + 
2)*q^129 + 1/2*(-3*zeta^2 + 6*zeta + 6)*q^132 + (-3*zeta^2 + 6*zeta + 6)*q^138 +
(-3*zeta^2 + 3*zeta + 6)*q^141 - 3/2*zeta*q^144 - 3/2*zeta*q^147 + 
1/2*(10*zeta^2 - 5*zeta - 20)*q^150 + 1/2*(-3*zeta^2 - 3*zeta + 6)*q^153 + 
(zeta^2 + zeta - 2)*q^156 + (-6*zeta^2 + 12)*q^159 + 1/2*(9*zeta^2 - 9*zeta - 
18)*q^162 + (zeta^2 + zeta - 2)*q^168 + 1/2*(-zeta^2 - zeta + 2)*q^171 + 
(-6*zeta^2 + 3*zeta + 12)*q^174 + 3/2*zeta*q^177 + (4*zeta^2 - 4*zeta - 8)*q^183
+ (-2*zeta^2 + 4*zeta + 4)*q^186 + (3*zeta^2 - 6)*q^189 + 1/2*(zeta^2 - 2*zeta -
2)*q^192 + 1/2*(-9*zeta^2 + 18)*q^198 + 5/2*zeta*q^201 + 1/2*(6*zeta^2 - 3*zeta 
- 12)*q^204 + (-3*zeta^2 + 6*zeta + 6)*q^207 + (6*zeta^2 - 12)*q^213 + 
1/2*(6*zeta^2 - 3*zeta - 12)*q^216 + 1/2*(-11*zeta^2 + 22)*q^219 + (-2*zeta^2 - 
2*zeta + 4)*q^222 + 1/2*(10*zeta^2 - 5*zeta - 20)*q^225 + 1/2*(2*zeta^2 - zeta -
4)*q^228 - 3*zeta*q^231 + (-3*zeta^2 + 3*zeta + 6)*q^234 + (-2*zeta^2 + 2*zeta +
4)*q^237 + 1/2*(9*zeta^2 - 9*zeta - 18)*q^243 + 1/2*(9*zeta^2 - 18*zeta - 
18)*q^246 + (6*zeta^2 - 6*zeta - 12)*q^249 + (-3*zeta^2 + 3*zeta + 6)*q^252 + 
1/2*(2*zeta^2 - zeta - 4)*q^258 + (-6*zeta^2 + 3*zeta + 12)*q^261 + 
1/2*(-3*zeta^2 - 3*zeta + 6)*q^264 + (-3*zeta^2 + 6)*q^267 + (-2*zeta^2 + 
4)*q^273 + (-3*zeta^2 - 3*zeta + 6)*q^276 + (-2*zeta^2 + 4*zeta + 4)*q^279 + 
(6*zeta^2 - 3*zeta - 12)*q^282 + 1/2*(3*zeta^2 - 6)*q^288 + 1/2*(5*zeta^2 - 
5*zeta - 10)*q^291 + 1/2*(-3*zeta^2 + 6*zeta + 6)*q^294 + 1/2*(-9*zeta^2 + 
18)*q^297 + 1/2*(-5*zeta^2 + 10*zeta + 10)*q^300 + 9/2*zeta*q^306 + 7*zeta*q^309
+ (-2*zeta^2 + zeta + 4)*q^312 + (6*zeta^2 + 6*zeta - 12)*q^318 + 1/2*(-3*zeta^2
+ 6)*q^321 + 9/2*zeta*q^324 + (8*zeta^2 - 16)*q^327 + (-2*zeta^2 - 2*zeta + 
4)*q^333 + (-2*zeta^2 + zeta + 4)*q^336 + 3*zeta*q^339 + 3/2*zeta*q^342 + 
(3*zeta^2 - 6*zeta - 6)*q^348 + (-3*zeta^2 + 3*zeta + 6)*q^351 + 1/2*(3*zeta^2 -
6*zeta - 6)*q^354 + (-3*zeta^2 + 3*zeta + 6)*q^357 - zeta*q^363 + (-8*zeta^2 + 
4*zeta + 16)*q^366 + 1/2*(9*zeta^2 - 18*zeta - 18)*q^369 + (-2*zeta^2 - 2*zeta +
4)*q^372 + (-3*zeta^2 - 3*zeta + 6)*q^378 + (-zeta^2 + 2)*q^381 + 1/2*(zeta^2 + 
zeta - 2)*q^384 + 1/2*(2*zeta^2 - zeta - 4)*q^387 + 1/2*(9*zeta^2 - 9*zeta - 
18)*q^396 + (-zeta^2 + zeta + 2)*q^399 + 1/2*(5*zeta^2 - 10*zeta - 10)*q^402 + 
1/2*(-3*zeta^2 + 6*zeta + 6)*q^408 + 1/2*(-3*zeta^2 + 3*zeta + 6)*q^411 + 
(9*zeta^2 - 9*zeta - 18)*q^414 - 19/2*zeta*q^417 + (6*zeta^2 - 3*zeta - 
12)*q^423 + (-6*zeta^2 - 6*zeta + 12)*q^426 + (3*zeta^2 - 6)*q^429 + 
1/2*(-3*zeta^2 + 6*zeta + 6)*q^432 + 1/2*(11*zeta^2 + 11*zeta - 22)*q^438 + 
1/2*(-3*zeta^2 + 6*zeta + 6)*q^441 + (4*zeta^2 - 2*zeta - 8)*q^444 - 
3*zeta*q^447 + 1/2*(-15*zeta^2 + 30)*q^450 + (-5*zeta^2 + 5*zeta + 10)*q^453 + 
1/2*(-zeta^2 + 2*zeta + 2)*q^456 + 9/2*zeta*q^459 + (-3*zeta^2 + 6*zeta + 
6)*q^462 - 3*zeta*q^468 - 2*zeta*q^471 + (4*zeta^2 - 2*zeta - 8)*q^474 + 
(6*zeta^2 + 6*zeta - 12)*q^477 + (6*zeta^2 - 12)*q^483 + 1/2*(-18*zeta^2 + 
9*zeta + 36)*q^486 + (2*zeta^2 - 4)*q^489 + 1/2*(9*zeta^2 + 9*zeta - 18)*q^492 +
(-12*zeta^2 + 6*zeta + 24)*q^498 - 6*zeta*q^501 - 3*zeta*q^504 + 1/2*(-9*zeta^2 
+ 9*zeta + 18)*q^507 + 3/2*zeta*q^513 + 1/2*(-zeta^2 + 2*zeta + 2)*q^516 + 
(-3*zeta^2 + 3*zeta + 6)*q^519 + (9*zeta^2 - 18)*q^522 - 5*zeta*q^525 + 
1/2*(6*zeta^2 - 3*zeta - 12)*q^528 + 1/2*(3*zeta^2 - 6*zeta - 6)*q^531 + 
(3*zeta^2 + 3*zeta - 6)*q^534 + (-6*zeta^2 + 12)*q^537 + (-7*zeta^2 + 14)*q^543 
+ (2*zeta^2 + 2*zeta - 4)*q^546 + (-8*zeta^2 + 4*zeta + 16)*q^549 + (6*zeta^2 - 
3*zeta - 12)*q^552 + (6*zeta^2 - 6*zeta - 12)*q^558 + 1/2*(9*zeta^2 - 9*zeta - 
18)*q^561 + (-3*zeta^2 + 6*zeta + 6)*q^564 + (-3*zeta^2 - 3*zeta + 6)*q^567 + 
(-9*zeta^2 + 9*zeta + 18)*q^573 + 1/2*(-3*zeta^2 + 3*zeta + 6)*q^576 + 
5/2*zeta*q^579 + 1/2*(-10*zeta^2 + 5*zeta + 20)*q^582 + 1/2*(-3*zeta^2 - 3*zeta 
+ 6)*q^588 + (6*zeta^2 - 12)*q^591 + 1/2*(9*zeta^2 + 9*zeta - 18)*q^594 + 
(5*zeta^2 - 10)*q^597 + 1/2*(-5*zeta^2 - 5*zeta + 10)*q^600 + 1/2*(5*zeta^2 - 
10*zeta - 10)*q^603 + 6*zeta*q^609 + 1/2*(-9*zeta^2 + 18)*q^612 + (7*zeta^2 - 
14*zeta - 14)*q^618 + (9*zeta^2 - 9*zeta - 18)*q^621 + (zeta^2 - 2*zeta - 
2)*q^624 + 1/2*(3*zeta^2 - 3*zeta - 6)*q^627 + O(q^630)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_18G1 := Curve(P_Q, [ PolynomialRing(ext<K|Polynomial(K, [-1, -3,
0, 1])> where K is RationalField(), 2) | ]);
