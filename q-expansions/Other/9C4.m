
    /****************************************************
    Loading this file in magma loads the objects fs_9C4 
    and X_9C4. fs_9C4 is a list of power series which form 
    a basis for the space of cusp forms. X_9C4 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, \[ 1, 0, 0, 1, 0, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_9C4 := [Kq | (-zeta^5 + zeta^3 - zeta + 1)*q + (-3*zeta^3 - 
3)*q^3 + (2*zeta^4 - 2*zeta^3 + 2*zeta^2 - 2)*q^4 + (-zeta^5 - zeta^4 - zeta^3 -
zeta^2 - zeta - 1)*q^7 + (6*zeta^3 + 6)*q^12 + (-5*zeta^4 + 5*zeta^3 - 5*zeta^2 
+ 5)*q^13 + (4*zeta^5 + 4*zeta^4 + 4*zeta^3 + 4*zeta^2 + 4*zeta + 4)*q^16 + 
(7*zeta^5 - 7*zeta^3 + 7*zeta - 7)*q^19 + (3*zeta^3 + 3)*q^21 + (-5*zeta^5 - 
5*zeta^4 - 5*zeta^3 - 5*zeta^2 - 5*zeta - 5)*q^25 + (-2*zeta^5 + 2*zeta^3 - 
2*zeta + 2)*q^28 + (4*zeta^4 - 4*zeta^3 + 4*zeta^2 - 4)*q^31 + (-11*zeta^5 + 
11*zeta^3 - 11*zeta + 11)*q^37 + (-15*zeta^3 - 15)*q^39 + (8*zeta^5 + 8*zeta^4 +
8*zeta^3 + 8*zeta^2 + 8*zeta + 8)*q^43 + (-12*zeta^3 - 12)*q^48 + (6*zeta^4 - 
6*zeta^3 + 6*zeta^2 - 6)*q^49 + (-10*zeta^5 - 10*zeta^4 - 10*zeta^3 - 10*zeta^2 
- 10*zeta - 10)*q^52 + (21*zeta^3 + 21)*q^57 + (-zeta^5 - zeta^4 - zeta^3 - 
zeta^2 - zeta - 1)*q^61 + (8*zeta^5 - 8*zeta^3 + 8*zeta - 8)*q^64 + (-5*zeta^4 +
5*zeta^3 - 5*zeta^2 + 5)*q^67 + (7*zeta^5 - 7*zeta^3 + 7*zeta - 7)*q^73 + 
(15*zeta^3 + 15)*q^75 + (-14*zeta^4 + 14*zeta^3 - 14*zeta^2 + 14)*q^76 + 
(17*zeta^5 + 17*zeta^4 + 17*zeta^3 + 17*zeta^2 + 17*zeta + 17)*q^79 + (-6*zeta^3
- 6)*q^84 + (5*zeta^5 - 5*zeta^3 + 5*zeta - 5)*q^91 + (12*zeta^3 + 12)*q^93 + 
(-19*zeta^5 - 19*zeta^4 - 19*zeta^3 - 19*zeta^2 - 19*zeta - 19)*q^97 + 
(-10*zeta^5 + 10*zeta^3 - 10*zeta + 10)*q^100 + (13*zeta^4 - 13*zeta^3 + 
13*zeta^2 - 13)*q^103 + (-2*zeta^5 + 2*zeta^3 - 2*zeta + 2)*q^109 + (-33*zeta^3 
- 33)*q^111 + (4*zeta^4 - 4*zeta^3 + 4*zeta^2 - 4)*q^112 + (11*zeta^4 - 
11*zeta^3 + 11*zeta^2 - 11)*q^121 + (8*zeta^5 + 8*zeta^4 + 8*zeta^3 + 8*zeta^2 +
8*zeta + 8)*q^124 + (-20*zeta^5 + 20*zeta^3 - 20*zeta + 20)*q^127 + (-24*zeta^3 
- 24)*q^129 + (7*zeta^5 + 7*zeta^4 + 7*zeta^3 + 7*zeta^2 + 7*zeta + 7)*q^133 + 
(-23*zeta^4 + 23*zeta^3 - 23*zeta^2 + 23)*q^139 + (18*zeta^3 + 18)*q^147 + 
(22*zeta^4 - 22*zeta^3 + 22*zeta^2 - 22)*q^148 + (-19*zeta^5 - 19*zeta^4 - 
19*zeta^3 - 19*zeta^2 - 19*zeta - 19)*q^151 + (30*zeta^3 + 30)*q^156 + 
(-14*zeta^4 + 14*zeta^3 - 14*zeta^2 + 14)*q^157 + (25*zeta^5 - 25*zeta^3 + 
25*zeta - 25)*q^163 + (12*zeta^5 + 12*zeta^4 + 12*zeta^3 + 12*zeta^2 + 12*zeta +
12)*q^169 + (16*zeta^5 - 16*zeta^3 + 16*zeta - 16)*q^172 + (-5*zeta^4 + 5*zeta^3
- 5*zeta^2 + 5)*q^175 + (7*zeta^5 - 7*zeta^3 + 7*zeta - 7)*q^181 + (3*zeta^3 + 
3)*q^183 + (24*zeta^3 + 24)*q^192 + (-23*zeta^4 + 23*zeta^3 - 23*zeta^2 + 
23)*q^193 + (12*zeta^5 + 12*zeta^4 + 12*zeta^3 + 12*zeta^2 + 12*zeta + 12)*q^196
+ (-11*zeta^5 + 11*zeta^3 - 11*zeta + 11)*q^199 + (-15*zeta^3 - 15)*q^201 + 
(-20*zeta^5 + 20*zeta^3 - 20*zeta + 20)*q^208 + (13*zeta^4 - 13*zeta^3 + 
13*zeta^2 - 13)*q^211 + (-4*zeta^5 + 4*zeta^3 - 4*zeta + 4)*q^217 + (21*zeta^3 +
21)*q^219 + (-28*zeta^5 - 28*zeta^4 - 28*zeta^3 - 28*zeta^2 - 28*zeta - 
28)*q^223 + (-42*zeta^3 - 42)*q^228 + (22*zeta^4 - 22*zeta^3 + 22*zeta^2 - 
22)*q^229 + (-51*zeta^3 - 51)*q^237 + (17*zeta^5 + 17*zeta^4 + 17*zeta^3 + 
17*zeta^2 + 17*zeta + 17)*q^241 + (-2*zeta^5 + 2*zeta^3 - 2*zeta + 2)*q^244 + 
(35*zeta^4 - 35*zeta^3 + 35*zeta^2 - 35)*q^247 + (-16*zeta^4 + 16*zeta^3 - 
16*zeta^2 + 16)*q^256 + (-11*zeta^5 - 11*zeta^4 - 11*zeta^3 - 11*zeta^2 - 
11*zeta - 11)*q^259 + (-10*zeta^5 - 10*zeta^4 - 10*zeta^3 - 10*zeta^2 - 10*zeta 
- 10)*q^268 + (-29*zeta^5 + 29*zeta^3 - 29*zeta + 29)*q^271 + (15*zeta^3 + 
15)*q^273 + (26*zeta^5 + 26*zeta^4 + 26*zeta^3 + 26*zeta^2 + 26*zeta + 26)*q^277
+ (-32*zeta^4 + 32*zeta^3 - 32*zeta^2 + 32)*q^283 + (17*zeta^5 - 17*zeta^3 + 
17*zeta - 17)*q^289 + (57*zeta^3 + 57)*q^291 + (-14*zeta^4 + 14*zeta^3 - 
14*zeta^2 + 14)*q^292 + (-30*zeta^3 - 30)*q^300 + (8*zeta^4 - 8*zeta^3 + 
8*zeta^2 - 8)*q^301 + (-28*zeta^5 - 28*zeta^4 - 28*zeta^3 - 28*zeta^2 - 28*zeta 
- 28)*q^304 + (16*zeta^5 - 16*zeta^3 + 16*zeta - 16)*q^307 + (39*zeta^3 + 
39)*q^309 + (35*zeta^5 + 35*zeta^4 + 35*zeta^3 + 35*zeta^2 + 35*zeta + 35)*q^313
+ (34*zeta^5 - 34*zeta^3 + 34*zeta - 34)*q^316 + (25*zeta^5 - 25*zeta^3 + 
25*zeta - 25)*q^325 + (-6*zeta^3 - 6)*q^327 + (-zeta^5 - zeta^4 - zeta^3 - 
zeta^2 - zeta - 1)*q^331 + (12*zeta^3 + 12)*q^336 + (-5*zeta^4 + 5*zeta^3 - 
5*zeta^2 + 5)*q^337 + (-13*zeta^5 + 13*zeta^3 - 13*zeta + 13)*q^343 + 
(-37*zeta^5 - 37*zeta^4 - 37*zeta^3 - 37*zeta^2 - 37*zeta - 37)*q^349 + 
(-30*zeta^5 + 30*zeta^3 - 30*zeta + 30)*q^361 + (33*zeta^3 + 33)*q^363 + 
(-10*zeta^4 + 10*zeta^3 - 10*zeta^2 + 10)*q^364 + (35*zeta^5 + 35*zeta^4 + 
35*zeta^3 + 35*zeta^2 + 35*zeta + 35)*q^367 + (-24*zeta^3 - 24)*q^372 + 
(13*zeta^4 - 13*zeta^3 + 13*zeta^2 - 13)*q^373 + (-29*zeta^5 + 29*zeta^3 - 
29*zeta + 29)*q^379 + (-60*zeta^3 - 60)*q^381 + (-38*zeta^5 + 38*zeta^3 - 
38*zeta + 38)*q^388 + (34*zeta^5 - 34*zeta^3 + 34*zeta - 34)*q^397 + (-21*zeta^3
- 21)*q^399 + (20*zeta^4 - 20*zeta^3 + 20*zeta^2 - 20)*q^400 + (-20*zeta^5 - 
20*zeta^4 - 20*zeta^3 - 20*zeta^2 - 20*zeta - 20)*q^403 + (31*zeta^4 - 31*zeta^3
+ 31*zeta^2 - 31)*q^409 + (26*zeta^5 + 26*zeta^4 + 26*zeta^3 + 26*zeta^2 + 
26*zeta + 26)*q^412 + (-69*zeta^3 - 69)*q^417 + (-19*zeta^5 - 19*zeta^4 - 
19*zeta^3 - 19*zeta^2 - 19*zeta - 19)*q^421 + (-zeta^4 + zeta^3 - zeta^2 + 
1)*q^427 + (-2*zeta^5 + 2*zeta^3 - 2*zeta + 2)*q^433 + (4*zeta^4 - 4*zeta^3 + 
4*zeta^2 - 4)*q^436 + (-28*zeta^5 - 28*zeta^4 - 28*zeta^3 - 28*zeta^2 - 28*zeta 
- 28)*q^439 + (66*zeta^3 + 66)*q^444 + (8*zeta^5 + 8*zeta^4 + 8*zeta^3 + 
8*zeta^2 + 8*zeta + 8)*q^448 + (57*zeta^3 + 57)*q^453 + (-10*zeta^5 - 10*zeta^4 
- 10*zeta^3 - 10*zeta^2 - 10*zeta - 10)*q^457 + (-23*zeta^4 + 23*zeta^3 - 
23*zeta^2 + 23)*q^463 + (5*zeta^5 - 5*zeta^3 + 5*zeta - 5)*q^469 + (-42*zeta^3 -
42)*q^471 + (35*zeta^5 + 35*zeta^4 + 35*zeta^3 + 35*zeta^2 + 35*zeta + 35)*q^475
+ (-55*zeta^4 + 55*zeta^3 - 55*zeta^2 + 55)*q^481 + (22*zeta^5 + 22*zeta^4 + 
22*zeta^3 + 22*zeta^2 + 22*zeta + 22)*q^484 + (25*zeta^5 - 25*zeta^3 + 25*zeta -
25)*q^487 + (75*zeta^3 + 75)*q^489 + (16*zeta^5 - 16*zeta^3 + 16*zeta - 
16)*q^496 + (-32*zeta^4 + 32*zeta^3 - 32*zeta^2 + 32)*q^499 + (-36*zeta^3 - 
36)*q^507 + (40*zeta^4 - 40*zeta^3 + 40*zeta^2 - 40)*q^508 + (7*zeta^5 + 
7*zeta^4 + 7*zeta^3 + 7*zeta^2 + 7*zeta + 7)*q^511 + (48*zeta^3 + 48)*q^516 + 
(43*zeta^5 - 43*zeta^3 + 43*zeta - 43)*q^523 + (-15*zeta^3 - 15)*q^525 + 
(-23*zeta^5 - 23*zeta^4 - 23*zeta^3 - 23*zeta^2 - 23*zeta - 23)*q^529 + 
(14*zeta^5 - 14*zeta^3 + 14*zeta - 14)*q^532 + (-29*zeta^5 + 29*zeta^3 - 29*zeta
+ 29)*q^541 + (21*zeta^3 + 21)*q^543 + (-zeta^5 - zeta^4 - zeta^3 - zeta^2 - 
zeta - 1)*q^547 + (17*zeta^4 - 17*zeta^3 + 17*zeta^2 - 17)*q^553 + (-46*zeta^5 -
46*zeta^4 - 46*zeta^3 - 46*zeta^2 - 46*zeta - 46)*q^556 + (-40*zeta^5 + 
40*zeta^3 - 40*zeta + 40)*q^559 + (31*zeta^4 - 31*zeta^3 + 31*zeta^2 - 31)*q^571
+ O(q^576), (-zeta^5 + zeta^3 - zeta + 1)*q + (-3*zeta^3 - 3)*q^3 + (2*zeta^4 - 
2*zeta^3 + 2*zeta^2 - 2)*q^4 + (-zeta^5 - zeta^4 - zeta^3 - zeta^2 - zeta - 
1)*q^7 + (6*zeta^3 + 6)*q^12 + (-5*zeta^4 + 5*zeta^3 - 5*zeta^2 + 5)*q^13 + 
(4*zeta^5 + 4*zeta^4 + 4*zeta^3 + 4*zeta^2 + 4*zeta + 4)*q^16 + (7*zeta^5 - 
7*zeta^3 + 7*zeta - 7)*q^19 + (3*zeta^3 + 3)*q^21 + (-5*zeta^5 - 5*zeta^4 - 
5*zeta^3 - 5*zeta^2 - 5*zeta - 5)*q^25 + (-2*zeta^5 + 2*zeta^3 - 2*zeta + 
2)*q^28 + (4*zeta^4 - 4*zeta^3 + 4*zeta^2 - 4)*q^31 + (-11*zeta^5 + 11*zeta^3 - 
11*zeta + 11)*q^37 + (-15*zeta^3 - 15)*q^39 + (8*zeta^5 + 8*zeta^4 + 8*zeta^3 + 
8*zeta^2 + 8*zeta + 8)*q^43 + (-12*zeta^3 - 12)*q^48 + (6*zeta^4 - 6*zeta^3 + 
6*zeta^2 - 6)*q^49 + (-10*zeta^5 - 10*zeta^4 - 10*zeta^3 - 10*zeta^2 - 10*zeta -
10)*q^52 + (21*zeta^3 + 21)*q^57 + (-zeta^5 - zeta^4 - zeta^3 - zeta^2 - zeta - 
1)*q^61 + (8*zeta^5 - 8*zeta^3 + 8*zeta - 8)*q^64 + (-5*zeta^4 + 5*zeta^3 - 
5*zeta^2 + 5)*q^67 + (7*zeta^5 - 7*zeta^3 + 7*zeta - 7)*q^73 + (15*zeta^3 + 
15)*q^75 + (-14*zeta^4 + 14*zeta^3 - 14*zeta^2 + 14)*q^76 + (17*zeta^5 + 
17*zeta^4 + 17*zeta^3 + 17*zeta^2 + 17*zeta + 17)*q^79 + (-6*zeta^3 - 6)*q^84 + 
(5*zeta^5 - 5*zeta^3 + 5*zeta - 5)*q^91 + (12*zeta^3 + 12)*q^93 + (-19*zeta^5 - 
19*zeta^4 - 19*zeta^3 - 19*zeta^2 - 19*zeta - 19)*q^97 + (-10*zeta^5 + 10*zeta^3
- 10*zeta + 10)*q^100 + (13*zeta^4 - 13*zeta^3 + 13*zeta^2 - 13)*q^103 + 
(-2*zeta^5 + 2*zeta^3 - 2*zeta + 2)*q^109 + (-33*zeta^3 - 33)*q^111 + (4*zeta^4 
- 4*zeta^3 + 4*zeta^2 - 4)*q^112 + (11*zeta^4 - 11*zeta^3 + 11*zeta^2 - 
11)*q^121 + (8*zeta^5 + 8*zeta^4 + 8*zeta^3 + 8*zeta^2 + 8*zeta + 8)*q^124 + 
(-20*zeta^5 + 20*zeta^3 - 20*zeta + 20)*q^127 + (-24*zeta^3 - 24)*q^129 + 
(7*zeta^5 + 7*zeta^4 + 7*zeta^3 + 7*zeta^2 + 7*zeta + 7)*q^133 + (-23*zeta^4 + 
23*zeta^3 - 23*zeta^2 + 23)*q^139 + (18*zeta^3 + 18)*q^147 + (22*zeta^4 - 
22*zeta^3 + 22*zeta^2 - 22)*q^148 + (-19*zeta^5 - 19*zeta^4 - 19*zeta^3 - 
19*zeta^2 - 19*zeta - 19)*q^151 + (30*zeta^3 + 30)*q^156 + (-14*zeta^4 + 
14*zeta^3 - 14*zeta^2 + 14)*q^157 + (25*zeta^5 - 25*zeta^3 + 25*zeta - 25)*q^163
+ (12*zeta^5 + 12*zeta^4 + 12*zeta^3 + 12*zeta^2 + 12*zeta + 12)*q^169 + 
(16*zeta^5 - 16*zeta^3 + 16*zeta - 16)*q^172 + (-5*zeta^4 + 5*zeta^3 - 5*zeta^2 
+ 5)*q^175 + (7*zeta^5 - 7*zeta^3 + 7*zeta - 7)*q^181 + (3*zeta^3 + 3)*q^183 + 
(24*zeta^3 + 24)*q^192 + (-23*zeta^4 + 23*zeta^3 - 23*zeta^2 + 23)*q^193 + 
(12*zeta^5 + 12*zeta^4 + 12*zeta^3 + 12*zeta^2 + 12*zeta + 12)*q^196 + 
(-11*zeta^5 + 11*zeta^3 - 11*zeta + 11)*q^199 + (-15*zeta^3 - 15)*q^201 + 
(-20*zeta^5 + 20*zeta^3 - 20*zeta + 20)*q^208 + (13*zeta^4 - 13*zeta^3 + 
13*zeta^2 - 13)*q^211 + (-4*zeta^5 + 4*zeta^3 - 4*zeta + 4)*q^217 + (21*zeta^3 +
21)*q^219 + (-28*zeta^5 - 28*zeta^4 - 28*zeta^3 - 28*zeta^2 - 28*zeta - 
28)*q^223 + (-42*zeta^3 - 42)*q^228 + (22*zeta^4 - 22*zeta^3 + 22*zeta^2 - 
22)*q^229 + (-51*zeta^3 - 51)*q^237 + (17*zeta^5 + 17*zeta^4 + 17*zeta^3 + 
17*zeta^2 + 17*zeta + 17)*q^241 + (-2*zeta^5 + 2*zeta^3 - 2*zeta + 2)*q^244 + 
(35*zeta^4 - 35*zeta^3 + 35*zeta^2 - 35)*q^247 + (-16*zeta^4 + 16*zeta^3 - 
16*zeta^2 + 16)*q^256 + (-11*zeta^5 - 11*zeta^4 - 11*zeta^3 - 11*zeta^2 - 
11*zeta - 11)*q^259 + (-10*zeta^5 - 10*zeta^4 - 10*zeta^3 - 10*zeta^2 - 10*zeta 
- 10)*q^268 + (-29*zeta^5 + 29*zeta^3 - 29*zeta + 29)*q^271 + (15*zeta^3 + 
15)*q^273 + (26*zeta^5 + 26*zeta^4 + 26*zeta^3 + 26*zeta^2 + 26*zeta + 26)*q^277
+ (-32*zeta^4 + 32*zeta^3 - 32*zeta^2 + 32)*q^283 + (17*zeta^5 - 17*zeta^3 + 
17*zeta - 17)*q^289 + (57*zeta^3 + 57)*q^291 + (-14*zeta^4 + 14*zeta^3 - 
14*zeta^2 + 14)*q^292 + (-30*zeta^3 - 30)*q^300 + (8*zeta^4 - 8*zeta^3 + 
8*zeta^2 - 8)*q^301 + (-28*zeta^5 - 28*zeta^4 - 28*zeta^3 - 28*zeta^2 - 28*zeta 
- 28)*q^304 + (16*zeta^5 - 16*zeta^3 + 16*zeta - 16)*q^307 + (39*zeta^3 + 
39)*q^309 + (35*zeta^5 + 35*zeta^4 + 35*zeta^3 + 35*zeta^2 + 35*zeta + 35)*q^313
+ (34*zeta^5 - 34*zeta^3 + 34*zeta - 34)*q^316 + (25*zeta^5 - 25*zeta^3 + 
25*zeta - 25)*q^325 + (-6*zeta^3 - 6)*q^327 + (-zeta^5 - zeta^4 - zeta^3 - 
zeta^2 - zeta - 1)*q^331 + (12*zeta^3 + 12)*q^336 + (-5*zeta^4 + 5*zeta^3 - 
5*zeta^2 + 5)*q^337 + (-13*zeta^5 + 13*zeta^3 - 13*zeta + 13)*q^343 + 
(-37*zeta^5 - 37*zeta^4 - 37*zeta^3 - 37*zeta^2 - 37*zeta - 37)*q^349 + 
(-30*zeta^5 + 30*zeta^3 - 30*zeta + 30)*q^361 + (33*zeta^3 + 33)*q^363 + 
(-10*zeta^4 + 10*zeta^3 - 10*zeta^2 + 10)*q^364 + (35*zeta^5 + 35*zeta^4 + 
35*zeta^3 + 35*zeta^2 + 35*zeta + 35)*q^367 + (-24*zeta^3 - 24)*q^372 + 
(13*zeta^4 - 13*zeta^3 + 13*zeta^2 - 13)*q^373 + (-29*zeta^5 + 29*zeta^3 - 
29*zeta + 29)*q^379 + (-60*zeta^3 - 60)*q^381 + (-38*zeta^5 + 38*zeta^3 - 
38*zeta + 38)*q^388 + (34*zeta^5 - 34*zeta^3 + 34*zeta - 34)*q^397 + (-21*zeta^3
- 21)*q^399 + (20*zeta^4 - 20*zeta^3 + 20*zeta^2 - 20)*q^400 + (-20*zeta^5 - 
20*zeta^4 - 20*zeta^3 - 20*zeta^2 - 20*zeta - 20)*q^403 + (31*zeta^4 - 31*zeta^3
+ 31*zeta^2 - 31)*q^409 + (26*zeta^5 + 26*zeta^4 + 26*zeta^3 + 26*zeta^2 + 
26*zeta + 26)*q^412 + (-69*zeta^3 - 69)*q^417 + (-19*zeta^5 - 19*zeta^4 - 
19*zeta^3 - 19*zeta^2 - 19*zeta - 19)*q^421 + (-zeta^4 + zeta^3 - zeta^2 + 
1)*q^427 + (-2*zeta^5 + 2*zeta^3 - 2*zeta + 2)*q^433 + (4*zeta^4 - 4*zeta^3 + 
4*zeta^2 - 4)*q^436 + (-28*zeta^5 - 28*zeta^4 - 28*zeta^3 - 28*zeta^2 - 28*zeta 
- 28)*q^439 + (66*zeta^3 + 66)*q^444 + (8*zeta^5 + 8*zeta^4 + 8*zeta^3 + 
8*zeta^2 + 8*zeta + 8)*q^448 + (57*zeta^3 + 57)*q^453 + (-10*zeta^5 - 10*zeta^4 
- 10*zeta^3 - 10*zeta^2 - 10*zeta - 10)*q^457 + (-23*zeta^4 + 23*zeta^3 - 
23*zeta^2 + 23)*q^463 + (5*zeta^5 - 5*zeta^3 + 5*zeta - 5)*q^469 + (-42*zeta^3 -
42)*q^471 + (35*zeta^5 + 35*zeta^4 + 35*zeta^3 + 35*zeta^2 + 35*zeta + 35)*q^475
+ (-55*zeta^4 + 55*zeta^3 - 55*zeta^2 + 55)*q^481 + (22*zeta^5 + 22*zeta^4 + 
22*zeta^3 + 22*zeta^2 + 22*zeta + 22)*q^484 + (25*zeta^5 - 25*zeta^3 + 25*zeta -
25)*q^487 + (75*zeta^3 + 75)*q^489 + (16*zeta^5 - 16*zeta^3 + 16*zeta - 
16)*q^496 + (-32*zeta^4 + 32*zeta^3 - 32*zeta^2 + 32)*q^499 + (-36*zeta^3 - 
36)*q^507 + (40*zeta^4 - 40*zeta^3 + 40*zeta^2 - 40)*q^508 + (7*zeta^5 + 
7*zeta^4 + 7*zeta^3 + 7*zeta^2 + 7*zeta + 7)*q^511 + (48*zeta^3 + 48)*q^516 + 
(43*zeta^5 - 43*zeta^3 + 43*zeta - 43)*q^523 + (-15*zeta^3 - 15)*q^525 + 
(-23*zeta^5 - 23*zeta^4 - 23*zeta^3 - 23*zeta^2 - 23*zeta - 23)*q^529 + 
(14*zeta^5 - 14*zeta^3 + 14*zeta - 14)*q^532 + (-29*zeta^5 + 29*zeta^3 - 29*zeta
+ 29)*q^541 + (21*zeta^3 + 21)*q^543 + (-zeta^5 - zeta^4 - zeta^3 - zeta^2 - 
zeta - 1)*q^547 + (17*zeta^4 - 17*zeta^3 + 17*zeta^2 - 17)*q^553 + (-46*zeta^5 -
46*zeta^4 - 46*zeta^3 - 46*zeta^2 - 46*zeta - 46)*q^556 + (-40*zeta^5 + 
40*zeta^3 - 40*zeta + 40)*q^559 + (31*zeta^4 - 31*zeta^3 + 31*zeta^2 - 31)*q^571
+ O(q^576), (zeta^5 - zeta^4 - zeta^3 + zeta^2)*q + 3*zeta^3*q^3 + (2*zeta^5 - 
2*zeta^4 + 2*zeta^3 - 2*zeta)*q^4 + (zeta^3 + zeta^2 + zeta)*q^7 - 6*zeta^3*q^12
+ (-5*zeta^5 + 5*zeta^4 - 5*zeta^3 + 5*zeta)*q^13 + (-4*zeta^3 - 4*zeta^2 - 
4*zeta)*q^16 + (-7*zeta^5 + 7*zeta^4 + 7*zeta^3 - 7*zeta^2)*q^19 - 3*zeta^3*q^21
+ (5*zeta^3 + 5*zeta^2 + 5*zeta)*q^25 + (2*zeta^5 - 2*zeta^4 - 2*zeta^3 + 
2*zeta^2)*q^28 + (4*zeta^5 - 4*zeta^4 + 4*zeta^3 - 4*zeta)*q^31 + (11*zeta^5 - 
11*zeta^4 - 11*zeta^3 + 11*zeta^2)*q^37 + 15*zeta^3*q^39 + (-8*zeta^3 - 8*zeta^2
- 8*zeta)*q^43 + 12*zeta^3*q^48 + (6*zeta^5 - 6*zeta^4 + 6*zeta^3 - 6*zeta)*q^49
+ (10*zeta^3 + 10*zeta^2 + 10*zeta)*q^52 - 21*zeta^3*q^57 + (zeta^3 + zeta^2 + 
zeta)*q^61 + (-8*zeta^5 + 8*zeta^4 + 8*zeta^3 - 8*zeta^2)*q^64 + (-5*zeta^5 + 
5*zeta^4 - 5*zeta^3 + 5*zeta)*q^67 + (-7*zeta^5 + 7*zeta^4 + 7*zeta^3 - 
7*zeta^2)*q^73 - 15*zeta^3*q^75 + (-14*zeta^5 + 14*zeta^4 - 14*zeta^3 + 
14*zeta)*q^76 + (-17*zeta^3 - 17*zeta^2 - 17*zeta)*q^79 + 6*zeta^3*q^84 + 
(-5*zeta^5 + 5*zeta^4 + 5*zeta^3 - 5*zeta^2)*q^91 - 12*zeta^3*q^93 + (19*zeta^3 
+ 19*zeta^2 + 19*zeta)*q^97 + (10*zeta^5 - 10*zeta^4 - 10*zeta^3 + 
10*zeta^2)*q^100 + (13*zeta^5 - 13*zeta^4 + 13*zeta^3 - 13*zeta)*q^103 + 
(2*zeta^5 - 2*zeta^4 - 2*zeta^3 + 2*zeta^2)*q^109 + 33*zeta^3*q^111 + (4*zeta^5 
- 4*zeta^4 + 4*zeta^3 - 4*zeta)*q^112 + (11*zeta^5 - 11*zeta^4 + 11*zeta^3 - 
11*zeta)*q^121 + (-8*zeta^3 - 8*zeta^2 - 8*zeta)*q^124 + (20*zeta^5 - 20*zeta^4 
- 20*zeta^3 + 20*zeta^2)*q^127 + 24*zeta^3*q^129 + (-7*zeta^3 - 7*zeta^2 - 
7*zeta)*q^133 + (-23*zeta^5 + 23*zeta^4 - 23*zeta^3 + 23*zeta)*q^139 - 
18*zeta^3*q^147 + (22*zeta^5 - 22*zeta^4 + 22*zeta^3 - 22*zeta)*q^148 + 
(19*zeta^3 + 19*zeta^2 + 19*zeta)*q^151 - 30*zeta^3*q^156 + (-14*zeta^5 + 
14*zeta^4 - 14*zeta^3 + 14*zeta)*q^157 + (-25*zeta^5 + 25*zeta^4 + 25*zeta^3 - 
25*zeta^2)*q^163 + (-12*zeta^3 - 12*zeta^2 - 12*zeta)*q^169 + (-16*zeta^5 + 
16*zeta^4 + 16*zeta^3 - 16*zeta^2)*q^172 + (-5*zeta^5 + 5*zeta^4 - 5*zeta^3 + 
5*zeta)*q^175 + (-7*zeta^5 + 7*zeta^4 + 7*zeta^3 - 7*zeta^2)*q^181 - 
3*zeta^3*q^183 - 24*zeta^3*q^192 + (-23*zeta^5 + 23*zeta^4 - 23*zeta^3 + 
23*zeta)*q^193 + (-12*zeta^3 - 12*zeta^2 - 12*zeta)*q^196 + (11*zeta^5 - 
11*zeta^4 - 11*zeta^3 + 11*zeta^2)*q^199 + 15*zeta^3*q^201 + (20*zeta^5 - 
20*zeta^4 - 20*zeta^3 + 20*zeta^2)*q^208 + (13*zeta^5 - 13*zeta^4 + 13*zeta^3 - 
13*zeta)*q^211 + (4*zeta^5 - 4*zeta^4 - 4*zeta^3 + 4*zeta^2)*q^217 - 
21*zeta^3*q^219 + (28*zeta^3 + 28*zeta^2 + 28*zeta)*q^223 + 42*zeta^3*q^228 + 
(22*zeta^5 - 22*zeta^4 + 22*zeta^3 - 22*zeta)*q^229 + 51*zeta^3*q^237 + 
(-17*zeta^3 - 17*zeta^2 - 17*zeta)*q^241 + (2*zeta^5 - 2*zeta^4 - 2*zeta^3 + 
2*zeta^2)*q^244 + (35*zeta^5 - 35*zeta^4 + 35*zeta^3 - 35*zeta)*q^247 + 
(-16*zeta^5 + 16*zeta^4 - 16*zeta^3 + 16*zeta)*q^256 + (11*zeta^3 + 11*zeta^2 + 
11*zeta)*q^259 + (10*zeta^3 + 10*zeta^2 + 10*zeta)*q^268 + (29*zeta^5 - 
29*zeta^4 - 29*zeta^3 + 29*zeta^2)*q^271 - 15*zeta^3*q^273 + (-26*zeta^3 - 
26*zeta^2 - 26*zeta)*q^277 + (-32*zeta^5 + 32*zeta^4 - 32*zeta^3 + 
32*zeta)*q^283 + (-17*zeta^5 + 17*zeta^4 + 17*zeta^3 - 17*zeta^2)*q^289 - 
57*zeta^3*q^291 + (-14*zeta^5 + 14*zeta^4 - 14*zeta^3 + 14*zeta)*q^292 + 
30*zeta^3*q^300 + (8*zeta^5 - 8*zeta^4 + 8*zeta^3 - 8*zeta)*q^301 + (28*zeta^3 +
28*zeta^2 + 28*zeta)*q^304 + (-16*zeta^5 + 16*zeta^4 + 16*zeta^3 - 
16*zeta^2)*q^307 - 39*zeta^3*q^309 + (-35*zeta^3 - 35*zeta^2 - 35*zeta)*q^313 + 
(-34*zeta^5 + 34*zeta^4 + 34*zeta^3 - 34*zeta^2)*q^316 + (-25*zeta^5 + 25*zeta^4
+ 25*zeta^3 - 25*zeta^2)*q^325 + 6*zeta^3*q^327 + (zeta^3 + zeta^2 + zeta)*q^331
- 12*zeta^3*q^336 + (-5*zeta^5 + 5*zeta^4 - 5*zeta^3 + 5*zeta)*q^337 + 
(13*zeta^5 - 13*zeta^4 - 13*zeta^3 + 13*zeta^2)*q^343 + (37*zeta^3 + 37*zeta^2 +
37*zeta)*q^349 + (30*zeta^5 - 30*zeta^4 - 30*zeta^3 + 30*zeta^2)*q^361 - 
33*zeta^3*q^363 + (-10*zeta^5 + 10*zeta^4 - 10*zeta^3 + 10*zeta)*q^364 + 
(-35*zeta^3 - 35*zeta^2 - 35*zeta)*q^367 + 24*zeta^3*q^372 + (13*zeta^5 - 
13*zeta^4 + 13*zeta^3 - 13*zeta)*q^373 + (29*zeta^5 - 29*zeta^4 - 29*zeta^3 + 
29*zeta^2)*q^379 + 60*zeta^3*q^381 + (38*zeta^5 - 38*zeta^4 - 38*zeta^3 + 
38*zeta^2)*q^388 + (-34*zeta^5 + 34*zeta^4 + 34*zeta^3 - 34*zeta^2)*q^397 + 
21*zeta^3*q^399 + (20*zeta^5 - 20*zeta^4 + 20*zeta^3 - 20*zeta)*q^400 + 
(20*zeta^3 + 20*zeta^2 + 20*zeta)*q^403 + (31*zeta^5 - 31*zeta^4 + 31*zeta^3 - 
31*zeta)*q^409 + (-26*zeta^3 - 26*zeta^2 - 26*zeta)*q^412 + 69*zeta^3*q^417 + 
(19*zeta^3 + 19*zeta^2 + 19*zeta)*q^421 + (-zeta^5 + zeta^4 - zeta^3 + 
zeta)*q^427 + (2*zeta^5 - 2*zeta^4 - 2*zeta^3 + 2*zeta^2)*q^433 + (4*zeta^5 - 
4*zeta^4 + 4*zeta^3 - 4*zeta)*q^436 + (28*zeta^3 + 28*zeta^2 + 28*zeta)*q^439 - 
66*zeta^3*q^444 + (-8*zeta^3 - 8*zeta^2 - 8*zeta)*q^448 - 57*zeta^3*q^453 + 
(10*zeta^3 + 10*zeta^2 + 10*zeta)*q^457 + (-23*zeta^5 + 23*zeta^4 - 23*zeta^3 + 
23*zeta)*q^463 + (-5*zeta^5 + 5*zeta^4 + 5*zeta^3 - 5*zeta^2)*q^469 + 
42*zeta^3*q^471 + (-35*zeta^3 - 35*zeta^2 - 35*zeta)*q^475 + (-55*zeta^5 + 
55*zeta^4 - 55*zeta^3 + 55*zeta)*q^481 + (-22*zeta^3 - 22*zeta^2 - 
22*zeta)*q^484 + (-25*zeta^5 + 25*zeta^4 + 25*zeta^3 - 25*zeta^2)*q^487 - 
75*zeta^3*q^489 + (-16*zeta^5 + 16*zeta^4 + 16*zeta^3 - 16*zeta^2)*q^496 + 
(-32*zeta^5 + 32*zeta^4 - 32*zeta^3 + 32*zeta)*q^499 + 36*zeta^3*q^507 + 
(40*zeta^5 - 40*zeta^4 + 40*zeta^3 - 40*zeta)*q^508 + (-7*zeta^3 - 7*zeta^2 - 
7*zeta)*q^511 - 48*zeta^3*q^516 + (-43*zeta^5 + 43*zeta^4 + 43*zeta^3 - 
43*zeta^2)*q^523 + 15*zeta^3*q^525 + (23*zeta^3 + 23*zeta^2 + 23*zeta)*q^529 + 
(-14*zeta^5 + 14*zeta^4 + 14*zeta^3 - 14*zeta^2)*q^532 + (29*zeta^5 - 29*zeta^4 
- 29*zeta^3 + 29*zeta^2)*q^541 - 21*zeta^3*q^543 + (zeta^3 + zeta^2 + 
zeta)*q^547 + (17*zeta^5 - 17*zeta^4 + 17*zeta^3 - 17*zeta)*q^553 + (46*zeta^3 +
46*zeta^2 + 46*zeta)*q^556 + (40*zeta^5 - 40*zeta^4 - 40*zeta^3 + 
40*zeta^2)*q^559 + (31*zeta^5 - 31*zeta^4 + 31*zeta^3 - 31*zeta)*q^571 + 
O(q^576), (zeta^5 + zeta^2 + zeta)*q + (zeta^5 - 2*zeta^4 - zeta^2 - zeta)*q^2 +
(-zeta^5 + zeta^4)*q^4 + (2*zeta^5 - zeta^4 + zeta^2 + zeta)*q^5 + (-2*zeta^4 - 
2*zeta^2 - 2*zeta)*q^7 + (-zeta^5 - zeta^4 - 2*zeta^2 - 2*zeta)*q^8 + (-3*zeta^5
- 3*zeta^2 - 3*zeta)*q^10 + (-2*zeta^5 + 4*zeta^4 + 2*zeta^2 + 2*zeta)*q^11 + 
(zeta^5 - zeta^4)*q^13 + (-4*zeta^5 + 2*zeta^4 - 2*zeta^2 - 2*zeta)*q^14 + 
(5*zeta^4 + 5*zeta^2 + 5*zeta)*q^16 + (3*zeta^5 + 3*zeta^4 + 6*zeta^2 + 
6*zeta)*q^17 + (2*zeta^5 + 2*zeta^2 + 2*zeta)*q^19 + (-zeta^5 + 2*zeta^4 + 
zeta^2 + zeta)*q^20 + (6*zeta^5 - 6*zeta^4)*q^22 + (-4*zeta^5 + 2*zeta^4 - 
2*zeta^2 - 2*zeta)*q^23 + (2*zeta^4 + 2*zeta^2 + 2*zeta)*q^25 + (-zeta^5 - 
zeta^4 - 2*zeta^2 - 2*zeta)*q^26 + (2*zeta^5 + 2*zeta^2 + 2*zeta)*q^28 + (zeta^5
- 2*zeta^4 - zeta^2 - zeta)*q^29 + (-8*zeta^5 + 8*zeta^4)*q^31 + (6*zeta^5 - 
3*zeta^4 + 3*zeta^2 + 3*zeta)*q^32 + (-9*zeta^4 - 9*zeta^2 - 9*zeta)*q^34 + 
(-2*zeta^5 - 2*zeta^4 - 4*zeta^2 - 4*zeta)*q^35 + (-7*zeta^5 - 7*zeta^2 - 
7*zeta)*q^37 + (2*zeta^5 - 4*zeta^4 - 2*zeta^2 - 2*zeta)*q^38 + (-3*zeta^5 + 
3*zeta^4)*q^40 + (8*zeta^5 - 4*zeta^4 + 4*zeta^2 + 4*zeta)*q^41 + (-2*zeta^4 - 
2*zeta^2 - 2*zeta)*q^43 + (-2*zeta^5 - 2*zeta^4 - 4*zeta^2 - 4*zeta)*q^44 + 
(6*zeta^5 + 6*zeta^2 + 6*zeta)*q^46 + (4*zeta^5 - 8*zeta^4 - 4*zeta^2 - 
4*zeta)*q^47 + (3*zeta^5 - 3*zeta^4)*q^49 + (4*zeta^5 - 2*zeta^4 + 2*zeta^2 + 
2*zeta)*q^50 + (zeta^4 + zeta^2 + zeta)*q^52 + (6*zeta^5 + 6*zeta^2 + 
6*zeta)*q^55 + (-2*zeta^5 + 4*zeta^4 + 2*zeta^2 + 2*zeta)*q^56 + (-3*zeta^5 + 
3*zeta^4)*q^58 + (-16*zeta^5 + 8*zeta^4 - 8*zeta^2 - 8*zeta)*q^59 + (7*zeta^4 + 
7*zeta^2 + 7*zeta)*q^61 + (8*zeta^5 + 8*zeta^4 + 16*zeta^2 + 16*zeta)*q^62 + 
(zeta^5 + zeta^2 + zeta)*q^64 + (zeta^5 - 2*zeta^4 - zeta^2 - zeta)*q^65 + 
(10*zeta^5 - 10*zeta^4)*q^67 + (-6*zeta^5 + 3*zeta^4 - 3*zeta^2 - 3*zeta)*q^68 +
(6*zeta^4 + 6*zeta^2 + 6*zeta)*q^70 + (-6*zeta^5 - 6*zeta^4 - 12*zeta^2 - 
12*zeta)*q^71 + (-7*zeta^5 - 7*zeta^2 - 7*zeta)*q^73 + (-7*zeta^5 + 14*zeta^4 + 
7*zeta^2 + 7*zeta)*q^74 + (-2*zeta^5 + 2*zeta^4)*q^76 + (8*zeta^5 - 4*zeta^4 + 
4*zeta^2 + 4*zeta)*q^77 + (-2*zeta^4 - 2*zeta^2 - 2*zeta)*q^79 + (5*zeta^5 + 
5*zeta^4 + 10*zeta^2 + 10*zeta)*q^80 + (-12*zeta^5 - 12*zeta^2 - 12*zeta)*q^82 +
(-8*zeta^5 + 16*zeta^4 + 8*zeta^2 + 8*zeta)*q^83 + (9*zeta^5 - 9*zeta^4)*q^85 + 
(-4*zeta^5 + 2*zeta^4 - 2*zeta^2 - 2*zeta)*q^86 + (-6*zeta^4 - 6*zeta^2 - 
6*zeta)*q^88 + (-3*zeta^5 - 3*zeta^4 - 6*zeta^2 - 6*zeta)*q^89 + (-2*zeta^5 - 
2*zeta^2 - 2*zeta)*q^91 + (2*zeta^5 - 4*zeta^4 - 2*zeta^2 - 2*zeta)*q^92 + 
(-12*zeta^5 + 12*zeta^4)*q^94 + (4*zeta^5 - 2*zeta^4 + 2*zeta^2 + 2*zeta)*q^95 +
(-2*zeta^4 - 2*zeta^2 - 2*zeta)*q^97 + (-3*zeta^5 - 3*zeta^4 - 6*zeta^2 - 
6*zeta)*q^98 + (-2*zeta^5 - 2*zeta^2 - 2*zeta)*q^100 + (4*zeta^5 - 8*zeta^4 - 
4*zeta^2 - 4*zeta)*q^101 + (-8*zeta^5 + 8*zeta^4)*q^103 + (-2*zeta^5 + zeta^4 - 
zeta^2 - zeta)*q^104 + (11*zeta^5 + 11*zeta^2 + 11*zeta)*q^109 + (6*zeta^5 - 
12*zeta^4 - 6*zeta^2 - 6*zeta)*q^110 + (10*zeta^5 - 10*zeta^4)*q^112 + (2*zeta^5
- zeta^4 + zeta^2 + zeta)*q^113 + (6*zeta^4 + 6*zeta^2 + 6*zeta)*q^115 + (zeta^5
+ zeta^4 + 2*zeta^2 + 2*zeta)*q^116 + (24*zeta^5 + 24*zeta^2 + 24*zeta)*q^118 + 
(6*zeta^5 - 12*zeta^4 - 6*zeta^2 - 6*zeta)*q^119 + (-zeta^5 + zeta^4)*q^121 + 
(14*zeta^5 - 7*zeta^4 + 7*zeta^2 + 7*zeta)*q^122 + (-8*zeta^4 - 8*zeta^2 - 
8*zeta)*q^124 + (7*zeta^5 + 7*zeta^4 + 14*zeta^2 + 14*zeta)*q^125 + (2*zeta^5 + 
2*zeta^2 + 2*zeta)*q^127 + (7*zeta^5 - 14*zeta^4 - 7*zeta^2 - 7*zeta)*q^128 + 
(-3*zeta^5 + 3*zeta^4)*q^130 + (-4*zeta^5 + 2*zeta^4 - 2*zeta^2 - 2*zeta)*q^131 
+ (-4*zeta^4 - 4*zeta^2 - 4*zeta)*q^133 + (-10*zeta^5 - 10*zeta^4 - 20*zeta^2 - 
20*zeta)*q^134 + (-9*zeta^5 - 9*zeta^2 - 9*zeta)*q^136 + (zeta^5 - 2*zeta^4 - 
zeta^2 - zeta)*q^137 + (-8*zeta^5 + 8*zeta^4)*q^139 + (4*zeta^5 - 2*zeta^4 + 
2*zeta^2 + 2*zeta)*q^140 + (18*zeta^4 + 18*zeta^2 + 18*zeta)*q^142 + (2*zeta^5 +
2*zeta^4 + 4*zeta^2 + 4*zeta)*q^143 + (-3*zeta^5 - 3*zeta^2 - 3*zeta)*q^145 + 
(-7*zeta^5 + 14*zeta^4 + 7*zeta^2 + 7*zeta)*q^146 + (7*zeta^5 - 7*zeta^4)*q^148 
+ (-10*zeta^5 + 5*zeta^4 - 5*zeta^2 - 5*zeta)*q^149 + (-20*zeta^4 - 20*zeta^2 - 
20*zeta)*q^151 + (-2*zeta^5 - 2*zeta^4 - 4*zeta^2 - 4*zeta)*q^152 + (-12*zeta^5 
- 12*zeta^2 - 12*zeta)*q^154 + (-8*zeta^5 + 16*zeta^4 + 8*zeta^2 + 8*zeta)*q^155
+ (-17*zeta^5 + 17*zeta^4)*q^157 + (-4*zeta^5 + 2*zeta^4 - 2*zeta^2 - 
2*zeta)*q^158 + (-9*zeta^4 - 9*zeta^2 - 9*zeta)*q^160 + (4*zeta^5 + 4*zeta^4 + 
8*zeta^2 + 8*zeta)*q^161 + (-16*zeta^5 - 16*zeta^2 - 16*zeta)*q^163 + (-4*zeta^5
+ 8*zeta^4 + 4*zeta^2 + 4*zeta)*q^164 + (24*zeta^5 - 24*zeta^4)*q^166 + 
(20*zeta^5 - 10*zeta^4 + 10*zeta^2 + 10*zeta)*q^167 + (12*zeta^4 + 12*zeta^2 + 
12*zeta)*q^169 + (-9*zeta^5 - 9*zeta^4 - 18*zeta^2 - 18*zeta)*q^170 + (2*zeta^5 
+ 2*zeta^2 + 2*zeta)*q^172 + (-11*zeta^5 + 22*zeta^4 + 11*zeta^2 + 
11*zeta)*q^173 + (4*zeta^5 - 4*zeta^4)*q^175 + (-20*zeta^5 + 10*zeta^4 - 
10*zeta^2 - 10*zeta)*q^176 + (9*zeta^4 + 9*zeta^2 + 9*zeta)*q^178 + (12*zeta^5 +
12*zeta^4 + 24*zeta^2 + 24*zeta)*q^179 + (2*zeta^5 + 2*zeta^2 + 2*zeta)*q^181 + 
(-2*zeta^5 + 4*zeta^4 + 2*zeta^2 + 2*zeta)*q^182 + (6*zeta^5 - 6*zeta^4)*q^184 +
(-14*zeta^5 + 7*zeta^4 - 7*zeta^2 - 7*zeta)*q^185 + (18*zeta^4 + 18*zeta^2 + 
18*zeta)*q^187 + (4*zeta^5 + 4*zeta^4 + 8*zeta^2 + 8*zeta)*q^188 + (-6*zeta^5 - 
6*zeta^2 - 6*zeta)*q^190 + (10*zeta^5 - 20*zeta^4 - 10*zeta^2 - 10*zeta)*q^191 +
(zeta^5 - zeta^4)*q^193 + (-4*zeta^5 + 2*zeta^4 - 2*zeta^2 - 2*zeta)*q^194 + 
(3*zeta^4 + 3*zeta^2 + 3*zeta)*q^196 + (-3*zeta^5 - 3*zeta^4 - 6*zeta^2 - 
6*zeta)*q^197 + (20*zeta^5 + 20*zeta^2 + 20*zeta)*q^199 + (2*zeta^5 - 4*zeta^4 -
2*zeta^2 - 2*zeta)*q^200 + (-12*zeta^5 + 12*zeta^4)*q^202 + (-4*zeta^5 + 
2*zeta^4 - 2*zeta^2 - 2*zeta)*q^203 + (-12*zeta^4 - 12*zeta^2 - 12*zeta)*q^205 +
(8*zeta^5 + 8*zeta^4 + 16*zeta^2 + 16*zeta)*q^206 + (5*zeta^5 + 5*zeta^2 + 
5*zeta)*q^208 + (-4*zeta^5 + 8*zeta^4 + 4*zeta^2 + 4*zeta)*q^209 + (10*zeta^5 - 
10*zeta^4)*q^211 + (-2*zeta^5 - 2*zeta^4 - 4*zeta^2 - 4*zeta)*q^215 + (16*zeta^5
+ 16*zeta^2 + 16*zeta)*q^217 + (11*zeta^5 - 22*zeta^4 - 11*zeta^2 - 
11*zeta)*q^218 + (-6*zeta^5 + 6*zeta^4)*q^220 + (6*zeta^5 - 3*zeta^4 + 3*zeta^2 
+ 3*zeta)*q^221 + (-2*zeta^4 - 2*zeta^2 - 2*zeta)*q^223 + (-6*zeta^5 - 6*zeta^4 
- 12*zeta^2 - 12*zeta)*q^224 + (-3*zeta^5 - 3*zeta^2 - 3*zeta)*q^226 + 
(-2*zeta^5 + 4*zeta^4 + 2*zeta^2 + 2*zeta)*q^227 + (zeta^5 - zeta^4)*q^229 + 
(12*zeta^5 - 6*zeta^4 + 6*zeta^2 + 6*zeta)*q^230 + (3*zeta^4 + 3*zeta^2 + 
3*zeta)*q^232 + (-15*zeta^5 - 15*zeta^4 - 30*zeta^2 - 30*zeta)*q^233 + 
(-12*zeta^5 - 12*zeta^2 - 12*zeta)*q^235 + (8*zeta^5 - 16*zeta^4 - 8*zeta^2 - 
8*zeta)*q^236 + (-18*zeta^5 + 18*zeta^4)*q^238 + (32*zeta^5 - 16*zeta^4 + 
16*zeta^2 + 16*zeta)*q^239 + (-29*zeta^4 - 29*zeta^2 - 29*zeta)*q^241 + (zeta^5 
+ zeta^4 + 2*zeta^2 + 2*zeta)*q^242 + (-7*zeta^5 - 7*zeta^2 - 7*zeta)*q^244 + 
(3*zeta^5 - 6*zeta^4 - 3*zeta^2 - 3*zeta)*q^245 + (2*zeta^5 - 2*zeta^4)*q^247 + 
(16*zeta^5 - 8*zeta^4 + 8*zeta^2 + 8*zeta)*q^248 + (-21*zeta^4 - 21*zeta^2 - 
21*zeta)*q^250 + (6*zeta^5 + 6*zeta^4 + 12*zeta^2 + 12*zeta)*q^251 + (-12*zeta^5
- 12*zeta^2 - 12*zeta)*q^253 + (2*zeta^5 - 4*zeta^4 - 2*zeta^2 - 2*zeta)*q^254 +
(-19*zeta^5 + 19*zeta^4)*q^256 + (-10*zeta^5 + 5*zeta^4 - 5*zeta^2 - 
5*zeta)*q^257 + (14*zeta^4 + 14*zeta^2 + 14*zeta)*q^259 + (zeta^5 + zeta^4 + 
2*zeta^2 + 2*zeta)*q^260 + (6*zeta^5 + 6*zeta^2 + 6*zeta)*q^262 + (4*zeta^5 - 
8*zeta^4 - 4*zeta^2 - 4*zeta)*q^263 + (-8*zeta^5 + 4*zeta^4 - 4*zeta^2 - 
4*zeta)*q^266 + (10*zeta^4 + 10*zeta^2 + 10*zeta)*q^268 + (-9*zeta^5 - 9*zeta^4 
- 18*zeta^2 - 18*zeta)*q^269 + (2*zeta^5 + 2*zeta^2 + 2*zeta)*q^271 + 
(-15*zeta^5 + 30*zeta^4 + 15*zeta^2 + 15*zeta)*q^272 + (-3*zeta^5 + 
3*zeta^4)*q^274 + (-8*zeta^5 + 4*zeta^4 - 4*zeta^2 - 4*zeta)*q^275 + (-2*zeta^4 
- 2*zeta^2 - 2*zeta)*q^277 + (8*zeta^5 + 8*zeta^4 + 16*zeta^2 + 16*zeta)*q^278 +
(6*zeta^5 + 6*zeta^2 + 6*zeta)*q^280 + (7*zeta^5 - 14*zeta^4 - 7*zeta^2 - 
7*zeta)*q^281 + (28*zeta^5 - 28*zeta^4)*q^283 + (12*zeta^5 - 6*zeta^4 + 6*zeta^2
+ 6*zeta)*q^284 + (-6*zeta^4 - 6*zeta^2 - 6*zeta)*q^286 + (-8*zeta^5 - 8*zeta^4 
- 16*zeta^2 - 16*zeta)*q^287 + (10*zeta^5 + 10*zeta^2 + 10*zeta)*q^289 + 
(-3*zeta^5 + 6*zeta^4 + 3*zeta^2 + 3*zeta)*q^290 + (7*zeta^5 - 7*zeta^4)*q^292 +
(-22*zeta^5 + 11*zeta^4 - 11*zeta^2 - 11*zeta)*q^293 + (24*zeta^4 + 24*zeta^2 + 
24*zeta)*q^295 + (7*zeta^5 + 7*zeta^4 + 14*zeta^2 + 14*zeta)*q^296 + (15*zeta^5 
+ 15*zeta^2 + 15*zeta)*q^298 + (-2*zeta^5 + 4*zeta^4 + 2*zeta^2 + 2*zeta)*q^299 
+ (-4*zeta^5 + 4*zeta^4)*q^301 + (-40*zeta^5 + 20*zeta^4 - 20*zeta^2 - 
20*zeta)*q^302 + (10*zeta^4 + 10*zeta^2 + 10*zeta)*q^304 + (7*zeta^5 + 7*zeta^4 
+ 14*zeta^2 + 14*zeta)*q^305 + (-16*zeta^5 - 16*zeta^2 - 16*zeta)*q^307 + 
(-4*zeta^5 + 8*zeta^4 + 4*zeta^2 + 4*zeta)*q^308 + (24*zeta^5 - 24*zeta^4)*q^310
+ (8*zeta^5 - 4*zeta^4 + 4*zeta^2 + 4*zeta)*q^311 + (25*zeta^4 + 25*zeta^2 + 
25*zeta)*q^313 + (17*zeta^5 + 17*zeta^4 + 34*zeta^2 + 34*zeta)*q^314 + (2*zeta^5
+ 2*zeta^2 + 2*zeta)*q^316 + (-5*zeta^5 + 10*zeta^4 + 5*zeta^2 + 5*zeta)*q^317 +
(6*zeta^5 - 6*zeta^4)*q^319 + (2*zeta^5 - zeta^4 + zeta^2 + zeta)*q^320 + 
(-12*zeta^4 - 12*zeta^2 - 12*zeta)*q^322 + (6*zeta^5 + 6*zeta^4 + 12*zeta^2 + 
12*zeta)*q^323 + (2*zeta^5 + 2*zeta^2 + 2*zeta)*q^325 + (-16*zeta^5 + 32*zeta^4 
+ 16*zeta^2 + 16*zeta)*q^326 + (-12*zeta^5 + 12*zeta^4)*q^328 + (-16*zeta^5 + 
8*zeta^4 - 8*zeta^2 - 8*zeta)*q^329 + (-2*zeta^4 - 2*zeta^2 - 2*zeta)*q^331 + 
(-8*zeta^5 - 8*zeta^4 - 16*zeta^2 - 16*zeta)*q^332 + (-30*zeta^5 - 30*zeta^2 - 
30*zeta)*q^334 + (10*zeta^5 - 20*zeta^4 - 10*zeta^2 - 10*zeta)*q^335 + 
(-26*zeta^5 + 26*zeta^4)*q^337 + (24*zeta^5 - 12*zeta^4 + 12*zeta^2 + 
12*zeta)*q^338 + (9*zeta^4 + 9*zeta^2 + 9*zeta)*q^340 + (-16*zeta^5 - 16*zeta^4 
- 32*zeta^2 - 32*zeta)*q^341 + (-20*zeta^5 - 20*zeta^2 - 20*zeta)*q^343 + 
(-2*zeta^5 + 4*zeta^4 + 2*zeta^2 + 2*zeta)*q^344 + (33*zeta^5 - 33*zeta^4)*q^346
+ (-4*zeta^5 + 2*zeta^4 - 2*zeta^2 - 2*zeta)*q^347 + (-2*zeta^4 - 2*zeta^2 - 
2*zeta)*q^349 + (-4*zeta^5 - 4*zeta^4 - 8*zeta^2 - 8*zeta)*q^350 + (18*zeta^5 + 
18*zeta^2 + 18*zeta)*q^352 + (-8*zeta^5 + 16*zeta^4 + 8*zeta^2 + 8*zeta)*q^353 +
(-18*zeta^5 + 18*zeta^4)*q^355 + (6*zeta^5 - 3*zeta^4 + 3*zeta^2 + 3*zeta)*q^356
+ (-36*zeta^4 - 36*zeta^2 - 36*zeta)*q^358 + (6*zeta^5 + 6*zeta^4 + 12*zeta^2 + 
12*zeta)*q^359 + (-15*zeta^5 - 15*zeta^2 - 15*zeta)*q^361 + (2*zeta^5 - 4*zeta^4
- 2*zeta^2 - 2*zeta)*q^362 + (2*zeta^5 - 2*zeta^4)*q^364 + (-14*zeta^5 + 
7*zeta^4 - 7*zeta^2 - 7*zeta)*q^365 + (-20*zeta^4 - 20*zeta^2 - 20*zeta)*q^367 +
(-10*zeta^5 - 10*zeta^4 - 20*zeta^2 - 20*zeta)*q^368 + (21*zeta^5 + 21*zeta^2 + 
21*zeta)*q^370 + (10*zeta^5 - 10*zeta^4)*q^373 + (36*zeta^5 - 18*zeta^4 + 
18*zeta^2 + 18*zeta)*q^374 + (12*zeta^4 + 12*zeta^2 + 12*zeta)*q^376 + (-zeta^5 
- zeta^4 - 2*zeta^2 - 2*zeta)*q^377 + (-16*zeta^5 - 16*zeta^2 - 16*zeta)*q^379 +
(-2*zeta^5 + 4*zeta^4 + 2*zeta^2 + 2*zeta)*q^380 + (-30*zeta^5 + 
30*zeta^4)*q^382 + (20*zeta^5 - 10*zeta^4 + 10*zeta^2 + 10*zeta)*q^383 + 
(-12*zeta^4 - 12*zeta^2 - 12*zeta)*q^385 + (-zeta^5 - zeta^4 - 2*zeta^2 - 
2*zeta)*q^386 + (2*zeta^5 + 2*zeta^2 + 2*zeta)*q^388 + (16*zeta^5 - 32*zeta^4 - 
16*zeta^2 - 16*zeta)*q^389 + (-18*zeta^5 + 18*zeta^4)*q^391 + (-6*zeta^5 + 
3*zeta^4 - 3*zeta^2 - 3*zeta)*q^392 + (9*zeta^4 + 9*zeta^2 + 9*zeta)*q^394 + 
(-2*zeta^5 - 2*zeta^4 - 4*zeta^2 - 4*zeta)*q^395 + (29*zeta^5 + 29*zeta^2 + 
29*zeta)*q^397 + (20*zeta^5 - 40*zeta^4 - 20*zeta^2 - 20*zeta)*q^398 + 
(-10*zeta^5 + 10*zeta^4)*q^400 + (14*zeta^5 - 7*zeta^4 + 7*zeta^2 + 
7*zeta)*q^401 + (8*zeta^4 + 8*zeta^2 + 8*zeta)*q^403 + (4*zeta^5 + 4*zeta^4 + 
8*zeta^2 + 8*zeta)*q^404 + (6*zeta^5 + 6*zeta^2 + 6*zeta)*q^406 + (14*zeta^5 - 
28*zeta^4 - 14*zeta^2 - 14*zeta)*q^407 + (19*zeta^5 - 19*zeta^4)*q^409 + 
(-24*zeta^5 + 12*zeta^4 - 12*zeta^2 - 12*zeta)*q^410 + (-8*zeta^4 - 8*zeta^2 - 
8*zeta)*q^412 + (16*zeta^5 + 16*zeta^4 + 32*zeta^2 + 32*zeta)*q^413 + (24*zeta^5
+ 24*zeta^2 + 24*zeta)*q^415 + (3*zeta^5 - 6*zeta^4 - 3*zeta^2 - 3*zeta)*q^416 +
(12*zeta^5 - 12*zeta^4)*q^418 + (8*zeta^5 - 4*zeta^4 + 4*zeta^2 + 4*zeta)*q^419 
+ (25*zeta^4 + 25*zeta^2 + 25*zeta)*q^421 + (-10*zeta^5 - 10*zeta^4 - 20*zeta^2 
- 20*zeta)*q^422 + (-6*zeta^5 + 12*zeta^4 + 6*zeta^2 + 6*zeta)*q^425 + 
(14*zeta^5 - 14*zeta^4)*q^427 + (6*zeta^4 + 6*zeta^2 + 6*zeta)*q^430 + 
(11*zeta^5 + 11*zeta^2 + 11*zeta)*q^433 + (16*zeta^5 - 32*zeta^4 - 16*zeta^2 - 
16*zeta)*q^434 + (-11*zeta^5 + 11*zeta^4)*q^436 + (-8*zeta^5 + 4*zeta^4 - 
4*zeta^2 - 4*zeta)*q^437 + (-20*zeta^4 - 20*zeta^2 - 20*zeta)*q^439 + (-6*zeta^5
- 6*zeta^4 - 12*zeta^2 - 12*zeta)*q^440 + (-9*zeta^5 - 9*zeta^2 - 9*zeta)*q^442 
+ (-20*zeta^5 + 40*zeta^4 + 20*zeta^2 + 20*zeta)*q^443 + (-9*zeta^5 + 
9*zeta^4)*q^445 + (-4*zeta^5 + 2*zeta^4 - 2*zeta^2 - 2*zeta)*q^446 + (-2*zeta^4 
- 2*zeta^2 - 2*zeta)*q^448 + (12*zeta^5 + 12*zeta^4 + 24*zeta^2 + 24*zeta)*q^449
+ (24*zeta^5 + 24*zeta^2 + 24*zeta)*q^451 + (-zeta^5 + 2*zeta^4 + zeta^2 + 
zeta)*q^452 + (6*zeta^5 - 6*zeta^4)*q^454 + (-4*zeta^5 + 2*zeta^4 - 2*zeta^2 - 
2*zeta)*q^455 + (-29*zeta^4 - 29*zeta^2 - 29*zeta)*q^457 + (-zeta^5 - zeta^4 - 
2*zeta^2 - 2*zeta)*q^458 + (-6*zeta^5 - 6*zeta^2 - 6*zeta)*q^460 + (-8*zeta^5 + 
16*zeta^4 + 8*zeta^2 + 8*zeta)*q^461 + (-8*zeta^5 + 8*zeta^4)*q^463 + (10*zeta^5
- 5*zeta^4 + 5*zeta^2 + 5*zeta)*q^464 + (45*zeta^4 + 45*zeta^2 + 45*zeta)*q^466 
+ (-12*zeta^5 - 12*zeta^4 - 24*zeta^2 - 24*zeta)*q^467 + (-20*zeta^5 - 20*zeta^2
- 20*zeta)*q^469 + (-12*zeta^5 + 24*zeta^4 + 12*zeta^2 + 12*zeta)*q^470 + 
(24*zeta^5 - 24*zeta^4)*q^472 + (8*zeta^5 - 4*zeta^4 + 4*zeta^2 + 4*zeta)*q^473 
+ (4*zeta^4 + 4*zeta^2 + 4*zeta)*q^475 + (6*zeta^5 + 6*zeta^4 + 12*zeta^2 + 
12*zeta)*q^476 + (-48*zeta^5 - 48*zeta^2 - 48*zeta)*q^478 + (-14*zeta^5 + 
28*zeta^4 + 14*zeta^2 + 14*zeta)*q^479 + (-7*zeta^5 + 7*zeta^4)*q^481 + 
(-58*zeta^5 + 29*zeta^4 - 29*zeta^2 - 29*zeta)*q^482 + (-zeta^4 - zeta^2 - 
zeta)*q^484 + (-2*zeta^5 - 2*zeta^4 - 4*zeta^2 - 4*zeta)*q^485 + (-16*zeta^5 - 
16*zeta^2 - 16*zeta)*q^487 + (7*zeta^5 - 14*zeta^4 - 7*zeta^2 - 7*zeta)*q^488 + 
(-9*zeta^5 + 9*zeta^4)*q^490 + (20*zeta^5 - 10*zeta^4 + 10*zeta^2 + 
10*zeta)*q^491 + (-9*zeta^4 - 9*zeta^2 - 9*zeta)*q^493 + (-2*zeta^5 - 2*zeta^4 -
4*zeta^2 - 4*zeta)*q^494 + (-40*zeta^5 - 40*zeta^2 - 40*zeta)*q^496 + 
(-12*zeta^5 + 24*zeta^4 + 12*zeta^2 + 12*zeta)*q^497 + (10*zeta^5 - 
10*zeta^4)*q^499 + (-14*zeta^5 + 7*zeta^4 - 7*zeta^2 - 7*zeta)*q^500 + 
(-18*zeta^4 - 18*zeta^2 - 18*zeta)*q^502 + (12*zeta^5 + 12*zeta^4 + 24*zeta^2 + 
24*zeta)*q^503 + (-12*zeta^5 - 12*zeta^2 - 12*zeta)*q^505 + (-12*zeta^5 + 
24*zeta^4 + 12*zeta^2 + 12*zeta)*q^506 + (-2*zeta^5 + 2*zeta^4)*q^508 + 
(32*zeta^5 - 16*zeta^4 + 16*zeta^2 + 16*zeta)*q^509 + (14*zeta^4 + 14*zeta^2 + 
14*zeta)*q^511 + (5*zeta^5 + 5*zeta^4 + 10*zeta^2 + 10*zeta)*q^512 + (15*zeta^5 
+ 15*zeta^2 + 15*zeta)*q^514 + (-8*zeta^5 + 16*zeta^4 + 8*zeta^2 + 8*zeta)*q^515
+ (24*zeta^5 - 24*zeta^4)*q^517 + (28*zeta^5 - 14*zeta^4 + 14*zeta^2 + 
14*zeta)*q^518 + (3*zeta^4 + 3*zeta^2 + 3*zeta)*q^520 + (-12*zeta^5 - 12*zeta^4 
- 24*zeta^2 - 24*zeta)*q^521 + (38*zeta^5 + 38*zeta^2 + 38*zeta)*q^523 + 
(2*zeta^5 - 4*zeta^4 - 2*zeta^2 - 2*zeta)*q^524 + (-12*zeta^5 + 12*zeta^4)*q^526
+ (-48*zeta^5 + 24*zeta^4 - 24*zeta^2 - 24*zeta)*q^527 + (11*zeta^4 + 11*zeta^2 
+ 11*zeta)*q^529 + (4*zeta^5 + 4*zeta^2 + 4*zeta)*q^532 + (4*zeta^5 - 8*zeta^4 -
4*zeta^2 - 4*zeta)*q^533 + (-20*zeta^5 + 10*zeta^4 - 10*zeta^2 - 10*zeta)*q^536 
+ (27*zeta^4 + 27*zeta^2 + 27*zeta)*q^538 + (6*zeta^5 + 6*zeta^4 + 12*zeta^2 + 
12*zeta)*q^539 + (11*zeta^5 + 11*zeta^2 + 11*zeta)*q^541 + (2*zeta^5 - 4*zeta^4 
- 2*zeta^2 - 2*zeta)*q^542 + (27*zeta^5 - 27*zeta^4)*q^544 + (22*zeta^5 - 
11*zeta^4 + 11*zeta^2 + 11*zeta)*q^545 + (-20*zeta^4 - 20*zeta^2 - 
20*zeta)*q^547 + (zeta^5 + zeta^4 + 2*zeta^2 + 2*zeta)*q^548 + (12*zeta^5 + 
12*zeta^2 + 12*zeta)*q^550 + (2*zeta^5 - 4*zeta^4 - 2*zeta^2 - 2*zeta)*q^551 + 
(-4*zeta^5 + 4*zeta^4)*q^553 + (-4*zeta^5 + 2*zeta^4 - 2*zeta^2 - 2*zeta)*q^554 
+ (-8*zeta^4 - 8*zeta^2 - 8*zeta)*q^556 + (21*zeta^5 + 21*zeta^4 + 42*zeta^2 + 
42*zeta)*q^557 + (-2*zeta^5 - 2*zeta^2 - 2*zeta)*q^559 + (10*zeta^5 - 20*zeta^4 
- 10*zeta^2 - 10*zeta)*q^560 + (-21*zeta^5 + 21*zeta^4)*q^562 + (-40*zeta^5 + 
20*zeta^4 - 20*zeta^2 - 20*zeta)*q^563 + (-3*zeta^4 - 3*zeta^2 - 3*zeta)*q^565 +
(-28*zeta^5 - 28*zeta^4 - 56*zeta^2 - 56*zeta)*q^566 + (18*zeta^5 + 18*zeta^2 + 
18*zeta)*q^568 + (19*zeta^5 - 38*zeta^4 - 19*zeta^2 - 19*zeta)*q^569 + 
(-8*zeta^5 + 8*zeta^4)*q^571 + (-4*zeta^5 + 2*zeta^4 - 2*zeta^2 - 2*zeta)*q^572 
+ (24*zeta^4 + 24*zeta^2 + 24*zeta)*q^574 + (-4*zeta^5 - 4*zeta^4 - 8*zeta^2 - 
8*zeta)*q^575 + O(q^576), (-zeta^5 + zeta^4)*q + (-2*zeta^5 + zeta^4 - zeta^2 - 
zeta)*q^2 + (-zeta^4 - zeta^2 - zeta)*q^4 + (-zeta^5 - zeta^4 - 2*zeta^2 - 
2*zeta)*q^5 + (2*zeta^5 + 2*zeta^2 + 2*zeta)*q^7 + (-zeta^5 + 2*zeta^4 + zeta^2 
+ zeta)*q^8 + (3*zeta^5 - 3*zeta^4)*q^10 + (4*zeta^5 - 2*zeta^4 + 2*zeta^2 + 
2*zeta)*q^11 + (zeta^4 + zeta^2 + zeta)*q^13 + (2*zeta^5 + 2*zeta^4 + 4*zeta^2 +
4*zeta)*q^14 + (-5*zeta^5 - 5*zeta^2 - 5*zeta)*q^16 + (3*zeta^5 - 6*zeta^4 - 
3*zeta^2 - 3*zeta)*q^17 + (-2*zeta^5 + 2*zeta^4)*q^19 + (2*zeta^5 - zeta^4 + 
zeta^2 + zeta)*q^20 + (6*zeta^4 + 6*zeta^2 + 6*zeta)*q^22 + (2*zeta^5 + 2*zeta^4
+ 4*zeta^2 + 4*zeta)*q^23 + (-2*zeta^5 - 2*zeta^2 - 2*zeta)*q^25 + (-zeta^5 + 
2*zeta^4 + zeta^2 + zeta)*q^26 + (-2*zeta^5 + 2*zeta^4)*q^28 + (-2*zeta^5 + 
zeta^4 - zeta^2 - zeta)*q^29 + (-8*zeta^4 - 8*zeta^2 - 8*zeta)*q^31 + (-3*zeta^5
- 3*zeta^4 - 6*zeta^2 - 6*zeta)*q^32 + (9*zeta^5 + 9*zeta^2 + 9*zeta)*q^34 + 
(-2*zeta^5 + 4*zeta^4 + 2*zeta^2 + 2*zeta)*q^35 + (7*zeta^5 - 7*zeta^4)*q^37 + 
(-4*zeta^5 + 2*zeta^4 - 2*zeta^2 - 2*zeta)*q^38 + (-3*zeta^4 - 3*zeta^2 - 
3*zeta)*q^40 + (-4*zeta^5 - 4*zeta^4 - 8*zeta^2 - 8*zeta)*q^41 + (2*zeta^5 + 
2*zeta^2 + 2*zeta)*q^43 + (-2*zeta^5 + 4*zeta^4 + 2*zeta^2 + 2*zeta)*q^44 + 
(-6*zeta^5 + 6*zeta^4)*q^46 + (-8*zeta^5 + 4*zeta^4 - 4*zeta^2 - 4*zeta)*q^47 + 
(3*zeta^4 + 3*zeta^2 + 3*zeta)*q^49 + (-2*zeta^5 - 2*zeta^4 - 4*zeta^2 - 
4*zeta)*q^50 + (-zeta^5 - zeta^2 - zeta)*q^52 + (-6*zeta^5 + 6*zeta^4)*q^55 + 
(4*zeta^5 - 2*zeta^4 + 2*zeta^2 + 2*zeta)*q^56 + (-3*zeta^4 - 3*zeta^2 - 
3*zeta)*q^58 + (8*zeta^5 + 8*zeta^4 + 16*zeta^2 + 16*zeta)*q^59 + (-7*zeta^5 - 
7*zeta^2 - 7*zeta)*q^61 + (8*zeta^5 - 16*zeta^4 - 8*zeta^2 - 8*zeta)*q^62 + 
(-zeta^5 + zeta^4)*q^64 + (-2*zeta^5 + zeta^4 - zeta^2 - zeta)*q^65 + (10*zeta^4
+ 10*zeta^2 + 10*zeta)*q^67 + (3*zeta^5 + 3*zeta^4 + 6*zeta^2 + 6*zeta)*q^68 + 
(-6*zeta^5 - 6*zeta^2 - 6*zeta)*q^70 + (-6*zeta^5 + 12*zeta^4 + 6*zeta^2 + 
6*zeta)*q^71 + (7*zeta^5 - 7*zeta^4)*q^73 + (14*zeta^5 - 7*zeta^4 + 7*zeta^2 + 
7*zeta)*q^74 + (-2*zeta^4 - 2*zeta^2 - 2*zeta)*q^76 + (-4*zeta^5 - 4*zeta^4 - 
8*zeta^2 - 8*zeta)*q^77 + (2*zeta^5 + 2*zeta^2 + 2*zeta)*q^79 + (5*zeta^5 - 
10*zeta^4 - 5*zeta^2 - 5*zeta)*q^80 + (12*zeta^5 - 12*zeta^4)*q^82 + (16*zeta^5 
- 8*zeta^4 + 8*zeta^2 + 8*zeta)*q^83 + (9*zeta^4 + 9*zeta^2 + 9*zeta)*q^85 + 
(2*zeta^5 + 2*zeta^4 + 4*zeta^2 + 4*zeta)*q^86 + (6*zeta^5 + 6*zeta^2 + 
6*zeta)*q^88 + (-3*zeta^5 + 6*zeta^4 + 3*zeta^2 + 3*zeta)*q^89 + (2*zeta^5 - 
2*zeta^4)*q^91 + (-4*zeta^5 + 2*zeta^4 - 2*zeta^2 - 2*zeta)*q^92 + (-12*zeta^4 -
12*zeta^2 - 12*zeta)*q^94 + (-2*zeta^5 - 2*zeta^4 - 4*zeta^2 - 4*zeta)*q^95 + 
(2*zeta^5 + 2*zeta^2 + 2*zeta)*q^97 + (-3*zeta^5 + 6*zeta^4 + 3*zeta^2 + 
3*zeta)*q^98 + (2*zeta^5 - 2*zeta^4)*q^100 + (-8*zeta^5 + 4*zeta^4 - 4*zeta^2 - 
4*zeta)*q^101 + (-8*zeta^4 - 8*zeta^2 - 8*zeta)*q^103 + (zeta^5 + zeta^4 + 
2*zeta^2 + 2*zeta)*q^104 + (-11*zeta^5 + 11*zeta^4)*q^109 + (-12*zeta^5 + 
6*zeta^4 - 6*zeta^2 - 6*zeta)*q^110 + (10*zeta^4 + 10*zeta^2 + 10*zeta)*q^112 + 
(-zeta^5 - zeta^4 - 2*zeta^2 - 2*zeta)*q^113 + (-6*zeta^5 - 6*zeta^2 - 
6*zeta)*q^115 + (zeta^5 - 2*zeta^4 - zeta^2 - zeta)*q^116 + (-24*zeta^5 + 
24*zeta^4)*q^118 + (-12*zeta^5 + 6*zeta^4 - 6*zeta^2 - 6*zeta)*q^119 + (-zeta^4 
- zeta^2 - zeta)*q^121 + (-7*zeta^5 - 7*zeta^4 - 14*zeta^2 - 14*zeta)*q^122 + 
(8*zeta^5 + 8*zeta^2 + 8*zeta)*q^124 + (7*zeta^5 - 14*zeta^4 - 7*zeta^2 - 
7*zeta)*q^125 + (-2*zeta^5 + 2*zeta^4)*q^127 + (-14*zeta^5 + 7*zeta^4 - 7*zeta^2
- 7*zeta)*q^128 + (-3*zeta^4 - 3*zeta^2 - 3*zeta)*q^130 + (2*zeta^5 + 2*zeta^4 +
4*zeta^2 + 4*zeta)*q^131 + (4*zeta^5 + 4*zeta^2 + 4*zeta)*q^133 + (-10*zeta^5 + 
20*zeta^4 + 10*zeta^2 + 10*zeta)*q^134 + (9*zeta^5 - 9*zeta^4)*q^136 + 
(-2*zeta^5 + zeta^4 - zeta^2 - zeta)*q^137 + (-8*zeta^4 - 8*zeta^2 - 
8*zeta)*q^139 + (-2*zeta^5 - 2*zeta^4 - 4*zeta^2 - 4*zeta)*q^140 + (-18*zeta^5 -
18*zeta^2 - 18*zeta)*q^142 + (2*zeta^5 - 4*zeta^4 - 2*zeta^2 - 2*zeta)*q^143 + 
(3*zeta^5 - 3*zeta^4)*q^145 + (14*zeta^5 - 7*zeta^4 + 7*zeta^2 + 7*zeta)*q^146 +
(7*zeta^4 + 7*zeta^2 + 7*zeta)*q^148 + (5*zeta^5 + 5*zeta^4 + 10*zeta^2 + 
10*zeta)*q^149 + (20*zeta^5 + 20*zeta^2 + 20*zeta)*q^151 + (-2*zeta^5 + 4*zeta^4
+ 2*zeta^2 + 2*zeta)*q^152 + (12*zeta^5 - 12*zeta^4)*q^154 + (16*zeta^5 - 
8*zeta^4 + 8*zeta^2 + 8*zeta)*q^155 + (-17*zeta^4 - 17*zeta^2 - 17*zeta)*q^157 +
(2*zeta^5 + 2*zeta^4 + 4*zeta^2 + 4*zeta)*q^158 + (9*zeta^5 + 9*zeta^2 + 
9*zeta)*q^160 + (4*zeta^5 - 8*zeta^4 - 4*zeta^2 - 4*zeta)*q^161 + (16*zeta^5 - 
16*zeta^4)*q^163 + (8*zeta^5 - 4*zeta^4 + 4*zeta^2 + 4*zeta)*q^164 + (24*zeta^4 
+ 24*zeta^2 + 24*zeta)*q^166 + (-10*zeta^5 - 10*zeta^4 - 20*zeta^2 - 
20*zeta)*q^167 + (-12*zeta^5 - 12*zeta^2 - 12*zeta)*q^169 + (-9*zeta^5 + 
18*zeta^4 + 9*zeta^2 + 9*zeta)*q^170 + (-2*zeta^5 + 2*zeta^4)*q^172 + (22*zeta^5
- 11*zeta^4 + 11*zeta^2 + 11*zeta)*q^173 + (4*zeta^4 + 4*zeta^2 + 4*zeta)*q^175 
+ (10*zeta^5 + 10*zeta^4 + 20*zeta^2 + 20*zeta)*q^176 + (-9*zeta^5 - 9*zeta^2 - 
9*zeta)*q^178 + (12*zeta^5 - 24*zeta^4 - 12*zeta^2 - 12*zeta)*q^179 + (-2*zeta^5
+ 2*zeta^4)*q^181 + (4*zeta^5 - 2*zeta^4 + 2*zeta^2 + 2*zeta)*q^182 + (6*zeta^4 
+ 6*zeta^2 + 6*zeta)*q^184 + (7*zeta^5 + 7*zeta^4 + 14*zeta^2 + 14*zeta)*q^185 +
(-18*zeta^5 - 18*zeta^2 - 18*zeta)*q^187 + (4*zeta^5 - 8*zeta^4 - 4*zeta^2 - 
4*zeta)*q^188 + (6*zeta^5 - 6*zeta^4)*q^190 + (-20*zeta^5 + 10*zeta^4 - 
10*zeta^2 - 10*zeta)*q^191 + (zeta^4 + zeta^2 + zeta)*q^193 + (2*zeta^5 + 
2*zeta^4 + 4*zeta^2 + 4*zeta)*q^194 + (-3*zeta^5 - 3*zeta^2 - 3*zeta)*q^196 + 
(-3*zeta^5 + 6*zeta^4 + 3*zeta^2 + 3*zeta)*q^197 + (-20*zeta^5 + 
20*zeta^4)*q^199 + (-4*zeta^5 + 2*zeta^4 - 2*zeta^2 - 2*zeta)*q^200 + 
(-12*zeta^4 - 12*zeta^2 - 12*zeta)*q^202 + (2*zeta^5 + 2*zeta^4 + 4*zeta^2 + 
4*zeta)*q^203 + (12*zeta^5 + 12*zeta^2 + 12*zeta)*q^205 + (8*zeta^5 - 16*zeta^4 
- 8*zeta^2 - 8*zeta)*q^206 + (-5*zeta^5 + 5*zeta^4)*q^208 + (8*zeta^5 - 4*zeta^4
+ 4*zeta^2 + 4*zeta)*q^209 + (10*zeta^4 + 10*zeta^2 + 10*zeta)*q^211 + 
(-2*zeta^5 + 4*zeta^4 + 2*zeta^2 + 2*zeta)*q^215 + (-16*zeta^5 + 
16*zeta^4)*q^217 + (-22*zeta^5 + 11*zeta^4 - 11*zeta^2 - 11*zeta)*q^218 + 
(-6*zeta^4 - 6*zeta^2 - 6*zeta)*q^220 + (-3*zeta^5 - 3*zeta^4 - 6*zeta^2 - 
6*zeta)*q^221 + (2*zeta^5 + 2*zeta^2 + 2*zeta)*q^223 + (-6*zeta^5 + 12*zeta^4 + 
6*zeta^2 + 6*zeta)*q^224 + (3*zeta^5 - 3*zeta^4)*q^226 + (4*zeta^5 - 2*zeta^4 + 
2*zeta^2 + 2*zeta)*q^227 + (zeta^4 + zeta^2 + zeta)*q^229 + (-6*zeta^5 - 
6*zeta^4 - 12*zeta^2 - 12*zeta)*q^230 + (-3*zeta^5 - 3*zeta^2 - 3*zeta)*q^232 + 
(-15*zeta^5 + 30*zeta^4 + 15*zeta^2 + 15*zeta)*q^233 + (12*zeta^5 - 
12*zeta^4)*q^235 + (-16*zeta^5 + 8*zeta^4 - 8*zeta^2 - 8*zeta)*q^236 + 
(-18*zeta^4 - 18*zeta^2 - 18*zeta)*q^238 + (-16*zeta^5 - 16*zeta^4 - 32*zeta^2 -
32*zeta)*q^239 + (29*zeta^5 + 29*zeta^2 + 29*zeta)*q^241 + (zeta^5 - 2*zeta^4 - 
zeta^2 - zeta)*q^242 + (7*zeta^5 - 7*zeta^4)*q^244 + (-6*zeta^5 + 3*zeta^4 - 
3*zeta^2 - 3*zeta)*q^245 + (2*zeta^4 + 2*zeta^2 + 2*zeta)*q^247 + (-8*zeta^5 - 
8*zeta^4 - 16*zeta^2 - 16*zeta)*q^248 + (21*zeta^5 + 21*zeta^2 + 21*zeta)*q^250 
+ (6*zeta^5 - 12*zeta^4 - 6*zeta^2 - 6*zeta)*q^251 + (12*zeta^5 - 
12*zeta^4)*q^253 + (-4*zeta^5 + 2*zeta^4 - 2*zeta^2 - 2*zeta)*q^254 + 
(-19*zeta^4 - 19*zeta^2 - 19*zeta)*q^256 + (5*zeta^5 + 5*zeta^4 + 10*zeta^2 + 
10*zeta)*q^257 + (-14*zeta^5 - 14*zeta^2 - 14*zeta)*q^259 + (zeta^5 - 2*zeta^4 -
zeta^2 - zeta)*q^260 + (-6*zeta^5 + 6*zeta^4)*q^262 + (-8*zeta^5 + 4*zeta^4 - 
4*zeta^2 - 4*zeta)*q^263 + (4*zeta^5 + 4*zeta^4 + 8*zeta^2 + 8*zeta)*q^266 + 
(-10*zeta^5 - 10*zeta^2 - 10*zeta)*q^268 + (-9*zeta^5 + 18*zeta^4 + 9*zeta^2 + 
9*zeta)*q^269 + (-2*zeta^5 + 2*zeta^4)*q^271 + (30*zeta^5 - 15*zeta^4 + 
15*zeta^2 + 15*zeta)*q^272 + (-3*zeta^4 - 3*zeta^2 - 3*zeta)*q^274 + (4*zeta^5 +
4*zeta^4 + 8*zeta^2 + 8*zeta)*q^275 + (2*zeta^5 + 2*zeta^2 + 2*zeta)*q^277 + 
(8*zeta^5 - 16*zeta^4 - 8*zeta^2 - 8*zeta)*q^278 + (-6*zeta^5 + 6*zeta^4)*q^280 
+ (-14*zeta^5 + 7*zeta^4 - 7*zeta^2 - 7*zeta)*q^281 + (28*zeta^4 + 28*zeta^2 + 
28*zeta)*q^283 + (-6*zeta^5 - 6*zeta^4 - 12*zeta^2 - 12*zeta)*q^284 + (6*zeta^5 
+ 6*zeta^2 + 6*zeta)*q^286 + (-8*zeta^5 + 16*zeta^4 + 8*zeta^2 + 8*zeta)*q^287 +
(-10*zeta^5 + 10*zeta^4)*q^289 + (6*zeta^5 - 3*zeta^4 + 3*zeta^2 + 3*zeta)*q^290
+ (7*zeta^4 + 7*zeta^2 + 7*zeta)*q^292 + (11*zeta^5 + 11*zeta^4 + 22*zeta^2 + 
22*zeta)*q^293 + (-24*zeta^5 - 24*zeta^2 - 24*zeta)*q^295 + (7*zeta^5 - 
14*zeta^4 - 7*zeta^2 - 7*zeta)*q^296 + (-15*zeta^5 + 15*zeta^4)*q^298 + 
(4*zeta^5 - 2*zeta^4 + 2*zeta^2 + 2*zeta)*q^299 + (-4*zeta^4 - 4*zeta^2 - 
4*zeta)*q^301 + (20*zeta^5 + 20*zeta^4 + 40*zeta^2 + 40*zeta)*q^302 + 
(-10*zeta^5 - 10*zeta^2 - 10*zeta)*q^304 + (7*zeta^5 - 14*zeta^4 - 7*zeta^2 - 
7*zeta)*q^305 + (16*zeta^5 - 16*zeta^4)*q^307 + (8*zeta^5 - 4*zeta^4 + 4*zeta^2 
+ 4*zeta)*q^308 + (24*zeta^4 + 24*zeta^2 + 24*zeta)*q^310 + (-4*zeta^5 - 
4*zeta^4 - 8*zeta^2 - 8*zeta)*q^311 + (-25*zeta^5 - 25*zeta^2 - 25*zeta)*q^313 +
(17*zeta^5 - 34*zeta^4 - 17*zeta^2 - 17*zeta)*q^314 + (-2*zeta^5 + 
2*zeta^4)*q^316 + (10*zeta^5 - 5*zeta^4 + 5*zeta^2 + 5*zeta)*q^317 + (6*zeta^4 +
6*zeta^2 + 6*zeta)*q^319 + (-zeta^5 - zeta^4 - 2*zeta^2 - 2*zeta)*q^320 + 
(12*zeta^5 + 12*zeta^2 + 12*zeta)*q^322 + (6*zeta^5 - 12*zeta^4 - 6*zeta^2 - 
6*zeta)*q^323 + (-2*zeta^5 + 2*zeta^4)*q^325 + (32*zeta^5 - 16*zeta^4 + 
16*zeta^2 + 16*zeta)*q^326 + (-12*zeta^4 - 12*zeta^2 - 12*zeta)*q^328 + 
(8*zeta^5 + 8*zeta^4 + 16*zeta^2 + 16*zeta)*q^329 + (2*zeta^5 + 2*zeta^2 + 
2*zeta)*q^331 + (-8*zeta^5 + 16*zeta^4 + 8*zeta^2 + 8*zeta)*q^332 + (30*zeta^5 -
30*zeta^4)*q^334 + (-20*zeta^5 + 10*zeta^4 - 10*zeta^2 - 10*zeta)*q^335 + 
(-26*zeta^4 - 26*zeta^2 - 26*zeta)*q^337 + (-12*zeta^5 - 12*zeta^4 - 24*zeta^2 -
24*zeta)*q^338 + (-9*zeta^5 - 9*zeta^2 - 9*zeta)*q^340 + (-16*zeta^5 + 32*zeta^4
+ 16*zeta^2 + 16*zeta)*q^341 + (20*zeta^5 - 20*zeta^4)*q^343 + (4*zeta^5 - 
2*zeta^4 + 2*zeta^2 + 2*zeta)*q^344 + (33*zeta^4 + 33*zeta^2 + 33*zeta)*q^346 + 
(2*zeta^5 + 2*zeta^4 + 4*zeta^2 + 4*zeta)*q^347 + (2*zeta^5 + 2*zeta^2 + 
2*zeta)*q^349 + (-4*zeta^5 + 8*zeta^4 + 4*zeta^2 + 4*zeta)*q^350 + (-18*zeta^5 +
18*zeta^4)*q^352 + (16*zeta^5 - 8*zeta^4 + 8*zeta^2 + 8*zeta)*q^353 + 
(-18*zeta^4 - 18*zeta^2 - 18*zeta)*q^355 + (-3*zeta^5 - 3*zeta^4 - 6*zeta^2 - 
6*zeta)*q^356 + (36*zeta^5 + 36*zeta^2 + 36*zeta)*q^358 + (6*zeta^5 - 12*zeta^4 
- 6*zeta^2 - 6*zeta)*q^359 + (15*zeta^5 - 15*zeta^4)*q^361 + (-4*zeta^5 + 
2*zeta^4 - 2*zeta^2 - 2*zeta)*q^362 + (2*zeta^4 + 2*zeta^2 + 2*zeta)*q^364 + 
(7*zeta^5 + 7*zeta^4 + 14*zeta^2 + 14*zeta)*q^365 + (20*zeta^5 + 20*zeta^2 + 
20*zeta)*q^367 + (-10*zeta^5 + 20*zeta^4 + 10*zeta^2 + 10*zeta)*q^368 + 
(-21*zeta^5 + 21*zeta^4)*q^370 + (10*zeta^4 + 10*zeta^2 + 10*zeta)*q^373 + 
(-18*zeta^5 - 18*zeta^4 - 36*zeta^2 - 36*zeta)*q^374 + (-12*zeta^5 - 12*zeta^2 -
12*zeta)*q^376 + (-zeta^5 + 2*zeta^4 + zeta^2 + zeta)*q^377 + (16*zeta^5 - 
16*zeta^4)*q^379 + (4*zeta^5 - 2*zeta^4 + 2*zeta^2 + 2*zeta)*q^380 + (-30*zeta^4
- 30*zeta^2 - 30*zeta)*q^382 + (-10*zeta^5 - 10*zeta^4 - 20*zeta^2 - 
20*zeta)*q^383 + (12*zeta^5 + 12*zeta^2 + 12*zeta)*q^385 + (-zeta^5 + 2*zeta^4 +
zeta^2 + zeta)*q^386 + (-2*zeta^5 + 2*zeta^4)*q^388 + (-32*zeta^5 + 16*zeta^4 - 
16*zeta^2 - 16*zeta)*q^389 + (-18*zeta^4 - 18*zeta^2 - 18*zeta)*q^391 + 
(3*zeta^5 + 3*zeta^4 + 6*zeta^2 + 6*zeta)*q^392 + (-9*zeta^5 - 9*zeta^2 - 
9*zeta)*q^394 + (-2*zeta^5 + 4*zeta^4 + 2*zeta^2 + 2*zeta)*q^395 + (-29*zeta^5 +
29*zeta^4)*q^397 + (-40*zeta^5 + 20*zeta^4 - 20*zeta^2 - 20*zeta)*q^398 + 
(-10*zeta^4 - 10*zeta^2 - 10*zeta)*q^400 + (-7*zeta^5 - 7*zeta^4 - 14*zeta^2 - 
14*zeta)*q^401 + (-8*zeta^5 - 8*zeta^2 - 8*zeta)*q^403 + (4*zeta^5 - 8*zeta^4 - 
4*zeta^2 - 4*zeta)*q^404 + (-6*zeta^5 + 6*zeta^4)*q^406 + (-28*zeta^5 + 
14*zeta^4 - 14*zeta^2 - 14*zeta)*q^407 + (19*zeta^4 + 19*zeta^2 + 19*zeta)*q^409
+ (12*zeta^5 + 12*zeta^4 + 24*zeta^2 + 24*zeta)*q^410 + (8*zeta^5 + 8*zeta^2 + 
8*zeta)*q^412 + (16*zeta^5 - 32*zeta^4 - 16*zeta^2 - 16*zeta)*q^413 + 
(-24*zeta^5 + 24*zeta^4)*q^415 + (-6*zeta^5 + 3*zeta^4 - 3*zeta^2 - 
3*zeta)*q^416 + (12*zeta^4 + 12*zeta^2 + 12*zeta)*q^418 + (-4*zeta^5 - 4*zeta^4 
- 8*zeta^2 - 8*zeta)*q^419 + (-25*zeta^5 - 25*zeta^2 - 25*zeta)*q^421 + 
(-10*zeta^5 + 20*zeta^4 + 10*zeta^2 + 10*zeta)*q^422 + (12*zeta^5 - 6*zeta^4 + 
6*zeta^2 + 6*zeta)*q^425 + (14*zeta^4 + 14*zeta^2 + 14*zeta)*q^427 + (-6*zeta^5 
- 6*zeta^2 - 6*zeta)*q^430 + (-11*zeta^5 + 11*zeta^4)*q^433 + (-32*zeta^5 + 
16*zeta^4 - 16*zeta^2 - 16*zeta)*q^434 + (-11*zeta^4 - 11*zeta^2 - 
11*zeta)*q^436 + (4*zeta^5 + 4*zeta^4 + 8*zeta^2 + 8*zeta)*q^437 + (20*zeta^5 + 
20*zeta^2 + 20*zeta)*q^439 + (-6*zeta^5 + 12*zeta^4 + 6*zeta^2 + 6*zeta)*q^440 +
(9*zeta^5 - 9*zeta^4)*q^442 + (40*zeta^5 - 20*zeta^4 + 20*zeta^2 + 
20*zeta)*q^443 + (-9*zeta^4 - 9*zeta^2 - 9*zeta)*q^445 + (2*zeta^5 + 2*zeta^4 + 
4*zeta^2 + 4*zeta)*q^446 + (2*zeta^5 + 2*zeta^2 + 2*zeta)*q^448 + (12*zeta^5 - 
24*zeta^4 - 12*zeta^2 - 12*zeta)*q^449 + (-24*zeta^5 + 24*zeta^4)*q^451 + 
(2*zeta^5 - zeta^4 + zeta^2 + zeta)*q^452 + (6*zeta^4 + 6*zeta^2 + 6*zeta)*q^454
+ (2*zeta^5 + 2*zeta^4 + 4*zeta^2 + 4*zeta)*q^455 + (29*zeta^5 + 29*zeta^2 + 
29*zeta)*q^457 + (-zeta^5 + 2*zeta^4 + zeta^2 + zeta)*q^458 + (6*zeta^5 - 
6*zeta^4)*q^460 + (16*zeta^5 - 8*zeta^4 + 8*zeta^2 + 8*zeta)*q^461 + (-8*zeta^4 
- 8*zeta^2 - 8*zeta)*q^463 + (-5*zeta^5 - 5*zeta^4 - 10*zeta^2 - 10*zeta)*q^464 
+ (-45*zeta^5 - 45*zeta^2 - 45*zeta)*q^466 + (-12*zeta^5 + 24*zeta^4 + 12*zeta^2
+ 12*zeta)*q^467 + (20*zeta^5 - 20*zeta^4)*q^469 + (24*zeta^5 - 12*zeta^4 + 
12*zeta^2 + 12*zeta)*q^470 + (24*zeta^4 + 24*zeta^2 + 24*zeta)*q^472 + 
(-4*zeta^5 - 4*zeta^4 - 8*zeta^2 - 8*zeta)*q^473 + (-4*zeta^5 - 4*zeta^2 - 
4*zeta)*q^475 + (6*zeta^5 - 12*zeta^4 - 6*zeta^2 - 6*zeta)*q^476 + (48*zeta^5 - 
48*zeta^4)*q^478 + (28*zeta^5 - 14*zeta^4 + 14*zeta^2 + 14*zeta)*q^479 + 
(-7*zeta^4 - 7*zeta^2 - 7*zeta)*q^481 + (29*zeta^5 + 29*zeta^4 + 58*zeta^2 + 
58*zeta)*q^482 + (zeta^5 + zeta^2 + zeta)*q^484 + (-2*zeta^5 + 4*zeta^4 + 
2*zeta^2 + 2*zeta)*q^485 + (16*zeta^5 - 16*zeta^4)*q^487 + (-14*zeta^5 + 
7*zeta^4 - 7*zeta^2 - 7*zeta)*q^488 + (-9*zeta^4 - 9*zeta^2 - 9*zeta)*q^490 + 
(-10*zeta^5 - 10*zeta^4 - 20*zeta^2 - 20*zeta)*q^491 + (9*zeta^5 + 9*zeta^2 + 
9*zeta)*q^493 + (-2*zeta^5 + 4*zeta^4 + 2*zeta^2 + 2*zeta)*q^494 + (40*zeta^5 - 
40*zeta^4)*q^496 + (24*zeta^5 - 12*zeta^4 + 12*zeta^2 + 12*zeta)*q^497 + 
(10*zeta^4 + 10*zeta^2 + 10*zeta)*q^499 + (7*zeta^5 + 7*zeta^4 + 14*zeta^2 + 
14*zeta)*q^500 + (18*zeta^5 + 18*zeta^2 + 18*zeta)*q^502 + (12*zeta^5 - 
24*zeta^4 - 12*zeta^2 - 12*zeta)*q^503 + (12*zeta^5 - 12*zeta^4)*q^505 + 
(24*zeta^5 - 12*zeta^4 + 12*zeta^2 + 12*zeta)*q^506 + (-2*zeta^4 - 2*zeta^2 - 
2*zeta)*q^508 + (-16*zeta^5 - 16*zeta^4 - 32*zeta^2 - 32*zeta)*q^509 + 
(-14*zeta^5 - 14*zeta^2 - 14*zeta)*q^511 + (5*zeta^5 - 10*zeta^4 - 5*zeta^2 - 
5*zeta)*q^512 + (-15*zeta^5 + 15*zeta^4)*q^514 + (16*zeta^5 - 8*zeta^4 + 
8*zeta^2 + 8*zeta)*q^515 + (24*zeta^4 + 24*zeta^2 + 24*zeta)*q^517 + (-14*zeta^5
- 14*zeta^4 - 28*zeta^2 - 28*zeta)*q^518 + (-3*zeta^5 - 3*zeta^2 - 3*zeta)*q^520
+ (-12*zeta^5 + 24*zeta^4 + 12*zeta^2 + 12*zeta)*q^521 + (-38*zeta^5 + 
38*zeta^4)*q^523 + (-4*zeta^5 + 2*zeta^4 - 2*zeta^2 - 2*zeta)*q^524 + 
(-12*zeta^4 - 12*zeta^2 - 12*zeta)*q^526 + (24*zeta^5 + 24*zeta^4 + 48*zeta^2 + 
48*zeta)*q^527 + (-11*zeta^5 - 11*zeta^2 - 11*zeta)*q^529 + (-4*zeta^5 + 
4*zeta^4)*q^532 + (-8*zeta^5 + 4*zeta^4 - 4*zeta^2 - 4*zeta)*q^533 + (10*zeta^5 
+ 10*zeta^4 + 20*zeta^2 + 20*zeta)*q^536 + (-27*zeta^5 - 27*zeta^2 - 
27*zeta)*q^538 + (6*zeta^5 - 12*zeta^4 - 6*zeta^2 - 6*zeta)*q^539 + (-11*zeta^5 
+ 11*zeta^4)*q^541 + (-4*zeta^5 + 2*zeta^4 - 2*zeta^2 - 2*zeta)*q^542 + 
(27*zeta^4 + 27*zeta^2 + 27*zeta)*q^544 + (-11*zeta^5 - 11*zeta^4 - 22*zeta^2 - 
22*zeta)*q^545 + (20*zeta^5 + 20*zeta^2 + 20*zeta)*q^547 + (zeta^5 - 2*zeta^4 - 
zeta^2 - zeta)*q^548 + (-12*zeta^5 + 12*zeta^4)*q^550 + (-4*zeta^5 + 2*zeta^4 - 
2*zeta^2 - 2*zeta)*q^551 + (-4*zeta^4 - 4*zeta^2 - 4*zeta)*q^553 + (2*zeta^5 + 
2*zeta^4 + 4*zeta^2 + 4*zeta)*q^554 + (8*zeta^5 + 8*zeta^2 + 8*zeta)*q^556 + 
(21*zeta^5 - 42*zeta^4 - 21*zeta^2 - 21*zeta)*q^557 + (2*zeta^5 - 
2*zeta^4)*q^559 + (-20*zeta^5 + 10*zeta^4 - 10*zeta^2 - 10*zeta)*q^560 + 
(-21*zeta^4 - 21*zeta^2 - 21*zeta)*q^562 + (20*zeta^5 + 20*zeta^4 + 40*zeta^2 + 
40*zeta)*q^563 + (3*zeta^5 + 3*zeta^2 + 3*zeta)*q^565 + (-28*zeta^5 + 56*zeta^4 
+ 28*zeta^2 + 28*zeta)*q^566 + (-18*zeta^5 + 18*zeta^4)*q^568 + (-38*zeta^5 + 
19*zeta^4 - 19*zeta^2 - 19*zeta)*q^569 + (-8*zeta^4 - 8*zeta^2 - 8*zeta)*q^571 +
(2*zeta^5 + 2*zeta^4 + 4*zeta^2 + 4*zeta)*q^572 + (-24*zeta^5 - 24*zeta^2 - 
24*zeta)*q^574 + (-4*zeta^5 + 8*zeta^4 + 4*zeta^2 + 4*zeta)*q^575 + O(q^576)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 3);
              X_9C4 := Curve(P_Q, [ PolynomialRing(RationalField(), 4) |
x[1]^2 + x[1]*x[2] + x[2]^2 - x[3]^2 + 2*x[3]*x[4] + 2*x[4]^2,
x[1]^2*x[2] + 1/3*x[1]*x[3]^2 - 2/3*x[1]*x[3]*x[4] - 2/3*x[1]*x[4]^2 + 
1/2*x[2]^3 - 5/6*x[2]*x[3]^2 + 5/3*x[2]*x[3]*x[4] + 5/3*x[2]*x[4]^2 - 5/6*x[3]^3
+ x[3]^2*x[4] + 2*x[3]*x[4]^2 + 5/6*x[4]^3,
x[1]*x[2]^2 - 1/3*x[1]*x[3]^2 + 2/3*x[1]*x[3]*x[4] + 2/3*x[1]*x[4]^2 + 
1/2*x[2]^3 - 1/6*x[2]*x[3]^2 + 1/3*x[2]*x[3]*x[4] + 1/3*x[2]*x[4]^2 + 5/6*x[3]^3
- x[3]^2*x[4] - 2*x[3]*x[4]^2 - 5/6*x[4]^3
]);
