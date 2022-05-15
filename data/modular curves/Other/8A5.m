
    /****************************************************
    Loading this file in magma loads the objects fs_8A5 
    and X_8A5. fs_8A5 is a list of power series which form 
    a basis for the space of cusp forms. X_8A5 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, \[ 1, 0, 0, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_8A5 := [Kq | (-zeta^3 + zeta)*q + (3*zeta^3 - 3*zeta)*q^9 + 
(-2*zeta^3 + 2*zeta)*q^17 + (zeta^3 - zeta)*q^25 + (-10*zeta^3 + 10*zeta)*q^41 +
(7*zeta^3 - 7*zeta)*q^49 + (12*zeta^3 - 12*zeta)*q^65 + (6*zeta^3 - 6*zeta)*q^73
+ (-9*zeta^3 + 9*zeta)*q^81 + (-10*zeta^3 + 10*zeta)*q^89 + (-18*zeta^3 + 
18*zeta)*q^97 + (14*zeta^3 - 14*zeta)*q^113 + (11*zeta^3 - 11*zeta)*q^121 + 
(22*zeta^3 - 22*zeta)*q^137 + (-20*zeta^3 + 20*zeta)*q^145 + (6*zeta^3 - 
6*zeta)*q^153 + (-23*zeta^3 + 23*zeta)*q^169 + (-4*zeta^3 + 4*zeta)*q^185 + 
(14*zeta^3 - 14*zeta)*q^193 + (-3*zeta^3 + 3*zeta)*q^225 + (-26*zeta^3 + 
26*zeta)*q^233 + (30*zeta^3 - 30*zeta)*q^241 + (-2*zeta^3 + 2*zeta)*q^257 + 
(28*zeta^3 - 28*zeta)*q^265 + (-10*zeta^3 + 10*zeta)*q^281 + (13*zeta^3 - 
13*zeta)*q^289 + (-20*zeta^3 + 20*zeta)*q^305 + (-26*zeta^3 + 26*zeta)*q^313 + 
(-18*zeta^3 + 18*zeta)*q^337 + (-34*zeta^3 + 34*zeta)*q^353 + (19*zeta^3 - 
19*zeta)*q^361 + (30*zeta^3 - 30*zeta)*q^369 + (60*zeta^3 - 60*zeta)*q^377 + 
(-2*zeta^3 + 2*zeta)*q^401 + (6*zeta^3 - 6*zeta)*q^409 + (2*zeta^3 - 
2*zeta)*q^425 + (-34*zeta^3 + 34*zeta)*q^433 + (-21*zeta^3 + 21*zeta)*q^441 + 
(14*zeta^3 - 14*zeta)*q^449 + (-42*zeta^3 + 42*zeta)*q^457 + (12*zeta^3 - 
12*zeta)*q^481 + (-4*zeta^3 + 4*zeta)*q^505 + (22*zeta^3 - 22*zeta)*q^521 + 
(23*zeta^3 - 23*zeta)*q^529 + (12*zeta^3 - 12*zeta)*q^545 + (-26*zeta^3 + 
26*zeta)*q^569 + (-2*zeta^3 + 2*zeta)*q^577 + O(q^584), (-zeta^3 + zeta)*q + 
(3*zeta^3 - 3*zeta)*q^9 + (-2*zeta^3 + 2*zeta)*q^17 + (zeta^3 - zeta)*q^25 + 
(-10*zeta^3 + 10*zeta)*q^41 + (7*zeta^3 - 7*zeta)*q^49 + (12*zeta^3 - 
12*zeta)*q^65 + (6*zeta^3 - 6*zeta)*q^73 + (-9*zeta^3 + 9*zeta)*q^81 + 
(-10*zeta^3 + 10*zeta)*q^89 + (-18*zeta^3 + 18*zeta)*q^97 + (14*zeta^3 - 
14*zeta)*q^113 + (11*zeta^3 - 11*zeta)*q^121 + (22*zeta^3 - 22*zeta)*q^137 + 
(-20*zeta^3 + 20*zeta)*q^145 + (6*zeta^3 - 6*zeta)*q^153 + (-23*zeta^3 + 
23*zeta)*q^169 + (-4*zeta^3 + 4*zeta)*q^185 + (14*zeta^3 - 14*zeta)*q^193 + 
(-3*zeta^3 + 3*zeta)*q^225 + (-26*zeta^3 + 26*zeta)*q^233 + (30*zeta^3 - 
30*zeta)*q^241 + (-2*zeta^3 + 2*zeta)*q^257 + (28*zeta^3 - 28*zeta)*q^265 + 
(-10*zeta^3 + 10*zeta)*q^281 + (13*zeta^3 - 13*zeta)*q^289 + (-20*zeta^3 + 
20*zeta)*q^305 + (-26*zeta^3 + 26*zeta)*q^313 + (-18*zeta^3 + 18*zeta)*q^337 + 
(-34*zeta^3 + 34*zeta)*q^353 + (19*zeta^3 - 19*zeta)*q^361 + (30*zeta^3 - 
30*zeta)*q^369 + (60*zeta^3 - 60*zeta)*q^377 + (-2*zeta^3 + 2*zeta)*q^401 + 
(6*zeta^3 - 6*zeta)*q^409 + (2*zeta^3 - 2*zeta)*q^425 + (-34*zeta^3 + 
34*zeta)*q^433 + (-21*zeta^3 + 21*zeta)*q^441 + (14*zeta^3 - 14*zeta)*q^449 + 
(-42*zeta^3 + 42*zeta)*q^457 + (12*zeta^3 - 12*zeta)*q^481 + (-4*zeta^3 + 
4*zeta)*q^505 + (22*zeta^3 - 22*zeta)*q^521 + (23*zeta^3 - 23*zeta)*q^529 + 
(12*zeta^3 - 12*zeta)*q^545 + (-26*zeta^3 + 26*zeta)*q^569 + (-2*zeta^3 + 
2*zeta)*q^577 + O(q^584), q^2 - 2*q^10 - 3*q^18 + 6*q^26 + 2*q^34 - q^50 - 
10*q^58 - 2*q^74 + 10*q^82 + 6*q^90 - 7*q^98 + 14*q^106 - 10*q^122 - 12*q^130 - 
6*q^146 + 9*q^162 - 4*q^170 + 10*q^178 + 18*q^194 - 2*q^202 + 6*q^218 - 14*q^226
- 18*q^234 - 11*q^242 + 12*q^250 - 22*q^274 + 20*q^290 + 14*q^298 - 6*q^306 + 
22*q^314 + 23*q^338 - 26*q^346 - 18*q^362 + 4*q^370 - 14*q^386 - 2*q^394 - 
20*q^410 + 12*q^442 + 3*q^450 + 30*q^458 + 26*q^466 - 30*q^482 + 14*q^490 + 
2*q^514 + 30*q^522 - 28*q^530 - 26*q^538 - 18*q^554 + 10*q^562 - 13*q^578 + 
O(q^584), (-zeta^3 + zeta)*q^5 + (3*zeta^3 - 3*zeta)*q^13 + (-5*zeta^3 + 
5*zeta)*q^29 + (-zeta^3 + zeta)*q^37 + (3*zeta^3 - 3*zeta)*q^45 + (7*zeta^3 - 
7*zeta)*q^53 + (-5*zeta^3 + 5*zeta)*q^61 + (-2*zeta^3 + 2*zeta)*q^85 + (-zeta^3 
+ zeta)*q^101 + (3*zeta^3 - 3*zeta)*q^109 + (-9*zeta^3 + 9*zeta)*q^117 + 
(6*zeta^3 - 6*zeta)*q^125 + (7*zeta^3 - 7*zeta)*q^149 + (11*zeta^3 - 
11*zeta)*q^157 + (-13*zeta^3 + 13*zeta)*q^173 + (-9*zeta^3 + 9*zeta)*q^181 + 
(-zeta^3 + zeta)*q^197 + (-10*zeta^3 + 10*zeta)*q^205 + (6*zeta^3 - 
6*zeta)*q^221 + (15*zeta^3 - 15*zeta)*q^229 + (7*zeta^3 - 7*zeta)*q^245 + 
(15*zeta^3 - 15*zeta)*q^261 + (-13*zeta^3 + 13*zeta)*q^269 + (-9*zeta^3 + 
9*zeta)*q^277 + (-17*zeta^3 + 17*zeta)*q^293 + (11*zeta^3 - 11*zeta)*q^317 + 
(-3*zeta^3 + 3*zeta)*q^325 + (3*zeta^3 - 3*zeta)*q^333 + (-5*zeta^3 + 
5*zeta)*q^349 + (6*zeta^3 - 6*zeta)*q^365 + (7*zeta^3 - 7*zeta)*q^373 + 
(-17*zeta^3 + 17*zeta)*q^389 + (19*zeta^3 - 19*zeta)*q^397 + (-9*zeta^3 + 
9*zeta)*q^405 + (15*zeta^3 - 15*zeta)*q^421 + (-10*zeta^3 + 10*zeta)*q^445 + 
(19*zeta^3 - 19*zeta)*q^461 + (-21*zeta^3 + 21*zeta)*q^477 + (-18*zeta^3 + 
18*zeta)*q^485 + (-10*zeta^3 + 10*zeta)*q^493 + (-5*zeta^3 + 5*zeta)*q^509 + 
(30*zeta^3 - 30*zeta)*q^533 + (-21*zeta^3 + 21*zeta)*q^541 + (15*zeta^3 - 
15*zeta)*q^549 + (19*zeta^3 - 19*zeta)*q^557 + (14*zeta^3 - 14*zeta)*q^565 + 
O(q^584), zeta^2*q - zeta^2*q^9 - 6*zeta^2*q^17 + 5*zeta^2*q^25 + 12*zeta^2*q^33
- 6*zeta^2*q^41 - 7*zeta^2*q^49 - 4*zeta^2*q^57 + 2*zeta^2*q^73 - 11*zeta^2*q^81
+ 18*zeta^2*q^89 + 10*zeta^2*q^97 + 18*zeta^2*q^113 - 25*zeta^2*q^121 - 
20*zeta^2*q^129 - 6*zeta^2*q^137 + 6*zeta^2*q^153 + 13*zeta^2*q^169 + 
12*zeta^2*q^177 - 22*zeta^2*q^193 + 28*zeta^2*q^201 + 12*zeta^2*q^209 - 
5*zeta^2*q^225 - 30*zeta^2*q^233 + 26*zeta^2*q^241 - 36*zeta^2*q^249 - 
30*zeta^2*q^257 + 18*zeta^2*q^281 + 19*zeta^2*q^289 + 24*zeta^2*q^297 + 
10*zeta^2*q^313 + 12*zeta^2*q^321 - 14*zeta^2*q^337 - 30*zeta^2*q^353 + 
15*zeta^2*q^361 + 6*zeta^2*q^369 - 36*zeta^2*q^393 - 6*zeta^2*q^401 - 
22*zeta^2*q^409 + 44*zeta^2*q^417 - 30*zeta^2*q^425 - 38*zeta^2*q^433 + 
7*zeta^2*q^441 + 42*zeta^2*q^449 + 26*zeta^2*q^457 + 60*zeta^2*q^473 - 
4*zeta^2*q^489 - 8*zeta^2*q^513 - 6*zeta^2*q^521 - 23*zeta^2*q^529 - 
36*zeta^2*q^537 - 72*zeta^2*q^561 + 42*zeta^2*q^569 + 34*zeta^2*q^577 + 
O(q^584), zeta^2*q^3 - 3*zeta^2*q^11 + zeta^2*q^19 + 2*zeta^2*q^27 + 
5*zeta^2*q^43 - 6*zeta^2*q^51 - 3*zeta^2*q^59 - 7*zeta^2*q^67 + 5*zeta^2*q^75 + 
9*zeta^2*q^83 + 3*zeta^2*q^99 - 3*zeta^2*q^107 - 6*zeta^2*q^123 + 9*zeta^2*q^131
- 11*zeta^2*q^139 - 7*zeta^2*q^147 + zeta^2*q^163 - zeta^2*q^171 + 
9*zeta^2*q^179 + 18*zeta^2*q^187 - 7*zeta^2*q^211 + 2*zeta^2*q^219 - 
15*zeta^2*q^227 - 5*zeta^2*q^243 - 3*zeta^2*q^251 + 18*zeta^2*q^267 - 
15*zeta^2*q^275 - 11*zeta^2*q^283 + 10*zeta^2*q^291 + 17*zeta^2*q^307 - 
6*zeta^2*q^323 + 13*zeta^2*q^331 + 18*zeta^2*q^339 - 3*zeta^2*q^347 - 
25*zeta^2*q^363 - 19*zeta^2*q^379 - 5*zeta^2*q^387 - 6*zeta^2*q^411 + 
9*zeta^2*q^419 + 21*zeta^2*q^443 + 18*zeta^2*q^451 - 12*zeta^2*q^459 - 
15*zeta^2*q^467 + 5*zeta^2*q^475 + 21*zeta^2*q^491 - 7*zeta^2*q^499 + 
13*zeta^2*q^507 - 19*zeta^2*q^523 + 3*zeta^2*q^531 + 21*zeta^2*q^539 - 
23*zeta^2*q^547 - 15*zeta^2*q^563 - 11*zeta^2*q^571 - 22*zeta^2*q^579 + 
O(q^584)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 4);
              X_8A5 := Curve(P_Q, [ PolynomialRing(RationalField(), 5) |
x[1]^2 + 4*x[3]^2 + 2*x[4]^2,
x[1]*x[3] + 2*x[5]^2,
x[2]^2 + x[4]*x[5]
]);
