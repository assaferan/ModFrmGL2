
    /****************************************************
    Loading this file in magma loads the objects fs_20C6 
    and X_20C6. fs_20C6 is a list of power series which form 
    a basis for the space of cusp forms. X_20C6 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | 5, 0, -5, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_20C6 := [Kq | (-2*zeta^3 - 2*zeta^2 + 5*zeta + 5)*q + 
(-4*zeta^3 + 10*zeta)*q^2 + (-12*zeta^2 + 30)*q^5 + (-4*zeta^3 - 8*zeta^2 + 
20*zeta + 20)*q^7 + (-6*zeta^3 + 6*zeta^2 + 15*zeta - 15)*q^9 + (-8*zeta^3 + 
8*zeta^2 + 20*zeta - 20)*q^11 + (2*zeta^3 + 4*zeta^2 - 10*zeta - 10)*q^13 + 
(-8*zeta^3 + 40*zeta)*q^14 + (2*zeta^3 - 4*zeta^2 - 10*zeta + 10)*q^17 + 
(-12*zeta^3 + 30*zeta)*q^18 + (8*zeta^3 + 8*zeta^2 - 20*zeta - 20)*q^19 + 
(-16*zeta^3 + 40*zeta)*q^22 + (-4*zeta^3 + 8*zeta^2 + 20*zeta - 20)*q^23 + 
(-12*zeta^2 + 30)*q^25 + (4*zeta^3 - 20*zeta)*q^26 + (-4*zeta^3 + 4*zeta^2 + 
10*zeta - 10)*q^29 + (16*zeta^3 - 16*zeta^2 - 40*zeta + 40)*q^31 + (4*zeta^3 - 
20*zeta)*q^34 + (-48*zeta^2 + 120)*q^35 + (6*zeta^3 - 12*zeta^2 - 30*zeta + 
30)*q^37 + (16*zeta^3 - 40*zeta)*q^38 + (12*zeta^3 + 12*zeta^2 - 30*zeta - 
30)*q^41 + (8*zeta^3 - 16*zeta^2 - 40*zeta + 40)*q^43 + (36*zeta^2 - 90)*q^45 + 
(-8*zeta^3 + 40*zeta)*q^46 + (4*zeta^3 + 8*zeta^2 - 20*zeta - 20)*q^47 + 
(18*zeta^3 - 18*zeta^2 - 45*zeta + 45)*q^49 + (-6*zeta^3 - 12*zeta^2 + 30*zeta +
30)*q^53 + (48*zeta^2 - 120)*q^55 + (-8*zeta^3 + 20*zeta)*q^58 + (-8*zeta^3 - 
8*zeta^2 + 20*zeta + 20)*q^59 + (4*zeta^3 + 4*zeta^2 - 10*zeta - 10)*q^61 + 
(32*zeta^3 - 80*zeta)*q^62 + (-12*zeta^3 + 24*zeta^2 + 60*zeta - 60)*q^63 + 
(24*zeta^2 - 60)*q^65 + (8*zeta^3 + 16*zeta^2 - 40*zeta - 40)*q^67 + (6*zeta^3 +
12*zeta^2 - 30*zeta - 30)*q^73 + (12*zeta^3 - 60*zeta)*q^74 + (-16*zeta^3 + 
32*zeta^2 + 80*zeta - 80)*q^77 + (-18*zeta^3 - 18*zeta^2 + 45*zeta + 45)*q^81 + 
(24*zeta^3 - 60*zeta)*q^82 + (16*zeta^3 - 32*zeta^2 - 80*zeta + 80)*q^83 + 
(-24*zeta^2 + 60)*q^85 + (16*zeta^3 - 80*zeta)*q^86 + (-12*zeta^3 + 12*zeta^2 + 
30*zeta - 30)*q^89 + (-16*zeta^3 + 16*zeta^2 + 40*zeta - 40)*q^91 + (8*zeta^3 - 
40*zeta)*q^94 + (48*zeta^2 - 120)*q^95 + (-14*zeta^3 + 28*zeta^2 + 70*zeta - 
70)*q^97 + (36*zeta^3 - 90*zeta)*q^98 + (-24*zeta^3 - 24*zeta^2 + 60*zeta + 
60)*q^99 + (-12*zeta^3 - 12*zeta^2 + 30*zeta + 30)*q^101 + (-4*zeta^3 + 8*zeta^2
+ 20*zeta - 20)*q^103 + (-12*zeta^3 + 60*zeta)*q^106 + (28*zeta^3 - 28*zeta^2 - 
70*zeta + 70)*q^109 + (-18*zeta^3 - 36*zeta^2 + 90*zeta + 90)*q^113 + (48*zeta^2
- 120)*q^115 + (6*zeta^3 - 12*zeta^2 - 30*zeta + 30)*q^117 + (-16*zeta^3 + 
40*zeta)*q^118 + (-16*zeta^3 - 16*zeta^2 + 40*zeta + 40)*q^119 + (-10*zeta^3 - 
10*zeta^2 + 25*zeta + 25)*q^121 + (8*zeta^3 - 20*zeta)*q^122 + (-12*zeta^2 + 
30)*q^125 + (-24*zeta^3 + 120*zeta)*q^126 + (-12*zeta^3 - 24*zeta^2 + 60*zeta + 
60)*q^127 + (-24*zeta^3 + 24*zeta^2 + 60*zeta - 60)*q^131 + (16*zeta^3 + 
32*zeta^2 - 80*zeta - 80)*q^133 + (16*zeta^3 - 80*zeta)*q^134 + (10*zeta^3 - 
20*zeta^2 - 50*zeta + 50)*q^137 + (24*zeta^3 + 24*zeta^2 - 60*zeta - 60)*q^139 +
(8*zeta^3 - 16*zeta^2 - 40*zeta + 40)*q^143 + (24*zeta^2 - 60)*q^145 + 
(12*zeta^3 - 60*zeta)*q^146 + (-20*zeta^3 + 20*zeta^2 + 50*zeta - 50)*q^149 + 
(32*zeta^3 - 32*zeta^2 - 80*zeta + 80)*q^151 + (6*zeta^3 + 12*zeta^2 - 30*zeta -
30)*q^153 + (-32*zeta^3 + 160*zeta)*q^154 + (-96*zeta^2 + 240)*q^155 + 
(-2*zeta^3 + 4*zeta^2 + 10*zeta - 10)*q^157 + (32*zeta^3 + 32*zeta^2 - 80*zeta -
80)*q^161 + (-36*zeta^3 + 90*zeta)*q^162 + (-16*zeta^3 + 32*zeta^2 + 80*zeta - 
80)*q^163 + (32*zeta^3 - 160*zeta)*q^166 + (12*zeta^3 + 24*zeta^2 - 60*zeta - 
60)*q^167 + (-18*zeta^3 + 18*zeta^2 + 45*zeta - 45)*q^169 + (24*zeta^3 - 
24*zeta^2 - 60*zeta + 60)*q^171 + (-14*zeta^3 - 28*zeta^2 + 70*zeta + 70)*q^173 
+ (-48*zeta^2 + 120)*q^175 + (-24*zeta^3 + 60*zeta)*q^178 + (40*zeta^3 + 
40*zeta^2 - 100*zeta - 100)*q^179 + (20*zeta^3 + 20*zeta^2 - 50*zeta - 50)*q^181
+ (-32*zeta^3 + 80*zeta)*q^182 + (-72*zeta^2 + 180)*q^185 + (8*zeta^3 + 
16*zeta^2 - 40*zeta - 40)*q^187 + (-16*zeta^3 + 16*zeta^2 + 40*zeta - 40)*q^191 
+ (14*zeta^3 + 28*zeta^2 - 70*zeta - 70)*q^193 + (-28*zeta^3 + 140*zeta)*q^194 +
(22*zeta^3 - 44*zeta^2 - 110*zeta + 110)*q^197 + (-48*zeta^3 + 120*zeta)*q^198 +
(16*zeta^3 + 16*zeta^2 - 40*zeta - 40)*q^199 + (-24*zeta^3 + 60*zeta)*q^202 + 
(-8*zeta^3 + 16*zeta^2 + 40*zeta - 40)*q^203 + (72*zeta^2 - 180)*q^205 + 
(-8*zeta^3 + 40*zeta)*q^206 + (-12*zeta^3 - 24*zeta^2 + 60*zeta + 60)*q^207 + 
(32*zeta^3 - 32*zeta^2 - 80*zeta + 80)*q^209 + (8*zeta^3 - 8*zeta^2 - 20*zeta + 
20)*q^211 + (-96*zeta^2 + 240)*q^215 + (32*zeta^3 - 64*zeta^2 - 160*zeta + 
160)*q^217 + (56*zeta^3 - 140*zeta)*q^218 + (8*zeta^3 + 8*zeta^2 - 20*zeta - 
20)*q^221 + (4*zeta^3 - 8*zeta^2 - 20*zeta + 20)*q^223 + (36*zeta^2 - 90)*q^225 
+ (-36*zeta^3 + 180*zeta)*q^226 + (-24*zeta^3 - 48*zeta^2 + 120*zeta + 
120)*q^227 + (-52*zeta^3 + 52*zeta^2 + 130*zeta - 130)*q^229 + (6*zeta^3 + 
12*zeta^2 - 30*zeta - 30)*q^233 + (12*zeta^3 - 60*zeta)*q^234 + (48*zeta^2 - 
120)*q^235 + (-32*zeta^3 + 80*zeta)*q^238 + (-4*zeta^3 - 4*zeta^2 + 10*zeta + 
10)*q^241 + (-20*zeta^3 + 50*zeta)*q^242 + (-108*zeta^2 + 270)*q^245 + 
(-8*zeta^3 - 16*zeta^2 + 40*zeta + 40)*q^247 + (24*zeta^3 - 24*zeta^2 - 60*zeta 
+ 60)*q^251 + (-16*zeta^3 - 32*zeta^2 + 80*zeta + 80)*q^253 + (-24*zeta^3 + 
120*zeta)*q^254 + (-30*zeta^3 + 60*zeta^2 + 150*zeta - 150)*q^257 + (-48*zeta^3 
- 48*zeta^2 + 120*zeta + 120)*q^259 + (-12*zeta^3 - 12*zeta^2 + 30*zeta + 
30)*q^261 + (-48*zeta^3 + 120*zeta)*q^262 + (12*zeta^3 - 24*zeta^2 - 60*zeta + 
60)*q^263 + (-72*zeta^2 + 180)*q^265 + (32*zeta^3 - 160*zeta)*q^266 + (28*zeta^3
- 28*zeta^2 - 70*zeta + 70)*q^269 + (-48*zeta^3 + 48*zeta^2 + 120*zeta - 
120)*q^271 + (20*zeta^3 - 100*zeta)*q^274 + (48*zeta^2 - 120)*q^275 + 
(-10*zeta^3 + 20*zeta^2 + 50*zeta - 50)*q^277 + (48*zeta^3 - 120*zeta)*q^278 + 
(48*zeta^3 + 48*zeta^2 - 120*zeta - 120)*q^279 + (-20*zeta^3 - 20*zeta^2 + 
50*zeta + 50)*q^281 + (-8*zeta^3 + 16*zeta^2 + 40*zeta - 40)*q^283 + (16*zeta^3 
- 80*zeta)*q^286 + (24*zeta^3 + 48*zeta^2 - 120*zeta - 120)*q^287 + (-26*zeta^3 
+ 26*zeta^2 + 65*zeta - 65)*q^289 + (26*zeta^3 + 52*zeta^2 - 130*zeta - 
130)*q^293 + (-48*zeta^2 + 120)*q^295 + (-40*zeta^3 + 100*zeta)*q^298 + 
(-16*zeta^3 - 16*zeta^2 + 40*zeta + 40)*q^299 + (-64*zeta^3 - 64*zeta^2 + 
160*zeta + 160)*q^301 + (64*zeta^3 - 160*zeta)*q^302 + (24*zeta^2 - 60)*q^305 + 
(12*zeta^3 - 60*zeta)*q^306 + (-8*zeta^3 - 16*zeta^2 + 40*zeta + 40)*q^307 + 
(-64*zeta^3 + 64*zeta^2 + 160*zeta - 160)*q^311 + (-26*zeta^3 - 52*zeta^2 + 
130*zeta + 130)*q^313 + (-4*zeta^3 + 20*zeta)*q^314 + (144*zeta^2 - 360)*q^315 +
(-18*zeta^3 + 36*zeta^2 + 90*zeta - 90)*q^317 + (-16*zeta^3 - 16*zeta^2 + 
40*zeta + 40)*q^319 + (64*zeta^3 - 160*zeta)*q^322 + (-8*zeta^3 + 16*zeta^2 + 
40*zeta - 40)*q^323 + (24*zeta^2 - 60)*q^325 + (-32*zeta^3 + 160*zeta)*q^326 + 
(-32*zeta^3 + 32*zeta^2 + 80*zeta - 80)*q^329 + (24*zeta^3 - 24*zeta^2 - 60*zeta
+ 60)*q^331 + (18*zeta^3 + 36*zeta^2 - 90*zeta - 90)*q^333 + (24*zeta^3 - 
120*zeta)*q^334 + (96*zeta^2 - 240)*q^335 + (-14*zeta^3 + 28*zeta^2 + 70*zeta - 
70)*q^337 + (-36*zeta^3 + 90*zeta)*q^338 + (64*zeta^3 + 64*zeta^2 - 160*zeta - 
160)*q^341 + (48*zeta^3 - 120*zeta)*q^342 + (8*zeta^3 - 16*zeta^2 - 40*zeta + 
40)*q^343 + (-28*zeta^3 + 140*zeta)*q^346 + (-16*zeta^3 - 32*zeta^2 + 80*zeta + 
80)*q^347 + (60*zeta^3 - 60*zeta^2 - 150*zeta + 150)*q^349 + (-2*zeta^3 - 
4*zeta^2 + 10*zeta + 10)*q^353 + (80*zeta^3 - 200*zeta)*q^358 + (-48*zeta^3 - 
48*zeta^2 + 120*zeta + 120)*q^359 + (6*zeta^3 + 6*zeta^2 - 15*zeta - 15)*q^361 +
(40*zeta^3 - 100*zeta)*q^362 + (72*zeta^2 - 180)*q^365 + (20*zeta^3 + 40*zeta^2 
- 100*zeta - 100)*q^367 + (36*zeta^3 - 36*zeta^2 - 90*zeta + 90)*q^369 + 
(48*zeta^3 - 48*zeta^2 - 120*zeta + 120)*q^371 + (-22*zeta^3 - 44*zeta^2 + 
110*zeta + 110)*q^373 + (16*zeta^3 - 80*zeta)*q^374 + (4*zeta^3 - 8*zeta^2 - 
20*zeta + 20)*q^377 + (-40*zeta^3 - 40*zeta^2 + 100*zeta + 100)*q^379 + 
(-32*zeta^3 + 80*zeta)*q^382 + (36*zeta^3 - 72*zeta^2 - 180*zeta + 180)*q^383 + 
(192*zeta^2 - 480)*q^385 + (28*zeta^3 - 140*zeta)*q^386 + (24*zeta^3 + 48*zeta^2
- 120*zeta - 120)*q^387 + (12*zeta^3 - 12*zeta^2 - 30*zeta + 30)*q^389 + 
(-16*zeta^3 + 16*zeta^2 + 40*zeta - 40)*q^391 + (44*zeta^3 - 220*zeta)*q^394 + 
(-2*zeta^3 + 4*zeta^2 + 10*zeta - 10)*q^397 + (32*zeta^3 - 80*zeta)*q^398 + 
(-36*zeta^3 - 36*zeta^2 + 90*zeta + 90)*q^401 + (-16*zeta^3 + 32*zeta^2 + 
80*zeta - 80)*q^403 + (-108*zeta^2 + 270)*q^405 + (-16*zeta^3 + 80*zeta)*q^406 +
(24*zeta^3 + 48*zeta^2 - 120*zeta - 120)*q^407 + (20*zeta^3 - 20*zeta^2 - 
50*zeta + 50)*q^409 + (-16*zeta^3 - 32*zeta^2 + 80*zeta + 80)*q^413 + 
(-24*zeta^3 + 120*zeta)*q^414 + (-192*zeta^2 + 480)*q^415 + (64*zeta^3 - 
160*zeta)*q^418 + (72*zeta^3 + 72*zeta^2 - 180*zeta - 180)*q^419 + (-12*zeta^3 -
12*zeta^2 + 30*zeta + 30)*q^421 + (16*zeta^3 - 40*zeta)*q^422 + (12*zeta^3 - 
24*zeta^2 - 60*zeta + 60)*q^423 + (-24*zeta^2 + 60)*q^425 + (8*zeta^3 + 
16*zeta^2 - 40*zeta - 40)*q^427 + (80*zeta^3 - 80*zeta^2 - 200*zeta + 200)*q^431
+ (-2*zeta^3 - 4*zeta^2 + 10*zeta + 10)*q^433 + (64*zeta^3 - 320*zeta)*q^434 + 
(16*zeta^3 - 32*zeta^2 - 80*zeta + 80)*q^437 + (-16*zeta^3 - 16*zeta^2 + 40*zeta
+ 40)*q^439 + (54*zeta^3 + 54*zeta^2 - 135*zeta - 135)*q^441 + (16*zeta^3 - 
40*zeta)*q^442 + (-24*zeta^3 + 48*zeta^2 + 120*zeta - 120)*q^443 + (72*zeta^2 - 
180)*q^445 + (8*zeta^3 - 40*zeta)*q^446 + (36*zeta^3 - 36*zeta^2 - 90*zeta + 
90)*q^449 + (48*zeta^3 - 48*zeta^2 - 120*zeta + 120)*q^451 + (-48*zeta^3 + 
240*zeta)*q^454 + (96*zeta^2 - 240)*q^455 + (10*zeta^3 - 20*zeta^2 - 50*zeta + 
50)*q^457 + (-104*zeta^3 + 260*zeta)*q^458 + (36*zeta^3 + 36*zeta^2 - 90*zeta - 
90)*q^461 + (-12*zeta^3 + 24*zeta^2 + 60*zeta - 60)*q^463 + (12*zeta^3 - 
60*zeta)*q^466 + (8*zeta^3 + 16*zeta^2 - 40*zeta - 40)*q^467 + (-64*zeta^3 + 
64*zeta^2 + 160*zeta - 160)*q^469 + (32*zeta^3 + 64*zeta^2 - 160*zeta - 
160)*q^473 + (48*zeta^2 - 120)*q^475 + (-18*zeta^3 + 36*zeta^2 + 90*zeta - 
90)*q^477 + (32*zeta^3 + 32*zeta^2 - 80*zeta - 80)*q^479 + (24*zeta^3 + 
24*zeta^2 - 60*zeta - 60)*q^481 + (-8*zeta^3 + 20*zeta)*q^482 + (168*zeta^2 - 
420)*q^485 + (-20*zeta^3 - 40*zeta^2 + 100*zeta + 100)*q^487 + (-72*zeta^3 + 
72*zeta^2 + 180*zeta - 180)*q^491 + (4*zeta^3 + 8*zeta^2 - 20*zeta - 20)*q^493 +
(-16*zeta^3 + 80*zeta)*q^494 + (-144*zeta^2 + 360)*q^495 + (-56*zeta^3 - 
56*zeta^2 + 140*zeta + 140)*q^499 + (48*zeta^3 - 120*zeta)*q^502 + (12*zeta^3 - 
24*zeta^2 - 60*zeta + 60)*q^503 + (-72*zeta^2 + 180)*q^505 + (-32*zeta^3 + 
160*zeta)*q^506 + (-4*zeta^3 + 4*zeta^2 + 10*zeta - 10)*q^509 + (-48*zeta^3 + 
48*zeta^2 + 120*zeta - 120)*q^511 + (-60*zeta^3 + 300*zeta)*q^514 + (48*zeta^2 -
120)*q^515 + (16*zeta^3 - 32*zeta^2 - 80*zeta + 80)*q^517 + (-96*zeta^3 + 
240*zeta)*q^518 + (-20*zeta^3 - 20*zeta^2 + 50*zeta + 50)*q^521 + (-24*zeta^3 + 
60*zeta)*q^522 + (8*zeta^3 - 16*zeta^2 - 40*zeta + 40)*q^523 + (24*zeta^3 - 
120*zeta)*q^526 + (-16*zeta^3 - 32*zeta^2 + 80*zeta + 80)*q^527 + (-14*zeta^3 + 
14*zeta^2 + 35*zeta - 35)*q^529 + (-24*zeta^3 + 24*zeta^2 + 60*zeta - 60)*q^531 
+ (-12*zeta^3 - 24*zeta^2 + 60*zeta + 60)*q^533 + (56*zeta^3 - 140*zeta)*q^538 +
(72*zeta^3 + 72*zeta^2 - 180*zeta - 180)*q^539 + (4*zeta^3 + 4*zeta^2 - 10*zeta 
- 10)*q^541 + (-96*zeta^3 + 240*zeta)*q^542 + (-168*zeta^2 + 420)*q^545 + 
(8*zeta^3 + 16*zeta^2 - 40*zeta - 40)*q^547 + (12*zeta^3 - 12*zeta^2 - 30*zeta +
30)*q^549 + (16*zeta^3 - 16*zeta^2 - 40*zeta + 40)*q^551 + (-20*zeta^3 + 
100*zeta)*q^554 + (14*zeta^3 - 28*zeta^2 - 70*zeta + 70)*q^557 + (96*zeta^3 - 
240*zeta)*q^558 + (32*zeta^3 + 32*zeta^2 - 80*zeta - 80)*q^559 + (-40*zeta^3 + 
100*zeta)*q^562 + (-16*zeta^3 + 32*zeta^2 + 80*zeta - 80)*q^563 + (-216*zeta^2 +
540)*q^565 + (-16*zeta^3 + 80*zeta)*q^566 + (-36*zeta^3 - 72*zeta^2 + 180*zeta +
180)*q^567 + (-44*zeta^3 + 44*zeta^2 + 110*zeta - 110)*q^569 + (-8*zeta^3 + 
8*zeta^2 + 20*zeta - 20)*q^571 + (48*zeta^3 - 240*zeta)*q^574 + (48*zeta^2 - 
120)*q^575 + (2*zeta^3 - 4*zeta^2 - 10*zeta + 10)*q^577 + (-52*zeta^3 + 
130*zeta)*q^578 + O(q^580), (-2*zeta^3 - 2*zeta^2 + 5*zeta + 5)*q + (-4*zeta^3 +
10*zeta)*q^2 + (-12*zeta^2 + 30)*q^5 + (-4*zeta^3 - 8*zeta^2 + 20*zeta + 20)*q^7
+ (-6*zeta^3 + 6*zeta^2 + 15*zeta - 15)*q^9 + (-8*zeta^3 + 8*zeta^2 + 20*zeta - 
20)*q^11 + (2*zeta^3 + 4*zeta^2 - 10*zeta - 10)*q^13 + (-8*zeta^3 + 
40*zeta)*q^14 + (2*zeta^3 - 4*zeta^2 - 10*zeta + 10)*q^17 + (-12*zeta^3 + 
30*zeta)*q^18 + (8*zeta^3 + 8*zeta^2 - 20*zeta - 20)*q^19 + (-16*zeta^3 + 
40*zeta)*q^22 + (-4*zeta^3 + 8*zeta^2 + 20*zeta - 20)*q^23 + (-12*zeta^2 + 
30)*q^25 + (4*zeta^3 - 20*zeta)*q^26 + (-4*zeta^3 + 4*zeta^2 + 10*zeta - 
10)*q^29 + (16*zeta^3 - 16*zeta^2 - 40*zeta + 40)*q^31 + (4*zeta^3 - 
20*zeta)*q^34 + (-48*zeta^2 + 120)*q^35 + (6*zeta^3 - 12*zeta^2 - 30*zeta + 
30)*q^37 + (16*zeta^3 - 40*zeta)*q^38 + (12*zeta^3 + 12*zeta^2 - 30*zeta - 
30)*q^41 + (8*zeta^3 - 16*zeta^2 - 40*zeta + 40)*q^43 + (36*zeta^2 - 90)*q^45 + 
(-8*zeta^3 + 40*zeta)*q^46 + (4*zeta^3 + 8*zeta^2 - 20*zeta - 20)*q^47 + 
(18*zeta^3 - 18*zeta^2 - 45*zeta + 45)*q^49 + (-6*zeta^3 - 12*zeta^2 + 30*zeta +
30)*q^53 + (48*zeta^2 - 120)*q^55 + (-8*zeta^3 + 20*zeta)*q^58 + (-8*zeta^3 - 
8*zeta^2 + 20*zeta + 20)*q^59 + (4*zeta^3 + 4*zeta^2 - 10*zeta - 10)*q^61 + 
(32*zeta^3 - 80*zeta)*q^62 + (-12*zeta^3 + 24*zeta^2 + 60*zeta - 60)*q^63 + 
(24*zeta^2 - 60)*q^65 + (8*zeta^3 + 16*zeta^2 - 40*zeta - 40)*q^67 + (6*zeta^3 +
12*zeta^2 - 30*zeta - 30)*q^73 + (12*zeta^3 - 60*zeta)*q^74 + (-16*zeta^3 + 
32*zeta^2 + 80*zeta - 80)*q^77 + (-18*zeta^3 - 18*zeta^2 + 45*zeta + 45)*q^81 + 
(24*zeta^3 - 60*zeta)*q^82 + (16*zeta^3 - 32*zeta^2 - 80*zeta + 80)*q^83 + 
(-24*zeta^2 + 60)*q^85 + (16*zeta^3 - 80*zeta)*q^86 + (-12*zeta^3 + 12*zeta^2 + 
30*zeta - 30)*q^89 + (-16*zeta^3 + 16*zeta^2 + 40*zeta - 40)*q^91 + (8*zeta^3 - 
40*zeta)*q^94 + (48*zeta^2 - 120)*q^95 + (-14*zeta^3 + 28*zeta^2 + 70*zeta - 
70)*q^97 + (36*zeta^3 - 90*zeta)*q^98 + (-24*zeta^3 - 24*zeta^2 + 60*zeta + 
60)*q^99 + (-12*zeta^3 - 12*zeta^2 + 30*zeta + 30)*q^101 + (-4*zeta^3 + 8*zeta^2
+ 20*zeta - 20)*q^103 + (-12*zeta^3 + 60*zeta)*q^106 + (28*zeta^3 - 28*zeta^2 - 
70*zeta + 70)*q^109 + (-18*zeta^3 - 36*zeta^2 + 90*zeta + 90)*q^113 + (48*zeta^2
- 120)*q^115 + (6*zeta^3 - 12*zeta^2 - 30*zeta + 30)*q^117 + (-16*zeta^3 + 
40*zeta)*q^118 + (-16*zeta^3 - 16*zeta^2 + 40*zeta + 40)*q^119 + (-10*zeta^3 - 
10*zeta^2 + 25*zeta + 25)*q^121 + (8*zeta^3 - 20*zeta)*q^122 + (-12*zeta^2 + 
30)*q^125 + (-24*zeta^3 + 120*zeta)*q^126 + (-12*zeta^3 - 24*zeta^2 + 60*zeta + 
60)*q^127 + (-24*zeta^3 + 24*zeta^2 + 60*zeta - 60)*q^131 + (16*zeta^3 + 
32*zeta^2 - 80*zeta - 80)*q^133 + (16*zeta^3 - 80*zeta)*q^134 + (10*zeta^3 - 
20*zeta^2 - 50*zeta + 50)*q^137 + (24*zeta^3 + 24*zeta^2 - 60*zeta - 60)*q^139 +
(8*zeta^3 - 16*zeta^2 - 40*zeta + 40)*q^143 + (24*zeta^2 - 60)*q^145 + 
(12*zeta^3 - 60*zeta)*q^146 + (-20*zeta^3 + 20*zeta^2 + 50*zeta - 50)*q^149 + 
(32*zeta^3 - 32*zeta^2 - 80*zeta + 80)*q^151 + (6*zeta^3 + 12*zeta^2 - 30*zeta -
30)*q^153 + (-32*zeta^3 + 160*zeta)*q^154 + (-96*zeta^2 + 240)*q^155 + 
(-2*zeta^3 + 4*zeta^2 + 10*zeta - 10)*q^157 + (32*zeta^3 + 32*zeta^2 - 80*zeta -
80)*q^161 + (-36*zeta^3 + 90*zeta)*q^162 + (-16*zeta^3 + 32*zeta^2 + 80*zeta - 
80)*q^163 + (32*zeta^3 - 160*zeta)*q^166 + (12*zeta^3 + 24*zeta^2 - 60*zeta - 
60)*q^167 + (-18*zeta^3 + 18*zeta^2 + 45*zeta - 45)*q^169 + (24*zeta^3 - 
24*zeta^2 - 60*zeta + 60)*q^171 + (-14*zeta^3 - 28*zeta^2 + 70*zeta + 70)*q^173 
+ (-48*zeta^2 + 120)*q^175 + (-24*zeta^3 + 60*zeta)*q^178 + (40*zeta^3 + 
40*zeta^2 - 100*zeta - 100)*q^179 + (20*zeta^3 + 20*zeta^2 - 50*zeta - 50)*q^181
+ (-32*zeta^3 + 80*zeta)*q^182 + (-72*zeta^2 + 180)*q^185 + (8*zeta^3 + 
16*zeta^2 - 40*zeta - 40)*q^187 + (-16*zeta^3 + 16*zeta^2 + 40*zeta - 40)*q^191 
+ (14*zeta^3 + 28*zeta^2 - 70*zeta - 70)*q^193 + (-28*zeta^3 + 140*zeta)*q^194 +
(22*zeta^3 - 44*zeta^2 - 110*zeta + 110)*q^197 + (-48*zeta^3 + 120*zeta)*q^198 +
(16*zeta^3 + 16*zeta^2 - 40*zeta - 40)*q^199 + (-24*zeta^3 + 60*zeta)*q^202 + 
(-8*zeta^3 + 16*zeta^2 + 40*zeta - 40)*q^203 + (72*zeta^2 - 180)*q^205 + 
(-8*zeta^3 + 40*zeta)*q^206 + (-12*zeta^3 - 24*zeta^2 + 60*zeta + 60)*q^207 + 
(32*zeta^3 - 32*zeta^2 - 80*zeta + 80)*q^209 + (8*zeta^3 - 8*zeta^2 - 20*zeta + 
20)*q^211 + (-96*zeta^2 + 240)*q^215 + (32*zeta^3 - 64*zeta^2 - 160*zeta + 
160)*q^217 + (56*zeta^3 - 140*zeta)*q^218 + (8*zeta^3 + 8*zeta^2 - 20*zeta - 
20)*q^221 + (4*zeta^3 - 8*zeta^2 - 20*zeta + 20)*q^223 + (36*zeta^2 - 90)*q^225 
+ (-36*zeta^3 + 180*zeta)*q^226 + (-24*zeta^3 - 48*zeta^2 + 120*zeta + 
120)*q^227 + (-52*zeta^3 + 52*zeta^2 + 130*zeta - 130)*q^229 + (6*zeta^3 + 
12*zeta^2 - 30*zeta - 30)*q^233 + (12*zeta^3 - 60*zeta)*q^234 + (48*zeta^2 - 
120)*q^235 + (-32*zeta^3 + 80*zeta)*q^238 + (-4*zeta^3 - 4*zeta^2 + 10*zeta + 
10)*q^241 + (-20*zeta^3 + 50*zeta)*q^242 + (-108*zeta^2 + 270)*q^245 + 
(-8*zeta^3 - 16*zeta^2 + 40*zeta + 40)*q^247 + (24*zeta^3 - 24*zeta^2 - 60*zeta 
+ 60)*q^251 + (-16*zeta^3 - 32*zeta^2 + 80*zeta + 80)*q^253 + (-24*zeta^3 + 
120*zeta)*q^254 + (-30*zeta^3 + 60*zeta^2 + 150*zeta - 150)*q^257 + (-48*zeta^3 
- 48*zeta^2 + 120*zeta + 120)*q^259 + (-12*zeta^3 - 12*zeta^2 + 30*zeta + 
30)*q^261 + (-48*zeta^3 + 120*zeta)*q^262 + (12*zeta^3 - 24*zeta^2 - 60*zeta + 
60)*q^263 + (-72*zeta^2 + 180)*q^265 + (32*zeta^3 - 160*zeta)*q^266 + (28*zeta^3
- 28*zeta^2 - 70*zeta + 70)*q^269 + (-48*zeta^3 + 48*zeta^2 + 120*zeta - 
120)*q^271 + (20*zeta^3 - 100*zeta)*q^274 + (48*zeta^2 - 120)*q^275 + 
(-10*zeta^3 + 20*zeta^2 + 50*zeta - 50)*q^277 + (48*zeta^3 - 120*zeta)*q^278 + 
(48*zeta^3 + 48*zeta^2 - 120*zeta - 120)*q^279 + (-20*zeta^3 - 20*zeta^2 + 
50*zeta + 50)*q^281 + (-8*zeta^3 + 16*zeta^2 + 40*zeta - 40)*q^283 + (16*zeta^3 
- 80*zeta)*q^286 + (24*zeta^3 + 48*zeta^2 - 120*zeta - 120)*q^287 + (-26*zeta^3 
+ 26*zeta^2 + 65*zeta - 65)*q^289 + (26*zeta^3 + 52*zeta^2 - 130*zeta - 
130)*q^293 + (-48*zeta^2 + 120)*q^295 + (-40*zeta^3 + 100*zeta)*q^298 + 
(-16*zeta^3 - 16*zeta^2 + 40*zeta + 40)*q^299 + (-64*zeta^3 - 64*zeta^2 + 
160*zeta + 160)*q^301 + (64*zeta^3 - 160*zeta)*q^302 + (24*zeta^2 - 60)*q^305 + 
(12*zeta^3 - 60*zeta)*q^306 + (-8*zeta^3 - 16*zeta^2 + 40*zeta + 40)*q^307 + 
(-64*zeta^3 + 64*zeta^2 + 160*zeta - 160)*q^311 + (-26*zeta^3 - 52*zeta^2 + 
130*zeta + 130)*q^313 + (-4*zeta^3 + 20*zeta)*q^314 + (144*zeta^2 - 360)*q^315 +
(-18*zeta^3 + 36*zeta^2 + 90*zeta - 90)*q^317 + (-16*zeta^3 - 16*zeta^2 + 
40*zeta + 40)*q^319 + (64*zeta^3 - 160*zeta)*q^322 + (-8*zeta^3 + 16*zeta^2 + 
40*zeta - 40)*q^323 + (24*zeta^2 - 60)*q^325 + (-32*zeta^3 + 160*zeta)*q^326 + 
(-32*zeta^3 + 32*zeta^2 + 80*zeta - 80)*q^329 + (24*zeta^3 - 24*zeta^2 - 60*zeta
+ 60)*q^331 + (18*zeta^3 + 36*zeta^2 - 90*zeta - 90)*q^333 + (24*zeta^3 - 
120*zeta)*q^334 + (96*zeta^2 - 240)*q^335 + (-14*zeta^3 + 28*zeta^2 + 70*zeta - 
70)*q^337 + (-36*zeta^3 + 90*zeta)*q^338 + (64*zeta^3 + 64*zeta^2 - 160*zeta - 
160)*q^341 + (48*zeta^3 - 120*zeta)*q^342 + (8*zeta^3 - 16*zeta^2 - 40*zeta + 
40)*q^343 + (-28*zeta^3 + 140*zeta)*q^346 + (-16*zeta^3 - 32*zeta^2 + 80*zeta + 
80)*q^347 + (60*zeta^3 - 60*zeta^2 - 150*zeta + 150)*q^349 + (-2*zeta^3 - 
4*zeta^2 + 10*zeta + 10)*q^353 + (80*zeta^3 - 200*zeta)*q^358 + (-48*zeta^3 - 
48*zeta^2 + 120*zeta + 120)*q^359 + (6*zeta^3 + 6*zeta^2 - 15*zeta - 15)*q^361 +
(40*zeta^3 - 100*zeta)*q^362 + (72*zeta^2 - 180)*q^365 + (20*zeta^3 + 40*zeta^2 
- 100*zeta - 100)*q^367 + (36*zeta^3 - 36*zeta^2 - 90*zeta + 90)*q^369 + 
(48*zeta^3 - 48*zeta^2 - 120*zeta + 120)*q^371 + (-22*zeta^3 - 44*zeta^2 + 
110*zeta + 110)*q^373 + (16*zeta^3 - 80*zeta)*q^374 + (4*zeta^3 - 8*zeta^2 - 
20*zeta + 20)*q^377 + (-40*zeta^3 - 40*zeta^2 + 100*zeta + 100)*q^379 + 
(-32*zeta^3 + 80*zeta)*q^382 + (36*zeta^3 - 72*zeta^2 - 180*zeta + 180)*q^383 + 
(192*zeta^2 - 480)*q^385 + (28*zeta^3 - 140*zeta)*q^386 + (24*zeta^3 + 48*zeta^2
- 120*zeta - 120)*q^387 + (12*zeta^3 - 12*zeta^2 - 30*zeta + 30)*q^389 + 
(-16*zeta^3 + 16*zeta^2 + 40*zeta - 40)*q^391 + (44*zeta^3 - 220*zeta)*q^394 + 
(-2*zeta^3 + 4*zeta^2 + 10*zeta - 10)*q^397 + (32*zeta^3 - 80*zeta)*q^398 + 
(-36*zeta^3 - 36*zeta^2 + 90*zeta + 90)*q^401 + (-16*zeta^3 + 32*zeta^2 + 
80*zeta - 80)*q^403 + (-108*zeta^2 + 270)*q^405 + (-16*zeta^3 + 80*zeta)*q^406 +
(24*zeta^3 + 48*zeta^2 - 120*zeta - 120)*q^407 + (20*zeta^3 - 20*zeta^2 - 
50*zeta + 50)*q^409 + (-16*zeta^3 - 32*zeta^2 + 80*zeta + 80)*q^413 + 
(-24*zeta^3 + 120*zeta)*q^414 + (-192*zeta^2 + 480)*q^415 + (64*zeta^3 - 
160*zeta)*q^418 + (72*zeta^3 + 72*zeta^2 - 180*zeta - 180)*q^419 + (-12*zeta^3 -
12*zeta^2 + 30*zeta + 30)*q^421 + (16*zeta^3 - 40*zeta)*q^422 + (12*zeta^3 - 
24*zeta^2 - 60*zeta + 60)*q^423 + (-24*zeta^2 + 60)*q^425 + (8*zeta^3 + 
16*zeta^2 - 40*zeta - 40)*q^427 + (80*zeta^3 - 80*zeta^2 - 200*zeta + 200)*q^431
+ (-2*zeta^3 - 4*zeta^2 + 10*zeta + 10)*q^433 + (64*zeta^3 - 320*zeta)*q^434 + 
(16*zeta^3 - 32*zeta^2 - 80*zeta + 80)*q^437 + (-16*zeta^3 - 16*zeta^2 + 40*zeta
+ 40)*q^439 + (54*zeta^3 + 54*zeta^2 - 135*zeta - 135)*q^441 + (16*zeta^3 - 
40*zeta)*q^442 + (-24*zeta^3 + 48*zeta^2 + 120*zeta - 120)*q^443 + (72*zeta^2 - 
180)*q^445 + (8*zeta^3 - 40*zeta)*q^446 + (36*zeta^3 - 36*zeta^2 - 90*zeta + 
90)*q^449 + (48*zeta^3 - 48*zeta^2 - 120*zeta + 120)*q^451 + (-48*zeta^3 + 
240*zeta)*q^454 + (96*zeta^2 - 240)*q^455 + (10*zeta^3 - 20*zeta^2 - 50*zeta + 
50)*q^457 + (-104*zeta^3 + 260*zeta)*q^458 + (36*zeta^3 + 36*zeta^2 - 90*zeta - 
90)*q^461 + (-12*zeta^3 + 24*zeta^2 + 60*zeta - 60)*q^463 + (12*zeta^3 - 
60*zeta)*q^466 + (8*zeta^3 + 16*zeta^2 - 40*zeta - 40)*q^467 + (-64*zeta^3 + 
64*zeta^2 + 160*zeta - 160)*q^469 + (32*zeta^3 + 64*zeta^2 - 160*zeta - 
160)*q^473 + (48*zeta^2 - 120)*q^475 + (-18*zeta^3 + 36*zeta^2 + 90*zeta - 
90)*q^477 + (32*zeta^3 + 32*zeta^2 - 80*zeta - 80)*q^479 + (24*zeta^3 + 
24*zeta^2 - 60*zeta - 60)*q^481 + (-8*zeta^3 + 20*zeta)*q^482 + (168*zeta^2 - 
420)*q^485 + (-20*zeta^3 - 40*zeta^2 + 100*zeta + 100)*q^487 + (-72*zeta^3 + 
72*zeta^2 + 180*zeta - 180)*q^491 + (4*zeta^3 + 8*zeta^2 - 20*zeta - 20)*q^493 +
(-16*zeta^3 + 80*zeta)*q^494 + (-144*zeta^2 + 360)*q^495 + (-56*zeta^3 - 
56*zeta^2 + 140*zeta + 140)*q^499 + (48*zeta^3 - 120*zeta)*q^502 + (12*zeta^3 - 
24*zeta^2 - 60*zeta + 60)*q^503 + (-72*zeta^2 + 180)*q^505 + (-32*zeta^3 + 
160*zeta)*q^506 + (-4*zeta^3 + 4*zeta^2 + 10*zeta - 10)*q^509 + (-48*zeta^3 + 
48*zeta^2 + 120*zeta - 120)*q^511 + (-60*zeta^3 + 300*zeta)*q^514 + (48*zeta^2 -
120)*q^515 + (16*zeta^3 - 32*zeta^2 - 80*zeta + 80)*q^517 + (-96*zeta^3 + 
240*zeta)*q^518 + (-20*zeta^3 - 20*zeta^2 + 50*zeta + 50)*q^521 + (-24*zeta^3 + 
60*zeta)*q^522 + (8*zeta^3 - 16*zeta^2 - 40*zeta + 40)*q^523 + (24*zeta^3 - 
120*zeta)*q^526 + (-16*zeta^3 - 32*zeta^2 + 80*zeta + 80)*q^527 + (-14*zeta^3 + 
14*zeta^2 + 35*zeta - 35)*q^529 + (-24*zeta^3 + 24*zeta^2 + 60*zeta - 60)*q^531 
+ (-12*zeta^3 - 24*zeta^2 + 60*zeta + 60)*q^533 + (56*zeta^3 - 140*zeta)*q^538 +
(72*zeta^3 + 72*zeta^2 - 180*zeta - 180)*q^539 + (4*zeta^3 + 4*zeta^2 - 10*zeta 
- 10)*q^541 + (-96*zeta^3 + 240*zeta)*q^542 + (-168*zeta^2 + 420)*q^545 + 
(8*zeta^3 + 16*zeta^2 - 40*zeta - 40)*q^547 + (12*zeta^3 - 12*zeta^2 - 30*zeta +
30)*q^549 + (16*zeta^3 - 16*zeta^2 - 40*zeta + 40)*q^551 + (-20*zeta^3 + 
100*zeta)*q^554 + (14*zeta^3 - 28*zeta^2 - 70*zeta + 70)*q^557 + (96*zeta^3 - 
240*zeta)*q^558 + (32*zeta^3 + 32*zeta^2 - 80*zeta - 80)*q^559 + (-40*zeta^3 + 
100*zeta)*q^562 + (-16*zeta^3 + 32*zeta^2 + 80*zeta - 80)*q^563 + (-216*zeta^2 +
540)*q^565 + (-16*zeta^3 + 80*zeta)*q^566 + (-36*zeta^3 - 72*zeta^2 + 180*zeta +
180)*q^567 + (-44*zeta^3 + 44*zeta^2 + 110*zeta - 110)*q^569 + (-8*zeta^3 + 
8*zeta^2 + 20*zeta - 20)*q^571 + (48*zeta^3 - 240*zeta)*q^574 + (48*zeta^2 - 
120)*q^575 + (2*zeta^3 - 4*zeta^2 - 10*zeta + 10)*q^577 + (-52*zeta^3 + 
130*zeta)*q^578 + O(q^580), (-zeta + 1)*q + (-2*zeta^3 + 6*zeta + 2)*q^3 + 
(-4*zeta^3 + 12*zeta)*q^4 - 6*q^5 + (-2*zeta^3 + 6*zeta - 2)*q^7 + (zeta + 
1)*q^9 + 8*zeta*q^12 + (2*zeta^3 - 6*zeta + 2)*q^13 - 12*q^15 + (6*zeta^3 - 
18*zeta - 6)*q^17 + (-4*zeta + 4)*q^19 + (4*zeta - 4)*q^21 + (6*zeta^3 - 18*zeta
- 6)*q^23 + 6*q^25 + (-4*zeta^3 + 12*zeta - 4)*q^27 + 8*zeta*q^28 + (6*zeta + 
6)*q^29 + (4*zeta + 4)*q^31 + 12*q^35 + (4*zeta^3 - 12*zeta)*q^36 + (-2*zeta^3 +
6*zeta + 2)*q^37 + (-4*zeta + 4)*q^39 + (-6*zeta + 6)*q^41 + (-10*zeta^3 + 
30*zeta + 10)*q^43 - 6*q^45 + (6*zeta^3 - 18*zeta + 6)*q^47 + (-3*zeta - 3)*q^49
+ (-12*zeta - 12)*q^51 - 8*zeta*q^52 + (-6*zeta^3 + 18*zeta - 6)*q^53 + 
(-8*zeta^3 + 24*zeta + 8)*q^57 + (12*zeta - 12)*q^59 + (-2*zeta + 2)*q^61 + 
(2*zeta^3 - 6*zeta - 2)*q^63 - 12*q^65 + (-2*zeta^3 + 6*zeta - 2)*q^67 - 
24*zeta*q^68 + (-12*zeta - 12)*q^69 + (12*zeta + 12)*q^71 + (2*zeta^3 - 6*zeta +
2)*q^73 + 12*q^75 + (-16*zeta^3 + 48*zeta)*q^76 + (8*zeta - 8)*q^79 + (11*zeta -
11)*q^81 + (6*zeta^3 - 18*zeta - 6)*q^83 + (16*zeta^3 - 48*zeta)*q^84 + 36*q^85 
+ (12*zeta^3 - 36*zeta + 12)*q^87 + (-6*zeta - 6)*q^89 + (-4*zeta - 4)*q^91 - 
24*zeta*q^92 + (8*zeta^3 - 24*zeta + 8)*q^93 - 24*q^95 + (-2*zeta^3 + 6*zeta + 
2)*q^97 + (-6*zeta + 6)*q^101 + (14*zeta^3 - 42*zeta - 14)*q^103 + 24*q^105 + 
(6*zeta^3 - 18*zeta + 6)*q^107 + 16*zeta*q^108 + (2*zeta + 2)*q^109 + (4*zeta + 
4)*q^111 + (-6*zeta^3 + 18*zeta - 6)*q^113 + 36*q^115 + (24*zeta^3 - 
72*zeta)*q^116 + (-2*zeta^3 + 6*zeta + 2)*q^117 + (-12*zeta + 12)*q^119 + 
(11*zeta - 11)*q^121 + (-12*zeta^3 + 36*zeta + 12)*q^123 + (16*zeta^3 - 
48*zeta)*q^124 - 6*q^125 + (-2*zeta^3 + 6*zeta - 2)*q^127 + (20*zeta + 20)*q^129
+ (-8*zeta^3 + 24*zeta - 8)*q^133 + 24*q^135 + (-18*zeta^3 + 54*zeta + 18)*q^137
+ (-4*zeta + 4)*q^139 + (-12*zeta + 12)*q^141 - 36*q^145 + (-6*zeta^3 + 18*zeta 
- 6)*q^147 + 8*zeta*q^148 + (-6*zeta - 6)*q^149 + (-20*zeta - 20)*q^151 + 
(-6*zeta^3 + 18*zeta - 6)*q^153 - 24*q^155 + (-16*zeta^3 + 48*zeta)*q^156 + 
(22*zeta^3 - 66*zeta - 22)*q^157 + (12*zeta - 12)*q^159 + (-12*zeta + 12)*q^161 
+ (-10*zeta^3 + 30*zeta + 10)*q^163 + (-24*zeta^3 + 72*zeta)*q^164 + (-18*zeta^3
+ 54*zeta - 18)*q^167 + (-9*zeta - 9)*q^169 + (4*zeta + 4)*q^171 + 40*zeta*q^172
+ (-6*zeta^3 + 18*zeta - 6)*q^173 - 12*q^175 + (24*zeta^3 - 72*zeta - 24)*q^177 
+ (-12*zeta + 12)*q^179 + (10*zeta - 10)*q^181 + (-4*zeta^3 + 12*zeta + 4)*q^183
- 12*q^185 - 24*zeta*q^188 + (8*zeta + 8)*q^189 + (12*zeta + 12)*q^191 + 
(26*zeta^3 - 78*zeta + 26)*q^193 - 24*q^195 + (-12*zeta^3 + 36*zeta)*q^196 + 
(-18*zeta^3 + 54*zeta + 18)*q^197 + (8*zeta - 8)*q^199 + (4*zeta - 4)*q^201 + 
(12*zeta^3 - 36*zeta - 12)*q^203 + (-48*zeta^3 + 144*zeta)*q^204 - 36*q^205 + 
(-6*zeta^3 + 18*zeta - 6)*q^207 + (16*zeta + 16)*q^211 + 24*zeta*q^212 + 
(24*zeta^3 - 72*zeta + 24)*q^213 - 60*q^215 + (8*zeta^3 - 24*zeta - 8)*q^217 + 
(-4*zeta + 4)*q^219 + (12*zeta - 12)*q^221 + (-10*zeta^3 + 30*zeta + 10)*q^223 +
6*q^225 + (6*zeta^3 - 18*zeta + 6)*q^227 + 32*zeta*q^228 + (14*zeta + 14)*q^229 
+ (-6*zeta^3 + 18*zeta - 6)*q^233 - 36*q^235 + (48*zeta^3 - 144*zeta)*q^236 + 
(16*zeta^3 - 48*zeta - 16)*q^237 + (-24*zeta + 24)*q^239 + (-14*zeta + 14)*q^241
+ (10*zeta^3 - 30*zeta - 10)*q^243 + (-8*zeta^3 + 24*zeta)*q^244 + 18*q^245 + 
(8*zeta^3 - 24*zeta + 8)*q^247 + (-12*zeta - 12)*q^249 - 8*zeta*q^252 + 72*q^255
+ (6*zeta^3 - 18*zeta - 6)*q^257 + (4*zeta - 4)*q^259 + (-6*zeta + 6)*q^261 + 
(-18*zeta^3 + 54*zeta + 18)*q^263 + 36*q^265 + (-12*zeta^3 + 36*zeta - 12)*q^267
+ 8*zeta*q^268 + (18*zeta + 18)*q^269 + (-20*zeta - 20)*q^271 + (-8*zeta^3 + 
24*zeta - 8)*q^273 + (-48*zeta^3 + 144*zeta)*q^276 + (-26*zeta^3 + 78*zeta + 
26)*q^277 + (-4*zeta + 4)*q^279 + (-6*zeta + 6)*q^281 + (14*zeta^3 - 42*zeta - 
14)*q^283 + (48*zeta^3 - 144*zeta)*q^284 - 48*q^285 + (-12*zeta^3 + 36*zeta - 
12)*q^287 + (19*zeta + 19)*q^289 + (4*zeta + 4)*q^291 - 8*zeta*q^292 + 
(-30*zeta^3 + 90*zeta - 30)*q^293 + 72*q^295 + (12*zeta - 12)*q^299 + (20*zeta -
20)*q^301 + (-12*zeta^3 + 36*zeta + 12)*q^303 - 12*q^305 + (-2*zeta^3 + 6*zeta -
2)*q^307 + (-28*zeta - 28)*q^309 + (-12*zeta - 12)*q^311 + (-22*zeta^3 + 66*zeta
- 22)*q^313 + 12*q^315 + (32*zeta^3 - 96*zeta)*q^316 + (6*zeta^3 - 18*zeta - 
6)*q^317 + (-12*zeta + 12)*q^321 + (24*zeta^3 - 72*zeta - 24)*q^323 + (44*zeta^3
- 132*zeta)*q^324 + 12*q^325 + (4*zeta^3 - 12*zeta + 4)*q^327 + (-12*zeta - 
12)*q^329 + (-8*zeta - 8)*q^331 - 24*zeta*q^332 + (2*zeta^3 - 6*zeta + 2)*q^333 
+ 12*q^335 + (-2*zeta^3 + 6*zeta + 2)*q^337 + (12*zeta - 12)*q^339 + (-20*zeta^3
+ 60*zeta + 20)*q^343 + 72*q^345 + (30*zeta^3 - 90*zeta + 30)*q^347 - 
48*zeta*q^348 + (-10*zeta - 10)*q^349 + (-8*zeta - 8)*q^351 + (18*zeta^3 - 
54*zeta + 18)*q^353 - 72*q^355 + (-24*zeta^3 + 72*zeta)*q^356 + (-24*zeta^3 + 
72*zeta + 24)*q^357 + (24*zeta - 24)*q^359 + (3*zeta - 3)*q^361 + (22*zeta^3 - 
66*zeta - 22)*q^363 + (-16*zeta^3 + 48*zeta)*q^364 - 12*q^365 + (22*zeta^3 - 
66*zeta + 22)*q^367 + (6*zeta + 6)*q^369 + (12*zeta + 12)*q^371 - 32*zeta*q^372 
+ (26*zeta^3 - 78*zeta + 26)*q^373 - 12*q^375 + (-12*zeta^3 + 36*zeta + 
12)*q^377 + (-28*zeta + 28)*q^379 + (4*zeta - 4)*q^381 + (6*zeta^3 - 18*zeta - 
6)*q^383 + (10*zeta^3 - 30*zeta + 10)*q^387 + 8*zeta*q^388 + (-6*zeta - 6)*q^389
+ (36*zeta + 36)*q^391 + 48*q^395 + (-2*zeta^3 + 6*zeta + 2)*q^397 + (16*zeta - 
16)*q^399 + (30*zeta - 30)*q^401 + (-8*zeta^3 + 24*zeta + 8)*q^403 + (-24*zeta^3
+ 72*zeta)*q^404 + 66*q^405 + (-34*zeta - 34)*q^409 + (36*zeta + 36)*q^411 - 
56*zeta*q^412 + (24*zeta^3 - 72*zeta + 24)*q^413 + 36*q^415 + (-8*zeta^3 + 
24*zeta + 8)*q^417 + (36*zeta - 36)*q^419 + (-26*zeta + 26)*q^421 + (-6*zeta^3 +
18*zeta + 6)*q^423 - 36*q^425 + (-4*zeta^3 + 12*zeta - 4)*q^427 - 24*zeta*q^428 
+ (-36*zeta - 36)*q^431 + (2*zeta^3 - 6*zeta + 2)*q^433 - 72*q^435 + (8*zeta^3 -
24*zeta)*q^436 + (24*zeta^3 - 72*zeta - 24)*q^437 + (8*zeta - 8)*q^439 + (3*zeta
- 3)*q^441 + (6*zeta^3 - 18*zeta - 6)*q^443 + (16*zeta^3 - 48*zeta)*q^444 + 
36*q^445 + (-12*zeta^3 + 36*zeta - 12)*q^447 + (6*zeta + 6)*q^449 + 
24*zeta*q^452 + (-40*zeta^3 + 120*zeta - 40)*q^453 + 24*q^455 + (-26*zeta^3 + 
78*zeta + 26)*q^457 + (-24*zeta + 24)*q^459 + (-30*zeta + 30)*q^461 + (14*zeta^3
- 42*zeta - 14)*q^463 - 48*q^465 + (30*zeta^3 - 90*zeta + 30)*q^467 + 
8*zeta*q^468 + (4*zeta + 4)*q^469 + (-44*zeta - 44)*q^471 + 24*q^475 + 
(-48*zeta^3 + 144*zeta)*q^476 + (6*zeta^3 - 18*zeta - 6)*q^477 + (-24*zeta + 
24)*q^479 + (-4*zeta + 4)*q^481 + (-24*zeta^3 + 72*zeta + 24)*q^483 + (44*zeta^3
- 132*zeta)*q^484 - 12*q^485 + (-26*zeta^3 + 78*zeta - 26)*q^487 + (20*zeta + 
20)*q^489 + 48*zeta*q^492 + (-36*zeta^3 + 108*zeta - 36)*q^493 + (24*zeta^3 - 
72*zeta - 24)*q^497 + (-4*zeta + 4)*q^499 + (36*zeta - 36)*q^501 + (-18*zeta^3 +
54*zeta + 18)*q^503 - 36*q^505 + (-18*zeta^3 + 54*zeta - 18)*q^507 + 
8*zeta*q^508 + (6*zeta + 6)*q^509 + (-4*zeta - 4)*q^511 + (-16*zeta^3 + 48*zeta 
- 16)*q^513 + 84*q^515 + (80*zeta^3 - 240*zeta)*q^516 + (12*zeta - 12)*q^519 + 
(6*zeta - 6)*q^521 + (14*zeta^3 - 42*zeta - 14)*q^523 - 24*q^525 + (-24*zeta^3 +
72*zeta - 24)*q^527 + (13*zeta + 13)*q^529 + (-12*zeta - 12)*q^531 + 
32*zeta*q^532 + (12*zeta^3 - 36*zeta + 12)*q^533 - 36*q^535 + (-24*zeta^3 + 
72*zeta + 24)*q^537 + (-14*zeta + 14)*q^541 + (20*zeta^3 - 60*zeta - 20)*q^543 -
12*q^545 + (-26*zeta^3 + 78*zeta - 26)*q^547 + 72*zeta*q^548 + (2*zeta + 
2)*q^549 + (24*zeta + 24)*q^551 + (16*zeta^3 - 48*zeta + 16)*q^553 - 24*q^555 + 
(-16*zeta^3 + 48*zeta)*q^556 + (30*zeta^3 - 90*zeta - 30)*q^557 + (-20*zeta + 
20)*q^559 + (-18*zeta^3 + 54*zeta + 18)*q^563 + (-48*zeta^3 + 144*zeta)*q^564 + 
36*q^565 + (22*zeta^3 - 66*zeta + 22)*q^567 + (30*zeta + 30)*q^569 + (-8*zeta - 
8)*q^571 + (24*zeta^3 - 72*zeta + 24)*q^573 - 36*q^575 + (22*zeta^3 - 66*zeta - 
22)*q^577 + (-52*zeta + 52)*q^579 + O(q^580), (zeta^3 - 2*zeta^2 - 4*zeta + 5)*q
+ (2*zeta^3 - 8*zeta)*q^2 + (3*zeta^3 - 6*zeta^2 - 6*zeta + 15)*q^3 + (6*zeta^3 
- 12*zeta)*q^6 + (2*zeta^3 + 4*zeta^2 - 4*zeta - 10)*q^7 + (-6*zeta^3 - 
12*zeta^2 + 24*zeta + 30)*q^9 + (zeta^3 + 2*zeta^2 - 4*zeta - 5)*q^11 + 
(-4*zeta^3 - 8*zeta^2 + 8*zeta + 20)*q^13 + (4*zeta^3 - 8*zeta)*q^14 + (5*zeta^3
- 10*zeta^2 - 10*zeta + 25)*q^17 + (-12*zeta^3 + 48*zeta)*q^18 + (-zeta^3 + 
2*zeta^2 + 4*zeta - 5)*q^19 + (-6*zeta^3 + 12*zeta^2 + 24*zeta - 30)*q^21 + 
(2*zeta^3 - 8*zeta)*q^22 + (2*zeta^3 - 4*zeta^2 - 4*zeta + 10)*q^23 + (-8*zeta^3
+ 16*zeta)*q^26 + (-9*zeta^3 - 18*zeta^2 + 18*zeta + 45)*q^27 + (8*zeta^3 + 
16*zeta^2 - 32*zeta - 40)*q^29 + (10*zeta^3 + 20*zeta^2 - 40*zeta - 50)*q^31 + 
(3*zeta^3 + 6*zeta^2 - 6*zeta - 15)*q^33 + (10*zeta^3 - 20*zeta)*q^34 + 
(-6*zeta^3 + 12*zeta^2 + 12*zeta - 30)*q^37 + (-2*zeta^3 + 8*zeta)*q^38 + 
(12*zeta^3 - 24*zeta^2 - 48*zeta + 60)*q^39 + (-3*zeta^3 + 6*zeta^2 + 12*zeta - 
15)*q^41 + (-12*zeta^3 + 48*zeta)*q^42 + (-4*zeta^3 + 8*zeta^2 + 8*zeta - 
20)*q^43 + (4*zeta^3 - 8*zeta)*q^46 + (4*zeta^3 + 8*zeta^2 - 8*zeta - 20)*q^47 +
(3*zeta^3 + 6*zeta^2 - 12*zeta - 15)*q^49 + (-15*zeta^3 - 30*zeta^2 + 60*zeta + 
75)*q^51 + (-6*zeta^3 - 12*zeta^2 + 12*zeta + 30)*q^53 + (-18*zeta^3 + 
36*zeta)*q^54 + (-3*zeta^3 + 6*zeta^2 + 6*zeta - 15)*q^57 + (16*zeta^3 - 
64*zeta)*q^58 + (-8*zeta^3 + 16*zeta^2 + 32*zeta - 40)*q^59 + (10*zeta^3 - 
20*zeta^2 - 40*zeta + 50)*q^61 + (20*zeta^3 - 80*zeta)*q^62 + (-12*zeta^3 + 
24*zeta^2 + 24*zeta - 60)*q^63 + (6*zeta^3 - 12*zeta)*q^66 + (-zeta^3 - 2*zeta^2
+ 2*zeta + 5)*q^67 + (-6*zeta^3 - 12*zeta^2 + 24*zeta + 30)*q^69 + (-12*zeta^3 -
24*zeta^2 + 48*zeta + 60)*q^71 + (-3*zeta^3 - 6*zeta^2 + 6*zeta + 15)*q^73 + 
(-12*zeta^3 + 24*zeta)*q^74 + (2*zeta^3 - 4*zeta^2 - 4*zeta + 10)*q^77 + 
(24*zeta^3 - 96*zeta)*q^78 + (-6*zeta^3 + 12*zeta^2 + 24*zeta - 30)*q^79 + 
(9*zeta^3 - 18*zeta^2 - 36*zeta + 45)*q^81 + (-6*zeta^3 + 24*zeta)*q^82 + 
(13*zeta^3 - 26*zeta^2 - 26*zeta + 65)*q^83 + (-8*zeta^3 + 16*zeta)*q^86 + 
(24*zeta^3 + 48*zeta^2 - 48*zeta - 120)*q^87 + (9*zeta^3 + 18*zeta^2 - 36*zeta -
45)*q^89 + (8*zeta^3 + 16*zeta^2 - 32*zeta - 40)*q^91 + (30*zeta^3 + 60*zeta^2 -
60*zeta - 150)*q^93 + (8*zeta^3 - 16*zeta)*q^94 + (-14*zeta^3 + 28*zeta^2 + 
28*zeta - 70)*q^97 + (6*zeta^3 - 24*zeta)*q^98 + (-6*zeta^3 + 12*zeta^2 + 
24*zeta - 30)*q^99 + (6*zeta^3 - 12*zeta^2 - 24*zeta + 30)*q^101 + (-30*zeta^3 +
120*zeta)*q^102 + (-4*zeta^3 + 8*zeta^2 + 8*zeta - 20)*q^103 + (-12*zeta^3 + 
24*zeta)*q^106 + (-15*zeta^3 - 30*zeta^2 + 30*zeta + 75)*q^107 + (-14*zeta^3 - 
28*zeta^2 + 56*zeta + 70)*q^109 + (18*zeta^3 + 36*zeta^2 - 72*zeta - 90)*q^111 +
(9*zeta^3 + 18*zeta^2 - 18*zeta - 45)*q^113 + (-6*zeta^3 + 12*zeta)*q^114 + 
(24*zeta^3 - 48*zeta^2 - 48*zeta + 120)*q^117 + (-16*zeta^3 + 64*zeta)*q^118 + 
(-10*zeta^3 + 20*zeta^2 + 40*zeta - 50)*q^119 + (-10*zeta^3 + 20*zeta^2 + 
40*zeta - 50)*q^121 + (20*zeta^3 - 80*zeta)*q^122 + (-9*zeta^3 + 18*zeta^2 + 
18*zeta - 45)*q^123 + (-24*zeta^3 + 48*zeta)*q^126 + (-6*zeta^3 - 12*zeta^2 + 
12*zeta + 30)*q^127 + (12*zeta^3 + 24*zeta^2 - 48*zeta - 60)*q^129 + (-12*zeta^3
- 24*zeta^2 + 48*zeta + 60)*q^131 + (-2*zeta^3 - 4*zeta^2 + 4*zeta + 10)*q^133 +
(-2*zeta^3 + 4*zeta)*q^134 + (13*zeta^3 - 26*zeta^2 - 26*zeta + 65)*q^137 + 
(-12*zeta^3 + 48*zeta)*q^138 + (-9*zeta^3 + 18*zeta^2 + 36*zeta - 45)*q^139 + 
(-12*zeta^3 + 24*zeta^2 + 48*zeta - 60)*q^141 + (-24*zeta^3 + 96*zeta)*q^142 + 
(-4*zeta^3 + 8*zeta^2 + 8*zeta - 20)*q^143 + (-6*zeta^3 + 12*zeta)*q^146 + 
(9*zeta^3 + 18*zeta^2 - 18*zeta - 45)*q^147 + (-8*zeta^3 - 16*zeta^2 + 32*zeta +
40)*q^149 + (2*zeta^3 + 4*zeta^2 - 8*zeta - 10)*q^151 + (-30*zeta^3 - 60*zeta^2 
+ 60*zeta + 150)*q^153 + (4*zeta^3 - 8*zeta)*q^154 + (-14*zeta^3 + 28*zeta^2 + 
28*zeta - 70)*q^157 + (-12*zeta^3 + 48*zeta)*q^158 + (18*zeta^3 - 36*zeta^2 - 
72*zeta + 90)*q^159 + (-4*zeta^3 + 8*zeta^2 + 16*zeta - 20)*q^161 + (18*zeta^3 -
72*zeta)*q^162 + (-7*zeta^3 + 14*zeta^2 + 14*zeta - 35)*q^163 + (26*zeta^3 - 
52*zeta)*q^166 + (-12*zeta^3 - 24*zeta^2 + 24*zeta + 60)*q^167 + (-3*zeta^3 - 
6*zeta^2 + 12*zeta + 15)*q^169 + (6*zeta^3 + 12*zeta^2 - 24*zeta - 30)*q^171 + 
(-8*zeta^3 - 16*zeta^2 + 16*zeta + 40)*q^173 + (48*zeta^3 - 96*zeta)*q^174 + 
(-24*zeta^3 + 48*zeta^2 + 48*zeta - 120)*q^177 + (18*zeta^3 - 72*zeta)*q^178 + 
(19*zeta^3 - 38*zeta^2 - 76*zeta + 95)*q^179 + (2*zeta^3 - 4*zeta^2 - 8*zeta + 
10)*q^181 + (16*zeta^3 - 64*zeta)*q^182 + (30*zeta^3 - 60*zeta^2 - 60*zeta + 
150)*q^183 + (60*zeta^3 - 120*zeta)*q^186 + (5*zeta^3 + 10*zeta^2 - 10*zeta - 
25)*q^187 + (18*zeta^3 + 36*zeta^2 - 72*zeta - 90)*q^189 + (-10*zeta^3 - 
20*zeta^2 + 40*zeta + 50)*q^191 + (11*zeta^3 + 22*zeta^2 - 22*zeta - 55)*q^193 +
(-28*zeta^3 + 56*zeta)*q^194 + (-2*zeta^3 + 4*zeta^2 + 4*zeta - 10)*q^197 + 
(-12*zeta^3 + 48*zeta)*q^198 + (28*zeta^3 - 56*zeta^2 - 112*zeta + 140)*q^199 + 
(3*zeta^3 - 6*zeta^2 - 12*zeta + 15)*q^201 + (12*zeta^3 - 48*zeta)*q^202 + 
(16*zeta^3 - 32*zeta^2 - 32*zeta + 80)*q^203 + (-8*zeta^3 + 16*zeta)*q^206 + 
(-12*zeta^3 - 24*zeta^2 + 24*zeta + 60)*q^207 + (-zeta^3 - 2*zeta^2 + 4*zeta + 
5)*q^209 + (-zeta^3 - 2*zeta^2 + 4*zeta + 5)*q^211 + (-36*zeta^3 - 72*zeta^2 + 
72*zeta + 180)*q^213 + (-30*zeta^3 + 60*zeta)*q^214 + (20*zeta^3 - 40*zeta^2 - 
40*zeta + 100)*q^217 + (-28*zeta^3 + 112*zeta)*q^218 + (9*zeta^3 - 18*zeta^2 - 
36*zeta + 45)*q^219 + (20*zeta^3 - 40*zeta^2 - 80*zeta + 100)*q^221 + (36*zeta^3
- 144*zeta)*q^222 + (4*zeta^3 - 8*zeta^2 - 8*zeta + 20)*q^223 + (18*zeta^3 - 
36*zeta)*q^226 + (-12*zeta^3 - 24*zeta^2 + 24*zeta + 60)*q^227 + (-4*zeta^3 - 
8*zeta^2 + 16*zeta + 20)*q^229 + (-6*zeta^3 - 12*zeta^2 + 24*zeta + 30)*q^231 + 
(-6*zeta^3 - 12*zeta^2 + 12*zeta + 30)*q^233 + (48*zeta^3 - 96*zeta)*q^234 + 
(-18*zeta^3 + 36*zeta^2 + 36*zeta - 90)*q^237 + (-20*zeta^3 + 80*zeta)*q^238 + 
(-24*zeta^3 + 48*zeta^2 + 96*zeta - 120)*q^239 + (-7*zeta^3 + 14*zeta^2 + 
28*zeta - 35)*q^241 + (-20*zeta^3 + 80*zeta)*q^242 + (-18*zeta^3 + 
36*zeta)*q^246 + (4*zeta^3 + 8*zeta^2 - 8*zeta - 20)*q^247 + (-39*zeta^3 - 
78*zeta^2 + 156*zeta + 195)*q^249 + (15*zeta^3 + 30*zeta^2 - 60*zeta - 75)*q^251
+ (2*zeta^3 + 4*zeta^2 - 4*zeta - 10)*q^253 + (-12*zeta^3 + 24*zeta)*q^254 + 
(30*zeta^3 - 60*zeta^2 - 60*zeta + 150)*q^257 + (24*zeta^3 - 96*zeta)*q^258 + 
(12*zeta^3 - 24*zeta^2 - 48*zeta + 60)*q^259 + (-48*zeta^3 + 96*zeta^2 + 
192*zeta - 240)*q^261 + (-24*zeta^3 + 96*zeta)*q^262 + (-30*zeta^3 + 60*zeta^2 +
60*zeta - 150)*q^263 + (-4*zeta^3 + 8*zeta)*q^266 + (27*zeta^3 + 54*zeta^2 - 
54*zeta - 135)*q^267 + (16*zeta^3 + 32*zeta^2 - 64*zeta - 80)*q^269 + (-6*zeta^3
- 12*zeta^2 + 24*zeta + 30)*q^271 + (24*zeta^3 + 48*zeta^2 - 48*zeta - 
120)*q^273 + (26*zeta^3 - 52*zeta)*q^274 + (8*zeta^3 - 16*zeta^2 - 16*zeta + 
40)*q^277 + (-18*zeta^3 + 72*zeta)*q^278 + (-60*zeta^3 + 120*zeta^2 + 240*zeta -
300)*q^279 + (-2*zeta^3 + 4*zeta^2 + 8*zeta - 10)*q^281 + (-24*zeta^3 + 
96*zeta)*q^282 + (zeta^3 - 2*zeta^2 - 2*zeta + 5)*q^283 + (-8*zeta^3 + 
16*zeta)*q^286 + (-6*zeta^3 - 12*zeta^2 + 12*zeta + 30)*q^287 + (-8*zeta^3 - 
16*zeta^2 + 32*zeta + 40)*q^289 + (42*zeta^3 + 84*zeta^2 - 168*zeta - 210)*q^291
+ (2*zeta^3 + 4*zeta^2 - 4*zeta - 10)*q^293 + (18*zeta^3 - 36*zeta)*q^294 + 
(-9*zeta^3 + 18*zeta^2 + 18*zeta - 45)*q^297 + (-16*zeta^3 + 64*zeta)*q^298 + 
(8*zeta^3 - 16*zeta^2 - 32*zeta + 40)*q^299 + (8*zeta^3 - 16*zeta^2 - 32*zeta + 
40)*q^301 + (4*zeta^3 - 16*zeta)*q^302 + (18*zeta^3 - 36*zeta^2 - 36*zeta + 
90)*q^303 + (-60*zeta^3 + 120*zeta)*q^306 + (13*zeta^3 + 26*zeta^2 - 26*zeta - 
65)*q^307 + (12*zeta^3 + 24*zeta^2 - 48*zeta - 60)*q^309 + (14*zeta^3 + 
28*zeta^2 - 56*zeta - 70)*q^311 + (22*zeta^3 + 44*zeta^2 - 44*zeta - 110)*q^313 
+ (-28*zeta^3 + 56*zeta)*q^314 + (12*zeta^3 - 24*zeta^2 - 24*zeta + 60)*q^317 + 
(36*zeta^3 - 144*zeta)*q^318 + (8*zeta^3 - 16*zeta^2 - 32*zeta + 40)*q^319 + 
(45*zeta^3 - 90*zeta^2 - 180*zeta + 225)*q^321 + (-8*zeta^3 + 32*zeta)*q^322 + 
(-5*zeta^3 + 10*zeta^2 + 10*zeta - 25)*q^323 + (-14*zeta^3 + 28*zeta)*q^326 + 
(-42*zeta^3 - 84*zeta^2 + 84*zeta + 210)*q^327 + (-8*zeta^3 - 16*zeta^2 + 
32*zeta + 40)*q^329 + (-27*zeta^3 - 54*zeta^2 + 108*zeta + 135)*q^331 + 
(36*zeta^3 + 72*zeta^2 - 72*zeta - 180)*q^333 + (-24*zeta^3 + 48*zeta)*q^334 + 
(19*zeta^3 - 38*zeta^2 - 38*zeta + 95)*q^337 + (-6*zeta^3 + 24*zeta)*q^338 + 
(-27*zeta^3 + 54*zeta^2 + 108*zeta - 135)*q^339 + (10*zeta^3 - 20*zeta^2 - 
40*zeta + 50)*q^341 + (12*zeta^3 - 48*zeta)*q^342 + (20*zeta^3 - 40*zeta^2 - 
40*zeta + 100)*q^343 + (-16*zeta^3 + 32*zeta)*q^346 + (17*zeta^3 + 34*zeta^2 - 
34*zeta - 85)*q^347 + (18*zeta^3 + 36*zeta^2 - 72*zeta - 90)*q^349 + (-36*zeta^3
- 72*zeta^2 + 144*zeta + 180)*q^351 + (10*zeta^3 + 20*zeta^2 - 20*zeta - 
50)*q^353 + (-48*zeta^3 + 96*zeta)*q^354 + (-30*zeta^3 + 60*zeta^2 + 60*zeta - 
150)*q^357 + (38*zeta^3 - 152*zeta)*q^358 + (18*zeta^3 - 36*zeta^2 - 72*zeta + 
90)*q^359 + (-18*zeta^3 + 36*zeta^2 + 72*zeta - 90)*q^361 + (4*zeta^3 - 
16*zeta)*q^362 + (-30*zeta^3 + 60*zeta^2 + 60*zeta - 150)*q^363 + (60*zeta^3 - 
120*zeta)*q^366 + (20*zeta^3 + 40*zeta^2 - 40*zeta - 100)*q^367 + (18*zeta^3 + 
36*zeta^2 - 72*zeta - 90)*q^369 + (12*zeta^3 + 24*zeta^2 - 48*zeta - 60)*q^371 +
(-10*zeta^3 - 20*zeta^2 + 20*zeta + 50)*q^373 + (10*zeta^3 - 20*zeta)*q^374 + 
(-32*zeta^3 + 64*zeta^2 + 64*zeta - 160)*q^377 + (36*zeta^3 - 144*zeta)*q^378 + 
(5*zeta^3 - 10*zeta^2 - 20*zeta + 25)*q^379 + (18*zeta^3 - 36*zeta^2 - 72*zeta +
90)*q^381 + (-20*zeta^3 + 80*zeta)*q^382 + (-6*zeta^3 + 12*zeta^2 + 12*zeta - 
30)*q^383 + (22*zeta^3 - 44*zeta)*q^386 + (24*zeta^3 + 48*zeta^2 - 48*zeta - 
120)*q^387 + (-30*zeta^3 - 60*zeta^2 + 120*zeta + 150)*q^389 + (-10*zeta^3 - 
20*zeta^2 + 40*zeta + 50)*q^391 + (-36*zeta^3 - 72*zeta^2 + 72*zeta + 180)*q^393
+ (-4*zeta^3 + 8*zeta)*q^394 + (4*zeta^3 - 8*zeta^2 - 8*zeta + 20)*q^397 + 
(56*zeta^3 - 224*zeta)*q^398 + (6*zeta^3 - 12*zeta^2 - 24*zeta + 30)*q^399 + 
(21*zeta^3 - 42*zeta^2 - 84*zeta + 105)*q^401 + (6*zeta^3 - 24*zeta)*q^402 + 
(-40*zeta^3 + 80*zeta^2 + 80*zeta - 200)*q^403 + (32*zeta^3 - 64*zeta)*q^406 + 
(-6*zeta^3 - 12*zeta^2 + 12*zeta + 30)*q^407 + (11*zeta^3 + 22*zeta^2 - 44*zeta 
- 55)*q^409 + (-39*zeta^3 - 78*zeta^2 + 156*zeta + 195)*q^411 + (-16*zeta^3 - 
32*zeta^2 + 32*zeta + 80)*q^413 + (-24*zeta^3 + 48*zeta)*q^414 + (-27*zeta^3 + 
54*zeta^2 + 54*zeta - 135)*q^417 + (-2*zeta^3 + 8*zeta)*q^418 + (3*zeta^3 - 
6*zeta^2 - 12*zeta + 15)*q^419 + (-12*zeta^3 + 24*zeta^2 + 48*zeta - 60)*q^421 +
(-2*zeta^3 + 8*zeta)*q^422 + (-24*zeta^3 + 48*zeta^2 + 48*zeta - 120)*q^423 + 
(-72*zeta^3 + 144*zeta)*q^426 + (20*zeta^3 + 40*zeta^2 - 40*zeta - 100)*q^427 + 
(12*zeta^3 + 24*zeta^2 - 48*zeta - 60)*q^429 + (-34*zeta^3 - 68*zeta^2 + 
136*zeta + 170)*q^431 + (-5*zeta^3 - 10*zeta^2 + 10*zeta + 25)*q^433 + 
(40*zeta^3 - 80*zeta)*q^434 + (-2*zeta^3 + 4*zeta^2 + 4*zeta - 10)*q^437 + 
(18*zeta^3 - 72*zeta)*q^438 + (-16*zeta^3 + 32*zeta^2 + 64*zeta - 80)*q^439 + 
(-18*zeta^3 + 36*zeta^2 + 72*zeta - 90)*q^441 + (40*zeta^3 - 160*zeta)*q^442 + 
(21*zeta^3 - 42*zeta^2 - 42*zeta + 105)*q^443 + (8*zeta^3 - 16*zeta)*q^446 + 
(-24*zeta^3 - 48*zeta^2 + 48*zeta + 120)*q^447 + (39*zeta^3 + 78*zeta^2 - 
156*zeta - 195)*q^449 + (-3*zeta^3 - 6*zeta^2 + 12*zeta + 15)*q^451 + (6*zeta^3 
+ 12*zeta^2 - 12*zeta - 30)*q^453 + (-24*zeta^3 + 48*zeta)*q^454 + (zeta^3 - 
2*zeta^2 - 2*zeta + 5)*q^457 + (-8*zeta^3 + 32*zeta)*q^458 + (45*zeta^3 - 
90*zeta^2 - 180*zeta + 225)*q^459 + (12*zeta^3 - 24*zeta^2 - 48*zeta + 60)*q^461
+ (-12*zeta^3 + 48*zeta)*q^462 + (36*zeta^3 - 72*zeta^2 - 72*zeta + 180)*q^463 +
(-12*zeta^3 + 24*zeta)*q^466 + (-28*zeta^3 - 56*zeta^2 + 56*zeta + 140)*q^467 + 
(2*zeta^3 + 4*zeta^2 - 8*zeta - 10)*q^469 + (42*zeta^3 + 84*zeta^2 - 168*zeta - 
210)*q^471 + (-4*zeta^3 - 8*zeta^2 + 8*zeta + 20)*q^473 + (-36*zeta^3 + 
72*zeta)*q^474 + (36*zeta^3 - 72*zeta^2 - 72*zeta + 180)*q^477 + (-48*zeta^3 + 
192*zeta)*q^478 + (-22*zeta^3 + 44*zeta^2 + 88*zeta - 110)*q^479 + (-24*zeta^3 +
48*zeta^2 + 96*zeta - 120)*q^481 + (-14*zeta^3 + 56*zeta)*q^482 + (-12*zeta^3 + 
24*zeta^2 + 24*zeta - 60)*q^483 + (-38*zeta^3 - 76*zeta^2 + 76*zeta + 190)*q^487
+ (21*zeta^3 + 42*zeta^2 - 84*zeta - 105)*q^489 + (36*zeta^3 + 72*zeta^2 - 
144*zeta - 180)*q^491 + (40*zeta^3 + 80*zeta^2 - 80*zeta - 200)*q^493 + 
(8*zeta^3 - 16*zeta)*q^494 + (-24*zeta^3 + 48*zeta^2 + 48*zeta - 120)*q^497 + 
(-78*zeta^3 + 312*zeta)*q^498 + (4*zeta^3 - 8*zeta^2 - 16*zeta + 20)*q^499 + 
(36*zeta^3 - 72*zeta^2 - 144*zeta + 180)*q^501 + (30*zeta^3 - 120*zeta)*q^502 + 
(-36*zeta^3 + 72*zeta^2 + 72*zeta - 180)*q^503 + (4*zeta^3 - 8*zeta)*q^506 + 
(-9*zeta^3 - 18*zeta^2 + 18*zeta + 45)*q^507 + (-34*zeta^3 - 68*zeta^2 + 
136*zeta + 170)*q^509 + (6*zeta^3 + 12*zeta^2 - 24*zeta - 30)*q^511 + (9*zeta^3 
+ 18*zeta^2 - 18*zeta - 45)*q^513 + (60*zeta^3 - 120*zeta)*q^514 + (4*zeta^3 - 
8*zeta^2 - 8*zeta + 20)*q^517 + (24*zeta^3 - 96*zeta)*q^518 + (24*zeta^3 - 
48*zeta^2 - 96*zeta + 120)*q^519 + (-35*zeta^3 + 70*zeta^2 + 140*zeta - 
175)*q^521 + (-96*zeta^3 + 384*zeta)*q^522 + (35*zeta^3 - 70*zeta^2 - 70*zeta + 
175)*q^523 + (-60*zeta^3 + 120*zeta)*q^526 + (50*zeta^3 + 100*zeta^2 - 100*zeta 
- 250)*q^527 + (19*zeta^3 + 38*zeta^2 - 76*zeta - 95)*q^529 + (48*zeta^3 + 
96*zeta^2 - 192*zeta - 240)*q^531 + (12*zeta^3 + 24*zeta^2 - 24*zeta - 60)*q^533
+ (54*zeta^3 - 108*zeta)*q^534 + (57*zeta^3 - 114*zeta^2 - 114*zeta + 285)*q^537
+ (32*zeta^3 - 128*zeta)*q^538 + (3*zeta^3 - 6*zeta^2 - 12*zeta + 15)*q^539 + 
(-32*zeta^3 + 64*zeta^2 + 128*zeta - 160)*q^541 + (-12*zeta^3 + 48*zeta)*q^542 +
(6*zeta^3 - 12*zeta^2 - 12*zeta + 30)*q^543 + (48*zeta^3 - 96*zeta)*q^546 + 
(-19*zeta^3 - 38*zeta^2 + 38*zeta + 95)*q^547 + (-60*zeta^3 - 120*zeta^2 + 
240*zeta + 300)*q^549 + (-8*zeta^3 - 16*zeta^2 + 32*zeta + 40)*q^551 + 
(-12*zeta^3 - 24*zeta^2 + 24*zeta + 60)*q^553 + (16*zeta^3 - 32*zeta)*q^554 + 
(-28*zeta^3 + 56*zeta^2 + 56*zeta - 140)*q^557 + (-120*zeta^3 + 480*zeta)*q^558 
+ (-16*zeta^3 + 32*zeta^2 + 64*zeta - 80)*q^559 + (-15*zeta^3 + 30*zeta^2 + 
60*zeta - 75)*q^561 + (-4*zeta^3 + 16*zeta)*q^562 + (32*zeta^3 - 64*zeta^2 - 
64*zeta + 160)*q^563 + (2*zeta^3 - 4*zeta)*q^566 + (18*zeta^3 + 36*zeta^2 - 
36*zeta - 90)*q^567 + (-17*zeta^3 - 34*zeta^2 + 68*zeta + 85)*q^569 + 
(-20*zeta^3 - 40*zeta^2 + 80*zeta + 100)*q^571 + (-30*zeta^3 - 60*zeta^2 + 
60*zeta + 150)*q^573 + (-12*zeta^3 + 24*zeta)*q^574 + (-13*zeta^3 + 26*zeta^2 + 
26*zeta - 65)*q^577 + (-16*zeta^3 + 64*zeta)*q^578 + (-33*zeta^3 + 66*zeta^2 + 
132*zeta - 165)*q^579 + O(q^580), (-2*zeta^2 + zeta + 5)*q + (2*zeta^3 - 
6*zeta)*q^5 + (4*zeta^3 - 12*zeta)*q^6 + (-2*zeta^2 - zeta + 5)*q^9 - 
8*zeta*q^10 + (-8*zeta^2 - 4*zeta + 20)*q^11 + (-4*zeta^3 + 12*zeta)*q^14 + 
(-8*zeta^3 + 24*zeta)*q^15 + (-8*zeta^2 + 4*zeta + 20)*q^19 + (-8*zeta^2 + 
4*zeta + 20)*q^21 + (6*zeta^3 - 18*zeta)*q^25 + (8*zeta^3 - 24*zeta)*q^26 + 
(-4*zeta^2 - 2*zeta + 10)*q^29 - 8*zeta*q^30 + (8*zeta^3 - 24*zeta)*q^35 + 
(16*zeta^2 - 8*zeta - 40)*q^39 + (-4*zeta^2 + 2*zeta + 10)*q^41 + (-2*zeta^3 + 
6*zeta)*q^45 + (-4*zeta^3 + 12*zeta)*q^46 + (6*zeta^2 + 3*zeta - 15)*q^49 + 
16*zeta*q^50 + (8*zeta^3 - 24*zeta)*q^54 + (-8*zeta^3 + 24*zeta)*q^55 + 
(-24*zeta^2 + 12*zeta + 60)*q^59 + (20*zeta^2 - 10*zeta - 50)*q^61 + (-16*zeta^3
+ 48*zeta)*q^65 + (-16*zeta^3 + 48*zeta)*q^66 + (8*zeta^2 + 4*zeta - 20)*q^69 + 
8*zeta*q^70 + (16*zeta^2 + 8*zeta - 40)*q^71 + (-8*zeta^3 + 24*zeta)*q^74 + 
(16*zeta^3 - 48*zeta)*q^75 + (32*zeta^2 - 16*zeta - 80)*q^79 + (22*zeta^2 - 
11*zeta - 55)*q^81 + (-12*zeta^3 + 36*zeta)*q^86 + (-12*zeta^2 - 6*zeta + 
30)*q^89 + 8*zeta*q^90 + (16*zeta^2 + 8*zeta - 40)*q^91 + (12*zeta^3 - 
36*zeta)*q^94 + (8*zeta^3 - 24*zeta)*q^95 + (-8*zeta^2 + 4*zeta + 20)*q^99 + 
(-12*zeta^2 + 6*zeta + 30)*q^101 + (8*zeta^3 - 24*zeta)*q^105 + (-8*zeta^3 + 
24*zeta)*q^106 + (12*zeta^2 + 6*zeta - 30)*q^109 + 32*zeta*q^110 + (16*zeta^2 + 
8*zeta - 40)*q^111 + (16*zeta^3 - 48*zeta)*q^114 + (8*zeta^3 - 24*zeta)*q^115 + 
(-10*zeta^2 + 5*zeta + 25)*q^121 + (-22*zeta^3 + 66*zeta)*q^125 + (4*zeta^3 - 
12*zeta)*q^126 + (24*zeta^2 + 12*zeta - 60)*q^129 - 16*zeta*q^130 + (-24*zeta^2 
- 12*zeta + 60)*q^131 + (-28*zeta^3 + 84*zeta)*q^134 + (-16*zeta^3 + 
48*zeta)*q^135 + (8*zeta^2 - 4*zeta - 20)*q^139 + (24*zeta^2 - 12*zeta - 
60)*q^141 + (-4*zeta^3 + 12*zeta)*q^145 + (16*zeta^3 - 48*zeta)*q^146 + 
(-36*zeta^2 - 18*zeta + 90)*q^149 - 24*zeta*q^150 + (-16*zeta^2 - 8*zeta + 
40)*q^151 + (16*zeta^3 - 48*zeta)*q^154 + (-16*zeta^2 + 8*zeta + 40)*q^159 + 
(8*zeta^2 - 4*zeta - 20)*q^161 + (32*zeta^3 - 96*zeta)*q^165 + (4*zeta^3 - 
12*zeta)*q^166 + (-6*zeta^2 - 3*zeta + 15)*q^169 + (-8*zeta^2 - 4*zeta + 
20)*q^171 + (-8*zeta^3 + 24*zeta)*q^174 + (-16*zeta^3 + 48*zeta)*q^175 + 
(-8*zeta^2 + 4*zeta + 20)*q^179 + (-44*zeta^2 + 22*zeta + 110)*q^181 + 
(16*zeta^3 - 48*zeta)*q^185 + (16*zeta^2 + 8*zeta - 40)*q^189 - 32*zeta*q^190 + 
(-32*zeta^3 + 96*zeta)*q^194 + (-16*zeta^3 + 48*zeta)*q^195 + (-16*zeta^2 + 
8*zeta + 40)*q^199 + (-56*zeta^2 + 28*zeta + 140)*q^201 + (4*zeta^3 - 
12*zeta)*q^205 + (28*zeta^3 - 84*zeta)*q^206 + (-32*zeta^2 - 16*zeta + 80)*q^209
- 32*zeta*q^210 + (8*zeta^2 + 4*zeta - 20)*q^211 + (20*zeta^3 - 60*zeta)*q^214 +
(24*zeta^3 - 72*zeta)*q^215 + (32*zeta^2 - 16*zeta - 80)*q^219 + (-6*zeta^3 + 
18*zeta)*q^225 + (32*zeta^3 - 96*zeta)*q^226 + (12*zeta^2 + 6*zeta - 30)*q^229 +
8*zeta*q^230 + (-32*zeta^2 - 16*zeta + 80)*q^231 + (-8*zeta^3 + 24*zeta)*q^234 +
(-24*zeta^3 + 72*zeta)*q^235 + (-32*zeta^2 + 16*zeta + 80)*q^239 + (44*zeta^2 - 
22*zeta - 110)*q^241 + (6*zeta^3 - 18*zeta)*q^245 + (8*zeta^3 - 24*zeta)*q^246 +
(-8*zeta^2 - 4*zeta + 20)*q^249 + 8*zeta*q^250 + (-40*zeta^2 - 20*zeta + 
100)*q^251 + (12*zeta^3 - 36*zeta)*q^254 + (16*zeta^2 - 8*zeta - 40)*q^259 + 
(-4*zeta^2 + 2*zeta + 10)*q^261 + (16*zeta^3 - 48*zeta)*q^265 + (-16*zeta^3 + 
48*zeta)*q^266 + (12*zeta^2 + 6*zeta - 30)*q^269 - 16*zeta*q^270 + (-32*zeta^2 -
16*zeta + 80)*q^271 + (-16*zeta^3 + 48*zeta)*q^274 + (-24*zeta^3 + 
72*zeta)*q^275 + (-36*zeta^2 + 18*zeta + 90)*q^281 + (-32*zeta^3 + 
96*zeta)*q^285 + (-32*zeta^3 + 96*zeta)*q^286 + (34*zeta^2 + 17*zeta - 85)*q^289
+ 16*zeta*q^290 + (64*zeta^2 + 32*zeta - 160)*q^291 + (12*zeta^3 - 
36*zeta)*q^294 + (24*zeta^3 - 72*zeta)*q^295 + (-16*zeta^2 + 8*zeta + 40)*q^299 
+ (24*zeta^2 - 12*zeta - 60)*q^301 + (-20*zeta^3 + 60*zeta)*q^305 + (-56*zeta^2 
- 28*zeta + 140)*q^309 + (48*zeta^2 + 24*zeta - 120)*q^311 + (8*zeta^3 - 
24*zeta)*q^314 + (-8*zeta^3 + 24*zeta)*q^315 + (-16*zeta^2 + 8*zeta + 40)*q^319 
+ (40*zeta^2 - 20*zeta - 100)*q^321 + (32*zeta^3 - 96*zeta)*q^325 + (4*zeta^3 - 
12*zeta)*q^326 + (24*zeta^2 + 12*zeta - 60)*q^329 + 32*zeta*q^330 + (56*zeta^2 +
28*zeta - 140)*q^331 + (-36*zeta^3 + 108*zeta)*q^334 + (56*zeta^3 - 
168*zeta)*q^335 + (64*zeta^2 - 32*zeta - 160)*q^339 + (8*zeta^3 - 24*zeta)*q^345
+ (-24*zeta^3 + 72*zeta)*q^346 + (-4*zeta^2 - 2*zeta + 10)*q^349 + 24*zeta*q^350
+ (-32*zeta^2 - 16*zeta + 80)*q^351 + (48*zeta^3 - 144*zeta)*q^354 + (16*zeta^3 
- 48*zeta)*q^355 + (-16*zeta^2 + 8*zeta + 40)*q^359 + (6*zeta^2 - 3*zeta - 
15)*q^361 + (-32*zeta^3 + 96*zeta)*q^365 + (-40*zeta^3 + 120*zeta)*q^366 + 
(-4*zeta^2 - 2*zeta + 10)*q^369 + 16*zeta*q^370 + (-16*zeta^2 - 8*zeta + 
40)*q^371 + (8*zeta^3 - 24*zeta)*q^375 + (40*zeta^2 - 20*zeta - 100)*q^379 + 
(24*zeta^2 - 12*zeta - 60)*q^381 + (-32*zeta^3 + 96*zeta)*q^385 + (-32*zeta^3 + 
96*zeta)*q^386 + (60*zeta^2 + 30*zeta - 150)*q^389 + 64*zeta*q^390 + (24*zeta^3 
- 72*zeta)*q^394 + (-32*zeta^3 + 96*zeta)*q^395 + (-32*zeta^2 + 16*zeta + 
80)*q^399 + (28*zeta^2 - 14*zeta - 70)*q^401 + (-22*zeta^3 + 66*zeta)*q^405 + 
(8*zeta^3 - 24*zeta)*q^406 + (-28*zeta^2 - 14*zeta + 70)*q^409 - 16*zeta*q^410 +
(32*zeta^2 + 16*zeta - 80)*q^411 + (4*zeta^3 - 12*zeta)*q^414 + (-8*zeta^3 + 
24*zeta)*q^415 + (24*zeta^2 - 12*zeta - 60)*q^419 + (4*zeta^2 - 2*zeta - 
10)*q^421 + (32*zeta^3 - 96*zeta)*q^426 + (64*zeta^2 + 32*zeta - 160)*q^429 + 
24*zeta*q^430 + (32*zeta^2 + 16*zeta - 80)*q^431 + (16*zeta^3 - 48*zeta)*q^435 +
(-48*zeta^2 + 24*zeta + 120)*q^439 + (6*zeta^2 - 3*zeta - 15)*q^441 + 
(-12*zeta^3 + 36*zeta)*q^445 + (12*zeta^3 - 36*zeta)*q^446 + (-12*zeta^2 - 
6*zeta + 30)*q^449 - 16*zeta*q^450 + (-16*zeta^2 - 8*zeta + 40)*q^451 + 
(4*zeta^3 - 12*zeta)*q^454 + (16*zeta^3 - 48*zeta)*q^455 + (36*zeta^2 - 18*zeta 
- 90)*q^461 + (-48*zeta^3 + 144*zeta)*q^466 + (-56*zeta^2 - 28*zeta + 140)*q^469
- 24*zeta*q^470 + (-16*zeta^2 - 8*zeta + 40)*q^471 + (-64*zeta^3 + 
192*zeta)*q^474 + (24*zeta^3 - 72*zeta)*q^475 + (64*zeta^2 - 32*zeta - 
160)*q^479 + (-32*zeta^2 + 16*zeta + 80)*q^481 + (64*zeta^3 - 192*zeta)*q^485 + 
(-20*zeta^3 + 60*zeta)*q^486 + (-8*zeta^2 - 4*zeta + 20)*q^489 - 24*zeta*q^490 +
(-8*zeta^2 - 4*zeta + 20)*q^491 + (32*zeta^3 - 96*zeta)*q^494 + (8*zeta^3 - 
24*zeta)*q^495 + (-8*zeta^2 + 4*zeta + 20)*q^499 + (-72*zeta^2 + 36*zeta + 
180)*q^501 + (12*zeta^3 - 36*zeta)*q^505 + (16*zeta^3 - 48*zeta)*q^506 + 
(-68*zeta^2 - 34*zeta + 170)*q^509 + (32*zeta^2 + 16*zeta - 80)*q^511 + 
(-56*zeta^3 + 168*zeta)*q^515 + (-48*zeta^2 + 24*zeta + 120)*q^519 + (-20*zeta^2
+ 10*zeta + 50)*q^521 + (24*zeta^3 - 72*zeta)*q^525 + (60*zeta^3 - 
180*zeta)*q^526 + (38*zeta^2 + 19*zeta - 95)*q^529 + 16*zeta*q^530 + (-24*zeta^2
- 12*zeta + 60)*q^531 + (-24*zeta^3 + 72*zeta)*q^534 + (-40*zeta^3 + 
120*zeta)*q^535 + (24*zeta^2 - 12*zeta - 60)*q^539 + (4*zeta^2 - 2*zeta - 
10)*q^541 + (12*zeta^3 - 36*zeta)*q^545 + (32*zeta^3 - 96*zeta)*q^546 + 
(20*zeta^2 + 10*zeta - 50)*q^549 - 64*zeta*q^550 + (-16*zeta^2 - 8*zeta + 
40)*q^551 + (24*zeta^3 - 72*zeta)*q^554 + (16*zeta^3 - 48*zeta)*q^555 + 
(-48*zeta^2 + 24*zeta + 120)*q^559 + (-64*zeta^3 + 192*zeta)*q^565 + (-12*zeta^3
+ 36*zeta)*q^566 + (36*zeta^2 + 18*zeta - 90)*q^569 - 32*zeta*q^570 + 
(-40*zeta^2 - 20*zeta + 100)*q^571 + (-8*zeta^3 + 24*zeta)*q^574 + (-16*zeta^3 +
48*zeta)*q^575 + (-64*zeta^2 + 32*zeta + 160)*q^579 + O(q^580), zeta*q^2 + 
(zeta^3 + 2*zeta^2 - 3*zeta - 5)*q^3 - 2*zeta*q^5 + (-zeta^3 + 2*zeta^2 + 3*zeta
- 5)*q^7 + (2*zeta^3 - 6*zeta)*q^10 + (2*zeta^3 - 4*zeta^2 - 6*zeta + 10)*q^13 -
2*zeta*q^15 - zeta*q^18 - 4*zeta*q^22 + (-zeta^3 - 2*zeta^2 + 3*zeta + 5)*q^23 +
4*zeta*q^25 + (2*zeta^3 - 4*zeta^2 - 6*zeta + 10)*q^27 + (-8*zeta^3 + 
24*zeta)*q^30 + (-4*zeta^3 + 8*zeta^2 + 12*zeta - 20)*q^33 + 2*zeta*q^35 + 
(-2*zeta^3 - 4*zeta^2 + 6*zeta + 10)*q^37 + 4*zeta*q^38 + 4*zeta*q^42 + 
(-3*zeta^3 - 6*zeta^2 + 9*zeta + 15)*q^43 + 2*zeta*q^45 + (3*zeta^3 - 6*zeta^2 -
9*zeta + 15)*q^47 + (6*zeta^3 - 18*zeta)*q^50 + (-2*zeta^3 + 4*zeta^2 + 6*zeta -
10)*q^53 + 8*zeta*q^55 + (4*zeta^3 + 8*zeta^2 - 12*zeta - 20)*q^57 - 2*zeta*q^58
+ (zeta^3 + 2*zeta^2 - 3*zeta - 5)*q^63 - 4*zeta*q^65 + (-7*zeta^3 + 14*zeta^2 +
21*zeta - 35)*q^67 + (8*zeta^3 - 24*zeta)*q^70 + (4*zeta^3 - 8*zeta^2 - 12*zeta 
+ 20)*q^73 - 6*zeta*q^75 + (4*zeta^3 + 8*zeta^2 - 12*zeta - 20)*q^77 - 
8*zeta*q^78 + 2*zeta*q^82 + (zeta^3 + 2*zeta^2 - 3*zeta - 5)*q^83 + (-2*zeta^3 +
4*zeta^2 + 6*zeta - 10)*q^87 + (-2*zeta^3 + 6*zeta)*q^90 - 8*zeta*q^95 + 
(-8*zeta^3 - 16*zeta^2 + 24*zeta + 40)*q^97 + 3*zeta*q^98 + (7*zeta^3 + 
14*zeta^2 - 21*zeta - 35)*q^103 - 8*zeta*q^105 + (5*zeta^3 - 10*zeta^2 - 15*zeta
+ 25)*q^107 + (-8*zeta^3 + 24*zeta)*q^110 + (8*zeta^3 - 16*zeta^2 - 24*zeta + 
40)*q^113 + 2*zeta*q^115 + (-2*zeta^3 - 4*zeta^2 + 6*zeta + 10)*q^117 + 
12*zeta*q^118 - 10*zeta*q^122 + (2*zeta^3 + 4*zeta^2 - 6*zeta - 10)*q^123 + 
2*zeta*q^125 + (3*zeta^3 - 6*zeta^2 - 9*zeta + 15)*q^127 + (-16*zeta^3 + 
48*zeta)*q^130 + (-4*zeta^3 + 8*zeta^2 + 12*zeta - 20)*q^133 - 4*zeta*q^135 + 
(-4*zeta^3 - 8*zeta^2 + 12*zeta + 20)*q^137 + 4*zeta*q^138 + 8*zeta*q^142 + 
(-8*zeta^3 - 16*zeta^2 + 24*zeta + 40)*q^143 + 4*zeta*q^145 + (3*zeta^3 - 
6*zeta^2 - 9*zeta + 15)*q^147 + (16*zeta^3 - 48*zeta)*q^150 + (2*zeta^3 + 
4*zeta^2 - 6*zeta - 10)*q^157 - 16*zeta*q^158 - 11*zeta*q^162 + (zeta^3 + 
2*zeta^2 - 3*zeta - 5)*q^163 + 8*zeta*q^165 + (-9*zeta^3 + 18*zeta^2 + 27*zeta -
45)*q^167 + (-6*zeta^3 + 12*zeta^2 + 18*zeta - 30)*q^173 + 6*zeta*q^175 + 
(12*zeta^3 + 24*zeta^2 - 36*zeta - 60)*q^177 - 6*zeta*q^178 + 8*zeta*q^182 + 
(-10*zeta^3 - 20*zeta^2 + 30*zeta + 50)*q^183 + 4*zeta*q^185 + (8*zeta^3 - 
24*zeta)*q^190 + (-8*zeta^3 + 16*zeta^2 + 24*zeta - 40)*q^193 + 16*zeta*q^195 + 
(6*zeta^3 + 12*zeta^2 - 18*zeta - 30)*q^197 + 4*zeta*q^198 + 6*zeta*q^202 + 
(2*zeta^3 + 4*zeta^2 - 6*zeta - 10)*q^203 - 4*zeta*q^205 + (zeta^3 - 2*zeta^2 - 
3*zeta + 5)*q^207 + (8*zeta^3 - 24*zeta)*q^210 + (8*zeta^3 - 16*zeta^2 - 24*zeta
+ 40)*q^213 + 6*zeta*q^215 + 6*zeta*q^218 + 8*zeta*q^222 + (3*zeta^3 + 6*zeta^2 
- 9*zeta - 15)*q^223 - 4*zeta*q^225 + (zeta^3 - 2*zeta^2 - 3*zeta + 5)*q^227 + 
(8*zeta^3 - 24*zeta)*q^230 + (-12*zeta^3 + 24*zeta^2 + 36*zeta - 60)*q^233 - 
6*zeta*q^235 + (-16*zeta^3 - 32*zeta^2 + 48*zeta + 80)*q^237 + 5*zeta*q^242 + 
(-5*zeta^3 - 10*zeta^2 + 15*zeta + 25)*q^243 - 6*zeta*q^245 + (8*zeta^3 - 
16*zeta^2 - 24*zeta + 40)*q^247 + (-22*zeta^3 + 66*zeta)*q^250 + (4*zeta^3 - 
8*zeta^2 - 12*zeta + 20)*q^253 + 12*zeta*q^258 - 12*zeta*q^262 + (15*zeta^3 + 
30*zeta^2 - 45*zeta - 75)*q^263 + 4*zeta*q^265 + (-6*zeta^3 + 12*zeta^2 + 
18*zeta - 30)*q^267 + (-16*zeta^3 + 48*zeta)*q^270 + (8*zeta^3 - 16*zeta^2 - 
24*zeta + 40)*q^273 - 16*zeta*q^275 + (6*zeta^3 + 12*zeta^2 - 18*zeta - 
30)*q^277 - 4*zeta*q^278 - 12*zeta*q^282 + (-3*zeta^3 - 6*zeta^2 + 9*zeta + 
15)*q^283 - 8*zeta*q^285 + (-2*zeta^3 + 4*zeta^2 + 6*zeta - 10)*q^287 + 
(-4*zeta^3 + 12*zeta)*q^290 + (14*zeta^3 - 28*zeta^2 - 42*zeta + 70)*q^293 - 
24*zeta*q^295 + (-8*zeta^3 - 16*zeta^2 + 24*zeta + 40)*q^297 - 18*zeta*q^298 - 
8*zeta*q^302 + (6*zeta^3 + 12*zeta^2 - 18*zeta - 30)*q^303 + 20*zeta*q^305 + 
(zeta^3 - 2*zeta^2 - 3*zeta + 5)*q^307 + (4*zeta^3 - 8*zeta^2 - 12*zeta + 
20)*q^313 - 2*zeta*q^315 + (-6*zeta^3 - 12*zeta^2 + 18*zeta + 30)*q^317 + 
8*zeta*q^318 - 4*zeta*q^322 - 12*zeta*q^325 + (6*zeta^3 - 12*zeta^2 - 18*zeta + 
30)*q^327 + (32*zeta^3 - 96*zeta)*q^330 + (2*zeta^3 - 4*zeta^2 - 6*zeta + 
10)*q^333 + 14*zeta*q^335 + (8*zeta^3 + 16*zeta^2 - 24*zeta - 40)*q^337 - 
3*zeta*q^338 - 4*zeta*q^342 + (-10*zeta^3 - 20*zeta^2 + 30*zeta + 50)*q^343 - 
8*zeta*q^345 + (-11*zeta^3 + 22*zeta^2 + 33*zeta - 55)*q^347 + (-16*zeta^3 + 
48*zeta)*q^350 - 16*zeta*q^355 + 4*zeta*q^358 + 22*zeta*q^362 + (5*zeta^3 + 
10*zeta^2 - 15*zeta - 25)*q^363 - 8*zeta*q^365 + (-5*zeta^3 + 10*zeta^2 + 
15*zeta - 25)*q^367 + (16*zeta^3 - 48*zeta)*q^370 + (-10*zeta^3 + 20*zeta^2 + 
30*zeta - 50)*q^373 + 22*zeta*q^375 + (-4*zeta^3 - 8*zeta^2 + 12*zeta + 
20)*q^377 + 8*zeta*q^378 + (3*zeta^3 + 6*zeta^2 - 9*zeta - 15)*q^383 - 
8*zeta*q^385 + (3*zeta^3 - 6*zeta^2 - 9*zeta + 15)*q^387 + (-16*zeta^3 + 
48*zeta)*q^390 + (-12*zeta^3 + 24*zeta^2 + 36*zeta - 60)*q^393 + 32*zeta*q^395 +
(18*zeta^3 + 36*zeta^2 - 54*zeta - 90)*q^397 + 8*zeta*q^398 + 28*zeta*q^402 + 
22*zeta*q^405 + (8*zeta^3 - 16*zeta^2 - 24*zeta + 40)*q^407 + (4*zeta^3 - 
12*zeta)*q^410 + (-12*zeta^3 + 24*zeta^2 + 36*zeta - 60)*q^413 - 2*zeta*q^415 + 
(-4*zeta^3 - 8*zeta^2 + 12*zeta + 20)*q^417 - 16*zeta*q^418 + 4*zeta*q^422 + 
(-3*zeta^3 - 6*zeta^2 + 9*zeta + 15)*q^423 + (10*zeta^3 - 20*zeta^2 - 30*zeta + 
50)*q^427 + (24*zeta^3 - 72*zeta)*q^430 + 4*zeta*q^435 + (-4*zeta^3 - 8*zeta^2 +
12*zeta + 20)*q^437 - 16*zeta*q^438 + (-3*zeta^3 - 6*zeta^2 + 9*zeta + 15)*q^443
+ 12*zeta*q^445 + (-18*zeta^3 + 36*zeta^2 + 54*zeta - 90)*q^447 + (-6*zeta^3 + 
18*zeta)*q^450 + (-8*zeta^3 + 16*zeta^2 + 24*zeta - 40)*q^453 - 16*zeta*q^455 + 
(12*zeta^3 + 24*zeta^2 - 36*zeta - 60)*q^457 + 6*zeta*q^458 - 16*zeta*q^462 + 
(-13*zeta^3 - 26*zeta^2 + 39*zeta + 65)*q^463 + (9*zeta^3 - 18*zeta^2 - 27*zeta 
+ 45)*q^467 + (-24*zeta^3 + 72*zeta)*q^470 + (12*zeta^3 - 24*zeta^2 - 36*zeta + 
60)*q^473 + 16*zeta*q^475 + (2*zeta^3 + 4*zeta^2 - 6*zeta - 10)*q^477 + 
16*zeta*q^478 - 22*zeta*q^482 + (-4*zeta^3 - 8*zeta^2 + 12*zeta + 20)*q^483 + 
16*zeta*q^485 + (-zeta^3 + 2*zeta^2 + 3*zeta - 5)*q^487 + (6*zeta^3 - 
18*zeta)*q^490 - 8*zeta*q^495 + (-8*zeta^3 - 16*zeta^2 + 24*zeta + 40)*q^497 - 
4*zeta*q^498 - 20*zeta*q^502 + (-17*zeta^3 - 34*zeta^2 + 51*zeta + 85)*q^503 - 
12*zeta*q^505 + (-3*zeta^3 + 6*zeta^2 + 9*zeta - 15)*q^507 + (8*zeta^3 - 
16*zeta^2 - 24*zeta + 40)*q^513 - 14*zeta*q^515 + (-12*zeta^3 - 24*zeta^2 + 
36*zeta + 60)*q^517 - 8*zeta*q^518 + 2*zeta*q^522 + (5*zeta^3 + 10*zeta^2 - 
15*zeta - 25)*q^523 + 16*zeta*q^525 + (16*zeta^3 - 48*zeta)*q^530 + (4*zeta^3 - 
8*zeta^2 - 12*zeta + 20)*q^533 - 10*zeta*q^535 + (4*zeta^3 + 8*zeta^2 - 12*zeta 
- 20)*q^537 + 6*zeta*q^538 - 16*zeta*q^542 + (22*zeta^3 + 44*zeta^2 - 66*zeta - 
110)*q^543 - 12*zeta*q^545 + (17*zeta^3 - 34*zeta^2 - 51*zeta + 85)*q^547 + 
(-24*zeta^3 + 72*zeta)*q^550 + (16*zeta^3 - 32*zeta^2 - 48*zeta + 80)*q^553 - 
16*zeta*q^555 + (-6*zeta^3 - 12*zeta^2 + 18*zeta + 30)*q^557 + 18*zeta*q^562 + 
(9*zeta^3 + 18*zeta^2 - 27*zeta - 45)*q^563 - 16*zeta*q^565 + (11*zeta^3 - 
22*zeta^2 - 33*zeta + 55)*q^567 + (-32*zeta^3 + 96*zeta)*q^570 + 6*zeta*q^575 + 
(-16*zeta^3 - 32*zeta^2 + 48*zeta + 80)*q^577 + 17*zeta*q^578 + O(q^580), 
(-3*zeta^3 + 10*zeta + 5)*q + (-zeta^3 - 5)*q^3 - 2*zeta^3*q^4 + (2*zeta^3 - 
10)*q^7 + (-18*zeta^3 + 60*zeta)*q^8 + (-6*zeta^3 + 20*zeta - 10)*q^9 + 
(9*zeta^3 - 30*zeta + 15)*q^11 + (6*zeta^3 - 20*zeta)*q^12 + (4*zeta^3 - 
20)*q^13 - 6*zeta^3*q^16 + (-3*zeta^3 - 15)*q^17 + (15*zeta^3 - 50*zeta - 
25)*q^19 + (-6*zeta^3 + 20*zeta + 10)*q^21 + (-6*zeta^3 - 30)*q^23 - 
6*zeta^3*q^24 + (-5*zeta^3 + 25)*q^27 + (-12*zeta^3 + 40*zeta)*q^28 + (-6*zeta^3
+ 20*zeta - 10)*q^31 + (18*zeta^3 - 60*zeta)*q^32 + (3*zeta^3 - 15)*q^33 - 
4*zeta^3*q^36 + (2*zeta^3 + 10)*q^37 + (-12*zeta^3 + 40*zeta + 20)*q^39 + 
(9*zeta^3 - 30*zeta - 15)*q^41 + (4*zeta^3 + 20)*q^43 + 6*zeta^3*q^44 + 
(12*zeta^3 - 60)*q^47 + (18*zeta^3 - 60*zeta)*q^48 + (-9*zeta^3 + 30*zeta - 
15)*q^49 + (9*zeta^3 - 30*zeta + 15)*q^51 + (-24*zeta^3 + 80*zeta)*q^52 + 
(-6*zeta^3 + 30)*q^53 + 12*zeta^3*q^56 + (5*zeta^3 + 25)*q^57 + (-6*zeta^3 + 
20*zeta + 10)*q^61 + (4*zeta^3 + 20)*q^63 + 6*zeta^3*q^64 + (-13*zeta^3 + 
65)*q^67 + (18*zeta^3 - 60*zeta)*q^68 + (18*zeta^3 - 60*zeta + 30)*q^69 + 
(-36*zeta^3 + 120*zeta - 60)*q^71 + (-36*zeta^3 + 120*zeta)*q^72 + (-11*zeta^3 +
55)*q^73 + 10*zeta^3*q^76 + (-6*zeta^3 - 30)*q^77 + (-30*zeta^3 + 100*zeta + 
50)*q^79 + (-3*zeta^3 + 10*zeta + 5)*q^81 + (9*zeta^3 + 45)*q^83 - 4*zeta^3*q^84
+ (54*zeta^3 - 180*zeta)*q^88 + (45*zeta^3 - 150*zeta + 75)*q^89 + (24*zeta^3 - 
80*zeta + 40)*q^91 + (36*zeta^3 - 120*zeta)*q^92 + (-2*zeta^3 + 10)*q^93 + 
6*zeta^3*q^96 + (2*zeta^3 + 10)*q^97 + (18*zeta^3 - 60*zeta - 30)*q^99 + 
(54*zeta^3 - 180*zeta - 90)*q^101 + (4*zeta^3 + 20)*q^103 + 24*zeta^3*q^104 + 
(-3*zeta^3 + 15)*q^107 + (30*zeta^3 - 100*zeta)*q^108 + (-30*zeta^3 + 100*zeta -
50)*q^109 + (-6*zeta^3 + 20*zeta - 10)*q^111 + (-36*zeta^3 + 120*zeta)*q^112 + 
(9*zeta^3 - 45)*q^113 + (8*zeta^3 + 40)*q^117 + (-18*zeta^3 + 60*zeta + 
30)*q^119 + (6*zeta^3 - 20*zeta - 10)*q^121 + (3*zeta^3 + 15)*q^123 - 
4*zeta^3*q^124 + (2*zeta^3 - 10)*q^127 + (-18*zeta^3 + 60*zeta)*q^128 + 
(-12*zeta^3 + 40*zeta - 20)*q^129 + (-36*zeta^3 + 120*zeta - 60)*q^131 + 
(-18*zeta^3 + 60*zeta)*q^132 + (-10*zeta^3 + 50)*q^133 - 18*zeta^3*q^136 + 
(-3*zeta^3 - 15)*q^137 + (15*zeta^3 - 50*zeta - 25)*q^139 + (-36*zeta^3 + 
120*zeta + 60)*q^141 + (-12*zeta^3 - 60)*q^143 - 12*zeta^3*q^144 + (-3*zeta^3 + 
15)*q^147 + (-12*zeta^3 + 40*zeta)*q^148 + (-6*zeta^3 + 20*zeta - 10)*q^151 + 
(90*zeta^3 - 300*zeta)*q^152 + (-6*zeta^3 + 30)*q^153 - 8*zeta^3*q^156 + 
(2*zeta^3 + 10)*q^157 + (18*zeta^3 - 60*zeta - 30)*q^159 + (-36*zeta^3 + 
120*zeta + 60)*q^161 + (-11*zeta^3 - 55)*q^163 + 6*zeta^3*q^164 + (12*zeta^3 - 
60)*q^167 + (-36*zeta^3 + 120*zeta)*q^168 + (9*zeta^3 - 30*zeta + 15)*q^169 + 
(30*zeta^3 - 100*zeta + 50)*q^171 + (-24*zeta^3 + 80*zeta)*q^172 + (24*zeta^3 - 
120)*q^173 + 18*zeta^3*q^176 + (-45*zeta^3 + 150*zeta + 75)*q^179 + (-6*zeta^3 +
20*zeta + 10)*q^181 + (-2*zeta^3 - 10)*q^183 - 36*zeta^3*q^184 + (9*zeta^3 - 
45)*q^187 + (-72*zeta^3 + 240*zeta)*q^188 + (-30*zeta^3 + 100*zeta - 50)*q^189 +
(54*zeta^3 - 180*zeta + 90)*q^191 + (-18*zeta^3 + 60*zeta)*q^192 + (19*zeta^3 - 
95)*q^193 - 6*zeta^3*q^196 + (-18*zeta^3 - 90)*q^197 + (60*zeta^3 - 200*zeta - 
100)*q^199 + (39*zeta^3 - 130*zeta - 65)*q^201 + 6*zeta^3*q^204 + (-12*zeta^3 + 
60)*q^207 + (-72*zeta^3 + 240*zeta)*q^208 + (-45*zeta^3 + 150*zeta - 75)*q^209 +
(39*zeta^3 - 130*zeta + 65)*q^211 + (36*zeta^3 - 120*zeta)*q^212 + (-12*zeta^3 +
60)*q^213 - 30*zeta^3*q^216 + (4*zeta^3 + 20)*q^217 + (33*zeta^3 - 110*zeta - 
55)*q^219 + (-36*zeta^3 + 120*zeta + 60)*q^221 + (4*zeta^3 + 20)*q^223 - 
12*zeta^3*q^224 + (12*zeta^3 - 60)*q^227 + (-30*zeta^3 + 100*zeta)*q^228 + 
(60*zeta^3 - 200*zeta + 100)*q^229 + (18*zeta^3 - 60*zeta + 30)*q^231 + 
(-6*zeta^3 + 30)*q^233 + (-10*zeta^3 - 50)*q^237 + (-51*zeta^3 + 170*zeta + 
85)*q^241 + (-16*zeta^3 - 80)*q^243 - 4*zeta^3*q^244 + (-20*zeta^3 + 100)*q^247 
+ (-36*zeta^3 + 120*zeta)*q^248 + (-27*zeta^3 + 90*zeta - 45)*q^249 + 
(-81*zeta^3 + 270*zeta - 135)*q^251 + (-24*zeta^3 + 80*zeta)*q^252 + (18*zeta^3 
- 90)*q^253 - 6*zeta^3*q^256 + (-18*zeta^3 - 90)*q^257 + (12*zeta^3 - 40*zeta - 
20)*q^259 + (-6*zeta^3 - 30)*q^263 + 18*zeta^3*q^264 + (15*zeta^3 - 75)*q^267 + 
(78*zeta^3 - 260*zeta)*q^268 + (-6*zeta^3 + 20*zeta - 10)*q^271 + (54*zeta^3 - 
180*zeta)*q^272 + (8*zeta^3 - 40)*q^273 + 12*zeta^3*q^276 + (32*zeta^3 + 
160)*q^277 + (-12*zeta^3 + 40*zeta + 20)*q^279 + (54*zeta^3 - 180*zeta - 
90)*q^281 + (-11*zeta^3 - 55)*q^283 - 24*zeta^3*q^284 + (-6*zeta^3 + 30)*q^287 +
(36*zeta^3 - 120*zeta)*q^288 + (-24*zeta^3 + 80*zeta - 40)*q^289 + (-6*zeta^3 + 
20*zeta - 10)*q^291 + (66*zeta^3 - 220*zeta)*q^292 + (-6*zeta^3 + 30)*q^293 + 
12*zeta^3*q^296 + (15*zeta^3 + 75)*q^297 + (-72*zeta^3 + 240*zeta + 120)*q^299 +
(24*zeta^3 - 80*zeta - 40)*q^301 + (18*zeta^3 + 90)*q^303 + 30*zeta^3*q^304 + 
(17*zeta^3 - 85)*q^307 + (36*zeta^3 - 120*zeta)*q^308 + (-12*zeta^3 + 40*zeta - 
20)*q^309 + (54*zeta^3 - 180*zeta + 90)*q^311 + (-72*zeta^3 + 240*zeta)*q^312 + 
(-26*zeta^3 + 130)*q^313 - 20*zeta^3*q^316 + (12*zeta^3 + 60)*q^317 + (9*zeta^3 
- 30*zeta - 15)*q^321 + (15*zeta^3 + 75)*q^323 - 2*zeta^3*q^324 + (-10*zeta^3 + 
50)*q^327 + (54*zeta^3 - 180*zeta)*q^328 + (72*zeta^3 - 240*zeta + 120)*q^329 + 
(-51*zeta^3 + 170*zeta - 85)*q^331 + (-54*zeta^3 + 180*zeta)*q^332 + (4*zeta^3 -
20)*q^333 - 12*zeta^3*q^336 + (-13*zeta^3 - 65)*q^337 + (-27*zeta^3 + 90*zeta + 
45)*q^339 + (18*zeta^3 - 60*zeta - 30)*q^341 + (20*zeta^3 + 100)*q^343 + 
24*zeta^3*q^344 + (-3*zeta^3 + 15)*q^347 + (-30*zeta^3 + 100*zeta - 50)*q^349 + 
(-60*zeta^3 + 200*zeta - 100)*q^351 + (-54*zeta^3 + 180*zeta)*q^352 + (-6*zeta^3
+ 30)*q^353 + 30*zeta^3*q^356 + (-6*zeta^3 - 30)*q^357 + (90*zeta^3 - 300*zeta -
150)*q^359 + (-18*zeta^3 + 60*zeta + 30)*q^361 + (2*zeta^3 + 10)*q^363 + 
16*zeta^3*q^364 + (-28*zeta^3 + 140)*q^367 + (108*zeta^3 - 360*zeta)*q^368 + 
(18*zeta^3 - 60*zeta + 30)*q^369 + (-36*zeta^3 + 120*zeta - 60)*q^371 + 
(12*zeta^3 - 40*zeta)*q^372 + (-26*zeta^3 + 130)*q^373 + 72*zeta^3*q^376 + 
(-75*zeta^3 + 250*zeta + 125)*q^379 + (-6*zeta^3 + 20*zeta + 10)*q^381 + 
(-6*zeta^3 - 30)*q^383 - 6*zeta^3*q^384 + (8*zeta^3 - 40)*q^387 + (-12*zeta^3 + 
40*zeta)*q^388 + (90*zeta^3 - 300*zeta + 150)*q^389 + (54*zeta^3 - 180*zeta + 
90)*q^391 + (-54*zeta^3 + 180*zeta)*q^392 + (-12*zeta^3 + 60)*q^393 + 
12*zeta^3*q^396 + (-28*zeta^3 - 140)*q^397 + (30*zeta^3 - 100*zeta - 50)*q^399 +
(9*zeta^3 - 30*zeta - 15)*q^401 + (8*zeta^3 + 40)*q^403 + 36*zeta^3*q^404 + 
(-6*zeta^3 + 30)*q^407 + (54*zeta^3 - 180*zeta)*q^408 + (15*zeta^3 - 50*zeta + 
25)*q^409 + (9*zeta^3 - 30*zeta + 15)*q^411 + (-24*zeta^3 + 80*zeta)*q^412 - 
24*zeta^3*q^416 + (5*zeta^3 + 25)*q^417 + (-45*zeta^3 + 150*zeta + 75)*q^419 + 
(84*zeta^3 - 280*zeta - 140)*q^421 + (24*zeta^3 + 120)*q^423 - 36*zeta^3*q^424 +
(4*zeta^3 - 20)*q^427 + (18*zeta^3 - 60*zeta)*q^428 + (36*zeta^3 - 120*zeta + 
60)*q^429 + (54*zeta^3 - 180*zeta + 90)*q^431 + (90*zeta^3 - 300*zeta)*q^432 + 
(19*zeta^3 - 95)*q^433 - 20*zeta^3*q^436 + (30*zeta^3 + 150)*q^437 + 
(-120*zeta^3 + 400*zeta + 200)*q^439 + (-18*zeta^3 + 60*zeta + 30)*q^441 + 
(9*zeta^3 + 45)*q^443 - 4*zeta^3*q^444 + (36*zeta^3 - 120*zeta)*q^448 + 
(-45*zeta^3 + 150*zeta - 75)*q^449 + (-27*zeta^3 + 90*zeta - 45)*q^451 + 
(-54*zeta^3 + 180*zeta)*q^452 + (-2*zeta^3 + 10)*q^453 + 30*zeta^3*q^456 + 
(17*zeta^3 + 85)*q^457 + (45*zeta^3 - 150*zeta - 75)*q^459 + (-36*zeta^3 + 
120*zeta + 60)*q^461 + (4*zeta^3 + 20)*q^463 + (12*zeta^3 - 60)*q^467 + 
(-48*zeta^3 + 160*zeta)*q^468 + (-78*zeta^3 + 260*zeta - 130)*q^469 + (-6*zeta^3
+ 20*zeta - 10)*q^471 + (-12*zeta^3 + 60)*q^473 - 12*zeta^3*q^476 + (-12*zeta^3 
- 60)*q^477 + (90*zeta^3 - 300*zeta - 150)*q^479 + (24*zeta^3 - 80*zeta - 
40)*q^481 + (-12*zeta^3 - 60)*q^483 + 4*zeta^3*q^484 + (2*zeta^3 - 10)*q^487 + 
(-36*zeta^3 + 120*zeta)*q^488 + (33*zeta^3 - 110*zeta + 55)*q^489 + (-36*zeta^3 
+ 120*zeta - 60)*q^491 + (-18*zeta^3 + 60*zeta)*q^492 - 12*zeta^3*q^496 + 
(24*zeta^3 + 120)*q^497 + (60*zeta^3 - 200*zeta - 100)*q^499 + (-36*zeta^3 + 
120*zeta + 60)*q^501 + (-36*zeta^3 - 180)*q^503 + 24*zeta^3*q^504 + (3*zeta^3 - 
15)*q^507 + (-12*zeta^3 + 40*zeta)*q^508 + (-90*zeta^3 + 300*zeta - 150)*q^509 +
(-66*zeta^3 + 220*zeta - 110)*q^511 + (18*zeta^3 - 60*zeta)*q^512 + (25*zeta^3 -
125)*q^513 - 8*zeta^3*q^516 + (-36*zeta^3 - 180)*q^517 + (-72*zeta^3 + 240*zeta 
+ 120)*q^519 + (9*zeta^3 - 30*zeta - 15)*q^521 + (-41*zeta^3 - 205)*q^523 - 
24*zeta^3*q^524 + (-6*zeta^3 + 30)*q^527 + (-54*zeta^3 + 180*zeta)*q^528 + 
(39*zeta^3 - 130*zeta + 65)*q^529 + (60*zeta^3 - 200*zeta)*q^532 + (-12*zeta^3 +
60)*q^533 - 78*zeta^3*q^536 + (-15*zeta^3 - 75)*q^537 + (27*zeta^3 - 90*zeta - 
45)*q^539 + (-96*zeta^3 + 320*zeta + 160)*q^541 + (-2*zeta^3 - 10)*q^543 + 
18*zeta^3*q^544 + (17*zeta^3 - 85)*q^547 + (18*zeta^3 - 60*zeta)*q^548 + 
(-12*zeta^3 + 40*zeta - 20)*q^549 + (108*zeta^3 - 360*zeta)*q^552 + (20*zeta^3 -
100)*q^553 + 10*zeta^3*q^556 + (12*zeta^3 + 60)*q^557 + (48*zeta^3 - 160*zeta - 
80)*q^559 + (-27*zeta^3 + 90*zeta + 45)*q^561 + (24*zeta^3 + 120)*q^563 - 
24*zeta^3*q^564 + (2*zeta^3 - 10)*q^567 + (-216*zeta^3 + 720*zeta)*q^568 + 
(-45*zeta^3 + 150*zeta - 75)*q^569 + (84*zeta^3 - 280*zeta + 140)*q^571 + 
(72*zeta^3 - 240*zeta)*q^572 + (18*zeta^3 - 90)*q^573 + 12*zeta^3*q^576 + 
(-13*zeta^3 - 65)*q^577 + (-57*zeta^3 + 190*zeta + 95)*q^579 + O(q^580)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 5);
              X_20C6 := Curve(P_Q, [ PolynomialRing(RationalField(), 6) |
x[1]^2 + 29*x[2]^2 - 2*x[2]*x[3] - 32*x[2]*x[4] + 48*x[2]*x[5] + 22/5*x[3]^2 - 
78/5*x[3]*x[4] - 24/5*x[3]*x[5] + 4*x[3]*x[6] - 54/5*x[4]^2 + 12/5*x[4]*x[5] + 
44/5*x[4]*x[6] - 60*x[5]^2 - 48/5*x[5]*x[6] - 2*x[6]^2,
x[1]*x[2] + 13/3*x[2]^2 - 6*x[2]*x[4] + 6*x[2]*x[5] - 1/3*x[2]*x[6] + 3/5*x[3]^2
- 12/5*x[3]*x[4] - 6/5*x[3]*x[5] + 2/5*x[3]*x[6] - 6/5*x[4]^2 - 12/5*x[4]*x[5] +
9/5*x[4]*x[6] - 12*x[5]^2 - 6/5*x[5]*x[6] - 7/15*x[6]^2,
x[1]*x[3] + 17*x[2]^2 - x[2]*x[3] - 16*x[2]*x[4] + 24*x[2]*x[5] + 2*x[2]*x[6] + 
13/5*x[3]^2 - 48/5*x[3]*x[4] - 6*x[3]*x[5] + 2*x[3]*x[6] - 9*x[4]^2 + 
24/5*x[4]*x[5] + 22/5*x[4]*x[6] - 132/5*x[5]^2 - 24/5*x[5]*x[6] - 3/5*x[6]^2,
x[1]*x[4] - 2/3*x[2]^2 - x[2]*x[4] - 4*x[2]*x[5] - 1/3*x[2]*x[6] + 4/5*x[3]*x[4]
+ 6/5*x[3]*x[5] + 6/5*x[4]^2 + 6/5*x[4]*x[5] + 1/5*x[4]*x[6] - 12/5*x[5]^2 - 
2/5*x[5]*x[6] - 4/15*x[6]^2,
x[1]*x[5] - 4/3*x[2]^2 + 3*x[2]*x[4] - 3*x[2]*x[5] + 1/3*x[2]*x[6] - 3/10*x[3]^2
+ 6/5*x[3]*x[4] - 2/5*x[3]*x[5] + 3/5*x[4]^2 + 6/5*x[4]*x[5] - 3/5*x[4]*x[6] + 
6*x[5]^2 + 6/5*x[5]*x[6] + 1/6*x[6]^2,
x[1]*x[6] - 52/3*x[2]^2 + 2*x[2]*x[3] + 12*x[2]*x[4] - 18*x[2]*x[5] - 
5/3*x[2]*x[6] - 12/5*x[3]^2 + 48/5*x[3]*x[4] + 24/5*x[3]*x[5] - 2*x[3]*x[6] + 
24/5*x[4]^2 - 42/5*x[4]*x[5] - 24/5*x[4]*x[6] + 12*x[5]^2 + 18/5*x[5]*x[6] + 
2/3*x[6]^2,
x[1]^3 + 620710/2253*x[2]*x[4]*x[5] + 218515/4506*x[2]*x[4]*x[6] + 
505450/2253*x[2]*x[5]^2 + 219475/2253*x[2]*x[5]*x[6] + 16307/2253*x[2]*x[6]^2 + 
24647/15020*x[3]^3 - 66533/7510*x[3]^2*x[4] + 99569/7510*x[3]^2*x[5] - 
2848/751*x[3]^2*x[6] + 164639/3755*x[3]*x[4]^2 - 194439/3755*x[3]*x[4]*x[5] + 
10774/751*x[3]*x[4]*x[6] - 435914/3755*x[3]*x[5]^2 - 12311/751*x[3]*x[5]*x[6] - 
55689/15020*x[3]*x[6]^2 - 103853/3755*x[4]^3 - 383528/3755*x[4]^2*x[5] - 
32961/1502*x[4]^2*x[6] + 273204/3755*x[4]*x[5]^2 - 116960/2253*x[4]*x[5]*x[6] - 
242359/22530*x[4]*x[6]^2 + 1734896/3755*x[5]^3 + 294454/2253*x[5]^2*x[6] + 
1066027/22530*x[5]*x[6]^2 + 137753/22530*x[6]^3,
x[1]^2*x[2] + 217460/6759*x[2]*x[4]*x[5] + 38957/13518*x[2]*x[4]*x[6] + 
73610/6759*x[2]*x[5]^2 + 85445/6759*x[2]*x[5]*x[6] + 6580/6759*x[2]*x[6]^2 + 
23/45060*x[3]^3 - 12631/22530*x[3]^2*x[4] - 48287/22530*x[3]^2*x[5] - 
154/11265*x[3]^2*x[6] + 15953/2253*x[3]*x[4]^2 - 1639/751*x[3]*x[4]*x[5] + 
9256/11265*x[3]*x[4]*x[6] - 23294/2253*x[3]*x[5]^2 - 7057/2253*x[3]*x[5]*x[6] - 
6331/15020*x[3]*x[6]^2 - 15199/11265*x[4]^3 - 120724/11265*x[4]^2*x[5] - 
19993/7510*x[4]^2*x[6] - 42636/3755*x[4]*x[5]^2 - 237548/33795*x[4]*x[5]*x[6] - 
83099/67590*x[4]*x[6]^2 + 778408/11265*x[5]^3 + 551038/33795*x[5]^2*x[6] + 
354047/67590*x[5]*x[6]^2 + 8957/13518*x[6]^3,
x[1]^2*x[3] + 549680/6759*x[2]*x[4]*x[5] + 137380/6759*x[2]*x[4]*x[6] + 
578900/6759*x[2]*x[5]^2 + 169490/6759*x[2]*x[5]*x[6] + 15010/6759*x[2]*x[6]^2 + 
7718/11265*x[3]^3 - 6944/11265*x[3]^2*x[4] + 105482/11265*x[3]^2*x[5] - 
6583/11265*x[3]^2*x[6] + 140899/11265*x[3]*x[4]^2 - 58868/3755*x[3]*x[4]*x[5] + 
69886/11265*x[3]*x[4]*x[6] - 451384/11265*x[3]*x[5]^2 - 
27908/11265*x[3]*x[5]*x[6] - 5272/3755*x[3]*x[6]^2 - 103648/11265*x[4]^3 - 
253408/11265*x[4]^2*x[5] - 23336/3755*x[4]^2*x[6] + 163308/3755*x[4]*x[5]^2 - 
347126/33795*x[4]*x[5]*x[6] - 139192/33795*x[4]*x[6]^2 + 1270696/11265*x[5]^3 + 
1457164/33795*x[5]^2*x[6] + 476806/33795*x[5]*x[6]^2 + 14515/6759*x[6]^3,
x[1]^2*x[4] + 90070/6759*x[2]*x[4]*x[5] + 7177/13518*x[2]*x[4]*x[6] + 
92170/6759*x[2]*x[5]^2 + 26578/6759*x[2]*x[5]*x[6] + 1088/6759*x[2]*x[6]^2 + 
49/45060*x[3]^3 - 1651/11265*x[3]^2*x[4] - 2237/4506*x[3]^2*x[5] - 
524/11265*x[3]^2*x[6] + 28289/11265*x[3]*x[4]^2 - 8251/3755*x[3]*x[4]*x[5] + 
1828/2253*x[3]*x[4]*x[6] - 58292/11265*x[3]*x[5]^2 - 15223/11265*x[3]*x[5]*x[6] 
- 1733/15020*x[3]*x[6]^2 - 4169/11265*x[4]^3 - 60302/11265*x[4]^2*x[5] - 
8309/7510*x[4]^2*x[6] - 13308/751*x[4]*x[5]^2 - 54403/33795*x[4]*x[5]*x[6] - 
17549/33795*x[4]*x[6]^2 + 143156/11265*x[5]^3 + 161276/33795*x[5]^2*x[6] + 
107761/67590*x[5]*x[6]^2 + 15479/67590*x[6]^3,
x[1]^2*x[5] - 110215/6759*x[2]*x[4]*x[5] - 53701/13518*x[2]*x[4]*x[6] + 
24080/6759*x[2]*x[5]^2 - 36724/6759*x[2]*x[5]*x[6] - 8191/13518*x[2]*x[6]^2 - 
6667/45060*x[3]^3 + 8533/11265*x[3]^2*x[4] - 6637/4506*x[3]^2*x[5] + 
10033/22530*x[3]^2*x[6] - 5372/11265*x[3]*x[4]^2 + 14533/3755*x[3]*x[4]*x[5] - 
10289/11265*x[3]*x[4]*x[6] + 101876/11265*x[3]*x[5]^2 + 
21076/11265*x[3]*x[5]*x[6] - 541/15020*x[3]*x[6]^2 + 20312/11265*x[4]^3 + 
44306/11265*x[4]^2*x[5] + 1579/1502*x[4]^2*x[6] - 12480/751*x[4]*x[5]^2 + 
29863/33795*x[4]*x[5]*x[6] + 39349/67590*x[4]*x[6]^2 - 401048/11265*x[5]^3 - 
323714/33795*x[5]^2*x[6] - 199213/67590*x[5]*x[6]^2 - 2363/6759*x[6]^3,
x[1]^2*x[6] - 49060/751*x[2]*x[4]*x[5] - 12569/751*x[2]*x[4]*x[6] - 
83830/751*x[2]*x[5]^2 - 15612/751*x[2]*x[5]*x[6] - 2329/751*x[2]*x[6]^2 - 
1566/3755*x[3]^3 + 4794/3755*x[3]^2*x[4] - 17436/3755*x[3]^2*x[5] + 
4571/7510*x[3]^2*x[6] - 11952/751*x[3]*x[4]^2 + 65778/3755*x[3]*x[4]*x[5] - 
2868/751*x[3]*x[4]*x[6] + 95676/3755*x[3]*x[5]^2 + 23376/3755*x[3]*x[5]*x[6] + 
7986/3755*x[3]*x[6]^2 + 44832/3755*x[4]^3 + 117948/3755*x[4]^2*x[5] + 
36792/3755*x[4]^2*x[6] + 93618/3755*x[4]*x[5]^2 + 50122/3755*x[4]*x[5]*x[6] + 
13217/3755*x[4]*x[6]^2 - 40716/751*x[5]^3 - 138284/3755*x[5]^2*x[6] - 
9072/751*x[5]*x[6]^2 - 18103/7510*x[6]^3,
x[1]*x[2]^2 + 2864/751*x[2]*x[4]*x[5] + 12611/7510*x[2]*x[4]*x[6] + 
4238/751*x[2]*x[5]^2 + 16869/3755*x[2]*x[5]*x[6] - 258/751*x[2]*x[6]^2 + 
8817/75100*x[3]^3 - 5757/37550*x[3]^2*x[4] + 91227/37550*x[3]^2*x[5] - 
3984/18775*x[3]^2*x[6] - 17217/18775*x[3]*x[4]^2 - 73089/18775*x[3]*x[4]*x[5] + 
5376/18775*x[3]*x[4]*x[6] - 4386/751*x[3]*x[5]^2 + 1449/3755*x[3]*x[5]*x[6] - 
7327/75100*x[3]*x[6]^2 - 7533/3755*x[4]^3 - 67902/18775*x[4]^2*x[5] - 
21819/37550*x[4]^2*x[6] + 231432/18775*x[4]*x[5]^2 - 28666/18775*x[4]*x[5]*x[6] 
- 2471/37550*x[4]*x[6]^2 - 25488/18775*x[5]^3 - 23674/18775*x[5]^2*x[6] + 
17919/37550*x[5]*x[6]^2 + 4173/37550*x[6]^3,
x[1]*x[2]*x[3] + 75290/6759*x[2]*x[4]*x[5] + 32507/13518*x[2]*x[4]*x[6] + 
225020/6759*x[2]*x[5]^2 + 79544/6759*x[2]*x[5]*x[6] + 5929/6759*x[2]*x[6]^2 + 
1645/9012*x[3]^3 - 29624/11265*x[3]^2*x[4] + 30487/22530*x[3]^2*x[5] - 
21101/22530*x[3]^2*x[6] + 54868/11265*x[3]*x[4]^2 - 29327/3755*x[3]*x[4]*x[5] + 
2818/11265*x[3]*x[4]*x[6] - 179224/11265*x[3]*x[5]^2 - 
10043/11265*x[3]*x[5]*x[6] - 10237/15020*x[3]*x[6]^2 - 11344/11265*x[4]^3 - 
46934/2253*x[4]^2*x[5] - 4079/1502*x[4]^2*x[6] + 23046/3755*x[4]*x[5]^2 - 
194603/33795*x[4]*x[5]*x[6] - 7871/6759*x[4]*x[6]^2 + 249664/11265*x[5]^3 + 
297964/33795*x[5]^2*x[6] + 236969/67590*x[5]*x[6]^2 + 20231/33795*x[6]^3,
x[1]*x[2]*x[4] + 638/6759*x[2]*x[4]*x[5] - 18107/67590*x[2]*x[4]*x[6] + 
27914/6759*x[2]*x[5]^2 + 22912/33795*x[2]*x[5]*x[6] - 455/6759*x[2]*x[6]^2 + 
6787/225300*x[3]^3 - 10921/56325*x[3]^2*x[4] + 33197/112650*x[3]^2*x[5] - 
253/11265*x[3]^2*x[6] + 20993/56325*x[3]*x[4]^2 - 26923/18775*x[3]*x[4]*x[5] + 
2648/56325*x[3]*x[4]*x[6] - 23656/11265*x[3]*x[5]^2 - 3871/56325*x[3]*x[5]*x[6] 
- 3887/75100*x[3]*x[6]^2 + 1411/2253*x[4]^3 - 192812/56325*x[4]^2*x[5] + 
11023/37550*x[4]^2*x[6] - 26436/18775*x[4]*x[5]^2 + 9811/33795*x[4]*x[5]*x[6] - 
23546/168975*x[4]*x[6]^2 + 62492/56325*x[5]^3 - 12124/168975*x[5]^2*x[6] + 
72199/337950*x[5]*x[6]^2 + 31/67590*x[6]^3,
x[1]*x[2]*x[5] - 24239/6759*x[2]*x[4]*x[5] - 37609/67590*x[2]*x[4]*x[6] - 
13292/6759*x[2]*x[5]^2 - 54841/33795*x[2]*x[5]*x[6] - 1235/13518*x[2]*x[6]^2 - 
6721/225300*x[3]^3 + 13663/56325*x[3]^2*x[4] - 33641/112650*x[3]^2*x[5] + 
221/2253*x[3]^2*x[6] - 8684/56325*x[3]*x[4]^2 + 16729/18775*x[3]*x[4]*x[5] - 
3809/56325*x[3]*x[4]*x[6] + 16174/11265*x[3]*x[5]^2 + 7138/56325*x[3]*x[5]*x[6] 
+ 1001/75100*x[3]*x[6]^2 + 4264/11265*x[4]^3 + 109106/56325*x[4]^2*x[5] + 
9971/37550*x[4]^2*x[6] - 88662/18775*x[4]*x[5]^2 + 31178/33795*x[4]*x[5]*x[6] + 
31681/337950*x[4]*x[6]^2 - 450116/56325*x[5]^3 - 192188/168975*x[5]^2*x[6] - 
221137/337950*x[5]*x[6]^2 - 4303/67590*x[6]^3,
x[1]*x[2]*x[6] - 20540/2253*x[2]*x[4]*x[5] - 9670/2253*x[2]*x[4]*x[6] - 
36530/2253*x[2]*x[5]^2 - 10610/2253*x[2]*x[5]*x[6] - 946/2253*x[2]*x[6]^2 - 
1651/7510*x[3]^3 + 1274/3755*x[3]^2*x[4] - 12857/3755*x[3]^2*x[5] + 
1607/7510*x[3]^2*x[6] - 754/3755*x[3]*x[4]^2 + 12324/3755*x[3]*x[4]*x[5] - 
3292/3755*x[3]*x[4]*x[6] + 23764/3755*x[3]*x[5]^2 - 1984/3755*x[3]*x[5]*x[6] + 
1249/7510*x[3]*x[6]^2 + 9568/3755*x[4]^3 + 18148/3755*x[4]^2*x[5] + 
6921/3755*x[4]^2*x[6] - 53274/3755*x[4]*x[5]^2 - 10708/11265*x[4]*x[5]*x[6] + 
10384/11265*x[4]*x[6]^2 + 19604/3755*x[5]^3 - 52708/11265*x[5]^2*x[6] - 
10177/11265*x[5]*x[6]^2 - 11359/22530*x[6]^3,
x[1]*x[3]^2 + 272560/6759*x[2]*x[4]*x[5] + 26852/6759*x[2]*x[4]*x[6] + 
585700/6759*x[2]*x[5]^2 + 159838/6759*x[2]*x[5]*x[6] + 21971/6759*x[2]*x[6]^2 - 
539/11265*x[3]^3 - 42259/11265*x[3]^2*x[4] - 22882/2253*x[3]^2*x[5] - 
6233/11265*x[3]^2*x[6] + 44848/2253*x[3]*x[4]^2 - 24472/3755*x[3]*x[4]*x[5] - 
1126/11265*x[3]*x[4]*x[6] - 228872/11265*x[3]*x[5]^2 - 
78184/11265*x[3]*x[5]*x[6] - 3467/3755*x[3]*x[6]^2 + 12208/11265*x[4]^3 - 
464864/11265*x[4]^2*x[5] - 19972/3755*x[4]^2*x[6] - 289524/3755*x[4]*x[5]^2 - 
503626/33795*x[4]*x[5]*x[6] - 108767/33795*x[4]*x[6]^2 + 1361336/11265*x[5]^3 + 
269620/6759*x[5]^2*x[6] + 81892/6759*x[5]*x[6]^2 + 49231/33795*x[6]^3,
x[1]*x[3]*x[4] + 18185/6759*x[2]*x[4]*x[5] + 21905/13518*x[2]*x[4]*x[6] + 
31700/6759*x[2]*x[5]^2 + 17426/6759*x[2]*x[5]*x[6] + 293/13518*x[2]*x[6]^2 + 
2681/45060*x[3]^3 - 857/11265*x[3]^2*x[4] + 13711/22530*x[3]^2*x[5] - 
2303/22530*x[3]^2*x[6] + 967/11265*x[3]*x[4]^2 - 11147/3755*x[3]*x[4]*x[5] - 
1043/11265*x[3]*x[4]*x[6] - 7556/2253*x[3]*x[5]^2 - 7352/11265*x[3]*x[5]*x[6] - 
425/3004*x[3]*x[6]^2 - 34024/11265*x[4]^3 - 23197/11265*x[4]^2*x[5] - 
8527/7510*x[4]^2*x[6] - 2028/751*x[4]*x[5]^2 - 39353/33795*x[4]*x[5]*x[6] + 
5953/67590*x[4]*x[6]^2 - 11624/11265*x[5]^3 + 7094/6759*x[5]^2*x[6] + 
27323/67590*x[5]*x[6]^2 + 4886/33795*x[6]^3,
x[1]*x[3]*x[5] - 45695/6759*x[2]*x[4]*x[5] - 15595/6759*x[2]*x[4]*x[6] - 
19025/6759*x[2]*x[5]^2 - 9872/6759*x[2]*x[5]*x[6] - 2404/6759*x[2]*x[6]^2 - 
4109/45060*x[3]^3 + 5843/11265*x[3]^2*x[4] - 19261/22530*x[3]^2*x[5] + 
12583/45060*x[3]^2*x[6] - 3688/11265*x[3]*x[4]^2 + 7637/3755*x[3]*x[4]*x[5] - 
5584/11265*x[3]*x[4]*x[6] + 27514/11265*x[3]*x[5]^2 + 8762/11265*x[3]*x[5]*x[6] 
- 31/3004*x[3]*x[6]^2 + 12616/11265*x[4]^3 + 1987/11265*x[4]^2*x[5] + 
2549/3755*x[4]^2*x[6] - 22713/3755*x[4]*x[5]^2 - 2176/33795*x[4]*x[5]*x[6] + 
2333/6759*x[4]*x[6]^2 - 133918/11265*x[5]^3 - 160636/33795*x[5]^2*x[6] - 
79889/67590*x[5]*x[6]^2 - 5719/27036*x[6]^3,
x[1]*x[3]*x[6] - 28480/751*x[2]*x[4]*x[5] - 11089/1502*x[2]*x[4]*x[6] - 
48940/751*x[2]*x[5]^2 - 12446/751*x[2]*x[5]*x[6] + 300/751*x[2]*x[6]^2 - 
5037/15020*x[3]^3 + 3132/3755*x[3]^2*x[4] - 32271/7510*x[3]^2*x[5] + 
3617/7510*x[3]^2*x[6] - 6063/751*x[3]*x[4]^2 + 39999/3755*x[3]*x[4]*x[5] - 
10629/3755*x[3]*x[4]*x[6] + 61548/3755*x[3]*x[5]^2 - 75/751*x[3]*x[5]*x[6] + 
13947/15020*x[3]*x[6]^2 + 27936/3755*x[4]^3 + 69444/3755*x[4]^2*x[5] + 
22941/7510*x[4]^2*x[6] + 16074/3755*x[4]*x[5]^2 + 41719/3755*x[4]*x[5]*x[6] + 
4706/3755*x[4]*x[6]^2 - 18096/751*x[5]^3 - 39764/3755*x[5]^2*x[6] - 
8815/1502*x[5]*x[6]^2 - 621/751*x[6]^3,
x[1]*x[4]^2 - 18772/6759*x[2]*x[4]*x[5] + 1214/33795*x[2]*x[4]*x[6] + 
12644/6759*x[2]*x[5]^2 - 7673/33795*x[2]*x[5]*x[6] + 145/6759*x[2]*x[6]^2 - 
1562/56325*x[3]^3 + 10303/112650*x[3]^2*x[4] - 24044/56325*x[3]^2*x[5] + 
452/11265*x[3]^2*x[6] + 51368/56325*x[3]*x[4]^2 + 3752/18775*x[3]*x[4]*x[5] + 
12278/56325*x[3]*x[4]*x[6] + 854/11265*x[3]*x[5]^2 - 1366/56325*x[3]*x[5]*x[6] +
712/18775*x[3]*x[6]^2 + 12161/11265*x[4]^3 + 151318/56325*x[4]^2*x[5] + 
5114/18775*x[4]^2*x[6] - 38616/18775*x[4]*x[5]^2 + 1627/33795*x[4]*x[5]*x[6] - 
61867/337950*x[4]*x[6]^2 + 241532/56325*x[5]^3 + 123446/168975*x[5]^2*x[6] + 
42902/168975*x[5]*x[6]^2 - 562/33795*x[6]^3,
x[1]*x[4]*x[5] - 9269/6759*x[2]*x[4]*x[5] + 2893/33795*x[2]*x[4]*x[6] - 
18752/6759*x[2]*x[5]^2 - 4561/33795*x[2]*x[5]*x[6] + 95/6759*x[2]*x[6]^2 + 
517/112650*x[3]^3 - 2102/56325*x[3]^2*x[4] + 7787/56325*x[3]^2*x[5] - 
34/2253*x[3]^2*x[6] + 1336/56325*x[3]*x[4]^2 + 5514/18775*x[3]*x[4]*x[5] + 
586/56325*x[3]*x[4]*x[6] + 1790/2253*x[3]*x[5]^2 + 2368/56325*x[3]*x[5]*x[6] - 
77/37550*x[3]*x[6]^2 - 656/11265*x[4]^3 + 40406/56325*x[4]^2*x[5] - 
767/18775*x[4]^2*x[6] + 29238/18775*x[4]*x[5]^2 + 11321/33795*x[4]*x[5]*x[6] - 
2437/168975*x[4]*x[6]^2 - 169916/56325*x[5]^3 - 69218/168975*x[5]^2*x[6] - 
40181/168975*x[5]*x[6]^2 + 331/33795*x[6]^3,
x[1]*x[4]*x[6] + 3160/2253*x[2]*x[4]*x[5] - 2845/2253*x[2]*x[4]*x[6] + 
5620/2253*x[2]*x[5]^2 - 5300/2253*x[2]*x[5]*x[6] - 721/2253*x[2]*x[6]^2 + 
127/3755*x[3]^3 - 196/3755*x[3]^2*x[4] + 1978/3755*x[3]^2*x[5] + 
223/3755*x[3]^2*x[6] + 116/3755*x[3]*x[4]^2 - 1896/3755*x[3]*x[4]*x[5] + 
2124/3755*x[3]*x[4]*x[6] - 3656/3755*x[3]*x[5]^2 + 4118/3755*x[3]*x[5]*x[6] + 
27/751*x[3]*x[6]^2 - 1472/3755*x[4]^3 - 2792/3755*x[4]^2*x[5] + 
2748/3755*x[4]^2*x[6] + 8196/3755*x[4]*x[5]^2 + 11006/11265*x[4]*x[5]*x[6] + 
755/2253*x[4]*x[6]^2 - 3016/3755*x[5]^3 - 39724/11265*x[5]^2*x[6] - 
1004/2253*x[5]*x[6]^2 - 2939/11265*x[6]^3,
x[1]*x[5]^2 + 15257/6759*x[2]*x[4]*x[5] + 5786/33795*x[2]*x[4]*x[6] - 
3709/6759*x[2]*x[5]^2 + 24673/33795*x[2]*x[5]*x[6] + 190/6759*x[2]*x[6]^2 + 
517/56325*x[3]^3 - 4204/56325*x[3]^2*x[4] - 2647/112650*x[3]^2*x[5] - 
68/2253*x[3]^2*x[6] + 2672/56325*x[3]*x[4]^2 + 3518/18775*x[3]*x[4]*x[5] + 
1172/56325*x[3]*x[4]*x[6] - 13642/11265*x[3]*x[5]^2 + 4736/56325*x[3]*x[5]*x[6] 
- 77/18775*x[3]*x[6]^2 - 1312/11265*x[4]^3 - 20573/56325*x[4]^2*x[5] - 
1534/18775*x[4]^2*x[6] + 35946/18775*x[4]*x[5]^2 - 11153/33795*x[4]*x[5]*x[6] - 
4874/168975*x[4]*x[6]^2 + 268478/56325*x[5]^3 + 199514/168975*x[5]^2*x[6] + 
75841/337950*x[5]*x[6]^2 + 662/33795*x[6]^3,
x[1]*x[5]*x[6] + 6320/2253*x[2]*x[4]*x[5] + 5575/2253*x[2]*x[4]*x[6] + 
11240/2253*x[2]*x[5]^2 + 665/2253*x[2]*x[5]*x[6] + 811/2253*x[2]*x[6]^2 + 
254/3755*x[3]^3 - 392/3755*x[3]^2*x[4] + 3956/3755*x[3]^2*x[5] - 
1361/7510*x[3]^2*x[6] + 232/3755*x[3]*x[4]^2 - 3792/3755*x[3]*x[4]*x[5] + 
2746/3755*x[3]*x[4]*x[6] - 7312/3755*x[3]*x[5]^2 - 2278/3755*x[3]*x[5]*x[6] + 
54/751*x[3]*x[6]^2 - 2944/3755*x[4]^3 - 5584/3755*x[4]^2*x[5] - 
1263/3755*x[4]^2*x[6] + 16392/3755*x[4]*x[5]^2 + 8494/11265*x[4]*x[5]*x[6] - 
743/2253*x[4]*x[6]^2 - 6032/3755*x[5]^3 + 42214/11265*x[5]^2*x[6] + 
2498/2253*x[5]*x[6]^2 + 803/4506*x[6]^3,
x[1]*x[6]^2 + 91880/2253*x[2]*x[4]*x[5] + 3007/2253*x[2]*x[4]*x[6] + 
153140/2253*x[2]*x[5]^2 + 49466/2253*x[2]*x[5]*x[6] + 2707/2253*x[2]*x[6]^2 - 
1313/7510*x[3]^3 - 1364/3755*x[3]^2*x[4] - 17179/3755*x[3]^2*x[5] + 
1322/3755*x[3]^2*x[6] + 11546/751*x[3]*x[4]^2 - 32598/3755*x[3]*x[4]*x[5] + 
1442/751*x[3]*x[4]*x[6] - 31696/3755*x[3]*x[5]^2 - 16586/3755*x[3]*x[5]*x[6] - 
5677/7510*x[3]*x[6]^2 - 19072/3755*x[4]^3 - 69088/3755*x[4]^2*x[5] - 
28557/3755*x[4]^2*x[6] - 237048/3755*x[4]*x[5]^2 - 173996/11265*x[4]*x[5]*x[6] -
21226/11265*x[4]*x[6]^2 + 51272/751*x[5]^3 + 96172/11265*x[5]^2*x[6] + 
15497/2253*x[5]*x[6]^2 + 10997/11265*x[6]^3,
x[2]^3 + 6894/3755*x[2]*x[4]*x[5] - 19161/37550*x[2]*x[4]*x[6] + 
14742/3755*x[2]*x[5]^2 + 19701/18775*x[2]*x[5]*x[6] + 2019/3755*x[2]*x[6]^2 - 
52677/375500*x[3]^3 - 109593/187750*x[3]^2*x[4] - 631827/187750*x[3]^2*x[5] + 
189/18775*x[3]^2*x[6] + 263547/93875*x[3]*x[4]^2 + 39339/93875*x[3]*x[4]*x[5] - 
45738/93875*x[3]*x[4]*x[6] + 34182/18775*x[3]*x[5]^2 - 
123579/93875*x[3]*x[5]*x[6] - 2349/375500*x[3]*x[6]^2 + 783/751*x[4]^3 - 
335718/93875*x[4]^2*x[5] - 54999/187750*x[4]^2*x[6] - 1770012/93875*x[4]*x[5]^2 
- 5634/3755*x[4]*x[5]*x[6] - 39861/187750*x[4]*x[6]^2 + 1866888/93875*x[5]^3 + 
499338/93875*x[5]^2*x[6] + 231597/187750*x[5]*x[6]^2 + 2741/37550*x[6]^3,
x[2]^2*x[3] + 4192/2253*x[2]*x[4]*x[5] + 10618/11265*x[2]*x[4]*x[6] - 
36692/2253*x[2]*x[5]^2 - 63046/11265*x[2]*x[5]*x[6] + 344/2253*x[2]*x[6]^2 - 
1981/18775*x[3]^3 + 19804/18775*x[3]^2*x[4] - 52816/18775*x[3]^2*x[5] + 
11033/18775*x[3]^2*x[6] - 4027/3755*x[3]*x[4]^2 + 50508/18775*x[3]*x[4]*x[5] + 
2426/3755*x[3]*x[4]*x[6] + 155876/18775*x[3]*x[5]^2 - 6224/18775*x[3]*x[5]*x[6] 
+ 6989/18775*x[3]*x[6]^2 - 4288/18775*x[4]^3 + 232448/18775*x[4]^2*x[5] + 
14862/18775*x[4]^2*x[6] - 157932/18775*x[4]*x[5]^2 + 191926/56325*x[4]*x[5]*x[6]
+ 12662/56325*x[4]*x[6]^2 + 37112/3755*x[5]^3 + 168748/56325*x[5]^2*x[6] - 
13448/56325*x[5]*x[6]^2 - 1007/11265*x[6]^3,
x[2]^2*x[4] + 3580/2253*x[2]*x[4]*x[5] + 5813/22530*x[2]*x[4]*x[6] + 
1918/2253*x[2]*x[5]^2 - 2758/11265*x[2]*x[5]*x[6] + 53/2253*x[2]*x[6]^2 - 
1771/75100*x[3]^3 + 121/751*x[3]^2*x[4] - 12869/37550*x[3]^2*x[5] + 
593/18775*x[3]^2*x[6] - 4733/18775*x[3]*x[4]^2 - 12993/18775*x[3]*x[4]*x[5] + 
3742/18775*x[3]*x[4]*x[6] + 5756/18775*x[3]*x[5]^2 - 173/18775*x[3]*x[5]*x[6] + 
2517/75100*x[3]*x[6]^2 - 5743/18775*x[4]^3 + 896/751*x[4]^2*x[5] + 
1749/7510*x[4]^2*x[6] - 19224/18775*x[4]*x[5]^2 + 8101/56325*x[4]*x[5]*x[6] + 
1178/56325*x[4]*x[6]^2 + 55468/18775*x[5]^3 + 30112/56325*x[5]^2*x[6] + 
3541/22530*x[5]*x[6]^2 - 271/22530*x[6]^3,
x[2]^2*x[5] - 1255/2253*x[2]*x[4]*x[5] + 2893/22530*x[2]*x[4]*x[6] + 
4142/2253*x[2]*x[5]^2 + 3352/11265*x[2]*x[5]*x[6] + 95/4506*x[2]*x[6]^2 + 
517/75100*x[3]^3 - 1051/18775*x[3]^2*x[4] + 7787/37550*x[3]^2*x[5] - 
17/751*x[3]^2*x[6] + 668/18775*x[3]*x[4]^2 - 14259/18775*x[3]*x[4]*x[5] + 
293/18775*x[3]*x[4]*x[6] - 2284/3755*x[3]*x[5]^2 + 1184/18775*x[3]*x[5]*x[6] - 
231/75100*x[3]*x[6]^2 - 328/3755*x[4]^3 - 13592/18775*x[4]^2*x[5] - 
2301/37550*x[4]^2*x[6] + 10062/18775*x[4]*x[5]^2 + 2281/11265*x[4]*x[5]*x[6] - 
2437/112650*x[4]*x[6]^2 - 17368/18775*x[5]^3 - 814/56325*x[5]^2*x[6] + 
4879/112650*x[5]*x[6]^2 + 331/22530*x[6]^3,
x[2]^2*x[6] + 1580/751*x[2]*x[4]*x[5] - 296/751*x[2]*x[4]*x[6] + 
2810/751*x[2]*x[5]^2 + 1856/751*x[2]*x[5]*x[6] + 15/751*x[2]*x[6]^2 + 
381/7510*x[3]^3 - 294/3755*x[3]^2*x[4] + 2967/3755*x[3]^2*x[5] + 
669/7510*x[3]^2*x[6] + 174/3755*x[3]*x[4]^2 - 2844/3755*x[3]*x[4]*x[5] - 
264/751*x[3]*x[4]*x[6] - 5484/3755*x[3]*x[5]^2 - 582/3755*x[3]*x[5]*x[6] + 
81/1502*x[3]*x[6]^2 - 2208/3755*x[4]^3 - 4188/3755*x[4]^2*x[5] - 
2637/3755*x[4]^2*x[6] + 12294/3755*x[4]*x[5]^2 - 1256/3755*x[4]*x[5]*x[6] + 
761/3755*x[4]*x[6]^2 - 4524/3755*x[5]^3 - 6344/3755*x[5]^2*x[6] - 
257/3755*x[5]*x[6]^2 + 13/1502*x[6]^3,
x[2]*x[3]^2 + 85688/6759*x[2]*x[4]*x[5] + 244481/33795*x[2]*x[4]*x[6] - 
404068/6759*x[2]*x[5]^2 - 718472/33795*x[2]*x[5]*x[6] - 12695/6759*x[2]*x[6]^2 -
42763/112650*x[3]^3 + 411449/56325*x[3]^2*x[4] + 7601/11265*x[3]^2*x[5] + 
91294/56325*x[3]^2*x[6] - 673006/56325*x[3]*x[4]^2 + 20954/18775*x[3]*x[4]*x[5] 
+ 202724/56325*x[3]*x[4]*x[6] + 1247848/56325*x[3]*x[5]^2 + 
39022/11265*x[3]*x[5]*x[6] + 9979/7510*x[3]*x[6]^2 - 438224/56325*x[4]^3 + 
3114688/56325*x[4]^2*x[5] + 68819/18775*x[4]^2*x[6] + 75048/3755*x[4]*x[5]^2 + 
2134238/168975*x[4]*x[5]*x[6] + 302893/168975*x[4]*x[6]^2 - 1291864/56325*x[5]^3
- 1047448/168975*x[5]^2*x[6] - 633253/168975*x[5]*x[6]^2 - 18619/33795*x[6]^3,
x[2]*x[3]*x[4] + 20885/6759*x[2]*x[4]*x[5] + 28748/33795*x[2]*x[4]*x[6] - 
11410/6759*x[2]*x[5]^2 - 19016/33795*x[2]*x[5]*x[6] + 4451/13518*x[2]*x[6]^2 - 
1681/11265*x[3]^3 + 17921/56325*x[3]^2*x[4] - 115082/56325*x[3]^2*x[5] + 
14603/112650*x[3]^2*x[6] + 51788/56325*x[3]*x[4]^2 - 422/3755*x[3]*x[4]*x[5] - 
3727/56325*x[3]*x[4]*x[6] + 220528/56325*x[3]*x[5]^2 - 
29263/56325*x[3]*x[5]*x[6] + 3361/18775*x[3]*x[6]^2 - 31304/56325*x[4]^3 + 
133207/56325*x[4]^2*x[5] - 4699/18775*x[4]^2*x[6] - 190008/18775*x[4]*x[5]^2 + 
75098/168975*x[4]*x[5]*x[6] - 4793/67590*x[4]*x[6]^2 + 681212/56325*x[5]^3 + 
140302/33795*x[5]^2*x[6] + 116633/168975*x[5]*x[6]^2 + 5263/67590*x[6]^3,
x[2]*x[3]*x[5] - 1556/6759*x[2]*x[4]*x[5] - 8407/67590*x[2]*x[4]*x[6] + 
30001/6759*x[2]*x[5]^2 + 54002/33795*x[2]*x[5]*x[6] + 37/13518*x[2]*x[6]^2 + 
2911/112650*x[3]^3 - 24386/56325*x[3]^2*x[4] + 3971/56325*x[3]^2*x[5] - 
4757/45060*x[3]^2*x[6] + 15628/56325*x[3]*x[4]^2 - 23978/18775*x[3]*x[4]*x[5] - 
12977/56325*x[3]*x[4]*x[6] - 4276/2253*x[3]*x[5]^2 - 8456/56325*x[3]*x[5]*x[6] -
2351/37550*x[3]*x[6]^2 - 4112/11265*x[4]^3 - 176332/56325*x[4]^2*x[5] - 
13627/37550*x[4]^2*x[6] - 32631/18775*x[4]*x[5]^2 - 34543/33795*x[4]*x[5]*x[6] -
7637/337950*x[4]*x[6]^2 - 68378/56325*x[5]^3 - 33614/168975*x[5]^2*x[6] + 
26077/168975*x[5]*x[6]^2 + 5167/135180*x[6]^3,
x[2]*x[3]*x[6] - 1620/751*x[2]*x[4]*x[5] + 2879/1502*x[2]*x[4]*x[6] - 
1170/751*x[2]*x[5]^2 + 1082/751*x[2]*x[5]*x[6] - 947/751*x[2]*x[6]^2 + 
7917/15020*x[3]^3 - 1866/3755*x[3]^2*x[4] + 68607/7510*x[3]^2*x[5] - 
2268/3755*x[3]^2*x[6] - 27357/3755*x[3]*x[4]^2 - 8349/3755*x[3]*x[4]*x[5] + 
2979/3755*x[3]*x[4]*x[6] - 6336/751*x[3]*x[5]^2 + 12261/3755*x[3]*x[5]*x[6] - 
2323/15020*x[3]*x[6]^2 - 1920/751*x[4]^3 - 1752/3755*x[4]^2*x[5] + 
873/7510*x[4]^2*x[6] + 225072/3755*x[4]*x[5]^2 + 2343/3755*x[4]*x[5]*x[6] + 
1121/3755*x[4]*x[6]^2 - 167388/3755*x[5]^3 - 9696/751*x[5]^2*x[6] - 
3353/1502*x[5]*x[6]^2 - 599/7510*x[6]^3,
x[2]*x[4]^2 + 368/2253*x[2]*x[4]*x[5] + 2222/11265*x[2]*x[4]*x[6] + 
2936/2253*x[2]*x[5]^2 - 719/11265*x[2]*x[5]*x[6] + 13/2253*x[2]*x[6]^2 - 
451/37550*x[3]^3 - 599/37550*x[3]^2*x[4] - 149/751*x[3]^2*x[5] + 
358/18775*x[3]^2*x[6] + 5258/18775*x[3]*x[4]^2 - 10116/18775*x[3]*x[4]*x[5] + 
1598/18775*x[3]*x[4]*x[6] - 2414/18775*x[3]*x[5]^2 - 68/3755*x[3]*x[5]*x[6] + 
117/7510*x[3]*x[6]^2 + 1567/18775*x[4]^3 + 12976/18775*x[4]^2*x[5] - 
1556/18775*x[4]^2*x[6] + 3852/3755*x[4]*x[5]^2 + 19841/56325*x[4]*x[5]*x[6] + 
7847/112650*x[4]*x[6]^2 + 43532/18775*x[5]^3 + 21074/56325*x[5]^2*x[6] + 
8399/56325*x[5]*x[6]^2 - 97/11265*x[6]^3
]);
