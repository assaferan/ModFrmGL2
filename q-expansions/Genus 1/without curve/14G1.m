
    /****************************************************
    Loading this file in magma loads the objects fs_14G1 
    and X_14G1. fs_14G1 is a list of power series which form 
    a basis for the space of cusp forms. X_14G1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | 1, -2, -1, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_14G1 := [Kq | 1/3*(-2*zeta^2 + zeta + 3)*q + 1/3*(zeta^2 + zeta
- 2)*q^3 + (zeta^2 - 2*zeta - 1)*q^5 + 1/3*(-3*zeta^2 - 6*zeta + 7)*q^7 + 
1/3*(-2*zeta^2 + 4*zeta + 2)*q^9 + (-zeta^2 - zeta + 2)*q^11 + 1/3*(-4*zeta^2 + 
2*zeta + 6)*q^13 + (-2*zeta^2 + zeta + 3)*q^15 + (zeta^2 + zeta - 2)*q^17 + 
1/3*(-zeta^2 + 2*zeta + 1)*q^19 + 1/3*(-6*zeta^2 + 9*zeta + 7)*q^21 + (zeta^2 - 
2*zeta - 1)*q^23 + 1/3*(4*zeta^2 + 4*zeta - 8)*q^25 + 1/3*(10*zeta^2 - 5*zeta - 
15)*q^27 + (4*zeta^2 - 2*zeta - 6)*q^29 + 1/3*(-7*zeta^2 - 7*zeta + 14)*q^31 + 
(-zeta^2 + 2*zeta + 1)*q^33 + (9*zeta^2 - 3*zeta - 14)*q^35 + 1/3*(-zeta^2 + 
2*zeta + 1)*q^37 + 1/3*(2*zeta^2 + 2*zeta - 4)*q^39 + (-4*zeta^2 + 2*zeta + 
6)*q^41 + 1/3*(8*zeta^2 - 4*zeta - 12)*q^43 + (-2*zeta^2 - 2*zeta + 4)*q^45 + 
(-3*zeta^2 + 6*zeta + 3)*q^47 + 1/3*(-9*zeta^2 + 24*zeta + 7)*q^49 + (zeta^2 - 
2*zeta - 1)*q^51 + (zeta^2 + zeta - 2)*q^53 + (6*zeta^2 - 3*zeta - 9)*q^55 + 
1/3*(2*zeta^2 - zeta - 3)*q^57 + (3*zeta^2 + 3*zeta - 6)*q^59 + 1/3*(-zeta^2 + 
2*zeta + 1)*q^61 + 1/3*(-18*zeta^2 + 6*zeta + 28)*q^63 + (2*zeta^2 - 4*zeta - 
2)*q^65 + 1/3*(-7*zeta^2 - 7*zeta + 14)*q^67 + (-2*zeta^2 + zeta + 3)*q^69 + 
1/3*(-zeta^2 - zeta + 2)*q^73 + 1/3*(4*zeta^2 - 8*zeta - 4)*q^75 + (6*zeta^2 - 
9*zeta - 7)*q^77 + 1/3*(-13*zeta^2 + 26*zeta + 13)*q^79 + 1/3*(zeta^2 + zeta - 
2)*q^81 + (-8*zeta^2 + 4*zeta + 12)*q^83 + (-6*zeta^2 + 3*zeta + 9)*q^85 + 
(-2*zeta^2 - 2*zeta + 4)*q^87 + (5*zeta^2 - 10*zeta - 5)*q^89 + 1/3*(-6*zeta^2 -
12*zeta + 14)*q^91 + 1/3*(-7*zeta^2 + 14*zeta + 7)*q^93 + (-zeta^2 - zeta + 
2)*q^95 + 1/3*(20*zeta^2 - 10*zeta - 30)*q^97 + (-4*zeta^2 + 2*zeta + 6)*q^99 + 
(5*zeta^2 + 5*zeta - 10)*q^101 + 1/3*(11*zeta^2 - 22*zeta - 11)*q^103 + 
(-3*zeta^2 - 6*zeta + 7)*q^105 + (5*zeta^2 - 10*zeta - 5)*q^107 + 1/3*(-zeta^2 -
zeta + 2)*q^109 + 1/3*(2*zeta^2 - zeta - 3)*q^111 + (-4*zeta^2 + 2*zeta + 
6)*q^113 + (3*zeta^2 + 3*zeta - 6)*q^115 + 1/3*(-4*zeta^2 + 8*zeta + 4)*q^117 + 
(-6*zeta^2 + 9*zeta + 7)*q^119 + 1/3*(-2*zeta^2 + 4*zeta + 2)*q^121 + (2*zeta^2 
+ 2*zeta - 4)*q^123 + (2*zeta^2 - zeta - 3)*q^125 + 1/3*(-16*zeta^2 + 8*zeta + 
24)*q^127 + 1/3*(-4*zeta^2 - 4*zeta + 8)*q^129 + (zeta^2 - 2*zeta - 1)*q^131 + 
1/3*(-9*zeta^2 + 3*zeta + 14)*q^133 + (-5*zeta^2 + 10*zeta + 5)*q^135 + 
(-7*zeta^2 - 7*zeta + 14)*q^137 + 1/3*(-40*zeta^2 + 20*zeta + 60)*q^139 + 
(6*zeta^2 - 3*zeta - 9)*q^141 + (-2*zeta^2 - 2*zeta + 4)*q^143 + (-6*zeta^2 + 
12*zeta + 6)*q^145 + 1/3*(24*zeta^2 - 15*zeta - 35)*q^147 + (zeta^2 - 2*zeta - 
1)*q^149 + 1/3*(17*zeta^2 + 17*zeta - 34)*q^151 + (4*zeta^2 - 2*zeta - 6)*q^153 
+ (14*zeta^2 - 7*zeta - 21)*q^155 + 1/3*(-13*zeta^2 - 13*zeta + 26)*q^157 + 
(zeta^2 - 2*zeta - 1)*q^159 + (9*zeta^2 - 3*zeta - 14)*q^161 + 1/3*(11*zeta^2 - 
22*zeta - 11)*q^163 + (-3*zeta^2 - 3*zeta + 6)*q^165 + (8*zeta^2 - 4*zeta - 
12)*q^167 + (6*zeta^2 - 3*zeta - 9)*q^169 + 1/3*(2*zeta^2 + 2*zeta - 4)*q^171 + 
(-3*zeta^2 + 6*zeta + 3)*q^173 + 1/3*(-24*zeta^2 + 36*zeta + 28)*q^175 + 
(3*zeta^2 - 6*zeta - 3)*q^177 + (7*zeta^2 + 7*zeta - 14)*q^179 + 1/3*(20*zeta^2 
- 10*zeta - 30)*q^181 + 1/3*(2*zeta^2 - zeta - 3)*q^183 + (-zeta^2 - zeta + 
2)*q^185 + (-3*zeta^2 + 6*zeta + 3)*q^187 + 1/3*(15*zeta^2 + 30*zeta - 35)*q^189
+ (-3*zeta^2 + 6*zeta + 3)*q^191 + 1/3*(11*zeta^2 + 11*zeta - 22)*q^193 + 
(-4*zeta^2 + 2*zeta + 6)*q^195 + (-12*zeta^2 + 6*zeta + 18)*q^197 + 
1/3*(-7*zeta^2 - 7*zeta + 14)*q^199 + 1/3*(-7*zeta^2 + 14*zeta + 7)*q^201 + 
(6*zeta^2 + 12*zeta - 14)*q^203 + (6*zeta^2 - 12*zeta - 6)*q^205 + (-2*zeta^2 - 
2*zeta + 4)*q^207 + (-2*zeta^2 + zeta + 3)*q^209 + 1/3*(8*zeta^2 - 4*zeta - 
12)*q^211 + (-4*zeta^2 + 8*zeta + 4)*q^215 + 1/3*(42*zeta^2 - 63*zeta - 
49)*q^217 + 1/3*(-zeta^2 + 2*zeta + 1)*q^219 + (2*zeta^2 + 2*zeta - 4)*q^221 + 
1/3*(-16*zeta^2 + 8*zeta + 24)*q^223 + 1/3*(16*zeta^2 - 8*zeta - 24)*q^225 + 
(-zeta^2 - zeta + 2)*q^227 + 1/3*(11*zeta^2 - 22*zeta - 11)*q^229 + (-9*zeta^2 +
3*zeta + 14)*q^231 + (-7*zeta^2 + 14*zeta + 7)*q^233 + (-9*zeta^2 - 9*zeta + 
18)*q^235 + 1/3*(26*zeta^2 - 13*zeta - 39)*q^237 + (8*zeta^2 - 4*zeta - 
12)*q^239 + 1/3*(-zeta^2 - zeta + 2)*q^241 + 1/3*(16*zeta^2 - 32*zeta - 
16)*q^243 + (-15*zeta^2 - 9*zeta + 28)*q^245 + 1/3*(-2*zeta^2 + 4*zeta + 
2)*q^247 + (4*zeta^2 + 4*zeta - 8)*q^249 + (6*zeta^2 - 3*zeta - 9)*q^253 + 
(3*zeta^2 + 3*zeta - 6)*q^255 + (zeta^2 - 2*zeta - 1)*q^257 + 1/3*(-9*zeta^2 + 
3*zeta + 14)*q^259 + (4*zeta^2 - 8*zeta - 4)*q^261 + (-zeta^2 - zeta + 2)*q^263 
+ (-6*zeta^2 + 3*zeta + 9)*q^265 + (-10*zeta^2 + 5*zeta + 15)*q^267 + (zeta^2 + 
zeta - 2)*q^269 + 1/3*(11*zeta^2 - 22*zeta - 11)*q^271 + 1/3*(-12*zeta^2 + 
18*zeta + 14)*q^273 + (-4*zeta^2 + 8*zeta + 4)*q^275 + 1/3*(-13*zeta^2 - 13*zeta
+ 26)*q^277 + 1/3*(-28*zeta^2 + 14*zeta + 42)*q^279 + (-20*zeta^2 + 10*zeta + 
30)*q^281 + 1/3*(29*zeta^2 + 29*zeta - 58)*q^283 + (-zeta^2 + 2*zeta + 1)*q^285 
+ (-6*zeta^2 - 12*zeta + 14)*q^287 + 1/3*(-8*zeta^2 + 16*zeta + 8)*q^289 + 
1/3*(-10*zeta^2 - 10*zeta + 20)*q^291 + (-4*zeta^2 + 2*zeta + 6)*q^293 + 
(-18*zeta^2 + 9*zeta + 27)*q^295 + (5*zeta^2 + 5*zeta - 10)*q^297 + (2*zeta^2 - 
4*zeta - 2)*q^299 + 1/3*(12*zeta^2 + 24*zeta - 28)*q^301 + (5*zeta^2 - 10*zeta -
5)*q^303 + (-zeta^2 - zeta + 2)*q^305 + 1/3*(56*zeta^2 - 28*zeta - 84)*q^307 + 
1/3*(-22*zeta^2 + 11*zeta + 33)*q^309 + (-9*zeta^2 - 9*zeta + 18)*q^311 + 
1/3*(23*zeta^2 - 46*zeta - 23)*q^313 + (12*zeta^2 - 18*zeta - 14)*q^315 + 
(-3*zeta^2 + 6*zeta + 3)*q^317 + (6*zeta^2 + 6*zeta - 12)*q^319 + (-10*zeta^2 + 
5*zeta + 15)*q^321 + (2*zeta^2 - zeta - 3)*q^323 + 1/3*(8*zeta^2 + 8*zeta - 
16)*q^325 + 1/3*(-zeta^2 + 2*zeta + 1)*q^327 + (-27*zeta^2 + 9*zeta + 42)*q^329 
+ 1/3*(-13*zeta^2 + 26*zeta + 13)*q^331 + 1/3*(2*zeta^2 + 2*zeta - 4)*q^333 + 
(14*zeta^2 - 7*zeta - 21)*q^335 + 1/3*(68*zeta^2 - 34*zeta - 102)*q^337 + 
(2*zeta^2 + 2*zeta - 4)*q^339 + (7*zeta^2 - 14*zeta - 7)*q^341 + 1/3*(57*zeta^2 
- 54*zeta - 77)*q^343 + (3*zeta^2 - 6*zeta - 3)*q^345 + (3*zeta^2 + 3*zeta - 
6)*q^347 + 1/3*(-52*zeta^2 + 26*zeta + 78)*q^349 + 1/3*(20*zeta^2 - 10*zeta - 
30)*q^351 + (-7*zeta^2 - 7*zeta + 14)*q^353 + (9*zeta^2 - 3*zeta - 14)*q^357 + 
(5*zeta^2 - 10*zeta - 5)*q^359 + (-6*zeta^2 - 6*zeta + 12)*q^361 + 1/3*(4*zeta^2
- 2*zeta - 6)*q^363 + (2*zeta^2 - zeta - 3)*q^365 + 1/3*(5*zeta^2 + 5*zeta - 
10)*q^367 + (-4*zeta^2 + 8*zeta + 4)*q^369 + (-6*zeta^2 + 9*zeta + 7)*q^371 + 
1/3*(-25*zeta^2 + 50*zeta + 25)*q^373 + (-zeta^2 - zeta + 2)*q^375 + (8*zeta^2 -
4*zeta - 12)*q^377 + 1/3*(-16*zeta^2 + 8*zeta + 24)*q^379 + 1/3*(8*zeta^2 + 
8*zeta - 16)*q^381 + (-11*zeta^2 + 22*zeta + 11)*q^383 + (9*zeta^2 + 18*zeta - 
21)*q^385 + 1/3*(8*zeta^2 - 16*zeta - 8)*q^387 + (5*zeta^2 + 5*zeta - 10)*q^389 
+ (-6*zeta^2 + 3*zeta + 9)*q^391 + (-2*zeta^2 + zeta + 3)*q^393 + (-13*zeta^2 - 
13*zeta + 26)*q^395 + 1/3*(-37*zeta^2 + 74*zeta + 37)*q^397 + 1/3*(3*zeta^2 + 
6*zeta - 7)*q^399 + (zeta^2 - 2*zeta - 1)*q^401 + 1/3*(-14*zeta^2 - 14*zeta + 
28)*q^403 + (-2*zeta^2 + zeta + 3)*q^405 + (-2*zeta^2 + zeta + 3)*q^407 + 
1/3*(11*zeta^2 + 11*zeta - 22)*q^409 + (-7*zeta^2 + 14*zeta + 7)*q^411 + 
(-18*zeta^2 + 27*zeta + 21)*q^413 + (12*zeta^2 - 24*zeta - 12)*q^415 + 
1/3*(20*zeta^2 + 20*zeta - 40)*q^417 + (8*zeta^2 - 4*zeta - 12)*q^419 + 
1/3*(44*zeta^2 - 22*zeta - 66)*q^421 + (6*zeta^2 + 6*zeta - 12)*q^423 + 
(4*zeta^2 - 8*zeta - 4)*q^425 + 1/3*(-9*zeta^2 + 3*zeta + 14)*q^427 + (-2*zeta^2
+ 4*zeta + 2)*q^429 + (-5*zeta^2 - 5*zeta + 10)*q^431 + 1/3*(20*zeta^2 - 10*zeta
- 30)*q^433 + (12*zeta^2 - 6*zeta - 18)*q^435 + (-zeta^2 - zeta + 2)*q^437 + 
1/3*(-zeta^2 + 2*zeta + 1)*q^439 + 1/3*(30*zeta^2 + 18*zeta - 56)*q^441 + 
(-3*zeta^2 + 6*zeta + 3)*q^443 + (15*zeta^2 + 15*zeta - 30)*q^445 + (-2*zeta^2 +
zeta + 3)*q^447 + (12*zeta^2 - 6*zeta - 18)*q^449 + (-6*zeta^2 - 6*zeta + 
12)*q^451 + 1/3*(17*zeta^2 - 34*zeta - 17)*q^453 + (18*zeta^2 - 6*zeta - 
28)*q^455 + 1/3*(23*zeta^2 - 46*zeta - 23)*q^457 + (-5*zeta^2 - 5*zeta + 
10)*q^459 + (4*zeta^2 - 2*zeta - 6)*q^461 + 1/3*(32*zeta^2 - 16*zeta - 48)*q^463
+ (-7*zeta^2 - 7*zeta + 14)*q^465 + (-7*zeta^2 + 14*zeta + 7)*q^467 + 
1/3*(42*zeta^2 - 63*zeta - 49)*q^469 + 1/3*(-13*zeta^2 + 26*zeta + 13)*q^471 + 
(4*zeta^2 + 4*zeta - 8)*q^473 + 1/3*(8*zeta^2 - 4*zeta - 12)*q^475 + (4*zeta^2 -
2*zeta - 6)*q^477 + (-zeta^2 - zeta + 2)*q^479 + 1/3*(-2*zeta^2 + 4*zeta + 
2)*q^481 + (-3*zeta^2 - 6*zeta + 7)*q^483 + (-10*zeta^2 + 20*zeta + 10)*q^485 + 
1/3*(-19*zeta^2 - 19*zeta + 38)*q^487 + 1/3*(-22*zeta^2 + 11*zeta + 33)*q^489 + 
(-16*zeta^2 + 8*zeta + 24)*q^491 + (-6*zeta^2 - 6*zeta + 12)*q^493 + (6*zeta^2 -
12*zeta - 6)*q^495 + 1/3*(11*zeta^2 - 22*zeta - 11)*q^499 + (-4*zeta^2 - 4*zeta 
+ 8)*q^501 + (-30*zeta^2 + 15*zeta + 45)*q^505 + (-3*zeta^2 - 3*zeta + 6)*q^507 
+ (zeta^2 - 2*zeta - 1)*q^509 + 1/3*(6*zeta^2 - 9*zeta - 7)*q^511 + 
1/3*(5*zeta^2 - 10*zeta - 5)*q^513 + (11*zeta^2 + 11*zeta - 22)*q^515 + 
(-18*zeta^2 + 9*zeta + 27)*q^517 + (6*zeta^2 - 3*zeta - 9)*q^519 + (13*zeta^2 + 
13*zeta - 26)*q^521 + 1/3*(-zeta^2 + 2*zeta + 1)*q^523 + 1/3*(36*zeta^2 - 
12*zeta - 56)*q^525 + (-7*zeta^2 + 14*zeta + 7)*q^527 + 1/3*(-14*zeta^2 - 
14*zeta + 28)*q^529 + (12*zeta^2 - 6*zeta - 18)*q^531 + (-8*zeta^2 + 4*zeta + 
12)*q^533 + (15*zeta^2 + 15*zeta - 30)*q^535 + (7*zeta^2 - 14*zeta - 7)*q^537 + 
(-24*zeta^2 + 15*zeta + 35)*q^539 + 1/3*(35*zeta^2 - 70*zeta - 35)*q^541 + 
1/3*(-10*zeta^2 - 10*zeta + 20)*q^543 + (2*zeta^2 - zeta - 3)*q^545 + 
1/3*(-16*zeta^2 + 8*zeta + 24)*q^547 + 1/3*(2*zeta^2 + 2*zeta - 4)*q^549 + 
(2*zeta^2 - 4*zeta - 2)*q^551 + 1/3*(-117*zeta^2 + 39*zeta + 182)*q^553 + 
(-zeta^2 + 2*zeta + 1)*q^555 + (-11*zeta^2 - 11*zeta + 22)*q^557 + 
1/3*(16*zeta^2 - 8*zeta - 24)*q^559 + (6*zeta^2 - 3*zeta - 9)*q^561 + (3*zeta^2 
+ 3*zeta - 6)*q^563 + (6*zeta^2 - 12*zeta - 6)*q^565 + 1/3*(-6*zeta^2 + 9*zeta +
7)*q^567 + (-3*zeta^2 + 6*zeta + 3)*q^569 + 1/3*(29*zeta^2 + 29*zeta - 58)*q^571
+ (6*zeta^2 - 3*zeta - 9)*q^573 + (-8*zeta^2 + 4*zeta + 12)*q^575 + 1/3*(-zeta^2
- zeta + 2)*q^577 + 1/3*(11*zeta^2 - 22*zeta - 11)*q^579 + (-12*zeta^2 - 24*zeta
+ 28)*q^581 + (-3*zeta^2 + 6*zeta + 3)*q^583 + (-4*zeta^2 - 4*zeta + 8)*q^585 + 
(-8*zeta^2 + 4*zeta + 12)*q^587 + 1/3*(-14*zeta^2 + 7*zeta + 21)*q^589 + 
(6*zeta^2 + 6*zeta - 12)*q^591 + (-7*zeta^2 + 14*zeta + 7)*q^593 + (-9*zeta^2 - 
18*zeta + 21)*q^595 + 1/3*(-7*zeta^2 + 14*zeta + 7)*q^597 + (-9*zeta^2 - 9*zeta 
+ 18)*q^599 + 1/3*(-28*zeta^2 + 14*zeta + 42)*q^601 + 1/3*(-28*zeta^2 + 14*zeta 
+ 42)*q^603 + (-2*zeta^2 - 2*zeta + 4)*q^605 + 1/3*(47*zeta^2 - 94*zeta - 
47)*q^607 + (12*zeta^2 - 18*zeta - 14)*q^609 + (-6*zeta^2 + 12*zeta + 6)*q^611 +
1/3*(-25*zeta^2 - 25*zeta + 50)*q^613 + (-12*zeta^2 + 6*zeta + 18)*q^615 + 
(-4*zeta^2 + 2*zeta + 6)*q^617 + 1/3*(-31*zeta^2 - 31*zeta + 62)*q^619 + 
(-5*zeta^2 + 10*zeta + 5)*q^621 + (45*zeta^2 - 15*zeta - 70)*q^623 + 
1/3*(-29*zeta^2 + 58*zeta + 29)*q^625 + (zeta^2 + zeta - 2)*q^627 + (2*zeta^2 - 
zeta - 3)*q^629 + 1/3*(32*zeta^2 - 16*zeta - 48)*q^631 + 1/3*(-4*zeta^2 - 4*zeta
+ 8)*q^633 + (8*zeta^2 - 16*zeta - 8)*q^635 + 1/3*(-18*zeta^2 + 48*zeta + 
14)*q^637 + (5*zeta^2 + 5*zeta - 10)*q^641 + 1/3*(-40*zeta^2 + 20*zeta + 
60)*q^643 + (8*zeta^2 - 4*zeta - 12)*q^645 + (7*zeta^2 + 7*zeta - 14)*q^647 + 
(-9*zeta^2 + 18*zeta + 9)*q^649 + 1/3*(-63*zeta^2 + 21*zeta + 98)*q^651 + 
(13*zeta^2 - 26*zeta - 13)*q^653 + (3*zeta^2 + 3*zeta - 6)*q^655 + 
1/3*(-4*zeta^2 + 2*zeta + 6)*q^657 + (-8*zeta^2 + 4*zeta + 12)*q^659 + 
1/3*(11*zeta^2 + 11*zeta - 22)*q^661 + (2*zeta^2 - 4*zeta - 2)*q^663 + (6*zeta^2
- 9*zeta - 7)*q^665 + (-6*zeta^2 + 12*zeta + 6)*q^667 + 1/3*(8*zeta^2 + 8*zeta -
16)*q^669 + (-2*zeta^2 + zeta + 3)*q^671 + 1/3*(-28*zeta^2 + 14*zeta + 42)*q^673
+ 1/3*(-20*zeta^2 - 20*zeta + 40)*q^675 + (9*zeta^2 - 18*zeta - 9)*q^677 + 
1/3*(30*zeta^2 + 60*zeta - 70)*q^679 + (-zeta^2 + 2*zeta + 1)*q^681 + (7*zeta^2 
+ 7*zeta - 14)*q^683 + (42*zeta^2 - 21*zeta - 63)*q^685 + 1/3*(-22*zeta^2 + 
11*zeta + 33)*q^687 + (2*zeta^2 + 2*zeta - 4)*q^689 + 1/3*(-13*zeta^2 + 26*zeta 
+ 13)*q^691 + (-6*zeta^2 - 12*zeta + 14)*q^693 + (20*zeta^2 - 40*zeta - 
20)*q^695 + (6*zeta^2 + 6*zeta - 12)*q^697 + (14*zeta^2 - 7*zeta - 21)*q^699 + 
(12*zeta^2 - 6*zeta - 18)*q^701 + 1/3*(zeta^2 + zeta - 2)*q^703 + (-9*zeta^2 + 
18*zeta + 9)*q^705 + (-30*zeta^2 + 45*zeta + 35)*q^707 + 1/3*(-zeta^2 + 2*zeta +
1)*q^709 + 1/3*(26*zeta^2 + 26*zeta - 52)*q^711 + (14*zeta^2 - 7*zeta - 
21)*q^713 + (12*zeta^2 - 6*zeta - 18)*q^715 + (-4*zeta^2 - 4*zeta + 8)*q^717 + 
(-7*zeta^2 + 14*zeta + 7)*q^719 + 1/3*(99*zeta^2 - 33*zeta - 154)*q^721 + 
1/3*(-zeta^2 + 2*zeta + 1)*q^723 + (-8*zeta^2 - 8*zeta + 16)*q^725 + 
1/3*(-64*zeta^2 + 32*zeta + 96)*q^727 + 1/3*(-26*zeta^2 + 13*zeta + 39)*q^729 + 
(-4*zeta^2 - 4*zeta + 8)*q^731 + 1/3*(-25*zeta^2 + 50*zeta + 25)*q^733 + 
(-9*zeta^2 + 24*zeta + 7)*q^735 + (7*zeta^2 - 14*zeta - 7)*q^737 + 
1/3*(-19*zeta^2 - 19*zeta + 38)*q^739 + 1/3*(4*zeta^2 - 2*zeta - 6)*q^741 + 
O(q^742)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_14G1 := Curve(P_Q, [ PolynomialRing(ext<K|Polynomial(K, [1, -2, 
-1, 1])> where K is RationalField(), 2) | ]);
