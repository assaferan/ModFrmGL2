
    /****************************************************
    Loading this file in magma loads the objects fs_14D3 
    and X_14D3. fs_14D3 is a list of power series which form 
    a basis for the space of cusp forms. X_14D3 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | -1, -2, 1, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_14D3 := [Kq | 1/2*(-zeta^2 + 2)*q + 1/2*(-zeta^2 - zeta + 
1)*q^2 + zeta*q^3 - 1/2*zeta*q^4 + (-zeta^2 + 2)*q^6 - q^7 + 1/2*(zeta^2 - 
2)*q^8 + 1/2*(zeta^2 + zeta - 1)*q^9 + (-zeta^2 - zeta + 1)*q^12 + (2*zeta^2 - 
4)*q^13 + q^14 + 1/2*(zeta^2 + zeta - 1)*q^16 - 3*zeta*q^17 + 1/2*zeta*q^18 + 
(zeta^2 + zeta - 1)*q^19 + 2*q^21 - zeta*q^24 + 5/2*zeta*q^25 + (2*zeta^2 + 
2*zeta - 2)*q^26 + (-2*zeta^2 + 4)*q^27 - q^28 + (3*zeta^2 - 6)*q^29 + 
2*zeta*q^31 + 1/2*zeta*q^32 + (3*zeta^2 - 6)*q^34 + 1/2*(-zeta^2 + 2)*q^36 + 
(zeta^2 + zeta - 1)*q^37 + zeta*q^38 - 4*zeta*q^39 + (-3*zeta^2 + 6)*q^41 - 
2*q^42 + (-4*zeta^2 + 8)*q^43 + (-6*zeta^2 - 6*zeta + 6)*q^47 + (zeta^2 - 
2)*q^48 - q^49 + 1/2*(-5*zeta^2 + 10)*q^50 + (-6*zeta^2 - 6*zeta + 6)*q^51 + 
2*zeta*q^52 - 3*zeta*q^53 + (-2*zeta^2 - 2*zeta + 2)*q^54 + q^56 + (2*zeta^2 - 
4)*q^57 + (3*zeta^2 + 3*zeta - 3)*q^58 + 3*zeta*q^59 + (4*zeta^2 + 4*zeta - 
4)*q^61 + (-2*zeta^2 + 4)*q^62 - q^63 + 1/2*(-zeta^2 + 2)*q^64 + 2*zeta*q^67 + 
(3*zeta^2 + 3*zeta - 3)*q^68 + 1/2*(-zeta^2 - zeta + 1)*q^72 - zeta*q^73 + 
zeta*q^74 + (5*zeta^2 + 5*zeta - 5)*q^75 + (-zeta^2 + 2)*q^76 + (4*zeta^2 - 
8)*q^78 + (4*zeta^2 + 4*zeta - 4)*q^79 + 11/2*zeta*q^81 + (-3*zeta^2 - 3*zeta + 
3)*q^82 + (3*zeta^2 - 6)*q^83 + 2*q^84 + (-4*zeta^2 - 4*zeta + 4)*q^86 - 
6*zeta*q^87 + (-3*zeta^2 - 3*zeta + 3)*q^89 + 4*q^91 + (4*zeta^2 + 4*zeta - 
4)*q^93 - 6*zeta*q^94 + (zeta^2 + zeta - 1)*q^96 + (5*zeta^2 - 10)*q^97 + q^98 +
1/2*(-5*zeta^2 - 5*zeta + 5)*q^100 - 6*zeta*q^102 + (-2*zeta^2 - 2*zeta + 
2)*q^103 + (-2*zeta^2 + 4)*q^104 + (3*zeta^2 - 6)*q^106 + (6*zeta^2 + 6*zeta - 
6)*q^107 - 2*zeta*q^108 - zeta*q^109 + (2*zeta^2 - 4)*q^111 - q^112 + (-3*zeta^2
+ 6)*q^113 + (2*zeta^2 + 2*zeta - 2)*q^114 + 3*zeta*q^116 + (-2*zeta^2 - 2*zeta 
+ 2)*q^117 + (-3*zeta^2 + 6)*q^118 - 6*q^119 + 1/2*(-11*zeta^2 - 11*zeta + 
11)*q^121 + 4*zeta*q^122 + 6*zeta*q^123 + (-2*zeta^2 - 2*zeta + 2)*q^124 + q^126
+ (8*zeta^2 - 16)*q^127 + 1/2*(-zeta^2 - zeta + 1)*q^128 + 8*zeta*q^129 + 
(9*zeta^2 + 9*zeta - 9)*q^131 - 2*q^133 + (-2*zeta^2 + 4)*q^134 + 3*zeta*q^136 -
9*zeta*q^137 + (-7*zeta^2 + 14)*q^139 + (-12*zeta^2 + 24)*q^141 - 1/2*zeta*q^144
+ (zeta^2 - 2)*q^146 + 2*q^147 + (-zeta^2 + 2)*q^148 + (-9*zeta^2 - 9*zeta + 
9)*q^149 + 5*zeta*q^150 - 4*zeta*q^151 + (-zeta^2 - zeta + 1)*q^152 + (-3*zeta^2
+ 6)*q^153 + (4*zeta^2 + 4*zeta - 4)*q^156 + 2*zeta*q^157 + 4*zeta*q^158 + 
(-6*zeta^2 - 6*zeta + 6)*q^159 + 1/2*(-11*zeta^2 + 22)*q^162 + (-8*zeta^2 - 
8*zeta + 8)*q^163 - 3*zeta*q^164 + (3*zeta^2 + 3*zeta - 3)*q^166 + (6*zeta^2 - 
12)*q^167 - 2*q^168 + 1/2*(-3*zeta^2 + 6)*q^169 - zeta*q^171 - 4*zeta*q^172 + 
(-6*zeta^2 - 6*zeta + 6)*q^173 + (6*zeta^2 - 12)*q^174 + 5*q^175 + (6*zeta^2 + 
6*zeta - 6)*q^177 - 3*zeta*q^178 + 6*zeta*q^179 + (-10*zeta^2 + 20)*q^181 - 
4*q^182 + (8*zeta^2 - 16)*q^183 + 4*zeta*q^186 + (6*zeta^2 - 12)*q^188 - 4*q^189
+ (12*zeta^2 + 12*zeta - 12)*q^191 + zeta*q^192 - 7*zeta*q^193 + (5*zeta^2 + 
5*zeta - 5)*q^194 - q^196 + (9*zeta^2 - 18)*q^197 - 10*zeta*q^199 - 
5/2*zeta*q^200 + (4*zeta^2 + 4*zeta - 4)*q^201 + 6*q^203 + (6*zeta^2 - 12)*q^204
- 2*zeta*q^206 + (-2*zeta^2 - 2*zeta + 2)*q^208 + (2*zeta^2 - 4)*q^211 + 
(3*zeta^2 + 3*zeta - 3)*q^212 + 6*zeta*q^214 + (2*zeta^2 - 4)*q^216 + 4*q^217 + 
(zeta^2 - 2)*q^218 + (-2*zeta^2 - 2*zeta + 2)*q^219 + 12*zeta*q^221 + (2*zeta^2 
+ 2*zeta - 2)*q^222 + (-4*zeta^2 + 8)*q^223 + q^224 + 1/2*(5*zeta^2 - 10)*q^225 
+ (-3*zeta^2 - 3*zeta + 3)*q^226 - 9*zeta*q^227 + 2*zeta*q^228 + (-2*zeta^2 - 
2*zeta + 2)*q^229 + (-3*zeta^2 + 6)*q^232 + (-3*zeta^2 - 3*zeta + 3)*q^233 - 
2*zeta*q^234 + (-3*zeta^2 - 3*zeta + 3)*q^236 + (8*zeta^2 - 16)*q^237 + 6*q^238 
+ (-12*zeta^2 + 24)*q^239 + 5*zeta*q^241 - 11/2*zeta*q^242 + (5*zeta^2 + 5*zeta 
- 5)*q^243 + (-4*zeta^2 + 8)*q^244 + (-6*zeta^2 + 12)*q^246 + (-4*zeta^2 - 
4*zeta + 4)*q^247 - 2*zeta*q^248 - 6*zeta*q^249 + (9*zeta^2 - 18)*q^251 - q^252 
+ (8*zeta^2 + 8*zeta - 8)*q^254 - 1/2*zeta*q^256 + (9*zeta^2 + 9*zeta - 9)*q^257
+ (-8*zeta^2 + 16)*q^258 - 2*q^259 + (-3*zeta^2 - 3*zeta + 3)*q^261 + 
9*zeta*q^262 + 2*q^266 + (-6*zeta^2 + 12)*q^267 + (-2*zeta^2 - 2*zeta + 2)*q^268
+ 6*zeta*q^269 + (-8*zeta^2 - 8*zeta + 8)*q^271 + (-3*zeta^2 + 6)*q^272 - 
8*q^273 + (9*zeta^2 - 18)*q^274 + 5*zeta*q^277 + (-7*zeta^2 - 7*zeta + 7)*q^278 
+ (2*zeta^2 - 4)*q^279 + (3*zeta^2 - 6)*q^281 + (-12*zeta^2 - 12*zeta + 
12)*q^282 + 11*zeta*q^283 - 6*q^287 + 1/2*(zeta^2 - 2)*q^288 + 1/2*(19*zeta^2 + 
19*zeta - 19)*q^289 - 10*zeta*q^291 + (zeta^2 + zeta - 1)*q^292 + (-12*zeta^2 + 
24)*q^293 - 2*q^294 + (-zeta^2 - zeta + 1)*q^296 - 9*zeta*q^298 + (-5*zeta^2 + 
10)*q^300 - 8*q^301 + (4*zeta^2 - 8)*q^302 - zeta*q^304 + (-3*zeta^2 - 3*zeta + 
3)*q^306 + (-zeta^2 + 2)*q^307 + (-4*zeta^2 + 8)*q^309 + 12*zeta*q^311 + 
4*zeta*q^312 + (-5*zeta^2 - 5*zeta + 5)*q^313 + (-2*zeta^2 + 4)*q^314 + 
(-4*zeta^2 + 8)*q^316 + (3*zeta^2 + 3*zeta - 3)*q^317 - 6*zeta*q^318 + 
(12*zeta^2 - 24)*q^321 + (-6*zeta^2 + 12)*q^323 + 1/2*(-11*zeta^2 - 11*zeta + 
11)*q^324 - 10*zeta*q^325 - 8*zeta*q^326 + (-2*zeta^2 - 2*zeta + 2)*q^327 + 
(3*zeta^2 - 6)*q^328 + 12*q^329 + (4*zeta^2 + 4*zeta - 4)*q^331 + 3*zeta*q^332 -
zeta*q^333 + (6*zeta^2 + 6*zeta - 6)*q^334 + 2*q^336 + (-7*zeta^2 + 14)*q^337 + 
1/2*(-3*zeta^2 - 3*zeta + 3)*q^338 + 6*zeta*q^339 + (zeta^2 - 2)*q^342 - q^343 +
(4*zeta^2 - 8)*q^344 - 6*zeta*q^346 + 12*zeta*q^347 + (6*zeta^2 + 6*zeta - 
6)*q^348 + (14*zeta^2 - 28)*q^349 - 5*q^350 + (8*zeta^2 - 16)*q^351 - 
9*zeta*q^353 + 6*zeta*q^354 + (3*zeta^2 - 6)*q^356 + 12*q^357 + (-6*zeta^2 + 
12)*q^358 + (-12*zeta^2 - 12*zeta + 12)*q^359 + 15/2*zeta*q^361 + (-10*zeta^2 - 
10*zeta + 10)*q^362 + (-11*zeta^2 + 22)*q^363 + 4*q^364 + (8*zeta^2 + 8*zeta - 
8)*q^366 - 4*zeta*q^367 + (3*zeta^2 + 3*zeta - 3)*q^369 - 6*q^371 + (-4*zeta^2 +
8)*q^372 + (7*zeta^2 + 7*zeta - 7)*q^373 + (6*zeta^2 + 6*zeta - 6)*q^376 + 
(-12*zeta^2 + 24)*q^377 + 4*q^378 + (8*zeta^2 - 16)*q^379 - 16*zeta*q^381 + 
12*zeta*q^382 + (18*zeta^2 + 18*zeta - 18)*q^383 + (-zeta^2 + 2)*q^384 + 
(7*zeta^2 - 14)*q^386 + (4*zeta^2 + 4*zeta - 4)*q^387 + 5*zeta*q^388 - 
9*zeta*q^389 + q^392 + (18*zeta^2 - 36)*q^393 + (9*zeta^2 + 9*zeta - 9)*q^394 + 
(10*zeta^2 + 10*zeta - 10)*q^397 + (10*zeta^2 - 20)*q^398 + 4*q^399 + 
1/2*(5*zeta^2 - 10)*q^400 + (-9*zeta^2 - 9*zeta + 9)*q^401 + 4*zeta*q^402 - 
8*zeta*q^403 - 6*q^406 + (6*zeta^2 + 6*zeta - 6)*q^408 - 7*zeta*q^409 + 
(-18*zeta^2 - 18*zeta + 18)*q^411 + (2*zeta^2 - 4)*q^412 + 6*q^413 - 
2*zeta*q^416 + 14*zeta*q^417 + (-3*zeta^2 + 6)*q^419 + (5*zeta^2 - 10)*q^421 + 
(2*zeta^2 + 2*zeta - 2)*q^422 + 6*zeta*q^423 + 3*zeta*q^424 + (-15*zeta^2 - 
15*zeta + 15)*q^425 - 8*q^427 + (-6*zeta^2 + 12)*q^428 - 12*zeta*q^431 + 
(2*zeta^2 + 2*zeta - 2)*q^432 + (17*zeta^2 - 34)*q^433 - 4*q^434 + (zeta^2 + 
zeta - 1)*q^436 - 2*zeta*q^438 + (4*zeta^2 + 4*zeta - 4)*q^439 - q^441 + 
(-12*zeta^2 + 24)*q^442 + (-6*zeta^2 - 6*zeta + 6)*q^443 + 2*zeta*q^444 + 
(-4*zeta^2 - 4*zeta + 4)*q^446 + (-18*zeta^2 + 36)*q^447 - q^448 + (-9*zeta^2 + 
18)*q^449 + 1/2*(5*zeta^2 + 5*zeta - 5)*q^450 - 3*zeta*q^452 + (-8*zeta^2 - 
8*zeta + 8)*q^453 + (9*zeta^2 - 18)*q^454 + (-2*zeta^2 + 4)*q^456 + (-5*zeta^2 -
5*zeta + 5)*q^457 - 2*zeta*q^458 - 12*zeta*q^459 + (-6*zeta^2 + 12)*q^461 + 
(-16*zeta^2 + 32)*q^463 + (-3*zeta^2 - 3*zeta + 3)*q^464 - 3*zeta*q^466 + 
(-3*zeta^2 - 3*zeta + 3)*q^467 + (2*zeta^2 - 4)*q^468 + 4*q^469 + (4*zeta^2 + 
4*zeta - 4)*q^471 - 3*zeta*q^472 + (8*zeta^2 + 8*zeta - 8)*q^474 + (5*zeta^2 - 
10)*q^475 - 6*q^476 + (-3*zeta^2 + 6)*q^477 + (-12*zeta^2 - 12*zeta + 12)*q^478 
+ 18*zeta*q^479 + (-4*zeta^2 - 4*zeta + 4)*q^481 + (-5*zeta^2 + 10)*q^482 + 
1/2*(11*zeta^2 - 22)*q^484 + 5*zeta*q^486 + 8*zeta*q^487 + (-4*zeta^2 - 4*zeta +
4)*q^488 + (-16*zeta^2 + 32)*q^489 + (6*zeta^2 - 12)*q^491 + (-6*zeta^2 - 6*zeta
+ 6)*q^492 + 18*zeta*q^493 - 4*zeta*q^494 + (2*zeta^2 - 4)*q^496 + (6*zeta^2 - 
12)*q^498 + (-2*zeta^2 - 2*zeta + 2)*q^499 - 12*zeta*q^501 + (9*zeta^2 + 9*zeta 
- 9)*q^502 + q^504 + 3*zeta*q^507 + 8*zeta*q^508 + (18*zeta^2 + 18*zeta - 
18)*q^509 - 2*q^511 + 1/2*(zeta^2 - 2)*q^512 + (4*zeta^2 + 4*zeta - 4)*q^513 + 
9*zeta*q^514 + (-8*zeta^2 - 8*zeta + 8)*q^516 + 2*q^518 + (-12*zeta^2 + 
24)*q^519 - 3*zeta*q^521 - 3*zeta*q^522 + (zeta^2 + zeta - 1)*q^523 + (-9*zeta^2
+ 18)*q^524 - 10*q^525 + (-12*zeta^2 - 12*zeta + 12)*q^527 + 23/2*zeta*q^529 + 
(3*zeta^2 - 6)*q^531 - 2*q^532 + (12*zeta^2 - 24)*q^533 + (-6*zeta^2 - 6*zeta + 
6)*q^534 - 2*zeta*q^536 + (12*zeta^2 + 12*zeta - 12)*q^537 + (-6*zeta^2 + 
12)*q^538 + (19*zeta^2 + 19*zeta - 19)*q^541 - 8*zeta*q^542 + 20*zeta*q^543 + 
(-3*zeta^2 - 3*zeta + 3)*q^544 + 8*q^546 + (-4*zeta^2 + 8)*q^547 + (9*zeta^2 + 
9*zeta - 9)*q^548 - 4*zeta*q^549 + (-6*zeta^2 - 6*zeta + 6)*q^551 - 8*q^553 + 
(-5*zeta^2 + 10)*q^554 - 7*zeta*q^556 - 3*zeta*q^557 + (2*zeta^2 + 2*zeta - 
2)*q^558 + (16*zeta^2 - 32)*q^559 + (3*zeta^2 + 3*zeta - 3)*q^562 - 
15*zeta*q^563 - 12*zeta*q^564 + (-11*zeta^2 + 22)*q^566 + 11*q^567 + (3*zeta^2 +
3*zeta - 3)*q^569 - 16*zeta*q^571 + (24*zeta^2 - 48)*q^573 + 6*q^574 + 
1/2*(zeta^2 + zeta - 1)*q^576 - zeta*q^577 + 19/2*zeta*q^578 + (-14*zeta^2 - 
14*zeta + 14)*q^579 + 6*q^581 + (10*zeta^2 - 20)*q^582 + zeta*q^584 + 
(-12*zeta^2 - 12*zeta + 12)*q^586 + (21*zeta^2 - 42)*q^587 + 2*q^588 + (4*zeta^2
- 8)*q^589 - 18*zeta*q^591 - zeta*q^592 + (-3*zeta^2 - 3*zeta + 3)*q^593 + 
(9*zeta^2 - 18)*q^596 + (-20*zeta^2 - 20*zeta + 20)*q^597 + 12*zeta*q^599 + 
(-5*zeta^2 - 5*zeta + 5)*q^600 + (-13*zeta^2 + 26)*q^601 + 8*q^602 + (2*zeta^2 -
4)*q^603 + (4*zeta^2 + 4*zeta - 4)*q^604 + (16*zeta^2 + 16*zeta - 16)*q^607 + 
(zeta^2 - 2)*q^608 - 12*q^609 + (24*zeta^2 + 24*zeta - 24)*q^611 - 3*zeta*q^612 
- zeta*q^613 + (-zeta^2 - zeta + 1)*q^614 + (-3*zeta^2 + 6)*q^617 + (-4*zeta^2 -
4*zeta + 4)*q^618 - 13*zeta*q^619 + (-12*zeta^2 + 24)*q^622 + 6*q^623 + 
(-4*zeta^2 + 8)*q^624 + 1/2*(25*zeta^2 + 25*zeta - 25)*q^625 - 5*zeta*q^626 + 
(-2*zeta^2 - 2*zeta + 2)*q^628 + (-6*zeta^2 + 12)*q^629 + (8*zeta^2 - 16)*q^631 
+ (-4*zeta^2 - 4*zeta + 4)*q^632 - 4*zeta*q^633 + 3*zeta*q^634 + (6*zeta^2 - 
12)*q^636 + 4*q^637 + 9*zeta*q^641 + (12*zeta^2 + 12*zeta - 12)*q^642 + 
(-7*zeta^2 + 14)*q^643 + (-6*zeta^2 - 6*zeta + 6)*q^646 + 6*zeta*q^647 - 
11/2*zeta*q^648 + (10*zeta^2 - 20)*q^650 - 8*q^651 + (8*zeta^2 - 16)*q^652 + 
(9*zeta^2 + 9*zeta - 9)*q^653 - 2*zeta*q^654 + (3*zeta^2 + 3*zeta - 3)*q^656 + 
(-zeta^2 + 2)*q^657 - 12*q^658 + (12*zeta^2 - 24)*q^659 + 20*zeta*q^661 + 
4*zeta*q^662 + (24*zeta^2 + 24*zeta - 24)*q^663 + (-3*zeta^2 + 6)*q^664 + 
(zeta^2 - 2)*q^666 + 6*zeta*q^668 + 8*zeta*q^669 - 2*q^672 + (-13*zeta^2 + 
26)*q^673 + (-7*zeta^2 - 7*zeta + 7)*q^674 + 10*zeta*q^675 - 3/2*zeta*q^676 + 
(-6*zeta^2 - 6*zeta + 6)*q^677 + (-6*zeta^2 + 12)*q^678 + 10*q^679 + (-18*zeta^2
- 18*zeta + 18)*q^681 + 6*zeta*q^683 + (zeta^2 + zeta - 1)*q^684 + q^686 + 
(-4*zeta^2 + 8)*q^687 + (4*zeta^2 + 4*zeta - 4)*q^688 + 12*zeta*q^689 + 
(-23*zeta^2 - 23*zeta + 23)*q^691 + (6*zeta^2 - 12)*q^692 + (-12*zeta^2 + 
24)*q^694 + 6*zeta*q^696 - 18*zeta*q^697 + (14*zeta^2 + 14*zeta - 14)*q^698 + 
(-6*zeta^2 + 12)*q^699 + 5*q^700 + (-9*zeta^2 + 18)*q^701 + (8*zeta^2 + 8*zeta -
8)*q^702 - 2*zeta*q^703 + (9*zeta^2 - 18)*q^706 + (-6*zeta^2 + 12)*q^708 + 
(-23*zeta^2 - 23*zeta + 23)*q^709 - 4*zeta*q^711 + (3*zeta^2 + 3*zeta - 3)*q^712
+ O(q^714), (-zeta + 1)*q + (-zeta^2 + 3)*q^2 + (-zeta - 2)*q^3 + (zeta^2 + 
zeta)*q^4 + (-2*zeta^2 - 2*zeta + 6)*q^5 - zeta^2*q^6 + (-zeta + 1)*q^8 + 
(zeta^2 - 3)*q^9 + (2*zeta + 4)*q^10 + (-2*zeta^2 - 2*zeta)*q^11 + (zeta^2 + 
zeta - 3)*q^12 + (4*zeta - 4)*q^15 + (-zeta^2 + 3)*q^16 + (-zeta - 2)*q^17 + 
(-zeta^2 - zeta)*q^18 + (5*zeta^2 + 5*zeta - 15)*q^19 + 2*zeta^2*q^20 + (2*zeta 
- 2)*q^22 + (4*zeta^2 - 12)*q^23 + (-zeta - 2)*q^24 + (3*zeta^2 + 3*zeta)*q^25 +
4*zeta^2*q^27 + (-2*zeta + 2)*q^29 + (4*zeta^2 - 12)*q^30 + (6*zeta + 12)*q^31 +
(zeta^2 + zeta)*q^32 + (-2*zeta^2 - 2*zeta + 6)*q^33 - zeta^2*q^34 + (zeta - 
1)*q^36 + (-10*zeta^2 + 30)*q^37 + (-5*zeta - 10)*q^38 + (-2*zeta^2 - 2*zeta + 
6)*q^40 - 7*zeta^2*q^41 + (-2*zeta + 2)*q^43 + (2*zeta^2 - 6)*q^44 + (-2*zeta - 
4)*q^45 + (-4*zeta^2 - 4*zeta)*q^46 + (-2*zeta^2 - 2*zeta + 6)*q^47 - 
zeta^2*q^48 + (-3*zeta + 3)*q^50 + (-2*zeta^2 + 6)*q^51 + (-2*zeta^2 - 
2*zeta)*q^53 + (-4*zeta^2 - 4*zeta + 12)*q^54 - 4*zeta^2*q^55 + (-10*zeta + 
10)*q^57 + (-2*zeta^2 + 6)*q^58 + (-zeta - 2)*q^59 + (-4*zeta^2 - 4*zeta)*q^60 +
(-2*zeta^2 - 2*zeta + 6)*q^61 + 6*zeta^2*q^62 + (-zeta + 1)*q^64 + (2*zeta + 
4)*q^66 + (12*zeta^2 + 12*zeta)*q^67 + (zeta^2 + zeta - 3)*q^68 + 4*zeta^2*q^69 
+ (12*zeta - 12)*q^71 + (zeta^2 - 3)*q^72 + (-zeta - 2)*q^73 + (10*zeta^2 + 
10*zeta)*q^74 + (3*zeta^2 + 3*zeta - 9)*q^75 - 5*zeta^2*q^76 + (4*zeta^2 - 
12)*q^79 + (2*zeta + 4)*q^80 + (-5*zeta^2 - 5*zeta)*q^81 + (7*zeta^2 + 7*zeta - 
21)*q^82 + 7*zeta^2*q^83 + (4*zeta - 4)*q^85 + (-2*zeta^2 + 6)*q^86 + (-2*zeta -
4)*q^87 + (-2*zeta^2 - 2*zeta)*q^88 + (5*zeta^2 + 5*zeta - 15)*q^89 - 
2*zeta^2*q^90 + (4*zeta - 4)*q^92 + (12*zeta^2 - 36)*q^93 + (2*zeta + 4)*q^94 + 
(-20*zeta^2 - 20*zeta)*q^95 + (zeta^2 + zeta - 3)*q^96 + 7*zeta^2*q^97 + 
(-2*zeta + 2)*q^99 + (-3*zeta^2 + 9)*q^100 + (6*zeta + 12)*q^101 + (2*zeta^2 + 
2*zeta)*q^102 + (-2*zeta^2 - 2*zeta + 6)*q^103 + (2*zeta - 2)*q^106 + (4*zeta^2 
- 12)*q^107 + (4*zeta + 8)*q^108 + (-2*zeta^2 - 2*zeta)*q^109 + (4*zeta^2 + 
4*zeta - 12)*q^110 - 10*zeta^2*q^111 + (12*zeta - 12)*q^113 + (-10*zeta^2 + 
30)*q^114 + (-8*zeta - 16)*q^115 + (2*zeta^2 + 2*zeta)*q^116 - zeta^2*q^118 + 
(4*zeta - 4)*q^120 + (7*zeta^2 - 21)*q^121 + (2*zeta + 4)*q^122 + (14*zeta^2 + 
14*zeta)*q^123 + (-6*zeta^2 - 6*zeta + 18)*q^124 - 4*zeta^2*q^125 + (-16*zeta + 
16)*q^127 + (-zeta^2 + 3)*q^128 + (-2*zeta - 4)*q^129 + (-9*zeta^2 - 9*zeta + 
27)*q^131 + 2*zeta^2*q^132 + (-12*zeta + 12)*q^134 + (-16*zeta^2 + 48)*q^135 + 
(-zeta - 2)*q^136 + (12*zeta^2 + 12*zeta)*q^137 + (-4*zeta^2 - 4*zeta + 
12)*q^138 + 7*zeta^2*q^139 + (4*zeta - 4)*q^141 + (12*zeta^2 - 36)*q^142 + 
(-zeta^2 - zeta)*q^144 + (-4*zeta^2 - 4*zeta + 12)*q^145 - zeta^2*q^146 + 
(-10*zeta + 10)*q^148 + (-10*zeta^2 + 30)*q^149 + (-3*zeta - 6)*q^150 + 
(-16*zeta^2 - 16*zeta)*q^151 + (5*zeta^2 + 5*zeta - 15)*q^152 + zeta^2*q^153 + 
(-24*zeta + 24)*q^155 + (-8*zeta - 16)*q^157 + (-4*zeta^2 - 4*zeta)*q^158 + 
(-2*zeta^2 - 2*zeta + 6)*q^159 + 2*zeta^2*q^160 + (5*zeta - 5)*q^162 + 
(-10*zeta^2 + 30)*q^163 + (-7*zeta - 14)*q^164 + (8*zeta^2 + 8*zeta)*q^165 + 
(-7*zeta^2 - 7*zeta + 21)*q^166 - 14*zeta^2*q^167 + (13*zeta - 13)*q^169 + 
(4*zeta^2 - 12)*q^170 + (5*zeta + 10)*q^171 + (2*zeta^2 + 2*zeta)*q^172 + 
(12*zeta^2 + 12*zeta - 36)*q^173 - 2*zeta^2*q^174 + (2*zeta - 2)*q^176 + 
(-2*zeta^2 + 6)*q^177 + (-5*zeta - 10)*q^178 + (12*zeta^2 + 12*zeta)*q^179 + 
(2*zeta^2 + 2*zeta - 6)*q^180 + (4*zeta - 4)*q^183 + (4*zeta^2 - 12)*q^184 + 
(20*zeta + 40)*q^185 + (-12*zeta^2 - 12*zeta)*q^186 + (-2*zeta^2 - 2*zeta + 
6)*q^187 + 2*zeta^2*q^188 + (20*zeta - 20)*q^190 + (4*zeta^2 - 12)*q^191 + 
(-zeta - 2)*q^192 + (-16*zeta^2 - 16*zeta)*q^193 + (-7*zeta^2 - 7*zeta + 
21)*q^194 + (-2*zeta + 2)*q^197 + (-2*zeta^2 + 6)*q^198 + (6*zeta + 12)*q^199 + 
(3*zeta^2 + 3*zeta)*q^200 + (12*zeta^2 + 12*zeta - 36)*q^201 + 6*zeta^2*q^202 + 
(-2*zeta + 2)*q^204 + (28*zeta^2 - 84)*q^205 + (2*zeta + 4)*q^206 + (4*zeta^2 + 
4*zeta)*q^207 + 10*zeta^2*q^209 + (12*zeta - 12)*q^211 + (2*zeta^2 - 6)*q^212 + 
(12*zeta + 24)*q^213 + (-4*zeta^2 - 4*zeta)*q^214 + (-4*zeta^2 - 4*zeta + 
12)*q^215 + 4*zeta^2*q^216 + (2*zeta - 2)*q^218 + (-2*zeta^2 + 6)*q^219 + 
(-4*zeta - 8)*q^220 + (10*zeta^2 + 10*zeta - 30)*q^222 + (3*zeta - 3)*q^225 + 
(12*zeta^2 - 36)*q^226 + (-15*zeta - 30)*q^227 + (10*zeta^2 + 10*zeta)*q^228 + 
(12*zeta^2 + 12*zeta - 36)*q^229 - 8*zeta^2*q^230 + (-2*zeta + 2)*q^232 + 
(-24*zeta^2 + 72)*q^233 + (8*zeta^2 + 8*zeta)*q^235 + (zeta^2 + zeta - 3)*q^236 
+ 4*zeta^2*q^237 + (12*zeta - 12)*q^239 + (4*zeta^2 - 12)*q^240 + (-15*zeta - 
30)*q^241 + (-7*zeta^2 - 7*zeta)*q^242 + (7*zeta^2 + 7*zeta - 21)*q^243 + 
2*zeta^2*q^244 + (-14*zeta + 14)*q^246 + (6*zeta + 12)*q^248 + (-14*zeta^2 - 
14*zeta)*q^249 + (4*zeta^2 + 4*zeta - 12)*q^250 + 7*zeta^2*q^251 + (-8*zeta + 
8)*q^253 + (-16*zeta^2 + 48)*q^254 + (4*zeta + 8)*q^255 + (zeta^2 + zeta)*q^256 
+ (-9*zeta^2 - 9*zeta + 27)*q^257 - 2*zeta^2*q^258 + (2*zeta^2 - 6)*q^261 + 
(9*zeta + 18)*q^262 + (12*zeta^2 + 12*zeta)*q^263 + (-2*zeta^2 - 2*zeta + 
6)*q^264 - 4*zeta^2*q^265 + (-10*zeta + 10)*q^267 + (-12*zeta^2 + 36)*q^268 + 
(-8*zeta - 16)*q^269 + (16*zeta^2 + 16*zeta)*q^270 + (-16*zeta^2 - 16*zeta + 
48)*q^271 - zeta^2*q^272 + (-12*zeta + 12)*q^274 + (6*zeta^2 - 18)*q^275 + 
(4*zeta + 8)*q^276 + (-2*zeta^2 - 2*zeta)*q^277 + (-7*zeta^2 - 7*zeta + 
21)*q^278 - 6*zeta^2*q^279 + (-16*zeta + 16)*q^281 + (4*zeta^2 - 12)*q^282 + 
(-zeta - 2)*q^283 + (-12*zeta^2 - 12*zeta)*q^284 + (-20*zeta^2 - 20*zeta + 
60)*q^285 + (zeta - 1)*q^288 + (15*zeta^2 - 45)*q^289 + (4*zeta + 8)*q^290 + 
(-14*zeta^2 - 14*zeta)*q^291 + (zeta^2 + zeta - 3)*q^292 - 14*zeta^2*q^293 + 
(4*zeta - 4)*q^295 + (-10*zeta^2 + 30)*q^296 + (-8*zeta - 16)*q^297 + (10*zeta^2
+ 10*zeta)*q^298 - 3*zeta^2*q^300 + (16*zeta - 16)*q^302 + (12*zeta^2 - 
36)*q^303 + (-5*zeta - 10)*q^304 + (8*zeta^2 + 8*zeta)*q^305 + (-zeta^2 - zeta +
3)*q^306 - 7*zeta^2*q^307 + (4*zeta - 4)*q^309 + (-24*zeta^2 + 72)*q^310 + 
(-8*zeta - 16)*q^311 + (-9*zeta^2 - 9*zeta + 27)*q^313 - 8*zeta^2*q^314 + 
(4*zeta - 4)*q^316 + (-10*zeta^2 + 30)*q^317 + (2*zeta + 4)*q^318 + (-4*zeta^2 -
4*zeta)*q^319 + (-2*zeta^2 - 2*zeta + 6)*q^320 + 4*zeta^2*q^321 + (-10*zeta + 
10)*q^323 + (5*zeta^2 - 15)*q^324 + (10*zeta^2 + 10*zeta)*q^326 + (-2*zeta^2 - 
2*zeta + 6)*q^327 - 7*zeta^2*q^328 + (-8*zeta + 8)*q^330 + (-10*zeta^2 + 
30)*q^331 + (7*zeta + 14)*q^332 + (-10*zeta^2 - 10*zeta)*q^333 + (14*zeta^2 + 
14*zeta - 42)*q^334 + 24*zeta^2*q^335 + (-2*zeta + 2)*q^337 + (13*zeta^2 - 
39)*q^338 + (12*zeta + 24)*q^339 + (-4*zeta^2 - 4*zeta)*q^340 + (12*zeta^2 + 
12*zeta - 36)*q^341 + 5*zeta^2*q^342 + (-2*zeta + 2)*q^344 + (-16*zeta^2 + 
48)*q^345 + (-12*zeta - 24)*q^346 + (-30*zeta^2 - 30*zeta)*q^347 + (2*zeta^2 + 
2*zeta - 6)*q^348 + (2*zeta^2 - 6)*q^352 + (-zeta - 2)*q^353 + (2*zeta^2 + 
2*zeta)*q^354 + (24*zeta^2 + 24*zeta - 72)*q^355 - 5*zeta^2*q^356 + (-12*zeta + 
12)*q^358 + (32*zeta^2 - 96)*q^359 + (-2*zeta - 4)*q^360 + (31*zeta^2 + 
31*zeta)*q^361 + 7*zeta^2*q^363 + (4*zeta - 4)*q^365 + (4*zeta^2 - 12)*q^366 + 
(20*zeta + 40)*q^367 + (-4*zeta^2 - 4*zeta)*q^368 + (-7*zeta^2 - 7*zeta + 
21)*q^369 + 20*zeta^2*q^370 + (12*zeta - 12)*q^372 + (-10*zeta^2 + 30)*q^373 + 
(2*zeta + 4)*q^374 + (8*zeta^2 + 8*zeta)*q^375 + (-2*zeta^2 - 2*zeta + 6)*q^376 
+ (26*zeta - 26)*q^379 + (20*zeta^2 - 60)*q^380 + (-16*zeta - 32)*q^381 + 
(-4*zeta^2 - 4*zeta)*q^382 + (26*zeta^2 + 26*zeta - 78)*q^383 - zeta^2*q^384 + 
(16*zeta - 16)*q^386 + (2*zeta^2 - 6)*q^387 + (7*zeta + 14)*q^388 + (26*zeta^2 +
26*zeta)*q^389 + 4*zeta^2*q^391 + (18*zeta - 18)*q^393 + (-2*zeta^2 + 6)*q^394 +
(-8*zeta - 16)*q^395 + (2*zeta^2 + 2*zeta)*q^396 + (-16*zeta^2 - 16*zeta + 
48)*q^397 + 6*zeta^2*q^398 + (-3*zeta + 3)*q^400 + (18*zeta^2 - 54)*q^401 + 
(-12*zeta - 24)*q^402 + (-6*zeta^2 - 6*zeta + 18)*q^404 - 10*zeta^2*q^405 + 
(20*zeta - 20)*q^407 + (-2*zeta^2 + 6)*q^408 + (27*zeta + 54)*q^409 + 
(-28*zeta^2 - 28*zeta)*q^410 + (12*zeta^2 + 12*zeta - 36)*q^411 + 2*zeta^2*q^412
+ (-4*zeta + 4)*q^414 + (-28*zeta^2 + 84)*q^415 + (-14*zeta^2 - 14*zeta)*q^417 +
(-10*zeta^2 - 10*zeta + 30)*q^418 - 7*zeta^2*q^419 + (-30*zeta + 30)*q^421 + 
(12*zeta^2 - 36)*q^422 + (-2*zeta - 4)*q^423 + (-2*zeta^2 - 2*zeta)*q^424 + 
(3*zeta^2 + 3*zeta - 9)*q^425 + 12*zeta^2*q^426 + (4*zeta - 4)*q^428 + (4*zeta +
8)*q^430 + (12*zeta^2 + 12*zeta)*q^431 + (-4*zeta^2 - 4*zeta + 12)*q^432 - 
21*zeta^2*q^433 + (8*zeta - 8)*q^435 + (2*zeta^2 - 6)*q^436 + (20*zeta + 
40)*q^437 + (2*zeta^2 + 2*zeta)*q^438 + (12*zeta^2 + 12*zeta - 36)*q^439 - 
4*zeta^2*q^440 + (4*zeta^2 - 12)*q^443 + (-10*zeta - 20)*q^444 + (-20*zeta^2 - 
20*zeta)*q^445 - 10*zeta^2*q^447 + (-30*zeta + 30)*q^449 + (3*zeta^2 - 9)*q^450 
+ (14*zeta + 28)*q^451 + (-12*zeta^2 - 12*zeta)*q^452 + (-16*zeta^2 - 16*zeta + 
48)*q^453 - 15*zeta^2*q^454 + (-10*zeta + 10)*q^456 + (-24*zeta^2 + 72)*q^457 + 
(-12*zeta - 24)*q^458 + (-8*zeta^2 - 8*zeta)*q^459 + (8*zeta^2 + 8*zeta - 
24)*q^460 + 28*zeta^2*q^461 + (-16*zeta + 16)*q^463 + (-2*zeta^2 + 6)*q^464 + 
(-24*zeta - 48)*q^465 + (24*zeta^2 + 24*zeta)*q^466 + (-23*zeta^2 - 23*zeta + 
69)*q^467 + (-8*zeta + 8)*q^470 + (-16*zeta^2 + 48)*q^471 + (-zeta - 2)*q^472 + 
(-4*zeta^2 - 4*zeta)*q^473 + (-4*zeta^2 - 4*zeta + 12)*q^474 - 15*zeta^2*q^475 +
(-2*zeta + 2)*q^477 + (12*zeta^2 - 36)*q^478 + (-22*zeta - 44)*q^479 + 
(-4*zeta^2 - 4*zeta)*q^480 - 15*zeta^2*q^482 + (7*zeta - 7)*q^484 + (-28*zeta^2 
+ 84)*q^485 + (-7*zeta - 14)*q^486 + (12*zeta^2 + 12*zeta)*q^487 + (-2*zeta^2 - 
2*zeta + 6)*q^488 - 10*zeta^2*q^489 + (12*zeta - 12)*q^491 + (-14*zeta^2 + 
42)*q^492 + (-2*zeta - 4)*q^493 + (-4*zeta^2 - 4*zeta + 12)*q^495 + 
6*zeta^2*q^496 + (14*zeta - 14)*q^498 + (4*zeta^2 - 12)*q^499 + (-4*zeta - 
8)*q^500 + (28*zeta^2 + 28*zeta)*q^501 + (-7*zeta^2 - 7*zeta + 21)*q^502 + 
28*zeta^2*q^503 + (-24*zeta + 24)*q^505 + (-8*zeta^2 + 24)*q^506 + (13*zeta + 
26)*q^507 + (16*zeta^2 + 16*zeta)*q^508 + (-16*zeta^2 - 16*zeta + 48)*q^509 + 
4*zeta^2*q^510 + (-zeta + 1)*q^512 + (40*zeta^2 - 120)*q^513 + (9*zeta + 
18)*q^514 + (8*zeta^2 + 8*zeta)*q^515 + (2*zeta^2 + 2*zeta - 6)*q^516 - 
4*zeta^2*q^517 + (-24*zeta + 24)*q^519 + (-zeta - 2)*q^521 + (-2*zeta^2 - 
2*zeta)*q^522 + (-9*zeta^2 - 9*zeta + 27)*q^523 + 9*zeta^2*q^524 + (-12*zeta + 
12)*q^526 + (12*zeta^2 - 36)*q^527 + (2*zeta + 4)*q^528 + (-7*zeta^2 - 
7*zeta)*q^529 + (4*zeta^2 + 4*zeta - 12)*q^530 + zeta^2*q^531 + (-10*zeta^2 + 
30)*q^534 + (-8*zeta - 16)*q^535 + (12*zeta^2 + 12*zeta)*q^536 + (12*zeta^2 + 
12*zeta - 36)*q^537 - 8*zeta^2*q^538 + (-16*zeta + 16)*q^540 + (-10*zeta^2 + 
30)*q^541 + (16*zeta + 32)*q^542 + (zeta^2 + zeta - 3)*q^544 - 4*zeta^2*q^545 + 
(26*zeta - 26)*q^547 + (-12*zeta^2 + 36)*q^548 + (-2*zeta - 4)*q^549 + 
(-6*zeta^2 - 6*zeta)*q^550 + (10*zeta^2 + 10*zeta - 30)*q^551 + 4*zeta^2*q^552 +
(2*zeta - 2)*q^554 + (40*zeta^2 - 120)*q^555 + (7*zeta + 14)*q^556 + (-30*zeta^2
- 30*zeta)*q^557 + (6*zeta^2 + 6*zeta - 18)*q^558 + (4*zeta - 4)*q^561 + 
(-16*zeta^2 + 48)*q^562 + (-zeta - 2)*q^563 + (-4*zeta^2 - 4*zeta)*q^564 + 
(24*zeta^2 + 24*zeta - 72)*q^565 - zeta^2*q^566 + (12*zeta - 12)*q^568 + 
(-10*zeta^2 + 30)*q^569 + (20*zeta + 40)*q^570 + (-2*zeta^2 - 2*zeta)*q^571 + 
4*zeta^2*q^573 + (12*zeta - 12)*q^575 + (zeta^2 - 3)*q^576 + (-15*zeta - 
30)*q^577 + (-15*zeta^2 - 15*zeta)*q^578 + (-16*zeta^2 - 16*zeta + 48)*q^579 + 
4*zeta^2*q^580 + (14*zeta - 14)*q^582 + (-4*zeta^2 + 12)*q^583 + (-zeta - 
2)*q^584 + (14*zeta^2 + 14*zeta - 42)*q^586 - 21*zeta^2*q^587 + (60*zeta - 
60)*q^589 + (4*zeta^2 - 12)*q^590 + (-2*zeta - 4)*q^591 + (10*zeta^2 + 
10*zeta)*q^592 + (5*zeta^2 + 5*zeta - 15)*q^593 - 8*zeta^2*q^594 + (-10*zeta + 
10)*q^596 + (12*zeta^2 - 36)*q^597 + (-16*zeta^2 - 16*zeta)*q^599 + (3*zeta^2 + 
3*zeta - 9)*q^600 + 21*zeta^2*q^601 + (12*zeta - 12)*q^603 + (16*zeta^2 - 
48)*q^604 + (-14*zeta - 28)*q^605 + (-12*zeta^2 - 12*zeta)*q^606 + (12*zeta^2 + 
12*zeta - 36)*q^607 - 5*zeta^2*q^608 + (-8*zeta + 8)*q^610 + (zeta + 2)*q^612 + 
(-30*zeta^2 - 30*zeta)*q^613 + (7*zeta^2 + 7*zeta - 21)*q^614 + 28*zeta^2*q^615 
+ (26*zeta - 26)*q^617 + (4*zeta^2 - 12)*q^618 + (13*zeta + 26)*q^619 + 
(24*zeta^2 + 24*zeta)*q^620 + (16*zeta^2 + 16*zeta - 48)*q^621 - 8*zeta^2*q^622 
+ (31*zeta^2 - 93)*q^625 + (9*zeta + 18)*q^626 + (-20*zeta^2 - 20*zeta)*q^627 + 
(8*zeta^2 + 8*zeta - 24)*q^628 - 10*zeta^2*q^629 + (-44*zeta + 44)*q^631 + 
(4*zeta^2 - 12)*q^632 + (12*zeta + 24)*q^633 + (10*zeta^2 + 10*zeta)*q^634 + 
(-32*zeta^2 - 32*zeta + 96)*q^635 + 2*zeta^2*q^636 + (4*zeta - 4)*q^638 + 
(-12*zeta^2 + 36)*q^639 + (2*zeta + 4)*q^640 + (26*zeta^2 + 26*zeta)*q^641 + 
(-4*zeta^2 - 4*zeta + 12)*q^642 + 7*zeta^2*q^643 + (8*zeta - 8)*q^645 + 
(-10*zeta^2 + 30)*q^646 + (6*zeta + 12)*q^647 + (-5*zeta^2 - 5*zeta)*q^648 + 
(-2*zeta^2 - 2*zeta + 6)*q^649 + (-10*zeta + 10)*q^652 + (18*zeta^2 - 54)*q^653 
+ (2*zeta + 4)*q^654 + (36*zeta^2 + 36*zeta)*q^655 + (7*zeta^2 + 7*zeta - 
21)*q^656 + zeta^2*q^657 + (-30*zeta + 30)*q^659 + (-8*zeta^2 + 24)*q^660 + 
(6*zeta + 12)*q^661 + (10*zeta^2 + 10*zeta)*q^662 + 7*zeta^2*q^664 + (10*zeta - 
10)*q^666 + (8*zeta^2 - 24)*q^667 + (-14*zeta - 28)*q^668 + (-24*zeta^2 - 
24*zeta + 72)*q^670 - 4*zeta^2*q^671 + (12*zeta - 12)*q^673 + (-2*zeta^2 + 
6)*q^674 + (12*zeta + 24)*q^675 + (-13*zeta^2 - 13*zeta)*q^676 + (12*zeta^2 + 
12*zeta - 36)*q^677 + 12*zeta^2*q^678 + (4*zeta - 4)*q^680 + (-30*zeta^2 + 
90)*q^681 + (-12*zeta - 24)*q^682 + (12*zeta^2 + 12*zeta)*q^683 + (-5*zeta^2 - 
5*zeta + 15)*q^684 + 24*zeta^2*q^685 + (-24*zeta + 24)*q^687 + (-2*zeta^2 + 
6)*q^688 + (16*zeta^2 + 16*zeta)*q^690 + (-9*zeta^2 - 9*zeta + 27)*q^691 - 
12*zeta^2*q^692 + (30*zeta - 30)*q^694 + (-28*zeta^2 + 84)*q^695 + (-2*zeta - 
4)*q^696 + (14*zeta^2 + 14*zeta)*q^697 - 24*zeta^2*q^699 + (-30*zeta + 30)*q^701
+ (-50*zeta - 100)*q^703 + (-2*zeta^2 - 2*zeta)*q^704 + (8*zeta^2 + 8*zeta - 
24)*q^705 - zeta^2*q^706 + (-2*zeta + 2)*q^708 + (-10*zeta^2 + 30)*q^709 + 
(-24*zeta - 48)*q^710 + (4*zeta^2 + 4*zeta)*q^711 + (5*zeta^2 + 5*zeta - 
15)*q^712 - 24*zeta^2*q^713 + O(q^714), zeta^2*q + (-zeta^2 - zeta + 3)*q^2 + 
(-2*zeta^2 - 2*zeta)*q^3 + (zeta + 2)*q^4 + (-4*zeta^2 + 12)*q^5 + (2*zeta - 
2)*q^6 + zeta^2*q^8 + (zeta^2 + zeta - 3)*q^9 + (4*zeta^2 + 4*zeta)*q^10 + 
(-2*zeta - 4)*q^11 + (2*zeta^2 - 6)*q^12 - 4*zeta^2*q^15 + (-zeta^2 - zeta + 
3)*q^16 + (-2*zeta^2 - 2*zeta)*q^17 + (-zeta - 2)*q^18 + (10*zeta^2 - 30)*q^19 +
(-4*zeta + 4)*q^20 - 2*zeta^2*q^22 + (4*zeta^2 + 4*zeta - 12)*q^23 + (-2*zeta^2 
- 2*zeta)*q^24 + (3*zeta + 6)*q^25 + (-8*zeta + 8)*q^27 + 2*zeta^2*q^29 + 
(4*zeta^2 + 4*zeta - 12)*q^30 + (12*zeta^2 + 12*zeta)*q^31 + (zeta + 2)*q^32 + 
(-4*zeta^2 + 12)*q^33 + (2*zeta - 2)*q^34 - zeta^2*q^36 + (-10*zeta^2 - 10*zeta 
+ 30)*q^37 + (-10*zeta^2 - 10*zeta)*q^38 + (-4*zeta^2 + 12)*q^40 + (14*zeta - 
14)*q^41 + 2*zeta^2*q^43 + (2*zeta^2 + 2*zeta - 6)*q^44 + (-4*zeta^2 - 
4*zeta)*q^45 + (-4*zeta - 8)*q^46 + (-4*zeta^2 + 12)*q^47 + (2*zeta - 2)*q^48 + 
3*zeta^2*q^50 + (-2*zeta^2 - 2*zeta + 6)*q^51 + (-2*zeta - 4)*q^53 + (-8*zeta^2 
+ 24)*q^54 + (8*zeta - 8)*q^55 + 10*zeta^2*q^57 + (-2*zeta^2 - 2*zeta + 6)*q^58 
+ (-2*zeta^2 - 2*zeta)*q^59 + (-4*zeta - 8)*q^60 + (-4*zeta^2 + 12)*q^61 + 
(-12*zeta + 12)*q^62 + zeta^2*q^64 + (4*zeta^2 + 4*zeta)*q^66 + (12*zeta + 
24)*q^67 + (2*zeta^2 - 6)*q^68 + (-8*zeta + 8)*q^69 - 12*zeta^2*q^71 + (zeta^2 +
zeta - 3)*q^72 + (-2*zeta^2 - 2*zeta)*q^73 + (10*zeta + 20)*q^74 + (6*zeta^2 - 
18)*q^75 + (10*zeta - 10)*q^76 + (4*zeta^2 + 4*zeta - 12)*q^79 + (4*zeta^2 + 
4*zeta)*q^80 + (-5*zeta - 10)*q^81 + (14*zeta^2 - 42)*q^82 + (-14*zeta + 
14)*q^83 - 4*zeta^2*q^85 + (-2*zeta^2 - 2*zeta + 6)*q^86 + (-4*zeta^2 - 
4*zeta)*q^87 + (-2*zeta - 4)*q^88 + (10*zeta^2 - 30)*q^89 + (4*zeta - 4)*q^90 - 
4*zeta^2*q^92 + (12*zeta^2 + 12*zeta - 36)*q^93 + (4*zeta^2 + 4*zeta)*q^94 + 
(-20*zeta - 40)*q^95 + (2*zeta^2 - 6)*q^96 + (-14*zeta + 14)*q^97 + 
2*zeta^2*q^99 + (-3*zeta^2 - 3*zeta + 9)*q^100 + (12*zeta^2 + 12*zeta)*q^101 + 
(2*zeta + 4)*q^102 + (-4*zeta^2 + 12)*q^103 - 2*zeta^2*q^106 + (4*zeta^2 + 
4*zeta - 12)*q^107 + (8*zeta^2 + 8*zeta)*q^108 + (-2*zeta - 4)*q^109 + (8*zeta^2
- 24)*q^110 + (20*zeta - 20)*q^111 - 12*zeta^2*q^113 + (-10*zeta^2 - 10*zeta + 
30)*q^114 + (-16*zeta^2 - 16*zeta)*q^115 + (2*zeta + 4)*q^116 + (2*zeta - 
2)*q^118 - 4*zeta^2*q^120 + (7*zeta^2 + 7*zeta - 21)*q^121 + (4*zeta^2 + 
4*zeta)*q^122 + (14*zeta + 28)*q^123 + (-12*zeta^2 + 36)*q^124 + (8*zeta - 
8)*q^125 + 16*zeta^2*q^127 + (-zeta^2 - zeta + 3)*q^128 + (-4*zeta^2 - 
4*zeta)*q^129 + (-18*zeta^2 + 54)*q^131 + (-4*zeta + 4)*q^132 + 12*zeta^2*q^134 
+ (-16*zeta^2 - 16*zeta + 48)*q^135 + (-2*zeta^2 - 2*zeta)*q^136 + (12*zeta + 
24)*q^137 + (-8*zeta^2 + 24)*q^138 + (-14*zeta + 14)*q^139 - 4*zeta^2*q^141 + 
(12*zeta^2 + 12*zeta - 36)*q^142 + (-zeta - 2)*q^144 + (-8*zeta^2 + 24)*q^145 + 
(2*zeta - 2)*q^146 + 10*zeta^2*q^148 + (-10*zeta^2 - 10*zeta + 30)*q^149 + 
(-6*zeta^2 - 6*zeta)*q^150 + (-16*zeta - 32)*q^151 + (10*zeta^2 - 30)*q^152 + 
(-2*zeta + 2)*q^153 + 24*zeta^2*q^155 + (-16*zeta^2 - 16*zeta)*q^157 + (-4*zeta 
- 8)*q^158 + (-4*zeta^2 + 12)*q^159 + (-4*zeta + 4)*q^160 - 5*zeta^2*q^162 + 
(-10*zeta^2 - 10*zeta + 30)*q^163 + (-14*zeta^2 - 14*zeta)*q^164 + (8*zeta + 
16)*q^165 + (-14*zeta^2 + 42)*q^166 + (28*zeta - 28)*q^167 - 13*zeta^2*q^169 + 
(4*zeta^2 + 4*zeta - 12)*q^170 + (10*zeta^2 + 10*zeta)*q^171 + (2*zeta + 
4)*q^172 + (24*zeta^2 - 72)*q^173 + (4*zeta - 4)*q^174 - 2*zeta^2*q^176 + 
(-2*zeta^2 - 2*zeta + 6)*q^177 + (-10*zeta^2 - 10*zeta)*q^178 + (12*zeta + 
24)*q^179 + (4*zeta^2 - 12)*q^180 - 4*zeta^2*q^183 + (4*zeta^2 + 4*zeta - 
12)*q^184 + (40*zeta^2 + 40*zeta)*q^185 + (-12*zeta - 24)*q^186 + (-4*zeta^2 + 
12)*q^187 + (-4*zeta + 4)*q^188 - 20*zeta^2*q^190 + (4*zeta^2 + 4*zeta - 
12)*q^191 + (-2*zeta^2 - 2*zeta)*q^192 + (-16*zeta - 32)*q^193 + (-14*zeta^2 + 
42)*q^194 + 2*zeta^2*q^197 + (-2*zeta^2 - 2*zeta + 6)*q^198 + (12*zeta^2 + 
12*zeta)*q^199 + (3*zeta + 6)*q^200 + (24*zeta^2 - 72)*q^201 + (-12*zeta + 
12)*q^202 + 2*zeta^2*q^204 + (28*zeta^2 + 28*zeta - 84)*q^205 + (4*zeta^2 + 
4*zeta)*q^206 + (4*zeta + 8)*q^207 + (-20*zeta + 20)*q^209 - 12*zeta^2*q^211 + 
(2*zeta^2 + 2*zeta - 6)*q^212 + (24*zeta^2 + 24*zeta)*q^213 + (-4*zeta - 
8)*q^214 + (-8*zeta^2 + 24)*q^215 + (-8*zeta + 8)*q^216 - 2*zeta^2*q^218 + 
(-2*zeta^2 - 2*zeta + 6)*q^219 + (-8*zeta^2 - 8*zeta)*q^220 + (20*zeta^2 - 
60)*q^222 - 3*zeta^2*q^225 + (12*zeta^2 + 12*zeta - 36)*q^226 + (-30*zeta^2 - 
30*zeta)*q^227 + (10*zeta + 20)*q^228 + (24*zeta^2 - 72)*q^229 + (16*zeta - 
16)*q^230 + 2*zeta^2*q^232 + (-24*zeta^2 - 24*zeta + 72)*q^233 + (8*zeta + 
16)*q^235 + (2*zeta^2 - 6)*q^236 + (-8*zeta + 8)*q^237 - 12*zeta^2*q^239 + 
(4*zeta^2 + 4*zeta - 12)*q^240 + (-30*zeta^2 - 30*zeta)*q^241 + (-7*zeta - 
14)*q^242 + (14*zeta^2 - 42)*q^243 + (-4*zeta + 4)*q^244 + 14*zeta^2*q^246 + 
(12*zeta^2 + 12*zeta)*q^248 + (-14*zeta - 28)*q^249 + (8*zeta^2 - 24)*q^250 + 
(-14*zeta + 14)*q^251 + 8*zeta^2*q^253 + (-16*zeta^2 - 16*zeta + 48)*q^254 + 
(8*zeta^2 + 8*zeta)*q^255 + (zeta + 2)*q^256 + (-18*zeta^2 + 54)*q^257 + (4*zeta
- 4)*q^258 + (2*zeta^2 + 2*zeta - 6)*q^261 + (18*zeta^2 + 18*zeta)*q^262 + 
(12*zeta + 24)*q^263 + (-4*zeta^2 + 12)*q^264 + (8*zeta - 8)*q^265 + 
10*zeta^2*q^267 + (-12*zeta^2 - 12*zeta + 36)*q^268 + (-16*zeta^2 - 
16*zeta)*q^269 + (16*zeta + 32)*q^270 + (-32*zeta^2 + 96)*q^271 + (2*zeta - 
2)*q^272 + 12*zeta^2*q^274 + (6*zeta^2 + 6*zeta - 18)*q^275 + (8*zeta^2 + 
8*zeta)*q^276 + (-2*zeta - 4)*q^277 + (-14*zeta^2 + 42)*q^278 + (12*zeta - 
12)*q^279 + 16*zeta^2*q^281 + (4*zeta^2 + 4*zeta - 12)*q^282 + (-2*zeta^2 - 
2*zeta)*q^283 + (-12*zeta - 24)*q^284 + (-40*zeta^2 + 120)*q^285 - zeta^2*q^288 
+ (15*zeta^2 + 15*zeta - 45)*q^289 + (8*zeta^2 + 8*zeta)*q^290 + (-14*zeta - 
28)*q^291 + (2*zeta^2 - 6)*q^292 + (28*zeta - 28)*q^293 - 4*zeta^2*q^295 + 
(-10*zeta^2 - 10*zeta + 30)*q^296 + (-16*zeta^2 - 16*zeta)*q^297 + (10*zeta + 
20)*q^298 + (6*zeta - 6)*q^300 - 16*zeta^2*q^302 + (12*zeta^2 + 12*zeta - 
36)*q^303 + (-10*zeta^2 - 10*zeta)*q^304 + (8*zeta + 16)*q^305 + (-2*zeta^2 + 
6)*q^306 + (14*zeta - 14)*q^307 - 4*zeta^2*q^309 + (-24*zeta^2 - 24*zeta + 
72)*q^310 + (-16*zeta^2 - 16*zeta)*q^311 + (-18*zeta^2 + 54)*q^313 + (16*zeta - 
16)*q^314 - 4*zeta^2*q^316 + (-10*zeta^2 - 10*zeta + 30)*q^317 + (4*zeta^2 + 
4*zeta)*q^318 + (-4*zeta - 8)*q^319 + (-4*zeta^2 + 12)*q^320 + (-8*zeta + 
8)*q^321 + 10*zeta^2*q^323 + (5*zeta^2 + 5*zeta - 15)*q^324 + (10*zeta + 
20)*q^326 + (-4*zeta^2 + 12)*q^327 + (14*zeta - 14)*q^328 + 8*zeta^2*q^330 + 
(-10*zeta^2 - 10*zeta + 30)*q^331 + (14*zeta^2 + 14*zeta)*q^332 + (-10*zeta - 
20)*q^333 + (28*zeta^2 - 84)*q^334 + (-48*zeta + 48)*q^335 + 2*zeta^2*q^337 + 
(13*zeta^2 + 13*zeta - 39)*q^338 + (24*zeta^2 + 24*zeta)*q^339 + (-4*zeta - 
8)*q^340 + (24*zeta^2 - 72)*q^341 + (-10*zeta + 10)*q^342 + 2*zeta^2*q^344 + 
(-16*zeta^2 - 16*zeta + 48)*q^345 + (-24*zeta^2 - 24*zeta)*q^346 + (-30*zeta - 
60)*q^347 + (4*zeta^2 - 12)*q^348 + (2*zeta^2 + 2*zeta - 6)*q^352 + (-2*zeta^2 -
2*zeta)*q^353 + (2*zeta + 4)*q^354 + (48*zeta^2 - 144)*q^355 + (10*zeta - 
10)*q^356 + 12*zeta^2*q^358 + (32*zeta^2 + 32*zeta - 96)*q^359 + (-4*zeta^2 - 
4*zeta)*q^360 + (31*zeta + 62)*q^361 + (-14*zeta + 14)*q^363 - 4*zeta^2*q^365 + 
(4*zeta^2 + 4*zeta - 12)*q^366 + (40*zeta^2 + 40*zeta)*q^367 + (-4*zeta - 
8)*q^368 + (-14*zeta^2 + 42)*q^369 + (-40*zeta + 40)*q^370 - 12*zeta^2*q^372 + 
(-10*zeta^2 - 10*zeta + 30)*q^373 + (4*zeta^2 + 4*zeta)*q^374 + (8*zeta + 
16)*q^375 + (-4*zeta^2 + 12)*q^376 - 26*zeta^2*q^379 + (20*zeta^2 + 20*zeta - 
60)*q^380 + (-32*zeta^2 - 32*zeta)*q^381 + (-4*zeta - 8)*q^382 + (52*zeta^2 - 
156)*q^383 + (2*zeta - 2)*q^384 - 16*zeta^2*q^386 + (2*zeta^2 + 2*zeta - 
6)*q^387 + (14*zeta^2 + 14*zeta)*q^388 + (26*zeta + 52)*q^389 + (-8*zeta + 
8)*q^391 - 18*zeta^2*q^393 + (-2*zeta^2 - 2*zeta + 6)*q^394 + (-16*zeta^2 - 
16*zeta)*q^395 + (2*zeta + 4)*q^396 + (-32*zeta^2 + 96)*q^397 + (-12*zeta + 
12)*q^398 + 3*zeta^2*q^400 + (18*zeta^2 + 18*zeta - 54)*q^401 + (-24*zeta^2 - 
24*zeta)*q^402 + (-12*zeta^2 + 36)*q^404 + (20*zeta - 20)*q^405 - 
20*zeta^2*q^407 + (-2*zeta^2 - 2*zeta + 6)*q^408 + (54*zeta^2 + 54*zeta)*q^409 +
(-28*zeta - 56)*q^410 + (24*zeta^2 - 72)*q^411 + (-4*zeta + 4)*q^412 + 
4*zeta^2*q^414 + (-28*zeta^2 - 28*zeta + 84)*q^415 + (-14*zeta - 28)*q^417 + 
(-20*zeta^2 + 60)*q^418 + (14*zeta - 14)*q^419 + 30*zeta^2*q^421 + (12*zeta^2 + 
12*zeta - 36)*q^422 + (-4*zeta^2 - 4*zeta)*q^423 + (-2*zeta - 4)*q^424 + 
(6*zeta^2 - 18)*q^425 + (-24*zeta + 24)*q^426 - 4*zeta^2*q^428 + (8*zeta^2 + 
8*zeta)*q^430 + (12*zeta + 24)*q^431 + (-8*zeta^2 + 24)*q^432 + (42*zeta - 
42)*q^433 - 8*zeta^2*q^435 + (2*zeta^2 + 2*zeta - 6)*q^436 + (40*zeta^2 + 
40*zeta)*q^437 + (2*zeta + 4)*q^438 + (24*zeta^2 - 72)*q^439 + (8*zeta - 
8)*q^440 + (4*zeta^2 + 4*zeta - 12)*q^443 + (-20*zeta^2 - 20*zeta)*q^444 + 
(-20*zeta - 40)*q^445 + (20*zeta - 20)*q^447 + 30*zeta^2*q^449 + (3*zeta^2 + 
3*zeta - 9)*q^450 + (28*zeta^2 + 28*zeta)*q^451 + (-12*zeta - 24)*q^452 + 
(-32*zeta^2 + 96)*q^453 + (30*zeta - 30)*q^454 + 10*zeta^2*q^456 + (-24*zeta^2 -
24*zeta + 72)*q^457 + (-24*zeta^2 - 24*zeta)*q^458 + (-8*zeta - 16)*q^459 + 
(16*zeta^2 - 48)*q^460 + (-56*zeta + 56)*q^461 + 16*zeta^2*q^463 + (-2*zeta^2 - 
2*zeta + 6)*q^464 + (-48*zeta^2 - 48*zeta)*q^465 + (24*zeta + 48)*q^466 + 
(-46*zeta^2 + 138)*q^467 + 8*zeta^2*q^470 + (-16*zeta^2 - 16*zeta + 48)*q^471 + 
(-2*zeta^2 - 2*zeta)*q^472 + (-4*zeta - 8)*q^473 + (-8*zeta^2 + 24)*q^474 + 
(30*zeta - 30)*q^475 + 2*zeta^2*q^477 + (12*zeta^2 + 12*zeta - 36)*q^478 + 
(-44*zeta^2 - 44*zeta)*q^479 + (-4*zeta - 8)*q^480 + (30*zeta - 30)*q^482 - 
7*zeta^2*q^484 + (-28*zeta^2 - 28*zeta + 84)*q^485 + (-14*zeta^2 - 
14*zeta)*q^486 + (12*zeta + 24)*q^487 + (-4*zeta^2 + 12)*q^488 + (20*zeta - 
20)*q^489 - 12*zeta^2*q^491 + (-14*zeta^2 - 14*zeta + 42)*q^492 + (-4*zeta^2 - 
4*zeta)*q^493 + (-8*zeta^2 + 24)*q^495 + (-12*zeta + 12)*q^496 - 14*zeta^2*q^498
+ (4*zeta^2 + 4*zeta - 12)*q^499 + (-8*zeta^2 - 8*zeta)*q^500 + (28*zeta + 
56)*q^501 + (-14*zeta^2 + 42)*q^502 + (-56*zeta + 56)*q^503 + 24*zeta^2*q^505 + 
(-8*zeta^2 - 8*zeta + 24)*q^506 + (26*zeta^2 + 26*zeta)*q^507 + (16*zeta + 
32)*q^508 + (-32*zeta^2 + 96)*q^509 + (-8*zeta + 8)*q^510 + zeta^2*q^512 + 
(40*zeta^2 + 40*zeta - 120)*q^513 + (18*zeta^2 + 18*zeta)*q^514 + (8*zeta + 
16)*q^515 + (4*zeta^2 - 12)*q^516 + (8*zeta - 8)*q^517 + 24*zeta^2*q^519 + 
(-2*zeta^2 - 2*zeta)*q^521 + (-2*zeta - 4)*q^522 + (-18*zeta^2 + 54)*q^523 + 
(-18*zeta + 18)*q^524 + 12*zeta^2*q^526 + (12*zeta^2 + 12*zeta - 36)*q^527 + 
(4*zeta^2 + 4*zeta)*q^528 + (-7*zeta - 14)*q^529 + (8*zeta^2 - 24)*q^530 + 
(-2*zeta + 2)*q^531 + (-10*zeta^2 - 10*zeta + 30)*q^534 + (-16*zeta^2 - 
16*zeta)*q^535 + (12*zeta + 24)*q^536 + (24*zeta^2 - 72)*q^537 + (16*zeta - 
16)*q^538 + 16*zeta^2*q^540 + (-10*zeta^2 - 10*zeta + 30)*q^541 + (32*zeta^2 + 
32*zeta)*q^542 + (2*zeta^2 - 6)*q^544 + (8*zeta - 8)*q^545 - 26*zeta^2*q^547 + 
(-12*zeta^2 - 12*zeta + 36)*q^548 + (-4*zeta^2 - 4*zeta)*q^549 + (-6*zeta - 
12)*q^550 + (20*zeta^2 - 60)*q^551 + (-8*zeta + 8)*q^552 - 2*zeta^2*q^554 + 
(40*zeta^2 + 40*zeta - 120)*q^555 + (14*zeta^2 + 14*zeta)*q^556 + (-30*zeta - 
60)*q^557 + (12*zeta^2 - 36)*q^558 - 4*zeta^2*q^561 + (-16*zeta^2 - 16*zeta + 
48)*q^562 + (-2*zeta^2 - 2*zeta)*q^563 + (-4*zeta - 8)*q^564 + (48*zeta^2 - 
144)*q^565 + (2*zeta - 2)*q^566 - 12*zeta^2*q^568 + (-10*zeta^2 - 10*zeta + 
30)*q^569 + (40*zeta^2 + 40*zeta)*q^570 + (-2*zeta - 4)*q^571 + (-8*zeta + 
8)*q^573 - 12*zeta^2*q^575 + (zeta^2 + zeta - 3)*q^576 + (-30*zeta^2 - 
30*zeta)*q^577 + (-15*zeta - 30)*q^578 + (-32*zeta^2 + 96)*q^579 + (-8*zeta + 
8)*q^580 - 14*zeta^2*q^582 + (-4*zeta^2 - 4*zeta + 12)*q^583 + (-2*zeta^2 - 
2*zeta)*q^584 + (28*zeta^2 - 84)*q^586 + (42*zeta - 42)*q^587 - 60*zeta^2*q^589 
+ (4*zeta^2 + 4*zeta - 12)*q^590 + (-4*zeta^2 - 4*zeta)*q^591 + (10*zeta + 
20)*q^592 + (10*zeta^2 - 30)*q^593 + (16*zeta - 16)*q^594 + 10*zeta^2*q^596 + 
(12*zeta^2 + 12*zeta - 36)*q^597 + (-16*zeta - 32)*q^599 + (6*zeta^2 - 18)*q^600
+ (-42*zeta + 42)*q^601 - 12*zeta^2*q^603 + (16*zeta^2 + 16*zeta - 48)*q^604 + 
(-28*zeta^2 - 28*zeta)*q^605 + (-12*zeta - 24)*q^606 + (24*zeta^2 - 72)*q^607 + 
(10*zeta - 10)*q^608 + 8*zeta^2*q^610 + (2*zeta^2 + 2*zeta)*q^612 + (-30*zeta - 
60)*q^613 + (14*zeta^2 - 42)*q^614 + (-56*zeta + 56)*q^615 - 26*zeta^2*q^617 + 
(4*zeta^2 + 4*zeta - 12)*q^618 + (26*zeta^2 + 26*zeta)*q^619 + (24*zeta + 
48)*q^620 + (32*zeta^2 - 96)*q^621 + (16*zeta - 16)*q^622 + (31*zeta^2 + 31*zeta
- 93)*q^625 + (18*zeta^2 + 18*zeta)*q^626 + (-20*zeta - 40)*q^627 + (16*zeta^2 -
48)*q^628 + (20*zeta - 20)*q^629 + 44*zeta^2*q^631 + (4*zeta^2 + 4*zeta - 
12)*q^632 + (24*zeta^2 + 24*zeta)*q^633 + (10*zeta + 20)*q^634 + (-64*zeta^2 + 
192)*q^635 + (-4*zeta + 4)*q^636 - 4*zeta^2*q^638 + (-12*zeta^2 - 12*zeta + 
36)*q^639 + (4*zeta^2 + 4*zeta)*q^640 + (26*zeta + 52)*q^641 + (-8*zeta^2 + 
24)*q^642 + (-14*zeta + 14)*q^643 - 8*zeta^2*q^645 + (-10*zeta^2 - 10*zeta + 
30)*q^646 + (12*zeta^2 + 12*zeta)*q^647 + (-5*zeta - 10)*q^648 + (-4*zeta^2 + 
12)*q^649 + 10*zeta^2*q^652 + (18*zeta^2 + 18*zeta - 54)*q^653 + (4*zeta^2 + 
4*zeta)*q^654 + (36*zeta + 72)*q^655 + (14*zeta^2 - 42)*q^656 + (-2*zeta + 
2)*q^657 + 30*zeta^2*q^659 + (-8*zeta^2 - 8*zeta + 24)*q^660 + (12*zeta^2 + 
12*zeta)*q^661 + (10*zeta + 20)*q^662 + (-14*zeta + 14)*q^664 - 10*zeta^2*q^666 
+ (8*zeta^2 + 8*zeta - 24)*q^667 + (-28*zeta^2 - 28*zeta)*q^668 + (-48*zeta^2 + 
144)*q^670 + (8*zeta - 8)*q^671 - 12*zeta^2*q^673 + (-2*zeta^2 - 2*zeta + 
6)*q^674 + (24*zeta^2 + 24*zeta)*q^675 + (-13*zeta - 26)*q^676 + (24*zeta^2 - 
72)*q^677 + (-24*zeta + 24)*q^678 - 4*zeta^2*q^680 + (-30*zeta^2 - 30*zeta + 
90)*q^681 + (-24*zeta^2 - 24*zeta)*q^682 + (12*zeta + 24)*q^683 + (-10*zeta^2 + 
30)*q^684 + (-48*zeta + 48)*q^685 + 24*zeta^2*q^687 + (-2*zeta^2 - 2*zeta + 
6)*q^688 + (16*zeta + 32)*q^690 + (-18*zeta^2 + 54)*q^691 + (24*zeta - 24)*q^692
- 30*zeta^2*q^694 + (-28*zeta^2 - 28*zeta + 84)*q^695 + (-4*zeta^2 - 
4*zeta)*q^696 + (14*zeta + 28)*q^697 + (48*zeta - 48)*q^699 + 30*zeta^2*q^701 + 
(-100*zeta^2 - 100*zeta)*q^703 + (-2*zeta - 4)*q^704 + (16*zeta^2 - 48)*q^705 + 
(2*zeta - 2)*q^706 + 2*zeta^2*q^708 + (-10*zeta^2 - 10*zeta + 30)*q^709 + 
(-48*zeta^2 - 48*zeta)*q^710 + (4*zeta + 8)*q^711 + (10*zeta^2 - 30)*q^712 + 
(48*zeta - 48)*q^713 + O(q^714)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_14D3 := Curve(P_Q, [ PolynomialRing(RationalField(), 3) |
x[1]^4 - 5/7*x[1]^2*x[2]^2 + 5/7*x[1]^2*x[2]*x[3] - 3/14*x[1]^2*x[3]^2 + 
40/343*x[2]^4 - 72/343*x[2]^3*x[3] + 165/1372*x[2]^2*x[3]^2 - 
25/1372*x[2]*x[3]^3 - 1/5488*x[3]^4
]);
