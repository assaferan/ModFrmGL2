
    /****************************************************
    Loading this file in magma loads the objects fs_7A1 
    and X_7A1. fs_7A1 is a list of power series which form 
    a basis for the space of cusp forms. X_7A1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, \[ 1, 1, 1, 1, 1, 1, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_7A1 := [Kq | (-zeta^5 - 2*zeta^4 + 4*zeta^3 + 3*zeta^2 + 2*zeta
+ 1)*q + (-4*zeta^5 - zeta^4 - 5*zeta^3 - 2*zeta^2 - 6*zeta - 3)*q^2 + 
(-5*zeta^5 - 3*zeta^4 - zeta^3 + zeta^2 - 4*zeta - 2)*q^4 + (3*zeta^5 + 6*zeta^4
- 12*zeta^3 - 9*zeta^2 - 6*zeta - 3)*q^8 + (12*zeta^5 + 3*zeta^4 + 15*zeta^3 + 
6*zeta^2 + 18*zeta + 9)*q^9 + (20*zeta^5 + 12*zeta^4 + 4*zeta^3 - 4*zeta^2 + 
16*zeta + 8)*q^11 + (4*zeta^5 + zeta^4 + 5*zeta^3 + 2*zeta^2 + 6*zeta + 3)*q^16 
+ (-15*zeta^5 - 9*zeta^4 - 3*zeta^3 + 3*zeta^2 - 12*zeta - 6)*q^18 + (-4*zeta^5 
- 8*zeta^4 + 16*zeta^3 + 12*zeta^2 + 8*zeta + 4)*q^22 + (-32*zeta^5 - 8*zeta^4 -
40*zeta^3 - 16*zeta^2 - 48*zeta - 24)*q^23 + (-25*zeta^5 - 15*zeta^4 - 5*zeta^3 
+ 5*zeta^2 - 20*zeta - 10)*q^25 + (-2*zeta^5 - 4*zeta^4 + 8*zeta^3 + 6*zeta^2 + 
4*zeta + 2)*q^29 + (25*zeta^5 + 15*zeta^4 + 5*zeta^3 - 5*zeta^2 + 20*zeta + 
10)*q^32 + (-3*zeta^5 - 6*zeta^4 + 12*zeta^3 + 9*zeta^2 + 6*zeta + 3)*q^36 + 
(24*zeta^5 + 6*zeta^4 + 30*zeta^3 + 12*zeta^2 + 36*zeta + 18)*q^37 + (12*zeta^5 
+ 24*zeta^4 - 48*zeta^3 - 36*zeta^2 - 24*zeta - 12)*q^43 + (16*zeta^5 + 4*zeta^4
+ 20*zeta^3 + 8*zeta^2 + 24*zeta + 12)*q^44 + (40*zeta^5 + 24*zeta^4 + 8*zeta^3 
- 8*zeta^2 + 32*zeta + 16)*q^46 + (5*zeta^5 + 10*zeta^4 - 20*zeta^3 - 15*zeta^2 
- 10*zeta - 5)*q^50 + (-50*zeta^5 - 30*zeta^4 - 10*zeta^3 + 10*zeta^2 - 40*zeta 
- 20)*q^53 + (-8*zeta^5 - 2*zeta^4 - 10*zeta^3 - 4*zeta^2 - 12*zeta - 6)*q^58 + 
(-7*zeta^5 - 14*zeta^4 + 28*zeta^3 + 21*zeta^2 + 14*zeta + 7)*q^64 + (20*zeta^5 
+ 12*zeta^4 + 4*zeta^3 - 4*zeta^2 + 16*zeta + 8)*q^67 + (-16*zeta^5 - 32*zeta^4 
+ 64*zeta^3 + 48*zeta^2 + 32*zeta + 16)*q^71 + (-36*zeta^5 - 9*zeta^4 - 
45*zeta^3 - 18*zeta^2 - 54*zeta - 27)*q^72 + (-30*zeta^5 - 18*zeta^4 - 6*zeta^3 
+ 6*zeta^2 - 24*zeta - 12)*q^74 + (-32*zeta^5 - 8*zeta^4 - 40*zeta^3 - 16*zeta^2
- 48*zeta - 24)*q^79 + (45*zeta^5 + 27*zeta^4 + 9*zeta^3 - 9*zeta^2 + 36*zeta + 
18)*q^81 + (48*zeta^5 + 12*zeta^4 + 60*zeta^3 + 24*zeta^2 + 72*zeta + 36)*q^86 +
(-60*zeta^5 - 36*zeta^4 - 12*zeta^3 + 12*zeta^2 - 48*zeta - 24)*q^88 + (8*zeta^5
+ 16*zeta^4 - 32*zeta^3 - 24*zeta^2 - 16*zeta - 8)*q^92 + (12*zeta^5 + 24*zeta^4
- 48*zeta^3 - 36*zeta^2 - 24*zeta - 12)*q^99 + (-20*zeta^5 - 5*zeta^4 - 
25*zeta^3 - 10*zeta^2 - 30*zeta - 15)*q^100 + (10*zeta^5 + 20*zeta^4 - 40*zeta^3
- 30*zeta^2 - 20*zeta - 10)*q^106 + (80*zeta^5 + 20*zeta^4 + 100*zeta^3 + 
40*zeta^2 + 120*zeta + 60)*q^107 + (90*zeta^5 + 54*zeta^4 + 18*zeta^3 - 
18*zeta^2 + 72*zeta + 36)*q^109 + (-2*zeta^5 - 4*zeta^4 + 8*zeta^3 + 6*zeta^2 + 
4*zeta + 2)*q^113 + (-10*zeta^5 - 6*zeta^4 - 2*zeta^3 + 2*zeta^2 - 8*zeta - 
4)*q^116 + (-20*zeta^5 - 5*zeta^4 - 25*zeta^3 - 10*zeta^2 - 30*zeta - 15)*q^121 
+ (-16*zeta^5 - 32*zeta^4 + 64*zeta^3 + 48*zeta^2 + 32*zeta + 16)*q^127 + 
(12*zeta^5 + 3*zeta^4 + 15*zeta^3 + 6*zeta^2 + 18*zeta + 9)*q^128 + (-4*zeta^5 -
8*zeta^4 + 16*zeta^3 + 12*zeta^2 + 8*zeta + 4)*q^134 + (-50*zeta^5 - 30*zeta^4 -
10*zeta^3 + 10*zeta^2 - 40*zeta - 20)*q^137 + (-64*zeta^5 - 16*zeta^4 - 
80*zeta^3 - 32*zeta^2 - 96*zeta - 48)*q^142 + (15*zeta^5 + 9*zeta^4 + 3*zeta^3 -
3*zeta^2 + 12*zeta + 6)*q^144 + (-6*zeta^5 - 12*zeta^4 + 24*zeta^3 + 18*zeta^2 +
12*zeta + 6)*q^148 + (-88*zeta^5 - 22*zeta^4 - 110*zeta^3 - 44*zeta^2 - 132*zeta
- 66)*q^149 + (-120*zeta^5 - 72*zeta^4 - 24*zeta^3 + 24*zeta^2 - 96*zeta - 
48)*q^151 + (40*zeta^5 + 24*zeta^4 + 8*zeta^3 - 8*zeta^2 + 32*zeta + 16)*q^158 +
(-9*zeta^5 - 18*zeta^4 + 36*zeta^3 + 27*zeta^2 + 18*zeta + 9)*q^162 + (80*zeta^5
+ 20*zeta^4 + 100*zeta^3 + 40*zeta^2 + 120*zeta + 60)*q^163 + (13*zeta^5 + 
26*zeta^4 - 52*zeta^3 - 39*zeta^2 - 26*zeta - 13)*q^169 + (60*zeta^5 + 36*zeta^4
+ 12*zeta^3 - 12*zeta^2 + 48*zeta + 24)*q^172 + (4*zeta^5 + 8*zeta^4 - 16*zeta^3
- 12*zeta^2 - 8*zeta - 4)*q^176 + (20*zeta^5 + 12*zeta^4 + 4*zeta^3 - 4*zeta^2 +
16*zeta + 8)*q^179 + (96*zeta^5 + 24*zeta^4 + 120*zeta^3 + 48*zeta^2 + 144*zeta 
+ 72)*q^184 + (-32*zeta^5 - 8*zeta^4 - 40*zeta^3 - 16*zeta^2 - 48*zeta - 
24)*q^191 + (90*zeta^5 + 54*zeta^4 + 18*zeta^3 - 18*zeta^2 + 72*zeta + 36)*q^193
+ (26*zeta^5 + 52*zeta^4 - 104*zeta^3 - 78*zeta^2 - 52*zeta - 26)*q^197 + 
(48*zeta^5 + 12*zeta^4 + 60*zeta^3 + 24*zeta^2 + 72*zeta + 36)*q^198 + 
(75*zeta^5 + 45*zeta^4 + 15*zeta^3 - 15*zeta^2 + 60*zeta + 30)*q^200 + 
(-120*zeta^5 - 72*zeta^4 - 24*zeta^3 + 24*zeta^2 - 96*zeta - 48)*q^207 + 
(12*zeta^5 + 24*zeta^4 - 48*zeta^3 - 36*zeta^2 - 24*zeta - 12)*q^211 + 
(-40*zeta^5 - 10*zeta^4 - 50*zeta^3 - 20*zeta^2 - 60*zeta - 30)*q^212 + 
(-100*zeta^5 - 60*zeta^4 - 20*zeta^3 + 20*zeta^2 - 80*zeta - 40)*q^214 + 
(-18*zeta^5 - 36*zeta^4 + 72*zeta^3 + 54*zeta^2 + 36*zeta + 18)*q^218 + 
(-15*zeta^5 - 30*zeta^4 + 60*zeta^3 + 45*zeta^2 + 30*zeta + 15)*q^225 + 
(-8*zeta^5 - 2*zeta^4 - 10*zeta^3 - 4*zeta^2 - 12*zeta - 6)*q^226 + (6*zeta^5 + 
12*zeta^4 - 24*zeta^3 - 18*zeta^2 - 12*zeta - 6)*q^232 + (-88*zeta^5 - 22*zeta^4
- 110*zeta^3 - 44*zeta^2 - 132*zeta - 66)*q^233 + (-16*zeta^5 - 32*zeta^4 + 
64*zeta^3 + 48*zeta^2 + 32*zeta + 16)*q^239 + (25*zeta^5 + 15*zeta^4 + 5*zeta^3 
- 5*zeta^2 + 20*zeta + 10)*q^242 + (-32*zeta^5 - 64*zeta^4 + 128*zeta^3 + 
96*zeta^2 + 64*zeta + 32)*q^253 + (-64*zeta^5 - 16*zeta^4 - 80*zeta^3 - 
32*zeta^2 - 96*zeta - 48)*q^254 + (-85*zeta^5 - 51*zeta^4 - 17*zeta^3 + 
17*zeta^2 - 68*zeta - 34)*q^256 + O(q^259)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_7A1 := Curve(P_Q, [ PolynomialRing(CyclotomicField(7), 2) | ]);
