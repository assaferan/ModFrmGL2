
    /****************************************************
    Loading this file in magma loads the objects fs_21C3 
    and X_21C3. fs_21C3 is a list of power series which form 
    a basis for the space of cusp forms. X_21C3 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | 1, -8, 8, 6, -6, -1, 1 
]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_21C3 := [Kq | 1/3*(-zeta^5 + 6*zeta^3 - zeta^2 - 8*zeta + 3)*q 
+ 1/3*(-zeta^3 + 3*zeta)*q^4 - 2/3*q^7 + (2*zeta^3 - 6*zeta)*q^10 + 
1/3*(-2*zeta^5 + 12*zeta^3 - 2*zeta^2 - 16*zeta + 6)*q^13 + 1/3*(-5*zeta^5 + 
25*zeta^3 - 5*zeta^2 - 25*zeta + 10)*q^16 + 1/3*(-4*zeta^5 + 20*zeta^3 - 
4*zeta^2 - 20*zeta + 8)*q^19 + (-2*zeta^5 + 12*zeta^3 - 2*zeta^2 - 16*zeta + 
6)*q^22 + 1/3*(-7*zeta^3 + 21*zeta)*q^25 - 2/3*q^28 + 1/3*(4*zeta^3 - 
12*zeta)*q^31 + (-2*zeta^5 + 12*zeta^3 - 2*zeta^2 - 16*zeta + 6)*q^34 + 
1/3*(2*zeta^5 - 10*zeta^3 + 2*zeta^2 + 10*zeta - 4)*q^37 + (2*zeta^5 - 10*zeta^3
+ 2*zeta^2 + 10*zeta - 4)*q^40 + 1/3*(4*zeta^5 - 24*zeta^3 + 4*zeta^2 + 32*zeta 
- 12)*q^43 + (2*zeta^3 - 6*zeta)*q^46 - 2/3*q^49 + 1/3*(-2*zeta^3 + 6*zeta)*q^52
+ (4*zeta^5 - 24*zeta^3 + 4*zeta^2 + 32*zeta - 12)*q^55 + 1/3*(-10*zeta^5 + 
50*zeta^3 - 10*zeta^2 - 50*zeta + 20)*q^61 + 1/3*(-zeta^5 + 6*zeta^3 - zeta^2 - 
8*zeta + 3)*q^64 + 1/3*(4*zeta^3 - 12*zeta)*q^67 + 4*q^70 + 1/3*(-14*zeta^3 + 
42*zeta)*q^73 + 1/3*(4*zeta^5 - 24*zeta^3 + 4*zeta^2 + 32*zeta - 12)*q^76 + 
1/3*(8*zeta^5 - 40*zeta^3 + 8*zeta^2 + 40*zeta - 16)*q^79 + (6*zeta^5 - 
30*zeta^3 + 6*zeta^2 + 30*zeta - 12)*q^82 + (4*zeta^5 - 24*zeta^3 + 4*zeta^2 + 
32*zeta - 12)*q^85 + (2*zeta^3 - 6*zeta)*q^88 - 4/3*q^91 + (-4*zeta^3 + 
12*zeta)*q^94 + 1/3*(-14*zeta^5 + 84*zeta^3 - 14*zeta^2 - 112*zeta + 42)*q^97 + 
1/3*(7*zeta^5 - 35*zeta^3 + 7*zeta^2 + 35*zeta - 14)*q^100 + 1/3*(-4*zeta^5 + 
20*zeta^3 - 4*zeta^2 - 20*zeta + 8)*q^103 + (4*zeta^5 - 24*zeta^3 + 4*zeta^2 + 
32*zeta - 12)*q^106 + 1/3*(-2*zeta^3 + 6*zeta)*q^109 + 10/3*q^112 + (-4*zeta^3 +
12*zeta)*q^115 + (4*zeta^5 - 24*zeta^3 + 4*zeta^2 + 32*zeta - 12)*q^118 + 
1/3*(zeta^5 - 5*zeta^3 + zeta^2 + 5*zeta - 2)*q^121 + 1/3*(-4*zeta^5 + 20*zeta^3
- 4*zeta^2 - 20*zeta + 8)*q^124 + 1/3*(-8*zeta^5 + 48*zeta^3 - 8*zeta^2 - 
64*zeta + 24)*q^127 + (4*zeta^3 - 12*zeta)*q^130 + 8/3*q^133 + (2*zeta^3 - 
6*zeta)*q^136 + 1/3*(16*zeta^5 - 96*zeta^3 + 16*zeta^2 + 128*zeta - 48)*q^139 + 
(-6*zeta^5 + 30*zeta^3 - 6*zeta^2 - 30*zeta + 12)*q^142 + 1/3*(-2*zeta^5 + 
12*zeta^3 - 2*zeta^2 - 16*zeta + 6)*q^148 + 1/3*(-8*zeta^3 + 24*zeta)*q^151 - 
4*q^154 + 1/3*(10*zeta^3 - 30*zeta)*q^157 + (-6*zeta^5 + 36*zeta^3 - 6*zeta^2 - 
48*zeta + 18)*q^160 + 1/3*(20*zeta^5 - 100*zeta^3 + 20*zeta^2 + 100*zeta - 
40)*q^163 + (3*zeta^5 - 18*zeta^3 + 3*zeta^2 + 24*zeta - 9)*q^169 + 
1/3*(4*zeta^3 - 12*zeta)*q^172 - 14/3*q^175 + (2*zeta^3 - 6*zeta)*q^178 + 
1/3*(-2*zeta^5 + 12*zeta^3 - 2*zeta^2 - 16*zeta + 6)*q^181 + (2*zeta^5 - 
10*zeta^3 + 2*zeta^2 + 10*zeta - 4)*q^184 + (4*zeta^5 - 20*zeta^3 + 4*zeta^2 + 
20*zeta - 8)*q^187 + (-8*zeta^5 + 48*zeta^3 - 8*zeta^2 - 64*zeta + 24)*q^190 + 
1/3*(-14*zeta^3 + 42*zeta)*q^193 - 2/3*q^196 + 1/3*(16*zeta^3 - 48*zeta)*q^199 +
(-2*zeta^5 + 12*zeta^3 - 2*zeta^2 - 16*zeta + 6)*q^202 + (-12*zeta^5 + 60*zeta^3
- 12*zeta^2 - 60*zeta + 24)*q^205 + 1/3*(-10*zeta^5 + 50*zeta^3 - 10*zeta^2 - 
50*zeta + 20)*q^208 + 1/3*(-20*zeta^5 + 120*zeta^3 - 20*zeta^2 - 160*zeta + 
60)*q^211 + (-10*zeta^3 + 30*zeta)*q^214 + 8/3*q^217 + (4*zeta^3 - 
12*zeta)*q^220 + 1/3*(-8*zeta^5 + 48*zeta^3 - 8*zeta^2 - 64*zeta + 24)*q^223 + 
1/3*(-22*zeta^5 + 110*zeta^3 - 22*zeta^2 - 110*zeta + 44)*q^229 + (8*zeta^3 - 
24*zeta)*q^235 - 4*q^238 + 1/3*(10*zeta^3 - 30*zeta)*q^241 + 1/3*(10*zeta^5 - 
60*zeta^3 + 10*zeta^2 + 80*zeta - 30)*q^244 + 1/3*(-8*zeta^5 + 40*zeta^3 - 
8*zeta^2 - 40*zeta + 16)*q^247 + (-4*zeta^5 + 20*zeta^3 - 4*zeta^2 - 20*zeta + 
8)*q^250 + (4*zeta^5 - 24*zeta^3 + 4*zeta^2 + 32*zeta - 12)*q^253 + 
1/3*(-19*zeta^3 + 57*zeta)*q^256 - 4/3*q^259 + (8*zeta^3 - 24*zeta)*q^262 + 
(-8*zeta^5 + 48*zeta^3 - 8*zeta^2 - 64*zeta + 24)*q^265 + 1/3*(-4*zeta^5 + 
20*zeta^3 - 4*zeta^2 - 20*zeta + 8)*q^268 + 1/3*(20*zeta^5 - 100*zeta^3 + 
20*zeta^2 + 100*zeta - 40)*q^271 + (4*zeta^5 - 24*zeta^3 + 4*zeta^2 + 32*zeta - 
12)*q^274 + 1/3*(10*zeta^3 - 30*zeta)*q^277 - 4*q^280 + 1/3*(4*zeta^3 - 
12*zeta)*q^283 + (-4*zeta^5 + 24*zeta^3 - 4*zeta^2 - 32*zeta + 12)*q^286 + 
1/3*(-5*zeta^5 + 25*zeta^3 - 5*zeta^2 - 25*zeta + 10)*q^289 + 1/3*(14*zeta^5 - 
70*zeta^3 + 14*zeta^2 + 70*zeta - 28)*q^292 + (-8*zeta^5 + 48*zeta^3 - 8*zeta^2 
- 64*zeta + 24)*q^295 + (-4*zeta^3 + 12*zeta)*q^298 + 8/3*q^301 + 
1/3*(-20*zeta^3 + 60*zeta)*q^304 + 1/3*(28*zeta^5 - 168*zeta^3 + 28*zeta^2 + 
224*zeta - 84)*q^307 + (8*zeta^5 - 40*zeta^3 + 8*zeta^2 + 40*zeta - 16)*q^310 + 
1/3*(2*zeta^5 - 10*zeta^3 + 2*zeta^2 + 10*zeta - 4)*q^313 + 1/3*(-8*zeta^5 + 
48*zeta^3 - 8*zeta^2 - 64*zeta + 24)*q^316 + 4*q^322 + 1/3*(-14*zeta^3 + 
42*zeta)*q^325 + (6*zeta^5 - 36*zeta^3 + 6*zeta^2 + 48*zeta - 18)*q^328 + 
1/3*(20*zeta^5 - 100*zeta^3 + 20*zeta^2 + 100*zeta - 40)*q^331 + (-12*zeta^5 + 
60*zeta^3 - 12*zeta^2 - 60*zeta + 24)*q^334 + 1/3*(-14*zeta^5 + 84*zeta^3 - 
14*zeta^2 - 112*zeta + 42)*q^337 + (4*zeta^3 - 12*zeta)*q^340 - 2/3*q^343 + 
(-10*zeta^3 + 30*zeta)*q^346 + 1/3*(-14*zeta^5 + 84*zeta^3 - 14*zeta^2 - 
112*zeta + 42)*q^349 + (-6*zeta^5 + 30*zeta^3 - 6*zeta^2 - 30*zeta + 12)*q^352 +
(12*zeta^5 - 60*zeta^3 + 12*zeta^2 + 60*zeta - 24)*q^355 + (10*zeta^5 - 
60*zeta^3 + 10*zeta^2 + 80*zeta - 30)*q^358 + (zeta^3 - 3*zeta)*q^361 - 
4/3*q^364 + 1/3*(16*zeta^3 - 48*zeta)*q^367 + (4*zeta^5 - 24*zeta^3 + 4*zeta^2 +
32*zeta - 12)*q^370 + 1/3*(-10*zeta^5 + 50*zeta^3 - 10*zeta^2 - 50*zeta + 
20)*q^373 + (-4*zeta^5 + 20*zeta^3 - 4*zeta^2 - 20*zeta + 8)*q^376 + 
1/3*(28*zeta^5 - 168*zeta^3 + 28*zeta^2 + 224*zeta - 84)*q^379 + (14*zeta^3 - 
42*zeta)*q^382 + 8*q^385 + 1/3*(-14*zeta^3 + 42*zeta)*q^388 + (4*zeta^5 - 
24*zeta^3 + 4*zeta^2 + 32*zeta - 12)*q^391 + (12*zeta^5 - 60*zeta^3 + 12*zeta^2 
+ 60*zeta - 24)*q^394 + 1/3*(38*zeta^5 - 190*zeta^3 + 38*zeta^2 + 190*zeta - 
76)*q^397 + 1/3*(35*zeta^5 - 210*zeta^3 + 35*zeta^2 + 280*zeta - 105)*q^400 + 
1/3*(8*zeta^3 - 24*zeta)*q^403 + 1/3*(-14*zeta^3 + 42*zeta)*q^409 + 
1/3*(4*zeta^5 - 24*zeta^3 + 4*zeta^2 + 32*zeta - 12)*q^412 + (-8*zeta^5 + 
40*zeta^3 - 8*zeta^2 - 40*zeta + 16)*q^418 + 1/3*(10*zeta^5 - 60*zeta^3 + 
10*zeta^2 + 80*zeta - 30)*q^421 + (-4*zeta^3 + 12*zeta)*q^424 + 20/3*q^427 + 
(-8*zeta^3 + 24*zeta)*q^430 + 1/3*(-26*zeta^5 + 156*zeta^3 - 26*zeta^2 - 
208*zeta + 78)*q^433 + 1/3*(2*zeta^5 - 10*zeta^3 + 2*zeta^2 + 10*zeta - 4)*q^436
+ 1/3*(-16*zeta^5 + 80*zeta^3 - 16*zeta^2 - 80*zeta + 32)*q^439 + (-4*zeta^5 + 
24*zeta^3 - 4*zeta^2 - 32*zeta + 12)*q^442 + (-4*zeta^3 + 12*zeta)*q^445 - 
2/3*q^448 + (-12*zeta^3 + 36*zeta)*q^451 + (4*zeta^5 - 24*zeta^3 + 4*zeta^2 + 
32*zeta - 12)*q^454 + 1/3*(-10*zeta^5 + 50*zeta^3 - 10*zeta^2 - 50*zeta + 
20)*q^457 + (4*zeta^5 - 20*zeta^3 + 4*zeta^2 + 20*zeta - 8)*q^460 + 
1/3*(-32*zeta^5 + 192*zeta^3 - 32*zeta^2 - 256*zeta + 96)*q^463 + (-4*zeta^3 + 
12*zeta)*q^466 + 8/3*q^469 + (-4*zeta^3 + 12*zeta)*q^472 + 1/3*(28*zeta^5 - 
168*zeta^3 + 28*zeta^2 + 224*zeta - 84)*q^475 + (6*zeta^5 - 30*zeta^3 + 6*zeta^2
+ 30*zeta - 12)*q^478 + 1/3*(4*zeta^5 - 20*zeta^3 + 4*zeta^2 + 20*zeta - 
8)*q^481 + 1/3*(-zeta^5 + 6*zeta^3 - zeta^2 - 8*zeta + 3)*q^484 + 1/3*(40*zeta^3
- 120*zeta)*q^487 + 4*q^490 + 1/3*(-20*zeta^5 + 120*zeta^3 - 20*zeta^2 - 
160*zeta + 60)*q^496 + 1/3*(-4*zeta^5 + 20*zeta^3 - 4*zeta^2 - 20*zeta + 
8)*q^499 + (12*zeta^5 - 60*zeta^3 + 12*zeta^2 + 60*zeta - 24)*q^502 + (4*zeta^5 
- 24*zeta^3 + 4*zeta^2 + 32*zeta - 12)*q^505 + 1/3*(-8*zeta^3 + 24*zeta)*q^508 -
28/3*q^511 + (2*zeta^3 - 6*zeta)*q^514 + (-8*zeta^5 + 48*zeta^3 - 8*zeta^2 - 
64*zeta + 24)*q^517 + (4*zeta^5 - 20*zeta^3 + 4*zeta^2 + 20*zeta - 8)*q^520 + 
1/3*(-16*zeta^5 + 80*zeta^3 - 16*zeta^2 - 80*zeta + 32)*q^523 + (10*zeta^5 - 
60*zeta^3 + 10*zeta^2 + 80*zeta - 30)*q^526 + 1/3*(11*zeta^3 - 33*zeta)*q^529 + 
8/3*q^532 + (20*zeta^3 - 60*zeta)*q^535 + (10*zeta^5 - 60*zeta^3 + 10*zeta^2 + 
80*zeta - 30)*q^538 + 1/3*(14*zeta^5 - 70*zeta^3 + 14*zeta^2 + 70*zeta - 
28)*q^541 + (-6*zeta^5 + 30*zeta^3 - 6*zeta^2 - 30*zeta + 12)*q^544 + 
1/3*(4*zeta^5 - 24*zeta^3 + 4*zeta^2 + 32*zeta - 12)*q^547 + (-14*zeta^3 + 
42*zeta)*q^550 - 16/3*q^553 + 1/3*(16*zeta^3 - 48*zeta)*q^556 + 1/3*(8*zeta^5 - 
48*zeta^3 + 8*zeta^2 + 64*zeta - 24)*q^559 + (-12*zeta^5 + 60*zeta^3 - 12*zeta^2
- 60*zeta + 24)*q^562 + (-6*zeta^5 + 36*zeta^3 - 6*zeta^2 - 48*zeta + 18)*q^568 
+ 1/3*(28*zeta^3 - 84*zeta)*q^571 - 12*q^574 + 1/3*(-2*zeta^3 + 6*zeta)*q^577 + 
(-8*zeta^5 + 40*zeta^3 - 8*zeta^2 - 40*zeta + 16)*q^583 + (-6*zeta^5 + 30*zeta^3
- 6*zeta^2 - 30*zeta + 12)*q^586 + 1/3*(-16*zeta^5 + 96*zeta^3 - 16*zeta^2 - 
128*zeta + 48)*q^589 + 1/3*(10*zeta^3 - 30*zeta)*q^592 + 8*q^595 + (4*zeta^3 - 
12*zeta)*q^598 + 1/3*(22*zeta^5 - 132*zeta^3 + 22*zeta^2 + 176*zeta - 66)*q^601 
+ 1/3*(8*zeta^5 - 40*zeta^3 + 8*zeta^2 + 40*zeta - 16)*q^604 + 1/3*(8*zeta^5 - 
40*zeta^3 + 8*zeta^2 + 40*zeta - 16)*q^607 + (-20*zeta^5 + 120*zeta^3 - 
20*zeta^2 - 160*zeta + 60)*q^610 + 1/3*(-38*zeta^3 + 114*zeta)*q^613 + 4*q^616 +
1/3*(-8*zeta^3 + 24*zeta)*q^619 + (-20*zeta^5 + 120*zeta^3 - 20*zeta^2 - 
160*zeta + 60)*q^622 + 1/3*(-11*zeta^5 + 55*zeta^3 - 11*zeta^2 - 55*zeta + 
22)*q^625 + 1/3*(-10*zeta^5 + 50*zeta^3 - 10*zeta^2 - 50*zeta + 20)*q^628 + 
1/3*(-8*zeta^5 + 48*zeta^3 - 8*zeta^2 - 64*zeta + 24)*q^631 + (-4*zeta^3 + 
12*zeta)*q^634 - 4/3*q^637 + (14*zeta^3 - 42*zeta)*q^640 + 1/3*(-20*zeta^5 + 
120*zeta^3 - 20*zeta^2 - 160*zeta + 60)*q^643 + (-8*zeta^5 + 40*zeta^3 - 
8*zeta^2 - 40*zeta + 16)*q^646 + (-8*zeta^5 + 40*zeta^3 - 8*zeta^2 - 40*zeta + 
16)*q^649 + 1/3*(-20*zeta^5 + 120*zeta^3 - 20*zeta^2 - 160*zeta + 60)*q^652 + 
(-16*zeta^3 + 48*zeta)*q^655 - 8*q^658 + 1/3*(10*zeta^3 - 30*zeta)*q^661 + 
(8*zeta^5 - 40*zeta^3 + 8*zeta^2 + 40*zeta - 16)*q^670 + 1/3*(10*zeta^5 - 
60*zeta^3 + 10*zeta^2 + 80*zeta - 30)*q^673 + (3*zeta^3 - 9*zeta)*q^676 - 
28/3*q^679 + (8*zeta^3 - 24*zeta)*q^682 + (-8*zeta^5 + 48*zeta^3 - 8*zeta^2 - 
64*zeta + 24)*q^685 + 1/3*(20*zeta^5 - 100*zeta^3 + 20*zeta^2 + 100*zeta - 
40)*q^688 + 1/3*(8*zeta^5 - 40*zeta^3 + 8*zeta^2 + 40*zeta - 16)*q^691 + 
(10*zeta^5 - 60*zeta^3 + 10*zeta^2 + 80*zeta - 30)*q^694 + (-12*zeta^3 + 
36*zeta)*q^697 - 14/3*q^700 + 1/3*(8*zeta^3 - 24*zeta)*q^703 + (-2*zeta^5 + 
12*zeta^3 - 2*zeta^2 - 16*zeta + 6)*q^706 + 1/3*(26*zeta^5 - 130*zeta^3 + 
26*zeta^2 + 130*zeta - 52)*q^709 + (2*zeta^5 - 10*zeta^3 + 2*zeta^2 + 10*zeta - 
4)*q^712 + (8*zeta^5 - 48*zeta^3 + 8*zeta^2 + 64*zeta - 24)*q^715 + (14*zeta^3 -
42*zeta)*q^718 + 8/3*q^721 + 1/3*(-2*zeta^3 + 6*zeta)*q^724 + 1/3*(4*zeta^5 - 
24*zeta^3 + 4*zeta^2 + 32*zeta - 12)*q^727 + (-28*zeta^5 + 140*zeta^3 - 
28*zeta^2 - 140*zeta + 56)*q^730 + 1/3*(-22*zeta^5 + 110*zeta^3 - 22*zeta^2 - 
110*zeta + 44)*q^733 + (-6*zeta^5 + 36*zeta^3 - 6*zeta^2 - 48*zeta + 18)*q^736 +
1/3*(-20*zeta^3 + 60*zeta)*q^739 + 8*q^742 + (8*zeta^3 - 24*zeta)*q^745 + 
(-4*zeta^5 + 24*zeta^3 - 4*zeta^2 - 32*zeta + 12)*q^748 + 1/3*(8*zeta^5 - 
40*zeta^3 + 8*zeta^2 + 40*zeta - 16)*q^751 + 1/3*(-26*zeta^5 + 156*zeta^3 - 
26*zeta^2 - 208*zeta + 78)*q^757 + (8*zeta^3 - 24*zeta)*q^760 - 4/3*q^763 + 
(8*zeta^3 - 24*zeta)*q^766 + 1/3*(22*zeta^5 - 132*zeta^3 + 22*zeta^2 + 176*zeta 
- 66)*q^769 + 1/3*(14*zeta^5 - 70*zeta^3 + 14*zeta^2 + 70*zeta - 28)*q^772 + 
1/3*(-28*zeta^5 + 140*zeta^3 - 28*zeta^2 - 140*zeta + 56)*q^775 + (-8*zeta^5 + 
48*zeta^3 - 8*zeta^2 - 64*zeta + 24)*q^778 + (12*zeta^3 - 36*zeta)*q^781 + 
10/3*q^784 + 1/3*(-32*zeta^3 + 96*zeta)*q^787 + (16*zeta^5 - 96*zeta^3 + 
16*zeta^2 + 128*zeta - 48)*q^790 + 1/3*(-20*zeta^5 + 100*zeta^3 - 20*zeta^2 - 
100*zeta + 40)*q^793 + 1/3*(-16*zeta^5 + 80*zeta^3 - 16*zeta^2 - 80*zeta + 
32)*q^796 + (-8*zeta^5 + 48*zeta^3 - 8*zeta^2 - 64*zeta + 24)*q^799 + (-4*zeta^3
+ 12*zeta)*q^802 - 8*q^805 + (2*zeta^3 - 6*zeta)*q^808 + 1/3*(16*zeta^5 - 
96*zeta^3 + 16*zeta^2 + 128*zeta - 48)*q^811 + (4*zeta^5 - 20*zeta^3 + 4*zeta^2 
+ 20*zeta - 8)*q^814 + 1/3*(16*zeta^5 - 80*zeta^3 + 16*zeta^2 + 80*zeta - 
32)*q^817 + (12*zeta^5 - 72*zeta^3 + 12*zeta^2 + 96*zeta - 36)*q^820 + 
1/3*(-32*zeta^3 + 96*zeta)*q^823 + 8*q^826 + 1/3*(-50*zeta^3 + 150*zeta)*q^829 +
1/3*(-2*zeta^5 + 12*zeta^3 - 2*zeta^2 - 16*zeta + 6)*q^832 + (24*zeta^5 - 
120*zeta^3 + 24*zeta^2 + 120*zeta - 48)*q^835 + (12*zeta^5 - 60*zeta^3 + 
12*zeta^2 + 60*zeta - 24)*q^838 + 1/3*(29*zeta^5 - 174*zeta^3 + 29*zeta^2 + 
232*zeta - 87)*q^841 + 1/3*(-20*zeta^3 + 60*zeta)*q^844 - 2/3*q^847 + 
(-14*zeta^3 + 42*zeta)*q^850 + 1/3*(10*zeta^5 - 60*zeta^3 + 10*zeta^2 + 80*zeta 
- 30)*q^853 + (-10*zeta^5 + 50*zeta^3 - 10*zeta^2 - 50*zeta + 20)*q^856 + 
1/3*(-4*zeta^5 + 20*zeta^3 - 4*zeta^2 - 20*zeta + 8)*q^859 + (-2*zeta^5 + 
12*zeta^3 - 2*zeta^2 - 16*zeta + 6)*q^862 + (20*zeta^3 - 60*zeta)*q^865 + 
8/3*q^868 + 1/3*(8*zeta^3 - 24*zeta)*q^871 + (-8*zeta^5 + 48*zeta^3 - 8*zeta^2 -
64*zeta + 24)*q^874 + 1/3*(14*zeta^5 - 70*zeta^3 + 14*zeta^2 + 70*zeta - 
28)*q^877 + (20*zeta^5 - 100*zeta^3 + 20*zeta^2 + 100*zeta - 40)*q^880 + 
1/3*(52*zeta^5 - 312*zeta^3 + 52*zeta^2 + 416*zeta - 156)*q^883 + (2*zeta^3 - 
6*zeta)*q^886 - 16/3*q^889 + 1/3*(-8*zeta^3 + 24*zeta)*q^892 + (-20*zeta^5 + 
120*zeta^3 - 20*zeta^2 - 160*zeta + 60)*q^895 + (24*zeta^5 - 120*zeta^3 + 
24*zeta^2 + 120*zeta - 48)*q^898 + (-8*zeta^5 + 40*zeta^3 - 8*zeta^2 - 40*zeta +
16)*q^901 + 1/3*(28*zeta^3 - 84*zeta)*q^907 + 8*q^910 + 1/3*(22*zeta^5 - 
132*zeta^3 + 22*zeta^2 + 176*zeta - 66)*q^916 + 1/3*(-16*zeta^5 + 80*zeta^3 - 
16*zeta^2 - 80*zeta + 32)*q^919 + (18*zeta^5 - 90*zeta^3 + 18*zeta^2 + 90*zeta -
36)*q^922 + 1/3*(-14*zeta^5 + 84*zeta^3 - 14*zeta^2 - 112*zeta + 42)*q^925 + 
8/3*q^931 + (-4*zeta^3 + 12*zeta)*q^934 + 1/3*(46*zeta^5 - 276*zeta^3 + 
46*zeta^2 + 368*zeta - 138)*q^937 + (-8*zeta^5 + 40*zeta^3 - 8*zeta^2 - 40*zeta 
+ 16)*q^940 + (-12*zeta^5 + 60*zeta^3 - 12*zeta^2 - 60*zeta + 24)*q^943 + 
(8*zeta^5 - 48*zeta^3 + 8*zeta^2 + 64*zeta - 24)*q^946 + 1/3*(-28*zeta^3 + 
84*zeta)*q^949 + 4*q^952 + (-28*zeta^3 + 84*zeta)*q^955 + (4*zeta^5 - 24*zeta^3 
+ 4*zeta^2 + 32*zeta - 12)*q^958 + (-5*zeta^5 + 25*zeta^3 - 5*zeta^2 - 25*zeta +
10)*q^961 + 1/3*(-10*zeta^5 + 50*zeta^3 - 10*zeta^2 - 50*zeta + 20)*q^964 + 
1/3*(16*zeta^5 - 96*zeta^3 + 16*zeta^2 + 128*zeta - 48)*q^967 + (28*zeta^3 - 
84*zeta)*q^970 + 32/3*q^973 + 1/3*(-50*zeta^3 + 150*zeta)*q^976 + (4*zeta^5 - 
24*zeta^3 + 4*zeta^2 + 32*zeta - 12)*q^979 + (6*zeta^5 - 30*zeta^3 + 6*zeta^2 + 
30*zeta - 12)*q^982 + (-24*zeta^5 + 120*zeta^3 - 24*zeta^2 - 120*zeta + 
48)*q^985 + 1/3*(8*zeta^5 - 48*zeta^3 + 8*zeta^2 + 64*zeta - 24)*q^988 + 
1/3*(-56*zeta^3 + 168*zeta)*q^991 + 12*q^994 + 1/3*(10*zeta^3 - 30*zeta)*q^997 +
(-4*zeta^5 + 24*zeta^3 - 4*zeta^2 - 32*zeta + 12)*q^1000 + (-8*zeta^5 + 
40*zeta^3 - 8*zeta^2 - 40*zeta + 16)*q^1003 + 1/3*(46*zeta^5 - 276*zeta^3 + 
46*zeta^2 + 368*zeta - 138)*q^1009 + (4*zeta^3 - 12*zeta)*q^1012 + (2*zeta^3 - 
6*zeta)*q^1018 + 1/3*(58*zeta^5 - 348*zeta^3 + 58*zeta^2 + 464*zeta - 
174)*q^1021 + 1/3*(-23*zeta^5 + 115*zeta^3 - 23*zeta^2 - 115*zeta + 46)*q^1024 +
1/3*(16*zeta^5 - 80*zeta^3 + 16*zeta^2 + 80*zeta - 32)*q^1027 + (-8*zeta^5 + 
48*zeta^3 - 8*zeta^2 - 64*zeta + 24)*q^1030 + 1/3*(-2*zeta^3 + 6*zeta)*q^1033 - 
4/3*q^1036 + 1/3*(40*zeta^3 - 120*zeta)*q^1039 + (-2*zeta^5 + 12*zeta^3 - 
2*zeta^2 - 16*zeta + 6)*q^1042 + (16*zeta^5 - 80*zeta^3 + 16*zeta^2 + 80*zeta - 
32)*q^1045 + (8*zeta^5 - 40*zeta^3 + 8*zeta^2 + 40*zeta - 16)*q^1048 + 
1/3*(4*zeta^5 - 24*zeta^3 + 4*zeta^2 + 32*zeta - 12)*q^1051 + (8*zeta^3 - 
24*zeta)*q^1054 - 16/3*q^1057 + (-8*zeta^3 + 24*zeta)*q^1060 + 1/3*(-44*zeta^5 +
264*zeta^3 - 44*zeta^2 - 352*zeta + 132)*q^1063 + (12*zeta^5 - 60*zeta^3 + 
12*zeta^2 + 60*zeta - 24)*q^1066 + 1/3*(62*zeta^5 - 310*zeta^3 + 62*zeta^2 + 
310*zeta - 124)*q^1069 + 1/3*(-20*zeta^5 + 120*zeta^3 - 20*zeta^2 - 160*zeta + 
60)*q^1072 + 1/3*(28*zeta^3 - 84*zeta)*q^1075 - 4*q^1078 + (8*zeta^3 - 
24*zeta)*q^1081 + 1/3*(-20*zeta^5 + 120*zeta^3 - 20*zeta^2 - 160*zeta + 
60)*q^1084 + 1/3*(-16*zeta^5 + 80*zeta^3 - 16*zeta^2 - 80*zeta + 32)*q^1087 + 
(-4*zeta^5 + 20*zeta^3 - 4*zeta^2 - 20*zeta + 8)*q^1090 + 1/3*(34*zeta^5 - 
204*zeta^3 + 34*zeta^2 + 272*zeta - 102)*q^1093 + (-4*zeta^3 + 12*zeta)*q^1096 +
20/3*q^1099 + (8*zeta^5 - 48*zeta^3 + 8*zeta^2 + 64*zeta - 24)*q^1105 + 
1/3*(-10*zeta^5 + 50*zeta^3 - 10*zeta^2 - 50*zeta + 20)*q^1108 + (4*zeta^5 - 
20*zeta^3 + 4*zeta^2 + 20*zeta - 8)*q^1111 + O(q^1113), 1/2*(-zeta^5 + 5*zeta^3 
- zeta^2 - 5*zeta + 2)*q^2 + (zeta^5 - 5*zeta^3 + zeta^2 + 5*zeta - 2)*q^5 + 
1/2*(-zeta^5 + 6*zeta^3 - zeta^2 - 8*zeta + 3)*q^8 + (zeta^3 - 3*zeta)*q^11 + 
q^14 + (zeta^3 - 3*zeta)*q^17 + (-zeta^5 + 6*zeta^3 - zeta^2 - 8*zeta + 3)*q^20 
+ (zeta^5 - 5*zeta^3 + zeta^2 + 5*zeta - 2)*q^23 + (-zeta^5 + 5*zeta^3 - zeta^2 
- 5*zeta + 2)*q^26 + 1/2*(-3*zeta^3 + 9*zeta)*q^32 - 2*q^35 + (-2*zeta^3 + 
6*zeta)*q^38 + (3*zeta^5 - 18*zeta^3 + 3*zeta^2 + 24*zeta - 9)*q^41 + (-zeta^5 +
5*zeta^3 - zeta^2 - 5*zeta + 2)*q^44 + (-2*zeta^5 + 10*zeta^3 - 2*zeta^2 - 
10*zeta + 4)*q^47 + 1/2*(7*zeta^5 - 42*zeta^3 + 7*zeta^2 + 56*zeta - 21)*q^50 + 
(-2*zeta^3 + 6*zeta)*q^53 - q^56 + (-2*zeta^3 + 6*zeta)*q^59 + (-2*zeta^5 + 
12*zeta^3 - 2*zeta^2 - 16*zeta + 6)*q^62 + (2*zeta^5 - 10*zeta^3 + 2*zeta^2 + 
10*zeta - 4)*q^65 + (-zeta^5 + 5*zeta^3 - zeta^2 - 5*zeta + 2)*q^68 + (-3*zeta^5
+ 18*zeta^3 - 3*zeta^2 - 24*zeta + 9)*q^71 + (zeta^3 - 3*zeta)*q^74 + 2*q^77 + 
(5*zeta^3 - 15*zeta)*q^80 + (2*zeta^5 - 10*zeta^3 + 2*zeta^2 + 10*zeta - 4)*q^86
+ (zeta^5 - 5*zeta^3 + zeta^2 + 5*zeta - 2)*q^89 + (-zeta^5 + 6*zeta^3 - zeta^2 
- 8*zeta + 3)*q^92 + (4*zeta^3 - 12*zeta)*q^95 + q^98 + (zeta^3 - 3*zeta)*q^101 
+ (-zeta^5 + 6*zeta^3 - zeta^2 - 8*zeta + 3)*q^104 + (-5*zeta^5 + 25*zeta^3 - 
5*zeta^2 - 25*zeta + 10)*q^107 + (6*zeta^5 - 30*zeta^3 + 6*zeta^2 + 30*zeta - 
12)*q^110 + 2*q^119 + (-5*zeta^3 + 15*zeta)*q^122 + (-2*zeta^5 + 12*zeta^3 - 
2*zeta^2 - 16*zeta + 6)*q^125 + 1/2*(-7*zeta^5 + 35*zeta^3 - 7*zeta^2 - 35*zeta 
+ 14)*q^128 + (4*zeta^5 - 20*zeta^3 + 4*zeta^2 + 20*zeta - 8)*q^131 + (-2*zeta^5
+ 12*zeta^3 - 2*zeta^2 - 16*zeta + 6)*q^134 + (-2*zeta^3 + 6*zeta)*q^137 - 
2*q^140 + (2*zeta^3 - 6*zeta)*q^143 + (7*zeta^5 - 42*zeta^3 + 7*zeta^2 + 56*zeta
- 21)*q^146 + (-2*zeta^5 + 10*zeta^3 - 2*zeta^2 - 10*zeta + 4)*q^149 + 
(-2*zeta^5 + 10*zeta^3 - 2*zeta^2 - 10*zeta + 4)*q^152 + (4*zeta^5 - 24*zeta^3 +
4*zeta^2 + 32*zeta - 12)*q^155 + (4*zeta^3 - 12*zeta)*q^158 - 2*q^161 + 
(3*zeta^3 - 9*zeta)*q^164 + (-6*zeta^5 + 36*zeta^3 - 6*zeta^2 - 48*zeta + 
18)*q^167 + (6*zeta^5 - 30*zeta^3 + 6*zeta^2 + 30*zeta - 12)*q^170 + (-5*zeta^5 
+ 25*zeta^3 - 5*zeta^2 - 25*zeta + 10)*q^173 + (-5*zeta^5 + 30*zeta^3 - 5*zeta^2
- 40*zeta + 15)*q^176 + (-5*zeta^3 + 15*zeta)*q^179 + 2*q^182 + (-2*zeta^3 + 
6*zeta)*q^185 + (2*zeta^5 - 12*zeta^3 + 2*zeta^2 + 16*zeta - 6)*q^188 + 
(7*zeta^5 - 35*zeta^3 + 7*zeta^2 + 35*zeta - 14)*q^191 + (-7*zeta^5 + 35*zeta^3 
- 7*zeta^2 - 35*zeta + 14)*q^194 + (6*zeta^5 - 36*zeta^3 + 6*zeta^2 + 48*zeta - 
18)*q^197 + 1/2*(-7*zeta^3 + 21*zeta)*q^200 + (-2*zeta^3 + 6*zeta)*q^206 + 
(-4*zeta^5 + 24*zeta^3 - 4*zeta^2 - 32*zeta + 12)*q^209 + (2*zeta^5 - 10*zeta^3 
+ 2*zeta^2 + 10*zeta - 4)*q^212 + (-4*zeta^5 + 20*zeta^3 - 4*zeta^2 - 20*zeta + 
8)*q^215 + (zeta^5 - 6*zeta^3 + zeta^2 + 8*zeta - 3)*q^218 + (2*zeta^3 - 
6*zeta)*q^221 - 3*q^224 + (-2*zeta^3 + 6*zeta)*q^227 + (6*zeta^5 - 36*zeta^3 + 
6*zeta^2 + 48*zeta - 18)*q^230 + (-2*zeta^5 + 10*zeta^3 - 2*zeta^2 - 10*zeta + 
4)*q^233 + (2*zeta^5 - 10*zeta^3 + 2*zeta^2 + 10*zeta - 4)*q^236 + (3*zeta^5 - 
18*zeta^3 + 3*zeta^2 + 24*zeta - 9)*q^239 + 1/2*(zeta^3 - 3*zeta)*q^242 - 
2*q^245 + (2*zeta^3 - 6*zeta)*q^248 + (6*zeta^5 - 36*zeta^3 + 6*zeta^2 + 48*zeta
- 18)*q^251 + (-4*zeta^5 + 20*zeta^3 - 4*zeta^2 - 20*zeta + 8)*q^254 + (zeta^5 -
5*zeta^3 + zeta^2 + 5*zeta - 2)*q^257 + (-2*zeta^5 + 12*zeta^3 - 2*zeta^2 - 
16*zeta + 6)*q^260 + (-5*zeta^3 + 15*zeta)*q^263 - 4*q^266 + (-5*zeta^3 + 
15*zeta)*q^269 + (-5*zeta^5 + 30*zeta^3 - 5*zeta^2 - 40*zeta + 15)*q^272 + 
(-7*zeta^5 + 35*zeta^3 - 7*zeta^2 - 35*zeta + 14)*q^275 + (8*zeta^5 - 40*zeta^3 
+ 8*zeta^2 + 40*zeta - 16)*q^278 + (-6*zeta^5 + 36*zeta^3 - 6*zeta^2 - 48*zeta +
18)*q^281 + (-3*zeta^3 + 9*zeta)*q^284 + 6*q^287 + (-3*zeta^5 + 18*zeta^3 - 
3*zeta^2 - 24*zeta + 9)*q^293 + (zeta^5 - 5*zeta^3 + zeta^2 + 5*zeta - 2)*q^296 
+ (2*zeta^5 - 10*zeta^3 + 2*zeta^2 + 10*zeta - 4)*q^299 + (4*zeta^5 - 24*zeta^3 
+ 4*zeta^2 + 32*zeta - 12)*q^302 + (10*zeta^3 - 30*zeta)*q^305 + 2*q^308 + 
(10*zeta^3 - 30*zeta)*q^311 + (-5*zeta^5 + 30*zeta^3 - 5*zeta^2 - 40*zeta + 
15)*q^314 + (-2*zeta^5 + 10*zeta^3 - 2*zeta^2 - 10*zeta + 4)*q^317 + (zeta^5 - 
5*zeta^3 + zeta^2 + 5*zeta - 2)*q^320 + (-4*zeta^5 + 24*zeta^3 - 4*zeta^2 - 
32*zeta + 12)*q^323 + (10*zeta^3 - 30*zeta)*q^326 + 4*q^329 + (4*zeta^5 - 
24*zeta^3 + 4*zeta^2 + 32*zeta - 12)*q^335 + 1/2*(9*zeta^5 - 45*zeta^3 + 
9*zeta^2 + 45*zeta - 18)*q^338 + (4*zeta^5 - 20*zeta^3 + 4*zeta^2 + 20*zeta - 
8)*q^341 + (2*zeta^5 - 12*zeta^3 + 2*zeta^2 + 16*zeta - 6)*q^344 + (-5*zeta^3 + 
15*zeta)*q^347 + 7*q^350 + (zeta^3 - 3*zeta)*q^353 + (-zeta^5 + 6*zeta^3 - 
zeta^2 - 8*zeta + 3)*q^356 + (7*zeta^5 - 35*zeta^3 + 7*zeta^2 + 35*zeta - 
14)*q^359 + (-zeta^5 + 5*zeta^3 - zeta^2 - 5*zeta + 2)*q^362 + (-14*zeta^5 + 
84*zeta^3 - 14*zeta^2 - 112*zeta + 42)*q^365 + (5*zeta^3 - 15*zeta)*q^368 - 
4*q^371 + (6*zeta^3 - 18*zeta)*q^374 + (-4*zeta^5 + 20*zeta^3 - 4*zeta^2 - 
20*zeta + 8)*q^380 + (4*zeta^5 - 20*zeta^3 + 4*zeta^2 + 20*zeta - 8)*q^383 + 
(7*zeta^5 - 42*zeta^3 + 7*zeta^2 + 56*zeta - 21)*q^386 + (4*zeta^3 - 
12*zeta)*q^389 - q^392 + (-8*zeta^3 + 24*zeta)*q^395 + (-8*zeta^5 + 48*zeta^3 - 
8*zeta^2 - 64*zeta + 24)*q^398 + (-2*zeta^5 + 10*zeta^3 - 2*zeta^2 - 10*zeta + 
4)*q^401 + (-zeta^5 + 5*zeta^3 - zeta^2 - 5*zeta + 2)*q^404 + (2*zeta^5 - 
12*zeta^3 + 2*zeta^2 + 16*zeta - 6)*q^407 + (-18*zeta^3 + 54*zeta)*q^410 - 
4*q^413 + (-3*zeta^3 + 9*zeta)*q^416 + (6*zeta^5 - 36*zeta^3 + 6*zeta^2 + 
48*zeta - 18)*q^419 + (-10*zeta^5 + 50*zeta^3 - 10*zeta^2 - 50*zeta + 20)*q^422 
+ (-7*zeta^5 + 35*zeta^3 - 7*zeta^2 - 35*zeta + 14)*q^425 + (5*zeta^5 - 
30*zeta^3 + 5*zeta^2 + 40*zeta - 15)*q^428 + (zeta^3 - 3*zeta)*q^431 - 4*q^434 +
(4*zeta^3 - 12*zeta)*q^437 + (6*zeta^5 - 36*zeta^3 + 6*zeta^2 + 48*zeta - 
18)*q^440 + (zeta^5 - 5*zeta^3 + zeta^2 + 5*zeta - 2)*q^443 + (-4*zeta^5 + 
20*zeta^3 - 4*zeta^2 - 20*zeta + 8)*q^446 + (12*zeta^5 - 72*zeta^3 + 12*zeta^2 +
96*zeta - 36)*q^449 - 4*q^455 + (-11*zeta^3 + 33*zeta)*q^458 + (9*zeta^5 - 
54*zeta^3 + 9*zeta^2 + 72*zeta - 27)*q^461 + (-2*zeta^5 + 10*zeta^3 - 2*zeta^2 -
10*zeta + 4)*q^467 + (-12*zeta^5 + 72*zeta^3 - 12*zeta^2 - 96*zeta + 36)*q^470 +
(-4*zeta^3 + 12*zeta)*q^473 + 2*q^476 + (-2*zeta^3 + 6*zeta)*q^479 + (-5*zeta^5 
+ 30*zeta^3 - 5*zeta^2 - 40*zeta + 15)*q^482 + (14*zeta^5 - 70*zeta^3 + 
14*zeta^2 + 70*zeta - 28)*q^485 + (-5*zeta^5 + 25*zeta^3 - 5*zeta^2 - 25*zeta + 
10)*q^488 + (3*zeta^5 - 18*zeta^3 + 3*zeta^2 + 24*zeta - 9)*q^491 + (-4*zeta^3 +
12*zeta)*q^494 - 6*q^497 + (-2*zeta^3 + 6*zeta)*q^500 + (6*zeta^5 - 30*zeta^3 + 
6*zeta^2 + 30*zeta - 12)*q^506 + (zeta^5 - 5*zeta^3 + zeta^2 + 5*zeta - 2)*q^509
+ 1/2*(5*zeta^5 - 30*zeta^3 + 5*zeta^2 + 40*zeta - 15)*q^512 + (4*zeta^3 - 
12*zeta)*q^515 + 2*q^518 + (zeta^3 - 3*zeta)*q^521 + (-4*zeta^5 + 24*zeta^3 - 
4*zeta^2 - 32*zeta + 12)*q^524 + (4*zeta^5 - 20*zeta^3 + 4*zeta^2 + 20*zeta - 
8)*q^527 + (-12*zeta^5 + 60*zeta^3 - 12*zeta^2 - 60*zeta + 24)*q^530 + (6*zeta^5
- 36*zeta^3 + 6*zeta^2 + 48*zeta - 18)*q^533 + (2*zeta^3 - 6*zeta)*q^536 + 
2*q^539 + (10*zeta^3 - 30*zeta)*q^542 + (-2*zeta^5 + 12*zeta^3 - 2*zeta^2 - 
16*zeta + 6)*q^545 + (2*zeta^5 - 10*zeta^3 + 2*zeta^2 + 10*zeta - 4)*q^548 + 
(-5*zeta^5 + 30*zeta^3 - 5*zeta^2 - 40*zeta + 15)*q^554 + (-2*zeta^3 + 
6*zeta)*q^557 + 10*q^560 + (10*zeta^3 - 30*zeta)*q^563 + (-2*zeta^5 + 12*zeta^3 
- 2*zeta^2 - 16*zeta + 6)*q^566 + (-2*zeta^5 + 10*zeta^3 - 2*zeta^2 - 10*zeta + 
4)*q^569 + (-2*zeta^5 + 10*zeta^3 - 2*zeta^2 - 10*zeta + 4)*q^572 + (-7*zeta^5 +
42*zeta^3 - 7*zeta^2 - 56*zeta + 21)*q^575 + 1/2*(-5*zeta^3 + 15*zeta)*q^578 + 
(-7*zeta^3 + 21*zeta)*q^584 + (-6*zeta^5 + 36*zeta^3 - 6*zeta^2 - 48*zeta + 
18)*q^587 + (-12*zeta^5 + 60*zeta^3 - 12*zeta^2 - 60*zeta + 24)*q^590 + 
(7*zeta^5 - 35*zeta^3 + 7*zeta^2 + 35*zeta - 14)*q^593 + (2*zeta^5 - 12*zeta^3 +
2*zeta^2 + 16*zeta - 6)*q^596 + (13*zeta^3 - 39*zeta)*q^599 - 4*q^602 + (-zeta^3
+ 3*zeta)*q^605 + (6*zeta^5 - 36*zeta^3 + 6*zeta^2 + 48*zeta - 18)*q^608 + 
(-4*zeta^5 + 20*zeta^3 - 4*zeta^2 - 20*zeta + 8)*q^611 + (14*zeta^5 - 70*zeta^3 
+ 14*zeta^2 + 70*zeta - 28)*q^614 + (-6*zeta^5 + 36*zeta^3 - 6*zeta^2 - 48*zeta 
+ 18)*q^617 + (4*zeta^3 - 12*zeta)*q^620 - 2*q^623 + (zeta^3 - 3*zeta)*q^626 + 
(2*zeta^5 - 12*zeta^3 + 2*zeta^2 + 16*zeta - 6)*q^629 + (4*zeta^5 - 20*zeta^3 + 
4*zeta^2 + 20*zeta - 8)*q^632 + (8*zeta^5 - 40*zeta^3 + 8*zeta^2 + 40*zeta - 
16)*q^635 + (-14*zeta^3 + 42*zeta)*q^641 - 2*q^644 + (-2*zeta^3 + 6*zeta)*q^647 
+ (7*zeta^5 - 42*zeta^3 + 7*zeta^2 + 56*zeta - 21)*q^650 + (-8*zeta^5 + 
40*zeta^3 - 8*zeta^2 - 40*zeta + 16)*q^653 + (15*zeta^5 - 75*zeta^3 + 15*zeta^2 
+ 75*zeta - 30)*q^656 + (-3*zeta^5 + 18*zeta^3 - 3*zeta^2 - 24*zeta + 9)*q^659 +
(10*zeta^3 - 30*zeta)*q^662 + 8*q^665 + (-6*zeta^3 + 18*zeta)*q^668 + 
(-10*zeta^5 + 60*zeta^3 - 10*zeta^2 - 80*zeta + 30)*q^671 + (-7*zeta^5 + 
35*zeta^3 - 7*zeta^2 - 35*zeta + 14)*q^674 + (7*zeta^5 - 35*zeta^3 + 7*zeta^2 + 
35*zeta - 14)*q^677 + (6*zeta^5 - 36*zeta^3 + 6*zeta^2 + 48*zeta - 18)*q^680 + 
(7*zeta^3 - 21*zeta)*q^683 + q^686 + (-4*zeta^3 + 12*zeta)*q^689 + (5*zeta^5 - 
30*zeta^3 + 5*zeta^2 + 40*zeta - 15)*q^692 + (-16*zeta^5 + 80*zeta^3 - 16*zeta^2
- 80*zeta + 32)*q^695 + (-7*zeta^5 + 35*zeta^3 - 7*zeta^2 - 35*zeta + 14)*q^698 
+ (zeta^3 - 3*zeta)*q^704 + 2*q^707 + (18*zeta^3 - 54*zeta)*q^710 + (4*zeta^5 - 
24*zeta^3 + 4*zeta^2 + 32*zeta - 12)*q^713 + (5*zeta^5 - 25*zeta^3 + 5*zeta^2 + 
25*zeta - 10)*q^716 + (-8*zeta^5 + 40*zeta^3 - 8*zeta^2 - 40*zeta + 16)*q^719 + 
1/2*(-3*zeta^5 + 18*zeta^3 - 3*zeta^2 - 24*zeta + 9)*q^722 - 2*q^728 + 
(-4*zeta^3 + 12*zeta)*q^731 + (-8*zeta^5 + 48*zeta^3 - 8*zeta^2 - 64*zeta + 
24)*q^734 + (4*zeta^5 - 20*zeta^3 + 4*zeta^2 + 20*zeta - 8)*q^737 + (2*zeta^5 - 
10*zeta^3 + 2*zeta^2 + 10*zeta - 4)*q^740 + (-3*zeta^5 + 18*zeta^3 - 3*zeta^2 - 
24*zeta + 9)*q^743 + (-5*zeta^3 + 15*zeta)*q^746 + 10*q^749 + (-10*zeta^3 + 
30*zeta)*q^752 + (-8*zeta^5 + 48*zeta^3 - 8*zeta^2 - 64*zeta + 24)*q^755 + 
(14*zeta^5 - 70*zeta^3 + 14*zeta^2 + 70*zeta - 28)*q^758 + (-11*zeta^5 + 
55*zeta^3 - 11*zeta^2 - 55*zeta + 22)*q^761 + (-7*zeta^5 + 42*zeta^3 - 7*zeta^2 
- 56*zeta + 21)*q^764 + (-4*zeta^3 + 12*zeta)*q^767 - 12*q^770 + (13*zeta^3 - 
39*zeta)*q^773 + (-7*zeta^5 + 42*zeta^3 - 7*zeta^2 - 56*zeta + 21)*q^776 + 
(12*zeta^5 - 60*zeta^3 + 12*zeta^2 + 60*zeta - 24)*q^779 + (6*zeta^5 - 30*zeta^3
+ 6*zeta^2 + 30*zeta - 12)*q^782 + (10*zeta^5 - 60*zeta^3 + 10*zeta^2 + 80*zeta 
- 30)*q^785 + (6*zeta^3 - 18*zeta)*q^788 + (19*zeta^3 - 57*zeta)*q^794 + 
(9*zeta^5 - 54*zeta^3 + 9*zeta^2 + 72*zeta - 27)*q^797 + 1/2*(21*zeta^5 - 
105*zeta^3 + 21*zeta^2 + 105*zeta - 42)*q^800 + (-14*zeta^5 + 70*zeta^3 - 
14*zeta^2 - 70*zeta + 28)*q^803 + (-4*zeta^5 + 24*zeta^3 - 4*zeta^2 - 32*zeta + 
12)*q^806 + (-8*zeta^3 + 24*zeta)*q^809 + (-20*zeta^3 + 60*zeta)*q^815 + 
(7*zeta^5 - 42*zeta^3 + 7*zeta^2 + 56*zeta - 21)*q^818 + (-2*zeta^5 + 10*zeta^3 
- 2*zeta^2 - 10*zeta + 4)*q^821 + (-2*zeta^5 + 10*zeta^3 - 2*zeta^2 - 10*zeta + 
4)*q^824 + (-3*zeta^5 + 18*zeta^3 - 3*zeta^2 - 24*zeta + 9)*q^827 + 2*q^833 + 
(-4*zeta^3 + 12*zeta)*q^836 + (6*zeta^5 - 36*zeta^3 + 6*zeta^2 + 48*zeta - 
18)*q^839 + (5*zeta^5 - 25*zeta^3 + 5*zeta^2 + 25*zeta - 10)*q^842 + (-9*zeta^5 
+ 45*zeta^3 - 9*zeta^2 - 45*zeta + 18)*q^845 + (10*zeta^5 - 60*zeta^3 + 
10*zeta^2 + 80*zeta - 30)*q^848 + (-2*zeta^3 + 6*zeta)*q^851 - 10*q^854 + 
(-5*zeta^3 + 15*zeta)*q^857 + (4*zeta^5 - 24*zeta^3 + 4*zeta^2 + 32*zeta - 
12)*q^860 + (-11*zeta^5 + 55*zeta^3 - 11*zeta^2 - 55*zeta + 22)*q^863 + 
(-13*zeta^5 + 65*zeta^3 - 13*zeta^2 - 65*zeta + 26)*q^866 + (8*zeta^5 - 
48*zeta^3 + 8*zeta^2 + 64*zeta - 24)*q^869 + (-zeta^3 + 3*zeta)*q^872 - 4*q^875 
+ (-8*zeta^3 + 24*zeta)*q^878 + (-15*zeta^5 + 90*zeta^3 - 15*zeta^2 - 120*zeta +
45)*q^881 + (-2*zeta^5 + 10*zeta^3 - 2*zeta^2 - 10*zeta + 4)*q^884 + (-2*zeta^5 
+ 10*zeta^3 - 2*zeta^2 - 10*zeta + 4)*q^887 + (6*zeta^5 - 36*zeta^3 + 6*zeta^2 +
48*zeta - 18)*q^890 + (-8*zeta^3 + 24*zeta)*q^893 + 7*q^896 + (18*zeta^5 - 
108*zeta^3 + 18*zeta^2 + 144*zeta - 54)*q^902 + (2*zeta^5 - 10*zeta^3 + 2*zeta^2
+ 10*zeta - 4)*q^905 + (2*zeta^5 - 10*zeta^3 + 2*zeta^2 + 10*zeta - 4)*q^908 + 
(9*zeta^5 - 54*zeta^3 + 9*zeta^2 + 72*zeta - 27)*q^911 + (-5*zeta^3 + 
15*zeta)*q^914 - 8*q^917 + (-6*zeta^3 + 18*zeta)*q^920 + (-6*zeta^5 + 36*zeta^3 
- 6*zeta^2 - 48*zeta + 18)*q^923 + (-16*zeta^5 + 80*zeta^3 - 16*zeta^2 - 80*zeta
+ 32)*q^926 + (13*zeta^5 - 65*zeta^3 + 13*zeta^2 + 65*zeta - 26)*q^929 + 
(2*zeta^5 - 12*zeta^3 + 2*zeta^2 + 16*zeta - 6)*q^932 + (-12*zeta^3 + 
36*zeta)*q^935 - 4*q^938 + (-5*zeta^3 + 15*zeta)*q^941 + (10*zeta^5 - 60*zeta^3 
+ 10*zeta^2 + 80*zeta - 30)*q^944 + (7*zeta^5 - 35*zeta^3 + 7*zeta^2 + 35*zeta -
14)*q^947 + (14*zeta^5 - 70*zeta^3 + 14*zeta^2 + 70*zeta - 28)*q^950 + 
(-12*zeta^5 + 72*zeta^3 - 12*zeta^2 - 96*zeta + 36)*q^953 + (3*zeta^3 - 
9*zeta)*q^956 - 4*q^959 + (2*zeta^3 - 6*zeta)*q^962 + (-14*zeta^5 + 84*zeta^3 - 
14*zeta^2 - 112*zeta + 42)*q^965 + 1/2*(zeta^5 - 5*zeta^3 + zeta^2 + 5*zeta - 
2)*q^968 + (-8*zeta^5 + 40*zeta^3 - 8*zeta^2 - 40*zeta + 16)*q^971 + (-20*zeta^5
+ 120*zeta^3 - 20*zeta^2 - 160*zeta + 60)*q^974 + (10*zeta^3 - 30*zeta)*q^977 - 
2*q^980 + (4*zeta^3 - 12*zeta)*q^983 + (-4*zeta^5 + 20*zeta^3 - 4*zeta^2 - 
20*zeta + 8)*q^989 + (-6*zeta^5 + 30*zeta^3 - 6*zeta^2 - 30*zeta + 12)*q^992 + 
(16*zeta^5 - 96*zeta^3 + 16*zeta^2 + 128*zeta - 48)*q^995 + (-2*zeta^3 + 
6*zeta)*q^998 + 4*q^1001 + (6*zeta^3 - 18*zeta)*q^1004 + (8*zeta^5 - 48*zeta^3 +
8*zeta^2 + 64*zeta - 24)*q^1007 + (6*zeta^5 - 30*zeta^3 + 6*zeta^2 + 30*zeta - 
12)*q^1010 + (7*zeta^5 - 35*zeta^3 + 7*zeta^2 + 35*zeta - 14)*q^1013 + 
(-4*zeta^5 + 24*zeta^3 - 4*zeta^2 - 32*zeta + 12)*q^1016 + (13*zeta^3 - 
39*zeta)*q^1019 + 14*q^1022 + (21*zeta^3 - 63*zeta)*q^1025 + (-zeta^5 + 6*zeta^3
- zeta^2 - 8*zeta + 3)*q^1028 + (-5*zeta^5 + 25*zeta^3 - 5*zeta^2 - 25*zeta + 
10)*q^1031 + (-12*zeta^5 + 60*zeta^3 - 12*zeta^2 - 60*zeta + 24)*q^1034 + 
(-10*zeta^5 + 60*zeta^3 - 10*zeta^2 - 80*zeta + 30)*q^1037 + (10*zeta^3 - 
30*zeta)*q^1040 + 4*q^1043 + (-8*zeta^3 + 24*zeta)*q^1046 + (9*zeta^5 - 
54*zeta^3 + 9*zeta^2 + 72*zeta - 27)*q^1049 + (5*zeta^5 - 25*zeta^3 + 5*zeta^2 +
25*zeta - 10)*q^1052 + (20*zeta^5 - 100*zeta^3 + 20*zeta^2 + 100*zeta - 
40)*q^1055 + 1/2*(-11*zeta^5 + 66*zeta^3 - 11*zeta^2 - 88*zeta + 33)*q^1058 + 
(4*zeta^3 - 12*zeta)*q^1061 + 4*q^1064 + (14*zeta^3 - 42*zeta)*q^1067 + 
(-30*zeta^5 + 180*zeta^3 - 30*zeta^2 - 240*zeta + 90)*q^1070 + (5*zeta^5 - 
25*zeta^3 + 5*zeta^2 + 25*zeta - 10)*q^1076 + (7*zeta^3 - 21*zeta)*q^1082 + 
8*q^1085 + (zeta^3 - 3*zeta)*q^1088 + (-12*zeta^5 + 72*zeta^3 - 12*zeta^2 - 
96*zeta + 36)*q^1091 + (2*zeta^5 - 10*zeta^3 + 2*zeta^2 + 10*zeta - 4)*q^1094 + 
(7*zeta^5 - 35*zeta^3 + 7*zeta^2 + 35*zeta - 14)*q^1097 + (7*zeta^5 - 42*zeta^3 
+ 7*zeta^2 + 56*zeta - 21)*q^1100 + (-5*zeta^3 + 15*zeta)*q^1103 + 8*q^1106 + 
(-11*zeta^3 + 33*zeta)*q^1109 + (8*zeta^5 - 48*zeta^3 + 8*zeta^2 + 64*zeta - 
24)*q^1112 + O(q^1113), 1/3*(zeta^5 - 3*zeta^3 + zeta^2 - zeta + 3)*q + 
1/3*(6*zeta^5 - 32*zeta^3 + 6*zeta^2 + 36*zeta - 24)*q^4 + 1/3*(-15*zeta^5 + 
66*zeta^3 - 15*zeta^2 - 48*zeta + 32)*q^7 + 1/3*(-7*zeta^5 + 21*zeta^3 - 
7*zeta^2 + 7*zeta - 21)*q^13 + 1/3*(8*zeta^5 - 52*zeta^3 + 8*zeta^2 + 76*zeta - 
4)*q^16 + 1/3*(-14*zeta^5 + 91*zeta^3 - 14*zeta^2 - 133*zeta + 7)*q^19 + 
1/3*(15*zeta^5 - 80*zeta^3 + 15*zeta^2 + 90*zeta - 60)*q^25 + 1/3*(-48*zeta^5 + 
270*zeta^3 - 48*zeta^2 - 330*zeta + 122)*q^28 + 1/3*(21*zeta^5 - 112*zeta^3 + 
21*zeta^2 + 126*zeta - 84)*q^31 + 1/3*(-2*zeta^5 + 13*zeta^3 - 2*zeta^2 - 
19*zeta + 1)*q^37 + 1/3*(5*zeta^5 - 15*zeta^3 + 5*zeta^2 - 5*zeta + 15)*q^43 + 
1/3*(57*zeta^5 - 339*zeta^3 + 57*zeta^2 + 447*zeta - 151)*q^49 + 1/3*(-42*zeta^5
+ 224*zeta^3 - 42*zeta^2 - 252*zeta + 168)*q^52 + 1/3*(28*zeta^5 - 182*zeta^3 + 
28*zeta^2 + 266*zeta - 14)*q^61 + 1/3*(-8*zeta^5 + 24*zeta^3 - 8*zeta^2 + 8*zeta
- 24)*q^64 + 1/3*(-33*zeta^5 + 176*zeta^3 - 33*zeta^2 - 198*zeta + 132)*q^67 + 
1/3*(21*zeta^5 - 112*zeta^3 + 21*zeta^2 + 126*zeta - 84)*q^73 + 1/3*(14*zeta^5 -
42*zeta^3 + 14*zeta^2 - 14*zeta + 42)*q^76 + 1/3*(-26*zeta^5 + 169*zeta^3 - 
26*zeta^2 - 247*zeta + 13)*q^79 + 1/3*(105*zeta^5 - 462*zeta^3 + 105*zeta^2 + 
336*zeta - 224)*q^91 + 1/3*(14*zeta^5 - 42*zeta^3 + 14*zeta^2 - 14*zeta + 
42)*q^97 + 1/3*(20*zeta^5 - 130*zeta^3 + 20*zeta^2 + 190*zeta - 10)*q^100 + 
1/3*(-14*zeta^5 + 91*zeta^3 - 14*zeta^2 - 133*zeta + 7)*q^103 + 1/3*(-51*zeta^5 
+ 272*zeta^3 - 51*zeta^2 - 306*zeta + 204)*q^109 + 1/3*(-36*zeta^5 + 276*zeta^3 
- 36*zeta^2 - 468*zeta + 116)*q^112 + 1/3*(-22*zeta^5 + 143*zeta^3 - 22*zeta^2 -
209*zeta + 11)*q^121 + 1/3*(28*zeta^5 - 182*zeta^3 + 28*zeta^2 + 266*zeta - 
14)*q^124 + 1/3*(-19*zeta^5 + 57*zeta^3 - 19*zeta^2 + 19*zeta - 57)*q^127 + 
1/3*(63*zeta^5 - 483*zeta^3 + 63*zeta^2 + 819*zeta - 203)*q^133 + 1/3*(-7*zeta^5
+ 21*zeta^3 - 7*zeta^2 + 7*zeta - 21)*q^139 + 1/3*(2*zeta^5 - 6*zeta^3 + 
2*zeta^2 - 2*zeta + 6)*q^148 + 1/3*(12*zeta^5 - 64*zeta^3 + 12*zeta^2 + 72*zeta 
- 48)*q^151 + 1/3*(-42*zeta^5 + 224*zeta^3 - 42*zeta^2 - 252*zeta + 168)*q^157 +
1/3*(16*zeta^5 - 104*zeta^3 + 16*zeta^2 + 152*zeta - 8)*q^163 + (12*zeta^5 - 
36*zeta^3 + 12*zeta^2 - 12*zeta + 36)*q^169 + 1/3*(30*zeta^5 - 160*zeta^3 + 
30*zeta^2 + 180*zeta - 120)*q^172 + 1/3*(-120*zeta^5 + 675*zeta^3 - 120*zeta^2 -
825*zeta + 305)*q^175 + 1/3*(-7*zeta^5 + 21*zeta^3 - 7*zeta^2 + 7*zeta - 
21)*q^181 + 1/3*(75*zeta^5 - 400*zeta^3 + 75*zeta^2 + 450*zeta - 300)*q^193 + 
1/3*(6*zeta^5 - 144*zeta^3 + 6*zeta^2 + 372*zeta - 52)*q^196 + 1/3*(84*zeta^5 - 
448*zeta^3 + 84*zeta^2 + 504*zeta - 336)*q^199 + 1/3*(-56*zeta^5 + 364*zeta^3 - 
56*zeta^2 - 532*zeta + 28)*q^208 + 1/3*(-16*zeta^5 + 48*zeta^3 - 16*zeta^2 + 
16*zeta - 48)*q^211 + 1/3*(-168*zeta^5 + 945*zeta^3 - 168*zeta^2 - 1155*zeta + 
427)*q^217 + 1/3*(-28*zeta^5 + 84*zeta^3 - 28*zeta^2 + 28*zeta - 84)*q^223 + 
1/3*(-14*zeta^5 + 91*zeta^3 - 14*zeta^2 - 133*zeta + 7)*q^229 + 1/3*(-42*zeta^5 
+ 224*zeta^3 - 42*zeta^2 - 252*zeta + 168)*q^241 + 1/3*(-28*zeta^5 + 84*zeta^3 -
28*zeta^2 + 28*zeta - 84)*q^244 + 1/3*(98*zeta^5 - 637*zeta^3 + 98*zeta^2 + 
931*zeta - 49)*q^247 + 1/3*(-48*zeta^5 + 256*zeta^3 - 48*zeta^2 - 288*zeta + 
192)*q^256 + 1/3*(9*zeta^5 - 69*zeta^3 + 9*zeta^2 + 117*zeta - 29)*q^259 + 
1/3*(-44*zeta^5 + 286*zeta^3 - 44*zeta^2 - 418*zeta + 22)*q^268 + 
1/3*(-56*zeta^5 + 364*zeta^3 - 56*zeta^2 - 532*zeta + 28)*q^271 + 1/3*(93*zeta^5
- 496*zeta^3 + 93*zeta^2 + 558*zeta - 372)*q^277 + 1/3*(21*zeta^5 - 112*zeta^3 +
21*zeta^2 + 126*zeta - 84)*q^283 + 1/3*(-34*zeta^5 + 221*zeta^3 - 34*zeta^2 - 
323*zeta + 17)*q^289 + 1/3*(28*zeta^5 - 182*zeta^3 + 28*zeta^2 + 266*zeta - 
14)*q^292 + 1/3*(-75*zeta^5 + 330*zeta^3 - 75*zeta^2 - 240*zeta + 160)*q^301 + 
1/3*(84*zeta^5 - 448*zeta^3 + 84*zeta^2 + 504*zeta - 336)*q^304 + 1/3*(35*zeta^5
- 105*zeta^3 + 35*zeta^2 - 35*zeta + 105)*q^307 + 1/3*(70*zeta^5 - 455*zeta^3 + 
70*zeta^2 + 665*zeta - 35)*q^313 + 1/3*(26*zeta^5 - 78*zeta^3 + 26*zeta^2 - 
26*zeta + 78)*q^316 + 1/3*(-105*zeta^5 + 560*zeta^3 - 105*zeta^2 - 630*zeta + 
420)*q^325 + 1/3*(-2*zeta^5 + 13*zeta^3 - 2*zeta^2 - 19*zeta + 1)*q^331 + 
1/3*(5*zeta^5 - 15*zeta^3 + 5*zeta^2 - 5*zeta + 15)*q^337 + 1/3*(48*zeta^5 - 
123*zeta^3 + 48*zeta^2 - 111*zeta - 73)*q^343 + 1/3*(14*zeta^5 - 42*zeta^3 + 
14*zeta^2 - 14*zeta + 42)*q^349 + (-30*zeta^5 + 160*zeta^3 - 30*zeta^2 - 
180*zeta + 120)*q^361 + 1/3*(336*zeta^5 - 1890*zeta^3 + 336*zeta^2 + 2310*zeta -
854)*q^364 + 1/3*(-105*zeta^5 + 560*zeta^3 - 105*zeta^2 - 630*zeta + 420)*q^367 
+ 1/3*(-26*zeta^5 + 169*zeta^3 - 26*zeta^2 - 247*zeta + 13)*q^373 + 
1/3*(-37*zeta^5 + 111*zeta^3 - 37*zeta^2 + 37*zeta - 111)*q^379 + 1/3*(84*zeta^5
- 448*zeta^3 + 84*zeta^2 + 504*zeta - 336)*q^388 + 1/3*(70*zeta^5 - 455*zeta^3 +
70*zeta^2 + 665*zeta - 35)*q^397 + 1/3*(-20*zeta^5 + 60*zeta^3 - 20*zeta^2 + 
20*zeta - 60)*q^400 + 1/3*(-147*zeta^5 + 784*zeta^3 - 147*zeta^2 - 882*zeta + 
588)*q^403 + 1/3*(21*zeta^5 - 112*zeta^3 + 21*zeta^2 + 126*zeta - 84)*q^409 + 
1/3*(14*zeta^5 - 42*zeta^3 + 14*zeta^2 - 14*zeta + 42)*q^412 + 1/3*(-19*zeta^5 +
57*zeta^3 - 19*zeta^2 + 19*zeta - 57)*q^421 + 1/3*(-126*zeta^5 + 966*zeta^3 - 
126*zeta^2 - 1638*zeta + 406)*q^427 + 1/3*(35*zeta^5 - 105*zeta^3 + 35*zeta^2 - 
35*zeta + 105)*q^433 + 1/3*(-68*zeta^5 + 442*zeta^3 - 68*zeta^2 - 646*zeta + 
34)*q^436 + 1/3*(-56*zeta^5 + 364*zeta^3 - 56*zeta^2 - 532*zeta + 28)*q^439 + 
1/3*(120*zeta^5 - 528*zeta^3 + 120*zeta^2 + 384*zeta - 256)*q^448 + 
1/3*(82*zeta^5 - 533*zeta^3 + 82*zeta^2 + 779*zeta - 41)*q^457 + 1/3*(23*zeta^5 
- 69*zeta^3 + 23*zeta^2 - 23*zeta + 69)*q^463 + 1/3*(264*zeta^5 - 1485*zeta^3 + 
264*zeta^2 + 1815*zeta - 671)*q^469 + 1/3*(35*zeta^5 - 105*zeta^3 + 35*zeta^2 - 
35*zeta + 105)*q^475 + 1/3*(14*zeta^5 - 91*zeta^3 + 14*zeta^2 + 133*zeta - 
7)*q^481 + 1/3*(22*zeta^5 - 66*zeta^3 + 22*zeta^2 - 22*zeta + 66)*q^484 + 
1/3*(75*zeta^5 - 400*zeta^3 + 75*zeta^2 + 450*zeta - 300)*q^487 + 
1/3*(-28*zeta^5 + 84*zeta^3 - 28*zeta^2 + 28*zeta - 84)*q^496 + 1/3*(-86*zeta^5 
+ 559*zeta^3 - 86*zeta^2 - 817*zeta + 43)*q^499 + 1/3*(-114*zeta^5 + 608*zeta^3 
- 114*zeta^2 - 684*zeta + 456)*q^508 + 1/3*(-168*zeta^5 + 945*zeta^3 - 
168*zeta^2 - 1155*zeta + 427)*q^511 + 1/3*(70*zeta^5 - 455*zeta^3 + 70*zeta^2 + 
665*zeta - 35)*q^523 + 1/3*(69*zeta^5 - 368*zeta^3 + 69*zeta^2 + 414*zeta - 
276)*q^529 + 1/3*(-210*zeta^5 + 924*zeta^3 - 210*zeta^2 - 672*zeta + 448)*q^532 
+ 1/3*(58*zeta^5 - 377*zeta^3 + 58*zeta^2 + 551*zeta - 29)*q^541 + 
1/3*(-40*zeta^5 + 120*zeta^3 - 40*zeta^2 + 40*zeta - 120)*q^547 + 
1/3*(117*zeta^5 - 897*zeta^3 + 117*zeta^2 + 1521*zeta - 377)*q^553 + 
1/3*(-42*zeta^5 + 224*zeta^3 - 42*zeta^2 - 252*zeta + 168)*q^556 + 
1/3*(-35*zeta^5 + 105*zeta^3 - 35*zeta^2 + 35*zeta - 105)*q^559 + 1/3*(93*zeta^5
- 496*zeta^3 + 93*zeta^2 + 558*zeta - 372)*q^571 + 1/3*(-105*zeta^5 + 560*zeta^3
- 105*zeta^2 - 630*zeta + 420)*q^577 + 1/3*(49*zeta^5 - 147*zeta^3 + 49*zeta^2 -
49*zeta + 147)*q^589 + 1/3*(12*zeta^5 - 64*zeta^3 + 12*zeta^2 + 72*zeta - 
48)*q^592 + 1/3*(-49*zeta^5 + 147*zeta^3 - 49*zeta^2 + 49*zeta - 147)*q^601 + 
1/3*(16*zeta^5 - 104*zeta^3 + 16*zeta^2 + 152*zeta - 8)*q^604 + 1/3*(-98*zeta^5 
+ 637*zeta^3 - 98*zeta^2 - 931*zeta + 49)*q^607 + 1/3*(30*zeta^5 - 160*zeta^3 + 
30*zeta^2 + 180*zeta - 120)*q^613 + 1/3*(147*zeta^5 - 784*zeta^3 + 147*zeta^2 + 
882*zeta - 588)*q^619 + 1/3*(50*zeta^5 - 325*zeta^3 + 50*zeta^2 + 475*zeta - 
25)*q^625 + 1/3*(-56*zeta^5 + 364*zeta^3 - 56*zeta^2 - 532*zeta + 28)*q^628 + 
1/3*(44*zeta^5 - 132*zeta^3 + 44*zeta^2 - 44*zeta + 132)*q^631 + 
1/3*(-399*zeta^5 + 2373*zeta^3 - 399*zeta^2 - 3129*zeta + 1057)*q^637 + 
1/3*(-7*zeta^5 + 21*zeta^3 - 7*zeta^2 + 7*zeta - 21)*q^643 + 1/3*(-16*zeta^5 + 
48*zeta^3 - 16*zeta^2 + 16*zeta - 48)*q^652 + 1/3*(147*zeta^5 - 784*zeta^3 + 
147*zeta^2 + 882*zeta - 588)*q^661 + 1/3*(-37*zeta^5 + 111*zeta^3 - 37*zeta^2 + 
37*zeta - 111)*q^673 + (72*zeta^5 - 384*zeta^3 + 72*zeta^2 + 432*zeta - 
288)*q^676 + 1/3*(-210*zeta^5 + 924*zeta^3 - 210*zeta^2 - 672*zeta + 448)*q^679 
+ 1/3*(40*zeta^5 - 260*zeta^3 + 40*zeta^2 + 380*zeta - 20)*q^688 + 
1/3*(-98*zeta^5 + 637*zeta^3 - 98*zeta^2 - 931*zeta + 49)*q^691 + 
1/3*(-90*zeta^5 + 690*zeta^3 - 90*zeta^2 - 1170*zeta + 290)*q^700 + 
1/3*(-21*zeta^5 + 112*zeta^3 - 21*zeta^2 - 126*zeta + 84)*q^703 + 
1/3*(-44*zeta^5 + 286*zeta^3 - 44*zeta^2 - 418*zeta + 22)*q^709 + 1/3*(63*zeta^5
- 483*zeta^3 + 63*zeta^2 + 819*zeta - 203)*q^721 + 1/3*(-42*zeta^5 + 224*zeta^3 
- 42*zeta^2 - 252*zeta + 168)*q^724 + 1/3*(-49*zeta^5 + 147*zeta^3 - 49*zeta^2 +
49*zeta - 147)*q^727 + 1/3*(-14*zeta^5 + 91*zeta^3 - 14*zeta^2 - 133*zeta + 
7)*q^733 + 1/3*(-159*zeta^5 + 848*zeta^3 - 159*zeta^2 - 954*zeta + 636)*q^739 + 
1/3*(82*zeta^5 - 533*zeta^3 + 82*zeta^2 + 779*zeta - 41)*q^751 + 1/3*(26*zeta^5 
- 78*zeta^3 + 26*zeta^2 - 26*zeta + 78)*q^757 + 1/3*(408*zeta^5 - 2295*zeta^3 + 
408*zeta^2 + 2805*zeta - 1037)*q^763 + 1/3*(-49*zeta^5 + 147*zeta^3 - 49*zeta^2 
+ 49*zeta - 147)*q^769 + 1/3*(100*zeta^5 - 650*zeta^3 + 100*zeta^2 + 950*zeta - 
50)*q^772 + 1/3*(70*zeta^5 - 455*zeta^3 + 70*zeta^2 + 665*zeta - 35)*q^775 + 
1/3*(-216*zeta^5 + 1068*zeta^3 - 216*zeta^2 - 1044*zeta + 500)*q^784 + 
1/3*(-168*zeta^5 + 896*zeta^3 - 168*zeta^2 - 1008*zeta + 672)*q^787 + 
1/3*(-196*zeta^5 + 1274*zeta^3 - 196*zeta^2 - 1862*zeta + 98)*q^793 + 
1/3*(112*zeta^5 - 728*zeta^3 + 112*zeta^2 + 1064*zeta - 56)*q^796 + 
1/3*(56*zeta^5 - 168*zeta^3 + 56*zeta^2 - 56*zeta + 168)*q^811 + 1/3*(-70*zeta^5
+ 455*zeta^3 - 70*zeta^2 - 665*zeta + 35)*q^817 + 1/3*(156*zeta^5 - 832*zeta^3 +
156*zeta^2 + 936*zeta - 624)*q^823 + 1/3*(21*zeta^5 - 112*zeta^3 + 21*zeta^2 + 
126*zeta - 84)*q^829 + 1/3*(56*zeta^5 - 168*zeta^3 + 56*zeta^2 - 56*zeta + 
168)*q^832 + 1/3*(-29*zeta^5 + 87*zeta^3 - 29*zeta^2 + 29*zeta - 87)*q^841 + 
1/3*(-96*zeta^5 + 512*zeta^3 - 96*zeta^2 - 576*zeta + 384)*q^844 + 
1/3*(99*zeta^5 - 759*zeta^3 + 99*zeta^2 + 1287*zeta - 319)*q^847 + 
1/3*(35*zeta^5 - 105*zeta^3 + 35*zeta^2 - 35*zeta + 105)*q^853 + 1/3*(112*zeta^5
- 728*zeta^3 + 112*zeta^2 + 1064*zeta - 56)*q^859 + 1/3*(-126*zeta^5 + 
966*zeta^3 - 126*zeta^2 - 1638*zeta + 406)*q^868 + 1/3*(231*zeta^5 - 1232*zeta^3
+ 231*zeta^2 + 1386*zeta - 924)*q^871 + 1/3*(-68*zeta^5 + 442*zeta^3 - 68*zeta^2
- 646*zeta + 34)*q^877 + 1/3*(47*zeta^5 - 141*zeta^3 + 47*zeta^2 - 47*zeta + 
141)*q^883 + 1/3*(285*zeta^5 - 1254*zeta^3 + 285*zeta^2 + 912*zeta - 608)*q^889 
+ 1/3*(-168*zeta^5 + 896*zeta^3 - 168*zeta^2 - 1008*zeta + 672)*q^892 + 
1/3*(-177*zeta^5 + 944*zeta^3 - 177*zeta^2 - 1062*zeta + 708)*q^907 + 
1/3*(14*zeta^5 - 42*zeta^3 + 14*zeta^2 - 14*zeta + 42)*q^916 + 1/3*(-2*zeta^5 + 
13*zeta^3 - 2*zeta^2 - 19*zeta + 1)*q^919 + 1/3*(5*zeta^5 - 15*zeta^3 + 5*zeta^2
- 5*zeta + 15)*q^925 + 1/3*(378*zeta^5 - 1869*zeta^3 + 378*zeta^2 + 1827*zeta - 
875)*q^931 + 1/3*(35*zeta^5 - 105*zeta^3 + 35*zeta^2 - 35*zeta + 105)*q^937 + 
1/3*(-147*zeta^5 + 784*zeta^3 - 147*zeta^2 - 882*zeta + 588)*q^949 + (12*zeta^5 
- 78*zeta^3 + 12*zeta^2 + 114*zeta - 6)*q^961 + 1/3*(-56*zeta^5 + 364*zeta^3 - 
56*zeta^2 - 532*zeta + 28)*q^964 + 1/3*(-61*zeta^5 + 183*zeta^3 - 61*zeta^2 + 
61*zeta - 183)*q^967 + 1/3*(105*zeta^5 - 462*zeta^3 + 105*zeta^2 + 336*zeta - 
224)*q^973 + 1/3*(-168*zeta^5 + 896*zeta^3 - 168*zeta^2 - 1008*zeta + 672)*q^976
+ 1/3*(-98*zeta^5 + 294*zeta^3 - 98*zeta^2 + 98*zeta - 294)*q^988 + 
1/3*(-51*zeta^5 + 272*zeta^3 - 51*zeta^2 - 306*zeta + 204)*q^991 + 
1/3*(147*zeta^5 - 784*zeta^3 + 147*zeta^2 + 882*zeta - 588)*q^997 + 
1/3*(-19*zeta^5 + 57*zeta^3 - 19*zeta^2 + 19*zeta - 57)*q^1009 + 1/3*(14*zeta^5 
- 42*zeta^3 + 14*zeta^2 - 14*zeta + 42)*q^1021 + 1/3*(-64*zeta^5 + 416*zeta^3 - 
64*zeta^2 - 608*zeta + 32)*q^1024 + 1/3*(182*zeta^5 - 1183*zeta^3 + 182*zeta^2 +
1729*zeta - 91)*q^1027 + 1/3*(-159*zeta^5 + 848*zeta^3 - 159*zeta^2 - 954*zeta +
636)*q^1033 + 1/3*(-30*zeta^5 + 132*zeta^3 - 30*zeta^2 - 96*zeta + 64)*q^1036 + 
1/3*(21*zeta^5 - 112*zeta^3 + 21*zeta^2 + 126*zeta - 84)*q^1039 + 1/3*(23*zeta^5
- 69*zeta^3 + 23*zeta^2 - 23*zeta + 69)*q^1051 + 1/3*(-96*zeta^5 + 540*zeta^3 - 
96*zeta^2 - 660*zeta + 244)*q^1057 + 1/3*(-28*zeta^5 + 84*zeta^3 - 28*zeta^2 + 
28*zeta - 84)*q^1063 + 1/3*(-98*zeta^5 + 637*zeta^3 - 98*zeta^2 - 931*zeta + 
49)*q^1069 + 1/3*(44*zeta^5 - 132*zeta^3 + 44*zeta^2 - 44*zeta + 132)*q^1072 + 
1/3*(75*zeta^5 - 400*zeta^3 + 75*zeta^2 + 450*zeta - 300)*q^1075 + 
1/3*(56*zeta^5 - 168*zeta^3 + 56*zeta^2 - 56*zeta + 168)*q^1084 + 
1/3*(-110*zeta^5 + 715*zeta^3 - 110*zeta^2 - 1045*zeta + 55)*q^1087 + 
1/3*(65*zeta^5 - 195*zeta^3 + 65*zeta^2 - 65*zeta + 195)*q^1093 + 
1/3*(336*zeta^5 - 1890*zeta^3 + 336*zeta^2 + 2310*zeta - 854)*q^1099 + 
1/3*(124*zeta^5 - 806*zeta^3 + 124*zeta^2 + 1178*zeta - 62)*q^1108 + O(q^1113)] 
;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_21C3 := Curve(P_Q, [ PolynomialRing(RationalField(), 3) |
x[1]^4 + 1/7*x[1]^3*x[3] - 3/7*x[1]^2*x[3]^2 - 16*x[1]*x[2]^3 - 2/49*x[1]*x[3]^3
+ 8/7*x[2]^3*x[3] + 1/343*x[3]^4
]);
