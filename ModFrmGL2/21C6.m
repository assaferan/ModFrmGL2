
    /****************************************************
    Loading this file in magma loads the objects fs_21C6 
    and X_21C6. fs_21C6 is a list of power series which form 
    a basis for the space of cusp forms. X_21C6 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, \[ 1, -1, 0, 1, -1, 0, 1, 0, -1, 1, 0, -1, 1
]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_21C6 := [Kq | (-5*zeta^11 + 6*zeta^10 - 2*zeta^8 + 8*zeta^7 + 
2*zeta^6 - 4*zeta^5 + zeta^4 + 5*zeta^3 - 4*zeta^2 - 2*zeta + 6)*q + (8*zeta^11 
- 4*zeta^10 + 6*zeta^8 + 4*zeta^7 - 6*zeta^6 + 12*zeta^5 + 4*zeta^4 - 8*zeta^3 +
12*zeta^2 + 6*zeta - 4)*q^2 + (-2*zeta^11 + 8*zeta^10 + 2*zeta^8 - 8*zeta^7 - 
2*zeta^6 + 4*zeta^5 + 6*zeta^4 + 2*zeta^3 + 4*zeta^2 + 2*zeta - 6)*q^3 + 
(2*zeta^11 - 8*zeta^10 - 2*zeta^8 + 8*zeta^7 + 2*zeta^6 - 4*zeta^5 - 6*zeta^4 - 
2*zeta^3 - 4*zeta^2 - 2*zeta + 6)*q^4 + (-8*zeta^11 + 4*zeta^10 - 6*zeta^8 - 
4*zeta^7 + 6*zeta^6 - 12*zeta^5 - 4*zeta^4 + 8*zeta^3 - 12*zeta^2 - 6*zeta + 
4)*q^5 + (20*zeta^11 - 24*zeta^10 + 8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 
- 4*zeta^4 - 20*zeta^3 + 16*zeta^2 + 8*zeta - 24)*q^6 + (-21*zeta^11 + 
14*zeta^10 - 14*zeta^8 + 14*zeta^7 + 14*zeta^6 - 28*zeta^5 - 7*zeta^4 + 
21*zeta^3 - 28*zeta^2 - 14*zeta + 21)*q^7 + (-8*zeta^11 + 4*zeta^10 - 6*zeta^8 -
4*zeta^7 + 6*zeta^6 - 12*zeta^5 - 4*zeta^4 + 8*zeta^3 - 12*zeta^2 - 6*zeta + 
4)*q^9 + (-4*zeta^11 + 16*zeta^10 + 4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 8*zeta^5 +
12*zeta^4 + 4*zeta^3 + 8*zeta^2 + 4*zeta - 12)*q^10 + (-2*zeta^11 + 8*zeta^10 + 
2*zeta^8 - 8*zeta^7 - 2*zeta^6 + 4*zeta^5 + 6*zeta^4 + 2*zeta^3 + 4*zeta^2 + 
2*zeta - 6)*q^11 + (-16*zeta^11 + 8*zeta^10 - 12*zeta^8 - 8*zeta^7 + 12*zeta^6 -
24*zeta^5 - 8*zeta^4 + 16*zeta^3 - 24*zeta^2 - 12*zeta + 8)*q^12 + (-5*zeta^11 +
6*zeta^10 - 2*zeta^8 + 8*zeta^7 + 2*zeta^6 - 4*zeta^5 + zeta^4 + 5*zeta^3 - 
4*zeta^2 - 2*zeta + 6)*q^13 + (28*zeta^10 + 14*zeta^8 - 14*zeta^6 + 28*zeta^5 + 
28*zeta^4 + 28*zeta^2 + 14*zeta - 14)*q^14 + (-20*zeta^11 + 24*zeta^10 - 
8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 + 4*zeta^4 + 20*zeta^3 - 16*zeta^2 -
8*zeta + 24)*q^15 + (-16*zeta^11 + 8*zeta^10 - 12*zeta^8 - 8*zeta^7 + 12*zeta^6 
- 24*zeta^5 - 8*zeta^4 + 16*zeta^3 - 24*zeta^2 - 12*zeta + 8)*q^16 + (-4*zeta^11
+ 16*zeta^10 + 4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 8*zeta^5 + 12*zeta^4 + 4*zeta^3
+ 8*zeta^2 + 4*zeta - 12)*q^18 + (4*zeta^11 - 2*zeta^10 + 3*zeta^8 + 2*zeta^7 - 
3*zeta^6 + 6*zeta^5 + 2*zeta^4 - 4*zeta^3 + 6*zeta^2 + 3*zeta - 2)*q^19 + 
(20*zeta^11 - 24*zeta^10 + 8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 - 
4*zeta^4 - 20*zeta^3 + 16*zeta^2 + 8*zeta - 24)*q^20 + (-42*zeta^11 + 56*zeta^10
- 14*zeta^8 + 28*zeta^7 + 14*zeta^6 - 28*zeta^5 + 14*zeta^4 + 42*zeta^3 - 
28*zeta^2 - 14*zeta + 28)*q^21 + (20*zeta^11 - 24*zeta^10 + 8*zeta^8 - 32*zeta^7
- 8*zeta^6 + 16*zeta^5 - 4*zeta^4 - 20*zeta^3 + 16*zeta^2 + 8*zeta - 24)*q^22 + 
(-zeta^11 + 4*zeta^10 + zeta^8 - 4*zeta^7 - zeta^6 + 2*zeta^5 + 3*zeta^4 + 
zeta^3 + 2*zeta^2 + zeta - 3)*q^25 + (8*zeta^11 - 4*zeta^10 + 6*zeta^8 + 
4*zeta^7 - 6*zeta^6 + 12*zeta^5 + 4*zeta^4 - 8*zeta^3 + 12*zeta^2 + 6*zeta - 
4)*q^26 + (10*zeta^11 - 12*zeta^10 + 4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 8*zeta^5 
- 2*zeta^4 - 10*zeta^3 + 8*zeta^2 + 4*zeta - 12)*q^27 + (42*zeta^11 - 56*zeta^10
+ 14*zeta^8 - 28*zeta^7 - 14*zeta^6 + 28*zeta^5 - 14*zeta^4 - 42*zeta^3 + 
28*zeta^2 + 14*zeta - 28)*q^28 + (-20*zeta^11 + 24*zeta^10 - 8*zeta^8 + 
32*zeta^7 + 8*zeta^6 - 16*zeta^5 + 4*zeta^4 + 20*zeta^3 - 16*zeta^2 - 8*zeta + 
24)*q^29 + (32*zeta^11 - 16*zeta^10 + 24*zeta^8 + 16*zeta^7 - 24*zeta^6 + 
48*zeta^5 + 16*zeta^4 - 32*zeta^3 + 48*zeta^2 + 24*zeta - 16)*q^30 + (9*zeta^11 
- 36*zeta^10 - 9*zeta^8 + 36*zeta^7 + 9*zeta^6 - 18*zeta^5 - 27*zeta^4 - 
9*zeta^3 - 18*zeta^2 - 9*zeta + 27)*q^31 + (-8*zeta^11 + 32*zeta^10 + 8*zeta^8 -
32*zeta^7 - 8*zeta^6 + 16*zeta^5 + 24*zeta^4 + 8*zeta^3 + 16*zeta^2 + 8*zeta - 
24)*q^32 + (16*zeta^11 - 8*zeta^10 + 12*zeta^8 + 8*zeta^7 - 12*zeta^6 + 
24*zeta^5 + 8*zeta^4 - 16*zeta^3 + 24*zeta^2 + 12*zeta - 8)*q^33 + (-28*zeta^10 
- 14*zeta^8 + 14*zeta^6 - 28*zeta^5 - 28*zeta^4 - 28*zeta^2 - 14*zeta + 14)*q^35
+ (20*zeta^11 - 24*zeta^10 + 8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 - 
4*zeta^4 - 20*zeta^3 + 16*zeta^2 + 8*zeta - 24)*q^36 + (12*zeta^11 - 6*zeta^10 +
9*zeta^8 + 6*zeta^7 - 9*zeta^6 + 18*zeta^5 + 6*zeta^4 - 12*zeta^3 + 18*zeta^2 + 
9*zeta - 6)*q^37 + (2*zeta^11 - 8*zeta^10 - 2*zeta^8 + 8*zeta^7 + 2*zeta^6 - 
4*zeta^5 - 6*zeta^4 - 2*zeta^3 - 4*zeta^2 - 2*zeta + 6)*q^38 + (-2*zeta^11 + 
8*zeta^10 + 2*zeta^8 - 8*zeta^7 - 2*zeta^6 + 4*zeta^5 + 6*zeta^4 + 2*zeta^3 + 
4*zeta^2 + 2*zeta - 6)*q^39 + (50*zeta^11 - 60*zeta^10 + 20*zeta^8 - 80*zeta^7 -
20*zeta^6 + 40*zeta^5 - 10*zeta^4 - 50*zeta^3 + 40*zeta^2 + 20*zeta - 60)*q^41 +
(84*zeta^11 - 56*zeta^10 + 56*zeta^8 - 56*zeta^7 - 56*zeta^6 + 112*zeta^5 + 
28*zeta^4 - 84*zeta^3 + 112*zeta^2 + 56*zeta - 84)*q^42 + (-25*zeta^11 + 
30*zeta^10 - 10*zeta^8 + 40*zeta^7 + 10*zeta^6 - 20*zeta^5 + 5*zeta^4 + 
25*zeta^3 - 20*zeta^2 - 10*zeta + 30)*q^43 + (-16*zeta^11 + 8*zeta^10 - 
12*zeta^8 - 8*zeta^7 + 12*zeta^6 - 24*zeta^5 - 8*zeta^4 + 16*zeta^3 - 24*zeta^2 
- 12*zeta + 8)*q^44 + (4*zeta^11 - 16*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 
- 8*zeta^5 - 12*zeta^4 - 4*zeta^3 - 8*zeta^2 - 4*zeta + 12)*q^45 + (-24*zeta^11 
+ 12*zeta^10 - 18*zeta^8 - 12*zeta^7 + 18*zeta^6 - 36*zeta^5 - 12*zeta^4 + 
24*zeta^3 - 36*zeta^2 - 18*zeta + 12)*q^47 + (-40*zeta^11 + 48*zeta^10 - 
16*zeta^8 + 64*zeta^7 + 16*zeta^6 - 32*zeta^5 + 8*zeta^4 + 40*zeta^3 - 32*zeta^2
- 16*zeta + 48)*q^48 + (42*zeta^11 - 14*zeta^10 + 35*zeta^8 - 28*zeta^7 - 
35*zeta^6 + 70*zeta^5 + 28*zeta^4 - 42*zeta^3 + 70*zeta^2 + 35*zeta - 49)*q^49 +
(10*zeta^11 - 12*zeta^10 + 4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 8*zeta^5 - 2*zeta^4
- 10*zeta^3 + 8*zeta^2 + 4*zeta - 12)*q^50 + (2*zeta^11 - 8*zeta^10 - 2*zeta^8 +
8*zeta^7 + 2*zeta^6 - 4*zeta^5 - 6*zeta^4 - 2*zeta^3 - 4*zeta^2 - 2*zeta + 
6)*q^52 + (12*zeta^11 - 48*zeta^10 - 12*zeta^8 + 48*zeta^7 + 12*zeta^6 - 
24*zeta^5 - 36*zeta^4 - 12*zeta^3 - 24*zeta^2 - 12*zeta + 36)*q^53 + 
(-16*zeta^11 + 8*zeta^10 - 12*zeta^8 - 8*zeta^7 + 12*zeta^6 - 24*zeta^5 - 
8*zeta^4 + 16*zeta^3 - 24*zeta^2 - 12*zeta + 8)*q^54 + (-20*zeta^11 + 24*zeta^10
- 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 + 4*zeta^4 + 20*zeta^3 - 16*zeta^2
- 8*zeta + 24)*q^55 + (10*zeta^11 - 12*zeta^10 + 4*zeta^8 - 16*zeta^7 - 4*zeta^6
+ 8*zeta^5 - 2*zeta^4 - 10*zeta^3 + 8*zeta^2 + 4*zeta - 12)*q^57 + (32*zeta^11 -
16*zeta^10 + 24*zeta^8 + 16*zeta^7 - 24*zeta^6 + 48*zeta^5 + 16*zeta^4 - 
32*zeta^3 + 48*zeta^2 + 24*zeta - 16)*q^58 + (-12*zeta^11 + 48*zeta^10 + 
12*zeta^8 - 48*zeta^7 - 12*zeta^6 + 24*zeta^5 + 36*zeta^4 + 12*zeta^3 + 
24*zeta^2 + 12*zeta - 36)*q^59 + (8*zeta^11 - 32*zeta^10 - 8*zeta^8 + 32*zeta^7 
+ 8*zeta^6 - 16*zeta^5 - 24*zeta^4 - 8*zeta^3 - 16*zeta^2 - 8*zeta + 24)*q^60 + 
(40*zeta^11 - 20*zeta^10 + 30*zeta^8 + 20*zeta^7 - 30*zeta^6 + 60*zeta^5 + 
20*zeta^4 - 40*zeta^3 + 60*zeta^2 + 30*zeta - 20)*q^61 + (-90*zeta^11 + 
108*zeta^10 - 36*zeta^8 + 144*zeta^7 + 36*zeta^6 - 72*zeta^5 + 18*zeta^4 + 
90*zeta^3 - 72*zeta^2 - 36*zeta + 108)*q^62 + (-28*zeta^10 - 14*zeta^8 + 
14*zeta^6 - 28*zeta^5 - 28*zeta^4 - 28*zeta^2 - 14*zeta + 14)*q^63 + (40*zeta^11
- 48*zeta^10 + 16*zeta^8 - 64*zeta^7 - 16*zeta^6 + 32*zeta^5 - 8*zeta^4 - 
40*zeta^3 + 32*zeta^2 + 16*zeta - 48)*q^64 + (-8*zeta^11 + 4*zeta^10 - 6*zeta^8 
- 4*zeta^7 + 6*zeta^6 - 12*zeta^5 - 4*zeta^4 + 8*zeta^3 - 12*zeta^2 - 6*zeta + 
4)*q^65 + (8*zeta^11 - 32*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 
- 24*zeta^4 - 8*zeta^3 - 16*zeta^2 - 8*zeta + 24)*q^66 + (-5*zeta^11 + 
20*zeta^10 + 5*zeta^8 - 20*zeta^7 - 5*zeta^6 + 10*zeta^5 + 15*zeta^4 + 5*zeta^3 
+ 10*zeta^2 + 5*zeta - 15)*q^67 + (-84*zeta^11 + 112*zeta^10 - 28*zeta^8 + 
56*zeta^7 + 28*zeta^6 - 56*zeta^5 + 28*zeta^4 + 84*zeta^3 - 56*zeta^2 - 28*zeta 
+ 56)*q^70 + (30*zeta^11 - 36*zeta^10 + 12*zeta^8 - 48*zeta^7 - 12*zeta^6 + 
24*zeta^5 - 6*zeta^4 - 30*zeta^3 + 24*zeta^2 + 12*zeta - 36)*q^71 + (-3*zeta^11 
+ 12*zeta^10 + 3*zeta^8 - 12*zeta^7 - 3*zeta^6 + 6*zeta^5 + 9*zeta^4 + 3*zeta^3 
+ 6*zeta^2 + 3*zeta - 9)*q^73 + (6*zeta^11 - 24*zeta^10 - 6*zeta^8 + 24*zeta^7 +
6*zeta^6 - 12*zeta^5 - 18*zeta^4 - 6*zeta^3 - 12*zeta^2 - 6*zeta + 18)*q^74 + 
(8*zeta^11 - 4*zeta^10 + 6*zeta^8 + 4*zeta^7 - 6*zeta^6 + 12*zeta^5 + 4*zeta^4 -
8*zeta^3 + 12*zeta^2 + 6*zeta - 4)*q^75 + (-10*zeta^11 + 12*zeta^10 - 4*zeta^8 +
16*zeta^7 + 4*zeta^6 - 8*zeta^5 + 2*zeta^4 + 10*zeta^3 - 8*zeta^2 - 4*zeta + 
12)*q^76 + (-42*zeta^11 + 56*zeta^10 - 14*zeta^8 + 28*zeta^7 + 14*zeta^6 - 
28*zeta^5 + 14*zeta^4 + 42*zeta^3 - 28*zeta^2 - 14*zeta + 28)*q^77 + (20*zeta^11
- 24*zeta^10 + 8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 - 4*zeta^4 - 
20*zeta^3 + 16*zeta^2 + 8*zeta - 24)*q^78 + (-4*zeta^11 + 2*zeta^10 - 3*zeta^8 -
2*zeta^7 + 3*zeta^6 - 6*zeta^5 - 2*zeta^4 + 4*zeta^3 - 6*zeta^2 - 3*zeta + 
2)*q^79 + (8*zeta^11 - 32*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 
- 24*zeta^4 - 8*zeta^3 - 16*zeta^2 - 8*zeta + 24)*q^80 + (-2*zeta^11 + 8*zeta^10
+ 2*zeta^8 - 8*zeta^7 - 2*zeta^6 + 4*zeta^5 + 6*zeta^4 + 2*zeta^3 + 4*zeta^2 + 
2*zeta - 6)*q^81 + (-80*zeta^11 + 40*zeta^10 - 60*zeta^8 - 40*zeta^7 + 60*zeta^6
- 120*zeta^5 - 40*zeta^4 + 80*zeta^3 - 120*zeta^2 - 60*zeta + 40)*q^82 + 
(-30*zeta^11 + 36*zeta^10 - 12*zeta^8 + 48*zeta^7 + 12*zeta^6 - 24*zeta^5 + 
6*zeta^4 + 30*zeta^3 - 24*zeta^2 - 12*zeta + 36)*q^83 + (-56*zeta^10 - 28*zeta^8
+ 28*zeta^6 - 56*zeta^5 - 56*zeta^4 - 56*zeta^2 - 28*zeta + 28)*q^84 + 
(40*zeta^11 - 20*zeta^10 + 30*zeta^8 + 20*zeta^7 - 30*zeta^6 + 60*zeta^5 + 
20*zeta^4 - 40*zeta^3 + 60*zeta^2 + 30*zeta - 20)*q^86 + (-8*zeta^11 + 
32*zeta^10 + 8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 + 24*zeta^4 + 8*zeta^3 
+ 16*zeta^2 + 8*zeta - 24)*q^87 + (64*zeta^11 - 32*zeta^10 + 48*zeta^8 + 
32*zeta^7 - 48*zeta^6 + 96*zeta^5 + 32*zeta^4 - 64*zeta^3 + 96*zeta^2 + 48*zeta 
- 32)*q^89 + (-40*zeta^11 + 48*zeta^10 - 16*zeta^8 + 64*zeta^7 + 16*zeta^6 - 
32*zeta^5 + 8*zeta^4 + 40*zeta^3 - 32*zeta^2 - 16*zeta + 48)*q^90 + (-21*zeta^11
+ 14*zeta^10 - 14*zeta^8 + 14*zeta^7 + 14*zeta^6 - 28*zeta^5 - 7*zeta^4 + 
21*zeta^3 - 28*zeta^2 - 14*zeta + 21)*q^91 + (-72*zeta^11 + 36*zeta^10 - 
54*zeta^8 - 36*zeta^7 + 54*zeta^6 - 108*zeta^5 - 36*zeta^4 + 72*zeta^3 - 
108*zeta^2 - 54*zeta + 36)*q^93 + (-12*zeta^11 + 48*zeta^10 + 12*zeta^8 - 
48*zeta^7 - 12*zeta^6 + 24*zeta^5 + 36*zeta^4 + 12*zeta^3 + 24*zeta^2 + 12*zeta 
- 36)*q^94 + (-2*zeta^11 + 8*zeta^10 + 2*zeta^8 - 8*zeta^7 - 2*zeta^6 + 4*zeta^5
+ 6*zeta^4 + 2*zeta^3 + 4*zeta^2 + 2*zeta - 6)*q^95 + (64*zeta^11 - 32*zeta^10 +
48*zeta^8 + 32*zeta^7 - 48*zeta^6 + 96*zeta^5 + 32*zeta^4 - 64*zeta^3 + 
96*zeta^2 + 48*zeta - 32)*q^96 + (30*zeta^11 - 36*zeta^10 + 12*zeta^8 - 
48*zeta^7 - 12*zeta^6 + 24*zeta^5 - 6*zeta^4 - 30*zeta^3 + 24*zeta^2 + 12*zeta -
36)*q^97 + (42*zeta^11 - 112*zeta^10 - 14*zeta^8 - 28*zeta^7 + 14*zeta^6 - 
28*zeta^5 - 70*zeta^4 - 42*zeta^3 - 28*zeta^2 - 14*zeta)*q^98 + (-20*zeta^11 + 
24*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 + 4*zeta^4 + 20*zeta^3 
- 16*zeta^2 - 8*zeta + 24)*q^99 + (-8*zeta^11 + 4*zeta^10 - 6*zeta^8 - 4*zeta^7 
+ 6*zeta^6 - 12*zeta^5 - 4*zeta^4 + 8*zeta^3 - 12*zeta^2 - 6*zeta + 4)*q^100 + 
(2*zeta^11 - 8*zeta^10 - 2*zeta^8 + 8*zeta^7 + 2*zeta^6 - 4*zeta^5 - 6*zeta^4 - 
2*zeta^3 - 4*zeta^2 - 2*zeta + 6)*q^101 + (-28*zeta^11 + 14*zeta^10 - 21*zeta^8 
- 14*zeta^7 + 21*zeta^6 - 42*zeta^5 - 14*zeta^4 + 28*zeta^3 - 42*zeta^2 - 
21*zeta + 14)*q^103 + (-84*zeta^11 + 56*zeta^10 - 56*zeta^8 + 56*zeta^7 + 
56*zeta^6 - 112*zeta^5 - 28*zeta^4 + 84*zeta^3 - 112*zeta^2 - 56*zeta + 
84)*q^105 + (-120*zeta^11 + 144*zeta^10 - 48*zeta^8 + 192*zeta^7 + 48*zeta^6 - 
96*zeta^5 + 24*zeta^4 + 120*zeta^3 - 96*zeta^2 - 48*zeta + 144)*q^106 + 
(-32*zeta^11 + 16*zeta^10 - 24*zeta^8 - 16*zeta^7 + 24*zeta^6 - 48*zeta^5 - 
16*zeta^4 + 32*zeta^3 - 48*zeta^2 - 24*zeta + 16)*q^107 + (-4*zeta^11 + 
16*zeta^10 + 4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 8*zeta^5 + 12*zeta^4 + 4*zeta^3 +
8*zeta^2 + 4*zeta - 12)*q^108 + (9*zeta^11 - 36*zeta^10 - 9*zeta^8 + 36*zeta^7 +
9*zeta^6 - 18*zeta^5 - 27*zeta^4 - 9*zeta^3 - 18*zeta^2 - 9*zeta + 27)*q^109 + 
(32*zeta^11 - 16*zeta^10 + 24*zeta^8 + 16*zeta^7 - 24*zeta^6 + 48*zeta^5 + 
16*zeta^4 - 32*zeta^3 + 48*zeta^2 + 24*zeta - 16)*q^110 + (30*zeta^11 - 
36*zeta^10 + 12*zeta^8 - 48*zeta^7 - 12*zeta^6 + 24*zeta^5 - 6*zeta^4 - 
30*zeta^3 + 24*zeta^2 + 12*zeta - 36)*q^111 + (-56*zeta^10 - 28*zeta^8 + 
28*zeta^6 - 56*zeta^5 - 56*zeta^4 - 56*zeta^2 - 28*zeta + 28)*q^112 + 
(-50*zeta^11 + 60*zeta^10 - 20*zeta^8 + 80*zeta^7 + 20*zeta^6 - 40*zeta^5 + 
10*zeta^4 + 50*zeta^3 - 40*zeta^2 - 20*zeta + 60)*q^113 + (-16*zeta^11 + 
8*zeta^10 - 12*zeta^8 - 8*zeta^7 + 12*zeta^6 - 24*zeta^5 - 8*zeta^4 + 16*zeta^3 
- 24*zeta^2 - 12*zeta + 8)*q^114 + (8*zeta^11 - 32*zeta^10 - 8*zeta^8 + 
32*zeta^7 + 8*zeta^6 - 16*zeta^5 - 24*zeta^4 - 8*zeta^3 - 16*zeta^2 - 8*zeta + 
24)*q^116 + (-8*zeta^11 + 4*zeta^10 - 6*zeta^8 - 4*zeta^7 + 6*zeta^6 - 12*zeta^5
- 4*zeta^4 + 8*zeta^3 - 12*zeta^2 - 6*zeta + 4)*q^117 + (120*zeta^11 - 
144*zeta^10 + 48*zeta^8 - 192*zeta^7 - 48*zeta^6 + 96*zeta^5 - 24*zeta^4 - 
120*zeta^3 + 96*zeta^2 + 48*zeta - 144)*q^118 + (-28*zeta^11 + 14*zeta^10 - 
21*zeta^8 - 14*zeta^7 + 21*zeta^6 - 42*zeta^5 - 14*zeta^4 + 28*zeta^3 - 
42*zeta^2 - 21*zeta + 14)*q^121 + (20*zeta^11 - 80*zeta^10 - 20*zeta^8 + 
80*zeta^7 + 20*zeta^6 - 40*zeta^5 - 60*zeta^4 - 20*zeta^3 - 40*zeta^2 - 20*zeta 
+ 60)*q^122 + (20*zeta^11 - 80*zeta^10 - 20*zeta^8 + 80*zeta^7 + 20*zeta^6 - 
40*zeta^5 - 60*zeta^4 - 20*zeta^3 - 40*zeta^2 - 20*zeta + 60)*q^123 + 
(72*zeta^11 - 36*zeta^10 + 54*zeta^8 + 36*zeta^7 - 54*zeta^6 + 108*zeta^5 + 
36*zeta^4 - 72*zeta^3 + 108*zeta^2 + 54*zeta - 36)*q^124 + (-60*zeta^11 + 
72*zeta^10 - 24*zeta^8 + 96*zeta^7 + 24*zeta^6 - 48*zeta^5 + 12*zeta^4 + 
60*zeta^3 - 48*zeta^2 - 24*zeta + 72)*q^125 + (-84*zeta^11 + 112*zeta^10 - 
28*zeta^8 + 56*zeta^7 + 28*zeta^6 - 56*zeta^5 + 28*zeta^4 + 84*zeta^3 - 
56*zeta^2 - 28*zeta + 56)*q^126 + (75*zeta^11 - 90*zeta^10 + 30*zeta^8 - 
120*zeta^7 - 30*zeta^6 + 60*zeta^5 - 15*zeta^4 - 75*zeta^3 + 60*zeta^2 + 30*zeta
- 90)*q^127 + (-10*zeta^11 + 40*zeta^10 + 10*zeta^8 - 40*zeta^7 - 10*zeta^6 + 
20*zeta^5 + 30*zeta^4 + 10*zeta^3 + 20*zeta^2 + 10*zeta - 30)*q^129 + 
(-4*zeta^11 + 16*zeta^10 + 4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 8*zeta^5 + 
12*zeta^4 + 4*zeta^3 + 8*zeta^2 + 4*zeta - 12)*q^130 + (-56*zeta^11 + 28*zeta^10
- 42*zeta^8 - 28*zeta^7 + 42*zeta^6 - 84*zeta^5 - 28*zeta^4 + 56*zeta^3 - 
84*zeta^2 - 42*zeta + 28)*q^131 + (-40*zeta^11 + 48*zeta^10 - 16*zeta^8 + 
64*zeta^7 + 16*zeta^6 - 32*zeta^5 + 8*zeta^4 + 40*zeta^3 - 32*zeta^2 - 16*zeta +
48)*q^132 + (14*zeta^10 + 7*zeta^8 - 7*zeta^6 + 14*zeta^5 + 14*zeta^4 + 
14*zeta^2 + 7*zeta - 7)*q^133 + (50*zeta^11 - 60*zeta^10 + 20*zeta^8 - 80*zeta^7
- 20*zeta^6 + 40*zeta^5 - 10*zeta^4 - 50*zeta^3 + 40*zeta^2 + 20*zeta - 
60)*q^134 + (16*zeta^11 - 8*zeta^10 + 12*zeta^8 + 8*zeta^7 - 12*zeta^6 + 
24*zeta^5 + 8*zeta^4 - 16*zeta^3 + 24*zeta^2 + 12*zeta - 8)*q^135 + (-12*zeta^11
+ 48*zeta^10 + 12*zeta^8 - 48*zeta^7 - 12*zeta^6 + 24*zeta^5 + 36*zeta^4 + 
12*zeta^3 + 24*zeta^2 + 12*zeta - 36)*q^137 + (15*zeta^11 - 18*zeta^10 + 
6*zeta^8 - 24*zeta^7 - 6*zeta^6 + 12*zeta^5 - 3*zeta^4 - 15*zeta^3 + 12*zeta^2 +
6*zeta - 18)*q^139 + (84*zeta^11 - 56*zeta^10 + 56*zeta^8 - 56*zeta^7 - 
56*zeta^6 + 112*zeta^5 + 28*zeta^4 - 84*zeta^3 + 112*zeta^2 + 56*zeta - 
84)*q^140 + (-60*zeta^11 + 72*zeta^10 - 24*zeta^8 + 96*zeta^7 + 24*zeta^6 - 
48*zeta^5 + 12*zeta^4 + 60*zeta^3 - 48*zeta^2 - 24*zeta + 72)*q^141 + 
(-48*zeta^11 + 24*zeta^10 - 36*zeta^8 - 24*zeta^7 + 36*zeta^6 - 72*zeta^5 - 
24*zeta^4 + 48*zeta^3 - 72*zeta^2 - 36*zeta + 24)*q^142 + (-2*zeta^11 + 
8*zeta^10 + 2*zeta^8 - 8*zeta^7 - 2*zeta^6 + 4*zeta^5 + 6*zeta^4 + 2*zeta^3 + 
4*zeta^2 + 2*zeta - 6)*q^143 + (8*zeta^11 - 32*zeta^10 - 8*zeta^8 + 32*zeta^7 + 
8*zeta^6 - 16*zeta^5 - 24*zeta^4 - 8*zeta^3 - 16*zeta^2 - 8*zeta + 24)*q^144 + 
(-32*zeta^11 + 16*zeta^10 - 24*zeta^8 - 16*zeta^7 + 24*zeta^6 - 48*zeta^5 - 
16*zeta^4 + 32*zeta^3 - 48*zeta^2 - 24*zeta + 16)*q^145 + (30*zeta^11 - 
36*zeta^10 + 12*zeta^8 - 48*zeta^7 - 12*zeta^6 + 24*zeta^5 - 6*zeta^4 - 
30*zeta^3 + 24*zeta^2 + 12*zeta - 36)*q^146 + (126*zeta^11 - 140*zeta^10 + 
56*zeta^8 - 84*zeta^7 - 56*zeta^6 + 112*zeta^5 - 14*zeta^4 - 126*zeta^3 + 
112*zeta^2 + 56*zeta - 98)*q^147 + (-30*zeta^11 + 36*zeta^10 - 12*zeta^8 + 
48*zeta^7 + 12*zeta^6 - 24*zeta^5 + 6*zeta^4 + 30*zeta^3 - 24*zeta^2 - 12*zeta +
36)*q^148 + (-48*zeta^11 + 24*zeta^10 - 36*zeta^8 - 24*zeta^7 + 36*zeta^6 - 
72*zeta^5 - 24*zeta^4 + 48*zeta^3 - 72*zeta^2 - 36*zeta + 24)*q^149 + (4*zeta^11
- 16*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 8*zeta^5 - 12*zeta^4 - 4*zeta^3
- 8*zeta^2 - 4*zeta + 12)*q^150 + (-16*zeta^11 + 64*zeta^10 + 16*zeta^8 - 
64*zeta^7 - 16*zeta^6 + 32*zeta^5 + 48*zeta^4 + 16*zeta^3 + 32*zeta^2 + 16*zeta 
- 48)*q^151 + (84*zeta^11 - 56*zeta^10 + 56*zeta^8 - 56*zeta^7 - 56*zeta^6 + 
112*zeta^5 + 28*zeta^4 - 84*zeta^3 + 112*zeta^2 + 56*zeta - 84)*q^154 + 
(90*zeta^11 - 108*zeta^10 + 36*zeta^8 - 144*zeta^7 - 36*zeta^6 + 72*zeta^5 - 
18*zeta^4 - 90*zeta^3 + 72*zeta^2 + 36*zeta - 108)*q^155 + (-16*zeta^11 + 
8*zeta^10 - 12*zeta^8 - 8*zeta^7 + 12*zeta^6 - 24*zeta^5 - 8*zeta^4 + 16*zeta^3 
- 24*zeta^2 - 12*zeta + 8)*q^156 + (-14*zeta^11 + 56*zeta^10 + 14*zeta^8 - 
56*zeta^7 - 14*zeta^6 + 28*zeta^5 + 42*zeta^4 + 14*zeta^3 + 28*zeta^2 + 14*zeta 
- 42)*q^157 + (-2*zeta^11 + 8*zeta^10 + 2*zeta^8 - 8*zeta^7 - 2*zeta^6 + 
4*zeta^5 + 6*zeta^4 + 2*zeta^3 + 4*zeta^2 + 2*zeta - 6)*q^158 + (-96*zeta^11 + 
48*zeta^10 - 72*zeta^8 - 48*zeta^7 + 72*zeta^6 - 144*zeta^5 - 48*zeta^4 + 
96*zeta^3 - 144*zeta^2 - 72*zeta + 48)*q^159 + (-80*zeta^11 + 96*zeta^10 - 
32*zeta^8 + 128*zeta^7 + 32*zeta^6 - 64*zeta^5 + 16*zeta^4 + 80*zeta^3 - 
64*zeta^2 - 32*zeta + 96)*q^160 + (20*zeta^11 - 24*zeta^10 + 8*zeta^8 - 
32*zeta^7 - 8*zeta^6 + 16*zeta^5 - 4*zeta^4 - 20*zeta^3 + 16*zeta^2 + 8*zeta - 
24)*q^162 + (16*zeta^11 - 8*zeta^10 + 12*zeta^8 + 8*zeta^7 - 12*zeta^6 + 
24*zeta^5 + 8*zeta^4 - 16*zeta^3 + 24*zeta^2 + 12*zeta - 8)*q^163 + (-20*zeta^11
+ 80*zeta^10 + 20*zeta^8 - 80*zeta^7 - 20*zeta^6 + 40*zeta^5 + 60*zeta^4 + 
20*zeta^3 + 40*zeta^2 + 20*zeta - 60)*q^164 + (-8*zeta^11 + 32*zeta^10 + 
8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 + 24*zeta^4 + 8*zeta^3 + 16*zeta^2 +
8*zeta - 24)*q^165 + (48*zeta^11 - 24*zeta^10 + 36*zeta^8 + 24*zeta^7 - 
36*zeta^6 + 72*zeta^5 + 24*zeta^4 - 48*zeta^3 + 72*zeta^2 + 36*zeta - 24)*q^166 
+ (70*zeta^11 - 84*zeta^10 + 28*zeta^8 - 112*zeta^7 - 28*zeta^6 + 56*zeta^5 - 
14*zeta^4 - 70*zeta^3 + 56*zeta^2 + 28*zeta - 84)*q^167 + (60*zeta^11 - 
72*zeta^10 + 24*zeta^8 - 96*zeta^7 - 24*zeta^6 + 48*zeta^5 - 12*zeta^4 - 
60*zeta^3 + 48*zeta^2 + 24*zeta - 72)*q^169 + (-2*zeta^11 + 8*zeta^10 + 2*zeta^8
- 8*zeta^7 - 2*zeta^6 + 4*zeta^5 + 6*zeta^4 + 2*zeta^3 + 4*zeta^2 + 2*zeta - 
6)*q^171 + (10*zeta^11 - 40*zeta^10 - 10*zeta^8 + 40*zeta^7 + 10*zeta^6 - 
20*zeta^5 - 30*zeta^4 - 10*zeta^3 - 20*zeta^2 - 10*zeta + 30)*q^172 + 
(32*zeta^11 - 16*zeta^10 + 24*zeta^8 + 16*zeta^7 - 24*zeta^6 + 48*zeta^5 + 
16*zeta^4 - 32*zeta^3 + 48*zeta^2 + 24*zeta - 16)*q^173 + (80*zeta^11 - 
96*zeta^10 + 32*zeta^8 - 128*zeta^7 - 32*zeta^6 + 64*zeta^5 - 16*zeta^4 - 
80*zeta^3 + 64*zeta^2 + 32*zeta - 96)*q^174 + (-21*zeta^11 + 28*zeta^10 - 
7*zeta^8 + 14*zeta^7 + 7*zeta^6 - 14*zeta^5 + 7*zeta^4 + 21*zeta^3 - 14*zeta^2 -
7*zeta + 14)*q^175 + (-40*zeta^11 + 48*zeta^10 - 16*zeta^8 + 64*zeta^7 + 
16*zeta^6 - 32*zeta^5 + 8*zeta^4 + 40*zeta^3 - 32*zeta^2 - 16*zeta + 48)*q^176 +
(96*zeta^11 - 48*zeta^10 + 72*zeta^8 + 48*zeta^7 - 72*zeta^6 + 144*zeta^5 + 
48*zeta^4 - 96*zeta^3 + 144*zeta^2 + 72*zeta - 48)*q^177 + (32*zeta^11 - 
128*zeta^10 - 32*zeta^8 + 128*zeta^7 + 32*zeta^6 - 64*zeta^5 - 96*zeta^4 - 
32*zeta^3 - 64*zeta^2 - 32*zeta + 96)*q^178 + (2*zeta^11 - 8*zeta^10 - 2*zeta^8 
+ 8*zeta^7 + 2*zeta^6 - 4*zeta^5 - 6*zeta^4 - 2*zeta^3 - 4*zeta^2 - 2*zeta + 
6)*q^179 + (32*zeta^11 - 16*zeta^10 + 24*zeta^8 + 16*zeta^7 - 24*zeta^6 + 
48*zeta^5 + 16*zeta^4 - 32*zeta^3 + 48*zeta^2 + 24*zeta - 16)*q^180 + 
(-65*zeta^11 + 78*zeta^10 - 26*zeta^8 + 104*zeta^7 + 26*zeta^6 - 52*zeta^5 + 
13*zeta^4 + 65*zeta^3 - 52*zeta^2 - 26*zeta + 78)*q^181 + (28*zeta^10 + 
14*zeta^8 - 14*zeta^6 + 28*zeta^5 + 28*zeta^4 + 28*zeta^2 + 14*zeta - 14)*q^182 
+ (100*zeta^11 - 120*zeta^10 + 40*zeta^8 - 160*zeta^7 - 40*zeta^6 + 80*zeta^5 - 
20*zeta^4 - 100*zeta^3 + 80*zeta^2 + 40*zeta - 120)*q^183 + (-6*zeta^11 + 
24*zeta^10 + 6*zeta^8 - 24*zeta^7 - 6*zeta^6 + 12*zeta^5 + 18*zeta^4 + 6*zeta^3 
+ 12*zeta^2 + 6*zeta - 18)*q^185 + (-36*zeta^11 + 144*zeta^10 + 36*zeta^8 - 
144*zeta^7 - 36*zeta^6 + 72*zeta^5 + 108*zeta^4 + 36*zeta^3 + 72*zeta^2 + 
36*zeta - 108)*q^186 + (60*zeta^11 - 72*zeta^10 + 24*zeta^8 - 96*zeta^7 - 
24*zeta^6 + 48*zeta^5 - 12*zeta^4 - 60*zeta^3 + 48*zeta^2 + 24*zeta - 72)*q^188 
+ (42*zeta^11 - 28*zeta^10 + 28*zeta^8 - 28*zeta^7 - 28*zeta^6 + 56*zeta^5 + 
14*zeta^4 - 42*zeta^3 + 56*zeta^2 + 28*zeta - 42)*q^189 + (20*zeta^11 - 
24*zeta^10 + 8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 - 4*zeta^4 - 20*zeta^3 
+ 16*zeta^2 + 8*zeta - 24)*q^190 + (40*zeta^11 - 20*zeta^10 + 30*zeta^8 + 
20*zeta^7 - 30*zeta^6 + 60*zeta^5 + 20*zeta^4 - 40*zeta^3 + 60*zeta^2 + 30*zeta 
- 20)*q^191 + (16*zeta^11 - 64*zeta^10 - 16*zeta^8 + 64*zeta^7 + 16*zeta^6 - 
32*zeta^5 - 48*zeta^4 - 16*zeta^3 - 32*zeta^2 - 16*zeta + 48)*q^192 + 
(11*zeta^11 - 44*zeta^10 - 11*zeta^8 + 44*zeta^7 + 11*zeta^6 - 22*zeta^5 - 
33*zeta^4 - 11*zeta^3 - 22*zeta^2 - 11*zeta + 33)*q^193 + (-48*zeta^11 + 
24*zeta^10 - 36*zeta^8 - 24*zeta^7 + 36*zeta^6 - 72*zeta^5 - 24*zeta^4 + 
48*zeta^3 - 72*zeta^2 - 36*zeta + 24)*q^194 + (-20*zeta^11 + 24*zeta^10 - 
8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 + 4*zeta^4 + 20*zeta^3 - 16*zeta^2 -
8*zeta + 24)*q^195 + (-126*zeta^11 + 140*zeta^10 - 56*zeta^8 + 84*zeta^7 + 
56*zeta^6 - 112*zeta^5 + 14*zeta^4 + 126*zeta^3 - 112*zeta^2 - 56*zeta + 
98)*q^196 + (-80*zeta^11 + 96*zeta^10 - 32*zeta^8 + 128*zeta^7 + 32*zeta^6 - 
64*zeta^5 + 16*zeta^4 + 80*zeta^3 - 64*zeta^2 - 32*zeta + 96)*q^197 + 
(32*zeta^11 - 16*zeta^10 + 24*zeta^8 + 16*zeta^7 - 24*zeta^6 + 48*zeta^5 + 
16*zeta^4 - 32*zeta^3 + 48*zeta^2 + 24*zeta - 16)*q^198 + (40*zeta^11 - 
20*zeta^10 + 30*zeta^8 + 20*zeta^7 - 30*zeta^6 + 60*zeta^5 + 20*zeta^4 - 
40*zeta^3 + 60*zeta^2 + 30*zeta - 20)*q^201 + (-20*zeta^11 + 24*zeta^10 - 
8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 + 4*zeta^4 + 20*zeta^3 - 16*zeta^2 -
8*zeta + 24)*q^202 + (-84*zeta^11 + 56*zeta^10 - 56*zeta^8 + 56*zeta^7 + 
56*zeta^6 - 112*zeta^5 - 28*zeta^4 + 84*zeta^3 - 112*zeta^2 - 56*zeta + 
84)*q^203 + (80*zeta^11 - 40*zeta^10 + 60*zeta^8 + 40*zeta^7 - 60*zeta^6 + 
120*zeta^5 + 40*zeta^4 - 80*zeta^3 + 120*zeta^2 + 60*zeta - 40)*q^205 + 
(-14*zeta^11 + 56*zeta^10 + 14*zeta^8 - 56*zeta^7 - 14*zeta^6 + 28*zeta^5 + 
42*zeta^4 + 14*zeta^3 + 28*zeta^2 + 14*zeta - 42)*q^206 + (-16*zeta^11 + 
8*zeta^10 - 12*zeta^8 - 8*zeta^7 + 12*zeta^6 - 24*zeta^5 - 8*zeta^4 + 16*zeta^3 
- 24*zeta^2 - 12*zeta + 8)*q^208 + (10*zeta^11 - 12*zeta^10 + 4*zeta^8 - 
16*zeta^7 - 4*zeta^6 + 8*zeta^5 - 2*zeta^4 - 10*zeta^3 + 8*zeta^2 + 4*zeta - 
12)*q^209 + (112*zeta^10 + 56*zeta^8 - 56*zeta^6 + 112*zeta^5 + 112*zeta^4 + 
112*zeta^2 + 56*zeta - 56)*q^210 + (-20*zeta^11 + 24*zeta^10 - 8*zeta^8 + 
32*zeta^7 + 8*zeta^6 - 16*zeta^5 + 4*zeta^4 + 20*zeta^3 - 16*zeta^2 - 8*zeta + 
24)*q^211 + (96*zeta^11 - 48*zeta^10 + 72*zeta^8 + 48*zeta^7 - 72*zeta^6 + 
144*zeta^5 + 48*zeta^4 - 96*zeta^3 + 144*zeta^2 + 72*zeta - 48)*q^212 + 
(12*zeta^11 - 48*zeta^10 - 12*zeta^8 + 48*zeta^7 + 12*zeta^6 - 24*zeta^5 - 
36*zeta^4 - 12*zeta^3 - 24*zeta^2 - 12*zeta + 36)*q^213 + (-16*zeta^11 + 
64*zeta^10 + 16*zeta^8 - 64*zeta^7 - 16*zeta^6 + 32*zeta^5 + 48*zeta^4 + 
16*zeta^3 + 32*zeta^2 + 16*zeta - 48)*q^214 + (-40*zeta^11 + 20*zeta^10 - 
30*zeta^8 - 20*zeta^7 + 30*zeta^6 - 60*zeta^5 - 20*zeta^4 + 40*zeta^3 - 
60*zeta^2 - 30*zeta + 20)*q^215 + (189*zeta^11 - 252*zeta^10 + 63*zeta^8 - 
126*zeta^7 - 63*zeta^6 + 126*zeta^5 - 63*zeta^4 - 189*zeta^3 + 126*zeta^2 + 
63*zeta - 126)*q^217 + (-90*zeta^11 + 108*zeta^10 - 36*zeta^8 + 144*zeta^7 + 
36*zeta^6 - 72*zeta^5 + 18*zeta^4 + 90*zeta^3 - 72*zeta^2 - 36*zeta + 108)*q^218
+ (24*zeta^11 - 12*zeta^10 + 18*zeta^8 + 12*zeta^7 - 18*zeta^6 + 36*zeta^5 + 
12*zeta^4 - 24*zeta^3 + 36*zeta^2 + 18*zeta - 12)*q^219 + (8*zeta^11 - 
32*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 - 24*zeta^4 - 8*zeta^3 
- 16*zeta^2 - 8*zeta + 24)*q^220 + (-48*zeta^11 + 24*zeta^10 - 36*zeta^8 - 
24*zeta^7 + 36*zeta^6 - 72*zeta^5 - 24*zeta^4 + 48*zeta^3 - 72*zeta^2 - 36*zeta 
+ 24)*q^222 + (-80*zeta^11 + 96*zeta^10 - 32*zeta^8 + 128*zeta^7 + 32*zeta^6 - 
64*zeta^5 + 16*zeta^4 + 80*zeta^3 - 64*zeta^2 - 32*zeta + 96)*q^223 + 
(-168*zeta^11 + 224*zeta^10 - 56*zeta^8 + 112*zeta^7 + 56*zeta^6 - 112*zeta^5 + 
56*zeta^4 + 168*zeta^3 - 112*zeta^2 - 56*zeta + 112)*q^224 + (-10*zeta^11 + 
12*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 8*zeta^5 + 2*zeta^4 + 10*zeta^3 -
8*zeta^2 - 4*zeta + 12)*q^225 + (80*zeta^11 - 40*zeta^10 + 60*zeta^8 + 40*zeta^7
- 60*zeta^6 + 120*zeta^5 + 40*zeta^4 - 80*zeta^3 + 120*zeta^2 + 60*zeta - 
40)*q^226 + (18*zeta^11 - 72*zeta^10 - 18*zeta^8 + 72*zeta^7 + 18*zeta^6 - 
36*zeta^5 - 54*zeta^4 - 18*zeta^3 - 36*zeta^2 - 18*zeta + 54)*q^227 + 
(-4*zeta^11 + 16*zeta^10 + 4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 8*zeta^5 + 
12*zeta^4 + 4*zeta^3 + 8*zeta^2 + 4*zeta - 12)*q^228 + (-76*zeta^11 + 38*zeta^10
- 57*zeta^8 - 38*zeta^7 + 57*zeta^6 - 114*zeta^5 - 38*zeta^4 + 76*zeta^3 - 
114*zeta^2 - 57*zeta + 38)*q^229 + (56*zeta^10 + 28*zeta^8 - 28*zeta^6 + 
56*zeta^5 + 56*zeta^4 + 56*zeta^2 + 28*zeta - 28)*q^231 + (24*zeta^11 - 
12*zeta^10 + 18*zeta^8 + 12*zeta^7 - 18*zeta^6 + 36*zeta^5 + 12*zeta^4 - 
24*zeta^3 + 36*zeta^2 + 18*zeta - 12)*q^233 + (-4*zeta^11 + 16*zeta^10 + 
4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 8*zeta^5 + 12*zeta^4 + 4*zeta^3 + 8*zeta^2 + 
4*zeta - 12)*q^234 + (12*zeta^11 - 48*zeta^10 - 12*zeta^8 + 48*zeta^7 + 
12*zeta^6 - 24*zeta^5 - 36*zeta^4 - 12*zeta^3 - 24*zeta^2 - 12*zeta + 36)*q^235 
+ (-96*zeta^11 + 48*zeta^10 - 72*zeta^8 - 48*zeta^7 + 72*zeta^6 - 144*zeta^5 - 
48*zeta^4 + 96*zeta^3 - 144*zeta^2 - 72*zeta + 48)*q^236 + (-10*zeta^11 + 
12*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 8*zeta^5 + 2*zeta^4 + 10*zeta^3 -
8*zeta^2 - 4*zeta + 12)*q^237 + (-30*zeta^11 + 36*zeta^10 - 12*zeta^8 + 
48*zeta^7 + 12*zeta^6 - 24*zeta^5 + 6*zeta^4 + 30*zeta^3 - 24*zeta^2 - 12*zeta +
36)*q^239 + (-64*zeta^11 + 32*zeta^10 - 48*zeta^8 - 32*zeta^7 + 48*zeta^6 - 
96*zeta^5 - 32*zeta^4 + 64*zeta^3 - 96*zeta^2 - 48*zeta + 32)*q^240 + 
(14*zeta^11 - 56*zeta^10 - 14*zeta^8 + 56*zeta^7 + 14*zeta^6 - 28*zeta^5 - 
42*zeta^4 - 14*zeta^3 - 28*zeta^2 - 14*zeta + 42)*q^241 + (-14*zeta^11 + 
56*zeta^10 + 14*zeta^8 - 56*zeta^7 - 14*zeta^6 + 28*zeta^5 + 42*zeta^4 + 
14*zeta^3 + 28*zeta^2 + 14*zeta - 42)*q^242 + (-8*zeta^11 + 4*zeta^10 - 6*zeta^8
- 4*zeta^7 + 6*zeta^6 - 12*zeta^5 - 4*zeta^4 + 8*zeta^3 - 12*zeta^2 - 6*zeta + 
4)*q^243 + (-100*zeta^11 + 120*zeta^10 - 40*zeta^8 + 160*zeta^7 + 40*zeta^6 - 
80*zeta^5 + 20*zeta^4 + 100*zeta^3 - 80*zeta^2 - 40*zeta + 120)*q^244 + 
(-42*zeta^11 + 112*zeta^10 + 14*zeta^8 + 28*zeta^7 - 14*zeta^6 + 28*zeta^5 + 
70*zeta^4 + 42*zeta^3 + 28*zeta^2 + 14*zeta)*q^245 + (-200*zeta^11 + 240*zeta^10
- 80*zeta^8 + 320*zeta^7 + 80*zeta^6 - 160*zeta^5 + 40*zeta^4 + 200*zeta^3 - 
160*zeta^2 - 80*zeta + 240)*q^246 + (4*zeta^11 - 2*zeta^10 + 3*zeta^8 + 2*zeta^7
- 3*zeta^6 + 6*zeta^5 + 2*zeta^4 - 4*zeta^3 + 6*zeta^2 + 3*zeta - 2)*q^247 + 
(-12*zeta^11 + 48*zeta^10 + 12*zeta^8 - 48*zeta^7 - 12*zeta^6 + 24*zeta^5 + 
36*zeta^4 + 12*zeta^3 + 24*zeta^2 + 12*zeta - 36)*q^249 + (96*zeta^11 - 
48*zeta^10 + 72*zeta^8 + 48*zeta^7 - 72*zeta^6 + 144*zeta^5 + 48*zeta^4 - 
96*zeta^3 + 144*zeta^2 + 72*zeta - 48)*q^250 + (40*zeta^11 - 48*zeta^10 + 
16*zeta^8 - 64*zeta^7 - 16*zeta^6 + 32*zeta^5 - 8*zeta^4 - 40*zeta^3 + 32*zeta^2
+ 16*zeta - 48)*q^251 + (84*zeta^11 - 56*zeta^10 + 56*zeta^8 - 56*zeta^7 - 
56*zeta^6 + 112*zeta^5 + 28*zeta^4 - 84*zeta^3 + 112*zeta^2 + 56*zeta - 
84)*q^252 + (-120*zeta^11 + 60*zeta^10 - 90*zeta^8 - 60*zeta^7 + 90*zeta^6 - 
180*zeta^5 - 60*zeta^4 + 120*zeta^3 - 180*zeta^2 - 90*zeta + 60)*q^254 + 
(16*zeta^11 - 64*zeta^10 - 16*zeta^8 + 64*zeta^7 + 16*zeta^6 - 32*zeta^5 - 
48*zeta^4 - 16*zeta^3 - 32*zeta^2 - 16*zeta + 48)*q^256 + (104*zeta^11 - 
52*zeta^10 + 78*zeta^8 + 52*zeta^7 - 78*zeta^6 + 156*zeta^5 + 52*zeta^4 - 
104*zeta^3 + 156*zeta^2 + 78*zeta - 52)*q^257 + (100*zeta^11 - 120*zeta^10 + 
40*zeta^8 - 160*zeta^7 - 40*zeta^6 + 80*zeta^5 - 20*zeta^4 - 100*zeta^3 + 
80*zeta^2 + 40*zeta - 120)*q^258 + (42*zeta^10 + 21*zeta^8 - 21*zeta^6 + 
42*zeta^5 + 42*zeta^4 + 42*zeta^2 + 21*zeta - 21)*q^259 + (20*zeta^11 - 
24*zeta^10 + 8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 - 4*zeta^4 - 20*zeta^3 
+ 16*zeta^2 + 8*zeta - 24)*q^260 + (-32*zeta^11 + 16*zeta^10 - 24*zeta^8 - 
16*zeta^7 + 24*zeta^6 - 48*zeta^5 - 16*zeta^4 + 32*zeta^3 - 48*zeta^2 - 24*zeta 
+ 16)*q^261 + (-28*zeta^11 + 112*zeta^10 + 28*zeta^8 - 112*zeta^7 - 28*zeta^6 + 
56*zeta^5 + 84*zeta^4 + 28*zeta^3 + 56*zeta^2 + 28*zeta - 84)*q^262 + (4*zeta^11
- 16*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 8*zeta^5 - 12*zeta^4 - 4*zeta^3
- 8*zeta^2 - 4*zeta + 12)*q^263 + (120*zeta^11 - 144*zeta^10 + 48*zeta^8 - 
192*zeta^7 - 48*zeta^6 + 96*zeta^5 - 24*zeta^4 - 120*zeta^3 + 96*zeta^2 + 
48*zeta - 144)*q^265 + (42*zeta^11 - 56*zeta^10 + 14*zeta^8 - 28*zeta^7 - 
14*zeta^6 + 28*zeta^5 - 14*zeta^4 - 42*zeta^3 + 28*zeta^2 + 14*zeta - 28)*q^266 
+ (160*zeta^11 - 192*zeta^10 + 64*zeta^8 - 256*zeta^7 - 64*zeta^6 + 128*zeta^5 -
32*zeta^4 - 160*zeta^3 + 128*zeta^2 + 64*zeta - 192)*q^267 + (-40*zeta^11 + 
20*zeta^10 - 30*zeta^8 - 20*zeta^7 + 30*zeta^6 - 60*zeta^5 - 20*zeta^4 + 
40*zeta^3 - 60*zeta^2 - 30*zeta + 20)*q^268 + (6*zeta^11 - 24*zeta^10 - 6*zeta^8
+ 24*zeta^7 + 6*zeta^6 - 12*zeta^5 - 18*zeta^4 - 6*zeta^3 - 12*zeta^2 - 6*zeta +
18)*q^269 + (8*zeta^11 - 32*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 
16*zeta^5 - 24*zeta^4 - 8*zeta^3 - 16*zeta^2 - 8*zeta + 24)*q^270 + (64*zeta^11 
- 32*zeta^10 + 48*zeta^8 + 32*zeta^7 - 48*zeta^6 + 96*zeta^5 + 32*zeta^4 - 
64*zeta^3 + 96*zeta^2 + 48*zeta - 32)*q^271 + (-42*zeta^11 + 56*zeta^10 - 
14*zeta^8 + 28*zeta^7 + 14*zeta^6 - 28*zeta^5 + 14*zeta^4 + 42*zeta^3 - 
28*zeta^2 - 14*zeta + 28)*q^273 + (120*zeta^11 - 144*zeta^10 + 48*zeta^8 - 
192*zeta^7 - 48*zeta^6 + 96*zeta^5 - 24*zeta^4 - 120*zeta^3 + 96*zeta^2 + 
48*zeta - 144)*q^274 + (8*zeta^11 - 4*zeta^10 + 6*zeta^8 + 4*zeta^7 - 6*zeta^6 +
12*zeta^5 + 4*zeta^4 - 8*zeta^3 + 12*zeta^2 + 6*zeta - 4)*q^275 + (13*zeta^11 - 
52*zeta^10 - 13*zeta^8 + 52*zeta^7 + 13*zeta^6 - 26*zeta^5 - 39*zeta^4 - 
13*zeta^3 - 26*zeta^2 - 13*zeta + 39)*q^277 + (-24*zeta^11 + 12*zeta^10 - 
18*zeta^8 - 12*zeta^7 + 18*zeta^6 - 36*zeta^5 - 12*zeta^4 + 24*zeta^3 - 
36*zeta^2 - 18*zeta + 12)*q^278 + (90*zeta^11 - 108*zeta^10 + 36*zeta^8 - 
144*zeta^7 - 36*zeta^6 + 72*zeta^5 - 18*zeta^4 - 90*zeta^3 + 72*zeta^2 + 36*zeta
- 108)*q^279 + (20*zeta^11 - 24*zeta^10 + 8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 
16*zeta^5 - 4*zeta^4 - 20*zeta^3 + 16*zeta^2 + 8*zeta - 24)*q^281 + (96*zeta^11 
- 48*zeta^10 + 72*zeta^8 + 48*zeta^7 - 72*zeta^6 + 144*zeta^5 + 48*zeta^4 - 
96*zeta^3 + 144*zeta^2 + 72*zeta - 48)*q^282 + (-11*zeta^11 + 44*zeta^10 + 
11*zeta^8 - 44*zeta^7 - 11*zeta^6 + 22*zeta^5 + 33*zeta^4 + 11*zeta^3 + 
22*zeta^2 + 11*zeta - 33)*q^283 + (-12*zeta^11 + 48*zeta^10 + 12*zeta^8 - 
48*zeta^7 - 12*zeta^6 + 24*zeta^5 + 36*zeta^4 + 12*zeta^3 + 24*zeta^2 + 12*zeta 
- 36)*q^284 + (16*zeta^11 - 8*zeta^10 + 12*zeta^8 + 8*zeta^7 - 12*zeta^6 + 
24*zeta^5 + 8*zeta^4 - 16*zeta^3 + 24*zeta^2 + 12*zeta - 8)*q^285 + (20*zeta^11 
- 24*zeta^10 + 8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 - 4*zeta^4 - 
20*zeta^3 + 16*zeta^2 + 8*zeta - 24)*q^286 + (210*zeta^11 - 140*zeta^10 + 
140*zeta^8 - 140*zeta^7 - 140*zeta^6 + 280*zeta^5 + 70*zeta^4 - 210*zeta^3 + 
280*zeta^2 + 140*zeta - 210)*q^287 + (-80*zeta^11 + 96*zeta^10 - 32*zeta^8 + 
128*zeta^7 + 32*zeta^6 - 64*zeta^5 + 16*zeta^4 + 80*zeta^3 - 64*zeta^2 - 32*zeta
+ 96)*q^288 + (-68*zeta^11 + 34*zeta^10 - 51*zeta^8 - 34*zeta^7 + 51*zeta^6 - 
102*zeta^5 - 34*zeta^4 + 68*zeta^3 - 102*zeta^2 - 51*zeta + 34)*q^289 + 
(-16*zeta^11 + 64*zeta^10 + 16*zeta^8 - 64*zeta^7 - 16*zeta^6 + 32*zeta^5 + 
48*zeta^4 + 16*zeta^3 + 32*zeta^2 + 16*zeta - 48)*q^290 + (12*zeta^11 - 
48*zeta^10 - 12*zeta^8 + 48*zeta^7 + 12*zeta^6 - 24*zeta^5 - 36*zeta^4 - 
12*zeta^3 - 24*zeta^2 - 12*zeta + 36)*q^291 + (-24*zeta^11 + 12*zeta^10 - 
18*zeta^8 - 12*zeta^7 + 18*zeta^6 - 36*zeta^5 - 12*zeta^4 + 24*zeta^3 - 
36*zeta^2 - 18*zeta + 12)*q^292 + (-40*zeta^11 + 48*zeta^10 - 16*zeta^8 + 
64*zeta^7 + 16*zeta^6 - 32*zeta^5 + 8*zeta^4 + 40*zeta^3 - 32*zeta^2 - 16*zeta +
48)*q^293 + (-168*zeta^11 + 56*zeta^10 - 140*zeta^8 + 112*zeta^7 + 140*zeta^6 - 
280*zeta^5 - 112*zeta^4 + 168*zeta^3 - 280*zeta^2 - 140*zeta + 196)*q^294 + 
(-120*zeta^11 + 144*zeta^10 - 48*zeta^8 + 192*zeta^7 + 48*zeta^6 - 96*zeta^5 + 
24*zeta^4 + 120*zeta^3 - 96*zeta^2 - 48*zeta + 144)*q^295 + (4*zeta^11 - 
16*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 8*zeta^5 - 12*zeta^4 - 4*zeta^3 -
8*zeta^2 - 4*zeta + 12)*q^297 + (-24*zeta^11 + 96*zeta^10 + 24*zeta^8 - 
96*zeta^7 - 24*zeta^6 + 48*zeta^5 + 72*zeta^4 + 24*zeta^3 + 48*zeta^2 + 24*zeta 
- 72)*q^298 + (-20*zeta^11 + 24*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 
16*zeta^5 + 4*zeta^4 + 20*zeta^3 - 16*zeta^2 - 8*zeta + 24)*q^300 + 
(-105*zeta^11 + 70*zeta^10 - 70*zeta^8 + 70*zeta^7 + 70*zeta^6 - 140*zeta^5 - 
35*zeta^4 + 105*zeta^3 - 140*zeta^2 - 70*zeta + 105)*q^301 + (160*zeta^11 - 
192*zeta^10 + 64*zeta^8 - 256*zeta^7 - 64*zeta^6 + 128*zeta^5 - 32*zeta^4 - 
160*zeta^3 + 128*zeta^2 + 64*zeta - 192)*q^302 + (-16*zeta^11 + 8*zeta^10 - 
12*zeta^8 - 8*zeta^7 + 12*zeta^6 - 24*zeta^5 - 8*zeta^4 + 16*zeta^3 - 24*zeta^2 
- 12*zeta + 8)*q^303 + (-4*zeta^11 + 16*zeta^10 + 4*zeta^8 - 16*zeta^7 - 
4*zeta^6 + 8*zeta^5 + 12*zeta^4 + 4*zeta^3 + 8*zeta^2 + 4*zeta - 12)*q^304 + 
(-20*zeta^11 + 80*zeta^10 + 20*zeta^8 - 80*zeta^7 - 20*zeta^6 + 40*zeta^5 + 
60*zeta^4 + 20*zeta^3 + 40*zeta^2 + 20*zeta - 60)*q^305 + (85*zeta^11 - 
102*zeta^10 + 34*zeta^8 - 136*zeta^7 - 34*zeta^6 + 68*zeta^5 - 17*zeta^4 - 
85*zeta^3 + 68*zeta^2 + 34*zeta - 102)*q^307 + (-56*zeta^10 - 28*zeta^8 + 
28*zeta^6 - 56*zeta^5 - 56*zeta^4 - 56*zeta^2 - 28*zeta + 28)*q^308 + 
(-70*zeta^11 + 84*zeta^10 - 28*zeta^8 + 112*zeta^7 + 28*zeta^6 - 56*zeta^5 + 
14*zeta^4 + 70*zeta^3 - 56*zeta^2 - 28*zeta + 84)*q^309 + (-144*zeta^11 + 
72*zeta^10 - 108*zeta^8 - 72*zeta^7 + 108*zeta^6 - 216*zeta^5 - 72*zeta^4 + 
144*zeta^3 - 216*zeta^2 - 108*zeta + 72)*q^310 + (-6*zeta^11 + 24*zeta^10 + 
6*zeta^8 - 24*zeta^7 - 6*zeta^6 + 12*zeta^5 + 18*zeta^4 + 6*zeta^3 + 12*zeta^2 +
6*zeta - 18)*q^311 + (-4*zeta^11 + 2*zeta^10 - 3*zeta^8 - 2*zeta^7 + 3*zeta^6 - 
6*zeta^5 - 2*zeta^4 + 4*zeta^3 - 6*zeta^2 - 3*zeta + 2)*q^313 + (140*zeta^11 - 
168*zeta^10 + 56*zeta^8 - 224*zeta^7 - 56*zeta^6 + 112*zeta^5 - 28*zeta^4 - 
140*zeta^3 + 112*zeta^2 + 56*zeta - 168)*q^314 + (84*zeta^11 - 112*zeta^10 + 
28*zeta^8 - 56*zeta^7 - 28*zeta^6 + 56*zeta^5 - 28*zeta^4 - 84*zeta^3 + 
56*zeta^2 + 28*zeta - 56)*q^315 + (10*zeta^11 - 12*zeta^10 + 4*zeta^8 - 
16*zeta^7 - 4*zeta^6 + 8*zeta^5 - 2*zeta^4 - 10*zeta^3 + 8*zeta^2 + 4*zeta - 
12)*q^316 + (96*zeta^11 - 48*zeta^10 + 72*zeta^8 + 48*zeta^7 - 72*zeta^6 + 
144*zeta^5 + 48*zeta^4 - 96*zeta^3 + 144*zeta^2 + 72*zeta - 48)*q^317 + 
(-48*zeta^11 + 192*zeta^10 + 48*zeta^8 - 192*zeta^7 - 48*zeta^6 + 96*zeta^5 + 
144*zeta^4 + 48*zeta^3 + 96*zeta^2 + 48*zeta - 144)*q^318 + (-8*zeta^11 + 
32*zeta^10 + 8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 + 24*zeta^4 + 8*zeta^3 
+ 16*zeta^2 + 8*zeta - 24)*q^319 + (64*zeta^11 - 32*zeta^10 + 48*zeta^8 + 
32*zeta^7 - 48*zeta^6 + 96*zeta^5 + 32*zeta^4 - 64*zeta^3 + 96*zeta^2 + 48*zeta 
- 32)*q^320 + (-80*zeta^11 + 96*zeta^10 - 32*zeta^8 + 128*zeta^7 + 32*zeta^6 - 
64*zeta^5 + 16*zeta^4 + 80*zeta^3 - 64*zeta^2 - 32*zeta + 96)*q^321 + 
(-16*zeta^11 + 8*zeta^10 - 12*zeta^8 - 8*zeta^7 + 12*zeta^6 - 24*zeta^5 - 
8*zeta^4 + 16*zeta^3 - 24*zeta^2 - 12*zeta + 8)*q^324 + (-zeta^11 + 4*zeta^10 + 
zeta^8 - 4*zeta^7 - zeta^6 + 2*zeta^5 + 3*zeta^4 + zeta^3 + 2*zeta^2 + zeta - 
3)*q^325 + (8*zeta^11 - 32*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5
- 24*zeta^4 - 8*zeta^3 - 16*zeta^2 - 8*zeta + 24)*q^326 + (-72*zeta^11 + 
36*zeta^10 - 54*zeta^8 - 36*zeta^7 + 54*zeta^6 - 108*zeta^5 - 36*zeta^4 + 
72*zeta^3 - 108*zeta^2 - 54*zeta + 36)*q^327 + (-84*zeta^10 - 42*zeta^8 + 
42*zeta^6 - 84*zeta^5 - 84*zeta^4 - 84*zeta^2 - 42*zeta + 42)*q^329 + 
(80*zeta^11 - 96*zeta^10 + 32*zeta^8 - 128*zeta^7 - 32*zeta^6 + 64*zeta^5 - 
16*zeta^4 - 80*zeta^3 + 64*zeta^2 + 32*zeta - 96)*q^330 + (-100*zeta^11 + 
50*zeta^10 - 75*zeta^8 - 50*zeta^7 + 75*zeta^6 - 150*zeta^5 - 50*zeta^4 + 
100*zeta^3 - 150*zeta^2 - 75*zeta + 50)*q^331 + (12*zeta^11 - 48*zeta^10 - 
12*zeta^8 + 48*zeta^7 + 12*zeta^6 - 24*zeta^5 - 36*zeta^4 - 12*zeta^3 - 
24*zeta^2 - 12*zeta + 36)*q^332 + (-6*zeta^11 + 24*zeta^10 + 6*zeta^8 - 
24*zeta^7 - 6*zeta^6 + 12*zeta^5 + 18*zeta^4 + 6*zeta^3 + 12*zeta^2 + 6*zeta - 
18)*q^333 + (-112*zeta^11 + 56*zeta^10 - 84*zeta^8 - 56*zeta^7 + 84*zeta^6 - 
168*zeta^5 - 56*zeta^4 + 112*zeta^3 - 168*zeta^2 - 84*zeta + 56)*q^334 + 
(-50*zeta^11 + 60*zeta^10 - 20*zeta^8 + 80*zeta^7 + 20*zeta^6 - 40*zeta^5 + 
10*zeta^4 + 50*zeta^3 - 40*zeta^2 - 20*zeta + 60)*q^335 + (-168*zeta^11 + 
112*zeta^10 - 112*zeta^8 + 112*zeta^7 + 112*zeta^6 - 224*zeta^5 - 56*zeta^4 + 
168*zeta^3 - 224*zeta^2 - 112*zeta + 168)*q^336 + (-65*zeta^11 + 78*zeta^10 - 
26*zeta^8 + 104*zeta^7 + 26*zeta^6 - 52*zeta^5 + 13*zeta^4 + 65*zeta^3 - 
52*zeta^2 - 26*zeta + 78)*q^337 + (-96*zeta^11 + 48*zeta^10 - 72*zeta^8 - 
48*zeta^7 + 72*zeta^6 - 144*zeta^5 - 48*zeta^4 + 96*zeta^3 - 144*zeta^2 - 
72*zeta + 48)*q^338 + (-20*zeta^11 + 80*zeta^10 + 20*zeta^8 - 80*zeta^7 - 
20*zeta^6 + 40*zeta^5 + 60*zeta^4 + 20*zeta^3 + 40*zeta^2 + 20*zeta - 60)*q^339 
+ (-72*zeta^11 + 36*zeta^10 - 54*zeta^8 - 36*zeta^7 + 54*zeta^6 - 108*zeta^5 - 
36*zeta^4 + 72*zeta^3 - 108*zeta^2 - 54*zeta + 36)*q^341 + (20*zeta^11 - 
24*zeta^10 + 8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 - 4*zeta^4 - 20*zeta^3 
+ 16*zeta^2 + 8*zeta - 24)*q^342 + (-63*zeta^11 - 28*zeta^10 - 77*zeta^8 + 
42*zeta^7 + 77*zeta^6 - 154*zeta^5 - 91*zeta^4 + 63*zeta^3 - 154*zeta^2 - 
77*zeta + 98)*q^343 + (16*zeta^11 - 64*zeta^10 - 16*zeta^8 + 64*zeta^7 + 
16*zeta^6 - 32*zeta^5 - 48*zeta^4 - 16*zeta^3 - 32*zeta^2 - 16*zeta + 48)*q^346 
+ (32*zeta^11 - 128*zeta^10 - 32*zeta^8 + 128*zeta^7 + 32*zeta^6 - 64*zeta^5 - 
96*zeta^4 - 32*zeta^3 - 64*zeta^2 - 32*zeta + 96)*q^347 + (-64*zeta^11 + 
32*zeta^10 - 48*zeta^8 - 32*zeta^7 + 48*zeta^6 - 96*zeta^5 - 32*zeta^4 + 
64*zeta^3 - 96*zeta^2 - 48*zeta + 32)*q^348 + (70*zeta^11 - 84*zeta^10 + 
28*zeta^8 - 112*zeta^7 - 28*zeta^6 + 56*zeta^5 - 14*zeta^4 - 70*zeta^3 + 
56*zeta^2 + 28*zeta - 84)*q^349 + (42*zeta^11 - 28*zeta^10 + 28*zeta^8 - 
28*zeta^7 - 28*zeta^6 + 56*zeta^5 + 14*zeta^4 - 42*zeta^3 + 56*zeta^2 + 28*zeta 
- 42)*q^350 + (10*zeta^11 - 12*zeta^10 + 4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 
8*zeta^5 - 2*zeta^4 - 10*zeta^3 + 8*zeta^2 + 4*zeta - 12)*q^351 + (64*zeta^11 - 
32*zeta^10 + 48*zeta^8 + 32*zeta^7 - 48*zeta^6 + 96*zeta^5 + 32*zeta^4 - 
64*zeta^3 + 96*zeta^2 + 48*zeta - 32)*q^352 + (34*zeta^11 - 136*zeta^10 - 
34*zeta^8 + 136*zeta^7 + 34*zeta^6 - 68*zeta^5 - 102*zeta^4 - 34*zeta^3 - 
68*zeta^2 - 34*zeta + 102)*q^353 + (48*zeta^11 - 192*zeta^10 - 48*zeta^8 + 
192*zeta^7 + 48*zeta^6 - 96*zeta^5 - 144*zeta^4 - 48*zeta^3 - 96*zeta^2 - 
48*zeta + 144)*q^354 + (48*zeta^11 - 24*zeta^10 + 36*zeta^8 + 24*zeta^7 - 
36*zeta^6 + 72*zeta^5 + 24*zeta^4 - 48*zeta^3 + 72*zeta^2 + 36*zeta - 24)*q^355 
+ (-160*zeta^11 + 192*zeta^10 - 64*zeta^8 + 256*zeta^7 + 64*zeta^6 - 128*zeta^5 
+ 32*zeta^4 + 160*zeta^3 - 128*zeta^2 - 64*zeta + 192)*q^356 + (-20*zeta^11 + 
24*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 + 4*zeta^4 + 20*zeta^3 
- 16*zeta^2 - 8*zeta + 24)*q^358 + (80*zeta^11 - 40*zeta^10 + 60*zeta^8 + 
40*zeta^7 - 60*zeta^6 + 120*zeta^5 + 40*zeta^4 - 80*zeta^3 + 120*zeta^2 + 
60*zeta - 40)*q^359 + (-18*zeta^11 + 72*zeta^10 + 18*zeta^8 - 72*zeta^7 - 
18*zeta^6 + 36*zeta^5 + 54*zeta^4 + 18*zeta^3 + 36*zeta^2 + 18*zeta - 54)*q^361 
+ (104*zeta^11 - 52*zeta^10 + 78*zeta^8 + 52*zeta^7 - 78*zeta^6 + 156*zeta^5 + 
52*zeta^4 - 104*zeta^3 + 156*zeta^2 + 78*zeta - 52)*q^362 + (-70*zeta^11 + 
84*zeta^10 - 28*zeta^8 + 112*zeta^7 + 28*zeta^6 - 56*zeta^5 + 14*zeta^4 + 
70*zeta^3 - 56*zeta^2 - 28*zeta + 84)*q^363 + (42*zeta^11 - 56*zeta^10 + 
14*zeta^8 - 28*zeta^7 - 14*zeta^6 + 28*zeta^5 - 14*zeta^4 - 42*zeta^3 + 
28*zeta^2 + 14*zeta - 28)*q^364 + (-30*zeta^11 + 36*zeta^10 - 12*zeta^8 + 
48*zeta^7 + 12*zeta^6 - 24*zeta^5 + 6*zeta^4 + 30*zeta^3 - 24*zeta^2 - 12*zeta +
36)*q^365 + (-160*zeta^11 + 80*zeta^10 - 120*zeta^8 - 80*zeta^7 + 120*zeta^6 - 
240*zeta^5 - 80*zeta^4 + 160*zeta^3 - 240*zeta^2 - 120*zeta + 80)*q^366 + 
(-9*zeta^11 + 36*zeta^10 + 9*zeta^8 - 36*zeta^7 - 9*zeta^6 + 18*zeta^5 + 
27*zeta^4 + 9*zeta^3 + 18*zeta^2 + 9*zeta - 27)*q^367 + (80*zeta^11 - 40*zeta^10
+ 60*zeta^8 + 40*zeta^7 - 60*zeta^6 + 120*zeta^5 + 40*zeta^4 - 80*zeta^3 + 
120*zeta^2 + 60*zeta - 40)*q^369 + (60*zeta^11 - 72*zeta^10 + 24*zeta^8 - 
96*zeta^7 - 24*zeta^6 + 48*zeta^5 - 12*zeta^4 - 60*zeta^3 + 48*zeta^2 + 24*zeta 
- 72)*q^370 + (252*zeta^11 - 336*zeta^10 + 84*zeta^8 - 168*zeta^7 - 84*zeta^6 + 
168*zeta^5 - 84*zeta^4 - 252*zeta^3 + 168*zeta^2 + 84*zeta - 168)*q^371 + 
(180*zeta^11 - 216*zeta^10 + 72*zeta^8 - 288*zeta^7 - 72*zeta^6 + 144*zeta^5 - 
36*zeta^4 - 180*zeta^3 + 144*zeta^2 + 72*zeta - 216)*q^372 + (92*zeta^11 - 
46*zeta^10 + 69*zeta^8 + 46*zeta^7 - 69*zeta^6 + 138*zeta^5 + 46*zeta^4 - 
92*zeta^3 + 138*zeta^2 + 69*zeta - 46)*q^373 + (-24*zeta^11 + 96*zeta^10 + 
24*zeta^8 - 96*zeta^7 - 24*zeta^6 + 48*zeta^5 + 72*zeta^4 + 24*zeta^3 + 
48*zeta^2 + 24*zeta - 72)*q^375 + (-20*zeta^11 + 24*zeta^10 - 8*zeta^8 + 
32*zeta^7 + 8*zeta^6 - 16*zeta^5 + 4*zeta^4 + 20*zeta^3 - 16*zeta^2 - 8*zeta + 
24)*q^377 + (-56*zeta^10 - 28*zeta^8 + 28*zeta^6 - 56*zeta^5 - 56*zeta^4 - 
56*zeta^2 - 28*zeta + 28)*q^378 + (-15*zeta^11 + 18*zeta^10 - 6*zeta^8 + 
24*zeta^7 + 6*zeta^6 - 12*zeta^5 + 3*zeta^4 + 15*zeta^3 - 12*zeta^2 - 6*zeta + 
18)*q^379 + (-16*zeta^11 + 8*zeta^10 - 12*zeta^8 - 8*zeta^7 + 12*zeta^6 - 
24*zeta^5 - 8*zeta^4 + 16*zeta^3 - 24*zeta^2 - 12*zeta + 8)*q^380 + (30*zeta^11 
- 120*zeta^10 - 30*zeta^8 + 120*zeta^7 + 30*zeta^6 - 60*zeta^5 - 90*zeta^4 - 
30*zeta^3 - 60*zeta^2 - 30*zeta + 90)*q^381 + (20*zeta^11 - 80*zeta^10 - 
20*zeta^8 + 80*zeta^7 + 20*zeta^6 - 40*zeta^5 - 60*zeta^4 - 20*zeta^3 - 
40*zeta^2 - 20*zeta + 60)*q^382 + (-48*zeta^11 + 24*zeta^10 - 36*zeta^8 - 
24*zeta^7 + 36*zeta^6 - 72*zeta^5 - 24*zeta^4 + 48*zeta^3 - 72*zeta^2 - 36*zeta 
+ 24)*q^383 + (-84*zeta^11 + 56*zeta^10 - 56*zeta^8 + 56*zeta^7 + 56*zeta^6 - 
112*zeta^5 - 28*zeta^4 + 84*zeta^3 - 112*zeta^2 - 56*zeta + 84)*q^385 + 
(-110*zeta^11 + 132*zeta^10 - 44*zeta^8 + 176*zeta^7 + 44*zeta^6 - 88*zeta^5 + 
22*zeta^4 + 110*zeta^3 - 88*zeta^2 - 44*zeta + 132)*q^386 + (-40*zeta^11 + 
20*zeta^10 - 30*zeta^8 - 20*zeta^7 + 30*zeta^6 - 60*zeta^5 - 20*zeta^4 + 
40*zeta^3 - 60*zeta^2 - 30*zeta + 20)*q^387 + (-12*zeta^11 + 48*zeta^10 + 
12*zeta^8 - 48*zeta^7 - 12*zeta^6 + 24*zeta^5 + 36*zeta^4 + 12*zeta^3 + 
24*zeta^2 + 12*zeta - 36)*q^388 + (-6*zeta^11 + 24*zeta^10 + 6*zeta^8 - 
24*zeta^7 - 6*zeta^6 + 12*zeta^5 + 18*zeta^4 + 6*zeta^3 + 12*zeta^2 + 6*zeta - 
18)*q^389 + (32*zeta^11 - 16*zeta^10 + 24*zeta^8 + 16*zeta^7 - 24*zeta^6 + 
48*zeta^5 + 16*zeta^4 - 32*zeta^3 + 48*zeta^2 + 24*zeta - 16)*q^390 + 
(-140*zeta^11 + 168*zeta^10 - 56*zeta^8 + 224*zeta^7 + 56*zeta^6 - 112*zeta^5 + 
28*zeta^4 + 140*zeta^3 - 112*zeta^2 - 56*zeta + 168)*q^393 + (128*zeta^11 - 
64*zeta^10 + 96*zeta^8 + 64*zeta^7 - 96*zeta^6 + 192*zeta^5 + 64*zeta^4 - 
128*zeta^3 + 192*zeta^2 + 96*zeta - 64)*q^394 + (2*zeta^11 - 8*zeta^10 - 
2*zeta^8 + 8*zeta^7 + 2*zeta^6 - 4*zeta^5 - 6*zeta^4 - 2*zeta^3 - 4*zeta^2 - 
2*zeta + 6)*q^395 + (8*zeta^11 - 32*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 
16*zeta^5 - 24*zeta^4 - 8*zeta^3 - 16*zeta^2 - 8*zeta + 24)*q^396 + (-36*zeta^11
+ 18*zeta^10 - 27*zeta^8 - 18*zeta^7 + 27*zeta^6 - 54*zeta^5 - 18*zeta^4 + 
36*zeta^3 - 54*zeta^2 - 27*zeta + 18)*q^397 + (42*zeta^11 - 28*zeta^10 + 
28*zeta^8 - 28*zeta^7 - 28*zeta^6 + 56*zeta^5 + 14*zeta^4 - 42*zeta^3 + 
56*zeta^2 + 28*zeta - 42)*q^399 + (-20*zeta^11 + 24*zeta^10 - 8*zeta^8 + 
32*zeta^7 + 8*zeta^6 - 16*zeta^5 + 4*zeta^4 + 20*zeta^3 - 16*zeta^2 - 8*zeta + 
24)*q^400 + (-144*zeta^11 + 72*zeta^10 - 108*zeta^8 - 72*zeta^7 + 108*zeta^6 - 
216*zeta^5 - 72*zeta^4 + 144*zeta^3 - 216*zeta^2 - 108*zeta + 72)*q^401 + 
(20*zeta^11 - 80*zeta^10 - 20*zeta^8 + 80*zeta^7 + 20*zeta^6 - 40*zeta^5 - 
60*zeta^4 - 20*zeta^3 - 40*zeta^2 - 20*zeta + 60)*q^402 + (9*zeta^11 - 
36*zeta^10 - 9*zeta^8 + 36*zeta^7 + 9*zeta^6 - 18*zeta^5 - 27*zeta^4 - 9*zeta^3 
- 18*zeta^2 - 9*zeta + 27)*q^403 + (16*zeta^11 - 8*zeta^10 + 12*zeta^8 + 
8*zeta^7 - 12*zeta^6 + 24*zeta^5 + 8*zeta^4 - 16*zeta^3 + 24*zeta^2 + 12*zeta - 
8)*q^404 + (-20*zeta^11 + 24*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 
16*zeta^5 + 4*zeta^4 + 20*zeta^3 - 16*zeta^2 - 8*zeta + 24)*q^405 + (112*zeta^10
+ 56*zeta^8 - 56*zeta^6 + 112*zeta^5 + 112*zeta^4 + 112*zeta^2 + 56*zeta - 
56)*q^406 + (30*zeta^11 - 36*zeta^10 + 12*zeta^8 - 48*zeta^7 - 12*zeta^6 + 
24*zeta^5 - 6*zeta^4 - 30*zeta^3 + 24*zeta^2 + 12*zeta - 36)*q^407 + (5*zeta^11 
- 20*zeta^10 - 5*zeta^8 + 20*zeta^7 + 5*zeta^6 - 10*zeta^5 - 15*zeta^4 - 
5*zeta^3 - 10*zeta^2 - 5*zeta + 15)*q^409 + (40*zeta^11 - 160*zeta^10 - 
40*zeta^8 + 160*zeta^7 + 40*zeta^6 - 80*zeta^5 - 120*zeta^4 - 40*zeta^3 - 
80*zeta^2 - 40*zeta + 120)*q^410 + (96*zeta^11 - 48*zeta^10 + 72*zeta^8 + 
48*zeta^7 - 72*zeta^6 + 144*zeta^5 + 48*zeta^4 - 96*zeta^3 + 144*zeta^2 + 
72*zeta - 48)*q^411 + (70*zeta^11 - 84*zeta^10 + 28*zeta^8 - 112*zeta^7 - 
28*zeta^6 + 56*zeta^5 - 14*zeta^4 - 70*zeta^3 + 56*zeta^2 + 28*zeta - 84)*q^412 
+ (-252*zeta^11 + 336*zeta^10 - 84*zeta^8 + 168*zeta^7 + 84*zeta^6 - 168*zeta^5 
+ 84*zeta^4 + 252*zeta^3 - 168*zeta^2 - 84*zeta + 168)*q^413 + (-48*zeta^11 + 
24*zeta^10 - 36*zeta^8 - 24*zeta^7 + 36*zeta^6 - 72*zeta^5 - 24*zeta^4 + 
48*zeta^3 - 72*zeta^2 - 36*zeta + 24)*q^415 + (-8*zeta^11 + 32*zeta^10 + 
8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 + 24*zeta^4 + 8*zeta^3 + 16*zeta^2 +
8*zeta - 24)*q^416 + (6*zeta^11 - 24*zeta^10 - 6*zeta^8 + 24*zeta^7 + 6*zeta^6 -
12*zeta^5 - 18*zeta^4 - 6*zeta^3 - 12*zeta^2 - 6*zeta + 18)*q^417 + (-16*zeta^11
+ 8*zeta^10 - 12*zeta^8 - 8*zeta^7 + 12*zeta^6 - 24*zeta^5 - 8*zeta^4 + 
16*zeta^3 - 24*zeta^2 - 12*zeta + 8)*q^418 + (-150*zeta^11 + 180*zeta^10 - 
60*zeta^8 + 240*zeta^7 + 60*zeta^6 - 120*zeta^5 + 30*zeta^4 + 150*zeta^3 - 
120*zeta^2 - 60*zeta + 180)*q^419 + (168*zeta^11 - 224*zeta^10 + 56*zeta^8 - 
112*zeta^7 - 56*zeta^6 + 112*zeta^5 - 56*zeta^4 - 168*zeta^3 + 112*zeta^2 + 
56*zeta - 112)*q^420 + (35*zeta^11 - 42*zeta^10 + 14*zeta^8 - 56*zeta^7 - 
14*zeta^6 + 28*zeta^5 - 7*zeta^4 - 35*zeta^3 + 28*zeta^2 + 14*zeta - 42)*q^421 +
(32*zeta^11 - 16*zeta^10 + 24*zeta^8 + 16*zeta^7 - 24*zeta^6 + 48*zeta^5 + 
16*zeta^4 - 32*zeta^3 + 48*zeta^2 + 24*zeta - 16)*q^422 + (12*zeta^11 - 
48*zeta^10 - 12*zeta^8 + 48*zeta^7 + 12*zeta^6 - 24*zeta^5 - 36*zeta^4 - 
12*zeta^3 - 24*zeta^2 - 12*zeta + 36)*q^423 + (-120*zeta^11 + 144*zeta^10 - 
48*zeta^8 + 192*zeta^7 + 48*zeta^6 - 96*zeta^5 + 24*zeta^4 + 120*zeta^3 - 
96*zeta^2 - 48*zeta + 144)*q^426 + (140*zeta^10 + 70*zeta^8 - 70*zeta^6 + 
140*zeta^5 + 140*zeta^4 + 140*zeta^2 + 70*zeta - 70)*q^427 + (80*zeta^11 - 
96*zeta^10 + 32*zeta^8 - 128*zeta^7 - 32*zeta^6 + 64*zeta^5 - 16*zeta^4 - 
80*zeta^3 + 64*zeta^2 + 32*zeta - 96)*q^428 + (16*zeta^11 - 8*zeta^10 + 
12*zeta^8 + 8*zeta^7 - 12*zeta^6 + 24*zeta^5 + 8*zeta^4 - 16*zeta^3 + 24*zeta^2 
+ 12*zeta - 8)*q^429 + (-20*zeta^11 + 80*zeta^10 + 20*zeta^8 - 80*zeta^7 - 
20*zeta^6 + 40*zeta^5 + 60*zeta^4 + 20*zeta^3 + 40*zeta^2 + 20*zeta - 60)*q^430 
+ (-18*zeta^11 + 72*zeta^10 + 18*zeta^8 - 72*zeta^7 - 18*zeta^6 + 36*zeta^5 + 
54*zeta^4 + 18*zeta^3 + 36*zeta^2 + 18*zeta - 54)*q^431 + (32*zeta^11 - 
16*zeta^10 + 24*zeta^8 + 16*zeta^7 - 24*zeta^6 + 48*zeta^5 + 16*zeta^4 - 
32*zeta^3 + 48*zeta^2 + 24*zeta - 16)*q^432 + (-155*zeta^11 + 186*zeta^10 - 
62*zeta^8 + 248*zeta^7 + 62*zeta^6 - 124*zeta^5 + 31*zeta^4 + 155*zeta^3 - 
124*zeta^2 - 62*zeta + 186)*q^433 + (-378*zeta^11 + 252*zeta^10 - 252*zeta^8 + 
252*zeta^7 + 252*zeta^6 - 504*zeta^5 - 126*zeta^4 + 378*zeta^3 - 504*zeta^2 - 
252*zeta + 378)*q^434 + (-80*zeta^11 + 96*zeta^10 - 32*zeta^8 + 128*zeta^7 + 
32*zeta^6 - 64*zeta^5 + 16*zeta^4 + 80*zeta^3 - 64*zeta^2 - 32*zeta + 96)*q^435 
+ (72*zeta^11 - 36*zeta^10 + 54*zeta^8 + 36*zeta^7 - 54*zeta^6 + 108*zeta^5 + 
36*zeta^4 - 72*zeta^3 + 108*zeta^2 + 54*zeta - 36)*q^436 + (12*zeta^11 - 
48*zeta^10 - 12*zeta^8 + 48*zeta^7 + 12*zeta^6 - 24*zeta^5 - 36*zeta^4 - 
12*zeta^3 - 24*zeta^2 - 12*zeta + 36)*q^438 + (-42*zeta^11 + 112*zeta^10 + 
14*zeta^8 + 28*zeta^7 - 14*zeta^6 + 28*zeta^5 + 70*zeta^4 + 42*zeta^3 + 
28*zeta^2 + 14*zeta)*q^441 + (48*zeta^11 - 24*zeta^10 + 36*zeta^8 + 24*zeta^7 - 
36*zeta^6 + 72*zeta^5 + 24*zeta^4 - 48*zeta^3 + 72*zeta^2 + 36*zeta - 24)*q^443 
+ (-12*zeta^11 + 48*zeta^10 + 12*zeta^8 - 48*zeta^7 - 12*zeta^6 + 24*zeta^5 + 
36*zeta^4 + 12*zeta^3 + 24*zeta^2 + 12*zeta - 36)*q^444 + (-32*zeta^11 + 
128*zeta^10 + 32*zeta^8 - 128*zeta^7 - 32*zeta^6 + 64*zeta^5 + 96*zeta^4 + 
32*zeta^3 + 64*zeta^2 + 32*zeta - 96)*q^445 + (128*zeta^11 - 64*zeta^10 + 
96*zeta^8 + 64*zeta^7 - 96*zeta^6 + 192*zeta^5 + 64*zeta^4 - 128*zeta^3 + 
192*zeta^2 + 96*zeta - 64)*q^446 + (-120*zeta^11 + 144*zeta^10 - 48*zeta^8 + 
192*zeta^7 + 48*zeta^6 - 96*zeta^5 + 24*zeta^4 + 120*zeta^3 - 96*zeta^2 - 
48*zeta + 144)*q^447 + (168*zeta^11 - 112*zeta^10 + 112*zeta^8 - 112*zeta^7 - 
112*zeta^6 + 224*zeta^5 + 56*zeta^4 - 168*zeta^3 + 224*zeta^2 + 112*zeta - 
168)*q^448 + (90*zeta^11 - 108*zeta^10 + 36*zeta^8 - 144*zeta^7 - 36*zeta^6 + 
72*zeta^5 - 18*zeta^4 - 90*zeta^3 + 72*zeta^2 + 36*zeta - 108)*q^449 + 
(16*zeta^11 - 8*zeta^10 + 12*zeta^8 + 8*zeta^7 - 12*zeta^6 + 24*zeta^5 + 
8*zeta^4 - 16*zeta^3 + 24*zeta^2 + 12*zeta - 8)*q^450 + (20*zeta^11 - 80*zeta^10
- 20*zeta^8 + 80*zeta^7 + 20*zeta^6 - 40*zeta^5 - 60*zeta^4 - 20*zeta^3 - 
40*zeta^2 - 20*zeta + 60)*q^451 + (20*zeta^11 - 80*zeta^10 - 20*zeta^8 + 
80*zeta^7 + 20*zeta^6 - 40*zeta^5 - 60*zeta^4 - 20*zeta^3 - 40*zeta^2 - 20*zeta 
+ 60)*q^452 + (128*zeta^11 - 64*zeta^10 + 96*zeta^8 + 64*zeta^7 - 96*zeta^6 + 
192*zeta^5 + 64*zeta^4 - 128*zeta^3 + 192*zeta^2 + 96*zeta - 64)*q^453 + 
(-180*zeta^11 + 216*zeta^10 - 72*zeta^8 + 288*zeta^7 + 72*zeta^6 - 144*zeta^5 + 
36*zeta^4 + 180*zeta^3 - 144*zeta^2 - 72*zeta + 216)*q^454 + (-28*zeta^10 - 
14*zeta^8 + 14*zeta^6 - 28*zeta^5 - 28*zeta^4 - 28*zeta^2 - 14*zeta + 14)*q^455 
+ (-44*zeta^11 + 22*zeta^10 - 33*zeta^8 - 22*zeta^7 + 33*zeta^6 - 66*zeta^5 - 
22*zeta^4 + 44*zeta^3 - 66*zeta^2 - 33*zeta + 22)*q^457 + (-38*zeta^11 + 
152*zeta^10 + 38*zeta^8 - 152*zeta^7 - 38*zeta^6 + 76*zeta^5 + 114*zeta^4 + 
38*zeta^3 + 76*zeta^2 + 38*zeta - 114)*q^458 + (-100*zeta^11 + 120*zeta^10 - 
40*zeta^8 + 160*zeta^7 + 40*zeta^6 - 80*zeta^5 + 20*zeta^4 + 100*zeta^3 - 
80*zeta^2 - 40*zeta + 120)*q^461 + (168*zeta^11 - 224*zeta^10 + 56*zeta^8 - 
112*zeta^7 - 56*zeta^6 + 112*zeta^5 - 56*zeta^4 - 168*zeta^3 + 112*zeta^2 + 
56*zeta - 112)*q^462 + (85*zeta^11 - 102*zeta^10 + 34*zeta^8 - 136*zeta^7 - 
34*zeta^6 + 68*zeta^5 - 17*zeta^4 - 85*zeta^3 + 68*zeta^2 + 34*zeta - 102)*q^463
+ (-64*zeta^11 + 32*zeta^10 - 48*zeta^8 - 32*zeta^7 + 48*zeta^6 - 96*zeta^5 - 
32*zeta^4 + 64*zeta^3 - 96*zeta^2 - 48*zeta + 32)*q^464 + (36*zeta^11 - 
144*zeta^10 - 36*zeta^8 + 144*zeta^7 + 36*zeta^6 - 72*zeta^5 - 108*zeta^4 - 
36*zeta^3 - 72*zeta^2 - 36*zeta + 108)*q^465 + (12*zeta^11 - 48*zeta^10 - 
12*zeta^8 + 48*zeta^7 + 12*zeta^6 - 24*zeta^5 - 36*zeta^4 - 12*zeta^3 - 
24*zeta^2 - 12*zeta + 36)*q^466 + (24*zeta^11 - 12*zeta^10 + 18*zeta^8 + 
12*zeta^7 - 18*zeta^6 + 36*zeta^5 + 12*zeta^4 - 24*zeta^3 + 36*zeta^2 + 18*zeta 
- 12)*q^467 + (20*zeta^11 - 24*zeta^10 + 8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 
16*zeta^5 - 4*zeta^4 - 20*zeta^3 + 16*zeta^2 + 8*zeta - 24)*q^468 + 
(-105*zeta^11 + 140*zeta^10 - 35*zeta^8 + 70*zeta^7 + 35*zeta^6 - 70*zeta^5 + 
35*zeta^4 + 105*zeta^3 - 70*zeta^2 - 35*zeta + 70)*q^469 + (-120*zeta^11 + 
144*zeta^10 - 48*zeta^8 + 192*zeta^7 + 48*zeta^6 - 96*zeta^5 + 24*zeta^4 + 
120*zeta^3 - 96*zeta^2 - 48*zeta + 144)*q^470 + (112*zeta^11 - 56*zeta^10 + 
84*zeta^8 + 56*zeta^7 - 84*zeta^6 + 168*zeta^5 + 56*zeta^4 - 112*zeta^3 + 
168*zeta^2 + 84*zeta - 56)*q^471 + (-10*zeta^11 + 40*zeta^10 + 10*zeta^8 - 
40*zeta^7 - 10*zeta^6 + 20*zeta^5 + 30*zeta^4 + 10*zeta^3 + 20*zeta^2 + 10*zeta 
- 30)*q^473 + (16*zeta^11 - 8*zeta^10 + 12*zeta^8 + 8*zeta^7 - 12*zeta^6 + 
24*zeta^5 + 8*zeta^4 - 16*zeta^3 + 24*zeta^2 + 12*zeta - 8)*q^474 + (5*zeta^11 -
6*zeta^10 + 2*zeta^8 - 8*zeta^7 - 2*zeta^6 + 4*zeta^5 - zeta^4 - 5*zeta^3 + 
4*zeta^2 + 2*zeta - 6)*q^475 + (120*zeta^11 - 144*zeta^10 + 48*zeta^8 - 
192*zeta^7 - 48*zeta^6 + 96*zeta^5 - 24*zeta^4 - 120*zeta^3 + 96*zeta^2 + 
48*zeta - 144)*q^477 + (48*zeta^11 - 24*zeta^10 + 36*zeta^8 + 24*zeta^7 - 
36*zeta^6 + 72*zeta^5 + 24*zeta^4 - 48*zeta^3 + 72*zeta^2 + 36*zeta - 24)*q^478 
+ (-28*zeta^11 + 112*zeta^10 + 28*zeta^8 - 112*zeta^7 - 28*zeta^6 + 56*zeta^5 + 
84*zeta^4 + 28*zeta^3 + 56*zeta^2 + 28*zeta - 84)*q^479 + (-32*zeta^11 + 
128*zeta^10 + 32*zeta^8 - 128*zeta^7 - 32*zeta^6 + 64*zeta^5 + 96*zeta^4 + 
32*zeta^3 + 64*zeta^2 + 32*zeta - 96)*q^480 + (12*zeta^11 - 6*zeta^10 + 9*zeta^8
+ 6*zeta^7 - 9*zeta^6 + 18*zeta^5 + 6*zeta^4 - 12*zeta^3 + 18*zeta^2 + 9*zeta - 
6)*q^481 + (-140*zeta^11 + 168*zeta^10 - 56*zeta^8 + 224*zeta^7 + 56*zeta^6 - 
112*zeta^5 + 28*zeta^4 + 140*zeta^3 - 112*zeta^2 - 56*zeta + 168)*q^482 + 
(70*zeta^11 - 84*zeta^10 + 28*zeta^8 - 112*zeta^7 - 28*zeta^6 + 56*zeta^5 - 
14*zeta^4 - 70*zeta^3 + 56*zeta^2 + 28*zeta - 84)*q^484 + (48*zeta^11 - 
24*zeta^10 + 36*zeta^8 + 24*zeta^7 - 36*zeta^6 + 72*zeta^5 + 24*zeta^4 - 
48*zeta^3 + 72*zeta^2 + 36*zeta - 24)*q^485 + (-4*zeta^11 + 16*zeta^10 + 
4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 8*zeta^5 + 12*zeta^4 + 4*zeta^3 + 8*zeta^2 + 
4*zeta - 12)*q^486 + (31*zeta^11 - 124*zeta^10 - 31*zeta^8 + 124*zeta^7 + 
31*zeta^6 - 62*zeta^5 - 93*zeta^4 - 31*zeta^3 - 62*zeta^2 - 31*zeta + 93)*q^487 
+ (40*zeta^11 - 48*zeta^10 + 16*zeta^8 - 64*zeta^7 - 16*zeta^6 + 32*zeta^5 - 
8*zeta^4 - 40*zeta^3 + 32*zeta^2 + 16*zeta - 48)*q^489 + (252*zeta^11 - 
280*zeta^10 + 112*zeta^8 - 168*zeta^7 - 112*zeta^6 + 224*zeta^5 - 28*zeta^4 - 
252*zeta^3 + 224*zeta^2 + 112*zeta - 196)*q^490 + (140*zeta^11 - 168*zeta^10 + 
56*zeta^8 - 224*zeta^7 - 56*zeta^6 + 112*zeta^5 - 28*zeta^4 - 140*zeta^3 + 
112*zeta^2 + 56*zeta - 168)*q^491 + (160*zeta^11 - 80*zeta^10 + 120*zeta^8 + 
80*zeta^7 - 120*zeta^6 + 240*zeta^5 + 80*zeta^4 - 160*zeta^3 + 240*zeta^2 + 
120*zeta - 80)*q^492 + (2*zeta^11 - 8*zeta^10 - 2*zeta^8 + 8*zeta^7 + 2*zeta^6 -
4*zeta^5 - 6*zeta^4 - 2*zeta^3 - 4*zeta^2 - 2*zeta + 6)*q^494 + (-32*zeta^11 + 
16*zeta^10 - 24*zeta^8 - 16*zeta^7 + 24*zeta^6 - 48*zeta^5 - 16*zeta^4 + 
32*zeta^3 - 48*zeta^2 - 24*zeta + 16)*q^495 + (180*zeta^11 - 216*zeta^10 + 
72*zeta^8 - 288*zeta^7 - 72*zeta^6 + 144*zeta^5 - 36*zeta^4 - 180*zeta^3 + 
144*zeta^2 + 72*zeta - 216)*q^496 + (126*zeta^11 - 84*zeta^10 + 84*zeta^8 - 
84*zeta^7 - 84*zeta^6 + 168*zeta^5 + 42*zeta^4 - 126*zeta^3 + 168*zeta^2 + 
84*zeta - 126)*q^497 + (120*zeta^11 - 144*zeta^10 + 48*zeta^8 - 192*zeta^7 - 
48*zeta^6 + 96*zeta^5 - 24*zeta^4 - 120*zeta^3 + 96*zeta^2 + 48*zeta - 
144)*q^498 + (148*zeta^11 - 74*zeta^10 + 111*zeta^8 + 74*zeta^7 - 111*zeta^6 + 
222*zeta^5 + 74*zeta^4 - 148*zeta^3 + 222*zeta^2 + 111*zeta - 74)*q^499 + 
(24*zeta^11 - 96*zeta^10 - 24*zeta^8 + 96*zeta^7 + 24*zeta^6 - 48*zeta^5 - 
72*zeta^4 - 24*zeta^3 - 48*zeta^2 - 24*zeta + 72)*q^500 + (28*zeta^11 - 
112*zeta^10 - 28*zeta^8 + 112*zeta^7 + 28*zeta^6 - 56*zeta^5 - 84*zeta^4 - 
28*zeta^3 - 56*zeta^2 - 28*zeta + 84)*q^501 + (-64*zeta^11 + 32*zeta^10 - 
48*zeta^8 - 32*zeta^7 + 48*zeta^6 - 96*zeta^5 - 32*zeta^4 + 64*zeta^3 - 
96*zeta^2 - 48*zeta + 32)*q^502 + (210*zeta^11 - 252*zeta^10 + 84*zeta^8 - 
336*zeta^7 - 84*zeta^6 + 168*zeta^5 - 42*zeta^4 - 210*zeta^3 + 168*zeta^2 + 
84*zeta - 252)*q^503 + (20*zeta^11 - 24*zeta^10 + 8*zeta^8 - 32*zeta^7 - 
8*zeta^6 + 16*zeta^5 - 4*zeta^4 - 20*zeta^3 + 16*zeta^2 + 8*zeta - 24)*q^505 + 
(24*zeta^11 - 96*zeta^10 - 24*zeta^8 + 96*zeta^7 + 24*zeta^6 - 48*zeta^5 - 
72*zeta^4 - 24*zeta^3 - 48*zeta^2 - 24*zeta + 72)*q^507 + (-30*zeta^11 + 
120*zeta^10 + 30*zeta^8 - 120*zeta^7 - 30*zeta^6 + 60*zeta^5 + 90*zeta^4 + 
30*zeta^3 + 60*zeta^2 + 30*zeta - 90)*q^508 + (8*zeta^11 - 4*zeta^10 + 6*zeta^8 
+ 4*zeta^7 - 6*zeta^6 + 12*zeta^5 + 4*zeta^4 - 8*zeta^3 + 12*zeta^2 + 6*zeta - 
4)*q^509 + (-63*zeta^11 + 84*zeta^10 - 21*zeta^8 + 42*zeta^7 + 21*zeta^6 - 
42*zeta^5 + 21*zeta^4 + 63*zeta^3 - 42*zeta^2 - 21*zeta + 42)*q^511 + 
(-160*zeta^11 + 192*zeta^10 - 64*zeta^8 + 256*zeta^7 + 64*zeta^6 - 128*zeta^5 + 
32*zeta^4 + 160*zeta^3 - 128*zeta^2 - 64*zeta + 192)*q^512 + (-8*zeta^11 + 
4*zeta^10 - 6*zeta^8 - 4*zeta^7 + 6*zeta^6 - 12*zeta^5 - 4*zeta^4 + 8*zeta^3 - 
12*zeta^2 - 6*zeta + 4)*q^513 + (52*zeta^11 - 208*zeta^10 - 52*zeta^8 + 
208*zeta^7 + 52*zeta^6 - 104*zeta^5 - 156*zeta^4 - 52*zeta^3 - 104*zeta^2 - 
52*zeta + 156)*q^514 + (14*zeta^11 - 56*zeta^10 - 14*zeta^8 + 56*zeta^7 + 
14*zeta^6 - 28*zeta^5 - 42*zeta^4 - 14*zeta^3 - 28*zeta^2 - 14*zeta + 42)*q^515 
+ (-80*zeta^11 + 40*zeta^10 - 60*zeta^8 - 40*zeta^7 + 60*zeta^6 - 120*zeta^5 - 
40*zeta^4 + 80*zeta^3 - 120*zeta^2 - 60*zeta + 40)*q^516 + (-60*zeta^11 + 
72*zeta^10 - 24*zeta^8 + 96*zeta^7 + 24*zeta^6 - 48*zeta^5 + 12*zeta^4 + 
60*zeta^3 - 48*zeta^2 - 24*zeta + 72)*q^517 + (126*zeta^11 - 168*zeta^10 + 
42*zeta^8 - 84*zeta^7 - 42*zeta^6 + 84*zeta^5 - 42*zeta^4 - 126*zeta^3 + 
84*zeta^2 + 42*zeta - 84)*q^518 + (80*zeta^11 - 96*zeta^10 + 32*zeta^8 - 
128*zeta^7 - 32*zeta^6 + 64*zeta^5 - 16*zeta^4 - 80*zeta^3 + 64*zeta^2 + 32*zeta
- 96)*q^519 + (12*zeta^11 - 48*zeta^10 - 12*zeta^8 + 48*zeta^7 + 12*zeta^6 - 
24*zeta^5 - 36*zeta^4 - 12*zeta^3 - 24*zeta^2 - 12*zeta + 36)*q^521 + 
(-16*zeta^11 + 64*zeta^10 + 16*zeta^8 - 64*zeta^7 - 16*zeta^6 + 32*zeta^5 + 
48*zeta^4 + 16*zeta^3 + 32*zeta^2 + 16*zeta - 48)*q^522 + (124*zeta^11 - 
62*zeta^10 + 93*zeta^8 + 62*zeta^7 - 93*zeta^6 + 186*zeta^5 + 62*zeta^4 - 
124*zeta^3 + 186*zeta^2 + 93*zeta - 62)*q^523 + (140*zeta^11 - 168*zeta^10 + 
56*zeta^8 - 224*zeta^7 - 56*zeta^6 + 112*zeta^5 - 28*zeta^4 - 140*zeta^3 + 
112*zeta^2 + 56*zeta - 168)*q^524 + (28*zeta^10 + 14*zeta^8 - 14*zeta^6 + 
28*zeta^5 + 28*zeta^4 + 28*zeta^2 + 14*zeta - 14)*q^525 + (-40*zeta^11 + 
48*zeta^10 - 16*zeta^8 + 64*zeta^7 + 16*zeta^6 - 32*zeta^5 + 8*zeta^4 + 
40*zeta^3 - 32*zeta^2 - 16*zeta + 48)*q^526 + (-16*zeta^11 + 64*zeta^10 + 
16*zeta^8 - 64*zeta^7 - 16*zeta^6 + 32*zeta^5 + 48*zeta^4 + 16*zeta^3 + 
32*zeta^2 + 16*zeta - 48)*q^528 + (-23*zeta^11 + 92*zeta^10 + 23*zeta^8 - 
92*zeta^7 - 23*zeta^6 + 46*zeta^5 + 69*zeta^4 + 23*zeta^3 + 46*zeta^2 + 23*zeta 
- 69)*q^529 + (-192*zeta^11 + 96*zeta^10 - 144*zeta^8 - 96*zeta^7 + 144*zeta^6 -
288*zeta^5 - 96*zeta^4 + 192*zeta^3 - 288*zeta^2 - 144*zeta + 96)*q^530 + 
(-120*zeta^11 + 144*zeta^10 - 48*zeta^8 + 192*zeta^7 + 48*zeta^6 - 96*zeta^5 + 
24*zeta^4 + 120*zeta^3 - 96*zeta^2 - 48*zeta + 144)*q^531 + (-42*zeta^11 + 
28*zeta^10 - 28*zeta^8 + 28*zeta^7 + 28*zeta^6 - 56*zeta^5 - 14*zeta^4 + 
42*zeta^3 - 56*zeta^2 - 28*zeta + 42)*q^532 + (50*zeta^11 - 60*zeta^10 + 
20*zeta^8 - 80*zeta^7 - 20*zeta^6 + 40*zeta^5 - 10*zeta^4 - 50*zeta^3 + 
40*zeta^2 + 20*zeta - 60)*q^533 + (-256*zeta^11 + 128*zeta^10 - 192*zeta^8 - 
128*zeta^7 + 192*zeta^6 - 384*zeta^5 - 128*zeta^4 + 256*zeta^3 - 384*zeta^2 - 
192*zeta + 128)*q^534 + (16*zeta^11 - 64*zeta^10 - 16*zeta^8 + 64*zeta^7 + 
16*zeta^6 - 32*zeta^5 - 48*zeta^4 - 16*zeta^3 - 32*zeta^2 - 16*zeta + 48)*q^535 
+ (-16*zeta^11 + 8*zeta^10 - 12*zeta^8 - 8*zeta^7 + 12*zeta^6 - 24*zeta^5 - 
8*zeta^4 + 16*zeta^3 - 24*zeta^2 - 12*zeta + 8)*q^537 + (-60*zeta^11 + 
72*zeta^10 - 24*zeta^8 + 96*zeta^7 + 24*zeta^6 - 48*zeta^5 + 12*zeta^4 + 
60*zeta^3 - 48*zeta^2 - 24*zeta + 72)*q^538 + (126*zeta^11 - 140*zeta^10 + 
56*zeta^8 - 84*zeta^7 - 56*zeta^6 + 112*zeta^5 - 14*zeta^4 - 126*zeta^3 + 
112*zeta^2 + 56*zeta - 98)*q^539 + (-40*zeta^11 + 48*zeta^10 - 16*zeta^8 + 
64*zeta^7 + 16*zeta^6 - 32*zeta^5 + 8*zeta^4 + 40*zeta^3 - 32*zeta^2 - 16*zeta +
48)*q^540 + (-76*zeta^11 + 38*zeta^10 - 57*zeta^8 - 38*zeta^7 + 57*zeta^6 - 
114*zeta^5 - 38*zeta^4 + 76*zeta^3 - 114*zeta^2 - 57*zeta + 38)*q^541 + 
(32*zeta^11 - 128*zeta^10 - 32*zeta^8 + 128*zeta^7 + 32*zeta^6 - 64*zeta^5 - 
96*zeta^4 - 32*zeta^3 - 64*zeta^2 - 32*zeta + 96)*q^542 + (-26*zeta^11 + 
104*zeta^10 + 26*zeta^8 - 104*zeta^7 - 26*zeta^6 + 52*zeta^5 + 78*zeta^4 + 
26*zeta^3 + 52*zeta^2 + 26*zeta - 78)*q^543 + (90*zeta^11 - 108*zeta^10 + 
36*zeta^8 - 144*zeta^7 - 36*zeta^6 + 72*zeta^5 - 18*zeta^4 - 90*zeta^3 + 
72*zeta^2 + 36*zeta - 108)*q^545 + (84*zeta^11 - 56*zeta^10 + 56*zeta^8 - 
56*zeta^7 - 56*zeta^6 + 112*zeta^5 + 28*zeta^4 - 84*zeta^3 + 112*zeta^2 + 
56*zeta - 84)*q^546 + (-140*zeta^11 + 168*zeta^10 - 56*zeta^8 + 224*zeta^7 + 
56*zeta^6 - 112*zeta^5 + 28*zeta^4 + 140*zeta^3 - 112*zeta^2 - 56*zeta + 
168)*q^547 + (-96*zeta^11 + 48*zeta^10 - 72*zeta^8 - 48*zeta^7 + 72*zeta^6 - 
144*zeta^5 - 48*zeta^4 + 96*zeta^3 - 144*zeta^2 - 72*zeta + 48)*q^548 + 
(-20*zeta^11 + 80*zeta^10 + 20*zeta^8 - 80*zeta^7 - 20*zeta^6 + 40*zeta^5 + 
60*zeta^4 + 20*zeta^3 + 40*zeta^2 + 20*zeta - 60)*q^549 + (4*zeta^11 - 
16*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 8*zeta^5 - 12*zeta^4 - 4*zeta^3 -
8*zeta^2 - 4*zeta + 12)*q^550 + (16*zeta^11 - 8*zeta^10 + 12*zeta^8 + 8*zeta^7 -
12*zeta^6 + 24*zeta^5 + 8*zeta^4 - 16*zeta^3 + 24*zeta^2 + 12*zeta - 8)*q^551 + 
(-14*zeta^10 - 7*zeta^8 + 7*zeta^6 - 14*zeta^5 - 14*zeta^4 - 14*zeta^2 - 7*zeta 
+ 7)*q^553 + (-130*zeta^11 + 156*zeta^10 - 52*zeta^8 + 208*zeta^7 + 52*zeta^6 - 
104*zeta^5 + 26*zeta^4 + 130*zeta^3 - 104*zeta^2 - 52*zeta + 156)*q^554 + 
(48*zeta^11 - 24*zeta^10 + 36*zeta^8 + 24*zeta^7 - 36*zeta^6 + 72*zeta^5 + 
24*zeta^4 - 48*zeta^3 + 72*zeta^2 + 36*zeta - 24)*q^555 + (-6*zeta^11 + 
24*zeta^10 + 6*zeta^8 - 24*zeta^7 - 6*zeta^6 + 12*zeta^5 + 18*zeta^4 + 6*zeta^3 
+ 12*zeta^2 + 6*zeta - 18)*q^556 + (-2*zeta^11 + 8*zeta^10 + 2*zeta^8 - 8*zeta^7
- 2*zeta^6 + 4*zeta^5 + 6*zeta^4 + 2*zeta^3 + 4*zeta^2 + 2*zeta - 6)*q^557 + 
(-144*zeta^11 + 72*zeta^10 - 108*zeta^8 - 72*zeta^7 + 108*zeta^6 - 216*zeta^5 - 
72*zeta^4 + 144*zeta^3 - 216*zeta^2 - 108*zeta + 72)*q^558 + (-25*zeta^11 + 
30*zeta^10 - 10*zeta^8 + 40*zeta^7 + 10*zeta^6 - 20*zeta^5 + 5*zeta^4 + 
25*zeta^3 - 20*zeta^2 - 10*zeta + 30)*q^559 + (168*zeta^11 - 224*zeta^10 + 
56*zeta^8 - 112*zeta^7 - 56*zeta^6 + 112*zeta^5 - 56*zeta^4 - 168*zeta^3 + 
112*zeta^2 + 56*zeta - 112)*q^560 + (-32*zeta^11 + 16*zeta^10 - 24*zeta^8 - 
16*zeta^7 + 24*zeta^6 - 48*zeta^5 - 16*zeta^4 + 32*zeta^3 - 48*zeta^2 - 24*zeta 
+ 16)*q^562 + (-26*zeta^11 + 104*zeta^10 + 26*zeta^8 - 104*zeta^7 - 26*zeta^6 + 
52*zeta^5 + 78*zeta^4 + 26*zeta^3 + 52*zeta^2 + 26*zeta - 78)*q^563 + 
(24*zeta^11 - 96*zeta^10 - 24*zeta^8 + 96*zeta^7 + 24*zeta^6 - 48*zeta^5 - 
72*zeta^4 - 24*zeta^3 - 48*zeta^2 - 24*zeta + 72)*q^564 + (-80*zeta^11 + 
40*zeta^10 - 60*zeta^8 - 40*zeta^7 + 60*zeta^6 - 120*zeta^5 - 40*zeta^4 + 
80*zeta^3 - 120*zeta^2 - 60*zeta + 40)*q^565 + (110*zeta^11 - 132*zeta^10 + 
44*zeta^8 - 176*zeta^7 - 44*zeta^6 + 88*zeta^5 - 22*zeta^4 - 110*zeta^3 + 
88*zeta^2 + 44*zeta - 132)*q^566 + (-42*zeta^11 + 56*zeta^10 - 14*zeta^8 + 
28*zeta^7 + 14*zeta^6 - 28*zeta^5 + 14*zeta^4 + 42*zeta^3 - 28*zeta^2 - 14*zeta 
+ 28)*q^567 + (-104*zeta^11 + 52*zeta^10 - 78*zeta^8 - 52*zeta^7 + 78*zeta^6 - 
156*zeta^5 - 52*zeta^4 + 104*zeta^3 - 156*zeta^2 - 78*zeta + 52)*q^569 + 
(8*zeta^11 - 32*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 - 
24*zeta^4 - 8*zeta^3 - 16*zeta^2 - 8*zeta + 24)*q^570 + (-19*zeta^11 + 
76*zeta^10 + 19*zeta^8 - 76*zeta^7 - 19*zeta^6 + 38*zeta^5 + 57*zeta^4 + 
19*zeta^3 + 38*zeta^2 + 19*zeta - 57)*q^571 + (-16*zeta^11 + 8*zeta^10 - 
12*zeta^8 - 8*zeta^7 + 12*zeta^6 - 24*zeta^5 - 8*zeta^4 + 16*zeta^3 - 24*zeta^2 
- 12*zeta + 8)*q^572 + (100*zeta^11 - 120*zeta^10 + 40*zeta^8 - 160*zeta^7 - 
40*zeta^6 + 80*zeta^5 - 20*zeta^4 - 100*zeta^3 + 80*zeta^2 + 40*zeta - 
120)*q^573 + (-280*zeta^10 - 140*zeta^8 + 140*zeta^6 - 280*zeta^5 - 280*zeta^4 -
280*zeta^2 - 140*zeta + 140)*q^574 + (64*zeta^11 - 32*zeta^10 + 48*zeta^8 + 
32*zeta^7 - 48*zeta^6 + 96*zeta^5 + 32*zeta^4 - 64*zeta^3 + 96*zeta^2 + 48*zeta 
- 32)*q^576 + (-17*zeta^11 + 68*zeta^10 + 17*zeta^8 - 68*zeta^7 - 17*zeta^6 + 
34*zeta^5 + 51*zeta^4 + 17*zeta^3 + 34*zeta^2 + 17*zeta - 51)*q^577 + 
(-34*zeta^11 + 136*zeta^10 + 34*zeta^8 - 136*zeta^7 - 34*zeta^6 + 68*zeta^5 + 
102*zeta^4 + 34*zeta^3 + 68*zeta^2 + 34*zeta - 102)*q^578 + (-88*zeta^11 + 
44*zeta^10 - 66*zeta^8 - 44*zeta^7 + 66*zeta^6 - 132*zeta^5 - 44*zeta^4 + 
88*zeta^3 - 132*zeta^2 - 66*zeta + 44)*q^579 + (80*zeta^11 - 96*zeta^10 + 
32*zeta^8 - 128*zeta^7 - 32*zeta^6 + 64*zeta^5 - 16*zeta^4 - 80*zeta^3 + 
64*zeta^2 + 32*zeta - 96)*q^580 + (-126*zeta^11 + 84*zeta^10 - 84*zeta^8 + 
84*zeta^7 + 84*zeta^6 - 168*zeta^5 - 42*zeta^4 + 126*zeta^3 - 168*zeta^2 - 
84*zeta + 126)*q^581 + (-120*zeta^11 + 144*zeta^10 - 48*zeta^8 + 192*zeta^7 + 
48*zeta^6 - 96*zeta^5 + 24*zeta^4 + 120*zeta^3 - 96*zeta^2 - 48*zeta + 
144)*q^582 + (-96*zeta^11 + 48*zeta^10 - 72*zeta^8 - 48*zeta^7 + 72*zeta^6 - 
144*zeta^5 - 48*zeta^4 + 96*zeta^3 - 144*zeta^2 - 72*zeta + 48)*q^583 + 
(4*zeta^11 - 16*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 8*zeta^5 - 12*zeta^4
- 4*zeta^3 - 8*zeta^2 - 4*zeta + 12)*q^585 + (64*zeta^11 - 32*zeta^10 + 
48*zeta^8 + 32*zeta^7 - 48*zeta^6 + 96*zeta^5 + 32*zeta^4 - 64*zeta^3 + 
96*zeta^2 + 48*zeta - 32)*q^586 + (-80*zeta^11 + 96*zeta^10 - 32*zeta^8 + 
128*zeta^7 + 32*zeta^6 - 64*zeta^5 + 16*zeta^4 + 80*zeta^3 - 64*zeta^2 - 32*zeta
+ 96)*q^587 + (-84*zeta^11 + 224*zeta^10 + 28*zeta^8 + 56*zeta^7 - 28*zeta^6 + 
56*zeta^5 + 140*zeta^4 + 84*zeta^3 + 56*zeta^2 + 28*zeta)*q^588 + (-45*zeta^11 +
54*zeta^10 - 18*zeta^8 + 72*zeta^7 + 18*zeta^6 - 36*zeta^5 + 9*zeta^4 + 
45*zeta^3 - 36*zeta^2 - 18*zeta + 54)*q^589 + (192*zeta^11 - 96*zeta^10 + 
144*zeta^8 + 96*zeta^7 - 144*zeta^6 + 288*zeta^5 + 96*zeta^4 - 192*zeta^3 + 
288*zeta^2 + 144*zeta - 96)*q^590 + (-32*zeta^11 + 128*zeta^10 + 32*zeta^8 - 
128*zeta^7 - 32*zeta^6 + 64*zeta^5 + 96*zeta^4 + 32*zeta^3 + 64*zeta^2 + 32*zeta
- 96)*q^591 + (-12*zeta^11 + 48*zeta^10 + 12*zeta^8 - 48*zeta^7 - 12*zeta^6 + 
24*zeta^5 + 36*zeta^4 + 12*zeta^3 + 24*zeta^2 + 12*zeta - 36)*q^592 + 
(-24*zeta^11 + 12*zeta^10 - 18*zeta^8 - 12*zeta^7 + 18*zeta^6 - 36*zeta^5 - 
12*zeta^4 + 24*zeta^3 - 36*zeta^2 - 18*zeta + 12)*q^593 + (-40*zeta^11 + 
48*zeta^10 - 16*zeta^8 + 64*zeta^7 + 16*zeta^6 - 32*zeta^5 + 8*zeta^4 + 
40*zeta^3 - 32*zeta^2 - 16*zeta + 48)*q^594 + (120*zeta^11 - 144*zeta^10 + 
48*zeta^8 - 192*zeta^7 - 48*zeta^6 + 96*zeta^5 - 24*zeta^4 - 120*zeta^3 + 
96*zeta^2 + 48*zeta - 144)*q^596 + (12*zeta^11 - 48*zeta^10 - 12*zeta^8 + 
48*zeta^7 + 12*zeta^6 - 24*zeta^5 - 36*zeta^4 - 12*zeta^3 - 24*zeta^2 - 12*zeta 
+ 36)*q^599 + (45*zeta^11 - 54*zeta^10 + 18*zeta^8 - 72*zeta^7 - 18*zeta^6 + 
36*zeta^5 - 9*zeta^4 - 45*zeta^3 + 36*zeta^2 + 18*zeta - 54)*q^601 + 
(140*zeta^10 + 70*zeta^8 - 70*zeta^6 + 140*zeta^5 + 140*zeta^4 + 140*zeta^2 + 
70*zeta - 70)*q^602 + (-50*zeta^11 + 60*zeta^10 - 20*zeta^8 + 80*zeta^7 + 
20*zeta^6 - 40*zeta^5 + 10*zeta^4 + 50*zeta^3 - 40*zeta^2 - 20*zeta + 60)*q^603 
+ (-128*zeta^11 + 64*zeta^10 - 96*zeta^8 - 64*zeta^7 + 96*zeta^6 - 192*zeta^5 - 
64*zeta^4 + 128*zeta^3 - 192*zeta^2 - 96*zeta + 64)*q^604 + (14*zeta^11 - 
56*zeta^10 - 14*zeta^8 + 56*zeta^7 + 14*zeta^6 - 28*zeta^5 - 42*zeta^4 - 
14*zeta^3 - 28*zeta^2 - 14*zeta + 42)*q^605 + (-8*zeta^11 + 32*zeta^10 + 
8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 + 24*zeta^4 + 8*zeta^3 + 16*zeta^2 +
8*zeta - 24)*q^606 + (92*zeta^11 - 46*zeta^10 + 69*zeta^8 + 46*zeta^7 - 
69*zeta^6 + 138*zeta^5 + 46*zeta^4 - 92*zeta^3 + 138*zeta^2 + 69*zeta - 
46)*q^607 + (40*zeta^11 - 48*zeta^10 + 16*zeta^8 - 64*zeta^7 - 16*zeta^6 + 
32*zeta^5 - 8*zeta^4 - 40*zeta^3 + 32*zeta^2 + 16*zeta - 48)*q^608 + O(q^609), 
(-5*zeta^11 + 6*zeta^10 - 2*zeta^8 + 8*zeta^7 + 2*zeta^6 - 4*zeta^5 + zeta^4 + 
5*zeta^3 - 4*zeta^2 - 2*zeta + 6)*q + (8*zeta^11 - 4*zeta^10 + 6*zeta^8 + 
4*zeta^7 - 6*zeta^6 + 12*zeta^5 + 4*zeta^4 - 8*zeta^3 + 12*zeta^2 + 6*zeta - 
4)*q^2 + (-2*zeta^11 + 8*zeta^10 + 2*zeta^8 - 8*zeta^7 - 2*zeta^6 + 4*zeta^5 + 
6*zeta^4 + 2*zeta^3 + 4*zeta^2 + 2*zeta - 6)*q^3 + (2*zeta^11 - 8*zeta^10 - 
2*zeta^8 + 8*zeta^7 + 2*zeta^6 - 4*zeta^5 - 6*zeta^4 - 2*zeta^3 - 4*zeta^2 - 
2*zeta + 6)*q^4 + (-8*zeta^11 + 4*zeta^10 - 6*zeta^8 - 4*zeta^7 + 6*zeta^6 - 
12*zeta^5 - 4*zeta^4 + 8*zeta^3 - 12*zeta^2 - 6*zeta + 4)*q^5 + (20*zeta^11 - 
24*zeta^10 + 8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 - 4*zeta^4 - 20*zeta^3 
+ 16*zeta^2 + 8*zeta - 24)*q^6 + (-21*zeta^11 + 14*zeta^10 - 14*zeta^8 + 
14*zeta^7 + 14*zeta^6 - 28*zeta^5 - 7*zeta^4 + 21*zeta^3 - 28*zeta^2 - 14*zeta +
21)*q^7 + (-8*zeta^11 + 4*zeta^10 - 6*zeta^8 - 4*zeta^7 + 6*zeta^6 - 12*zeta^5 -
4*zeta^4 + 8*zeta^3 - 12*zeta^2 - 6*zeta + 4)*q^9 + (-4*zeta^11 + 16*zeta^10 + 
4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 8*zeta^5 + 12*zeta^4 + 4*zeta^3 + 8*zeta^2 + 
4*zeta - 12)*q^10 + (-2*zeta^11 + 8*zeta^10 + 2*zeta^8 - 8*zeta^7 - 2*zeta^6 + 
4*zeta^5 + 6*zeta^4 + 2*zeta^3 + 4*zeta^2 + 2*zeta - 6)*q^11 + (-16*zeta^11 + 
8*zeta^10 - 12*zeta^8 - 8*zeta^7 + 12*zeta^6 - 24*zeta^5 - 8*zeta^4 + 16*zeta^3 
- 24*zeta^2 - 12*zeta + 8)*q^12 + (-5*zeta^11 + 6*zeta^10 - 2*zeta^8 + 8*zeta^7 
+ 2*zeta^6 - 4*zeta^5 + zeta^4 + 5*zeta^3 - 4*zeta^2 - 2*zeta + 6)*q^13 + 
(28*zeta^10 + 14*zeta^8 - 14*zeta^6 + 28*zeta^5 + 28*zeta^4 + 28*zeta^2 + 
14*zeta - 14)*q^14 + (-20*zeta^11 + 24*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6
- 16*zeta^5 + 4*zeta^4 + 20*zeta^3 - 16*zeta^2 - 8*zeta + 24)*q^15 + 
(-16*zeta^11 + 8*zeta^10 - 12*zeta^8 - 8*zeta^7 + 12*zeta^6 - 24*zeta^5 - 
8*zeta^4 + 16*zeta^3 - 24*zeta^2 - 12*zeta + 8)*q^16 + (-4*zeta^11 + 16*zeta^10 
+ 4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 8*zeta^5 + 12*zeta^4 + 4*zeta^3 + 8*zeta^2 +
4*zeta - 12)*q^18 + (4*zeta^11 - 2*zeta^10 + 3*zeta^8 + 2*zeta^7 - 3*zeta^6 + 
6*zeta^5 + 2*zeta^4 - 4*zeta^3 + 6*zeta^2 + 3*zeta - 2)*q^19 + (20*zeta^11 - 
24*zeta^10 + 8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 - 4*zeta^4 - 20*zeta^3 
+ 16*zeta^2 + 8*zeta - 24)*q^20 + (-42*zeta^11 + 56*zeta^10 - 14*zeta^8 + 
28*zeta^7 + 14*zeta^6 - 28*zeta^5 + 14*zeta^4 + 42*zeta^3 - 28*zeta^2 - 14*zeta 
+ 28)*q^21 + (20*zeta^11 - 24*zeta^10 + 8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 
16*zeta^5 - 4*zeta^4 - 20*zeta^3 + 16*zeta^2 + 8*zeta - 24)*q^22 + (-zeta^11 + 
4*zeta^10 + zeta^8 - 4*zeta^7 - zeta^6 + 2*zeta^5 + 3*zeta^4 + zeta^3 + 2*zeta^2
+ zeta - 3)*q^25 + (8*zeta^11 - 4*zeta^10 + 6*zeta^8 + 4*zeta^7 - 6*zeta^6 + 
12*zeta^5 + 4*zeta^4 - 8*zeta^3 + 12*zeta^2 + 6*zeta - 4)*q^26 + (10*zeta^11 - 
12*zeta^10 + 4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 8*zeta^5 - 2*zeta^4 - 10*zeta^3 +
8*zeta^2 + 4*zeta - 12)*q^27 + (42*zeta^11 - 56*zeta^10 + 14*zeta^8 - 28*zeta^7 
- 14*zeta^6 + 28*zeta^5 - 14*zeta^4 - 42*zeta^3 + 28*zeta^2 + 14*zeta - 28)*q^28
+ (-20*zeta^11 + 24*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 + 
4*zeta^4 + 20*zeta^3 - 16*zeta^2 - 8*zeta + 24)*q^29 + (32*zeta^11 - 16*zeta^10 
+ 24*zeta^8 + 16*zeta^7 - 24*zeta^6 + 48*zeta^5 + 16*zeta^4 - 32*zeta^3 + 
48*zeta^2 + 24*zeta - 16)*q^30 + (9*zeta^11 - 36*zeta^10 - 9*zeta^8 + 36*zeta^7 
+ 9*zeta^6 - 18*zeta^5 - 27*zeta^4 - 9*zeta^3 - 18*zeta^2 - 9*zeta + 27)*q^31 + 
(-8*zeta^11 + 32*zeta^10 + 8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 + 
24*zeta^4 + 8*zeta^3 + 16*zeta^2 + 8*zeta - 24)*q^32 + (16*zeta^11 - 8*zeta^10 +
12*zeta^8 + 8*zeta^7 - 12*zeta^6 + 24*zeta^5 + 8*zeta^4 - 16*zeta^3 + 24*zeta^2 
+ 12*zeta - 8)*q^33 + (-28*zeta^10 - 14*zeta^8 + 14*zeta^6 - 28*zeta^5 - 
28*zeta^4 - 28*zeta^2 - 14*zeta + 14)*q^35 + (20*zeta^11 - 24*zeta^10 + 8*zeta^8
- 32*zeta^7 - 8*zeta^6 + 16*zeta^5 - 4*zeta^4 - 20*zeta^3 + 16*zeta^2 + 8*zeta -
24)*q^36 + (12*zeta^11 - 6*zeta^10 + 9*zeta^8 + 6*zeta^7 - 9*zeta^6 + 18*zeta^5 
+ 6*zeta^4 - 12*zeta^3 + 18*zeta^2 + 9*zeta - 6)*q^37 + (2*zeta^11 - 8*zeta^10 -
2*zeta^8 + 8*zeta^7 + 2*zeta^6 - 4*zeta^5 - 6*zeta^4 - 2*zeta^3 - 4*zeta^2 - 
2*zeta + 6)*q^38 + (-2*zeta^11 + 8*zeta^10 + 2*zeta^8 - 8*zeta^7 - 2*zeta^6 + 
4*zeta^5 + 6*zeta^4 + 2*zeta^3 + 4*zeta^2 + 2*zeta - 6)*q^39 + (50*zeta^11 - 
60*zeta^10 + 20*zeta^8 - 80*zeta^7 - 20*zeta^6 + 40*zeta^5 - 10*zeta^4 - 
50*zeta^3 + 40*zeta^2 + 20*zeta - 60)*q^41 + (84*zeta^11 - 56*zeta^10 + 
56*zeta^8 - 56*zeta^7 - 56*zeta^6 + 112*zeta^5 + 28*zeta^4 - 84*zeta^3 + 
112*zeta^2 + 56*zeta - 84)*q^42 + (-25*zeta^11 + 30*zeta^10 - 10*zeta^8 + 
40*zeta^7 + 10*zeta^6 - 20*zeta^5 + 5*zeta^4 + 25*zeta^3 - 20*zeta^2 - 10*zeta +
30)*q^43 + (-16*zeta^11 + 8*zeta^10 - 12*zeta^8 - 8*zeta^7 + 12*zeta^6 - 
24*zeta^5 - 8*zeta^4 + 16*zeta^3 - 24*zeta^2 - 12*zeta + 8)*q^44 + (4*zeta^11 - 
16*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 8*zeta^5 - 12*zeta^4 - 4*zeta^3 -
8*zeta^2 - 4*zeta + 12)*q^45 + (-24*zeta^11 + 12*zeta^10 - 18*zeta^8 - 12*zeta^7
+ 18*zeta^6 - 36*zeta^5 - 12*zeta^4 + 24*zeta^3 - 36*zeta^2 - 18*zeta + 12)*q^47
+ (-40*zeta^11 + 48*zeta^10 - 16*zeta^8 + 64*zeta^7 + 16*zeta^6 - 32*zeta^5 + 
8*zeta^4 + 40*zeta^3 - 32*zeta^2 - 16*zeta + 48)*q^48 + (42*zeta^11 - 14*zeta^10
+ 35*zeta^8 - 28*zeta^7 - 35*zeta^6 + 70*zeta^5 + 28*zeta^4 - 42*zeta^3 + 
70*zeta^2 + 35*zeta - 49)*q^49 + (10*zeta^11 - 12*zeta^10 + 4*zeta^8 - 16*zeta^7
- 4*zeta^6 + 8*zeta^5 - 2*zeta^4 - 10*zeta^3 + 8*zeta^2 + 4*zeta - 12)*q^50 + 
(2*zeta^11 - 8*zeta^10 - 2*zeta^8 + 8*zeta^7 + 2*zeta^6 - 4*zeta^5 - 6*zeta^4 - 
2*zeta^3 - 4*zeta^2 - 2*zeta + 6)*q^52 + (12*zeta^11 - 48*zeta^10 - 12*zeta^8 + 
48*zeta^7 + 12*zeta^6 - 24*zeta^5 - 36*zeta^4 - 12*zeta^3 - 24*zeta^2 - 12*zeta 
+ 36)*q^53 + (-16*zeta^11 + 8*zeta^10 - 12*zeta^8 - 8*zeta^7 + 12*zeta^6 - 
24*zeta^5 - 8*zeta^4 + 16*zeta^3 - 24*zeta^2 - 12*zeta + 8)*q^54 + (-20*zeta^11 
+ 24*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 + 4*zeta^4 + 
20*zeta^3 - 16*zeta^2 - 8*zeta + 24)*q^55 + (10*zeta^11 - 12*zeta^10 + 4*zeta^8 
- 16*zeta^7 - 4*zeta^6 + 8*zeta^5 - 2*zeta^4 - 10*zeta^3 + 8*zeta^2 + 4*zeta - 
12)*q^57 + (32*zeta^11 - 16*zeta^10 + 24*zeta^8 + 16*zeta^7 - 24*zeta^6 + 
48*zeta^5 + 16*zeta^4 - 32*zeta^3 + 48*zeta^2 + 24*zeta - 16)*q^58 + 
(-12*zeta^11 + 48*zeta^10 + 12*zeta^8 - 48*zeta^7 - 12*zeta^6 + 24*zeta^5 + 
36*zeta^4 + 12*zeta^3 + 24*zeta^2 + 12*zeta - 36)*q^59 + (8*zeta^11 - 32*zeta^10
- 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 - 24*zeta^4 - 8*zeta^3 - 16*zeta^2
- 8*zeta + 24)*q^60 + (40*zeta^11 - 20*zeta^10 + 30*zeta^8 + 20*zeta^7 - 
30*zeta^6 + 60*zeta^5 + 20*zeta^4 - 40*zeta^3 + 60*zeta^2 + 30*zeta - 20)*q^61 +
(-90*zeta^11 + 108*zeta^10 - 36*zeta^8 + 144*zeta^7 + 36*zeta^6 - 72*zeta^5 + 
18*zeta^4 + 90*zeta^3 - 72*zeta^2 - 36*zeta + 108)*q^62 + (-28*zeta^10 - 
14*zeta^8 + 14*zeta^6 - 28*zeta^5 - 28*zeta^4 - 28*zeta^2 - 14*zeta + 14)*q^63 +
(40*zeta^11 - 48*zeta^10 + 16*zeta^8 - 64*zeta^7 - 16*zeta^6 + 32*zeta^5 - 
8*zeta^4 - 40*zeta^3 + 32*zeta^2 + 16*zeta - 48)*q^64 + (-8*zeta^11 + 4*zeta^10 
- 6*zeta^8 - 4*zeta^7 + 6*zeta^6 - 12*zeta^5 - 4*zeta^4 + 8*zeta^3 - 12*zeta^2 -
6*zeta + 4)*q^65 + (8*zeta^11 - 32*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 
16*zeta^5 - 24*zeta^4 - 8*zeta^3 - 16*zeta^2 - 8*zeta + 24)*q^66 + (-5*zeta^11 +
20*zeta^10 + 5*zeta^8 - 20*zeta^7 - 5*zeta^6 + 10*zeta^5 + 15*zeta^4 + 5*zeta^3 
+ 10*zeta^2 + 5*zeta - 15)*q^67 + (-84*zeta^11 + 112*zeta^10 - 28*zeta^8 + 
56*zeta^7 + 28*zeta^6 - 56*zeta^5 + 28*zeta^4 + 84*zeta^3 - 56*zeta^2 - 28*zeta 
+ 56)*q^70 + (30*zeta^11 - 36*zeta^10 + 12*zeta^8 - 48*zeta^7 - 12*zeta^6 + 
24*zeta^5 - 6*zeta^4 - 30*zeta^3 + 24*zeta^2 + 12*zeta - 36)*q^71 + (-3*zeta^11 
+ 12*zeta^10 + 3*zeta^8 - 12*zeta^7 - 3*zeta^6 + 6*zeta^5 + 9*zeta^4 + 3*zeta^3 
+ 6*zeta^2 + 3*zeta - 9)*q^73 + (6*zeta^11 - 24*zeta^10 - 6*zeta^8 + 24*zeta^7 +
6*zeta^6 - 12*zeta^5 - 18*zeta^4 - 6*zeta^3 - 12*zeta^2 - 6*zeta + 18)*q^74 + 
(8*zeta^11 - 4*zeta^10 + 6*zeta^8 + 4*zeta^7 - 6*zeta^6 + 12*zeta^5 + 4*zeta^4 -
8*zeta^3 + 12*zeta^2 + 6*zeta - 4)*q^75 + (-10*zeta^11 + 12*zeta^10 - 4*zeta^8 +
16*zeta^7 + 4*zeta^6 - 8*zeta^5 + 2*zeta^4 + 10*zeta^3 - 8*zeta^2 - 4*zeta + 
12)*q^76 + (-42*zeta^11 + 56*zeta^10 - 14*zeta^8 + 28*zeta^7 + 14*zeta^6 - 
28*zeta^5 + 14*zeta^4 + 42*zeta^3 - 28*zeta^2 - 14*zeta + 28)*q^77 + (20*zeta^11
- 24*zeta^10 + 8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 - 4*zeta^4 - 
20*zeta^3 + 16*zeta^2 + 8*zeta - 24)*q^78 + (-4*zeta^11 + 2*zeta^10 - 3*zeta^8 -
2*zeta^7 + 3*zeta^6 - 6*zeta^5 - 2*zeta^4 + 4*zeta^3 - 6*zeta^2 - 3*zeta + 
2)*q^79 + (8*zeta^11 - 32*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 
- 24*zeta^4 - 8*zeta^3 - 16*zeta^2 - 8*zeta + 24)*q^80 + (-2*zeta^11 + 8*zeta^10
+ 2*zeta^8 - 8*zeta^7 - 2*zeta^6 + 4*zeta^5 + 6*zeta^4 + 2*zeta^3 + 4*zeta^2 + 
2*zeta - 6)*q^81 + (-80*zeta^11 + 40*zeta^10 - 60*zeta^8 - 40*zeta^7 + 60*zeta^6
- 120*zeta^5 - 40*zeta^4 + 80*zeta^3 - 120*zeta^2 - 60*zeta + 40)*q^82 + 
(-30*zeta^11 + 36*zeta^10 - 12*zeta^8 + 48*zeta^7 + 12*zeta^6 - 24*zeta^5 + 
6*zeta^4 + 30*zeta^3 - 24*zeta^2 - 12*zeta + 36)*q^83 + (-56*zeta^10 - 28*zeta^8
+ 28*zeta^6 - 56*zeta^5 - 56*zeta^4 - 56*zeta^2 - 28*zeta + 28)*q^84 + 
(40*zeta^11 - 20*zeta^10 + 30*zeta^8 + 20*zeta^7 - 30*zeta^6 + 60*zeta^5 + 
20*zeta^4 - 40*zeta^3 + 60*zeta^2 + 30*zeta - 20)*q^86 + (-8*zeta^11 + 
32*zeta^10 + 8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 + 24*zeta^4 + 8*zeta^3 
+ 16*zeta^2 + 8*zeta - 24)*q^87 + (64*zeta^11 - 32*zeta^10 + 48*zeta^8 + 
32*zeta^7 - 48*zeta^6 + 96*zeta^5 + 32*zeta^4 - 64*zeta^3 + 96*zeta^2 + 48*zeta 
- 32)*q^89 + (-40*zeta^11 + 48*zeta^10 - 16*zeta^8 + 64*zeta^7 + 16*zeta^6 - 
32*zeta^5 + 8*zeta^4 + 40*zeta^3 - 32*zeta^2 - 16*zeta + 48)*q^90 + (-21*zeta^11
+ 14*zeta^10 - 14*zeta^8 + 14*zeta^7 + 14*zeta^6 - 28*zeta^5 - 7*zeta^4 + 
21*zeta^3 - 28*zeta^2 - 14*zeta + 21)*q^91 + (-72*zeta^11 + 36*zeta^10 - 
54*zeta^8 - 36*zeta^7 + 54*zeta^6 - 108*zeta^5 - 36*zeta^4 + 72*zeta^3 - 
108*zeta^2 - 54*zeta + 36)*q^93 + (-12*zeta^11 + 48*zeta^10 + 12*zeta^8 - 
48*zeta^7 - 12*zeta^6 + 24*zeta^5 + 36*zeta^4 + 12*zeta^3 + 24*zeta^2 + 12*zeta 
- 36)*q^94 + (-2*zeta^11 + 8*zeta^10 + 2*zeta^8 - 8*zeta^7 - 2*zeta^6 + 4*zeta^5
+ 6*zeta^4 + 2*zeta^3 + 4*zeta^2 + 2*zeta - 6)*q^95 + (64*zeta^11 - 32*zeta^10 +
48*zeta^8 + 32*zeta^7 - 48*zeta^6 + 96*zeta^5 + 32*zeta^4 - 64*zeta^3 + 
96*zeta^2 + 48*zeta - 32)*q^96 + (30*zeta^11 - 36*zeta^10 + 12*zeta^8 - 
48*zeta^7 - 12*zeta^6 + 24*zeta^5 - 6*zeta^4 - 30*zeta^3 + 24*zeta^2 + 12*zeta -
36)*q^97 + (42*zeta^11 - 112*zeta^10 - 14*zeta^8 - 28*zeta^7 + 14*zeta^6 - 
28*zeta^5 - 70*zeta^4 - 42*zeta^3 - 28*zeta^2 - 14*zeta)*q^98 + (-20*zeta^11 + 
24*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 + 4*zeta^4 + 20*zeta^3 
- 16*zeta^2 - 8*zeta + 24)*q^99 + (-8*zeta^11 + 4*zeta^10 - 6*zeta^8 - 4*zeta^7 
+ 6*zeta^6 - 12*zeta^5 - 4*zeta^4 + 8*zeta^3 - 12*zeta^2 - 6*zeta + 4)*q^100 + 
(2*zeta^11 - 8*zeta^10 - 2*zeta^8 + 8*zeta^7 + 2*zeta^6 - 4*zeta^5 - 6*zeta^4 - 
2*zeta^3 - 4*zeta^2 - 2*zeta + 6)*q^101 + (-28*zeta^11 + 14*zeta^10 - 21*zeta^8 
- 14*zeta^7 + 21*zeta^6 - 42*zeta^5 - 14*zeta^4 + 28*zeta^3 - 42*zeta^2 - 
21*zeta + 14)*q^103 + (-84*zeta^11 + 56*zeta^10 - 56*zeta^8 + 56*zeta^7 + 
56*zeta^6 - 112*zeta^5 - 28*zeta^4 + 84*zeta^3 - 112*zeta^2 - 56*zeta + 
84)*q^105 + (-120*zeta^11 + 144*zeta^10 - 48*zeta^8 + 192*zeta^7 + 48*zeta^6 - 
96*zeta^5 + 24*zeta^4 + 120*zeta^3 - 96*zeta^2 - 48*zeta + 144)*q^106 + 
(-32*zeta^11 + 16*zeta^10 - 24*zeta^8 - 16*zeta^7 + 24*zeta^6 - 48*zeta^5 - 
16*zeta^4 + 32*zeta^3 - 48*zeta^2 - 24*zeta + 16)*q^107 + (-4*zeta^11 + 
16*zeta^10 + 4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 8*zeta^5 + 12*zeta^4 + 4*zeta^3 +
8*zeta^2 + 4*zeta - 12)*q^108 + (9*zeta^11 - 36*zeta^10 - 9*zeta^8 + 36*zeta^7 +
9*zeta^6 - 18*zeta^5 - 27*zeta^4 - 9*zeta^3 - 18*zeta^2 - 9*zeta + 27)*q^109 + 
(32*zeta^11 - 16*zeta^10 + 24*zeta^8 + 16*zeta^7 - 24*zeta^6 + 48*zeta^5 + 
16*zeta^4 - 32*zeta^3 + 48*zeta^2 + 24*zeta - 16)*q^110 + (30*zeta^11 - 
36*zeta^10 + 12*zeta^8 - 48*zeta^7 - 12*zeta^6 + 24*zeta^5 - 6*zeta^4 - 
30*zeta^3 + 24*zeta^2 + 12*zeta - 36)*q^111 + (-56*zeta^10 - 28*zeta^8 + 
28*zeta^6 - 56*zeta^5 - 56*zeta^4 - 56*zeta^2 - 28*zeta + 28)*q^112 + 
(-50*zeta^11 + 60*zeta^10 - 20*zeta^8 + 80*zeta^7 + 20*zeta^6 - 40*zeta^5 + 
10*zeta^4 + 50*zeta^3 - 40*zeta^2 - 20*zeta + 60)*q^113 + (-16*zeta^11 + 
8*zeta^10 - 12*zeta^8 - 8*zeta^7 + 12*zeta^6 - 24*zeta^5 - 8*zeta^4 + 16*zeta^3 
- 24*zeta^2 - 12*zeta + 8)*q^114 + (8*zeta^11 - 32*zeta^10 - 8*zeta^8 + 
32*zeta^7 + 8*zeta^6 - 16*zeta^5 - 24*zeta^4 - 8*zeta^3 - 16*zeta^2 - 8*zeta + 
24)*q^116 + (-8*zeta^11 + 4*zeta^10 - 6*zeta^8 - 4*zeta^7 + 6*zeta^6 - 12*zeta^5
- 4*zeta^4 + 8*zeta^3 - 12*zeta^2 - 6*zeta + 4)*q^117 + (120*zeta^11 - 
144*zeta^10 + 48*zeta^8 - 192*zeta^7 - 48*zeta^6 + 96*zeta^5 - 24*zeta^4 - 
120*zeta^3 + 96*zeta^2 + 48*zeta - 144)*q^118 + (-28*zeta^11 + 14*zeta^10 - 
21*zeta^8 - 14*zeta^7 + 21*zeta^6 - 42*zeta^5 - 14*zeta^4 + 28*zeta^3 - 
42*zeta^2 - 21*zeta + 14)*q^121 + (20*zeta^11 - 80*zeta^10 - 20*zeta^8 + 
80*zeta^7 + 20*zeta^6 - 40*zeta^5 - 60*zeta^4 - 20*zeta^3 - 40*zeta^2 - 20*zeta 
+ 60)*q^122 + (20*zeta^11 - 80*zeta^10 - 20*zeta^8 + 80*zeta^7 + 20*zeta^6 - 
40*zeta^5 - 60*zeta^4 - 20*zeta^3 - 40*zeta^2 - 20*zeta + 60)*q^123 + 
(72*zeta^11 - 36*zeta^10 + 54*zeta^8 + 36*zeta^7 - 54*zeta^6 + 108*zeta^5 + 
36*zeta^4 - 72*zeta^3 + 108*zeta^2 + 54*zeta - 36)*q^124 + (-60*zeta^11 + 
72*zeta^10 - 24*zeta^8 + 96*zeta^7 + 24*zeta^6 - 48*zeta^5 + 12*zeta^4 + 
60*zeta^3 - 48*zeta^2 - 24*zeta + 72)*q^125 + (-84*zeta^11 + 112*zeta^10 - 
28*zeta^8 + 56*zeta^7 + 28*zeta^6 - 56*zeta^5 + 28*zeta^4 + 84*zeta^3 - 
56*zeta^2 - 28*zeta + 56)*q^126 + (75*zeta^11 - 90*zeta^10 + 30*zeta^8 - 
120*zeta^7 - 30*zeta^6 + 60*zeta^5 - 15*zeta^4 - 75*zeta^3 + 60*zeta^2 + 30*zeta
- 90)*q^127 + (-10*zeta^11 + 40*zeta^10 + 10*zeta^8 - 40*zeta^7 - 10*zeta^6 + 
20*zeta^5 + 30*zeta^4 + 10*zeta^3 + 20*zeta^2 + 10*zeta - 30)*q^129 + 
(-4*zeta^11 + 16*zeta^10 + 4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 8*zeta^5 + 
12*zeta^4 + 4*zeta^3 + 8*zeta^2 + 4*zeta - 12)*q^130 + (-56*zeta^11 + 28*zeta^10
- 42*zeta^8 - 28*zeta^7 + 42*zeta^6 - 84*zeta^5 - 28*zeta^4 + 56*zeta^3 - 
84*zeta^2 - 42*zeta + 28)*q^131 + (-40*zeta^11 + 48*zeta^10 - 16*zeta^8 + 
64*zeta^7 + 16*zeta^6 - 32*zeta^5 + 8*zeta^4 + 40*zeta^3 - 32*zeta^2 - 16*zeta +
48)*q^132 + (14*zeta^10 + 7*zeta^8 - 7*zeta^6 + 14*zeta^5 + 14*zeta^4 + 
14*zeta^2 + 7*zeta - 7)*q^133 + (50*zeta^11 - 60*zeta^10 + 20*zeta^8 - 80*zeta^7
- 20*zeta^6 + 40*zeta^5 - 10*zeta^4 - 50*zeta^3 + 40*zeta^2 + 20*zeta - 
60)*q^134 + (16*zeta^11 - 8*zeta^10 + 12*zeta^8 + 8*zeta^7 - 12*zeta^6 + 
24*zeta^5 + 8*zeta^4 - 16*zeta^3 + 24*zeta^2 + 12*zeta - 8)*q^135 + (-12*zeta^11
+ 48*zeta^10 + 12*zeta^8 - 48*zeta^7 - 12*zeta^6 + 24*zeta^5 + 36*zeta^4 + 
12*zeta^3 + 24*zeta^2 + 12*zeta - 36)*q^137 + (15*zeta^11 - 18*zeta^10 + 
6*zeta^8 - 24*zeta^7 - 6*zeta^6 + 12*zeta^5 - 3*zeta^4 - 15*zeta^3 + 12*zeta^2 +
6*zeta - 18)*q^139 + (84*zeta^11 - 56*zeta^10 + 56*zeta^8 - 56*zeta^7 - 
56*zeta^6 + 112*zeta^5 + 28*zeta^4 - 84*zeta^3 + 112*zeta^2 + 56*zeta - 
84)*q^140 + (-60*zeta^11 + 72*zeta^10 - 24*zeta^8 + 96*zeta^7 + 24*zeta^6 - 
48*zeta^5 + 12*zeta^4 + 60*zeta^3 - 48*zeta^2 - 24*zeta + 72)*q^141 + 
(-48*zeta^11 + 24*zeta^10 - 36*zeta^8 - 24*zeta^7 + 36*zeta^6 - 72*zeta^5 - 
24*zeta^4 + 48*zeta^3 - 72*zeta^2 - 36*zeta + 24)*q^142 + (-2*zeta^11 + 
8*zeta^10 + 2*zeta^8 - 8*zeta^7 - 2*zeta^6 + 4*zeta^5 + 6*zeta^4 + 2*zeta^3 + 
4*zeta^2 + 2*zeta - 6)*q^143 + (8*zeta^11 - 32*zeta^10 - 8*zeta^8 + 32*zeta^7 + 
8*zeta^6 - 16*zeta^5 - 24*zeta^4 - 8*zeta^3 - 16*zeta^2 - 8*zeta + 24)*q^144 + 
(-32*zeta^11 + 16*zeta^10 - 24*zeta^8 - 16*zeta^7 + 24*zeta^6 - 48*zeta^5 - 
16*zeta^4 + 32*zeta^3 - 48*zeta^2 - 24*zeta + 16)*q^145 + (30*zeta^11 - 
36*zeta^10 + 12*zeta^8 - 48*zeta^7 - 12*zeta^6 + 24*zeta^5 - 6*zeta^4 - 
30*zeta^3 + 24*zeta^2 + 12*zeta - 36)*q^146 + (126*zeta^11 - 140*zeta^10 + 
56*zeta^8 - 84*zeta^7 - 56*zeta^6 + 112*zeta^5 - 14*zeta^4 - 126*zeta^3 + 
112*zeta^2 + 56*zeta - 98)*q^147 + (-30*zeta^11 + 36*zeta^10 - 12*zeta^8 + 
48*zeta^7 + 12*zeta^6 - 24*zeta^5 + 6*zeta^4 + 30*zeta^3 - 24*zeta^2 - 12*zeta +
36)*q^148 + (-48*zeta^11 + 24*zeta^10 - 36*zeta^8 - 24*zeta^7 + 36*zeta^6 - 
72*zeta^5 - 24*zeta^4 + 48*zeta^3 - 72*zeta^2 - 36*zeta + 24)*q^149 + (4*zeta^11
- 16*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 8*zeta^5 - 12*zeta^4 - 4*zeta^3
- 8*zeta^2 - 4*zeta + 12)*q^150 + (-16*zeta^11 + 64*zeta^10 + 16*zeta^8 - 
64*zeta^7 - 16*zeta^6 + 32*zeta^5 + 48*zeta^4 + 16*zeta^3 + 32*zeta^2 + 16*zeta 
- 48)*q^151 + (84*zeta^11 - 56*zeta^10 + 56*zeta^8 - 56*zeta^7 - 56*zeta^6 + 
112*zeta^5 + 28*zeta^4 - 84*zeta^3 + 112*zeta^2 + 56*zeta - 84)*q^154 + 
(90*zeta^11 - 108*zeta^10 + 36*zeta^8 - 144*zeta^7 - 36*zeta^6 + 72*zeta^5 - 
18*zeta^4 - 90*zeta^3 + 72*zeta^2 + 36*zeta - 108)*q^155 + (-16*zeta^11 + 
8*zeta^10 - 12*zeta^8 - 8*zeta^7 + 12*zeta^6 - 24*zeta^5 - 8*zeta^4 + 16*zeta^3 
- 24*zeta^2 - 12*zeta + 8)*q^156 + (-14*zeta^11 + 56*zeta^10 + 14*zeta^8 - 
56*zeta^7 - 14*zeta^6 + 28*zeta^5 + 42*zeta^4 + 14*zeta^3 + 28*zeta^2 + 14*zeta 
- 42)*q^157 + (-2*zeta^11 + 8*zeta^10 + 2*zeta^8 - 8*zeta^7 - 2*zeta^6 + 
4*zeta^5 + 6*zeta^4 + 2*zeta^3 + 4*zeta^2 + 2*zeta - 6)*q^158 + (-96*zeta^11 + 
48*zeta^10 - 72*zeta^8 - 48*zeta^7 + 72*zeta^6 - 144*zeta^5 - 48*zeta^4 + 
96*zeta^3 - 144*zeta^2 - 72*zeta + 48)*q^159 + (-80*zeta^11 + 96*zeta^10 - 
32*zeta^8 + 128*zeta^7 + 32*zeta^6 - 64*zeta^5 + 16*zeta^4 + 80*zeta^3 - 
64*zeta^2 - 32*zeta + 96)*q^160 + (20*zeta^11 - 24*zeta^10 + 8*zeta^8 - 
32*zeta^7 - 8*zeta^6 + 16*zeta^5 - 4*zeta^4 - 20*zeta^3 + 16*zeta^2 + 8*zeta - 
24)*q^162 + (16*zeta^11 - 8*zeta^10 + 12*zeta^8 + 8*zeta^7 - 12*zeta^6 + 
24*zeta^5 + 8*zeta^4 - 16*zeta^3 + 24*zeta^2 + 12*zeta - 8)*q^163 + (-20*zeta^11
+ 80*zeta^10 + 20*zeta^8 - 80*zeta^7 - 20*zeta^6 + 40*zeta^5 + 60*zeta^4 + 
20*zeta^3 + 40*zeta^2 + 20*zeta - 60)*q^164 + (-8*zeta^11 + 32*zeta^10 + 
8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 + 24*zeta^4 + 8*zeta^3 + 16*zeta^2 +
8*zeta - 24)*q^165 + (48*zeta^11 - 24*zeta^10 + 36*zeta^8 + 24*zeta^7 - 
36*zeta^6 + 72*zeta^5 + 24*zeta^4 - 48*zeta^3 + 72*zeta^2 + 36*zeta - 24)*q^166 
+ (70*zeta^11 - 84*zeta^10 + 28*zeta^8 - 112*zeta^7 - 28*zeta^6 + 56*zeta^5 - 
14*zeta^4 - 70*zeta^3 + 56*zeta^2 + 28*zeta - 84)*q^167 + (60*zeta^11 - 
72*zeta^10 + 24*zeta^8 - 96*zeta^7 - 24*zeta^6 + 48*zeta^5 - 12*zeta^4 - 
60*zeta^3 + 48*zeta^2 + 24*zeta - 72)*q^169 + (-2*zeta^11 + 8*zeta^10 + 2*zeta^8
- 8*zeta^7 - 2*zeta^6 + 4*zeta^5 + 6*zeta^4 + 2*zeta^3 + 4*zeta^2 + 2*zeta - 
6)*q^171 + (10*zeta^11 - 40*zeta^10 - 10*zeta^8 + 40*zeta^7 + 10*zeta^6 - 
20*zeta^5 - 30*zeta^4 - 10*zeta^3 - 20*zeta^2 - 10*zeta + 30)*q^172 + 
(32*zeta^11 - 16*zeta^10 + 24*zeta^8 + 16*zeta^7 - 24*zeta^6 + 48*zeta^5 + 
16*zeta^4 - 32*zeta^3 + 48*zeta^2 + 24*zeta - 16)*q^173 + (80*zeta^11 - 
96*zeta^10 + 32*zeta^8 - 128*zeta^7 - 32*zeta^6 + 64*zeta^5 - 16*zeta^4 - 
80*zeta^3 + 64*zeta^2 + 32*zeta - 96)*q^174 + (-21*zeta^11 + 28*zeta^10 - 
7*zeta^8 + 14*zeta^7 + 7*zeta^6 - 14*zeta^5 + 7*zeta^4 + 21*zeta^3 - 14*zeta^2 -
7*zeta + 14)*q^175 + (-40*zeta^11 + 48*zeta^10 - 16*zeta^8 + 64*zeta^7 + 
16*zeta^6 - 32*zeta^5 + 8*zeta^4 + 40*zeta^3 - 32*zeta^2 - 16*zeta + 48)*q^176 +
(96*zeta^11 - 48*zeta^10 + 72*zeta^8 + 48*zeta^7 - 72*zeta^6 + 144*zeta^5 + 
48*zeta^4 - 96*zeta^3 + 144*zeta^2 + 72*zeta - 48)*q^177 + (32*zeta^11 - 
128*zeta^10 - 32*zeta^8 + 128*zeta^7 + 32*zeta^6 - 64*zeta^5 - 96*zeta^4 - 
32*zeta^3 - 64*zeta^2 - 32*zeta + 96)*q^178 + (2*zeta^11 - 8*zeta^10 - 2*zeta^8 
+ 8*zeta^7 + 2*zeta^6 - 4*zeta^5 - 6*zeta^4 - 2*zeta^3 - 4*zeta^2 - 2*zeta + 
6)*q^179 + (32*zeta^11 - 16*zeta^10 + 24*zeta^8 + 16*zeta^7 - 24*zeta^6 + 
48*zeta^5 + 16*zeta^4 - 32*zeta^3 + 48*zeta^2 + 24*zeta - 16)*q^180 + 
(-65*zeta^11 + 78*zeta^10 - 26*zeta^8 + 104*zeta^7 + 26*zeta^6 - 52*zeta^5 + 
13*zeta^4 + 65*zeta^3 - 52*zeta^2 - 26*zeta + 78)*q^181 + (28*zeta^10 + 
14*zeta^8 - 14*zeta^6 + 28*zeta^5 + 28*zeta^4 + 28*zeta^2 + 14*zeta - 14)*q^182 
+ (100*zeta^11 - 120*zeta^10 + 40*zeta^8 - 160*zeta^7 - 40*zeta^6 + 80*zeta^5 - 
20*zeta^4 - 100*zeta^3 + 80*zeta^2 + 40*zeta - 120)*q^183 + (-6*zeta^11 + 
24*zeta^10 + 6*zeta^8 - 24*zeta^7 - 6*zeta^6 + 12*zeta^5 + 18*zeta^4 + 6*zeta^3 
+ 12*zeta^2 + 6*zeta - 18)*q^185 + (-36*zeta^11 + 144*zeta^10 + 36*zeta^8 - 
144*zeta^7 - 36*zeta^6 + 72*zeta^5 + 108*zeta^4 + 36*zeta^3 + 72*zeta^2 + 
36*zeta - 108)*q^186 + (60*zeta^11 - 72*zeta^10 + 24*zeta^8 - 96*zeta^7 - 
24*zeta^6 + 48*zeta^5 - 12*zeta^4 - 60*zeta^3 + 48*zeta^2 + 24*zeta - 72)*q^188 
+ (42*zeta^11 - 28*zeta^10 + 28*zeta^8 - 28*zeta^7 - 28*zeta^6 + 56*zeta^5 + 
14*zeta^4 - 42*zeta^3 + 56*zeta^2 + 28*zeta - 42)*q^189 + (20*zeta^11 - 
24*zeta^10 + 8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 - 4*zeta^4 - 20*zeta^3 
+ 16*zeta^2 + 8*zeta - 24)*q^190 + (40*zeta^11 - 20*zeta^10 + 30*zeta^8 + 
20*zeta^7 - 30*zeta^6 + 60*zeta^5 + 20*zeta^4 - 40*zeta^3 + 60*zeta^2 + 30*zeta 
- 20)*q^191 + (16*zeta^11 - 64*zeta^10 - 16*zeta^8 + 64*zeta^7 + 16*zeta^6 - 
32*zeta^5 - 48*zeta^4 - 16*zeta^3 - 32*zeta^2 - 16*zeta + 48)*q^192 + 
(11*zeta^11 - 44*zeta^10 - 11*zeta^8 + 44*zeta^7 + 11*zeta^6 - 22*zeta^5 - 
33*zeta^4 - 11*zeta^3 - 22*zeta^2 - 11*zeta + 33)*q^193 + (-48*zeta^11 + 
24*zeta^10 - 36*zeta^8 - 24*zeta^7 + 36*zeta^6 - 72*zeta^5 - 24*zeta^4 + 
48*zeta^3 - 72*zeta^2 - 36*zeta + 24)*q^194 + (-20*zeta^11 + 24*zeta^10 - 
8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 + 4*zeta^4 + 20*zeta^3 - 16*zeta^2 -
8*zeta + 24)*q^195 + (-126*zeta^11 + 140*zeta^10 - 56*zeta^8 + 84*zeta^7 + 
56*zeta^6 - 112*zeta^5 + 14*zeta^4 + 126*zeta^3 - 112*zeta^2 - 56*zeta + 
98)*q^196 + (-80*zeta^11 + 96*zeta^10 - 32*zeta^8 + 128*zeta^7 + 32*zeta^6 - 
64*zeta^5 + 16*zeta^4 + 80*zeta^3 - 64*zeta^2 - 32*zeta + 96)*q^197 + 
(32*zeta^11 - 16*zeta^10 + 24*zeta^8 + 16*zeta^7 - 24*zeta^6 + 48*zeta^5 + 
16*zeta^4 - 32*zeta^3 + 48*zeta^2 + 24*zeta - 16)*q^198 + (40*zeta^11 - 
20*zeta^10 + 30*zeta^8 + 20*zeta^7 - 30*zeta^6 + 60*zeta^5 + 20*zeta^4 - 
40*zeta^3 + 60*zeta^2 + 30*zeta - 20)*q^201 + (-20*zeta^11 + 24*zeta^10 - 
8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 + 4*zeta^4 + 20*zeta^3 - 16*zeta^2 -
8*zeta + 24)*q^202 + (-84*zeta^11 + 56*zeta^10 - 56*zeta^8 + 56*zeta^7 + 
56*zeta^6 - 112*zeta^5 - 28*zeta^4 + 84*zeta^3 - 112*zeta^2 - 56*zeta + 
84)*q^203 + (80*zeta^11 - 40*zeta^10 + 60*zeta^8 + 40*zeta^7 - 60*zeta^6 + 
120*zeta^5 + 40*zeta^4 - 80*zeta^3 + 120*zeta^2 + 60*zeta - 40)*q^205 + 
(-14*zeta^11 + 56*zeta^10 + 14*zeta^8 - 56*zeta^7 - 14*zeta^6 + 28*zeta^5 + 
42*zeta^4 + 14*zeta^3 + 28*zeta^2 + 14*zeta - 42)*q^206 + (-16*zeta^11 + 
8*zeta^10 - 12*zeta^8 - 8*zeta^7 + 12*zeta^6 - 24*zeta^5 - 8*zeta^4 + 16*zeta^3 
- 24*zeta^2 - 12*zeta + 8)*q^208 + (10*zeta^11 - 12*zeta^10 + 4*zeta^8 - 
16*zeta^7 - 4*zeta^6 + 8*zeta^5 - 2*zeta^4 - 10*zeta^3 + 8*zeta^2 + 4*zeta - 
12)*q^209 + (112*zeta^10 + 56*zeta^8 - 56*zeta^6 + 112*zeta^5 + 112*zeta^4 + 
112*zeta^2 + 56*zeta - 56)*q^210 + (-20*zeta^11 + 24*zeta^10 - 8*zeta^8 + 
32*zeta^7 + 8*zeta^6 - 16*zeta^5 + 4*zeta^4 + 20*zeta^3 - 16*zeta^2 - 8*zeta + 
24)*q^211 + (96*zeta^11 - 48*zeta^10 + 72*zeta^8 + 48*zeta^7 - 72*zeta^6 + 
144*zeta^5 + 48*zeta^4 - 96*zeta^3 + 144*zeta^2 + 72*zeta - 48)*q^212 + 
(12*zeta^11 - 48*zeta^10 - 12*zeta^8 + 48*zeta^7 + 12*zeta^6 - 24*zeta^5 - 
36*zeta^4 - 12*zeta^3 - 24*zeta^2 - 12*zeta + 36)*q^213 + (-16*zeta^11 + 
64*zeta^10 + 16*zeta^8 - 64*zeta^7 - 16*zeta^6 + 32*zeta^5 + 48*zeta^4 + 
16*zeta^3 + 32*zeta^2 + 16*zeta - 48)*q^214 + (-40*zeta^11 + 20*zeta^10 - 
30*zeta^8 - 20*zeta^7 + 30*zeta^6 - 60*zeta^5 - 20*zeta^4 + 40*zeta^3 - 
60*zeta^2 - 30*zeta + 20)*q^215 + (189*zeta^11 - 252*zeta^10 + 63*zeta^8 - 
126*zeta^7 - 63*zeta^6 + 126*zeta^5 - 63*zeta^4 - 189*zeta^3 + 126*zeta^2 + 
63*zeta - 126)*q^217 + (-90*zeta^11 + 108*zeta^10 - 36*zeta^8 + 144*zeta^7 + 
36*zeta^6 - 72*zeta^5 + 18*zeta^4 + 90*zeta^3 - 72*zeta^2 - 36*zeta + 108)*q^218
+ (24*zeta^11 - 12*zeta^10 + 18*zeta^8 + 12*zeta^7 - 18*zeta^6 + 36*zeta^5 + 
12*zeta^4 - 24*zeta^3 + 36*zeta^2 + 18*zeta - 12)*q^219 + (8*zeta^11 - 
32*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 - 24*zeta^4 - 8*zeta^3 
- 16*zeta^2 - 8*zeta + 24)*q^220 + (-48*zeta^11 + 24*zeta^10 - 36*zeta^8 - 
24*zeta^7 + 36*zeta^6 - 72*zeta^5 - 24*zeta^4 + 48*zeta^3 - 72*zeta^2 - 36*zeta 
+ 24)*q^222 + (-80*zeta^11 + 96*zeta^10 - 32*zeta^8 + 128*zeta^7 + 32*zeta^6 - 
64*zeta^5 + 16*zeta^4 + 80*zeta^3 - 64*zeta^2 - 32*zeta + 96)*q^223 + 
(-168*zeta^11 + 224*zeta^10 - 56*zeta^8 + 112*zeta^7 + 56*zeta^6 - 112*zeta^5 + 
56*zeta^4 + 168*zeta^3 - 112*zeta^2 - 56*zeta + 112)*q^224 + (-10*zeta^11 + 
12*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 8*zeta^5 + 2*zeta^4 + 10*zeta^3 -
8*zeta^2 - 4*zeta + 12)*q^225 + (80*zeta^11 - 40*zeta^10 + 60*zeta^8 + 40*zeta^7
- 60*zeta^6 + 120*zeta^5 + 40*zeta^4 - 80*zeta^3 + 120*zeta^2 + 60*zeta - 
40)*q^226 + (18*zeta^11 - 72*zeta^10 - 18*zeta^8 + 72*zeta^7 + 18*zeta^6 - 
36*zeta^5 - 54*zeta^4 - 18*zeta^3 - 36*zeta^2 - 18*zeta + 54)*q^227 + 
(-4*zeta^11 + 16*zeta^10 + 4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 8*zeta^5 + 
12*zeta^4 + 4*zeta^3 + 8*zeta^2 + 4*zeta - 12)*q^228 + (-76*zeta^11 + 38*zeta^10
- 57*zeta^8 - 38*zeta^7 + 57*zeta^6 - 114*zeta^5 - 38*zeta^4 + 76*zeta^3 - 
114*zeta^2 - 57*zeta + 38)*q^229 + (56*zeta^10 + 28*zeta^8 - 28*zeta^6 + 
56*zeta^5 + 56*zeta^4 + 56*zeta^2 + 28*zeta - 28)*q^231 + (24*zeta^11 - 
12*zeta^10 + 18*zeta^8 + 12*zeta^7 - 18*zeta^6 + 36*zeta^5 + 12*zeta^4 - 
24*zeta^3 + 36*zeta^2 + 18*zeta - 12)*q^233 + (-4*zeta^11 + 16*zeta^10 + 
4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 8*zeta^5 + 12*zeta^4 + 4*zeta^3 + 8*zeta^2 + 
4*zeta - 12)*q^234 + (12*zeta^11 - 48*zeta^10 - 12*zeta^8 + 48*zeta^7 + 
12*zeta^6 - 24*zeta^5 - 36*zeta^4 - 12*zeta^3 - 24*zeta^2 - 12*zeta + 36)*q^235 
+ (-96*zeta^11 + 48*zeta^10 - 72*zeta^8 - 48*zeta^7 + 72*zeta^6 - 144*zeta^5 - 
48*zeta^4 + 96*zeta^3 - 144*zeta^2 - 72*zeta + 48)*q^236 + (-10*zeta^11 + 
12*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 8*zeta^5 + 2*zeta^4 + 10*zeta^3 -
8*zeta^2 - 4*zeta + 12)*q^237 + (-30*zeta^11 + 36*zeta^10 - 12*zeta^8 + 
48*zeta^7 + 12*zeta^6 - 24*zeta^5 + 6*zeta^4 + 30*zeta^3 - 24*zeta^2 - 12*zeta +
36)*q^239 + (-64*zeta^11 + 32*zeta^10 - 48*zeta^8 - 32*zeta^7 + 48*zeta^6 - 
96*zeta^5 - 32*zeta^4 + 64*zeta^3 - 96*zeta^2 - 48*zeta + 32)*q^240 + 
(14*zeta^11 - 56*zeta^10 - 14*zeta^8 + 56*zeta^7 + 14*zeta^6 - 28*zeta^5 - 
42*zeta^4 - 14*zeta^3 - 28*zeta^2 - 14*zeta + 42)*q^241 + (-14*zeta^11 + 
56*zeta^10 + 14*zeta^8 - 56*zeta^7 - 14*zeta^6 + 28*zeta^5 + 42*zeta^4 + 
14*zeta^3 + 28*zeta^2 + 14*zeta - 42)*q^242 + (-8*zeta^11 + 4*zeta^10 - 6*zeta^8
- 4*zeta^7 + 6*zeta^6 - 12*zeta^5 - 4*zeta^4 + 8*zeta^3 - 12*zeta^2 - 6*zeta + 
4)*q^243 + (-100*zeta^11 + 120*zeta^10 - 40*zeta^8 + 160*zeta^7 + 40*zeta^6 - 
80*zeta^5 + 20*zeta^4 + 100*zeta^3 - 80*zeta^2 - 40*zeta + 120)*q^244 + 
(-42*zeta^11 + 112*zeta^10 + 14*zeta^8 + 28*zeta^7 - 14*zeta^6 + 28*zeta^5 + 
70*zeta^4 + 42*zeta^3 + 28*zeta^2 + 14*zeta)*q^245 + (-200*zeta^11 + 240*zeta^10
- 80*zeta^8 + 320*zeta^7 + 80*zeta^6 - 160*zeta^5 + 40*zeta^4 + 200*zeta^3 - 
160*zeta^2 - 80*zeta + 240)*q^246 + (4*zeta^11 - 2*zeta^10 + 3*zeta^8 + 2*zeta^7
- 3*zeta^6 + 6*zeta^5 + 2*zeta^4 - 4*zeta^3 + 6*zeta^2 + 3*zeta - 2)*q^247 + 
(-12*zeta^11 + 48*zeta^10 + 12*zeta^8 - 48*zeta^7 - 12*zeta^6 + 24*zeta^5 + 
36*zeta^4 + 12*zeta^3 + 24*zeta^2 + 12*zeta - 36)*q^249 + (96*zeta^11 - 
48*zeta^10 + 72*zeta^8 + 48*zeta^7 - 72*zeta^6 + 144*zeta^5 + 48*zeta^4 - 
96*zeta^3 + 144*zeta^2 + 72*zeta - 48)*q^250 + (40*zeta^11 - 48*zeta^10 + 
16*zeta^8 - 64*zeta^7 - 16*zeta^6 + 32*zeta^5 - 8*zeta^4 - 40*zeta^3 + 32*zeta^2
+ 16*zeta - 48)*q^251 + (84*zeta^11 - 56*zeta^10 + 56*zeta^8 - 56*zeta^7 - 
56*zeta^6 + 112*zeta^5 + 28*zeta^4 - 84*zeta^3 + 112*zeta^2 + 56*zeta - 
84)*q^252 + (-120*zeta^11 + 60*zeta^10 - 90*zeta^8 - 60*zeta^7 + 90*zeta^6 - 
180*zeta^5 - 60*zeta^4 + 120*zeta^3 - 180*zeta^2 - 90*zeta + 60)*q^254 + 
(16*zeta^11 - 64*zeta^10 - 16*zeta^8 + 64*zeta^7 + 16*zeta^6 - 32*zeta^5 - 
48*zeta^4 - 16*zeta^3 - 32*zeta^2 - 16*zeta + 48)*q^256 + (104*zeta^11 - 
52*zeta^10 + 78*zeta^8 + 52*zeta^7 - 78*zeta^6 + 156*zeta^5 + 52*zeta^4 - 
104*zeta^3 + 156*zeta^2 + 78*zeta - 52)*q^257 + (100*zeta^11 - 120*zeta^10 + 
40*zeta^8 - 160*zeta^7 - 40*zeta^6 + 80*zeta^5 - 20*zeta^4 - 100*zeta^3 + 
80*zeta^2 + 40*zeta - 120)*q^258 + (42*zeta^10 + 21*zeta^8 - 21*zeta^6 + 
42*zeta^5 + 42*zeta^4 + 42*zeta^2 + 21*zeta - 21)*q^259 + (20*zeta^11 - 
24*zeta^10 + 8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 - 4*zeta^4 - 20*zeta^3 
+ 16*zeta^2 + 8*zeta - 24)*q^260 + (-32*zeta^11 + 16*zeta^10 - 24*zeta^8 - 
16*zeta^7 + 24*zeta^6 - 48*zeta^5 - 16*zeta^4 + 32*zeta^3 - 48*zeta^2 - 24*zeta 
+ 16)*q^261 + (-28*zeta^11 + 112*zeta^10 + 28*zeta^8 - 112*zeta^7 - 28*zeta^6 + 
56*zeta^5 + 84*zeta^4 + 28*zeta^3 + 56*zeta^2 + 28*zeta - 84)*q^262 + (4*zeta^11
- 16*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 8*zeta^5 - 12*zeta^4 - 4*zeta^3
- 8*zeta^2 - 4*zeta + 12)*q^263 + (120*zeta^11 - 144*zeta^10 + 48*zeta^8 - 
192*zeta^7 - 48*zeta^6 + 96*zeta^5 - 24*zeta^4 - 120*zeta^3 + 96*zeta^2 + 
48*zeta - 144)*q^265 + (42*zeta^11 - 56*zeta^10 + 14*zeta^8 - 28*zeta^7 - 
14*zeta^6 + 28*zeta^5 - 14*zeta^4 - 42*zeta^3 + 28*zeta^2 + 14*zeta - 28)*q^266 
+ (160*zeta^11 - 192*zeta^10 + 64*zeta^8 - 256*zeta^7 - 64*zeta^6 + 128*zeta^5 -
32*zeta^4 - 160*zeta^3 + 128*zeta^2 + 64*zeta - 192)*q^267 + (-40*zeta^11 + 
20*zeta^10 - 30*zeta^8 - 20*zeta^7 + 30*zeta^6 - 60*zeta^5 - 20*zeta^4 + 
40*zeta^3 - 60*zeta^2 - 30*zeta + 20)*q^268 + (6*zeta^11 - 24*zeta^10 - 6*zeta^8
+ 24*zeta^7 + 6*zeta^6 - 12*zeta^5 - 18*zeta^4 - 6*zeta^3 - 12*zeta^2 - 6*zeta +
18)*q^269 + (8*zeta^11 - 32*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 
16*zeta^5 - 24*zeta^4 - 8*zeta^3 - 16*zeta^2 - 8*zeta + 24)*q^270 + (64*zeta^11 
- 32*zeta^10 + 48*zeta^8 + 32*zeta^7 - 48*zeta^6 + 96*zeta^5 + 32*zeta^4 - 
64*zeta^3 + 96*zeta^2 + 48*zeta - 32)*q^271 + (-42*zeta^11 + 56*zeta^10 - 
14*zeta^8 + 28*zeta^7 + 14*zeta^6 - 28*zeta^5 + 14*zeta^4 + 42*zeta^3 - 
28*zeta^2 - 14*zeta + 28)*q^273 + (120*zeta^11 - 144*zeta^10 + 48*zeta^8 - 
192*zeta^7 - 48*zeta^6 + 96*zeta^5 - 24*zeta^4 - 120*zeta^3 + 96*zeta^2 + 
48*zeta - 144)*q^274 + (8*zeta^11 - 4*zeta^10 + 6*zeta^8 + 4*zeta^7 - 6*zeta^6 +
12*zeta^5 + 4*zeta^4 - 8*zeta^3 + 12*zeta^2 + 6*zeta - 4)*q^275 + (13*zeta^11 - 
52*zeta^10 - 13*zeta^8 + 52*zeta^7 + 13*zeta^6 - 26*zeta^5 - 39*zeta^4 - 
13*zeta^3 - 26*zeta^2 - 13*zeta + 39)*q^277 + (-24*zeta^11 + 12*zeta^10 - 
18*zeta^8 - 12*zeta^7 + 18*zeta^6 - 36*zeta^5 - 12*zeta^4 + 24*zeta^3 - 
36*zeta^2 - 18*zeta + 12)*q^278 + (90*zeta^11 - 108*zeta^10 + 36*zeta^8 - 
144*zeta^7 - 36*zeta^6 + 72*zeta^5 - 18*zeta^4 - 90*zeta^3 + 72*zeta^2 + 36*zeta
- 108)*q^279 + (20*zeta^11 - 24*zeta^10 + 8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 
16*zeta^5 - 4*zeta^4 - 20*zeta^3 + 16*zeta^2 + 8*zeta - 24)*q^281 + (96*zeta^11 
- 48*zeta^10 + 72*zeta^8 + 48*zeta^7 - 72*zeta^6 + 144*zeta^5 + 48*zeta^4 - 
96*zeta^3 + 144*zeta^2 + 72*zeta - 48)*q^282 + (-11*zeta^11 + 44*zeta^10 + 
11*zeta^8 - 44*zeta^7 - 11*zeta^6 + 22*zeta^5 + 33*zeta^4 + 11*zeta^3 + 
22*zeta^2 + 11*zeta - 33)*q^283 + (-12*zeta^11 + 48*zeta^10 + 12*zeta^8 - 
48*zeta^7 - 12*zeta^6 + 24*zeta^5 + 36*zeta^4 + 12*zeta^3 + 24*zeta^2 + 12*zeta 
- 36)*q^284 + (16*zeta^11 - 8*zeta^10 + 12*zeta^8 + 8*zeta^7 - 12*zeta^6 + 
24*zeta^5 + 8*zeta^4 - 16*zeta^3 + 24*zeta^2 + 12*zeta - 8)*q^285 + (20*zeta^11 
- 24*zeta^10 + 8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 - 4*zeta^4 - 
20*zeta^3 + 16*zeta^2 + 8*zeta - 24)*q^286 + (210*zeta^11 - 140*zeta^10 + 
140*zeta^8 - 140*zeta^7 - 140*zeta^6 + 280*zeta^5 + 70*zeta^4 - 210*zeta^3 + 
280*zeta^2 + 140*zeta - 210)*q^287 + (-80*zeta^11 + 96*zeta^10 - 32*zeta^8 + 
128*zeta^7 + 32*zeta^6 - 64*zeta^5 + 16*zeta^4 + 80*zeta^3 - 64*zeta^2 - 32*zeta
+ 96)*q^288 + (-68*zeta^11 + 34*zeta^10 - 51*zeta^8 - 34*zeta^7 + 51*zeta^6 - 
102*zeta^5 - 34*zeta^4 + 68*zeta^3 - 102*zeta^2 - 51*zeta + 34)*q^289 + 
(-16*zeta^11 + 64*zeta^10 + 16*zeta^8 - 64*zeta^7 - 16*zeta^6 + 32*zeta^5 + 
48*zeta^4 + 16*zeta^3 + 32*zeta^2 + 16*zeta - 48)*q^290 + (12*zeta^11 - 
48*zeta^10 - 12*zeta^8 + 48*zeta^7 + 12*zeta^6 - 24*zeta^5 - 36*zeta^4 - 
12*zeta^3 - 24*zeta^2 - 12*zeta + 36)*q^291 + (-24*zeta^11 + 12*zeta^10 - 
18*zeta^8 - 12*zeta^7 + 18*zeta^6 - 36*zeta^5 - 12*zeta^4 + 24*zeta^3 - 
36*zeta^2 - 18*zeta + 12)*q^292 + (-40*zeta^11 + 48*zeta^10 - 16*zeta^8 + 
64*zeta^7 + 16*zeta^6 - 32*zeta^5 + 8*zeta^4 + 40*zeta^3 - 32*zeta^2 - 16*zeta +
48)*q^293 + (-168*zeta^11 + 56*zeta^10 - 140*zeta^8 + 112*zeta^7 + 140*zeta^6 - 
280*zeta^5 - 112*zeta^4 + 168*zeta^3 - 280*zeta^2 - 140*zeta + 196)*q^294 + 
(-120*zeta^11 + 144*zeta^10 - 48*zeta^8 + 192*zeta^7 + 48*zeta^6 - 96*zeta^5 + 
24*zeta^4 + 120*zeta^3 - 96*zeta^2 - 48*zeta + 144)*q^295 + (4*zeta^11 - 
16*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 8*zeta^5 - 12*zeta^4 - 4*zeta^3 -
8*zeta^2 - 4*zeta + 12)*q^297 + (-24*zeta^11 + 96*zeta^10 + 24*zeta^8 - 
96*zeta^7 - 24*zeta^6 + 48*zeta^5 + 72*zeta^4 + 24*zeta^3 + 48*zeta^2 + 24*zeta 
- 72)*q^298 + (-20*zeta^11 + 24*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 
16*zeta^5 + 4*zeta^4 + 20*zeta^3 - 16*zeta^2 - 8*zeta + 24)*q^300 + 
(-105*zeta^11 + 70*zeta^10 - 70*zeta^8 + 70*zeta^7 + 70*zeta^6 - 140*zeta^5 - 
35*zeta^4 + 105*zeta^3 - 140*zeta^2 - 70*zeta + 105)*q^301 + (160*zeta^11 - 
192*zeta^10 + 64*zeta^8 - 256*zeta^7 - 64*zeta^6 + 128*zeta^5 - 32*zeta^4 - 
160*zeta^3 + 128*zeta^2 + 64*zeta - 192)*q^302 + (-16*zeta^11 + 8*zeta^10 - 
12*zeta^8 - 8*zeta^7 + 12*zeta^6 - 24*zeta^5 - 8*zeta^4 + 16*zeta^3 - 24*zeta^2 
- 12*zeta + 8)*q^303 + (-4*zeta^11 + 16*zeta^10 + 4*zeta^8 - 16*zeta^7 - 
4*zeta^6 + 8*zeta^5 + 12*zeta^4 + 4*zeta^3 + 8*zeta^2 + 4*zeta - 12)*q^304 + 
(-20*zeta^11 + 80*zeta^10 + 20*zeta^8 - 80*zeta^7 - 20*zeta^6 + 40*zeta^5 + 
60*zeta^4 + 20*zeta^3 + 40*zeta^2 + 20*zeta - 60)*q^305 + (85*zeta^11 - 
102*zeta^10 + 34*zeta^8 - 136*zeta^7 - 34*zeta^6 + 68*zeta^5 - 17*zeta^4 - 
85*zeta^3 + 68*zeta^2 + 34*zeta - 102)*q^307 + (-56*zeta^10 - 28*zeta^8 + 
28*zeta^6 - 56*zeta^5 - 56*zeta^4 - 56*zeta^2 - 28*zeta + 28)*q^308 + 
(-70*zeta^11 + 84*zeta^10 - 28*zeta^8 + 112*zeta^7 + 28*zeta^6 - 56*zeta^5 + 
14*zeta^4 + 70*zeta^3 - 56*zeta^2 - 28*zeta + 84)*q^309 + (-144*zeta^11 + 
72*zeta^10 - 108*zeta^8 - 72*zeta^7 + 108*zeta^6 - 216*zeta^5 - 72*zeta^4 + 
144*zeta^3 - 216*zeta^2 - 108*zeta + 72)*q^310 + (-6*zeta^11 + 24*zeta^10 + 
6*zeta^8 - 24*zeta^7 - 6*zeta^6 + 12*zeta^5 + 18*zeta^4 + 6*zeta^3 + 12*zeta^2 +
6*zeta - 18)*q^311 + (-4*zeta^11 + 2*zeta^10 - 3*zeta^8 - 2*zeta^7 + 3*zeta^6 - 
6*zeta^5 - 2*zeta^4 + 4*zeta^3 - 6*zeta^2 - 3*zeta + 2)*q^313 + (140*zeta^11 - 
168*zeta^10 + 56*zeta^8 - 224*zeta^7 - 56*zeta^6 + 112*zeta^5 - 28*zeta^4 - 
140*zeta^3 + 112*zeta^2 + 56*zeta - 168)*q^314 + (84*zeta^11 - 112*zeta^10 + 
28*zeta^8 - 56*zeta^7 - 28*zeta^6 + 56*zeta^5 - 28*zeta^4 - 84*zeta^3 + 
56*zeta^2 + 28*zeta - 56)*q^315 + (10*zeta^11 - 12*zeta^10 + 4*zeta^8 - 
16*zeta^7 - 4*zeta^6 + 8*zeta^5 - 2*zeta^4 - 10*zeta^3 + 8*zeta^2 + 4*zeta - 
12)*q^316 + (96*zeta^11 - 48*zeta^10 + 72*zeta^8 + 48*zeta^7 - 72*zeta^6 + 
144*zeta^5 + 48*zeta^4 - 96*zeta^3 + 144*zeta^2 + 72*zeta - 48)*q^317 + 
(-48*zeta^11 + 192*zeta^10 + 48*zeta^8 - 192*zeta^7 - 48*zeta^6 + 96*zeta^5 + 
144*zeta^4 + 48*zeta^3 + 96*zeta^2 + 48*zeta - 144)*q^318 + (-8*zeta^11 + 
32*zeta^10 + 8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 + 24*zeta^4 + 8*zeta^3 
+ 16*zeta^2 + 8*zeta - 24)*q^319 + (64*zeta^11 - 32*zeta^10 + 48*zeta^8 + 
32*zeta^7 - 48*zeta^6 + 96*zeta^5 + 32*zeta^4 - 64*zeta^3 + 96*zeta^2 + 48*zeta 
- 32)*q^320 + (-80*zeta^11 + 96*zeta^10 - 32*zeta^8 + 128*zeta^7 + 32*zeta^6 - 
64*zeta^5 + 16*zeta^4 + 80*zeta^3 - 64*zeta^2 - 32*zeta + 96)*q^321 + 
(-16*zeta^11 + 8*zeta^10 - 12*zeta^8 - 8*zeta^7 + 12*zeta^6 - 24*zeta^5 - 
8*zeta^4 + 16*zeta^3 - 24*zeta^2 - 12*zeta + 8)*q^324 + (-zeta^11 + 4*zeta^10 + 
zeta^8 - 4*zeta^7 - zeta^6 + 2*zeta^5 + 3*zeta^4 + zeta^3 + 2*zeta^2 + zeta - 
3)*q^325 + (8*zeta^11 - 32*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5
- 24*zeta^4 - 8*zeta^3 - 16*zeta^2 - 8*zeta + 24)*q^326 + (-72*zeta^11 + 
36*zeta^10 - 54*zeta^8 - 36*zeta^7 + 54*zeta^6 - 108*zeta^5 - 36*zeta^4 + 
72*zeta^3 - 108*zeta^2 - 54*zeta + 36)*q^327 + (-84*zeta^10 - 42*zeta^8 + 
42*zeta^6 - 84*zeta^5 - 84*zeta^4 - 84*zeta^2 - 42*zeta + 42)*q^329 + 
(80*zeta^11 - 96*zeta^10 + 32*zeta^8 - 128*zeta^7 - 32*zeta^6 + 64*zeta^5 - 
16*zeta^4 - 80*zeta^3 + 64*zeta^2 + 32*zeta - 96)*q^330 + (-100*zeta^11 + 
50*zeta^10 - 75*zeta^8 - 50*zeta^7 + 75*zeta^6 - 150*zeta^5 - 50*zeta^4 + 
100*zeta^3 - 150*zeta^2 - 75*zeta + 50)*q^331 + (12*zeta^11 - 48*zeta^10 - 
12*zeta^8 + 48*zeta^7 + 12*zeta^6 - 24*zeta^5 - 36*zeta^4 - 12*zeta^3 - 
24*zeta^2 - 12*zeta + 36)*q^332 + (-6*zeta^11 + 24*zeta^10 + 6*zeta^8 - 
24*zeta^7 - 6*zeta^6 + 12*zeta^5 + 18*zeta^4 + 6*zeta^3 + 12*zeta^2 + 6*zeta - 
18)*q^333 + (-112*zeta^11 + 56*zeta^10 - 84*zeta^8 - 56*zeta^7 + 84*zeta^6 - 
168*zeta^5 - 56*zeta^4 + 112*zeta^3 - 168*zeta^2 - 84*zeta + 56)*q^334 + 
(-50*zeta^11 + 60*zeta^10 - 20*zeta^8 + 80*zeta^7 + 20*zeta^6 - 40*zeta^5 + 
10*zeta^4 + 50*zeta^3 - 40*zeta^2 - 20*zeta + 60)*q^335 + (-168*zeta^11 + 
112*zeta^10 - 112*zeta^8 + 112*zeta^7 + 112*zeta^6 - 224*zeta^5 - 56*zeta^4 + 
168*zeta^3 - 224*zeta^2 - 112*zeta + 168)*q^336 + (-65*zeta^11 + 78*zeta^10 - 
26*zeta^8 + 104*zeta^7 + 26*zeta^6 - 52*zeta^5 + 13*zeta^4 + 65*zeta^3 - 
52*zeta^2 - 26*zeta + 78)*q^337 + (-96*zeta^11 + 48*zeta^10 - 72*zeta^8 - 
48*zeta^7 + 72*zeta^6 - 144*zeta^5 - 48*zeta^4 + 96*zeta^3 - 144*zeta^2 - 
72*zeta + 48)*q^338 + (-20*zeta^11 + 80*zeta^10 + 20*zeta^8 - 80*zeta^7 - 
20*zeta^6 + 40*zeta^5 + 60*zeta^4 + 20*zeta^3 + 40*zeta^2 + 20*zeta - 60)*q^339 
+ (-72*zeta^11 + 36*zeta^10 - 54*zeta^8 - 36*zeta^7 + 54*zeta^6 - 108*zeta^5 - 
36*zeta^4 + 72*zeta^3 - 108*zeta^2 - 54*zeta + 36)*q^341 + (20*zeta^11 - 
24*zeta^10 + 8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 - 4*zeta^4 - 20*zeta^3 
+ 16*zeta^2 + 8*zeta - 24)*q^342 + (-63*zeta^11 - 28*zeta^10 - 77*zeta^8 + 
42*zeta^7 + 77*zeta^6 - 154*zeta^5 - 91*zeta^4 + 63*zeta^3 - 154*zeta^2 - 
77*zeta + 98)*q^343 + (16*zeta^11 - 64*zeta^10 - 16*zeta^8 + 64*zeta^7 + 
16*zeta^6 - 32*zeta^5 - 48*zeta^4 - 16*zeta^3 - 32*zeta^2 - 16*zeta + 48)*q^346 
+ (32*zeta^11 - 128*zeta^10 - 32*zeta^8 + 128*zeta^7 + 32*zeta^6 - 64*zeta^5 - 
96*zeta^4 - 32*zeta^3 - 64*zeta^2 - 32*zeta + 96)*q^347 + (-64*zeta^11 + 
32*zeta^10 - 48*zeta^8 - 32*zeta^7 + 48*zeta^6 - 96*zeta^5 - 32*zeta^4 + 
64*zeta^3 - 96*zeta^2 - 48*zeta + 32)*q^348 + (70*zeta^11 - 84*zeta^10 + 
28*zeta^8 - 112*zeta^7 - 28*zeta^6 + 56*zeta^5 - 14*zeta^4 - 70*zeta^3 + 
56*zeta^2 + 28*zeta - 84)*q^349 + (42*zeta^11 - 28*zeta^10 + 28*zeta^8 - 
28*zeta^7 - 28*zeta^6 + 56*zeta^5 + 14*zeta^4 - 42*zeta^3 + 56*zeta^2 + 28*zeta 
- 42)*q^350 + (10*zeta^11 - 12*zeta^10 + 4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 
8*zeta^5 - 2*zeta^4 - 10*zeta^3 + 8*zeta^2 + 4*zeta - 12)*q^351 + (64*zeta^11 - 
32*zeta^10 + 48*zeta^8 + 32*zeta^7 - 48*zeta^6 + 96*zeta^5 + 32*zeta^4 - 
64*zeta^3 + 96*zeta^2 + 48*zeta - 32)*q^352 + (34*zeta^11 - 136*zeta^10 - 
34*zeta^8 + 136*zeta^7 + 34*zeta^6 - 68*zeta^5 - 102*zeta^4 - 34*zeta^3 - 
68*zeta^2 - 34*zeta + 102)*q^353 + (48*zeta^11 - 192*zeta^10 - 48*zeta^8 + 
192*zeta^7 + 48*zeta^6 - 96*zeta^5 - 144*zeta^4 - 48*zeta^3 - 96*zeta^2 - 
48*zeta + 144)*q^354 + (48*zeta^11 - 24*zeta^10 + 36*zeta^8 + 24*zeta^7 - 
36*zeta^6 + 72*zeta^5 + 24*zeta^4 - 48*zeta^3 + 72*zeta^2 + 36*zeta - 24)*q^355 
+ (-160*zeta^11 + 192*zeta^10 - 64*zeta^8 + 256*zeta^7 + 64*zeta^6 - 128*zeta^5 
+ 32*zeta^4 + 160*zeta^3 - 128*zeta^2 - 64*zeta + 192)*q^356 + (-20*zeta^11 + 
24*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 + 4*zeta^4 + 20*zeta^3 
- 16*zeta^2 - 8*zeta + 24)*q^358 + (80*zeta^11 - 40*zeta^10 + 60*zeta^8 + 
40*zeta^7 - 60*zeta^6 + 120*zeta^5 + 40*zeta^4 - 80*zeta^3 + 120*zeta^2 + 
60*zeta - 40)*q^359 + (-18*zeta^11 + 72*zeta^10 + 18*zeta^8 - 72*zeta^7 - 
18*zeta^6 + 36*zeta^5 + 54*zeta^4 + 18*zeta^3 + 36*zeta^2 + 18*zeta - 54)*q^361 
+ (104*zeta^11 - 52*zeta^10 + 78*zeta^8 + 52*zeta^7 - 78*zeta^6 + 156*zeta^5 + 
52*zeta^4 - 104*zeta^3 + 156*zeta^2 + 78*zeta - 52)*q^362 + (-70*zeta^11 + 
84*zeta^10 - 28*zeta^8 + 112*zeta^7 + 28*zeta^6 - 56*zeta^5 + 14*zeta^4 + 
70*zeta^3 - 56*zeta^2 - 28*zeta + 84)*q^363 + (42*zeta^11 - 56*zeta^10 + 
14*zeta^8 - 28*zeta^7 - 14*zeta^6 + 28*zeta^5 - 14*zeta^4 - 42*zeta^3 + 
28*zeta^2 + 14*zeta - 28)*q^364 + (-30*zeta^11 + 36*zeta^10 - 12*zeta^8 + 
48*zeta^7 + 12*zeta^6 - 24*zeta^5 + 6*zeta^4 + 30*zeta^3 - 24*zeta^2 - 12*zeta +
36)*q^365 + (-160*zeta^11 + 80*zeta^10 - 120*zeta^8 - 80*zeta^7 + 120*zeta^6 - 
240*zeta^5 - 80*zeta^4 + 160*zeta^3 - 240*zeta^2 - 120*zeta + 80)*q^366 + 
(-9*zeta^11 + 36*zeta^10 + 9*zeta^8 - 36*zeta^7 - 9*zeta^6 + 18*zeta^5 + 
27*zeta^4 + 9*zeta^3 + 18*zeta^2 + 9*zeta - 27)*q^367 + (80*zeta^11 - 40*zeta^10
+ 60*zeta^8 + 40*zeta^7 - 60*zeta^6 + 120*zeta^5 + 40*zeta^4 - 80*zeta^3 + 
120*zeta^2 + 60*zeta - 40)*q^369 + (60*zeta^11 - 72*zeta^10 + 24*zeta^8 - 
96*zeta^7 - 24*zeta^6 + 48*zeta^5 - 12*zeta^4 - 60*zeta^3 + 48*zeta^2 + 24*zeta 
- 72)*q^370 + (252*zeta^11 - 336*zeta^10 + 84*zeta^8 - 168*zeta^7 - 84*zeta^6 + 
168*zeta^5 - 84*zeta^4 - 252*zeta^3 + 168*zeta^2 + 84*zeta - 168)*q^371 + 
(180*zeta^11 - 216*zeta^10 + 72*zeta^8 - 288*zeta^7 - 72*zeta^6 + 144*zeta^5 - 
36*zeta^4 - 180*zeta^3 + 144*zeta^2 + 72*zeta - 216)*q^372 + (92*zeta^11 - 
46*zeta^10 + 69*zeta^8 + 46*zeta^7 - 69*zeta^6 + 138*zeta^5 + 46*zeta^4 - 
92*zeta^3 + 138*zeta^2 + 69*zeta - 46)*q^373 + (-24*zeta^11 + 96*zeta^10 + 
24*zeta^8 - 96*zeta^7 - 24*zeta^6 + 48*zeta^5 + 72*zeta^4 + 24*zeta^3 + 
48*zeta^2 + 24*zeta - 72)*q^375 + (-20*zeta^11 + 24*zeta^10 - 8*zeta^8 + 
32*zeta^7 + 8*zeta^6 - 16*zeta^5 + 4*zeta^4 + 20*zeta^3 - 16*zeta^2 - 8*zeta + 
24)*q^377 + (-56*zeta^10 - 28*zeta^8 + 28*zeta^6 - 56*zeta^5 - 56*zeta^4 - 
56*zeta^2 - 28*zeta + 28)*q^378 + (-15*zeta^11 + 18*zeta^10 - 6*zeta^8 + 
24*zeta^7 + 6*zeta^6 - 12*zeta^5 + 3*zeta^4 + 15*zeta^3 - 12*zeta^2 - 6*zeta + 
18)*q^379 + (-16*zeta^11 + 8*zeta^10 - 12*zeta^8 - 8*zeta^7 + 12*zeta^6 - 
24*zeta^5 - 8*zeta^4 + 16*zeta^3 - 24*zeta^2 - 12*zeta + 8)*q^380 + (30*zeta^11 
- 120*zeta^10 - 30*zeta^8 + 120*zeta^7 + 30*zeta^6 - 60*zeta^5 - 90*zeta^4 - 
30*zeta^3 - 60*zeta^2 - 30*zeta + 90)*q^381 + (20*zeta^11 - 80*zeta^10 - 
20*zeta^8 + 80*zeta^7 + 20*zeta^6 - 40*zeta^5 - 60*zeta^4 - 20*zeta^3 - 
40*zeta^2 - 20*zeta + 60)*q^382 + (-48*zeta^11 + 24*zeta^10 - 36*zeta^8 - 
24*zeta^7 + 36*zeta^6 - 72*zeta^5 - 24*zeta^4 + 48*zeta^3 - 72*zeta^2 - 36*zeta 
+ 24)*q^383 + (-84*zeta^11 + 56*zeta^10 - 56*zeta^8 + 56*zeta^7 + 56*zeta^6 - 
112*zeta^5 - 28*zeta^4 + 84*zeta^3 - 112*zeta^2 - 56*zeta + 84)*q^385 + 
(-110*zeta^11 + 132*zeta^10 - 44*zeta^8 + 176*zeta^7 + 44*zeta^6 - 88*zeta^5 + 
22*zeta^4 + 110*zeta^3 - 88*zeta^2 - 44*zeta + 132)*q^386 + (-40*zeta^11 + 
20*zeta^10 - 30*zeta^8 - 20*zeta^7 + 30*zeta^6 - 60*zeta^5 - 20*zeta^4 + 
40*zeta^3 - 60*zeta^2 - 30*zeta + 20)*q^387 + (-12*zeta^11 + 48*zeta^10 + 
12*zeta^8 - 48*zeta^7 - 12*zeta^6 + 24*zeta^5 + 36*zeta^4 + 12*zeta^3 + 
24*zeta^2 + 12*zeta - 36)*q^388 + (-6*zeta^11 + 24*zeta^10 + 6*zeta^8 - 
24*zeta^7 - 6*zeta^6 + 12*zeta^5 + 18*zeta^4 + 6*zeta^3 + 12*zeta^2 + 6*zeta - 
18)*q^389 + (32*zeta^11 - 16*zeta^10 + 24*zeta^8 + 16*zeta^7 - 24*zeta^6 + 
48*zeta^5 + 16*zeta^4 - 32*zeta^3 + 48*zeta^2 + 24*zeta - 16)*q^390 + 
(-140*zeta^11 + 168*zeta^10 - 56*zeta^8 + 224*zeta^7 + 56*zeta^6 - 112*zeta^5 + 
28*zeta^4 + 140*zeta^3 - 112*zeta^2 - 56*zeta + 168)*q^393 + (128*zeta^11 - 
64*zeta^10 + 96*zeta^8 + 64*zeta^7 - 96*zeta^6 + 192*zeta^5 + 64*zeta^4 - 
128*zeta^3 + 192*zeta^2 + 96*zeta - 64)*q^394 + (2*zeta^11 - 8*zeta^10 - 
2*zeta^8 + 8*zeta^7 + 2*zeta^6 - 4*zeta^5 - 6*zeta^4 - 2*zeta^3 - 4*zeta^2 - 
2*zeta + 6)*q^395 + (8*zeta^11 - 32*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 
16*zeta^5 - 24*zeta^4 - 8*zeta^3 - 16*zeta^2 - 8*zeta + 24)*q^396 + (-36*zeta^11
+ 18*zeta^10 - 27*zeta^8 - 18*zeta^7 + 27*zeta^6 - 54*zeta^5 - 18*zeta^4 + 
36*zeta^3 - 54*zeta^2 - 27*zeta + 18)*q^397 + (42*zeta^11 - 28*zeta^10 + 
28*zeta^8 - 28*zeta^7 - 28*zeta^6 + 56*zeta^5 + 14*zeta^4 - 42*zeta^3 + 
56*zeta^2 + 28*zeta - 42)*q^399 + (-20*zeta^11 + 24*zeta^10 - 8*zeta^8 + 
32*zeta^7 + 8*zeta^6 - 16*zeta^5 + 4*zeta^4 + 20*zeta^3 - 16*zeta^2 - 8*zeta + 
24)*q^400 + (-144*zeta^11 + 72*zeta^10 - 108*zeta^8 - 72*zeta^7 + 108*zeta^6 - 
216*zeta^5 - 72*zeta^4 + 144*zeta^3 - 216*zeta^2 - 108*zeta + 72)*q^401 + 
(20*zeta^11 - 80*zeta^10 - 20*zeta^8 + 80*zeta^7 + 20*zeta^6 - 40*zeta^5 - 
60*zeta^4 - 20*zeta^3 - 40*zeta^2 - 20*zeta + 60)*q^402 + (9*zeta^11 - 
36*zeta^10 - 9*zeta^8 + 36*zeta^7 + 9*zeta^6 - 18*zeta^5 - 27*zeta^4 - 9*zeta^3 
- 18*zeta^2 - 9*zeta + 27)*q^403 + (16*zeta^11 - 8*zeta^10 + 12*zeta^8 + 
8*zeta^7 - 12*zeta^6 + 24*zeta^5 + 8*zeta^4 - 16*zeta^3 + 24*zeta^2 + 12*zeta - 
8)*q^404 + (-20*zeta^11 + 24*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 
16*zeta^5 + 4*zeta^4 + 20*zeta^3 - 16*zeta^2 - 8*zeta + 24)*q^405 + (112*zeta^10
+ 56*zeta^8 - 56*zeta^6 + 112*zeta^5 + 112*zeta^4 + 112*zeta^2 + 56*zeta - 
56)*q^406 + (30*zeta^11 - 36*zeta^10 + 12*zeta^8 - 48*zeta^7 - 12*zeta^6 + 
24*zeta^5 - 6*zeta^4 - 30*zeta^3 + 24*zeta^2 + 12*zeta - 36)*q^407 + (5*zeta^11 
- 20*zeta^10 - 5*zeta^8 + 20*zeta^7 + 5*zeta^6 - 10*zeta^5 - 15*zeta^4 - 
5*zeta^3 - 10*zeta^2 - 5*zeta + 15)*q^409 + (40*zeta^11 - 160*zeta^10 - 
40*zeta^8 + 160*zeta^7 + 40*zeta^6 - 80*zeta^5 - 120*zeta^4 - 40*zeta^3 - 
80*zeta^2 - 40*zeta + 120)*q^410 + (96*zeta^11 - 48*zeta^10 + 72*zeta^8 + 
48*zeta^7 - 72*zeta^6 + 144*zeta^5 + 48*zeta^4 - 96*zeta^3 + 144*zeta^2 + 
72*zeta - 48)*q^411 + (70*zeta^11 - 84*zeta^10 + 28*zeta^8 - 112*zeta^7 - 
28*zeta^6 + 56*zeta^5 - 14*zeta^4 - 70*zeta^3 + 56*zeta^2 + 28*zeta - 84)*q^412 
+ (-252*zeta^11 + 336*zeta^10 - 84*zeta^8 + 168*zeta^7 + 84*zeta^6 - 168*zeta^5 
+ 84*zeta^4 + 252*zeta^3 - 168*zeta^2 - 84*zeta + 168)*q^413 + (-48*zeta^11 + 
24*zeta^10 - 36*zeta^8 - 24*zeta^7 + 36*zeta^6 - 72*zeta^5 - 24*zeta^4 + 
48*zeta^3 - 72*zeta^2 - 36*zeta + 24)*q^415 + (-8*zeta^11 + 32*zeta^10 + 
8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 + 24*zeta^4 + 8*zeta^3 + 16*zeta^2 +
8*zeta - 24)*q^416 + (6*zeta^11 - 24*zeta^10 - 6*zeta^8 + 24*zeta^7 + 6*zeta^6 -
12*zeta^5 - 18*zeta^4 - 6*zeta^3 - 12*zeta^2 - 6*zeta + 18)*q^417 + (-16*zeta^11
+ 8*zeta^10 - 12*zeta^8 - 8*zeta^7 + 12*zeta^6 - 24*zeta^5 - 8*zeta^4 + 
16*zeta^3 - 24*zeta^2 - 12*zeta + 8)*q^418 + (-150*zeta^11 + 180*zeta^10 - 
60*zeta^8 + 240*zeta^7 + 60*zeta^6 - 120*zeta^5 + 30*zeta^4 + 150*zeta^3 - 
120*zeta^2 - 60*zeta + 180)*q^419 + (168*zeta^11 - 224*zeta^10 + 56*zeta^8 - 
112*zeta^7 - 56*zeta^6 + 112*zeta^5 - 56*zeta^4 - 168*zeta^3 + 112*zeta^2 + 
56*zeta - 112)*q^420 + (35*zeta^11 - 42*zeta^10 + 14*zeta^8 - 56*zeta^7 - 
14*zeta^6 + 28*zeta^5 - 7*zeta^4 - 35*zeta^3 + 28*zeta^2 + 14*zeta - 42)*q^421 +
(32*zeta^11 - 16*zeta^10 + 24*zeta^8 + 16*zeta^7 - 24*zeta^6 + 48*zeta^5 + 
16*zeta^4 - 32*zeta^3 + 48*zeta^2 + 24*zeta - 16)*q^422 + (12*zeta^11 - 
48*zeta^10 - 12*zeta^8 + 48*zeta^7 + 12*zeta^6 - 24*zeta^5 - 36*zeta^4 - 
12*zeta^3 - 24*zeta^2 - 12*zeta + 36)*q^423 + (-120*zeta^11 + 144*zeta^10 - 
48*zeta^8 + 192*zeta^7 + 48*zeta^6 - 96*zeta^5 + 24*zeta^4 + 120*zeta^3 - 
96*zeta^2 - 48*zeta + 144)*q^426 + (140*zeta^10 + 70*zeta^8 - 70*zeta^6 + 
140*zeta^5 + 140*zeta^4 + 140*zeta^2 + 70*zeta - 70)*q^427 + (80*zeta^11 - 
96*zeta^10 + 32*zeta^8 - 128*zeta^7 - 32*zeta^6 + 64*zeta^5 - 16*zeta^4 - 
80*zeta^3 + 64*zeta^2 + 32*zeta - 96)*q^428 + (16*zeta^11 - 8*zeta^10 + 
12*zeta^8 + 8*zeta^7 - 12*zeta^6 + 24*zeta^5 + 8*zeta^4 - 16*zeta^3 + 24*zeta^2 
+ 12*zeta - 8)*q^429 + (-20*zeta^11 + 80*zeta^10 + 20*zeta^8 - 80*zeta^7 - 
20*zeta^6 + 40*zeta^5 + 60*zeta^4 + 20*zeta^3 + 40*zeta^2 + 20*zeta - 60)*q^430 
+ (-18*zeta^11 + 72*zeta^10 + 18*zeta^8 - 72*zeta^7 - 18*zeta^6 + 36*zeta^5 + 
54*zeta^4 + 18*zeta^3 + 36*zeta^2 + 18*zeta - 54)*q^431 + (32*zeta^11 - 
16*zeta^10 + 24*zeta^8 + 16*zeta^7 - 24*zeta^6 + 48*zeta^5 + 16*zeta^4 - 
32*zeta^3 + 48*zeta^2 + 24*zeta - 16)*q^432 + (-155*zeta^11 + 186*zeta^10 - 
62*zeta^8 + 248*zeta^7 + 62*zeta^6 - 124*zeta^5 + 31*zeta^4 + 155*zeta^3 - 
124*zeta^2 - 62*zeta + 186)*q^433 + (-378*zeta^11 + 252*zeta^10 - 252*zeta^8 + 
252*zeta^7 + 252*zeta^6 - 504*zeta^5 - 126*zeta^4 + 378*zeta^3 - 504*zeta^2 - 
252*zeta + 378)*q^434 + (-80*zeta^11 + 96*zeta^10 - 32*zeta^8 + 128*zeta^7 + 
32*zeta^6 - 64*zeta^5 + 16*zeta^4 + 80*zeta^3 - 64*zeta^2 - 32*zeta + 96)*q^435 
+ (72*zeta^11 - 36*zeta^10 + 54*zeta^8 + 36*zeta^7 - 54*zeta^6 + 108*zeta^5 + 
36*zeta^4 - 72*zeta^3 + 108*zeta^2 + 54*zeta - 36)*q^436 + (12*zeta^11 - 
48*zeta^10 - 12*zeta^8 + 48*zeta^7 + 12*zeta^6 - 24*zeta^5 - 36*zeta^4 - 
12*zeta^3 - 24*zeta^2 - 12*zeta + 36)*q^438 + (-42*zeta^11 + 112*zeta^10 + 
14*zeta^8 + 28*zeta^7 - 14*zeta^6 + 28*zeta^5 + 70*zeta^4 + 42*zeta^3 + 
28*zeta^2 + 14*zeta)*q^441 + (48*zeta^11 - 24*zeta^10 + 36*zeta^8 + 24*zeta^7 - 
36*zeta^6 + 72*zeta^5 + 24*zeta^4 - 48*zeta^3 + 72*zeta^2 + 36*zeta - 24)*q^443 
+ (-12*zeta^11 + 48*zeta^10 + 12*zeta^8 - 48*zeta^7 - 12*zeta^6 + 24*zeta^5 + 
36*zeta^4 + 12*zeta^3 + 24*zeta^2 + 12*zeta - 36)*q^444 + (-32*zeta^11 + 
128*zeta^10 + 32*zeta^8 - 128*zeta^7 - 32*zeta^6 + 64*zeta^5 + 96*zeta^4 + 
32*zeta^3 + 64*zeta^2 + 32*zeta - 96)*q^445 + (128*zeta^11 - 64*zeta^10 + 
96*zeta^8 + 64*zeta^7 - 96*zeta^6 + 192*zeta^5 + 64*zeta^4 - 128*zeta^3 + 
192*zeta^2 + 96*zeta - 64)*q^446 + (-120*zeta^11 + 144*zeta^10 - 48*zeta^8 + 
192*zeta^7 + 48*zeta^6 - 96*zeta^5 + 24*zeta^4 + 120*zeta^3 - 96*zeta^2 - 
48*zeta + 144)*q^447 + (168*zeta^11 - 112*zeta^10 + 112*zeta^8 - 112*zeta^7 - 
112*zeta^6 + 224*zeta^5 + 56*zeta^4 - 168*zeta^3 + 224*zeta^2 + 112*zeta - 
168)*q^448 + (90*zeta^11 - 108*zeta^10 + 36*zeta^8 - 144*zeta^7 - 36*zeta^6 + 
72*zeta^5 - 18*zeta^4 - 90*zeta^3 + 72*zeta^2 + 36*zeta - 108)*q^449 + 
(16*zeta^11 - 8*zeta^10 + 12*zeta^8 + 8*zeta^7 - 12*zeta^6 + 24*zeta^5 + 
8*zeta^4 - 16*zeta^3 + 24*zeta^2 + 12*zeta - 8)*q^450 + (20*zeta^11 - 80*zeta^10
- 20*zeta^8 + 80*zeta^7 + 20*zeta^6 - 40*zeta^5 - 60*zeta^4 - 20*zeta^3 - 
40*zeta^2 - 20*zeta + 60)*q^451 + (20*zeta^11 - 80*zeta^10 - 20*zeta^8 + 
80*zeta^7 + 20*zeta^6 - 40*zeta^5 - 60*zeta^4 - 20*zeta^3 - 40*zeta^2 - 20*zeta 
+ 60)*q^452 + (128*zeta^11 - 64*zeta^10 + 96*zeta^8 + 64*zeta^7 - 96*zeta^6 + 
192*zeta^5 + 64*zeta^4 - 128*zeta^3 + 192*zeta^2 + 96*zeta - 64)*q^453 + 
(-180*zeta^11 + 216*zeta^10 - 72*zeta^8 + 288*zeta^7 + 72*zeta^6 - 144*zeta^5 + 
36*zeta^4 + 180*zeta^3 - 144*zeta^2 - 72*zeta + 216)*q^454 + (-28*zeta^10 - 
14*zeta^8 + 14*zeta^6 - 28*zeta^5 - 28*zeta^4 - 28*zeta^2 - 14*zeta + 14)*q^455 
+ (-44*zeta^11 + 22*zeta^10 - 33*zeta^8 - 22*zeta^7 + 33*zeta^6 - 66*zeta^5 - 
22*zeta^4 + 44*zeta^3 - 66*zeta^2 - 33*zeta + 22)*q^457 + (-38*zeta^11 + 
152*zeta^10 + 38*zeta^8 - 152*zeta^7 - 38*zeta^6 + 76*zeta^5 + 114*zeta^4 + 
38*zeta^3 + 76*zeta^2 + 38*zeta - 114)*q^458 + (-100*zeta^11 + 120*zeta^10 - 
40*zeta^8 + 160*zeta^7 + 40*zeta^6 - 80*zeta^5 + 20*zeta^4 + 100*zeta^3 - 
80*zeta^2 - 40*zeta + 120)*q^461 + (168*zeta^11 - 224*zeta^10 + 56*zeta^8 - 
112*zeta^7 - 56*zeta^6 + 112*zeta^5 - 56*zeta^4 - 168*zeta^3 + 112*zeta^2 + 
56*zeta - 112)*q^462 + (85*zeta^11 - 102*zeta^10 + 34*zeta^8 - 136*zeta^7 - 
34*zeta^6 + 68*zeta^5 - 17*zeta^4 - 85*zeta^3 + 68*zeta^2 + 34*zeta - 102)*q^463
+ (-64*zeta^11 + 32*zeta^10 - 48*zeta^8 - 32*zeta^7 + 48*zeta^6 - 96*zeta^5 - 
32*zeta^4 + 64*zeta^3 - 96*zeta^2 - 48*zeta + 32)*q^464 + (36*zeta^11 - 
144*zeta^10 - 36*zeta^8 + 144*zeta^7 + 36*zeta^6 - 72*zeta^5 - 108*zeta^4 - 
36*zeta^3 - 72*zeta^2 - 36*zeta + 108)*q^465 + (12*zeta^11 - 48*zeta^10 - 
12*zeta^8 + 48*zeta^7 + 12*zeta^6 - 24*zeta^5 - 36*zeta^4 - 12*zeta^3 - 
24*zeta^2 - 12*zeta + 36)*q^466 + (24*zeta^11 - 12*zeta^10 + 18*zeta^8 + 
12*zeta^7 - 18*zeta^6 + 36*zeta^5 + 12*zeta^4 - 24*zeta^3 + 36*zeta^2 + 18*zeta 
- 12)*q^467 + (20*zeta^11 - 24*zeta^10 + 8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 
16*zeta^5 - 4*zeta^4 - 20*zeta^3 + 16*zeta^2 + 8*zeta - 24)*q^468 + 
(-105*zeta^11 + 140*zeta^10 - 35*zeta^8 + 70*zeta^7 + 35*zeta^6 - 70*zeta^5 + 
35*zeta^4 + 105*zeta^3 - 70*zeta^2 - 35*zeta + 70)*q^469 + (-120*zeta^11 + 
144*zeta^10 - 48*zeta^8 + 192*zeta^7 + 48*zeta^6 - 96*zeta^5 + 24*zeta^4 + 
120*zeta^3 - 96*zeta^2 - 48*zeta + 144)*q^470 + (112*zeta^11 - 56*zeta^10 + 
84*zeta^8 + 56*zeta^7 - 84*zeta^6 + 168*zeta^5 + 56*zeta^4 - 112*zeta^3 + 
168*zeta^2 + 84*zeta - 56)*q^471 + (-10*zeta^11 + 40*zeta^10 + 10*zeta^8 - 
40*zeta^7 - 10*zeta^6 + 20*zeta^5 + 30*zeta^4 + 10*zeta^3 + 20*zeta^2 + 10*zeta 
- 30)*q^473 + (16*zeta^11 - 8*zeta^10 + 12*zeta^8 + 8*zeta^7 - 12*zeta^6 + 
24*zeta^5 + 8*zeta^4 - 16*zeta^3 + 24*zeta^2 + 12*zeta - 8)*q^474 + (5*zeta^11 -
6*zeta^10 + 2*zeta^8 - 8*zeta^7 - 2*zeta^6 + 4*zeta^5 - zeta^4 - 5*zeta^3 + 
4*zeta^2 + 2*zeta - 6)*q^475 + (120*zeta^11 - 144*zeta^10 + 48*zeta^8 - 
192*zeta^7 - 48*zeta^6 + 96*zeta^5 - 24*zeta^4 - 120*zeta^3 + 96*zeta^2 + 
48*zeta - 144)*q^477 + (48*zeta^11 - 24*zeta^10 + 36*zeta^8 + 24*zeta^7 - 
36*zeta^6 + 72*zeta^5 + 24*zeta^4 - 48*zeta^3 + 72*zeta^2 + 36*zeta - 24)*q^478 
+ (-28*zeta^11 + 112*zeta^10 + 28*zeta^8 - 112*zeta^7 - 28*zeta^6 + 56*zeta^5 + 
84*zeta^4 + 28*zeta^3 + 56*zeta^2 + 28*zeta - 84)*q^479 + (-32*zeta^11 + 
128*zeta^10 + 32*zeta^8 - 128*zeta^7 - 32*zeta^6 + 64*zeta^5 + 96*zeta^4 + 
32*zeta^3 + 64*zeta^2 + 32*zeta - 96)*q^480 + (12*zeta^11 - 6*zeta^10 + 9*zeta^8
+ 6*zeta^7 - 9*zeta^6 + 18*zeta^5 + 6*zeta^4 - 12*zeta^3 + 18*zeta^2 + 9*zeta - 
6)*q^481 + (-140*zeta^11 + 168*zeta^10 - 56*zeta^8 + 224*zeta^7 + 56*zeta^6 - 
112*zeta^5 + 28*zeta^4 + 140*zeta^3 - 112*zeta^2 - 56*zeta + 168)*q^482 + 
(70*zeta^11 - 84*zeta^10 + 28*zeta^8 - 112*zeta^7 - 28*zeta^6 + 56*zeta^5 - 
14*zeta^4 - 70*zeta^3 + 56*zeta^2 + 28*zeta - 84)*q^484 + (48*zeta^11 - 
24*zeta^10 + 36*zeta^8 + 24*zeta^7 - 36*zeta^6 + 72*zeta^5 + 24*zeta^4 - 
48*zeta^3 + 72*zeta^2 + 36*zeta - 24)*q^485 + (-4*zeta^11 + 16*zeta^10 + 
4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 8*zeta^5 + 12*zeta^4 + 4*zeta^3 + 8*zeta^2 + 
4*zeta - 12)*q^486 + (31*zeta^11 - 124*zeta^10 - 31*zeta^8 + 124*zeta^7 + 
31*zeta^6 - 62*zeta^5 - 93*zeta^4 - 31*zeta^3 - 62*zeta^2 - 31*zeta + 93)*q^487 
+ (40*zeta^11 - 48*zeta^10 + 16*zeta^8 - 64*zeta^7 - 16*zeta^6 + 32*zeta^5 - 
8*zeta^4 - 40*zeta^3 + 32*zeta^2 + 16*zeta - 48)*q^489 + (252*zeta^11 - 
280*zeta^10 + 112*zeta^8 - 168*zeta^7 - 112*zeta^6 + 224*zeta^5 - 28*zeta^4 - 
252*zeta^3 + 224*zeta^2 + 112*zeta - 196)*q^490 + (140*zeta^11 - 168*zeta^10 + 
56*zeta^8 - 224*zeta^7 - 56*zeta^6 + 112*zeta^5 - 28*zeta^4 - 140*zeta^3 + 
112*zeta^2 + 56*zeta - 168)*q^491 + (160*zeta^11 - 80*zeta^10 + 120*zeta^8 + 
80*zeta^7 - 120*zeta^6 + 240*zeta^5 + 80*zeta^4 - 160*zeta^3 + 240*zeta^2 + 
120*zeta - 80)*q^492 + (2*zeta^11 - 8*zeta^10 - 2*zeta^8 + 8*zeta^7 + 2*zeta^6 -
4*zeta^5 - 6*zeta^4 - 2*zeta^3 - 4*zeta^2 - 2*zeta + 6)*q^494 + (-32*zeta^11 + 
16*zeta^10 - 24*zeta^8 - 16*zeta^7 + 24*zeta^6 - 48*zeta^5 - 16*zeta^4 + 
32*zeta^3 - 48*zeta^2 - 24*zeta + 16)*q^495 + (180*zeta^11 - 216*zeta^10 + 
72*zeta^8 - 288*zeta^7 - 72*zeta^6 + 144*zeta^5 - 36*zeta^4 - 180*zeta^3 + 
144*zeta^2 + 72*zeta - 216)*q^496 + (126*zeta^11 - 84*zeta^10 + 84*zeta^8 - 
84*zeta^7 - 84*zeta^6 + 168*zeta^5 + 42*zeta^4 - 126*zeta^3 + 168*zeta^2 + 
84*zeta - 126)*q^497 + (120*zeta^11 - 144*zeta^10 + 48*zeta^8 - 192*zeta^7 - 
48*zeta^6 + 96*zeta^5 - 24*zeta^4 - 120*zeta^3 + 96*zeta^2 + 48*zeta - 
144)*q^498 + (148*zeta^11 - 74*zeta^10 + 111*zeta^8 + 74*zeta^7 - 111*zeta^6 + 
222*zeta^5 + 74*zeta^4 - 148*zeta^3 + 222*zeta^2 + 111*zeta - 74)*q^499 + 
(24*zeta^11 - 96*zeta^10 - 24*zeta^8 + 96*zeta^7 + 24*zeta^6 - 48*zeta^5 - 
72*zeta^4 - 24*zeta^3 - 48*zeta^2 - 24*zeta + 72)*q^500 + (28*zeta^11 - 
112*zeta^10 - 28*zeta^8 + 112*zeta^7 + 28*zeta^6 - 56*zeta^5 - 84*zeta^4 - 
28*zeta^3 - 56*zeta^2 - 28*zeta + 84)*q^501 + (-64*zeta^11 + 32*zeta^10 - 
48*zeta^8 - 32*zeta^7 + 48*zeta^6 - 96*zeta^5 - 32*zeta^4 + 64*zeta^3 - 
96*zeta^2 - 48*zeta + 32)*q^502 + (210*zeta^11 - 252*zeta^10 + 84*zeta^8 - 
336*zeta^7 - 84*zeta^6 + 168*zeta^5 - 42*zeta^4 - 210*zeta^3 + 168*zeta^2 + 
84*zeta - 252)*q^503 + (20*zeta^11 - 24*zeta^10 + 8*zeta^8 - 32*zeta^7 - 
8*zeta^6 + 16*zeta^5 - 4*zeta^4 - 20*zeta^3 + 16*zeta^2 + 8*zeta - 24)*q^505 + 
(24*zeta^11 - 96*zeta^10 - 24*zeta^8 + 96*zeta^7 + 24*zeta^6 - 48*zeta^5 - 
72*zeta^4 - 24*zeta^3 - 48*zeta^2 - 24*zeta + 72)*q^507 + (-30*zeta^11 + 
120*zeta^10 + 30*zeta^8 - 120*zeta^7 - 30*zeta^6 + 60*zeta^5 + 90*zeta^4 + 
30*zeta^3 + 60*zeta^2 + 30*zeta - 90)*q^508 + (8*zeta^11 - 4*zeta^10 + 6*zeta^8 
+ 4*zeta^7 - 6*zeta^6 + 12*zeta^5 + 4*zeta^4 - 8*zeta^3 + 12*zeta^2 + 6*zeta - 
4)*q^509 + (-63*zeta^11 + 84*zeta^10 - 21*zeta^8 + 42*zeta^7 + 21*zeta^6 - 
42*zeta^5 + 21*zeta^4 + 63*zeta^3 - 42*zeta^2 - 21*zeta + 42)*q^511 + 
(-160*zeta^11 + 192*zeta^10 - 64*zeta^8 + 256*zeta^7 + 64*zeta^6 - 128*zeta^5 + 
32*zeta^4 + 160*zeta^3 - 128*zeta^2 - 64*zeta + 192)*q^512 + (-8*zeta^11 + 
4*zeta^10 - 6*zeta^8 - 4*zeta^7 + 6*zeta^6 - 12*zeta^5 - 4*zeta^4 + 8*zeta^3 - 
12*zeta^2 - 6*zeta + 4)*q^513 + (52*zeta^11 - 208*zeta^10 - 52*zeta^8 + 
208*zeta^7 + 52*zeta^6 - 104*zeta^5 - 156*zeta^4 - 52*zeta^3 - 104*zeta^2 - 
52*zeta + 156)*q^514 + (14*zeta^11 - 56*zeta^10 - 14*zeta^8 + 56*zeta^7 + 
14*zeta^6 - 28*zeta^5 - 42*zeta^4 - 14*zeta^3 - 28*zeta^2 - 14*zeta + 42)*q^515 
+ (-80*zeta^11 + 40*zeta^10 - 60*zeta^8 - 40*zeta^7 + 60*zeta^6 - 120*zeta^5 - 
40*zeta^4 + 80*zeta^3 - 120*zeta^2 - 60*zeta + 40)*q^516 + (-60*zeta^11 + 
72*zeta^10 - 24*zeta^8 + 96*zeta^7 + 24*zeta^6 - 48*zeta^5 + 12*zeta^4 + 
60*zeta^3 - 48*zeta^2 - 24*zeta + 72)*q^517 + (126*zeta^11 - 168*zeta^10 + 
42*zeta^8 - 84*zeta^7 - 42*zeta^6 + 84*zeta^5 - 42*zeta^4 - 126*zeta^3 + 
84*zeta^2 + 42*zeta - 84)*q^518 + (80*zeta^11 - 96*zeta^10 + 32*zeta^8 - 
128*zeta^7 - 32*zeta^6 + 64*zeta^5 - 16*zeta^4 - 80*zeta^3 + 64*zeta^2 + 32*zeta
- 96)*q^519 + (12*zeta^11 - 48*zeta^10 - 12*zeta^8 + 48*zeta^7 + 12*zeta^6 - 
24*zeta^5 - 36*zeta^4 - 12*zeta^3 - 24*zeta^2 - 12*zeta + 36)*q^521 + 
(-16*zeta^11 + 64*zeta^10 + 16*zeta^8 - 64*zeta^7 - 16*zeta^6 + 32*zeta^5 + 
48*zeta^4 + 16*zeta^3 + 32*zeta^2 + 16*zeta - 48)*q^522 + (124*zeta^11 - 
62*zeta^10 + 93*zeta^8 + 62*zeta^7 - 93*zeta^6 + 186*zeta^5 + 62*zeta^4 - 
124*zeta^3 + 186*zeta^2 + 93*zeta - 62)*q^523 + (140*zeta^11 - 168*zeta^10 + 
56*zeta^8 - 224*zeta^7 - 56*zeta^6 + 112*zeta^5 - 28*zeta^4 - 140*zeta^3 + 
112*zeta^2 + 56*zeta - 168)*q^524 + (28*zeta^10 + 14*zeta^8 - 14*zeta^6 + 
28*zeta^5 + 28*zeta^4 + 28*zeta^2 + 14*zeta - 14)*q^525 + (-40*zeta^11 + 
48*zeta^10 - 16*zeta^8 + 64*zeta^7 + 16*zeta^6 - 32*zeta^5 + 8*zeta^4 + 
40*zeta^3 - 32*zeta^2 - 16*zeta + 48)*q^526 + (-16*zeta^11 + 64*zeta^10 + 
16*zeta^8 - 64*zeta^7 - 16*zeta^6 + 32*zeta^5 + 48*zeta^4 + 16*zeta^3 + 
32*zeta^2 + 16*zeta - 48)*q^528 + (-23*zeta^11 + 92*zeta^10 + 23*zeta^8 - 
92*zeta^7 - 23*zeta^6 + 46*zeta^5 + 69*zeta^4 + 23*zeta^3 + 46*zeta^2 + 23*zeta 
- 69)*q^529 + (-192*zeta^11 + 96*zeta^10 - 144*zeta^8 - 96*zeta^7 + 144*zeta^6 -
288*zeta^5 - 96*zeta^4 + 192*zeta^3 - 288*zeta^2 - 144*zeta + 96)*q^530 + 
(-120*zeta^11 + 144*zeta^10 - 48*zeta^8 + 192*zeta^7 + 48*zeta^6 - 96*zeta^5 + 
24*zeta^4 + 120*zeta^3 - 96*zeta^2 - 48*zeta + 144)*q^531 + (-42*zeta^11 + 
28*zeta^10 - 28*zeta^8 + 28*zeta^7 + 28*zeta^6 - 56*zeta^5 - 14*zeta^4 + 
42*zeta^3 - 56*zeta^2 - 28*zeta + 42)*q^532 + (50*zeta^11 - 60*zeta^10 + 
20*zeta^8 - 80*zeta^7 - 20*zeta^6 + 40*zeta^5 - 10*zeta^4 - 50*zeta^3 + 
40*zeta^2 + 20*zeta - 60)*q^533 + (-256*zeta^11 + 128*zeta^10 - 192*zeta^8 - 
128*zeta^7 + 192*zeta^6 - 384*zeta^5 - 128*zeta^4 + 256*zeta^3 - 384*zeta^2 - 
192*zeta + 128)*q^534 + (16*zeta^11 - 64*zeta^10 - 16*zeta^8 + 64*zeta^7 + 
16*zeta^6 - 32*zeta^5 - 48*zeta^4 - 16*zeta^3 - 32*zeta^2 - 16*zeta + 48)*q^535 
+ (-16*zeta^11 + 8*zeta^10 - 12*zeta^8 - 8*zeta^7 + 12*zeta^6 - 24*zeta^5 - 
8*zeta^4 + 16*zeta^3 - 24*zeta^2 - 12*zeta + 8)*q^537 + (-60*zeta^11 + 
72*zeta^10 - 24*zeta^8 + 96*zeta^7 + 24*zeta^6 - 48*zeta^5 + 12*zeta^4 + 
60*zeta^3 - 48*zeta^2 - 24*zeta + 72)*q^538 + (126*zeta^11 - 140*zeta^10 + 
56*zeta^8 - 84*zeta^7 - 56*zeta^6 + 112*zeta^5 - 14*zeta^4 - 126*zeta^3 + 
112*zeta^2 + 56*zeta - 98)*q^539 + (-40*zeta^11 + 48*zeta^10 - 16*zeta^8 + 
64*zeta^7 + 16*zeta^6 - 32*zeta^5 + 8*zeta^4 + 40*zeta^3 - 32*zeta^2 - 16*zeta +
48)*q^540 + (-76*zeta^11 + 38*zeta^10 - 57*zeta^8 - 38*zeta^7 + 57*zeta^6 - 
114*zeta^5 - 38*zeta^4 + 76*zeta^3 - 114*zeta^2 - 57*zeta + 38)*q^541 + 
(32*zeta^11 - 128*zeta^10 - 32*zeta^8 + 128*zeta^7 + 32*zeta^6 - 64*zeta^5 - 
96*zeta^4 - 32*zeta^3 - 64*zeta^2 - 32*zeta + 96)*q^542 + (-26*zeta^11 + 
104*zeta^10 + 26*zeta^8 - 104*zeta^7 - 26*zeta^6 + 52*zeta^5 + 78*zeta^4 + 
26*zeta^3 + 52*zeta^2 + 26*zeta - 78)*q^543 + (90*zeta^11 - 108*zeta^10 + 
36*zeta^8 - 144*zeta^7 - 36*zeta^6 + 72*zeta^5 - 18*zeta^4 - 90*zeta^3 + 
72*zeta^2 + 36*zeta - 108)*q^545 + (84*zeta^11 - 56*zeta^10 + 56*zeta^8 - 
56*zeta^7 - 56*zeta^6 + 112*zeta^5 + 28*zeta^4 - 84*zeta^3 + 112*zeta^2 + 
56*zeta - 84)*q^546 + (-140*zeta^11 + 168*zeta^10 - 56*zeta^8 + 224*zeta^7 + 
56*zeta^6 - 112*zeta^5 + 28*zeta^4 + 140*zeta^3 - 112*zeta^2 - 56*zeta + 
168)*q^547 + (-96*zeta^11 + 48*zeta^10 - 72*zeta^8 - 48*zeta^7 + 72*zeta^6 - 
144*zeta^5 - 48*zeta^4 + 96*zeta^3 - 144*zeta^2 - 72*zeta + 48)*q^548 + 
(-20*zeta^11 + 80*zeta^10 + 20*zeta^8 - 80*zeta^7 - 20*zeta^6 + 40*zeta^5 + 
60*zeta^4 + 20*zeta^3 + 40*zeta^2 + 20*zeta - 60)*q^549 + (4*zeta^11 - 
16*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 8*zeta^5 - 12*zeta^4 - 4*zeta^3 -
8*zeta^2 - 4*zeta + 12)*q^550 + (16*zeta^11 - 8*zeta^10 + 12*zeta^8 + 8*zeta^7 -
12*zeta^6 + 24*zeta^5 + 8*zeta^4 - 16*zeta^3 + 24*zeta^2 + 12*zeta - 8)*q^551 + 
(-14*zeta^10 - 7*zeta^8 + 7*zeta^6 - 14*zeta^5 - 14*zeta^4 - 14*zeta^2 - 7*zeta 
+ 7)*q^553 + (-130*zeta^11 + 156*zeta^10 - 52*zeta^8 + 208*zeta^7 + 52*zeta^6 - 
104*zeta^5 + 26*zeta^4 + 130*zeta^3 - 104*zeta^2 - 52*zeta + 156)*q^554 + 
(48*zeta^11 - 24*zeta^10 + 36*zeta^8 + 24*zeta^7 - 36*zeta^6 + 72*zeta^5 + 
24*zeta^4 - 48*zeta^3 + 72*zeta^2 + 36*zeta - 24)*q^555 + (-6*zeta^11 + 
24*zeta^10 + 6*zeta^8 - 24*zeta^7 - 6*zeta^6 + 12*zeta^5 + 18*zeta^4 + 6*zeta^3 
+ 12*zeta^2 + 6*zeta - 18)*q^556 + (-2*zeta^11 + 8*zeta^10 + 2*zeta^8 - 8*zeta^7
- 2*zeta^6 + 4*zeta^5 + 6*zeta^4 + 2*zeta^3 + 4*zeta^2 + 2*zeta - 6)*q^557 + 
(-144*zeta^11 + 72*zeta^10 - 108*zeta^8 - 72*zeta^7 + 108*zeta^6 - 216*zeta^5 - 
72*zeta^4 + 144*zeta^3 - 216*zeta^2 - 108*zeta + 72)*q^558 + (-25*zeta^11 + 
30*zeta^10 - 10*zeta^8 + 40*zeta^7 + 10*zeta^6 - 20*zeta^5 + 5*zeta^4 + 
25*zeta^3 - 20*zeta^2 - 10*zeta + 30)*q^559 + (168*zeta^11 - 224*zeta^10 + 
56*zeta^8 - 112*zeta^7 - 56*zeta^6 + 112*zeta^5 - 56*zeta^4 - 168*zeta^3 + 
112*zeta^2 + 56*zeta - 112)*q^560 + (-32*zeta^11 + 16*zeta^10 - 24*zeta^8 - 
16*zeta^7 + 24*zeta^6 - 48*zeta^5 - 16*zeta^4 + 32*zeta^3 - 48*zeta^2 - 24*zeta 
+ 16)*q^562 + (-26*zeta^11 + 104*zeta^10 + 26*zeta^8 - 104*zeta^7 - 26*zeta^6 + 
52*zeta^5 + 78*zeta^4 + 26*zeta^3 + 52*zeta^2 + 26*zeta - 78)*q^563 + 
(24*zeta^11 - 96*zeta^10 - 24*zeta^8 + 96*zeta^7 + 24*zeta^6 - 48*zeta^5 - 
72*zeta^4 - 24*zeta^3 - 48*zeta^2 - 24*zeta + 72)*q^564 + (-80*zeta^11 + 
40*zeta^10 - 60*zeta^8 - 40*zeta^7 + 60*zeta^6 - 120*zeta^5 - 40*zeta^4 + 
80*zeta^3 - 120*zeta^2 - 60*zeta + 40)*q^565 + (110*zeta^11 - 132*zeta^10 + 
44*zeta^8 - 176*zeta^7 - 44*zeta^6 + 88*zeta^5 - 22*zeta^4 - 110*zeta^3 + 
88*zeta^2 + 44*zeta - 132)*q^566 + (-42*zeta^11 + 56*zeta^10 - 14*zeta^8 + 
28*zeta^7 + 14*zeta^6 - 28*zeta^5 + 14*zeta^4 + 42*zeta^3 - 28*zeta^2 - 14*zeta 
+ 28)*q^567 + (-104*zeta^11 + 52*zeta^10 - 78*zeta^8 - 52*zeta^7 + 78*zeta^6 - 
156*zeta^5 - 52*zeta^4 + 104*zeta^3 - 156*zeta^2 - 78*zeta + 52)*q^569 + 
(8*zeta^11 - 32*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 - 
24*zeta^4 - 8*zeta^3 - 16*zeta^2 - 8*zeta + 24)*q^570 + (-19*zeta^11 + 
76*zeta^10 + 19*zeta^8 - 76*zeta^7 - 19*zeta^6 + 38*zeta^5 + 57*zeta^4 + 
19*zeta^3 + 38*zeta^2 + 19*zeta - 57)*q^571 + (-16*zeta^11 + 8*zeta^10 - 
12*zeta^8 - 8*zeta^7 + 12*zeta^6 - 24*zeta^5 - 8*zeta^4 + 16*zeta^3 - 24*zeta^2 
- 12*zeta + 8)*q^572 + (100*zeta^11 - 120*zeta^10 + 40*zeta^8 - 160*zeta^7 - 
40*zeta^6 + 80*zeta^5 - 20*zeta^4 - 100*zeta^3 + 80*zeta^2 + 40*zeta - 
120)*q^573 + (-280*zeta^10 - 140*zeta^8 + 140*zeta^6 - 280*zeta^5 - 280*zeta^4 -
280*zeta^2 - 140*zeta + 140)*q^574 + (64*zeta^11 - 32*zeta^10 + 48*zeta^8 + 
32*zeta^7 - 48*zeta^6 + 96*zeta^5 + 32*zeta^4 - 64*zeta^3 + 96*zeta^2 + 48*zeta 
- 32)*q^576 + (-17*zeta^11 + 68*zeta^10 + 17*zeta^8 - 68*zeta^7 - 17*zeta^6 + 
34*zeta^5 + 51*zeta^4 + 17*zeta^3 + 34*zeta^2 + 17*zeta - 51)*q^577 + 
(-34*zeta^11 + 136*zeta^10 + 34*zeta^8 - 136*zeta^7 - 34*zeta^6 + 68*zeta^5 + 
102*zeta^4 + 34*zeta^3 + 68*zeta^2 + 34*zeta - 102)*q^578 + (-88*zeta^11 + 
44*zeta^10 - 66*zeta^8 - 44*zeta^7 + 66*zeta^6 - 132*zeta^5 - 44*zeta^4 + 
88*zeta^3 - 132*zeta^2 - 66*zeta + 44)*q^579 + (80*zeta^11 - 96*zeta^10 + 
32*zeta^8 - 128*zeta^7 - 32*zeta^6 + 64*zeta^5 - 16*zeta^4 - 80*zeta^3 + 
64*zeta^2 + 32*zeta - 96)*q^580 + (-126*zeta^11 + 84*zeta^10 - 84*zeta^8 + 
84*zeta^7 + 84*zeta^6 - 168*zeta^5 - 42*zeta^4 + 126*zeta^3 - 168*zeta^2 - 
84*zeta + 126)*q^581 + (-120*zeta^11 + 144*zeta^10 - 48*zeta^8 + 192*zeta^7 + 
48*zeta^6 - 96*zeta^5 + 24*zeta^4 + 120*zeta^3 - 96*zeta^2 - 48*zeta + 
144)*q^582 + (-96*zeta^11 + 48*zeta^10 - 72*zeta^8 - 48*zeta^7 + 72*zeta^6 - 
144*zeta^5 - 48*zeta^4 + 96*zeta^3 - 144*zeta^2 - 72*zeta + 48)*q^583 + 
(4*zeta^11 - 16*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 8*zeta^5 - 12*zeta^4
- 4*zeta^3 - 8*zeta^2 - 4*zeta + 12)*q^585 + (64*zeta^11 - 32*zeta^10 + 
48*zeta^8 + 32*zeta^7 - 48*zeta^6 + 96*zeta^5 + 32*zeta^4 - 64*zeta^3 + 
96*zeta^2 + 48*zeta - 32)*q^586 + (-80*zeta^11 + 96*zeta^10 - 32*zeta^8 + 
128*zeta^7 + 32*zeta^6 - 64*zeta^5 + 16*zeta^4 + 80*zeta^3 - 64*zeta^2 - 32*zeta
+ 96)*q^587 + (-84*zeta^11 + 224*zeta^10 + 28*zeta^8 + 56*zeta^7 - 28*zeta^6 + 
56*zeta^5 + 140*zeta^4 + 84*zeta^3 + 56*zeta^2 + 28*zeta)*q^588 + (-45*zeta^11 +
54*zeta^10 - 18*zeta^8 + 72*zeta^7 + 18*zeta^6 - 36*zeta^5 + 9*zeta^4 + 
45*zeta^3 - 36*zeta^2 - 18*zeta + 54)*q^589 + (192*zeta^11 - 96*zeta^10 + 
144*zeta^8 + 96*zeta^7 - 144*zeta^6 + 288*zeta^5 + 96*zeta^4 - 192*zeta^3 + 
288*zeta^2 + 144*zeta - 96)*q^590 + (-32*zeta^11 + 128*zeta^10 + 32*zeta^8 - 
128*zeta^7 - 32*zeta^6 + 64*zeta^5 + 96*zeta^4 + 32*zeta^3 + 64*zeta^2 + 32*zeta
- 96)*q^591 + (-12*zeta^11 + 48*zeta^10 + 12*zeta^8 - 48*zeta^7 - 12*zeta^6 + 
24*zeta^5 + 36*zeta^4 + 12*zeta^3 + 24*zeta^2 + 12*zeta - 36)*q^592 + 
(-24*zeta^11 + 12*zeta^10 - 18*zeta^8 - 12*zeta^7 + 18*zeta^6 - 36*zeta^5 - 
12*zeta^4 + 24*zeta^3 - 36*zeta^2 - 18*zeta + 12)*q^593 + (-40*zeta^11 + 
48*zeta^10 - 16*zeta^8 + 64*zeta^7 + 16*zeta^6 - 32*zeta^5 + 8*zeta^4 + 
40*zeta^3 - 32*zeta^2 - 16*zeta + 48)*q^594 + (120*zeta^11 - 144*zeta^10 + 
48*zeta^8 - 192*zeta^7 - 48*zeta^6 + 96*zeta^5 - 24*zeta^4 - 120*zeta^3 + 
96*zeta^2 + 48*zeta - 144)*q^596 + (12*zeta^11 - 48*zeta^10 - 12*zeta^8 + 
48*zeta^7 + 12*zeta^6 - 24*zeta^5 - 36*zeta^4 - 12*zeta^3 - 24*zeta^2 - 12*zeta 
+ 36)*q^599 + (45*zeta^11 - 54*zeta^10 + 18*zeta^8 - 72*zeta^7 - 18*zeta^6 + 
36*zeta^5 - 9*zeta^4 - 45*zeta^3 + 36*zeta^2 + 18*zeta - 54)*q^601 + 
(140*zeta^10 + 70*zeta^8 - 70*zeta^6 + 140*zeta^5 + 140*zeta^4 + 140*zeta^2 + 
70*zeta - 70)*q^602 + (-50*zeta^11 + 60*zeta^10 - 20*zeta^8 + 80*zeta^7 + 
20*zeta^6 - 40*zeta^5 + 10*zeta^4 + 50*zeta^3 - 40*zeta^2 - 20*zeta + 60)*q^603 
+ (-128*zeta^11 + 64*zeta^10 - 96*zeta^8 - 64*zeta^7 + 96*zeta^6 - 192*zeta^5 - 
64*zeta^4 + 128*zeta^3 - 192*zeta^2 - 96*zeta + 64)*q^604 + (14*zeta^11 - 
56*zeta^10 - 14*zeta^8 + 56*zeta^7 + 14*zeta^6 - 28*zeta^5 - 42*zeta^4 - 
14*zeta^3 - 28*zeta^2 - 14*zeta + 42)*q^605 + (-8*zeta^11 + 32*zeta^10 + 
8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 + 24*zeta^4 + 8*zeta^3 + 16*zeta^2 +
8*zeta - 24)*q^606 + (92*zeta^11 - 46*zeta^10 + 69*zeta^8 + 46*zeta^7 - 
69*zeta^6 + 138*zeta^5 + 46*zeta^4 - 92*zeta^3 + 138*zeta^2 + 69*zeta - 
46)*q^607 + (40*zeta^11 - 48*zeta^10 + 16*zeta^8 - 64*zeta^7 - 16*zeta^6 + 
32*zeta^5 - 8*zeta^4 - 40*zeta^3 + 32*zeta^2 + 16*zeta - 48)*q^608 + O(q^609), 
(zeta^11 - 2*zeta^10 + 2*zeta^7 - zeta^4 - zeta^3 + 1)*q + (2*zeta^10 + zeta^8 -
4*zeta^7 - zeta^6 + 2*zeta^5 + 2*zeta^4 + 2*zeta^2 + zeta - 3)*q^2 + (2*zeta^11 
+ 2*zeta^8 + 4*zeta^7 - 2*zeta^6 + 4*zeta^5 + 2*zeta^4 - 2*zeta^3 + 4*zeta^2 + 
2*zeta)*q^3 + (-7*zeta^11 + 8*zeta^10 - 3*zeta^8 + 10*zeta^7 + 3*zeta^6 - 
6*zeta^5 + zeta^4 + 7*zeta^3 - 6*zeta^2 - 3*zeta + 8)*q^4 + (6*zeta^11 - 
8*zeta^10 + 2*zeta^8 - 8*zeta^7 - 2*zeta^6 + 4*zeta^5 - 2*zeta^4 - 6*zeta^3 + 
4*zeta^2 + 2*zeta - 6)*q^5 + (-6*zeta^11 + 4*zeta^10 - 4*zeta^8 - 4*zeta^7 + 
4*zeta^6 - 8*zeta^5 - 2*zeta^4 + 6*zeta^3 - 8*zeta^2 - 4*zeta + 2)*q^6 + 
(-5*zeta^11 + 6*zeta^10 - 2*zeta^8 - 6*zeta^7 + 2*zeta^6 - 4*zeta^5 + zeta^4 + 
5*zeta^3 - 4*zeta^2 - 2*zeta - 1)*q^8 + (4*zeta^11 - 4*zeta^10 + 2*zeta^8 - 
8*zeta^7 - 2*zeta^6 + 4*zeta^5 - 4*zeta^3 + 4*zeta^2 + 2*zeta - 6)*q^9 + 
(-4*zeta^11 + 4*zeta^10 - 2*zeta^8 + 4*zeta^7 + 2*zeta^6 - 4*zeta^5 + 4*zeta^3 -
4*zeta^2 - 2*zeta + 4)*q^10 + (-2*zeta^11 - 2*zeta^8 - 4*zeta^7 + 2*zeta^6 - 
4*zeta^5 - 2*zeta^4 + 2*zeta^3 - 4*zeta^2 - 2*zeta)*q^11 + (4*zeta^11 - 
12*zeta^10 - 2*zeta^8 + 8*zeta^7 + 2*zeta^6 - 4*zeta^5 - 8*zeta^4 - 4*zeta^3 - 
4*zeta^2 - 2*zeta + 6)*q^12 + (-6*zeta^11 + 8*zeta^10 - 2*zeta^8 - 8*zeta^7 + 
2*zeta^6 - 4*zeta^5 + 2*zeta^4 + 6*zeta^3 - 4*zeta^2 - 2*zeta - 2)*q^13 + 
(8*zeta^10 + 4*zeta^8 - 8*zeta^7 - 4*zeta^6 + 8*zeta^5 + 8*zeta^4 + 8*zeta^2 + 
4*zeta - 8)*q^15 + (-6*zeta^11 + 6*zeta^10 - 3*zeta^8 + 12*zeta^7 + 3*zeta^6 - 
6*zeta^5 + 6*zeta^3 - 6*zeta^2 - 3*zeta + 9)*q^16 + (10*zeta^11 - 12*zeta^10 + 
4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 8*zeta^5 - 2*zeta^4 - 10*zeta^3 + 8*zeta^2 + 
4*zeta - 12)*q^17 + (-6*zeta^11 + 8*zeta^10 - 2*zeta^8 + 12*zeta^7 + 2*zeta^6 - 
4*zeta^5 + 2*zeta^4 + 6*zeta^3 - 4*zeta^2 - 2*zeta + 8)*q^18 + (-4*zeta^11 + 
8*zeta^10 + 4*zeta^4 + 4*zeta^3)*q^19 + (-4*zeta^11 - 4*zeta^10 - 6*zeta^8 + 
4*zeta^7 + 6*zeta^6 - 12*zeta^5 - 8*zeta^4 + 4*zeta^3 - 12*zeta^2 - 6*zeta + 
8)*q^20 + (6*zeta^11 - 4*zeta^10 + 4*zeta^8 + 4*zeta^7 - 4*zeta^6 + 8*zeta^5 + 
2*zeta^4 - 6*zeta^3 + 8*zeta^2 + 4*zeta - 2)*q^22 + (12*zeta^11 - 20*zeta^10 + 
2*zeta^8 - 8*zeta^7 - 2*zeta^6 + 4*zeta^5 - 8*zeta^4 - 12*zeta^3 + 4*zeta^2 + 
2*zeta - 6)*q^23 + (2*zeta^11 - 8*zeta^10 - 2*zeta^8 - 20*zeta^7 + 2*zeta^6 - 
4*zeta^5 - 6*zeta^4 - 2*zeta^3 - 4*zeta^2 - 2*zeta - 8)*q^24 + (17*zeta^11 - 
16*zeta^10 + 9*zeta^8 - 14*zeta^7 - 9*zeta^6 + 18*zeta^5 + zeta^4 - 17*zeta^3 + 
18*zeta^2 + 9*zeta - 16)*q^25 + (-2*zeta^11 - 8*zeta^10 - 6*zeta^8 + 24*zeta^7 +
6*zeta^6 - 12*zeta^5 - 10*zeta^4 + 2*zeta^3 - 12*zeta^2 - 6*zeta + 18)*q^26 + 
(2*zeta^11 - 4*zeta^10 + 4*zeta^7 - 2*zeta^4 - 2*zeta^3 + 2)*q^27 + (8*zeta^10 +
4*zeta^8 - 8*zeta^7 - 4*zeta^6 + 8*zeta^5 + 8*zeta^4 + 8*zeta^2 + 4*zeta - 
8)*q^29 + (4*zeta^11 - 8*zeta^10 - 4*zeta^4 - 4*zeta^3)*q^30 + (-4*zeta^11 + 
8*zeta^10 + 16*zeta^7 + 4*zeta^4 + 4*zeta^3 + 8)*q^31 + (7*zeta^11 - 4*zeta^10 +
5*zeta^8 + 2*zeta^7 - 5*zeta^6 + 10*zeta^5 + 3*zeta^4 - 7*zeta^3 + 10*zeta^2 + 
5*zeta - 4)*q^32 + (8*zeta^11 - 8*zeta^10 + 4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 
8*zeta^5 - 8*zeta^3 + 8*zeta^2 + 4*zeta - 12)*q^33 + (18*zeta^11 - 16*zeta^10 + 
10*zeta^8 + 16*zeta^7 - 10*zeta^6 + 20*zeta^5 + 2*zeta^4 - 18*zeta^3 + 20*zeta^2
+ 10*zeta - 2)*q^34 + (-10*zeta^11 + 4*zeta^10 - 8*zeta^8 - 4*zeta^7 + 8*zeta^6 
- 16*zeta^5 - 6*zeta^4 + 10*zeta^3 - 16*zeta^2 - 8*zeta + 6)*q^36 + (8*zeta^11 -
8*zeta^10 + 4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 8*zeta^5 - 8*zeta^3 + 8*zeta^2 + 
4*zeta - 12)*q^37 + (-4*zeta^11 + 8*zeta^10 + 16*zeta^7 + 4*zeta^4 + 4*zeta^3 + 
8)*q^38 + (-8*zeta^10 - 4*zeta^8 - 24*zeta^7 + 4*zeta^6 - 8*zeta^5 - 8*zeta^4 - 
8*zeta^2 - 4*zeta - 8)*q^39 + (-10*zeta^11 + 12*zeta^10 - 4*zeta^8 + 16*zeta^7 +
4*zeta^6 - 8*zeta^5 + 2*zeta^4 + 10*zeta^3 - 8*zeta^2 - 4*zeta + 12)*q^40 + 
(4*zeta^11 + 4*zeta^10 + 6*zeta^8 - 4*zeta^7 - 6*zeta^6 + 12*zeta^5 + 8*zeta^4 -
4*zeta^3 + 12*zeta^2 + 6*zeta - 8)*q^41 + (-8*zeta^11 - 8*zeta^8 + 8*zeta^6 - 
16*zeta^5 - 8*zeta^4 + 8*zeta^3 - 16*zeta^2 - 8*zeta + 8)*q^43 + (-4*zeta^11 + 
12*zeta^10 + 2*zeta^8 - 8*zeta^7 - 2*zeta^6 + 4*zeta^5 + 8*zeta^4 + 4*zeta^3 + 
4*zeta^2 + 2*zeta - 6)*q^44 + (12*zeta^11 - 8*zeta^10 + 8*zeta^8 - 8*zeta^6 + 
16*zeta^5 + 4*zeta^4 - 12*zeta^3 + 16*zeta^2 + 8*zeta - 8)*q^45 + (2*zeta^11 - 
8*zeta^10 - 2*zeta^8 - 20*zeta^7 + 2*zeta^6 - 4*zeta^5 - 6*zeta^4 - 2*zeta^3 - 
4*zeta^2 - 2*zeta - 8)*q^46 + (-4*zeta^11 + 8*zeta^10 + 4*zeta^4 + 
4*zeta^3)*q^47 + (6*zeta^11 - 12*zeta^10 + 12*zeta^7 - 6*zeta^4 - 6*zeta^3 + 
6)*q^48 + (13*zeta^11 - 14*zeta^10 + 6*zeta^8 + 14*zeta^7 - 6*zeta^6 + 12*zeta^5
- zeta^4 - 13*zeta^3 + 12*zeta^2 + 6*zeta + 1)*q^50 + (-4*zeta^11 + 16*zeta^10 +
4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 8*zeta^5 + 12*zeta^4 + 4*zeta^3 + 8*zeta^2 + 
4*zeta - 12)*q^51 + (28*zeta^11 - 36*zeta^10 + 10*zeta^8 - 52*zeta^7 - 10*zeta^6
+ 20*zeta^5 - 8*zeta^4 - 28*zeta^3 + 20*zeta^2 + 10*zeta - 36)*q^52 + 
(-2*zeta^11 - 2*zeta^8 - 4*zeta^7 + 2*zeta^6 - 4*zeta^5 - 2*zeta^4 + 2*zeta^3 - 
4*zeta^2 - 2*zeta)*q^53 + (4*zeta^10 + 2*zeta^8 - 8*zeta^7 - 2*zeta^6 + 4*zeta^5
+ 4*zeta^4 + 4*zeta^2 + 2*zeta - 6)*q^54 + (-8*zeta^10 - 4*zeta^8 + 8*zeta^7 + 
4*zeta^6 - 8*zeta^5 - 8*zeta^4 - 8*zeta^2 - 4*zeta + 8)*q^55 + (-8*zeta^11 - 
8*zeta^8 + 8*zeta^6 - 16*zeta^5 - 8*zeta^4 + 8*zeta^3 - 16*zeta^2 - 8*zeta + 
8)*q^57 + (4*zeta^11 - 8*zeta^10 - 4*zeta^4 - 4*zeta^3)*q^58 + (-4*zeta^11 + 
8*zeta^10 + 16*zeta^7 + 4*zeta^4 + 4*zeta^3 + 8)*q^59 + (28*zeta^11 - 24*zeta^10
+ 16*zeta^8 - 16*zeta^7 - 16*zeta^6 + 32*zeta^5 + 4*zeta^4 - 28*zeta^3 + 
32*zeta^2 + 16*zeta - 24)*q^60 + (22*zeta^11 - 28*zeta^10 + 8*zeta^8 - 32*zeta^7
- 8*zeta^6 + 16*zeta^5 - 6*zeta^4 - 22*zeta^3 + 16*zeta^2 + 8*zeta - 24)*q^61 + 
(-20*zeta^11 + 16*zeta^10 - 12*zeta^8 - 16*zeta^7 + 12*zeta^6 - 24*zeta^5 - 
4*zeta^4 + 20*zeta^3 - 24*zeta^2 - 12*zeta + 4)*q^62 + (-11*zeta^11 + 14*zeta^10
- 4*zeta^8 - 14*zeta^7 + 4*zeta^6 - 8*zeta^5 + 3*zeta^4 + 11*zeta^3 - 8*zeta^2 -
4*zeta - 3)*q^64 + (-16*zeta^11 + 20*zeta^10 - 6*zeta^8 + 24*zeta^7 + 6*zeta^6 -
12*zeta^5 + 4*zeta^4 + 16*zeta^3 - 12*zeta^2 - 6*zeta + 18)*q^65 + (-12*zeta^11 
+ 16*zeta^10 - 4*zeta^8 + 24*zeta^7 + 4*zeta^6 - 8*zeta^5 + 4*zeta^4 + 12*zeta^3
- 8*zeta^2 - 4*zeta + 16)*q^66 + (-16*zeta^11 + 16*zeta^10 - 8*zeta^8 + 
16*zeta^7 + 8*zeta^6 - 16*zeta^5 + 16*zeta^3 - 16*zeta^2 - 8*zeta + 16)*q^67 + 
(14*zeta^11 + 14*zeta^8 - 56*zeta^7 - 14*zeta^6 + 28*zeta^5 + 14*zeta^4 - 
14*zeta^3 + 28*zeta^2 + 14*zeta - 42)*q^68 + (12*zeta^11 + 8*zeta^10 + 16*zeta^8
- 8*zeta^7 - 16*zeta^6 + 32*zeta^5 + 20*zeta^4 - 12*zeta^3 + 32*zeta^2 + 16*zeta
- 20)*q^69 + (-18*zeta^11 + 4*zeta^10 - 16*zeta^8 - 4*zeta^7 + 16*zeta^6 - 
32*zeta^5 - 14*zeta^4 + 18*zeta^3 - 32*zeta^2 - 16*zeta + 14)*q^71 + (-8*zeta^11
+ 4*zeta^10 - 6*zeta^8 + 24*zeta^7 + 6*zeta^6 - 12*zeta^5 - 4*zeta^4 + 8*zeta^3 
- 12*zeta^2 - 6*zeta + 18)*q^72 + (-32*zeta^11 + 28*zeta^10 - 18*zeta^8 + 
20*zeta^7 + 18*zeta^6 - 36*zeta^5 - 4*zeta^4 + 32*zeta^3 - 36*zeta^2 - 18*zeta +
28)*q^73 + (-12*zeta^11 + 16*zeta^10 - 4*zeta^8 + 24*zeta^7 + 4*zeta^6 - 
8*zeta^5 + 4*zeta^4 + 12*zeta^3 - 8*zeta^2 - 4*zeta + 16)*q^74 + (-20*zeta^11 + 
36*zeta^10 - 2*zeta^8 + 8*zeta^7 + 2*zeta^6 - 4*zeta^5 + 16*zeta^4 + 20*zeta^3 -
4*zeta^2 - 2*zeta + 6)*q^75 + (-12*zeta^11 + 16*zeta^10 - 4*zeta^8 - 16*zeta^7 +
4*zeta^6 - 8*zeta^5 + 4*zeta^4 + 12*zeta^3 - 8*zeta^2 - 4*zeta - 4)*q^76 + 
(32*zeta^11 - 24*zeta^10 + 20*zeta^8 + 24*zeta^7 - 20*zeta^6 + 40*zeta^5 + 
8*zeta^4 - 32*zeta^3 + 40*zeta^2 + 20*zeta - 8)*q^78 + (-24*zeta^11 + 32*zeta^10
- 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 + 8*zeta^4 + 24*zeta^3 - 16*zeta^2
- 8*zeta + 24)*q^79 + (-18*zeta^11 + 12*zeta^10 - 12*zeta^8 + 12*zeta^6 - 
24*zeta^5 - 6*zeta^4 + 18*zeta^3 - 24*zeta^2 - 12*zeta + 12)*q^80 + (-2*zeta^11 
- 2*zeta^8 - 4*zeta^7 + 2*zeta^6 - 4*zeta^5 - 2*zeta^4 + 2*zeta^3 - 4*zeta^2 - 
2*zeta)*q^81 + (6*zeta^11 - 4*zeta^10 + 4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 
8*zeta^5 + 2*zeta^4 - 6*zeta^3 + 8*zeta^2 + 4*zeta - 12)*q^82 + (20*zeta^11 - 
8*zeta^10 + 16*zeta^8 + 8*zeta^7 - 16*zeta^6 + 32*zeta^5 + 12*zeta^4 - 20*zeta^3
+ 32*zeta^2 + 16*zeta - 12)*q^83 + (6*zeta^11 + 4*zeta^10 + 8*zeta^8 - 4*zeta^7 
- 8*zeta^6 + 16*zeta^5 + 10*zeta^4 - 6*zeta^3 + 16*zeta^2 + 8*zeta - 10)*q^85 + 
(-8*zeta^11 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 - 8*zeta^4 + 8*zeta^3 
- 16*zeta^2 - 8*zeta + 24)*q^86 + (-24*zeta^11 + 16*zeta^10 - 16*zeta^8 + 
16*zeta^6 - 32*zeta^5 - 8*zeta^4 + 24*zeta^3 - 32*zeta^2 - 16*zeta + 16)*q^87 + 
(-2*zeta^11 + 8*zeta^10 + 2*zeta^8 + 20*zeta^7 - 2*zeta^6 + 4*zeta^5 + 6*zeta^4 
+ 2*zeta^3 + 4*zeta^2 + 2*zeta + 8)*q^88 + (-26*zeta^11 + 32*zeta^10 - 10*zeta^8
+ 40*zeta^7 + 10*zeta^6 - 20*zeta^5 + 6*zeta^4 + 26*zeta^3 - 20*zeta^2 - 10*zeta
+ 30)*q^89 + (-4*zeta^11 - 4*zeta^8 + 4*zeta^6 - 8*zeta^5 - 4*zeta^4 + 4*zeta^3 
- 8*zeta^2 - 4*zeta + 4)*q^90 + (14*zeta^11 - 28*zeta^10 + 28*zeta^7 - 14*zeta^4
- 14*zeta^3 + 14)*q^92 + (-8*zeta^11 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 
16*zeta^5 - 8*zeta^4 + 8*zeta^3 - 16*zeta^2 - 8*zeta + 24)*q^93 + (-4*zeta^11 + 
8*zeta^10 + 16*zeta^7 + 4*zeta^4 + 4*zeta^3 + 8)*q^94 + (-20*zeta^11 + 
16*zeta^10 - 12*zeta^8 + 8*zeta^7 + 12*zeta^6 - 24*zeta^5 - 4*zeta^4 + 20*zeta^3
- 24*zeta^2 - 12*zeta + 16)*q^95 + (-16*zeta^11 + 20*zeta^10 - 6*zeta^8 + 
24*zeta^7 + 6*zeta^6 - 12*zeta^5 + 4*zeta^4 + 16*zeta^3 - 12*zeta^2 - 6*zeta + 
18)*q^96 + (-6*zeta^11 + 8*zeta^10 - 2*zeta^8 - 8*zeta^7 + 2*zeta^6 - 4*zeta^5 +
2*zeta^4 + 6*zeta^3 - 4*zeta^2 - 2*zeta - 2)*q^97 + (4*zeta^11 - 8*zeta^10 + 
8*zeta^7 - 4*zeta^4 - 4*zeta^3 + 4)*q^99 + (26*zeta^11 - 22*zeta^10 + 15*zeta^8 
- 60*zeta^7 - 15*zeta^6 + 30*zeta^5 + 4*zeta^4 - 26*zeta^3 + 30*zeta^2 + 15*zeta
- 45)*q^100 + (10*zeta^11 - 20*zeta^10 - 40*zeta^7 - 10*zeta^4 - 10*zeta^3 - 
20)*q^101 + (-24*zeta^11 + 40*zeta^10 - 4*zeta^8 + 72*zeta^7 + 4*zeta^6 - 
8*zeta^5 + 16*zeta^4 + 24*zeta^3 - 8*zeta^2 - 4*zeta + 40)*q^102 + (4*zeta^11 - 
16*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 8*zeta^5 - 12*zeta^4 - 4*zeta^3 -
8*zeta^2 - 4*zeta + 12)*q^103 + (28*zeta^11 - 28*zeta^10 + 14*zeta^8 + 28*zeta^7
- 14*zeta^6 + 28*zeta^5 - 28*zeta^3 + 28*zeta^2 + 14*zeta)*q^104 + (6*zeta^11 - 
4*zeta^10 + 4*zeta^8 + 4*zeta^7 - 4*zeta^6 + 8*zeta^5 + 2*zeta^4 - 6*zeta^3 + 
8*zeta^2 + 4*zeta - 2)*q^106 + (4*zeta^11 + 4*zeta^10 + 6*zeta^8 - 24*zeta^7 - 
6*zeta^6 + 12*zeta^5 + 8*zeta^4 - 4*zeta^3 + 12*zeta^2 + 6*zeta - 18)*q^107 + 
(-14*zeta^11 + 16*zeta^10 - 6*zeta^8 + 20*zeta^7 + 6*zeta^6 - 12*zeta^5 + 
2*zeta^4 + 14*zeta^3 - 12*zeta^2 - 6*zeta + 16)*q^108 + (-16*zeta^11 + 
16*zeta^10 - 8*zeta^8 + 16*zeta^7 + 8*zeta^6 - 16*zeta^5 + 16*zeta^3 - 16*zeta^2
- 8*zeta + 16)*q^109 + (-4*zeta^11 + 8*zeta^10 + 4*zeta^4 + 4*zeta^3)*q^110 + 
(-8*zeta^11 + 16*zeta^10 - 16*zeta^7 + 8*zeta^4 + 8*zeta^3 - 8)*q^111 + 
(22*zeta^11 - 12*zeta^10 + 16*zeta^8 + 12*zeta^7 - 16*zeta^6 + 32*zeta^5 + 
10*zeta^4 - 22*zeta^3 + 32*zeta^2 + 16*zeta - 10)*q^113 + (-8*zeta^11 - 8*zeta^8
+ 32*zeta^7 + 8*zeta^6 - 16*zeta^5 - 8*zeta^4 + 8*zeta^3 - 16*zeta^2 - 8*zeta + 
24)*q^114 + (52*zeta^11 - 40*zeta^10 + 32*zeta^8 - 16*zeta^7 - 32*zeta^6 + 
64*zeta^5 + 12*zeta^4 - 52*zeta^3 + 64*zeta^2 + 32*zeta - 40)*q^115 + 
(28*zeta^11 - 24*zeta^10 + 16*zeta^8 - 16*zeta^7 - 16*zeta^6 + 32*zeta^5 + 
4*zeta^4 - 28*zeta^3 + 32*zeta^2 + 16*zeta - 24)*q^116 + (-12*zeta^11 + 
8*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 - 4*zeta^4 + 12*zeta^3 -
16*zeta^2 - 8*zeta + 24)*q^117 + (-20*zeta^11 + 16*zeta^10 - 12*zeta^8 - 
16*zeta^7 + 12*zeta^6 - 24*zeta^5 - 4*zeta^4 + 20*zeta^3 - 24*zeta^2 - 12*zeta +
4)*q^118 + (4*zeta^11 - 16*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 8*zeta^5 
- 12*zeta^4 - 4*zeta^3 - 8*zeta^2 - 4*zeta + 12)*q^120 + (14*zeta^11 - 
14*zeta^10 + 7*zeta^8 - 28*zeta^7 - 7*zeta^6 + 14*zeta^5 - 14*zeta^3 + 14*zeta^2
+ 7*zeta - 21)*q^121 + (-18*zeta^11 + 20*zeta^10 - 8*zeta^8 + 24*zeta^7 + 
8*zeta^6 - 16*zeta^5 + 2*zeta^4 + 18*zeta^3 - 16*zeta^2 - 8*zeta + 20)*q^122 + 
(-28*zeta^11 + 24*zeta^10 - 16*zeta^8 + 16*zeta^7 + 16*zeta^6 - 32*zeta^5 - 
4*zeta^4 + 28*zeta^3 - 32*zeta^2 - 16*zeta + 24)*q^123 + (-4*zeta^11 - 
16*zeta^10 - 12*zeta^8 + 48*zeta^7 + 12*zeta^6 - 24*zeta^5 - 20*zeta^4 + 
4*zeta^3 - 24*zeta^2 - 12*zeta + 36)*q^124 + (8*zeta^11 + 8*zeta^8 - 8*zeta^6 + 
16*zeta^5 + 8*zeta^4 - 8*zeta^3 + 16*zeta^2 + 8*zeta - 8)*q^125 + (12*zeta^11 - 
8*zeta^10 + 8*zeta^8 + 8*zeta^7 - 8*zeta^6 + 16*zeta^5 + 4*zeta^4 - 12*zeta^3 + 
16*zeta^2 + 8*zeta - 4)*q^127 + (12*zeta^11 - 34*zeta^10 - 5*zeta^8 + 20*zeta^7 
+ 5*zeta^6 - 10*zeta^5 - 22*zeta^4 - 12*zeta^3 - 10*zeta^2 - 5*zeta + 15)*q^128 
+ (32*zeta^11 - 32*zeta^10 + 16*zeta^8 - 32*zeta^7 - 16*zeta^6 + 32*zeta^5 - 
32*zeta^3 + 32*zeta^2 + 16*zeta - 32)*q^129 + (14*zeta^11 - 16*zeta^10 + 
6*zeta^8 - 20*zeta^7 - 6*zeta^6 + 12*zeta^5 - 2*zeta^4 - 14*zeta^3 + 12*zeta^2 +
6*zeta - 16)*q^130 + (-24*zeta^11 + 40*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6
- 8*zeta^5 + 16*zeta^4 + 24*zeta^3 - 8*zeta^2 - 4*zeta + 12)*q^131 + 
(-20*zeta^11 + 8*zeta^10 - 16*zeta^8 - 8*zeta^7 + 16*zeta^6 - 32*zeta^5 - 
12*zeta^4 + 20*zeta^3 - 32*zeta^2 - 16*zeta + 12)*q^132 + (-16*zeta^11 + 
16*zeta^10 - 8*zeta^8 - 16*zeta^7 + 8*zeta^6 - 16*zeta^5 + 16*zeta^3 - 16*zeta^2
- 8*zeta)*q^134 + (12*zeta^11 - 16*zeta^10 + 4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 
8*zeta^5 - 4*zeta^4 - 12*zeta^3 + 8*zeta^2 + 4*zeta - 12)*q^135 + (-32*zeta^11 +
44*zeta^10 - 10*zeta^8 + 68*zeta^7 + 10*zeta^6 - 20*zeta^5 + 12*zeta^4 + 
32*zeta^3 - 20*zeta^2 - 10*zeta + 44)*q^136 + (40*zeta^11 - 40*zeta^10 + 
20*zeta^8 - 40*zeta^7 - 20*zeta^6 + 40*zeta^5 - 40*zeta^3 + 40*zeta^2 + 20*zeta 
- 40)*q^137 + (16*zeta^11 - 8*zeta^10 + 12*zeta^8 - 48*zeta^7 - 12*zeta^6 + 
24*zeta^5 + 8*zeta^4 - 16*zeta^3 + 24*zeta^2 + 12*zeta - 36)*q^138 + (4*zeta^11 
- 24*zeta^10 - 8*zeta^8 + 24*zeta^7 + 8*zeta^6 - 16*zeta^5 - 20*zeta^4 - 
4*zeta^3 - 16*zeta^2 - 8*zeta + 20)*q^139 + (-8*zeta^11 - 8*zeta^8 + 8*zeta^6 - 
16*zeta^5 - 8*zeta^4 + 8*zeta^3 - 16*zeta^2 - 8*zeta + 8)*q^141 + (-16*zeta^11 -
4*zeta^10 - 18*zeta^8 + 72*zeta^7 + 18*zeta^6 - 36*zeta^5 - 20*zeta^4 + 
16*zeta^3 - 36*zeta^2 - 18*zeta + 54)*q^142 + (8*zeta^10 + 4*zeta^8 + 24*zeta^7 
- 4*zeta^6 + 8*zeta^5 + 8*zeta^4 + 8*zeta^2 + 4*zeta + 8)*q^143 + (-6*zeta^11 - 
6*zeta^8 - 12*zeta^7 + 6*zeta^6 - 12*zeta^5 - 6*zeta^4 + 6*zeta^3 - 12*zeta^2 - 
6*zeta)*q^144 + (-40*zeta^11 + 56*zeta^10 - 12*zeta^8 + 48*zeta^7 + 12*zeta^6 - 
24*zeta^5 + 16*zeta^4 + 40*zeta^3 - 24*zeta^2 - 12*zeta + 36)*q^145 + 
(-16*zeta^11 + 20*zeta^10 - 6*zeta^8 - 20*zeta^7 + 6*zeta^6 - 12*zeta^5 + 
4*zeta^4 + 16*zeta^3 - 12*zeta^2 - 6*zeta - 4)*q^146 + (-20*zeta^11 + 8*zeta^10 
- 16*zeta^8 - 8*zeta^7 + 16*zeta^6 - 32*zeta^5 - 12*zeta^4 + 20*zeta^3 - 
32*zeta^2 - 16*zeta + 12)*q^148 + (-28*zeta^11 + 44*zeta^10 - 6*zeta^8 + 
24*zeta^7 + 6*zeta^6 - 12*zeta^5 + 16*zeta^4 + 28*zeta^3 - 12*zeta^2 - 6*zeta + 
18)*q^149 + (-10*zeta^11 + 24*zeta^10 + 2*zeta^8 + 52*zeta^7 - 2*zeta^6 + 
4*zeta^5 + 14*zeta^4 + 10*zeta^3 + 4*zeta^2 + 2*zeta + 24)*q^150 + (12*zeta^11 +
12*zeta^8 + 24*zeta^7 - 12*zeta^6 + 24*zeta^5 + 12*zeta^4 - 12*zeta^3 + 
24*zeta^2 + 12*zeta)*q^151 + (4*zeta^11 - 16*zeta^10 - 4*zeta^8 + 16*zeta^7 + 
4*zeta^6 - 8*zeta^5 - 12*zeta^4 - 4*zeta^3 - 8*zeta^2 - 4*zeta + 12)*q^152 + 
(16*zeta^11 - 8*zeta^10 + 12*zeta^8 + 8*zeta^7 - 12*zeta^6 + 24*zeta^5 + 
8*zeta^4 - 16*zeta^3 + 24*zeta^2 + 12*zeta - 8)*q^153 + (-4*zeta^11 + 8*zeta^10 
- 8*zeta^7 + 4*zeta^4 + 4*zeta^3 - 4)*q^155 + (-4*zeta^11 + 40*zeta^10 + 
16*zeta^8 - 64*zeta^7 - 16*zeta^6 + 32*zeta^5 + 36*zeta^4 + 4*zeta^3 + 32*zeta^2
+ 16*zeta - 48)*q^156 + (-4*zeta^11 - 12*zeta^10 - 10*zeta^8 - 44*zeta^7 + 
10*zeta^6 - 20*zeta^5 - 16*zeta^4 + 4*zeta^3 - 20*zeta^2 - 10*zeta - 12)*q^157 +
(16*zeta^11 - 16*zeta^10 + 8*zeta^8 - 16*zeta^7 - 8*zeta^6 + 16*zeta^5 - 
16*zeta^3 + 16*zeta^2 + 8*zeta - 16)*q^158 + (8*zeta^11 - 8*zeta^10 + 4*zeta^8 -
16*zeta^7 - 4*zeta^6 + 8*zeta^5 - 8*zeta^3 + 8*zeta^2 + 4*zeta - 12)*q^159 + 
(2*zeta^11 + 16*zeta^10 + 10*zeta^8 - 16*zeta^7 - 10*zeta^6 + 20*zeta^5 + 
18*zeta^4 - 2*zeta^3 + 20*zeta^2 + 10*zeta - 18)*q^160 + (6*zeta^11 - 4*zeta^10 
+ 4*zeta^8 + 4*zeta^7 - 4*zeta^6 + 8*zeta^5 + 2*zeta^4 - 6*zeta^3 + 8*zeta^2 + 
4*zeta - 2)*q^162 + (16*zeta^11 - 32*zeta^10 - 16*zeta^4 - 16*zeta^3)*q^163 + 
(14*zeta^11 - 4*zeta^10 + 12*zeta^8 + 16*zeta^7 - 12*zeta^6 + 24*zeta^5 + 
10*zeta^4 - 14*zeta^3 + 24*zeta^2 + 12*zeta - 4)*q^164 + (24*zeta^11 - 
16*zeta^10 + 16*zeta^8 - 16*zeta^6 + 32*zeta^5 + 8*zeta^4 - 24*zeta^3 + 
32*zeta^2 + 16*zeta - 16)*q^165 + (16*zeta^11 + 8*zeta^10 + 20*zeta^8 - 
80*zeta^7 - 20*zeta^6 + 40*zeta^5 + 24*zeta^4 - 16*zeta^3 + 40*zeta^2 + 20*zeta 
- 60)*q^166 + (-28*zeta^11 - 28*zeta^8 + 28*zeta^6 - 56*zeta^5 - 28*zeta^4 + 
28*zeta^3 - 56*zeta^2 - 28*zeta + 28)*q^167 + (21*zeta^11 - 10*zeta^10 + 
16*zeta^8 + 10*zeta^7 - 16*zeta^6 + 32*zeta^5 + 11*zeta^4 - 21*zeta^3 + 
32*zeta^2 + 16*zeta - 11)*q^169 + (8*zeta^11 - 4*zeta^10 + 6*zeta^8 - 24*zeta^7 
- 6*zeta^6 + 12*zeta^5 + 4*zeta^4 - 8*zeta^3 + 12*zeta^2 + 6*zeta - 18)*q^170 + 
(-16*zeta^11 + 16*zeta^10 - 8*zeta^8 + 16*zeta^7 + 8*zeta^6 - 16*zeta^5 + 
16*zeta^3 - 16*zeta^2 - 8*zeta + 16)*q^171 + (-16*zeta^10 - 8*zeta^8 - 48*zeta^7
+ 8*zeta^6 - 16*zeta^5 - 16*zeta^4 - 16*zeta^2 - 8*zeta - 16)*q^172 + 
(38*zeta^11 - 48*zeta^10 + 14*zeta^8 - 56*zeta^7 - 14*zeta^6 + 28*zeta^5 - 
10*zeta^4 - 38*zeta^3 + 28*zeta^2 + 14*zeta - 42)*q^173 + (8*zeta^11 + 8*zeta^8 
- 8*zeta^6 + 16*zeta^5 + 8*zeta^4 - 8*zeta^3 + 16*zeta^2 + 8*zeta - 8)*q^174 + 
(-6*zeta^11 + 12*zeta^10 - 12*zeta^7 + 6*zeta^4 + 6*zeta^3 - 6)*q^176 + 
(-8*zeta^11 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 - 8*zeta^4 + 8*zeta^3 
- 16*zeta^2 - 8*zeta + 24)*q^177 + (24*zeta^11 - 28*zeta^10 + 10*zeta^8 - 
36*zeta^7 - 10*zeta^6 + 20*zeta^5 - 4*zeta^4 - 24*zeta^3 + 20*zeta^2 + 10*zeta -
28)*q^178 + (-30*zeta^11 + 16*zeta^10 - 22*zeta^8 - 12*zeta^7 + 22*zeta^6 - 
44*zeta^5 - 14*zeta^4 + 30*zeta^3 - 44*zeta^2 - 22*zeta + 16)*q^179 + 
(20*zeta^11 - 32*zeta^10 + 4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 8*zeta^5 - 
12*zeta^4 - 20*zeta^3 + 8*zeta^2 + 4*zeta - 12)*q^180 + (6*zeta^11 - 8*zeta^10 +
2*zeta^8 + 8*zeta^7 - 2*zeta^6 + 4*zeta^5 - 2*zeta^4 - 6*zeta^3 + 4*zeta^2 + 
2*zeta + 2)*q^181 + (-4*zeta^11 + 32*zeta^10 + 12*zeta^8 - 32*zeta^7 - 12*zeta^6
+ 24*zeta^5 + 28*zeta^4 + 4*zeta^3 + 24*zeta^2 + 12*zeta - 28)*q^183 + 
(-16*zeta^11 + 36*zeta^10 + 2*zeta^8 - 8*zeta^7 - 2*zeta^6 + 4*zeta^5 + 
20*zeta^4 + 16*zeta^3 + 4*zeta^2 + 2*zeta - 6)*q^184 + (24*zeta^11 - 16*zeta^10 
+ 16*zeta^8 - 16*zeta^6 + 32*zeta^5 + 8*zeta^4 - 24*zeta^3 + 32*zeta^2 + 16*zeta
- 16)*q^185 + (32*zeta^11 - 48*zeta^10 + 8*zeta^8 - 80*zeta^7 - 8*zeta^6 + 
16*zeta^5 - 16*zeta^4 - 32*zeta^3 + 16*zeta^2 + 8*zeta - 48)*q^186 + (4*zeta^11 
- 16*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 8*zeta^5 - 12*zeta^4 - 4*zeta^3
- 8*zeta^2 - 4*zeta + 12)*q^187 + (-12*zeta^11 + 16*zeta^10 - 4*zeta^8 - 
16*zeta^7 + 4*zeta^6 - 8*zeta^5 + 4*zeta^4 + 12*zeta^3 - 8*zeta^2 - 4*zeta - 
4)*q^188 + (-4*zeta^11 + 8*zeta^10 - 8*zeta^7 + 4*zeta^4 + 4*zeta^3 - 4)*q^190 +
(36*zeta^11 - 36*zeta^10 + 18*zeta^8 - 72*zeta^7 - 18*zeta^6 + 36*zeta^5 - 
36*zeta^3 + 36*zeta^2 + 18*zeta - 54)*q^191 + (2*zeta^11 - 16*zeta^10 - 6*zeta^8
- 44*zeta^7 + 6*zeta^6 - 12*zeta^5 - 14*zeta^4 - 2*zeta^3 - 12*zeta^2 - 6*zeta -
16)*q^192 + (26*zeta^11 - 32*zeta^10 + 10*zeta^8 - 44*zeta^7 - 10*zeta^6 + 
20*zeta^5 - 6*zeta^4 - 26*zeta^3 + 20*zeta^2 + 10*zeta - 32)*q^193 + (-2*zeta^11
- 8*zeta^10 - 6*zeta^8 + 24*zeta^7 + 6*zeta^6 - 12*zeta^5 - 10*zeta^4 + 2*zeta^3
- 12*zeta^2 - 6*zeta + 18)*q^194 + (4*zeta^11 - 24*zeta^10 - 8*zeta^8 + 
24*zeta^7 + 8*zeta^6 - 16*zeta^5 - 20*zeta^4 - 4*zeta^3 - 16*zeta^2 - 8*zeta + 
20)*q^195 + (2*zeta^11 - 4*zeta^10 + 4*zeta^7 - 2*zeta^4 - 2*zeta^3 + 2)*q^197 +
(8*zeta^10 + 4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 8*zeta^5 + 8*zeta^4 + 8*zeta^2 + 
4*zeta - 12)*q^198 + (-32*zeta^11 + 16*zeta^10 - 24*zeta^8 - 16*zeta^7 + 
24*zeta^6 - 48*zeta^5 - 16*zeta^4 + 32*zeta^3 - 48*zeta^2 - 24*zeta + 16)*q^199 
+ (-39*zeta^11 + 44*zeta^10 - 17*zeta^8 + 54*zeta^7 + 17*zeta^6 - 34*zeta^5 + 
5*zeta^4 + 39*zeta^3 - 34*zeta^2 - 17*zeta + 44)*q^200 + (16*zeta^11 - 
32*zeta^10 - 16*zeta^4 - 16*zeta^3)*q^201 + (50*zeta^11 - 40*zeta^10 + 30*zeta^8
+ 40*zeta^7 - 30*zeta^6 + 60*zeta^5 + 10*zeta^4 - 50*zeta^3 + 60*zeta^2 + 
30*zeta - 10)*q^202 + (-56*zeta^11 + 56*zeta^10 - 28*zeta^8 - 56*zeta^7 + 
28*zeta^6 - 56*zeta^5 + 56*zeta^3 - 56*zeta^2 - 28*zeta)*q^204 + (-36*zeta^11 + 
52*zeta^10 - 10*zeta^8 + 40*zeta^7 + 10*zeta^6 - 20*zeta^5 + 16*zeta^4 + 
36*zeta^3 - 20*zeta^2 - 10*zeta + 30)*q^205 + (24*zeta^11 - 40*zeta^10 + 
4*zeta^8 - 72*zeta^7 - 4*zeta^6 + 8*zeta^5 - 16*zeta^4 - 24*zeta^3 + 8*zeta^2 + 
4*zeta - 40)*q^206 + (36*zeta^11 - 32*zeta^10 + 20*zeta^8 - 24*zeta^7 - 
20*zeta^6 + 40*zeta^5 + 4*zeta^4 - 36*zeta^3 + 40*zeta^2 + 20*zeta - 32)*q^207 +
(18*zeta^11 - 12*zeta^10 + 12*zeta^8 - 48*zeta^7 - 12*zeta^6 + 24*zeta^5 + 
6*zeta^4 - 18*zeta^3 + 24*zeta^2 + 12*zeta - 36)*q^208 + (8*zeta^11 + 8*zeta^8 -
8*zeta^6 + 16*zeta^5 + 8*zeta^4 - 8*zeta^3 + 16*zeta^2 + 8*zeta - 8)*q^209 + 
(-28*zeta^11 + 8*zeta^10 - 24*zeta^8 - 8*zeta^7 + 24*zeta^6 - 48*zeta^5 - 
20*zeta^4 + 28*zeta^3 - 48*zeta^2 - 24*zeta + 20)*q^211 + (-4*zeta^11 + 
12*zeta^10 + 2*zeta^8 - 8*zeta^7 - 2*zeta^6 + 4*zeta^5 + 8*zeta^4 + 4*zeta^3 + 
4*zeta^2 + 2*zeta - 6)*q^212 + (60*zeta^11 - 64*zeta^10 + 28*zeta^8 - 72*zeta^7 
- 28*zeta^6 + 56*zeta^5 - 4*zeta^4 - 60*zeta^3 + 56*zeta^2 + 28*zeta - 64)*q^213
+ (-26*zeta^11 + 40*zeta^10 - 6*zeta^8 + 68*zeta^7 + 6*zeta^6 - 12*zeta^5 + 
14*zeta^4 + 26*zeta^3 - 12*zeta^2 - 6*zeta + 40)*q^214 + (32*zeta^11 - 
48*zeta^10 + 8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 - 16*zeta^4 - 32*zeta^3
+ 16*zeta^2 + 8*zeta - 24)*q^215 + (-10*zeta^11 + 12*zeta^10 - 4*zeta^8 - 
12*zeta^7 + 4*zeta^6 - 8*zeta^5 + 2*zeta^4 + 10*zeta^3 - 8*zeta^2 - 4*zeta - 
2)*q^216 + (-16*zeta^11 + 16*zeta^10 - 8*zeta^8 - 16*zeta^7 + 8*zeta^6 - 
16*zeta^5 + 16*zeta^3 - 16*zeta^2 - 8*zeta)*q^218 + (44*zeta^11 - 72*zeta^10 + 
8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 - 28*zeta^4 - 44*zeta^3 + 16*zeta^2 
+ 8*zeta - 24)*q^219 + (-28*zeta^11 + 24*zeta^10 - 16*zeta^8 + 16*zeta^7 + 
16*zeta^6 - 32*zeta^5 - 4*zeta^4 + 28*zeta^3 - 32*zeta^2 - 16*zeta + 24)*q^220 +
(-42*zeta^11 + 56*zeta^10 - 14*zeta^8 + 84*zeta^7 + 14*zeta^6 - 28*zeta^5 + 
14*zeta^4 + 42*zeta^3 - 28*zeta^2 - 14*zeta + 56)*q^221 + (-16*zeta^10 - 
8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 - 16*zeta^4 - 16*zeta^2 - 8*zeta + 
24)*q^222 + (16*zeta^11 + 16*zeta^10 + 24*zeta^8 - 16*zeta^7 - 24*zeta^6 + 
48*zeta^5 + 32*zeta^4 - 16*zeta^3 + 48*zeta^2 + 24*zeta - 32)*q^223 + 
(14*zeta^11 + 4*zeta^10 + 16*zeta^8 - 4*zeta^7 - 16*zeta^6 + 32*zeta^5 + 
18*zeta^4 - 14*zeta^3 + 32*zeta^2 + 16*zeta - 18)*q^225 + (16*zeta^11 + 
12*zeta^10 + 22*zeta^8 - 88*zeta^7 - 22*zeta^6 + 44*zeta^5 + 28*zeta^4 - 
16*zeta^3 + 44*zeta^2 + 22*zeta - 66)*q^226 + (-60*zeta^11 + 56*zeta^10 - 
32*zeta^8 + 48*zeta^7 + 32*zeta^6 - 64*zeta^5 - 4*zeta^4 + 60*zeta^3 - 64*zeta^2
- 32*zeta + 56)*q^227 + (-16*zeta^10 - 8*zeta^8 - 48*zeta^7 + 8*zeta^6 - 
16*zeta^5 - 16*zeta^4 - 16*zeta^2 - 8*zeta - 16)*q^228 + (2*zeta^11 + 4*zeta^10 
+ 4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 8*zeta^5 + 6*zeta^4 - 2*zeta^3 + 8*zeta^2 + 
4*zeta - 12)*q^229 + (4*zeta^11 - 16*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 -
8*zeta^5 - 12*zeta^4 - 4*zeta^3 - 8*zeta^2 - 4*zeta + 12)*q^230 + (4*zeta^11 - 
16*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 8*zeta^5 - 12*zeta^4 - 4*zeta^3 -
8*zeta^2 - 4*zeta + 12)*q^232 + (4*zeta^11 - 24*zeta^10 - 8*zeta^8 + 32*zeta^7 +
8*zeta^6 - 16*zeta^5 - 20*zeta^4 - 4*zeta^3 - 16*zeta^2 - 8*zeta + 24)*q^233 + 
(28*zeta^11 - 40*zeta^10 + 8*zeta^8 - 64*zeta^7 - 8*zeta^6 + 16*zeta^5 - 
12*zeta^4 - 28*zeta^3 + 16*zeta^2 + 8*zeta - 40)*q^234 + (-20*zeta^11 + 
16*zeta^10 - 12*zeta^8 + 8*zeta^7 + 12*zeta^6 - 24*zeta^5 - 4*zeta^4 + 20*zeta^3
- 24*zeta^2 - 12*zeta + 16)*q^235 + (-4*zeta^11 - 16*zeta^10 - 12*zeta^8 + 
48*zeta^7 + 12*zeta^6 - 24*zeta^5 - 20*zeta^4 + 4*zeta^3 - 24*zeta^2 - 12*zeta +
36)*q^236 + (-32*zeta^10 - 16*zeta^8 + 32*zeta^7 + 16*zeta^6 - 32*zeta^5 - 
32*zeta^4 - 32*zeta^2 - 16*zeta + 32)*q^237 + (-2*zeta^11 + 20*zeta^10 + 
8*zeta^8 - 20*zeta^7 - 8*zeta^6 + 16*zeta^5 + 18*zeta^4 + 2*zeta^3 + 16*zeta^2 +
8*zeta - 18)*q^239 + (36*zeta^11 - 48*zeta^10 + 12*zeta^8 - 48*zeta^7 - 
12*zeta^6 + 24*zeta^5 - 12*zeta^4 - 36*zeta^3 + 24*zeta^2 + 12*zeta - 36)*q^240 
+ (24*zeta^11 - 12*zeta^10 + 18*zeta^8 + 12*zeta^7 - 18*zeta^6 + 36*zeta^5 + 
12*zeta^4 - 24*zeta^3 + 36*zeta^2 + 18*zeta - 12)*q^241 + (-21*zeta^11 + 
28*zeta^10 - 7*zeta^8 + 42*zeta^7 + 7*zeta^6 - 14*zeta^5 + 7*zeta^4 + 21*zeta^3 
- 14*zeta^2 - 7*zeta + 28)*q^242 + (-4*zeta^11 + 4*zeta^10 - 2*zeta^8 + 8*zeta^7
+ 2*zeta^6 - 4*zeta^5 + 4*zeta^3 - 4*zeta^2 - 2*zeta + 6)*q^243 + (-22*zeta^11 -
8*zeta^10 - 26*zeta^8 + 8*zeta^7 + 26*zeta^6 - 52*zeta^5 - 30*zeta^4 + 22*zeta^3
- 52*zeta^2 - 26*zeta + 30)*q^244 + (-12*zeta^11 + 16*zeta^10 - 4*zeta^8 - 
16*zeta^7 + 4*zeta^6 - 8*zeta^5 + 4*zeta^4 + 12*zeta^3 - 8*zeta^2 - 4*zeta - 
4)*q^246 + (8*zeta^11 - 24*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 8*zeta^5 
- 16*zeta^4 - 8*zeta^3 - 8*zeta^2 - 4*zeta + 12)*q^247 + (24*zeta^11 - 
40*zeta^10 + 4*zeta^8 - 72*zeta^7 - 4*zeta^6 + 8*zeta^5 - 16*zeta^4 - 24*zeta^3 
+ 8*zeta^2 + 4*zeta - 40)*q^248 + (-56*zeta^11 + 64*zeta^10 - 24*zeta^8 + 
80*zeta^7 + 24*zeta^6 - 48*zeta^5 + 8*zeta^4 + 56*zeta^3 - 48*zeta^2 - 24*zeta +
64)*q^249 + (8*zeta^11 + 8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 + 8*zeta^4 
- 8*zeta^3 + 16*zeta^2 + 8*zeta - 24)*q^250 + (-8*zeta^11 - 8*zeta^10 - 
12*zeta^8 + 8*zeta^7 + 12*zeta^6 - 24*zeta^5 - 16*zeta^4 + 8*zeta^3 - 24*zeta^2 
- 12*zeta + 16)*q^251 + (-12*zeta^11 - 8*zeta^10 - 16*zeta^8 + 8*zeta^7 + 
16*zeta^6 - 32*zeta^5 - 20*zeta^4 + 12*zeta^3 - 32*zeta^2 - 16*zeta + 20)*q^253 
+ (8*zeta^11 + 8*zeta^10 + 12*zeta^8 - 48*zeta^7 - 12*zeta^6 + 24*zeta^5 + 
16*zeta^4 - 8*zeta^3 + 24*zeta^2 + 12*zeta - 36)*q^254 + (-36*zeta^11 + 
32*zeta^10 - 20*zeta^8 + 24*zeta^7 + 20*zeta^6 - 40*zeta^5 - 4*zeta^4 + 
36*zeta^3 - 40*zeta^2 - 20*zeta + 32)*q^255 + (35*zeta^11 - 48*zeta^10 + 
11*zeta^8 - 74*zeta^7 - 11*zeta^6 + 22*zeta^5 - 13*zeta^4 - 35*zeta^3 + 
22*zeta^2 + 11*zeta - 48)*q^256 + (34*zeta^11 - 64*zeta^10 + 2*zeta^8 - 8*zeta^7
- 2*zeta^6 + 4*zeta^5 - 30*zeta^4 - 34*zeta^3 + 4*zeta^2 + 2*zeta - 6)*q^257 + 
(32*zeta^11 - 32*zeta^10 + 16*zeta^8 + 32*zeta^7 - 16*zeta^6 + 32*zeta^5 - 
32*zeta^3 + 32*zeta^2 + 16*zeta)*q^258 + (18*zeta^11 + 4*zeta^10 + 20*zeta^8 - 
4*zeta^7 - 20*zeta^6 + 40*zeta^5 + 22*zeta^4 - 18*zeta^3 + 40*zeta^2 + 20*zeta -
22)*q^260 + (-24*zeta^11 + 32*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 
16*zeta^5 + 8*zeta^4 + 24*zeta^3 - 16*zeta^2 - 8*zeta + 24)*q^261 + (-4*zeta^11 
+ 16*zeta^10 + 4*zeta^8 + 40*zeta^7 - 4*zeta^6 + 8*zeta^5 + 12*zeta^4 + 4*zeta^3
+ 8*zeta^2 + 4*zeta + 16)*q^262 + (26*zeta^11 - 32*zeta^10 + 10*zeta^8 - 
44*zeta^7 - 10*zeta^6 + 20*zeta^5 - 6*zeta^4 - 26*zeta^3 + 20*zeta^2 + 10*zeta -
32)*q^263 + (-16*zeta^11 + 8*zeta^10 - 12*zeta^8 + 48*zeta^7 + 12*zeta^6 - 
24*zeta^5 - 8*zeta^4 + 16*zeta^3 - 24*zeta^2 - 12*zeta + 36)*q^264 + (-8*zeta^10
- 4*zeta^8 + 8*zeta^7 + 4*zeta^6 - 8*zeta^5 - 8*zeta^4 - 8*zeta^2 - 4*zeta + 
8)*q^265 + (8*zeta^11 - 40*zeta^10 - 12*zeta^8 + 40*zeta^7 + 12*zeta^6 - 
24*zeta^5 - 32*zeta^4 - 8*zeta^3 - 24*zeta^2 - 12*zeta + 32)*q^267 + 
(-24*zeta^11 + 16*zeta^10 - 16*zeta^8 + 64*zeta^7 + 16*zeta^6 - 32*zeta^5 - 
8*zeta^4 + 24*zeta^3 - 32*zeta^2 - 16*zeta + 48)*q^268 + (38*zeta^11 - 
36*zeta^10 + 20*zeta^8 - 32*zeta^7 - 20*zeta^6 + 40*zeta^5 + 2*zeta^4 - 
38*zeta^3 + 40*zeta^2 + 20*zeta - 36)*q^269 + (-8*zeta^11 + 8*zeta^10 - 4*zeta^8
+ 8*zeta^7 + 4*zeta^6 - 8*zeta^5 + 8*zeta^3 - 8*zeta^2 - 4*zeta + 8)*q^270 + 
(-12*zeta^11 + 32*zeta^10 + 4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 8*zeta^5 + 
20*zeta^4 + 12*zeta^3 + 8*zeta^2 + 4*zeta - 12)*q^271 + (-24*zeta^11 + 
12*zeta^10 - 18*zeta^8 - 12*zeta^7 + 18*zeta^6 - 36*zeta^5 - 12*zeta^4 + 
24*zeta^3 - 36*zeta^2 - 18*zeta + 12)*q^272 + (40*zeta^11 - 40*zeta^10 + 
20*zeta^8 + 40*zeta^7 - 20*zeta^6 + 40*zeta^5 - 40*zeta^3 + 40*zeta^2 + 
20*zeta)*q^274 + (20*zeta^11 - 36*zeta^10 + 2*zeta^8 - 8*zeta^7 - 2*zeta^6 + 
4*zeta^5 - 16*zeta^4 - 20*zeta^3 + 4*zeta^2 + 2*zeta - 6)*q^275 + (28*zeta^11 + 
28*zeta^8 + 56*zeta^7 - 28*zeta^6 + 56*zeta^5 + 28*zeta^4 - 28*zeta^3 + 
56*zeta^2 + 28*zeta)*q^276 + (-30*zeta^11 + 32*zeta^10 - 14*zeta^8 + 36*zeta^7 +
14*zeta^6 - 28*zeta^5 + 2*zeta^4 + 30*zeta^3 - 28*zeta^2 - 14*zeta + 32)*q^277 +
(-8*zeta^11 + 24*zeta^10 + 4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 8*zeta^5 + 
16*zeta^4 + 8*zeta^3 + 8*zeta^2 + 4*zeta - 12)*q^278 + (-16*zeta^11 + 16*zeta^10
- 8*zeta^8 - 16*zeta^7 + 8*zeta^6 - 16*zeta^5 + 16*zeta^3 - 16*zeta^2 - 
8*zeta)*q^279 + (-20*zeta^11 + 16*zeta^10 - 12*zeta^8 - 16*zeta^7 + 12*zeta^6 - 
24*zeta^5 - 4*zeta^4 + 20*zeta^3 - 24*zeta^2 - 12*zeta + 4)*q^281 + (-8*zeta^11 
- 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 - 8*zeta^4 + 8*zeta^3 - 16*zeta^2 
- 8*zeta + 24)*q^282 + (24*zeta^11 - 24*zeta^10 + 12*zeta^8 - 24*zeta^7 - 
12*zeta^6 + 24*zeta^5 - 24*zeta^3 + 24*zeta^2 + 12*zeta - 24)*q^283 + 
(14*zeta^11 - 48*zeta^10 - 10*zeta^8 - 116*zeta^7 + 10*zeta^6 - 20*zeta^5 - 
34*zeta^4 - 14*zeta^3 - 20*zeta^2 - 10*zeta - 48)*q^284 + (32*zeta^11 - 
48*zeta^10 + 8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 - 16*zeta^4 - 32*zeta^3
+ 16*zeta^2 + 8*zeta - 24)*q^285 + (-32*zeta^11 + 24*zeta^10 - 20*zeta^8 - 
24*zeta^7 + 20*zeta^6 - 40*zeta^5 - 8*zeta^4 + 32*zeta^3 - 40*zeta^2 - 20*zeta +
8)*q^286 + (-2*zeta^11 + 12*zeta^10 + 4*zeta^8 - 12*zeta^7 - 4*zeta^6 + 8*zeta^5
+ 10*zeta^4 + 2*zeta^3 + 8*zeta^2 + 4*zeta - 10)*q^288 + (14*zeta^11 - 
38*zeta^10 - 5*zeta^8 + 20*zeta^7 + 5*zeta^6 - 10*zeta^5 - 24*zeta^4 - 14*zeta^3
- 10*zeta^2 - 5*zeta + 15)*q^289 + (20*zeta^11 - 16*zeta^10 + 12*zeta^8 - 
8*zeta^7 - 12*zeta^6 + 24*zeta^5 + 4*zeta^4 - 20*zeta^3 + 24*zeta^2 + 12*zeta - 
16)*q^290 + (-8*zeta^10 - 4*zeta^8 - 24*zeta^7 + 4*zeta^6 - 8*zeta^5 - 8*zeta^4 
- 8*zeta^2 - 4*zeta - 8)*q^291 + (-50*zeta^11 + 52*zeta^10 - 24*zeta^8 + 
96*zeta^7 + 24*zeta^6 - 48*zeta^5 + 2*zeta^4 + 50*zeta^3 - 48*zeta^2 - 24*zeta +
72)*q^292 + (-20*zeta^11 + 36*zeta^10 - 2*zeta^8 - 36*zeta^7 + 2*zeta^6 - 
4*zeta^5 + 16*zeta^4 + 20*zeta^3 - 4*zeta^2 - 2*zeta - 16)*q^293 + (-4*zeta^11 +
8*zeta^10 - 8*zeta^7 + 4*zeta^4 + 4*zeta^3 - 4)*q^295 + (-16*zeta^11 + 8*zeta^10
- 12*zeta^8 + 48*zeta^7 + 12*zeta^6 - 24*zeta^5 - 8*zeta^4 + 16*zeta^3 - 
24*zeta^2 - 12*zeta + 36)*q^296 + (-4*zeta^11 - 4*zeta^8 - 8*zeta^7 + 4*zeta^6 -
8*zeta^5 - 4*zeta^4 + 4*zeta^3 - 8*zeta^2 - 4*zeta)*q^297 + (2*zeta^11 + 
8*zeta^10 + 6*zeta^8 + 28*zeta^7 - 6*zeta^6 + 12*zeta^5 + 10*zeta^4 - 2*zeta^3 +
12*zeta^2 + 6*zeta + 8)*q^298 + (-28*zeta^11 + 56*zeta^10 + 28*zeta^4 + 
28*zeta^3)*q^299 + (-38*zeta^11 + 60*zeta^10 - 8*zeta^8 - 60*zeta^7 + 8*zeta^6 -
16*zeta^5 + 22*zeta^4 + 38*zeta^3 - 16*zeta^2 - 8*zeta - 22)*q^300 + 
(-36*zeta^11 + 24*zeta^10 - 24*zeta^8 - 24*zeta^7 + 24*zeta^6 - 48*zeta^5 - 
12*zeta^4 + 36*zeta^3 - 48*zeta^2 - 24*zeta + 12)*q^302 + (20*zeta^11 + 
20*zeta^8 - 80*zeta^7 - 20*zeta^6 + 40*zeta^5 + 20*zeta^4 - 20*zeta^3 + 
40*zeta^2 + 20*zeta - 60)*q^303 + (24*zeta^11 - 24*zeta^10 + 12*zeta^8 - 
24*zeta^7 - 12*zeta^6 + 24*zeta^5 - 24*zeta^3 + 24*zeta^2 + 12*zeta - 24)*q^304 
+ (78*zeta^11 - 56*zeta^10 + 50*zeta^8 - 12*zeta^7 - 50*zeta^6 + 100*zeta^5 + 
22*zeta^4 - 78*zeta^3 + 100*zeta^2 + 50*zeta - 56)*q^305 + (12*zeta^11 + 
8*zeta^10 + 16*zeta^8 - 64*zeta^7 - 16*zeta^6 + 32*zeta^5 + 20*zeta^4 - 
12*zeta^3 + 32*zeta^2 + 16*zeta - 48)*q^306 + (4*zeta^11 + 32*zeta^10 + 
20*zeta^8 - 32*zeta^7 - 20*zeta^6 + 40*zeta^5 + 36*zeta^4 - 4*zeta^3 + 40*zeta^2
+ 20*zeta - 36)*q^307 + (32*zeta^11 - 16*zeta^10 + 24*zeta^8 + 16*zeta^7 - 
24*zeta^6 + 48*zeta^5 + 16*zeta^4 - 32*zeta^3 + 48*zeta^2 + 24*zeta - 16)*q^309 
+ (-8*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 8*zeta^5 - 8*zeta^4 - 8*zeta^2
- 4*zeta + 12)*q^310 + (-32*zeta^11 + 40*zeta^10 - 12*zeta^8 + 56*zeta^7 + 
12*zeta^6 - 24*zeta^5 + 8*zeta^4 + 32*zeta^3 - 24*zeta^2 - 12*zeta + 40)*q^311 +
(-28*zeta^11 + 56*zeta^10 + 112*zeta^7 + 28*zeta^4 + 28*zeta^3 + 56)*q^312 + 
(-2*zeta^11 - 12*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 - 
14*zeta^4 + 2*zeta^3 - 16*zeta^2 - 8*zeta + 24)*q^313 + (60*zeta^11 - 44*zeta^10
+ 38*zeta^8 + 44*zeta^7 - 38*zeta^6 + 76*zeta^5 + 16*zeta^4 - 60*zeta^3 + 
76*zeta^2 + 38*zeta - 16)*q^314 + (16*zeta^11 + 16*zeta^10 + 24*zeta^8 - 
16*zeta^7 - 24*zeta^6 + 48*zeta^5 + 32*zeta^4 - 16*zeta^3 + 48*zeta^2 + 24*zeta 
- 32)*q^316 + (-20*zeta^11 + 20*zeta^10 - 10*zeta^8 + 40*zeta^7 + 10*zeta^6 - 
20*zeta^5 + 20*zeta^3 - 20*zeta^2 - 10*zeta + 30)*q^317 + (-12*zeta^11 + 
16*zeta^10 - 4*zeta^8 + 24*zeta^7 + 4*zeta^6 - 8*zeta^5 + 4*zeta^4 + 12*zeta^3 -
8*zeta^2 - 4*zeta + 16)*q^318 + (24*zeta^11 - 16*zeta^10 + 16*zeta^8 - 16*zeta^6
+ 32*zeta^5 + 8*zeta^4 - 24*zeta^3 + 32*zeta^2 + 16*zeta - 16)*q^319 + 
(-26*zeta^11 + 32*zeta^10 - 10*zeta^8 + 40*zeta^7 + 10*zeta^6 - 20*zeta^5 + 
6*zeta^4 + 26*zeta^3 - 20*zeta^2 - 10*zeta + 30)*q^320 + (-28*zeta^11 + 
24*zeta^10 - 16*zeta^8 - 24*zeta^7 + 16*zeta^6 - 32*zeta^5 - 4*zeta^4 + 
28*zeta^3 - 32*zeta^2 - 16*zeta + 4)*q^321 + (20*zeta^11 - 24*zeta^10 + 8*zeta^8
+ 24*zeta^7 - 8*zeta^6 + 16*zeta^5 - 4*zeta^4 - 20*zeta^3 + 16*zeta^2 + 8*zeta +
4)*q^323 + (-4*zeta^11 + 12*zeta^10 + 2*zeta^8 - 8*zeta^7 - 2*zeta^6 + 4*zeta^5 
+ 8*zeta^4 + 4*zeta^3 + 4*zeta^2 + 2*zeta - 6)*q^324 + (-56*zeta^11 + 60*zeta^10
- 26*zeta^8 + 68*zeta^7 + 26*zeta^6 - 52*zeta^5 + 4*zeta^4 + 56*zeta^3 - 
52*zeta^2 - 26*zeta + 60)*q^325 + (16*zeta^11 - 32*zeta^10 - 64*zeta^7 - 
16*zeta^4 - 16*zeta^3 - 32)*q^326 + (16*zeta^11 - 32*zeta^10 - 16*zeta^4 - 
16*zeta^3)*q^327 + (-14*zeta^11 - 14*zeta^8 + 14*zeta^6 - 28*zeta^5 - 14*zeta^4 
+ 14*zeta^3 - 28*zeta^2 - 14*zeta + 14)*q^328 + (-8*zeta^11 - 8*zeta^8 + 
8*zeta^6 - 16*zeta^5 - 8*zeta^4 + 8*zeta^3 - 16*zeta^2 - 8*zeta + 8)*q^330 + 
(8*zeta^11 - 8*zeta^10 + 4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 8*zeta^5 - 8*zeta^3 +
8*zeta^2 + 4*zeta - 12)*q^331 + (-28*zeta^11 + 64*zeta^10 + 4*zeta^8 + 
136*zeta^7 - 4*zeta^6 + 8*zeta^5 + 36*zeta^4 + 28*zeta^3 + 8*zeta^2 + 4*zeta + 
64)*q^332 + (8*zeta^11 + 8*zeta^8 + 16*zeta^7 - 8*zeta^6 + 16*zeta^5 + 8*zeta^4 
- 8*zeta^3 + 16*zeta^2 + 8*zeta)*q^333 + (-28*zeta^11 - 28*zeta^8 + 112*zeta^7 +
28*zeta^6 - 56*zeta^5 - 28*zeta^4 + 28*zeta^3 - 56*zeta^2 - 28*zeta + 84)*q^334 
+ (-8*zeta^11 - 16*zeta^10 - 16*zeta^8 + 16*zeta^7 + 16*zeta^6 - 32*zeta^5 - 
24*zeta^4 + 8*zeta^3 - 32*zeta^2 - 16*zeta + 24)*q^335 + (-16*zeta^11 + 
48*zeta^10 + 8*zeta^8 - 48*zeta^7 - 8*zeta^6 + 16*zeta^5 + 32*zeta^4 + 16*zeta^3
+ 16*zeta^2 + 8*zeta - 32)*q^337 + (16*zeta^11 + 10*zeta^10 + 21*zeta^8 - 
84*zeta^7 - 21*zeta^6 + 42*zeta^5 + 26*zeta^4 - 16*zeta^3 + 42*zeta^2 + 21*zeta 
- 63)*q^338 + (-52*zeta^11 + 64*zeta^10 - 20*zeta^8 + 88*zeta^7 + 20*zeta^6 - 
40*zeta^5 + 12*zeta^4 + 52*zeta^3 - 40*zeta^2 - 20*zeta + 64)*q^339 + 
(14*zeta^11 + 14*zeta^8 + 28*zeta^7 - 14*zeta^6 + 28*zeta^5 + 14*zeta^4 - 
14*zeta^3 + 28*zeta^2 + 14*zeta)*q^340 + (8*zeta^11 + 8*zeta^8 - 32*zeta^7 - 
8*zeta^6 + 16*zeta^5 + 8*zeta^4 - 8*zeta^3 + 16*zeta^2 + 8*zeta - 24)*q^341 + 
(-16*zeta^11 + 16*zeta^10 - 8*zeta^8 - 16*zeta^7 + 8*zeta^6 - 16*zeta^5 + 
16*zeta^3 - 16*zeta^2 - 8*zeta)*q^342 + (32*zeta^11 - 16*zeta^10 + 24*zeta^8 + 
16*zeta^7 - 24*zeta^6 + 48*zeta^5 + 16*zeta^4 - 32*zeta^3 + 48*zeta^2 + 24*zeta 
- 16)*q^344 + (-88*zeta^11 + 128*zeta^10 - 24*zeta^8 + 96*zeta^7 + 24*zeta^6 - 
48*zeta^5 + 40*zeta^4 + 88*zeta^3 - 48*zeta^2 - 24*zeta + 72)*q^345 + 
(-32*zeta^11 + 36*zeta^10 - 14*zeta^8 + 44*zeta^7 + 14*zeta^6 - 28*zeta^5 + 
4*zeta^4 + 32*zeta^3 - 28*zeta^2 - 14*zeta + 36)*q^346 + (54*zeta^11 - 
32*zeta^10 + 38*zeta^8 + 12*zeta^7 - 38*zeta^6 + 76*zeta^5 + 22*zeta^4 - 
54*zeta^3 + 76*zeta^2 + 38*zeta - 32)*q^347 + (-40*zeta^11 + 64*zeta^10 - 
8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 + 24*zeta^4 + 40*zeta^3 - 16*zeta^2 
- 8*zeta + 24)*q^348 + (-14*zeta^11 - 14*zeta^8 + 14*zeta^6 - 28*zeta^5 - 
14*zeta^4 + 14*zeta^3 - 28*zeta^2 - 14*zeta + 14)*q^349 + (-12*zeta^11 + 
16*zeta^10 - 4*zeta^8 - 16*zeta^7 + 4*zeta^6 - 8*zeta^5 + 4*zeta^4 + 12*zeta^3 -
8*zeta^2 - 4*zeta - 4)*q^351 + (16*zeta^11 - 20*zeta^10 + 6*zeta^8 - 24*zeta^7 -
6*zeta^6 + 12*zeta^5 - 4*zeta^4 - 16*zeta^3 + 12*zeta^2 + 6*zeta - 18)*q^352 + 
(38*zeta^11 - 36*zeta^10 + 20*zeta^8 - 32*zeta^7 - 20*zeta^6 + 40*zeta^5 + 
2*zeta^4 - 38*zeta^3 + 40*zeta^2 + 20*zeta - 36)*q^353 + (32*zeta^11 - 
48*zeta^10 + 8*zeta^8 - 80*zeta^7 - 8*zeta^6 + 16*zeta^5 - 16*zeta^4 - 32*zeta^3
+ 16*zeta^2 + 8*zeta - 48)*q^354 + (52*zeta^11 - 80*zeta^10 + 12*zeta^8 - 
48*zeta^7 - 12*zeta^6 + 24*zeta^5 - 28*zeta^4 - 52*zeta^3 + 24*zeta^2 + 12*zeta 
- 36)*q^355 + (32*zeta^11 + 4*zeta^10 + 34*zeta^8 - 4*zeta^7 - 34*zeta^6 + 
68*zeta^5 + 36*zeta^4 - 32*zeta^3 + 68*zeta^2 + 34*zeta - 36)*q^356 + 
(26*zeta^11 - 12*zeta^10 + 20*zeta^8 + 12*zeta^7 - 20*zeta^6 + 40*zeta^5 + 
14*zeta^4 - 26*zeta^3 + 40*zeta^2 + 20*zeta - 14)*q^358 + (4*zeta^11 + 4*zeta^10
+ 6*zeta^8 - 24*zeta^7 - 6*zeta^6 + 12*zeta^5 + 8*zeta^4 - 4*zeta^3 + 12*zeta^2 
+ 6*zeta - 18)*q^359 + (-16*zeta^11 + 8*zeta^10 - 12*zeta^8 - 8*zeta^7 + 
12*zeta^6 - 24*zeta^5 - 8*zeta^4 + 16*zeta^3 - 24*zeta^2 - 12*zeta + 8)*q^360 + 
(-11*zeta^11 - 11*zeta^8 - 22*zeta^7 + 11*zeta^6 - 22*zeta^5 - 11*zeta^4 + 
11*zeta^3 - 22*zeta^2 - 11*zeta)*q^361 + (2*zeta^11 + 8*zeta^10 + 6*zeta^8 - 
24*zeta^7 - 6*zeta^6 + 12*zeta^5 + 10*zeta^4 - 2*zeta^3 + 12*zeta^2 + 6*zeta - 
18)*q^362 + (-14*zeta^11 + 28*zeta^10 - 28*zeta^7 + 14*zeta^4 + 14*zeta^3 - 
14)*q^363 + (-14*zeta^11 - 44*zeta^10 - 36*zeta^8 + 44*zeta^7 + 36*zeta^6 - 
72*zeta^5 - 58*zeta^4 + 14*zeta^3 - 72*zeta^2 - 36*zeta + 58)*q^365 + 
(12*zeta^11 - 32*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 8*zeta^5 - 
20*zeta^4 - 12*zeta^3 - 8*zeta^2 - 4*zeta + 12)*q^366 + (24*zeta^11 - 32*zeta^10
+ 8*zeta^8 - 48*zeta^7 - 8*zeta^6 + 16*zeta^5 - 8*zeta^4 - 24*zeta^3 + 16*zeta^2
+ 8*zeta - 32)*q^367 + (-54*zeta^11 + 48*zeta^10 - 30*zeta^8 + 36*zeta^7 + 
30*zeta^6 - 60*zeta^5 - 6*zeta^4 + 54*zeta^3 - 60*zeta^2 - 30*zeta + 48)*q^368 +
(-20*zeta^11 + 32*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 8*zeta^5 + 
12*zeta^4 + 20*zeta^3 - 8*zeta^2 - 4*zeta + 12)*q^369 + (-8*zeta^11 - 8*zeta^8 +
8*zeta^6 - 16*zeta^5 - 8*zeta^4 + 8*zeta^3 - 16*zeta^2 - 8*zeta + 8)*q^370 + 
(64*zeta^11 - 48*zeta^10 + 40*zeta^8 + 48*zeta^7 - 40*zeta^6 + 80*zeta^5 + 
16*zeta^4 - 64*zeta^3 + 80*zeta^2 + 40*zeta - 16)*q^372 + (28*zeta^11 - 
12*zeta^10 + 22*zeta^8 - 88*zeta^7 - 22*zeta^6 + 44*zeta^5 + 16*zeta^4 - 
28*zeta^3 + 44*zeta^2 + 22*zeta - 66)*q^373 + (24*zeta^11 - 40*zeta^10 + 
4*zeta^8 - 72*zeta^7 - 4*zeta^6 + 8*zeta^5 - 16*zeta^4 - 24*zeta^3 + 8*zeta^2 + 
4*zeta - 40)*q^374 + (-32*zeta^11 + 32*zeta^10 - 16*zeta^8 + 32*zeta^7 + 
16*zeta^6 - 32*zeta^5 + 32*zeta^3 - 32*zeta^2 - 16*zeta + 32)*q^375 + (4*zeta^11
- 16*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 8*zeta^5 - 12*zeta^4 - 4*zeta^3
- 8*zeta^2 - 4*zeta + 12)*q^376 + (4*zeta^11 - 24*zeta^10 - 8*zeta^8 + 24*zeta^7
+ 8*zeta^6 - 16*zeta^5 - 20*zeta^4 - 4*zeta^3 - 16*zeta^2 - 8*zeta + 20)*q^377 +
(36*zeta^11 - 40*zeta^10 + 16*zeta^8 + 40*zeta^7 - 16*zeta^6 + 32*zeta^5 - 
4*zeta^4 - 36*zeta^3 + 32*zeta^2 + 16*zeta + 4)*q^379 + (-32*zeta^11 + 
40*zeta^10 - 12*zeta^8 + 48*zeta^7 + 12*zeta^6 - 24*zeta^5 + 8*zeta^4 + 
32*zeta^3 - 24*zeta^2 - 12*zeta + 36)*q^380 + (-24*zeta^11 + 32*zeta^10 - 
8*zeta^8 + 48*zeta^7 + 8*zeta^6 - 16*zeta^5 + 8*zeta^4 + 24*zeta^3 - 16*zeta^2 -
8*zeta + 32)*q^381 + (-54*zeta^11 + 72*zeta^10 - 18*zeta^8 + 108*zeta^7 + 
18*zeta^6 - 36*zeta^5 + 18*zeta^4 + 54*zeta^3 - 36*zeta^2 - 18*zeta + 72)*q^382 
+ (-40*zeta^11 + 32*zeta^10 - 24*zeta^8 + 96*zeta^7 + 24*zeta^6 - 48*zeta^5 - 
8*zeta^4 + 40*zeta^3 - 48*zeta^2 - 24*zeta + 72)*q^383 + (54*zeta^11 - 
20*zeta^10 + 44*zeta^8 + 20*zeta^7 - 44*zeta^6 + 88*zeta^5 + 34*zeta^4 - 
54*zeta^3 + 88*zeta^2 + 44*zeta - 34)*q^384 + (50*zeta^11 - 44*zeta^10 + 
28*zeta^8 + 44*zeta^7 - 28*zeta^6 + 56*zeta^5 + 6*zeta^4 - 50*zeta^3 + 56*zeta^2
+ 28*zeta - 6)*q^386 + (16*zeta^11 - 32*zeta^10 - 16*zeta^4 - 16*zeta^3)*q^387 +
(28*zeta^11 - 36*zeta^10 + 10*zeta^8 - 52*zeta^7 - 10*zeta^6 + 20*zeta^5 - 
8*zeta^4 - 28*zeta^3 + 20*zeta^2 + 10*zeta - 36)*q^388 + (-44*zeta^11 + 
40*zeta^10 - 24*zeta^8 + 32*zeta^7 + 24*zeta^6 - 48*zeta^5 - 4*zeta^4 + 
44*zeta^3 - 48*zeta^2 - 24*zeta + 40)*q^389 + (-8*zeta^11 + 24*zeta^10 + 
4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 8*zeta^5 + 16*zeta^4 + 8*zeta^3 + 8*zeta^2 + 
4*zeta - 12)*q^390 + (-24*zeta^11 + 40*zeta^10 - 4*zeta^8 - 40*zeta^7 + 4*zeta^6
- 8*zeta^5 + 16*zeta^4 + 24*zeta^3 - 8*zeta^2 - 4*zeta - 16)*q^391 + 
(-24*zeta^11 - 16*zeta^10 - 32*zeta^8 + 16*zeta^7 + 32*zeta^6 - 64*zeta^5 - 
40*zeta^4 + 24*zeta^3 - 64*zeta^2 - 32*zeta + 40)*q^393 + (4*zeta^10 + 2*zeta^8 
- 8*zeta^7 - 2*zeta^6 + 4*zeta^5 + 4*zeta^4 + 4*zeta^2 + 2*zeta - 6)*q^394 + 
(-88*zeta^11 + 64*zeta^10 - 56*zeta^8 + 16*zeta^7 + 56*zeta^6 - 112*zeta^5 - 
24*zeta^4 + 88*zeta^3 - 112*zeta^2 - 56*zeta + 64)*q^395 + (-28*zeta^11 + 
32*zeta^10 - 12*zeta^8 + 40*zeta^7 + 12*zeta^6 - 24*zeta^5 + 4*zeta^4 + 
28*zeta^3 - 24*zeta^2 - 12*zeta + 32)*q^396 + (6*zeta^11 + 20*zeta^10 + 
16*zeta^8 - 64*zeta^7 - 16*zeta^6 + 32*zeta^5 + 26*zeta^4 - 6*zeta^3 + 32*zeta^2
+ 16*zeta - 48)*q^397 + (32*zeta^11 - 16*zeta^10 + 24*zeta^8 + 16*zeta^7 - 
24*zeta^6 + 48*zeta^5 + 16*zeta^4 - 32*zeta^3 + 48*zeta^2 + 24*zeta - 16)*q^398 
+ (-21*zeta^11 - 6*zeta^10 - 24*zeta^8 + 6*zeta^7 + 24*zeta^6 - 48*zeta^5 - 
27*zeta^4 + 21*zeta^3 - 48*zeta^2 - 24*zeta + 27)*q^400 + (4*zeta^11 - 
24*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 - 20*zeta^4 - 4*zeta^3 
- 16*zeta^2 - 8*zeta + 24)*q^401 + (16*zeta^11 - 32*zeta^10 - 64*zeta^7 - 
16*zeta^4 - 16*zeta^3 - 32)*q^402 + (28*zeta^11 - 48*zeta^10 + 4*zeta^8 - 
88*zeta^7 - 4*zeta^6 + 8*zeta^5 - 20*zeta^4 - 28*zeta^3 + 8*zeta^2 + 4*zeta - 
48)*q^403 + (10*zeta^11 + 40*zeta^10 + 30*zeta^8 - 120*zeta^7 - 30*zeta^6 + 
60*zeta^5 + 50*zeta^4 - 10*zeta^3 + 60*zeta^2 + 30*zeta - 90)*q^404 + 
(-8*zeta^10 - 4*zeta^8 + 8*zeta^7 + 4*zeta^6 - 8*zeta^5 - 8*zeta^4 - 8*zeta^2 - 
4*zeta + 8)*q^405 + (8*zeta^11 - 16*zeta^10 + 16*zeta^7 - 8*zeta^4 - 8*zeta^3 + 
8)*q^407 + (-4*zeta^11 - 40*zeta^10 - 24*zeta^8 + 96*zeta^7 + 24*zeta^6 - 
48*zeta^5 - 44*zeta^4 + 4*zeta^3 - 48*zeta^2 - 24*zeta + 72)*q^408 + (24*zeta^11
- 4*zeta^10 + 22*zeta^8 + 36*zeta^7 - 22*zeta^6 + 44*zeta^5 + 20*zeta^4 - 
24*zeta^3 + 44*zeta^2 + 22*zeta - 4)*q^409 + (14*zeta^11 - 8*zeta^10 + 10*zeta^8
+ 4*zeta^7 - 10*zeta^6 + 20*zeta^5 + 6*zeta^4 - 14*zeta^3 + 20*zeta^2 + 10*zeta 
- 8)*q^410 + (-40*zeta^11 + 80*zeta^10 + 40*zeta^4 + 40*zeta^3)*q^411 + 
(56*zeta^11 - 56*zeta^10 + 28*zeta^8 + 56*zeta^7 - 28*zeta^6 + 56*zeta^5 - 
56*zeta^3 + 56*zeta^2 + 28*zeta)*q^412 + (20*zeta^11 - 24*zeta^10 + 8*zeta^8 + 
24*zeta^7 - 8*zeta^6 + 16*zeta^5 - 4*zeta^4 - 20*zeta^3 + 16*zeta^2 + 8*zeta + 
4)*q^414 + (-40*zeta^11 + 64*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 
16*zeta^5 + 24*zeta^4 + 40*zeta^3 - 16*zeta^2 - 8*zeta + 24)*q^415 + 
(-14*zeta^11 + 4*zeta^10 - 12*zeta^8 - 16*zeta^7 + 12*zeta^6 - 24*zeta^5 - 
10*zeta^4 + 14*zeta^3 - 24*zeta^2 - 12*zeta + 4)*q^416 + (56*zeta^11 - 
32*zeta^10 + 40*zeta^8 + 16*zeta^7 - 40*zeta^6 + 80*zeta^5 + 24*zeta^4 - 
56*zeta^3 + 80*zeta^2 + 40*zeta - 32)*q^417 + (8*zeta^11 + 8*zeta^8 - 32*zeta^7 
- 8*zeta^6 + 16*zeta^5 + 8*zeta^4 - 8*zeta^3 + 16*zeta^2 + 8*zeta - 24)*q^418 + 
(-40*zeta^11 + 72*zeta^10 - 4*zeta^8 - 72*zeta^7 + 4*zeta^6 - 8*zeta^5 + 
32*zeta^4 + 40*zeta^3 - 8*zeta^2 - 4*zeta - 32)*q^419 + (-38*zeta^11 + 
12*zeta^10 - 32*zeta^8 - 12*zeta^7 + 32*zeta^6 - 64*zeta^5 - 26*zeta^4 + 
38*zeta^3 - 64*zeta^2 - 32*zeta + 26)*q^421 + (-24*zeta^11 - 8*zeta^10 - 
28*zeta^8 + 112*zeta^7 + 28*zeta^6 - 56*zeta^5 - 32*zeta^4 + 24*zeta^3 - 
56*zeta^2 - 28*zeta + 84)*q^422 + (-16*zeta^11 + 16*zeta^10 - 8*zeta^8 + 
16*zeta^7 + 8*zeta^6 - 16*zeta^5 + 16*zeta^3 - 16*zeta^2 - 8*zeta + 16)*q^423 + 
(-2*zeta^11 + 8*zeta^10 + 2*zeta^8 + 20*zeta^7 - 2*zeta^6 + 4*zeta^5 + 6*zeta^4 
+ 2*zeta^3 + 4*zeta^2 + 2*zeta + 8)*q^424 + (-34*zeta^11 + 24*zeta^10 - 
22*zeta^8 + 88*zeta^7 + 22*zeta^6 - 44*zeta^5 - 10*zeta^4 + 34*zeta^3 - 
44*zeta^2 - 22*zeta + 66)*q^425 + (76*zeta^11 - 72*zeta^10 + 40*zeta^8 + 
72*zeta^7 - 40*zeta^6 + 80*zeta^5 + 4*zeta^4 - 76*zeta^3 + 80*zeta^2 + 40*zeta -
4)*q^426 + (-54*zeta^11 + 44*zeta^10 - 32*zeta^8 - 44*zeta^7 + 32*zeta^6 - 
64*zeta^5 - 10*zeta^4 + 54*zeta^3 - 64*zeta^2 - 32*zeta + 10)*q^428 + 
(-24*zeta^11 + 16*zeta^10 - 16*zeta^8 + 64*zeta^7 + 16*zeta^6 - 32*zeta^5 - 
8*zeta^4 + 24*zeta^3 - 32*zeta^2 - 16*zeta + 48)*q^429 + (-8*zeta^11 - 8*zeta^8 
- 16*zeta^7 + 8*zeta^6 - 16*zeta^5 - 8*zeta^4 + 8*zeta^3 - 16*zeta^2 - 
8*zeta)*q^430 + (-58*zeta^11 + 48*zeta^10 - 34*zeta^8 + 28*zeta^7 + 34*zeta^6 - 
68*zeta^5 - 10*zeta^4 + 58*zeta^3 - 68*zeta^2 - 34*zeta + 48)*q^431 + 
(-12*zeta^11 + 12*zeta^10 - 6*zeta^8 + 24*zeta^7 + 6*zeta^6 - 12*zeta^5 + 
12*zeta^3 - 12*zeta^2 - 6*zeta + 18)*q^432 + (10*zeta^11 - 32*zeta^10 - 6*zeta^8
+ 32*zeta^7 + 6*zeta^6 - 12*zeta^5 - 22*zeta^4 - 10*zeta^3 - 12*zeta^2 - 6*zeta 
+ 22)*q^433 + (-8*zeta^11 - 48*zeta^10 - 32*zeta^8 + 48*zeta^7 + 32*zeta^6 - 
64*zeta^5 - 56*zeta^4 + 8*zeta^3 - 64*zeta^2 - 32*zeta + 56)*q^435 + 
(-24*zeta^11 + 16*zeta^10 - 16*zeta^8 + 64*zeta^7 + 16*zeta^6 - 32*zeta^5 - 
8*zeta^4 + 24*zeta^3 - 32*zeta^2 - 16*zeta + 48)*q^436 + (-32*zeta^11 + 
16*zeta^10 - 24*zeta^8 - 16*zeta^7 + 24*zeta^6 - 48*zeta^5 - 16*zeta^4 + 
32*zeta^3 - 48*zeta^2 - 24*zeta + 16)*q^437 + (4*zeta^11 - 24*zeta^10 - 8*zeta^8
- 64*zeta^7 + 8*zeta^6 - 16*zeta^5 - 20*zeta^4 - 4*zeta^3 - 16*zeta^2 - 8*zeta -
24)*q^438 + (32*zeta^11 - 16*zeta^10 + 24*zeta^8 - 96*zeta^7 - 24*zeta^6 + 
48*zeta^5 + 16*zeta^4 - 32*zeta^3 + 48*zeta^2 + 24*zeta - 72)*q^439 + 
(-4*zeta^11 + 16*zeta^10 + 4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 8*zeta^5 + 
12*zeta^4 + 4*zeta^3 + 8*zeta^2 + 4*zeta - 12)*q^440 + (-98*zeta^11 + 84*zeta^10
- 56*zeta^8 - 84*zeta^7 + 56*zeta^6 - 112*zeta^5 - 14*zeta^4 + 98*zeta^3 - 
112*zeta^2 - 56*zeta + 14)*q^442 + (-60*zeta^11 + 84*zeta^10 - 18*zeta^8 + 
72*zeta^7 + 18*zeta^6 - 36*zeta^5 + 24*zeta^4 + 60*zeta^3 - 36*zeta^2 - 18*zeta 
+ 54)*q^443 + (56*zeta^11 - 64*zeta^10 + 24*zeta^8 - 80*zeta^7 - 24*zeta^6 + 
48*zeta^5 - 8*zeta^4 - 56*zeta^3 + 48*zeta^2 + 24*zeta - 64)*q^444 + 
(-90*zeta^11 + 64*zeta^10 - 58*zeta^8 + 12*zeta^7 + 58*zeta^6 - 116*zeta^5 - 
26*zeta^4 + 90*zeta^3 - 116*zeta^2 - 58*zeta + 64)*q^445 + (24*zeta^11 - 
16*zeta^10 + 16*zeta^8 - 64*zeta^7 - 16*zeta^6 + 32*zeta^5 + 8*zeta^4 - 
24*zeta^3 + 32*zeta^2 + 16*zeta - 48)*q^446 + (-20*zeta^11 - 24*zeta^10 - 
32*zeta^8 + 24*zeta^7 + 32*zeta^6 - 64*zeta^5 - 44*zeta^4 + 20*zeta^3 - 
64*zeta^2 - 32*zeta + 44)*q^447 + (22*zeta^11 - 12*zeta^10 + 16*zeta^8 + 
12*zeta^7 - 16*zeta^6 + 32*zeta^5 + 10*zeta^4 - 22*zeta^3 + 32*zeta^2 + 16*zeta 
- 10)*q^449 + (16*zeta^11 - 4*zeta^10 + 14*zeta^8 - 56*zeta^7 - 14*zeta^6 + 
28*zeta^5 + 12*zeta^4 - 16*zeta^3 + 28*zeta^2 + 14*zeta - 42)*q^450 + 
(28*zeta^11 - 24*zeta^10 + 16*zeta^8 - 16*zeta^7 - 16*zeta^6 + 32*zeta^5 + 
4*zeta^4 - 28*zeta^3 + 32*zeta^2 + 16*zeta - 24)*q^451 + (-42*zeta^11 + 
80*zeta^10 - 2*zeta^8 + 156*zeta^7 + 2*zeta^6 - 4*zeta^5 + 38*zeta^4 + 42*zeta^3
- 4*zeta^2 - 2*zeta + 80)*q^452 + (-48*zeta^11 + 48*zeta^10 - 24*zeta^8 + 
96*zeta^7 + 24*zeta^6 - 48*zeta^5 + 48*zeta^3 - 48*zeta^2 - 24*zeta + 72)*q^453 
+ (-44*zeta^11 + 48*zeta^10 - 20*zeta^8 - 48*zeta^7 + 20*zeta^6 - 40*zeta^5 + 
4*zeta^4 + 44*zeta^3 - 40*zeta^2 - 20*zeta - 4)*q^454 + (32*zeta^11 - 16*zeta^10
+ 24*zeta^8 + 16*zeta^7 - 24*zeta^6 + 48*zeta^5 + 16*zeta^4 - 32*zeta^3 + 
48*zeta^2 + 24*zeta - 16)*q^456 + (36*zeta^11 - 36*zeta^10 + 18*zeta^8 - 
72*zeta^7 - 18*zeta^6 + 36*zeta^5 - 36*zeta^3 + 36*zeta^2 + 18*zeta - 54)*q^457 
+ (-18*zeta^11 + 28*zeta^10 - 4*zeta^8 + 48*zeta^7 + 4*zeta^6 - 8*zeta^5 + 
10*zeta^4 + 18*zeta^3 - 8*zeta^2 - 4*zeta + 28)*q^458 + (20*zeta^11 - 24*zeta^10
+ 8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 - 4*zeta^4 - 20*zeta^3 + 16*zeta^2
+ 8*zeta - 24)*q^459 + (84*zeta^11 - 112*zeta^10 + 28*zeta^8 - 112*zeta^7 - 
28*zeta^6 + 56*zeta^5 - 28*zeta^4 - 84*zeta^3 + 56*zeta^2 + 28*zeta - 84)*q^460 
+ (20*zeta^11 - 36*zeta^10 + 2*zeta^8 + 36*zeta^7 - 2*zeta^6 + 4*zeta^5 - 
16*zeta^4 - 20*zeta^3 + 4*zeta^2 + 2*zeta + 16)*q^461 + (28*zeta^11 + 8*zeta^10 
+ 32*zeta^8 - 8*zeta^7 - 32*zeta^6 + 64*zeta^5 + 36*zeta^4 - 28*zeta^3 + 
64*zeta^2 + 32*zeta - 36)*q^463 + (36*zeta^11 - 48*zeta^10 + 12*zeta^8 - 
48*zeta^7 - 12*zeta^6 + 24*zeta^5 - 12*zeta^4 - 36*zeta^3 + 24*zeta^2 + 12*zeta 
- 36)*q^464 + (-8*zeta^11 - 8*zeta^8 - 16*zeta^7 + 8*zeta^6 - 16*zeta^5 - 
8*zeta^4 + 8*zeta^3 - 16*zeta^2 - 8*zeta)*q^465 + (44*zeta^11 - 72*zeta^10 + 
8*zeta^8 - 128*zeta^7 - 8*zeta^6 + 16*zeta^5 - 28*zeta^4 - 44*zeta^3 + 16*zeta^2
+ 8*zeta - 72)*q^466 + (12*zeta^11 + 16*zeta^10 + 20*zeta^8 - 80*zeta^7 - 
20*zeta^6 + 40*zeta^5 + 28*zeta^4 - 12*zeta^3 + 40*zeta^2 + 20*zeta - 60)*q^467 
+ (52*zeta^11 - 32*zeta^10 + 36*zeta^8 + 32*zeta^7 - 36*zeta^6 + 72*zeta^5 + 
20*zeta^4 - 52*zeta^3 + 72*zeta^2 + 36*zeta - 20)*q^468 + (-4*zeta^11 + 
8*zeta^10 - 8*zeta^7 + 4*zeta^4 + 4*zeta^3 - 4)*q^470 + (52*zeta^11 - 40*zeta^10
+ 32*zeta^8 - 128*zeta^7 - 32*zeta^6 + 64*zeta^5 + 12*zeta^4 - 52*zeta^3 + 
64*zeta^2 + 32*zeta - 96)*q^471 + (24*zeta^11 - 40*zeta^10 + 4*zeta^8 - 
72*zeta^7 - 4*zeta^6 + 8*zeta^5 - 16*zeta^4 - 24*zeta^3 + 8*zeta^2 + 4*zeta - 
40)*q^472 + (-32*zeta^11 + 32*zeta^10 - 16*zeta^8 + 32*zeta^7 + 16*zeta^6 - 
32*zeta^5 + 32*zeta^3 - 32*zeta^2 - 16*zeta + 32)*q^473 + (-16*zeta^11 + 
32*zeta^10 + 16*zeta^4 + 16*zeta^3)*q^474 + (12*zeta^11 - 32*zeta^10 - 4*zeta^8 
+ 32*zeta^7 + 4*zeta^6 - 8*zeta^5 - 20*zeta^4 - 12*zeta^3 - 8*zeta^2 - 4*zeta + 
20)*q^475 + (4*zeta^11 - 8*zeta^10 + 8*zeta^7 - 4*zeta^4 - 4*zeta^3 + 4)*q^477 +
(8*zeta^11 - 20*zeta^10 - 2*zeta^8 + 8*zeta^7 + 2*zeta^6 - 4*zeta^5 - 12*zeta^4 
- 8*zeta^3 - 4*zeta^2 - 2*zeta + 6)*q^478 + (24*zeta^11 - 40*zeta^10 + 4*zeta^8 
- 72*zeta^7 - 4*zeta^6 + 8*zeta^5 - 16*zeta^4 - 24*zeta^3 + 8*zeta^2 + 4*zeta - 
40)*q^479 + (-56*zeta^11 + 40*zeta^10 - 36*zeta^8 + 8*zeta^7 + 36*zeta^6 - 
72*zeta^5 - 16*zeta^4 + 56*zeta^3 - 72*zeta^2 - 36*zeta + 40)*q^480 + 
(-24*zeta^11 + 16*zeta^10 - 16*zeta^8 + 64*zeta^7 + 16*zeta^6 - 32*zeta^5 - 
8*zeta^4 + 24*zeta^3 - 32*zeta^2 - 16*zeta + 48)*q^481 + (-24*zeta^11 + 
12*zeta^10 - 18*zeta^8 - 12*zeta^7 + 18*zeta^6 - 36*zeta^5 - 12*zeta^4 + 
24*zeta^3 - 36*zeta^2 - 18*zeta + 12)*q^482 + (-35*zeta^11 + 14*zeta^10 - 
28*zeta^8 - 14*zeta^7 + 28*zeta^6 - 56*zeta^5 - 21*zeta^4 + 35*zeta^3 - 
56*zeta^2 - 28*zeta + 21)*q^484 + (-16*zeta^11 + 20*zeta^10 - 6*zeta^8 + 
24*zeta^7 + 6*zeta^6 - 12*zeta^5 + 4*zeta^4 + 16*zeta^3 - 12*zeta^2 - 6*zeta + 
18)*q^485 + (6*zeta^11 - 8*zeta^10 + 2*zeta^8 - 12*zeta^7 - 2*zeta^6 + 4*zeta^5 
- 2*zeta^4 - 6*zeta^3 + 4*zeta^2 + 2*zeta - 8)*q^486 + (68*zeta^11 - 64*zeta^10 
+ 36*zeta^8 - 56*zeta^7 - 36*zeta^6 + 72*zeta^5 + 4*zeta^4 - 68*zeta^3 + 
72*zeta^2 + 36*zeta - 64)*q^487 + (-38*zeta^11 + 40*zeta^10 - 18*zeta^8 + 
72*zeta^7 + 18*zeta^6 - 36*zeta^5 + 2*zeta^4 + 38*zeta^3 - 36*zeta^2 - 18*zeta +
54)*q^488 + (32*zeta^11 + 32*zeta^8 - 32*zeta^6 + 64*zeta^5 + 32*zeta^4 - 
32*zeta^3 + 64*zeta^2 + 32*zeta - 32)*q^489 + (46*zeta^11 - 44*zeta^10 + 
24*zeta^8 + 44*zeta^7 - 24*zeta^6 + 48*zeta^5 + 2*zeta^4 - 46*zeta^3 + 48*zeta^2
+ 24*zeta - 2)*q^491 + (-44*zeta^11 + 48*zeta^10 - 20*zeta^8 + 80*zeta^7 + 
20*zeta^6 - 40*zeta^5 + 4*zeta^4 + 44*zeta^3 - 40*zeta^2 - 20*zeta + 60)*q^492 +
(-36*zeta^11 + 32*zeta^10 - 20*zeta^8 + 24*zeta^7 + 20*zeta^6 - 40*zeta^5 - 
4*zeta^4 + 36*zeta^3 - 40*zeta^2 - 20*zeta + 32)*q^493 + (28*zeta^11 - 
48*zeta^10 + 4*zeta^8 - 88*zeta^7 - 4*zeta^6 + 8*zeta^5 - 20*zeta^4 - 28*zeta^3 
+ 8*zeta^2 + 4*zeta - 48)*q^494 + (24*zeta^11 - 32*zeta^10 + 8*zeta^8 - 
32*zeta^7 - 8*zeta^6 + 16*zeta^5 - 8*zeta^4 - 24*zeta^3 + 16*zeta^2 + 8*zeta - 
24)*q^495 + (24*zeta^11 - 24*zeta^10 + 12*zeta^8 + 24*zeta^7 - 12*zeta^6 + 
24*zeta^5 - 24*zeta^3 + 24*zeta^2 + 12*zeta)*q^496 + (-88*zeta^11 + 80*zeta^10 -
48*zeta^8 - 80*zeta^7 + 48*zeta^6 - 96*zeta^5 - 8*zeta^4 + 88*zeta^3 - 96*zeta^2
- 48*zeta + 8)*q^498 + (16*zeta^10 + 8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5
+ 16*zeta^4 + 16*zeta^2 + 8*zeta - 24)*q^499 + (16*zeta^10 + 8*zeta^8 + 
48*zeta^7 - 8*zeta^6 + 16*zeta^5 + 16*zeta^4 + 16*zeta^2 + 8*zeta + 16)*q^500 + 
(112*zeta^11 - 112*zeta^10 + 56*zeta^8 - 112*zeta^7 - 56*zeta^6 + 112*zeta^5 - 
112*zeta^3 + 112*zeta^2 + 56*zeta - 112)*q^501 + (-12*zeta^11 + 8*zeta^10 - 
8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 - 4*zeta^4 + 12*zeta^3 - 16*zeta^2 -
8*zeta + 24)*q^502 + (10*zeta^11 - 20*zeta^10 + 20*zeta^7 - 10*zeta^4 - 
10*zeta^3 + 10)*q^505 + (-16*zeta^11 + 8*zeta^10 - 12*zeta^8 + 48*zeta^7 + 
12*zeta^6 - 24*zeta^5 - 8*zeta^4 + 16*zeta^3 - 24*zeta^2 - 12*zeta + 36)*q^506 +
(-54*zeta^11 + 64*zeta^10 - 22*zeta^8 + 84*zeta^7 + 22*zeta^6 - 44*zeta^5 + 
10*zeta^4 + 54*zeta^3 - 44*zeta^2 - 22*zeta + 64)*q^507 + (-28*zeta^11 + 
48*zeta^10 - 4*zeta^8 + 88*zeta^7 + 4*zeta^6 - 8*zeta^5 + 20*zeta^4 + 28*zeta^3 
- 8*zeta^2 - 4*zeta + 48)*q^508 + (2*zeta^11 - 24*zeta^10 - 10*zeta^8 + 
40*zeta^7 + 10*zeta^6 - 20*zeta^5 - 22*zeta^4 - 2*zeta^3 - 20*zeta^2 - 10*zeta +
30)*q^509 + (-20*zeta^11 + 24*zeta^10 - 8*zeta^8 - 24*zeta^7 + 8*zeta^6 - 
16*zeta^5 + 4*zeta^4 + 20*zeta^3 - 16*zeta^2 - 8*zeta - 4)*q^510 + (33*zeta^11 -
54*zeta^10 + 6*zeta^8 + 54*zeta^7 - 6*zeta^6 + 12*zeta^5 - 21*zeta^4 - 33*zeta^3
+ 12*zeta^2 + 6*zeta + 21)*q^512 + (-8*zeta^11 + 16*zeta^10 + 8*zeta^4 + 
8*zeta^3)*q^513 + (24*zeta^11 - 52*zeta^10 - 2*zeta^8 - 108*zeta^7 + 2*zeta^6 - 
4*zeta^5 - 28*zeta^4 - 24*zeta^3 - 4*zeta^2 - 2*zeta - 52)*q^514 + (36*zeta^11 -
32*zeta^10 + 20*zeta^8 - 24*zeta^7 - 20*zeta^6 + 40*zeta^5 + 4*zeta^4 - 
36*zeta^3 + 40*zeta^2 + 20*zeta - 32)*q^515 + (48*zeta^11 - 32*zeta^10 + 
32*zeta^8 - 128*zeta^7 - 32*zeta^6 + 64*zeta^5 + 16*zeta^4 - 48*zeta^3 + 
64*zeta^2 + 32*zeta - 96)*q^516 + (8*zeta^11 + 8*zeta^8 - 8*zeta^6 + 16*zeta^5 +
8*zeta^4 - 8*zeta^3 + 16*zeta^2 + 8*zeta - 8)*q^517 + (-8*zeta^11 + 56*zeta^10 +
20*zeta^8 - 56*zeta^7 - 20*zeta^6 + 40*zeta^5 + 48*zeta^4 + 8*zeta^3 + 40*zeta^2
+ 20*zeta - 48)*q^519 + (28*zeta^11 - 28*zeta^10 + 14*zeta^8 - 56*zeta^7 - 
14*zeta^6 + 28*zeta^5 - 28*zeta^3 + 28*zeta^2 + 14*zeta - 42)*q^520 + 
(38*zeta^11 - 4*zeta^10 + 36*zeta^8 + 64*zeta^7 - 36*zeta^6 + 72*zeta^5 + 
34*zeta^4 - 38*zeta^3 + 72*zeta^2 + 36*zeta - 4)*q^521 + (16*zeta^11 - 
16*zeta^10 + 8*zeta^8 - 16*zeta^7 - 8*zeta^6 + 16*zeta^5 - 16*zeta^3 + 16*zeta^2
+ 8*zeta - 16)*q^522 + (-48*zeta^11 + 56*zeta^10 - 20*zeta^8 + 80*zeta^7 + 
20*zeta^6 - 40*zeta^5 + 8*zeta^4 + 48*zeta^3 - 40*zeta^2 - 20*zeta + 60)*q^523 +
(-28*zeta^11 + 56*zeta^10 - 56*zeta^7 + 28*zeta^4 + 28*zeta^3 - 28)*q^524 + 
(50*zeta^11 - 44*zeta^10 + 28*zeta^8 + 44*zeta^7 - 28*zeta^6 + 56*zeta^5 + 
6*zeta^4 - 50*zeta^3 + 56*zeta^2 + 28*zeta - 6)*q^526 + (8*zeta^11 + 24*zeta^10 
+ 20*zeta^8 - 80*zeta^7 - 20*zeta^6 + 40*zeta^5 + 32*zeta^4 - 8*zeta^3 + 
40*zeta^2 + 20*zeta - 60)*q^527 + (-12*zeta^11 - 12*zeta^8 - 24*zeta^7 + 
12*zeta^6 - 24*zeta^5 - 12*zeta^4 + 12*zeta^3 - 24*zeta^2 - 12*zeta)*q^528 + 
(77*zeta^11 - 64*zeta^10 + 45*zeta^8 - 38*zeta^7 - 45*zeta^6 + 90*zeta^5 + 
13*zeta^4 - 77*zeta^3 + 90*zeta^2 + 45*zeta - 64)*q^529 + (-4*zeta^11 + 
8*zeta^10 + 4*zeta^4 + 4*zeta^3)*q^530 + (-16*zeta^11 + 16*zeta^10 - 8*zeta^8 - 
16*zeta^7 + 8*zeta^6 - 16*zeta^5 + 16*zeta^3 - 16*zeta^2 - 8*zeta)*q^531 + 
(-18*zeta^11 - 4*zeta^10 - 20*zeta^8 + 4*zeta^7 + 20*zeta^6 - 40*zeta^5 - 
22*zeta^4 + 18*zeta^3 - 40*zeta^2 - 20*zeta + 22)*q^533 + (-12*zeta^11 + 
40*zeta^10 + 8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 + 28*zeta^4 + 12*zeta^3
+ 16*zeta^2 + 8*zeta - 24)*q^534 + (-4*zeta^11 + 8*zeta^10 + 16*zeta^7 + 
4*zeta^4 + 4*zeta^3 + 8)*q^535 + (40*zeta^11 - 48*zeta^10 + 16*zeta^8 - 
64*zeta^7 - 16*zeta^6 + 32*zeta^5 - 8*zeta^4 - 40*zeta^3 + 32*zeta^2 + 16*zeta -
48)*q^536 + (72*zeta^11 - 88*zeta^10 + 28*zeta^8 - 112*zeta^7 - 28*zeta^6 + 
56*zeta^5 - 16*zeta^4 - 72*zeta^3 + 56*zeta^2 + 28*zeta - 84)*q^537 + 
(30*zeta^11 - 32*zeta^10 + 14*zeta^8 + 32*zeta^7 - 14*zeta^6 + 28*zeta^5 - 
2*zeta^4 - 30*zeta^3 + 28*zeta^2 + 14*zeta + 2)*q^538 + (-8*zeta^11 - 8*zeta^10 
- 12*zeta^8 + 8*zeta^7 + 12*zeta^6 - 24*zeta^5 - 16*zeta^4 + 8*zeta^3 - 
24*zeta^2 - 12*zeta + 16)*q^540 + (-28*zeta^11 + 44*zeta^10 - 6*zeta^8 + 
24*zeta^7 + 6*zeta^6 - 12*zeta^5 + 16*zeta^4 + 28*zeta^3 - 12*zeta^2 - 6*zeta + 
18)*q^541 + (-32*zeta^11 + 56*zeta^10 - 4*zeta^8 + 104*zeta^7 + 4*zeta^6 - 
8*zeta^5 + 24*zeta^4 + 32*zeta^3 - 8*zeta^2 - 4*zeta + 56)*q^542 + (8*zeta^10 + 
4*zeta^8 + 24*zeta^7 - 4*zeta^6 + 8*zeta^5 + 8*zeta^4 + 8*zeta^2 + 4*zeta + 
8)*q^543 + (-14*zeta^11 + 28*zeta^10 + 14*zeta^4 + 14*zeta^3)*q^544 + 
(-8*zeta^11 - 16*zeta^10 - 16*zeta^8 + 16*zeta^7 + 16*zeta^6 - 32*zeta^5 - 
24*zeta^4 + 8*zeta^3 - 32*zeta^2 - 16*zeta + 24)*q^545 + (4*zeta^11 + 40*zeta^10
+ 24*zeta^8 - 40*zeta^7 - 24*zeta^6 + 48*zeta^5 + 44*zeta^4 - 4*zeta^3 + 
48*zeta^2 + 24*zeta - 44)*q^547 + (60*zeta^11 - 40*zeta^10 + 40*zeta^8 - 
160*zeta^7 - 40*zeta^6 + 80*zeta^5 + 20*zeta^4 - 60*zeta^3 + 80*zeta^2 + 40*zeta
- 120)*q^548 + (40*zeta^11 - 24*zeta^10 + 28*zeta^8 + 8*zeta^7 - 28*zeta^6 + 
56*zeta^5 + 16*zeta^4 - 40*zeta^3 + 56*zeta^2 + 28*zeta - 24)*q^549 + 
(10*zeta^11 - 24*zeta^10 - 2*zeta^8 - 52*zeta^7 + 2*zeta^6 - 4*zeta^5 - 
14*zeta^4 - 10*zeta^3 - 4*zeta^2 - 2*zeta - 24)*q^550 + (32*zeta^11 - 48*zeta^10
+ 8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 - 16*zeta^4 - 32*zeta^3 + 
16*zeta^2 + 8*zeta - 24)*q^551 + (-44*zeta^11 + 8*zeta^10 - 40*zeta^8 - 8*zeta^7
+ 40*zeta^6 - 80*zeta^5 - 36*zeta^4 + 44*zeta^3 - 80*zeta^2 - 40*zeta + 
36)*q^552 + (-38*zeta^11 + 36*zeta^10 - 20*zeta^8 - 36*zeta^7 + 20*zeta^6 - 
40*zeta^5 - 2*zeta^4 + 38*zeta^3 - 40*zeta^2 - 20*zeta + 2)*q^554 + (-48*zeta^11
+ 64*zeta^10 - 16*zeta^8 + 64*zeta^7 + 16*zeta^6 - 32*zeta^5 + 16*zeta^4 + 
48*zeta^3 - 32*zeta^2 - 16*zeta + 48)*q^555 + (-84*zeta^11 + 80*zeta^10 - 
44*zeta^8 + 72*zeta^7 + 44*zeta^6 - 88*zeta^5 - 4*zeta^4 + 84*zeta^3 - 88*zeta^2
- 44*zeta + 80)*q^556 + (26*zeta^11 + 26*zeta^8 + 52*zeta^7 - 26*zeta^6 + 
52*zeta^5 + 26*zeta^4 - 26*zeta^3 + 52*zeta^2 + 26*zeta)*q^557 + (-8*zeta^11 - 
16*zeta^10 - 16*zeta^8 + 64*zeta^7 + 16*zeta^6 - 32*zeta^5 - 24*zeta^4 + 
8*zeta^3 - 32*zeta^2 - 16*zeta + 48)*q^558 + (40*zeta^11 - 16*zeta^10 + 
32*zeta^8 + 16*zeta^7 - 32*zeta^6 + 64*zeta^5 + 24*zeta^4 - 40*zeta^3 + 
64*zeta^2 + 32*zeta - 24)*q^559 + (32*zeta^11 - 16*zeta^10 + 24*zeta^8 + 
16*zeta^7 - 24*zeta^6 + 48*zeta^5 + 16*zeta^4 - 32*zeta^3 + 48*zeta^2 + 24*zeta 
- 16)*q^561 + (-12*zeta^11 - 16*zeta^10 - 20*zeta^8 + 80*zeta^7 + 20*zeta^6 - 
40*zeta^5 - 28*zeta^4 + 12*zeta^3 - 40*zeta^2 - 20*zeta + 60)*q^562 + 
(-4*zeta^11 + 8*zeta^10 + 16*zeta^7 + 4*zeta^4 + 4*zeta^3 + 8)*q^563 + 
(-16*zeta^10 - 8*zeta^8 - 48*zeta^7 + 8*zeta^6 - 16*zeta^5 - 16*zeta^4 - 
16*zeta^2 - 8*zeta - 16)*q^564 + (-28*zeta^11 + 48*zeta^10 - 4*zeta^8 + 
16*zeta^7 + 4*zeta^6 - 8*zeta^5 + 20*zeta^4 + 28*zeta^3 - 8*zeta^2 - 4*zeta + 
12)*q^565 + (24*zeta^11 - 24*zeta^10 + 12*zeta^8 + 24*zeta^7 - 12*zeta^6 + 
24*zeta^5 - 24*zeta^3 + 24*zeta^2 + 12*zeta)*q^566 + (74*zeta^11 - 44*zeta^10 + 
52*zeta^8 + 44*zeta^7 - 52*zeta^6 + 104*zeta^5 + 30*zeta^4 - 74*zeta^3 + 
104*zeta^2 + 52*zeta - 30)*q^568 + (28*zeta^11 - 40*zeta^10 + 8*zeta^8 - 
32*zeta^7 - 8*zeta^6 + 16*zeta^5 - 12*zeta^4 - 28*zeta^3 + 16*zeta^2 + 8*zeta - 
24)*q^569 + (-8*zeta^11 - 8*zeta^8 - 16*zeta^7 + 8*zeta^6 - 16*zeta^5 - 8*zeta^4
+ 8*zeta^3 - 16*zeta^2 - 8*zeta)*q^570 + (12*zeta^11 + 16*zeta^10 + 20*zeta^8 + 
72*zeta^7 - 20*zeta^6 + 40*zeta^5 + 28*zeta^4 - 12*zeta^3 + 40*zeta^2 + 20*zeta 
+ 16)*q^571 + (4*zeta^11 - 40*zeta^10 - 16*zeta^8 + 64*zeta^7 + 16*zeta^6 - 
32*zeta^5 - 36*zeta^4 - 4*zeta^3 - 32*zeta^2 - 16*zeta + 48)*q^572 + 
(-36*zeta^11 + 72*zeta^10 - 72*zeta^7 + 36*zeta^4 + 36*zeta^3 - 36)*q^573 + 
(-10*zeta^11 + 68*zeta^10 + 24*zeta^8 - 68*zeta^7 - 24*zeta^6 + 48*zeta^5 + 
58*zeta^4 + 10*zeta^3 + 48*zeta^2 + 24*zeta - 58)*q^575 + (-20*zeta^11 + 
12*zeta^10 - 14*zeta^8 + 56*zeta^7 + 14*zeta^6 - 28*zeta^5 - 8*zeta^4 + 
20*zeta^3 - 28*zeta^2 - 14*zeta + 42)*q^576 + (52*zeta^11 - 28*zeta^10 + 
38*zeta^8 + 20*zeta^7 - 38*zeta^6 + 76*zeta^5 + 24*zeta^4 - 52*zeta^3 + 
76*zeta^2 + 38*zeta - 28)*q^577 + (39*zeta^11 - 68*zeta^10 + 5*zeta^8 - 
126*zeta^7 - 5*zeta^6 + 10*zeta^5 - 29*zeta^4 - 39*zeta^3 + 10*zeta^2 + 5*zeta -
68)*q^578 + (-8*zeta^11 + 40*zeta^10 + 12*zeta^8 - 48*zeta^7 - 12*zeta^6 + 
24*zeta^5 + 32*zeta^4 + 8*zeta^3 + 24*zeta^2 + 12*zeta - 36)*q^579 + (12*zeta^11
+ 40*zeta^10 + 32*zeta^8 - 40*zeta^7 - 32*zeta^6 + 64*zeta^5 + 52*zeta^4 - 
12*zeta^3 + 64*zeta^2 + 32*zeta - 52)*q^580 + (32*zeta^11 - 24*zeta^10 + 
20*zeta^8 + 24*zeta^7 - 20*zeta^6 + 40*zeta^5 + 8*zeta^4 - 32*zeta^3 + 40*zeta^2
+ 20*zeta - 8)*q^582 + (-8*zeta^11 + 8*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6
- 8*zeta^5 + 8*zeta^3 - 8*zeta^2 - 4*zeta + 12)*q^583 + (66*zeta^11 - 68*zeta^10
+ 32*zeta^8 - 72*zeta^7 - 32*zeta^6 + 64*zeta^5 - 2*zeta^4 - 66*zeta^3 + 
64*zeta^2 + 32*zeta - 68)*q^584 + (-28*zeta^11 + 16*zeta^10 - 20*zeta^8 - 
8*zeta^7 + 20*zeta^6 - 40*zeta^5 - 12*zeta^4 + 28*zeta^3 - 40*zeta^2 - 20*zeta +
16)*q^585 + (-2*zeta^11 - 36*zeta^10 - 20*zeta^8 + 80*zeta^7 + 20*zeta^6 - 
40*zeta^5 - 38*zeta^4 + 2*zeta^3 - 40*zeta^2 - 20*zeta + 60)*q^586 + (16*zeta^11
- 40*zeta^10 - 4*zeta^8 + 40*zeta^7 + 4*zeta^6 - 8*zeta^5 - 24*zeta^4 - 
16*zeta^3 - 8*zeta^2 - 4*zeta + 24)*q^587 + (-24*zeta^11 + 16*zeta^10 - 
16*zeta^8 - 16*zeta^7 + 16*zeta^6 - 32*zeta^5 - 8*zeta^4 + 24*zeta^3 - 32*zeta^2
- 16*zeta + 8)*q^589 + (-8*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 8*zeta^5 
- 8*zeta^4 - 8*zeta^2 - 4*zeta + 12)*q^590 + (4*zeta^11 + 4*zeta^8 + 8*zeta^7 - 
4*zeta^6 + 8*zeta^5 + 4*zeta^4 - 4*zeta^3 + 8*zeta^2 + 4*zeta)*q^591 + 
(-12*zeta^11 - 12*zeta^8 - 24*zeta^7 + 12*zeta^6 - 24*zeta^5 - 12*zeta^4 + 
12*zeta^3 - 24*zeta^2 - 12*zeta)*q^592 + (-18*zeta^11 + 8*zeta^10 - 14*zeta^8 + 
56*zeta^7 + 14*zeta^6 - 28*zeta^5 - 10*zeta^4 + 18*zeta^3 - 28*zeta^2 - 14*zeta 
+ 42)*q^593 + (12*zeta^11 - 8*zeta^10 + 8*zeta^8 + 8*zeta^7 - 8*zeta^6 + 
16*zeta^5 + 4*zeta^4 - 12*zeta^3 + 16*zeta^2 + 8*zeta - 4)*q^594 + (-18*zeta^11 
+ 52*zeta^10 + 8*zeta^8 - 52*zeta^7 - 8*zeta^6 + 16*zeta^5 + 34*zeta^4 + 
18*zeta^3 + 16*zeta^2 + 8*zeta - 34)*q^596 + (80*zeta^11 - 96*zeta^10 + 
32*zeta^8 - 128*zeta^7 - 32*zeta^6 + 64*zeta^5 - 16*zeta^4 - 80*zeta^3 + 
64*zeta^2 + 32*zeta - 96)*q^597 + (-28*zeta^11 + 56*zeta^10 + 112*zeta^7 + 
28*zeta^4 + 28*zeta^3 + 56)*q^598 + (-2*zeta^11 - 2*zeta^8 - 4*zeta^7 + 2*zeta^6
- 4*zeta^5 - 2*zeta^4 + 2*zeta^3 - 4*zeta^2 - 2*zeta)*q^599 + (24*zeta^11 - 
68*zeta^10 - 10*zeta^8 + 40*zeta^7 + 10*zeta^6 - 20*zeta^5 - 44*zeta^4 - 
24*zeta^3 - 20*zeta^2 - 10*zeta + 30)*q^600 + (-2*zeta^11 - 16*zeta^10 - 
10*zeta^8 + 16*zeta^7 + 10*zeta^6 - 20*zeta^5 - 18*zeta^4 + 2*zeta^3 - 20*zeta^2
- 10*zeta + 18)*q^601 + (-16*zeta^11 - 16*zeta^8 + 16*zeta^6 - 32*zeta^5 - 
16*zeta^4 + 16*zeta^3 - 32*zeta^2 - 16*zeta + 16)*q^603 + (24*zeta^11 - 
72*zeta^10 - 12*zeta^8 + 48*zeta^7 + 12*zeta^6 - 24*zeta^5 - 48*zeta^4 - 
24*zeta^3 - 24*zeta^2 - 12*zeta + 36)*q^604 + (42*zeta^11 - 28*zeta^10 + 
28*zeta^8 - 28*zeta^6 + 56*zeta^5 + 14*zeta^4 - 42*zeta^3 + 56*zeta^2 + 28*zeta 
- 28)*q^605 + (-80*zeta^11 + 120*zeta^10 - 20*zeta^8 + 200*zeta^7 + 20*zeta^6 - 
40*zeta^5 + 40*zeta^4 + 80*zeta^3 - 40*zeta^2 - 20*zeta + 120)*q^606 + 
(-40*zeta^11 + 32*zeta^10 - 24*zeta^8 + 96*zeta^7 + 24*zeta^6 - 48*zeta^5 - 
8*zeta^4 + 40*zeta^3 - 48*zeta^2 - 24*zeta + 72)*q^607 + (-8*zeta^11 - 8*zeta^10
- 12*zeta^8 + 8*zeta^7 + 12*zeta^6 - 24*zeta^5 - 16*zeta^4 + 8*zeta^3 - 
24*zeta^2 - 12*zeta + 16)*q^608 + O(q^609), (2*zeta^11 - 2*zeta^10 + zeta^8 + 
2*zeta^7 - zeta^6 + 2*zeta^5 - 2*zeta^3 + 2*zeta^2 + zeta)*q + (zeta^11 + 
2*zeta^10 + 2*zeta^8 - 8*zeta^7 - 2*zeta^6 + 4*zeta^5 + 3*zeta^4 - zeta^3 + 
4*zeta^2 + 2*zeta - 6)*q^2 + (-2*zeta^11 + 4*zeta^10 + 8*zeta^7 + 2*zeta^4 + 
2*zeta^3 + 4)*q^3 + (-7*zeta^11 + 10*zeta^10 - 2*zeta^8 + 16*zeta^7 + 2*zeta^6 -
4*zeta^5 + 3*zeta^4 + 7*zeta^3 - 4*zeta^2 - 2*zeta + 10)*q^4 + (2*zeta^11 - 
2*zeta^10 + zeta^8 - 4*zeta^7 - zeta^6 + 2*zeta^5 - 2*zeta^3 + 2*zeta^2 + zeta -
3)*q^5 + (-10*zeta^11 + 8*zeta^10 - 6*zeta^8 - 8*zeta^7 + 6*zeta^6 - 12*zeta^5 -
2*zeta^4 + 10*zeta^3 - 12*zeta^2 - 6*zeta + 2)*q^6 + (-9*zeta^11 + 8*zeta^10 - 
5*zeta^8 - 8*zeta^7 + 5*zeta^6 - 10*zeta^5 - zeta^4 + 9*zeta^3 - 10*zeta^2 - 
5*zeta + 1)*q^8 + (2*zeta^11 + 2*zeta^8 - 8*zeta^7 - 2*zeta^6 + 4*zeta^5 + 
2*zeta^4 - 2*zeta^3 + 4*zeta^2 + 2*zeta - 6)*q^9 + (-3*zeta^11 + 4*zeta^10 - 
zeta^8 + 6*zeta^7 + zeta^6 - 2*zeta^5 + zeta^4 + 3*zeta^3 - 2*zeta^2 - zeta + 
4)*q^10 + (2*zeta^11 - 4*zeta^10 - 8*zeta^7 - 2*zeta^4 - 2*zeta^3 - 4)*q^11 + 
(-2*zeta^11 - 8*zeta^10 - 6*zeta^8 + 24*zeta^7 + 6*zeta^6 - 12*zeta^5 - 
10*zeta^4 + 2*zeta^3 - 12*zeta^2 - 6*zeta + 18)*q^12 + (-11*zeta^11 + 10*zeta^10
- 6*zeta^8 - 10*zeta^7 + 6*zeta^6 - 12*zeta^5 - zeta^4 + 11*zeta^3 - 12*zeta^2 -
6*zeta + 1)*q^13 + (-2*zeta^11 + 4*zeta^10 - 4*zeta^7 + 2*zeta^4 + 2*zeta^3 - 
2)*q^15 + (-3*zeta^11 - 3*zeta^8 + 12*zeta^7 + 3*zeta^6 - 6*zeta^5 - 3*zeta^4 + 
3*zeta^3 - 6*zeta^2 - 3*zeta + 9)*q^16 + (11*zeta^11 - 16*zeta^10 + 3*zeta^8 - 
26*zeta^7 - 3*zeta^6 + 6*zeta^5 - 5*zeta^4 - 11*zeta^3 + 6*zeta^2 + 3*zeta - 
16)*q^17 + (-8*zeta^11 + 12*zeta^10 - 2*zeta^8 + 20*zeta^7 + 2*zeta^6 - 4*zeta^5
+ 4*zeta^4 + 8*zeta^3 - 4*zeta^2 - 2*zeta + 12)*q^18 + (4*zeta^10 + 2*zeta^8 - 
8*zeta^7 - 2*zeta^6 + 4*zeta^5 + 4*zeta^4 + 4*zeta^2 + 2*zeta - 6)*q^19 + 
(-5*zeta^11 + 2*zeta^10 - 4*zeta^8 - 2*zeta^7 + 4*zeta^6 - 8*zeta^5 - 3*zeta^4 +
5*zeta^3 - 8*zeta^2 - 4*zeta + 3)*q^20 + (10*zeta^11 - 8*zeta^10 + 6*zeta^8 + 
8*zeta^7 - 6*zeta^6 + 12*zeta^5 + 2*zeta^4 - 10*zeta^3 + 12*zeta^2 + 6*zeta - 
2)*q^22 + (2*zeta^11 - 8*zeta^10 - 2*zeta^8 + 8*zeta^7 + 2*zeta^6 - 4*zeta^5 - 
6*zeta^4 - 2*zeta^3 - 4*zeta^2 - 2*zeta + 6)*q^23 + (12*zeta^11 - 20*zeta^10 + 
2*zeta^8 - 36*zeta^7 - 2*zeta^6 + 4*zeta^5 - 8*zeta^4 - 12*zeta^3 + 4*zeta^2 + 
2*zeta - 20)*q^24 + (11*zeta^11 - 14*zeta^10 + 4*zeta^8 - 20*zeta^7 - 4*zeta^6 +
8*zeta^5 - 3*zeta^4 - 11*zeta^3 + 8*zeta^2 + 4*zeta - 14)*q^25 + (-6*zeta^11 - 
10*zeta^10 - 11*zeta^8 + 44*zeta^7 + 11*zeta^6 - 22*zeta^5 - 16*zeta^4 + 
6*zeta^3 - 22*zeta^2 - 11*zeta + 33)*q^26 + (4*zeta^11 - 4*zeta^10 + 2*zeta^8 + 
4*zeta^7 - 2*zeta^6 + 4*zeta^5 - 4*zeta^3 + 4*zeta^2 + 2*zeta)*q^27 + 
(-2*zeta^11 + 4*zeta^10 - 4*zeta^7 + 2*zeta^4 + 2*zeta^3 - 2)*q^29 + (-4*zeta^10
- 2*zeta^8 + 8*zeta^7 + 2*zeta^6 - 4*zeta^5 - 4*zeta^4 - 4*zeta^2 - 2*zeta + 
6)*q^30 + (-10*zeta^11 + 16*zeta^10 - 2*zeta^8 + 28*zeta^7 + 2*zeta^6 - 4*zeta^5
+ 6*zeta^4 + 10*zeta^3 - 4*zeta^2 - 2*zeta + 16)*q^31 + (2*zeta^10 + zeta^8 + 
6*zeta^7 - zeta^6 + 2*zeta^5 + 2*zeta^4 + 2*zeta^2 + zeta + 2)*q^32 + (4*zeta^11
+ 4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 8*zeta^5 + 4*zeta^4 - 4*zeta^3 + 8*zeta^2 + 
4*zeta - 12)*q^33 + (31*zeta^11 - 26*zeta^10 + 18*zeta^8 + 26*zeta^7 - 18*zeta^6
+ 36*zeta^5 + 5*zeta^4 - 31*zeta^3 + 36*zeta^2 + 18*zeta - 5)*q^34 + 
(-16*zeta^11 + 12*zeta^10 - 10*zeta^8 - 12*zeta^7 + 10*zeta^6 - 20*zeta^5 - 
4*zeta^4 + 16*zeta^3 - 20*zeta^2 - 10*zeta + 4)*q^36 + (4*zeta^11 + 4*zeta^8 - 
16*zeta^7 - 4*zeta^6 + 8*zeta^5 + 4*zeta^4 - 4*zeta^3 + 8*zeta^2 + 4*zeta - 
12)*q^37 + (-10*zeta^11 + 16*zeta^10 - 2*zeta^8 + 28*zeta^7 + 2*zeta^6 - 
4*zeta^5 + 6*zeta^4 + 10*zeta^3 - 4*zeta^2 - 2*zeta + 16)*q^38 + (14*zeta^11 - 
24*zeta^10 + 2*zeta^8 - 44*zeta^7 - 2*zeta^6 + 4*zeta^5 - 10*zeta^4 - 14*zeta^3 
+ 4*zeta^2 + 2*zeta - 24)*q^39 + (-4*zeta^11 + 2*zeta^10 - 3*zeta^8 + 12*zeta^7 
+ 3*zeta^6 - 6*zeta^5 - 2*zeta^4 + 4*zeta^3 - 6*zeta^2 - 3*zeta + 9)*q^40 + 
(5*zeta^11 - 2*zeta^10 + 4*zeta^8 + 2*zeta^7 - 4*zeta^6 + 8*zeta^5 + 3*zeta^4 - 
5*zeta^3 + 8*zeta^2 + 4*zeta - 3)*q^41 + (-12*zeta^11 + 8*zeta^10 - 8*zeta^8 - 
8*zeta^7 + 8*zeta^6 - 16*zeta^5 - 4*zeta^4 + 12*zeta^3 - 16*zeta^2 - 8*zeta + 
4)*q^43 + (2*zeta^11 + 8*zeta^10 + 6*zeta^8 - 24*zeta^7 - 6*zeta^6 + 12*zeta^5 +
10*zeta^4 - 2*zeta^3 + 12*zeta^2 + 6*zeta - 18)*q^44 + (2*zeta^11 + 2*zeta^8 + 
4*zeta^7 - 2*zeta^6 + 4*zeta^5 + 2*zeta^4 - 2*zeta^3 + 4*zeta^2 + 2*zeta)*q^45 +
(12*zeta^11 - 20*zeta^10 + 2*zeta^8 - 36*zeta^7 - 2*zeta^6 + 4*zeta^5 - 8*zeta^4
- 12*zeta^3 + 4*zeta^2 + 2*zeta - 20)*q^46 + (4*zeta^10 + 2*zeta^8 - 8*zeta^7 - 
2*zeta^6 + 4*zeta^5 + 4*zeta^4 + 4*zeta^2 + 2*zeta - 6)*q^47 + (12*zeta^11 - 
12*zeta^10 + 6*zeta^8 + 12*zeta^7 - 6*zeta^6 + 12*zeta^5 - 12*zeta^3 + 12*zeta^2
+ 6*zeta)*q^48 + (23*zeta^11 - 20*zeta^10 + 13*zeta^8 + 20*zeta^7 - 13*zeta^6 + 
26*zeta^5 + 3*zeta^4 - 23*zeta^3 + 26*zeta^2 + 13*zeta - 3)*q^50 + (4*zeta^11 + 
12*zeta^10 + 10*zeta^8 - 40*zeta^7 - 10*zeta^6 + 20*zeta^5 + 16*zeta^4 - 
4*zeta^3 + 20*zeta^2 + 10*zeta - 30)*q^51 + (35*zeta^11 - 52*zeta^10 + 9*zeta^8 
- 86*zeta^7 - 9*zeta^6 + 18*zeta^5 - 17*zeta^4 - 35*zeta^3 + 18*zeta^2 + 9*zeta 
- 52)*q^52 + (2*zeta^11 - 4*zeta^10 - 8*zeta^7 - 2*zeta^4 - 2*zeta^3 - 4)*q^53 +
(2*zeta^11 + 4*zeta^10 + 4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 8*zeta^5 + 6*zeta^4 -
2*zeta^3 + 8*zeta^2 + 4*zeta - 12)*q^54 + (2*zeta^11 - 4*zeta^10 + 4*zeta^7 - 
2*zeta^4 - 2*zeta^3 + 2)*q^55 + (-12*zeta^11 + 8*zeta^10 - 8*zeta^8 - 8*zeta^7 +
8*zeta^6 - 16*zeta^5 - 4*zeta^4 + 12*zeta^3 - 16*zeta^2 - 8*zeta + 4)*q^57 + 
(-4*zeta^10 - 2*zeta^8 + 8*zeta^7 + 2*zeta^6 - 4*zeta^5 - 4*zeta^4 - 4*zeta^2 - 
2*zeta + 6)*q^58 + (-10*zeta^11 + 16*zeta^10 - 2*zeta^8 + 28*zeta^7 + 2*zeta^6 -
4*zeta^5 + 6*zeta^4 + 10*zeta^3 - 4*zeta^2 - 2*zeta + 16)*q^59 + (14*zeta^11 - 
16*zeta^10 + 6*zeta^8 - 20*zeta^7 - 6*zeta^6 + 12*zeta^5 - 2*zeta^4 - 14*zeta^3 
+ 12*zeta^2 + 6*zeta - 16)*q^60 + (8*zeta^11 - 6*zeta^10 + 5*zeta^8 - 20*zeta^7 
- 5*zeta^6 + 10*zeta^5 + 2*zeta^4 - 8*zeta^3 + 10*zeta^2 + 5*zeta - 15)*q^61 + 
(-34*zeta^11 + 28*zeta^10 - 20*zeta^8 - 28*zeta^7 + 20*zeta^6 - 40*zeta^5 - 
6*zeta^4 + 34*zeta^3 - 40*zeta^2 - 20*zeta + 6)*q^62 + (-20*zeta^11 + 18*zeta^10
- 11*zeta^8 - 18*zeta^7 + 11*zeta^6 - 22*zeta^5 - 2*zeta^4 + 20*zeta^3 - 
22*zeta^2 - 11*zeta + 2)*q^64 + (-6*zeta^11 + 4*zeta^10 - 4*zeta^8 + 16*zeta^7 +
4*zeta^6 - 8*zeta^5 - 2*zeta^4 + 6*zeta^3 - 8*zeta^2 - 4*zeta + 12)*q^65 + 
(-16*zeta^11 + 24*zeta^10 - 4*zeta^8 + 40*zeta^7 + 4*zeta^6 - 8*zeta^5 + 
8*zeta^4 + 16*zeta^3 - 8*zeta^2 - 4*zeta + 24)*q^66 + (-12*zeta^11 + 16*zeta^10 
- 4*zeta^8 + 24*zeta^7 + 4*zeta^6 - 8*zeta^5 + 4*zeta^4 + 12*zeta^3 - 8*zeta^2 -
4*zeta + 16)*q^67 + (14*zeta^11 + 14*zeta^10 + 21*zeta^8 - 84*zeta^7 - 21*zeta^6
+ 42*zeta^5 + 28*zeta^4 - 14*zeta^3 + 42*zeta^2 + 21*zeta - 63)*q^68 + 
(16*zeta^11 - 8*zeta^10 + 12*zeta^8 + 8*zeta^7 - 12*zeta^6 + 24*zeta^5 + 
8*zeta^4 - 16*zeta^3 + 24*zeta^2 + 12*zeta - 8)*q^69 + (-28*zeta^11 + 20*zeta^10
- 18*zeta^8 - 20*zeta^7 + 18*zeta^6 - 36*zeta^5 - 8*zeta^4 + 28*zeta^3 - 
36*zeta^2 - 18*zeta + 8)*q^71 + (-6*zeta^11 - 4*zeta^10 - 8*zeta^8 + 32*zeta^7 +
8*zeta^6 - 16*zeta^5 - 10*zeta^4 + 6*zeta^3 - 16*zeta^2 - 8*zeta + 24)*q^72 + 
(-17*zeta^11 + 20*zeta^10 - 7*zeta^8 + 26*zeta^7 + 7*zeta^6 - 14*zeta^5 + 
3*zeta^4 + 17*zeta^3 - 14*zeta^2 - 7*zeta + 20)*q^73 + (-16*zeta^11 + 24*zeta^10
- 4*zeta^8 + 40*zeta^7 + 4*zeta^6 - 8*zeta^5 + 8*zeta^4 + 16*zeta^3 - 8*zeta^2 -
4*zeta + 24)*q^74 + (-2*zeta^11 + 16*zeta^10 + 6*zeta^8 - 24*zeta^7 - 6*zeta^6 +
12*zeta^5 + 14*zeta^4 + 2*zeta^3 + 12*zeta^2 + 6*zeta - 18)*q^75 + (-22*zeta^11 
+ 20*zeta^10 - 12*zeta^8 - 20*zeta^7 + 12*zeta^6 - 24*zeta^5 - 2*zeta^4 + 
22*zeta^3 - 24*zeta^2 - 12*zeta + 2)*q^76 + (54*zeta^11 - 44*zeta^10 + 32*zeta^8
+ 44*zeta^7 - 32*zeta^6 + 64*zeta^5 + 10*zeta^4 - 54*zeta^3 + 64*zeta^2 + 
32*zeta - 10)*q^78 + (-8*zeta^11 + 8*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 -
8*zeta^5 + 8*zeta^3 - 8*zeta^2 - 4*zeta + 12)*q^79 + (-3*zeta^11 - 3*zeta^8 - 
6*zeta^7 + 3*zeta^6 - 6*zeta^5 - 3*zeta^4 + 3*zeta^3 - 6*zeta^2 - 3*zeta)*q^80 +
(2*zeta^11 - 4*zeta^10 - 8*zeta^7 - 2*zeta^4 - 2*zeta^3 - 4)*q^81 + (4*zeta^11 +
2*zeta^10 + 5*zeta^8 - 20*zeta^7 - 5*zeta^6 + 10*zeta^5 + 6*zeta^4 - 4*zeta^3 + 
10*zeta^2 + 5*zeta - 15)*q^82 + (32*zeta^11 - 24*zeta^10 + 20*zeta^8 + 24*zeta^7
- 20*zeta^6 + 40*zeta^5 + 8*zeta^4 - 32*zeta^3 + 40*zeta^2 + 20*zeta - 8)*q^83 +
(8*zeta^11 - 4*zeta^10 + 6*zeta^8 + 4*zeta^7 - 6*zeta^6 + 12*zeta^5 + 4*zeta^4 -
8*zeta^3 + 12*zeta^2 + 6*zeta - 4)*q^85 + (-8*zeta^11 - 8*zeta^10 - 12*zeta^8 + 
48*zeta^7 + 12*zeta^6 - 24*zeta^5 - 16*zeta^4 + 8*zeta^3 - 24*zeta^2 - 12*zeta +
36)*q^86 + (-4*zeta^11 - 4*zeta^8 - 8*zeta^7 + 4*zeta^6 - 8*zeta^5 - 4*zeta^4 + 
4*zeta^3 - 8*zeta^2 - 4*zeta)*q^87 + (-12*zeta^11 + 20*zeta^10 - 2*zeta^8 + 
36*zeta^7 + 2*zeta^6 - 4*zeta^5 + 8*zeta^4 + 12*zeta^3 - 4*zeta^2 - 2*zeta + 
20)*q^88 + (-10*zeta^11 + 6*zeta^10 - 7*zeta^8 + 28*zeta^7 + 7*zeta^6 - 
14*zeta^5 - 4*zeta^4 + 10*zeta^3 - 14*zeta^2 - 7*zeta + 21)*q^89 + (-6*zeta^11 +
4*zeta^10 - 4*zeta^8 - 4*zeta^7 + 4*zeta^6 - 8*zeta^5 - 2*zeta^4 + 6*zeta^3 - 
8*zeta^2 - 4*zeta + 2)*q^90 + (28*zeta^11 - 28*zeta^10 + 14*zeta^8 + 28*zeta^7 -
14*zeta^6 + 28*zeta^5 - 28*zeta^3 + 28*zeta^2 + 14*zeta)*q^92 + (-8*zeta^11 - 
8*zeta^10 - 12*zeta^8 + 48*zeta^7 + 12*zeta^6 - 24*zeta^5 - 16*zeta^4 + 8*zeta^3
- 24*zeta^2 - 12*zeta + 36)*q^93 + (-10*zeta^11 + 16*zeta^10 - 2*zeta^8 + 
28*zeta^7 + 2*zeta^6 - 4*zeta^5 + 6*zeta^4 + 10*zeta^3 - 4*zeta^2 - 2*zeta + 
16)*q^94 + (-8*zeta^11 + 8*zeta^10 - 4*zeta^8 + 8*zeta^7 + 4*zeta^6 - 8*zeta^5 +
8*zeta^3 - 8*zeta^2 - 4*zeta + 8)*q^95 + (-6*zeta^11 + 4*zeta^10 - 4*zeta^8 + 
16*zeta^7 + 4*zeta^6 - 8*zeta^5 - 2*zeta^4 + 6*zeta^3 - 8*zeta^2 - 4*zeta + 
12)*q^96 + (-11*zeta^11 + 10*zeta^10 - 6*zeta^8 - 10*zeta^7 + 6*zeta^6 - 
12*zeta^5 - zeta^4 + 11*zeta^3 - 12*zeta^2 - 6*zeta + 1)*q^97 + (8*zeta^11 - 
8*zeta^10 + 4*zeta^8 + 8*zeta^7 - 4*zeta^6 + 8*zeta^5 - 8*zeta^3 + 8*zeta^2 + 
4*zeta)*q^99 + (15*zeta^11 + 4*zeta^10 + 17*zeta^8 - 68*zeta^7 - 17*zeta^6 + 
34*zeta^5 + 19*zeta^4 - 15*zeta^3 + 34*zeta^2 + 17*zeta - 51)*q^100 + 
(25*zeta^11 - 40*zeta^10 + 5*zeta^8 - 70*zeta^7 - 5*zeta^6 + 10*zeta^5 - 
15*zeta^4 - 25*zeta^3 + 10*zeta^2 + 5*zeta - 40)*q^101 + (-46*zeta^11 + 
72*zeta^10 - 10*zeta^8 + 124*zeta^7 + 10*zeta^6 - 20*zeta^5 + 26*zeta^4 + 
46*zeta^3 - 20*zeta^2 - 10*zeta + 72)*q^102 + (-4*zeta^11 - 12*zeta^10 - 
10*zeta^8 + 40*zeta^7 + 10*zeta^6 - 20*zeta^5 - 16*zeta^4 + 4*zeta^3 - 20*zeta^2
- 10*zeta + 30)*q^103 + (49*zeta^11 - 42*zeta^10 + 28*zeta^8 + 42*zeta^7 - 
28*zeta^6 + 56*zeta^5 + 7*zeta^4 - 49*zeta^3 + 56*zeta^2 + 28*zeta - 7)*q^104 + 
(10*zeta^11 - 8*zeta^10 + 6*zeta^8 + 8*zeta^7 - 6*zeta^6 + 12*zeta^5 + 2*zeta^4 
- 10*zeta^3 + 12*zeta^2 + 6*zeta - 2)*q^106 + (6*zeta^11 + 8*zeta^10 + 10*zeta^8
- 40*zeta^7 - 10*zeta^6 + 20*zeta^5 + 14*zeta^4 - 6*zeta^3 + 20*zeta^2 + 10*zeta
- 30)*q^107 + (-14*zeta^11 + 20*zeta^10 - 4*zeta^8 + 32*zeta^7 + 4*zeta^6 - 
8*zeta^5 + 6*zeta^4 + 14*zeta^3 - 8*zeta^2 - 4*zeta + 20)*q^108 + (-12*zeta^11 +
16*zeta^10 - 4*zeta^8 + 24*zeta^7 + 4*zeta^6 - 8*zeta^5 + 4*zeta^4 + 12*zeta^3 -
8*zeta^2 - 4*zeta + 16)*q^109 + (4*zeta^10 + 2*zeta^8 - 8*zeta^7 - 2*zeta^6 + 
4*zeta^5 + 4*zeta^4 + 4*zeta^2 + 2*zeta - 6)*q^110 + (-16*zeta^11 + 16*zeta^10 -
8*zeta^8 - 16*zeta^7 + 8*zeta^6 - 16*zeta^5 + 16*zeta^3 - 16*zeta^2 - 
8*zeta)*q^111 + (36*zeta^11 - 28*zeta^10 + 22*zeta^8 + 28*zeta^7 - 22*zeta^6 + 
44*zeta^5 + 8*zeta^4 - 36*zeta^3 + 44*zeta^2 + 22*zeta - 8)*q^113 + (-8*zeta^11 
- 8*zeta^10 - 12*zeta^8 + 48*zeta^7 + 12*zeta^6 - 24*zeta^5 - 16*zeta^4 + 
8*zeta^3 - 24*zeta^2 - 12*zeta + 36)*q^114 + (18*zeta^11 - 16*zeta^10 + 
10*zeta^8 - 12*zeta^7 - 10*zeta^6 + 20*zeta^5 + 2*zeta^4 - 18*zeta^3 + 20*zeta^2
+ 10*zeta - 16)*q^115 + (14*zeta^11 - 16*zeta^10 + 6*zeta^8 - 20*zeta^7 - 
6*zeta^6 + 12*zeta^5 - 2*zeta^4 - 14*zeta^3 + 12*zeta^2 + 6*zeta - 16)*q^116 + 
(-8*zeta^11 - 4*zeta^10 - 10*zeta^8 + 40*zeta^7 + 10*zeta^6 - 20*zeta^5 - 
12*zeta^4 + 8*zeta^3 - 20*zeta^2 - 10*zeta + 30)*q^117 + (-34*zeta^11 + 
28*zeta^10 - 20*zeta^8 - 28*zeta^7 + 20*zeta^6 - 40*zeta^5 - 6*zeta^4 + 
34*zeta^3 - 40*zeta^2 - 20*zeta + 6)*q^118 + (10*zeta^11 - 12*zeta^10 + 4*zeta^8
+ 12*zeta^7 - 4*zeta^6 + 8*zeta^5 - 2*zeta^4 - 10*zeta^3 + 8*zeta^2 + 4*zeta + 
2)*q^120 + (7*zeta^11 + 7*zeta^8 - 28*zeta^7 - 7*zeta^6 + 14*zeta^5 + 7*zeta^4 -
7*zeta^3 + 14*zeta^2 + 7*zeta - 21)*q^121 + (-17*zeta^11 + 24*zeta^10 - 5*zeta^8
+ 38*zeta^7 + 5*zeta^6 - 10*zeta^5 + 7*zeta^4 + 17*zeta^3 - 10*zeta^2 - 5*zeta +
24)*q^122 + (-14*zeta^11 + 16*zeta^10 - 6*zeta^8 + 20*zeta^7 + 6*zeta^6 - 
12*zeta^5 + 2*zeta^4 + 14*zeta^3 - 12*zeta^2 - 6*zeta + 16)*q^123 + (-12*zeta^11
- 20*zeta^10 - 22*zeta^8 + 88*zeta^7 + 22*zeta^6 - 44*zeta^5 - 32*zeta^4 + 
12*zeta^3 - 44*zeta^2 - 22*zeta + 66)*q^124 + (12*zeta^11 - 8*zeta^10 + 8*zeta^8
+ 8*zeta^7 - 8*zeta^6 + 16*zeta^5 + 4*zeta^4 - 12*zeta^3 + 16*zeta^2 + 8*zeta - 
4)*q^125 + (20*zeta^11 - 16*zeta^10 + 12*zeta^8 + 16*zeta^7 - 12*zeta^6 + 
24*zeta^5 + 4*zeta^4 - 20*zeta^3 + 24*zeta^2 + 12*zeta - 4)*q^127 + (-5*zeta^11 
- 22*zeta^10 - 16*zeta^8 + 64*zeta^7 + 16*zeta^6 - 32*zeta^5 - 27*zeta^4 + 
5*zeta^3 - 32*zeta^2 - 16*zeta + 48)*q^128 + (24*zeta^11 - 32*zeta^10 + 8*zeta^8
- 48*zeta^7 - 8*zeta^6 + 16*zeta^5 - 8*zeta^4 - 24*zeta^3 + 16*zeta^2 + 8*zeta -
32)*q^129 + (14*zeta^11 - 20*zeta^10 + 4*zeta^8 - 32*zeta^7 - 4*zeta^6 + 
8*zeta^5 - 6*zeta^4 - 14*zeta^3 + 8*zeta^2 + 4*zeta - 20)*q^130 + (-4*zeta^11 + 
16*zeta^10 + 4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 8*zeta^5 + 12*zeta^4 + 4*zeta^3 +
8*zeta^2 + 4*zeta - 12)*q^131 + (-32*zeta^11 + 24*zeta^10 - 20*zeta^8 - 
24*zeta^7 + 20*zeta^6 - 40*zeta^5 - 8*zeta^4 + 32*zeta^3 - 40*zeta^2 - 20*zeta +
8)*q^132 + (-28*zeta^11 + 24*zeta^10 - 16*zeta^8 - 24*zeta^7 + 16*zeta^6 - 
32*zeta^5 - 4*zeta^4 + 28*zeta^3 - 32*zeta^2 - 16*zeta + 4)*q^134 + (4*zeta^11 -
4*zeta^10 + 2*zeta^8 - 8*zeta^7 - 2*zeta^6 + 4*zeta^5 - 4*zeta^3 + 4*zeta^2 + 
2*zeta - 6)*q^135 + (-45*zeta^11 + 68*zeta^10 - 11*zeta^8 + 114*zeta^7 + 
11*zeta^6 - 22*zeta^5 + 23*zeta^4 + 45*zeta^3 - 22*zeta^2 - 11*zeta + 68)*q^136 
+ (30*zeta^11 - 40*zeta^10 + 10*zeta^8 - 60*zeta^7 - 10*zeta^6 + 20*zeta^5 - 
10*zeta^4 - 30*zeta^3 + 20*zeta^2 + 10*zeta - 40)*q^137 + (12*zeta^11 + 
8*zeta^10 + 16*zeta^8 - 64*zeta^7 - 16*zeta^6 + 32*zeta^5 + 20*zeta^4 - 
12*zeta^3 + 32*zeta^2 + 16*zeta - 48)*q^138 + (12*zeta^11 - 16*zeta^10 + 
4*zeta^8 + 16*zeta^7 - 4*zeta^6 + 8*zeta^5 - 4*zeta^4 - 12*zeta^3 + 8*zeta^2 + 
4*zeta + 4)*q^139 + (-12*zeta^11 + 8*zeta^10 - 8*zeta^8 - 8*zeta^7 + 8*zeta^6 - 
16*zeta^5 - 4*zeta^4 + 12*zeta^3 - 16*zeta^2 - 8*zeta + 4)*q^141 + (-18*zeta^11 
- 20*zeta^10 - 28*zeta^8 + 112*zeta^7 + 28*zeta^6 - 56*zeta^5 - 38*zeta^4 + 
18*zeta^3 - 56*zeta^2 - 28*zeta + 84)*q^142 + (-14*zeta^11 + 24*zeta^10 - 
2*zeta^8 + 44*zeta^7 + 2*zeta^6 - 4*zeta^5 + 10*zeta^4 + 14*zeta^3 - 4*zeta^2 - 
2*zeta + 24)*q^143 + (6*zeta^11 - 12*zeta^10 - 24*zeta^7 - 6*zeta^4 - 6*zeta^3 -
12)*q^144 + (-12*zeta^11 + 16*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 
8*zeta^5 + 4*zeta^4 + 12*zeta^3 - 8*zeta^2 - 4*zeta + 12)*q^145 + (-29*zeta^11 +
26*zeta^10 - 16*zeta^8 - 26*zeta^7 + 16*zeta^6 - 32*zeta^5 - 3*zeta^4 + 
29*zeta^3 - 32*zeta^2 - 16*zeta + 3)*q^146 + (-32*zeta^11 + 24*zeta^10 - 
20*zeta^8 - 24*zeta^7 + 20*zeta^6 - 40*zeta^5 - 8*zeta^4 + 32*zeta^3 - 40*zeta^2
- 20*zeta + 8)*q^148 + (-6*zeta^11 + 16*zeta^10 + 2*zeta^8 - 8*zeta^7 - 2*zeta^6
+ 4*zeta^5 + 10*zeta^4 + 6*zeta^3 + 4*zeta^2 + 2*zeta - 6)*q^149 + (-32*zeta^11 
+ 52*zeta^10 - 6*zeta^8 + 92*zeta^7 + 6*zeta^6 - 12*zeta^5 + 20*zeta^4 + 
32*zeta^3 - 12*zeta^2 - 6*zeta + 52)*q^150 + (-12*zeta^11 + 24*zeta^10 + 
48*zeta^7 + 12*zeta^4 + 12*zeta^3 + 24)*q^151 + (-4*zeta^11 - 12*zeta^10 - 
10*zeta^8 + 40*zeta^7 + 10*zeta^6 - 20*zeta^5 - 16*zeta^4 + 4*zeta^3 - 20*zeta^2
- 10*zeta + 30)*q^152 + (26*zeta^11 - 20*zeta^10 + 16*zeta^8 + 20*zeta^7 - 
16*zeta^6 + 32*zeta^5 + 6*zeta^4 - 26*zeta^3 + 32*zeta^2 + 16*zeta - 6)*q^153 + 
(-8*zeta^11 + 8*zeta^10 - 4*zeta^8 - 8*zeta^7 + 4*zeta^6 - 8*zeta^5 + 8*zeta^3 -
8*zeta^2 - 4*zeta)*q^155 + (16*zeta^11 + 36*zeta^10 + 34*zeta^8 - 136*zeta^7 - 
34*zeta^6 + 68*zeta^5 + 52*zeta^4 - 16*zeta^3 + 68*zeta^2 + 34*zeta - 102)*q^156
+ (25*zeta^11 - 44*zeta^10 + 3*zeta^8 - 82*zeta^7 - 3*zeta^6 + 6*zeta^5 - 
19*zeta^4 - 25*zeta^3 + 6*zeta^2 + 3*zeta - 44)*q^157 + (12*zeta^11 - 16*zeta^10
+ 4*zeta^8 - 24*zeta^7 - 4*zeta^6 + 8*zeta^5 - 4*zeta^4 - 12*zeta^3 + 8*zeta^2 +
4*zeta - 16)*q^158 + (4*zeta^11 + 4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 8*zeta^5 + 
4*zeta^4 - 4*zeta^3 + 8*zeta^2 + 4*zeta - 12)*q^159 + (-zeta^11 + 6*zeta^10 + 
2*zeta^8 - 6*zeta^7 - 2*zeta^6 + 4*zeta^5 + 5*zeta^4 + zeta^3 + 4*zeta^2 + 
2*zeta - 5)*q^160 + (10*zeta^11 - 8*zeta^10 + 6*zeta^8 + 8*zeta^7 - 6*zeta^6 + 
12*zeta^5 + 2*zeta^4 - 10*zeta^3 + 12*zeta^2 + 6*zeta - 2)*q^162 + (-16*zeta^10 
- 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 - 16*zeta^4 - 16*zeta^2 - 8*zeta +
24)*q^163 + (-7*zeta^11 + 16*zeta^10 + zeta^8 + 34*zeta^7 - zeta^6 + 2*zeta^5 + 
9*zeta^4 + 7*zeta^3 + 2*zeta^2 + zeta + 16)*q^164 + (4*zeta^11 + 4*zeta^8 + 
8*zeta^7 - 4*zeta^6 + 8*zeta^5 + 4*zeta^4 - 4*zeta^3 + 8*zeta^2 + 4*zeta)*q^165 
+ (20*zeta^11 + 24*zeta^10 + 32*zeta^8 - 128*zeta^7 - 32*zeta^6 + 64*zeta^5 + 
44*zeta^4 - 20*zeta^3 + 64*zeta^2 + 32*zeta - 96)*q^166 + (-42*zeta^11 + 
28*zeta^10 - 28*zeta^8 - 28*zeta^7 + 28*zeta^6 - 56*zeta^5 - 14*zeta^4 + 
42*zeta^3 - 56*zeta^2 - 28*zeta + 14)*q^167 + (34*zeta^11 - 26*zeta^10 + 
21*zeta^8 + 26*zeta^7 - 21*zeta^6 + 42*zeta^5 + 8*zeta^4 - 34*zeta^3 + 42*zeta^2
+ 21*zeta - 8)*q^169 + (6*zeta^11 + 4*zeta^10 + 8*zeta^8 - 32*zeta^7 - 8*zeta^6 
+ 16*zeta^5 + 10*zeta^4 - 6*zeta^3 + 16*zeta^2 + 8*zeta - 24)*q^170 + 
(-12*zeta^11 + 16*zeta^10 - 4*zeta^8 + 24*zeta^7 + 4*zeta^6 - 8*zeta^5 + 
4*zeta^4 + 12*zeta^3 - 8*zeta^2 - 4*zeta + 16)*q^171 + (28*zeta^11 - 48*zeta^10 
+ 4*zeta^8 - 88*zeta^7 - 4*zeta^6 + 8*zeta^5 - 20*zeta^4 - 28*zeta^3 + 8*zeta^2 
+ 4*zeta - 48)*q^172 + (14*zeta^11 - 10*zeta^10 + 9*zeta^8 - 36*zeta^7 - 
9*zeta^6 + 18*zeta^5 + 4*zeta^4 - 14*zeta^3 + 18*zeta^2 + 9*zeta - 27)*q^173 + 
(12*zeta^11 - 8*zeta^10 + 8*zeta^8 + 8*zeta^7 - 8*zeta^6 + 16*zeta^5 + 4*zeta^4 
- 12*zeta^3 + 16*zeta^2 + 8*zeta - 4)*q^174 + (-12*zeta^11 + 12*zeta^10 - 
6*zeta^8 - 12*zeta^7 + 6*zeta^6 - 12*zeta^5 + 12*zeta^3 - 12*zeta^2 - 
6*zeta)*q^176 + (-8*zeta^11 - 8*zeta^10 - 12*zeta^8 + 48*zeta^7 + 12*zeta^6 - 
24*zeta^5 - 16*zeta^4 + 8*zeta^3 - 24*zeta^2 - 12*zeta + 36)*q^177 + (25*zeta^11
- 36*zeta^10 + 7*zeta^8 - 58*zeta^7 - 7*zeta^6 + 14*zeta^5 - 11*zeta^4 - 
25*zeta^3 + 14*zeta^2 + 7*zeta - 36)*q^178 + (2*zeta^11 - 12*zeta^10 - 4*zeta^8 
- 32*zeta^7 + 4*zeta^6 - 8*zeta^5 - 10*zeta^4 - 2*zeta^3 - 8*zeta^2 - 4*zeta - 
12)*q^179 + (4*zeta^11 - 12*zeta^10 - 2*zeta^8 + 8*zeta^7 + 2*zeta^6 - 4*zeta^5 
- 8*zeta^4 - 4*zeta^3 - 4*zeta^2 - 2*zeta + 6)*q^180 + (11*zeta^11 - 10*zeta^10 
+ 6*zeta^8 + 10*zeta^7 - 6*zeta^6 + 12*zeta^5 + zeta^4 - 11*zeta^3 + 12*zeta^2 +
6*zeta - 1)*q^181 + (-14*zeta^11 + 20*zeta^10 - 4*zeta^8 - 20*zeta^7 + 4*zeta^6 
- 8*zeta^5 + 6*zeta^4 + 14*zeta^3 - 8*zeta^2 - 4*zeta - 6)*q^183 + (2*zeta^11 + 
20*zeta^10 + 12*zeta^8 - 48*zeta^7 - 12*zeta^6 + 24*zeta^5 + 22*zeta^4 - 
2*zeta^3 + 24*zeta^2 + 12*zeta - 36)*q^184 + (4*zeta^11 + 4*zeta^8 + 8*zeta^7 - 
4*zeta^6 + 8*zeta^5 + 4*zeta^4 - 4*zeta^3 + 8*zeta^2 + 4*zeta)*q^185 + 
(52*zeta^11 - 80*zeta^10 + 12*zeta^8 - 136*zeta^7 - 12*zeta^6 + 24*zeta^5 - 
28*zeta^4 - 52*zeta^3 + 24*zeta^2 + 12*zeta - 80)*q^186 + (-4*zeta^11 - 
12*zeta^10 - 10*zeta^8 + 40*zeta^7 + 10*zeta^6 - 20*zeta^5 - 16*zeta^4 + 
4*zeta^3 - 20*zeta^2 - 10*zeta + 30)*q^187 + (-22*zeta^11 + 20*zeta^10 - 
12*zeta^8 - 20*zeta^7 + 12*zeta^6 - 24*zeta^5 - 2*zeta^4 + 22*zeta^3 - 24*zeta^2
- 12*zeta + 2)*q^188 + (-8*zeta^11 + 8*zeta^10 - 4*zeta^8 - 8*zeta^7 + 4*zeta^6 
- 8*zeta^5 + 8*zeta^3 - 8*zeta^2 - 4*zeta)*q^190 + (18*zeta^11 + 18*zeta^8 - 
72*zeta^7 - 18*zeta^6 + 36*zeta^5 + 18*zeta^4 - 18*zeta^3 + 36*zeta^2 + 18*zeta 
- 54)*q^191 + (26*zeta^11 - 44*zeta^10 + 4*zeta^8 - 80*zeta^7 - 4*zeta^6 + 
8*zeta^5 - 18*zeta^4 - 26*zeta^3 + 8*zeta^2 + 4*zeta - 44)*q^192 + (30*zeta^11 -
44*zeta^10 + 8*zeta^8 - 72*zeta^7 - 8*zeta^6 + 16*zeta^5 - 14*zeta^4 - 30*zeta^3
+ 16*zeta^2 + 8*zeta - 44)*q^193 + (-6*zeta^11 - 10*zeta^10 - 11*zeta^8 + 
44*zeta^7 + 11*zeta^6 - 22*zeta^5 - 16*zeta^4 + 6*zeta^3 - 22*zeta^2 - 11*zeta +
33)*q^194 + (12*zeta^11 - 16*zeta^10 + 4*zeta^8 + 16*zeta^7 - 4*zeta^6 + 
8*zeta^5 - 4*zeta^4 - 12*zeta^3 + 8*zeta^2 + 4*zeta + 4)*q^195 + (4*zeta^11 - 
4*zeta^10 + 2*zeta^8 + 4*zeta^7 - 2*zeta^6 + 4*zeta^5 - 4*zeta^3 + 4*zeta^2 + 
2*zeta)*q^197 + (4*zeta^11 + 8*zeta^10 + 8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 
16*zeta^5 + 12*zeta^4 - 4*zeta^3 + 16*zeta^2 + 8*zeta - 24)*q^198 + (4*zeta^11 -
16*zeta^10 - 4*zeta^8 - 40*zeta^7 + 4*zeta^6 - 8*zeta^5 - 12*zeta^4 - 4*zeta^3 -
8*zeta^2 - 4*zeta - 16)*q^199 + (-38*zeta^11 + 54*zeta^10 - 11*zeta^8 + 
86*zeta^7 + 11*zeta^6 - 22*zeta^5 + 16*zeta^4 + 38*zeta^3 - 22*zeta^2 - 11*zeta 
+ 54)*q^200 + (-16*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 - 
16*zeta^4 - 16*zeta^2 - 8*zeta + 24)*q^201 + (85*zeta^11 - 70*zeta^10 + 
50*zeta^8 + 70*zeta^7 - 50*zeta^6 + 100*zeta^5 + 15*zeta^4 - 85*zeta^3 + 
100*zeta^2 + 50*zeta - 15)*q^202 + (-98*zeta^11 + 84*zeta^10 - 56*zeta^8 - 
84*zeta^7 + 56*zeta^6 - 112*zeta^5 - 14*zeta^4 + 98*zeta^3 - 112*zeta^2 - 
56*zeta + 14)*q^204 + (-10*zeta^11 + 16*zeta^10 - 2*zeta^8 + 8*zeta^7 + 2*zeta^6
- 4*zeta^5 + 6*zeta^4 + 10*zeta^3 - 4*zeta^2 - 2*zeta + 6)*q^205 + (46*zeta^11 -
72*zeta^10 + 10*zeta^8 - 124*zeta^7 - 10*zeta^6 + 20*zeta^5 - 26*zeta^4 - 
46*zeta^3 + 20*zeta^2 + 10*zeta - 72)*q^206 + (20*zeta^11 - 24*zeta^10 + 
8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 - 4*zeta^4 - 20*zeta^3 + 16*zeta^2 +
8*zeta - 24)*q^207 + (12*zeta^11 + 6*zeta^10 + 15*zeta^8 - 60*zeta^7 - 15*zeta^6
+ 30*zeta^5 + 18*zeta^4 - 12*zeta^3 + 30*zeta^2 + 15*zeta - 45)*q^208 + 
(12*zeta^11 - 8*zeta^10 + 8*zeta^8 + 8*zeta^7 - 8*zeta^6 + 16*zeta^5 + 4*zeta^4 
- 12*zeta^3 + 16*zeta^2 + 8*zeta - 4)*q^209 + (-44*zeta^11 + 32*zeta^10 - 
28*zeta^8 - 32*zeta^7 + 28*zeta^6 - 56*zeta^5 - 12*zeta^4 + 44*zeta^3 - 
56*zeta^2 - 28*zeta + 12)*q^211 + (2*zeta^11 + 8*zeta^10 + 6*zeta^8 - 24*zeta^7 
- 6*zeta^6 + 12*zeta^5 + 10*zeta^4 - 2*zeta^3 + 12*zeta^2 + 6*zeta - 18)*q^212 +
(52*zeta^11 - 72*zeta^10 + 16*zeta^8 - 112*zeta^7 - 16*zeta^6 + 32*zeta^5 - 
20*zeta^4 - 52*zeta^3 + 32*zeta^2 + 16*zeta - 72)*q^213 + (-44*zeta^11 + 
68*zeta^10 - 10*zeta^8 + 116*zeta^7 + 10*zeta^6 - 20*zeta^5 + 24*zeta^4 + 
44*zeta^3 - 20*zeta^2 - 10*zeta + 68)*q^214 + (8*zeta^11 - 16*zeta^10 - 8*zeta^4
- 8*zeta^3)*q^215 + (-18*zeta^11 + 16*zeta^10 - 10*zeta^8 - 16*zeta^7 + 
10*zeta^6 - 20*zeta^5 - 2*zeta^4 + 18*zeta^3 - 20*zeta^2 - 10*zeta + 2)*q^216 + 
(-28*zeta^11 + 24*zeta^10 - 16*zeta^8 - 24*zeta^7 + 16*zeta^6 - 32*zeta^5 - 
4*zeta^4 + 28*zeta^3 - 32*zeta^2 - 16*zeta + 4)*q^218 + (8*zeta^11 - 28*zeta^10 
- 6*zeta^8 + 24*zeta^7 + 6*zeta^6 - 12*zeta^5 - 20*zeta^4 - 8*zeta^3 - 12*zeta^2
- 6*zeta + 18)*q^219 + (-14*zeta^11 + 16*zeta^10 - 6*zeta^8 + 20*zeta^7 + 
6*zeta^6 - 12*zeta^5 + 2*zeta^4 + 14*zeta^3 - 12*zeta^2 - 6*zeta + 16)*q^220 + 
(-56*zeta^11 + 84*zeta^10 - 14*zeta^8 + 140*zeta^7 + 14*zeta^6 - 28*zeta^5 + 
28*zeta^4 + 56*zeta^3 - 28*zeta^2 - 14*zeta + 84)*q^221 + (-8*zeta^11 - 
16*zeta^10 - 16*zeta^8 + 64*zeta^7 + 16*zeta^6 - 32*zeta^5 - 24*zeta^4 + 
8*zeta^3 - 32*zeta^2 - 16*zeta + 48)*q^222 + (20*zeta^11 - 8*zeta^10 + 16*zeta^8
+ 8*zeta^7 - 16*zeta^6 + 32*zeta^5 + 12*zeta^4 - 20*zeta^3 + 32*zeta^2 + 16*zeta
- 12)*q^223 + (20*zeta^11 - 12*zeta^10 + 14*zeta^8 + 12*zeta^7 - 14*zeta^6 + 
28*zeta^5 + 8*zeta^4 - 20*zeta^3 + 28*zeta^2 + 14*zeta - 8)*q^225 + (22*zeta^11 
+ 28*zeta^10 + 36*zeta^8 - 144*zeta^7 - 36*zeta^6 + 72*zeta^5 + 50*zeta^4 - 
22*zeta^3 + 72*zeta^2 + 36*zeta - 108)*q^226 + (-38*zeta^11 + 48*zeta^10 - 
14*zeta^8 + 68*zeta^7 + 14*zeta^6 - 28*zeta^5 + 10*zeta^4 + 38*zeta^3 - 
28*zeta^2 - 14*zeta + 48)*q^227 + (28*zeta^11 - 48*zeta^10 + 4*zeta^8 - 
88*zeta^7 - 4*zeta^6 + 8*zeta^5 - 20*zeta^4 - 28*zeta^3 + 8*zeta^2 + 4*zeta - 
48)*q^228 + (4*zeta^11 + 6*zeta^10 + 7*zeta^8 - 28*zeta^7 - 7*zeta^6 + 14*zeta^5
+ 10*zeta^4 - 4*zeta^3 + 14*zeta^2 + 7*zeta - 21)*q^229 + (10*zeta^11 - 
12*zeta^10 + 4*zeta^8 + 12*zeta^7 - 4*zeta^6 + 8*zeta^5 - 2*zeta^4 - 10*zeta^3 +
8*zeta^2 + 4*zeta + 2)*q^230 + (10*zeta^11 - 12*zeta^10 + 4*zeta^8 + 12*zeta^7 -
4*zeta^6 + 8*zeta^5 - 2*zeta^4 - 10*zeta^3 + 8*zeta^2 + 4*zeta + 2)*q^232 + 
(-8*zeta^11 - 20*zeta^10 - 18*zeta^8 + 72*zeta^7 + 18*zeta^6 - 36*zeta^5 - 
28*zeta^4 + 8*zeta^3 - 36*zeta^2 - 18*zeta + 54)*q^233 + (42*zeta^11 - 
64*zeta^10 + 10*zeta^8 - 108*zeta^7 - 10*zeta^6 + 20*zeta^5 - 22*zeta^4 - 
42*zeta^3 + 20*zeta^2 + 10*zeta - 64)*q^234 + (-8*zeta^11 + 8*zeta^10 - 4*zeta^8
+ 8*zeta^7 + 4*zeta^6 - 8*zeta^5 + 8*zeta^3 - 8*zeta^2 - 4*zeta + 8)*q^235 + 
(-12*zeta^11 - 20*zeta^10 - 22*zeta^8 + 88*zeta^7 + 22*zeta^6 - 44*zeta^5 - 
32*zeta^4 + 12*zeta^3 - 44*zeta^2 - 22*zeta + 66)*q^236 + (8*zeta^11 - 
16*zeta^10 + 16*zeta^7 - 8*zeta^4 - 8*zeta^3 + 8)*q^237 + (-8*zeta^11 + 
12*zeta^10 - 2*zeta^8 - 12*zeta^7 + 2*zeta^6 - 4*zeta^5 + 4*zeta^4 + 8*zeta^3 - 
4*zeta^2 - 2*zeta - 4)*q^239 + (12*zeta^11 - 12*zeta^10 + 6*zeta^8 - 24*zeta^7 -
6*zeta^6 + 12*zeta^5 - 12*zeta^3 + 12*zeta^2 + 6*zeta - 18)*q^240 + (-3*zeta^11 
+ 12*zeta^10 + 3*zeta^8 + 30*zeta^7 - 3*zeta^6 + 6*zeta^5 + 9*zeta^4 + 3*zeta^3 
+ 6*zeta^2 + 3*zeta + 12)*q^241 + (-28*zeta^11 + 42*zeta^10 - 7*zeta^8 + 
70*zeta^7 + 7*zeta^6 - 14*zeta^5 + 14*zeta^4 + 28*zeta^3 - 14*zeta^2 - 7*zeta + 
42)*q^242 + (-2*zeta^11 - 2*zeta^8 + 8*zeta^7 + 2*zeta^6 - 4*zeta^5 - 2*zeta^4 +
2*zeta^3 - 4*zeta^2 - 2*zeta + 6)*q^243 + (-31*zeta^11 + 18*zeta^10 - 22*zeta^8 
- 18*zeta^7 + 22*zeta^6 - 44*zeta^5 - 13*zeta^4 + 31*zeta^3 - 44*zeta^2 - 
22*zeta + 13)*q^244 + (-22*zeta^11 + 20*zeta^10 - 12*zeta^8 - 20*zeta^7 + 
12*zeta^6 - 24*zeta^5 - 2*zeta^4 + 22*zeta^3 - 24*zeta^2 - 12*zeta + 2)*q^246 + 
(-4*zeta^11 - 16*zeta^10 - 12*zeta^8 + 48*zeta^7 + 12*zeta^6 - 24*zeta^5 - 
20*zeta^4 + 4*zeta^3 - 24*zeta^2 - 12*zeta + 36)*q^247 + (46*zeta^11 - 
72*zeta^10 + 10*zeta^8 - 124*zeta^7 - 10*zeta^6 + 20*zeta^5 - 26*zeta^4 - 
46*zeta^3 + 20*zeta^2 + 10*zeta - 72)*q^248 + (-56*zeta^11 + 80*zeta^10 - 
16*zeta^8 + 128*zeta^7 + 16*zeta^6 - 32*zeta^5 + 24*zeta^4 + 56*zeta^3 - 
32*zeta^2 - 16*zeta + 80)*q^249 + (8*zeta^11 + 8*zeta^10 + 12*zeta^8 - 48*zeta^7
- 12*zeta^6 + 24*zeta^5 + 16*zeta^4 - 8*zeta^3 + 24*zeta^2 + 12*zeta - 36)*q^250
+ (-10*zeta^11 + 4*zeta^10 - 8*zeta^8 - 4*zeta^7 + 8*zeta^6 - 16*zeta^5 - 
6*zeta^4 + 10*zeta^3 - 16*zeta^2 - 8*zeta + 6)*q^251 + (-16*zeta^11 + 8*zeta^10 
- 12*zeta^8 - 8*zeta^7 + 12*zeta^6 - 24*zeta^5 - 8*zeta^4 + 16*zeta^3 - 
24*zeta^2 - 12*zeta + 8)*q^253 + (12*zeta^11 + 16*zeta^10 + 20*zeta^8 - 
80*zeta^7 - 20*zeta^6 + 40*zeta^5 + 28*zeta^4 - 12*zeta^3 + 40*zeta^2 + 20*zeta 
- 60)*q^254 + (-20*zeta^11 + 24*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 
16*zeta^5 + 4*zeta^4 + 20*zeta^3 - 16*zeta^2 - 8*zeta + 24)*q^255 + (49*zeta^11 
- 74*zeta^10 + 12*zeta^8 - 124*zeta^7 - 12*zeta^6 + 24*zeta^5 - 25*zeta^4 - 
49*zeta^3 + 24*zeta^2 + 12*zeta - 74)*q^256 + (2*zeta^11 - 30*zeta^10 - 
13*zeta^8 + 52*zeta^7 + 13*zeta^6 - 26*zeta^5 - 28*zeta^4 - 2*zeta^3 - 26*zeta^2
- 13*zeta + 39)*q^257 + (56*zeta^11 - 48*zeta^10 + 32*zeta^8 + 48*zeta^7 - 
32*zeta^6 + 64*zeta^5 + 8*zeta^4 - 56*zeta^3 + 64*zeta^2 + 32*zeta - 8)*q^258 + 
(26*zeta^11 - 16*zeta^10 + 18*zeta^8 + 16*zeta^7 - 18*zeta^6 + 36*zeta^5 + 
10*zeta^4 - 26*zeta^3 + 36*zeta^2 + 18*zeta - 10)*q^260 + (-8*zeta^11 + 
8*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 8*zeta^5 + 8*zeta^3 - 8*zeta^2 - 
4*zeta + 12)*q^261 + (-24*zeta^11 + 40*zeta^10 - 4*zeta^8 + 72*zeta^7 + 4*zeta^6
- 8*zeta^5 + 16*zeta^4 + 24*zeta^3 - 8*zeta^2 - 4*zeta + 40)*q^262 + (30*zeta^11
- 44*zeta^10 + 8*zeta^8 - 72*zeta^7 - 8*zeta^6 + 16*zeta^5 - 14*zeta^4 - 
30*zeta^3 + 16*zeta^2 + 8*zeta - 44)*q^263 + (-12*zeta^11 - 8*zeta^10 - 
16*zeta^8 + 64*zeta^7 + 16*zeta^6 - 32*zeta^5 - 20*zeta^4 + 12*zeta^3 - 
32*zeta^2 - 16*zeta + 48)*q^264 + (2*zeta^11 - 4*zeta^10 + 4*zeta^7 - 2*zeta^4 -
2*zeta^3 + 2)*q^265 + (22*zeta^11 - 28*zeta^10 + 8*zeta^8 + 28*zeta^7 - 8*zeta^6
+ 16*zeta^5 - 6*zeta^4 - 22*zeta^3 + 16*zeta^2 + 8*zeta + 6)*q^267 + 
(-16*zeta^11 - 8*zeta^10 - 20*zeta^8 + 80*zeta^7 + 20*zeta^6 - 40*zeta^5 - 
24*zeta^4 + 16*zeta^3 - 40*zeta^2 - 20*zeta + 60)*q^268 + (25*zeta^11 - 
32*zeta^10 + 9*zeta^8 - 46*zeta^7 - 9*zeta^6 + 18*zeta^5 - 7*zeta^4 - 25*zeta^3 
+ 18*zeta^2 + 9*zeta - 32)*q^269 + (-6*zeta^11 + 8*zeta^10 - 2*zeta^8 + 
12*zeta^7 + 2*zeta^6 - 4*zeta^5 + 2*zeta^4 + 6*zeta^3 - 4*zeta^2 - 2*zeta + 
8)*q^270 + (4*zeta^11 + 20*zeta^10 + 14*zeta^8 - 56*zeta^7 - 14*zeta^6 + 
28*zeta^5 + 24*zeta^4 - 4*zeta^3 + 28*zeta^2 + 14*zeta - 42)*q^271 + 
(-39*zeta^11 + 30*zeta^10 - 24*zeta^8 - 30*zeta^7 + 24*zeta^6 - 48*zeta^5 - 
9*zeta^4 + 39*zeta^3 - 48*zeta^2 - 24*zeta + 9)*q^272 + (70*zeta^11 - 60*zeta^10
+ 40*zeta^8 + 60*zeta^7 - 40*zeta^6 + 80*zeta^5 + 10*zeta^4 - 70*zeta^3 + 
80*zeta^2 + 40*zeta - 10)*q^274 + (2*zeta^11 - 16*zeta^10 - 6*zeta^8 + 24*zeta^7
+ 6*zeta^6 - 12*zeta^5 - 14*zeta^4 - 2*zeta^3 - 12*zeta^2 - 6*zeta + 18)*q^275 +
(-28*zeta^11 + 56*zeta^10 + 112*zeta^7 + 28*zeta^4 + 28*zeta^3 + 56)*q^276 + 
(-26*zeta^11 + 36*zeta^10 - 8*zeta^8 + 56*zeta^7 + 8*zeta^6 - 16*zeta^5 + 
10*zeta^4 + 26*zeta^3 - 16*zeta^2 - 8*zeta + 36)*q^277 + (4*zeta^11 + 16*zeta^10
+ 12*zeta^8 - 48*zeta^7 - 12*zeta^6 + 24*zeta^5 + 20*zeta^4 - 4*zeta^3 + 
24*zeta^2 + 12*zeta - 36)*q^278 + (-28*zeta^11 + 24*zeta^10 - 16*zeta^8 - 
24*zeta^7 + 16*zeta^6 - 32*zeta^5 - 4*zeta^4 + 28*zeta^3 - 32*zeta^2 - 16*zeta +
4)*q^279 + (-34*zeta^11 + 28*zeta^10 - 20*zeta^8 - 28*zeta^7 + 20*zeta^6 - 
40*zeta^5 - 6*zeta^4 + 34*zeta^3 - 40*zeta^2 - 20*zeta + 6)*q^281 + (-8*zeta^11 
- 8*zeta^10 - 12*zeta^8 + 48*zeta^7 + 12*zeta^6 - 24*zeta^5 - 16*zeta^4 + 
8*zeta^3 - 24*zeta^2 - 12*zeta + 36)*q^282 + (18*zeta^11 - 24*zeta^10 + 6*zeta^8
- 36*zeta^7 - 6*zeta^6 + 12*zeta^5 - 6*zeta^4 - 18*zeta^3 + 12*zeta^2 + 6*zeta -
24)*q^283 + (70*zeta^11 - 116*zeta^10 + 12*zeta^8 - 208*zeta^7 - 12*zeta^6 + 
24*zeta^5 - 46*zeta^4 - 70*zeta^3 + 24*zeta^2 + 12*zeta - 116)*q^284 + 
(8*zeta^11 - 16*zeta^10 - 8*zeta^4 - 8*zeta^3)*q^285 + (-54*zeta^11 + 44*zeta^10
- 32*zeta^8 - 44*zeta^7 + 32*zeta^6 - 64*zeta^5 - 10*zeta^4 + 54*zeta^3 - 
64*zeta^2 - 32*zeta + 10)*q^286 + (-6*zeta^11 + 8*zeta^10 - 2*zeta^8 - 8*zeta^7 
+ 2*zeta^6 - 4*zeta^5 + 2*zeta^4 + 6*zeta^3 - 4*zeta^2 - 2*zeta - 2)*q^288 + 
(-5*zeta^11 - 24*zeta^10 - 17*zeta^8 + 68*zeta^7 + 17*zeta^6 - 34*zeta^5 - 
29*zeta^4 + 5*zeta^3 - 34*zeta^2 - 17*zeta + 51)*q^289 + (8*zeta^11 - 8*zeta^10 
+ 4*zeta^8 - 8*zeta^7 - 4*zeta^6 + 8*zeta^5 - 8*zeta^3 + 8*zeta^2 + 4*zeta - 
8)*q^290 + (14*zeta^11 - 24*zeta^10 + 2*zeta^8 - 44*zeta^7 - 2*zeta^6 + 4*zeta^5
- 10*zeta^4 - 14*zeta^3 + 4*zeta^2 + 2*zeta - 24)*q^291 + (-24*zeta^11 + 
2*zeta^10 - 23*zeta^8 + 92*zeta^7 + 23*zeta^6 - 46*zeta^5 - 22*zeta^4 + 
24*zeta^3 - 46*zeta^2 - 23*zeta + 69)*q^292 + (-39*zeta^11 + 38*zeta^10 - 
20*zeta^8 - 38*zeta^7 + 20*zeta^6 - 40*zeta^5 - zeta^4 + 39*zeta^3 - 40*zeta^2 -
20*zeta + 1)*q^293 + (-8*zeta^11 + 8*zeta^10 - 4*zeta^8 - 8*zeta^7 + 4*zeta^6 - 
8*zeta^5 + 8*zeta^3 - 8*zeta^2 - 4*zeta)*q^295 + (-12*zeta^11 - 8*zeta^10 - 
16*zeta^8 + 64*zeta^7 + 16*zeta^6 - 32*zeta^5 - 20*zeta^4 + 12*zeta^3 - 
32*zeta^2 - 16*zeta + 48)*q^296 + (4*zeta^11 - 8*zeta^10 - 16*zeta^7 - 4*zeta^4 
- 4*zeta^3 - 8)*q^297 + (-16*zeta^11 + 28*zeta^10 - 2*zeta^8 + 52*zeta^7 + 
2*zeta^6 - 4*zeta^5 + 12*zeta^4 + 16*zeta^3 - 4*zeta^2 - 2*zeta + 28)*q^298 + 
(28*zeta^10 + 14*zeta^8 - 56*zeta^7 - 14*zeta^6 + 28*zeta^5 + 28*zeta^4 + 
28*zeta^2 + 14*zeta - 42)*q^299 + (-72*zeta^11 + 68*zeta^10 - 38*zeta^8 - 
68*zeta^7 + 38*zeta^6 - 76*zeta^5 - 4*zeta^4 + 72*zeta^3 - 76*zeta^2 - 38*zeta +
4)*q^300 + (-60*zeta^11 + 48*zeta^10 - 36*zeta^8 - 48*zeta^7 + 36*zeta^6 - 
72*zeta^5 - 12*zeta^4 + 60*zeta^3 - 72*zeta^2 - 36*zeta + 12)*q^302 + 
(20*zeta^11 + 20*zeta^10 + 30*zeta^8 - 120*zeta^7 - 30*zeta^6 + 60*zeta^5 + 
40*zeta^4 - 20*zeta^3 + 60*zeta^2 + 30*zeta - 90)*q^303 + (18*zeta^11 - 
24*zeta^10 + 6*zeta^8 - 36*zeta^7 - 6*zeta^6 + 12*zeta^5 - 6*zeta^4 - 18*zeta^3 
+ 12*zeta^2 + 6*zeta - 24)*q^304 + (20*zeta^11 - 12*zeta^10 + 14*zeta^8 + 
4*zeta^7 - 14*zeta^6 + 28*zeta^5 + 8*zeta^4 - 20*zeta^3 + 28*zeta^2 + 14*zeta - 
12)*q^305 + (16*zeta^11 + 20*zeta^10 + 26*zeta^8 - 104*zeta^7 - 26*zeta^6 + 
52*zeta^5 + 36*zeta^4 - 16*zeta^3 + 52*zeta^2 + 26*zeta - 78)*q^306 + 
(-2*zeta^11 + 12*zeta^10 + 4*zeta^8 - 12*zeta^7 - 4*zeta^6 + 8*zeta^5 + 
10*zeta^4 + 2*zeta^3 + 8*zeta^2 + 4*zeta - 10)*q^307 + (52*zeta^11 - 40*zeta^10 
+ 32*zeta^8 + 40*zeta^7 - 32*zeta^6 + 64*zeta^5 + 12*zeta^4 - 52*zeta^3 + 
64*zeta^2 + 32*zeta - 12)*q^309 + (-4*zeta^11 - 8*zeta^10 - 8*zeta^8 + 32*zeta^7
+ 8*zeta^6 - 16*zeta^5 - 12*zeta^4 + 4*zeta^3 - 16*zeta^2 - 8*zeta + 24)*q^310 +
(-38*zeta^11 + 56*zeta^10 - 10*zeta^8 + 92*zeta^7 + 10*zeta^6 - 20*zeta^5 + 
18*zeta^4 + 38*zeta^3 - 20*zeta^2 - 10*zeta + 56)*q^311 + (-70*zeta^11 + 
112*zeta^10 - 14*zeta^8 + 196*zeta^7 + 14*zeta^6 - 28*zeta^5 + 42*zeta^4 + 
70*zeta^3 - 28*zeta^2 - 14*zeta + 112)*q^312 + (-8*zeta^11 - 14*zeta^10 - 
15*zeta^8 + 60*zeta^7 + 15*zeta^6 - 30*zeta^5 - 22*zeta^4 + 8*zeta^3 - 30*zeta^2
- 15*zeta + 45)*q^313 + (101*zeta^11 - 82*zeta^10 + 60*zeta^8 + 82*zeta^7 - 
60*zeta^6 + 120*zeta^5 + 19*zeta^4 - 101*zeta^3 + 120*zeta^2 + 60*zeta - 
19)*q^314 + (20*zeta^11 - 8*zeta^10 + 16*zeta^8 + 8*zeta^7 - 16*zeta^6 + 
32*zeta^5 + 12*zeta^4 - 20*zeta^3 + 32*zeta^2 + 16*zeta - 12)*q^316 + 
(-10*zeta^11 - 10*zeta^8 + 40*zeta^7 + 10*zeta^6 - 20*zeta^5 - 10*zeta^4 + 
10*zeta^3 - 20*zeta^2 - 10*zeta + 30)*q^317 + (-16*zeta^11 + 24*zeta^10 - 
4*zeta^8 + 40*zeta^7 + 4*zeta^6 - 8*zeta^5 + 8*zeta^4 + 16*zeta^3 - 8*zeta^2 - 
4*zeta + 24)*q^318 + (4*zeta^11 + 4*zeta^8 + 8*zeta^7 - 4*zeta^6 + 8*zeta^5 + 
4*zeta^4 - 4*zeta^3 + 8*zeta^2 + 4*zeta)*q^319 + (-10*zeta^11 + 6*zeta^10 - 
7*zeta^8 + 28*zeta^7 + 7*zeta^6 - 14*zeta^5 - 4*zeta^4 + 10*zeta^3 - 14*zeta^2 -
7*zeta + 21)*q^320 + (-48*zeta^11 + 40*zeta^10 - 28*zeta^8 - 40*zeta^7 + 
28*zeta^6 - 56*zeta^5 - 8*zeta^4 + 48*zeta^3 - 56*zeta^2 - 28*zeta + 8)*q^321 + 
(36*zeta^11 - 32*zeta^10 + 20*zeta^8 + 32*zeta^7 - 20*zeta^6 + 40*zeta^5 + 
4*zeta^4 - 36*zeta^3 + 40*zeta^2 + 20*zeta - 4)*q^323 + (2*zeta^11 + 8*zeta^10 +
6*zeta^8 - 24*zeta^7 - 6*zeta^6 + 12*zeta^5 + 10*zeta^4 - 2*zeta^3 + 12*zeta^2 +
6*zeta - 18)*q^324 + (-49*zeta^11 + 68*zeta^10 - 15*zeta^8 + 106*zeta^7 + 
15*zeta^6 - 30*zeta^5 + 19*zeta^4 + 49*zeta^3 - 30*zeta^2 - 15*zeta + 68)*q^325 
+ (40*zeta^11 - 64*zeta^10 + 8*zeta^8 - 112*zeta^7 - 8*zeta^6 + 16*zeta^5 - 
24*zeta^4 - 40*zeta^3 + 16*zeta^2 + 8*zeta - 64)*q^326 + (-16*zeta^10 - 8*zeta^8
+ 32*zeta^7 + 8*zeta^6 - 16*zeta^5 - 16*zeta^4 - 16*zeta^2 - 8*zeta + 24)*q^327 
+ (-21*zeta^11 + 14*zeta^10 - 14*zeta^8 - 14*zeta^7 + 14*zeta^6 - 28*zeta^5 - 
7*zeta^4 + 21*zeta^3 - 28*zeta^2 - 14*zeta + 7)*q^328 + (-12*zeta^11 + 8*zeta^10
- 8*zeta^8 - 8*zeta^7 + 8*zeta^6 - 16*zeta^5 - 4*zeta^4 + 12*zeta^3 - 16*zeta^2 
- 8*zeta + 4)*q^330 + (4*zeta^11 + 4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 8*zeta^5 + 
4*zeta^4 - 4*zeta^3 + 8*zeta^2 + 4*zeta - 12)*q^331 + (-84*zeta^11 + 136*zeta^10
- 16*zeta^8 + 240*zeta^7 + 16*zeta^6 - 32*zeta^5 + 52*zeta^4 + 84*zeta^3 - 
32*zeta^2 - 16*zeta + 136)*q^332 + (-8*zeta^11 + 16*zeta^10 + 32*zeta^7 + 
8*zeta^4 + 8*zeta^3 + 16)*q^333 + (-28*zeta^11 - 28*zeta^10 - 42*zeta^8 + 
168*zeta^7 + 42*zeta^6 - 84*zeta^5 - 56*zeta^4 + 28*zeta^3 - 84*zeta^2 - 42*zeta
+ 126)*q^334 + (-8*zeta^11 - 8*zeta^8 + 8*zeta^6 - 16*zeta^5 - 8*zeta^4 + 
8*zeta^3 - 16*zeta^2 - 8*zeta + 8)*q^335 + (-36*zeta^11 + 40*zeta^10 - 16*zeta^8
- 40*zeta^7 + 16*zeta^6 - 32*zeta^5 + 4*zeta^4 + 36*zeta^3 - 32*zeta^2 - 16*zeta
- 4)*q^337 + (21*zeta^11 + 26*zeta^10 + 34*zeta^8 - 136*zeta^7 - 34*zeta^6 + 
68*zeta^5 + 47*zeta^4 - 21*zeta^3 + 68*zeta^2 + 34*zeta - 102)*q^338 + 
(-60*zeta^11 + 88*zeta^10 - 16*zeta^8 + 144*zeta^7 + 16*zeta^6 - 32*zeta^5 + 
28*zeta^4 + 60*zeta^3 - 32*zeta^2 - 16*zeta + 88)*q^339 + (-14*zeta^11 + 
28*zeta^10 + 56*zeta^7 + 14*zeta^4 + 14*zeta^3 + 28)*q^340 + (8*zeta^11 + 
8*zeta^10 + 12*zeta^8 - 48*zeta^7 - 12*zeta^6 + 24*zeta^5 + 16*zeta^4 - 8*zeta^3
+ 24*zeta^2 + 12*zeta - 36)*q^341 + (-28*zeta^11 + 24*zeta^10 - 16*zeta^8 - 
24*zeta^7 + 16*zeta^6 - 32*zeta^5 - 4*zeta^4 + 28*zeta^3 - 32*zeta^2 - 16*zeta +
4)*q^342 + (52*zeta^11 - 40*zeta^10 + 32*zeta^8 + 40*zeta^7 - 32*zeta^6 + 
64*zeta^5 + 12*zeta^4 - 52*zeta^3 + 64*zeta^2 + 32*zeta - 12)*q^344 + 
(-24*zeta^11 + 40*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 8*zeta^5 + 
16*zeta^4 + 24*zeta^3 - 8*zeta^2 - 4*zeta + 12)*q^345 + (-31*zeta^11 + 
44*zeta^10 - 9*zeta^8 + 70*zeta^7 + 9*zeta^6 - 18*zeta^5 + 13*zeta^4 + 31*zeta^3
- 18*zeta^2 - 9*zeta + 44)*q^346 + (2*zeta^11 + 12*zeta^10 + 8*zeta^8 + 
40*zeta^7 - 8*zeta^6 + 16*zeta^5 + 14*zeta^4 - 2*zeta^3 + 16*zeta^2 + 8*zeta + 
12)*q^347 + (-8*zeta^11 + 24*zeta^10 + 4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 
8*zeta^5 + 16*zeta^4 + 8*zeta^3 + 8*zeta^2 + 4*zeta - 12)*q^348 + (-21*zeta^11 +
14*zeta^10 - 14*zeta^8 - 14*zeta^7 + 14*zeta^6 - 28*zeta^5 - 7*zeta^4 + 
21*zeta^3 - 28*zeta^2 - 14*zeta + 7)*q^349 + (-22*zeta^11 + 20*zeta^10 - 
12*zeta^8 - 20*zeta^7 + 12*zeta^6 - 24*zeta^5 - 2*zeta^4 + 22*zeta^3 - 24*zeta^2
- 12*zeta + 2)*q^351 + (6*zeta^11 - 4*zeta^10 + 4*zeta^8 - 16*zeta^7 - 4*zeta^6 
+ 8*zeta^5 + 2*zeta^4 - 6*zeta^3 + 8*zeta^2 + 4*zeta - 12)*q^352 + (25*zeta^11 -
32*zeta^10 + 9*zeta^8 - 46*zeta^7 - 9*zeta^6 + 18*zeta^5 - 7*zeta^4 - 25*zeta^3 
+ 18*zeta^2 + 9*zeta - 32)*q^353 + (52*zeta^11 - 80*zeta^10 + 12*zeta^8 - 
136*zeta^7 - 12*zeta^6 + 24*zeta^5 - 28*zeta^4 - 52*zeta^3 + 24*zeta^2 + 12*zeta
- 80)*q^354 + (12*zeta^11 - 28*zeta^10 - 2*zeta^8 + 8*zeta^7 + 2*zeta^6 - 
4*zeta^5 - 16*zeta^4 - 12*zeta^3 - 4*zeta^2 - 2*zeta + 6)*q^355 + (47*zeta^11 - 
30*zeta^10 + 32*zeta^8 + 30*zeta^7 - 32*zeta^6 + 64*zeta^5 + 17*zeta^4 - 
47*zeta^3 + 64*zeta^2 + 32*zeta - 17)*q^356 + (42*zeta^11 - 32*zeta^10 + 
26*zeta^8 + 32*zeta^7 - 26*zeta^6 + 52*zeta^5 + 10*zeta^4 - 42*zeta^3 + 
52*zeta^2 + 26*zeta - 10)*q^358 + (6*zeta^11 + 8*zeta^10 + 10*zeta^8 - 40*zeta^7
- 10*zeta^6 + 20*zeta^5 + 14*zeta^4 - 6*zeta^3 + 20*zeta^2 + 10*zeta - 30)*q^359
+ (2*zeta^11 - 8*zeta^10 - 2*zeta^8 - 20*zeta^7 + 2*zeta^6 - 4*zeta^5 - 6*zeta^4
- 2*zeta^3 - 4*zeta^2 - 2*zeta - 8)*q^360 + (11*zeta^11 - 22*zeta^10 - 44*zeta^7
- 11*zeta^4 - 11*zeta^3 - 22)*q^361 + (6*zeta^11 + 10*zeta^10 + 11*zeta^8 - 
44*zeta^7 - 11*zeta^6 + 22*zeta^5 + 16*zeta^4 - 6*zeta^3 + 22*zeta^2 + 11*zeta -
33)*q^362 + (-28*zeta^11 + 28*zeta^10 - 14*zeta^8 - 28*zeta^7 + 14*zeta^6 - 
28*zeta^5 + 28*zeta^3 - 28*zeta^2 - 14*zeta)*q^363 + (-10*zeta^11 - 8*zeta^10 - 
14*zeta^8 + 8*zeta^7 + 14*zeta^6 - 28*zeta^5 - 18*zeta^4 + 10*zeta^3 - 28*zeta^2
- 14*zeta + 18)*q^365 + (-4*zeta^11 - 20*zeta^10 - 14*zeta^8 + 56*zeta^7 + 
14*zeta^6 - 28*zeta^5 - 24*zeta^4 + 4*zeta^3 - 28*zeta^2 - 14*zeta + 42)*q^366 +
(32*zeta^11 - 48*zeta^10 + 8*zeta^8 - 80*zeta^7 - 8*zeta^6 + 16*zeta^5 - 
16*zeta^4 - 32*zeta^3 + 16*zeta^2 + 8*zeta - 48)*q^367 + (-30*zeta^11 + 
36*zeta^10 - 12*zeta^8 + 48*zeta^7 + 12*zeta^6 - 24*zeta^5 + 6*zeta^4 + 
30*zeta^3 - 24*zeta^2 - 12*zeta + 36)*q^368 + (-4*zeta^11 + 12*zeta^10 + 
2*zeta^8 - 8*zeta^7 - 2*zeta^6 + 4*zeta^5 + 8*zeta^4 + 4*zeta^3 + 4*zeta^2 + 
2*zeta - 6)*q^369 + (-12*zeta^11 + 8*zeta^10 - 8*zeta^8 - 8*zeta^7 + 8*zeta^6 - 
16*zeta^5 - 4*zeta^4 + 12*zeta^3 - 16*zeta^2 - 8*zeta + 4)*q^370 + (108*zeta^11 
- 88*zeta^10 + 64*zeta^8 + 88*zeta^7 - 64*zeta^6 + 128*zeta^5 + 20*zeta^4 - 
108*zeta^3 + 128*zeta^2 + 64*zeta - 20)*q^372 + (22*zeta^11 + 16*zeta^10 + 
30*zeta^8 - 120*zeta^7 - 30*zeta^6 + 60*zeta^5 + 38*zeta^4 - 22*zeta^3 + 
60*zeta^2 + 30*zeta - 90)*q^373 + (46*zeta^11 - 72*zeta^10 + 10*zeta^8 - 
124*zeta^7 - 10*zeta^6 + 20*zeta^5 - 26*zeta^4 - 46*zeta^3 + 20*zeta^2 + 10*zeta
- 72)*q^374 + (-24*zeta^11 + 32*zeta^10 - 8*zeta^8 + 48*zeta^7 + 8*zeta^6 - 
16*zeta^5 + 8*zeta^4 + 24*zeta^3 - 16*zeta^2 - 8*zeta + 32)*q^375 + (-4*zeta^11 
- 12*zeta^10 - 10*zeta^8 + 40*zeta^7 + 10*zeta^6 - 20*zeta^5 - 16*zeta^4 + 
4*zeta^3 - 20*zeta^2 - 10*zeta + 30)*q^376 + (12*zeta^11 - 16*zeta^10 + 4*zeta^8
+ 16*zeta^7 - 4*zeta^6 + 8*zeta^5 - 4*zeta^4 - 12*zeta^3 + 8*zeta^2 + 4*zeta + 
4)*q^377 + (64*zeta^11 - 56*zeta^10 + 36*zeta^8 + 56*zeta^7 - 36*zeta^6 + 
72*zeta^5 + 8*zeta^4 - 64*zeta^3 + 72*zeta^2 + 36*zeta - 8)*q^379 + (-12*zeta^11
+ 8*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 - 4*zeta^4 + 12*zeta^3
- 16*zeta^2 - 8*zeta + 24)*q^380 + (-32*zeta^11 + 48*zeta^10 - 8*zeta^8 + 
80*zeta^7 + 8*zeta^6 - 16*zeta^5 + 16*zeta^4 + 32*zeta^3 - 16*zeta^2 - 8*zeta + 
48)*q^381 + (-72*zeta^11 + 108*zeta^10 - 18*zeta^8 + 180*zeta^7 + 18*zeta^6 - 
36*zeta^5 + 36*zeta^4 + 72*zeta^3 - 36*zeta^2 - 18*zeta + 108)*q^382 + 
(-24*zeta^11 - 8*zeta^10 - 28*zeta^8 + 112*zeta^7 + 28*zeta^6 - 56*zeta^5 - 
32*zeta^4 + 24*zeta^3 - 56*zeta^2 - 28*zeta + 84)*q^383 + (86*zeta^11 - 
64*zeta^10 + 54*zeta^8 + 64*zeta^7 - 54*zeta^6 + 108*zeta^5 + 22*zeta^4 - 
86*zeta^3 + 108*zeta^2 + 54*zeta - 22)*q^384 + (86*zeta^11 - 72*zeta^10 + 
50*zeta^8 + 72*zeta^7 - 50*zeta^6 + 100*zeta^5 + 14*zeta^4 - 86*zeta^3 + 
100*zeta^2 + 50*zeta - 14)*q^386 + (-16*zeta^10 - 8*zeta^8 + 32*zeta^7 + 
8*zeta^6 - 16*zeta^5 - 16*zeta^4 - 16*zeta^2 - 8*zeta + 24)*q^387 + (35*zeta^11 
- 52*zeta^10 + 9*zeta^8 - 86*zeta^7 - 9*zeta^6 + 18*zeta^5 - 17*zeta^4 - 
35*zeta^3 + 18*zeta^2 + 9*zeta - 52)*q^388 + (-26*zeta^11 + 32*zeta^10 - 
10*zeta^8 + 44*zeta^7 + 10*zeta^6 - 20*zeta^5 + 6*zeta^4 + 26*zeta^3 - 20*zeta^2
- 10*zeta + 32)*q^389 + (4*zeta^11 + 16*zeta^10 + 12*zeta^8 - 48*zeta^7 - 
12*zeta^6 + 24*zeta^5 + 20*zeta^4 - 4*zeta^3 + 24*zeta^2 + 12*zeta - 36)*q^390 +
(-46*zeta^11 + 44*zeta^10 - 24*zeta^8 - 44*zeta^7 + 24*zeta^6 - 48*zeta^5 - 
2*zeta^4 + 46*zeta^3 - 48*zeta^2 - 24*zeta + 2)*q^391 + (-32*zeta^11 + 
16*zeta^10 - 24*zeta^8 - 16*zeta^7 + 24*zeta^6 - 48*zeta^5 - 16*zeta^4 + 
32*zeta^3 - 48*zeta^2 - 24*zeta + 16)*q^393 + (2*zeta^11 + 4*zeta^10 + 4*zeta^8 
- 16*zeta^7 - 4*zeta^6 + 8*zeta^5 + 6*zeta^4 - 2*zeta^3 + 8*zeta^2 + 4*zeta - 
12)*q^394 + (-24*zeta^11 + 16*zeta^10 - 16*zeta^8 + 16*zeta^6 - 32*zeta^5 - 
8*zeta^4 + 24*zeta^3 - 32*zeta^2 - 16*zeta + 16)*q^395 + (-28*zeta^11 + 
40*zeta^10 - 8*zeta^8 + 64*zeta^7 + 8*zeta^6 - 16*zeta^5 + 12*zeta^4 + 28*zeta^3
- 16*zeta^2 - 8*zeta + 40)*q^396 + (16*zeta^11 + 26*zeta^10 + 29*zeta^8 - 
116*zeta^7 - 29*zeta^6 + 58*zeta^5 + 42*zeta^4 - 16*zeta^3 + 58*zeta^2 + 29*zeta
- 87)*q^397 + (52*zeta^11 - 40*zeta^10 + 32*zeta^8 + 40*zeta^7 - 32*zeta^6 + 
64*zeta^5 + 12*zeta^4 - 52*zeta^3 + 64*zeta^2 + 32*zeta - 12)*q^398 + 
(-30*zeta^11 + 18*zeta^10 - 21*zeta^8 - 18*zeta^7 + 21*zeta^6 - 42*zeta^5 - 
12*zeta^4 + 30*zeta^3 - 42*zeta^2 - 21*zeta + 12)*q^400 + (-8*zeta^11 - 
20*zeta^10 - 18*zeta^8 + 72*zeta^7 + 18*zeta^6 - 36*zeta^5 - 28*zeta^4 + 
8*zeta^3 - 36*zeta^2 - 18*zeta + 54)*q^401 + (40*zeta^11 - 64*zeta^10 + 8*zeta^8
- 112*zeta^7 - 8*zeta^6 + 16*zeta^5 - 24*zeta^4 - 40*zeta^3 + 16*zeta^2 + 8*zeta
- 64)*q^402 + (56*zeta^11 - 88*zeta^10 + 12*zeta^8 - 152*zeta^7 - 12*zeta^6 + 
24*zeta^5 - 32*zeta^4 - 56*zeta^3 + 24*zeta^2 + 12*zeta - 88)*q^403 + 
(30*zeta^11 + 50*zeta^10 + 55*zeta^8 - 220*zeta^7 - 55*zeta^6 + 110*zeta^5 + 
80*zeta^4 - 30*zeta^3 + 110*zeta^2 + 55*zeta - 165)*q^404 + (2*zeta^11 - 
4*zeta^10 + 4*zeta^7 - 2*zeta^4 - 2*zeta^3 + 2)*q^405 + (16*zeta^11 - 16*zeta^10
+ 8*zeta^8 + 16*zeta^7 - 8*zeta^6 + 16*zeta^5 - 16*zeta^3 + 16*zeta^2 + 
8*zeta)*q^407 + (-24*zeta^11 - 44*zeta^10 - 46*zeta^8 + 184*zeta^7 + 46*zeta^6 -
92*zeta^5 - 68*zeta^4 + 24*zeta^3 - 92*zeta^2 - 46*zeta + 138)*q^408 + 
(-17*zeta^11 + 36*zeta^10 + zeta^8 + 74*zeta^7 - zeta^6 + 2*zeta^5 + 19*zeta^4 +
17*zeta^3 + 2*zeta^2 + zeta + 36)*q^409 + (4*zeta^10 + 2*zeta^8 + 12*zeta^7 - 
2*zeta^6 + 4*zeta^5 + 4*zeta^4 + 4*zeta^2 + 2*zeta + 4)*q^410 + (40*zeta^10 + 
20*zeta^8 - 80*zeta^7 - 20*zeta^6 + 40*zeta^5 + 40*zeta^4 + 40*zeta^2 + 20*zeta 
- 60)*q^411 + (98*zeta^11 - 84*zeta^10 + 56*zeta^8 + 84*zeta^7 - 56*zeta^6 + 
112*zeta^5 + 14*zeta^4 - 98*zeta^3 + 112*zeta^2 + 56*zeta - 14)*q^412 + 
(36*zeta^11 - 32*zeta^10 + 20*zeta^8 + 32*zeta^7 - 20*zeta^6 + 40*zeta^5 + 
4*zeta^4 - 36*zeta^3 + 40*zeta^2 + 20*zeta - 4)*q^414 + (-8*zeta^11 + 24*zeta^10
+ 4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 8*zeta^5 + 16*zeta^4 + 8*zeta^3 + 8*zeta^2 +
4*zeta - 12)*q^415 + (7*zeta^11 - 16*zeta^10 - zeta^8 - 34*zeta^7 + zeta^6 - 
2*zeta^5 - 9*zeta^4 - 7*zeta^3 - 2*zeta^2 - zeta - 16)*q^416 + (16*zeta^10 + 
8*zeta^8 + 48*zeta^7 - 8*zeta^6 + 16*zeta^5 + 16*zeta^4 + 16*zeta^2 + 8*zeta + 
16)*q^417 + (8*zeta^11 + 8*zeta^10 + 12*zeta^8 - 48*zeta^7 - 12*zeta^6 + 
24*zeta^5 + 16*zeta^4 - 8*zeta^3 + 24*zeta^2 + 12*zeta - 36)*q^418 + 
(-78*zeta^11 + 76*zeta^10 - 40*zeta^8 - 76*zeta^7 + 40*zeta^6 - 80*zeta^5 - 
2*zeta^4 + 78*zeta^3 - 80*zeta^2 - 40*zeta + 2)*q^419 + (-60*zeta^11 + 
44*zeta^10 - 38*zeta^8 - 44*zeta^7 + 38*zeta^6 - 76*zeta^5 - 16*zeta^4 + 
60*zeta^3 - 76*zeta^2 - 38*zeta + 16)*q^421 + (-28*zeta^11 - 32*zeta^10 - 
44*zeta^8 + 176*zeta^7 + 44*zeta^6 - 88*zeta^5 - 60*zeta^4 + 28*zeta^3 - 
88*zeta^2 - 44*zeta + 132)*q^422 + (-12*zeta^11 + 16*zeta^10 - 4*zeta^8 + 
24*zeta^7 + 4*zeta^6 - 8*zeta^5 + 4*zeta^4 + 12*zeta^3 - 8*zeta^2 - 4*zeta + 
16)*q^423 + (-12*zeta^11 + 20*zeta^10 - 2*zeta^8 + 36*zeta^7 + 2*zeta^6 - 
4*zeta^5 + 8*zeta^4 + 12*zeta^3 - 4*zeta^2 - 2*zeta + 20)*q^424 + (-22*zeta^11 -
10*zeta^10 - 27*zeta^8 + 108*zeta^7 + 27*zeta^6 - 54*zeta^5 - 32*zeta^4 + 
22*zeta^3 - 54*zeta^2 - 27*zeta + 81)*q^425 + (132*zeta^11 - 112*zeta^10 + 
76*zeta^8 + 112*zeta^7 - 76*zeta^6 + 152*zeta^5 + 20*zeta^4 - 132*zeta^3 + 
152*zeta^2 + 76*zeta - 20)*q^426 + (-92*zeta^11 + 76*zeta^10 - 54*zeta^8 - 
76*zeta^7 + 54*zeta^6 - 108*zeta^5 - 16*zeta^4 + 92*zeta^3 - 108*zeta^2 - 
54*zeta + 16)*q^428 + (-16*zeta^11 - 8*zeta^10 - 20*zeta^8 + 80*zeta^7 + 
20*zeta^6 - 40*zeta^5 - 24*zeta^4 + 16*zeta^3 - 40*zeta^2 - 20*zeta + 60)*q^429 
+ (8*zeta^11 - 16*zeta^10 - 32*zeta^7 - 8*zeta^4 - 8*zeta^3 - 16)*q^430 + 
(-26*zeta^11 + 28*zeta^10 - 12*zeta^8 + 32*zeta^7 + 12*zeta^6 - 24*zeta^5 + 
2*zeta^4 + 26*zeta^3 - 24*zeta^2 - 12*zeta + 28)*q^431 + (-6*zeta^11 - 6*zeta^8 
+ 24*zeta^7 + 6*zeta^6 - 12*zeta^5 - 6*zeta^4 + 6*zeta^3 - 12*zeta^2 - 6*zeta + 
18)*q^432 + (23*zeta^11 - 26*zeta^10 + 10*zeta^8 + 26*zeta^7 - 10*zeta^6 + 
20*zeta^5 - 3*zeta^4 - 23*zeta^3 + 20*zeta^2 + 10*zeta + 3)*q^433 + (-16*zeta^10
- 8*zeta^8 + 16*zeta^7 + 8*zeta^6 - 16*zeta^5 - 16*zeta^4 - 16*zeta^2 - 8*zeta +
16)*q^435 + (-16*zeta^11 - 8*zeta^10 - 20*zeta^8 + 80*zeta^7 + 20*zeta^6 - 
40*zeta^5 - 24*zeta^4 + 16*zeta^3 - 40*zeta^2 - 20*zeta + 60)*q^436 + (4*zeta^11
- 16*zeta^10 - 4*zeta^8 - 40*zeta^7 + 4*zeta^6 - 8*zeta^5 - 12*zeta^4 - 4*zeta^3
- 8*zeta^2 - 4*zeta - 16)*q^437 + (38*zeta^11 - 64*zeta^10 + 6*zeta^8 - 
116*zeta^7 - 6*zeta^6 + 12*zeta^5 - 26*zeta^4 - 38*zeta^3 + 12*zeta^2 + 6*zeta -
64)*q^438 + (24*zeta^11 + 16*zeta^10 + 32*zeta^8 - 128*zeta^7 - 32*zeta^6 + 
64*zeta^5 + 40*zeta^4 - 24*zeta^3 + 64*zeta^2 + 32*zeta - 96)*q^439 + 
(-10*zeta^11 + 12*zeta^10 - 4*zeta^8 - 12*zeta^7 + 4*zeta^6 - 8*zeta^5 + 
2*zeta^4 + 10*zeta^3 - 8*zeta^2 - 4*zeta - 2)*q^440 + (-168*zeta^11 + 
140*zeta^10 - 98*zeta^8 - 140*zeta^7 + 98*zeta^6 - 196*zeta^5 - 28*zeta^4 + 
168*zeta^3 - 196*zeta^2 - 98*zeta + 28)*q^442 + (-18*zeta^11 + 24*zeta^10 - 
6*zeta^8 + 24*zeta^7 + 6*zeta^6 - 12*zeta^5 + 6*zeta^4 + 18*zeta^3 - 12*zeta^2 -
6*zeta + 18)*q^443 + (56*zeta^11 - 80*zeta^10 + 16*zeta^8 - 128*zeta^7 - 
16*zeta^6 + 32*zeta^5 - 24*zeta^4 - 56*zeta^3 + 32*zeta^2 + 16*zeta - 80)*q^444 
+ (-22*zeta^11 + 12*zeta^10 - 16*zeta^8 - 8*zeta^7 + 16*zeta^6 - 32*zeta^5 - 
10*zeta^4 + 22*zeta^3 - 32*zeta^2 - 16*zeta + 12)*q^445 + (16*zeta^11 + 
8*zeta^10 + 20*zeta^8 - 80*zeta^7 - 20*zeta^6 + 40*zeta^5 + 24*zeta^4 - 
16*zeta^3 + 40*zeta^2 + 20*zeta - 60)*q^446 + (-24*zeta^11 + 8*zeta^10 - 
20*zeta^8 - 8*zeta^7 + 20*zeta^6 - 40*zeta^5 - 16*zeta^4 + 24*zeta^3 - 40*zeta^2
- 20*zeta + 16)*q^447 + (36*zeta^11 - 28*zeta^10 + 22*zeta^8 + 28*zeta^7 - 
22*zeta^6 + 44*zeta^5 + 8*zeta^4 - 36*zeta^3 + 44*zeta^2 + 22*zeta - 8)*q^449 + 
(14*zeta^11 + 12*zeta^10 + 20*zeta^8 - 80*zeta^7 - 20*zeta^6 + 40*zeta^5 + 
26*zeta^4 - 14*zeta^3 + 40*zeta^2 + 20*zeta - 60)*q^450 + (14*zeta^11 - 
16*zeta^10 + 6*zeta^8 - 20*zeta^7 - 6*zeta^6 + 12*zeta^5 - 2*zeta^4 - 14*zeta^3 
+ 12*zeta^2 + 6*zeta - 16)*q^451 + (-98*zeta^11 + 156*zeta^10 - 20*zeta^8 + 
272*zeta^7 + 20*zeta^6 - 40*zeta^5 + 58*zeta^4 + 98*zeta^3 - 40*zeta^2 - 20*zeta
+ 156)*q^452 + (-24*zeta^11 - 24*zeta^8 + 96*zeta^7 + 24*zeta^6 - 48*zeta^5 - 
24*zeta^4 + 24*zeta^3 - 48*zeta^2 - 24*zeta + 72)*q^453 + (-78*zeta^11 + 
68*zeta^10 - 44*zeta^8 - 68*zeta^7 + 44*zeta^6 - 88*zeta^5 - 10*zeta^4 + 
78*zeta^3 - 88*zeta^2 - 44*zeta + 10)*q^454 + (52*zeta^11 - 40*zeta^10 + 
32*zeta^8 + 40*zeta^7 - 32*zeta^6 + 64*zeta^5 + 12*zeta^4 - 52*zeta^3 + 
64*zeta^2 + 32*zeta - 12)*q^456 + (18*zeta^11 + 18*zeta^8 - 72*zeta^7 - 
18*zeta^6 + 36*zeta^5 + 18*zeta^4 - 18*zeta^3 + 36*zeta^2 + 18*zeta - 54)*q^457 
+ (-31*zeta^11 + 48*zeta^10 - 7*zeta^8 + 82*zeta^7 + 7*zeta^6 - 14*zeta^5 + 
17*zeta^4 + 31*zeta^3 - 14*zeta^2 - 7*zeta + 48)*q^458 + (22*zeta^11 - 
32*zeta^10 + 6*zeta^8 - 52*zeta^7 - 6*zeta^6 + 12*zeta^5 - 10*zeta^4 - 22*zeta^3
+ 12*zeta^2 + 6*zeta - 32)*q^459 + (28*zeta^11 - 28*zeta^10 + 14*zeta^8 - 
56*zeta^7 - 14*zeta^6 + 28*zeta^5 - 28*zeta^3 + 28*zeta^2 + 14*zeta - 42)*q^460 
+ (39*zeta^11 - 38*zeta^10 + 20*zeta^8 + 38*zeta^7 - 20*zeta^6 + 40*zeta^5 + 
zeta^4 - 39*zeta^3 + 40*zeta^2 + 20*zeta - 1)*q^461 + (40*zeta^11 - 24*zeta^10 +
28*zeta^8 + 24*zeta^7 - 28*zeta^6 + 56*zeta^5 + 16*zeta^4 - 40*zeta^3 + 
56*zeta^2 + 28*zeta - 16)*q^463 + (12*zeta^11 - 12*zeta^10 + 6*zeta^8 - 
24*zeta^7 - 6*zeta^6 + 12*zeta^5 - 12*zeta^3 + 12*zeta^2 + 6*zeta - 18)*q^464 + 
(8*zeta^11 - 16*zeta^10 - 32*zeta^7 - 8*zeta^4 - 8*zeta^3 - 16)*q^465 + 
(82*zeta^11 - 128*zeta^10 + 18*zeta^8 - 220*zeta^7 - 18*zeta^6 + 36*zeta^5 - 
46*zeta^4 - 82*zeta^3 + 36*zeta^2 + 18*zeta - 128)*q^466 + (20*zeta^11 + 
28*zeta^10 + 34*zeta^8 - 136*zeta^7 - 34*zeta^6 + 68*zeta^5 + 48*zeta^4 - 
20*zeta^3 + 68*zeta^2 + 34*zeta - 102)*q^467 + (86*zeta^11 - 68*zeta^10 + 
52*zeta^8 + 68*zeta^7 - 52*zeta^6 + 104*zeta^5 + 18*zeta^4 - 86*zeta^3 + 
104*zeta^2 + 52*zeta - 18)*q^468 + (-8*zeta^11 + 8*zeta^10 - 4*zeta^8 - 8*zeta^7
+ 4*zeta^6 - 8*zeta^5 + 8*zeta^3 - 8*zeta^2 - 4*zeta)*q^470 + (32*zeta^11 + 
12*zeta^10 + 38*zeta^8 - 152*zeta^7 - 38*zeta^6 + 76*zeta^5 + 44*zeta^4 - 
32*zeta^3 + 76*zeta^2 + 38*zeta - 114)*q^471 + (46*zeta^11 - 72*zeta^10 + 
10*zeta^8 - 124*zeta^7 - 10*zeta^6 + 20*zeta^5 - 26*zeta^4 - 46*zeta^3 + 
20*zeta^2 + 10*zeta - 72)*q^472 + (-24*zeta^11 + 32*zeta^10 - 8*zeta^8 + 
48*zeta^7 + 8*zeta^6 - 16*zeta^5 + 8*zeta^4 + 24*zeta^3 - 16*zeta^2 - 8*zeta + 
32)*q^473 + (16*zeta^10 + 8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 + 
16*zeta^4 + 16*zeta^2 + 8*zeta - 24)*q^474 + (26*zeta^11 - 28*zeta^10 + 
12*zeta^8 + 28*zeta^7 - 12*zeta^6 + 24*zeta^5 - 2*zeta^4 - 26*zeta^3 + 24*zeta^2
+ 12*zeta + 2)*q^475 + (8*zeta^11 - 8*zeta^10 + 4*zeta^8 + 8*zeta^7 - 4*zeta^6 +
8*zeta^5 - 8*zeta^3 + 8*zeta^2 + 4*zeta)*q^477 + (-2*zeta^11 - 12*zeta^10 - 
8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 - 14*zeta^4 + 2*zeta^3 - 16*zeta^2 -
8*zeta + 24)*q^478 + (46*zeta^11 - 72*zeta^10 + 10*zeta^8 - 124*zeta^7 - 
10*zeta^6 + 20*zeta^5 - 26*zeta^4 - 46*zeta^3 + 20*zeta^2 + 10*zeta - 72)*q^479 
+ (-14*zeta^11 + 8*zeta^10 - 10*zeta^8 - 4*zeta^7 + 10*zeta^6 - 20*zeta^5 - 
6*zeta^4 + 14*zeta^3 - 20*zeta^2 - 10*zeta + 8)*q^480 + (-16*zeta^11 - 8*zeta^10
- 20*zeta^8 + 80*zeta^7 + 20*zeta^6 - 40*zeta^5 - 24*zeta^4 + 16*zeta^3 - 
40*zeta^2 - 20*zeta + 60)*q^481 + (-39*zeta^11 + 30*zeta^10 - 24*zeta^8 - 
30*zeta^7 + 24*zeta^6 - 48*zeta^5 - 9*zeta^4 + 39*zeta^3 - 48*zeta^2 - 24*zeta +
9)*q^482 + (-56*zeta^11 + 42*zeta^10 - 35*zeta^8 - 42*zeta^7 + 35*zeta^6 - 
70*zeta^5 - 14*zeta^4 + 56*zeta^3 - 70*zeta^2 - 35*zeta + 14)*q^484 + 
(-6*zeta^11 + 4*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 8*zeta^5 - 2*zeta^4 
+ 6*zeta^3 - 8*zeta^2 - 4*zeta + 12)*q^485 + (8*zeta^11 - 12*zeta^10 + 2*zeta^8 
- 20*zeta^7 - 2*zeta^6 + 4*zeta^5 - 4*zeta^4 - 8*zeta^3 + 4*zeta^2 + 2*zeta - 
12)*q^486 + (44*zeta^11 - 56*zeta^10 + 16*zeta^8 - 80*zeta^7 - 16*zeta^6 + 
32*zeta^5 - 12*zeta^4 - 44*zeta^3 + 32*zeta^2 + 16*zeta - 56)*q^487 + 
(-18*zeta^11 + 2*zeta^10 - 17*zeta^8 + 68*zeta^7 + 17*zeta^6 - 34*zeta^5 - 
16*zeta^4 + 18*zeta^3 - 34*zeta^2 - 17*zeta + 51)*q^488 + (48*zeta^11 - 
32*zeta^10 + 32*zeta^8 + 32*zeta^7 - 32*zeta^6 + 64*zeta^5 + 16*zeta^4 - 
48*zeta^3 + 64*zeta^2 + 32*zeta - 16)*q^489 + (80*zeta^11 - 68*zeta^10 + 
46*zeta^8 + 68*zeta^7 - 46*zeta^6 + 92*zeta^5 + 12*zeta^4 - 80*zeta^3 + 
92*zeta^2 + 46*zeta - 12)*q^491 + (-20*zeta^11 + 4*zeta^10 - 18*zeta^8 + 
72*zeta^7 + 18*zeta^6 - 36*zeta^5 - 16*zeta^4 + 20*zeta^3 - 36*zeta^2 - 18*zeta 
+ 54)*q^492 + (-20*zeta^11 + 24*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 
16*zeta^5 + 4*zeta^4 + 20*zeta^3 - 16*zeta^2 - 8*zeta + 24)*q^493 + (56*zeta^11 
- 88*zeta^10 + 12*zeta^8 - 152*zeta^7 - 12*zeta^6 + 24*zeta^5 - 32*zeta^4 - 
56*zeta^3 + 24*zeta^2 + 12*zeta - 88)*q^494 + (8*zeta^11 - 8*zeta^10 + 4*zeta^8 
- 16*zeta^7 - 4*zeta^6 + 8*zeta^5 - 8*zeta^3 + 8*zeta^2 + 4*zeta - 12)*q^495 + 
(42*zeta^11 - 36*zeta^10 + 24*zeta^8 + 36*zeta^7 - 24*zeta^6 + 48*zeta^5 + 
6*zeta^4 - 42*zeta^3 + 48*zeta^2 + 24*zeta - 6)*q^496 + (-152*zeta^11 + 
128*zeta^10 - 88*zeta^8 - 128*zeta^7 + 88*zeta^6 - 176*zeta^5 - 24*zeta^4 + 
152*zeta^3 - 176*zeta^2 - 88*zeta + 24)*q^498 + (8*zeta^11 + 16*zeta^10 + 
16*zeta^8 - 64*zeta^7 - 16*zeta^6 + 32*zeta^5 + 24*zeta^4 - 8*zeta^3 + 32*zeta^2
+ 16*zeta - 48)*q^499 + (-28*zeta^11 + 48*zeta^10 - 4*zeta^8 + 88*zeta^7 + 
4*zeta^6 - 8*zeta^5 + 20*zeta^4 + 28*zeta^3 - 8*zeta^2 - 4*zeta + 48)*q^500 + 
(84*zeta^11 - 112*zeta^10 + 28*zeta^8 - 168*zeta^7 - 28*zeta^6 + 56*zeta^5 - 
28*zeta^4 - 84*zeta^3 + 56*zeta^2 + 28*zeta - 112)*q^501 + (-8*zeta^11 - 
4*zeta^10 - 10*zeta^8 + 40*zeta^7 + 10*zeta^6 - 20*zeta^5 - 12*zeta^4 + 8*zeta^3
- 20*zeta^2 - 10*zeta + 30)*q^502 + (20*zeta^11 - 20*zeta^10 + 10*zeta^8 + 
20*zeta^7 - 10*zeta^6 + 20*zeta^5 - 20*zeta^3 + 20*zeta^2 + 10*zeta)*q^505 + 
(-12*zeta^11 - 8*zeta^10 - 16*zeta^8 + 64*zeta^7 + 16*zeta^6 - 32*zeta^5 - 
20*zeta^4 + 12*zeta^3 - 32*zeta^2 - 16*zeta + 48)*q^506 + (-58*zeta^11 + 
84*zeta^10 - 16*zeta^8 + 136*zeta^7 + 16*zeta^6 - 32*zeta^5 + 26*zeta^4 + 
58*zeta^3 - 32*zeta^2 - 16*zeta + 84)*q^507 + (-56*zeta^11 + 88*zeta^10 - 
12*zeta^8 + 152*zeta^7 + 12*zeta^6 - 24*zeta^5 + 32*zeta^4 + 56*zeta^3 - 
24*zeta^2 - 12*zeta + 88)*q^508 + (-10*zeta^11 - 22*zeta^10 - 21*zeta^8 + 
84*zeta^7 + 21*zeta^6 - 42*zeta^5 - 32*zeta^4 + 10*zeta^3 - 42*zeta^2 - 21*zeta 
+ 63)*q^509 + (-36*zeta^11 + 32*zeta^10 - 20*zeta^8 - 32*zeta^7 + 20*zeta^6 - 
40*zeta^5 - 4*zeta^4 + 36*zeta^3 - 40*zeta^2 - 20*zeta + 4)*q^510 + (63*zeta^11 
- 60*zeta^10 + 33*zeta^8 + 60*zeta^7 - 33*zeta^6 + 66*zeta^5 + 3*zeta^4 - 
63*zeta^3 + 66*zeta^2 + 33*zeta - 3)*q^512 + (8*zeta^10 + 4*zeta^8 - 16*zeta^7 -
4*zeta^6 + 8*zeta^5 + 8*zeta^4 + 8*zeta^2 + 4*zeta - 12)*q^513 + (67*zeta^11 - 
108*zeta^10 + 13*zeta^8 - 190*zeta^7 - 13*zeta^6 + 26*zeta^5 - 41*zeta^4 - 
67*zeta^3 + 26*zeta^2 + 13*zeta - 108)*q^514 + (20*zeta^11 - 24*zeta^10 + 
8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 - 4*zeta^4 - 20*zeta^3 + 16*zeta^2 +
8*zeta - 24)*q^515 + (32*zeta^11 + 16*zeta^10 + 40*zeta^8 - 160*zeta^7 - 
40*zeta^6 + 80*zeta^5 + 48*zeta^4 - 32*zeta^3 + 80*zeta^2 + 40*zeta - 120)*q^516
+ (12*zeta^11 - 8*zeta^10 + 8*zeta^8 + 8*zeta^7 - 8*zeta^6 + 16*zeta^5 + 
4*zeta^4 - 12*zeta^3 + 16*zeta^2 + 8*zeta - 4)*q^517 + (-26*zeta^11 + 36*zeta^10
- 8*zeta^8 - 36*zeta^7 + 8*zeta^6 - 16*zeta^5 + 10*zeta^4 + 26*zeta^3 - 
16*zeta^2 - 8*zeta - 10)*q^519 + (14*zeta^11 + 14*zeta^8 - 56*zeta^7 - 14*zeta^6
+ 28*zeta^5 + 14*zeta^4 - 14*zeta^3 + 28*zeta^2 + 14*zeta - 42)*q^520 + 
(-31*zeta^11 + 64*zeta^10 + zeta^8 + 130*zeta^7 - zeta^6 + 2*zeta^5 + 33*zeta^4 
+ 31*zeta^3 + 2*zeta^2 + zeta + 64)*q^521 + (12*zeta^11 - 16*zeta^10 + 4*zeta^8 
- 24*zeta^7 - 4*zeta^6 + 8*zeta^5 - 4*zeta^4 - 12*zeta^3 + 8*zeta^2 + 4*zeta - 
16)*q^522 + (-20*zeta^11 + 8*zeta^10 - 16*zeta^8 + 64*zeta^7 + 16*zeta^6 - 
32*zeta^5 - 12*zeta^4 + 20*zeta^3 - 32*zeta^2 - 16*zeta + 48)*q^523 + 
(-56*zeta^11 + 56*zeta^10 - 28*zeta^8 - 56*zeta^7 + 28*zeta^6 - 56*zeta^5 + 
56*zeta^3 - 56*zeta^2 - 28*zeta)*q^524 + (86*zeta^11 - 72*zeta^10 + 50*zeta^8 + 
72*zeta^7 - 50*zeta^6 + 100*zeta^5 + 14*zeta^4 - 86*zeta^3 + 100*zeta^2 + 
50*zeta - 14)*q^526 + (20*zeta^11 + 32*zeta^10 + 36*zeta^8 - 144*zeta^7 - 
36*zeta^6 + 72*zeta^5 + 52*zeta^4 - 20*zeta^3 + 72*zeta^2 + 36*zeta - 108)*q^527
+ (12*zeta^11 - 24*zeta^10 - 48*zeta^7 - 12*zeta^4 - 12*zeta^3 - 24)*q^528 + 
(35*zeta^11 - 38*zeta^10 + 16*zeta^8 - 44*zeta^7 - 16*zeta^6 + 32*zeta^5 - 
3*zeta^4 - 35*zeta^3 + 32*zeta^2 + 16*zeta - 38)*q^529 + (4*zeta^10 + 2*zeta^8 -
8*zeta^7 - 2*zeta^6 + 4*zeta^5 + 4*zeta^4 + 4*zeta^2 + 2*zeta - 6)*q^530 + 
(-28*zeta^11 + 24*zeta^10 - 16*zeta^8 - 24*zeta^7 + 16*zeta^6 - 32*zeta^5 - 
4*zeta^4 + 28*zeta^3 - 32*zeta^2 - 16*zeta + 4)*q^531 + (-26*zeta^11 + 
16*zeta^10 - 18*zeta^8 - 16*zeta^7 + 18*zeta^6 - 36*zeta^5 - 10*zeta^4 + 
26*zeta^3 - 36*zeta^2 - 18*zeta + 10)*q^533 + (8*zeta^11 + 28*zeta^10 + 
22*zeta^8 - 88*zeta^7 - 22*zeta^6 + 44*zeta^5 + 36*zeta^4 - 8*zeta^3 + 44*zeta^2
+ 22*zeta - 66)*q^534 + (-10*zeta^11 + 16*zeta^10 - 2*zeta^8 + 28*zeta^7 + 
2*zeta^6 - 4*zeta^5 + 6*zeta^4 + 10*zeta^3 - 4*zeta^2 - 2*zeta + 16)*q^535 + 
(44*zeta^11 - 64*zeta^10 + 12*zeta^8 - 104*zeta^7 - 12*zeta^6 + 24*zeta^5 - 
20*zeta^4 - 44*zeta^3 + 24*zeta^2 + 12*zeta - 64)*q^536 + (28*zeta^11 - 
16*zeta^10 + 20*zeta^8 - 80*zeta^7 - 20*zeta^6 + 40*zeta^5 + 12*zeta^4 - 
28*zeta^3 + 40*zeta^2 + 20*zeta - 60)*q^537 + (53*zeta^11 - 46*zeta^10 + 
30*zeta^8 + 46*zeta^7 - 30*zeta^6 + 60*zeta^5 + 7*zeta^4 - 53*zeta^3 + 60*zeta^2
+ 30*zeta - 7)*q^538 + (-10*zeta^11 + 4*zeta^10 - 8*zeta^8 - 4*zeta^7 + 8*zeta^6
- 16*zeta^5 - 6*zeta^4 + 10*zeta^3 - 16*zeta^2 - 8*zeta + 6)*q^540 + (-6*zeta^11
+ 16*zeta^10 + 2*zeta^8 - 8*zeta^7 - 2*zeta^6 + 4*zeta^5 + 10*zeta^4 + 6*zeta^3 
+ 4*zeta^2 + 2*zeta - 6)*q^541 + (-66*zeta^11 + 104*zeta^10 - 14*zeta^8 + 
180*zeta^7 + 14*zeta^6 - 28*zeta^5 + 38*zeta^4 + 66*zeta^3 - 28*zeta^2 - 14*zeta
+ 104)*q^542 + (-14*zeta^11 + 24*zeta^10 - 2*zeta^8 + 44*zeta^7 + 2*zeta^6 - 
4*zeta^5 + 10*zeta^4 + 14*zeta^3 - 4*zeta^2 - 2*zeta + 24)*q^543 + (14*zeta^10 +
7*zeta^8 - 28*zeta^7 - 7*zeta^6 + 14*zeta^5 + 14*zeta^4 + 14*zeta^2 + 7*zeta - 
21)*q^544 + (-8*zeta^11 - 8*zeta^8 + 8*zeta^6 - 16*zeta^5 - 8*zeta^4 + 8*zeta^3 
- 16*zeta^2 - 8*zeta + 8)*q^545 + (-4*zeta^11 + 16*zeta^10 + 4*zeta^8 - 
16*zeta^7 - 4*zeta^6 + 8*zeta^5 + 12*zeta^4 + 4*zeta^3 + 8*zeta^2 + 4*zeta - 
12)*q^547 + (40*zeta^11 + 20*zeta^10 + 50*zeta^8 - 200*zeta^7 - 50*zeta^6 + 
100*zeta^5 + 60*zeta^4 - 40*zeta^3 + 100*zeta^2 + 50*zeta - 150)*q^548 + 
(2*zeta^11 + 8*zeta^10 + 6*zeta^8 + 28*zeta^7 - 6*zeta^6 + 12*zeta^5 + 10*zeta^4
- 2*zeta^3 + 12*zeta^2 + 6*zeta + 8)*q^549 + (32*zeta^11 - 52*zeta^10 + 6*zeta^8
- 92*zeta^7 - 6*zeta^6 + 12*zeta^5 - 20*zeta^4 - 32*zeta^3 + 12*zeta^2 + 6*zeta 
- 52)*q^550 + (8*zeta^11 - 16*zeta^10 - 8*zeta^4 - 8*zeta^3)*q^551 + 
(-68*zeta^11 + 48*zeta^10 - 44*zeta^8 - 48*zeta^7 + 44*zeta^6 - 88*zeta^5 - 
20*zeta^4 + 68*zeta^3 - 88*zeta^2 - 44*zeta + 20)*q^552 + (-66*zeta^11 + 
56*zeta^10 - 38*zeta^8 - 56*zeta^7 + 38*zeta^6 - 76*zeta^5 - 10*zeta^4 + 
66*zeta^3 - 76*zeta^2 - 38*zeta + 10)*q^554 + (-16*zeta^11 + 16*zeta^10 - 
8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 + 16*zeta^3 - 16*zeta^2 - 8*zeta + 
24)*q^555 + (-56*zeta^11 + 72*zeta^10 - 20*zeta^8 + 104*zeta^7 + 20*zeta^6 - 
40*zeta^5 + 16*zeta^4 + 56*zeta^3 - 40*zeta^2 - 20*zeta + 72)*q^556 + 
(-26*zeta^11 + 52*zeta^10 + 104*zeta^7 + 26*zeta^4 + 26*zeta^3 + 52)*q^557 + 
(-16*zeta^11 - 24*zeta^10 - 28*zeta^8 + 112*zeta^7 + 28*zeta^6 - 56*zeta^5 - 
40*zeta^4 + 16*zeta^3 - 56*zeta^2 - 28*zeta + 84)*q^558 + (64*zeta^11 - 
48*zeta^10 + 40*zeta^8 + 48*zeta^7 - 40*zeta^6 + 80*zeta^5 + 16*zeta^4 - 
64*zeta^3 + 80*zeta^2 + 40*zeta - 16)*q^559 + (52*zeta^11 - 40*zeta^10 + 
32*zeta^8 + 40*zeta^7 - 32*zeta^6 + 64*zeta^5 + 12*zeta^4 - 52*zeta^3 + 
64*zeta^2 + 32*zeta - 12)*q^561 + (-20*zeta^11 - 28*zeta^10 - 34*zeta^8 + 
136*zeta^7 + 34*zeta^6 - 68*zeta^5 - 48*zeta^4 + 20*zeta^3 - 68*zeta^2 - 34*zeta
+ 102)*q^562 + (-10*zeta^11 + 16*zeta^10 - 2*zeta^8 + 28*zeta^7 + 2*zeta^6 - 
4*zeta^5 + 6*zeta^4 + 10*zeta^3 - 4*zeta^2 - 2*zeta + 16)*q^563 + (28*zeta^11 - 
48*zeta^10 + 4*zeta^8 - 88*zeta^7 - 4*zeta^6 + 8*zeta^5 - 20*zeta^4 - 28*zeta^3 
+ 8*zeta^2 + 4*zeta - 48)*q^564 + (-4*zeta^11 + 20*zeta^10 + 6*zeta^8 - 
24*zeta^7 - 6*zeta^6 + 12*zeta^5 + 16*zeta^4 + 4*zeta^3 + 12*zeta^2 + 6*zeta - 
18)*q^565 + (42*zeta^11 - 36*zeta^10 + 24*zeta^8 + 36*zeta^7 - 24*zeta^6 + 
48*zeta^5 + 6*zeta^4 - 42*zeta^3 + 48*zeta^2 + 24*zeta - 6)*q^566 + (122*zeta^11
- 96*zeta^10 + 74*zeta^8 + 96*zeta^7 - 74*zeta^6 + 148*zeta^5 + 26*zeta^4 - 
122*zeta^3 + 148*zeta^2 + 74*zeta - 26)*q^568 + (8*zeta^11 - 12*zeta^10 + 
2*zeta^8 - 8*zeta^7 - 2*zeta^6 + 4*zeta^5 - 4*zeta^4 - 8*zeta^3 + 4*zeta^2 + 
2*zeta - 6)*q^569 + (8*zeta^11 - 16*zeta^10 - 32*zeta^7 - 8*zeta^4 - 8*zeta^3 - 
16)*q^570 + (-40*zeta^11 + 72*zeta^10 - 4*zeta^8 + 136*zeta^7 + 4*zeta^6 - 
8*zeta^5 + 32*zeta^4 + 40*zeta^3 - 8*zeta^2 - 4*zeta + 72)*q^571 + (-16*zeta^11 
- 36*zeta^10 - 34*zeta^8 + 136*zeta^7 + 34*zeta^6 - 68*zeta^5 - 52*zeta^4 + 
16*zeta^3 - 68*zeta^2 - 34*zeta + 102)*q^572 + (-72*zeta^11 + 72*zeta^10 - 
36*zeta^8 - 72*zeta^7 + 36*zeta^6 - 72*zeta^5 + 72*zeta^3 - 72*zeta^2 - 
36*zeta)*q^573 + (-32*zeta^11 + 44*zeta^10 - 10*zeta^8 - 44*zeta^7 + 10*zeta^6 -
20*zeta^5 + 12*zeta^4 + 32*zeta^3 - 20*zeta^2 - 10*zeta - 12)*q^575 + 
(-14*zeta^11 - 8*zeta^10 - 18*zeta^8 + 72*zeta^7 + 18*zeta^6 - 36*zeta^5 - 
22*zeta^4 + 14*zeta^3 - 36*zeta^2 - 18*zeta + 54)*q^576 + (-3*zeta^11 + 
20*zeta^10 + 7*zeta^8 + 54*zeta^7 - 7*zeta^6 + 14*zeta^5 + 17*zeta^4 + 3*zeta^3 
+ 14*zeta^2 + 7*zeta + 20)*q^577 + (80*zeta^11 - 126*zeta^10 + 17*zeta^8 - 
218*zeta^7 - 17*zeta^6 + 34*zeta^5 - 46*zeta^4 - 80*zeta^3 + 34*zeta^2 + 17*zeta
- 126)*q^578 + (12*zeta^11 + 32*zeta^10 + 28*zeta^8 - 112*zeta^7 - 28*zeta^6 + 
56*zeta^5 + 44*zeta^4 - 12*zeta^3 + 56*zeta^2 + 28*zeta - 84)*q^579 + (8*zeta^11
+ 8*zeta^10 + 12*zeta^8 - 8*zeta^7 - 12*zeta^6 + 24*zeta^5 + 16*zeta^4 - 
8*zeta^3 + 24*zeta^2 + 12*zeta - 16)*q^580 + (54*zeta^11 - 44*zeta^10 + 
32*zeta^8 + 44*zeta^7 - 32*zeta^6 + 64*zeta^5 + 10*zeta^4 - 54*zeta^3 + 
64*zeta^2 + 32*zeta - 10)*q^582 + (-4*zeta^11 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 
- 8*zeta^5 - 4*zeta^4 + 4*zeta^3 - 8*zeta^2 - 4*zeta + 12)*q^583 + (53*zeta^11 -
72*zeta^10 + 17*zeta^8 - 110*zeta^7 - 17*zeta^6 + 34*zeta^5 - 19*zeta^4 - 
53*zeta^3 + 34*zeta^2 + 17*zeta - 72)*q^584 + (-8*zeta^10 - 4*zeta^8 - 24*zeta^7
+ 4*zeta^6 - 8*zeta^5 - 8*zeta^4 - 8*zeta^2 - 4*zeta - 8)*q^585 + (-20*zeta^11 -
38*zeta^10 - 39*zeta^8 + 156*zeta^7 + 39*zeta^6 - 78*zeta^5 - 58*zeta^4 + 
20*zeta^3 - 78*zeta^2 - 39*zeta + 117)*q^586 + (34*zeta^11 - 36*zeta^10 + 
16*zeta^8 + 36*zeta^7 - 16*zeta^6 + 32*zeta^5 - 2*zeta^4 - 34*zeta^3 + 32*zeta^2
+ 16*zeta + 2)*q^587 + (-40*zeta^11 + 32*zeta^10 - 24*zeta^8 - 32*zeta^7 + 
24*zeta^6 - 48*zeta^5 - 8*zeta^4 + 40*zeta^3 - 48*zeta^2 - 24*zeta + 8)*q^589 + 
(-4*zeta^11 - 8*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 - 
12*zeta^4 + 4*zeta^3 - 16*zeta^2 - 8*zeta + 24)*q^590 + (-4*zeta^11 + 8*zeta^10 
+ 16*zeta^7 + 4*zeta^4 + 4*zeta^3 + 8)*q^591 + (12*zeta^11 - 24*zeta^10 - 
48*zeta^7 - 12*zeta^4 - 12*zeta^3 - 24)*q^592 + (-14*zeta^11 - 10*zeta^10 - 
19*zeta^8 + 76*zeta^7 + 19*zeta^6 - 38*zeta^5 - 24*zeta^4 + 14*zeta^3 - 
38*zeta^2 - 19*zeta + 57)*q^593 + (20*zeta^11 - 16*zeta^10 + 12*zeta^8 + 
16*zeta^7 - 12*zeta^6 + 24*zeta^5 + 4*zeta^4 - 20*zeta^3 + 24*zeta^2 + 12*zeta -
4)*q^594 + (-40*zeta^11 + 44*zeta^10 - 18*zeta^8 - 44*zeta^7 + 18*zeta^6 - 
36*zeta^5 + 4*zeta^4 + 40*zeta^3 - 36*zeta^2 - 18*zeta - 4)*q^596 + (32*zeta^11 
- 16*zeta^10 + 24*zeta^8 - 96*zeta^7 - 24*zeta^6 + 48*zeta^5 + 16*zeta^4 - 
32*zeta^3 + 48*zeta^2 + 24*zeta - 72)*q^597 + (-70*zeta^11 + 112*zeta^10 - 
14*zeta^8 + 196*zeta^7 + 14*zeta^6 - 28*zeta^5 + 42*zeta^4 + 70*zeta^3 - 
28*zeta^2 - 14*zeta + 112)*q^598 + (2*zeta^11 - 4*zeta^10 - 8*zeta^7 - 2*zeta^4 
- 2*zeta^3 - 4)*q^599 + (-10*zeta^11 - 44*zeta^10 - 32*zeta^8 + 128*zeta^7 + 
32*zeta^6 - 64*zeta^5 - 54*zeta^4 + 10*zeta^3 - 64*zeta^2 - 32*zeta + 96)*q^600 
+ (zeta^11 - 6*zeta^10 - 2*zeta^8 + 6*zeta^7 + 2*zeta^6 - 4*zeta^5 - 5*zeta^4 - 
zeta^3 - 4*zeta^2 - 2*zeta + 5)*q^601 + (-24*zeta^11 + 16*zeta^10 - 16*zeta^8 - 
16*zeta^7 + 16*zeta^6 - 32*zeta^5 - 8*zeta^4 + 24*zeta^3 - 32*zeta^2 - 16*zeta +
8)*q^603 + (-12*zeta^11 - 48*zeta^10 - 36*zeta^8 + 144*zeta^7 + 36*zeta^6 - 
72*zeta^5 - 60*zeta^4 + 12*zeta^3 - 72*zeta^2 - 36*zeta + 108)*q^604 + 
(7*zeta^11 + 7*zeta^8 + 14*zeta^7 - 7*zeta^6 + 14*zeta^5 + 7*zeta^4 - 7*zeta^3 +
14*zeta^2 + 7*zeta)*q^605 + (-130*zeta^11 + 200*zeta^10 - 30*zeta^8 + 340*zeta^7
+ 30*zeta^6 - 60*zeta^5 + 70*zeta^4 + 130*zeta^3 - 60*zeta^2 - 30*zeta + 
200)*q^606 + (-24*zeta^11 - 8*zeta^10 - 28*zeta^8 + 112*zeta^7 + 28*zeta^6 - 
56*zeta^5 - 32*zeta^4 + 24*zeta^3 - 56*zeta^2 - 28*zeta + 84)*q^607 + 
(-10*zeta^11 + 4*zeta^10 - 8*zeta^8 - 4*zeta^7 + 8*zeta^6 - 16*zeta^5 - 6*zeta^4
+ 10*zeta^3 - 16*zeta^2 - 8*zeta + 6)*q^608 + O(q^609), (zeta^11 - 2*zeta^10 + 
2*zeta^7 - zeta^4 - zeta^3 + 1)*q + (4*zeta^11 - 6*zeta^10 + zeta^8 - 4*zeta^7 -
zeta^6 + 2*zeta^5 - 2*zeta^4 - 4*zeta^3 + 2*zeta^2 + zeta - 3)*q^2 + (-2*zeta^11
- 2*zeta^8 - 4*zeta^7 + 2*zeta^6 - 4*zeta^5 - 2*zeta^4 + 2*zeta^3 - 4*zeta^2 - 
2*zeta)*q^3 + (9*zeta^11 - 8*zeta^10 + 5*zeta^8 - 6*zeta^7 - 5*zeta^6 + 
10*zeta^5 + zeta^4 - 9*zeta^3 + 10*zeta^2 + 5*zeta - 8)*q^4 + (-2*zeta^11 - 
2*zeta^8 + 8*zeta^7 + 2*zeta^6 - 4*zeta^5 - 2*zeta^4 + 2*zeta^3 - 4*zeta^2 - 
2*zeta + 6)*q^5 + (-2*zeta^11 - 4*zeta^10 - 4*zeta^8 + 4*zeta^7 + 4*zeta^6 - 
8*zeta^5 - 6*zeta^4 + 2*zeta^3 - 8*zeta^2 - 4*zeta + 6)*q^6 + (-zeta^11 + 
6*zeta^10 + 2*zeta^8 - 6*zeta^7 - 2*zeta^6 + 4*zeta^5 + 5*zeta^4 + zeta^3 + 
4*zeta^2 + 2*zeta - 5)*q^8 + (4*zeta^11 - 4*zeta^10 + 2*zeta^8 - 8*zeta^7 - 
2*zeta^6 + 4*zeta^5 - 4*zeta^3 + 4*zeta^2 + 2*zeta - 6)*q^9 + (-4*zeta^11 + 
4*zeta^10 - 2*zeta^8 + 4*zeta^7 + 2*zeta^6 - 4*zeta^5 + 4*zeta^3 - 4*zeta^2 - 
2*zeta + 4)*q^10 + (-2*zeta^11 - 2*zeta^8 - 4*zeta^7 + 2*zeta^6 - 4*zeta^5 - 
2*zeta^4 + 2*zeta^3 - 4*zeta^2 - 2*zeta)*q^11 + (12*zeta^11 - 20*zeta^10 + 
2*zeta^8 - 8*zeta^7 - 2*zeta^6 + 4*zeta^5 - 8*zeta^4 - 12*zeta^3 + 4*zeta^2 + 
2*zeta - 6)*q^12 + (2*zeta^11 - 8*zeta^10 - 2*zeta^8 + 8*zeta^7 + 2*zeta^6 - 
4*zeta^5 - 6*zeta^4 - 2*zeta^3 - 4*zeta^2 - 2*zeta + 6)*q^13 + (-8*zeta^11 + 
8*zeta^10 - 4*zeta^8 - 8*zeta^7 + 4*zeta^6 - 8*zeta^5 + 8*zeta^3 - 8*zeta^2 - 
4*zeta)*q^15 + (-6*zeta^11 + 6*zeta^10 - 3*zeta^8 + 12*zeta^7 + 3*zeta^6 - 
6*zeta^5 + 6*zeta^3 - 6*zeta^2 - 3*zeta + 9)*q^16 + (14*zeta^11 - 12*zeta^10 + 
8*zeta^8 - 8*zeta^7 - 8*zeta^6 + 16*zeta^5 + 2*zeta^4 - 14*zeta^3 + 16*zeta^2 + 
8*zeta - 12)*q^17 + (10*zeta^11 - 8*zeta^10 + 6*zeta^8 - 4*zeta^7 - 6*zeta^6 + 
12*zeta^5 + 2*zeta^4 - 10*zeta^3 + 12*zeta^2 + 6*zeta - 8)*q^18 + (-4*zeta^11 + 
8*zeta^10 + 4*zeta^4 + 4*zeta^3)*q^19 + (-8*zeta^11 + 4*zeta^10 - 6*zeta^8 - 
4*zeta^7 + 6*zeta^6 - 12*zeta^5 - 4*zeta^4 + 8*zeta^3 - 12*zeta^2 - 6*zeta + 
4)*q^20 + (-2*zeta^11 - 4*zeta^10 - 4*zeta^8 + 4*zeta^7 + 4*zeta^6 - 8*zeta^5 - 
6*zeta^4 + 2*zeta^3 - 8*zeta^2 - 4*zeta + 6)*q^22 + (-4*zeta^11 + 12*zeta^10 + 
2*zeta^8 - 8*zeta^7 - 2*zeta^6 + 4*zeta^5 + 8*zeta^4 + 4*zeta^3 + 4*zeta^2 + 
2*zeta - 6)*q^23 + (14*zeta^11 - 8*zeta^10 + 10*zeta^8 + 4*zeta^7 - 10*zeta^6 + 
20*zeta^5 + 6*zeta^4 - 14*zeta^3 + 20*zeta^2 + 10*zeta - 8)*q^24 + (-15*zeta^11 
+ 16*zeta^10 - 7*zeta^8 + 18*zeta^7 + 7*zeta^6 - 14*zeta^5 + zeta^4 + 15*zeta^3 
- 14*zeta^2 - 7*zeta + 16)*q^25 + (22*zeta^11 - 32*zeta^10 + 6*zeta^8 - 
24*zeta^7 - 6*zeta^6 + 12*zeta^5 - 10*zeta^4 - 22*zeta^3 + 12*zeta^2 + 6*zeta - 
18)*q^26 + (-2*zeta^11 + 4*zeta^10 - 4*zeta^7 + 2*zeta^4 + 2*zeta^3 - 2)*q^27 + 
(-8*zeta^11 + 8*zeta^10 - 4*zeta^8 - 8*zeta^7 + 4*zeta^6 - 8*zeta^5 + 8*zeta^3 -
8*zeta^2 - 4*zeta)*q^29 + (-4*zeta^11 + 8*zeta^10 + 4*zeta^4 + 4*zeta^3)*q^30 + 
(-12*zeta^11 + 8*zeta^10 - 8*zeta^8 + 8*zeta^6 - 16*zeta^5 - 4*zeta^4 + 
12*zeta^3 - 16*zeta^2 - 8*zeta + 8)*q^31 + (-zeta^11 + 4*zeta^10 + zeta^8 + 
10*zeta^7 - zeta^6 + 2*zeta^5 + 3*zeta^4 + zeta^3 + 2*zeta^2 + zeta + 4)*q^32 + 
(-8*zeta^11 + 8*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 8*zeta^5 + 8*zeta^3 
- 8*zeta^2 - 4*zeta + 12)*q^33 + (2*zeta^11 + 16*zeta^10 + 10*zeta^8 - 16*zeta^7
- 10*zeta^6 + 20*zeta^5 + 18*zeta^4 - 2*zeta^3 + 20*zeta^2 + 10*zeta - 18)*q^34 
+ (6*zeta^11 + 4*zeta^10 + 8*zeta^8 - 4*zeta^7 - 8*zeta^6 + 16*zeta^5 + 
10*zeta^4 - 6*zeta^3 + 16*zeta^2 + 8*zeta - 10)*q^36 + (8*zeta^11 - 8*zeta^10 + 
4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 8*zeta^5 - 8*zeta^3 + 8*zeta^2 + 4*zeta - 
12)*q^37 + (-12*zeta^11 + 8*zeta^10 - 8*zeta^8 + 8*zeta^6 - 16*zeta^5 - 4*zeta^4
+ 12*zeta^3 - 16*zeta^2 - 8*zeta + 8)*q^38 + (-16*zeta^11 + 8*zeta^10 - 
12*zeta^8 - 8*zeta^7 + 12*zeta^6 - 24*zeta^5 - 8*zeta^4 + 16*zeta^3 - 24*zeta^2 
- 12*zeta + 8)*q^39 + (6*zeta^11 - 4*zeta^10 + 4*zeta^8 - 16*zeta^7 - 4*zeta^6 +
8*zeta^5 + 2*zeta^4 - 6*zeta^3 + 8*zeta^2 + 4*zeta - 12)*q^40 + (8*zeta^11 - 
4*zeta^10 + 6*zeta^8 + 4*zeta^7 - 6*zeta^6 + 12*zeta^5 + 4*zeta^4 - 8*zeta^3 + 
12*zeta^2 + 6*zeta - 4)*q^41 + (8*zeta^11 + 8*zeta^8 - 8*zeta^6 + 16*zeta^5 + 
8*zeta^4 - 8*zeta^3 + 16*zeta^2 + 8*zeta - 8)*q^43 + (12*zeta^11 - 20*zeta^10 + 
2*zeta^8 - 8*zeta^7 - 2*zeta^6 + 4*zeta^5 - 8*zeta^4 - 12*zeta^3 + 4*zeta^2 + 
2*zeta - 6)*q^44 + (4*zeta^11 - 8*zeta^10 - 16*zeta^7 - 4*zeta^4 - 4*zeta^3 - 
8)*q^45 + (-14*zeta^11 + 8*zeta^10 - 10*zeta^8 - 4*zeta^7 + 10*zeta^6 - 
20*zeta^5 - 6*zeta^4 + 14*zeta^3 - 20*zeta^2 - 10*zeta + 8)*q^46 + (-4*zeta^11 +
8*zeta^10 + 4*zeta^4 + 4*zeta^3)*q^47 + (-6*zeta^11 + 12*zeta^10 - 12*zeta^7 + 
6*zeta^4 + 6*zeta^3 - 6)*q^48 + (zeta^11 - 14*zeta^10 - 6*zeta^8 + 14*zeta^7 + 
6*zeta^6 - 12*zeta^5 - 13*zeta^4 - zeta^3 - 12*zeta^2 - 6*zeta + 13)*q^50 + 
(20*zeta^11 - 32*zeta^10 + 4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 8*zeta^5 - 
12*zeta^4 - 20*zeta^3 + 8*zeta^2 + 4*zeta - 12)*q^51 + (44*zeta^11 - 36*zeta^10 
+ 26*zeta^8 - 20*zeta^7 - 26*zeta^6 + 52*zeta^5 + 8*zeta^4 - 44*zeta^3 + 
52*zeta^2 + 26*zeta - 36)*q^52 + (-2*zeta^11 - 2*zeta^8 - 4*zeta^7 + 2*zeta^6 - 
4*zeta^5 - 2*zeta^4 + 2*zeta^3 - 4*zeta^2 - 2*zeta)*q^53 + (-8*zeta^11 + 
12*zeta^10 - 2*zeta^8 + 8*zeta^7 + 2*zeta^6 - 4*zeta^5 + 4*zeta^4 + 8*zeta^3 - 
4*zeta^2 - 2*zeta + 6)*q^54 + (-8*zeta^11 + 8*zeta^10 - 4*zeta^8 - 8*zeta^7 + 
4*zeta^6 - 8*zeta^5 + 8*zeta^3 - 8*zeta^2 - 4*zeta)*q^55 + (8*zeta^11 + 8*zeta^8
- 8*zeta^6 + 16*zeta^5 + 8*zeta^4 - 8*zeta^3 + 16*zeta^2 + 8*zeta - 8)*q^57 + 
(-4*zeta^11 + 8*zeta^10 + 4*zeta^4 + 4*zeta^3)*q^58 + (-12*zeta^11 + 8*zeta^10 -
8*zeta^8 + 8*zeta^6 - 16*zeta^5 - 4*zeta^4 + 12*zeta^3 - 16*zeta^2 - 8*zeta + 
8)*q^59 + (-20*zeta^11 + 24*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 
16*zeta^5 + 4*zeta^4 + 20*zeta^3 - 16*zeta^2 - 8*zeta + 24)*q^60 + (-10*zeta^11 
+ 4*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 - 6*zeta^4 + 10*zeta^3
- 16*zeta^2 - 8*zeta + 24)*q^61 + (-4*zeta^11 - 16*zeta^10 - 12*zeta^8 + 
16*zeta^7 + 12*zeta^6 - 24*zeta^5 - 20*zeta^4 + 4*zeta^3 - 24*zeta^2 - 12*zeta +
20)*q^62 + (-3*zeta^11 + 14*zeta^10 + 4*zeta^8 - 14*zeta^7 - 4*zeta^6 + 8*zeta^5
+ 11*zeta^4 + 3*zeta^3 + 8*zeta^2 + 4*zeta - 11)*q^64 + (-8*zeta^11 + 4*zeta^10 
- 6*zeta^8 + 24*zeta^7 + 6*zeta^6 - 12*zeta^5 - 4*zeta^4 + 8*zeta^3 - 12*zeta^2 
- 6*zeta + 18)*q^65 + (-20*zeta^11 + 16*zeta^10 - 12*zeta^8 + 8*zeta^7 + 
12*zeta^6 - 24*zeta^5 - 4*zeta^4 + 20*zeta^3 - 24*zeta^2 - 12*zeta + 16)*q^66 + 
(16*zeta^11 - 16*zeta^10 + 8*zeta^8 - 16*zeta^7 - 8*zeta^6 + 16*zeta^5 - 
16*zeta^3 + 16*zeta^2 + 8*zeta - 16)*q^67 + (-42*zeta^11 + 56*zeta^10 - 
14*zeta^8 + 56*zeta^7 + 14*zeta^6 - 28*zeta^5 + 14*zeta^4 + 42*zeta^3 - 
28*zeta^2 - 14*zeta + 42)*q^68 + (20*zeta^11 - 8*zeta^10 + 16*zeta^8 + 8*zeta^7 
- 16*zeta^6 + 32*zeta^5 + 12*zeta^4 - 20*zeta^3 + 32*zeta^2 + 16*zeta - 12)*q^69
+ (14*zeta^11 + 4*zeta^10 + 16*zeta^8 - 4*zeta^7 - 16*zeta^6 + 32*zeta^5 + 
18*zeta^4 - 14*zeta^3 + 32*zeta^2 + 16*zeta - 18)*q^71 + (-16*zeta^11 + 
20*zeta^10 - 6*zeta^8 + 24*zeta^7 + 6*zeta^6 - 12*zeta^5 + 4*zeta^4 + 16*zeta^3 
- 12*zeta^2 - 6*zeta + 18)*q^72 + (-24*zeta^11 + 28*zeta^10 - 10*zeta^8 + 
36*zeta^7 + 10*zeta^6 - 20*zeta^5 + 4*zeta^4 + 24*zeta^3 - 20*zeta^2 - 10*zeta +
28)*q^73 + (20*zeta^11 - 16*zeta^10 + 12*zeta^8 - 8*zeta^7 - 12*zeta^6 + 
24*zeta^5 + 4*zeta^4 - 20*zeta^3 + 24*zeta^2 + 12*zeta - 16)*q^74 + (-12*zeta^11
+ 28*zeta^10 + 2*zeta^8 - 8*zeta^7 - 2*zeta^6 + 4*zeta^5 + 16*zeta^4 + 12*zeta^3
+ 4*zeta^2 + 2*zeta - 6)*q^75 + (4*zeta^11 - 16*zeta^10 - 4*zeta^8 + 16*zeta^7 +
4*zeta^6 - 8*zeta^5 - 12*zeta^4 - 4*zeta^3 - 8*zeta^2 - 4*zeta + 12)*q^76 + 
(-8*zeta^11 - 24*zeta^10 - 20*zeta^8 + 24*zeta^7 + 20*zeta^6 - 40*zeta^5 - 
32*zeta^4 + 8*zeta^3 - 40*zeta^2 - 20*zeta + 32)*q^78 + (-8*zeta^11 - 8*zeta^8 +
32*zeta^7 + 8*zeta^6 - 16*zeta^5 - 8*zeta^4 + 8*zeta^3 - 16*zeta^2 - 8*zeta + 
24)*q^79 + (-6*zeta^11 + 12*zeta^10 + 24*zeta^7 + 6*zeta^4 + 6*zeta^3 + 12)*q^80
+ (-2*zeta^11 - 2*zeta^8 - 4*zeta^7 + 2*zeta^6 - 4*zeta^5 - 2*zeta^4 + 2*zeta^3 
- 4*zeta^2 - 2*zeta)*q^81 + (-10*zeta^11 + 12*zeta^10 - 4*zeta^8 + 16*zeta^7 + 
4*zeta^6 - 8*zeta^5 + 2*zeta^4 + 10*zeta^3 - 8*zeta^2 - 4*zeta + 12)*q^82 + 
(12*zeta^11 + 8*zeta^10 + 16*zeta^8 - 8*zeta^7 - 16*zeta^6 + 32*zeta^5 + 
20*zeta^4 - 12*zeta^3 + 32*zeta^2 + 16*zeta - 20)*q^83 + (-10*zeta^11 + 
4*zeta^10 - 8*zeta^8 - 4*zeta^7 + 8*zeta^6 - 16*zeta^5 - 6*zeta^4 + 10*zeta^3 - 
16*zeta^2 - 8*zeta + 6)*q^85 + (-24*zeta^11 + 32*zeta^10 - 8*zeta^8 + 32*zeta^7 
+ 8*zeta^6 - 16*zeta^5 + 8*zeta^4 + 24*zeta^3 - 16*zeta^2 - 8*zeta + 24)*q^86 + 
(-8*zeta^11 + 16*zeta^10 + 32*zeta^7 + 8*zeta^4 + 8*zeta^3 + 16)*q^87 + 
(14*zeta^11 - 8*zeta^10 + 10*zeta^8 + 4*zeta^7 - 10*zeta^6 + 20*zeta^5 + 
6*zeta^4 - 14*zeta^3 + 20*zeta^2 + 10*zeta - 8)*q^88 + (14*zeta^11 - 8*zeta^10 +
10*zeta^8 - 40*zeta^7 - 10*zeta^6 + 20*zeta^5 + 6*zeta^4 - 14*zeta^3 + 20*zeta^2
+ 10*zeta - 30)*q^89 + (-4*zeta^11 - 4*zeta^8 + 4*zeta^6 - 8*zeta^5 - 4*zeta^4 +
4*zeta^3 - 8*zeta^2 - 4*zeta + 4)*q^90 + (14*zeta^11 - 28*zeta^10 + 28*zeta^7 - 
14*zeta^4 - 14*zeta^3 + 14)*q^92 + (-24*zeta^11 + 32*zeta^10 - 8*zeta^8 + 
32*zeta^7 + 8*zeta^6 - 16*zeta^5 + 8*zeta^4 + 24*zeta^3 - 16*zeta^2 - 8*zeta + 
24)*q^93 + (-12*zeta^11 + 8*zeta^10 - 8*zeta^8 + 8*zeta^6 - 16*zeta^5 - 4*zeta^4
+ 12*zeta^3 - 16*zeta^2 - 8*zeta + 8)*q^94 + (12*zeta^11 - 16*zeta^10 + 4*zeta^8
- 24*zeta^7 - 4*zeta^6 + 8*zeta^5 - 4*zeta^4 - 12*zeta^3 + 8*zeta^2 + 4*zeta - 
16)*q^95 + (8*zeta^11 - 4*zeta^10 + 6*zeta^8 - 24*zeta^7 - 6*zeta^6 + 12*zeta^5 
+ 4*zeta^4 - 8*zeta^3 + 12*zeta^2 + 6*zeta - 18)*q^96 + (2*zeta^11 - 8*zeta^10 -
2*zeta^8 + 8*zeta^7 + 2*zeta^6 - 4*zeta^5 - 6*zeta^4 - 2*zeta^3 - 4*zeta^2 - 
2*zeta + 6)*q^97 + (4*zeta^11 - 8*zeta^10 + 8*zeta^7 - 4*zeta^4 - 4*zeta^3 + 
4)*q^99 + (34*zeta^11 - 38*zeta^10 + 15*zeta^8 - 60*zeta^7 - 15*zeta^6 + 
30*zeta^5 - 4*zeta^4 - 34*zeta^3 + 30*zeta^2 + 15*zeta - 45)*q^100 + (30*zeta^11
- 20*zeta^10 + 20*zeta^8 - 20*zeta^6 + 40*zeta^5 + 10*zeta^4 - 30*zeta^3 + 
40*zeta^2 + 20*zeta - 20)*q^101 + (56*zeta^11 - 40*zeta^10 + 36*zeta^8 - 
8*zeta^7 - 36*zeta^6 + 72*zeta^5 + 16*zeta^4 - 56*zeta^3 + 72*zeta^2 + 36*zeta -
40)*q^102 + (20*zeta^11 - 32*zeta^10 + 4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 
8*zeta^5 - 12*zeta^4 - 20*zeta^3 + 8*zeta^2 + 4*zeta - 12)*q^103 + (28*zeta^10 +
14*zeta^8 - 28*zeta^7 - 14*zeta^6 + 28*zeta^5 + 28*zeta^4 + 28*zeta^2 + 14*zeta 
- 28)*q^104 + (-2*zeta^11 - 4*zeta^10 - 4*zeta^8 + 4*zeta^7 + 4*zeta^6 - 
8*zeta^5 - 6*zeta^4 + 2*zeta^3 - 8*zeta^2 - 4*zeta + 6)*q^106 + (20*zeta^11 - 
28*zeta^10 + 6*zeta^8 - 24*zeta^7 - 6*zeta^6 + 12*zeta^5 - 8*zeta^4 - 20*zeta^3 
+ 12*zeta^2 + 6*zeta - 18)*q^107 + (-18*zeta^11 + 16*zeta^10 - 10*zeta^8 + 
12*zeta^7 + 10*zeta^6 - 20*zeta^5 - 2*zeta^4 + 18*zeta^3 - 20*zeta^2 - 10*zeta +
16)*q^108 + (16*zeta^11 - 16*zeta^10 + 8*zeta^8 - 16*zeta^7 - 8*zeta^6 + 
16*zeta^5 - 16*zeta^3 + 16*zeta^2 + 8*zeta - 16)*q^109 + (-4*zeta^11 + 8*zeta^10
+ 4*zeta^4 + 4*zeta^3)*q^110 + (8*zeta^11 - 16*zeta^10 + 16*zeta^7 - 8*zeta^4 - 
8*zeta^3 + 8)*q^111 + (-10*zeta^11 - 12*zeta^10 - 16*zeta^8 + 12*zeta^7 + 
16*zeta^6 - 32*zeta^5 - 22*zeta^4 + 10*zeta^3 - 32*zeta^2 - 16*zeta + 22)*q^113 
+ (-24*zeta^11 + 32*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 + 
8*zeta^4 + 24*zeta^3 - 16*zeta^2 - 8*zeta + 24)*q^114 + (28*zeta^11 - 40*zeta^10
+ 8*zeta^8 - 64*zeta^7 - 8*zeta^6 + 16*zeta^5 - 12*zeta^4 - 28*zeta^3 + 
16*zeta^2 + 8*zeta - 40)*q^115 + (-20*zeta^11 + 24*zeta^10 - 8*zeta^8 + 
32*zeta^7 + 8*zeta^6 - 16*zeta^5 + 4*zeta^4 + 20*zeta^3 - 16*zeta^2 - 8*zeta + 
24)*q^116 + (20*zeta^11 - 24*zeta^10 + 8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 
16*zeta^5 - 4*zeta^4 - 20*zeta^3 + 16*zeta^2 + 8*zeta - 24)*q^117 + (-4*zeta^11 
- 16*zeta^10 - 12*zeta^8 + 16*zeta^7 + 12*zeta^6 - 24*zeta^5 - 20*zeta^4 + 
4*zeta^3 - 24*zeta^2 - 12*zeta + 20)*q^118 + (12*zeta^11 - 16*zeta^10 + 4*zeta^8
+ 16*zeta^7 - 4*zeta^6 + 8*zeta^5 - 4*zeta^4 - 12*zeta^3 + 8*zeta^2 + 4*zeta + 
4)*q^120 + (14*zeta^11 - 14*zeta^10 + 7*zeta^8 - 28*zeta^7 - 7*zeta^6 + 
14*zeta^5 - 14*zeta^3 + 14*zeta^2 + 7*zeta - 21)*q^121 + (-22*zeta^11 + 
20*zeta^10 - 12*zeta^8 + 16*zeta^7 + 12*zeta^6 - 24*zeta^5 - 2*zeta^4 + 
22*zeta^3 - 24*zeta^2 - 12*zeta + 20)*q^122 + (20*zeta^11 - 24*zeta^10 + 
8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 - 4*zeta^4 - 20*zeta^3 + 16*zeta^2 +
8*zeta - 24)*q^123 + (44*zeta^11 - 64*zeta^10 + 12*zeta^8 - 48*zeta^7 - 
12*zeta^6 + 24*zeta^5 - 20*zeta^4 - 44*zeta^3 + 24*zeta^2 + 12*zeta - 36)*q^124 
+ (8*zeta^11 + 8*zeta^8 - 8*zeta^6 + 16*zeta^5 + 8*zeta^4 - 8*zeta^3 + 16*zeta^2
+ 8*zeta - 8)*q^125 + (-4*zeta^11 - 8*zeta^10 - 8*zeta^8 + 8*zeta^7 + 8*zeta^6 -
16*zeta^5 - 12*zeta^4 + 4*zeta^3 - 16*zeta^2 - 8*zeta + 12)*q^127 + (-32*zeta^11
+ 54*zeta^10 - 5*zeta^8 + 20*zeta^7 + 5*zeta^6 - 10*zeta^5 + 22*zeta^4 + 
32*zeta^3 - 10*zeta^2 - 5*zeta + 15)*q^128 + (32*zeta^11 - 32*zeta^10 + 
16*zeta^8 - 32*zeta^7 - 16*zeta^6 + 32*zeta^5 - 32*zeta^3 + 32*zeta^2 + 16*zeta 
- 32)*q^129 + (-18*zeta^11 + 16*zeta^10 - 10*zeta^8 + 12*zeta^7 + 10*zeta^6 - 
20*zeta^5 - 2*zeta^4 + 18*zeta^3 - 20*zeta^2 - 10*zeta + 16)*q^130 + (-8*zeta^11
+ 24*zeta^10 + 4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 8*zeta^5 + 16*zeta^4 + 8*zeta^3
+ 8*zeta^2 + 4*zeta - 12)*q^131 + (-12*zeta^11 - 8*zeta^10 - 16*zeta^8 + 
8*zeta^7 + 16*zeta^6 - 32*zeta^5 - 20*zeta^4 + 12*zeta^3 - 32*zeta^2 - 16*zeta +
20)*q^132 + (16*zeta^10 + 8*zeta^8 - 16*zeta^7 - 8*zeta^6 + 16*zeta^5 + 
16*zeta^4 + 16*zeta^2 + 8*zeta - 16)*q^134 + (4*zeta^11 + 4*zeta^8 - 16*zeta^7 -
4*zeta^6 + 8*zeta^5 + 4*zeta^4 - 4*zeta^3 + 8*zeta^2 + 4*zeta - 12)*q^135 + 
(-56*zeta^11 + 44*zeta^10 - 34*zeta^8 + 20*zeta^7 + 34*zeta^6 - 68*zeta^5 - 
12*zeta^4 + 56*zeta^3 - 68*zeta^2 - 34*zeta + 44)*q^136 + (-40*zeta^11 + 
40*zeta^10 - 20*zeta^8 + 40*zeta^7 + 20*zeta^6 - 40*zeta^5 + 40*zeta^3 - 
40*zeta^2 - 20*zeta + 40)*q^137 + (-32*zeta^11 + 40*zeta^10 - 12*zeta^8 + 
48*zeta^7 + 12*zeta^6 - 24*zeta^5 + 8*zeta^4 + 32*zeta^3 - 24*zeta^2 - 12*zeta +
36)*q^138 + (-20*zeta^11 + 24*zeta^10 - 8*zeta^8 - 24*zeta^7 + 8*zeta^6 - 
16*zeta^5 + 4*zeta^4 + 20*zeta^3 - 16*zeta^2 - 8*zeta - 4)*q^139 + (8*zeta^11 + 
8*zeta^8 - 8*zeta^6 + 16*zeta^5 + 8*zeta^4 - 8*zeta^3 + 16*zeta^2 + 8*zeta - 
8)*q^141 + (-56*zeta^11 + 76*zeta^10 - 18*zeta^8 + 72*zeta^7 + 18*zeta^6 - 
36*zeta^5 + 20*zeta^4 + 56*zeta^3 - 36*zeta^2 - 18*zeta + 54)*q^142 + 
(-16*zeta^11 + 8*zeta^10 - 12*zeta^8 - 8*zeta^7 + 12*zeta^6 - 24*zeta^5 - 
8*zeta^4 + 16*zeta^3 - 24*zeta^2 - 12*zeta + 8)*q^143 + (-6*zeta^11 - 6*zeta^8 -
12*zeta^7 + 6*zeta^6 - 12*zeta^5 - 6*zeta^4 + 6*zeta^3 - 12*zeta^2 - 
6*zeta)*q^144 + (8*zeta^11 + 8*zeta^10 + 12*zeta^8 - 48*zeta^7 - 12*zeta^6 + 
24*zeta^5 + 16*zeta^4 - 8*zeta^3 + 24*zeta^2 + 12*zeta - 36)*q^145 + (4*zeta^11 
- 20*zeta^10 - 6*zeta^8 + 20*zeta^7 + 6*zeta^6 - 12*zeta^5 - 16*zeta^4 - 
4*zeta^3 - 12*zeta^2 - 6*zeta + 16)*q^146 + (12*zeta^11 + 8*zeta^10 + 16*zeta^8 
- 8*zeta^7 - 16*zeta^6 + 32*zeta^5 + 20*zeta^4 - 12*zeta^3 + 32*zeta^2 + 16*zeta
- 20)*q^148 + (4*zeta^11 - 20*zeta^10 - 6*zeta^8 + 24*zeta^7 + 6*zeta^6 - 
12*zeta^5 - 16*zeta^4 - 4*zeta^3 - 12*zeta^2 - 6*zeta + 18)*q^149 + (-38*zeta^11
+ 24*zeta^10 - 26*zeta^8 - 4*zeta^7 + 26*zeta^6 - 52*zeta^5 - 14*zeta^4 + 
38*zeta^3 - 52*zeta^2 - 26*zeta + 24)*q^150 + (12*zeta^11 + 12*zeta^8 + 
24*zeta^7 - 12*zeta^6 + 24*zeta^5 + 12*zeta^4 - 12*zeta^3 + 24*zeta^2 + 
12*zeta)*q^151 + (20*zeta^11 - 32*zeta^10 + 4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 
8*zeta^5 - 12*zeta^4 - 20*zeta^3 + 8*zeta^2 + 4*zeta - 12)*q^152 + (8*zeta^11 + 
8*zeta^10 + 12*zeta^8 - 8*zeta^7 - 12*zeta^6 + 24*zeta^5 + 16*zeta^4 - 8*zeta^3 
+ 24*zeta^2 + 12*zeta - 16)*q^153 + (-4*zeta^11 + 8*zeta^10 - 8*zeta^7 + 
4*zeta^4 + 4*zeta^3 - 4)*q^155 + (68*zeta^11 - 104*zeta^10 + 16*zeta^8 - 
64*zeta^7 - 16*zeta^6 + 32*zeta^5 - 36*zeta^4 - 68*zeta^3 + 32*zeta^2 + 16*zeta 
- 48)*q^156 + (28*zeta^11 - 12*zeta^10 + 22*zeta^8 + 20*zeta^7 - 22*zeta^6 + 
44*zeta^5 + 16*zeta^4 - 28*zeta^3 + 44*zeta^2 + 22*zeta - 12)*q^157 + 
(-16*zeta^11 + 16*zeta^10 - 8*zeta^8 + 16*zeta^7 + 8*zeta^6 - 16*zeta^5 + 
16*zeta^3 - 16*zeta^2 - 8*zeta + 16)*q^158 + (-8*zeta^11 + 8*zeta^10 - 4*zeta^8 
+ 16*zeta^7 + 4*zeta^6 - 8*zeta^5 + 8*zeta^3 - 8*zeta^2 - 4*zeta + 12)*q^159 + 
(18*zeta^11 - 16*zeta^10 + 10*zeta^8 + 16*zeta^7 - 10*zeta^6 + 20*zeta^5 + 
2*zeta^4 - 18*zeta^3 + 20*zeta^2 + 10*zeta - 2)*q^160 + (-2*zeta^11 - 4*zeta^10 
- 4*zeta^8 + 4*zeta^7 + 4*zeta^6 - 8*zeta^5 - 6*zeta^4 + 2*zeta^3 - 8*zeta^2 - 
4*zeta + 6)*q^162 + (-16*zeta^11 + 32*zeta^10 + 16*zeta^4 + 16*zeta^3)*q^163 + 
(-6*zeta^11 - 4*zeta^10 - 8*zeta^8 - 24*zeta^7 + 8*zeta^6 - 16*zeta^5 - 
10*zeta^4 + 6*zeta^3 - 16*zeta^2 - 8*zeta - 4)*q^164 + (-8*zeta^11 + 16*zeta^10 
+ 32*zeta^7 + 8*zeta^4 + 8*zeta^3 + 16)*q^165 + (-64*zeta^11 + 88*zeta^10 - 
20*zeta^8 + 80*zeta^7 + 20*zeta^6 - 40*zeta^5 + 24*zeta^4 + 64*zeta^3 - 
40*zeta^2 - 20*zeta + 60)*q^166 + (-28*zeta^11 - 28*zeta^8 + 28*zeta^6 - 
56*zeta^5 - 28*zeta^4 + 28*zeta^3 - 56*zeta^2 - 28*zeta + 28)*q^167 + 
(-11*zeta^11 - 10*zeta^10 - 16*zeta^8 + 10*zeta^7 + 16*zeta^6 - 32*zeta^5 - 
21*zeta^4 + 11*zeta^3 - 32*zeta^2 - 16*zeta + 21)*q^169 + (16*zeta^11 - 
20*zeta^10 + 6*zeta^8 - 24*zeta^7 - 6*zeta^6 + 12*zeta^5 - 4*zeta^4 - 16*zeta^3 
+ 12*zeta^2 + 6*zeta - 18)*q^170 + (-16*zeta^11 + 16*zeta^10 - 8*zeta^8 + 
16*zeta^7 + 8*zeta^6 - 16*zeta^5 + 16*zeta^3 - 16*zeta^2 - 8*zeta + 16)*q^171 + 
(-32*zeta^11 + 16*zeta^10 - 24*zeta^8 - 16*zeta^7 + 24*zeta^6 - 48*zeta^5 - 
16*zeta^4 + 32*zeta^3 - 48*zeta^2 - 24*zeta + 16)*q^172 + (-18*zeta^11 + 
8*zeta^10 - 14*zeta^8 + 56*zeta^7 + 14*zeta^6 - 28*zeta^5 - 10*zeta^4 + 
18*zeta^3 - 28*zeta^2 - 14*zeta + 42)*q^173 + (8*zeta^11 + 8*zeta^8 - 8*zeta^6 +
16*zeta^5 + 8*zeta^4 - 8*zeta^3 + 16*zeta^2 + 8*zeta - 8)*q^174 + (-6*zeta^11 + 
12*zeta^10 - 12*zeta^7 + 6*zeta^4 + 6*zeta^3 - 6)*q^176 + (-24*zeta^11 + 
32*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 + 8*zeta^4 + 24*zeta^3 
- 16*zeta^2 - 8*zeta + 24)*q^177 + (32*zeta^11 - 28*zeta^10 + 18*zeta^8 - 
20*zeta^7 - 18*zeta^6 + 36*zeta^5 + 4*zeta^4 - 32*zeta^3 + 36*zeta^2 + 18*zeta -
28)*q^178 + (2*zeta^11 - 16*zeta^10 - 6*zeta^8 - 44*zeta^7 + 6*zeta^6 - 
12*zeta^5 - 14*zeta^4 - 2*zeta^3 - 12*zeta^2 - 6*zeta - 16)*q^179 + (4*zeta^11 -
16*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 8*zeta^5 - 12*zeta^4 - 4*zeta^3 -
8*zeta^2 - 4*zeta + 12)*q^180 + (-2*zeta^11 + 8*zeta^10 + 2*zeta^8 - 8*zeta^7 - 
2*zeta^6 + 4*zeta^5 + 6*zeta^4 + 2*zeta^3 + 4*zeta^2 + 2*zeta - 6)*q^181 + 
(-28*zeta^11 + 32*zeta^10 - 12*zeta^8 - 32*zeta^7 + 12*zeta^6 - 24*zeta^5 + 
4*zeta^4 + 28*zeta^3 - 24*zeta^2 - 12*zeta - 4)*q^183 + (24*zeta^11 - 44*zeta^10
+ 2*zeta^8 - 8*zeta^7 - 2*zeta^6 + 4*zeta^5 - 20*zeta^4 - 24*zeta^3 + 4*zeta^2 +
2*zeta - 6)*q^184 + (8*zeta^11 - 16*zeta^10 - 32*zeta^7 - 8*zeta^4 - 8*zeta^3 - 
16)*q^185 + (-64*zeta^11 + 48*zeta^10 - 40*zeta^8 + 16*zeta^7 + 40*zeta^6 - 
80*zeta^5 - 16*zeta^4 + 64*zeta^3 - 80*zeta^2 - 40*zeta + 48)*q^186 + 
(20*zeta^11 - 32*zeta^10 + 4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 8*zeta^5 - 
12*zeta^4 - 20*zeta^3 + 8*zeta^2 + 4*zeta - 12)*q^187 + (4*zeta^11 - 16*zeta^10 
- 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 8*zeta^5 - 12*zeta^4 - 4*zeta^3 - 8*zeta^2 -
4*zeta + 12)*q^188 + (-4*zeta^11 + 8*zeta^10 - 8*zeta^7 + 4*zeta^4 + 4*zeta^3 - 
4)*q^190 + (36*zeta^11 - 36*zeta^10 + 18*zeta^8 - 72*zeta^7 - 18*zeta^6 + 
36*zeta^5 - 36*zeta^3 + 36*zeta^2 + 18*zeta - 54)*q^191 + (30*zeta^11 - 
16*zeta^10 + 22*zeta^8 + 12*zeta^7 - 22*zeta^6 + 44*zeta^5 + 14*zeta^4 - 
30*zeta^3 + 44*zeta^2 + 22*zeta - 16)*q^192 + (-38*zeta^11 + 32*zeta^10 - 
22*zeta^8 + 20*zeta^7 + 22*zeta^6 - 44*zeta^5 - 6*zeta^4 + 38*zeta^3 - 44*zeta^2
- 22*zeta + 32)*q^193 + (22*zeta^11 - 32*zeta^10 + 6*zeta^8 - 24*zeta^7 - 
6*zeta^6 + 12*zeta^5 - 10*zeta^4 - 22*zeta^3 + 12*zeta^2 + 6*zeta - 18)*q^194 + 
(-20*zeta^11 + 24*zeta^10 - 8*zeta^8 - 24*zeta^7 + 8*zeta^6 - 16*zeta^5 + 
4*zeta^4 + 20*zeta^3 - 16*zeta^2 - 8*zeta - 4)*q^195 + (2*zeta^11 - 4*zeta^10 + 
4*zeta^7 - 2*zeta^4 - 2*zeta^3 + 2)*q^197 + (16*zeta^11 - 24*zeta^10 + 4*zeta^8 
- 16*zeta^7 - 4*zeta^6 + 8*zeta^5 - 8*zeta^4 - 16*zeta^3 + 8*zeta^2 + 4*zeta - 
12)*q^198 + (16*zeta^10 + 8*zeta^8 + 48*zeta^7 - 8*zeta^6 + 16*zeta^5 + 
16*zeta^4 + 16*zeta^2 + 8*zeta + 16)*q^199 + (49*zeta^11 - 44*zeta^10 + 
27*zeta^8 - 34*zeta^7 - 27*zeta^6 + 54*zeta^5 + 5*zeta^4 - 49*zeta^3 + 54*zeta^2
+ 27*zeta - 44)*q^200 + (16*zeta^11 - 32*zeta^10 - 16*zeta^4 - 16*zeta^3)*q^201 
+ (10*zeta^11 + 40*zeta^10 + 30*zeta^8 - 40*zeta^7 - 30*zeta^6 + 60*zeta^5 + 
50*zeta^4 - 10*zeta^3 + 60*zeta^2 + 30*zeta - 50)*q^202 + (56*zeta^10 + 
28*zeta^8 - 56*zeta^7 - 28*zeta^6 + 56*zeta^5 + 56*zeta^4 + 56*zeta^2 + 28*zeta 
- 56)*q^204 + (-4*zeta^11 - 12*zeta^10 - 10*zeta^8 + 40*zeta^7 + 10*zeta^6 - 
20*zeta^5 - 16*zeta^4 + 4*zeta^3 - 20*zeta^2 - 10*zeta + 30)*q^205 + (56*zeta^11
- 40*zeta^10 + 36*zeta^8 - 8*zeta^7 - 36*zeta^6 + 72*zeta^5 + 16*zeta^4 - 
56*zeta^3 + 72*zeta^2 + 36*zeta - 40)*q^206 + (-28*zeta^11 + 32*zeta^10 - 
12*zeta^8 + 40*zeta^7 + 12*zeta^6 - 24*zeta^5 + 4*zeta^4 + 28*zeta^3 - 24*zeta^2
- 12*zeta + 32)*q^207 + (-30*zeta^11 + 36*zeta^10 - 12*zeta^8 + 48*zeta^7 + 
12*zeta^6 - 24*zeta^5 + 6*zeta^4 + 30*zeta^3 - 24*zeta^2 - 12*zeta + 36)*q^208 +
(8*zeta^11 + 8*zeta^8 - 8*zeta^6 + 16*zeta^5 + 8*zeta^4 - 8*zeta^3 + 16*zeta^2 +
8*zeta - 8)*q^209 + (20*zeta^11 + 8*zeta^10 + 24*zeta^8 - 8*zeta^7 - 24*zeta^6 +
48*zeta^5 + 28*zeta^4 - 20*zeta^3 + 48*zeta^2 + 24*zeta - 28)*q^211 + 
(12*zeta^11 - 20*zeta^10 + 2*zeta^8 - 8*zeta^7 - 2*zeta^6 + 4*zeta^5 - 8*zeta^4 
- 12*zeta^3 + 4*zeta^2 + 2*zeta - 6)*q^212 + (68*zeta^11 - 64*zeta^10 + 
36*zeta^8 - 56*zeta^7 - 36*zeta^6 + 72*zeta^5 + 4*zeta^4 - 68*zeta^3 + 72*zeta^2
+ 36*zeta - 64)*q^213 + (54*zeta^11 - 40*zeta^10 + 34*zeta^8 - 12*zeta^7 - 
34*zeta^6 + 68*zeta^5 + 14*zeta^4 - 54*zeta^3 + 68*zeta^2 + 34*zeta - 40)*q^214 
+ (-16*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 - 16*zeta^4 - 
16*zeta^2 - 8*zeta + 24)*q^215 + (2*zeta^11 - 12*zeta^10 - 4*zeta^8 + 12*zeta^7 
+ 4*zeta^6 - 8*zeta^5 - 10*zeta^4 - 2*zeta^3 - 8*zeta^2 - 4*zeta + 10)*q^216 + 
(16*zeta^10 + 8*zeta^8 - 16*zeta^7 - 8*zeta^6 + 16*zeta^5 + 16*zeta^4 + 
16*zeta^2 + 8*zeta - 16)*q^218 + (-12*zeta^11 + 40*zeta^10 + 8*zeta^8 - 
32*zeta^7 - 8*zeta^6 + 16*zeta^5 + 28*zeta^4 + 12*zeta^3 + 16*zeta^2 + 8*zeta - 
24)*q^219 + (-20*zeta^11 + 24*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 
16*zeta^5 + 4*zeta^4 + 20*zeta^3 - 16*zeta^2 - 8*zeta + 24)*q^220 + (70*zeta^11 
- 56*zeta^10 + 42*zeta^8 - 28*zeta^7 - 42*zeta^6 + 84*zeta^5 + 14*zeta^4 - 
70*zeta^3 + 84*zeta^2 + 42*zeta - 56)*q^221 + (32*zeta^11 - 48*zeta^10 + 
8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 - 16*zeta^4 - 32*zeta^3 + 16*zeta^2 
+ 8*zeta - 24)*q^222 + (32*zeta^11 - 16*zeta^10 + 24*zeta^8 + 16*zeta^7 - 
24*zeta^6 + 48*zeta^5 + 16*zeta^4 - 32*zeta^3 + 48*zeta^2 + 24*zeta - 16)*q^223 
+ (-18*zeta^11 + 4*zeta^10 - 16*zeta^8 - 4*zeta^7 + 16*zeta^6 - 32*zeta^5 - 
14*zeta^4 + 18*zeta^3 - 32*zeta^2 - 16*zeta + 14)*q^225 + (72*zeta^11 - 
100*zeta^10 + 22*zeta^8 - 88*zeta^7 - 22*zeta^6 + 44*zeta^5 - 28*zeta^4 - 
72*zeta^3 + 44*zeta^2 + 22*zeta - 66)*q^226 + (-52*zeta^11 + 56*zeta^10 - 
24*zeta^8 + 64*zeta^7 + 24*zeta^6 - 48*zeta^5 + 4*zeta^4 + 52*zeta^3 - 48*zeta^2
- 24*zeta + 56)*q^227 + (-32*zeta^11 + 16*zeta^10 - 24*zeta^8 - 16*zeta^7 + 
24*zeta^6 - 48*zeta^5 - 16*zeta^4 + 32*zeta^3 - 48*zeta^2 - 24*zeta + 16)*q^228 
+ (-14*zeta^11 + 20*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 8*zeta^5 + 
6*zeta^4 + 14*zeta^3 - 8*zeta^2 - 4*zeta + 12)*q^229 + (-12*zeta^11 + 16*zeta^10
- 4*zeta^8 - 16*zeta^7 + 4*zeta^6 - 8*zeta^5 + 4*zeta^4 + 12*zeta^3 - 8*zeta^2 -
4*zeta - 4)*q^230 + (12*zeta^11 - 16*zeta^10 + 4*zeta^8 + 16*zeta^7 - 4*zeta^6 +
8*zeta^5 - 4*zeta^4 - 12*zeta^3 + 8*zeta^2 + 4*zeta + 4)*q^232 + (-36*zeta^11 + 
56*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 + 20*zeta^4 + 36*zeta^3
- 16*zeta^2 - 8*zeta + 24)*q^233 + (52*zeta^11 - 40*zeta^10 + 32*zeta^8 - 
16*zeta^7 - 32*zeta^6 + 64*zeta^5 + 12*zeta^4 - 52*zeta^3 + 64*zeta^2 + 32*zeta 
- 40)*q^234 + (12*zeta^11 - 16*zeta^10 + 4*zeta^8 - 24*zeta^7 - 4*zeta^6 + 
8*zeta^5 - 4*zeta^4 - 12*zeta^3 + 8*zeta^2 + 4*zeta - 16)*q^235 + (44*zeta^11 - 
64*zeta^10 + 12*zeta^8 - 48*zeta^7 - 12*zeta^6 + 24*zeta^5 - 20*zeta^4 - 
44*zeta^3 + 24*zeta^2 + 12*zeta - 36)*q^236 + (-32*zeta^11 + 32*zeta^10 - 
16*zeta^8 - 32*zeta^7 + 16*zeta^6 - 32*zeta^5 + 32*zeta^3 - 32*zeta^2 - 
16*zeta)*q^237 + (-18*zeta^11 + 20*zeta^10 - 8*zeta^8 - 20*zeta^7 + 8*zeta^6 - 
16*zeta^5 + 2*zeta^4 + 18*zeta^3 - 16*zeta^2 - 8*zeta - 2)*q^239 + (12*zeta^11 +
12*zeta^8 - 48*zeta^7 - 12*zeta^6 + 24*zeta^5 + 12*zeta^4 - 12*zeta^3 + 
24*zeta^2 + 12*zeta - 36)*q^240 + (-12*zeta^10 - 6*zeta^8 - 36*zeta^7 + 6*zeta^6
- 12*zeta^5 - 12*zeta^4 - 12*zeta^2 - 6*zeta - 12)*q^241 + (35*zeta^11 - 
28*zeta^10 + 21*zeta^8 - 14*zeta^7 - 21*zeta^6 + 42*zeta^5 + 7*zeta^4 - 
35*zeta^3 + 42*zeta^2 + 21*zeta - 28)*q^242 + (4*zeta^11 - 4*zeta^10 + 2*zeta^8 
- 8*zeta^7 - 2*zeta^6 + 4*zeta^5 - 4*zeta^3 + 4*zeta^2 + 2*zeta - 6)*q^243 + 
(-30*zeta^11 + 8*zeta^10 - 26*zeta^8 - 8*zeta^7 + 26*zeta^6 - 52*zeta^5 - 
22*zeta^4 + 30*zeta^3 - 52*zeta^2 - 26*zeta + 22)*q^244 + (-4*zeta^11 + 
16*zeta^10 + 4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 8*zeta^5 + 12*zeta^4 + 4*zeta^3 +
8*zeta^2 + 4*zeta - 12)*q^246 + (-24*zeta^11 + 40*zeta^10 - 4*zeta^8 + 16*zeta^7
+ 4*zeta^6 - 8*zeta^5 + 16*zeta^4 + 24*zeta^3 - 8*zeta^2 - 4*zeta + 12)*q^247 + 
(56*zeta^11 - 40*zeta^10 + 36*zeta^8 - 8*zeta^7 - 36*zeta^6 + 72*zeta^5 + 
16*zeta^4 - 56*zeta^3 + 72*zeta^2 + 36*zeta - 40)*q^248 + (72*zeta^11 - 
64*zeta^10 + 40*zeta^8 - 48*zeta^7 - 40*zeta^6 + 80*zeta^5 + 8*zeta^4 - 
72*zeta^3 + 80*zeta^2 + 40*zeta - 64)*q^249 + (-24*zeta^11 + 32*zeta^10 - 
8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 + 8*zeta^4 + 24*zeta^3 - 16*zeta^2 -
8*zeta + 24)*q^250 + (-16*zeta^11 + 8*zeta^10 - 12*zeta^8 - 8*zeta^7 + 12*zeta^6
- 24*zeta^5 - 8*zeta^4 + 16*zeta^3 - 24*zeta^2 - 12*zeta + 8)*q^251 + 
(20*zeta^11 - 8*zeta^10 + 16*zeta^8 + 8*zeta^7 - 16*zeta^6 + 32*zeta^5 + 
12*zeta^4 - 20*zeta^3 + 32*zeta^2 + 16*zeta - 12)*q^253 + (40*zeta^11 - 
56*zeta^10 + 12*zeta^8 - 48*zeta^7 - 12*zeta^6 + 24*zeta^5 - 16*zeta^4 - 
40*zeta^3 + 24*zeta^2 + 12*zeta - 36)*q^254 + (-28*zeta^11 + 32*zeta^10 - 
12*zeta^8 + 40*zeta^7 + 12*zeta^6 - 24*zeta^5 + 4*zeta^4 + 28*zeta^3 - 24*zeta^2
- 12*zeta + 32)*q^255 + (-61*zeta^11 + 48*zeta^10 - 37*zeta^8 + 22*zeta^7 + 
37*zeta^6 - 74*zeta^5 - 13*zeta^4 + 61*zeta^3 - 74*zeta^2 - 37*zeta + 48)*q^256 
+ (26*zeta^11 - 56*zeta^10 - 2*zeta^8 + 8*zeta^7 + 2*zeta^6 - 4*zeta^5 - 
30*zeta^4 - 26*zeta^3 - 4*zeta^2 - 2*zeta + 6)*q^257 + (32*zeta^10 + 16*zeta^8 -
32*zeta^7 - 16*zeta^6 + 32*zeta^5 + 32*zeta^4 + 32*zeta^2 + 16*zeta - 32)*q^258 
+ (-22*zeta^11 + 4*zeta^10 - 20*zeta^8 - 4*zeta^7 + 20*zeta^6 - 40*zeta^5 - 
18*zeta^4 + 22*zeta^3 - 40*zeta^2 - 20*zeta + 18)*q^260 + (-8*zeta^11 - 8*zeta^8
+ 32*zeta^7 + 8*zeta^6 - 16*zeta^5 - 8*zeta^4 + 8*zeta^3 - 16*zeta^2 - 8*zeta + 
24)*q^261 + (-28*zeta^11 + 16*zeta^10 - 20*zeta^8 - 8*zeta^7 + 20*zeta^6 - 
40*zeta^5 - 12*zeta^4 + 28*zeta^3 - 40*zeta^2 - 20*zeta + 16)*q^262 + 
(-38*zeta^11 + 32*zeta^10 - 22*zeta^8 + 20*zeta^7 + 22*zeta^6 - 44*zeta^5 - 
6*zeta^4 + 38*zeta^3 - 44*zeta^2 - 22*zeta + 32)*q^263 + (32*zeta^11 - 
40*zeta^10 + 12*zeta^8 - 48*zeta^7 - 12*zeta^6 + 24*zeta^5 - 8*zeta^4 - 
32*zeta^3 + 24*zeta^2 + 12*zeta - 36)*q^264 + (-8*zeta^11 + 8*zeta^10 - 4*zeta^8
- 8*zeta^7 + 4*zeta^6 - 8*zeta^5 + 8*zeta^3 - 8*zeta^2 - 4*zeta)*q^265 + 
(32*zeta^11 - 40*zeta^10 + 12*zeta^8 + 40*zeta^7 - 12*zeta^6 + 24*zeta^5 - 
8*zeta^4 - 32*zeta^3 + 24*zeta^2 + 12*zeta + 8)*q^267 + (-40*zeta^11 + 
48*zeta^10 - 16*zeta^8 + 64*zeta^7 + 16*zeta^6 - 32*zeta^5 + 8*zeta^4 + 
40*zeta^3 - 32*zeta^2 - 16*zeta + 48)*q^268 + (34*zeta^11 - 36*zeta^10 + 
16*zeta^8 - 40*zeta^7 - 16*zeta^6 + 32*zeta^5 - 2*zeta^4 - 34*zeta^3 + 32*zeta^2
+ 16*zeta - 36)*q^269 + (8*zeta^11 - 8*zeta^10 + 4*zeta^8 - 8*zeta^7 - 4*zeta^6 
+ 8*zeta^5 - 8*zeta^3 + 8*zeta^2 + 4*zeta - 8)*q^270 + (-28*zeta^11 + 48*zeta^10
- 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 8*zeta^5 + 20*zeta^4 + 28*zeta^3 - 8*zeta^2 
- 4*zeta + 12)*q^271 + (-12*zeta^11 - 12*zeta^10 - 18*zeta^8 + 12*zeta^7 + 
18*zeta^6 - 36*zeta^5 - 24*zeta^4 + 12*zeta^3 - 36*zeta^2 - 18*zeta + 24)*q^272 
+ (-40*zeta^10 - 20*zeta^8 + 40*zeta^7 + 20*zeta^6 - 40*zeta^5 - 40*zeta^4 - 
40*zeta^2 - 20*zeta + 40)*q^274 + (-12*zeta^11 + 28*zeta^10 + 2*zeta^8 - 
8*zeta^7 - 2*zeta^6 + 4*zeta^5 + 16*zeta^4 + 12*zeta^3 + 4*zeta^2 + 2*zeta - 
6)*q^275 + (-28*zeta^11 - 28*zeta^8 - 56*zeta^7 + 28*zeta^6 - 56*zeta^5 - 
28*zeta^4 + 28*zeta^3 - 56*zeta^2 - 28*zeta)*q^276 + (34*zeta^11 - 32*zeta^10 + 
18*zeta^8 - 28*zeta^7 - 18*zeta^6 + 36*zeta^5 + 2*zeta^4 - 34*zeta^3 + 36*zeta^2
+ 18*zeta - 32)*q^277 + (-24*zeta^11 + 40*zeta^10 - 4*zeta^8 + 16*zeta^7 + 
4*zeta^6 - 8*zeta^5 + 16*zeta^4 + 24*zeta^3 - 8*zeta^2 - 4*zeta + 12)*q^278 + 
(-16*zeta^10 - 8*zeta^8 + 16*zeta^7 + 8*zeta^6 - 16*zeta^5 - 16*zeta^4 - 
16*zeta^2 - 8*zeta + 16)*q^279 + (4*zeta^11 + 16*zeta^10 + 12*zeta^8 - 16*zeta^7
- 12*zeta^6 + 24*zeta^5 + 20*zeta^4 - 4*zeta^3 + 24*zeta^2 + 12*zeta - 20)*q^281
+ (-24*zeta^11 + 32*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 + 
8*zeta^4 + 24*zeta^3 - 16*zeta^2 - 8*zeta + 24)*q^282 + (24*zeta^11 - 24*zeta^10
+ 12*zeta^8 - 24*zeta^7 - 12*zeta^6 + 24*zeta^5 - 24*zeta^3 + 24*zeta^2 + 
12*zeta - 24)*q^283 + (-82*zeta^11 + 48*zeta^10 - 58*zeta^8 - 20*zeta^7 + 
58*zeta^6 - 116*zeta^5 - 34*zeta^4 + 82*zeta^3 - 116*zeta^2 - 58*zeta + 
48)*q^284 + (-16*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 - 
16*zeta^4 - 16*zeta^2 - 8*zeta + 24)*q^285 + (-8*zeta^11 - 24*zeta^10 - 
20*zeta^8 + 24*zeta^7 + 20*zeta^6 - 40*zeta^5 - 32*zeta^4 + 8*zeta^3 - 40*zeta^2
- 20*zeta + 32)*q^286 + (-10*zeta^11 + 12*zeta^10 - 4*zeta^8 - 12*zeta^7 + 
4*zeta^6 - 8*zeta^5 + 2*zeta^4 + 10*zeta^3 - 8*zeta^2 - 4*zeta - 2)*q^288 + 
(-34*zeta^11 + 58*zeta^10 - 5*zeta^8 + 20*zeta^7 + 5*zeta^6 - 10*zeta^5 + 
24*zeta^4 + 34*zeta^3 - 10*zeta^2 - 5*zeta + 15)*q^289 + (12*zeta^11 - 
16*zeta^10 + 4*zeta^8 - 24*zeta^7 - 4*zeta^6 + 8*zeta^5 - 4*zeta^4 - 12*zeta^3 +
8*zeta^2 + 4*zeta - 16)*q^290 + (-16*zeta^11 + 8*zeta^10 - 12*zeta^8 - 8*zeta^7 
+ 12*zeta^6 - 24*zeta^5 - 8*zeta^4 + 16*zeta^3 - 24*zeta^2 - 12*zeta + 8)*q^291 
+ (46*zeta^11 - 44*zeta^10 + 24*zeta^8 - 96*zeta^7 - 24*zeta^6 + 48*zeta^5 + 
2*zeta^4 - 46*zeta^3 + 48*zeta^2 + 24*zeta - 72)*q^292 + (16*zeta^11 - 
36*zeta^10 - 2*zeta^8 + 36*zeta^7 + 2*zeta^6 - 4*zeta^5 - 20*zeta^4 - 16*zeta^3 
- 4*zeta^2 - 2*zeta + 20)*q^293 + (-4*zeta^11 + 8*zeta^10 - 8*zeta^7 + 4*zeta^4 
+ 4*zeta^3 - 4)*q^295 + (-32*zeta^11 + 40*zeta^10 - 12*zeta^8 + 48*zeta^7 + 
12*zeta^6 - 24*zeta^5 + 8*zeta^4 + 32*zeta^3 - 24*zeta^2 - 12*zeta + 36)*q^296 +
(4*zeta^11 + 4*zeta^8 + 8*zeta^7 - 4*zeta^6 + 8*zeta^5 + 4*zeta^4 - 4*zeta^3 + 
8*zeta^2 + 4*zeta)*q^297 + (18*zeta^11 - 8*zeta^10 + 14*zeta^8 + 12*zeta^7 - 
14*zeta^6 + 28*zeta^5 + 10*zeta^4 - 18*zeta^3 + 28*zeta^2 + 14*zeta - 8)*q^298 +
(-28*zeta^11 + 56*zeta^10 + 28*zeta^4 + 28*zeta^3)*q^299 + (22*zeta^11 - 
60*zeta^10 - 8*zeta^8 + 60*zeta^7 + 8*zeta^6 - 16*zeta^5 - 38*zeta^4 - 22*zeta^3
- 16*zeta^2 - 8*zeta + 38)*q^300 + (12*zeta^11 + 24*zeta^10 + 24*zeta^8 - 
24*zeta^7 - 24*zeta^6 + 48*zeta^5 + 36*zeta^4 - 12*zeta^3 + 48*zeta^2 + 24*zeta 
- 36)*q^302 + (60*zeta^11 - 80*zeta^10 + 20*zeta^8 - 80*zeta^7 - 20*zeta^6 + 
40*zeta^5 - 20*zeta^4 - 60*zeta^3 + 40*zeta^2 + 20*zeta - 60)*q^303 + 
(24*zeta^11 - 24*zeta^10 + 12*zeta^8 - 24*zeta^7 - 12*zeta^6 + 24*zeta^5 - 
24*zeta^3 + 24*zeta^2 + 12*zeta - 24)*q^304 + (-34*zeta^11 + 56*zeta^10 - 
6*zeta^8 + 100*zeta^7 + 6*zeta^6 - 12*zeta^5 + 22*zeta^4 + 34*zeta^3 - 12*zeta^2
- 6*zeta + 56)*q^305 + (-52*zeta^11 + 72*zeta^10 - 16*zeta^8 + 64*zeta^7 + 
16*zeta^6 - 32*zeta^5 + 20*zeta^4 + 52*zeta^3 - 32*zeta^2 - 16*zeta + 48)*q^306 
+ (36*zeta^11 - 32*zeta^10 + 20*zeta^8 + 32*zeta^7 - 20*zeta^6 + 40*zeta^5 + 
4*zeta^4 - 36*zeta^3 + 40*zeta^2 + 20*zeta - 4)*q^307 + (-16*zeta^11 - 
16*zeta^10 - 24*zeta^8 + 16*zeta^7 + 24*zeta^6 - 48*zeta^5 - 32*zeta^4 + 
16*zeta^3 - 48*zeta^2 - 24*zeta + 32)*q^309 + (-16*zeta^11 + 24*zeta^10 - 
4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 8*zeta^5 + 8*zeta^4 + 16*zeta^3 - 8*zeta^2 - 
4*zeta + 12)*q^310 + (-48*zeta^11 + 40*zeta^10 - 28*zeta^8 + 24*zeta^7 + 
28*zeta^6 - 56*zeta^5 - 8*zeta^4 + 48*zeta^3 - 56*zeta^2 - 28*zeta + 40)*q^311 +
(84*zeta^11 - 56*zeta^10 + 56*zeta^8 - 56*zeta^6 + 112*zeta^5 + 28*zeta^4 - 
84*zeta^3 + 112*zeta^2 + 56*zeta - 56)*q^312 + (30*zeta^11 - 44*zeta^10 + 
8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 - 14*zeta^4 - 30*zeta^3 + 16*zeta^2 
+ 8*zeta - 24)*q^313 + (16*zeta^11 + 44*zeta^10 + 38*zeta^8 - 44*zeta^7 - 
38*zeta^6 + 76*zeta^5 + 60*zeta^4 - 16*zeta^3 + 76*zeta^2 + 38*zeta - 60)*q^314 
+ (-32*zeta^11 + 16*zeta^10 - 24*zeta^8 - 16*zeta^7 + 24*zeta^6 - 48*zeta^5 - 
16*zeta^4 + 32*zeta^3 - 48*zeta^2 - 24*zeta + 16)*q^316 + (-20*zeta^11 + 
20*zeta^10 - 10*zeta^8 + 40*zeta^7 + 10*zeta^6 - 20*zeta^5 + 20*zeta^3 - 
20*zeta^2 - 10*zeta + 30)*q^317 + (-20*zeta^11 + 16*zeta^10 - 12*zeta^8 + 
8*zeta^7 + 12*zeta^6 - 24*zeta^5 - 4*zeta^4 + 20*zeta^3 - 24*zeta^2 - 12*zeta + 
16)*q^318 + (-8*zeta^11 + 16*zeta^10 + 32*zeta^7 + 8*zeta^4 + 8*zeta^3 + 
16)*q^319 + (14*zeta^11 - 8*zeta^10 + 10*zeta^8 - 40*zeta^7 - 10*zeta^6 + 
20*zeta^5 + 6*zeta^4 - 14*zeta^3 + 20*zeta^2 + 10*zeta - 30)*q^320 + (-4*zeta^11
- 24*zeta^10 - 16*zeta^8 + 24*zeta^7 + 16*zeta^6 - 32*zeta^5 - 28*zeta^4 + 
4*zeta^3 - 32*zeta^2 - 16*zeta + 28)*q^321 + (4*zeta^11 - 24*zeta^10 - 8*zeta^8 
+ 24*zeta^7 + 8*zeta^6 - 16*zeta^5 - 20*zeta^4 - 4*zeta^3 - 16*zeta^2 - 8*zeta +
20)*q^323 + (12*zeta^11 - 20*zeta^10 + 2*zeta^8 - 8*zeta^7 - 2*zeta^6 + 4*zeta^5
- 8*zeta^4 - 12*zeta^3 + 4*zeta^2 + 2*zeta - 6)*q^324 + (-64*zeta^11 + 
60*zeta^10 - 34*zeta^8 + 52*zeta^7 + 34*zeta^6 - 68*zeta^5 - 4*zeta^4 + 
64*zeta^3 - 68*zeta^2 - 34*zeta + 60)*q^325 + (-48*zeta^11 + 32*zeta^10 - 
32*zeta^8 + 32*zeta^6 - 64*zeta^5 - 16*zeta^4 + 48*zeta^3 - 64*zeta^2 - 32*zeta 
+ 32)*q^326 + (16*zeta^11 - 32*zeta^10 - 16*zeta^4 - 16*zeta^3)*q^327 + 
(-14*zeta^11 - 14*zeta^8 + 14*zeta^6 - 28*zeta^5 - 14*zeta^4 + 14*zeta^3 - 
28*zeta^2 - 14*zeta + 14)*q^328 + (8*zeta^11 + 8*zeta^8 - 8*zeta^6 + 16*zeta^5 +
8*zeta^4 - 8*zeta^3 + 16*zeta^2 + 8*zeta - 8)*q^330 + (8*zeta^11 - 8*zeta^10 + 
4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 8*zeta^5 - 8*zeta^3 + 8*zeta^2 + 4*zeta - 
12)*q^331 + (-100*zeta^11 + 64*zeta^10 - 68*zeta^8 - 8*zeta^7 + 68*zeta^6 - 
136*zeta^5 - 36*zeta^4 + 100*zeta^3 - 136*zeta^2 - 68*zeta + 64)*q^332 + 
(8*zeta^11 + 8*zeta^8 + 16*zeta^7 - 8*zeta^6 + 16*zeta^5 + 8*zeta^4 - 8*zeta^3 +
16*zeta^2 + 8*zeta)*q^333 + (84*zeta^11 - 112*zeta^10 + 28*zeta^8 - 112*zeta^7 -
28*zeta^6 + 56*zeta^5 - 28*zeta^4 - 84*zeta^3 + 56*zeta^2 + 28*zeta - 84)*q^334 
+ (-24*zeta^11 + 16*zeta^10 - 16*zeta^8 - 16*zeta^7 + 16*zeta^6 - 32*zeta^5 - 
8*zeta^4 + 24*zeta^3 - 32*zeta^2 - 16*zeta + 8)*q^335 + (-32*zeta^11 + 
48*zeta^10 - 8*zeta^8 - 48*zeta^7 + 8*zeta^6 - 16*zeta^5 + 16*zeta^4 + 32*zeta^3
- 16*zeta^2 - 8*zeta - 16)*q^337 + (68*zeta^11 - 94*zeta^10 + 21*zeta^8 - 
84*zeta^7 - 21*zeta^6 + 42*zeta^5 - 26*zeta^4 - 68*zeta^3 + 42*zeta^2 + 21*zeta 
- 63)*q^338 + (-76*zeta^11 + 64*zeta^10 - 44*zeta^8 + 40*zeta^7 + 44*zeta^6 - 
88*zeta^5 - 12*zeta^4 + 76*zeta^3 - 88*zeta^2 - 44*zeta + 64)*q^339 + 
(14*zeta^11 + 14*zeta^8 + 28*zeta^7 - 14*zeta^6 + 28*zeta^5 + 14*zeta^4 - 
14*zeta^3 + 28*zeta^2 + 14*zeta)*q^340 + (-24*zeta^11 + 32*zeta^10 - 8*zeta^8 + 
32*zeta^7 + 8*zeta^6 - 16*zeta^5 + 8*zeta^4 + 24*zeta^3 - 16*zeta^2 - 8*zeta + 
24)*q^341 + (-16*zeta^10 - 8*zeta^8 + 16*zeta^7 + 8*zeta^6 - 16*zeta^5 - 
16*zeta^4 - 16*zeta^2 - 8*zeta + 16)*q^342 + (-16*zeta^11 - 16*zeta^10 - 
24*zeta^8 + 16*zeta^7 + 24*zeta^6 - 48*zeta^5 - 32*zeta^4 + 16*zeta^3 - 
48*zeta^2 - 24*zeta + 32)*q^344 + (-8*zeta^11 - 32*zeta^10 - 24*zeta^8 + 
96*zeta^7 + 24*zeta^6 - 48*zeta^5 - 40*zeta^4 + 8*zeta^3 - 48*zeta^2 - 24*zeta +
72)*q^345 + (-40*zeta^11 + 36*zeta^10 - 22*zeta^8 + 28*zeta^7 + 22*zeta^6 - 
44*zeta^5 - 4*zeta^4 + 40*zeta^3 - 44*zeta^2 - 22*zeta + 36)*q^346 + 
(-10*zeta^11 + 32*zeta^10 + 6*zeta^8 + 76*zeta^7 - 6*zeta^6 + 12*zeta^5 + 
22*zeta^4 + 10*zeta^3 + 12*zeta^2 + 6*zeta + 32)*q^347 + (-8*zeta^11 + 
32*zeta^10 + 8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 + 24*zeta^4 + 8*zeta^3 
+ 16*zeta^2 + 8*zeta - 24)*q^348 + (-14*zeta^11 - 14*zeta^8 + 14*zeta^6 - 
28*zeta^5 - 14*zeta^4 + 14*zeta^3 - 28*zeta^2 - 14*zeta + 14)*q^349 + 
(-4*zeta^11 + 16*zeta^10 + 4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 8*zeta^5 + 
12*zeta^4 + 4*zeta^3 + 8*zeta^2 + 4*zeta - 12)*q^351 + (8*zeta^11 - 4*zeta^10 + 
6*zeta^8 - 24*zeta^7 - 6*zeta^6 + 12*zeta^5 + 4*zeta^4 - 8*zeta^3 + 12*zeta^2 + 
6*zeta - 18)*q^352 + (34*zeta^11 - 36*zeta^10 + 16*zeta^8 - 40*zeta^7 - 
16*zeta^6 + 32*zeta^5 - 2*zeta^4 - 34*zeta^3 + 32*zeta^2 + 16*zeta - 36)*q^353 +
(-64*zeta^11 + 48*zeta^10 - 40*zeta^8 + 16*zeta^7 + 40*zeta^6 - 80*zeta^5 - 
16*zeta^4 + 64*zeta^3 - 80*zeta^2 - 40*zeta + 48)*q^354 + (4*zeta^11 - 
32*zeta^10 - 12*zeta^8 + 48*zeta^7 + 12*zeta^6 - 24*zeta^5 - 28*zeta^4 - 
4*zeta^3 - 24*zeta^2 - 12*zeta + 36)*q^355 + (36*zeta^11 - 4*zeta^10 + 34*zeta^8
+ 4*zeta^7 - 34*zeta^6 + 68*zeta^5 + 32*zeta^4 - 36*zeta^3 + 68*zeta^2 + 34*zeta
- 32)*q^356 + (-14*zeta^11 - 12*zeta^10 - 20*zeta^8 + 12*zeta^7 + 20*zeta^6 - 
40*zeta^5 - 26*zeta^4 + 14*zeta^3 - 40*zeta^2 - 20*zeta + 26)*q^358 + 
(20*zeta^11 - 28*zeta^10 + 6*zeta^8 - 24*zeta^7 - 6*zeta^6 + 12*zeta^5 - 
8*zeta^4 - 20*zeta^3 + 12*zeta^2 + 6*zeta - 18)*q^359 + (8*zeta^10 + 4*zeta^8 + 
24*zeta^7 - 4*zeta^6 + 8*zeta^5 + 8*zeta^4 + 8*zeta^2 + 4*zeta + 8)*q^360 + 
(-11*zeta^11 - 11*zeta^8 - 22*zeta^7 + 11*zeta^6 - 22*zeta^5 - 11*zeta^4 + 
11*zeta^3 - 22*zeta^2 - 11*zeta)*q^361 + (-22*zeta^11 + 32*zeta^10 - 6*zeta^8 + 
24*zeta^7 + 6*zeta^6 - 12*zeta^5 + 10*zeta^4 + 22*zeta^3 - 12*zeta^2 - 6*zeta + 
18)*q^362 + (14*zeta^11 - 28*zeta^10 + 28*zeta^7 - 14*zeta^4 - 14*zeta^3 + 
14)*q^363 + (58*zeta^11 - 44*zeta^10 + 36*zeta^8 + 44*zeta^7 - 36*zeta^6 + 
72*zeta^5 + 14*zeta^4 - 58*zeta^3 + 72*zeta^2 + 36*zeta - 14)*q^365 + 
(-28*zeta^11 + 48*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 8*zeta^5 + 
20*zeta^4 + 28*zeta^3 - 8*zeta^2 - 4*zeta + 12)*q^366 + (40*zeta^11 - 32*zeta^10
+ 24*zeta^8 - 16*zeta^7 - 24*zeta^6 + 48*zeta^5 + 8*zeta^4 - 40*zeta^3 + 
48*zeta^2 + 24*zeta - 32)*q^367 + (42*zeta^11 - 48*zeta^10 + 18*zeta^8 - 
60*zeta^7 - 18*zeta^6 + 36*zeta^5 - 6*zeta^4 - 42*zeta^3 + 36*zeta^2 + 18*zeta -
48)*q^368 + (-4*zeta^11 + 16*zeta^10 + 4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 
8*zeta^5 + 12*zeta^4 + 4*zeta^3 + 8*zeta^2 + 4*zeta - 12)*q^369 + (-8*zeta^11 - 
8*zeta^8 + 8*zeta^6 - 16*zeta^5 - 8*zeta^4 + 8*zeta^3 - 16*zeta^2 - 8*zeta + 
8)*q^370 + (-16*zeta^11 - 48*zeta^10 - 40*zeta^8 + 48*zeta^7 + 40*zeta^6 - 
80*zeta^5 - 64*zeta^4 + 16*zeta^3 - 80*zeta^2 - 40*zeta + 64)*q^372 + 
(60*zeta^11 - 76*zeta^10 + 22*zeta^8 - 88*zeta^7 - 22*zeta^6 + 44*zeta^5 - 
16*zeta^4 - 60*zeta^3 + 44*zeta^2 + 22*zeta - 66)*q^373 + (56*zeta^11 - 
40*zeta^10 + 36*zeta^8 - 8*zeta^7 - 36*zeta^6 + 72*zeta^5 + 16*zeta^4 - 
56*zeta^3 + 72*zeta^2 + 36*zeta - 40)*q^374 + (32*zeta^11 - 32*zeta^10 + 
16*zeta^8 - 32*zeta^7 - 16*zeta^6 + 32*zeta^5 - 32*zeta^3 + 32*zeta^2 + 16*zeta 
- 32)*q^375 + (20*zeta^11 - 32*zeta^10 + 4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 
8*zeta^5 - 12*zeta^4 - 20*zeta^3 + 8*zeta^2 + 4*zeta - 12)*q^376 + (-20*zeta^11 
+ 24*zeta^10 - 8*zeta^8 - 24*zeta^7 + 8*zeta^6 - 16*zeta^5 + 4*zeta^4 + 
20*zeta^3 - 16*zeta^2 - 8*zeta - 4)*q^377 + (4*zeta^11 - 40*zeta^10 - 16*zeta^8 
+ 40*zeta^7 + 16*zeta^6 - 32*zeta^5 - 36*zeta^4 - 4*zeta^3 - 32*zeta^2 - 16*zeta
+ 36)*q^379 + (-16*zeta^11 + 8*zeta^10 - 12*zeta^8 + 48*zeta^7 + 12*zeta^6 - 
24*zeta^5 - 8*zeta^4 + 16*zeta^3 - 24*zeta^2 - 12*zeta + 36)*q^380 + 
(-40*zeta^11 + 32*zeta^10 - 24*zeta^8 + 16*zeta^7 + 24*zeta^6 - 48*zeta^5 - 
8*zeta^4 + 40*zeta^3 - 48*zeta^2 - 24*zeta + 32)*q^381 + (90*zeta^11 - 
72*zeta^10 + 54*zeta^8 - 36*zeta^7 - 54*zeta^6 + 108*zeta^5 + 18*zeta^4 - 
90*zeta^3 + 108*zeta^2 + 54*zeta - 72)*q^382 + (56*zeta^11 - 64*zeta^10 + 
24*zeta^8 - 96*zeta^7 - 24*zeta^6 + 48*zeta^5 - 8*zeta^4 - 56*zeta^3 + 48*zeta^2
+ 24*zeta - 72)*q^383 + (34*zeta^11 + 20*zeta^10 + 44*zeta^8 - 20*zeta^7 - 
44*zeta^6 + 88*zeta^5 + 54*zeta^4 - 34*zeta^3 + 88*zeta^2 + 44*zeta - 54)*q^384 
+ (-6*zeta^11 - 44*zeta^10 - 28*zeta^8 + 44*zeta^7 + 28*zeta^6 - 56*zeta^5 - 
50*zeta^4 + 6*zeta^3 - 56*zeta^2 - 28*zeta + 50)*q^386 + (-16*zeta^11 + 
32*zeta^10 + 16*zeta^4 + 16*zeta^3)*q^387 + (44*zeta^11 - 36*zeta^10 + 26*zeta^8
- 20*zeta^7 - 26*zeta^6 + 52*zeta^5 + 8*zeta^4 - 44*zeta^3 + 52*zeta^2 + 26*zeta
- 36)*q^388 + (36*zeta^11 - 40*zeta^10 + 16*zeta^8 - 48*zeta^7 - 16*zeta^6 + 
32*zeta^5 - 4*zeta^4 - 36*zeta^3 + 32*zeta^2 + 16*zeta - 40)*q^389 + 
(-24*zeta^11 + 40*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 8*zeta^5 + 
16*zeta^4 + 24*zeta^3 - 8*zeta^2 - 4*zeta + 12)*q^390 + (16*zeta^11 - 40*zeta^10
- 4*zeta^8 + 40*zeta^7 + 4*zeta^6 - 8*zeta^5 - 24*zeta^4 - 16*zeta^3 - 8*zeta^2 
- 4*zeta + 24)*q^391 + (40*zeta^11 - 16*zeta^10 + 32*zeta^8 + 16*zeta^7 - 
32*zeta^6 + 64*zeta^5 + 24*zeta^4 - 40*zeta^3 + 64*zeta^2 + 32*zeta - 24)*q^393 
+ (8*zeta^11 - 12*zeta^10 + 2*zeta^8 - 8*zeta^7 - 2*zeta^6 + 4*zeta^5 - 4*zeta^4
- 8*zeta^3 + 4*zeta^2 + 2*zeta - 6)*q^394 + (-40*zeta^11 + 64*zeta^10 - 8*zeta^8
+ 112*zeta^7 + 8*zeta^6 - 16*zeta^5 + 24*zeta^4 + 40*zeta^3 - 16*zeta^2 - 8*zeta
+ 64)*q^395 + (36*zeta^11 - 32*zeta^10 + 20*zeta^8 - 24*zeta^7 - 20*zeta^6 + 
40*zeta^5 + 4*zeta^4 - 36*zeta^3 + 40*zeta^2 + 20*zeta - 32)*q^396 + 
(-58*zeta^11 + 84*zeta^10 - 16*zeta^8 + 64*zeta^7 + 16*zeta^6 - 32*zeta^5 + 
26*zeta^4 + 58*zeta^3 - 32*zeta^2 - 16*zeta + 48)*q^397 + (16*zeta^11 + 
16*zeta^10 + 24*zeta^8 - 16*zeta^7 - 24*zeta^6 + 48*zeta^5 + 32*zeta^4 - 
16*zeta^3 + 48*zeta^2 + 24*zeta - 32)*q^398 + (27*zeta^11 - 6*zeta^10 + 
24*zeta^8 + 6*zeta^7 - 24*zeta^6 + 48*zeta^5 + 21*zeta^4 - 27*zeta^3 + 48*zeta^2
+ 24*zeta - 21)*q^400 + (-36*zeta^11 + 56*zeta^10 - 8*zeta^8 + 32*zeta^7 + 
8*zeta^6 - 16*zeta^5 + 20*zeta^4 + 36*zeta^3 - 16*zeta^2 - 8*zeta + 24)*q^401 + 
(48*zeta^11 - 32*zeta^10 + 32*zeta^8 - 32*zeta^6 + 64*zeta^5 + 16*zeta^4 - 
48*zeta^3 + 64*zeta^2 + 32*zeta - 32)*q^402 + (-68*zeta^11 + 48*zeta^10 - 
44*zeta^8 + 8*zeta^7 + 44*zeta^6 - 88*zeta^5 - 20*zeta^4 + 68*zeta^3 - 88*zeta^2
- 44*zeta + 48)*q^403 + (-110*zeta^11 + 160*zeta^10 - 30*zeta^8 + 120*zeta^7 + 
30*zeta^6 - 60*zeta^5 + 50*zeta^4 + 110*zeta^3 - 60*zeta^2 - 30*zeta + 90)*q^404
+ (-8*zeta^11 + 8*zeta^10 - 4*zeta^8 - 8*zeta^7 + 4*zeta^6 - 8*zeta^5 + 8*zeta^3
- 8*zeta^2 - 4*zeta)*q^405 + (8*zeta^11 - 16*zeta^10 + 16*zeta^7 - 8*zeta^4 - 
8*zeta^3 + 8)*q^407 + (-92*zeta^11 + 136*zeta^10 - 24*zeta^8 + 96*zeta^7 + 
24*zeta^6 - 48*zeta^5 + 44*zeta^4 + 92*zeta^3 - 48*zeta^2 - 24*zeta + 72)*q^408 
+ (-16*zeta^11 - 4*zeta^10 - 18*zeta^8 - 44*zeta^7 + 18*zeta^6 - 36*zeta^5 - 
20*zeta^4 + 16*zeta^3 - 36*zeta^2 - 18*zeta - 4)*q^409 + (-2*zeta^11 + 8*zeta^10
+ 2*zeta^8 + 20*zeta^7 - 2*zeta^6 + 4*zeta^5 + 6*zeta^4 + 2*zeta^3 + 4*zeta^2 + 
2*zeta + 8)*q^410 + (-40*zeta^11 + 80*zeta^10 + 40*zeta^4 + 40*zeta^3)*q^411 + 
(56*zeta^10 + 28*zeta^8 - 56*zeta^7 - 28*zeta^6 + 56*zeta^5 + 56*zeta^4 + 
56*zeta^2 + 28*zeta - 56)*q^412 + (4*zeta^11 - 24*zeta^10 - 8*zeta^8 + 24*zeta^7
+ 8*zeta^6 - 16*zeta^5 - 20*zeta^4 - 4*zeta^3 - 16*zeta^2 - 8*zeta + 20)*q^414 +
(8*zeta^11 - 32*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 - 
24*zeta^4 - 8*zeta^3 - 16*zeta^2 - 8*zeta + 24)*q^415 + (6*zeta^11 + 4*zeta^10 +
8*zeta^8 + 24*zeta^7 - 8*zeta^6 + 16*zeta^5 + 10*zeta^4 - 6*zeta^3 + 16*zeta^2 +
8*zeta + 4)*q^416 + (-8*zeta^11 + 32*zeta^10 + 8*zeta^8 + 80*zeta^7 - 8*zeta^6 +
16*zeta^5 + 24*zeta^4 + 8*zeta^3 + 16*zeta^2 + 8*zeta + 32)*q^417 + (-24*zeta^11
+ 32*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 + 8*zeta^4 + 
24*zeta^3 - 16*zeta^2 - 8*zeta + 24)*q^418 + (32*zeta^11 - 72*zeta^10 - 4*zeta^8
+ 72*zeta^7 + 4*zeta^6 - 8*zeta^5 - 40*zeta^4 - 32*zeta^3 - 8*zeta^2 - 4*zeta + 
40)*q^419 + (26*zeta^11 + 12*zeta^10 + 32*zeta^8 - 12*zeta^7 - 32*zeta^6 + 
64*zeta^5 + 38*zeta^4 - 26*zeta^3 + 64*zeta^2 + 32*zeta - 38)*q^421 + 
(-88*zeta^11 + 120*zeta^10 - 28*zeta^8 + 112*zeta^7 + 28*zeta^6 - 56*zeta^5 + 
32*zeta^4 + 88*zeta^3 - 56*zeta^2 - 28*zeta + 84)*q^422 + (-16*zeta^11 + 
16*zeta^10 - 8*zeta^8 + 16*zeta^7 + 8*zeta^6 - 16*zeta^5 + 16*zeta^3 - 16*zeta^2
- 8*zeta + 16)*q^423 + (14*zeta^11 - 8*zeta^10 + 10*zeta^8 + 4*zeta^7 - 
10*zeta^6 + 20*zeta^5 + 6*zeta^4 - 14*zeta^3 + 20*zeta^2 + 10*zeta - 8)*q^424 + 
(54*zeta^11 - 64*zeta^10 + 22*zeta^8 - 88*zeta^7 - 22*zeta^6 + 44*zeta^5 - 
10*zeta^4 - 54*zeta^3 + 44*zeta^2 + 22*zeta - 66)*q^425 + (4*zeta^11 + 
72*zeta^10 + 40*zeta^8 - 72*zeta^7 - 40*zeta^6 + 80*zeta^5 + 76*zeta^4 - 
4*zeta^3 + 80*zeta^2 + 40*zeta - 76)*q^426 + (10*zeta^11 + 44*zeta^10 + 
32*zeta^8 - 44*zeta^7 - 32*zeta^6 + 64*zeta^5 + 54*zeta^4 - 10*zeta^3 + 
64*zeta^2 + 32*zeta - 54)*q^428 + (-40*zeta^11 + 48*zeta^10 - 16*zeta^8 + 
64*zeta^7 + 16*zeta^6 - 32*zeta^5 + 8*zeta^4 + 40*zeta^3 - 32*zeta^2 - 16*zeta +
48)*q^429 + (8*zeta^11 + 8*zeta^8 + 16*zeta^7 - 8*zeta^6 + 16*zeta^5 + 8*zeta^4 
- 8*zeta^3 + 16*zeta^2 + 8*zeta)*q^430 + (38*zeta^11 - 48*zeta^10 + 14*zeta^8 - 
68*zeta^7 - 14*zeta^6 + 28*zeta^5 - 10*zeta^4 - 38*zeta^3 + 28*zeta^2 + 14*zeta 
- 48)*q^431 + (12*zeta^11 - 12*zeta^10 + 6*zeta^8 - 24*zeta^7 - 6*zeta^6 + 
12*zeta^5 - 12*zeta^3 + 12*zeta^2 + 6*zeta - 18)*q^432 + (-22*zeta^11 + 
32*zeta^10 - 6*zeta^8 - 32*zeta^7 + 6*zeta^6 - 12*zeta^5 + 10*zeta^4 + 22*zeta^3
- 12*zeta^2 - 6*zeta - 10)*q^433 + (56*zeta^11 - 48*zeta^10 + 32*zeta^8 + 
48*zeta^7 - 32*zeta^6 + 64*zeta^5 + 8*zeta^4 - 56*zeta^3 + 64*zeta^2 + 32*zeta -
8)*q^435 + (-40*zeta^11 + 48*zeta^10 - 16*zeta^8 + 64*zeta^7 + 16*zeta^6 - 
32*zeta^5 + 8*zeta^4 + 40*zeta^3 - 32*zeta^2 - 16*zeta + 48)*q^436 + (16*zeta^10
+ 8*zeta^8 + 48*zeta^7 - 8*zeta^6 + 16*zeta^5 + 16*zeta^4 + 16*zeta^2 + 8*zeta +
16)*q^437 + (-44*zeta^11 + 24*zeta^10 - 32*zeta^8 - 16*zeta^7 + 32*zeta^6 - 
64*zeta^5 - 20*zeta^4 + 44*zeta^3 - 64*zeta^2 - 32*zeta + 24)*q^438 + 
(-64*zeta^11 + 80*zeta^10 - 24*zeta^8 + 96*zeta^7 + 24*zeta^6 - 48*zeta^5 + 
16*zeta^4 + 64*zeta^3 - 48*zeta^2 - 24*zeta + 72)*q^439 + (12*zeta^11 - 
16*zeta^10 + 4*zeta^8 + 16*zeta^7 - 4*zeta^6 + 8*zeta^5 - 4*zeta^4 - 12*zeta^3 +
8*zeta^2 + 4*zeta + 4)*q^440 + (14*zeta^11 + 84*zeta^10 + 56*zeta^8 - 84*zeta^7 
- 56*zeta^6 + 112*zeta^5 + 98*zeta^4 - 14*zeta^3 + 112*zeta^2 + 56*zeta - 
98)*q^442 + (-12*zeta^11 - 12*zeta^10 - 18*zeta^8 + 72*zeta^7 + 18*zeta^6 - 
36*zeta^5 - 24*zeta^4 + 12*zeta^3 - 36*zeta^2 - 18*zeta + 54)*q^443 + 
(72*zeta^11 - 64*zeta^10 + 40*zeta^8 - 48*zeta^7 - 40*zeta^6 + 80*zeta^5 + 
8*zeta^4 - 72*zeta^3 + 80*zeta^2 + 40*zeta - 64)*q^444 + (38*zeta^11 - 
64*zeta^10 + 6*zeta^8 - 116*zeta^7 - 6*zeta^6 + 12*zeta^5 - 26*zeta^4 - 
38*zeta^3 + 12*zeta^2 + 6*zeta - 64)*q^445 + (-40*zeta^11 + 48*zeta^10 - 
16*zeta^8 + 64*zeta^7 + 16*zeta^6 - 32*zeta^5 + 8*zeta^4 + 40*zeta^3 - 32*zeta^2
- 16*zeta + 48)*q^446 + (-44*zeta^11 + 24*zeta^10 - 32*zeta^8 - 24*zeta^7 + 
32*zeta^6 - 64*zeta^5 - 20*zeta^4 + 44*zeta^3 - 64*zeta^2 - 32*zeta + 20)*q^447 
+ (-10*zeta^11 - 12*zeta^10 - 16*zeta^8 + 12*zeta^7 + 16*zeta^6 - 32*zeta^5 - 
22*zeta^4 + 10*zeta^3 - 32*zeta^2 - 16*zeta + 22)*q^449 + (40*zeta^11 - 
52*zeta^10 + 14*zeta^8 - 56*zeta^7 - 14*zeta^6 + 28*zeta^5 - 12*zeta^4 - 
40*zeta^3 + 28*zeta^2 + 14*zeta - 42)*q^450 + (20*zeta^11 - 24*zeta^10 + 
8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 - 4*zeta^4 - 20*zeta^3 + 16*zeta^2 +
8*zeta - 24)*q^451 + (118*zeta^11 - 80*zeta^10 + 78*zeta^8 - 4*zeta^7 - 
78*zeta^6 + 156*zeta^5 + 38*zeta^4 - 118*zeta^3 + 156*zeta^2 + 78*zeta - 
80)*q^452 + (48*zeta^11 - 48*zeta^10 + 24*zeta^8 - 96*zeta^7 - 24*zeta^6 + 
48*zeta^5 - 48*zeta^3 + 48*zeta^2 + 24*zeta - 72)*q^453 + (4*zeta^11 - 
48*zeta^10 - 20*zeta^8 + 48*zeta^7 + 20*zeta^6 - 40*zeta^5 - 44*zeta^4 - 
4*zeta^3 - 40*zeta^2 - 20*zeta + 44)*q^454 + (-16*zeta^11 - 16*zeta^10 - 
24*zeta^8 + 16*zeta^7 + 24*zeta^6 - 48*zeta^5 - 32*zeta^4 + 16*zeta^3 - 
48*zeta^2 - 24*zeta + 32)*q^456 + (36*zeta^11 - 36*zeta^10 + 18*zeta^8 - 
72*zeta^7 - 18*zeta^6 + 36*zeta^5 - 36*zeta^3 + 36*zeta^2 + 18*zeta - 54)*q^457 
+ (-38*zeta^11 + 28*zeta^10 - 24*zeta^8 + 8*zeta^7 + 24*zeta^6 - 48*zeta^5 - 
10*zeta^4 + 38*zeta^3 - 48*zeta^2 - 24*zeta + 28)*q^458 + (-28*zeta^11 + 
24*zeta^10 - 16*zeta^8 + 16*zeta^7 + 16*zeta^6 - 32*zeta^5 - 4*zeta^4 + 
28*zeta^3 - 32*zeta^2 - 16*zeta + 24)*q^459 + (-28*zeta^11 - 28*zeta^8 + 
112*zeta^7 + 28*zeta^6 - 56*zeta^5 - 28*zeta^4 + 28*zeta^3 - 56*zeta^2 - 28*zeta
+ 84)*q^460 + (-16*zeta^11 + 36*zeta^10 + 2*zeta^8 - 36*zeta^7 - 2*zeta^6 + 
4*zeta^5 + 20*zeta^4 + 16*zeta^3 + 4*zeta^2 + 2*zeta - 20)*q^461 + (-36*zeta^11 
+ 8*zeta^10 - 32*zeta^8 - 8*zeta^7 + 32*zeta^6 - 64*zeta^5 - 28*zeta^4 + 
36*zeta^3 - 64*zeta^2 - 32*zeta + 28)*q^463 + (12*zeta^11 + 12*zeta^8 - 
48*zeta^7 - 12*zeta^6 + 24*zeta^5 + 12*zeta^4 - 12*zeta^3 + 24*zeta^2 + 12*zeta 
- 36)*q^464 + (8*zeta^11 + 8*zeta^8 + 16*zeta^7 - 8*zeta^6 + 16*zeta^5 + 
8*zeta^4 - 8*zeta^3 + 16*zeta^2 + 8*zeta)*q^465 + (-100*zeta^11 + 72*zeta^10 - 
64*zeta^8 + 16*zeta^7 + 64*zeta^6 - 128*zeta^5 - 28*zeta^4 + 100*zeta^3 - 
128*zeta^2 - 64*zeta + 72)*q^466 + (-68*zeta^11 + 96*zeta^10 - 20*zeta^8 + 
80*zeta^7 + 20*zeta^6 - 40*zeta^5 + 28*zeta^4 + 68*zeta^3 - 40*zeta^2 - 20*zeta 
+ 60)*q^467 + (20*zeta^11 + 32*zeta^10 + 36*zeta^8 - 32*zeta^7 - 36*zeta^6 + 
72*zeta^5 + 52*zeta^4 - 20*zeta^3 + 72*zeta^2 + 36*zeta - 52)*q^468 + 
(-4*zeta^11 + 8*zeta^10 - 8*zeta^7 + 4*zeta^4 + 4*zeta^3 - 4)*q^470 + 
(76*zeta^11 - 88*zeta^10 + 32*zeta^8 - 128*zeta^7 - 32*zeta^6 + 64*zeta^5 - 
12*zeta^4 - 76*zeta^3 + 64*zeta^2 + 32*zeta - 96)*q^471 + (56*zeta^11 - 
40*zeta^10 + 36*zeta^8 - 8*zeta^7 - 36*zeta^6 + 72*zeta^5 + 16*zeta^4 - 
56*zeta^3 + 72*zeta^2 + 36*zeta - 40)*q^472 + (32*zeta^11 - 32*zeta^10 + 
16*zeta^8 - 32*zeta^7 - 16*zeta^6 + 32*zeta^5 - 32*zeta^3 + 32*zeta^2 + 16*zeta 
- 32)*q^473 + (-16*zeta^11 + 32*zeta^10 + 16*zeta^4 + 16*zeta^3)*q^474 + 
(-20*zeta^11 + 32*zeta^10 - 4*zeta^8 - 32*zeta^7 + 4*zeta^6 - 8*zeta^5 + 
12*zeta^4 + 20*zeta^3 - 8*zeta^2 - 4*zeta - 12)*q^475 + (4*zeta^11 - 8*zeta^10 +
8*zeta^7 - 4*zeta^4 - 4*zeta^3 + 4)*q^477 + (-16*zeta^11 + 28*zeta^10 - 2*zeta^8
+ 8*zeta^7 + 2*zeta^6 - 4*zeta^5 + 12*zeta^4 + 16*zeta^3 - 4*zeta^2 - 2*zeta + 
6)*q^478 + (56*zeta^11 - 40*zeta^10 + 36*zeta^8 - 8*zeta^7 - 36*zeta^6 + 
72*zeta^5 + 16*zeta^4 - 56*zeta^3 + 72*zeta^2 + 36*zeta - 40)*q^479 + 
(24*zeta^11 - 40*zeta^10 + 4*zeta^8 - 72*zeta^7 - 4*zeta^6 + 8*zeta^5 - 
16*zeta^4 - 24*zeta^3 + 8*zeta^2 + 4*zeta - 40)*q^480 + (40*zeta^11 - 48*zeta^10
+ 16*zeta^8 - 64*zeta^7 - 16*zeta^6 + 32*zeta^5 - 8*zeta^4 - 40*zeta^3 + 
32*zeta^2 + 16*zeta - 48)*q^481 + (-12*zeta^11 - 12*zeta^10 - 18*zeta^8 + 
12*zeta^7 + 18*zeta^6 - 36*zeta^5 - 24*zeta^4 + 12*zeta^3 - 36*zeta^2 - 18*zeta 
+ 24)*q^482 + (21*zeta^11 + 14*zeta^10 + 28*zeta^8 - 14*zeta^7 - 28*zeta^6 + 
56*zeta^5 + 35*zeta^4 - 21*zeta^3 + 56*zeta^2 + 28*zeta - 35)*q^484 + 
(-8*zeta^11 + 4*zeta^10 - 6*zeta^8 + 24*zeta^7 + 6*zeta^6 - 12*zeta^5 - 4*zeta^4
+ 8*zeta^3 - 12*zeta^2 - 6*zeta + 18)*q^485 + (10*zeta^11 - 8*zeta^10 + 6*zeta^8
- 4*zeta^7 - 6*zeta^6 + 12*zeta^5 + 2*zeta^4 - 10*zeta^3 + 12*zeta^2 + 6*zeta - 
8)*q^486 + (-60*zeta^11 + 64*zeta^10 - 28*zeta^8 + 72*zeta^7 + 28*zeta^6 - 
56*zeta^5 + 4*zeta^4 + 60*zeta^3 - 56*zeta^2 - 28*zeta + 64)*q^487 + (34*zeta^11
- 32*zeta^10 + 18*zeta^8 - 72*zeta^7 - 18*zeta^6 + 36*zeta^5 + 2*zeta^4 - 
34*zeta^3 + 36*zeta^2 + 18*zeta - 54)*q^488 + (32*zeta^11 + 32*zeta^8 - 
32*zeta^6 + 64*zeta^5 + 32*zeta^4 - 32*zeta^3 + 64*zeta^2 + 32*zeta - 32)*q^489 
+ (-2*zeta^11 - 44*zeta^10 - 24*zeta^8 + 44*zeta^7 + 24*zeta^6 - 48*zeta^5 - 
46*zeta^4 + 2*zeta^3 - 48*zeta^2 - 24*zeta + 46)*q^491 + (-36*zeta^11 + 
32*zeta^10 - 20*zeta^8 + 80*zeta^7 + 20*zeta^6 - 40*zeta^5 - 4*zeta^4 + 
36*zeta^3 - 40*zeta^2 - 20*zeta + 60)*q^492 + (-28*zeta^11 + 32*zeta^10 - 
12*zeta^8 + 40*zeta^7 + 12*zeta^6 - 24*zeta^5 + 4*zeta^4 + 28*zeta^3 - 24*zeta^2
- 12*zeta + 32)*q^493 + (-68*zeta^11 + 48*zeta^10 - 44*zeta^8 + 8*zeta^7 + 
44*zeta^6 - 88*zeta^5 - 20*zeta^4 + 68*zeta^3 - 88*zeta^2 - 44*zeta + 48)*q^494 
+ (-8*zeta^11 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 - 8*zeta^4 + 
8*zeta^3 - 16*zeta^2 - 8*zeta + 24)*q^495 + (24*zeta^10 + 12*zeta^8 - 24*zeta^7 
- 12*zeta^6 + 24*zeta^5 + 24*zeta^4 + 24*zeta^2 + 12*zeta - 24)*q^496 + 
(8*zeta^11 + 80*zeta^10 + 48*zeta^8 - 80*zeta^7 - 48*zeta^6 + 96*zeta^5 + 
88*zeta^4 - 8*zeta^3 + 96*zeta^2 + 48*zeta - 88)*q^498 + (32*zeta^11 - 
48*zeta^10 + 8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 - 16*zeta^4 - 32*zeta^3
+ 16*zeta^2 + 8*zeta - 24)*q^499 + (-32*zeta^11 + 16*zeta^10 - 24*zeta^8 - 
16*zeta^7 + 24*zeta^6 - 48*zeta^5 - 16*zeta^4 + 32*zeta^3 - 48*zeta^2 - 24*zeta 
+ 16)*q^500 + (-112*zeta^11 + 112*zeta^10 - 56*zeta^8 + 112*zeta^7 + 56*zeta^6 -
112*zeta^5 + 112*zeta^3 - 112*zeta^2 - 56*zeta + 112)*q^501 + (20*zeta^11 - 
24*zeta^10 + 8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 - 4*zeta^4 - 20*zeta^3 
+ 16*zeta^2 + 8*zeta - 24)*q^502 + (10*zeta^11 - 20*zeta^10 + 20*zeta^7 - 
10*zeta^4 - 10*zeta^3 + 10)*q^505 + (-32*zeta^11 + 40*zeta^10 - 12*zeta^8 + 
48*zeta^7 + 12*zeta^6 - 24*zeta^5 + 8*zeta^4 + 32*zeta^3 - 24*zeta^2 - 12*zeta +
36)*q^506 + (-74*zeta^11 + 64*zeta^10 - 42*zeta^8 + 44*zeta^7 + 42*zeta^6 - 
84*zeta^5 - 10*zeta^4 + 74*zeta^3 - 84*zeta^2 - 42*zeta + 64)*q^507 + 
(68*zeta^11 - 48*zeta^10 + 44*zeta^8 - 8*zeta^7 - 44*zeta^6 + 88*zeta^5 + 
20*zeta^4 - 68*zeta^3 + 88*zeta^2 + 44*zeta - 48)*q^508 + (42*zeta^11 - 
64*zeta^10 + 10*zeta^8 - 40*zeta^7 - 10*zeta^6 + 20*zeta^5 - 22*zeta^4 - 
42*zeta^3 + 20*zeta^2 + 10*zeta - 30)*q^509 + (4*zeta^11 - 24*zeta^10 - 8*zeta^8
+ 24*zeta^7 + 8*zeta^6 - 16*zeta^5 - 20*zeta^4 - 4*zeta^3 - 16*zeta^2 - 8*zeta +
20)*q^510 + (21*zeta^11 - 54*zeta^10 - 6*zeta^8 + 54*zeta^7 + 6*zeta^6 - 
12*zeta^5 - 33*zeta^4 - 21*zeta^3 - 12*zeta^2 - 6*zeta + 33)*q^512 + (8*zeta^11 
- 16*zeta^10 - 8*zeta^4 - 8*zeta^3)*q^513 + (80*zeta^11 - 52*zeta^10 + 54*zeta^8
+ 4*zeta^7 - 54*zeta^6 + 108*zeta^5 + 28*zeta^4 - 80*zeta^3 + 108*zeta^2 + 
54*zeta - 52)*q^514 + (-28*zeta^11 + 32*zeta^10 - 12*zeta^8 + 40*zeta^7 + 
12*zeta^6 - 24*zeta^5 + 4*zeta^4 + 28*zeta^3 - 24*zeta^2 - 12*zeta + 32)*q^515 +
(-80*zeta^11 + 96*zeta^10 - 32*zeta^8 + 128*zeta^7 + 32*zeta^6 - 64*zeta^5 + 
16*zeta^4 + 80*zeta^3 - 64*zeta^2 - 32*zeta + 96)*q^516 + (8*zeta^11 + 8*zeta^8 
- 8*zeta^6 + 16*zeta^5 + 8*zeta^4 - 8*zeta^3 + 16*zeta^2 + 8*zeta - 8)*q^517 + 
(-48*zeta^11 + 56*zeta^10 - 20*zeta^8 - 56*zeta^7 + 20*zeta^6 - 40*zeta^5 + 
8*zeta^4 + 48*zeta^3 - 40*zeta^2 - 20*zeta - 8)*q^519 + (28*zeta^11 - 28*zeta^10
+ 14*zeta^8 - 56*zeta^7 - 14*zeta^6 + 28*zeta^5 - 28*zeta^3 + 28*zeta^2 + 
14*zeta - 42)*q^520 + (-30*zeta^11 - 4*zeta^10 - 32*zeta^8 - 72*zeta^7 + 
32*zeta^6 - 64*zeta^5 - 34*zeta^4 + 30*zeta^3 - 64*zeta^2 - 32*zeta - 4)*q^521 +
(-16*zeta^11 + 16*zeta^10 - 8*zeta^8 + 16*zeta^7 + 8*zeta^6 - 16*zeta^5 + 
16*zeta^3 - 16*zeta^2 - 8*zeta + 16)*q^522 + (32*zeta^11 - 24*zeta^10 + 
20*zeta^8 - 80*zeta^7 - 20*zeta^6 + 40*zeta^5 + 8*zeta^4 - 32*zeta^3 + 40*zeta^2
+ 20*zeta - 60)*q^523 + (28*zeta^11 - 56*zeta^10 + 56*zeta^7 - 28*zeta^4 - 
28*zeta^3 + 28)*q^524 + (-6*zeta^11 - 44*zeta^10 - 28*zeta^8 + 44*zeta^7 + 
28*zeta^6 - 56*zeta^5 - 50*zeta^4 + 6*zeta^3 - 56*zeta^2 - 28*zeta + 50)*q^526 +
(72*zeta^11 - 104*zeta^10 + 20*zeta^8 - 80*zeta^7 - 20*zeta^6 + 40*zeta^5 - 
32*zeta^4 - 72*zeta^3 + 40*zeta^2 + 20*zeta - 60)*q^527 + (12*zeta^11 + 
12*zeta^8 + 24*zeta^7 - 12*zeta^6 + 24*zeta^5 + 12*zeta^4 - 12*zeta^3 + 
24*zeta^2 + 12*zeta)*q^528 + (-51*zeta^11 + 64*zeta^10 - 19*zeta^8 + 90*zeta^7 +
19*zeta^6 - 38*zeta^5 + 13*zeta^4 + 51*zeta^3 - 38*zeta^2 - 19*zeta + 64)*q^529 
+ (-4*zeta^11 + 8*zeta^10 + 4*zeta^4 + 4*zeta^3)*q^530 + (-16*zeta^10 - 8*zeta^8
+ 16*zeta^7 + 8*zeta^6 - 16*zeta^5 - 16*zeta^4 - 16*zeta^2 - 8*zeta + 16)*q^531 
+ (22*zeta^11 - 4*zeta^10 + 20*zeta^8 + 4*zeta^7 - 20*zeta^6 + 40*zeta^5 + 
18*zeta^4 - 22*zeta^3 + 40*zeta^2 + 20*zeta - 18)*q^533 + (44*zeta^11 - 
72*zeta^10 + 8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 - 28*zeta^4 - 44*zeta^3
+ 16*zeta^2 + 8*zeta - 24)*q^534 + (-12*zeta^11 + 8*zeta^10 - 8*zeta^8 + 
8*zeta^6 - 16*zeta^5 - 4*zeta^4 + 12*zeta^3 - 16*zeta^2 - 8*zeta + 8)*q^535 + 
(-56*zeta^11 + 48*zeta^10 - 32*zeta^8 + 32*zeta^7 + 32*zeta^6 - 64*zeta^5 - 
8*zeta^4 + 56*zeta^3 - 64*zeta^2 - 32*zeta + 48)*q^536 + (-40*zeta^11 + 
24*zeta^10 - 28*zeta^8 + 112*zeta^7 + 28*zeta^6 - 56*zeta^5 - 16*zeta^4 + 
40*zeta^3 - 56*zeta^2 - 28*zeta + 84)*q^537 + (-2*zeta^11 + 32*zeta^10 + 
14*zeta^8 - 32*zeta^7 - 14*zeta^6 + 28*zeta^5 + 30*zeta^4 + 2*zeta^3 + 28*zeta^2
+ 14*zeta - 30)*q^538 + (16*zeta^11 - 8*zeta^10 + 12*zeta^8 + 8*zeta^7 - 
12*zeta^6 + 24*zeta^5 + 8*zeta^4 - 16*zeta^3 + 24*zeta^2 + 12*zeta - 8)*q^540 + 
(4*zeta^11 - 20*zeta^10 - 6*zeta^8 + 24*zeta^7 + 6*zeta^6 - 12*zeta^5 - 
16*zeta^4 - 4*zeta^3 - 12*zeta^2 - 6*zeta + 18)*q^541 + (-80*zeta^11 + 
56*zeta^10 - 52*zeta^8 + 8*zeta^7 + 52*zeta^6 - 104*zeta^5 - 24*zeta^4 + 
80*zeta^3 - 104*zeta^2 - 52*zeta + 56)*q^542 + (16*zeta^11 - 8*zeta^10 + 
12*zeta^8 + 8*zeta^7 - 12*zeta^6 + 24*zeta^5 + 8*zeta^4 - 16*zeta^3 + 24*zeta^2 
+ 12*zeta - 8)*q^543 + (-14*zeta^11 + 28*zeta^10 + 14*zeta^4 + 14*zeta^3)*q^544 
+ (-24*zeta^11 + 16*zeta^10 - 16*zeta^8 - 16*zeta^7 + 16*zeta^6 - 32*zeta^5 - 
8*zeta^4 + 24*zeta^3 - 32*zeta^2 - 16*zeta + 8)*q^545 + (-44*zeta^11 + 
40*zeta^10 - 24*zeta^8 - 40*zeta^7 + 24*zeta^6 - 48*zeta^5 - 4*zeta^4 + 
44*zeta^3 - 48*zeta^2 - 24*zeta + 4)*q^547 + (100*zeta^11 - 120*zeta^10 + 
40*zeta^8 - 160*zeta^7 - 40*zeta^6 + 80*zeta^5 - 20*zeta^4 - 100*zeta^3 + 
80*zeta^2 + 40*zeta - 120)*q^548 + (8*zeta^11 - 24*zeta^10 - 4*zeta^8 - 
56*zeta^7 + 4*zeta^6 - 8*zeta^5 - 16*zeta^4 - 8*zeta^3 - 8*zeta^2 - 4*zeta - 
24)*q^549 + (-38*zeta^11 + 24*zeta^10 - 26*zeta^8 - 4*zeta^7 + 26*zeta^6 - 
52*zeta^5 - 14*zeta^4 + 38*zeta^3 - 52*zeta^2 - 26*zeta + 24)*q^550 + 
(-16*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 - 16*zeta^4 - 
16*zeta^2 - 8*zeta + 24)*q^551 + (-36*zeta^11 - 8*zeta^10 - 40*zeta^8 + 8*zeta^7
+ 40*zeta^6 - 80*zeta^5 - 44*zeta^4 + 36*zeta^3 - 80*zeta^2 - 40*zeta + 
44)*q^552 + (2*zeta^11 + 36*zeta^10 + 20*zeta^8 - 36*zeta^7 - 20*zeta^6 + 
40*zeta^5 + 38*zeta^4 - 2*zeta^3 + 40*zeta^2 + 20*zeta - 38)*q^554 + 
(-16*zeta^11 - 16*zeta^8 + 64*zeta^7 + 16*zeta^6 - 32*zeta^5 - 16*zeta^4 + 
16*zeta^3 - 32*zeta^2 - 16*zeta + 48)*q^555 + (-76*zeta^11 + 80*zeta^10 - 
36*zeta^8 + 88*zeta^7 + 36*zeta^6 - 72*zeta^5 + 4*zeta^4 + 76*zeta^3 - 72*zeta^2
- 36*zeta + 80)*q^556 + (26*zeta^11 + 26*zeta^8 + 52*zeta^7 - 26*zeta^6 + 
52*zeta^5 + 26*zeta^4 - 26*zeta^3 + 52*zeta^2 + 26*zeta)*q^557 + (56*zeta^11 - 
80*zeta^10 + 16*zeta^8 - 64*zeta^7 - 16*zeta^6 + 32*zeta^5 - 24*zeta^4 - 
56*zeta^3 + 32*zeta^2 + 16*zeta - 48)*q^558 + (24*zeta^11 + 16*zeta^10 + 
32*zeta^8 - 16*zeta^7 - 32*zeta^6 + 64*zeta^5 + 40*zeta^4 - 24*zeta^3 + 
64*zeta^2 + 32*zeta - 40)*q^559 + (-16*zeta^11 - 16*zeta^10 - 24*zeta^8 + 
16*zeta^7 + 24*zeta^6 - 48*zeta^5 - 32*zeta^4 + 16*zeta^3 - 48*zeta^2 - 24*zeta 
+ 32)*q^561 + (-68*zeta^11 + 96*zeta^10 - 20*zeta^8 + 80*zeta^7 + 20*zeta^6 - 
40*zeta^5 + 28*zeta^4 + 68*zeta^3 - 40*zeta^2 - 20*zeta + 60)*q^562 + 
(-12*zeta^11 + 8*zeta^10 - 8*zeta^8 + 8*zeta^6 - 16*zeta^5 - 4*zeta^4 + 
12*zeta^3 - 16*zeta^2 - 8*zeta + 8)*q^563 + (-32*zeta^11 + 16*zeta^10 - 
24*zeta^8 - 16*zeta^7 + 24*zeta^6 - 48*zeta^5 - 16*zeta^4 + 32*zeta^3 - 
48*zeta^2 - 24*zeta + 16)*q^564 + (-12*zeta^11 + 32*zeta^10 + 4*zeta^8 - 
16*zeta^7 - 4*zeta^6 + 8*zeta^5 + 20*zeta^4 + 12*zeta^3 + 8*zeta^2 + 4*zeta - 
12)*q^565 + (24*zeta^10 + 12*zeta^8 - 24*zeta^7 - 12*zeta^6 + 24*zeta^5 + 
24*zeta^4 + 24*zeta^2 + 12*zeta - 24)*q^566 + (-30*zeta^11 - 44*zeta^10 - 
52*zeta^8 + 44*zeta^7 + 52*zeta^6 - 104*zeta^5 - 74*zeta^4 + 30*zeta^3 - 
104*zeta^2 - 52*zeta + 74)*q^568 + (4*zeta^11 + 8*zeta^10 + 8*zeta^8 - 32*zeta^7
- 8*zeta^6 + 16*zeta^5 + 12*zeta^4 - 4*zeta^3 + 16*zeta^2 + 8*zeta - 24)*q^569 +
(8*zeta^11 + 8*zeta^8 + 16*zeta^7 - 8*zeta^6 + 16*zeta^5 + 8*zeta^4 - 8*zeta^3 +
16*zeta^2 + 8*zeta)*q^570 + (44*zeta^11 - 16*zeta^10 + 36*zeta^8 + 40*zeta^7 - 
36*zeta^6 + 72*zeta^5 + 28*zeta^4 - 44*zeta^3 + 72*zeta^2 + 36*zeta - 16)*q^571 
+ (68*zeta^11 - 104*zeta^10 + 16*zeta^8 - 64*zeta^7 - 16*zeta^6 + 32*zeta^5 - 
36*zeta^4 - 68*zeta^3 + 32*zeta^2 + 16*zeta - 48)*q^572 + (36*zeta^11 - 
72*zeta^10 + 72*zeta^7 - 36*zeta^4 - 36*zeta^3 + 36)*q^573 + (-58*zeta^11 + 
68*zeta^10 - 24*zeta^8 - 68*zeta^7 + 24*zeta^6 - 48*zeta^5 + 10*zeta^4 + 
58*zeta^3 - 48*zeta^2 - 24*zeta - 10)*q^575 + (-36*zeta^11 + 44*zeta^10 - 
14*zeta^8 + 56*zeta^7 + 14*zeta^6 - 28*zeta^5 + 8*zeta^4 + 36*zeta^3 - 28*zeta^2
- 14*zeta + 42)*q^576 + (4*zeta^11 - 28*zeta^10 - 10*zeta^8 - 76*zeta^7 + 
10*zeta^6 - 20*zeta^5 - 24*zeta^4 - 4*zeta^3 - 20*zeta^2 - 10*zeta - 28)*q^577 +
(-97*zeta^11 + 68*zeta^10 - 63*zeta^8 + 10*zeta^7 + 63*zeta^6 - 126*zeta^5 - 
29*zeta^4 + 97*zeta^3 - 126*zeta^2 - 63*zeta + 68)*q^578 + (-56*zeta^11 + 
88*zeta^10 - 12*zeta^8 + 48*zeta^7 + 12*zeta^6 - 24*zeta^5 + 32*zeta^4 + 
56*zeta^3 - 24*zeta^2 - 12*zeta + 36)*q^579 + (52*zeta^11 - 40*zeta^10 + 
32*zeta^8 + 40*zeta^7 - 32*zeta^6 + 64*zeta^5 + 12*zeta^4 - 52*zeta^3 + 
64*zeta^2 + 32*zeta - 12)*q^580 + (-8*zeta^11 - 24*zeta^10 - 20*zeta^8 + 
24*zeta^7 + 20*zeta^6 - 40*zeta^5 - 32*zeta^4 + 8*zeta^3 - 40*zeta^2 - 20*zeta +
32)*q^582 + (-8*zeta^11 + 8*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 8*zeta^5
+ 8*zeta^3 - 8*zeta^2 - 4*zeta + 12)*q^583 + (70*zeta^11 - 68*zeta^10 + 
36*zeta^8 - 64*zeta^7 - 36*zeta^6 + 72*zeta^5 + 2*zeta^4 - 70*zeta^3 + 72*zeta^2
+ 36*zeta - 68)*q^584 + (4*zeta^11 - 16*zeta^10 - 4*zeta^8 - 40*zeta^7 + 
4*zeta^6 - 8*zeta^5 - 12*zeta^4 - 4*zeta^3 - 8*zeta^2 - 4*zeta - 16)*q^585 + 
(78*zeta^11 - 116*zeta^10 + 20*zeta^8 - 80*zeta^7 - 20*zeta^6 + 40*zeta^5 - 
38*zeta^4 - 78*zeta^3 + 40*zeta^2 + 20*zeta - 60)*q^586 + (-24*zeta^11 + 
40*zeta^10 - 4*zeta^8 - 40*zeta^7 + 4*zeta^6 - 8*zeta^5 + 16*zeta^4 + 24*zeta^3 
- 8*zeta^2 - 4*zeta - 16)*q^587 + (8*zeta^11 + 16*zeta^10 + 16*zeta^8 - 
16*zeta^7 - 16*zeta^6 + 32*zeta^5 + 24*zeta^4 - 8*zeta^3 + 32*zeta^2 + 16*zeta -
24)*q^589 + (-16*zeta^11 + 24*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 
8*zeta^5 + 8*zeta^4 + 16*zeta^3 - 8*zeta^2 - 4*zeta + 12)*q^590 + (-4*zeta^11 - 
4*zeta^8 - 8*zeta^7 + 4*zeta^6 - 8*zeta^5 - 4*zeta^4 + 4*zeta^3 - 8*zeta^2 - 
4*zeta)*q^591 + (-12*zeta^11 - 12*zeta^8 - 24*zeta^7 + 12*zeta^6 - 24*zeta^5 - 
12*zeta^4 + 12*zeta^3 - 24*zeta^2 - 12*zeta)*q^592 + (38*zeta^11 - 48*zeta^10 + 
14*zeta^8 - 56*zeta^7 - 14*zeta^6 + 28*zeta^5 - 10*zeta^4 - 38*zeta^3 + 
28*zeta^2 + 14*zeta - 42)*q^593 + (4*zeta^11 + 8*zeta^10 + 8*zeta^8 - 8*zeta^7 -
8*zeta^6 + 16*zeta^5 + 12*zeta^4 - 4*zeta^3 + 16*zeta^2 + 8*zeta - 12)*q^594 + 
(-34*zeta^11 + 52*zeta^10 - 8*zeta^8 - 52*zeta^7 + 8*zeta^6 - 16*zeta^5 + 
18*zeta^4 + 34*zeta^3 - 16*zeta^2 - 8*zeta - 18)*q^596 + (48*zeta^11 - 
32*zeta^10 + 32*zeta^8 - 128*zeta^7 - 32*zeta^6 + 64*zeta^5 + 16*zeta^4 - 
48*zeta^3 + 64*zeta^2 + 32*zeta - 96)*q^597 + (-84*zeta^11 + 56*zeta^10 - 
56*zeta^8 + 56*zeta^6 - 112*zeta^5 - 28*zeta^4 + 84*zeta^3 - 112*zeta^2 - 
56*zeta + 56)*q^598 + (-2*zeta^11 - 2*zeta^8 - 4*zeta^7 + 2*zeta^6 - 4*zeta^5 - 
2*zeta^4 + 2*zeta^3 - 4*zeta^2 - 2*zeta)*q^599 + (64*zeta^11 - 108*zeta^10 + 
10*zeta^8 - 40*zeta^7 - 10*zeta^6 + 20*zeta^5 - 44*zeta^4 - 64*zeta^3 + 
20*zeta^2 + 10*zeta - 30)*q^600 + (-18*zeta^11 + 16*zeta^10 - 10*zeta^8 - 
16*zeta^7 + 10*zeta^6 - 20*zeta^5 - 2*zeta^4 + 18*zeta^3 - 20*zeta^2 - 10*zeta +
2)*q^601 + (16*zeta^11 + 16*zeta^8 - 16*zeta^6 + 32*zeta^5 + 16*zeta^4 - 
16*zeta^3 + 32*zeta^2 + 16*zeta - 16)*q^603 + (-72*zeta^11 + 120*zeta^10 - 
12*zeta^8 + 48*zeta^7 + 12*zeta^6 - 24*zeta^5 + 48*zeta^4 + 72*zeta^3 - 
24*zeta^2 - 12*zeta + 36)*q^604 + (14*zeta^11 - 28*zeta^10 - 56*zeta^7 - 
14*zeta^4 - 14*zeta^3 - 28)*q^605 + (160*zeta^11 - 120*zeta^10 + 100*zeta^8 - 
40*zeta^7 - 100*zeta^6 + 200*zeta^5 + 40*zeta^4 - 160*zeta^3 + 200*zeta^2 + 
100*zeta - 120)*q^606 + (56*zeta^11 - 64*zeta^10 + 24*zeta^8 - 96*zeta^7 - 
24*zeta^6 + 48*zeta^5 - 8*zeta^4 - 56*zeta^3 + 48*zeta^2 + 24*zeta - 72)*q^607 +
(-16*zeta^11 + 8*zeta^10 - 12*zeta^8 - 8*zeta^7 + 12*zeta^6 - 24*zeta^5 - 
8*zeta^4 + 16*zeta^3 - 24*zeta^2 - 12*zeta + 8)*q^608 + O(q^609), (2*zeta^11 - 
2*zeta^10 + zeta^8 + 2*zeta^7 - zeta^6 + 2*zeta^5 - 2*zeta^3 + 2*zeta^2 + 
zeta)*q + (zeta^11 - 2*zeta^10 - zeta^4 - zeta^3)*q^2 + (2*zeta^11 - 4*zeta^10 -
8*zeta^7 - 2*zeta^4 - 2*zeta^3 - 4)*q^3 + (5*zeta^11 - 6*zeta^10 + 2*zeta^8 - 
8*zeta^7 - 2*zeta^6 + 4*zeta^5 - zeta^4 - 5*zeta^3 + 4*zeta^2 + 2*zeta - 6)*q^4 
+ (-2*zeta^11 - 2*zeta^10 - 3*zeta^8 + 12*zeta^7 + 3*zeta^6 - 6*zeta^5 - 
4*zeta^4 + 2*zeta^3 - 6*zeta^2 - 3*zeta + 9)*q^5 + (-2*zeta^11 - 2*zeta^8 + 
2*zeta^6 - 4*zeta^5 - 2*zeta^4 + 2*zeta^3 - 4*zeta^2 - 2*zeta + 2)*q^6 + 
(-3*zeta^11 + 4*zeta^10 - zeta^8 - 4*zeta^7 + zeta^6 - 2*zeta^5 + zeta^4 + 
3*zeta^3 - 2*zeta^2 - zeta - 1)*q^8 + (2*zeta^11 + 2*zeta^8 - 8*zeta^7 - 
2*zeta^6 + 4*zeta^5 + 2*zeta^4 - 2*zeta^3 + 4*zeta^2 + 2*zeta - 6)*q^9 + 
(-3*zeta^11 + 4*zeta^10 - zeta^8 + 6*zeta^7 + zeta^6 - 2*zeta^5 + zeta^4 + 
3*zeta^3 - 2*zeta^2 - zeta + 4)*q^10 + (2*zeta^11 - 4*zeta^10 - 8*zeta^7 - 
2*zeta^4 - 2*zeta^3 - 4)*q^11 + (2*zeta^11 - 8*zeta^10 - 2*zeta^8 + 8*zeta^7 + 
2*zeta^6 - 4*zeta^5 - 6*zeta^4 - 2*zeta^3 - 4*zeta^2 - 2*zeta + 6)*q^12 + 
(5*zeta^11 - 6*zeta^10 + 2*zeta^8 + 6*zeta^7 - 2*zeta^6 + 4*zeta^5 - zeta^4 - 
5*zeta^3 + 4*zeta^2 + 2*zeta + 1)*q^13 + (-14*zeta^11 + 12*zeta^10 - 8*zeta^8 - 
12*zeta^7 + 8*zeta^6 - 16*zeta^5 - 2*zeta^4 + 14*zeta^3 - 16*zeta^2 - 8*zeta + 
2)*q^15 + (-3*zeta^11 - 3*zeta^8 + 12*zeta^7 + 3*zeta^6 - 6*zeta^5 - 3*zeta^4 + 
3*zeta^3 - 6*zeta^2 - 3*zeta + 9)*q^16 + (7*zeta^11 - 8*zeta^10 + 3*zeta^8 - 
10*zeta^7 - 3*zeta^6 + 6*zeta^5 - zeta^4 - 7*zeta^3 + 6*zeta^2 + 3*zeta - 
8)*q^17 + (4*zeta^11 - 4*zeta^10 + 2*zeta^8 - 4*zeta^7 - 2*zeta^6 + 4*zeta^5 - 
4*zeta^3 + 4*zeta^2 + 2*zeta - 4)*q^18 + (4*zeta^10 + 2*zeta^8 - 8*zeta^7 - 
2*zeta^6 + 4*zeta^5 + 4*zeta^4 + 4*zeta^2 + 2*zeta - 6)*q^19 + (-13*zeta^11 + 
10*zeta^10 - 8*zeta^8 - 10*zeta^7 + 8*zeta^6 - 16*zeta^5 - 3*zeta^4 + 13*zeta^3 
- 16*zeta^2 - 8*zeta + 3)*q^20 + (-2*zeta^11 - 2*zeta^8 + 2*zeta^6 - 4*zeta^5 - 
2*zeta^4 + 2*zeta^3 - 4*zeta^2 - 2*zeta + 2)*q^22 + (2*zeta^11 + 8*zeta^10 + 
6*zeta^8 - 24*zeta^7 - 6*zeta^6 + 12*zeta^5 + 10*zeta^4 - 2*zeta^3 + 12*zeta^2 +
6*zeta - 18)*q^23 + (4*zeta^10 + 2*zeta^8 + 12*zeta^7 - 2*zeta^6 + 4*zeta^5 + 
4*zeta^4 + 4*zeta^2 + 2*zeta + 4)*q^24 + (-13*zeta^11 + 18*zeta^10 - 4*zeta^8 + 
28*zeta^7 + 4*zeta^6 - 8*zeta^5 + 5*zeta^4 + 13*zeta^3 - 8*zeta^2 - 4*zeta + 
18)*q^25 + (6*zeta^11 - 10*zeta^10 + zeta^8 - 4*zeta^7 - zeta^6 + 2*zeta^5 - 
4*zeta^4 - 6*zeta^3 + 2*zeta^2 + zeta - 3)*q^26 + (-4*zeta^11 + 4*zeta^10 - 
2*zeta^8 - 4*zeta^7 + 2*zeta^6 - 4*zeta^5 + 4*zeta^3 - 4*zeta^2 - 2*zeta)*q^27 +
(-14*zeta^11 + 12*zeta^10 - 8*zeta^8 - 12*zeta^7 + 8*zeta^6 - 16*zeta^5 - 
2*zeta^4 + 14*zeta^3 - 16*zeta^2 - 8*zeta + 2)*q^29 + (4*zeta^10 + 2*zeta^8 - 
8*zeta^7 - 2*zeta^6 + 4*zeta^5 + 4*zeta^4 + 4*zeta^2 + 2*zeta - 6)*q^30 + 
(-2*zeta^11 - 2*zeta^8 - 4*zeta^7 + 2*zeta^6 - 4*zeta^5 - 2*zeta^4 + 2*zeta^3 - 
4*zeta^2 - 2*zeta)*q^31 + (-6*zeta^11 + 10*zeta^10 - zeta^8 + 18*zeta^7 + zeta^6
- 2*zeta^5 + 4*zeta^4 + 6*zeta^3 - 2*zeta^2 - zeta + 10)*q^32 + (-4*zeta^11 - 
4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 8*zeta^5 - 4*zeta^4 + 4*zeta^3 - 8*zeta^2 - 
4*zeta + 12)*q^33 + (-zeta^11 + 6*zeta^10 + 2*zeta^8 - 6*zeta^7 - 2*zeta^6 + 
4*zeta^5 + 5*zeta^4 + zeta^3 + 4*zeta^2 + 2*zeta - 5)*q^34 + (8*zeta^11 - 
4*zeta^10 + 6*zeta^8 + 4*zeta^7 - 6*zeta^6 + 12*zeta^5 + 4*zeta^4 - 8*zeta^3 + 
12*zeta^2 + 6*zeta - 4)*q^36 + (4*zeta^11 + 4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 
8*zeta^5 + 4*zeta^4 - 4*zeta^3 + 8*zeta^2 + 4*zeta - 12)*q^37 + (-2*zeta^11 - 
2*zeta^8 - 4*zeta^7 + 2*zeta^6 - 4*zeta^5 - 2*zeta^4 + 2*zeta^3 - 4*zeta^2 - 
2*zeta)*q^38 + (2*zeta^11 - 8*zeta^10 - 2*zeta^8 - 20*zeta^7 + 2*zeta^6 - 
4*zeta^5 - 6*zeta^4 - 2*zeta^3 - 4*zeta^2 - 2*zeta - 8)*q^39 + (4*zeta^11 + 
2*zeta^10 + 5*zeta^8 - 20*zeta^7 - 5*zeta^6 + 10*zeta^5 + 6*zeta^4 - 4*zeta^3 + 
10*zeta^2 + 5*zeta - 15)*q^40 + (13*zeta^11 - 10*zeta^10 + 8*zeta^8 + 10*zeta^7 
- 8*zeta^6 + 16*zeta^5 + 3*zeta^4 - 13*zeta^3 + 16*zeta^2 + 8*zeta - 3)*q^41 + 
(12*zeta^11 - 8*zeta^10 + 8*zeta^8 + 8*zeta^7 - 8*zeta^6 + 16*zeta^5 + 4*zeta^4 
- 12*zeta^3 + 16*zeta^2 + 8*zeta - 4)*q^43 + (2*zeta^11 - 8*zeta^10 - 2*zeta^8 +
8*zeta^7 + 2*zeta^6 - 4*zeta^5 - 6*zeta^4 - 2*zeta^3 - 4*zeta^2 - 2*zeta + 
6)*q^44 + (10*zeta^11 - 16*zeta^10 + 2*zeta^8 - 28*zeta^7 - 2*zeta^6 + 4*zeta^5 
- 6*zeta^4 - 10*zeta^3 + 4*zeta^2 + 2*zeta - 16)*q^45 + (-4*zeta^10 - 2*zeta^8 -
12*zeta^7 + 2*zeta^6 - 4*zeta^5 - 4*zeta^4 - 4*zeta^2 - 2*zeta - 4)*q^46 + 
(4*zeta^10 + 2*zeta^8 - 8*zeta^7 - 2*zeta^6 + 4*zeta^5 + 4*zeta^4 + 4*zeta^2 + 
2*zeta - 6)*q^47 + (-12*zeta^11 + 12*zeta^10 - 6*zeta^8 - 12*zeta^7 + 6*zeta^6 -
12*zeta^5 + 12*zeta^3 - 12*zeta^2 - 6*zeta)*q^48 + (5*zeta^11 - 8*zeta^10 + 
zeta^8 + 8*zeta^7 - zeta^6 + 2*zeta^5 - 3*zeta^4 - 5*zeta^3 + 2*zeta^2 + zeta + 
3)*q^50 + (4*zeta^11 - 12*zeta^10 - 2*zeta^8 + 8*zeta^7 + 2*zeta^6 - 4*zeta^5 - 
8*zeta^4 - 4*zeta^3 - 4*zeta^2 - 2*zeta + 6)*q^51 + (19*zeta^11 - 20*zeta^10 + 
9*zeta^8 - 22*zeta^7 - 9*zeta^6 + 18*zeta^5 - zeta^4 - 19*zeta^3 + 18*zeta^2 + 
9*zeta - 20)*q^52 + (2*zeta^11 - 4*zeta^10 - 8*zeta^7 - 2*zeta^4 - 2*zeta^3 - 
4)*q^53 + (-2*zeta^11 + 4*zeta^10 + 2*zeta^4 + 2*zeta^3)*q^54 + (-14*zeta^11 + 
12*zeta^10 - 8*zeta^8 - 12*zeta^7 + 8*zeta^6 - 16*zeta^5 - 2*zeta^4 + 14*zeta^3 
- 16*zeta^2 - 8*zeta + 2)*q^55 + (12*zeta^11 - 8*zeta^10 + 8*zeta^8 + 8*zeta^7 -
8*zeta^6 + 16*zeta^5 + 4*zeta^4 - 12*zeta^3 + 16*zeta^2 + 8*zeta - 4)*q^57 + 
(4*zeta^10 + 2*zeta^8 - 8*zeta^7 - 2*zeta^6 + 4*zeta^5 + 4*zeta^4 + 4*zeta^2 + 
2*zeta - 6)*q^58 + (-2*zeta^11 - 2*zeta^8 - 4*zeta^7 + 2*zeta^6 - 4*zeta^5 - 
2*zeta^4 + 2*zeta^3 - 4*zeta^2 - 2*zeta)*q^59 + (-22*zeta^11 + 32*zeta^10 - 
6*zeta^8 + 52*zeta^7 + 6*zeta^6 - 12*zeta^5 + 10*zeta^4 + 22*zeta^3 - 12*zeta^2 
- 6*zeta + 32)*q^60 + (-8*zeta^11 - 6*zeta^10 - 11*zeta^8 + 44*zeta^7 + 
11*zeta^6 - 22*zeta^5 - 14*zeta^4 + 8*zeta^3 - 22*zeta^2 - 11*zeta + 33)*q^61 + 
(-2*zeta^11 - 4*zeta^10 - 4*zeta^8 + 4*zeta^7 + 4*zeta^6 - 8*zeta^5 - 6*zeta^4 +
2*zeta^3 - 8*zeta^2 - 4*zeta + 6)*q^62 + (-8*zeta^11 + 10*zeta^10 - 3*zeta^8 - 
10*zeta^7 + 3*zeta^6 - 6*zeta^5 + 2*zeta^4 + 8*zeta^3 - 6*zeta^2 - 3*zeta - 
2)*q^64 + (-6*zeta^11 - 4*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 
- 10*zeta^4 + 6*zeta^3 - 16*zeta^2 - 8*zeta + 24)*q^65 + (-8*zeta^11 + 8*zeta^10
- 4*zeta^8 + 8*zeta^7 + 4*zeta^6 - 8*zeta^5 + 8*zeta^3 - 8*zeta^2 - 4*zeta + 
8)*q^66 + (12*zeta^11 - 16*zeta^10 + 4*zeta^8 - 24*zeta^7 - 4*zeta^6 + 8*zeta^5 
- 4*zeta^4 - 12*zeta^3 + 8*zeta^2 + 4*zeta - 16)*q^67 + (-14*zeta^11 + 
14*zeta^10 - 7*zeta^8 + 28*zeta^7 + 7*zeta^6 - 14*zeta^5 + 14*zeta^3 - 14*zeta^2
- 7*zeta + 21)*q^68 + (32*zeta^11 - 24*zeta^10 + 20*zeta^8 + 24*zeta^7 - 
20*zeta^6 + 40*zeta^5 + 8*zeta^4 - 32*zeta^3 + 40*zeta^2 + 20*zeta - 8)*q^69 + 
(20*zeta^11 - 12*zeta^10 + 14*zeta^8 + 12*zeta^7 - 14*zeta^6 + 28*zeta^5 + 
8*zeta^4 - 20*zeta^3 + 28*zeta^2 + 14*zeta - 8)*q^71 + (-6*zeta^11 + 4*zeta^10 -
4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 8*zeta^5 - 2*zeta^4 + 6*zeta^3 - 8*zeta^2 - 
4*zeta + 12)*q^72 + (-25*zeta^11 + 36*zeta^10 - 7*zeta^8 + 58*zeta^7 + 7*zeta^6 
- 14*zeta^5 + 11*zeta^4 + 25*zeta^3 - 14*zeta^2 - 7*zeta + 36)*q^73 + (8*zeta^11
- 8*zeta^10 + 4*zeta^8 - 8*zeta^7 - 4*zeta^6 + 8*zeta^5 - 8*zeta^3 + 8*zeta^2 + 
4*zeta - 8)*q^74 + (2*zeta^11 + 16*zeta^10 + 10*zeta^8 - 40*zeta^7 - 10*zeta^6 +
20*zeta^5 + 18*zeta^4 - 2*zeta^3 + 20*zeta^2 + 10*zeta - 30)*q^75 + (10*zeta^11 
- 12*zeta^10 + 4*zeta^8 + 12*zeta^7 - 4*zeta^6 + 8*zeta^5 - 2*zeta^4 - 10*zeta^3
+ 8*zeta^2 + 4*zeta + 2)*q^76 + (-6*zeta^11 - 4*zeta^10 - 8*zeta^8 + 4*zeta^7 + 
8*zeta^6 - 16*zeta^5 - 10*zeta^4 + 6*zeta^3 - 16*zeta^2 - 8*zeta + 10)*q^78 + 
(-8*zeta^11 - 8*zeta^10 - 12*zeta^8 + 48*zeta^7 + 12*zeta^6 - 24*zeta^5 - 
16*zeta^4 + 8*zeta^3 - 24*zeta^2 - 12*zeta + 36)*q^79 + (-15*zeta^11 + 
24*zeta^10 - 3*zeta^8 + 42*zeta^7 + 3*zeta^6 - 6*zeta^5 + 9*zeta^4 + 15*zeta^3 -
6*zeta^2 - 3*zeta + 24)*q^80 + (2*zeta^11 - 4*zeta^10 - 8*zeta^7 - 2*zeta^4 - 
2*zeta^3 - 4)*q^81 + (-4*zeta^11 + 2*zeta^10 - 3*zeta^8 + 12*zeta^7 + 3*zeta^6 -
6*zeta^5 - 2*zeta^4 + 4*zeta^3 - 6*zeta^2 - 3*zeta + 9)*q^82 + (16*zeta^11 - 
8*zeta^10 + 12*zeta^8 + 8*zeta^7 - 12*zeta^6 + 24*zeta^5 + 8*zeta^4 - 16*zeta^3 
+ 24*zeta^2 + 12*zeta - 8)*q^83 + (-16*zeta^11 + 12*zeta^10 - 10*zeta^8 - 
12*zeta^7 + 10*zeta^6 - 20*zeta^5 - 4*zeta^4 + 16*zeta^3 - 20*zeta^2 - 10*zeta +
4)*q^85 + (-8*zeta^11 + 8*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 8*zeta^5 +
8*zeta^3 - 8*zeta^2 - 4*zeta + 12)*q^86 + (-20*zeta^11 + 32*zeta^10 - 4*zeta^8 +
56*zeta^7 + 4*zeta^6 - 8*zeta^5 + 12*zeta^4 + 20*zeta^3 - 8*zeta^2 - 4*zeta + 
32)*q^87 + (4*zeta^10 + 2*zeta^8 + 12*zeta^7 - 2*zeta^6 + 4*zeta^5 + 4*zeta^4 + 
4*zeta^2 + 2*zeta + 4)*q^88 + (10*zeta^11 + 6*zeta^10 + 13*zeta^8 - 52*zeta^7 - 
13*zeta^6 + 26*zeta^5 + 16*zeta^4 - 10*zeta^3 + 26*zeta^2 + 13*zeta - 39)*q^89 +
(-6*zeta^11 + 4*zeta^10 - 4*zeta^8 - 4*zeta^7 + 4*zeta^6 - 8*zeta^5 - 2*zeta^4 +
6*zeta^3 - 8*zeta^2 - 4*zeta + 2)*q^90 + (28*zeta^11 - 28*zeta^10 + 14*zeta^8 + 
28*zeta^7 - 14*zeta^6 + 28*zeta^5 - 28*zeta^3 + 28*zeta^2 + 14*zeta)*q^92 + 
(-8*zeta^11 + 8*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 8*zeta^5 + 8*zeta^3 
- 8*zeta^2 - 4*zeta + 12)*q^93 + (-2*zeta^11 - 2*zeta^8 - 4*zeta^7 + 2*zeta^6 - 
4*zeta^5 - 2*zeta^4 + 2*zeta^3 - 4*zeta^2 - 2*zeta)*q^94 + (16*zeta^11 - 
24*zeta^10 + 4*zeta^8 - 40*zeta^7 - 4*zeta^6 + 8*zeta^5 - 8*zeta^4 - 16*zeta^3 +
8*zeta^2 + 4*zeta - 24)*q^95 + (6*zeta^11 + 4*zeta^10 + 8*zeta^8 - 32*zeta^7 - 
8*zeta^6 + 16*zeta^5 + 10*zeta^4 - 6*zeta^3 + 16*zeta^2 + 8*zeta - 24)*q^96 + 
(5*zeta^11 - 6*zeta^10 + 2*zeta^8 + 6*zeta^7 - 2*zeta^6 + 4*zeta^5 - zeta^4 - 
5*zeta^3 + 4*zeta^2 + 2*zeta + 1)*q^97 + (8*zeta^11 - 8*zeta^10 + 4*zeta^8 + 
8*zeta^7 - 4*zeta^6 + 8*zeta^5 - 8*zeta^3 + 8*zeta^2 + 4*zeta)*q^99 + 
(15*zeta^11 - 4*zeta^10 + 13*zeta^8 - 52*zeta^7 - 13*zeta^6 + 26*zeta^5 + 
11*zeta^4 - 15*zeta^3 + 26*zeta^2 + 13*zeta - 39)*q^100 + (5*zeta^11 + 5*zeta^8 
+ 10*zeta^7 - 5*zeta^6 + 10*zeta^5 + 5*zeta^4 - 5*zeta^3 + 10*zeta^2 + 
5*zeta)*q^101 + (14*zeta^11 - 8*zeta^10 + 10*zeta^8 + 4*zeta^7 - 10*zeta^6 + 
20*zeta^5 + 6*zeta^4 - 14*zeta^3 + 20*zeta^2 + 10*zeta - 8)*q^102 + (4*zeta^11 -
12*zeta^10 - 2*zeta^8 + 8*zeta^7 + 2*zeta^6 - 4*zeta^5 - 8*zeta^4 - 4*zeta^3 - 
4*zeta^2 - 2*zeta + 6)*q^103 + (-7*zeta^11 + 14*zeta^10 - 14*zeta^7 + 7*zeta^4 +
7*zeta^3 - 7)*q^104 + (-2*zeta^11 - 2*zeta^8 + 2*zeta^6 - 4*zeta^5 - 2*zeta^4 + 
2*zeta^3 - 4*zeta^2 - 2*zeta + 2)*q^106 + (6*zeta^11 - 8*zeta^10 + 2*zeta^8 - 
8*zeta^7 - 2*zeta^6 + 4*zeta^5 - 2*zeta^4 - 6*zeta^3 + 4*zeta^2 + 2*zeta - 
6)*q^107 + (-10*zeta^11 + 12*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 
8*zeta^5 + 2*zeta^4 + 10*zeta^3 - 8*zeta^2 - 4*zeta + 12)*q^108 + (12*zeta^11 - 
16*zeta^10 + 4*zeta^8 - 24*zeta^7 - 4*zeta^6 + 8*zeta^5 - 4*zeta^4 - 12*zeta^3 +
8*zeta^2 + 4*zeta - 16)*q^109 + (4*zeta^10 + 2*zeta^8 - 8*zeta^7 - 2*zeta^6 + 
4*zeta^5 + 4*zeta^4 + 4*zeta^2 + 2*zeta - 6)*q^110 + (16*zeta^11 - 16*zeta^10 + 
8*zeta^8 + 16*zeta^7 - 8*zeta^6 + 16*zeta^5 - 16*zeta^3 + 16*zeta^2 + 
8*zeta)*q^111 + (-12*zeta^11 + 4*zeta^10 - 10*zeta^8 - 4*zeta^7 + 10*zeta^6 - 
20*zeta^5 - 8*zeta^4 + 12*zeta^3 - 20*zeta^2 - 10*zeta + 8)*q^113 + (-8*zeta^11 
+ 8*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 8*zeta^5 + 8*zeta^3 - 8*zeta^2 -
4*zeta + 12)*q^114 + (42*zeta^11 - 64*zeta^10 + 10*zeta^8 - 108*zeta^7 - 
10*zeta^6 + 20*zeta^5 - 22*zeta^4 - 42*zeta^3 + 20*zeta^2 + 10*zeta - 64)*q^115 
+ (-22*zeta^11 + 32*zeta^10 - 6*zeta^8 + 52*zeta^7 + 6*zeta^6 - 12*zeta^5 + 
10*zeta^4 + 22*zeta^3 - 12*zeta^2 - 6*zeta + 32)*q^116 + (8*zeta^11 - 4*zeta^10 
+ 6*zeta^8 - 24*zeta^7 - 6*zeta^6 + 12*zeta^5 + 4*zeta^4 - 8*zeta^3 + 12*zeta^2 
+ 6*zeta - 18)*q^117 + (-2*zeta^11 - 4*zeta^10 - 4*zeta^8 + 4*zeta^7 + 4*zeta^6 
- 8*zeta^5 - 6*zeta^4 + 2*zeta^3 - 8*zeta^2 - 4*zeta + 6)*q^118 + (22*zeta^11 - 
20*zeta^10 + 12*zeta^8 + 20*zeta^7 - 12*zeta^6 + 24*zeta^5 + 2*zeta^4 - 
22*zeta^3 + 24*zeta^2 + 12*zeta - 2)*q^120 + (7*zeta^11 + 7*zeta^8 - 28*zeta^7 -
7*zeta^6 + 14*zeta^5 + 7*zeta^4 - 7*zeta^3 + 14*zeta^2 + 7*zeta - 21)*q^121 + 
(-13*zeta^11 + 16*zeta^10 - 5*zeta^8 + 22*zeta^7 + 5*zeta^6 - 10*zeta^5 + 
3*zeta^4 + 13*zeta^3 - 10*zeta^2 - 5*zeta + 16)*q^122 + (22*zeta^11 - 32*zeta^10
+ 6*zeta^8 - 52*zeta^7 - 6*zeta^6 + 12*zeta^5 - 10*zeta^4 - 22*zeta^3 + 
12*zeta^2 + 6*zeta - 32)*q^123 + (12*zeta^11 - 20*zeta^10 + 2*zeta^8 - 8*zeta^7 
- 2*zeta^6 + 4*zeta^5 - 8*zeta^4 - 12*zeta^3 + 4*zeta^2 + 2*zeta - 6)*q^124 + 
(12*zeta^11 - 8*zeta^10 + 8*zeta^8 + 8*zeta^7 - 8*zeta^6 + 16*zeta^5 + 4*zeta^4 
- 12*zeta^3 + 16*zeta^2 + 8*zeta - 4)*q^125 + (-4*zeta^11 - 4*zeta^8 + 4*zeta^6 
- 8*zeta^5 - 4*zeta^4 + 4*zeta^3 - 8*zeta^2 - 4*zeta + 4)*q^127 + (-5*zeta^11 + 
22*zeta^10 + 6*zeta^8 - 24*zeta^7 - 6*zeta^6 + 12*zeta^5 + 17*zeta^4 + 5*zeta^3 
+ 12*zeta^2 + 6*zeta - 18)*q^128 + (24*zeta^11 - 32*zeta^10 + 8*zeta^8 - 
48*zeta^7 - 8*zeta^6 + 16*zeta^5 - 8*zeta^4 - 24*zeta^3 + 16*zeta^2 + 8*zeta - 
32)*q^129 + (-10*zeta^11 + 12*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 
8*zeta^5 + 2*zeta^4 + 10*zeta^3 - 8*zeta^2 - 4*zeta + 12)*q^130 + (4*zeta^11 + 
16*zeta^10 + 12*zeta^8 - 48*zeta^7 - 12*zeta^6 + 24*zeta^5 + 20*zeta^4 - 
4*zeta^3 + 24*zeta^2 + 12*zeta - 36)*q^131 + (-16*zeta^11 + 8*zeta^10 - 
12*zeta^8 - 8*zeta^7 + 12*zeta^6 - 24*zeta^5 - 8*zeta^4 + 16*zeta^3 - 24*zeta^2 
- 12*zeta + 8)*q^132 + (-4*zeta^11 + 8*zeta^10 - 8*zeta^7 + 4*zeta^4 + 4*zeta^3 
- 4)*q^134 + (4*zeta^11 + 4*zeta^10 + 6*zeta^8 - 24*zeta^7 - 6*zeta^6 + 
12*zeta^5 + 8*zeta^4 - 4*zeta^3 + 12*zeta^2 + 6*zeta - 18)*q^135 + (-21*zeta^11 
+ 20*zeta^10 - 11*zeta^8 + 18*zeta^7 + 11*zeta^6 - 22*zeta^5 - zeta^4 + 
21*zeta^3 - 22*zeta^2 - 11*zeta + 20)*q^136 + (-30*zeta^11 + 40*zeta^10 - 
10*zeta^8 + 60*zeta^7 + 10*zeta^6 - 20*zeta^5 + 10*zeta^4 + 30*zeta^3 - 
20*zeta^2 - 10*zeta + 40)*q^137 + (-12*zeta^11 + 8*zeta^10 - 8*zeta^8 + 
32*zeta^7 + 8*zeta^6 - 16*zeta^5 - 4*zeta^4 + 12*zeta^3 - 16*zeta^2 - 8*zeta + 
24)*q^138 + (-36*zeta^11 + 32*zeta^10 - 20*zeta^8 - 32*zeta^7 + 20*zeta^6 - 
40*zeta^5 - 4*zeta^4 + 36*zeta^3 - 40*zeta^2 - 20*zeta + 4)*q^139 + (12*zeta^11 
- 8*zeta^10 + 8*zeta^8 + 8*zeta^7 - 8*zeta^6 + 16*zeta^5 + 4*zeta^4 - 12*zeta^3 
+ 16*zeta^2 + 8*zeta - 4)*q^141 + (-18*zeta^11 + 20*zeta^10 - 8*zeta^8 + 
32*zeta^7 + 8*zeta^6 - 16*zeta^5 + 2*zeta^4 + 18*zeta^3 - 16*zeta^2 - 8*zeta + 
24)*q^142 + (2*zeta^11 - 8*zeta^10 - 2*zeta^8 - 20*zeta^7 + 2*zeta^6 - 4*zeta^5 
- 6*zeta^4 - 2*zeta^3 - 4*zeta^2 - 2*zeta - 8)*q^143 + (6*zeta^11 - 12*zeta^10 -
24*zeta^7 - 6*zeta^4 - 6*zeta^3 - 12)*q^144 + (12*zeta^11 + 16*zeta^10 + 
20*zeta^8 - 80*zeta^7 - 20*zeta^6 + 40*zeta^5 + 28*zeta^4 - 12*zeta^3 + 
40*zeta^2 + 20*zeta - 60)*q^145 + (11*zeta^11 - 14*zeta^10 + 4*zeta^8 + 
14*zeta^7 - 4*zeta^6 + 8*zeta^5 - 3*zeta^4 - 11*zeta^3 + 8*zeta^2 + 4*zeta + 
3)*q^146 + (16*zeta^11 - 8*zeta^10 + 12*zeta^8 + 8*zeta^7 - 12*zeta^6 + 
24*zeta^5 + 8*zeta^4 - 16*zeta^3 + 24*zeta^2 + 12*zeta - 8)*q^148 + (-6*zeta^11 
- 16*zeta^10 - 14*zeta^8 + 56*zeta^7 + 14*zeta^6 - 28*zeta^5 - 22*zeta^4 + 
6*zeta^3 - 28*zeta^2 - 14*zeta + 42)*q^149 + (-4*zeta^11 - 4*zeta^10 - 6*zeta^8 
- 20*zeta^7 + 6*zeta^6 - 12*zeta^5 - 8*zeta^4 + 4*zeta^3 - 12*zeta^2 - 6*zeta - 
4)*q^150 + (-12*zeta^11 + 24*zeta^10 + 48*zeta^7 + 12*zeta^4 + 12*zeta^3 + 
24)*q^151 + (4*zeta^11 - 12*zeta^10 - 2*zeta^8 + 8*zeta^7 + 2*zeta^6 - 4*zeta^5 
- 8*zeta^4 - 4*zeta^3 - 4*zeta^2 - 2*zeta + 6)*q^152 + (10*zeta^11 - 4*zeta^10 +
8*zeta^8 + 4*zeta^7 - 8*zeta^6 + 16*zeta^5 + 6*zeta^4 - 10*zeta^3 + 16*zeta^2 + 
8*zeta - 6)*q^153 + (-8*zeta^11 + 8*zeta^10 - 4*zeta^8 - 8*zeta^7 + 4*zeta^6 - 
8*zeta^5 + 8*zeta^3 - 8*zeta^2 - 4*zeta)*q^155 + (16*zeta^11 - 36*zeta^10 - 
2*zeta^8 + 8*zeta^7 + 2*zeta^6 - 4*zeta^5 - 20*zeta^4 - 16*zeta^3 - 4*zeta^2 - 
2*zeta + 6)*q^156 + (-7*zeta^11 + 20*zeta^10 + 3*zeta^8 + 46*zeta^7 - 3*zeta^6 +
6*zeta^5 + 13*zeta^4 + 7*zeta^3 + 6*zeta^2 + 3*zeta + 20)*q^157 + (-12*zeta^11 +
16*zeta^10 - 4*zeta^8 + 24*zeta^7 + 4*zeta^6 - 8*zeta^5 + 4*zeta^4 + 12*zeta^3 -
8*zeta^2 - 4*zeta + 16)*q^158 + (-4*zeta^11 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 
8*zeta^5 - 4*zeta^4 + 4*zeta^3 - 8*zeta^2 - 4*zeta + 12)*q^159 + (31*zeta^11 - 
26*zeta^10 + 18*zeta^8 + 26*zeta^7 - 18*zeta^6 + 36*zeta^5 + 5*zeta^4 - 
31*zeta^3 + 36*zeta^2 + 18*zeta - 5)*q^160 + (-2*zeta^11 - 2*zeta^8 + 2*zeta^6 -
4*zeta^5 - 2*zeta^4 + 2*zeta^3 - 4*zeta^2 - 2*zeta + 2)*q^162 + (16*zeta^10 + 
8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 + 16*zeta^4 + 16*zeta^2 + 8*zeta - 
24)*q^163 + (13*zeta^11 - 24*zeta^10 + zeta^8 - 46*zeta^7 - zeta^6 + 2*zeta^5 - 
11*zeta^4 - 13*zeta^3 + 2*zeta^2 + zeta - 24)*q^164 + (-20*zeta^11 + 32*zeta^10 
- 4*zeta^8 + 56*zeta^7 + 4*zeta^6 - 8*zeta^5 + 12*zeta^4 + 20*zeta^3 - 8*zeta^2 
- 4*zeta + 32)*q^165 + (-20*zeta^11 + 24*zeta^10 - 8*zeta^8 + 32*zeta^7 + 
8*zeta^6 - 16*zeta^5 + 4*zeta^4 + 20*zeta^3 - 16*zeta^2 - 8*zeta + 24)*q^166 + 
(-42*zeta^11 + 28*zeta^10 - 28*zeta^8 - 28*zeta^7 + 28*zeta^6 - 56*zeta^5 - 
14*zeta^4 + 42*zeta^3 - 56*zeta^2 - 28*zeta + 14)*q^167 + (-14*zeta^11 + 
6*zeta^10 - 11*zeta^8 - 6*zeta^7 + 11*zeta^6 - 22*zeta^5 - 8*zeta^4 + 14*zeta^3 
- 22*zeta^2 - 11*zeta + 8)*q^169 + (6*zeta^11 - 4*zeta^10 + 4*zeta^8 - 16*zeta^7
- 4*zeta^6 + 8*zeta^5 + 2*zeta^4 - 6*zeta^3 + 8*zeta^2 + 4*zeta - 12)*q^170 + 
(-12*zeta^11 + 16*zeta^10 - 4*zeta^8 + 24*zeta^7 + 4*zeta^6 - 8*zeta^5 + 
4*zeta^4 + 12*zeta^3 - 8*zeta^2 - 4*zeta + 16)*q^171 + (4*zeta^11 - 16*zeta^10 -
4*zeta^8 - 40*zeta^7 + 4*zeta^6 - 8*zeta^5 - 12*zeta^4 - 4*zeta^3 - 8*zeta^2 - 
4*zeta - 16)*q^172 + (-14*zeta^11 - 10*zeta^10 - 19*zeta^8 + 76*zeta^7 + 
19*zeta^6 - 38*zeta^5 - 24*zeta^4 + 14*zeta^3 - 38*zeta^2 - 19*zeta + 57)*q^173 
+ (12*zeta^11 - 8*zeta^10 + 8*zeta^8 + 8*zeta^7 - 8*zeta^6 + 16*zeta^5 + 
4*zeta^4 - 12*zeta^3 + 16*zeta^2 + 8*zeta - 4)*q^174 + (-12*zeta^11 + 12*zeta^10
- 6*zeta^8 - 12*zeta^7 + 6*zeta^6 - 12*zeta^5 + 12*zeta^3 - 12*zeta^2 - 
6*zeta)*q^176 + (-8*zeta^11 + 8*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 
8*zeta^5 + 8*zeta^3 - 8*zeta^2 - 4*zeta + 12)*q^177 + (17*zeta^11 - 20*zeta^10 +
7*zeta^8 - 26*zeta^7 - 7*zeta^6 + 14*zeta^5 - 3*zeta^4 - 17*zeta^3 + 14*zeta^2 +
7*zeta - 20)*q^178 + (26*zeta^11 - 44*zeta^10 + 4*zeta^8 - 80*zeta^7 - 4*zeta^6 
+ 8*zeta^5 - 18*zeta^4 - 26*zeta^3 + 8*zeta^2 + 4*zeta - 44)*q^179 + (-4*zeta^11
- 12*zeta^10 - 10*zeta^8 + 40*zeta^7 + 10*zeta^6 - 20*zeta^5 - 16*zeta^4 + 
4*zeta^3 - 20*zeta^2 - 10*zeta + 30)*q^180 + (-5*zeta^11 + 6*zeta^10 - 2*zeta^8 
- 6*zeta^7 + 2*zeta^6 - 4*zeta^5 + zeta^4 + 5*zeta^3 - 4*zeta^2 - 2*zeta - 
1)*q^181 + (-50*zeta^11 + 44*zeta^10 - 28*zeta^8 - 44*zeta^7 + 28*zeta^6 - 
56*zeta^5 - 6*zeta^4 + 50*zeta^3 - 56*zeta^2 - 28*zeta + 6)*q^183 + (2*zeta^11 -
20*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 - 18*zeta^4 - 2*zeta^3 
- 16*zeta^2 - 8*zeta + 24)*q^184 + (20*zeta^11 - 32*zeta^10 + 4*zeta^8 - 
56*zeta^7 - 4*zeta^6 + 8*zeta^5 - 12*zeta^4 - 20*zeta^3 + 8*zeta^2 + 4*zeta - 
32)*q^185 + (-20*zeta^11 + 16*zeta^10 - 12*zeta^8 + 8*zeta^7 + 12*zeta^6 - 
24*zeta^5 - 4*zeta^4 + 20*zeta^3 - 24*zeta^2 - 12*zeta + 16)*q^186 + (4*zeta^11 
- 12*zeta^10 - 2*zeta^8 + 8*zeta^7 + 2*zeta^6 - 4*zeta^5 - 8*zeta^4 - 4*zeta^3 -
4*zeta^2 - 2*zeta + 6)*q^187 + (10*zeta^11 - 12*zeta^10 + 4*zeta^8 + 12*zeta^7 -
4*zeta^6 + 8*zeta^5 - 2*zeta^4 - 10*zeta^3 + 8*zeta^2 + 4*zeta + 2)*q^188 + 
(-8*zeta^11 + 8*zeta^10 - 4*zeta^8 - 8*zeta^7 + 4*zeta^6 - 8*zeta^5 + 8*zeta^3 -
8*zeta^2 - 4*zeta)*q^190 + (18*zeta^11 + 18*zeta^8 - 72*zeta^7 - 18*zeta^6 + 
36*zeta^5 + 18*zeta^4 - 18*zeta^3 + 36*zeta^2 + 18*zeta - 54)*q^191 + 
(-2*zeta^11 + 12*zeta^10 + 4*zeta^8 + 32*zeta^7 - 4*zeta^6 + 8*zeta^5 + 
10*zeta^4 + 2*zeta^3 + 8*zeta^2 + 4*zeta + 12)*q^192 + (-18*zeta^11 + 20*zeta^10
- 8*zeta^8 + 24*zeta^7 + 8*zeta^6 - 16*zeta^5 + 2*zeta^4 + 18*zeta^3 - 16*zeta^2
- 8*zeta + 20)*q^193 + (6*zeta^11 - 10*zeta^10 + zeta^8 - 4*zeta^7 - zeta^6 + 
2*zeta^5 - 4*zeta^4 - 6*zeta^3 + 2*zeta^2 + zeta - 3)*q^194 + (-36*zeta^11 + 
32*zeta^10 - 20*zeta^8 - 32*zeta^7 + 20*zeta^6 - 40*zeta^5 - 4*zeta^4 + 
36*zeta^3 - 40*zeta^2 - 20*zeta + 4)*q^195 + (4*zeta^11 - 4*zeta^10 + 2*zeta^8 +
4*zeta^7 - 2*zeta^6 + 4*zeta^5 - 4*zeta^3 + 4*zeta^2 + 2*zeta)*q^197 + 
(4*zeta^11 - 8*zeta^10 - 4*zeta^4 - 4*zeta^3)*q^198 + (-28*zeta^11 + 48*zeta^10 
- 4*zeta^8 + 88*zeta^7 + 4*zeta^6 - 8*zeta^5 + 20*zeta^4 + 28*zeta^3 - 8*zeta^2 
- 4*zeta + 48)*q^199 + (28*zeta^11 - 34*zeta^10 + 11*zeta^8 - 46*zeta^7 - 
11*zeta^6 + 22*zeta^5 - 6*zeta^4 - 28*zeta^3 + 22*zeta^2 + 11*zeta - 34)*q^200 +
(-16*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 - 16*zeta^4 - 
16*zeta^2 - 8*zeta + 24)*q^201 + (5*zeta^11 + 10*zeta^10 + 10*zeta^8 - 10*zeta^7
- 10*zeta^6 + 20*zeta^5 + 15*zeta^4 - 5*zeta^3 + 20*zeta^2 + 10*zeta - 15)*q^202
+ (-14*zeta^11 + 28*zeta^10 - 28*zeta^7 + 14*zeta^4 + 14*zeta^3 - 14)*q^204 + 
(-10*zeta^11 - 16*zeta^10 - 18*zeta^8 + 72*zeta^7 + 18*zeta^6 - 36*zeta^5 - 
26*zeta^4 + 10*zeta^3 - 36*zeta^2 - 18*zeta + 54)*q^205 + (14*zeta^11 - 
8*zeta^10 + 10*zeta^8 + 4*zeta^7 - 10*zeta^6 + 20*zeta^5 + 6*zeta^4 - 14*zeta^3 
+ 20*zeta^2 + 10*zeta - 8)*q^206 + (-28*zeta^11 + 40*zeta^10 - 8*zeta^8 + 
64*zeta^7 + 8*zeta^6 - 16*zeta^5 + 12*zeta^4 + 28*zeta^3 - 16*zeta^2 - 8*zeta + 
40)*q^207 + (-12*zeta^11 + 6*zeta^10 - 9*zeta^8 + 36*zeta^7 + 9*zeta^6 - 
18*zeta^5 - 6*zeta^4 + 12*zeta^3 - 18*zeta^2 - 9*zeta + 27)*q^208 + (12*zeta^11 
- 8*zeta^10 + 8*zeta^8 + 8*zeta^7 - 8*zeta^6 + 16*zeta^5 + 4*zeta^4 - 12*zeta^3 
+ 16*zeta^2 + 8*zeta - 4)*q^209 + (28*zeta^11 - 16*zeta^10 + 20*zeta^8 + 
16*zeta^7 - 20*zeta^6 + 40*zeta^5 + 12*zeta^4 - 28*zeta^3 + 40*zeta^2 + 20*zeta 
- 12)*q^211 + (2*zeta^11 - 8*zeta^10 - 2*zeta^8 + 8*zeta^7 + 2*zeta^6 - 4*zeta^5
- 6*zeta^4 - 2*zeta^3 - 4*zeta^2 - 2*zeta + 6)*q^212 + (44*zeta^11 - 56*zeta^10 
+ 16*zeta^8 - 80*zeta^7 - 16*zeta^6 + 32*zeta^5 - 12*zeta^4 - 44*zeta^3 + 
32*zeta^2 + 16*zeta - 56)*q^213 + (16*zeta^11 - 12*zeta^10 + 10*zeta^8 - 
4*zeta^7 - 10*zeta^6 + 20*zeta^5 + 4*zeta^4 - 16*zeta^3 + 20*zeta^2 + 10*zeta - 
12)*q^214 + (-8*zeta^11 - 16*zeta^10 - 16*zeta^8 + 64*zeta^7 + 16*zeta^6 - 
32*zeta^5 - 24*zeta^4 + 8*zeta^3 - 32*zeta^2 - 16*zeta + 48)*q^215 + (6*zeta^11 
- 8*zeta^10 + 2*zeta^8 + 8*zeta^7 - 2*zeta^6 + 4*zeta^5 - 2*zeta^4 - 6*zeta^3 + 
4*zeta^2 + 2*zeta + 2)*q^216 + (-4*zeta^11 + 8*zeta^10 - 8*zeta^7 + 4*zeta^4 + 
4*zeta^3 - 4)*q^218 + (8*zeta^11 + 28*zeta^10 + 22*zeta^8 - 88*zeta^7 - 
22*zeta^6 + 44*zeta^5 + 36*zeta^4 - 8*zeta^3 + 44*zeta^2 + 22*zeta - 66)*q^219 +
(-22*zeta^11 + 32*zeta^10 - 6*zeta^8 + 52*zeta^7 + 6*zeta^6 - 12*zeta^5 + 
10*zeta^4 + 22*zeta^3 - 12*zeta^2 - 6*zeta + 32)*q^220 + (28*zeta^11 - 
28*zeta^10 + 14*zeta^8 - 28*zeta^7 - 14*zeta^6 + 28*zeta^5 - 28*zeta^3 + 
28*zeta^2 + 14*zeta - 28)*q^221 + (8*zeta^11 - 16*zeta^10 - 8*zeta^4 - 
8*zeta^3)*q^222 + (52*zeta^11 - 40*zeta^10 + 32*zeta^8 + 40*zeta^7 - 32*zeta^6 +
64*zeta^5 + 12*zeta^4 - 52*zeta^3 + 64*zeta^2 + 32*zeta - 12)*q^223 + 
(-28*zeta^11 + 20*zeta^10 - 18*zeta^8 - 20*zeta^7 + 18*zeta^6 - 36*zeta^5 - 
8*zeta^4 + 28*zeta^3 - 36*zeta^2 - 18*zeta + 8)*q^225 + (22*zeta^11 - 28*zeta^10
+ 8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 - 6*zeta^4 - 22*zeta^3 + 16*zeta^2
+ 8*zeta - 24)*q^226 + (-46*zeta^11 + 64*zeta^10 - 14*zeta^8 + 100*zeta^7 + 
14*zeta^6 - 28*zeta^5 + 18*zeta^4 + 46*zeta^3 - 28*zeta^2 - 14*zeta + 64)*q^227 
+ (4*zeta^11 - 16*zeta^10 - 4*zeta^8 - 40*zeta^7 + 4*zeta^6 - 8*zeta^5 - 
12*zeta^4 - 4*zeta^3 - 8*zeta^2 - 4*zeta - 16)*q^228 + (-4*zeta^11 + 6*zeta^10 -
zeta^8 + 4*zeta^7 + zeta^6 - 2*zeta^5 + 2*zeta^4 + 4*zeta^3 - 2*zeta^2 - zeta + 
3)*q^229 + (-22*zeta^11 + 20*zeta^10 - 12*zeta^8 - 20*zeta^7 + 12*zeta^6 - 
24*zeta^5 - 2*zeta^4 + 22*zeta^3 - 24*zeta^2 - 12*zeta + 2)*q^230 + (22*zeta^11 
- 20*zeta^10 + 12*zeta^8 + 20*zeta^7 - 12*zeta^6 + 24*zeta^5 + 2*zeta^4 - 
22*zeta^3 + 24*zeta^2 + 12*zeta - 2)*q^232 + (-8*zeta^11 + 20*zeta^10 + 2*zeta^8
- 8*zeta^7 - 2*zeta^6 + 4*zeta^5 + 12*zeta^4 + 8*zeta^3 + 4*zeta^2 + 2*zeta - 
6)*q^233 + (18*zeta^11 - 16*zeta^10 + 10*zeta^8 - 12*zeta^7 - 10*zeta^6 + 
20*zeta^5 + 2*zeta^4 - 18*zeta^3 + 20*zeta^2 + 10*zeta - 16)*q^234 + (16*zeta^11
- 24*zeta^10 + 4*zeta^8 - 40*zeta^7 - 4*zeta^6 + 8*zeta^5 - 8*zeta^4 - 16*zeta^3
+ 8*zeta^2 + 4*zeta - 24)*q^235 + (12*zeta^11 - 20*zeta^10 + 2*zeta^8 - 8*zeta^7
- 2*zeta^6 + 4*zeta^5 - 8*zeta^4 - 12*zeta^3 + 4*zeta^2 + 2*zeta - 6)*q^236 + 
(-56*zeta^11 + 48*zeta^10 - 32*zeta^8 - 48*zeta^7 + 32*zeta^6 - 64*zeta^5 - 
8*zeta^4 + 56*zeta^3 - 64*zeta^2 - 32*zeta + 8)*q^237 + (-32*zeta^11 + 
28*zeta^10 - 18*zeta^8 - 28*zeta^7 + 18*zeta^6 - 36*zeta^5 - 4*zeta^4 + 
32*zeta^3 - 36*zeta^2 - 18*zeta + 4)*q^239 + (12*zeta^11 + 12*zeta^10 + 
18*zeta^8 - 72*zeta^7 - 18*zeta^6 + 36*zeta^5 + 24*zeta^4 - 12*zeta^3 + 
36*zeta^2 + 18*zeta - 54)*q^240 + (21*zeta^11 - 36*zeta^10 + 3*zeta^8 - 
66*zeta^7 - 3*zeta^6 + 6*zeta^5 - 15*zeta^4 - 21*zeta^3 + 6*zeta^2 + 3*zeta - 
36)*q^241 + (14*zeta^11 - 14*zeta^10 + 7*zeta^8 - 14*zeta^7 - 7*zeta^6 + 
14*zeta^5 - 14*zeta^3 + 14*zeta^2 + 7*zeta - 14)*q^242 + (2*zeta^11 + 2*zeta^8 -
8*zeta^7 - 2*zeta^6 + 4*zeta^5 + 2*zeta^4 - 2*zeta^3 + 4*zeta^2 + 2*zeta - 
6)*q^243 + (-47*zeta^11 + 34*zeta^10 - 30*zeta^8 - 34*zeta^7 + 30*zeta^6 - 
60*zeta^5 - 13*zeta^4 + 47*zeta^3 - 60*zeta^2 - 30*zeta + 13)*q^244 + 
(-10*zeta^11 + 12*zeta^10 - 4*zeta^8 - 12*zeta^7 + 4*zeta^6 - 8*zeta^5 + 
2*zeta^4 + 10*zeta^3 - 8*zeta^2 - 4*zeta - 2)*q^246 + (-4*zeta^11 + 16*zeta^10 +
4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 8*zeta^5 + 12*zeta^4 + 4*zeta^3 + 8*zeta^2 + 
4*zeta - 12)*q^247 + (14*zeta^11 - 8*zeta^10 + 10*zeta^8 + 4*zeta^7 - 10*zeta^6 
+ 20*zeta^5 + 6*zeta^4 - 14*zeta^3 + 20*zeta^2 + 10*zeta - 8)*q^248 + 
(40*zeta^11 - 48*zeta^10 + 16*zeta^8 - 64*zeta^7 - 16*zeta^6 + 32*zeta^5 - 
8*zeta^4 - 40*zeta^3 + 32*zeta^2 + 16*zeta - 48)*q^249 + (-8*zeta^11 + 8*zeta^10
- 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 8*zeta^5 + 8*zeta^3 - 8*zeta^2 - 4*zeta + 
12)*q^250 + (-26*zeta^11 + 20*zeta^10 - 16*zeta^8 - 20*zeta^7 + 16*zeta^6 - 
32*zeta^5 - 6*zeta^4 + 26*zeta^3 - 32*zeta^2 - 16*zeta + 6)*q^251 + (32*zeta^11 
- 24*zeta^10 + 20*zeta^8 + 24*zeta^7 - 20*zeta^6 + 40*zeta^5 + 8*zeta^4 - 
32*zeta^3 + 40*zeta^2 + 20*zeta - 8)*q^253 + (12*zeta^11 - 16*zeta^10 + 4*zeta^8
- 16*zeta^7 - 4*zeta^6 + 8*zeta^5 - 4*zeta^4 - 12*zeta^3 + 8*zeta^2 + 4*zeta - 
12)*q^254 + (-28*zeta^11 + 40*zeta^10 - 8*zeta^8 + 64*zeta^7 + 8*zeta^6 - 
16*zeta^5 + 12*zeta^4 + 28*zeta^3 - 16*zeta^2 - 8*zeta + 40)*q^255 + 
(-23*zeta^11 + 22*zeta^10 - 12*zeta^8 + 20*zeta^7 + 12*zeta^6 - 24*zeta^5 - 
zeta^4 + 23*zeta^3 - 24*zeta^2 - 12*zeta + 22)*q^256 + (-2*zeta^11 - 30*zeta^10 
- 17*zeta^8 + 68*zeta^7 + 17*zeta^6 - 34*zeta^5 - 32*zeta^4 + 2*zeta^3 - 
34*zeta^2 - 17*zeta + 51)*q^257 + (-8*zeta^11 + 16*zeta^10 - 16*zeta^7 + 
8*zeta^4 + 8*zeta^3 - 8)*q^258 + (-34*zeta^11 + 24*zeta^10 - 22*zeta^8 - 
24*zeta^7 + 22*zeta^6 - 44*zeta^5 - 10*zeta^4 + 34*zeta^3 - 44*zeta^2 - 22*zeta 
+ 10)*q^260 + (-8*zeta^11 - 8*zeta^10 - 12*zeta^8 + 48*zeta^7 + 12*zeta^6 - 
24*zeta^5 - 16*zeta^4 + 8*zeta^3 - 24*zeta^2 - 12*zeta + 36)*q^261 + (-8*zeta^10
- 4*zeta^8 - 24*zeta^7 + 4*zeta^6 - 8*zeta^5 - 8*zeta^4 - 8*zeta^2 - 4*zeta - 
8)*q^262 + (-18*zeta^11 + 20*zeta^10 - 8*zeta^8 + 24*zeta^7 + 8*zeta^6 - 
16*zeta^5 + 2*zeta^4 + 18*zeta^3 - 16*zeta^2 - 8*zeta + 20)*q^263 + (12*zeta^11 
- 8*zeta^10 + 8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 + 4*zeta^4 - 12*zeta^3
+ 16*zeta^2 + 8*zeta - 24)*q^264 + (-14*zeta^11 + 12*zeta^10 - 8*zeta^8 - 
12*zeta^7 + 8*zeta^6 - 16*zeta^5 - 2*zeta^4 + 14*zeta^3 - 16*zeta^2 - 8*zeta + 
2)*q^265 + (58*zeta^11 - 52*zeta^10 + 32*zeta^8 + 52*zeta^7 - 32*zeta^6 + 
64*zeta^5 + 6*zeta^4 - 58*zeta^3 + 64*zeta^2 + 32*zeta - 6)*q^267 + (-16*zeta^11
+ 8*zeta^10 - 12*zeta^8 + 48*zeta^7 + 12*zeta^6 - 24*zeta^5 - 8*zeta^4 + 
16*zeta^3 - 24*zeta^2 - 12*zeta + 36)*q^268 + (29*zeta^11 - 40*zeta^10 + 
9*zeta^8 - 62*zeta^7 - 9*zeta^6 + 18*zeta^5 - 11*zeta^4 - 29*zeta^3 + 18*zeta^2 
+ 9*zeta - 40)*q^269 + (6*zeta^11 - 8*zeta^10 + 2*zeta^8 - 12*zeta^7 - 2*zeta^6 
+ 4*zeta^5 - 2*zeta^4 - 6*zeta^3 + 4*zeta^2 + 2*zeta - 8)*q^270 + (-4*zeta^11 + 
20*zeta^10 + 6*zeta^8 - 24*zeta^7 - 6*zeta^6 + 12*zeta^5 + 16*zeta^4 + 4*zeta^3 
+ 12*zeta^2 + 6*zeta - 18)*q^271 + (-15*zeta^11 + 6*zeta^10 - 12*zeta^8 - 
6*zeta^7 + 12*zeta^6 - 24*zeta^5 - 9*zeta^4 + 15*zeta^3 - 24*zeta^2 - 12*zeta + 
9)*q^272 + (10*zeta^11 - 20*zeta^10 + 20*zeta^7 - 10*zeta^4 - 10*zeta^3 + 
10)*q^274 + (2*zeta^11 + 16*zeta^10 + 10*zeta^8 - 40*zeta^7 - 10*zeta^6 + 
20*zeta^5 + 18*zeta^4 - 2*zeta^3 + 20*zeta^2 + 10*zeta - 30)*q^275 + (28*zeta^11
- 56*zeta^10 - 112*zeta^7 - 28*zeta^4 - 28*zeta^3 - 56)*q^276 + (22*zeta^11 - 
28*zeta^10 + 8*zeta^8 - 40*zeta^7 - 8*zeta^6 + 16*zeta^5 - 6*zeta^4 - 22*zeta^3 
+ 16*zeta^2 + 8*zeta - 28)*q^277 + (-4*zeta^11 + 16*zeta^10 + 4*zeta^8 - 
16*zeta^7 - 4*zeta^6 + 8*zeta^5 + 12*zeta^4 + 4*zeta^3 + 8*zeta^2 + 4*zeta - 
12)*q^278 + (4*zeta^11 - 8*zeta^10 + 8*zeta^7 - 4*zeta^4 - 4*zeta^3 + 4)*q^279 +
(2*zeta^11 + 4*zeta^10 + 4*zeta^8 - 4*zeta^7 - 4*zeta^6 + 8*zeta^5 + 6*zeta^4 - 
2*zeta^3 + 8*zeta^2 + 4*zeta - 6)*q^281 + (-8*zeta^11 + 8*zeta^10 - 4*zeta^8 + 
16*zeta^7 + 4*zeta^6 - 8*zeta^5 + 8*zeta^3 - 8*zeta^2 - 4*zeta + 12)*q^282 + 
(18*zeta^11 - 24*zeta^10 + 6*zeta^8 - 36*zeta^7 - 6*zeta^6 + 12*zeta^5 - 
6*zeta^4 - 18*zeta^3 + 12*zeta^2 + 6*zeta - 24)*q^283 + (-2*zeta^11 - 20*zeta^10
- 12*zeta^8 - 64*zeta^7 + 12*zeta^6 - 24*zeta^5 - 22*zeta^4 + 2*zeta^3 - 
24*zeta^2 - 12*zeta - 20)*q^284 + (-8*zeta^11 - 16*zeta^10 - 16*zeta^8 + 
64*zeta^7 + 16*zeta^6 - 32*zeta^5 - 24*zeta^4 + 8*zeta^3 - 32*zeta^2 - 16*zeta +
48)*q^285 + (-6*zeta^11 - 4*zeta^10 - 8*zeta^8 + 4*zeta^7 + 8*zeta^6 - 16*zeta^5
- 10*zeta^4 + 6*zeta^3 - 16*zeta^2 - 8*zeta + 10)*q^286 + (-18*zeta^11 + 
16*zeta^10 - 10*zeta^8 - 16*zeta^7 + 10*zeta^6 - 20*zeta^5 - 2*zeta^4 + 
18*zeta^3 - 20*zeta^2 - 10*zeta + 2)*q^288 + (-5*zeta^11 + 24*zeta^10 + 7*zeta^8
- 28*zeta^7 - 7*zeta^6 + 14*zeta^5 + 19*zeta^4 + 5*zeta^3 + 14*zeta^2 + 7*zeta -
21)*q^289 + (16*zeta^11 - 24*zeta^10 + 4*zeta^8 - 40*zeta^7 - 4*zeta^6 + 
8*zeta^5 - 8*zeta^4 - 16*zeta^3 + 8*zeta^2 + 4*zeta - 24)*q^290 + (2*zeta^11 - 
8*zeta^10 - 2*zeta^8 - 20*zeta^7 + 2*zeta^6 - 4*zeta^5 - 6*zeta^4 - 2*zeta^3 - 
4*zeta^2 - 2*zeta - 8)*q^291 + (24*zeta^11 + 2*zeta^10 + 25*zeta^8 - 100*zeta^7 
- 25*zeta^6 + 50*zeta^5 + 26*zeta^4 - 24*zeta^3 + 50*zeta^2 + 25*zeta - 
75)*q^292 + (33*zeta^11 - 34*zeta^10 + 16*zeta^8 + 34*zeta^7 - 16*zeta^6 + 
32*zeta^5 - zeta^4 - 33*zeta^3 + 32*zeta^2 + 16*zeta + 1)*q^293 + (-8*zeta^11 + 
8*zeta^10 - 4*zeta^8 - 8*zeta^7 + 4*zeta^6 - 8*zeta^5 + 8*zeta^3 - 8*zeta^2 - 
4*zeta)*q^295 + (-12*zeta^11 + 8*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 
16*zeta^5 - 4*zeta^4 + 12*zeta^3 - 16*zeta^2 - 8*zeta + 24)*q^296 + (-4*zeta^11 
+ 8*zeta^10 + 16*zeta^7 + 4*zeta^4 + 4*zeta^3 + 8)*q^297 + (-4*zeta^11 + 
12*zeta^10 + 2*zeta^8 + 28*zeta^7 - 2*zeta^6 + 4*zeta^5 + 8*zeta^4 + 4*zeta^3 + 
4*zeta^2 + 2*zeta + 12)*q^298 + (28*zeta^10 + 14*zeta^8 - 56*zeta^7 - 14*zeta^6 
+ 28*zeta^5 + 28*zeta^4 + 28*zeta^2 + 14*zeta - 42)*q^299 + (48*zeta^11 - 
52*zeta^10 + 22*zeta^8 + 52*zeta^7 - 22*zeta^6 + 44*zeta^5 - 4*zeta^4 - 
48*zeta^3 + 44*zeta^2 + 22*zeta + 4)*q^300 + (12*zeta^11 + 12*zeta^8 - 12*zeta^6
+ 24*zeta^5 + 12*zeta^4 - 12*zeta^3 + 24*zeta^2 + 12*zeta - 12)*q^302 + 
(20*zeta^11 - 20*zeta^10 + 10*zeta^8 - 40*zeta^7 - 10*zeta^6 + 20*zeta^5 - 
20*zeta^3 + 20*zeta^2 + 10*zeta - 30)*q^303 + (18*zeta^11 - 24*zeta^10 + 
6*zeta^8 - 36*zeta^7 - 6*zeta^6 + 12*zeta^5 - 6*zeta^4 - 18*zeta^3 + 12*zeta^2 +
6*zeta - 24)*q^304 + (-64*zeta^11 + 100*zeta^10 - 14*zeta^8 + 172*zeta^7 + 
14*zeta^6 - 28*zeta^5 + 36*zeta^4 + 64*zeta^3 - 28*zeta^2 - 14*zeta + 100)*q^305
+ (-16*zeta^11 + 20*zeta^10 - 6*zeta^8 + 24*zeta^7 + 6*zeta^6 - 12*zeta^5 + 
4*zeta^4 + 16*zeta^3 - 12*zeta^2 - 6*zeta + 18)*q^306 + (62*zeta^11 - 52*zeta^10
+ 36*zeta^8 + 52*zeta^7 - 36*zeta^6 + 72*zeta^5 + 10*zeta^4 - 62*zeta^3 + 
72*zeta^2 + 36*zeta - 10)*q^307 + (-20*zeta^11 + 8*zeta^10 - 16*zeta^8 - 
8*zeta^7 + 16*zeta^6 - 32*zeta^5 - 12*zeta^4 + 20*zeta^3 - 32*zeta^2 - 16*zeta +
12)*q^309 + (-4*zeta^11 + 8*zeta^10 + 4*zeta^4 + 4*zeta^3)*q^310 + (-22*zeta^11 
+ 24*zeta^10 - 10*zeta^8 + 28*zeta^7 + 10*zeta^6 - 20*zeta^5 + 2*zeta^4 + 
22*zeta^3 - 20*zeta^2 - 10*zeta + 24)*q^311 + (14*zeta^11 + 14*zeta^8 + 
28*zeta^7 - 14*zeta^6 + 28*zeta^5 + 14*zeta^4 - 14*zeta^3 + 28*zeta^2 + 
14*zeta)*q^312 + (8*zeta^11 - 14*zeta^10 + zeta^8 - 4*zeta^7 - zeta^6 + 2*zeta^5
- 6*zeta^4 - 8*zeta^3 + 2*zeta^2 + zeta - 3)*q^313 + (13*zeta^11 + 6*zeta^10 + 
16*zeta^8 - 6*zeta^7 - 16*zeta^6 + 32*zeta^5 + 19*zeta^4 - 13*zeta^3 + 32*zeta^2
+ 16*zeta - 19)*q^314 + (-52*zeta^11 + 40*zeta^10 - 32*zeta^8 - 40*zeta^7 + 
32*zeta^6 - 64*zeta^5 - 12*zeta^4 + 52*zeta^3 - 64*zeta^2 - 32*zeta + 12)*q^316 
+ (-10*zeta^11 - 10*zeta^8 + 40*zeta^7 + 10*zeta^6 - 20*zeta^5 - 10*zeta^4 + 
10*zeta^3 - 20*zeta^2 - 10*zeta + 30)*q^317 + (-8*zeta^11 + 8*zeta^10 - 4*zeta^8
+ 8*zeta^7 + 4*zeta^6 - 8*zeta^5 + 8*zeta^3 - 8*zeta^2 - 4*zeta + 8)*q^318 + 
(-20*zeta^11 + 32*zeta^10 - 4*zeta^8 + 56*zeta^7 + 4*zeta^6 - 8*zeta^5 + 
12*zeta^4 + 20*zeta^3 - 8*zeta^2 - 4*zeta + 32)*q^319 + (10*zeta^11 + 6*zeta^10 
+ 13*zeta^8 - 52*zeta^7 - 13*zeta^6 + 26*zeta^5 + 16*zeta^4 - 10*zeta^3 + 
26*zeta^2 + 13*zeta - 39)*q^320 + (-8*zeta^10 - 4*zeta^8 + 8*zeta^7 + 4*zeta^6 -
8*zeta^5 - 8*zeta^4 - 8*zeta^2 - 4*zeta + 8)*q^321 + (12*zeta^11 - 16*zeta^10 + 
4*zeta^8 + 16*zeta^7 - 4*zeta^6 + 8*zeta^5 - 4*zeta^4 - 12*zeta^3 + 8*zeta^2 + 
4*zeta + 4)*q^323 + (2*zeta^11 - 8*zeta^10 - 2*zeta^8 + 8*zeta^7 + 2*zeta^6 - 
4*zeta^5 - 6*zeta^4 - 2*zeta^3 - 4*zeta^2 - 2*zeta + 6)*q^324 + (-41*zeta^11 + 
52*zeta^10 - 15*zeta^8 + 74*zeta^7 + 15*zeta^6 - 30*zeta^5 + 11*zeta^4 + 
41*zeta^3 - 30*zeta^2 - 15*zeta + 52)*q^325 + (-8*zeta^11 - 8*zeta^8 - 16*zeta^7
+ 8*zeta^6 - 16*zeta^5 - 8*zeta^4 + 8*zeta^3 - 16*zeta^2 - 8*zeta)*q^326 + 
(-16*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 - 16*zeta^4 - 
16*zeta^2 - 8*zeta + 24)*q^327 + (-21*zeta^11 + 14*zeta^10 - 14*zeta^8 - 
14*zeta^7 + 14*zeta^6 - 28*zeta^5 - 7*zeta^4 + 21*zeta^3 - 28*zeta^2 - 14*zeta +
7)*q^328 + (12*zeta^11 - 8*zeta^10 + 8*zeta^8 + 8*zeta^7 - 8*zeta^6 + 16*zeta^5 
+ 4*zeta^4 - 12*zeta^3 + 16*zeta^2 + 8*zeta - 4)*q^330 + (4*zeta^11 + 4*zeta^8 -
16*zeta^7 - 4*zeta^6 + 8*zeta^5 + 4*zeta^4 - 4*zeta^3 + 8*zeta^2 + 4*zeta - 
12)*q^331 + (-12*zeta^11 - 8*zeta^10 - 16*zeta^8 - 48*zeta^7 + 16*zeta^6 - 
32*zeta^5 - 20*zeta^4 + 12*zeta^3 - 32*zeta^2 - 16*zeta - 8)*q^332 + (-8*zeta^11
+ 16*zeta^10 + 32*zeta^7 + 8*zeta^4 + 8*zeta^3 + 16)*q^333 + (28*zeta^11 - 
28*zeta^10 + 14*zeta^8 - 56*zeta^7 - 14*zeta^6 + 28*zeta^5 - 28*zeta^3 + 
28*zeta^2 + 14*zeta - 42)*q^334 + (-40*zeta^11 + 32*zeta^10 - 24*zeta^8 - 
32*zeta^7 + 24*zeta^6 - 48*zeta^5 - 8*zeta^4 + 40*zeta^3 - 48*zeta^2 - 24*zeta +
8)*q^335 + (-60*zeta^11 + 56*zeta^10 - 32*zeta^8 - 56*zeta^7 + 32*zeta^6 - 
64*zeta^5 - 4*zeta^4 + 60*zeta^3 - 64*zeta^2 - 32*zeta + 4)*q^337 + (21*zeta^11 
- 26*zeta^10 + 8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 - 5*zeta^4 - 
21*zeta^3 + 16*zeta^2 + 8*zeta - 24)*q^338 + (-36*zeta^11 + 40*zeta^10 - 
16*zeta^8 + 48*zeta^7 + 16*zeta^6 - 32*zeta^5 + 4*zeta^4 + 36*zeta^3 - 32*zeta^2
- 16*zeta + 40)*q^339 + (-14*zeta^11 + 28*zeta^10 + 56*zeta^7 + 14*zeta^4 + 
14*zeta^3 + 28)*q^340 + (-8*zeta^11 + 8*zeta^10 - 4*zeta^8 + 16*zeta^7 + 
4*zeta^6 - 8*zeta^5 + 8*zeta^3 - 8*zeta^2 - 4*zeta + 12)*q^341 + (4*zeta^11 - 
8*zeta^10 + 8*zeta^7 - 4*zeta^4 - 4*zeta^3 + 4)*q^342 + (-20*zeta^11 + 8*zeta^10
- 16*zeta^8 - 8*zeta^7 + 16*zeta^6 - 32*zeta^5 - 12*zeta^4 + 20*zeta^3 - 
32*zeta^2 - 16*zeta + 12)*q^344 + (-24*zeta^11 - 40*zeta^10 - 44*zeta^8 + 
176*zeta^7 + 44*zeta^6 - 88*zeta^5 - 64*zeta^4 + 24*zeta^3 - 88*zeta^2 - 44*zeta
+ 132)*q^345 + (-23*zeta^11 + 28*zeta^10 - 9*zeta^8 + 38*zeta^7 + 9*zeta^6 - 
18*zeta^5 + 5*zeta^4 + 23*zeta^3 - 18*zeta^2 - 9*zeta + 28)*q^346 + (-46*zeta^11
+ 76*zeta^10 - 8*zeta^8 + 136*zeta^7 + 8*zeta^6 - 16*zeta^5 + 30*zeta^4 + 
46*zeta^3 - 16*zeta^2 - 8*zeta + 76)*q^347 + (8*zeta^11 + 24*zeta^10 + 20*zeta^8
- 80*zeta^7 - 20*zeta^6 + 40*zeta^5 + 32*zeta^4 - 8*zeta^3 + 40*zeta^2 + 20*zeta
- 60)*q^348 + (-21*zeta^11 + 14*zeta^10 - 14*zeta^8 - 14*zeta^7 + 14*zeta^6 - 
28*zeta^5 - 7*zeta^4 + 21*zeta^3 - 28*zeta^2 - 14*zeta + 7)*q^349 + (-10*zeta^11
+ 12*zeta^10 - 4*zeta^8 - 12*zeta^7 + 4*zeta^6 - 8*zeta^5 + 2*zeta^4 + 10*zeta^3
- 8*zeta^2 - 4*zeta - 2)*q^351 + (6*zeta^11 + 4*zeta^10 + 8*zeta^8 - 32*zeta^7 -
8*zeta^6 + 16*zeta^5 + 10*zeta^4 - 6*zeta^3 + 16*zeta^2 + 8*zeta - 24)*q^352 + 
(29*zeta^11 - 40*zeta^10 + 9*zeta^8 - 62*zeta^7 - 9*zeta^6 + 18*zeta^5 - 
11*zeta^4 - 29*zeta^3 + 18*zeta^2 + 9*zeta - 40)*q^353 + (-20*zeta^11 + 
16*zeta^10 - 12*zeta^8 + 8*zeta^7 + 12*zeta^6 - 24*zeta^5 - 4*zeta^4 + 20*zeta^3
- 24*zeta^2 - 12*zeta + 16)*q^354 + (-12*zeta^11 - 28*zeta^10 - 26*zeta^8 + 
104*zeta^7 + 26*zeta^6 - 52*zeta^5 - 40*zeta^4 + 12*zeta^3 - 52*zeta^2 - 26*zeta
+ 78)*q^355 + (55*zeta^11 - 38*zeta^10 + 36*zeta^8 + 38*zeta^7 - 36*zeta^6 + 
72*zeta^5 + 17*zeta^4 - 55*zeta^3 + 72*zeta^2 + 36*zeta - 17)*q^356 + 
(-18*zeta^11 + 8*zeta^10 - 14*zeta^8 - 8*zeta^7 + 14*zeta^6 - 28*zeta^5 - 
10*zeta^4 + 18*zeta^3 - 28*zeta^2 - 14*zeta + 10)*q^358 + (6*zeta^11 - 8*zeta^10
+ 2*zeta^8 - 8*zeta^7 - 2*zeta^6 + 4*zeta^5 - 2*zeta^4 - 6*zeta^3 + 4*zeta^2 + 
2*zeta - 6)*q^359 + (-14*zeta^11 + 24*zeta^10 - 2*zeta^8 + 44*zeta^7 + 2*zeta^6 
- 4*zeta^5 + 10*zeta^4 + 14*zeta^3 - 4*zeta^2 - 2*zeta + 24)*q^360 + (11*zeta^11
- 22*zeta^10 - 44*zeta^7 - 11*zeta^4 - 11*zeta^3 - 22)*q^361 + (-6*zeta^11 + 
10*zeta^10 - zeta^8 + 4*zeta^7 + zeta^6 - 2*zeta^5 + 4*zeta^4 + 6*zeta^3 - 
2*zeta^2 - zeta + 3)*q^362 + (28*zeta^11 - 28*zeta^10 + 14*zeta^8 + 28*zeta^7 - 
14*zeta^6 + 28*zeta^5 - 28*zeta^3 + 28*zeta^2 + 14*zeta)*q^363 + (98*zeta^11 - 
80*zeta^10 + 58*zeta^8 + 80*zeta^7 - 58*zeta^6 + 116*zeta^5 + 18*zeta^4 - 
98*zeta^3 + 116*zeta^2 + 58*zeta - 18)*q^365 + (-4*zeta^11 + 20*zeta^10 + 
6*zeta^8 - 24*zeta^7 - 6*zeta^6 + 12*zeta^5 + 16*zeta^4 + 4*zeta^3 + 12*zeta^2 +
6*zeta - 18)*q^366 + (16*zeta^11 - 16*zeta^10 + 8*zeta^8 - 16*zeta^7 - 8*zeta^6 
+ 16*zeta^5 - 16*zeta^3 + 16*zeta^2 + 8*zeta - 16)*q^367 + (42*zeta^11 - 
60*zeta^10 + 12*zeta^8 - 96*zeta^7 - 12*zeta^6 + 24*zeta^5 - 18*zeta^4 - 
42*zeta^3 + 24*zeta^2 + 12*zeta - 60)*q^368 + (4*zeta^11 + 12*zeta^10 + 
10*zeta^8 - 40*zeta^7 - 10*zeta^6 + 20*zeta^5 + 16*zeta^4 - 4*zeta^3 + 20*zeta^2
+ 10*zeta - 30)*q^369 + (-12*zeta^11 + 8*zeta^10 - 8*zeta^8 - 8*zeta^7 + 
8*zeta^6 - 16*zeta^5 - 4*zeta^4 + 12*zeta^3 - 16*zeta^2 - 8*zeta + 4)*q^370 + 
(-12*zeta^11 - 8*zeta^10 - 16*zeta^8 + 8*zeta^7 + 16*zeta^6 - 32*zeta^5 - 
20*zeta^4 + 12*zeta^3 - 32*zeta^2 - 16*zeta + 20)*q^372 + (22*zeta^11 - 
16*zeta^10 + 14*zeta^8 - 56*zeta^7 - 14*zeta^6 + 28*zeta^5 + 6*zeta^4 - 
22*zeta^3 + 28*zeta^2 + 14*zeta - 42)*q^373 + (14*zeta^11 - 8*zeta^10 + 
10*zeta^8 + 4*zeta^7 - 10*zeta^6 + 20*zeta^5 + 6*zeta^4 - 14*zeta^3 + 20*zeta^2 
+ 10*zeta - 8)*q^374 + (24*zeta^11 - 32*zeta^10 + 8*zeta^8 - 48*zeta^7 - 
8*zeta^6 + 16*zeta^5 - 8*zeta^4 - 24*zeta^3 + 16*zeta^2 + 8*zeta - 32)*q^375 + 
(4*zeta^11 - 12*zeta^10 - 2*zeta^8 + 8*zeta^7 + 2*zeta^6 - 4*zeta^5 - 8*zeta^4 -
4*zeta^3 - 4*zeta^2 - 2*zeta + 6)*q^376 + (-36*zeta^11 + 32*zeta^10 - 20*zeta^8 
- 32*zeta^7 + 20*zeta^6 - 40*zeta^5 - 4*zeta^4 + 36*zeta^3 - 40*zeta^2 - 20*zeta
+ 4)*q^377 + (16*zeta^11 - 24*zeta^10 + 4*zeta^8 + 24*zeta^7 - 4*zeta^6 + 
8*zeta^5 - 8*zeta^4 - 16*zeta^3 + 8*zeta^2 + 4*zeta + 8)*q^379 + (-12*zeta^11 - 
8*zeta^10 - 16*zeta^8 + 64*zeta^7 + 16*zeta^6 - 32*zeta^5 - 20*zeta^4 + 
12*zeta^3 - 32*zeta^2 - 16*zeta + 48)*q^380 + (-16*zeta^11 + 16*zeta^10 - 
8*zeta^8 + 16*zeta^7 + 8*zeta^6 - 16*zeta^5 + 16*zeta^3 - 16*zeta^2 - 8*zeta + 
16)*q^381 + (36*zeta^11 - 36*zeta^10 + 18*zeta^8 - 36*zeta^7 - 18*zeta^6 + 
36*zeta^5 - 36*zeta^3 + 36*zeta^2 + 18*zeta - 36)*q^382 + (24*zeta^11 - 
8*zeta^10 + 20*zeta^8 - 80*zeta^7 - 20*zeta^6 + 40*zeta^5 + 16*zeta^4 - 
24*zeta^3 + 40*zeta^2 + 20*zeta - 60)*q^383 + (46*zeta^11 - 24*zeta^10 + 
34*zeta^8 + 24*zeta^7 - 34*zeta^6 + 68*zeta^5 + 22*zeta^4 - 46*zeta^3 + 
68*zeta^2 + 34*zeta - 22)*q^384 + (2*zeta^11 - 16*zeta^10 - 6*zeta^8 + 16*zeta^7
+ 6*zeta^6 - 12*zeta^5 - 14*zeta^4 - 2*zeta^3 - 12*zeta^2 - 6*zeta + 14)*q^386 +
(16*zeta^10 + 8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 + 16*zeta^4 + 
16*zeta^2 + 8*zeta - 24)*q^387 + (19*zeta^11 - 20*zeta^10 + 9*zeta^8 - 22*zeta^7
- 9*zeta^6 + 18*zeta^5 - zeta^4 - 19*zeta^3 + 18*zeta^2 + 9*zeta - 20)*q^388 + 
(34*zeta^11 - 48*zeta^10 + 10*zeta^8 - 76*zeta^7 - 10*zeta^6 + 20*zeta^5 - 
14*zeta^4 - 34*zeta^3 + 20*zeta^2 + 10*zeta - 48)*q^389 + (-4*zeta^11 + 
16*zeta^10 + 4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 8*zeta^5 + 12*zeta^4 + 4*zeta^3 +
8*zeta^2 + 4*zeta - 12)*q^390 + (34*zeta^11 - 36*zeta^10 + 16*zeta^8 + 36*zeta^7
- 16*zeta^6 + 32*zeta^5 - 2*zeta^4 - 34*zeta^3 + 32*zeta^2 + 16*zeta + 2)*q^391 
+ (64*zeta^11 - 48*zeta^10 + 40*zeta^8 + 48*zeta^7 - 40*zeta^6 + 80*zeta^5 + 
16*zeta^4 - 64*zeta^3 + 80*zeta^2 + 40*zeta - 16)*q^393 + (2*zeta^11 - 4*zeta^10
- 2*zeta^4 - 2*zeta^3)*q^394 + (-72*zeta^11 + 112*zeta^10 - 16*zeta^8 + 
192*zeta^7 + 16*zeta^6 - 32*zeta^5 + 40*zeta^4 + 72*zeta^3 - 32*zeta^2 - 16*zeta
+ 112)*q^395 + (20*zeta^11 - 24*zeta^10 + 8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 
16*zeta^5 - 4*zeta^4 - 20*zeta^3 + 16*zeta^2 + 8*zeta - 24)*q^396 + (-16*zeta^11
+ 26*zeta^10 - 3*zeta^8 + 12*zeta^7 + 3*zeta^6 - 6*zeta^5 + 10*zeta^4 + 
16*zeta^3 - 6*zeta^2 - 3*zeta + 9)*q^397 + (20*zeta^11 - 8*zeta^10 + 16*zeta^8 +
8*zeta^7 - 16*zeta^6 + 32*zeta^5 + 12*zeta^4 - 20*zeta^3 + 32*zeta^2 + 16*zeta -
12)*q^398 + (42*zeta^11 - 30*zeta^10 + 27*zeta^8 + 30*zeta^7 - 27*zeta^6 + 
54*zeta^5 + 12*zeta^4 - 42*zeta^3 + 54*zeta^2 + 27*zeta - 12)*q^400 + 
(-8*zeta^11 + 20*zeta^10 + 2*zeta^8 - 8*zeta^7 - 2*zeta^6 + 4*zeta^5 + 12*zeta^4
+ 8*zeta^3 + 4*zeta^2 + 2*zeta - 6)*q^401 + (8*zeta^11 + 8*zeta^8 + 16*zeta^7 - 
8*zeta^6 + 16*zeta^5 + 8*zeta^4 - 8*zeta^3 + 16*zeta^2 + 8*zeta)*q^402 + 
(-16*zeta^11 + 8*zeta^10 - 12*zeta^8 - 8*zeta^7 + 12*zeta^6 - 24*zeta^5 - 
8*zeta^4 + 16*zeta^3 - 24*zeta^2 - 12*zeta + 8)*q^403 + (-30*zeta^11 + 
50*zeta^10 - 5*zeta^8 + 20*zeta^7 + 5*zeta^6 - 10*zeta^5 + 20*zeta^4 + 30*zeta^3
- 10*zeta^2 - 5*zeta + 15)*q^404 + (-14*zeta^11 + 12*zeta^10 - 8*zeta^8 - 
12*zeta^7 + 8*zeta^6 - 16*zeta^5 - 2*zeta^4 + 14*zeta^3 - 16*zeta^2 - 8*zeta + 
2)*q^405 + (16*zeta^11 - 16*zeta^10 + 8*zeta^8 + 16*zeta^7 - 8*zeta^6 + 
16*zeta^5 - 16*zeta^3 + 16*zeta^2 + 8*zeta)*q^407 + (-24*zeta^11 + 44*zeta^10 - 
2*zeta^8 + 8*zeta^7 + 2*zeta^6 - 4*zeta^5 + 20*zeta^4 + 24*zeta^3 - 4*zeta^2 - 
2*zeta + 6)*q^408 + (23*zeta^11 - 44*zeta^10 + zeta^8 - 86*zeta^7 - zeta^6 + 
2*zeta^5 - 21*zeta^4 - 23*zeta^3 + 2*zeta^2 + zeta - 44)*q^409 + (-12*zeta^11 + 
20*zeta^10 - 2*zeta^8 + 36*zeta^7 + 2*zeta^6 - 4*zeta^5 + 8*zeta^4 + 12*zeta^3 -
4*zeta^2 - 2*zeta + 20)*q^410 + (40*zeta^10 + 20*zeta^8 - 80*zeta^7 - 20*zeta^6 
+ 40*zeta^5 + 40*zeta^4 + 40*zeta^2 + 20*zeta - 60)*q^411 + (-14*zeta^11 + 
28*zeta^10 - 28*zeta^7 + 14*zeta^4 + 14*zeta^3 - 14)*q^412 + (12*zeta^11 - 
16*zeta^10 + 4*zeta^8 + 16*zeta^7 - 4*zeta^6 + 8*zeta^5 - 4*zeta^4 - 12*zeta^3 +
8*zeta^2 + 4*zeta + 4)*q^414 + (-8*zeta^11 - 24*zeta^10 - 20*zeta^8 + 80*zeta^7 
+ 20*zeta^6 - 40*zeta^5 - 32*zeta^4 + 8*zeta^3 - 40*zeta^2 - 20*zeta + 60)*q^415
+ (-13*zeta^11 + 24*zeta^10 - zeta^8 + 46*zeta^7 + zeta^6 - 2*zeta^5 + 11*zeta^4
+ 13*zeta^3 - 2*zeta^2 - zeta + 24)*q^416 + (-48*zeta^11 + 80*zeta^10 - 8*zeta^8
+ 144*zeta^7 + 8*zeta^6 - 16*zeta^5 + 32*zeta^4 + 48*zeta^3 - 16*zeta^2 - 8*zeta
+ 80)*q^417 + (-8*zeta^11 + 8*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 
8*zeta^5 + 8*zeta^3 - 8*zeta^2 - 4*zeta + 12)*q^418 + (66*zeta^11 - 68*zeta^10 +
32*zeta^8 + 68*zeta^7 - 32*zeta^6 + 64*zeta^5 - 2*zeta^4 - 66*zeta^3 + 64*zeta^2
+ 32*zeta + 2)*q^419 + (36*zeta^11 - 20*zeta^10 + 26*zeta^8 + 20*zeta^7 - 
26*zeta^6 + 52*zeta^5 + 16*zeta^4 - 36*zeta^3 + 52*zeta^2 + 26*zeta - 16)*q^421 
+ (-28*zeta^11 + 32*zeta^10 - 12*zeta^8 + 48*zeta^7 + 12*zeta^6 - 24*zeta^5 + 
4*zeta^4 + 28*zeta^3 - 24*zeta^2 - 12*zeta + 36)*q^422 + (-12*zeta^11 + 
16*zeta^10 - 4*zeta^8 + 24*zeta^7 + 4*zeta^6 - 8*zeta^5 + 4*zeta^4 + 12*zeta^3 -
8*zeta^2 - 4*zeta + 16)*q^423 + (4*zeta^10 + 2*zeta^8 + 12*zeta^7 - 2*zeta^6 + 
4*zeta^5 + 4*zeta^4 + 4*zeta^2 + 2*zeta + 4)*q^424 + (22*zeta^11 - 10*zeta^10 + 
17*zeta^8 - 68*zeta^7 - 17*zeta^6 + 34*zeta^5 + 12*zeta^4 - 22*zeta^3 + 
34*zeta^2 + 17*zeta - 51)*q^425 + (-12*zeta^11 + 32*zeta^10 + 4*zeta^8 - 
32*zeta^7 - 4*zeta^6 + 8*zeta^5 + 20*zeta^4 + 12*zeta^3 + 8*zeta^2 + 4*zeta - 
20)*q^426 + (4*zeta^11 + 12*zeta^10 + 10*zeta^8 - 12*zeta^7 - 10*zeta^6 + 
20*zeta^5 + 16*zeta^4 - 4*zeta^3 + 20*zeta^2 + 10*zeta - 16)*q^428 + 
(-16*zeta^11 + 8*zeta^10 - 12*zeta^8 + 48*zeta^7 + 12*zeta^6 - 24*zeta^5 - 
8*zeta^4 + 16*zeta^3 - 24*zeta^2 - 12*zeta + 36)*q^429 + (-8*zeta^11 + 
16*zeta^10 + 32*zeta^7 + 8*zeta^4 + 8*zeta^3 + 16)*q^430 + (46*zeta^11 - 
68*zeta^10 + 12*zeta^8 - 112*zeta^7 - 12*zeta^6 + 24*zeta^5 - 22*zeta^4 - 
46*zeta^3 + 24*zeta^2 + 12*zeta - 68)*q^431 + (6*zeta^11 + 6*zeta^8 - 24*zeta^7 
- 6*zeta^6 + 12*zeta^5 + 6*zeta^4 - 6*zeta^3 + 12*zeta^2 + 6*zeta - 18)*q^432 + 
(-41*zeta^11 + 38*zeta^10 - 22*zeta^8 - 38*zeta^7 + 22*zeta^6 - 44*zeta^5 - 
3*zeta^4 + 41*zeta^3 - 44*zeta^2 - 22*zeta + 3)*q^433 + (96*zeta^11 - 80*zeta^10
+ 56*zeta^8 + 80*zeta^7 - 56*zeta^6 + 112*zeta^5 + 16*zeta^4 - 96*zeta^3 + 
112*zeta^2 + 56*zeta - 16)*q^435 + (-16*zeta^11 + 8*zeta^10 - 12*zeta^8 + 
48*zeta^7 + 12*zeta^6 - 24*zeta^5 - 8*zeta^4 + 16*zeta^3 - 24*zeta^2 - 12*zeta +
36)*q^436 + (-28*zeta^11 + 48*zeta^10 - 4*zeta^8 + 88*zeta^7 + 4*zeta^6 - 
8*zeta^5 + 20*zeta^4 + 28*zeta^3 - 8*zeta^2 - 4*zeta + 48)*q^437 + (2*zeta^11 - 
16*zeta^10 - 6*zeta^8 - 44*zeta^7 + 6*zeta^6 - 12*zeta^5 - 14*zeta^4 - 2*zeta^3 
- 12*zeta^2 - 6*zeta - 16)*q^438 + (-24*zeta^11 + 16*zeta^10 - 16*zeta^8 + 
64*zeta^7 + 16*zeta^6 - 32*zeta^5 - 8*zeta^4 + 24*zeta^3 - 32*zeta^2 - 16*zeta +
48)*q^439 + (22*zeta^11 - 20*zeta^10 + 12*zeta^8 + 20*zeta^7 - 12*zeta^6 + 
24*zeta^5 + 2*zeta^4 - 22*zeta^3 + 24*zeta^2 + 12*zeta - 2)*q^440 + (28*zeta^10 
+ 14*zeta^8 - 28*zeta^7 - 14*zeta^6 + 28*zeta^5 + 28*zeta^4 + 28*zeta^2 + 
14*zeta - 28)*q^442 + (-18*zeta^11 - 24*zeta^10 - 30*zeta^8 + 120*zeta^7 + 
30*zeta^6 - 60*zeta^5 - 42*zeta^4 + 18*zeta^3 - 60*zeta^2 - 30*zeta + 90)*q^443 
+ (40*zeta^11 - 48*zeta^10 + 16*zeta^8 - 64*zeta^7 - 16*zeta^6 + 32*zeta^5 - 
8*zeta^4 - 40*zeta^3 + 32*zeta^2 + 16*zeta - 48)*q^444 + (74*zeta^11 - 
116*zeta^10 + 16*zeta^8 - 200*zeta^7 - 16*zeta^6 + 32*zeta^5 - 42*zeta^4 - 
74*zeta^3 + 32*zeta^2 + 16*zeta - 116)*q^445 + (-16*zeta^11 + 8*zeta^10 - 
12*zeta^8 + 48*zeta^7 + 12*zeta^6 - 24*zeta^5 - 8*zeta^4 + 16*zeta^3 - 24*zeta^2
- 12*zeta + 36)*q^446 + (-72*zeta^11 + 56*zeta^10 - 44*zeta^8 - 56*zeta^7 + 
44*zeta^6 - 88*zeta^5 - 16*zeta^4 + 72*zeta^3 - 88*zeta^2 - 44*zeta + 16)*q^447 
+ (-12*zeta^11 + 4*zeta^10 - 10*zeta^8 - 4*zeta^7 + 10*zeta^6 - 20*zeta^5 - 
8*zeta^4 + 12*zeta^3 - 20*zeta^2 - 10*zeta + 8)*q^449 + (14*zeta^11 - 12*zeta^10
+ 8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5 + 2*zeta^4 - 14*zeta^3 + 16*zeta^2
+ 8*zeta - 24)*q^450 + (22*zeta^11 - 32*zeta^10 + 6*zeta^8 - 52*zeta^7 - 
6*zeta^6 + 12*zeta^5 - 10*zeta^4 - 22*zeta^3 + 12*zeta^2 + 6*zeta - 32)*q^451 + 
(22*zeta^11 - 4*zeta^10 + 20*zeta^8 + 32*zeta^7 - 20*zeta^6 + 40*zeta^5 + 
18*zeta^4 - 22*zeta^3 + 40*zeta^2 + 20*zeta - 4)*q^452 + (24*zeta^11 + 24*zeta^8
- 96*zeta^7 - 24*zeta^6 + 48*zeta^5 + 24*zeta^4 - 24*zeta^3 + 48*zeta^2 + 
24*zeta - 72)*q^453 + (18*zeta^11 - 28*zeta^10 + 4*zeta^8 + 28*zeta^7 - 4*zeta^6
+ 8*zeta^5 - 10*zeta^4 - 18*zeta^3 + 8*zeta^2 + 4*zeta + 10)*q^454 + 
(-20*zeta^11 + 8*zeta^10 - 16*zeta^8 - 8*zeta^7 + 16*zeta^6 - 32*zeta^5 - 
12*zeta^4 + 20*zeta^3 - 32*zeta^2 - 16*zeta + 12)*q^456 + (18*zeta^11 + 
18*zeta^8 - 72*zeta^7 - 18*zeta^6 + 36*zeta^5 + 18*zeta^4 - 18*zeta^3 + 
36*zeta^2 + 18*zeta - 54)*q^457 + (-11*zeta^11 + 8*zeta^10 - 7*zeta^8 + 2*zeta^7
+ 7*zeta^6 - 14*zeta^5 - 3*zeta^4 + 11*zeta^3 - 14*zeta^2 - 7*zeta + 8)*q^458 + 
(-14*zeta^11 + 16*zeta^10 - 6*zeta^8 + 20*zeta^7 + 6*zeta^6 - 12*zeta^5 + 
2*zeta^4 + 14*zeta^3 - 12*zeta^2 - 6*zeta + 16)*q^459 + (-28*zeta^11 - 
28*zeta^10 - 42*zeta^8 + 168*zeta^7 + 42*zeta^6 - 84*zeta^5 - 56*zeta^4 + 
28*zeta^3 - 84*zeta^2 - 42*zeta + 126)*q^460 + (-33*zeta^11 + 34*zeta^10 - 
16*zeta^8 - 34*zeta^7 + 16*zeta^6 - 32*zeta^5 + zeta^4 + 33*zeta^3 - 32*zeta^2 -
16*zeta - 1)*q^461 + (-56*zeta^11 + 40*zeta^10 - 36*zeta^8 - 40*zeta^7 + 
36*zeta^6 - 72*zeta^5 - 16*zeta^4 + 56*zeta^3 - 72*zeta^2 - 36*zeta + 16)*q^463 
+ (12*zeta^11 + 12*zeta^10 + 18*zeta^8 - 72*zeta^7 - 18*zeta^6 + 36*zeta^5 + 
24*zeta^4 - 12*zeta^3 + 36*zeta^2 + 18*zeta - 54)*q^464 + (-8*zeta^11 + 
16*zeta^10 + 32*zeta^7 + 8*zeta^4 + 8*zeta^3 + 16)*q^465 + (-26*zeta^11 + 
16*zeta^10 - 18*zeta^8 - 4*zeta^7 + 18*zeta^6 - 36*zeta^5 - 10*zeta^4 + 
26*zeta^3 - 36*zeta^2 - 18*zeta + 16)*q^466 + (-20*zeta^11 + 28*zeta^10 - 
6*zeta^8 + 24*zeta^7 + 6*zeta^6 - 12*zeta^5 + 8*zeta^4 + 20*zeta^3 - 12*zeta^2 -
6*zeta + 18)*q^467 + (22*zeta^11 - 4*zeta^10 + 20*zeta^8 + 4*zeta^7 - 20*zeta^6 
+ 40*zeta^5 + 18*zeta^4 - 22*zeta^3 + 40*zeta^2 + 20*zeta - 18)*q^468 + 
(-8*zeta^11 + 8*zeta^10 - 4*zeta^8 - 8*zeta^7 + 4*zeta^6 - 8*zeta^5 + 8*zeta^3 -
8*zeta^2 - 4*zeta)*q^470 + (32*zeta^11 - 12*zeta^10 + 26*zeta^8 - 104*zeta^7 - 
26*zeta^6 + 52*zeta^5 + 20*zeta^4 - 32*zeta^3 + 52*zeta^2 + 26*zeta - 78)*q^471 
+ (14*zeta^11 - 8*zeta^10 + 10*zeta^8 + 4*zeta^7 - 10*zeta^6 + 20*zeta^5 + 
6*zeta^4 - 14*zeta^3 + 20*zeta^2 + 10*zeta - 8)*q^472 + (24*zeta^11 - 32*zeta^10
+ 8*zeta^8 - 48*zeta^7 - 8*zeta^6 + 16*zeta^5 - 8*zeta^4 - 24*zeta^3 + 16*zeta^2
+ 8*zeta - 32)*q^473 + (16*zeta^10 + 8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 16*zeta^5
+ 16*zeta^4 + 16*zeta^2 + 8*zeta - 24)*q^474 + (-38*zeta^11 + 36*zeta^10 - 
20*zeta^8 - 36*zeta^7 + 20*zeta^6 - 40*zeta^5 - 2*zeta^4 + 38*zeta^3 - 40*zeta^2
- 20*zeta + 2)*q^475 + (8*zeta^11 - 8*zeta^10 + 4*zeta^8 + 8*zeta^7 - 4*zeta^6 +
8*zeta^5 - 8*zeta^3 + 8*zeta^2 + 4*zeta)*q^477 + (-2*zeta^11 + 12*zeta^10 + 
4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 8*zeta^5 + 10*zeta^4 + 2*zeta^3 + 8*zeta^2 + 
4*zeta - 12)*q^478 + (14*zeta^11 - 8*zeta^10 + 10*zeta^8 + 4*zeta^7 - 10*zeta^6 
+ 20*zeta^5 + 6*zeta^4 - 14*zeta^3 + 20*zeta^2 + 10*zeta - 8)*q^479 + 
(46*zeta^11 - 72*zeta^10 + 10*zeta^8 - 124*zeta^7 - 10*zeta^6 + 20*zeta^5 - 
26*zeta^4 - 46*zeta^3 + 20*zeta^2 + 10*zeta - 72)*q^480 + (16*zeta^11 - 
8*zeta^10 + 12*zeta^8 - 48*zeta^7 - 12*zeta^6 + 24*zeta^5 + 8*zeta^4 - 16*zeta^3
+ 24*zeta^2 + 12*zeta - 36)*q^481 + (-15*zeta^11 + 6*zeta^10 - 12*zeta^8 - 
6*zeta^7 + 12*zeta^6 - 24*zeta^5 - 9*zeta^4 + 15*zeta^3 - 24*zeta^2 - 12*zeta + 
9)*q^482 + (28*zeta^11 - 14*zeta^10 + 21*zeta^8 + 14*zeta^7 - 21*zeta^6 + 
42*zeta^5 + 14*zeta^4 - 28*zeta^3 + 42*zeta^2 + 21*zeta - 14)*q^484 + 
(-6*zeta^11 - 4*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 16*zeta^5 - 
10*zeta^4 + 6*zeta^3 - 16*zeta^2 - 8*zeta + 24)*q^485 + (4*zeta^11 - 4*zeta^10 +
2*zeta^8 - 4*zeta^7 - 2*zeta^6 + 4*zeta^5 - 4*zeta^3 + 4*zeta^2 + 2*zeta - 
4)*q^486 + (-52*zeta^11 + 72*zeta^10 - 16*zeta^8 + 112*zeta^7 + 16*zeta^6 - 
32*zeta^5 + 20*zeta^4 + 52*zeta^3 - 32*zeta^2 - 16*zeta + 72)*q^487 + 
(18*zeta^11 + 2*zeta^10 + 19*zeta^8 - 76*zeta^7 - 19*zeta^6 + 38*zeta^5 + 
20*zeta^4 - 18*zeta^3 + 38*zeta^2 + 19*zeta - 57)*q^488 + (48*zeta^11 - 
32*zeta^10 + 32*zeta^8 + 32*zeta^7 - 32*zeta^6 + 64*zeta^5 + 16*zeta^4 - 
48*zeta^3 + 64*zeta^2 + 32*zeta - 16)*q^489 + (8*zeta^11 - 20*zeta^10 - 2*zeta^8
+ 20*zeta^7 + 2*zeta^6 - 4*zeta^5 - 12*zeta^4 - 8*zeta^3 - 4*zeta^2 - 2*zeta + 
12)*q^491 + (-20*zeta^11 - 4*zeta^10 - 22*zeta^8 + 88*zeta^7 + 22*zeta^6 - 
44*zeta^5 - 24*zeta^4 + 20*zeta^3 - 44*zeta^2 - 22*zeta + 66)*q^492 + 
(-28*zeta^11 + 40*zeta^10 - 8*zeta^8 + 64*zeta^7 + 8*zeta^6 - 16*zeta^5 + 
12*zeta^4 + 28*zeta^3 - 16*zeta^2 - 8*zeta + 40)*q^493 + (-16*zeta^11 + 
8*zeta^10 - 12*zeta^8 - 8*zeta^7 + 12*zeta^6 - 24*zeta^5 - 8*zeta^4 + 16*zeta^3 
- 24*zeta^2 - 12*zeta + 8)*q^494 + (-8*zeta^11 - 8*zeta^10 - 12*zeta^8 + 
48*zeta^7 + 12*zeta^6 - 24*zeta^5 - 16*zeta^4 + 8*zeta^3 - 24*zeta^2 - 12*zeta +
36)*q^495 + (-6*zeta^11 + 12*zeta^10 - 12*zeta^7 + 6*zeta^4 + 6*zeta^3 - 
6)*q^496 + (-8*zeta^11 + 32*zeta^10 + 8*zeta^8 - 32*zeta^7 - 8*zeta^6 + 
16*zeta^5 + 24*zeta^4 + 8*zeta^3 + 16*zeta^2 + 8*zeta - 24)*q^498 + (8*zeta^11 -
16*zeta^10 - 8*zeta^4 - 8*zeta^3)*q^499 + (4*zeta^11 - 16*zeta^10 - 4*zeta^8 - 
40*zeta^7 + 4*zeta^6 - 8*zeta^5 - 12*zeta^4 - 4*zeta^3 - 8*zeta^2 - 4*zeta - 
16)*q^500 + (-84*zeta^11 + 112*zeta^10 - 28*zeta^8 + 168*zeta^7 + 28*zeta^6 - 
56*zeta^5 + 28*zeta^4 + 84*zeta^3 - 56*zeta^2 - 28*zeta + 112)*q^501 + 
(8*zeta^11 - 4*zeta^10 + 6*zeta^8 - 24*zeta^7 - 6*zeta^6 + 12*zeta^5 + 4*zeta^4 
- 8*zeta^3 + 12*zeta^2 + 6*zeta - 18)*q^502 + (20*zeta^11 - 20*zeta^10 + 
10*zeta^8 + 20*zeta^7 - 10*zeta^6 + 20*zeta^5 - 20*zeta^3 + 20*zeta^2 + 
10*zeta)*q^505 + (-12*zeta^11 + 8*zeta^10 - 8*zeta^8 + 32*zeta^7 + 8*zeta^6 - 
16*zeta^5 - 4*zeta^4 + 12*zeta^3 - 16*zeta^2 - 8*zeta + 24)*q^506 + (-38*zeta^11
+ 44*zeta^10 - 16*zeta^8 + 56*zeta^7 + 16*zeta^6 - 32*zeta^5 + 6*zeta^4 + 
38*zeta^3 - 32*zeta^2 - 16*zeta + 44)*q^507 + (16*zeta^11 - 8*zeta^10 + 
12*zeta^8 + 8*zeta^7 - 12*zeta^6 + 24*zeta^5 + 8*zeta^4 - 16*zeta^3 + 24*zeta^2 
+ 12*zeta - 8)*q^508 + (10*zeta^11 - 22*zeta^10 - zeta^8 + 4*zeta^7 + zeta^6 - 
2*zeta^5 - 12*zeta^4 - 10*zeta^3 - 2*zeta^2 - zeta + 3)*q^509 + (12*zeta^11 - 
16*zeta^10 + 4*zeta^8 + 16*zeta^7 - 4*zeta^6 + 8*zeta^5 - 4*zeta^4 - 12*zeta^3 +
8*zeta^2 + 4*zeta + 4)*q^510 + (45*zeta^11 - 48*zeta^10 + 21*zeta^8 + 48*zeta^7 
- 21*zeta^6 + 42*zeta^5 - 3*zeta^4 - 45*zeta^3 + 42*zeta^2 + 21*zeta + 3)*q^512 
+ (-8*zeta^10 - 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 8*zeta^5 - 8*zeta^4 - 8*zeta^2
- 4*zeta + 12)*q^513 + (11*zeta^11 + 4*zeta^10 + 13*zeta^8 + 34*zeta^7 - 
13*zeta^6 + 26*zeta^5 + 15*zeta^4 - 11*zeta^3 + 26*zeta^2 + 13*zeta + 4)*q^514 +
(-28*zeta^11 + 40*zeta^10 - 8*zeta^8 + 64*zeta^7 + 8*zeta^6 - 16*zeta^5 + 
12*zeta^4 + 28*zeta^3 - 16*zeta^2 - 8*zeta + 40)*q^515 + (-32*zeta^11 + 
16*zeta^10 - 24*zeta^8 + 96*zeta^7 + 24*zeta^6 - 48*zeta^5 - 16*zeta^4 + 
32*zeta^3 - 48*zeta^2 - 24*zeta + 72)*q^516 + (12*zeta^11 - 8*zeta^10 + 8*zeta^8
+ 8*zeta^7 - 8*zeta^6 + 16*zeta^5 + 4*zeta^4 - 12*zeta^3 + 16*zeta^2 + 8*zeta - 
4)*q^517 + (-86*zeta^11 + 76*zeta^10 - 48*zeta^8 - 76*zeta^7 + 48*zeta^6 - 
96*zeta^5 - 10*zeta^4 + 86*zeta^3 - 96*zeta^2 - 48*zeta + 10)*q^519 + 
(14*zeta^11 + 14*zeta^8 - 56*zeta^7 - 14*zeta^6 + 28*zeta^5 + 14*zeta^4 - 
14*zeta^3 + 28*zeta^2 + 14*zeta - 42)*q^520 + (37*zeta^11 - 72*zeta^10 + zeta^8 
- 142*zeta^7 - zeta^6 + 2*zeta^5 - 35*zeta^4 - 37*zeta^3 + 2*zeta^2 + zeta - 
72)*q^521 + (-12*zeta^11 + 16*zeta^10 - 4*zeta^8 + 24*zeta^7 + 4*zeta^6 - 
8*zeta^5 + 4*zeta^4 + 12*zeta^3 - 8*zeta^2 - 4*zeta + 16)*q^522 + (20*zeta^11 + 
8*zeta^10 + 24*zeta^8 - 96*zeta^7 - 24*zeta^6 + 48*zeta^5 + 28*zeta^4 - 
20*zeta^3 + 48*zeta^2 + 24*zeta - 72)*q^523 + (56*zeta^11 - 56*zeta^10 + 
28*zeta^8 + 56*zeta^7 - 28*zeta^6 + 56*zeta^5 - 56*zeta^3 + 56*zeta^2 + 
28*zeta)*q^524 + (2*zeta^11 - 16*zeta^10 - 6*zeta^8 + 16*zeta^7 + 6*zeta^6 - 
12*zeta^5 - 14*zeta^4 - 2*zeta^3 - 12*zeta^2 - 6*zeta + 14)*q^526 + (20*zeta^11 
- 32*zeta^10 + 4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 8*zeta^5 - 12*zeta^4 - 
20*zeta^3 + 8*zeta^2 + 4*zeta - 12)*q^527 + (-12*zeta^11 + 24*zeta^10 + 
48*zeta^7 + 12*zeta^4 + 12*zeta^3 + 24)*q^528 + (-61*zeta^11 + 90*zeta^10 - 
16*zeta^8 + 148*zeta^7 + 16*zeta^6 - 32*zeta^5 + 29*zeta^4 + 61*zeta^3 - 
32*zeta^2 - 16*zeta + 90)*q^529 + (4*zeta^10 + 2*zeta^8 - 8*zeta^7 - 2*zeta^6 + 
4*zeta^5 + 4*zeta^4 + 4*zeta^2 + 2*zeta - 6)*q^530 + (4*zeta^11 - 8*zeta^10 + 
8*zeta^7 - 4*zeta^4 - 4*zeta^3 + 4)*q^531 + (34*zeta^11 - 24*zeta^10 + 22*zeta^8
+ 24*zeta^7 - 22*zeta^6 + 44*zeta^5 + 10*zeta^4 - 34*zeta^3 + 44*zeta^2 + 
22*zeta - 10)*q^533 + (8*zeta^11 - 28*zeta^10 - 6*zeta^8 + 24*zeta^7 + 6*zeta^6 
- 12*zeta^5 - 20*zeta^4 - 8*zeta^3 - 12*zeta^2 - 6*zeta + 18)*q^534 + 
(-2*zeta^11 - 2*zeta^8 - 4*zeta^7 + 2*zeta^6 - 4*zeta^5 - 2*zeta^4 + 2*zeta^3 - 
4*zeta^2 - 2*zeta)*q^535 + (-28*zeta^11 + 32*zeta^10 - 12*zeta^8 + 40*zeta^7 + 
12*zeta^6 - 24*zeta^5 + 4*zeta^4 + 28*zeta^3 - 24*zeta^2 - 12*zeta + 32)*q^536 +
(-28*zeta^11 - 16*zeta^10 - 36*zeta^8 + 144*zeta^7 + 36*zeta^6 - 72*zeta^5 - 
44*zeta^4 + 28*zeta^3 - 72*zeta^2 - 36*zeta + 108)*q^537 + (-11*zeta^11 + 
18*zeta^10 - 2*zeta^8 - 18*zeta^7 + 2*zeta^6 - 4*zeta^5 + 7*zeta^4 + 11*zeta^3 -
4*zeta^2 - 2*zeta - 7)*q^538 + (26*zeta^11 - 20*zeta^10 + 16*zeta^8 + 20*zeta^7 
- 16*zeta^6 + 32*zeta^5 + 6*zeta^4 - 26*zeta^3 + 32*zeta^2 + 16*zeta - 6)*q^540 
+ (-6*zeta^11 - 16*zeta^10 - 14*zeta^8 + 56*zeta^7 + 14*zeta^6 - 28*zeta^5 - 
22*zeta^4 + 6*zeta^3 - 28*zeta^2 - 14*zeta + 42)*q^541 + (-18*zeta^11 + 
8*zeta^10 - 14*zeta^8 - 12*zeta^7 + 14*zeta^6 - 28*zeta^5 - 10*zeta^4 + 
18*zeta^3 - 28*zeta^2 - 14*zeta + 8)*q^542 + (-2*zeta^11 + 8*zeta^10 + 2*zeta^8 
+ 20*zeta^7 - 2*zeta^6 + 4*zeta^5 + 6*zeta^4 + 2*zeta^3 + 4*zeta^2 + 2*zeta + 
8)*q^543 + (14*zeta^10 + 7*zeta^8 - 28*zeta^7 - 7*zeta^6 + 14*zeta^5 + 14*zeta^4
+ 14*zeta^2 + 7*zeta - 21)*q^544 + (-40*zeta^11 + 32*zeta^10 - 24*zeta^8 - 
32*zeta^7 + 24*zeta^6 - 48*zeta^5 - 8*zeta^4 + 40*zeta^3 - 48*zeta^2 - 24*zeta +
8)*q^545 + (-76*zeta^11 + 64*zeta^10 - 44*zeta^8 - 64*zeta^7 + 44*zeta^6 - 
88*zeta^5 - 12*zeta^4 + 76*zeta^3 - 88*zeta^2 - 44*zeta + 12)*q^547 + 
(40*zeta^11 - 20*zeta^10 + 30*zeta^8 - 120*zeta^7 - 30*zeta^6 + 60*zeta^5 + 
20*zeta^4 - 40*zeta^3 + 60*zeta^2 + 30*zeta - 90)*q^548 + (34*zeta^11 - 
56*zeta^10 + 6*zeta^8 - 100*zeta^7 - 6*zeta^6 + 12*zeta^5 - 22*zeta^4 - 
34*zeta^3 + 12*zeta^2 + 6*zeta - 56)*q^549 + (-4*zeta^11 - 4*zeta^10 - 6*zeta^8 
- 20*zeta^7 + 6*zeta^6 - 12*zeta^5 - 8*zeta^4 + 4*zeta^3 - 12*zeta^2 - 6*zeta - 
4)*q^550 + (-8*zeta^11 - 16*zeta^10 - 16*zeta^8 + 64*zeta^7 + 16*zeta^6 - 
32*zeta^5 - 24*zeta^4 + 8*zeta^3 - 32*zeta^2 - 16*zeta + 48)*q^551 + 
(-52*zeta^11 + 32*zeta^10 - 36*zeta^8 - 32*zeta^7 + 36*zeta^6 - 72*zeta^5 - 
20*zeta^4 + 52*zeta^3 - 72*zeta^2 - 36*zeta + 20)*q^552 + (-6*zeta^11 + 
16*zeta^10 + 2*zeta^8 - 16*zeta^7 - 2*zeta^6 + 4*zeta^5 + 10*zeta^4 + 6*zeta^3 +
4*zeta^2 + 2*zeta - 10)*q^554 + (-16*zeta^11 - 16*zeta^10 - 24*zeta^8 + 
96*zeta^7 + 24*zeta^6 - 48*zeta^5 - 32*zeta^4 + 16*zeta^3 - 48*zeta^2 - 24*zeta 
+ 72)*q^555 + (-64*zeta^11 + 88*zeta^10 - 20*zeta^8 + 136*zeta^7 + 20*zeta^6 - 
40*zeta^5 + 24*zeta^4 + 64*zeta^3 - 40*zeta^2 - 20*zeta + 88)*q^556 + 
(-26*zeta^11 + 52*zeta^10 + 104*zeta^7 + 26*zeta^4 + 26*zeta^3 + 52)*q^557 + 
(16*zeta^11 - 24*zeta^10 + 4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 8*zeta^5 - 8*zeta^4
- 16*zeta^3 + 8*zeta^2 + 4*zeta - 12)*q^558 + (32*zeta^11 - 16*zeta^10 + 
24*zeta^8 + 16*zeta^7 - 24*zeta^6 + 48*zeta^5 + 16*zeta^4 - 32*zeta^3 + 
48*zeta^2 + 24*zeta - 16)*q^559 + (-20*zeta^11 + 8*zeta^10 - 16*zeta^8 - 
8*zeta^7 + 16*zeta^6 - 32*zeta^5 - 12*zeta^4 + 20*zeta^3 - 32*zeta^2 - 16*zeta +
12)*q^561 + (-20*zeta^11 + 28*zeta^10 - 6*zeta^8 + 24*zeta^7 + 6*zeta^6 - 
12*zeta^5 + 8*zeta^4 + 20*zeta^3 - 12*zeta^2 - 6*zeta + 18)*q^562 + (-2*zeta^11 
- 2*zeta^8 - 4*zeta^7 + 2*zeta^6 - 4*zeta^5 - 2*zeta^4 + 2*zeta^3 - 4*zeta^2 - 
2*zeta)*q^563 + (4*zeta^11 - 16*zeta^10 - 4*zeta^8 - 40*zeta^7 + 4*zeta^6 - 
8*zeta^5 - 12*zeta^4 - 4*zeta^3 - 8*zeta^2 - 4*zeta - 16)*q^564 + (4*zeta^11 + 
20*zeta^10 + 14*zeta^8 - 56*zeta^7 - 14*zeta^6 + 28*zeta^5 + 24*zeta^4 - 
4*zeta^3 + 28*zeta^2 + 14*zeta - 42)*q^565 + (-6*zeta^11 + 12*zeta^10 - 
12*zeta^7 + 6*zeta^4 + 6*zeta^3 - 6)*q^566 + (-34*zeta^11 + 8*zeta^10 - 
30*zeta^8 - 8*zeta^7 + 30*zeta^6 - 60*zeta^5 - 26*zeta^4 + 34*zeta^3 - 60*zeta^2
- 30*zeta + 26)*q^568 + (8*zeta^11 + 12*zeta^10 + 14*zeta^8 - 56*zeta^7 - 
14*zeta^6 + 28*zeta^5 + 20*zeta^4 - 8*zeta^3 + 28*zeta^2 + 14*zeta - 42)*q^569 +
(-8*zeta^11 + 16*zeta^10 + 32*zeta^7 + 8*zeta^4 + 8*zeta^3 + 16)*q^570 + 
(-16*zeta^11 + 40*zeta^10 + 4*zeta^8 + 88*zeta^7 - 4*zeta^6 + 8*zeta^5 + 
24*zeta^4 + 16*zeta^3 + 8*zeta^2 + 4*zeta + 40)*q^571 + (16*zeta^11 - 36*zeta^10
- 2*zeta^8 + 8*zeta^7 + 2*zeta^6 - 4*zeta^5 - 20*zeta^4 - 16*zeta^3 - 4*zeta^2 -
2*zeta + 6)*q^572 + (72*zeta^11 - 72*zeta^10 + 36*zeta^8 + 72*zeta^7 - 36*zeta^6
+ 72*zeta^5 - 72*zeta^3 + 72*zeta^2 + 36*zeta)*q^573 + (-104*zeta^11 + 
92*zeta^10 - 58*zeta^8 - 92*zeta^7 + 58*zeta^6 - 116*zeta^5 - 12*zeta^4 + 
104*zeta^3 - 116*zeta^2 - 58*zeta + 12)*q^575 + (-14*zeta^11 + 8*zeta^10 - 
10*zeta^8 + 40*zeta^7 + 10*zeta^6 - 20*zeta^5 - 6*zeta^4 + 14*zeta^3 - 20*zeta^2
- 10*zeta + 30)*q^576 + (45*zeta^11 - 76*zeta^10 + 7*zeta^8 - 138*zeta^7 - 
7*zeta^6 + 14*zeta^5 - 31*zeta^4 - 45*zeta^3 + 14*zeta^2 + 7*zeta - 76)*q^577 + 
(-22*zeta^11 + 10*zeta^10 - 17*zeta^8 - 14*zeta^7 + 17*zeta^6 - 34*zeta^5 - 
12*zeta^4 + 22*zeta^3 - 34*zeta^2 - 17*zeta + 10)*q^578 + (-12*zeta^11 + 
32*zeta^10 + 4*zeta^8 - 16*zeta^7 - 4*zeta^6 + 8*zeta^5 + 20*zeta^4 + 12*zeta^3 
+ 8*zeta^2 + 4*zeta - 12)*q^579 + (88*zeta^11 - 72*zeta^10 + 52*zeta^8 + 
72*zeta^7 - 52*zeta^6 + 104*zeta^5 + 16*zeta^4 - 88*zeta^3 + 104*zeta^2 + 
52*zeta - 16)*q^580 + (-6*zeta^11 - 4*zeta^10 - 8*zeta^8 + 4*zeta^7 + 8*zeta^6 -
16*zeta^5 - 10*zeta^4 + 6*zeta^3 - 16*zeta^2 - 8*zeta + 10)*q^582 + (-4*zeta^11 
- 4*zeta^8 + 16*zeta^7 + 4*zeta^6 - 8*zeta^5 - 4*zeta^4 + 4*zeta^3 - 8*zeta^2 - 
4*zeta + 12)*q^583 + (49*zeta^11 - 64*zeta^10 + 17*zeta^8 - 94*zeta^7 - 
17*zeta^6 + 34*zeta^5 - 15*zeta^4 - 49*zeta^3 + 34*zeta^2 + 17*zeta - 64)*q^584 
+ (24*zeta^11 - 40*zeta^10 + 4*zeta^8 - 72*zeta^7 - 4*zeta^6 + 8*zeta^5 - 
16*zeta^4 - 24*zeta^3 + 8*zeta^2 + 4*zeta - 40)*q^585 + (20*zeta^11 - 38*zeta^10
+ zeta^8 - 4*zeta^7 - zeta^6 + 2*zeta^5 - 18*zeta^4 - 20*zeta^3 + 2*zeta^2 + 
zeta - 3)*q^586 + (-46*zeta^11 + 44*zeta^10 - 24*zeta^8 - 44*zeta^7 + 24*zeta^6 
- 48*zeta^5 - 2*zeta^4 + 46*zeta^3 - 48*zeta^2 - 24*zeta + 2)*q^587 + (8*zeta^11
+ 8*zeta^8 - 8*zeta^6 + 16*zeta^5 + 8*zeta^4 - 8*zeta^3 + 16*zeta^2 + 8*zeta - 
8)*q^589 + (-4*zeta^11 + 8*zeta^10 + 4*zeta^4 + 4*zeta^3)*q^590 + (4*zeta^11 - 
8*zeta^10 - 16*zeta^7 - 4*zeta^4 - 4*zeta^3 - 8)*q^591 + (12*zeta^11 - 
24*zeta^10 - 48*zeta^7 - 12*zeta^4 - 12*zeta^3 - 24)*q^592 + (14*zeta^11 - 
10*zeta^10 + 9*zeta^8 - 36*zeta^7 - 9*zeta^6 + 18*zeta^5 + 4*zeta^4 - 14*zeta^3 
+ 18*zeta^2 + 9*zeta - 27)*q^593 + (4*zeta^11 + 4*zeta^8 - 4*zeta^6 + 8*zeta^5 +
4*zeta^4 - 4*zeta^3 + 8*zeta^2 + 4*zeta - 4)*q^594 + (-64*zeta^11 + 60*zeta^10 -
34*zeta^8 - 60*zeta^7 + 34*zeta^6 - 68*zeta^5 - 4*zeta^4 + 64*zeta^3 - 68*zeta^2
- 34*zeta + 4)*q^596 + (32*zeta^11 + 16*zeta^10 + 40*zeta^8 - 160*zeta^7 - 
40*zeta^6 + 80*zeta^5 + 48*zeta^4 - 32*zeta^3 + 80*zeta^2 + 40*zeta - 120)*q^597
+ (-14*zeta^11 - 14*zeta^8 - 28*zeta^7 + 14*zeta^6 - 28*zeta^5 - 14*zeta^4 + 
14*zeta^3 - 28*zeta^2 - 14*zeta)*q^598 + (2*zeta^11 - 4*zeta^10 - 8*zeta^7 - 
2*zeta^4 - 2*zeta^3 - 4)*q^599 + (10*zeta^11 - 44*zeta^10 - 12*zeta^8 + 
48*zeta^7 + 12*zeta^6 - 24*zeta^5 - 34*zeta^4 - 10*zeta^3 - 24*zeta^2 - 12*zeta 
+ 36)*q^600 + (-31*zeta^11 + 26*zeta^10 - 18*zeta^8 - 26*zeta^7 + 18*zeta^6 - 
36*zeta^5 - 5*zeta^4 + 31*zeta^3 - 36*zeta^2 - 18*zeta + 5)*q^601 + (24*zeta^11 
- 16*zeta^10 + 16*zeta^8 + 16*zeta^7 - 16*zeta^6 + 32*zeta^5 + 8*zeta^4 - 
24*zeta^3 + 32*zeta^2 + 16*zeta - 8)*q^603 + (-12*zeta^11 + 48*zeta^10 + 
12*zeta^8 - 48*zeta^7 - 12*zeta^6 + 24*zeta^5 + 36*zeta^4 + 12*zeta^3 + 
24*zeta^2 + 12*zeta - 36)*q^604 + (35*zeta^11 - 56*zeta^10 + 7*zeta^8 - 
98*zeta^7 - 7*zeta^6 + 14*zeta^5 - 21*zeta^4 - 35*zeta^3 + 14*zeta^2 + 7*zeta - 
56)*q^605 + (50*zeta^11 - 40*zeta^10 + 30*zeta^8 - 20*zeta^7 - 30*zeta^6 + 
60*zeta^5 + 10*zeta^4 - 50*zeta^3 + 60*zeta^2 + 30*zeta - 40)*q^606 + 
(24*zeta^11 - 8*zeta^10 + 20*zeta^8 - 80*zeta^7 - 20*zeta^6 + 40*zeta^5 + 
16*zeta^4 - 24*zeta^3 + 40*zeta^2 + 20*zeta - 60)*q^607 + (-26*zeta^11 + 
20*zeta^10 - 16*zeta^8 - 20*zeta^7 + 16*zeta^6 - 32*zeta^5 - 6*zeta^4 + 
26*zeta^3 - 32*zeta^2 - 16*zeta + 6)*q^608 + O(q^609), (-zeta^11 + 2*zeta^8 - 
2*zeta^6 - zeta^4 + zeta^3 + 2*zeta + 2)*q + (-6*zeta^11 - 2*zeta^8 + 2*zeta^6 -
6*zeta^4 + 6*zeta^3 - 2*zeta - 2)*q^4 + (-13*zeta^11 - 2*zeta^8 + 2*zeta^6 - 
13*zeta^4 + 13*zeta^3 - 2*zeta + 5)*q^7 + (7*zeta^11 - 14*zeta^8 + 14*zeta^6 + 
7*zeta^4 - 7*zeta^3 - 14*zeta - 14)*q^13 + (-8*zeta^11 - 12*zeta^8 + 12*zeta^6 -
8*zeta^4 + 8*zeta^3 - 12*zeta + 16)*q^16 + (14*zeta^11 + 21*zeta^8 - 21*zeta^6 +
14*zeta^4 - 14*zeta^3 + 21*zeta - 28)*q^19 + (-15*zeta^11 - 5*zeta^8 + 5*zeta^6 
- 15*zeta^4 + 15*zeta^3 - 5*zeta - 5)*q^25 + (-22*zeta^11 - 26*zeta^8 + 
26*zeta^6 - 22*zeta^4 + 22*zeta^3 - 26*zeta + 16)*q^28 + (-21*zeta^11 - 7*zeta^8
+ 7*zeta^6 - 21*zeta^4 + 21*zeta^3 - 7*zeta - 7)*q^31 + (2*zeta^11 + 3*zeta^8 - 
3*zeta^6 + 2*zeta^4 - 2*zeta^3 + 3*zeta - 4)*q^37 + (-5*zeta^11 + 10*zeta^8 - 
10*zeta^6 - 5*zeta^4 + 5*zeta^3 + 10*zeta + 10)*q^43 + (20*zeta^11 + 37*zeta^8 -
37*zeta^6 + 20*zeta^4 - 20*zeta^3 + 37*zeta - 19)*q^49 + (42*zeta^11 + 14*zeta^8
- 14*zeta^6 + 42*zeta^4 - 42*zeta^3 + 14*zeta + 14)*q^52 + (-28*zeta^11 - 
42*zeta^8 + 42*zeta^6 - 28*zeta^4 + 28*zeta^3 - 42*zeta + 56)*q^61 + (8*zeta^11 
- 16*zeta^8 + 16*zeta^6 + 8*zeta^4 - 8*zeta^3 - 16*zeta - 16)*q^64 + (33*zeta^11
+ 11*zeta^8 - 11*zeta^6 + 33*zeta^4 - 33*zeta^3 + 11*zeta + 11)*q^67 + 
(-21*zeta^11 - 7*zeta^8 + 7*zeta^6 - 21*zeta^4 + 21*zeta^3 - 7*zeta - 7)*q^73 + 
(-14*zeta^11 + 28*zeta^8 - 28*zeta^6 - 14*zeta^4 + 14*zeta^3 + 28*zeta + 
28)*q^76 + (26*zeta^11 + 39*zeta^8 - 39*zeta^6 + 26*zeta^4 - 26*zeta^3 + 39*zeta
- 52)*q^79 + (91*zeta^11 + 14*zeta^8 - 14*zeta^6 + 91*zeta^4 - 91*zeta^3 + 
14*zeta - 35)*q^91 + (-14*zeta^11 + 28*zeta^8 - 28*zeta^6 - 14*zeta^4 + 
14*zeta^3 + 28*zeta + 28)*q^97 + (-20*zeta^11 - 30*zeta^8 + 30*zeta^6 - 
20*zeta^4 + 20*zeta^3 - 30*zeta + 40)*q^100 + (14*zeta^11 + 21*zeta^8 - 
21*zeta^6 + 14*zeta^4 - 14*zeta^3 + 21*zeta - 28)*q^103 + (51*zeta^11 + 
17*zeta^8 - 17*zeta^6 + 51*zeta^4 - 51*zeta^3 + 17*zeta + 17)*q^109 + (8*zeta^11
- 44*zeta^8 + 44*zeta^6 + 8*zeta^4 - 8*zeta^3 - 44*zeta + 12)*q^112 + 
(22*zeta^11 + 33*zeta^8 - 33*zeta^6 + 22*zeta^4 - 22*zeta^3 + 33*zeta - 
44)*q^121 + (-28*zeta^11 - 42*zeta^8 + 42*zeta^6 - 28*zeta^4 + 28*zeta^3 - 
42*zeta + 56)*q^124 + (19*zeta^11 - 38*zeta^8 + 38*zeta^6 + 19*zeta^4 - 
19*zeta^3 - 38*zeta - 38)*q^127 + (-14*zeta^11 + 77*zeta^8 - 77*zeta^6 - 
14*zeta^4 + 14*zeta^3 + 77*zeta - 21)*q^133 + (7*zeta^11 - 14*zeta^8 + 14*zeta^6
+ 7*zeta^4 - 7*zeta^3 - 14*zeta - 14)*q^139 + (-2*zeta^11 + 4*zeta^8 - 4*zeta^6 
- 2*zeta^4 + 2*zeta^3 + 4*zeta + 4)*q^148 + (-12*zeta^11 - 4*zeta^8 + 4*zeta^6 -
12*zeta^4 + 12*zeta^3 - 4*zeta - 4)*q^151 + (42*zeta^11 + 14*zeta^8 - 14*zeta^6 
+ 42*zeta^4 - 42*zeta^3 + 14*zeta + 14)*q^157 + (-16*zeta^11 - 24*zeta^8 + 
24*zeta^6 - 16*zeta^4 + 16*zeta^3 - 24*zeta + 32)*q^163 + (-36*zeta^11 + 
72*zeta^8 - 72*zeta^6 - 36*zeta^4 + 36*zeta^3 + 72*zeta + 72)*q^169 + 
(-30*zeta^11 - 10*zeta^8 + 10*zeta^6 - 30*zeta^4 + 30*zeta^3 - 10*zeta - 
10)*q^172 + (-55*zeta^11 - 65*zeta^8 + 65*zeta^6 - 55*zeta^4 + 55*zeta^3 - 
65*zeta + 40)*q^175 + (7*zeta^11 - 14*zeta^8 + 14*zeta^6 + 7*zeta^4 - 7*zeta^3 -
14*zeta - 14)*q^181 + (-75*zeta^11 - 25*zeta^8 + 25*zeta^6 - 75*zeta^4 + 
75*zeta^3 - 25*zeta - 25)*q^193 + (-34*zeta^11 + 40*zeta^8 - 40*zeta^6 - 
34*zeta^4 + 34*zeta^3 + 40*zeta - 2)*q^196 + (-84*zeta^11 - 28*zeta^8 + 
28*zeta^6 - 84*zeta^4 + 84*zeta^3 - 28*zeta - 28)*q^199 + (56*zeta^11 + 
84*zeta^8 - 84*zeta^6 + 56*zeta^4 - 56*zeta^3 + 84*zeta - 112)*q^208 + 
(16*zeta^11 - 32*zeta^8 + 32*zeta^6 + 16*zeta^4 - 16*zeta^3 - 32*zeta - 
32)*q^211 + (-77*zeta^11 - 91*zeta^8 + 91*zeta^6 - 77*zeta^4 + 77*zeta^3 - 
91*zeta + 56)*q^217 + (28*zeta^11 - 56*zeta^8 + 56*zeta^6 + 28*zeta^4 - 
28*zeta^3 - 56*zeta - 56)*q^223 + (14*zeta^11 + 21*zeta^8 - 21*zeta^6 + 
14*zeta^4 - 14*zeta^3 + 21*zeta - 28)*q^229 + (42*zeta^11 + 14*zeta^8 - 
14*zeta^6 + 42*zeta^4 - 42*zeta^3 + 14*zeta + 14)*q^241 + (28*zeta^11 - 
56*zeta^8 + 56*zeta^6 + 28*zeta^4 - 28*zeta^3 - 56*zeta - 56)*q^244 + 
(-98*zeta^11 - 147*zeta^8 + 147*zeta^6 - 98*zeta^4 + 98*zeta^3 - 147*zeta + 
196)*q^247 + (48*zeta^11 + 16*zeta^8 - 16*zeta^6 + 48*zeta^4 - 48*zeta^3 + 
16*zeta + 16)*q^256 + (-2*zeta^11 + 11*zeta^8 - 11*zeta^6 - 2*zeta^4 + 2*zeta^3 
+ 11*zeta - 3)*q^259 + (44*zeta^11 + 66*zeta^8 - 66*zeta^6 + 44*zeta^4 - 
44*zeta^3 + 66*zeta - 88)*q^268 + (56*zeta^11 + 84*zeta^8 - 84*zeta^6 + 
56*zeta^4 - 56*zeta^3 + 84*zeta - 112)*q^271 + (-93*zeta^11 - 31*zeta^8 + 
31*zeta^6 - 93*zeta^4 + 93*zeta^3 - 31*zeta - 31)*q^277 + (-21*zeta^11 - 
7*zeta^8 + 7*zeta^6 - 21*zeta^4 + 21*zeta^3 - 7*zeta - 7)*q^283 + (34*zeta^11 + 
51*zeta^8 - 51*zeta^6 + 34*zeta^4 - 34*zeta^3 + 51*zeta - 68)*q^289 + 
(-28*zeta^11 - 42*zeta^8 + 42*zeta^6 - 28*zeta^4 + 28*zeta^3 - 42*zeta + 
56)*q^292 + (-65*zeta^11 - 10*zeta^8 + 10*zeta^6 - 65*zeta^4 + 65*zeta^3 - 
10*zeta + 25)*q^301 + (-84*zeta^11 - 28*zeta^8 + 28*zeta^6 - 84*zeta^4 + 
84*zeta^3 - 28*zeta - 28)*q^304 + (-35*zeta^11 + 70*zeta^8 - 70*zeta^6 - 
35*zeta^4 + 35*zeta^3 + 70*zeta + 70)*q^307 + (-70*zeta^11 - 105*zeta^8 + 
105*zeta^6 - 70*zeta^4 + 70*zeta^3 - 105*zeta + 140)*q^313 + (-26*zeta^11 + 
52*zeta^8 - 52*zeta^6 - 26*zeta^4 + 26*zeta^3 + 52*zeta + 52)*q^316 + 
(105*zeta^11 + 35*zeta^8 - 35*zeta^6 + 105*zeta^4 - 105*zeta^3 + 35*zeta + 
35)*q^325 + (2*zeta^11 + 3*zeta^8 - 3*zeta^6 + 2*zeta^4 - 2*zeta^3 + 3*zeta - 
4)*q^331 + (-5*zeta^11 + 10*zeta^8 - 10*zeta^6 - 5*zeta^4 + 5*zeta^3 + 10*zeta +
10)*q^337 + (71*zeta^11 - 23*zeta^8 + 23*zeta^6 + 71*zeta^4 - 71*zeta^3 - 
23*zeta - 16)*q^343 + (-14*zeta^11 + 28*zeta^8 - 28*zeta^6 - 14*zeta^4 + 
14*zeta^3 + 28*zeta + 28)*q^349 + (90*zeta^11 + 30*zeta^8 - 30*zeta^6 + 
90*zeta^4 - 90*zeta^3 + 30*zeta + 30)*q^361 + (154*zeta^11 + 182*zeta^8 - 
182*zeta^6 + 154*zeta^4 - 154*zeta^3 + 182*zeta - 112)*q^364 + (105*zeta^11 + 
35*zeta^8 - 35*zeta^6 + 105*zeta^4 - 105*zeta^3 + 35*zeta + 35)*q^367 + 
(26*zeta^11 + 39*zeta^8 - 39*zeta^6 + 26*zeta^4 - 26*zeta^3 + 39*zeta - 
52)*q^373 + (37*zeta^11 - 74*zeta^8 + 74*zeta^6 + 37*zeta^4 - 37*zeta^3 - 
74*zeta - 74)*q^379 + (-84*zeta^11 - 28*zeta^8 + 28*zeta^6 - 84*zeta^4 + 
84*zeta^3 - 28*zeta - 28)*q^388 + (-70*zeta^11 - 105*zeta^8 + 105*zeta^6 - 
70*zeta^4 + 70*zeta^3 - 105*zeta + 140)*q^397 + (20*zeta^11 - 40*zeta^8 + 
40*zeta^6 + 20*zeta^4 - 20*zeta^3 - 40*zeta - 40)*q^400 + (147*zeta^11 + 
49*zeta^8 - 49*zeta^6 + 147*zeta^4 - 147*zeta^3 + 49*zeta + 49)*q^403 + 
(-21*zeta^11 - 7*zeta^8 + 7*zeta^6 - 21*zeta^4 + 21*zeta^3 - 7*zeta - 7)*q^409 +
(-14*zeta^11 + 28*zeta^8 - 28*zeta^6 - 14*zeta^4 + 14*zeta^3 + 28*zeta + 
28)*q^412 + (19*zeta^11 - 38*zeta^8 + 38*zeta^6 + 19*zeta^4 - 19*zeta^3 - 
38*zeta - 38)*q^421 + (28*zeta^11 - 154*zeta^8 + 154*zeta^6 + 28*zeta^4 - 
28*zeta^3 - 154*zeta + 42)*q^427 + (-35*zeta^11 + 70*zeta^8 - 70*zeta^6 - 
35*zeta^4 + 35*zeta^3 + 70*zeta + 70)*q^433 + (68*zeta^11 + 102*zeta^8 - 
102*zeta^6 + 68*zeta^4 - 68*zeta^3 + 102*zeta - 136)*q^436 + (56*zeta^11 + 
84*zeta^8 - 84*zeta^6 + 56*zeta^4 - 56*zeta^3 + 84*zeta - 112)*q^439 + 
(104*zeta^11 + 16*zeta^8 - 16*zeta^6 + 104*zeta^4 - 104*zeta^3 + 16*zeta - 
40)*q^448 + (-82*zeta^11 - 123*zeta^8 + 123*zeta^6 - 82*zeta^4 + 82*zeta^3 - 
123*zeta + 164)*q^457 + (-23*zeta^11 + 46*zeta^8 - 46*zeta^6 - 23*zeta^4 + 
23*zeta^3 + 46*zeta + 46)*q^463 + (121*zeta^11 + 143*zeta^8 - 143*zeta^6 + 
121*zeta^4 - 121*zeta^3 + 143*zeta - 88)*q^469 + (-35*zeta^11 + 70*zeta^8 - 
70*zeta^6 - 35*zeta^4 + 35*zeta^3 + 70*zeta + 70)*q^475 + (-14*zeta^11 - 
21*zeta^8 + 21*zeta^6 - 14*zeta^4 + 14*zeta^3 - 21*zeta + 28)*q^481 + 
(-22*zeta^11 + 44*zeta^8 - 44*zeta^6 - 22*zeta^4 + 22*zeta^3 + 44*zeta + 
44)*q^484 + (-75*zeta^11 - 25*zeta^8 + 25*zeta^6 - 75*zeta^4 + 75*zeta^3 - 
25*zeta - 25)*q^487 + (28*zeta^11 - 56*zeta^8 + 56*zeta^6 + 28*zeta^4 - 
28*zeta^3 - 56*zeta - 56)*q^496 + (86*zeta^11 + 129*zeta^8 - 129*zeta^6 + 
86*zeta^4 - 86*zeta^3 + 129*zeta - 172)*q^499 + (114*zeta^11 + 38*zeta^8 - 
38*zeta^6 + 114*zeta^4 - 114*zeta^3 + 38*zeta + 38)*q^508 + (-77*zeta^11 - 
91*zeta^8 + 91*zeta^6 - 77*zeta^4 + 77*zeta^3 - 91*zeta + 56)*q^511 + 
(-70*zeta^11 - 105*zeta^8 + 105*zeta^6 - 70*zeta^4 + 70*zeta^3 - 105*zeta + 
140)*q^523 + (-69*zeta^11 - 23*zeta^8 + 23*zeta^6 - 69*zeta^4 + 69*zeta^3 - 
23*zeta - 23)*q^529 + (-182*zeta^11 - 28*zeta^8 + 28*zeta^6 - 182*zeta^4 + 
182*zeta^3 - 28*zeta + 70)*q^532 + (-58*zeta^11 - 87*zeta^8 + 87*zeta^6 - 
58*zeta^4 + 58*zeta^3 - 87*zeta + 116)*q^541 + (40*zeta^11 - 80*zeta^8 + 
80*zeta^6 + 40*zeta^4 - 40*zeta^3 - 80*zeta - 80)*q^547 + (-26*zeta^11 + 
143*zeta^8 - 143*zeta^6 - 26*zeta^4 + 26*zeta^3 + 143*zeta - 39)*q^553 + 
(42*zeta^11 + 14*zeta^8 - 14*zeta^6 + 42*zeta^4 - 42*zeta^3 + 14*zeta + 
14)*q^556 + (35*zeta^11 - 70*zeta^8 + 70*zeta^6 + 35*zeta^4 - 35*zeta^3 - 
70*zeta - 70)*q^559 + (-93*zeta^11 - 31*zeta^8 + 31*zeta^6 - 93*zeta^4 + 
93*zeta^3 - 31*zeta - 31)*q^571 + (105*zeta^11 + 35*zeta^8 - 35*zeta^6 + 
105*zeta^4 - 105*zeta^3 + 35*zeta + 35)*q^577 + (-49*zeta^11 + 98*zeta^8 - 
98*zeta^6 - 49*zeta^4 + 49*zeta^3 + 98*zeta + 98)*q^589 + (-12*zeta^11 - 
4*zeta^8 + 4*zeta^6 - 12*zeta^4 + 12*zeta^3 - 4*zeta - 4)*q^592 + (49*zeta^11 - 
98*zeta^8 + 98*zeta^6 + 49*zeta^4 - 49*zeta^3 - 98*zeta - 98)*q^601 + 
(-16*zeta^11 - 24*zeta^8 + 24*zeta^6 - 16*zeta^4 + 16*zeta^3 - 24*zeta + 
32)*q^604 + (98*zeta^11 + 147*zeta^8 - 147*zeta^6 + 98*zeta^4 - 98*zeta^3 + 
147*zeta - 196)*q^607 + O(q^609)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 5);
              X_21C6 := Curve(P_Q, [ PolynomialRing(RationalField(), 6) |
x[1]^2 - 623/127*x[2]*x[3] - 2093/508*x[2]*x[4] + 777/254*x[2]*x[5] + 
1827/508*x[3]^2 + 882/127*x[3]*x[4] - 903/127*x[3]*x[5] - 3007/508*x[4]^2 + 
1595/254*x[4]*x[5] + 425/508*x[5]^2 + 126/127*x[6]^2,
x[1]*x[2] - 315/1016*x[2]*x[3] - 11947/2032*x[2]*x[4] + 3529/508*x[2]*x[5] + 
357/2032*x[3]^2 + 3073/1016*x[3]*x[4] - 2261/508*x[3]*x[5] - 681/2032*x[4]^2 - 
2109/508*x[4]*x[5] + 9519/2032*x[5]^2 - 225/508*x[6]^2,
x[1]*x[3] + 49/127*x[2]*x[3] - 8351/1016*x[2]*x[4] + 5901/508*x[2]*x[5] - 
637/1016*x[3]^2 + 617/127*x[3]*x[4] - 1977/254*x[3]*x[5] - 2565/1016*x[4]^2 - 
923/508*x[4]*x[5] + 3873/1016*x[5]^2 - 495/254*x[6]^2,
x[1]*x[4] - 2359/1016*x[2]*x[3] + 9229/2032*x[2]*x[4] - 1269/508*x[2]*x[5] + 
4333/2032*x[3]^2 - 3651/1016*x[3]*x[4] + 1683/508*x[3]*x[5] - 257/2032*x[4]^2 + 
953/508*x[4]*x[5] - 4473/2032*x[5]^2 + 855/508*x[6]^2,
x[1]*x[5] + 343/508*x[2]*x[3] - 41/1016*x[2]*x[4] + 2/127*x[2]*x[5] + 
441/1016*x[3]^2 + 1/508*x[3]*x[4] + 1/254*x[3]*x[5] - 1155/1016*x[4]^2 + 
891/254*x[4]*x[5] - 2525/1016*x[5]^2 - 9/254*x[6]^2,
x[2]^2 - 178/127*x[2]*x[3] + 41/127*x[2]*x[4] - 16/127*x[2]*x[5] + 67/127*x[3]^2
- 2/127*x[3]*x[4] - 4/127*x[3]*x[5] + 12/127*x[4]^2 - 8/127*x[4]*x[5] - 
15/127*x[5]^2 + 36/127*x[6]^2,
x[1]^3 + 1913835602658/11943801169*x[2]*x[5]^2 + 
3731858282889/47775204676*x[2]*x[6]^2 - 1499729015547/95550409352*x[3]^3 - 
878896910801/47775204676*x[3]^2*x[4] - 631210138097/95550409352*x[3]^2*x[5] + 
473519255517/23887602338*x[3]*x[4]^2 - 2083385399991/23887602338*x[3]*x[4]*x[5] 
- 2168642722029/95550409352*x[3]*x[5]^2 - 227567843460/11943801169*x[3]*x[6]^2 -
390319019885/11943801169*x[4]^3 - 562947608537/23887602338*x[4]^2*x[5] - 
1150015405353/47775204676*x[4]*x[5]^2 - 3625682594193/47775204676*x[4]*x[6]^2 + 
4211627973241/95550409352*x[5]^3 + 298076357487/11943801169*x[5]*x[6]^2,
x[1]^2*x[2] - 650515233606/59719005845*x[2]*x[5]^2 - 
522352942791/59719005845*x[2]*x[6]^2 + 241136186683/119438011690*x[3]^3 + 
342696615961/59719005845*x[3]^2*x[4] - 506175390441/119438011690*x[3]^2*x[5] - 
49191839356/11943801169*x[3]*x[4]^2 + 852140839706/59719005845*x[3]*x[4]*x[5] - 
300654307019/119438011690*x[3]*x[5]^2 + 46544245518/11943801169*x[3]*x[6]^2 + 
465406176592/59719005845*x[4]^3 - 101533222532/11943801169*x[4]^2*x[5] + 
787658234083/59719005845*x[4]*x[5]^2 + 857010776742/59719005845*x[4]*x[6]^2 - 
1322095505703/119438011690*x[5]^3 - 706568679654/59719005845*x[5]*x[6]^2,
x[1]^2*x[3] + 2925445517309/59719005845*x[2]*x[5]^2 + 
98808447114/59719005845*x[2]*x[6]^2 - 681536562707/119438011690*x[3]^3 - 
179292398264/59719005845*x[3]^2*x[4] - 418706192121/119438011690*x[3]^2*x[5] + 
40829742626/11943801169*x[3]*x[4]^2 - 964243969004/59719005845*x[3]*x[4]*x[5] - 
1345725726109/119438011690*x[3]*x[5]^2 + 23616247005/11943801169*x[3]*x[6]^2 + 
599660045352/59719005845*x[4]^3 - 640558766930/11943801169*x[4]^2*x[5] + 
2759304762983/59719005845*x[4]*x[5]^2 + 136120872402/59719005845*x[4]*x[6]^2 - 
2046549367743/119438011690*x[5]^3 - 1192378496574/59719005845*x[5]*x[6]^2,
x[1]^2*x[4] + 242512661706/59719005845*x[2]*x[5]^2 + 
125283841746/59719005845*x[2]*x[6]^2 - 43855902433/119438011690*x[3]^3 - 
37940533351/59719005845*x[3]^2*x[4] + 122768342571/119438011690*x[3]^2*x[5] + 
67673110540/11943801169*x[3]*x[4]^2 - 343081334246/59719005845*x[3]*x[4]*x[5] - 
293178386431/119438011690*x[3]*x[5]^2 + 9326734998/11943801169*x[3]*x[6]^2 - 
289481253072/59719005845*x[4]^3 + 45397385876/11943801169*x[4]^2*x[5] + 
200231104307/59719005845*x[4]*x[5]^2 + 22729433373/59719005845*x[4]*x[6]^2 - 
416581297227/119438011690*x[5]^3 - 182879485566/59719005845*x[5]*x[6]^2,
x[1]^2*x[5] - 1399966935759/59719005845*x[2]*x[5]^2 - 
52145983164/59719005845*x[2]*x[6]^2 + 357961684647/119438011690*x[3]^3 + 
215117010724/59719005845*x[3]^2*x[4] - 76244735539/119438011690*x[3]^2*x[5] - 
51324975786/11943801169*x[3]*x[4]^2 + 1077858841164/59719005845*x[3]*x[4]*x[5] -
259188956271/119438011690*x[3]*x[5]^2 - 2612426682/11943801169*x[3]*x[6]^2 - 
266869790272/59719005845*x[4]^3 + 219807652250/11943801169*x[4]^2*x[5] - 
623243750233/59719005845*x[4]*x[5]^2 - 4318530912/59719005845*x[4]*x[6]^2 + 
352948257203/119438011690*x[5]^3 + 321433159629/59719005845*x[5]*x[6]^2,
x[1]^2*x[6] - 623/127*x[2]*x[3]*x[6] - 2093/508*x[2]*x[4]*x[6] + 
777/254*x[2]*x[5]*x[6] + 1827/508*x[3]^2*x[6] + 882/127*x[3]*x[4]*x[6] - 
903/127*x[3]*x[5]*x[6] - 3007/508*x[4]^2*x[6] + 1595/254*x[4]*x[5]*x[6] + 
425/508*x[5]^2*x[6] + 126/127*x[6]^3,
x[1]*x[2]^2 + 1978433521596/59719005845*x[2]*x[5]^2 + 
910776267057/119438011690*x[2]*x[6]^2 - 902665184491/238876023380*x[3]^3 - 
1375610062529/238876023380*x[3]^2*x[4] + 358890314217/238876023380*x[3]^2*x[5] +
77849440590/11943801169*x[3]*x[4]^2 - 1338139294476/59719005845*x[3]*x[4]*x[5] -
349420718317/238876023380*x[3]*x[5]^2 - 10335470988/11943801169*x[3]*x[6]^2 + 
78772765538/59719005845*x[4]^3 - 274206170832/11943801169*x[4]^2*x[5] + 
3864769528313/238876023380*x[4]*x[5]^2 - 756109552149/119438011690*x[4]*x[6]^2 -
742729521249/238876023380*x[5]^3 - 203295104391/59719005845*x[5]*x[6]^2,
x[1]*x[2]*x[3] + 2656019379069/59719005845*x[2]*x[5]^2 + 
459700818489/59719005845*x[2]*x[6]^2 - 1302701249759/238876023380*x[3]^3 - 
1901845477051/238876023380*x[3]^2*x[4] + 559892810193/238876023380*x[3]^2*x[5] +
187212420621/23887602338*x[3]*x[4]^2 - 1712257734069/59719005845*x[3]*x[4]*x[5] 
- 593921253713/238876023380*x[3]*x[5]^2 - 9296192943/11943801169*x[3]*x[6]^2 + 
238756092792/59719005845*x[4]^3 - 853735072835/23887602338*x[4]^2*x[5] + 
6065311249027/238876023380*x[4]*x[5]^2 - 383695567488/59719005845*x[4]*x[6]^2 - 
1258163446881/238876023380*x[5]^3 - 378898131789/59719005845*x[5]*x[6]^2,
x[1]*x[2]*x[4] - 499477207488/59719005845*x[2]*x[5]^2 - 
3671592778377/836066081830*x[2]*x[6]^2 + 314741901943/238876023380*x[3]^3 + 
219867303187/238876023380*x[3]^2*x[4] + 170162157039/238876023380*x[3]^2*x[5] - 
21822834350/11943801169*x[3]*x[4]^2 + 428291539798/59719005845*x[3]*x[4]*x[5] - 
160562064479/238876023380*x[3]*x[5]^2 + 153033811038/83606608183*x[3]*x[6]^2 + 
1562590908162/418033040915*x[4]^3 - 367902159000/83606608183*x[4]^2*x[5] + 
11402794141147/1672132163660*x[4]*x[5]^2 + 
5128116011829/836066081830*x[4]*x[6]^2 - 7078892287521/1672132163660*x[5]^3 - 
1361823732459/418033040915*x[5]*x[6]^2,
x[1]*x[2]*x[5] - 71064501963/11943801169*x[2]*x[5]^2 + 
20625495465/83606608183*x[2]*x[6]^2 + 14359701916/11943801169*x[3]^3 + 
33784688917/47775204676*x[3]^2*x[4] + 1749258861/23887602338*x[3]^2*x[5] - 
40041427779/23887602338*x[3]*x[4]^2 + 50432317302/11943801169*x[3]*x[4]*x[5] + 
3677449102/11943801169*x[3]*x[5]^2 - 14212848018/83606608183*x[3]*x[6]^2 - 
111113721494/83606608183*x[4]^3 + 1246044029879/167213216366*x[4]^2*x[5] - 
2688279017215/334426432732*x[4]*x[5]^2 - 55640014452/83606608183*x[4]*x[6]^2 + 
633330746505/167213216366*x[5]^3 + 240324614094/83606608183*x[5]*x[6]^2,
x[1]*x[2]*x[6] - 315/1016*x[2]*x[3]*x[6] - 11947/2032*x[2]*x[4]*x[6] + 
3529/508*x[2]*x[5]*x[6] + 357/2032*x[3]^2*x[6] + 3073/1016*x[3]*x[4]*x[6] - 
2261/508*x[3]*x[5]*x[6] - 681/2032*x[4]^2*x[6] - 2109/508*x[4]*x[5]*x[6] + 
9519/2032*x[5]^2*x[6] - 225/508*x[6]^3,
x[1]*x[3]^2 + 7760977681191/119438011690*x[2]*x[5]^2 + 
702855642693/59719005845*x[2]*x[6]^2 - 495081155107/59719005845*x[3]^3 - 
1332943794661/119438011690*x[3]^2*x[4] + 794978257971/238876023380*x[3]^2*x[5] +
111402976023/11943801169*x[3]*x[4]^2 - 4617201555231/119438011690*x[3]*x[4]*x[5\
] - 329637894589/59719005845*x[3]*x[5]^2 - 31020646218/11943801169*x[3]*x[6]^2 +
329797790644/59719005845*x[4]^3 - 613437273603/11943801169*x[4]^2*x[5] + 
4212832207927/119438011690*x[4]*x[5]^2 - 615154549131/59719005845*x[4]*x[6]^2 - 
1420035252867/238876023380*x[5]^3 - 409524976083/59719005845*x[5]*x[6]^2,
x[1]*x[3]*x[4] - 122478339725/11943801169*x[2]*x[5]^2 - 
85148197893/11943801169*x[2]*x[6]^2 + 85098700379/47775204676*x[3]^3 + 
52998867509/47775204676*x[3]^2*x[4] + 40932953355/47775204676*x[3]^2*x[5] - 
45340971643/23887602338*x[3]*x[4]^2 + 113578832379/11943801169*x[3]*x[4]*x[5] - 
88377938859/47775204676*x[3]*x[5]^2 + 32137771023/11943801169*x[3]*x[6]^2 + 
45110600976/11943801169*x[4]^3 - 84290998027/23887602338*x[4]^2*x[5] + 
354404759515/47775204676*x[4]*x[5]^2 + 99662133762/11943801169*x[4]*x[6]^2 - 
264480445563/47775204676*x[5]^3 - 63031325127/11943801169*x[5]*x[6]^2,
x[1]*x[3]*x[5] - 401527438781/119438011690*x[2]*x[5]^2 + 
31512675942/59719005845*x[2]*x[6]^2 + 311561934523/238876023380*x[3]^3 + 
26619170963/59719005845*x[3]^2*x[4] - 2551643199/59719005845*x[3]^2*x[5] - 
21471831255/11943801169*x[3]*x[4]^2 + 566037550201/119438011690*x[3]*x[4]*x[5] -
337135229499/238876023380*x[3]*x[5]^2 - 2630644785/11943801169*x[3]*x[6]^2 - 
74039562024/59719005845*x[4]^3 + 60493340459/11943801169*x[4]^2*x[5] - 
286995582056/59719005845*x[4]*x[5]^2 - 59672978784/59719005845*x[4]*x[6]^2 + 
124094806083/59719005845*x[5]^3 + 139022647908/59719005845*x[5]*x[6]^2,
x[1]*x[3]*x[6] + 49/127*x[2]*x[3]*x[6] - 8351/1016*x[2]*x[4]*x[6] + 
5901/508*x[2]*x[5]*x[6] - 637/1016*x[3]^2*x[6] + 617/127*x[3]*x[4]*x[6] - 
1977/254*x[3]*x[5]*x[6] - 2565/1016*x[4]^2*x[6] - 923/508*x[4]*x[5]*x[6] + 
3873/1016*x[5]^2*x[6] - 495/254*x[6]^3,
x[1]*x[4]^2 + 233906725332/11943801169*x[2]*x[5]^2 + 
1005396245547/167213216366*x[2]*x[6]^2 - 115523892379/47775204676*x[3]^3 - 
65410044133/47775204676*x[3]^2*x[4] - 17906958447/47775204676*x[3]^2*x[5] + 
27199745854/11943801169*x[3]*x[4]^2 - 115970244400/11943801169*x[3]*x[4]*x[5] - 
172773505021/47775204676*x[3]*x[5]^2 - 132176391024/83606608183*x[3]*x[6]^2 - 
294994584706/83606608183*x[4]^3 - 290974882440/83606608183*x[4]^2*x[5] - 
451554560965/334426432732*x[4]*x[5]^2 - 969094578663/167213216366*x[4]*x[6]^2 + 
1235079543105/334426432732*x[5]^3 + 352327695/83606608183*x[5]*x[6]^2,
x[1]*x[4]*x[5] - 124011479949/59719005845*x[2]*x[5]^2 - 
318572157963/418033040915*x[2]*x[6]^2 + 29662795827/119438011690*x[3]^3 + 
274938857221/238876023380*x[3]^2*x[4] - 3754608102/59719005845*x[3]^2*x[5] - 
9819569355/23887602338*x[3]*x[4]^2 + 65036014194/59719005845*x[3]*x[4]*x[5] + 
61397392449/119438011690*x[3]*x[5]^2 + 6429933240/83606608183*x[3]*x[6]^2 - 
378728366614/418033040915*x[4]^3 + 696489028127/167213216366*x[4]^2*x[5] - 
4624661017799/1672132163660*x[4]*x[5]^2 + 304901751276/418033040915*x[4]*x[6]^2 
- 3162103332/418033040915*x[5]^3 + 104057527188/418033040915*x[5]*x[6]^2,
x[1]*x[4]*x[6] - 2359/1016*x[2]*x[3]*x[6] + 9229/2032*x[2]*x[4]*x[6] - 
1269/508*x[2]*x[5]*x[6] + 4333/2032*x[3]^2*x[6] - 3651/1016*x[3]*x[4]*x[6] + 
1683/508*x[3]*x[5]*x[6] - 257/2032*x[4]^2*x[6] + 953/508*x[4]*x[5]*x[6] - 
4473/2032*x[5]^2*x[6] + 855/508*x[6]^3,
x[1]*x[5]^2 + 292660683567/119438011690*x[2]*x[5]^2 + 
63884342142/418033040915*x[2]*x[6]^2 - 18096124844/59719005845*x[3]^3 - 
53026449917/119438011690*x[3]^2*x[4] + 247187792047/238876023380*x[3]^2*x[5] + 
5250734799/11943801169*x[3]*x[4]^2 - 175903321647/119438011690*x[3]*x[4]*x[5] - 
11665920548/59719005845*x[3]*x[5]^2 + 1105498116/83606608183*x[3]*x[6]^2 + 
209828594316/418033040915*x[4]^3 - 318456450733/83606608183*x[4]^2*x[5] + 
4600588800193/836066081830*x[4]*x[5]^2 - 25707368664/418033040915*x[4]*x[6]^2 - 
4829560022393/1672132163660*x[5]^3 - 130044989847/418033040915*x[5]*x[6]^2,
x[1]*x[5]*x[6] + 343/508*x[2]*x[3]*x[6] - 41/1016*x[2]*x[4]*x[6] + 
2/127*x[2]*x[5]*x[6] + 441/1016*x[3]^2*x[6] + 1/508*x[3]*x[4]*x[6] + 
1/254*x[3]*x[5]*x[6] - 1155/1016*x[4]^2*x[6] + 891/254*x[4]*x[5]*x[6] - 
2525/1016*x[5]^2*x[6] - 9/254*x[6]^3,
x[1]*x[6]^2 - 3212361103826/179157017535*x[2]*x[5]^2 - 
1930232605123/238876023380*x[2]*x[6]^2 + 2591266283767/1433256140280*x[3]^3 + 
1163823551009/716628070140*x[3]^2*x[4] - 47103879193/477752046760*x[3]^2*x[5] - 
88785104905/71662807014*x[3]*x[4]^2 + 818877187569/119438011690*x[3]*x[4]*x[5] +
2398762511803/477752046760*x[3]*x[5]^2 + 30486023520/11943801169*x[3]*x[6]^2 + 
223006258157/179157017535*x[4]^3 + 648841477589/71662807014*x[4]^2*x[5] - 
4664729870063/716628070140*x[4]*x[5]^2 + 1164569361611/238876023380*x[4]*x[6]^2 
- 8614656639/477752046760*x[5]^3 - 102812227673/59719005845*x[5]*x[6]^2,
x[2]^3 + 202523917292/59719005845*x[2]*x[5]^2 - 
107263877328/59719005845*x[2]*x[6]^2 - 40189719078/59719005845*x[3]^3 - 
3696899477/59719005845*x[3]^2*x[4] - 16167566544/59719005845*x[3]^2*x[5] + 
10302867300/11943801169*x[3]*x[4]^2 - 43188051012/59719005845*x[3]*x[4]*x[5] - 
104839383666/59719005845*x[3]*x[5]^2 + 10316787480/11943801169*x[3]*x[6]^2 + 
1086366620217/418033040915*x[4]^3 - 719094394520/83606608183*x[4]^2*x[5] + 
3714201674483/418033040915*x[4]*x[5]^2 + 1226783052972/418033040915*x[4]*x[6]^2 
- 1757607379944/418033040915*x[5]^3 - 1869115687584/418033040915*x[5]*x[6]^2,
x[2]^2*x[3] + 9588514632/1614027185*x[2]*x[5]^2 - 
2219492928/1614027185*x[2]*x[6]^2 - 1861864778/1614027185*x[3]^3 - 
1008502052/1614027185*x[3]^2*x[4] - 67337784/1614027185*x[3]^2*x[5] + 
410960211/322805437*x[3]*x[4]^2 - 3326227352/1614027185*x[3]*x[4]*x[5] - 
3455971206/1614027185*x[3]*x[5]^2 + 222139752/322805437*x[3]*x[6]^2 + 
29114188352/11298190295*x[4]^3 - 22411221992/2259638059*x[4]^2*x[5] + 
108450045108/11298190295*x[4]*x[5]^2 + 26408171952/11298190295*x[4]*x[6]^2 - 
48007733784/11298190295*x[5]^3 - 53119539744/11298190295*x[5]*x[6]^2,
x[2]^2*x[4] + 302468322928/59719005845*x[2]*x[5]^2 + 
105342662088/59719005845*x[2]*x[6]^2 - 36282516032/59719005845*x[3]^3 - 
60927399478/59719005845*x[3]^2*x[4] + 5808292224/59719005845*x[3]^2*x[5] + 
13056186912/11943801169*x[3]*x[4]^2 - 166729149328/59719005845*x[3]*x[4]*x[5] - 
71580498784/59719005845*x[3]*x[5]^2 - 2747397744/11943801169*x[3]*x[6]^2 - 
216937359867/418033040915*x[4]^3 - 137075047832/83606608183*x[4]^2*x[5] + 
199742737482/418033040915*x[4]*x[5]^2 - 653279395392/418033040915*x[4]*x[6]^2 + 
92819308704/418033040915*x[5]^3 - 205388504736/418033040915*x[5]*x[6]^2,
x[2]^2*x[5] - 280811869304/59719005845*x[2]*x[5]^2 - 
19711490064/59719005845*x[2]*x[6]^2 + 34990510716/59719005845*x[3]^3 + 
53817895964/59719005845*x[3]^2*x[4] - 43385062022/59719005845*x[3]^2*x[5] - 
10185696888/11943801169*x[3]*x[4]^2 + 180613373024/59719005845*x[3]*x[4]*x[5] + 
11525714692/59719005845*x[3]*x[5]^2 - 248467056/11943801169*x[3]*x[6]^2 - 
416948654624/418033040915*x[4]^3 + 449426904921/83606608183*x[4]^2*x[5] - 
1706976346996/418033040915*x[4]*x[5]^2 + 65118401856/418033040915*x[4]*x[6]^2 + 
318690078618/418033040915*x[5]^3 + 303631397448/418033040915*x[5]*x[6]^2,
x[2]^2*x[6] - 178/127*x[2]*x[3]*x[6] + 41/127*x[2]*x[4]*x[6] - 
16/127*x[2]*x[5]*x[6] + 67/127*x[3]^2*x[6] - 2/127*x[3]*x[4]*x[6] - 
4/127*x[3]*x[5]*x[6] + 12/127*x[4]^2*x[6] - 8/127*x[4]*x[5]*x[6] - 
15/127*x[5]^2*x[6] + 36/127*x[6]^3,
x[2]*x[3]^2 + 62566735687/11943801169*x[2]*x[5]^2 - 
8499008460/11943801169*x[2]*x[6]^2 - 15767942444/11943801169*x[3]^3 - 
8781939589/11943801169*x[3]^2*x[4] + 1145232180/11943801169*x[3]^2*x[5] + 
12268727928/11943801169*x[3]*x[4]^2 - 23447381256/11943801169*x[3]*x[4]*x[5] - 
19611936164/11943801169*x[3]*x[5]^2 + 3206496864/11943801169*x[3]*x[6]^2 + 
153449525216/83606608183*x[4]^3 - 639602963000/83606608183*x[4]^2*x[5] + 
602955046307/83606608183*x[4]*x[5]^2 + 118229222484/83606608183*x[4]*x[6]^2 - 
258651149532/83606608183*x[5]^3 - 290992265616/83606608183*x[5]*x[6]^2,
x[2]*x[3]*x[4] + 172405879166/59719005845*x[2]*x[5]^2 + 
452794657272/418033040915*x[2]*x[6]^2 - 20592166819/59719005845*x[3]^3 - 
62518572896/59719005845*x[3]^2*x[4] + 6057143148/59719005845*x[3]^2*x[5] + 
6555522627/11943801169*x[3]*x[4]^2 - 88389741056/59719005845*x[3]*x[4]*x[5] - 
43502267753/59719005845*x[3]*x[5]^2 - 8051920428/83606608183*x[3]*x[6]^2 - 
18411895552/59719005845*x[4]^3 - 10996286984/11943801169*x[4]^2*x[5] + 
24604231422/59719005845*x[4]*x[5]^2 - 446483653704/418033040915*x[4]*x[6]^2 - 
2411517216/59719005845*x[5]^3 - 156767928192/418033040915*x[5]*x[6]^2,
x[2]*x[3]*x[5] - 222457716241/59719005845*x[2]*x[5]^2 - 
93273576672/418033040915*x[2]*x[6]^2 + 27444622009/59719005845*x[3]^3 + 
39571975926/59719005845*x[3]^2*x[4] - 53028624673/59719005845*x[3]^2*x[5] - 
7955045376/11943801169*x[3]*x[4]^2 + 130749978391/59719005845*x[3]*x[4]*x[5] + 
20450412423/59719005845*x[3]*x[5]^2 - 1776178884/83606608183*x[3]*x[6]^2 - 
45060003568/59719005845*x[4]^3 + 48063043832/11943801169*x[4]^2*x[5] - 
178230489577/59719005845*x[4]*x[5]^2 + 35135136864/418033040915*x[4]*x[6]^2 + 
34991755281/59719005845*x[5]^3 + 184182130332/418033040915*x[5]*x[6]^2,
x[2]*x[4]^2 - 234962744948/59719005845*x[2]*x[5]^2 - 
309581316696/418033040915*x[2]*x[6]^2 + 27187979322/59719005845*x[3]^3 + 
16882543713/59719005845*x[3]^2*x[4] + 8990452296/59719005845*x[3]^2*x[5] - 
13729557388/11943801169*x[3]*x[4]^2 + 128944074748/59719005845*x[3]*x[4]*x[5] + 
51303160654/59719005845*x[3]*x[5]^2 + 23707687704/83606608183*x[3]*x[6]^2 + 
204401206337/418033040915*x[4]^3 + 110394009232/83606608183*x[4]^2*x[5] - 
106100130967/418033040915*x[4]*x[5]^2 + 433045302012/418033040915*x[4]*x[6]^2 - 
390728997744/418033040915*x[5]^3 + 43857432096/418033040915*x[5]*x[6]^2,
x[2]*x[4]*x[5] - 23853025282/11943801169*x[2]*x[5]^2 + 
4491795216/83606608183*x[2]*x[6]^2 + 2152916374/11943801169*x[3]^3 + 
1019214280/11943801169*x[3]^2*x[4] + 351127203/11943801169*x[3]^2*x[5] - 
2985721272/11943801169*x[3]*x[4]^2 + 1054437892/11943801169*x[3]*x[4]*x[5] + 
9451373766/11943801169*x[3]*x[5]^2 - 2323722648/83606608183*x[3]*x[6]^2 - 
15572123456/83606608183*x[4]^3 + 92990609461/83606608183*x[4]^2*x[5] - 
42114430594/83606608183*x[4]*x[5]^2 - 9834061824/83606608183*x[4]*x[6]^2 - 
15338578137/83606608183*x[5]^3 + 45231322908/83606608183*x[5]*x[6]^2
]);
