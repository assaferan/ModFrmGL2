
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
130*zeta)*q^578 + (-128*zeta^3 - 128*zeta^2 + 320*zeta + 320)*q^581 + 
(-24*zeta^3 + 48*zeta^2 + 120*zeta - 120)*q^583 + (-72*zeta^2 + 180)*q^585 + 
(52*zeta^3 - 260*zeta)*q^586 + (-48*zeta^3 - 96*zeta^2 + 240*zeta + 240)*q^587 +
(-64*zeta^3 + 64*zeta^2 + 160*zeta - 160)*q^589 + (-18*zeta^3 - 36*zeta^2 + 
90*zeta + 90)*q^593 + (-96*zeta^2 + 240)*q^595 + (-32*zeta^3 + 80*zeta)*q^598 + 
(-48*zeta^3 - 48*zeta^2 + 120*zeta + 120)*q^599 + (-20*zeta^3 - 20*zeta^2 + 
50*zeta + 50)*q^601 + (-128*zeta^3 + 320*zeta)*q^602 + (24*zeta^3 - 48*zeta^2 - 
120*zeta + 120)*q^603 + (-60*zeta^2 + 150)*q^605 + (-12*zeta^3 - 24*zeta^2 + 
60*zeta + 60)*q^607 + (16*zeta^3 - 16*zeta^2 - 40*zeta + 40)*q^611 + (42*zeta^3 
+ 84*zeta^2 - 210*zeta - 210)*q^613 + (-16*zeta^3 + 80*zeta)*q^614 + (-6*zeta^3 
+ 12*zeta^2 + 30*zeta - 30)*q^617 + (-8*zeta^3 - 8*zeta^2 + 20*zeta + 20)*q^619 
+ (-128*zeta^3 + 320*zeta)*q^622 + (-24*zeta^3 + 48*zeta^2 + 120*zeta - 
120)*q^623 + (-12*zeta^2 + 30)*q^625 + (-52*zeta^3 + 260*zeta)*q^626 + 
(24*zeta^3 - 24*zeta^2 - 60*zeta + 60)*q^629 + (-32*zeta^3 + 32*zeta^2 + 80*zeta
- 80)*q^631 + (-36*zeta^3 + 180*zeta)*q^634 + (-144*zeta^2 + 360)*q^635 + 
(-18*zeta^3 + 36*zeta^2 + 90*zeta - 90)*q^637 + (-32*zeta^3 + 80*zeta)*q^638 + 
(-36*zeta^3 - 36*zeta^2 + 90*zeta + 90)*q^641 + (48*zeta^3 - 96*zeta^2 - 
240*zeta + 240)*q^643 + (-16*zeta^3 + 80*zeta)*q^646 + (12*zeta^3 + 24*zeta^2 - 
60*zeta - 60)*q^647 + (-32*zeta^3 + 32*zeta^2 + 80*zeta - 80)*q^649 + (34*zeta^3
+ 68*zeta^2 - 170*zeta - 170)*q^653 + (144*zeta^2 - 360)*q^655 + (18*zeta^3 - 
36*zeta^2 - 90*zeta + 90)*q^657 + (-64*zeta^3 + 160*zeta)*q^658 + (-24*zeta^3 - 
24*zeta^2 + 60*zeta + 60)*q^659 + (84*zeta^3 + 84*zeta^2 - 210*zeta - 210)*q^661
+ (48*zeta^3 - 120*zeta)*q^662 + (192*zeta^2 - 480)*q^665 + (36*zeta^3 - 
180*zeta)*q^666 + (-8*zeta^3 - 16*zeta^2 + 40*zeta + 40)*q^667 + (16*zeta^3 - 
16*zeta^2 - 40*zeta + 40)*q^671 + (-18*zeta^3 - 36*zeta^2 + 90*zeta + 90)*q^673 
+ (-28*zeta^3 + 140*zeta)*q^674 + (22*zeta^3 - 44*zeta^2 - 110*zeta + 110)*q^677
+ (112*zeta^3 + 112*zeta^2 - 280*zeta - 280)*q^679 + (128*zeta^3 - 
320*zeta)*q^682 + (-24*zeta^3 + 48*zeta^2 + 120*zeta - 120)*q^683 + (-120*zeta^2
+ 300)*q^685 + (16*zeta^3 - 80*zeta)*q^686 + (-24*zeta^3 + 24*zeta^2 + 60*zeta -
60)*q^689 + (-88*zeta^3 + 88*zeta^2 + 220*zeta - 220)*q^691 + (-48*zeta^3 - 
96*zeta^2 + 240*zeta + 240)*q^693 + (-32*zeta^3 + 160*zeta)*q^694 + (144*zeta^2 
- 360)*q^695 + (-12*zeta^3 + 24*zeta^2 + 60*zeta - 60)*q^697 + (120*zeta^3 - 
300*zeta)*q^698 + (68*zeta^3 + 68*zeta^2 - 170*zeta - 170)*q^701 + (-24*zeta^3 +
48*zeta^2 + 120*zeta - 120)*q^703 + (-4*zeta^3 + 20*zeta)*q^706 + (-24*zeta^3 - 
48*zeta^2 + 120*zeta + 120)*q^707 + (76*zeta^3 - 76*zeta^2 - 190*zeta + 
190)*q^709 + (32*zeta^3 + 64*zeta^2 - 160*zeta - 160)*q^713 + (-96*zeta^2 + 
240)*q^715 + (-96*zeta^3 + 240*zeta)*q^718 + (-64*zeta^3 - 64*zeta^2 + 160*zeta 
+ 160)*q^719 + (32*zeta^3 + 32*zeta^2 - 80*zeta - 80)*q^721 + (12*zeta^3 - 
30*zeta)*q^722 + (24*zeta^2 - 60)*q^725 + (44*zeta^3 + 88*zeta^2 - 220*zeta - 
220)*q^727 + (-54*zeta^3 + 54*zeta^2 + 135*zeta - 135)*q^729 + (32*zeta^3 - 
32*zeta^2 - 80*zeta + 80)*q^731 + (-30*zeta^3 - 60*zeta^2 + 150*zeta + 
150)*q^733 + (40*zeta^3 - 200*zeta)*q^734 + (32*zeta^3 - 64*zeta^2 - 160*zeta + 
160)*q^737 + (72*zeta^3 - 180*zeta)*q^738 + (72*zeta^3 + 72*zeta^2 - 180*zeta - 
180)*q^739 + (96*zeta^3 - 240*zeta)*q^742 + (-36*zeta^3 + 72*zeta^2 + 180*zeta -
180)*q^743 + (120*zeta^2 - 300)*q^745 + (-44*zeta^3 + 220*zeta)*q^746 + 
(48*zeta^3 + 96*zeta^2 - 240*zeta - 240)*q^747 + (48*zeta^3 - 48*zeta^2 - 
120*zeta + 120)*q^751 + (8*zeta^3 - 40*zeta)*q^754 + (-192*zeta^2 + 480)*q^755 +
(-10*zeta^3 + 20*zeta^2 + 50*zeta - 50)*q^757 + (-80*zeta^3 + 200*zeta)*q^758 + 
(12*zeta^3 + 12*zeta^2 - 30*zeta - 30)*q^761 + (56*zeta^3 - 112*zeta^2 - 
280*zeta + 280)*q^763 + (72*zeta^2 - 180)*q^765 + (72*zeta^3 - 360*zeta)*q^766 +
(8*zeta^3 + 16*zeta^2 - 40*zeta - 40)*q^767 + (68*zeta^3 - 68*zeta^2 - 170*zeta 
+ 170)*q^769 + (42*zeta^3 + 84*zeta^2 - 210*zeta - 210)*q^773 + (48*zeta^3 - 
240*zeta)*q^774 + (-96*zeta^2 + 240)*q^775 + (24*zeta^3 - 60*zeta)*q^778 + 
(-48*zeta^3 - 48*zeta^2 + 120*zeta + 120)*q^779 + (-32*zeta^3 + 80*zeta)*q^782 +
(24*zeta^2 - 60)*q^785 + (8*zeta^3 + 16*zeta^2 - 40*zeta - 40)*q^787 + 
(144*zeta^3 - 144*zeta^2 - 360*zeta + 360)*q^791 + (-4*zeta^3 - 8*zeta^2 + 
20*zeta + 20)*q^793 + (-4*zeta^3 + 20*zeta)*q^794 + (-18*zeta^3 + 36*zeta^2 + 
90*zeta - 90)*q^797 + (16*zeta^3 + 16*zeta^2 - 40*zeta - 40)*q^799 + (-36*zeta^3
- 36*zeta^2 + 90*zeta + 90)*q^801 + (-72*zeta^3 + 180*zeta)*q^802 + (24*zeta^3 -
48*zeta^2 - 120*zeta + 120)*q^803 + (192*zeta^2 - 480)*q^805 + (-32*zeta^3 + 
160*zeta)*q^806 + (84*zeta^3 - 84*zeta^2 - 210*zeta + 210)*q^809 + (56*zeta^3 - 
56*zeta^2 - 140*zeta + 140)*q^811 + (48*zeta^3 - 240*zeta)*q^814 + (192*zeta^2 -
480)*q^815 + (-32*zeta^3 + 64*zeta^2 + 160*zeta - 160)*q^817 + (40*zeta^3 - 
100*zeta)*q^818 + (-48*zeta^3 - 48*zeta^2 + 120*zeta + 120)*q^819 + (-44*zeta^3 
- 44*zeta^2 + 110*zeta + 110)*q^821 + (-4*zeta^3 + 8*zeta^2 + 20*zeta - 
20)*q^823 + (-32*zeta^3 + 160*zeta)*q^826 + (48*zeta^3 + 96*zeta^2 - 240*zeta - 
240)*q^827 + (-4*zeta^3 + 4*zeta^2 + 10*zeta - 10)*q^829 + (-18*zeta^3 - 
36*zeta^2 + 90*zeta + 90)*q^833 + (144*zeta^2 - 360)*q^835 + (144*zeta^3 - 
360*zeta)*q^838 + (-80*zeta^3 - 80*zeta^2 + 200*zeta + 200)*q^839 + (50*zeta^3 +
50*zeta^2 - 125*zeta - 125)*q^841 + (-24*zeta^3 + 60*zeta)*q^842 + (108*zeta^2 -
270)*q^845 + (24*zeta^3 - 120*zeta)*q^846 + (-20*zeta^3 - 40*zeta^2 + 100*zeta +
100)*q^847 + (-48*zeta^3 + 48*zeta^2 + 120*zeta - 120)*q^851 + (-38*zeta^3 - 
76*zeta^2 + 190*zeta + 190)*q^853 + (16*zeta^3 - 80*zeta)*q^854 + (-144*zeta^2 +
360)*q^855 + (-6*zeta^3 + 12*zeta^2 + 30*zeta - 30)*q^857 + (-8*zeta^3 - 
8*zeta^2 + 20*zeta + 20)*q^859 + (160*zeta^3 - 400*zeta)*q^862 + (-12*zeta^3 + 
24*zeta^2 + 60*zeta - 60)*q^863 + (-168*zeta^2 + 420)*q^865 + (-4*zeta^3 + 
20*zeta)*q^866 + (32*zeta^3 - 32*zeta^2 - 80*zeta + 80)*q^871 + (-42*zeta^3 - 
84*zeta^2 + 210*zeta + 210)*q^873 + (32*zeta^3 - 160*zeta)*q^874 + (-48*zeta^2 +
120)*q^875 + (46*zeta^3 - 92*zeta^2 - 230*zeta + 230)*q^877 + (-32*zeta^3 + 
80*zeta)*q^878 + (60*zeta^3 + 60*zeta^2 - 150*zeta - 150)*q^881 + (108*zeta^3 - 
270*zeta)*q^882 + (16*zeta^3 - 32*zeta^2 - 80*zeta + 80)*q^883 + (-48*zeta^3 + 
240*zeta)*q^886 + (-20*zeta^3 - 40*zeta^2 + 100*zeta + 100)*q^887 + (96*zeta^3 -
96*zeta^2 - 240*zeta + 240)*q^889 + (-72*zeta^3 + 72*zeta^2 + 180*zeta - 
180)*q^891 + (-16*zeta^3 - 32*zeta^2 + 80*zeta + 80)*q^893 + (240*zeta^2 - 
600)*q^895 + (72*zeta^3 - 180*zeta)*q^898 + (32*zeta^3 + 32*zeta^2 - 80*zeta - 
80)*q^899 + (-24*zeta^3 - 24*zeta^2 + 60*zeta + 60)*q^901 + (96*zeta^3 - 
240*zeta)*q^902 + (120*zeta^2 - 300)*q^905 + (48*zeta^3 + 96*zeta^2 - 240*zeta -
240)*q^907 + (-36*zeta^3 + 36*zeta^2 + 90*zeta - 90)*q^909 + (-80*zeta^3 + 
80*zeta^2 + 200*zeta - 200)*q^911 + (64*zeta^3 + 128*zeta^2 - 320*zeta - 
320)*q^913 + (20*zeta^3 - 100*zeta)*q^914 + (-48*zeta^3 + 96*zeta^2 + 240*zeta -
240)*q^917 + (16*zeta^3 + 16*zeta^2 - 40*zeta - 40)*q^919 + (72*zeta^3 - 
180*zeta)*q^922 + (-72*zeta^2 + 180)*q^925 + (-24*zeta^3 + 120*zeta)*q^926 + 
(-12*zeta^3 - 24*zeta^2 + 60*zeta + 60)*q^927 + (-28*zeta^3 + 28*zeta^2 + 
70*zeta - 70)*q^929 + (-72*zeta^3 + 72*zeta^2 + 180*zeta - 180)*q^931 + 
(16*zeta^3 - 80*zeta)*q^934 + (96*zeta^2 - 240)*q^935 + (-38*zeta^3 + 76*zeta^2 
+ 190*zeta - 190)*q^937 + (-128*zeta^3 + 320*zeta)*q^938 + (-92*zeta^3 - 
92*zeta^2 + 230*zeta + 230)*q^941 + (24*zeta^3 - 48*zeta^2 - 120*zeta + 
120)*q^943 + (64*zeta^3 - 320*zeta)*q^946 + (-8*zeta^3 - 16*zeta^2 + 40*zeta + 
40)*q^947 + (24*zeta^3 - 24*zeta^2 - 60*zeta + 60)*q^949 + (6*zeta^3 + 12*zeta^2
- 30*zeta - 30)*q^953 + (-36*zeta^3 + 180*zeta)*q^954 + (96*zeta^2 - 240)*q^955 
+ (64*zeta^3 - 160*zeta)*q^958 + (-80*zeta^3 - 80*zeta^2 + 200*zeta + 200)*q^959
+ (-66*zeta^3 - 66*zeta^2 + 165*zeta + 165)*q^961 + (48*zeta^3 - 120*zeta)*q^962
+ (168*zeta^2 - 420)*q^965 + (-36*zeta^3 - 72*zeta^2 + 180*zeta + 180)*q^967 + 
(-40*zeta^3 + 40*zeta^2 + 100*zeta - 100)*q^971 + (48*zeta^3 + 96*zeta^2 - 
240*zeta - 240)*q^973 + (-40*zeta^3 + 200*zeta)*q^974 + (2*zeta^3 - 4*zeta^2 - 
10*zeta + 10)*q^977 + (-48*zeta^3 - 48*zeta^2 + 120*zeta + 120)*q^979 + 
(84*zeta^3 + 84*zeta^2 - 210*zeta - 210)*q^981 + (-144*zeta^3 + 360*zeta)*q^982 
+ (-36*zeta^3 + 72*zeta^2 + 180*zeta - 180)*q^983 + (-264*zeta^2 + 660)*q^985 + 
(8*zeta^3 - 40*zeta)*q^986 + (-64*zeta^3 + 64*zeta^2 + 160*zeta - 160)*q^989 + 
(80*zeta^3 - 80*zeta^2 - 200*zeta + 200)*q^991 + (96*zeta^2 - 240)*q^995 + 
(-42*zeta^3 + 84*zeta^2 + 210*zeta - 210)*q^997 + (-112*zeta^3 + 280*zeta)*q^998
+ (-64*zeta^3 - 64*zeta^2 + 160*zeta + 160)*q^1001 + (8*zeta^3 - 16*zeta^2 - 
40*zeta + 40)*q^1003 + (24*zeta^3 - 120*zeta)*q^1006 + (24*zeta^3 + 48*zeta^2 - 
120*zeta - 120)*q^1007 + (-92*zeta^3 + 92*zeta^2 + 230*zeta - 230)*q^1009 + 
(-38*zeta^3 - 76*zeta^2 + 190*zeta + 190)*q^1013 + (96*zeta^2 - 240)*q^1015 + 
(-54*zeta^3 + 108*zeta^2 + 270*zeta - 270)*q^1017 + (-8*zeta^3 + 20*zeta)*q^1018
+ (88*zeta^3 + 88*zeta^2 - 220*zeta - 220)*q^1019 + (4*zeta^3 + 4*zeta^2 - 
10*zeta - 10)*q^1021 + (-96*zeta^3 + 240*zeta)*q^1022 + (72*zeta^2 - 180)*q^1025
+ (32*zeta^3 - 32*zeta^2 - 80*zeta + 80)*q^1031 + (-26*zeta^3 - 52*zeta^2 + 
130*zeta + 130)*q^1033 + (32*zeta^3 - 160*zeta)*q^1034 + (-144*zeta^2 + 
360)*q^1035 + (-4*zeta^3 + 8*zeta^2 + 20*zeta - 20)*q^1037 + (-32*zeta^3 - 
32*zeta^2 + 80*zeta + 80)*q^1039 + (-40*zeta^3 + 100*zeta)*q^1042 + (-40*zeta^3 
+ 80*zeta^2 + 200*zeta - 200)*q^1043 + (-192*zeta^2 + 480)*q^1045 + (16*zeta^3 -
80*zeta)*q^1046 + (-12*zeta^3 + 12*zeta^2 + 30*zeta - 30)*q^1049 + (-8*zeta^3 + 
8*zeta^2 + 20*zeta - 20)*q^1051 + (18*zeta^3 + 36*zeta^2 - 90*zeta - 90)*q^1053 
+ (-32*zeta^3 + 160*zeta)*q^1054 + (-48*zeta^2 + 120)*q^1055 + (64*zeta^3 - 
128*zeta^2 - 320*zeta + 320)*q^1057 + (-28*zeta^3 + 70*zeta)*q^1058 + 
(-76*zeta^3 - 76*zeta^2 + 190*zeta + 190)*q^1061 + (-48*zeta^3 + 
120*zeta)*q^1062 + (44*zeta^3 - 88*zeta^2 - 220*zeta + 220)*q^1063 + (-24*zeta^3
+ 120*zeta)*q^1066 + (-56*zeta^3 - 112*zeta^2 + 280*zeta + 280)*q^1067 + 
(92*zeta^3 - 92*zeta^2 - 230*zeta + 230)*q^1069 + (-48*zeta^3 + 48*zeta^2 + 
120*zeta - 120)*q^1071 + (12*zeta^3 + 24*zeta^2 - 60*zeta - 60)*q^1073 + 
(-96*zeta^2 + 240)*q^1075 + (144*zeta^3 - 360*zeta)*q^1078 + (64*zeta^3 + 
64*zeta^2 - 160*zeta - 160)*q^1079 + (-32*zeta^3 - 32*zeta^2 + 80*zeta + 
80)*q^1081 + (8*zeta^3 - 20*zeta)*q^1082 + (-384*zeta^2 + 960)*q^1085 + 
(-28*zeta^3 - 56*zeta^2 + 140*zeta + 140)*q^1087 + (-30*zeta^3 + 30*zeta^2 + 
75*zeta - 75)*q^1089 + (-24*zeta^3 + 24*zeta^2 + 60*zeta - 60)*q^1091 + 
(10*zeta^3 + 20*zeta^2 - 50*zeta - 50)*q^1093 + (16*zeta^3 - 80*zeta)*q^1094 + 
(58*zeta^3 - 116*zeta^2 - 290*zeta + 290)*q^1097 + (24*zeta^3 - 60*zeta)*q^1098 
+ (16*zeta^3 + 16*zeta^2 - 40*zeta - 40)*q^1099 + O(q^1100), (-2*zeta^3 - 
2*zeta^2 + 5*zeta + 5)*q + (-4*zeta^3 + 10*zeta)*q^2 + (-12*zeta^2 + 30)*q^5 + 
(-4*zeta^3 - 8*zeta^2 + 20*zeta + 20)*q^7 + (-6*zeta^3 + 6*zeta^2 + 15*zeta - 
15)*q^9 + (-8*zeta^3 + 8*zeta^2 + 20*zeta - 20)*q^11 + (2*zeta^3 + 4*zeta^2 - 
10*zeta - 10)*q^13 + (-8*zeta^3 + 40*zeta)*q^14 + (2*zeta^3 - 4*zeta^2 - 10*zeta
+ 10)*q^17 + (-12*zeta^3 + 30*zeta)*q^18 + (8*zeta^3 + 8*zeta^2 - 20*zeta - 
20)*q^19 + (-16*zeta^3 + 40*zeta)*q^22 + (-4*zeta^3 + 8*zeta^2 + 20*zeta - 
20)*q^23 + (-12*zeta^2 + 30)*q^25 + (4*zeta^3 - 20*zeta)*q^26 + (-4*zeta^3 + 
4*zeta^2 + 10*zeta - 10)*q^29 + (16*zeta^3 - 16*zeta^2 - 40*zeta + 40)*q^31 + 
(4*zeta^3 - 20*zeta)*q^34 + (-48*zeta^2 + 120)*q^35 + (6*zeta^3 - 12*zeta^2 - 
30*zeta + 30)*q^37 + (16*zeta^3 - 40*zeta)*q^38 + (12*zeta^3 + 12*zeta^2 - 
30*zeta - 30)*q^41 + (8*zeta^3 - 16*zeta^2 - 40*zeta + 40)*q^43 + (36*zeta^2 - 
90)*q^45 + (-8*zeta^3 + 40*zeta)*q^46 + (4*zeta^3 + 8*zeta^2 - 20*zeta - 
20)*q^47 + (18*zeta^3 - 18*zeta^2 - 45*zeta + 45)*q^49 + (-6*zeta^3 - 12*zeta^2 
+ 30*zeta + 30)*q^53 + (48*zeta^2 - 120)*q^55 + (-8*zeta^3 + 20*zeta)*q^58 + 
(-8*zeta^3 - 8*zeta^2 + 20*zeta + 20)*q^59 + (4*zeta^3 + 4*zeta^2 - 10*zeta - 
10)*q^61 + (32*zeta^3 - 80*zeta)*q^62 + (-12*zeta^3 + 24*zeta^2 + 60*zeta - 
60)*q^63 + (24*zeta^2 - 60)*q^65 + (8*zeta^3 + 16*zeta^2 - 40*zeta - 40)*q^67 + 
(6*zeta^3 + 12*zeta^2 - 30*zeta - 30)*q^73 + (12*zeta^3 - 60*zeta)*q^74 + 
(-16*zeta^3 + 32*zeta^2 + 80*zeta - 80)*q^77 + (-18*zeta^3 - 18*zeta^2 + 45*zeta
+ 45)*q^81 + (24*zeta^3 - 60*zeta)*q^82 + (16*zeta^3 - 32*zeta^2 - 80*zeta + 
80)*q^83 + (-24*zeta^2 + 60)*q^85 + (16*zeta^3 - 80*zeta)*q^86 + (-12*zeta^3 + 
12*zeta^2 + 30*zeta - 30)*q^89 + (-16*zeta^3 + 16*zeta^2 + 40*zeta - 40)*q^91 + 
(8*zeta^3 - 40*zeta)*q^94 + (48*zeta^2 - 120)*q^95 + (-14*zeta^3 + 28*zeta^2 + 
70*zeta - 70)*q^97 + (36*zeta^3 - 90*zeta)*q^98 + (-24*zeta^3 - 24*zeta^2 + 
60*zeta + 60)*q^99 + (-12*zeta^3 - 12*zeta^2 + 30*zeta + 30)*q^101 + (-4*zeta^3 
+ 8*zeta^2 + 20*zeta - 20)*q^103 + (-12*zeta^3 + 60*zeta)*q^106 + (28*zeta^3 - 
28*zeta^2 - 70*zeta + 70)*q^109 + (-18*zeta^3 - 36*zeta^2 + 90*zeta + 90)*q^113 
+ (48*zeta^2 - 120)*q^115 + (6*zeta^3 - 12*zeta^2 - 30*zeta + 30)*q^117 + 
(-16*zeta^3 + 40*zeta)*q^118 + (-16*zeta^3 - 16*zeta^2 + 40*zeta + 40)*q^119 + 
(-10*zeta^3 - 10*zeta^2 + 25*zeta + 25)*q^121 + (8*zeta^3 - 20*zeta)*q^122 + 
(-12*zeta^2 + 30)*q^125 + (-24*zeta^3 + 120*zeta)*q^126 + (-12*zeta^3 - 
24*zeta^2 + 60*zeta + 60)*q^127 + (-24*zeta^3 + 24*zeta^2 + 60*zeta - 60)*q^131 
+ (16*zeta^3 + 32*zeta^2 - 80*zeta - 80)*q^133 + (16*zeta^3 - 80*zeta)*q^134 + 
(10*zeta^3 - 20*zeta^2 - 50*zeta + 50)*q^137 + (24*zeta^3 + 24*zeta^2 - 60*zeta 
- 60)*q^139 + (8*zeta^3 - 16*zeta^2 - 40*zeta + 40)*q^143 + (24*zeta^2 - 
60)*q^145 + (12*zeta^3 - 60*zeta)*q^146 + (-20*zeta^3 + 20*zeta^2 + 50*zeta - 
50)*q^149 + (32*zeta^3 - 32*zeta^2 - 80*zeta + 80)*q^151 + (6*zeta^3 + 12*zeta^2
- 30*zeta - 30)*q^153 + (-32*zeta^3 + 160*zeta)*q^154 + (-96*zeta^2 + 240)*q^155
+ (-2*zeta^3 + 4*zeta^2 + 10*zeta - 10)*q^157 + (32*zeta^3 + 32*zeta^2 - 80*zeta
- 80)*q^161 + (-36*zeta^3 + 90*zeta)*q^162 + (-16*zeta^3 + 32*zeta^2 + 80*zeta -
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
130*zeta)*q^578 + (-128*zeta^3 - 128*zeta^2 + 320*zeta + 320)*q^581 + 
(-24*zeta^3 + 48*zeta^2 + 120*zeta - 120)*q^583 + (-72*zeta^2 + 180)*q^585 + 
(52*zeta^3 - 260*zeta)*q^586 + (-48*zeta^3 - 96*zeta^2 + 240*zeta + 240)*q^587 +
(-64*zeta^3 + 64*zeta^2 + 160*zeta - 160)*q^589 + (-18*zeta^3 - 36*zeta^2 + 
90*zeta + 90)*q^593 + (-96*zeta^2 + 240)*q^595 + (-32*zeta^3 + 80*zeta)*q^598 + 
(-48*zeta^3 - 48*zeta^2 + 120*zeta + 120)*q^599 + (-20*zeta^3 - 20*zeta^2 + 
50*zeta + 50)*q^601 + (-128*zeta^3 + 320*zeta)*q^602 + (24*zeta^3 - 48*zeta^2 - 
120*zeta + 120)*q^603 + (-60*zeta^2 + 150)*q^605 + (-12*zeta^3 - 24*zeta^2 + 
60*zeta + 60)*q^607 + (16*zeta^3 - 16*zeta^2 - 40*zeta + 40)*q^611 + (42*zeta^3 
+ 84*zeta^2 - 210*zeta - 210)*q^613 + (-16*zeta^3 + 80*zeta)*q^614 + (-6*zeta^3 
+ 12*zeta^2 + 30*zeta - 30)*q^617 + (-8*zeta^3 - 8*zeta^2 + 20*zeta + 20)*q^619 
+ (-128*zeta^3 + 320*zeta)*q^622 + (-24*zeta^3 + 48*zeta^2 + 120*zeta - 
120)*q^623 + (-12*zeta^2 + 30)*q^625 + (-52*zeta^3 + 260*zeta)*q^626 + 
(24*zeta^3 - 24*zeta^2 - 60*zeta + 60)*q^629 + (-32*zeta^3 + 32*zeta^2 + 80*zeta
- 80)*q^631 + (-36*zeta^3 + 180*zeta)*q^634 + (-144*zeta^2 + 360)*q^635 + 
(-18*zeta^3 + 36*zeta^2 + 90*zeta - 90)*q^637 + (-32*zeta^3 + 80*zeta)*q^638 + 
(-36*zeta^3 - 36*zeta^2 + 90*zeta + 90)*q^641 + (48*zeta^3 - 96*zeta^2 - 
240*zeta + 240)*q^643 + (-16*zeta^3 + 80*zeta)*q^646 + (12*zeta^3 + 24*zeta^2 - 
60*zeta - 60)*q^647 + (-32*zeta^3 + 32*zeta^2 + 80*zeta - 80)*q^649 + (34*zeta^3
+ 68*zeta^2 - 170*zeta - 170)*q^653 + (144*zeta^2 - 360)*q^655 + (18*zeta^3 - 
36*zeta^2 - 90*zeta + 90)*q^657 + (-64*zeta^3 + 160*zeta)*q^658 + (-24*zeta^3 - 
24*zeta^2 + 60*zeta + 60)*q^659 + (84*zeta^3 + 84*zeta^2 - 210*zeta - 210)*q^661
+ (48*zeta^3 - 120*zeta)*q^662 + (192*zeta^2 - 480)*q^665 + (36*zeta^3 - 
180*zeta)*q^666 + (-8*zeta^3 - 16*zeta^2 + 40*zeta + 40)*q^667 + (16*zeta^3 - 
16*zeta^2 - 40*zeta + 40)*q^671 + (-18*zeta^3 - 36*zeta^2 + 90*zeta + 90)*q^673 
+ (-28*zeta^3 + 140*zeta)*q^674 + (22*zeta^3 - 44*zeta^2 - 110*zeta + 110)*q^677
+ (112*zeta^3 + 112*zeta^2 - 280*zeta - 280)*q^679 + (128*zeta^3 - 
320*zeta)*q^682 + (-24*zeta^3 + 48*zeta^2 + 120*zeta - 120)*q^683 + (-120*zeta^2
+ 300)*q^685 + (16*zeta^3 - 80*zeta)*q^686 + (-24*zeta^3 + 24*zeta^2 + 60*zeta -
60)*q^689 + (-88*zeta^3 + 88*zeta^2 + 220*zeta - 220)*q^691 + (-48*zeta^3 - 
96*zeta^2 + 240*zeta + 240)*q^693 + (-32*zeta^3 + 160*zeta)*q^694 + (144*zeta^2 
- 360)*q^695 + (-12*zeta^3 + 24*zeta^2 + 60*zeta - 60)*q^697 + (120*zeta^3 - 
300*zeta)*q^698 + (68*zeta^3 + 68*zeta^2 - 170*zeta - 170)*q^701 + (-24*zeta^3 +
48*zeta^2 + 120*zeta - 120)*q^703 + (-4*zeta^3 + 20*zeta)*q^706 + (-24*zeta^3 - 
48*zeta^2 + 120*zeta + 120)*q^707 + (76*zeta^3 - 76*zeta^2 - 190*zeta + 
190)*q^709 + (32*zeta^3 + 64*zeta^2 - 160*zeta - 160)*q^713 + (-96*zeta^2 + 
240)*q^715 + (-96*zeta^3 + 240*zeta)*q^718 + (-64*zeta^3 - 64*zeta^2 + 160*zeta 
+ 160)*q^719 + (32*zeta^3 + 32*zeta^2 - 80*zeta - 80)*q^721 + (12*zeta^3 - 
30*zeta)*q^722 + (24*zeta^2 - 60)*q^725 + (44*zeta^3 + 88*zeta^2 - 220*zeta - 
220)*q^727 + (-54*zeta^3 + 54*zeta^2 + 135*zeta - 135)*q^729 + (32*zeta^3 - 
32*zeta^2 - 80*zeta + 80)*q^731 + (-30*zeta^3 - 60*zeta^2 + 150*zeta + 
150)*q^733 + (40*zeta^3 - 200*zeta)*q^734 + (32*zeta^3 - 64*zeta^2 - 160*zeta + 
160)*q^737 + (72*zeta^3 - 180*zeta)*q^738 + (72*zeta^3 + 72*zeta^2 - 180*zeta - 
180)*q^739 + (96*zeta^3 - 240*zeta)*q^742 + (-36*zeta^3 + 72*zeta^2 + 180*zeta -
180)*q^743 + (120*zeta^2 - 300)*q^745 + (-44*zeta^3 + 220*zeta)*q^746 + 
(48*zeta^3 + 96*zeta^2 - 240*zeta - 240)*q^747 + (48*zeta^3 - 48*zeta^2 - 
120*zeta + 120)*q^751 + (8*zeta^3 - 40*zeta)*q^754 + (-192*zeta^2 + 480)*q^755 +
(-10*zeta^3 + 20*zeta^2 + 50*zeta - 50)*q^757 + (-80*zeta^3 + 200*zeta)*q^758 + 
(12*zeta^3 + 12*zeta^2 - 30*zeta - 30)*q^761 + (56*zeta^3 - 112*zeta^2 - 
280*zeta + 280)*q^763 + (72*zeta^2 - 180)*q^765 + (72*zeta^3 - 360*zeta)*q^766 +
(8*zeta^3 + 16*zeta^2 - 40*zeta - 40)*q^767 + (68*zeta^3 - 68*zeta^2 - 170*zeta 
+ 170)*q^769 + (42*zeta^3 + 84*zeta^2 - 210*zeta - 210)*q^773 + (48*zeta^3 - 
240*zeta)*q^774 + (-96*zeta^2 + 240)*q^775 + (24*zeta^3 - 60*zeta)*q^778 + 
(-48*zeta^3 - 48*zeta^2 + 120*zeta + 120)*q^779 + (-32*zeta^3 + 80*zeta)*q^782 +
(24*zeta^2 - 60)*q^785 + (8*zeta^3 + 16*zeta^2 - 40*zeta - 40)*q^787 + 
(144*zeta^3 - 144*zeta^2 - 360*zeta + 360)*q^791 + (-4*zeta^3 - 8*zeta^2 + 
20*zeta + 20)*q^793 + (-4*zeta^3 + 20*zeta)*q^794 + (-18*zeta^3 + 36*zeta^2 + 
90*zeta - 90)*q^797 + (16*zeta^3 + 16*zeta^2 - 40*zeta - 40)*q^799 + (-36*zeta^3
- 36*zeta^2 + 90*zeta + 90)*q^801 + (-72*zeta^3 + 180*zeta)*q^802 + (24*zeta^3 -
48*zeta^2 - 120*zeta + 120)*q^803 + (192*zeta^2 - 480)*q^805 + (-32*zeta^3 + 
160*zeta)*q^806 + (84*zeta^3 - 84*zeta^2 - 210*zeta + 210)*q^809 + (56*zeta^3 - 
56*zeta^2 - 140*zeta + 140)*q^811 + (48*zeta^3 - 240*zeta)*q^814 + (192*zeta^2 -
480)*q^815 + (-32*zeta^3 + 64*zeta^2 + 160*zeta - 160)*q^817 + (40*zeta^3 - 
100*zeta)*q^818 + (-48*zeta^3 - 48*zeta^2 + 120*zeta + 120)*q^819 + (-44*zeta^3 
- 44*zeta^2 + 110*zeta + 110)*q^821 + (-4*zeta^3 + 8*zeta^2 + 20*zeta - 
20)*q^823 + (-32*zeta^3 + 160*zeta)*q^826 + (48*zeta^3 + 96*zeta^2 - 240*zeta - 
240)*q^827 + (-4*zeta^3 + 4*zeta^2 + 10*zeta - 10)*q^829 + (-18*zeta^3 - 
36*zeta^2 + 90*zeta + 90)*q^833 + (144*zeta^2 - 360)*q^835 + (144*zeta^3 - 
360*zeta)*q^838 + (-80*zeta^3 - 80*zeta^2 + 200*zeta + 200)*q^839 + (50*zeta^3 +
50*zeta^2 - 125*zeta - 125)*q^841 + (-24*zeta^3 + 60*zeta)*q^842 + (108*zeta^2 -
270)*q^845 + (24*zeta^3 - 120*zeta)*q^846 + (-20*zeta^3 - 40*zeta^2 + 100*zeta +
100)*q^847 + (-48*zeta^3 + 48*zeta^2 + 120*zeta - 120)*q^851 + (-38*zeta^3 - 
76*zeta^2 + 190*zeta + 190)*q^853 + (16*zeta^3 - 80*zeta)*q^854 + (-144*zeta^2 +
360)*q^855 + (-6*zeta^3 + 12*zeta^2 + 30*zeta - 30)*q^857 + (-8*zeta^3 - 
8*zeta^2 + 20*zeta + 20)*q^859 + (160*zeta^3 - 400*zeta)*q^862 + (-12*zeta^3 + 
24*zeta^2 + 60*zeta - 60)*q^863 + (-168*zeta^2 + 420)*q^865 + (-4*zeta^3 + 
20*zeta)*q^866 + (32*zeta^3 - 32*zeta^2 - 80*zeta + 80)*q^871 + (-42*zeta^3 - 
84*zeta^2 + 210*zeta + 210)*q^873 + (32*zeta^3 - 160*zeta)*q^874 + (-48*zeta^2 +
120)*q^875 + (46*zeta^3 - 92*zeta^2 - 230*zeta + 230)*q^877 + (-32*zeta^3 + 
80*zeta)*q^878 + (60*zeta^3 + 60*zeta^2 - 150*zeta - 150)*q^881 + (108*zeta^3 - 
270*zeta)*q^882 + (16*zeta^3 - 32*zeta^2 - 80*zeta + 80)*q^883 + (-48*zeta^3 + 
240*zeta)*q^886 + (-20*zeta^3 - 40*zeta^2 + 100*zeta + 100)*q^887 + (96*zeta^3 -
96*zeta^2 - 240*zeta + 240)*q^889 + (-72*zeta^3 + 72*zeta^2 + 180*zeta - 
180)*q^891 + (-16*zeta^3 - 32*zeta^2 + 80*zeta + 80)*q^893 + (240*zeta^2 - 
600)*q^895 + (72*zeta^3 - 180*zeta)*q^898 + (32*zeta^3 + 32*zeta^2 - 80*zeta - 
80)*q^899 + (-24*zeta^3 - 24*zeta^2 + 60*zeta + 60)*q^901 + (96*zeta^3 - 
240*zeta)*q^902 + (120*zeta^2 - 300)*q^905 + (48*zeta^3 + 96*zeta^2 - 240*zeta -
240)*q^907 + (-36*zeta^3 + 36*zeta^2 + 90*zeta - 90)*q^909 + (-80*zeta^3 + 
80*zeta^2 + 200*zeta - 200)*q^911 + (64*zeta^3 + 128*zeta^2 - 320*zeta - 
320)*q^913 + (20*zeta^3 - 100*zeta)*q^914 + (-48*zeta^3 + 96*zeta^2 + 240*zeta -
240)*q^917 + (16*zeta^3 + 16*zeta^2 - 40*zeta - 40)*q^919 + (72*zeta^3 - 
180*zeta)*q^922 + (-72*zeta^2 + 180)*q^925 + (-24*zeta^3 + 120*zeta)*q^926 + 
(-12*zeta^3 - 24*zeta^2 + 60*zeta + 60)*q^927 + (-28*zeta^3 + 28*zeta^2 + 
70*zeta - 70)*q^929 + (-72*zeta^3 + 72*zeta^2 + 180*zeta - 180)*q^931 + 
(16*zeta^3 - 80*zeta)*q^934 + (96*zeta^2 - 240)*q^935 + (-38*zeta^3 + 76*zeta^2 
+ 190*zeta - 190)*q^937 + (-128*zeta^3 + 320*zeta)*q^938 + (-92*zeta^3 - 
92*zeta^2 + 230*zeta + 230)*q^941 + (24*zeta^3 - 48*zeta^2 - 120*zeta + 
120)*q^943 + (64*zeta^3 - 320*zeta)*q^946 + (-8*zeta^3 - 16*zeta^2 + 40*zeta + 
40)*q^947 + (24*zeta^3 - 24*zeta^2 - 60*zeta + 60)*q^949 + (6*zeta^3 + 12*zeta^2
- 30*zeta - 30)*q^953 + (-36*zeta^3 + 180*zeta)*q^954 + (96*zeta^2 - 240)*q^955 
+ (64*zeta^3 - 160*zeta)*q^958 + (-80*zeta^3 - 80*zeta^2 + 200*zeta + 200)*q^959
+ (-66*zeta^3 - 66*zeta^2 + 165*zeta + 165)*q^961 + (48*zeta^3 - 120*zeta)*q^962
+ (168*zeta^2 - 420)*q^965 + (-36*zeta^3 - 72*zeta^2 + 180*zeta + 180)*q^967 + 
(-40*zeta^3 + 40*zeta^2 + 100*zeta - 100)*q^971 + (48*zeta^3 + 96*zeta^2 - 
240*zeta - 240)*q^973 + (-40*zeta^3 + 200*zeta)*q^974 + (2*zeta^3 - 4*zeta^2 - 
10*zeta + 10)*q^977 + (-48*zeta^3 - 48*zeta^2 + 120*zeta + 120)*q^979 + 
(84*zeta^3 + 84*zeta^2 - 210*zeta - 210)*q^981 + (-144*zeta^3 + 360*zeta)*q^982 
+ (-36*zeta^3 + 72*zeta^2 + 180*zeta - 180)*q^983 + (-264*zeta^2 + 660)*q^985 + 
(8*zeta^3 - 40*zeta)*q^986 + (-64*zeta^3 + 64*zeta^2 + 160*zeta - 160)*q^989 + 
(80*zeta^3 - 80*zeta^2 - 200*zeta + 200)*q^991 + (96*zeta^2 - 240)*q^995 + 
(-42*zeta^3 + 84*zeta^2 + 210*zeta - 210)*q^997 + (-112*zeta^3 + 280*zeta)*q^998
+ (-64*zeta^3 - 64*zeta^2 + 160*zeta + 160)*q^1001 + (8*zeta^3 - 16*zeta^2 - 
40*zeta + 40)*q^1003 + (24*zeta^3 - 120*zeta)*q^1006 + (24*zeta^3 + 48*zeta^2 - 
120*zeta - 120)*q^1007 + (-92*zeta^3 + 92*zeta^2 + 230*zeta - 230)*q^1009 + 
(-38*zeta^3 - 76*zeta^2 + 190*zeta + 190)*q^1013 + (96*zeta^2 - 240)*q^1015 + 
(-54*zeta^3 + 108*zeta^2 + 270*zeta - 270)*q^1017 + (-8*zeta^3 + 20*zeta)*q^1018
+ (88*zeta^3 + 88*zeta^2 - 220*zeta - 220)*q^1019 + (4*zeta^3 + 4*zeta^2 - 
10*zeta - 10)*q^1021 + (-96*zeta^3 + 240*zeta)*q^1022 + (72*zeta^2 - 180)*q^1025
+ (32*zeta^3 - 32*zeta^2 - 80*zeta + 80)*q^1031 + (-26*zeta^3 - 52*zeta^2 + 
130*zeta + 130)*q^1033 + (32*zeta^3 - 160*zeta)*q^1034 + (-144*zeta^2 + 
360)*q^1035 + (-4*zeta^3 + 8*zeta^2 + 20*zeta - 20)*q^1037 + (-32*zeta^3 - 
32*zeta^2 + 80*zeta + 80)*q^1039 + (-40*zeta^3 + 100*zeta)*q^1042 + (-40*zeta^3 
+ 80*zeta^2 + 200*zeta - 200)*q^1043 + (-192*zeta^2 + 480)*q^1045 + (16*zeta^3 -
80*zeta)*q^1046 + (-12*zeta^3 + 12*zeta^2 + 30*zeta - 30)*q^1049 + (-8*zeta^3 + 
8*zeta^2 + 20*zeta - 20)*q^1051 + (18*zeta^3 + 36*zeta^2 - 90*zeta - 90)*q^1053 
+ (-32*zeta^3 + 160*zeta)*q^1054 + (-48*zeta^2 + 120)*q^1055 + (64*zeta^3 - 
128*zeta^2 - 320*zeta + 320)*q^1057 + (-28*zeta^3 + 70*zeta)*q^1058 + 
(-76*zeta^3 - 76*zeta^2 + 190*zeta + 190)*q^1061 + (-48*zeta^3 + 
120*zeta)*q^1062 + (44*zeta^3 - 88*zeta^2 - 220*zeta + 220)*q^1063 + (-24*zeta^3
+ 120*zeta)*q^1066 + (-56*zeta^3 - 112*zeta^2 + 280*zeta + 280)*q^1067 + 
(92*zeta^3 - 92*zeta^2 - 230*zeta + 230)*q^1069 + (-48*zeta^3 + 48*zeta^2 + 
120*zeta - 120)*q^1071 + (12*zeta^3 + 24*zeta^2 - 60*zeta - 60)*q^1073 + 
(-96*zeta^2 + 240)*q^1075 + (144*zeta^3 - 360*zeta)*q^1078 + (64*zeta^3 + 
64*zeta^2 - 160*zeta - 160)*q^1079 + (-32*zeta^3 - 32*zeta^2 + 80*zeta + 
80)*q^1081 + (8*zeta^3 - 20*zeta)*q^1082 + (-384*zeta^2 + 960)*q^1085 + 
(-28*zeta^3 - 56*zeta^2 + 140*zeta + 140)*q^1087 + (-30*zeta^3 + 30*zeta^2 + 
75*zeta - 75)*q^1089 + (-24*zeta^3 + 24*zeta^2 + 60*zeta - 60)*q^1091 + 
(10*zeta^3 + 20*zeta^2 - 50*zeta - 50)*q^1093 + (16*zeta^3 - 80*zeta)*q^1094 + 
(58*zeta^3 - 116*zeta^2 - 290*zeta + 290)*q^1097 + (24*zeta^3 - 60*zeta)*q^1098 
+ (16*zeta^3 + 16*zeta^2 - 40*zeta - 40)*q^1099 + O(q^1100), (-5*zeta + 5)*q + 
(-10*zeta^3 + 30*zeta + 10)*q^3 + (-20*zeta^3 + 60*zeta)*q^4 - 30*q^5 + 
(-10*zeta^3 + 30*zeta - 10)*q^7 + (5*zeta + 5)*q^9 + 40*zeta*q^12 + (10*zeta^3 -
30*zeta + 10)*q^13 - 60*q^15 + (30*zeta^3 - 90*zeta - 30)*q^17 + (-20*zeta + 
20)*q^19 + (20*zeta - 20)*q^21 + (30*zeta^3 - 90*zeta - 30)*q^23 + 30*q^25 + 
(-20*zeta^3 + 60*zeta - 20)*q^27 + 40*zeta*q^28 + (30*zeta + 30)*q^29 + (20*zeta
+ 20)*q^31 + 60*q^35 + (20*zeta^3 - 60*zeta)*q^36 + (-10*zeta^3 + 30*zeta + 
10)*q^37 + (-20*zeta + 20)*q^39 + (-30*zeta + 30)*q^41 + (-50*zeta^3 + 150*zeta 
+ 50)*q^43 - 30*q^45 + (30*zeta^3 - 90*zeta + 30)*q^47 + (-15*zeta - 15)*q^49 + 
(-60*zeta - 60)*q^51 - 40*zeta*q^52 + (-30*zeta^3 + 90*zeta - 30)*q^53 + 
(-40*zeta^3 + 120*zeta + 40)*q^57 + (60*zeta - 60)*q^59 + (-10*zeta + 10)*q^61 +
(10*zeta^3 - 30*zeta - 10)*q^63 - 60*q^65 + (-10*zeta^3 + 30*zeta - 10)*q^67 - 
120*zeta*q^68 + (-60*zeta - 60)*q^69 + (60*zeta + 60)*q^71 + (10*zeta^3 - 
30*zeta + 10)*q^73 + 60*q^75 + (-80*zeta^3 + 240*zeta)*q^76 + (40*zeta - 
40)*q^79 + (55*zeta - 55)*q^81 + (30*zeta^3 - 90*zeta - 30)*q^83 + (80*zeta^3 - 
240*zeta)*q^84 + 180*q^85 + (60*zeta^3 - 180*zeta + 60)*q^87 + (-30*zeta - 
30)*q^89 + (-20*zeta - 20)*q^91 - 120*zeta*q^92 + (40*zeta^3 - 120*zeta + 
40)*q^93 - 120*q^95 + (-10*zeta^3 + 30*zeta + 10)*q^97 + (-30*zeta + 30)*q^101 +
(70*zeta^3 - 210*zeta - 70)*q^103 + 120*q^105 + (30*zeta^3 - 90*zeta + 30)*q^107
+ 80*zeta*q^108 + (10*zeta + 10)*q^109 + (20*zeta + 20)*q^111 + (-30*zeta^3 + 
90*zeta - 30)*q^113 + 180*q^115 + (120*zeta^3 - 360*zeta)*q^116 + (-10*zeta^3 + 
30*zeta + 10)*q^117 + (-60*zeta + 60)*q^119 + (55*zeta - 55)*q^121 + (-60*zeta^3
+ 180*zeta + 60)*q^123 + (80*zeta^3 - 240*zeta)*q^124 - 30*q^125 + (-10*zeta^3 +
30*zeta - 10)*q^127 + (100*zeta + 100)*q^129 + (-40*zeta^3 + 120*zeta - 
40)*q^133 + 120*q^135 + (-90*zeta^3 + 270*zeta + 90)*q^137 + (-20*zeta + 
20)*q^139 + (-60*zeta + 60)*q^141 - 180*q^145 + (-30*zeta^3 + 90*zeta - 
30)*q^147 + 40*zeta*q^148 + (-30*zeta - 30)*q^149 + (-100*zeta - 100)*q^151 + 
(-30*zeta^3 + 90*zeta - 30)*q^153 - 120*q^155 + (-80*zeta^3 + 240*zeta)*q^156 + 
(110*zeta^3 - 330*zeta - 110)*q^157 + (60*zeta - 60)*q^159 + (-60*zeta + 
60)*q^161 + (-50*zeta^3 + 150*zeta + 50)*q^163 + (-120*zeta^3 + 360*zeta)*q^164 
+ (-90*zeta^3 + 270*zeta - 90)*q^167 + (-45*zeta - 45)*q^169 + (20*zeta + 
20)*q^171 + 200*zeta*q^172 + (-30*zeta^3 + 90*zeta - 30)*q^173 - 60*q^175 + 
(120*zeta^3 - 360*zeta - 120)*q^177 + (-60*zeta + 60)*q^179 + (50*zeta - 
50)*q^181 + (-20*zeta^3 + 60*zeta + 20)*q^183 - 60*q^185 - 120*zeta*q^188 + 
(40*zeta + 40)*q^189 + (60*zeta + 60)*q^191 + (130*zeta^3 - 390*zeta + 
130)*q^193 - 120*q^195 + (-60*zeta^3 + 180*zeta)*q^196 + (-90*zeta^3 + 270*zeta 
+ 90)*q^197 + (40*zeta - 40)*q^199 + (20*zeta - 20)*q^201 + (60*zeta^3 - 
180*zeta - 60)*q^203 + (-240*zeta^3 + 720*zeta)*q^204 - 180*q^205 + (-30*zeta^3 
+ 90*zeta - 30)*q^207 + (80*zeta + 80)*q^211 + 120*zeta*q^212 + (120*zeta^3 - 
360*zeta + 120)*q^213 - 300*q^215 + (40*zeta^3 - 120*zeta - 40)*q^217 + 
(-20*zeta + 20)*q^219 + (60*zeta - 60)*q^221 + (-50*zeta^3 + 150*zeta + 
50)*q^223 + 30*q^225 + (30*zeta^3 - 90*zeta + 30)*q^227 + 160*zeta*q^228 + 
(70*zeta + 70)*q^229 + (-30*zeta^3 + 90*zeta - 30)*q^233 - 180*q^235 + 
(240*zeta^3 - 720*zeta)*q^236 + (80*zeta^3 - 240*zeta - 80)*q^237 + (-120*zeta +
120)*q^239 + (-70*zeta + 70)*q^241 + (50*zeta^3 - 150*zeta - 50)*q^243 + 
(-40*zeta^3 + 120*zeta)*q^244 + 90*q^245 + (40*zeta^3 - 120*zeta + 40)*q^247 + 
(-60*zeta - 60)*q^249 - 40*zeta*q^252 + 360*q^255 + (30*zeta^3 - 90*zeta - 
30)*q^257 + (20*zeta - 20)*q^259 + (-30*zeta + 30)*q^261 + (-90*zeta^3 + 
270*zeta + 90)*q^263 + 180*q^265 + (-60*zeta^3 + 180*zeta - 60)*q^267 + 
40*zeta*q^268 + (90*zeta + 90)*q^269 + (-100*zeta - 100)*q^271 + (-40*zeta^3 + 
120*zeta - 40)*q^273 + (-240*zeta^3 + 720*zeta)*q^276 + (-130*zeta^3 + 390*zeta 
+ 130)*q^277 + (-20*zeta + 20)*q^279 + (-30*zeta + 30)*q^281 + (70*zeta^3 - 
210*zeta - 70)*q^283 + (240*zeta^3 - 720*zeta)*q^284 - 240*q^285 + (-60*zeta^3 +
180*zeta - 60)*q^287 + (95*zeta + 95)*q^289 + (20*zeta + 20)*q^291 - 
40*zeta*q^292 + (-150*zeta^3 + 450*zeta - 150)*q^293 + 360*q^295 + (60*zeta - 
60)*q^299 + (100*zeta - 100)*q^301 + (-60*zeta^3 + 180*zeta + 60)*q^303 - 
60*q^305 + (-10*zeta^3 + 30*zeta - 10)*q^307 + (-140*zeta - 140)*q^309 + 
(-60*zeta - 60)*q^311 + (-110*zeta^3 + 330*zeta - 110)*q^313 + 60*q^315 + 
(160*zeta^3 - 480*zeta)*q^316 + (30*zeta^3 - 90*zeta - 30)*q^317 + (-60*zeta + 
60)*q^321 + (120*zeta^3 - 360*zeta - 120)*q^323 + (220*zeta^3 - 660*zeta)*q^324 
+ 60*q^325 + (20*zeta^3 - 60*zeta + 20)*q^327 + (-60*zeta - 60)*q^329 + 
(-40*zeta - 40)*q^331 - 120*zeta*q^332 + (10*zeta^3 - 30*zeta + 10)*q^333 + 
60*q^335 + (-10*zeta^3 + 30*zeta + 10)*q^337 + (60*zeta - 60)*q^339 + 
(-100*zeta^3 + 300*zeta + 100)*q^343 + 360*q^345 + (150*zeta^3 - 450*zeta + 
150)*q^347 - 240*zeta*q^348 + (-50*zeta - 50)*q^349 + (-40*zeta - 40)*q^351 + 
(90*zeta^3 - 270*zeta + 90)*q^353 - 360*q^355 + (-120*zeta^3 + 360*zeta)*q^356 +
(-120*zeta^3 + 360*zeta + 120)*q^357 + (120*zeta - 120)*q^359 + (15*zeta - 
15)*q^361 + (110*zeta^3 - 330*zeta - 110)*q^363 + (-80*zeta^3 + 240*zeta)*q^364 
- 60*q^365 + (110*zeta^3 - 330*zeta + 110)*q^367 + (30*zeta + 30)*q^369 + 
(60*zeta + 60)*q^371 - 160*zeta*q^372 + (130*zeta^3 - 390*zeta + 130)*q^373 - 
60*q^375 + (-60*zeta^3 + 180*zeta + 60)*q^377 + (-140*zeta + 140)*q^379 + 
(20*zeta - 20)*q^381 + (30*zeta^3 - 90*zeta - 30)*q^383 + (50*zeta^3 - 150*zeta 
+ 50)*q^387 + 40*zeta*q^388 + (-30*zeta - 30)*q^389 + (180*zeta + 180)*q^391 + 
240*q^395 + (-10*zeta^3 + 30*zeta + 10)*q^397 + (80*zeta - 80)*q^399 + (150*zeta
- 150)*q^401 + (-40*zeta^3 + 120*zeta + 40)*q^403 + (-120*zeta^3 + 
360*zeta)*q^404 + 330*q^405 + (-170*zeta - 170)*q^409 + (180*zeta + 180)*q^411 -
280*zeta*q^412 + (120*zeta^3 - 360*zeta + 120)*q^413 + 180*q^415 + (-40*zeta^3 +
120*zeta + 40)*q^417 + (180*zeta - 180)*q^419 + (-130*zeta + 130)*q^421 + 
(-30*zeta^3 + 90*zeta + 30)*q^423 - 180*q^425 + (-20*zeta^3 + 60*zeta - 
20)*q^427 - 120*zeta*q^428 + (-180*zeta - 180)*q^431 + (10*zeta^3 - 30*zeta + 
10)*q^433 - 360*q^435 + (40*zeta^3 - 120*zeta)*q^436 + (120*zeta^3 - 360*zeta - 
120)*q^437 + (40*zeta - 40)*q^439 + (15*zeta - 15)*q^441 + (30*zeta^3 - 90*zeta 
- 30)*q^443 + (80*zeta^3 - 240*zeta)*q^444 + 180*q^445 + (-60*zeta^3 + 180*zeta 
- 60)*q^447 + (30*zeta + 30)*q^449 + 120*zeta*q^452 + (-200*zeta^3 + 600*zeta - 
200)*q^453 + 120*q^455 + (-130*zeta^3 + 390*zeta + 130)*q^457 + (-120*zeta + 
120)*q^459 + (-150*zeta + 150)*q^461 + (70*zeta^3 - 210*zeta - 70)*q^463 - 
240*q^465 + (150*zeta^3 - 450*zeta + 150)*q^467 + 40*zeta*q^468 + (20*zeta + 
20)*q^469 + (-220*zeta - 220)*q^471 + 120*q^475 + (-240*zeta^3 + 720*zeta)*q^476
+ (30*zeta^3 - 90*zeta - 30)*q^477 + (-120*zeta + 120)*q^479 + (-20*zeta + 
20)*q^481 + (-120*zeta^3 + 360*zeta + 120)*q^483 + (220*zeta^3 - 660*zeta)*q^484
- 60*q^485 + (-130*zeta^3 + 390*zeta - 130)*q^487 + (100*zeta + 100)*q^489 + 
240*zeta*q^492 + (-180*zeta^3 + 540*zeta - 180)*q^493 + (120*zeta^3 - 360*zeta -
120)*q^497 + (-20*zeta + 20)*q^499 + (180*zeta - 180)*q^501 + (-90*zeta^3 + 
270*zeta + 90)*q^503 - 180*q^505 + (-90*zeta^3 + 270*zeta - 90)*q^507 + 
40*zeta*q^508 + (30*zeta + 30)*q^509 + (-20*zeta - 20)*q^511 + (-80*zeta^3 + 
240*zeta - 80)*q^513 + 420*q^515 + (400*zeta^3 - 1200*zeta)*q^516 + (60*zeta - 
60)*q^519 + (30*zeta - 30)*q^521 + (70*zeta^3 - 210*zeta - 70)*q^523 - 120*q^525
+ (-120*zeta^3 + 360*zeta - 120)*q^527 + (65*zeta + 65)*q^529 + (-60*zeta - 
60)*q^531 + 160*zeta*q^532 + (60*zeta^3 - 180*zeta + 60)*q^533 - 180*q^535 + 
(-120*zeta^3 + 360*zeta + 120)*q^537 + (-70*zeta + 70)*q^541 + (100*zeta^3 - 
300*zeta - 100)*q^543 - 60*q^545 + (-130*zeta^3 + 390*zeta - 130)*q^547 + 
360*zeta*q^548 + (10*zeta + 10)*q^549 + (120*zeta + 120)*q^551 + (80*zeta^3 - 
240*zeta + 80)*q^553 - 120*q^555 + (-80*zeta^3 + 240*zeta)*q^556 + (150*zeta^3 -
450*zeta - 150)*q^557 + (-100*zeta + 100)*q^559 + (-90*zeta^3 + 270*zeta + 
90)*q^563 + (-240*zeta^3 + 720*zeta)*q^564 + 180*q^565 + (110*zeta^3 - 330*zeta 
+ 110)*q^567 + (150*zeta + 150)*q^569 + (-40*zeta - 40)*q^571 + (120*zeta^3 - 
360*zeta + 120)*q^573 - 180*q^575 + (110*zeta^3 - 330*zeta - 110)*q^577 + 
(-260*zeta + 260)*q^579 + (-60*zeta + 60)*q^581 - 60*q^585 + (30*zeta^3 - 
90*zeta + 30)*q^587 + 120*zeta*q^588 + (80*zeta + 80)*q^589 + (180*zeta + 
180)*q^591 + (90*zeta^3 - 270*zeta + 90)*q^593 - 360*q^595 + (-120*zeta^3 + 
360*zeta)*q^596 + (80*zeta^3 - 240*zeta - 80)*q^597 + (50*zeta - 50)*q^601 + 
(10*zeta^3 - 30*zeta - 10)*q^603 + (-400*zeta^3 + 1200*zeta)*q^604 + 330*q^605 +
(110*zeta^3 - 330*zeta + 110)*q^607 + (-120*zeta - 120)*q^609 + (60*zeta + 
60)*q^611 + 120*zeta*q^612 + (10*zeta^3 - 30*zeta + 10)*q^613 - 360*q^615 + 
(30*zeta^3 - 90*zeta - 30)*q^617 + (100*zeta - 100)*q^619 + (-120*zeta + 
120)*q^621 + (-60*zeta^3 + 180*zeta + 60)*q^623 + 30*q^625 - 440*zeta*q^628 + 
(-60*zeta - 60)*q^629 + (140*zeta + 140)*q^631 + (160*zeta^3 - 480*zeta + 
160)*q^633 + 60*q^635 + (240*zeta^3 - 720*zeta)*q^636 + (30*zeta^3 - 90*zeta - 
30)*q^637 + (-60*zeta + 60)*q^639 + (90*zeta - 90)*q^641 + (70*zeta^3 - 210*zeta
- 70)*q^643 + (-240*zeta^3 + 720*zeta)*q^644 - 600*q^645 + (-210*zeta^3 + 
630*zeta - 210)*q^647 + (-80*zeta - 80)*q^651 + 200*zeta*q^652 + (210*zeta^3 - 
630*zeta + 210)*q^653 + (-10*zeta^3 + 30*zeta + 10)*q^657 + (180*zeta - 
180)*q^659 + (110*zeta - 110)*q^661 + (120*zeta^3 - 360*zeta - 120)*q^663 + 
240*q^665 + (-180*zeta^3 + 540*zeta - 180)*q^667 + 360*zeta*q^668 + (100*zeta + 
100)*q^669 + (-230*zeta^3 + 690*zeta - 230)*q^673 - 120*q^675 + (-180*zeta^3 + 
540*zeta)*q^676 + (-90*zeta^3 + 270*zeta + 90)*q^677 + (20*zeta - 20)*q^679 + 
(-60*zeta + 60)*q^681 + (-210*zeta^3 + 630*zeta + 210)*q^683 + (80*zeta^3 - 
240*zeta)*q^684 - 540*q^685 + (140*zeta^3 - 420*zeta + 140)*q^687 + (-60*zeta - 
60)*q^689 + (-40*zeta - 40)*q^691 + 120*zeta*q^692 - 120*q^695 + (180*zeta^3 - 
540*zeta - 180)*q^697 + (60*zeta - 60)*q^699 + (150*zeta - 150)*q^701 + 
(-40*zeta^3 + 120*zeta + 40)*q^703 - 360*q^705 + (-60*zeta^3 + 180*zeta - 
60)*q^707 - 480*zeta*q^708 + (-170*zeta - 170)*q^709 + (-40*zeta - 40)*q^711 + 
(-120*zeta^3 + 360*zeta - 120)*q^713 + (-240*zeta^3 + 720*zeta)*q^716 + 
(-240*zeta^3 + 720*zeta + 240)*q^717 + (-120*zeta + 120)*q^719 + (-140*zeta + 
140)*q^721 + (-140*zeta^3 + 420*zeta + 140)*q^723 + (200*zeta^3 - 
600*zeta)*q^724 + 180*q^725 + (230*zeta^3 - 690*zeta + 230)*q^727 + (65*zeta + 
65)*q^729 + (-300*zeta - 300)*q^731 + 80*zeta*q^732 + (-110*zeta^3 + 330*zeta - 
110)*q^733 + 180*q^735 + (100*zeta - 100)*q^739 + (-80*zeta + 80)*q^741 + 
(30*zeta^3 - 90*zeta - 30)*q^743 + 180*q^745 + (-30*zeta^3 + 90*zeta - 30)*q^747
+ (-60*zeta - 60)*q^749 + (20*zeta + 20)*q^751 + 600*q^755 + (160*zeta^3 - 
480*zeta)*q^756 + (110*zeta^3 - 330*zeta - 110)*q^757 + (-210*zeta + 210)*q^761 
+ (20*zeta^3 - 60*zeta - 20)*q^763 + (240*zeta^3 - 720*zeta)*q^764 + 180*q^765 +
(-120*zeta^3 + 360*zeta - 120)*q^767 + (10*zeta + 10)*q^769 + (-60*zeta - 
60)*q^771 - 520*zeta*q^772 + (-150*zeta^3 + 450*zeta - 150)*q^773 + 120*q^775 + 
(40*zeta^3 - 120*zeta - 40)*q^777 + (-120*zeta + 120)*q^779 + (120*zeta^3 - 
360*zeta - 120)*q^783 + 660*q^785 + (-130*zeta^3 + 390*zeta - 130)*q^787 + 
360*zeta*q^788 + (180*zeta + 180)*q^789 + (60*zeta + 60)*q^791 + (20*zeta^3 - 
60*zeta + 20)*q^793 + 360*q^795 + (160*zeta^3 - 480*zeta)*q^796 + (-210*zeta^3 +
630*zeta + 210)*q^797 + (180*zeta - 180)*q^799 + (30*zeta - 30)*q^801 + 
(80*zeta^3 - 240*zeta)*q^804 - 360*q^805 + (180*zeta^3 - 540*zeta + 180)*q^807 +
(-30*zeta - 30)*q^809 + (80*zeta + 80)*q^811 - 240*zeta*q^812 + (-200*zeta^3 + 
600*zeta - 200)*q^813 - 300*q^815 + (-200*zeta^3 + 600*zeta + 200)*q^817 + 
(20*zeta - 20)*q^819 + (270*zeta - 270)*q^821 + (190*zeta^3 - 570*zeta - 
190)*q^823 + (150*zeta^3 - 450*zeta + 150)*q^827 + 120*zeta*q^828 + (10*zeta + 
10)*q^829 + (260*zeta + 260)*q^831 + (90*zeta^3 - 270*zeta + 90)*q^833 + 
540*q^835 + (80*zeta^3 - 240*zeta - 80)*q^837 + (-240*zeta + 240)*q^839 + 
(-35*zeta + 35)*q^841 + (-60*zeta^3 + 180*zeta + 60)*q^843 + (320*zeta^3 - 
960*zeta)*q^844 + 270*q^845 + (110*zeta^3 - 330*zeta + 110)*q^847 + (-140*zeta -
140)*q^849 + (-60*zeta - 60)*q^851 - 480*zeta*q^852 + (250*zeta^3 - 750*zeta + 
250)*q^853 - 120*q^855 + (-90*zeta^3 + 270*zeta + 90)*q^857 + (-20*zeta + 
20)*q^859 + (120*zeta - 120)*q^861 + (30*zeta^3 - 90*zeta - 30)*q^863 + 
180*q^865 + (190*zeta^3 - 570*zeta + 190)*q^867 - 160*zeta*q^868 + (-20*zeta - 
20)*q^871 + (10*zeta^3 - 30*zeta + 10)*q^873 + 60*q^875 + (-80*zeta^3 + 
240*zeta)*q^876 + (-130*zeta^3 + 390*zeta + 130)*q^877 + (300*zeta - 300)*q^879 
+ (90*zeta - 90)*q^881 + (70*zeta^3 - 210*zeta - 70)*q^883 + (240*zeta^3 - 
720*zeta)*q^884 + 720*q^885 + (-90*zeta^3 + 270*zeta - 90)*q^887 + (20*zeta + 
20)*q^889 + 200*zeta*q^892 + (120*zeta^3 - 360*zeta + 120)*q^893 - 360*q^895 + 
(120*zeta^3 - 360*zeta - 120)*q^897 + (-120*zeta + 120)*q^899 + (-180*zeta + 
180)*q^901 + (200*zeta^3 - 600*zeta - 200)*q^903 + 300*q^905 + (230*zeta^3 - 
690*zeta + 230)*q^907 - 120*zeta*q^908 + (30*zeta + 30)*q^909 + (-60*zeta - 
60)*q^911 - 120*q^915 + (280*zeta^3 - 840*zeta)*q^916 + (-80*zeta + 80)*q^919 + 
(20*zeta - 20)*q^921 + (-120*zeta^3 + 360*zeta + 120)*q^923 + 60*q^925 + 
(-70*zeta^3 + 210*zeta - 70)*q^927 + (-210*zeta - 210)*q^929 + (-60*zeta - 
60)*q^931 + 120*zeta*q^932 + (-120*zeta^3 + 360*zeta - 120)*q^933 + (110*zeta^3 
- 330*zeta - 110)*q^937 + (220*zeta - 220)*q^939 + (90*zeta - 90)*q^941 + 
(180*zeta^3 - 540*zeta - 180)*q^943 - 240*q^945 + (-90*zeta^3 + 270*zeta - 
90)*q^947 - 320*zeta*q^948 + (20*zeta + 20)*q^949 + (-60*zeta - 60)*q^951 + 
(-30*zeta^3 + 90*zeta - 30)*q^953 - 360*q^955 + (-480*zeta^3 + 1440*zeta)*q^956 
+ (180*zeta - 180)*q^959 + (75*zeta - 75)*q^961 + (-30*zeta^3 + 90*zeta + 
30)*q^963 + (-280*zeta^3 + 840*zeta)*q^964 - 780*q^965 + (110*zeta^3 - 330*zeta 
+ 110)*q^967 + (-240*zeta - 240)*q^969 + (120*zeta + 120)*q^971 - 200*zeta*q^972
+ (-40*zeta^3 + 120*zeta - 40)*q^973 + 120*q^975 + (-90*zeta^3 + 270*zeta + 
90)*q^977 + (-10*zeta + 10)*q^981 + (-90*zeta^3 + 270*zeta + 90)*q^983 - 
540*q^985 + (-120*zeta^3 + 360*zeta - 120)*q^987 - 160*zeta*q^988 + (-300*zeta -
300)*q^989 + (20*zeta + 20)*q^991 + (-80*zeta^3 + 240*zeta - 80)*q^993 + 
240*q^995 + (-240*zeta^3 + 720*zeta)*q^996 + (-130*zeta^3 + 390*zeta + 
130)*q^997 + (40*zeta - 40)*q^999 + (-360*zeta^3 + 1080*zeta + 360)*q^1003 + 
120*q^1005 + (-120*zeta^3 + 360*zeta - 120)*q^1007 + (250*zeta + 250)*q^1009 + 
(20*zeta + 20)*q^1011 + (90*zeta^3 - 270*zeta + 90)*q^1013 + 360*q^1015 + 
(30*zeta^3 - 90*zeta - 30)*q^1017 + (180*zeta - 180)*q^1019 + (-70*zeta + 
70)*q^1021 + 180*q^1025 + (-80*zeta^3 + 240*zeta - 80)*q^1027 - 120*zeta*q^1028 
+ (200*zeta + 200)*q^1029 + (-60*zeta - 60)*q^1031 + (10*zeta^3 - 30*zeta + 
10)*q^1033 + 180*q^1035 + (80*zeta^3 - 240*zeta)*q^1036 + (60*zeta^3 - 180*zeta 
- 60)*q^1037 + (-80*zeta + 80)*q^1039 + (-300*zeta + 300)*q^1041 + (-60*zeta^3 +
180*zeta + 60)*q^1043 + (-120*zeta^3 + 360*zeta)*q^1044 + (-100*zeta^3 + 
300*zeta - 100)*q^1047 + (210*zeta + 210)*q^1049 + (-40*zeta - 40)*q^1051 + 
360*zeta*q^1052 + (-110*zeta^3 + 330*zeta - 110)*q^1053 - 480*q^1055 + 
(-200*zeta^3 + 600*zeta + 200)*q^1057 + (-180*zeta + 180)*q^1059 + (-270*zeta + 
270)*q^1061 + (-50*zeta^3 + 150*zeta + 50)*q^1063 - 720*q^1065 + 240*zeta*q^1068
+ (-230*zeta - 230)*q^1069 + (60*zeta + 60)*q^1071 + (60*zeta^3 - 180*zeta + 
60)*q^1073 + 300*q^1075 + (360*zeta^3 - 1080*zeta)*q^1076 + (240*zeta^3 - 
720*zeta - 240)*q^1077 + (60*zeta - 60)*q^1079 + (180*zeta - 180)*q^1081 + 
(30*zeta^3 - 90*zeta - 30)*q^1083 + (-400*zeta^3 + 1200*zeta)*q^1084 + 
240*q^1085 + (110*zeta^3 - 330*zeta + 110)*q^1087 + (-55*zeta - 55)*q^1089 + 
(-240*zeta - 240)*q^1091 + 160*zeta*q^1092 + (-110*zeta^3 + 330*zeta - 
110)*q^1093 - 120*q^1095 + (150*zeta^3 - 450*zeta - 150)*q^1097 + (-220*zeta + 
220)*q^1099 + O(q^1100), (zeta^3 - 2*zeta^2 - 4*zeta + 5)*q + (2*zeta^3 - 
8*zeta)*q^2 + (3*zeta^3 - 6*zeta^2 - 6*zeta + 15)*q^3 + (6*zeta^3 - 12*zeta)*q^6
+ (2*zeta^3 + 4*zeta^2 - 4*zeta - 10)*q^7 + (-6*zeta^3 - 12*zeta^2 + 24*zeta + 
30)*q^9 + (zeta^3 + 2*zeta^2 - 4*zeta - 5)*q^11 + (-4*zeta^3 - 8*zeta^2 + 8*zeta
+ 20)*q^13 + (4*zeta^3 - 8*zeta)*q^14 + (5*zeta^3 - 10*zeta^2 - 10*zeta + 
25)*q^17 + (-12*zeta^3 + 48*zeta)*q^18 + (-zeta^3 + 2*zeta^2 + 4*zeta - 5)*q^19 
+ (-6*zeta^3 + 12*zeta^2 + 24*zeta - 30)*q^21 + (2*zeta^3 - 8*zeta)*q^22 + 
(2*zeta^3 - 4*zeta^2 - 4*zeta + 10)*q^23 + (-8*zeta^3 + 16*zeta)*q^26 + 
(-9*zeta^3 - 18*zeta^2 + 18*zeta + 45)*q^27 + (8*zeta^3 + 16*zeta^2 - 32*zeta - 
40)*q^29 + (10*zeta^3 + 20*zeta^2 - 40*zeta - 50)*q^31 + (3*zeta^3 + 6*zeta^2 - 
6*zeta - 15)*q^33 + (10*zeta^3 - 20*zeta)*q^34 + (-6*zeta^3 + 12*zeta^2 + 
12*zeta - 30)*q^37 + (-2*zeta^3 + 8*zeta)*q^38 + (12*zeta^3 - 24*zeta^2 - 
48*zeta + 60)*q^39 + (-3*zeta^3 + 6*zeta^2 + 12*zeta - 15)*q^41 + (-12*zeta^3 + 
48*zeta)*q^42 + (-4*zeta^3 + 8*zeta^2 + 8*zeta - 20)*q^43 + (4*zeta^3 - 
8*zeta)*q^46 + (4*zeta^3 + 8*zeta^2 - 8*zeta - 20)*q^47 + (3*zeta^3 + 6*zeta^2 -
12*zeta - 15)*q^49 + (-15*zeta^3 - 30*zeta^2 + 60*zeta + 75)*q^51 + (-6*zeta^3 -
12*zeta^2 + 12*zeta + 30)*q^53 + (-18*zeta^3 + 36*zeta)*q^54 + (-3*zeta^3 + 
6*zeta^2 + 6*zeta - 15)*q^57 + (16*zeta^3 - 64*zeta)*q^58 + (-8*zeta^3 + 
16*zeta^2 + 32*zeta - 40)*q^59 + (10*zeta^3 - 20*zeta^2 - 40*zeta + 50)*q^61 + 
(20*zeta^3 - 80*zeta)*q^62 + (-12*zeta^3 + 24*zeta^2 + 24*zeta - 60)*q^63 + 
(6*zeta^3 - 12*zeta)*q^66 + (-zeta^3 - 2*zeta^2 + 2*zeta + 5)*q^67 + (-6*zeta^3 
- 12*zeta^2 + 24*zeta + 30)*q^69 + (-12*zeta^3 - 24*zeta^2 + 48*zeta + 60)*q^71 
+ (-3*zeta^3 - 6*zeta^2 + 6*zeta + 15)*q^73 + (-12*zeta^3 + 24*zeta)*q^74 + 
(2*zeta^3 - 4*zeta^2 - 4*zeta + 10)*q^77 + (24*zeta^3 - 96*zeta)*q^78 + 
(-6*zeta^3 + 12*zeta^2 + 24*zeta - 30)*q^79 + (9*zeta^3 - 18*zeta^2 - 36*zeta + 
45)*q^81 + (-6*zeta^3 + 24*zeta)*q^82 + (13*zeta^3 - 26*zeta^2 - 26*zeta + 
65)*q^83 + (-8*zeta^3 + 16*zeta)*q^86 + (24*zeta^3 + 48*zeta^2 - 48*zeta - 
120)*q^87 + (9*zeta^3 + 18*zeta^2 - 36*zeta - 45)*q^89 + (8*zeta^3 + 16*zeta^2 -
32*zeta - 40)*q^91 + (30*zeta^3 + 60*zeta^2 - 60*zeta - 150)*q^93 + (8*zeta^3 - 
16*zeta)*q^94 + (-14*zeta^3 + 28*zeta^2 + 28*zeta - 70)*q^97 + (6*zeta^3 - 
24*zeta)*q^98 + (-6*zeta^3 + 12*zeta^2 + 24*zeta - 30)*q^99 + (6*zeta^3 - 
12*zeta^2 - 24*zeta + 30)*q^101 + (-30*zeta^3 + 120*zeta)*q^102 + (-4*zeta^3 + 
8*zeta^2 + 8*zeta - 20)*q^103 + (-12*zeta^3 + 24*zeta)*q^106 + (-15*zeta^3 - 
30*zeta^2 + 30*zeta + 75)*q^107 + (-14*zeta^3 - 28*zeta^2 + 56*zeta + 70)*q^109 
+ (18*zeta^3 + 36*zeta^2 - 72*zeta - 90)*q^111 + (9*zeta^3 + 18*zeta^2 - 18*zeta
- 45)*q^113 + (-6*zeta^3 + 12*zeta)*q^114 + (24*zeta^3 - 48*zeta^2 - 48*zeta + 
120)*q^117 + (-16*zeta^3 + 64*zeta)*q^118 + (-10*zeta^3 + 20*zeta^2 + 40*zeta - 
50)*q^119 + (-10*zeta^3 + 20*zeta^2 + 40*zeta - 50)*q^121 + (20*zeta^3 - 
80*zeta)*q^122 + (-9*zeta^3 + 18*zeta^2 + 18*zeta - 45)*q^123 + (-24*zeta^3 + 
48*zeta)*q^126 + (-6*zeta^3 - 12*zeta^2 + 12*zeta + 30)*q^127 + (12*zeta^3 + 
24*zeta^2 - 48*zeta - 60)*q^129 + (-12*zeta^3 - 24*zeta^2 + 48*zeta + 60)*q^131 
+ (-2*zeta^3 - 4*zeta^2 + 4*zeta + 10)*q^133 + (-2*zeta^3 + 4*zeta)*q^134 + 
(13*zeta^3 - 26*zeta^2 - 26*zeta + 65)*q^137 + (-12*zeta^3 + 48*zeta)*q^138 + 
(-9*zeta^3 + 18*zeta^2 + 36*zeta - 45)*q^139 + (-12*zeta^3 + 24*zeta^2 + 48*zeta
- 60)*q^141 + (-24*zeta^3 + 96*zeta)*q^142 + (-4*zeta^3 + 8*zeta^2 + 8*zeta - 
20)*q^143 + (-6*zeta^3 + 12*zeta)*q^146 + (9*zeta^3 + 18*zeta^2 - 18*zeta - 
45)*q^147 + (-8*zeta^3 - 16*zeta^2 + 32*zeta + 40)*q^149 + (2*zeta^3 + 4*zeta^2 
- 8*zeta - 10)*q^151 + (-30*zeta^3 - 60*zeta^2 + 60*zeta + 150)*q^153 + 
(4*zeta^3 - 8*zeta)*q^154 + (-14*zeta^3 + 28*zeta^2 + 28*zeta - 70)*q^157 + 
(-12*zeta^3 + 48*zeta)*q^158 + (18*zeta^3 - 36*zeta^2 - 72*zeta + 90)*q^159 + 
(-4*zeta^3 + 8*zeta^2 + 16*zeta - 20)*q^161 + (18*zeta^3 - 72*zeta)*q^162 + 
(-7*zeta^3 + 14*zeta^2 + 14*zeta - 35)*q^163 + (26*zeta^3 - 52*zeta)*q^166 + 
(-12*zeta^3 - 24*zeta^2 + 24*zeta + 60)*q^167 + (-3*zeta^3 - 6*zeta^2 + 12*zeta 
+ 15)*q^169 + (6*zeta^3 + 12*zeta^2 - 24*zeta - 30)*q^171 + (-8*zeta^3 - 
16*zeta^2 + 16*zeta + 40)*q^173 + (48*zeta^3 - 96*zeta)*q^174 + (-24*zeta^3 + 
48*zeta^2 + 48*zeta - 120)*q^177 + (18*zeta^3 - 72*zeta)*q^178 + (19*zeta^3 - 
38*zeta^2 - 76*zeta + 95)*q^179 + (2*zeta^3 - 4*zeta^2 - 8*zeta + 10)*q^181 + 
(16*zeta^3 - 64*zeta)*q^182 + (30*zeta^3 - 60*zeta^2 - 60*zeta + 150)*q^183 + 
(60*zeta^3 - 120*zeta)*q^186 + (5*zeta^3 + 10*zeta^2 - 10*zeta - 25)*q^187 + 
(18*zeta^3 + 36*zeta^2 - 72*zeta - 90)*q^189 + (-10*zeta^3 - 20*zeta^2 + 40*zeta
+ 50)*q^191 + (11*zeta^3 + 22*zeta^2 - 22*zeta - 55)*q^193 + (-28*zeta^3 + 
56*zeta)*q^194 + (-2*zeta^3 + 4*zeta^2 + 4*zeta - 10)*q^197 + (-12*zeta^3 + 
48*zeta)*q^198 + (28*zeta^3 - 56*zeta^2 - 112*zeta + 140)*q^199 + (3*zeta^3 - 
6*zeta^2 - 12*zeta + 15)*q^201 + (12*zeta^3 - 48*zeta)*q^202 + (16*zeta^3 - 
32*zeta^2 - 32*zeta + 80)*q^203 + (-8*zeta^3 + 16*zeta)*q^206 + (-12*zeta^3 - 
24*zeta^2 + 24*zeta + 60)*q^207 + (-zeta^3 - 2*zeta^2 + 4*zeta + 5)*q^209 + 
(-zeta^3 - 2*zeta^2 + 4*zeta + 5)*q^211 + (-36*zeta^3 - 72*zeta^2 + 72*zeta + 
180)*q^213 + (-30*zeta^3 + 60*zeta)*q^214 + (20*zeta^3 - 40*zeta^2 - 40*zeta + 
100)*q^217 + (-28*zeta^3 + 112*zeta)*q^218 + (9*zeta^3 - 18*zeta^2 - 36*zeta + 
45)*q^219 + (20*zeta^3 - 40*zeta^2 - 80*zeta + 100)*q^221 + (36*zeta^3 - 
144*zeta)*q^222 + (4*zeta^3 - 8*zeta^2 - 8*zeta + 20)*q^223 + (18*zeta^3 - 
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
132*zeta - 165)*q^579 + (-26*zeta^3 + 52*zeta^2 + 104*zeta - 130)*q^581 + 
(84*zeta^3 - 336*zeta)*q^582 + (-6*zeta^3 + 12*zeta^2 + 12*zeta - 30)*q^583 + 
(4*zeta^3 - 8*zeta)*q^586 + (3*zeta^3 + 6*zeta^2 - 6*zeta - 15)*q^587 + 
(-10*zeta^3 - 20*zeta^2 + 40*zeta + 50)*q^589 + (6*zeta^3 + 12*zeta^2 - 24*zeta 
- 30)*q^591 + (-39*zeta^3 - 78*zeta^2 + 78*zeta + 195)*q^593 + (-18*zeta^3 + 
36*zeta)*q^594 + (84*zeta^3 - 168*zeta^2 - 168*zeta + 420)*q^597 + (16*zeta^3 - 
64*zeta)*q^598 + (-30*zeta^3 + 60*zeta^2 + 120*zeta - 150)*q^599 + (43*zeta^3 - 
86*zeta^2 - 172*zeta + 215)*q^601 + (16*zeta^3 - 64*zeta)*q^602 + (6*zeta^3 - 
12*zeta^2 - 12*zeta + 30)*q^603 + (36*zeta^3 - 72*zeta)*q^606 + (-48*zeta^3 - 
96*zeta^2 + 192*zeta + 240)*q^609 + (16*zeta^3 + 32*zeta^2 - 64*zeta - 80)*q^611
+ (-30*zeta^3 - 60*zeta^2 + 60*zeta + 150)*q^613 + (26*zeta^3 - 52*zeta)*q^614 +
(-18*zeta^3 + 36*zeta^2 + 36*zeta - 90)*q^617 + (24*zeta^3 - 96*zeta)*q^618 + 
(-44*zeta^3 + 88*zeta^2 + 176*zeta - 220)*q^619 + (18*zeta^3 - 36*zeta^2 - 
72*zeta + 90)*q^621 + (28*zeta^3 - 112*zeta)*q^622 + (18*zeta^3 - 36*zeta^2 - 
36*zeta + 90)*q^623 + (44*zeta^3 - 88*zeta)*q^626 + (-3*zeta^3 - 6*zeta^2 + 
6*zeta + 15)*q^627 + (30*zeta^3 + 60*zeta^2 - 120*zeta - 150)*q^629 + (10*zeta^3
+ 20*zeta^2 - 40*zeta - 50)*q^631 + (-3*zeta^3 - 6*zeta^2 + 6*zeta + 15)*q^633 +
(24*zeta^3 - 48*zeta)*q^634 + (-12*zeta^3 + 24*zeta^2 + 24*zeta - 60)*q^637 + 
(16*zeta^3 - 64*zeta)*q^638 + (72*zeta^3 - 144*zeta^2 - 288*zeta + 360)*q^639 + 
(-6*zeta^3 + 12*zeta^2 + 24*zeta - 30)*q^641 + (90*zeta^3 - 360*zeta)*q^642 + 
(12*zeta^3 - 24*zeta^2 - 24*zeta + 60)*q^643 + (-10*zeta^3 + 20*zeta)*q^646 + 
(12*zeta^3 + 24*zeta^2 - 24*zeta - 60)*q^647 + (-8*zeta^3 - 16*zeta^2 + 32*zeta 
+ 40)*q^649 + (-60*zeta^3 - 120*zeta^2 + 240*zeta + 300)*q^651 + (34*zeta^3 + 
68*zeta^2 - 68*zeta - 170)*q^653 + (-84*zeta^3 + 168*zeta)*q^654 + (18*zeta^3 - 
36*zeta^2 - 36*zeta + 90)*q^657 + (-16*zeta^3 + 64*zeta)*q^658 + (21*zeta^3 - 
42*zeta^2 - 84*zeta + 105)*q^659 + (24*zeta^3 - 48*zeta^2 - 96*zeta + 120)*q^661
+ (-54*zeta^3 + 216*zeta)*q^662 + (60*zeta^3 - 120*zeta^2 - 120*zeta + 
300)*q^663 + (72*zeta^3 - 144*zeta)*q^666 + (16*zeta^3 + 32*zeta^2 - 32*zeta - 
80)*q^667 + (-12*zeta^3 - 24*zeta^2 + 48*zeta + 60)*q^669 + (10*zeta^3 + 
20*zeta^2 - 40*zeta - 50)*q^671 + (6*zeta^3 + 12*zeta^2 - 12*zeta - 30)*q^673 + 
(38*zeta^3 - 76*zeta)*q^674 + (-32*zeta^3 + 64*zeta^2 + 64*zeta - 160)*q^677 + 
(-54*zeta^3 + 216*zeta)*q^678 + (28*zeta^3 - 56*zeta^2 - 112*zeta + 140)*q^679 +
(36*zeta^3 - 72*zeta^2 - 144*zeta + 180)*q^681 + (20*zeta^3 - 80*zeta)*q^682 + 
(3*zeta^3 - 6*zeta^2 - 6*zeta + 15)*q^683 + (40*zeta^3 - 80*zeta)*q^686 + 
(-12*zeta^3 - 24*zeta^2 + 24*zeta + 60)*q^687 + (-24*zeta^3 - 48*zeta^2 + 
96*zeta + 120)*q^689 + (-19*zeta^3 - 38*zeta^2 + 76*zeta + 95)*q^691 + 
(-12*zeta^3 - 24*zeta^2 + 24*zeta + 60)*q^693 + (34*zeta^3 - 68*zeta)*q^694 + 
(-15*zeta^3 + 30*zeta^2 + 30*zeta - 75)*q^697 + (36*zeta^3 - 144*zeta)*q^698 + 
(18*zeta^3 - 36*zeta^2 - 72*zeta + 90)*q^699 + (-28*zeta^3 + 56*zeta^2 + 
112*zeta - 140)*q^701 + (-72*zeta^3 + 288*zeta)*q^702 + (6*zeta^3 - 12*zeta^2 - 
12*zeta + 30)*q^703 + (20*zeta^3 - 40*zeta)*q^706 + (12*zeta^3 + 24*zeta^2 - 
24*zeta - 60)*q^707 + (28*zeta^3 + 56*zeta^2 - 112*zeta - 140)*q^709 + 
(36*zeta^3 + 72*zeta^2 - 144*zeta - 180)*q^711 + (20*zeta^3 + 40*zeta^2 - 
40*zeta - 100)*q^713 + (-60*zeta^3 + 120*zeta)*q^714 + (-72*zeta^3 + 144*zeta^2 
+ 144*zeta - 360)*q^717 + (36*zeta^3 - 144*zeta)*q^718 + (14*zeta^3 - 28*zeta^2 
- 56*zeta + 70)*q^719 + (8*zeta^3 - 16*zeta^2 - 32*zeta + 40)*q^721 + 
(-36*zeta^3 + 144*zeta)*q^722 + (-21*zeta^3 + 42*zeta^2 + 42*zeta - 105)*q^723 +
(-60*zeta^3 + 120*zeta)*q^726 + (8*zeta^3 + 16*zeta^2 - 16*zeta - 40)*q^727 + 
(27*zeta^3 + 54*zeta^2 - 108*zeta - 135)*q^729 + (20*zeta^3 + 40*zeta^2 - 
80*zeta - 100)*q^731 + (-36*zeta^3 - 72*zeta^2 + 72*zeta + 180)*q^733 + 
(40*zeta^3 - 80*zeta)*q^734 + (-zeta^3 + 2*zeta^2 + 2*zeta - 5)*q^737 + 
(36*zeta^3 - 144*zeta)*q^738 + (-12*zeta^3 + 24*zeta^2 + 48*zeta - 60)*q^739 + 
(-12*zeta^3 + 24*zeta^2 + 48*zeta - 60)*q^741 + (24*zeta^3 - 96*zeta)*q^742 + 
(-30*zeta^3 + 60*zeta^2 + 60*zeta - 150)*q^743 + (-20*zeta^3 + 40*zeta)*q^746 + 
(-78*zeta^3 - 156*zeta^2 + 156*zeta + 390)*q^747 + (30*zeta^3 + 60*zeta^2 - 
120*zeta - 150)*q^749 + (24*zeta^3 + 48*zeta^2 - 96*zeta - 120)*q^751 + 
(45*zeta^3 + 90*zeta^2 - 90*zeta - 225)*q^753 + (-64*zeta^3 + 128*zeta)*q^754 + 
(32*zeta^3 - 64*zeta^2 - 64*zeta + 160)*q^757 + (10*zeta^3 - 40*zeta)*q^758 + 
(-6*zeta^3 + 12*zeta^2 + 24*zeta - 30)*q^759 + (-3*zeta^3 + 6*zeta^2 + 12*zeta -
15)*q^761 + (36*zeta^3 - 144*zeta)*q^762 + (-28*zeta^3 + 56*zeta^2 + 56*zeta - 
140)*q^763 + (-12*zeta^3 + 24*zeta)*q^766 + (32*zeta^3 + 64*zeta^2 - 64*zeta - 
160)*q^767 + (-13*zeta^3 - 26*zeta^2 + 52*zeta + 65)*q^769 + (-90*zeta^3 - 
180*zeta^2 + 360*zeta + 450)*q^771 + (48*zeta^3 - 96*zeta)*q^774 + (36*zeta^3 - 
72*zeta^2 - 72*zeta + 180)*q^777 + (-60*zeta^3 + 240*zeta)*q^778 + (3*zeta^3 - 
6*zeta^2 - 12*zeta + 15)*q^779 + (-12*zeta^3 + 24*zeta^2 + 48*zeta - 60)*q^781 +
(-20*zeta^3 + 80*zeta)*q^782 + (-72*zeta^3 + 144*zeta^2 + 144*zeta - 360)*q^783 
+ (-72*zeta^3 + 144*zeta)*q^786 + (-52*zeta^3 - 104*zeta^2 + 104*zeta + 
260)*q^787 + (90*zeta^3 + 180*zeta^2 - 360*zeta - 450)*q^789 + (-18*zeta^3 - 
36*zeta^2 + 72*zeta + 90)*q^791 + (-40*zeta^3 - 80*zeta^2 + 80*zeta + 200)*q^793
+ (8*zeta^3 - 16*zeta)*q^794 + (42*zeta^3 - 84*zeta^2 - 84*zeta + 210)*q^797 + 
(12*zeta^3 - 48*zeta)*q^798 + (-20*zeta^3 + 40*zeta^2 + 80*zeta - 100)*q^799 + 
(-54*zeta^3 + 108*zeta^2 + 216*zeta - 270)*q^801 + (42*zeta^3 - 168*zeta)*q^802 
+ (-3*zeta^3 + 6*zeta^2 + 6*zeta - 15)*q^803 + (-80*zeta^3 + 160*zeta)*q^806 + 
(48*zeta^3 + 96*zeta^2 - 96*zeta - 240)*q^807 + (-18*zeta^3 - 36*zeta^2 + 
72*zeta + 90)*q^809 + (44*zeta^3 + 88*zeta^2 - 176*zeta - 220)*q^811 + 
(-18*zeta^3 - 36*zeta^2 + 36*zeta + 90)*q^813 + (-12*zeta^3 + 24*zeta)*q^814 + 
(4*zeta^3 - 8*zeta^2 - 8*zeta + 20)*q^817 + (22*zeta^3 - 88*zeta)*q^818 + 
(-48*zeta^3 + 96*zeta^2 + 192*zeta - 240)*q^819 + (-38*zeta^3 + 76*zeta^2 + 
152*zeta - 190)*q^821 + (-78*zeta^3 + 312*zeta)*q^822 + (-28*zeta^3 + 56*zeta^2 
+ 56*zeta - 140)*q^823 + (-32*zeta^3 + 64*zeta)*q^826 + (3*zeta^3 + 6*zeta^2 - 
6*zeta - 15)*q^827 + (20*zeta^3 + 40*zeta^2 - 80*zeta - 100)*q^829 + (-24*zeta^3
- 48*zeta^2 + 96*zeta + 120)*q^831 + (15*zeta^3 + 30*zeta^2 - 30*zeta - 
75)*q^833 + (-54*zeta^3 + 108*zeta)*q^834 + (-90*zeta^3 + 180*zeta^2 + 180*zeta 
- 450)*q^837 + (6*zeta^3 - 24*zeta)*q^838 + (16*zeta^3 - 32*zeta^2 - 64*zeta + 
80)*q^839 + (35*zeta^3 - 70*zeta^2 - 140*zeta + 175)*q^841 + (-24*zeta^3 + 
96*zeta)*q^842 + (-6*zeta^3 + 12*zeta^2 + 12*zeta - 30)*q^843 + (-48*zeta^3 + 
96*zeta)*q^846 + (-20*zeta^3 - 40*zeta^2 + 40*zeta + 100)*q^847 + (-3*zeta^3 - 
6*zeta^2 + 12*zeta + 15)*q^849 + (12*zeta^3 + 24*zeta^2 - 48*zeta - 60)*q^851 + 
(22*zeta^3 + 44*zeta^2 - 44*zeta - 110)*q^853 + (40*zeta^3 - 80*zeta)*q^854 + 
(-3*zeta^3 + 6*zeta^2 + 6*zeta - 15)*q^857 + (24*zeta^3 - 96*zeta)*q^858 + 
(-41*zeta^3 + 82*zeta^2 + 164*zeta - 205)*q^859 + (18*zeta^3 - 36*zeta^2 - 
72*zeta + 90)*q^861 + (-68*zeta^3 + 272*zeta)*q^862 + (-48*zeta^3 + 96*zeta^2 + 
96*zeta - 240)*q^863 + (-10*zeta^3 + 20*zeta)*q^866 + (-24*zeta^3 - 48*zeta^2 + 
48*zeta + 120)*q^867 + (-6*zeta^3 - 12*zeta^2 + 24*zeta + 30)*q^869 + (-4*zeta^3
- 8*zeta^2 + 16*zeta + 20)*q^871 + (84*zeta^3 + 168*zeta^2 - 168*zeta - 
420)*q^873 + (-4*zeta^3 + 8*zeta)*q^874 + (4*zeta^3 - 8*zeta^2 - 8*zeta + 
20)*q^877 + (-32*zeta^3 + 128*zeta)*q^878 + (-6*zeta^3 + 12*zeta^2 + 24*zeta - 
30)*q^879 + (30*zeta^3 - 60*zeta^2 - 120*zeta + 150)*q^881 + (-36*zeta^3 + 
144*zeta)*q^882 + (-5*zeta^3 + 10*zeta^2 + 10*zeta - 25)*q^883 + (42*zeta^3 - 
84*zeta)*q^886 + (28*zeta^3 + 56*zeta^2 - 56*zeta - 140)*q^887 + (12*zeta^3 + 
24*zeta^2 - 48*zeta - 60)*q^889 + (9*zeta^3 + 18*zeta^2 - 36*zeta - 45)*q^891 + 
(-4*zeta^3 - 8*zeta^2 + 8*zeta + 20)*q^893 + (-48*zeta^3 + 96*zeta)*q^894 + 
(24*zeta^3 - 48*zeta^2 - 48*zeta + 120)*q^897 + (78*zeta^3 - 312*zeta)*q^898 + 
(80*zeta^3 - 160*zeta^2 - 320*zeta + 400)*q^899 + (30*zeta^3 - 60*zeta^2 - 
120*zeta + 150)*q^901 + (-6*zeta^3 + 24*zeta)*q^902 + (24*zeta^3 - 48*zeta^2 - 
48*zeta + 120)*q^903 + (12*zeta^3 - 24*zeta)*q^906 + (12*zeta^3 + 24*zeta^2 - 
24*zeta - 60)*q^907 + (-36*zeta^3 - 72*zeta^2 + 144*zeta + 180)*q^909 + 
(28*zeta^3 + 56*zeta^2 - 112*zeta - 140)*q^911 + (13*zeta^3 + 26*zeta^2 - 
26*zeta - 65)*q^913 + (2*zeta^3 - 4*zeta)*q^914 + (-24*zeta^3 + 48*zeta^2 + 
48*zeta - 120)*q^917 + (90*zeta^3 - 360*zeta)*q^918 + (34*zeta^3 - 68*zeta^2 - 
136*zeta + 170)*q^919 + (-39*zeta^3 + 78*zeta^2 + 156*zeta - 195)*q^921 + 
(24*zeta^3 - 96*zeta)*q^922 + (48*zeta^3 - 96*zeta^2 - 96*zeta + 240)*q^923 + 
(72*zeta^3 - 144*zeta)*q^926 + (24*zeta^3 + 48*zeta^2 - 48*zeta - 120)*q^927 + 
(2*zeta^3 + 4*zeta^2 - 8*zeta - 10)*q^929 + (-3*zeta^3 - 6*zeta^2 + 12*zeta + 
15)*q^931 + (42*zeta^3 + 84*zeta^2 - 84*zeta - 210)*q^933 + (-56*zeta^3 + 
112*zeta)*q^934 + (-5*zeta^3 + 10*zeta^2 + 10*zeta - 25)*q^937 + (4*zeta^3 - 
16*zeta)*q^938 + (-66*zeta^3 + 132*zeta^2 + 264*zeta - 330)*q^939 + (4*zeta^3 - 
8*zeta^2 - 16*zeta + 20)*q^941 + (84*zeta^3 - 336*zeta)*q^942 + (-6*zeta^3 + 
12*zeta^2 + 12*zeta - 30)*q^943 + (-8*zeta^3 + 16*zeta)*q^946 + (40*zeta^3 + 
80*zeta^2 - 80*zeta - 200)*q^947 + (-12*zeta^3 - 24*zeta^2 + 48*zeta + 60)*q^949
+ (-36*zeta^3 - 72*zeta^2 + 144*zeta + 180)*q^951 + (39*zeta^3 + 78*zeta^2 - 
78*zeta - 195)*q^953 + (72*zeta^3 - 144*zeta)*q^954 + (24*zeta^3 - 48*zeta^2 - 
48*zeta + 120)*q^957 + (-44*zeta^3 + 176*zeta)*q^958 + (-26*zeta^3 + 52*zeta^2 +
104*zeta - 130)*q^959 + (69*zeta^3 - 138*zeta^2 - 276*zeta + 345)*q^961 + 
(-48*zeta^3 + 192*zeta)*q^962 + (90*zeta^3 - 180*zeta^2 - 180*zeta + 450)*q^963 
+ (-24*zeta^3 + 48*zeta)*q^966 + (15*zeta^3 + 30*zeta^2 - 60*zeta - 75)*q^969 + 
(-31*zeta^3 - 62*zeta^2 + 124*zeta + 155)*q^971 + (-18*zeta^3 - 36*zeta^2 + 
36*zeta + 90)*q^973 + (-76*zeta^3 + 152*zeta)*q^974 + (17*zeta^3 - 34*zeta^2 - 
34*zeta + 85)*q^977 + (42*zeta^3 - 168*zeta)*q^978 + (9*zeta^3 - 18*zeta^2 - 
36*zeta + 45)*q^979 + (84*zeta^3 - 168*zeta^2 - 336*zeta + 420)*q^981 + 
(72*zeta^3 - 288*zeta)*q^982 + (-6*zeta^3 + 12*zeta^2 + 12*zeta - 30)*q^983 + 
(80*zeta^3 - 160*zeta)*q^986 + (-24*zeta^3 - 48*zeta^2 + 48*zeta + 120)*q^987 + 
(8*zeta^3 + 16*zeta^2 - 32*zeta - 40)*q^989 + (38*zeta^3 + 76*zeta^2 - 152*zeta 
- 190)*q^991 + (-81*zeta^3 - 162*zeta^2 + 162*zeta + 405)*q^993 + (-48*zeta^3 + 
96*zeta)*q^994 + (-12*zeta^3 + 24*zeta^2 + 24*zeta - 60)*q^997 + (8*zeta^3 - 
32*zeta)*q^998 + (-54*zeta^3 + 108*zeta^2 + 216*zeta - 270)*q^999 + (8*zeta^3 - 
16*zeta^2 - 32*zeta + 40)*q^1001 + (72*zeta^3 - 288*zeta)*q^1002 + (-40*zeta^3 +
80*zeta^2 + 80*zeta - 200)*q^1003 + (-72*zeta^3 + 144*zeta)*q^1006 + (6*zeta^3 +
12*zeta^2 - 12*zeta - 30)*q^1007 + (-29*zeta^3 - 58*zeta^2 + 116*zeta + 
145)*q^1009 + (-57*zeta^3 - 114*zeta^2 + 228*zeta + 285)*q^1011 + (16*zeta^3 + 
32*zeta^2 - 32*zeta - 80)*q^1013 + (-18*zeta^3 + 36*zeta)*q^1014 + (-54*zeta^3 +
108*zeta^2 + 108*zeta - 270)*q^1017 + (-68*zeta^3 + 272*zeta)*q^1018 + 
(-35*zeta^3 + 70*zeta^2 + 140*zeta - 175)*q^1019 + (10*zeta^3 - 20*zeta^2 - 
40*zeta + 50)*q^1021 + (12*zeta^3 - 48*zeta)*q^1022 + (30*zeta^3 - 60*zeta^2 - 
60*zeta + 150)*q^1023 + (18*zeta^3 - 36*zeta)*q^1026 + (24*zeta^3 + 48*zeta^2 - 
48*zeta - 120)*q^1027 + (-60*zeta^3 - 120*zeta^2 + 240*zeta + 300)*q^1029 + 
(-34*zeta^3 - 68*zeta^2 + 136*zeta + 170)*q^1031 + (-35*zeta^3 - 70*zeta^2 + 
70*zeta + 175)*q^1033 + (8*zeta^3 - 16*zeta)*q^1034 + (50*zeta^3 - 100*zeta^2 - 
100*zeta + 250)*q^1037 + (48*zeta^3 - 192*zeta)*q^1038 + (16*zeta^3 - 32*zeta^2 
- 64*zeta + 80)*q^1039 + (-51*zeta^3 + 102*zeta^2 + 204*zeta - 255)*q^1041 + 
(-70*zeta^3 + 280*zeta)*q^1042 + (-16*zeta^3 + 32*zeta^2 + 32*zeta - 80)*q^1043 
+ (70*zeta^3 - 140*zeta)*q^1046 + (54*zeta^3 + 108*zeta^2 - 108*zeta - 
270)*q^1047 + (-39*zeta^3 - 78*zeta^2 + 156*zeta + 195)*q^1049 + (7*zeta^3 + 
14*zeta^2 - 28*zeta - 35)*q^1051 + (-36*zeta^3 - 72*zeta^2 + 72*zeta + 
180)*q^1053 + (100*zeta^3 - 200*zeta)*q^1054 + (4*zeta^3 - 8*zeta^2 - 8*zeta + 
20)*q^1057 + (38*zeta^3 - 152*zeta)*q^1058 + (-30*zeta^3 + 60*zeta^2 + 120*zeta 
- 150)*q^1059 + (-58*zeta^3 + 116*zeta^2 + 232*zeta - 290)*q^1061 + (96*zeta^3 -
384*zeta)*q^1062 + (56*zeta^3 - 112*zeta^2 - 112*zeta + 280)*q^1063 + (24*zeta^3
- 48*zeta)*q^1066 + (-14*zeta^3 - 28*zeta^2 + 28*zeta + 70)*q^1067 + (-34*zeta^3
- 68*zeta^2 + 136*zeta + 170)*q^1069 + (60*zeta^3 + 120*zeta^2 - 240*zeta - 
300)*q^1071 + (-48*zeta^3 - 96*zeta^2 + 96*zeta + 240)*q^1073 + (114*zeta^3 - 
228*zeta)*q^1074 + (54*zeta^3 - 108*zeta^2 - 108*zeta + 270)*q^1077 + (6*zeta^3 
- 24*zeta)*q^1078 + (52*zeta^3 - 104*zeta^2 - 208*zeta + 260)*q^1079 + 
(-8*zeta^3 + 16*zeta^2 + 32*zeta - 40)*q^1081 + (-64*zeta^3 + 256*zeta)*q^1082 +
(-54*zeta^3 + 108*zeta^2 + 108*zeta - 270)*q^1083 + (12*zeta^3 - 24*zeta)*q^1086
+ (-28*zeta^3 - 56*zeta^2 + 56*zeta + 140)*q^1087 + (60*zeta^3 + 120*zeta^2 - 
240*zeta - 300)*q^1089 + (-27*zeta^3 - 54*zeta^2 + 108*zeta + 135)*q^1091 + 
(58*zeta^3 + 116*zeta^2 - 116*zeta - 290)*q^1093 + (-38*zeta^3 + 76*zeta)*q^1094
+ (-41*zeta^3 + 82*zeta^2 + 82*zeta - 205)*q^1097 + (-120*zeta^3 + 
480*zeta)*q^1098 + (28*zeta^3 - 56*zeta^2 - 112*zeta + 140)*q^1099 + O(q^1100), 
(-2*zeta^2 + zeta + 5)*q + (2*zeta^3 - 6*zeta)*q^5 + (4*zeta^3 - 12*zeta)*q^6 + 
(-2*zeta^2 - zeta + 5)*q^9 - 8*zeta*q^10 + (-8*zeta^2 - 4*zeta + 20)*q^11 + 
(-4*zeta^3 + 12*zeta)*q^14 + (-8*zeta^3 + 24*zeta)*q^15 + (-8*zeta^2 + 4*zeta + 
20)*q^19 + (-8*zeta^2 + 4*zeta + 20)*q^21 + (6*zeta^3 - 18*zeta)*q^25 + 
(8*zeta^3 - 24*zeta)*q^26 + (-4*zeta^2 - 2*zeta + 10)*q^29 - 8*zeta*q^30 + 
(8*zeta^3 - 24*zeta)*q^35 + (16*zeta^2 - 8*zeta - 40)*q^39 + (-4*zeta^2 + 2*zeta
+ 10)*q^41 + (-2*zeta^3 + 6*zeta)*q^45 + (-4*zeta^3 + 12*zeta)*q^46 + (6*zeta^2 
+ 3*zeta - 15)*q^49 + 16*zeta*q^50 + (8*zeta^3 - 24*zeta)*q^54 + (-8*zeta^3 + 
24*zeta)*q^55 + (-24*zeta^2 + 12*zeta + 60)*q^59 + (20*zeta^2 - 10*zeta - 
50)*q^61 + (-16*zeta^3 + 48*zeta)*q^65 + (-16*zeta^3 + 48*zeta)*q^66 + (8*zeta^2
+ 4*zeta - 20)*q^69 + 8*zeta*q^70 + (16*zeta^2 + 8*zeta - 40)*q^71 + (-8*zeta^3 
+ 24*zeta)*q^74 + (16*zeta^3 - 48*zeta)*q^75 + (32*zeta^2 - 16*zeta - 80)*q^79 +
(22*zeta^2 - 11*zeta - 55)*q^81 + (-12*zeta^3 + 36*zeta)*q^86 + (-12*zeta^2 - 
6*zeta + 30)*q^89 + 8*zeta*q^90 + (16*zeta^2 + 8*zeta - 40)*q^91 + (12*zeta^3 - 
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
48*zeta)*q^575 + (-64*zeta^2 + 32*zeta + 160)*q^579 + (-8*zeta^2 + 4*zeta + 
20)*q^581 + (16*zeta^3 - 48*zeta)*q^585 + (56*zeta^3 - 168*zeta)*q^586 - 
96*zeta*q^590 + (-48*zeta^2 - 24*zeta + 120)*q^591 + (-32*zeta^3 + 
96*zeta)*q^594 + (80*zeta^2 - 40*zeta - 200)*q^599 + (-36*zeta^2 + 18*zeta + 
90)*q^601 + (10*zeta^3 - 30*zeta)*q^605 + (24*zeta^3 - 72*zeta)*q^606 + 
(-16*zeta^2 - 8*zeta + 40)*q^609 + 80*zeta*q^610 + (-48*zeta^2 - 24*zeta + 
120)*q^611 + (4*zeta^3 - 12*zeta)*q^614 + (-16*zeta^3 + 48*zeta)*q^615 + 
(8*zeta^2 - 4*zeta - 20)*q^619 + (-16*zeta^2 + 8*zeta + 40)*q^621 + (14*zeta^3 -
42*zeta)*q^625 + (16*zeta^3 - 48*zeta)*q^626 - 8*zeta*q^630 + (-80*zeta^2 - 
40*zeta + 200)*q^631 + (-24*zeta^3 + 72*zeta)*q^634 + (-24*zeta^3 + 
72*zeta)*q^635 + (16*zeta^2 - 8*zeta - 40)*q^639 + (12*zeta^2 - 6*zeta - 
30)*q^641 + (24*zeta^3 - 72*zeta)*q^645 + (-96*zeta^2 - 48*zeta + 240)*q^649 - 
48*zeta*q^650 + (24*zeta^3 - 72*zeta)*q^654 + (-24*zeta^3 + 72*zeta)*q^655 + 
(-72*zeta^2 + 36*zeta + 180)*q^659 + (-28*zeta^2 + 14*zeta + 70)*q^661 + 
(32*zeta^3 - 96*zeta)*q^665 + (8*zeta^3 - 24*zeta)*q^666 + (-24*zeta^2 - 12*zeta
+ 60)*q^669 + 56*zeta*q^670 + (80*zeta^2 + 40*zeta - 200)*q^671 + (32*zeta^3 - 
96*zeta)*q^674 + (32*zeta^3 - 96*zeta)*q^675 + (64*zeta^2 - 32*zeta - 160)*q^679
+ (8*zeta^2 - 4*zeta - 20)*q^681 + (32*zeta^3 - 96*zeta)*q^685 + (-40*zeta^3 + 
120*zeta)*q^686 + (32*zeta^2 + 16*zeta - 80)*q^689 - 32*zeta*q^690 + (72*zeta^2 
+ 36*zeta - 180)*q^691 + (-44*zeta^3 + 132*zeta)*q^694 + (-8*zeta^3 + 
24*zeta)*q^695 + (-96*zeta^2 + 48*zeta + 240)*q^699 + (-44*zeta^2 + 22*zeta + 
110)*q^701 + (-24*zeta^3 + 72*zeta)*q^705 + (76*zeta^2 + 38*zeta - 190)*q^709 - 
64*zeta*q^710 + (32*zeta^2 + 16*zeta - 80)*q^711 + (64*zeta^3 - 192*zeta)*q^715 
+ (32*zeta^2 - 16*zeta - 80)*q^719 + (-56*zeta^2 + 28*zeta + 140)*q^721 + 
(-12*zeta^3 + 36*zeta)*q^725 + (20*zeta^3 - 60*zeta)*q^726 + (-26*zeta^2 - 
13*zeta + 65)*q^729 - 32*zeta*q^730 + (-20*zeta^3 + 60*zeta)*q^734 + (-24*zeta^3
+ 72*zeta)*q^735 + (24*zeta^2 - 12*zeta - 60)*q^739 + (64*zeta^2 - 32*zeta - 
160)*q^741 + (-36*zeta^3 + 108*zeta)*q^745 + (-40*zeta^3 + 120*zeta)*q^746 + 
(40*zeta^2 + 20*zeta - 100)*q^749 + 88*zeta*q^750 + (-32*zeta^2 - 16*zeta + 
80)*q^751 + (-16*zeta^3 + 48*zeta)*q^754 + (-16*zeta^3 + 48*zeta)*q^755 + 
(32*zeta^2 - 16*zeta - 80)*q^759 + (76*zeta^2 - 38*zeta - 190)*q^761 + 
(12*zeta^3 - 36*zeta)*q^766 + (4*zeta^2 + 2*zeta - 10)*q^769 - 32*zeta*q^770 + 
(12*zeta^3 - 36*zeta)*q^774 + (-16*zeta^2 + 8*zeta + 40)*q^779 + (64*zeta^2 - 
32*zeta - 160)*q^781 + (-16*zeta^3 + 48*zeta)*q^785 + (-48*zeta^3 + 
144*zeta)*q^786 + (-120*zeta^2 - 60*zeta + 300)*q^789 + 128*zeta*q^790 + 
(64*zeta^2 + 32*zeta - 160)*q^791 + (72*zeta^3 - 216*zeta)*q^794 + (16*zeta^3 - 
48*zeta)*q^795 + (-12*zeta^2 + 6*zeta + 30)*q^801 + (-8*zeta^3 + 24*zeta)*q^805 
+ (84*zeta^2 + 42*zeta - 210)*q^809 + 88*zeta*q^810 + (-72*zeta^2 - 36*zeta + 
180)*q^811 + (32*zeta^3 - 96*zeta)*q^814 + (-8*zeta^3 + 24*zeta)*q^815 + 
(16*zeta^2 - 8*zeta - 40)*q^819 + (36*zeta^2 - 18*zeta - 90)*q^821 + (-64*zeta^3
+ 192*zeta)*q^825 + (-48*zeta^3 + 144*zeta)*q^826 + (-20*zeta^2 - 10*zeta + 
50)*q^829 - 8*zeta*q^830 + (-48*zeta^2 - 24*zeta + 120)*q^831 + (-16*zeta^3 + 
48*zeta)*q^834 + (72*zeta^3 - 216*zeta)*q^835 + (48*zeta^2 - 24*zeta - 
120)*q^839 + (50*zeta^2 - 25*zeta - 125)*q^841 + (-6*zeta^3 + 18*zeta)*q^845 + 
(-12*zeta^3 + 36*zeta)*q^846 + (24*zeta^2 + 12*zeta - 60)*q^849 + (-16*zeta^2 - 
8*zeta + 40)*q^851 + (40*zeta^3 - 120*zeta)*q^854 + (-8*zeta^3 + 24*zeta)*q^855 
+ (-88*zeta^2 + 44*zeta + 220)*q^859 + (-16*zeta^2 + 8*zeta + 40)*q^861 + 
(48*zeta^3 - 144*zeta)*q^865 + (128*zeta^2 + 64*zeta - 320)*q^869 + 
16*zeta*q^870 + (112*zeta^2 + 56*zeta - 280)*q^871 + (-16*zeta^3 + 
48*zeta)*q^874 + (-8*zeta^3 + 24*zeta)*q^875 + (112*zeta^2 - 56*zeta - 
280)*q^879 + (-20*zeta^2 + 10*zeta + 50)*q^881 + (-96*zeta^3 + 288*zeta)*q^885 +
(-12*zeta^3 + 36*zeta)*q^886 + (24*zeta^2 + 12*zeta - 60)*q^889 + 48*zeta*q^890 
+ (88*zeta^2 + 44*zeta - 220)*q^891 + (-72*zeta^3 + 216*zeta)*q^894 + (8*zeta^3 
- 24*zeta)*q^895 + (44*zeta^3 - 132*zeta)*q^905 + (-32*zeta^3 + 96*zeta)*q^906 +
(-12*zeta^2 - 6*zeta + 30)*q^909 - 64*zeta*q^910 + (96*zeta^2 + 48*zeta - 
240)*q^911 + (48*zeta^3 - 144*zeta)*q^914 + (80*zeta^3 - 240*zeta)*q^915 + 
(-48*zeta^2 + 24*zeta + 120)*q^919 + (8*zeta^2 - 4*zeta - 20)*q^921 + 
(-32*zeta^3 + 96*zeta)*q^925 + (-52*zeta^3 + 156*zeta)*q^926 + (-76*zeta^2 - 
38*zeta + 190)*q^929 + (24*zeta^2 + 12*zeta - 60)*q^931 + (36*zeta^3 - 
108*zeta)*q^934 + (32*zeta^2 - 16*zeta - 80)*q^939 + (-28*zeta^2 + 14*zeta + 
70)*q^941 + (16*zeta^3 - 48*zeta)*q^945 + (48*zeta^3 - 144*zeta)*q^946 + 
(-64*zeta^2 - 32*zeta + 160)*q^949 + 64*zeta*q^950 + (48*zeta^2 + 24*zeta - 
120)*q^951 + (8*zeta^3 - 24*zeta)*q^954 + (32*zeta^2 - 16*zeta - 80)*q^959 + 
(62*zeta^2 - 31*zeta - 155)*q^961 + (64*zeta^3 - 192*zeta)*q^965 + (-16*zeta^3 +
48*zeta)*q^966 + 64*zeta*q^970 + (-72*zeta^2 - 36*zeta + 180)*q^971 + (-4*zeta^3
+ 12*zeta)*q^974 + (-48*zeta^3 + 144*zeta)*q^975 + (-48*zeta^2 + 24*zeta + 
120)*q^979 + (12*zeta^2 - 6*zeta - 30)*q^981 + (-48*zeta^3 + 144*zeta)*q^985 + 
(-24*zeta^2 - 12*zeta + 60)*q^989 - 32*zeta*q^990 + (-64*zeta^2 - 32*zeta + 
160)*q^991 + (-32*zeta^3 + 96*zeta)*q^994 + (16*zeta^3 - 48*zeta)*q^995 + 
(-32*zeta^2 + 16*zeta + 80)*q^999 + (64*zeta^2 - 32*zeta - 160)*q^1001 + 
(56*zeta^3 - 168*zeta)*q^1005 + (-68*zeta^3 + 204*zeta)*q^1006 + (-28*zeta^2 - 
14*zeta + 70)*q^1009 - 48*zeta*q^1010 + (-64*zeta^2 - 32*zeta + 160)*q^1011 + 
(-12*zeta^3 + 36*zeta)*q^1014 + (-16*zeta^3 + 48*zeta)*q^1015 + (40*zeta^2 - 
20*zeta - 100)*q^1019 + (-60*zeta^2 + 30*zeta + 150)*q^1021 + (12*zeta^3 - 
36*zeta)*q^1025 + (32*zeta^3 - 96*zeta)*q^1026 + (80*zeta^2 + 40*zeta - 
200)*q^1029 - 56*zeta*q^1030 + (-48*zeta^2 - 24*zeta + 120)*q^1031 + (-48*zeta^3
+ 144*zeta)*q^1034 + (-8*zeta^3 + 24*zeta)*q^1035 + (-32*zeta^2 + 16*zeta + 
80)*q^1039 + (-88*zeta^2 + 44*zeta + 220)*q^1041 + (-32*zeta^3 + 96*zeta)*q^1045
+ (20*zeta^3 - 60*zeta)*q^1046 + (52*zeta^2 + 26*zeta - 130)*q^1049 + 
64*zeta*q^1050 + (24*zeta^2 + 12*zeta - 60)*q^1051 + (8*zeta^3 - 24*zeta)*q^1055
+ (116*zeta^2 - 58*zeta - 290)*q^1061 + (-64*zeta^3 + 192*zeta)*q^1065 + 
(16*zeta^3 - 48*zeta)*q^1066 + (12*zeta^2 + 6*zeta - 30)*q^1069 - 40*zeta*q^1070
+ (16*zeta^3 - 48*zeta)*q^1074 + (-48*zeta^3 + 144*zeta)*q^1075 + (16*zeta^2 - 
8*zeta - 40)*q^1079 + (-24*zeta^2 + 12*zeta + 60)*q^1081 + (88*zeta^3 - 
264*zeta)*q^1086 + (-10*zeta^2 - 5*zeta + 25)*q^1089 - 48*zeta*q^1090 + 
(-24*zeta^2 - 12*zeta + 60)*q^1091 + (68*zeta^3 - 204*zeta)*q^1094 + (-32*zeta^3
+ 96*zeta)*q^1095 + (-16*zeta^2 + 8*zeta + 40)*q^1099 + O(q^1100), 5*zeta*q^2 + 
(5*zeta^3 + 10*zeta^2 - 15*zeta - 25)*q^3 - 10*zeta*q^5 + (-5*zeta^3 + 10*zeta^2
+ 15*zeta - 25)*q^7 + (10*zeta^3 - 30*zeta)*q^10 + (10*zeta^3 - 20*zeta^2 - 
30*zeta + 50)*q^13 - 10*zeta*q^15 - 5*zeta*q^18 - 20*zeta*q^22 + (-5*zeta^3 - 
10*zeta^2 + 15*zeta + 25)*q^23 + 20*zeta*q^25 + (10*zeta^3 - 20*zeta^2 - 30*zeta
+ 50)*q^27 + (-40*zeta^3 + 120*zeta)*q^30 + (-20*zeta^3 + 40*zeta^2 + 60*zeta - 
100)*q^33 + 10*zeta*q^35 + (-10*zeta^3 - 20*zeta^2 + 30*zeta + 50)*q^37 + 
20*zeta*q^38 + 20*zeta*q^42 + (-15*zeta^3 - 30*zeta^2 + 45*zeta + 75)*q^43 + 
10*zeta*q^45 + (15*zeta^3 - 30*zeta^2 - 45*zeta + 75)*q^47 + (30*zeta^3 - 
90*zeta)*q^50 + (-10*zeta^3 + 20*zeta^2 + 30*zeta - 50)*q^53 + 40*zeta*q^55 + 
(20*zeta^3 + 40*zeta^2 - 60*zeta - 100)*q^57 - 10*zeta*q^58 + (5*zeta^3 + 
10*zeta^2 - 15*zeta - 25)*q^63 - 20*zeta*q^65 + (-35*zeta^3 + 70*zeta^2 + 
105*zeta - 175)*q^67 + (40*zeta^3 - 120*zeta)*q^70 + (20*zeta^3 - 40*zeta^2 - 
60*zeta + 100)*q^73 - 30*zeta*q^75 + (20*zeta^3 + 40*zeta^2 - 60*zeta - 
100)*q^77 - 40*zeta*q^78 + 10*zeta*q^82 + (5*zeta^3 + 10*zeta^2 - 15*zeta - 
25)*q^83 + (-10*zeta^3 + 20*zeta^2 + 30*zeta - 50)*q^87 + (-10*zeta^3 + 
30*zeta)*q^90 - 40*zeta*q^95 + (-40*zeta^3 - 80*zeta^2 + 120*zeta + 200)*q^97 + 
15*zeta*q^98 + (35*zeta^3 + 70*zeta^2 - 105*zeta - 175)*q^103 - 40*zeta*q^105 + 
(25*zeta^3 - 50*zeta^2 - 75*zeta + 125)*q^107 + (-40*zeta^3 + 120*zeta)*q^110 + 
(40*zeta^3 - 80*zeta^2 - 120*zeta + 200)*q^113 + 10*zeta*q^115 + (-10*zeta^3 - 
20*zeta^2 + 30*zeta + 50)*q^117 + 60*zeta*q^118 - 50*zeta*q^122 + (10*zeta^3 + 
20*zeta^2 - 30*zeta - 50)*q^123 + 10*zeta*q^125 + (15*zeta^3 - 30*zeta^2 - 
45*zeta + 75)*q^127 + (-80*zeta^3 + 240*zeta)*q^130 + (-20*zeta^3 + 40*zeta^2 + 
60*zeta - 100)*q^133 - 20*zeta*q^135 + (-20*zeta^3 - 40*zeta^2 + 60*zeta + 
100)*q^137 + 20*zeta*q^138 + 40*zeta*q^142 + (-40*zeta^3 - 80*zeta^2 + 120*zeta 
+ 200)*q^143 + 20*zeta*q^145 + (15*zeta^3 - 30*zeta^2 - 45*zeta + 75)*q^147 + 
(80*zeta^3 - 240*zeta)*q^150 + (10*zeta^3 + 20*zeta^2 - 30*zeta - 50)*q^157 - 
80*zeta*q^158 - 55*zeta*q^162 + (5*zeta^3 + 10*zeta^2 - 15*zeta - 25)*q^163 + 
40*zeta*q^165 + (-45*zeta^3 + 90*zeta^2 + 135*zeta - 225)*q^167 + (-30*zeta^3 + 
60*zeta^2 + 90*zeta - 150)*q^173 + 30*zeta*q^175 + (60*zeta^3 + 120*zeta^2 - 
180*zeta - 300)*q^177 - 30*zeta*q^178 + 40*zeta*q^182 + (-50*zeta^3 - 100*zeta^2
+ 150*zeta + 250)*q^183 + 20*zeta*q^185 + (40*zeta^3 - 120*zeta)*q^190 + 
(-40*zeta^3 + 80*zeta^2 + 120*zeta - 200)*q^193 + 80*zeta*q^195 + (30*zeta^3 + 
60*zeta^2 - 90*zeta - 150)*q^197 + 20*zeta*q^198 + 30*zeta*q^202 + (10*zeta^3 + 
20*zeta^2 - 30*zeta - 50)*q^203 - 20*zeta*q^205 + (5*zeta^3 - 10*zeta^2 - 
15*zeta + 25)*q^207 + (40*zeta^3 - 120*zeta)*q^210 + (40*zeta^3 - 80*zeta^2 - 
120*zeta + 200)*q^213 + 30*zeta*q^215 + 30*zeta*q^218 + 40*zeta*q^222 + 
(15*zeta^3 + 30*zeta^2 - 45*zeta - 75)*q^223 - 20*zeta*q^225 + (5*zeta^3 - 
10*zeta^2 - 15*zeta + 25)*q^227 + (40*zeta^3 - 120*zeta)*q^230 + (-60*zeta^3 + 
120*zeta^2 + 180*zeta - 300)*q^233 - 30*zeta*q^235 + (-80*zeta^3 - 160*zeta^2 + 
240*zeta + 400)*q^237 + 25*zeta*q^242 + (-25*zeta^3 - 50*zeta^2 + 75*zeta + 
125)*q^243 - 30*zeta*q^245 + (40*zeta^3 - 80*zeta^2 - 120*zeta + 200)*q^247 + 
(-110*zeta^3 + 330*zeta)*q^250 + (20*zeta^3 - 40*zeta^2 - 60*zeta + 100)*q^253 +
60*zeta*q^258 - 60*zeta*q^262 + (75*zeta^3 + 150*zeta^2 - 225*zeta - 375)*q^263 
+ 20*zeta*q^265 + (-30*zeta^3 + 60*zeta^2 + 90*zeta - 150)*q^267 + (-80*zeta^3 +
240*zeta)*q^270 + (40*zeta^3 - 80*zeta^2 - 120*zeta + 200)*q^273 - 80*zeta*q^275
+ (30*zeta^3 + 60*zeta^2 - 90*zeta - 150)*q^277 - 20*zeta*q^278 - 60*zeta*q^282 
+ (-15*zeta^3 - 30*zeta^2 + 45*zeta + 75)*q^283 - 40*zeta*q^285 + (-10*zeta^3 + 
20*zeta^2 + 30*zeta - 50)*q^287 + (-20*zeta^3 + 60*zeta)*q^290 + (70*zeta^3 - 
140*zeta^2 - 210*zeta + 350)*q^293 - 120*zeta*q^295 + (-40*zeta^3 - 80*zeta^2 + 
120*zeta + 200)*q^297 - 90*zeta*q^298 - 40*zeta*q^302 + (30*zeta^3 + 60*zeta^2 -
90*zeta - 150)*q^303 + 100*zeta*q^305 + (5*zeta^3 - 10*zeta^2 - 15*zeta + 
25)*q^307 + (20*zeta^3 - 40*zeta^2 - 60*zeta + 100)*q^313 - 10*zeta*q^315 + 
(-30*zeta^3 - 60*zeta^2 + 90*zeta + 150)*q^317 + 40*zeta*q^318 - 20*zeta*q^322 -
60*zeta*q^325 + (30*zeta^3 - 60*zeta^2 - 90*zeta + 150)*q^327 + (160*zeta^3 - 
480*zeta)*q^330 + (10*zeta^3 - 20*zeta^2 - 30*zeta + 50)*q^333 + 70*zeta*q^335 +
(40*zeta^3 + 80*zeta^2 - 120*zeta - 200)*q^337 - 15*zeta*q^338 - 20*zeta*q^342 +
(-50*zeta^3 - 100*zeta^2 + 150*zeta + 250)*q^343 - 40*zeta*q^345 + (-55*zeta^3 +
110*zeta^2 + 165*zeta - 275)*q^347 + (-80*zeta^3 + 240*zeta)*q^350 - 
80*zeta*q^355 + 20*zeta*q^358 + 110*zeta*q^362 + (25*zeta^3 + 50*zeta^2 - 
75*zeta - 125)*q^363 - 40*zeta*q^365 + (-25*zeta^3 + 50*zeta^2 + 75*zeta - 
125)*q^367 + (80*zeta^3 - 240*zeta)*q^370 + (-50*zeta^3 + 100*zeta^2 + 150*zeta 
- 250)*q^373 + 110*zeta*q^375 + (-20*zeta^3 - 40*zeta^2 + 60*zeta + 100)*q^377 +
40*zeta*q^378 + (15*zeta^3 + 30*zeta^2 - 45*zeta - 75)*q^383 - 40*zeta*q^385 + 
(15*zeta^3 - 30*zeta^2 - 45*zeta + 75)*q^387 + (-80*zeta^3 + 240*zeta)*q^390 + 
(-60*zeta^3 + 120*zeta^2 + 180*zeta - 300)*q^393 + 160*zeta*q^395 + (90*zeta^3 +
180*zeta^2 - 270*zeta - 450)*q^397 + 40*zeta*q^398 + 140*zeta*q^402 + 
110*zeta*q^405 + (40*zeta^3 - 80*zeta^2 - 120*zeta + 200)*q^407 + (20*zeta^3 - 
60*zeta)*q^410 + (-60*zeta^3 + 120*zeta^2 + 180*zeta - 300)*q^413 - 
10*zeta*q^415 + (-20*zeta^3 - 40*zeta^2 + 60*zeta + 100)*q^417 - 80*zeta*q^418 +
20*zeta*q^422 + (-15*zeta^3 - 30*zeta^2 + 45*zeta + 75)*q^423 + (50*zeta^3 - 
100*zeta^2 - 150*zeta + 250)*q^427 + (120*zeta^3 - 360*zeta)*q^430 + 
20*zeta*q^435 + (-20*zeta^3 - 40*zeta^2 + 60*zeta + 100)*q^437 - 80*zeta*q^438 +
(-15*zeta^3 - 30*zeta^2 + 45*zeta + 75)*q^443 + 60*zeta*q^445 + (-90*zeta^3 + 
180*zeta^2 + 270*zeta - 450)*q^447 + (-30*zeta^3 + 90*zeta)*q^450 + (-40*zeta^3 
+ 80*zeta^2 + 120*zeta - 200)*q^453 - 80*zeta*q^455 + (60*zeta^3 + 120*zeta^2 - 
180*zeta - 300)*q^457 + 30*zeta*q^458 - 80*zeta*q^462 + (-65*zeta^3 - 130*zeta^2
+ 195*zeta + 325)*q^463 + (45*zeta^3 - 90*zeta^2 - 135*zeta + 225)*q^467 + 
(-120*zeta^3 + 360*zeta)*q^470 + (60*zeta^3 - 120*zeta^2 - 180*zeta + 300)*q^473
+ 80*zeta*q^475 + (10*zeta^3 + 20*zeta^2 - 30*zeta - 50)*q^477 + 80*zeta*q^478 -
110*zeta*q^482 + (-20*zeta^3 - 40*zeta^2 + 60*zeta + 100)*q^483 + 80*zeta*q^485 
+ (-5*zeta^3 + 10*zeta^2 + 15*zeta - 25)*q^487 + (30*zeta^3 - 90*zeta)*q^490 - 
40*zeta*q^495 + (-40*zeta^3 - 80*zeta^2 + 120*zeta + 200)*q^497 - 20*zeta*q^498 
- 100*zeta*q^502 + (-85*zeta^3 - 170*zeta^2 + 255*zeta + 425)*q^503 - 
60*zeta*q^505 + (-15*zeta^3 + 30*zeta^2 + 45*zeta - 75)*q^507 + (40*zeta^3 - 
80*zeta^2 - 120*zeta + 200)*q^513 - 70*zeta*q^515 + (-60*zeta^3 - 120*zeta^2 + 
180*zeta + 300)*q^517 - 40*zeta*q^518 + 10*zeta*q^522 + (25*zeta^3 + 50*zeta^2 -
75*zeta - 125)*q^523 + 80*zeta*q^525 + (80*zeta^3 - 240*zeta)*q^530 + (20*zeta^3
- 40*zeta^2 - 60*zeta + 100)*q^533 - 50*zeta*q^535 + (20*zeta^3 + 40*zeta^2 - 
60*zeta - 100)*q^537 + 30*zeta*q^538 - 80*zeta*q^542 + (110*zeta^3 + 220*zeta^2 
- 330*zeta - 550)*q^543 - 60*zeta*q^545 + (85*zeta^3 - 170*zeta^2 - 255*zeta + 
425)*q^547 + (-120*zeta^3 + 360*zeta)*q^550 + (80*zeta^3 - 160*zeta^2 - 240*zeta
+ 400)*q^553 - 80*zeta*q^555 + (-30*zeta^3 - 60*zeta^2 + 90*zeta + 150)*q^557 + 
90*zeta*q^562 + (45*zeta^3 + 90*zeta^2 - 135*zeta - 225)*q^563 - 80*zeta*q^565 +
(55*zeta^3 - 110*zeta^2 - 165*zeta + 275)*q^567 + (-160*zeta^3 + 480*zeta)*q^570
+ 30*zeta*q^575 + (-80*zeta^3 - 160*zeta^2 + 240*zeta + 400)*q^577 + 
85*zeta*q^578 + 160*zeta*q^582 + (40*zeta^3 + 80*zeta^2 - 120*zeta - 200)*q^583 
+ 20*zeta*q^585 + (-95*zeta^3 + 190*zeta^2 + 285*zeta - 475)*q^587 + (120*zeta^3
- 360*zeta)*q^590 + (-40*zeta^3 + 80*zeta^2 + 120*zeta - 200)*q^593 + (40*zeta^3
+ 80*zeta^2 - 120*zeta - 200)*q^597 + 40*zeta*q^598 - 60*zeta*q^602 + (35*zeta^3
+ 70*zeta^2 - 105*zeta - 175)*q^603 - 50*zeta*q^605 + (-25*zeta^3 + 50*zeta^2 + 
75*zeta - 125)*q^607 + (-100*zeta^3 + 300*zeta)*q^610 + (-50*zeta^3 + 100*zeta^2
+ 150*zeta - 250)*q^613 - 20*zeta*q^615 + (20*zeta^3 + 40*zeta^2 - 60*zeta - 
100)*q^617 - 140*zeta*q^618 + 120*zeta*q^622 + (30*zeta^3 + 60*zeta^2 - 90*zeta 
- 150)*q^623 - 120*zeta*q^625 + (-80*zeta^3 + 160*zeta^2 + 240*zeta - 400)*q^627
+ (-40*zeta^3 + 120*zeta)*q^630 + (20*zeta^3 - 40*zeta^2 - 60*zeta + 100)*q^633 
- 30*zeta*q^635 + (30*zeta^3 + 60*zeta^2 - 90*zeta - 150)*q^637 + 40*zeta*q^638 
- 100*zeta*q^642 + (45*zeta^3 + 90*zeta^2 - 135*zeta - 225)*q^643 - 
120*zeta*q^645 + (-5*zeta^3 + 10*zeta^2 + 15*zeta - 25)*q^647 + (160*zeta^3 - 
480*zeta)*q^650 + (90*zeta^3 - 180*zeta^2 - 270*zeta + 450)*q^653 + 
120*zeta*q^655 + (-20*zeta^3 - 40*zeta^2 + 60*zeta + 100)*q^657 + 60*zeta*q^658 
+ 140*zeta*q^662 + 40*zeta*q^665 + (10*zeta^3 - 20*zeta^2 - 30*zeta + 50)*q^667 
+ (280*zeta^3 - 840*zeta)*q^670 + (-40*zeta^3 + 80*zeta^2 + 120*zeta - 
200)*q^673 - 60*zeta*q^675 + (30*zeta^3 + 60*zeta^2 - 90*zeta - 150)*q^677 - 
160*zeta*q^678 + (-95*zeta^3 - 190*zeta^2 + 285*zeta + 475)*q^683 + 
40*zeta*q^685 + (30*zeta^3 - 60*zeta^2 - 90*zeta + 150)*q^687 + (40*zeta^3 - 
120*zeta)*q^690 + (-20*zeta^3 + 40*zeta^2 + 60*zeta - 100)*q^693 + 40*zeta*q^695
- 10*zeta*q^698 - 80*zeta*q^702 + (-40*zeta^3 - 80*zeta^2 + 120*zeta + 
200)*q^703 + 120*zeta*q^705 + (-30*zeta^3 + 60*zeta^2 + 90*zeta - 150)*q^707 + 
(80*zeta^3 - 240*zeta)*q^710 + 80*zeta*q^715 + (80*zeta^3 + 160*zeta^2 - 
240*zeta - 400)*q^717 + 40*zeta*q^718 - 15*zeta*q^722 + (-110*zeta^3 - 
220*zeta^2 + 330*zeta + 550)*q^723 - 40*zeta*q^725 + (-45*zeta^3 + 90*zeta^2 + 
135*zeta - 225)*q^727 + (-160*zeta^3 + 480*zeta)*q^730 + (90*zeta^3 - 180*zeta^2
- 270*zeta + 450)*q^733 - 30*zeta*q^735 + (140*zeta^3 + 280*zeta^2 - 420*zeta - 
700)*q^737 - 10*zeta*q^738 - 40*zeta*q^742 + (75*zeta^3 + 150*zeta^2 - 225*zeta 
- 375)*q^743 + 180*zeta*q^745 + (-5*zeta^3 + 10*zeta^2 + 15*zeta - 25)*q^747 + 
(40*zeta^3 - 120*zeta)*q^750 + (-100*zeta^3 + 200*zeta^2 + 300*zeta - 500)*q^753
+ 80*zeta*q^755 + (-130*zeta^3 - 260*zeta^2 + 390*zeta + 650)*q^757 - 
100*zeta*q^758 - 60*zeta*q^762 + (-30*zeta^3 - 60*zeta^2 + 90*zeta + 150)*q^763 
+ (120*zeta^3 - 240*zeta^2 - 360*zeta + 600)*q^767 + (-160*zeta^3 + 
480*zeta)*q^770 + (-50*zeta^3 + 100*zeta^2 + 150*zeta - 250)*q^773 + (-40*zeta^3
- 80*zeta^2 + 120*zeta + 200)*q^777 + 150*zeta*q^778 + (-20*zeta^3 - 40*zeta^2 +
60*zeta + 100)*q^783 - 20*zeta*q^785 + (5*zeta^3 - 10*zeta^2 - 15*zeta + 
25)*q^787 + (-160*zeta^3 + 480*zeta)*q^790 + (-100*zeta^3 + 200*zeta^2 + 
300*zeta - 500)*q^793 - 80*zeta*q^795 + (-30*zeta^3 - 60*zeta^2 + 90*zeta + 
150)*q^797 + 80*zeta*q^798 - 70*zeta*q^802 + (-80*zeta^3 - 160*zeta^2 + 240*zeta
+ 400)*q^803 + 40*zeta*q^805 + (30*zeta^3 - 60*zeta^2 - 90*zeta + 150)*q^807 + 
(-110*zeta^3 + 330*zeta)*q^810 + (-80*zeta^3 + 160*zeta^2 + 240*zeta - 
400)*q^813 - 10*zeta*q^815 + (-60*zeta^3 - 120*zeta^2 + 180*zeta + 300)*q^817 - 
70*zeta*q^818 + 80*zeta*q^822 + (-5*zeta^3 - 10*zeta^2 + 15*zeta + 25)*q^823 + 
120*zeta*q^825 + (105*zeta^3 - 210*zeta^2 - 315*zeta + 525)*q^827 + (-40*zeta^3 
+ 120*zeta)*q^830 + 90*zeta*q^835 - 60*zeta*q^838 - 10*zeta*q^842 + (90*zeta^3 +
180*zeta^2 - 270*zeta - 450)*q^843 + 30*zeta*q^845 + (-25*zeta^3 + 50*zeta^2 + 
75*zeta - 125)*q^847 + (70*zeta^3 - 140*zeta^2 - 210*zeta + 350)*q^853 + 
40*zeta*q^855 + (20*zeta^3 + 40*zeta^2 - 60*zeta - 100)*q^857 + 160*zeta*q^858 +
80*zeta*q^862 + (-105*zeta^3 - 210*zeta^2 + 315*zeta + 525)*q^863 + 
60*zeta*q^865 + (85*zeta^3 - 170*zeta^2 - 255*zeta + 425)*q^867 + (80*zeta^3 - 
240*zeta)*q^870 + (40*zeta^3 - 80*zeta^2 - 120*zeta + 200)*q^873 - 
110*zeta*q^875 + (-110*zeta^3 - 220*zeta^2 + 330*zeta + 550)*q^877 + 
120*zeta*q^878 - 15*zeta*q^882 + (125*zeta^3 + 250*zeta^2 - 375*zeta - 
625)*q^883 - 120*zeta*q^885 + (-45*zeta^3 + 90*zeta^2 + 135*zeta - 225)*q^887 + 
(-60*zeta^3 + 180*zeta)*q^890 + (60*zeta^3 - 120*zeta^2 - 180*zeta + 300)*q^893 
- 40*zeta*q^895 + (40*zeta^3 + 80*zeta^2 - 120*zeta - 200)*q^897 - 30*zeta*q^898
- 40*zeta*q^902 + (-60*zeta^3 - 120*zeta^2 + 180*zeta + 300)*q^903 - 
220*zeta*q^905 + (-55*zeta^3 + 110*zeta^2 + 165*zeta - 275)*q^907 + (80*zeta^3 -
240*zeta)*q^910 + (-20*zeta^3 + 40*zeta^2 + 60*zeta - 100)*q^913 + 
100*zeta*q^915 + (60*zeta^3 + 120*zeta^2 - 180*zeta - 300)*q^917 - 90*zeta*q^922
+ (80*zeta^3 + 160*zeta^2 - 240*zeta - 400)*q^923 + 60*zeta*q^925 + (-35*zeta^3 
+ 70*zeta^2 + 105*zeta - 175)*q^927 + (120*zeta^3 - 240*zeta^2 - 360*zeta + 
600)*q^933 + (100*zeta^3 + 200*zeta^2 - 300*zeta - 500)*q^937 - 140*zeta*q^938 -
40*zeta*q^942 + (-10*zeta^3 - 20*zeta^2 + 30*zeta + 50)*q^943 - 80*zeta*q^945 + 
(-75*zeta^3 + 150*zeta^2 + 225*zeta - 375)*q^947 + (120*zeta^3 - 360*zeta)*q^950
+ (-60*zeta^3 + 120*zeta^2 + 180*zeta - 300)*q^953 + (40*zeta^3 + 80*zeta^2 - 
120*zeta - 200)*q^957 - 160*zeta*q^958 + 80*zeta*q^962 + (-25*zeta^3 - 50*zeta^2
+ 75*zeta + 125)*q^963 + 80*zeta*q^965 + (-125*zeta^3 + 250*zeta^2 + 375*zeta - 
625)*q^967 + (320*zeta^3 - 960*zeta)*q^970 + (20*zeta^3 - 40*zeta^2 - 60*zeta + 
100)*q^973 - 160*zeta*q^975 + (-80*zeta^3 - 160*zeta^2 + 240*zeta + 400)*q^977 -
20*zeta*q^978 - 20*zeta*q^982 + (115*zeta^3 + 230*zeta^2 - 345*zeta - 575)*q^983
- 60*zeta*q^985 + (60*zeta^3 - 120*zeta^2 - 180*zeta + 300)*q^987 + (40*zeta^3 -
120*zeta)*q^990 + (140*zeta^3 - 280*zeta^2 - 420*zeta + 700)*q^993 - 
80*zeta*q^995 + (30*zeta^3 + 60*zeta^2 - 90*zeta - 150)*q^997 + 20*zeta*q^998 + 
180*zeta*q^1002 - 280*zeta*q^1005 + (-40*zeta^3 + 80*zeta^2 + 120*zeta - 
200)*q^1007 + (60*zeta^3 - 180*zeta)*q^1010 + (-90*zeta^3 + 180*zeta^2 + 
270*zeta - 450)*q^1013 - 20*zeta*q^1015 + (-40*zeta^3 - 80*zeta^2 + 120*zeta + 
200)*q^1017 - 170*zeta*q^1018 + 80*zeta*q^1022 + 40*zeta*q^1025 + (-160*zeta^3 +
320*zeta^2 + 480*zeta - 800)*q^1027 + (-280*zeta^3 + 840*zeta)*q^1030 + 
(100*zeta^3 - 200*zeta^2 - 300*zeta + 500)*q^1033 - 10*zeta*q^1035 + 
120*zeta*q^1038 + 50*zeta*q^1042 + (90*zeta^3 + 180*zeta^2 - 270*zeta - 
450)*q^1043 + 160*zeta*q^1045 + (-10*zeta^3 + 20*zeta^2 + 30*zeta - 50)*q^1047 +
(120*zeta^3 - 360*zeta)*q^1050 + (-110*zeta^3 + 220*zeta^2 + 330*zeta - 
550)*q^1053 - 40*zeta*q^1055 + (40*zeta^3 + 80*zeta^2 - 120*zeta - 200)*q^1057 +
95*zeta*q^1058 - 60*zeta*q^1062 + (35*zeta^3 + 70*zeta^2 - 105*zeta - 
175)*q^1063 - 80*zeta*q^1065 + (160*zeta^3 - 320*zeta^2 - 480*zeta + 800)*q^1067
+ (-200*zeta^3 + 600*zeta)*q^1070 + (20*zeta^3 - 40*zeta^2 - 60*zeta + 
100)*q^1073 + 90*zeta*q^1075 + (40*zeta^3 + 80*zeta^2 - 120*zeta - 200)*q^1077 -
60*zeta*q^1078 - 10*zeta*q^1082 + (-15*zeta^3 - 30*zeta^2 + 45*zeta + 75)*q^1083
+ (95*zeta^3 - 190*zeta^2 - 285*zeta + 475)*q^1087 + (60*zeta^3 - 
180*zeta)*q^1090 + (30*zeta^3 - 60*zeta^2 - 90*zeta + 150)*q^1093 + 
160*zeta*q^1095 + (-60*zeta^3 - 120*zeta^2 + 180*zeta + 300)*q^1097 + 
50*zeta*q^1098 + O(q^1100), (-3*zeta^3 + 10*zeta + 5)*q + (-zeta^3 - 5)*q^3 - 
2*zeta^3*q^4 + (2*zeta^3 - 10)*q^7 + (-18*zeta^3 + 60*zeta)*q^8 + (-6*zeta^3 + 
20*zeta - 10)*q^9 + (9*zeta^3 - 30*zeta + 15)*q^11 + (6*zeta^3 - 20*zeta)*q^12 +
(4*zeta^3 - 20)*q^13 - 6*zeta^3*q^16 + (-3*zeta^3 - 15)*q^17 + (15*zeta^3 - 
50*zeta - 25)*q^19 + (-6*zeta^3 + 20*zeta + 10)*q^21 + (-6*zeta^3 - 30)*q^23 - 
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
(-13*zeta^3 - 65)*q^577 + (-57*zeta^3 + 190*zeta + 95)*q^579 + (54*zeta^3 - 
180*zeta - 90)*q^581 + (18*zeta^3 + 90)*q^583 - 66*zeta^3*q^584 + (-33*zeta^3 + 
165)*q^587 + (18*zeta^3 - 60*zeta)*q^588 + (30*zeta^3 - 100*zeta + 50)*q^589 + 
(54*zeta^3 - 180*zeta + 90)*q^591 + (-36*zeta^3 + 120*zeta)*q^592 + (9*zeta^3 - 
45)*q^593 + (20*zeta^3 + 100)*q^597 + (90*zeta^3 - 300*zeta - 150)*q^599 + 
(39*zeta^3 - 130*zeta - 65)*q^601 + (-26*zeta^3 - 130)*q^603 - 4*zeta^3*q^604 + 
(32*zeta^3 - 160)*q^607 + (-90*zeta^3 + 300*zeta)*q^608 + (144*zeta^3 - 480*zeta
+ 240)*q^611 + (36*zeta^3 - 120*zeta)*q^612 + (34*zeta^3 - 170)*q^613 - 
36*zeta^3*q^616 + (-18*zeta^3 - 90)*q^617 + (60*zeta^3 - 200*zeta - 100)*q^619 +
(90*zeta^3 - 300*zeta - 150)*q^621 + (-30*zeta^3 - 150)*q^623 - 24*zeta^3*q^624 
+ (-15*zeta^3 + 75)*q^627 + (-12*zeta^3 + 40*zeta)*q^628 + (-18*zeta^3 + 60*zeta
- 30)*q^629 + (-6*zeta^3 + 20*zeta - 10)*q^631 + (-180*zeta^3 + 600*zeta)*q^632 
+ (13*zeta^3 - 65)*q^633 + 12*zeta^3*q^636 + (12*zeta^3 + 60)*q^637 + 
(-72*zeta^3 + 240*zeta + 120)*q^639 + (-126*zeta^3 + 420*zeta + 210)*q^641 + 
(4*zeta^3 + 20)*q^643 - 24*zeta^3*q^644 + (12*zeta^3 - 60)*q^647 + (-18*zeta^3 +
60*zeta)*q^648 + (-12*zeta^3 + 40*zeta - 20)*q^651 + (66*zeta^3 - 
220*zeta)*q^652 + (-6*zeta^3 + 30)*q^653 + 18*zeta^3*q^656 + (-22*zeta^3 - 
110)*q^657 + (45*zeta^3 - 150*zeta - 75)*q^659 + (-96*zeta^3 + 320*zeta + 
160)*q^661 + (-12*zeta^3 - 60)*q^663 + 54*zeta^3*q^664 + (-72*zeta^3 + 
240*zeta)*q^668 + (-12*zeta^3 + 40*zeta - 20)*q^669 + (18*zeta^3 - 60*zeta + 
30)*q^671 + (36*zeta^3 - 120*zeta)*q^672 + (-26*zeta^3 + 130)*q^673 + 
6*zeta^3*q^676 + (-48*zeta^3 - 240)*q^677 + (12*zeta^3 - 40*zeta - 20)*q^679 + 
(-36*zeta^3 + 120*zeta + 60)*q^681 + (39*zeta^3 + 195)*q^683 + 20*zeta^3*q^684 +
(20*zeta^3 - 100)*q^687 + (-72*zeta^3 + 240*zeta)*q^688 + (-72*zeta^3 + 240*zeta
- 120)*q^689 + (-51*zeta^3 + 170*zeta - 85)*q^691 + (-144*zeta^3 + 
480*zeta)*q^692 + (-12*zeta^3 + 60)*q^693 + (9*zeta^3 + 45)*q^697 + (18*zeta^3 -
60*zeta - 30)*q^699 + (-36*zeta^3 + 120*zeta + 60)*q^701 + (-10*zeta^3 - 
50)*q^703 - 18*zeta^3*q^704 + (-36*zeta^3 + 180)*q^707 + (60*zeta^3 - 200*zeta +
100)*q^709 + (-60*zeta^3 + 200*zeta - 100)*q^711 + (270*zeta^3 - 900*zeta)*q^712
+ (-12*zeta^3 + 60)*q^713 - 30*zeta^3*q^716 + (-90*zeta^3 + 300*zeta + 
150)*q^719 + (24*zeta^3 - 80*zeta - 40)*q^721 + (-17*zeta^3 - 85)*q^723 - 
4*zeta^3*q^724 + (32*zeta^3 - 160)*q^727 + (144*zeta^3 - 480*zeta)*q^728 + 
(39*zeta^3 - 130*zeta + 65)*q^729 + (-36*zeta^3 + 120*zeta - 60)*q^731 + 
(12*zeta^3 - 40*zeta)*q^732 + (4*zeta^3 - 20)*q^733 + 36*zeta^3*q^736 + 
(39*zeta^3 + 195)*q^737 + (60*zeta^3 - 200*zeta - 100)*q^739 + (60*zeta^3 - 
200*zeta - 100)*q^741 + (-6*zeta^3 - 30)*q^743 - 12*zeta^3*q^744 + (18*zeta^3 - 
90)*q^747 + (-54*zeta^3 + 180*zeta)*q^748 + (-18*zeta^3 + 60*zeta - 30)*q^749 + 
(-96*zeta^3 + 320*zeta - 160)*q^751 + (-216*zeta^3 + 720*zeta)*q^752 + 
(-27*zeta^3 + 135)*q^753 - 20*zeta^3*q^756 + (32*zeta^3 + 160)*q^757 + 
(-54*zeta^3 + 180*zeta + 90)*q^759 + (9*zeta^3 - 30*zeta - 15)*q^761 + 
(20*zeta^3 + 100)*q^763 + 36*zeta^3*q^764 + (18*zeta^3 - 60*zeta)*q^768 + 
(15*zeta^3 - 50*zeta + 25)*q^769 + (54*zeta^3 - 180*zeta + 90)*q^771 + 
(-114*zeta^3 + 380*zeta)*q^772 + (24*zeta^3 - 120)*q^773 + 12*zeta^3*q^776 + 
(4*zeta^3 + 20)*q^777 + (-45*zeta^3 + 150*zeta + 75)*q^779 + (108*zeta^3 - 
360*zeta - 180)*q^781 - 18*zeta^3*q^784 + (-28*zeta^3 + 140)*q^787 + (108*zeta^3
- 360*zeta)*q^788 + (18*zeta^3 - 60*zeta + 30)*q^789 + (54*zeta^3 - 180*zeta + 
90)*q^791 + (108*zeta^3 - 360*zeta)*q^792 + (8*zeta^3 - 40)*q^793 + 
40*zeta^3*q^796 + (42*zeta^3 + 210)*q^797 + (-108*zeta^3 + 360*zeta + 180)*q^799
+ (90*zeta^3 - 300*zeta - 150)*q^801 + (33*zeta^3 + 165)*q^803 + 26*zeta^3*q^804
+ (324*zeta^3 - 1080*zeta)*q^808 + (-90*zeta^3 + 300*zeta - 150)*q^809 + 
(84*zeta^3 - 280*zeta + 140)*q^811 + (-2*zeta^3 + 10)*q^813 + 18*zeta^3*q^816 + 
(-20*zeta^3 - 100)*q^817 + (48*zeta^3 - 160*zeta - 80)*q^819 + (-126*zeta^3 + 
420*zeta + 210)*q^821 + (4*zeta^3 + 20)*q^823 + 24*zeta^3*q^824 + (-33*zeta^3 + 
165)*q^827 + (72*zeta^3 - 240*zeta)*q^828 + (60*zeta^3 - 200*zeta + 100)*q^829 +
(-96*zeta^3 + 320*zeta - 160)*q^831 + (72*zeta^3 - 240*zeta)*q^832 + (-9*zeta^3 
+ 45)*q^833 - 30*zeta^3*q^836 + (-10*zeta^3 - 50)*q^837 + (87*zeta^3 - 290*zeta 
- 145)*q^841 + (18*zeta^3 + 90)*q^843 + 26*zeta^3*q^844 + (-4*zeta^3 + 20)*q^847
+ (108*zeta^3 - 360*zeta)*q^848 + (33*zeta^3 - 110*zeta + 55)*q^849 + 
(-36*zeta^3 + 120*zeta - 60)*q^851 + (72*zeta^3 - 240*zeta)*q^852 + (-26*zeta^3 
+ 130)*q^853 - 18*zeta^3*q^856 + (-3*zeta^3 - 15)*q^857 + (15*zeta^3 - 50*zeta -
25)*q^859 + (18*zeta^3 - 60*zeta - 30)*q^861 + (24*zeta^3 + 120)*q^863 + 
30*zeta^3*q^864 + (-8*zeta^3 + 40)*q^867 + (-24*zeta^3 + 80*zeta)*q^868 + 
(90*zeta^3 - 300*zeta + 150)*q^869 + (-156*zeta^3 + 520*zeta - 260)*q^871 + 
(-180*zeta^3 + 600*zeta)*q^872 + (4*zeta^3 - 20)*q^873 + 22*zeta^3*q^876 + 
(-28*zeta^3 - 140)*q^877 + (18*zeta^3 - 60*zeta - 30)*q^879 + (54*zeta^3 - 
180*zeta - 90)*q^881 + (-41*zeta^3 - 205)*q^883 - 24*zeta^3*q^884 + (12*zeta^3 -
60)*q^887 + (-36*zeta^3 + 120*zeta)*q^888 + (12*zeta^3 - 40*zeta + 20)*q^889 + 
(9*zeta^3 - 30*zeta + 15)*q^891 + (-24*zeta^3 + 80*zeta)*q^892 + (-60*zeta^3 + 
300)*q^893 + 12*zeta^3*q^896 + (-24*zeta^3 - 120)*q^897 + (54*zeta^3 - 180*zeta 
- 90)*q^901 + (8*zeta^3 + 40)*q^903 + 54*zeta^3*q^904 + (-28*zeta^3 + 140)*q^907
+ (-72*zeta^3 + 240*zeta)*q^908 + (108*zeta^3 - 360*zeta + 180)*q^909 + 
(-36*zeta^3 + 120*zeta - 60)*q^911 + (-90*zeta^3 + 300*zeta)*q^912 + (-27*zeta^3
+ 135)*q^913 + 40*zeta^3*q^916 + (24*zeta^3 + 120)*q^917 + (-30*zeta^3 + 
100*zeta + 50)*q^919 + (-51*zeta^3 + 170*zeta + 85)*q^921 + (48*zeta^3 + 
240)*q^923 + 12*zeta^3*q^924 + (8*zeta^3 - 40)*q^927 + (90*zeta^3 - 300*zeta + 
150)*q^929 + (45*zeta^3 - 150*zeta + 75)*q^931 + (36*zeta^3 - 120*zeta)*q^932 + 
(18*zeta^3 - 90)*q^933 + 48*zeta^3*q^936 + (-13*zeta^3 - 65)*q^937 + (78*zeta^3 
- 260*zeta - 130)*q^939 + (-36*zeta^3 + 120*zeta + 60)*q^941 + (18*zeta^3 + 
90)*q^943 + (-48*zeta^3 + 240)*q^947 + (60*zeta^3 - 200*zeta)*q^948 + 
(-132*zeta^3 + 440*zeta - 220)*q^949 + (-36*zeta^3 + 120*zeta - 60)*q^951 + 
(-108*zeta^3 + 360*zeta)*q^952 + (39*zeta^3 - 195)*q^953 + (-18*zeta^3 + 60*zeta
+ 30)*q^959 + (81*zeta^3 - 270*zeta - 135)*q^961 + (-6*zeta^3 - 30)*q^963 - 
34*zeta^3*q^964 + (32*zeta^3 - 160)*q^967 + (36*zeta^3 - 120*zeta)*q^968 + 
(-45*zeta^3 + 150*zeta - 75)*q^969 + (9*zeta^3 - 30*zeta + 15)*q^971 + 
(96*zeta^3 - 320*zeta)*q^972 + (-10*zeta^3 + 50)*q^973 - 12*zeta^3*q^976 + 
(57*zeta^3 + 285)*q^977 + (-135*zeta^3 + 450*zeta + 225)*q^979 + (-60*zeta^3 + 
200*zeta + 100)*q^981 + (-6*zeta^3 - 30)*q^983 + 18*zeta^3*q^984 + (24*zeta^3 - 
120)*q^987 + (120*zeta^3 - 400*zeta)*q^988 + (-72*zeta^3 + 240*zeta - 120)*q^989
+ (174*zeta^3 - 580*zeta + 290)*q^991 + (36*zeta^3 - 120*zeta)*q^992 + 
(-17*zeta^3 + 85)*q^993 - 18*zeta^3*q^996 + (-28*zeta^3 - 140)*q^997 + 
(-30*zeta^3 + 100*zeta + 50)*q^999 + (-72*zeta^3 + 240*zeta + 120)*q^1001 - 
54*zeta^3*q^1004 + (30*zeta^3 - 150)*q^1007 + (-72*zeta^3 + 240*zeta)*q^1008 + 
(15*zeta^3 - 50*zeta + 25)*q^1009 + (39*zeta^3 - 130*zeta + 65)*q^1011 + 
(-108*zeta^3 + 360*zeta)*q^1012 + (24*zeta^3 - 120)*q^1013 + 12*zeta^3*q^1016 + 
(18*zeta^3 + 90)*q^1017 + (45*zeta^3 - 150*zeta - 75)*q^1019 + (-6*zeta^3 + 
20*zeta + 10)*q^1021 + (6*zeta^3 + 30)*q^1023 + 6*zeta^3*q^1024 + (40*zeta^3 - 
200)*q^1027 + (108*zeta^3 - 360*zeta)*q^1028 + (-60*zeta^3 + 200*zeta - 
100)*q^1029 + (54*zeta^3 - 180*zeta + 90)*q^1031 + (-72*zeta^3 + 
240*zeta)*q^1032 + (-11*zeta^3 + 55)*q^1033 + 8*zeta^3*q^1036 + (-6*zeta^3 - 
30)*q^1037 + (-120*zeta^3 + 400*zeta + 200)*q^1039 + (9*zeta^3 - 30*zeta - 
15)*q^1041 + (-10*zeta^3 + 50)*q^1047 + (-216*zeta^3 + 720*zeta)*q^1048 + 
(45*zeta^3 - 150*zeta + 75)*q^1049 + (39*zeta^3 - 130*zeta + 65)*q^1051 + 
(36*zeta^3 - 120*zeta)*q^1052 + (4*zeta^3 - 20)*q^1053 - 18*zeta^3*q^1056 + 
(4*zeta^3 + 20)*q^1057 + (18*zeta^3 - 60*zeta - 30)*q^1059 + (54*zeta^3 - 
180*zeta - 90)*q^1061 + (-56*zeta^3 - 280)*q^1063 - 60*zeta^3*q^1064 + 
(-6*zeta^3 + 30)*q^1067 + (-90*zeta^3 + 300*zeta)*q^1068 + (150*zeta^3 - 
500*zeta + 250)*q^1069 + (-36*zeta^3 + 120*zeta - 60)*q^1071 + (234*zeta^3 - 
780*zeta)*q^1072 + (30*zeta^3 + 150)*q^1077 + (108*zeta^3 - 360*zeta - 
180)*q^1079 + (-216*zeta^3 + 720*zeta + 360)*q^1081 + (-6*zeta^3 - 30)*q^1083 - 
4*zeta^3*q^1084 + (-28*zeta^3 + 140)*q^1087 + (-54*zeta^3 + 180*zeta)*q^1088 + 
(12*zeta^3 - 40*zeta + 20)*q^1089 + (-171*zeta^3 + 570*zeta - 285)*q^1091 + 
(-48*zeta^3 + 160*zeta)*q^1092 + (34*zeta^3 - 170)*q^1093 - 18*zeta^3*q^1096 + 
(-33*zeta^3 - 165)*q^1097 + (12*zeta^3 - 40*zeta - 20)*q^1099 + O(q^1100)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 5);
              X_20C6 := Curve(P_Q, [ PolynomialRing(RationalField(), 6) |
x[1]^2 + 29/25*x[2]^2 - 2/5*x[2]*x[3] - 32/5*x[2]*x[4] + 48/25*x[2]*x[5] + 
22/5*x[3]^2 - 78/5*x[3]*x[4] - 24/25*x[3]*x[5] + 4*x[3]*x[6] - 54/5*x[4]^2 + 
12/25*x[4]*x[5] + 44/5*x[4]*x[6] - 12/5*x[5]^2 - 48/25*x[5]*x[6] - 2*x[6]^2,
x[1]*x[2] + 13/15*x[2]^2 - 6*x[2]*x[4] + 6/5*x[2]*x[5] - 1/3*x[2]*x[6] + 
3*x[3]^2 - 12*x[3]*x[4] - 6/5*x[3]*x[5] + 2*x[3]*x[6] - 6*x[4]^2 - 
12/5*x[4]*x[5] + 9*x[4]*x[6] - 12/5*x[5]^2 - 6/5*x[5]*x[6] - 7/3*x[6]^2,
x[1]*x[3] + 17/25*x[2]^2 - 1/5*x[2]*x[3] - 16/5*x[2]*x[4] + 24/25*x[2]*x[5] + 
2/5*x[2]*x[6] + 13/5*x[3]^2 - 48/5*x[3]*x[4] - 6/5*x[3]*x[5] + 2*x[3]*x[6] - 
9*x[4]^2 + 24/25*x[4]*x[5] + 22/5*x[4]*x[6] - 132/125*x[5]^2 - 24/25*x[5]*x[6] -
3/5*x[6]^2,
x[1]*x[4] - 2/75*x[2]^2 - 1/5*x[2]*x[4] - 4/25*x[2]*x[5] - 1/15*x[2]*x[6] + 
4/5*x[3]*x[4] + 6/25*x[3]*x[5] + 6/5*x[4]^2 + 6/25*x[4]*x[5] + 1/5*x[4]*x[6] - 
12/125*x[5]^2 - 2/25*x[5]*x[6] - 4/15*x[6]^2,
x[1]*x[5] - 4/15*x[2]^2 + 3*x[2]*x[4] - 3/5*x[2]*x[5] + 1/3*x[2]*x[6] - 
3/2*x[3]^2 + 6*x[3]*x[4] - 2/5*x[3]*x[5] + 3*x[4]^2 + 6/5*x[4]*x[5] - 
3*x[4]*x[6] + 6/5*x[5]^2 + 6/5*x[5]*x[6] + 5/6*x[6]^2,
x[1]*x[6] - 52/75*x[2]^2 + 2/5*x[2]*x[3] + 12/5*x[2]*x[4] - 18/25*x[2]*x[5] - 
1/3*x[2]*x[6] - 12/5*x[3]^2 + 48/5*x[3]*x[4] + 24/25*x[3]*x[5] - 2*x[3]*x[6] + 
24/5*x[4]^2 - 42/25*x[4]*x[5] - 24/5*x[4]*x[6] + 12/25*x[5]^2 + 18/25*x[5]*x[6] 
+ 2/3*x[6]^2
]);
