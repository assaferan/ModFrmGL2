
    /****************************************************
    Loading this file in magma loads the objects fs_12L3 
    and X_12L3. fs_12L3 is a list of power series which form 
    a basis for the space of cusp forms. X_12L3 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, \[ 1, 0, -1, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_12L3 := [Kq | (zeta^3 - 2*zeta)*q^3 + (-3*zeta^3 + 6*zeta)*q^27
+ (-2*zeta^3 + 4*zeta)*q^39 + (6*zeta^3 - 12*zeta)*q^63 + (5*zeta^3 - 
10*zeta)*q^75 + (-10*zeta^3 + 20*zeta)*q^111 + (-5*zeta^3 + 10*zeta)*q^147 + 
(-6*zeta^3 + 12*zeta)*q^171 + (14*zeta^3 - 28*zeta)*q^183 + (10*zeta^3 - 
20*zeta)*q^219 + (9*zeta^3 - 18*zeta)*q^243 + (-18*zeta^3 + 36*zeta)*q^279 + 
(-14*zeta^3 + 28*zeta)*q^291 + (-2*zeta^3 + 4*zeta)*q^327 + (6*zeta^3 - 
12*zeta)*q^351 + (-11*zeta^3 + 22*zeta)*q^363 + (18*zeta^3 - 36*zeta)*q^387 + 
(12*zeta^3 - 24*zeta)*q^399 + (14*zeta^3 - 28*zeta)*q^471 + (-9*zeta^3 + 
18*zeta)*q^507 + (-26*zeta^3 + 52*zeta)*q^543 + (-18*zeta^3 + 36*zeta)*q^567 + 
(2*zeta^3 - 4*zeta)*q^579 + (-6*zeta^3 + 12*zeta)*q^603 + (36*zeta^3 - 
72*zeta)*q^651 + (-15*zeta^3 + 30*zeta)*q^675 + O(q^684), (zeta^3 - 2*zeta)*q^9 
+ (-2*zeta^3 + 4*zeta)*q^21 + (2*zeta^3 - 4*zeta)*q^57 + (-3*zeta^3 + 
6*zeta)*q^81 + (6*zeta^3 - 12*zeta)*q^93 + (-2*zeta^3 + 4*zeta)*q^117 + 
(-6*zeta^3 + 12*zeta)*q^129 + (6*zeta^3 - 12*zeta)*q^189 + (2*zeta^3 - 
4*zeta)*q^201 + (5*zeta^3 - 10*zeta)*q^225 + (-10*zeta^3 + 20*zeta)*q^237 + 
(4*zeta^3 - 8*zeta)*q^273 + (-2*zeta^3 + 4*zeta)*q^309 + (-10*zeta^3 + 
20*zeta)*q^333 + (6*zeta^3 - 12*zeta)*q^381 + (10*zeta^3 - 20*zeta)*q^417 + 
(-5*zeta^3 + 10*zeta)*q^441 + (14*zeta^3 - 28*zeta)*q^453 + (-14*zeta^3 + 
28*zeta)*q^489 + (-6*zeta^3 + 12*zeta)*q^513 + (-10*zeta^3 + 20*zeta)*q^525 + 
(14*zeta^3 - 28*zeta)*q^549 + (-2*zeta^3 + 4*zeta)*q^597 + (-14*zeta^3 + 
28*zeta)*q^633 + (10*zeta^3 - 20*zeta)*q^657 + (6*zeta^3 - 12*zeta)*q^669 + 
O(q^684), (-2*zeta^2 + 1)*q^3 + (2*zeta^2 - 1)*q^9 + (4*zeta^2 - 2)*q^15 + 
(-2*zeta^2 + 1)*q^27 + (-8*zeta^2 + 4)*q^33 + (4*zeta^2 - 2)*q^39 + (-4*zeta^2 +
2)*q^45 + (-4*zeta^2 + 2)*q^51 + (8*zeta^2 - 4)*q^57 + (16*zeta^2 - 8)*q^69 + 
(2*zeta^2 - 1)*q^75 + (2*zeta^2 - 1)*q^81 + (-12*zeta^2 + 6)*q^87 + (-16*zeta^2 
+ 8)*q^93 + (8*zeta^2 - 4)*q^99 + (-12*zeta^2 + 6)*q^111 + (-4*zeta^2 + 2)*q^117
+ (12*zeta^2 - 6)*q^123 + (-8*zeta^2 + 4)*q^129 + (4*zeta^2 - 2)*q^135 + 
(14*zeta^2 - 7)*q^147 + (4*zeta^2 - 2)*q^153 + (4*zeta^2 - 2)*q^159 + (16*zeta^2
- 8)*q^165 + (-8*zeta^2 + 4)*q^171 + (-8*zeta^2 + 4)*q^177 + (4*zeta^2 - 
2)*q^183 + (-8*zeta^2 + 4)*q^195 + (8*zeta^2 - 4)*q^201 + (-16*zeta^2 + 8)*q^207
+ (-16*zeta^2 + 8)*q^213 + (-20*zeta^2 + 10)*q^219 + (-2*zeta^2 + 1)*q^225 + 
(16*zeta^2 - 8)*q^237 + (-2*zeta^2 + 1)*q^243 + (8*zeta^2 - 4)*q^249 + (8*zeta^2
- 4)*q^255 + (12*zeta^2 - 6)*q^261 + (12*zeta^2 - 6)*q^267 + (16*zeta^2 - 
8)*q^279 + (-16*zeta^2 + 8)*q^285 + (-4*zeta^2 + 2)*q^291 + (-8*zeta^2 + 
4)*q^297 + (36*zeta^2 - 18)*q^303 + (-32*zeta^2 + 16)*q^309 + (24*zeta^2 - 
12)*q^321 + (4*zeta^2 - 2)*q^327 + (12*zeta^2 - 6)*q^333 + (-36*zeta^2 + 
18)*q^339 + (-32*zeta^2 + 16)*q^345 + (4*zeta^2 - 2)*q^351 + (-10*zeta^2 + 
5)*q^363 + (-12*zeta^2 + 6)*q^369 + (-24*zeta^2 + 12)*q^375 + (16*zeta^2 - 
8)*q^381 + (8*zeta^2 - 4)*q^387 + (8*zeta^2 - 4)*q^393 + (-4*zeta^2 + 2)*q^405 +
(12*zeta^2 - 6)*q^411 + (24*zeta^2 - 12)*q^417 + (16*zeta^2 - 8)*q^429 + 
(24*zeta^2 - 12)*q^435 + (-14*zeta^2 + 7)*q^441 + (-28*zeta^2 + 14)*q^447 + 
(32*zeta^2 - 16)*q^453 + (-4*zeta^2 + 2)*q^459 + (32*zeta^2 - 16)*q^465 + 
(4*zeta^2 - 2)*q^471 + (-4*zeta^2 + 2)*q^477 + (-24*zeta^2 + 12)*q^489 + 
(-16*zeta^2 + 8)*q^495 + (-48*zeta^2 + 24)*q^501 + (18*zeta^2 - 9)*q^507 + 
(8*zeta^2 - 4)*q^513 + (-12*zeta^2 + 6)*q^519 + (8*zeta^2 - 4)*q^531 + 
(-24*zeta^2 + 12)*q^537 + (-12*zeta^2 + 6)*q^543 + (-4*zeta^2 + 2)*q^549 + 
(24*zeta^2 - 12)*q^555 + (-16*zeta^2 + 8)*q^561 + (-4*zeta^2 + 2)*q^579 + 
(8*zeta^2 - 4)*q^585 + (36*zeta^2 - 18)*q^591 + (-32*zeta^2 + 16)*q^597 + 
(-8*zeta^2 + 4)*q^603 + (-24*zeta^2 + 12)*q^615 + (16*zeta^2 - 8)*q^621 + 
(32*zeta^2 - 16)*q^627 + (40*zeta^2 - 20)*q^633 + (16*zeta^2 - 8)*q^639 + 
(16*zeta^2 - 8)*q^645 + (20*zeta^2 - 10)*q^657 + (8*zeta^2 - 4)*q^663 + 
(16*zeta^2 - 8)*q^669 + (2*zeta^2 - 1)*q^675 + (-24*zeta^2 + 12)*q^681 + 
O(q^684)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_12L3 := Curve(P_Q, [ PolynomialRing(CyclotomicField(12), 3) |
x[1]^2 - 2*x[1]*x[2] - 3*x[2]^2 + x[3]^2
]);
