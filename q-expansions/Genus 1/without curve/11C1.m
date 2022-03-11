
    /****************************************************
    Loading this file in magma loads the objects fs_11C1 
    and X_11C1. fs_11C1 is a list of power series which form 
    a basis for the space of cusp forms. X_11C1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | 1, 3, -3, -4, 1, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_11C1 := [Kq | 1/6*(-zeta^4 - 3*zeta^3 - 2*zeta^2 + 10*zeta + 
6)*q + 1/6*(-6*zeta^4 - 7*zeta^3 + 21*zeta^2 + 16*zeta - 8)*q^3 + 1/3*(-2*zeta^4
+ 5*zeta^3 + 7*zeta^2 - 13*zeta + 1)*q^4 + 1/2*(4*zeta^4 + zeta^3 - 14*zeta^2 + 
4*zeta + 9)*q^5 + 1/3*(3*zeta^4 - 2*zeta^3 - 16*zeta^2 + 3*zeta + 15)*q^9 + 
1/3*(-zeta^4 - 3*zeta^3 - 2*zeta^2 + 10*zeta + 6)*q^12 + 1/2*(2*zeta^4 - 
5*zeta^3 - 7*zeta^2 + 13*zeta - 1)*q^15 + 1/3*(-8*zeta^4 - 2*zeta^3 + 28*zeta^2 
- 8*zeta - 18)*q^16 + (-3*zeta^4 + 2*zeta^3 + 16*zeta^2 - 3*zeta - 15)*q^20 + 
1/2*(3*zeta^4 + 9*zeta^3 + 6*zeta^2 - 30*zeta - 18)*q^23 + 1/3*(12*zeta^4 + 
14*zeta^3 - 42*zeta^2 - 32*zeta + 16)*q^25 + 1/6*(-20*zeta^4 - 5*zeta^3 + 
70*zeta^2 - 20*zeta - 45)*q^27 + 1/6*(15*zeta^4 - 10*zeta^3 - 80*zeta^2 + 
15*zeta + 75)*q^31 + 1/3*(12*zeta^4 + 14*zeta^3 - 42*zeta^2 - 32*zeta + 16)*q^36
+ 1/6*(14*zeta^4 - 35*zeta^3 - 49*zeta^2 + 91*zeta - 7)*q^37 + (-zeta^4 - 
3*zeta^3 - 2*zeta^2 + 10*zeta + 6)*q^45 + (-12*zeta^4 - 14*zeta^3 + 42*zeta^2 + 
32*zeta - 16)*q^47 + 1/3*(-4*zeta^4 + 10*zeta^3 + 14*zeta^2 - 26*zeta + 2)*q^48 
+ 1/6*(28*zeta^4 + 7*zeta^3 - 98*zeta^2 + 28*zeta + 63)*q^49 + (-3*zeta^4 + 
2*zeta^3 + 16*zeta^2 - 3*zeta - 15)*q^53 + 1/2*(-10*zeta^4 + 25*zeta^3 + 
35*zeta^2 - 65*zeta + 5)*q^59 + (4*zeta^4 + zeta^3 - 14*zeta^2 + 4*zeta + 
9)*q^60 + 1/3*(12*zeta^4 - 8*zeta^3 - 64*zeta^2 + 12*zeta + 60)*q^64 + 
1/6*(-13*zeta^4 - 39*zeta^3 - 26*zeta^2 + 130*zeta + 78)*q^67 + 1/2*(18*zeta^4 +
21*zeta^3 - 63*zeta^2 - 48*zeta + 24)*q^69 + 1/2*(4*zeta^4 + zeta^3 - 14*zeta^2 
+ 4*zeta + 9)*q^71 + 1/3*(6*zeta^4 - 4*zeta^3 - 32*zeta^2 + 6*zeta + 30)*q^75 + 
(-12*zeta^4 - 14*zeta^3 + 42*zeta^2 + 32*zeta - 16)*q^80 + 1/6*(2*zeta^4 - 
5*zeta^3 - 7*zeta^2 + 13*zeta - 1)*q^81 + 1/2*(3*zeta^4 + 9*zeta^3 + 6*zeta^2 - 
30*zeta - 18)*q^89 + (6*zeta^4 - 15*zeta^3 - 21*zeta^2 + 39*zeta - 3)*q^92 + 
1/6*(-20*zeta^4 - 5*zeta^3 + 70*zeta^2 - 20*zeta - 45)*q^93 + 1/6*(-51*zeta^4 + 
34*zeta^3 + 272*zeta^2 - 51*zeta - 255)*q^97 + 1/3*(4*zeta^4 + 12*zeta^3 + 
8*zeta^2 - 40*zeta - 24)*q^100 + 1/3*(-4*zeta^4 + 10*zeta^3 + 14*zeta^2 - 
26*zeta + 2)*q^103 + 1/3*(15*zeta^4 - 10*zeta^3 - 80*zeta^2 + 15*zeta + 
75)*q^108 + 1/6*(7*zeta^4 + 21*zeta^3 + 14*zeta^2 - 70*zeta - 42)*q^111 + 
1/2*(42*zeta^4 + 49*zeta^3 - 147*zeta^2 - 112*zeta + 56)*q^113 + 1/2*(-36*zeta^4
- 9*zeta^3 + 126*zeta^2 - 36*zeta - 81)*q^115 + 1/3*(30*zeta^4 + 35*zeta^3 - 
105*zeta^2 - 80*zeta + 40)*q^124 + 1/2*(2*zeta^4 - 5*zeta^3 - 7*zeta^2 + 13*zeta
- 1)*q^125 + 1/2*(-30*zeta^4 - 35*zeta^3 + 105*zeta^2 + 80*zeta - 40)*q^135 + 
1/2*(4*zeta^4 + zeta^3 - 14*zeta^2 + 4*zeta + 9)*q^137 + (-6*zeta^4 + 4*zeta^3 +
32*zeta^2 - 6*zeta - 30)*q^141 + 1/3*(4*zeta^4 + 12*zeta^3 + 8*zeta^2 - 40*zeta 
- 24)*q^144 + 1/6*(14*zeta^4 - 35*zeta^3 - 49*zeta^2 + 91*zeta - 7)*q^147 + 
1/3*(28*zeta^4 + 7*zeta^3 - 98*zeta^2 + 28*zeta + 63)*q^148 + 1/2*(-5*zeta^4 - 
15*zeta^3 - 10*zeta^2 + 50*zeta + 30)*q^155 + 1/6*(-138*zeta^4 - 161*zeta^3 + 
483*zeta^2 + 368*zeta - 184)*q^157 + (4*zeta^4 + zeta^3 - 14*zeta^2 + 4*zeta + 
9)*q^159 + 1/3*(24*zeta^4 - 16*zeta^3 - 128*zeta^2 + 24*zeta + 120)*q^163 + 
1/6*(-26*zeta^4 + 65*zeta^3 + 91*zeta^2 - 169*zeta + 13)*q^169 + 1/2*(-5*zeta^4 
- 15*zeta^3 - 10*zeta^2 + 50*zeta + 30)*q^177 + 1/2*(42*zeta^4 + 49*zeta^3 - 
147*zeta^2 - 112*zeta + 56)*q^179 + (-4*zeta^4 + 10*zeta^3 + 14*zeta^2 - 26*zeta
+ 2)*q^180 + 1/6*(100*zeta^4 + 25*zeta^3 - 350*zeta^2 + 100*zeta + 225)*q^181 + 
1/2*(21*zeta^4 - 14*zeta^3 - 112*zeta^2 + 21*zeta + 105)*q^185 + (-4*zeta^4 - 
12*zeta^3 - 8*zeta^2 + 40*zeta + 24)*q^188 + 1/2*(-10*zeta^4 + 25*zeta^3 + 
35*zeta^2 - 65*zeta + 5)*q^191 + 1/3*(-16*zeta^4 - 4*zeta^3 + 56*zeta^2 - 
16*zeta - 36)*q^192 + 1/3*(-21*zeta^4 + 14*zeta^3 + 112*zeta^2 - 21*zeta - 
105)*q^196 + 1/3*(10*zeta^4 + 30*zeta^3 + 20*zeta^2 - 100*zeta - 60)*q^199 + 
1/6*(-78*zeta^4 - 91*zeta^3 + 273*zeta^2 + 208*zeta - 104)*q^201 + (-9*zeta^4 + 
6*zeta^3 + 48*zeta^2 - 9*zeta - 45)*q^207 + (-12*zeta^4 - 14*zeta^3 + 42*zeta^2 
+ 32*zeta - 16)*q^212 + 1/2*(2*zeta^4 - 5*zeta^3 - 7*zeta^2 + 13*zeta - 1)*q^213
+ 1/6*(-6*zeta^4 - 7*zeta^3 + 21*zeta^2 + 16*zeta - 8)*q^223 + 1/3*(16*zeta^4 + 
4*zeta^3 - 56*zeta^2 + 16*zeta + 36)*q^225 + 1/6*(15*zeta^4 - 10*zeta^3 - 
80*zeta^2 + 15*zeta + 75)*q^229 + (12*zeta^4 - 30*zeta^3 - 42*zeta^2 + 78*zeta -
6)*q^235 + (-20*zeta^4 - 5*zeta^3 + 70*zeta^2 - 20*zeta - 45)*q^236 + (-6*zeta^4
+ 4*zeta^3 + 32*zeta^2 - 6*zeta - 30)*q^240 + 1/3*(8*zeta^4 + 24*zeta^3 + 
16*zeta^2 - 80*zeta - 48)*q^243 + 1/2*(42*zeta^4 + 49*zeta^3 - 147*zeta^2 - 
112*zeta + 56)*q^245 + 1/2*(27*zeta^4 - 18*zeta^3 - 144*zeta^2 + 27*zeta + 
135)*q^251 + 1/3*(48*zeta^4 + 56*zeta^3 - 168*zeta^2 - 128*zeta + 64)*q^256 + 
(6*zeta^4 - 15*zeta^3 - 21*zeta^2 + 39*zeta - 3)*q^257 + (3*zeta^4 + 9*zeta^3 + 
6*zeta^2 - 30*zeta - 18)*q^265 + 1/2*(18*zeta^4 + 21*zeta^3 - 63*zeta^2 - 
48*zeta + 24)*q^267 + 1/3*(-26*zeta^4 + 65*zeta^3 + 91*zeta^2 - 169*zeta + 
13)*q^268 + (-20*zeta^4 - 5*zeta^3 + 70*zeta^2 - 20*zeta - 45)*q^269 + (3*zeta^4
+ 9*zeta^3 + 6*zeta^2 - 30*zeta - 18)*q^276 + 1/3*(10*zeta^4 - 25*zeta^3 - 
35*zeta^2 + 65*zeta - 5)*q^279 + (-3*zeta^4 + 2*zeta^3 + 16*zeta^2 - 3*zeta - 
15)*q^284 + 1/6*(-102*zeta^4 - 119*zeta^3 + 357*zeta^2 + 272*zeta - 136)*q^289 +
1/6*(68*zeta^4 + 17*zeta^3 - 238*zeta^2 + 68*zeta + 153)*q^291 + 1/2*(-45*zeta^4
+ 30*zeta^3 + 240*zeta^2 - 45*zeta - 225)*q^295 + 1/3*(24*zeta^4 + 28*zeta^3 - 
84*zeta^2 - 64*zeta + 32)*q^300 + 1/3*(-2*zeta^4 - 6*zeta^3 - 4*zeta^2 + 20*zeta
+ 12)*q^309 + (-12*zeta^4 - 14*zeta^3 + 42*zeta^2 + 32*zeta - 16)*q^311 + 
1/6*(-76*zeta^4 - 19*zeta^3 + 266*zeta^2 - 76*zeta - 171)*q^313 + 1/2*(27*zeta^4
- 18*zeta^3 - 144*zeta^2 + 27*zeta + 135)*q^317 + (-4*zeta^4 - 12*zeta^3 - 
8*zeta^2 + 40*zeta + 24)*q^320 + 1/3*(4*zeta^4 + zeta^3 - 14*zeta^2 + 4*zeta + 
9)*q^324 + 1/6*(-35*zeta^4 - 105*zeta^3 - 70*zeta^2 + 350*zeta + 210)*q^331 + 
1/3*(-42*zeta^4 - 49*zeta^3 + 147*zeta^2 + 112*zeta - 56)*q^333 + 1/2*(52*zeta^4
+ 13*zeta^3 - 182*zeta^2 + 52*zeta + 117)*q^335 + 1/2*(21*zeta^4 - 14*zeta^3 - 
112*zeta^2 + 21*zeta + 105)*q^339 + 1/2*(-18*zeta^4 + 45*zeta^3 + 63*zeta^2 - 
117*zeta + 9)*q^345 + 1/2*(3*zeta^4 + 9*zeta^3 + 6*zeta^2 - 30*zeta - 18)*q^353 
+ 1/2*(18*zeta^4 + 21*zeta^3 - 63*zeta^2 - 48*zeta + 24)*q^355 + (6*zeta^4 - 
15*zeta^3 - 21*zeta^2 + 39*zeta - 3)*q^356 + 1/6*(57*zeta^4 - 38*zeta^3 - 
304*zeta^2 + 57*zeta + 285)*q^361 + 1/6*(-74*zeta^4 + 185*zeta^3 + 259*zeta^2 - 
481*zeta + 37)*q^367 + (24*zeta^4 + 6*zeta^3 - 84*zeta^2 + 24*zeta + 54)*q^368 +
1/3*(15*zeta^4 - 10*zeta^3 - 80*zeta^2 + 15*zeta + 75)*q^372 + 1/2*(zeta^4 + 
3*zeta^3 + 2*zeta^2 - 10*zeta - 6)*q^375 + 1/6*(100*zeta^4 + 25*zeta^3 - 
350*zeta^2 + 100*zeta + 225)*q^379 + 1/2*(-39*zeta^4 + 26*zeta^3 + 208*zeta^2 - 
39*zeta - 195)*q^383 + 1/3*(-102*zeta^4 - 119*zeta^3 + 357*zeta^2 + 272*zeta - 
136)*q^388 + 1/2*(-10*zeta^4 + 25*zeta^3 + 35*zeta^2 - 65*zeta + 5)*q^389 + 
1/3*(-zeta^4 - 3*zeta^3 - 2*zeta^2 + 10*zeta + 6)*q^397 + 1/3*(16*zeta^4 - 
40*zeta^3 - 56*zeta^2 + 104*zeta - 8)*q^400 + (-20*zeta^4 - 5*zeta^3 + 70*zeta^2
- 20*zeta - 45)*q^401 + 1/2*(3*zeta^4 - 2*zeta^3 - 16*zeta^2 + 3*zeta + 
15)*q^405 + 1/2*(2*zeta^4 - 5*zeta^3 - 7*zeta^2 + 13*zeta - 1)*q^411 + 
1/3*(-16*zeta^4 - 4*zeta^3 + 56*zeta^2 - 16*zeta - 36)*q^412 + (-4*zeta^4 - 
12*zeta^3 - 8*zeta^2 + 40*zeta + 24)*q^419 + 1/3*(30*zeta^4 + 35*zeta^3 - 
105*zeta^2 - 80*zeta + 40)*q^421 + (-16*zeta^4 - 4*zeta^3 + 56*zeta^2 - 16*zeta 
- 36)*q^423 + 1/3*(60*zeta^4 + 70*zeta^3 - 210*zeta^2 - 160*zeta + 80)*q^432 + 
1/6*(58*zeta^4 - 145*zeta^3 - 203*zeta^2 + 377*zeta - 29)*q^433 + 1/3*(-7*zeta^4
- 21*zeta^3 - 14*zeta^2 + 70*zeta + 42)*q^441 + 1/2*(42*zeta^4 + 49*zeta^3 - 
147*zeta^2 - 112*zeta + 56)*q^443 + 1/3*(14*zeta^4 - 35*zeta^3 - 49*zeta^2 + 
91*zeta - 7)*q^444 + 1/2*(-36*zeta^4 - 9*zeta^3 + 126*zeta^2 - 36*zeta - 
81)*q^445 + 1/2*(-39*zeta^4 + 26*zeta^3 + 208*zeta^2 - 39*zeta - 195)*q^449 + 
(7*zeta^4 + 21*zeta^3 + 14*zeta^2 - 70*zeta - 42)*q^452 + (27*zeta^4 - 18*zeta^3
- 144*zeta^2 + 27*zeta + 135)*q^460 + 1/6*(31*zeta^4 + 93*zeta^3 + 62*zeta^2 - 
310*zeta - 186)*q^463 + 1/2*(-30*zeta^4 - 35*zeta^3 + 105*zeta^2 + 80*zeta - 
40)*q^465 + 1/2*(4*zeta^4 + zeta^3 - 14*zeta^2 + 4*zeta + 9)*q^467 + 
1/6*(-69*zeta^4 + 46*zeta^3 + 368*zeta^2 - 69*zeta - 345)*q^471 + (-4*zeta^4 + 
10*zeta^3 + 14*zeta^2 - 26*zeta + 2)*q^477 + 1/2*(17*zeta^4 + 51*zeta^3 + 
34*zeta^2 - 170*zeta - 102)*q^485 + 1/6*(258*zeta^4 + 301*zeta^3 - 903*zeta^2 - 
688*zeta + 344)*q^487 + 1/3*(-32*zeta^4 - 8*zeta^3 + 112*zeta^2 - 32*zeta - 
72)*q^489 + 1/3*(10*zeta^4 + 30*zeta^3 + 20*zeta^2 - 100*zeta - 60)*q^496 + 
1/3*(40*zeta^4 - 100*zeta^3 - 140*zeta^2 + 260*zeta - 20)*q^499 + (4*zeta^4 + 
zeta^3 - 14*zeta^2 + 4*zeta + 9)*q^500 + 1/6*(-13*zeta^4 - 39*zeta^3 - 26*zeta^2
+ 130*zeta + 78)*q^507 + 1/2*(-90*zeta^4 - 105*zeta^3 + 315*zeta^2 + 240*zeta - 
120)*q^509 + (-6*zeta^4 + 4*zeta^3 + 32*zeta^2 - 6*zeta - 30)*q^515 + 
1/2*(-10*zeta^4 + 25*zeta^3 + 35*zeta^2 - 65*zeta + 5)*q^521 + 1/3*(-29*zeta^4 -
87*zeta^3 - 58*zeta^2 + 290*zeta + 174)*q^529 + (30*zeta^4 + 35*zeta^3 - 
105*zeta^2 - 80*zeta + 40)*q^531 + 1/2*(21*zeta^4 - 14*zeta^3 - 112*zeta^2 + 
21*zeta + 105)*q^537 + (-5*zeta^4 - 15*zeta^3 - 10*zeta^2 + 50*zeta + 30)*q^540 
+ 1/6*(50*zeta^4 - 125*zeta^3 - 175*zeta^2 + 325*zeta - 25)*q^543 + (-3*zeta^4 +
2*zeta^3 + 16*zeta^2 - 3*zeta - 15)*q^548 + 1/2*(-28*zeta^4 - 7*zeta^3 + 
98*zeta^2 - 28*zeta - 63)*q^555 + O(q^561)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_11C1 := Curve(P_Q, [ PolynomialRing(ext<K|Polynomial(K, [1, 3, 
-3, -4, 1, 1])> where K is RationalField(), 2) | ]);
