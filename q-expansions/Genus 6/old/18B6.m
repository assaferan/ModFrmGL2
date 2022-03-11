
    /****************************************************
    Loading this file in magma loads the objects fs_18B6 
    and X_18B6. fs_18B6 is a list of power series which form 
    a basis for the space of cusp forms. X_18B6 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, \[ 1, 0, 0, -1, 0, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_18B6 := [Kq | (-4*zeta^5 + 8*zeta^4 - 4*zeta^2 - 4*zeta)*q^2 + 
(12*zeta^5 - 12*zeta^2 - 12*zeta)*q^4 + (-4*zeta^5 - 4*zeta^4 + 8*zeta^2 + 
8*zeta)*q^8 + (12*zeta^4 - 12*zeta^2 - 12*zeta)*q^10 + (16*zeta^5 - 8*zeta^4 - 
8*zeta^2 - 8*zeta)*q^14 + (12*zeta^5 - 12*zeta^4)*q^16 + (12*zeta^5 - 24*zeta^4 
+ 12*zeta^2 + 12*zeta)*q^20 + (-24*zeta^5 + 24*zeta^2 + 24*zeta)*q^22 + 
(4*zeta^5 + 4*zeta^4 - 8*zeta^2 - 8*zeta)*q^26 + (-24*zeta^4 + 24*zeta^2 + 
24*zeta)*q^28 + (-40*zeta^5 + 20*zeta^4 + 20*zeta^2 + 20*zeta)*q^32 + 
(-36*zeta^5 + 36*zeta^4)*q^34 + (-8*zeta^5 + 16*zeta^4 - 8*zeta^2 - 8*zeta)*q^38
+ (-12*zeta^5 + 12*zeta^2 + 12*zeta)*q^40 + (24*zeta^5 + 24*zeta^4 - 48*zeta^2 -
48*zeta)*q^44 + (-24*zeta^4 + 24*zeta^2 + 24*zeta)*q^46 + (-16*zeta^5 + 8*zeta^4
+ 8*zeta^2 + 8*zeta)*q^50 + (12*zeta^5 - 12*zeta^4)*q^52 + (-8*zeta^5 + 
16*zeta^4 - 8*zeta^2 - 8*zeta)*q^56 + (12*zeta^5 - 12*zeta^2 - 12*zeta)*q^58 + 
(-32*zeta^5 - 32*zeta^4 + 64*zeta^2 + 64*zeta)*q^62 + (36*zeta^4 - 36*zeta^2 - 
36*zeta)*q^64 + (72*zeta^5 - 36*zeta^4 - 36*zeta^2 - 36*zeta)*q^68 + (24*zeta^5 
- 24*zeta^4)*q^70 + (28*zeta^5 - 56*zeta^4 + 28*zeta^2 + 28*zeta)*q^74 + 
(24*zeta^5 - 24*zeta^2 - 24*zeta)*q^76 + (-12*zeta^5 - 12*zeta^4 + 24*zeta^2 + 
24*zeta)*q^80 + (48*zeta^4 - 48*zeta^2 - 48*zeta)*q^82 + (16*zeta^5 - 8*zeta^4 -
8*zeta^2 - 8*zeta)*q^86 + (24*zeta^5 - 24*zeta^4)*q^88 + (-24*zeta^5 + 48*zeta^4
- 24*zeta^2 - 24*zeta)*q^92 + (48*zeta^5 - 48*zeta^2 - 48*zeta)*q^94 + 
(12*zeta^5 + 12*zeta^4 - 24*zeta^2 - 24*zeta)*q^98 + (24*zeta^4 - 24*zeta^2 - 
24*zeta)*q^100 + (-8*zeta^5 + 4*zeta^4 + 4*zeta^2 + 4*zeta)*q^104 + (-24*zeta^5 
+ 48*zeta^4 - 24*zeta^2 - 24*zeta)*q^110 + (-24*zeta^5 + 24*zeta^2 + 
24*zeta)*q^112 + (-12*zeta^5 - 12*zeta^4 + 24*zeta^2 + 24*zeta)*q^116 + 
(-96*zeta^4 + 96*zeta^2 + 96*zeta)*q^118 + (-56*zeta^5 + 28*zeta^4 + 28*zeta^2 +
28*zeta)*q^122 + (-96*zeta^5 + 96*zeta^4)*q^124 + (-4*zeta^5 + 8*zeta^4 - 
4*zeta^2 - 4*zeta)*q^128 + (12*zeta^5 - 12*zeta^2 - 12*zeta)*q^130 + (40*zeta^5 
+ 40*zeta^4 - 80*zeta^2 - 80*zeta)*q^134 + (-36*zeta^4 + 36*zeta^2 + 
36*zeta)*q^136 + (-48*zeta^5 + 24*zeta^4 + 24*zeta^2 + 24*zeta)*q^140 + 
(72*zeta^5 - 72*zeta^4)*q^142 + (28*zeta^5 - 56*zeta^4 + 28*zeta^2 + 
28*zeta)*q^146 + (-84*zeta^5 + 84*zeta^2 + 84*zeta)*q^148 + (-8*zeta^5 - 
8*zeta^4 + 16*zeta^2 + 16*zeta)*q^152 + (48*zeta^4 - 48*zeta^2 - 48*zeta)*q^154 
+ (16*zeta^5 - 8*zeta^4 - 8*zeta^2 - 8*zeta)*q^158 + (-60*zeta^5 + 
60*zeta^4)*q^160 + (48*zeta^5 - 96*zeta^4 + 48*zeta^2 + 48*zeta)*q^164 + 
(-96*zeta^5 + 96*zeta^2 + 96*zeta)*q^166 + (36*zeta^5 + 36*zeta^4 - 72*zeta^2 - 
72*zeta)*q^170 + (-24*zeta^4 + 24*zeta^2 + 24*zeta)*q^172 + (48*zeta^5 - 
24*zeta^4 - 24*zeta^2 - 24*zeta)*q^176 + (36*zeta^5 - 36*zeta^4)*q^178 + 
(8*zeta^5 - 16*zeta^4 + 8*zeta^2 + 8*zeta)*q^182 + (24*zeta^5 - 24*zeta^2 - 
24*zeta)*q^184 + (-48*zeta^5 - 48*zeta^4 + 96*zeta^2 + 96*zeta)*q^188 + 
(24*zeta^4 - 24*zeta^2 - 24*zeta)*q^190 + (16*zeta^5 - 8*zeta^4 - 8*zeta^2 - 
8*zeta)*q^194 + (36*zeta^5 - 36*zeta^4)*q^196 + (8*zeta^5 - 16*zeta^4 + 8*zeta^2
+ 8*zeta)*q^200 + (48*zeta^5 - 48*zeta^2 - 48*zeta)*q^202 + (-32*zeta^5 - 
32*zeta^4 + 64*zeta^2 + 64*zeta)*q^206 + (-12*zeta^4 + 12*zeta^2 + 
12*zeta)*q^208 + (-44*zeta^5 + 88*zeta^4 - 44*zeta^2 - 44*zeta)*q^218 + 
(72*zeta^5 - 72*zeta^2 - 72*zeta)*q^220 + (40*zeta^5 + 40*zeta^4 - 80*zeta^2 - 
80*zeta)*q^224 + (12*zeta^4 - 12*zeta^2 - 12*zeta)*q^226 + (-48*zeta^5 + 
24*zeta^4 + 24*zeta^2 + 24*zeta)*q^230 + (-12*zeta^5 + 12*zeta^4)*q^232 + 
(-96*zeta^5 + 192*zeta^4 - 96*zeta^2 - 96*zeta)*q^236 + (72*zeta^5 - 72*zeta^2 -
72*zeta)*q^238 + (-4*zeta^5 - 4*zeta^4 + 8*zeta^2 + 8*zeta)*q^242 + (84*zeta^4 -
84*zeta^2 - 84*zeta)*q^244 + (64*zeta^5 - 32*zeta^4 - 32*zeta^2 - 32*zeta)*q^248
+ (-84*zeta^5 + 84*zeta^4)*q^250 + (-8*zeta^5 + 16*zeta^4 - 8*zeta^2 - 
8*zeta)*q^254 + (84*zeta^5 - 84*zeta^2 - 84*zeta)*q^256 + (-12*zeta^5 - 
12*zeta^4 + 24*zeta^2 + 24*zeta)*q^260 + (-24*zeta^4 + 24*zeta^2 + 
24*zeta)*q^262 + (32*zeta^5 - 16*zeta^4 - 16*zeta^2 - 16*zeta)*q^266 + 
(120*zeta^5 - 120*zeta^4)*q^268 + (36*zeta^5 - 72*zeta^4 + 36*zeta^2 + 
36*zeta)*q^272 + (12*zeta^5 - 12*zeta^2 - 12*zeta)*q^274 + (-32*zeta^5 - 
32*zeta^4 + 64*zeta^2 + 64*zeta)*q^278 + (24*zeta^4 - 24*zeta^2 - 24*zeta)*q^280
+ (-144*zeta^5 + 72*zeta^4 + 72*zeta^2 + 72*zeta)*q^284 + (-24*zeta^5 + 
24*zeta^4)*q^286 + (12*zeta^5 - 24*zeta^4 + 12*zeta^2 + 12*zeta)*q^290 + 
(-84*zeta^5 + 84*zeta^2 + 84*zeta)*q^292 + (28*zeta^5 + 28*zeta^4 - 56*zeta^2 - 
56*zeta)*q^296 + (-60*zeta^4 + 60*zeta^2 + 60*zeta)*q^298 + (160*zeta^5 - 
80*zeta^4 - 80*zeta^2 - 80*zeta)*q^302 + (24*zeta^5 - 24*zeta^4)*q^304 + 
(48*zeta^5 - 96*zeta^4 + 48*zeta^2 + 48*zeta)*q^308 + (-96*zeta^5 + 96*zeta^2 + 
96*zeta)*q^310 + (-68*zeta^5 - 68*zeta^4 + 136*zeta^2 + 136*zeta)*q^314 + 
(-24*zeta^4 + 24*zeta^2 + 24*zeta)*q^316 + (72*zeta^5 - 36*zeta^4 - 36*zeta^2 - 
36*zeta)*q^320 + (-48*zeta^5 + 48*zeta^4)*q^322 + (64*zeta^5 - 128*zeta^4 + 
64*zeta^2 + 64*zeta)*q^326 + (-48*zeta^5 + 48*zeta^2 + 48*zeta)*q^328 + 
(96*zeta^5 + 96*zeta^4 - 192*zeta^2 - 192*zeta)*q^332 + (120*zeta^4 - 120*zeta^2
- 120*zeta)*q^334 + (-96*zeta^5 + 48*zeta^4 + 48*zeta^2 + 48*zeta)*q^338 + 
(108*zeta^5 - 108*zeta^4)*q^340 + (-8*zeta^5 + 16*zeta^4 - 8*zeta^2 - 
8*zeta)*q^344 + (-132*zeta^5 + 132*zeta^2 + 132*zeta)*q^346 + (16*zeta^5 + 
16*zeta^4 - 32*zeta^2 - 32*zeta)*q^350 + (-120*zeta^4 + 120*zeta^2 + 
120*zeta)*q^352 + (-72*zeta^5 + 36*zeta^4 + 36*zeta^2 + 36*zeta)*q^356 + 
(-144*zeta^5 + 144*zeta^4)*q^358 + (-8*zeta^5 + 16*zeta^4 - 8*zeta^2 - 
8*zeta)*q^362 + (-24*zeta^5 + 24*zeta^2 + 24*zeta)*q^364 + (24*zeta^5 + 
24*zeta^4 - 48*zeta^2 - 48*zeta)*q^368 + (-84*zeta^4 + 84*zeta^2 + 
84*zeta)*q^370 + (-144*zeta^5 + 72*zeta^4 + 72*zeta^2 + 72*zeta)*q^374 + 
(-48*zeta^5 + 48*zeta^4)*q^376 + (24*zeta^5 - 48*zeta^4 + 24*zeta^2 + 
24*zeta)*q^380 + (120*zeta^5 - 120*zeta^2 - 120*zeta)*q^382 + (4*zeta^5 + 
4*zeta^4 - 8*zeta^2 - 8*zeta)*q^386 + (-24*zeta^4 + 24*zeta^2 + 24*zeta)*q^388 +
(-24*zeta^5 + 12*zeta^4 + 12*zeta^2 + 12*zeta)*q^392 + (36*zeta^5 - 
36*zeta^4)*q^394 + (-80*zeta^5 + 160*zeta^4 - 80*zeta^2 - 80*zeta)*q^398 + 
(24*zeta^5 - 24*zeta^2 - 24*zeta)*q^400 + (-48*zeta^5 - 48*zeta^4 + 96*zeta^2 + 
96*zeta)*q^404 + (-24*zeta^4 + 24*zeta^2 + 24*zeta)*q^406 + (96*zeta^5 - 
48*zeta^4 - 48*zeta^2 - 48*zeta)*q^410 + (-96*zeta^5 + 96*zeta^4)*q^412 + 
(-20*zeta^5 + 40*zeta^4 - 20*zeta^2 - 20*zeta)*q^416 + (-48*zeta^5 + 48*zeta^2 +
48*zeta)*q^418 + (40*zeta^5 + 40*zeta^4 - 80*zeta^2 - 80*zeta)*q^422 + 
(24*zeta^5 - 24*zeta^4)*q^430 + (-64*zeta^5 + 128*zeta^4 - 64*zeta^2 - 
64*zeta)*q^434 + (132*zeta^5 - 132*zeta^2 - 132*zeta)*q^436 + (-24*zeta^5 - 
24*zeta^4 + 48*zeta^2 + 48*zeta)*q^440 + (36*zeta^4 - 36*zeta^2 - 36*zeta)*q^442
+ (16*zeta^5 - 8*zeta^4 - 8*zeta^2 - 8*zeta)*q^446 + (72*zeta^5 - 
72*zeta^4)*q^448 + (12*zeta^5 - 24*zeta^4 + 12*zeta^2 + 12*zeta)*q^452 + 
(-24*zeta^5 + 24*zeta^2 + 24*zeta)*q^454 + (4*zeta^5 + 4*zeta^4 - 8*zeta^2 - 
8*zeta)*q^458 + (72*zeta^4 - 72*zeta^2 - 72*zeta)*q^460 + (-24*zeta^5 + 
12*zeta^4 + 12*zeta^2 + 12*zeta)*q^464 + (180*zeta^5 - 180*zeta^4)*q^466 + 
(48*zeta^5 - 96*zeta^4 + 48*zeta^2 + 48*zeta)*q^470 + (96*zeta^5 - 96*zeta^2 - 
96*zeta)*q^472 + (-72*zeta^5 - 72*zeta^4 + 144*zeta^2 + 144*zeta)*q^476 + 
(192*zeta^4 - 192*zeta^2 - 192*zeta)*q^478 + (232*zeta^5 - 116*zeta^4 - 
116*zeta^2 - 116*zeta)*q^482 + (-12*zeta^5 + 12*zeta^4)*q^484 + (28*zeta^5 - 
56*zeta^4 + 28*zeta^2 + 28*zeta)*q^488 + (36*zeta^5 - 36*zeta^2 - 36*zeta)*q^490
+ (8*zeta^5 + 8*zeta^4 - 16*zeta^2 - 16*zeta)*q^494 + (96*zeta^4 - 96*zeta^2 - 
96*zeta)*q^496 + (168*zeta^5 - 84*zeta^4 - 84*zeta^2 - 84*zeta)*q^500 + 
(-72*zeta^5 + 72*zeta^4)*q^502 + (48*zeta^5 - 96*zeta^4 + 48*zeta^2 + 
48*zeta)*q^506 + (24*zeta^5 - 24*zeta^2 - 24*zeta)*q^508 + (-76*zeta^5 - 
76*zeta^4 + 152*zeta^2 + 152*zeta)*q^512 + (-60*zeta^4 + 60*zeta^2 + 
60*zeta)*q^514 + (-112*zeta^5 + 56*zeta^4 + 56*zeta^2 + 56*zeta)*q^518 + 
(-12*zeta^5 + 12*zeta^4)*q^520 + O(q^522), (-4*zeta^5 + 8*zeta^4 - 4*zeta^2 - 
4*zeta)*q^2 + (12*zeta^5 - 12*zeta^2 - 12*zeta)*q^4 + (-4*zeta^5 - 4*zeta^4 + 
8*zeta^2 + 8*zeta)*q^8 + (12*zeta^4 - 12*zeta^2 - 12*zeta)*q^10 + (16*zeta^5 - 
8*zeta^4 - 8*zeta^2 - 8*zeta)*q^14 + (12*zeta^5 - 12*zeta^4)*q^16 + (12*zeta^5 -
24*zeta^4 + 12*zeta^2 + 12*zeta)*q^20 + (-24*zeta^5 + 24*zeta^2 + 24*zeta)*q^22 
+ (4*zeta^5 + 4*zeta^4 - 8*zeta^2 - 8*zeta)*q^26 + (-24*zeta^4 + 24*zeta^2 + 
24*zeta)*q^28 + (-40*zeta^5 + 20*zeta^4 + 20*zeta^2 + 20*zeta)*q^32 + 
(-36*zeta^5 + 36*zeta^4)*q^34 + (-8*zeta^5 + 16*zeta^4 - 8*zeta^2 - 8*zeta)*q^38
+ (-12*zeta^5 + 12*zeta^2 + 12*zeta)*q^40 + (24*zeta^5 + 24*zeta^4 - 48*zeta^2 -
48*zeta)*q^44 + (-24*zeta^4 + 24*zeta^2 + 24*zeta)*q^46 + (-16*zeta^5 + 8*zeta^4
+ 8*zeta^2 + 8*zeta)*q^50 + (12*zeta^5 - 12*zeta^4)*q^52 + (-8*zeta^5 + 
16*zeta^4 - 8*zeta^2 - 8*zeta)*q^56 + (12*zeta^5 - 12*zeta^2 - 12*zeta)*q^58 + 
(-32*zeta^5 - 32*zeta^4 + 64*zeta^2 + 64*zeta)*q^62 + (36*zeta^4 - 36*zeta^2 - 
36*zeta)*q^64 + (72*zeta^5 - 36*zeta^4 - 36*zeta^2 - 36*zeta)*q^68 + (24*zeta^5 
- 24*zeta^4)*q^70 + (28*zeta^5 - 56*zeta^4 + 28*zeta^2 + 28*zeta)*q^74 + 
(24*zeta^5 - 24*zeta^2 - 24*zeta)*q^76 + (-12*zeta^5 - 12*zeta^4 + 24*zeta^2 + 
24*zeta)*q^80 + (48*zeta^4 - 48*zeta^2 - 48*zeta)*q^82 + (16*zeta^5 - 8*zeta^4 -
8*zeta^2 - 8*zeta)*q^86 + (24*zeta^5 - 24*zeta^4)*q^88 + (-24*zeta^5 + 48*zeta^4
- 24*zeta^2 - 24*zeta)*q^92 + (48*zeta^5 - 48*zeta^2 - 48*zeta)*q^94 + 
(12*zeta^5 + 12*zeta^4 - 24*zeta^2 - 24*zeta)*q^98 + (24*zeta^4 - 24*zeta^2 - 
24*zeta)*q^100 + (-8*zeta^5 + 4*zeta^4 + 4*zeta^2 + 4*zeta)*q^104 + (-24*zeta^5 
+ 48*zeta^4 - 24*zeta^2 - 24*zeta)*q^110 + (-24*zeta^5 + 24*zeta^2 + 
24*zeta)*q^112 + (-12*zeta^5 - 12*zeta^4 + 24*zeta^2 + 24*zeta)*q^116 + 
(-96*zeta^4 + 96*zeta^2 + 96*zeta)*q^118 + (-56*zeta^5 + 28*zeta^4 + 28*zeta^2 +
28*zeta)*q^122 + (-96*zeta^5 + 96*zeta^4)*q^124 + (-4*zeta^5 + 8*zeta^4 - 
4*zeta^2 - 4*zeta)*q^128 + (12*zeta^5 - 12*zeta^2 - 12*zeta)*q^130 + (40*zeta^5 
+ 40*zeta^4 - 80*zeta^2 - 80*zeta)*q^134 + (-36*zeta^4 + 36*zeta^2 + 
36*zeta)*q^136 + (-48*zeta^5 + 24*zeta^4 + 24*zeta^2 + 24*zeta)*q^140 + 
(72*zeta^5 - 72*zeta^4)*q^142 + (28*zeta^5 - 56*zeta^4 + 28*zeta^2 + 
28*zeta)*q^146 + (-84*zeta^5 + 84*zeta^2 + 84*zeta)*q^148 + (-8*zeta^5 - 
8*zeta^4 + 16*zeta^2 + 16*zeta)*q^152 + (48*zeta^4 - 48*zeta^2 - 48*zeta)*q^154 
+ (16*zeta^5 - 8*zeta^4 - 8*zeta^2 - 8*zeta)*q^158 + (-60*zeta^5 + 
60*zeta^4)*q^160 + (48*zeta^5 - 96*zeta^4 + 48*zeta^2 + 48*zeta)*q^164 + 
(-96*zeta^5 + 96*zeta^2 + 96*zeta)*q^166 + (36*zeta^5 + 36*zeta^4 - 72*zeta^2 - 
72*zeta)*q^170 + (-24*zeta^4 + 24*zeta^2 + 24*zeta)*q^172 + (48*zeta^5 - 
24*zeta^4 - 24*zeta^2 - 24*zeta)*q^176 + (36*zeta^5 - 36*zeta^4)*q^178 + 
(8*zeta^5 - 16*zeta^4 + 8*zeta^2 + 8*zeta)*q^182 + (24*zeta^5 - 24*zeta^2 - 
24*zeta)*q^184 + (-48*zeta^5 - 48*zeta^4 + 96*zeta^2 + 96*zeta)*q^188 + 
(24*zeta^4 - 24*zeta^2 - 24*zeta)*q^190 + (16*zeta^5 - 8*zeta^4 - 8*zeta^2 - 
8*zeta)*q^194 + (36*zeta^5 - 36*zeta^4)*q^196 + (8*zeta^5 - 16*zeta^4 + 8*zeta^2
+ 8*zeta)*q^200 + (48*zeta^5 - 48*zeta^2 - 48*zeta)*q^202 + (-32*zeta^5 - 
32*zeta^4 + 64*zeta^2 + 64*zeta)*q^206 + (-12*zeta^4 + 12*zeta^2 + 
12*zeta)*q^208 + (-44*zeta^5 + 88*zeta^4 - 44*zeta^2 - 44*zeta)*q^218 + 
(72*zeta^5 - 72*zeta^2 - 72*zeta)*q^220 + (40*zeta^5 + 40*zeta^4 - 80*zeta^2 - 
80*zeta)*q^224 + (12*zeta^4 - 12*zeta^2 - 12*zeta)*q^226 + (-48*zeta^5 + 
24*zeta^4 + 24*zeta^2 + 24*zeta)*q^230 + (-12*zeta^5 + 12*zeta^4)*q^232 + 
(-96*zeta^5 + 192*zeta^4 - 96*zeta^2 - 96*zeta)*q^236 + (72*zeta^5 - 72*zeta^2 -
72*zeta)*q^238 + (-4*zeta^5 - 4*zeta^4 + 8*zeta^2 + 8*zeta)*q^242 + (84*zeta^4 -
84*zeta^2 - 84*zeta)*q^244 + (64*zeta^5 - 32*zeta^4 - 32*zeta^2 - 32*zeta)*q^248
+ (-84*zeta^5 + 84*zeta^4)*q^250 + (-8*zeta^5 + 16*zeta^4 - 8*zeta^2 - 
8*zeta)*q^254 + (84*zeta^5 - 84*zeta^2 - 84*zeta)*q^256 + (-12*zeta^5 - 
12*zeta^4 + 24*zeta^2 + 24*zeta)*q^260 + (-24*zeta^4 + 24*zeta^2 + 
24*zeta)*q^262 + (32*zeta^5 - 16*zeta^4 - 16*zeta^2 - 16*zeta)*q^266 + 
(120*zeta^5 - 120*zeta^4)*q^268 + (36*zeta^5 - 72*zeta^4 + 36*zeta^2 + 
36*zeta)*q^272 + (12*zeta^5 - 12*zeta^2 - 12*zeta)*q^274 + (-32*zeta^5 - 
32*zeta^4 + 64*zeta^2 + 64*zeta)*q^278 + (24*zeta^4 - 24*zeta^2 - 24*zeta)*q^280
+ (-144*zeta^5 + 72*zeta^4 + 72*zeta^2 + 72*zeta)*q^284 + (-24*zeta^5 + 
24*zeta^4)*q^286 + (12*zeta^5 - 24*zeta^4 + 12*zeta^2 + 12*zeta)*q^290 + 
(-84*zeta^5 + 84*zeta^2 + 84*zeta)*q^292 + (28*zeta^5 + 28*zeta^4 - 56*zeta^2 - 
56*zeta)*q^296 + (-60*zeta^4 + 60*zeta^2 + 60*zeta)*q^298 + (160*zeta^5 - 
80*zeta^4 - 80*zeta^2 - 80*zeta)*q^302 + (24*zeta^5 - 24*zeta^4)*q^304 + 
(48*zeta^5 - 96*zeta^4 + 48*zeta^2 + 48*zeta)*q^308 + (-96*zeta^5 + 96*zeta^2 + 
96*zeta)*q^310 + (-68*zeta^5 - 68*zeta^4 + 136*zeta^2 + 136*zeta)*q^314 + 
(-24*zeta^4 + 24*zeta^2 + 24*zeta)*q^316 + (72*zeta^5 - 36*zeta^4 - 36*zeta^2 - 
36*zeta)*q^320 + (-48*zeta^5 + 48*zeta^4)*q^322 + (64*zeta^5 - 128*zeta^4 + 
64*zeta^2 + 64*zeta)*q^326 + (-48*zeta^5 + 48*zeta^2 + 48*zeta)*q^328 + 
(96*zeta^5 + 96*zeta^4 - 192*zeta^2 - 192*zeta)*q^332 + (120*zeta^4 - 120*zeta^2
- 120*zeta)*q^334 + (-96*zeta^5 + 48*zeta^4 + 48*zeta^2 + 48*zeta)*q^338 + 
(108*zeta^5 - 108*zeta^4)*q^340 + (-8*zeta^5 + 16*zeta^4 - 8*zeta^2 - 
8*zeta)*q^344 + (-132*zeta^5 + 132*zeta^2 + 132*zeta)*q^346 + (16*zeta^5 + 
16*zeta^4 - 32*zeta^2 - 32*zeta)*q^350 + (-120*zeta^4 + 120*zeta^2 + 
120*zeta)*q^352 + (-72*zeta^5 + 36*zeta^4 + 36*zeta^2 + 36*zeta)*q^356 + 
(-144*zeta^5 + 144*zeta^4)*q^358 + (-8*zeta^5 + 16*zeta^4 - 8*zeta^2 - 
8*zeta)*q^362 + (-24*zeta^5 + 24*zeta^2 + 24*zeta)*q^364 + (24*zeta^5 + 
24*zeta^4 - 48*zeta^2 - 48*zeta)*q^368 + (-84*zeta^4 + 84*zeta^2 + 
84*zeta)*q^370 + (-144*zeta^5 + 72*zeta^4 + 72*zeta^2 + 72*zeta)*q^374 + 
(-48*zeta^5 + 48*zeta^4)*q^376 + (24*zeta^5 - 48*zeta^4 + 24*zeta^2 + 
24*zeta)*q^380 + (120*zeta^5 - 120*zeta^2 - 120*zeta)*q^382 + (4*zeta^5 + 
4*zeta^4 - 8*zeta^2 - 8*zeta)*q^386 + (-24*zeta^4 + 24*zeta^2 + 24*zeta)*q^388 +
(-24*zeta^5 + 12*zeta^4 + 12*zeta^2 + 12*zeta)*q^392 + (36*zeta^5 - 
36*zeta^4)*q^394 + (-80*zeta^5 + 160*zeta^4 - 80*zeta^2 - 80*zeta)*q^398 + 
(24*zeta^5 - 24*zeta^2 - 24*zeta)*q^400 + (-48*zeta^5 - 48*zeta^4 + 96*zeta^2 + 
96*zeta)*q^404 + (-24*zeta^4 + 24*zeta^2 + 24*zeta)*q^406 + (96*zeta^5 - 
48*zeta^4 - 48*zeta^2 - 48*zeta)*q^410 + (-96*zeta^5 + 96*zeta^4)*q^412 + 
(-20*zeta^5 + 40*zeta^4 - 20*zeta^2 - 20*zeta)*q^416 + (-48*zeta^5 + 48*zeta^2 +
48*zeta)*q^418 + (40*zeta^5 + 40*zeta^4 - 80*zeta^2 - 80*zeta)*q^422 + 
(24*zeta^5 - 24*zeta^4)*q^430 + (-64*zeta^5 + 128*zeta^4 - 64*zeta^2 - 
64*zeta)*q^434 + (132*zeta^5 - 132*zeta^2 - 132*zeta)*q^436 + (-24*zeta^5 - 
24*zeta^4 + 48*zeta^2 + 48*zeta)*q^440 + (36*zeta^4 - 36*zeta^2 - 36*zeta)*q^442
+ (16*zeta^5 - 8*zeta^4 - 8*zeta^2 - 8*zeta)*q^446 + (72*zeta^5 - 
72*zeta^4)*q^448 + (12*zeta^5 - 24*zeta^4 + 12*zeta^2 + 12*zeta)*q^452 + 
(-24*zeta^5 + 24*zeta^2 + 24*zeta)*q^454 + (4*zeta^5 + 4*zeta^4 - 8*zeta^2 - 
8*zeta)*q^458 + (72*zeta^4 - 72*zeta^2 - 72*zeta)*q^460 + (-24*zeta^5 + 
12*zeta^4 + 12*zeta^2 + 12*zeta)*q^464 + (180*zeta^5 - 180*zeta^4)*q^466 + 
(48*zeta^5 - 96*zeta^4 + 48*zeta^2 + 48*zeta)*q^470 + (96*zeta^5 - 96*zeta^2 - 
96*zeta)*q^472 + (-72*zeta^5 - 72*zeta^4 + 144*zeta^2 + 144*zeta)*q^476 + 
(192*zeta^4 - 192*zeta^2 - 192*zeta)*q^478 + (232*zeta^5 - 116*zeta^4 - 
116*zeta^2 - 116*zeta)*q^482 + (-12*zeta^5 + 12*zeta^4)*q^484 + (28*zeta^5 - 
56*zeta^4 + 28*zeta^2 + 28*zeta)*q^488 + (36*zeta^5 - 36*zeta^2 - 36*zeta)*q^490
+ (8*zeta^5 + 8*zeta^4 - 16*zeta^2 - 16*zeta)*q^494 + (96*zeta^4 - 96*zeta^2 - 
96*zeta)*q^496 + (168*zeta^5 - 84*zeta^4 - 84*zeta^2 - 84*zeta)*q^500 + 
(-72*zeta^5 + 72*zeta^4)*q^502 + (48*zeta^5 - 96*zeta^4 + 48*zeta^2 + 
48*zeta)*q^506 + (24*zeta^5 - 24*zeta^2 - 24*zeta)*q^508 + (-76*zeta^5 - 
76*zeta^4 + 152*zeta^2 + 152*zeta)*q^512 + (-60*zeta^4 + 60*zeta^2 + 
60*zeta)*q^514 + (-112*zeta^5 + 56*zeta^4 + 56*zeta^2 + 56*zeta)*q^518 + 
(-12*zeta^5 + 12*zeta^4)*q^520 + O(q^522), (-12*zeta^5 + 12*zeta^4)*q^2 + 
(24*zeta^5 - 12*zeta^4 - 12*zeta^2 - 12*zeta)*q^4 + (-12*zeta^4 + 12*zeta^2 + 
12*zeta)*q^8 + (12*zeta^5 + 12*zeta^4 - 24*zeta^2 - 24*zeta)*q^10 + (24*zeta^5 -
24*zeta^2 - 24*zeta)*q^14 + (12*zeta^5 - 24*zeta^4 + 12*zeta^2 + 12*zeta)*q^16 +
(36*zeta^5 - 36*zeta^4)*q^20 + (-48*zeta^5 + 24*zeta^4 + 24*zeta^2 + 
24*zeta)*q^22 + (12*zeta^4 - 12*zeta^2 - 12*zeta)*q^26 + (-24*zeta^5 - 24*zeta^4
+ 48*zeta^2 + 48*zeta)*q^28 + (-60*zeta^5 + 60*zeta^2 + 60*zeta)*q^32 + 
(-36*zeta^5 + 72*zeta^4 - 36*zeta^2 - 36*zeta)*q^34 + (-24*zeta^5 + 
24*zeta^4)*q^38 + (-24*zeta^5 + 12*zeta^4 + 12*zeta^2 + 12*zeta)*q^40 + 
(72*zeta^4 - 72*zeta^2 - 72*zeta)*q^44 + (-24*zeta^5 - 24*zeta^4 + 48*zeta^2 + 
48*zeta)*q^46 + (-24*zeta^5 + 24*zeta^2 + 24*zeta)*q^50 + (12*zeta^5 - 24*zeta^4
+ 12*zeta^2 + 12*zeta)*q^52 + (-24*zeta^5 + 24*zeta^4)*q^56 + (24*zeta^5 - 
12*zeta^4 - 12*zeta^2 - 12*zeta)*q^58 + (-96*zeta^4 + 96*zeta^2 + 96*zeta)*q^62 
+ (36*zeta^5 + 36*zeta^4 - 72*zeta^2 - 72*zeta)*q^64 + (108*zeta^5 - 108*zeta^2 
- 108*zeta)*q^68 + (24*zeta^5 - 48*zeta^4 + 24*zeta^2 + 24*zeta)*q^70 + 
(84*zeta^5 - 84*zeta^4)*q^74 + (48*zeta^5 - 24*zeta^4 - 24*zeta^2 - 
24*zeta)*q^76 + (-36*zeta^4 + 36*zeta^2 + 36*zeta)*q^80 + (48*zeta^5 + 48*zeta^4
- 96*zeta^2 - 96*zeta)*q^82 + (24*zeta^5 - 24*zeta^2 - 24*zeta)*q^86 + 
(24*zeta^5 - 48*zeta^4 + 24*zeta^2 + 24*zeta)*q^88 + (-72*zeta^5 + 
72*zeta^4)*q^92 + (96*zeta^5 - 48*zeta^4 - 48*zeta^2 - 48*zeta)*q^94 + 
(36*zeta^4 - 36*zeta^2 - 36*zeta)*q^98 + (24*zeta^5 + 24*zeta^4 - 48*zeta^2 - 
48*zeta)*q^100 + (-12*zeta^5 + 12*zeta^2 + 12*zeta)*q^104 + (-72*zeta^5 + 
72*zeta^4)*q^110 + (-48*zeta^5 + 24*zeta^4 + 24*zeta^2 + 24*zeta)*q^112 + 
(-36*zeta^4 + 36*zeta^2 + 36*zeta)*q^116 + (-96*zeta^5 - 96*zeta^4 + 192*zeta^2 
+ 192*zeta)*q^118 + (-84*zeta^5 + 84*zeta^2 + 84*zeta)*q^122 + (-96*zeta^5 + 
192*zeta^4 - 96*zeta^2 - 96*zeta)*q^124 + (-12*zeta^5 + 12*zeta^4)*q^128 + 
(24*zeta^5 - 12*zeta^4 - 12*zeta^2 - 12*zeta)*q^130 + (120*zeta^4 - 120*zeta^2 -
120*zeta)*q^134 + (-36*zeta^5 - 36*zeta^4 + 72*zeta^2 + 72*zeta)*q^136 + 
(-72*zeta^5 + 72*zeta^2 + 72*zeta)*q^140 + (72*zeta^5 - 144*zeta^4 + 72*zeta^2 +
72*zeta)*q^142 + (84*zeta^5 - 84*zeta^4)*q^146 + (-168*zeta^5 + 84*zeta^4 + 
84*zeta^2 + 84*zeta)*q^148 + (-24*zeta^4 + 24*zeta^2 + 24*zeta)*q^152 + 
(48*zeta^5 + 48*zeta^4 - 96*zeta^2 - 96*zeta)*q^154 + (24*zeta^5 - 24*zeta^2 - 
24*zeta)*q^158 + (-60*zeta^5 + 120*zeta^4 - 60*zeta^2 - 60*zeta)*q^160 + 
(144*zeta^5 - 144*zeta^4)*q^164 + (-192*zeta^5 + 96*zeta^4 + 96*zeta^2 + 
96*zeta)*q^166 + (108*zeta^4 - 108*zeta^2 - 108*zeta)*q^170 + (-24*zeta^5 - 
24*zeta^4 + 48*zeta^2 + 48*zeta)*q^172 + (72*zeta^5 - 72*zeta^2 - 72*zeta)*q^176
+ (36*zeta^5 - 72*zeta^4 + 36*zeta^2 + 36*zeta)*q^178 + (24*zeta^5 - 
24*zeta^4)*q^182 + (48*zeta^5 - 24*zeta^4 - 24*zeta^2 - 24*zeta)*q^184 + 
(-144*zeta^4 + 144*zeta^2 + 144*zeta)*q^188 + (24*zeta^5 + 24*zeta^4 - 48*zeta^2
- 48*zeta)*q^190 + (24*zeta^5 - 24*zeta^2 - 24*zeta)*q^194 + (36*zeta^5 - 
72*zeta^4 + 36*zeta^2 + 36*zeta)*q^196 + (24*zeta^5 - 24*zeta^4)*q^200 + 
(96*zeta^5 - 48*zeta^4 - 48*zeta^2 - 48*zeta)*q^202 + (-96*zeta^4 + 96*zeta^2 + 
96*zeta)*q^206 + (-12*zeta^5 - 12*zeta^4 + 24*zeta^2 + 24*zeta)*q^208 + 
(-132*zeta^5 + 132*zeta^4)*q^218 + (144*zeta^5 - 72*zeta^4 - 72*zeta^2 - 
72*zeta)*q^220 + (120*zeta^4 - 120*zeta^2 - 120*zeta)*q^224 + (12*zeta^5 + 
12*zeta^4 - 24*zeta^2 - 24*zeta)*q^226 + (-72*zeta^5 + 72*zeta^2 + 
72*zeta)*q^230 + (-12*zeta^5 + 24*zeta^4 - 12*zeta^2 - 12*zeta)*q^232 + 
(-288*zeta^5 + 288*zeta^4)*q^236 + (144*zeta^5 - 72*zeta^4 - 72*zeta^2 - 
72*zeta)*q^238 + (-12*zeta^4 + 12*zeta^2 + 12*zeta)*q^242 + (84*zeta^5 + 
84*zeta^4 - 168*zeta^2 - 168*zeta)*q^244 + (96*zeta^5 - 96*zeta^2 - 
96*zeta)*q^248 + (-84*zeta^5 + 168*zeta^4 - 84*zeta^2 - 84*zeta)*q^250 + 
(-24*zeta^5 + 24*zeta^4)*q^254 + (168*zeta^5 - 84*zeta^4 - 84*zeta^2 - 
84*zeta)*q^256 + (-36*zeta^4 + 36*zeta^2 + 36*zeta)*q^260 + (-24*zeta^5 - 
24*zeta^4 + 48*zeta^2 + 48*zeta)*q^262 + (48*zeta^5 - 48*zeta^2 - 48*zeta)*q^266
+ (120*zeta^5 - 240*zeta^4 + 120*zeta^2 + 120*zeta)*q^268 + (108*zeta^5 - 
108*zeta^4)*q^272 + (24*zeta^5 - 12*zeta^4 - 12*zeta^2 - 12*zeta)*q^274 + 
(-96*zeta^4 + 96*zeta^2 + 96*zeta)*q^278 + (24*zeta^5 + 24*zeta^4 - 48*zeta^2 - 
48*zeta)*q^280 + (-216*zeta^5 + 216*zeta^2 + 216*zeta)*q^284 + (-24*zeta^5 + 
48*zeta^4 - 24*zeta^2 - 24*zeta)*q^286 + (36*zeta^5 - 36*zeta^4)*q^290 + 
(-168*zeta^5 + 84*zeta^4 + 84*zeta^2 + 84*zeta)*q^292 + (84*zeta^4 - 84*zeta^2 -
84*zeta)*q^296 + (-60*zeta^5 - 60*zeta^4 + 120*zeta^2 + 120*zeta)*q^298 + 
(240*zeta^5 - 240*zeta^2 - 240*zeta)*q^302 + (24*zeta^5 - 48*zeta^4 + 24*zeta^2 
+ 24*zeta)*q^304 + (144*zeta^5 - 144*zeta^4)*q^308 + (-192*zeta^5 + 96*zeta^4 + 
96*zeta^2 + 96*zeta)*q^310 + (-204*zeta^4 + 204*zeta^2 + 204*zeta)*q^314 + 
(-24*zeta^5 - 24*zeta^4 + 48*zeta^2 + 48*zeta)*q^316 + (108*zeta^5 - 108*zeta^2 
- 108*zeta)*q^320 + (-48*zeta^5 + 96*zeta^4 - 48*zeta^2 - 48*zeta)*q^322 + 
(192*zeta^5 - 192*zeta^4)*q^326 + (-96*zeta^5 + 48*zeta^4 + 48*zeta^2 + 
48*zeta)*q^328 + (288*zeta^4 - 288*zeta^2 - 288*zeta)*q^332 + (120*zeta^5 + 
120*zeta^4 - 240*zeta^2 - 240*zeta)*q^334 + (-144*zeta^5 + 144*zeta^2 + 
144*zeta)*q^338 + (108*zeta^5 - 216*zeta^4 + 108*zeta^2 + 108*zeta)*q^340 + 
(-24*zeta^5 + 24*zeta^4)*q^344 + (-264*zeta^5 + 132*zeta^4 + 132*zeta^2 + 
132*zeta)*q^346 + (48*zeta^4 - 48*zeta^2 - 48*zeta)*q^350 + (-120*zeta^5 - 
120*zeta^4 + 240*zeta^2 + 240*zeta)*q^352 + (-108*zeta^5 + 108*zeta^2 + 
108*zeta)*q^356 + (-144*zeta^5 + 288*zeta^4 - 144*zeta^2 - 144*zeta)*q^358 + 
(-24*zeta^5 + 24*zeta^4)*q^362 + (-48*zeta^5 + 24*zeta^4 + 24*zeta^2 + 
24*zeta)*q^364 + (72*zeta^4 - 72*zeta^2 - 72*zeta)*q^368 + (-84*zeta^5 - 
84*zeta^4 + 168*zeta^2 + 168*zeta)*q^370 + (-216*zeta^5 + 216*zeta^2 + 
216*zeta)*q^374 + (-48*zeta^5 + 96*zeta^4 - 48*zeta^2 - 48*zeta)*q^376 + 
(72*zeta^5 - 72*zeta^4)*q^380 + (240*zeta^5 - 120*zeta^4 - 120*zeta^2 - 
120*zeta)*q^382 + (12*zeta^4 - 12*zeta^2 - 12*zeta)*q^386 + (-24*zeta^5 - 
24*zeta^4 + 48*zeta^2 + 48*zeta)*q^388 + (-36*zeta^5 + 36*zeta^2 + 
36*zeta)*q^392 + (36*zeta^5 - 72*zeta^4 + 36*zeta^2 + 36*zeta)*q^394 + 
(-240*zeta^5 + 240*zeta^4)*q^398 + (48*zeta^5 - 24*zeta^4 - 24*zeta^2 - 
24*zeta)*q^400 + (-144*zeta^4 + 144*zeta^2 + 144*zeta)*q^404 + (-24*zeta^5 - 
24*zeta^4 + 48*zeta^2 + 48*zeta)*q^406 + (144*zeta^5 - 144*zeta^2 - 
144*zeta)*q^410 + (-96*zeta^5 + 192*zeta^4 - 96*zeta^2 - 96*zeta)*q^412 + 
(-60*zeta^5 + 60*zeta^4)*q^416 + (-96*zeta^5 + 48*zeta^4 + 48*zeta^2 + 
48*zeta)*q^418 + (120*zeta^4 - 120*zeta^2 - 120*zeta)*q^422 + (24*zeta^5 - 
48*zeta^4 + 24*zeta^2 + 24*zeta)*q^430 + (-192*zeta^5 + 192*zeta^4)*q^434 + 
(264*zeta^5 - 132*zeta^4 - 132*zeta^2 - 132*zeta)*q^436 + (-72*zeta^4 + 
72*zeta^2 + 72*zeta)*q^440 + (36*zeta^5 + 36*zeta^4 - 72*zeta^2 - 72*zeta)*q^442
+ (24*zeta^5 - 24*zeta^2 - 24*zeta)*q^446 + (72*zeta^5 - 144*zeta^4 + 72*zeta^2 
+ 72*zeta)*q^448 + (36*zeta^5 - 36*zeta^4)*q^452 + (-48*zeta^5 + 24*zeta^4 + 
24*zeta^2 + 24*zeta)*q^454 + (12*zeta^4 - 12*zeta^2 - 12*zeta)*q^458 + 
(72*zeta^5 + 72*zeta^4 - 144*zeta^2 - 144*zeta)*q^460 + (-36*zeta^5 + 36*zeta^2 
+ 36*zeta)*q^464 + (180*zeta^5 - 360*zeta^4 + 180*zeta^2 + 180*zeta)*q^466 + 
(144*zeta^5 - 144*zeta^4)*q^470 + (192*zeta^5 - 96*zeta^4 - 96*zeta^2 - 
96*zeta)*q^472 + (-216*zeta^4 + 216*zeta^2 + 216*zeta)*q^476 + (192*zeta^5 + 
192*zeta^4 - 384*zeta^2 - 384*zeta)*q^478 + (348*zeta^5 - 348*zeta^2 - 
348*zeta)*q^482 + (-12*zeta^5 + 24*zeta^4 - 12*zeta^2 - 12*zeta)*q^484 + 
(84*zeta^5 - 84*zeta^4)*q^488 + (72*zeta^5 - 36*zeta^4 - 36*zeta^2 - 
36*zeta)*q^490 + (24*zeta^4 - 24*zeta^2 - 24*zeta)*q^494 + (96*zeta^5 + 
96*zeta^4 - 192*zeta^2 - 192*zeta)*q^496 + (252*zeta^5 - 252*zeta^2 - 
252*zeta)*q^500 + (-72*zeta^5 + 144*zeta^4 - 72*zeta^2 - 72*zeta)*q^502 + 
(144*zeta^5 - 144*zeta^4)*q^506 + (48*zeta^5 - 24*zeta^4 - 24*zeta^2 - 
24*zeta)*q^508 + (-228*zeta^4 + 228*zeta^2 + 228*zeta)*q^512 + (-60*zeta^5 - 
60*zeta^4 + 120*zeta^2 + 120*zeta)*q^514 + (-168*zeta^5 + 168*zeta^2 + 
168*zeta)*q^518 + (-12*zeta^5 + 24*zeta^4 - 12*zeta^2 - 12*zeta)*q^520 + 
O(q^522), (2*zeta^3 - 1)*q + (-6*zeta^3 + 3)*q^5 + (-2*zeta^3 + 1)*q^7 + 
(-6*zeta^3 + 3)*q^11 + (-2*zeta^3 + 1)*q^13 + (-12*zeta^3 + 6)*q^17 + (-8*zeta^3
+ 4)*q^19 + (6*zeta^3 - 3)*q^23 + (8*zeta^3 - 4)*q^25 + (-6*zeta^3 + 3)*q^29 + 
(10*zeta^3 - 5)*q^31 + (6*zeta^3 - 3)*q^35 + (4*zeta^3 - 2)*q^37 + (-6*zeta^3 + 
3)*q^41 + (-2*zeta^3 + 1)*q^43 + (18*zeta^3 - 9)*q^47 + (-12*zeta^3 + 6)*q^49 + 
(12*zeta^3 - 6)*q^53 + (18*zeta^3 - 9)*q^55 + (6*zeta^3 - 3)*q^59 + (-26*zeta^3 
+ 13)*q^61 + (6*zeta^3 - 3)*q^65 + (-14*zeta^3 + 7)*q^67 + (24*zeta^3 - 12)*q^71
+ (-20*zeta^3 + 10)*q^73 + (6*zeta^3 - 3)*q^77 + (22*zeta^3 - 11)*q^79 + 
(18*zeta^3 - 9)*q^83 + (36*zeta^3 - 18)*q^85 + (-12*zeta^3 + 6)*q^89 + (2*zeta^3
- 1)*q^91 + (24*zeta^3 - 12)*q^95 + (22*zeta^3 - 11)*q^97 + (-30*zeta^3 + 
15)*q^101 + (-14*zeta^3 + 7)*q^103 + (-24*zeta^3 + 12)*q^107 + (4*zeta^3 - 
2)*q^109 + (18*zeta^3 - 9)*q^113 + (-18*zeta^3 + 9)*q^115 + (12*zeta^3 - 
6)*q^119 + (-4*zeta^3 + 2)*q^121 + (6*zeta^3 - 3)*q^125 + (-32*zeta^3 + 
16)*q^127 + (-42*zeta^3 + 21)*q^131 + (8*zeta^3 - 4)*q^133 + (-6*zeta^3 + 
3)*q^137 + (10*zeta^3 - 5)*q^139 + (6*zeta^3 - 3)*q^143 + (18*zeta^3 - 9)*q^145 
+ (-30*zeta^3 + 15)*q^149 + (-26*zeta^3 + 13)*q^151 + (-30*zeta^3 + 15)*q^155 + 
(-26*zeta^3 + 13)*q^157 + (-6*zeta^3 + 3)*q^161 + (40*zeta^3 - 20)*q^163 + 
(-18*zeta^3 + 9)*q^167 + (-24*zeta^3 + 12)*q^169 + (18*zeta^3 - 9)*q^173 + 
(-8*zeta^3 + 4)*q^175 + (-24*zeta^3 + 12)*q^179 + (4*zeta^3 - 2)*q^181 + 
(-12*zeta^3 + 6)*q^185 + (36*zeta^3 - 18)*q^187 + (-30*zeta^3 + 15)*q^191 + 
(22*zeta^3 - 11)*q^193 + (-12*zeta^3 + 6)*q^197 + (-8*zeta^3 + 4)*q^199 + 
(6*zeta^3 - 3)*q^203 + (18*zeta^3 - 9)*q^205 + (24*zeta^3 - 12)*q^209 + 
(34*zeta^3 - 17)*q^211 + (6*zeta^3 - 3)*q^215 + (-10*zeta^3 + 5)*q^217 + 
(12*zeta^3 - 6)*q^221 + (-2*zeta^3 + 1)*q^223 + (-54*zeta^3 + 27)*q^227 + 
(-26*zeta^3 + 13)*q^229 + (12*zeta^3 - 6)*q^233 + (-54*zeta^3 + 27)*q^235 + 
(54*zeta^3 - 27)*q^239 + (-2*zeta^3 + 1)*q^241 + (36*zeta^3 - 18)*q^245 + 
(8*zeta^3 - 4)*q^247 + (-24*zeta^3 + 12)*q^251 + (-18*zeta^3 + 9)*q^253 + 
(18*zeta^3 - 9)*q^257 + (-4*zeta^3 + 2)*q^259 + (42*zeta^3 - 21)*q^263 + 
(-36*zeta^3 + 18)*q^265 + (12*zeta^3 - 6)*q^269 + (16*zeta^3 - 8)*q^271 + 
(-24*zeta^3 + 12)*q^275 + (-2*zeta^3 + 1)*q^277 + (-6*zeta^3 + 3)*q^281 + 
(10*zeta^3 - 5)*q^283 + (6*zeta^3 - 3)*q^287 + (38*zeta^3 - 19)*q^289 + 
(42*zeta^3 - 21)*q^293 + (-18*zeta^3 + 9)*q^295 + (-6*zeta^3 + 3)*q^299 + 
(2*zeta^3 - 1)*q^301 + (78*zeta^3 - 39)*q^305 + (40*zeta^3 - 20)*q^307 + 
(-42*zeta^3 + 21)*q^311 + (-2*zeta^3 + 1)*q^313 + (42*zeta^3 - 21)*q^317 + 
(18*zeta^3 - 9)*q^319 + (48*zeta^3 - 24)*q^323 + (-8*zeta^3 + 4)*q^325 + 
(-18*zeta^3 + 9)*q^329 + (22*zeta^3 - 11)*q^331 + (42*zeta^3 - 21)*q^335 + 
(46*zeta^3 - 23)*q^337 + (-30*zeta^3 + 15)*q^341 + (26*zeta^3 - 13)*q^343 + 
(-18*zeta^3 + 9)*q^347 + (-2*zeta^3 + 1)*q^349 + (-6*zeta^3 + 3)*q^353 + 
(-72*zeta^3 + 36)*q^355 + (-6*zeta^3 + 3)*q^361 + (60*zeta^3 - 30)*q^365 + 
(-26*zeta^3 + 13)*q^367 + (-12*zeta^3 + 6)*q^371 + (-2*zeta^3 + 1)*q^373 + 
(6*zeta^3 - 3)*q^377 + (-32*zeta^3 + 16)*q^379 + (30*zeta^3 - 15)*q^383 + 
(-18*zeta^3 + 9)*q^385 + (-30*zeta^3 + 15)*q^389 + (-36*zeta^3 + 18)*q^391 + 
(-66*zeta^3 + 33)*q^395 + (4*zeta^3 - 2)*q^397 + (-6*zeta^3 + 3)*q^401 + 
(-10*zeta^3 + 5)*q^403 + (-12*zeta^3 + 6)*q^407 + (46*zeta^3 - 23)*q^409 + 
(-6*zeta^3 + 3)*q^413 + (-54*zeta^3 + 27)*q^415 + (-18*zeta^3 + 9)*q^419 + 
(70*zeta^3 - 35)*q^421 + (-48*zeta^3 + 24)*q^425 + (26*zeta^3 - 13)*q^427 + 
(-48*zeta^3 + 24)*q^431 + (-68*zeta^3 + 34)*q^433 + (-24*zeta^3 + 12)*q^437 + 
(70*zeta^3 - 35)*q^439 + (18*zeta^3 - 9)*q^443 + (36*zeta^3 - 18)*q^445 + 
(36*zeta^3 - 18)*q^449 + (18*zeta^3 - 9)*q^451 + (-6*zeta^3 + 3)*q^455 + 
(-74*zeta^3 + 37)*q^457 + (-6*zeta^3 + 3)*q^461 + (-38*zeta^3 + 19)*q^463 + 
(-24*zeta^3 + 12)*q^467 + (14*zeta^3 - 7)*q^469 + (6*zeta^3 - 3)*q^473 + 
(-32*zeta^3 + 16)*q^475 + (-54*zeta^3 + 27)*q^479 + (-4*zeta^3 + 2)*q^481 + 
(-66*zeta^3 + 33)*q^485 + (64*zeta^3 - 32)*q^487 + (6*zeta^3 - 3)*q^491 + 
(36*zeta^3 - 18)*q^493 + (-24*zeta^3 + 12)*q^497 + (10*zeta^3 - 5)*q^499 + 
(72*zeta^3 - 36)*q^503 + (90*zeta^3 - 45)*q^505 + (-78*zeta^3 + 39)*q^509 + 
(20*zeta^3 - 10)*q^511 + (42*zeta^3 - 21)*q^515 + (-54*zeta^3 + 27)*q^517 + 
(-84*zeta^3 + 42)*q^521 + O(q^522), (3*zeta^5 - 3*zeta^2 + 3*zeta)*q + (9*zeta^5
+ 9*zeta^4)*q^5 + (6*zeta^4 + 6*zeta^2 - 6*zeta)*q^7 + (18*zeta^4 + 18*zeta^2 - 
18*zeta)*q^11 + (-15*zeta^5 - 15*zeta^4)*q^13 + (9*zeta^5 - 9*zeta^2 + 
9*zeta)*q^17 + (6*zeta^5 - 6*zeta^2 + 6*zeta)*q^19 + (18*zeta^5 + 
18*zeta^4)*q^23 + (12*zeta^4 + 12*zeta^2 - 12*zeta)*q^25 + (-9*zeta^4 - 9*zeta^2
+ 9*zeta)*q^29 + (12*zeta^5 + 12*zeta^4)*q^31 + (-18*zeta^5 + 18*zeta^2 - 
18*zeta)*q^35 + (15*zeta^5 - 15*zeta^2 + 15*zeta)*q^37 + (-18*zeta^5 - 
18*zeta^4)*q^41 + (-30*zeta^4 - 30*zeta^2 + 30*zeta)*q^43 + (9*zeta^5 + 
9*zeta^4)*q^49 + (18*zeta^5 - 18*zeta^2 + 18*zeta)*q^53 + (-54*zeta^5 + 
54*zeta^2 - 54*zeta)*q^55 + (-36*zeta^5 - 36*zeta^4)*q^59 + (15*zeta^4 + 
15*zeta^2 - 15*zeta)*q^61 + (-45*zeta^4 - 45*zeta^2 + 45*zeta)*q^65 + (-6*zeta^5
- 6*zeta^4)*q^67 + (-18*zeta^5 + 18*zeta^2 - 18*zeta)*q^71 + (-3*zeta^5 + 
3*zeta^2 - 3*zeta)*q^73 + (-36*zeta^5 - 36*zeta^4)*q^77 + (-30*zeta^4 - 
30*zeta^2 + 30*zeta)*q^79 + (27*zeta^5 + 27*zeta^4)*q^85 + (9*zeta^5 - 9*zeta^2 
+ 9*zeta)*q^89 + (30*zeta^5 - 30*zeta^2 + 30*zeta)*q^91 + (18*zeta^5 + 
18*zeta^4)*q^95 + (-30*zeta^4 - 30*zeta^2 + 30*zeta)*q^97 + (-18*zeta^4 - 
18*zeta^2 + 18*zeta)*q^101 + (48*zeta^5 + 48*zeta^4)*q^103 + (-36*zeta^5 + 
36*zeta^2 - 36*zeta)*q^107 + (-21*zeta^5 + 21*zeta^2 - 21*zeta)*q^109 + 
(27*zeta^5 + 27*zeta^4)*q^113 + (54*zeta^4 + 54*zeta^2 - 54*zeta)*q^115 + 
(18*zeta^4 + 18*zeta^2 - 18*zeta)*q^119 + (-75*zeta^5 - 75*zeta^4)*q^121 + 
(9*zeta^5 - 9*zeta^2 + 9*zeta)*q^125 + (6*zeta^5 - 6*zeta^2 + 6*zeta)*q^127 + 
(-18*zeta^5 - 18*zeta^4)*q^131 + (12*zeta^4 + 12*zeta^2 - 12*zeta)*q^133 + 
(45*zeta^4 + 45*zeta^2 - 45*zeta)*q^137 + (-24*zeta^5 - 24*zeta^4)*q^139 + 
(90*zeta^5 - 90*zeta^2 + 90*zeta)*q^143 + (27*zeta^5 - 27*zeta^2 + 
27*zeta)*q^145 + (45*zeta^5 + 45*zeta^4)*q^149 + (-12*zeta^4 - 12*zeta^2 + 
12*zeta)*q^151 + (36*zeta^4 + 36*zeta^2 - 36*zeta)*q^155 + (-15*zeta^5 - 
15*zeta^4)*q^157 + (-36*zeta^5 + 36*zeta^2 - 36*zeta)*q^161 + (-12*zeta^5 + 
12*zeta^2 - 12*zeta)*q^163 + (54*zeta^5 + 54*zeta^4)*q^167 + (36*zeta^4 + 
36*zeta^2 - 36*zeta)*q^169 + (27*zeta^4 + 27*zeta^2 - 27*zeta)*q^173 + 
(-24*zeta^5 - 24*zeta^4)*q^175 + (-36*zeta^5 + 36*zeta^2 - 36*zeta)*q^179 + 
(42*zeta^5 - 42*zeta^2 + 42*zeta)*q^181 + (45*zeta^5 + 45*zeta^4)*q^185 + 
(54*zeta^4 + 54*zeta^2 - 54*zeta)*q^187 + (-18*zeta^4 - 18*zeta^2 + 
18*zeta)*q^191 + (75*zeta^5 + 75*zeta^4)*q^193 + (-45*zeta^5 + 45*zeta^2 - 
45*zeta)*q^197 + (60*zeta^5 - 60*zeta^2 + 60*zeta)*q^199 + (18*zeta^5 + 
18*zeta^4)*q^203 + (-54*zeta^4 - 54*zeta^2 + 54*zeta)*q^205 + (36*zeta^4 + 
36*zeta^2 - 36*zeta)*q^209 + (-42*zeta^5 - 42*zeta^4)*q^211 + (90*zeta^5 - 
90*zeta^2 + 90*zeta)*q^215 + (-24*zeta^5 + 24*zeta^2 - 24*zeta)*q^217 + 
(-45*zeta^5 - 45*zeta^4)*q^221 + (-30*zeta^4 - 30*zeta^2 + 30*zeta)*q^223 + 
(-54*zeta^4 - 54*zeta^2 + 54*zeta)*q^227 + (-15*zeta^5 - 15*zeta^4)*q^229 + 
(45*zeta^5 - 45*zeta^2 + 45*zeta)*q^233 + (33*zeta^4 + 33*zeta^2 - 
33*zeta)*q^241 + (27*zeta^4 + 27*zeta^2 - 27*zeta)*q^245 + (-30*zeta^5 - 
30*zeta^4)*q^247 + (-90*zeta^5 + 90*zeta^2 - 90*zeta)*q^251 + (-108*zeta^5 + 
108*zeta^2 - 108*zeta)*q^253 + (-81*zeta^5 - 81*zeta^4)*q^257 + (30*zeta^4 + 
30*zeta^2 - 30*zeta)*q^259 + (-72*zeta^4 - 72*zeta^2 + 72*zeta)*q^263 + 
(54*zeta^5 + 54*zeta^4)*q^265 + (-9*zeta^5 + 9*zeta^2 - 9*zeta)*q^269 + 
(-30*zeta^5 + 30*zeta^2 - 30*zeta)*q^271 + (-72*zeta^5 - 72*zeta^4)*q^275 + 
(-30*zeta^4 - 30*zeta^2 + 30*zeta)*q^277 + (45*zeta^4 + 45*zeta^2 - 
45*zeta)*q^281 + (12*zeta^5 + 12*zeta^4)*q^283 + (36*zeta^5 - 36*zeta^2 + 
36*zeta)*q^287 + (-24*zeta^5 + 24*zeta^2 - 24*zeta)*q^289 + (45*zeta^5 + 
45*zeta^4)*q^293 + (-108*zeta^4 - 108*zeta^2 + 108*zeta)*q^295 + (-90*zeta^4 - 
90*zeta^2 + 90*zeta)*q^299 + (60*zeta^5 + 60*zeta^4)*q^301 + (-45*zeta^5 + 
45*zeta^2 - 45*zeta)*q^305 + (60*zeta^5 - 60*zeta^2 + 60*zeta)*q^307 + 
(-72*zeta^5 - 72*zeta^4)*q^311 + (-75*zeta^4 - 75*zeta^2 + 75*zeta)*q^313 + 
(-45*zeta^4 - 45*zeta^2 + 45*zeta)*q^317 + (54*zeta^5 + 54*zeta^4)*q^319 + 
(18*zeta^5 - 18*zeta^2 + 18*zeta)*q^323 + (60*zeta^5 - 60*zeta^2 + 
60*zeta)*q^325 + (78*zeta^4 + 78*zeta^2 - 78*zeta)*q^331 + (-18*zeta^4 - 
18*zeta^2 + 18*zeta)*q^335 + (30*zeta^5 + 30*zeta^4)*q^337 + (-72*zeta^5 + 
72*zeta^2 - 72*zeta)*q^341 + (-60*zeta^5 + 60*zeta^2 - 60*zeta)*q^343 + 
(-54*zeta^5 - 54*zeta^4)*q^347 + (6*zeta^4 + 6*zeta^2 - 6*zeta)*q^349 + 
(-90*zeta^4 - 90*zeta^2 + 90*zeta)*q^353 + (-54*zeta^5 - 54*zeta^4)*q^355 + 
(54*zeta^5 - 54*zeta^2 + 54*zeta)*q^359 + (-45*zeta^5 + 45*zeta^2 - 
45*zeta)*q^361 + (-9*zeta^5 - 9*zeta^4)*q^365 + (96*zeta^4 + 96*zeta^2 - 
96*zeta)*q^367 + (36*zeta^4 + 36*zeta^2 - 36*zeta)*q^371 + (-42*zeta^5 - 
42*zeta^4)*q^373 + (-45*zeta^5 + 45*zeta^2 - 45*zeta)*q^377 + (-12*zeta^5 + 
12*zeta^2 - 12*zeta)*q^379 + (90*zeta^5 + 90*zeta^4)*q^383 + (-108*zeta^4 - 
108*zeta^2 + 108*zeta)*q^385 + (90*zeta^4 + 90*zeta^2 - 90*zeta)*q^389 + 
(54*zeta^5 + 54*zeta^4)*q^391 + (90*zeta^5 - 90*zeta^2 + 90*zeta)*q^395 + 
(-21*zeta^5 + 21*zeta^2 - 21*zeta)*q^397 + (-45*zeta^5 - 45*zeta^4)*q^401 + 
(-60*zeta^4 - 60*zeta^2 + 60*zeta)*q^403 + (90*zeta^4 + 90*zeta^2 - 
90*zeta)*q^407 + (-105*zeta^5 - 105*zeta^4)*q^409 + (72*zeta^5 - 72*zeta^2 + 
72*zeta)*q^413 + (87*zeta^4 + 87*zeta^2 - 87*zeta)*q^421 + (36*zeta^4 + 
36*zeta^2 - 36*zeta)*q^425 + (-30*zeta^5 - 30*zeta^4)*q^427 + (-72*zeta^5 + 
72*zeta^2 - 72*zeta)*q^431 + (33*zeta^5 - 33*zeta^2 + 33*zeta)*q^433 + 
(36*zeta^5 + 36*zeta^4)*q^437 + (24*zeta^4 + 24*zeta^2 - 24*zeta)*q^439 + 
(27*zeta^5 + 27*zeta^4)*q^445 + (-54*zeta^5 + 54*zeta^2 - 54*zeta)*q^449 + 
(108*zeta^5 - 108*zeta^2 + 108*zeta)*q^451 + (90*zeta^5 + 90*zeta^4)*q^455 + 
(105*zeta^4 + 105*zeta^2 - 105*zeta)*q^457 + (18*zeta^4 + 18*zeta^2 - 
18*zeta)*q^461 + (12*zeta^5 + 12*zeta^4)*q^463 + (-36*zeta^5 + 36*zeta^2 - 
36*zeta)*q^467 + (12*zeta^5 - 12*zeta^2 + 12*zeta)*q^469 + (180*zeta^5 + 
180*zeta^4)*q^473 + (24*zeta^4 + 24*zeta^2 - 24*zeta)*q^475 + (-54*zeta^4 - 
54*zeta^2 + 54*zeta)*q^479 + (-75*zeta^5 - 75*zeta^4)*q^481 + (90*zeta^5 - 
90*zeta^2 + 90*zeta)*q^485 + (60*zeta^5 - 60*zeta^2 + 60*zeta)*q^487 + 
(18*zeta^5 + 18*zeta^4)*q^491 + (-27*zeta^4 - 27*zeta^2 + 27*zeta)*q^493 + 
(-36*zeta^4 - 36*zeta^2 + 36*zeta)*q^497 + (66*zeta^5 + 66*zeta^4)*q^499 + 
(54*zeta^5 - 54*zeta^2 + 54*zeta)*q^505 + (-18*zeta^5 - 18*zeta^4)*q^509 + 
(-6*zeta^4 - 6*zeta^2 + 6*zeta)*q^511 + (144*zeta^4 + 144*zeta^2 - 
144*zeta)*q^515 + (90*zeta^5 - 90*zeta^2 + 90*zeta)*q^521 + O(q^522), (-6*zeta^5
- 3*zeta^4 + 3*zeta^2 - 3*zeta)*q^3 + (-9*zeta^4 - 9*zeta^2 + 9*zeta)*q^9 + 
(9*zeta^5 + 18*zeta^4 + 9*zeta^2 - 9*zeta)*q^15 + (-3*zeta^5 + 3*zeta^4 + 
6*zeta^2 - 6*zeta)*q^21 + (18*zeta^5 + 9*zeta^4 - 9*zeta^2 + 9*zeta)*q^27 + 
(9*zeta^5 - 9*zeta^4 - 18*zeta^2 + 18*zeta)*q^33 + (-3*zeta^5 - 6*zeta^4 - 
3*zeta^2 + 3*zeta)*q^39 + (-27*zeta^5 + 27*zeta^2 - 27*zeta)*q^45 + (-36*zeta^5 
- 18*zeta^4 + 18*zeta^2 - 18*zeta)*q^51 + (24*zeta^5 + 12*zeta^4 - 12*zeta^2 + 
12*zeta)*q^57 + (-9*zeta^5 - 9*zeta^4)*q^63 + (-9*zeta^5 - 18*zeta^4 - 9*zeta^2 
+ 9*zeta)*q^69 + (12*zeta^5 - 12*zeta^4 - 24*zeta^2 + 24*zeta)*q^75 + (27*zeta^4
+ 27*zeta^2 - 27*zeta)*q^81 + (9*zeta^5 - 9*zeta^4 - 18*zeta^2 + 18*zeta)*q^87 +
(15*zeta^5 + 30*zeta^4 + 15*zeta^2 - 15*zeta)*q^93 + (27*zeta^5 + 
27*zeta^4)*q^99 + (18*zeta^5 + 9*zeta^4 - 9*zeta^2 + 9*zeta)*q^105 + (-12*zeta^5
- 6*zeta^4 + 6*zeta^2 - 6*zeta)*q^111 + (9*zeta^5 - 9*zeta^2 + 9*zeta)*q^117 + 
(9*zeta^5 + 18*zeta^4 + 9*zeta^2 - 9*zeta)*q^123 + (-3*zeta^5 + 3*zeta^4 + 
6*zeta^2 - 6*zeta)*q^129 + (-27*zeta^5 - 54*zeta^4 - 27*zeta^2 + 27*zeta)*q^135 
+ (-27*zeta^5 + 27*zeta^4 + 54*zeta^2 - 54*zeta)*q^141 + (-18*zeta^5 - 36*zeta^4
- 18*zeta^2 + 18*zeta)*q^147 + (-54*zeta^4 - 54*zeta^2 + 54*zeta)*q^153 + 
(36*zeta^5 + 18*zeta^4 - 18*zeta^2 + 18*zeta)*q^159 + (-54*zeta^5 - 27*zeta^4 + 
27*zeta^2 - 27*zeta)*q^165 + (36*zeta^4 + 36*zeta^2 - 36*zeta)*q^171 + 
(-9*zeta^5 - 18*zeta^4 - 9*zeta^2 + 9*zeta)*q^177 + (-39*zeta^5 + 39*zeta^4 + 
78*zeta^2 - 78*zeta)*q^183 + (9*zeta^5 - 9*zeta^4 - 18*zeta^2 + 18*zeta)*q^189 +
(-9*zeta^5 + 9*zeta^4 + 18*zeta^2 - 18*zeta)*q^195 + (-21*zeta^5 - 42*zeta^4 - 
21*zeta^2 + 21*zeta)*q^201 + (27*zeta^5 - 27*zeta^2 + 27*zeta)*q^207 + 
(72*zeta^5 + 36*zeta^4 - 36*zeta^2 + 36*zeta)*q^213 + (60*zeta^5 + 30*zeta^4 - 
30*zeta^2 + 30*zeta)*q^219 + (36*zeta^5 + 36*zeta^4)*q^225 + (-9*zeta^5 - 
18*zeta^4 - 9*zeta^2 + 9*zeta)*q^231 + (33*zeta^5 - 33*zeta^4 - 66*zeta^2 + 
66*zeta)*q^237 + (-54*zeta^5 - 27*zeta^4 + 27*zeta^2 - 27*zeta)*q^243 + 
(-27*zeta^5 + 27*zeta^4 + 54*zeta^2 - 54*zeta)*q^249 + (54*zeta^5 + 108*zeta^4 +
54*zeta^2 - 54*zeta)*q^255 + (27*zeta^5 + 27*zeta^4)*q^261 + (-36*zeta^5 - 
18*zeta^4 + 18*zeta^2 - 18*zeta)*q^267 + (-6*zeta^5 - 3*zeta^4 + 3*zeta^2 - 
3*zeta)*q^273 + (-45*zeta^5 + 45*zeta^2 - 45*zeta)*q^279 + (-36*zeta^5 - 
72*zeta^4 - 36*zeta^2 + 36*zeta)*q^285 + (33*zeta^5 - 33*zeta^4 - 66*zeta^2 + 
66*zeta)*q^291 + (-27*zeta^5 + 27*zeta^4 + 54*zeta^2 - 54*zeta)*q^297 + 
(45*zeta^5 - 45*zeta^4 - 90*zeta^2 + 90*zeta)*q^303 + (-21*zeta^5 - 42*zeta^4 - 
21*zeta^2 + 21*zeta)*q^309 + (27*zeta^4 + 27*zeta^2 - 27*zeta)*q^315 + 
(-72*zeta^5 - 36*zeta^4 + 36*zeta^2 - 36*zeta)*q^321 + (-12*zeta^5 - 6*zeta^4 + 
6*zeta^2 - 6*zeta)*q^327 + (-18*zeta^4 - 18*zeta^2 + 18*zeta)*q^333 + 
(-27*zeta^5 - 54*zeta^4 - 27*zeta^2 + 27*zeta)*q^339 + (-27*zeta^5 + 27*zeta^4 +
54*zeta^2 - 54*zeta)*q^345 + (9*zeta^5 + 18*zeta^4 + 9*zeta^2 - 9*zeta)*q^351 + 
(-18*zeta^5 + 18*zeta^4 + 36*zeta^2 - 36*zeta)*q^357 + (-6*zeta^5 - 12*zeta^4 - 
6*zeta^2 + 6*zeta)*q^363 + (-27*zeta^5 + 27*zeta^2 - 27*zeta)*q^369 + (18*zeta^5
+ 9*zeta^4 - 9*zeta^2 + 9*zeta)*q^375 + (96*zeta^5 + 48*zeta^4 - 48*zeta^2 + 
48*zeta)*q^381 + (-9*zeta^5 - 9*zeta^4)*q^387 + (63*zeta^5 + 126*zeta^4 + 
63*zeta^2 - 63*zeta)*q^393 + (12*zeta^5 - 12*zeta^4 - 24*zeta^2 + 24*zeta)*q^399
+ (81*zeta^5 - 81*zeta^2 + 81*zeta)*q^405 + (9*zeta^5 - 9*zeta^4 - 18*zeta^2 + 
18*zeta)*q^411 + (15*zeta^5 + 30*zeta^4 + 15*zeta^2 - 15*zeta)*q^417 + 
(-81*zeta^5 - 81*zeta^4)*q^423 + (18*zeta^5 + 9*zeta^4 - 9*zeta^2 + 
9*zeta)*q^429 + (-54*zeta^5 - 27*zeta^4 + 27*zeta^2 - 27*zeta)*q^435 + 
(54*zeta^5 - 54*zeta^2 + 54*zeta)*q^441 + (45*zeta^5 + 90*zeta^4 + 45*zeta^2 - 
45*zeta)*q^447 + (-39*zeta^5 + 39*zeta^4 + 78*zeta^2 - 78*zeta)*q^453 + 
(108*zeta^5 + 54*zeta^4 - 54*zeta^2 + 54*zeta)*q^459 + (45*zeta^5 - 45*zeta^4 - 
90*zeta^2 + 90*zeta)*q^465 + (-39*zeta^5 - 78*zeta^4 - 39*zeta^2 + 
39*zeta)*q^471 + (54*zeta^4 + 54*zeta^2 - 54*zeta)*q^477 + (-18*zeta^5 - 
9*zeta^4 + 9*zeta^2 - 9*zeta)*q^483 + (-120*zeta^5 - 60*zeta^4 + 60*zeta^2 - 
60*zeta)*q^489 + (-81*zeta^4 - 81*zeta^2 + 81*zeta)*q^495 + (27*zeta^5 + 
54*zeta^4 + 27*zeta^2 - 27*zeta)*q^501 + (-36*zeta^5 + 36*zeta^4 + 72*zeta^2 - 
72*zeta)*q^507 + (-72*zeta^5 - 36*zeta^4 + 36*zeta^2 - 36*zeta)*q^513 + 
(-27*zeta^5 + 27*zeta^4 + 54*zeta^2 - 54*zeta)*q^519 + O(q^522), (zeta^5 + 
2*zeta^4 + zeta^2 - zeta)*q + (3*zeta^5 - 3*zeta^4 - 6*zeta^2 + 6*zeta)*q^5 + 
(-4*zeta^5 - 2*zeta^4 + 2*zeta^2 - 2*zeta)*q^7 + (12*zeta^5 + 6*zeta^4 - 
6*zeta^2 + 6*zeta)*q^11 + (5*zeta^5 - 5*zeta^4 - 10*zeta^2 + 10*zeta)*q^13 + 
(-3*zeta^5 - 6*zeta^4 - 3*zeta^2 + 3*zeta)*q^17 + (2*zeta^5 + 4*zeta^4 + 
2*zeta^2 - 2*zeta)*q^19 + (6*zeta^5 - 6*zeta^4 - 12*zeta^2 + 12*zeta)*q^23 + 
(-8*zeta^5 - 4*zeta^4 + 4*zeta^2 - 4*zeta)*q^25 + (-6*zeta^5 - 3*zeta^4 + 
3*zeta^2 - 3*zeta)*q^29 + (-4*zeta^5 + 4*zeta^4 + 8*zeta^2 - 8*zeta)*q^31 + 
(6*zeta^5 + 12*zeta^4 + 6*zeta^2 - 6*zeta)*q^35 + (5*zeta^5 + 10*zeta^4 + 
5*zeta^2 - 5*zeta)*q^37 + (-6*zeta^5 + 6*zeta^4 + 12*zeta^2 - 12*zeta)*q^41 + 
(20*zeta^5 + 10*zeta^4 - 10*zeta^2 + 10*zeta)*q^43 + (-3*zeta^5 + 3*zeta^4 + 
6*zeta^2 - 6*zeta)*q^49 + (-6*zeta^5 - 12*zeta^4 - 6*zeta^2 + 6*zeta)*q^53 + 
(-18*zeta^5 - 36*zeta^4 - 18*zeta^2 + 18*zeta)*q^55 + (-12*zeta^5 + 12*zeta^4 + 
24*zeta^2 - 24*zeta)*q^59 + (-10*zeta^5 - 5*zeta^4 + 5*zeta^2 - 5*zeta)*q^61 + 
(-30*zeta^5 - 15*zeta^4 + 15*zeta^2 - 15*zeta)*q^65 + (2*zeta^5 - 2*zeta^4 - 
4*zeta^2 + 4*zeta)*q^67 + (6*zeta^5 + 12*zeta^4 + 6*zeta^2 - 6*zeta)*q^71 + 
(-zeta^5 - 2*zeta^4 - zeta^2 + zeta)*q^73 + (-12*zeta^5 + 12*zeta^4 + 24*zeta^2 
- 24*zeta)*q^77 + (20*zeta^5 + 10*zeta^4 - 10*zeta^2 + 10*zeta)*q^79 + 
(-9*zeta^5 + 9*zeta^4 + 18*zeta^2 - 18*zeta)*q^85 + (-3*zeta^5 - 6*zeta^4 - 
3*zeta^2 + 3*zeta)*q^89 + (10*zeta^5 + 20*zeta^4 + 10*zeta^2 - 10*zeta)*q^91 + 
(6*zeta^5 - 6*zeta^4 - 12*zeta^2 + 12*zeta)*q^95 + (20*zeta^5 + 10*zeta^4 - 
10*zeta^2 + 10*zeta)*q^97 + (-12*zeta^5 - 6*zeta^4 + 6*zeta^2 - 6*zeta)*q^101 + 
(-16*zeta^5 + 16*zeta^4 + 32*zeta^2 - 32*zeta)*q^103 + (12*zeta^5 + 24*zeta^4 + 
12*zeta^2 - 12*zeta)*q^107 + (-7*zeta^5 - 14*zeta^4 - 7*zeta^2 + 7*zeta)*q^109 +
(9*zeta^5 - 9*zeta^4 - 18*zeta^2 + 18*zeta)*q^113 + (-36*zeta^5 - 18*zeta^4 + 
18*zeta^2 - 18*zeta)*q^115 + (12*zeta^5 + 6*zeta^4 - 6*zeta^2 + 6*zeta)*q^119 + 
(25*zeta^5 - 25*zeta^4 - 50*zeta^2 + 50*zeta)*q^121 + (-3*zeta^5 - 6*zeta^4 - 
3*zeta^2 + 3*zeta)*q^125 + (2*zeta^5 + 4*zeta^4 + 2*zeta^2 - 2*zeta)*q^127 + 
(-6*zeta^5 + 6*zeta^4 + 12*zeta^2 - 12*zeta)*q^131 + (-8*zeta^5 - 4*zeta^4 + 
4*zeta^2 - 4*zeta)*q^133 + (30*zeta^5 + 15*zeta^4 - 15*zeta^2 + 15*zeta)*q^137 +
(8*zeta^5 - 8*zeta^4 - 16*zeta^2 + 16*zeta)*q^139 + (-30*zeta^5 - 60*zeta^4 - 
30*zeta^2 + 30*zeta)*q^143 + (9*zeta^5 + 18*zeta^4 + 9*zeta^2 - 9*zeta)*q^145 + 
(15*zeta^5 - 15*zeta^4 - 30*zeta^2 + 30*zeta)*q^149 + (8*zeta^5 + 4*zeta^4 - 
4*zeta^2 + 4*zeta)*q^151 + (24*zeta^5 + 12*zeta^4 - 12*zeta^2 + 12*zeta)*q^155 +
(5*zeta^5 - 5*zeta^4 - 10*zeta^2 + 10*zeta)*q^157 + (12*zeta^5 + 24*zeta^4 + 
12*zeta^2 - 12*zeta)*q^161 + (-4*zeta^5 - 8*zeta^4 - 4*zeta^2 + 4*zeta)*q^163 + 
(18*zeta^5 - 18*zeta^4 - 36*zeta^2 + 36*zeta)*q^167 + (-24*zeta^5 - 12*zeta^4 + 
12*zeta^2 - 12*zeta)*q^169 + (18*zeta^5 + 9*zeta^4 - 9*zeta^2 + 9*zeta)*q^173 + 
(8*zeta^5 - 8*zeta^4 - 16*zeta^2 + 16*zeta)*q^175 + (12*zeta^5 + 24*zeta^4 + 
12*zeta^2 - 12*zeta)*q^179 + (14*zeta^5 + 28*zeta^4 + 14*zeta^2 - 14*zeta)*q^181
+ (15*zeta^5 - 15*zeta^4 - 30*zeta^2 + 30*zeta)*q^185 + (-36*zeta^5 - 18*zeta^4 
+ 18*zeta^2 - 18*zeta)*q^187 + (-12*zeta^5 - 6*zeta^4 + 6*zeta^2 - 6*zeta)*q^191
+ (-25*zeta^5 + 25*zeta^4 + 50*zeta^2 - 50*zeta)*q^193 + (15*zeta^5 + 30*zeta^4 
+ 15*zeta^2 - 15*zeta)*q^197 + (20*zeta^5 + 40*zeta^4 + 20*zeta^2 - 
20*zeta)*q^199 + (6*zeta^5 - 6*zeta^4 - 12*zeta^2 + 12*zeta)*q^203 + (36*zeta^5 
+ 18*zeta^4 - 18*zeta^2 + 18*zeta)*q^205 + (24*zeta^5 + 12*zeta^4 - 12*zeta^2 + 
12*zeta)*q^209 + (14*zeta^5 - 14*zeta^4 - 28*zeta^2 + 28*zeta)*q^211 + 
(-30*zeta^5 - 60*zeta^4 - 30*zeta^2 + 30*zeta)*q^215 + (-8*zeta^5 - 16*zeta^4 - 
8*zeta^2 + 8*zeta)*q^217 + (-15*zeta^5 + 15*zeta^4 + 30*zeta^2 - 30*zeta)*q^221 
+ (20*zeta^5 + 10*zeta^4 - 10*zeta^2 + 10*zeta)*q^223 + (-36*zeta^5 - 18*zeta^4 
+ 18*zeta^2 - 18*zeta)*q^227 + (5*zeta^5 - 5*zeta^4 - 10*zeta^2 + 10*zeta)*q^229
+ (-15*zeta^5 - 30*zeta^4 - 15*zeta^2 + 15*zeta)*q^233 + (-22*zeta^5 - 11*zeta^4
+ 11*zeta^2 - 11*zeta)*q^241 + (18*zeta^5 + 9*zeta^4 - 9*zeta^2 + 9*zeta)*q^245 
+ (10*zeta^5 - 10*zeta^4 - 20*zeta^2 + 20*zeta)*q^247 + (30*zeta^5 + 60*zeta^4 +
30*zeta^2 - 30*zeta)*q^251 + (-36*zeta^5 - 72*zeta^4 - 36*zeta^2 + 
36*zeta)*q^253 + (-27*zeta^5 + 27*zeta^4 + 54*zeta^2 - 54*zeta)*q^257 + 
(-20*zeta^5 - 10*zeta^4 + 10*zeta^2 - 10*zeta)*q^259 + (-48*zeta^5 - 24*zeta^4 +
24*zeta^2 - 24*zeta)*q^263 + (-18*zeta^5 + 18*zeta^4 + 36*zeta^2 - 
36*zeta)*q^265 + (3*zeta^5 + 6*zeta^4 + 3*zeta^2 - 3*zeta)*q^269 + (-10*zeta^5 -
20*zeta^4 - 10*zeta^2 + 10*zeta)*q^271 + (-24*zeta^5 + 24*zeta^4 + 48*zeta^2 - 
48*zeta)*q^275 + (20*zeta^5 + 10*zeta^4 - 10*zeta^2 + 10*zeta)*q^277 + 
(30*zeta^5 + 15*zeta^4 - 15*zeta^2 + 15*zeta)*q^281 + (-4*zeta^5 + 4*zeta^4 + 
8*zeta^2 - 8*zeta)*q^283 + (-12*zeta^5 - 24*zeta^4 - 12*zeta^2 + 12*zeta)*q^287 
+ (-8*zeta^5 - 16*zeta^4 - 8*zeta^2 + 8*zeta)*q^289 + (15*zeta^5 - 15*zeta^4 - 
30*zeta^2 + 30*zeta)*q^293 + (72*zeta^5 + 36*zeta^4 - 36*zeta^2 + 36*zeta)*q^295
+ (-60*zeta^5 - 30*zeta^4 + 30*zeta^2 - 30*zeta)*q^299 + (-20*zeta^5 + 20*zeta^4
+ 40*zeta^2 - 40*zeta)*q^301 + (15*zeta^5 + 30*zeta^4 + 15*zeta^2 - 
15*zeta)*q^305 + (20*zeta^5 + 40*zeta^4 + 20*zeta^2 - 20*zeta)*q^307 + 
(-24*zeta^5 + 24*zeta^4 + 48*zeta^2 - 48*zeta)*q^311 + (50*zeta^5 + 25*zeta^4 - 
25*zeta^2 + 25*zeta)*q^313 + (-30*zeta^5 - 15*zeta^4 + 15*zeta^2 - 
15*zeta)*q^317 + (-18*zeta^5 + 18*zeta^4 + 36*zeta^2 - 36*zeta)*q^319 + 
(-6*zeta^5 - 12*zeta^4 - 6*zeta^2 + 6*zeta)*q^323 + (20*zeta^5 + 40*zeta^4 + 
20*zeta^2 - 20*zeta)*q^325 + (-52*zeta^5 - 26*zeta^4 + 26*zeta^2 - 
26*zeta)*q^331 + (-12*zeta^5 - 6*zeta^4 + 6*zeta^2 - 6*zeta)*q^335 + (-10*zeta^5
+ 10*zeta^4 + 20*zeta^2 - 20*zeta)*q^337 + (24*zeta^5 + 48*zeta^4 + 24*zeta^2 - 
24*zeta)*q^341 + (-20*zeta^5 - 40*zeta^4 - 20*zeta^2 + 20*zeta)*q^343 + 
(-18*zeta^5 + 18*zeta^4 + 36*zeta^2 - 36*zeta)*q^347 + (-4*zeta^5 - 2*zeta^4 + 
2*zeta^2 - 2*zeta)*q^349 + (-60*zeta^5 - 30*zeta^4 + 30*zeta^2 - 30*zeta)*q^353 
+ (18*zeta^5 - 18*zeta^4 - 36*zeta^2 + 36*zeta)*q^355 + (-18*zeta^5 - 36*zeta^4 
- 18*zeta^2 + 18*zeta)*q^359 + (-15*zeta^5 - 30*zeta^4 - 15*zeta^2 + 
15*zeta)*q^361 + (-3*zeta^5 + 3*zeta^4 + 6*zeta^2 - 6*zeta)*q^365 + (-64*zeta^5 
- 32*zeta^4 + 32*zeta^2 - 32*zeta)*q^367 + (24*zeta^5 + 12*zeta^4 - 12*zeta^2 + 
12*zeta)*q^371 + (14*zeta^5 - 14*zeta^4 - 28*zeta^2 + 28*zeta)*q^373 + 
(15*zeta^5 + 30*zeta^4 + 15*zeta^2 - 15*zeta)*q^377 + (-4*zeta^5 - 8*zeta^4 - 
4*zeta^2 + 4*zeta)*q^379 + (30*zeta^5 - 30*zeta^4 - 60*zeta^2 + 60*zeta)*q^383 +
(72*zeta^5 + 36*zeta^4 - 36*zeta^2 + 36*zeta)*q^385 + (60*zeta^5 + 30*zeta^4 - 
30*zeta^2 + 30*zeta)*q^389 + (-18*zeta^5 + 18*zeta^4 + 36*zeta^2 - 
36*zeta)*q^391 + (-30*zeta^5 - 60*zeta^4 - 30*zeta^2 + 30*zeta)*q^395 + 
(-7*zeta^5 - 14*zeta^4 - 7*zeta^2 + 7*zeta)*q^397 + (-15*zeta^5 + 15*zeta^4 + 
30*zeta^2 - 30*zeta)*q^401 + (40*zeta^5 + 20*zeta^4 - 20*zeta^2 + 20*zeta)*q^403
+ (60*zeta^5 + 30*zeta^4 - 30*zeta^2 + 30*zeta)*q^407 + (35*zeta^5 - 35*zeta^4 -
70*zeta^2 + 70*zeta)*q^409 + (-24*zeta^5 - 48*zeta^4 - 24*zeta^2 + 
24*zeta)*q^413 + (-58*zeta^5 - 29*zeta^4 + 29*zeta^2 - 29*zeta)*q^421 + 
(24*zeta^5 + 12*zeta^4 - 12*zeta^2 + 12*zeta)*q^425 + (10*zeta^5 - 10*zeta^4 - 
20*zeta^2 + 20*zeta)*q^427 + (24*zeta^5 + 48*zeta^4 + 24*zeta^2 - 24*zeta)*q^431
+ (11*zeta^5 + 22*zeta^4 + 11*zeta^2 - 11*zeta)*q^433 + (12*zeta^5 - 12*zeta^4 -
24*zeta^2 + 24*zeta)*q^437 + (-16*zeta^5 - 8*zeta^4 + 8*zeta^2 - 8*zeta)*q^439 +
(-9*zeta^5 + 9*zeta^4 + 18*zeta^2 - 18*zeta)*q^445 + (18*zeta^5 + 36*zeta^4 + 
18*zeta^2 - 18*zeta)*q^449 + (36*zeta^5 + 72*zeta^4 + 36*zeta^2 - 36*zeta)*q^451
+ (30*zeta^5 - 30*zeta^4 - 60*zeta^2 + 60*zeta)*q^455 + (-70*zeta^5 - 35*zeta^4 
+ 35*zeta^2 - 35*zeta)*q^457 + (12*zeta^5 + 6*zeta^4 - 6*zeta^2 + 6*zeta)*q^461 
+ (-4*zeta^5 + 4*zeta^4 + 8*zeta^2 - 8*zeta)*q^463 + (12*zeta^5 + 24*zeta^4 + 
12*zeta^2 - 12*zeta)*q^467 + (4*zeta^5 + 8*zeta^4 + 4*zeta^2 - 4*zeta)*q^469 + 
(60*zeta^5 - 60*zeta^4 - 120*zeta^2 + 120*zeta)*q^473 + (-16*zeta^5 - 8*zeta^4 +
8*zeta^2 - 8*zeta)*q^475 + (-36*zeta^5 - 18*zeta^4 + 18*zeta^2 - 18*zeta)*q^479 
+ (25*zeta^5 - 25*zeta^4 - 50*zeta^2 + 50*zeta)*q^481 + (-30*zeta^5 - 60*zeta^4 
- 30*zeta^2 + 30*zeta)*q^485 + (20*zeta^5 + 40*zeta^4 + 20*zeta^2 - 
20*zeta)*q^487 + (6*zeta^5 - 6*zeta^4 - 12*zeta^2 + 12*zeta)*q^491 + (18*zeta^5 
+ 9*zeta^4 - 9*zeta^2 + 9*zeta)*q^493 + (-24*zeta^5 - 12*zeta^4 + 12*zeta^2 - 
12*zeta)*q^497 + (-22*zeta^5 + 22*zeta^4 + 44*zeta^2 - 44*zeta)*q^499 + 
(18*zeta^5 + 36*zeta^4 + 18*zeta^2 - 18*zeta)*q^505 + (-6*zeta^5 + 6*zeta^4 + 
12*zeta^2 - 12*zeta)*q^509 + (4*zeta^5 + 2*zeta^4 - 2*zeta^2 + 2*zeta)*q^511 + 
(96*zeta^5 + 48*zeta^4 - 48*zeta^2 + 48*zeta)*q^515 + (-30*zeta^5 - 60*zeta^4 - 
30*zeta^2 + 30*zeta)*q^521 + O(q^522)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 5);
              X_18B6 := Curve(P_Q, [ PolynomialRing(RationalField(), 6) |
x[1]^2 - 16/3*x[3]*x[4] - 16/3*x[3]*x[5] - 16*x[3]*x[6] - 8/3*x[4]^2 - 
16/3*x[4]*x[5] + 16/3*x[4]*x[6] + 16/3*x[5]*x[6] + 8*x[6]^2,
x[1]*x[2] - 16*x[3]*x[4] - 16*x[3]*x[5] - 32*x[3]*x[6] - 20/3*x[4]^2 - 
32/3*x[4]*x[5] + 8*x[4]*x[6] + 16*x[5]*x[6] + 20*x[6]^2,
x[1]*x[3] - 1/2*x[1]*x[6] - 1/2*x[2]*x[3] + 1/12*x[2]*x[4] - 1/6*x[2]*x[5] + 
1/4*x[2]*x[6],
x[1]*x[4] + 2*x[1]*x[5] + x[2]*x[3] - 1/2*x[2]*x[4] - x[2]*x[5] + 1/2*x[2]*x[6],
x[2]^2 - 40*x[3]*x[4] - 48*x[3]*x[5] - 72*x[3]*x[6] - 16*x[4]^2 - 24*x[4]*x[5] +
16*x[4]*x[6] + 40*x[5]*x[6] + 48*x[6]^2,
x[3]^2 - 1/12*x[4]^2 + 1/3*x[5]^2 - 1/4*x[6]^2,
x[1]^3 - 8/3*x[1]*x[5]*x[6] - 8/3*x[2]*x[3]*x[5] - 32/3*x[2]*x[3]*x[6] - 
8/9*x[2]*x[4]^2 - 28/9*x[2]*x[4]*x[5] + 16/3*x[2]*x[4]*x[6] - 8/9*x[2]*x[5]^2 + 
4/3*x[2]*x[5]*x[6] + 8/3*x[2]*x[6]^2,
x[1]^2*x[2] - 16/3*x[2]*x[3]*x[4] - 16/3*x[2]*x[3]*x[5] - 16*x[2]*x[3]*x[6] - 
8/3*x[2]*x[4]^2 - 16/3*x[2]*x[4]*x[5] + 16/3*x[2]*x[4]*x[6] + 
16/3*x[2]*x[5]*x[6] + 8*x[2]*x[6]^2,
x[1]^2*x[3] - 4/9*x[4]^3 + 4/9*x[4]^2*x[5] + 4*x[4]^2*x[6] - 16/9*x[4]*x[5]^2 + 
16/3*x[4]*x[5]*x[6] + 4*x[4]*x[6]^2 - 16/3*x[5]^3 - 16/3*x[5]^2*x[6] - 
4*x[5]*x[6]^2 - 4*x[6]^3,
x[1]^2*x[4] - 56/3*x[3]*x[4]*x[6] - 16/3*x[3]*x[5]^2 - 32/3*x[3]*x[5]*x[6] - 
8*x[3]*x[6]^2 - 2*x[4]^3 - 44/9*x[4]^2*x[5] + 38/3*x[4]^2*x[6] - 
64/9*x[4]*x[5]^2 + 40/3*x[4]*x[5]*x[6] + 38/3*x[4]*x[6]^2 - 80/9*x[5]^3 - 
32/3*x[5]^2*x[6] - 4/3*x[5]*x[6]^2 - 2*x[6]^3,
x[1]^2*x[5] - 8*x[3]*x[4]*x[6] - 16*x[3]*x[5]*x[6] - 8*x[3]*x[6]^2 - 2/3*x[4]^3 
- 4/3*x[4]^2*x[5] + 10/3*x[4]^2*x[6] - 16/3*x[4]*x[5]^2 + 8*x[4]*x[5]*x[6] + 
6*x[4]*x[6]^2 - 16/3*x[5]^3 - 16/3*x[5]^2*x[6] + 4*x[5]*x[6]^2 + 2*x[6]^3,
x[1]^2*x[6] - 16/3*x[3]*x[4]*x[6] - 16/3*x[3]*x[5]*x[6] - 16*x[3]*x[6]^2 - 
8/3*x[4]^2*x[6] - 16/3*x[4]*x[5]*x[6] + 16/3*x[4]*x[6]^2 + 16/3*x[5]*x[6]^2 + 
8*x[6]^3,
x[1]*x[2]^2 - 16*x[2]*x[3]*x[4] - 16*x[2]*x[3]*x[5] - 32*x[2]*x[3]*x[6] - 
20/3*x[2]*x[4]^2 - 32/3*x[2]*x[4]*x[5] + 8*x[2]*x[4]*x[6] + 16*x[2]*x[5]*x[6] + 
20*x[2]*x[6]^2,
x[1]*x[2]*x[3] - 4/3*x[3]*x[4]*x[6] - 8/3*x[3]*x[5]^2 + 8/3*x[3]*x[5]*x[6] + 
4*x[3]*x[6]^2 - x[4]^3 + 2/9*x[4]^2*x[5] + 9*x[4]^2*x[6] - 32/9*x[4]*x[5]^2 + 
12*x[4]*x[5]*x[6] + 19/3*x[4]*x[6]^2 - 88/9*x[5]^3 - 32/3*x[5]^2*x[6] - 
26/3*x[5]*x[6]^2 - 9*x[6]^3,
x[1]*x[2]*x[4] - 40*x[3]*x[4]*x[6] - 16*x[3]*x[5]^2 - 32*x[3]*x[5]*x[6] - 
24*x[3]*x[6]^2 - 14/3*x[4]^3 - 28/3*x[4]^2*x[5] + 30*x[4]^2*x[6] - 
64/3*x[4]*x[5]^2 + 40*x[4]*x[5]*x[6] + 34*x[4]*x[6]^2 - 80/3*x[5]^3 - 
32*x[5]^2*x[6] - 4*x[5]*x[6]^2 - 6*x[6]^3,
x[1]*x[2]*x[5] - 24*x[3]*x[4]*x[6] - 32*x[3]*x[5]*x[6] - 24*x[3]*x[6]^2 - 
2*x[4]^3 - 8/3*x[4]^2*x[5] + 10*x[4]^2*x[6] - 32/3*x[4]*x[5]^2 + 
16*x[4]*x[5]*x[6] + 18*x[4]*x[6]^2 - 16*x[5]^3 - 16*x[5]^2*x[6] + 8*x[5]*x[6]^2 
+ 6*x[6]^3,
x[1]*x[2]*x[6] - 16*x[3]*x[4]*x[6] - 16*x[3]*x[5]*x[6] - 32*x[3]*x[6]^2 - 
20/3*x[4]^2*x[6] - 32/3*x[4]*x[5]*x[6] + 8*x[4]*x[6]^2 + 16*x[5]*x[6]^2 + 
20*x[6]^3,
x[1]*x[3]^2 - 1/4*x[1]*x[6]^2 + 1/12*x[2]*x[3]*x[4] - 1/6*x[2]*x[3]*x[5] - 
1/24*x[2]*x[4]^2 + 1/24*x[2]*x[4]*x[6] + 1/6*x[2]*x[5]^2 - 1/12*x[2]*x[5]*x[6],
x[1]*x[3]*x[4] + x[1]*x[5]*x[6] - 1/2*x[2]*x[3]*x[4] + 1/2*x[2]*x[3]*x[6] + 
1/12*x[2]*x[4]^2 - 1/6*x[2]*x[4]*x[5] - 1/2*x[2]*x[5]*x[6] + 1/4*x[2]*x[6]^2,
x[1]*x[3]*x[5] - 1/2*x[1]*x[5]*x[6] - 1/2*x[2]*x[3]*x[5] + 1/12*x[2]*x[4]*x[5] -
1/6*x[2]*x[5]^2 + 1/4*x[2]*x[5]*x[6],
x[1]*x[3]*x[6] - 1/2*x[1]*x[6]^2 - 1/2*x[2]*x[3]*x[6] + 1/12*x[2]*x[4]*x[6] - 
1/6*x[2]*x[5]*x[6] + 1/4*x[2]*x[6]^2,
x[1]*x[4]^2 - 6*x[1]*x[5]*x[6] - 3*x[1]*x[6]^2 - 2*x[2]*x[3]*x[4] + 
2*x[2]*x[3]*x[5] - x[2]*x[4]^2 + x[2]*x[4]*x[5] - 3*x[2]*x[4]*x[6] + 
2*x[2]*x[5]^2 + 5*x[2]*x[5]*x[6],
x[1]*x[4]*x[5] + 3*x[1]*x[5]*x[6] + 3/2*x[1]*x[6]^2 + 3/2*x[2]*x[3]*x[4] - 
x[2]*x[3]*x[5] + 1/4*x[2]*x[4]^2 - x[2]*x[4]*x[5] + 7/4*x[2]*x[4]*x[6] - 
x[2]*x[5]^2 - 5/2*x[2]*x[5]*x[6],
x[1]*x[4]*x[6] + 2*x[1]*x[5]*x[6] + x[2]*x[3]*x[6] - 1/2*x[2]*x[4]*x[6] - 
x[2]*x[5]*x[6] + 1/2*x[2]*x[6]^2,
x[1]*x[5]^2 - 3/2*x[1]*x[5]*x[6] - 3/4*x[1]*x[6]^2 - 3/4*x[2]*x[3]*x[4] + 
x[2]*x[3]*x[5] - 1/8*x[2]*x[4]^2 + 1/4*x[2]*x[4]*x[5] - 7/8*x[2]*x[4]*x[6] + 
3/2*x[2]*x[5]*x[6],
x[2]^3 - 40*x[2]*x[3]*x[4] - 48*x[2]*x[3]*x[5] - 72*x[2]*x[3]*x[6] - 
16*x[2]*x[4]^2 - 24*x[2]*x[4]*x[5] + 16*x[2]*x[4]*x[6] + 40*x[2]*x[5]*x[6] + 
48*x[2]*x[6]^2,
x[2]^2*x[3] - 4*x[3]*x[4]*x[6] - 8*x[3]*x[5]^2 + 8*x[3]*x[5]*x[6] + 
12*x[3]*x[6]^2 - 7/3*x[4]^3 - 2/3*x[4]^2*x[5] + 21*x[4]^2*x[6] - 8*x[4]*x[5]^2 +
28*x[4]*x[5]*x[6] + 13*x[4]*x[6]^2 - 56/3*x[5]^3 - 24*x[5]^2*x[6] - 
22*x[5]*x[6]^2 - 21*x[6]^3,
x[2]^2*x[4] - 104*x[3]*x[4]*x[6] - 32*x[3]*x[5]^2 - 80*x[3]*x[5]*x[6] - 
72*x[3]*x[6]^2 - 12*x[4]^3 - 56/3*x[4]^2*x[5] + 76*x[4]^2*x[6] - 
160/3*x[4]*x[5]^2 + 104*x[4]*x[5]*x[6] + 92*x[4]*x[6]^2 - 224/3*x[5]^3 - 
96*x[5]^2*x[6] - 16*x[5]*x[6]^2 - 12*x[6]^3,
x[2]^2*x[5] - 60*x[3]*x[4]*x[6] - 8*x[3]*x[5]^2 - 72*x[3]*x[5]*x[6] - 
60*x[3]*x[6]^2 - 5*x[4]^3 - 6*x[4]^2*x[5] + 25*x[4]^2*x[6] - 24*x[4]*x[5]^2 + 
36*x[4]*x[5]*x[6] + 45*x[4]*x[6]^2 - 40*x[5]^3 - 40*x[5]^2*x[6] + 18*x[5]*x[6]^2
+ 15*x[6]^3,
x[2]^2*x[6] - 40*x[3]*x[4]*x[6] - 48*x[3]*x[5]*x[6] - 72*x[3]*x[6]^2 - 
16*x[4]^2*x[6] - 24*x[4]*x[5]*x[6] + 16*x[4]*x[6]^2 + 40*x[5]*x[6]^2 + 
48*x[6]^3,
x[2]*x[3]^2 - 1/12*x[2]*x[4]^2 + 1/3*x[2]*x[5]^2 - 1/4*x[2]*x[6]^2,
x[3]^3 + 1/12*x[3]*x[4]*x[6] + 1/6*x[3]*x[5]^2 - 1/6*x[3]*x[5]*x[6] - 
1/4*x[3]*x[6]^2 + 1/48*x[4]^3 - 1/72*x[4]^2*x[5] + 1/16*x[4]^2*x[6] - 
1/9*x[4]*x[5]^2 + 1/12*x[4]*x[5]*x[6] - 1/48*x[4]*x[6]^2 - 1/18*x[5]^3 + 
1/24*x[5]*x[6]^2 - 1/16*x[6]^3,
x[3]^2*x[4] - 1/12*x[4]^3 + 1/3*x[4]*x[5]^2 - 1/4*x[4]*x[6]^2,
x[3]^2*x[5] - 1/12*x[4]^2*x[5] + 1/3*x[5]^3 - 1/4*x[5]*x[6]^2,
x[3]^2*x[6] - 1/12*x[4]^2*x[6] + 1/3*x[5]^2*x[6] - 1/4*x[6]^3,
x[3]*x[4]^2 + x[3]*x[4]*x[6] - 2*x[3]*x[5]^2 - 2*x[3]*x[5]*x[6] + 1/4*x[4]^3 - 
1/6*x[4]^2*x[5] + 3/4*x[4]^2*x[6] - 4/3*x[4]*x[5]^2 + x[4]*x[5]*x[6] - 
1/4*x[4]*x[6]^2 - 2/3*x[5]^3 + 1/2*x[5]*x[6]^2 - 3/4*x[6]^3,
x[3]*x[4]*x[5] - 3/2*x[3]*x[4]*x[6] + x[3]*x[5]^2 - 3/2*x[3]*x[6]^2 - 1/8*x[4]^3
+ 1/4*x[4]^2*x[5] + 5/8*x[4]^2*x[6] + 1/2*x[4]*x[5]*x[6] + 9/8*x[4]*x[6]^2 - 
x[5]^3 - 2*x[5]^2*x[6] - 3/4*x[5]*x[6]^2 + 3/8*x[6]^3
]);
