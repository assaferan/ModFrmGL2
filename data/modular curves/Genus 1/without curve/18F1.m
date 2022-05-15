
    /****************************************************
    Loading this file in magma loads the objects fs_18F1 
    and X_18F1. fs_18F1 is a list of power series which form 
    a basis for the space of cusp forms. X_18F1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | -1, -3, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_18F1 := [Kq | 1/2*(-zeta^2 + 2)*q^3 + 1/2*(zeta^2 - 2*zeta - 
2)*q^9 + 3/2*zeta*q^15 + 1/2*(-zeta^2 + zeta + 2)*q^21 + 1/2*(3*zeta^2 - 6)*q^27
+ 1/2*(3*zeta^2 - 3*zeta - 6)*q^33 - 1/2*zeta*q^39 + 1/2*(-6*zeta^2 + 3*zeta + 
12)*q^45 + (-3*zeta^2 + 6)*q^51 + (2*zeta^2 - 4)*q^57 + 1/2*(-zeta^2 - zeta + 
2)*q^63 - 3/2*zeta*q^69 + (2*zeta^2 - 2*zeta - 4)*q^75 + 1/2*(-3*zeta^2 + 6*zeta
+ 6)*q^81 + 1/2*(3*zeta^2 - 3*zeta - 6)*q^87 + 5/2*zeta*q^93 + 1/2*(3*zeta^2 + 
3*zeta - 6)*q^99 + 1/2*(3*zeta^2 - 6)*q^105 + (-zeta^2 + 2)*q^111 + 
1/2*(2*zeta^2 - zeta - 4)*q^117 + 3/2*zeta*q^123 + 1/2*(-zeta^2 + zeta + 
2)*q^129 - 9/2*zeta*q^135 + 1/2*(-9*zeta^2 + 9*zeta + 18)*q^141 - 3*zeta*q^147 +
(3*zeta^2 - 6*zeta - 6)*q^153 + (3*zeta^2 - 6)*q^159 + 1/2*(-9*zeta^2 + 
18)*q^165 + (-2*zeta^2 + 4*zeta + 4)*q^171 - 3/2*zeta*q^177 + 1/2*(-13*zeta^2 + 
13*zeta + 26)*q^183 + 1/2*(3*zeta^2 - 3*zeta - 6)*q^189 + 1/2*(-3*zeta^2 + 
3*zeta + 6)*q^195 - 7/2*zeta*q^201 + 1/2*(6*zeta^2 - 3*zeta - 12)*q^207 + 
(6*zeta^2 - 12)*q^213 + (5*zeta^2 - 10)*q^219 + (2*zeta^2 + 2*zeta - 4)*q^225 - 
3/2*zeta*q^231 + 1/2*(11*zeta^2 - 11*zeta - 22)*q^237 + 1/2*(-9*zeta^2 + 
18)*q^243 + 1/2*(-9*zeta^2 + 9*zeta + 18)*q^249 + 9*zeta*q^255 + 1/2*(3*zeta^2 +
3*zeta - 6)*q^261 + (-3*zeta^2 + 6)*q^267 + 1/2*(-zeta^2 + 2)*q^273 + 
1/2*(-10*zeta^2 + 5*zeta + 20)*q^279 - 6*zeta*q^285 + 1/2*(11*zeta^2 - 11*zeta -
22)*q^291 + 1/2*(-9*zeta^2 + 9*zeta + 18)*q^297 + 1/2*(15*zeta^2 - 15*zeta - 
30)*q^303 - 7/2*zeta*q^309 + 1/2*(-3*zeta^2 + 6*zeta + 6)*q^315 + (-6*zeta^2 + 
12)*q^321 + (-zeta^2 + 2)*q^327 + (zeta^2 - 2*zeta - 2)*q^333 - 9/2*zeta*q^339 +
1/2*(-9*zeta^2 + 9*zeta + 18)*q^345 + 3/2*zeta*q^351 + (-3*zeta^2 + 3*zeta + 
6)*q^357 - zeta*q^363 + 1/2*(-6*zeta^2 + 3*zeta + 12)*q^369 + 1/2*(3*zeta^2 - 
6)*q^375 + (8*zeta^2 - 16)*q^381 + 1/2*(-zeta^2 - zeta + 2)*q^387 + 
21/2*zeta*q^393 + (2*zeta^2 - 2*zeta - 4)*q^399 + 1/2*(18*zeta^2 - 9*zeta - 
36)*q^405 + 1/2*(3*zeta^2 - 3*zeta - 6)*q^411 + 5/2*zeta*q^417 + 1/2*(-9*zeta^2 
- 9*zeta + 18)*q^423 + 1/2*(3*zeta^2 - 6)*q^429 + 1/2*(-9*zeta^2 + 18)*q^435 + 
(6*zeta^2 - 3*zeta - 12)*q^441 + 15/2*zeta*q^447 + 1/2*(-13*zeta^2 + 13*zeta + 
26)*q^453 + (9*zeta^2 - 18)*q^459 + 1/2*(15*zeta^2 - 15*zeta - 30)*q^465 - 
13/2*zeta*q^471 + (-3*zeta^2 + 6*zeta + 6)*q^477 + 1/2*(-3*zeta^2 + 6)*q^483 + 
(-10*zeta^2 + 20)*q^489 + 1/2*(9*zeta^2 - 18*zeta - 18)*q^495 + 9/2*zeta*q^501 +
(-6*zeta^2 + 6*zeta + 12)*q^507 + (-6*zeta^2 + 12)*q^513 + 1/2*(-9*zeta^2 + 
9*zeta + 18)*q^519 - 2*zeta*q^525 + 1/2*(6*zeta^2 - 3*zeta - 12)*q^531 + 
(-6*zeta^2 + 12)*q^537 + (-zeta^2 + 2)*q^543 + 1/2*(-13*zeta^2 - 13*zeta + 
26)*q^549 + 3*zeta*q^555 + (9*zeta^2 - 9*zeta - 18)*q^561 + 1/2*(3*zeta^2 + 
3*zeta - 6)*q^567 + 1/2*(15*zeta^2 - 15*zeta - 30)*q^573 + 11/2*zeta*q^579 + 
1/2*(-3*zeta^2 - 3*zeta + 6)*q^585 + (-3*zeta^2 + 6)*q^591 + (2*zeta^2 - 
4)*q^597 + 1/2*(14*zeta^2 - 7*zeta - 28)*q^603 - 3/2*zeta*q^609 + 1/2*(9*zeta^2 
- 9*zeta - 18)*q^615 + 9/2*zeta*q^621 + (-6*zeta^2 + 6*zeta + 12)*q^627 + 
O(q^630)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_18F1 := Curve(P_Q, [ PolynomialRing(ext<K|Polynomial(K, [-1, -3,
0, 1])> where K is RationalField(), 2) | ]);
