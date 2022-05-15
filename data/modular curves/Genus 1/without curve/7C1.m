
    /****************************************************
    Loading this file in magma loads the objects fs_7C1 
    and X_7C1. fs_7C1 is a list of power series which form 
    a basis for the space of cusp forms. X_7C1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | -1, -2, 1, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_7C1 := [Kq | 1/2*(-zeta^2 + zeta + 2)*q + 1/2*(2*zeta^2 + zeta 
- 3)*q^2 + 1/2*(zeta^2 + 2*zeta - 1)*q^4 + 1/2*(3*zeta^2 - 3*zeta - 6)*q^8 + 
1/2*(-6*zeta^2 - 3*zeta + 9)*q^9 + (-2*zeta^2 - 4*zeta + 2)*q^11 + 
1/2*(-2*zeta^2 - zeta + 3)*q^16 + 1/2*(3*zeta^2 + 6*zeta - 3)*q^18 + (-2*zeta^2 
+ 2*zeta + 4)*q^22 + (8*zeta^2 + 4*zeta - 12)*q^23 + 1/2*(5*zeta^2 + 10*zeta - 
5)*q^25 + (-zeta^2 + zeta + 2)*q^29 + 1/2*(-5*zeta^2 - 10*zeta + 5)*q^32 + 
1/2*(-3*zeta^2 + 3*zeta + 6)*q^36 + (-6*zeta^2 - 3*zeta + 9)*q^37 + (6*zeta^2 - 
6*zeta - 12)*q^43 + (-4*zeta^2 - 2*zeta + 6)*q^44 + (-4*zeta^2 - 8*zeta + 
4)*q^46 + 1/2*(5*zeta^2 - 5*zeta - 10)*q^50 + (5*zeta^2 + 10*zeta - 5)*q^53 + 
(2*zeta^2 + zeta - 3)*q^58 + 1/2*(-7*zeta^2 + 7*zeta + 14)*q^64 + (-2*zeta^2 - 
4*zeta + 2)*q^67 + (-8*zeta^2 + 8*zeta + 16)*q^71 + 1/2*(18*zeta^2 + 9*zeta - 
27)*q^72 + (3*zeta^2 + 6*zeta - 3)*q^74 + (8*zeta^2 + 4*zeta - 12)*q^79 + 
1/2*(-9*zeta^2 - 18*zeta + 9)*q^81 + (-12*zeta^2 - 6*zeta + 18)*q^86 + (6*zeta^2
+ 12*zeta - 6)*q^88 + (4*zeta^2 - 4*zeta - 8)*q^92 + (6*zeta^2 - 6*zeta - 
12)*q^99 + 1/2*(10*zeta^2 + 5*zeta - 15)*q^100 + (5*zeta^2 - 5*zeta - 10)*q^106 
+ (-20*zeta^2 - 10*zeta + 30)*q^107 + (-9*zeta^2 - 18*zeta + 9)*q^109 + (-zeta^2
+ zeta + 2)*q^113 + (zeta^2 + 2*zeta - 1)*q^116 + 1/2*(10*zeta^2 + 5*zeta - 
15)*q^121 + (-8*zeta^2 + 8*zeta + 16)*q^127 + 1/2*(-6*zeta^2 - 3*zeta + 9)*q^128
+ (-2*zeta^2 + 2*zeta + 4)*q^134 + (5*zeta^2 + 10*zeta - 5)*q^137 + (16*zeta^2 +
8*zeta - 24)*q^142 + 1/2*(-3*zeta^2 - 6*zeta + 3)*q^144 + (-3*zeta^2 + 3*zeta + 
6)*q^148 + (22*zeta^2 + 11*zeta - 33)*q^149 + (12*zeta^2 + 24*zeta - 12)*q^151 +
(-4*zeta^2 - 8*zeta + 4)*q^158 + 1/2*(-9*zeta^2 + 9*zeta + 18)*q^162 + 
(-20*zeta^2 - 10*zeta + 30)*q^163 + 1/2*(13*zeta^2 - 13*zeta - 26)*q^169 + 
(-6*zeta^2 - 12*zeta + 6)*q^172 + (2*zeta^2 - 2*zeta - 4)*q^176 + (-2*zeta^2 - 
4*zeta + 2)*q^179 + (-24*zeta^2 - 12*zeta + 36)*q^184 + (8*zeta^2 + 4*zeta - 
12)*q^191 + (-9*zeta^2 - 18*zeta + 9)*q^193 + (13*zeta^2 - 13*zeta - 26)*q^197 +
(-12*zeta^2 - 6*zeta + 18)*q^198 + 1/2*(-15*zeta^2 - 30*zeta + 15)*q^200 + 
(12*zeta^2 + 24*zeta - 12)*q^207 + (6*zeta^2 - 6*zeta - 12)*q^211 + (10*zeta^2 +
5*zeta - 15)*q^212 + (10*zeta^2 + 20*zeta - 10)*q^214 + (-9*zeta^2 + 9*zeta + 
18)*q^218 + 1/2*(-15*zeta^2 + 15*zeta + 30)*q^225 + (2*zeta^2 + zeta - 3)*q^226 
+ (3*zeta^2 - 3*zeta - 6)*q^232 + (22*zeta^2 + 11*zeta - 33)*q^233 + (-8*zeta^2 
+ 8*zeta + 16)*q^239 + 1/2*(-5*zeta^2 - 10*zeta + 5)*q^242 + (-16*zeta^2 + 
16*zeta + 32)*q^253 + (16*zeta^2 + 8*zeta - 24)*q^254 + 1/2*(17*zeta^2 + 34*zeta
- 17)*q^256 + (-6*zeta^2 - 3*zeta + 9)*q^261 + (-16*zeta^2 - 32*zeta + 16)*q^263
+ (-4*zeta^2 - 2*zeta + 6)*q^268 + (5*zeta^2 - 5*zeta - 10)*q^274 + (-20*zeta^2 
- 10*zeta + 30)*q^275 + (5*zeta^2 + 10*zeta - 5)*q^277 + (13*zeta^2 - 13*zeta - 
26)*q^281 + (8*zeta^2 + 16*zeta - 8)*q^284 + 1/2*(15*zeta^2 - 15*zeta - 
30)*q^288 + 1/2*(-34*zeta^2 - 17*zeta + 51)*q^289 + (18*zeta^2 + 9*zeta - 
27)*q^296 + (-11*zeta^2 - 22*zeta + 11)*q^298 + (12*zeta^2 - 12*zeta - 24)*q^302
+ (4*zeta^2 - 4*zeta - 8)*q^316 + (-34*zeta^2 - 17*zeta + 51)*q^317 + (-4*zeta^2
- 8*zeta + 4)*q^319 + 1/2*(-18*zeta^2 - 9*zeta + 27)*q^324 + (10*zeta^2 + 
20*zeta - 10)*q^326 + (36*zeta^2 + 18*zeta - 54)*q^331 + (-9*zeta^2 - 18*zeta + 
9)*q^333 + (-15*zeta^2 + 15*zeta + 30)*q^337 + 1/2*(-26*zeta^2 - 13*zeta + 
39)*q^338 + (-18*zeta^2 + 18*zeta + 36)*q^344 + (-2*zeta^2 - 4*zeta + 2)*q^347 +
(20*zeta^2 + 10*zeta - 30)*q^352 + (-2*zeta^2 + 2*zeta + 4)*q^358 + (8*zeta^2 + 
4*zeta - 12)*q^359 + 1/2*(19*zeta^2 + 38*zeta - 19)*q^361 + (4*zeta^2 + 8*zeta -
4)*q^368 + (22*zeta^2 + 11*zeta - 33)*q^373 + (6*zeta^2 - 6*zeta - 12)*q^379 + 
(-4*zeta^2 - 8*zeta + 4)*q^382 + (-9*zeta^2 + 9*zeta + 18)*q^386 + (36*zeta^2 + 
18*zeta - 54)*q^387 + (19*zeta^2 + 38*zeta - 19)*q^389 + (-26*zeta^2 - 13*zeta +
39)*q^394 + (-6*zeta^2 - 12*zeta + 6)*q^396 + 1/2*(-5*zeta^2 + 5*zeta + 
10)*q^400 + (-34*zeta^2 - 17*zeta + 51)*q^401 + (12*zeta^2 - 12*zeta - 24)*q^407
+ (12*zeta^2 - 12*zeta - 24)*q^414 + (13*zeta^2 - 13*zeta - 26)*q^421 + 
(-12*zeta^2 - 6*zeta + 18)*q^422 + (-15*zeta^2 - 30*zeta + 15)*q^424 + 
(-10*zeta^2 + 10*zeta + 20)*q^428 + (-16*zeta^2 - 32*zeta + 16)*q^431 + 
(-18*zeta^2 - 9*zeta + 27)*q^436 + (-20*zeta^2 - 10*zeta + 30)*q^443 + (-zeta^2 
+ zeta + 2)*q^449 + 1/2*(30*zeta^2 + 15*zeta - 45)*q^450 + (zeta^2 + 2*zeta - 
1)*q^452 + (-6*zeta^2 - 3*zeta + 9)*q^457 + (20*zeta^2 - 20*zeta - 40)*q^463 + 
(-2*zeta^2 - zeta + 3)*q^464 + (-11*zeta^2 - 22*zeta + 11)*q^466 + (24*zeta^2 + 
48*zeta - 24)*q^473 + (-15*zeta^2 + 15*zeta + 30)*q^477 + (16*zeta^2 + 8*zeta - 
24)*q^478 + 1/2*(5*zeta^2 - 5*zeta - 10)*q^484 + (12*zeta^2 + 24*zeta - 
12)*q^487 + (-22*zeta^2 + 22*zeta + 44)*q^491 + (36*zeta^2 + 18*zeta - 54)*q^499
+ (32*zeta^2 + 16*zeta - 48)*q^506 + (8*zeta^2 + 16*zeta - 8)*q^508 + O(q^511)] 
;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_7C1 := Curve(P_Q, [ PolynomialRing(ext<K|Polynomial(K, [-1, -2, 
1, 1])> where K is RationalField(), 2) | ]);
