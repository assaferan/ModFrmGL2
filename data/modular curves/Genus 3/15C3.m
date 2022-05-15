
    /****************************************************
    Loading this file in magma loads the objects fs_15C3 
    and X_15C3. fs_15C3 is a list of power series which form 
    a basis for the space of cusp forms. X_15C3 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, \[ 1, -1, 0, 1, -1, 1, 0, -1, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_15C3 := [Kq | (-zeta^7 + zeta^3 - zeta^2 + 1)*q + (2*zeta^7 - 
2*zeta^3 + 2*zeta^2 - 2)*q^4 + (-5*zeta^7 + 5*zeta^3 - 5*zeta^2)*q^7 + 
(-5*zeta^7 + 5*zeta^3 - 5*zeta^2)*q^13 + (-4*zeta^7 + 4*zeta^3 - 4*zeta^2 + 
4)*q^16 + (zeta^7 - zeta^3 + zeta^2 - 1)*q^19 + (10*zeta^7 - 10*zeta^3 + 
10*zeta^2)*q^28 + (7*zeta^7 - 7*zeta^3 + 7*zeta^2 - 7)*q^31 + (10*zeta^7 - 
10*zeta^3 + 10*zeta^2)*q^37 + (-5*zeta^7 + 5*zeta^3 - 5*zeta^2)*q^43 + 
(-18*zeta^7 + 18*zeta^3 - 18*zeta^2 + 18)*q^49 + (10*zeta^7 - 10*zeta^3 + 
10*zeta^2)*q^52 + (13*zeta^7 - 13*zeta^3 + 13*zeta^2 - 13)*q^61 + (8*zeta^7 - 
8*zeta^3 + 8*zeta^2 - 8)*q^64 + (-5*zeta^7 + 5*zeta^3 - 5*zeta^2)*q^67 + 
(10*zeta^7 - 10*zeta^3 + 10*zeta^2)*q^73 + (-2*zeta^7 + 2*zeta^3 - 2*zeta^2 + 
2)*q^76 + (4*zeta^7 - 4*zeta^3 + 4*zeta^2 - 4)*q^79 + (-25*zeta^7 + 25*zeta^3 - 
25*zeta^2 + 25)*q^91 + (-5*zeta^7 + 5*zeta^3 - 5*zeta^2)*q^97 + (-20*zeta^7 + 
20*zeta^3 - 20*zeta^2)*q^103 + (19*zeta^7 - 19*zeta^3 + 19*zeta^2 - 19)*q^109 + 
(-20*zeta^7 + 20*zeta^3 - 20*zeta^2)*q^112 + (11*zeta^7 - 11*zeta^3 + 11*zeta^2 
- 11)*q^121 + (-14*zeta^7 + 14*zeta^3 - 14*zeta^2 + 14)*q^124 + (-20*zeta^7 + 
20*zeta^3 - 20*zeta^2)*q^127 + (5*zeta^7 - 5*zeta^3 + 5*zeta^2)*q^133 + 
(16*zeta^7 - 16*zeta^3 + 16*zeta^2 - 16)*q^139 + (-20*zeta^7 + 20*zeta^3 - 
20*zeta^2)*q^148 + (-23*zeta^7 + 23*zeta^3 - 23*zeta^2 + 23)*q^151 + (25*zeta^7 
- 25*zeta^3 + 25*zeta^2)*q^157 + (25*zeta^7 - 25*zeta^3 + 25*zeta^2)*q^163 + 
(-12*zeta^7 + 12*zeta^3 - 12*zeta^2 + 12)*q^169 + (10*zeta^7 - 10*zeta^3 + 
10*zeta^2)*q^172 + (7*zeta^7 - 7*zeta^3 + 7*zeta^2 - 7)*q^181 + (25*zeta^7 - 
25*zeta^3 + 25*zeta^2)*q^193 + (36*zeta^7 - 36*zeta^3 + 36*zeta^2 - 36)*q^196 + 
(-11*zeta^7 + 11*zeta^3 - 11*zeta^2 + 11)*q^199 + (-20*zeta^7 + 20*zeta^3 - 
20*zeta^2)*q^208 + (13*zeta^7 - 13*zeta^3 + 13*zeta^2 - 13)*q^211 + (35*zeta^7 -
35*zeta^3 + 35*zeta^2)*q^217 + (-5*zeta^7 + 5*zeta^3 - 5*zeta^2)*q^223 + 
(-29*zeta^7 + 29*zeta^3 - 29*zeta^2 + 29)*q^229 + (-17*zeta^7 + 17*zeta^3 - 
17*zeta^2 + 17)*q^241 + (-26*zeta^7 + 26*zeta^3 - 26*zeta^2 + 26)*q^244 + 
(5*zeta^7 - 5*zeta^3 + 5*zeta^2)*q^247 + (-16*zeta^7 + 16*zeta^3 - 16*zeta^2 + 
16)*q^256 + (50*zeta^7 - 50*zeta^3 + 50*zeta^2 - 50)*q^259 + (10*zeta^7 - 
10*zeta^3 + 10*zeta^2)*q^268 + (28*zeta^7 - 28*zeta^3 + 28*zeta^2 - 28)*q^271 + 
(-5*zeta^7 + 5*zeta^3 - 5*zeta^2)*q^277 + (25*zeta^7 - 25*zeta^3 + 
25*zeta^2)*q^283 + (17*zeta^7 - 17*zeta^3 + 17*zeta^2 - 17)*q^289 + (-20*zeta^7 
+ 20*zeta^3 - 20*zeta^2)*q^292 + (-25*zeta^7 + 25*zeta^3 - 25*zeta^2 + 25)*q^301
+ (4*zeta^7 - 4*zeta^3 + 4*zeta^2 - 4)*q^304 + (-35*zeta^7 + 35*zeta^3 - 
35*zeta^2)*q^307 + (-35*zeta^7 + 35*zeta^3 - 35*zeta^2)*q^313 + (-8*zeta^7 + 
8*zeta^3 - 8*zeta^2 + 8)*q^316 + (-32*zeta^7 + 32*zeta^3 - 32*zeta^2 + 32)*q^331
+ (-5*zeta^7 + 5*zeta^3 - 5*zeta^2)*q^337 + (-55*zeta^7 + 55*zeta^3 - 
55*zeta^2)*q^343 + (-14*zeta^7 + 14*zeta^3 - 14*zeta^2 + 14)*q^349 + (18*zeta^7 
- 18*zeta^3 + 18*zeta^2 - 18)*q^361 + (50*zeta^7 - 50*zeta^3 + 50*zeta^2 - 
50)*q^364 + (-35*zeta^7 + 35*zeta^3 - 35*zeta^2)*q^367 + (25*zeta^7 - 25*zeta^3 
+ 25*zeta^2)*q^373 + (-29*zeta^7 + 29*zeta^3 - 29*zeta^2 + 29)*q^379 + 
(10*zeta^7 - 10*zeta^3 + 10*zeta^2)*q^388 + (-35*zeta^7 + 35*zeta^3 - 
35*zeta^2)*q^397 + (35*zeta^7 - 35*zeta^3 + 35*zeta^2)*q^403 + (31*zeta^7 - 
31*zeta^3 + 31*zeta^2 - 31)*q^409 + (40*zeta^7 - 40*zeta^3 + 40*zeta^2)*q^412 + 
(22*zeta^7 - 22*zeta^3 + 22*zeta^2 - 22)*q^421 + (65*zeta^7 - 65*zeta^3 + 
65*zeta^2)*q^427 + (-35*zeta^7 + 35*zeta^3 - 35*zeta^2)*q^433 + (-38*zeta^7 + 
38*zeta^3 - 38*zeta^2 + 38)*q^436 + (-41*zeta^7 + 41*zeta^3 - 41*zeta^2 + 
41)*q^439 + (40*zeta^7 - 40*zeta^3 + 40*zeta^2)*q^448 + (10*zeta^7 - 10*zeta^3 +
10*zeta^2)*q^457 + (-20*zeta^7 + 20*zeta^3 - 20*zeta^2)*q^463 + (-25*zeta^7 + 
25*zeta^3 - 25*zeta^2 + 25)*q^469 + (50*zeta^7 - 50*zeta^3 + 50*zeta^2 - 
50)*q^481 + (-22*zeta^7 + 22*zeta^3 - 22*zeta^2 + 22)*q^484 + (25*zeta^7 - 
25*zeta^3 + 25*zeta^2)*q^487 + (28*zeta^7 - 28*zeta^3 + 28*zeta^2 - 28)*q^496 + 
(-11*zeta^7 + 11*zeta^3 - 11*zeta^2 + 11)*q^499 + (40*zeta^7 - 40*zeta^3 + 
40*zeta^2)*q^508 + (50*zeta^7 - 50*zeta^3 + 50*zeta^2 - 50)*q^511 + (-35*zeta^7 
+ 35*zeta^3 - 35*zeta^2)*q^523 + (23*zeta^7 - 23*zeta^3 + 23*zeta^2 - 23)*q^529 
+ (-10*zeta^7 + 10*zeta^3 - 10*zeta^2)*q^532 + (-17*zeta^7 + 17*zeta^3 - 
17*zeta^2 + 17)*q^541 + (40*zeta^7 - 40*zeta^3 + 40*zeta^2)*q^547 + (20*zeta^7 -
20*zeta^3 + 20*zeta^2)*q^553 + O(q^555), 1/4*(-zeta^7 + 6*zeta^5 - 2*zeta^4 + 
zeta^3 - zeta^2 - 2*zeta + 4)*q + 1/4*(zeta^7 + 4*zeta^5 + 2*zeta^4 - zeta^3 + 
zeta^2 + 2*zeta + 1)*q^2 + 1/2*(-zeta^7 - 4*zeta^5 - 2*zeta^4 + zeta^3 - zeta^2 
- 2*zeta - 1)*q^3 + 1/4*(zeta^7 - 6*zeta^5 + 2*zeta^4 - zeta^3 + zeta^2 + 2*zeta
- 4)*q^4 + 1/4*(-6*zeta^7 + 6*zeta^5 - 12*zeta^4 + 6*zeta^3 - 6*zeta^2 - 12*zeta
+ 9)*q^5 + 1/2*(zeta^7 - 6*zeta^5 + 2*zeta^4 - zeta^3 + zeta^2 + 2*zeta - 4)*q^6
+ 1/4*(-3*zeta^7 - 12*zeta^5 - 6*zeta^4 + 3*zeta^3 - 3*zeta^2 - 6*zeta - 3)*q^8 
+ 1/2*(zeta^7 - 6*zeta^5 + 2*zeta^4 - zeta^3 + zeta^2 + 2*zeta - 4)*q^9 + 
1/4*(6*zeta^7 - 6*zeta^5 + 12*zeta^4 - 6*zeta^3 + 6*zeta^2 + 12*zeta - 9)*q^10 +
(zeta^7 - 6*zeta^5 + 2*zeta^4 - zeta^3 + zeta^2 + 2*zeta - 4)*q^11 + 1/2*(zeta^7
+ 4*zeta^5 + 2*zeta^4 - zeta^3 + zeta^2 + 2*zeta + 1)*q^12 + 1/2*(zeta^7 + 
4*zeta^5 + 2*zeta^4 - zeta^3 + zeta^2 + 2*zeta + 1)*q^13 + 1/2*(-6*zeta^7 + 
6*zeta^5 - 12*zeta^4 + 6*zeta^3 - 6*zeta^2 - 12*zeta + 9)*q^15 + 1/4*(zeta^7 - 
6*zeta^5 + 2*zeta^4 - zeta^3 + zeta^2 + 2*zeta - 4)*q^16 + 1/2*(-zeta^7 - 
4*zeta^5 - 2*zeta^4 + zeta^3 - zeta^2 - 2*zeta - 1)*q^17 + 1/2*(-zeta^7 - 
4*zeta^5 - 2*zeta^4 + zeta^3 - zeta^2 - 2*zeta - 1)*q^18 + (-zeta^7 + 6*zeta^5 -
2*zeta^4 + zeta^3 - zeta^2 - 2*zeta + 4)*q^19 + 1/4*(6*zeta^7 - 6*zeta^5 + 
12*zeta^4 - 6*zeta^3 + 6*zeta^2 + 12*zeta - 9)*q^20 + (-zeta^7 - 4*zeta^5 - 
2*zeta^4 + zeta^3 - zeta^2 - 2*zeta - 1)*q^22 + 1/2*(-3*zeta^7 + 18*zeta^5 - 
6*zeta^4 + 3*zeta^3 - 3*zeta^2 - 6*zeta + 12)*q^24 + 1/4*(-6*zeta^7 + 6*zeta^5 -
12*zeta^4 + 6*zeta^3 - 6*zeta^2 - 12*zeta + 9)*q^25 + 1/2*(-zeta^7 + 6*zeta^5 - 
2*zeta^4 + zeta^3 - zeta^2 - 2*zeta + 4)*q^26 + 1/2*(-zeta^7 - 4*zeta^5 - 
2*zeta^4 + zeta^3 - zeta^2 - 2*zeta - 1)*q^27 + 1/2*(zeta^7 - 6*zeta^5 + 
2*zeta^4 - zeta^3 + zeta^2 + 2*zeta - 4)*q^29 + 1/2*(6*zeta^7 - 6*zeta^5 + 
12*zeta^4 - 6*zeta^3 + 6*zeta^2 + 12*zeta - 9)*q^30 + 1/4*(5*zeta^7 + 20*zeta^5 
+ 10*zeta^4 - 5*zeta^3 + 5*zeta^2 + 10*zeta + 5)*q^32 + (2*zeta^7 + 8*zeta^5 + 
4*zeta^4 - 2*zeta^3 + 2*zeta^2 + 4*zeta + 2)*q^33 + 1/2*(zeta^7 - 6*zeta^5 + 
2*zeta^4 - zeta^3 + zeta^2 + 2*zeta - 4)*q^34 + 1/2*(-zeta^7 + 6*zeta^5 - 
2*zeta^4 + zeta^3 - zeta^2 - 2*zeta + 4)*q^36 + 1/2*(5*zeta^7 + 20*zeta^5 + 
10*zeta^4 - 5*zeta^3 + 5*zeta^2 + 10*zeta + 5)*q^37 + (zeta^7 + 4*zeta^5 + 
2*zeta^4 - zeta^3 + zeta^2 + 2*zeta + 1)*q^38 + (zeta^7 - 6*zeta^5 + 2*zeta^4 - 
zeta^3 + zeta^2 + 2*zeta - 4)*q^39 + 1/4*(-18*zeta^7 + 18*zeta^5 - 36*zeta^4 + 
18*zeta^3 - 18*zeta^2 - 36*zeta + 27)*q^40 + 1/2*(-5*zeta^7 + 30*zeta^5 - 
10*zeta^4 + 5*zeta^3 - 5*zeta^2 - 10*zeta + 20)*q^41 + (-zeta^7 - 4*zeta^5 - 
2*zeta^4 + zeta^3 - zeta^2 - 2*zeta - 1)*q^43 + (-zeta^7 + 6*zeta^5 - 2*zeta^4 +
zeta^3 - zeta^2 - 2*zeta + 4)*q^44 + 1/2*(6*zeta^7 - 6*zeta^5 + 12*zeta^4 - 
6*zeta^3 + 6*zeta^2 + 12*zeta - 9)*q^45 + (-2*zeta^7 - 8*zeta^5 - 4*zeta^4 + 
2*zeta^3 - 2*zeta^2 - 4*zeta - 2)*q^47 + 1/2*(zeta^7 + 4*zeta^5 + 2*zeta^4 - 
zeta^3 + zeta^2 + 2*zeta + 1)*q^48 + 1/4*(7*zeta^7 - 42*zeta^5 + 14*zeta^4 - 
7*zeta^3 + 7*zeta^2 + 14*zeta - 28)*q^49 + 1/4*(6*zeta^7 - 6*zeta^5 + 12*zeta^4 
- 6*zeta^3 + 6*zeta^2 + 12*zeta - 9)*q^50 + (-zeta^7 + 6*zeta^5 - 2*zeta^4 + 
zeta^3 - zeta^2 - 2*zeta + 4)*q^51 + 1/2*(-zeta^7 - 4*zeta^5 - 2*zeta^4 + zeta^3
- zeta^2 - 2*zeta - 1)*q^52 + 1/2*(5*zeta^7 + 20*zeta^5 + 10*zeta^4 - 5*zeta^3 +
5*zeta^2 + 10*zeta + 5)*q^53 + 1/2*(zeta^7 - 6*zeta^5 + 2*zeta^4 - zeta^3 + 
zeta^2 + 2*zeta - 4)*q^54 + (6*zeta^7 - 6*zeta^5 + 12*zeta^4 - 6*zeta^3 + 
6*zeta^2 + 12*zeta - 9)*q^55 + (-2*zeta^7 - 8*zeta^5 - 4*zeta^4 + 2*zeta^3 - 
2*zeta^2 - 4*zeta - 2)*q^57 + 1/2*(-zeta^7 - 4*zeta^5 - 2*zeta^4 + zeta^3 - 
zeta^2 - 2*zeta - 1)*q^58 + (zeta^7 - 6*zeta^5 + 2*zeta^4 - zeta^3 + zeta^2 + 
2*zeta - 4)*q^59 + 1/2*(6*zeta^7 - 6*zeta^5 + 12*zeta^4 - 6*zeta^3 + 6*zeta^2 + 
12*zeta - 9)*q^60 + 1/2*(zeta^7 - 6*zeta^5 + 2*zeta^4 - zeta^3 + zeta^2 + 2*zeta
- 4)*q^61 + 1/4*(-7*zeta^7 + 42*zeta^5 - 14*zeta^4 + 7*zeta^3 - 7*zeta^2 - 
14*zeta + 28)*q^64 + 1/2*(6*zeta^7 - 6*zeta^5 + 12*zeta^4 - 6*zeta^3 + 6*zeta^2 
+ 12*zeta - 9)*q^65 + (-2*zeta^7 + 12*zeta^5 - 4*zeta^4 + 2*zeta^3 - 2*zeta^2 - 
4*zeta + 8)*q^66 + (-3*zeta^7 - 12*zeta^5 - 6*zeta^4 + 3*zeta^3 - 3*zeta^2 - 
6*zeta - 3)*q^67 + 1/2*(zeta^7 + 4*zeta^5 + 2*zeta^4 - zeta^3 + zeta^2 + 2*zeta 
+ 1)*q^68 + (2*zeta^7 - 12*zeta^5 + 4*zeta^4 - 2*zeta^3 + 2*zeta^2 + 4*zeta - 
8)*q^71 + 1/2*(3*zeta^7 + 12*zeta^5 + 6*zeta^4 - 3*zeta^3 + 3*zeta^2 + 6*zeta + 
3)*q^72 + 1/2*(-5*zeta^7 - 20*zeta^5 - 10*zeta^4 + 5*zeta^3 - 5*zeta^2 - 10*zeta
- 5)*q^73 + 1/2*(-5*zeta^7 + 30*zeta^5 - 10*zeta^4 + 5*zeta^3 - 5*zeta^2 - 
10*zeta + 20)*q^74 + 1/2*(-6*zeta^7 + 6*zeta^5 - 12*zeta^4 + 6*zeta^3 - 6*zeta^2
- 12*zeta + 9)*q^75 + (zeta^7 - 6*zeta^5 + 2*zeta^4 - zeta^3 + zeta^2 + 2*zeta -
4)*q^76 + (-zeta^7 - 4*zeta^5 - 2*zeta^4 + zeta^3 - zeta^2 - 2*zeta - 1)*q^78 + 
1/4*(6*zeta^7 - 6*zeta^5 + 12*zeta^4 - 6*zeta^3 + 6*zeta^2 + 12*zeta - 9)*q^80 +
1/2*(zeta^7 - 6*zeta^5 + 2*zeta^4 - zeta^3 + zeta^2 + 2*zeta - 4)*q^81 + 
1/2*(5*zeta^7 + 20*zeta^5 + 10*zeta^4 - 5*zeta^3 + 5*zeta^2 + 10*zeta + 5)*q^82 
+ (-3*zeta^7 - 12*zeta^5 - 6*zeta^4 + 3*zeta^3 - 3*zeta^2 - 6*zeta - 3)*q^83 + 
1/2*(-6*zeta^7 + 6*zeta^5 - 12*zeta^4 + 6*zeta^3 - 6*zeta^2 - 12*zeta + 9)*q^85 
+ (zeta^7 - 6*zeta^5 + 2*zeta^4 - zeta^3 + zeta^2 + 2*zeta - 4)*q^86 + (zeta^7 +
4*zeta^5 + 2*zeta^4 - zeta^3 + zeta^2 + 2*zeta + 1)*q^87 + (3*zeta^7 + 12*zeta^5
+ 6*zeta^4 - 3*zeta^3 + 3*zeta^2 + 6*zeta + 3)*q^88 + 1/2*(3*zeta^7 - 18*zeta^5 
+ 6*zeta^4 - 3*zeta^3 + 3*zeta^2 + 6*zeta - 12)*q^89 + 1/2*(-6*zeta^7 + 6*zeta^5
- 12*zeta^4 + 6*zeta^3 - 6*zeta^2 - 12*zeta + 9)*q^90 + (2*zeta^7 - 12*zeta^5 + 
4*zeta^4 - 2*zeta^3 + 2*zeta^2 + 4*zeta - 8)*q^94 + (-6*zeta^7 + 6*zeta^5 - 
12*zeta^4 + 6*zeta^3 - 6*zeta^2 - 12*zeta + 9)*q^95 + 1/2*(5*zeta^7 - 30*zeta^5 
+ 10*zeta^4 - 5*zeta^3 + 5*zeta^2 + 10*zeta - 20)*q^96 + 1/2*(-zeta^7 - 4*zeta^5
- 2*zeta^4 + zeta^3 - zeta^2 - 2*zeta - 1)*q^97 + 1/4*(-7*zeta^7 - 28*zeta^5 - 
14*zeta^4 + 7*zeta^3 - 7*zeta^2 - 14*zeta - 7)*q^98 + (-2*zeta^7 + 12*zeta^5 - 
4*zeta^4 + 2*zeta^3 - 2*zeta^2 - 4*zeta + 8)*q^99 + 1/4*(6*zeta^7 - 6*zeta^5 + 
12*zeta^4 - 6*zeta^3 + 6*zeta^2 + 12*zeta - 9)*q^100 + 1/2*(-3*zeta^7 + 
18*zeta^5 - 6*zeta^4 + 3*zeta^3 - 3*zeta^2 - 6*zeta + 12)*q^101 + (zeta^7 + 
4*zeta^5 + 2*zeta^4 - zeta^3 + zeta^2 + 2*zeta + 1)*q^102 + (4*zeta^7 + 
16*zeta^5 + 8*zeta^4 - 4*zeta^3 + 4*zeta^2 + 8*zeta + 4)*q^103 + 1/2*(3*zeta^7 -
18*zeta^5 + 6*zeta^4 - 3*zeta^3 + 3*zeta^2 + 6*zeta - 12)*q^104 + 1/2*(-5*zeta^7
+ 30*zeta^5 - 10*zeta^4 + 5*zeta^3 - 5*zeta^2 - 10*zeta + 20)*q^106 + (3*zeta^7 
+ 12*zeta^5 + 6*zeta^4 - 3*zeta^3 + 3*zeta^2 + 6*zeta + 3)*q^107 + 1/2*(zeta^7 +
4*zeta^5 + 2*zeta^4 - zeta^3 + zeta^2 + 2*zeta + 1)*q^108 + 1/2*(-7*zeta^7 + 
42*zeta^5 - 14*zeta^4 + 7*zeta^3 - 7*zeta^2 - 14*zeta + 28)*q^109 + (-6*zeta^7 +
6*zeta^5 - 12*zeta^4 + 6*zeta^3 - 6*zeta^2 - 12*zeta + 9)*q^110 + (5*zeta^7 - 
30*zeta^5 + 10*zeta^4 - 5*zeta^3 + 5*zeta^2 + 10*zeta - 20)*q^111 + 1/2*(-zeta^7
- 4*zeta^5 - 2*zeta^4 + zeta^3 - zeta^2 - 2*zeta - 1)*q^113 + (2*zeta^7 - 
12*zeta^5 + 4*zeta^4 - 2*zeta^3 + 2*zeta^2 + 4*zeta - 8)*q^114 + 1/2*(-zeta^7 + 
6*zeta^5 - 2*zeta^4 + zeta^3 - zeta^2 - 2*zeta + 4)*q^116 + (-zeta^7 - 4*zeta^5 
- 2*zeta^4 + zeta^3 - zeta^2 - 2*zeta - 1)*q^117 + (-zeta^7 - 4*zeta^5 - 
2*zeta^4 + zeta^3 - zeta^2 - 2*zeta - 1)*q^118 + 1/2*(-18*zeta^7 + 18*zeta^5 - 
36*zeta^4 + 18*zeta^3 - 18*zeta^2 - 36*zeta + 27)*q^120 + 1/4*(-5*zeta^7 + 
30*zeta^5 - 10*zeta^4 + 5*zeta^3 - 5*zeta^2 - 10*zeta + 20)*q^121 + 1/2*(-zeta^7
- 4*zeta^5 - 2*zeta^4 + zeta^3 - zeta^2 - 2*zeta - 1)*q^122 + (-5*zeta^7 - 
20*zeta^5 - 10*zeta^4 + 5*zeta^3 - 5*zeta^2 - 10*zeta - 5)*q^123 + 
1/4*(-6*zeta^7 + 6*zeta^5 - 12*zeta^4 + 6*zeta^3 - 6*zeta^2 - 12*zeta + 9)*q^125
+ (2*zeta^7 + 8*zeta^5 + 4*zeta^4 - 2*zeta^3 + 2*zeta^2 + 4*zeta + 2)*q^127 + 
1/4*(-3*zeta^7 - 12*zeta^5 - 6*zeta^4 + 3*zeta^3 - 3*zeta^2 - 6*zeta - 3)*q^128 
+ (-2*zeta^7 + 12*zeta^5 - 4*zeta^4 + 2*zeta^3 - 2*zeta^2 - 4*zeta + 8)*q^129 + 
1/2*(-6*zeta^7 + 6*zeta^5 - 12*zeta^4 + 6*zeta^3 - 6*zeta^2 - 12*zeta + 9)*q^130
+ (3*zeta^7 - 18*zeta^5 + 6*zeta^4 - 3*zeta^3 + 3*zeta^2 + 6*zeta - 12)*q^131 + 
(-2*zeta^7 - 8*zeta^5 - 4*zeta^4 + 2*zeta^3 - 2*zeta^2 - 4*zeta - 2)*q^132 + 
(3*zeta^7 - 18*zeta^5 + 6*zeta^4 - 3*zeta^3 + 3*zeta^2 + 6*zeta - 12)*q^134 + 
1/2*(-6*zeta^7 + 6*zeta^5 - 12*zeta^4 + 6*zeta^3 - 6*zeta^2 - 12*zeta + 9)*q^135
+ 1/2*(-3*zeta^7 + 18*zeta^5 - 6*zeta^4 + 3*zeta^3 - 3*zeta^2 - 6*zeta + 
12)*q^136 + 1/2*(3*zeta^7 + 12*zeta^5 + 6*zeta^4 - 3*zeta^3 + 3*zeta^2 + 6*zeta 
+ 3)*q^137 + (zeta^7 - 6*zeta^5 + 2*zeta^4 - zeta^3 + zeta^2 + 2*zeta - 4)*q^139
+ (-4*zeta^7 + 24*zeta^5 - 8*zeta^4 + 4*zeta^3 - 4*zeta^2 - 8*zeta + 16)*q^141 +
(-2*zeta^7 - 8*zeta^5 - 4*zeta^4 + 2*zeta^3 - 2*zeta^2 - 4*zeta - 2)*q^142 + 
(-2*zeta^7 - 8*zeta^5 - 4*zeta^4 + 2*zeta^3 - 2*zeta^2 - 4*zeta - 2)*q^143 + 
1/2*(-zeta^7 + 6*zeta^5 - 2*zeta^4 + zeta^3 - zeta^2 - 2*zeta + 4)*q^144 + 
1/2*(6*zeta^7 - 6*zeta^5 + 12*zeta^4 - 6*zeta^3 + 6*zeta^2 + 12*zeta - 9)*q^145 
+ 1/2*(5*zeta^7 - 30*zeta^5 + 10*zeta^4 - 5*zeta^3 + 5*zeta^2 + 10*zeta - 
20)*q^146 + 1/2*(7*zeta^7 + 28*zeta^5 + 14*zeta^4 - 7*zeta^3 + 7*zeta^2 + 
14*zeta + 7)*q^147 + 1/2*(-5*zeta^7 - 20*zeta^5 - 10*zeta^4 + 5*zeta^3 - 
5*zeta^2 - 10*zeta - 5)*q^148 + 1/2*(-11*zeta^7 + 66*zeta^5 - 22*zeta^4 + 
11*zeta^3 - 11*zeta^2 - 22*zeta + 44)*q^149 + 1/2*(6*zeta^7 - 6*zeta^5 + 
12*zeta^4 - 6*zeta^3 + 6*zeta^2 + 12*zeta - 9)*q^150 + (2*zeta^7 - 12*zeta^5 + 
4*zeta^4 - 2*zeta^3 + 2*zeta^2 + 4*zeta - 8)*q^151 + (-3*zeta^7 - 12*zeta^5 - 
6*zeta^4 + 3*zeta^3 - 3*zeta^2 - 6*zeta - 3)*q^152 + (zeta^7 + 4*zeta^5 + 
2*zeta^4 - zeta^3 + zeta^2 + 2*zeta + 1)*q^153 + (-zeta^7 + 6*zeta^5 - 2*zeta^4 
+ zeta^3 - zeta^2 - 2*zeta + 4)*q^156 + 1/2*(-7*zeta^7 - 28*zeta^5 - 14*zeta^4 +
7*zeta^3 - 7*zeta^2 - 14*zeta - 7)*q^157 + (5*zeta^7 - 30*zeta^5 + 10*zeta^4 - 
5*zeta^3 + 5*zeta^2 + 10*zeta - 20)*q^159 + 1/4*(30*zeta^7 - 30*zeta^5 + 
60*zeta^4 - 30*zeta^3 + 30*zeta^2 + 60*zeta - 45)*q^160 + 1/2*(-zeta^7 - 
4*zeta^5 - 2*zeta^4 + zeta^3 - zeta^2 - 2*zeta - 1)*q^162 + (zeta^7 + 4*zeta^5 +
2*zeta^4 - zeta^3 + zeta^2 + 2*zeta + 1)*q^163 + 1/2*(5*zeta^7 - 30*zeta^5 + 
10*zeta^4 - 5*zeta^3 + 5*zeta^2 + 10*zeta - 20)*q^164 + (12*zeta^7 - 12*zeta^5 +
24*zeta^4 - 12*zeta^3 + 12*zeta^2 + 24*zeta - 18)*q^165 + (3*zeta^7 - 18*zeta^5 
+ 6*zeta^4 - 3*zeta^3 + 3*zeta^2 + 6*zeta - 12)*q^166 + 1/4*(9*zeta^7 - 
54*zeta^5 + 18*zeta^4 - 9*zeta^3 + 9*zeta^2 + 18*zeta - 36)*q^169 + 
1/2*(6*zeta^7 - 6*zeta^5 + 12*zeta^4 - 6*zeta^3 + 6*zeta^2 + 12*zeta - 9)*q^170 
+ (2*zeta^7 - 12*zeta^5 + 4*zeta^4 - 2*zeta^3 + 2*zeta^2 + 4*zeta - 8)*q^171 + 
(zeta^7 + 4*zeta^5 + 2*zeta^4 - zeta^3 + zeta^2 + 2*zeta + 1)*q^172 + 
1/2*(9*zeta^7 + 36*zeta^5 + 18*zeta^4 - 9*zeta^3 + 9*zeta^2 + 18*zeta + 9)*q^173
+ (-zeta^7 + 6*zeta^5 - 2*zeta^4 + zeta^3 - zeta^2 - 2*zeta + 4)*q^174 + 
(-zeta^7 + 6*zeta^5 - 2*zeta^4 + zeta^3 - zeta^2 - 2*zeta + 4)*q^176 + (2*zeta^7
+ 8*zeta^5 + 4*zeta^4 - 2*zeta^3 + 2*zeta^2 + 4*zeta + 2)*q^177 + 1/2*(-3*zeta^7
- 12*zeta^5 - 6*zeta^4 + 3*zeta^3 - 3*zeta^2 - 6*zeta - 3)*q^178 + (-5*zeta^7 + 
30*zeta^5 - 10*zeta^4 + 5*zeta^3 - 5*zeta^2 - 10*zeta + 20)*q^179 + 
1/2*(-6*zeta^7 + 6*zeta^5 - 12*zeta^4 + 6*zeta^3 - 6*zeta^2 - 12*zeta + 9)*q^180
+ 1/2*(5*zeta^7 - 30*zeta^5 + 10*zeta^4 - 5*zeta^3 + 5*zeta^2 + 10*zeta - 
20)*q^181 + (zeta^7 + 4*zeta^5 + 2*zeta^4 - zeta^3 + zeta^2 + 2*zeta + 1)*q^183 
+ 1/2*(30*zeta^7 - 30*zeta^5 + 60*zeta^4 - 30*zeta^3 + 30*zeta^2 + 60*zeta - 
45)*q^185 + (2*zeta^7 + 8*zeta^5 + 4*zeta^4 - 2*zeta^3 + 2*zeta^2 + 4*zeta + 
2)*q^187 + (2*zeta^7 + 8*zeta^5 + 4*zeta^4 - 2*zeta^3 + 2*zeta^2 + 4*zeta + 
2)*q^188 + (6*zeta^7 - 6*zeta^5 + 12*zeta^4 - 6*zeta^3 + 6*zeta^2 + 12*zeta - 
9)*q^190 + (-4*zeta^7 + 24*zeta^5 - 8*zeta^4 + 4*zeta^3 - 4*zeta^2 - 8*zeta + 
16)*q^191 + 1/2*(-7*zeta^7 - 28*zeta^5 - 14*zeta^4 + 7*zeta^3 - 7*zeta^2 - 
14*zeta - 7)*q^192 + 1/2*(-zeta^7 - 4*zeta^5 - 2*zeta^4 + zeta^3 - zeta^2 - 
2*zeta - 1)*q^193 + 1/2*(zeta^7 - 6*zeta^5 + 2*zeta^4 - zeta^3 + zeta^2 + 2*zeta
- 4)*q^194 + (6*zeta^7 - 6*zeta^5 + 12*zeta^4 - 6*zeta^3 + 6*zeta^2 + 12*zeta - 
9)*q^195 + 1/4*(-7*zeta^7 + 42*zeta^5 - 14*zeta^4 + 7*zeta^3 - 7*zeta^2 - 
14*zeta + 28)*q^196 + 1/2*(-3*zeta^7 - 12*zeta^5 - 6*zeta^4 + 3*zeta^3 - 
3*zeta^2 - 6*zeta - 3)*q^197 + (2*zeta^7 + 8*zeta^5 + 4*zeta^4 - 2*zeta^3 + 
2*zeta^2 + 4*zeta + 2)*q^198 + (2*zeta^7 - 12*zeta^5 + 4*zeta^4 - 2*zeta^3 + 
2*zeta^2 + 4*zeta - 8)*q^199 + 1/4*(-18*zeta^7 + 18*zeta^5 - 36*zeta^4 + 
18*zeta^3 - 18*zeta^2 - 36*zeta + 27)*q^200 + (-6*zeta^7 + 36*zeta^5 - 12*zeta^4
+ 6*zeta^3 - 6*zeta^2 - 12*zeta + 24)*q^201 + 1/2*(3*zeta^7 + 12*zeta^5 + 
6*zeta^4 - 3*zeta^3 + 3*zeta^2 + 6*zeta + 3)*q^202 + (zeta^7 - 6*zeta^5 + 
2*zeta^4 - zeta^3 + zeta^2 + 2*zeta - 4)*q^204 + 1/2*(-30*zeta^7 + 30*zeta^5 - 
60*zeta^4 + 30*zeta^3 - 30*zeta^2 - 60*zeta + 45)*q^205 + (-4*zeta^7 + 24*zeta^5
- 8*zeta^4 + 4*zeta^3 - 4*zeta^2 - 8*zeta + 16)*q^206 + 1/2*(-zeta^7 - 4*zeta^5 
- 2*zeta^4 + zeta^3 - zeta^2 - 2*zeta - 1)*q^208 + (4*zeta^7 - 24*zeta^5 + 
8*zeta^4 - 4*zeta^3 + 4*zeta^2 + 8*zeta - 16)*q^209 + (-5*zeta^7 + 30*zeta^5 - 
10*zeta^4 + 5*zeta^3 - 5*zeta^2 - 10*zeta + 20)*q^211 + 1/2*(-5*zeta^7 - 
20*zeta^5 - 10*zeta^4 + 5*zeta^3 - 5*zeta^2 - 10*zeta - 5)*q^212 + (4*zeta^7 + 
16*zeta^5 + 8*zeta^4 - 4*zeta^3 + 4*zeta^2 + 8*zeta + 4)*q^213 + (-3*zeta^7 + 
18*zeta^5 - 6*zeta^4 + 3*zeta^3 - 3*zeta^2 - 6*zeta + 12)*q^214 + (-6*zeta^7 + 
6*zeta^5 - 12*zeta^4 + 6*zeta^3 - 6*zeta^2 - 12*zeta + 9)*q^215 + 1/2*(-3*zeta^7
+ 18*zeta^5 - 6*zeta^4 + 3*zeta^3 - 3*zeta^2 - 6*zeta + 12)*q^216 + 
1/2*(7*zeta^7 + 28*zeta^5 + 14*zeta^4 - 7*zeta^3 + 7*zeta^2 + 14*zeta + 7)*q^218
+ (-5*zeta^7 + 30*zeta^5 - 10*zeta^4 + 5*zeta^3 - 5*zeta^2 - 10*zeta + 20)*q^219
+ (-6*zeta^7 + 6*zeta^5 - 12*zeta^4 + 6*zeta^3 - 6*zeta^2 - 12*zeta + 9)*q^220 +
(zeta^7 - 6*zeta^5 + 2*zeta^4 - zeta^3 + zeta^2 + 2*zeta - 4)*q^221 + (-5*zeta^7
- 20*zeta^5 - 10*zeta^4 + 5*zeta^3 - 5*zeta^2 - 10*zeta - 5)*q^222 + (-2*zeta^7 
- 8*zeta^5 - 4*zeta^4 + 2*zeta^3 - 2*zeta^2 - 4*zeta - 2)*q^223 + 1/2*(6*zeta^7 
- 6*zeta^5 + 12*zeta^4 - 6*zeta^3 + 6*zeta^2 + 12*zeta - 9)*q^225 + 1/2*(zeta^7 
- 6*zeta^5 + 2*zeta^4 - zeta^3 + zeta^2 + 2*zeta - 4)*q^226 + (5*zeta^7 + 
20*zeta^5 + 10*zeta^4 - 5*zeta^3 + 5*zeta^2 + 10*zeta + 5)*q^227 + (2*zeta^7 + 
8*zeta^5 + 4*zeta^4 - 2*zeta^3 + 2*zeta^2 + 4*zeta + 2)*q^228 + 1/2*(-3*zeta^7 +
18*zeta^5 - 6*zeta^4 + 3*zeta^3 - 3*zeta^2 - 6*zeta + 12)*q^229 + 1/2*(3*zeta^7 
+ 12*zeta^5 + 6*zeta^4 - 3*zeta^3 + 3*zeta^2 + 6*zeta + 3)*q^232 + 1/2*(3*zeta^7
+ 12*zeta^5 + 6*zeta^4 - 3*zeta^3 + 3*zeta^2 + 6*zeta + 3)*q^233 + (zeta^7 - 
6*zeta^5 + 2*zeta^4 - zeta^3 + zeta^2 + 2*zeta - 4)*q^234 + (-12*zeta^7 + 
12*zeta^5 - 24*zeta^4 + 12*zeta^3 - 12*zeta^2 - 24*zeta + 18)*q^235 + (-zeta^7 +
6*zeta^5 - 2*zeta^4 + zeta^3 - zeta^2 - 2*zeta + 4)*q^236 + (4*zeta^7 - 
24*zeta^5 + 8*zeta^4 - 4*zeta^3 + 4*zeta^2 + 8*zeta - 16)*q^239 + 1/2*(6*zeta^7 
- 6*zeta^5 + 12*zeta^4 - 6*zeta^3 + 6*zeta^2 + 12*zeta - 9)*q^240 + 
1/2*(7*zeta^7 - 42*zeta^5 + 14*zeta^4 - 7*zeta^3 + 7*zeta^2 + 14*zeta - 
28)*q^241 + 1/4*(5*zeta^7 + 20*zeta^5 + 10*zeta^4 - 5*zeta^3 + 5*zeta^2 + 
10*zeta + 5)*q^242 + 1/2*(-zeta^7 - 4*zeta^5 - 2*zeta^4 + zeta^3 - zeta^2 - 
2*zeta - 1)*q^243 + 1/2*(-zeta^7 + 6*zeta^5 - 2*zeta^4 + zeta^3 - zeta^2 - 
2*zeta + 4)*q^244 + 1/4*(42*zeta^7 - 42*zeta^5 + 84*zeta^4 - 42*zeta^3 + 
42*zeta^2 + 84*zeta - 63)*q^245 + (5*zeta^7 - 30*zeta^5 + 10*zeta^4 - 5*zeta^3 +
5*zeta^2 + 10*zeta - 20)*q^246 + (2*zeta^7 + 8*zeta^5 + 4*zeta^4 - 2*zeta^3 + 
2*zeta^2 + 4*zeta + 2)*q^247 + (-6*zeta^7 + 36*zeta^5 - 12*zeta^4 + 6*zeta^3 - 
6*zeta^2 - 12*zeta + 24)*q^249 + 1/4*(6*zeta^7 - 6*zeta^5 + 12*zeta^4 - 6*zeta^3
+ 6*zeta^2 + 12*zeta - 9)*q^250 + (-3*zeta^7 + 18*zeta^5 - 6*zeta^4 + 3*zeta^3 -
3*zeta^2 - 6*zeta + 12)*q^251 + (-2*zeta^7 + 12*zeta^5 - 4*zeta^4 + 2*zeta^3 - 
2*zeta^2 - 4*zeta + 8)*q^254 + (-6*zeta^7 + 6*zeta^5 - 12*zeta^4 + 6*zeta^3 - 
6*zeta^2 - 12*zeta + 9)*q^255 + 1/4*(17*zeta^7 - 102*zeta^5 + 34*zeta^4 - 
17*zeta^3 + 17*zeta^2 + 34*zeta - 68)*q^256 + 1/2*(-9*zeta^7 - 36*zeta^5 - 
18*zeta^4 + 9*zeta^3 - 9*zeta^2 - 18*zeta - 9)*q^257 + (2*zeta^7 + 8*zeta^5 + 
4*zeta^4 - 2*zeta^3 + 2*zeta^2 + 4*zeta + 2)*q^258 + 1/2*(-6*zeta^7 + 6*zeta^5 -
12*zeta^4 + 6*zeta^3 - 6*zeta^2 - 12*zeta + 9)*q^260 + (-zeta^7 + 6*zeta^5 - 
2*zeta^4 + zeta^3 - zeta^2 - 2*zeta + 4)*q^261 + (-3*zeta^7 - 12*zeta^5 - 
6*zeta^4 + 3*zeta^3 - 3*zeta^2 - 6*zeta - 3)*q^262 + (-4*zeta^7 - 16*zeta^5 - 
8*zeta^4 + 4*zeta^3 - 4*zeta^2 - 8*zeta - 4)*q^263 + (6*zeta^7 - 36*zeta^5 + 
12*zeta^4 - 6*zeta^3 + 6*zeta^2 + 12*zeta - 24)*q^264 + 1/2*(30*zeta^7 - 
30*zeta^5 + 60*zeta^4 - 30*zeta^3 + 30*zeta^2 + 60*zeta - 45)*q^265 + (3*zeta^7 
+ 12*zeta^5 + 6*zeta^4 - 3*zeta^3 + 3*zeta^2 + 6*zeta + 3)*q^267 + (3*zeta^7 + 
12*zeta^5 + 6*zeta^4 - 3*zeta^3 + 3*zeta^2 + 6*zeta + 3)*q^268 + 1/2*(-7*zeta^7 
+ 42*zeta^5 - 14*zeta^4 + 7*zeta^3 - 7*zeta^2 - 14*zeta + 28)*q^269 + 
1/2*(6*zeta^7 - 6*zeta^5 + 12*zeta^4 - 6*zeta^3 + 6*zeta^2 + 12*zeta - 9)*q^270 
+ (-4*zeta^7 + 24*zeta^5 - 8*zeta^4 + 4*zeta^3 - 4*zeta^2 - 8*zeta + 16)*q^271 +
1/2*(zeta^7 + 4*zeta^5 + 2*zeta^4 - zeta^3 + zeta^2 + 2*zeta + 1)*q^272 + 
1/2*(-3*zeta^7 + 18*zeta^5 - 6*zeta^4 + 3*zeta^3 - 3*zeta^2 - 6*zeta + 12)*q^274
+ (6*zeta^7 - 6*zeta^5 + 12*zeta^4 - 6*zeta^3 + 6*zeta^2 + 12*zeta - 9)*q^275 + 
1/2*(-3*zeta^7 - 12*zeta^5 - 6*zeta^4 + 3*zeta^3 - 3*zeta^2 - 6*zeta - 3)*q^277 
+ (-zeta^7 - 4*zeta^5 - 2*zeta^4 + zeta^3 - zeta^2 - 2*zeta - 1)*q^278 + 
1/2*(3*zeta^7 - 18*zeta^5 + 6*zeta^4 - 3*zeta^3 + 3*zeta^2 + 6*zeta - 12)*q^281 
+ (4*zeta^7 + 16*zeta^5 + 8*zeta^4 - 4*zeta^3 + 4*zeta^2 + 8*zeta + 4)*q^282 + 
(3*zeta^7 + 12*zeta^5 + 6*zeta^4 - 3*zeta^3 + 3*zeta^2 + 6*zeta + 3)*q^283 + 
(-2*zeta^7 + 12*zeta^5 - 4*zeta^4 + 2*zeta^3 - 2*zeta^2 - 4*zeta + 8)*q^284 + 
(-12*zeta^7 + 12*zeta^5 - 24*zeta^4 + 12*zeta^3 - 12*zeta^2 - 24*zeta + 
18)*q^285 + (2*zeta^7 - 12*zeta^5 + 4*zeta^4 - 2*zeta^3 + 2*zeta^2 + 4*zeta - 
8)*q^286 + 1/2*(-5*zeta^7 - 20*zeta^5 - 10*zeta^4 + 5*zeta^3 - 5*zeta^2 - 
10*zeta - 5)*q^288 + 1/4*(13*zeta^7 - 78*zeta^5 + 26*zeta^4 - 13*zeta^3 + 
13*zeta^2 + 26*zeta - 52)*q^289 + 1/2*(-6*zeta^7 + 6*zeta^5 - 12*zeta^4 + 
6*zeta^3 - 6*zeta^2 - 12*zeta + 9)*q^290 + (-zeta^7 + 6*zeta^5 - 2*zeta^4 + 
zeta^3 - zeta^2 - 2*zeta + 4)*q^291 + 1/2*(5*zeta^7 + 20*zeta^5 + 10*zeta^4 - 
5*zeta^3 + 5*zeta^2 + 10*zeta + 5)*q^292 + 1/2*(-3*zeta^7 - 12*zeta^5 - 6*zeta^4
+ 3*zeta^3 - 3*zeta^2 - 6*zeta - 3)*q^293 + 1/2*(-7*zeta^7 + 42*zeta^5 - 
14*zeta^4 + 7*zeta^3 - 7*zeta^2 - 14*zeta + 28)*q^294 + (6*zeta^7 - 6*zeta^5 + 
12*zeta^4 - 6*zeta^3 + 6*zeta^2 + 12*zeta - 9)*q^295 + 1/2*(15*zeta^7 - 
90*zeta^5 + 30*zeta^4 - 15*zeta^3 + 15*zeta^2 + 30*zeta - 60)*q^296 + (2*zeta^7 
+ 8*zeta^5 + 4*zeta^4 - 2*zeta^3 + 2*zeta^2 + 4*zeta + 2)*q^297 + 1/2*(11*zeta^7
+ 44*zeta^5 + 22*zeta^4 - 11*zeta^3 + 11*zeta^2 + 22*zeta + 11)*q^298 + 
1/2*(6*zeta^7 - 6*zeta^5 + 12*zeta^4 - 6*zeta^3 + 6*zeta^2 + 12*zeta - 9)*q^300 
+ (-2*zeta^7 - 8*zeta^5 - 4*zeta^4 + 2*zeta^3 - 2*zeta^2 - 4*zeta - 2)*q^302 + 
(-3*zeta^7 - 12*zeta^5 - 6*zeta^4 + 3*zeta^3 - 3*zeta^2 - 6*zeta - 3)*q^303 + 
(zeta^7 - 6*zeta^5 + 2*zeta^4 - zeta^3 + zeta^2 + 2*zeta - 4)*q^304 + 
1/2*(6*zeta^7 - 6*zeta^5 + 12*zeta^4 - 6*zeta^3 + 6*zeta^2 + 12*zeta - 9)*q^305 
+ (-zeta^7 + 6*zeta^5 - 2*zeta^4 + zeta^3 - zeta^2 - 2*zeta + 4)*q^306 + 
(-7*zeta^7 - 28*zeta^5 - 14*zeta^4 + 7*zeta^3 - 7*zeta^2 - 14*zeta - 7)*q^307 + 
(8*zeta^7 - 48*zeta^5 + 16*zeta^4 - 8*zeta^3 + 8*zeta^2 + 16*zeta - 32)*q^309 + 
(6*zeta^7 - 36*zeta^5 + 12*zeta^4 - 6*zeta^3 + 6*zeta^2 + 12*zeta - 24)*q^311 + 
(3*zeta^7 + 12*zeta^5 + 6*zeta^4 - 3*zeta^3 + 3*zeta^2 + 6*zeta + 3)*q^312 + 
1/2*(-13*zeta^7 - 52*zeta^5 - 26*zeta^4 + 13*zeta^3 - 13*zeta^2 - 26*zeta - 
13)*q^313 + 1/2*(7*zeta^7 - 42*zeta^5 + 14*zeta^4 - 7*zeta^3 + 7*zeta^2 + 
14*zeta - 28)*q^314 + 1/2*(zeta^7 + 4*zeta^5 + 2*zeta^4 - zeta^3 + zeta^2 + 
2*zeta + 1)*q^317 + (-5*zeta^7 - 20*zeta^5 - 10*zeta^4 + 5*zeta^3 - 5*zeta^2 - 
10*zeta - 5)*q^318 + (-2*zeta^7 + 12*zeta^5 - 4*zeta^4 + 2*zeta^3 - 2*zeta^2 - 
4*zeta + 8)*q^319 + 1/4*(-42*zeta^7 + 42*zeta^5 - 84*zeta^4 + 42*zeta^3 - 
42*zeta^2 - 84*zeta + 63)*q^320 + (6*zeta^7 - 36*zeta^5 + 12*zeta^4 - 6*zeta^3 +
6*zeta^2 + 12*zeta - 24)*q^321 + (-2*zeta^7 - 8*zeta^5 - 4*zeta^4 + 2*zeta^3 - 
2*zeta^2 - 4*zeta - 2)*q^323 + 1/2*(-zeta^7 + 6*zeta^5 - 2*zeta^4 + zeta^3 - 
zeta^2 - 2*zeta + 4)*q^324 + 1/2*(6*zeta^7 - 6*zeta^5 + 12*zeta^4 - 6*zeta^3 + 
6*zeta^2 + 12*zeta - 9)*q^325 + (-zeta^7 + 6*zeta^5 - 2*zeta^4 + zeta^3 - zeta^2
- 2*zeta + 4)*q^326 + (-7*zeta^7 - 28*zeta^5 - 14*zeta^4 + 7*zeta^3 - 7*zeta^2 -
14*zeta - 7)*q^327 + 1/2*(-15*zeta^7 - 60*zeta^5 - 30*zeta^4 + 15*zeta^3 - 
15*zeta^2 - 30*zeta - 15)*q^328 + (-12*zeta^7 + 12*zeta^5 - 24*zeta^4 + 
12*zeta^3 - 12*zeta^2 - 24*zeta + 18)*q^330 + (-3*zeta^7 + 18*zeta^5 - 6*zeta^4 
+ 3*zeta^3 - 3*zeta^2 - 6*zeta + 12)*q^331 + (3*zeta^7 + 12*zeta^5 + 6*zeta^4 - 
3*zeta^3 + 3*zeta^2 + 6*zeta + 3)*q^332 + (-5*zeta^7 - 20*zeta^5 - 10*zeta^4 + 
5*zeta^3 - 5*zeta^2 - 10*zeta - 5)*q^333 + (-18*zeta^7 + 18*zeta^5 - 36*zeta^4 +
18*zeta^3 - 18*zeta^2 - 36*zeta + 27)*q^335 + 1/2*(7*zeta^7 + 28*zeta^5 + 
14*zeta^4 - 7*zeta^3 + 7*zeta^2 + 14*zeta + 7)*q^337 + 1/4*(-9*zeta^7 - 
36*zeta^5 - 18*zeta^4 + 9*zeta^3 - 9*zeta^2 - 18*zeta - 9)*q^338 + (-zeta^7 + 
6*zeta^5 - 2*zeta^4 + zeta^3 - zeta^2 - 2*zeta + 4)*q^339 + 1/2*(6*zeta^7 - 
6*zeta^5 + 12*zeta^4 - 6*zeta^3 + 6*zeta^2 + 12*zeta - 9)*q^340 + (-2*zeta^7 - 
8*zeta^5 - 4*zeta^4 + 2*zeta^3 - 2*zeta^2 - 4*zeta - 2)*q^342 + (-3*zeta^7 + 
18*zeta^5 - 6*zeta^4 + 3*zeta^3 - 3*zeta^2 - 6*zeta + 12)*q^344 + 1/2*(-9*zeta^7
+ 54*zeta^5 - 18*zeta^4 + 9*zeta^3 - 9*zeta^2 - 18*zeta + 36)*q^346 + (7*zeta^7 
+ 28*zeta^5 + 14*zeta^4 - 7*zeta^3 + 7*zeta^2 + 14*zeta + 7)*q^347 + (-zeta^7 - 
4*zeta^5 - 2*zeta^4 + zeta^3 - zeta^2 - 2*zeta - 1)*q^348 + 1/2*(zeta^7 - 
6*zeta^5 + 2*zeta^4 - zeta^3 + zeta^2 + 2*zeta - 4)*q^349 + (zeta^7 - 6*zeta^5 +
2*zeta^4 - zeta^3 + zeta^2 + 2*zeta - 4)*q^351 + (-5*zeta^7 - 20*zeta^5 - 
10*zeta^4 + 5*zeta^3 - 5*zeta^2 - 10*zeta - 5)*q^352 + 1/2*(-9*zeta^7 - 
36*zeta^5 - 18*zeta^4 + 9*zeta^3 - 9*zeta^2 - 18*zeta - 9)*q^353 + (-2*zeta^7 + 
12*zeta^5 - 4*zeta^4 + 2*zeta^3 - 2*zeta^2 - 4*zeta + 8)*q^354 + (12*zeta^7 - 
12*zeta^5 + 24*zeta^4 - 12*zeta^3 + 12*zeta^2 + 24*zeta - 18)*q^355 + 
1/2*(-3*zeta^7 + 18*zeta^5 - 6*zeta^4 + 3*zeta^3 - 3*zeta^2 - 6*zeta + 12)*q^356
+ (5*zeta^7 + 20*zeta^5 + 10*zeta^4 - 5*zeta^3 + 5*zeta^2 + 10*zeta + 5)*q^358 +
(6*zeta^7 - 36*zeta^5 + 12*zeta^4 - 6*zeta^3 + 6*zeta^2 + 12*zeta - 24)*q^359 + 
1/2*(18*zeta^7 - 18*zeta^5 + 36*zeta^4 - 18*zeta^3 + 18*zeta^2 + 36*zeta - 
27)*q^360 + 1/4*(3*zeta^7 - 18*zeta^5 + 6*zeta^4 - 3*zeta^3 + 3*zeta^2 + 6*zeta 
- 12)*q^361 + 1/2*(-5*zeta^7 - 20*zeta^5 - 10*zeta^4 + 5*zeta^3 - 5*zeta^2 - 
10*zeta - 5)*q^362 + 1/2*(-5*zeta^7 - 20*zeta^5 - 10*zeta^4 + 5*zeta^3 - 
5*zeta^2 - 10*zeta - 5)*q^363 + 1/2*(-30*zeta^7 + 30*zeta^5 - 60*zeta^4 + 
30*zeta^3 - 30*zeta^2 - 60*zeta + 45)*q^365 + (-zeta^7 + 6*zeta^5 - 2*zeta^4 + 
zeta^3 - zeta^2 - 2*zeta + 4)*q^366 + (6*zeta^7 + 24*zeta^5 + 12*zeta^4 - 
6*zeta^3 + 6*zeta^2 + 12*zeta + 6)*q^367 + (5*zeta^7 - 30*zeta^5 + 10*zeta^4 - 
5*zeta^3 + 5*zeta^2 + 10*zeta - 20)*q^369 + 1/2*(-30*zeta^7 + 30*zeta^5 - 
60*zeta^4 + 30*zeta^3 - 30*zeta^2 - 60*zeta + 45)*q^370 + 1/2*(13*zeta^7 + 
52*zeta^5 + 26*zeta^4 - 13*zeta^3 + 13*zeta^2 + 26*zeta + 13)*q^373 + (-2*zeta^7
+ 12*zeta^5 - 4*zeta^4 + 2*zeta^3 - 2*zeta^2 - 4*zeta + 8)*q^374 + 
1/2*(-6*zeta^7 + 6*zeta^5 - 12*zeta^4 + 6*zeta^3 - 6*zeta^2 - 12*zeta + 9)*q^375
+ (-6*zeta^7 + 36*zeta^5 - 12*zeta^4 + 6*zeta^3 - 6*zeta^2 - 12*zeta + 24)*q^376
+ (-zeta^7 - 4*zeta^5 - 2*zeta^4 + zeta^3 - zeta^2 - 2*zeta - 1)*q^377 + 
(5*zeta^7 - 30*zeta^5 + 10*zeta^4 - 5*zeta^3 + 5*zeta^2 + 10*zeta - 20)*q^379 + 
(6*zeta^7 - 6*zeta^5 + 12*zeta^4 - 6*zeta^3 + 6*zeta^2 + 12*zeta - 9)*q^380 + 
(4*zeta^7 - 24*zeta^5 + 8*zeta^4 - 4*zeta^3 + 4*zeta^2 + 8*zeta - 16)*q^381 + 
(4*zeta^7 + 16*zeta^5 + 8*zeta^4 - 4*zeta^3 + 4*zeta^2 + 8*zeta + 4)*q^382 + 
(6*zeta^7 + 24*zeta^5 + 12*zeta^4 - 6*zeta^3 + 6*zeta^2 + 12*zeta + 6)*q^383 + 
1/2*(-3*zeta^7 + 18*zeta^5 - 6*zeta^4 + 3*zeta^3 - 3*zeta^2 - 6*zeta + 12)*q^384
+ 1/2*(zeta^7 - 6*zeta^5 + 2*zeta^4 - zeta^3 + zeta^2 + 2*zeta - 4)*q^386 + 
(2*zeta^7 + 8*zeta^5 + 4*zeta^4 - 2*zeta^3 + 2*zeta^2 + 4*zeta + 2)*q^387 + 
1/2*(zeta^7 + 4*zeta^5 + 2*zeta^4 - zeta^3 + zeta^2 + 2*zeta + 1)*q^388 + 
1/2*(-3*zeta^7 + 18*zeta^5 - 6*zeta^4 + 3*zeta^3 - 3*zeta^2 - 6*zeta + 12)*q^389
+ (-6*zeta^7 + 6*zeta^5 - 12*zeta^4 + 6*zeta^3 - 6*zeta^2 - 12*zeta + 9)*q^390 +
1/4*(21*zeta^7 + 84*zeta^5 + 42*zeta^4 - 21*zeta^3 + 21*zeta^2 + 42*zeta + 
21)*q^392 + (6*zeta^7 + 24*zeta^5 + 12*zeta^4 - 6*zeta^3 + 6*zeta^2 + 12*zeta + 
6)*q^393 + 1/2*(3*zeta^7 - 18*zeta^5 + 6*zeta^4 - 3*zeta^3 + 3*zeta^2 + 6*zeta -
12)*q^394 + (2*zeta^7 - 12*zeta^5 + 4*zeta^4 - 2*zeta^3 + 2*zeta^2 + 4*zeta - 
8)*q^396 + 1/2*(zeta^7 + 4*zeta^5 + 2*zeta^4 - zeta^3 + zeta^2 + 2*zeta + 
1)*q^397 + (-2*zeta^7 - 8*zeta^5 - 4*zeta^4 + 2*zeta^3 - 2*zeta^2 - 4*zeta - 
2)*q^398 + 1/4*(6*zeta^7 - 6*zeta^5 + 12*zeta^4 - 6*zeta^3 + 6*zeta^2 + 12*zeta 
- 9)*q^400 + 1/2*(-9*zeta^7 + 54*zeta^5 - 18*zeta^4 + 9*zeta^3 - 9*zeta^2 - 
18*zeta + 36)*q^401 + (6*zeta^7 + 24*zeta^5 + 12*zeta^4 - 6*zeta^3 + 6*zeta^2 + 
12*zeta + 6)*q^402 + 1/2*(3*zeta^7 - 18*zeta^5 + 6*zeta^4 - 3*zeta^3 + 3*zeta^2 
+ 6*zeta - 12)*q^404 + 1/2*(6*zeta^7 - 6*zeta^5 + 12*zeta^4 - 6*zeta^3 + 
6*zeta^2 + 12*zeta - 9)*q^405 + (-10*zeta^7 - 40*zeta^5 - 20*zeta^4 + 10*zeta^3 
- 10*zeta^2 - 20*zeta - 10)*q^407 + (-3*zeta^7 - 12*zeta^5 - 6*zeta^4 + 3*zeta^3
- 3*zeta^2 - 6*zeta - 3)*q^408 + 1/2*(-13*zeta^7 + 78*zeta^5 - 26*zeta^4 + 
13*zeta^3 - 13*zeta^2 - 26*zeta + 52)*q^409 + 1/2*(30*zeta^7 - 30*zeta^5 + 
60*zeta^4 - 30*zeta^3 + 30*zeta^2 + 60*zeta - 45)*q^410 + (3*zeta^7 - 18*zeta^5 
+ 6*zeta^4 - 3*zeta^3 + 3*zeta^2 + 6*zeta - 12)*q^411 + (-4*zeta^7 - 16*zeta^5 -
8*zeta^4 + 4*zeta^3 - 4*zeta^2 - 8*zeta - 4)*q^412 + (-18*zeta^7 + 18*zeta^5 - 
36*zeta^4 + 18*zeta^3 - 18*zeta^2 - 36*zeta + 27)*q^415 + 1/2*(-5*zeta^7 + 
30*zeta^5 - 10*zeta^4 + 5*zeta^3 - 5*zeta^2 - 10*zeta + 20)*q^416 + (2*zeta^7 + 
8*zeta^5 + 4*zeta^4 - 2*zeta^3 + 2*zeta^2 + 4*zeta + 2)*q^417 + (-4*zeta^7 - 
16*zeta^5 - 8*zeta^4 + 4*zeta^3 - 4*zeta^2 - 8*zeta - 4)*q^418 + (-zeta^7 + 
6*zeta^5 - 2*zeta^4 + zeta^3 - zeta^2 - 2*zeta + 4)*q^419 + 1/2*(13*zeta^7 - 
78*zeta^5 + 26*zeta^4 - 13*zeta^3 + 13*zeta^2 + 26*zeta - 52)*q^421 + (5*zeta^7 
+ 20*zeta^5 + 10*zeta^4 - 5*zeta^3 + 5*zeta^2 + 10*zeta + 5)*q^422 + (4*zeta^7 +
16*zeta^5 + 8*zeta^4 - 4*zeta^3 + 4*zeta^2 + 8*zeta + 4)*q^423 + 1/2*(15*zeta^7 
- 90*zeta^5 + 30*zeta^4 - 15*zeta^3 + 15*zeta^2 + 30*zeta - 60)*q^424 + 
1/2*(-6*zeta^7 + 6*zeta^5 - 12*zeta^4 + 6*zeta^3 - 6*zeta^2 - 12*zeta + 9)*q^425
+ (-4*zeta^7 + 24*zeta^5 - 8*zeta^4 + 4*zeta^3 - 4*zeta^2 - 8*zeta + 16)*q^426 +
(-3*zeta^7 - 12*zeta^5 - 6*zeta^4 + 3*zeta^3 - 3*zeta^2 - 6*zeta - 3)*q^428 + 
(-4*zeta^7 + 24*zeta^5 - 8*zeta^4 + 4*zeta^3 - 4*zeta^2 - 8*zeta + 16)*q^429 + 
(6*zeta^7 - 6*zeta^5 + 12*zeta^4 - 6*zeta^3 + 6*zeta^2 + 12*zeta - 9)*q^430 + 
1/2*(zeta^7 + 4*zeta^5 + 2*zeta^4 - zeta^3 + zeta^2 + 2*zeta + 1)*q^432 + 
1/2*(7*zeta^7 + 28*zeta^5 + 14*zeta^4 - 7*zeta^3 + 7*zeta^2 + 14*zeta + 7)*q^433
+ (6*zeta^7 - 6*zeta^5 + 12*zeta^4 - 6*zeta^3 + 6*zeta^2 + 12*zeta - 9)*q^435 + 
1/2*(7*zeta^7 - 42*zeta^5 + 14*zeta^4 - 7*zeta^3 + 7*zeta^2 + 14*zeta - 
28)*q^436 + (5*zeta^7 + 20*zeta^5 + 10*zeta^4 - 5*zeta^3 + 5*zeta^2 + 10*zeta + 
5)*q^438 + (-10*zeta^7 + 60*zeta^5 - 20*zeta^4 + 10*zeta^3 - 10*zeta^2 - 20*zeta
+ 40)*q^439 + (18*zeta^7 - 18*zeta^5 + 36*zeta^4 - 18*zeta^3 + 18*zeta^2 + 
36*zeta - 27)*q^440 + 1/2*(-7*zeta^7 + 42*zeta^5 - 14*zeta^4 + 7*zeta^3 - 
7*zeta^2 - 14*zeta + 28)*q^441 + (-zeta^7 - 4*zeta^5 - 2*zeta^4 + zeta^3 - 
zeta^2 - 2*zeta - 1)*q^442 + (3*zeta^7 + 12*zeta^5 + 6*zeta^4 - 3*zeta^3 + 
3*zeta^2 + 6*zeta + 3)*q^443 + (-5*zeta^7 + 30*zeta^5 - 10*zeta^4 + 5*zeta^3 - 
5*zeta^2 - 10*zeta + 20)*q^444 + 1/2*(18*zeta^7 - 18*zeta^5 + 36*zeta^4 - 
18*zeta^3 + 18*zeta^2 + 36*zeta - 27)*q^445 + (2*zeta^7 - 12*zeta^5 + 4*zeta^4 -
2*zeta^3 + 2*zeta^2 + 4*zeta - 8)*q^446 + (-11*zeta^7 - 44*zeta^5 - 22*zeta^4 + 
11*zeta^3 - 11*zeta^2 - 22*zeta - 11)*q^447 + 1/2*(-zeta^7 + 6*zeta^5 - 2*zeta^4
+ zeta^3 - zeta^2 - 2*zeta + 4)*q^449 + 1/2*(-6*zeta^7 + 6*zeta^5 - 12*zeta^4 + 
6*zeta^3 - 6*zeta^2 - 12*zeta + 9)*q^450 + (10*zeta^7 - 60*zeta^5 + 20*zeta^4 - 
10*zeta^3 + 10*zeta^2 + 20*zeta - 40)*q^451 + 1/2*(zeta^7 + 4*zeta^5 + 2*zeta^4 
- zeta^3 + zeta^2 + 2*zeta + 1)*q^452 + (4*zeta^7 + 16*zeta^5 + 8*zeta^4 - 
4*zeta^3 + 4*zeta^2 + 8*zeta + 4)*q^453 + (-5*zeta^7 + 30*zeta^5 - 10*zeta^4 + 
5*zeta^3 - 5*zeta^2 - 10*zeta + 20)*q^454 + (-6*zeta^7 + 36*zeta^5 - 12*zeta^4 +
6*zeta^3 - 6*zeta^2 - 12*zeta + 24)*q^456 + 1/2*(-5*zeta^7 - 20*zeta^5 - 
10*zeta^4 + 5*zeta^3 - 5*zeta^2 - 10*zeta - 5)*q^457 + 1/2*(3*zeta^7 + 12*zeta^5
+ 6*zeta^4 - 3*zeta^3 + 3*zeta^2 + 6*zeta + 3)*q^458 + (-zeta^7 + 6*zeta^5 - 
2*zeta^4 + zeta^3 - zeta^2 - 2*zeta + 4)*q^459 + 1/2*(9*zeta^7 - 54*zeta^5 + 
18*zeta^4 - 9*zeta^3 + 9*zeta^2 + 18*zeta - 36)*q^461 + (-6*zeta^7 - 24*zeta^5 -
12*zeta^4 + 6*zeta^3 - 6*zeta^2 - 12*zeta - 6)*q^463 + 1/2*(-zeta^7 + 6*zeta^5 -
2*zeta^4 + zeta^3 - zeta^2 - 2*zeta + 4)*q^464 + 1/2*(-3*zeta^7 + 18*zeta^5 - 
6*zeta^4 + 3*zeta^3 - 3*zeta^2 - 6*zeta + 12)*q^466 + (-7*zeta^7 - 28*zeta^5 - 
14*zeta^4 + 7*zeta^3 - 7*zeta^2 - 14*zeta - 7)*q^467 + (zeta^7 + 4*zeta^5 + 
2*zeta^4 - zeta^3 + zeta^2 + 2*zeta + 1)*q^468 + (12*zeta^7 - 12*zeta^5 + 
24*zeta^4 - 12*zeta^3 + 12*zeta^2 + 24*zeta - 18)*q^470 + (-7*zeta^7 + 42*zeta^5
- 14*zeta^4 + 7*zeta^3 - 7*zeta^2 - 14*zeta + 28)*q^471 + (3*zeta^7 + 12*zeta^5 
+ 6*zeta^4 - 3*zeta^3 + 3*zeta^2 + 6*zeta + 3)*q^472 + (4*zeta^7 + 16*zeta^5 + 
8*zeta^4 - 4*zeta^3 + 4*zeta^2 + 8*zeta + 4)*q^473 + (-6*zeta^7 + 6*zeta^5 - 
12*zeta^4 + 6*zeta^3 - 6*zeta^2 - 12*zeta + 9)*q^475 + (-5*zeta^7 - 20*zeta^5 - 
10*zeta^4 + 5*zeta^3 - 5*zeta^2 - 10*zeta - 5)*q^477 + (-4*zeta^7 - 16*zeta^5 - 
8*zeta^4 + 4*zeta^3 - 4*zeta^2 - 8*zeta - 4)*q^478 + 1/2*(30*zeta^7 - 30*zeta^5 
+ 60*zeta^4 - 30*zeta^3 + 30*zeta^2 + 60*zeta - 45)*q^480 + (-5*zeta^7 + 
30*zeta^5 - 10*zeta^4 + 5*zeta^3 - 5*zeta^2 - 10*zeta + 20)*q^481 + 
1/2*(-7*zeta^7 - 28*zeta^5 - 14*zeta^4 + 7*zeta^3 - 7*zeta^2 - 14*zeta - 
7)*q^482 + 1/4*(5*zeta^7 - 30*zeta^5 + 10*zeta^4 - 5*zeta^3 + 5*zeta^2 + 10*zeta
- 20)*q^484 + 1/2*(-6*zeta^7 + 6*zeta^5 - 12*zeta^4 + 6*zeta^3 - 6*zeta^2 - 
12*zeta + 9)*q^485 + 1/2*(zeta^7 - 6*zeta^5 + 2*zeta^4 - zeta^3 + zeta^2 + 
2*zeta - 4)*q^486 + (-8*zeta^7 - 32*zeta^5 - 16*zeta^4 + 8*zeta^3 - 8*zeta^2 - 
16*zeta - 8)*q^487 + 1/2*(3*zeta^7 + 12*zeta^5 + 6*zeta^4 - 3*zeta^3 + 3*zeta^2 
+ 6*zeta + 3)*q^488 + (2*zeta^7 - 12*zeta^5 + 4*zeta^4 - 2*zeta^3 + 2*zeta^2 + 
4*zeta - 8)*q^489 + 1/4*(-42*zeta^7 + 42*zeta^5 - 84*zeta^4 + 42*zeta^3 - 
42*zeta^2 - 84*zeta + 63)*q^490 + (-7*zeta^7 + 42*zeta^5 - 14*zeta^4 + 7*zeta^3 
- 7*zeta^2 - 14*zeta + 28)*q^491 + (5*zeta^7 + 20*zeta^5 + 10*zeta^4 - 5*zeta^3 
+ 5*zeta^2 + 10*zeta + 5)*q^492 + (zeta^7 + 4*zeta^5 + 2*zeta^4 - zeta^3 + 
zeta^2 + 2*zeta + 1)*q^493 + (-2*zeta^7 + 12*zeta^5 - 4*zeta^4 + 2*zeta^3 - 
2*zeta^2 - 4*zeta + 8)*q^494 + (-12*zeta^7 + 12*zeta^5 - 24*zeta^4 + 12*zeta^3 -
12*zeta^2 - 24*zeta + 18)*q^495 + (6*zeta^7 + 24*zeta^5 + 12*zeta^4 - 6*zeta^3 +
6*zeta^2 + 12*zeta + 6)*q^498 + (-zeta^7 + 6*zeta^5 - 2*zeta^4 + zeta^3 - zeta^2
- 2*zeta + 4)*q^499 + 1/4*(6*zeta^7 - 6*zeta^5 + 12*zeta^4 - 6*zeta^3 + 6*zeta^2
+ 12*zeta - 9)*q^500 + (3*zeta^7 + 12*zeta^5 + 6*zeta^4 - 3*zeta^3 + 3*zeta^2 + 
6*zeta + 3)*q^502 + (8*zeta^7 + 32*zeta^5 + 16*zeta^4 - 8*zeta^3 + 8*zeta^2 + 
16*zeta + 8)*q^503 + 1/2*(-18*zeta^7 + 18*zeta^5 - 36*zeta^4 + 18*zeta^3 - 
18*zeta^2 - 36*zeta + 27)*q^505 + 1/2*(9*zeta^7 + 36*zeta^5 + 18*zeta^4 - 
9*zeta^3 + 9*zeta^2 + 18*zeta + 9)*q^507 + (-2*zeta^7 - 8*zeta^5 - 4*zeta^4 + 
2*zeta^3 - 2*zeta^2 - 4*zeta - 2)*q^508 + 1/2*(17*zeta^7 - 102*zeta^5 + 
34*zeta^4 - 17*zeta^3 + 17*zeta^2 + 34*zeta - 68)*q^509 + (6*zeta^7 - 6*zeta^5 +
12*zeta^4 - 6*zeta^3 + 6*zeta^2 + 12*zeta - 9)*q^510 + 1/4*(-11*zeta^7 - 
44*zeta^5 - 22*zeta^4 + 11*zeta^3 - 11*zeta^2 - 22*zeta - 11)*q^512 + (-2*zeta^7
- 8*zeta^5 - 4*zeta^4 + 2*zeta^3 - 2*zeta^2 - 4*zeta - 2)*q^513 + 1/2*(9*zeta^7 
- 54*zeta^5 + 18*zeta^4 - 9*zeta^3 + 9*zeta^2 + 18*zeta - 36)*q^514 + (24*zeta^7
- 24*zeta^5 + 48*zeta^4 - 24*zeta^3 + 24*zeta^2 + 48*zeta - 36)*q^515 + 
(2*zeta^7 - 12*zeta^5 + 4*zeta^4 - 2*zeta^3 + 2*zeta^2 + 4*zeta - 8)*q^516 + 
(8*zeta^7 + 32*zeta^5 + 16*zeta^4 - 8*zeta^3 + 8*zeta^2 + 16*zeta + 8)*q^517 + 
(9*zeta^7 - 54*zeta^5 + 18*zeta^4 - 9*zeta^3 + 9*zeta^2 + 18*zeta - 36)*q^519 + 
1/2*(18*zeta^7 - 18*zeta^5 + 36*zeta^4 - 18*zeta^3 + 18*zeta^2 + 36*zeta - 
27)*q^520 + 1/2*(-5*zeta^7 + 30*zeta^5 - 10*zeta^4 + 5*zeta^3 - 5*zeta^2 - 
10*zeta + 20)*q^521 + (zeta^7 + 4*zeta^5 + 2*zeta^4 - zeta^3 + zeta^2 + 2*zeta +
1)*q^522 + (-zeta^7 - 4*zeta^5 - 2*zeta^4 + zeta^3 - zeta^2 - 2*zeta - 1)*q^523 
+ (-3*zeta^7 + 18*zeta^5 - 6*zeta^4 + 3*zeta^3 - 3*zeta^2 - 6*zeta + 12)*q^524 +
(4*zeta^7 - 24*zeta^5 + 8*zeta^4 - 4*zeta^3 + 4*zeta^2 + 8*zeta - 16)*q^526 + 
(-2*zeta^7 - 8*zeta^5 - 4*zeta^4 + 2*zeta^3 - 2*zeta^2 - 4*zeta - 2)*q^528 + 
1/4*(23*zeta^7 - 138*zeta^5 + 46*zeta^4 - 23*zeta^3 + 23*zeta^2 + 46*zeta - 
92)*q^529 + 1/2*(-30*zeta^7 + 30*zeta^5 - 60*zeta^4 + 30*zeta^3 - 30*zeta^2 - 
60*zeta + 45)*q^530 + (-2*zeta^7 + 12*zeta^5 - 4*zeta^4 + 2*zeta^3 - 2*zeta^2 - 
4*zeta + 8)*q^531 + (5*zeta^7 + 20*zeta^5 + 10*zeta^4 - 5*zeta^3 + 5*zeta^2 + 
10*zeta + 5)*q^533 + (-3*zeta^7 + 18*zeta^5 - 6*zeta^4 + 3*zeta^3 - 3*zeta^2 - 
6*zeta + 12)*q^534 + (18*zeta^7 - 18*zeta^5 + 36*zeta^4 - 18*zeta^3 + 18*zeta^2 
+ 36*zeta - 27)*q^535 + (-9*zeta^7 + 54*zeta^5 - 18*zeta^4 + 9*zeta^3 - 9*zeta^2
- 18*zeta + 36)*q^536 + (-10*zeta^7 - 40*zeta^5 - 20*zeta^4 + 10*zeta^3 - 
10*zeta^2 - 20*zeta - 10)*q^537 + 1/2*(7*zeta^7 + 28*zeta^5 + 14*zeta^4 - 
7*zeta^3 + 7*zeta^2 + 14*zeta + 7)*q^538 + (-7*zeta^7 + 42*zeta^5 - 14*zeta^4 + 
7*zeta^3 - 7*zeta^2 - 14*zeta + 28)*q^539 + 1/2*(6*zeta^7 - 6*zeta^5 + 12*zeta^4
- 6*zeta^3 + 6*zeta^2 + 12*zeta - 9)*q^540 + 1/2*(-15*zeta^7 + 90*zeta^5 - 
30*zeta^4 + 15*zeta^3 - 15*zeta^2 - 30*zeta + 60)*q^541 + (4*zeta^7 + 16*zeta^5 
+ 8*zeta^4 - 4*zeta^3 + 4*zeta^2 + 8*zeta + 4)*q^542 + (5*zeta^7 + 20*zeta^5 + 
10*zeta^4 - 5*zeta^3 + 5*zeta^2 + 10*zeta + 5)*q^543 + 1/2*(5*zeta^7 - 30*zeta^5
+ 10*zeta^4 - 5*zeta^3 + 5*zeta^2 + 10*zeta - 20)*q^544 + 1/2*(-42*zeta^7 + 
42*zeta^5 - 84*zeta^4 + 42*zeta^3 - 42*zeta^2 - 84*zeta + 63)*q^545 + (5*zeta^7 
+ 20*zeta^5 + 10*zeta^4 - 5*zeta^3 + 5*zeta^2 + 10*zeta + 5)*q^547 + 
1/2*(-3*zeta^7 - 12*zeta^5 - 6*zeta^4 + 3*zeta^3 - 3*zeta^2 - 6*zeta - 3)*q^548 
+ (-zeta^7 + 6*zeta^5 - 2*zeta^4 + zeta^3 - zeta^2 - 2*zeta + 4)*q^549 + 
(-6*zeta^7 + 6*zeta^5 - 12*zeta^4 + 6*zeta^3 - 6*zeta^2 - 12*zeta + 9)*q^550 + 
(2*zeta^7 - 12*zeta^5 + 4*zeta^4 - 2*zeta^3 + 2*zeta^2 + 4*zeta - 8)*q^551 + 
1/2*(3*zeta^7 - 18*zeta^5 + 6*zeta^4 - 3*zeta^3 + 3*zeta^2 + 6*zeta - 12)*q^554 
+ O(q^555), (-zeta^7 - 2*zeta^4 + zeta^3 - zeta^2 - 2*zeta + 1)*q + (-2*zeta^7 +
4*zeta^5 - 4*zeta^4 + 2*zeta^3 - 2*zeta^2 - 4*zeta + 4)*q^2 + (-2*zeta^7 + 
4*zeta^5 - 4*zeta^4 + 2*zeta^3 - 2*zeta^2 - 4*zeta + 4)*q^3 + (-2*zeta^7 - 
4*zeta^4 + 2*zeta^3 - 2*zeta^2 - 4*zeta + 2)*q^4 + (-4*zeta^7 - 8*zeta^4 + 
4*zeta^3 - 4*zeta^2 - 8*zeta + 4)*q^6 + (3*zeta^7 - 6*zeta^5 + 6*zeta^4 - 
3*zeta^3 + 3*zeta^2 + 6*zeta - 6)*q^7 + (2*zeta^7 + 4*zeta^4 - 2*zeta^3 + 
2*zeta^2 + 4*zeta - 2)*q^9 + (-2*zeta^7 - 4*zeta^4 + 2*zeta^3 - 2*zeta^2 - 
4*zeta + 2)*q^11 + (-4*zeta^7 + 8*zeta^5 - 8*zeta^4 + 4*zeta^3 - 4*zeta^2 - 
8*zeta + 8)*q^12 + (-zeta^7 + 2*zeta^5 - 2*zeta^4 + zeta^3 - zeta^2 - 2*zeta + 
2)*q^13 + (6*zeta^7 + 12*zeta^4 - 6*zeta^3 + 6*zeta^2 + 12*zeta - 6)*q^14 + 
(4*zeta^7 + 8*zeta^4 - 4*zeta^3 + 4*zeta^2 + 8*zeta - 4)*q^16 + (-2*zeta^7 + 
4*zeta^5 - 4*zeta^4 + 2*zeta^3 - 2*zeta^2 - 4*zeta + 4)*q^17 + (4*zeta^7 - 
8*zeta^5 + 8*zeta^4 - 4*zeta^3 + 4*zeta^2 + 8*zeta - 8)*q^18 + (5*zeta^7 + 
10*zeta^4 - 5*zeta^3 + 5*zeta^2 + 10*zeta - 5)*q^19 + (6*zeta^7 + 12*zeta^4 - 
6*zeta^3 + 6*zeta^2 + 12*zeta - 6)*q^21 + (-4*zeta^7 + 8*zeta^5 - 8*zeta^4 + 
4*zeta^3 - 4*zeta^2 - 8*zeta + 8)*q^22 + (-6*zeta^7 + 12*zeta^5 - 12*zeta^4 + 
6*zeta^3 - 6*zeta^2 - 12*zeta + 12)*q^23 + (-2*zeta^7 - 4*zeta^4 + 2*zeta^3 - 
2*zeta^2 - 4*zeta + 2)*q^26 + (-2*zeta^7 + 4*zeta^5 - 4*zeta^4 + 2*zeta^3 - 
2*zeta^2 - 4*zeta + 4)*q^27 + (6*zeta^7 - 12*zeta^5 + 12*zeta^4 - 6*zeta^3 + 
6*zeta^2 + 12*zeta - 12)*q^28 + (-10*zeta^7 - 20*zeta^4 + 10*zeta^3 - 10*zeta^2 
- 20*zeta + 10)*q^29 + (3*zeta^7 + 6*zeta^4 - 3*zeta^3 + 3*zeta^2 + 6*zeta - 
3)*q^31 + (8*zeta^7 - 16*zeta^5 + 16*zeta^4 - 8*zeta^3 + 8*zeta^2 + 16*zeta - 
16)*q^32 + (-4*zeta^7 + 8*zeta^5 - 8*zeta^4 + 4*zeta^3 - 4*zeta^2 - 8*zeta + 
8)*q^33 + (-4*zeta^7 - 8*zeta^4 + 4*zeta^3 - 4*zeta^2 - 8*zeta + 4)*q^34 + 
(4*zeta^7 + 8*zeta^4 - 4*zeta^3 + 4*zeta^2 + 8*zeta - 4)*q^36 + (-2*zeta^7 + 
4*zeta^5 - 4*zeta^4 + 2*zeta^3 - 2*zeta^2 - 4*zeta + 4)*q^37 + (10*zeta^7 - 
20*zeta^5 + 20*zeta^4 - 10*zeta^3 + 10*zeta^2 + 20*zeta - 20)*q^38 + (-2*zeta^7 
- 4*zeta^4 + 2*zeta^3 - 2*zeta^2 - 4*zeta + 2)*q^39 + (8*zeta^7 + 16*zeta^4 - 
8*zeta^3 + 8*zeta^2 + 16*zeta - 8)*q^41 + (12*zeta^7 - 24*zeta^5 + 24*zeta^4 - 
12*zeta^3 + 12*zeta^2 + 24*zeta - 24)*q^42 + (-zeta^7 + 2*zeta^5 - 2*zeta^4 + 
zeta^3 - zeta^2 - 2*zeta + 2)*q^43 + (-4*zeta^7 - 8*zeta^4 + 4*zeta^3 - 4*zeta^2
- 8*zeta + 4)*q^44 + (-12*zeta^7 - 24*zeta^4 + 12*zeta^3 - 12*zeta^2 - 24*zeta +
12)*q^46 + (-2*zeta^7 + 4*zeta^5 - 4*zeta^4 + 2*zeta^3 - 2*zeta^2 - 4*zeta + 
4)*q^47 + (8*zeta^7 - 16*zeta^5 + 16*zeta^4 - 8*zeta^3 + 8*zeta^2 + 16*zeta - 
16)*q^48 + (-2*zeta^7 - 4*zeta^4 + 2*zeta^3 - 2*zeta^2 - 4*zeta + 2)*q^49 + 
(-4*zeta^7 - 8*zeta^4 + 4*zeta^3 - 4*zeta^2 - 8*zeta + 4)*q^51 + (-2*zeta^7 + 
4*zeta^5 - 4*zeta^4 + 2*zeta^3 - 2*zeta^2 - 4*zeta + 4)*q^52 + (4*zeta^7 - 
8*zeta^5 + 8*zeta^4 - 4*zeta^3 + 4*zeta^2 + 8*zeta - 8)*q^53 + (-4*zeta^7 - 
8*zeta^4 + 4*zeta^3 - 4*zeta^2 - 8*zeta + 4)*q^54 + (10*zeta^7 - 20*zeta^5 + 
20*zeta^4 - 10*zeta^3 + 10*zeta^2 + 20*zeta - 20)*q^57 + (-20*zeta^7 + 40*zeta^5
- 40*zeta^4 + 20*zeta^3 - 20*zeta^2 - 40*zeta + 40)*q^58 + (10*zeta^7 + 
20*zeta^4 - 10*zeta^3 + 10*zeta^2 + 20*zeta - 10)*q^59 + (-7*zeta^7 - 14*zeta^4 
+ 7*zeta^3 - 7*zeta^2 - 14*zeta + 7)*q^61 + (6*zeta^7 - 12*zeta^5 + 12*zeta^4 - 
6*zeta^3 + 6*zeta^2 + 12*zeta - 12)*q^62 + (-6*zeta^7 + 12*zeta^5 - 12*zeta^4 + 
6*zeta^3 - 6*zeta^2 - 12*zeta + 12)*q^63 + (8*zeta^7 + 16*zeta^4 - 8*zeta^3 + 
8*zeta^2 + 16*zeta - 8)*q^64 + (-8*zeta^7 - 16*zeta^4 + 8*zeta^3 - 8*zeta^2 - 
16*zeta + 8)*q^66 + (3*zeta^7 - 6*zeta^5 + 6*zeta^4 - 3*zeta^3 + 3*zeta^2 + 
6*zeta - 6)*q^67 + (-4*zeta^7 + 8*zeta^5 - 8*zeta^4 + 4*zeta^3 - 4*zeta^2 - 
8*zeta + 8)*q^68 + (-12*zeta^7 - 24*zeta^4 + 12*zeta^3 - 12*zeta^2 - 24*zeta + 
12)*q^69 + (8*zeta^7 + 16*zeta^4 - 8*zeta^3 + 8*zeta^2 + 16*zeta - 8)*q^71 + 
(14*zeta^7 - 28*zeta^5 + 28*zeta^4 - 14*zeta^3 + 14*zeta^2 + 28*zeta - 28)*q^73 
+ (-4*zeta^7 - 8*zeta^4 + 4*zeta^3 - 4*zeta^2 - 8*zeta + 4)*q^74 + (10*zeta^7 + 
20*zeta^4 - 10*zeta^3 + 10*zeta^2 + 20*zeta - 10)*q^76 + (6*zeta^7 - 12*zeta^5 +
12*zeta^4 - 6*zeta^3 + 6*zeta^2 + 12*zeta - 12)*q^77 + (-4*zeta^7 + 8*zeta^5 - 
8*zeta^4 + 4*zeta^3 - 4*zeta^2 - 8*zeta + 8)*q^78 + (2*zeta^7 + 4*zeta^4 - 
2*zeta^3 + 2*zeta^2 + 4*zeta - 2)*q^81 + (16*zeta^7 - 32*zeta^5 + 32*zeta^4 - 
16*zeta^3 + 16*zeta^2 + 32*zeta - 32)*q^82 + (-6*zeta^7 + 12*zeta^5 - 12*zeta^4 
+ 6*zeta^3 - 6*zeta^2 - 12*zeta + 12)*q^83 + (12*zeta^7 + 24*zeta^4 - 12*zeta^3 
+ 12*zeta^2 + 24*zeta - 12)*q^84 + (-2*zeta^7 - 4*zeta^4 + 2*zeta^3 - 2*zeta^2 -
4*zeta + 2)*q^86 + (-20*zeta^7 + 40*zeta^5 - 40*zeta^4 + 20*zeta^3 - 20*zeta^2 -
40*zeta + 40)*q^87 + (3*zeta^7 + 6*zeta^4 - 3*zeta^3 + 3*zeta^2 + 6*zeta - 
3)*q^91 + (-12*zeta^7 + 24*zeta^5 - 24*zeta^4 + 12*zeta^3 - 12*zeta^2 - 24*zeta 
+ 24)*q^92 + (6*zeta^7 - 12*zeta^5 + 12*zeta^4 - 6*zeta^3 + 6*zeta^2 + 12*zeta -
12)*q^93 + (-4*zeta^7 - 8*zeta^4 + 4*zeta^3 - 4*zeta^2 - 8*zeta + 4)*q^94 + 
(16*zeta^7 + 32*zeta^4 - 16*zeta^3 + 16*zeta^2 + 32*zeta - 16)*q^96 + 
(-17*zeta^7 + 34*zeta^5 - 34*zeta^4 + 17*zeta^3 - 17*zeta^2 - 34*zeta + 34)*q^97
+ (-4*zeta^7 + 8*zeta^5 - 8*zeta^4 + 4*zeta^3 - 4*zeta^2 - 8*zeta + 8)*q^98 + 
(4*zeta^7 + 8*zeta^4 - 4*zeta^3 + 4*zeta^2 + 8*zeta - 4)*q^99 + (-12*zeta^7 - 
24*zeta^4 + 12*zeta^3 - 12*zeta^2 - 24*zeta + 12)*q^101 + (-8*zeta^7 + 16*zeta^5
- 16*zeta^4 + 8*zeta^3 - 8*zeta^2 - 16*zeta + 16)*q^102 + (4*zeta^7 - 8*zeta^5 +
8*zeta^4 - 4*zeta^3 + 4*zeta^2 + 8*zeta - 8)*q^103 + (8*zeta^7 + 16*zeta^4 - 
8*zeta^3 + 8*zeta^2 + 16*zeta - 8)*q^106 + (-12*zeta^7 + 24*zeta^5 - 24*zeta^4 +
12*zeta^3 - 12*zeta^2 - 24*zeta + 24)*q^107 + (-4*zeta^7 + 8*zeta^5 - 8*zeta^4 +
4*zeta^3 - 4*zeta^2 - 8*zeta + 8)*q^108 + (-5*zeta^7 - 10*zeta^4 + 5*zeta^3 - 
5*zeta^2 - 10*zeta + 5)*q^109 + (-4*zeta^7 - 8*zeta^4 + 4*zeta^3 - 4*zeta^2 - 
8*zeta + 4)*q^111 + (-12*zeta^7 + 24*zeta^5 - 24*zeta^4 + 12*zeta^3 - 12*zeta^2 
- 24*zeta + 24)*q^112 + (4*zeta^7 - 8*zeta^5 + 8*zeta^4 - 4*zeta^3 + 4*zeta^2 + 
8*zeta - 8)*q^113 + (20*zeta^7 + 40*zeta^4 - 20*zeta^3 + 20*zeta^2 + 40*zeta - 
20)*q^114 + (-20*zeta^7 - 40*zeta^4 + 20*zeta^3 - 20*zeta^2 - 40*zeta + 
20)*q^116 + (2*zeta^7 - 4*zeta^5 + 4*zeta^4 - 2*zeta^3 + 2*zeta^2 + 4*zeta - 
4)*q^117 + (20*zeta^7 - 40*zeta^5 + 40*zeta^4 - 20*zeta^3 + 20*zeta^2 + 40*zeta 
- 40)*q^118 + (6*zeta^7 + 12*zeta^4 - 6*zeta^3 + 6*zeta^2 + 12*zeta - 6)*q^119 +
(7*zeta^7 + 14*zeta^4 - 7*zeta^3 + 7*zeta^2 + 14*zeta - 7)*q^121 + (-14*zeta^7 +
28*zeta^5 - 28*zeta^4 + 14*zeta^3 - 14*zeta^2 - 28*zeta + 28)*q^122 + (16*zeta^7
- 32*zeta^5 + 32*zeta^4 - 16*zeta^3 + 16*zeta^2 + 32*zeta - 32)*q^123 + 
(6*zeta^7 + 12*zeta^4 - 6*zeta^3 + 6*zeta^2 + 12*zeta - 6)*q^124 + (-12*zeta^7 -
24*zeta^4 + 12*zeta^3 - 12*zeta^2 - 24*zeta + 12)*q^126 + (8*zeta^7 - 16*zeta^5 
+ 16*zeta^4 - 8*zeta^3 + 8*zeta^2 + 16*zeta - 16)*q^127 + (-2*zeta^7 - 4*zeta^4 
+ 2*zeta^3 - 2*zeta^2 - 4*zeta + 2)*q^129 + (-12*zeta^7 - 24*zeta^4 + 12*zeta^3 
- 12*zeta^2 - 24*zeta + 12)*q^131 + (-8*zeta^7 + 16*zeta^5 - 16*zeta^4 + 
8*zeta^3 - 8*zeta^2 - 16*zeta + 16)*q^132 + (-15*zeta^7 + 30*zeta^5 - 30*zeta^4 
+ 15*zeta^3 - 15*zeta^2 - 30*zeta + 30)*q^133 + (6*zeta^7 + 12*zeta^4 - 6*zeta^3
+ 6*zeta^2 + 12*zeta - 6)*q^134 + (18*zeta^7 - 36*zeta^5 + 36*zeta^4 - 18*zeta^3
+ 18*zeta^2 + 36*zeta - 36)*q^137 + (-24*zeta^7 + 48*zeta^5 - 48*zeta^4 + 
24*zeta^3 - 24*zeta^2 - 48*zeta + 48)*q^138 + (-20*zeta^7 - 40*zeta^4 + 
20*zeta^3 - 20*zeta^2 - 40*zeta + 20)*q^139 + (-4*zeta^7 - 8*zeta^4 + 4*zeta^3 -
4*zeta^2 - 8*zeta + 4)*q^141 + (16*zeta^7 - 32*zeta^5 + 32*zeta^4 - 16*zeta^3 + 
16*zeta^2 + 32*zeta - 32)*q^142 + (-2*zeta^7 + 4*zeta^5 - 4*zeta^4 + 2*zeta^3 - 
2*zeta^2 - 4*zeta + 4)*q^143 + (-8*zeta^7 - 16*zeta^4 + 8*zeta^3 - 8*zeta^2 - 
16*zeta + 8)*q^144 + (28*zeta^7 + 56*zeta^4 - 28*zeta^3 + 28*zeta^2 + 56*zeta - 
28)*q^146 + (-4*zeta^7 + 8*zeta^5 - 8*zeta^4 + 4*zeta^3 - 4*zeta^2 - 8*zeta + 
8)*q^147 + (-4*zeta^7 + 8*zeta^5 - 8*zeta^4 + 4*zeta^3 - 4*zeta^2 - 8*zeta + 
8)*q^148 + (-10*zeta^7 - 20*zeta^4 + 10*zeta^3 - 10*zeta^2 - 20*zeta + 10)*q^149
+ (-7*zeta^7 - 14*zeta^4 + 7*zeta^3 - 7*zeta^2 - 14*zeta + 7)*q^151 + (4*zeta^7 
- 8*zeta^5 + 8*zeta^4 - 4*zeta^3 + 4*zeta^2 + 8*zeta - 8)*q^153 + (12*zeta^7 + 
24*zeta^4 - 12*zeta^3 + 12*zeta^2 + 24*zeta - 12)*q^154 + (-4*zeta^7 - 8*zeta^4 
+ 4*zeta^3 - 4*zeta^2 - 8*zeta + 4)*q^156 + (13*zeta^7 - 26*zeta^5 + 26*zeta^4 -
13*zeta^3 + 13*zeta^2 + 26*zeta - 26)*q^157 + (8*zeta^7 + 16*zeta^4 - 8*zeta^3 +
8*zeta^2 + 16*zeta - 8)*q^159 + (18*zeta^7 + 36*zeta^4 - 18*zeta^3 + 18*zeta^2 +
36*zeta - 18)*q^161 + (4*zeta^7 - 8*zeta^5 + 8*zeta^4 - 4*zeta^3 + 4*zeta^2 + 
8*zeta - 8)*q^162 + (-11*zeta^7 + 22*zeta^5 - 22*zeta^4 + 11*zeta^3 - 11*zeta^2 
- 22*zeta + 22)*q^163 + (16*zeta^7 + 32*zeta^4 - 16*zeta^3 + 16*zeta^2 + 32*zeta
- 16)*q^164 + (-12*zeta^7 - 24*zeta^4 + 12*zeta^3 - 12*zeta^2 - 24*zeta + 
12)*q^166 + (-12*zeta^7 + 24*zeta^5 - 24*zeta^4 + 12*zeta^3 - 12*zeta^2 - 
24*zeta + 24)*q^167 + (12*zeta^7 + 24*zeta^4 - 12*zeta^3 + 12*zeta^2 + 24*zeta -
12)*q^169 + (-10*zeta^7 - 20*zeta^4 + 10*zeta^3 - 10*zeta^2 - 20*zeta + 
10)*q^171 + (-2*zeta^7 + 4*zeta^5 - 4*zeta^4 + 2*zeta^3 - 2*zeta^2 - 4*zeta + 
4)*q^172 + (-6*zeta^7 + 12*zeta^5 - 12*zeta^4 + 6*zeta^3 - 6*zeta^2 - 12*zeta + 
12)*q^173 + (-40*zeta^7 - 80*zeta^4 + 40*zeta^3 - 40*zeta^2 - 80*zeta + 
40)*q^174 + (8*zeta^7 + 16*zeta^4 - 8*zeta^3 + 8*zeta^2 + 16*zeta - 8)*q^176 + 
(20*zeta^7 - 40*zeta^5 + 40*zeta^4 - 20*zeta^3 + 20*zeta^2 + 40*zeta - 40)*q^177
+ (10*zeta^7 + 20*zeta^4 - 10*zeta^3 + 10*zeta^2 + 20*zeta - 10)*q^179 + 
(-17*zeta^7 - 34*zeta^4 + 17*zeta^3 - 17*zeta^2 - 34*zeta + 17)*q^181 + 
(6*zeta^7 - 12*zeta^5 + 12*zeta^4 - 6*zeta^3 + 6*zeta^2 + 12*zeta - 12)*q^182 + 
(-14*zeta^7 + 28*zeta^5 - 28*zeta^4 + 14*zeta^3 - 14*zeta^2 - 28*zeta + 
28)*q^183 + (12*zeta^7 + 24*zeta^4 - 12*zeta^3 + 12*zeta^2 + 24*zeta - 12)*q^186
+ (-4*zeta^7 + 8*zeta^5 - 8*zeta^4 + 4*zeta^3 - 4*zeta^2 - 8*zeta + 8)*q^187 + 
(-4*zeta^7 + 8*zeta^5 - 8*zeta^4 + 4*zeta^3 - 4*zeta^2 - 8*zeta + 8)*q^188 + 
(6*zeta^7 + 12*zeta^4 - 6*zeta^3 + 6*zeta^2 + 12*zeta - 6)*q^189 + (-22*zeta^7 -
44*zeta^4 + 22*zeta^3 - 22*zeta^2 - 44*zeta + 22)*q^191 + (16*zeta^7 - 32*zeta^5
+ 32*zeta^4 - 16*zeta^3 + 16*zeta^2 + 32*zeta - 32)*q^192 + (-11*zeta^7 + 
22*zeta^5 - 22*zeta^4 + 11*zeta^3 - 11*zeta^2 - 22*zeta + 22)*q^193 + 
(-34*zeta^7 - 68*zeta^4 + 34*zeta^3 - 34*zeta^2 - 68*zeta + 34)*q^194 + 
(-4*zeta^7 - 8*zeta^4 + 4*zeta^3 - 4*zeta^2 - 8*zeta + 4)*q^196 + (18*zeta^7 - 
36*zeta^5 + 36*zeta^4 - 18*zeta^3 + 18*zeta^2 + 36*zeta - 36)*q^197 + (8*zeta^7 
- 16*zeta^5 + 16*zeta^4 - 8*zeta^3 + 8*zeta^2 + 16*zeta - 16)*q^198 + (5*zeta^7 
+ 10*zeta^4 - 5*zeta^3 + 5*zeta^2 + 10*zeta - 5)*q^199 + (6*zeta^7 + 12*zeta^4 -
6*zeta^3 + 6*zeta^2 + 12*zeta - 6)*q^201 + (-24*zeta^7 + 48*zeta^5 - 48*zeta^4 +
24*zeta^3 - 24*zeta^2 - 48*zeta + 48)*q^202 + (30*zeta^7 - 60*zeta^5 + 60*zeta^4
- 30*zeta^3 + 30*zeta^2 + 60*zeta - 60)*q^203 + (-8*zeta^7 - 16*zeta^4 + 
8*zeta^3 - 8*zeta^2 - 16*zeta + 8)*q^204 + (8*zeta^7 + 16*zeta^4 - 8*zeta^3 + 
8*zeta^2 + 16*zeta - 8)*q^206 + (12*zeta^7 - 24*zeta^5 + 24*zeta^4 - 12*zeta^3 +
12*zeta^2 + 24*zeta - 24)*q^207 + (4*zeta^7 - 8*zeta^5 + 8*zeta^4 - 4*zeta^3 + 
4*zeta^2 + 8*zeta - 8)*q^208 + (10*zeta^7 + 20*zeta^4 - 10*zeta^3 + 10*zeta^2 + 
20*zeta - 10)*q^209 + (13*zeta^7 + 26*zeta^4 - 13*zeta^3 + 13*zeta^2 + 26*zeta -
13)*q^211 + (8*zeta^7 - 16*zeta^5 + 16*zeta^4 - 8*zeta^3 + 8*zeta^2 + 16*zeta - 
16)*q^212 + (16*zeta^7 - 32*zeta^5 + 32*zeta^4 - 16*zeta^3 + 16*zeta^2 + 32*zeta
- 32)*q^213 + (-24*zeta^7 - 48*zeta^4 + 24*zeta^3 - 24*zeta^2 - 48*zeta + 
24)*q^214 + (-9*zeta^7 + 18*zeta^5 - 18*zeta^4 + 9*zeta^3 - 9*zeta^2 - 18*zeta +
18)*q^217 + (-10*zeta^7 + 20*zeta^5 - 20*zeta^4 + 10*zeta^3 - 10*zeta^2 - 
20*zeta + 20)*q^218 + (28*zeta^7 + 56*zeta^4 - 28*zeta^3 + 28*zeta^2 + 56*zeta -
28)*q^219 + (-2*zeta^7 - 4*zeta^4 + 2*zeta^3 - 2*zeta^2 - 4*zeta + 2)*q^221 + 
(-8*zeta^7 + 16*zeta^5 - 16*zeta^4 + 8*zeta^3 - 8*zeta^2 - 16*zeta + 16)*q^222 +
(19*zeta^7 - 38*zeta^5 + 38*zeta^4 - 19*zeta^3 + 19*zeta^2 + 38*zeta - 38)*q^223
+ (-24*zeta^7 - 48*zeta^4 + 24*zeta^3 - 24*zeta^2 - 48*zeta + 24)*q^224 + 
(8*zeta^7 + 16*zeta^4 - 8*zeta^3 + 8*zeta^2 + 16*zeta - 8)*q^226 + (8*zeta^7 - 
16*zeta^5 + 16*zeta^4 - 8*zeta^3 + 8*zeta^2 + 16*zeta - 16)*q^227 + (20*zeta^7 -
40*zeta^5 + 40*zeta^4 - 20*zeta^3 + 20*zeta^2 + 40*zeta - 40)*q^228 + (15*zeta^7
+ 30*zeta^4 - 15*zeta^3 + 15*zeta^2 + 30*zeta - 15)*q^229 + (12*zeta^7 + 
24*zeta^4 - 12*zeta^3 + 12*zeta^2 + 24*zeta - 12)*q^231 + (24*zeta^7 - 48*zeta^5
+ 48*zeta^4 - 24*zeta^3 + 24*zeta^2 + 48*zeta - 48)*q^233 + (4*zeta^7 + 8*zeta^4
- 4*zeta^3 + 4*zeta^2 + 8*zeta - 4)*q^234 + (20*zeta^7 + 40*zeta^4 - 20*zeta^3 +
20*zeta^2 + 40*zeta - 20)*q^236 + (12*zeta^7 - 24*zeta^5 + 24*zeta^4 - 12*zeta^3
+ 12*zeta^2 + 24*zeta - 24)*q^238 + (-20*zeta^7 - 40*zeta^4 + 20*zeta^3 - 
20*zeta^2 - 40*zeta + 20)*q^239 + (23*zeta^7 + 46*zeta^4 - 23*zeta^3 + 23*zeta^2
+ 46*zeta - 23)*q^241 + (14*zeta^7 - 28*zeta^5 + 28*zeta^4 - 14*zeta^3 + 
14*zeta^2 + 28*zeta - 28)*q^242 + (-2*zeta^7 + 4*zeta^5 - 4*zeta^4 + 2*zeta^3 - 
2*zeta^2 - 4*zeta + 4)*q^243 + (-14*zeta^7 - 28*zeta^4 + 14*zeta^3 - 14*zeta^2 -
28*zeta + 14)*q^244 + (32*zeta^7 + 64*zeta^4 - 32*zeta^3 + 32*zeta^2 + 64*zeta -
32)*q^246 + (5*zeta^7 - 10*zeta^5 + 10*zeta^4 - 5*zeta^3 + 5*zeta^2 + 10*zeta - 
10)*q^247 + (-12*zeta^7 - 24*zeta^4 + 12*zeta^3 - 12*zeta^2 - 24*zeta + 
12)*q^249 + (-12*zeta^7 - 24*zeta^4 + 12*zeta^3 - 12*zeta^2 - 24*zeta + 
12)*q^251 + (-12*zeta^7 + 24*zeta^5 - 24*zeta^4 + 12*zeta^3 - 12*zeta^2 - 
24*zeta + 24)*q^252 + (-12*zeta^7 + 24*zeta^5 - 24*zeta^4 + 12*zeta^3 - 
12*zeta^2 - 24*zeta + 24)*q^253 + (16*zeta^7 + 32*zeta^4 - 16*zeta^3 + 16*zeta^2
+ 32*zeta - 16)*q^254 + (-16*zeta^7 - 32*zeta^4 + 16*zeta^3 - 16*zeta^2 - 
32*zeta + 16)*q^256 + (-12*zeta^7 + 24*zeta^5 - 24*zeta^4 + 12*zeta^3 - 
12*zeta^2 - 24*zeta + 24)*q^257 + (-4*zeta^7 + 8*zeta^5 - 8*zeta^4 + 4*zeta^3 - 
4*zeta^2 - 8*zeta + 8)*q^258 + (6*zeta^7 + 12*zeta^4 - 6*zeta^3 + 6*zeta^2 + 
12*zeta - 6)*q^259 + (20*zeta^7 + 40*zeta^4 - 20*zeta^3 + 20*zeta^2 + 40*zeta - 
20)*q^261 + (-24*zeta^7 + 48*zeta^5 - 48*zeta^4 + 24*zeta^3 - 24*zeta^2 - 
48*zeta + 48)*q^262 + (-16*zeta^7 + 32*zeta^5 - 32*zeta^4 + 16*zeta^3 - 
16*zeta^2 - 32*zeta + 32)*q^263 + (-30*zeta^7 - 60*zeta^4 + 30*zeta^3 - 
30*zeta^2 - 60*zeta + 30)*q^266 + (6*zeta^7 - 12*zeta^5 + 12*zeta^4 - 6*zeta^3 +
6*zeta^2 + 12*zeta - 12)*q^268 + (10*zeta^7 + 20*zeta^4 - 10*zeta^3 + 10*zeta^2 
+ 20*zeta - 10)*q^269 + (8*zeta^7 + 16*zeta^4 - 8*zeta^3 + 8*zeta^2 + 16*zeta - 
8)*q^271 + (8*zeta^7 - 16*zeta^5 + 16*zeta^4 - 8*zeta^3 + 8*zeta^2 + 16*zeta - 
16)*q^272 + (6*zeta^7 - 12*zeta^5 + 12*zeta^4 - 6*zeta^3 + 6*zeta^2 + 12*zeta - 
12)*q^273 + (36*zeta^7 + 72*zeta^4 - 36*zeta^3 + 36*zeta^2 + 72*zeta - 36)*q^274
+ (-24*zeta^7 - 48*zeta^4 + 24*zeta^3 - 24*zeta^2 - 48*zeta + 24)*q^276 + 
(3*zeta^7 - 6*zeta^5 + 6*zeta^4 - 3*zeta^3 + 3*zeta^2 + 6*zeta - 6)*q^277 + 
(-40*zeta^7 + 80*zeta^5 - 80*zeta^4 + 40*zeta^3 - 40*zeta^2 - 80*zeta + 
80)*q^278 + (-6*zeta^7 - 12*zeta^4 + 6*zeta^3 - 6*zeta^2 - 12*zeta + 6)*q^279 + 
(18*zeta^7 + 36*zeta^4 - 18*zeta^3 + 18*zeta^2 + 36*zeta - 18)*q^281 + 
(-8*zeta^7 + 16*zeta^5 - 16*zeta^4 + 8*zeta^3 - 8*zeta^2 - 16*zeta + 16)*q^282 +
(9*zeta^7 - 18*zeta^5 + 18*zeta^4 - 9*zeta^3 + 9*zeta^2 + 18*zeta - 18)*q^283 + 
(16*zeta^7 + 32*zeta^4 - 16*zeta^3 + 16*zeta^2 + 32*zeta - 16)*q^284 + 
(-4*zeta^7 - 8*zeta^4 + 4*zeta^3 - 4*zeta^2 - 8*zeta + 4)*q^286 + (-24*zeta^7 + 
48*zeta^5 - 48*zeta^4 + 24*zeta^3 - 24*zeta^2 - 48*zeta + 48)*q^287 + 
(-16*zeta^7 + 32*zeta^5 - 32*zeta^4 + 16*zeta^3 - 16*zeta^2 - 32*zeta + 
32)*q^288 + (13*zeta^7 + 26*zeta^4 - 13*zeta^3 + 13*zeta^2 + 26*zeta - 13)*q^289
+ (-34*zeta^7 - 68*zeta^4 + 34*zeta^3 - 34*zeta^2 - 68*zeta + 34)*q^291 + 
(28*zeta^7 - 56*zeta^5 + 56*zeta^4 - 28*zeta^3 + 28*zeta^2 + 56*zeta - 56)*q^292
+ (-6*zeta^7 + 12*zeta^5 - 12*zeta^4 + 6*zeta^3 - 6*zeta^2 - 12*zeta + 12)*q^293
+ (-8*zeta^7 - 16*zeta^4 + 8*zeta^3 - 8*zeta^2 - 16*zeta + 8)*q^294 + (-4*zeta^7
+ 8*zeta^5 - 8*zeta^4 + 4*zeta^3 - 4*zeta^2 - 8*zeta + 8)*q^297 + (-20*zeta^7 + 
40*zeta^5 - 40*zeta^4 + 20*zeta^3 - 20*zeta^2 - 40*zeta + 40)*q^298 + (-6*zeta^7
- 12*zeta^4 + 6*zeta^3 - 6*zeta^2 - 12*zeta + 6)*q^299 + (3*zeta^7 + 6*zeta^4 - 
3*zeta^3 + 3*zeta^2 + 6*zeta - 3)*q^301 + (-14*zeta^7 + 28*zeta^5 - 28*zeta^4 + 
14*zeta^3 - 14*zeta^2 - 28*zeta + 28)*q^302 + (-24*zeta^7 + 48*zeta^5 - 
48*zeta^4 + 24*zeta^3 - 24*zeta^2 - 48*zeta + 48)*q^303 + (-20*zeta^7 - 
40*zeta^4 + 20*zeta^3 - 20*zeta^2 - 40*zeta + 20)*q^304 + (8*zeta^7 + 16*zeta^4 
- 8*zeta^3 + 8*zeta^2 + 16*zeta - 8)*q^306 + (-7*zeta^7 + 14*zeta^5 - 14*zeta^4 
+ 7*zeta^3 - 7*zeta^2 - 14*zeta + 14)*q^307 + (12*zeta^7 - 24*zeta^5 + 24*zeta^4
- 12*zeta^3 + 12*zeta^2 + 24*zeta - 24)*q^308 + (8*zeta^7 + 16*zeta^4 - 8*zeta^3
+ 8*zeta^2 + 16*zeta - 8)*q^309 + (18*zeta^7 + 36*zeta^4 - 18*zeta^3 + 18*zeta^2
+ 36*zeta - 18)*q^311 + (-11*zeta^7 + 22*zeta^5 - 22*zeta^4 + 11*zeta^3 - 
11*zeta^2 - 22*zeta + 22)*q^313 + (26*zeta^7 + 52*zeta^4 - 26*zeta^3 + 26*zeta^2
+ 52*zeta - 26)*q^314 + (8*zeta^7 - 16*zeta^5 + 16*zeta^4 - 8*zeta^3 + 8*zeta^2 
+ 16*zeta - 16)*q^317 + (16*zeta^7 - 32*zeta^5 + 32*zeta^4 - 16*zeta^3 + 
16*zeta^2 + 32*zeta - 32)*q^318 + (-20*zeta^7 - 40*zeta^4 + 20*zeta^3 - 
20*zeta^2 - 40*zeta + 20)*q^319 + (-24*zeta^7 - 48*zeta^4 + 24*zeta^3 - 
24*zeta^2 - 48*zeta + 24)*q^321 + (36*zeta^7 - 72*zeta^5 + 72*zeta^4 - 36*zeta^3
+ 36*zeta^2 + 72*zeta - 72)*q^322 + (10*zeta^7 - 20*zeta^5 + 20*zeta^4 - 
10*zeta^3 + 10*zeta^2 + 20*zeta - 20)*q^323 + (4*zeta^7 + 8*zeta^4 - 4*zeta^3 + 
4*zeta^2 + 8*zeta - 4)*q^324 + (-22*zeta^7 - 44*zeta^4 + 22*zeta^3 - 22*zeta^2 -
44*zeta + 22)*q^326 + (-10*zeta^7 + 20*zeta^5 - 20*zeta^4 + 10*zeta^3 - 
10*zeta^2 - 20*zeta + 20)*q^327 + (6*zeta^7 + 12*zeta^4 - 6*zeta^3 + 6*zeta^2 + 
12*zeta - 6)*q^329 + (-12*zeta^7 - 24*zeta^4 + 12*zeta^3 - 12*zeta^2 - 24*zeta +
12)*q^331 + (-12*zeta^7 + 24*zeta^5 - 24*zeta^4 + 12*zeta^3 - 12*zeta^2 - 
24*zeta + 24)*q^332 + (4*zeta^7 - 8*zeta^5 + 8*zeta^4 - 4*zeta^3 + 4*zeta^2 + 
8*zeta - 8)*q^333 + (-24*zeta^7 - 48*zeta^4 + 24*zeta^3 - 24*zeta^2 - 48*zeta + 
24)*q^334 + (-24*zeta^7 - 48*zeta^4 + 24*zeta^3 - 24*zeta^2 - 48*zeta + 
24)*q^336 + (23*zeta^7 - 46*zeta^5 + 46*zeta^4 - 23*zeta^3 + 23*zeta^2 + 46*zeta
- 46)*q^337 + (24*zeta^7 - 48*zeta^5 + 48*zeta^4 - 24*zeta^3 + 24*zeta^2 + 
48*zeta - 48)*q^338 + (8*zeta^7 + 16*zeta^4 - 8*zeta^3 + 8*zeta^2 + 16*zeta - 
8)*q^339 + (6*zeta^7 + 12*zeta^4 - 6*zeta^3 + 6*zeta^2 + 12*zeta - 6)*q^341 + 
(-20*zeta^7 + 40*zeta^5 - 40*zeta^4 + 20*zeta^3 - 20*zeta^2 - 40*zeta + 
40)*q^342 + (-15*zeta^7 + 30*zeta^5 - 30*zeta^4 + 15*zeta^3 - 15*zeta^2 - 
30*zeta + 30)*q^343 + (-12*zeta^7 - 24*zeta^4 + 12*zeta^3 - 12*zeta^2 - 24*zeta 
+ 12)*q^346 + (-2*zeta^7 + 4*zeta^5 - 4*zeta^4 + 2*zeta^3 - 2*zeta^2 - 4*zeta + 
4)*q^347 + (-40*zeta^7 + 80*zeta^5 - 80*zeta^4 + 40*zeta^3 - 40*zeta^2 - 80*zeta
+ 80)*q^348 + (-10*zeta^7 - 20*zeta^4 + 10*zeta^3 - 10*zeta^2 - 20*zeta + 
10)*q^349 + (-2*zeta^7 - 4*zeta^4 + 2*zeta^3 - 2*zeta^2 - 4*zeta + 2)*q^351 + 
(16*zeta^7 - 32*zeta^5 + 32*zeta^4 - 16*zeta^3 + 16*zeta^2 + 32*zeta - 32)*q^352
+ (-6*zeta^7 + 12*zeta^5 - 12*zeta^4 + 6*zeta^3 - 6*zeta^2 - 12*zeta + 12)*q^353
+ (40*zeta^7 + 80*zeta^4 - 40*zeta^3 + 40*zeta^2 + 80*zeta - 40)*q^354 + 
(12*zeta^7 - 24*zeta^5 + 24*zeta^4 - 12*zeta^3 + 12*zeta^2 + 24*zeta - 24)*q^357
+ (20*zeta^7 - 40*zeta^5 + 40*zeta^4 - 20*zeta^3 + 20*zeta^2 + 40*zeta - 
40)*q^358 + (-6*zeta^7 - 12*zeta^4 + 6*zeta^3 - 6*zeta^2 - 12*zeta + 6)*q^361 + 
(-34*zeta^7 + 68*zeta^5 - 68*zeta^4 + 34*zeta^3 - 34*zeta^2 - 68*zeta + 
68)*q^362 + (14*zeta^7 - 28*zeta^5 + 28*zeta^4 - 14*zeta^3 + 14*zeta^2 + 28*zeta
- 28)*q^363 + (6*zeta^7 + 12*zeta^4 - 6*zeta^3 + 6*zeta^2 + 12*zeta - 6)*q^364 +
(-28*zeta^7 - 56*zeta^4 + 28*zeta^3 - 28*zeta^2 - 56*zeta + 28)*q^366 + 
(-27*zeta^7 + 54*zeta^5 - 54*zeta^4 + 27*zeta^3 - 27*zeta^2 - 54*zeta + 
54)*q^367 + (24*zeta^7 - 48*zeta^5 + 48*zeta^4 - 24*zeta^3 + 24*zeta^2 + 48*zeta
- 48)*q^368 + (-16*zeta^7 - 32*zeta^4 + 16*zeta^3 - 16*zeta^2 - 32*zeta + 
16)*q^369 + (-12*zeta^7 - 24*zeta^4 + 12*zeta^3 - 12*zeta^2 - 24*zeta + 
12)*q^371 + (12*zeta^7 - 24*zeta^5 + 24*zeta^4 - 12*zeta^3 + 12*zeta^2 + 24*zeta
- 24)*q^372 + (29*zeta^7 - 58*zeta^5 + 58*zeta^4 - 29*zeta^3 + 29*zeta^2 + 
58*zeta - 58)*q^373 + (-8*zeta^7 - 16*zeta^4 + 8*zeta^3 - 8*zeta^2 - 16*zeta + 
8)*q^374 + (-10*zeta^7 + 20*zeta^5 - 20*zeta^4 + 10*zeta^3 - 10*zeta^2 - 20*zeta
+ 20)*q^377 + (12*zeta^7 - 24*zeta^5 + 24*zeta^4 - 12*zeta^3 + 12*zeta^2 + 
24*zeta - 24)*q^378 + (-25*zeta^7 - 50*zeta^4 + 25*zeta^3 - 25*zeta^2 - 50*zeta 
+ 25)*q^379 + (16*zeta^7 + 32*zeta^4 - 16*zeta^3 + 16*zeta^2 + 32*zeta - 
16)*q^381 + (-44*zeta^7 + 88*zeta^5 - 88*zeta^4 + 44*zeta^3 - 44*zeta^2 - 
88*zeta + 88)*q^382 + (-36*zeta^7 + 72*zeta^5 - 72*zeta^4 + 36*zeta^3 - 
36*zeta^2 - 72*zeta + 72)*q^383 + (-22*zeta^7 - 44*zeta^4 + 22*zeta^3 - 
22*zeta^2 - 44*zeta + 22)*q^386 + (2*zeta^7 - 4*zeta^5 + 4*zeta^4 - 2*zeta^3 + 
2*zeta^2 + 4*zeta - 4)*q^387 + (-34*zeta^7 + 68*zeta^5 - 68*zeta^4 + 34*zeta^3 -
34*zeta^2 - 68*zeta + 68)*q^388 + (-12*zeta^7 - 24*zeta^4 + 12*zeta^3 - 
12*zeta^2 - 24*zeta + 12)*q^391 + (-24*zeta^7 + 48*zeta^5 - 48*zeta^4 + 
24*zeta^3 - 24*zeta^2 - 48*zeta + 48)*q^393 + (36*zeta^7 + 72*zeta^4 - 36*zeta^3
+ 36*zeta^2 + 72*zeta - 36)*q^394 + (8*zeta^7 + 16*zeta^4 - 8*zeta^3 + 8*zeta^2 
+ 16*zeta - 8)*q^396 + (-7*zeta^7 + 14*zeta^5 - 14*zeta^4 + 7*zeta^3 - 7*zeta^2 
- 14*zeta + 14)*q^397 + (10*zeta^7 - 20*zeta^5 + 20*zeta^4 - 10*zeta^3 + 
10*zeta^2 + 20*zeta - 20)*q^398 + (-30*zeta^7 - 60*zeta^4 + 30*zeta^3 - 
30*zeta^2 - 60*zeta + 30)*q^399 + (-12*zeta^7 - 24*zeta^4 + 12*zeta^3 - 
12*zeta^2 - 24*zeta + 12)*q^401 + (12*zeta^7 - 24*zeta^5 + 24*zeta^4 - 12*zeta^3
+ 12*zeta^2 + 24*zeta - 24)*q^402 + (3*zeta^7 - 6*zeta^5 + 6*zeta^4 - 3*zeta^3 +
3*zeta^2 + 6*zeta - 6)*q^403 + (-24*zeta^7 - 48*zeta^4 + 24*zeta^3 - 24*zeta^2 -
48*zeta + 24)*q^404 + (60*zeta^7 + 120*zeta^4 - 60*zeta^3 + 60*zeta^2 + 120*zeta
- 60)*q^406 + (-4*zeta^7 + 8*zeta^5 - 8*zeta^4 + 4*zeta^3 - 4*zeta^2 - 8*zeta + 
8)*q^407 + (-5*zeta^7 - 10*zeta^4 + 5*zeta^3 - 5*zeta^2 - 10*zeta + 5)*q^409 + 
(36*zeta^7 + 72*zeta^4 - 36*zeta^3 + 36*zeta^2 + 72*zeta - 36)*q^411 + (8*zeta^7
- 16*zeta^5 + 16*zeta^4 - 8*zeta^3 + 8*zeta^2 + 16*zeta - 16)*q^412 + 
(-30*zeta^7 + 60*zeta^5 - 60*zeta^4 + 30*zeta^3 - 30*zeta^2 - 60*zeta + 
60)*q^413 + (24*zeta^7 + 48*zeta^4 - 24*zeta^3 + 24*zeta^2 + 48*zeta - 24)*q^414
+ (8*zeta^7 + 16*zeta^4 - 8*zeta^3 + 8*zeta^2 + 16*zeta - 8)*q^416 + (-40*zeta^7
+ 80*zeta^5 - 80*zeta^4 + 40*zeta^3 - 40*zeta^2 - 80*zeta + 80)*q^417 + 
(20*zeta^7 - 40*zeta^5 + 40*zeta^4 - 20*zeta^3 + 20*zeta^2 + 40*zeta - 40)*q^418
+ (20*zeta^7 + 40*zeta^4 - 20*zeta^3 + 20*zeta^2 + 40*zeta - 20)*q^419 + 
(-22*zeta^7 - 44*zeta^4 + 22*zeta^3 - 22*zeta^2 - 44*zeta + 22)*q^421 + 
(26*zeta^7 - 52*zeta^5 + 52*zeta^4 - 26*zeta^3 + 26*zeta^2 + 52*zeta - 52)*q^422
+ (4*zeta^7 - 8*zeta^5 + 8*zeta^4 - 4*zeta^3 + 4*zeta^2 + 8*zeta - 8)*q^423 + 
(32*zeta^7 + 64*zeta^4 - 32*zeta^3 + 32*zeta^2 + 64*zeta - 32)*q^426 + 
(21*zeta^7 - 42*zeta^5 + 42*zeta^4 - 21*zeta^3 + 21*zeta^2 + 42*zeta - 42)*q^427
+ (-24*zeta^7 + 48*zeta^5 - 48*zeta^4 + 24*zeta^3 - 24*zeta^2 - 48*zeta + 
48)*q^428 + (-4*zeta^7 - 8*zeta^4 + 4*zeta^3 - 4*zeta^2 - 8*zeta + 4)*q^429 + 
(18*zeta^7 + 36*zeta^4 - 18*zeta^3 + 18*zeta^2 + 36*zeta - 18)*q^431 + (8*zeta^7
- 16*zeta^5 + 16*zeta^4 - 8*zeta^3 + 8*zeta^2 + 16*zeta - 16)*q^432 + (29*zeta^7
- 58*zeta^5 + 58*zeta^4 - 29*zeta^3 + 29*zeta^2 + 58*zeta - 58)*q^433 + 
(-18*zeta^7 - 36*zeta^4 + 18*zeta^3 - 18*zeta^2 - 36*zeta + 18)*q^434 + 
(-10*zeta^7 - 20*zeta^4 + 10*zeta^3 - 10*zeta^2 - 20*zeta + 10)*q^436 + 
(30*zeta^7 - 60*zeta^5 + 60*zeta^4 - 30*zeta^3 + 30*zeta^2 + 60*zeta - 60)*q^437
+ (56*zeta^7 - 112*zeta^5 + 112*zeta^4 - 56*zeta^3 + 56*zeta^2 + 112*zeta - 
112)*q^438 + (35*zeta^7 + 70*zeta^4 - 35*zeta^3 + 35*zeta^2 + 70*zeta - 
35)*q^439 + (4*zeta^7 + 8*zeta^4 - 4*zeta^3 + 4*zeta^2 + 8*zeta - 4)*q^441 + 
(-4*zeta^7 + 8*zeta^5 - 8*zeta^4 + 4*zeta^3 - 4*zeta^2 - 8*zeta + 8)*q^442 + 
(24*zeta^7 - 48*zeta^5 + 48*zeta^4 - 24*zeta^3 + 24*zeta^2 + 48*zeta - 48)*q^443
+ (-8*zeta^7 - 16*zeta^4 + 8*zeta^3 - 8*zeta^2 - 16*zeta + 8)*q^444 + (38*zeta^7
+ 76*zeta^4 - 38*zeta^3 + 38*zeta^2 + 76*zeta - 38)*q^446 + (-20*zeta^7 + 
40*zeta^5 - 40*zeta^4 + 20*zeta^3 - 20*zeta^2 - 40*zeta + 40)*q^447 + 
(-24*zeta^7 + 48*zeta^5 - 48*zeta^4 + 24*zeta^3 - 24*zeta^2 - 48*zeta + 
48)*q^448 + (-20*zeta^7 - 40*zeta^4 + 20*zeta^3 - 20*zeta^2 - 40*zeta + 
20)*q^449 + (16*zeta^7 + 32*zeta^4 - 16*zeta^3 + 16*zeta^2 + 32*zeta - 16)*q^451
+ (8*zeta^7 - 16*zeta^5 + 16*zeta^4 - 8*zeta^3 + 8*zeta^2 + 16*zeta - 16)*q^452 
+ (-14*zeta^7 + 28*zeta^5 - 28*zeta^4 + 14*zeta^3 - 14*zeta^2 - 28*zeta + 
28)*q^453 + (16*zeta^7 + 32*zeta^4 - 16*zeta^3 + 16*zeta^2 + 32*zeta - 16)*q^454
+ (-22*zeta^7 + 44*zeta^5 - 44*zeta^4 + 22*zeta^3 - 22*zeta^2 - 44*zeta + 
44)*q^457 + (30*zeta^7 - 60*zeta^5 + 60*zeta^4 - 30*zeta^3 + 30*zeta^2 + 60*zeta
- 60)*q^458 + (-4*zeta^7 - 8*zeta^4 + 4*zeta^3 - 4*zeta^2 - 8*zeta + 4)*q^459 + 
(-12*zeta^7 - 24*zeta^4 + 12*zeta^3 - 12*zeta^2 - 24*zeta + 12)*q^461 + 
(24*zeta^7 - 48*zeta^5 + 48*zeta^4 - 24*zeta^3 + 24*zeta^2 + 48*zeta - 48)*q^462
+ (24*zeta^7 - 48*zeta^5 + 48*zeta^4 - 24*zeta^3 + 24*zeta^2 + 48*zeta - 
48)*q^463 + (40*zeta^7 + 80*zeta^4 - 40*zeta^3 + 40*zeta^2 + 80*zeta - 40)*q^464
+ (48*zeta^7 + 96*zeta^4 - 48*zeta^3 + 48*zeta^2 + 96*zeta - 48)*q^466 + 
(38*zeta^7 - 76*zeta^5 + 76*zeta^4 - 38*zeta^3 + 38*zeta^2 + 76*zeta - 76)*q^467
+ (4*zeta^7 - 8*zeta^5 + 8*zeta^4 - 4*zeta^3 + 4*zeta^2 + 8*zeta - 8)*q^468 + 
(-9*zeta^7 - 18*zeta^4 + 9*zeta^3 - 9*zeta^2 - 18*zeta + 9)*q^469 + (26*zeta^7 +
52*zeta^4 - 26*zeta^3 + 26*zeta^2 + 52*zeta - 26)*q^471 + (-2*zeta^7 + 4*zeta^5 
- 4*zeta^4 + 2*zeta^3 - 2*zeta^2 - 4*zeta + 4)*q^473 + (12*zeta^7 + 24*zeta^4 - 
12*zeta^3 + 12*zeta^2 + 24*zeta - 12)*q^476 + (-8*zeta^7 + 16*zeta^5 - 16*zeta^4
+ 8*zeta^3 - 8*zeta^2 - 16*zeta + 16)*q^477 + (-40*zeta^7 + 80*zeta^5 - 
80*zeta^4 + 40*zeta^3 - 40*zeta^2 - 80*zeta + 80)*q^478 + (-30*zeta^7 - 
60*zeta^4 + 30*zeta^3 - 30*zeta^2 - 60*zeta + 30)*q^479 + (-2*zeta^7 - 4*zeta^4 
+ 2*zeta^3 - 2*zeta^2 - 4*zeta + 2)*q^481 + (46*zeta^7 - 92*zeta^5 + 92*zeta^4 -
46*zeta^3 + 46*zeta^2 + 92*zeta - 92)*q^482 + (36*zeta^7 - 72*zeta^5 + 72*zeta^4
- 36*zeta^3 + 36*zeta^2 + 72*zeta - 72)*q^483 + (14*zeta^7 + 28*zeta^4 - 
14*zeta^3 + 14*zeta^2 + 28*zeta - 14)*q^484 + (-4*zeta^7 - 8*zeta^4 + 4*zeta^3 -
4*zeta^2 - 8*zeta + 4)*q^486 + (13*zeta^7 - 26*zeta^5 + 26*zeta^4 - 13*zeta^3 + 
13*zeta^2 + 26*zeta - 26)*q^487 + (-22*zeta^7 - 44*zeta^4 + 22*zeta^3 - 
22*zeta^2 - 44*zeta + 22)*q^489 + (8*zeta^7 + 16*zeta^4 - 8*zeta^3 + 8*zeta^2 + 
16*zeta - 8)*q^491 + (32*zeta^7 - 64*zeta^5 + 64*zeta^4 - 32*zeta^3 + 32*zeta^2 
+ 64*zeta - 64)*q^492 + (-20*zeta^7 + 40*zeta^5 - 40*zeta^4 + 20*zeta^3 - 
20*zeta^2 - 40*zeta + 40)*q^493 + (10*zeta^7 + 20*zeta^4 - 10*zeta^3 + 10*zeta^2
+ 20*zeta - 10)*q^494 + (-12*zeta^7 - 24*zeta^4 + 12*zeta^3 - 12*zeta^2 - 
24*zeta + 12)*q^496 + (-24*zeta^7 + 48*zeta^5 - 48*zeta^4 + 24*zeta^3 - 
24*zeta^2 - 48*zeta + 48)*q^497 + (-24*zeta^7 + 48*zeta^5 - 48*zeta^4 + 
24*zeta^3 - 24*zeta^2 - 48*zeta + 48)*q^498 + (5*zeta^7 + 10*zeta^4 - 5*zeta^3 +
5*zeta^2 + 10*zeta - 5)*q^499 + (-24*zeta^7 - 48*zeta^4 + 24*zeta^3 - 24*zeta^2 
- 48*zeta + 24)*q^501 + (-24*zeta^7 + 48*zeta^5 - 48*zeta^4 + 24*zeta^3 - 
24*zeta^2 - 48*zeta + 48)*q^502 + (-16*zeta^7 + 32*zeta^5 - 32*zeta^4 + 
16*zeta^3 - 16*zeta^2 - 32*zeta + 32)*q^503 + (-24*zeta^7 - 48*zeta^4 + 
24*zeta^3 - 24*zeta^2 - 48*zeta + 24)*q^506 + (24*zeta^7 - 48*zeta^5 + 48*zeta^4
- 24*zeta^3 + 24*zeta^2 + 48*zeta - 48)*q^507 + (16*zeta^7 - 32*zeta^5 + 
32*zeta^4 - 16*zeta^3 + 16*zeta^2 + 32*zeta - 32)*q^508 + (10*zeta^7 + 20*zeta^4
- 10*zeta^3 + 10*zeta^2 + 20*zeta - 10)*q^509 + (-42*zeta^7 - 84*zeta^4 + 
42*zeta^3 - 42*zeta^2 - 84*zeta + 42)*q^511 + (-32*zeta^7 + 64*zeta^5 - 
64*zeta^4 + 32*zeta^3 - 32*zeta^2 - 64*zeta + 64)*q^512 + (10*zeta^7 - 20*zeta^5
+ 20*zeta^4 - 10*zeta^3 + 10*zeta^2 + 20*zeta - 20)*q^513 + (-24*zeta^7 - 
48*zeta^4 + 24*zeta^3 - 24*zeta^2 - 48*zeta + 24)*q^514 + (-4*zeta^7 - 8*zeta^4 
+ 4*zeta^3 - 4*zeta^2 - 8*zeta + 4)*q^516 + (-4*zeta^7 + 8*zeta^5 - 8*zeta^4 + 
4*zeta^3 - 4*zeta^2 - 8*zeta + 8)*q^517 + (12*zeta^7 - 24*zeta^5 + 24*zeta^4 - 
12*zeta^3 + 12*zeta^2 + 24*zeta - 24)*q^518 + (-12*zeta^7 - 24*zeta^4 + 
12*zeta^3 - 12*zeta^2 - 24*zeta + 12)*q^519 + (-22*zeta^7 - 44*zeta^4 + 
22*zeta^3 - 22*zeta^2 - 44*zeta + 22)*q^521 + (40*zeta^7 - 80*zeta^5 + 80*zeta^4
- 40*zeta^3 + 40*zeta^2 + 80*zeta - 80)*q^522 + (-31*zeta^7 + 62*zeta^5 - 
62*zeta^4 + 31*zeta^3 - 31*zeta^2 - 62*zeta + 62)*q^523 + (-24*zeta^7 - 
48*zeta^4 + 24*zeta^3 - 24*zeta^2 - 48*zeta + 24)*q^524 + (-32*zeta^7 - 
64*zeta^4 + 32*zeta^3 - 32*zeta^2 - 64*zeta + 32)*q^526 + (6*zeta^7 - 12*zeta^5 
+ 12*zeta^4 - 6*zeta^3 + 6*zeta^2 + 12*zeta - 12)*q^527 + (16*zeta^7 - 32*zeta^5
+ 32*zeta^4 - 16*zeta^3 + 16*zeta^2 + 32*zeta - 32)*q^528 + (-13*zeta^7 - 
26*zeta^4 + 13*zeta^3 - 13*zeta^2 - 26*zeta + 13)*q^529 + (-20*zeta^7 - 
40*zeta^4 + 20*zeta^3 - 20*zeta^2 - 40*zeta + 20)*q^531 + (-30*zeta^7 + 
60*zeta^5 - 60*zeta^4 + 30*zeta^3 - 30*zeta^2 - 60*zeta + 60)*q^532 + (8*zeta^7 
- 16*zeta^5 + 16*zeta^4 - 8*zeta^3 + 8*zeta^2 + 16*zeta - 16)*q^533 + (20*zeta^7
- 40*zeta^5 + 40*zeta^4 - 20*zeta^3 + 20*zeta^2 + 40*zeta - 40)*q^537 + 
(20*zeta^7 - 40*zeta^5 + 40*zeta^4 - 20*zeta^3 + 20*zeta^2 + 40*zeta - 40)*q^538
+ (-4*zeta^7 - 8*zeta^4 + 4*zeta^3 - 4*zeta^2 - 8*zeta + 4)*q^539 + (3*zeta^7 + 
6*zeta^4 - 3*zeta^3 + 3*zeta^2 + 6*zeta - 3)*q^541 + (16*zeta^7 - 32*zeta^5 + 
32*zeta^4 - 16*zeta^3 + 16*zeta^2 + 32*zeta - 32)*q^542 + (-34*zeta^7 + 
68*zeta^5 - 68*zeta^4 + 34*zeta^3 - 34*zeta^2 - 68*zeta + 68)*q^543 + (16*zeta^7
+ 32*zeta^4 - 16*zeta^3 + 16*zeta^2 + 32*zeta - 16)*q^544 + (12*zeta^7 + 
24*zeta^4 - 12*zeta^3 + 12*zeta^2 + 24*zeta - 12)*q^546 + (8*zeta^7 - 16*zeta^5 
+ 16*zeta^4 - 8*zeta^3 + 8*zeta^2 + 16*zeta - 16)*q^547 + (36*zeta^7 - 72*zeta^5
+ 72*zeta^4 - 36*zeta^3 + 36*zeta^2 + 72*zeta - 72)*q^548 + (14*zeta^7 + 
28*zeta^4 - 14*zeta^3 + 14*zeta^2 + 28*zeta - 14)*q^549 + (50*zeta^7 + 
100*zeta^4 - 50*zeta^3 + 50*zeta^2 + 100*zeta - 50)*q^551 + (6*zeta^7 + 
12*zeta^4 - 6*zeta^3 + 6*zeta^2 + 12*zeta - 6)*q^554 + O(q^555)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_15C3 := Curve(P_Q, [ PolynomialRing(RationalField(), 3) |
x[1]^4 + 1088/405*x[1]^2*x[2]^2 + 64/81*x[1]^2*x[2]*x[3] + 46/81*x[1]^2*x[3]^2 +
28672/54675*x[2]^4 - 2048/10935*x[2]^3*x[3] + 1216/3645*x[2]^2*x[3]^2 - 
256/2187*x[2]*x[3]^3 + 43/2187*x[3]^4
]);
