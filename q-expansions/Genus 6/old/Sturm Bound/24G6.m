
    /****************************************************
    Loading this file in magma loads the objects fs_24G6 
    and X_24G6. fs_24G6 is a list of power series which form 
    a basis for the space of cusp forms. X_24G6 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, \[ 1, 0, 0, 0, -1, 0, 0, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_24G6 := [Kq | (6*zeta^7 + 3*zeta^5 - 3*zeta^3 + 3*zeta)*q + 
(-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^7 + (24*zeta^4 - 12)*q^8 + 
(12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 6*zeta)*q^9 + (48*zeta^4 - 24)*q^12 + 
(-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^15 + (-48*zeta^4 + 24)*q^16 + 
(-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^17 + (48*zeta^4 - 24)*q^20 + 
(24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^23 + (48*zeta^4 - 24)*q^24 + 
(6*zeta^7 + 3*zeta^5 - 3*zeta^3 + 3*zeta)*q^25 + (12*zeta^7 + 6*zeta^5 - 
6*zeta^3 + 6*zeta)*q^31 + (48*zeta^4 - 24)*q^32 + (48*zeta^7 + 24*zeta^5 - 
24*zeta^3 + 24*zeta)*q^39 + (48*zeta^4 - 24)*q^40 + (12*zeta^7 + 6*zeta^5 - 
6*zeta^3 + 6*zeta)*q^41 + (-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 36*zeta)*q^47 + 
(-18*zeta^7 - 9*zeta^5 + 9*zeta^3 - 9*zeta)*q^49 + (-96*zeta^4 + 48)*q^52 + 
(-48*zeta^4 + 24)*q^56 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^57 + 
(-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^63 + (48*zeta^7 + 24*zeta^5 - 
24*zeta^3 + 24*zeta)*q^65 + (72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^71 +
(48*zeta^4 - 24)*q^72 + (-36*zeta^7 - 18*zeta^5 + 18*zeta^3 - 18*zeta)*q^73 + 
(96*zeta^4 - 48)*q^76 + (60*zeta^7 + 30*zeta^5 - 30*zeta^3 + 30*zeta)*q^79 + 
(-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^81 + (-96*zeta^4 + 48)*q^84 + 
(72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^87 + (-60*zeta^7 - 30*zeta^5 + 
30*zeta^3 - 30*zeta)*q^89 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^95 
+ (-96*zeta^4 + 48)*q^96 + (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^97 + 
(-36*zeta^7 - 18*zeta^5 + 18*zeta^3 - 18*zeta)*q^103 + (-96*zeta^4 + 48)*q^104 +
(48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^105 + (-48*zeta^4 + 24)*q^108 + 
(-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^111 + (96*zeta^4 - 48)*q^112 + 
(-36*zeta^7 - 18*zeta^5 + 18*zeta^3 - 18*zeta)*q^113 + (-144*zeta^4 + 72)*q^116 
+ (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^119 + (-96*zeta^4 + 48)*q^120 
+ (66*zeta^7 + 33*zeta^5 - 33*zeta^3 + 33*zeta)*q^121 + (-12*zeta^7 - 6*zeta^5 +
6*zeta^3 - 6*zeta)*q^127 + (-96*zeta^4 + 48)*q^128 + (48*zeta^7 + 24*zeta^5 - 
24*zeta^3 + 24*zeta)*q^129 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^135
+ (-48*zeta^4 + 24)*q^136 + (108*zeta^7 + 54*zeta^5 - 54*zeta^3 + 54*zeta)*q^137
+ (-96*zeta^4 + 48)*q^140 + (-96*zeta^4 + 48)*q^144 + (72*zeta^7 + 36*zeta^5 - 
36*zeta^3 + 36*zeta)*q^145 + (192*zeta^4 - 96)*q^148 + (-108*zeta^7 - 54*zeta^5 
+ 54*zeta^3 - 54*zeta)*q^151 + (96*zeta^4 - 48)*q^152 + (-24*zeta^7 - 12*zeta^5 
+ 12*zeta^3 - 12*zeta)*q^153 + (-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 
36*zeta)*q^159 + (-96*zeta^4 + 48)*q^160 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 -
24*zeta)*q^161 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^167 + 
(-96*zeta^4 + 48)*q^168 + (-18*zeta^7 - 9*zeta^5 + 9*zeta^3 - 9*zeta)*q^169 + 
(-96*zeta^4 + 48)*q^172 + (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^175 + 
(-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^177 + (96*zeta^4 - 48)*q^180 + 
(96*zeta^4 - 48)*q^184 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^185 + 
(-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^191 + (192*zeta^4 - 96)*q^192 +
(-36*zeta^7 - 18*zeta^5 + 18*zeta^3 - 18*zeta)*q^193 + (60*zeta^7 + 30*zeta^5 - 
30*zeta^3 + 30*zeta)*q^199 + (24*zeta^4 - 12)*q^200 + (144*zeta^7 + 72*zeta^5 - 
72*zeta^3 + 72*zeta)*q^201 + (-96*zeta^4 + 48)*q^204 + (48*zeta^7 + 24*zeta^5 - 
24*zeta^3 + 24*zeta)*q^207 + (144*zeta^4 - 72)*q^212 + (48*zeta^7 + 24*zeta^5 - 
24*zeta^3 + 24*zeta)*q^215 + (-48*zeta^4 + 24)*q^216 + (-24*zeta^7 - 12*zeta^5 +
12*zeta^3 - 12*zeta)*q^217 + (84*zeta^7 + 42*zeta^5 - 42*zeta^3 + 42*zeta)*q^223
+ (-96*zeta^4 + 48)*q^224 + (12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 6*zeta)*q^225 + 
(-144*zeta^4 + 72)*q^232 + (84*zeta^7 + 42*zeta^5 - 42*zeta^3 + 42*zeta)*q^233 +
(96*zeta^4 - 48)*q^236 + (192*zeta^4 - 96)*q^240 + (12*zeta^7 + 6*zeta^5 - 
6*zeta^3 + 6*zeta)*q^241 + (96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 48*zeta)*q^247 +
(48*zeta^4 - 24)*q^248 + (-192*zeta^7 - 96*zeta^5 + 96*zeta^3 - 96*zeta)*q^249 +
(48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^255 + (192*zeta^4 - 96)*q^256 + 
(108*zeta^7 + 54*zeta^5 - 54*zeta^3 + 54*zeta)*q^257 + (-96*zeta^7 - 48*zeta^5 +
48*zeta^3 - 48*zeta)*q^263 + (-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 
36*zeta)*q^265 + (-288*zeta^4 + 144)*q^268 + (-108*zeta^7 - 54*zeta^5 + 
54*zeta^3 - 54*zeta)*q^271 + (96*zeta^4 - 48)*q^272 + (-96*zeta^7 - 48*zeta^5 + 
48*zeta^3 - 48*zeta)*q^273 + (192*zeta^4 - 96)*q^276 + (24*zeta^7 + 12*zeta^5 - 
12*zeta^3 + 12*zeta)*q^279 + (-96*zeta^4 + 48)*q^280 + (-108*zeta^7 - 54*zeta^5 
+ 54*zeta^3 - 54*zeta)*q^281 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 
12*zeta)*q^287 + (96*zeta^4 - 48)*q^288 + (-78*zeta^7 - 39*zeta^5 + 39*zeta^3 - 
39*zeta)*q^289 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^295 + 
(192*zeta^4 - 96)*q^296 + (48*zeta^4 - 24)*q^300 + (120*zeta^7 + 60*zeta^5 - 
60*zeta^3 + 60*zeta)*q^303 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 
24*zeta)*q^311 + (192*zeta^4 - 96)*q^312 + (84*zeta^7 + 42*zeta^5 - 42*zeta^3 + 
42*zeta)*q^313 + (192*zeta^4 - 96)*q^320 + (144*zeta^7 + 72*zeta^5 - 72*zeta^3 +
72*zeta)*q^321 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^327 + 
(48*zeta^4 - 24)*q^328 + (144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^329 + 
(384*zeta^4 - 192)*q^332 + (144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^335 
+ (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^337 + (-96*zeta^4 + 48)*q^340 + 
(120*zeta^7 + 60*zeta^5 - 60*zeta^3 + 60*zeta)*q^343 + (-96*zeta^4 + 48)*q^344 +
(-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^345 + (-48*zeta^7 - 24*zeta^5 +
24*zeta^3 - 24*zeta)*q^351 + (-36*zeta^7 - 18*zeta^5 + 18*zeta^3 - 
18*zeta)*q^353 + (-120*zeta^7 - 60*zeta^5 + 60*zeta^3 - 60*zeta)*q^359 + 
(96*zeta^4 - 48)*q^360 + (18*zeta^7 + 9*zeta^5 - 9*zeta^3 + 9*zeta)*q^361 + 
(192*zeta^4 - 96)*q^364 + (108*zeta^7 + 54*zeta^5 - 54*zeta^3 + 54*zeta)*q^367 +
(-192*zeta^4 + 96)*q^368 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^369 +
(96*zeta^4 - 48)*q^372 + (-144*zeta^7 - 72*zeta^5 + 72*zeta^3 - 72*zeta)*q^375 +
(-288*zeta^4 + 144)*q^376 + (-144*zeta^7 - 72*zeta^5 + 72*zeta^3 - 
72*zeta)*q^377 + (144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^383 + 
(-192*zeta^4 + 96)*q^384 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^391 
+ (-72*zeta^4 + 36)*q^392 + (240*zeta^7 + 120*zeta^5 - 120*zeta^3 + 
120*zeta)*q^393 + (96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 48*zeta)*q^399 + 
(-48*zeta^4 + 24)*q^400 + (-108*zeta^7 - 54*zeta^5 + 54*zeta^3 - 54*zeta)*q^401 
+ (-240*zeta^4 + 120)*q^404 + (-96*zeta^4 + 48)*q^408 + (60*zeta^7 + 30*zeta^5 -
30*zeta^3 + 30*zeta)*q^409 + (-192*zeta^7 - 96*zeta^5 + 96*zeta^3 - 
96*zeta)*q^415 + (192*zeta^4 - 96)*q^416 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 -
24*zeta)*q^417 + (-144*zeta^7 - 72*zeta^5 + 72*zeta^3 - 72*zeta)*q^423 + 
(144*zeta^4 - 72)*q^424 + (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^425 + 
(-288*zeta^4 + 144)*q^428 + (72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^431 
+ (84*zeta^7 + 42*zeta^5 - 42*zeta^3 + 42*zeta)*q^433 + (96*zeta^4 - 48)*q^436 +
(-180*zeta^7 - 90*zeta^5 + 90*zeta^3 - 90*zeta)*q^439 + (-36*zeta^7 - 18*zeta^5 
+ 18*zeta^3 - 18*zeta)*q^441 + (72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 
36*zeta)*q^447 + (180*zeta^7 + 90*zeta^5 - 90*zeta^3 + 90*zeta)*q^449 + 
(-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^455 + (-192*zeta^4 + 96)*q^456 
+ (-132*zeta^7 - 66*zeta^5 + 66*zeta^3 - 66*zeta)*q^457 + (192*zeta^4 - 
96)*q^460 + (-156*zeta^7 - 78*zeta^5 + 78*zeta^3 - 78*zeta)*q^463 + (-48*zeta^7 
- 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^465 + (-192*zeta^4 + 96)*q^468 + 
(-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^471 + (96*zeta^4 - 48)*q^472 + 
(120*zeta^7 + 60*zeta^5 - 60*zeta^3 + 60*zeta)*q^479 + (-192*zeta^4 + 96)*q^480 
+ (192*zeta^7 + 96*zeta^5 - 96*zeta^3 + 96*zeta)*q^481 + (228*zeta^7 + 
114*zeta^5 - 114*zeta^3 + 114*zeta)*q^487 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 +
24*zeta)*q^489 + (96*zeta^4 - 48)*q^492 + (-96*zeta^4 + 48)*q^496 + (-144*zeta^7
- 72*zeta^5 + 72*zeta^3 - 72*zeta)*q^497 + (288*zeta^4 - 144)*q^500 + 
(-216*zeta^7 - 108*zeta^5 + 108*zeta^3 - 108*zeta)*q^503 + (-96*zeta^4 + 
48)*q^504 + (120*zeta^7 + 60*zeta^5 - 60*zeta^3 + 60*zeta)*q^505 + (72*zeta^7 + 
36*zeta^5 - 36*zeta^3 + 36*zeta)*q^511 + (-192*zeta^4 + 96)*q^512 + (48*zeta^7 +
24*zeta^5 - 24*zeta^3 + 24*zeta)*q^513 + (-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 
36*zeta)*q^519 + (192*zeta^4 - 96)*q^520 + (252*zeta^7 + 126*zeta^5 - 126*zeta^3
+ 126*zeta)*q^521 + (-480*zeta^4 + 240)*q^524 + (-24*zeta^7 - 12*zeta^5 + 
12*zeta^3 - 12*zeta)*q^527 + (-42*zeta^7 - 21*zeta^5 + 21*zeta^3 - 
21*zeta)*q^529 + (-192*zeta^4 + 96)*q^532 + (144*zeta^7 + 72*zeta^5 - 72*zeta^3 
+ 72*zeta)*q^535 + (-288*zeta^4 + 144)*q^536 + (-48*zeta^7 - 24*zeta^5 + 
24*zeta^3 - 24*zeta)*q^537 + (240*zeta^7 + 120*zeta^5 - 120*zeta^3 + 
120*zeta)*q^543 + (-96*zeta^4 + 48)*q^544 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 
- 24*zeta)*q^545 + (144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^551 + 
(192*zeta^4 - 96)*q^552 + (-120*zeta^7 - 60*zeta^5 + 60*zeta^3 - 60*zeta)*q^553 
+ (96*zeta^4 - 48)*q^556 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^559 
+ (-576*zeta^4 + 288)*q^564 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 
12*zeta)*q^567 + (288*zeta^4 - 144)*q^568 + (-180*zeta^7 - 90*zeta^5 + 90*zeta^3
- 90*zeta)*q^569 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^575 + 
(-252*zeta^7 - 126*zeta^5 + 126*zeta^3 - 126*zeta)*q^577 + (-144*zeta^4 + 
72)*q^584 + (96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 48*zeta)*q^585 + (-144*zeta^4 +
72)*q^588 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^591 + (-36*zeta^7 - 
18*zeta^5 + 18*zeta^3 - 18*zeta)*q^593 + (-144*zeta^4 + 72)*q^596 + (-120*zeta^7
- 60*zeta^5 + 60*zeta^3 - 60*zeta)*q^599 + (48*zeta^4 - 24)*q^600 + (12*zeta^7 +
6*zeta^5 - 6*zeta^3 + 6*zeta)*q^601 + (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 
6*zeta)*q^607 + (-192*zeta^4 + 96)*q^608 + (-144*zeta^7 - 72*zeta^5 + 72*zeta^3 
- 72*zeta)*q^609 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^615 + 
(-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^617 + (96*zeta^4 - 48)*q^620 + 
(120*zeta^7 + 60*zeta^5 - 60*zeta^3 + 60*zeta)*q^623 + (-384*zeta^4 + 192)*q^624
+ (-114*zeta^7 - 57*zeta^5 + 57*zeta^3 - 57*zeta)*q^625 + (192*zeta^4 - 
96)*q^628 + (132*zeta^7 + 66*zeta^5 - 66*zeta^3 + 66*zeta)*q^631 + (240*zeta^4 -
120)*q^632 + (-240*zeta^7 - 120*zeta^5 + 120*zeta^3 - 120*zeta)*q^633 + 
(144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^639 + (-192*zeta^4 + 96)*q^640 
+ (132*zeta^7 + 66*zeta^5 - 66*zeta^3 + 66*zeta)*q^641 + (-72*zeta^7 - 36*zeta^5
+ 36*zeta^3 - 36*zeta)*q^647 + (-48*zeta^4 + 24)*q^648 + (-96*zeta^4 + 48)*q^652
+ (240*zeta^7 + 120*zeta^5 - 120*zeta^3 + 120*zeta)*q^655 + (-96*zeta^4 + 
48)*q^656 + (-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 36*zeta)*q^657 + (-96*zeta^7 -
48*zeta^5 + 48*zeta^3 - 48*zeta)*q^663 + (384*zeta^4 - 192)*q^664 + (96*zeta^7 +
48*zeta^5 - 48*zeta^3 + 48*zeta)*q^665 + (192*zeta^4 - 96)*q^672 + (84*zeta^7 + 
42*zeta^5 - 42*zeta^3 + 42*zeta)*q^673 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 
12*zeta)*q^679 + (-96*zeta^4 + 48)*q^680 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 -
48*zeta)*q^681 + (192*zeta^4 - 96)*q^684 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 -
24*zeta)*q^687 + (144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^689 + 
(144*zeta^4 - 72)*q^692 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^695 +
(288*zeta^4 - 144)*q^696 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^697 
+ (-192*zeta^7 - 96*zeta^5 + 96*zeta^3 - 96*zeta)*q^703 + (288*zeta^7 + 
144*zeta^5 - 144*zeta^3 + 144*zeta)*q^705 + (120*zeta^7 + 60*zeta^5 - 60*zeta^3 
+ 60*zeta)*q^711 + (-240*zeta^4 + 120)*q^712 + (48*zeta^7 + 24*zeta^5 - 
24*zeta^3 + 24*zeta)*q^713 + (96*zeta^4 - 48)*q^716 + (-120*zeta^7 - 60*zeta^5 +
60*zeta^3 - 60*zeta)*q^719 + (72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^721
+ (-480*zeta^4 + 240)*q^724 + (-252*zeta^7 - 126*zeta^5 + 126*zeta^3 - 
126*zeta)*q^727 + (192*zeta^4 - 96)*q^728 + (12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 
6*zeta)*q^729 + (72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^735 + 
(192*zeta^4 - 96)*q^736 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^743 +
(96*zeta^4 - 48)*q^744 + (72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^745 + 
(12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 6*zeta)*q^751 + (576*zeta^4 - 288)*q^752 + 
(96*zeta^4 - 48)*q^756 + (-192*zeta^4 + 96)*q^760 + (-228*zeta^7 - 114*zeta^5 + 
114*zeta^3 - 114*zeta)*q^761 + (96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 
48*zeta)*q^767 + (60*zeta^7 + 30*zeta^5 - 30*zeta^3 + 30*zeta)*q^769 + 
(12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 6*zeta)*q^775 + (-48*zeta^4 + 24)*q^776 + 
(192*zeta^7 + 96*zeta^5 - 96*zeta^3 + 96*zeta)*q^777 + (384*zeta^4 - 192)*q^780 
+ (-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 36*zeta)*q^783 + (144*zeta^4 - 72)*q^784
+ (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^785 + (-48*zeta^4 + 24)*q^788
+ (72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^791 + (144*zeta^7 + 72*zeta^5 
- 72*zeta^3 + 72*zeta)*q^799 + (48*zeta^4 - 24)*q^800 + (-120*zeta^7 - 60*zeta^5
+ 60*zeta^3 - 60*zeta)*q^801 + (72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 
36*zeta)*q^807 + (-240*zeta^4 + 120)*q^808 + (-180*zeta^7 - 90*zeta^5 + 
90*zeta^3 - 90*zeta)*q^809 + (288*zeta^4 - 144)*q^812 + (48*zeta^7 + 24*zeta^5 -
24*zeta^3 + 24*zeta)*q^815 + (96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 48*zeta)*q^817
+ (96*zeta^4 - 48)*q^820 + (84*zeta^7 + 42*zeta^5 - 42*zeta^3 + 42*zeta)*q^823 +
(-144*zeta^4 + 72)*q^824 + (-336*zeta^7 - 168*zeta^5 + 168*zeta^3 - 
168*zeta)*q^831 + (-384*zeta^4 + 192)*q^832 + (36*zeta^7 + 18*zeta^5 - 18*zeta^3
+ 18*zeta)*q^833 + (120*zeta^7 + 60*zeta^5 - 60*zeta^3 + 60*zeta)*q^839 + 
(192*zeta^4 - 96)*q^840 + (-42*zeta^7 - 21*zeta^5 + 21*zeta^3 - 21*zeta)*q^841 +
(480*zeta^4 - 240)*q^844 + (-132*zeta^7 - 66*zeta^5 + 66*zeta^3 - 66*zeta)*q^847
+ (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^849 + (576*zeta^4 - 288)*q^852
+ (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^855 + (-288*zeta^4 + 
144)*q^856 + (108*zeta^7 + 54*zeta^5 - 54*zeta^3 + 54*zeta)*q^857 + (144*zeta^7 
+ 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^863 + (96*zeta^4 - 48)*q^864 + (-72*zeta^7 
- 36*zeta^5 + 36*zeta^3 - 36*zeta)*q^865 + (-288*zeta^7 - 144*zeta^5 + 
144*zeta^3 - 144*zeta)*q^871 + (96*zeta^4 - 48)*q^872 + (-24*zeta^7 - 12*zeta^5 
+ 12*zeta^3 - 12*zeta)*q^873 + (-288*zeta^4 + 144)*q^876 + (-72*zeta^7 - 
36*zeta^5 + 36*zeta^3 - 36*zeta)*q^879 + (12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 
6*zeta)*q^881 + (192*zeta^4 - 96)*q^884 + (288*zeta^7 + 144*zeta^5 - 144*zeta^3 
+ 144*zeta)*q^887 + (-384*zeta^4 + 192)*q^888 + (24*zeta^7 + 12*zeta^5 - 
12*zeta^3 + 12*zeta)*q^889 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 
24*zeta)*q^895 + (192*zeta^4 - 96)*q^896 + (192*zeta^7 + 96*zeta^5 - 96*zeta^3 +
96*zeta)*q^897 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^903 + 
(-144*zeta^4 + 72)*q^904 + (240*zeta^7 + 120*zeta^5 - 120*zeta^3 + 
120*zeta)*q^905 + (192*zeta^4 - 96)*q^908 + (-288*zeta^7 - 144*zeta^5 + 
144*zeta^3 - 144*zeta)*q^911 + (384*zeta^4 - 192)*q^912 + (96*zeta^4 - 48)*q^916
+ (180*zeta^7 + 90*zeta^5 - 90*zeta^3 + 90*zeta)*q^919 + (192*zeta^4 - 96)*q^920
+ (144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^921 + (-72*zeta^7 - 36*zeta^5
+ 36*zeta^3 - 36*zeta)*q^927 + (288*zeta^4 - 144)*q^928 + (-300*zeta^7 - 
150*zeta^5 + 150*zeta^3 - 150*zeta)*q^929 + (-192*zeta^4 + 96)*q^936 + 
(228*zeta^7 + 114*zeta^5 - 114*zeta^3 + 114*zeta)*q^937 + (-576*zeta^4 + 
288)*q^940 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^943 + (-48*zeta^7 -
24*zeta^5 + 24*zeta^3 - 24*zeta)*q^945 + (480*zeta^4 - 240)*q^948 + (264*zeta^7 
+ 132*zeta^5 - 132*zeta^3 + 132*zeta)*q^951 + (96*zeta^4 - 48)*q^952 + 
(-36*zeta^7 - 18*zeta^5 + 18*zeta^3 - 18*zeta)*q^953 + (-216*zeta^7 - 108*zeta^5
+ 108*zeta^3 - 108*zeta)*q^959 + (-162*zeta^7 - 81*zeta^5 + 81*zeta^3 - 
81*zeta)*q^961 + (-132*zeta^7 - 66*zeta^5 + 66*zeta^3 - 66*zeta)*q^967 + 
(264*zeta^4 - 132)*q^968 + (96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 48*zeta)*q^969 +
(48*zeta^4 - 24)*q^972 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^975 + 
(-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^977 + (-144*zeta^4 + 72)*q^980 + 
(-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^983 + (96*zeta^4 - 48)*q^984 + 
(24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^985 + (12*zeta^7 + 6*zeta^5 - 
6*zeta^3 + 6*zeta)*q^991 + (96*zeta^4 - 48)*q^992 + (-240*zeta^7 - 120*zeta^5 + 
120*zeta^3 - 120*zeta)*q^993 + (96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 
48*zeta)*q^999 + (288*zeta^4 - 144)*q^1000 + (-144*zeta^7 - 72*zeta^5 + 
72*zeta^3 - 72*zeta)*q^1007 + (192*zeta^4 - 96)*q^1008 + (180*zeta^7 + 90*zeta^5
- 90*zeta^3 + 90*zeta)*q^1009 + (-144*zeta^7 - 72*zeta^5 + 72*zeta^3 - 
72*zeta)*q^1015 + (-48*zeta^4 + 24)*q^1016 + (-72*zeta^7 - 36*zeta^5 + 36*zeta^3
- 36*zeta)*q^1017 + (12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 6*zeta)*q^1025 + 
(192*zeta^7 + 96*zeta^5 - 96*zeta^3 + 96*zeta)*q^1031 + (192*zeta^4 - 96)*q^1032
+ (-156*zeta^7 - 78*zeta^5 + 78*zeta^3 - 78*zeta)*q^1033 + (-384*zeta^4 + 
192)*q^1036 + (60*zeta^7 + 30*zeta^5 - 30*zeta^3 + 30*zeta)*q^1039 + 
(-384*zeta^4 + 192)*q^1040 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 
48*zeta)*q^1041 + (-288*zeta^4 + 144)*q^1044 + (192*zeta^7 + 96*zeta^5 - 
96*zeta^3 + 96*zeta)*q^1047 + (-480*zeta^4 + 240)*q^1048 + (180*zeta^7 + 
90*zeta^5 - 90*zeta^3 + 90*zeta)*q^1049 + (-240*zeta^7 - 120*zeta^5 + 120*zeta^3
- 120*zeta)*q^1055 + (216*zeta^7 + 108*zeta^5 - 108*zeta^3 + 108*zeta)*q^1057 + 
(204*zeta^7 + 102*zeta^5 - 102*zeta^3 + 102*zeta)*q^1063 + (-192*zeta^4 + 
96)*q^1064 + (-288*zeta^7 - 144*zeta^5 + 144*zeta^3 - 144*zeta)*q^1065 + 
(-480*zeta^4 + 240)*q^1068 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 
24*zeta)*q^1071 + (288*zeta^7 + 144*zeta^5 - 144*zeta^3 + 144*zeta)*q^1073 + 
(-144*zeta^4 + 72)*q^1076 + (384*zeta^7 + 192*zeta^5 - 192*zeta^3 + 
192*zeta)*q^1079 + (96*zeta^4 - 48)*q^1080 + (-288*zeta^7 - 144*zeta^5 + 
144*zeta^3 - 144*zeta)*q^1081 + (348*zeta^7 + 174*zeta^5 - 174*zeta^3 + 
174*zeta)*q^1087 + (132*zeta^7 + 66*zeta^5 - 66*zeta^3 + 66*zeta)*q^1089 + 
(144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^1095 + (432*zeta^4 - 
216)*q^1096 + (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^1097 + (144*zeta^7 +
72*zeta^5 - 72*zeta^3 + 72*zeta)*q^1103 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 
48*zeta)*q^1105 + (672*zeta^4 - 336)*q^1108 + (96*zeta^4 - 48)*q^1112 + 
(144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^1113 + (-192*zeta^7 - 96*zeta^5
+ 96*zeta^3 - 96*zeta)*q^1119 + (192*zeta^4 - 96)*q^1120 + (-96*zeta^7 - 
48*zeta^5 + 48*zeta^3 - 48*zeta)*q^1121 + (-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 
36*zeta)*q^1127 + (-576*zeta^4 + 288)*q^1128 + (-60*zeta^7 - 30*zeta^5 + 
30*zeta^3 - 30*zeta)*q^1129 + (-96*zeta^4 + 48)*q^1132 + (-96*zeta^7 - 48*zeta^5
+ 48*zeta^3 - 48*zeta)*q^1135 + (-576*zeta^4 + 288)*q^1136 + (-48*zeta^7 - 
24*zeta^5 + 24*zeta^3 - 24*zeta)*q^1137 + (-384*zeta^4 + 192)*q^1140 + 
(-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^1143 + (-48*zeta^7 - 24*zeta^5 
+ 24*zeta^3 - 24*zeta)*q^1145 + (-288*zeta^7 - 144*zeta^5 + 144*zeta^3 - 
144*zeta)*q^1151 + (-192*zeta^4 + 96)*q^1152 + (-276*zeta^7 - 138*zeta^5 + 
138*zeta^3 - 138*zeta)*q^1153 + (288*zeta^4 - 144)*q^1160 + (-48*zeta^7 - 
24*zeta^5 + 24*zeta^3 - 24*zeta)*q^1161 + (-96*zeta^4 + 48)*q^1164 + 
(-408*zeta^7 - 204*zeta^5 + 204*zeta^3 - 204*zeta)*q^1167 + (288*zeta^4 - 
144)*q^1168 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^1169 + 
(144*zeta^4 - 72)*q^1172 + (-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 36*zeta)*q^1175
+ (-144*zeta^4 + 72)*q^1176 + (36*zeta^7 + 18*zeta^5 - 18*zeta^3 + 
18*zeta)*q^1183 + (-384*zeta^4 + 192)*q^1184 + (-240*zeta^7 - 120*zeta^5 + 
120*zeta^3 - 120*zeta)*q^1185 + (384*zeta^7 + 192*zeta^5 - 192*zeta^3 + 
192*zeta)*q^1191 + (-144*zeta^4 + 72)*q^1192 + (-396*zeta^7 - 198*zeta^5 + 
198*zeta^3 - 198*zeta)*q^1193 + (-384*zeta^4 + 192)*q^1196 + (-348*zeta^7 - 
174*zeta^5 + 174*zeta^3 - 174*zeta)*q^1201 + (192*zeta^4 - 96)*q^1204 + 
(-144*zeta^7 - 72*zeta^5 + 72*zeta^3 - 72*zeta)*q^1207 + (-432*zeta^4 + 
216)*q^1208 + (96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 48*zeta)*q^1209 + (-24*zeta^7
- 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^1215 + (384*zeta^4 - 192)*q^1216 + 
(348*zeta^7 + 174*zeta^5 - 174*zeta^3 + 174*zeta)*q^1217 + (144*zeta^7 + 
72*zeta^5 - 72*zeta^3 + 72*zeta)*q^1223 + (-96*zeta^4 + 48)*q^1224 + (-18*zeta^7
- 9*zeta^5 + 9*zeta^3 - 9*zeta)*q^1225 + (-288*zeta^4 + 144)*q^1228 + 
(372*zeta^7 + 186*zeta^5 - 186*zeta^3 + 186*zeta)*q^1231 + (216*zeta^7 + 
108*zeta^5 - 108*zeta^3 + 108*zeta)*q^1233 + (-288*zeta^4 + 144)*q^1236 + 
(96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 48*zeta)*q^1239 + (96*zeta^4 - 48)*q^1240 +
(72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^1241 + (-144*zeta^7 - 72*zeta^5 
+ 72*zeta^3 - 72*zeta)*q^1247 + (384*zeta^4 - 192)*q^1248 + (180*zeta^7 + 
90*zeta^5 - 90*zeta^3 + 90*zeta)*q^1249 + (192*zeta^4 - 96)*q^1256 + 
(-288*zeta^7 - 144*zeta^5 + 144*zeta^3 - 144*zeta)*q^1257 + (-192*zeta^4 + 
96)*q^1260 + (240*zeta^7 + 120*zeta^5 - 120*zeta^3 + 120*zeta)*q^1263 + 
(-480*zeta^4 + 240)*q^1264 + (-528*zeta^4 + 264)*q^1268 + (24*zeta^7 + 12*zeta^5
- 12*zeta^3 + 12*zeta)*q^1271 + (-288*zeta^4 + 144)*q^1272 + (288*zeta^7 + 
144*zeta^5 - 144*zeta^3 + 144*zeta)*q^1273 + (-60*zeta^7 - 30*zeta^5 + 30*zeta^3
- 30*zeta)*q^1279 + (-192*zeta^4 + 96)*q^1288 + (180*zeta^7 + 90*zeta^5 - 
90*zeta^3 + 90*zeta)*q^1289 + (-192*zeta^4 + 96)*q^1292 + (192*zeta^7 + 
96*zeta^5 - 96*zeta^3 + 96*zeta)*q^1295 + (96*zeta^4 - 48)*q^1296 + (348*zeta^7 
+ 174*zeta^5 - 174*zeta^3 + 174*zeta)*q^1297 + (-96*zeta^4 + 48)*q^1300 + 
(-276*zeta^7 - 138*zeta^5 + 138*zeta^3 - 138*zeta)*q^1303 + (-96*zeta^4 + 
48)*q^1304 + (144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^1305 + 
(-192*zeta^7 - 96*zeta^5 + 96*zeta^3 - 96*zeta)*q^1311 + (96*zeta^4 - 48)*q^1312
+ (-240*zeta^7 - 120*zeta^5 + 120*zeta^3 - 120*zeta)*q^1313 + (120*zeta^7 + 
60*zeta^5 - 60*zeta^3 + 60*zeta)*q^1319 + (252*zeta^7 + 126*zeta^5 - 126*zeta^3 
+ 126*zeta)*q^1321 + (480*zeta^4 - 240)*q^1324 + (-132*zeta^7 - 66*zeta^5 + 
66*zeta^3 - 66*zeta)*q^1327 + (288*zeta^7 + 144*zeta^5 - 144*zeta^3 + 
144*zeta)*q^1329 + (384*zeta^4 - 192)*q^1332 + (240*zeta^7 + 120*zeta^5 - 
120*zeta^3 + 120*zeta)*q^1335 + (192*zeta^4 - 96)*q^1336 + (96*zeta^7 + 
48*zeta^5 - 48*zeta^3 + 48*zeta)*q^1337 + (-120*zeta^7 - 60*zeta^5 + 60*zeta^3 -
60*zeta)*q^1343 + (-384*zeta^4 + 192)*q^1344 + (72*zeta^7 + 36*zeta^5 - 
36*zeta^3 + 36*zeta)*q^1345 + (72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 
36*zeta)*q^1351 + (-72*zeta^4 + 36)*q^1352 + (-288*zeta^4 + 144)*q^1356 + 
(-216*zeta^7 - 108*zeta^5 + 108*zeta^3 - 108*zeta)*q^1359 + (132*zeta^7 + 
66*zeta^5 - 66*zeta^3 + 66*zeta)*q^1361 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 
24*zeta)*q^1367 + (192*zeta^4 - 96)*q^1368 + (-162*zeta^7 - 81*zeta^5 + 
81*zeta^3 - 81*zeta)*q^1369 + (192*zeta^4 - 96)*q^1376 + (24*zeta^7 + 12*zeta^5 
- 12*zeta^3 + 12*zeta)*q^1377 + (-360*zeta^7 - 180*zeta^5 + 180*zeta^3 - 
180*zeta)*q^1383 + (144*zeta^4 - 72)*q^1384 + (-336*zeta^7 - 168*zeta^5 + 
168*zeta^3 - 168*zeta)*q^1385 + (192*zeta^4 - 96)*q^1388 + (-288*zeta^7 - 
144*zeta^5 + 144*zeta^3 - 144*zeta)*q^1391 + (-576*zeta^4 + 288)*q^1392 + 
(-120*zeta^7 - 60*zeta^5 + 60*zeta^3 - 60*zeta)*q^1393 + (-384*zeta^4 + 
192)*q^1396 + (-180*zeta^7 - 90*zeta^5 + 90*zeta^3 - 90*zeta)*q^1399 + 
(-48*zeta^4 + 24)*q^1400 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^1401
+ (-288*zeta^7 - 144*zeta^5 + 144*zeta^3 - 144*zeta)*q^1407 + (-60*zeta^7 - 
30*zeta^5 + 30*zeta^3 - 30*zeta)*q^1409 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 
24*zeta)*q^1415 + (-192*zeta^4 + 96)*q^1416 + (96*zeta^7 + 48*zeta^5 - 48*zeta^3
+ 48*zeta)*q^1417 + (576*zeta^4 - 288)*q^1420 + (-156*zeta^7 - 78*zeta^5 + 
78*zeta^3 - 78*zeta)*q^1423 + (480*zeta^4 - 240)*q^1424 + (-48*zeta^7 - 
24*zeta^5 + 24*zeta^3 - 24*zeta)*q^1425 + (192*zeta^4 - 96)*q^1428 + (72*zeta^7 
+ 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^1431 + (96*zeta^4 - 48)*q^1432 + 
(324*zeta^7 + 162*zeta^5 - 162*zeta^3 + 162*zeta)*q^1433 + (120*zeta^7 + 
60*zeta^5 - 60*zeta^3 + 60*zeta)*q^1439 + (-192*zeta^4 + 96)*q^1440 + 
(-372*zeta^7 - 186*zeta^5 + 186*zeta^3 - 186*zeta)*q^1447 + (-480*zeta^4 + 
240)*q^1448 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^1449 + 
(528*zeta^4 - 264)*q^1452 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^1455
+ (-144*zeta^7 - 72*zeta^5 + 72*zeta^3 - 72*zeta)*q^1457 + (-288*zeta^4 + 
144)*q^1460 + (-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 36*zeta)*q^1465 + 
(132*zeta^7 + 66*zeta^5 - 66*zeta^3 + 66*zeta)*q^1471 + (240*zeta^7 + 120*zeta^5
- 120*zeta^3 + 120*zeta)*q^1473 + (-144*zeta^7 - 72*zeta^5 + 72*zeta^3 - 
72*zeta)*q^1479 + (-384*zeta^4 + 192)*q^1480 + (-108*zeta^7 - 54*zeta^5 + 
54*zeta^3 - 54*zeta)*q^1481 + (-288*zeta^4 + 144)*q^1484 + (-72*zeta^7 - 
36*zeta^5 + 36*zeta^3 - 36*zeta)*q^1487 + (-300*zeta^7 - 150*zeta^5 + 150*zeta^3
- 150*zeta)*q^1489 + (384*zeta^4 - 192)*q^1492 + (192*zeta^7 + 96*zeta^5 - 
96*zeta^3 + 96*zeta)*q^1495 + (432*zeta^7 + 216*zeta^5 - 216*zeta^3 + 
216*zeta)*q^1497 + (96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 48*zeta)*q^1503 + 
(-576*zeta^4 + 288)*q^1504 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 
48*zeta)*q^1505 + (312*zeta^7 + 156*zeta^5 - 156*zeta^3 + 156*zeta)*q^1511 + 
(96*zeta^4 - 48)*q^1512 + (120*zeta^7 + 60*zeta^5 - 60*zeta^3 + 60*zeta)*q^1513 
+ (96*zeta^4 - 48)*q^1516 + (-36*zeta^7 - 18*zeta^5 + 18*zeta^3 - 
18*zeta)*q^1519 + (384*zeta^4 - 192)*q^1520 + (-36*zeta^7 - 18*zeta^5 + 
18*zeta^3 - 18*zeta)*q^1521 + (-96*zeta^4 + 48)*q^1524 + (72*zeta^7 + 36*zeta^5 
- 36*zeta^3 + 36*zeta)*q^1527 + (-192*zeta^4 + 96)*q^1528 + (144*zeta^7 + 
72*zeta^5 - 72*zeta^3 + 72*zeta)*q^1535 + (384*zeta^4 - 192)*q^1536 + 
(216*zeta^7 + 108*zeta^5 - 108*zeta^3 + 108*zeta)*q^1537 + (324*zeta^7 + 
162*zeta^5 - 162*zeta^3 + 162*zeta)*q^1543 + (-144*zeta^4 + 72)*q^1544 + 
(144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^1545 + (-192*zeta^4 + 
96)*q^1548 + (96*zeta^4 - 48)*q^1552 + (-36*zeta^7 - 18*zeta^5 + 18*zeta^3 - 
18*zeta)*q^1553 + (816*zeta^4 - 408)*q^1556 + (120*zeta^7 + 60*zeta^5 - 
60*zeta^3 + 60*zeta)*q^1559 + (384*zeta^4 - 192)*q^1560 + (-168*zeta^7 - 
84*zeta^5 + 84*zeta^3 - 84*zeta)*q^1561 + (-132*zeta^7 - 66*zeta^5 + 66*zeta^3 -
66*zeta)*q^1567 + (-144*zeta^4 + 72)*q^1568 + (-432*zeta^7 - 216*zeta^5 + 
216*zeta^3 - 216*zeta)*q^1569 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 
12*zeta)*q^1575 + (-48*zeta^4 + 24)*q^1576 + (-384*zeta^7 - 192*zeta^5 + 
192*zeta^3 - 192*zeta)*q^1577 + (480*zeta^4 - 240)*q^1580 + (144*zeta^7 + 
72*zeta^5 - 72*zeta^3 + 72*zeta)*q^1583 + (264*zeta^7 + 132*zeta^5 - 132*zeta^3 
+ 132*zeta)*q^1585 + (-768*zeta^4 + 384)*q^1588 + (192*zeta^7 + 96*zeta^5 - 
96*zeta^3 + 96*zeta)*q^1591 + (240*zeta^4 - 120)*q^1592 + (48*zeta^7 + 24*zeta^5
- 24*zeta^3 + 24*zeta)*q^1593 + (96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 
48*zeta)*q^1599 + (252*zeta^7 + 126*zeta^5 - 126*zeta^3 + 126*zeta)*q^1601 + 
(-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 36*zeta)*q^1607 + O(q^1608), (6*zeta^7 + 
3*zeta^5 - 3*zeta^3 + 3*zeta)*q + (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 
6*zeta)*q^7 + (24*zeta^4 - 12)*q^8 + (12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 
6*zeta)*q^9 + (48*zeta^4 - 24)*q^12 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 
12*zeta)*q^15 + (-48*zeta^4 + 24)*q^16 + (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 
6*zeta)*q^17 + (48*zeta^4 - 24)*q^20 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 
12*zeta)*q^23 + (48*zeta^4 - 24)*q^24 + (6*zeta^7 + 3*zeta^5 - 3*zeta^3 + 
3*zeta)*q^25 + (12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 6*zeta)*q^31 + (48*zeta^4 - 
24)*q^32 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^39 + (48*zeta^4 - 
24)*q^40 + (12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 6*zeta)*q^41 + (-72*zeta^7 - 
36*zeta^5 + 36*zeta^3 - 36*zeta)*q^47 + (-18*zeta^7 - 9*zeta^5 + 9*zeta^3 - 
9*zeta)*q^49 + (-96*zeta^4 + 48)*q^52 + (-48*zeta^4 + 24)*q^56 + (-48*zeta^7 - 
24*zeta^5 + 24*zeta^3 - 24*zeta)*q^57 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 
12*zeta)*q^63 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^65 + (72*zeta^7 
+ 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^71 + (48*zeta^4 - 24)*q^72 + (-36*zeta^7 - 
18*zeta^5 + 18*zeta^3 - 18*zeta)*q^73 + (96*zeta^4 - 48)*q^76 + (60*zeta^7 + 
30*zeta^5 - 30*zeta^3 + 30*zeta)*q^79 + (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 
6*zeta)*q^81 + (-96*zeta^4 + 48)*q^84 + (72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 
36*zeta)*q^87 + (-60*zeta^7 - 30*zeta^5 + 30*zeta^3 - 30*zeta)*q^89 + 
(-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^95 + (-96*zeta^4 + 48)*q^96 + 
(-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^97 + (-36*zeta^7 - 18*zeta^5 + 
18*zeta^3 - 18*zeta)*q^103 + (-96*zeta^4 + 48)*q^104 + (48*zeta^7 + 24*zeta^5 - 
24*zeta^3 + 24*zeta)*q^105 + (-48*zeta^4 + 24)*q^108 + (-96*zeta^7 - 48*zeta^5 +
48*zeta^3 - 48*zeta)*q^111 + (96*zeta^4 - 48)*q^112 + (-36*zeta^7 - 18*zeta^5 + 
18*zeta^3 - 18*zeta)*q^113 + (-144*zeta^4 + 72)*q^116 + (24*zeta^7 + 12*zeta^5 -
12*zeta^3 + 12*zeta)*q^119 + (-96*zeta^4 + 48)*q^120 + (66*zeta^7 + 33*zeta^5 - 
33*zeta^3 + 33*zeta)*q^121 + (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^127 +
(-96*zeta^4 + 48)*q^128 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^129 + 
(24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^135 + (-48*zeta^4 + 24)*q^136 + 
(108*zeta^7 + 54*zeta^5 - 54*zeta^3 + 54*zeta)*q^137 + (-96*zeta^4 + 48)*q^140 +
(-96*zeta^4 + 48)*q^144 + (72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^145 + 
(192*zeta^4 - 96)*q^148 + (-108*zeta^7 - 54*zeta^5 + 54*zeta^3 - 54*zeta)*q^151 
+ (96*zeta^4 - 48)*q^152 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^153 
+ (-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 36*zeta)*q^159 + (-96*zeta^4 + 48)*q^160
+ (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^161 + (48*zeta^7 + 24*zeta^5 
- 24*zeta^3 + 24*zeta)*q^167 + (-96*zeta^4 + 48)*q^168 + (-18*zeta^7 - 9*zeta^5 
+ 9*zeta^3 - 9*zeta)*q^169 + (-96*zeta^4 + 48)*q^172 + (-12*zeta^7 - 6*zeta^5 + 
6*zeta^3 - 6*zeta)*q^175 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^177 
+ (96*zeta^4 - 48)*q^180 + (96*zeta^4 - 48)*q^184 + (-96*zeta^7 - 48*zeta^5 + 
48*zeta^3 - 48*zeta)*q^185 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 
24*zeta)*q^191 + (192*zeta^4 - 96)*q^192 + (-36*zeta^7 - 18*zeta^5 + 18*zeta^3 -
18*zeta)*q^193 + (60*zeta^7 + 30*zeta^5 - 30*zeta^3 + 30*zeta)*q^199 + 
(24*zeta^4 - 12)*q^200 + (144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^201 + 
(-96*zeta^4 + 48)*q^204 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^207 + 
(144*zeta^4 - 72)*q^212 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^215 + 
(-48*zeta^4 + 24)*q^216 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^217 +
(84*zeta^7 + 42*zeta^5 - 42*zeta^3 + 42*zeta)*q^223 + (-96*zeta^4 + 48)*q^224 + 
(12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 6*zeta)*q^225 + (-144*zeta^4 + 72)*q^232 + 
(84*zeta^7 + 42*zeta^5 - 42*zeta^3 + 42*zeta)*q^233 + (96*zeta^4 - 48)*q^236 + 
(192*zeta^4 - 96)*q^240 + (12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 6*zeta)*q^241 + 
(96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 48*zeta)*q^247 + (48*zeta^4 - 24)*q^248 + 
(-192*zeta^7 - 96*zeta^5 + 96*zeta^3 - 96*zeta)*q^249 + (48*zeta^7 + 24*zeta^5 -
24*zeta^3 + 24*zeta)*q^255 + (192*zeta^4 - 96)*q^256 + (108*zeta^7 + 54*zeta^5 -
54*zeta^3 + 54*zeta)*q^257 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 
48*zeta)*q^263 + (-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 36*zeta)*q^265 + 
(-288*zeta^4 + 144)*q^268 + (-108*zeta^7 - 54*zeta^5 + 54*zeta^3 - 
54*zeta)*q^271 + (96*zeta^4 - 48)*q^272 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 
48*zeta)*q^273 + (192*zeta^4 - 96)*q^276 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 
12*zeta)*q^279 + (-96*zeta^4 + 48)*q^280 + (-108*zeta^7 - 54*zeta^5 + 54*zeta^3 
- 54*zeta)*q^281 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^287 + 
(96*zeta^4 - 48)*q^288 + (-78*zeta^7 - 39*zeta^5 + 39*zeta^3 - 39*zeta)*q^289 + 
(-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^295 + (192*zeta^4 - 96)*q^296 +
(48*zeta^4 - 24)*q^300 + (120*zeta^7 + 60*zeta^5 - 60*zeta^3 + 60*zeta)*q^303 + 
(-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^311 + (192*zeta^4 - 96)*q^312 +
(84*zeta^7 + 42*zeta^5 - 42*zeta^3 + 42*zeta)*q^313 + (192*zeta^4 - 96)*q^320 + 
(144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^321 + (-48*zeta^7 - 24*zeta^5 +
24*zeta^3 - 24*zeta)*q^327 + (48*zeta^4 - 24)*q^328 + (144*zeta^7 + 72*zeta^5 - 
72*zeta^3 + 72*zeta)*q^329 + (384*zeta^4 - 192)*q^332 + (144*zeta^7 + 72*zeta^5 
- 72*zeta^3 + 72*zeta)*q^335 + (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^337
+ (-96*zeta^4 + 48)*q^340 + (120*zeta^7 + 60*zeta^5 - 60*zeta^3 + 60*zeta)*q^343
+ (-96*zeta^4 + 48)*q^344 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^345
+ (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^351 + (-36*zeta^7 - 18*zeta^5
+ 18*zeta^3 - 18*zeta)*q^353 + (-120*zeta^7 - 60*zeta^5 + 60*zeta^3 - 
60*zeta)*q^359 + (96*zeta^4 - 48)*q^360 + (18*zeta^7 + 9*zeta^5 - 9*zeta^3 + 
9*zeta)*q^361 + (192*zeta^4 - 96)*q^364 + (108*zeta^7 + 54*zeta^5 - 54*zeta^3 + 
54*zeta)*q^367 + (-192*zeta^4 + 96)*q^368 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 +
12*zeta)*q^369 + (96*zeta^4 - 48)*q^372 + (-144*zeta^7 - 72*zeta^5 + 72*zeta^3 -
72*zeta)*q^375 + (-288*zeta^4 + 144)*q^376 + (-144*zeta^7 - 72*zeta^5 + 
72*zeta^3 - 72*zeta)*q^377 + (144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 
72*zeta)*q^383 + (-192*zeta^4 + 96)*q^384 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 
- 24*zeta)*q^391 + (-72*zeta^4 + 36)*q^392 + (240*zeta^7 + 120*zeta^5 - 
120*zeta^3 + 120*zeta)*q^393 + (96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 
48*zeta)*q^399 + (-48*zeta^4 + 24)*q^400 + (-108*zeta^7 - 54*zeta^5 + 54*zeta^3 
- 54*zeta)*q^401 + (-240*zeta^4 + 120)*q^404 + (-96*zeta^4 + 48)*q^408 + 
(60*zeta^7 + 30*zeta^5 - 30*zeta^3 + 30*zeta)*q^409 + (-192*zeta^7 - 96*zeta^5 +
96*zeta^3 - 96*zeta)*q^415 + (192*zeta^4 - 96)*q^416 + (-48*zeta^7 - 24*zeta^5 +
24*zeta^3 - 24*zeta)*q^417 + (-144*zeta^7 - 72*zeta^5 + 72*zeta^3 - 
72*zeta)*q^423 + (144*zeta^4 - 72)*q^424 + (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 
6*zeta)*q^425 + (-288*zeta^4 + 144)*q^428 + (72*zeta^7 + 36*zeta^5 - 36*zeta^3 +
36*zeta)*q^431 + (84*zeta^7 + 42*zeta^5 - 42*zeta^3 + 42*zeta)*q^433 + 
(96*zeta^4 - 48)*q^436 + (-180*zeta^7 - 90*zeta^5 + 90*zeta^3 - 90*zeta)*q^439 +
(-36*zeta^7 - 18*zeta^5 + 18*zeta^3 - 18*zeta)*q^441 + (72*zeta^7 + 36*zeta^5 - 
36*zeta^3 + 36*zeta)*q^447 + (180*zeta^7 + 90*zeta^5 - 90*zeta^3 + 
90*zeta)*q^449 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^455 + 
(-192*zeta^4 + 96)*q^456 + (-132*zeta^7 - 66*zeta^5 + 66*zeta^3 - 66*zeta)*q^457
+ (192*zeta^4 - 96)*q^460 + (-156*zeta^7 - 78*zeta^5 + 78*zeta^3 - 
78*zeta)*q^463 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^465 + 
(-192*zeta^4 + 96)*q^468 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^471 
+ (96*zeta^4 - 48)*q^472 + (120*zeta^7 + 60*zeta^5 - 60*zeta^3 + 60*zeta)*q^479 
+ (-192*zeta^4 + 96)*q^480 + (192*zeta^7 + 96*zeta^5 - 96*zeta^3 + 
96*zeta)*q^481 + (228*zeta^7 + 114*zeta^5 - 114*zeta^3 + 114*zeta)*q^487 + 
(48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^489 + (96*zeta^4 - 48)*q^492 + 
(-96*zeta^4 + 48)*q^496 + (-144*zeta^7 - 72*zeta^5 + 72*zeta^3 - 72*zeta)*q^497 
+ (288*zeta^4 - 144)*q^500 + (-216*zeta^7 - 108*zeta^5 + 108*zeta^3 - 
108*zeta)*q^503 + (-96*zeta^4 + 48)*q^504 + (120*zeta^7 + 60*zeta^5 - 60*zeta^3 
+ 60*zeta)*q^505 + (72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^511 + 
(-192*zeta^4 + 96)*q^512 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^513 +
(-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 36*zeta)*q^519 + (192*zeta^4 - 96)*q^520 +
(252*zeta^7 + 126*zeta^5 - 126*zeta^3 + 126*zeta)*q^521 + (-480*zeta^4 + 
240)*q^524 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^527 + (-42*zeta^7 
- 21*zeta^5 + 21*zeta^3 - 21*zeta)*q^529 + (-192*zeta^4 + 96)*q^532 + 
(144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^535 + (-288*zeta^4 + 144)*q^536
+ (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^537 + (240*zeta^7 + 
120*zeta^5 - 120*zeta^3 + 120*zeta)*q^543 + (-96*zeta^4 + 48)*q^544 + 
(-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^545 + (144*zeta^7 + 72*zeta^5 -
72*zeta^3 + 72*zeta)*q^551 + (192*zeta^4 - 96)*q^552 + (-120*zeta^7 - 60*zeta^5 
+ 60*zeta^3 - 60*zeta)*q^553 + (96*zeta^4 - 48)*q^556 + (-96*zeta^7 - 48*zeta^5 
+ 48*zeta^3 - 48*zeta)*q^559 + (-576*zeta^4 + 288)*q^564 + (24*zeta^7 + 
12*zeta^5 - 12*zeta^3 + 12*zeta)*q^567 + (288*zeta^4 - 144)*q^568 + (-180*zeta^7
- 90*zeta^5 + 90*zeta^3 - 90*zeta)*q^569 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 
12*zeta)*q^575 + (-252*zeta^7 - 126*zeta^5 + 126*zeta^3 - 126*zeta)*q^577 + 
(-144*zeta^4 + 72)*q^584 + (96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 48*zeta)*q^585 +
(-144*zeta^4 + 72)*q^588 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^591 +
(-36*zeta^7 - 18*zeta^5 + 18*zeta^3 - 18*zeta)*q^593 + (-144*zeta^4 + 72)*q^596 
+ (-120*zeta^7 - 60*zeta^5 + 60*zeta^3 - 60*zeta)*q^599 + (48*zeta^4 - 24)*q^600
+ (12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 6*zeta)*q^601 + (-12*zeta^7 - 6*zeta^5 + 
6*zeta^3 - 6*zeta)*q^607 + (-192*zeta^4 + 96)*q^608 + (-144*zeta^7 - 72*zeta^5 +
72*zeta^3 - 72*zeta)*q^609 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 
24*zeta)*q^615 + (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^617 + (96*zeta^4 
- 48)*q^620 + (120*zeta^7 + 60*zeta^5 - 60*zeta^3 + 60*zeta)*q^623 + 
(-384*zeta^4 + 192)*q^624 + (-114*zeta^7 - 57*zeta^5 + 57*zeta^3 - 
57*zeta)*q^625 + (192*zeta^4 - 96)*q^628 + (132*zeta^7 + 66*zeta^5 - 66*zeta^3 +
66*zeta)*q^631 + (240*zeta^4 - 120)*q^632 + (-240*zeta^7 - 120*zeta^5 + 
120*zeta^3 - 120*zeta)*q^633 + (144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 
72*zeta)*q^639 + (-192*zeta^4 + 96)*q^640 + (132*zeta^7 + 66*zeta^5 - 66*zeta^3 
+ 66*zeta)*q^641 + (-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 36*zeta)*q^647 + 
(-48*zeta^4 + 24)*q^648 + (-96*zeta^4 + 48)*q^652 + (240*zeta^7 + 120*zeta^5 - 
120*zeta^3 + 120*zeta)*q^655 + (-96*zeta^4 + 48)*q^656 + (-72*zeta^7 - 36*zeta^5
+ 36*zeta^3 - 36*zeta)*q^657 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 
48*zeta)*q^663 + (384*zeta^4 - 192)*q^664 + (96*zeta^7 + 48*zeta^5 - 48*zeta^3 +
48*zeta)*q^665 + (192*zeta^4 - 96)*q^672 + (84*zeta^7 + 42*zeta^5 - 42*zeta^3 + 
42*zeta)*q^673 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^679 + 
(-96*zeta^4 + 48)*q^680 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^681 +
(192*zeta^4 - 96)*q^684 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^687 +
(144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^689 + (144*zeta^4 - 72)*q^692 +
(-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^695 + (288*zeta^4 - 144)*q^696 
+ (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^697 + (-192*zeta^7 - 
96*zeta^5 + 96*zeta^3 - 96*zeta)*q^703 + (288*zeta^7 + 144*zeta^5 - 144*zeta^3 +
144*zeta)*q^705 + (120*zeta^7 + 60*zeta^5 - 60*zeta^3 + 60*zeta)*q^711 + 
(-240*zeta^4 + 120)*q^712 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^713 
+ (96*zeta^4 - 48)*q^716 + (-120*zeta^7 - 60*zeta^5 + 60*zeta^3 - 60*zeta)*q^719
+ (72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^721 + (-480*zeta^4 + 
240)*q^724 + (-252*zeta^7 - 126*zeta^5 + 126*zeta^3 - 126*zeta)*q^727 + 
(192*zeta^4 - 96)*q^728 + (12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 6*zeta)*q^729 + 
(72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^735 + (192*zeta^4 - 96)*q^736 + 
(-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^743 + (96*zeta^4 - 48)*q^744 + 
(72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^745 + (12*zeta^7 + 6*zeta^5 - 
6*zeta^3 + 6*zeta)*q^751 + (576*zeta^4 - 288)*q^752 + (96*zeta^4 - 48)*q^756 + 
(-192*zeta^4 + 96)*q^760 + (-228*zeta^7 - 114*zeta^5 + 114*zeta^3 - 
114*zeta)*q^761 + (96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 48*zeta)*q^767 + 
(60*zeta^7 + 30*zeta^5 - 30*zeta^3 + 30*zeta)*q^769 + (12*zeta^7 + 6*zeta^5 - 
6*zeta^3 + 6*zeta)*q^775 + (-48*zeta^4 + 24)*q^776 + (192*zeta^7 + 96*zeta^5 - 
96*zeta^3 + 96*zeta)*q^777 + (384*zeta^4 - 192)*q^780 + (-72*zeta^7 - 36*zeta^5 
+ 36*zeta^3 - 36*zeta)*q^783 + (144*zeta^4 - 72)*q^784 + (-96*zeta^7 - 48*zeta^5
+ 48*zeta^3 - 48*zeta)*q^785 + (-48*zeta^4 + 24)*q^788 + (72*zeta^7 + 36*zeta^5 
- 36*zeta^3 + 36*zeta)*q^791 + (144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 
72*zeta)*q^799 + (48*zeta^4 - 24)*q^800 + (-120*zeta^7 - 60*zeta^5 + 60*zeta^3 -
60*zeta)*q^801 + (72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^807 + 
(-240*zeta^4 + 120)*q^808 + (-180*zeta^7 - 90*zeta^5 + 90*zeta^3 - 
90*zeta)*q^809 + (288*zeta^4 - 144)*q^812 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 +
24*zeta)*q^815 + (96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 48*zeta)*q^817 + 
(96*zeta^4 - 48)*q^820 + (84*zeta^7 + 42*zeta^5 - 42*zeta^3 + 42*zeta)*q^823 + 
(-144*zeta^4 + 72)*q^824 + (-336*zeta^7 - 168*zeta^5 + 168*zeta^3 - 
168*zeta)*q^831 + (-384*zeta^4 + 192)*q^832 + (36*zeta^7 + 18*zeta^5 - 18*zeta^3
+ 18*zeta)*q^833 + (120*zeta^7 + 60*zeta^5 - 60*zeta^3 + 60*zeta)*q^839 + 
(192*zeta^4 - 96)*q^840 + (-42*zeta^7 - 21*zeta^5 + 21*zeta^3 - 21*zeta)*q^841 +
(480*zeta^4 - 240)*q^844 + (-132*zeta^7 - 66*zeta^5 + 66*zeta^3 - 66*zeta)*q^847
+ (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^849 + (576*zeta^4 - 288)*q^852
+ (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^855 + (-288*zeta^4 + 
144)*q^856 + (108*zeta^7 + 54*zeta^5 - 54*zeta^3 + 54*zeta)*q^857 + (144*zeta^7 
+ 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^863 + (96*zeta^4 - 48)*q^864 + (-72*zeta^7 
- 36*zeta^5 + 36*zeta^3 - 36*zeta)*q^865 + (-288*zeta^7 - 144*zeta^5 + 
144*zeta^3 - 144*zeta)*q^871 + (96*zeta^4 - 48)*q^872 + (-24*zeta^7 - 12*zeta^5 
+ 12*zeta^3 - 12*zeta)*q^873 + (-288*zeta^4 + 144)*q^876 + (-72*zeta^7 - 
36*zeta^5 + 36*zeta^3 - 36*zeta)*q^879 + (12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 
6*zeta)*q^881 + (192*zeta^4 - 96)*q^884 + (288*zeta^7 + 144*zeta^5 - 144*zeta^3 
+ 144*zeta)*q^887 + (-384*zeta^4 + 192)*q^888 + (24*zeta^7 + 12*zeta^5 - 
12*zeta^3 + 12*zeta)*q^889 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 
24*zeta)*q^895 + (192*zeta^4 - 96)*q^896 + (192*zeta^7 + 96*zeta^5 - 96*zeta^3 +
96*zeta)*q^897 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^903 + 
(-144*zeta^4 + 72)*q^904 + (240*zeta^7 + 120*zeta^5 - 120*zeta^3 + 
120*zeta)*q^905 + (192*zeta^4 - 96)*q^908 + (-288*zeta^7 - 144*zeta^5 + 
144*zeta^3 - 144*zeta)*q^911 + (384*zeta^4 - 192)*q^912 + (96*zeta^4 - 48)*q^916
+ (180*zeta^7 + 90*zeta^5 - 90*zeta^3 + 90*zeta)*q^919 + (192*zeta^4 - 96)*q^920
+ (144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^921 + (-72*zeta^7 - 36*zeta^5
+ 36*zeta^3 - 36*zeta)*q^927 + (288*zeta^4 - 144)*q^928 + (-300*zeta^7 - 
150*zeta^5 + 150*zeta^3 - 150*zeta)*q^929 + (-192*zeta^4 + 96)*q^936 + 
(228*zeta^7 + 114*zeta^5 - 114*zeta^3 + 114*zeta)*q^937 + (-576*zeta^4 + 
288)*q^940 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^943 + (-48*zeta^7 -
24*zeta^5 + 24*zeta^3 - 24*zeta)*q^945 + (480*zeta^4 - 240)*q^948 + (264*zeta^7 
+ 132*zeta^5 - 132*zeta^3 + 132*zeta)*q^951 + (96*zeta^4 - 48)*q^952 + 
(-36*zeta^7 - 18*zeta^5 + 18*zeta^3 - 18*zeta)*q^953 + (-216*zeta^7 - 108*zeta^5
+ 108*zeta^3 - 108*zeta)*q^959 + (-162*zeta^7 - 81*zeta^5 + 81*zeta^3 - 
81*zeta)*q^961 + (-132*zeta^7 - 66*zeta^5 + 66*zeta^3 - 66*zeta)*q^967 + 
(264*zeta^4 - 132)*q^968 + (96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 48*zeta)*q^969 +
(48*zeta^4 - 24)*q^972 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^975 + 
(-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^977 + (-144*zeta^4 + 72)*q^980 + 
(-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^983 + (96*zeta^4 - 48)*q^984 + 
(24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^985 + (12*zeta^7 + 6*zeta^5 - 
6*zeta^3 + 6*zeta)*q^991 + (96*zeta^4 - 48)*q^992 + (-240*zeta^7 - 120*zeta^5 + 
120*zeta^3 - 120*zeta)*q^993 + (96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 
48*zeta)*q^999 + (288*zeta^4 - 144)*q^1000 + (-144*zeta^7 - 72*zeta^5 + 
72*zeta^3 - 72*zeta)*q^1007 + (192*zeta^4 - 96)*q^1008 + (180*zeta^7 + 90*zeta^5
- 90*zeta^3 + 90*zeta)*q^1009 + (-144*zeta^7 - 72*zeta^5 + 72*zeta^3 - 
72*zeta)*q^1015 + (-48*zeta^4 + 24)*q^1016 + (-72*zeta^7 - 36*zeta^5 + 36*zeta^3
- 36*zeta)*q^1017 + (12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 6*zeta)*q^1025 + 
(192*zeta^7 + 96*zeta^5 - 96*zeta^3 + 96*zeta)*q^1031 + (192*zeta^4 - 96)*q^1032
+ (-156*zeta^7 - 78*zeta^5 + 78*zeta^3 - 78*zeta)*q^1033 + (-384*zeta^4 + 
192)*q^1036 + (60*zeta^7 + 30*zeta^5 - 30*zeta^3 + 30*zeta)*q^1039 + 
(-384*zeta^4 + 192)*q^1040 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 
48*zeta)*q^1041 + (-288*zeta^4 + 144)*q^1044 + (192*zeta^7 + 96*zeta^5 - 
96*zeta^3 + 96*zeta)*q^1047 + (-480*zeta^4 + 240)*q^1048 + (180*zeta^7 + 
90*zeta^5 - 90*zeta^3 + 90*zeta)*q^1049 + (-240*zeta^7 - 120*zeta^5 + 120*zeta^3
- 120*zeta)*q^1055 + (216*zeta^7 + 108*zeta^5 - 108*zeta^3 + 108*zeta)*q^1057 + 
(204*zeta^7 + 102*zeta^5 - 102*zeta^3 + 102*zeta)*q^1063 + (-192*zeta^4 + 
96)*q^1064 + (-288*zeta^7 - 144*zeta^5 + 144*zeta^3 - 144*zeta)*q^1065 + 
(-480*zeta^4 + 240)*q^1068 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 
24*zeta)*q^1071 + (288*zeta^7 + 144*zeta^5 - 144*zeta^3 + 144*zeta)*q^1073 + 
(-144*zeta^4 + 72)*q^1076 + (384*zeta^7 + 192*zeta^5 - 192*zeta^3 + 
192*zeta)*q^1079 + (96*zeta^4 - 48)*q^1080 + (-288*zeta^7 - 144*zeta^5 + 
144*zeta^3 - 144*zeta)*q^1081 + (348*zeta^7 + 174*zeta^5 - 174*zeta^3 + 
174*zeta)*q^1087 + (132*zeta^7 + 66*zeta^5 - 66*zeta^3 + 66*zeta)*q^1089 + 
(144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^1095 + (432*zeta^4 - 
216)*q^1096 + (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^1097 + (144*zeta^7 +
72*zeta^5 - 72*zeta^3 + 72*zeta)*q^1103 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 
48*zeta)*q^1105 + (672*zeta^4 - 336)*q^1108 + (96*zeta^4 - 48)*q^1112 + 
(144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^1113 + (-192*zeta^7 - 96*zeta^5
+ 96*zeta^3 - 96*zeta)*q^1119 + (192*zeta^4 - 96)*q^1120 + (-96*zeta^7 - 
48*zeta^5 + 48*zeta^3 - 48*zeta)*q^1121 + (-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 
36*zeta)*q^1127 + (-576*zeta^4 + 288)*q^1128 + (-60*zeta^7 - 30*zeta^5 + 
30*zeta^3 - 30*zeta)*q^1129 + (-96*zeta^4 + 48)*q^1132 + (-96*zeta^7 - 48*zeta^5
+ 48*zeta^3 - 48*zeta)*q^1135 + (-576*zeta^4 + 288)*q^1136 + (-48*zeta^7 - 
24*zeta^5 + 24*zeta^3 - 24*zeta)*q^1137 + (-384*zeta^4 + 192)*q^1140 + 
(-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^1143 + (-48*zeta^7 - 24*zeta^5 
+ 24*zeta^3 - 24*zeta)*q^1145 + (-288*zeta^7 - 144*zeta^5 + 144*zeta^3 - 
144*zeta)*q^1151 + (-192*zeta^4 + 96)*q^1152 + (-276*zeta^7 - 138*zeta^5 + 
138*zeta^3 - 138*zeta)*q^1153 + (288*zeta^4 - 144)*q^1160 + (-48*zeta^7 - 
24*zeta^5 + 24*zeta^3 - 24*zeta)*q^1161 + (-96*zeta^4 + 48)*q^1164 + 
(-408*zeta^7 - 204*zeta^5 + 204*zeta^3 - 204*zeta)*q^1167 + (288*zeta^4 - 
144)*q^1168 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^1169 + 
(144*zeta^4 - 72)*q^1172 + (-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 36*zeta)*q^1175
+ (-144*zeta^4 + 72)*q^1176 + (36*zeta^7 + 18*zeta^5 - 18*zeta^3 + 
18*zeta)*q^1183 + (-384*zeta^4 + 192)*q^1184 + (-240*zeta^7 - 120*zeta^5 + 
120*zeta^3 - 120*zeta)*q^1185 + (384*zeta^7 + 192*zeta^5 - 192*zeta^3 + 
192*zeta)*q^1191 + (-144*zeta^4 + 72)*q^1192 + (-396*zeta^7 - 198*zeta^5 + 
198*zeta^3 - 198*zeta)*q^1193 + (-384*zeta^4 + 192)*q^1196 + (-348*zeta^7 - 
174*zeta^5 + 174*zeta^3 - 174*zeta)*q^1201 + (192*zeta^4 - 96)*q^1204 + 
(-144*zeta^7 - 72*zeta^5 + 72*zeta^3 - 72*zeta)*q^1207 + (-432*zeta^4 + 
216)*q^1208 + (96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 48*zeta)*q^1209 + (-24*zeta^7
- 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^1215 + (384*zeta^4 - 192)*q^1216 + 
(348*zeta^7 + 174*zeta^5 - 174*zeta^3 + 174*zeta)*q^1217 + (144*zeta^7 + 
72*zeta^5 - 72*zeta^3 + 72*zeta)*q^1223 + (-96*zeta^4 + 48)*q^1224 + (-18*zeta^7
- 9*zeta^5 + 9*zeta^3 - 9*zeta)*q^1225 + (-288*zeta^4 + 144)*q^1228 + 
(372*zeta^7 + 186*zeta^5 - 186*zeta^3 + 186*zeta)*q^1231 + (216*zeta^7 + 
108*zeta^5 - 108*zeta^3 + 108*zeta)*q^1233 + (-288*zeta^4 + 144)*q^1236 + 
(96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 48*zeta)*q^1239 + (96*zeta^4 - 48)*q^1240 +
(72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^1241 + (-144*zeta^7 - 72*zeta^5 
+ 72*zeta^3 - 72*zeta)*q^1247 + (384*zeta^4 - 192)*q^1248 + (180*zeta^7 + 
90*zeta^5 - 90*zeta^3 + 90*zeta)*q^1249 + (192*zeta^4 - 96)*q^1256 + 
(-288*zeta^7 - 144*zeta^5 + 144*zeta^3 - 144*zeta)*q^1257 + (-192*zeta^4 + 
96)*q^1260 + (240*zeta^7 + 120*zeta^5 - 120*zeta^3 + 120*zeta)*q^1263 + 
(-480*zeta^4 + 240)*q^1264 + (-528*zeta^4 + 264)*q^1268 + (24*zeta^7 + 12*zeta^5
- 12*zeta^3 + 12*zeta)*q^1271 + (-288*zeta^4 + 144)*q^1272 + (288*zeta^7 + 
144*zeta^5 - 144*zeta^3 + 144*zeta)*q^1273 + (-60*zeta^7 - 30*zeta^5 + 30*zeta^3
- 30*zeta)*q^1279 + (-192*zeta^4 + 96)*q^1288 + (180*zeta^7 + 90*zeta^5 - 
90*zeta^3 + 90*zeta)*q^1289 + (-192*zeta^4 + 96)*q^1292 + (192*zeta^7 + 
96*zeta^5 - 96*zeta^3 + 96*zeta)*q^1295 + (96*zeta^4 - 48)*q^1296 + (348*zeta^7 
+ 174*zeta^5 - 174*zeta^3 + 174*zeta)*q^1297 + (-96*zeta^4 + 48)*q^1300 + 
(-276*zeta^7 - 138*zeta^5 + 138*zeta^3 - 138*zeta)*q^1303 + (-96*zeta^4 + 
48)*q^1304 + (144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^1305 + 
(-192*zeta^7 - 96*zeta^5 + 96*zeta^3 - 96*zeta)*q^1311 + (96*zeta^4 - 48)*q^1312
+ (-240*zeta^7 - 120*zeta^5 + 120*zeta^3 - 120*zeta)*q^1313 + (120*zeta^7 + 
60*zeta^5 - 60*zeta^3 + 60*zeta)*q^1319 + (252*zeta^7 + 126*zeta^5 - 126*zeta^3 
+ 126*zeta)*q^1321 + (480*zeta^4 - 240)*q^1324 + (-132*zeta^7 - 66*zeta^5 + 
66*zeta^3 - 66*zeta)*q^1327 + (288*zeta^7 + 144*zeta^5 - 144*zeta^3 + 
144*zeta)*q^1329 + (384*zeta^4 - 192)*q^1332 + (240*zeta^7 + 120*zeta^5 - 
120*zeta^3 + 120*zeta)*q^1335 + (192*zeta^4 - 96)*q^1336 + (96*zeta^7 + 
48*zeta^5 - 48*zeta^3 + 48*zeta)*q^1337 + (-120*zeta^7 - 60*zeta^5 + 60*zeta^3 -
60*zeta)*q^1343 + (-384*zeta^4 + 192)*q^1344 + (72*zeta^7 + 36*zeta^5 - 
36*zeta^3 + 36*zeta)*q^1345 + (72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 
36*zeta)*q^1351 + (-72*zeta^4 + 36)*q^1352 + (-288*zeta^4 + 144)*q^1356 + 
(-216*zeta^7 - 108*zeta^5 + 108*zeta^3 - 108*zeta)*q^1359 + (132*zeta^7 + 
66*zeta^5 - 66*zeta^3 + 66*zeta)*q^1361 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 
24*zeta)*q^1367 + (192*zeta^4 - 96)*q^1368 + (-162*zeta^7 - 81*zeta^5 + 
81*zeta^3 - 81*zeta)*q^1369 + (192*zeta^4 - 96)*q^1376 + (24*zeta^7 + 12*zeta^5 
- 12*zeta^3 + 12*zeta)*q^1377 + (-360*zeta^7 - 180*zeta^5 + 180*zeta^3 - 
180*zeta)*q^1383 + (144*zeta^4 - 72)*q^1384 + (-336*zeta^7 - 168*zeta^5 + 
168*zeta^3 - 168*zeta)*q^1385 + (192*zeta^4 - 96)*q^1388 + (-288*zeta^7 - 
144*zeta^5 + 144*zeta^3 - 144*zeta)*q^1391 + (-576*zeta^4 + 288)*q^1392 + 
(-120*zeta^7 - 60*zeta^5 + 60*zeta^3 - 60*zeta)*q^1393 + (-384*zeta^4 + 
192)*q^1396 + (-180*zeta^7 - 90*zeta^5 + 90*zeta^3 - 90*zeta)*q^1399 + 
(-48*zeta^4 + 24)*q^1400 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^1401
+ (-288*zeta^7 - 144*zeta^5 + 144*zeta^3 - 144*zeta)*q^1407 + (-60*zeta^7 - 
30*zeta^5 + 30*zeta^3 - 30*zeta)*q^1409 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 
24*zeta)*q^1415 + (-192*zeta^4 + 96)*q^1416 + (96*zeta^7 + 48*zeta^5 - 48*zeta^3
+ 48*zeta)*q^1417 + (576*zeta^4 - 288)*q^1420 + (-156*zeta^7 - 78*zeta^5 + 
78*zeta^3 - 78*zeta)*q^1423 + (480*zeta^4 - 240)*q^1424 + (-48*zeta^7 - 
24*zeta^5 + 24*zeta^3 - 24*zeta)*q^1425 + (192*zeta^4 - 96)*q^1428 + (72*zeta^7 
+ 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^1431 + (96*zeta^4 - 48)*q^1432 + 
(324*zeta^7 + 162*zeta^5 - 162*zeta^3 + 162*zeta)*q^1433 + (120*zeta^7 + 
60*zeta^5 - 60*zeta^3 + 60*zeta)*q^1439 + (-192*zeta^4 + 96)*q^1440 + 
(-372*zeta^7 - 186*zeta^5 + 186*zeta^3 - 186*zeta)*q^1447 + (-480*zeta^4 + 
240)*q^1448 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^1449 + 
(528*zeta^4 - 264)*q^1452 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^1455
+ (-144*zeta^7 - 72*zeta^5 + 72*zeta^3 - 72*zeta)*q^1457 + (-288*zeta^4 + 
144)*q^1460 + (-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 36*zeta)*q^1465 + 
(132*zeta^7 + 66*zeta^5 - 66*zeta^3 + 66*zeta)*q^1471 + (240*zeta^7 + 120*zeta^5
- 120*zeta^3 + 120*zeta)*q^1473 + (-144*zeta^7 - 72*zeta^5 + 72*zeta^3 - 
72*zeta)*q^1479 + (-384*zeta^4 + 192)*q^1480 + (-108*zeta^7 - 54*zeta^5 + 
54*zeta^3 - 54*zeta)*q^1481 + (-288*zeta^4 + 144)*q^1484 + (-72*zeta^7 - 
36*zeta^5 + 36*zeta^3 - 36*zeta)*q^1487 + (-300*zeta^7 - 150*zeta^5 + 150*zeta^3
- 150*zeta)*q^1489 + (384*zeta^4 - 192)*q^1492 + (192*zeta^7 + 96*zeta^5 - 
96*zeta^3 + 96*zeta)*q^1495 + (432*zeta^7 + 216*zeta^5 - 216*zeta^3 + 
216*zeta)*q^1497 + (96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 48*zeta)*q^1503 + 
(-576*zeta^4 + 288)*q^1504 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 
48*zeta)*q^1505 + (312*zeta^7 + 156*zeta^5 - 156*zeta^3 + 156*zeta)*q^1511 + 
(96*zeta^4 - 48)*q^1512 + (120*zeta^7 + 60*zeta^5 - 60*zeta^3 + 60*zeta)*q^1513 
+ (96*zeta^4 - 48)*q^1516 + (-36*zeta^7 - 18*zeta^5 + 18*zeta^3 - 
18*zeta)*q^1519 + (384*zeta^4 - 192)*q^1520 + (-36*zeta^7 - 18*zeta^5 + 
18*zeta^3 - 18*zeta)*q^1521 + (-96*zeta^4 + 48)*q^1524 + (72*zeta^7 + 36*zeta^5 
- 36*zeta^3 + 36*zeta)*q^1527 + (-192*zeta^4 + 96)*q^1528 + (144*zeta^7 + 
72*zeta^5 - 72*zeta^3 + 72*zeta)*q^1535 + (384*zeta^4 - 192)*q^1536 + 
(216*zeta^7 + 108*zeta^5 - 108*zeta^3 + 108*zeta)*q^1537 + (324*zeta^7 + 
162*zeta^5 - 162*zeta^3 + 162*zeta)*q^1543 + (-144*zeta^4 + 72)*q^1544 + 
(144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^1545 + (-192*zeta^4 + 
96)*q^1548 + (96*zeta^4 - 48)*q^1552 + (-36*zeta^7 - 18*zeta^5 + 18*zeta^3 - 
18*zeta)*q^1553 + (816*zeta^4 - 408)*q^1556 + (120*zeta^7 + 60*zeta^5 - 
60*zeta^3 + 60*zeta)*q^1559 + (384*zeta^4 - 192)*q^1560 + (-168*zeta^7 - 
84*zeta^5 + 84*zeta^3 - 84*zeta)*q^1561 + (-132*zeta^7 - 66*zeta^5 + 66*zeta^3 -
66*zeta)*q^1567 + (-144*zeta^4 + 72)*q^1568 + (-432*zeta^7 - 216*zeta^5 + 
216*zeta^3 - 216*zeta)*q^1569 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 
12*zeta)*q^1575 + (-48*zeta^4 + 24)*q^1576 + (-384*zeta^7 - 192*zeta^5 + 
192*zeta^3 - 192*zeta)*q^1577 + (480*zeta^4 - 240)*q^1580 + (144*zeta^7 + 
72*zeta^5 - 72*zeta^3 + 72*zeta)*q^1583 + (264*zeta^7 + 132*zeta^5 - 132*zeta^3 
+ 132*zeta)*q^1585 + (-768*zeta^4 + 384)*q^1588 + (192*zeta^7 + 96*zeta^5 - 
96*zeta^3 + 96*zeta)*q^1591 + (240*zeta^4 - 120)*q^1592 + (48*zeta^7 + 24*zeta^5
- 24*zeta^3 + 24*zeta)*q^1593 + (96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 
48*zeta)*q^1599 + (252*zeta^7 + 126*zeta^5 - 126*zeta^3 + 126*zeta)*q^1601 + 
(-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 36*zeta)*q^1607 + O(q^1608), (6*zeta^7 + 
3*zeta^5 - 3*zeta^3 + 3*zeta)*q^3 + (12*zeta^4 - 6)*q^4 + (6*zeta^7 + 3*zeta^5 -
3*zeta^3 + 3*zeta)*q^5 + (12*zeta^4 - 6)*q^8 + (-12*zeta^7 - 6*zeta^5 + 6*zeta^3
- 6*zeta)*q^13 + (12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 6*zeta)*q^19 + (-12*zeta^7 -
6*zeta^5 + 6*zeta^3 - 6*zeta)*q^21 + (-24*zeta^4 + 12)*q^24 + (-6*zeta^7 - 
3*zeta^5 + 3*zeta^3 - 3*zeta)*q^27 + (-24*zeta^4 + 12)*q^28 + (-18*zeta^7 - 
9*zeta^5 + 9*zeta^3 - 9*zeta)*q^29 + (-24*zeta^4 + 12)*q^32 + (-12*zeta^7 - 
6*zeta^5 + 6*zeta^3 - 6*zeta)*q^35 + (24*zeta^4 - 12)*q^36 + (24*zeta^7 + 
12*zeta^5 - 12*zeta^3 + 12*zeta)*q^37 + (-24*zeta^4 + 12)*q^40 + (-12*zeta^7 - 
6*zeta^5 + 6*zeta^3 - 6*zeta)*q^43 + (12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 
6*zeta)*q^45 + (48*zeta^4 - 24)*q^48 + (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 
6*zeta)*q^51 + (18*zeta^7 + 9*zeta^5 - 9*zeta^3 + 9*zeta)*q^53 + (-24*zeta^4 + 
12)*q^56 + (12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 6*zeta)*q^59 + (-48*zeta^4 + 
24)*q^60 + (48*zeta^4 - 24)*q^64 + (-36*zeta^7 - 18*zeta^5 + 18*zeta^3 - 
18*zeta)*q^67 + (-24*zeta^4 + 12)*q^68 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 
12*zeta)*q^69 + (24*zeta^4 - 12)*q^72 + (6*zeta^7 + 3*zeta^5 - 3*zeta^3 + 
3*zeta)*q^75 + (48*zeta^4 - 24)*q^80 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 
24*zeta)*q^83 + (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^85 + (24*zeta^7 + 
12*zeta^5 - 12*zeta^3 + 12*zeta)*q^91 + (48*zeta^4 - 24)*q^92 + (12*zeta^7 + 
6*zeta^5 - 6*zeta^3 + 6*zeta)*q^93 + (-48*zeta^4 + 24)*q^96 + (12*zeta^4 - 
6)*q^100 + (-30*zeta^7 - 15*zeta^5 + 15*zeta^3 - 15*zeta)*q^101 + (48*zeta^4 - 
24)*q^104 + (-36*zeta^7 - 18*zeta^5 + 18*zeta^3 - 18*zeta)*q^107 + (12*zeta^7 + 
6*zeta^5 - 6*zeta^3 + 6*zeta)*q^109 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 
12*zeta)*q^115 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^117 + 
(-48*zeta^4 + 24)*q^120 + (12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 6*zeta)*q^123 + 
(24*zeta^4 - 12)*q^124 + (36*zeta^7 + 18*zeta^5 - 18*zeta^3 + 18*zeta)*q^125 + 
(-48*zeta^4 + 24)*q^128 + (-60*zeta^7 - 30*zeta^5 + 30*zeta^3 - 30*zeta)*q^131 +
(-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^133 + (-24*zeta^4 + 12)*q^136 +
(12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 6*zeta)*q^139 + (-72*zeta^7 - 36*zeta^5 + 
36*zeta^3 - 36*zeta)*q^141 + (-18*zeta^7 - 9*zeta^5 + 9*zeta^3 - 9*zeta)*q^147 +
(-18*zeta^7 - 9*zeta^5 + 9*zeta^3 - 9*zeta)*q^149 + (-48*zeta^4 + 24)*q^152 + 
(12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 6*zeta)*q^155 + (96*zeta^4 - 48)*q^156 + 
(24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^157 + (-48*zeta^4 + 24)*q^160 + 
(-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^163 + (24*zeta^4 - 12)*q^164 + 
(48*zeta^4 - 24)*q^168 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^171 + 
(18*zeta^7 + 9*zeta^5 - 9*zeta^3 + 9*zeta)*q^173 + (12*zeta^7 + 6*zeta^5 - 
6*zeta^3 + 6*zeta)*q^179 + (-60*zeta^7 - 30*zeta^5 + 30*zeta^3 - 30*zeta)*q^181 
+ (48*zeta^4 - 24)*q^184 + (-144*zeta^4 + 72)*q^188 + (12*zeta^7 + 6*zeta^5 - 
6*zeta^3 + 6*zeta)*q^189 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^195 +
(-36*zeta^4 + 18)*q^196 + (-6*zeta^7 - 3*zeta^5 + 3*zeta^3 - 3*zeta)*q^197 + 
(12*zeta^4 - 6)*q^200 + (36*zeta^7 + 18*zeta^5 - 18*zeta^3 + 18*zeta)*q^203 + 
(12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 6*zeta)*q^205 + (-96*zeta^4 + 48)*q^208 + 
(60*zeta^7 + 30*zeta^5 - 30*zeta^3 + 30*zeta)*q^211 + (72*zeta^7 + 36*zeta^5 - 
36*zeta^3 + 36*zeta)*q^213 + (24*zeta^4 - 12)*q^216 + (-36*zeta^7 - 18*zeta^5 + 
18*zeta^3 - 18*zeta)*q^219 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^221
+ (48*zeta^4 - 24)*q^224 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^227 +
(-96*zeta^4 + 48)*q^228 + (12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 6*zeta)*q^229 + 
(72*zeta^4 - 36)*q^232 + (-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 36*zeta)*q^235 + 
(60*zeta^7 + 30*zeta^5 - 30*zeta^3 + 30*zeta)*q^237 + (6*zeta^7 + 3*zeta^5 - 
3*zeta^3 + 3*zeta)*q^243 + (-18*zeta^7 - 9*zeta^5 + 9*zeta^3 - 9*zeta)*q^245 + 
(24*zeta^4 - 12)*q^248 + (-48*zeta^4 + 24)*q^252 + (-48*zeta^7 - 24*zeta^5 + 
24*zeta^3 - 24*zeta)*q^259 + (96*zeta^4 - 48)*q^260 + (-36*zeta^7 - 18*zeta^5 + 
18*zeta^3 - 18*zeta)*q^261 + (-60*zeta^7 - 30*zeta^5 + 30*zeta^3 - 
30*zeta)*q^267 + (-18*zeta^7 - 9*zeta^5 + 9*zeta^3 - 9*zeta)*q^269 + (84*zeta^7 
+ 42*zeta^5 - 42*zeta^3 + 42*zeta)*q^277 + (48*zeta^4 - 24)*q^280 + (-12*zeta^7 
- 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^283 + (144*zeta^4 - 72)*q^284 + (-48*zeta^7 - 
24*zeta^5 + 24*zeta^3 - 24*zeta)*q^285 + (-48*zeta^4 + 24)*q^288 + (-12*zeta^7 -
6*zeta^5 + 6*zeta^3 - 6*zeta)*q^291 + (-72*zeta^4 + 36)*q^292 + (18*zeta^7 + 
9*zeta^5 - 9*zeta^3 + 9*zeta)*q^293 + (-96*zeta^4 + 48)*q^296 + (-48*zeta^7 - 
24*zeta^5 + 24*zeta^3 - 24*zeta)*q^299 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 
12*zeta)*q^301 + (96*zeta^4 - 48)*q^304 + (-36*zeta^7 - 18*zeta^5 + 18*zeta^3 - 
18*zeta)*q^307 + (-36*zeta^7 - 18*zeta^5 + 18*zeta^3 - 18*zeta)*q^309 + 
(96*zeta^4 - 48)*q^312 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^315 + 
(120*zeta^4 - 60)*q^316 + (-66*zeta^7 - 33*zeta^5 + 33*zeta^3 - 33*zeta)*q^317 +
(-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^323 + (-24*zeta^4 + 12)*q^324 +
(-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^325 + (24*zeta^4 - 12)*q^328 + 
(60*zeta^7 + 30*zeta^5 - 30*zeta^3 + 30*zeta)*q^331 + (48*zeta^7 + 24*zeta^5 - 
24*zeta^3 + 24*zeta)*q^333 + (-96*zeta^4 + 48)*q^336 + (-36*zeta^7 - 18*zeta^5 +
18*zeta^3 - 18*zeta)*q^339 + (48*zeta^4 - 24)*q^344 + (24*zeta^7 + 12*zeta^5 - 
12*zeta^3 + 12*zeta)*q^347 + (144*zeta^4 - 72)*q^348 + (-48*zeta^7 - 24*zeta^5 +
24*zeta^3 - 24*zeta)*q^349 + (72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^355
+ (-120*zeta^4 + 60)*q^356 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^357
+ (-48*zeta^4 + 24)*q^360 + (66*zeta^7 + 33*zeta^5 - 33*zeta^3 + 33*zeta)*q^363 
+ (-36*zeta^7 - 18*zeta^5 + 18*zeta^3 - 18*zeta)*q^365 + (-36*zeta^7 - 18*zeta^5
+ 18*zeta^3 - 18*zeta)*q^371 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 
24*zeta)*q^373 + (-144*zeta^4 + 72)*q^376 + (12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 
6*zeta)*q^379 + (-96*zeta^4 + 48)*q^380 + (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 
6*zeta)*q^381 + (96*zeta^4 - 48)*q^384 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 
12*zeta)*q^387 + (-24*zeta^4 + 12)*q^388 + (102*zeta^7 + 51*zeta^5 - 51*zeta^3 +
51*zeta)*q^389 + (-36*zeta^4 + 18)*q^392 + (60*zeta^7 + 30*zeta^5 - 30*zeta^3 + 
30*zeta)*q^395 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^397 + 
(-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^403 + (-12*zeta^7 - 6*zeta^5 + 
6*zeta^3 - 6*zeta)*q^405 + (48*zeta^4 - 24)*q^408 + (108*zeta^7 + 54*zeta^5 - 
54*zeta^3 + 54*zeta)*q^411 + (-72*zeta^4 + 36)*q^412 + (-24*zeta^7 - 12*zeta^5 +
12*zeta^3 - 12*zeta)*q^413 + (96*zeta^4 - 48)*q^416 + (72*zeta^7 + 36*zeta^5 - 
36*zeta^3 + 36*zeta)*q^419 + (96*zeta^4 - 48)*q^420 + (-60*zeta^7 - 30*zeta^5 + 
30*zeta^3 - 30*zeta)*q^421 + (-72*zeta^4 + 36)*q^424 + (-48*zeta^4 + 24)*q^432 +
(72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^435 + (48*zeta^7 + 24*zeta^5 - 
24*zeta^3 + 24*zeta)*q^437 + (-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 
36*zeta)*q^443 + (-192*zeta^4 + 96)*q^444 + (-60*zeta^7 - 30*zeta^5 + 30*zeta^3 
- 30*zeta)*q^445 + (-96*zeta^4 + 48)*q^448 + (-72*zeta^4 + 36)*q^452 + 
(-108*zeta^7 - 54*zeta^5 + 54*zeta^3 - 54*zeta)*q^453 + (-96*zeta^4 + 48)*q^456 
+ (12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 6*zeta)*q^459 + (90*zeta^7 + 45*zeta^5 - 
45*zeta^3 + 45*zeta)*q^461 + (-144*zeta^4 + 72)*q^464 + (24*zeta^7 + 12*zeta^5 -
12*zeta^3 + 12*zeta)*q^467 + (72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^469
+ (-48*zeta^4 + 24)*q^472 + (12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 6*zeta)*q^475 + 
(48*zeta^4 - 24)*q^476 + (36*zeta^7 + 18*zeta^5 - 18*zeta^3 + 18*zeta)*q^477 + 
(96*zeta^4 - 48)*q^480 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^483 + 
(132*zeta^4 - 66)*q^484 + (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^485 + 
(-60*zeta^7 - 30*zeta^5 + 30*zeta^3 - 30*zeta)*q^491 + (36*zeta^7 + 18*zeta^5 - 
18*zeta^3 + 18*zeta)*q^493 + (-108*zeta^7 - 54*zeta^5 + 54*zeta^3 - 
54*zeta)*q^499 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^501 + 
(-48*zeta^4 + 24)*q^504 + (-18*zeta^7 - 9*zeta^5 + 9*zeta^3 - 9*zeta)*q^507 + 
(-24*zeta^4 + 12)*q^508 + (-18*zeta^7 - 9*zeta^5 + 9*zeta^3 - 9*zeta)*q^509 + 
(96*zeta^4 - 48)*q^512 + (-36*zeta^7 - 18*zeta^5 + 18*zeta^3 - 18*zeta)*q^515 + 
(96*zeta^4 - 48)*q^516 + (96*zeta^4 - 48)*q^520 + (108*zeta^7 + 54*zeta^5 - 
54*zeta^3 + 54*zeta)*q^523 + (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^525 +
(24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^531 + (-24*zeta^7 - 12*zeta^5 + 
12*zeta^3 - 12*zeta)*q^533 + (144*zeta^4 - 72)*q^536 + (48*zeta^4 - 24)*q^540 + 
(60*zeta^7 + 30*zeta^5 - 30*zeta^3 + 30*zeta)*q^541 + (48*zeta^4 - 24)*q^544 + 
(84*zeta^7 + 42*zeta^5 - 42*zeta^3 + 42*zeta)*q^547 + (216*zeta^4 - 108)*q^548 +
(-96*zeta^4 + 48)*q^552 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^555 +
(-126*zeta^7 - 63*zeta^5 + 63*zeta^3 - 63*zeta)*q^557 + (-96*zeta^4 + 48)*q^560 
+ (-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 36*zeta)*q^563 + (-36*zeta^7 - 18*zeta^5
+ 18*zeta^3 - 18*zeta)*q^565 + (144*zeta^4 - 72)*q^568 + (-60*zeta^7 - 30*zeta^5
+ 30*zeta^3 - 30*zeta)*q^571 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 
24*zeta)*q^573 + (96*zeta^4 - 48)*q^576 + (-36*zeta^7 - 18*zeta^5 + 18*zeta^3 - 
18*zeta)*q^579 + (144*zeta^4 - 72)*q^580 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 -
48*zeta)*q^581 + (-72*zeta^4 + 36)*q^584 + (84*zeta^7 + 42*zeta^5 - 42*zeta^3 + 
42*zeta)*q^587 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^589 + 
(192*zeta^4 - 96)*q^592 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^595 + 
(60*zeta^7 + 30*zeta^5 - 30*zeta^3 + 30*zeta)*q^597 + (-24*zeta^4 + 12)*q^600 + 
(-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 36*zeta)*q^603 + (-216*zeta^4 + 108)*q^604
+ (66*zeta^7 + 33*zeta^5 - 33*zeta^3 + 33*zeta)*q^605 + (-96*zeta^4 + 48)*q^608 
+ (144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^611 + (-48*zeta^4 + 24)*q^612
+ (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^613 + (-108*zeta^7 - 54*zeta^5
+ 54*zeta^3 - 54*zeta)*q^619 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 
12*zeta)*q^621 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^629 + 
(120*zeta^4 - 60)*q^632 + (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^635 + 
(-144*zeta^4 + 72)*q^636 + (36*zeta^7 + 18*zeta^5 - 18*zeta^3 + 18*zeta)*q^637 +
(96*zeta^4 - 48)*q^640 + (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^643 + 
(-96*zeta^4 + 48)*q^644 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^645 + 
(-24*zeta^4 + 12)*q^648 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^651 +
(18*zeta^7 + 9*zeta^5 - 9*zeta^3 + 9*zeta)*q^653 + (-108*zeta^7 - 54*zeta^5 + 
54*zeta^3 - 54*zeta)*q^659 + (-120*zeta^7 - 60*zeta^5 + 60*zeta^3 - 
60*zeta)*q^661 + (-192*zeta^4 + 96)*q^664 + (-72*zeta^7 - 36*zeta^5 + 36*zeta^3 
- 36*zeta)*q^667 + (96*zeta^4 - 48)*q^668 + (84*zeta^7 + 42*zeta^5 - 42*zeta^3 +
42*zeta)*q^669 + (96*zeta^4 - 48)*q^672 + (-6*zeta^7 - 3*zeta^5 + 3*zeta^3 - 
3*zeta)*q^675 + (-36*zeta^4 + 18)*q^676 + (54*zeta^7 + 27*zeta^5 - 27*zeta^3 + 
27*zeta)*q^677 + (48*zeta^4 - 24)*q^680 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 
24*zeta)*q^683 + (108*zeta^7 + 54*zeta^5 - 54*zeta^3 + 54*zeta)*q^685 + 
(-96*zeta^4 + 48)*q^688 + (-60*zeta^7 - 30*zeta^5 + 30*zeta^3 - 30*zeta)*q^691 +
(144*zeta^4 - 72)*q^696 + (84*zeta^7 + 42*zeta^5 - 42*zeta^3 + 42*zeta)*q^699 + 
(-24*zeta^4 + 12)*q^700 + (150*zeta^7 + 75*zeta^5 - 75*zeta^3 + 75*zeta)*q^701 +
(60*zeta^7 + 30*zeta^5 - 30*zeta^3 + 30*zeta)*q^707 + (-96*zeta^4 + 48)*q^708 + 
(12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 6*zeta)*q^709 + (-120*zeta^4 + 60)*q^712 + 
(96*zeta^4 - 48)*q^720 + (12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 6*zeta)*q^723 + 
(-18*zeta^7 - 9*zeta^5 + 9*zeta^3 - 9*zeta)*q^725 + (-96*zeta^4 + 48)*q^728 + 
(24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^731 + (-12*zeta^7 - 6*zeta^5 + 
6*zeta^3 - 6*zeta)*q^733 + (-96*zeta^4 + 48)*q^736 + (132*zeta^7 + 66*zeta^5 - 
66*zeta^3 + 66*zeta)*q^739 + (-192*zeta^4 + 96)*q^740 + (96*zeta^7 + 48*zeta^5 -
48*zeta^3 + 48*zeta)*q^741 + (-48*zeta^4 + 24)*q^744 + (96*zeta^7 + 48*zeta^5 - 
48*zeta^3 + 48*zeta)*q^747 + (72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^749
+ (-108*zeta^7 - 54*zeta^5 + 54*zeta^3 - 54*zeta)*q^755 + (-36*zeta^7 - 
18*zeta^5 + 18*zeta^3 - 18*zeta)*q^757 + (-96*zeta^4 + 48)*q^760 + (-24*zeta^7 -
12*zeta^5 + 12*zeta^3 - 12*zeta)*q^763 + (-96*zeta^4 + 48)*q^764 + (-24*zeta^7 -
12*zeta^5 + 12*zeta^3 - 12*zeta)*q^765 + (-192*zeta^4 + 96)*q^768 + (108*zeta^7 
+ 54*zeta^5 - 54*zeta^3 + 54*zeta)*q^771 + (-72*zeta^4 + 36)*q^772 + 
(-102*zeta^7 - 51*zeta^5 + 51*zeta^3 - 51*zeta)*q^773 + (-24*zeta^4 + 12)*q^776 
+ (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^779 + (-36*zeta^7 - 18*zeta^5 
+ 18*zeta^3 - 18*zeta)*q^787 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 
48*zeta)*q^789 + (-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 36*zeta)*q^795 + 
(120*zeta^4 - 60)*q^796 + (-6*zeta^7 - 3*zeta^5 + 3*zeta^3 - 3*zeta)*q^797 + 
(-24*zeta^4 + 12)*q^800 + (288*zeta^4 - 144)*q^804 + (-48*zeta^7 - 24*zeta^5 + 
24*zeta^3 - 24*zeta)*q^805 + (120*zeta^4 - 60)*q^808 + (60*zeta^7 + 30*zeta^5 - 
30*zeta^3 + 30*zeta)*q^811 + (-108*zeta^7 - 54*zeta^5 + 54*zeta^3 - 
54*zeta)*q^813 + (-96*zeta^4 + 48)*q^816 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 
24*zeta)*q^819 + (-30*zeta^7 - 15*zeta^5 + 15*zeta^3 - 15*zeta)*q^821 + 
(-72*zeta^4 + 36)*q^824 + (-36*zeta^7 - 18*zeta^5 + 18*zeta^3 - 18*zeta)*q^827 +
(96*zeta^4 - 48)*q^828 + (12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 6*zeta)*q^829 + 
(48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^835 + (-12*zeta^7 - 6*zeta^5 + 
6*zeta^3 - 6*zeta)*q^837 + (96*zeta^4 - 48)*q^840 + (-108*zeta^7 - 54*zeta^5 + 
54*zeta^3 - 54*zeta)*q^843 + (-18*zeta^7 - 9*zeta^5 + 9*zeta^3 - 9*zeta)*q^845 +
(144*zeta^4 - 72)*q^848 + (96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 48*zeta)*q^851 + 
(-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 36*zeta)*q^853 + (144*zeta^4 - 72)*q^856 +
(132*zeta^7 + 66*zeta^5 - 66*zeta^3 + 66*zeta)*q^859 + (96*zeta^4 - 48)*q^860 + 
(-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^861 + (48*zeta^4 - 24)*q^864 + 
(-78*zeta^7 - 39*zeta^5 + 39*zeta^3 - 39*zeta)*q^867 + (-48*zeta^4 + 24)*q^868 +
(-48*zeta^4 + 24)*q^872 + (-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 36*zeta)*q^875 +
(-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^877 + (-12*zeta^7 - 6*zeta^5 + 
6*zeta^3 - 6*zeta)*q^883 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^885 
+ (-192*zeta^4 + 96)*q^888 + (168*zeta^4 - 84)*q^892 + (-144*zeta^7 - 72*zeta^5 
+ 72*zeta^3 - 72*zeta)*q^893 + (96*zeta^4 - 48)*q^896 + (-36*zeta^7 - 18*zeta^5 
+ 18*zeta^3 - 18*zeta)*q^899 + (24*zeta^4 - 12)*q^900 + (-36*zeta^7 - 18*zeta^5 
+ 18*zeta^3 - 18*zeta)*q^901 + (-72*zeta^4 + 36)*q^904 + (84*zeta^7 + 42*zeta^5 
- 42*zeta^3 + 42*zeta)*q^907 + (-60*zeta^7 - 30*zeta^5 + 30*zeta^3 - 
30*zeta)*q^909 + (120*zeta^7 + 60*zeta^5 - 60*zeta^3 + 60*zeta)*q^917 + 
(-96*zeta^4 + 48)*q^920 + (-144*zeta^7 - 72*zeta^5 + 72*zeta^3 - 72*zeta)*q^923 
+ (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^925 + (144*zeta^4 - 72)*q^928 
+ (-36*zeta^7 - 18*zeta^5 + 18*zeta^3 - 18*zeta)*q^931 + (168*zeta^4 - 84)*q^932
+ (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^933 + (96*zeta^4 - 48)*q^936 
+ (84*zeta^7 + 42*zeta^5 - 42*zeta^3 + 42*zeta)*q^939 + (90*zeta^7 + 45*zeta^5 -
45*zeta^3 + 45*zeta)*q^941 + (96*zeta^4 - 48)*q^944 + (-36*zeta^7 - 18*zeta^5 + 
18*zeta^3 - 18*zeta)*q^947 + (72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^949
+ (48*zeta^4 - 24)*q^952 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^955 
+ (-192*zeta^4 + 96)*q^960 + (-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 
36*zeta)*q^963 + (24*zeta^4 - 12)*q^964 + (-36*zeta^7 - 18*zeta^5 + 18*zeta^3 - 
18*zeta)*q^965 + (132*zeta^4 - 66)*q^968 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 -
12*zeta)*q^973 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^981 + 
(-48*zeta^4 + 24)*q^984 + (144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^987 +
(192*zeta^4 - 96)*q^988 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^989 +
(-48*zeta^4 + 24)*q^992 + (60*zeta^7 + 30*zeta^5 - 30*zeta^3 + 30*zeta)*q^995 + 
(-384*zeta^4 + 192)*q^996 + (144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^997
+ (-144*zeta^4 + 72)*q^1000 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 
12*zeta)*q^1003 + (144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^1005 + 
(-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^1011 + (78*zeta^7 + 39*zeta^5 - 
39*zeta^3 + 39*zeta)*q^1013 + (-24*zeta^4 + 12)*q^1016 + (132*zeta^7 + 66*zeta^5
- 66*zeta^3 + 66*zeta)*q^1019 + (96*zeta^4 - 48)*q^1020 + (120*zeta^7 + 
60*zeta^5 - 60*zeta^3 + 60*zeta)*q^1021 + (-192*zeta^4 + 96)*q^1024 + 
(-120*zeta^7 - 60*zeta^5 + 60*zeta^3 - 60*zeta)*q^1027 + (216*zeta^4 - 
108)*q^1028 + (120*zeta^7 + 60*zeta^5 - 60*zeta^3 + 60*zeta)*q^1029 + (96*zeta^4
- 48)*q^1032 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^1035 + (36*zeta^7
+ 18*zeta^5 - 18*zeta^3 + 18*zeta)*q^1043 + (240*zeta^4 - 120)*q^1048 + 
(-60*zeta^7 - 30*zeta^5 + 30*zeta^3 - 30*zeta)*q^1051 + (-192*zeta^4 + 
96)*q^1052 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^1053 + (-36*zeta^7 
- 18*zeta^5 + 18*zeta^3 - 18*zeta)*q^1059 + (-144*zeta^4 + 72)*q^1060 + 
(30*zeta^7 + 15*zeta^5 - 15*zeta^3 + 15*zeta)*q^1061 + (96*zeta^4 - 48)*q^1064 +
(-168*zeta^7 - 84*zeta^5 + 84*zeta^3 - 84*zeta)*q^1069 + (-288*zeta^4 + 
144)*q^1072 + (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^1075 + (-120*zeta^7 
- 60*zeta^5 + 60*zeta^3 - 60*zeta)*q^1077 + (48*zeta^4 - 24)*q^1080 + (18*zeta^7
+ 9*zeta^5 - 9*zeta^3 + 9*zeta)*q^1083 + (-216*zeta^4 + 108)*q^1084 + 
(-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^1085 + (-96*zeta^4 + 48)*q^1088
+ (-192*zeta^4 + 96)*q^1092 + (108*zeta^7 + 54*zeta^5 - 54*zeta^3 + 
54*zeta)*q^1093 + (216*zeta^4 - 108)*q^1096 + (-48*zeta^7 - 24*zeta^5 + 
24*zeta^3 - 24*zeta)*q^1099 + (108*zeta^7 + 54*zeta^5 - 54*zeta^3 + 
54*zeta)*q^1101 + (192*zeta^4 - 96)*q^1104 + (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 -
6*zeta)*q^1107 + (-18*zeta^7 - 9*zeta^5 + 9*zeta^3 - 9*zeta)*q^1109 + 
(-48*zeta^4 + 24)*q^1112 + (84*zeta^7 + 42*zeta^5 - 42*zeta^3 + 42*zeta)*q^1115 
+ (48*zeta^4 - 24)*q^1116 + (-156*zeta^7 - 78*zeta^5 + 78*zeta^3 - 
78*zeta)*q^1117 + (96*zeta^4 - 48)*q^1120 + (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 
6*zeta)*q^1123 + (-216*zeta^4 + 108)*q^1124 + (72*zeta^7 + 36*zeta^5 - 36*zeta^3
+ 36*zeta)*q^1125 + (288*zeta^4 - 144)*q^1128 + (-144*zeta^7 - 72*zeta^5 + 
72*zeta^3 - 72*zeta)*q^1131 + (72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 
36*zeta)*q^1139 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^1141 + 
(48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^1147 + (-48*zeta^4 + 24)*q^1148 
+ (144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^1149 + (-96*zeta^4 + 
48)*q^1152 + (-156*zeta^4 + 78)*q^1156 + (120*zeta^7 + 60*zeta^5 - 60*zeta^3 + 
60*zeta)*q^1157 + (144*zeta^4 - 72)*q^1160 + (108*zeta^7 + 54*zeta^5 - 54*zeta^3
+ 54*zeta)*q^1163 + (84*zeta^7 + 42*zeta^5 - 42*zeta^3 + 42*zeta)*q^1165 + 
(-60*zeta^7 - 30*zeta^5 + 30*zeta^3 - 30*zeta)*q^1171 + (-48*zeta^7 - 24*zeta^5 
+ 24*zeta^3 - 24*zeta)*q^1173 + (72*zeta^4 - 36)*q^1176 + (-120*zeta^7 - 
60*zeta^5 + 60*zeta^3 - 60*zeta)*q^1179 + (-96*zeta^4 + 48)*q^1180 + 
(-150*zeta^7 - 75*zeta^5 + 75*zeta^3 - 75*zeta)*q^1181 + (-192*zeta^4 + 
96)*q^1184 + (-156*zeta^7 - 78*zeta^5 + 78*zeta^3 - 78*zeta)*q^1187 + 
(-36*zeta^7 - 18*zeta^5 + 18*zeta^3 - 18*zeta)*q^1189 + (72*zeta^4 - 36)*q^1192 
+ (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^1197 + (48*zeta^4 - 
24)*q^1200 + (-108*zeta^7 - 54*zeta^5 + 54*zeta^3 - 54*zeta)*q^1203 + (12*zeta^7
+ 6*zeta^5 - 6*zeta^3 + 6*zeta)*q^1205 + (-216*zeta^4 + 108)*q^1208 + 
(-36*zeta^7 - 18*zeta^5 + 18*zeta^3 - 18*zeta)*q^1211 + (240*zeta^4 - 
120)*q^1212 + (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^1213 + (72*zeta^7 + 
36*zeta^5 - 36*zeta^3 + 36*zeta)*q^1219 + (-48*zeta^4 + 24)*q^1224 + (60*zeta^7 
+ 30*zeta^5 - 30*zeta^3 + 30*zeta)*q^1227 + (-198*zeta^7 - 99*zeta^5 + 99*zeta^3
- 99*zeta)*q^1229 + (96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 48*zeta)*q^1235 + 
(84*zeta^7 + 42*zeta^5 - 42*zeta^3 + 42*zeta)*q^1237 + (-48*zeta^4 + 24)*q^1240 
+ (-96*zeta^4 + 48)*q^1244 + (-192*zeta^7 - 96*zeta^5 + 96*zeta^3 - 
96*zeta)*q^1245 + (-192*zeta^4 + 96)*q^1248 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3
+ 12*zeta)*q^1251 + (168*zeta^4 - 84)*q^1252 + (-24*zeta^7 - 12*zeta^5 + 
12*zeta^3 - 12*zeta)*q^1253 + (-96*zeta^4 + 48)*q^1256 + (-168*zeta^7 - 
84*zeta^5 + 84*zeta^3 - 84*zeta)*q^1259 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 
12*zeta)*q^1261 + (120*zeta^7 + 60*zeta^5 - 60*zeta^3 + 60*zeta)*q^1267 + 
(72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^1269 + (-144*zeta^4 + 72)*q^1272
+ (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^1275 + (54*zeta^7 + 27*zeta^5 - 
27*zeta^3 + 27*zeta)*q^1277 + (-192*zeta^4 + 96)*q^1280 + (-72*zeta^7 - 
36*zeta^5 + 36*zeta^3 - 36*zeta)*q^1283 + (288*zeta^4 - 144)*q^1284 + 
(108*zeta^7 + 54*zeta^5 - 54*zeta^3 + 54*zeta)*q^1285 + (-96*zeta^4 + 48)*q^1288
+ (-60*zeta^7 - 30*zeta^5 + 30*zeta^3 - 30*zeta)*q^1291 + (72*zeta^7 + 36*zeta^5
- 36*zeta^3 + 36*zeta)*q^1293 + (84*zeta^7 + 42*zeta^5 - 42*zeta^3 + 
42*zeta)*q^1299 + (-90*zeta^7 - 45*zeta^5 + 45*zeta^3 - 45*zeta)*q^1301 + 
(48*zeta^4 - 24)*q^1304 + (-36*zeta^7 - 18*zeta^5 + 18*zeta^3 - 18*zeta)*q^1307 
+ (-96*zeta^4 + 48)*q^1308 + (-48*zeta^4 + 24)*q^1312 + (-96*zeta^7 - 48*zeta^5 
+ 48*zeta^3 - 48*zeta)*q^1315 + (288*zeta^4 - 144)*q^1316 + (-180*zeta^7 - 
90*zeta^5 + 90*zeta^3 - 90*zeta)*q^1317 + (18*zeta^7 + 9*zeta^5 - 9*zeta^3 + 
9*zeta)*q^1323 + (18*zeta^7 + 9*zeta^5 - 9*zeta^3 + 9*zeta)*q^1325 + (384*zeta^4
- 192)*q^1328 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^1333 + 
(96*zeta^4 - 48)*q^1336 + (72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^1339 +
(288*zeta^4 - 144)*q^1340 + (-36*zeta^7 - 18*zeta^5 + 18*zeta^3 - 
18*zeta)*q^1341 + (180*zeta^7 + 90*zeta^5 - 90*zeta^3 + 90*zeta)*q^1347 + 
(-24*zeta^4 + 12)*q^1348 + (144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^1349
+ (-36*zeta^4 + 18)*q^1352 + (-108*zeta^7 - 54*zeta^5 + 54*zeta^3 - 
54*zeta)*q^1355 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^1357 + 
(-96*zeta^4 + 48)*q^1360 + (216*zeta^7 + 108*zeta^5 - 108*zeta^3 + 
108*zeta)*q^1363 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^1365 + 
(-96*zeta^4 + 48)*q^1368 + (-132*zeta^7 - 66*zeta^5 + 66*zeta^3 - 
66*zeta)*q^1371 + (240*zeta^4 - 120)*q^1372 + (138*zeta^7 + 69*zeta^5 - 
69*zeta^3 + 69*zeta)*q^1373 + (96*zeta^4 - 48)*q^1376 + (12*zeta^7 + 6*zeta^5 - 
6*zeta^3 + 6*zeta)*q^1379 + (-192*zeta^4 + 96)*q^1380 + (-60*zeta^7 - 30*zeta^5 
+ 30*zeta^3 - 30*zeta)*q^1381 + (-72*zeta^4 + 36)*q^1384 + (-72*zeta^7 - 
36*zeta^5 + 36*zeta^3 - 36*zeta)*q^1387 + (-156*zeta^7 - 78*zeta^5 + 78*zeta^3 -
78*zeta)*q^1389 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^1395 + 
(-24*zeta^4 + 12)*q^1400 + (-96*zeta^4 + 48)*q^1404 + (-108*zeta^7 - 54*zeta^5 +
54*zeta^3 - 54*zeta)*q^1405 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 
48*zeta)*q^1411 + (-72*zeta^4 + 36)*q^1412 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 
+ 24*zeta)*q^1413 + (-96*zeta^4 + 48)*q^1416 + (54*zeta^7 + 27*zeta^5 - 
27*zeta^3 + 27*zeta)*q^1421 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 
48*zeta)*q^1427 + (-168*zeta^7 - 84*zeta^5 + 84*zeta^3 - 84*zeta)*q^1429 + 
(-48*zeta^4 + 24)*q^1432 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^1435
+ (-240*zeta^4 + 120)*q^1436 + (120*zeta^7 + 60*zeta^5 - 60*zeta^3 + 
60*zeta)*q^1437 + (-96*zeta^4 + 48)*q^1440 + (192*zeta^7 + 96*zeta^5 - 96*zeta^3
+ 96*zeta)*q^1443 + (36*zeta^4 - 18)*q^1444 + (-78*zeta^7 - 39*zeta^5 + 
39*zeta^3 - 39*zeta)*q^1445 + (240*zeta^4 - 120)*q^1448 + (180*zeta^7 + 
90*zeta^5 - 90*zeta^3 + 90*zeta)*q^1451 + (-132*zeta^7 - 66*zeta^5 + 66*zeta^3 -
66*zeta)*q^1453 + (192*zeta^4 - 96)*q^1456 + (132*zeta^7 + 66*zeta^5 - 66*zeta^3
+ 66*zeta)*q^1459 + (228*zeta^7 + 114*zeta^5 - 114*zeta^3 + 114*zeta)*q^1461 + 
(-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^1467 + (216*zeta^4 - 
108)*q^1468 + (72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^1469 + (192*zeta^4
- 96)*q^1472 + (12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 6*zeta)*q^1475 + (48*zeta^4 - 
24)*q^1476 + (-120*zeta^7 - 60*zeta^5 + 60*zeta^3 - 60*zeta)*q^1477 + 
(-192*zeta^4 + 96)*q^1480 + (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^1483 +
(96*zeta^4 - 48)*q^1488 + (-144*zeta^7 - 72*zeta^5 + 72*zeta^3 - 72*zeta)*q^1491
+ (78*zeta^7 + 39*zeta^5 - 39*zeta^3 + 39*zeta)*q^1493 + (192*zeta^7 + 96*zeta^5
- 96*zeta^3 + 96*zeta)*q^1499 + (-288*zeta^4 + 144)*q^1500 + (120*zeta^7 + 
60*zeta^5 - 60*zeta^3 + 60*zeta)*q^1501 + (288*zeta^4 - 144)*q^1504 + 
(-288*zeta^4 + 144)*q^1508 + (-216*zeta^7 - 108*zeta^5 + 108*zeta^3 - 
108*zeta)*q^1509 + (-48*zeta^4 + 24)*q^1512 + (120*zeta^7 + 60*zeta^5 - 
60*zeta^3 + 60*zeta)*q^1515 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 
24*zeta)*q^1517 + (168*zeta^7 + 84*zeta^5 - 84*zeta^3 + 84*zeta)*q^1523 + 
(-96*zeta^4 + 48)*q^1528 + (60*zeta^7 + 30*zeta^5 - 30*zeta^3 + 30*zeta)*q^1531 
+ (288*zeta^4 - 144)*q^1532 + (72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 
36*zeta)*q^1533 + (192*zeta^4 - 96)*q^1536 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3
- 12*zeta)*q^1539 + (-144*zeta^7 - 72*zeta^5 + 72*zeta^3 - 72*zeta)*q^1541 + 
(-72*zeta^4 + 36)*q^1544 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^1547
+ (72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^1549 + (-48*zeta^7 - 24*zeta^5
+ 24*zeta^3 - 24*zeta)*q^1555 + (36*zeta^7 + 18*zeta^5 - 18*zeta^3 + 
18*zeta)*q^1557 + (-192*zeta^4 + 96)*q^1560 + (252*zeta^7 + 126*zeta^5 - 
126*zeta^3 + 126*zeta)*q^1563 + (-96*zeta^4 + 48)*q^1564 + (84*zeta^7 + 
42*zeta^5 - 42*zeta^3 + 42*zeta)*q^1565 + (72*zeta^4 - 36)*q^1568 + (-180*zeta^7
- 90*zeta^5 + 90*zeta^3 - 90*zeta)*q^1571 + (480*zeta^4 - 240)*q^1572 + 
(-132*zeta^7 - 66*zeta^5 + 66*zeta^3 - 66*zeta)*q^1573 + (24*zeta^4 - 12)*q^1576
+ (12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 6*zeta)*q^1579 + (-24*zeta^7 - 12*zeta^5 + 
12*zeta^3 - 12*zeta)*q^1581 + (-42*zeta^7 - 21*zeta^5 + 21*zeta^3 - 
21*zeta)*q^1587 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^1589 + 
(120*zeta^4 - 60)*q^1592 + (192*zeta^4 - 96)*q^1596 + (-36*zeta^7 - 18*zeta^5 + 
18*zeta^3 - 18*zeta)*q^1597 + (48*zeta^4 - 24)*q^1600 + (-24*zeta^7 - 12*zeta^5 
+ 12*zeta^3 - 12*zeta)*q^1603 + (-216*zeta^4 + 108)*q^1604 + (144*zeta^7 + 
72*zeta^5 - 72*zeta^3 + 72*zeta)*q^1605 + O(q^1608), (zeta^5 - zeta^3 - zeta)*q 
+ (-4*zeta^5 + 4*zeta^3 + 4*zeta)*q^7 + (-2*zeta^5 + 2*zeta^3 + 2*zeta)*q^13 + 
(-8*zeta^5 + 8*zeta^3 + 8*zeta)*q^19 + (-5*zeta^5 + 5*zeta^3 + 5*zeta)*q^25 + 
(-4*zeta^5 + 4*zeta^3 + 4*zeta)*q^31 + (10*zeta^5 - 10*zeta^3 - 10*zeta)*q^37 + 
(-8*zeta^5 + 8*zeta^3 + 8*zeta)*q^43 + (9*zeta^5 - 9*zeta^3 - 9*zeta)*q^49 + 
(-14*zeta^5 + 14*zeta^3 + 14*zeta)*q^61 + (16*zeta^5 - 16*zeta^3 - 16*zeta)*q^67
+ (-10*zeta^5 + 10*zeta^3 + 10*zeta)*q^73 + (-4*zeta^5 + 4*zeta^3 + 4*zeta)*q^79
+ (8*zeta^5 - 8*zeta^3 - 8*zeta)*q^91 + (14*zeta^5 - 14*zeta^3 - 14*zeta)*q^97 +
(20*zeta^5 - 20*zeta^3 - 20*zeta)*q^103 + (-2*zeta^5 + 2*zeta^3 + 2*zeta)*q^109 
+ (-11*zeta^5 + 11*zeta^3 + 11*zeta)*q^121 + (20*zeta^5 - 20*zeta^3 - 
20*zeta)*q^127 + (32*zeta^5 - 32*zeta^3 - 32*zeta)*q^133 + (16*zeta^5 - 
16*zeta^3 - 16*zeta)*q^139 + (-4*zeta^5 + 4*zeta^3 + 4*zeta)*q^151 + (-14*zeta^5
+ 14*zeta^3 + 14*zeta)*q^157 + (-8*zeta^5 + 8*zeta^3 + 8*zeta)*q^163 + 
(-9*zeta^5 + 9*zeta^3 + 9*zeta)*q^169 + (20*zeta^5 - 20*zeta^3 - 20*zeta)*q^175 
+ (-26*zeta^5 + 26*zeta^3 + 26*zeta)*q^181 + (2*zeta^5 - 2*zeta^3 - 
2*zeta)*q^193 + (-28*zeta^5 + 28*zeta^3 + 28*zeta)*q^199 + (16*zeta^5 - 
16*zeta^3 - 16*zeta)*q^211 + (16*zeta^5 - 16*zeta^3 - 16*zeta)*q^217 + 
(-28*zeta^5 + 28*zeta^3 + 28*zeta)*q^223 + (22*zeta^5 - 22*zeta^3 - 
22*zeta)*q^229 + (14*zeta^5 - 14*zeta^3 - 14*zeta)*q^241 + (16*zeta^5 - 
16*zeta^3 - 16*zeta)*q^247 + (-40*zeta^5 + 40*zeta^3 + 40*zeta)*q^259 + 
(-28*zeta^5 + 28*zeta^3 + 28*zeta)*q^271 + (-26*zeta^5 + 26*zeta^3 + 
26*zeta)*q^277 + (-32*zeta^5 + 32*zeta^3 + 32*zeta)*q^283 + (-17*zeta^5 + 
17*zeta^3 + 17*zeta)*q^289 + (32*zeta^5 - 32*zeta^3 - 32*zeta)*q^301 + 
(16*zeta^5 - 16*zeta^3 - 16*zeta)*q^307 + (-22*zeta^5 + 22*zeta^3 + 
22*zeta)*q^313 + (10*zeta^5 - 10*zeta^3 - 10*zeta)*q^325 + (-32*zeta^5 + 
32*zeta^3 + 32*zeta)*q^331 + (-34*zeta^5 + 34*zeta^3 + 34*zeta)*q^337 + 
(-8*zeta^5 + 8*zeta^3 + 8*zeta)*q^343 + (-14*zeta^5 + 14*zeta^3 + 14*zeta)*q^349
+ (45*zeta^5 - 45*zeta^3 - 45*zeta)*q^361 + (-4*zeta^5 + 4*zeta^3 + 
4*zeta)*q^367 + (-38*zeta^5 + 38*zeta^3 + 38*zeta)*q^373 + (-8*zeta^5 + 8*zeta^3
+ 8*zeta)*q^379 + (34*zeta^5 - 34*zeta^3 - 34*zeta)*q^397 + (8*zeta^5 - 8*zeta^3
- 8*zeta)*q^403 + (38*zeta^5 - 38*zeta^3 - 38*zeta)*q^409 + (22*zeta^5 - 
22*zeta^3 - 22*zeta)*q^421 + (56*zeta^5 - 56*zeta^3 - 56*zeta)*q^427 + (2*zeta^5
- 2*zeta^3 - 2*zeta)*q^433 + (-28*zeta^5 + 28*zeta^3 + 28*zeta)*q^439 + 
(-10*zeta^5 + 10*zeta^3 + 10*zeta)*q^457 + (20*zeta^5 - 20*zeta^3 - 
20*zeta)*q^463 + (-64*zeta^5 + 64*zeta^3 + 64*zeta)*q^469 + (40*zeta^5 - 
40*zeta^3 - 40*zeta)*q^475 + (-20*zeta^5 + 20*zeta^3 + 20*zeta)*q^481 + 
(44*zeta^5 - 44*zeta^3 - 44*zeta)*q^487 + (-32*zeta^5 + 32*zeta^3 + 
32*zeta)*q^499 + (40*zeta^5 - 40*zeta^3 - 40*zeta)*q^511 + (-8*zeta^5 + 8*zeta^3
+ 8*zeta)*q^523 + (-23*zeta^5 + 23*zeta^3 + 23*zeta)*q^529 + (46*zeta^5 - 
46*zeta^3 - 46*zeta)*q^541 + (40*zeta^5 - 40*zeta^3 - 40*zeta)*q^547 + 
(16*zeta^5 - 16*zeta^3 - 16*zeta)*q^553 + (16*zeta^5 - 16*zeta^3 - 
16*zeta)*q^559 + (16*zeta^5 - 16*zeta^3 - 16*zeta)*q^571 + (-46*zeta^5 + 
46*zeta^3 + 46*zeta)*q^577 + (32*zeta^5 - 32*zeta^3 - 32*zeta)*q^589 + 
(26*zeta^5 - 26*zeta^3 - 26*zeta)*q^601 + (20*zeta^5 - 20*zeta^3 - 
20*zeta)*q^607 + (10*zeta^5 - 10*zeta^3 - 10*zeta)*q^613 + (-32*zeta^5 + 
32*zeta^3 + 32*zeta)*q^619 + (25*zeta^5 - 25*zeta^3 - 25*zeta)*q^625 + 
(44*zeta^5 - 44*zeta^3 - 44*zeta)*q^631 + (-18*zeta^5 + 18*zeta^3 + 
18*zeta)*q^637 + (40*zeta^5 - 40*zeta^3 - 40*zeta)*q^643 + (-38*zeta^5 + 
38*zeta^3 + 38*zeta)*q^661 + (50*zeta^5 - 50*zeta^3 - 50*zeta)*q^673 + 
(-56*zeta^5 + 56*zeta^3 + 56*zeta)*q^679 + (-8*zeta^5 + 8*zeta^3 + 8*zeta)*q^691
+ (-80*zeta^5 + 80*zeta^3 + 80*zeta)*q^703 + (22*zeta^5 - 22*zeta^3 - 
22*zeta)*q^709 + (-80*zeta^5 + 80*zeta^3 + 80*zeta)*q^721 + (44*zeta^5 - 
44*zeta^3 - 44*zeta)*q^727 + (-50*zeta^5 + 50*zeta^3 + 50*zeta)*q^733 + 
(16*zeta^5 - 16*zeta^3 - 16*zeta)*q^739 + (-52*zeta^5 + 52*zeta^3 + 
52*zeta)*q^751 + (-26*zeta^5 + 26*zeta^3 + 26*zeta)*q^757 + (8*zeta^5 - 8*zeta^3
- 8*zeta)*q^763 + (2*zeta^5 - 2*zeta^3 - 2*zeta)*q^769 + (20*zeta^5 - 20*zeta^3 
- 20*zeta)*q^775 + (-56*zeta^5 + 56*zeta^3 + 56*zeta)*q^787 + (28*zeta^5 - 
28*zeta^3 - 28*zeta)*q^793 + (-56*zeta^5 + 56*zeta^3 + 56*zeta)*q^811 + 
(64*zeta^5 - 64*zeta^3 - 64*zeta)*q^817 + (-52*zeta^5 + 52*zeta^3 + 
52*zeta)*q^823 + (46*zeta^5 - 46*zeta^3 - 46*zeta)*q^829 + (-29*zeta^5 + 
29*zeta^3 + 29*zeta)*q^841 + (44*zeta^5 - 44*zeta^3 - 44*zeta)*q^847 + 
(58*zeta^5 - 58*zeta^3 - 58*zeta)*q^853 + (-56*zeta^5 + 56*zeta^3 + 
56*zeta)*q^859 + (-32*zeta^5 + 32*zeta^3 + 32*zeta)*q^871 + (34*zeta^5 - 
34*zeta^3 - 34*zeta)*q^877 + (-8*zeta^5 + 8*zeta^3 + 8*zeta)*q^883 + (-80*zeta^5
+ 80*zeta^3 + 80*zeta)*q^889 + (40*zeta^5 - 40*zeta^3 - 40*zeta)*q^907 + 
(-52*zeta^5 + 52*zeta^3 + 52*zeta)*q^919 + (-50*zeta^5 + 50*zeta^3 + 
50*zeta)*q^925 + (-72*zeta^5 + 72*zeta^3 + 72*zeta)*q^931 + (26*zeta^5 - 
26*zeta^3 - 26*zeta)*q^937 + (20*zeta^5 - 20*zeta^3 - 20*zeta)*q^949 + 
(-15*zeta^5 + 15*zeta^3 + 15*zeta)*q^961 + (20*zeta^5 - 20*zeta^3 - 
20*zeta)*q^967 + (-64*zeta^5 + 64*zeta^3 + 64*zeta)*q^973 + (44*zeta^5 - 
44*zeta^3 - 44*zeta)*q^991 + (10*zeta^5 - 10*zeta^3 - 10*zeta)*q^997 + 
(62*zeta^5 - 62*zeta^3 - 62*zeta)*q^1009 + (-14*zeta^5 + 14*zeta^3 + 
14*zeta)*q^1021 + (8*zeta^5 - 8*zeta^3 - 8*zeta)*q^1027 + (-58*zeta^5 + 
58*zeta^3 + 58*zeta)*q^1033 + (-52*zeta^5 + 52*zeta^3 + 52*zeta)*q^1039 + 
(64*zeta^5 - 64*zeta^3 - 64*zeta)*q^1051 + (16*zeta^5 - 16*zeta^3 - 
16*zeta)*q^1057 + (-28*zeta^5 + 28*zeta^3 + 28*zeta)*q^1063 + (-62*zeta^5 + 
62*zeta^3 + 62*zeta)*q^1069 + (40*zeta^5 - 40*zeta^3 - 40*zeta)*q^1075 + 
(-4*zeta^5 + 4*zeta^3 + 4*zeta)*q^1087 + (22*zeta^5 - 22*zeta^3 - 
22*zeta)*q^1093 + (56*zeta^5 - 56*zeta^3 - 56*zeta)*q^1099 + (46*zeta^5 - 
46*zeta^3 - 46*zeta)*q^1117 + (-32*zeta^5 + 32*zeta^3 + 32*zeta)*q^1123 + 
(38*zeta^5 - 38*zeta^3 - 38*zeta)*q^1129 + (32*zeta^5 - 32*zeta^3 - 
32*zeta)*q^1141 + (-40*zeta^5 + 40*zeta^3 + 40*zeta)*q^1147 + (62*zeta^5 - 
62*zeta^3 - 62*zeta)*q^1153 + (112*zeta^5 - 112*zeta^3 - 112*zeta)*q^1159 + 
(64*zeta^5 - 64*zeta^3 - 64*zeta)*q^1171 + (36*zeta^5 - 36*zeta^3 - 
36*zeta)*q^1183 + (2*zeta^5 - 2*zeta^3 - 2*zeta)*q^1201 + (-50*zeta^5 + 
50*zeta^3 + 50*zeta)*q^1213 + (-45*zeta^5 + 45*zeta^3 + 45*zeta)*q^1225 + 
(68*zeta^5 - 68*zeta^3 - 68*zeta)*q^1231 + (70*zeta^5 - 70*zeta^3 - 
70*zeta)*q^1237 + (14*zeta^5 - 14*zeta^3 - 14*zeta)*q^1249 + (-28*zeta^5 + 
28*zeta^3 + 28*zeta)*q^1261 + (104*zeta^5 - 104*zeta^3 - 104*zeta)*q^1267 + 
(-128*zeta^5 + 128*zeta^3 + 128*zeta)*q^1273 + (-28*zeta^5 + 28*zeta^3 + 
28*zeta)*q^1279 + (-56*zeta^5 + 56*zeta^3 + 56*zeta)*q^1291 + (-46*zeta^5 + 
46*zeta^3 + 46*zeta)*q^1297 + (68*zeta^5 - 68*zeta^3 - 68*zeta)*q^1303 + 
(-22*zeta^5 + 22*zeta^3 + 22*zeta)*q^1321 + (-4*zeta^5 + 4*zeta^3 + 
4*zeta)*q^1327 + (32*zeta^5 - 32*zeta^3 - 32*zeta)*q^1333 + (-40*zeta^5 + 
40*zeta^3 + 40*zeta)*q^1339 + (-8*zeta^5 + 8*zeta^3 + 8*zeta)*q^1351 + 
(63*zeta^5 - 63*zeta^3 - 63*zeta)*q^1369 + (-74*zeta^5 + 74*zeta^3 + 
74*zeta)*q^1381 + (80*zeta^5 - 80*zeta^3 - 80*zeta)*q^1387 + (112*zeta^5 - 
112*zeta^3 - 112*zeta)*q^1393 + (68*zeta^5 - 68*zeta^3 - 68*zeta)*q^1399 + 
(4*zeta^5 - 4*zeta^3 - 4*zeta)*q^1417 + (20*zeta^5 - 20*zeta^3 - 20*zeta)*q^1423
+ (58*zeta^5 - 58*zeta^3 - 58*zeta)*q^1429 + (-76*zeta^5 + 76*zeta^3 + 
76*zeta)*q^1447 + (-2*zeta^5 + 2*zeta^3 + 2*zeta)*q^1453 + (-56*zeta^5 + 
56*zeta^3 + 56*zeta)*q^1459 + (-76*zeta^5 + 76*zeta^3 + 76*zeta)*q^1471 + 
(-64*zeta^5 + 64*zeta^3 + 64*zeta)*q^1477 + (40*zeta^5 - 40*zeta^3 - 
40*zeta)*q^1483 + (-34*zeta^5 + 34*zeta^3 + 34*zeta)*q^1489 + (32*zeta^5 - 
32*zeta^3 - 32*zeta)*q^1501 + (-36*zeta^5 + 36*zeta^3 + 36*zeta)*q^1519 + 
(70*zeta^5 - 70*zeta^3 - 70*zeta)*q^1525 + (64*zeta^5 - 64*zeta^3 - 
64*zeta)*q^1531 + (-52*zeta^5 + 52*zeta^3 + 52*zeta)*q^1543 + (-62*zeta^5 + 
62*zeta^3 + 62*zeta)*q^1549 + (112*zeta^5 - 112*zeta^3 - 112*zeta)*q^1561 + 
(44*zeta^5 - 44*zeta^3 - 44*zeta)*q^1567 + (22*zeta^5 - 22*zeta^3 - 
22*zeta)*q^1573 + (-32*zeta^5 + 32*zeta^3 + 32*zeta)*q^1579 + (-80*zeta^5 + 
80*zeta^3 + 80*zeta)*q^1591 + (-50*zeta^5 + 50*zeta^3 + 50*zeta)*q^1597 + 
(-88*zeta^5 + 88*zeta^3 + 88*zeta)*q^1603 + O(q^1608), 3*q^2 - 12*q^8 - 12*q^14 
+ 6*q^26 + 24*q^38 - 15*q^50 + 48*q^56 - 12*q^62 - 30*q^74 + 24*q^86 + 27*q^98 -
24*q^104 + 42*q^122 - 48*q^134 - 30*q^146 - 96*q^152 - 12*q^158 - 24*q^182 + 
42*q^194 + 60*q^200 + 60*q^206 + 6*q^218 - 33*q^242 + 48*q^248 + 60*q^254 - 
96*q^266 - 48*q^278 + 120*q^296 - 12*q^302 + 42*q^314 + 24*q^326 - 27*q^338 - 
96*q^344 + 60*q^350 + 78*q^362 + 6*q^386 - 108*q^392 - 84*q^398 - 48*q^422 + 
48*q^434 - 84*q^446 - 66*q^458 + 42*q^482 - 168*q^488 + 48*q^494 + 120*q^518 + 
192*q^536 - 84*q^542 + 78*q^554 + 96*q^566 - 51*q^578 + 120*q^584 - 96*q^602 - 
48*q^614 - 66*q^626 + 48*q^632 - 30*q^650 + 96*q^662 - 102*q^674 - 24*q^686 + 
42*q^698 + 135*q^722 + 96*q^728 - 12*q^734 + 114*q^746 + 24*q^758 - 168*q^776 - 
102*q^794 - 24*q^806 + 114*q^818 - 240*q^824 - 66*q^842 - 168*q^854 + 6*q^866 - 
24*q^872 - 84*q^878 - 30*q^914 + 60*q^926 + 192*q^938 - 120*q^950 - 60*q^962 + 
132*q^968 + 132*q^974 + 96*q^998 - 240*q^1016 + 120*q^1022 + 24*q^1046 - 
69*q^1058 + 384*q^1064 - 138*q^1082 - 120*q^1094 + 48*q^1106 + 192*q^1112 + 
48*q^1118 - 48*q^1142 - 138*q^1154 - 96*q^1178 + 78*q^1202 + 48*q^1208 + 
60*q^1214 - 30*q^1226 + 96*q^1238 + 75*q^1250 - 168*q^1256 + 132*q^1262 + 
54*q^1274 - 120*q^1286 - 96*q^1304 + 114*q^1322 + 150*q^1346 + 108*q^1352 - 
168*q^1358 + 24*q^1382 - 240*q^1400 - 240*q^1406 - 66*q^1418 - 240*q^1442 - 
312*q^1448 + 132*q^1454 + 150*q^1466 - 48*q^1478 - 156*q^1502 + 78*q^1514 - 
24*q^1526 + 6*q^1538 - 24*q^1544 + 60*q^1550 + 168*q^1574 + 84*q^1586 + 
336*q^1592 + O(q^1608), (6*zeta^7 + 3*zeta^5 - 3*zeta^3 + 3*zeta)*q + 
(-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^3 + (12*zeta^7 + 6*zeta^5 - 
6*zeta^3 + 6*zeta)*q^5 + (48*zeta^4 - 24)*q^6 + (12*zeta^7 + 6*zeta^5 - 6*zeta^3
+ 6*zeta)*q^7 + (12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 6*zeta)*q^9 + (-48*zeta^4 + 
24)*q^10 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^13 + (24*zeta^7 + 
12*zeta^5 - 12*zeta^3 + 12*zeta)*q^15 + (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 
6*zeta)*q^17 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^19 + (-24*zeta^7
- 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^21 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 
12*zeta)*q^23 + (6*zeta^7 + 3*zeta^5 - 3*zeta^3 + 3*zeta)*q^25 + (96*zeta^4 - 
48)*q^26 + (12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 6*zeta)*q^27 + (-36*zeta^7 - 
18*zeta^5 + 18*zeta^3 - 18*zeta)*q^29 + (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 
6*zeta)*q^31 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^35 + (48*zeta^7 +
24*zeta^5 - 24*zeta^3 + 24*zeta)*q^37 + (96*zeta^4 - 48)*q^38 + (-48*zeta^7 - 
24*zeta^5 + 24*zeta^3 - 24*zeta)*q^39 + (12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 
6*zeta)*q^41 + (96*zeta^4 - 48)*q^42 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 
12*zeta)*q^43 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^45 + (72*zeta^7 
+ 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^47 + (-18*zeta^7 - 9*zeta^5 + 9*zeta^3 - 
9*zeta)*q^49 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^51 + (36*zeta^7 +
18*zeta^5 - 18*zeta^3 + 18*zeta)*q^53 + (-48*zeta^4 + 24)*q^54 + (-48*zeta^7 - 
24*zeta^5 + 24*zeta^3 - 24*zeta)*q^57 + (144*zeta^4 - 72)*q^58 + (-24*zeta^7 - 
12*zeta^5 + 12*zeta^3 - 12*zeta)*q^59 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 
12*zeta)*q^63 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^65 + (72*zeta^7 
+ 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^67 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 
24*zeta)*q^69 + (-96*zeta^4 + 48)*q^70 + (-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 
36*zeta)*q^71 + (-36*zeta^7 - 18*zeta^5 + 18*zeta^3 - 18*zeta)*q^73 + 
(-192*zeta^4 + 96)*q^74 + (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^75 + 
(-60*zeta^7 - 30*zeta^5 + 30*zeta^3 - 30*zeta)*q^79 + (-12*zeta^7 - 6*zeta^5 + 
6*zeta^3 - 6*zeta)*q^81 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^83 + 
(-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^85 + (-96*zeta^4 + 48)*q^86 + 
(-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 36*zeta)*q^87 + (-60*zeta^7 - 30*zeta^5 + 
30*zeta^3 - 30*zeta)*q^89 + (-96*zeta^4 + 48)*q^90 + (-48*zeta^7 - 24*zeta^5 + 
24*zeta^3 - 24*zeta)*q^91 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^93 +
(48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^95 + (-12*zeta^7 - 6*zeta^5 + 
6*zeta^3 - 6*zeta)*q^97 + (-60*zeta^7 - 30*zeta^5 + 30*zeta^3 - 30*zeta)*q^101 +
(-96*zeta^4 + 48)*q^102 + (36*zeta^7 + 18*zeta^5 - 18*zeta^3 + 18*zeta)*q^103 + 
(48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^105 + (-144*zeta^4 + 72)*q^106 +
(72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^107 + (24*zeta^7 + 12*zeta^5 - 
12*zeta^3 + 12*zeta)*q^109 + (96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 48*zeta)*q^111
+ (-36*zeta^7 - 18*zeta^5 + 18*zeta^3 - 18*zeta)*q^113 + (-48*zeta^7 - 24*zeta^5
+ 24*zeta^3 - 24*zeta)*q^115 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 
24*zeta)*q^117 + (96*zeta^4 - 48)*q^118 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 
12*zeta)*q^119 + (66*zeta^7 + 33*zeta^5 - 33*zeta^3 + 33*zeta)*q^121 + 
(-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^123 + (72*zeta^7 + 36*zeta^5 - 
36*zeta^3 + 36*zeta)*q^125 + (12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 6*zeta)*q^127 + 
(48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^129 + (120*zeta^7 + 60*zeta^5 - 
60*zeta^3 + 60*zeta)*q^131 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 
24*zeta)*q^133 + (-288*zeta^4 + 144)*q^134 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3
- 12*zeta)*q^135 + (108*zeta^7 + 54*zeta^5 - 54*zeta^3 + 54*zeta)*q^137 + 
(-192*zeta^4 + 96)*q^138 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^139 
+ (-144*zeta^7 - 72*zeta^5 + 72*zeta^3 - 72*zeta)*q^141 + (72*zeta^7 + 36*zeta^5
- 36*zeta^3 + 36*zeta)*q^145 + (36*zeta^7 + 18*zeta^5 - 18*zeta^3 + 
18*zeta)*q^147 + (-36*zeta^7 - 18*zeta^5 + 18*zeta^3 - 18*zeta)*q^149 + 
(48*zeta^4 - 24)*q^150 + (108*zeta^7 + 54*zeta^5 - 54*zeta^3 + 54*zeta)*q^151 + 
(-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^153 + (-24*zeta^7 - 12*zeta^5 +
12*zeta^3 - 12*zeta)*q^155 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^157
+ (72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^159 + (-48*zeta^7 - 24*zeta^5 
+ 24*zeta^3 - 24*zeta)*q^161 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 
12*zeta)*q^163 + (384*zeta^4 - 192)*q^166 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 
- 24*zeta)*q^167 + (-18*zeta^7 - 9*zeta^5 + 9*zeta^3 - 9*zeta)*q^169 + 
(96*zeta^4 - 48)*q^170 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^171 + 
(36*zeta^7 + 18*zeta^5 - 18*zeta^3 + 18*zeta)*q^173 + (12*zeta^7 + 6*zeta^5 - 
6*zeta^3 + 6*zeta)*q^175 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^177 
+ (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^179 + (-120*zeta^7 - 
60*zeta^5 + 60*zeta^3 - 60*zeta)*q^181 + (192*zeta^4 - 96)*q^182 + (-96*zeta^7 -
48*zeta^5 + 48*zeta^3 - 48*zeta)*q^185 + (-96*zeta^4 + 48)*q^186 + (24*zeta^7 + 
12*zeta^5 - 12*zeta^3 + 12*zeta)*q^189 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 
24*zeta)*q^191 + (-36*zeta^7 - 18*zeta^5 + 18*zeta^3 - 18*zeta)*q^193 + 
(-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^195 + (-12*zeta^7 - 6*zeta^5 + 
6*zeta^3 - 6*zeta)*q^197 + (-60*zeta^7 - 30*zeta^5 + 30*zeta^3 - 30*zeta)*q^199 
+ (144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^201 + (240*zeta^4 - 
120)*q^202 + (-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 36*zeta)*q^203 + (24*zeta^7 +
12*zeta^5 - 12*zeta^3 + 12*zeta)*q^205 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 
24*zeta)*q^207 + (-120*zeta^7 - 60*zeta^5 + 60*zeta^3 - 60*zeta)*q^211 + 
(144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^213 + (-288*zeta^4 + 144)*q^214
+ (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^215 + (-24*zeta^7 - 12*zeta^5
+ 12*zeta^3 - 12*zeta)*q^217 + (-96*zeta^4 + 48)*q^218 + (72*zeta^7 + 36*zeta^5 
- 36*zeta^3 + 36*zeta)*q^219 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 
24*zeta)*q^221 + (-84*zeta^7 - 42*zeta^5 + 42*zeta^3 - 42*zeta)*q^223 + 
(12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 6*zeta)*q^225 + (-48*zeta^7 - 24*zeta^5 + 
24*zeta^3 - 24*zeta)*q^227 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^229
+ (192*zeta^4 - 96)*q^230 + (84*zeta^7 + 42*zeta^5 - 42*zeta^3 + 42*zeta)*q^233 
+ (192*zeta^4 - 96)*q^234 + (144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^235
+ (120*zeta^7 + 60*zeta^5 - 60*zeta^3 + 60*zeta)*q^237 + (12*zeta^7 + 6*zeta^5 -
6*zeta^3 + 6*zeta)*q^241 + (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^243 + 
(-36*zeta^7 - 18*zeta^5 + 18*zeta^3 - 18*zeta)*q^245 + (96*zeta^4 - 48)*q^246 + 
(-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^247 + (-192*zeta^7 - 96*zeta^5 
+ 96*zeta^3 - 96*zeta)*q^249 + (-288*zeta^4 + 144)*q^250 + (-48*zeta^7 - 
24*zeta^5 + 24*zeta^3 - 24*zeta)*q^255 + (108*zeta^7 + 54*zeta^5 - 54*zeta^3 + 
54*zeta)*q^257 + (96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 48*zeta)*q^259 + 
(-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 36*zeta)*q^261 + (-480*zeta^4 + 240)*q^262
+ (96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 48*zeta)*q^263 + (-72*zeta^7 - 36*zeta^5 
+ 36*zeta^3 - 36*zeta)*q^265 + (192*zeta^4 - 96)*q^266 + (120*zeta^7 + 60*zeta^5
- 60*zeta^3 + 60*zeta)*q^267 + (-36*zeta^7 - 18*zeta^5 + 18*zeta^3 - 
18*zeta)*q^269 + (108*zeta^7 + 54*zeta^5 - 54*zeta^3 + 54*zeta)*q^271 + 
(-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^273 + (168*zeta^7 + 84*zeta^5 -
84*zeta^3 + 84*zeta)*q^277 + (96*zeta^4 - 48)*q^278 + (-24*zeta^7 - 12*zeta^5 + 
12*zeta^3 - 12*zeta)*q^279 + (-108*zeta^7 - 54*zeta^5 + 54*zeta^3 - 
54*zeta)*q^281 + (576*zeta^4 - 288)*q^282 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 +
12*zeta)*q^283 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^285 + 
(24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^287 + (-78*zeta^7 - 39*zeta^5 + 
39*zeta^3 - 39*zeta)*q^289 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^291
+ (36*zeta^7 + 18*zeta^5 - 18*zeta^3 + 18*zeta)*q^293 + (-144*zeta^4 + 72)*q^294
+ (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^295 + (144*zeta^4 - 72)*q^298 
+ (96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 48*zeta)*q^299 + (48*zeta^7 + 24*zeta^5 -
24*zeta^3 + 24*zeta)*q^301 + (-120*zeta^7 - 60*zeta^5 + 60*zeta^3 - 
60*zeta)*q^303 + (72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^307 + 
(-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 36*zeta)*q^309 + (96*zeta^4 - 48)*q^310 + 
(48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^311 + (84*zeta^7 + 42*zeta^5 - 
42*zeta^3 + 42*zeta)*q^313 + (-192*zeta^4 + 96)*q^314 + (48*zeta^7 + 24*zeta^5 -
24*zeta^3 + 24*zeta)*q^315 + (-132*zeta^7 - 66*zeta^5 + 66*zeta^3 - 
66*zeta)*q^317 + (144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^321 + 
(48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^323 + (-24*zeta^7 - 12*zeta^5 + 
12*zeta^3 - 12*zeta)*q^325 + (-96*zeta^4 + 48)*q^326 + (48*zeta^7 + 24*zeta^5 - 
24*zeta^3 + 24*zeta)*q^327 + (144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 
72*zeta)*q^329 + (-120*zeta^7 - 60*zeta^5 + 60*zeta^3 - 60*zeta)*q^331 + 
(96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 48*zeta)*q^333 + (-144*zeta^7 - 72*zeta^5 +
72*zeta^3 - 72*zeta)*q^335 + (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^337 +
(72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^339 + (192*zeta^4 - 96)*q^342 + 
(-120*zeta^7 - 60*zeta^5 + 60*zeta^3 - 60*zeta)*q^343 + (-96*zeta^7 - 48*zeta^5 
+ 48*zeta^3 - 48*zeta)*q^345 + (-144*zeta^4 + 72)*q^346 + (-48*zeta^7 - 
24*zeta^5 + 24*zeta^3 - 24*zeta)*q^347 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 
48*zeta)*q^349 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^351 + 
(-36*zeta^7 - 18*zeta^5 + 18*zeta^3 - 18*zeta)*q^353 + (-144*zeta^7 - 72*zeta^5 
+ 72*zeta^3 - 72*zeta)*q^355 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 
24*zeta)*q^357 + (96*zeta^4 - 48)*q^358 + (120*zeta^7 + 60*zeta^5 - 60*zeta^3 + 
60*zeta)*q^359 + (18*zeta^7 + 9*zeta^5 - 9*zeta^3 + 9*zeta)*q^361 + (480*zeta^4 
- 240)*q^362 + (-132*zeta^7 - 66*zeta^5 + 66*zeta^3 - 66*zeta)*q^363 + 
(-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 36*zeta)*q^365 + (-108*zeta^7 - 54*zeta^5 
+ 54*zeta^3 - 54*zeta)*q^367 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 
12*zeta)*q^369 + (72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^371 + 
(96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 48*zeta)*q^373 + (144*zeta^7 + 72*zeta^5 - 
72*zeta^3 + 72*zeta)*q^375 + (-144*zeta^7 - 72*zeta^5 + 72*zeta^3 - 
72*zeta)*q^377 + (-96*zeta^4 + 48)*q^378 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 -
12*zeta)*q^379 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^381 + 
(-144*zeta^7 - 72*zeta^5 + 72*zeta^3 - 72*zeta)*q^383 + (48*zeta^7 + 24*zeta^5 -
24*zeta^3 + 24*zeta)*q^387 + (204*zeta^7 + 102*zeta^5 - 102*zeta^3 + 
102*zeta)*q^389 + (384*zeta^4 - 192)*q^390 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 
+ 24*zeta)*q^391 + (240*zeta^7 + 120*zeta^5 - 120*zeta^3 + 120*zeta)*q^393 + 
(48*zeta^4 - 24)*q^394 + (-120*zeta^7 - 60*zeta^5 + 60*zeta^3 - 60*zeta)*q^395 +
(-192*zeta^7 - 96*zeta^5 + 96*zeta^3 - 96*zeta)*q^397 + (-96*zeta^7 - 48*zeta^5 
+ 48*zeta^3 - 48*zeta)*q^399 + (-108*zeta^7 - 54*zeta^5 + 54*zeta^3 - 
54*zeta)*q^401 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^403 + 
(-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^405 + (288*zeta^4 - 144)*q^406 
+ (60*zeta^7 + 30*zeta^5 - 30*zeta^3 + 30*zeta)*q^409 + (-96*zeta^4 + 48)*q^410 
+ (-216*zeta^7 - 108*zeta^5 + 108*zeta^3 - 108*zeta)*q^411 + (-48*zeta^7 - 
24*zeta^5 + 24*zeta^3 - 24*zeta)*q^413 + (192*zeta^7 + 96*zeta^5 - 96*zeta^3 + 
96*zeta)*q^415 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^417 + 
(-144*zeta^7 - 72*zeta^5 + 72*zeta^3 - 72*zeta)*q^419 + (-120*zeta^7 - 60*zeta^5
+ 60*zeta^3 - 60*zeta)*q^421 + (480*zeta^4 - 240)*q^422 + (144*zeta^7 + 
72*zeta^5 - 72*zeta^3 + 72*zeta)*q^423 + (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 
6*zeta)*q^425 + (-576*zeta^4 + 288)*q^426 + (-72*zeta^7 - 36*zeta^5 + 36*zeta^3 
- 36*zeta)*q^431 + (84*zeta^7 + 42*zeta^5 - 42*zeta^3 + 42*zeta)*q^433 + 
(-144*zeta^7 - 72*zeta^5 + 72*zeta^3 - 72*zeta)*q^435 + (96*zeta^7 + 48*zeta^5 -
48*zeta^3 + 48*zeta)*q^437 + (-288*zeta^4 + 144)*q^438 + (180*zeta^7 + 90*zeta^5
- 90*zeta^3 + 90*zeta)*q^439 + (-36*zeta^7 - 18*zeta^5 + 18*zeta^3 - 
18*zeta)*q^441 + (-192*zeta^4 + 96)*q^442 + (144*zeta^7 + 72*zeta^5 - 72*zeta^3 
+ 72*zeta)*q^443 + (-120*zeta^7 - 60*zeta^5 + 60*zeta^3 - 60*zeta)*q^445 + 
(-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 36*zeta)*q^447 + (180*zeta^7 + 90*zeta^5 -
90*zeta^3 + 90*zeta)*q^449 + (-216*zeta^7 - 108*zeta^5 + 108*zeta^3 - 
108*zeta)*q^453 + (192*zeta^4 - 96)*q^454 + (96*zeta^7 + 48*zeta^5 - 48*zeta^3 +
48*zeta)*q^455 + (-132*zeta^7 - 66*zeta^5 + 66*zeta^3 - 66*zeta)*q^457 + 
(-96*zeta^4 + 48)*q^458 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^459 +
(180*zeta^7 + 90*zeta^5 - 90*zeta^3 + 90*zeta)*q^461 + (156*zeta^7 + 78*zeta^5 -
78*zeta^3 + 78*zeta)*q^463 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 
24*zeta)*q^465 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^467 + 
(144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^469 + (-576*zeta^4 + 288)*q^470
+ (96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 48*zeta)*q^471 + (-480*zeta^4 + 
240)*q^474 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^475 + (72*zeta^7 +
36*zeta^5 - 36*zeta^3 + 36*zeta)*q^477 + (-120*zeta^7 - 60*zeta^5 + 60*zeta^3 - 
60*zeta)*q^479 + (192*zeta^7 + 96*zeta^5 - 96*zeta^3 + 96*zeta)*q^481 + 
(96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 48*zeta)*q^483 + (-24*zeta^7 - 12*zeta^5 + 
12*zeta^3 - 12*zeta)*q^485 + (48*zeta^4 - 24)*q^486 + (-228*zeta^7 - 114*zeta^5 
+ 114*zeta^3 - 114*zeta)*q^487 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 
24*zeta)*q^489 + (144*zeta^4 - 72)*q^490 + (120*zeta^7 + 60*zeta^5 - 60*zeta^3 +
60*zeta)*q^491 + (72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^493 + 
(-144*zeta^7 - 72*zeta^5 + 72*zeta^3 - 72*zeta)*q^497 + (216*zeta^7 + 108*zeta^5
- 108*zeta^3 + 108*zeta)*q^499 + (96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 
48*zeta)*q^501 + (216*zeta^7 + 108*zeta^5 - 108*zeta^3 + 108*zeta)*q^503 + 
(120*zeta^7 + 60*zeta^5 - 60*zeta^3 + 60*zeta)*q^505 + (36*zeta^7 + 18*zeta^5 - 
18*zeta^3 + 18*zeta)*q^507 + (-36*zeta^7 - 18*zeta^5 + 18*zeta^3 - 
18*zeta)*q^509 + (-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 36*zeta)*q^511 + 
(48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^513 + (72*zeta^7 + 36*zeta^5 - 
36*zeta^3 + 36*zeta)*q^515 + (-384*zeta^4 + 192)*q^518 + (72*zeta^7 + 36*zeta^5 
- 36*zeta^3 + 36*zeta)*q^519 + (252*zeta^7 + 126*zeta^5 - 126*zeta^3 + 
126*zeta)*q^521 + (288*zeta^4 - 144)*q^522 + (-216*zeta^7 - 108*zeta^5 + 
108*zeta^3 - 108*zeta)*q^523 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 
12*zeta)*q^525 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^527 + 
(-42*zeta^7 - 21*zeta^5 + 21*zeta^3 - 21*zeta)*q^529 + (-48*zeta^7 - 24*zeta^5 +
24*zeta^3 - 24*zeta)*q^531 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 
24*zeta)*q^533 + (-480*zeta^4 + 240)*q^534 + (-144*zeta^7 - 72*zeta^5 + 
72*zeta^3 - 72*zeta)*q^535 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 
24*zeta)*q^537 + (144*zeta^4 - 72)*q^538 + (120*zeta^7 + 60*zeta^5 - 60*zeta^3 +
60*zeta)*q^541 + (-240*zeta^7 - 120*zeta^5 + 120*zeta^3 - 120*zeta)*q^543 + 
(-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^545 + (-168*zeta^7 - 84*zeta^5 
+ 84*zeta^3 - 84*zeta)*q^547 + (-144*zeta^7 - 72*zeta^5 + 72*zeta^3 - 
72*zeta)*q^551 + (-120*zeta^7 - 60*zeta^5 + 60*zeta^3 - 60*zeta)*q^553 + 
(-672*zeta^4 + 336)*q^554 + (192*zeta^7 + 96*zeta^5 - 96*zeta^3 + 96*zeta)*q^555
+ (-252*zeta^7 - 126*zeta^5 + 126*zeta^3 - 126*zeta)*q^557 + (96*zeta^7 + 
48*zeta^5 - 48*zeta^3 + 48*zeta)*q^559 + (144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 
72*zeta)*q^563 + (-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 36*zeta)*q^565 + 
(-96*zeta^4 + 48)*q^566 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^567 +
(-180*zeta^7 - 90*zeta^5 + 90*zeta^3 - 90*zeta)*q^569 + (384*zeta^4 - 192)*q^570
+ (120*zeta^7 + 60*zeta^5 - 60*zeta^3 + 60*zeta)*q^571 + (-96*zeta^7 - 48*zeta^5
+ 48*zeta^3 - 48*zeta)*q^573 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 
12*zeta)*q^575 + (-252*zeta^7 - 126*zeta^5 + 126*zeta^3 - 126*zeta)*q^577 + 
(72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^579 + (-192*zeta^7 - 96*zeta^5 +
96*zeta^3 - 96*zeta)*q^581 + (-96*zeta^4 + 48)*q^582 + (96*zeta^7 + 48*zeta^5 - 
48*zeta^3 + 48*zeta)*q^585 + (-144*zeta^4 + 72)*q^586 + (-168*zeta^7 - 84*zeta^5
+ 84*zeta^3 - 84*zeta)*q^587 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 
24*zeta)*q^589 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^591 + 
(-36*zeta^7 - 18*zeta^5 + 18*zeta^3 - 18*zeta)*q^593 + (-48*zeta^7 - 24*zeta^5 +
24*zeta^3 - 24*zeta)*q^595 + (120*zeta^7 + 60*zeta^5 - 60*zeta^3 + 
60*zeta)*q^597 + (-384*zeta^4 + 192)*q^598 + (120*zeta^7 + 60*zeta^5 - 60*zeta^3
+ 60*zeta)*q^599 + (12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 6*zeta)*q^601 + 
(-192*zeta^4 + 96)*q^602 + (144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^603 
+ (132*zeta^7 + 66*zeta^5 - 66*zeta^3 + 66*zeta)*q^605 + (12*zeta^7 + 6*zeta^5 -
6*zeta^3 + 6*zeta)*q^607 + (-144*zeta^7 - 72*zeta^5 + 72*zeta^3 - 72*zeta)*q^609
+ (-288*zeta^7 - 144*zeta^5 + 144*zeta^3 - 144*zeta)*q^611 + (96*zeta^7 + 
48*zeta^5 - 48*zeta^3 + 48*zeta)*q^613 + (-288*zeta^4 + 144)*q^614 + (48*zeta^7 
+ 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^615 + (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 
6*zeta)*q^617 + (288*zeta^4 - 144)*q^618 + (216*zeta^7 + 108*zeta^5 - 108*zeta^3
+ 108*zeta)*q^619 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^621 + 
(-120*zeta^7 - 60*zeta^5 + 60*zeta^3 - 60*zeta)*q^623 + (-114*zeta^7 - 57*zeta^5
+ 57*zeta^3 - 57*zeta)*q^625 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 
48*zeta)*q^629 + (-192*zeta^4 + 96)*q^630 + (-132*zeta^7 - 66*zeta^5 + 66*zeta^3
- 66*zeta)*q^631 + (-240*zeta^7 - 120*zeta^5 + 120*zeta^3 - 120*zeta)*q^633 + 
(528*zeta^4 - 264)*q^634 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^635 +
(72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^637 + (-144*zeta^7 - 72*zeta^5 +
72*zeta^3 - 72*zeta)*q^639 + (132*zeta^7 + 66*zeta^5 - 66*zeta^3 + 
66*zeta)*q^641 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^643 + 
(96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 48*zeta)*q^645 + (-192*zeta^4 + 96)*q^646 +
(72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^647 + (96*zeta^4 - 48)*q^650 + 
(48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^651 + (36*zeta^7 + 18*zeta^5 - 
18*zeta^3 + 18*zeta)*q^653 + (-240*zeta^7 - 120*zeta^5 + 120*zeta^3 - 
120*zeta)*q^655 + (-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 36*zeta)*q^657 + 
(216*zeta^7 + 108*zeta^5 - 108*zeta^3 + 108*zeta)*q^659 + (-240*zeta^7 - 
120*zeta^5 + 120*zeta^3 - 120*zeta)*q^661 + (480*zeta^4 - 240)*q^662 + 
(96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 48*zeta)*q^663 + (96*zeta^7 + 48*zeta^5 - 
48*zeta^3 + 48*zeta)*q^665 + (-384*zeta^4 + 192)*q^666 + (144*zeta^7 + 72*zeta^5
- 72*zeta^3 + 72*zeta)*q^667 + (168*zeta^7 + 84*zeta^5 - 84*zeta^3 + 
84*zeta)*q^669 + (84*zeta^7 + 42*zeta^5 - 42*zeta^3 + 42*zeta)*q^673 + 
(12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 6*zeta)*q^675 + (108*zeta^7 + 54*zeta^5 - 
54*zeta^3 + 54*zeta)*q^677 + (-288*zeta^4 + 144)*q^678 + (-24*zeta^7 - 12*zeta^5
+ 12*zeta^3 - 12*zeta)*q^679 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 
48*zeta)*q^681 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^683 + 
(216*zeta^7 + 108*zeta^5 - 108*zeta^3 + 108*zeta)*q^685 + (48*zeta^7 + 24*zeta^5
- 24*zeta^3 + 24*zeta)*q^687 + (144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 
72*zeta)*q^689 + (120*zeta^7 + 60*zeta^5 - 60*zeta^3 + 60*zeta)*q^691 + 
(192*zeta^4 - 96)*q^694 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^695 + 
(-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^697 + (384*zeta^4 - 192)*q^698 
+ (-168*zeta^7 - 84*zeta^5 + 84*zeta^3 - 84*zeta)*q^699 + (300*zeta^7 + 
150*zeta^5 - 150*zeta^3 + 150*zeta)*q^701 + (192*zeta^7 + 96*zeta^5 - 96*zeta^3 
+ 96*zeta)*q^703 + (288*zeta^7 + 144*zeta^5 - 144*zeta^3 + 144*zeta)*q^705 + 
(-120*zeta^7 - 60*zeta^5 + 60*zeta^3 - 60*zeta)*q^707 + (24*zeta^7 + 12*zeta^5 -
12*zeta^3 + 12*zeta)*q^709 + (576*zeta^4 - 288)*q^710 + (-120*zeta^7 - 60*zeta^5
+ 60*zeta^3 - 60*zeta)*q^711 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 
24*zeta)*q^713 + (-192*zeta^4 + 96)*q^714 + (120*zeta^7 + 60*zeta^5 - 60*zeta^3 
+ 60*zeta)*q^719 + (72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^721 + 
(-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^723 + (-36*zeta^7 - 18*zeta^5 +
18*zeta^3 - 18*zeta)*q^725 + (528*zeta^4 - 264)*q^726 + (252*zeta^7 + 126*zeta^5
- 126*zeta^3 + 126*zeta)*q^727 + (12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 
6*zeta)*q^729 + (288*zeta^4 - 144)*q^730 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 -
24*zeta)*q^731 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^733 + 
(-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 36*zeta)*q^735 + (-264*zeta^7 - 132*zeta^5
+ 132*zeta^3 - 132*zeta)*q^739 + (192*zeta^7 + 96*zeta^5 - 96*zeta^3 + 
96*zeta)*q^741 + (-288*zeta^4 + 144)*q^742 + (96*zeta^7 + 48*zeta^5 - 48*zeta^3 
+ 48*zeta)*q^743 + (72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^745 + 
(-384*zeta^4 + 192)*q^746 + (-192*zeta^7 - 96*zeta^5 + 96*zeta^3 - 
96*zeta)*q^747 + (144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^749 + 
(-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^751 + (216*zeta^7 + 108*zeta^5 - 
108*zeta^3 + 108*zeta)*q^755 + (-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 
36*zeta)*q^757 + (96*zeta^4 - 48)*q^758 + (-228*zeta^7 - 114*zeta^5 + 114*zeta^3
- 114*zeta)*q^761 + (96*zeta^4 - 48)*q^762 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 
+ 24*zeta)*q^763 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^765 + 
(-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^767 + (60*zeta^7 + 30*zeta^5 - 
30*zeta^3 + 30*zeta)*q^769 + (-216*zeta^7 - 108*zeta^5 + 108*zeta^3 - 
108*zeta)*q^771 + (-204*zeta^7 - 102*zeta^5 + 102*zeta^3 - 102*zeta)*q^773 + 
(-192*zeta^4 + 96)*q^774 + (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^775 + 
(192*zeta^7 + 96*zeta^5 - 96*zeta^3 + 96*zeta)*q^777 + (-816*zeta^4 + 408)*q^778
+ (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^779 + (72*zeta^7 + 36*zeta^5 
- 36*zeta^3 + 36*zeta)*q^783 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 
48*zeta)*q^785 + (72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^787 + 
(-192*zeta^7 - 96*zeta^5 + 96*zeta^3 - 96*zeta)*q^789 + (480*zeta^4 - 240)*q^790
+ (-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 36*zeta)*q^791 + (768*zeta^4 - 
384)*q^794 + (144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^795 + (-12*zeta^7 
- 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^797 + (-144*zeta^7 - 72*zeta^5 + 72*zeta^3 - 
72*zeta)*q^799 + (-120*zeta^7 - 60*zeta^5 + 60*zeta^3 - 60*zeta)*q^801 + 
(-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^805 + (-192*zeta^4 + 96)*q^806 
+ (-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 36*zeta)*q^807 + (-180*zeta^7 - 
90*zeta^5 + 90*zeta^3 - 90*zeta)*q^809 + (96*zeta^4 - 48)*q^810 + (-120*zeta^7 -
60*zeta^5 + 60*zeta^3 - 60*zeta)*q^811 + (-216*zeta^7 - 108*zeta^5 + 108*zeta^3 
- 108*zeta)*q^813 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^815 + 
(96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 48*zeta)*q^817 + (-96*zeta^7 - 48*zeta^5 + 
48*zeta^3 - 48*zeta)*q^819 + (-60*zeta^7 - 30*zeta^5 + 30*zeta^3 - 
30*zeta)*q^821 + (864*zeta^4 - 432)*q^822 + (-84*zeta^7 - 42*zeta^5 + 42*zeta^3 
- 42*zeta)*q^823 + (192*zeta^4 - 96)*q^826 + (72*zeta^7 + 36*zeta^5 - 36*zeta^3 
+ 36*zeta)*q^827 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^829 + 
(336*zeta^7 + 168*zeta^5 - 168*zeta^3 + 168*zeta)*q^831 + (36*zeta^7 + 18*zeta^5
- 18*zeta^3 + 18*zeta)*q^833 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 
48*zeta)*q^835 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^837 + 
(576*zeta^4 - 288)*q^838 + (-120*zeta^7 - 60*zeta^5 + 60*zeta^3 - 60*zeta)*q^839
+ (-42*zeta^7 - 21*zeta^5 + 21*zeta^3 - 21*zeta)*q^841 + (480*zeta^4 - 
240)*q^842 + (216*zeta^7 + 108*zeta^5 - 108*zeta^3 + 108*zeta)*q^843 + 
(-36*zeta^7 - 18*zeta^5 + 18*zeta^3 - 18*zeta)*q^845 + (132*zeta^7 + 66*zeta^5 -
66*zeta^3 + 66*zeta)*q^847 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^849
+ (-192*zeta^7 - 96*zeta^5 + 96*zeta^3 - 96*zeta)*q^851 + (-144*zeta^7 - 
72*zeta^5 + 72*zeta^3 - 72*zeta)*q^853 + (96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 
48*zeta)*q^855 + (108*zeta^7 + 54*zeta^5 - 54*zeta^3 + 54*zeta)*q^857 + 
(-264*zeta^7 - 132*zeta^5 + 132*zeta^3 - 132*zeta)*q^859 + (-48*zeta^7 - 
24*zeta^5 + 24*zeta^3 - 24*zeta)*q^861 + (-144*zeta^7 - 72*zeta^5 + 72*zeta^3 - 
72*zeta)*q^863 + (-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 36*zeta)*q^865 + 
(156*zeta^7 + 78*zeta^5 - 78*zeta^3 + 78*zeta)*q^867 + (576*zeta^4 - 288)*q^870 
+ (288*zeta^7 + 144*zeta^5 - 144*zeta^3 + 144*zeta)*q^871 + (-24*zeta^7 - 
12*zeta^5 + 12*zeta^3 - 12*zeta)*q^873 + (-384*zeta^4 + 192)*q^874 + (144*zeta^7
+ 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^875 + (-192*zeta^7 - 96*zeta^5 + 96*zeta^3 
- 96*zeta)*q^877 + (72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^879 + 
(12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 6*zeta)*q^881 + (24*zeta^7 + 12*zeta^5 - 
12*zeta^3 + 12*zeta)*q^883 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 
48*zeta)*q^885 + (-576*zeta^4 + 288)*q^886 + (-288*zeta^7 - 144*zeta^5 + 
144*zeta^3 - 144*zeta)*q^887 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 
12*zeta)*q^889 + (480*zeta^4 - 240)*q^890 + (-288*zeta^7 - 144*zeta^5 + 
144*zeta^3 - 144*zeta)*q^893 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 
24*zeta)*q^895 + (192*zeta^7 + 96*zeta^5 - 96*zeta^3 + 96*zeta)*q^897 + 
(72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^899 + (-72*zeta^7 - 36*zeta^5 + 
36*zeta^3 - 36*zeta)*q^901 + (96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 48*zeta)*q^903
+ (240*zeta^7 + 120*zeta^5 - 120*zeta^3 + 120*zeta)*q^905 + (864*zeta^4 - 
432)*q^906 + (-168*zeta^7 - 84*zeta^5 + 84*zeta^3 - 84*zeta)*q^907 + 
(-120*zeta^7 - 60*zeta^5 + 60*zeta^3 - 60*zeta)*q^909 + (288*zeta^7 + 144*zeta^5
- 144*zeta^3 + 144*zeta)*q^911 + (240*zeta^7 + 120*zeta^5 - 120*zeta^3 + 
120*zeta)*q^917 + (96*zeta^4 - 48)*q^918 + (-180*zeta^7 - 90*zeta^5 + 90*zeta^3 
- 90*zeta)*q^919 + (144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^921 + 
(-720*zeta^4 + 360)*q^922 + (288*zeta^7 + 144*zeta^5 - 144*zeta^3 + 
144*zeta)*q^923 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^925 + 
(72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^927 + (-300*zeta^7 - 150*zeta^5 
+ 150*zeta^3 - 150*zeta)*q^929 + (72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 
36*zeta)*q^931 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^933 + 
(192*zeta^4 - 96)*q^934 + (228*zeta^7 + 114*zeta^5 - 114*zeta^3 + 
114*zeta)*q^937 + (-576*zeta^4 + 288)*q^938 + (-168*zeta^7 - 84*zeta^5 + 
84*zeta^3 - 84*zeta)*q^939 + (180*zeta^7 + 90*zeta^5 - 90*zeta^3 + 
90*zeta)*q^941 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^943 + 
(-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^945 + (72*zeta^7 + 36*zeta^5 - 
36*zeta^3 + 36*zeta)*q^947 + (144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 
72*zeta)*q^949 + (96*zeta^4 - 48)*q^950 + (-264*zeta^7 - 132*zeta^5 + 132*zeta^3
- 132*zeta)*q^951 + (-36*zeta^7 - 18*zeta^5 + 18*zeta^3 - 18*zeta)*q^953 + 
(-288*zeta^4 + 144)*q^954 + (96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 48*zeta)*q^955 
+ (216*zeta^7 + 108*zeta^5 - 108*zeta^3 + 108*zeta)*q^959 + (-162*zeta^7 - 
81*zeta^5 + 81*zeta^3 - 81*zeta)*q^961 + (144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 
72*zeta)*q^963 + (-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 36*zeta)*q^965 + 
(-384*zeta^4 + 192)*q^966 + (132*zeta^7 + 66*zeta^5 - 66*zeta^3 + 66*zeta)*q^967
+ (96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 48*zeta)*q^969 + (96*zeta^4 - 48)*q^970 +
(-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^973 + (-48*zeta^7 - 24*zeta^5 +
24*zeta^3 - 24*zeta)*q^975 + (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^977 +
(48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^981 + (-480*zeta^4 + 240)*q^982 
+ (96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 48*zeta)*q^983 + (24*zeta^7 + 12*zeta^5 -
12*zeta^3 + 12*zeta)*q^985 + (-288*zeta^4 + 144)*q^986 + (-288*zeta^7 - 
144*zeta^5 + 144*zeta^3 - 144*zeta)*q^987 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 
- 48*zeta)*q^989 + (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^991 + 
(-240*zeta^7 - 120*zeta^5 + 120*zeta^3 - 120*zeta)*q^993 + (-120*zeta^7 - 
60*zeta^5 + 60*zeta^3 - 60*zeta)*q^995 + (288*zeta^7 + 144*zeta^5 - 144*zeta^3 +
144*zeta)*q^997 + (-864*zeta^4 + 432)*q^998 + (-96*zeta^7 - 48*zeta^5 + 
48*zeta^3 - 48*zeta)*q^999 + (-384*zeta^4 + 192)*q^1002 + (48*zeta^7 + 24*zeta^5
- 24*zeta^3 + 24*zeta)*q^1003 + (288*zeta^7 + 144*zeta^5 - 144*zeta^3 + 
144*zeta)*q^1005 + (144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^1007 + 
(180*zeta^7 + 90*zeta^5 - 90*zeta^3 + 90*zeta)*q^1009 + (24*zeta^7 + 12*zeta^5 -
12*zeta^3 + 12*zeta)*q^1011 + (156*zeta^7 + 78*zeta^5 - 78*zeta^3 + 
78*zeta)*q^1013 + (-144*zeta^4 + 72)*q^1014 + (144*zeta^7 + 72*zeta^5 - 
72*zeta^3 + 72*zeta)*q^1015 + (-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 
36*zeta)*q^1017 + (144*zeta^4 - 72)*q^1018 + (-264*zeta^7 - 132*zeta^5 + 
132*zeta^3 - 132*zeta)*q^1019 + (240*zeta^7 + 120*zeta^5 - 120*zeta^3 + 
120*zeta)*q^1021 + (12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 6*zeta)*q^1025 + 
(240*zeta^7 + 120*zeta^5 - 120*zeta^3 + 120*zeta)*q^1027 + (240*zeta^7 + 
120*zeta^5 - 120*zeta^3 + 120*zeta)*q^1029 + (-288*zeta^4 + 144)*q^1030 + 
(-192*zeta^7 - 96*zeta^5 + 96*zeta^3 - 96*zeta)*q^1031 + (-156*zeta^7 - 
78*zeta^5 + 78*zeta^3 - 78*zeta)*q^1033 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 
48*zeta)*q^1035 + (-60*zeta^7 - 30*zeta^5 + 30*zeta^3 - 30*zeta)*q^1039 + 
(-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^1041 + (-72*zeta^7 - 36*zeta^5 
+ 36*zeta^3 - 36*zeta)*q^1043 + (864*zeta^4 - 432)*q^1046 + (-192*zeta^7 - 
96*zeta^5 + 96*zeta^3 - 96*zeta)*q^1047 + (180*zeta^7 + 90*zeta^5 - 90*zeta^3 + 
90*zeta)*q^1049 + (96*zeta^4 - 48)*q^1050 + (120*zeta^7 + 60*zeta^5 - 60*zeta^3 
+ 60*zeta)*q^1051 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^1053 + 
(240*zeta^7 + 120*zeta^5 - 120*zeta^3 + 120*zeta)*q^1055 + (216*zeta^7 + 
108*zeta^5 - 108*zeta^3 + 108*zeta)*q^1057 + (72*zeta^7 + 36*zeta^5 - 36*zeta^3 
+ 36*zeta)*q^1059 + (60*zeta^7 + 30*zeta^5 - 30*zeta^3 + 30*zeta)*q^1061 + 
(192*zeta^4 - 96)*q^1062 + (-204*zeta^7 - 102*zeta^5 + 102*zeta^3 - 
102*zeta)*q^1063 + (-288*zeta^7 - 144*zeta^5 + 144*zeta^3 - 144*zeta)*q^1065 + 
(192*zeta^4 - 96)*q^1066 + (-336*zeta^7 - 168*zeta^5 + 168*zeta^3 - 
168*zeta)*q^1069 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^1071 + 
(288*zeta^7 + 144*zeta^5 - 144*zeta^3 + 144*zeta)*q^1073 + (24*zeta^7 + 
12*zeta^5 - 12*zeta^3 + 12*zeta)*q^1075 + (-240*zeta^7 - 120*zeta^5 + 120*zeta^3
- 120*zeta)*q^1077 + (-384*zeta^7 - 192*zeta^5 + 192*zeta^3 - 192*zeta)*q^1079 +
(-288*zeta^7 - 144*zeta^5 + 144*zeta^3 - 144*zeta)*q^1081 + (-480*zeta^4 + 
240)*q^1082 + (-36*zeta^7 - 18*zeta^5 + 18*zeta^3 - 18*zeta)*q^1083 + 
(-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^1085 + (-348*zeta^7 - 
174*zeta^5 + 174*zeta^3 - 174*zeta)*q^1087 + (132*zeta^7 + 66*zeta^5 - 66*zeta^3
+ 66*zeta)*q^1089 + (216*zeta^7 + 108*zeta^5 - 108*zeta^3 + 108*zeta)*q^1093 + 
(672*zeta^4 - 336)*q^1094 + (-144*zeta^7 - 72*zeta^5 + 72*zeta^3 - 
72*zeta)*q^1095 + (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^1097 + 
(96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 48*zeta)*q^1099 + (216*zeta^7 + 108*zeta^5 
- 108*zeta^3 + 108*zeta)*q^1101 + (-144*zeta^7 - 72*zeta^5 + 72*zeta^3 - 
72*zeta)*q^1103 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^1105 + 
(24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^1107 + (-36*zeta^7 - 18*zeta^5 +
18*zeta^3 - 18*zeta)*q^1109 + (-768*zeta^4 + 384)*q^1110 + (144*zeta^7 + 
72*zeta^5 - 72*zeta^3 + 72*zeta)*q^1113 + (1008*zeta^4 - 504)*q^1114 + 
(-168*zeta^7 - 84*zeta^5 + 84*zeta^3 - 84*zeta)*q^1115 + (-312*zeta^7 - 
156*zeta^5 + 156*zeta^3 - 156*zeta)*q^1117 + (192*zeta^7 + 96*zeta^5 - 96*zeta^3
+ 96*zeta)*q^1119 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^1121 + 
(24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^1123 + (144*zeta^7 + 72*zeta^5 -
72*zeta^3 + 72*zeta)*q^1125 + (-576*zeta^4 + 288)*q^1126 + (72*zeta^7 + 
36*zeta^5 - 36*zeta^3 + 36*zeta)*q^1127 + (-60*zeta^7 - 30*zeta^5 + 30*zeta^3 - 
30*zeta)*q^1129 + (288*zeta^4 - 144)*q^1130 + (288*zeta^7 + 144*zeta^5 - 
144*zeta^3 + 144*zeta)*q^1131 + (96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 
48*zeta)*q^1135 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^1137 + 
(-144*zeta^7 - 72*zeta^5 + 72*zeta^3 - 72*zeta)*q^1139 + (48*zeta^7 + 24*zeta^5 
- 24*zeta^3 + 24*zeta)*q^1141 + (-480*zeta^4 + 240)*q^1142 + (24*zeta^7 + 
12*zeta^5 - 12*zeta^3 + 12*zeta)*q^1143 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 
24*zeta)*q^1145 + (384*zeta^4 - 192)*q^1146 + (-96*zeta^7 - 48*zeta^5 + 
48*zeta^3 - 48*zeta)*q^1147 + (288*zeta^7 + 144*zeta^5 - 144*zeta^3 + 
144*zeta)*q^1149 + (288*zeta^7 + 144*zeta^5 - 144*zeta^3 + 144*zeta)*q^1151 + 
(-276*zeta^7 - 138*zeta^5 + 138*zeta^3 - 138*zeta)*q^1153 + (240*zeta^7 + 
120*zeta^5 - 120*zeta^3 + 120*zeta)*q^1157 + (-288*zeta^4 + 144)*q^1158 + 
(-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^1161 + (768*zeta^4 - 
384)*q^1162 + (-216*zeta^7 - 108*zeta^5 + 108*zeta^3 - 108*zeta)*q^1163 + 
(168*zeta^7 + 84*zeta^5 - 84*zeta^3 + 84*zeta)*q^1165 + (408*zeta^7 + 204*zeta^5
- 204*zeta^3 + 204*zeta)*q^1167 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 
48*zeta)*q^1169 + (120*zeta^7 + 60*zeta^5 - 60*zeta^3 + 60*zeta)*q^1171 + 
(-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^1173 + (672*zeta^4 - 
336)*q^1174 + (72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^1175 + 
(-192*zeta^4 + 96)*q^1178 + (240*zeta^7 + 120*zeta^5 - 120*zeta^3 + 
120*zeta)*q^1179 + (-300*zeta^7 - 150*zeta^5 + 150*zeta^3 - 150*zeta)*q^1181 + 
(-36*zeta^7 - 18*zeta^5 + 18*zeta^3 - 18*zeta)*q^1183 + (-240*zeta^7 - 
120*zeta^5 + 120*zeta^3 - 120*zeta)*q^1185 + (312*zeta^7 + 156*zeta^5 - 
156*zeta^3 + 156*zeta)*q^1187 + (-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 
36*zeta)*q^1189 + (192*zeta^4 - 96)*q^1190 + (-384*zeta^7 - 192*zeta^5 + 
192*zeta^3 - 192*zeta)*q^1191 + (-396*zeta^7 - 198*zeta^5 + 198*zeta^3 - 
198*zeta)*q^1193 + (-480*zeta^4 + 240)*q^1194 + (-96*zeta^7 - 48*zeta^5 + 
48*zeta^3 - 48*zeta)*q^1197 + (-348*zeta^7 - 174*zeta^5 + 174*zeta^3 - 
174*zeta)*q^1201 + (216*zeta^7 + 108*zeta^5 - 108*zeta^3 + 108*zeta)*q^1203 + 
(24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^1205 + (-576*zeta^4 + 
288)*q^1206 + (144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^1207 + (96*zeta^7
+ 48*zeta^5 - 48*zeta^3 + 48*zeta)*q^1209 + (-528*zeta^4 + 264)*q^1210 + 
(72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^1211 + (-24*zeta^7 - 12*zeta^5 +
12*zeta^3 - 12*zeta)*q^1213 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 
12*zeta)*q^1215 + (348*zeta^7 + 174*zeta^5 - 174*zeta^3 + 174*zeta)*q^1217 + 
(-144*zeta^7 - 72*zeta^5 + 72*zeta^3 - 72*zeta)*q^1219 + (1152*zeta^4 - 
576)*q^1222 + (-144*zeta^7 - 72*zeta^5 + 72*zeta^3 - 72*zeta)*q^1223 + 
(-18*zeta^7 - 9*zeta^5 + 9*zeta^3 - 9*zeta)*q^1225 + (-384*zeta^4 + 192)*q^1226 
+ (-120*zeta^7 - 60*zeta^5 + 60*zeta^3 - 60*zeta)*q^1227 + (-396*zeta^7 - 
198*zeta^5 + 198*zeta^3 - 198*zeta)*q^1229 + (-372*zeta^7 - 186*zeta^5 + 
186*zeta^3 - 186*zeta)*q^1231 + (216*zeta^7 + 108*zeta^5 - 108*zeta^3 + 
108*zeta)*q^1233 + (-192*zeta^7 - 96*zeta^5 + 96*zeta^3 - 96*zeta)*q^1235 + 
(168*zeta^7 + 84*zeta^5 - 84*zeta^3 + 84*zeta)*q^1237 + (-864*zeta^4 + 
432)*q^1238 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^1239 + (72*zeta^7
+ 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^1241 + (192*zeta^4 - 96)*q^1242 + 
(-384*zeta^7 - 192*zeta^5 + 192*zeta^3 - 192*zeta)*q^1245 + (144*zeta^7 + 
72*zeta^5 - 72*zeta^3 + 72*zeta)*q^1247 + (180*zeta^7 + 90*zeta^5 - 90*zeta^3 + 
90*zeta)*q^1249 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^1251 + 
(-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^1253 + (-288*zeta^7 - 
144*zeta^5 + 144*zeta^3 - 144*zeta)*q^1257 + (384*zeta^4 - 192)*q^1258 + 
(336*zeta^7 + 168*zeta^5 - 168*zeta^3 + 168*zeta)*q^1259 + (48*zeta^7 + 
24*zeta^5 - 24*zeta^3 + 24*zeta)*q^1261 + (-240*zeta^7 - 120*zeta^5 + 120*zeta^3
- 120*zeta)*q^1263 + (-240*zeta^7 - 120*zeta^5 + 120*zeta^3 - 120*zeta)*q^1267 +
(144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^1269 + (-96*zeta^4 + 48)*q^1270
+ (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^1271 + (288*zeta^7 + 
144*zeta^5 - 144*zeta^3 + 144*zeta)*q^1273 + (-288*zeta^4 + 144)*q^1274 + 
(24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^1275 + (108*zeta^7 + 54*zeta^5 -
54*zeta^3 + 54*zeta)*q^1277 + (60*zeta^7 + 30*zeta^5 - 30*zeta^3 + 
30*zeta)*q^1279 + (144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^1283 + 
(216*zeta^7 + 108*zeta^5 - 108*zeta^3 + 108*zeta)*q^1285 + (-96*zeta^4 + 
48)*q^1286 + (180*zeta^7 + 90*zeta^5 - 90*zeta^3 + 90*zeta)*q^1289 + 
(-384*zeta^4 + 192)*q^1290 + (120*zeta^7 + 60*zeta^5 - 60*zeta^3 + 
60*zeta)*q^1291 + (144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^1293 + 
(-192*zeta^7 - 96*zeta^5 + 96*zeta^3 - 96*zeta)*q^1295 + (348*zeta^7 + 
174*zeta^5 - 174*zeta^3 + 174*zeta)*q^1297 + (-168*zeta^7 - 84*zeta^5 + 
84*zeta^3 - 84*zeta)*q^1299 + (-180*zeta^7 - 90*zeta^5 + 90*zeta^3 - 
90*zeta)*q^1301 + (-192*zeta^4 + 96)*q^1302 + (276*zeta^7 + 138*zeta^5 - 
138*zeta^3 + 138*zeta)*q^1303 + (144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 
72*zeta)*q^1305 + (-144*zeta^4 + 72)*q^1306 + (72*zeta^7 + 36*zeta^5 - 36*zeta^3
+ 36*zeta)*q^1307 + (192*zeta^7 + 96*zeta^5 - 96*zeta^3 + 96*zeta)*q^1311 + 
(-240*zeta^7 - 120*zeta^5 + 120*zeta^3 - 120*zeta)*q^1313 + (192*zeta^7 + 
96*zeta^5 - 96*zeta^3 + 96*zeta)*q^1315 + (-360*zeta^7 - 180*zeta^5 + 180*zeta^3
- 180*zeta)*q^1317 + (-864*zeta^4 + 432)*q^1318 + (-120*zeta^7 - 60*zeta^5 + 
60*zeta^3 - 60*zeta)*q^1319 + (252*zeta^7 + 126*zeta^5 - 126*zeta^3 + 
126*zeta)*q^1321 + (960*zeta^4 - 480)*q^1322 + (-36*zeta^7 - 18*zeta^5 + 
18*zeta^3 - 18*zeta)*q^1323 + (36*zeta^7 + 18*zeta^5 - 18*zeta^3 + 
18*zeta)*q^1325 + (132*zeta^7 + 66*zeta^5 - 66*zeta^3 + 66*zeta)*q^1327 + 
(288*zeta^7 + 144*zeta^5 - 144*zeta^3 + 144*zeta)*q^1329 + (-48*zeta^7 - 
24*zeta^5 + 24*zeta^3 - 24*zeta)*q^1333 + (-576*zeta^4 + 288)*q^1334 + 
(-240*zeta^7 - 120*zeta^5 + 120*zeta^3 - 120*zeta)*q^1335 + (96*zeta^7 + 
48*zeta^5 - 48*zeta^3 + 48*zeta)*q^1337 + (-672*zeta^4 + 336)*q^1338 + 
(-144*zeta^7 - 72*zeta^5 + 72*zeta^3 - 72*zeta)*q^1339 + (-72*zeta^7 - 36*zeta^5
+ 36*zeta^3 - 36*zeta)*q^1341 + (120*zeta^7 + 60*zeta^5 - 60*zeta^3 + 
60*zeta)*q^1343 + (72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^1345 + 
(-360*zeta^7 - 180*zeta^5 + 180*zeta^3 - 180*zeta)*q^1347 + (288*zeta^7 + 
144*zeta^5 - 144*zeta^3 + 144*zeta)*q^1349 + (-48*zeta^4 + 24)*q^1350 + 
(-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 36*zeta)*q^1351 + (-432*zeta^4 + 
216)*q^1354 + (216*zeta^7 + 108*zeta^5 - 108*zeta^3 + 108*zeta)*q^1355 + 
(96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 48*zeta)*q^1357 + (216*zeta^7 + 108*zeta^5 
- 108*zeta^3 + 108*zeta)*q^1359 + (132*zeta^7 + 66*zeta^5 - 66*zeta^3 + 
66*zeta)*q^1361 + (-432*zeta^7 - 216*zeta^5 + 216*zeta^3 - 216*zeta)*q^1363 + 
(-192*zeta^7 - 96*zeta^5 + 96*zeta^3 - 96*zeta)*q^1365 + (384*zeta^4 - 
192)*q^1366 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^1367 + 
(-162*zeta^7 - 81*zeta^5 + 81*zeta^3 - 81*zeta)*q^1369 + (-864*zeta^4 + 
432)*q^1370 + (264*zeta^7 + 132*zeta^5 - 132*zeta^3 + 132*zeta)*q^1371 + 
(276*zeta^7 + 138*zeta^5 - 138*zeta^3 + 138*zeta)*q^1373 + (24*zeta^7 + 
12*zeta^5 - 12*zeta^3 + 12*zeta)*q^1377 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 
12*zeta)*q^1379 + (-120*zeta^7 - 60*zeta^5 + 60*zeta^3 - 60*zeta)*q^1381 + 
(-480*zeta^4 + 240)*q^1382 + (360*zeta^7 + 180*zeta^5 - 180*zeta^3 + 
180*zeta)*q^1383 + (-336*zeta^7 - 168*zeta^5 + 168*zeta^3 - 168*zeta)*q^1385 + 
(144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^1387 + (-312*zeta^7 - 
156*zeta^5 + 156*zeta^3 - 156*zeta)*q^1389 + (288*zeta^7 + 144*zeta^5 - 
144*zeta^3 + 144*zeta)*q^1391 + (-120*zeta^7 - 60*zeta^5 + 60*zeta^3 - 
60*zeta)*q^1393 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^1395 + 
(672*zeta^4 - 336)*q^1398 + (180*zeta^7 + 90*zeta^5 - 90*zeta^3 + 
90*zeta)*q^1399 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^1401 + 
(-1200*zeta^4 + 600)*q^1402 + (-216*zeta^7 - 108*zeta^5 + 108*zeta^3 - 
108*zeta)*q^1405 + (288*zeta^7 + 144*zeta^5 - 144*zeta^3 + 144*zeta)*q^1407 + 
(-60*zeta^7 - 30*zeta^5 + 30*zeta^3 - 30*zeta)*q^1409 + (192*zeta^7 + 96*zeta^5 
- 96*zeta^3 + 96*zeta)*q^1411 + (96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 
48*zeta)*q^1413 + (480*zeta^4 - 240)*q^1414 + (-48*zeta^7 - 24*zeta^5 + 
24*zeta^3 - 24*zeta)*q^1415 + (96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 
48*zeta)*q^1417 + (-96*zeta^4 + 48)*q^1418 + (108*zeta^7 + 54*zeta^5 - 54*zeta^3
+ 54*zeta)*q^1421 + (156*zeta^7 + 78*zeta^5 - 78*zeta^3 + 78*zeta)*q^1423 + 
(-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^1425 + (192*zeta^7 + 96*zeta^5 
- 96*zeta^3 + 96*zeta)*q^1427 + (-336*zeta^7 - 168*zeta^5 + 168*zeta^3 - 
168*zeta)*q^1429 + (-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 36*zeta)*q^1431 + 
(324*zeta^7 + 162*zeta^5 - 162*zeta^3 + 162*zeta)*q^1433 + (48*zeta^7 + 
24*zeta^5 - 24*zeta^3 + 24*zeta)*q^1435 + (240*zeta^7 + 120*zeta^5 - 120*zeta^3 
+ 120*zeta)*q^1437 + (-120*zeta^7 - 60*zeta^5 + 60*zeta^3 - 60*zeta)*q^1439 + 
(-384*zeta^7 - 192*zeta^5 + 192*zeta^3 - 192*zeta)*q^1443 + (-156*zeta^7 - 
78*zeta^5 + 78*zeta^3 - 78*zeta)*q^1445 + (96*zeta^4 - 48)*q^1446 + (372*zeta^7 
+ 186*zeta^5 - 186*zeta^3 + 186*zeta)*q^1447 + (-96*zeta^7 - 48*zeta^5 + 
48*zeta^3 - 48*zeta)*q^1449 + (144*zeta^4 - 72)*q^1450 + (-360*zeta^7 - 
180*zeta^5 + 180*zeta^3 - 180*zeta)*q^1451 + (-264*zeta^7 - 132*zeta^5 + 
132*zeta^3 - 132*zeta)*q^1453 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 
24*zeta)*q^1455 + (-144*zeta^7 - 72*zeta^5 + 72*zeta^3 - 72*zeta)*q^1457 + 
(-264*zeta^7 - 132*zeta^5 + 132*zeta^3 - 132*zeta)*q^1459 + (456*zeta^7 + 
228*zeta^5 - 228*zeta^3 + 228*zeta)*q^1461 + (192*zeta^4 - 96)*q^1462 + 
(-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 36*zeta)*q^1465 + (96*zeta^4 - 48)*q^1466 
+ (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^1467 + (144*zeta^7 + 72*zeta^5
- 72*zeta^3 + 72*zeta)*q^1469 + (-132*zeta^7 - 66*zeta^5 + 66*zeta^3 - 
66*zeta)*q^1471 + (240*zeta^7 + 120*zeta^5 - 120*zeta^3 + 120*zeta)*q^1473 + 
(-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^1475 + (-240*zeta^7 - 
120*zeta^5 + 120*zeta^3 - 120*zeta)*q^1477 + (1056*zeta^4 - 528)*q^1478 + 
(144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^1479 + (-108*zeta^7 - 54*zeta^5
+ 54*zeta^3 - 54*zeta)*q^1481 + (-768*zeta^4 + 384)*q^1482 + (24*zeta^7 + 
12*zeta^5 - 12*zeta^3 + 12*zeta)*q^1483 + (72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 
36*zeta)*q^1487 + (-300*zeta^7 - 150*zeta^5 + 150*zeta^3 - 150*zeta)*q^1489 + 
(288*zeta^7 + 144*zeta^5 - 144*zeta^3 + 144*zeta)*q^1491 + (156*zeta^7 + 
78*zeta^5 - 78*zeta^3 + 78*zeta)*q^1493 + (768*zeta^4 - 384)*q^1494 + 
(-192*zeta^7 - 96*zeta^5 + 96*zeta^3 - 96*zeta)*q^1495 + (432*zeta^7 + 
216*zeta^5 - 216*zeta^3 + 216*zeta)*q^1497 + (-576*zeta^4 + 288)*q^1498 + 
(-384*zeta^7 - 192*zeta^5 + 192*zeta^3 - 192*zeta)*q^1499 + (240*zeta^7 + 
120*zeta^5 - 120*zeta^3 + 120*zeta)*q^1501 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3
- 48*zeta)*q^1503 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^1505 + 
(-432*zeta^7 - 216*zeta^5 + 216*zeta^3 - 216*zeta)*q^1509 + (-864*zeta^4 + 
432)*q^1510 + (-312*zeta^7 - 156*zeta^5 + 156*zeta^3 - 156*zeta)*q^1511 + 
(120*zeta^7 + 60*zeta^5 - 60*zeta^3 + 60*zeta)*q^1513 + (288*zeta^4 - 
144)*q^1514 + (-240*zeta^7 - 120*zeta^5 + 120*zeta^3 - 120*zeta)*q^1515 + 
(96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 48*zeta)*q^1517 + (36*zeta^7 + 18*zeta^5 - 
18*zeta^3 + 18*zeta)*q^1519 + (-36*zeta^7 - 18*zeta^5 + 18*zeta^3 - 
18*zeta)*q^1521 + (-336*zeta^7 - 168*zeta^5 + 168*zeta^3 - 168*zeta)*q^1523 + 
(-192*zeta^4 + 96)*q^1526 + (-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 
36*zeta)*q^1527 + (192*zeta^4 - 96)*q^1530 + (-120*zeta^7 - 60*zeta^5 + 
60*zeta^3 - 60*zeta)*q^1531 + (144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 
72*zeta)*q^1533 + (-144*zeta^7 - 72*zeta^5 + 72*zeta^3 - 72*zeta)*q^1535 + 
(216*zeta^7 + 108*zeta^5 - 108*zeta^3 + 108*zeta)*q^1537 + (48*zeta^7 + 
24*zeta^5 - 24*zeta^3 + 24*zeta)*q^1539 + (-288*zeta^7 - 144*zeta^5 + 144*zeta^3
- 144*zeta)*q^1541 + (864*zeta^4 - 432)*q^1542 + (-324*zeta^7 - 162*zeta^5 + 
162*zeta^3 - 162*zeta)*q^1543 + (144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 
72*zeta)*q^1545 + (816*zeta^4 - 408)*q^1546 + (96*zeta^7 + 48*zeta^5 - 48*zeta^3
+ 48*zeta)*q^1547 + (144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^1549 + 
(-36*zeta^7 - 18*zeta^5 + 18*zeta^3 - 18*zeta)*q^1553 + (96*zeta^7 + 48*zeta^5 -
48*zeta^3 + 48*zeta)*q^1555 + (72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 
36*zeta)*q^1557 + (192*zeta^4 - 96)*q^1558 + (-120*zeta^7 - 60*zeta^5 + 
60*zeta^3 - 60*zeta)*q^1559 + (-168*zeta^7 - 84*zeta^5 + 84*zeta^3 - 
84*zeta)*q^1561 + (-504*zeta^7 - 252*zeta^5 + 252*zeta^3 - 252*zeta)*q^1563 + 
(168*zeta^7 + 84*zeta^5 - 84*zeta^3 + 84*zeta)*q^1565 + (132*zeta^7 + 66*zeta^5 
- 66*zeta^3 + 66*zeta)*q^1567 + (-432*zeta^7 - 216*zeta^5 + 216*zeta^3 - 
216*zeta)*q^1569 + (360*zeta^7 + 180*zeta^5 - 180*zeta^3 + 180*zeta)*q^1571 + 
(-264*zeta^7 - 132*zeta^5 + 132*zeta^3 - 132*zeta)*q^1573 + (-288*zeta^4 + 
144)*q^1574 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^1575 + 
(-384*zeta^7 - 192*zeta^5 + 192*zeta^3 - 192*zeta)*q^1577 + (768*zeta^4 - 
384)*q^1578 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^1579 + 
(-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^1581 + (-144*zeta^7 - 72*zeta^5
+ 72*zeta^3 - 72*zeta)*q^1583 + (264*zeta^7 + 132*zeta^5 - 132*zeta^3 + 
132*zeta)*q^1585 + (84*zeta^7 + 42*zeta^5 - 42*zeta^3 + 42*zeta)*q^1587 + 
(-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^1589 + (-576*zeta^4 + 
288)*q^1590 + (-192*zeta^7 - 96*zeta^5 + 96*zeta^3 - 96*zeta)*q^1591 + 
(48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^1593 + (48*zeta^4 - 24)*q^1594 +
(-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 36*zeta)*q^1597 + (-96*zeta^7 - 48*zeta^5 
+ 48*zeta^3 - 48*zeta)*q^1599 + (252*zeta^7 + 126*zeta^5 - 126*zeta^3 + 
126*zeta)*q^1601 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^1603 + 
(288*zeta^7 + 144*zeta^5 - 144*zeta^3 + 144*zeta)*q^1605 + (72*zeta^7 + 
36*zeta^5 - 36*zeta^3 + 36*zeta)*q^1607 + O(q^1608), (-6*zeta^4 + 3)*q^2 + 
(-6*zeta^7 - 3*zeta^5 + 3*zeta^3 - 3*zeta)*q^3 + (6*zeta^7 + 3*zeta^5 - 3*zeta^3
+ 3*zeta)*q^5 + (12*zeta^4 - 6)*q^6 + (-12*zeta^4 + 6)*q^10 + (-12*zeta^7 - 
6*zeta^5 + 6*zeta^3 - 6*zeta)*q^13 + (-12*zeta^4 + 6)*q^14 + (-12*zeta^4 + 
6)*q^18 + (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^19 + (-12*zeta^7 - 
6*zeta^5 + 6*zeta^3 - 6*zeta)*q^21 + (24*zeta^4 - 12)*q^26 + (6*zeta^7 + 
3*zeta^5 - 3*zeta^3 + 3*zeta)*q^27 + (-18*zeta^7 - 9*zeta^5 + 9*zeta^3 - 
9*zeta)*q^29 + (-24*zeta^4 + 12)*q^30 + (12*zeta^4 - 6)*q^34 + (12*zeta^7 + 
6*zeta^5 - 6*zeta^3 + 6*zeta)*q^35 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 
12*zeta)*q^37 + (24*zeta^4 - 12)*q^38 + (24*zeta^4 - 12)*q^42 + (12*zeta^7 + 
6*zeta^5 - 6*zeta^3 + 6*zeta)*q^43 + (12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 
6*zeta)*q^45 + (24*zeta^4 - 12)*q^46 + (-6*zeta^4 + 3)*q^50 + (12*zeta^7 + 
6*zeta^5 - 6*zeta^3 + 6*zeta)*q^51 + (18*zeta^7 + 9*zeta^5 - 9*zeta^3 + 
9*zeta)*q^53 + (-12*zeta^4 + 6)*q^54 + (36*zeta^4 - 18)*q^58 + (-12*zeta^7 - 
6*zeta^5 + 6*zeta^3 - 6*zeta)*q^59 + (12*zeta^4 - 6)*q^62 + (36*zeta^7 + 
18*zeta^5 - 18*zeta^3 + 18*zeta)*q^67 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 
12*zeta)*q^69 + (-24*zeta^4 + 12)*q^70 + (-48*zeta^4 + 24)*q^74 + (-6*zeta^7 - 
3*zeta^5 + 3*zeta^3 - 3*zeta)*q^75 + (48*zeta^4 - 24)*q^78 + (-12*zeta^4 + 
6)*q^82 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^83 + (-12*zeta^7 - 
6*zeta^5 + 6*zeta^3 - 6*zeta)*q^85 + (-24*zeta^4 + 12)*q^86 + (-24*zeta^4 + 
12)*q^90 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^91 + (12*zeta^7 + 
6*zeta^5 - 6*zeta^3 + 6*zeta)*q^93 + (-72*zeta^4 + 36)*q^94 + (18*zeta^4 - 
9)*q^98 + (-30*zeta^7 - 15*zeta^5 + 15*zeta^3 - 15*zeta)*q^101 + (-24*zeta^4 + 
12)*q^102 + (-36*zeta^4 + 18)*q^106 + (36*zeta^7 + 18*zeta^5 - 18*zeta^3 + 
18*zeta)*q^107 + (12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 6*zeta)*q^109 + (48*zeta^4 -
24)*q^114 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^115 + (-24*zeta^7 -
12*zeta^5 + 12*zeta^3 - 12*zeta)*q^117 + (24*zeta^4 - 12)*q^118 + (-12*zeta^7 - 
6*zeta^5 + 6*zeta^3 - 6*zeta)*q^123 + (36*zeta^7 + 18*zeta^5 - 18*zeta^3 + 
18*zeta)*q^125 + (-24*zeta^4 + 12)*q^126 + (-48*zeta^4 + 24)*q^130 + (60*zeta^7 
+ 30*zeta^5 - 30*zeta^3 + 30*zeta)*q^131 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 -
12*zeta)*q^133 + (-72*zeta^4 + 36)*q^134 + (-48*zeta^4 + 24)*q^138 + (-12*zeta^7
- 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^139 + (-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 
36*zeta)*q^141 + (72*zeta^4 - 36)*q^142 + (36*zeta^4 - 18)*q^146 + (18*zeta^7 + 
9*zeta^5 - 9*zeta^3 + 9*zeta)*q^147 + (-18*zeta^7 - 9*zeta^5 + 9*zeta^3 - 
9*zeta)*q^149 + (12*zeta^4 - 6)*q^150 + (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 
6*zeta)*q^155 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^157 + (60*zeta^4
- 30)*q^158 + (12*zeta^4 - 6)*q^162 + (12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 
6*zeta)*q^163 + (96*zeta^4 - 48)*q^166 + (24*zeta^4 - 12)*q^170 + (-24*zeta^7 - 
12*zeta^5 + 12*zeta^3 - 12*zeta)*q^171 + (18*zeta^7 + 9*zeta^5 - 9*zeta^3 + 
9*zeta)*q^173 + (72*zeta^4 - 36)*q^174 + (60*zeta^4 - 30)*q^178 + (-12*zeta^7 - 
6*zeta^5 + 6*zeta^3 - 6*zeta)*q^179 + (-60*zeta^7 - 30*zeta^5 + 30*zeta^3 - 
30*zeta)*q^181 + (48*zeta^4 - 24)*q^182 + (-24*zeta^4 + 12)*q^186 + (12*zeta^7 +
6*zeta^5 - 6*zeta^3 + 6*zeta)*q^189 + (-48*zeta^4 + 24)*q^190 + (12*zeta^4 - 
6)*q^194 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^195 + (-6*zeta^7 - 
3*zeta^5 + 3*zeta^3 - 3*zeta)*q^197 + (60*zeta^4 - 30)*q^202 + (-36*zeta^7 - 
18*zeta^5 + 18*zeta^3 - 18*zeta)*q^203 + (12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 
6*zeta)*q^205 + (-36*zeta^4 + 18)*q^206 + (-48*zeta^4 + 24)*q^210 + (-60*zeta^7 
- 30*zeta^5 + 30*zeta^3 - 30*zeta)*q^211 + (72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 
36*zeta)*q^213 + (-72*zeta^4 + 36)*q^214 + (-24*zeta^4 + 12)*q^218 + (36*zeta^7 
+ 18*zeta^5 - 18*zeta^3 + 18*zeta)*q^219 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 
12*zeta)*q^221 + (-96*zeta^4 + 48)*q^222 + (36*zeta^4 - 18)*q^226 + (-24*zeta^7 
- 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^227 + (12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 
6*zeta)*q^229 + (48*zeta^4 - 24)*q^230 + (48*zeta^4 - 24)*q^234 + (72*zeta^7 + 
36*zeta^5 - 36*zeta^3 + 36*zeta)*q^235 + (60*zeta^7 + 30*zeta^5 - 30*zeta^3 + 
30*zeta)*q^237 + (24*zeta^4 - 12)*q^238 + (-66*zeta^4 + 33)*q^242 + (-6*zeta^7 -
3*zeta^5 + 3*zeta^3 - 3*zeta)*q^243 + (-18*zeta^7 - 9*zeta^5 + 9*zeta^3 - 
9*zeta)*q^245 + (24*zeta^4 - 12)*q^246 + (-72*zeta^4 + 36)*q^250 + (-12*zeta^4 +
6)*q^254 + (-48*zeta^4 + 24)*q^258 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 
24*zeta)*q^259 + (-36*zeta^7 - 18*zeta^5 + 18*zeta^3 - 18*zeta)*q^261 + 
(-120*zeta^4 + 60)*q^262 + (48*zeta^4 - 24)*q^266 + (60*zeta^7 + 30*zeta^5 - 
30*zeta^3 + 30*zeta)*q^267 + (-18*zeta^7 - 9*zeta^5 + 9*zeta^3 - 9*zeta)*q^269 +
(24*zeta^4 - 12)*q^270 + (-108*zeta^4 + 54)*q^274 + (84*zeta^7 + 42*zeta^5 - 
42*zeta^3 + 42*zeta)*q^277 + (24*zeta^4 - 12)*q^278 + (144*zeta^4 - 72)*q^282 + 
(12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 6*zeta)*q^283 + (-48*zeta^7 - 24*zeta^5 + 
24*zeta^3 - 24*zeta)*q^285 + (-72*zeta^4 + 36)*q^290 + (12*zeta^7 + 6*zeta^5 - 
6*zeta^3 + 6*zeta)*q^291 + (18*zeta^7 + 9*zeta^5 - 9*zeta^3 + 9*zeta)*q^293 + 
(-36*zeta^4 + 18)*q^294 + (36*zeta^4 - 18)*q^298 + (48*zeta^7 + 24*zeta^5 - 
24*zeta^3 + 24*zeta)*q^299 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^301
+ (-108*zeta^4 + 54)*q^302 + (24*zeta^4 - 12)*q^306 + (36*zeta^7 + 18*zeta^5 - 
18*zeta^3 + 18*zeta)*q^307 + (-36*zeta^7 - 18*zeta^5 + 18*zeta^3 - 
18*zeta)*q^309 + (24*zeta^4 - 12)*q^310 + (-48*zeta^4 + 24)*q^314 + (24*zeta^7 +
12*zeta^5 - 12*zeta^3 + 12*zeta)*q^315 + (-66*zeta^7 - 33*zeta^5 + 33*zeta^3 - 
33*zeta)*q^317 + (-72*zeta^4 + 36)*q^318 + (48*zeta^4 - 24)*q^322 + (24*zeta^7 +
12*zeta^5 - 12*zeta^3 + 12*zeta)*q^323 + (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 
6*zeta)*q^325 + (-24*zeta^4 + 12)*q^326 + (-60*zeta^7 - 30*zeta^5 + 30*zeta^3 - 
30*zeta)*q^331 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^333 + 
(48*zeta^4 - 24)*q^334 + (18*zeta^4 - 9)*q^338 + (36*zeta^7 + 18*zeta^5 - 
18*zeta^3 + 18*zeta)*q^339 + (48*zeta^4 - 24)*q^342 + (-36*zeta^4 + 18)*q^346 + 
(-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^347 + (-48*zeta^7 - 24*zeta^5 +
24*zeta^3 - 24*zeta)*q^349 + (-12*zeta^4 + 6)*q^350 + (48*zeta^4 - 24)*q^354 + 
(-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 36*zeta)*q^355 + (24*zeta^7 + 12*zeta^5 - 
12*zeta^3 + 12*zeta)*q^357 + (24*zeta^4 - 12)*q^358 + (120*zeta^4 - 60)*q^362 + 
(-66*zeta^7 - 33*zeta^5 + 33*zeta^3 - 33*zeta)*q^363 + (-36*zeta^7 - 18*zeta^5 +
18*zeta^3 - 18*zeta)*q^365 + (96*zeta^4 - 48)*q^370 + (36*zeta^7 + 18*zeta^5 - 
18*zeta^3 + 18*zeta)*q^371 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^373
+ (-24*zeta^4 + 12)*q^378 + (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^379 + 
(-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^381 + (-48*zeta^4 + 24)*q^382 + 
(36*zeta^4 - 18)*q^386 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^387 + 
(102*zeta^7 + 51*zeta^5 - 51*zeta^3 + 51*zeta)*q^389 + (96*zeta^4 - 48)*q^390 + 
(12*zeta^4 - 6)*q^394 + (-60*zeta^7 - 30*zeta^5 + 30*zeta^3 - 30*zeta)*q^395 + 
(-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^397 + (60*zeta^4 - 30)*q^398 + 
(-144*zeta^4 + 72)*q^402 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^403 +
(-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^405 + (72*zeta^4 - 36)*q^406 + 
(-24*zeta^4 + 12)*q^410 + (-108*zeta^7 - 54*zeta^5 + 54*zeta^3 - 54*zeta)*q^411 
+ (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^413 + (48*zeta^4 - 24)*q^414 
+ (-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 36*zeta)*q^419 + (-60*zeta^7 - 30*zeta^5
+ 30*zeta^3 - 30*zeta)*q^421 + (120*zeta^4 - 60)*q^422 + (-144*zeta^4 + 
72)*q^426 + (48*zeta^4 - 24)*q^430 + (24*zeta^4 - 12)*q^434 + (-72*zeta^7 - 
36*zeta^5 + 36*zeta^3 - 36*zeta)*q^435 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 
24*zeta)*q^437 + (-72*zeta^4 + 36)*q^438 + (-48*zeta^4 + 24)*q^442 + (72*zeta^7 
+ 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^443 + (-60*zeta^7 - 30*zeta^5 + 30*zeta^3 -
30*zeta)*q^445 + (84*zeta^4 - 42)*q^446 + (-12*zeta^4 + 6)*q^450 + (-108*zeta^7 
- 54*zeta^5 + 54*zeta^3 - 54*zeta)*q^453 + (48*zeta^4 - 24)*q^454 + (-24*zeta^4 
+ 12)*q^458 + (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^459 + (90*zeta^7 + 
45*zeta^5 - 45*zeta^3 + 45*zeta)*q^461 + (-84*zeta^4 + 42)*q^466 + (-24*zeta^7 -
12*zeta^5 + 12*zeta^3 - 12*zeta)*q^467 + (72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 
36*zeta)*q^469 + (-144*zeta^4 + 72)*q^470 + (-120*zeta^4 + 60)*q^474 + 
(-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^475 + (36*zeta^7 + 18*zeta^5 - 
18*zeta^3 + 18*zeta)*q^477 + (-12*zeta^4 + 6)*q^482 + (48*zeta^7 + 24*zeta^5 - 
24*zeta^3 + 24*zeta)*q^483 + (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^485 +
(12*zeta^4 - 6)*q^486 + (36*zeta^4 - 18)*q^490 + (60*zeta^7 + 30*zeta^5 - 
30*zeta^3 + 30*zeta)*q^491 + (36*zeta^7 + 18*zeta^5 - 18*zeta^3 + 18*zeta)*q^493
+ (96*zeta^4 - 48)*q^494 + (192*zeta^4 - 96)*q^498 + (108*zeta^7 + 54*zeta^5 - 
54*zeta^3 + 54*zeta)*q^499 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^501
+ (18*zeta^7 + 9*zeta^5 - 9*zeta^3 + 9*zeta)*q^507 + (-18*zeta^7 - 9*zeta^5 + 
9*zeta^3 - 9*zeta)*q^509 + (48*zeta^4 - 24)*q^510 + (-108*zeta^4 + 54)*q^514 + 
(36*zeta^7 + 18*zeta^5 - 18*zeta^3 + 18*zeta)*q^515 + (-96*zeta^4 + 48)*q^518 + 
(72*zeta^4 - 36)*q^522 + (-108*zeta^7 - 54*zeta^5 + 54*zeta^3 - 54*zeta)*q^523 +
(-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^525 + (-96*zeta^4 + 48)*q^526 + 
(72*zeta^4 - 36)*q^530 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^531 + 
(-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^533 + (-120*zeta^4 + 60)*q^534 
+ (36*zeta^4 - 18)*q^538 + (60*zeta^7 + 30*zeta^5 - 30*zeta^3 + 30*zeta)*q^541 +
(-108*zeta^4 + 54)*q^542 + (96*zeta^4 - 48)*q^546 + (-84*zeta^7 - 42*zeta^5 + 
42*zeta^3 - 42*zeta)*q^547 + (-168*zeta^4 + 84)*q^554 + (96*zeta^7 + 48*zeta^5 -
48*zeta^3 + 48*zeta)*q^555 + (-126*zeta^7 - 63*zeta^5 + 63*zeta^3 - 
63*zeta)*q^557 + (24*zeta^4 - 12)*q^558 + (108*zeta^4 - 54)*q^562 + (72*zeta^7 +
36*zeta^5 - 36*zeta^3 + 36*zeta)*q^563 + (-36*zeta^7 - 18*zeta^5 + 18*zeta^3 - 
18*zeta)*q^565 + (-24*zeta^4 + 12)*q^566 + (96*zeta^4 - 48)*q^570 + (60*zeta^7 +
30*zeta^5 - 30*zeta^3 + 30*zeta)*q^571 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 
24*zeta)*q^573 + (-24*zeta^4 + 12)*q^574 + (78*zeta^4 - 39)*q^578 + (36*zeta^7 +
18*zeta^5 - 18*zeta^3 + 18*zeta)*q^579 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 
48*zeta)*q^581 + (-24*zeta^4 + 12)*q^582 + (-36*zeta^4 + 18)*q^586 + (-84*zeta^7
- 42*zeta^5 + 42*zeta^3 - 42*zeta)*q^587 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 
12*zeta)*q^589 + (-48*zeta^4 + 24)*q^590 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 -
12*zeta)*q^595 + (60*zeta^7 + 30*zeta^5 - 30*zeta^3 + 30*zeta)*q^597 + 
(-96*zeta^4 + 48)*q^598 + (-48*zeta^4 + 24)*q^602 + (72*zeta^7 + 36*zeta^5 - 
36*zeta^3 + 36*zeta)*q^603 + (66*zeta^7 + 33*zeta^5 - 33*zeta^3 + 33*zeta)*q^605
+ (120*zeta^4 - 60)*q^606 + (-144*zeta^7 - 72*zeta^5 + 72*zeta^3 - 
72*zeta)*q^611 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^613 + 
(-72*zeta^4 + 36)*q^614 + (72*zeta^4 - 36)*q^618 + (108*zeta^7 + 54*zeta^5 - 
54*zeta^3 + 54*zeta)*q^619 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 
12*zeta)*q^621 + (-48*zeta^4 + 24)*q^622 + (-84*zeta^4 + 42)*q^626 + (-48*zeta^7
- 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^629 + (-48*zeta^4 + 24)*q^630 + (132*zeta^4
- 66)*q^634 + (12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 6*zeta)*q^635 + (36*zeta^7 + 
18*zeta^5 - 18*zeta^3 + 18*zeta)*q^637 + (-144*zeta^4 + 72)*q^642 + (12*zeta^7 +
6*zeta^5 - 6*zeta^3 + 6*zeta)*q^643 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 
24*zeta)*q^645 + (-48*zeta^4 + 24)*q^646 + (24*zeta^4 - 12)*q^650 + (24*zeta^7 +
12*zeta^5 - 12*zeta^3 + 12*zeta)*q^651 + (18*zeta^7 + 9*zeta^5 - 9*zeta^3 + 
9*zeta)*q^653 + (-48*zeta^4 + 24)*q^654 + (-144*zeta^4 + 72)*q^658 + (108*zeta^7
+ 54*zeta^5 - 54*zeta^3 + 54*zeta)*q^659 + (-120*zeta^7 - 60*zeta^5 + 60*zeta^3 
- 60*zeta)*q^661 + (120*zeta^4 - 60)*q^662 + (-96*zeta^4 + 48)*q^666 + 
(72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^667 + (84*zeta^7 + 42*zeta^5 - 
42*zeta^3 + 42*zeta)*q^669 + (144*zeta^4 - 72)*q^670 + (12*zeta^4 - 6)*q^674 + 
(6*zeta^7 + 3*zeta^5 - 3*zeta^3 + 3*zeta)*q^675 + (54*zeta^7 + 27*zeta^5 - 
27*zeta^3 + 27*zeta)*q^677 + (-72*zeta^4 + 36)*q^678 + (-48*zeta^7 - 24*zeta^5 +
24*zeta^3 - 24*zeta)*q^683 + (108*zeta^7 + 54*zeta^5 - 54*zeta^3 + 
54*zeta)*q^685 + (120*zeta^4 - 60)*q^686 + (96*zeta^4 - 48)*q^690 + (60*zeta^7 +
30*zeta^5 - 30*zeta^3 + 30*zeta)*q^691 + (48*zeta^4 - 24)*q^694 + (96*zeta^4 - 
48)*q^698 + (-84*zeta^7 - 42*zeta^5 + 42*zeta^3 - 42*zeta)*q^699 + (150*zeta^7 +
75*zeta^5 - 75*zeta^3 + 75*zeta)*q^701 + (-48*zeta^4 + 24)*q^702 + (36*zeta^4 - 
18)*q^706 + (-60*zeta^7 - 30*zeta^5 + 30*zeta^3 - 30*zeta)*q^707 + (12*zeta^7 + 
6*zeta^5 - 6*zeta^3 + 6*zeta)*q^709 + (144*zeta^4 - 72)*q^710 + (-48*zeta^4 + 
24)*q^714 + (-120*zeta^4 + 60)*q^718 + (-18*zeta^4 + 9)*q^722 + (-12*zeta^7 - 
6*zeta^5 + 6*zeta^3 - 6*zeta)*q^723 + (-18*zeta^7 - 9*zeta^5 + 9*zeta^3 - 
9*zeta)*q^725 + (132*zeta^4 - 66)*q^726 + (72*zeta^4 - 36)*q^730 + (-24*zeta^7 -
12*zeta^5 + 12*zeta^3 - 12*zeta)*q^731 + (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 
6*zeta)*q^733 + (108*zeta^4 - 54)*q^734 + (-24*zeta^4 + 12)*q^738 + (-132*zeta^7
- 66*zeta^5 + 66*zeta^3 - 66*zeta)*q^739 + (96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 
48*zeta)*q^741 + (-72*zeta^4 + 36)*q^742 + (-96*zeta^4 + 48)*q^746 + (-96*zeta^7
- 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^747 + (72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 
36*zeta)*q^749 + (-144*zeta^4 + 72)*q^750 + (144*zeta^4 - 72)*q^754 + 
(108*zeta^7 + 54*zeta^5 - 54*zeta^3 + 54*zeta)*q^755 + (-36*zeta^7 - 18*zeta^5 +
18*zeta^3 - 18*zeta)*q^757 + (24*zeta^4 - 12)*q^758 + (24*zeta^4 - 12)*q^762 + 
(24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^763 + (-24*zeta^7 - 12*zeta^5 + 
12*zeta^3 - 12*zeta)*q^765 + (144*zeta^4 - 72)*q^766 + (-108*zeta^7 - 54*zeta^5 
+ 54*zeta^3 - 54*zeta)*q^771 + (-102*zeta^7 - 51*zeta^5 + 51*zeta^3 - 
51*zeta)*q^773 + (-48*zeta^4 + 24)*q^774 + (-204*zeta^4 + 102)*q^778 + 
(-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^779 + (-48*zeta^4 + 24)*q^782 +
(-240*zeta^4 + 120)*q^786 + (36*zeta^7 + 18*zeta^5 - 18*zeta^3 + 18*zeta)*q^787 
+ (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 48*zeta)*q^789 + (120*zeta^4 - 60)*q^790
+ (192*zeta^4 - 96)*q^794 + (72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^795 
+ (-6*zeta^7 - 3*zeta^5 + 3*zeta^3 - 3*zeta)*q^797 + (96*zeta^4 - 48)*q^798 + 
(108*zeta^4 - 54)*q^802 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^805 +
(-48*zeta^4 + 24)*q^806 + (24*zeta^4 - 12)*q^810 + (-60*zeta^7 - 30*zeta^5 + 
30*zeta^3 - 30*zeta)*q^811 + (-108*zeta^7 - 54*zeta^5 + 54*zeta^3 - 
54*zeta)*q^813 + (-60*zeta^4 + 30)*q^818 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 -
24*zeta)*q^819 + (-30*zeta^7 - 15*zeta^5 + 15*zeta^3 - 15*zeta)*q^821 + 
(216*zeta^4 - 108)*q^822 + (48*zeta^4 - 24)*q^826 + (36*zeta^7 + 18*zeta^5 - 
18*zeta^3 + 18*zeta)*q^827 + (12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 6*zeta)*q^829 + 
(-192*zeta^4 + 96)*q^830 + (48*zeta^4 - 24)*q^834 + (-48*zeta^7 - 24*zeta^5 + 
24*zeta^3 - 24*zeta)*q^835 + (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^837 +
(144*zeta^4 - 72)*q^838 + (120*zeta^4 - 60)*q^842 + (108*zeta^7 + 54*zeta^5 - 
54*zeta^3 + 54*zeta)*q^843 + (-18*zeta^7 - 9*zeta^5 + 9*zeta^3 - 9*zeta)*q^845 +
(-144*zeta^4 + 72)*q^846 + (12*zeta^4 - 6)*q^850 + (-96*zeta^7 - 48*zeta^5 + 
48*zeta^3 - 48*zeta)*q^851 + (-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 
36*zeta)*q^853 + (-132*zeta^7 - 66*zeta^5 + 66*zeta^3 - 66*zeta)*q^859 + 
(-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^861 + (72*zeta^4 - 36)*q^862 + 
(-84*zeta^4 + 42)*q^866 + (78*zeta^7 + 39*zeta^5 - 39*zeta^3 + 39*zeta)*q^867 + 
(144*zeta^4 - 72)*q^870 + (-96*zeta^4 + 48)*q^874 + (72*zeta^7 + 36*zeta^5 - 
36*zeta^3 + 36*zeta)*q^875 + (-96*zeta^7 - 48*zeta^5 + 48*zeta^3 - 
48*zeta)*q^877 + (-180*zeta^4 + 90)*q^878 + (36*zeta^4 - 18)*q^882 + (12*zeta^7 
+ 6*zeta^5 - 6*zeta^3 + 6*zeta)*q^883 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 
24*zeta)*q^885 + (-144*zeta^4 + 72)*q^886 + (120*zeta^4 - 60)*q^890 + 
(-144*zeta^7 - 72*zeta^5 + 72*zeta^3 - 72*zeta)*q^893 + (72*zeta^4 - 36)*q^894 +
(-180*zeta^4 + 90)*q^898 + (36*zeta^7 + 18*zeta^5 - 18*zeta^3 + 18*zeta)*q^899 +
(-36*zeta^7 - 18*zeta^5 + 18*zeta^3 - 18*zeta)*q^901 + (216*zeta^4 - 108)*q^906 
+ (-84*zeta^7 - 42*zeta^5 + 42*zeta^3 - 42*zeta)*q^907 + (-60*zeta^7 - 30*zeta^5
+ 30*zeta^3 - 30*zeta)*q^909 + (-96*zeta^4 + 48)*q^910 + (132*zeta^4 - 66)*q^914
+ (120*zeta^7 + 60*zeta^5 - 60*zeta^3 + 60*zeta)*q^917 + (24*zeta^4 - 12)*q^918 
+ (-180*zeta^4 + 90)*q^922 + (144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 
72*zeta)*q^923 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^925 + 
(-156*zeta^4 + 78)*q^926 + (48*zeta^4 - 24)*q^930 + (36*zeta^7 + 18*zeta^5 - 
18*zeta^3 + 18*zeta)*q^931 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 
24*zeta)*q^933 + (48*zeta^4 - 24)*q^934 + (-144*zeta^4 + 72)*q^938 + (-84*zeta^7
- 42*zeta^5 + 42*zeta^3 - 42*zeta)*q^939 + (90*zeta^7 + 45*zeta^5 - 45*zeta^3 + 
45*zeta)*q^941 + (-96*zeta^4 + 48)*q^942 + (36*zeta^7 + 18*zeta^5 - 18*zeta^3 + 
18*zeta)*q^947 + (72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^949 + 
(24*zeta^4 - 12)*q^950 + (-72*zeta^4 + 36)*q^954 + (48*zeta^7 + 24*zeta^5 - 
24*zeta^3 + 24*zeta)*q^955 + (120*zeta^4 - 60)*q^958 + (-192*zeta^4 + 96)*q^962 
+ (72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^963 + (-36*zeta^7 - 18*zeta^5 
+ 18*zeta^3 - 18*zeta)*q^965 + (-96*zeta^4 + 48)*q^966 + (24*zeta^4 - 12)*q^970 
+ (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^973 + (228*zeta^4 - 
114)*q^974 + (-48*zeta^4 + 24)*q^978 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 
12*zeta)*q^981 + (-120*zeta^4 + 60)*q^982 + (-72*zeta^4 + 36)*q^986 + 
(-144*zeta^7 - 72*zeta^5 + 72*zeta^3 - 72*zeta)*q^987 + (-48*zeta^7 - 24*zeta^5 
+ 24*zeta^3 - 24*zeta)*q^989 + (144*zeta^4 - 72)*q^994 + (-60*zeta^7 - 30*zeta^5
+ 30*zeta^3 - 30*zeta)*q^995 + (144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 
72*zeta)*q^997 + (-216*zeta^4 + 108)*q^998 + (-96*zeta^4 + 48)*q^1002 + 
(24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^1003 + (144*zeta^7 + 72*zeta^5 -
72*zeta^3 + 72*zeta)*q^1005 + (-216*zeta^4 + 108)*q^1006 + (-120*zeta^4 + 
60)*q^1010 + (12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 6*zeta)*q^1011 + (78*zeta^7 + 
39*zeta^5 - 39*zeta^3 + 39*zeta)*q^1013 + (-36*zeta^4 + 18)*q^1014 + (36*zeta^4 
- 18)*q^1018 + (-132*zeta^7 - 66*zeta^5 + 66*zeta^3 - 66*zeta)*q^1019 + 
(120*zeta^7 + 60*zeta^5 - 60*zeta^3 + 60*zeta)*q^1021 + (72*zeta^4 - 36)*q^1022 
+ (-48*zeta^4 + 24)*q^1026 + (120*zeta^7 + 60*zeta^5 - 60*zeta^3 + 
60*zeta)*q^1027 + (120*zeta^7 + 60*zeta^5 - 60*zeta^3 + 60*zeta)*q^1029 + 
(-72*zeta^4 + 36)*q^1030 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^1035
+ (-72*zeta^4 + 36)*q^1038 + (-252*zeta^4 + 126)*q^1042 + (-36*zeta^7 - 
18*zeta^5 + 18*zeta^3 - 18*zeta)*q^1043 + (216*zeta^4 - 108)*q^1046 + (24*zeta^4
- 12)*q^1050 + (60*zeta^7 + 30*zeta^5 - 30*zeta^3 + 30*zeta)*q^1051 + (24*zeta^7
+ 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^1053 + (-24*zeta^4 + 12)*q^1054 + 
(42*zeta^4 - 21)*q^1058 + (36*zeta^7 + 18*zeta^5 - 18*zeta^3 + 18*zeta)*q^1059 +
(30*zeta^7 + 15*zeta^5 - 15*zeta^3 + 15*zeta)*q^1061 + (48*zeta^4 - 24)*q^1062 +
(48*zeta^4 - 24)*q^1066 + (-168*zeta^7 - 84*zeta^5 + 84*zeta^3 - 84*zeta)*q^1069
+ (144*zeta^4 - 72)*q^1070 + (48*zeta^4 - 24)*q^1074 + (12*zeta^7 + 6*zeta^5 - 
6*zeta^3 + 6*zeta)*q^1075 + (-120*zeta^7 - 60*zeta^5 + 60*zeta^3 - 
60*zeta)*q^1077 + (-120*zeta^4 + 60)*q^1082 + (-18*zeta^7 - 9*zeta^5 + 9*zeta^3 
- 9*zeta)*q^1083 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^1085 + 
(240*zeta^4 - 120)*q^1086 + (48*zeta^4 - 24)*q^1090 + (108*zeta^7 + 54*zeta^5 - 
54*zeta^3 + 54*zeta)*q^1093 + (168*zeta^4 - 84)*q^1094 + (48*zeta^7 + 24*zeta^5 
- 24*zeta^3 + 24*zeta)*q^1099 + (108*zeta^7 + 54*zeta^5 - 54*zeta^3 + 
54*zeta)*q^1101 + (144*zeta^4 - 72)*q^1102 + (120*zeta^4 - 60)*q^1106 + 
(12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 6*zeta)*q^1107 + (-18*zeta^7 - 9*zeta^5 + 
9*zeta^3 - 9*zeta)*q^1109 + (-192*zeta^4 + 96)*q^1110 + (252*zeta^4 - 
126)*q^1114 + (-84*zeta^7 - 42*zeta^5 + 42*zeta^3 - 42*zeta)*q^1115 + 
(-156*zeta^7 - 78*zeta^5 + 78*zeta^3 - 78*zeta)*q^1117 + (-96*zeta^4 + 
48)*q^1118 + (12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 6*zeta)*q^1123 + (72*zeta^7 + 
36*zeta^5 - 36*zeta^3 + 36*zeta)*q^1125 + (-144*zeta^4 + 72)*q^1126 + (72*zeta^4
- 36)*q^1130 + (144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^1131 + 
(24*zeta^4 - 12)*q^1134 + (180*zeta^4 - 90)*q^1138 + (-72*zeta^7 - 36*zeta^5 + 
36*zeta^3 - 36*zeta)*q^1139 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 
12*zeta)*q^1141 + (-120*zeta^4 + 60)*q^1142 + (96*zeta^4 - 48)*q^1146 + 
(-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^1147 + (144*zeta^7 + 72*zeta^5 
- 72*zeta^3 + 72*zeta)*q^1149 + (24*zeta^4 - 12)*q^1150 + (252*zeta^4 - 
126)*q^1154 + (120*zeta^7 + 60*zeta^5 - 60*zeta^3 + 60*zeta)*q^1157 + 
(-72*zeta^4 + 36)*q^1158 + (192*zeta^4 - 96)*q^1162 + (-108*zeta^7 - 54*zeta^5 +
54*zeta^3 - 54*zeta)*q^1163 + (84*zeta^7 + 42*zeta^5 - 42*zeta^3 + 
42*zeta)*q^1165 + (-96*zeta^4 + 48)*q^1170 + (60*zeta^7 + 30*zeta^5 - 30*zeta^3 
+ 30*zeta)*q^1171 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^1173 + 
(168*zeta^4 - 84)*q^1174 + (-48*zeta^4 + 24)*q^1178 + (120*zeta^7 + 60*zeta^5 - 
60*zeta^3 + 60*zeta)*q^1179 + (-150*zeta^7 - 75*zeta^5 + 75*zeta^3 - 
75*zeta)*q^1181 + (24*zeta^4 - 12)*q^1182 + (36*zeta^4 - 18)*q^1186 + 
(156*zeta^7 + 78*zeta^5 - 78*zeta^3 + 78*zeta)*q^1187 + (-36*zeta^7 - 18*zeta^5 
+ 18*zeta^3 - 18*zeta)*q^1189 + (48*zeta^4 - 24)*q^1190 + (-120*zeta^4 + 
60)*q^1194 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 24*zeta)*q^1197 + 
(-120*zeta^4 + 60)*q^1198 + (-12*zeta^4 + 6)*q^1202 + (108*zeta^7 + 54*zeta^5 - 
54*zeta^3 + 54*zeta)*q^1203 + (12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 6*zeta)*q^1205 
+ (-144*zeta^4 + 72)*q^1206 + (-132*zeta^4 + 66)*q^1210 + (36*zeta^7 + 18*zeta^5
- 18*zeta^3 + 18*zeta)*q^1211 + (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 
6*zeta)*q^1213 + (-12*zeta^4 + 6)*q^1214 + (144*zeta^4 - 72)*q^1218 + 
(-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 36*zeta)*q^1219 + (288*zeta^4 - 
144)*q^1222 + (-96*zeta^4 + 48)*q^1226 + (-60*zeta^7 - 30*zeta^5 + 30*zeta^3 - 
30*zeta)*q^1227 + (-198*zeta^7 - 99*zeta^5 + 99*zeta^3 - 99*zeta)*q^1229 + 
(-48*zeta^4 + 24)*q^1230 + (12*zeta^4 - 6)*q^1234 + (-96*zeta^7 - 48*zeta^5 + 
48*zeta^3 - 48*zeta)*q^1235 + (84*zeta^7 + 42*zeta^5 - 42*zeta^3 + 
42*zeta)*q^1237 + (-216*zeta^4 + 108)*q^1238 + (48*zeta^4 - 24)*q^1242 + 
(-192*zeta^7 - 96*zeta^5 + 96*zeta^3 - 96*zeta)*q^1245 + (120*zeta^4 - 
60)*q^1246 + (114*zeta^4 - 57)*q^1250 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 
12*zeta)*q^1251 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^1253 + 
(96*zeta^4 - 48)*q^1258 + (168*zeta^7 + 84*zeta^5 - 84*zeta^3 + 84*zeta)*q^1259 
+ (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^1261 + (132*zeta^4 - 
66)*q^1262 + (240*zeta^4 - 120)*q^1266 + (-120*zeta^7 - 60*zeta^5 + 60*zeta^3 - 
60*zeta)*q^1267 + (72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^1269 + 
(-24*zeta^4 + 12)*q^1270 + (-72*zeta^4 + 36)*q^1274 + (12*zeta^7 + 6*zeta^5 - 
6*zeta^3 + 6*zeta)*q^1275 + (54*zeta^7 + 27*zeta^5 - 27*zeta^3 + 27*zeta)*q^1277
+ (144*zeta^4 - 72)*q^1278 + (-132*zeta^4 + 66)*q^1282 + (72*zeta^7 + 36*zeta^5 
- 36*zeta^3 + 36*zeta)*q^1283 + (108*zeta^7 + 54*zeta^5 - 54*zeta^3 + 
54*zeta)*q^1285 + (-24*zeta^4 + 12)*q^1286 + (-96*zeta^4 + 48)*q^1290 + 
(60*zeta^7 + 30*zeta^5 - 30*zeta^3 + 30*zeta)*q^1291 + (72*zeta^7 + 36*zeta^5 - 
36*zeta^3 + 36*zeta)*q^1293 + (-72*zeta^4 + 36)*q^1294 + (-84*zeta^7 - 42*zeta^5
+ 42*zeta^3 - 42*zeta)*q^1299 + (-90*zeta^7 - 45*zeta^5 + 45*zeta^3 - 
45*zeta)*q^1301 + (-48*zeta^4 + 24)*q^1302 + (-36*zeta^4 + 18)*q^1306 + 
(36*zeta^7 + 18*zeta^5 - 18*zeta^3 + 18*zeta)*q^1307 + (240*zeta^4 - 120)*q^1310
+ (72*zeta^4 - 36)*q^1314 + (96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 48*zeta)*q^1315
+ (-180*zeta^7 - 90*zeta^5 + 90*zeta^3 - 90*zeta)*q^1317 + (-216*zeta^4 + 
108)*q^1318 + (240*zeta^4 - 120)*q^1322 + (-18*zeta^7 - 9*zeta^5 + 9*zeta^3 - 
9*zeta)*q^1323 + (18*zeta^7 + 9*zeta^5 - 9*zeta^3 + 9*zeta)*q^1325 + (-96*zeta^4
+ 48)*q^1326 + (-96*zeta^4 + 48)*q^1330 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 
12*zeta)*q^1333 + (-144*zeta^4 + 72)*q^1334 + (-168*zeta^4 + 84)*q^1338 + 
(-72*zeta^7 - 36*zeta^5 + 36*zeta^3 - 36*zeta)*q^1339 + (-36*zeta^7 - 18*zeta^5 
+ 18*zeta^3 - 18*zeta)*q^1341 + (-84*zeta^4 + 42)*q^1346 + (-180*zeta^7 - 
90*zeta^5 + 90*zeta^3 - 90*zeta)*q^1347 + (144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 
72*zeta)*q^1349 + (-12*zeta^4 + 6)*q^1350 + (-108*zeta^4 + 54)*q^1354 + 
(108*zeta^7 + 54*zeta^5 - 54*zeta^3 + 54*zeta)*q^1355 + (48*zeta^7 + 24*zeta^5 -
24*zeta^3 + 24*zeta)*q^1357 + (24*zeta^4 - 12)*q^1358 + (96*zeta^4 - 48)*q^1362 
+ (-216*zeta^7 - 108*zeta^5 + 108*zeta^3 - 108*zeta)*q^1363 + (-96*zeta^7 - 
48*zeta^5 + 48*zeta^3 - 48*zeta)*q^1365 + (96*zeta^4 - 48)*q^1366 + (-216*zeta^4
+ 108)*q^1370 + (132*zeta^7 + 66*zeta^5 - 66*zeta^3 + 66*zeta)*q^1371 + 
(138*zeta^7 + 69*zeta^5 - 69*zeta^3 + 69*zeta)*q^1373 + (-48*zeta^4 + 24)*q^1374
+ (-144*zeta^4 + 72)*q^1378 + (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^1379
+ (-60*zeta^7 - 30*zeta^5 + 30*zeta^3 - 30*zeta)*q^1381 + (-120*zeta^4 + 
60)*q^1382 + (72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^1387 + (-156*zeta^7
- 78*zeta^5 + 78*zeta^3 - 78*zeta)*q^1389 + (-48*zeta^4 + 24)*q^1390 + 
(24*zeta^4 - 12)*q^1394 + (-24*zeta^7 - 12*zeta^5 + 12*zeta^3 - 12*zeta)*q^1395 
+ (168*zeta^4 - 84)*q^1398 + (-300*zeta^4 + 150)*q^1402 + (-108*zeta^7 - 
54*zeta^5 + 54*zeta^3 - 54*zeta)*q^1405 + (-192*zeta^4 + 96)*q^1406 + 
(-288*zeta^4 + 144)*q^1410 + (96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 
48*zeta)*q^1411 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^1413 + 
(120*zeta^4 - 60)*q^1414 + (-24*zeta^4 + 12)*q^1418 + (54*zeta^7 + 27*zeta^5 - 
27*zeta^3 + 27*zeta)*q^1421 + (120*zeta^4 - 60)*q^1422 + (-48*zeta^4 + 
24)*q^1426 + (96*zeta^7 + 48*zeta^5 - 48*zeta^3 + 48*zeta)*q^1427 + (-168*zeta^7
- 84*zeta^5 + 84*zeta^3 - 84*zeta)*q^1429 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 +
12*zeta)*q^1435 + (120*zeta^7 + 60*zeta^5 - 60*zeta^3 + 60*zeta)*q^1437 + 
(-120*zeta^4 + 60)*q^1438 + (-72*zeta^4 + 36)*q^1442 + (-192*zeta^7 - 96*zeta^5 
+ 96*zeta^3 - 96*zeta)*q^1443 + (-78*zeta^7 - 39*zeta^5 + 39*zeta^3 - 
39*zeta)*q^1445 + (24*zeta^4 - 12)*q^1446 + (36*zeta^4 - 18)*q^1450 + 
(-180*zeta^7 - 90*zeta^5 + 90*zeta^3 - 90*zeta)*q^1451 + (-132*zeta^7 - 
66*zeta^5 + 66*zeta^3 - 66*zeta)*q^1453 + (-252*zeta^4 + 126)*q^1454 + 
(-12*zeta^4 + 6)*q^1458 + (-132*zeta^7 - 66*zeta^5 + 66*zeta^3 - 66*zeta)*q^1459
+ (228*zeta^7 + 114*zeta^5 - 114*zeta^3 + 114*zeta)*q^1461 + (48*zeta^4 - 
24)*q^1462 + (24*zeta^4 - 12)*q^1466 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 
12*zeta)*q^1467 + (72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^1469 + 
(72*zeta^4 - 36)*q^1470 + (-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^1475 + 
(-120*zeta^7 - 60*zeta^5 + 60*zeta^3 - 60*zeta)*q^1477 + (264*zeta^4 - 
132)*q^1478 + (-192*zeta^4 + 96)*q^1482 + (12*zeta^7 + 6*zeta^5 - 6*zeta^3 + 
6*zeta)*q^1483 + (-96*zeta^4 + 48)*q^1486 + (-72*zeta^4 + 36)*q^1490 + 
(144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^1491 + (78*zeta^7 + 39*zeta^5 -
39*zeta^3 + 39*zeta)*q^1493 + (192*zeta^4 - 96)*q^1494 + (-144*zeta^4 + 
72)*q^1498 + (-192*zeta^7 - 96*zeta^5 + 96*zeta^3 - 96*zeta)*q^1499 + 
(120*zeta^7 + 60*zeta^5 - 60*zeta^3 + 60*zeta)*q^1501 + (12*zeta^4 - 6)*q^1502 +
(-216*zeta^7 - 108*zeta^5 + 108*zeta^3 - 108*zeta)*q^1509 + (-216*zeta^4 + 
108)*q^1510 + (72*zeta^4 - 36)*q^1514 + (-120*zeta^7 - 60*zeta^5 + 60*zeta^3 - 
60*zeta)*q^1515 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^1517 + 
(228*zeta^4 - 114)*q^1522 + (-168*zeta^7 - 84*zeta^5 + 84*zeta^3 - 
84*zeta)*q^1523 + (-48*zeta^4 + 24)*q^1526 + (48*zeta^4 - 24)*q^1530 + 
(-60*zeta^7 - 30*zeta^5 + 30*zeta^3 - 30*zeta)*q^1531 + (72*zeta^7 + 36*zeta^5 -
36*zeta^3 + 36*zeta)*q^1533 + (96*zeta^4 - 48)*q^1534 + (-60*zeta^4 + 30)*q^1538
+ (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 12*zeta)*q^1539 + (-144*zeta^7 - 
72*zeta^5 + 72*zeta^3 - 72*zeta)*q^1541 + (216*zeta^4 - 108)*q^1542 + 
(204*zeta^4 - 102)*q^1546 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 24*zeta)*q^1547
+ (72*zeta^7 + 36*zeta^5 - 36*zeta^3 + 36*zeta)*q^1549 + (12*zeta^4 - 6)*q^1550 
+ (-192*zeta^4 + 96)*q^1554 + (48*zeta^7 + 24*zeta^5 - 24*zeta^3 + 
24*zeta)*q^1555 + (36*zeta^7 + 18*zeta^5 - 18*zeta^3 + 18*zeta)*q^1557 + 
(48*zeta^4 - 24)*q^1558 + (-252*zeta^7 - 126*zeta^5 + 126*zeta^3 - 
126*zeta)*q^1563 + (84*zeta^7 + 42*zeta^5 - 42*zeta^3 + 42*zeta)*q^1565 + 
(-72*zeta^4 + 36)*q^1566 + (96*zeta^4 - 48)*q^1570 + (180*zeta^7 + 90*zeta^5 - 
90*zeta^3 + 90*zeta)*q^1571 + (-132*zeta^7 - 66*zeta^5 + 66*zeta^3 - 
66*zeta)*q^1573 + (-72*zeta^4 + 36)*q^1574 + (192*zeta^4 - 96)*q^1578 + 
(-12*zeta^7 - 6*zeta^5 + 6*zeta^3 - 6*zeta)*q^1579 + (-24*zeta^7 - 12*zeta^5 + 
12*zeta^3 - 12*zeta)*q^1581 + (72*zeta^4 - 36)*q^1582 + (42*zeta^7 + 21*zeta^5 -
21*zeta^3 + 21*zeta)*q^1587 + (-48*zeta^7 - 24*zeta^5 + 24*zeta^3 - 
24*zeta)*q^1589 + (-144*zeta^4 + 72)*q^1590 + (12*zeta^4 - 6)*q^1594 + 
(-36*zeta^7 - 18*zeta^5 + 18*zeta^3 - 18*zeta)*q^1597 + (144*zeta^4 - 72)*q^1598
+ (120*zeta^4 - 60)*q^1602 + (24*zeta^7 + 12*zeta^5 - 12*zeta^3 + 
12*zeta)*q^1603 + (144*zeta^7 + 72*zeta^5 - 72*zeta^3 + 72*zeta)*q^1605 + 
O(q^1608)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 5);
              X_24G6 := Curve(P_Q, [ PolynomialRing(RationalField(), 6) |
x[1]^2 + 6*x[2]^2 - 4*x[2]*x[5] + 4*x[2]*x[6] + 18*x[4]^2 - x[5]^2 + 6*x[6]^2,
x[1]*x[2] - 4*x[2]^2 + 4*x[2]*x[5] - 4*x[2]*x[6] + 27*x[3]*x[4] - 18*x[4]^2 + 
3*x[5]*x[6] - 10*x[6]^2,
x[1]*x[4] - 2*x[2]*x[4] - 6*x[3]*x[6] + x[4]*x[5] - 4*x[4]*x[6],
x[1]*x[5] - 7*x[2]^2 + 8*x[2]*x[5] - 6*x[2]*x[6] + 27*x[3]^2 + 54*x[3]*x[4] - 
51*x[4]^2 + 6*x[5]*x[6] - 17*x[6]^2,
x[1]*x[6] - 2*x[2]^2 + 3*x[2]*x[5] - 2*x[2]*x[6] + 27*x[3]*x[4] - 18*x[4]^2 + 
2*x[5]*x[6] - 6*x[6]^2,
x[2]*x[3] - x[3]*x[6] + 1/3*x[4]*x[5] - 4/3*x[4]*x[6]
]);
