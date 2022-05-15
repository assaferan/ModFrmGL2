
    /****************************************************
    Loading this file in magma loads the objects fs_9G1 
    and X_9G1. fs_9G1 is a list of power series which form 
    a basis for the space of cusp forms. X_9G1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | 1, -3, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_9G1 := [Kq | (-zeta^2 + 1)*q + 3*q^3 + (2*zeta + 2)*q^4 + 
(-zeta^2 - zeta + 3)*q^7 - 6*q^12 + (-5*zeta - 5)*q^13 + (4*zeta^2 + 4*zeta - 
12)*q^16 + (7*zeta^2 - 7)*q^19 - 3*q^21 + (-5*zeta^2 - 5*zeta + 15)*q^25 + 
(-2*zeta^2 + 2)*q^28 + (4*zeta + 4)*q^31 + (-11*zeta^2 + 11)*q^37 + 15*q^39 + 
(8*zeta^2 + 8*zeta - 24)*q^43 + 12*q^48 + (6*zeta + 6)*q^49 + (-10*zeta^2 - 
10*zeta + 30)*q^52 - 21*q^57 + (-zeta^2 - zeta + 3)*q^61 + (8*zeta^2 - 8)*q^64 +
(-5*zeta - 5)*q^67 + (7*zeta^2 - 7)*q^73 - 15*q^75 + (-14*zeta - 14)*q^76 + 
(17*zeta^2 + 17*zeta - 51)*q^79 + 6*q^84 + (5*zeta^2 - 5)*q^91 - 12*q^93 + 
(-19*zeta^2 - 19*zeta + 57)*q^97 + (-10*zeta^2 + 10)*q^100 + (13*zeta + 
13)*q^103 + (-2*zeta^2 + 2)*q^109 + 33*q^111 + (4*zeta + 4)*q^112 + (11*zeta + 
11)*q^121 + (8*zeta^2 + 8*zeta - 24)*q^124 + (-20*zeta^2 + 20)*q^127 + 24*q^129 
+ (7*zeta^2 + 7*zeta - 21)*q^133 + (-23*zeta - 23)*q^139 - 18*q^147 + (22*zeta +
22)*q^148 + (-19*zeta^2 - 19*zeta + 57)*q^151 - 30*q^156 + (-14*zeta - 14)*q^157
+ (25*zeta^2 - 25)*q^163 + (12*zeta^2 + 12*zeta - 36)*q^169 + (16*zeta^2 - 
16)*q^172 + (-5*zeta - 5)*q^175 + (7*zeta^2 - 7)*q^181 - 3*q^183 - 24*q^192 + 
(-23*zeta - 23)*q^193 + (12*zeta^2 + 12*zeta - 36)*q^196 + (-11*zeta^2 + 
11)*q^199 + 15*q^201 + (-20*zeta^2 + 20)*q^208 + (13*zeta + 13)*q^211 + 
(-4*zeta^2 + 4)*q^217 - 21*q^219 + (-28*zeta^2 - 28*zeta + 84)*q^223 + 42*q^228 
+ (22*zeta + 22)*q^229 + 51*q^237 + (17*zeta^2 + 17*zeta - 51)*q^241 + 
(-2*zeta^2 + 2)*q^244 + (35*zeta + 35)*q^247 + (-16*zeta - 16)*q^256 + 
(-11*zeta^2 - 11*zeta + 33)*q^259 + (-10*zeta^2 - 10*zeta + 30)*q^268 + 
(-29*zeta^2 + 29)*q^271 - 15*q^273 + (26*zeta^2 + 26*zeta - 78)*q^277 + 
(-32*zeta - 32)*q^283 + (17*zeta^2 - 17)*q^289 - 57*q^291 + (-14*zeta - 
14)*q^292 + 30*q^300 + (8*zeta + 8)*q^301 + (-28*zeta^2 - 28*zeta + 84)*q^304 + 
(16*zeta^2 - 16)*q^307 - 39*q^309 + (35*zeta^2 + 35*zeta - 105)*q^313 + 
(34*zeta^2 - 34)*q^316 + (25*zeta^2 - 25)*q^325 + 6*q^327 + (-zeta^2 - zeta + 
3)*q^331 - 12*q^336 + (-5*zeta - 5)*q^337 + (-13*zeta^2 + 13)*q^343 + 
(-37*zeta^2 - 37*zeta + 111)*q^349 + (-30*zeta^2 + 30)*q^361 - 33*q^363 + 
(-10*zeta - 10)*q^364 + (35*zeta^2 + 35*zeta - 105)*q^367 + 24*q^372 + (13*zeta 
+ 13)*q^373 + (-29*zeta^2 + 29)*q^379 + 60*q^381 + (-38*zeta^2 + 38)*q^388 + 
(34*zeta^2 - 34)*q^397 + 21*q^399 + (20*zeta + 20)*q^400 + (-20*zeta^2 - 20*zeta
+ 60)*q^403 + (31*zeta + 31)*q^409 + (26*zeta^2 + 26*zeta - 78)*q^412 + 69*q^417
+ (-19*zeta^2 - 19*zeta + 57)*q^421 + (-zeta - 1)*q^427 + (-2*zeta^2 + 2)*q^433 
+ (4*zeta + 4)*q^436 + (-28*zeta^2 - 28*zeta + 84)*q^439 - 66*q^444 + (8*zeta^2 
+ 8*zeta - 24)*q^448 - 57*q^453 + (-10*zeta^2 - 10*zeta + 30)*q^457 + (-23*zeta 
- 23)*q^463 + (5*zeta^2 - 5)*q^469 + 42*q^471 + (35*zeta^2 + 35*zeta - 
105)*q^475 + (-55*zeta - 55)*q^481 + (22*zeta^2 + 22*zeta - 66)*q^484 + 
(25*zeta^2 - 25)*q^487 - 75*q^489 + (16*zeta^2 - 16)*q^496 + (-32*zeta - 
32)*q^499 + 36*q^507 + (40*zeta + 40)*q^508 + (7*zeta^2 + 7*zeta - 21)*q^511 - 
48*q^516 + (43*zeta^2 - 43)*q^523 + 15*q^525 + (-23*zeta^2 - 23*zeta + 69)*q^529
+ (14*zeta^2 - 14)*q^532 + (-29*zeta^2 + 29)*q^541 - 21*q^543 + (-zeta^2 - zeta 
+ 3)*q^547 + (17*zeta + 17)*q^553 + (-46*zeta^2 - 46*zeta + 138)*q^556 + 
(-40*zeta^2 + 40)*q^559 + (31*zeta + 31)*q^571 + (-11*zeta^2 + 11)*q^577 + 
69*q^579 + 36*q^588 + (-28*zeta - 28)*q^589 + (44*zeta^2 + 44*zeta - 132)*q^592 
+ 33*q^597 + (26*zeta^2 + 26*zeta - 78)*q^601 + (-38*zeta^2 + 38)*q^604 + 
(49*zeta + 49)*q^607 + (-47*zeta^2 + 47)*q^613 + (17*zeta^2 + 17*zeta - 
51)*q^619 + 60*q^624 + (-25*zeta - 25)*q^625 + (-28*zeta^2 - 28*zeta + 84)*q^628
+ (43*zeta^2 - 43)*q^631 - 39*q^633 + (-30*zeta^2 - 30*zeta + 90)*q^637 + 
(40*zeta + 40)*q^643 + 12*q^651 + (-50*zeta - 50)*q^652 + O(q^657)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_9G1 := Curve(P_Q, [ PolynomialRing(ext<K|Polynomial(K, [1, -3, 
0, 1])> where K is RationalField(), 2) | ]);
