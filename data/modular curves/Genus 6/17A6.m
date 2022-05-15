
    /****************************************************
    Loading this file in magma loads the objects fs_17A6 
    and X_17A6. fs_17A6 is a list of power series which form 
    a basis for the space of cusp forms. X_17A6 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | 1, -4, -10, 10, 15, -6, 
-7, 1, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_17A6 := [Kq | 1/12*(-zeta^7 - 3*zeta^6 + 10*zeta^5 + 18*zeta^4 
- 31*zeta^3 - 28*zeta^2 + 30*zeta + 12)*q + 1/12*(-3*zeta^7 + 2*zeta^6 + 
24*zeta^5 - 11*zeta^4 - 56*zeta^3 + 12*zeta^2 + 33*zeta - 2)*q^2 + 
1/12*(2*zeta^7 - 13*zeta^5 - 3*zeta^4 + 19*zeta^3 + 11*zeta^2 + 2*zeta - 9)*q^4 
+ 1/6*(-4*zeta^7 - 3*zeta^6 + 27*zeta^5 + 12*zeta^4 - 54*zeta^3 - 8*zeta^2 + 
28*zeta + 5)*q^5 + 1/3*(-5*zeta^7 - 3*zeta^6 + 32*zeta^5 + 17*zeta^4 - 57*zeta^3
- 25*zeta^2 + 20*zeta + 1)*q^7 + 1/4*(-4*zeta^7 + zeta^6 + 25*zeta^5 - 8*zeta^4 
- 46*zeta^3 + 15*zeta^2 + 25*zeta)*q^8 + 1/4*(4*zeta^7 - zeta^6 - 25*zeta^5 + 
8*zeta^4 + 46*zeta^3 - 15*zeta^2 - 25*zeta)*q^9 + 1/6*(-5*zeta^7 - 3*zeta^6 + 
32*zeta^5 + 17*zeta^4 - 57*zeta^3 - 25*zeta^2 + 20*zeta + 1)*q^10 + 
1/6*(2*zeta^7 - 13*zeta^5 - 3*zeta^4 + 19*zeta^3 + 11*zeta^2 + 2*zeta - 9)*q^13 
+ 1/3*(2*zeta^7 + zeta^6 - 12*zeta^5 - 5*zeta^4 + 22*zeta^3 + 10*zeta^2 - 
17*zeta - 4)*q^14 + 1/12*(zeta^7 + 3*zeta^6 - 10*zeta^5 - 18*zeta^4 + 31*zeta^3 
+ 28*zeta^2 - 30*zeta - 12)*q^16 + 1/4*(-6*zeta^7 - 6*zeta^6 + 36*zeta^5 + 
36*zeta^4 - 60*zeta^3 - 54*zeta^2 + 30*zeta + 9)*q^17 + 1/4*(-zeta^7 - 3*zeta^6 
+ 10*zeta^5 + 18*zeta^4 - 31*zeta^3 - 28*zeta^2 + 30*zeta + 12)*q^18 + 
1/3*(-3*zeta^7 + 2*zeta^6 + 24*zeta^5 - 11*zeta^4 - 56*zeta^3 + 12*zeta^2 + 
33*zeta - 2)*q^19 + 1/6*(-2*zeta^7 - zeta^6 + 12*zeta^5 + 5*zeta^4 - 22*zeta^3 -
10*zeta^2 + 17*zeta + 4)*q^20 + 1/3*(-zeta^7 - 3*zeta^6 + 7*zeta^5 + 14*zeta^4 -
15*zeta^3 - 9*zeta^2 + 11*zeta - 11)*q^23 + 1/12*(4*zeta^7 - zeta^6 - 25*zeta^5 
+ 8*zeta^4 + 46*zeta^3 - 15*zeta^2 - 25*zeta)*q^25 + 1/6*(-4*zeta^7 + zeta^6 + 
25*zeta^5 - 8*zeta^4 - 46*zeta^3 + 15*zeta^2 + 25*zeta)*q^26 + 1/3*(zeta^7 + 
3*zeta^6 - 7*zeta^5 - 14*zeta^4 + 15*zeta^3 + 9*zeta^2 - 11*zeta + 11)*q^28 + 
1/2*(4*zeta^7 + 3*zeta^6 - 27*zeta^5 - 12*zeta^4 + 54*zeta^3 + 8*zeta^2 - 
28*zeta - 5)*q^29 + 1/3*(-2*zeta^7 - zeta^6 + 12*zeta^5 + 5*zeta^4 - 22*zeta^3 -
10*zeta^2 + 17*zeta + 4)*q^31 + 1/12*(-15*zeta^7 + 10*zeta^6 + 120*zeta^5 - 
55*zeta^4 - 280*zeta^3 + 60*zeta^2 + 165*zeta - 10)*q^32 + 1/4*(6*zeta^7 + 
6*zeta^6 - 36*zeta^5 - 36*zeta^4 + 60*zeta^3 + 54*zeta^2 - 30*zeta - 9)*q^34 + 
1/3*(2*zeta^7 + 6*zeta^6 - 20*zeta^5 - 36*zeta^4 + 62*zeta^3 + 56*zeta^2 - 
60*zeta - 24)*q^35 + 1/4*(3*zeta^7 - 2*zeta^6 - 24*zeta^5 + 11*zeta^4 + 
56*zeta^3 - 12*zeta^2 - 33*zeta + 2)*q^36 + 1/6*(2*zeta^7 + zeta^6 - 12*zeta^5 -
5*zeta^4 + 22*zeta^3 + 10*zeta^2 - 17*zeta - 4)*q^37 + 1/3*(-2*zeta^7 + 
13*zeta^5 + 3*zeta^4 - 19*zeta^3 - 11*zeta^2 - 2*zeta + 9)*q^38 + 1/2*(zeta^7 + 
3*zeta^6 - 7*zeta^5 - 14*zeta^4 + 15*zeta^3 + 9*zeta^2 - 11*zeta + 11)*q^40 + 
1/2*(5*zeta^7 + 3*zeta^6 - 32*zeta^5 - 17*zeta^4 + 57*zeta^3 + 25*zeta^2 - 
20*zeta - 1)*q^41 + 1/3*(-4*zeta^7 + zeta^6 + 25*zeta^5 - 8*zeta^4 - 46*zeta^3 +
15*zeta^2 + 25*zeta)*q^43 + 1/2*(-zeta^7 - 3*zeta^6 + 7*zeta^5 + 14*zeta^4 - 
15*zeta^3 - 9*zeta^2 + 11*zeta - 11)*q^45 + 1/3*(-4*zeta^7 - 3*zeta^6 + 
27*zeta^5 + 12*zeta^4 - 54*zeta^3 - 8*zeta^2 + 28*zeta + 5)*q^46 + 1/4*(9*zeta^7
- 6*zeta^6 - 72*zeta^5 + 33*zeta^4 + 168*zeta^3 - 36*zeta^2 - 99*zeta + 6)*q^49 
+ 1/12*(-zeta^7 - 3*zeta^6 + 10*zeta^5 + 18*zeta^4 - 31*zeta^3 - 28*zeta^2 + 
30*zeta + 12)*q^50 + 1/6*(-zeta^7 - 3*zeta^6 + 10*zeta^5 + 18*zeta^4 - 31*zeta^3
- 28*zeta^2 + 30*zeta + 12)*q^52 + 1/2*(3*zeta^7 - 2*zeta^6 - 24*zeta^5 + 
11*zeta^4 + 56*zeta^3 - 12*zeta^2 - 33*zeta + 2)*q^53 + (4*zeta^7 + 3*zeta^6 - 
27*zeta^5 - 12*zeta^4 + 54*zeta^3 + 8*zeta^2 - 28*zeta - 5)*q^56 + 1/2*(5*zeta^7
+ 3*zeta^6 - 32*zeta^5 - 17*zeta^4 + 57*zeta^3 + 25*zeta^2 - 20*zeta - 1)*q^58 +
(4*zeta^7 - zeta^6 - 25*zeta^5 + 8*zeta^4 + 46*zeta^3 - 15*zeta^2 - 
25*zeta)*q^59 + 1/6*(25*zeta^7 + 15*zeta^6 - 160*zeta^5 - 85*zeta^4 + 285*zeta^3
+ 125*zeta^2 - 100*zeta - 5)*q^61 + 1/3*(zeta^7 + 3*zeta^6 - 7*zeta^5 - 
14*zeta^4 + 15*zeta^3 + 9*zeta^2 - 11*zeta + 11)*q^62 + (-4*zeta^7 - 3*zeta^6 + 
27*zeta^5 + 12*zeta^4 - 54*zeta^3 - 8*zeta^2 + 28*zeta + 5)*q^63 + 
1/12*(-14*zeta^7 + 91*zeta^5 + 21*zeta^4 - 133*zeta^3 - 77*zeta^2 - 14*zeta + 
63)*q^64 + 1/3*(-2*zeta^7 - zeta^6 + 12*zeta^5 + 5*zeta^4 - 22*zeta^3 - 
10*zeta^2 + 17*zeta + 4)*q^65 + 1/3*(-zeta^7 - 3*zeta^6 + 10*zeta^5 + 18*zeta^4 
- 31*zeta^3 - 28*zeta^2 + 30*zeta + 12)*q^67 + 1/4*(6*zeta^7 + 6*zeta^6 - 
36*zeta^5 - 36*zeta^4 + 60*zeta^3 + 54*zeta^2 - 30*zeta - 9)*q^68 + 
1/3*(6*zeta^7 - 4*zeta^6 - 48*zeta^5 + 22*zeta^4 + 112*zeta^3 - 24*zeta^2 - 
66*zeta + 4)*q^70 + 1/3*(2*zeta^7 + zeta^6 - 12*zeta^5 - 5*zeta^4 + 22*zeta^3 + 
10*zeta^2 - 17*zeta - 4)*q^71 + 1/4*(6*zeta^7 - 39*zeta^5 - 9*zeta^4 + 57*zeta^3
+ 33*zeta^2 + 6*zeta - 27)*q^72 + 1/2*(-4*zeta^7 - 3*zeta^6 + 27*zeta^5 + 
12*zeta^4 - 54*zeta^3 - 8*zeta^2 + 28*zeta + 5)*q^73 + 1/6*(-zeta^7 - 3*zeta^6 +
7*zeta^5 + 14*zeta^4 - 15*zeta^3 - 9*zeta^2 + 11*zeta - 11)*q^74 + 
1/3*(-4*zeta^7 + zeta^6 + 25*zeta^5 - 8*zeta^4 - 46*zeta^3 + 15*zeta^2 + 
25*zeta)*q^76 + (-zeta^7 - 3*zeta^6 + 7*zeta^5 + 14*zeta^4 - 15*zeta^3 - 
9*zeta^2 + 11*zeta - 11)*q^79 + 1/6*(4*zeta^7 + 3*zeta^6 - 27*zeta^5 - 12*zeta^4
+ 54*zeta^3 + 8*zeta^2 - 28*zeta - 5)*q^80 + 1/4*(-6*zeta^7 + 39*zeta^5 + 
9*zeta^4 - 57*zeta^3 - 33*zeta^2 - 6*zeta + 27)*q^81 + 1/2*(-2*zeta^7 - zeta^6 +
12*zeta^5 + 5*zeta^4 - 22*zeta^3 - 10*zeta^2 + 17*zeta + 4)*q^82 + 
1/3*(-3*zeta^7 + 2*zeta^6 + 24*zeta^5 - 11*zeta^4 - 56*zeta^3 + 12*zeta^2 + 
33*zeta - 2)*q^83 + 1/2*(6*zeta^7 + 6*zeta^6 - 36*zeta^5 - 36*zeta^4 + 60*zeta^3
+ 54*zeta^2 - 30*zeta - 9)*q^85 + 1/3*(zeta^7 + 3*zeta^6 - 10*zeta^5 - 18*zeta^4
+ 31*zeta^3 + 28*zeta^2 - 30*zeta - 12)*q^86 + 1/6*(-10*zeta^7 + 65*zeta^5 + 
15*zeta^4 - 95*zeta^3 - 55*zeta^2 - 10*zeta + 45)*q^89 + 1/2*(-4*zeta^7 - 
3*zeta^6 + 27*zeta^5 + 12*zeta^4 - 54*zeta^3 - 8*zeta^2 + 28*zeta + 5)*q^90 + 
1/3*(2*zeta^7 + 6*zeta^6 - 14*zeta^5 - 28*zeta^4 + 30*zeta^3 + 18*zeta^2 - 
22*zeta + 22)*q^91 + 1/3*(5*zeta^7 + 3*zeta^6 - 32*zeta^5 - 17*zeta^4 + 
57*zeta^3 + 25*zeta^2 - 20*zeta - 1)*q^92 + 1/3*(-10*zeta^7 - 6*zeta^6 + 
64*zeta^5 + 34*zeta^4 - 114*zeta^3 - 50*zeta^2 + 40*zeta + 2)*q^95 + 
1/6*(4*zeta^7 + 3*zeta^6 - 27*zeta^5 - 12*zeta^4 + 54*zeta^3 + 8*zeta^2 - 
28*zeta - 5)*q^97 + 1/4*(6*zeta^7 - 39*zeta^5 - 9*zeta^4 + 57*zeta^3 + 33*zeta^2
+ 6*zeta - 27)*q^98 + 1/12*(3*zeta^7 - 2*zeta^6 - 24*zeta^5 + 11*zeta^4 + 
56*zeta^3 - 12*zeta^2 - 33*zeta + 2)*q^100 + 1/6*(5*zeta^7 + 15*zeta^6 - 
50*zeta^5 - 90*zeta^4 + 155*zeta^3 + 140*zeta^2 - 150*zeta - 60)*q^101 + 
1/3*(-2*zeta^7 - 6*zeta^6 + 20*zeta^5 + 36*zeta^4 - 62*zeta^3 - 56*zeta^2 + 
60*zeta + 24)*q^103 + 1/2*(-3*zeta^7 + 2*zeta^6 + 24*zeta^5 - 11*zeta^4 - 
56*zeta^3 + 12*zeta^2 + 33*zeta - 2)*q^104 + 1/2*(2*zeta^7 - 13*zeta^5 - 
3*zeta^4 + 19*zeta^3 + 11*zeta^2 + 2*zeta - 9)*q^106 + 1/3*(8*zeta^7 + 6*zeta^6 
- 54*zeta^5 - 24*zeta^4 + 108*zeta^3 + 16*zeta^2 - 56*zeta - 10)*q^107 + 
1/2*(-5*zeta^7 - 3*zeta^6 + 32*zeta^5 + 17*zeta^4 - 57*zeta^3 - 25*zeta^2 + 
20*zeta + 1)*q^109 + 1/3*(5*zeta^7 + 3*zeta^6 - 32*zeta^5 - 17*zeta^4 + 
57*zeta^3 + 25*zeta^2 - 20*zeta - 1)*q^112 + 1/6*(7*zeta^7 + 21*zeta^6 - 
49*zeta^5 - 98*zeta^4 + 105*zeta^3 + 63*zeta^2 - 77*zeta + 77)*q^113 + 
1/3*(4*zeta^7 - 26*zeta^5 - 6*zeta^4 + 38*zeta^3 + 22*zeta^2 + 4*zeta - 
18)*q^115 + 1/2*(2*zeta^7 + zeta^6 - 12*zeta^5 - 5*zeta^4 + 22*zeta^3 + 
10*zeta^2 - 17*zeta - 4)*q^116 + 1/2*(3*zeta^7 - 2*zeta^6 - 24*zeta^5 + 
11*zeta^4 + 56*zeta^3 - 12*zeta^2 - 33*zeta + 2)*q^117 + (-zeta^7 - 3*zeta^6 + 
10*zeta^5 + 18*zeta^4 - 31*zeta^3 - 28*zeta^2 + 30*zeta + 12)*q^118 + (-6*zeta^7
- 6*zeta^6 + 36*zeta^5 + 36*zeta^4 - 60*zeta^3 - 54*zeta^2 + 30*zeta + 9)*q^119 
+ 1/12*(-33*zeta^7 + 22*zeta^6 + 264*zeta^5 - 121*zeta^4 - 616*zeta^3 + 
132*zeta^2 + 363*zeta - 22)*q^121 + 1/6*(-10*zeta^7 - 5*zeta^6 + 60*zeta^5 + 
25*zeta^4 - 110*zeta^3 - 50*zeta^2 + 85*zeta + 20)*q^122 + 1/3*(-4*zeta^7 - 
3*zeta^6 + 27*zeta^5 + 12*zeta^4 - 54*zeta^3 - 8*zeta^2 + 28*zeta + 5)*q^124 + 
(-zeta^7 - 3*zeta^6 + 7*zeta^5 + 14*zeta^4 - 15*zeta^3 - 9*zeta^2 + 11*zeta - 
11)*q^125 + (-5*zeta^7 - 3*zeta^6 + 32*zeta^5 + 17*zeta^4 - 57*zeta^3 - 
25*zeta^2 + 20*zeta + 1)*q^126 + 1/3*(-8*zeta^7 + 2*zeta^6 + 50*zeta^5 - 
16*zeta^4 - 92*zeta^3 + 30*zeta^2 + 50*zeta)*q^127 + 1/4*(-4*zeta^7 + zeta^6 + 
25*zeta^5 - 8*zeta^4 - 46*zeta^3 + 15*zeta^2 + 25*zeta)*q^128 + 1/3*(zeta^7 + 
3*zeta^6 - 7*zeta^5 - 14*zeta^4 + 15*zeta^3 + 9*zeta^2 - 11*zeta + 11)*q^130 + 
1/3*(16*zeta^7 + 12*zeta^6 - 108*zeta^5 - 48*zeta^4 + 216*zeta^3 + 32*zeta^2 - 
112*zeta - 20)*q^131 + 1/3*(8*zeta^7 + 4*zeta^6 - 48*zeta^5 - 20*zeta^4 + 
88*zeta^3 + 40*zeta^2 - 68*zeta - 16)*q^133 + 1/3*(-3*zeta^7 + 2*zeta^6 + 
24*zeta^5 - 11*zeta^4 - 56*zeta^3 + 12*zeta^2 + 33*zeta - 2)*q^134 + 
1/4*(-18*zeta^7 - 18*zeta^6 + 108*zeta^5 + 108*zeta^4 - 180*zeta^3 - 162*zeta^2 
+ 90*zeta + 27)*q^136 + 1/2*(zeta^7 + 3*zeta^6 - 10*zeta^5 - 18*zeta^4 + 
31*zeta^3 + 28*zeta^2 - 30*zeta - 12)*q^137 + 1/3*(4*zeta^7 + 2*zeta^6 - 
24*zeta^5 - 10*zeta^4 + 44*zeta^3 + 20*zeta^2 - 34*zeta - 8)*q^139 + 
1/3*(-4*zeta^7 + 26*zeta^5 + 6*zeta^4 - 38*zeta^3 - 22*zeta^2 - 4*zeta + 
18)*q^140 + 1/3*(-zeta^7 - 3*zeta^6 + 7*zeta^5 + 14*zeta^4 - 15*zeta^3 - 
9*zeta^2 + 11*zeta - 11)*q^142 + 1/4*(-4*zeta^7 + zeta^6 + 25*zeta^5 - 8*zeta^4 
- 46*zeta^3 + 15*zeta^2 + 25*zeta)*q^144 + (4*zeta^7 - zeta^6 - 25*zeta^5 + 
8*zeta^4 + 46*zeta^3 - 15*zeta^2 - 25*zeta)*q^145 + 1/2*(-5*zeta^7 - 3*zeta^6 + 
32*zeta^5 + 17*zeta^4 - 57*zeta^3 - 25*zeta^2 + 20*zeta + 1)*q^146 + 
1/6*(4*zeta^7 + 3*zeta^6 - 27*zeta^5 - 12*zeta^4 + 54*zeta^3 + 8*zeta^2 - 
28*zeta - 5)*q^148 + 1/6*(10*zeta^7 - 65*zeta^5 - 15*zeta^4 + 95*zeta^3 + 
55*zeta^2 + 10*zeta - 45)*q^149 + 1/3*(-12*zeta^7 + 8*zeta^6 + 96*zeta^5 - 
44*zeta^4 - 224*zeta^3 + 48*zeta^2 + 132*zeta - 8)*q^151 + (zeta^7 + 3*zeta^6 - 
10*zeta^5 - 18*zeta^4 + 31*zeta^3 + 28*zeta^2 - 30*zeta - 12)*q^152 + 
1/4*(18*zeta^7 + 18*zeta^6 - 108*zeta^5 - 108*zeta^4 + 180*zeta^3 + 162*zeta^2 -
90*zeta - 27)*q^153 + 1/3*(-6*zeta^7 + 4*zeta^6 + 48*zeta^5 - 22*zeta^4 - 
112*zeta^3 + 24*zeta^2 + 66*zeta - 4)*q^155 + 1/6*(2*zeta^7 - 13*zeta^5 - 
3*zeta^4 + 19*zeta^3 + 11*zeta^2 + 2*zeta - 9)*q^157 + (-4*zeta^7 - 3*zeta^6 + 
27*zeta^5 + 12*zeta^4 - 54*zeta^3 - 8*zeta^2 + 28*zeta + 5)*q^158 + 
1/6*(-25*zeta^7 - 15*zeta^6 + 160*zeta^5 + 85*zeta^4 - 285*zeta^3 - 125*zeta^2 +
100*zeta + 5)*q^160 + 1/3*(-16*zeta^7 + 4*zeta^6 + 100*zeta^5 - 32*zeta^4 - 
184*zeta^3 + 60*zeta^2 + 100*zeta)*q^161 + 1/4*(12*zeta^7 - 3*zeta^6 - 75*zeta^5
+ 24*zeta^4 + 138*zeta^3 - 45*zeta^2 - 75*zeta)*q^162 + (-10*zeta^7 - 6*zeta^6 +
64*zeta^5 + 34*zeta^4 - 114*zeta^3 - 50*zeta^2 + 40*zeta + 2)*q^163 + 
1/2*(-zeta^7 - 3*zeta^6 + 7*zeta^5 + 14*zeta^4 - 15*zeta^3 - 9*zeta^2 + 11*zeta 
- 11)*q^164 + 1/3*(-2*zeta^7 + 13*zeta^5 + 3*zeta^4 - 19*zeta^3 - 11*zeta^2 - 
2*zeta + 9)*q^166 + 1/3*(2*zeta^7 + zeta^6 - 12*zeta^5 - 5*zeta^4 + 22*zeta^3 + 
10*zeta^2 - 17*zeta - 4)*q^167 + 1/4*(3*zeta^7 + 9*zeta^6 - 30*zeta^5 - 
54*zeta^4 + 93*zeta^3 + 84*zeta^2 - 90*zeta - 36)*q^169 + 1/2*(-6*zeta^7 - 
6*zeta^6 + 36*zeta^5 + 36*zeta^4 - 60*zeta^3 - 54*zeta^2 + 30*zeta + 9)*q^170 + 
(-zeta^7 - 3*zeta^6 + 10*zeta^5 + 18*zeta^4 - 31*zeta^3 - 28*zeta^2 + 30*zeta + 
12)*q^171 + 1/3*(-3*zeta^7 + 2*zeta^6 + 24*zeta^5 - 11*zeta^4 - 56*zeta^3 + 
12*zeta^2 + 33*zeta - 2)*q^172 + 1/6*(-22*zeta^7 - 11*zeta^6 + 132*zeta^5 + 
55*zeta^4 - 242*zeta^3 - 110*zeta^2 + 187*zeta + 44)*q^173 + 1/3*(-4*zeta^7 - 
3*zeta^6 + 27*zeta^5 + 12*zeta^4 - 54*zeta^3 - 8*zeta^2 + 28*zeta + 5)*q^175 + 
1/6*(20*zeta^7 - 5*zeta^6 - 125*zeta^5 + 40*zeta^4 + 230*zeta^3 - 75*zeta^2 - 
125*zeta)*q^178 + (-4*zeta^7 + zeta^6 + 25*zeta^5 - 8*zeta^4 - 46*zeta^3 + 
15*zeta^2 + 25*zeta)*q^179 + 1/2*(5*zeta^7 + 3*zeta^6 - 32*zeta^5 - 17*zeta^4 + 
57*zeta^3 + 25*zeta^2 - 20*zeta - 1)*q^180 + 1/6*(zeta^7 + 3*zeta^6 - 7*zeta^5 -
14*zeta^4 + 15*zeta^3 + 9*zeta^2 - 11*zeta + 11)*q^181 + 1/3*(8*zeta^7 + 
6*zeta^6 - 54*zeta^5 - 24*zeta^4 + 108*zeta^3 + 16*zeta^2 - 56*zeta - 10)*q^182 
+ (-2*zeta^7 - zeta^6 + 12*zeta^5 + 5*zeta^4 - 22*zeta^3 - 10*zeta^2 + 17*zeta +
4)*q^184 + 1/3*(3*zeta^7 - 2*zeta^6 - 24*zeta^5 + 11*zeta^4 + 56*zeta^3 - 
12*zeta^2 - 33*zeta + 2)*q^185 + 1/3*(4*zeta^7 + 2*zeta^6 - 24*zeta^5 - 
10*zeta^4 + 44*zeta^3 + 20*zeta^2 - 34*zeta - 8)*q^190 + 1/3*(8*zeta^7 - 
52*zeta^5 - 12*zeta^4 + 76*zeta^3 + 44*zeta^2 + 8*zeta - 36)*q^191 + 
1/6*(-zeta^7 - 3*zeta^6 + 7*zeta^5 + 14*zeta^4 - 15*zeta^3 - 9*zeta^2 + 11*zeta 
- 11)*q^193 + 1/6*(5*zeta^7 + 3*zeta^6 - 32*zeta^5 - 17*zeta^4 + 57*zeta^3 + 
25*zeta^2 - 20*zeta - 1)*q^194 + 1/4*(12*zeta^7 - 3*zeta^6 - 75*zeta^5 + 
24*zeta^4 + 138*zeta^3 - 45*zeta^2 - 75*zeta)*q^196 + 1/2*(15*zeta^7 + 9*zeta^6 
- 96*zeta^5 - 51*zeta^4 + 171*zeta^3 + 75*zeta^2 - 60*zeta - 3)*q^197 + 
1/3*(-20*zeta^7 - 15*zeta^6 + 135*zeta^5 + 60*zeta^4 - 270*zeta^3 - 40*zeta^2 + 
140*zeta + 25)*q^199 + 1/4*(2*zeta^7 - 13*zeta^5 - 3*zeta^4 + 19*zeta^3 + 
11*zeta^2 + 2*zeta - 9)*q^200 + 1/6*(15*zeta^7 - 10*zeta^6 - 120*zeta^5 + 
55*zeta^4 + 280*zeta^3 - 60*zeta^2 - 165*zeta + 10)*q^202 + (-2*zeta^7 - 
6*zeta^6 + 20*zeta^5 + 36*zeta^4 - 62*zeta^3 - 56*zeta^2 + 60*zeta + 24)*q^203 +
(-zeta^7 - 3*zeta^6 + 10*zeta^5 + 18*zeta^4 - 31*zeta^3 - 28*zeta^2 + 30*zeta + 
12)*q^205 + 1/3*(-6*zeta^7 + 4*zeta^6 + 48*zeta^5 - 22*zeta^4 - 112*zeta^3 + 
24*zeta^2 + 66*zeta - 4)*q^206 + (2*zeta^7 + zeta^6 - 12*zeta^5 - 5*zeta^4 + 
22*zeta^3 + 10*zeta^2 - 17*zeta - 4)*q^207 + 1/6*(-2*zeta^7 + 13*zeta^5 + 
3*zeta^4 - 19*zeta^3 - 11*zeta^2 - 2*zeta + 9)*q^208 + 1/3*(-10*zeta^7 - 
6*zeta^6 + 64*zeta^5 + 34*zeta^4 - 114*zeta^3 - 50*zeta^2 + 40*zeta + 2)*q^211 +
1/2*(4*zeta^7 - zeta^6 - 25*zeta^5 + 8*zeta^4 + 46*zeta^3 - 15*zeta^2 - 
25*zeta)*q^212 + 1/3*(10*zeta^7 + 6*zeta^6 - 64*zeta^5 - 34*zeta^4 + 114*zeta^3 
+ 50*zeta^2 - 40*zeta - 2)*q^214 + 1/3*(2*zeta^7 + 6*zeta^6 - 14*zeta^5 - 
28*zeta^4 + 30*zeta^3 + 18*zeta^2 - 22*zeta + 22)*q^215 + 1/3*(-8*zeta^7 + 
52*zeta^5 + 12*zeta^4 - 76*zeta^3 - 44*zeta^2 - 8*zeta + 36)*q^217 + 
1/2*(2*zeta^7 + zeta^6 - 12*zeta^5 - 5*zeta^4 + 22*zeta^3 + 10*zeta^2 - 17*zeta 
- 4)*q^218 + 1/2*(6*zeta^7 + 6*zeta^6 - 36*zeta^5 - 36*zeta^4 + 60*zeta^3 + 
54*zeta^2 - 30*zeta - 9)*q^221 + (6*zeta^7 - 4*zeta^6 - 48*zeta^5 + 22*zeta^4 + 
112*zeta^3 - 24*zeta^2 - 66*zeta + 4)*q^223 + 1/3*(10*zeta^7 + 5*zeta^6 - 
60*zeta^5 - 25*zeta^4 + 110*zeta^3 + 50*zeta^2 - 85*zeta - 20)*q^224 + 
1/4*(-2*zeta^7 + 13*zeta^5 + 3*zeta^4 - 19*zeta^3 - 11*zeta^2 - 2*zeta + 
9)*q^225 + 1/6*(28*zeta^7 + 21*zeta^6 - 189*zeta^5 - 84*zeta^4 + 378*zeta^3 + 
56*zeta^2 - 196*zeta - 35)*q^226 + (2*zeta^7 + 6*zeta^6 - 14*zeta^5 - 28*zeta^4 
+ 30*zeta^3 + 18*zeta^2 - 22*zeta + 22)*q^227 + 1/2*(-4*zeta^7 + zeta^6 + 
25*zeta^5 - 8*zeta^4 - 46*zeta^3 + 15*zeta^2 + 25*zeta)*q^229 + 1/3*(-8*zeta^7 +
2*zeta^6 + 50*zeta^5 - 16*zeta^4 - 92*zeta^3 + 30*zeta^2 + 50*zeta)*q^230 + 
1/2*(-3*zeta^7 - 9*zeta^6 + 21*zeta^5 + 42*zeta^4 - 45*zeta^3 - 27*zeta^2 + 
33*zeta - 33)*q^232 + 1/2*(-4*zeta^7 - 3*zeta^6 + 27*zeta^5 + 12*zeta^4 - 
54*zeta^3 - 8*zeta^2 + 28*zeta + 5)*q^233 + 1/2*(2*zeta^7 - 13*zeta^5 - 3*zeta^4
+ 19*zeta^3 + 11*zeta^2 + 2*zeta - 9)*q^234 + (3*zeta^7 - 2*zeta^6 - 24*zeta^5 +
11*zeta^4 + 56*zeta^3 - 12*zeta^2 - 33*zeta + 2)*q^236 + (6*zeta^7 + 6*zeta^6 - 
36*zeta^5 - 36*zeta^4 + 60*zeta^3 + 54*zeta^2 - 30*zeta - 9)*q^238 + 
1/3*(4*zeta^7 + 12*zeta^6 - 40*zeta^5 - 72*zeta^4 + 124*zeta^3 + 112*zeta^2 - 
120*zeta - 48)*q^239 + 1/2*(-6*zeta^7 - 3*zeta^6 + 36*zeta^5 + 15*zeta^4 - 
66*zeta^3 - 30*zeta^2 + 51*zeta + 12)*q^241 + 1/12*(-22*zeta^7 + 143*zeta^5 + 
33*zeta^4 - 209*zeta^3 - 121*zeta^2 - 22*zeta + 99)*q^242 + 1/6*(-5*zeta^7 - 
15*zeta^6 + 35*zeta^5 + 70*zeta^4 - 75*zeta^3 - 45*zeta^2 + 55*zeta - 55)*q^244 
+ 1/2*(15*zeta^7 + 9*zeta^6 - 96*zeta^5 - 51*zeta^4 + 171*zeta^3 + 75*zeta^2 - 
60*zeta - 3)*q^245 + 1/3*(-8*zeta^7 + 2*zeta^6 + 50*zeta^5 - 16*zeta^4 - 
92*zeta^3 + 30*zeta^2 + 50*zeta)*q^247 + (-5*zeta^7 - 3*zeta^6 + 32*zeta^5 + 
17*zeta^4 - 57*zeta^3 - 25*zeta^2 + 20*zeta + 1)*q^248 + (-4*zeta^7 - 3*zeta^6 +
27*zeta^5 + 12*zeta^4 - 54*zeta^3 - 8*zeta^2 + 28*zeta + 5)*q^250 + (-2*zeta^7 +
13*zeta^5 + 3*zeta^4 - 19*zeta^3 - 11*zeta^2 - 2*zeta + 9)*q^251 + (-2*zeta^7 - 
zeta^6 + 12*zeta^5 + 5*zeta^4 - 22*zeta^3 - 10*zeta^2 + 17*zeta + 4)*q^252 + 
1/3*(2*zeta^7 + 6*zeta^6 - 20*zeta^5 - 36*zeta^4 + 62*zeta^3 + 56*zeta^2 - 
60*zeta - 24)*q^254 + 1/12*(17*zeta^7 + 51*zeta^6 - 170*zeta^5 - 306*zeta^4 + 
527*zeta^3 + 476*zeta^2 - 510*zeta - 204)*q^256 + 1/2*(9*zeta^7 - 6*zeta^6 - 
72*zeta^5 + 33*zeta^4 + 168*zeta^3 - 36*zeta^2 - 99*zeta + 6)*q^257 + 
1/3*(4*zeta^7 - 26*zeta^5 - 6*zeta^4 + 38*zeta^3 + 22*zeta^2 + 4*zeta - 
18)*q^259 + 1/3*(-4*zeta^7 - 3*zeta^6 + 27*zeta^5 + 12*zeta^4 - 54*zeta^3 - 
8*zeta^2 + 28*zeta + 5)*q^260 + 1/2*(3*zeta^7 + 9*zeta^6 - 21*zeta^5 - 42*zeta^4
+ 45*zeta^3 + 27*zeta^2 - 33*zeta + 33)*q^261 + 1/3*(20*zeta^7 + 12*zeta^6 - 
128*zeta^5 - 68*zeta^4 + 228*zeta^3 + 100*zeta^2 - 80*zeta - 4)*q^262 + 
1/3*(16*zeta^7 - 4*zeta^6 - 100*zeta^5 + 32*zeta^4 + 184*zeta^3 - 60*zeta^2 - 
100*zeta)*q^263 + (5*zeta^7 + 3*zeta^6 - 32*zeta^5 - 17*zeta^4 + 57*zeta^3 + 
25*zeta^2 - 20*zeta - 1)*q^265 + 1/3*(-4*zeta^7 - 12*zeta^6 + 28*zeta^5 + 
56*zeta^4 - 60*zeta^3 - 36*zeta^2 + 44*zeta - 44)*q^266 + 1/3*(2*zeta^7 - 
13*zeta^5 - 3*zeta^4 + 19*zeta^3 + 11*zeta^2 + 2*zeta - 9)*q^268 + 
1/6*(-22*zeta^7 - 11*zeta^6 + 132*zeta^5 + 55*zeta^4 - 242*zeta^3 - 110*zeta^2 +
187*zeta + 44)*q^269 + 1/3*(4*zeta^7 + 12*zeta^6 - 40*zeta^5 - 72*zeta^4 + 
124*zeta^3 + 112*zeta^2 - 120*zeta - 48)*q^271 + 1/4*(6*zeta^7 + 6*zeta^6 - 
36*zeta^5 - 36*zeta^4 + 60*zeta^3 + 54*zeta^2 - 30*zeta - 9)*q^272 + 
1/2*(3*zeta^7 - 2*zeta^6 - 24*zeta^5 + 11*zeta^4 + 56*zeta^3 - 12*zeta^2 - 
33*zeta + 2)*q^274 + 1/6*(28*zeta^7 + 21*zeta^6 - 189*zeta^5 - 84*zeta^4 + 
378*zeta^3 + 56*zeta^2 - 196*zeta - 35)*q^277 + 1/3*(-2*zeta^7 - 6*zeta^6 + 
14*zeta^5 + 28*zeta^4 - 30*zeta^3 - 18*zeta^2 + 22*zeta - 22)*q^278 + (5*zeta^7 
+ 3*zeta^6 - 32*zeta^5 - 17*zeta^4 + 57*zeta^3 + 25*zeta^2 - 20*zeta - 1)*q^279 
+ (8*zeta^7 - 2*zeta^6 - 50*zeta^5 + 16*zeta^4 + 92*zeta^3 - 30*zeta^2 - 
50*zeta)*q^280 + 1/2*(4*zeta^7 - zeta^6 - 25*zeta^5 + 8*zeta^4 + 46*zeta^3 - 
15*zeta^2 - 25*zeta)*q^281 + 1/3*(4*zeta^7 + 12*zeta^6 - 28*zeta^5 - 56*zeta^4 +
60*zeta^3 + 36*zeta^2 - 44*zeta + 44)*q^283 + 1/3*(4*zeta^7 + 3*zeta^6 - 
27*zeta^5 - 12*zeta^4 + 54*zeta^3 + 8*zeta^2 - 28*zeta - 5)*q^284 + (-6*zeta^7 +
4*zeta^6 + 48*zeta^5 - 22*zeta^4 - 112*zeta^3 + 24*zeta^2 + 66*zeta - 4)*q^287 +
1/4*(-5*zeta^7 - 15*zeta^6 + 50*zeta^5 + 90*zeta^4 - 155*zeta^3 - 140*zeta^2 + 
150*zeta + 60)*q^288 + 1/4*(-6*zeta^7 - 6*zeta^6 + 36*zeta^5 + 36*zeta^4 - 
60*zeta^3 - 54*zeta^2 + 30*zeta + 9)*q^289 + (-zeta^7 - 3*zeta^6 + 10*zeta^5 + 
18*zeta^4 - 31*zeta^3 - 28*zeta^2 + 30*zeta + 12)*q^290 + 1/2*(-2*zeta^7 - 
zeta^6 + 12*zeta^5 + 5*zeta^4 - 22*zeta^3 - 10*zeta^2 + 17*zeta + 4)*q^292 + 
1/2*(-2*zeta^7 + 13*zeta^5 + 3*zeta^4 - 19*zeta^3 - 11*zeta^2 - 2*zeta + 
9)*q^293 + (-2*zeta^7 - 6*zeta^6 + 14*zeta^5 + 28*zeta^4 - 30*zeta^3 - 18*zeta^2
+ 22*zeta - 22)*q^295 + 1/2*(5*zeta^7 + 3*zeta^6 - 32*zeta^5 - 17*zeta^4 + 
57*zeta^3 + 25*zeta^2 - 20*zeta - 1)*q^296 + 1/6*(-20*zeta^7 + 5*zeta^6 + 
125*zeta^5 - 40*zeta^4 - 230*zeta^3 + 75*zeta^2 + 125*zeta)*q^298 + 
1/3*(10*zeta^7 + 6*zeta^6 - 64*zeta^5 - 34*zeta^4 + 114*zeta^3 + 50*zeta^2 - 
40*zeta - 2)*q^299 + 1/3*(16*zeta^7 + 12*zeta^6 - 108*zeta^5 - 48*zeta^4 + 
216*zeta^3 + 32*zeta^2 - 112*zeta - 20)*q^301 + 1/3*(-8*zeta^7 + 52*zeta^5 + 
12*zeta^4 - 76*zeta^3 - 44*zeta^2 - 8*zeta + 36)*q^302 + 1/3*(3*zeta^7 - 
2*zeta^6 - 24*zeta^5 + 11*zeta^4 + 56*zeta^3 - 12*zeta^2 - 33*zeta + 2)*q^304 + 
1/3*(-5*zeta^7 - 15*zeta^6 + 50*zeta^5 + 90*zeta^4 - 155*zeta^3 - 140*zeta^2 + 
150*zeta + 60)*q^305 + 1/4*(-18*zeta^7 - 18*zeta^6 + 108*zeta^5 + 108*zeta^4 - 
180*zeta^3 - 162*zeta^2 + 90*zeta + 27)*q^306 + (zeta^7 + 3*zeta^6 - 10*zeta^5 -
18*zeta^4 + 31*zeta^3 + 28*zeta^2 - 30*zeta - 12)*q^307 + 1/3*(-4*zeta^7 + 
26*zeta^5 + 6*zeta^4 - 38*zeta^3 - 22*zeta^2 - 4*zeta + 18)*q^310 + 
1/3*(28*zeta^7 + 21*zeta^6 - 189*zeta^5 - 84*zeta^4 + 378*zeta^3 + 56*zeta^2 - 
196*zeta - 35)*q^311 + 1/6*(55*zeta^7 + 33*zeta^6 - 352*zeta^5 - 187*zeta^4 + 
627*zeta^3 + 275*zeta^2 - 220*zeta - 11)*q^313 + 1/6*(-4*zeta^7 + zeta^6 + 
25*zeta^5 - 8*zeta^4 - 46*zeta^3 + 15*zeta^2 + 25*zeta)*q^314 + (-8*zeta^7 + 
2*zeta^6 + 50*zeta^5 - 16*zeta^4 - 92*zeta^3 + 30*zeta^2 + 50*zeta)*q^315 + 
(5*zeta^7 + 3*zeta^6 - 32*zeta^5 - 17*zeta^4 + 57*zeta^3 + 25*zeta^2 - 20*zeta -
1)*q^316 + 1/6*(5*zeta^7 + 15*zeta^6 - 35*zeta^5 - 70*zeta^4 + 75*zeta^3 + 
45*zeta^2 - 55*zeta + 55)*q^317 + 1/6*(14*zeta^7 + 7*zeta^6 - 84*zeta^5 - 
35*zeta^4 + 154*zeta^3 + 70*zeta^2 - 119*zeta - 28)*q^320 + 1/3*(4*zeta^7 + 
12*zeta^6 - 40*zeta^5 - 72*zeta^4 + 124*zeta^3 + 112*zeta^2 - 120*zeta - 
48)*q^322 + (6*zeta^7 + 6*zeta^6 - 36*zeta^5 - 36*zeta^4 + 60*zeta^3 + 54*zeta^2
- 30*zeta - 9)*q^323 + 1/4*(3*zeta^7 + 9*zeta^6 - 30*zeta^5 - 54*zeta^4 + 
93*zeta^3 + 84*zeta^2 - 90*zeta - 36)*q^324 + 1/6*(3*zeta^7 - 2*zeta^6 - 
24*zeta^5 + 11*zeta^4 + 56*zeta^3 - 12*zeta^2 - 33*zeta + 2)*q^325 + (4*zeta^7 +
2*zeta^6 - 24*zeta^5 - 10*zeta^4 + 44*zeta^3 + 20*zeta^2 - 34*zeta - 8)*q^326 + 
1/2*(-12*zeta^7 - 9*zeta^6 + 81*zeta^5 + 36*zeta^4 - 162*zeta^3 - 24*zeta^2 + 
84*zeta + 15)*q^328 + 1/3*(-4*zeta^7 + zeta^6 + 25*zeta^5 - 8*zeta^4 - 46*zeta^3
+ 15*zeta^2 + 25*zeta)*q^331 + 1/3*(-4*zeta^7 + zeta^6 + 25*zeta^5 - 8*zeta^4 - 
46*zeta^3 + 15*zeta^2 + 25*zeta)*q^332 + 1/2*(-5*zeta^7 - 3*zeta^6 + 32*zeta^5 +
17*zeta^4 - 57*zeta^3 - 25*zeta^2 + 20*zeta + 1)*q^333 + 1/3*(-zeta^7 - 3*zeta^6
+ 7*zeta^5 + 14*zeta^4 - 15*zeta^3 - 9*zeta^2 + 11*zeta - 11)*q^334 + 
1/3*(-8*zeta^7 - 6*zeta^6 + 54*zeta^5 + 24*zeta^4 - 108*zeta^3 - 16*zeta^2 + 
56*zeta + 10)*q^335 + 1/6*(14*zeta^7 + 7*zeta^6 - 84*zeta^5 - 35*zeta^4 + 
154*zeta^3 + 70*zeta^2 - 119*zeta - 28)*q^337 + 1/4*(9*zeta^7 - 6*zeta^6 - 
72*zeta^5 + 33*zeta^4 + 168*zeta^3 - 36*zeta^2 - 99*zeta + 6)*q^338 + 
1/2*(-6*zeta^7 - 6*zeta^6 + 36*zeta^5 + 36*zeta^4 - 60*zeta^3 - 54*zeta^2 + 
30*zeta + 9)*q^340 + (-3*zeta^7 + 2*zeta^6 + 24*zeta^5 - 11*zeta^4 - 56*zeta^3 +
12*zeta^2 + 33*zeta - 2)*q^342 + 1/3*(-4*zeta^7 - 2*zeta^6 + 24*zeta^5 + 
10*zeta^4 - 44*zeta^3 - 20*zeta^2 + 34*zeta + 8)*q^343 + (-2*zeta^7 + 13*zeta^5 
+ 3*zeta^4 - 19*zeta^3 - 11*zeta^2 - 2*zeta + 9)*q^344 + 1/6*(11*zeta^7 + 
33*zeta^6 - 77*zeta^5 - 154*zeta^4 + 165*zeta^3 + 99*zeta^2 - 121*zeta + 
121)*q^346 + 1/3*(-40*zeta^7 - 24*zeta^6 + 256*zeta^5 + 136*zeta^4 - 456*zeta^3 
- 200*zeta^2 + 160*zeta + 8)*q^347 + 1/2*(12*zeta^7 - 3*zeta^6 - 75*zeta^5 + 
24*zeta^4 + 138*zeta^3 - 45*zeta^2 - 75*zeta)*q^349 + 1/3*(-5*zeta^7 - 3*zeta^6 
+ 32*zeta^5 + 17*zeta^4 - 57*zeta^3 - 25*zeta^2 + 20*zeta + 1)*q^350 + 
1/2*(10*zeta^7 - 65*zeta^5 - 15*zeta^4 + 95*zeta^3 + 55*zeta^2 + 10*zeta - 
45)*q^353 + 1/3*(6*zeta^7 - 4*zeta^6 - 48*zeta^5 + 22*zeta^4 + 112*zeta^3 - 
24*zeta^2 - 66*zeta + 4)*q^355 + 1/6*(5*zeta^7 + 15*zeta^6 - 50*zeta^5 - 
90*zeta^4 + 155*zeta^3 + 140*zeta^2 - 150*zeta - 60)*q^356 + (zeta^7 + 3*zeta^6 
- 10*zeta^5 - 18*zeta^4 + 31*zeta^3 + 28*zeta^2 - 30*zeta - 12)*q^358 + 
1/2*(-6*zeta^7 - 3*zeta^6 + 36*zeta^5 + 15*zeta^4 - 66*zeta^3 - 30*zeta^2 + 
51*zeta + 12)*q^360 + 1/4*(2*zeta^7 - 13*zeta^5 - 3*zeta^4 + 19*zeta^3 + 
11*zeta^2 + 2*zeta - 9)*q^361 + 1/6*(4*zeta^7 + 3*zeta^6 - 27*zeta^5 - 12*zeta^4
+ 54*zeta^3 + 8*zeta^2 - 28*zeta - 5)*q^362 + 1/3*(-10*zeta^7 - 6*zeta^6 + 
64*zeta^5 + 34*zeta^4 - 114*zeta^3 - 50*zeta^2 + 40*zeta + 2)*q^364 + (-4*zeta^7
+ zeta^6 + 25*zeta^5 - 8*zeta^4 - 46*zeta^3 + 15*zeta^2 + 25*zeta)*q^365 + 
1/3*(-35*zeta^7 - 21*zeta^6 + 224*zeta^5 + 119*zeta^4 - 399*zeta^3 - 175*zeta^2 
+ 140*zeta + 7)*q^367 + 1/3*(zeta^7 + 3*zeta^6 - 7*zeta^5 - 14*zeta^4 + 
15*zeta^3 + 9*zeta^2 - 11*zeta + 11)*q^368 + 1/2*(12*zeta^7 + 9*zeta^6 - 
81*zeta^5 - 36*zeta^4 + 162*zeta^3 + 24*zeta^2 - 84*zeta - 15)*q^369 + 
1/3*(2*zeta^7 - 13*zeta^5 - 3*zeta^4 + 19*zeta^3 + 11*zeta^2 + 2*zeta - 9)*q^370
+ (-4*zeta^7 - 2*zeta^6 + 24*zeta^5 + 10*zeta^4 - 44*zeta^3 - 20*zeta^2 + 
34*zeta + 8)*q^371 + 1/2*(-zeta^7 - 3*zeta^6 + 10*zeta^5 + 18*zeta^4 - 31*zeta^3
- 28*zeta^2 + 30*zeta + 12)*q^373 + (2*zeta^7 + zeta^6 - 12*zeta^5 - 5*zeta^4 + 
22*zeta^3 + 10*zeta^2 - 17*zeta - 4)*q^377 + 1/3*(-8*zeta^7 - 6*zeta^6 + 
54*zeta^5 + 24*zeta^4 - 108*zeta^3 - 16*zeta^2 + 56*zeta + 10)*q^379 + 
1/3*(2*zeta^7 + 6*zeta^6 - 14*zeta^5 - 28*zeta^4 + 30*zeta^3 + 18*zeta^2 - 
22*zeta + 22)*q^380 + 1/3*(-16*zeta^7 + 4*zeta^6 + 100*zeta^5 - 32*zeta^4 - 
184*zeta^3 + 60*zeta^2 + 100*zeta)*q^382 + (8*zeta^7 - 2*zeta^6 - 50*zeta^5 + 
16*zeta^4 + 92*zeta^3 - 30*zeta^2 - 50*zeta)*q^383 + 1/6*(-4*zeta^7 - 3*zeta^6 +
27*zeta^5 + 12*zeta^4 - 54*zeta^3 - 8*zeta^2 + 28*zeta + 5)*q^386 + (2*zeta^7 - 
13*zeta^5 - 3*zeta^4 + 19*zeta^3 + 11*zeta^2 + 2*zeta - 9)*q^387 + 1/6*(2*zeta^7
+ zeta^6 - 12*zeta^5 - 5*zeta^4 + 22*zeta^3 + 10*zeta^2 - 17*zeta - 4)*q^388 + 
1/2*(3*zeta^7 - 2*zeta^6 - 24*zeta^5 + 11*zeta^4 + 56*zeta^3 - 12*zeta^2 - 
33*zeta + 2)*q^389 + (-6*zeta^7 - 6*zeta^6 + 36*zeta^5 + 36*zeta^4 - 60*zeta^3 -
54*zeta^2 + 30*zeta + 9)*q^391 + 1/4*(-9*zeta^7 - 27*zeta^6 + 90*zeta^5 + 
162*zeta^4 - 279*zeta^3 - 252*zeta^2 + 270*zeta + 108)*q^392 + 1/2*(-6*zeta^7 - 
3*zeta^6 + 36*zeta^5 + 15*zeta^4 - 66*zeta^3 - 30*zeta^2 + 51*zeta + 12)*q^394 +
(4*zeta^7 - 26*zeta^5 - 6*zeta^4 + 38*zeta^3 + 22*zeta^2 + 4*zeta - 18)*q^395 + 
1/2*(-zeta^7 - 3*zeta^6 + 7*zeta^5 + 14*zeta^4 - 15*zeta^3 - 9*zeta^2 + 11*zeta 
- 11)*q^397 + 1/3*(-25*zeta^7 - 15*zeta^6 + 160*zeta^5 + 85*zeta^4 - 285*zeta^3 
- 125*zeta^2 + 100*zeta + 5)*q^398 + 1/12*(-4*zeta^7 + zeta^6 + 25*zeta^5 - 
8*zeta^4 - 46*zeta^3 + 15*zeta^2 + 25*zeta)*q^400 + 1/6*(35*zeta^7 + 21*zeta^6 -
224*zeta^5 - 119*zeta^4 + 399*zeta^3 + 175*zeta^2 - 140*zeta - 7)*q^401 + 
1/3*(-8*zeta^7 - 6*zeta^6 + 54*zeta^5 + 24*zeta^4 - 108*zeta^3 - 16*zeta^2 + 
56*zeta + 10)*q^403 + 1/6*(-10*zeta^7 + 65*zeta^5 + 15*zeta^4 - 95*zeta^3 - 
55*zeta^2 - 10*zeta + 45)*q^404 + 1/2*(6*zeta^7 + 3*zeta^6 - 36*zeta^5 - 
15*zeta^4 + 66*zeta^3 + 30*zeta^2 - 51*zeta - 12)*q^405 + (-6*zeta^7 + 4*zeta^6 
+ 48*zeta^5 - 22*zeta^4 - 112*zeta^3 + 24*zeta^2 + 66*zeta - 4)*q^406 + 
1/6*(-13*zeta^7 - 39*zeta^6 + 130*zeta^5 + 234*zeta^4 - 403*zeta^3 - 364*zeta^2 
+ 390*zeta + 156)*q^409 + (-3*zeta^7 + 2*zeta^6 + 24*zeta^5 - 11*zeta^4 - 
56*zeta^3 + 12*zeta^2 + 33*zeta - 2)*q^410 + 1/3*(4*zeta^7 - 26*zeta^5 - 
6*zeta^4 + 38*zeta^3 + 22*zeta^2 + 4*zeta - 18)*q^412 + (-16*zeta^7 - 12*zeta^6 
+ 108*zeta^5 + 48*zeta^4 - 216*zeta^3 - 32*zeta^2 + 112*zeta + 20)*q^413 + 
(-zeta^7 - 3*zeta^6 + 7*zeta^5 + 14*zeta^4 - 15*zeta^3 - 9*zeta^2 + 11*zeta - 
11)*q^414 + 1/3*(-10*zeta^7 - 6*zeta^6 + 64*zeta^5 + 34*zeta^4 - 114*zeta^3 - 
50*zeta^2 + 40*zeta + 2)*q^415 + 1/6*(-20*zeta^7 + 5*zeta^6 + 125*zeta^5 - 
40*zeta^4 - 230*zeta^3 + 75*zeta^2 + 125*zeta)*q^416 + 1/3*(-2*zeta^7 - 6*zeta^6
+ 14*zeta^5 + 28*zeta^4 - 30*zeta^3 - 18*zeta^2 + 22*zeta - 22)*q^419 + 
1/6*(-22*zeta^7 + 143*zeta^5 + 33*zeta^4 - 209*zeta^3 - 121*zeta^2 - 22*zeta + 
99)*q^421 + 1/3*(4*zeta^7 + 2*zeta^6 - 24*zeta^5 - 10*zeta^4 + 44*zeta^3 + 
20*zeta^2 - 34*zeta - 8)*q^422 + 1/2*(-3*zeta^7 - 9*zeta^6 + 30*zeta^5 + 
54*zeta^4 - 93*zeta^3 - 84*zeta^2 + 90*zeta + 36)*q^424 + 1/4*(6*zeta^7 + 
6*zeta^6 - 36*zeta^5 - 36*zeta^4 + 60*zeta^3 + 54*zeta^2 - 30*zeta - 9)*q^425 + 
1/3*(-30*zeta^7 + 20*zeta^6 + 240*zeta^5 - 110*zeta^4 - 560*zeta^3 + 120*zeta^2 
+ 330*zeta - 20)*q^427 + 1/3*(4*zeta^7 + 2*zeta^6 - 24*zeta^5 - 10*zeta^4 + 
44*zeta^3 + 20*zeta^2 - 34*zeta - 8)*q^428 + 1/3*(8*zeta^7 + 6*zeta^6 - 
54*zeta^5 - 24*zeta^4 + 108*zeta^3 + 16*zeta^2 - 56*zeta - 10)*q^430 + (-zeta^7 
- 3*zeta^6 + 7*zeta^5 + 14*zeta^4 - 15*zeta^3 - 9*zeta^2 + 11*zeta - 11)*q^431 +
1/6*(-4*zeta^7 + zeta^6 + 25*zeta^5 - 8*zeta^4 - 46*zeta^3 + 15*zeta^2 + 
25*zeta)*q^433 + 1/3*(16*zeta^7 - 4*zeta^6 - 100*zeta^5 + 32*zeta^4 + 184*zeta^3
- 60*zeta^2 - 100*zeta)*q^434 + 1/2*(zeta^7 + 3*zeta^6 - 7*zeta^5 - 14*zeta^4 + 
15*zeta^3 + 9*zeta^2 - 11*zeta + 11)*q^436 + 1/3*(-16*zeta^7 - 12*zeta^6 + 
108*zeta^5 + 48*zeta^4 - 216*zeta^3 - 32*zeta^2 + 112*zeta + 20)*q^437 + 
1/3*(10*zeta^7 + 5*zeta^6 - 60*zeta^5 - 25*zeta^4 + 110*zeta^3 + 50*zeta^2 - 
85*zeta - 20)*q^439 + 1/4*(9*zeta^7 + 27*zeta^6 - 90*zeta^5 - 162*zeta^4 + 
279*zeta^3 + 252*zeta^2 - 270*zeta - 108)*q^441 + 1/2*(-6*zeta^7 - 6*zeta^6 + 
36*zeta^5 + 36*zeta^4 - 60*zeta^3 - 54*zeta^2 + 30*zeta + 9)*q^442 + 
1/3*(-7*zeta^7 - 21*zeta^6 + 70*zeta^5 + 126*zeta^4 - 217*zeta^3 - 196*zeta^2 + 
210*zeta + 84)*q^443 + 1/3*(10*zeta^7 + 5*zeta^6 - 60*zeta^5 - 25*zeta^4 + 
110*zeta^3 + 50*zeta^2 - 85*zeta - 20)*q^445 + (4*zeta^7 - 26*zeta^5 - 6*zeta^4 
+ 38*zeta^3 + 22*zeta^2 + 4*zeta - 18)*q^446 + 1/3*(-7*zeta^7 - 21*zeta^6 + 
49*zeta^5 + 98*zeta^4 - 105*zeta^3 - 63*zeta^2 + 77*zeta - 77)*q^448 + 
1/6*(-85*zeta^7 - 51*zeta^6 + 544*zeta^5 + 289*zeta^4 - 969*zeta^3 - 425*zeta^2 
+ 340*zeta + 17)*q^449 + 1/4*(4*zeta^7 - zeta^6 - 25*zeta^5 + 8*zeta^4 + 
46*zeta^3 - 15*zeta^2 - 25*zeta)*q^450 + 1/6*(-35*zeta^7 - 21*zeta^6 + 
224*zeta^5 + 119*zeta^4 - 399*zeta^3 - 175*zeta^2 + 140*zeta + 7)*q^452 + 
(8*zeta^7 + 6*zeta^6 - 54*zeta^5 - 24*zeta^4 + 108*zeta^3 + 16*zeta^2 - 56*zeta 
- 10)*q^454 + 1/3*(-8*zeta^7 + 52*zeta^5 + 12*zeta^4 - 76*zeta^3 - 44*zeta^2 - 
8*zeta + 36)*q^455 + 1/2*(-3*zeta^7 + 2*zeta^6 + 24*zeta^5 - 11*zeta^4 - 
56*zeta^3 + 12*zeta^2 + 33*zeta - 2)*q^457 + 1/2*(zeta^7 + 3*zeta^6 - 10*zeta^5 
- 18*zeta^4 + 31*zeta^3 + 28*zeta^2 - 30*zeta - 12)*q^458 + 1/3*(-2*zeta^7 - 
6*zeta^6 + 20*zeta^5 + 36*zeta^4 - 62*zeta^3 - 56*zeta^2 + 60*zeta + 24)*q^460 +
1/6*(-3*zeta^7 + 2*zeta^6 + 24*zeta^5 - 11*zeta^4 - 56*zeta^3 + 12*zeta^2 + 
33*zeta - 2)*q^461 + 1/3*(-16*zeta^7 + 104*zeta^5 + 24*zeta^4 - 152*zeta^3 - 
88*zeta^2 - 16*zeta + 72)*q^463 + 1/2*(-4*zeta^7 - 3*zeta^6 + 27*zeta^5 + 
12*zeta^4 - 54*zeta^3 - 8*zeta^2 + 28*zeta + 5)*q^464 + 1/2*(-5*zeta^7 - 
3*zeta^6 + 32*zeta^5 + 17*zeta^4 - 57*zeta^3 - 25*zeta^2 + 20*zeta + 1)*q^466 + 
(-4*zeta^7 + zeta^6 + 25*zeta^5 - 8*zeta^4 - 46*zeta^3 + 15*zeta^2 + 
25*zeta)*q^467 + 1/2*(4*zeta^7 - zeta^6 - 25*zeta^5 + 8*zeta^4 + 46*zeta^3 - 
15*zeta^2 - 25*zeta)*q^468 + 1/3*(-20*zeta^7 - 12*zeta^6 + 128*zeta^5 + 
68*zeta^4 - 228*zeta^3 - 100*zeta^2 + 80*zeta + 4)*q^469 + (6*zeta^7 - 39*zeta^5
- 9*zeta^4 + 57*zeta^3 + 33*zeta^2 + 6*zeta - 27)*q^472 + 1/3*(-zeta^7 - 
3*zeta^6 + 10*zeta^5 + 18*zeta^4 - 31*zeta^3 - 28*zeta^2 + 30*zeta + 12)*q^475 +
(6*zeta^7 + 6*zeta^6 - 36*zeta^5 - 36*zeta^4 + 60*zeta^3 + 54*zeta^2 - 30*zeta -
9)*q^476 + 1/2*(3*zeta^7 + 9*zeta^6 - 30*zeta^5 - 54*zeta^4 + 93*zeta^3 + 
84*zeta^2 - 90*zeta - 36)*q^477 + 1/3*(12*zeta^7 - 8*zeta^6 - 96*zeta^5 + 
44*zeta^4 + 224*zeta^3 - 48*zeta^2 - 132*zeta + 8)*q^478 + (-6*zeta^7 - 3*zeta^6
+ 36*zeta^5 + 15*zeta^4 - 66*zeta^3 - 30*zeta^2 + 51*zeta + 12)*q^479 + 
1/3*(4*zeta^7 + 3*zeta^6 - 27*zeta^5 - 12*zeta^4 + 54*zeta^3 + 8*zeta^2 - 
28*zeta - 5)*q^481 + 1/2*(3*zeta^7 + 9*zeta^6 - 21*zeta^5 - 42*zeta^4 + 
45*zeta^3 + 27*zeta^2 - 33*zeta + 33)*q^482 + 1/12*(-44*zeta^7 + 11*zeta^6 + 
275*zeta^5 - 88*zeta^4 - 506*zeta^3 + 165*zeta^2 + 275*zeta)*q^484 + 
1/3*(4*zeta^7 - zeta^6 - 25*zeta^5 + 8*zeta^4 + 46*zeta^3 - 15*zeta^2 - 
25*zeta)*q^485 + 1/3*(-5*zeta^7 - 15*zeta^6 + 35*zeta^5 + 70*zeta^4 - 75*zeta^3 
- 45*zeta^2 + 55*zeta - 55)*q^487 + 1/2*(-20*zeta^7 - 15*zeta^6 + 135*zeta^5 + 
60*zeta^4 - 270*zeta^3 - 40*zeta^2 + 140*zeta + 25)*q^488 + 1/2*(-6*zeta^7 - 
3*zeta^6 + 36*zeta^5 + 15*zeta^4 - 66*zeta^3 - 30*zeta^2 + 51*zeta + 12)*q^490 +
1/3*(15*zeta^7 - 10*zeta^6 - 120*zeta^5 + 55*zeta^4 + 280*zeta^3 - 60*zeta^2 - 
165*zeta + 10)*q^491 + 1/2*(-18*zeta^7 - 18*zeta^6 + 108*zeta^5 + 108*zeta^4 - 
180*zeta^3 - 162*zeta^2 + 90*zeta + 27)*q^493 + 1/3*(2*zeta^7 + 6*zeta^6 - 
20*zeta^5 - 36*zeta^4 + 62*zeta^3 + 56*zeta^2 - 60*zeta - 24)*q^494 + 
1/3*(2*zeta^7 + zeta^6 - 12*zeta^5 - 5*zeta^4 + 22*zeta^3 + 10*zeta^2 - 17*zeta 
- 4)*q^496 + 1/3*(8*zeta^7 - 52*zeta^5 - 12*zeta^4 + 76*zeta^3 + 44*zeta^2 + 
8*zeta - 36)*q^497 + 1/3*(10*zeta^7 + 30*zeta^6 - 70*zeta^5 - 140*zeta^4 + 
150*zeta^3 + 90*zeta^2 - 110*zeta + 110)*q^499 + (5*zeta^7 + 3*zeta^6 - 
32*zeta^5 - 17*zeta^4 + 57*zeta^3 + 25*zeta^2 - 20*zeta - 1)*q^500 + (4*zeta^7 -
zeta^6 - 25*zeta^5 + 8*zeta^4 + 46*zeta^3 - 15*zeta^2 - 25*zeta)*q^502 + 
(5*zeta^7 + 3*zeta^6 - 32*zeta^5 - 17*zeta^4 + 57*zeta^3 + 25*zeta^2 - 20*zeta -
1)*q^503 + (3*zeta^7 + 9*zeta^6 - 21*zeta^5 - 42*zeta^4 + 45*zeta^3 + 27*zeta^2 
- 33*zeta + 33)*q^504 + 1/3*(20*zeta^7 + 15*zeta^6 - 135*zeta^5 - 60*zeta^4 + 
270*zeta^3 + 40*zeta^2 - 140*zeta - 25)*q^505 + 1/3*(-6*zeta^7 + 4*zeta^6 + 
48*zeta^5 - 22*zeta^4 - 112*zeta^3 + 24*zeta^2 + 66*zeta - 4)*q^508 + 
1/6*(zeta^7 + 3*zeta^6 - 10*zeta^5 - 18*zeta^4 + 31*zeta^3 + 28*zeta^2 - 30*zeta
- 12)*q^509 + (2*zeta^7 + 6*zeta^6 - 20*zeta^5 - 36*zeta^4 + 62*zeta^3 + 
56*zeta^2 - 60*zeta - 24)*q^511 + 1/12*(33*zeta^7 - 22*zeta^6 - 264*zeta^5 + 
121*zeta^4 + 616*zeta^3 - 132*zeta^2 - 363*zeta + 22)*q^512 + 1/2*(6*zeta^7 - 
39*zeta^5 - 9*zeta^4 + 57*zeta^3 + 33*zeta^2 + 6*zeta - 27)*q^514 + 
1/3*(-16*zeta^7 - 12*zeta^6 + 108*zeta^5 + 48*zeta^4 - 216*zeta^3 - 32*zeta^2 + 
112*zeta + 20)*q^515 + 1/3*(-8*zeta^7 + 2*zeta^6 + 50*zeta^5 - 16*zeta^4 - 
92*zeta^3 + 30*zeta^2 + 50*zeta)*q^518 + (-5*zeta^7 - 3*zeta^6 + 32*zeta^5 + 
17*zeta^4 - 57*zeta^3 - 25*zeta^2 + 20*zeta + 1)*q^520 + 1/6*(-13*zeta^7 - 
39*zeta^6 + 91*zeta^5 + 182*zeta^4 - 195*zeta^3 - 117*zeta^2 + 143*zeta - 
143)*q^521 + 1/2*(12*zeta^7 + 9*zeta^6 - 81*zeta^5 - 36*zeta^4 + 162*zeta^3 + 
24*zeta^2 - 84*zeta - 15)*q^522 + (6*zeta^7 - 39*zeta^5 - 9*zeta^4 + 57*zeta^3 +
33*zeta^2 + 6*zeta - 27)*q^523 + 1/3*(8*zeta^7 + 4*zeta^6 - 48*zeta^5 - 
20*zeta^4 + 88*zeta^3 + 40*zeta^2 - 68*zeta - 16)*q^524 + 1/3*(-4*zeta^7 - 
12*zeta^6 + 40*zeta^5 + 72*zeta^4 - 124*zeta^3 - 112*zeta^2 + 120*zeta + 
48)*q^526 + (-6*zeta^7 - 6*zeta^6 + 36*zeta^5 + 36*zeta^4 - 60*zeta^3 - 
54*zeta^2 + 30*zeta + 9)*q^527 + 1/12*(-21*zeta^7 + 14*zeta^6 + 168*zeta^5 - 
77*zeta^4 - 392*zeta^3 + 84*zeta^2 + 231*zeta - 14)*q^529 + (-2*zeta^7 - zeta^6 
+ 12*zeta^5 + 5*zeta^4 - 22*zeta^3 - 10*zeta^2 + 17*zeta + 4)*q^530 + (-6*zeta^7
+ 39*zeta^5 + 9*zeta^4 - 57*zeta^3 - 33*zeta^2 - 6*zeta + 27)*q^531 + 
1/3*(16*zeta^7 + 12*zeta^6 - 108*zeta^5 - 48*zeta^4 + 216*zeta^3 + 32*zeta^2 - 
112*zeta - 20)*q^532 + (-zeta^7 - 3*zeta^6 + 7*zeta^5 + 14*zeta^4 - 15*zeta^3 - 
9*zeta^2 + 11*zeta - 11)*q^533 + 1/3*(16*zeta^7 - 4*zeta^6 - 100*zeta^5 + 
32*zeta^4 + 184*zeta^3 - 60*zeta^2 - 100*zeta)*q^535 + (-4*zeta^7 + zeta^6 + 
25*zeta^5 - 8*zeta^4 - 46*zeta^3 + 15*zeta^2 + 25*zeta)*q^536 + 1/6*(11*zeta^7 +
33*zeta^6 - 77*zeta^5 - 154*zeta^4 + 165*zeta^3 + 99*zeta^2 - 121*zeta + 
121)*q^538 + 1/2*(-2*zeta^7 - zeta^6 + 12*zeta^5 + 5*zeta^4 - 22*zeta^3 - 
10*zeta^2 + 17*zeta + 4)*q^541 + 1/3*(12*zeta^7 - 8*zeta^6 - 96*zeta^5 + 
44*zeta^4 + 224*zeta^3 - 48*zeta^2 - 132*zeta + 8)*q^542 + 1/4*(30*zeta^7 + 
30*zeta^6 - 180*zeta^5 - 180*zeta^4 + 300*zeta^3 + 270*zeta^2 - 150*zeta - 
45)*q^544 + (zeta^7 + 3*zeta^6 - 10*zeta^5 - 18*zeta^4 + 31*zeta^3 + 28*zeta^2 -
30*zeta - 12)*q^545 + 1/3*(16*zeta^7 + 8*zeta^6 - 96*zeta^5 - 40*zeta^4 + 
176*zeta^3 + 80*zeta^2 - 136*zeta - 32)*q^547 + 1/2*(-2*zeta^7 + 13*zeta^5 + 
3*zeta^4 - 19*zeta^3 - 11*zeta^2 - 2*zeta + 9)*q^548 + 1/2*(20*zeta^7 + 
15*zeta^6 - 135*zeta^5 - 60*zeta^4 + 270*zeta^3 + 40*zeta^2 - 140*zeta - 
25)*q^549 + (10*zeta^7 + 6*zeta^6 - 64*zeta^5 - 34*zeta^4 + 114*zeta^3 + 
50*zeta^2 - 40*zeta - 2)*q^551 + (-16*zeta^7 + 4*zeta^6 + 100*zeta^5 - 32*zeta^4
- 184*zeta^3 + 60*zeta^2 + 100*zeta)*q^553 + 1/6*(35*zeta^7 + 21*zeta^6 - 
224*zeta^5 - 119*zeta^4 + 399*zeta^3 + 175*zeta^2 - 140*zeta - 7)*q^554 + 
1/3*(8*zeta^7 + 6*zeta^6 - 54*zeta^5 - 24*zeta^4 + 108*zeta^3 + 16*zeta^2 - 
56*zeta - 10)*q^556 + 1/2*(-10*zeta^7 + 65*zeta^5 + 15*zeta^4 - 95*zeta^3 - 
55*zeta^2 - 10*zeta + 45)*q^557 + (-2*zeta^7 - zeta^6 + 12*zeta^5 + 5*zeta^4 - 
22*zeta^3 - 10*zeta^2 + 17*zeta + 4)*q^558 + 1/3*(-6*zeta^7 + 4*zeta^6 + 
48*zeta^5 - 22*zeta^4 - 112*zeta^3 + 24*zeta^2 + 66*zeta - 4)*q^559 + 
1/3*(-2*zeta^7 - 6*zeta^6 + 20*zeta^5 + 36*zeta^4 - 62*zeta^3 - 56*zeta^2 + 
60*zeta + 24)*q^560 + 1/2*(-zeta^7 - 3*zeta^6 + 10*zeta^5 + 18*zeta^4 - 
31*zeta^3 - 28*zeta^2 + 30*zeta + 12)*q^562 + 1/3*(-3*zeta^7 + 2*zeta^6 + 
24*zeta^5 - 11*zeta^4 - 56*zeta^3 + 12*zeta^2 + 33*zeta - 2)*q^563 + 
1/3*(-14*zeta^7 + 91*zeta^5 + 21*zeta^4 - 133*zeta^3 - 77*zeta^2 - 14*zeta + 
63)*q^565 + 1/3*(16*zeta^7 + 12*zeta^6 - 108*zeta^5 - 48*zeta^4 + 216*zeta^3 + 
32*zeta^2 - 112*zeta - 20)*q^566 + (-3*zeta^7 - 9*zeta^6 + 21*zeta^5 + 42*zeta^4
- 45*zeta^3 - 27*zeta^2 + 33*zeta - 33)*q^567 + (5*zeta^7 + 3*zeta^6 - 32*zeta^5
- 17*zeta^4 + 57*zeta^3 + 25*zeta^2 - 20*zeta - 1)*q^568 + 1/6*(76*zeta^7 - 
19*zeta^6 - 475*zeta^5 + 152*zeta^4 + 874*zeta^3 - 285*zeta^2 - 475*zeta)*q^569 
+ 1/3*(40*zeta^7 + 24*zeta^6 - 256*zeta^5 - 136*zeta^4 + 456*zeta^3 + 200*zeta^2
- 160*zeta - 8)*q^571 + (-4*zeta^7 + 26*zeta^5 + 6*zeta^4 - 38*zeta^3 - 
22*zeta^2 - 4*zeta + 18)*q^574 + 1/3*(2*zeta^7 + zeta^6 - 12*zeta^5 - 5*zeta^4 +
22*zeta^3 + 10*zeta^2 - 17*zeta - 4)*q^575 + 1/4*(-21*zeta^7 + 14*zeta^6 + 
168*zeta^5 - 77*zeta^4 - 392*zeta^3 + 84*zeta^2 + 231*zeta - 14)*q^576 + 
1/6*(7*zeta^7 + 21*zeta^6 - 70*zeta^5 - 126*zeta^4 + 217*zeta^3 + 196*zeta^2 - 
210*zeta - 84)*q^577 + 1/4*(6*zeta^7 + 6*zeta^6 - 36*zeta^5 - 36*zeta^4 + 
60*zeta^3 + 54*zeta^2 - 30*zeta - 9)*q^578 + (3*zeta^7 - 2*zeta^6 - 24*zeta^5 + 
11*zeta^4 + 56*zeta^3 - 12*zeta^2 - 33*zeta + 2)*q^580 + 1/3*(8*zeta^7 + 
4*zeta^6 - 48*zeta^5 - 20*zeta^4 + 88*zeta^3 + 40*zeta^2 - 68*zeta - 16)*q^581 +
1/2*(3*zeta^7 + 9*zeta^6 - 21*zeta^5 - 42*zeta^4 + 45*zeta^3 + 27*zeta^2 - 
33*zeta + 33)*q^584 + (5*zeta^7 + 3*zeta^6 - 32*zeta^5 - 17*zeta^4 + 57*zeta^3 +
25*zeta^2 - 20*zeta - 1)*q^585 + 1/2*(4*zeta^7 - zeta^6 - 25*zeta^5 + 8*zeta^4 +
46*zeta^3 - 15*zeta^2 - 25*zeta)*q^586 + 1/3*(-4*zeta^7 + zeta^6 + 25*zeta^5 - 
8*zeta^4 - 46*zeta^3 + 15*zeta^2 + 25*zeta)*q^587 + 1/3*(4*zeta^7 + 12*zeta^6 - 
28*zeta^5 - 56*zeta^4 + 60*zeta^3 + 36*zeta^2 - 44*zeta + 44)*q^589 + (-8*zeta^7
- 6*zeta^6 + 54*zeta^5 + 24*zeta^4 - 108*zeta^3 - 16*zeta^2 + 56*zeta + 
10)*q^590 + 1/6*(-2*zeta^7 - zeta^6 + 12*zeta^5 + 5*zeta^4 - 22*zeta^3 - 
10*zeta^2 + 17*zeta + 4)*q^592 + 1/2*(9*zeta^7 - 6*zeta^6 - 72*zeta^5 + 
33*zeta^4 + 168*zeta^3 - 36*zeta^2 - 99*zeta + 6)*q^593 + (12*zeta^7 + 12*zeta^6
- 72*zeta^5 - 72*zeta^4 + 120*zeta^3 + 108*zeta^2 - 60*zeta - 18)*q^595 + 
1/6*(-5*zeta^7 - 15*zeta^6 + 50*zeta^5 + 90*zeta^4 - 155*zeta^3 - 140*zeta^2 + 
150*zeta + 60)*q^596 + 1/3*(-4*zeta^7 - 2*zeta^6 + 24*zeta^5 + 10*zeta^4 - 
44*zeta^3 - 20*zeta^2 + 34*zeta + 8)*q^598 + (4*zeta^7 - 26*zeta^5 - 6*zeta^4 + 
38*zeta^3 + 22*zeta^2 + 4*zeta - 18)*q^599 + 1/6*(-5*zeta^7 - 15*zeta^6 + 
35*zeta^5 + 70*zeta^4 - 75*zeta^3 - 45*zeta^2 + 55*zeta - 55)*q^601 + 
1/3*(20*zeta^7 + 12*zeta^6 - 128*zeta^5 - 68*zeta^4 + 228*zeta^3 + 100*zeta^2 - 
80*zeta - 4)*q^602 + (4*zeta^7 - zeta^6 - 25*zeta^5 + 8*zeta^4 + 46*zeta^3 - 
15*zeta^2 - 25*zeta)*q^603 + 1/3*(-16*zeta^7 + 4*zeta^6 + 100*zeta^5 - 32*zeta^4
- 184*zeta^3 + 60*zeta^2 + 100*zeta)*q^604 + 1/6*(-55*zeta^7 - 33*zeta^6 + 
352*zeta^5 + 187*zeta^4 - 627*zeta^3 - 275*zeta^2 + 220*zeta + 11)*q^605 + 
1/3*(20*zeta^7 + 15*zeta^6 - 135*zeta^5 - 60*zeta^4 + 270*zeta^3 + 40*zeta^2 - 
140*zeta - 25)*q^607 + 1/3*(-10*zeta^7 + 65*zeta^5 + 15*zeta^4 - 95*zeta^3 - 
55*zeta^2 - 10*zeta + 45)*q^608 + 1/3*(-15*zeta^7 + 10*zeta^6 + 120*zeta^5 - 
55*zeta^4 - 280*zeta^3 + 60*zeta^2 + 165*zeta - 10)*q^610 + 1/4*(-18*zeta^7 - 
18*zeta^6 + 108*zeta^5 + 108*zeta^4 - 180*zeta^3 - 162*zeta^2 + 90*zeta + 
27)*q^612 + 1/6*(13*zeta^7 + 39*zeta^6 - 130*zeta^5 - 234*zeta^4 + 403*zeta^3 + 
364*zeta^2 - 390*zeta - 156)*q^613 + (3*zeta^7 - 2*zeta^6 - 24*zeta^5 + 
11*zeta^4 + 56*zeta^3 - 12*zeta^2 - 33*zeta + 2)*q^614 + 1/2*(-4*zeta^7 - 
3*zeta^6 + 27*zeta^5 + 12*zeta^4 - 54*zeta^3 - 8*zeta^2 + 28*zeta + 5)*q^617 + 
(20*zeta^7 + 12*zeta^6 - 128*zeta^5 - 68*zeta^4 + 228*zeta^3 + 100*zeta^2 - 
80*zeta - 4)*q^619 + 1/3*(-8*zeta^7 + 2*zeta^6 + 50*zeta^5 - 16*zeta^4 - 
92*zeta^3 + 30*zeta^2 + 50*zeta)*q^620 + 1/3*(35*zeta^7 + 21*zeta^6 - 224*zeta^5
- 119*zeta^4 + 399*zeta^3 + 175*zeta^2 - 140*zeta - 7)*q^622 + 1/3*(-10*zeta^7 -
30*zeta^6 + 70*zeta^5 + 140*zeta^4 - 150*zeta^3 - 90*zeta^2 + 110*zeta - 
110)*q^623 + 1/12*(38*zeta^7 - 247*zeta^5 - 57*zeta^4 + 361*zeta^3 + 209*zeta^2 
+ 38*zeta - 171)*q^625 + 1/6*(-22*zeta^7 - 11*zeta^6 + 132*zeta^5 + 55*zeta^4 - 
242*zeta^3 - 110*zeta^2 + 187*zeta + 44)*q^626 + 1/6*(-zeta^7 - 3*zeta^6 + 
10*zeta^5 + 18*zeta^4 - 31*zeta^3 - 28*zeta^2 + 30*zeta + 12)*q^628 + 
1/2*(6*zeta^7 + 6*zeta^6 - 36*zeta^5 - 36*zeta^4 + 60*zeta^3 + 54*zeta^2 - 
30*zeta - 9)*q^629 + (2*zeta^7 + 6*zeta^6 - 20*zeta^5 - 36*zeta^4 + 62*zeta^3 + 
56*zeta^2 - 60*zeta - 24)*q^630 + 1/3*(12*zeta^7 - 8*zeta^6 - 96*zeta^5 + 
44*zeta^4 + 224*zeta^3 - 48*zeta^2 - 132*zeta + 8)*q^631 + (-6*zeta^7 - 3*zeta^6
+ 36*zeta^5 + 15*zeta^4 - 66*zeta^3 - 30*zeta^2 + 51*zeta + 12)*q^632 + 
1/6*(20*zeta^7 + 15*zeta^6 - 135*zeta^5 - 60*zeta^4 + 270*zeta^3 + 40*zeta^2 - 
140*zeta - 25)*q^634 + 1/3*(4*zeta^7 + 12*zeta^6 - 28*zeta^5 - 56*zeta^4 + 
60*zeta^3 + 36*zeta^2 - 44*zeta + 44)*q^635 + 1/2*(12*zeta^7 - 3*zeta^6 - 
75*zeta^5 + 24*zeta^4 + 138*zeta^3 - 45*zeta^2 - 75*zeta)*q^637 + (-5*zeta^7 - 
3*zeta^6 + 32*zeta^5 + 17*zeta^4 - 57*zeta^3 - 25*zeta^2 + 20*zeta + 1)*q^639 + 
1/2*(zeta^7 + 3*zeta^6 - 7*zeta^5 - 14*zeta^4 + 15*zeta^3 + 9*zeta^2 - 11*zeta +
11)*q^640 + 1/2*(-20*zeta^7 - 15*zeta^6 + 135*zeta^5 + 60*zeta^4 - 270*zeta^3 - 
40*zeta^2 + 140*zeta + 25)*q^641 + 1/3*(-16*zeta^7 - 8*zeta^6 + 96*zeta^5 + 
40*zeta^4 - 176*zeta^3 - 80*zeta^2 + 136*zeta + 32)*q^643 + 1/3*(-12*zeta^7 + 
8*zeta^6 + 96*zeta^5 - 44*zeta^4 - 224*zeta^3 + 48*zeta^2 + 132*zeta - 8)*q^644 
+ (-6*zeta^7 - 6*zeta^6 + 36*zeta^5 + 36*zeta^4 - 60*zeta^3 - 54*zeta^2 + 
30*zeta + 9)*q^646 + 1/3*(-2*zeta^7 - 6*zeta^6 + 20*zeta^5 + 36*zeta^4 - 
62*zeta^3 - 56*zeta^2 + 60*zeta + 24)*q^647 + 1/4*(27*zeta^7 - 18*zeta^6 - 
216*zeta^5 + 99*zeta^4 + 504*zeta^3 - 108*zeta^2 - 297*zeta + 18)*q^648 + 
1/6*(2*zeta^7 - 13*zeta^5 - 3*zeta^4 + 19*zeta^3 + 11*zeta^2 + 2*zeta - 9)*q^650
+ (2*zeta^7 + 6*zeta^6 - 14*zeta^5 - 28*zeta^4 + 30*zeta^3 + 18*zeta^2 - 22*zeta
+ 22)*q^652 + 1/2*(-5*zeta^7 - 3*zeta^6 + 32*zeta^5 + 17*zeta^4 - 57*zeta^3 - 
25*zeta^2 + 20*zeta + 1)*q^653 + 1/3*(32*zeta^7 - 8*zeta^6 - 200*zeta^5 + 
64*zeta^4 + 368*zeta^3 - 120*zeta^2 - 200*zeta)*q^655 + 1/2*(-5*zeta^7 - 
3*zeta^6 + 32*zeta^5 + 17*zeta^4 - 57*zeta^3 - 25*zeta^2 + 20*zeta + 1)*q^656 + 
1/2*(-3*zeta^7 - 9*zeta^6 + 21*zeta^5 + 42*zeta^4 - 45*zeta^3 - 27*zeta^2 + 
33*zeta - 33)*q^657 + 1/3*(-2*zeta^7 + 13*zeta^5 + 3*zeta^4 - 19*zeta^3 - 
11*zeta^2 - 2*zeta + 9)*q^659 + 1/6*(57*zeta^7 - 38*zeta^6 - 456*zeta^5 + 
209*zeta^4 + 1064*zeta^3 - 228*zeta^2 - 627*zeta + 38)*q^661 + 1/3*(zeta^7 + 
3*zeta^6 - 10*zeta^5 - 18*zeta^4 + 31*zeta^3 + 28*zeta^2 - 30*zeta - 12)*q^662 +
(zeta^7 + 3*zeta^6 - 10*zeta^5 - 18*zeta^4 + 31*zeta^3 + 28*zeta^2 - 30*zeta - 
12)*q^664 + 1/3*(24*zeta^7 - 16*zeta^6 - 192*zeta^5 + 88*zeta^4 + 448*zeta^3 - 
96*zeta^2 - 264*zeta + 16)*q^665 + 1/2*(2*zeta^7 + zeta^6 - 12*zeta^5 - 5*zeta^4
+ 22*zeta^3 + 10*zeta^2 - 17*zeta - 4)*q^666 + (-4*zeta^7 + 26*zeta^5 + 6*zeta^4
- 38*zeta^3 - 22*zeta^2 - 4*zeta + 18)*q^667 + 1/3*(4*zeta^7 + 3*zeta^6 - 
27*zeta^5 - 12*zeta^4 + 54*zeta^3 + 8*zeta^2 - 28*zeta - 5)*q^668 + 
1/3*(-10*zeta^7 - 6*zeta^6 + 64*zeta^5 + 34*zeta^4 - 114*zeta^3 - 50*zeta^2 + 
40*zeta + 2)*q^670 + 1/6*(-5*zeta^7 - 3*zeta^6 + 32*zeta^5 + 17*zeta^4 - 
57*zeta^3 - 25*zeta^2 + 20*zeta + 1)*q^673 + 1/6*(-7*zeta^7 - 21*zeta^6 + 
49*zeta^5 + 98*zeta^4 - 105*zeta^3 - 63*zeta^2 + 77*zeta - 77)*q^674 + 
1/4*(-6*zeta^7 + 39*zeta^5 + 9*zeta^4 - 57*zeta^3 - 33*zeta^2 - 6*zeta + 
27)*q^676 + 1/2*(-10*zeta^7 - 5*zeta^6 + 60*zeta^5 + 25*zeta^4 - 110*zeta^3 - 
50*zeta^2 + 85*zeta + 20)*q^677 + 1/3*(-2*zeta^7 - 6*zeta^6 + 20*zeta^5 + 
36*zeta^4 - 62*zeta^3 - 56*zeta^2 + 60*zeta + 24)*q^679 + 1/2*(18*zeta^7 + 
18*zeta^6 - 108*zeta^5 - 108*zeta^4 + 180*zeta^3 + 162*zeta^2 - 90*zeta - 
27)*q^680 + 1/3*(20*zeta^7 + 10*zeta^6 - 120*zeta^5 - 50*zeta^4 + 220*zeta^3 + 
100*zeta^2 - 170*zeta - 40)*q^683 + (2*zeta^7 - 13*zeta^5 - 3*zeta^4 + 19*zeta^3
+ 11*zeta^2 + 2*zeta - 9)*q^684 + (4*zeta^7 + 3*zeta^6 - 27*zeta^5 - 12*zeta^4 +
54*zeta^3 + 8*zeta^2 - 28*zeta - 5)*q^685 + 1/3*(2*zeta^7 + 6*zeta^6 - 14*zeta^5
- 28*zeta^4 + 30*zeta^3 + 18*zeta^2 - 22*zeta + 22)*q^686 + 1/3*(4*zeta^7 - 
zeta^6 - 25*zeta^5 + 8*zeta^4 + 46*zeta^3 - 15*zeta^2 - 25*zeta)*q^688 + 
(4*zeta^7 - zeta^6 - 25*zeta^5 + 8*zeta^4 + 46*zeta^3 - 15*zeta^2 - 
25*zeta)*q^689 + 1/3*(2*zeta^7 + 6*zeta^6 - 14*zeta^5 - 28*zeta^4 + 30*zeta^3 + 
18*zeta^2 - 22*zeta + 22)*q^691 + 1/6*(-44*zeta^7 - 33*zeta^6 + 297*zeta^5 + 
132*zeta^4 - 594*zeta^3 - 88*zeta^2 + 308*zeta + 55)*q^692 + 1/3*(16*zeta^7 + 
8*zeta^6 - 96*zeta^5 - 40*zeta^4 + 176*zeta^3 + 80*zeta^2 - 136*zeta - 32)*q^694
+ 1/3*(12*zeta^7 - 8*zeta^6 - 96*zeta^5 + 44*zeta^4 + 224*zeta^3 - 48*zeta^2 - 
132*zeta + 8)*q^695 + 1/2*(18*zeta^7 + 18*zeta^6 - 108*zeta^5 - 108*zeta^4 + 
180*zeta^3 + 162*zeta^2 - 90*zeta - 27)*q^697 + 1/2*(-3*zeta^7 - 9*zeta^6 + 
30*zeta^5 + 54*zeta^4 - 93*zeta^3 - 84*zeta^2 + 90*zeta + 36)*q^698 + 
1/3*(-2*zeta^7 - zeta^6 + 12*zeta^5 + 5*zeta^4 - 22*zeta^3 - 10*zeta^2 + 17*zeta
+ 4)*q^700 + 1/2*(6*zeta^7 - 39*zeta^5 - 9*zeta^4 + 57*zeta^3 + 33*zeta^2 + 
6*zeta - 27)*q^701 + 1/3*(-2*zeta^7 - 6*zeta^6 + 14*zeta^5 + 28*zeta^4 - 
30*zeta^3 - 18*zeta^2 + 22*zeta - 22)*q^703 + 1/2*(-20*zeta^7 + 5*zeta^6 + 
125*zeta^5 - 40*zeta^4 - 230*zeta^3 + 75*zeta^2 + 125*zeta)*q^706 + 
1/3*(50*zeta^7 + 30*zeta^6 - 320*zeta^5 - 170*zeta^4 + 570*zeta^3 + 250*zeta^2 -
200*zeta - 10)*q^707 + 1/6*(-68*zeta^7 - 51*zeta^6 + 459*zeta^5 + 204*zeta^4 - 
918*zeta^3 - 136*zeta^2 + 476*zeta + 85)*q^709 + 1/3*(4*zeta^7 - 26*zeta^5 - 
6*zeta^4 + 38*zeta^3 + 22*zeta^2 + 4*zeta - 18)*q^710 + (6*zeta^7 + 3*zeta^6 - 
36*zeta^5 - 15*zeta^4 + 66*zeta^3 + 30*zeta^2 - 51*zeta - 12)*q^711 + 
1/2*(15*zeta^7 - 10*zeta^6 - 120*zeta^5 + 55*zeta^4 + 280*zeta^3 - 60*zeta^2 - 
165*zeta + 10)*q^712 + 1/3*(-4*zeta^7 - 12*zeta^6 + 40*zeta^5 + 72*zeta^4 - 
124*zeta^3 - 112*zeta^2 + 120*zeta + 48)*q^713 + (-3*zeta^7 + 2*zeta^6 + 
24*zeta^5 - 11*zeta^4 - 56*zeta^3 + 12*zeta^2 + 33*zeta - 2)*q^716 + 
1/3*(4*zeta^7 + 3*zeta^6 - 27*zeta^5 - 12*zeta^4 + 54*zeta^3 + 8*zeta^2 - 
28*zeta - 5)*q^719 + 1/2*(zeta^7 + 3*zeta^6 - 7*zeta^5 - 14*zeta^4 + 15*zeta^3 +
9*zeta^2 - 11*zeta + 11)*q^720 + 1/3*(-40*zeta^7 - 24*zeta^6 + 256*zeta^5 + 
136*zeta^4 - 456*zeta^3 - 200*zeta^2 + 160*zeta + 8)*q^721 + 1/4*(-4*zeta^7 + 
zeta^6 + 25*zeta^5 - 8*zeta^4 - 46*zeta^3 + 15*zeta^2 + 25*zeta)*q^722 + 
1/6*(-5*zeta^7 - 3*zeta^6 + 32*zeta^5 + 17*zeta^4 - 57*zeta^3 - 25*zeta^2 + 
20*zeta + 1)*q^724 + 1/2*(zeta^7 + 3*zeta^6 - 7*zeta^5 - 14*zeta^4 + 15*zeta^3 +
9*zeta^2 - 11*zeta + 11)*q^725 + 1/3*(-20*zeta^7 + 130*zeta^5 + 30*zeta^4 - 
190*zeta^3 - 110*zeta^2 - 20*zeta + 90)*q^727 + (4*zeta^7 + 2*zeta^6 - 24*zeta^5
- 10*zeta^4 + 44*zeta^3 + 20*zeta^2 - 34*zeta - 8)*q^728 + 1/4*(-27*zeta^7 + 
18*zeta^6 + 216*zeta^5 - 99*zeta^4 - 504*zeta^3 + 108*zeta^2 + 297*zeta - 
18)*q^729 + (zeta^7 + 3*zeta^6 - 10*zeta^5 - 18*zeta^4 + 31*zeta^3 + 28*zeta^2 -
30*zeta - 12)*q^730 + (-6*zeta^7 - 6*zeta^6 + 36*zeta^5 + 36*zeta^4 - 60*zeta^3 
- 54*zeta^2 + 30*zeta + 9)*q^731 + 1/6*(-75*zeta^7 + 50*zeta^6 + 600*zeta^5 - 
275*zeta^4 - 1400*zeta^3 + 300*zeta^2 + 825*zeta - 50)*q^733 + 1/3*(14*zeta^7 + 
7*zeta^6 - 84*zeta^5 - 35*zeta^4 + 154*zeta^3 + 70*zeta^2 - 119*zeta - 28)*q^734
+ 1/3*(-20*zeta^7 - 15*zeta^6 + 135*zeta^5 + 60*zeta^4 - 270*zeta^3 - 40*zeta^2 
+ 140*zeta + 25)*q^736 + 1/2*(15*zeta^7 + 9*zeta^6 - 96*zeta^5 - 51*zeta^4 + 
171*zeta^3 + 75*zeta^2 - 60*zeta - 3)*q^738 + 1/3*(-28*zeta^7 + 7*zeta^6 + 
175*zeta^5 - 56*zeta^4 - 322*zeta^3 + 105*zeta^2 + 175*zeta)*q^739 + 
1/3*(4*zeta^7 - zeta^6 - 25*zeta^5 + 8*zeta^4 + 46*zeta^3 - 15*zeta^2 - 
25*zeta)*q^740 + (2*zeta^7 + 6*zeta^6 - 14*zeta^5 - 28*zeta^4 + 30*zeta^3 + 
18*zeta^2 - 22*zeta + 22)*q^742 + (4*zeta^7 + 3*zeta^6 - 27*zeta^5 - 12*zeta^4 +
54*zeta^3 + 8*zeta^2 - 28*zeta - 5)*q^743 + 1/3*(-10*zeta^7 - 5*zeta^6 + 
60*zeta^5 + 25*zeta^4 - 110*zeta^3 - 50*zeta^2 + 85*zeta + 20)*q^745 + 
1/2*(-3*zeta^7 + 2*zeta^6 + 24*zeta^5 - 11*zeta^4 - 56*zeta^3 + 12*zeta^2 + 
33*zeta - 2)*q^746 + (-zeta^7 - 3*zeta^6 + 10*zeta^5 + 18*zeta^4 - 31*zeta^3 - 
28*zeta^2 + 30*zeta + 12)*q^747 + 1/3*(-8*zeta^7 - 24*zeta^6 + 80*zeta^5 + 
144*zeta^4 - 248*zeta^3 - 224*zeta^2 + 240*zeta + 96)*q^749 + 1/3*(-10*zeta^7 - 
5*zeta^6 + 60*zeta^5 + 25*zeta^4 - 110*zeta^3 - 50*zeta^2 + 85*zeta + 20)*q^751 
+ (-zeta^7 - 3*zeta^6 + 7*zeta^5 + 14*zeta^4 - 15*zeta^3 - 9*zeta^2 + 11*zeta - 
11)*q^754 + 1/3*(-40*zeta^7 - 24*zeta^6 + 256*zeta^5 + 136*zeta^4 - 456*zeta^3 -
200*zeta^2 + 160*zeta + 8)*q^755 + 1/6*(-44*zeta^7 + 11*zeta^6 + 275*zeta^5 - 
88*zeta^4 - 506*zeta^3 + 165*zeta^2 + 275*zeta)*q^757 + 1/3*(-10*zeta^7 - 
6*zeta^6 + 64*zeta^5 + 34*zeta^4 - 114*zeta^3 - 50*zeta^2 + 40*zeta + 2)*q^758 +
(8*zeta^7 + 6*zeta^6 - 54*zeta^5 - 24*zeta^4 + 108*zeta^3 + 16*zeta^2 - 56*zeta 
- 10)*q^760 + 1/6*(22*zeta^7 - 143*zeta^5 - 33*zeta^4 + 209*zeta^3 + 121*zeta^2 
+ 22*zeta - 99)*q^761 + (6*zeta^7 - 4*zeta^6 - 48*zeta^5 + 22*zeta^4 + 
112*zeta^3 - 24*zeta^2 - 66*zeta + 4)*q^763 + 1/3*(-4*zeta^7 - 12*zeta^6 + 
40*zeta^5 + 72*zeta^4 - 124*zeta^3 - 112*zeta^2 + 120*zeta + 48)*q^764 + 
1/2*(-18*zeta^7 - 18*zeta^6 + 108*zeta^5 + 108*zeta^4 - 180*zeta^3 - 162*zeta^2 
+ 90*zeta + 27)*q^765 + (-2*zeta^7 - 6*zeta^6 + 20*zeta^5 + 36*zeta^4 - 
62*zeta^3 - 56*zeta^2 + 60*zeta + 24)*q^766 + (6*zeta^7 - 4*zeta^6 - 48*zeta^5 +
22*zeta^4 + 112*zeta^3 - 24*zeta^2 - 66*zeta + 4)*q^767 + 1/6*(14*zeta^7 - 
91*zeta^5 - 21*zeta^4 + 133*zeta^3 + 77*zeta^2 + 14*zeta - 63)*q^769 + 
1/6*(5*zeta^7 + 3*zeta^6 - 32*zeta^5 - 17*zeta^4 + 57*zeta^3 + 25*zeta^2 - 
20*zeta - 1)*q^772 + 1/6*(52*zeta^7 - 13*zeta^6 - 325*zeta^5 + 104*zeta^4 + 
598*zeta^3 - 195*zeta^2 - 325*zeta)*q^773 + (-4*zeta^7 + zeta^6 + 25*zeta^5 - 
8*zeta^4 - 46*zeta^3 + 15*zeta^2 + 25*zeta)*q^774 + 1/3*(5*zeta^7 + 3*zeta^6 - 
32*zeta^5 - 17*zeta^4 + 57*zeta^3 + 25*zeta^2 - 20*zeta - 1)*q^775 + 
1/2*(-zeta^7 - 3*zeta^6 + 7*zeta^5 + 14*zeta^4 - 15*zeta^3 - 9*zeta^2 + 11*zeta 
- 11)*q^776 + 1/2*(2*zeta^7 - 13*zeta^5 - 3*zeta^4 + 19*zeta^3 + 11*zeta^2 + 
2*zeta - 9)*q^778 + (-4*zeta^7 - 2*zeta^6 + 24*zeta^5 + 10*zeta^4 - 44*zeta^3 - 
20*zeta^2 + 34*zeta + 8)*q^779 + (6*zeta^7 + 6*zeta^6 - 36*zeta^5 - 36*zeta^4 + 
60*zeta^3 + 54*zeta^2 - 30*zeta - 9)*q^782 + 1/4*(-9*zeta^7 + 6*zeta^6 + 
72*zeta^5 - 33*zeta^4 - 168*zeta^3 + 36*zeta^2 + 99*zeta - 6)*q^784 + 
1/3*(-2*zeta^7 - zeta^6 + 12*zeta^5 + 5*zeta^4 - 22*zeta^3 - 10*zeta^2 + 17*zeta
+ 4)*q^785 + 1/3*(-32*zeta^7 - 24*zeta^6 + 216*zeta^5 + 96*zeta^4 - 432*zeta^3 -
64*zeta^2 + 224*zeta + 40)*q^787 + 1/2*(-3*zeta^7 - 9*zeta^6 + 21*zeta^5 + 
42*zeta^4 - 45*zeta^3 - 27*zeta^2 + 33*zeta - 33)*q^788 + (-8*zeta^7 + 2*zeta^6 
+ 50*zeta^5 - 16*zeta^4 - 92*zeta^3 + 30*zeta^2 + 50*zeta)*q^790 + 
1/3*(56*zeta^7 - 14*zeta^6 - 350*zeta^5 + 112*zeta^4 + 644*zeta^3 - 210*zeta^2 -
350*zeta)*q^791 + 1/3*(-5*zeta^7 - 15*zeta^6 + 35*zeta^5 + 70*zeta^4 - 75*zeta^3
- 45*zeta^2 + 55*zeta - 55)*q^793 + 1/2*(-4*zeta^7 - 3*zeta^6 + 27*zeta^5 + 
12*zeta^4 - 54*zeta^3 - 8*zeta^2 + 28*zeta + 5)*q^794 + 1/3*(-10*zeta^7 - 
5*zeta^6 + 60*zeta^5 + 25*zeta^4 - 110*zeta^3 - 50*zeta^2 + 85*zeta + 20)*q^796 
+ 1/6*(-75*zeta^7 + 50*zeta^6 + 600*zeta^5 - 275*zeta^4 - 1400*zeta^3 + 
300*zeta^2 + 825*zeta - 50)*q^797 + 1/12*(-5*zeta^7 - 15*zeta^6 + 50*zeta^5 + 
90*zeta^4 - 155*zeta^3 - 140*zeta^2 + 150*zeta + 60)*q^800 + 1/2*(-15*zeta^7 + 
10*zeta^6 + 120*zeta^5 - 55*zeta^4 - 280*zeta^3 + 60*zeta^2 + 165*zeta - 
10)*q^801 + 1/6*(-14*zeta^7 - 7*zeta^6 + 84*zeta^5 + 35*zeta^4 - 154*zeta^3 - 
70*zeta^2 + 119*zeta + 28)*q^802 + 1/3*(8*zeta^7 + 24*zeta^6 - 56*zeta^5 - 
112*zeta^4 + 120*zeta^3 + 72*zeta^2 - 88*zeta + 88)*q^805 + 1/3*(-10*zeta^7 - 
6*zeta^6 + 64*zeta^5 + 34*zeta^4 - 114*zeta^3 - 50*zeta^2 + 40*zeta + 2)*q^806 +
1/2*(20*zeta^7 - 5*zeta^6 - 125*zeta^5 + 40*zeta^4 + 230*zeta^3 - 75*zeta^2 - 
125*zeta)*q^808 + 1/6*(-65*zeta^7 - 39*zeta^6 + 416*zeta^5 + 221*zeta^4 - 
741*zeta^3 - 325*zeta^2 + 260*zeta + 13)*q^809 + 1/2*(-3*zeta^7 - 9*zeta^6 + 
21*zeta^5 + 42*zeta^4 - 45*zeta^3 - 27*zeta^2 + 33*zeta - 33)*q^810 + 
1/3*(40*zeta^7 + 30*zeta^6 - 270*zeta^5 - 120*zeta^4 + 540*zeta^3 + 80*zeta^2 - 
280*zeta - 50)*q^811 + (4*zeta^7 - 26*zeta^5 - 6*zeta^4 + 38*zeta^3 + 22*zeta^2 
+ 4*zeta - 18)*q^812 + (4*zeta^7 + 12*zeta^6 - 40*zeta^5 - 72*zeta^4 + 
124*zeta^3 + 112*zeta^2 - 120*zeta - 48)*q^815 + 1/3*(4*zeta^7 + 12*zeta^6 - 
40*zeta^5 - 72*zeta^4 + 124*zeta^3 + 112*zeta^2 - 120*zeta - 48)*q^817 + 
1/6*(-39*zeta^7 + 26*zeta^6 + 312*zeta^5 - 143*zeta^4 - 728*zeta^3 + 156*zeta^2 
+ 429*zeta - 26)*q^818 + (-4*zeta^7 - 2*zeta^6 + 24*zeta^5 + 10*zeta^4 - 
44*zeta^3 - 20*zeta^2 + 34*zeta + 8)*q^819 + (2*zeta^7 - 13*zeta^5 - 3*zeta^4 + 
19*zeta^3 + 11*zeta^2 + 2*zeta - 9)*q^820 + 1/2*(-12*zeta^7 - 9*zeta^6 + 
81*zeta^5 + 36*zeta^4 - 162*zeta^3 - 24*zeta^2 + 84*zeta + 15)*q^821 + 
1/3*(-25*zeta^7 - 15*zeta^6 + 160*zeta^5 + 85*zeta^4 - 285*zeta^3 - 125*zeta^2 +
100*zeta + 5)*q^823 + (-8*zeta^7 + 2*zeta^6 + 50*zeta^5 - 16*zeta^4 - 92*zeta^3 
+ 30*zeta^2 + 50*zeta)*q^824 + (-20*zeta^7 - 12*zeta^6 + 128*zeta^5 + 68*zeta^4 
- 228*zeta^3 - 100*zeta^2 + 80*zeta + 4)*q^826 + (4*zeta^7 + 12*zeta^6 - 
28*zeta^5 - 56*zeta^4 + 60*zeta^3 + 36*zeta^2 - 44*zeta + 44)*q^827 + (4*zeta^7 
+ 3*zeta^6 - 27*zeta^5 - 12*zeta^4 + 54*zeta^3 + 8*zeta^2 - 28*zeta - 5)*q^828 +
1/6*(34*zeta^7 - 221*zeta^5 - 51*zeta^4 + 323*zeta^3 + 187*zeta^2 + 34*zeta - 
153)*q^829 + 1/3*(4*zeta^7 + 2*zeta^6 - 24*zeta^5 - 10*zeta^4 + 44*zeta^3 + 
20*zeta^2 - 34*zeta - 8)*q^830 + 1/6*(7*zeta^7 + 21*zeta^6 - 70*zeta^5 - 
126*zeta^4 + 217*zeta^3 + 196*zeta^2 - 210*zeta - 84)*q^832 + 1/4*(-54*zeta^7 - 
54*zeta^6 + 324*zeta^5 + 324*zeta^4 - 540*zeta^3 - 486*zeta^2 + 270*zeta + 
81)*q^833 + 1/3*(6*zeta^7 - 4*zeta^6 - 48*zeta^5 + 22*zeta^4 + 112*zeta^3 - 
24*zeta^2 - 66*zeta + 4)*q^835 + 1/3*(-8*zeta^7 - 6*zeta^6 + 54*zeta^5 + 
24*zeta^4 - 108*zeta^3 - 16*zeta^2 + 56*zeta + 10)*q^838 + 1/3*(-5*zeta^7 - 
15*zeta^6 + 35*zeta^5 + 70*zeta^4 - 75*zeta^3 - 45*zeta^2 + 55*zeta - 55)*q^839 
+ 1/12*(-28*zeta^7 + 7*zeta^6 + 175*zeta^5 - 56*zeta^4 - 322*zeta^3 + 105*zeta^2
+ 175*zeta)*q^841 + 1/6*(44*zeta^7 - 11*zeta^6 - 275*zeta^5 + 88*zeta^4 + 
506*zeta^3 - 165*zeta^2 - 275*zeta)*q^842 + 1/3*(2*zeta^7 + 6*zeta^6 - 14*zeta^5
- 28*zeta^4 + 30*zeta^3 + 18*zeta^2 - 22*zeta + 22)*q^844 + 1/2*(12*zeta^7 + 
9*zeta^6 - 81*zeta^5 - 36*zeta^4 + 162*zeta^3 + 24*zeta^2 - 84*zeta - 15)*q^845 
+ 1/3*(22*zeta^7 + 11*zeta^6 - 132*zeta^5 - 55*zeta^4 + 242*zeta^3 + 110*zeta^2 
- 187*zeta - 44)*q^847 + 1/2*(-3*zeta^7 + 2*zeta^6 + 24*zeta^5 - 11*zeta^4 - 
56*zeta^3 + 12*zeta^2 + 33*zeta - 2)*q^848 + 1/4*(-6*zeta^7 - 6*zeta^6 + 
36*zeta^5 + 36*zeta^4 - 60*zeta^3 - 54*zeta^2 + 30*zeta + 9)*q^850 + 
1/3*(2*zeta^7 + 6*zeta^6 - 20*zeta^5 - 36*zeta^4 + 62*zeta^3 + 56*zeta^2 - 
60*zeta - 24)*q^851 + 1/6*(-14*zeta^7 - 7*zeta^6 + 84*zeta^5 + 35*zeta^4 - 
154*zeta^3 - 70*zeta^2 + 119*zeta + 28)*q^853 + 1/3*(-20*zeta^7 + 130*zeta^5 + 
30*zeta^4 - 190*zeta^3 - 110*zeta^2 - 20*zeta + 90)*q^854 + (-8*zeta^7 - 
6*zeta^6 + 54*zeta^5 + 24*zeta^4 - 108*zeta^3 - 16*zeta^2 + 56*zeta + 10)*q^855 
+ (-2*zeta^7 - 6*zeta^6 + 14*zeta^5 + 28*zeta^4 - 30*zeta^3 - 18*zeta^2 + 
22*zeta - 22)*q^856 + 1/6*(-25*zeta^7 - 15*zeta^6 + 160*zeta^5 + 85*zeta^4 - 
285*zeta^3 - 125*zeta^2 + 100*zeta + 5)*q^857 + 1/3*(-52*zeta^7 + 13*zeta^6 + 
325*zeta^5 - 104*zeta^4 - 598*zeta^3 + 195*zeta^2 + 325*zeta)*q^859 + 
1/3*(-10*zeta^7 - 6*zeta^6 + 64*zeta^5 + 34*zeta^4 - 114*zeta^3 - 50*zeta^2 + 
40*zeta + 2)*q^860 + (-4*zeta^7 - 3*zeta^6 + 27*zeta^5 + 12*zeta^4 - 54*zeta^3 -
8*zeta^2 + 28*zeta + 5)*q^862 + 1/3*(-8*zeta^7 + 52*zeta^5 + 12*zeta^4 - 
76*zeta^3 - 44*zeta^2 - 8*zeta + 36)*q^863 + 1/3*(-33*zeta^7 + 22*zeta^6 + 
264*zeta^5 - 121*zeta^4 - 616*zeta^3 + 132*zeta^2 + 363*zeta - 22)*q^865 + 
1/6*(zeta^7 + 3*zeta^6 - 10*zeta^5 - 18*zeta^4 + 31*zeta^3 + 28*zeta^2 - 30*zeta
- 12)*q^866 + 1/3*(4*zeta^7 + 12*zeta^6 - 40*zeta^5 - 72*zeta^4 + 124*zeta^3 + 
112*zeta^2 - 120*zeta - 48)*q^868 + 1/3*(4*zeta^7 - 26*zeta^5 - 6*zeta^4 + 
38*zeta^3 + 22*zeta^2 + 4*zeta - 18)*q^871 + 1/2*(12*zeta^7 + 9*zeta^6 - 
81*zeta^5 - 36*zeta^4 + 162*zeta^3 + 24*zeta^2 - 84*zeta - 15)*q^872 + 
1/2*(zeta^7 + 3*zeta^6 - 7*zeta^5 - 14*zeta^4 + 15*zeta^3 + 9*zeta^2 - 11*zeta +
11)*q^873 + 1/3*(-20*zeta^7 - 12*zeta^6 + 128*zeta^5 + 68*zeta^4 - 228*zeta^3 - 
100*zeta^2 + 80*zeta + 4)*q^874 + (-16*zeta^7 + 4*zeta^6 + 100*zeta^5 - 
32*zeta^4 - 184*zeta^3 + 60*zeta^2 + 100*zeta)*q^875 + 1/2*(-5*zeta^7 - 3*zeta^6
+ 32*zeta^5 + 17*zeta^4 - 57*zeta^3 - 25*zeta^2 + 20*zeta + 1)*q^877 + 
1/3*(-5*zeta^7 - 15*zeta^6 + 35*zeta^5 + 70*zeta^4 - 75*zeta^3 - 45*zeta^2 + 
55*zeta - 55)*q^878 + 1/6*(46*zeta^7 + 23*zeta^6 - 276*zeta^5 - 115*zeta^4 + 
506*zeta^3 + 230*zeta^2 - 391*zeta - 92)*q^881 + 1/4*(27*zeta^7 - 18*zeta^6 - 
216*zeta^5 + 99*zeta^4 + 504*zeta^3 - 108*zeta^2 - 297*zeta + 18)*q^882 + 
(zeta^7 + 3*zeta^6 - 10*zeta^5 - 18*zeta^4 + 31*zeta^3 + 28*zeta^2 - 30*zeta - 
12)*q^883 + 1/2*(-6*zeta^7 - 6*zeta^6 + 36*zeta^5 + 36*zeta^4 - 60*zeta^3 - 
54*zeta^2 + 30*zeta + 9)*q^884 + 1/3*(-21*zeta^7 + 14*zeta^6 + 168*zeta^5 - 
77*zeta^4 - 392*zeta^3 + 84*zeta^2 + 231*zeta - 14)*q^886 + (-2*zeta^7 - zeta^6 
+ 12*zeta^5 + 5*zeta^4 - 22*zeta^3 - 10*zeta^2 + 17*zeta + 4)*q^887 + 
1/3*(32*zeta^7 + 24*zeta^6 - 216*zeta^5 - 96*zeta^4 + 432*zeta^3 + 64*zeta^2 - 
224*zeta - 40)*q^889 + 1/3*(-5*zeta^7 - 15*zeta^6 + 35*zeta^5 + 70*zeta^4 - 
75*zeta^3 - 45*zeta^2 + 55*zeta - 55)*q^890 + (8*zeta^7 - 2*zeta^6 - 50*zeta^5 +
16*zeta^4 + 92*zeta^3 - 30*zeta^2 - 50*zeta)*q^892 + (2*zeta^7 + 6*zeta^6 - 
14*zeta^5 - 28*zeta^4 + 30*zeta^3 + 18*zeta^2 - 22*zeta + 22)*q^895 + (4*zeta^7 
+ 3*zeta^6 - 27*zeta^5 - 12*zeta^4 + 54*zeta^3 + 8*zeta^2 - 28*zeta - 5)*q^896 +
1/6*(34*zeta^7 + 17*zeta^6 - 204*zeta^5 - 85*zeta^4 + 374*zeta^3 + 170*zeta^2 - 
289*zeta - 68)*q^898 + (6*zeta^7 - 4*zeta^6 - 48*zeta^5 + 22*zeta^4 + 112*zeta^3
- 24*zeta^2 - 66*zeta + 4)*q^899 + 1/4*(zeta^7 + 3*zeta^6 - 10*zeta^5 - 
18*zeta^4 + 31*zeta^3 + 28*zeta^2 - 30*zeta - 12)*q^900 + 1/2*(-18*zeta^7 - 
18*zeta^6 + 108*zeta^5 + 108*zeta^4 - 180*zeta^3 - 162*zeta^2 + 90*zeta + 
27)*q^901 + 1/2*(14*zeta^7 + 7*zeta^6 - 84*zeta^5 - 35*zeta^4 + 154*zeta^3 + 
70*zeta^2 - 119*zeta - 28)*q^904 + 1/3*(-2*zeta^7 + 13*zeta^5 + 3*zeta^4 - 
19*zeta^3 - 11*zeta^2 - 2*zeta + 9)*q^905 + 1/3*(-8*zeta^7 - 24*zeta^6 + 
56*zeta^5 + 112*zeta^4 - 120*zeta^3 - 72*zeta^2 + 88*zeta - 88)*q^907 + 
(-10*zeta^7 - 6*zeta^6 + 64*zeta^5 + 34*zeta^4 - 114*zeta^3 - 50*zeta^2 + 
40*zeta + 2)*q^908 + 1/2*(-20*zeta^7 + 5*zeta^6 + 125*zeta^5 - 40*zeta^4 - 
230*zeta^3 + 75*zeta^2 + 125*zeta)*q^909 + 1/3*(16*zeta^7 - 4*zeta^6 - 
100*zeta^5 + 32*zeta^4 + 184*zeta^3 - 60*zeta^2 - 100*zeta)*q^910 + 
1/3*(5*zeta^7 + 3*zeta^6 - 32*zeta^5 - 17*zeta^4 + 57*zeta^3 + 25*zeta^2 - 
20*zeta - 1)*q^911 + 1/2*(-2*zeta^7 + 13*zeta^5 + 3*zeta^4 - 19*zeta^3 - 
11*zeta^2 - 2*zeta + 9)*q^914 + 1/2*(-3*zeta^7 + 2*zeta^6 + 24*zeta^5 - 
11*zeta^4 - 56*zeta^3 + 12*zeta^2 + 33*zeta - 2)*q^916 + 1/3*(-16*zeta^7 - 
48*zeta^6 + 160*zeta^5 + 288*zeta^4 - 496*zeta^3 - 448*zeta^2 + 480*zeta + 
192)*q^917 + (-2*zeta^7 - 6*zeta^6 + 20*zeta^5 + 36*zeta^4 - 62*zeta^3 - 
56*zeta^2 + 60*zeta + 24)*q^919 + (-6*zeta^7 + 4*zeta^6 + 48*zeta^5 - 22*zeta^4 
- 112*zeta^3 + 24*zeta^2 + 66*zeta - 4)*q^920 + 1/6*(-2*zeta^7 + 13*zeta^5 + 
3*zeta^4 - 19*zeta^3 - 11*zeta^2 - 2*zeta + 9)*q^922 + 1/3*(8*zeta^7 + 6*zeta^6 
- 54*zeta^5 - 24*zeta^4 + 108*zeta^3 + 16*zeta^2 - 56*zeta - 10)*q^923 + 
1/6*(-5*zeta^7 - 3*zeta^6 + 32*zeta^5 + 17*zeta^4 - 57*zeta^3 - 25*zeta^2 + 
20*zeta + 1)*q^925 + 1/3*(32*zeta^7 - 8*zeta^6 - 200*zeta^5 + 64*zeta^4 + 
368*zeta^3 - 120*zeta^2 - 200*zeta)*q^926 + (8*zeta^7 - 2*zeta^6 - 50*zeta^5 + 
16*zeta^4 + 92*zeta^3 - 30*zeta^2 - 50*zeta)*q^927 + 1/2*(25*zeta^7 + 15*zeta^6 
- 160*zeta^5 - 85*zeta^4 + 285*zeta^3 + 125*zeta^2 - 100*zeta - 5)*q^928 + 
1/2*(5*zeta^7 + 15*zeta^6 - 35*zeta^5 - 70*zeta^4 + 75*zeta^3 + 45*zeta^2 - 
55*zeta + 55)*q^929 + (6*zeta^7 - 39*zeta^5 - 9*zeta^4 + 57*zeta^3 + 33*zeta^2 +
6*zeta - 27)*q^931 + 1/2*(-2*zeta^7 - zeta^6 + 12*zeta^5 + 5*zeta^4 - 22*zeta^3 
- 10*zeta^2 + 17*zeta + 4)*q^932 + (zeta^7 + 3*zeta^6 - 10*zeta^5 - 18*zeta^4 + 
31*zeta^3 + 28*zeta^2 - 30*zeta - 12)*q^934 + 1/2*(-3*zeta^7 - 9*zeta^6 + 
30*zeta^5 + 54*zeta^4 - 93*zeta^3 - 84*zeta^2 + 90*zeta + 36)*q^936 + 
1/6*(15*zeta^7 - 10*zeta^6 - 120*zeta^5 + 55*zeta^4 + 280*zeta^3 - 60*zeta^2 - 
165*zeta + 10)*q^937 + 1/3*(8*zeta^7 + 4*zeta^6 - 48*zeta^5 - 20*zeta^4 + 
88*zeta^3 + 40*zeta^2 - 68*zeta - 16)*q^938 + 1/2*(-zeta^7 - 3*zeta^6 + 7*zeta^5
+ 14*zeta^4 - 15*zeta^3 - 9*zeta^2 + 11*zeta - 11)*q^941 + (8*zeta^7 - 2*zeta^6 
- 50*zeta^5 + 16*zeta^4 + 92*zeta^3 - 30*zeta^2 - 50*zeta)*q^943 + (-4*zeta^7 + 
zeta^6 + 25*zeta^5 - 8*zeta^4 - 46*zeta^3 + 15*zeta^2 + 25*zeta)*q^944 + 
1/3*(32*zeta^7 + 24*zeta^6 - 216*zeta^5 - 96*zeta^4 + 432*zeta^3 + 64*zeta^2 - 
224*zeta - 40)*q^947 + (-2*zeta^7 - zeta^6 + 12*zeta^5 + 5*zeta^4 - 22*zeta^3 - 
10*zeta^2 + 17*zeta + 4)*q^949 + 1/3*(-3*zeta^7 + 2*zeta^6 + 24*zeta^5 - 
11*zeta^4 - 56*zeta^3 + 12*zeta^2 + 33*zeta - 2)*q^950 + (-18*zeta^7 - 18*zeta^6
+ 108*zeta^5 + 108*zeta^4 - 180*zeta^3 - 162*zeta^2 + 90*zeta + 27)*q^952 + 
1/6*(11*zeta^7 + 33*zeta^6 - 110*zeta^5 - 198*zeta^4 + 341*zeta^3 + 308*zeta^2 -
330*zeta - 132)*q^953 + 1/2*(9*zeta^7 - 6*zeta^6 - 72*zeta^5 + 33*zeta^4 + 
168*zeta^3 - 36*zeta^2 - 99*zeta + 6)*q^954 + 1/3*(-16*zeta^7 - 8*zeta^6 + 
96*zeta^5 + 40*zeta^4 - 176*zeta^3 - 80*zeta^2 + 136*zeta + 32)*q^955 + 
1/3*(-8*zeta^7 + 52*zeta^5 + 12*zeta^4 - 76*zeta^3 - 44*zeta^2 - 8*zeta + 
36)*q^956 + (3*zeta^7 + 9*zeta^6 - 21*zeta^5 - 42*zeta^4 + 45*zeta^3 + 27*zeta^2
- 33*zeta + 33)*q^958 + (10*zeta^7 + 6*zeta^6 - 64*zeta^5 - 34*zeta^4 + 
114*zeta^3 + 50*zeta^2 - 40*zeta - 2)*q^959 + 1/4*(20*zeta^7 - 5*zeta^6 - 
125*zeta^5 + 40*zeta^4 + 230*zeta^3 - 75*zeta^2 - 125*zeta)*q^961 + 
1/3*(5*zeta^7 + 3*zeta^6 - 32*zeta^5 - 17*zeta^4 + 57*zeta^3 + 25*zeta^2 - 
20*zeta - 1)*q^962 + (2*zeta^7 + 6*zeta^6 - 14*zeta^5 - 28*zeta^4 + 30*zeta^3 + 
18*zeta^2 - 22*zeta + 22)*q^963 + 1/2*(-12*zeta^7 - 9*zeta^6 + 81*zeta^5 + 
36*zeta^4 - 162*zeta^3 - 24*zeta^2 + 84*zeta + 15)*q^964 + 1/3*(2*zeta^7 - 
13*zeta^5 - 3*zeta^4 + 19*zeta^3 + 11*zeta^2 + 2*zeta - 9)*q^965 + 
1/4*(11*zeta^7 + 33*zeta^6 - 110*zeta^5 - 198*zeta^4 + 341*zeta^3 + 308*zeta^2 -
330*zeta - 132)*q^968 + 1/3*(-zeta^7 - 3*zeta^6 + 10*zeta^5 + 18*zeta^4 - 
31*zeta^3 - 28*zeta^2 + 30*zeta + 12)*q^970 + (-3*zeta^7 + 2*zeta^6 + 24*zeta^5 
- 11*zeta^4 - 56*zeta^3 + 12*zeta^2 + 33*zeta - 2)*q^971 + 1/3*(16*zeta^7 - 
104*zeta^5 - 24*zeta^4 + 152*zeta^3 + 88*zeta^2 + 16*zeta - 72)*q^973 + 
1/3*(-20*zeta^7 - 15*zeta^6 + 135*zeta^5 + 60*zeta^4 - 270*zeta^3 - 40*zeta^2 + 
140*zeta + 25)*q^974 + 1/6*(-25*zeta^7 - 15*zeta^6 + 160*zeta^5 + 85*zeta^4 - 
285*zeta^3 - 125*zeta^2 + 100*zeta + 5)*q^976 + 1/2*(-12*zeta^7 + 3*zeta^6 + 
75*zeta^5 - 24*zeta^4 - 138*zeta^3 + 45*zeta^2 + 75*zeta)*q^977 + 1/2*(-3*zeta^7
- 9*zeta^6 + 21*zeta^5 + 42*zeta^4 - 45*zeta^3 - 27*zeta^2 + 33*zeta - 33)*q^980
+ 1/2*(-12*zeta^7 - 9*zeta^6 + 81*zeta^5 + 36*zeta^4 - 162*zeta^3 - 24*zeta^2 + 
84*zeta + 15)*q^981 + 1/3*(10*zeta^7 - 65*zeta^5 - 15*zeta^4 + 95*zeta^3 + 
55*zeta^2 + 10*zeta - 45)*q^982 + (-2*zeta^7 - zeta^6 + 12*zeta^5 + 5*zeta^4 - 
22*zeta^3 - 10*zeta^2 + 17*zeta + 4)*q^983 + (-3*zeta^7 - 9*zeta^6 + 30*zeta^5 +
54*zeta^4 - 93*zeta^3 - 84*zeta^2 + 90*zeta + 36)*q^985 + 1/2*(18*zeta^7 + 
18*zeta^6 - 108*zeta^5 - 108*zeta^4 + 180*zeta^3 + 162*zeta^2 - 90*zeta - 
27)*q^986 + 1/3*(-6*zeta^7 + 4*zeta^6 + 48*zeta^5 - 22*zeta^4 - 112*zeta^3 + 
24*zeta^2 + 66*zeta - 4)*q^988 + 1/3*(-8*zeta^7 - 4*zeta^6 + 48*zeta^5 + 
20*zeta^4 - 88*zeta^3 - 40*zeta^2 + 68*zeta + 16)*q^989 + (-4*zeta^7 - 3*zeta^6 
+ 27*zeta^5 + 12*zeta^4 - 54*zeta^3 - 8*zeta^2 + 28*zeta + 5)*q^991 + 
1/3*(5*zeta^7 + 15*zeta^6 - 35*zeta^5 - 70*zeta^4 + 75*zeta^3 + 45*zeta^2 - 
55*zeta + 55)*q^992 + 1/3*(-16*zeta^7 + 4*zeta^6 + 100*zeta^5 - 32*zeta^4 - 
184*zeta^3 + 60*zeta^2 + 100*zeta)*q^994 + 1/3*(-40*zeta^7 + 10*zeta^6 + 
250*zeta^5 - 80*zeta^4 - 460*zeta^3 + 150*zeta^2 + 250*zeta)*q^995 + 
1/6*(-23*zeta^7 - 69*zeta^6 + 161*zeta^5 + 322*zeta^4 - 345*zeta^3 - 207*zeta^2 
+ 253*zeta - 253)*q^997 + 1/3*(40*zeta^7 + 30*zeta^6 - 270*zeta^5 - 120*zeta^4 +
540*zeta^3 + 80*zeta^2 - 280*zeta - 50)*q^998 + (-6*zeta^7 - 3*zeta^6 + 
36*zeta^5 + 15*zeta^4 - 66*zeta^3 - 30*zeta^2 + 51*zeta + 12)*q^1000 + 
(18*zeta^7 + 18*zeta^6 - 108*zeta^5 - 108*zeta^4 + 180*zeta^3 + 162*zeta^2 - 
90*zeta - 27)*q^1003 + (zeta^7 + 3*zeta^6 - 10*zeta^5 - 18*zeta^4 + 31*zeta^3 + 
28*zeta^2 - 30*zeta - 12)*q^1004 + (-2*zeta^7 - zeta^6 + 12*zeta^5 + 5*zeta^4 - 
22*zeta^3 - 10*zeta^2 + 17*zeta + 4)*q^1006 + (4*zeta^7 - 26*zeta^5 - 6*zeta^4 +
38*zeta^3 + 22*zeta^2 + 4*zeta - 18)*q^1007 + (4*zeta^7 + 3*zeta^6 - 27*zeta^5 -
12*zeta^4 + 54*zeta^3 + 8*zeta^2 - 28*zeta - 5)*q^1008 + 1/6*(7*zeta^7 + 
21*zeta^6 - 49*zeta^5 - 98*zeta^4 + 105*zeta^3 + 63*zeta^2 - 77*zeta + 
77)*q^1009 + 1/3*(25*zeta^7 + 15*zeta^6 - 160*zeta^5 - 85*zeta^4 + 285*zeta^3 + 
125*zeta^2 - 100*zeta - 5)*q^1010 + 1/2*(-25*zeta^7 - 15*zeta^6 + 160*zeta^5 + 
85*zeta^4 - 285*zeta^3 - 125*zeta^2 + 100*zeta + 5)*q^1013 + (-16*zeta^7 - 
12*zeta^6 + 108*zeta^5 + 48*zeta^4 - 216*zeta^3 - 32*zeta^2 + 112*zeta + 
20)*q^1015 + (-4*zeta^7 + 26*zeta^5 + 6*zeta^4 - 38*zeta^3 - 22*zeta^2 - 4*zeta 
+ 18)*q^1016 + 1/2*(-14*zeta^7 - 7*zeta^6 + 84*zeta^5 + 35*zeta^4 - 154*zeta^3 -
70*zeta^2 + 119*zeta + 28)*q^1017 + 1/6*(3*zeta^7 - 2*zeta^6 - 24*zeta^5 + 
11*zeta^4 + 56*zeta^3 - 12*zeta^2 - 33*zeta + 2)*q^1018 + (3*zeta^7 + 9*zeta^6 -
30*zeta^5 - 54*zeta^4 + 93*zeta^3 + 84*zeta^2 - 90*zeta - 36)*q^1019 + 
1/6*(-7*zeta^7 - 21*zeta^6 + 70*zeta^5 + 126*zeta^4 - 217*zeta^3 - 196*zeta^2 + 
210*zeta + 84)*q^1021 + (6*zeta^7 - 4*zeta^6 - 48*zeta^5 + 22*zeta^4 + 
112*zeta^3 - 24*zeta^2 - 66*zeta + 4)*q^1022 + 1/12*(-46*zeta^7 + 299*zeta^5 + 
69*zeta^4 - 437*zeta^3 - 253*zeta^2 - 46*zeta + 207)*q^1024 + 1/2*(4*zeta^7 + 
3*zeta^6 - 27*zeta^5 - 12*zeta^4 + 54*zeta^3 + 8*zeta^2 - 28*zeta - 5)*q^1025 + 
(10*zeta^7 + 6*zeta^6 - 64*zeta^5 - 34*zeta^4 + 114*zeta^3 + 50*zeta^2 - 40*zeta
- 2)*q^1027 + 1/2*(12*zeta^7 - 3*zeta^6 - 75*zeta^5 + 24*zeta^4 + 138*zeta^3 - 
45*zeta^2 - 75*zeta)*q^1028 + 1/3*(-20*zeta^7 - 12*zeta^6 + 128*zeta^5 + 
68*zeta^4 - 228*zeta^3 - 100*zeta^2 + 80*zeta + 4)*q^1030 + (zeta^7 + 3*zeta^6 -
7*zeta^5 - 14*zeta^4 + 15*zeta^3 + 9*zeta^2 - 11*zeta + 11)*q^1031 + 
1/6*(-58*zeta^7 + 377*zeta^5 + 87*zeta^4 - 551*zeta^3 - 319*zeta^2 - 58*zeta + 
261)*q^1033 + (6*zeta^7 - 4*zeta^6 - 48*zeta^5 + 22*zeta^4 + 112*zeta^3 - 
24*zeta^2 - 66*zeta + 4)*q^1035 + 1/3*(-2*zeta^7 - 6*zeta^6 + 20*zeta^5 + 
36*zeta^4 - 62*zeta^3 - 56*zeta^2 + 60*zeta + 24)*q^1036 + O(q^1037), 
1/18*(-2*zeta^7 - 6*zeta^6 + 2*zeta^5 + 33*zeta^4 + 19*zeta^3 - 50*zeta^2 - 
12*zeta + 18)*q + 1/18*(-13*zeta^7 - 5*zeta^6 + 81*zeta^5 + 19*zeta^4 - 
140*zeta^3 - 2*zeta^2 + 58*zeta - 19)*q^3 + 1/18*(2*zeta^7 + 6*zeta^6 - 
19*zeta^5 - 33*zeta^4 + 49*zeta^3 + 50*zeta^2 - 22*zeta - 18)*q^4 + 1/6*(zeta^7 
+ 3*zeta^6 - zeta^5 - 8*zeta^4 - 18*zeta^3 - 9*zeta^2 + 40*zeta + 8)*q^6 + 
1/9*(-zeta^7 - 3*zeta^6 + zeta^5 + 25*zeta^4 + 18*zeta^3 - 59*zeta^2 - 23*zeta +
26)*q^7 + 1/6*(8*zeta^7 + 7*zeta^6 - 59*zeta^5 - 47*zeta^4 + 128*zeta^3 + 
81*zeta^2 - 71*zeta - 21)*q^8 + 1/18*(-8*zeta^7 - 7*zeta^6 + 59*zeta^5 + 
47*zeta^4 - 128*zeta^3 - 81*zeta^2 + 71*zeta + 21)*q^9 + 1/6*(zeta^7 + 3*zeta^6 
- zeta^5 - 25*zeta^4 - 18*zeta^3 + 59*zeta^2 + 23*zeta - 26)*q^10 + 1/6*(zeta^7 
+ 3*zeta^6 - zeta^5 - 8*zeta^4 - 18*zeta^3 - 9*zeta^2 + 40*zeta + 8)*q^11 + 
1/9*(4*zeta^7 + 12*zeta^6 - 21*zeta^5 - 66*zeta^4 + 30*zeta^3 + 83*zeta^2 - 
10*zeta - 2)*q^12 + 1/18*(-2*zeta^7 - 6*zeta^6 + 19*zeta^5 + 33*zeta^4 - 
49*zeta^3 - 50*zeta^2 + 22*zeta + 18)*q^13 + 1/6*(-13*zeta^7 - 5*zeta^6 + 
81*zeta^5 + 19*zeta^4 - 140*zeta^3 - 2*zeta^2 + 58*zeta - 19)*q^14 + 
1/6*(9*zeta^7 + 10*zeta^6 - 60*zeta^5 - 55*zeta^4 + 110*zeta^3 + 72*zeta^2 - 
48*zeta - 13)*q^15 + 1/9*(2*zeta^7 + 6*zeta^6 - 2*zeta^5 - 33*zeta^4 - 19*zeta^3
+ 50*zeta^2 + 12*zeta - 18)*q^16 + 1/6*(-2*zeta^7 - 6*zeta^6 + 2*zeta^5 + 
33*zeta^4 + 19*zeta^3 - 50*zeta^2 - 12*zeta + 18)*q^18 + 1/18*(9*zeta^7 + 
10*zeta^6 - 60*zeta^5 - 55*zeta^4 + 110*zeta^3 + 72*zeta^2 - 48*zeta - 13)*q^19 
+ 1/6*(-13*zeta^7 - 5*zeta^6 + 81*zeta^5 + 19*zeta^4 - 140*zeta^3 - 2*zeta^2 + 
58*zeta - 19)*q^20 + 1/18*(10*zeta^7 + 30*zeta^6 - 95*zeta^5 - 165*zeta^4 + 
245*zeta^3 + 250*zeta^2 - 110*zeta - 90)*q^21 + 1/6*(zeta^7 + 3*zeta^6 - zeta^5 
- 25*zeta^4 - 18*zeta^3 + 59*zeta^2 + 23*zeta - 26)*q^24 + 1/9*(8*zeta^7 + 
7*zeta^6 - 59*zeta^5 - 47*zeta^4 + 128*zeta^3 + 81*zeta^2 - 71*zeta - 21)*q^25 +
1/6*(-8*zeta^7 - 7*zeta^6 + 59*zeta^5 + 47*zeta^4 - 128*zeta^3 - 81*zeta^2 + 
71*zeta + 21)*q^26 + 1/18*(-zeta^7 - 3*zeta^6 + zeta^5 + 25*zeta^4 + 18*zeta^3 -
59*zeta^2 - 23*zeta + 26)*q^27 + 1/18*(-zeta^7 - 3*zeta^6 + zeta^5 + 8*zeta^4 + 
18*zeta^3 + 9*zeta^2 - 40*zeta - 8)*q^28 + 1/6*(-4*zeta^7 - 12*zeta^6 + 
21*zeta^5 + 66*zeta^4 - 30*zeta^3 - 83*zeta^2 + 10*zeta + 2)*q^29 + 
1/18*(13*zeta^7 + 5*zeta^6 - 81*zeta^5 - 19*zeta^4 + 140*zeta^3 + 2*zeta^2 - 
58*zeta + 19)*q^31 + 1/6*(-9*zeta^7 - 10*zeta^6 + 60*zeta^5 + 55*zeta^4 - 
110*zeta^3 - 72*zeta^2 + 48*zeta + 13)*q^32 + 1/6*(-2*zeta^7 - 6*zeta^6 + 
2*zeta^5 + 33*zeta^4 + 19*zeta^3 - 50*zeta^2 - 12*zeta + 18)*q^33 + 
1/6*(2*zeta^7 + 6*zeta^6 - 2*zeta^5 - 33*zeta^4 - 19*zeta^3 + 50*zeta^2 + 
12*zeta - 18)*q^35 + 1/9*(9*zeta^7 + 10*zeta^6 - 60*zeta^5 - 55*zeta^4 + 
110*zeta^3 + 72*zeta^2 - 48*zeta - 13)*q^36 + 1/9*(26*zeta^7 + 10*zeta^6 - 
162*zeta^5 - 38*zeta^4 + 280*zeta^3 + 4*zeta^2 - 116*zeta + 38)*q^37 + 
1/2*(-2*zeta^7 - 6*zeta^6 + 19*zeta^5 + 33*zeta^4 - 49*zeta^3 - 50*zeta^2 + 
22*zeta + 18)*q^38 + 1/9*(-4*zeta^7 - 12*zeta^6 + 21*zeta^5 + 66*zeta^4 - 
30*zeta^3 - 83*zeta^2 + 10*zeta + 2)*q^39 + 1/3*(-zeta^7 - 3*zeta^6 + zeta^5 + 
25*zeta^4 + 18*zeta^3 - 59*zeta^2 - 23*zeta + 26)*q^41 + 1/3*(-8*zeta^7 - 
7*zeta^6 + 59*zeta^5 + 47*zeta^4 - 128*zeta^3 - 81*zeta^2 + 71*zeta + 21)*q^42 +
1/18*(56*zeta^7 + 49*zeta^6 - 413*zeta^5 - 329*zeta^4 + 896*zeta^3 + 567*zeta^2 
- 497*zeta - 147)*q^43 + 1/6*(-zeta^7 - 3*zeta^6 + zeta^5 + 25*zeta^4 + 
18*zeta^3 - 59*zeta^2 - 23*zeta + 26)*q^44 + 1/6*(-zeta^7 - 3*zeta^6 + zeta^5 + 
8*zeta^4 + 18*zeta^3 + 9*zeta^2 - 40*zeta - 8)*q^45 + 1/6*(4*zeta^7 + 12*zeta^6 
- 21*zeta^5 - 66*zeta^4 + 30*zeta^3 + 83*zeta^2 - 10*zeta - 2)*q^46 + 
1/6*(2*zeta^7 + 6*zeta^6 - 19*zeta^5 - 33*zeta^4 + 49*zeta^3 + 50*zeta^2 - 
22*zeta - 18)*q^47 + 1/18*(65*zeta^7 + 25*zeta^6 - 405*zeta^5 - 95*zeta^4 + 
700*zeta^3 + 10*zeta^2 - 290*zeta + 95)*q^48 + 1/6*(2*zeta^7 + 6*zeta^6 - 
2*zeta^5 - 33*zeta^4 - 19*zeta^3 + 50*zeta^2 + 12*zeta - 18)*q^50 + 
1/9*(4*zeta^7 + 12*zeta^6 - 4*zeta^5 - 66*zeta^4 - 38*zeta^3 + 100*zeta^2 + 
24*zeta - 36)*q^52 + 1/2*(-9*zeta^7 - 10*zeta^6 + 60*zeta^5 + 55*zeta^4 - 
110*zeta^3 - 72*zeta^2 + 48*zeta + 13)*q^53 + 1/3*(13*zeta^7 + 5*zeta^6 - 
81*zeta^5 - 19*zeta^4 + 140*zeta^3 + 2*zeta^2 - 58*zeta + 19)*q^54 + 
1/3*(4*zeta^7 + 12*zeta^6 - 21*zeta^5 - 66*zeta^4 + 30*zeta^3 + 83*zeta^2 - 
10*zeta - 2)*q^56 + 1/9*(-5*zeta^7 - 15*zeta^6 + 5*zeta^5 + 40*zeta^4 + 
90*zeta^3 + 45*zeta^2 - 200*zeta - 40)*q^57 + 1/2*(zeta^7 + 3*zeta^6 - zeta^5 - 
25*zeta^4 - 18*zeta^3 + 59*zeta^2 + 23*zeta - 26)*q^58 + 1/3*(-8*zeta^7 - 
7*zeta^6 + 59*zeta^5 + 47*zeta^4 - 128*zeta^3 - 81*zeta^2 + 71*zeta + 21)*q^59 +
1/6*(8*zeta^7 + 7*zeta^6 - 59*zeta^5 - 47*zeta^4 + 128*zeta^3 + 81*zeta^2 - 
71*zeta - 21)*q^60 + 1/18*(-5*zeta^7 - 15*zeta^6 + 5*zeta^5 + 125*zeta^4 + 
90*zeta^3 - 295*zeta^2 - 115*zeta + 130)*q^61 + 1/3*(-zeta^7 - 3*zeta^6 + zeta^5
+ 8*zeta^4 + 18*zeta^3 + 9*zeta^2 - 40*zeta - 8)*q^62 + 1/18*(-20*zeta^7 - 
60*zeta^6 + 105*zeta^5 + 330*zeta^4 - 150*zeta^3 - 415*zeta^2 + 50*zeta + 
10)*q^63 + 1/18*(2*zeta^7 + 6*zeta^6 - 19*zeta^5 - 33*zeta^4 + 49*zeta^3 + 
50*zeta^2 - 22*zeta - 18)*q^64 + 1/6*(13*zeta^7 + 5*zeta^6 - 81*zeta^5 - 
19*zeta^4 + 140*zeta^3 + 2*zeta^2 - 58*zeta + 19)*q^65 + 1/2*(-9*zeta^7 - 
10*zeta^6 + 60*zeta^5 + 55*zeta^4 - 110*zeta^3 - 72*zeta^2 + 48*zeta + 13)*q^66 
+ 1/9*(-8*zeta^7 - 24*zeta^6 + 8*zeta^5 + 132*zeta^4 + 76*zeta^3 - 200*zeta^2 - 
48*zeta + 72)*q^67 + 1/6*(2*zeta^7 + 6*zeta^6 - 2*zeta^5 - 33*zeta^4 - 19*zeta^3
+ 50*zeta^2 + 12*zeta - 18)*q^69 + 1/6*(9*zeta^7 + 10*zeta^6 - 60*zeta^5 - 
55*zeta^4 + 110*zeta^3 + 72*zeta^2 - 48*zeta - 13)*q^70 + 1/3*(-13*zeta^7 - 
5*zeta^6 + 81*zeta^5 + 19*zeta^4 - 140*zeta^3 - 2*zeta^2 + 58*zeta - 19)*q^71 + 
1/6*(-2*zeta^7 - 6*zeta^6 + 19*zeta^5 + 33*zeta^4 - 49*zeta^3 - 50*zeta^2 + 
22*zeta + 18)*q^72 + 1/18*(-20*zeta^7 - 60*zeta^6 + 105*zeta^5 + 330*zeta^4 - 
150*zeta^3 - 415*zeta^2 + 50*zeta + 10)*q^73 + 1/3*(-zeta^7 - 3*zeta^6 + zeta^5 
+ 8*zeta^4 + 18*zeta^3 + 9*zeta^2 - 40*zeta - 8)*q^74 + 1/18*(5*zeta^7 + 
15*zeta^6 - 5*zeta^5 - 125*zeta^4 - 90*zeta^3 + 295*zeta^2 + 115*zeta - 
130)*q^75 + 1/9*(-32*zeta^7 - 28*zeta^6 + 236*zeta^5 + 188*zeta^4 - 512*zeta^3 -
324*zeta^2 + 284*zeta + 84)*q^76 + 1/3*(-8*zeta^7 - 7*zeta^6 + 59*zeta^5 + 
47*zeta^4 - 128*zeta^3 - 81*zeta^2 + 71*zeta + 21)*q^77 + 1/6*(zeta^7 + 3*zeta^6
- zeta^5 - 25*zeta^4 - 18*zeta^3 + 59*zeta^2 + 23*zeta - 26)*q^78 + 1/9*(zeta^7 
+ 3*zeta^6 - zeta^5 - 8*zeta^4 - 18*zeta^3 - 9*zeta^2 + 40*zeta + 8)*q^79 + 
1/6*(-4*zeta^7 - 12*zeta^6 + 21*zeta^5 + 66*zeta^4 - 30*zeta^3 - 83*zeta^2 + 
10*zeta + 2)*q^80 + 1/9*(-8*zeta^7 - 24*zeta^6 + 76*zeta^5 + 132*zeta^4 - 
196*zeta^3 - 200*zeta^2 + 88*zeta + 72)*q^81 + 1/2*(9*zeta^7 + 10*zeta^6 - 
60*zeta^5 - 55*zeta^4 + 110*zeta^3 + 72*zeta^2 - 48*zeta - 13)*q^83 + 
1/18*(2*zeta^7 + 6*zeta^6 - 2*zeta^5 - 33*zeta^4 - 19*zeta^3 + 50*zeta^2 + 
12*zeta - 18)*q^84 + 1/3*(2*zeta^7 + 6*zeta^6 - 2*zeta^5 - 33*zeta^4 - 19*zeta^3
+ 50*zeta^2 + 12*zeta - 18)*q^86 + 1/3*(9*zeta^7 + 10*zeta^6 - 60*zeta^5 - 
55*zeta^4 + 110*zeta^3 + 72*zeta^2 - 48*zeta - 13)*q^87 + 1/2*(13*zeta^7 + 
5*zeta^6 - 81*zeta^5 - 19*zeta^4 + 140*zeta^3 + 2*zeta^2 - 58*zeta + 19)*q^88 + 
1/3*(-2*zeta^7 - 6*zeta^6 + 19*zeta^5 + 33*zeta^4 - 49*zeta^3 - 50*zeta^2 + 
22*zeta + 18)*q^89 + 1/18*(zeta^7 + 3*zeta^6 - zeta^5 - 8*zeta^4 - 18*zeta^3 - 
9*zeta^2 + 40*zeta + 8)*q^91 + 1/6*(-zeta^7 - 3*zeta^6 + zeta^5 + 25*zeta^4 + 
18*zeta^3 - 59*zeta^2 - 23*zeta + 26)*q^92 + 1/18*(56*zeta^7 + 49*zeta^6 - 
413*zeta^5 - 329*zeta^4 + 896*zeta^3 + 567*zeta^2 - 497*zeta - 147)*q^93 + 
1/2*(-zeta^7 - 3*zeta^6 + zeta^5 + 25*zeta^4 + 18*zeta^3 - 59*zeta^2 - 23*zeta +
26)*q^95 + 1/9*(8*zeta^7 + 24*zeta^6 - 42*zeta^5 - 132*zeta^4 + 60*zeta^3 + 
166*zeta^2 - 20*zeta - 4)*q^97 + 1/2*(2*zeta^7 + 6*zeta^6 - 19*zeta^5 - 
33*zeta^4 + 49*zeta^3 + 50*zeta^2 - 22*zeta - 18)*q^98 + 1/6*(-13*zeta^7 - 
5*zeta^6 + 81*zeta^5 + 19*zeta^4 - 140*zeta^3 - 2*zeta^2 + 58*zeta - 19)*q^99 + 
1/18*(-9*zeta^7 - 10*zeta^6 + 60*zeta^5 + 55*zeta^4 - 110*zeta^3 - 72*zeta^2 + 
48*zeta + 13)*q^100 + 1/2*(2*zeta^7 + 6*zeta^6 - 2*zeta^5 - 33*zeta^4 - 
19*zeta^3 + 50*zeta^2 + 12*zeta - 18)*q^101 + 1/9*(-2*zeta^7 - 6*zeta^6 + 
2*zeta^5 + 33*zeta^4 + 19*zeta^3 - 50*zeta^2 - 12*zeta + 18)*q^103 + 
1/6*(-9*zeta^7 - 10*zeta^6 + 60*zeta^5 + 55*zeta^4 - 110*zeta^3 - 72*zeta^2 + 
48*zeta + 13)*q^104 + 1/3*(13*zeta^7 + 5*zeta^6 - 81*zeta^5 - 19*zeta^4 + 
140*zeta^3 + 2*zeta^2 - 58*zeta + 19)*q^105 + 1/2*(2*zeta^7 + 6*zeta^6 - 
19*zeta^5 - 33*zeta^4 + 49*zeta^3 + 50*zeta^2 - 22*zeta - 18)*q^106 + 
1/6*(4*zeta^7 + 12*zeta^6 - 21*zeta^5 - 66*zeta^4 + 30*zeta^3 + 83*zeta^2 - 
10*zeta - 2)*q^107 + 1/18*(7*zeta^7 + 21*zeta^6 - 7*zeta^5 - 56*zeta^4 - 
126*zeta^3 - 63*zeta^2 + 280*zeta + 56)*q^108 + 1/18*(-5*zeta^7 - 15*zeta^6 + 
5*zeta^5 + 125*zeta^4 + 90*zeta^3 - 295*zeta^2 - 115*zeta + 130)*q^109 + 
1/2*(8*zeta^7 + 7*zeta^6 - 59*zeta^5 - 47*zeta^4 + 128*zeta^3 + 81*zeta^2 - 
71*zeta - 21)*q^110 + 1/9*(40*zeta^7 + 35*zeta^6 - 295*zeta^5 - 235*zeta^4 + 
640*zeta^3 + 405*zeta^2 - 355*zeta - 105)*q^111 + 1/18*(7*zeta^7 + 21*zeta^6 - 
7*zeta^5 - 175*zeta^4 - 126*zeta^3 + 413*zeta^2 + 161*zeta - 182)*q^112 + 
1/6*(4*zeta^7 + 12*zeta^6 - 21*zeta^5 - 66*zeta^4 + 30*zeta^3 + 83*zeta^2 - 
10*zeta - 2)*q^114 + 1/6*(2*zeta^7 + 6*zeta^6 - 19*zeta^5 - 33*zeta^4 + 
49*zeta^3 + 50*zeta^2 - 22*zeta - 18)*q^115 + 1/3*(-26*zeta^7 - 10*zeta^6 + 
162*zeta^5 + 38*zeta^4 - 280*zeta^3 - 4*zeta^2 + 116*zeta - 38)*q^116 + 
1/9*(-9*zeta^7 - 10*zeta^6 + 60*zeta^5 + 55*zeta^4 - 110*zeta^3 - 72*zeta^2 + 
48*zeta + 13)*q^117 + 1/2*(-2*zeta^7 - 6*zeta^6 + 2*zeta^5 + 33*zeta^4 + 
19*zeta^3 - 50*zeta^2 - 12*zeta + 18)*q^120 + 1/9*(9*zeta^7 + 10*zeta^6 - 
60*zeta^5 - 55*zeta^4 + 110*zeta^3 + 72*zeta^2 - 48*zeta - 13)*q^121 + 
(-13*zeta^7 - 5*zeta^6 + 81*zeta^5 + 19*zeta^4 - 140*zeta^3 - 2*zeta^2 + 58*zeta
- 19)*q^122 + 1/3*(2*zeta^7 + 6*zeta^6 - 19*zeta^5 - 33*zeta^4 + 49*zeta^3 + 
50*zeta^2 - 22*zeta - 18)*q^123 + 1/18*(-20*zeta^7 - 60*zeta^6 + 105*zeta^5 + 
330*zeta^4 - 150*zeta^3 - 415*zeta^2 + 50*zeta + 10)*q^124 + 1/6*(zeta^7 + 
3*zeta^6 - zeta^5 - 8*zeta^4 - 18*zeta^3 - 9*zeta^2 + 40*zeta + 8)*q^125 + 
1/3*(-zeta^7 - 3*zeta^6 + zeta^5 + 25*zeta^4 + 18*zeta^3 - 59*zeta^2 - 23*zeta +
26)*q^126 + 1/18*(8*zeta^7 + 7*zeta^6 - 59*zeta^5 - 47*zeta^4 + 128*zeta^3 + 
81*zeta^2 - 71*zeta - 21)*q^127 + 1/3*(-16*zeta^7 - 14*zeta^6 + 118*zeta^5 + 
94*zeta^4 - 256*zeta^3 - 162*zeta^2 + 142*zeta + 42)*q^128 + 1/18*(13*zeta^7 + 
39*zeta^6 - 13*zeta^5 - 325*zeta^4 - 234*zeta^3 + 767*zeta^2 + 299*zeta - 
338)*q^129 + 1/3*(zeta^7 + 3*zeta^6 - zeta^5 - 8*zeta^4 - 18*zeta^3 - 9*zeta^2 +
40*zeta + 8)*q^130 + 1/3*(-2*zeta^7 - 6*zeta^6 + 19*zeta^5 + 33*zeta^4 - 
49*zeta^3 - 50*zeta^2 + 22*zeta + 18)*q^132 + 1/18*(143*zeta^7 + 55*zeta^6 - 
891*zeta^5 - 209*zeta^4 + 1540*zeta^3 + 22*zeta^2 - 638*zeta + 209)*q^133 + 
1/3*(9*zeta^7 + 10*zeta^6 - 60*zeta^5 - 55*zeta^4 + 110*zeta^3 + 72*zeta^2 - 
48*zeta - 13)*q^134 + 1/3*(-2*zeta^7 - 6*zeta^6 + 2*zeta^5 + 33*zeta^4 + 
19*zeta^3 - 50*zeta^2 - 12*zeta + 18)*q^135 + 1/3*(-4*zeta^7 - 12*zeta^6 + 
4*zeta^5 + 66*zeta^4 + 38*zeta^3 - 100*zeta^2 - 24*zeta + 36)*q^137 + 
1/9*(-52*zeta^7 - 20*zeta^6 + 324*zeta^5 + 76*zeta^4 - 560*zeta^3 - 8*zeta^2 + 
232*zeta - 76)*q^139 + 1/6*(-4*zeta^7 - 12*zeta^6 + 21*zeta^5 + 66*zeta^4 - 
30*zeta^3 - 83*zeta^2 + 10*zeta + 2)*q^141 + 1/3*(2*zeta^7 + 6*zeta^6 - 2*zeta^5
- 16*zeta^4 - 36*zeta^3 - 18*zeta^2 + 80*zeta + 16)*q^142 + 1/6*(zeta^7 + 
3*zeta^6 - zeta^5 - 25*zeta^4 - 18*zeta^3 + 59*zeta^2 + 23*zeta - 26)*q^143 + 
1/18*(40*zeta^7 + 35*zeta^6 - 295*zeta^5 - 235*zeta^4 + 640*zeta^3 + 405*zeta^2 
- 355*zeta - 105)*q^144 + 1/2*(-8*zeta^7 - 7*zeta^6 + 59*zeta^5 + 47*zeta^4 - 
128*zeta^3 - 81*zeta^2 + 71*zeta + 21)*q^145 + 1/3*(-zeta^7 - 3*zeta^6 + zeta^5 
+ 25*zeta^4 + 18*zeta^3 - 59*zeta^2 - 23*zeta + 26)*q^146 + 1/2*(zeta^7 + 
3*zeta^6 - zeta^5 - 8*zeta^4 - 18*zeta^3 - 9*zeta^2 + 40*zeta + 8)*q^147 + 
1/9*(-4*zeta^7 - 12*zeta^6 + 21*zeta^5 + 66*zeta^4 - 30*zeta^3 - 83*zeta^2 + 
10*zeta + 2)*q^148 + 1/3*(-2*zeta^7 - 6*zeta^6 + 19*zeta^5 + 33*zeta^4 - 
49*zeta^3 - 50*zeta^2 + 22*zeta + 18)*q^149 + 1/3*(13*zeta^7 + 5*zeta^6 - 
81*zeta^5 - 19*zeta^4 + 140*zeta^3 + 2*zeta^2 - 58*zeta + 19)*q^150 + 
1/18*(-45*zeta^7 - 50*zeta^6 + 300*zeta^5 + 275*zeta^4 - 550*zeta^3 - 360*zeta^2
+ 240*zeta + 65)*q^151 + 1/6*(-2*zeta^7 - 6*zeta^6 + 2*zeta^5 + 33*zeta^4 + 
19*zeta^3 - 50*zeta^2 - 12*zeta + 18)*q^152 + 1/2*(-2*zeta^7 - 6*zeta^6 + 
2*zeta^5 + 33*zeta^4 + 19*zeta^3 - 50*zeta^2 - 12*zeta + 18)*q^154 + 
1/3*(-9*zeta^7 - 10*zeta^6 + 60*zeta^5 + 55*zeta^4 - 110*zeta^3 - 72*zeta^2 + 
48*zeta + 13)*q^155 + 1/18*(-65*zeta^7 - 25*zeta^6 + 405*zeta^5 + 95*zeta^4 - 
700*zeta^3 - 10*zeta^2 + 290*zeta - 95)*q^156 + 1/9*(8*zeta^7 + 24*zeta^6 - 
76*zeta^5 - 132*zeta^4 + 196*zeta^3 + 200*zeta^2 - 88*zeta - 72)*q^157 + 
1/3*(8*zeta^7 + 24*zeta^6 - 42*zeta^5 - 132*zeta^4 + 60*zeta^3 + 166*zeta^2 - 
20*zeta - 4)*q^158 + (zeta^7 + 3*zeta^6 - zeta^5 - 8*zeta^4 - 18*zeta^3 - 
9*zeta^2 + 40*zeta + 8)*q^159 + 1/6*(-zeta^7 - 3*zeta^6 + zeta^5 + 25*zeta^4 + 
18*zeta^3 - 59*zeta^2 - 23*zeta + 26)*q^160 + 1/6*(8*zeta^7 + 7*zeta^6 - 
59*zeta^5 - 47*zeta^4 + 128*zeta^3 + 81*zeta^2 - 71*zeta - 21)*q^161 + 
1/3*(8*zeta^7 + 7*zeta^6 - 59*zeta^5 - 47*zeta^4 + 128*zeta^3 + 81*zeta^2 - 
71*zeta - 21)*q^162 + 1/18*(13*zeta^7 + 39*zeta^6 - 13*zeta^5 - 325*zeta^4 - 
234*zeta^3 + 767*zeta^2 + 299*zeta - 338)*q^163 + 1/3*(zeta^7 + 3*zeta^6 - 
zeta^5 - 8*zeta^4 - 18*zeta^3 - 9*zeta^2 + 40*zeta + 8)*q^164 + 1/2*(4*zeta^7 + 
12*zeta^6 - 21*zeta^5 - 66*zeta^4 + 30*zeta^3 + 83*zeta^2 - 10*zeta - 2)*q^165 +
1/6*(-10*zeta^7 - 30*zeta^6 + 95*zeta^5 + 165*zeta^4 - 245*zeta^3 - 250*zeta^2 +
110*zeta + 90)*q^166 + 1/6*(-91*zeta^7 - 35*zeta^6 + 567*zeta^5 + 133*zeta^4 - 
980*zeta^3 - 14*zeta^2 + 406*zeta - 133)*q^167 + 1/6*(45*zeta^7 + 50*zeta^6 - 
300*zeta^5 - 275*zeta^4 + 550*zeta^3 + 360*zeta^2 - 240*zeta - 65)*q^168 + 
1/2*(2*zeta^7 + 6*zeta^6 - 2*zeta^5 - 33*zeta^4 - 19*zeta^3 + 50*zeta^2 + 
12*zeta - 18)*q^169 + 1/9*(10*zeta^7 + 30*zeta^6 - 10*zeta^5 - 165*zeta^4 - 
95*zeta^3 + 250*zeta^2 + 60*zeta - 90)*q^171 + 1/18*(9*zeta^7 + 10*zeta^6 - 
60*zeta^5 - 55*zeta^4 + 110*zeta^3 + 72*zeta^2 - 48*zeta - 13)*q^172 + 
1/6*(13*zeta^7 + 5*zeta^6 - 81*zeta^5 - 19*zeta^4 + 140*zeta^3 + 2*zeta^2 - 
58*zeta + 19)*q^173 + 1/2*(2*zeta^7 + 6*zeta^6 - 19*zeta^5 - 33*zeta^4 + 
49*zeta^3 + 50*zeta^2 - 22*zeta - 18)*q^174 + 1/18*(28*zeta^7 + 84*zeta^6 - 
147*zeta^5 - 462*zeta^4 + 210*zeta^3 + 581*zeta^2 - 70*zeta - 14)*q^175 + 
1/3*(-zeta^7 - 3*zeta^6 + zeta^5 + 8*zeta^4 + 18*zeta^3 + 9*zeta^2 - 40*zeta - 
8)*q^176 + 1/3*(-zeta^7 - 3*zeta^6 + zeta^5 + 25*zeta^4 + 18*zeta^3 - 59*zeta^2 
- 23*zeta + 26)*q^177 + 1/3*(16*zeta^7 + 14*zeta^6 - 118*zeta^5 - 94*zeta^4 + 
256*zeta^3 + 162*zeta^2 - 142*zeta - 42)*q^178 + 1/6*(zeta^7 + 3*zeta^6 - zeta^5
- 25*zeta^4 - 18*zeta^3 + 59*zeta^2 + 23*zeta - 26)*q^180 + 1/18*(-13*zeta^7 - 
39*zeta^6 + 13*zeta^5 + 104*zeta^4 + 234*zeta^3 + 117*zeta^2 - 520*zeta - 
104)*q^181 + 1/18*(46*zeta^7 + 138*zeta^6 - 437*zeta^5 - 759*zeta^4 + 
1127*zeta^3 + 1150*zeta^2 - 506*zeta - 414)*q^183 + 1/3*(-9*zeta^7 - 10*zeta^6 +
60*zeta^5 + 55*zeta^4 - 110*zeta^3 - 72*zeta^2 + 48*zeta + 13)*q^185 + 
1/6*(2*zeta^7 + 6*zeta^6 - 2*zeta^5 - 33*zeta^4 - 19*zeta^3 + 50*zeta^2 + 
12*zeta - 18)*q^186 + 1/6*(-2*zeta^7 - 6*zeta^6 + 2*zeta^5 + 33*zeta^4 + 
19*zeta^3 - 50*zeta^2 - 12*zeta + 18)*q^188 + 1/9*(18*zeta^7 + 20*zeta^6 - 
120*zeta^5 - 110*zeta^4 + 220*zeta^3 + 144*zeta^2 - 96*zeta - 26)*q^189 + 
1/3*(13*zeta^7 + 5*zeta^6 - 81*zeta^5 - 19*zeta^4 + 140*zeta^3 + 2*zeta^2 - 
58*zeta + 19)*q^190 + 1/2*(-2*zeta^7 - 6*zeta^6 + 19*zeta^5 + 33*zeta^4 - 
49*zeta^3 - 50*zeta^2 + 22*zeta + 18)*q^191 + 1/18*(-76*zeta^7 - 228*zeta^6 + 
399*zeta^5 + 1254*zeta^4 - 570*zeta^3 - 1577*zeta^2 + 190*zeta + 38)*q^192 + 
1/18*(-7*zeta^7 - 21*zeta^6 + 7*zeta^5 + 56*zeta^4 + 126*zeta^3 + 63*zeta^2 - 
280*zeta - 56)*q^193 + 1/2*(-zeta^7 - 3*zeta^6 + zeta^5 + 25*zeta^4 + 18*zeta^3 
- 59*zeta^2 - 23*zeta + 26)*q^194 + 1/6*(-8*zeta^7 - 7*zeta^6 + 59*zeta^5 + 
47*zeta^4 - 128*zeta^3 - 81*zeta^2 + 71*zeta + 21)*q^195 + 1/2*(8*zeta^7 + 
7*zeta^6 - 59*zeta^5 - 47*zeta^4 + 128*zeta^3 + 81*zeta^2 - 71*zeta - 21)*q^196 
+ 1/2*(zeta^7 + 3*zeta^6 - zeta^5 - 8*zeta^4 - 18*zeta^3 - 9*zeta^2 + 40*zeta + 
8)*q^198 + 1/18*(4*zeta^7 + 12*zeta^6 - 21*zeta^5 - 66*zeta^4 + 30*zeta^3 + 
83*zeta^2 - 10*zeta - 2)*q^199 + 1/3*(2*zeta^7 + 6*zeta^6 - 19*zeta^5 - 
33*zeta^4 + 49*zeta^3 + 50*zeta^2 - 22*zeta - 18)*q^200 + 1/9*(-13*zeta^7 - 
5*zeta^6 + 81*zeta^5 + 19*zeta^4 - 140*zeta^3 - 2*zeta^2 + 58*zeta - 19)*q^201 +
1/3*(9*zeta^7 + 10*zeta^6 - 60*zeta^5 - 55*zeta^4 + 110*zeta^3 + 72*zeta^2 - 
48*zeta - 13)*q^202 + 1/6*(2*zeta^7 + 6*zeta^6 - 2*zeta^5 - 33*zeta^4 - 
19*zeta^3 + 50*zeta^2 + 12*zeta - 18)*q^203 + 1/6*(13*zeta^7 + 5*zeta^6 - 
81*zeta^5 - 19*zeta^4 + 140*zeta^3 + 2*zeta^2 - 58*zeta + 19)*q^207 + 
1/18*(-2*zeta^7 - 6*zeta^6 + 19*zeta^5 + 33*zeta^4 - 49*zeta^3 - 50*zeta^2 + 
22*zeta + 18)*q^208 + 1/6*(4*zeta^7 + 12*zeta^6 - 21*zeta^5 - 66*zeta^4 + 
30*zeta^3 + 83*zeta^2 - 10*zeta - 2)*q^209 + 1/2*(-zeta^7 - 3*zeta^6 + zeta^5 + 
8*zeta^4 + 18*zeta^3 + 9*zeta^2 - 40*zeta - 8)*q^210 + 1/9*(8*zeta^7 + 24*zeta^6
- 8*zeta^5 - 200*zeta^4 - 144*zeta^3 + 472*zeta^2 + 184*zeta - 208)*q^211 + 
(-8*zeta^7 - 7*zeta^6 + 59*zeta^5 + 47*zeta^4 - 128*zeta^3 - 81*zeta^2 + 71*zeta
+ 21)*q^213 + 1/3*(-2*zeta^7 - 6*zeta^6 + 2*zeta^5 + 50*zeta^4 + 36*zeta^3 - 
118*zeta^2 - 46*zeta + 52)*q^214 + 1/3*(zeta^7 + 3*zeta^6 - zeta^5 - 8*zeta^4 - 
18*zeta^3 - 9*zeta^2 + 40*zeta + 8)*q^215 + 1/6*(4*zeta^7 + 12*zeta^6 - 
21*zeta^5 - 66*zeta^4 + 30*zeta^3 + 83*zeta^2 - 10*zeta - 2)*q^216 + 
1/9*(-8*zeta^7 - 24*zeta^6 + 76*zeta^5 + 132*zeta^4 - 196*zeta^3 - 200*zeta^2 + 
88*zeta + 72)*q^217 + 1/3*(26*zeta^7 + 10*zeta^6 - 162*zeta^5 - 38*zeta^4 + 
280*zeta^3 + 4*zeta^2 - 116*zeta + 38)*q^218 + 1/18*(-99*zeta^7 - 110*zeta^6 + 
660*zeta^5 + 605*zeta^4 - 1210*zeta^3 - 792*zeta^2 + 528*zeta + 143)*q^219 + 
1/2*(-2*zeta^7 - 6*zeta^6 + 2*zeta^5 + 33*zeta^4 + 19*zeta^3 - 50*zeta^2 - 
12*zeta + 18)*q^220 + 1/3*(4*zeta^7 + 12*zeta^6 - 4*zeta^5 - 66*zeta^4 - 
38*zeta^3 + 100*zeta^2 + 24*zeta - 36)*q^222 + 1/9*(72*zeta^7 + 80*zeta^6 - 
480*zeta^5 - 440*zeta^4 + 880*zeta^3 + 576*zeta^2 - 384*zeta - 104)*q^223 + 
1/6*(-13*zeta^7 - 5*zeta^6 + 81*zeta^5 + 19*zeta^4 - 140*zeta^3 - 2*zeta^2 + 
58*zeta - 19)*q^224 + 1/18*(-10*zeta^7 - 30*zeta^6 + 95*zeta^5 + 165*zeta^4 - 
245*zeta^3 - 250*zeta^2 + 110*zeta + 90)*q^225 + 1/6*(-20*zeta^7 - 60*zeta^6 + 
105*zeta^5 + 330*zeta^4 - 150*zeta^3 - 415*zeta^2 + 50*zeta + 10)*q^226 + 
1/6*(zeta^7 + 3*zeta^6 - zeta^5 - 8*zeta^4 - 18*zeta^3 - 9*zeta^2 + 40*zeta + 
8)*q^227 + 1/18*(7*zeta^7 + 21*zeta^6 - 7*zeta^5 - 175*zeta^4 - 126*zeta^3 + 
413*zeta^2 + 161*zeta - 182)*q^228 + 1/9*(-32*zeta^7 - 28*zeta^6 + 236*zeta^5 + 
188*zeta^4 - 512*zeta^3 - 324*zeta^2 + 284*zeta + 84)*q^229 + 1/6*(8*zeta^7 + 
7*zeta^6 - 59*zeta^5 - 47*zeta^4 + 128*zeta^3 + 81*zeta^2 - 71*zeta - 21)*q^230 
+ 1/6*(-5*zeta^7 - 15*zeta^6 + 5*zeta^5 + 125*zeta^4 + 90*zeta^3 - 295*zeta^2 - 
115*zeta + 130)*q^231 + 1/2*(-zeta^7 - 3*zeta^6 + zeta^5 + 8*zeta^4 + 18*zeta^3 
+ 9*zeta^2 - 40*zeta - 8)*q^232 + (-4*zeta^7 - 12*zeta^6 + 21*zeta^5 + 66*zeta^4
- 30*zeta^3 - 83*zeta^2 + 10*zeta + 2)*q^233 + 1/6*(-2*zeta^7 - 6*zeta^6 + 
19*zeta^5 + 33*zeta^4 - 49*zeta^3 - 50*zeta^2 + 22*zeta + 18)*q^234 + 
1/3*(-9*zeta^7 - 10*zeta^6 + 60*zeta^5 + 55*zeta^4 - 110*zeta^3 - 72*zeta^2 + 
48*zeta + 13)*q^236 + 1/9*(10*zeta^7 + 30*zeta^6 - 10*zeta^5 - 165*zeta^4 - 
95*zeta^3 + 250*zeta^2 + 60*zeta - 90)*q^237 + 1/6*(-2*zeta^7 - 6*zeta^6 + 
2*zeta^5 + 33*zeta^4 + 19*zeta^3 - 50*zeta^2 - 12*zeta + 18)*q^239 + 
1/3*(-9*zeta^7 - 10*zeta^6 + 60*zeta^5 + 55*zeta^4 - 110*zeta^3 - 72*zeta^2 + 
48*zeta + 13)*q^240 + 1/9*(-13*zeta^7 - 5*zeta^6 + 81*zeta^5 + 19*zeta^4 - 
140*zeta^3 - 2*zeta^2 + 58*zeta - 19)*q^241 + 1/18*(68*zeta^7 + 204*zeta^6 - 
357*zeta^5 - 1122*zeta^4 + 510*zeta^3 + 1411*zeta^2 - 170*zeta - 34)*q^243 + 
1/18*(-13*zeta^7 - 39*zeta^6 + 13*zeta^5 + 104*zeta^4 + 234*zeta^3 + 117*zeta^2 
- 520*zeta - 104)*q^244 + 1/2*(zeta^7 + 3*zeta^6 - zeta^5 - 25*zeta^4 - 
18*zeta^3 + 59*zeta^2 + 23*zeta - 26)*q^245 + (-8*zeta^7 - 7*zeta^6 + 59*zeta^5 
+ 47*zeta^4 - 128*zeta^3 - 81*zeta^2 + 71*zeta + 21)*q^246 + 1/9*(32*zeta^7 + 
28*zeta^6 - 236*zeta^5 - 188*zeta^4 + 512*zeta^3 + 324*zeta^2 - 284*zeta - 
84)*q^247 + 1/6*(-zeta^7 - 3*zeta^6 + zeta^5 + 25*zeta^4 + 18*zeta^3 - 59*zeta^2
- 23*zeta + 26)*q^248 + 1/3*(-4*zeta^7 - 12*zeta^6 + 4*zeta^5 + 32*zeta^4 + 
72*zeta^3 + 36*zeta^2 - 160*zeta - 32)*q^249 + (-4*zeta^7 - 12*zeta^6 + 
21*zeta^5 + 66*zeta^4 - 30*zeta^3 - 83*zeta^2 + 10*zeta + 2)*q^250 + 
1/2*(-2*zeta^7 - 6*zeta^6 + 19*zeta^5 + 33*zeta^4 - 49*zeta^3 - 50*zeta^2 + 
22*zeta + 18)*q^251 + 1/18*(13*zeta^7 + 5*zeta^6 - 81*zeta^5 - 19*zeta^4 + 
140*zeta^3 + 2*zeta^2 - 58*zeta + 19)*q^252 + (-2*zeta^7 - 6*zeta^6 + 2*zeta^5 +
33*zeta^4 + 19*zeta^3 - 50*zeta^2 - 12*zeta + 18)*q^254 + 1/18*(22*zeta^7 + 
66*zeta^6 - 22*zeta^5 - 363*zeta^4 - 209*zeta^3 + 550*zeta^2 + 132*zeta - 
198)*q^256 + 1/3*(-9*zeta^7 - 10*zeta^6 + 60*zeta^5 + 55*zeta^4 - 110*zeta^3 - 
72*zeta^2 + 48*zeta + 13)*q^257 + 1/6*(91*zeta^7 + 35*zeta^6 - 567*zeta^5 - 
133*zeta^4 + 980*zeta^3 + 14*zeta^2 - 406*zeta + 133)*q^258 + 1/9*(-14*zeta^7 - 
42*zeta^6 + 133*zeta^5 + 231*zeta^4 - 343*zeta^3 - 350*zeta^2 + 154*zeta + 
126)*q^259 + 1/2*(4*zeta^7 + 12*zeta^6 - 21*zeta^5 - 66*zeta^4 + 30*zeta^3 + 
83*zeta^2 - 10*zeta - 2)*q^260 + 1/3*(-zeta^7 - 3*zeta^6 + zeta^5 + 8*zeta^4 + 
18*zeta^3 + 9*zeta^2 - 40*zeta - 8)*q^261 + 1/3*(-zeta^7 - 3*zeta^6 + zeta^5 + 
25*zeta^4 + 18*zeta^3 - 59*zeta^2 - 23*zeta + 26)*q^262 + 1/2*(-8*zeta^7 - 
7*zeta^6 + 59*zeta^5 + 47*zeta^4 - 128*zeta^3 - 81*zeta^2 + 71*zeta + 21)*q^263 
+ 1/2*(8*zeta^7 + 7*zeta^6 - 59*zeta^5 - 47*zeta^4 + 128*zeta^3 + 81*zeta^2 - 
71*zeta - 21)*q^264 + 1/2*(zeta^7 + 3*zeta^6 - zeta^5 - 25*zeta^4 - 18*zeta^3 + 
59*zeta^2 + 23*zeta - 26)*q^265 + 1/3*(-2*zeta^7 - 6*zeta^6 + 2*zeta^5 + 
16*zeta^4 + 36*zeta^3 + 18*zeta^2 - 80*zeta - 16)*q^266 + (4*zeta^7 + 12*zeta^6 
- 21*zeta^5 - 66*zeta^4 + 30*zeta^3 + 83*zeta^2 - 10*zeta - 2)*q^267 + 
1/9*(14*zeta^7 + 42*zeta^6 - 133*zeta^5 - 231*zeta^4 + 343*zeta^3 + 350*zeta^2 -
154*zeta - 126)*q^268 + 1/6*(65*zeta^7 + 25*zeta^6 - 405*zeta^5 - 95*zeta^4 + 
700*zeta^3 + 10*zeta^2 - 290*zeta + 95)*q^269 + 1/2*(9*zeta^7 + 10*zeta^6 - 
60*zeta^5 - 55*zeta^4 + 110*zeta^3 + 72*zeta^2 - 48*zeta - 13)*q^270 + 
1/9*(-8*zeta^7 - 24*zeta^6 + 8*zeta^5 + 132*zeta^4 + 76*zeta^3 - 200*zeta^2 - 
48*zeta + 72)*q^271 + 1/18*(-2*zeta^7 - 6*zeta^6 + 2*zeta^5 + 33*zeta^4 + 
19*zeta^3 - 50*zeta^2 - 12*zeta + 18)*q^273 + (-9*zeta^7 - 10*zeta^6 + 60*zeta^5
+ 55*zeta^4 - 110*zeta^3 - 72*zeta^2 + 48*zeta + 13)*q^274 + 1/3*(13*zeta^7 + 
5*zeta^6 - 81*zeta^5 - 19*zeta^4 + 140*zeta^3 + 2*zeta^2 - 58*zeta + 19)*q^275 +
1/6*(-2*zeta^7 - 6*zeta^6 + 19*zeta^5 + 33*zeta^4 - 49*zeta^3 - 50*zeta^2 + 
22*zeta + 18)*q^276 + 1/9*(8*zeta^7 + 24*zeta^6 - 42*zeta^5 - 132*zeta^4 + 
60*zeta^3 + 166*zeta^2 - 20*zeta - 4)*q^277 + 1/6*(-5*zeta^7 - 15*zeta^6 + 
5*zeta^5 + 40*zeta^4 + 90*zeta^3 + 45*zeta^2 - 200*zeta - 40)*q^278 + 
1/18*(7*zeta^7 + 21*zeta^6 - 7*zeta^5 - 175*zeta^4 - 126*zeta^3 + 413*zeta^2 + 
161*zeta - 182)*q^279 + 1/2*(-8*zeta^7 - 7*zeta^6 + 59*zeta^5 + 47*zeta^4 - 
128*zeta^3 - 81*zeta^2 + 71*zeta + 21)*q^280 + 1/3*(8*zeta^7 + 7*zeta^6 - 
59*zeta^5 - 47*zeta^4 + 128*zeta^3 + 81*zeta^2 - 71*zeta - 21)*q^281 + 
1/2*(-zeta^7 - 3*zeta^6 + zeta^5 + 25*zeta^4 + 18*zeta^3 - 59*zeta^2 - 23*zeta +
26)*q^282 + 1/9*(10*zeta^7 + 30*zeta^6 - 10*zeta^5 - 80*zeta^4 - 180*zeta^3 - 
90*zeta^2 + 400*zeta + 80)*q^283 + 1/3*(4*zeta^7 + 12*zeta^6 - 21*zeta^5 - 
66*zeta^4 + 30*zeta^3 + 83*zeta^2 - 10*zeta - 2)*q^284 + 1/6*(2*zeta^7 + 
6*zeta^6 - 19*zeta^5 - 33*zeta^4 + 49*zeta^3 + 50*zeta^2 - 22*zeta - 18)*q^285 +
1/2*(-13*zeta^7 - 5*zeta^6 + 81*zeta^5 + 19*zeta^4 - 140*zeta^3 - 2*zeta^2 + 
58*zeta - 19)*q^286 + 1/3*(-18*zeta^7 - 20*zeta^6 + 120*zeta^5 + 110*zeta^4 - 
220*zeta^3 - 144*zeta^2 + 96*zeta + 26)*q^287 + (2*zeta^7 + 6*zeta^6 - 2*zeta^5 
- 33*zeta^4 - 19*zeta^3 + 50*zeta^2 + 12*zeta - 18)*q^290 + 1/18*(-45*zeta^7 - 
50*zeta^6 + 300*zeta^5 + 275*zeta^4 - 550*zeta^3 - 360*zeta^2 + 240*zeta + 
65)*q^291 + 1/18*(13*zeta^7 + 5*zeta^6 - 81*zeta^5 - 19*zeta^4 + 140*zeta^3 + 
2*zeta^2 - 58*zeta + 19)*q^292 + 1/3*(-4*zeta^7 - 12*zeta^6 + 38*zeta^5 + 
66*zeta^4 - 98*zeta^3 - 100*zeta^2 + 44*zeta + 36)*q^293 + 1/3*(-2*zeta^7 - 
6*zeta^6 + 2*zeta^5 + 50*zeta^4 + 36*zeta^3 - 118*zeta^2 - 46*zeta + 52)*q^296 +
1/6*(-8*zeta^7 - 7*zeta^6 + 59*zeta^5 + 47*zeta^4 - 128*zeta^3 - 81*zeta^2 + 
71*zeta + 21)*q^297 + 1/3*(8*zeta^7 + 7*zeta^6 - 59*zeta^5 - 47*zeta^4 + 
128*zeta^3 + 81*zeta^2 - 71*zeta - 21)*q^298 + 1/6*(zeta^7 + 3*zeta^6 - zeta^5 -
25*zeta^4 - 18*zeta^3 + 59*zeta^2 + 23*zeta - 26)*q^299 + 1/18*(zeta^7 + 
3*zeta^6 - zeta^5 - 8*zeta^4 - 18*zeta^3 - 9*zeta^2 + 40*zeta + 8)*q^300 + 
1/9*(40*zeta^7 + 120*zeta^6 - 210*zeta^5 - 660*zeta^4 + 300*zeta^3 + 830*zeta^2 
- 100*zeta - 20)*q^301 + 1/6*(65*zeta^7 + 25*zeta^6 - 405*zeta^5 - 95*zeta^4 + 
700*zeta^3 + 10*zeta^2 - 290*zeta + 95)*q^303 + 1/18*(-99*zeta^7 - 110*zeta^6 + 
660*zeta^5 + 605*zeta^4 - 1210*zeta^3 - 792*zeta^2 + 528*zeta + 143)*q^304 + 
(2*zeta^7 + 6*zeta^6 - 2*zeta^5 - 33*zeta^4 - 19*zeta^3 + 50*zeta^2 + 12*zeta - 
18)*q^305 + 1/9*(4*zeta^7 + 12*zeta^6 - 4*zeta^5 - 66*zeta^4 - 38*zeta^3 + 
100*zeta^2 + 24*zeta - 36)*q^307 + 1/6*(9*zeta^7 + 10*zeta^6 - 60*zeta^5 - 
55*zeta^4 + 110*zeta^3 + 72*zeta^2 - 48*zeta - 13)*q^308 + 1/9*(-13*zeta^7 - 
5*zeta^6 + 81*zeta^5 + 19*zeta^4 - 140*zeta^3 - 2*zeta^2 + 58*zeta - 19)*q^309 +
1/6*(-2*zeta^7 - 6*zeta^6 + 19*zeta^5 + 33*zeta^4 - 49*zeta^3 - 50*zeta^2 + 
22*zeta + 18)*q^310 + 1/2*(-12*zeta^7 - 36*zeta^6 + 63*zeta^5 + 198*zeta^4 - 
90*zeta^3 - 249*zeta^2 + 30*zeta + 6)*q^311 + 1/3*(-zeta^7 - 3*zeta^6 + zeta^5 +
8*zeta^4 + 18*zeta^3 + 9*zeta^2 - 40*zeta - 8)*q^312 + 1/9*(2*zeta^7 + 6*zeta^6 
- 2*zeta^5 - 50*zeta^4 - 36*zeta^3 + 118*zeta^2 + 46*zeta - 52)*q^313 + 
1/6*(-8*zeta^7 - 7*zeta^6 + 59*zeta^5 + 47*zeta^4 - 128*zeta^3 - 81*zeta^2 + 
71*zeta + 21)*q^314 + 1/3*(8*zeta^7 + 7*zeta^6 - 59*zeta^5 - 47*zeta^4 + 
128*zeta^3 + 81*zeta^2 - 71*zeta - 21)*q^315 + 1/9*(-7*zeta^7 - 21*zeta^6 + 
7*zeta^5 + 175*zeta^4 + 126*zeta^3 - 413*zeta^2 - 161*zeta + 182)*q^316 + 
1/2*(-zeta^7 - 3*zeta^6 + zeta^5 + 8*zeta^4 + 18*zeta^3 + 9*zeta^2 - 40*zeta - 
8)*q^317 + 1/2*(-12*zeta^7 - 36*zeta^6 + 63*zeta^5 + 198*zeta^4 - 90*zeta^3 - 
249*zeta^2 + 30*zeta + 6)*q^318 + 1/2*(2*zeta^7 + 6*zeta^6 - 19*zeta^5 - 
33*zeta^4 + 49*zeta^3 + 50*zeta^2 - 22*zeta - 18)*q^319 + (13*zeta^7 + 5*zeta^6 
- 81*zeta^5 - 19*zeta^4 + 140*zeta^3 + 2*zeta^2 - 58*zeta + 19)*q^320 + 
1/2*(-9*zeta^7 - 10*zeta^6 + 60*zeta^5 + 55*zeta^4 - 110*zeta^3 - 72*zeta^2 + 
48*zeta + 13)*q^321 + 1/6*(2*zeta^7 + 6*zeta^6 - 2*zeta^5 - 33*zeta^4 - 
19*zeta^3 + 50*zeta^2 + 12*zeta - 18)*q^322 + 1/9*(2*zeta^7 + 6*zeta^6 - 
2*zeta^5 - 33*zeta^4 - 19*zeta^3 + 50*zeta^2 + 12*zeta - 18)*q^324 + 
1/18*(9*zeta^7 + 10*zeta^6 - 60*zeta^5 - 55*zeta^4 + 110*zeta^3 + 72*zeta^2 - 
48*zeta - 13)*q^325 + 1/3*(-13*zeta^7 - 5*zeta^6 + 81*zeta^5 + 19*zeta^4 - 
140*zeta^3 - 2*zeta^2 + 58*zeta - 19)*q^326 + 1/18*(-14*zeta^7 - 42*zeta^6 + 
133*zeta^5 + 231*zeta^4 - 343*zeta^3 - 350*zeta^2 + 154*zeta + 126)*q^327 + 
(4*zeta^7 + 12*zeta^6 - 21*zeta^5 - 66*zeta^4 + 30*zeta^3 + 83*zeta^2 - 10*zeta 
- 2)*q^328 + 1/3*(zeta^7 + 3*zeta^6 - zeta^5 - 8*zeta^4 - 18*zeta^3 - 9*zeta^2 +
40*zeta + 8)*q^329 + 1/9*(-8*zeta^7 - 7*zeta^6 + 59*zeta^5 + 47*zeta^4 - 
128*zeta^3 - 81*zeta^2 + 71*zeta + 21)*q^331 + 1/3*(-8*zeta^7 - 7*zeta^6 + 
59*zeta^5 + 47*zeta^4 - 128*zeta^3 - 81*zeta^2 + 71*zeta + 21)*q^332 + 
1/9*(5*zeta^7 + 15*zeta^6 - 5*zeta^5 - 125*zeta^4 - 90*zeta^3 + 295*zeta^2 + 
115*zeta - 130)*q^333 + 1/6*(zeta^7 + 3*zeta^6 - zeta^5 - 8*zeta^4 - 18*zeta^3 -
9*zeta^2 + 40*zeta + 8)*q^334 + 1/3*(-4*zeta^7 - 12*zeta^6 + 21*zeta^5 + 
66*zeta^4 - 30*zeta^3 - 83*zeta^2 + 10*zeta + 2)*q^335 + 1/9*(-16*zeta^7 - 
48*zeta^6 + 152*zeta^5 + 264*zeta^4 - 392*zeta^3 - 400*zeta^2 + 176*zeta + 
144)*q^336 + 1/18*(-143*zeta^7 - 55*zeta^6 + 891*zeta^5 + 209*zeta^4 - 
1540*zeta^3 - 22*zeta^2 + 638*zeta - 209)*q^337 + 1/2*(9*zeta^7 + 10*zeta^6 - 
60*zeta^5 - 55*zeta^4 + 110*zeta^3 + 72*zeta^2 - 48*zeta - 13)*q^338 + 
1/6*(-10*zeta^7 - 30*zeta^6 + 10*zeta^5 + 165*zeta^4 + 95*zeta^3 - 250*zeta^2 - 
60*zeta + 90)*q^339 + 1/6*(2*zeta^7 + 6*zeta^6 - 2*zeta^5 - 33*zeta^4 - 
19*zeta^3 + 50*zeta^2 + 12*zeta - 18)*q^341 + 1/6*(9*zeta^7 + 10*zeta^6 - 
60*zeta^5 - 55*zeta^4 + 110*zeta^3 + 72*zeta^2 - 48*zeta - 13)*q^342 + 
1/18*(65*zeta^7 + 25*zeta^6 - 405*zeta^5 - 95*zeta^4 + 700*zeta^3 + 10*zeta^2 - 
290*zeta + 95)*q^343 + 1/6*(14*zeta^7 + 42*zeta^6 - 133*zeta^5 - 231*zeta^4 + 
343*zeta^3 + 350*zeta^2 - 154*zeta - 126)*q^344 + 1/3*(zeta^7 + 3*zeta^6 - 
zeta^5 - 8*zeta^4 - 18*zeta^3 - 9*zeta^2 + 40*zeta + 8)*q^346 + 1/6*(5*zeta^7 + 
15*zeta^6 - 5*zeta^5 - 125*zeta^4 - 90*zeta^3 + 295*zeta^2 + 115*zeta - 
130)*q^347 + 1/6*(40*zeta^7 + 35*zeta^6 - 295*zeta^5 - 235*zeta^4 + 640*zeta^3 +
405*zeta^2 - 355*zeta - 105)*q^348 + 1/18*(-88*zeta^7 - 77*zeta^6 + 649*zeta^5 +
517*zeta^4 - 1408*zeta^3 - 891*zeta^2 + 781*zeta + 231)*q^349 + 1/2*(zeta^7 + 
3*zeta^6 - zeta^5 - 25*zeta^4 - 18*zeta^3 + 59*zeta^2 + 23*zeta - 26)*q^350 + 
1/18*(-7*zeta^7 - 21*zeta^6 + 7*zeta^5 + 56*zeta^4 + 126*zeta^3 + 63*zeta^2 - 
280*zeta - 56)*q^351 + 1/2*(-4*zeta^7 - 12*zeta^6 + 21*zeta^5 + 66*zeta^4 - 
30*zeta^3 - 83*zeta^2 + 10*zeta + 2)*q^352 + 1/6*(2*zeta^7 + 6*zeta^6 - 
19*zeta^5 - 33*zeta^4 + 49*zeta^3 + 50*zeta^2 - 22*zeta - 18)*q^353 + 
(-13*zeta^7 - 5*zeta^6 + 81*zeta^5 + 19*zeta^4 - 140*zeta^3 - 2*zeta^2 + 58*zeta
- 19)*q^354 + 1/3*(18*zeta^7 + 20*zeta^6 - 120*zeta^5 - 110*zeta^4 + 220*zeta^3 
+ 144*zeta^2 - 96*zeta - 26)*q^355 + 1/3*(-2*zeta^7 - 6*zeta^6 + 2*zeta^5 + 
33*zeta^4 + 19*zeta^3 - 50*zeta^2 - 12*zeta + 18)*q^356 + 1/2*(-6*zeta^7 - 
18*zeta^6 + 6*zeta^5 + 99*zeta^4 + 57*zeta^3 - 150*zeta^2 - 36*zeta + 54)*q^358 
+ (9*zeta^7 + 10*zeta^6 - 60*zeta^5 - 55*zeta^4 + 110*zeta^3 + 72*zeta^2 - 
48*zeta - 13)*q^359 + 1/2*(-13*zeta^7 - 5*zeta^6 + 81*zeta^5 + 19*zeta^4 - 
140*zeta^3 - 2*zeta^2 + 58*zeta - 19)*q^360 + 1/2*(2*zeta^7 + 6*zeta^6 - 
19*zeta^5 - 33*zeta^4 + 49*zeta^3 + 50*zeta^2 - 22*zeta - 18)*q^361 + 
1/3*(-8*zeta^7 - 24*zeta^6 + 42*zeta^5 + 132*zeta^4 - 60*zeta^3 - 166*zeta^2 + 
20*zeta + 4)*q^362 + 1/9*(-zeta^7 - 3*zeta^6 + zeta^5 + 8*zeta^4 + 18*zeta^3 + 
9*zeta^2 - 40*zeta - 8)*q^363 + 1/18*(-zeta^7 - 3*zeta^6 + zeta^5 + 25*zeta^4 + 
18*zeta^3 - 59*zeta^2 - 23*zeta + 26)*q^364 + 1/3*(8*zeta^7 + 7*zeta^6 - 
59*zeta^5 - 47*zeta^4 + 128*zeta^3 + 81*zeta^2 - 71*zeta - 21)*q^365 + 
1/6*(-40*zeta^7 - 35*zeta^6 + 295*zeta^5 + 235*zeta^4 - 640*zeta^3 - 405*zeta^2 
+ 355*zeta + 105)*q^366 + 1/9*(-10*zeta^7 - 30*zeta^6 + 10*zeta^5 + 250*zeta^4 +
180*zeta^3 - 590*zeta^2 - 230*zeta + 260)*q^367 + 1/6*(zeta^7 + 3*zeta^6 - 
zeta^5 - 8*zeta^4 - 18*zeta^3 - 9*zeta^2 + 40*zeta + 8)*q^368 + 1/3*(-4*zeta^7 -
12*zeta^6 + 21*zeta^5 + 66*zeta^4 - 30*zeta^3 - 83*zeta^2 + 10*zeta + 2)*q^369 +
1/3*(2*zeta^7 + 6*zeta^6 - 19*zeta^5 - 33*zeta^4 + 49*zeta^3 + 50*zeta^2 - 
22*zeta - 18)*q^370 + 1/2*(-39*zeta^7 - 15*zeta^6 + 243*zeta^5 + 57*zeta^4 - 
420*zeta^3 - 6*zeta^2 + 174*zeta - 57)*q^371 + 1/9*(18*zeta^7 + 20*zeta^6 - 
120*zeta^5 - 110*zeta^4 + 220*zeta^3 + 144*zeta^2 - 96*zeta - 26)*q^372 + 
1/18*(2*zeta^7 + 6*zeta^6 - 2*zeta^5 - 33*zeta^4 - 19*zeta^3 + 50*zeta^2 + 
12*zeta - 18)*q^373 + 1/6*(-14*zeta^7 - 42*zeta^6 + 14*zeta^5 + 231*zeta^4 + 
133*zeta^3 - 350*zeta^2 - 84*zeta + 126)*q^375 + 1/2*(9*zeta^7 + 10*zeta^6 - 
60*zeta^5 - 55*zeta^4 + 110*zeta^3 + 72*zeta^2 - 48*zeta - 13)*q^376 + 
1/3*(26*zeta^7 + 10*zeta^6 - 162*zeta^5 - 38*zeta^4 + 280*zeta^3 + 4*zeta^2 - 
116*zeta + 38)*q^377 + 1/6*(-2*zeta^7 - 6*zeta^6 + 19*zeta^5 + 33*zeta^4 - 
49*zeta^3 - 50*zeta^2 + 22*zeta + 18)*q^378 + 1/18*(52*zeta^7 + 156*zeta^6 - 
273*zeta^5 - 858*zeta^4 + 390*zeta^3 + 1079*zeta^2 - 130*zeta - 26)*q^379 + 
1/6*(5*zeta^7 + 15*zeta^6 - 5*zeta^5 - 40*zeta^4 - 90*zeta^3 - 45*zeta^2 + 
200*zeta + 40)*q^380 + 1/18*(-17*zeta^7 - 51*zeta^6 + 17*zeta^5 + 425*zeta^4 + 
306*zeta^3 - 1003*zeta^2 - 391*zeta + 442)*q^381 + 1/6*(-8*zeta^7 - 7*zeta^6 + 
59*zeta^5 + 47*zeta^4 - 128*zeta^3 - 81*zeta^2 + 71*zeta + 21)*q^382 + 
1/6*(8*zeta^7 + 7*zeta^6 - 59*zeta^5 - 47*zeta^4 + 128*zeta^3 + 81*zeta^2 - 
71*zeta - 21)*q^383 + 1/6*(-zeta^7 - 3*zeta^6 + zeta^5 + 25*zeta^4 + 18*zeta^3 -
59*zeta^2 - 23*zeta + 26)*q^384 + 1/2*(-zeta^7 - 3*zeta^6 + zeta^5 + 8*zeta^4 + 
18*zeta^3 + 9*zeta^2 - 40*zeta - 8)*q^385 + (8*zeta^7 + 24*zeta^6 - 42*zeta^5 - 
132*zeta^4 + 60*zeta^3 + 166*zeta^2 - 20*zeta - 4)*q^386 + 1/18*(-26*zeta^7 - 
78*zeta^6 + 247*zeta^5 + 429*zeta^4 - 637*zeta^3 - 650*zeta^2 + 286*zeta + 
234)*q^387 + 1/18*(169*zeta^7 + 65*zeta^6 - 1053*zeta^5 - 247*zeta^4 + 
1820*zeta^3 + 26*zeta^2 - 754*zeta + 247)*q^388 + 1/6*(45*zeta^7 + 50*zeta^6 - 
300*zeta^5 - 275*zeta^4 + 550*zeta^3 + 360*zeta^2 - 240*zeta - 65)*q^389 + 
1/2*(2*zeta^7 + 6*zeta^6 - 2*zeta^5 - 33*zeta^4 - 19*zeta^3 + 50*zeta^2 + 
12*zeta - 18)*q^390 + 1/3*(-9*zeta^7 - 10*zeta^6 + 60*zeta^5 + 55*zeta^4 - 
110*zeta^3 - 72*zeta^2 + 48*zeta + 13)*q^393 + 1/2*(-13*zeta^7 - 5*zeta^6 + 
81*zeta^5 + 19*zeta^4 - 140*zeta^3 - 2*zeta^2 + 58*zeta - 19)*q^394 + 
1/3*(4*zeta^7 + 12*zeta^6 - 38*zeta^5 - 66*zeta^4 + 98*zeta^3 + 100*zeta^2 - 
44*zeta - 36)*q^395 + 1/3*(4*zeta^7 + 12*zeta^6 - 21*zeta^5 - 66*zeta^4 + 
30*zeta^3 + 83*zeta^2 - 10*zeta - 2)*q^396 + 1/18*(5*zeta^7 + 15*zeta^6 - 
5*zeta^5 - 40*zeta^4 - 90*zeta^3 - 45*zeta^2 + 200*zeta + 40)*q^397 + 
1/3*(zeta^7 + 3*zeta^6 - zeta^5 - 25*zeta^4 - 18*zeta^3 + 59*zeta^2 + 23*zeta - 
26)*q^398 + 1/18*(184*zeta^7 + 161*zeta^6 - 1357*zeta^5 - 1081*zeta^4 + 
2944*zeta^3 + 1863*zeta^2 - 1633*zeta - 483)*q^399 + 1/18*(-56*zeta^7 - 
49*zeta^6 + 413*zeta^5 + 329*zeta^4 - 896*zeta^3 - 567*zeta^2 + 497*zeta + 
147)*q^400 + (zeta^7 + 3*zeta^6 - zeta^5 - 25*zeta^4 - 18*zeta^3 + 59*zeta^2 + 
23*zeta - 26)*q^401 + 1/3*(4*zeta^7 + 12*zeta^6 - 4*zeta^5 - 32*zeta^4 - 
72*zeta^3 - 36*zeta^2 + 160*zeta + 32)*q^402 + 1/18*(20*zeta^7 + 60*zeta^6 - 
105*zeta^5 - 330*zeta^4 + 150*zeta^3 + 415*zeta^2 - 50*zeta - 10)*q^403 + 
1/6*(-2*zeta^7 - 6*zeta^6 + 19*zeta^5 + 33*zeta^4 - 49*zeta^3 - 50*zeta^2 + 
22*zeta + 18)*q^404 + 1/3*(-13*zeta^7 - 5*zeta^6 + 81*zeta^5 + 19*zeta^4 - 
140*zeta^3 - 2*zeta^2 + 58*zeta - 19)*q^405 + 1/3*(4*zeta^7 + 12*zeta^6 - 
4*zeta^5 - 66*zeta^4 - 38*zeta^3 + 100*zeta^2 + 24*zeta - 36)*q^407 + 
1/18*(50*zeta^7 + 150*zeta^6 - 50*zeta^5 - 825*zeta^4 - 475*zeta^3 + 1250*zeta^2
+ 300*zeta - 450)*q^409 + (9*zeta^7 + 10*zeta^6 - 60*zeta^5 - 55*zeta^4 + 
110*zeta^3 + 72*zeta^2 - 48*zeta - 13)*q^410 + 1/3*(-65*zeta^7 - 25*zeta^6 + 
405*zeta^5 + 95*zeta^4 - 700*zeta^3 - 10*zeta^2 + 290*zeta - 95)*q^411 + 
1/9*(2*zeta^7 + 6*zeta^6 - 19*zeta^5 - 33*zeta^4 + 49*zeta^3 + 50*zeta^2 - 
22*zeta - 18)*q^412 + 1/3*(-8*zeta^7 - 24*zeta^6 + 42*zeta^5 + 132*zeta^4 - 
60*zeta^3 - 166*zeta^2 + 20*zeta + 4)*q^413 + 1/6*(-5*zeta^7 - 15*zeta^6 + 
5*zeta^5 + 125*zeta^4 + 90*zeta^3 - 295*zeta^2 - 115*zeta + 130)*q^415 + 
1/3*(8*zeta^7 + 7*zeta^6 - 59*zeta^5 - 47*zeta^4 + 128*zeta^3 + 81*zeta^2 - 
71*zeta - 21)*q^416 + 1/18*(56*zeta^7 + 49*zeta^6 - 413*zeta^5 - 329*zeta^4 + 
896*zeta^3 + 567*zeta^2 - 497*zeta - 147)*q^417 + 1/2*(3*zeta^7 + 9*zeta^6 - 
3*zeta^5 - 75*zeta^4 - 54*zeta^3 + 177*zeta^2 + 69*zeta - 78)*q^418 + 
1/6*(7*zeta^7 + 21*zeta^6 - 7*zeta^5 - 56*zeta^4 - 126*zeta^3 - 63*zeta^2 + 
280*zeta + 56)*q^419 + 1/6*(-4*zeta^7 - 12*zeta^6 + 21*zeta^5 + 66*zeta^4 - 
30*zeta^3 - 83*zeta^2 + 10*zeta + 2)*q^420 + 1/9*(2*zeta^7 + 6*zeta^6 - 
19*zeta^5 - 33*zeta^4 + 49*zeta^3 + 50*zeta^2 - 22*zeta - 18)*q^421 + 
1/2*(13*zeta^7 + 5*zeta^6 - 81*zeta^5 - 19*zeta^4 + 140*zeta^3 + 2*zeta^2 - 
58*zeta + 19)*q^422 + 1/6*(-9*zeta^7 - 10*zeta^6 + 60*zeta^5 + 55*zeta^4 - 
110*zeta^3 - 72*zeta^2 + 48*zeta + 13)*q^423 + 1/2*(6*zeta^7 + 18*zeta^6 - 
6*zeta^5 - 99*zeta^4 - 57*zeta^3 + 150*zeta^2 + 36*zeta - 54)*q^424 + (-2*zeta^7
- 6*zeta^6 + 2*zeta^5 + 33*zeta^4 + 19*zeta^3 - 50*zeta^2 - 12*zeta + 18)*q^426 
+ 1/9*(-126*zeta^7 - 140*zeta^6 + 840*zeta^5 + 770*zeta^4 - 1540*zeta^3 - 
1008*zeta^2 + 672*zeta + 182)*q^427 + 1/6*(65*zeta^7 + 25*zeta^6 - 405*zeta^5 - 
95*zeta^4 + 700*zeta^3 + 10*zeta^2 - 290*zeta + 95)*q^428 + 1/3*(2*zeta^7 + 
6*zeta^6 - 19*zeta^5 - 33*zeta^4 + 49*zeta^3 + 50*zeta^2 - 22*zeta - 18)*q^429 +
1/6*(-20*zeta^7 - 60*zeta^6 + 105*zeta^5 + 330*zeta^4 - 150*zeta^3 - 415*zeta^2 
+ 50*zeta + 10)*q^430 + (zeta^7 + 3*zeta^6 - zeta^5 - 8*zeta^4 - 18*zeta^3 - 
9*zeta^2 + 40*zeta + 8)*q^431 + 1/9*(-2*zeta^7 - 6*zeta^6 + 2*zeta^5 + 50*zeta^4
+ 36*zeta^3 - 118*zeta^2 - 46*zeta + 52)*q^432 + 1/9*(112*zeta^7 + 98*zeta^6 - 
826*zeta^5 - 658*zeta^4 + 1792*zeta^3 + 1134*zeta^2 - 994*zeta - 294)*q^433 + 
1/2*(8*zeta^7 + 7*zeta^6 - 59*zeta^5 - 47*zeta^4 + 128*zeta^3 + 81*zeta^2 - 
71*zeta - 21)*q^434 + 1/2*(zeta^7 + 3*zeta^6 - zeta^5 - 25*zeta^4 - 18*zeta^3 + 
59*zeta^2 + 23*zeta - 26)*q^435 + 1/18*(17*zeta^7 + 51*zeta^6 - 17*zeta^5 - 
136*zeta^4 - 306*zeta^3 - 153*zeta^2 + 680*zeta + 136)*q^436 + 1/2*(-4*zeta^7 - 
12*zeta^6 + 21*zeta^5 + 66*zeta^4 - 30*zeta^3 - 83*zeta^2 + 10*zeta + 2)*q^437 +
1/6*(10*zeta^7 + 30*zeta^6 - 95*zeta^5 - 165*zeta^4 + 245*zeta^3 + 250*zeta^2 - 
110*zeta - 90)*q^438 + 1/9*(-13*zeta^7 - 5*zeta^6 + 81*zeta^5 + 19*zeta^4 - 
140*zeta^3 - 2*zeta^2 + 58*zeta - 19)*q^439 + 1/2*(-2*zeta^7 - 6*zeta^6 + 
2*zeta^5 + 33*zeta^4 + 19*zeta^3 - 50*zeta^2 - 12*zeta + 18)*q^441 + 
1/6*(2*zeta^7 + 6*zeta^6 - 2*zeta^5 - 33*zeta^4 - 19*zeta^3 + 50*zeta^2 + 
12*zeta - 18)*q^443 + 1/9*(-9*zeta^7 - 10*zeta^6 + 60*zeta^5 + 55*zeta^4 - 
110*zeta^3 - 72*zeta^2 + 48*zeta + 13)*q^444 + 1/3*(-26*zeta^7 - 10*zeta^6 + 
162*zeta^5 + 38*zeta^4 - 280*zeta^3 - 4*zeta^2 + 116*zeta - 38)*q^445 + 
1/6*(10*zeta^7 + 30*zeta^6 - 95*zeta^5 - 165*zeta^4 + 245*zeta^3 + 250*zeta^2 - 
110*zeta - 90)*q^446 + 1/3*(8*zeta^7 + 24*zeta^6 - 42*zeta^5 - 132*zeta^4 + 
60*zeta^3 + 166*zeta^2 - 20*zeta - 4)*q^447 + 1/9*(10*zeta^7 + 30*zeta^6 - 
10*zeta^5 - 80*zeta^4 - 180*zeta^3 - 90*zeta^2 + 400*zeta + 80)*q^448 + 
1/6*(-zeta^7 - 3*zeta^6 + zeta^5 + 25*zeta^4 + 18*zeta^3 - 59*zeta^2 - 23*zeta +
26)*q^449 + 1/3*(8*zeta^7 + 7*zeta^6 - 59*zeta^5 - 47*zeta^4 + 128*zeta^3 + 
81*zeta^2 - 71*zeta - 21)*q^450 + (-8*zeta^7 - 7*zeta^6 + 59*zeta^5 + 47*zeta^4 
- 128*zeta^3 - 81*zeta^2 + 71*zeta + 21)*q^451 + 1/6*(5*zeta^7 + 15*zeta^6 - 
5*zeta^5 - 125*zeta^4 - 90*zeta^3 + 295*zeta^2 + 115*zeta - 130)*q^452 + 
1/18*(5*zeta^7 + 15*zeta^6 - 5*zeta^5 - 40*zeta^4 - 90*zeta^3 - 45*zeta^2 + 
200*zeta + 40)*q^453 + (4*zeta^7 + 12*zeta^6 - 21*zeta^5 - 66*zeta^4 + 30*zeta^3
+ 83*zeta^2 - 10*zeta - 2)*q^454 + 1/3*(-65*zeta^7 - 25*zeta^6 + 405*zeta^5 + 
95*zeta^4 - 700*zeta^3 - 10*zeta^2 + 290*zeta - 95)*q^456 + 1/9*(-9*zeta^7 - 
10*zeta^6 + 60*zeta^5 + 55*zeta^4 - 110*zeta^3 - 72*zeta^2 + 48*zeta + 13)*q^457
+ 1/3*(-8*zeta^7 - 24*zeta^6 + 8*zeta^5 + 132*zeta^4 + 76*zeta^3 - 200*zeta^2 - 
48*zeta + 72)*q^458 + 1/3*(-2*zeta^7 - 6*zeta^6 + 2*zeta^5 + 33*zeta^4 + 
19*zeta^3 - 50*zeta^2 - 12*zeta + 18)*q^460 + 1/3*(-9*zeta^7 - 10*zeta^6 + 
60*zeta^5 + 55*zeta^4 - 110*zeta^3 - 72*zeta^2 + 48*zeta + 13)*q^461 + 
(-13*zeta^7 - 5*zeta^6 + 81*zeta^5 + 19*zeta^4 - 140*zeta^3 - 2*zeta^2 + 58*zeta
- 19)*q^462 + 1/9*(2*zeta^7 + 6*zeta^6 - 19*zeta^5 - 33*zeta^4 + 49*zeta^3 + 
50*zeta^2 - 22*zeta - 18)*q^463 + 1/6*(-4*zeta^7 - 12*zeta^6 + 21*zeta^5 + 
66*zeta^4 - 30*zeta^3 - 83*zeta^2 + 10*zeta + 2)*q^464 + 1/6*(zeta^7 + 3*zeta^6 
- zeta^5 - 8*zeta^4 - 18*zeta^3 - 9*zeta^2 + 40*zeta + 8)*q^465 + (-zeta^7 - 
3*zeta^6 + zeta^5 + 25*zeta^4 + 18*zeta^3 - 59*zeta^2 - 23*zeta + 26)*q^466 + 
(-8*zeta^7 - 7*zeta^6 + 59*zeta^5 + 47*zeta^4 - 128*zeta^3 - 81*zeta^2 + 71*zeta
+ 21)*q^467 + 1/18*(-40*zeta^7 - 35*zeta^6 + 295*zeta^5 + 235*zeta^4 - 
640*zeta^3 - 405*zeta^2 + 355*zeta + 105)*q^468 + 1/9*(-5*zeta^7 - 15*zeta^6 + 
5*zeta^5 + 125*zeta^4 + 90*zeta^3 - 295*zeta^2 - 115*zeta + 130)*q^469 + 
1/2*(-zeta^7 - 3*zeta^6 + zeta^5 + 8*zeta^4 + 18*zeta^3 + 9*zeta^2 - 40*zeta - 
8)*q^470 + 1/18*(-44*zeta^7 - 132*zeta^6 + 231*zeta^5 + 726*zeta^4 - 330*zeta^3 
- 913*zeta^2 + 110*zeta + 22)*q^471 + (-2*zeta^7 - 6*zeta^6 + 19*zeta^5 + 
33*zeta^4 - 49*zeta^3 - 50*zeta^2 + 22*zeta + 18)*q^472 + 1/6*(91*zeta^7 + 
35*zeta^6 - 567*zeta^5 - 133*zeta^4 + 980*zeta^3 + 14*zeta^2 - 406*zeta + 
133)*q^473 + 1/3*(-9*zeta^7 - 10*zeta^6 + 60*zeta^5 + 55*zeta^4 - 110*zeta^3 - 
72*zeta^2 + 48*zeta + 13)*q^474 + 1/18*(-22*zeta^7 - 66*zeta^6 + 22*zeta^5 + 
363*zeta^4 + 209*zeta^3 - 550*zeta^2 - 132*zeta + 198)*q^475 + (-2*zeta^7 - 
6*zeta^6 + 2*zeta^5 + 33*zeta^4 + 19*zeta^3 - 50*zeta^2 - 12*zeta + 18)*q^477 + 
1/3*(-18*zeta^7 - 20*zeta^6 + 120*zeta^5 + 110*zeta^4 - 220*zeta^3 - 144*zeta^2 
+ 96*zeta + 26)*q^478 + 1/6*(65*zeta^7 + 25*zeta^6 - 405*zeta^5 - 95*zeta^4 + 
700*zeta^3 + 10*zeta^2 - 290*zeta + 95)*q^479 + 1/2*(-2*zeta^7 - 6*zeta^6 + 
19*zeta^5 + 33*zeta^4 - 49*zeta^3 - 50*zeta^2 + 22*zeta + 18)*q^480 + 
1/9*(4*zeta^7 + 12*zeta^6 - 21*zeta^5 - 66*zeta^4 + 30*zeta^3 + 83*zeta^2 - 
10*zeta - 2)*q^481 + 1/6*(5*zeta^7 + 15*zeta^6 - 5*zeta^5 - 40*zeta^4 - 
90*zeta^3 - 45*zeta^2 + 200*zeta + 40)*q^482 + 1/3*(zeta^7 + 3*zeta^6 - zeta^5 -
25*zeta^4 - 18*zeta^3 + 59*zeta^2 + 23*zeta - 26)*q^483 + 1/9*(8*zeta^7 + 
7*zeta^6 - 59*zeta^5 - 47*zeta^4 + 128*zeta^3 + 81*zeta^2 - 71*zeta - 21)*q^484 
+ 1/2*(8*zeta^7 + 7*zeta^6 - 59*zeta^5 - 47*zeta^4 + 128*zeta^3 + 81*zeta^2 - 
71*zeta - 21)*q^485 + 1/3*(zeta^7 + 3*zeta^6 - zeta^5 - 25*zeta^4 - 18*zeta^3 + 
59*zeta^2 + 23*zeta - 26)*q^486 + 1/18*(-19*zeta^7 - 57*zeta^6 + 19*zeta^5 + 
152*zeta^4 + 342*zeta^3 + 171*zeta^2 - 760*zeta - 152)*q^487 + 1/6*(20*zeta^7 + 
60*zeta^6 - 105*zeta^5 - 330*zeta^4 + 150*zeta^3 + 415*zeta^2 - 50*zeta - 
10)*q^488 + 1/18*(-14*zeta^7 - 42*zeta^6 + 133*zeta^5 + 231*zeta^4 - 343*zeta^3 
- 350*zeta^2 + 154*zeta + 126)*q^489 + 1/2*(-13*zeta^7 - 5*zeta^6 + 81*zeta^5 + 
19*zeta^4 - 140*zeta^3 - 2*zeta^2 + 58*zeta - 19)*q^490 + 1/3*(9*zeta^7 + 
10*zeta^6 - 60*zeta^5 - 55*zeta^4 + 110*zeta^3 + 72*zeta^2 - 48*zeta - 13)*q^491
+ 1/3*(4*zeta^7 + 12*zeta^6 - 4*zeta^5 - 66*zeta^4 - 38*zeta^3 + 100*zeta^2 + 
24*zeta - 36)*q^492 + 1/6*(-10*zeta^7 - 30*zeta^6 + 10*zeta^5 + 165*zeta^4 + 
95*zeta^3 - 250*zeta^2 - 60*zeta + 90)*q^494 + 1/2*(9*zeta^7 + 10*zeta^6 - 
60*zeta^5 - 55*zeta^4 + 110*zeta^3 + 72*zeta^2 - 48*zeta - 13)*q^495 + 
1/9*(-52*zeta^7 - 20*zeta^6 + 324*zeta^5 + 76*zeta^4 - 560*zeta^3 - 8*zeta^2 + 
232*zeta - 76)*q^496 + 1/3*(8*zeta^7 + 24*zeta^6 - 76*zeta^5 - 132*zeta^4 + 
196*zeta^3 + 200*zeta^2 - 88*zeta - 72)*q^497 + 1/2*(12*zeta^7 + 36*zeta^6 - 
63*zeta^5 - 198*zeta^4 + 90*zeta^3 + 249*zeta^2 - 30*zeta - 6)*q^498 + 
1/9*(-8*zeta^7 - 24*zeta^6 + 8*zeta^5 + 64*zeta^4 + 144*zeta^3 + 72*zeta^2 - 
320*zeta - 64)*q^499 + 1/6*(5*zeta^7 + 15*zeta^6 - 5*zeta^5 - 125*zeta^4 - 
90*zeta^3 + 295*zeta^2 + 115*zeta - 130)*q^500 + 1/3*(-32*zeta^7 - 28*zeta^6 + 
236*zeta^5 + 188*zeta^4 - 512*zeta^3 - 324*zeta^2 + 284*zeta + 84)*q^501 + 
1/2*(-8*zeta^7 - 7*zeta^6 + 59*zeta^5 + 47*zeta^4 - 128*zeta^3 - 81*zeta^2 + 
71*zeta + 21)*q^502 + 1/2*(-zeta^7 - 3*zeta^6 + zeta^5 + 25*zeta^4 + 18*zeta^3 -
59*zeta^2 - 23*zeta + 26)*q^503 + 1/6*(-5*zeta^7 - 15*zeta^6 + 5*zeta^5 + 
40*zeta^4 + 90*zeta^3 + 45*zeta^2 - 200*zeta - 40)*q^504 + 1/3*(-4*zeta^7 - 
12*zeta^6 + 21*zeta^5 + 66*zeta^4 - 30*zeta^3 - 83*zeta^2 + 10*zeta + 2)*q^505 +
1/2*(-2*zeta^7 - 6*zeta^6 + 19*zeta^5 + 33*zeta^4 - 49*zeta^3 - 50*zeta^2 + 
22*zeta + 18)*q^506 + (13*zeta^7 + 5*zeta^6 - 81*zeta^5 - 19*zeta^4 + 140*zeta^3
+ 2*zeta^2 - 58*zeta + 19)*q^507 + 1/18*(171*zeta^7 + 190*zeta^6 - 1140*zeta^5 -
1045*zeta^4 + 2090*zeta^3 + 1368*zeta^2 - 912*zeta - 247)*q^508 + 1/2*(-2*zeta^7
- 6*zeta^6 + 2*zeta^5 + 33*zeta^4 + 19*zeta^3 - 50*zeta^2 - 12*zeta + 18)*q^509 
+ 1/9*(-16*zeta^7 - 48*zeta^6 + 16*zeta^5 + 264*zeta^4 + 152*zeta^3 - 400*zeta^2
- 96*zeta + 144)*q^511 + 1/6*(45*zeta^7 + 50*zeta^6 - 300*zeta^5 - 275*zeta^4 + 
550*zeta^3 + 360*zeta^2 - 240*zeta - 65)*q^512 + 1/18*(-221*zeta^7 - 85*zeta^6 +
1377*zeta^5 + 323*zeta^4 - 2380*zeta^3 - 34*zeta^2 + 986*zeta - 323)*q^513 + 
1/2*(-6*zeta^7 - 18*zeta^6 + 57*zeta^5 + 99*zeta^4 - 147*zeta^3 - 150*zeta^2 + 
66*zeta + 54)*q^514 + 1/9*(4*zeta^7 + 12*zeta^6 - 4*zeta^5 - 32*zeta^4 - 
72*zeta^3 - 36*zeta^2 + 160*zeta + 32)*q^516 + 1/2*(-zeta^7 - 3*zeta^6 + zeta^5 
+ 25*zeta^4 + 18*zeta^3 - 59*zeta^2 - 23*zeta + 26)*q^517 + (8*zeta^7 + 7*zeta^6
- 59*zeta^5 - 47*zeta^4 + 128*zeta^3 + 81*zeta^2 - 71*zeta - 21)*q^518 + 
1/6*(-8*zeta^7 - 7*zeta^6 + 59*zeta^5 + 47*zeta^4 - 128*zeta^3 - 81*zeta^2 + 
71*zeta + 21)*q^519 + 1/2*(-zeta^7 - 3*zeta^6 + zeta^5 + 25*zeta^4 + 18*zeta^3 -
59*zeta^2 - 23*zeta + 26)*q^520 + 1/3*(4*zeta^7 + 12*zeta^6 - 4*zeta^5 - 
32*zeta^4 - 72*zeta^3 - 36*zeta^2 + 160*zeta + 32)*q^521 + 1/2*(-4*zeta^7 - 
12*zeta^6 + 21*zeta^5 + 66*zeta^4 - 30*zeta^3 - 83*zeta^2 + 10*zeta + 2)*q^522 +
1/18*(10*zeta^7 + 30*zeta^6 - 95*zeta^5 - 165*zeta^4 + 245*zeta^3 + 250*zeta^2 -
110*zeta - 90)*q^523 + 1/3*(13*zeta^7 + 5*zeta^6 - 81*zeta^5 - 19*zeta^4 + 
140*zeta^3 + 2*zeta^2 - 58*zeta + 19)*q^524 + 1/9*(72*zeta^7 + 80*zeta^6 - 
480*zeta^5 - 440*zeta^4 + 880*zeta^3 + 576*zeta^2 - 384*zeta - 104)*q^525 + 
1/6*(10*zeta^7 + 30*zeta^6 - 10*zeta^5 - 165*zeta^4 - 95*zeta^3 + 250*zeta^2 + 
60*zeta - 90)*q^526 + 1/6*(10*zeta^7 + 30*zeta^6 - 10*zeta^5 - 165*zeta^4 - 
95*zeta^3 + 250*zeta^2 + 60*zeta - 90)*q^528 + 1/9*(90*zeta^7 + 100*zeta^6 - 
600*zeta^5 - 550*zeta^4 + 1100*zeta^3 + 720*zeta^2 - 480*zeta - 130)*q^529 + 
(13*zeta^7 + 5*zeta^6 - 81*zeta^5 - 19*zeta^4 + 140*zeta^3 + 2*zeta^2 - 58*zeta 
+ 19)*q^530 + 1/3*(2*zeta^7 + 6*zeta^6 - 19*zeta^5 - 33*zeta^4 + 49*zeta^3 + 
50*zeta^2 - 22*zeta - 18)*q^531 + 1/18*(-4*zeta^7 - 12*zeta^6 + 21*zeta^5 + 
66*zeta^4 - 30*zeta^3 - 83*zeta^2 + 10*zeta + 2)*q^532 + 1/3*(-zeta^7 - 3*zeta^6
+ zeta^5 + 8*zeta^4 + 18*zeta^3 + 9*zeta^2 - 40*zeta - 8)*q^533 + (zeta^7 + 
3*zeta^6 - zeta^5 - 25*zeta^4 - 18*zeta^3 + 59*zeta^2 + 23*zeta - 26)*q^534 + 
1/3*(16*zeta^7 + 14*zeta^6 - 118*zeta^5 - 94*zeta^4 + 256*zeta^3 + 162*zeta^2 - 
142*zeta - 42)*q^535 + 1/3*(32*zeta^7 + 28*zeta^6 - 236*zeta^5 - 188*zeta^4 + 
512*zeta^3 + 324*zeta^2 - 284*zeta - 84)*q^536 + 1/2*(-3*zeta^7 - 9*zeta^6 + 
3*zeta^5 + 75*zeta^4 + 54*zeta^3 - 177*zeta^2 - 69*zeta + 78)*q^537 + 
1/6*(-7*zeta^7 - 21*zeta^6 + 7*zeta^5 + 56*zeta^4 + 126*zeta^3 + 63*zeta^2 - 
280*zeta - 56)*q^538 + 1/6*(10*zeta^7 + 30*zeta^6 - 95*zeta^5 - 165*zeta^4 + 
245*zeta^3 + 250*zeta^2 - 110*zeta - 90)*q^540 + 1/18*(-65*zeta^7 - 25*zeta^6 + 
405*zeta^5 + 95*zeta^4 - 700*zeta^3 - 10*zeta^2 + 290*zeta - 95)*q^541 + 
1/2*(-45*zeta^7 - 50*zeta^6 + 300*zeta^5 + 275*zeta^4 - 550*zeta^3 - 360*zeta^2 
+ 240*zeta + 65)*q^542 + 1/18*(2*zeta^7 + 6*zeta^6 - 2*zeta^5 - 33*zeta^4 - 
19*zeta^3 + 50*zeta^2 + 12*zeta - 18)*q^543 + 1/3*(-4*zeta^7 - 12*zeta^6 + 
4*zeta^5 + 66*zeta^4 + 38*zeta^3 - 100*zeta^2 - 24*zeta + 36)*q^545 + 
1/6*(-9*zeta^7 - 10*zeta^6 + 60*zeta^5 + 55*zeta^4 - 110*zeta^3 - 72*zeta^2 + 
48*zeta + 13)*q^546 + 1/18*(91*zeta^7 + 35*zeta^6 - 567*zeta^5 - 133*zeta^4 + 
980*zeta^3 + 14*zeta^2 - 406*zeta + 133)*q^547 + 1/3*(-2*zeta^7 - 6*zeta^6 + 
19*zeta^5 + 33*zeta^4 - 49*zeta^3 - 50*zeta^2 + 22*zeta + 18)*q^548 + 
1/18*(-92*zeta^7 - 276*zeta^6 + 483*zeta^5 + 1518*zeta^4 - 690*zeta^3 - 
1909*zeta^2 + 230*zeta + 46)*q^549 + 1/2*(-zeta^7 - 3*zeta^6 + zeta^5 + 8*zeta^4
+ 18*zeta^3 + 9*zeta^2 - 40*zeta - 8)*q^550 + 1/3*(-4*zeta^7 - 12*zeta^6 + 
4*zeta^5 + 100*zeta^4 + 72*zeta^3 - 236*zeta^2 - 92*zeta + 104)*q^551 + 
1/2*(-8*zeta^7 - 7*zeta^6 + 59*zeta^5 + 47*zeta^4 - 128*zeta^3 - 81*zeta^2 + 
71*zeta + 21)*q^552 + 1/9*(32*zeta^7 + 28*zeta^6 - 236*zeta^5 - 188*zeta^4 + 
512*zeta^3 + 324*zeta^2 - 284*zeta - 84)*q^553 + 1/3*(2*zeta^7 + 6*zeta^6 - 
2*zeta^5 - 16*zeta^4 - 36*zeta^3 - 18*zeta^2 + 80*zeta + 16)*q^555 + 
1/18*(-92*zeta^7 - 276*zeta^6 + 483*zeta^5 + 1518*zeta^4 - 690*zeta^3 - 
1909*zeta^2 + 230*zeta + 46)*q^556 + 1/6*(13*zeta^7 + 5*zeta^6 - 81*zeta^5 - 
19*zeta^4 + 140*zeta^3 + 2*zeta^2 - 58*zeta + 19)*q^558 + 1/18*(-9*zeta^7 - 
10*zeta^6 + 60*zeta^5 + 55*zeta^4 - 110*zeta^3 - 72*zeta^2 + 48*zeta + 13)*q^559
+ 1/2*(-2*zeta^7 - 6*zeta^6 + 2*zeta^5 + 33*zeta^4 + 19*zeta^3 - 50*zeta^2 - 
12*zeta + 18)*q^560 + 1/2*(10*zeta^7 + 30*zeta^6 - 10*zeta^5 - 165*zeta^4 - 
95*zeta^3 + 250*zeta^2 + 60*zeta - 90)*q^562 + 1/3*(-18*zeta^7 - 20*zeta^6 + 
120*zeta^5 + 110*zeta^4 - 220*zeta^3 - 144*zeta^2 + 96*zeta + 26)*q^563 + 
1/3*(13*zeta^7 + 5*zeta^6 - 81*zeta^5 - 19*zeta^4 + 140*zeta^3 + 2*zeta^2 - 
58*zeta + 19)*q^564 + 1/6*(-10*zeta^7 - 30*zeta^6 + 95*zeta^5 + 165*zeta^4 - 
245*zeta^3 - 250*zeta^2 + 110*zeta + 90)*q^565 + 1/9*(-11*zeta^7 - 33*zeta^6 + 
11*zeta^5 + 88*zeta^4 + 198*zeta^3 + 99*zeta^2 - 440*zeta - 88)*q^567 + (zeta^7 
+ 3*zeta^6 - zeta^5 - 25*zeta^4 - 18*zeta^3 + 59*zeta^2 + 23*zeta - 26)*q^568 + 
1/6*(-40*zeta^7 - 35*zeta^6 + 295*zeta^5 + 235*zeta^4 - 640*zeta^3 - 405*zeta^2 
+ 355*zeta + 105)*q^569 + 1/2*(-24*zeta^7 - 21*zeta^6 + 177*zeta^5 + 141*zeta^4 
- 384*zeta^3 - 243*zeta^2 + 213*zeta + 63)*q^570 + 1/18*(19*zeta^7 + 57*zeta^6 -
19*zeta^5 - 475*zeta^4 - 342*zeta^3 + 1121*zeta^2 + 437*zeta - 494)*q^571 + 
1/3*(-2*zeta^7 - 6*zeta^6 + 2*zeta^5 + 16*zeta^4 + 36*zeta^3 + 18*zeta^2 - 
80*zeta - 16)*q^572 + 1/3*(4*zeta^7 + 12*zeta^6 - 21*zeta^5 - 66*zeta^4 + 
30*zeta^3 + 83*zeta^2 - 10*zeta - 2)*q^573 + (2*zeta^7 + 6*zeta^6 - 19*zeta^5 - 
33*zeta^4 + 49*zeta^3 + 50*zeta^2 - 22*zeta - 18)*q^574 + 1/6*(-13*zeta^7 - 
5*zeta^6 + 81*zeta^5 + 19*zeta^4 - 140*zeta^3 - 2*zeta^2 + 58*zeta - 19)*q^575 +
1/18*(-171*zeta^7 - 190*zeta^6 + 1140*zeta^5 + 1045*zeta^4 - 2090*zeta^3 - 
1368*zeta^2 + 912*zeta + 247)*q^576 + 1/18*(-10*zeta^7 - 30*zeta^6 + 10*zeta^5 +
165*zeta^4 + 95*zeta^3 - 250*zeta^2 - 60*zeta + 90)*q^577 + 1/18*(86*zeta^7 + 
258*zeta^6 - 86*zeta^5 - 1419*zeta^4 - 817*zeta^3 + 2150*zeta^2 + 516*zeta - 
774)*q^579 + 1/2*(-27*zeta^7 - 30*zeta^6 + 180*zeta^5 + 165*zeta^4 - 330*zeta^3 
- 216*zeta^2 + 144*zeta + 39)*q^580 + 1/6*(143*zeta^7 + 55*zeta^6 - 891*zeta^5 -
209*zeta^4 + 1540*zeta^3 + 22*zeta^2 - 638*zeta + 209)*q^581 + 1/3*(-4*zeta^7 - 
12*zeta^6 + 38*zeta^5 + 66*zeta^4 - 98*zeta^3 - 100*zeta^2 + 44*zeta + 36)*q^582
+ 1/2*(-12*zeta^7 - 36*zeta^6 + 63*zeta^5 + 198*zeta^4 - 90*zeta^3 - 249*zeta^2 
+ 30*zeta + 6)*q^583 + 1/6*(-5*zeta^7 - 15*zeta^6 + 5*zeta^5 + 40*zeta^4 + 
90*zeta^3 + 45*zeta^2 - 200*zeta - 40)*q^584 + 1/6*(-zeta^7 - 3*zeta^6 + zeta^5 
+ 25*zeta^4 + 18*zeta^3 - 59*zeta^2 - 23*zeta + 26)*q^585 + (-8*zeta^7 - 
7*zeta^6 + 59*zeta^5 + 47*zeta^4 - 128*zeta^3 - 81*zeta^2 + 71*zeta + 21)*q^586 
+ 1/6*(56*zeta^7 + 49*zeta^6 - 413*zeta^5 - 329*zeta^4 + 896*zeta^3 + 567*zeta^2
- 497*zeta - 147)*q^587 + 1/2*(-zeta^7 - 3*zeta^6 + zeta^5 + 25*zeta^4 + 
18*zeta^3 - 59*zeta^2 - 23*zeta + 26)*q^588 + 1/18*(19*zeta^7 + 57*zeta^6 - 
19*zeta^5 - 152*zeta^4 - 342*zeta^3 - 171*zeta^2 + 760*zeta + 152)*q^589 + 
(4*zeta^7 + 12*zeta^6 - 21*zeta^5 - 66*zeta^4 + 30*zeta^3 + 83*zeta^2 - 10*zeta 
- 2)*q^590 + 1/2*(2*zeta^7 + 6*zeta^6 - 19*zeta^5 - 33*zeta^4 + 49*zeta^3 + 
50*zeta^2 - 22*zeta - 18)*q^591 + 1/9*(-91*zeta^7 - 35*zeta^6 + 567*zeta^5 + 
133*zeta^4 - 980*zeta^3 - 14*zeta^2 + 406*zeta - 133)*q^592 + 1/2*(9*zeta^7 + 
10*zeta^6 - 60*zeta^5 - 55*zeta^4 + 110*zeta^3 + 72*zeta^2 - 48*zeta - 13)*q^593
+ (2*zeta^7 + 6*zeta^6 - 2*zeta^5 - 33*zeta^4 - 19*zeta^3 + 50*zeta^2 + 12*zeta 
- 18)*q^594 + 1/18*(63*zeta^7 + 70*zeta^6 - 420*zeta^5 - 385*zeta^4 + 770*zeta^3
+ 504*zeta^2 - 336*zeta - 91)*q^597 + 1/3*(-13*zeta^7 - 5*zeta^6 + 81*zeta^5 + 
19*zeta^4 - 140*zeta^3 - 2*zeta^2 + 58*zeta - 19)*q^598 + 1/6*(10*zeta^7 + 
30*zeta^6 - 95*zeta^5 - 165*zeta^4 + 245*zeta^3 + 250*zeta^2 - 110*zeta - 
90)*q^599 + 1/6*(-20*zeta^7 - 60*zeta^6 + 105*zeta^5 + 330*zeta^4 - 150*zeta^3 -
415*zeta^2 + 50*zeta + 10)*q^600 + 1/18*(-25*zeta^7 - 75*zeta^6 + 25*zeta^5 + 
200*zeta^4 + 450*zeta^3 + 225*zeta^2 - 1000*zeta - 200)*q^601 + 1/2*(3*zeta^7 + 
9*zeta^6 - 3*zeta^5 - 75*zeta^4 - 54*zeta^3 + 177*zeta^2 + 69*zeta - 78)*q^602 +
1/9*(-8*zeta^7 - 7*zeta^6 + 59*zeta^5 + 47*zeta^4 - 128*zeta^3 - 81*zeta^2 + 
71*zeta + 21)*q^603 + 1/18*(-40*zeta^7 - 35*zeta^6 + 295*zeta^5 + 235*zeta^4 - 
640*zeta^3 - 405*zeta^2 + 355*zeta + 105)*q^604 + 1/2*(-3*zeta^7 - 9*zeta^6 + 
3*zeta^5 + 24*zeta^4 + 54*zeta^3 + 27*zeta^2 - 120*zeta - 24)*q^606 + 
1/18*(-44*zeta^7 - 132*zeta^6 + 231*zeta^5 + 726*zeta^4 - 330*zeta^3 - 
913*zeta^2 + 110*zeta + 22)*q^607 + 1/3*(2*zeta^7 + 6*zeta^6 - 19*zeta^5 - 
33*zeta^4 + 49*zeta^3 + 50*zeta^2 - 22*zeta - 18)*q^608 + 1/6*(13*zeta^7 + 
5*zeta^6 - 81*zeta^5 - 19*zeta^4 + 140*zeta^3 + 2*zeta^2 - 58*zeta + 19)*q^609 +
1/6*(-9*zeta^7 - 10*zeta^6 + 60*zeta^5 + 55*zeta^4 - 110*zeta^3 - 72*zeta^2 + 
48*zeta + 13)*q^610 + 1/6*(2*zeta^7 + 6*zeta^6 - 2*zeta^5 - 33*zeta^4 - 
19*zeta^3 + 50*zeta^2 + 12*zeta - 18)*q^611 + 1/9*(4*zeta^7 + 12*zeta^6 - 
4*zeta^5 - 66*zeta^4 - 38*zeta^3 + 100*zeta^2 + 24*zeta - 36)*q^613 + 
1/6*(63*zeta^7 + 70*zeta^6 - 420*zeta^5 - 385*zeta^4 + 770*zeta^3 + 504*zeta^2 -
336*zeta - 91)*q^614 + (13*zeta^7 + 5*zeta^6 - 81*zeta^5 - 19*zeta^4 + 
140*zeta^3 + 2*zeta^2 - 58*zeta + 19)*q^615 + (-2*zeta^7 - 6*zeta^6 + 19*zeta^5 
+ 33*zeta^4 - 49*zeta^3 - 50*zeta^2 + 22*zeta + 18)*q^616 + 1/6*(28*zeta^7 + 
84*zeta^6 - 147*zeta^5 - 462*zeta^4 + 210*zeta^3 + 581*zeta^2 - 70*zeta - 
14)*q^617 + 1/3*(zeta^7 + 3*zeta^6 - zeta^5 - 8*zeta^4 - 18*zeta^3 - 9*zeta^2 + 
40*zeta + 8)*q^618 + 1/18*(-11*zeta^7 - 33*zeta^6 + 11*zeta^5 + 275*zeta^4 + 
198*zeta^3 - 649*zeta^2 - 253*zeta + 286)*q^619 + 1/2*(-8*zeta^7 - 7*zeta^6 + 
59*zeta^5 + 47*zeta^4 - 128*zeta^3 - 81*zeta^2 + 71*zeta + 21)*q^620 + 
1/3*(-8*zeta^7 - 7*zeta^6 + 59*zeta^5 + 47*zeta^4 - 128*zeta^3 - 81*zeta^2 + 
71*zeta + 21)*q^621 + 1/6*(-5*zeta^7 - 15*zeta^6 + 5*zeta^5 + 125*zeta^4 + 
90*zeta^3 - 295*zeta^2 - 115*zeta + 130)*q^622 + 1/3*(-4*zeta^7 - 12*zeta^6 + 
4*zeta^5 + 32*zeta^4 + 72*zeta^3 + 36*zeta^2 - 160*zeta - 32)*q^623 + 
1/18*(4*zeta^7 + 12*zeta^6 - 21*zeta^5 - 66*zeta^4 + 30*zeta^3 + 83*zeta^2 - 
10*zeta - 2)*q^624 + 1/9*(-8*zeta^7 - 24*zeta^6 + 76*zeta^5 + 132*zeta^4 - 
196*zeta^3 - 200*zeta^2 + 88*zeta + 72)*q^625 + (13*zeta^7 + 5*zeta^6 - 
81*zeta^5 - 19*zeta^4 + 140*zeta^3 + 2*zeta^2 - 58*zeta + 19)*q^626 + 
1/3*(45*zeta^7 + 50*zeta^6 - 300*zeta^5 - 275*zeta^4 + 550*zeta^3 + 360*zeta^2 -
240*zeta - 65)*q^627 + 1/18*(-10*zeta^7 - 30*zeta^6 + 10*zeta^5 + 165*zeta^4 + 
95*zeta^3 - 250*zeta^2 - 60*zeta + 90)*q^628 + 1/2*(2*zeta^7 + 6*zeta^6 - 
2*zeta^5 - 33*zeta^4 - 19*zeta^3 + 50*zeta^2 + 12*zeta - 18)*q^630 + 
1/18*(117*zeta^7 + 130*zeta^6 - 780*zeta^5 - 715*zeta^4 + 1430*zeta^3 + 
936*zeta^2 - 624*zeta - 169)*q^631 + 1/3*(13*zeta^7 + 5*zeta^6 - 81*zeta^5 - 
19*zeta^4 + 140*zeta^3 + 2*zeta^2 - 58*zeta + 19)*q^632 + 1/18*(-50*zeta^7 - 
150*zeta^6 + 475*zeta^5 + 825*zeta^4 - 1225*zeta^3 - 1250*zeta^2 + 550*zeta + 
450)*q^633 + 1/3*(28*zeta^7 + 84*zeta^6 - 147*zeta^5 - 462*zeta^4 + 210*zeta^3 +
581*zeta^2 - 70*zeta - 14)*q^634 + (-zeta^7 - 3*zeta^6 + zeta^5 + 8*zeta^4 + 
18*zeta^3 + 9*zeta^2 - 40*zeta - 8)*q^635 + 1/2*(zeta^7 + 3*zeta^6 - zeta^5 - 
25*zeta^4 - 18*zeta^3 + 59*zeta^2 + 23*zeta - 26)*q^636 + 1/2*(-8*zeta^7 - 
7*zeta^6 + 59*zeta^5 + 47*zeta^4 - 128*zeta^3 - 81*zeta^2 + 71*zeta + 21)*q^637 
+ 1/2*(24*zeta^7 + 21*zeta^6 - 177*zeta^5 - 141*zeta^4 + 384*zeta^3 + 243*zeta^2
- 213*zeta - 63)*q^638 + (-zeta^7 - 3*zeta^6 + zeta^5 + 25*zeta^4 + 18*zeta^3 - 
59*zeta^2 - 23*zeta + 26)*q^639 + 1/2*(zeta^7 + 3*zeta^6 - zeta^5 - 8*zeta^4 - 
18*zeta^3 - 9*zeta^2 + 40*zeta + 8)*q^640 + 1/6*(-4*zeta^7 - 12*zeta^6 + 
21*zeta^5 + 66*zeta^4 - 30*zeta^3 - 83*zeta^2 + 10*zeta + 2)*q^641 + 
1/2*(-2*zeta^7 - 6*zeta^6 + 19*zeta^5 + 33*zeta^4 - 49*zeta^3 - 50*zeta^2 + 
22*zeta + 18)*q^642 + 1/9*(104*zeta^7 + 40*zeta^6 - 648*zeta^5 - 152*zeta^4 + 
1120*zeta^3 + 16*zeta^2 - 464*zeta + 152)*q^643 + 1/6*(-14*zeta^7 - 42*zeta^6 + 
14*zeta^5 + 231*zeta^4 + 133*zeta^3 - 350*zeta^2 - 84*zeta + 126)*q^645 + 
1/6*(2*zeta^7 + 6*zeta^6 - 2*zeta^5 - 33*zeta^4 - 19*zeta^3 + 50*zeta^2 + 
12*zeta - 18)*q^647 + 1/3*(-36*zeta^7 - 40*zeta^6 + 240*zeta^5 + 220*zeta^4 - 
440*zeta^3 - 288*zeta^2 + 192*zeta + 52)*q^648 + (-13*zeta^7 - 5*zeta^6 + 
81*zeta^5 + 19*zeta^4 - 140*zeta^3 - 2*zeta^2 + 58*zeta - 19)*q^649 + 
1/18*(68*zeta^7 + 204*zeta^6 - 357*zeta^5 - 1122*zeta^4 + 510*zeta^3 + 
1411*zeta^2 - 170*zeta - 34)*q^651 + 1/18*(-19*zeta^7 - 57*zeta^6 + 19*zeta^5 + 
152*zeta^4 + 342*zeta^3 + 171*zeta^2 - 760*zeta - 152)*q^652 + 1/6*(7*zeta^7 + 
21*zeta^6 - 7*zeta^5 - 175*zeta^4 - 126*zeta^3 + 413*zeta^2 + 161*zeta - 
182)*q^653 + 1/6*(-40*zeta^7 - 35*zeta^6 + 295*zeta^5 + 235*zeta^4 - 640*zeta^3 
- 405*zeta^2 + 355*zeta + 105)*q^654 + 1/3*(8*zeta^7 + 7*zeta^6 - 59*zeta^5 - 
47*zeta^4 + 128*zeta^3 + 81*zeta^2 - 71*zeta - 21)*q^655 + 1/3*(2*zeta^7 + 
6*zeta^6 - 2*zeta^5 - 50*zeta^4 - 36*zeta^3 + 118*zeta^2 + 46*zeta - 52)*q^656 +
1/18*(11*zeta^7 + 33*zeta^6 - 11*zeta^5 - 88*zeta^4 - 198*zeta^3 - 99*zeta^2 + 
440*zeta + 88)*q^657 + 1/2*(-4*zeta^7 - 12*zeta^6 + 21*zeta^5 + 66*zeta^4 - 
30*zeta^3 - 83*zeta^2 + 10*zeta + 2)*q^658 + 1/6*(-26*zeta^7 - 78*zeta^6 + 
247*zeta^5 + 429*zeta^4 - 637*zeta^3 - 650*zeta^2 + 286*zeta + 234)*q^659 + 
1/2*(13*zeta^7 + 5*zeta^6 - 81*zeta^5 - 19*zeta^4 + 140*zeta^3 + 2*zeta^2 - 
58*zeta + 19)*q^660 + 1/9*(-90*zeta^7 - 100*zeta^6 + 600*zeta^5 + 550*zeta^4 - 
1100*zeta^3 - 720*zeta^2 + 480*zeta + 130)*q^661 + 1/6*(-2*zeta^7 - 6*zeta^6 + 
2*zeta^5 + 33*zeta^4 + 19*zeta^3 - 50*zeta^2 - 12*zeta + 18)*q^662 + 
1/2*(-6*zeta^7 - 18*zeta^6 + 6*zeta^5 + 99*zeta^4 + 57*zeta^3 - 150*zeta^2 - 
36*zeta + 54)*q^664 + 1/3*(-18*zeta^7 - 20*zeta^6 + 120*zeta^5 + 110*zeta^4 - 
220*zeta^3 - 144*zeta^2 + 96*zeta + 26)*q^665 + 1/3*(26*zeta^7 + 10*zeta^6 - 
162*zeta^5 - 38*zeta^4 + 280*zeta^3 + 4*zeta^2 - 116*zeta + 38)*q^666 + 
1/2*(2*zeta^7 + 6*zeta^6 - 19*zeta^5 - 33*zeta^4 + 49*zeta^3 + 50*zeta^2 - 
22*zeta - 18)*q^667 + (-4*zeta^7 - 12*zeta^6 + 21*zeta^5 + 66*zeta^4 - 30*zeta^3
- 83*zeta^2 + 10*zeta + 2)*q^668 + 1/18*(-zeta^7 - 3*zeta^6 + zeta^5 + 8*zeta^4 
+ 18*zeta^3 + 9*zeta^2 - 40*zeta - 8)*q^669 + 1/3*(5*zeta^7 + 15*zeta^6 - 
5*zeta^5 - 125*zeta^4 - 90*zeta^3 + 295*zeta^2 + 115*zeta - 130)*q^670 + 
1/6*(-40*zeta^7 - 35*zeta^6 + 295*zeta^5 + 235*zeta^4 - 640*zeta^3 - 405*zeta^2 
+ 355*zeta + 105)*q^671 + 1/2*(-8*zeta^7 - 7*zeta^6 + 59*zeta^5 + 47*zeta^4 - 
128*zeta^3 - 81*zeta^2 + 71*zeta + 21)*q^672 + 1/9*(-16*zeta^7 - 48*zeta^6 + 
16*zeta^5 + 400*zeta^4 + 288*zeta^3 - 944*zeta^2 - 368*zeta + 416)*q^673 + 
1/6*(-5*zeta^7 - 15*zeta^6 + 5*zeta^5 + 40*zeta^4 + 90*zeta^3 + 45*zeta^2 - 
200*zeta - 40)*q^674 + 1/9*(-8*zeta^7 - 24*zeta^6 + 42*zeta^5 + 132*zeta^4 - 
60*zeta^3 - 166*zeta^2 + 20*zeta + 4)*q^675 + 1/6*(-13*zeta^7 - 5*zeta^6 + 
81*zeta^5 + 19*zeta^4 - 140*zeta^3 - 2*zeta^2 + 58*zeta - 19)*q^677 + 
1/18*(-2*zeta^7 - 6*zeta^6 + 2*zeta^5 + 33*zeta^4 + 19*zeta^3 - 50*zeta^2 - 
12*zeta + 18)*q^679 + 1/6*(10*zeta^7 + 30*zeta^6 - 10*zeta^5 - 165*zeta^4 - 
95*zeta^3 + 250*zeta^2 + 60*zeta - 90)*q^681 + (9*zeta^7 + 10*zeta^6 - 60*zeta^5
- 55*zeta^4 + 110*zeta^3 + 72*zeta^2 - 48*zeta - 13)*q^682 + 1/6*(13*zeta^7 + 
5*zeta^6 - 81*zeta^5 - 19*zeta^4 + 140*zeta^3 + 2*zeta^2 - 58*zeta + 19)*q^683 +
1/18*(-14*zeta^7 - 42*zeta^6 + 133*zeta^5 + 231*zeta^4 - 343*zeta^3 - 350*zeta^2
+ 154*zeta + 126)*q^684 + (4*zeta^7 + 12*zeta^6 - 21*zeta^5 - 66*zeta^4 + 
30*zeta^3 + 83*zeta^2 - 10*zeta - 2)*q^685 + 1/3*(-2*zeta^7 - 6*zeta^6 + 
2*zeta^5 + 16*zeta^4 + 36*zeta^3 + 18*zeta^2 - 80*zeta - 16)*q^686 + 
1/9*(-16*zeta^7 - 48*zeta^6 + 16*zeta^5 + 400*zeta^4 + 288*zeta^3 - 944*zeta^2 -
368*zeta + 416)*q^687 + 1/9*(-80*zeta^7 - 70*zeta^6 + 590*zeta^5 + 470*zeta^4 - 
1280*zeta^3 - 810*zeta^2 + 710*zeta + 210)*q^688 + 1/2*(-zeta^7 - 3*zeta^6 + 
zeta^5 + 25*zeta^4 + 18*zeta^3 - 59*zeta^2 - 23*zeta + 26)*q^690 + 
1/9*(-8*zeta^7 - 24*zeta^6 + 8*zeta^5 + 64*zeta^4 + 144*zeta^3 + 72*zeta^2 - 
320*zeta - 64)*q^691 + 1/2*(4*zeta^7 + 12*zeta^6 - 21*zeta^5 - 66*zeta^4 + 
30*zeta^3 + 83*zeta^2 - 10*zeta - 2)*q^692 + 1/6*(10*zeta^7 + 30*zeta^6 - 
95*zeta^5 - 165*zeta^4 + 245*zeta^3 + 250*zeta^2 - 110*zeta - 90)*q^693 + 
1/6*(-13*zeta^7 - 5*zeta^6 + 81*zeta^5 + 19*zeta^4 - 140*zeta^3 - 2*zeta^2 + 
58*zeta - 19)*q^694 + 1/6*(-45*zeta^7 - 50*zeta^6 + 300*zeta^5 + 275*zeta^4 - 
550*zeta^3 - 360*zeta^2 + 240*zeta + 65)*q^695 + (-2*zeta^7 - 6*zeta^6 + 
2*zeta^5 + 33*zeta^4 + 19*zeta^3 - 50*zeta^2 - 12*zeta + 18)*q^696 + 
1/3*(-2*zeta^7 - 6*zeta^6 + 2*zeta^5 + 33*zeta^4 + 19*zeta^3 - 50*zeta^2 - 
12*zeta + 18)*q^698 + (-18*zeta^7 - 20*zeta^6 + 120*zeta^5 + 110*zeta^4 - 
220*zeta^3 - 144*zeta^2 + 96*zeta + 26)*q^699 + 1/9*(-13*zeta^7 - 5*zeta^6 + 
81*zeta^5 + 19*zeta^4 - 140*zeta^3 - 2*zeta^2 + 58*zeta - 19)*q^700 + 
1/2*(2*zeta^7 + 6*zeta^6 - 19*zeta^5 - 33*zeta^4 + 49*zeta^3 + 50*zeta^2 - 
22*zeta - 18)*q^701 + 1/6*(-20*zeta^7 - 60*zeta^6 + 105*zeta^5 + 330*zeta^4 - 
150*zeta^3 - 415*zeta^2 + 50*zeta + 10)*q^702 + 1/9*(11*zeta^7 + 33*zeta^6 - 
11*zeta^5 - 88*zeta^4 - 198*zeta^3 - 99*zeta^2 + 440*zeta + 88)*q^703 + 
1/6*(-zeta^7 - 3*zeta^6 + zeta^5 + 25*zeta^4 + 18*zeta^3 - 59*zeta^2 - 23*zeta +
26)*q^704 + 1/2*(8*zeta^7 + 7*zeta^6 - 59*zeta^5 - 47*zeta^4 + 128*zeta^3 + 
81*zeta^2 - 71*zeta - 21)*q^705 + 1/3*(4*zeta^7 + 12*zeta^6 - 4*zeta^5 - 
100*zeta^4 - 72*zeta^3 + 236*zeta^2 + 92*zeta - 104)*q^707 + 1/3*(-2*zeta^7 - 
6*zeta^6 + 2*zeta^5 + 16*zeta^4 + 36*zeta^3 + 18*zeta^2 - 80*zeta - 16)*q^708 + 
1/18*(-92*zeta^7 - 276*zeta^6 + 483*zeta^5 + 1518*zeta^4 - 690*zeta^3 - 
1909*zeta^2 + 230*zeta + 46)*q^709 + 1/3*(-2*zeta^7 - 6*zeta^6 + 19*zeta^5 + 
33*zeta^4 - 49*zeta^3 - 50*zeta^2 + 22*zeta + 18)*q^710 + 1/9*(65*zeta^7 + 
25*zeta^6 - 405*zeta^5 - 95*zeta^4 + 700*zeta^3 + 10*zeta^2 - 290*zeta + 
95)*q^711 + (-9*zeta^7 - 10*zeta^6 + 60*zeta^5 + 55*zeta^4 - 110*zeta^3 - 
72*zeta^2 + 48*zeta + 13)*q^712 + 1/3*(-2*zeta^7 - 6*zeta^6 + 2*zeta^5 + 
33*zeta^4 + 19*zeta^3 - 50*zeta^2 - 12*zeta + 18)*q^713 + 1/2*(2*zeta^7 + 
6*zeta^6 - 2*zeta^5 - 33*zeta^4 - 19*zeta^3 + 50*zeta^2 + 12*zeta - 18)*q^715 + 
1/2*(27*zeta^7 + 30*zeta^6 - 180*zeta^5 - 165*zeta^4 + 330*zeta^3 + 216*zeta^2 -
144*zeta - 39)*q^716 + 1/6*(-65*zeta^7 - 25*zeta^6 + 405*zeta^5 + 95*zeta^4 - 
700*zeta^3 - 10*zeta^2 + 290*zeta - 95)*q^717 + 1/2*(-2*zeta^7 - 6*zeta^6 + 
19*zeta^5 + 33*zeta^4 - 49*zeta^3 - 50*zeta^2 + 22*zeta + 18)*q^718 + 
1/6*(-52*zeta^7 - 156*zeta^6 + 273*zeta^5 + 858*zeta^4 - 390*zeta^3 - 
1079*zeta^2 + 130*zeta + 26)*q^719 + 1/3*(zeta^7 + 3*zeta^6 - zeta^5 - 8*zeta^4 
- 18*zeta^3 - 9*zeta^2 + 40*zeta + 8)*q^720 + 1/9*(-2*zeta^7 - 6*zeta^6 + 
2*zeta^5 + 50*zeta^4 + 36*zeta^3 - 118*zeta^2 - 46*zeta + 52)*q^721 + 
1/2*(8*zeta^7 + 7*zeta^6 - 59*zeta^5 - 47*zeta^4 + 128*zeta^3 + 81*zeta^2 - 
71*zeta - 21)*q^722 + 1/18*(-136*zeta^7 - 119*zeta^6 + 1003*zeta^5 + 799*zeta^4 
- 2176*zeta^3 - 1377*zeta^2 + 1207*zeta + 357)*q^723 + 1/18*(25*zeta^7 + 
75*zeta^6 - 25*zeta^5 - 625*zeta^4 - 450*zeta^3 + 1475*zeta^2 + 575*zeta - 
650)*q^724 + 1/6*(zeta^7 + 3*zeta^6 - zeta^5 - 8*zeta^4 - 18*zeta^3 - 9*zeta^2 +
40*zeta + 8)*q^725 + 1/3*(4*zeta^7 + 12*zeta^6 - 21*zeta^5 - 66*zeta^4 + 
30*zeta^3 + 83*zeta^2 - 10*zeta - 2)*q^726 + 1/9*(38*zeta^7 + 114*zeta^6 - 
361*zeta^5 - 627*zeta^4 + 931*zeta^3 + 950*zeta^2 - 418*zeta - 342)*q^727 + 
1/6*(13*zeta^7 + 5*zeta^6 - 81*zeta^5 - 19*zeta^4 + 140*zeta^3 + 2*zeta^2 - 
58*zeta + 19)*q^728 + 1/18*(-9*zeta^7 - 10*zeta^6 + 60*zeta^5 + 55*zeta^4 - 
110*zeta^3 - 72*zeta^2 + 48*zeta + 13)*q^729 + 1/2*(2*zeta^7 + 6*zeta^6 - 
2*zeta^5 - 33*zeta^4 - 19*zeta^3 + 50*zeta^2 + 12*zeta - 18)*q^730 + 
1/9*(-8*zeta^7 - 24*zeta^6 + 8*zeta^5 + 132*zeta^4 + 76*zeta^3 - 200*zeta^2 - 
48*zeta + 72)*q^732 + 1/18*(-153*zeta^7 - 170*zeta^6 + 1020*zeta^5 + 935*zeta^4 
- 1870*zeta^3 - 1224*zeta^2 + 816*zeta + 221)*q^733 + 1/3*(13*zeta^7 + 5*zeta^6 
- 81*zeta^5 - 19*zeta^4 + 140*zeta^3 + 2*zeta^2 - 58*zeta + 19)*q^734 + 
1/6*(-4*zeta^7 - 12*zeta^6 + 21*zeta^5 + 66*zeta^4 - 30*zeta^3 - 83*zeta^2 + 
10*zeta + 2)*q^736 + 1/3*(4*zeta^7 + 12*zeta^6 - 4*zeta^5 - 32*zeta^4 - 
72*zeta^3 - 36*zeta^2 + 160*zeta + 32)*q^737 + (-zeta^7 - 3*zeta^6 + zeta^5 + 
25*zeta^4 + 18*zeta^3 - 59*zeta^2 - 23*zeta + 26)*q^738 + 1/18*(104*zeta^7 + 
91*zeta^6 - 767*zeta^5 - 611*zeta^4 + 1664*zeta^3 + 1053*zeta^2 - 923*zeta - 
273)*q^739 + 1/18*(-7*zeta^7 - 21*zeta^6 + 7*zeta^5 + 175*zeta^4 + 126*zeta^3 - 
413*zeta^2 - 161*zeta + 182)*q^741 + (2*zeta^7 + 6*zeta^6 - 2*zeta^5 - 16*zeta^4
- 36*zeta^3 - 18*zeta^2 + 80*zeta + 16)*q^742 + 1/6*(-20*zeta^7 - 60*zeta^6 + 
105*zeta^5 + 330*zeta^4 - 150*zeta^3 - 415*zeta^2 + 50*zeta + 10)*q^743 + 
1/6*(14*zeta^7 + 42*zeta^6 - 133*zeta^5 - 231*zeta^4 + 343*zeta^3 + 350*zeta^2 -
154*zeta - 126)*q^744 + 1/3*(-13*zeta^7 - 5*zeta^6 + 81*zeta^5 + 19*zeta^4 - 
140*zeta^3 - 2*zeta^2 + 58*zeta - 19)*q^745 + 1/3*(18*zeta^7 + 20*zeta^6 - 
120*zeta^5 - 110*zeta^4 + 220*zeta^3 + 144*zeta^2 - 96*zeta - 26)*q^746 + 
1/3*(8*zeta^7 + 24*zeta^6 - 8*zeta^5 - 132*zeta^4 - 76*zeta^3 + 200*zeta^2 + 
48*zeta - 72)*q^747 + 1/3*(-2*zeta^7 - 6*zeta^6 + 2*zeta^5 + 33*zeta^4 + 
19*zeta^3 - 50*zeta^2 - 12*zeta + 18)*q^749 + 1/2*(-9*zeta^7 - 10*zeta^6 + 
60*zeta^5 + 55*zeta^4 - 110*zeta^3 - 72*zeta^2 + 48*zeta + 13)*q^750 + 
1/18*(-143*zeta^7 - 55*zeta^6 + 891*zeta^5 + 209*zeta^4 - 1540*zeta^3 - 
22*zeta^2 + 638*zeta - 209)*q^751 + 1/3*(-2*zeta^7 - 6*zeta^6 + 19*zeta^5 + 
33*zeta^4 - 49*zeta^3 - 50*zeta^2 + 22*zeta + 18)*q^752 + 1/2*(3*zeta^7 + 
9*zeta^6 - 3*zeta^5 - 24*zeta^4 - 54*zeta^3 - 27*zeta^2 + 120*zeta + 24)*q^754 +
1/18*(8*zeta^7 + 7*zeta^6 - 59*zeta^5 - 47*zeta^4 + 128*zeta^3 + 81*zeta^2 - 
71*zeta - 21)*q^756 + 1/18*(248*zeta^7 + 217*zeta^6 - 1829*zeta^5 - 1457*zeta^4 
+ 3968*zeta^3 + 2511*zeta^2 - 2201*zeta - 651)*q^757 + 1/3*(zeta^7 + 3*zeta^6 - 
zeta^5 - 25*zeta^4 - 18*zeta^3 + 59*zeta^2 + 23*zeta - 26)*q^758 + 1/2*(-zeta^7 
- 3*zeta^6 + zeta^5 + 8*zeta^4 + 18*zeta^3 + 9*zeta^2 - 40*zeta - 8)*q^759 + 
1/2*(12*zeta^7 + 36*zeta^6 - 63*zeta^5 - 198*zeta^4 + 90*zeta^3 + 249*zeta^2 - 
30*zeta - 6)*q^760 + 1/6*(14*zeta^7 + 42*zeta^6 - 133*zeta^5 - 231*zeta^4 + 
343*zeta^3 + 350*zeta^2 - 154*zeta - 126)*q^761 + 1/6*(13*zeta^7 + 5*zeta^6 - 
81*zeta^5 - 19*zeta^4 + 140*zeta^3 + 2*zeta^2 - 58*zeta + 19)*q^762 + 
1/9*(9*zeta^7 + 10*zeta^6 - 60*zeta^5 - 55*zeta^4 + 110*zeta^3 + 72*zeta^2 - 
48*zeta - 13)*q^763 + 1/3*(4*zeta^7 + 12*zeta^6 - 4*zeta^5 - 66*zeta^4 - 
38*zeta^3 + 100*zeta^2 + 24*zeta - 36)*q^764 + 1/2*(2*zeta^7 + 6*zeta^6 - 
2*zeta^5 - 33*zeta^4 - 19*zeta^3 + 50*zeta^2 + 12*zeta - 18)*q^766 + 
1/3*(9*zeta^7 + 10*zeta^6 - 60*zeta^5 - 55*zeta^4 + 110*zeta^3 + 72*zeta^2 - 
48*zeta - 13)*q^767 + 1/9*(13*zeta^7 + 5*zeta^6 - 81*zeta^5 - 19*zeta^4 + 
140*zeta^3 + 2*zeta^2 - 58*zeta + 19)*q^768 + 1/18*(22*zeta^7 + 66*zeta^6 - 
209*zeta^5 - 363*zeta^4 + 539*zeta^3 + 550*zeta^2 - 242*zeta - 198)*q^769 + 
1/2*(4*zeta^7 + 12*zeta^6 - 21*zeta^5 - 66*zeta^4 + 30*zeta^3 + 83*zeta^2 - 
10*zeta - 2)*q^770 + 1/6*(-7*zeta^7 - 21*zeta^6 + 7*zeta^5 + 56*zeta^4 + 
126*zeta^3 + 63*zeta^2 - 280*zeta - 56)*q^771 + 1/18*(-29*zeta^7 - 87*zeta^6 + 
29*zeta^5 + 725*zeta^4 + 522*zeta^3 - 1711*zeta^2 - 667*zeta + 754)*q^772 + 
1/6*(40*zeta^7 + 35*zeta^6 - 295*zeta^5 - 235*zeta^4 + 640*zeta^3 + 405*zeta^2 -
355*zeta - 105)*q^773 + 1/6*(56*zeta^7 + 49*zeta^6 - 413*zeta^5 - 329*zeta^4 + 
896*zeta^3 + 567*zeta^2 - 497*zeta - 147)*q^774 + 1/9*(-4*zeta^7 - 12*zeta^6 + 
4*zeta^5 + 100*zeta^4 + 72*zeta^3 - 236*zeta^2 - 92*zeta + 104)*q^775 + 
1/3*(2*zeta^7 + 6*zeta^6 - 2*zeta^5 - 16*zeta^4 - 36*zeta^3 - 18*zeta^2 + 
80*zeta + 16)*q^776 + 1/9*(64*zeta^7 + 192*zeta^6 - 336*zeta^5 - 1056*zeta^4 + 
480*zeta^3 + 1328*zeta^2 - 160*zeta - 32)*q^777 + (-4*zeta^7 - 12*zeta^6 + 
38*zeta^5 + 66*zeta^4 - 98*zeta^3 - 100*zeta^2 + 44*zeta + 36)*q^778 + 
1/3*(13*zeta^7 + 5*zeta^6 - 81*zeta^5 - 19*zeta^4 + 140*zeta^3 + 2*zeta^2 - 
58*zeta + 19)*q^779 + 1/3*(-18*zeta^7 - 20*zeta^6 + 120*zeta^5 + 110*zeta^4 - 
220*zeta^3 - 144*zeta^2 + 96*zeta + 26)*q^780 + (-2*zeta^7 - 6*zeta^6 + 2*zeta^5
+ 33*zeta^4 + 19*zeta^3 - 50*zeta^2 - 12*zeta + 18)*q^781 + 1/6*(-14*zeta^7 - 
42*zeta^6 + 14*zeta^5 + 231*zeta^4 + 133*zeta^3 - 350*zeta^2 - 84*zeta + 
126)*q^783 + 1/2*(9*zeta^7 + 10*zeta^6 - 60*zeta^5 - 55*zeta^4 + 110*zeta^3 + 
72*zeta^2 - 48*zeta - 13)*q^784 + 1/6*(13*zeta^7 + 5*zeta^6 - 81*zeta^5 - 
19*zeta^4 + 140*zeta^3 + 2*zeta^2 - 58*zeta + 19)*q^785 + 1/9*(20*zeta^7 + 
60*zeta^6 - 105*zeta^5 - 330*zeta^4 + 150*zeta^3 + 415*zeta^2 - 50*zeta - 
10)*q^787 + 1/2*(-zeta^7 - 3*zeta^6 + zeta^5 + 8*zeta^4 + 18*zeta^3 + 9*zeta^2 -
40*zeta - 8)*q^788 + 1/3*(zeta^7 + 3*zeta^6 - zeta^5 - 25*zeta^4 - 18*zeta^3 + 
59*zeta^2 + 23*zeta - 26)*q^789 + (8*zeta^7 + 7*zeta^6 - 59*zeta^5 - 47*zeta^4 +
128*zeta^3 + 81*zeta^2 - 71*zeta - 21)*q^790 + 1/6*(-40*zeta^7 - 35*zeta^6 + 
295*zeta^5 + 235*zeta^4 - 640*zeta^3 - 405*zeta^2 + 355*zeta + 105)*q^791 + 
1/2*(zeta^7 + 3*zeta^6 - zeta^5 - 25*zeta^4 - 18*zeta^3 + 59*zeta^2 + 23*zeta - 
26)*q^792 + 1/18*(13*zeta^7 + 39*zeta^6 - 13*zeta^5 - 104*zeta^4 - 234*zeta^3 - 
117*zeta^2 + 520*zeta + 104)*q^793 + 1/3*(-4*zeta^7 - 12*zeta^6 + 21*zeta^5 + 
66*zeta^4 - 30*zeta^3 - 83*zeta^2 + 10*zeta + 2)*q^794 + 1/2*(-6*zeta^7 - 
18*zeta^6 + 57*zeta^5 + 99*zeta^4 - 147*zeta^3 - 150*zeta^2 + 66*zeta + 
54)*q^795 + 1/18*(-65*zeta^7 - 25*zeta^6 + 405*zeta^5 + 95*zeta^4 - 700*zeta^3 -
10*zeta^2 + 290*zeta - 95)*q^796 + 1/2*(27*zeta^7 + 30*zeta^6 - 180*zeta^5 - 
165*zeta^4 + 330*zeta^3 + 216*zeta^2 - 144*zeta - 39)*q^797 + 1/6*(22*zeta^7 + 
66*zeta^6 - 22*zeta^5 - 363*zeta^4 - 209*zeta^3 + 550*zeta^2 + 132*zeta - 
198)*q^798 + 1/6*(2*zeta^7 + 6*zeta^6 - 2*zeta^5 - 33*zeta^4 - 19*zeta^3 + 
50*zeta^2 + 12*zeta - 18)*q^800 + (9*zeta^7 + 10*zeta^6 - 60*zeta^5 - 55*zeta^4 
+ 110*zeta^3 + 72*zeta^2 - 48*zeta - 13)*q^801 + 1/6*(13*zeta^7 + 5*zeta^6 - 
81*zeta^5 - 19*zeta^4 + 140*zeta^3 + 2*zeta^2 - 58*zeta + 19)*q^802 + 
1/6*(10*zeta^7 + 30*zeta^6 - 95*zeta^5 - 165*zeta^4 + 245*zeta^3 + 250*zeta^2 - 
110*zeta - 90)*q^803 + 1/9*(44*zeta^7 + 132*zeta^6 - 231*zeta^5 - 726*zeta^4 + 
330*zeta^3 + 913*zeta^2 - 110*zeta - 22)*q^804 + 1/6*(zeta^7 + 3*zeta^6 - zeta^5
- 8*zeta^4 - 18*zeta^3 - 9*zeta^2 + 40*zeta + 8)*q^805 + 1/2*(-zeta^7 - 3*zeta^6
+ zeta^5 + 25*zeta^4 + 18*zeta^3 - 59*zeta^2 - 23*zeta + 26)*q^806 + (16*zeta^7 
+ 14*zeta^6 - 118*zeta^5 - 94*zeta^4 + 256*zeta^3 + 162*zeta^2 - 142*zeta - 
42)*q^807 + 1/2*(-24*zeta^7 - 21*zeta^6 + 177*zeta^5 + 141*zeta^4 - 384*zeta^3 -
243*zeta^2 + 213*zeta + 63)*q^808 + 1/3*(-zeta^7 - 3*zeta^6 + zeta^5 + 25*zeta^4
+ 18*zeta^3 - 59*zeta^2 - 23*zeta + 26)*q^809 + (zeta^7 + 3*zeta^6 - zeta^5 - 
8*zeta^4 - 18*zeta^3 - 9*zeta^2 + 40*zeta + 8)*q^810 + 1/9*(8*zeta^7 + 24*zeta^6
- 42*zeta^5 - 132*zeta^4 + 60*zeta^3 + 166*zeta^2 - 20*zeta - 4)*q^811 + 
1/6*(-2*zeta^7 - 6*zeta^6 + 19*zeta^5 + 33*zeta^4 - 49*zeta^3 - 50*zeta^2 + 
22*zeta + 18)*q^812 + 1/18*(-689*zeta^7 - 265*zeta^6 + 4293*zeta^5 + 1007*zeta^4
- 7420*zeta^3 - 106*zeta^2 + 3074*zeta - 1007)*q^813 + (9*zeta^7 + 10*zeta^6 - 
60*zeta^5 - 55*zeta^4 + 110*zeta^3 + 72*zeta^2 - 48*zeta - 13)*q^814 + 
1/3*(2*zeta^7 + 6*zeta^6 - 2*zeta^5 - 33*zeta^4 - 19*zeta^3 + 50*zeta^2 + 
12*zeta - 18)*q^815 + 1/18*(-50*zeta^7 - 150*zeta^6 + 50*zeta^5 + 825*zeta^4 + 
475*zeta^3 - 1250*zeta^2 - 300*zeta + 450)*q^817 + (9*zeta^7 + 10*zeta^6 - 
60*zeta^5 - 55*zeta^4 + 110*zeta^3 + 72*zeta^2 - 48*zeta - 13)*q^818 + 
1/18*(-13*zeta^7 - 5*zeta^6 + 81*zeta^5 + 19*zeta^4 - 140*zeta^3 - 2*zeta^2 + 
58*zeta - 19)*q^819 + (2*zeta^7 + 6*zeta^6 - 19*zeta^5 - 33*zeta^4 + 49*zeta^3 +
50*zeta^2 - 22*zeta - 18)*q^820 + 1/6*(-4*zeta^7 - 12*zeta^6 + 21*zeta^5 + 
66*zeta^4 - 30*zeta^3 - 83*zeta^2 + 10*zeta + 2)*q^821 + (2*zeta^7 + 6*zeta^6 - 
2*zeta^5 - 16*zeta^4 - 36*zeta^3 - 18*zeta^2 + 80*zeta + 16)*q^822 + 
1/18*(7*zeta^7 + 21*zeta^6 - 7*zeta^5 - 175*zeta^4 - 126*zeta^3 + 413*zeta^2 + 
161*zeta - 182)*q^823 + 1/3*(8*zeta^7 + 7*zeta^6 - 59*zeta^5 - 47*zeta^4 + 
128*zeta^3 + 81*zeta^2 - 71*zeta - 21)*q^824 + 1/6*(40*zeta^7 + 35*zeta^6 - 
295*zeta^5 - 235*zeta^4 + 640*zeta^3 + 405*zeta^2 - 355*zeta - 105)*q^825 + 
(-zeta^7 - 3*zeta^6 + zeta^5 + 25*zeta^4 + 18*zeta^3 - 59*zeta^2 - 23*zeta + 
26)*q^826 + 1/2*(-3*zeta^7 - 9*zeta^6 + 3*zeta^5 + 24*zeta^4 + 54*zeta^3 + 
27*zeta^2 - 120*zeta - 24)*q^827 + 1/6*(4*zeta^7 + 12*zeta^6 - 21*zeta^5 - 
66*zeta^4 + 30*zeta^3 + 83*zeta^2 - 10*zeta - 2)*q^828 + 1/9*(-10*zeta^7 - 
30*zeta^6 + 95*zeta^5 + 165*zeta^4 - 245*zeta^3 - 250*zeta^2 + 110*zeta + 
90)*q^829 + 1/3*(-26*zeta^7 - 10*zeta^6 + 162*zeta^5 + 38*zeta^4 - 280*zeta^3 - 
4*zeta^2 + 116*zeta - 38)*q^830 + 1/9*(18*zeta^7 + 20*zeta^6 - 120*zeta^5 - 
110*zeta^4 + 220*zeta^3 + 144*zeta^2 - 96*zeta - 26)*q^831 + 1/18*(-34*zeta^7 - 
102*zeta^6 + 34*zeta^5 + 561*zeta^4 + 323*zeta^3 - 850*zeta^2 - 204*zeta + 
306)*q^832 + 1/3*(-8*zeta^7 - 24*zeta^6 + 8*zeta^5 + 132*zeta^4 + 76*zeta^3 - 
200*zeta^2 - 48*zeta + 72)*q^834 + 1/6*(9*zeta^7 + 10*zeta^6 - 60*zeta^5 - 
55*zeta^4 + 110*zeta^3 + 72*zeta^2 - 48*zeta - 13)*q^835 + 1/3*(-52*zeta^7 - 
20*zeta^6 + 324*zeta^5 + 76*zeta^4 - 560*zeta^3 - 8*zeta^2 + 232*zeta - 
76)*q^836 + 1/18*(22*zeta^7 + 66*zeta^6 - 209*zeta^5 - 363*zeta^4 + 539*zeta^3 +
550*zeta^2 - 242*zeta - 198)*q^837 + 1/3*(-8*zeta^7 - 24*zeta^6 + 42*zeta^5 + 
132*zeta^4 - 60*zeta^3 - 166*zeta^2 + 20*zeta + 4)*q^838 + (zeta^7 + 3*zeta^6 - 
zeta^5 - 8*zeta^4 - 18*zeta^3 - 9*zeta^2 + 40*zeta + 8)*q^839 + (-zeta^7 - 
3*zeta^6 + zeta^5 + 25*zeta^4 + 18*zeta^3 - 59*zeta^2 - 23*zeta + 26)*q^840 + 
1/18*(-56*zeta^7 - 49*zeta^6 + 413*zeta^5 + 329*zeta^4 - 896*zeta^3 - 567*zeta^2
+ 497*zeta + 147)*q^841 + 1/6*(-104*zeta^7 - 91*zeta^6 + 767*zeta^5 + 611*zeta^4
- 1664*zeta^3 - 1053*zeta^2 + 923*zeta + 273)*q^842 + 1/6*(17*zeta^7 + 51*zeta^6
- 17*zeta^5 - 425*zeta^4 - 306*zeta^3 + 1003*zeta^2 + 391*zeta - 442)*q^843 + 
1/18*(-7*zeta^7 - 21*zeta^6 + 7*zeta^5 + 56*zeta^4 + 126*zeta^3 + 63*zeta^2 - 
280*zeta - 56)*q^844 + 1/2*(-4*zeta^7 - 12*zeta^6 + 21*zeta^5 + 66*zeta^4 - 
30*zeta^3 - 83*zeta^2 + 10*zeta + 2)*q^845 + 1/2*(2*zeta^7 + 6*zeta^6 - 
19*zeta^5 - 33*zeta^4 + 49*zeta^3 + 50*zeta^2 - 22*zeta - 18)*q^846 + 
1/9*(26*zeta^7 + 10*zeta^6 - 162*zeta^5 - 38*zeta^4 + 280*zeta^3 + 4*zeta^2 - 
116*zeta + 38)*q^847 + 1/2*(27*zeta^7 + 30*zeta^6 - 180*zeta^5 - 165*zeta^4 + 
330*zeta^3 + 216*zeta^2 - 144*zeta - 39)*q^848 + 1/9*(-20*zeta^7 - 60*zeta^6 + 
20*zeta^5 + 330*zeta^4 + 190*zeta^3 - 500*zeta^2 - 120*zeta + 180)*q^849 + 
1/3*(-2*zeta^7 - 6*zeta^6 + 2*zeta^5 + 33*zeta^4 + 19*zeta^3 - 50*zeta^2 - 
12*zeta + 18)*q^851 + 1/18*(-65*zeta^7 - 25*zeta^6 + 405*zeta^5 + 95*zeta^4 - 
700*zeta^3 - 10*zeta^2 + 290*zeta - 95)*q^853 + 1/6*(22*zeta^7 + 66*zeta^6 - 
209*zeta^5 - 363*zeta^4 + 539*zeta^3 + 550*zeta^2 - 242*zeta - 198)*q^854 + 
1/6*(-4*zeta^7 - 12*zeta^6 + 21*zeta^5 + 66*zeta^4 - 30*zeta^3 - 83*zeta^2 + 
10*zeta + 2)*q^855 + 1/2*(zeta^7 + 3*zeta^6 - zeta^5 - 8*zeta^4 - 18*zeta^3 - 
9*zeta^2 + 40*zeta + 8)*q^856 + 1/6*(13*zeta^7 + 39*zeta^6 - 13*zeta^5 - 
325*zeta^4 - 234*zeta^3 + 767*zeta^2 + 299*zeta - 338)*q^857 + 1/2*(8*zeta^7 + 
7*zeta^6 - 59*zeta^5 - 47*zeta^4 + 128*zeta^3 + 81*zeta^2 - 71*zeta - 21)*q^858 
+ 1/9*(-176*zeta^7 - 154*zeta^6 + 1298*zeta^5 + 1034*zeta^4 - 2816*zeta^3 - 
1782*zeta^2 + 1562*zeta + 462)*q^859 + 1/2*(zeta^7 + 3*zeta^6 - zeta^5 - 
25*zeta^4 - 18*zeta^3 + 59*zeta^2 + 23*zeta - 26)*q^860 + 1/3*(5*zeta^7 + 
15*zeta^6 - 5*zeta^5 - 40*zeta^4 - 90*zeta^3 - 45*zeta^2 + 200*zeta + 40)*q^861 
+ 1/2*(-4*zeta^7 - 12*zeta^6 + 21*zeta^5 + 66*zeta^4 - 30*zeta^3 - 83*zeta^2 + 
10*zeta + 2)*q^862 + 1/3*(-8*zeta^7 - 24*zeta^6 + 76*zeta^5 + 132*zeta^4 - 
196*zeta^3 - 200*zeta^2 + 88*zeta + 72)*q^863 + 1/2*(-13*zeta^7 - 5*zeta^6 + 
81*zeta^5 + 19*zeta^4 - 140*zeta^3 - 2*zeta^2 + 58*zeta - 19)*q^864 + 
1/3*(9*zeta^7 + 10*zeta^6 - 60*zeta^5 - 55*zeta^4 + 110*zeta^3 + 72*zeta^2 - 
48*zeta - 13)*q^865 + 1/18*(-2*zeta^7 - 6*zeta^6 + 2*zeta^5 + 33*zeta^4 + 
19*zeta^3 - 50*zeta^2 - 12*zeta + 18)*q^868 + 1/3*(-9*zeta^7 - 10*zeta^6 + 
60*zeta^5 + 55*zeta^4 - 110*zeta^3 - 72*zeta^2 + 48*zeta + 13)*q^869 + 
1/2*(-39*zeta^7 - 15*zeta^6 + 243*zeta^5 + 57*zeta^4 - 420*zeta^3 - 6*zeta^2 + 
174*zeta - 57)*q^870 + 1/9*(-14*zeta^7 - 42*zeta^6 + 133*zeta^5 + 231*zeta^4 - 
343*zeta^3 - 350*zeta^2 + 154*zeta + 126)*q^871 + 1/6*(20*zeta^7 + 60*zeta^6 - 
105*zeta^5 - 330*zeta^4 + 150*zeta^3 + 415*zeta^2 - 50*zeta - 10)*q^872 + 
1/18*(5*zeta^7 + 15*zeta^6 - 5*zeta^5 - 40*zeta^4 - 90*zeta^3 - 45*zeta^2 + 
200*zeta + 40)*q^873 + 1/3*(zeta^7 + 3*zeta^6 - zeta^5 - 25*zeta^4 - 18*zeta^3 +
59*zeta^2 + 23*zeta - 26)*q^874 + 1/3*(-32*zeta^7 - 28*zeta^6 + 236*zeta^5 + 
188*zeta^4 - 512*zeta^3 - 324*zeta^2 + 284*zeta + 84)*q^875 + 1/9*(16*zeta^7 + 
14*zeta^6 - 118*zeta^5 - 94*zeta^4 + 256*zeta^3 + 162*zeta^2 - 142*zeta - 
42)*q^876 + 1/9*(14*zeta^7 + 42*zeta^6 - 14*zeta^5 - 350*zeta^4 - 252*zeta^3 + 
826*zeta^2 + 322*zeta - 364)*q^877 + 1/3*(5*zeta^7 + 15*zeta^6 - 5*zeta^5 - 
40*zeta^4 - 90*zeta^3 - 45*zeta^2 + 200*zeta + 40)*q^878 + 1/3*(-4*zeta^7 - 
12*zeta^6 + 21*zeta^5 + 66*zeta^4 - 30*zeta^3 - 83*zeta^2 + 10*zeta + 2)*q^879 +
1/2*(2*zeta^7 + 6*zeta^6 - 19*zeta^5 - 33*zeta^4 + 49*zeta^3 + 50*zeta^2 - 
22*zeta - 18)*q^880 + 1/6*(13*zeta^7 + 5*zeta^6 - 81*zeta^5 - 19*zeta^4 + 
140*zeta^3 + 2*zeta^2 - 58*zeta + 19)*q^881 + 1/18*(26*zeta^7 + 78*zeta^6 - 
26*zeta^5 - 429*zeta^4 - 247*zeta^3 + 650*zeta^2 + 156*zeta - 234)*q^883 + 
(2*zeta^7 + 6*zeta^6 - 2*zeta^5 - 33*zeta^4 - 19*zeta^3 + 50*zeta^2 + 12*zeta - 
18)*q^885 + 1/3*(-63*zeta^7 - 70*zeta^6 + 420*zeta^5 + 385*zeta^4 - 770*zeta^3 -
504*zeta^2 + 336*zeta + 91)*q^886 + 1/3*(-52*zeta^7 - 20*zeta^6 + 324*zeta^5 + 
76*zeta^4 - 560*zeta^3 - 8*zeta^2 + 232*zeta - 76)*q^887 + 1/3*(10*zeta^7 + 
30*zeta^6 - 95*zeta^5 - 165*zeta^4 + 245*zeta^3 + 250*zeta^2 - 110*zeta - 
90)*q^888 + 1/9*(-32*zeta^7 - 96*zeta^6 + 168*zeta^5 + 528*zeta^4 - 240*zeta^3 -
664*zeta^2 + 80*zeta + 16)*q^889 + 1/3*(zeta^7 + 3*zeta^6 - zeta^5 - 8*zeta^4 - 
18*zeta^3 - 9*zeta^2 + 40*zeta + 8)*q^890 + 1/3*(4*zeta^7 + 12*zeta^6 - 4*zeta^5
- 100*zeta^4 - 72*zeta^3 + 236*zeta^2 + 92*zeta - 104)*q^891 + 1/18*(248*zeta^7 
+ 217*zeta^6 - 1829*zeta^5 - 1457*zeta^4 + 3968*zeta^3 + 2511*zeta^2 - 2201*zeta
- 651)*q^892 + 1/6*(8*zeta^7 + 7*zeta^6 - 59*zeta^5 - 47*zeta^4 + 128*zeta^3 + 
81*zeta^2 - 71*zeta - 21)*q^893 + (zeta^7 + 3*zeta^6 - zeta^5 - 25*zeta^4 - 
18*zeta^3 + 59*zeta^2 + 23*zeta - 26)*q^894 + 1/2*(-3*zeta^7 - 9*zeta^6 + 
3*zeta^5 + 24*zeta^4 + 54*zeta^3 + 27*zeta^2 - 120*zeta - 24)*q^895 + 
1/6*(-20*zeta^7 - 60*zeta^6 + 105*zeta^5 + 330*zeta^4 - 150*zeta^3 - 415*zeta^2 
+ 50*zeta + 10)*q^896 + 1/6*(2*zeta^7 + 6*zeta^6 - 19*zeta^5 - 33*zeta^4 + 
49*zeta^3 + 50*zeta^2 - 22*zeta - 18)*q^897 + 1/6*(-65*zeta^7 - 25*zeta^6 + 
405*zeta^5 + 95*zeta^4 - 700*zeta^3 - 10*zeta^2 + 290*zeta - 95)*q^898 + 
1/6*(-45*zeta^7 - 50*zeta^6 + 300*zeta^5 + 275*zeta^4 - 550*zeta^3 - 360*zeta^2 
+ 240*zeta + 65)*q^899 + 1/18*(-2*zeta^7 - 6*zeta^6 + 2*zeta^5 + 33*zeta^4 + 
19*zeta^3 - 50*zeta^2 - 12*zeta + 18)*q^900 + 1/18*(423*zeta^7 + 470*zeta^6 - 
2820*zeta^5 - 2585*zeta^4 + 5170*zeta^3 + 3384*zeta^2 - 2256*zeta - 611)*q^903 +
1/3*(-4*zeta^7 - 12*zeta^6 + 38*zeta^5 + 66*zeta^4 - 98*zeta^3 - 100*zeta^2 + 
44*zeta + 36)*q^905 + 1/6*(-20*zeta^7 - 60*zeta^6 + 105*zeta^5 + 330*zeta^4 - 
150*zeta^3 - 415*zeta^2 + 50*zeta + 10)*q^906 + 1/18*(-13*zeta^7 - 39*zeta^6 + 
13*zeta^5 + 104*zeta^4 + 234*zeta^3 + 117*zeta^2 - 520*zeta - 104)*q^907 + 
1/6*(-7*zeta^7 - 21*zeta^6 + 7*zeta^5 + 175*zeta^4 + 126*zeta^3 - 413*zeta^2 - 
161*zeta + 182)*q^908 + 1/6*(40*zeta^7 + 35*zeta^6 - 295*zeta^5 - 235*zeta^4 + 
640*zeta^3 + 405*zeta^2 - 355*zeta - 105)*q^909 + 1/6*(8*zeta^7 + 7*zeta^6 - 
59*zeta^5 - 47*zeta^4 + 128*zeta^3 + 81*zeta^2 - 71*zeta - 21)*q^910 + (-zeta^7 
- 3*zeta^6 + zeta^5 + 25*zeta^4 + 18*zeta^3 - 59*zeta^2 - 23*zeta + 26)*q^911 + 
1/18*(23*zeta^7 + 69*zeta^6 - 23*zeta^5 - 184*zeta^4 - 414*zeta^3 - 207*zeta^2 +
920*zeta + 184)*q^912 + 1/2*(12*zeta^7 + 36*zeta^6 - 63*zeta^5 - 198*zeta^4 + 
90*zeta^3 + 249*zeta^2 - 30*zeta - 6)*q^913 + 1/6*(10*zeta^7 + 30*zeta^6 - 
95*zeta^5 - 165*zeta^4 + 245*zeta^3 + 250*zeta^2 - 110*zeta - 90)*q^914 + 
1/6*(65*zeta^7 + 25*zeta^6 - 405*zeta^5 - 95*zeta^4 + 700*zeta^3 + 10*zeta^2 - 
290*zeta + 95)*q^915 + 1/9*(72*zeta^7 + 80*zeta^6 - 480*zeta^5 - 440*zeta^4 + 
880*zeta^3 + 576*zeta^2 - 384*zeta - 104)*q^916 + 1/3*(-2*zeta^7 - 6*zeta^6 + 
2*zeta^5 + 33*zeta^4 + 19*zeta^3 - 50*zeta^2 - 12*zeta + 18)*q^917 + 
1/18*(-46*zeta^7 - 138*zeta^6 + 46*zeta^5 + 759*zeta^4 + 437*zeta^3 - 
1150*zeta^2 - 276*zeta + 414)*q^919 + 1/2*(9*zeta^7 + 10*zeta^6 - 60*zeta^5 - 
55*zeta^4 + 110*zeta^3 + 72*zeta^2 - 48*zeta - 13)*q^920 + 1/18*(325*zeta^7 + 
125*zeta^6 - 2025*zeta^5 - 475*zeta^4 + 3500*zeta^3 + 50*zeta^2 - 1450*zeta + 
475)*q^921 + 1/3*(8*zeta^7 + 24*zeta^6 - 76*zeta^5 - 132*zeta^4 + 196*zeta^3 + 
200*zeta^2 - 88*zeta - 72)*q^922 + 1/3*(-4*zeta^7 - 12*zeta^6 + 21*zeta^5 + 
66*zeta^4 - 30*zeta^3 - 83*zeta^2 + 10*zeta + 2)*q^923 + 1/6*(-zeta^7 - 3*zeta^6
+ zeta^5 + 8*zeta^4 + 18*zeta^3 + 9*zeta^2 - 40*zeta - 8)*q^924 + 1/9*(-7*zeta^7
- 21*zeta^6 + 7*zeta^5 + 175*zeta^4 + 126*zeta^3 - 413*zeta^2 - 161*zeta + 
182)*q^925 + (8*zeta^7 + 7*zeta^6 - 59*zeta^5 - 47*zeta^4 + 128*zeta^3 + 
81*zeta^2 - 71*zeta - 21)*q^926 + 1/9*(-8*zeta^7 - 7*zeta^6 + 59*zeta^5 + 
47*zeta^4 - 128*zeta^3 - 81*zeta^2 + 71*zeta + 21)*q^927 + (-zeta^7 - 3*zeta^6 +
zeta^5 + 25*zeta^4 + 18*zeta^3 - 59*zeta^2 - 23*zeta + 26)*q^928 + 
1/6*(13*zeta^7 + 39*zeta^6 - 13*zeta^5 - 104*zeta^4 - 234*zeta^3 - 117*zeta^2 + 
520*zeta + 104)*q^929 + (-4*zeta^7 - 12*zeta^6 + 21*zeta^5 + 66*zeta^4 - 
30*zeta^3 - 83*zeta^2 + 10*zeta + 2)*q^930 + 1/2*(-6*zeta^7 - 18*zeta^6 + 
57*zeta^5 + 99*zeta^4 - 147*zeta^3 - 150*zeta^2 + 66*zeta + 54)*q^931 + 
1/3*(-63*zeta^7 - 70*zeta^6 + 420*zeta^5 + 385*zeta^4 - 770*zeta^3 - 504*zeta^2 
+ 336*zeta + 91)*q^933 + 1/2*(2*zeta^7 + 6*zeta^6 - 2*zeta^5 - 33*zeta^4 - 
19*zeta^3 + 50*zeta^2 + 12*zeta - 18)*q^934 + 1/3*(2*zeta^7 + 6*zeta^6 - 
2*zeta^5 - 33*zeta^4 - 19*zeta^3 + 50*zeta^2 + 12*zeta - 18)*q^936 + 
1/9*(18*zeta^7 + 20*zeta^6 - 120*zeta^5 - 110*zeta^4 + 220*zeta^3 + 144*zeta^2 -
96*zeta - 26)*q^937 + (-13*zeta^7 - 5*zeta^6 + 81*zeta^5 + 19*zeta^4 - 
140*zeta^3 - 2*zeta^2 + 58*zeta - 19)*q^938 + 1/9*(-22*zeta^7 - 66*zeta^6 + 
209*zeta^5 + 363*zeta^4 - 539*zeta^3 - 550*zeta^2 + 242*zeta + 198)*q^939 + 
1/2*(-4*zeta^7 - 12*zeta^6 + 21*zeta^5 + 66*zeta^4 - 30*zeta^3 - 83*zeta^2 + 
10*zeta + 2)*q^940 + 1/3*(7*zeta^7 + 21*zeta^6 - 7*zeta^5 - 56*zeta^4 - 
126*zeta^3 - 63*zeta^2 + 280*zeta + 56)*q^941 + 1/3*(-4*zeta^7 - 12*zeta^6 + 
4*zeta^5 + 100*zeta^4 + 72*zeta^3 - 236*zeta^2 - 92*zeta + 104)*q^942 + 
1/3*(16*zeta^7 + 14*zeta^6 - 118*zeta^5 - 94*zeta^4 + 256*zeta^3 + 162*zeta^2 - 
142*zeta - 42)*q^944 + 1/6*(-zeta^7 - 3*zeta^6 + zeta^5 + 25*zeta^4 + 18*zeta^3 
- 59*zeta^2 - 23*zeta + 26)*q^945 + (-zeta^7 - 3*zeta^6 + zeta^5 + 8*zeta^4 + 
18*zeta^3 + 9*zeta^2 - 40*zeta - 8)*q^946 + 1/2*(20*zeta^7 + 60*zeta^6 - 
105*zeta^5 - 330*zeta^4 + 150*zeta^3 + 415*zeta^2 - 50*zeta - 10)*q^947 + 
1/9*(-16*zeta^7 - 48*zeta^6 + 152*zeta^5 + 264*zeta^4 - 392*zeta^3 - 400*zeta^2 
+ 176*zeta + 144)*q^948 + 1/18*(-13*zeta^7 - 5*zeta^6 + 81*zeta^5 + 19*zeta^4 - 
140*zeta^3 - 2*zeta^2 + 58*zeta - 19)*q^949 + 1/3*(-18*zeta^7 - 20*zeta^6 + 
120*zeta^5 + 110*zeta^4 - 220*zeta^3 - 144*zeta^2 + 96*zeta + 26)*q^950 + 
1/6*(34*zeta^7 + 102*zeta^6 - 34*zeta^5 - 561*zeta^4 - 323*zeta^3 + 850*zeta^2 +
204*zeta - 306)*q^951 + 1/3*(4*zeta^7 + 12*zeta^6 - 4*zeta^5 - 66*zeta^4 - 
38*zeta^3 + 100*zeta^2 + 24*zeta - 36)*q^953 + 1/2*(-27*zeta^7 - 30*zeta^6 + 
180*zeta^5 + 165*zeta^4 - 330*zeta^3 - 216*zeta^2 + 144*zeta + 39)*q^954 + 
1/6*(13*zeta^7 + 5*zeta^6 - 81*zeta^5 - 19*zeta^4 + 140*zeta^3 + 2*zeta^2 - 
58*zeta + 19)*q^955 + 1/2*(-2*zeta^7 - 6*zeta^6 + 19*zeta^5 + 33*zeta^4 - 
49*zeta^3 - 50*zeta^2 + 22*zeta + 18)*q^956 + (4*zeta^7 + 12*zeta^6 - 21*zeta^5 
- 66*zeta^4 + 30*zeta^3 + 83*zeta^2 - 10*zeta - 2)*q^957 + (-2*zeta^7 - 6*zeta^6
+ 2*zeta^5 + 16*zeta^4 + 36*zeta^3 + 18*zeta^2 - 80*zeta - 16)*q^958 + 
1/3*(-7*zeta^7 - 21*zeta^6 + 7*zeta^5 + 175*zeta^4 + 126*zeta^3 - 413*zeta^2 - 
161*zeta + 182)*q^959 + 1/6*(8*zeta^7 + 7*zeta^6 - 59*zeta^5 - 47*zeta^4 + 
128*zeta^3 + 81*zeta^2 - 71*zeta - 21)*q^960 + (8*zeta^7 + 7*zeta^6 - 59*zeta^5 
- 47*zeta^4 + 128*zeta^3 + 81*zeta^2 - 71*zeta - 21)*q^961 + 1/2*(zeta^7 + 
3*zeta^6 - zeta^5 - 8*zeta^4 - 18*zeta^3 - 9*zeta^2 + 40*zeta + 8)*q^963 + 
1/18*(52*zeta^7 + 156*zeta^6 - 273*zeta^5 - 858*zeta^4 + 390*zeta^3 + 
1079*zeta^2 - 130*zeta - 26)*q^964 + (4*zeta^7 + 12*zeta^6 - 38*zeta^5 - 
66*zeta^4 + 98*zeta^3 + 100*zeta^2 - 44*zeta - 36)*q^965 + 1/2*(13*zeta^7 + 
5*zeta^6 - 81*zeta^5 - 19*zeta^4 + 140*zeta^3 + 2*zeta^2 - 58*zeta + 19)*q^966 +
1/9*(126*zeta^7 + 140*zeta^6 - 840*zeta^5 - 770*zeta^4 + 1540*zeta^3 + 
1008*zeta^2 - 672*zeta - 182)*q^967 + 1/3*(-2*zeta^7 - 6*zeta^6 + 2*zeta^5 + 
33*zeta^4 + 19*zeta^3 - 50*zeta^2 - 12*zeta + 18)*q^968 + 1/6*(-14*zeta^7 - 
42*zeta^6 + 14*zeta^5 + 231*zeta^4 + 133*zeta^3 - 350*zeta^2 - 84*zeta + 
126)*q^970 + (-18*zeta^7 - 20*zeta^6 + 120*zeta^5 + 110*zeta^4 - 220*zeta^3 - 
144*zeta^2 + 96*zeta + 26)*q^971 + 1/18*(143*zeta^7 + 55*zeta^6 - 891*zeta^5 - 
209*zeta^4 + 1540*zeta^3 + 22*zeta^2 - 638*zeta + 209)*q^972 + 1/18*(2*zeta^7 + 
6*zeta^6 - 19*zeta^5 - 33*zeta^4 + 49*zeta^3 + 50*zeta^2 - 22*zeta - 18)*q^973 +
1/2*(4*zeta^7 + 12*zeta^6 - 21*zeta^5 - 66*zeta^4 + 30*zeta^3 + 83*zeta^2 - 
10*zeta - 2)*q^974 + 1/18*(-zeta^7 - 3*zeta^6 + zeta^5 + 8*zeta^4 + 18*zeta^3 + 
9*zeta^2 - 40*zeta - 8)*q^975 + 1/9*(14*zeta^7 + 42*zeta^6 - 14*zeta^5 - 
350*zeta^4 - 252*zeta^3 + 826*zeta^2 + 322*zeta - 364)*q^976 + 1/6*(8*zeta^7 + 
7*zeta^6 - 59*zeta^5 - 47*zeta^4 + 128*zeta^3 + 81*zeta^2 - 71*zeta - 21)*q^977 
+ 1/6*(104*zeta^7 + 91*zeta^6 - 767*zeta^5 - 611*zeta^4 + 1664*zeta^3 + 
1053*zeta^2 - 923*zeta - 273)*q^978 + (zeta^7 + 3*zeta^6 - zeta^5 - 25*zeta^4 - 
18*zeta^3 + 59*zeta^2 + 23*zeta - 26)*q^979 + (-zeta^7 - 3*zeta^6 + zeta^5 + 
8*zeta^4 + 18*zeta^3 + 9*zeta^2 - 40*zeta - 8)*q^980 + 1/18*(28*zeta^7 + 
84*zeta^6 - 147*zeta^5 - 462*zeta^4 + 210*zeta^3 + 581*zeta^2 - 70*zeta - 
14)*q^981 + 1/6*(14*zeta^7 + 42*zeta^6 - 133*zeta^5 - 231*zeta^4 + 343*zeta^3 + 
350*zeta^2 - 154*zeta - 126)*q^982 + 1/3*(13*zeta^7 + 5*zeta^6 - 81*zeta^5 - 
19*zeta^4 + 140*zeta^3 + 2*zeta^2 - 58*zeta + 19)*q^983 + (9*zeta^7 + 10*zeta^6 
- 60*zeta^5 - 55*zeta^4 + 110*zeta^3 + 72*zeta^2 - 48*zeta - 13)*q^984 + 
1/2*(2*zeta^7 + 6*zeta^6 - 2*zeta^5 - 33*zeta^4 - 19*zeta^3 + 50*zeta^2 + 
12*zeta - 18)*q^985 + 1/6*(-10*zeta^7 - 30*zeta^6 + 10*zeta^5 + 165*zeta^4 + 
95*zeta^3 - 250*zeta^2 - 60*zeta + 90)*q^987 + 1/18*(207*zeta^7 + 230*zeta^6 - 
1380*zeta^5 - 1265*zeta^4 + 2530*zeta^3 + 1656*zeta^2 - 1104*zeta - 299)*q^988 +
1/3*(-13*zeta^7 - 5*zeta^6 + 81*zeta^5 + 19*zeta^4 - 140*zeta^3 - 2*zeta^2 + 
58*zeta - 19)*q^989 + 1/18*(52*zeta^7 + 156*zeta^6 - 273*zeta^5 - 858*zeta^4 + 
390*zeta^3 + 1079*zeta^2 - 130*zeta - 26)*q^991 + 1/6*(zeta^7 + 3*zeta^6 - 
zeta^5 - 8*zeta^4 - 18*zeta^3 - 9*zeta^2 + 40*zeta + 8)*q^992 + 1/18*(-5*zeta^7 
- 15*zeta^6 + 5*zeta^5 + 125*zeta^4 + 90*zeta^3 - 295*zeta^2 - 115*zeta + 
130)*q^993 + 1/3*(-40*zeta^7 - 35*zeta^6 + 295*zeta^5 + 235*zeta^4 - 640*zeta^3 
- 405*zeta^2 + 355*zeta + 105)*q^994 + 1/3*(-8*zeta^7 - 7*zeta^6 + 59*zeta^5 + 
47*zeta^4 - 128*zeta^3 - 81*zeta^2 + 71*zeta + 21)*q^995 + 1/6*(-zeta^7 - 
3*zeta^6 + zeta^5 + 25*zeta^4 + 18*zeta^3 - 59*zeta^2 - 23*zeta + 26)*q^996 + 
1/18*(-25*zeta^7 - 75*zeta^6 + 25*zeta^5 + 200*zeta^4 + 450*zeta^3 + 225*zeta^2 
- 1000*zeta - 200)*q^997 + 1/2*(-4*zeta^7 - 12*zeta^6 + 21*zeta^5 + 66*zeta^4 - 
30*zeta^3 - 83*zeta^2 + 10*zeta + 2)*q^998 + 1/9*(8*zeta^7 + 24*zeta^6 - 
76*zeta^5 - 132*zeta^4 + 196*zeta^3 + 200*zeta^2 - 88*zeta - 72)*q^999 + 
1/2*(13*zeta^7 + 5*zeta^6 - 81*zeta^5 - 19*zeta^4 + 140*zeta^3 + 2*zeta^2 - 
58*zeta + 19)*q^1000 + 1/6*(-9*zeta^7 - 10*zeta^6 + 60*zeta^5 + 55*zeta^4 - 
110*zeta^3 - 72*zeta^2 + 48*zeta + 13)*q^1001 + 1/2*(-14*zeta^7 - 42*zeta^6 + 
14*zeta^5 + 231*zeta^4 + 133*zeta^3 - 350*zeta^2 - 84*zeta + 126)*q^1002 + 
(2*zeta^7 + 6*zeta^6 - 2*zeta^5 - 33*zeta^4 - 19*zeta^3 + 50*zeta^2 + 12*zeta - 
18)*q^1004 + 1/3*(36*zeta^7 + 40*zeta^6 - 240*zeta^5 - 220*zeta^4 + 440*zeta^3 +
288*zeta^2 - 192*zeta - 52)*q^1005 + (26*zeta^7 + 10*zeta^6 - 162*zeta^5 - 
38*zeta^4 + 280*zeta^3 + 4*zeta^2 - 116*zeta + 38)*q^1006 + (-4*zeta^7 - 
12*zeta^6 + 38*zeta^5 + 66*zeta^4 - 98*zeta^3 - 100*zeta^2 + 44*zeta + 
36)*q^1007 + 1/9*(32*zeta^7 + 96*zeta^6 - 168*zeta^5 - 528*zeta^4 + 240*zeta^3 +
664*zeta^2 - 80*zeta - 16)*q^1008 + 1/18*(41*zeta^7 + 123*zeta^6 - 41*zeta^5 - 
328*zeta^4 - 738*zeta^3 - 369*zeta^2 + 1640*zeta + 328)*q^1009 + 1/6*(-7*zeta^7 
- 21*zeta^6 + 7*zeta^5 + 175*zeta^4 + 126*zeta^3 - 413*zeta^2 - 161*zeta + 
182)*q^1010 + 1/9*(16*zeta^7 + 14*zeta^6 - 118*zeta^5 - 94*zeta^4 + 256*zeta^3 +
162*zeta^2 - 142*zeta - 42)*q^1011 + 1/2*(-8*zeta^7 - 7*zeta^6 + 59*zeta^5 + 
47*zeta^4 - 128*zeta^3 - 81*zeta^2 + 71*zeta + 21)*q^1012 + 1/3*(-4*zeta^7 - 
12*zeta^6 + 4*zeta^5 + 100*zeta^4 + 72*zeta^3 - 236*zeta^2 - 92*zeta + 
104)*q^1013 + 1/2*(-3*zeta^7 - 9*zeta^6 + 3*zeta^5 + 24*zeta^4 + 54*zeta^3 + 
27*zeta^2 - 120*zeta - 24)*q^1014 + 1/6*(2*zeta^7 + 6*zeta^6 - 19*zeta^5 - 
33*zeta^4 + 49*zeta^3 + 50*zeta^2 - 22*zeta - 18)*q^1016 + 1/6*(-65*zeta^7 - 
25*zeta^6 + 405*zeta^5 + 95*zeta^4 - 700*zeta^3 - 10*zeta^2 + 290*zeta - 
95)*q^1017 + 1/3*(-9*zeta^7 - 10*zeta^6 + 60*zeta^5 + 55*zeta^4 - 110*zeta^3 - 
72*zeta^2 + 48*zeta + 13)*q^1018 + 1/6*(-2*zeta^7 - 6*zeta^6 + 2*zeta^5 + 
33*zeta^4 + 19*zeta^3 - 50*zeta^2 - 12*zeta + 18)*q^1019 + 1/9*(16*zeta^7 + 
48*zeta^6 - 16*zeta^5 - 264*zeta^4 - 152*zeta^3 + 400*zeta^2 + 96*zeta - 
144)*q^1021 + 1/6*(-63*zeta^7 - 70*zeta^6 + 420*zeta^5 + 385*zeta^4 - 770*zeta^3
- 504*zeta^2 + 336*zeta + 91)*q^1022 + 1/6*(91*zeta^7 + 35*zeta^6 - 567*zeta^5 -
133*zeta^4 + 980*zeta^3 + 14*zeta^2 - 406*zeta + 133)*q^1023 + 1/9*(-2*zeta^7 - 
6*zeta^6 + 19*zeta^5 + 33*zeta^4 - 49*zeta^3 - 50*zeta^2 + 22*zeta + 18)*q^1024 
+ 1/3*(8*zeta^7 + 24*zeta^6 - 42*zeta^5 - 132*zeta^4 + 60*zeta^3 + 166*zeta^2 - 
20*zeta - 4)*q^1025 + 1/6*(-7*zeta^7 - 21*zeta^6 + 7*zeta^5 + 56*zeta^4 + 
126*zeta^3 + 63*zeta^2 - 280*zeta - 56)*q^1026 + 1/9*(7*zeta^7 + 21*zeta^6 - 
7*zeta^5 - 175*zeta^4 - 126*zeta^3 + 413*zeta^2 + 161*zeta - 182)*q^1027 + 
1/6*(-88*zeta^7 - 77*zeta^6 + 649*zeta^5 + 517*zeta^4 - 1408*zeta^3 - 891*zeta^2
+ 781*zeta + 231)*q^1028 + 1/18*(136*zeta^7 + 119*zeta^6 - 1003*zeta^5 - 
799*zeta^4 + 2176*zeta^3 + 1377*zeta^2 - 1207*zeta - 357)*q^1029 + 1/3*(zeta^7 +
3*zeta^6 - zeta^5 - 25*zeta^4 - 18*zeta^3 + 59*zeta^2 + 23*zeta - 26)*q^1030 + 
1/6*(-7*zeta^7 - 21*zeta^6 + 7*zeta^5 + 56*zeta^4 + 126*zeta^3 + 63*zeta^2 - 
280*zeta - 56)*q^1031 + 1/6*(-52*zeta^7 - 156*zeta^6 + 273*zeta^5 + 858*zeta^4 -
390*zeta^3 - 1079*zeta^2 + 130*zeta + 26)*q^1032 + 1/18*(22*zeta^7 + 66*zeta^6 -
209*zeta^5 - 363*zeta^4 + 539*zeta^3 + 550*zeta^2 - 242*zeta - 198)*q^1033 + 
1/9*(-4*zeta^7 - 12*zeta^6 + 4*zeta^5 + 66*zeta^4 + 38*zeta^3 - 100*zeta^2 - 
24*zeta + 36)*q^1036 + O(q^1037), 1/13*(-9*zeta^7 - 10*zeta^6 + 60*zeta^5 + 
55*zeta^4 - 110*zeta^3 - 72*zeta^2 + 48*zeta + 13)*q^2 + 1/13*(-13*zeta^7 - 
5*zeta^6 + 81*zeta^5 + 19*zeta^4 - 140*zeta^3 - 2*zeta^2 + 58*zeta - 19)*q^3 + 
1/13*(-2*zeta^7 - 6*zeta^6 + 19*zeta^5 + 33*zeta^4 - 49*zeta^3 - 50*zeta^2 + 
22*zeta + 18)*q^4 + 1/13*(4*zeta^7 + 12*zeta^6 - 21*zeta^5 - 66*zeta^4 + 
30*zeta^3 + 83*zeta^2 - 10*zeta - 2)*q^5 + 1/13*(-zeta^7 - 3*zeta^6 + zeta^5 + 
25*zeta^4 + 18*zeta^3 - 59*zeta^2 - 23*zeta + 26)*q^7 + 1/13*(-8*zeta^7 - 
7*zeta^6 + 59*zeta^5 + 47*zeta^4 - 128*zeta^3 - 81*zeta^2 + 71*zeta + 21)*q^9 + 
1/13*(-zeta^7 - 3*zeta^6 + zeta^5 + 25*zeta^4 + 18*zeta^3 - 59*zeta^2 - 23*zeta 
+ 26)*q^10 + 1/13*(-4*zeta^7 - 12*zeta^6 + 21*zeta^5 + 66*zeta^4 - 30*zeta^3 - 
83*zeta^2 + 10*zeta + 2)*q^12 + 1/13*(2*zeta^7 + 6*zeta^6 - 19*zeta^5 - 
33*zeta^4 + 49*zeta^3 + 50*zeta^2 - 22*zeta - 18)*q^13 + 1/13*(-13*zeta^7 - 
5*zeta^6 + 81*zeta^5 + 19*zeta^4 - 140*zeta^3 - 2*zeta^2 + 58*zeta - 19)*q^14 + 
1/13*(2*zeta^7 + 6*zeta^6 - 2*zeta^5 - 33*zeta^4 - 19*zeta^3 + 50*zeta^2 + 
12*zeta - 18)*q^16 + 1/13*(27*zeta^7 + 30*zeta^6 - 180*zeta^5 - 165*zeta^4 + 
330*zeta^3 + 216*zeta^2 - 144*zeta - 39)*q^19 + 1/13*(26*zeta^7 + 10*zeta^6 - 
162*zeta^5 - 38*zeta^4 + 280*zeta^3 + 4*zeta^2 - 116*zeta + 38)*q^20 + 
1/13*(4*zeta^7 + 12*zeta^6 - 38*zeta^5 - 66*zeta^4 + 98*zeta^3 + 100*zeta^2 - 
44*zeta - 36)*q^21 + 1/13*(-12*zeta^7 - 36*zeta^6 + 63*zeta^5 + 198*zeta^4 - 
90*zeta^3 - 249*zeta^2 + 30*zeta + 6)*q^22 + 1/13*(-zeta^7 - 3*zeta^6 + zeta^5 +
8*zeta^4 + 18*zeta^3 + 9*zeta^2 - 40*zeta - 8)*q^23 + 1/13*(3*zeta^7 + 9*zeta^6 
- 3*zeta^5 - 75*zeta^4 - 54*zeta^3 + 177*zeta^2 + 69*zeta - 78)*q^24 + 
1/13*(8*zeta^7 + 7*zeta^6 - 59*zeta^5 - 47*zeta^4 + 128*zeta^3 + 81*zeta^2 - 
71*zeta - 21)*q^25 + 1/13*(16*zeta^7 + 14*zeta^6 - 118*zeta^5 - 94*zeta^4 + 
256*zeta^3 + 162*zeta^2 - 142*zeta - 42)*q^26 + 1/13*(2*zeta^7 + 6*zeta^6 - 
2*zeta^5 - 50*zeta^4 - 36*zeta^3 + 118*zeta^2 + 46*zeta - 52)*q^27 + 
1/13*(12*zeta^7 + 36*zeta^6 - 63*zeta^5 - 198*zeta^4 + 90*zeta^3 + 249*zeta^2 - 
30*zeta - 6)*q^29 + 1/13*(-6*zeta^7 - 18*zeta^6 + 57*zeta^5 + 99*zeta^4 - 
147*zeta^3 - 150*zeta^2 + 66*zeta + 54)*q^30 + 1/13*(26*zeta^7 + 10*zeta^6 - 
162*zeta^5 - 38*zeta^4 + 280*zeta^3 + 4*zeta^2 - 116*zeta + 38)*q^31 + 
1/13*(9*zeta^7 + 10*zeta^6 - 60*zeta^5 - 55*zeta^4 + 110*zeta^3 + 72*zeta^2 - 
48*zeta - 13)*q^32 + 1/13*(-6*zeta^7 - 18*zeta^6 + 6*zeta^5 + 99*zeta^4 + 
57*zeta^3 - 150*zeta^2 - 36*zeta + 54)*q^33 + 1/13*(2*zeta^7 + 6*zeta^6 - 
2*zeta^5 - 33*zeta^4 - 19*zeta^3 + 50*zeta^2 + 12*zeta - 18)*q^35 + 
1/13*(-9*zeta^7 - 10*zeta^6 + 60*zeta^5 + 55*zeta^4 - 110*zeta^3 - 72*zeta^2 + 
48*zeta + 13)*q^36 + 1/13*(26*zeta^7 + 10*zeta^6 - 162*zeta^5 - 38*zeta^4 + 
280*zeta^3 + 4*zeta^2 - 116*zeta + 38)*q^37 + 1/13*(4*zeta^7 + 12*zeta^6 - 
38*zeta^5 - 66*zeta^4 + 98*zeta^3 + 100*zeta^2 - 44*zeta - 36)*q^38 + 
1/13*(4*zeta^7 + 12*zeta^6 - 21*zeta^5 - 66*zeta^4 + 30*zeta^3 + 83*zeta^2 - 
10*zeta - 2)*q^39 + 1/13*(3*zeta^7 + 9*zeta^6 - 3*zeta^5 - 24*zeta^4 - 54*zeta^3
- 27*zeta^2 + 120*zeta + 24)*q^40 + 1/13*(-24*zeta^7 - 21*zeta^6 + 177*zeta^5 + 
141*zeta^4 - 384*zeta^3 - 243*zeta^2 + 213*zeta + 63)*q^42 + 1/13*(16*zeta^7 + 
14*zeta^6 - 118*zeta^5 - 94*zeta^4 + 256*zeta^3 + 162*zeta^2 - 142*zeta - 
42)*q^43 + 1/13*(3*zeta^7 + 9*zeta^6 - 3*zeta^5 - 75*zeta^4 - 54*zeta^3 + 
177*zeta^2 + 69*zeta - 78)*q^44 + 1/13*(-4*zeta^7 - 12*zeta^6 + 21*zeta^5 + 
66*zeta^4 - 30*zeta^3 - 83*zeta^2 + 10*zeta + 2)*q^46 + 1/13*(26*zeta^7 + 
10*zeta^6 - 162*zeta^5 - 38*zeta^4 + 280*zeta^3 + 4*zeta^2 - 116*zeta + 38)*q^48
+ 1/13*(-27*zeta^7 - 30*zeta^6 + 180*zeta^5 + 165*zeta^4 - 330*zeta^3 - 
216*zeta^2 + 144*zeta + 39)*q^49 + 1/13*(2*zeta^7 + 6*zeta^6 - 2*zeta^5 - 
33*zeta^4 - 19*zeta^3 + 50*zeta^2 + 12*zeta - 18)*q^50 + 1/13*(-6*zeta^7 - 
18*zeta^6 + 6*zeta^5 + 99*zeta^4 + 57*zeta^3 - 150*zeta^2 - 36*zeta + 54)*q^52 +
1/13*(-27*zeta^7 - 30*zeta^6 + 180*zeta^5 + 165*zeta^4 - 330*zeta^3 - 216*zeta^2
+ 144*zeta + 39)*q^53 + 1/13*(-39*zeta^7 - 15*zeta^6 + 243*zeta^5 + 57*zeta^4 - 
420*zeta^3 - 6*zeta^2 + 174*zeta - 57)*q^54 + 1/13*(-6*zeta^7 - 18*zeta^6 + 
57*zeta^5 + 99*zeta^4 - 147*zeta^3 - 150*zeta^2 + 66*zeta + 54)*q^55 + 
1/13*(12*zeta^7 + 36*zeta^6 - 63*zeta^5 - 198*zeta^4 + 90*zeta^3 + 249*zeta^2 - 
30*zeta - 6)*q^56 + 1/13*(-zeta^7 - 3*zeta^6 + zeta^5 + 8*zeta^4 + 18*zeta^3 + 
9*zeta^2 - 40*zeta - 8)*q^57 + 1/13*(-6*zeta^7 - 18*zeta^6 + 6*zeta^5 + 
150*zeta^4 + 108*zeta^3 - 354*zeta^2 - 138*zeta + 156)*q^58 + 1/13*(-24*zeta^7 -
21*zeta^6 + 177*zeta^5 + 141*zeta^4 - 384*zeta^3 - 243*zeta^2 + 213*zeta + 
63)*q^60 + 1/13*(-6*zeta^7 - 18*zeta^6 + 6*zeta^5 + 150*zeta^4 + 108*zeta^3 - 
354*zeta^2 - 138*zeta + 156)*q^61 + 1/13*(zeta^7 + 3*zeta^6 - zeta^5 - 8*zeta^4 
- 18*zeta^3 - 9*zeta^2 + 40*zeta + 8)*q^62 + 1/13*(-8*zeta^7 - 24*zeta^6 + 
42*zeta^5 + 132*zeta^4 - 60*zeta^3 - 166*zeta^2 + 20*zeta + 4)*q^63 + 
1/13*(12*zeta^7 + 36*zeta^6 - 114*zeta^5 - 198*zeta^4 + 294*zeta^3 + 300*zeta^2 
- 132*zeta - 108)*q^64 + 1/13*(-26*zeta^7 - 10*zeta^6 + 162*zeta^5 + 38*zeta^4 -
280*zeta^3 - 4*zeta^2 + 116*zeta - 38)*q^65 + 1/13*(4*zeta^7 + 12*zeta^6 - 
4*zeta^5 - 66*zeta^4 - 38*zeta^3 + 100*zeta^2 + 24*zeta - 36)*q^67 + 
1/13*(18*zeta^7 + 20*zeta^6 - 120*zeta^5 - 110*zeta^4 + 220*zeta^3 + 144*zeta^2 
- 96*zeta - 26)*q^70 + 1/13*(-52*zeta^7 - 20*zeta^6 + 324*zeta^5 + 76*zeta^4 - 
560*zeta^3 - 8*zeta^2 + 232*zeta - 76)*q^71 + 1/13*(-6*zeta^7 - 18*zeta^6 + 
57*zeta^5 + 99*zeta^4 - 147*zeta^3 - 150*zeta^2 + 66*zeta + 54)*q^72 + 
1/13*(-8*zeta^7 - 24*zeta^6 + 42*zeta^5 + 132*zeta^4 - 60*zeta^3 - 166*zeta^2 + 
20*zeta + 4)*q^73 + 1/13*(-2*zeta^7 - 6*zeta^6 + 2*zeta^5 + 16*zeta^4 + 
36*zeta^3 + 18*zeta^2 - 80*zeta - 16)*q^74 + 1/13*(2*zeta^7 + 6*zeta^6 - 
2*zeta^5 - 50*zeta^4 - 36*zeta^3 + 118*zeta^2 + 46*zeta - 52)*q^75 + 
1/13*(40*zeta^7 + 35*zeta^6 - 295*zeta^5 - 235*zeta^4 + 640*zeta^3 + 405*zeta^2 
- 355*zeta - 105)*q^76 + 1/13*(-24*zeta^7 - 21*zeta^6 + 177*zeta^5 + 141*zeta^4 
- 384*zeta^3 - 243*zeta^2 + 213*zeta + 63)*q^77 + 1/13*(-3*zeta^7 - 9*zeta^6 + 
3*zeta^5 + 75*zeta^4 + 54*zeta^3 - 177*zeta^2 - 69*zeta + 78)*q^78 + 
1/13*(-4*zeta^7 - 12*zeta^6 + 4*zeta^5 + 32*zeta^4 + 72*zeta^3 + 36*zeta^2 - 
160*zeta - 32)*q^79 + 1/13*(-4*zeta^7 - 12*zeta^6 + 21*zeta^5 + 66*zeta^4 - 
30*zeta^3 - 83*zeta^2 + 10*zeta + 2)*q^80 + 1/13*(-4*zeta^7 - 12*zeta^6 + 
38*zeta^5 + 66*zeta^4 - 98*zeta^3 - 100*zeta^2 + 44*zeta + 36)*q^81 + 
1/13*(-78*zeta^7 - 30*zeta^6 + 486*zeta^5 + 114*zeta^4 - 840*zeta^3 - 12*zeta^2 
+ 348*zeta - 114)*q^82 + 1/13*(45*zeta^7 + 50*zeta^6 - 300*zeta^5 - 275*zeta^4 +
550*zeta^3 + 360*zeta^2 - 240*zeta - 65)*q^83 + 1/13*(2*zeta^7 + 6*zeta^6 - 
2*zeta^5 - 33*zeta^4 - 19*zeta^3 + 50*zeta^2 + 12*zeta - 18)*q^84 + 
1/13*(10*zeta^7 + 30*zeta^6 - 10*zeta^5 - 165*zeta^4 - 95*zeta^3 + 250*zeta^2 + 
60*zeta - 90)*q^86 + 1/13*(-27*zeta^7 - 30*zeta^6 + 180*zeta^5 + 165*zeta^4 - 
330*zeta^3 - 216*zeta^2 + 144*zeta + 39)*q^87 + 1/13*(-8*zeta^7 - 24*zeta^6 + 
76*zeta^5 + 132*zeta^4 - 196*zeta^3 - 200*zeta^2 + 88*zeta + 72)*q^89 + 
1/13*(12*zeta^7 + 36*zeta^6 - 63*zeta^5 - 198*zeta^4 + 90*zeta^3 + 249*zeta^2 - 
30*zeta - 6)*q^90 + 1/13*(2*zeta^7 + 6*zeta^6 - 2*zeta^5 - 50*zeta^4 - 36*zeta^3
+ 118*zeta^2 + 46*zeta - 52)*q^92 + 1/13*(8*zeta^7 + 7*zeta^6 - 59*zeta^5 - 
47*zeta^4 + 128*zeta^3 + 81*zeta^2 - 71*zeta - 21)*q^93 + 1/13*(-24*zeta^7 - 
21*zeta^6 + 177*zeta^5 + 141*zeta^4 - 384*zeta^3 - 243*zeta^2 + 213*zeta + 
63)*q^94 + 1/13*(2*zeta^7 + 6*zeta^6 - 2*zeta^5 - 50*zeta^4 - 36*zeta^3 + 
118*zeta^2 + 46*zeta - 52)*q^95 + 1/13*(3*zeta^7 + 9*zeta^6 - 3*zeta^5 - 
24*zeta^4 - 54*zeta^3 - 27*zeta^2 + 120*zeta + 24)*q^96 + 1/13*(-12*zeta^7 - 
36*zeta^6 + 63*zeta^5 + 198*zeta^4 - 90*zeta^3 - 249*zeta^2 + 30*zeta + 6)*q^97 
+ 1/13*(-6*zeta^7 - 18*zeta^6 + 57*zeta^5 + 99*zeta^4 - 147*zeta^3 - 150*zeta^2 
+ 66*zeta + 54)*q^98 + 1/13*(-39*zeta^7 - 15*zeta^6 + 243*zeta^5 + 57*zeta^4 - 
420*zeta^3 - 6*zeta^2 + 174*zeta - 57)*q^99 + 1/13*(4*zeta^7 + 12*zeta^6 - 
4*zeta^5 - 66*zeta^4 - 38*zeta^3 + 100*zeta^2 + 24*zeta - 36)*q^101 + 
1/13*(27*zeta^7 + 30*zeta^6 - 180*zeta^5 - 165*zeta^4 + 330*zeta^3 + 216*zeta^2 
- 144*zeta - 39)*q^104 + 1/13*(39*zeta^7 + 15*zeta^6 - 243*zeta^5 - 57*zeta^4 + 
420*zeta^3 + 6*zeta^2 - 174*zeta + 57)*q^105 + 1/13*(12*zeta^7 + 36*zeta^6 - 
114*zeta^5 - 198*zeta^4 + 294*zeta^3 + 300*zeta^2 - 132*zeta - 108)*q^106 + 
1/13*(-16*zeta^7 - 48*zeta^6 + 84*zeta^5 + 264*zeta^4 - 120*zeta^3 - 332*zeta^2 
+ 40*zeta + 8)*q^107 + 1/13*(-5*zeta^7 - 15*zeta^6 + 5*zeta^5 + 40*zeta^4 + 
90*zeta^3 + 45*zeta^2 - 200*zeta - 40)*q^108 + 1/13*(4*zeta^7 + 12*zeta^6 - 
4*zeta^5 - 100*zeta^4 - 72*zeta^3 + 236*zeta^2 + 92*zeta - 104)*q^109 + 
1/13*(-24*zeta^7 - 21*zeta^6 + 177*zeta^5 + 141*zeta^4 - 384*zeta^3 - 243*zeta^2
+ 213*zeta + 63)*q^110 + 1/13*(32*zeta^7 + 28*zeta^6 - 236*zeta^5 - 188*zeta^4 +
512*zeta^3 + 324*zeta^2 - 284*zeta - 84)*q^111 + 1/13*(3*zeta^7 + 9*zeta^6 - 
3*zeta^5 - 75*zeta^4 - 54*zeta^3 + 177*zeta^2 + 69*zeta - 78)*q^112 + 
1/13*(5*zeta^7 + 15*zeta^6 - 5*zeta^5 - 40*zeta^4 - 90*zeta^3 - 45*zeta^2 + 
200*zeta + 40)*q^113 + 1/13*(36*zeta^7 + 108*zeta^6 - 189*zeta^5 - 594*zeta^4 + 
270*zeta^3 + 747*zeta^2 - 90*zeta - 18)*q^114 + 1/13*(-2*zeta^7 - 6*zeta^6 + 
19*zeta^5 + 33*zeta^4 - 49*zeta^3 - 50*zeta^2 + 22*zeta + 18)*q^115 + 
1/13*(117*zeta^7 + 45*zeta^6 - 729*zeta^5 - 171*zeta^4 + 1260*zeta^3 + 18*zeta^2
- 522*zeta + 171)*q^116 + 1/13*(9*zeta^7 + 10*zeta^6 - 60*zeta^5 - 55*zeta^4 + 
110*zeta^3 + 72*zeta^2 - 48*zeta - 13)*q^117 + 1/13*(-12*zeta^7 - 36*zeta^6 + 
12*zeta^5 + 198*zeta^4 + 114*zeta^3 - 300*zeta^2 - 72*zeta + 108)*q^118 + 
1/13*(13*zeta^7 + 5*zeta^6 - 81*zeta^5 - 19*zeta^4 + 140*zeta^3 + 2*zeta^2 - 
58*zeta + 19)*q^122 + 1/13*(12*zeta^7 + 36*zeta^6 - 114*zeta^5 - 198*zeta^4 + 
294*zeta^3 + 300*zeta^2 - 132*zeta - 108)*q^123 + 1/13*(12*zeta^7 + 36*zeta^6 - 
63*zeta^5 - 198*zeta^4 + 90*zeta^3 + 249*zeta^2 - 30*zeta - 6)*q^124 + 
1/13*(6*zeta^7 + 18*zeta^6 - 6*zeta^5 - 48*zeta^4 - 108*zeta^3 - 54*zeta^2 + 
240*zeta + 48)*q^125 + 1/13*(-3*zeta^7 - 9*zeta^6 + 3*zeta^5 + 75*zeta^4 + 
54*zeta^3 - 177*zeta^2 - 69*zeta + 78)*q^126 + 1/13*(-48*zeta^7 - 42*zeta^6 + 
354*zeta^5 + 282*zeta^4 - 768*zeta^3 - 486*zeta^2 + 426*zeta + 126)*q^127 + 
1/13*(24*zeta^7 + 21*zeta^6 - 177*zeta^5 - 141*zeta^4 + 384*zeta^3 + 243*zeta^2 
- 213*zeta - 63)*q^128 + 1/13*(7*zeta^7 + 21*zeta^6 - 7*zeta^5 - 175*zeta^4 - 
126*zeta^3 + 413*zeta^2 + 161*zeta - 182)*q^129 + 1/13*(-5*zeta^7 - 15*zeta^6 + 
5*zeta^5 + 40*zeta^4 + 90*zeta^3 + 45*zeta^2 - 200*zeta - 40)*q^130 + 
1/13*(-8*zeta^7 - 24*zeta^6 + 42*zeta^5 + 132*zeta^4 - 60*zeta^3 - 166*zeta^2 + 
20*zeta + 4)*q^131 + 1/13*(6*zeta^7 + 18*zeta^6 - 57*zeta^5 - 99*zeta^4 + 
147*zeta^3 + 150*zeta^2 - 66*zeta - 54)*q^132 + 1/13*(52*zeta^7 + 20*zeta^6 - 
324*zeta^5 - 76*zeta^4 + 560*zeta^3 + 8*zeta^2 - 232*zeta + 76)*q^133 + 
1/13*(-90*zeta^7 - 100*zeta^6 + 600*zeta^5 + 550*zeta^4 - 1100*zeta^3 - 
720*zeta^2 + 480*zeta + 130)*q^134 + 1/13*(6*zeta^7 + 18*zeta^6 - 6*zeta^5 - 
99*zeta^4 - 57*zeta^3 + 150*zeta^2 + 36*zeta - 54)*q^135 + 1/13*(-12*zeta^7 - 
36*zeta^6 + 12*zeta^5 + 198*zeta^4 + 114*zeta^3 - 300*zeta^2 - 72*zeta + 
108)*q^137 + 1/13*(27*zeta^7 + 30*zeta^6 - 180*zeta^5 - 165*zeta^4 + 330*zeta^3 
+ 216*zeta^2 - 144*zeta - 39)*q^138 + 1/13*(65*zeta^7 + 25*zeta^6 - 405*zeta^5 -
95*zeta^4 + 700*zeta^3 + 10*zeta^2 - 290*zeta + 95)*q^139 + 1/13*(2*zeta^7 + 
6*zeta^6 - 19*zeta^5 - 33*zeta^4 + 49*zeta^3 + 50*zeta^2 - 22*zeta - 18)*q^140 +
1/13*(-12*zeta^7 - 36*zeta^6 + 63*zeta^5 + 198*zeta^4 - 90*zeta^3 - 249*zeta^2 +
30*zeta + 6)*q^141 + 1/13*(2*zeta^7 + 6*zeta^6 - 2*zeta^5 - 16*zeta^4 - 
36*zeta^3 - 18*zeta^2 + 80*zeta + 16)*q^142 + 1/13*(-3*zeta^7 - 9*zeta^6 + 
3*zeta^5 + 75*zeta^4 + 54*zeta^3 - 177*zeta^2 - 69*zeta + 78)*q^143 + 
1/13*(16*zeta^7 + 14*zeta^6 - 118*zeta^5 - 94*zeta^4 + 256*zeta^3 + 162*zeta^2 -
142*zeta - 42)*q^144 + 1/13*(48*zeta^7 + 42*zeta^6 - 354*zeta^5 - 282*zeta^4 + 
768*zeta^3 + 486*zeta^2 - 426*zeta - 126)*q^145 + 1/13*(-3*zeta^7 - 9*zeta^6 + 
3*zeta^5 + 75*zeta^4 + 54*zeta^3 - 177*zeta^2 - 69*zeta + 78)*q^146 + 
1/13*(-4*zeta^7 - 12*zeta^6 + 38*zeta^5 + 66*zeta^4 - 98*zeta^3 - 100*zeta^2 + 
44*zeta + 36)*q^149 + 1/13*(39*zeta^7 + 15*zeta^6 - 243*zeta^5 - 57*zeta^4 + 
420*zeta^3 + 6*zeta^2 - 174*zeta + 57)*q^150 + 1/13*(-18*zeta^7 - 54*zeta^6 + 
18*zeta^5 + 297*zeta^4 + 171*zeta^3 - 450*zeta^2 - 108*zeta + 162)*q^152 + 
1/13*(-6*zeta^7 - 18*zeta^6 + 6*zeta^5 + 99*zeta^4 + 57*zeta^3 - 150*zeta^2 - 
36*zeta + 54)*q^154 + 1/13*(9*zeta^7 + 10*zeta^6 - 60*zeta^5 - 55*zeta^4 + 
110*zeta^3 + 72*zeta^2 - 48*zeta - 13)*q^155 + 1/13*(52*zeta^7 + 20*zeta^6 - 
324*zeta^5 - 76*zeta^4 + 560*zeta^3 + 8*zeta^2 - 232*zeta + 76)*q^156 + 
1/13*(2*zeta^7 + 6*zeta^6 - 19*zeta^5 - 33*zeta^4 + 49*zeta^3 + 50*zeta^2 - 
22*zeta - 18)*q^157 + 1/13*(-24*zeta^7 - 72*zeta^6 + 126*zeta^5 + 396*zeta^4 - 
180*zeta^3 - 498*zeta^2 + 60*zeta + 12)*q^158 + 1/13*(9*zeta^7 + 27*zeta^6 - 
9*zeta^5 - 72*zeta^4 - 162*zeta^3 - 81*zeta^2 + 360*zeta + 72)*q^159 + 
1/13*(4*zeta^7 + 12*zeta^6 - 4*zeta^5 - 100*zeta^4 - 72*zeta^3 + 236*zeta^2 + 
92*zeta - 104)*q^160 + 1/13*(8*zeta^7 + 7*zeta^6 - 59*zeta^5 - 47*zeta^4 + 
128*zeta^3 + 81*zeta^2 - 71*zeta - 21)*q^161 + 1/13*(48*zeta^7 + 42*zeta^6 - 
354*zeta^5 - 282*zeta^4 + 768*zeta^3 + 486*zeta^2 - 426*zeta - 126)*q^162 + 
1/13*(-2*zeta^7 - 6*zeta^6 + 2*zeta^5 + 50*zeta^4 + 36*zeta^3 - 118*zeta^2 - 
46*zeta + 52)*q^163 + 1/13*(-6*zeta^7 - 18*zeta^6 + 6*zeta^5 + 48*zeta^4 + 
108*zeta^3 + 54*zeta^2 - 240*zeta - 48)*q^164 + 1/13*(-8*zeta^7 - 24*zeta^6 + 
76*zeta^5 + 132*zeta^4 - 196*zeta^3 - 200*zeta^2 + 88*zeta + 72)*q^166 + 
1/13*(-13*zeta^7 - 5*zeta^6 + 81*zeta^5 + 19*zeta^4 - 140*zeta^3 - 2*zeta^2 + 
58*zeta - 19)*q^167 + 1/13*(54*zeta^7 + 60*zeta^6 - 360*zeta^5 - 330*zeta^4 + 
660*zeta^3 + 432*zeta^2 - 288*zeta - 78)*q^168 + 1/13*(6*zeta^7 + 18*zeta^6 - 
6*zeta^5 - 99*zeta^4 - 57*zeta^3 + 150*zeta^2 + 36*zeta - 54)*q^169 + 
1/13*(2*zeta^7 + 6*zeta^6 - 2*zeta^5 - 33*zeta^4 - 19*zeta^3 + 50*zeta^2 + 
12*zeta - 18)*q^171 + 1/13*(-27*zeta^7 - 30*zeta^6 + 180*zeta^5 + 165*zeta^4 - 
330*zeta^3 - 216*zeta^2 + 144*zeta + 39)*q^172 + 1/13*(-26*zeta^7 - 10*zeta^6 + 
162*zeta^5 + 38*zeta^4 - 280*zeta^3 - 4*zeta^2 + 116*zeta - 38)*q^173 + 
1/13*(-18*zeta^7 - 54*zeta^6 + 171*zeta^5 + 297*zeta^4 - 441*zeta^3 - 450*zeta^2
+ 198*zeta + 162)*q^174 + 1/13*(12*zeta^7 + 36*zeta^6 - 63*zeta^5 - 198*zeta^4 +
90*zeta^3 + 249*zeta^2 - 30*zeta - 6)*q^175 + 1/13*(-3*zeta^7 - 9*zeta^6 + 
3*zeta^5 + 24*zeta^4 + 54*zeta^3 + 27*zeta^2 - 120*zeta - 24)*q^176 + 
1/13*(-6*zeta^7 - 18*zeta^6 + 6*zeta^5 + 150*zeta^4 + 108*zeta^3 - 354*zeta^2 - 
138*zeta + 156)*q^177 + 1/13*(16*zeta^7 + 14*zeta^6 - 118*zeta^5 - 94*zeta^4 + 
256*zeta^3 + 162*zeta^2 - 142*zeta - 42)*q^178 + 1/13*(-72*zeta^7 - 63*zeta^6 + 
531*zeta^5 + 423*zeta^4 - 1152*zeta^3 - 729*zeta^2 + 639*zeta + 189)*q^179 + 
1/13*(-3*zeta^7 - 9*zeta^6 + 3*zeta^5 + 75*zeta^4 + 54*zeta^3 - 177*zeta^2 - 
69*zeta + 78)*q^180 + 1/13*(4*zeta^7 + 12*zeta^6 - 4*zeta^5 - 32*zeta^4 - 
72*zeta^3 - 36*zeta^2 + 160*zeta + 32)*q^181 + 1/13*(-4*zeta^7 - 12*zeta^6 + 
21*zeta^5 + 66*zeta^4 - 30*zeta^3 - 83*zeta^2 + 10*zeta + 2)*q^182 + 
1/13*(10*zeta^7 + 30*zeta^6 - 95*zeta^5 - 165*zeta^4 + 245*zeta^3 + 250*zeta^2 -
110*zeta - 90)*q^183 + 1/13*(-39*zeta^7 - 15*zeta^6 + 243*zeta^5 + 57*zeta^4 - 
420*zeta^3 - 6*zeta^2 + 174*zeta - 57)*q^184 + 1/13*(-18*zeta^7 - 20*zeta^6 + 
120*zeta^5 + 110*zeta^4 - 220*zeta^3 - 144*zeta^2 + 96*zeta + 26)*q^185 + 
1/13*(12*zeta^7 + 36*zeta^6 - 12*zeta^5 - 198*zeta^4 - 114*zeta^3 + 300*zeta^2 +
72*zeta - 108)*q^186 + 1/13*(6*zeta^7 + 18*zeta^6 - 6*zeta^5 - 99*zeta^4 - 
57*zeta^3 + 150*zeta^2 + 36*zeta - 54)*q^188 + 1/13*(9*zeta^7 + 10*zeta^6 - 
60*zeta^5 - 55*zeta^4 + 110*zeta^3 + 72*zeta^2 - 48*zeta - 13)*q^189 + 
1/13*(-143*zeta^7 - 55*zeta^6 + 891*zeta^5 + 209*zeta^4 - 1540*zeta^3 - 
22*zeta^2 + 638*zeta - 209)*q^190 + 1/13*(2*zeta^7 + 6*zeta^6 - 19*zeta^5 - 
33*zeta^4 + 49*zeta^3 + 50*zeta^2 - 22*zeta - 18)*q^191 + 1/13*(-4*zeta^7 - 
12*zeta^6 + 21*zeta^5 + 66*zeta^4 - 30*zeta^3 - 83*zeta^2 + 10*zeta + 2)*q^192 +
1/13*(-12*zeta^7 - 36*zeta^6 + 12*zeta^5 + 96*zeta^4 + 216*zeta^3 + 108*zeta^2 -
480*zeta - 96)*q^193 + 1/13*(7*zeta^7 + 21*zeta^6 - 7*zeta^5 - 175*zeta^4 - 
126*zeta^3 + 413*zeta^2 + 161*zeta - 182)*q^194 + 1/13*(24*zeta^7 + 21*zeta^6 - 
177*zeta^5 - 141*zeta^4 + 384*zeta^3 + 243*zeta^2 - 213*zeta - 63)*q^195 + 
1/13*(-48*zeta^7 - 42*zeta^6 + 354*zeta^5 + 282*zeta^4 - 768*zeta^3 - 486*zeta^2
+ 426*zeta + 126)*q^196 + 1/13*(-3*zeta^7 - 9*zeta^6 + 3*zeta^5 + 75*zeta^4 + 
54*zeta^3 - 177*zeta^2 - 69*zeta + 78)*q^197 + 1/13*(8*zeta^7 + 24*zeta^6 - 
42*zeta^5 - 132*zeta^4 + 60*zeta^3 + 166*zeta^2 - 20*zeta - 4)*q^199 + 
1/13*(6*zeta^7 + 18*zeta^6 - 57*zeta^5 - 99*zeta^4 + 147*zeta^3 + 150*zeta^2 - 
66*zeta - 54)*q^200 + 1/13*(-104*zeta^7 - 40*zeta^6 + 648*zeta^5 + 152*zeta^4 - 
1120*zeta^3 - 16*zeta^2 + 464*zeta - 152)*q^201 + 1/13*(63*zeta^7 + 70*zeta^6 - 
420*zeta^5 - 385*zeta^4 + 770*zeta^3 + 504*zeta^2 - 336*zeta - 91)*q^202 + 
1/13*(12*zeta^7 + 36*zeta^6 - 12*zeta^5 - 198*zeta^4 - 114*zeta^3 + 300*zeta^2 +
72*zeta - 108)*q^205 + 1/13*(-18*zeta^7 - 20*zeta^6 + 120*zeta^5 + 110*zeta^4 - 
220*zeta^3 - 144*zeta^2 + 96*zeta + 26)*q^206 + 1/13*(36*zeta^7 + 108*zeta^6 - 
189*zeta^5 - 594*zeta^4 + 270*zeta^3 + 747*zeta^2 - 90*zeta - 18)*q^209 + 
1/13*(-3*zeta^7 - 9*zeta^6 + 3*zeta^5 + 24*zeta^4 + 54*zeta^3 + 27*zeta^2 - 
120*zeta - 24)*q^210 + 1/13*(3*zeta^7 + 9*zeta^6 - 3*zeta^5 - 75*zeta^4 - 
54*zeta^3 + 177*zeta^2 + 69*zeta - 78)*q^211 + 1/13*(24*zeta^7 + 21*zeta^6 - 
177*zeta^5 - 141*zeta^4 + 384*zeta^3 + 243*zeta^2 - 213*zeta - 63)*q^212 + 
1/13*(-48*zeta^7 - 42*zeta^6 + 354*zeta^5 + 282*zeta^4 - 768*zeta^3 - 486*zeta^2
+ 426*zeta + 126)*q^213 + 1/13*(7*zeta^7 + 21*zeta^6 - 7*zeta^5 - 175*zeta^4 - 
126*zeta^3 + 413*zeta^2 + 161*zeta - 182)*q^214 + 1/13*(5*zeta^7 + 15*zeta^6 - 
5*zeta^5 - 40*zeta^4 - 90*zeta^3 - 45*zeta^2 + 200*zeta + 40)*q^215 + 
1/13*(-24*zeta^7 - 72*zeta^6 + 126*zeta^5 + 396*zeta^4 - 180*zeta^3 - 498*zeta^2
+ 60*zeta + 12)*q^216 + 1/13*(-6*zeta^7 - 18*zeta^6 + 57*zeta^5 + 99*zeta^4 - 
147*zeta^3 - 150*zeta^2 + 66*zeta + 54)*q^217 + 1/13*(-117*zeta^7 - 45*zeta^6 + 
729*zeta^5 + 171*zeta^4 - 1260*zeta^3 - 18*zeta^2 + 522*zeta - 171)*q^218 + 
1/13*(-45*zeta^7 - 50*zeta^6 + 300*zeta^5 + 275*zeta^4 - 550*zeta^3 - 360*zeta^2
+ 240*zeta + 65)*q^219 + 1/13*(12*zeta^7 + 36*zeta^6 - 12*zeta^5 - 198*zeta^4 - 
114*zeta^3 + 300*zeta^2 + 72*zeta - 108)*q^220 + 1/13*(12*zeta^7 + 36*zeta^6 - 
12*zeta^5 - 198*zeta^4 - 114*zeta^3 + 300*zeta^2 + 72*zeta - 108)*q^222 + 
1/13*(-45*zeta^7 - 50*zeta^6 + 300*zeta^5 + 275*zeta^4 - 550*zeta^3 - 360*zeta^2
+ 240*zeta + 65)*q^223 + 1/13*(-26*zeta^7 - 10*zeta^6 + 162*zeta^5 + 38*zeta^4 -
280*zeta^3 - 4*zeta^2 + 116*zeta - 38)*q^224 + 1/13*(-4*zeta^7 - 12*zeta^6 + 
38*zeta^5 + 66*zeta^4 - 98*zeta^3 - 100*zeta^2 + 44*zeta + 36)*q^225 + 
1/13*(20*zeta^7 + 60*zeta^6 - 105*zeta^5 - 330*zeta^4 + 150*zeta^3 + 415*zeta^2 
- 50*zeta - 10)*q^226 + 1/13*(-6*zeta^7 - 18*zeta^6 + 6*zeta^5 + 48*zeta^4 + 
108*zeta^3 + 54*zeta^2 - 240*zeta - 48)*q^227 + 1/13*(-8*zeta^7 - 24*zeta^6 + 
8*zeta^5 + 200*zeta^4 + 144*zeta^3 - 472*zeta^2 - 184*zeta + 208)*q^228 + 
1/13*(-64*zeta^7 - 56*zeta^6 + 472*zeta^5 + 376*zeta^4 - 1024*zeta^3 - 
648*zeta^2 + 568*zeta + 168)*q^229 + 1/13*(-32*zeta^7 - 28*zeta^6 + 236*zeta^5 +
188*zeta^4 - 512*zeta^3 - 324*zeta^2 + 284*zeta + 84)*q^230 + 1/13*(-6*zeta^7 - 
18*zeta^6 + 6*zeta^5 + 150*zeta^4 + 108*zeta^3 - 354*zeta^2 - 138*zeta + 
156)*q^231 + 1/13*(9*zeta^7 + 27*zeta^6 - 9*zeta^5 - 72*zeta^4 - 162*zeta^3 - 
81*zeta^2 + 360*zeta + 72)*q^232 + 1/13*(-24*zeta^7 - 72*zeta^6 + 126*zeta^5 + 
396*zeta^4 - 180*zeta^3 - 498*zeta^2 + 60*zeta + 12)*q^233 + 1/13*(6*zeta^7 + 
18*zeta^6 - 57*zeta^5 - 99*zeta^4 + 147*zeta^3 + 150*zeta^2 - 66*zeta - 
54)*q^234 + 1/13*(39*zeta^7 + 15*zeta^6 - 243*zeta^5 - 57*zeta^4 + 420*zeta^3 + 
6*zeta^2 - 174*zeta + 57)*q^235 + 1/13*(54*zeta^7 + 60*zeta^6 - 360*zeta^5 - 
330*zeta^4 + 660*zeta^3 + 432*zeta^2 - 288*zeta - 78)*q^236 + 1/13*(-4*zeta^7 - 
12*zeta^6 + 4*zeta^5 + 66*zeta^4 + 38*zeta^3 - 100*zeta^2 - 24*zeta + 36)*q^237 
+ 1/13*(-8*zeta^7 - 24*zeta^6 + 8*zeta^5 + 132*zeta^4 + 76*zeta^3 - 200*zeta^2 -
48*zeta + 72)*q^239 + 1/13*(-27*zeta^7 - 30*zeta^6 + 180*zeta^5 + 165*zeta^4 - 
330*zeta^3 - 216*zeta^2 + 144*zeta + 39)*q^240 + 1/13*(-65*zeta^7 - 25*zeta^6 + 
405*zeta^5 + 95*zeta^4 - 700*zeta^3 - 10*zeta^2 + 290*zeta - 95)*q^241 + 
1/13*(-4*zeta^7 - 12*zeta^6 + 38*zeta^5 + 66*zeta^4 - 98*zeta^3 - 100*zeta^2 + 
44*zeta + 36)*q^242 + 1/13*(8*zeta^7 + 24*zeta^6 - 42*zeta^5 - 132*zeta^4 + 
60*zeta^3 + 166*zeta^2 - 20*zeta - 4)*q^243 + 1/13*(7*zeta^7 + 21*zeta^6 - 
7*zeta^5 - 56*zeta^4 - 126*zeta^3 - 63*zeta^2 + 280*zeta + 56)*q^244 + 
1/13*(-3*zeta^7 - 9*zeta^6 + 3*zeta^5 + 75*zeta^4 + 54*zeta^3 - 177*zeta^2 - 
69*zeta + 78)*q^245 + 1/13*(-40*zeta^7 - 35*zeta^6 + 295*zeta^5 + 235*zeta^4 - 
640*zeta^3 - 405*zeta^2 + 355*zeta + 105)*q^247 + 1/13*(-6*zeta^7 - 18*zeta^6 + 
6*zeta^5 + 150*zeta^4 + 108*zeta^3 - 354*zeta^2 - 138*zeta + 156)*q^248 + 
1/13*(-9*zeta^7 - 27*zeta^6 + 9*zeta^5 + 72*zeta^4 + 162*zeta^3 + 81*zeta^2 - 
360*zeta - 72)*q^249 + 1/13*(12*zeta^7 + 36*zeta^6 - 63*zeta^5 - 198*zeta^4 + 
90*zeta^3 + 249*zeta^2 - 30*zeta - 6)*q^250 + 1/13*(6*zeta^7 + 18*zeta^6 - 
57*zeta^5 - 99*zeta^4 + 147*zeta^3 + 150*zeta^2 - 66*zeta - 54)*q^251 + 
1/13*(13*zeta^7 + 5*zeta^6 - 81*zeta^5 - 19*zeta^4 + 140*zeta^3 + 2*zeta^2 - 
58*zeta + 19)*q^252 + 1/13*(27*zeta^7 + 30*zeta^6 - 180*zeta^5 - 165*zeta^4 + 
330*zeta^3 + 216*zeta^2 - 144*zeta - 39)*q^253 + 1/13*(14*zeta^7 + 42*zeta^6 - 
14*zeta^5 - 231*zeta^4 - 133*zeta^3 + 350*zeta^2 + 84*zeta - 126)*q^254 + 
1/13*(-6*zeta^7 - 18*zeta^6 + 6*zeta^5 + 99*zeta^4 + 57*zeta^3 - 150*zeta^2 - 
36*zeta + 54)*q^256 + 1/13*(81*zeta^7 + 90*zeta^6 - 540*zeta^5 - 495*zeta^4 + 
990*zeta^3 + 648*zeta^2 - 432*zeta - 117)*q^257 + 1/13*(78*zeta^7 + 30*zeta^6 - 
486*zeta^5 - 114*zeta^4 + 840*zeta^3 + 12*zeta^2 - 348*zeta + 114)*q^258 + 
1/13*(-12*zeta^7 - 36*zeta^6 + 114*zeta^5 + 198*zeta^4 - 294*zeta^3 - 300*zeta^2
+ 132*zeta + 108)*q^259 + 1/13*(-28*zeta^7 - 84*zeta^6 + 147*zeta^5 + 462*zeta^4
- 210*zeta^3 - 581*zeta^2 + 70*zeta + 14)*q^260 + 1/13*(3*zeta^7 + 9*zeta^6 - 
3*zeta^5 - 24*zeta^4 - 54*zeta^3 - 27*zeta^2 + 120*zeta + 24)*q^261 + 
1/13*(2*zeta^7 + 6*zeta^6 - 2*zeta^5 - 50*zeta^4 - 36*zeta^3 + 118*zeta^2 + 
46*zeta - 52)*q^262 + 1/13*(40*zeta^7 + 35*zeta^6 - 295*zeta^5 - 235*zeta^4 + 
640*zeta^3 + 405*zeta^2 - 355*zeta - 105)*q^263 + 1/13*(72*zeta^7 + 63*zeta^6 - 
531*zeta^5 - 423*zeta^4 + 1152*zeta^3 + 729*zeta^2 - 639*zeta - 189)*q^264 + 
1/13*(6*zeta^7 + 18*zeta^6 - 6*zeta^5 - 150*zeta^4 - 108*zeta^3 + 354*zeta^2 + 
138*zeta - 156)*q^265 + 1/13*(-7*zeta^7 - 21*zeta^6 + 7*zeta^5 + 56*zeta^4 + 
126*zeta^3 + 63*zeta^2 - 280*zeta - 56)*q^266 + 1/13*(24*zeta^7 + 72*zeta^6 - 
126*zeta^5 - 396*zeta^4 + 180*zeta^3 + 498*zeta^2 - 60*zeta - 12)*q^267 + 
1/13*(-24*zeta^7 - 72*zeta^6 + 228*zeta^5 + 396*zeta^4 - 588*zeta^3 - 600*zeta^2
+ 264*zeta + 216)*q^268 + 1/13*(91*zeta^7 + 35*zeta^6 - 567*zeta^5 - 133*zeta^4 
+ 980*zeta^3 + 14*zeta^2 - 406*zeta + 133)*q^269 + 1/13*(-81*zeta^7 - 90*zeta^6 
+ 540*zeta^5 + 495*zeta^4 - 990*zeta^3 - 648*zeta^2 + 432*zeta + 117)*q^270 + 
1/13*(-30*zeta^7 - 90*zeta^6 + 30*zeta^5 + 495*zeta^4 + 285*zeta^3 - 750*zeta^2 
- 180*zeta + 270)*q^271 + 1/13*(-2*zeta^7 - 6*zeta^6 + 2*zeta^5 + 33*zeta^4 + 
19*zeta^3 - 50*zeta^2 - 12*zeta + 18)*q^273 + 1/13*(-54*zeta^7 - 60*zeta^6 + 
360*zeta^5 + 330*zeta^4 - 660*zeta^3 - 432*zeta^2 + 288*zeta + 78)*q^274 + 
1/13*(39*zeta^7 + 15*zeta^6 - 243*zeta^5 - 57*zeta^4 + 420*zeta^3 + 6*zeta^2 - 
174*zeta + 57)*q^275 + 1/13*(6*zeta^7 + 18*zeta^6 - 57*zeta^5 - 99*zeta^4 + 
147*zeta^3 + 150*zeta^2 - 66*zeta - 54)*q^276 + (zeta^7 + 3*zeta^6 - zeta^5 - 
8*zeta^4 - 18*zeta^3 - 9*zeta^2 + 40*zeta + 8)*q^278 + 1/13*(zeta^7 + 3*zeta^6 -
zeta^5 - 25*zeta^4 - 18*zeta^3 + 59*zeta^2 + 23*zeta - 26)*q^279 + 
1/13*(-24*zeta^7 - 21*zeta^6 + 177*zeta^5 + 141*zeta^4 - 384*zeta^3 - 243*zeta^2
+ 213*zeta + 63)*q^280 + 1/13*(120*zeta^7 + 105*zeta^6 - 885*zeta^5 - 705*zeta^4
+ 1920*zeta^3 + 1215*zeta^2 - 1065*zeta - 315)*q^281 + 1/13*(-8*zeta^7 - 
24*zeta^6 + 42*zeta^5 + 132*zeta^4 - 60*zeta^3 - 166*zeta^2 + 20*zeta + 4)*q^284
+ 1/13*(18*zeta^7 + 54*zeta^6 - 171*zeta^5 - 297*zeta^4 + 441*zeta^3 + 
450*zeta^2 - 198*zeta - 162)*q^285 + 1/13*(78*zeta^7 + 30*zeta^6 - 486*zeta^5 - 
114*zeta^4 + 840*zeta^3 + 12*zeta^2 - 348*zeta + 114)*q^286 + 1/13*(-54*zeta^7 -
60*zeta^6 + 360*zeta^5 + 330*zeta^4 - 660*zeta^3 - 432*zeta^2 + 288*zeta + 
78)*q^287 + 1/13*(-6*zeta^7 - 18*zeta^6 + 6*zeta^5 + 99*zeta^4 + 57*zeta^3 - 
150*zeta^2 - 36*zeta + 54)*q^288 + 1/13*(-30*zeta^7 - 90*zeta^6 + 30*zeta^5 + 
495*zeta^4 + 285*zeta^3 - 750*zeta^2 - 180*zeta + 270)*q^290 + 1/13*(36*zeta^7 +
40*zeta^6 - 240*zeta^5 - 220*zeta^4 + 440*zeta^3 + 288*zeta^2 - 192*zeta - 
52)*q^291 + 1/13*(13*zeta^7 + 5*zeta^6 - 81*zeta^5 - 19*zeta^4 + 140*zeta^3 + 
2*zeta^2 - 58*zeta + 19)*q^292 + 1/13*(12*zeta^7 + 36*zeta^6 - 114*zeta^5 - 
198*zeta^4 + 294*zeta^3 + 300*zeta^2 - 132*zeta - 108)*q^293 + 1/13*(-36*zeta^7 
- 108*zeta^6 + 189*zeta^5 + 594*zeta^4 - 270*zeta^3 - 747*zeta^2 + 90*zeta + 
18)*q^294 + 1/13*(-6*zeta^7 - 18*zeta^6 + 6*zeta^5 + 48*zeta^4 + 108*zeta^3 + 
54*zeta^2 - 240*zeta - 48)*q^295 + 1/13*(-6*zeta^7 - 18*zeta^6 + 6*zeta^5 + 
150*zeta^4 + 108*zeta^3 - 354*zeta^2 - 138*zeta + 156)*q^296 + 1/13*(48*zeta^7 +
42*zeta^6 - 354*zeta^5 - 282*zeta^4 + 768*zeta^3 + 486*zeta^2 - 426*zeta - 
126)*q^297 + 1/13*(32*zeta^7 + 28*zeta^6 - 236*zeta^5 - 188*zeta^4 + 512*zeta^3 
+ 324*zeta^2 - 284*zeta - 84)*q^298 + 1/13*(-2*zeta^7 - 6*zeta^6 + 2*zeta^5 + 
50*zeta^4 + 36*zeta^3 - 118*zeta^2 - 46*zeta + 52)*q^299 + 1/13*(zeta^7 + 
3*zeta^6 - zeta^5 - 8*zeta^4 - 18*zeta^3 - 9*zeta^2 + 40*zeta + 8)*q^300 + 
1/13*(36*zeta^7 + 108*zeta^6 - 189*zeta^5 - 594*zeta^4 + 270*zeta^3 + 747*zeta^2
- 90*zeta - 18)*q^301 + 1/13*(10*zeta^7 + 30*zeta^6 - 95*zeta^5 - 165*zeta^4 + 
245*zeta^3 + 250*zeta^2 - 110*zeta - 90)*q^302 + 1/13*(117*zeta^7 + 45*zeta^6 - 
729*zeta^5 - 171*zeta^4 + 1260*zeta^3 + 18*zeta^2 - 522*zeta + 171)*q^303 + 
1/13*(-36*zeta^7 - 40*zeta^6 + 240*zeta^5 + 220*zeta^4 - 440*zeta^3 - 288*zeta^2
+ 192*zeta + 52)*q^304 + 1/13*(-2*zeta^7 - 6*zeta^6 + 2*zeta^5 + 33*zeta^4 + 
19*zeta^3 - 50*zeta^2 - 12*zeta + 18)*q^305 + 1/13*(14*zeta^7 + 42*zeta^6 - 
14*zeta^5 - 231*zeta^4 - 133*zeta^3 + 350*zeta^2 + 84*zeta - 126)*q^307 + 
1/13*(-26*zeta^7 - 10*zeta^6 + 162*zeta^5 + 38*zeta^4 - 280*zeta^3 - 4*zeta^2 + 
116*zeta - 38)*q^309 + 1/13*(14*zeta^7 + 42*zeta^6 - 133*zeta^5 - 231*zeta^4 + 
343*zeta^3 + 350*zeta^2 - 154*zeta - 126)*q^310 + 1/13*(-20*zeta^7 - 60*zeta^6 +
105*zeta^5 + 330*zeta^4 - 150*zeta^3 - 415*zeta^2 + 50*zeta + 10)*q^311 + 
1/13*(3*zeta^7 + 9*zeta^6 - 3*zeta^5 - 24*zeta^4 - 54*zeta^3 - 27*zeta^2 + 
120*zeta + 24)*q^312 + 1/13*(6*zeta^7 + 18*zeta^6 - 6*zeta^5 - 150*zeta^4 - 
108*zeta^3 + 354*zeta^2 + 138*zeta - 156)*q^313 + 1/13*(-56*zeta^7 - 49*zeta^6 +
413*zeta^5 + 329*zeta^4 - 896*zeta^3 - 567*zeta^2 + 497*zeta + 147)*q^314 + 
1/13*(24*zeta^7 + 21*zeta^6 - 177*zeta^5 - 141*zeta^4 + 384*zeta^3 + 243*zeta^2 
- 213*zeta - 63)*q^315 + 1/13*(10*zeta^7 + 30*zeta^6 - 10*zeta^5 - 250*zeta^4 - 
180*zeta^3 + 590*zeta^2 + 230*zeta - 260)*q^316 + 1/13*(-14*zeta^7 - 42*zeta^6 +
14*zeta^5 + 112*zeta^4 + 252*zeta^3 + 126*zeta^2 - 560*zeta - 112)*q^317 + 
1/13*(-36*zeta^7 - 108*zeta^6 + 189*zeta^5 + 594*zeta^4 - 270*zeta^3 - 
747*zeta^2 + 90*zeta + 18)*q^318 + 1/13*(-18*zeta^7 - 54*zeta^6 + 171*zeta^5 + 
297*zeta^4 - 441*zeta^3 - 450*zeta^2 + 198*zeta + 162)*q^319 + 1/13*(-65*zeta^7 
- 25*zeta^6 + 405*zeta^5 + 95*zeta^4 - 700*zeta^3 - 10*zeta^2 + 290*zeta - 
95)*q^320 + 1/13*(27*zeta^7 + 30*zeta^6 - 180*zeta^5 - 165*zeta^4 + 330*zeta^3 +
216*zeta^2 - 144*zeta - 39)*q^321 + 1/13*(4*zeta^7 + 12*zeta^6 - 4*zeta^5 - 
66*zeta^4 - 38*zeta^3 + 100*zeta^2 + 24*zeta - 36)*q^322 + 1/13*(-8*zeta^7 - 
24*zeta^6 + 8*zeta^5 + 132*zeta^4 + 76*zeta^3 - 200*zeta^2 - 48*zeta + 72)*q^324
+ 1/13*(195*zeta^7 + 75*zeta^6 - 1215*zeta^5 - 285*zeta^4 + 2100*zeta^3 + 
30*zeta^2 - 870*zeta + 285)*q^326 + 1/13*(10*zeta^7 + 30*zeta^6 - 95*zeta^5 - 
165*zeta^4 + 245*zeta^3 + 250*zeta^2 - 110*zeta - 90)*q^327 + 1/13*(3*zeta^7 + 
9*zeta^6 - 3*zeta^5 - 24*zeta^4 - 54*zeta^3 - 27*zeta^2 + 120*zeta + 24)*q^329 +
1/13*(9*zeta^7 + 27*zeta^6 - 9*zeta^5 - 225*zeta^4 - 162*zeta^3 + 531*zeta^2 + 
207*zeta - 234)*q^330 + 1/13*(-8*zeta^7 - 7*zeta^6 + 59*zeta^5 + 47*zeta^4 - 
128*zeta^3 - 81*zeta^2 + 71*zeta + 21)*q^331 + 1/13*(8*zeta^7 + 7*zeta^6 - 
59*zeta^5 - 47*zeta^4 + 128*zeta^3 + 81*zeta^2 - 71*zeta - 21)*q^332 + 
1/13*(4*zeta^7 + 12*zeta^6 - 4*zeta^5 - 100*zeta^4 - 72*zeta^3 + 236*zeta^2 + 
92*zeta - 104)*q^333 + 1/13*(20*zeta^7 + 60*zeta^6 - 20*zeta^5 - 160*zeta^4 - 
360*zeta^3 - 180*zeta^2 + 800*zeta + 160)*q^334 + 1/13*(40*zeta^7 + 120*zeta^6 -
210*zeta^5 - 660*zeta^4 + 300*zeta^3 + 830*zeta^2 - 100*zeta - 20)*q^335 + 
1/13*(-14*zeta^7 - 42*zeta^6 + 133*zeta^5 + 231*zeta^4 - 343*zeta^3 - 350*zeta^2
+ 154*zeta + 126)*q^336 + 1/13*(65*zeta^7 + 25*zeta^6 - 405*zeta^5 - 95*zeta^4 +
700*zeta^3 + 10*zeta^2 - 290*zeta + 95)*q^337 + 1/13*(54*zeta^7 + 60*zeta^6 - 
360*zeta^5 - 330*zeta^4 + 660*zeta^3 + 432*zeta^2 - 288*zeta - 78)*q^338 + 
1/13*(12*zeta^7 + 36*zeta^6 - 12*zeta^5 - 198*zeta^4 - 114*zeta^3 + 300*zeta^2 +
72*zeta - 108)*q^341 + 1/13*(81*zeta^7 + 90*zeta^6 - 540*zeta^5 - 495*zeta^4 + 
990*zeta^3 + 648*zeta^2 - 432*zeta - 117)*q^342 + 1/13*(52*zeta^7 + 20*zeta^6 - 
324*zeta^5 - 76*zeta^4 + 560*zeta^3 + 8*zeta^2 - 232*zeta + 76)*q^343 + 
1/13*(12*zeta^7 + 36*zeta^6 - 114*zeta^5 - 198*zeta^4 + 294*zeta^3 + 300*zeta^2 
- 132*zeta - 108)*q^344 + 1/13*(-12*zeta^7 - 36*zeta^6 + 63*zeta^5 + 198*zeta^4 
- 90*zeta^3 - 249*zeta^2 + 30*zeta + 6)*q^345 + 1/13*(-5*zeta^7 - 15*zeta^6 + 
5*zeta^5 + 40*zeta^4 + 90*zeta^3 + 45*zeta^2 - 200*zeta - 40)*q^346 + 
1/13*(-zeta^7 - 3*zeta^6 + zeta^5 + 25*zeta^4 + 18*zeta^3 - 59*zeta^2 - 23*zeta 
+ 26)*q^347 + 1/13*(-96*zeta^7 - 84*zeta^6 + 708*zeta^5 + 564*zeta^4 - 
1536*zeta^3 - 972*zeta^2 + 852*zeta + 252)*q^348 + 1/13*(-16*zeta^7 - 14*zeta^6 
+ 118*zeta^5 + 94*zeta^4 - 256*zeta^3 - 162*zeta^2 + 142*zeta + 42)*q^349 + 
1/13*(4*zeta^7 + 12*zeta^6 - 4*zeta^5 - 100*zeta^4 - 72*zeta^3 + 236*zeta^2 + 
92*zeta - 104)*q^350 + 1/13*(5*zeta^7 + 15*zeta^6 - 5*zeta^5 - 40*zeta^4 - 
90*zeta^3 - 45*zeta^2 + 200*zeta + 40)*q^351 + 1/13*(12*zeta^7 + 36*zeta^6 - 
63*zeta^5 - 198*zeta^4 + 90*zeta^3 + 249*zeta^2 - 30*zeta - 6)*q^352 + 
1/13*(18*zeta^7 + 20*zeta^6 - 120*zeta^5 - 110*zeta^4 + 220*zeta^3 + 144*zeta^2 
- 96*zeta - 26)*q^355 + 1/13*(4*zeta^7 + 12*zeta^6 - 4*zeta^5 - 66*zeta^4 - 
38*zeta^3 + 100*zeta^2 + 24*zeta - 36)*q^356 + 1/13*(18*zeta^7 + 54*zeta^6 - 
18*zeta^5 - 297*zeta^4 - 171*zeta^3 + 450*zeta^2 + 108*zeta - 162)*q^358 + 
1/13*(27*zeta^7 + 30*zeta^6 - 180*zeta^5 - 165*zeta^4 + 330*zeta^3 + 216*zeta^2 
- 144*zeta - 39)*q^359 + 1/13*(-6*zeta^7 - 18*zeta^6 + 57*zeta^5 + 99*zeta^4 - 
147*zeta^3 - 150*zeta^2 + 66*zeta + 54)*q^361 + 1/13*(68*zeta^7 + 204*zeta^6 - 
357*zeta^5 - 1122*zeta^4 + 510*zeta^3 + 1411*zeta^2 - 170*zeta - 34)*q^362 + 
1/13*(-2*zeta^7 - 6*zeta^6 + 2*zeta^5 + 16*zeta^4 + 36*zeta^3 + 18*zeta^2 - 
80*zeta - 16)*q^363 + 1/13*(zeta^7 + 3*zeta^6 - zeta^5 - 25*zeta^4 - 18*zeta^3 +
59*zeta^2 + 23*zeta - 26)*q^364 + 1/13*(24*zeta^7 + 21*zeta^6 - 177*zeta^5 - 
141*zeta^4 + 384*zeta^3 + 243*zeta^2 - 213*zeta - 63)*q^365 + 1/13*(-144*zeta^7 
- 126*zeta^6 + 1062*zeta^5 + 846*zeta^4 - 2304*zeta^3 - 1458*zeta^2 + 1278*zeta 
+ 378)*q^366 + 1/13*(2*zeta^7 + 6*zeta^6 - 2*zeta^5 - 50*zeta^4 - 36*zeta^3 + 
118*zeta^2 + 46*zeta - 52)*q^367 + 1/13*(zeta^7 + 3*zeta^6 - zeta^5 - 8*zeta^4 -
18*zeta^3 - 9*zeta^2 + 40*zeta + 8)*q^368 + 1/13*(-24*zeta^7 - 72*zeta^6 + 
126*zeta^5 + 396*zeta^4 - 180*zeta^3 - 498*zeta^2 + 60*zeta + 12)*q^369 + 
1/13*(8*zeta^7 + 24*zeta^6 - 76*zeta^5 - 132*zeta^4 + 196*zeta^3 + 200*zeta^2 - 
88*zeta - 72)*q^370 + 1/13*(-156*zeta^7 - 60*zeta^6 + 972*zeta^5 + 228*zeta^4 - 
1680*zeta^3 - 24*zeta^2 + 696*zeta - 228)*q^371 + 1/13*(-45*zeta^7 - 50*zeta^6 +
300*zeta^5 + 275*zeta^4 - 550*zeta^3 - 360*zeta^2 + 240*zeta + 65)*q^372 + 
1/13*(8*zeta^7 + 24*zeta^6 - 8*zeta^5 - 132*zeta^4 - 76*zeta^3 + 200*zeta^2 + 
48*zeta - 72)*q^373 + 1/13*(-6*zeta^7 - 18*zeta^6 + 6*zeta^5 + 99*zeta^4 + 
57*zeta^3 - 150*zeta^2 - 36*zeta + 54)*q^375 + 1/13*(-117*zeta^7 - 45*zeta^6 + 
729*zeta^5 + 171*zeta^4 - 1260*zeta^3 - 18*zeta^2 + 522*zeta - 171)*q^377 + 
1/13*(-6*zeta^7 - 18*zeta^6 + 57*zeta^5 + 99*zeta^4 - 147*zeta^3 - 150*zeta^2 + 
66*zeta + 54)*q^378 + 1/13*(8*zeta^7 + 24*zeta^6 - 42*zeta^5 - 132*zeta^4 + 
60*zeta^3 + 166*zeta^2 - 20*zeta - 4)*q^379 + (-zeta^7 - 3*zeta^6 + zeta^5 + 
8*zeta^4 + 18*zeta^3 + 9*zeta^2 - 40*zeta - 8)*q^380 + 1/13*(zeta^7 + 3*zeta^6 -
zeta^5 - 25*zeta^4 - 18*zeta^3 + 59*zeta^2 + 23*zeta - 26)*q^381 + 
1/13*(80*zeta^7 + 70*zeta^6 - 590*zeta^5 - 470*zeta^4 + 1280*zeta^3 + 810*zeta^2
- 710*zeta - 210)*q^382 + 1/13*(24*zeta^7 + 21*zeta^6 - 177*zeta^5 - 141*zeta^4 
+ 384*zeta^3 + 243*zeta^2 - 213*zeta - 63)*q^383 + 1/13*(-12*zeta^7 - 36*zeta^6 
+ 12*zeta^5 + 300*zeta^4 + 216*zeta^3 - 708*zeta^2 - 276*zeta + 312)*q^384 + 
1/13*(-3*zeta^7 - 9*zeta^6 + 3*zeta^5 + 24*zeta^4 + 54*zeta^3 + 27*zeta^2 - 
120*zeta - 24)*q^385 + 1/13*(-20*zeta^7 - 60*zeta^6 + 105*zeta^5 + 330*zeta^4 - 
150*zeta^3 - 415*zeta^2 + 50*zeta + 10)*q^386 + 1/13*(-14*zeta^7 - 42*zeta^6 + 
133*zeta^5 + 231*zeta^4 - 343*zeta^3 - 350*zeta^2 + 154*zeta + 126)*q^387 + 
1/13*(-130*zeta^7 - 50*zeta^6 + 810*zeta^5 + 190*zeta^4 - 1400*zeta^3 - 
20*zeta^2 + 580*zeta - 190)*q^388 + 1/13*(108*zeta^7 + 120*zeta^6 - 720*zeta^5 -
660*zeta^4 + 1320*zeta^3 + 864*zeta^2 - 576*zeta - 156)*q^389 + 1/13*(-12*zeta^7
- 36*zeta^6 + 12*zeta^5 + 198*zeta^4 + 114*zeta^3 - 300*zeta^2 - 72*zeta + 
108)*q^390 + 1/13*(18*zeta^7 + 54*zeta^6 - 18*zeta^5 - 297*zeta^4 - 171*zeta^3 +
450*zeta^2 + 108*zeta - 162)*q^392 + 1/13*(39*zeta^7 + 15*zeta^6 - 243*zeta^5 - 
57*zeta^4 + 420*zeta^3 + 6*zeta^2 - 174*zeta + 57)*q^394 + 1/13*(-12*zeta^7 - 
36*zeta^6 + 114*zeta^5 + 198*zeta^4 - 294*zeta^3 - 300*zeta^2 + 132*zeta + 
108)*q^395 + 1/13*(-12*zeta^7 - 36*zeta^6 + 63*zeta^5 + 198*zeta^4 - 90*zeta^3 -
249*zeta^2 + 30*zeta + 6)*q^396 + 1/13*(2*zeta^7 + 6*zeta^6 - 2*zeta^5 - 
16*zeta^4 - 36*zeta^3 - 18*zeta^2 + 80*zeta + 16)*q^397 + 1/13*(-zeta^7 - 
3*zeta^6 + zeta^5 + 25*zeta^4 + 18*zeta^3 - 59*zeta^2 - 23*zeta + 26)*q^398 + 
1/13*(88*zeta^7 + 77*zeta^6 - 649*zeta^5 - 517*zeta^4 + 1408*zeta^3 + 891*zeta^2
- 781*zeta - 231)*q^399 + 1/13*(-24*zeta^7 - 21*zeta^6 + 177*zeta^5 + 141*zeta^4
- 384*zeta^3 - 243*zeta^2 + 213*zeta + 63)*q^400 + 1/13*(zeta^7 + 3*zeta^6 - 
zeta^5 - 25*zeta^4 - 18*zeta^3 + 59*zeta^2 + 23*zeta - 26)*q^401 + 
1/13*(-6*zeta^7 - 18*zeta^6 + 6*zeta^5 + 48*zeta^4 + 108*zeta^3 + 54*zeta^2 - 
240*zeta - 48)*q^402 + 1/13*(-12*zeta^7 - 36*zeta^6 + 63*zeta^5 + 198*zeta^4 - 
90*zeta^3 - 249*zeta^2 + 30*zeta + 6)*q^403 + 1/13*(10*zeta^7 + 30*zeta^6 - 
95*zeta^5 - 165*zeta^4 + 245*zeta^3 + 250*zeta^2 - 110*zeta - 90)*q^404 + 
1/13*(-78*zeta^7 - 30*zeta^6 + 486*zeta^5 + 114*zeta^4 - 840*zeta^3 - 12*zeta^2 
+ 348*zeta - 114)*q^405 + 1/13*(27*zeta^7 + 30*zeta^6 - 180*zeta^5 - 165*zeta^4 
+ 330*zeta^3 + 216*zeta^2 - 144*zeta - 39)*q^406 + 1/13*(12*zeta^7 + 36*zeta^6 -
12*zeta^5 - 198*zeta^4 - 114*zeta^3 + 300*zeta^2 + 72*zeta - 108)*q^407 + 
1/13*(12*zeta^7 + 36*zeta^6 - 12*zeta^5 - 198*zeta^4 - 114*zeta^3 + 300*zeta^2 +
72*zeta - 108)*q^409 + 1/13*(-54*zeta^7 - 60*zeta^6 + 360*zeta^5 + 330*zeta^4 - 
660*zeta^3 - 432*zeta^2 + 288*zeta + 78)*q^410 + 1/13*(-156*zeta^7 - 60*zeta^6 +
972*zeta^5 + 228*zeta^4 - 1680*zeta^3 - 24*zeta^2 + 696*zeta - 228)*q^411 + 
1/13*(-4*zeta^7 - 12*zeta^6 + 38*zeta^5 + 66*zeta^4 - 98*zeta^3 - 100*zeta^2 + 
44*zeta + 36)*q^412 + 1/13*(-24*zeta^7 - 72*zeta^6 + 126*zeta^5 + 396*zeta^4 - 
180*zeta^3 - 498*zeta^2 + 60*zeta + 12)*q^413 + 1/13*(-3*zeta^7 - 9*zeta^6 + 
3*zeta^5 + 24*zeta^4 + 54*zeta^3 + 27*zeta^2 - 120*zeta - 24)*q^414 + 
1/13*(-4*zeta^7 - 12*zeta^6 + 4*zeta^5 + 100*zeta^4 + 72*zeta^3 - 236*zeta^2 - 
92*zeta + 104)*q^415 + 1/13*(-40*zeta^7 - 35*zeta^6 + 295*zeta^5 + 235*zeta^4 - 
640*zeta^3 - 405*zeta^2 + 355*zeta + 105)*q^416 + 1/13*(-64*zeta^7 - 56*zeta^6 +
472*zeta^5 + 376*zeta^4 - 1024*zeta^3 - 648*zeta^2 + 568*zeta + 168)*q^417 + 
1/13*(-6*zeta^7 - 18*zeta^6 + 6*zeta^5 + 150*zeta^4 + 108*zeta^3 - 354*zeta^2 - 
138*zeta + 156)*q^418 + 1/13*(4*zeta^7 + 12*zeta^6 - 4*zeta^5 - 32*zeta^4 - 
72*zeta^3 - 36*zeta^2 + 160*zeta + 32)*q^419 + (2*zeta^7 + 6*zeta^6 - 19*zeta^5 
- 33*zeta^4 + 49*zeta^3 + 50*zeta^2 - 22*zeta - 18)*q^421 + (13*zeta^7 + 
5*zeta^6 - 81*zeta^5 - 19*zeta^4 + 140*zeta^3 + 2*zeta^2 - 58*zeta + 19)*q^422 +
1/13*(-27*zeta^7 - 30*zeta^6 + 180*zeta^5 + 165*zeta^4 - 330*zeta^3 - 216*zeta^2
+ 144*zeta + 39)*q^423 + 1/13*(18*zeta^7 + 54*zeta^6 - 18*zeta^5 - 297*zeta^4 - 
171*zeta^3 + 450*zeta^2 + 108*zeta - 162)*q^424 + 1/13*(-24*zeta^7 - 72*zeta^6 +
24*zeta^5 + 396*zeta^4 + 228*zeta^3 - 600*zeta^2 - 144*zeta + 216)*q^426 + 
1/13*(-99*zeta^7 - 110*zeta^6 + 660*zeta^5 + 605*zeta^4 - 1210*zeta^3 - 
792*zeta^2 + 528*zeta + 143)*q^427 + 1/13*(-143*zeta^7 - 55*zeta^6 + 891*zeta^5 
+ 209*zeta^4 - 1540*zeta^3 - 22*zeta^2 + 638*zeta - 209)*q^428 + 1/13*(-6*zeta^7
- 18*zeta^6 + 57*zeta^5 + 99*zeta^4 - 147*zeta^3 - 150*zeta^2 + 66*zeta + 
54)*q^429 + 1/13*(-4*zeta^7 - 12*zeta^6 + 21*zeta^5 + 66*zeta^4 - 30*zeta^3 - 
83*zeta^2 + 10*zeta + 2)*q^430 + 1/13*(3*zeta^7 + 9*zeta^6 - 3*zeta^5 - 
24*zeta^4 - 54*zeta^3 - 27*zeta^2 + 120*zeta + 24)*q^431 + 1/13*(-zeta^7 - 
3*zeta^6 + zeta^5 + 25*zeta^4 + 18*zeta^3 - 59*zeta^2 - 23*zeta + 26)*q^432 + 
1/13*(40*zeta^7 + 35*zeta^6 - 295*zeta^5 - 235*zeta^4 + 640*zeta^3 + 405*zeta^2 
- 355*zeta - 105)*q^434 + 1/13*(-9*zeta^7 - 27*zeta^6 + 9*zeta^5 + 225*zeta^4 + 
162*zeta^3 - 531*zeta^2 - 207*zeta + 234)*q^435 + (-zeta^7 - 3*zeta^6 + zeta^5 +
8*zeta^4 + 18*zeta^3 + 9*zeta^2 - 40*zeta - 8)*q^436 + 1/13*(8*zeta^7 + 
24*zeta^6 - 42*zeta^5 - 132*zeta^4 + 60*zeta^3 + 166*zeta^2 - 20*zeta - 4)*q^437
+ 1/13*(12*zeta^7 + 36*zeta^6 - 114*zeta^5 - 198*zeta^4 + 294*zeta^3 + 
300*zeta^2 - 132*zeta - 108)*q^438 + 1/13*(-130*zeta^7 - 50*zeta^6 + 810*zeta^5 
+ 190*zeta^4 - 1400*zeta^3 - 20*zeta^2 + 580*zeta - 190)*q^439 + 
1/13*(-81*zeta^7 - 90*zeta^6 + 540*zeta^5 + 495*zeta^4 - 990*zeta^3 - 648*zeta^2
+ 432*zeta + 117)*q^440 + 1/13*(-28*zeta^7 - 84*zeta^6 + 28*zeta^5 + 462*zeta^4 
+ 266*zeta^3 - 700*zeta^2 - 168*zeta + 252)*q^443 + 1/13*(-18*zeta^7 - 20*zeta^6
+ 120*zeta^5 + 110*zeta^4 - 220*zeta^3 - 144*zeta^2 + 96*zeta + 26)*q^444 + 
1/13*(-26*zeta^7 - 10*zeta^6 + 162*zeta^5 + 38*zeta^4 - 280*zeta^3 - 4*zeta^2 + 
116*zeta - 38)*q^445 + 1/13*(-42*zeta^7 - 126*zeta^6 + 399*zeta^5 + 693*zeta^4 -
1029*zeta^3 - 1050*zeta^2 + 462*zeta + 378)*q^446 + 1/13*(24*zeta^7 + 72*zeta^6 
- 126*zeta^5 - 396*zeta^4 + 180*zeta^3 + 498*zeta^2 - 60*zeta - 12)*q^447 + 
1/13*(7*zeta^7 + 21*zeta^6 - 7*zeta^5 - 56*zeta^4 - 126*zeta^3 - 63*zeta^2 + 
280*zeta + 56)*q^448 + 1/13*(-5*zeta^7 - 15*zeta^6 + 5*zeta^5 + 125*zeta^4 + 
90*zeta^3 - 295*zeta^2 - 115*zeta + 130)*q^449 + 1/13*(24*zeta^7 + 21*zeta^6 - 
177*zeta^5 - 141*zeta^4 + 384*zeta^3 + 243*zeta^2 - 213*zeta - 63)*q^450 + 
1/13*(-10*zeta^7 - 30*zeta^6 + 10*zeta^5 + 250*zeta^4 + 180*zeta^3 - 590*zeta^2 
- 230*zeta + 260)*q^452 + 1/13*(5*zeta^7 + 15*zeta^6 - 5*zeta^5 - 40*zeta^4 - 
90*zeta^3 - 45*zeta^2 + 200*zeta + 40)*q^453 + 1/13*(-36*zeta^7 - 108*zeta^6 + 
189*zeta^5 + 594*zeta^4 - 270*zeta^3 - 747*zeta^2 + 90*zeta + 18)*q^454 + 
1/13*(-2*zeta^7 - 6*zeta^6 + 19*zeta^5 + 33*zeta^4 - 49*zeta^3 - 50*zeta^2 + 
22*zeta + 18)*q^455 + 1/13*(-39*zeta^7 - 15*zeta^6 + 243*zeta^5 + 57*zeta^4 - 
420*zeta^3 - 6*zeta^2 + 174*zeta - 57)*q^456 + 1/13*(-45*zeta^7 - 50*zeta^6 + 
300*zeta^5 + 275*zeta^4 - 550*zeta^3 - 360*zeta^2 + 240*zeta + 65)*q^457 + 
1/13*(10*zeta^7 + 30*zeta^6 - 10*zeta^5 - 165*zeta^4 - 95*zeta^3 + 250*zeta^2 + 
60*zeta - 90)*q^460 + 1/13*(-72*zeta^7 - 80*zeta^6 + 480*zeta^5 + 440*zeta^4 - 
880*zeta^3 - 576*zeta^2 + 384*zeta + 104)*q^461 + 1/13*(-117*zeta^7 - 45*zeta^6 
+ 729*zeta^5 + 171*zeta^4 - 1260*zeta^3 - 18*zeta^2 + 522*zeta - 171)*q^462 + 
1/13*(-12*zeta^7 - 36*zeta^6 + 114*zeta^5 + 198*zeta^4 - 294*zeta^3 - 300*zeta^2
+ 132*zeta + 108)*q^463 + 1/13*(6*zeta^7 + 18*zeta^6 - 6*zeta^5 - 48*zeta^4 - 
108*zeta^3 - 54*zeta^2 + 240*zeta + 48)*q^465 + 1/13*(-12*zeta^7 - 36*zeta^6 + 
12*zeta^5 + 300*zeta^4 + 216*zeta^3 - 708*zeta^2 - 276*zeta + 312)*q^466 + 
1/13*(24*zeta^7 + 21*zeta^6 - 177*zeta^5 - 141*zeta^4 + 384*zeta^3 + 243*zeta^2 
- 213*zeta - 63)*q^467 + 1/13*(32*zeta^7 + 28*zeta^6 - 236*zeta^5 - 188*zeta^4 +
512*zeta^3 + 324*zeta^2 - 284*zeta - 84)*q^468 + 1/13*(-6*zeta^7 - 18*zeta^6 + 
6*zeta^5 + 150*zeta^4 + 108*zeta^3 - 354*zeta^2 - 138*zeta + 156)*q^469 + 
1/13*(3*zeta^7 + 9*zeta^6 - 3*zeta^5 - 24*zeta^4 - 54*zeta^3 - 27*zeta^2 + 
120*zeta + 24)*q^470 + 1/13*(-32*zeta^7 - 96*zeta^6 + 168*zeta^5 + 528*zeta^4 - 
240*zeta^3 - 664*zeta^2 + 80*zeta + 16)*q^471 + 1/13*(78*zeta^7 + 30*zeta^6 - 
486*zeta^5 - 114*zeta^4 + 840*zeta^3 + 12*zeta^2 - 348*zeta + 114)*q^473 + 
1/13*(108*zeta^7 + 120*zeta^6 - 720*zeta^5 - 660*zeta^4 + 1320*zeta^3 + 
864*zeta^2 - 576*zeta - 156)*q^474 + 1/13*(-8*zeta^7 - 24*zeta^6 + 8*zeta^5 + 
132*zeta^4 + 76*zeta^3 - 200*zeta^2 - 48*zeta + 72)*q^475 + 1/13*(-18*zeta^7 - 
54*zeta^6 + 18*zeta^5 + 297*zeta^4 + 171*zeta^3 - 450*zeta^2 - 108*zeta + 
162)*q^477 + 1/13*(9*zeta^7 + 10*zeta^6 - 60*zeta^5 - 55*zeta^4 + 110*zeta^3 + 
72*zeta^2 - 48*zeta - 13)*q^478 + 1/13*(156*zeta^7 + 60*zeta^6 - 972*zeta^5 - 
228*zeta^4 + 1680*zeta^3 + 24*zeta^2 - 696*zeta + 228)*q^479 + 1/13*(6*zeta^7 + 
18*zeta^6 - 57*zeta^5 - 99*zeta^4 + 147*zeta^3 + 150*zeta^2 - 66*zeta - 
54)*q^480 + 1/13*(-3*zeta^7 - 9*zeta^6 + 3*zeta^5 + 24*zeta^4 + 54*zeta^3 + 
27*zeta^2 - 120*zeta - 24)*q^482 + 1/13*(3*zeta^7 + 9*zeta^6 - 3*zeta^5 - 
75*zeta^4 - 54*zeta^3 + 177*zeta^2 + 69*zeta - 78)*q^483 + 1/13*(-16*zeta^7 - 
14*zeta^6 + 118*zeta^5 + 94*zeta^4 - 256*zeta^3 - 162*zeta^2 + 142*zeta + 
42)*q^484 + 1/13*(-56*zeta^7 - 49*zeta^6 + 413*zeta^5 + 329*zeta^4 - 896*zeta^3 
- 567*zeta^2 + 497*zeta + 147)*q^485 + 1/13*(15*zeta^7 + 45*zeta^6 - 15*zeta^5 -
375*zeta^4 - 270*zeta^3 + 885*zeta^2 + 345*zeta - 390)*q^486 + 1/13*(-3*zeta^7 -
9*zeta^6 + 3*zeta^5 + 24*zeta^4 + 54*zeta^3 + 27*zeta^2 - 120*zeta - 24)*q^487 +
1/13*(72*zeta^7 + 216*zeta^6 - 378*zeta^5 - 1188*zeta^4 + 540*zeta^3 + 
1494*zeta^2 - 180*zeta - 36)*q^488 + (-2*zeta^7 - 6*zeta^6 + 19*zeta^5 + 
33*zeta^4 - 49*zeta^3 - 50*zeta^2 + 22*zeta + 18)*q^489 + 1/13*(156*zeta^7 + 
60*zeta^6 - 972*zeta^5 - 228*zeta^4 + 1680*zeta^3 + 24*zeta^2 - 696*zeta + 
228)*q^490 + 1/13*(-63*zeta^7 - 70*zeta^6 + 420*zeta^5 + 385*zeta^4 - 770*zeta^3
- 504*zeta^2 + 336*zeta + 91)*q^491 + 1/13*(-12*zeta^7 - 36*zeta^6 + 12*zeta^5 +
198*zeta^4 + 114*zeta^3 - 300*zeta^2 - 72*zeta + 108)*q^492 + (2*zeta^7 + 
6*zeta^6 - 2*zeta^5 - 33*zeta^4 - 19*zeta^3 + 50*zeta^2 + 12*zeta - 18)*q^494 + 
1/13*(-39*zeta^7 - 15*zeta^6 + 243*zeta^5 + 57*zeta^4 - 420*zeta^3 - 6*zeta^2 + 
174*zeta - 57)*q^496 + 1/13*(20*zeta^7 + 60*zeta^6 - 190*zeta^5 - 330*zeta^4 + 
490*zeta^3 + 500*zeta^2 - 220*zeta - 180)*q^497 + 1/13*(60*zeta^7 + 180*zeta^6 -
315*zeta^5 - 990*zeta^4 + 450*zeta^3 + 1245*zeta^2 - 150*zeta - 30)*q^498 + 
1/13*(3*zeta^7 + 9*zeta^6 - 3*zeta^5 - 24*zeta^4 - 54*zeta^3 - 27*zeta^2 + 
120*zeta + 24)*q^499 + 1/13*(-9*zeta^7 - 27*zeta^6 + 9*zeta^5 + 225*zeta^4 + 
162*zeta^3 - 531*zeta^2 - 207*zeta + 234)*q^500 + 1/13*(-168*zeta^7 - 147*zeta^6
+ 1239*zeta^5 + 987*zeta^4 - 2688*zeta^3 - 1701*zeta^2 + 1491*zeta + 441)*q^501 
+ 1/13*(96*zeta^7 + 84*zeta^6 - 708*zeta^5 - 564*zeta^4 + 1536*zeta^3 + 
972*zeta^2 - 852*zeta - 252)*q^502 + 1/13*(12*zeta^7 + 36*zeta^6 - 12*zeta^5 - 
300*zeta^4 - 216*zeta^3 + 708*zeta^2 + 276*zeta - 312)*q^503 + 1/13*(-6*zeta^7 -
18*zeta^6 + 6*zeta^5 + 48*zeta^4 + 108*zeta^3 + 54*zeta^2 - 240*zeta - 48)*q^504
+ 1/13*(-28*zeta^7 - 84*zeta^6 + 147*zeta^5 + 462*zeta^4 - 210*zeta^3 - 
581*zeta^2 + 70*zeta + 14)*q^505 + 1/13*(6*zeta^7 + 18*zeta^6 - 57*zeta^5 - 
99*zeta^4 + 147*zeta^3 + 150*zeta^2 - 66*zeta - 54)*q^506 + 1/13*(117*zeta^7 + 
45*zeta^6 - 729*zeta^5 - 171*zeta^4 + 1260*zeta^3 + 18*zeta^2 - 522*zeta + 
171)*q^507 + (-9*zeta^7 - 10*zeta^6 + 60*zeta^5 + 55*zeta^4 - 110*zeta^3 - 
72*zeta^2 + 48*zeta + 13)*q^508 + 1/13*(-4*zeta^7 - 12*zeta^6 + 4*zeta^5 + 
66*zeta^4 + 38*zeta^3 - 100*zeta^2 - 24*zeta + 36)*q^509 + 1/13*(-14*zeta^7 - 
42*zeta^6 + 14*zeta^5 + 231*zeta^4 + 133*zeta^3 - 350*zeta^2 - 84*zeta + 
126)*q^511 + 1/13*(72*zeta^7 + 80*zeta^6 - 480*zeta^5 - 440*zeta^4 + 880*zeta^3 
+ 576*zeta^2 - 384*zeta - 104)*q^512 + 1/13*(91*zeta^7 + 35*zeta^6 - 567*zeta^5 
- 133*zeta^4 + 980*zeta^3 + 14*zeta^2 - 406*zeta + 133)*q^513 + 1/13*(30*zeta^7 
+ 90*zeta^6 - 285*zeta^5 - 495*zeta^4 + 735*zeta^3 + 750*zeta^2 - 330*zeta - 
270)*q^514 + 1/13*(8*zeta^7 + 24*zeta^6 - 42*zeta^5 - 132*zeta^4 + 60*zeta^3 + 
166*zeta^2 - 20*zeta - 4)*q^515 + 1/13*(-zeta^7 - 3*zeta^6 + zeta^5 + 8*zeta^4 +
18*zeta^3 + 9*zeta^2 - 40*zeta - 8)*q^516 + 1/13*(64*zeta^7 + 56*zeta^6 - 
472*zeta^5 - 376*zeta^4 + 1024*zeta^3 + 648*zeta^2 - 568*zeta - 168)*q^518 + 
1/13*(24*zeta^7 + 21*zeta^6 - 177*zeta^5 - 141*zeta^4 + 384*zeta^3 + 243*zeta^2 
- 213*zeta - 63)*q^519 + 1/13*(6*zeta^7 + 18*zeta^6 - 6*zeta^5 - 150*zeta^4 - 
108*zeta^3 + 354*zeta^2 + 138*zeta - 156)*q^520 + 1/13*(16*zeta^7 + 48*zeta^6 - 
16*zeta^5 - 128*zeta^4 - 288*zeta^3 - 144*zeta^2 + 640*zeta + 128)*q^521 + 
1/13*(36*zeta^7 + 108*zeta^6 - 189*zeta^5 - 594*zeta^4 + 270*zeta^3 + 747*zeta^2
- 90*zeta - 18)*q^522 + 1/13*(16*zeta^7 + 48*zeta^6 - 152*zeta^5 - 264*zeta^4 + 
392*zeta^3 + 400*zeta^2 - 176*zeta - 144)*q^523 + 1/13*(-52*zeta^7 - 20*zeta^6 +
324*zeta^5 + 76*zeta^4 - 560*zeta^3 - 8*zeta^2 + 232*zeta - 76)*q^524 + 
1/13*(63*zeta^7 + 70*zeta^6 - 420*zeta^5 - 385*zeta^4 + 770*zeta^3 + 504*zeta^2 
- 336*zeta - 91)*q^525 + 1/13*(-28*zeta^7 - 84*zeta^6 + 28*zeta^5 + 462*zeta^4 +
266*zeta^3 - 700*zeta^2 - 168*zeta + 252)*q^526 + 1/13*(12*zeta^7 + 36*zeta^6 - 
12*zeta^5 - 198*zeta^4 - 114*zeta^3 + 300*zeta^2 + 72*zeta - 108)*q^528 + 
1/13*(9*zeta^7 + 10*zeta^6 - 60*zeta^5 - 55*zeta^4 + 110*zeta^3 + 72*zeta^2 - 
48*zeta - 13)*q^529 + 1/13*(39*zeta^7 + 15*zeta^6 - 243*zeta^5 - 57*zeta^4 + 
420*zeta^3 + 6*zeta^2 - 174*zeta + 57)*q^530 + 1/13*(12*zeta^7 + 36*zeta^6 - 
114*zeta^5 - 198*zeta^4 + 294*zeta^3 + 300*zeta^2 - 132*zeta - 108)*q^531 + 
1/13*(-12*zeta^7 - 36*zeta^6 + 63*zeta^5 + 198*zeta^4 - 90*zeta^3 - 249*zeta^2 +
30*zeta + 6)*q^532 + 1/13*(6*zeta^7 + 18*zeta^6 - 6*zeta^5 - 48*zeta^4 - 
108*zeta^3 - 54*zeta^2 + 240*zeta + 48)*q^533 + 1/13*(12*zeta^7 + 36*zeta^6 - 
12*zeta^5 - 300*zeta^4 - 216*zeta^3 + 708*zeta^2 + 276*zeta - 312)*q^534 + 
1/13*(-56*zeta^7 - 49*zeta^6 + 413*zeta^5 + 329*zeta^4 - 896*zeta^3 - 567*zeta^2
+ 497*zeta + 147)*q^535 + 1/13*(-48*zeta^7 - 42*zeta^6 + 354*zeta^5 + 282*zeta^4
- 768*zeta^3 - 486*zeta^2 + 426*zeta + 126)*q^536 + 1/13*(-8*zeta^7 - 24*zeta^6 
+ 8*zeta^5 + 64*zeta^4 + 144*zeta^3 + 72*zeta^2 - 320*zeta - 64)*q^538 + 
1/13*(-36*zeta^7 - 108*zeta^6 + 189*zeta^5 + 594*zeta^4 - 270*zeta^3 - 
747*zeta^2 + 90*zeta + 18)*q^539 + 1/13*(-24*zeta^7 - 72*zeta^6 + 228*zeta^5 + 
396*zeta^4 - 588*zeta^3 - 600*zeta^2 + 264*zeta + 216)*q^540 + 1/13*(-65*zeta^7 
- 25*zeta^6 + 405*zeta^5 + 95*zeta^4 - 700*zeta^3 - 10*zeta^2 + 290*zeta - 
95)*q^541 + 1/13*(63*zeta^7 + 70*zeta^6 - 420*zeta^5 - 385*zeta^4 + 770*zeta^3 +
504*zeta^2 - 336*zeta - 91)*q^542 + (2*zeta^7 + 6*zeta^6 - 2*zeta^5 - 33*zeta^4 
- 19*zeta^3 + 50*zeta^2 + 12*zeta - 18)*q^543 + 1/13*(18*zeta^7 + 54*zeta^6 - 
18*zeta^5 - 297*zeta^4 - 171*zeta^3 + 450*zeta^2 + 108*zeta - 162)*q^545 + 
1/13*(182*zeta^7 + 70*zeta^6 - 1134*zeta^5 - 266*zeta^4 + 1960*zeta^3 + 
28*zeta^2 - 812*zeta + 266)*q^547 + 1/13*(-20*zeta^7 - 60*zeta^6 + 105*zeta^5 + 
330*zeta^4 - 150*zeta^3 - 415*zeta^2 + 50*zeta + 10)*q^549 + 1/13*(-3*zeta^7 - 
9*zeta^6 + 3*zeta^5 + 24*zeta^4 + 54*zeta^3 + 27*zeta^2 - 120*zeta - 24)*q^550 +
1/13*(15*zeta^7 + 45*zeta^6 - 15*zeta^5 - 375*zeta^4 - 270*zeta^3 + 885*zeta^2 +
345*zeta - 390)*q^551 + 1/13*(16*zeta^7 + 14*zeta^6 - 118*zeta^5 - 94*zeta^4 + 
256*zeta^3 + 162*zeta^2 - 142*zeta - 42)*q^553 + 1/13*(4*zeta^7 + 12*zeta^6 - 
4*zeta^5 - 100*zeta^4 - 72*zeta^3 + 236*zeta^2 + 92*zeta - 104)*q^554 + 
1/13*(6*zeta^7 + 18*zeta^6 - 6*zeta^5 - 48*zeta^4 - 108*zeta^3 - 54*zeta^2 + 
240*zeta + 48)*q^555 + 1/13*(72*zeta^7 + 216*zeta^6 - 378*zeta^5 - 1188*zeta^4 +
540*zeta^3 + 1494*zeta^2 - 180*zeta - 36)*q^556 + 1/13*(-24*zeta^7 - 72*zeta^6 +
228*zeta^5 + 396*zeta^4 - 588*zeta^3 - 600*zeta^2 + 264*zeta + 216)*q^557 + 
1/13*(78*zeta^7 + 30*zeta^6 - 486*zeta^5 - 114*zeta^4 + 840*zeta^3 + 12*zeta^2 -
348*zeta + 114)*q^558 + 1/13*(27*zeta^7 + 30*zeta^6 - 180*zeta^5 - 165*zeta^4 + 
330*zeta^3 + 216*zeta^2 - 144*zeta - 39)*q^559 + 1/13*(-8*zeta^7 - 24*zeta^6 + 
8*zeta^5 + 132*zeta^4 + 76*zeta^3 - 200*zeta^2 - 48*zeta + 72)*q^560 + 
1/13*(-18*zeta^7 - 54*zeta^6 + 18*zeta^5 + 297*zeta^4 + 171*zeta^3 - 450*zeta^2 
- 108*zeta + 162)*q^562 + 1/13*(18*zeta^7 + 20*zeta^6 - 120*zeta^5 - 110*zeta^4 
+ 220*zeta^3 + 144*zeta^2 - 96*zeta - 26)*q^563 + 1/13*(-39*zeta^7 - 15*zeta^6 +
243*zeta^5 + 57*zeta^4 - 420*zeta^3 - 6*zeta^2 + 174*zeta - 57)*q^564 + 
1/13*(10*zeta^7 + 30*zeta^6 - 95*zeta^5 - 165*zeta^4 + 245*zeta^3 + 250*zeta^2 -
110*zeta - 90)*q^565 + 1/13*(-80*zeta^7 - 240*zeta^6 + 420*zeta^5 + 1320*zeta^4 
- 600*zeta^3 - 1660*zeta^2 + 200*zeta + 40)*q^566 + 1/13*(-10*zeta^7 - 30*zeta^6
+ 10*zeta^5 + 80*zeta^4 + 180*zeta^3 + 90*zeta^2 - 400*zeta - 80)*q^567 + 
1/13*(12*zeta^7 + 36*zeta^6 - 12*zeta^5 - 300*zeta^4 - 216*zeta^3 + 708*zeta^2 +
276*zeta - 312)*q^568 + 1/13*(-16*zeta^7 - 14*zeta^6 + 118*zeta^5 + 94*zeta^4 - 
256*zeta^3 - 162*zeta^2 + 142*zeta + 42)*q^569 + 1/13*(48*zeta^7 + 42*zeta^6 - 
354*zeta^5 - 282*zeta^4 + 768*zeta^3 + 486*zeta^2 - 426*zeta - 126)*q^570 + 
1/13*(5*zeta^7 + 15*zeta^6 - 5*zeta^5 - 125*zeta^4 - 90*zeta^3 + 295*zeta^2 + 
115*zeta - 130)*q^571 + 1/13*(9*zeta^7 + 27*zeta^6 - 9*zeta^5 - 72*zeta^4 - 
162*zeta^3 - 81*zeta^2 + 360*zeta + 72)*q^572 + 1/13*(36*zeta^7 + 108*zeta^6 - 
189*zeta^5 - 594*zeta^4 + 270*zeta^3 + 747*zeta^2 - 90*zeta - 18)*q^573 + 
1/13*(12*zeta^7 + 36*zeta^6 - 114*zeta^5 - 198*zeta^4 + 294*zeta^3 + 300*zeta^2 
- 132*zeta - 108)*q^574 + 1/13*(-13*zeta^7 - 5*zeta^6 + 81*zeta^5 + 19*zeta^4 - 
140*zeta^3 - 2*zeta^2 + 58*zeta - 19)*q^575 + 1/13*(-9*zeta^7 - 10*zeta^6 + 
60*zeta^5 + 55*zeta^4 - 110*zeta^3 - 72*zeta^2 + 48*zeta + 13)*q^576 + 
1/13*(28*zeta^7 + 84*zeta^6 - 28*zeta^5 - 462*zeta^4 - 266*zeta^3 + 700*zeta^2 +
168*zeta - 252)*q^577 + 1/13*(14*zeta^7 + 42*zeta^6 - 14*zeta^5 - 231*zeta^4 - 
133*zeta^3 + 350*zeta^2 + 84*zeta - 126)*q^579 + 1/13*(189*zeta^7 + 210*zeta^6 -
1260*zeta^5 - 1155*zeta^4 + 2310*zeta^3 + 1512*zeta^2 - 1008*zeta - 273)*q^580 +
1/13*(182*zeta^7 + 70*zeta^6 - 1134*zeta^5 - 266*zeta^4 + 1960*zeta^3 + 
28*zeta^2 - 812*zeta + 266)*q^581 + 1/13*(18*zeta^7 + 54*zeta^6 - 171*zeta^5 - 
297*zeta^4 + 441*zeta^3 + 450*zeta^2 - 198*zeta - 162)*q^582 + 1/13*(-36*zeta^7 
- 108*zeta^6 + 189*zeta^5 + 594*zeta^4 - 270*zeta^3 - 747*zeta^2 + 90*zeta + 
18)*q^583 + 1/13*(-6*zeta^7 - 18*zeta^6 + 6*zeta^5 + 48*zeta^4 + 108*zeta^3 + 
54*zeta^2 - 240*zeta - 48)*q^584 + 1/13*(3*zeta^7 + 9*zeta^6 - 3*zeta^5 - 
75*zeta^4 - 54*zeta^3 + 177*zeta^2 + 69*zeta - 78)*q^585 + 1/13*(144*zeta^7 + 
126*zeta^6 - 1062*zeta^5 - 846*zeta^4 + 2304*zeta^3 + 1458*zeta^2 - 1278*zeta - 
378)*q^586 + 1/13*(56*zeta^7 + 49*zeta^6 - 413*zeta^5 - 329*zeta^4 + 896*zeta^3 
+ 567*zeta^2 - 497*zeta - 147)*q^587 + 1/13*(9*zeta^7 + 27*zeta^6 - 9*zeta^5 - 
225*zeta^4 - 162*zeta^3 + 531*zeta^2 + 207*zeta - 234)*q^588 + 1/13*(-zeta^7 - 
3*zeta^6 + zeta^5 + 8*zeta^4 + 18*zeta^3 + 9*zeta^2 - 40*zeta - 8)*q^589 + 
1/13*(-24*zeta^7 - 72*zeta^6 + 126*zeta^5 + 396*zeta^4 - 180*zeta^3 - 498*zeta^2
+ 60*zeta + 12)*q^590 + 1/13*(-78*zeta^7 - 30*zeta^6 + 486*zeta^5 + 114*zeta^4 -
840*zeta^3 - 12*zeta^2 + 348*zeta - 114)*q^592 + 1/13*(-108*zeta^7 - 120*zeta^6 
+ 720*zeta^5 + 660*zeta^4 - 1320*zeta^3 - 864*zeta^2 + 576*zeta + 156)*q^593 + 
1/13*(-18*zeta^7 - 54*zeta^6 + 18*zeta^5 + 297*zeta^4 + 171*zeta^3 - 450*zeta^2 
- 108*zeta + 162)*q^594 + 1/13*(-4*zeta^7 - 12*zeta^6 + 4*zeta^5 + 66*zeta^4 + 
38*zeta^3 - 100*zeta^2 - 24*zeta + 36)*q^596 + 1/13*(9*zeta^7 + 10*zeta^6 - 
60*zeta^5 - 55*zeta^4 + 110*zeta^3 + 72*zeta^2 - 48*zeta - 13)*q^597 + 
1/13*(65*zeta^7 + 25*zeta^6 - 405*zeta^5 - 95*zeta^4 + 700*zeta^3 + 10*zeta^2 - 
290*zeta + 95)*q^598 + 1/13*(24*zeta^7 + 72*zeta^6 - 228*zeta^5 - 396*zeta^4 + 
588*zeta^3 + 600*zeta^2 - 264*zeta - 216)*q^599 + 1/13*(-24*zeta^7 - 72*zeta^6 +
126*zeta^5 + 396*zeta^4 - 180*zeta^3 - 498*zeta^2 + 60*zeta + 12)*q^600 + 
1/13*(zeta^7 + 3*zeta^6 - zeta^5 - 8*zeta^4 - 18*zeta^3 - 9*zeta^2 + 40*zeta + 
8)*q^601 + 1/13*(11*zeta^7 + 33*zeta^6 - 11*zeta^5 - 275*zeta^4 - 198*zeta^3 + 
649*zeta^2 + 253*zeta - 286)*q^602 + 1/13*(-64*zeta^7 - 56*zeta^6 + 472*zeta^5 +
376*zeta^4 - 1024*zeta^3 - 648*zeta^2 + 568*zeta + 168)*q^603 + 1/13*(40*zeta^7 
+ 35*zeta^6 - 295*zeta^5 - 235*zeta^4 + 640*zeta^3 + 405*zeta^2 - 355*zeta - 
105)*q^604 + 1/13*(-2*zeta^7 - 6*zeta^6 + 2*zeta^5 + 50*zeta^4 + 36*zeta^3 - 
118*zeta^2 - 46*zeta + 52)*q^605 + 1/13*(-6*zeta^7 - 18*zeta^6 + 6*zeta^5 + 
48*zeta^4 + 108*zeta^3 + 54*zeta^2 - 240*zeta - 48)*q^606 + 1/13*(-48*zeta^7 - 
144*zeta^6 + 252*zeta^5 + 792*zeta^4 - 360*zeta^3 - 996*zeta^2 + 120*zeta + 
24)*q^607 + 1/13*(-22*zeta^7 - 66*zeta^6 + 209*zeta^5 + 363*zeta^4 - 539*zeta^3 
- 550*zeta^2 + 242*zeta + 198)*q^608 + 1/13*(39*zeta^7 + 15*zeta^6 - 243*zeta^5 
- 57*zeta^4 + 420*zeta^3 + 6*zeta^2 - 174*zeta + 57)*q^609 + 1/13*(171*zeta^7 + 
190*zeta^6 - 1140*zeta^5 - 1045*zeta^4 + 2090*zeta^3 + 1368*zeta^2 - 912*zeta - 
247)*q^610 + 1/13*(-6*zeta^7 - 18*zeta^6 + 6*zeta^5 + 99*zeta^4 + 57*zeta^3 - 
150*zeta^2 - 36*zeta + 54)*q^611 + 1/13*(-20*zeta^7 - 60*zeta^6 + 20*zeta^5 + 
330*zeta^4 + 190*zeta^3 - 500*zeta^2 - 120*zeta + 180)*q^613 + 1/13*(-27*zeta^7 
- 30*zeta^6 + 180*zeta^5 + 165*zeta^4 - 330*zeta^3 - 216*zeta^2 + 144*zeta + 
39)*q^614 + 1/13*(-18*zeta^7 - 54*zeta^6 + 171*zeta^5 + 297*zeta^4 - 441*zeta^3 
- 450*zeta^2 + 198*zeta + 162)*q^616 + 1/13*(-20*zeta^7 - 60*zeta^6 + 20*zeta^5 
+ 500*zeta^4 + 360*zeta^3 - 1180*zeta^2 - 460*zeta + 520)*q^619 + 
1/13*(64*zeta^7 + 56*zeta^6 - 472*zeta^5 - 376*zeta^4 + 1024*zeta^3 + 648*zeta^2
- 568*zeta - 168)*q^620 + 1/13*(24*zeta^7 + 21*zeta^6 - 177*zeta^5 - 141*zeta^4 
+ 384*zeta^3 + 243*zeta^2 - 213*zeta - 63)*q^621 + 1/13*(-22*zeta^7 - 66*zeta^6 
+ 22*zeta^5 + 550*zeta^4 + 396*zeta^3 - 1298*zeta^2 - 506*zeta + 572)*q^622 + 
1/13*(-10*zeta^7 - 30*zeta^6 + 10*zeta^5 + 80*zeta^4 + 180*zeta^3 + 90*zeta^2 - 
400*zeta - 80)*q^623 + 1/13*(4*zeta^7 + 12*zeta^6 - 21*zeta^5 - 66*zeta^4 + 
30*zeta^3 + 83*zeta^2 - 10*zeta - 2)*q^624 + 1/13*(16*zeta^7 + 48*zeta^6 - 
152*zeta^5 - 264*zeta^4 + 392*zeta^3 + 400*zeta^2 - 176*zeta - 144)*q^625 + 
1/13*(-26*zeta^7 - 10*zeta^6 + 162*zeta^5 + 38*zeta^4 - 280*zeta^3 - 4*zeta^2 + 
116*zeta - 38)*q^626 + 1/13*(27*zeta^7 + 30*zeta^6 - 180*zeta^5 - 165*zeta^4 + 
330*zeta^3 + 216*zeta^2 - 144*zeta - 39)*q^627 + 1/13*(12*zeta^7 + 36*zeta^6 - 
12*zeta^5 - 198*zeta^4 - 114*zeta^3 + 300*zeta^2 + 72*zeta - 108)*q^628 + 
1/13*(6*zeta^7 + 18*zeta^6 - 6*zeta^5 - 99*zeta^4 - 57*zeta^3 + 150*zeta^2 + 
36*zeta - 54)*q^630 + 1/13*(153*zeta^7 + 170*zeta^6 - 1020*zeta^5 - 935*zeta^4 +
1870*zeta^3 + 1224*zeta^2 - 816*zeta - 221)*q^631 + 1/13*(-156*zeta^7 - 
60*zeta^6 + 972*zeta^5 + 228*zeta^4 - 1680*zeta^3 - 24*zeta^2 + 696*zeta - 
228)*q^632 + 1/13*(-32*zeta^7 - 96*zeta^6 + 304*zeta^5 + 528*zeta^4 - 784*zeta^3
- 800*zeta^2 + 352*zeta + 288)*q^633 + 1/13*(-20*zeta^7 - 60*zeta^6 + 105*zeta^5
+ 330*zeta^4 - 150*zeta^3 - 415*zeta^2 + 50*zeta + 10)*q^634 + 1/13*(7*zeta^7 + 
21*zeta^6 - 7*zeta^5 - 56*zeta^4 - 126*zeta^3 - 63*zeta^2 + 280*zeta + 56)*q^635
+ 1/13*(48*zeta^7 + 42*zeta^6 - 354*zeta^5 - 282*zeta^4 + 768*zeta^3 + 
486*zeta^2 - 426*zeta - 126)*q^637 + 1/13*(-144*zeta^7 - 126*zeta^6 + 
1062*zeta^5 + 846*zeta^4 - 2304*zeta^3 - 1458*zeta^2 + 1278*zeta + 378)*q^638 + 
1/13*(-6*zeta^7 - 18*zeta^6 + 6*zeta^5 + 150*zeta^4 + 108*zeta^3 - 354*zeta^2 - 
138*zeta + 156)*q^639 + 1/13*(-15*zeta^7 - 45*zeta^6 + 15*zeta^5 + 120*zeta^4 + 
270*zeta^3 + 135*zeta^2 - 600*zeta - 120)*q^640 + 1/13*(12*zeta^7 + 36*zeta^6 - 
63*zeta^5 - 198*zeta^4 + 90*zeta^3 + 249*zeta^2 - 30*zeta - 6)*q^641 + 
1/13*(24*zeta^7 + 72*zeta^6 - 228*zeta^5 - 396*zeta^4 + 588*zeta^3 + 600*zeta^2 
- 264*zeta - 216)*q^642 + 1/13*(-78*zeta^7 - 30*zeta^6 + 486*zeta^5 + 114*zeta^4
- 840*zeta^3 - 12*zeta^2 + 348*zeta - 114)*q^643 + 1/13*(-9*zeta^7 - 10*zeta^6 +
60*zeta^5 + 55*zeta^4 - 110*zeta^3 - 72*zeta^2 + 48*zeta + 13)*q^644 + 
1/13*(-12*zeta^7 - 36*zeta^6 + 12*zeta^5 + 198*zeta^4 + 114*zeta^3 - 300*zeta^2 
- 72*zeta + 108)*q^645 + 1/13*(40*zeta^7 + 120*zeta^6 - 40*zeta^5 - 660*zeta^4 -
380*zeta^3 + 1000*zeta^2 + 240*zeta - 360)*q^647 + 1/13*(-54*zeta^7 - 60*zeta^6 
+ 360*zeta^5 + 330*zeta^4 - 660*zeta^3 - 432*zeta^2 + 288*zeta + 78)*q^648 + 
1/13*(-2*zeta^7 - 6*zeta^6 + 19*zeta^5 + 33*zeta^4 - 49*zeta^3 - 50*zeta^2 + 
22*zeta + 18)*q^650 + 1/13*(32*zeta^7 + 96*zeta^6 - 168*zeta^5 - 528*zeta^4 + 
240*zeta^3 + 664*zeta^2 - 80*zeta - 16)*q^651 + 1/13*(17*zeta^7 + 51*zeta^6 - 
17*zeta^5 - 136*zeta^4 - 306*zeta^3 - 153*zeta^2 + 680*zeta + 136)*q^652 + 
1/13*(6*zeta^7 + 18*zeta^6 - 6*zeta^5 - 150*zeta^4 - 108*zeta^3 + 354*zeta^2 + 
138*zeta - 156)*q^653 + 1/13*(96*zeta^7 + 84*zeta^6 - 708*zeta^5 - 564*zeta^4 + 
1536*zeta^3 + 972*zeta^2 - 852*zeta - 252)*q^654 + 1/13*(-16*zeta^7 - 14*zeta^6 
+ 118*zeta^5 + 94*zeta^4 - 256*zeta^3 - 162*zeta^2 + 142*zeta + 42)*q^655 + 
1/13*(6*zeta^7 + 18*zeta^6 - 6*zeta^5 - 150*zeta^4 - 108*zeta^3 + 354*zeta^2 + 
138*zeta - 156)*q^656 + 1/13*(5*zeta^7 + 15*zeta^6 - 5*zeta^5 - 40*zeta^4 - 
90*zeta^3 - 45*zeta^2 + 200*zeta + 40)*q^657 + 1/13*(-12*zeta^7 - 36*zeta^6 + 
63*zeta^5 + 198*zeta^4 - 90*zeta^3 - 249*zeta^2 + 30*zeta + 6)*q^658 + 
1/13*(4*zeta^7 + 12*zeta^6 - 38*zeta^5 - 66*zeta^4 + 98*zeta^3 + 100*zeta^2 - 
44*zeta - 36)*q^659 + 1/13*(-117*zeta^7 - 45*zeta^6 + 729*zeta^5 + 171*zeta^4 - 
1260*zeta^3 - 18*zeta^2 + 522*zeta - 171)*q^660 + 1/13*(-81*zeta^7 - 90*zeta^6 +
540*zeta^5 + 495*zeta^4 - 990*zeta^3 - 648*zeta^2 + 432*zeta + 117)*q^661 + 
1/13*(-2*zeta^7 - 6*zeta^6 + 2*zeta^5 + 33*zeta^4 + 19*zeta^3 - 50*zeta^2 - 
12*zeta + 18)*q^662 + 1/13*(-30*zeta^7 - 90*zeta^6 + 30*zeta^5 + 495*zeta^4 + 
285*zeta^3 - 750*zeta^2 - 180*zeta + 270)*q^664 + 1/13*(-63*zeta^7 - 70*zeta^6 +
420*zeta^5 + 385*zeta^4 - 770*zeta^3 - 504*zeta^2 + 336*zeta + 91)*q^665 + 
1/13*(78*zeta^7 + 30*zeta^6 - 486*zeta^5 - 114*zeta^4 + 840*zeta^3 + 12*zeta^2 -
348*zeta + 114)*q^666 + 1/13*(-12*zeta^7 - 36*zeta^6 + 114*zeta^5 + 198*zeta^4 -
294*zeta^3 - 300*zeta^2 + 132*zeta + 108)*q^667 + 1/13*(76*zeta^7 + 228*zeta^6 -
399*zeta^5 - 1254*zeta^4 + 570*zeta^3 + 1577*zeta^2 - 190*zeta - 38)*q^668 + 
1/13*(-16*zeta^7 - 48*zeta^6 + 16*zeta^5 + 128*zeta^4 + 288*zeta^3 + 144*zeta^2 
- 640*zeta - 128)*q^669 + 1/13*(-16*zeta^7 - 48*zeta^6 + 16*zeta^5 + 400*zeta^4 
+ 288*zeta^3 - 944*zeta^2 - 368*zeta + 416)*q^670 + 1/13*(-144*zeta^7 - 
126*zeta^6 + 1062*zeta^5 + 846*zeta^4 - 2304*zeta^3 - 1458*zeta^2 + 1278*zeta + 
378)*q^671 + 1/13*(-24*zeta^7 - 21*zeta^6 + 177*zeta^5 + 141*zeta^4 - 384*zeta^3
- 243*zeta^2 + 213*zeta + 63)*q^672 + 1/13*(-12*zeta^7 - 36*zeta^6 + 12*zeta^5 +
300*zeta^4 + 216*zeta^3 - 708*zeta^2 - 276*zeta + 312)*q^673 + 1/13*(16*zeta^7 +
48*zeta^6 - 16*zeta^5 - 128*zeta^4 - 288*zeta^3 - 144*zeta^2 + 640*zeta + 
128)*q^674 + 1/13*(-4*zeta^7 - 12*zeta^6 + 21*zeta^5 + 66*zeta^4 - 30*zeta^3 - 
83*zeta^2 + 10*zeta + 2)*q^675 + 1/13*(6*zeta^7 + 18*zeta^6 - 57*zeta^5 - 
99*zeta^4 + 147*zeta^3 + 150*zeta^2 - 66*zeta - 54)*q^676 + 1/13*(39*zeta^7 + 
15*zeta^6 - 243*zeta^5 - 57*zeta^4 + 420*zeta^3 + 6*zeta^2 - 174*zeta + 
57)*q^677 + 1/13*(-135*zeta^7 - 150*zeta^6 + 900*zeta^5 + 825*zeta^4 - 
1650*zeta^3 - 1080*zeta^2 + 720*zeta + 195)*q^678 + 1/13*(2*zeta^7 + 6*zeta^6 - 
2*zeta^5 - 33*zeta^4 - 19*zeta^3 + 50*zeta^2 + 12*zeta - 18)*q^679 + 
1/13*(-6*zeta^7 - 18*zeta^6 + 6*zeta^5 + 99*zeta^4 + 57*zeta^3 - 150*zeta^2 - 
36*zeta + 54)*q^681 + 1/13*(-27*zeta^7 - 30*zeta^6 + 180*zeta^5 + 165*zeta^4 - 
330*zeta^3 - 216*zeta^2 + 144*zeta + 39)*q^682 + 1/13*(-247*zeta^7 - 95*zeta^6 +
1539*zeta^5 + 361*zeta^4 - 2660*zeta^3 - 38*zeta^2 + 1102*zeta - 361)*q^683 + 
1/13*(16*zeta^7 + 48*zeta^6 - 152*zeta^5 - 264*zeta^4 + 392*zeta^3 + 400*zeta^2 
- 176*zeta - 144)*q^684 + 1/13*(24*zeta^7 + 72*zeta^6 - 126*zeta^5 - 396*zeta^4 
+ 180*zeta^3 + 498*zeta^2 - 60*zeta - 12)*q^685 + 1/13*(-zeta^7 - 3*zeta^6 + 
zeta^5 + 8*zeta^4 + 18*zeta^3 + 9*zeta^2 - 40*zeta - 8)*q^686 + 1/13*(-8*zeta^7 
- 24*zeta^6 + 8*zeta^5 + 200*zeta^4 + 144*zeta^3 - 472*zeta^2 - 184*zeta + 
208)*q^687 + 1/13*(-72*zeta^7 - 63*zeta^6 + 531*zeta^5 + 423*zeta^4 - 
1152*zeta^3 - 729*zeta^2 + 639*zeta + 189)*q^688 + 1/13*(-24*zeta^7 - 21*zeta^6 
+ 177*zeta^5 + 141*zeta^4 - 384*zeta^3 - 243*zeta^2 + 213*zeta + 63)*q^689 + 
1/13*(3*zeta^7 + 9*zeta^6 - 3*zeta^5 - 75*zeta^4 - 54*zeta^3 + 177*zeta^2 + 
69*zeta - 78)*q^690 + 1/13*(-8*zeta^7 - 24*zeta^6 + 8*zeta^5 + 64*zeta^4 + 
144*zeta^3 + 72*zeta^2 - 320*zeta - 64)*q^691 + 1/13*(-28*zeta^7 - 84*zeta^6 + 
147*zeta^5 + 462*zeta^4 - 210*zeta^3 - 581*zeta^2 + 70*zeta + 14)*q^692 + 
1/13*(12*zeta^7 + 36*zeta^6 - 114*zeta^5 - 198*zeta^4 + 294*zeta^3 + 300*zeta^2 
- 132*zeta - 108)*q^693 + 1/13*(208*zeta^7 + 80*zeta^6 - 1296*zeta^5 - 
304*zeta^4 + 2240*zeta^3 + 32*zeta^2 - 928*zeta + 304)*q^694 + (9*zeta^7 + 
10*zeta^6 - 60*zeta^5 - 55*zeta^4 + 110*zeta^3 + 72*zeta^2 - 48*zeta - 13)*q^695
+ 1/13*(18*zeta^7 + 54*zeta^6 - 18*zeta^5 - 297*zeta^4 - 171*zeta^3 + 450*zeta^2
+ 108*zeta - 162)*q^696 + 1/13*(-18*zeta^7 - 54*zeta^6 + 18*zeta^5 + 297*zeta^4 
+ 171*zeta^3 - 450*zeta^2 - 108*zeta + 162)*q^698 + 1/13*(-162*zeta^7 - 
180*zeta^6 + 1080*zeta^5 + 990*zeta^4 - 1980*zeta^3 - 1296*zeta^2 + 864*zeta + 
234)*q^699 + 1/13*(-13*zeta^7 - 5*zeta^6 + 81*zeta^5 + 19*zeta^4 - 140*zeta^3 - 
2*zeta^2 + 58*zeta - 19)*q^700 + 1/13*(-24*zeta^7 - 72*zeta^6 + 228*zeta^5 + 
396*zeta^4 - 588*zeta^3 - 600*zeta^2 + 264*zeta + 216)*q^701 + 1/13*(48*zeta^7 +
144*zeta^6 - 252*zeta^5 - 792*zeta^4 + 360*zeta^3 + 996*zeta^2 - 120*zeta - 
24)*q^702 + 1/13*(8*zeta^7 + 24*zeta^6 - 8*zeta^5 - 64*zeta^4 - 144*zeta^3 - 
72*zeta^2 + 320*zeta + 64)*q^703 + 1/13*(-18*zeta^7 - 54*zeta^6 + 18*zeta^5 + 
450*zeta^4 + 324*zeta^3 - 1062*zeta^2 - 414*zeta + 468)*q^704 + 1/13*(-24*zeta^7
- 21*zeta^6 + 177*zeta^5 + 141*zeta^4 - 384*zeta^3 - 243*zeta^2 + 213*zeta + 
63)*q^706 + 1/13*(11*zeta^7 + 33*zeta^6 - 11*zeta^5 - 275*zeta^4 - 198*zeta^3 + 
649*zeta^2 + 253*zeta - 286)*q^707 + 1/13*(6*zeta^7 + 18*zeta^6 - 6*zeta^5 - 
48*zeta^4 - 108*zeta^3 - 54*zeta^2 + 240*zeta + 48)*q^708 + 1/13*(-36*zeta^7 - 
108*zeta^6 + 189*zeta^5 + 594*zeta^4 - 270*zeta^3 - 747*zeta^2 + 90*zeta + 
18)*q^709 + 1/13*(-20*zeta^7 - 60*zeta^6 + 190*zeta^5 + 330*zeta^4 - 490*zeta^3 
- 500*zeta^2 + 220*zeta + 180)*q^710 + 1/13*(-26*zeta^7 - 10*zeta^6 + 162*zeta^5
+ 38*zeta^4 - 280*zeta^3 - 4*zeta^2 + 116*zeta - 38)*q^711 + 1/13*(-108*zeta^7 -
120*zeta^6 + 720*zeta^5 + 660*zeta^4 - 1320*zeta^3 - 864*zeta^2 + 576*zeta + 
156)*q^712 + 1/13*(2*zeta^7 + 6*zeta^6 - 2*zeta^5 - 33*zeta^4 - 19*zeta^3 + 
50*zeta^2 + 12*zeta - 18)*q^713 + 1/13*(-12*zeta^7 - 36*zeta^6 + 12*zeta^5 + 
198*zeta^4 + 114*zeta^3 - 300*zeta^2 - 72*zeta + 108)*q^715 + 1/13*(-162*zeta^7 
- 180*zeta^6 + 1080*zeta^5 + 990*zeta^4 - 1980*zeta^3 - 1296*zeta^2 + 864*zeta +
234)*q^716 + 1/13*(-39*zeta^7 - 15*zeta^6 + 243*zeta^5 + 57*zeta^4 - 420*zeta^3 
- 6*zeta^2 + 174*zeta - 57)*q^717 + 1/13*(-30*zeta^7 - 90*zeta^6 + 285*zeta^5 + 
495*zeta^4 - 735*zeta^3 - 750*zeta^2 + 330*zeta + 270)*q^718 + 1/13*(-8*zeta^7 -
24*zeta^6 + 42*zeta^5 + 132*zeta^4 - 60*zeta^3 - 166*zeta^2 + 20*zeta + 4)*q^719
+ 1/13*(3*zeta^7 + 9*zeta^6 - 3*zeta^5 - 24*zeta^4 - 54*zeta^3 - 27*zeta^2 + 
120*zeta + 24)*q^720 + 1/13*(-2*zeta^7 - 6*zeta^6 + 2*zeta^5 + 50*zeta^4 + 
36*zeta^3 - 118*zeta^2 - 46*zeta + 52)*q^721 + 1/13*(-96*zeta^7 - 84*zeta^6 + 
708*zeta^5 + 564*zeta^4 - 1536*zeta^3 - 972*zeta^2 + 852*zeta + 252)*q^722 + 
1/13*(-16*zeta^7 - 14*zeta^6 + 118*zeta^5 + 94*zeta^4 - 256*zeta^3 - 162*zeta^2 
+ 142*zeta + 42)*q^723 + 1/13*(-21*zeta^7 - 63*zeta^6 + 21*zeta^5 + 525*zeta^4 +
378*zeta^3 - 1239*zeta^2 - 483*zeta + 546)*q^724 + 1/13*(8*zeta^7 + 24*zeta^6 - 
76*zeta^5 - 132*zeta^4 + 196*zeta^3 + 200*zeta^2 - 88*zeta - 72)*q^727 + 
1/13*(99*zeta^7 + 110*zeta^6 - 660*zeta^5 - 605*zeta^4 + 1210*zeta^3 + 
792*zeta^2 - 528*zeta - 143)*q^729 + 1/13*(6*zeta^7 + 18*zeta^6 - 6*zeta^5 - 
99*zeta^4 - 57*zeta^3 + 150*zeta^2 + 36*zeta - 54)*q^730 + (2*zeta^7 + 6*zeta^6 
- 2*zeta^5 - 33*zeta^4 - 19*zeta^3 + 50*zeta^2 + 12*zeta - 18)*q^732 + 
1/13*(-9*zeta^7 - 10*zeta^6 + 60*zeta^5 + 55*zeta^4 - 110*zeta^3 - 72*zeta^2 + 
48*zeta + 13)*q^733 + 1/13*(-286*zeta^7 - 110*zeta^6 + 1782*zeta^5 + 418*zeta^4 
- 3080*zeta^3 - 44*zeta^2 + 1276*zeta - 418)*q^734 + 1/13*(-18*zeta^7 - 
54*zeta^6 + 171*zeta^5 + 297*zeta^4 - 441*zeta^3 - 450*zeta^2 + 198*zeta + 
162)*q^735 + 1/13*(16*zeta^7 + 48*zeta^6 - 84*zeta^5 - 264*zeta^4 + 120*zeta^3 +
332*zeta^2 - 40*zeta - 8)*q^736 + 1/13*(-6*zeta^7 - 18*zeta^6 + 6*zeta^5 + 
48*zeta^4 + 108*zeta^3 + 54*zeta^2 - 240*zeta - 48)*q^737 + 1/13*(64*zeta^7 + 
56*zeta^6 - 472*zeta^5 - 376*zeta^4 + 1024*zeta^3 + 648*zeta^2 - 568*zeta - 
168)*q^739 + 1/13*(16*zeta^7 + 14*zeta^6 - 118*zeta^5 - 94*zeta^4 + 256*zeta^3 +
162*zeta^2 - 142*zeta - 42)*q^740 + 1/13*(8*zeta^7 + 24*zeta^6 - 8*zeta^5 - 
200*zeta^4 - 144*zeta^3 + 472*zeta^2 + 184*zeta - 208)*q^741 + 1/13*(15*zeta^7 +
45*zeta^6 - 15*zeta^5 - 120*zeta^4 - 270*zeta^3 - 135*zeta^2 + 600*zeta + 
120)*q^742 + 1/13*(24*zeta^7 + 72*zeta^6 - 126*zeta^5 - 396*zeta^4 + 180*zeta^3 
+ 498*zeta^2 - 60*zeta - 12)*q^743 + 1/13*(6*zeta^7 + 18*zeta^6 - 57*zeta^5 - 
99*zeta^4 + 147*zeta^3 + 150*zeta^2 - 66*zeta - 54)*q^744 + 1/13*(-52*zeta^7 - 
20*zeta^6 + 324*zeta^5 + 76*zeta^4 - 560*zeta^3 - 8*zeta^2 + 232*zeta - 
76)*q^745 + 1/13*(-27*zeta^7 - 30*zeta^6 + 180*zeta^5 + 165*zeta^4 - 330*zeta^3 
- 216*zeta^2 + 144*zeta + 39)*q^746 + 1/13*(18*zeta^7 + 54*zeta^6 - 18*zeta^5 - 
297*zeta^4 - 171*zeta^3 + 450*zeta^2 + 108*zeta - 162)*q^747 + 1/13*(-2*zeta^7 -
6*zeta^6 + 2*zeta^5 + 33*zeta^4 + 19*zeta^3 - 50*zeta^2 - 12*zeta + 18)*q^749 + 
1/13*(-162*zeta^7 - 180*zeta^6 + 1080*zeta^5 + 990*zeta^4 - 1980*zeta^3 - 
1296*zeta^2 + 864*zeta + 234)*q^750 + 1/13*(-312*zeta^7 - 120*zeta^6 + 
1944*zeta^5 + 456*zeta^4 - 3360*zeta^3 - 48*zeta^2 + 1392*zeta - 456)*q^751 + 
1/13*(-6*zeta^7 - 18*zeta^6 + 57*zeta^5 + 99*zeta^4 - 147*zeta^3 - 150*zeta^2 + 
66*zeta + 54)*q^752 + 1/13*(36*zeta^7 + 108*zeta^6 - 189*zeta^5 - 594*zeta^4 + 
270*zeta^3 + 747*zeta^2 - 90*zeta - 18)*q^753 + 1/13*(-21*zeta^7 - 63*zeta^6 + 
21*zeta^5 + 168*zeta^4 + 378*zeta^3 + 189*zeta^2 - 840*zeta - 168)*q^754 + 
1/13*(5*zeta^7 + 15*zeta^6 - 5*zeta^5 - 125*zeta^4 - 90*zeta^3 + 295*zeta^2 + 
115*zeta - 130)*q^755 + 1/13*(-16*zeta^7 - 14*zeta^6 + 118*zeta^5 + 94*zeta^4 - 
256*zeta^3 - 162*zeta^2 + 142*zeta + 42)*q^756 + 1/13*(-32*zeta^7 - 28*zeta^6 + 
236*zeta^5 + 188*zeta^4 - 512*zeta^3 - 324*zeta^2 + 284*zeta + 84)*q^757 + 
1/13*(11*zeta^7 + 33*zeta^6 - 11*zeta^5 - 275*zeta^4 - 198*zeta^3 + 649*zeta^2 +
253*zeta - 286)*q^758 + 1/13*(-24*zeta^7 - 72*zeta^6 + 126*zeta^5 + 396*zeta^4 -
180*zeta^3 - 498*zeta^2 + 60*zeta + 12)*q^760 + 1/13*(8*zeta^7 + 24*zeta^6 - 
76*zeta^5 - 132*zeta^4 + 196*zeta^3 + 200*zeta^2 - 88*zeta - 72)*q^761 + 
1/13*(-234*zeta^7 - 90*zeta^6 + 1458*zeta^5 + 342*zeta^4 - 2520*zeta^3 - 
36*zeta^2 + 1044*zeta - 342)*q^762 + 1/13*(-9*zeta^7 - 10*zeta^6 + 60*zeta^5 + 
55*zeta^4 - 110*zeta^3 - 72*zeta^2 + 48*zeta + 13)*q^763 + 1/13*(-22*zeta^7 - 
66*zeta^6 + 22*zeta^5 + 363*zeta^4 + 209*zeta^3 - 550*zeta^2 - 132*zeta + 
198)*q^764 + 1/13*(-54*zeta^7 - 60*zeta^6 + 360*zeta^5 + 330*zeta^4 - 660*zeta^3
- 432*zeta^2 + 288*zeta + 78)*q^767 + 1/13*(143*zeta^7 + 55*zeta^6 - 891*zeta^5 
- 209*zeta^4 + 1540*zeta^3 + 22*zeta^2 - 638*zeta + 209)*q^768 + (2*zeta^7 + 
6*zeta^6 - 19*zeta^5 - 33*zeta^4 + 49*zeta^3 + 50*zeta^2 - 22*zeta - 18)*q^769 +
1/13*(24*zeta^7 + 72*zeta^6 - 126*zeta^5 - 396*zeta^4 + 180*zeta^3 + 498*zeta^2 
- 60*zeta - 12)*q^770 + 1/13*(6*zeta^7 + 18*zeta^6 - 6*zeta^5 - 48*zeta^4 - 
108*zeta^3 - 54*zeta^2 + 240*zeta + 48)*q^771 + 1/13*(17*zeta^7 + 51*zeta^6 - 
17*zeta^5 - 425*zeta^4 - 306*zeta^3 + 1003*zeta^2 + 391*zeta - 442)*q^772 + 
1/13*(128*zeta^7 + 112*zeta^6 - 944*zeta^5 - 752*zeta^4 + 2048*zeta^3 + 
1296*zeta^2 - 1136*zeta - 336)*q^773 + 1/13*(48*zeta^7 + 42*zeta^6 - 354*zeta^5 
- 282*zeta^4 + 768*zeta^3 + 486*zeta^2 - 426*zeta - 126)*q^774 + 1/13*(-3*zeta^7
- 9*zeta^6 + 3*zeta^5 + 75*zeta^4 + 54*zeta^3 - 177*zeta^2 - 69*zeta + 78)*q^775
+ 1/13*(-9*zeta^7 - 27*zeta^6 + 9*zeta^5 + 72*zeta^4 + 162*zeta^3 + 81*zeta^2 - 
360*zeta - 72)*q^776 + 1/13*(56*zeta^7 + 168*zeta^6 - 294*zeta^5 - 924*zeta^4 + 
420*zeta^3 + 1162*zeta^2 - 140*zeta - 28)*q^777 + 1/13*(-6*zeta^7 - 18*zeta^6 + 
57*zeta^5 + 99*zeta^4 - 147*zeta^3 - 150*zeta^2 + 66*zeta + 54)*q^778 + 
1/13*(234*zeta^7 + 90*zeta^6 - 1458*zeta^5 - 342*zeta^4 + 2520*zeta^3 + 
36*zeta^2 - 1044*zeta + 342)*q^779 + 1/13*(81*zeta^7 + 90*zeta^6 - 540*zeta^5 - 
495*zeta^4 + 990*zeta^3 + 648*zeta^2 - 432*zeta - 117)*q^780 + 1/13*(-24*zeta^7 
- 72*zeta^6 + 24*zeta^5 + 396*zeta^4 + 228*zeta^3 - 600*zeta^2 - 144*zeta + 
216)*q^781 + 1/13*(30*zeta^7 + 90*zeta^6 - 30*zeta^5 - 495*zeta^4 - 285*zeta^3 +
750*zeta^2 + 180*zeta - 270)*q^783 + 1/13*(27*zeta^7 + 30*zeta^6 - 180*zeta^5 - 
165*zeta^4 + 330*zeta^3 + 216*zeta^2 - 144*zeta - 39)*q^784 + 1/13*(91*zeta^7 + 
35*zeta^6 - 567*zeta^5 - 133*zeta^4 + 980*zeta^3 + 14*zeta^2 - 406*zeta + 
133)*q^785 + 1/13*(12*zeta^7 + 36*zeta^6 - 114*zeta^5 - 198*zeta^4 + 294*zeta^3 
+ 300*zeta^2 - 132*zeta - 108)*q^786 + 1/13*(-40*zeta^7 - 120*zeta^6 + 
210*zeta^5 + 660*zeta^4 - 300*zeta^3 - 830*zeta^2 + 100*zeta + 20)*q^787 + 
1/13*(6*zeta^7 + 18*zeta^6 - 6*zeta^5 - 48*zeta^4 - 108*zeta^3 - 54*zeta^2 + 
240*zeta + 48)*q^788 + 1/13*(-9*zeta^7 - 27*zeta^6 + 9*zeta^5 + 225*zeta^4 + 
162*zeta^3 - 531*zeta^2 - 207*zeta + 234)*q^789 + 1/13*(-144*zeta^7 - 126*zeta^6
+ 1062*zeta^5 + 846*zeta^4 - 2304*zeta^3 - 1458*zeta^2 + 1278*zeta + 378)*q^790 
+ 1/13*(-40*zeta^7 - 35*zeta^6 + 295*zeta^5 + 235*zeta^4 - 640*zeta^3 - 
405*zeta^2 + 355*zeta + 105)*q^791 + 1/13*(9*zeta^7 + 27*zeta^6 - 9*zeta^5 - 
225*zeta^4 - 162*zeta^3 + 531*zeta^2 + 207*zeta - 234)*q^792 + 1/13*(-7*zeta^7 -
21*zeta^6 + 7*zeta^5 + 56*zeta^4 + 126*zeta^3 + 63*zeta^2 - 280*zeta - 56)*q^793
+ 1/13*(-12*zeta^7 - 36*zeta^6 + 63*zeta^5 + 198*zeta^4 - 90*zeta^3 - 249*zeta^2
+ 30*zeta + 6)*q^794 + 1/13*(-18*zeta^7 - 54*zeta^6 + 171*zeta^5 + 297*zeta^4 - 
441*zeta^3 - 450*zeta^2 + 198*zeta + 162)*q^795 + 1/13*(39*zeta^7 + 15*zeta^6 - 
243*zeta^5 - 57*zeta^4 + 420*zeta^3 + 6*zeta^2 - 174*zeta + 57)*q^796 + 
1/13*(-72*zeta^7 - 80*zeta^6 + 480*zeta^5 + 440*zeta^4 - 880*zeta^3 - 576*zeta^2
+ 384*zeta + 104)*q^797 + 1/13*(24*zeta^7 + 72*zeta^6 - 24*zeta^5 - 396*zeta^4 -
228*zeta^3 + 600*zeta^2 + 144*zeta - 216)*q^798 + 1/13*(4*zeta^7 + 12*zeta^6 - 
4*zeta^5 - 66*zeta^4 - 38*zeta^3 + 100*zeta^2 + 24*zeta - 36)*q^800 + 
1/13*(54*zeta^7 + 60*zeta^6 - 360*zeta^5 - 330*zeta^4 + 660*zeta^3 + 432*zeta^2 
- 288*zeta - 78)*q^801 + 1/13*(221*zeta^7 + 85*zeta^6 - 1377*zeta^5 - 323*zeta^4
+ 2380*zeta^3 + 34*zeta^2 - 986*zeta + 323)*q^802 + 1/13*(12*zeta^7 + 36*zeta^6 
- 114*zeta^5 - 198*zeta^4 + 294*zeta^3 + 300*zeta^2 - 132*zeta - 108)*q^803 + 
1/13*(-56*zeta^7 - 168*zeta^6 + 294*zeta^5 + 924*zeta^4 - 420*zeta^3 - 
1162*zeta^2 + 140*zeta + 28)*q^804 + 1/13*(2*zeta^7 + 6*zeta^6 - 2*zeta^5 - 
16*zeta^4 - 36*zeta^3 - 18*zeta^2 + 80*zeta + 16)*q^805 + 1/13*(8*zeta^7 + 
24*zeta^6 - 8*zeta^5 - 200*zeta^4 - 144*zeta^3 + 472*zeta^2 + 184*zeta - 
208)*q^806 + 1/13*(120*zeta^7 + 105*zeta^6 - 885*zeta^5 - 705*zeta^4 + 
1920*zeta^3 + 1215*zeta^2 - 1065*zeta - 315)*q^807 + 1/13*(-48*zeta^7 - 
42*zeta^6 + 354*zeta^5 + 282*zeta^4 - 768*zeta^3 - 486*zeta^2 + 426*zeta + 
126)*q^808 + 1/13*(-10*zeta^7 - 30*zeta^6 + 10*zeta^5 + 250*zeta^4 + 180*zeta^3 
- 590*zeta^2 - 230*zeta + 260)*q^809 + 1/13*(56*zeta^7 + 168*zeta^6 - 294*zeta^5
- 924*zeta^4 + 420*zeta^3 + 1162*zeta^2 - 140*zeta - 28)*q^811 + 1/13*(6*zeta^7 
+ 18*zeta^6 - 57*zeta^5 - 99*zeta^4 + 147*zeta^3 + 150*zeta^2 - 66*zeta - 
54)*q^812 + 1/13*(-104*zeta^7 - 40*zeta^6 + 648*zeta^5 + 152*zeta^4 - 
1120*zeta^3 - 16*zeta^2 + 464*zeta - 152)*q^813 + 1/13*(54*zeta^7 + 60*zeta^6 - 
360*zeta^5 - 330*zeta^4 + 660*zeta^3 + 432*zeta^2 - 288*zeta - 78)*q^814 + 
1/13*(-30*zeta^7 - 90*zeta^6 + 30*zeta^5 + 495*zeta^4 + 285*zeta^3 - 750*zeta^2 
- 180*zeta + 270)*q^815 + 1/13*(-34*zeta^7 - 102*zeta^6 + 34*zeta^5 + 561*zeta^4
+ 323*zeta^3 - 850*zeta^2 - 204*zeta + 306)*q^817 + 1/13*(171*zeta^7 + 
190*zeta^6 - 1140*zeta^5 - 1045*zeta^4 + 2090*zeta^3 + 1368*zeta^2 - 912*zeta - 
247)*q^818 + 1/13*(-13*zeta^7 - 5*zeta^6 + 81*zeta^5 + 19*zeta^4 - 140*zeta^3 - 
2*zeta^2 + 58*zeta - 19)*q^819 + 1/13*(-24*zeta^7 - 72*zeta^6 + 228*zeta^5 + 
396*zeta^4 - 588*zeta^3 - 600*zeta^2 + 264*zeta + 216)*q^820 + 1/13*(24*zeta^7 +
72*zeta^6 - 126*zeta^5 - 396*zeta^4 + 180*zeta^3 + 498*zeta^2 - 60*zeta - 
12)*q^821 + 1/13*(18*zeta^7 + 54*zeta^6 - 18*zeta^5 - 144*zeta^4 - 324*zeta^3 - 
162*zeta^2 + 720*zeta + 144)*q^822 + 1/13*(18*zeta^7 + 54*zeta^6 - 18*zeta^5 - 
450*zeta^4 - 324*zeta^3 + 1062*zeta^2 + 414*zeta - 468)*q^823 + 1/13*(48*zeta^7 
+ 42*zeta^6 - 354*zeta^5 - 282*zeta^4 + 768*zeta^3 + 486*zeta^2 - 426*zeta - 
126)*q^825 + 1/13*(-6*zeta^7 - 18*zeta^6 + 6*zeta^5 + 150*zeta^4 + 108*zeta^3 - 
354*zeta^2 - 138*zeta + 156)*q^826 + 1/13*(-18*zeta^7 - 54*zeta^6 + 18*zeta^5 + 
144*zeta^4 + 324*zeta^3 + 162*zeta^2 - 720*zeta - 144)*q^827 + 1/13*(-12*zeta^7 
- 36*zeta^6 + 63*zeta^5 + 198*zeta^4 - 90*zeta^3 - 249*zeta^2 + 30*zeta + 
6)*q^828 + 1/13*(-36*zeta^7 - 108*zeta^6 + 342*zeta^5 + 594*zeta^4 - 882*zeta^3 
- 900*zeta^2 + 396*zeta + 324)*q^829 + 1/13*(-143*zeta^7 - 55*zeta^6 + 
891*zeta^5 + 209*zeta^4 - 1540*zeta^3 - 22*zeta^2 + 638*zeta - 209)*q^830 + 
1/13*(36*zeta^7 + 40*zeta^6 - 240*zeta^5 - 220*zeta^4 + 440*zeta^3 + 288*zeta^2 
- 192*zeta - 52)*q^831 + 1/13*(22*zeta^7 + 66*zeta^6 - 22*zeta^5 - 363*zeta^4 - 
209*zeta^3 + 550*zeta^2 + 132*zeta - 198)*q^832 + 1/13*(30*zeta^7 + 90*zeta^6 - 
30*zeta^5 - 495*zeta^4 - 285*zeta^3 + 750*zeta^2 + 180*zeta - 270)*q^834 + 
1/13*(180*zeta^7 + 200*zeta^6 - 1200*zeta^5 - 1100*zeta^4 + 2200*zeta^3 + 
1440*zeta^2 - 960*zeta - 260)*q^835 + 1/13*(195*zeta^7 + 75*zeta^6 - 1215*zeta^5
- 285*zeta^4 + 2100*zeta^3 + 30*zeta^2 - 870*zeta + 285)*q^836 + 1/13*(-8*zeta^7
- 24*zeta^6 + 76*zeta^5 + 132*zeta^4 - 196*zeta^3 - 200*zeta^2 + 88*zeta + 
72)*q^837 + 1/13*(-68*zeta^7 - 204*zeta^6 + 357*zeta^5 + 1122*zeta^4 - 
510*zeta^3 - 1411*zeta^2 + 170*zeta + 34)*q^838 + 1/13*(-14*zeta^7 - 42*zeta^6 +
14*zeta^5 + 112*zeta^4 + 252*zeta^3 + 126*zeta^2 - 560*zeta - 112)*q^839 + 
1/13*(-9*zeta^7 - 27*zeta^6 + 9*zeta^5 + 225*zeta^4 + 162*zeta^3 - 531*zeta^2 - 
207*zeta + 234)*q^840 + 1/13*(216*zeta^7 + 189*zeta^6 - 1593*zeta^5 - 
1269*zeta^4 + 3456*zeta^3 + 2187*zeta^2 - 1917*zeta - 567)*q^841 + 
1/13*(88*zeta^7 + 77*zeta^6 - 649*zeta^5 - 517*zeta^4 + 1408*zeta^3 + 891*zeta^2
- 781*zeta - 231)*q^842 + 1/13*(6*zeta^7 + 18*zeta^6 - 6*zeta^5 - 150*zeta^4 - 
108*zeta^3 + 354*zeta^2 + 138*zeta - 156)*q^843 + 1/13*(10*zeta^7 + 30*zeta^6 - 
10*zeta^5 - 80*zeta^4 - 180*zeta^3 - 90*zeta^2 + 400*zeta + 80)*q^844 + 
1/13*(-24*zeta^7 - 72*zeta^6 + 126*zeta^5 + 396*zeta^4 - 180*zeta^3 - 498*zeta^2
+ 60*zeta + 12)*q^845 + 1/13*(26*zeta^7 + 10*zeta^6 - 162*zeta^5 - 38*zeta^4 + 
280*zeta^3 + 4*zeta^2 - 116*zeta + 38)*q^847 + 1/13*(108*zeta^7 + 120*zeta^6 - 
720*zeta^5 - 660*zeta^4 + 1320*zeta^3 + 864*zeta^2 - 576*zeta - 156)*q^848 + 
1/13*(-40*zeta^7 - 120*zeta^6 + 40*zeta^5 + 660*zeta^4 + 380*zeta^3 - 
1000*zeta^2 - 240*zeta + 360)*q^849 + 1/13*(-4*zeta^7 - 12*zeta^6 + 4*zeta^5 + 
66*zeta^4 + 38*zeta^3 - 100*zeta^2 - 24*zeta + 36)*q^851 + 1/13*(54*zeta^7 + 
60*zeta^6 - 360*zeta^5 - 330*zeta^4 + 660*zeta^3 + 432*zeta^2 - 288*zeta - 
78)*q^852 + 1/13*(34*zeta^7 + 102*zeta^6 - 323*zeta^5 - 561*zeta^4 + 833*zeta^3 
+ 850*zeta^2 - 374*zeta - 306)*q^854 + 1/13*(-36*zeta^7 - 108*zeta^6 + 
189*zeta^5 + 594*zeta^4 - 270*zeta^3 - 747*zeta^2 + 90*zeta + 18)*q^855 + 
1/13*(-12*zeta^7 - 36*zeta^6 + 12*zeta^5 + 96*zeta^4 + 216*zeta^3 + 108*zeta^2 -
480*zeta - 96)*q^856 + 1/13*(10*zeta^7 + 30*zeta^6 - 10*zeta^5 - 250*zeta^4 - 
180*zeta^3 + 590*zeta^2 + 230*zeta - 260)*q^857 + 1/13*(-72*zeta^7 - 63*zeta^6 +
531*zeta^5 + 423*zeta^4 - 1152*zeta^3 - 729*zeta^2 + 639*zeta + 189)*q^858 + 
1/13*(16*zeta^7 + 14*zeta^6 - 118*zeta^5 - 94*zeta^4 + 256*zeta^3 + 162*zeta^2 -
142*zeta - 42)*q^859 + 1/13*(-4*zeta^7 - 12*zeta^6 + 4*zeta^5 + 100*zeta^4 + 
72*zeta^3 - 236*zeta^2 - 92*zeta + 104)*q^860 + 1/13*(12*zeta^7 + 36*zeta^6 - 
12*zeta^5 - 96*zeta^4 - 216*zeta^3 - 108*zeta^2 + 480*zeta + 96)*q^861 + 
1/13*(-60*zeta^7 - 180*zeta^6 + 315*zeta^5 + 990*zeta^4 - 450*zeta^3 - 
1245*zeta^2 + 150*zeta + 30)*q^862 + 1/13*(22*zeta^7 + 66*zeta^6 - 209*zeta^5 - 
363*zeta^4 + 539*zeta^3 + 550*zeta^2 - 242*zeta - 198)*q^863 + 1/13*(117*zeta^7 
+ 45*zeta^6 - 729*zeta^5 - 171*zeta^4 + 1260*zeta^3 + 18*zeta^2 - 522*zeta + 
171)*q^864 + 1/13*(-45*zeta^7 - 50*zeta^6 + 300*zeta^5 + 275*zeta^4 - 550*zeta^3
- 360*zeta^2 + 240*zeta + 65)*q^865 + 1/13*(56*zeta^7 + 168*zeta^6 - 56*zeta^5 -
924*zeta^4 - 532*zeta^3 + 1400*zeta^2 + 336*zeta - 504)*q^866 + 1/13*(-4*zeta^7 
- 12*zeta^6 + 4*zeta^5 + 66*zeta^4 + 38*zeta^3 - 100*zeta^2 - 24*zeta + 
36)*q^868 + 1/13*(108*zeta^7 + 120*zeta^6 - 720*zeta^5 - 660*zeta^4 + 
1320*zeta^3 + 864*zeta^2 - 576*zeta - 156)*q^869 + 1/13*(234*zeta^7 + 90*zeta^6 
- 1458*zeta^5 - 342*zeta^4 + 2520*zeta^3 + 36*zeta^2 - 1044*zeta + 342)*q^870 + 
1/13*(24*zeta^7 + 72*zeta^6 - 228*zeta^5 - 396*zeta^4 + 588*zeta^3 + 600*zeta^2 
- 264*zeta - 216)*q^871 + 1/13*(-48*zeta^7 - 144*zeta^6 + 252*zeta^5 + 
792*zeta^4 - 360*zeta^3 - 996*zeta^2 + 120*zeta + 24)*q^872 + 1/13*(-4*zeta^7 - 
12*zeta^6 + 4*zeta^5 + 32*zeta^4 + 72*zeta^3 + 36*zeta^2 - 160*zeta - 32)*q^873 
+ 1/13*(-11*zeta^7 - 33*zeta^6 + 11*zeta^5 + 275*zeta^4 + 198*zeta^3 - 
649*zeta^2 - 253*zeta + 286)*q^874 + 1/13*(-72*zeta^7 - 63*zeta^6 + 531*zeta^5 +
423*zeta^4 - 1152*zeta^3 - 729*zeta^2 + 639*zeta + 189)*q^875 + 1/13*(8*zeta^7 +
7*zeta^6 - 59*zeta^5 - 47*zeta^4 + 128*zeta^3 + 81*zeta^2 - 71*zeta - 21)*q^876 
+ 1/13*(7*zeta^7 + 21*zeta^6 - 7*zeta^5 - 175*zeta^4 - 126*zeta^3 + 413*zeta^2 +
161*zeta - 182)*q^877 + 1/13*(-8*zeta^7 - 24*zeta^6 + 8*zeta^5 + 64*zeta^4 + 
144*zeta^3 + 72*zeta^2 - 320*zeta - 64)*q^878 + 1/13*(48*zeta^7 + 144*zeta^6 - 
252*zeta^5 - 792*zeta^4 + 360*zeta^3 + 996*zeta^2 - 120*zeta - 24)*q^879 + 
1/13*(6*zeta^7 + 18*zeta^6 - 57*zeta^5 - 99*zeta^4 + 147*zeta^3 + 150*zeta^2 - 
66*zeta - 54)*q^880 + 1/13*(-91*zeta^7 - 35*zeta^6 + 567*zeta^5 + 133*zeta^4 - 
980*zeta^3 - 14*zeta^2 + 406*zeta - 133)*q^881 + 1/13*(-81*zeta^7 - 90*zeta^6 + 
540*zeta^5 + 495*zeta^4 - 990*zeta^3 - 648*zeta^2 + 432*zeta + 117)*q^882 + 
1/13*(2*zeta^7 + 6*zeta^6 - 2*zeta^5 - 33*zeta^4 - 19*zeta^3 + 50*zeta^2 + 
12*zeta - 18)*q^883 + 1/13*(153*zeta^7 + 170*zeta^6 - 1020*zeta^5 - 935*zeta^4 +
1870*zeta^3 + 1224*zeta^2 - 816*zeta - 221)*q^886 + 1/13*(117*zeta^7 + 45*zeta^6
- 729*zeta^5 - 171*zeta^4 + 1260*zeta^3 + 18*zeta^2 - 522*zeta + 171)*q^887 + 
1/13*(24*zeta^7 + 72*zeta^6 - 228*zeta^5 - 396*zeta^4 + 588*zeta^3 + 600*zeta^2 
- 264*zeta - 216)*q^888 + 1/13*(-20*zeta^7 - 60*zeta^6 + 105*zeta^5 + 330*zeta^4
- 150*zeta^3 - 415*zeta^2 + 50*zeta + 10)*q^889 + 1/13*(10*zeta^7 + 30*zeta^6 - 
10*zeta^5 - 80*zeta^4 - 180*zeta^3 - 90*zeta^2 + 400*zeta + 80)*q^890 + 
1/13*(6*zeta^7 + 18*zeta^6 - 6*zeta^5 - 150*zeta^4 - 108*zeta^3 + 354*zeta^2 + 
138*zeta - 156)*q^891 + (-16*zeta^7 - 14*zeta^6 + 118*zeta^5 + 94*zeta^4 - 
256*zeta^3 - 162*zeta^2 + 142*zeta + 42)*q^892 + 1/13*(72*zeta^7 + 63*zeta^6 - 
531*zeta^5 - 423*zeta^4 + 1152*zeta^3 + 729*zeta^2 - 639*zeta - 189)*q^893 + 
1/13*(6*zeta^7 + 18*zeta^6 - 6*zeta^5 - 150*zeta^4 - 108*zeta^3 + 354*zeta^2 + 
138*zeta - 156)*q^894 + 1/13*(9*zeta^7 + 27*zeta^6 - 9*zeta^5 - 72*zeta^4 - 
162*zeta^3 - 81*zeta^2 + 360*zeta + 72)*q^895 + 1/13*(-36*zeta^7 - 108*zeta^6 + 
189*zeta^5 + 594*zeta^4 - 270*zeta^3 - 747*zeta^2 + 90*zeta + 18)*q^896 + 
1/13*(-6*zeta^7 - 18*zeta^6 + 57*zeta^5 + 99*zeta^4 - 147*zeta^3 - 150*zeta^2 + 
66*zeta + 54)*q^897 + 1/13*(26*zeta^7 + 10*zeta^6 - 162*zeta^5 - 38*zeta^4 + 
280*zeta^3 + 4*zeta^2 - 116*zeta + 38)*q^898 + 1/13*(81*zeta^7 + 90*zeta^6 - 
540*zeta^5 - 495*zeta^4 + 990*zeta^3 + 648*zeta^2 - 432*zeta - 117)*q^899 + 
1/13*(-2*zeta^7 - 6*zeta^6 + 2*zeta^5 + 33*zeta^4 + 19*zeta^3 - 50*zeta^2 - 
12*zeta + 18)*q^900 + 1/13*(-36*zeta^7 - 108*zeta^6 + 36*zeta^5 + 594*zeta^4 + 
342*zeta^3 - 900*zeta^2 - 216*zeta + 324)*q^902 + 1/13*(180*zeta^7 + 200*zeta^6 
- 1200*zeta^5 - 1100*zeta^4 + 2200*zeta^3 + 1440*zeta^2 - 960*zeta - 260)*q^903 
+ 1/13*(195*zeta^7 + 75*zeta^6 - 1215*zeta^5 - 285*zeta^4 + 2100*zeta^3 + 
30*zeta^2 - 870*zeta + 285)*q^904 + 1/13*(34*zeta^7 + 102*zeta^6 - 323*zeta^5 - 
561*zeta^4 + 833*zeta^3 + 850*zeta^2 - 374*zeta - 306)*q^905 + 1/13*(15*zeta^7 +
45*zeta^6 - 15*zeta^5 - 120*zeta^4 - 270*zeta^3 - 135*zeta^2 + 600*zeta + 
120)*q^907 + 1/13*(15*zeta^7 + 45*zeta^6 - 15*zeta^5 - 375*zeta^4 - 270*zeta^3 +
885*zeta^2 + 345*zeta - 390)*q^908 + 1/13*(72*zeta^7 + 63*zeta^6 - 531*zeta^5 - 
423*zeta^4 + 1152*zeta^3 + 729*zeta^2 - 639*zeta - 189)*q^909 + 1/13*(-8*zeta^7 
- 7*zeta^6 + 59*zeta^5 + 47*zeta^4 - 128*zeta^3 - 81*zeta^2 + 71*zeta + 
21)*q^910 + 1/13*(-7*zeta^7 - 21*zeta^6 + 7*zeta^5 + 175*zeta^4 + 126*zeta^3 - 
413*zeta^2 - 161*zeta + 182)*q^911 + 1/13*(11*zeta^7 + 33*zeta^6 - 11*zeta^5 - 
88*zeta^4 - 198*zeta^3 - 99*zeta^2 + 440*zeta + 88)*q^912 + 1/13*(60*zeta^7 + 
180*zeta^6 - 315*zeta^5 - 990*zeta^4 + 450*zeta^3 + 1245*zeta^2 - 150*zeta - 
30)*q^913 + 1/13*(-6*zeta^7 - 18*zeta^6 + 57*zeta^5 + 99*zeta^4 - 147*zeta^3 - 
150*zeta^2 + 66*zeta + 54)*q^914 + 1/13*(234*zeta^7 + 90*zeta^6 - 1458*zeta^5 - 
342*zeta^4 + 2520*zeta^3 + 36*zeta^2 - 1044*zeta + 342)*q^915 + 1/13*(-72*zeta^7
- 80*zeta^6 + 480*zeta^5 + 440*zeta^4 - 880*zeta^3 - 576*zeta^2 + 384*zeta + 
104)*q^916 + 1/13*(-4*zeta^7 - 12*zeta^6 + 4*zeta^5 + 66*zeta^4 + 38*zeta^3 - 
100*zeta^2 - 24*zeta + 36)*q^917 + 1/13*(2*zeta^7 + 6*zeta^6 - 2*zeta^5 - 
33*zeta^4 - 19*zeta^3 + 50*zeta^2 + 12*zeta - 18)*q^919 + 1/13*(-27*zeta^7 - 
30*zeta^6 + 180*zeta^5 + 165*zeta^4 - 330*zeta^3 - 216*zeta^2 + 144*zeta + 
39)*q^920 + 1/13*(52*zeta^7 + 20*zeta^6 - 324*zeta^5 - 76*zeta^4 + 560*zeta^3 + 
8*zeta^2 - 232*zeta + 76)*q^921 + 1/13*(-4*zeta^7 - 12*zeta^6 + 38*zeta^5 + 
66*zeta^4 - 98*zeta^3 - 100*zeta^2 + 44*zeta + 36)*q^922 + 1/13*(8*zeta^7 + 
24*zeta^6 - 42*zeta^5 - 132*zeta^4 + 60*zeta^3 + 166*zeta^2 - 20*zeta - 4)*q^923
+ 1/13*(-3*zeta^7 - 9*zeta^6 + 3*zeta^5 + 24*zeta^4 + 54*zeta^3 + 27*zeta^2 - 
120*zeta - 24)*q^924 + 1/13*(-6*zeta^7 - 18*zeta^6 + 6*zeta^5 + 150*zeta^4 + 
108*zeta^3 - 354*zeta^2 - 138*zeta + 156)*q^925 + 1/13*(-64*zeta^7 - 56*zeta^6 +
472*zeta^5 + 376*zeta^4 - 1024*zeta^3 - 648*zeta^2 + 568*zeta + 168)*q^926 + 
1/13*(-16*zeta^7 - 14*zeta^6 + 118*zeta^5 + 94*zeta^4 - 256*zeta^3 - 162*zeta^2 
+ 142*zeta + 42)*q^927 + 1/13*(15*zeta^7 + 45*zeta^6 - 15*zeta^5 - 375*zeta^4 - 
270*zeta^3 + 885*zeta^2 + 345*zeta - 390)*q^928 + 1/13*(-9*zeta^7 - 27*zeta^6 + 
9*zeta^5 + 72*zeta^4 + 162*zeta^3 + 81*zeta^2 - 360*zeta - 72)*q^929 + 
1/13*(12*zeta^7 + 36*zeta^6 - 63*zeta^5 - 198*zeta^4 + 90*zeta^3 + 249*zeta^2 - 
30*zeta - 6)*q^930 + 1/13*(12*zeta^7 + 36*zeta^6 - 114*zeta^5 - 198*zeta^4 + 
294*zeta^3 + 300*zeta^2 - 132*zeta - 108)*q^931 + 1/13*(78*zeta^7 + 30*zeta^6 - 
486*zeta^5 - 114*zeta^4 + 840*zeta^3 + 12*zeta^2 - 348*zeta + 114)*q^932 + 
1/13*(-243*zeta^7 - 270*zeta^6 + 1620*zeta^5 + 1485*zeta^4 - 2970*zeta^3 - 
1944*zeta^2 + 1296*zeta + 351)*q^933 + 1/13*(-42*zeta^7 - 126*zeta^6 + 42*zeta^5
+ 693*zeta^4 + 399*zeta^3 - 1050*zeta^2 - 252*zeta + 378)*q^934 + 
1/13*(-6*zeta^7 - 18*zeta^6 + 6*zeta^5 + 99*zeta^4 + 57*zeta^3 - 150*zeta^2 - 
36*zeta + 54)*q^936 + 1/13*(-171*zeta^7 - 190*zeta^6 + 1140*zeta^5 + 1045*zeta^4
- 2090*zeta^3 - 1368*zeta^2 + 912*zeta + 247)*q^937 + 1/13*(-52*zeta^7 - 
20*zeta^6 + 324*zeta^5 + 76*zeta^4 - 560*zeta^3 - 8*zeta^2 + 232*zeta - 
76)*q^938 + 1/13*(-8*zeta^7 - 24*zeta^6 + 76*zeta^5 + 132*zeta^4 - 196*zeta^3 - 
200*zeta^2 + 88*zeta + 72)*q^939 + 1/13*(24*zeta^7 + 72*zeta^6 - 126*zeta^5 - 
396*zeta^4 + 180*zeta^3 + 498*zeta^2 - 60*zeta - 12)*q^940 + 1/13*(-3*zeta^7 - 
9*zeta^6 + 3*zeta^5 + 24*zeta^4 + 54*zeta^3 + 27*zeta^2 - 120*zeta - 24)*q^941 +
1/13*(-3*zeta^7 - 9*zeta^6 + 3*zeta^5 + 75*zeta^4 + 54*zeta^3 - 177*zeta^2 - 
69*zeta + 78)*q^942 + 1/13*(48*zeta^7 + 42*zeta^6 - 354*zeta^5 - 282*zeta^4 + 
768*zeta^3 + 486*zeta^2 - 426*zeta - 126)*q^943 + 1/13*(48*zeta^7 + 42*zeta^6 - 
354*zeta^5 - 282*zeta^4 + 768*zeta^3 + 486*zeta^2 - 426*zeta - 126)*q^944 + 
1/13*(-3*zeta^7 - 9*zeta^6 + 3*zeta^5 + 75*zeta^4 + 54*zeta^3 - 177*zeta^2 - 
69*zeta + 78)*q^945 + 1/13*(-15*zeta^7 - 45*zeta^6 + 15*zeta^5 + 120*zeta^4 + 
270*zeta^3 + 135*zeta^2 - 600*zeta - 120)*q^946 + 1/13*(32*zeta^7 + 96*zeta^6 - 
168*zeta^5 - 528*zeta^4 + 240*zeta^3 + 664*zeta^2 - 80*zeta - 16)*q^947 + 
1/13*(28*zeta^7 + 84*zeta^6 - 266*zeta^5 - 462*zeta^4 + 686*zeta^3 + 700*zeta^2 
- 308*zeta - 252)*q^948 + 1/13*(-13*zeta^7 - 5*zeta^6 + 81*zeta^5 + 19*zeta^4 - 
140*zeta^3 - 2*zeta^2 + 58*zeta - 19)*q^949 + 1/13*(-63*zeta^7 - 70*zeta^6 + 
420*zeta^5 + 385*zeta^4 - 770*zeta^3 - 504*zeta^2 + 336*zeta + 91)*q^950 + 
1/13*(18*zeta^7 + 54*zeta^6 - 18*zeta^5 - 297*zeta^4 - 171*zeta^3 + 450*zeta^2 +
108*zeta - 162)*q^951 + 1/13*(10*zeta^7 + 30*zeta^6 - 10*zeta^5 - 165*zeta^4 - 
95*zeta^3 + 250*zeta^2 + 60*zeta - 90)*q^953 + 1/13*(-81*zeta^7 - 90*zeta^6 + 
540*zeta^5 + 495*zeta^4 - 990*zeta^3 - 648*zeta^2 + 432*zeta + 117)*q^954 + 
1/13*(-130*zeta^7 - 50*zeta^6 + 810*zeta^5 + 190*zeta^4 - 1400*zeta^3 - 
20*zeta^2 + 580*zeta - 190)*q^955 + 1/13*(10*zeta^7 + 30*zeta^6 - 95*zeta^5 - 
165*zeta^4 + 245*zeta^3 + 250*zeta^2 - 110*zeta - 90)*q^956 + 1/13*(-36*zeta^7 -
108*zeta^6 + 189*zeta^5 + 594*zeta^4 - 270*zeta^3 - 747*zeta^2 + 90*zeta + 
18)*q^957 + 1/13*(-3*zeta^7 - 9*zeta^6 + 3*zeta^5 + 24*zeta^4 + 54*zeta^3 + 
27*zeta^2 - 120*zeta - 24)*q^958 + 1/13*(-18*zeta^7 - 54*zeta^6 + 18*zeta^5 + 
450*zeta^4 + 324*zeta^3 - 1062*zeta^2 - 414*zeta + 468)*q^959 + 1/13*(144*zeta^7
+ 126*zeta^6 - 1062*zeta^5 - 846*zeta^4 + 2304*zeta^3 + 1458*zeta^2 - 1278*zeta 
- 378)*q^960 + 1/13*(2*zeta^7 + 6*zeta^6 - 2*zeta^5 - 50*zeta^4 - 36*zeta^3 + 
118*zeta^2 + 46*zeta - 52)*q^962 + 1/13*(-3*zeta^7 - 9*zeta^6 + 3*zeta^5 + 
24*zeta^4 + 54*zeta^3 + 27*zeta^2 - 120*zeta - 24)*q^963 + 1/13*(-32*zeta^7 - 
96*zeta^6 + 168*zeta^5 + 528*zeta^4 - 240*zeta^3 - 664*zeta^2 + 80*zeta + 
16)*q^964 + 1/13*(-10*zeta^7 - 30*zeta^6 + 95*zeta^5 + 165*zeta^4 - 245*zeta^3 -
250*zeta^2 + 110*zeta + 90)*q^965 + 1/13*(39*zeta^7 + 15*zeta^6 - 243*zeta^5 - 
57*zeta^4 + 420*zeta^3 + 6*zeta^2 - 174*zeta + 57)*q^966 + (9*zeta^7 + 10*zeta^6
- 60*zeta^5 - 55*zeta^4 + 110*zeta^3 + 72*zeta^2 - 48*zeta - 13)*q^967 + 
1/13*(32*zeta^7 + 96*zeta^6 - 32*zeta^5 - 528*zeta^4 - 304*zeta^3 + 800*zeta^2 +
192*zeta - 288)*q^970 + 1/13*(-81*zeta^7 - 90*zeta^6 + 540*zeta^5 + 495*zeta^4 -
990*zeta^3 - 648*zeta^2 + 432*zeta + 117)*q^971 + (-13*zeta^7 - 5*zeta^6 + 
81*zeta^5 + 19*zeta^4 - 140*zeta^3 - 2*zeta^2 + 58*zeta - 19)*q^972 + 
1/13*(6*zeta^7 + 18*zeta^6 - 57*zeta^5 - 99*zeta^4 + 147*zeta^3 + 150*zeta^2 - 
66*zeta - 54)*q^973 + 1/13*(64*zeta^7 + 192*zeta^6 - 336*zeta^5 - 1056*zeta^4 + 
480*zeta^3 + 1328*zeta^2 - 160*zeta - 32)*q^974 + 1/13*(-zeta^7 - 3*zeta^6 + 
zeta^5 + 8*zeta^4 + 18*zeta^3 + 9*zeta^2 - 40*zeta - 8)*q^975 + 1/13*(11*zeta^7 
+ 33*zeta^6 - 11*zeta^5 - 275*zeta^4 - 198*zeta^3 + 649*zeta^2 + 253*zeta - 
286)*q^976 + 1/13*(-120*zeta^7 - 105*zeta^6 + 885*zeta^5 + 705*zeta^4 - 
1920*zeta^3 - 1215*zeta^2 + 1065*zeta + 315)*q^977 + 1/13*(-48*zeta^7 - 
42*zeta^6 + 354*zeta^5 + 282*zeta^4 - 768*zeta^3 - 486*zeta^2 + 426*zeta + 
126)*q^978 + 1/13*(12*zeta^7 + 36*zeta^6 - 12*zeta^5 - 300*zeta^4 - 216*zeta^3 +
708*zeta^2 + 276*zeta - 312)*q^979 + 1/13*(15*zeta^7 + 45*zeta^6 - 15*zeta^5 - 
120*zeta^4 - 270*zeta^3 - 135*zeta^2 + 600*zeta + 120)*q^980 + 1/13*(-20*zeta^7 
- 60*zeta^6 + 105*zeta^5 + 330*zeta^4 - 150*zeta^3 - 415*zeta^2 + 50*zeta + 
10)*q^981 + (-2*zeta^7 - 6*zeta^6 + 19*zeta^5 + 33*zeta^4 - 49*zeta^3 - 
50*zeta^2 + 22*zeta + 18)*q^982 + 1/13*(-156*zeta^7 - 60*zeta^6 + 972*zeta^5 + 
228*zeta^4 - 1680*zeta^3 - 24*zeta^2 + 696*zeta - 228)*q^983 + 1/13*(162*zeta^7 
+ 180*zeta^6 - 1080*zeta^5 - 990*zeta^4 + 1980*zeta^3 + 1296*zeta^2 - 864*zeta -
234)*q^984 + 1/13*(-6*zeta^7 - 18*zeta^6 + 6*zeta^5 + 99*zeta^4 + 57*zeta^3 - 
150*zeta^2 - 36*zeta + 54)*q^985 + 1/13*(-12*zeta^7 - 36*zeta^6 + 12*zeta^5 + 
198*zeta^4 + 114*zeta^3 - 300*zeta^2 - 72*zeta + 108)*q^987 + 1/13*(-162*zeta^7 
- 180*zeta^6 + 1080*zeta^5 + 990*zeta^4 - 1980*zeta^3 - 1296*zeta^2 + 864*zeta +
234)*q^988 + 1/13*(-65*zeta^7 - 25*zeta^6 + 405*zeta^5 + 95*zeta^4 - 700*zeta^3 
- 10*zeta^2 + 290*zeta - 95)*q^989 + 1/13*(-18*zeta^7 - 54*zeta^6 + 171*zeta^5 +
297*zeta^4 - 441*zeta^3 - 450*zeta^2 + 198*zeta + 162)*q^990 + 1/13*(76*zeta^7 +
228*zeta^6 - 399*zeta^5 - 1254*zeta^4 + 570*zeta^3 + 1577*zeta^2 - 190*zeta - 
38)*q^991 + 1/13*(-7*zeta^7 - 21*zeta^6 + 7*zeta^5 + 56*zeta^4 + 126*zeta^3 + 
63*zeta^2 - 280*zeta - 56)*q^992 + 1/13*(-2*zeta^7 - 6*zeta^6 + 2*zeta^5 + 
50*zeta^4 + 36*zeta^3 - 118*zeta^2 - 46*zeta + 52)*q^993 + 1/13*(-112*zeta^7 - 
98*zeta^6 + 826*zeta^5 + 658*zeta^4 - 1792*zeta^3 - 1134*zeta^2 + 994*zeta + 
294)*q^994 + 1/13*(8*zeta^7 + 7*zeta^6 - 59*zeta^5 - 47*zeta^4 + 128*zeta^3 + 
81*zeta^2 - 71*zeta - 21)*q^995 + 1/13*(-6*zeta^7 - 18*zeta^6 + 6*zeta^5 + 
150*zeta^4 + 108*zeta^3 - 354*zeta^2 - 138*zeta + 156)*q^996 + 1/13*(7*zeta^7 + 
21*zeta^6 - 7*zeta^5 - 56*zeta^4 - 126*zeta^3 - 63*zeta^2 + 280*zeta + 56)*q^997
+ 1/13*(76*zeta^7 + 228*zeta^6 - 399*zeta^5 - 1254*zeta^4 + 570*zeta^3 + 
1577*zeta^2 - 190*zeta - 38)*q^998 + 1/13*(4*zeta^7 + 12*zeta^6 - 38*zeta^5 - 
66*zeta^4 + 98*zeta^3 + 100*zeta^2 - 44*zeta - 36)*q^999 + 1/13*(234*zeta^7 + 
90*zeta^6 - 1458*zeta^5 - 342*zeta^4 + 2520*zeta^3 + 36*zeta^2 - 1044*zeta + 
342)*q^1000 + 1/13*(-6*zeta^7 - 18*zeta^6 + 6*zeta^5 + 99*zeta^4 + 57*zeta^3 - 
150*zeta^2 - 36*zeta + 54)*q^1002 + 1/13*(-30*zeta^7 - 90*zeta^6 + 30*zeta^5 + 
495*zeta^4 + 285*zeta^3 - 750*zeta^2 - 180*zeta + 270)*q^1004 + 1/13*(-54*zeta^7
- 60*zeta^6 + 360*zeta^5 + 330*zeta^4 - 660*zeta^3 - 432*zeta^2 + 288*zeta + 
78)*q^1005 + 1/13*(-273*zeta^7 - 105*zeta^6 + 1701*zeta^5 + 399*zeta^4 - 
2940*zeta^3 - 42*zeta^2 + 1218*zeta - 399)*q^1006 + 1/13*(-42*zeta^7 - 
126*zeta^6 + 399*zeta^5 + 693*zeta^4 - 1029*zeta^3 - 1050*zeta^2 + 462*zeta + 
378)*q^1007 + 1/13*(28*zeta^7 + 84*zeta^6 - 147*zeta^5 - 462*zeta^4 + 210*zeta^3
+ 581*zeta^2 - 70*zeta - 14)*q^1008 + 1/13*(10*zeta^7 + 30*zeta^6 - 10*zeta^5 - 
80*zeta^4 - 180*zeta^3 - 90*zeta^2 + 400*zeta + 80)*q^1009 + 1/13*(zeta^7 + 
3*zeta^6 - zeta^5 - 25*zeta^4 - 18*zeta^3 + 59*zeta^2 + 23*zeta - 26)*q^1010 + 
1/13*(-88*zeta^7 - 77*zeta^6 + 649*zeta^5 + 517*zeta^4 - 1408*zeta^3 - 
891*zeta^2 + 781*zeta + 231)*q^1011 + 1/13*(48*zeta^7 + 42*zeta^6 - 354*zeta^5 -
282*zeta^4 + 768*zeta^3 + 486*zeta^2 - 426*zeta - 126)*q^1012 + 1/13*(3*zeta^7 +
9*zeta^6 - 3*zeta^5 - 75*zeta^4 - 54*zeta^3 + 177*zeta^2 + 69*zeta - 78)*q^1013 
+ 1/13*(-9*zeta^7 - 27*zeta^6 + 9*zeta^5 + 72*zeta^4 + 162*zeta^3 + 81*zeta^2 - 
360*zeta - 72)*q^1014 + 1/13*(-12*zeta^7 - 36*zeta^6 + 63*zeta^5 + 198*zeta^4 - 
90*zeta^3 - 249*zeta^2 + 30*zeta + 6)*q^1015 + 1/13*(-36*zeta^7 - 108*zeta^6 + 
342*zeta^5 + 594*zeta^4 - 882*zeta^3 - 900*zeta^2 + 396*zeta + 324)*q^1016 + 
1/13*(-63*zeta^7 - 70*zeta^6 + 420*zeta^5 + 385*zeta^4 - 770*zeta^3 - 504*zeta^2
+ 336*zeta + 91)*q^1018 + 1/13*(-24*zeta^7 - 72*zeta^6 + 24*zeta^5 + 396*zeta^4 
+ 228*zeta^3 - 600*zeta^2 - 144*zeta + 216)*q^1019 + 1/13*(42*zeta^7 + 
126*zeta^6 - 42*zeta^5 - 693*zeta^4 - 399*zeta^3 + 1050*zeta^2 + 252*zeta - 
378)*q^1021 + 1/13*(-81*zeta^7 - 90*zeta^6 + 540*zeta^5 + 495*zeta^4 - 
990*zeta^3 - 648*zeta^2 + 432*zeta + 117)*q^1022 + 1/13*(39*zeta^7 + 15*zeta^6 -
243*zeta^5 - 57*zeta^4 + 420*zeta^3 + 6*zeta^2 - 174*zeta + 57)*q^1023 + 
(-2*zeta^7 - 6*zeta^6 + 19*zeta^5 + 33*zeta^4 - 49*zeta^3 - 50*zeta^2 + 22*zeta 
+ 18)*q^1024 + 1/13*(24*zeta^7 + 72*zeta^6 - 126*zeta^5 - 396*zeta^4 + 
180*zeta^3 + 498*zeta^2 - 60*zeta - 12)*q^1025 + 1/13*(24*zeta^7 + 72*zeta^6 - 
24*zeta^5 - 192*zeta^4 - 432*zeta^3 - 216*zeta^2 + 960*zeta + 192)*q^1026 + 
1/13*(-10*zeta^7 - 30*zeta^6 + 10*zeta^5 + 250*zeta^4 + 180*zeta^3 - 590*zeta^2 
- 230*zeta + 260)*q^1027 + 1/13*(192*zeta^7 + 168*zeta^6 - 1416*zeta^5 - 
1128*zeta^4 + 3072*zeta^3 + 1944*zeta^2 - 1704*zeta - 504)*q^1028 + 
1/13*(40*zeta^7 + 35*zeta^6 - 295*zeta^5 - 235*zeta^4 + 640*zeta^3 + 405*zeta^2 
- 355*zeta - 105)*q^1029 + 1/13*(-2*zeta^7 - 6*zeta^6 + 2*zeta^5 + 50*zeta^4 + 
36*zeta^3 - 118*zeta^2 - 46*zeta + 52)*q^1030 + 1/13*(6*zeta^7 + 18*zeta^6 - 
6*zeta^5 - 48*zeta^4 - 108*zeta^3 - 54*zeta^2 + 240*zeta + 48)*q^1031 + 
1/13*(-84*zeta^7 - 252*zeta^6 + 441*zeta^5 + 1386*zeta^4 - 630*zeta^3 - 
1743*zeta^2 + 210*zeta + 42)*q^1032 + 1/13*(-4*zeta^7 - 12*zeta^6 + 38*zeta^5 + 
66*zeta^4 - 98*zeta^3 - 100*zeta^2 + 44*zeta + 36)*q^1033 + 1/13*(-117*zeta^7 - 
45*zeta^6 + 729*zeta^5 + 171*zeta^4 - 1260*zeta^3 - 18*zeta^2 + 522*zeta - 
171)*q^1034 + 1/13*(-27*zeta^7 - 30*zeta^6 + 180*zeta^5 + 165*zeta^4 - 
330*zeta^3 - 216*zeta^2 + 144*zeta + 39)*q^1035 + 1/13*(-4*zeta^7 - 12*zeta^6 + 
4*zeta^5 + 66*zeta^4 + 38*zeta^3 - 100*zeta^2 - 24*zeta + 36)*q^1036 + 
O(q^1037), 1/25*(-3*zeta^7 - zeta^6 + 20*zeta^5 + zeta^4 - 38*zeta^3 + 25)*q + 
1/25*(13*zeta^7 + 15*zeta^6 - 78*zeta^5 - 91*zeta^4 + 142*zeta^3 + 147*zeta^2 - 
92*zeta - 29)*q^2 + 1/25*(4*zeta^7 + 9*zeta^6 - 7*zeta^5 - 37*zeta^4 - 35*zeta^3
+ 38*zeta^2 + 60*zeta - 35)*q^3 + 1/25*(-26*zeta^7 - 16*zeta^6 + 181*zeta^5 + 
99*zeta^4 - 385*zeta^3 - 162*zeta^2 + 237*zeta + 38)*q^4 + 1/25*(34*zeta^7 + 
2*zeta^6 - 197*zeta^5 - 12*zeta^4 + 292*zeta^3 + 16*zeta^2 - 104*zeta - 30)*q^5 
+ 1/25*(48*zeta^7 + 18*zeta^6 - 292*zeta^5 - 82*zeta^4 + 487*zeta^3 + 84*zeta^2 
- 199*zeta - 10)*q^6 + 1/25*(29*zeta^7 + 8*zeta^6 - 183*zeta^5 - 23*zeta^4 + 
332*zeta^3 - 18*zeta^2 - 181*zeta + 28)*q^7 + 1/25*(-25*zeta^7 - 23*zeta^6 + 
142*zeta^5 + 118*zeta^4 - 208*zeta^3 - 133*zeta^2 + 80*zeta - 23)*q^8 + 
1/25*(-11*zeta^7 - 34*zeta^6 + 41*zeta^5 + 194*zeta^4 - 8*zeta^3 - 279*zeta^2 + 
5*zeta + 48)*q^9 + 1/25*(17*zeta^7 + 26*zeta^6 - 133*zeta^5 - 185*zeta^4 + 
330*zeta^3 + 320*zeta^2 - 255*zeta - 100)*q^10 + 1/25*(-50*zeta^7 + 36*zeta^6 + 
346*zeta^5 - 264*zeta^4 - 698*zeta^3 + 468*zeta^2 + 390*zeta - 104)*q^11 + 
1/25*(6*zeta^7 - 6*zeta^6 - 11*zeta^5 + 36*zeta^4 - 76*zeta^3 - 52*zeta^2 + 
144*zeta - 10)*q^12 + 1/25*(30*zeta^7 - 30*zeta^6 - 236*zeta^5 + 131*zeta^4 + 
580*zeta^3 - 70*zeta^2 - 385*zeta - 38)*q^13 + 1/25*(-7*zeta^7 - 6*zeta^6 + 
38*zeta^5 + 48*zeta^4 - 32*zeta^3 - 104*zeta^2 - 41*zeta + 32)*q^14 + 
1/25*(14*zeta^7 + 68*zeta^6 - 84*zeta^5 - 380*zeta^4 + 182*zeta^3 + 544*zeta^2 -
149*zeta - 102)*q^15 + 1/25*(20*zeta^7 + 58*zeta^6 - 82*zeta^5 - 293*zeta^4 - 
29*zeta^3 + 316*zeta^2 + 219*zeta - 48)*q^16 + 1/25*(35*zeta^7 + 27*zeta^6 - 
218*zeta^5 - 144*zeta^4 + 359*zeta^3 + 188*zeta^2 - 75*zeta - 69)*q^18 + 
1/25*(13*zeta^7 + 15*zeta^6 - 78*zeta^5 - 91*zeta^4 + 142*zeta^3 + 147*zeta^2 - 
92*zeta - 29)*q^19 + 1/25*(17*zeta^7 + 4*zeta^6 - 74*zeta^5 - 6*zeta^4 - 
6*zeta^3 + 16*zeta^2 + 215*zeta - 46)*q^20 + 1/25*(-6*zeta^7 + 10*zeta^6 + 
38*zeta^5 - 35*zeta^4 - 70*zeta^3 - 22*zeta^2 + 29*zeta + 30)*q^21 + 
1/25*(32*zeta^7 + 42*zeta^6 - 202*zeta^5 - 252*zeta^4 + 346*zeta^3 + 428*zeta^2 
- 122*zeta - 132)*q^22 + 1/25*(-15*zeta^7 + 28*zeta^6 + 95*zeta^5 - 178*zeta^4 -
198*zeta^3 + 282*zeta^2 + 136*zeta - 122)*q^23 + 1/25*(19*zeta^7 - 18*zeta^6 - 
121*zeta^5 + 137*zeta^4 + 204*zeta^3 - 244*zeta^2 - 67*zeta + 52)*q^24 + 
1/25*(42*zeta^7 + 9*zeta^6 - 229*zeta^5 - 40*zeta^4 + 272*zeta^3 - 14*zeta^2 - 
27*zeta + 147)*q^25 + 1/25*(-60*zeta^7 + 15*zeta^6 + 413*zeta^5 - 139*zeta^4 - 
790*zeta^3 + 338*zeta^2 + 317*zeta - 217)*q^26 + 1/25*(72*zeta^7 - 15*zeta^6 - 
456*zeta^5 + 171*zeta^4 + 804*zeta^3 - 393*zeta^2 - 372*zeta + 120)*q^27 + 
1/25*(23*zeta^7 - 34*zeta^6 - 167*zeta^5 + 230*zeta^4 + 364*zeta^3 - 384*zeta^2 
- 228*zeta + 98)*q^28 + 1/25*(-40*zeta^7 - 24*zeta^6 + 246*zeta^5 + 144*zeta^4 -
411*zeta^3 - 239*zeta^2 + 175*zeta + 86)*q^29 + 1/25*(10*zeta^7 + 62*zeta^6 - 
4*zeta^5 - 355*zeta^4 - 180*zeta^3 + 530*zeta^2 + 209*zeta - 90)*q^30 + 
1/25*(24*zeta^7 + 59*zeta^6 - 75*zeta^5 - 323*zeta^4 - 73*zeta^3 + 486*zeta^2 + 
208*zeta - 225)*q^31 + 1/25*(-19*zeta^7 - 50*zeta^6 + 114*zeta^5 + 267*zeta^4 - 
242*zeta^3 - 405*zeta^2 + 227*zeta + 193)*q^32 + 1/25*(-52*zeta^7 - 48*zeta^6 + 
316*zeta^5 + 282*zeta^4 - 490*zeta^3 - 376*zeta^2 + 150*zeta - 12)*q^33 + 
1/25*(zeta^7 + 35*zeta^6 + 28*zeta^5 - 182*zeta^4 - 178*zeta^3 + 190*zeta^2 + 
183*zeta + 25)*q^35 + 1/25*(-6*zeta^7 - 35*zeta^6 + 36*zeta^5 + 176*zeta^4 - 
100*zeta^3 - 258*zeta^2 + 135*zeta + 164)*q^36 + 1/25*(-25*zeta^7 - 22*zeta^6 + 
88*zeta^5 + 80*zeta^4 + 76*zeta^3 - 92*zeta^2 - 335*zeta + 116)*q^37 + 
1/25*(-6*zeta^7 + 61*zeta^5 - 13*zeta^4 - 185*zeta^3 + 68*zeta^2 + 149*zeta - 
26)*q^38 + 1/25*(-98*zeta^7 - 57*zeta^6 + 626*zeta^5 + 342*zeta^4 - 1136*zeta^3 
- 555*zeta^2 + 608*zeta + 182)*q^39 + 1/25*(-85*zeta^7 - 96*zeta^6 + 501*zeta^5 
+ 538*zeta^4 - 746*zeta^3 - 750*zeta^2 + 196*zeta + 234)*q^40 + 1/25*(-75*zeta^7
- 11*zeta^6 + 447*zeta^5 - 36*zeta^4 - 730*zeta^3 + 261*zeta^2 + 345*zeta - 
172)*q^41 + 1/25*(18*zeta^7 - 3*zeta^6 - 147*zeta^5 + 45*zeta^4 + 354*zeta^3 - 
112*zeta^2 - 191*zeta + 37)*q^42 + 1/25*(95*zeta^7 - 11*zeta^6 - 610*zeta^5 + 
128*zeta^4 + 1044*zeta^3 - 385*zeta^2 - 356*zeta + 345)*q^43 + 1/25*(-152*zeta^7
- 40*zeta^6 + 986*zeta^5 + 140*zeta^4 - 1862*zeta^3 - 4*zeta^2 + 1046*zeta - 
64)*q^44 + 1/25*(-29*zeta^7 - 84*zeta^6 + 137*zeta^5 + 508*zeta^4 - 93*zeta^3 - 
768*zeta^2 - 95*zeta + 200)*q^45 + 1/25*(66*zeta^7 + 43*zeta^6 - 462*zeta^5 - 
258*zeta^4 + 985*zeta^3 + 402*zeta^2 - 701*zeta - 96)*q^46 + 1/25*(-82*zeta^7 - 
46*zeta^6 + 519*zeta^5 + 344*zeta^4 - 955*zeta^3 - 759*zeta^2 + 486*zeta + 
228)*q^47 + 1/25*(3*zeta^7 - 52*zeta^6 - 68*zeta^5 + 258*zeta^4 + 166*zeta^3 - 
300*zeta^2 + 29*zeta + 150)*q^48 + 1/25*(-25*zeta^7 - 52*zeta^6 + 150*zeta^5 + 
325*zeta^4 - 262*zeta^3 - 479*zeta^2 + 115*zeta - 57)*q^49 + 1/25*(-29*zeta^7 - 
79*zeta^6 + 124*zeta^5 + 373*zeta^4 + 14*zeta^3 - 380*zeta^2 - 366*zeta + 
175)*q^50 + 1/25*(-53*zeta^7 - 83*zeta^6 + 288*zeta^5 + 464*zeta^4 - 312*zeta^3 
- 566*zeta^2 - 33*zeta - 37)*q^52 + 1/25*(-66*zeta^7 - 20*zeta^6 + 396*zeta^5 + 
194*zeta^4 - 652*zeta^3 - 366*zeta^2 + 282*zeta - 154)*q^53 + 1/25*(-30*zeta^7 -
75*zeta^6 + 102*zeta^5 + 429*zeta^4 + 57*zeta^3 - 672*zeta^2 - 222*zeta + 
285)*q^54 + 1/25*(120*zeta^7 + 8*zeta^6 - 878*zeta^5 - 118*zeta^4 + 1990*zeta^3 
+ 370*zeta^2 - 1274*zeta - 156)*q^55 + 1/25*(-22*zeta^7 - 15*zeta^6 + 112*zeta^5
+ 90*zeta^4 - 97*zeta^3 - 162*zeta^2 - 83*zeta + 76)*q^56 + 1/25*(48*zeta^7 + 
18*zeta^6 - 292*zeta^5 - 82*zeta^4 + 487*zeta^3 + 84*zeta^2 - 199*zeta - 
10)*q^57 + 1/25*(-20*zeta^7 + 9*zeta^6 + 167*zeta^5 - 31*zeta^4 - 405*zeta^3 - 
19*zeta^2 + 245*zeta + 88)*q^58 + 1/25*(-62*zeta^7 + 71*zeta^6 + 413*zeta^5 - 
442*zeta^4 - 692*zeta^3 + 798*zeta^2 + 143*zeta - 423)*q^59 + 1/25*(40*zeta^7 + 
65*zeta^6 - 229*zeta^5 - 343*zeta^4 + 370*zeta^3 + 446*zeta^2 - 201*zeta - 
59)*q^60 + 1/25*(zeta^7 - 22*zeta^6 + 6*zeta^5 + 161*zeta^4 - 63*zeta^3 - 
282*zeta^2 + 94*zeta + 76)*q^61 + 1/25*(156*zeta^7 + 80*zeta^6 - 960*zeta^5 - 
390*zeta^4 + 1597*zeta^3 + 450*zeta^2 - 623*zeta - 146)*q^62 + 1/25*(-28*zeta^7 
- 9*zeta^6 + 123*zeta^5 + 54*zeta^4 - 21*zeta^3 - 110*zeta^2 - 227*zeta + 
86)*q^63 + 1/25*(-32*zeta^7 + 48*zeta^6 + 275*zeta^5 - 235*zeta^4 - 735*zeta^3 +
231*zeta^2 + 519*zeta + 10)*q^64 + 1/25*(-71*zeta^7 - 89*zeta^6 + 288*zeta^5 + 
489*zeta^4 + 37*zeta^3 - 808*zeta^2 - 693*zeta + 409)*q^65 + 1/25*(18*zeta^7 - 
28*zeta^6 - 108*zeta^5 + 166*zeta^4 + 196*zeta^3 - 186*zeta^2 - 174*zeta - 
134)*q^66 + 1/25*(111*zeta^7 + 11*zeta^6 - 766*zeta^5 - 126*zeta^4 + 1549*zeta^3
+ 308*zeta^2 - 813*zeta - 49)*q^67 + 1/25*(-109*zeta^7 - 99*zeta^6 + 664*zeta^5 
+ 538*zeta^4 - 1036*zeta^3 - 690*zeta^2 + 189*zeta + 155)*q^69 + 1/25*(-5*zeta^7
- 32*zeta^6 + 30*zeta^5 + 175*zeta^4 - 72*zeta^3 - 249*zeta^2 + 70*zeta + 
63)*q^70 + 1/25*(6*zeta^7 + 119*zeta^6 + 14*zeta^5 - 745*zeta^4 - 45*zeta^3 + 
1176*zeta^2 - 234*zeta - 369)*q^71 + 1/25*(30*zeta^7 + 24*zeta^6 - 180*zeta^5 - 
168*zeta^4 + 300*zeta^3 + 345*zeta^2 - 132*zeta - 96)*q^72 + 1/25*(-78*zeta^7 - 
33*zeta^6 + 358*zeta^5 + 198*zeta^4 - 139*zeta^3 - 382*zeta^2 - 537*zeta + 
248)*q^73 + 1/25*(-123*zeta^7 - 34*zeta^6 + 763*zeta^5 + 130*zeta^4 - 
1308*zeta^3 - 84*zeta^2 + 560*zeta + 14)*q^74 + 1/25*(-12*zeta^7 + 79*zeta^6 + 
93*zeta^5 - 513*zeta^4 - 151*zeta^3 + 771*zeta^2 - 57*zeta - 88)*q^75 + 
1/25*(-11*zeta^7 - 13*zeta^6 + 78*zeta^5 + 60*zeta^4 - 172*zeta^3 - 67*zeta^2 + 
104*zeta + 15)*q^76 + 1/25*(52*zeta^7 + 152*zeta^6 - 256*zeta^5 - 838*zeta^4 + 
340*zeta^3 + 1184*zeta^2 - 252*zeta - 260)*q^77 + 1/25*(-49*zeta^7 + 31*zeta^6 +
445*zeta^5 - 92*zeta^4 - 1150*zeta^3 - 113*zeta^2 + 715*zeta + 316)*q^78 + 
1/25*(160*zeta^7 + 42*zeta^6 - 1020*zeta^5 - 142*zeta^4 + 1793*zeta^3 + 
48*zeta^2 - 781*zeta - 78)*q^79 + 1/25*(54*zeta^7 + 115*zeta^6 - 264*zeta^5 - 
690*zeta^4 + 139*zeta^3 + 1224*zeta^2 + 481*zeta - 432)*q^80 + 1/25*(48*zeta^7 +
24*zeta^6 - 363*zeta^5 - 129*zeta^4 + 855*zeta^3 + 141*zeta^2 - 579*zeta - 
18)*q^81 + 1/25*(43*zeta^7 + 75*zeta^6 - 202*zeta^5 - 499*zeta^4 + 109*zeta^3 + 
908*zeta^2 + 225*zeta - 311)*q^82 + 1/25*(34*zeta^7 - 120*zeta^6 - 204*zeta^5 + 
596*zeta^4 + 250*zeta^3 - 768*zeta^2 + 25*zeta + 334)*q^83 + 1/25*(39*zeta^7 + 
45*zeta^6 - 228*zeta^5 - 250*zeta^4 + 318*zeta^3 + 314*zeta^2 - 39*zeta - 
17)*q^84 + 1/25*(108*zeta^7 - 26*zeta^6 - 782*zeta^5 + 29*zeta^4 + 1709*zeta^3 +
180*zeta^2 - 1107*zeta + 80)*q^86 + 1/25*(-27*zeta^7 - 33*zeta^6 + 162*zeta^5 + 
183*zeta^4 - 312*zeta^3 - 303*zeta^2 + 249*zeta + 159)*q^87 + 1/25*(32*zeta^7 + 
28*zeta^6 - 126*zeta^5 - 128*zeta^4 - 44*zeta^3 + 196*zeta^2 + 376*zeta - 
148)*q^88 + 1/25*(-4*zeta^7 + 110*zeta^6 + 88*zeta^5 - 551*zeta^4 - 360*zeta^3 +
557*zeta^2 + 281*zeta - 2)*q^89 + 1/25*(-32*zeta^7 + 15*zeta^6 + 189*zeta^5 - 
90*zeta^4 - 303*zeta^3 + 164*zeta^2 + 167*zeta - 26)*q^90 + 1/25*(19*zeta^7 + 
109*zeta^6 - 35*zeta^5 - 684*zeta^4 - 171*zeta^3 + 1071*zeta^2 + 266*zeta - 
210)*q^91 + 1/25*(-43*zeta^7 - 38*zeta^6 + 230*zeta^5 + 157*zeta^4 - 323*zeta^3 
- 58*zeta^2 + 174*zeta - 132)*q^92 + 1/25*(121*zeta^7 + 44*zeta^6 - 775*zeta^5 -
157*zeta^4 + 1378*zeta^3 - 5*zeta^2 - 581*zeta + 248)*q^93 + 1/25*(-28*zeta^7 - 
41*zeta^6 + 91*zeta^5 + 250*zeta^4 + 92*zeta^3 - 344*zeta^2 - 147*zeta - 
43)*q^94 + 1/25*(17*zeta^7 + 26*zeta^6 - 133*zeta^5 - 185*zeta^4 + 330*zeta^3 + 
320*zeta^2 - 255*zeta - 100)*q^95 + 1/25*(-111*zeta^7 - 78*zeta^6 + 631*zeta^5 +
430*zeta^4 - 946*zeta^3 - 588*zeta^2 + 310*zeta + 58)*q^96 + 1/25*(-136*zeta^7 -
122*zeta^6 + 814*zeta^5 + 732*zeta^4 - 1254*zeta^3 - 1248*zeta^2 + 326*zeta + 
436)*q^97 + 1/25*(-68*zeta^7 - 148*zeta^6 + 371*zeta^5 + 839*zeta^4 - 495*zeta^3
- 1201*zeta^2 + 161*zeta + 198)*q^98 + 1/25*(30*zeta^7 - 6*zeta^6 - 108*zeta^5 +
126*zeta^4 - 114*zeta^3 - 264*zeta^2 + 522*zeta - 42)*q^99 + 1/25*(31*zeta^7 + 
37*zeta^6 - 186*zeta^5 - 213*zeta^4 + 350*zeta^3 + 349*zeta^2 - 258*zeta - 
135)*q^100 + 1/25*(-40*zeta^7 - 98*zeta^6 + 182*zeta^5 + 509*zeta^4 - 41*zeta^3 
- 568*zeta^2 - 291*zeta + 44)*q^101 + 1/25*(24*zeta^7 + 148*zeta^6 - 20*zeta^5 -
707*zeta^4 - 466*zeta^3 + 698*zeta^2 + 843*zeta - 204)*q^103 + 1/25*(7*zeta^7 + 
138*zeta^6 - 42*zeta^5 - 753*zeta^4 + 152*zeta^3 + 1043*zeta^2 - 184*zeta - 
209)*q^104 + 1/25*(7*zeta^7 - 21*zeta^6 - 40*zeta^5 + 137*zeta^4 + 13*zeta^3 - 
208*zeta^2 + 141*zeta + 49)*q^105 + 1/25*(-64*zeta^7 - 120*zeta^6 + 326*zeta^5 +
726*zeta^4 - 350*zeta^3 - 1198*zeta^2 + 26*zeta + 252)*q^106 + 1/25*(146*zeta^7 
+ 37*zeta^6 - 752*zeta^5 - 222*zeta^4 + 723*zeta^3 + 414*zeta^2 + 329*zeta - 
308)*q^107 + 1/25*(-105*zeta^6 - 72*zeta^5 + 666*zeta^4 + 339*zeta^3 - 
1053*zeta^2 - 336*zeta + 240)*q^108 + 1/25*(-48*zeta^7 - 52*zeta^6 + 408*zeta^5 
+ 420*zeta^4 - 1064*zeta^3 - 828*zeta^2 + 792*zeta + 352)*q^109 + 
1/25*(-48*zeta^7 + 60*zeta^6 + 312*zeta^5 - 366*zeta^4 - 492*zeta^3 + 652*zeta^2
+ 68*zeta - 352)*q^110 + 1/25*(-126*zeta^7 - 105*zeta^6 + 807*zeta^5 + 
489*zeta^4 - 1494*zeta^3 - 488*zeta^2 + 743*zeta - 61)*q^111 + 1/25*(109*zeta^7 
+ 2*zeta^6 - 756*zeta^5 + 17*zeta^4 + 1539*zeta^3 - 54*zeta^2 - 872*zeta - 
68)*q^112 + 1/25*(-89*zeta^7 + 82*zeta^6 + 657*zeta^5 - 598*zeta^4 - 1394*zeta^3
+ 1056*zeta^2 + 802*zeta - 154)*q^113 + 1/25*(-26*zeta^7 - 48*zeta^6 + 
191*zeta^5 + 288*zeta^4 - 422*zeta^3 - 480*zeta^2 + 266*zeta + 122)*q^114 + 
1/25*(66*zeta^7 + 102*zeta^6 - 365*zeta^5 - 622*zeta^4 + 505*zeta^3 + 
1037*zeta^2 - 160*zeta - 224)*q^115 + 1/25*(-20*zeta^7 - zeta^6 + 105*zeta^5 + 
17*zeta^4 - 61*zeta^3 - 82*zeta^2 - 196*zeta + 43)*q^116 + 1/25*(-57*zeta^7 + 
116*zeta^6 + 342*zeta^5 - 587*zeta^4 - 518*zeta^3 + 705*zeta^2 + 219*zeta - 
137)*q^117 + 1/25*(-79*zeta^7 + 51*zeta^6 + 604*zeta^5 - 171*zeta^4 - 
1426*zeta^3 + 8*zeta^2 + 1032*zeta - 99)*q^118 + 1/25*(-31*zeta^7 + 63*zeta^6 + 
280*zeta^5 - 270*zeta^4 - 796*zeta^3 + 194*zeta^2 + 699*zeta - 87)*q^120 + 
1/25*(16*zeta^7 - 192*zeta^6 - 96*zeta^5 + 1006*zeta^4 + 30*zeta^3 - 1358*zeta^2
+ 183*zeta + 412)*q^121 + 1/25*(-19*zeta^7 - 60*zeta^6 + 57*zeta^5 + 344*zeta^4 
+ 54*zeta^3 - 530*zeta^2 - 121*zeta + 218)*q^122 + 1/25*(10*zeta^7 - 12*zeta^6 -
14*zeta^5 - 12*zeta^4 - 130*zeta^3 + 295*zeta^2 + 196*zeta - 144)*q^123 + 
1/25*(26*zeta^7 - 8*zeta^6 - 115*zeta^5 + 48*zeta^4 + 32*zeta^3 - 70*zeta^2 + 
164*zeta - 30)*q^124 + 1/25*(135*zeta^7 - 45*zeta^6 - 919*zeta^5 + 392*zeta^4 + 
1783*zeta^3 - 771*zeta^2 - 922*zeta + 110)*q^125 + 1/25*(-14*zeta^7 - 30*zeta^6 
+ 47*zeta^5 + 134*zeta^4 + 9*zeta^3 - 76*zeta^2 - 7*zeta - 104)*q^126 + 
1/25*(-25*zeta^7 - 185*zeta^6 + 114*zeta^5 + 1023*zeta^4 - 230*zeta^3 - 
1511*zeta^2 + 346*zeta + 489)*q^127 + 1/25*(14*zeta^7 - 152*zeta^6 - 92*zeta^5 +
847*zeta^4 + 14*zeta^3 - 1312*zeta^2 + 290*zeta + 550)*q^128 + 1/25*(45*zeta^7 +
26*zeta^6 - 417*zeta^5 - 285*zeta^4 + 1138*zeta^3 + 696*zeta^2 - 819*zeta - 
404)*q^129 + 1/25*(-197*zeta^7 - 85*zeta^6 + 1253*zeta^5 + 376*zeta^4 - 
2165*zeta^3 - 363*zeta^2 + 890*zeta + 222)*q^130 + 1/25*(268*zeta^7 + 68*zeta^6 
- 1548*zeta^5 - 408*zeta^4 + 2249*zeta^3 + 677*zeta^2 - 653*zeta - 398)*q^131 + 
1/25*(56*zeta^7 - 24*zeta^6 - 394*zeta^5 + 54*zeta^4 + 850*zeta^3 + 182*zeta^2 -
502*zeta - 132)*q^132 + 1/25*(-7*zeta^7 - 6*zeta^6 + 38*zeta^5 + 48*zeta^4 - 
32*zeta^3 - 104*zeta^2 - 41*zeta + 32)*q^133 + 1/25*(-30*zeta^7 + 141*zeta^6 + 
180*zeta^5 - 796*zeta^4 - 280*zeta^3 + 1018*zeta^2 + 221*zeta + 132)*q^134 + 
1/25*(-45*zeta^7 + 147*zeta^6 + 462*zeta^5 - 678*zeta^4 - 1461*zeta^3 + 
576*zeta^2 + 1323*zeta - 93)*q^135 + 1/25*(105*zeta^7 + 9*zeta^6 - 726*zeta^5 - 
124*zeta^4 + 1473*zeta^3 + 308*zeta^2 - 813*zeta + 1)*q^137 + 1/25*(127*zeta^7 +
74*zeta^6 - 762*zeta^5 - 449*zeta^4 + 1392*zeta^3 + 851*zeta^2 - 988*zeta - 
457)*q^138 + 1/25*(2*zeta^7 - 101*zeta^6 - 28*zeta^5 + 671*zeta^4 - 25*zeta^3 - 
1100*zeta^2 + 354*zeta + 299)*q^139 + 1/25*(-94*zeta^7 - 46*zeta^6 + 641*zeta^5 
+ 318*zeta^4 - 1325*zeta^3 - 623*zeta^2 + 784*zeta + 176)*q^140 + 
1/25*(136*zeta^7 + 150*zeta^6 - 852*zeta^5 - 900*zeta^4 + 1449*zeta^3 + 
1523*zeta^2 - 541*zeta - 482)*q^141 + 1/25*(170*zeta^7 + 157*zeta^6 - 
1026*zeta^5 - 854*zeta^4 + 1605*zeta^3 + 1149*zeta^2 - 504*zeta - 388)*q^142 + 
1/25*(406*zeta^7 + 52*zeta^6 - 2752*zeta^5 - 154*zeta^4 + 5474*zeta^3 - 
28*zeta^2 - 3112*zeta - 120)*q^143 + 1/25*(-67*zeta^7 - 131*zeta^6 + 454*zeta^5 
+ 661*zeta^4 - 994*zeta^3 - 861*zeta^2 + 670*zeta + 243)*q^144 + 
1/25*(-65*zeta^7 - 88*zeta^6 + 371*zeta^5 + 461*zeta^4 - 578*zeta^3 - 579*zeta^2
+ 281*zeta + 36)*q^145 + 1/25*(-39*zeta^7 - 64*zeta^6 + 150*zeta^5 + 267*zeta^4 
- 47*zeta^3 - 96*zeta^2 + 6*zeta - 260)*q^146 + 1/25*(-47*zeta^7 - 18*zeta^6 + 
335*zeta^5 + 58*zeta^4 - 636*zeta^3 - 12*zeta^2 + 280*zeta + 134)*q^147 + 
1/25*(-106*zeta^7 - 41*zeta^6 + 544*zeta^5 + 246*zeta^4 - 507*zeta^3 - 
450*zeta^2 - 289*zeta + 268)*q^148 + 1/25*(88*zeta^7 + 90*zeta^6 - 501*zeta^5 - 
608*zeta^4 + 745*zeta^3 + 1196*zeta^2 - 262*zeta - 316)*q^149 + 1/25*(22*zeta^7 
+ 123*zeta^6 + 17*zeta^5 - 607*zeta^4 - 341*zeta^3 + 758*zeta^2 + 258*zeta - 
413)*q^150 + 1/25*(-12*zeta^7 + 171*zeta^6 + 72*zeta^5 - 892*zeta^4 + 2*zeta^3 +
1210*zeta^2 - 196*zeta - 402)*q^151 + 1/25*(18*zeta^6 + 18*zeta^5 - 77*zeta^4 - 
99*zeta^3 + 64*zeta^2 + 147*zeta - 52)*q^152 + 1/25*(-44*zeta^7 - 12*zeta^6 + 
296*zeta^5 + 70*zeta^4 - 572*zeta^3 - 124*zeta^2 + 222*zeta + 92)*q^154 + 
1/25*(94*zeta^7 + 314*zeta^6 - 564*zeta^5 - 1792*zeta^4 + 1126*zeta^3 + 
2608*zeta^2 - 807*zeta - 394)*q^155 + 1/25*(-49*zeta^7 - 15*zeta^6 + 268*zeta^5 
+ 151*zeta^4 - 205*zeta^3 - 416*zeta^2 - 387*zeta + 143)*q^156 + 
1/25*(-238*zeta^7 - 108*zeta^6 + 1707*zeta^5 + 683*zeta^4 - 3775*zeta^3 - 
1136*zeta^2 + 2401*zeta + 286)*q^157 + 1/25*(-6*zeta^7 - 108*zeta^6 + 37*zeta^5 
+ 648*zeta^4 - 10*zeta^3 - 1132*zeta^2 - 234*zeta + 326)*q^158 + 
1/25*(-162*zeta^7 + 12*zeta^6 + 1074*zeta^5 - 204*zeta^4 - 2004*zeta^3 + 
504*zeta^2 + 972*zeta - 36)*q^159 + 1/25*(143*zeta^7 - 8*zeta^6 - 918*zeta^5 + 
181*zeta^4 + 1671*zeta^3 - 504*zeta^2 - 838*zeta + 164)*q^160 + 1/25*(-28*zeta^7
+ 43*zeta^6 + 239*zeta^5 - 286*zeta^4 - 564*zeta^3 + 504*zeta^2 + 249*zeta - 
175)*q^161 + 1/25*(12*zeta^7 + 24*zeta^6 - 138*zeta^5 - 93*zeta^4 + 462*zeta^3 +
102*zeta^2 - 348*zeta - 102)*q^162 + 1/25*(105*zeta^7 - 3*zeta^6 - 624*zeta^5 + 
174*zeta^4 + 999*zeta^3 - 561*zeta^2 - 432*zeta + 276)*q^163 + 1/25*(-65*zeta^7 
+ 99*zeta^6 + 465*zeta^5 - 664*zeta^4 - 1009*zeta^3 + 1101*zeta^2 + 638*zeta - 
306)*q^164 + 1/25*(-140*zeta^7 - 42*zeta^6 + 804*zeta^5 + 252*zeta^4 - 
1146*zeta^3 - 424*zeta^2 + 290*zeta + 232)*q^165 + 1/25*(30*zeta^7 - 30*zeta^6 -
236*zeta^5 + 131*zeta^4 + 580*zeta^3 - 70*zeta^2 - 385*zeta - 38)*q^166 + 
1/25*(-5*zeta^7 + 28*zeta^6 + 20*zeta^5 - 206*zeta^4 + 38*zeta^3 + 356*zeta^2 - 
187*zeta - 74)*q^167 + 1/25*(21*zeta^7 - 2*zeta^6 - 126*zeta^5 - 7*zeta^4 + 
212*zeta^3 + 45*zeta^2 - 114*zeta + 5)*q^168 + 1/25*(-49*zeta^7 + 39*zeta^6 + 
382*zeta^5 - 187*zeta^4 - 925*zeta^3 + 130*zeta^2 + 552*zeta + 115)*q^169 + 
1/25*(35*zeta^7 + 27*zeta^6 - 218*zeta^5 - 144*zeta^4 + 359*zeta^3 + 188*zeta^2 
- 75*zeta - 69)*q^171 + 1/25*(-zeta^7 + 22*zeta^6 + 6*zeta^5 - 143*zeta^4 - 
22*zeta^3 + 185*zeta^2 + 69*zeta + 115)*q^172 + 1/25*(133*zeta^7 + 202*zeta^6 - 
582*zeta^5 - 1248*zeta^4 + 136*zeta^3 + 2192*zeta^2 + 987*zeta - 872)*q^173 + 
1/25*(60*zeta^7 + 78*zeta^6 - 429*zeta^5 - 402*zeta^4 + 945*zeta^3 + 420*zeta^2 
- 624*zeta - 24)*q^174 + 1/25*(-22*zeta^7 - 14*zeta^6 + 175*zeta^5 + 84*zeta^4 -
444*zeta^3 - 120*zeta^2 + 392*zeta + 10)*q^175 + 1/25*(96*zeta^7 + 246*zeta^6 - 
440*zeta^5 - 1496*zeta^4 + 296*zeta^3 + 2274*zeta^2 + 274*zeta - 500)*q^176 + 
1/25*(-90*zeta^7 - 51*zeta^6 + 687*zeta^5 + 387*zeta^4 - 1599*zeta^3 - 
735*zeta^2 + 1077*zeta + 336)*q^177 + 1/25*(167*zeta^7 - 2*zeta^6 - 1161*zeta^5 
+ 174*zeta^4 + 2296*zeta^3 - 621*zeta^2 - 1021*zeta + 460)*q^178 + 
1/25*(-79*zeta^7 + 64*zeta^6 + 463*zeta^5 - 386*zeta^4 - 592*zeta^3 + 733*zeta^2
- 9*zeta - 514)*q^179 + 1/25*(160*zeta^7 + 18*zeta^6 - 1051*zeta^5 - 4*zeta^4 + 
2001*zeta^3 - 184*zeta^2 - 1093*zeta + 64)*q^180 + 1/25*(-182*zeta^7 - 62*zeta^6
+ 1090*zeta^5 + 282*zeta^4 - 1797*zeta^3 - 288*zeta^2 + 737*zeta - 30)*q^181 + 
1/25*(-8*zeta^7 - 38*zeta^6 + 120*zeta^5 + 228*zeta^4 - 455*zeta^3 - 361*zeta^2 
+ 483*zeta + 46)*q^182 + 1/25*(-26*zeta^7 - 70*zeta^6 + 125*zeta^5 + 398*zeta^4 
- 105*zeta^3 - 577*zeta^2 - 16*zeta + 96)*q^183 + 1/25*(-23*zeta^7 - 74*zeta^6 +
97*zeta^5 + 482*zeta^4 - 48*zeta^3 - 826*zeta^2 - 29*zeta + 268)*q^184 + 
1/25*(-19*zeta^7 - 258*zeta^6 + 114*zeta^5 + 1393*zeta^4 - 364*zeta^3 - 
1947*zeta^2 + 446*zeta + 509)*q^185 + 1/25*(153*zeta^7 + 21*zeta^6 - 1050*zeta^5
- 223*zeta^4 + 2103*zeta^3 + 494*zeta^2 - 1146*zeta + 13)*q^186 + 
1/25*(77*zeta^7 + 159*zeta^6 - 380*zeta^5 - 863*zeta^4 + 242*zeta^3 + 
1008*zeta^2 + 288*zeta + 41)*q^188 + 1/25*(36*zeta^7 - 39*zeta^6 - 216*zeta^5 + 
162*zeta^4 + 324*zeta^3 - 168*zeta^2 - 93*zeta + 174)*q^189 + 1/25*(25*zeta^7 + 
76*zeta^6 - 84*zeta^5 - 450*zeta^4 - 38*zeta^3 + 716*zeta^2 + 135*zeta - 
278)*q^190 + 1/25*(-88*zeta^7 - 174*zeta^6 + 514*zeta^5 + 973*zeta^4 - 
810*zeta^3 - 1341*zeta^2 + 369*zeta + 206)*q^191 + 1/25*(106*zeta^7 + 39*zeta^6 
- 670*zeta^5 - 234*zeta^4 + 1201*zeta^3 + 366*zeta^2 - 661*zeta - 136)*q^192 + 
1/25*(161*zeta^7 - 238*zeta^6 - 1169*zeta^5 + 1610*zeta^4 + 2548*zeta^3 - 
2688*zeta^2 - 1596*zeta + 686)*q^193 + 1/25*(-68*zeta^7 + 80*zeta^6 + 514*zeta^5
- 496*zeta^4 - 1090*zeta^3 + 676*zeta^2 + 510*zeta + 48)*q^194 + 
1/25*(-179*zeta^7 - 169*zeta^6 + 1040*zeta^5 + 857*zeta^4 - 1610*zeta^3 - 
965*zeta^2 + 676*zeta - 127)*q^195 + 1/25*(-2*zeta^7 + 98*zeta^6 + 74*zeta^5 - 
571*zeta^4 - 230*zeta^3 + 884*zeta^2 + 24*zeta - 272)*q^196 + 1/25*(-199*zeta^7 
+ 101*zeta^6 + 1330*zeta^5 - 782*zeta^4 - 2495*zeta^3 + 1387*zeta^2 + 1150*zeta 
- 204)*q^197 + 1/25*(138*zeta^7 + 6*zeta^6 - 858*zeta^5 + 48*zeta^4 + 
1506*zeta^3 - 198*zeta^2 - 696*zeta + 108)*q^198 + 1/25*(126*zeta^7 + 98*zeta^6 
- 535*zeta^5 - 588*zeta^4 - 36*zeta^3 + 1108*zeta^2 + 1304*zeta - 578)*q^199 + 
1/25*(-34*zeta^7 - 140*zeta^6 + 67*zeta^5 + 835*zeta^4 + 345*zeta^3 - 
1358*zeta^2 - 479*zeta + 270)*q^200 + 1/25*(71*zeta^7 + 131*zeta^6 - 385*zeta^5 
- 977*zeta^4 + 393*zeta^3 + 1894*zeta^2 + 137*zeta - 535)*q^201 + 
1/25*(71*zeta^7 + 110*zeta^6 - 426*zeta^5 - 631*zeta^4 + 810*zeta^3 + 993*zeta^2
- 595*zeta - 309)*q^202 + 1/25*(31*zeta^7 - 9*zeta^6 - 226*zeta^5 + 39*zeta^4 + 
499*zeta^3 - 2*zeta^2 - 258*zeta - 69)*q^203 + 1/25*(32*zeta^7 - 150*zeta^6 - 
374*zeta^5 + 710*zeta^4 + 1289*zeta^3 - 638*zeta^2 - 1212*zeta + 64)*q^205 + 
1/25*(-176*zeta^7 - 333*zeta^6 + 1056*zeta^5 + 1936*zeta^4 - 1998*zeta^3 - 
2954*zeta^2 + 1380*zeta + 586)*q^206 + 1/25*(-28*zeta^7 - 56*zeta^6 + 183*zeta^5
+ 478*zeta^4 - 284*zeta^3 - 986*zeta^2 + 88*zeta + 224)*q^207 + 1/25*(286*zeta^7
+ 338*zeta^6 - 1823*zeta^5 - 1986*zeta^4 + 3395*zeta^3 + 3027*zeta^2 - 1848*zeta
- 592)*q^208 + 1/25*(32*zeta^7 + 42*zeta^6 - 202*zeta^5 - 252*zeta^4 + 
346*zeta^3 + 428*zeta^2 - 122*zeta - 132)*q^209 + 1/25*(-27*zeta^7 - 33*zeta^6 +
155*zeta^5 + 188*zeta^4 - 221*zeta^3 - 267*zeta^2 + 50*zeta + 74)*q^210 + 
1/25*(-331*zeta^7 + 22*zeta^6 + 2054*zeta^5 - 527*zeta^4 - 3539*zeta^3 + 
1514*zeta^2 + 1662*zeta - 612)*q^211 + 1/25*(112*zeta^7 + 320*zeta^6 - 
604*zeta^5 - 1738*zeta^4 + 988*zeta^3 + 2436*zeta^2 - 736*zeta - 588)*q^212 + 
1/25*(57*zeta^7 - 132*zeta^6 - 381*zeta^5 + 774*zeta^4 + 576*zeta^3 - 
1291*zeta^2 + 19*zeta + 610)*q^213 + 1/25*(73*zeta^7 + 116*zeta^6 - 416*zeta^5 -
637*zeta^4 + 707*zeta^3 + 736*zeta^2 - 516*zeta + 60)*q^214 + 1/25*(421*zeta^7 +
238*zeta^6 - 2637*zeta^5 - 1162*zeta^4 + 4438*zeta^3 + 1344*zeta^2 - 1718*zeta -
598)*q^215 + 1/25*(-42*zeta^7 - 99*zeta^6 + 204*zeta^5 + 594*zeta^4 - 96*zeta^3 
- 1053*zeta^2 - 408*zeta + 366)*q^216 + 1/25*(-26*zeta^7 - 6*zeta^6 + 158*zeta^5
+ 77*zeta^4 - 270*zeta^3 - 252*zeta^2 + 117*zeta + 94)*q^217 + 1/25*(-88*zeta^7 
- 228*zeta^6 + 352*zeta^5 + 1420*zeta^4 - 52*zeta^3 - 2384*zeta^2 - 408*zeta + 
860)*q^218 + 1/25*(123*zeta^7 - 38*zeta^6 - 738*zeta^5 + 131*zeta^4 + 
1256*zeta^3 + 39*zeta^2 - 744*zeta - 109)*q^219 + 1/25*(-24*zeta^7 - 144*zeta^6 
+ 24*zeta^5 + 790*zeta^4 + 444*zeta^3 - 884*zeta^2 - 510*zeta - 208)*q^220 + 
1/25*(-179*zeta^7 - 81*zeta^6 + 1172*zeta^5 + 518*zeta^4 - 2150*zeta^3 - 
810*zeta^2 + 927*zeta + 85)*q^222 + 1/25*(-14*zeta^7 + 198*zeta^6 + 84*zeta^5 - 
1008*zeta^4 + 26*zeta^3 + 1376*zeta^2 - 313*zeta - 614)*q^223 + 1/25*(-7*zeta^7 
+ 26*zeta^6 + 7*zeta^5 - 238*zeta^4 + 124*zeta^3 + 466*zeta^2 - 293*zeta - 
64)*q^224 + 1/25*(28*zeta^7 + 18*zeta^6 - 266*zeta^5 - 39*zeta^4 + 770*zeta^3 - 
179*zeta^2 - 611*zeta + 102)*q^225 + 1/25*(-10*zeta^7 + 31*zeta^6 + 140*zeta^5 -
186*zeta^4 - 553*zeta^3 + 368*zeta^2 + 725*zeta - 168)*q^226 + 1/25*(-186*zeta^7
- 24*zeta^6 + 1150*zeta^5 + 34*zeta^4 - 1993*zeta^3 + 114*zeta^2 + 895*zeta - 
98)*q^227 + 1/25*(3*zeta^7 + 26*zeta^6 + 9*zeta^5 - 135*zeta^4 - 74*zeta^3 + 
132*zeta^2 + 27*zeta + 52)*q^228 + 1/25*(-76*zeta^7 + 223*zeta^6 + 505*zeta^5 - 
1289*zeta^4 - 706*zeta^3 + 2110*zeta^2 - 147*zeta - 973)*q^229 + 
1/25*(120*zeta^7 + 33*zeta^6 - 715*zeta^5 - 124*zeta^4 + 1088*zeta^3 - 40*zeta^2
- 337*zeta + 335)*q^230 + 1/25*(-146*zeta^7 + 12*zeta^6 + 1004*zeta^5 - 
130*zeta^4 - 2010*zeta^3 + 260*zeta^2 + 1100*zeta + 40)*q^231 + 1/25*(6*zeta^7 +
48*zeta^6 - 18*zeta^5 - 294*zeta^4 - 45*zeta^3 + 450*zeta^2 + 99*zeta - 
138)*q^232 + 1/25*(-18*zeta^7 + 189*zeta^6 - 6*zeta^5 - 1134*zeta^4 + 357*zeta^3
+ 1932*zeta^2 - 297*zeta - 444)*q^233 + 1/25*(76*zeta^7 + 204*zeta^6 - 
461*zeta^5 - 1065*zeta^4 + 785*zeta^3 + 1207*zeta^2 - 431*zeta - 90)*q^234 + 
1/25*(4*zeta^7 - 197*zeta^6 - 89*zeta^5 + 1241*zeta^4 + 87*zeta^3 - 1942*zeta^2 
+ 556*zeta + 583)*q^235 + 1/25*(-27*zeta^7 + 25*zeta^6 + 162*zeta^5 - 79*zeta^4 
- 226*zeta^3 + 75*zeta^2 + 6*zeta - 241)*q^236 + 1/25*(109*zeta^7 + 9*zeta^6 - 
754*zeta^5 - 153*zeta^4 + 1531*zeta^3 + 370*zeta^2 - 924*zeta + 105)*q^237 + 
1/25*(-96*zeta^7 - 146*zeta^6 + 526*zeta^5 + 820*zeta^4 - 589*zeta^3 - 
1006*zeta^2 - 30*zeta - 72)*q^239 + 1/25*(-107*zeta^7 - 196*zeta^6 + 642*zeta^5 
+ 1189*zeta^4 - 1164*zeta^3 - 1795*zeta^2 + 668*zeta + 65)*q^240 + 
1/25*(-154*zeta^7 - 215*zeta^6 + 663*zeta^5 + 1291*zeta^4 - 95*zeta^3 - 
2246*zeta^2 - 1262*zeta + 953)*q^241 + 1/25*(6*zeta^7 - 118*zeta^6 - 150*zeta^5 
+ 633*zeta^4 + 630*zeta^3 - 808*zeta^2 - 535*zeta + 86)*q^242 + 1/25*(-78*zeta^7
- 63*zeta^6 + 270*zeta^5 + 378*zeta^4 + 360*zeta^3 - 741*zeta^2 - 1272*zeta + 
426)*q^243 + 1/25*(-25*zeta^7 - 17*zeta^6 + 149*zeta^5 + 90*zeta^4 - 236*zeta^3 
- 117*zeta^2 + 83*zeta + 28)*q^244 + 1/25*(-151*zeta^7 - 124*zeta^6 + 
1096*zeta^5 + 835*zeta^4 - 2453*zeta^3 - 1376*zeta^2 + 1684*zeta + 444)*q^245 + 
1/25*(-23*zeta^7 + 5*zeta^6 + 290*zeta^5 - 115*zeta^4 - 962*zeta^3 + 255*zeta^2 
+ 650*zeta + 51)*q^246 + 1/25*(-60*zeta^7 + 15*zeta^6 + 413*zeta^5 - 139*zeta^4 
- 790*zeta^3 + 338*zeta^2 + 317*zeta - 217)*q^247 + 1/25*(33*zeta^7 - 80*zeta^6 
- 159*zeta^5 + 621*zeta^4 + 80*zeta^3 - 1146*zeta^2 + 195*zeta + 332)*q^248 + 
1/25*(42*zeta^7 - 135*zeta^6 - 346*zeta^5 + 878*zeta^4 + 871*zeta^3 - 
1419*zeta^2 - 634*zeta + 368)*q^249 + 1/25*(-20*zeta^7 - 84*zeta^6 + 92*zeta^5 +
504*zeta^4 + zeta^3 - 891*zeta^2 - 325*zeta + 290)*q^250 + 1/25*(-370*zeta^7 - 
160*zeta^6 + 2628*zeta^5 + 1052*zeta^4 - 5740*zeta^3 - 1875*zeta^2 + 3600*zeta +
504)*q^251 + 1/25*(-14*zeta^7 + 20*zeta^6 + 45*zeta^5 - 190*zeta^4 + 92*zeta^3 +
362*zeta^2 - 334*zeta - 32)*q^252 + 1/25*(-56*zeta^7 - 122*zeta^6 + 336*zeta^5 +
656*zeta^4 - 692*zeta^3 - 1012*zeta^2 + 620*zeta + 492)*q^253 + 1/25*(2*zeta^7 -
88*zeta^6 - 102*zeta^5 + 412*zeta^4 + 513*zeta^3 - 382*zeta^2 - 624*zeta + 
106)*q^254 + 1/25*(-104*zeta^7 - 64*zeta^6 + 664*zeta^5 + 327*zeta^4 - 
1156*zeta^3 - 438*zeta^2 + 261*zeta + 284)*q^256 + 1/25*(32*zeta^7 - 93*zeta^6 -
192*zeta^5 + 480*zeta^4 + 274*zeta^3 - 602*zeta^2 - 92*zeta + 122)*q^257 + 
1/25*(101*zeta^7 + 228*zeta^6 - 452*zeta^5 - 1490*zeta^4 + 218*zeta^3 + 
2620*zeta^2 + 411*zeta - 886)*q^258 + 1/25*(106*zeta^7 + 26*zeta^6 - 717*zeta^5 
- 248*zeta^4 + 1465*zeta^3 + 667*zeta^2 - 842*zeta - 236)*q^259 + 
1/25*(-248*zeta^7 - 128*zeta^6 + 1394*zeta^5 + 768*zeta^4 - 1837*zeta^3 - 
1329*zeta^2 + 153*zeta + 602)*q^260 + 1/25*(-63*zeta^7 + 45*zeta^6 + 411*zeta^5 
- 318*zeta^4 - 798*zeta^3 + 549*zeta^2 + 447*zeta - 192)*q^261 + 
1/25*(134*zeta^7 + 129*zeta^6 - 1015*zeta^5 - 917*zeta^4 + 2387*zeta^3 + 
1601*zeta^2 - 1701*zeta - 560)*q^262 + 1/5*(6*zeta^7 - 69*zeta^6 - 83*zeta^5 + 
406*zeta^4 + 220*zeta^3 - 638*zeta^2 - 41*zeta + 205)*q^263 + 1/25*(108*zeta^7 +
108*zeta^6 - 660*zeta^5 - 534*zeta^4 + 1140*zeta^3 + 600*zeta^2 - 552*zeta + 
24)*q^264 + 1/25*(-422*zeta^7 - 192*zeta^6 + 2900*zeta^5 + 1118*zeta^4 - 
5982*zeta^3 - 1552*zeta^2 + 3716*zeta + 472)*q^265 + 1/25*(19*zeta^7 + 4*zeta^6 
- 107*zeta^5 - 18*zeta^4 + 168*zeta^3 + 18*zeta^2 - 70*zeta + 30)*q^266 + 
1/25*(218*zeta^7 + 156*zeta^6 - 1465*zeta^5 - 936*zeta^4 + 2911*zeta^3 + 
1505*zeta^2 - 1823*zeta - 420)*q^267 + 1/25*(138*zeta^7 + 180*zeta^6 - 
916*zeta^5 - 998*zeta^4 + 1820*zeta^3 + 1321*zeta^2 - 1082*zeta - 196)*q^268 + 
1/25*(-3*zeta^7 + 138*zeta^6 + 41*zeta^5 - 914*zeta^4 + 28*zeta^3 + 1494*zeta^2 
- 481*zeta - 408)*q^269 + 1/25*(-120*zeta^7 - 369*zeta^6 + 720*zeta^5 + 
2118*zeta^4 - 1416*zeta^3 - 3096*zeta^2 + 987*zeta + 438)*q^270 + 
1/25*(-51*zeta^7 - 17*zeta^6 + 340*zeta^5 + 17*zeta^4 - 646*zeta^3 + 425)*q^271 
+ 1/25*(110*zeta^7 + 12*zeta^6 - 758*zeta^5 - 98*zeta^4 + 1529*zeta^3 + 
246*zeta^2 - 702*zeta - 178)*q^273 + 1/25*(-4*zeta^7 + 171*zeta^6 + 24*zeta^5 - 
978*zeta^4 + 4*zeta^3 + 1312*zeta^2 + 37*zeta + 74)*q^274 + 1/25*(-34*zeta^7 - 
106*zeta^6 + 74*zeta^5 + 550*zeta^4 + 210*zeta^3 - 764*zeta^2 - 334*zeta + 
386)*q^275 + 1/25*(-66*zeta^7 - 142*zeta^6 + 457*zeta^5 + 710*zeta^4 - 
965*zeta^3 - 677*zeta^2 + 640*zeta)*q^276 + 1/25*(-316*zeta^7 - 101*zeta^6 + 
1939*zeta^5 + 606*zeta^4 - 3267*zeta^3 - 960*zeta^2 + 1571*zeta + 418)*q^277 + 
1/25*(-74*zeta^7 - 121*zeta^6 + 442*zeta^5 + 690*zeta^4 - 631*zeta^3 - 
981*zeta^2 + 106*zeta + 368)*q^278 + 1/25*(77*zeta^7 - 63*zeta^6 - 530*zeta^5 + 
442*zeta^4 + 1017*zeta^3 - 713*zeta^2 - 446*zeta + 68)*q^279 + 1/25*(-16*zeta^7 
- 95*zeta^6 + 73*zeta^5 + 526*zeta^4 - 124*zeta^3 - 772*zeta^2 + 167*zeta + 
235)*q^280 + 1/25*(204*zeta^7 + 474*zeta^6 - 1200*zeta^5 - 2517*zeta^4 + 
2190*zeta^3 + 3430*zeta^2 - 1486*zeta - 808)*q^281 + 1/25*(68*zeta^7 - 
141*zeta^6 - 557*zeta^5 + 847*zeta^4 + 1239*zeta^3 - 1109*zeta^2 - 527*zeta - 
88)*q^282 + 1/25*(43*zeta^7 - 415*zeta^6 - 495*zeta^5 + 2630*zeta^4 + 
1626*zeta^3 - 4155*zeta^2 - 1449*zeta + 1132)*q^283 + 1/25*(-202*zeta^7 - 
139*zeta^6 + 1112*zeta^5 + 834*zeta^4 - 1350*zeta^3 - 1459*zeta^2 - 138*zeta + 
618)*q^284 + 1/25*(10*zeta^7 + 62*zeta^6 - 4*zeta^5 - 355*zeta^4 - 180*zeta^3 + 
530*zeta^2 + 209*zeta - 90)*q^285 + 1/25*(30*zeta^7 + 112*zeta^6 - 166*zeta^5 - 
816*zeta^4 + 236*zeta^3 + 1500*zeta^2 - 182*zeta - 396)*q^286 + 1/25*(-5*zeta^7 
+ 51*zeta^6 + 30*zeta^5 - 231*zeta^4 + 20*zeta^3 + 323*zeta^2 - 169*zeta - 
323)*q^287 + 1/25*(-152*zeta^7 - 162*zeta^6 + 902*zeta^5 + 894*zeta^4 - 
1313*zeta^3 - 1130*zeta^2 + 192*zeta + 120)*q^288 + 1/25*(-13*zeta^7 + 15*zeta^6
+ 106*zeta^5 - 45*zeta^4 - 271*zeta^3 + 2*zeta^2 + 258*zeta - 81)*q^290 + 
1/25*(-38*zeta^7 + 228*zeta^5 - 42*zeta^4 - 460*zeta^3 - 34*zeta^2 + 470*zeta + 
442)*q^291 + 1/25*(-39*zeta^7 + 52*zeta^6 + 137*zeta^5 - 480*zeta^4 + 206*zeta^3
+ 894*zeta^2 - 869*zeta - 78)*q^292 + 1/25*(204*zeta^7 + 164*zeta^6 - 
1370*zeta^5 - 1000*zeta^4 + 2770*zeta^3 + 1618*zeta^2 - 1628*zeta - 360)*q^293 +
1/25*(-98*zeta^7 - 27*zeta^6 + 714*zeta^5 + 162*zeta^4 - 1635*zeta^3 - 
196*zeta^2 + 1343*zeta + 4)*q^294 + 1/25*(-446*zeta^7 - 150*zeta^6 + 2858*zeta^5
+ 586*zeta^4 - 5013*zeta^3 - 408*zeta^2 + 2137*zeta + 386)*q^295 + 
1/25*(-133*zeta^7 + 34*zeta^6 + 856*zeta^5 - 341*zeta^4 - 1543*zeta^3 + 
730*zeta^2 + 724*zeta - 188)*q^296 + 1/25*(240*zeta^7 + 390*zeta^6 - 1374*zeta^5
- 2058*zeta^4 + 2220*zeta^3 + 2676*zeta^2 - 1206*zeta - 354)*q^297 + 
1/25*(91*zeta^7 + 44*zeta^6 - 453*zeta^5 - 243*zeta^4 + 398*zeta^3 + 217*zeta^2 
+ 57*zeta + 280)*q^298 + 1/25*(162*zeta^7 - 117*zeta^6 - 1177*zeta^5 + 
753*zeta^4 + 2437*zeta^3 - 1069*zeta^2 - 1211*zeta - 80)*q^299 + 
1/25*(136*zeta^7 + 60*zeta^6 - 804*zeta^5 - 298*zeta^4 + 1295*zeta^3 + 
354*zeta^2 - 505*zeta - 6)*q^300 + 1/25*(-10*zeta^7 + 29*zeta^6 + 14*zeta^5 - 
174*zeta^4 + 141*zeta^3 + 284*zeta^2 - 225*zeta - 36)*q^301 + 1/25*(-24*zeta^7 +
74*zeta^6 + 254*zeta^5 - 395*zeta^4 - 790*zeta^3 + 507*zeta^2 + 609*zeta - 
50)*q^302 + 1/25*(-19*zeta^7 + 60*zeta^6 + 166*zeta^5 - 278*zeta^4 - 262*zeta^3 
+ 256*zeta^2 - 165*zeta - 142)*q^303 + 1/25*(-53*zeta^7 - 88*zeta^6 + 318*zeta^5
+ 509*zeta^4 - 602*zeta^3 - 791*zeta^2 + 429*zeta + 203)*q^304 + 
1/25*(-41*zeta^7 + 61*zeta^6 + 348*zeta^5 - 239*zeta^4 - 930*zeta^3 + 132*zeta^2
+ 810*zeta - 141)*q^305 + 1/25*(34*zeta^7 + 96*zeta^6 - 142*zeta^5 - 507*zeta^4 
- 35*zeta^3 + 568*zeta^2 + 291*zeta + 6)*q^307 + 1/25*(-28*zeta^7 + 130*zeta^6 +
168*zeta^5 - 628*zeta^4 - 156*zeta^3 + 832*zeta^2 - 164*zeta - 512)*q^308 + 
1/25*(-33*zeta^7 - 214*zeta^6 - 11*zeta^5 + 1146*zeta^4 + 424*zeta^3 - 
1578*zeta^2 - 211*zeta + 708)*q^309 + 1/25*(70*zeta^7 + 326*zeta^6 - 140*zeta^5 
- 1887*zeta^4 - 700*zeta^3 + 2880*zeta^2 + 957*zeta - 514)*q^310 + 
1/25*(34*zeta^7 + 2*zeta^6 - 197*zeta^5 - 12*zeta^4 + 292*zeta^3 + 16*zeta^2 - 
104*zeta - 30)*q^311 + 1/25*(47*zeta^7 + 123*zeta^6 - 263*zeta^5 - 724*zeta^4 + 
297*zeta^3 + 1065*zeta^2 + 56*zeta - 374)*q^312 + 1/25*(258*zeta^7 + 16*zeta^6 -
1751*zeta^5 + 12*zeta^4 + 3475*zeta^3 - 182*zeta^2 - 1945*zeta - 56)*q^313 + 
1/25*(-43*zeta^7 - 119*zeta^6 + 372*zeta^5 + 576*zeta^4 - 1076*zeta^3 - 
763*zeta^2 + 834*zeta + 353)*q^314 + 1/25*(-56*zeta^7 - 160*zeta^6 + 302*zeta^5 
+ 869*zeta^4 - 494*zeta^3 - 1218*zeta^2 + 368*zeta + 294)*q^315 + 
1/25*(133*zeta^7 + 58*zeta^6 - 865*zeta^5 - 277*zeta^4 + 1658*zeta^3 + 
248*zeta^2 - 979*zeta + 12)*q^316 + 1/25*(-265*zeta^7 - 247*zeta^6 + 1513*zeta^5
+ 1388*zeta^4 - 2219*zeta^3 - 1941*zeta^2 + 630*zeta + 398)*q^317 + 
1/25*(12*zeta^7 + 102*zeta^6 - 48*zeta^5 - 612*zeta^4 - 66*zeta^3 + 1080*zeta^2 
+ 378*zeta - 336)*q^318 + 1/25*(-156*zeta^7 - 96*zeta^6 + 1086*zeta^5 + 
594*zeta^4 - 2310*zeta^3 - 972*zeta^2 + 1422*zeta + 228)*q^319 + 
1/25*(107*zeta^7 + 180*zeta^6 - 417*zeta^5 - 1024*zeta^4 - 78*zeta^3 + 
1666*zeta^2 + 929*zeta - 754)*q^320 + 1/25*(-95*zeta^7 + 174*zeta^6 + 570*zeta^5
- 891*zeta^4 - 892*zeta^3 + 1049*zeta^2 + 446*zeta - 95)*q^321 + 
1/25*(-137*zeta^7 - 71*zeta^6 + 888*zeta^5 + 421*zeta^4 - 1596*zeta^3 - 
624*zeta^2 + 594*zeta + 147)*q^322 + 1/25*(66*zeta^7 + 18*zeta^6 - 444*zeta^5 - 
105*zeta^4 + 858*zeta^3 + 186*zeta^2 - 333*zeta - 138)*q^324 + 1/25*(-32*zeta^7 
- 290*zeta^6 + 192*zeta^5 + 1654*zeta^4 - 438*zeta^3 - 2298*zeta^2 + 283*zeta + 
96)*q^325 + 1/25*(-69*zeta^7 - 141*zeta^6 + 297*zeta^5 + 891*zeta^4 - 87*zeta^3 
- 1542*zeta^2 - 387*zeta + 561)*q^326 + 1/25*(32*zeta^7 - 72*zeta^6 - 400*zeta^5
+ 468*zeta^4 + 1360*zeta^3 - 916*zeta^2 - 1132*zeta + 216)*q^327 + 
1/25*(32*zeta^7 + 72*zeta^6 - 114*zeta^5 - 432*zeta^4 - 153*zeta^3 + 787*zeta^2 
+ 613*zeta - 310)*q^328 + 1/25*(14*zeta^7 - 168*zeta^6 - 234*zeta^5 + 
1090*zeta^4 + 799*zeta^3 - 1758*zeta^2 - 665*zeta + 318)*q^329 + 
1/25*(-70*zeta^7 - 60*zeta^6 + 520*zeta^5 + 418*zeta^4 - 1194*zeta^3 - 
716*zeta^2 + 832*zeta + 248)*q^330 + 1/25*(84*zeta^7 + 300*zeta^6 - 476*zeta^5 -
1622*zeta^4 + 916*zeta^3 + 2304*zeta^2 - 784*zeta - 664)*q^331 + 
1/25*(-188*zeta^7 - 421*zeta^6 + 1053*zeta^5 + 2259*zeta^4 - 1738*zeta^3 - 
3082*zeta^2 + 1121*zeta + 639)*q^332 + 1/25*(-238*zeta^7 + 36*zeta^6 + 
1627*zeta^5 - 332*zeta^4 - 3219*zeta^3 + 634*zeta^2 + 1717*zeta + 8)*q^333 + 
1/25*(-15*zeta^7 + 28*zeta^6 + 95*zeta^5 - 178*zeta^4 - 198*zeta^3 + 282*zeta^2 
+ 136*zeta - 122)*q^334 + 1/25*(4*zeta^7 - 139*zeta^6 - 103*zeta^5 + 834*zeta^4 
+ 543*zeta^3 - 1500*zeta^2 - 959*zeta + 494)*q^335 + 1/25*(-122*zeta^7 - 
118*zeta^6 + 851*zeta^5 + 656*zeta^4 - 1815*zeta^3 - 859*zeta^2 + 1142*zeta + 
132)*q^336 + 1/25*(-9*zeta^7 - 192*zeta^6 - 22*zeta^5 + 1210*zeta^4 + 58*zeta^3 
- 1920*zeta^2 + 401*zeta + 594)*q^337 + 1/25*(38*zeta^7 - 58*zeta^6 - 228*zeta^5
+ 304*zeta^4 + 374*zeta^3 - 344*zeta^2 - 227*zeta - 42)*q^338 + 1/25*(49*zeta^7 
+ 15*zeta^6 - 328*zeta^5 - 44*zeta^4 + 628*zeta^3 + 62*zeta^2 - 111*zeta - 
271)*q^339 + 1/25*(-104*zeta^7 - 60*zeta^6 + 668*zeta^5 + 410*zeta^4 - 
1178*zeta^3 - 624*zeta^2 + 594*zeta - 128)*q^341 + 1/25*(-48*zeta^7 - 31*zeta^6 
+ 288*zeta^5 + 190*zeta^4 - 524*zeta^3 - 348*zeta^2 + 363*zeta + 154)*q^342 + 
1/25*(54*zeta^7 - zeta^6 - 187*zeta^5 + 173*zeta^4 - 225*zeta^3 - 402*zeta^2 + 
930*zeta - 105)*q^343 + 1/25*(-56*zeta^7 - 256*zeta^6 + 137*zeta^5 + 1463*zeta^4
+ 435*zeta^3 - 2167*zeta^2 - 643*zeta + 366)*q^344 + 1/25*(-20*zeta^7 - 
84*zeta^6 + 92*zeta^5 + 504*zeta^4 + zeta^3 - 891*zeta^2 - 325*zeta + 290)*q^345
+ 1/25*(199*zeta^7 + 152*zeta^6 - 1327*zeta^5 - 746*zeta^4 + 2320*zeta^3 + 
870*zeta^2 - 874*zeta - 642)*q^346 + 1/25*(-312*zeta^7 - 180*zeta^6 + 
1951*zeta^5 + 846*zeta^4 - 3565*zeta^3 - 686*zeta^2 + 2105*zeta - 208)*q^347 + 
1/25*(21*zeta^7 - 48*zeta^6 - 207*zeta^5 + 315*zeta^4 + 546*zeta^3 - 537*zeta^2 
- 261*zeta + 156)*q^348 + 1/25*(-120*zeta^7 + 72*zeta^6 + 900*zeta^5 - 
546*zeta^4 - 1908*zeta^3 + 1100*zeta^2 + 832*zeta - 500)*q^349 + 
1/25*(-11*zeta^7 + 26*zeta^6 + 151*zeta^5 - 85*zeta^4 - 478*zeta^3 - 56*zeta^2 +
309*zeta + 204)*q^350 + 1/25*(99*zeta^7 + 348*zeta^6 - 447*zeta^5 - 2112*zeta^4 
+ 189*zeta^3 + 3204*zeta^2 + 483*zeta - 876)*q^351 + 1/25*(160*zeta^7 + 
42*zeta^6 - 782*zeta^5 - 252*zeta^4 + 560*zeta^3 + 490*zeta^2 + 680*zeta - 
384)*q^352 + 1/25*(418*zeta^7 + 346*zeta^6 - 2823*zeta^5 - 2078*zeta^4 + 
5755*zeta^3 + 3261*zeta^2 - 3420*zeta - 696)*q^353 + 1/25*(-84*zeta^7 - 
219*zeta^6 + 345*zeta^5 + 1383*zeta^4 - 87*zeta^3 - 2346*zeta^2 - 348*zeta + 
825)*q^354 + 1/25*(232*zeta^7 + 281*zeta^6 - 1392*zeta^5 - 1806*zeta^4 + 
2432*zeta^3 + 2832*zeta^2 - 1271*zeta + 122)*q^355 + 1/25*(159*zeta^7 + 
163*zeta^6 - 950*zeta^5 - 924*zeta^4 + 1409*zeta^3 + 1192*zeta^2 - 303*zeta - 
41)*q^356 + 1/25*(17*zeta^7 + 165*zeta^6 + 46*zeta^5 - 754*zeta^4 - 661*zeta^3 +
700*zeta^2 + 1101*zeta - 335)*q^358 + 1/25*(-20*zeta^7 - 311*zeta^6 + 120*zeta^5
+ 1682*zeta^4 - 404*zeta^3 - 2344*zeta^2 + 503*zeta + 582)*q^359 + 
1/25*(12*zeta^7 + 108*zeta^6 - 15*zeta^5 - 666*zeta^4 - 48*zeta^3 + 1050*zeta^2 
- 120*zeta - 348)*q^360 + 1/25*(-196*zeta^7 - 152*zeta^6 + 1201*zeta^5 + 
1051*zeta^4 - 2085*zeta^3 - 2117*zeta^2 + 985*zeta + 582)*q^361 + 
1/25*(154*zeta^7 + 214*zeta^6 - 1125*zeta^5 - 1284*zeta^4 + 2500*zeta^3 + 
2108*zeta^2 - 1704*zeta - 518)*q^362 + 1/25*(-20*zeta^7 - 195*zeta^6 + 36*zeta^5
+ 1202*zeta^4 + 263*zeta^3 - 1851*zeta^2 - 442*zeta + 540)*q^363 + 
1/25*(-282*zeta^7 - 11*zeta^6 + 1903*zeta^5 - 69*zeta^4 - 3743*zeta^3 + 
313*zeta^2 + 2069*zeta + 16)*q^364 + 1/25*(-128*zeta^7 - 415*zeta^6 + 677*zeta^5
+ 2264*zeta^4 - 1112*zeta^3 - 3208*zeta^2 + 903*zeta + 823)*q^365 + 
1/25*(-92*zeta^7 - 13*zeta^6 + 587*zeta^5 + 8*zeta^4 - 1016*zeta^3 + 172*zeta^2 
+ 385*zeta - 259)*q^366 + 1/25*(30*zeta^7 + 109*zeta^6 - 238*zeta^5 - 747*zeta^4
+ 648*zeta^3 + 1223*zeta^2 - 614*zeta - 288)*q^367 + 1/25*(27*zeta^7 + 17*zeta^6
- 63*zeta^5 - 138*zeta^4 - 62*zeta^3 + 261*zeta^2 + 79*zeta + 220)*q^368 + 
1/25*(42*zeta^7 + 15*zeta^6 - 90*zeta^5 - 90*zeta^4 - 489*zeta^3 + 228*zeta^2 + 
1053*zeta - 228)*q^369 + 1/25*(6*zeta^7 - 162*zeta^6 - 229*zeta^5 + 910*zeta^4 +
1025*zeta^3 - 1313*zeta^2 - 908*zeta + 200)*q^370 + 1/25*(70*zeta^7 - 4*zeta^6 -
318*zeta^5 + 92*zeta^4 + 8*zeta^3 - 100*zeta^2 + 914*zeta - 128)*q^371 + 
1/25*(-38*zeta^7 + 58*zeta^6 + 228*zeta^5 - 304*zeta^4 - 374*zeta^3 + 344*zeta^2
+ 227*zeta + 42)*q^372 + 1/25*(11*zeta^7 - 81*zeta^6 - 158*zeta^5 + 492*zeta^4 +
605*zeta^3 - 568*zeta^2 - 291*zeta - 381)*q^373 + 1/25*(56*zeta^7 + 30*zeta^6 - 
362*zeta^5 - 234*zeta^4 + 647*zeta^3 + 374*zeta^2 - 408*zeta + 168)*q^375 + 
1/25*(105*zeta^7 + 65*zeta^6 - 630*zeta^5 - 467*zeta^4 + 1078*zeta^3 + 
807*zeta^2 - 558*zeta + 67)*q^376 + 1/25*(26*zeta^7 + 7*zeta^6 - 66*zeta^5 + 
79*zeta^4 - 197*zeta^3 - 248*zeta^2 + 514*zeta - 73)*q^377 + 1/25*(30*zeta^7 + 
24*zeta^6 - 180*zeta^5 - 168*zeta^4 + 300*zeta^3 + 345*zeta^2 - 132*zeta - 
96)*q^378 + 1/25*(284*zeta^7 + 146*zeta^6 - 1662*zeta^5 - 876*zeta^4 + 
2465*zeta^3 + 1483*zeta^2 - 669*zeta - 622)*q^379 + 1/25*(27*zeta^7 - 2*zeta^6 -
179*zeta^5 + 34*zeta^4 + 334*zeta^3 - 84*zeta^2 - 162*zeta + 6)*q^380 + 
1/25*(168*zeta^7 + 88*zeta^6 - 1125*zeta^5 - 486*zeta^4 + 2255*zeta^3 + 
606*zeta^2 - 1395*zeta - 112)*q^381 + 1/25*(-217*zeta^7 - 44*zeta^6 + 
1445*zeta^5 + 62*zeta^4 - 2712*zeta^3 + 355*zeta^2 + 1181*zeta - 506)*q^382 + 
1/25*(118*zeta^7 - 115*zeta^6 - 817*zeta^5 + 746*zeta^4 + 1492*zeta^3 - 
1382*zeta^2 - 443*zeta + 707)*q^383 + 1/25*(133*zeta^7 + 150*zeta^6 - 874*zeta^5
- 895*zeta^4 + 1773*zeta^3 + 1226*zeta^2 - 1234*zeta - 164)*q^384 + 
1/25*(-50*zeta^7 + 246*zeta^6 + 490*zeta^5 - 1596*zeta^4 - 1376*zeta^3 + 
2574*zeta^2 + 1062*zeta - 584)*q^385 + 1/25*(-210*zeta^7 - 175*zeta^6 + 
1358*zeta^5 + 1050*zeta^4 - 2499*zeta^3 - 1736*zeta^2 + 1295*zeta + 532)*q^386 +
1/25*(-58*zeta^7 - 204*zeta^6 + 278*zeta^5 + 1104*zeta^4 - 230*zeta^3 - 
1411*zeta^2 - 16*zeta + 168)*q^387 + 1/25*(-68*zeta^7 + 28*zeta^6 + 366*zeta^5 -
144*zeta^4 - 212*zeta^3 + 44*zeta^2 - 756*zeta + 52)*q^388 + 1/25*(18*zeta^7 + 
30*zeta^6 - 108*zeta^5 - 96*zeta^4 + 282*zeta^3 + 192*zeta^2 - 417*zeta - 
534)*q^389 + 1/25*(-48*zeta^7 + 78*zeta^6 + 414*zeta^5 - 286*zeta^4 - 
1125*zeta^3 + 134*zeta^2 + 1068*zeta - 272)*q^390 + 1/25*(74*zeta^7 - 18*zeta^6 
- 536*zeta^5 - 9*zeta^4 + 1172*zeta^3 + 182*zeta^2 - 849*zeta + 174)*q^392 + 
1/25*(77*zeta^7 + 403*zeta^6 - 462*zeta^5 - 2221*zeta^4 + 1044*zeta^3 + 
3181*zeta^2 - 941*zeta - 761)*q^393 + 1/25*(51*zeta^7 + 203*zeta^6 - 41*zeta^5 -
993*zeta^4 - 551*zeta^3 + 1254*zeta^2 + 605*zeta - 711)*q^394 + 1/25*(-26*zeta^7
+ 298*zeta^6 + 540*zeta^5 - 1673*zeta^4 - 2180*zeta^3 + 2418*zeta^2 + 1875*zeta 
- 366)*q^395 + 1/25*(192*zeta^7 + 84*zeta^6 - 984*zeta^5 - 504*zeta^4 + 
906*zeta^3 + 918*zeta^2 + 558*zeta - 516)*q^396 + 1/25*(161*zeta^7 + 357*zeta^6 
- 761*zeta^5 - 2164*zeta^4 + 627*zeta^3 + 3279*zeta^2 + 308*zeta - 674)*q^397 + 
1/25*(63*zeta^7 + 58*zeta^6 - 155*zeta^5 - 27*zeta^4 - 362*zeta^3 - 692*zeta^2 +
431*zeta + 772)*q^398 + 1/25*(18*zeta^7 - 3*zeta^6 - 147*zeta^5 + 45*zeta^4 + 
354*zeta^3 - 112*zeta^2 - 191*zeta + 37)*q^399 + 1/25*(-163*zeta^7 + 25*zeta^6 +
884*zeta^5 - 172*zeta^4 - 972*zeta^3 + 549*zeta^2 - 54*zeta - 775)*q^400 + 
1/25*(440*zeta^7 + 196*zeta^6 - 3027*zeta^5 - 1142*zeta^4 + 6249*zeta^3 + 
1590*zeta^2 - 3877*zeta - 496)*q^401 + 1/25*(-191*zeta^7 + 30*zeta^6 + 
1075*zeta^5 - 240*zeta^4 - 1757*zeta^3 + 450*zeta^2 + 843*zeta - 584)*q^402 + 
1/25*(-218*zeta^7 - 43*zeta^6 + 1376*zeta^5 + 258*zeta^4 - 2478*zeta^3 - 
363*zeta^2 + 1438*zeta + 170)*q^403 + 1/25*(112*zeta^7 + 16*zeta^6 - 755*zeta^5 
- 213*zeta^4 + 1535*zeta^3 + 689*zeta^2 - 871*zeta - 266)*q^404 + 
1/25*(-63*zeta^7 - 120*zeta^6 + 237*zeta^5 + 684*zeta^4 + 66*zeta^3 - 
1098*zeta^2 - 525*zeta + 486)*q^405 + 1/25*(-30*zeta^7 + 16*zeta^6 + 180*zeta^5 
- 76*zeta^4 - 310*zeta^3 + 48*zeta^2 + 201*zeta + 62)*q^406 + 1/25*(128*zeta^7 +
240*zeta^6 - 656*zeta^5 - 1354*zeta^4 + 536*zeta^3 + 1636*zeta^2 + 210*zeta + 
232)*q^407 + 1/25*(155*zeta^7 + 55*zeta^6 - 1030*zeta^5 - 433*zeta^4 + 
1945*zeta^3 + 746*zeta^2 - 1074*zeta + 167)*q^409 + 1/25*(107*zeta^7 + 
329*zeta^6 - 642*zeta^5 - 1883*zeta^4 + 1268*zeta^3 + 2755*zeta^2 - 899*zeta - 
423)*q^410 + 1/25*(79*zeta^7 + 149*zeta^6 - 399*zeta^5 - 1051*zeta^4 + 
323*zeta^3 + 1970*zeta^2 + 257*zeta - 605)*q^411 + 1/25*(-68*zeta^7 - 10*zeta^6 
+ 414*zeta^5 + 175*zeta^4 - 710*zeta^3 - 641*zeta^2 + 307*zeta + 250)*q^412 + 
1/25*(98*zeta^7 + 30*zeta^6 - 525*zeta^5 - 180*zeta^4 + 594*zeta^3 + 322*zeta^2 
+ 82*zeta - 202)*q^413 + 1/25*(200*zeta^7 + 15*zeta^6 - 1172*zeta^5 - 4*zeta^4 +
1944*zeta^3 - 123*zeta^2 - 871*zeta + 310)*q^414 + 1/25*(515*zeta^7 + 53*zeta^6 
- 3361*zeta^5 + 46*zeta^4 + 6336*zeta^3 - 739*zeta^2 - 3423*zeta + 284)*q^415 + 
1/25*(290*zeta^7 + 331*zeta^6 - 1843*zeta^5 - 1624*zeta^4 + 3456*zeta^3 + 
1882*zeta^2 - 1861*zeta - 143)*q^416 + 1/25*(29*zeta^7 + 172*zeta^6 - 197*zeta^5
- 920*zeta^4 + 548*zeta^3 + 1333*zeta^2 - 561*zeta - 490)*q^417 + 
1/25*(16*zeta^7 - 44*zeta^6 - 130*zeta^5 + 272*zeta^4 + 278*zeta^3 - 376*zeta^2 
- 94*zeta)*q^418 + 1/25*(-172*zeta^7 - 103*zeta^6 + 1080*zeta^5 + 508*zeta^4 - 
1816*zeta^3 - 597*zeta^2 + 695*zeta + 274)*q^419 + 1/25*(84*zeta^7 + 54*zeta^6 -
470*zeta^5 - 324*zeta^4 + 605*zeta^3 + 563*zeta^2 - 9*zeta - 238)*q^420 + 
1/25*(68*zeta^7 - 112*zeta^6 - 674*zeta^5 + 634*zeta^4 + 2010*zeta^3 - 
964*zeta^2 - 1546*zeta + 148)*q^421 + 1/25*(153*zeta^7 + 328*zeta^6 - 611*zeta^5
- 1988*zeta^4 + 18*zeta^3 + 3318*zeta^2 + 987*zeta - 1290)*q^422 + 
1/25*(150*zeta^7 - 63*zeta^6 - 900*zeta^5 + 210*zeta^4 + 1482*zeta^3 - 36*zeta^2
- 750*zeta + 132)*q^423 + 1/25*(60*zeta^7 + 12*zeta^6 - 408*zeta^5 - 186*zeta^4 
+ 804*zeta^3 + 372*zeta^2 - 666*zeta + 324)*q^424 + 1/25*(53*zeta^7 - 111*zeta^6
- 482*zeta^5 + 466*zeta^4 + 1379*zeta^3 - 324*zeta^2 - 1251*zeta + 197)*q^426 + 
1/25*(13*zeta^7 + 15*zeta^6 - 78*zeta^5 - 91*zeta^4 + 142*zeta^3 + 147*zeta^2 - 
92*zeta - 29)*q^427 + 1/25*(73*zeta^7 - 44*zeta^6 - 285*zeta^5 + 468*zeta^4 - 
218*zeta^3 - 862*zeta^2 + 1299*zeta - 14)*q^428 + 1/25*(-332*zeta^7 - 228*zeta^6
+ 2338*zeta^5 + 1344*zeta^4 - 5050*zeta^3 - 1994*zeta^2 + 3172*zeta + 408)*q^429
+ 1/25*(122*zeta^7 - 227*zeta^6 - 832*zeta^5 + 1362*zeta^4 + 1853*zeta^3 - 
2464*zeta^2 - 1897*zeta + 720)*q^430 + 1/25*(371*zeta^7 + 363*zeta^6 - 
2127*zeta^5 - 2042*zeta^4 + 3118*zeta^3 + 2859*zeta^2 - 863*zeta - 648)*q^431 + 
1/25*(261*zeta^7 + 165*zeta^6 - 1803*zeta^5 - 1008*zeta^4 + 3780*zeta^3 + 
1473*zeta^2 - 2445*zeta - 396)*q^432 + 1/25*(-208*zeta^7 - 158*zeta^6 + 
1302*zeta^5 + 738*zeta^4 - 2300*zeta^3 - 708*zeta^2 + 1070*zeta - 182)*q^433 + 
1/25*(4*zeta^7 - 13*zeta^6 - 83*zeta^5 + 103*zeta^4 + 318*zeta^3 - 178*zeta^2 - 
215*zeta - 1)*q^434 + 1/25*(72*zeta^7 - 15*zeta^6 - 456*zeta^5 + 171*zeta^4 + 
804*zeta^3 - 393*zeta^2 - 372*zeta + 120)*q^435 + 1/25*(-16*zeta^7 + 12*zeta^6 +
144*zeta^5 - 104*zeta^4 - 332*zeta^3 + 204*zeta^2 + 184*zeta + 48)*q^436 + 
1/25*(66*zeta^7 + 43*zeta^6 - 462*zeta^5 - 258*zeta^4 + 985*zeta^3 + 402*zeta^2 
- 701*zeta - 96)*q^437 + 1/25*(-154*zeta^7 - 282*zeta^6 + 1073*zeta^5 + 
1428*zeta^4 - 2285*zeta^3 - 1423*zeta^2 + 1502*zeta + 36)*q^438 + 
1/25*(-49*zeta^7 + 277*zeta^6 + 323*zeta^5 - 1783*zeta^4 - 133*zeta^3 + 
2758*zeta^2 - 1335*zeta - 733)*q^439 + 1/25*(24*zeta^7 + 290*zeta^6 - 144*zeta^5
- 1568*zeta^4 + 436*zeta^3 + 2196*zeta^2 - 516*zeta - 572)*q^440 + 
1/25*(126*zeta^7 + 84*zeta^6 - 798*zeta^5 - 522*zeta^4 + 1365*zeta^3 + 
750*zeta^2 - 558*zeta + 30)*q^441 + 1/25*(-188*zeta^7 + 74*zeta^6 + 1390*zeta^5 
- 255*zeta^4 - 3133*zeta^3 - 48*zeta^2 + 1917*zeta + 104)*q^443 + 
1/25*(79*zeta^7 - 90*zeta^6 - 474*zeta^5 + 435*zeta^4 + 764*zeta^3 - 457*zeta^2 
- 394*zeta + 55)*q^444 + 1/25*(119*zeta^7 + 185*zeta^6 - 473*zeta^5 - 
1051*zeta^4 - 65*zeta^3 + 1726*zeta^2 + 1057*zeta - 793)*q^445 + 
1/25*(-102*zeta^7 - 38*zeta^6 + 764*zeta^5 + 223*zeta^4 - 1780*zeta^3 - 
304*zeta^2 + 1187*zeta + 66)*q^446 + 1/25*(-136*zeta^7 - 207*zeta^6 + 865*zeta^5
+ 1242*zeta^4 - 1492*zeta^3 - 2115*zeta^2 + 496*zeta + 640)*q^447 + 
1/25*(-21*zeta^7 - 125*zeta^6 + 41*zeta^5 + 782*zeta^4 + 186*zeta^3 - 
1221*zeta^2 - 299*zeta + 256)*q^448 + 1/25*(162*zeta^7 + 158*zeta^6 - 
1057*zeta^5 - 918*zeta^4 + 2105*zeta^3 + 1208*zeta^2 - 1415*zeta - 136)*q^449 + 
1/25*(13*zeta^7 + 14*zeta^6 - 235*zeta^5 + 8*zeta^4 + 916*zeta^3 - 75*zeta^2 - 
691*zeta - 156)*q^450 + 1/25*(-176*zeta^7 - 418*zeta^6 + 878*zeta^5 + 
2300*zeta^4 - 1112*zeta^3 - 3192*zeta^2 + 674*zeta + 570)*q^451 + 
1/25*(-381*zeta^7 - 48*zeta^6 + 2554*zeta^5 + 105*zeta^4 - 5005*zeta^3 + 
160*zeta^2 + 2810*zeta + 20)*q^452 + 1/25*(37*zeta^7 + 183*zeta^6 - 137*zeta^5 -
1122*zeta^4 - 80*zeta^3 + 1719*zeta^2 + 339*zeta - 464)*q^453 + 1/25*(146*zeta^7
+ 204*zeta^6 - 1043*zeta^5 - 1224*zeta^4 + 2240*zeta^3 + 2022*zeta^2 - 1436*zeta
- 518)*q^454 + 1/25*(248*zeta^7 + 150*zeta^6 - 1665*zeta^5 - 994*zeta^4 + 
3365*zeta^3 + 1846*zeta^2 - 1952*zeta - 488)*q^455 + 1/25*(-13*zeta^7 - 
44*zeta^6 + 30*zeta^5 + 238*zeta^4 + 70*zeta^3 - 344*zeta^2 - 107*zeta + 
158)*q^456 + 1/25*(-184*zeta^7 - 333*zeta^6 + 1104*zeta^5 + 2022*zeta^4 - 
2000*zeta^3 - 3056*zeta^2 + 1147*zeta + 110)*q^457 + 1/25*(-49*zeta^7 + 
201*zeta^6 + 544*zeta^5 - 880*zeta^4 - 1816*zeta^3 + 706*zeta^2 + 1875*zeta - 
353)*q^458 + 1/25*(-5*zeta^7 - 71*zeta^6 - 36*zeta^5 + 365*zeta^4 + 318*zeta^3 -
380*zeta^2 - 366*zeta - 25)*q^460 + 1/25*(242*zeta^7 + 195*zeta^6 - 1452*zeta^5 
- 1292*zeta^4 + 2540*zeta^3 + 2166*zeta^2 - 1435*zeta - 88)*q^461 + 
1/25*(-10*zeta^7 - 8*zeta^6 + 102*zeta^5 + 160*zeta^4 - 236*zeta^3 - 428*zeta^2 
+ 130*zeta + 44)*q^462 + 1/25*(-88*zeta^7 - 174*zeta^6 + 514*zeta^5 + 973*zeta^4
- 810*zeta^3 - 1341*zeta^2 + 369*zeta + 206)*q^463 + 1/25*(-14*zeta^7 - 6*zeta^6
- 33*zeta^5 + 36*zeta^4 + 510*zeta^3 - 118*zeta^2 - 826*zeta + 142)*q^464 + 
1/25*(340*zeta^7 + 279*zeta^6 - 2076*zeta^5 - 1486*zeta^4 + 3323*zeta^3 + 
1947*zeta^2 - 1120*zeta - 696)*q^465 + 1/25*(-9*zeta^7 - 354*zeta^6 + 
2259*zeta^4 - 123*zeta^3 - 3330*zeta^2 + 684*zeta + 372)*q^466 + 
1/25*(-217*zeta^7 - 206*zeta^6 + 1417*zeta^5 + 967*zeta^4 - 2734*zeta^3 - 
1023*zeta^2 + 1447*zeta + 6)*q^467 + 1/25*(230*zeta^7 + 346*zeta^6 - 1430*zeta^5
- 1763*zeta^4 + 2666*zeta^3 + 2220*zeta^2 - 1544*zeta - 360)*q^468 + 
1/25*(-56*zeta^7 - 90*zeta^6 + 283*zeta^5 + 452*zeta^4 - 377*zeta^3 - 416*zeta^2
+ 261*zeta - 160)*q^469 + 1/25*(-280*zeta^7 - 270*zeta^6 + 1676*zeta^5 + 
1482*zeta^4 - 2587*zeta^3 - 2016*zeta^2 + 783*zeta + 650)*q^470 + 
1/25*(70*zeta^7 - 90*zeta^6 - 187*zeta^5 + 540*zeta^4 - 554*zeta^3 - 846*zeta^2 
+ 1190*zeta + 2)*q^471 + 1/25*(-6*zeta^7 + 216*zeta^6 + 285*zeta^5 - 1209*zeta^4
- 1305*zeta^3 + 1728*zeta^2 + 1161*zeta - 258)*q^472 + 1/25*(-56*zeta^7 - 
200*zeta^6 + 226*zeta^5 + 1292*zeta^4 - 96*zeta^3 - 2188*zeta^2 - 32*zeta + 
712)*q^473 + 1/25*(48*zeta^7 + 256*zeta^6 - 288*zeta^5 - 1486*zeta^4 + 
578*zeta^3 + 2094*zeta^2 - 327*zeta - 28)*q^474 + 1/25*(-29*zeta^7 - 79*zeta^6 +
124*zeta^5 + 373*zeta^4 + 14*zeta^3 - 380*zeta^2 - 366*zeta + 175)*q^475 + 
1/25*(24*zeta^7 + 108*zeta^6 - 60*zeta^5 - 636*zeta^4 - 246*zeta^3 + 756*zeta^2 
+ 216*zeta + 312)*q^477 + 1/25*(37*zeta^7 - 3*zeta^6 - 222*zeta^5 + 43*zeta^4 + 
432*zeta^3 + 25*zeta^2 - 405*zeta - 341)*q^478 + 1/25*(-140*zeta^7 + 96*zeta^6 +
776*zeta^5 - 520*zeta^4 - 488*zeta^3 + 416*zeta^2 - 1620*zeta - 8)*q^479 + 
1/25*(-118*zeta^7 - 134*zeta^6 + 727*zeta^5 + 820*zeta^4 - 1275*zeta^3 - 
1361*zeta^2 + 634*zeta + 300)*q^480 + 1/25*(444*zeta^7 + 242*zeta^6 - 
2646*zeta^5 - 1452*zeta^4 + 4109*zeta^3 + 2439*zeta^2 - 1369*zeta - 966)*q^481 +
1/25*(-274*zeta^7 - 168*zeta^6 + 1798*zeta^5 + 794*zeta^4 - 3141*zeta^3 - 
870*zeta^2 + 1235*zeta + 646)*q^482 + 1/25*(-76*zeta^7 + 71*zeta^6 + 631*zeta^5 
- 365*zeta^4 - 1493*zeta^3 + 319*zeta^2 + 829*zeta + 264)*q^483 + 
1/25*(-224*zeta^7 - 457*zeta^6 + 1273*zeta^5 + 2437*zeta^4 - 2118*zeta^3 - 
3282*zeta^2 + 1305*zeta + 631)*q^484 + 1/25*(-28*zeta^7 - 344*zeta^6 + 72*zeta^5
+ 1926*zeta^4 - 116*zeta^3 - 2888*zeta^2 + 484*zeta + 948)*q^485 + 
1/25*(-39*zeta^7 - 63*zeta^6 + 3*zeta^5 + 84*zeta^4 + 630*zeta^3 + 561*zeta^2 - 
555*zeta - 732)*q^486 + 1/25*(-84*zeta^7 + 359*zeta^6 + 856*zeta^5 - 2372*zeta^4
- 2364*zeta^3 + 3885*zeta^2 + 1733*zeta - 682)*q^487 + 1/25*(18*zeta^7 - 
48*zeta^6 - 121*zeta^5 + 288*zeta^4 + 271*zeta^3 - 515*zeta^2 - 303*zeta + 
148)*q^488 + 1/25*(-42*zeta^7 - 48*zeta^6 + 177*zeta^5 + 375*zeta^4 - 45*zeta^3 
- 894*zeta^2 - 183*zeta + 270)*q^489 + 1/25*(-111*zeta^7 - 346*zeta^6 + 
379*zeta^5 + 2070*zeta^4 + 136*zeta^3 - 3318*zeta^2 - 541*zeta + 1260)*q^490 + 
1/25*(-121*zeta^7 + 277*zeta^6 + 726*zeta^5 - 1403*zeta^4 - 1072*zeta^3 + 
1715*zeta^2 + 399*zeta - 395)*q^491 + 1/25*(-152*zeta^7 - 162*zeta^6 + 
902*zeta^5 + 894*zeta^4 - 1313*zeta^3 - 1130*zeta^2 + 192*zeta + 120)*q^492 + 
1/25*(-121*zeta^7 - 31*zeta^6 + 816*zeta^5 + 234*zeta^4 - 1584*zeta^3 - 
434*zeta^2 + 777*zeta + 47)*q^494 + 1/25*(-42*zeta^7 + 270*zeta^6 + 252*zeta^5 -
1374*zeta^4 - 216*zeta^3 + 1830*zeta^2 - 234*zeta - 726)*q^495 + 
1/25*(-63*zeta^7 - 294*zeta^6 + 124*zeta^5 + 1676*zeta^4 + 344*zeta^3 - 
2508*zeta^2 - 281*zeta + 1008)*q^496 + 1/25*(202*zeta^7 + 64*zeta^6 - 
1420*zeta^5 - 484*zeta^4 + 3060*zeta^3 + 1039*zeta^2 - 1880*zeta - 328)*q^497 + 
1/25*(-98*zeta^7 - 57*zeta^6 + 626*zeta^5 + 342*zeta^4 - 1136*zeta^3 - 
555*zeta^2 + 608*zeta + 182)*q^498 + 1/25*(273*zeta^7 - 58*zeta^6 - 1893*zeta^5 
+ 612*zeta^4 + 3685*zeta^3 - 1314*zeta^2 - 1859*zeta + 4)*q^499 + 
1/25*(324*zeta^7 + 71*zeta^6 - 2139*zeta^5 - 249*zeta^4 + 4129*zeta^3 + 
27*zeta^2 - 2337*zeta + 40)*q^500 + 1/25*(-48*zeta^7 - 81*zeta^6 + 321*zeta^5 + 
405*zeta^4 - 678*zeta^3 - 514*zeta^2 + 433*zeta + 127)*q^501 + 1/25*(-55*zeta^7 
- 185*zeta^6 + 436*zeta^5 + 937*zeta^4 - 1210*zeta^3 - 1289*zeta^2 + 984*zeta + 
521)*q^502 + 1/25*(523*zeta^7 + 245*zeta^6 - 3349*zeta^5 - 1138*zeta^4 + 
6292*zeta^3 + 917*zeta^2 - 3691*zeta + 188)*q^503 + 1/25*(-6*zeta^7 + 57*zeta^6 
+ 90*zeta^5 - 372*zeta^4 - 294*zeta^3 + 603*zeta^2 + 237*zeta - 102)*q^504 + 
1/25*(-150*zeta^7 - 185*zeta^6 + 794*zeta^5 + 1110*zeta^4 - 787*zeta^3 - 
1958*zeta^2 - 545*zeta + 736)*q^505 + 1/25*(152*zeta^7 + 172*zeta^6 - 
1100*zeta^5 - 890*zeta^4 + 2460*zeta^3 + 934*zeta^2 - 1634*zeta - 60)*q^506 + 
1/25*(-8*zeta^7 - 55*zeta^6 + 78*zeta^5 + 461*zeta^4 - 223*zeta^3 - 904*zeta^2 +
284*zeta + 181)*q^507 + 1/25*(79*zeta^7 - 123*zeta^6 - 474*zeta^5 + 553*zeta^4 +
684*zeta^3 - 641*zeta^2 - 147*zeta + 469)*q^508 + 1/25*(-211*zeta^7 - 103*zeta^6
+ 1374*zeta^5 + 744*zeta^4 - 2493*zeta^3 - 1184*zeta^2 + 1335*zeta - 283)*q^509 
+ 1/25*(-129*zeta^7 - 207*zeta^6 + 696*zeta^5 + 1145*zeta^4 - 732*zeta^3 - 
1384*zeta^2 - 138*zeta - 53)*q^511 + 1/25*(70*zeta^7 - 309*zeta^6 - 420*zeta^5 +
1622*zeta^4 + 538*zeta^3 - 2100*zeta^2 - 92*zeta + 424)*q^512 + 1/25*(-30*zeta^7
- 75*zeta^6 + 102*zeta^5 + 429*zeta^4 + 57*zeta^3 - 672*zeta^2 - 222*zeta + 
285)*q^513 + 1/25*(-48*zeta^7 - 142*zeta^6 + 274*zeta^5 + 749*zeta^4 - 
410*zeta^3 - 881*zeta^2 + 193*zeta + 78)*q^514 + 1/25*(2*zeta^7 + 334*zeta^6 + 
141*zeta^5 - 2004*zeta^4 - 989*zeta^3 + 3583*zeta^2 + 1973*zeta - 1156)*q^515 + 
1/25*(-49*zeta^7 - 18*zeta^6 + 249*zeta^5 + 106*zeta^4 - 338*zeta^3 - 156*zeta^2
+ 118*zeta - 114)*q^516 + 1/25*(-718*zeta^7 - 18*zeta^6 + 4780*zeta^5 - 
320*zeta^4 - 9222*zeta^3 + 1186*zeta^2 + 4996*zeta - 184)*q^517 + 
1/25*(-14*zeta^7 + 53*zeta^6 + 175*zeta^5 - 344*zeta^4 - 528*zeta^3 + 570*zeta^2
+ 273*zeta - 137)*q^518 + 1/25*(130*zeta^7 + 161*zeta^6 - 511*zeta^5 - 
955*zeta^4 - 14*zeta^3 + 1264*zeta^2 + 397*zeta + 209)*q^519 + 1/25*(-222*zeta^7
+ 85*zeta^6 + 1341*zeta^5 - 861*zeta^4 - 2149*zeta^3 + 1893*zeta^2 + 807*zeta - 
640)*q^520 + 1/25*(204*zeta^7 - 322*zeta^6 - 1540*zeta^5 + 2192*zeta^4 + 
3440*zeta^3 - 3678*zeta^2 - 2166*zeta + 804)*q^521 + 1/25*(102*zeta^7 + 
90*zeta^6 - 705*zeta^5 - 540*zeta^4 + 1461*zeta^3 + 873*zeta^2 - 957*zeta - 
228)*q^522 + 1/25*(-120*zeta^7 + 36*zeta^6 + 957*zeta^5 - 159*zeta^4 - 
2385*zeta^3 + 135*zeta^2 + 1647*zeta + 42)*q^523 + 1/25*(134*zeta^7 + 3*zeta^6 -
607*zeta^5 + 105*zeta^4 + 19*zeta^3 - 74*zeta^2 + 1714*zeta - 277)*q^524 + 
1/25*(-74*zeta^7 - 36*zeta^6 + 444*zeta^5 + 228*zeta^4 - 802*zeta^3 - 448*zeta^2
+ 551*zeta + 226)*q^525 + 1/5*(73*zeta^7 + 19*zeta^6 - 492*zeta^5 - 135*zeta^4 +
954*zeta^3 + 248*zeta^2 - 444*zeta - 59)*q^526 + 1/25*(220*zeta^7 - 12*zeta^6 - 
1552*zeta^5 - 42*zeta^4 + 3256*zeta^3 + 364*zeta^2 - 1698*zeta - 252)*q^528 + 
1/25*(-211*zeta^7 - 33*zeta^6 + 1266*zeta^5 + 359*zeta^4 - 2160*zeta^3 - 
847*zeta^2 + 1197*zeta + 23)*q^529 + 1/25*(-118*zeta^7 - 428*zeta^6 + 378*zeta^5
+ 2572*zeta^4 + 184*zeta^3 - 4100*zeta^2 - 434*zeta + 1520)*q^530 + 
1/25*(-60*zeta^7 + 114*zeta^6 + 528*zeta^5 - 561*zeta^4 - 1440*zeta^3 + 
555*zeta^2 + 1023*zeta + 18)*q^531 + 1/25*(-30*zeta^7 - 25*zeta^6 + 194*zeta^5 +
150*zeta^4 - 357*zeta^3 - 248*zeta^2 + 185*zeta + 76)*q^532 + 1/25*(-240*zeta^7 
- 405*zeta^6 + 1244*zeta^5 + 2408*zeta^4 - 1418*zeta^3 - 3579*zeta^2 - 13*zeta +
770)*q^533 + 1/25*(109*zeta^7 - 149*zeta^6 - 1084*zeta^5 + 620*zeta^4 + 
2927*zeta^3 - 151*zeta^2 - 1756*zeta - 876)*q^534 + 1/25*(392*zeta^7 + 
613*zeta^6 - 2235*zeta^5 - 3234*zeta^4 + 3556*zeta^3 + 4180*zeta^2 - 1877*zeta -
489)*q^535 + 1/25*(-183*zeta^7 + 27*zeta^6 + 1188*zeta^5 - 285*zeta^4 - 
2070*zeta^3 + 803*zeta^2 + 724*zeta - 671)*q^536 + 1/25*(-61*zeta^7 - 165*zeta^6
+ 418*zeta^5 + 1066*zeta^4 - 969*zeta^3 - 1619*zeta^2 + 862*zeta + 284)*q^537 + 
1/25*(107*zeta^7 + 167*zeta^6 - 639*zeta^5 - 950*zeta^4 + 920*zeta^3 + 
1347*zeta^2 - 169*zeta - 500)*q^538 + 1/25*(-128*zeta^7 - 114*zeta^6 + 
606*zeta^5 + 684*zeta^4 - 300*zeta^3 - 1246*zeta^2 - 892*zeta + 568)*q^539 + 
1/25*(-246*zeta^7 - 168*zeta^6 + 1626*zeta^5 + 1098*zeta^4 - 3210*zeta^3 - 
2007*zeta^2 + 1818*zeta + 516)*q^540 + 1/25*(86*zeta^7 + 341*zeta^6 - 223*zeta^5
- 1973*zeta^4 - 315*zeta^3 + 3022*zeta^2 + 410*zeta - 1195)*q^541 + 
1/25*(221*zeta^7 + 255*zeta^6 - 1326*zeta^5 - 1547*zeta^4 + 2414*zeta^3 + 
2499*zeta^2 - 1564*zeta - 493)*q^542 + 1/25*(-415*zeta^7 - 231*zeta^6 + 
2674*zeta^5 + 1369*zeta^4 - 4747*zeta^3 - 1998*zeta^2 + 1746*zeta + 389)*q^543 +
1/25*(-140*zeta^7 + 180*zeta^6 + 1160*zeta^5 - 656*zeta^4 - 3020*zeta^3 + 
272*zeta^2 + 2652*zeta - 556)*q^545 + 1/25*(-95*zeta^7 + 41*zeta^6 + 570*zeta^5 
- 197*zeta^4 - 996*zeta^3 + 89*zeta^2 + 677*zeta + 263)*q^546 + 1/25*(106*zeta^7
+ 281*zeta^6 - 466*zeta^5 - 1839*zeta^4 + 237*zeta^3 + 3200*zeta^2 + 298*zeta - 
1055)*q^547 + 1/25*(86*zeta^7 + 148*zeta^6 - 554*zeta^5 - 800*zeta^4 + 
1050*zeta^3 + 997*zeta^2 - 608*zeta - 120)*q^548 + 1/25*(-8*zeta^7 - 39*zeta^6 +
57*zeta^5 + 234*zeta^4 - 108*zeta^3 - 403*zeta^2 + 8*zeta + 112)*q^549 + 
1/25*(-350*zeta^7 - 168*zeta^6 + 2134*zeta^5 + 816*zeta^4 - 3530*zeta^3 - 
936*zeta^2 + 1386*zeta + 232)*q^550 + 1/25*(-20*zeta^7 + 9*zeta^6 + 167*zeta^5 -
31*zeta^4 - 405*zeta^3 - 19*zeta^2 + 245*zeta + 88)*q^551 + 1/25*(2*zeta^7 + 
43*zeta^6 - 83*zeta^5 - 200*zeta^4 + 416*zeta^3 + 282*zeta^2 - 389*zeta - 
207)*q^552 + 1/25*(-62*zeta^7 - 133*zeta^6 + 311*zeta^5 + 731*zeta^4 - 
386*zeta^3 - 1004*zeta^2 + 211*zeta + 155)*q^553 + 1/25*(-158*zeta^7 - 64*zeta^6
+ 1357*zeta^5 + 692*zeta^4 - 3481*zeta^3 - 1694*zeta^2 + 2403*zeta + 1032)*q^554
+ 1/25*(-147*zeta^7 - 261*zeta^6 + 811*zeta^5 + 1528*zeta^4 - 1015*zeta^3 - 
2235*zeta^2 + 52*zeta + 646)*q^555 + 1/25*(214*zeta^7 + 127*zeta^6 - 1134*zeta^5
- 762*zeta^4 + 1198*zeta^3 + 1355*zeta^2 + 426*zeta - 638)*q^556 + 
1/5*(-10*zeta^7 - 18*zeta^6 + 83*zeta^5 + 78*zeta^4 - 215*zeta^3 - 25*zeta^2 + 
164*zeta - 24)*q^557 + 1/25*(-17*zeta^7 - 97*zeta^6 - 33*zeta^5 + 443*zeta^4 + 
341*zeta^3 - 490*zeta^2 - 271*zeta + 325)*q^558 + 1/25*(-247*zeta^7 - 360*zeta^6
+ 1482*zeta^5 + 2161*zeta^4 - 2716*zeta^3 - 3375*zeta^2 + 1736*zeta + 509)*q^559
+ 1/25*(19*zeta^7 + 73*zeta^6 - 60*zeta^5 - 425*zeta^4 - 126*zeta^3 + 504*zeta^2
+ 144*zeta + 183)*q^560 + 1/25*(178*zeta^7 + 222*zeta^6 - 1024*zeta^5 - 
1189*zeta^4 + 1360*zeta^3 + 1446*zeta^2 + 27*zeta - 218)*q^562 + 
1/25*(-143*zeta^7 - 639*zeta^6 + 858*zeta^5 + 3515*zeta^4 - 1892*zeta^3 - 
5079*zeta^2 + 1693*zeta + 1351)*q^563 + 1/25*(68*zeta^7 - 23*zeta^6 - 399*zeta^5
+ 43*zeta^4 + 349*zeta^3 + 214*zeta^2 + 604*zeta - 67)*q^564 + 1/25*(270*zeta^7 
- 58*zeta^6 - 2071*zeta^5 + 172*zeta^4 + 4955*zeta^3 + 165*zeta^2 - 3306*zeta - 
236)*q^565 + 1/25*(-302*zeta^7 - 124*zeta^6 + 1947*zeta^5 + 744*zeta^4 - 
3625*zeta^3 - 1159*zeta^2 + 2137*zeta + 388)*q^566 + 1/25*(-63*zeta^7 + 
45*zeta^6 + 411*zeta^5 - 318*zeta^4 - 798*zeta^3 + 549*zeta^2 + 447*zeta - 
192)*q^567 + 1/25*(-239*zeta^7 - 157*zeta^6 + 1691*zeta^5 + 1010*zeta^4 - 
3650*zeta^3 - 1585*zeta^2 + 2405*zeta + 500)*q^568 + 1/25*(464*zeta^7 + 
94*zeta^6 - 2944*zeta^5 - 205*zeta^4 + 5070*zeta^3 - 614*zeta^2 - 1942*zeta + 
1228)*q^569 + 1/25*(88*zeta^7 + 5*zeta^6 - 541*zeta^5 + 23*zeta^4 + 862*zeta^3 -
206*zeta^2 - 269*zeta + 293)*q^570 + 1/25*(-84*zeta^7 - 243*zeta^6 + 533*zeta^5 
+ 1521*zeta^4 - 1151*zeta^3 - 2203*zeta^2 + 1063*zeta + 280)*q^571 + 
1/25*(74*zeta^7 - 474*zeta^6 - 850*zeta^5 + 3084*zeta^4 + 2552*zeta^3 - 
4986*zeta^2 - 2010*zeta + 992)*q^572 + 1/25*(-142*zeta^7 - 84*zeta^6 + 
1039*zeta^5 + 504*zeta^4 - 2371*zeta^3 - 753*zeta^2 + 1867*zeta + 136)*q^573 + 
1/25*(-108*zeta^7 - 146*zeta^6 + 713*zeta^5 + 808*zeta^4 - 1405*zeta^3 - 
1066*zeta^2 + 830*zeta + 156)*q^574 + 1/25*(107*zeta^7 + 222*zeta^6 - 514*zeta^5
- 1512*zeta^4 + 352*zeta^3 + 2752*zeta^2 + 373*zeta - 880)*q^575 + 
1/25*(39*zeta^7 - 163*zeta^6 - 234*zeta^5 + 853*zeta^4 + 304*zeta^3 - 
1101*zeta^2 - 57*zeta + 229)*q^576 + 1/25*(-50*zeta^7 - 46*zeta^6 + 304*zeta^5 +
309*zeta^4 - 472*zeta^3 - 438*zeta^2 + 261*zeta - 166)*q^577 + 1/25*(273*zeta^7 
+ 315*zeta^6 - 1596*zeta^5 - 1750*zeta^4 + 2226*zeta^3 + 2198*zeta^2 - 273*zeta 
- 119)*q^579 + 1/25*(18*zeta^7 - 86*zeta^6 - 108*zeta^5 + 428*zeta^4 + 
110*zeta^3 - 564*zeta^2 + 69*zeta + 266)*q^580 + 1/25*(-79*zeta^7 + 45*zeta^6 + 
380*zeta^5 - 345*zeta^4 - 53*zeta^3 + 472*zeta^2 - 1109*zeta + 23)*q^581 + 
1/25*(240*zeta^7 + 400*zeta^6 - 1558*zeta^5 - 2162*zeta^4 + 2990*zeta^3 + 
2690*zeta^2 - 1750*zeta - 324)*q^582 + 1/25*(-576*zeta^7 - 420*zeta^6 + 
3180*zeta^5 + 2520*zeta^4 - 3888*zeta^3 - 4404*zeta^2 - 384*zeta + 1824)*q^583 +
1/25*(-41*zeta^7 + 135*zeta^6 + 389*zeta^5 - 902*zeta^4 - 1020*zeta^3 + 
1491*zeta^2 + 715*zeta - 244)*q^584 + 1/25*(-391*zeta^7 - 12*zeta^6 + 
2512*zeta^5 - 269*zeta^4 - 4605*zeta^3 + 1024*zeta^2 + 2380*zeta - 388)*q^585 + 
1/25*(144*zeta^7 + 102*zeta^6 - 954*zeta^5 - 444*zeta^4 + 1848*zeta^3 + 
376*zeta^2 - 934*zeta + 98)*q^586 + 1/25*(-116*zeta^7 + 320*zeta^6 + 762*zeta^5 
- 1851*zeta^4 - 1054*zeta^3 + 3042*zeta^2 - 212*zeta - 1426)*q^587 + 
1/25*(-113*zeta^7 + 24*zeta^6 + 836*zeta^5 - 127*zeta^4 - 1815*zeta^3 + 
92*zeta^2 + 1040*zeta + 196)*q^588 + 1/25*(156*zeta^7 + 80*zeta^6 - 960*zeta^5 -
390*zeta^4 + 1597*zeta^3 + 450*zeta^2 - 623*zeta - 146)*q^589 + 1/25*(-86*zeta^7
+ 246*zeta^6 + 627*zeta^5 - 1476*zeta^4 - 1572*zeta^3 + 2660*zeta^2 + 1856*zeta 
- 806)*q^590 + 1/25*(350*zeta^7 + 552*zeta^6 - 2185*zeta^5 - 3099*zeta^4 + 
3925*zeta^3 + 4280*zeta^2 - 2101*zeta - 678)*q^591 + 1/25*(-33*zeta^7 + 
178*zeta^6 + 285*zeta^5 - 1006*zeta^4 - 368*zeta^3 + 1350*zeta^2 - 595*zeta - 
468)*q^592 + 1/25*(53*zeta^7 - 228*zeta^6 - 318*zeta^5 + 1167*zeta^4 + 
382*zeta^3 - 1517*zeta^2 + 25*zeta + 485)*q^593 + 1/25*(78*zeta^7 + 18*zeta^6 - 
528*zeta^5 - 192*zeta^4 + 1032*zeta^3 + 372*zeta^2 - 666*zeta + 174)*q^594 + 
1/25*(-93*zeta^7 - 181*zeta^6 + 470*zeta^5 + 973*zeta^4 - 353*zeta^3 - 
1134*zeta^2 - 324*zeta + 7)*q^596 + 1/25*(-286*zeta^7 - 72*zeta^6 + 1716*zeta^5 
+ 588*zeta^4 - 2990*zeta^3 - 1304*zeta^2 + 1813*zeta + 350)*q^597 + 
1/25*(20*zeta^7 - 77*zeta^6 - 311*zeta^5 + 117*zeta^4 + 807*zeta^3 + 382*zeta^2 
- 316*zeta + 191)*q^598 + 1/25*(454*zeta^7 + 360*zeta^6 - 3041*zeta^5 - 
2211*zeta^4 + 6125*zeta^3 + 3628*zeta^2 - 3581*zeta - 822)*q^599 + 
1/25*(-10*zeta^7 + 144*zeta^6 + 51*zeta^5 - 864*zeta^4 - 120*zeta^3 + 
1510*zeta^2 + 340*zeta - 418)*q^600 + 1/25*(-601*zeta^7 + 241*zeta^6 + 
4081*zeta^5 - 1984*zeta^4 - 7945*zeta^3 + 3783*zeta^2 + 4168*zeta - 678)*q^601 +
1/25*(-5*zeta^7 - 74*zeta^6 - 12*zeta^5 + 431*zeta^4 + 85*zeta^3 - 546*zeta^2 + 
40*zeta - 28)*q^602 + 1/25*(-224*zeta^7 + 35*zeta^6 + 1625*zeta^5 - 445*zeta^4 -
3386*zeta^3 + 1170*zeta^2 + 1565*zeta - 657)*q^603 + 1/25*(195*zeta^7 + 
426*zeta^6 - 1085*zeta^5 - 2288*zeta^4 + 1756*zeta^3 + 3115*zeta^2 - 1109*zeta -
620)*q^604 + 1/25*(541*zeta^7 - 27*zeta^6 - 3449*zeta^5 + 692*zeta^4 + 
6214*zeta^3 - 1979*zeta^2 - 3087*zeta + 692)*q^605 + 1/25*(303*zeta^7 + 
150*zeta^6 - 1799*zeta^5 - 758*zeta^4 + 2894*zeta^3 + 924*zeta^2 - 1106*zeta - 
98)*q^606 + 1/25*(-152*zeta^7 - 59*zeta^6 + 801*zeta^5 + 354*zeta^4 - 842*zeta^3
- 637*zeta^2 - 258*zeta + 364)*q^607 + 1/25*(56*zeta^7 + 60*zeta^6 - 407*zeta^5 
- 311*zeta^4 + 915*zeta^3 + 327*zeta^2 - 609*zeta - 22)*q^608 + 1/25*(6*zeta^7 +
21*zeta^6 - 60*zeta^5 - 207*zeta^4 + 153*zeta^3 + 444*zeta^2 - 138*zeta - 
75)*q^609 + 1/25*(-101*zeta^7 - 269*zeta^6 + 606*zeta^5 + 1563*zeta^4 - 
1162*zeta^3 - 2303*zeta^2 + 768*zeta + 273)*q^610 + 1/25*(227*zeta^7 - 
201*zeta^6 - 1790*zeta^5 + 941*zeta^4 + 4397*zeta^3 - 650*zeta^2 - 2760*zeta - 
425)*q^611 + 1/25*(-46*zeta^7 - 100*zeta^6 + 222*zeta^5 + 511*zeta^4 - 
117*zeta^3 - 568*zeta^2 - 291*zeta + 94)*q^613 + 1/25*(-45*zeta^7 - 80*zeta^6 + 
270*zeta^5 + 449*zeta^4 - 526*zeta^3 - 699*zeta^2 + 411*zeta + 251)*q^614 + 
1/25*(40*zeta^7 + 230*zeta^6 - 93*zeta^5 - 1396*zeta^4 - 118*zeta^3 + 
2198*zeta^2 - 52*zeta - 770)*q^615 + 1/25*(-136*zeta^7 - 60*zeta^6 + 920*zeta^5 
+ 438*zeta^4 - 1880*zeta^3 - 922*zeta^2 + 1094*zeta + 276)*q^616 + 
1/25*(-470*zeta^7 - 147*zeta^6 + 2836*zeta^5 + 882*zeta^4 - 4597*zeta^3 - 
1418*zeta^2 + 1985*zeta + 660)*q^617 + 1/25*(-671*zeta^7 - 357*zeta^6 + 
4059*zeta^5 + 1790*zeta^4 - 6628*zeta^3 - 2157*zeta^2 + 2531*zeta + 504)*q^618 +
1/25*(218*zeta^7 + 248*zeta^6 - 1340*zeta^5 - 1370*zeta^4 + 2482*zeta^3 + 
1624*zeta^2 - 1676*zeta + 24)*q^619 + 1/25*(126*zeta^7 + 147*zeta^6 - 733*zeta^5
- 757*zeta^4 + 1166*zeta^3 + 912*zeta^2 - 545*zeta - 5)*q^620 + 1/25*(-39*zeta^7
+ 129*zeta^6 + 234*zeta^5 - 729*zeta^4 - 222*zeta^3 + 1179*zeta^2 - 210*zeta - 
573)*q^621 + 1/25*(17*zeta^7 + 26*zeta^6 - 133*zeta^5 - 185*zeta^4 + 330*zeta^3 
+ 320*zeta^2 - 255*zeta - 100)*q^622 + 1/25*(-105*zeta^7 - 170*zeta^6 + 
517*zeta^5 + 1024*zeta^4 - 539*zeta^3 - 1542*zeta^2 - 39*zeta + 240)*q^623 + 
1/25*(84*zeta^7 + 48*zeta^6 - 848*zeta^5 - 288*zeta^4 + 2687*zeta^3 + 311*zeta^2
- 2859*zeta + 158)*q^624 + 1/25*(-412*zeta^7 - 346*zeta^6 + 2762*zeta^5 + 
2091*zeta^4 - 5570*zeta^3 - 3329*zeta^2 + 3271*zeta + 722)*q^625 + 
1/25*(14*zeta^7 + 44*zeta^6 - 107*zeta^5 - 382*zeta^4 + 220*zeta^3 + 778*zeta^2 
- 170*zeta - 160)*q^626 + 1/25*(18*zeta^7 - 28*zeta^6 - 108*zeta^5 + 166*zeta^4 
+ 196*zeta^3 - 186*zeta^2 - 174*zeta - 134)*q^627 + 1/25*(-114*zeta^7 + 
124*zeta^6 + 922*zeta^5 - 655*zeta^4 - 2335*zeta^3 + 576*zeta^2 + 1323*zeta + 
482)*q^628 + 1/25*(-4*zeta^7 - 36*zeta^6 - 8*zeta^5 + 183*zeta^4 + 140*zeta^3 - 
190*zeta^2 - 183*zeta)*q^630 + 1/25*(-52*zeta^7 + 414*zeta^6 + 312*zeta^5 - 
2150*zeta^4 - 238*zeta^3 + 2874*zeta^2 - 313*zeta - 916)*q^631 + 
1/25*(-107*zeta^7 - 256*zeta^6 + 378*zeta^5 + 1478*zeta^4 + 158*zeta^3 - 
2344*zeta^2 - 781*zeta + 982)*q^632 + 1/25*(222*zeta^7 + 266*zeta^6 - 
1247*zeta^5 - 1726*zeta^4 + 1795*zeta^3 + 3199*zeta^2 - 596*zeta - 792)*q^633 + 
1/25*(96*zeta^7 + 266*zeta^6 - 796*zeta^5 - 1596*zeta^4 + 2013*zeta^3 + 
2659*zeta^2 - 1441*zeta - 626)*q^634 + 1/25*(384*zeta^7 - 85*zeta^6 - 
2596*zeta^5 + 848*zeta^4 + 4970*zeta^3 - 1779*zeta^2 - 2505*zeta + 186)*q^635 + 
1/25*(-282*zeta^7 - 72*zeta^6 + 1860*zeta^5 + 282*zeta^4 - 3594*zeta^3 - 
120*zeta^2 + 2052*zeta - 24)*q^636 + 1/25*(-14*zeta^7 - 271*zeta^6 + 119*zeta^5 
+ 1466*zeta^4 - 572*zeta^3 - 2186*zeta^2 + 805*zeta + 887)*q^637 + 
1/25*(-66*zeta^7 - 78*zeta^6 + 468*zeta^5 + 360*zeta^4 - 1032*zeta^3 - 
402*zeta^2 + 624*zeta + 90)*q^638 + 1/25*(-371*zeta^7 - 114*zeta^6 + 2501*zeta^5
+ 563*zeta^4 - 4992*zeta^3 - 592*zeta^2 + 2951*zeta + 172)*q^639 + 
1/25*(581*zeta^7 + 105*zeta^6 - 3777*zeta^5 - 194*zeta^4 + 6796*zeta^3 - 
363*zeta^2 - 3059*zeta - 276)*q^640 + 1/25*(-132*zeta^7 - 261*zeta^6 + 
711*zeta^5 + 1566*zeta^4 - 711*zeta^3 - 2748*zeta^2 - 633*zeta + 930)*q^641 + 
1/25*(174*zeta^7 + 406*zeta^6 - 1081*zeta^5 - 2138*zeta^4 + 1925*zeta^3 + 
2483*zeta^2 - 1084*zeta - 216)*q^642 + 1/25*(-90*zeta^7 - 414*zeta^6 + 
292*zeta^5 + 2582*zeta^4 + 38*zeta^3 - 4200*zeta^2 + 34*zeta + 1422)*q^643 + 
1/25*(33*zeta^7 + 43*zeta^6 - 198*zeta^5 - 215*zeta^4 + 406*zeta^3 + 367*zeta^2 
- 388*zeta - 337)*q^644 + 1/25*(127*zeta^7 - 183*zeta^6 - 1072*zeta^5 + 
688*zeta^4 + 2848*zeta^3 - 334*zeta^2 - 2541*zeta + 527)*q^645 + 
1/25*(-145*zeta^7 - 527*zeta^6 + 488*zeta^5 + 2730*zeta^4 + 796*zeta^3 - 
2970*zeta^2 - 2007*zeta + 55)*q^647 + 1/25*(54*zeta^7 + 141*zeta^6 - 324*zeta^5 
- 798*zeta^4 + 642*zeta^3 + 1188*zeta^2 - 486*zeta - 276)*q^648 + 
1/25*(-6*zeta^7 + 222*zeta^6 + 78*zeta^5 - 1458*zeta^4 + 18*zeta^3 + 2364*zeta^2
- 762*zeta - 654)*q^649 + 1/25*(-226*zeta^7 - 570*zeta^6 + 1206*zeta^5 + 
3167*zeta^4 - 1510*zeta^3 - 4322*zeta^2 + 439*zeta + 634)*q^650 + 
1/25*(82*zeta^7 + 93*zeta^6 - 538*zeta^5 - 558*zeta^4 + 1006*zeta^3 + 933*zeta^2
- 502*zeta - 274)*q^651 + 1/25*(63*zeta^7 - 150*zeta^6 - 483*zeta^5 + 984*zeta^4
+ 1137*zeta^3 - 1602*zeta^2 - 783*zeta + 432)*q^652 + 1/5*(99*zeta^7 + 37*zeta^6
- 651*zeta^5 - 174*zeta^4 + 1262*zeta^3 + 153*zeta^2 - 741*zeta - 4)*q^653 + 
1/25*(-124*zeta^7 + 16*zeta^6 + 604*zeta^5 - 80*zeta^4 - 400*zeta^3 + 324*zeta^2
- 308*zeta - 648)*q^654 + 1/25*(803*zeta^7 + 790*zeta^6 - 4687*zeta^5 - 
4009*zeta^4 + 7362*zeta^3 + 4573*zeta^2 - 3193*zeta + 442)*q^655 + 
1/25*(-322*zeta^7 - 55*zeta^6 + 2341*zeta^5 + 403*zeta^4 - 5081*zeta^3 - 
815*zeta^2 + 3103*zeta + 624)*q^656 + 1/25*(108*zeta^7 + 291*zeta^6 - 408*zeta^5
- 1812*zeta^4 + 36*zeta^3 + 2817*zeta^2 + 489*zeta - 402)*q^657 + 
1/25*(18*zeta^7 + 36*zeta^6 - 235*zeta^5 - 216*zeta^4 + 856*zeta^3 + 310*zeta^2 
- 948*zeta + 10)*q^658 + 1/25*(-182*zeta^7 - 308*zeta^6 + 997*zeta^5 + 
1845*zeta^4 - 1345*zeta^3 - 2974*zeta^2 + 407*zeta + 610)*q^659 + 
1/25*(-70*zeta^7 + 4*zeta^6 + 318*zeta^5 - 92*zeta^4 - 8*zeta^3 + 100*zeta^2 - 
914*zeta + 128)*q^660 + 1/25*(236*zeta^7 + 243*zeta^6 - 1416*zeta^5 - 
1522*zeta^4 + 2532*zeta^3 + 2480*zeta^2 - 1539*zeta - 310)*q^661 + 
1/25*(72*zeta^7 + 160*zeta^6 - 344*zeta^5 - 806*zeta^4 + 164*zeta^3 + 884*zeta^2
+ 510*zeta - 192)*q^662 + 1/25*(15*zeta^7 - 135*zeta^6 - 240*zeta^5 + 694*zeta^4
+ 960*zeta^3 - 698*zeta^2 - 843*zeta - 121)*q^664 + 1/25*(-5*zeta^7 - 32*zeta^6 
+ 30*zeta^5 + 175*zeta^4 - 72*zeta^3 - 249*zeta^2 + 70*zeta + 63)*q^665 + 
1/25*(-2*zeta^7 + 32*zeta^6 + 123*zeta^5 + 2*zeta^4 - 424*zeta^3 - 298*zeta^2 + 
302*zeta - 92)*q^666 + 1/25*(-142*zeta^7 - 198*zeta^6 + 938*zeta^5 + 1089*zeta^4
- 1850*zeta^3 - 1414*zeta^2 + 1097*zeta + 198)*q^667 + 1/25*(-86*zeta^7 - 
43*zeta^6 + 440*zeta^5 + 258*zeta^4 - 399*zeta^3 - 468*zeta^2 - 269*zeta + 
248)*q^668 + 1/25*(92*zeta^7 + 249*zeta^6 - 404*zeta^5 - 1522*zeta^4 + 
213*zeta^3 + 2325*zeta^2 + 320*zeta - 488)*q^669 + 1/25*(2*zeta^7 + 172*zeta^6 -
205*zeta^5 - 1364*zeta^4 + 1045*zeta^3 + 2594*zeta^2 - 1155*zeta - 888)*q^670 + 
1/25*(78*zeta^7 + 24*zeta^6 - 486*zeta^5 - 84*zeta^4 + 816*zeta^3 - 26*zeta^2 - 
310*zeta + 188)*q^671 + 1/25*(-138*zeta^7 - 129*zeta^6 + 945*zeta^5 + 582*zeta^4
- 1956*zeta^3 - 590*zeta^2 + 1091*zeta + 41)*q^672 + 1/25*(-178*zeta^7 + 
71*zeta^6 + 1022*zeta^5 - 773*zeta^4 - 1476*zeta^3 + 1781*zeta^2 + 438*zeta - 
688)*q^673 + 1/25*(-259*zeta^7 - 250*zeta^6 + 1563*zeta^5 + 1366*zeta^4 - 
2434*zeta^3 - 1848*zeta^2 + 746*zeta + 634)*q^674 + 1/25*(-48*zeta^7 + 
195*zeta^6 + 339*zeta^5 - 1170*zeta^4 - 846*zeta^3 + 2085*zeta^2 + 1098*zeta - 
612)*q^675 + 1/25*(-242*zeta^7 - 170*zeta^6 + 1650*zeta^5 + 1051*zeta^4 - 
3410*zeta^3 - 1734*zeta^2 + 2043*zeta + 402)*q^676 + 1/25*(-138*zeta^7 - 
385*zeta^6 + 553*zeta^5 + 2421*zeta^4 - 113*zeta^3 - 4074*zeta^2 - 526*zeta + 
1431)*q^677 + 1/25*(-143*zeta^7 - 140*zeta^6 + 858*zeta^5 + 857*zeta^4 - 
1556*zeta^3 - 1423*zeta^2 + 1016*zeta + 333)*q^678 + 1/25*(92*zeta^7 - 44*zeta^6
- 688*zeta^5 + 222*zeta^4 + 1576*zeta^3 - 132*zeta^2 - 810*zeta - 284)*q^679 + 
1/25*(-371*zeta^7 - 219*zeta^6 + 2378*zeta^5 + 1299*zeta^4 - 4175*zeta^3 - 
1874*zeta^2 + 1524*zeta + 297)*q^681 + 1/25*(-34*zeta^7 - 188*zeta^6 + 
204*zeta^5 + 1106*zeta^4 - 396*zeta^3 - 1550*zeta^2 + 178*zeta - 74)*q^682 + 
1/25*(-106*zeta^7 - 244*zeta^6 + 402*zeta^5 + 1452*zeta^4 + 56*zeta^3 - 
2372*zeta^2 - 702*zeta + 944)*q^683 + 1/25*(50*zeta^7 + 60*zeta^6 - 346*zeta^5 -
324*zeta^4 + 730*zeta^3 + 395*zeta^2 - 460*zeta - 48)*q^684 + 1/25*(72*zeta^7 - 
135*zeta^6 - 497*zeta^5 + 810*zeta^4 + 1127*zeta^3 - 1468*zeta^2 - 1167*zeta + 
434)*q^685 + 1/25*(278*zeta^7 + 28*zeta^6 - 1722*zeta^5 - 2*zeta^4 + 2997*zeta^3
- 246*zeta^2 - 1359*zeta + 170)*q^686 + 1/25*(-223*zeta^7 - 201*zeta^6 + 
1561*zeta^5 + 1282*zeta^4 - 3372*zeta^3 - 1961*zeta^2 + 2311*zeta + 500)*q^687 +
1/25*(-514*zeta^7 - 140*zeta^6 + 3228*zeta^5 + 441*zeta^4 - 5486*zeta^3 + 
348*zeta^2 + 2102*zeta - 1274)*q^688 + 1/25*(-100*zeta^7 - 782*zeta^6 + 
382*zeta^5 + 4360*zeta^4 - 592*zeta^3 - 6468*zeta^2 + 1186*zeta + 2022)*q^689 + 
1/25*(-10*zeta^7 + 97*zeta^6 + zeta^5 - 725*zeta^4 + 251*zeta^3 + 1297*zeta^2 - 
413*zeta - 368)*q^690 + 1/25*(233*zeta^7 + 268*zeta^6 - 1433*zeta^5 - 
1474*zeta^4 + 2234*zeta^3 + 2010*zeta^2 - 632*zeta - 810)*q^691 + 
1/25*(394*zeta^7 + 247*zeta^6 - 2386*zeta^5 - 1482*zeta^4 + 3839*zeta^3 + 
2484*zeta^2 - 1419*zeta - 916)*q^692 + 1/25*(-192*zeta^7 - 36*zeta^6 + 
1314*zeta^5 + 384*zeta^4 - 2730*zeta^3 - 1104*zeta^2 + 1596*zeta + 408)*q^693 + 
1/25*(52*zeta^7 - 76*zeta^6 - 439*zeta^5 + 174*zeta^4 + 744*zeta^3 + 266*zeta^2 
+ 160*zeta + 124)*q^694 + 1/25*(-204*zeta^7 - 145*zeta^6 + 1224*zeta^5 + 
1046*zeta^4 - 2068*zeta^3 - 1744*zeta^2 + 973*zeta - 326)*q^695 + 
1/25*(-39*zeta^7 - 63*zeta^6 + 210*zeta^5 + 327*zeta^4 - 219*zeta^3 - 378*zeta^2
- 108*zeta + 69)*q^696 + 1/25*(-376*zeta^7 - 168*zeta^6 + 2464*zeta^5 + 
1042*zeta^4 - 4528*zeta^3 - 1620*zeta^2 + 1854*zeta + 320)*q^698 + 
1/25*(63*zeta^7 - 456*zeta^6 - 378*zeta^5 + 2571*zeta^4 + 528*zeta^3 - 
3357*zeta^2 - 414*zeta - 237)*q^699 + 1/25*(-11*zeta^7 - 20*zeta^6 + 78*zeta^5 +
186*zeta^4 - 134*zeta^3 - 400*zeta^2 + 51*zeta + 82)*q^700 + 1/25*(400*zeta^7 + 
464*zeta^6 - 2551*zeta^5 - 2737*zeta^4 + 4755*zeta^3 + 4205*zeta^2 - 2587*zeta -
834)*q^701 + 1/25*(180*zeta^7 - 21*zeta^6 - 1125*zeta^5 + 126*zeta^4 + 
2013*zeta^3 - 288*zeta^2 - 1245*zeta + 18)*q^702 + 1/25*(-123*zeta^7 - 34*zeta^6
+ 763*zeta^5 + 130*zeta^4 - 1308*zeta^3 - 84*zeta^2 + 560*zeta + 14)*q^703 + 
1/25*(-452*zeta^7 - 86*zeta^6 + 3068*zeta^5 + 362*zeta^4 - 6136*zeta^3 - 
274*zeta^2 + 3548*zeta + 192)*q^704 + 1/25*(-79*zeta^7 + 268*zeta^6 + 565*zeta^5
- 1559*zeta^4 - 898*zeta^3 + 2535*zeta^2 - 77*zeta - 1092)*q^705 + 
1/25*(310*zeta^7 + 209*zeta^6 - 2101*zeta^5 - 874*zeta^4 + 4204*zeta^3 + 
674*zeta^2 - 2175*zeta + 199)*q^706 + 1/25*(-229*zeta^7 - 8*zeta^6 + 1568*zeta^5
- 35*zeta^4 - 3143*zeta^3 + 164*zeta^2 + 1764*zeta + 84)*q^707 + 
1/25*(-18*zeta^7 + 66*zeta^6 + 198*zeta^5 - 450*zeta^4 - 543*zeta^3 + 756*zeta^2
+ 375*zeta - 66)*q^708 + 1/25*(560*zeta^7 + 223*zeta^6 - 3355*zeta^5 - 
1338*zeta^4 + 5321*zeta^3 + 2204*zeta^2 - 2065*zeta - 954)*q^709 + 
1/25*(226*zeta^7 + 564*zeta^6 - 1012*zeta^5 - 3334*zeta^4 + 540*zeta^3 + 
5277*zeta^2 + 534*zeta - 1028)*q^710 + 1/25*(-57*zeta^7 - 99*zeta^6 + 177*zeta^5
+ 477*zeta^4 + 219*zeta^3 - 654*zeta^2 - 663*zeta + 411)*q^711 + 1/25*(-8*zeta^7
- 241*zeta^6 + 48*zeta^5 + 1330*zeta^4 - 204*zeta^3 - 1828*zeta^2 + 233*zeta + 
254)*q^712 + 1/25*(-129*zeta^7 - 211*zeta^6 + 692*zeta^5 + 1062*zeta^4 - 
710*zeta^3 - 1198*zeta^2 - 471*zeta + 359)*q^713 + 1/25*(82*zeta^7 + 294*zeta^6 
- 280*zeta^5 - 1702*zeta^4 - 428*zeta^3 + 2016*zeta^2 + 576*zeta + 682)*q^715 + 
1/25*(-80*zeta^7 - 13*zeta^6 + 480*zeta^5 + 142*zeta^4 - 816*zeta^3 - 328*zeta^2
+ 443*zeta - 10)*q^716 + 1/25*(-90*zeta^7 - 34*zeta^6 + 487*zeta^5 + 312*zeta^4 
- 362*zeta^3 - 810*zeta^2 - 706*zeta + 282)*q^717 + 1/25*(-10*zeta^7 - 
224*zeta^6 - 164*zeta^5 + 1252*zeta^4 + 1020*zeta^3 - 1775*zeta^2 - 968*zeta + 
264)*q^718 + 1/25*(-42*zeta^7 - 298*zeta^6 + 281*zeta^5 + 1788*zeta^4 - 
420*zeta^3 - 3104*zeta^2 - 328*zeta + 886)*q^719 + 1/25*(272*zeta^7 - 39*zeta^6 
- 1820*zeta^5 + 464*zeta^4 + 3438*zeta^3 - 1041*zeta^2 - 1699*zeta + 94)*q^720 +
1/25*(183*zeta^7 + 5*zeta^6 - 1304*zeta^5 - 24*zeta^4 + 2745*zeta^3 + 79*zeta^2 
- 1600*zeta - 228)*q^721 + 1/25*(-130*zeta^7 - 98*zeta^6 + 622*zeta^5 + 
553*zeta^4 - 478*zeta^3 - 628*zeta^2 - 100*zeta - 308)*q^722 + 1/25*(-213*zeta^7
- 246*zeta^6 + 1029*zeta^5 + 1371*zeta^4 - 918*zeta^3 - 1731*zeta^2 + 75*zeta - 
210)*q^723 + 1/25*(21*zeta^7 - 122*zeta^6 - 299*zeta^5 + 627*zeta^4 + 904*zeta^3
- 584*zeta^2 - 457*zeta - 308)*q^724 + 1/25*(-zeta^7 - 51*zeta^6 + 25*zeta^5 + 
296*zeta^4 - 21*zeta^3 - 429*zeta^2 - 64*zeta + 250)*q^725 + 1/25*(-150*zeta^7 -
39*zeta^6 + 982*zeta^5 + 234*zeta^4 - 1894*zeta^3 - 331*zeta^2 + 1230*zeta + 
110)*q^726 + 1/25*(356*zeta^7 + 2*zeta^6 - 2783*zeta^5 - 74*zeta^4 + 6795*zeta^3
+ 152*zeta^2 - 4660*zeta - 128)*q^727 + 1/25*(34*zeta^7 - 41*zeta^6 - 185*zeta^5
+ 257*zeta^4 + 87*zeta^3 - 334*zeta^2 + 478*zeta + 55)*q^728 + 1/25*(234*zeta^7 
+ 270*zeta^6 - 1404*zeta^5 - 1638*zeta^4 + 2556*zeta^3 + 2646*zeta^2 - 1656*zeta
- 522)*q^729 + 1/25*(zeta^7 - 105*zeta^6 - 112*zeta^5 + 517*zeta^4 + 592*zeta^3 
- 508*zeta^2 - 660*zeta + 29)*q^730 + 1/25*(-35*zeta^7 - 9*zeta^6 + 236*zeta^5 +
67*zeta^4 - 458*zeta^3 - 124*zeta^2 + 222*zeta + 17)*q^732 + 1/25*(-17*zeta^7 + 
156*zeta^6 + 102*zeta^5 - 887*zeta^4 - 138*zeta^3 + 1165*zeta^2 + 129*zeta + 
103)*q^733 + 1/25*(72*zeta^7 + 253*zeta^6 - 186*zeta^5 - 1423*zeta^4 - 
299*zeta^3 + 2136*zeta^2 + 476*zeta - 903)*q^734 + 1/25*(14*zeta^7 - 234*zeta^6 
- 385*zeta^5 + 1326*zeta^4 + 1645*zeta^3 - 1957*zeta^2 - 1444*zeta + 312)*q^735 
+ 1/25*(-122*zeta^7 - 142*zeta^6 + 1011*zeta^5 + 852*zeta^4 - 2653*zeta^3 - 
1321*zeta^2 + 2317*zeta + 208)*q^736 + 1/25*(98*zeta^7 - 174*zeta^6 - 642*zeta^5
+ 1120*zeta^4 + 1354*zeta^3 - 1794*zeta^2 - 908*zeta + 708)*q^737 + 
1/25*(21*zeta^7 + 90*zeta^6 + 72*zeta^5 - 327*zeta^4 - 633*zeta^3 - 54*zeta^2 + 
444*zeta + 540)*q^738 + 1/25*(267*zeta^7 + 273*zeta^6 - 1664*zeta^5 - 
1337*zeta^4 + 2986*zeta^3 + 1501*zeta^2 - 1508*zeta + 7)*q^739 + 
1/25*(-220*zeta^7 - 449*zeta^6 + 1227*zeta^5 + 2406*zeta^4 - 1964*zeta^3 - 
3248*zeta^2 + 1189*zeta + 597)*q^740 + 1/25*(-49*zeta^7 + 31*zeta^6 + 445*zeta^5
- 92*zeta^4 - 1150*zeta^3 - 113*zeta^2 + 715*zeta + 316)*q^741 + 1/25*(58*zeta^7
- 42*zeta^6 - 418*zeta^5 + 316*zeta^4 + 864*zeta^3 - 570*zeta^2 - 482*zeta + 
80)*q^742 + 1/25*(-328*zeta^7 - 318*zeta^6 + 1950*zeta^5 + 1908*zeta^4 - 
2940*zeta^3 - 3266*zeta^2 + 628*zeta + 1136)*q^743 + 1/25*(-110*zeta^7 - 
270*zeta^6 + 538*zeta^5 + 1557*zeta^4 - 490*zeta^3 - 2330*zeta^2 - 35*zeta + 
414)*q^744 + 1/25*(72*zeta^7 + 415*zeta^6 - 174*zeta^5 - 2533*zeta^4 - 
185*zeta^3 + 4008*zeta^2 - 124*zeta - 1389)*q^745 + 1/25*(-150*zeta^7 - 
145*zeta^6 + 900*zeta^5 + 916*zeta^4 - 1604*zeta^3 - 1506*zeta^2 + 969*zeta + 
184)*q^746 + 1/25*(38*zeta^7 - 180*zeta^6 - 446*zeta^5 + 945*zeta^4 + 
1541*zeta^3 - 952*zeta^2 - 1173*zeta - 294)*q^747 + 1/25*(131*zeta^7 + 
277*zeta^6 - 640*zeta^5 - 1509*zeta^4 + 376*zeta^3 + 1764*zeta^2 + 504*zeta + 
103)*q^749 + 1/25*(69*zeta^7 + 179*zeta^6 - 414*zeta^5 - 1061*zeta^4 + 
772*zeta^3 + 1557*zeta^2 - 453*zeta - 65)*q^750 + 1/25*(11*zeta^7 - 252*zeta^6 -
265*zeta^5 + 1344*zeta^4 + 610*zeta^3 - 1742*zeta^2 + 289*zeta + 734)*q^751 + 
1/25*(-390*zeta^7 - 152*zeta^6 + 2873*zeta^5 + 931*zeta^4 - 6565*zeta^3 - 
1420*zeta^2 + 4301*zeta + 342)*q^752 + 1/25*(184*zeta^7 - 39*zeta^6 - 813*zeta^5
+ 234*zeta^4 + 213*zeta^3 - 310*zeta^2 + 1211*zeta - 266)*q^753 + 
1/25*(230*zeta^7 + 45*zeta^6 - 1406*zeta^5 - 142*zeta^4 + 2397*zeta^3 + 
21*zeta^2 - 1048*zeta + 100)*q^754 + 1/25*(-511*zeta^7 + 13*zeta^6 + 3272*zeta^5
- 554*zeta^4 - 5945*zeta^3 + 1679*zeta^2 + 3000*zeta - 588)*q^755 + 
1/25*(-111*zeta^7 - 267*zeta^6 + 618*zeta^5 + 1437*zeta^4 - 1026*zeta^3 - 
1977*zeta^2 + 690*zeta + 435)*q^756 + 1/25*(209*zeta^7 + 274*zeta^6 - 
1177*zeta^5 - 1441*zeta^4 + 1770*zeta^3 + 1803*zeta^2 - 819*zeta - 70)*q^757 + 
1/25*(142*zeta^7 + 15*zeta^6 - 1071*zeta^5 - 163*zeta^4 + 2411*zeta^3 + 
435*zeta^2 - 1493*zeta - 384)*q^758 + 1/25*(-310*zeta^7 - 198*zeta^6 + 
1774*zeta^5 + 1076*zeta^4 - 2700*zeta^3 - 1446*zeta^2 + 926*zeta + 112)*q^759 + 
1/25*(-42*zeta^7 + 45*zeta^6 + 266*zeta^5 - 270*zeta^4 - 509*zeta^3 + 490*zeta^2
+ 417*zeta - 128)*q^760 + 1/25*(-216*zeta^7 - 2*zeta^6 + 1660*zeta^5 + 77*zeta^4
- 3980*zeta^3 - 237*zeta^2 + 2685*zeta + 134)*q^761 + 1/25*(28*zeta^7 + 
144*zeta^6 - 43*zeta^5 - 814*zeta^4 - 188*zeta^3 + 1202*zeta^2 + 120*zeta - 
488)*q^762 + 1/25*(-16*zeta^7 + 84*zeta^6 + 96*zeta^5 - 456*zeta^4 - 128*zeta^3 
+ 592*zeta^2 + 52*zeta - 40)*q^763 + 1/25*(-143*zeta^7 - 55*zeta^6 + 946*zeta^5 
+ 346*zeta^4 - 1771*zeta^3 - 560*zeta^2 + 741*zeta + 145)*q^764 + 
1/25*(219*zeta^7 - 15*zeta^6 - 1548*zeta^5 - 97*zeta^4 + 3258*zeta^3 + 
488*zeta^2 - 1920*zeta + 31)*q^766 + 1/25*(258*zeta^7 + 236*zeta^6 - 1548*zeta^5
- 1556*zeta^4 + 2698*zeta^3 + 2544*zeta^2 - 1467*zeta + 22)*q^767 + 
1/25*(-7*zeta^7 + 50*zeta^6 + 209*zeta^5 - 2*zeta^4 - 660*zeta^3 - 458*zeta^2 + 
419*zeta - 136)*q^768 + 1/25*(-292*zeta^7 - 4*zeta^6 + 2197*zeta^5 + 157*zeta^4 
- 5145*zeta^3 - 559*zeta^2 + 3395*zeta + 274)*q^769 + 1/25*(92*zeta^7 + 
36*zeta^6 - 514*zeta^5 - 216*zeta^4 + 670*zeta^3 + 374*zeta^2 - 62*zeta - 
192)*q^770 + 1/25*(97*zeta^7 - 69*zeta^6 - 613*zeta^5 + 478*zeta^4 + 1164*zeta^3
- 813*zeta^2 - 653*zeta + 344)*q^771 + 1/25*(735*zeta^7 + 196*zeta^6 - 
4732*zeta^5 - 651*zeta^4 + 8841*zeta^3 - 112*zeta^2 - 4928*zeta + 420)*q^772 + 
1/25*(-44*zeta^7 + 167*zeta^6 + 183*zeta^5 - 900*zeta^4 + 176*zeta^3 + 
1428*zeta^2 - 611*zeta - 799)*q^773 + 1/25*(-277*zeta^7 - 29*zeta^6 + 
1858*zeta^5 - 77*zeta^4 - 3502*zeta^3 + 693*zeta^2 + 1498*zeta - 723)*q^774 + 
1/25*(4*zeta^7 + 281*zeta^6 - 159*zeta^5 - 2011*zeta^4 + 885*zeta^3 + 
3441*zeta^2 - 1205*zeta - 872)*q^775 + 1/25*(-204*zeta^7 + 42*zeta^6 + 
1348*zeta^5 - 416*zeta^4 - 2536*zeta^3 + 870*zeta^2 + 1270*zeta - 164)*q^776 + 
1/25*(-184*zeta^7 - 156*zeta^6 + 1142*zeta^5 + 936*zeta^4 - 1925*zeta^3 - 
1573*zeta^2 + 769*zeta + 522)*q^777 + 1/25*(-246*zeta^7 - 390*zeta^6 + 
1596*zeta^5 + 2127*zeta^4 - 3060*zeta^3 - 2712*zeta^2 + 1779*zeta + 354)*q^778 +
1/25*(43*zeta^7 + 75*zeta^6 - 202*zeta^5 - 499*zeta^4 + 109*zeta^3 + 908*zeta^2 
+ 225*zeta - 311)*q^779 + 1/25*(19*zeta^7 - 191*zeta^6 - 114*zeta^5 + 977*zeta^4
+ 40*zeta^3 - 1321*zeta^2 + 239*zeta + 537)*q^780 + 1/25*(-14*zeta^7 + 
414*zeta^6 + 512*zeta^5 - 2120*zeta^4 - 2480*zeta^3 + 2156*zeta^2 + 2418*zeta + 
242)*q^781 + 1/25*(-12*zeta^7 - 108*zeta^6 - 24*zeta^5 + 549*zeta^4 + 420*zeta^3
- 570*zeta^2 - 549*zeta)*q^783 + 1/25*(40*zeta^7 + 431*zeta^6 - 240*zeta^5 - 
2408*zeta^4 + 618*zeta^3 + 3350*zeta^2 - 532*zeta - 406)*q^784 + 
1/25*(225*zeta^7 + 218*zeta^6 - 924*zeta^5 - 1124*zeta^4 - 136*zeta^3 + 
1860*zeta^2 + 2407*zeta - 1104)*q^785 + 1/25*(-16*zeta^7 + 242*zeta^6 + 
447*zeta^5 - 1408*zeta^4 - 1915*zeta^3 + 2208*zeta^2 + 1698*zeta - 396)*q^786 + 
1/25*(626*zeta^7 + 527*zeta^6 - 3592*zeta^5 - 3162*zeta^4 + 4938*zeta^3 + 
5459*zeta^2 - 426*zeta - 2058)*q^787 + 1/25*(151*zeta^7 + 312*zeta^6 - 
707*zeta^5 - 1896*zeta^4 + 589*zeta^3 + 2880*zeta^2 + 255*zeta - 524)*q^788 + 
1/5*(82*zeta^7 - 19*zeta^6 - 613*zeta^5 + 95*zeta^4 + 1345*zeta^3 - 55*zeta^2 - 
775*zeta - 160)*q^789 + 1/25*(460*zeta^7 - 13*zeta^6 - 2815*zeta^5 + 329*zeta^4 
+ 4402*zeta^3 - 1390*zeta^2 - 1263*zeta + 1675)*q^790 + 1/25*(198*zeta^7 + 
381*zeta^6 - 1145*zeta^5 - 2018*zeta^4 + 1948*zeta^3 + 2690*zeta^2 - 1179*zeta -
501)*q^791 + 1/25*(252*zeta^7 - 6*zeta^6 - 1674*zeta^5 + 198*zeta^4 + 
3210*zeta^3 - 558*zeta^2 - 1710*zeta + 96)*q^792 + 1/25*(122*zeta^7 + 104*zeta^6
- 758*zeta^5 - 550*zeta^4 + 1231*zeta^3 + 714*zeta^2 - 417*zeta - 298)*q^793 + 
1/25*(-40*zeta^7 - 192*zeta^6 + 474*zeta^5 + 1152*zeta^4 - 1581*zeta^3 - 
1889*zeta^2 + 1465*zeta + 362)*q^794 + 1/25*(156*zeta^7 - 228*zeta^6 - 
1422*zeta^5 + 1200*zeta^4 + 3990*zeta^3 - 1518*zeta^2 - 2940*zeta + 120)*q^795 +
1/25*(63*zeta^7 - 128*zeta^6 - 222*zeta^5 + 1082*zeta^4 - 374*zeta^3 - 
1968*zeta^2 + 1577*zeta + 258)*q^796 + 1/25*(217*zeta^7 + 351*zeta^6 - 
1302*zeta^5 - 2093*zeta^4 + 2400*zeta^3 + 3229*zeta^2 - 1539*zeta - 461)*q^797 +
1/25*(83*zeta^7 + 57*zeta^6 - 524*zeta^5 - 320*zeta^4 + 890*zeta^3 + 438*zeta^2 
- 261*zeta - 109)*q^798 + 1/25*(186*zeta^7 + 208*zeta^6 - 1094*zeta^5 - 
1087*zeta^4 + 1553*zeta^3 + 1320*zeta^2 - 9*zeta - 370)*q^800 + 1/25*(156*zeta^7
- 178*zeta^6 - 936*zeta^5 + 898*zeta^4 + 1546*zeta^3 - 942*zeta^2 - 909*zeta - 
116)*q^801 + 1/25*(124*zeta^7 + 444*zeta^6 - 405*zeta^5 - 2678*zeta^4 - 
168*zeta^3 + 4286*zeta^2 + 448*zeta - 1580)*q^802 + 1/25*(-520*zeta^7 - 
132*zeta^6 + 3548*zeta^5 + 1206*zeta^4 - 7340*zeta^3 - 3130*zeta^2 + 4286*zeta +
1092)*q^803 + 1/25*(164*zeta^7 + 183*zeta^6 - 1265*zeta^5 - 1098*zeta^4 + 
3053*zeta^3 + 1740*zeta^2 - 2429*zeta - 350)*q^804 + 1/25*(-56*zeta^7 + 
58*zeta^6 + 412*zeta^5 - 414*zeta^4 - 879*zeta^3 + 720*zeta^2 + 515*zeta - 
126)*q^805 + 1/25*(-109*zeta^7 - 65*zeta^6 + 1007*zeta^5 + 700*zeta^4 - 
2744*zeta^3 - 1693*zeta^2 + 1977*zeta + 972)*q^806 + 1/25*(-34*zeta^7 - 
233*zeta^6 + 229*zeta^5 + 1252*zeta^4 - 664*zeta^3 - 1826*zeta^2 + 723*zeta + 
677)*q^807 + 1/25*(-14*zeta^7 + 152*zeta^6 + 92*zeta^5 - 847*zeta^4 - 14*zeta^3 
+ 1312*zeta^2 - 290*zeta - 550)*q^808 + 1/25*(750*zeta^7 + 81*zeta^6 - 
4712*zeta^5 + 261*zeta^4 + 8390*zeta^3 - 1841*zeta^2 - 4300*zeta + 992)*q^809 + 
1/25*(-249*zeta^7 - 135*zeta^6 + 1557*zeta^5 + 654*zeta^4 - 2622*zeta^3 - 
747*zeta^2 + 1023*zeta + 324)*q^810 + 1/25*(-172*zeta^7 + 143*zeta^6 + 
891*zeta^5 - 858*zeta^4 - 973*zeta^3 + 1474*zeta^2 + 117*zeta - 202)*q^811 + 
1/25*(118*zeta^7 + 90*zeta^6 - 806*zeta^5 - 543*zeta^4 + 1670*zeta^3 + 
856*zeta^2 - 1007*zeta - 186)*q^812 + 1/25*(68*zeta^7 + 153*zeta^6 - 119*zeta^5 
- 629*zeta^4 - 595*zeta^3 + 646*zeta^2 + 1020*zeta - 595)*q^813 + 
1/25*(-4*zeta^7 + 38*zeta^6 + 24*zeta^5 - 284*zeta^4 - 100*zeta^3 + 352*zeta^2 +
268*zeta + 432)*q^814 + 1/25*(-72*zeta^7 + 246*zeta^6 + 750*zeta^5 - 1131*zeta^4
- 2397*zeta^3 + 960*zeta^2 + 2205*zeta - 180)*q^815 + 1/25*(108*zeta^7 - 
26*zeta^6 - 782*zeta^5 + 29*zeta^4 + 1709*zeta^3 + 180*zeta^2 - 1107*zeta + 
80)*q^817 + 1/25*(56*zeta^7 + 314*zeta^6 - 336*zeta^5 - 1834*zeta^4 + 666*zeta^3
+ 2574*zeta^2 - 337*zeta + 48)*q^818 + 1/25*(83*zeta^7 - 26*zeta^6 - 453*zeta^5 
+ 106*zeta^4 + 292*zeta^3 + 82*zeta^2 + 865*zeta - 88)*q^819 + 1/25*(268*zeta^7 
+ 166*zeta^6 - 1785*zeta^5 - 1106*zeta^4 + 3565*zeta^3 + 2076*zeta^2 - 2040*zeta
- 552)*q^820 + 1/25*(-94*zeta^7 + 30*zeta^6 + 345*zeta^5 - 180*zeta^4 + 
273*zeta^3 + 229*zeta^2 - 1121*zeta + 176)*q^821 + 1/25*(-95*zeta^7 + 66*zeta^6 
+ 491*zeta^5 - 404*zeta^4 - 783*zeta^3 + 618*zeta^2 + 445*zeta - 604)*q^822 + 
1/25*(-125*zeta^7 - 112*zeta^6 + 999*zeta^5 + 863*zeta^4 - 2460*zeta^3 - 
1638*zeta^2 + 1765*zeta + 676)*q^823 + 1/25*(275*zeta^7 - 92*zeta^6 - 
1655*zeta^5 + 646*zeta^4 + 2408*zeta^3 - 1505*zeta^2 - 447*zeta + 1310)*q^824 + 
1/25*(-278*zeta^7 - 82*zeta^6 + 1844*zeta^5 + 224*zeta^4 - 3464*zeta^3 + 
234*zeta^2 + 1544*zeta - 570)*q^825 + 1/25*(49*zeta^7 + 60*zeta^6 - 307*zeta^5 -
343*zeta^4 + 588*zeta^3 + 434*zeta^2 - 409*zeta - 20)*q^826 + 1/25*(-421*zeta^7 
- 63*zeta^6 + 2757*zeta^5 + 52*zeta^4 - 5003*zeta^3 + 411*zeta^2 + 2278*zeta + 
198)*q^827 + 1/25*(-56*zeta^7 - 99*zeta^6 + 549*zeta^5 + 594*zeta^4 - 
1668*zeta^3 - 919*zeta^2 + 1616*zeta + 112)*q^828 + 1/25*(392*zeta^7 + 
182*zeta^6 - 2662*zeta^5 - 1293*zeta^4 + 5470*zeta^3 + 2629*zeta^2 - 3209*zeta -
766)*q^829 + 1/25*(-71*zeta^7 - 89*zeta^6 + 288*zeta^5 + 489*zeta^4 + 37*zeta^3 
- 808*zeta^2 - 693*zeta + 409)*q^830 + 1/25*(-251*zeta^7 - 480*zeta^6 + 
1506*zeta^5 + 2715*zeta^4 - 2926*zeta^3 - 4177*zeta^2 + 2231*zeta + 1285)*q^831 
+ 1/25*(43*zeta^7 - 19*zeta^6 - 320*zeta^5 + 195*zeta^4 + 728*zeta^3 - 
252*zeta^2 - 72*zeta - 529)*q^832 + 1/25*(113*zeta^7 + 189*zeta^6 - 602*zeta^5 -
952*zeta^4 + 599*zeta^3 + 1072*zeta^2 + 435*zeta - 311)*q^834 + 1/25*(61*zeta^7 
- 12*zeta^6 - 366*zeta^5 - 19*zeta^4 + 580*zeta^3 + 117*zeta^2 - 212*zeta + 
217)*q^835 + 1/25*(16*zeta^7 - 8*zeta^6 - 98*zeta^5 + 20*zeta^4 + 96*zeta^3 + 
44*zeta^2 + 136*zeta - 8)*q^836 + 1/25*(-204*zeta^7 - 414*zeta^6 + 1044*zeta^5 +
2451*zeta^4 - 1140*zeta^3 - 3873*zeta^2 + 123*zeta + 762)*q^837 + 
1/25*(-68*zeta^7 + 83*zeta^6 + 469*zeta^5 - 498*zeta^4 - 1040*zeta^3 + 
919*zeta^2 + 988*zeta - 276)*q^838 + 1/25*(53*zeta^7 + 572*zeta^6 - 109*zeta^5 -
3510*zeta^4 - 708*zeta^3 + 5382*zeta^2 + 1258*zeta - 1686)*q^839 + 
1/25*(88*zeta^7 + 33*zeta^6 - 595*zeta^5 - 175*zeta^4 + 1197*zeta^3 + 209*zeta^2
- 721*zeta - 56)*q^840 + 1/25*(-435*zeta^7 - 429*zeta^6 + 2626*zeta^5 + 
2134*zeta^4 - 4424*zeta^3 - 2399*zeta^2 + 2080*zeta - 149)*q^841 + 
1/25*(-202*zeta^7 + 34*zeta^6 + 1164*zeta^5 - 264*zeta^4 - 1544*zeta^3 + 
774*zeta^2 + 200*zeta - 902)*q^842 + 1/25*(-373*zeta^7 - 222*zeta^6 + 
2308*zeta^5 + 1027*zeta^4 - 4155*zeta^3 - 782*zeta^2 + 2440*zeta - 316)*q^843 + 
1/25*(-109*zeta^7 + 463*zeta^6 + 985*zeta^5 - 2998*zeta^4 - 2656*zeta^3 + 
4827*zeta^2 + 2023*zeta - 1188)*q^844 + 1/25*(226*zeta^7 + 171*zeta^6 - 
1232*zeta^5 - 1026*zeta^4 + 1436*zeta^3 + 1801*zeta^2 + 284*zeta - 750)*q^845 + 
1/25*(-72*zeta^7 - 162*zeta^6 + 564*zeta^5 + 741*zeta^4 - 1380*zeta^3 - 
429*zeta^2 + 1029*zeta - 138)*q^846 + 1/25*(-81*zeta^7 + 65*zeta^6 + 402*zeta^5 
- 461*zeta^4 - 85*zeta^3 + 636*zeta^2 - 1163*zeta - 33)*q^847 + 1/25*(84*zeta^7 
+ 674*zeta^6 - 504*zeta^5 - 3668*zeta^4 + 1300*zeta^3 + 5184*zeta^2 - 1356*zeta 
- 1328)*q^848 + 1/25*(259*zeta^7 + 453*zeta^6 - 1360*zeta^5 - 2389*zeta^4 + 
1264*zeta^3 + 2772*zeta^2 + 792*zeta - 281)*q^849 + 1/25*(223*zeta^7 + 
269*zeta^6 - 1292*zeta^5 - 1441*zeta^4 + 1754*zeta^3 + 1760*zeta^2 - 12*zeta - 
285)*q^851 + 1/25*(68*zeta^7 - 57*zeta^6 - 408*zeta^5 + 210*zeta^4 + 616*zeta^3 
- 188*zeta^2 - 173*zeta + 338)*q^852 + 1/25*(-125*zeta^7 - 184*zeta^6 + 
568*zeta^5 + 1174*zeta^4 - 206*zeta^3 - 2116*zeta^2 - 867*zeta + 802)*q^853 + 
1/25*(-6*zeta^7 + 61*zeta^5 - 13*zeta^4 - 185*zeta^3 + 68*zeta^2 + 149*zeta - 
26)*q^854 + 1/25*(-32*zeta^7 + 15*zeta^6 + 189*zeta^5 - 90*zeta^4 - 303*zeta^3 +
164*zeta^2 + 167*zeta - 26)*q^855 + 1/25*(-129*zeta^7 - 327*zeta^6 + 613*zeta^5 
+ 1978*zeta^4 - 472*zeta^3 - 2991*zeta^2 - 323*zeta + 712)*q^856 + 
1/25*(458*zeta^7 - 107*zeta^6 - 3075*zeta^5 + 955*zeta^4 + 5907*zeta^3 - 
1851*zeta^2 - 3001*zeta + 224)*q^857 + 1/25*(-176*zeta^7 - 166*zeta^6 + 
1322*zeta^5 + 692*zeta^4 - 3080*zeta^3 - 648*zeta^2 + 1862*zeta + 174)*q^858 + 
1/25*(-430*zeta^7 - 839*zeta^6 + 2279*zeta^5 + 4550*zeta^4 - 3204*zeta^3 - 
6146*zeta^2 + 1757*zeta + 919)*q^859 + 1/25*(117*zeta^7 + 72*zeta^6 - 830*zeta^5
- 465*zeta^4 + 1793*zeta^3 + 736*zeta^2 - 1174*zeta - 244)*q^860 + 
1/25*(74*zeta^7 + 105*zeta^6 - 350*zeta^5 - 640*zeta^4 + 348*zeta^3 + 975*zeta^2
+ 23*zeta - 74)*q^861 + 1/25*(-78*zeta^7 - 342*zeta^6 + 713*zeta^5 + 2052*zeta^4
- 1937*zeta^3 - 3449*zeta^2 + 1353*zeta + 820)*q^862 + 1/25*(688*zeta^7 + 
744*zeta^6 - 4321*zeta^5 - 4531*zeta^4 + 7845*zeta^3 + 7431*zeta^2 - 4089*zeta -
1622)*q^863 + 1/25*(-27*zeta^7 + 123*zeta^6 + 186*zeta^5 - 759*zeta^4 - 
135*zeta^3 + 1116*zeta^2 - 585*zeta - 315)*q^864 + 1/25*(271*zeta^7 + 
1116*zeta^6 - 1626*zeta^5 - 6269*zeta^4 + 3408*zeta^3 + 9043*zeta^2 - 2682*zeta 
- 1685)*q^865 + 1/25*(-230*zeta^7 - 58*zeta^6 + 1552*zeta^5 + 464*zeta^4 - 
3016*zeta^3 - 868*zeta^2 + 1554*zeta - 6)*q^866 + 1/25*(59*zeta^7 + 85*zeta^6 - 
328*zeta^5 - 466*zeta^4 + 388*zeta^3 + 566*zeta^2 + 33*zeta - 13)*q^868 + 
1/25*(-114*zeta^7 - 68*zeta^6 + 684*zeta^5 + 554*zeta^4 - 1108*zeta^3 - 
918*zeta^2 + 390*zeta - 442)*q^869 + 1/25*(-30*zeta^7 - 75*zeta^6 + 102*zeta^5 +
429*zeta^4 + 57*zeta^3 - 672*zeta^2 - 222*zeta + 285)*q^870 + 1/25*(48*zeta^7 + 
104*zeta^6 - 547*zeta^5 - 305*zeta^4 + 1775*zeta^3 - 579*zeta^2 - 1539*zeta + 
430)*q^871 + 1/25*(136*zeta^7 - 108*zeta^6 - 888*zeta^5 + 648*zeta^4 + 
1776*zeta^3 - 1204*zeta^2 - 1456*zeta + 328)*q^872 + 1/25*(-322*zeta^7 + 
126*zeta^6 + 2098*zeta^5 - 1000*zeta^4 - 3966*zeta^3 + 1866*zeta^2 + 2072*zeta -
572)*q^873 + 1/25*(33*zeta^7 - 48*zeta^6 - 358*zeta^5 + 171*zeta^4 + 1021*zeta^3
+ 56*zeta^2 - 638*zeta - 356)*q^874 + 1/25*(-147*zeta^7 - 324*zeta^6 + 
801*zeta^5 + 1749*zeta^4 - 1242*zeta^3 - 2389*zeta^2 + 775*zeta + 460)*q^875 + 
1/25*(-284*zeta^7 - 337*zeta^6 + 1871*zeta^5 + 1628*zeta^4 - 3728*zeta^3 - 
1884*zeta^2 + 2117*zeta + 249)*q^876 + 1/25*(640*zeta^7 + 73*zeta^6 - 
4351*zeta^5 - 199*zeta^4 + 8681*zeta^3 - 79*zeta^2 - 4933*zeta - 216)*q^877 + 
1/25*(361*zeta^7 + 404*zeta^6 - 2117*zeta^5 - 2268*zeta^4 + 3137*zeta^3 + 
3168*zeta^2 - 821*zeta - 952)*q^878 + 1/25*(-32*zeta^7 + 12*zeta^6 - 72*zeta^4 +
738*zeta^3 + 38*zeta^2 - 1258*zeta + 172)*q^879 + 1/25*(512*zeta^7 + 460*zeta^6 
- 3260*zeta^5 - 2906*zeta^4 + 6060*zeta^3 + 5074*zeta^2 - 3218*zeta - 
1212)*q^880 + 1/25*(11*zeta^7 - 10*zeta^6 + 120*zeta^5 + 420*zeta^4 - 688*zeta^3
- 1148*zeta^2 + 861*zeta + 8)*q^881 + 1/25*(-27*zeta^7 + 117*zeta^6 + 162*zeta^5
- 681*zeta^4 - 276*zeta^3 + 861*zeta^2 + 273*zeta + 243)*q^882 + 
1/25*(161*zeta^7 + 363*zeta^6 - 764*zeta^5 - 1744*zeta^4 + 338*zeta^3 + 
1834*zeta^2 + 1425*zeta - 767)*q^883 + 1/25*(-135*zeta^7 + 129*zeta^6 + 
1074*zeta^5 - 399*zeta^4 - 2667*zeta^3 + 18*zeta^2 + 2322*zeta - 579)*q^885 + 
1/25*(15*zeta^7 - 362*zeta^6 - 90*zeta^5 + 2041*zeta^4 + 34*zeta^3 - 2735*zeta^2
- 31*zeta - 13)*q^886 + 1/25*(-81*zeta^7 - 433*zeta^6 + 265*zeta^5 + 2751*zeta^4
- 35*zeta^3 - 4518*zeta^2 + 281*zeta + 1461)*q^887 + 1/25*(154*zeta^7 + 
222*zeta^6 - 935*zeta^5 - 1296*zeta^4 + 1595*zeta^3 + 1963*zeta^2 - 782*zeta - 
372)*q^888 + 1/25*(-264*zeta^7 - 149*zeta^6 + 1495*zeta^5 + 894*zeta^4 - 
2010*zeta^3 - 1543*zeta^2 + 214*zeta + 668)*q^889 + 1/25*(369*zeta^7 + 
188*zeta^6 - 2333*zeta^5 - 884*zeta^4 + 3981*zeta^3 + 960*zeta^2 - 1585*zeta - 
496)*q^890 + 1/25*(204*zeta^7 + 126*zeta^6 - 1284*zeta^5 - 618*zeta^4 + 
2376*zeta^3 + 570*zeta^2 - 1428*zeta + 96)*q^891 + 1/25*(226*zeta^7 + 605*zeta^6
- 1171*zeta^5 - 3307*zeta^4 + 1714*zeta^3 + 4624*zeta^2 - 1199*zeta - 
1003)*q^892 + 1/25*(-28*zeta^7 - 41*zeta^6 + 91*zeta^5 + 250*zeta^4 + 92*zeta^3 
- 344*zeta^2 - 147*zeta - 43)*q^893 + 1/25*(-68*zeta^7 + 233*zeta^6 + 548*zeta^5
- 1465*zeta^4 - 1124*zeta^3 + 2087*zeta^2 + 272*zeta - 88)*q^894 + 
1/25*(-697*zeta^7 - 336*zeta^6 + 4397*zeta^5 + 1560*zeta^4 - 7507*zeta^3 - 
1656*zeta^2 + 3015*zeta + 836)*q^895 + 1/25*(-250*zeta^7 - 144*zeta^6 + 
1465*zeta^5 + 864*zeta^4 - 2173*zeta^3 - 1467*zeta^2 + 565*zeta + 592)*q^896 + 
1/25*(-416*zeta^7 - 650*zeta^6 + 2721*zeta^5 + 3532*zeta^4 - 5285*zeta^3 - 
4452*zeta^2 + 3114*zeta + 564)*q^897 + 1/25*(34*zeta^7 + 226*zeta^6 + 35*zeta^5 
- 1172*zeta^4 - 526*zeta^3 + 1550*zeta^2 + 290*zeta - 746)*q^898 + 
1/25*(-63*zeta^7 - 127*zeta^6 + 378*zeta^5 + 715*zeta^4 - 740*zeta^3 - 
1095*zeta^2 + 573*zeta + 343)*q^899 + 1/25*(157*zeta^7 + 129*zeta^6 - 970*zeta^5
- 714*zeta^4 + 1567*zeta^3 + 940*zeta^2 - 375*zeta - 195)*q^900 + 
1/25*(158*zeta^7 + 114*zeta^6 - 992*zeta^5 - 582*zeta^4 + 1664*zeta^3 + 
752*zeta^2 - 300*zeta - 426)*q^902 + 1/25*(47*zeta^7 - 72*zeta^6 - 282*zeta^5 + 
387*zeta^4 + 472*zeta^3 - 437*zeta^2 - 314*zeta - 109)*q^903 + 1/25*(111*zeta^7 
+ 140*zeta^6 - 461*zeta^5 - 792*zeta^4 - 14*zeta^3 + 1338*zeta^2 + 1037*zeta - 
642)*q^904 + 1/25*(-34*zeta^7 - 150*zeta^6 + 90*zeta^5 + 857*zeta^4 + 230*zeta^3
- 1268*zeta^2 - 359*zeta + 214)*q^905 + 1/25*(98*zeta^7 - 613*zeta^5 + 
1093*zeta^3 - 37*zeta^2 - 653*zeta - 24)*q^906 + 1/25*(532*zeta^7 - 139*zeta^6 -
3580*zeta^5 + 1294*zeta^4 + 6853*zeta^3 - 2631*zeta^2 - 3484*zeta + 384)*q^907 +
1/25*(-99*zeta^7 - 128*zeta^6 + 513*zeta^5 + 609*zeta^4 - 700*zeta^3 - 
474*zeta^2 + 435*zeta - 292)*q^908 + 1/25*(155*zeta^7 + 277*zeta^6 - 1004*zeta^5
- 1409*zeta^4 + 2042*zeta^3 + 1821*zeta^2 - 1304*zeta - 429)*q^909 + 
1/25*(101*zeta^7 + 124*zeta^6 - 591*zeta^5 - 639*zeta^4 + 958*zeta^3 + 
779*zeta^2 - 465*zeta - 28)*q^910 + 1/25*(-186*zeta^7 - 90*zeta^6 + 958*zeta^5 +
144*zeta^4 - 1168*zeta^3 + 670*zeta^2 + 434*zeta - 808)*q^911 + 
1/25*(-215*zeta^7 - 108*zeta^6 + 1287*zeta^5 + 542*zeta^4 - 2086*zeta^3 - 
654*zeta^2 + 800*zeta + 102)*q^912 + 1/25*(812*zeta^7 + 474*zeta^6 - 4564*zeta^5
- 2844*zeta^4 + 5986*zeta^3 + 4928*zeta^2 - 362*zeta - 2136)*q^913 + 
1/25*(-186*zeta^7 - 532*zeta^6 + 772*zeta^5 + 3110*zeta^4 - 140*zeta^3 - 
4817*zeta^2 - 710*zeta + 900)*q^914 + 1/25*(-66*zeta^7 - 193*zeta^6 + 229*zeta^5
+ 1149*zeta^4 + 79*zeta^3 - 1842*zeta^2 - 358*zeta + 711)*q^915 + 
1/25*(-125*zeta^7 + 98*zeta^6 + 750*zeta^5 - 365*zeta^4 - 1152*zeta^3 + 
311*zeta^2 + 380*zeta - 517)*q^916 + 1/25*(-11*zeta^7 + 257*zeta^6 + 334*zeta^5 
- 1345*zeta^4 - 1573*zeta^3 + 1394*zeta^2 + 1428*zeta + 273)*q^917 + 
1/25*(127*zeta^7 - 153*zeta^6 - 1042*zeta^5 + 860*zeta^4 + 2683*zeta^3 - 
828*zeta^2 - 1395*zeta - 761)*q^919 + 1/25*(-125*zeta^7 - 243*zeta^6 + 
750*zeta^5 + 1455*zeta^4 - 1378*zeta^3 - 2191*zeta^2 + 830*zeta + 157)*q^920 + 
1/25*(27*zeta^7 - 42*zeta^6 - 180*zeta^5 + 204*zeta^4 + 192*zeta^3 - 180*zeta^2 
+ 285*zeta + 72)*q^921 + 1/25*(30*zeta^7 + 180*zeta^6 + 182*zeta^5 - 1232*zeta^4
- 1510*zeta^3 + 2545*zeta^2 + 1600*zeta - 664)*q^922 + 1/25*(452*zeta^7 + 
457*zeta^6 - 2427*zeta^5 - 2742*zeta^4 + 2611*zeta^3 + 4828*zeta^2 + 1133*zeta -
1882)*q^923 + 1/25*(34*zeta^7 + 186*zeta^6 - 58*zeta^5 - 1172*zeta^4 - 
312*zeta^3 + 1842*zeta^2 + 466*zeta - 328)*q^924 + 1/25*(55*zeta^7 - 194*zeta^6 
- 357*zeta^5 + 1325*zeta^4 + 508*zeta^3 - 2124*zeta^2 + 121*zeta + 356)*q^925 + 
1/25*(-217*zeta^7 - 44*zeta^6 + 1445*zeta^5 + 62*zeta^4 - 2712*zeta^3 + 
355*zeta^2 + 1181*zeta - 506)*q^926 + 1/25*(-49*zeta^7 - 212*zeta^6 + 427*zeta^5
+ 1075*zeta^4 - 1318*zeta^3 - 1503*zeta^2 + 1141*zeta + 660)*q^927 + 
1/25*(-115*zeta^7 - 84*zeta^6 + 643*zeta^5 + 337*zeta^4 - 978*zeta^3 - 98*zeta^2
+ 529*zeta - 292)*q^928 + 1/25*(-99*zeta^7 + 123*zeta^6 + 667*zeta^5 - 
824*zeta^4 - 1375*zeta^3 + 1365*zeta^2 + 844*zeta - 458)*q^929 + 
1/25*(138*zeta^7 - 177*zeta^6 - 908*zeta^5 + 1062*zeta^4 + 1874*zeta^3 - 
1933*zeta^2 - 1698*zeta + 542)*q^930 + 1/25*(-68*zeta^7 - 148*zeta^6 + 
371*zeta^5 + 839*zeta^4 - 495*zeta^3 - 1201*zeta^2 + 161*zeta + 198)*q^931 + 
1/25*(-9*zeta^7 - 42*zeta^6 - 111*zeta^5 - 18*zeta^4 + 564*zeta^3 + 414*zeta^2 -
555*zeta + 144)*q^932 + 1/25*(14*zeta^7 + 68*zeta^6 - 84*zeta^5 - 380*zeta^4 + 
182*zeta^3 + 544*zeta^2 - 149*zeta - 102)*q^933 + 1/25*(-371*zeta^7 - 219*zeta^6
+ 2378*zeta^5 + 1299*zeta^4 - 4175*zeta^3 - 1874*zeta^2 + 1524*zeta + 297)*q^934
+ 1/25*(-102*zeta^7 + 78*zeta^6 + 792*zeta^5 - 345*zeta^4 - 1908*zeta^3 + 
198*zeta^2 + 1215*zeta + 126)*q^936 + 1/25*(13*zeta^7 + 440*zeta^6 - 78*zeta^5 -
2539*zeta^4 + 244*zeta^3 + 3445*zeta^2 - 24*zeta + 209)*q^937 + 1/25*(40*zeta^7 
- 10*zeta^6 - 311*zeta^5 - 152*zeta^4 + 514*zeta^3 + 626*zeta^2 + 36*zeta - 
50)*q^938 + 1/25*(-240*zeta^7 - 208*zeta^6 + 1657*zeta^5 + 1199*zeta^4 - 
3485*zeta^3 - 1715*zeta^2 + 2149*zeta + 318)*q^939 + 1/25*(418*zeta^7 + 
282*zeta^6 - 2317*zeta^5 - 1692*zeta^4 + 2884*zeta^3 + 2952*zeta^2 + 152*zeta - 
1246)*q^940 + 1/25*(-386*zeta^7 - 666*zeta^6 + 2098*zeta^5 + 3912*zeta^4 - 
2582*zeta^3 - 5742*zeta^2 + 120*zeta + 1540)*q^941 + 1/25*(35*zeta^7 + 
304*zeta^6 + 7*zeta^5 - 1697*zeta^4 - 412*zeta^3 + 1978*zeta^2 - 59*zeta + 
292)*q^942 + 1/25*(219*zeta^7 - 96*zeta^6 - 1593*zeta^5 + 777*zeta^4 + 
3270*zeta^3 - 1663*zeta^2 - 1403*zeta + 844)*q^943 + 1/25*(545*zeta^7 + 
319*zeta^6 - 3314*zeta^5 - 1460*zeta^4 + 5444*zeta^3 + 1161*zeta^2 - 2192*zeta +
891)*q^944 + 1/25*(336*zeta^7 + 84*zeta^6 - 2241*zeta^5 - 354*zeta^4 + 
4395*zeta^3 + 234*zeta^2 - 2535*zeta - 48)*q^945 + 1/25*(-160*zeta^7 - 
198*zeta^6 + 1016*zeta^5 + 1080*zeta^4 - 1624*zeta^3 - 1458*zeta^2 + 462*zeta + 
692)*q^946 + 1/25*(-310*zeta^7 + 34*zeta^6 + 1801*zeta^5 - 204*zeta^4 - 
2715*zeta^3 + 405*zeta^2 + 1115*zeta + 112)*q^947 + 1/25*(-14*zeta^7 + 
102*zeta^6 + 148*zeta^5 - 495*zeta^4 - 460*zeta^3 + 442*zeta^2 + 325*zeta + 
30)*q^948 + 1/25*(200*zeta^7 - 93*zeta^6 - 1091*zeta^5 + 469*zeta^4 + 671*zeta^3
- 170*zeta^2 + 2208*zeta - 121)*q^949 + 1/25*(127*zeta^7 + 199*zeta^6 - 
762*zeta^5 - 1169*zeta^4 + 1422*zeta^3 + 1821*zeta^2 - 968*zeta - 387)*q^950 + 
1/25*(-486*zeta^7 - 144*zeta^6 + 3258*zeta^5 + 986*zeta^4 - 6255*zeta^3 - 
1738*zeta^2 + 2850*zeta + 394)*q^951 + 1/25*(54*zeta^7 - 8*zeta^6 - 386*zeta^5 -
107*zeta^4 + 827*zeta^3 + 308*zeta^2 - 813*zeta + 426)*q^953 + 1/25*(102*zeta^7 
+ 114*zeta^6 - 612*zeta^5 - 726*zeta^4 + 1080*zeta^3 + 1158*zeta^2 - 606*zeta - 
30)*q^954 + 1/25*(-101*zeta^7 - 321*zeta^6 + 345*zeta^5 + 1927*zeta^4 + 
117*zeta^3 - 3094*zeta^2 - 467*zeta + 1165)*q^955 + 1/25*(268*zeta^7 + 38*zeta^6
- 1851*zeta^5 - 464*zeta^4 + 3895*zeta^3 + 1426*zeta^2 - 2306*zeta - 548)*q^956 
+ 1/25*(36*zeta^7 - 36*zeta^6 - 66*zeta^5 + 216*zeta^4 - 456*zeta^3 - 312*zeta^2
+ 864*zeta - 60)*q^957 + 1/25*(444*zeta^7 + 312*zeta^6 - 2524*zeta^5 - 
1720*zeta^4 + 3784*zeta^3 + 2352*zeta^2 - 1240*zeta - 232)*q^958 + 
1/25*(2*zeta^7 - 74*zeta^6 - 83*zeta^5 + 406*zeta^4 + 287*zeta^3 - 452*zeta^2 - 
101*zeta - 104)*q^959 + 1/25*(292*zeta^7 + 197*zeta^6 - 1723*zeta^5 - 952*zeta^4
+ 2680*zeta^3 + 892*zeta^2 - 1025*zeta + 443)*q^960 + 1/25*(-91*zeta^7 - 
446*zeta^6 + 517*zeta^5 + 2422*zeta^4 - 1120*zeta^3 - 3503*zeta^2 + 1137*zeta + 
1124)*q^961 + 1/25*(222*zeta^7 - 21*zeta^6 - 1739*zeta^5 - 39*zeta^4 + 
4031*zeta^3 + 511*zeta^2 - 2473*zeta - 736)*q^962 + 1/25*(-166*zeta^7 - 
459*zeta^6 + 682*zeta^5 + 2828*zeta^4 - 222*zeta^3 - 4353*zeta^2 - 679*zeta + 
802)*q^963 + 1/25*(-494*zeta^7 - 294*zeta^6 + 2919*zeta^5 + 1764*zeta^4 - 
4422*zeta^3 - 2986*zeta^2 + 1274*zeta + 1174)*q^964 + 1/25*(-658*zeta^7 - 
322*zeta^6 + 4487*zeta^5 + 2226*zeta^4 - 9275*zeta^3 - 4361*zeta^2 + 5488*zeta +
1232)*q^965 + 1/25*(-66*zeta^7 - 61*zeta^6 + 439*zeta^5 + 645*zeta^4 - 
629*zeta^3 - 1518*zeta^2 - 46*zeta + 315)*q^966 + 1/25*(-247*zeta^7 - 518*zeta^6
+ 1482*zeta^5 + 2999*zeta^4 - 2826*zeta^3 - 4529*zeta^2 + 1963*zeta + 853)*q^967
+ 1/25*(59*zeta^7 - 195*zeta^6 - 608*zeta^5 + 932*zeta^4 + 1928*zeta^3 - 
830*zeta^2 - 1653*zeta - 5)*q^968 + 1/25*(68*zeta^7 - 124*zeta^6 - 600*zeta^5 + 
538*zeta^4 + 1668*zeta^3 - 388*zeta^2 - 1398*zeta + 124)*q^970 + 
1/25*(-77*zeta^7 + 13*zeta^6 + 462*zeta^5 - 31*zeta^4 - 800*zeta^3 - 97*zeta^2 +
503*zeta + 129)*q^971 + 1/25*(-39*zeta^7 + 111*zeta^6 + 108*zeta^5 - 951*zeta^4 
+ 381*zeta^3 + 1776*zeta^2 - 1221*zeta - 255)*q^972 + 1/25*(-214*zeta^7 - 
44*zeta^6 + 1496*zeta^5 + 414*zeta^4 - 3200*zeta^3 - 1083*zeta^2 + 1938*zeta + 
388)*q^973 + 1/25*(-36*zeta^7 - 43*zeta^6 + 495*zeta^5 + 258*zeta^4 - 
1864*zeta^3 - 303*zeta^2 + 2156*zeta - 132)*q^974 + 1/25*(-42*zeta^7 - 
177*zeta^6 + 338*zeta^5 + 998*zeta^4 - 533*zeta^3 - 1401*zeta^2 - 4*zeta + 
860)*q^975 + 1/25*(19*zeta^7 + 105*zeta^6 - 182*zeta^5 - 748*zeta^4 + 583*zeta^3
+ 1279*zeta^2 - 594*zeta - 340)*q^976 + 1/25*(-404*zeta^7 - 784*zeta^6 + 
2114*zeta^5 + 4265*zeta^4 - 2870*zeta^3 - 5766*zeta^2 + 1532*zeta + 822)*q^977 +
1/25*(-51*zeta^7 - 21*zeta^6 + 150*zeta^5 + 168*zeta^4 + 300*zeta^3 - 195*zeta^2
- 456*zeta - 273)*q^978 + 1/25*(-570*zeta^7 - 14*zeta^6 + 3978*zeta^5 - 
36*zeta^4 - 8164*zeta^3 + 138*zeta^2 + 4662*zeta + 440)*q^979 + 
1/25*(-137*zeta^7 + 99*zeta^6 + 973*zeta^5 - 738*zeta^4 - 1994*zeta^3 + 
1323*zeta^2 + 1113*zeta - 224)*q^980 + 1/25*(168*zeta^7 + 48*zeta^6 - 
1116*zeta^5 - 288*zeta^4 + 2208*zeta^3 + 408*zeta^2 - 1488*zeta - 120)*q^981 + 
1/25*(140*zeta^7 + 418*zeta^6 - 823*zeta^5 - 2178*zeta^4 + 1315*zeta^3 + 
2460*zeta^2 - 684*zeta - 176)*q^982 + 1/25*(51*zeta^7 + 439*zeta^6 - 157*zeta^5 
- 2877*zeta^4 + 149*zeta^3 + 4782*zeta^2 - 803*zeta - 1419)*q^983 + 
1/25*(-129*zeta^7 - 147*zeta^6 + 774*zeta^5 + 909*zeta^4 - 1392*zeta^3 - 
1461*zeta^2 + 855*zeta + 189)*q^984 + 1/25*(152*zeta^7 - 402*zeta^6 - 
1466*zeta^5 + 1819*zeta^4 + 4415*zeta^3 - 1476*zeta^2 - 3897*zeta + 308)*q^985 +
1/25*(-163*zeta^7 - 27*zeta^6 + 1114*zeta^5 + 171*zeta^4 - 2215*zeta^3 - 
370*zeta^2 + 924*zeta + 345)*q^987 + 1/25*(23*zeta^7 + 4*zeta^6 - 138*zeta^5 - 
9*zeta^4 + 268*zeta^3 + 63*zeta^2 - 244*zeta - 197)*q^988 + 1/25*(59*zeta^7 + 
248*zeta^6 - 53*zeta^5 - 1252*zeta^4 - 602*zeta^3 + 1642*zeta^2 + 625*zeta - 
862)*q^989 + 1/25*(-72*zeta^7 + 60*zeta^6 + 594*zeta^5 - 288*zeta^4 - 
1530*zeta^3 + 276*zeta^2 + 1068*zeta + 24)*q^990 + 1/25*(-654*zeta^7 - 
621*zeta^6 + 3766*zeta^5 + 3726*zeta^4 - 5197*zeta^3 - 6436*zeta^2 + 369*zeta + 
2348)*q^991 + 1/25*(-265*zeta^7 - 212*zeta^6 + 1537*zeta^5 + 1166*zeta^4 - 
2332*zeta^3 - 1590*zeta^2 + 742*zeta + 318)*q^992 + 1/25*(-250*zeta^7 - 
160*zeta^6 + 1600*zeta^5 + 826*zeta^4 - 3038*zeta^3 - 872*zeta^2 + 1864*zeta - 
24)*q^993 + 1/25*(-5*zeta^7 + 101*zeta^6 + 60*zeta^5 - 573*zeta^4 - 94*zeta^3 + 
885*zeta^2 - 104*zeta - 325)*q^994 + 1/25*(-16*zeta^7 + 757*zeta^6 + 287*zeta^5 
- 4267*zeta^4 - 342*zeta^3 + 6542*zeta^2 - 965*zeta - 2391)*q^995 + 
1/25*(357*zeta^7 + 83*zeta^6 - 2307*zeta^5 - 246*zeta^4 + 4324*zeta^3 - 
141*zeta^2 - 2397*zeta + 196)*q^996 + 1/25*(590*zeta^7 + 13*zeta^6 - 3762*zeta^5
+ 328*zeta^4 + 6756*zeta^3 - 1101*zeta^2 - 3165*zeta + 278)*q^997 + 
1/25*(112*zeta^7 - 85*zeta^6 - 907*zeta^5 + 510*zeta^4 + 2427*zeta^3 - 
1038*zeta^2 - 2507*zeta + 434)*q^998 + 1/25*(390*zeta^7 + 372*zeta^6 - 
2478*zeta^5 - 2316*zeta^4 + 4590*zeta^3 + 3945*zeta^2 - 2436*zeta - 912)*q^999 +
1/25*(-112*zeta^7 - 179*zeta^6 + 435*zeta^5 + 1003*zeta^4 + 97*zeta^3 - 
1622*zeta^2 - 1016*zeta + 761)*q^1000 + 1/25*(166*zeta^7 - 338*zeta^6 - 
996*zeta^5 + 1622*zeta^4 + 1420*zeta^3 - 1966*zeta^2 - 328*zeta + 930)*q^1001 + 
1/25*(-109*zeta^7 - 99*zeta^6 + 664*zeta^5 + 538*zeta^4 - 1036*zeta^3 - 
690*zeta^2 + 189*zeta + 155)*q^1002 + 1/25*(-106*zeta^7 + 264*zeta^6 + 
1006*zeta^5 - 1412*zeta^4 - 2989*zeta^3 + 1398*zeta^2 + 1944*zeta + 686)*q^1004 
+ 1/25*(191*zeta^7 + 396*zeta^6 - 1146*zeta^5 - 2343*zeta^4 + 2134*zeta^3 + 
3517*zeta^2 - 1343*zeta - 361)*q^1005 + 1/25*(-47*zeta^7 + 151*zeta^6 + 
460*zeta^5 - 607*zeta^4 - 843*zeta^3 + 368*zeta^2 - 221*zeta - 359)*q^1006 + 
1/25*(-64*zeta^7 - 120*zeta^6 + 326*zeta^5 + 726*zeta^4 - 350*zeta^3 - 
1198*zeta^2 + 26*zeta + 252)*q^1007 + 1/25*(-248*zeta^7 - 183*zeta^6 + 
1533*zeta^5 + 1098*zeta^4 - 2574*zeta^3 - 1837*zeta^2 + 1058*zeta + 628)*q^1008 
+ 1/25*(146*zeta^7 + 121*zeta^6 - 950*zeta^5 - 616*zeta^4 + 1616*zeta^3 + 
759*zeta^2 - 581*zeta - 450)*q^1009 + 1/25*(-75*zeta^7 + 112*zeta^6 + 386*zeta^5
- 921*zeta^4 - 351*zeta^3 + 1784*zeta^2 - 182*zeta - 564)*q^1010 + 
1/25*(-76*zeta^7 + 223*zeta^6 + 505*zeta^5 - 1289*zeta^4 - 706*zeta^3 + 
2110*zeta^2 - 147*zeta - 973)*q^1011 + 1/25*(-10*zeta^7 - 248*zeta^6 - 
158*zeta^5 + 1468*zeta^4 + 752*zeta^3 - 2258*zeta^2 - 270*zeta + 572)*q^1012 + 
1/25*(-777*zeta^7 - 256*zeta^6 + 4968*zeta^5 + 969*zeta^4 - 9227*zeta^3 - 
228*zeta^2 + 5196*zeta - 476)*q^1013 + 1/25*(160*zeta^7 - 9*zeta^6 - 952*zeta^5 
+ 130*zeta^4 + 1623*zeta^3 - 309*zeta^2 - 764*zeta + 296)*q^1014 + 
1/25*(-106*zeta^7 - 69*zeta^6 + 582*zeta^5 + 414*zeta^4 - 702*zeta^3 - 
725*zeta^2 - 74*zeta + 314)*q^1015 + 1/25*(140*zeta^7 - 74*zeta^6 - 1133*zeta^5 
+ 346*zeta^4 + 2865*zeta^3 - 320*zeta^2 - 1988*zeta - 48)*q^1016 + 
1/25*(128*zeta^7 + 46*zeta^6 - 609*zeta^5 - 260*zeta^4 + 178*zeta^3 + 622*zeta^2
+ 1348*zeta - 394)*q^1017 + 1/25*(-90*zeta^7 - 427*zeta^6 + 540*zeta^5 + 
2508*zeta^4 - 1044*zeta^3 - 3542*zeta^2 + 527*zeta - 80)*q^1018 + 
1/25*(213*zeta^7 - 261*zeta^6 - 1752*zeta^5 + 1149*zeta^4 + 4524*zeta^3 - 
780*zeta^2 - 3312*zeta - 15)*q^1019 + 1/25*(-58*zeta^7 + 316*zeta^6 + 722*zeta^5
- 1582*zeta^4 - 2579*zeta^3 + 1526*zeta^2 + 2238*zeta + 182)*q^1021 + 
1/25*(77*zeta^7 + 45*zeta^6 - 462*zeta^5 - 231*zeta^4 + 886*zeta^3 + 475*zeta^2 
- 746*zeta - 529)*q^1022 + 1/25*(-110*zeta^7 - 160*zeta^6 + 516*zeta^5 + 
1052*zeta^4 - 244*zeta^3 - 1936*zeta^2 - 706*zeta + 700)*q^1023 + 
1/25*(-184*zeta^7 - 398*zeta^6 + 924*zeta^5 + 2339*zeta^4 - 940*zeta^3 - 
3643*zeta^2 + 35*zeta + 698)*q^1024 + 1/25*(162*zeta^7 - 33*zeta^6 - 1180*zeta^5
+ 198*zeta^4 + 2740*zeta^3 - 491*zeta^2 - 2412*zeta + 226)*q^1025 + 
1/25*(-162*zeta^7 - 93*zeta^6 + 1002*zeta^5 + 462*zeta^4 - 1665*zeta^3 - 
549*zeta^2 + 636*zeta + 204)*q^1026 + 1/25*(-387*zeta^7 - 163*zeta^6 + 
2787*zeta^5 + 1092*zeta^4 - 6062*zeta^3 - 1851*zeta^2 + 3861*zeta + 820)*q^1027 
+ 1/25*(-157*zeta^7 - 242*zeta^6 + 967*zeta^5 + 1240*zeta^4 - 1780*zeta^3 - 
1573*zeta^2 + 1031*zeta + 256)*q^1028 + 1/25*(333*zeta^7 + 330*zeta^6 - 
2169*zeta^5 - 1563*zeta^4 + 4182*zeta^3 + 1691*zeta^2 - 2231*zeta - 50)*q^1029 +
1/25*(zeta^7 - 423*zeta^6 + 388*zeta^5 + 3266*zeta^4 - 2141*zeta^3 - 6053*zeta^2
+ 2508*zeta + 1940)*q^1030 + 1/25*(433*zeta^7 + 315*zeta^6 - 2789*zeta^5 - 
1578*zeta^4 + 4744*zeta^3 + 1899*zeta^2 - 1761*zeta - 1088)*q^1031 + 
1/25*(-146*zeta^7 + 81*zeta^6 + 978*zeta^5 - 486*zeta^4 - 2025*zeta^3 + 
938*zeta^2 + 1661*zeta - 272)*q^1032 + 1/25*(-202*zeta^7 + 408*zeta^6 + 
1776*zeta^5 - 1996*zeta^4 - 4840*zeta^3 + 1921*zeta^2 + 3424*zeta + 88)*q^1033 +
1/25*(46*zeta^7 + 74*zeta^6 - 66*zeta^5 - 190*zeta^4 - 490*zeta^3 - 4*zeta^2 + 
866*zeta - 314)*q^1034 + 1/25*(-84*zeta^7 - 67*zeta^6 + 504*zeta^5 + 460*zeta^4 
- 866*zeta^3 - 762*zeta^2 + 444*zeta - 62)*q^1035 + 1/25*(-91*zeta^7 - 
197*zeta^6 + 440*zeta^5 + 1077*zeta^4 - 236*zeta^3 - 1260*zeta^2 - 360*zeta - 
95)*q^1036 + O(q^1037), 1/45*(-4*zeta^7 + 2*zeta^6 + 30*zeta^5 - 7*zeta^4 - 
69*zeta^3 + 45*zeta)*q + 1/45*(-zeta^7 - 10*zeta^6 + 6*zeta^5 + 57*zeta^4 - 
14*zeta^3 - 79*zeta^2 + 9*zeta + 3)*q^2 + 1/45*(-3*zeta^7 - 8*zeta^6 + 14*zeta^5
+ 54*zeta^4 - 10*zeta^3 - 96*zeta^2 - 5*zeta + 30)*q^3 + 1/45*(-8*zeta^7 - 
8*zeta^6 + 53*zeta^5 + 47*zeta^4 - 105*zeta^3 - 71*zeta^2 + 61*zeta + 14)*q^4 + 
1/45*(2*zeta^7 + 11*zeta^6 - 6*zeta^5 - 66*zeta^4 - 19*zeta^3 + 118*zeta^2 + 
63*zeta - 40)*q^5 + 1/45*(-zeta^7 - 6*zeta^6 + 9*zeta^5 + 34*zeta^4 - 14*zeta^3 
- 48*zeta^2 - 2*zeta + 30)*q^6 + 1/45*(7*zeta^7 + 4*zeta^6 - 44*zeta^5 - 
19*zeta^4 + 81*zeta^3 + 16*zeta^2 - 48*zeta + 4)*q^7 + 1/45*(10*zeta^7 - 
4*zeta^6 - 64*zeta^5 + 29*zeta^4 + 106*zeta^3 - 64*zeta^2 - 30*zeta + 46)*q^8 + 
1/45*(7*zeta^7 - 7*zeta^6 - 52*zeta^5 + 47*zeta^4 + 106*zeta^3 - 87*zeta^2 - 
40*zeta + 39)*q^9 + 1/45*(zeta^7 - 12*zeta^6 + 6*zeta^5 + 95*zeta^4 - 55*zeta^3 
- 180*zeta^2 + 70*zeta + 60)*q^10 + 1/45*(18*zeta^6 + 8*zeta^5 - 112*zeta^4 - 
44*zeta^3 + 174*zeta^2 + 50*zeta - 52)*q^11 + 1/45*(-2*zeta^7 - 3*zeta^6 + 
22*zeta^5 + 18*zeta^4 - 73*zeta^3 - 26*zeta^2 + 77*zeta)*q^12 + 1/45*(10*zeta^7 
+ 10*zeta^6 - 53*zeta^5 - 72*zeta^4 + 65*zeta^3 + 155*zeta^2 - 10*zeta - 
44)*q^13 + 1/45*(-zeta^7 + 2*zeta^6 + 9*zeta^5 - 6*zeta^4 - 16*zeta^3 - 2*zeta^2
- 3*zeta - 4)*q^14 + 1/45*(-13*zeta^7 - 26*zeta^6 + 78*zeta^5 + 155*zeta^4 - 
144*zeta^3 - 233*zeta^2 + 88*zeta + 19)*q^15 + 1/45*(20*zeta^7 + 4*zeta^6 - 
136*zeta^5 - 39*zeta^4 + 268*zeta^3 + 78*zeta^2 - 153*zeta + 16)*q^16 + 
1/45*(20*zeta^7 + 6*zeta^6 - 134*zeta^5 - 42*zeta^4 + 257*zeta^3 + 74*zeta^2 - 
120*zeta - 12)*q^18 + 1/45*(-zeta^7 - 10*zeta^6 + 6*zeta^5 + 57*zeta^4 - 
14*zeta^3 - 79*zeta^2 + 9*zeta + 3)*q^19 + 1/45*(zeta^7 - 8*zeta^6 - 7*zeta^5 + 
52*zeta^4 + 2*zeta^3 - 82*zeta^2 + 35*zeta + 22)*q^20 + 1/45*(2*zeta^7 + 
10*zeta^6 - 11*zeta^5 - 50*zeta^4 + 15*zeta^3 + 49*zeta^2 - 8*zeta)*q^21 + 
1/45*(16*zeta^7 + 6*zeta^6 - 106*zeta^5 - 36*zeta^4 + 208*zeta^3 + 54*zeta^2 - 
136*zeta - 16)*q^22 + 1/45*(-35*zeta^7 - 11*zeta^6 + 215*zeta^5 + 46*zeta^4 - 
364*zeta^3 - 39*zeta^2 + 153*zeta + 4)*q^23 + 1/45*(7*zeta^7 + 6*zeta^6 - 
58*zeta^5 - 49*zeta^4 + 147*zeta^3 + 98*zeta^2 - 106*zeta - 44)*q^24 + 
1/45*(-39*zeta^7 - 3*zeta^6 + 248*zeta^5 - 10*zeta^4 - 424*zeta^3 + 93*zeta^2 + 
154*zeta - 119)*q^25 + 1/45*(10*zeta^7 + 5*zeta^6 - 41*zeta^5 - 32*zeta^4 + 
34*zeta^2 + 41*zeta + 39)*q^26 + 1/15*(7*zeta^7 + 5*zeta^6 - 51*zeta^5 - 
34*zeta^4 + 114*zeta^3 + 57*zeta^2 - 77*zeta - 20)*q^27 + 1/45*(9*zeta^7 - 
7*zeta^6 - 61*zeta^5 + 50*zeta^4 + 122*zeta^3 - 87*zeta^2 - 69*zeta + 24)*q^28 +
1/45*(-10*zeta^7 - 12*zeta^6 + 63*zeta^5 + 72*zeta^4 - 108*zeta^3 - 122*zeta^2 +
40*zeta + 38)*q^29 + 1/45*(-10*zeta^7 - 34*zeta^6 + 33*zeta^5 + 200*zeta^4 + 
35*zeta^3 - 315*zeta^2 - 78*zeta + 60)*q^30 + 1/45*(-13*zeta^7 - 38*zeta^6 + 
50*zeta^5 + 236*zeta^4 - 4*zeta^3 - 392*zeta^2 - 51*zeta + 140)*q^31 + 
1/45*(-2*zeta^7 + 5*zeta^6 + 12*zeta^5 - 34*zeta^4 - 26*zeta^3 + 40*zeta^2 + 
36*zeta + 44)*q^32 + 1/45*(-16*zeta^7 - 24*zeta^6 + 88*zeta^5 + 126*zeta^4 - 
100*zeta^3 - 148*zeta^2 - 30*zeta + 24)*q^33 + 1/45*(3*zeta^7 + 5*zeta^6 - 
16*zeta^5 - 31*zeta^4 + 16*zeta^3 + 40*zeta^2 - 6*zeta + 15)*q^35 + 
1/45*(-3*zeta^7 - 5*zeta^6 + 18*zeta^5 + 23*zeta^4 - 40*zeta^3 - 39*zeta^2 + 
45*zeta + 47)*q^36 + 1/45*(5*zeta^7 + 24*zeta^6 - 21*zeta^5 - 160*zeta^4 + 
18*zeta^3 + 274*zeta^2 - 25*zeta - 82)*q^37 + 1/45*(-8*zeta^7 - 20*zeta^6 + 
43*zeta^5 + 111*zeta^4 - 55*zeta^3 - 151*zeta^2 + 17*zeta + 22)*q^38 + 
1/45*(-24*zeta^7 - 36*zeta^6 + 158*zeta^5 + 216*zeta^4 - 293*zeta^3 - 365*zeta^2
+ 129*zeta + 106)*q^39 + 1/45*(55*zeta^7 + 27*zeta^6 - 347*zeta^5 - 126*zeta^4 +
592*zeta^3 + 135*zeta^2 - 237*zeta - 68)*q^40 + 1/45*(-20*zeta^7 - 23*zeta^6 + 
131*zeta^5 + 137*zeta^4 - 265*zeta^3 - 187*zeta^2 + 185*zeta + 24)*q^41 + 
1/45*(14*zeta^7 + zeta^6 - 101*zeta^5 + 10*zeta^4 + 212*zeta^3 - 46*zeta^2 - 
103*zeta + 31)*q^42 + 1/45*(-40*zeta^7 - 8*zeta^6 + 230*zeta^5 + 29*zeta^4 - 
318*zeta^3 + 30*zeta^2 + 72*zeta - 130)*q^43 + 1/45*(-36*zeta^7 - 10*zeta^6 + 
228*zeta^5 + 30*zeta^4 - 416*zeta^3 + 18*zeta^2 + 228*zeta - 32)*q^44 + 
1/45*(28*zeta^7 + 3*zeta^6 - 184*zeta^5 + 4*zeta^4 + 336*zeta^3 - 39*zeta^2 - 
155*zeta - 10)*q^45 + 1/45*(18*zeta^7 + 34*zeta^6 - 131*zeta^5 - 204*zeta^4 + 
285*zeta^3 + 341*zeta^2 - 173*zeta - 88)*q^46 + 1/45*(-6*zeta^7 + 32*zeta^6 + 
67*zeta^5 - 163*zeta^4 - 215*zeta^3 + 178*zeta^2 + 163*zeta - 6)*q^47 + 
1/45*(19*zeta^7 + 34*zeta^6 - 89*zeta^5 - 226*zeta^4 + 48*zeta^3 + 410*zeta^2 + 
97*zeta - 140)*q^48 + 1/45*(20*zeta^7 + 49*zeta^6 - 120*zeta^5 - 280*zeta^4 + 
234*zeta^3 + 418*zeta^2 - 170*zeta - 86)*q^49 + 1/45*(-42*zeta^7 + 8*zeta^6 + 
302*zeta^5 - zeta^4 - 653*zeta^3 - 80*zeta^2 + 417*zeta - 30)*q^50 + 
1/45*(-19*zeta^7 - 29*zeta^6 + 104*zeta^5 + 157*zeta^4 - 116*zeta^3 - 188*zeta^2
- 24*zeta + 9)*q^52 + 1/45*(12*zeta^7 + 70*zeta^6 - 72*zeta^5 - 388*zeta^4 + 
164*zeta^3 + 552*zeta^2 - 144*zeta - 112)*q^53 + 1/15*(5*zeta^7 + 15*zeta^6 - 
18*zeta^5 - 91*zeta^4 - 3*zeta^3 + 148*zeta^2 + 23*zeta - 55)*q^54 + 
1/45*(40*zeta^7 + 44*zeta^6 - 244*zeta^5 - 274*zeta^4 + 420*zeta^3 + 470*zeta^2 
- 202*zeta - 108)*q^55 + 1/45*(-6*zeta^7 + 31*zeta^5 - 31*zeta^3 - zeta^2 - 
9*zeta + 8)*q^56 + 1/45*(-zeta^7 - 6*zeta^6 + 9*zeta^5 + 34*zeta^4 - 14*zeta^3 -
48*zeta^2 - 2*zeta + 30)*q^57 + 1/45*(-5*zeta^7 + 12*zeta^6 + 41*zeta^5 - 
73*zeta^4 - 90*zeta^3 + 98*zeta^2 + 35*zeta + 4)*q^58 + 1/45*(49*zeta^7 + 
23*zeta^6 - 286*zeta^5 - 106*zeta^4 + 424*zeta^3 + 69*zeta^2 - 136*zeta + 
111)*q^59 + 1/45*(15*zeta^6 + 3*zeta^5 - 84*zeta^4 + 128*zeta^2 - 23*zeta - 
47)*q^60 + 1/45*(3*zeta^7 + 9*zeta^6 - 32*zeta^5 - 72*zeta^4 + 101*zeta^3 + 
139*zeta^2 - 88*zeta - 52)*q^61 + 1/45*(-47*zeta^7 - 40*zeta^6 + 295*zeta^5 + 
210*zeta^4 - 484*zeta^3 - 270*zeta^2 + 166*zeta + 122)*q^62 + 1/45*(-4*zeta^7 + 
3*zeta^6 + 9*zeta^5 - 18*zeta^4 + 42*zeta^3 + 25*zeta^2 - 86*zeta + 8)*q^63 + 
1/45*(-16*zeta^7 - 26*zeta^6 + 80*zeta^5 + 165*zeta^4 - 80*zeta^3 - 297*zeta^2 -
3*zeta + 70)*q^64 + 1/45*(12*zeta^7 + 63*zeta^6 - 31*zeta^5 - 383*zeta^4 - 
29*zeta^3 + 606*zeta^2 - 4*zeta - 213)*q^65 + 1/45*(24*zeta^7 + 26*zeta^6 - 
144*zeta^5 - 152*zeta^4 + 268*zeta^3 + 252*zeta^2 - 192*zeta - 92)*q^66 + 
1/45*(28*zeta^7 + 38*zeta^6 - 158*zeta^5 - 188*zeta^4 + 197*zeta^3 + 214*zeta^2 
+ 66*zeta - 92)*q^67 + 1/45*(-57*zeta^7 - 27*zeta^6 + 372*zeta^5 + 169*zeta^4 - 
678*zeta^3 - 260*zeta^2 + 282*zeta + 35)*q^69 + 1/45*(5*zeta^7 + 9*zeta^6 - 
30*zeta^5 - 55*zeta^4 + 54*zeta^3 + 83*zeta^2 - 30*zeta - 1)*q^70 + 
1/45*(-27*zeta^7 - 53*zeta^6 + 102*zeta^5 + 305*zeta^4 + 25*zeta^3 - 492*zeta^2 
- 217*zeta + 213)*q^71 + 1/15*(-6*zeta^6 - 5*zeta^5 + 32*zeta^4 + 25*zeta^3 - 
40*zeta^2 - 22*zeta + 4)*q^72 + 1/45*(-14*zeta^7 + 6*zeta^6 + 49*zeta^5 - 
36*zeta^4 + 53*zeta^3 + 49*zeta^2 - 181*zeta + 24)*q^73 + 1/45*(11*zeta^7 + 
23*zeta^6 - 71*zeta^5 - 130*zeta^4 + 106*zeta^3 + 183*zeta^2 - 15*zeta - 
88)*q^74 + 1/45*(-11*zeta^7 - 8*zeta^6 + 119*zeta^5 + 101*zeta^4 - 358*zeta^3 - 
262*zeta^2 + 269*zeta + 156)*q^75 + 1/45*(-8*zeta^7 - 4*zeta^6 + 54*zeta^5 + 
15*zeta^4 - 106*zeta^3 - 6*zeta^2 + 52*zeta - 10)*q^76 + 1/45*(6*zeta^7 + 
36*zeta^6 - 18*zeta^5 - 204*zeta^4 + 302*zeta^2 - 26*zeta - 80)*q^77 + 
1/45*(-12*zeta^7 + 43*zeta^6 + 105*zeta^5 - 261*zeta^4 - 235*zeta^3 + 351*zeta^2
+ 75*zeta + 8)*q^78 + 1/45*(-55*zeta^7 - 54*zeta^6 + 335*zeta^5 + 294*zeta^4 - 
526*zeta^3 - 396*zeta^2 + 162*zeta + 146)*q^79 + 1/45*(42*zeta^7 - 20*zeta^6 - 
257*zeta^5 + 120*zeta^4 + 447*zeta^3 - 223*zeta^2 - 287*zeta + 44)*q^80 + 
1/15*(8*zeta^7 + 14*zeta^6 - 48*zeta^5 - 79*zeta^4 + 80*zeta^3 + 111*zeta^2 - 
39*zeta - 18)*q^81 + 1/45*(-6*zeta^7 - 35*zeta^6 - zeta^5 + 183*zeta^4 + 
77*zeta^3 - 246*zeta^2 - 50*zeta + 117)*q^82 + 1/45*(17*zeta^7 - 10*zeta^6 - 
102*zeta^5 + 33*zeta^4 + 160*zeta^3 - 19*zeta^2 - 60*zeta + 57)*q^83 + 
1/45*(17*zeta^7 + 15*zeta^6 - 104*zeta^5 - 85*zeta^4 + 164*zeta^3 + 112*zeta^2 -
42*zeta - 11)*q^84 + 1/45*(4*zeta^7 + 52*zeta^6 + 24*zeta^5 - 233*zeta^4 - 
228*zeta^3 + 210*zeta^2 + 369*zeta - 120)*q^86 + 1/15*(-2*zeta^7 + 2*zeta^6 + 
12*zeta^5 - 12*zeta^4 - 22*zeta^3 + 12*zeta^2 + 19*zeta + 14)*q^87 + 
1/45*(-4*zeta^7 - 26*zeta^6 + 12*zeta^5 + 166*zeta^4 - 2*zeta^3 - 272*zeta^2 + 
28*zeta + 86)*q^88 + 1/45*(-2*zeta^7 - 16*zeta^5 + 32*zeta^4 + 120*zeta^3 - 
159*zeta^2 - 132*zeta + 64)*q^89 + 1/45*(4*zeta^7 - 15*zeta^6 - 33*zeta^5 + 
90*zeta^4 + 96*zeta^3 - 163*zeta^2 - 124*zeta + 52)*q^90 + 1/45*(2*zeta^7 + 
22*zeta^6 + 10*zeta^5 - 142*zeta^4 - 73*zeta^3 + 228*zeta^2 + 73*zeta - 30)*q^91
+ 1/45*(-9*zeta^7 - 19*zeta^6 + 40*zeta^5 + 96*zeta^4 - 39*zeta^3 - 89*zeta^2 + 
32*zeta - 36)*q^92 + 1/45*(-22*zeta^7 + 7*zeta^6 + 115*zeta^5 - 41*zeta^4 - 
106*zeta^3 + 100*zeta^2 - 33*zeta - 121)*q^93 + 1/45*(51*zeta^7 - 3*zeta^6 - 
342*zeta^5 + 60*zeta^4 + 636*zeta^3 - 197*zeta^2 - 256*zeta + 161)*q^94 + 
1/45*(zeta^7 - 12*zeta^6 + 6*zeta^5 + 95*zeta^4 - 55*zeta^3 - 180*zeta^2 + 
70*zeta + 60)*q^95 + 1/45*(-23*zeta^7 - 9*zeta^6 + 123*zeta^5 + 50*zeta^4 - 
178*zeta^3 - 69*zeta^2 + 65*zeta - 36)*q^96 + 1/45*(-48*zeta^7 - 26*zeta^6 + 
302*zeta^5 + 156*zeta^4 - 532*zeta^3 - 254*zeta^2 + 268*zeta + 88)*q^97 + 
1/45*(-4*zeta^7 + 26*zeta^6 + 78*zeta^5 - 163*zeta^4 - 310*zeta^3 + 297*zeta^2 +
273*zeta - 66)*q^98 + 1/15*(-6*zeta^6 + 2*zeta^5 + 46*zeta^4 - 14*zeta^3 - 
84*zeta^2 + 32*zeta + 18)*q^99 + 1/45*(3*zeta^7 - 14*zeta^6 - 18*zeta^5 + 
81*zeta^4 + 30*zeta^3 - 103*zeta^2 - 29*zeta - 25)*q^100 + 1/45*(-30*zeta^7 - 
14*zeta^6 + 196*zeta^5 + 97*zeta^4 - 358*zeta^3 - 154*zeta^2 + 177*zeta - 
18)*q^101 + 1/45*(57*zeta^7 - 11*zeta^6 - 410*zeta^5 - 6*zeta^4 + 887*zeta^3 + 
124*zeta^2 - 591*zeta + 73)*q^103 + 1/45*(-29*zeta^7 - 41*zeta^6 + 174*zeta^5 + 
251*zeta^4 - 314*zeta^3 - 391*zeta^2 + 188*zeta + 33)*q^104 + 1/45*(6*zeta^7 + 
7*zeta^6 - 25*zeta^5 - 39*zeta^4 - zeta^3 + 66*zeta^2 + 58*zeta - 33)*q^105 + 
1/45*(8*zeta^7 + 60*zeta^6 + 8*zeta^5 - 342*zeta^4 - 200*zeta^3 + 506*zeta^2 + 
218*zeta - 84)*q^106 + 1/45*(18*zeta^7 + 16*zeta^6 - 61*zeta^5 - 96*zeta^4 - 
91*zeta^3 + 187*zeta^2 + 307*zeta - 104)*q^107 + 1/15*(5*zeta^7 - 5*zeta^6 - 
37*zeta^5 + 36*zeta^4 + 79*zeta^3 - 63*zeta^2 - 46*zeta + 10)*q^108 + 
1/45*(-4*zeta^7 + 44*zeta^6 + 4*zeta^5 - 320*zeta^4 + 88*zeta^3 + 556*zeta^2 - 
164*zeta - 144)*q^109 + 1/45*(46*zeta^7 + 20*zeta^6 - 274*zeta^5 - 88*zeta^4 + 
424*zeta^3 + 46*zeta^2 - 146*zeta + 104)*q^110 + 1/45*(-8*zeta^7 - 25*zeta^6 + 
71*zeta^5 + 122*zeta^4 - 212*zeta^3 - 164*zeta^2 + 169*zeta + 77)*q^111 + 
1/45*(27*zeta^7 - 9*zeta^6 - 188*zeta^5 + 66*zeta^4 + 377*zeta^3 - 107*zeta^2 - 
196*zeta - 4)*q^112 + 1/45*(43*zeta^7 + 61*zeta^6 - 239*zeta^5 - 354*zeta^4 + 
318*zeta^3 + 513*zeta^2 - 49*zeta - 132)*q^113 + 1/45*(-18*zeta^7 - 9*zeta^6 + 
128*zeta^5 + 54*zeta^4 - 281*zeta^3 - 80*zeta^2 + 213*zeta + 16)*q^114 + 
1/45*(-2*zeta^7 - 44*zeta^6 - 35*zeta^5 + 249*zeta^4 + 215*zeta^3 - 364*zeta^2 -
205*zeta + 58)*q^115 + 1/45*(-5*zeta^7 + 2*zeta^6 + 30*zeta^5 - 4*zeta^4 - 
28*zeta^3 - 16*zeta^2 - 43*zeta + 4)*q^116 + 1/45*(-36*zeta^7 - 7*zeta^6 + 
216*zeta^5 + 64*zeta^4 - 374*zeta^3 - 150*zeta^2 + 222*zeta + 34)*q^117 + 
1/45*(8*zeta^7 - 42*zeta^6 - 98*zeta^5 + 177*zeta^4 + 347*zeta^3 - 136*zeta^2 - 
399*zeta + 108)*q^118 + 1/45*(17*zeta^7 - 21*zeta^6 - 140*zeta^5 + 75*zeta^4 + 
362*zeta^3 - 28*zeta^2 - 318*zeta + 69)*q^120 + 1/45*(33*zeta^7 + 24*zeta^6 - 
198*zeta^5 - 167*zeta^4 + 340*zeta^3 + 281*zeta^2 - 176*zeta + 21)*q^121 + 
1/45*(13*zeta^7 + 35*zeta^6 - 49*zeta^5 - 213*zeta^4 - 3*zeta^3 + 350*zeta^2 + 
67*zeta - 131)*q^122 + 1/45*(-20*zeta^7 - 66*zeta^6 + 103*zeta^5 + 354*zeta^4 - 
115*zeta^3 - 440*zeta^2 + 28*zeta + 48)*q^123 + 1/45*(-2*zeta^7 + zeta^6 + 
30*zeta^5 - 6*zeta^4 - 119*zeta^3 + 20*zeta^2 + 147*zeta - 20)*q^124 + 
1/45*(-40*zeta^7 - 60*zeta^6 + 228*zeta^5 + 346*zeta^4 - 311*zeta^3 - 498*zeta^2
+ 49*zeta + 150)*q^125 + 1/45*(-2*zeta^7 - 15*zeta^6 - 4*zeta^5 + 77*zeta^4 + 
42*zeta^3 - 73*zeta^2 - 16*zeta - 32)*q^126 + 1/45*(-55*zeta^7 - 50*zeta^6 + 
327*zeta^5 + 249*zeta^4 - 530*zeta^3 - 273*zeta^2 + 233*zeta - 38)*q^127 + 
1/45*(-83*zeta^7 - 46*zeta^6 + 509*zeta^5 + 206*zeta^4 - 848*zeta^3 - 151*zeta^2
+ 345*zeta - 140)*q^128 + 1/45*(5*zeta^7 - 52*zeta^6 - 26*zeta^5 + 355*zeta^4 - 
11*zeta^3 - 572*zeta^2 + 118*zeta + 108)*q^129 + 1/45*(104*zeta^7 + 80*zeta^6 - 
636*zeta^5 - 422*zeta^4 + 1025*zeta^3 + 546*zeta^2 - 355*zeta - 194)*q^130 + 
1/45*(34*zeta^7 + 74*zeta^6 - 169*zeta^5 - 444*zeta^4 + 102*zeta^3 + 786*zeta^2 
+ 286*zeta - 274)*q^131 + 1/45*(8*zeta^7 - 12*zeta^6 - 52*zeta^5 + 42*zeta^4 + 
100*zeta^3 + 26*zeta^2 - 46*zeta - 36)*q^132 + 1/45*(-zeta^7 + 2*zeta^6 + 
9*zeta^5 - 6*zeta^4 - 16*zeta^3 - 2*zeta^2 - 3*zeta - 4)*q^133 + 
1/45*(-65*zeta^7 - 77*zeta^6 + 390*zeta^5 + 457*zeta^4 - 720*zeta^3 - 741*zeta^2
+ 493*zeta + 201)*q^134 + 1/15*(10*zeta^7 - 8*zeta^6 - 78*zeta^5 + 22*zeta^4 + 
189*zeta^3 + 6*zeta^2 - 162*zeta + 42)*q^135 + 1/45*(20*zeta^7 + 42*zeta^6 - 
98*zeta^5 - 202*zeta^4 + 59*zeta^3 + 214*zeta^2 + 156*zeta - 92)*q^137 + 
1/45*(31*zeta^7 - 33*zeta^6 - 186*zeta^5 + 183*zeta^4 + 326*zeta^3 - 187*zeta^2 
- 244*zeta - 131)*q^138 + 1/45*(21*zeta^7 + 37*zeta^6 - 74*zeta^5 - 197*zeta^4 -
45*zeta^3 + 300*zeta^2 + 207*zeta - 153)*q^139 + 1/45*(-22*zeta^7 - 8*zeta^6 + 
153*zeta^5 + 59*zeta^4 - 325*zeta^3 - 124*zeta^2 + 197*zeta + 38)*q^140 + 
1/45*(58*zeta^7 + 30*zeta^6 - 381*zeta^5 - 180*zeta^4 + 732*zeta^3 + 284*zeta^2 
- 448*zeta - 86)*q^141 + 1/45*(-105*zeta^7 - 59*zeta^6 + 657*zeta^5 + 288*zeta^4
- 1105*zeta^3 - 333*zeta^2 + 428*zeta + 146)*q^142 + 1/45*(98*zeta^7 - 14*zeta^6
- 656*zeta^5 + 148*zeta^4 + 1262*zeta^3 - 314*zeta^2 - 656*zeta + 40)*q^143 + 
1/45*(-61*zeta^7 - 38*zeta^6 + 397*zeta^5 + 163*zeta^4 - 742*zeta^3 - 123*zeta^2
+ 355*zeta - 66)*q^144 + 1/45*(10*zeta^7 - 19*zeta^6 - 67*zeta^5 + 113*zeta^4 + 
106*zeta^3 - 192*zeta^2 - 7*zeta + 93)*q^145 + 1/45*(-7*zeta^7 - 37*zeta^6 + 
10*zeta^5 + 196*zeta^4 + 49*zeta^3 - 203*zeta^2 - 2*zeta - 60)*q^146 + 
1/45*(79*zeta^7 + 51*zeta^6 - 475*zeta^5 - 266*zeta^4 + 762*zeta^3 + 339*zeta^2 
- 275*zeta - 88)*q^147 + 1/45*(-18*zeta^7 - 8*zeta^6 + 77*zeta^5 + 48*zeta^4 - 
zeta^3 - 95*zeta^2 - 167*zeta + 64)*q^148 + 1/45*(-6*zeta^7 - 70*zeta^6 - 
18*zeta^5 + 381*zeta^4 + 210*zeta^3 - 502*zeta^2 - 211*zeta + 62)*q^149 + 
1/45*(-39*zeta^7 - 86*zeta^6 + 176*zeta^5 + 564*zeta^4 - 88*zeta^3 - 996*zeta^2 
- 161*zeta + 336)*q^150 + 1/45*(-26*zeta^7 - 17*zeta^6 + 156*zeta^5 + 124*zeta^4
- 264*zeta^3 - 210*zeta^2 + 127*zeta - 36)*q^151 + 1/45*(10*zeta^7 - 6*zeta^6 - 
76*zeta^5 + 19*zeta^4 + 178*zeta^3 + 2*zeta^2 - 129*zeta + 14)*q^152 + 
1/45*(-22*zeta^7 - 6*zeta^6 + 148*zeta^5 + 40*zeta^4 - 286*zeta^3 - 72*zeta^2 + 
126*zeta + 26)*q^154 + 1/45*(-63*zeta^7 - 148*zeta^6 + 378*zeta^5 + 869*zeta^4 -
712*zeta^3 - 1291*zeta^2 + 454*zeta + 133)*q^155 + 1/45*(-12*zeta^7 + 5*zeta^6 +
79*zeta^5 + 3*zeta^4 - 95*zeta^3 - 78*zeta^2 - 76*zeta + 9)*q^156 + 
1/45*(-84*zeta^7 - 104*zeta^6 + 531*zeta^5 + 609*zeta^4 - 975*zeta^3 - 
923*zeta^2 + 523*zeta + 178)*q^157 + 1/45*(-38*zeta^7 + 21*zeta^6 + 256*zeta^5 -
126*zeta^4 - 535*zeta^3 + 244*zeta^2 + 443*zeta - 72)*q^158 + 1/15*(18*zeta^7 + 
22*zeta^6 - 106*zeta^5 - 124*zeta^4 + 156*zeta^3 + 174*zeta^2 - 38*zeta - 
56)*q^159 + 1/45*(39*zeta^7 + 21*zeta^6 - 274*zeta^5 - 132*zeta^4 + 583*zeta^3 +
203*zeta^2 - 374*zeta - 68)*q^160 + 1/45*(-9*zeta^7 + 9*zeta^6 + 82*zeta^5 - 
68*zeta^4 - 212*zeta^3 + 127*zeta^2 + 112*zeta - 35)*q^161 + 1/15*(17*zeta^7 + 
4*zeta^6 - 113*zeta^5 - 8*zeta^4 + 212*zeta^3 - 23*zeta^2 - 93*zeta + 38)*q^162 
+ 1/15*(10*zeta^7 + 12*zeta^6 - 69*zeta^5 - 76*zeta^4 + 149*zeta^3 + 114*zeta^2 
- 107*zeta - 24)*q^163 + 1/45*(-40*zeta^7 + 12*zeta^6 + 260*zeta^5 - 102*zeta^4 
- 487*zeta^3 + 198*zeta^2 + 249*zeta - 58)*q^164 + 1/45*(-20*zeta^7 - 36*zeta^6 
+ 102*zeta^5 + 216*zeta^4 - 78*zeta^3 - 382*zeta^2 - 130*zeta + 136)*q^165 + 
1/45*(10*zeta^7 + 10*zeta^6 - 53*zeta^5 - 72*zeta^4 + 65*zeta^3 + 155*zeta^2 - 
10*zeta - 44)*q^166 + 1/45*(-5*zeta^7 - 6*zeta^6 + 15*zeta^5 + 22*zeta^4 + 
24*zeta^3 - 22*zeta^2 - 71*zeta + 28)*q^167 + 1/45*(3*zeta^7 - 11*zeta^6 - 
18*zeta^5 + 59*zeta^4 + 26*zeta^3 - 75*zeta^2 - 12*zeta + 5)*q^168 + 
1/45*(-17*zeta^7 - 3*zeta^6 + 116*zeta^5 + 14*zeta^4 - 230*zeta^3 - 30*zeta^2 + 
81*zeta + 55)*q^169 + 1/45*(20*zeta^7 + 6*zeta^6 - 134*zeta^5 - 42*zeta^4 + 
257*zeta^3 + 74*zeta^2 - 120*zeta - 12)*q^171 + 1/45*(-18*zeta^7 - 29*zeta^6 + 
108*zeta^5 + 166*zeta^4 - 206*zeta^3 - 260*zeta^2 + 152*zeta + 80)*q^172 + 
1/45*(-21*zeta^7 - 114*zeta^6 + 29*zeta^5 + 646*zeta^4 + 148*zeta^3 - 954*zeta^2
- 79*zeta + 384)*q^173 + 1/15*(10*zeta^7 + 18*zeta^6 - 64*zeta^5 - 97*zeta^4 + 
120*zeta^3 + 120*zeta^2 - 69*zeta - 14)*q^174 + 1/45*(-6*zeta^7 - 17*zeta^6 + 
50*zeta^5 + 102*zeta^4 - 127*zeta^3 - 170*zeta^2 + 91*zeta + 40)*q^175 + 
1/45*(-32*zeta^7 + 18*zeta^6 + 240*zeta^5 - 148*zeta^4 - 502*zeta^3 + 282*zeta^2
+ 272*zeta)*q^176 + 1/15*(-5*zeta^7 + 14*zeta^6 + 27*zeta^5 - 103*zeta^4 - 
24*zeta^3 + 180*zeta^2 - 23*zeta - 44)*q^177 + 1/45*(zeta^7 - zeta^6 - 68*zeta^5
+ 37*zeta^4 + 318*zeta^3 - 73*zeta^2 - 248*zeta - 55)*q^178 + 1/45*(93*zeta^7 + 
27*zeta^6 - 576*zeta^5 - 93*zeta^4 + 954*zeta^3 - 41*zeta^2 - 352*zeta + 
233)*q^179 + 1/45*(40*zeta^7 + 9*zeta^6 - 268*zeta^5 - 37*zeta^4 + 528*zeta^3 + 
23*zeta^2 - 304*zeta - 8)*q^180 + 1/45*(-31*zeta^7 + 4*zeta^6 + 175*zeta^5 - 
34*zeta^4 - 286*zeta^3 + 66*zeta^2 + 136*zeta - 90)*q^181 + 1/45*(-14*zeta^7 - 
14*zeta^6 + 115*zeta^5 + 84*zeta^4 - 300*zeta^3 - 128*zeta^2 + 264*zeta + 
18)*q^182 + 1/45*(2*zeta^7 + 20*zeta^6 + 15*zeta^5 - 121*zeta^4 - 115*zeta^3 + 
204*zeta^2 + 117*zeta - 42)*q^183 + 1/45*(11*zeta^7 + 33*zeta^6 - 29*zeta^5 - 
179*zeta^4 - 49*zeta^3 + 262*zeta^2 + 93*zeta - 121)*q^184 + 1/45*(43*zeta^7 + 
61*zeta^6 - 258*zeta^5 - 381*zeta^4 + 458*zeta^3 + 589*zeta^2 - 252*zeta - 
3)*q^185 + 1/45*(29*zeta^7 + 63*zeta^6 - 140*zeta^5 - 304*zeta^4 + 74*zeta^3 + 
322*zeta^2 + 237*zeta - 131)*q^186 + 1/45*(36*zeta^7 + 42*zeta^6 - 210*zeta^5 - 
239*zeta^4 + 291*zeta^3 + 304*zeta^2 - 51*zeta + 8)*q^188 + 1/15*(zeta^7 - 
9*zeta^6 - 6*zeta^5 + 47*zeta^4 + 4*zeta^3 - 63*zeta^2 + 7*zeta + 19)*q^189 + 
1/45*(-15*zeta^7 - 42*zeta^6 + 53*zeta^5 + 250*zeta^4 + 16*zeta^3 - 402*zeta^2 -
85*zeta + 156)*q^190 + 1/45*(-14*zeta^7 + 8*zeta^6 + 142*zeta^5 - 66*zeta^4 - 
430*zeta^3 + 177*zeta^2 + 342*zeta - 52)*q^191 + 1/45*(18*zeta^7 + 42*zeta^6 - 
115*zeta^5 - 252*zeta^4 + 193*zeta^3 + 433*zeta^2 - 33*zeta - 128)*q^192 + 
1/45*(63*zeta^7 - 49*zeta^6 - 427*zeta^5 + 350*zeta^4 + 854*zeta^3 - 609*zeta^2 
- 483*zeta + 168)*q^193 + 1/45*(-24*zeta^7 + 10*zeta^6 + 212*zeta^5 - 18*zeta^4 
- 540*zeta^3 - 82*zeta^2 + 340*zeta + 144)*q^194 + 1/45*(53*zeta^7 - 32*zeta^6 -
335*zeta^5 + 211*zeta^4 + 530*zeta^3 - 425*zeta^2 - 117*zeta + 284)*q^195 + 
1/45*(9*zeta^7 + 24*zeta^6 - 33*zeta^5 - 138*zeta^4 + 197*zeta^2 + 7*zeta - 
26)*q^196 + 1/45*(-62*zeta^7 - 22*zeta^6 + 485*zeta^5 + 194*zeta^4 - 1145*zeta^3
- 424*zeta^2 + 755*zeta + 248)*q^197 + 1/15*(8*zeta^7 - 4*zeta^6 - 48*zeta^5 + 
28*zeta^4 + 86*zeta^3 - 48*zeta^2 - 46*zeta + 28)*q^198 + 1/45*(38*zeta^7 - 
31*zeta^6 - 170*zeta^5 + 186*zeta^4 + 67*zeta^3 - 306*zeta^2 + 177*zeta + 
16)*q^199 + 1/45*(28*zeta^7 + 100*zeta^6 - 99*zeta^5 - 575*zeta^4 - 65*zeta^3 + 
861*zeta^2 + 183*zeta - 150)*q^200 + 1/45*(-2*zeta^7 - 42*zeta^6 - 55*zeta^5 + 
164*zeta^4 + 214*zeta^3 - 118*zeta^2 - 114*zeta + 130)*q^201 + 1/45*(-2*zeta^7 -
45*zeta^6 + 12*zeta^5 + 262*zeta^4 - 30*zeta^3 - 356*zeta^2 - 32)*q^202 + 
1/45*(13*zeta^7 + 3*zeta^6 - 88*zeta^5 - 18*zeta^4 + 172*zeta^3 + 34*zeta^2 - 
69*zeta - 27)*q^203 + 1/45*(-29*zeta^7 + 15*zeta^6 + 218*zeta^5 - 25*zeta^4 - 
503*zeta^3 - 54*zeta^2 + 414*zeta - 113)*q^205 + 1/45*(42*zeta^7 + 171*zeta^6 - 
252*zeta^5 - 992*zeta^4 + 496*zeta^3 + 1418*zeta^2 - 305*zeta - 72)*q^206 + 
1/45*(-4*zeta^7 + 7*zeta^6 + 54*zeta^5 + 19*zeta^4 - 137*zeta^3 - 128*zeta^2 + 
64*zeta - 13)*q^207 + 1/45*(58*zeta^7 + 4*zeta^6 - 469*zeta^5 - 13*zeta^4 + 
1185*zeta^3 - 44*zeta^2 - 839*zeta + 14)*q^208 + 1/45*(16*zeta^7 + 6*zeta^6 - 
106*zeta^5 - 36*zeta^4 + 208*zeta^3 + 54*zeta^2 - 136*zeta - 16)*q^209 + 
1/45*(14*zeta^7 + 6*zeta^6 - 90*zeta^5 - 26*zeta^4 + 157*zeta^3 + 24*zeta^2 - 
65*zeta - 18)*q^210 + 1/45*(-93*zeta^7 - 79*zeta^6 + 652*zeta^5 + 504*zeta^4 - 
1407*zeta^3 - 773*zeta^2 + 956*zeta + 204)*q^211 + 1/45*(46*zeta^7 + 80*zeta^6 -
262*zeta^5 - 424*zeta^4 + 424*zeta^3 + 558*zeta^2 - 238*zeta - 84)*q^212 + 
1/45*(-79*zeta^7 - 41*zeta^6 + 472*zeta^5 + 187*zeta^4 - 742*zeta^3 - 133*zeta^2
+ 272*zeta - 155)*q^213 + 1/45*(9*zeta^7 + 13*zeta^6 + 2*zeta^5 - 6*zeta^4 - 
159*zeta^3 - 157*zeta^2 + 142*zeta + 180)*q^214 + 1/45*(-227*zeta^7 - 161*zeta^6
+ 1399*zeta^5 + 834*zeta^4 - 2286*zeta^3 - 1053*zeta^2 + 821*zeta + 396)*q^215 +
1/15*(-12*zeta^7 + 6*zeta^6 + 74*zeta^5 - 36*zeta^4 - 131*zeta^3 + 67*zeta^2 + 
87*zeta - 14)*q^216 + 1/45*(2*zeta^7 + 22*zeta^6 - zeta^5 - 114*zeta^4 - 
35*zeta^3 + 129*zeta^2 + 36*zeta - 8)*q^217 + 1/45*(36*zeta^7 + 116*zeta^6 - 
104*zeta^5 - 660*zeta^4 - 116*zeta^3 + 1008*zeta^2 + 236*zeta - 420)*q^218 + 
1/45*(39*zeta^7 - 29*zeta^6 - 234*zeta^5 + 143*zeta^4 + 398*zeta^3 - 123*zeta^2 
- 252*zeta - 67)*q^219 + 1/45*(-2*zeta^7 - 42*zeta^6 - 28*zeta^5 + 220*zeta^4 + 
202*zeta^3 - 232*zeta^2 - 210*zeta - 34)*q^220 + 1/45*(-57*zeta^7 - 63*zeta^6 + 
336*zeta^5 + 329*zeta^4 - 480*zeta^3 - 400*zeta^2 + 6*zeta + 115)*q^222 + 
1/45*(-17*zeta^7 + 4*zeta^6 + 102*zeta^5 + 11*zeta^4 - 152*zeta^3 - 37*zeta^2 + 
26*zeta - 117)*q^223 + 1/45*(-zeta^7 + 3*zeta^6 - 9*zeta^5 - 49*zeta^4 + 
57*zeta^3 + 118*zeta^2 - 79*zeta - 7)*q^224 + 1/45*(34*zeta^7 + 84*zeta^6 - 
188*zeta^5 - 462*zeta^4 + 260*zeta^3 + 613*zeta^2 - 98*zeta - 84)*q^225 + 
1/45*(10*zeta^7 - 32*zeta^6 - 45*zeta^5 + 192*zeta^4 + 31*zeta^3 - 331*zeta^2 - 
15*zeta + 76)*q^226 + 1/45*(-23*zeta^7 + 18*zeta^6 + 135*zeta^5 - 118*zeta^4 - 
244*zeta^3 + 192*zeta^2 + 140*zeta - 114)*q^227 + 1/45*(-zeta^7 + 8*zeta^6 + 
22*zeta^5 - 35*zeta^4 - 77*zeta^3 + 16*zeta^2 + 46*zeta + 36)*q^228 + 
1/45*(132*zeta^7 + 69*zeta^6 - 795*zeta^5 - 312*zeta^4 + 1272*zeta^3 + 
220*zeta^2 - 481*zeta + 251)*q^229 + 1/45*(-65*zeta^7 - zeta^6 + 400*zeta^5 - 
32*zeta^4 - 636*zeta^3 + 175*zeta^2 + 194*zeta - 225)*q^230 + 1/45*(-38*zeta^7 +
6*zeta^6 + 272*zeta^5 - 40*zeta^4 - 570*zeta^3 + 50*zeta^2 + 320*zeta + 
40)*q^231 + 1/15*(-9*zeta^7 - 2*zeta^6 + 57*zeta^5 + 6*zeta^4 - 100*zeta^3 + 
44*zeta + 2)*q^232 + 1/15*(22*zeta^7 - 6*zeta^6 - 161*zeta^5 + 36*zeta^4 + 
377*zeta^3 - 83*zeta^2 - 337*zeta + 36)*q^233 + 1/45*(28*zeta^7 + 42*zeta^6 - 
218*zeta^5 - 195*zeta^4 + 530*zeta^3 + 121*zeta^2 - 383*zeta + 30)*q^234 + 
1/45*(47*zeta^7 + 84*zeta^6 - 182*zeta^5 - 482*zeta^4 - 34*zeta^3 + 784*zeta^2 +
393*zeta - 346)*q^235 + 1/45*(9*zeta^7 + 40*zeta^6 - 54*zeta^5 - 217*zeta^4 + 
122*zeta^3 + 315*zeta^2 - 117*zeta - 103)*q^236 + 1/45*(7*zeta^7 + 57*zeta^6 + 
8*zeta^5 - 264*zeta^4 - 212*zeta^3 + 250*zeta^2 + 363*zeta - 105)*q^237 + 
1/45*(-33*zeta^7 - 53*zeta^6 + 178*zeta^5 + 285*zeta^4 - 187*zeta^3 - 338*zeta^2
- 60*zeta + 19)*q^239 + 1/45*(49*zeta^7 + 147*zeta^6 - 294*zeta^5 - 843*zeta^4 +
578*zeta^3 + 1235*zeta^2 - 406*zeta - 185)*q^240 + 1/45*(23*zeta^7 + 130*zeta^6 
- 36*zeta^5 - 752*zeta^4 - 140*zeta^3 + 1132*zeta^2 + 49*zeta - 436)*q^241 + 
1/45*(18*zeta^7 + 46*zeta^6 - 65*zeta^5 - 286*zeta^4 - 35*zeta^3 + 501*zeta^2 + 
120*zeta - 112)*q^242 + 1/15*(-8*zeta^7 + 12*zeta^6 + 30*zeta^5 - 72*zeta^4 + 
15*zeta^3 + 119*zeta^2 - 67*zeta - 14)*q^243 + 1/45*(5*zeta^7 + 4*zeta^6 - 
33*zeta^5 - 20*zeta^4 + 57*zeta^3 + 24*zeta^2 - 21*zeta - 16)*q^244 + 
1/45*(-23*zeta^7 + 53*zeta^6 + 98*zeta^5 - 430*zeta^4 + zeta^3 + 827*zeta^2 - 
178*zeta - 268)*q^245 + 1/45*(-89*zeta^7 - 10*zeta^6 + 605*zeta^5 - 25*zeta^4 - 
1166*zeta^3 + 225*zeta^2 + 515*zeta - 222)*q^246 + 1/45*(10*zeta^7 + 5*zeta^6 - 
41*zeta^5 - 32*zeta^4 + 34*zeta^2 + 41*zeta + 39)*q^247 + 1/45*(19*zeta^7 + 
40*zeta^6 - 172*zeta^5 - 307*zeta^4 + 485*zeta^3 + 572*zeta^2 - 400*zeta - 
204)*q^248 + 1/45*(41*zeta^7 - 15*zeta^6 - 273*zeta^5 + 124*zeta^4 + 523*zeta^3 
- 237*zeta^2 - 272*zeta + 54)*q^249 + 1/45*(-30*zeta^7 + 18*zeta^6 + 191*zeta^5 
- 108*zeta^4 - 362*zeta^3 + 202*zeta^2 + 270*zeta - 50)*q^250 + 
1/45*(-120*zeta^7 - 130*zeta^6 + 769*zeta^5 + 776*zeta^4 - 1445*zeta^3 - 
1220*zeta^2 + 790*zeta + 252)*q^251 + 1/45*(-2*zeta^7 + 5*zeta^6 - 55*zeta^4 + 
41*zeta^3 + 116*zeta^2 - 82*zeta - 11)*q^252 + 1/45*(-8*zeta^7 + 14*zeta^6 + 
48*zeta^5 - 92*zeta^4 - 96*zeta^3 + 104*zeta^2 + 110*zeta + 116)*q^253 + 
1/45*(-29*zeta^7 + 11*zeta^6 + 214*zeta^5 - 19*zeta^4 - 481*zeta^3 - 46*zeta^2 +
348*zeta - 57)*q^254 + 1/45*(-67*zeta^7 - 7*zeta^6 + 462*zeta^5 + 76*zeta^4 - 
933*zeta^3 - 184*zeta^2 + 483*zeta + 37)*q^256 + 1/45*(26*zeta^7 + 11*zeta^6 - 
156*zeta^5 - 80*zeta^4 + 272*zeta^3 + 154*zeta^2 - 161*zeta - 24)*q^257 + 
1/45*(-27*zeta^7 - 106*zeta^6 + 49*zeta^5 + 570*zeta^4 + 184*zeta^3 - 810*zeta^2
- 217*zeta + 372)*q^258 + 1/45*(18*zeta^7 - 12*zeta^6 - 131*zeta^5 + 41*zeta^4 +
295*zeta^3 + 26*zeta^2 - 181*zeta - 38)*q^259 + 1/45*(-54*zeta^7 - 44*zeta^6 + 
297*zeta^5 + 264*zeta^4 - 356*zeta^3 - 462*zeta^2 - 56*zeta + 186)*q^260 + 
1/15*(-13*zeta^7 + 81*zeta^5 - 8*zeta^4 - 143*zeta^3 + 24*zeta^2 + 67*zeta - 
12)*q^261 + 1/45*(17*zeta^7 - 68*zeta^6 - 55*zeta^5 + 529*zeta^4 - 104*zeta^3 - 
982*zeta^2 + 267*zeta + 300)*q^262 + 1/9*(-7*zeta^7 - 17*zeta^6 + 26*zeta^5 + 
98*zeta^4 - 139*zeta^2 - 8*zeta + 15)*q^263 + 1/15*(-2*zeta^7 + 8*zeta^6 + 
10*zeta^5 - 44*zeta^4 + 70*zeta^2 - 22*zeta - 36)*q^264 + 1/45*(-86*zeta^7 + 
54*zeta^6 + 500*zeta^5 - 496*zeta^4 - 726*zeta^3 + 1034*zeta^2 + 188*zeta - 
344)*q^265 + 1/45*(17*zeta^7 + 7*zeta^6 - 101*zeta^5 - 34*zeta^4 + 164*zeta^3 + 
39*zeta^2 - 65*zeta)*q^266 + 1/45*(64*zeta^7 + 93*zeta^6 - 445*zeta^5 - 
558*zeta^4 + 913*zeta^3 + 930*zeta^2 - 529*zeta - 250)*q^267 + 1/45*(44*zeta^7 +
50*zeta^6 - 313*zeta^5 - 264*zeta^4 + 685*zeta^3 + 298*zeta^2 - 446*zeta - 
28)*q^268 + 1/45*(-29*zeta^7 - 51*zeta^6 + 103*zeta^5 + 273*zeta^4 + 59*zeta^3 -
418*zeta^2 - 283*zeta + 211)*q^269 + 1/15*(25*zeta^7 + 61*zeta^6 - 150*zeta^5 - 
357*zeta^4 + 284*zeta^3 + 529*zeta^2 - 183*zeta - 57)*q^270 + 1/45*(-68*zeta^7 +
34*zeta^6 + 510*zeta^5 - 119*zeta^4 - 1173*zeta^3 + 765*zeta)*q^271 + 
1/45*(45*zeta^7 + 21*zeta^6 - 294*zeta^5 - 119*zeta^4 + 537*zeta^3 + 178*zeta^2 
- 186*zeta - 79)*q^273 + 1/45*(-67*zeta^7 - 97*zeta^6 + 402*zeta^5 + 571*zeta^4 
- 748*zeta^3 - 899*zeta^2 + 511*zeta + 207)*q^274 + 1/45*(28*zeta^7 + 72*zeta^6 
- 118*zeta^5 - 460*zeta^4 + 40*zeta^3 + 788*zeta^2 + 108*zeta - 272)*q^275 + 
1/45*(-38*zeta^7 - 76*zeta^6 + 251*zeta^5 + 395*zeta^4 - 495*zeta^3 - 436*zeta^2
+ 305*zeta + 30)*q^276 + 1/45*(-48*zeta^7 - 113*zeta^6 + 287*zeta^5 + 678*zeta^4
- 406*zeta^3 - 1175*zeta^2 - 62*zeta + 364)*q^277 + 1/45*(103*zeta^7 + 47*zeta^6
- 639*zeta^5 - 220*zeta^4 + 1077*zeta^3 + 237*zeta^2 - 432*zeta - 86)*q^278 + 
1/45*(26*zeta^7 + 6*zeta^6 - 215*zeta^5 - 74*zeta^4 + 531*zeta^3 + 196*zeta^2 - 
353*zeta - 136)*q^279 + 1/45*(-23*zeta^7 - 25*zeta^6 + 134*zeta^5 + 128*zeta^4 -
212*zeta^3 - 151*zeta^2 + 96*zeta - 5)*q^280 + 1/45*(97*zeta^7 + 122*zeta^6 - 
595*zeta^5 - 616*zeta^4 + 1060*zeta^3 + 745*zeta^2 - 563*zeta - 64)*q^281 + 
1/45*(29*zeta^7 - 18*zeta^6 - 281*zeta^5 + 31*zeta^4 + 762*zeta^3 + 148*zeta^2 -
491*zeta - 244)*q^282 + 1/45*(159*zeta^7 - 10*zeta^6 - 1035*zeta^5 + 180*zeta^4 
+ 1903*zeta^3 - 450*zeta^2 - 917*zeta + 76)*q^283 + 1/45*(-56*zeta^7 - 22*zeta^6
+ 316*zeta^5 + 132*zeta^4 - 425*zeta^3 - 227*zeta^2 + 61*zeta + 114)*q^284 + 
1/45*(-10*zeta^7 - 34*zeta^6 + 33*zeta^5 + 200*zeta^4 + 35*zeta^3 - 315*zeta^2 -
78*zeta + 60)*q^285 + 1/45*(-10*zeta^7 - 34*zeta^6 + 2*zeta^5 + 142*zeta^4 + 
138*zeta^3 - 140*zeta^2 - 166*zeta + 122)*q^286 + 1/45*(10*zeta^7 + 28*zeta^6 - 
60*zeta^5 - 148*zeta^4 + 130*zeta^3 + 224*zeta^2 - 127*zeta - 114)*q^287 + 
1/45*(-71*zeta^7 - 51*zeta^6 + 446*zeta^5 + 297*zeta^4 - 749*zeta^3 - 410*zeta^2
+ 246*zeta + 45)*q^288 + 1/45*(11*zeta^7 - 15*zeta^6 - 92*zeta^5 + 60*zeta^4 + 
242*zeta^3 - 34*zeta^2 - 201*zeta + 27)*q^290 + 1/45*(-44*zeta^7 - 50*zeta^6 + 
264*zeta^5 + 284*zeta^4 - 500*zeta^3 - 472*zeta^2 + 380*zeta + 216)*q^291 + 
1/45*(-7*zeta^7 + 11*zeta^6 + 11*zeta^5 - 125*zeta^4 + 93*zeta^3 + 262*zeta^2 - 
217*zeta - 19)*q^292 + 1/45*(52*zeta^7 + 32*zeta^6 - 370*zeta^5 - 190*zeta^4 + 
810*zeta^3 + 284*zeta^2 - 514*zeta - 60)*q^293 + 1/45*(-14*zeta^7 - 66*zeta^6 + 
117*zeta^5 + 396*zeta^4 - 285*zeta^3 - 673*zeta^2 + 149*zeta + 172)*q^294 + 
1/45*(217*zeta^7 + 180*zeta^6 - 1321*zeta^5 - 962*zeta^4 + 2106*zeta^3 + 
1266*zeta^2 - 704*zeta - 442)*q^295 + 1/45*(-39*zeta^7 - 23*zeta^6 + 288*zeta^5 
+ 162*zeta^4 - 649*zeta^3 - 285*zeta^2 + 432*zeta + 116)*q^296 + 1/15*(30*zeta^6
+ 6*zeta^5 - 168*zeta^4 + 256*zeta^2 - 46*zeta - 94)*q^297 + 1/45*(-102*zeta^7 -
3*zeta^6 + 661*zeta^5 - 59*zeta^4 - 1166*zeta^3 + 296*zeta^2 + 441*zeta - 
315)*q^298 + 1/45*(51*zeta^7 - 16*zeta^6 - 421*zeta^5 + 39*zeta^4 + 1016*zeta^3 
+ 98*zeta^2 - 623*zeta - 220)*q^299 + 1/45*(23*zeta^7 - 127*zeta^5 + 6*zeta^4 + 
200*zeta^3 - 18*zeta^2 - 90*zeta + 62)*q^300 + 1/45*(10*zeta^7 + 2*zeta^6 - 
83*zeta^5 - 12*zeta^4 + 223*zeta^3 + 7*zeta^2 - 215*zeta + 12)*q^301 + 
1/45*(-22*zeta^7 - 48*zeta^6 + 102*zeta^5 + 290*zeta^4 - 70*zeta^3 - 479*zeta^2 
- 38*zeta + 100)*q^302 + 1/45*(-27*zeta^7 - 40*zeta^6 + 133*zeta^5 + 276*zeta^4 
- 86*zeta^3 - 522*zeta^2 - 145*zeta + 174)*q^303 + 1/45*(6*zeta^7 + 41*zeta^6 - 
36*zeta^5 - 238*zeta^4 + 74*zeta^3 + 332*zeta^2 - 38*zeta + 4)*q^304 + 
1/45*(22*zeta^7 - 32*zeta^6 - 186*zeta^5 + 123*zeta^4 + 495*zeta^3 - 64*zeta^2 -
435*zeta + 82)*q^305 + 1/45*(22*zeta^7 + 18*zeta^6 - 136*zeta^5 - 111*zeta^4 + 
220*zeta^3 + 154*zeta^2 - 87*zeta + 18)*q^307 + 1/45*(-4*zeta^7 + 30*zeta^6 + 
24*zeta^5 - 144*zeta^4 - 8*zeta^3 + 196*zeta^2 - 62*zeta - 136)*q^308 + 
1/45*(61*zeta^7 + 133*zeta^6 - 263*zeta^5 - 847*zeta^4 + 87*zeta^3 + 1466*zeta^2
+ 307*zeta - 521)*q^309 + 1/45*(-50*zeta^7 - 182*zeta^6 + 155*zeta^5 + 
1064*zeta^4 + 225*zeta^3 - 1655*zeta^2 - 434*zeta + 308)*q^310 + 1/45*(2*zeta^7 
+ 11*zeta^6 - 6*zeta^5 - 66*zeta^4 - 19*zeta^3 + 118*zeta^2 + 63*zeta - 
40)*q^311 + 1/45*(-94*zeta^7 - 36*zeta^6 + 586*zeta^5 + 158*zeta^4 - 999*zeta^3 
- 150*zeta^2 + 413*zeta + 58)*q^312 + 1/45*(64*zeta^7 - 7*zeta^6 - 438*zeta^5 + 
71*zeta^4 + 870*zeta^3 - 141*zeta^2 - 470*zeta - 8)*q^313 + 1/45*(-114*zeta^7 - 
42*zeta^6 + 746*zeta^5 + 143*zeta^4 - 1378*zeta^3 + 16*zeta^2 + 612*zeta - 
216)*q^314 + 1/45*(-23*zeta^7 - 40*zeta^6 + 131*zeta^5 + 212*zeta^4 - 212*zeta^3
- 279*zeta^2 + 119*zeta + 42)*q^315 + 1/45*(29*zeta^7 + 4*zeta^6 - 170*zeta^5 + 
19*zeta^4 + 269*zeta^3 - 116*zeta^2 - 122*zeta + 76)*q^316 + 1/45*(30*zeta^7 + 
14*zeta^6 - 226*zeta^5 - 46*zeta^4 + 443*zeta^3 + 12*zeta^2 - 195*zeta - 
126)*q^317 + 1/15*(12*zeta^7 - 8*zeta^6 - 78*zeta^5 + 48*zeta^4 + 154*zeta^3 - 
90*zeta^2 - 122*zeta + 24)*q^318 + 1/15*(-16*zeta^7 - 16*zeta^6 + 106*zeta^5 + 
94*zeta^4 - 210*zeta^3 - 142*zeta^2 + 122*zeta + 28)*q^319 + 1/45*(-29*zeta^7 - 
115*zeta^6 + 89*zeta^5 + 693*zeta^4 + 51*zeta^3 - 1102*zeta^2 - 83*zeta + 
403)*q^320 + 1/45*(-65*zeta^7 - 23*zeta^6 + 390*zeta^5 + 167*zeta^4 - 686*zeta^3
- 343*zeta^2 + 428*zeta + 105)*q^321 + 1/45*(-56*zeta^7 - 38*zeta^6 + 354*zeta^5
+ 213*zeta^4 - 603*zeta^3 - 292*zeta^2 + 177*zeta + 76)*q^322 + 1/15*(11*zeta^7 
+ 3*zeta^6 - 74*zeta^5 - 20*zeta^4 + 143*zeta^3 + 36*zeta^2 - 63*zeta - 
13)*q^324 + 1/45*(89*zeta^7 + 150*zeta^6 - 534*zeta^5 - 883*zeta^4 + 996*zeta^3 
+ 1361*zeta^2 - 666*zeta - 247)*q^325 + 1/15*(6*zeta^7 + 24*zeta^6 - 13*zeta^5 -
134*zeta^4 - 32*zeta^3 + 198*zeta^2 + 38*zeta - 84)*q^326 + 1/45*(56*zeta^7 + 
144*zeta^6 - 280*zeta^5 - 816*zeta^4 + 280*zeta^3 + 1172*zeta^2 - 16*zeta - 
192)*q^327 + 1/45*(26*zeta^7 - 24*zeta^6 - 147*zeta^5 + 144*zeta^4 + 216*zeta^3 
- 254*zeta^2 - 116*zeta + 50)*q^328 + 1/45*(-23*zeta^7 - 54*zeta^6 + 103*zeta^5 
+ 330*zeta^4 - 68*zeta^3 - 504*zeta^2 - 60*zeta + 94)*q^329 + 1/45*(-10*zeta^7 +
30*zeta^6 + 40*zeta^5 - 236*zeta^4 + 18*zeta^3 + 442*zeta^2 - 104*zeta - 
136)*q^330 + 1/45*(82*zeta^7 + 80*zeta^6 - 498*zeta^5 - 396*zeta^4 + 848*zeta^3 
+ 442*zeta^2 - 402*zeta + 28)*q^331 + 1/45*(-44*zeta^7 - 103*zeta^6 + 249*zeta^5
+ 552*zeta^4 - 424*zeta^3 - 756*zeta^2 + 283*zeta + 167)*q^332 + 
1/45*(-64*zeta^7 + 3*zeta^6 + 466*zeta^5 - 11*zeta^4 - 1002*zeta^3 - 23*zeta^2 +
586*zeta + 104)*q^333 + 1/45*(-35*zeta^7 - 11*zeta^6 + 215*zeta^5 + 46*zeta^4 - 
364*zeta^3 - 39*zeta^2 + 153*zeta + 4)*q^334 + 1/45*(-48*zeta^7 + 53*zeta^6 + 
301*zeta^5 - 318*zeta^4 - 566*zeta^3 + 575*zeta^2 + 458*zeta - 148)*q^335 + 
1/45*(-46*zeta^7 - 64*zeta^6 + 303*zeta^5 + 353*zeta^4 - 595*zeta^3 - 462*zeta^2
+ 351*zeta + 66)*q^336 + 1/45*(43*zeta^7 + 84*zeta^6 - 161*zeta^5 - 480*zeta^4 -
46*zeta^3 + 770*zeta^2 + 353*zeta - 338)*q^337 + 1/45*(29*zeta^7 + 16*zeta^6 - 
174*zeta^5 - 103*zeta^4 + 312*zeta^3 + 193*zeta^2 - 206*zeta - 71)*q^338 + 
1/45*(47*zeta^7 - 15*zeta^6 - 344*zeta^5 + 43*zeta^4 + 764*zeta^3 + 36*zeta^2 - 
468*zeta - 13)*q^339 + 1/45*(-12*zeta^7 - 60*zeta^6 + 24*zeta^5 + 290*zeta^4 + 
156*zeta^3 - 292*zeta^2 - 318*zeta + 76)*q^341 + 1/45*(-9*zeta^7 + 17*zeta^6 + 
54*zeta^5 - 95*zeta^4 - 92*zeta^3 + 111*zeta^2 + 69*zeta + 37)*q^342 + 
1/45*(-3*zeta^7 - 38*zeta^6 + 24*zeta^5 + 284*zeta^4 - 80*zeta^3 - 516*zeta^2 + 
155*zeta + 120)*q^343 + 1/45*(32*zeta^7 + 122*zeta^6 - 84*zeta^5 - 721*zeta^4 - 
220*zeta^3 + 1149*zeta^2 + 351*zeta - 222)*q^344 + 1/45*(-30*zeta^7 + 18*zeta^6 
+ 191*zeta^5 - 108*zeta^4 - 362*zeta^3 + 202*zeta^2 + 270*zeta - 50)*q^345 + 
1/45*(-283*zeta^7 - 169*zeta^6 + 1719*zeta^5 + 862*zeta^4 - 2800*zeta^3 - 
1065*zeta^2 + 1043*zeta + 304)*q^346 + 1/45*(-66*zeta^7 - 35*zeta^6 + 358*zeta^5
+ 93*zeta^4 - 500*zeta^3 + 127*zeta^2 + 230*zeta - 224)*q^347 + 1/15*(6*zeta^7 -
3*zeta^6 - 47*zeta^5 + 25*zeta^4 + 106*zeta^3 - 52*zeta^2 - 51*zeta + 21)*q^348 
+ 1/45*(-10*zeta^7 + 16*zeta^6 + 130*zeta^5 - 128*zeta^4 - 424*zeta^3 + 
230*zeta^2 + 266*zeta - 20)*q^349 + 1/45*(-3*zeta^7 + 28*zeta^6 + 38*zeta^5 - 
165*zeta^4 - 99*zeta^3 + 212*zeta^2 + 22*zeta + 12)*q^350 + 1/15*(-46*zeta^7 - 
7*zeta^6 + 298*zeta^5 + 8*zeta^4 - 536*zeta^3 + 39*zeta^2 + 243*zeta + 14)*q^351
+ 1/45*(20*zeta^7 + 6*zeta^6 - 56*zeta^5 - 36*zeta^4 - 160*zeta^3 + 90*zeta^2 + 
400*zeta - 92)*q^352 + 1/45*(114*zeta^7 + 88*zeta^6 - 799*zeta^5 - 509*zeta^4 + 
1715*zeta^3 + 728*zeta^2 - 1075*zeta - 138)*q^353 + 1/15*(11*zeta^7 + 36*zeta^6 
- 30*zeta^5 - 202*zeta^4 - 42*zeta^3 + 304*zeta^2 + 77*zeta - 130)*q^354 + 
1/45*(-79*zeta^7 - 287*zeta^6 + 474*zeta^5 + 1627*zeta^4 - 964*zeta^3 - 
2359*zeta^2 + 717*zeta + 391)*q^355 + 1/45*(62*zeta^7 + 64*zeta^6 - 370*zeta^5 -
352*zeta^4 + 547*zeta^3 + 446*zeta^2 - 84*zeta - 58)*q^356 + 1/45*(76*zeta^7 - 
30*zeta^6 - 562*zeta^5 + 68*zeta^4 + 1267*zeta^3 + 90*zeta^2 - 882*zeta + 
100)*q^358 + 1/45*(55*zeta^7 + 77*zeta^6 - 330*zeta^5 - 479*zeta^4 + 588*zeta^3 
+ 743*zeta^2 - 331*zeta - 19)*q^359 + 1/15*(-8*zeta^7 - 17*zeta^6 + 30*zeta^5 + 
99*zeta^4 + 7*zeta^3 - 160*zeta^2 - 60*zeta + 67)*q^360 + 1/45*(-8*zeta^7 + 
94*zeta^6 + 138*zeta^5 - 497*zeta^4 - 530*zeta^3 + 609*zeta^2 + 435*zeta - 
54)*q^361 + 1/45*(82*zeta^7 + 67*zeta^6 - 590*zeta^5 - 402*zeta^4 + 1305*zeta^3 
+ 634*zeta^2 - 957*zeta - 144)*q^362 + 1/45*(95*zeta^7 + 15*zeta^6 - 607*zeta^5 
- 24*zeta^4 + 1079*zeta^3 - 63*zeta^2 - 486*zeta - 10)*q^363 + 1/45*(-71*zeta^7 
+ 2*zeta^6 + 489*zeta^5 - 37*zeta^4 - 984*zeta^3 + 84*zeta^2 + 547*zeta + 
28)*q^364 + 1/45*(-69*zeta^7 - 105*zeta^6 + 396*zeta^5 + 552*zeta^4 - 636*zeta^3
- 709*zeta^2 + 334*zeta + 79)*q^365 + 1/45*(29*zeta^7 + zeta^6 - 164*zeta^5 + 
4*zeta^4 + 212*zeta^3 - 59*zeta^2 - 30*zeta + 113)*q^366 + 1/45*(-5*zeta^7 - 
33*zeta^6 + 91*zeta^5 + 284*zeta^4 - 356*zeta^3 - 581*zeta^2 + 333*zeta + 
236)*q^367 + 1/45*(151*zeta^7 + 86*zeta^6 - 899*zeta^5 - 444*zeta^4 + 
1439*zeta^3 + 558*zeta^2 - 533*zeta - 100)*q^368 + 1/15*(2*zeta^7 - 10*zeta^6 + 
5*zeta^5 + 60*zeta^4 - 69*zeta^3 - 97*zeta^2 + 93*zeta + 12)*q^369 + 
1/45*(38*zeta^7 + 104*zeta^6 - 157*zeta^5 - 615*zeta^4 + 25*zeta^3 + 976*zeta^2 
+ 151*zeta - 190)*q^370 + 1/45*(10*zeta^7 - 22*zeta^6 - 54*zeta^5 + 146*zeta^4 +
14*zeta^3 - 220*zeta^2 + 182*zeta + 46)*q^371 + 1/45*(-29*zeta^7 - 16*zeta^6 + 
174*zeta^5 + 103*zeta^4 - 312*zeta^3 - 193*zeta^2 + 206*zeta + 71)*q^372 + 
1/45*(38*zeta^7 - 48*zeta^6 - 314*zeta^5 + 216*zeta^4 + 815*zeta^3 - 154*zeta^2 
- 588*zeta - 18)*q^373 + 1/45*(-7*zeta^7 + 45*zeta^6 + 94*zeta^5 - 207*zeta^4 - 
349*zeta^3 + 182*zeta^2 + 366*zeta - 51)*q^375 + 1/45*(-15*zeta^7 - 100*zeta^6 +
90*zeta^5 + 559*zeta^4 - 206*zeta^3 - 789*zeta^2 + 171*zeta + 121)*q^376 + 
1/45*(-7*zeta^7 - 29*zeta^6 + 42*zeta^5 + 217*zeta^4 - 71*zeta^3 - 404*zeta^2 + 
67*zeta + 101)*q^377 + 1/15*(-6*zeta^6 - 5*zeta^5 + 32*zeta^4 + 25*zeta^3 - 
40*zeta^2 - 22*zeta + 4)*q^378 + 1/45*(62*zeta^7 + 68*zeta^6 - 361*zeta^5 - 
408*zeta^4 + 510*zeta^3 + 704*zeta^2 - 42*zeta - 246)*q^379 + 1/45*(-9*zeta^7 - 
11*zeta^6 + 53*zeta^5 + 62*zeta^4 - 78*zeta^3 - 87*zeta^2 + 19*zeta + 28)*q^380 
+ 1/45*(34*zeta^7 - 11*zeta^6 - 190*zeta^5 + 137*zeta^4 + 260*zeta^3 - 
337*zeta^2 - 70*zeta + 144)*q^381 + 1/45*(19*zeta^7 - 7*zeta^6 - 60*zeta^5 + 
21*zeta^4 - 106*zeta^3 - 55*zeta^2 + 188*zeta + 147)*q^382 + 1/45*(-61*zeta^7 - 
35*zeta^6 + 334*zeta^5 + 178*zeta^4 - 424*zeta^3 - 161*zeta^2 + 96*zeta - 
139)*q^383 + 1/45*(19*zeta^7 - 15*zeta^6 - 52*zeta^5 + 200*zeta^4 - 111*zeta^3 -
517*zeta^2 + 188*zeta + 268)*q^384 + 1/45*(-30*zeta^7 + 48*zeta^6 + 230*zeta^5 -
328*zeta^4 - 518*zeta^3 + 552*zeta^2 + 326*zeta - 112)*q^385 + 1/45*(-70*zeta^7 
- 70*zeta^6 + 469*zeta^5 + 420*zeta^4 - 917*zeta^3 - 693*zeta^2 + 525*zeta + 
196)*q^386 + 1/45*(-4*zeta^7 + 18*zeta^6 + 89*zeta^5 - 138*zeta^4 - 365*zeta^3 +
332*zeta^2 + 332*zeta - 96)*q^387 + 1/45*(-24*zeta^7 - 6*zeta^6 + 128*zeta^5 + 
58*zeta^4 - 86*zeta^3 - 168*zeta^2 - 208*zeta + 66)*q^388 + 1/15*(13*zeta^7 + 
20*zeta^6 - 78*zeta^5 - 111*zeta^4 + 152*zeta^3 + 177*zeta^2 - 122*zeta - 
79)*q^389 + 1/45*(41*zeta^7 - 51*zeta^6 - 338*zeta^5 + 197*zeta^4 + 875*zeta^3 -
98*zeta^2 - 726*zeta + 109)*q^390 + 1/45*(-13*zeta^7 + 51*zeta^6 + 142*zeta^5 - 
222*zeta^4 - 469*zeta^3 + 176*zeta^2 + 483*zeta - 93)*q^392 + 1/45*(-64*zeta^7 -
126*zeta^6 + 384*zeta^5 + 762*zeta^4 - 698*zeta^3 - 1142*zeta^2 + 397*zeta + 
32)*q^393 + 1/45*(-62*zeta^7 - 146*zeta^6 + 277*zeta^5 + 956*zeta^4 - 138*zeta^3
- 1678*zeta^2 - 230*zeta + 562)*q^394 + 1/45*(-78*zeta^7 - 206*zeta^6 + 
335*zeta^5 + 1216*zeta^4 - 115*zeta^3 - 1921*zeta^2 - 250*zeta + 372)*q^395 + 
1/15*(12*zeta^7 + 4*zeta^6 - 54*zeta^5 - 24*zeta^4 + 16*zeta^3 + 48*zeta^2 + 
88*zeta - 36)*q^396 + 1/45*(-22*zeta^7 + 36*zeta^6 + 202*zeta^5 - 262*zeta^4 - 
489*zeta^3 + 462*zeta^2 + 299*zeta - 2)*q^397 + 1/45*(19*zeta^7 + 104*zeta^6 - 
90*zeta^5 - 631*zeta^4 + 159*zeta^3 + 864*zeta^2 - 242*zeta - 44)*q^398 + 
1/45*(14*zeta^7 + zeta^6 - 101*zeta^5 + 10*zeta^4 + 212*zeta^3 - 46*zeta^2 - 
103*zeta + 31)*q^399 + 1/45*(186*zeta^7 + 30*zeta^6 - 1178*zeta^5 - 41*zeta^4 + 
2014*zeta^3 - 308*zeta^2 - 752*zeta + 520)*q^400 + 1/45*(90*zeta^7 - 57*zeta^6 -
526*zeta^5 + 519*zeta^4 + 772*zeta^3 - 1075*zeta^2 - 206*zeta + 352)*q^401 + 
1/45*(-258*zeta^7 - 105*zeta^6 + 1550*zeta^5 + 500*zeta^4 - 2546*zeta^3 - 
555*zeta^2 + 1019*zeta + 38)*q^402 + 1/45*(-24*zeta^7 - 94*zeta^6 + 148*zeta^5 +
564*zeta^4 - 209*zeta^3 - 979*zeta^2 - 91*zeta + 290)*q^403 + 1/45*(16*zeta^7 - 
22*zeta^6 - 120*zeta^5 + 91*zeta^4 + 280*zeta^3 - 23*zeta^2 - 173*zeta - 
38)*q^404 + 1/15*(7*zeta^7 + 25*zeta^6 - 23*zeta^5 - 151*zeta^4 - 9*zeta^3 + 
242*zeta^2 + 25*zeta - 89)*q^405 + 1/45*(-15*zeta^7 - 2*zeta^6 + 90*zeta^5 + 
17*zeta^4 - 160*zeta^3 - 51*zeta^2 + 108*zeta + 41)*q^406 + 1/45*(34*zeta^7 + 
90*zeta^6 - 148*zeta^5 - 472*zeta^4 - 2*zeta^3 + 528*zeta^2 + 270*zeta - 
14)*q^407 + 1/45*(15*zeta^7 + 85*zeta^6 - 20*zeta^5 - 404*zeta^4 - 250*zeta^3 + 
398*zeta^2 + 483*zeta - 129)*q^409 + 1/45*(-64*zeta^7 - 158*zeta^6 + 384*zeta^5 
+ 926*zeta^4 - 726*zeta^3 - 1370*zeta^2 + 463*zeta + 136)*q^410 + 
1/45*(-8*zeta^7 - 58*zeta^6 - 27*zeta^5 + 272*zeta^4 + 194*zeta^3 - 310*zeta^2 -
124*zeta + 190)*q^411 + 1/45*(6*zeta^7 + 60*zeta^6 - 8*zeta^5 - 310*zeta^4 - 
80*zeta^3 + 347*zeta^2 + 86*zeta - 20)*q^412 + 1/45*(14*zeta^7 + 15*zeta^6 - 
60*zeta^5 - 90*zeta^4 - 3*zeta^3 + 166*zeta^2 + 151*zeta - 76)*q^413 + 
1/45*(140*zeta^7 + 45*zeta^6 - 836*zeta^5 - 202*zeta^4 + 1377*zeta^3 + 
201*zeta^2 - 568*zeta + 40)*q^414 + 1/45*(130*zeta^7 + 39*zeta^6 - 873*zeta^5 - 
187*zeta^4 + 1733*zeta^3 + 183*zeta^2 - 1019*zeta - 48)*q^415 + 1/45*(55*zeta^7 
+ 83*zeta^6 - 384*zeta^5 - 402*zeta^4 + 848*zeta^3 + 491*zeta^2 - 538*zeta - 
129)*q^416 + 1/45*(87*zeta^7 + 51*zeta^6 - 546*zeta^5 - 225*zeta^4 + 954*zeta^3 
+ 169*zeta^2 - 418*zeta + 125)*q^417 + 1/45*(8*zeta^7 - 2*zeta^6 - 80*zeta^5 - 
14*zeta^4 + 224*zeta^3 + 82*zeta^2 - 152*zeta - 80)*q^418 + 1/45*(104*zeta^7 + 
71*zeta^6 - 640*zeta^5 - 366*zeta^4 + 1047*zeta^3 + 459*zeta^2 - 380*zeta - 
168)*q^419 + 1/45*(22*zeta^7 + 12*zeta^6 - 125*zeta^5 - 72*zeta^4 + 170*zeta^3 +
124*zeta^2 - 22*zeta - 54)*q^420 + 1/45*(64*zeta^7 + 144*zeta^6 - 322*zeta^5 - 
838*zeta^4 + 330*zeta^3 + 1278*zeta^2 - 18*zeta - 236)*q^421 + 1/45*(-51*zeta^7 
- 181*zeta^6 + 147*zeta^5 + 1051*zeta^4 + 149*zeta^3 - 1626*zeta^2 - 269*zeta + 
645)*q^422 + 1/15*(10*zeta^7 - 23*zeta^6 - 60*zeta^5 + 120*zeta^4 + 92*zeta^3 - 
146*zeta^2 - 45*zeta + 12)*q^423 + 1/15*(-10*zeta^7 + 22*zeta^6 + 92*zeta^5 - 
96*zeta^4 - 266*zeta^3 + 72*zeta^2 + 234*zeta - 26)*q^424 + 1/45*(-36*zeta^7 + 
42*zeta^6 + 294*zeta^5 - 152*zeta^4 - 753*zeta^3 + 58*zeta^2 + 642*zeta - 
124)*q^426 + 1/45*(-zeta^7 - 10*zeta^6 + 6*zeta^5 + 57*zeta^4 - 14*zeta^3 - 
79*zeta^2 + 9*zeta + 3)*q^427 + 1/45*(9*zeta^7 - 27*zeta^6 - 25*zeta^5 + 
229*zeta^4 - 89*zeta^3 - 426*zeta^2 + 287*zeta + 63)*q^428 + 1/45*(-116*zeta^7 -
144*zeta^6 + 754*zeta^5 + 822*zeta^4 - 1450*zeta^3 - 1172*zeta^2 + 826*zeta + 
204)*q^429 + 1/45*(-74*zeta^7 + 124*zeta^6 + 489*zeta^5 - 744*zeta^4 - 
1031*zeta^3 + 1343*zeta^2 + 999*zeta - 380)*q^430 + 1/45*(-77*zeta^7 - 36*zeta^6
+ 529*zeta^5 + 144*zeta^4 - 971*zeta^3 - 108*zeta^2 + 411*zeta + 196)*q^431 + 
1/15*(16*zeta^7 - 15*zeta^6 - 83*zeta^5 + 137*zeta^4 + 85*zeta^3 - 287*zeta^2 + 
15*zeta + 104)*q^432 + 1/45*(16*zeta^7 - 34*zeta^6 - 74*zeta^5 + 184*zeta^4 - 
304*zeta^2 + 130*zeta + 194)*q^433 + 1/45*(32*zeta^7 + zeta^6 - 219*zeta^5 + 
24*zeta^4 + 424*zeta^3 - 104*zeta^2 - 185*zeta + 87)*q^434 + 1/15*(7*zeta^7 + 
5*zeta^6 - 51*zeta^5 - 34*zeta^4 + 114*zeta^3 + 57*zeta^2 - 77*zeta - 20)*q^435 
+ 1/45*(52*zeta^7 + 36*zeta^6 - 308*zeta^5 - 192*zeta^4 + 484*zeta^3 + 
252*zeta^2 - 168*zeta - 56)*q^436 + 1/45*(18*zeta^7 + 34*zeta^6 - 131*zeta^5 - 
204*zeta^4 + 285*zeta^3 + 341*zeta^2 - 173*zeta - 88)*q^437 + 1/45*(-82*zeta^7 -
156*zeta^6 + 539*zeta^5 + 819*zeta^4 - 1055*zeta^3 - 934*zeta^2 + 641*zeta + 
78)*q^438 + 1/45*(-72*zeta^7 - 104*zeta^6 + 289*zeta^5 + 586*zeta^4 + 36*zeta^3 
- 966*zeta^2 - 660*zeta + 456)*q^439 + 1/45*(-48*zeta^7 - 70*zeta^6 + 288*zeta^5
+ 436*zeta^4 - 512*zeta^3 - 672*zeta^2 + 282*zeta + 4)*q^440 + 1/15*(11*zeta^7 +
19*zeta^6 - 58*zeta^5 - 97*zeta^4 + 55*zeta^3 + 110*zeta^2 + 42*zeta - 25)*q^441
+ 1/45*(-34*zeta^7 - 58*zeta^6 + 180*zeta^5 + 265*zeta^4 - 174*zeta^3 - 
274*zeta^2 - 219*zeta + 202)*q^443 + 1/45*(37*zeta^7 - 5*zeta^6 - 222*zeta^5 + 
5*zeta^4 + 382*zeta^3 + 59*zeta^2 - 232*zeta - 45)*q^444 + 1/45*(-28*zeta^7 - 
120*zeta^6 + 81*zeta^5 + 722*zeta^4 + 60*zeta^3 - 1142*zeta^2 - 64*zeta + 
416)*q^445 + 1/45*(-46*zeta^7 - 74*zeta^6 + 277*zeta^5 + 424*zeta^4 - 465*zeta^3
- 617*zeta^2 + 226*zeta + 108)*q^446 + 1/45*(-78*zeta^7 - 21*zeta^6 + 520*zeta^5
+ 126*zeta^4 - 1036*zeta^3 - 175*zeta^2 + 708*zeta + 50)*q^447 + 1/45*(7*zeta^7 
- 20*zeta^6 - 67*zeta^5 + 136*zeta^4 + 173*zeta^3 - 228*zeta^2 - 117*zeta + 
28)*q^448 + 1/45*(26*zeta^7 - 11*zeta^6 - 96*zeta^5 + 181*zeta^4 - 30*zeta^3 - 
501*zeta^2 + 140*zeta + 272)*q^449 + 1/45*(109*zeta^7 + 17*zeta^6 - 730*zeta^5 -
zeta^4 + 1378*zeta^3 - 225*zeta^2 - 598*zeta + 267)*q^450 + 1/45*(22*zeta^7 - 
94*zeta^6 - 196*zeta^5 + 560*zeta^4 + 424*zeta^3 - 906*zeta^2 - 88*zeta + 
330)*q^451 + 1/45*(-93*zeta^7 + zeta^6 + 622*zeta^5 - 60*zeta^4 - 1205*zeta^3 + 
175*zeta^2 + 650*zeta - 20)*q^452 + 1/45*(-69*zeta^7 - 6*zeta^6 + 449*zeta^5 - 
16*zeta^4 - 815*zeta^3 + 102*zeta^2 + 377*zeta + 8)*q^453 + 1/45*(78*zeta^7 + 
57*zeta^6 - 554*zeta^5 - 342*zeta^4 + 1205*zeta^3 + 536*zeta^2 - 873*zeta - 
124)*q^454 + 1/45*(54*zeta^7 + 10*zeta^6 - 390*zeta^5 - 87*zeta^4 + 870*zeta^3 +
208*zeta^2 - 551*zeta - 74)*q^455 + 1/45*(11*zeta^7 + 28*zeta^6 - 45*zeta^5 - 
176*zeta^4 + 10*zeta^3 + 298*zeta^2 + 49*zeta - 106)*q^456 + 1/45*(83*zeta^7 + 
251*zeta^6 - 498*zeta^5 - 1439*zeta^4 + 980*zeta^3 + 2107*zeta^2 - 689*zeta - 
315)*q^457 + 1/45*(73*zeta^7 - 57*zeta^6 - 568*zeta^5 + 185*zeta^4 + 1372*zeta^3
- 12*zeta^2 - 1080*zeta + 181)*q^458 + 1/45*(-10*zeta^7 - 8*zeta^6 + 62*zeta^5 +
55*zeta^4 - 101*zeta^3 - 80*zeta^2 + 57*zeta - 30)*q^460 + 1/45*(-29*zeta^7 - 
215*zeta^6 + 174*zeta^5 + 1209*zeta^4 - 400*zeta^3 - 1697*zeta^2 + 315*zeta + 
201)*q^461 + 1/45*(-10*zeta^7 - 14*zeta^6 + 66*zeta^5 + 130*zeta^4 - 98*zeta^3 -
284*zeta^2 + 10*zeta + 62)*q^462 + 1/45*(-14*zeta^7 + 8*zeta^6 + 142*zeta^5 - 
66*zeta^4 - 430*zeta^3 + 177*zeta^2 + 342*zeta - 52)*q^463 + 1/45*(-2*zeta^7 + 
27*zeta^6 - 24*zeta^5 - 162*zeta^4 + 165*zeta^3 + 266*zeta^2 - 193*zeta - 
44)*q^464 + 1/45*(-205*zeta^7 - 123*zeta^6 + 1277*zeta^5 + 612*zeta^4 - 
2131*zeta^3 - 729*zeta^2 + 810*zeta + 302)*q^465 + 1/15*(11*zeta^7 + 11*zeta^6 -
140*zeta^5 - 146*zeta^4 + 457*zeta^3 + 385*zeta^2 - 356*zeta - 228)*q^466 + 
1/45*(-46*zeta^7 - 53*zeta^6 + 331*zeta^5 + 241*zeta^4 - 742*zeta^3 - 264*zeta^2
+ 451*zeta + 63)*q^467 + 1/45*(65*zeta^7 + 88*zeta^6 - 425*zeta^5 - 434*zeta^4 +
848*zeta^3 + 525*zeta^2 - 497*zeta - 90)*q^468 + 1/45*(-8*zeta^7 - 25*zeta^6 + 
4*zeta^5 + 101*zeta^4 + 104*zeta^3 - 23*zeta^2 - 72*zeta - 120)*q^469 + 
1/45*(165*zeta^7 + 90*zeta^6 - 1037*zeta^5 - 434*zeta^4 + 1754*zeta^3 + 
492*zeta^2 - 686*zeta - 230)*q^470 + 1/45*(-30*zeta^7 - 15*zeta^6 + 284*zeta^5 +
90*zeta^4 - 857*zeta^3 - 98*zeta^2 + 885*zeta - 44)*q^471 + 1/15*(-16*zeta^7 - 
44*zeta^6 + 65*zeta^5 + 261*zeta^4 - 5*zeta^3 - 417*zeta^2 - 69*zeta + 82)*q^472
+ 1/45*(32*zeta^7 + 90*zeta^6 - 92*zeta^5 - 494*zeta^4 - 118*zeta^3 + 736*zeta^2
+ 264*zeta - 334)*q^473 + 1/45*(-81*zeta^7 - 152*zeta^6 + 486*zeta^5 + 
887*zeta^4 - 916*zeta^3 - 1353*zeta^2 + 624*zeta + 251)*q^474 + 1/45*(-42*zeta^7
+ 8*zeta^6 + 302*zeta^5 - zeta^4 - 653*zeta^3 - 80*zeta^2 + 417*zeta - 30)*q^475
+ 1/15*(-6*zeta^7 + 18*zeta^6 + 60*zeta^5 - 86*zeta^4 - 186*zeta^3 + 76*zeta^2 +
156*zeta + 2)*q^477 + 1/45*(36*zeta^7 + 36*zeta^6 - 216*zeta^5 - 206*zeta^4 + 
406*zeta^3 + 350*zeta^2 - 305*zeta - 168)*q^478 + 1/45*(-60*zeta^7 - 32*zeta^6 +
308*zeta^5 + 240*zeta^4 - 184*zeta^3 - 552*zeta^2 - 500*zeta + 216)*q^479 + 
1/45*(-14*zeta^7 + 28*zeta^6 + 141*zeta^5 - 155*zeta^4 - 425*zeta^3 + 222*zeta^2
+ 327*zeta - 30)*q^480 + 1/45*(102*zeta^7 + 116*zeta^6 - 613*zeta^5 - 696*zeta^4
+ 942*zeta^3 + 1192*zeta^2 - 202*zeta - 398)*q^481 + 1/45*(293*zeta^7 + 
186*zeta^6 - 1781*zeta^5 - 958*zeta^4 + 2892*zeta^3 + 1200*zeta^2 - 1060*zeta - 
362)*q^482 + 1/45*(-23*zeta^7 + 38*zeta^6 + 203*zeta^5 - 205*zeta^4 - 494*zeta^3
+ 212*zeta^2 + 257*zeta + 92)*q^483 + 1/45*(-42*zeta^7 - 111*zeta^6 + 239*zeta^5
+ 596*zeta^4 - 424*zeta^3 - 826*zeta^2 + 305*zeta + 203)*q^484 + 
1/45*(-94*zeta^7 - 92*zeta^6 + 546*zeta^5 + 468*zeta^4 - 848*zeta^3 - 534*zeta^2
+ 362*zeta - 56)*q^485 + 1/15*(-4*zeta^7 - 33*zeta^6 + 13*zeta^5 + 199*zeta^4 - 
15*zeta^3 - 269*zeta^2 + 55*zeta + 8)*q^486 + 1/45*(68*zeta^7 + 137*zeta^6 - 
332*zeta^5 - 826*zeta^4 + 313*zeta^3 + 1245*zeta^2 + 84*zeta - 256)*q^487 + 
1/45*(-16*zeta^7 + 21*zeta^6 + 107*zeta^5 - 126*zeta^4 - 227*zeta^3 + 230*zeta^2
+ 211*zeta - 66)*q^488 + 1/15*(8*zeta^7 + 32*zeta^6 - 33*zeta^5 - 175*zeta^4 + 
5*zeta^3 + 231*zeta^2 + 27*zeta - 30)*q^489 + 1/45*(67*zeta^7 + 187*zeta^6 - 
233*zeta^5 - 1105*zeta^4 - 87*zeta^3 + 1766*zeta^2 + 397*zeta - 695)*q^490 + 
1/45*(-78*zeta^7 - 14*zeta^6 + 468*zeta^5 + 136*zeta^4 - 806*zeta^3 - 320*zeta^2
+ 467*zeta + 50)*q^491 + 1/45*(-71*zeta^7 - 51*zeta^6 + 446*zeta^5 + 297*zeta^4 
- 749*zeta^3 - 410*zeta^2 + 246*zeta + 45)*q^492 + 1/45*(-33*zeta^7 - 43*zeta^6 
+ 188*zeta^5 + 217*zeta^4 - 242*zeta^3 - 252*zeta^2 - 54*zeta + 91)*q^494 + 
1/15*(-12*zeta^7 + 72*zeta^5 + 16*zeta^4 - 116*zeta^3 - 40*zeta^2 + 46*zeta - 
36)*q^495 + 1/45*(71*zeta^7 + 168*zeta^6 - 283*zeta^5 - 1032*zeta^4 + 22*zeta^3 
+ 1726*zeta^2 + 397*zeta - 646)*q^496 + 1/45*(56*zeta^7 + 42*zeta^6 - 365*zeta^5
- 272*zeta^4 + 705*zeta^3 + 492*zeta^2 - 390*zeta - 124)*q^497 + 
1/45*(-24*zeta^7 - 36*zeta^6 + 158*zeta^5 + 216*zeta^4 - 293*zeta^3 - 365*zeta^2
+ 129*zeta + 106)*q^498 + 1/45*(-176*zeta^7 - 169*zeta^6 + 1036*zeta^5 + 
936*zeta^4 - 1570*zeta^3 - 1287*zeta^2 + 463*zeta + 362)*q^499 + 1/45*(77*zeta^7
+ 8*zeta^6 - 497*zeta^5 + 13*zeta^4 + 922*zeta^3 - 134*zeta^2 - 491*zeta + 
60)*q^500 + 1/45*(-34*zeta^7 - 23*zeta^6 + 223*zeta^5 + 100*zeta^4 - 424*zeta^3 
- 82*zeta^2 + 209*zeta - 29)*q^501 + 1/45*(-135*zeta^7 - 60*zeta^6 + 873*zeta^5 
+ 231*zeta^4 - 1590*zeta^3 - 77*zeta^2 + 707*zeta - 232)*q^502 + 
1/45*(114*zeta^7 + 35*zeta^6 - 657*zeta^5 - 39*zeta^4 + 1021*zeta^3 - 309*zeta^2
- 483*zeta + 304)*q^503 + 1/15*(4*zeta^7 + 7*zeta^6 - 20*zeta^5 - 42*zeta^4 + 
21*zeta^3 + 63*zeta^2 + 2*zeta - 12)*q^504 + 1/45*(-70*zeta^7 + 10*zeta^6 + 
417*zeta^5 - 60*zeta^4 - 671*zeta^3 + 121*zeta^2 + 335*zeta + 8)*q^505 + 
1/45*(76*zeta^7 + 136*zeta^6 - 480*zeta^5 - 740*zeta^4 + 880*zeta^3 + 942*zeta^2
- 492*zeta - 120)*q^506 + 1/45*(zeta^7 + 5*zeta^6 + 24*zeta^5 + 23*zeta^4 - 
109*zeta^3 - 112*zeta^2 + 107*zeta - 17)*q^507 + 1/45*(12*zeta^7 - 54*zeta^6 - 
72*zeta^5 + 274*zeta^4 + 82*zeta^3 - 358*zeta^2 + 19*zeta + 132)*q^508 + 
1/45*(-18*zeta^7 - 124*zeta^6 + 2*zeta^5 + 592*zeta^4 + 421*zeta^3 - 582*zeta^2 
- 720*zeta + 166)*q^509 + 1/45*(-52*zeta^7 - 66*zeta^6 + 298*zeta^5 + 365*zeta^4
- 391*zeta^3 - 452*zeta^2 + 21*zeta + 16)*q^511 + 1/45*(80*zeta^7 + 53*zeta^6 - 
480*zeta^5 - 354*zeta^4 + 844*zeta^3 + 620*zeta^2 - 501*zeta - 78)*q^512 + 
1/15*(5*zeta^7 + 15*zeta^6 - 18*zeta^5 - 91*zeta^4 - 3*zeta^3 + 148*zeta^2 + 
23*zeta - 55)*q^513 + 1/45*(-14*zeta^7 - 16*zeta^6 + 122*zeta^5 + 62*zeta^4 - 
330*zeta^3 + 17*zeta^2 + 254*zeta - 36)*q^514 + 1/45*(116*zeta^7 - 113*zeta^6 - 
737*zeta^5 + 678*zeta^4 + 1413*zeta^3 - 1236*zeta^2 - 1141*zeta + 322)*q^515 + 
1/45*(-77*zeta^7 - 39*zeta^6 + 457*zeta^5 + 198*zeta^4 - 734*zeta^3 - 243*zeta^2
+ 279*zeta + 28)*q^516 + 1/45*(-184*zeta^7 - 24*zeta^6 + 1270*zeta^5 + 
100*zeta^4 - 2586*zeta^3 - 92*zeta^2 + 1498*zeta + 128)*q^517 + 1/45*(-27*zeta^7
+ 9*zeta^6 + 200*zeta^5 - 82*zeta^4 - 424*zeta^3 + 185*zeta^2 + 194*zeta - 
91)*q^518 + 1/45*(-190*zeta^7 + 13*zeta^6 + 1267*zeta^5 - 230*zeta^4 - 
2332*zeta^3 + 742*zeta^2 + 921*zeta - 613)*q^519 + 1/45*(-71*zeta^7 - 80*zeta^6 
+ 533*zeta^5 + 557*zeta^4 - 1252*zeta^3 - 946*zeta^2 + 911*zeta + 300)*q^520 + 
1/45*(12*zeta^7 - 106*zeta^6 - 140*zeta^5 + 676*zeta^4 + 450*zeta^3 - 
1074*zeta^2 - 388*zeta + 272)*q^521 + 1/15*(12*zeta^7 + 15*zeta^6 - 85*zeta^5 - 
90*zeta^4 + 181*zeta^3 + 148*zeta^2 - 117*zeta - 38)*q^522 + 1/15*(-20*zeta^7 - 
34*zeta^6 + 112*zeta^5 + 201*zeta^4 - 160*zeta^3 - 315*zeta^2 + 57*zeta + 
62)*q^523 + 1/45*(17*zeta^7 - 46*zeta^6 - 96*zeta^5 + 300*zeta^4 + 32*zeta^3 - 
452*zeta^2 + 327*zeta + 104)*q^524 + 1/45*(-17*zeta^7 + 22*zeta^6 + 102*zeta^5 -
121*zeta^4 - 176*zeta^3 + 131*zeta^2 + 128*zeta + 63)*q^525 + 1/9*(24*zeta^7 + 
22*zeta^6 - 146*zeta^5 - 115*zeta^4 + 227*zeta^3 + 144*zeta^2 - 27*zeta - 
52)*q^526 + 1/45*(70*zeta^7 + 54*zeta^6 - 436*zeta^5 - 276*zeta^4 + 718*zeta^3 +
352*zeta^2 - 114*zeta - 186)*q^528 + 1/45*(-18*zeta^7 + 126*zeta^6 + 108*zeta^5 
- 688*zeta^4 - 130*zeta^3 + 904*zeta^2 + 41*zeta - 66)*q^529 + 1/45*(86*zeta^7 +
226*zeta^6 - 306*zeta^5 - 1334*zeta^4 - 98*zeta^3 + 2140*zeta^2 + 538*zeta - 
850)*q^530 + 1/15*(-10*zeta^7 - 16*zeta^6 + 48*zeta^5 + 104*zeta^4 - 40*zeta^3 -
195*zeta^2 - 12*zeta + 48)*q^531 + 1/45*(-10*zeta^7 - 10*zeta^6 + 67*zeta^5 + 
60*zeta^4 - 131*zeta^3 - 99*zeta^2 + 75*zeta + 28)*q^532 + 1/45*(50*zeta^7 - 
15*zeta^6 - 378*zeta^5 + 154*zeta^4 + 781*zeta^3 - 327*zeta^2 - 404*zeta - 
60)*q^533 + 1/45*(32*zeta^7 - 122*zeta^6 - 317*zeta^5 + 700*zeta^4 + 791*zeta^3 
- 848*zeta^2 - 323*zeta - 128)*q^534 + 1/45*(-19*zeta^7 + 139*zeta^6 + 
150*zeta^5 - 792*zeta^4 - 212*zeta^3 + 1245*zeta^2 - 136*zeta - 497)*q^535 + 
1/45*(71*zeta^7 + 16*zeta^6 - 401*zeta^5 - 65*zeta^4 + 530*zeta^3 - 31*zeta^2 - 
103*zeta + 232)*q^536 + 1/45*(2*zeta^7 + 30*zeta^6 - 101*zeta^5 - 302*zeta^4 + 
453*zeta^3 + 688*zeta^2 - 419*zeta - 328)*q^537 + 1/45*(-139*zeta^7 - 64*zeta^6 
+ 863*zeta^5 + 300*zeta^4 - 1455*zeta^3 - 324*zeta^2 + 583*zeta + 120)*q^538 + 
1/45*(-44*zeta^7 + 18*zeta^6 + 228*zeta^5 - 108*zeta^4 - 240*zeta^3 + 182*zeta^2
- 16*zeta + 4)*q^539 + 1/15*(-16*zeta^7 + 2*zeta^6 + 121*zeta^5 - 2*zeta^4 - 
285*zeta^3 - 22*zeta^2 + 188*zeta + 16)*q^540 + 1/45*(-77*zeta^7 - 192*zeta^6 + 
296*zeta^5 + 1166*zeta^4 + 10*zeta^3 - 1924*zeta^2 - 435*zeta + 730)*q^541 + 
1/45*(-17*zeta^7 - 170*zeta^6 + 102*zeta^5 + 969*zeta^4 - 238*zeta^3 - 
1343*zeta^2 + 153*zeta + 51)*q^542 + 1/45*(-165*zeta^7 - 123*zeta^6 + 
1032*zeta^5 + 682*zeta^4 - 1716*zeta^3 - 914*zeta^2 + 453*zeta + 227)*q^543 + 
1/45*(80*zeta^7 - 120*zeta^6 - 680*zeta^5 + 472*zeta^4 + 1820*zeta^3 - 
264*zeta^2 - 1584*zeta + 272)*q^545 + 1/45*(-50*zeta^7 - 12*zeta^6 + 300*zeta^5 
+ 84*zeta^4 - 538*zeta^3 - 208*zeta^2 + 371*zeta + 154)*q^546 + 1/45*(-37*zeta^7
- 127*zeta^6 + 82*zeta^5 + 683*zeta^4 + 211*zeta^3 - 980*zeta^2 - 311*zeta + 
455)*q^547 + 1/45*(28*zeta^7 + 34*zeta^6 - 207*zeta^5 - 170*zeta^4 + 475*zeta^3 
+ 156*zeta^2 - 324*zeta)*q^548 + 1/45*(-14*zeta^7 + 3*zeta^6 + 96*zeta^5 - 
18*zeta^4 - 204*zeta^3 + 41*zeta^2 + 164*zeta - 14)*q^549 + 1/45*(60*zeta^7 + 
66*zeta^6 - 388*zeta^5 - 352*zeta^4 + 640*zeta^3 + 462*zeta^2 - 202*zeta - 
244)*q^550 + 1/45*(-5*zeta^7 + 12*zeta^6 + 41*zeta^5 - 73*zeta^4 - 90*zeta^3 + 
98*zeta^2 + 35*zeta + 4)*q^551 + 1/45*(71*zeta^7 + 19*zeta^6 - 464*zeta^5 - 
50*zeta^4 + 848*zeta^3 - 69*zeta^2 - 362*zeta + 159)*q^552 + 1/45*(14*zeta^7 - 
29*zeta^6 - 107*zeta^5 + 178*zeta^4 + 212*zeta^3 - 302*zeta^2 - 57*zeta + 
125)*q^553 + 1/45*(-24*zeta^7 + 133*zeta^6 + 146*zeta^5 - 909*zeta^4 - 
138*zeta^3 + 1463*zeta^2 - 206*zeta - 264)*q^554 + 1/45*(124*zeta^7 + 42*zeta^6 
- 792*zeta^5 - 166*zeta^4 + 1385*zeta^3 + 120*zeta^2 - 589*zeta - 102)*q^555 + 
1/45*(52*zeta^7 + 16*zeta^6 - 272*zeta^5 - 96*zeta^4 + 279*zeta^3 + 175*zeta^2 +
93*zeta - 114)*q^556 + 1/9*(-10*zeta^7 - 24*zeta^6 + 59*zeta^5 + 129*zeta^4 - 
95*zeta^3 - 160*zeta^2 + 47*zeta + 18)*q^557 + 1/45*(34*zeta^7 + 74*zeta^6 - 
159*zeta^5 - 496*zeta^4 + 98*zeta^3 + 890*zeta^2 + 122*zeta - 290)*q^558 + 
1/45*(49*zeta^7 + 235*zeta^6 - 294*zeta^5 - 1347*zeta^4 + 602*zeta^3 + 
1915*zeta^2 - 402*zeta - 153)*q^559 + 1/45*(-8*zeta^7 + 34*zeta^6 + 90*zeta^5 - 
165*zeta^4 - 303*zeta^3 + 152*zeta^2 + 267*zeta + 4)*q^560 + 1/45*(99*zeta^7 + 
51*zeta^6 - 642*zeta^5 - 322*zeta^4 + 1155*zeta^3 + 488*zeta^2 - 489*zeta - 
29)*q^562 + 1/45*(86*zeta^7 + 188*zeta^6 - 516*zeta^5 - 1140*zeta^4 + 934*zeta^3
+ 1688*zeta^2 - 501*zeta + 18)*q^563 + 1/45*(29*zeta^7 + 16*zeta^6 - 162*zeta^5 
- 146*zeta^4 + 142*zeta^3 + 352*zeta^2 + 187*zeta - 106)*q^564 + 
1/45*(110*zeta^7 + 156*zeta^6 - 633*zeta^5 - 949*zeta^4 + 965*zeta^3 + 
1570*zeta^2 - 383*zeta - 338)*q^565 + 1/45*(-56*zeta^7 - 127*zeta^6 + 371*zeta^5
+ 762*zeta^4 - 675*zeta^3 - 1302*zeta^2 + 211*zeta + 374)*q^566 + 
1/15*(-13*zeta^7 + 81*zeta^5 - 8*zeta^4 - 143*zeta^3 + 24*zeta^2 + 67*zeta - 
12)*q^567 + 1/45*(-42*zeta^7 + 59*zeta^6 + 213*zeta^5 - 495*zeta^4 - 185*zeta^3 
+ 975*zeta^2 - 105*zeta - 320)*q^568 + 1/45*(-143*zeta^7 + 2*zeta^6 + 813*zeta^5
- 60*zeta^4 - 1060*zeta^3 + 353*zeta^2 + 149*zeta - 576)*q^569 + 
1/45*(-46*zeta^7 - 5*zeta^6 + 277*zeta^5 + 4*zeta^4 - 424*zeta^3 + 82*zeta^2 + 
123*zeta - 151)*q^570 + 1/45*(3*zeta^7 + 26*zeta^6 - 151*zeta^5 - 327*zeta^4 + 
662*zeta^3 + 836*zeta^2 - 581*zeta - 460)*q^571 + 1/45*(-18*zeta^7 - 132*zeta^6 
+ 10*zeta^5 + 832*zeta^4 + 266*zeta^3 - 1308*zeta^2 - 350*zeta + 256)*q^572 + 
1/45*(-36*zeta^7 - 87*zeta^6 + 277*zeta^5 + 522*zeta^4 - 643*zeta^3 - 874*zeta^2
+ 411*zeta + 218)*q^573 + 1/45*(-34*zeta^7 - 38*zeta^6 + 244*zeta^5 + 199*zeta^4
- 540*zeta^3 - 218*zeta^2 + 355*zeta + 18)*q^574 + 1/45*(-19*zeta^7 - 94*zeta^6 
+ 3*zeta^5 + 474*zeta^4 + 236*zeta^3 - 614*zeta^2 - 201*zeta + 320)*q^575 + 
1/45*(42*zeta^7 + 26*zeta^6 - 252*zeta^5 - 176*zeta^4 + 442*zeta^3 + 312*zeta^2 
- 261*zeta - 38)*q^576 + 1/45*(5*zeta^7 - 43*zeta^6 - 78*zeta^5 + 202*zeta^4 + 
309*zeta^3 - 184*zeta^2 - 327*zeta + 37)*q^577 + 1/45*(119*zeta^7 + 105*zeta^6 -
728*zeta^5 - 595*zeta^4 + 1148*zeta^3 + 784*zeta^2 - 294*zeta - 77)*q^579 + 
1/45*(9*zeta^7 - 8*zeta^6 - 54*zeta^5 + 29*zeta^4 + 80*zeta^3 - 27*zeta^2 - 
18*zeta + 53)*q^580 + 1/45*(-22*zeta^7 + 5*zeta^6 + 105*zeta^5 - 45*zeta^4 - 
19*zeta^3 + 46*zeta^2 - 282*zeta + 29)*q^581 + 1/45*(80*zeta^7 + 100*zeta^6 - 
584*zeta^5 - 506*zeta^4 + 1320*zeta^3 + 490*zeta^2 - 890*zeta - 12)*q^582 + 
1/15*(-56*zeta^7 - 20*zeta^6 + 320*zeta^5 + 120*zeta^4 - 448*zeta^3 - 204*zeta^2
+ 96*zeta + 104)*q^583 + 1/45*(37*zeta^7 + 60*zeta^6 - 193*zeta^5 - 356*zeta^4 +
225*zeta^3 + 528*zeta^2 - 5*zeta - 112)*q^584 + 1/45*(-103*zeta^7 - 51*zeta^6 + 
706*zeta^5 + 298*zeta^4 - 1455*zeta^3 - 413*zeta^2 + 910*zeta + 116)*q^585 + 
1/45*(22*zeta^7 + 26*zeta^6 - 172*zeta^5 - 112*zeta^4 + 424*zeta^3 + 118*zeta^2 
- 272*zeta - 46)*q^586 + 1/45*(197*zeta^7 + 100*zeta^6 - 1189*zeta^5 - 
448*zeta^4 + 1908*zeta^3 + 301*zeta^2 - 721*zeta + 382)*q^587 + 1/45*(-29*zeta^7
+ 27*zeta^6 + 218*zeta^5 - 166*zeta^4 - 465*zeta^3 + 221*zeta^2 + 230*zeta + 
28)*q^588 + 1/45*(-47*zeta^7 - 40*zeta^6 + 295*zeta^5 + 210*zeta^4 - 484*zeta^3 
- 270*zeta^2 + 166*zeta + 122)*q^589 + 1/45*(82*zeta^7 - 117*zeta^6 - 534*zeta^5
+ 702*zeta^4 + 1089*zeta^3 - 1270*zeta^2 - 997*zeta + 352)*q^590 + 
1/45*(80*zeta^7 + 36*zeta^6 - 655*zeta^5 - 147*zeta^4 + 1675*zeta^3 - 25*zeta^2 
- 1213*zeta + 66)*q^591 + 1/45*(-59*zeta^7 - 91*zeta^6 + 265*zeta^5 + 577*zeta^4
- 89*zeta^3 - 1030*zeta^2 - 405*zeta + 391)*q^592 + 1/45*(44*zeta^7 + 11*zeta^6 
- 264*zeta^5 - 104*zeta^4 + 446*zeta^3 + 214*zeta^2 - 230*zeta + 30)*q^593 + 
1/15*(-2*zeta^7 + 18*zeta^6 + 32*zeta^5 - 82*zeta^4 - 128*zeta^3 + 72*zeta^2 + 
144*zeta - 26)*q^594 + 1/45*(-49*zeta^7 - 43*zeta^6 + 300*zeta^5 + 254*zeta^4 - 
474*zeta^3 - 342*zeta^2 + 153*zeta - 9)*q^596 + 1/45*(-43*zeta^7 + 134*zeta^6 + 
258*zeta^5 - 731*zeta^4 - 400*zeta^3 + 913*zeta^2 + 244*zeta + 45)*q^597 + 
1/45*(55*zeta^7 + 94*zeta^6 - 298*zeta^5 - 704*zeta^4 + 296*zeta^3 + 1376*zeta^2
+ 137*zeta - 392)*q^598 + 1/45*(112*zeta^7 + 60*zeta^6 - 803*zeta^5 - 363*zeta^4
+ 1775*zeta^3 + 559*zeta^2 - 1133*zeta - 126)*q^599 + 1/45*(50*zeta^7 - 
33*zeta^6 - 342*zeta^5 + 198*zeta^4 + 735*zeta^3 - 380*zeta^2 - 635*zeta + 
116)*q^600 + 1/45*(112*zeta^7 + 238*zeta^6 - 612*zeta^5 - 1402*zeta^4 + 
715*zeta^3 + 2064*zeta^2 + 49*zeta - 634)*q^601 + 1/45*(5*zeta^7 - 7*zeta^6 - 
76*zeta^5 - 2*zeta^4 + 255*zeta^3 + 107*zeta^2 - 180*zeta - 124)*q^602 + 
1/45*(-32*zeta^7 + 5*zeta^6 + 305*zeta^5 - 100*zeta^4 - 848*zeta^3 + 240*zeta^2 
+ 515*zeta - 21)*q^603 + 1/45*(35*zeta^7 + 103*zeta^6 - 190*zeta^5 - 559*zeta^4 
+ 318*zeta^3 + 785*zeta^2 - 242*zeta - 195)*q^604 + 1/45*(148*zeta^7 + 89*zeta^6
- 1037*zeta^5 - 559*zeta^4 + 2207*zeta^3 + 853*zeta^2 - 1431*zeta - 264)*q^605 +
1/45*(19*zeta^7 - 15*zeta^6 - 87*zeta^5 + 86*zeta^4 + 122*zeta^3 - 123*zeta^2 - 
73*zeta + 156)*q^606 + 1/45*(-26*zeta^7 - 17*zeta^6 + 118*zeta^5 + 102*zeta^4 - 
36*zeta^3 - 191*zeta^2 - 204*zeta + 102)*q^607 + 1/45*(28*zeta^7 + 50*zeta^6 - 
176*zeta^5 - 273*zeta^4 + 320*zeta^3 + 351*zeta^2 - 177*zeta - 46)*q^608 + 
1/15*(zeta^7 + zeta^6 - 10*zeta^5 - 17*zeta^4 + 23*zeta^3 + 44*zeta^2 - 13*zeta 
- 5)*q^609 + 1/45*(57*zeta^7 + 148*zeta^6 - 342*zeta^5 - 861*zeta^4 + 654*zeta^3
+ 1271*zeta^2 - 431*zeta - 151)*q^610 + 1/45*(61*zeta^7 + 27*zeta^6 - 400*zeta^5
- 112*zeta^4 + 736*zeta^3 + 150*zeta^2 - 135*zeta - 275)*q^611 + 
1/45*(-38*zeta^7 - 10*zeta^6 + 256*zeta^5 + 83*zeta^4 - 496*zeta^3 - 154*zeta^2 
+ 267*zeta - 18)*q^613 + 1/45*(25*zeta^6 - 148*zeta^4 + 2*zeta^3 + 198*zeta^2 + 
18*zeta + 38)*q^614 + 1/45*(-50*zeta^7 - 115*zeta^6 + 186*zeta^5 + 677*zeta^4 + 
41*zeta^3 - 1096*zeta^2 - 346*zeta + 445)*q^615 + 1/45*(-28*zeta^7 + 200*zeta^5 
+ 24*zeta^4 - 440*zeta^3 - 106*zeta^2 + 272*zeta + 48)*q^616 + 1/45*(-70*zeta^7 
- 156*zeta^6 + 403*zeta^5 + 936*zeta^4 - 511*zeta^3 - 1629*zeta^2 - 185*zeta + 
520)*q^617 + 1/45*(107*zeta^7 + 114*zeta^6 - 703*zeta^5 - 600*zeta^4 + 
1181*zeta^3 + 774*zeta^2 - 387*zeta - 448)*q^618 + 1/45*(34*zeta^7 + 14*zeta^6 -
100*zeta^5 + 80*zeta^4 - 134*zeta^3 - 478*zeta^2 + 212*zeta + 392)*q^619 + 
1/45*(-22*zeta^7 + 31*zeta^6 + 141*zeta^5 - 186*zeta^4 - 212*zeta^3 + 326*zeta^2
+ 15*zeta - 175)*q^620 + 1/15*(31*zeta^7 + 14*zeta^6 - 191*zeta^5 - 59*zeta^4 + 
318*zeta^3 + 29*zeta^2 - 125*zeta + 62)*q^621 + 1/45*(zeta^7 - 12*zeta^6 + 
6*zeta^5 + 95*zeta^4 - 55*zeta^3 - 180*zeta^2 + 70*zeta + 60)*q^622 + 
1/45*(-30*zeta^7 - 35*zeta^6 + 146*zeta^5 + 212*zeta^4 - 162*zeta^3 - 321*zeta^2
+ 13*zeta + 10)*q^623 + 1/45*(22*zeta^7 + 114*zeta^6 - 239*zeta^5 - 684*zeta^4 +
746*zeta^3 + 1138*zeta^2 - 622*zeta - 246)*q^624 + 1/45*(-106*zeta^7 - 68*zeta^6
+ 756*zeta^5 + 398*zeta^4 - 1660*zeta^3 - 577*zeta^2 + 1058*zeta + 116)*q^625 + 
1/45*(2*zeta^7 - 3*zeta^6 - 36*zeta^5 - 31*zeta^4 + 105*zeta^3 + 124*zeta^2 - 
70*zeta + 5)*q^626 + 1/45*(24*zeta^7 + 26*zeta^6 - 144*zeta^5 - 152*zeta^4 + 
268*zeta^3 + 252*zeta^2 - 192*zeta - 92)*q^627 + 1/45*(-62*zeta^7 + 22*zeta^6 + 
456*zeta^5 - 95*zeta^4 - 1020*zeta^3 + 18*zeta^2 + 549*zeta + 126)*q^628 + 
1/45*(-7*zeta^7 - 3*zeta^6 + 46*zeta^5 + 24*zeta^4 - 85*zeta^3 - 40*zeta^2 + 
51*zeta - 15)*q^630 + 1/45*(-71*zeta^7 - 38*zeta^6 + 426*zeta^5 + 285*zeta^4 - 
724*zeta^3 - 503*zeta^2 + 366*zeta - 63)*q^631 + 1/45*(49*zeta^7 + 152*zeta^6 - 
171*zeta^5 - 916*zeta^4 - 46*zeta^3 + 1478*zeta^2 + 227*zeta - 554)*q^632 + 
1/45*(-14*zeta^7 - 172*zeta^6 - 61*zeta^5 + 947*zeta^4 + 585*zeta^3 - 
1288*zeta^2 - 583*zeta + 174)*q^633 + 1/45*(98*zeta^7 + 38*zeta^6 - 713*zeta^5 -
228*zeta^4 + 1624*zeta^3 + 312*zeta^2 - 1308*zeta - 38)*q^634 + 
1/45*(-138*zeta^7 - 175*zeta^6 + 802*zeta^5 + 994*zeta^4 - 1155*zeta^3 - 
1407*zeta^2 + 260*zeta + 428)*q^635 + 1/15*(-22*zeta^7 - 2*zeta^6 + 140*zeta^5 -
8*zeta^4 - 254*zeta^3 + 50*zeta^2 + 132*zeta - 24)*q^636 + 1/45*(-157*zeta^7 - 
83*zeta^6 + 982*zeta^5 + 358*zeta^4 - 1696*zeta^3 - 233*zeta^2 + 720*zeta - 
259)*q^637 + 1/15*(-16*zeta^7 - 8*zeta^6 + 108*zeta^5 + 30*zeta^4 - 212*zeta^3 -
12*zeta^2 + 104*zeta - 20)*q^638 + 1/45*(-83*zeta^7 + 18*zeta^6 + 518*zeta^5 - 
211*zeta^4 - 891*zeta^3 + 494*zeta^2 + 398*zeta - 164)*q^639 + 1/45*(-257*zeta^7
- 240*zeta^6 + 1549*zeta^5 + 1308*zeta^4 - 2417*zeta^3 - 1764*zeta^2 + 753*zeta 
+ 592)*q^640 + 1/15*(-32*zeta^7 + 9*zeta^6 + 201*zeta^5 - 54*zeta^4 - 366*zeta^3
+ 107*zeta^2 + 242*zeta - 20)*q^641 + 1/45*(62*zeta^7 + 88*zeta^6 - 473*zeta^5 -
419*zeta^4 + 1125*zeta^3 + 304*zeta^2 - 797*zeta + 42)*q^642 + 1/45*(80*zeta^7 +
198*zeta^6 - 274*zeta^5 - 1134*zeta^4 - 146*zeta^3 + 1780*zeta^2 + 592*zeta - 
754)*q^643 + 1/45*(19*zeta^7 + 14*zeta^6 - 114*zeta^5 - 75*zeta^4 + 218*zeta^3 +
141*zeta^2 - 179*zeta - 121)*q^644 + 1/45*(-79*zeta^7 + 111*zeta^6 + 664*zeta^5 
- 431*zeta^4 - 1756*zeta^3 + 228*zeta^2 + 1512*zeta - 259)*q^645 + 
1/45*(-125*zeta^7 - 71*zeta^6 + 804*zeta^5 + 485*zeta^4 - 1422*zeta^3 - 
740*zeta^2 + 714*zeta - 145)*q^647 + 1/15*(-6*zeta^7 - 19*zeta^6 + 36*zeta^5 + 
112*zeta^4 - 68*zeta^3 - 162*zeta^2 + 39*zeta + 4)*q^648 + 1/15*(-16*zeta^7 - 
28*zeta^6 + 58*zeta^5 + 152*zeta^4 + 28*zeta^3 - 236*zeta^2 - 152*zeta + 
116)*q^649 + 1/45*(-18*zeta^7 + 70*zeta^6 + 303*zeta^5 - 474*zeta^4 - 
1155*zeta^3 + 979*zeta^2 + 1012*zeta - 248)*q^650 + 1/45*(36*zeta^7 + 24*zeta^6 
- 244*zeta^5 - 144*zeta^4 + 493*zeta^3 + 229*zeta^2 - 321*zeta - 62)*q^651 + 
1/15*(18*zeta^7 - 5*zeta^6 - 118*zeta^5 + 44*zeta^4 + 222*zeta^3 - 87*zeta^2 - 
113*zeta + 22)*q^652 + 1/9*(22*zeta^7 + zeta^6 - 133*zeta^5 + 23*zeta^4 + 
221*zeta^3 - 91*zeta^2 - 103*zeta + 48)*q^653 + 1/45*(188*zeta^7 + 28*zeta^6 - 
1208*zeta^5 - 20*zeta^4 + 2120*zeta^3 - 348*zeta^2 - 824*zeta + 516)*q^654 + 
1/45*(-206*zeta^7 + 155*zeta^6 + 1299*zeta^5 - 987*zeta^4 - 2014*zeta^3 + 
1904*zeta^2 + 371*zeta - 1209)*q^655 + 1/45*(-71*zeta^7 + 80*zeta^6 + 473*zeta^5
- 571*zeta^4 - 848*zeta^3 + 950*zeta^2 + 299*zeta - 148)*q^656 + 1/15*(28*zeta^7
+ 31*zeta^6 - 148*zeta^5 - 182*zeta^4 + 191*zeta^3 + 267*zeta^2 - 36*zeta - 
32)*q^657 + 1/45*(14*zeta^7 + 33*zeta^6 - 130*zeta^5 - 198*zeta^4 + 373*zeta^3 +
320*zeta^2 - 329*zeta - 60)*q^658 + 1/45*(4*zeta^7 + 116*zeta^6 + 111*zeta^5 - 
665*zeta^4 - 635*zeta^3 + 1003*zeta^2 + 601*zeta - 170)*q^659 + 1/45*(-10*zeta^7
+ 22*zeta^6 + 54*zeta^5 - 146*zeta^4 - 14*zeta^3 + 220*zeta^2 - 182*zeta - 
46)*q^660 + 1/45*(-27*zeta^7 - 201*zeta^6 + 162*zeta^5 + 1139*zeta^4 - 
364*zeta^3 - 1595*zeta^2 + 263*zeta + 135)*q^661 + 1/45*(66*zeta^7 + 10*zeta^6 -
452*zeta^5 - 108*zeta^4 + 902*zeta^3 + 232*zeta^2 - 510*zeta + 34)*q^662 + 
1/45*(-5*zeta^7 - 15*zeta^6 + 20*zeta^5 + 97*zeta^4 + 10*zeta^3 - 124*zeta^2 + 
6*zeta - 73)*q^664 + 1/45*(5*zeta^7 + 9*zeta^6 - 30*zeta^5 - 55*zeta^4 + 
54*zeta^3 + 83*zeta^2 - 30*zeta - 1)*q^665 + 1/45*(-26*zeta^7 - 49*zeta^6 + 
144*zeta^5 + 371*zeta^4 - 157*zeta^3 - 724*zeta^2 - 34*zeta + 199)*q^666 + 
1/45*(-46*zeta^7 - 54*zeta^6 + 329*zeta^5 + 282*zeta^4 - 725*zeta^3 - 307*zeta^2
+ 476*zeta + 24)*q^667 + 1/45*(-18*zeta^7 - 4*zeta^6 + 85*zeta^5 + 24*zeta^4 - 
47*zeta^3 - 49*zeta^2 - 97*zeta + 44)*q^668 + 1/45*(-19*zeta^7 + 27*zeta^6 + 
163*zeta^5 - 196*zeta^4 - 381*zeta^3 + 345*zeta^2 + 230*zeta - 14)*q^669 + 
1/45*(-24*zeta^7 - 109*zeta^6 + 250*zeta^5 + 813*zeta^4 - 810*zeta^3 - 
1463*zeta^2 + 770*zeta + 456)*q^670 + 1/45*(-26*zeta^7 + 2*zeta^6 + 152*zeta^5 -
22*zeta^4 - 212*zeta^3 + 82*zeta^2 + 40*zeta - 106)*q^671 + 1/45*(-59*zeta^7 - 
37*zeta^6 + 410*zeta^5 + 146*zeta^4 - 848*zeta^3 - 95*zeta^2 + 448*zeta - 
37)*q^672 + 1/45*(-59*zeta^7 - 87*zeta^6 + 441*zeta^5 + 596*zeta^4 - 1048*zeta^3
- 987*zeta^2 + 799*zeta + 276)*q^673 + 1/45*(173*zeta^7 + 95*zeta^6 - 
1081*zeta^5 - 462*zeta^4 + 1818*zeta^3 + 531*zeta^2 - 707*zeta - 228)*q^674 + 
1/15*(22*zeta^7 - 25*zeta^6 - 146*zeta^5 + 150*zeta^4 + 304*zeta^3 - 275*zeta^2 
- 272*zeta + 78)*q^675 + 1/45*(-66*zeta^7 - 50*zeta^6 + 455*zeta^5 + 298*zeta^4 
- 955*zeta^3 - 457*zeta^2 + 584*zeta + 96)*q^676 + 1/45*(61*zeta^7 + 190*zeta^6 
- 176*zeta^5 - 1072*zeta^4 - 204*zeta^3 + 1628*zeta^2 + 427*zeta - 692)*q^677 + 
1/45*(zeta^7 + 95*zeta^6 - 6*zeta^5 - 539*zeta^4 + 42*zeta^3 + 731*zeta^2 - 
22*zeta - 1)*q^678 + 1/45*(46*zeta^7 - 2*zeta^6 - 324*zeta^5 - 4*zeta^4 + 
678*zeta^3 + 64*zeta^2 - 330*zeta - 82)*q^679 + 1/45*(-143*zeta^7 - 117*zeta^6 +
884*zeta^5 + 642*zeta^4 - 1430*zeta^3 - 842*zeta^2 + 327*zeta + 201)*q^681 + 
1/45*(68*zeta^7 + 126*zeta^6 - 408*zeta^5 - 732*zeta^4 + 772*zeta^3 + 
1120*zeta^2 - 536*zeta - 232)*q^682 + 1/45*(42*zeta^7 + 138*zeta^6 - 134*zeta^5 
- 814*zeta^4 - 82*zeta^3 + 1284*zeta^2 + 214*zeta - 498)*q^683 + 1/45*(20*zeta^7
+ 30*zeta^6 - 133*zeta^5 - 162*zeta^4 + 265*zeta^3 + 200*zeta^2 - 160*zeta - 
24)*q^684 + 1/45*(-44*zeta^7 + 75*zeta^6 + 289*zeta^5 - 450*zeta^4 - 604*zeta^3 
+ 811*zeta^2 + 584*zeta - 228)*q^685 + 1/45*(39*zeta^7 - 26*zeta^6 - 231*zeta^5 
+ 174*zeta^4 + 416*zeta^3 - 288*zeta^2 - 232*zeta + 170)*q^686 + 
1/45*(-34*zeta^7 + 57*zeta^6 + 133*zeta^5 - 509*zeta^4 + 39*zeta^3 + 1057*zeta^2
- 257*zeta - 400)*q^687 + 1/45*(163*zeta^7 - 10*zeta^6 - 941*zeta^5 + 118*zeta^4
+ 1272*zeta^3 - 481*zeta^2 - 209*zeta + 668)*q^688 + 1/45*(-190*zeta^7 - 
206*zeta^6 + 1096*zeta^5 + 1060*zeta^4 - 1696*zeta^3 - 1254*zeta^2 + 748*zeta - 
54)*q^689 + 1/45*(-15*zeta^7 - 44*zeta^6 + 153*zeta^5 + 345*zeta^4 - 472*zeta^3 
- 654*zeta^2 + 411*zeta + 236)*q^690 + 1/45*(-251*zeta^7 - 131*zeta^6 + 
1551*zeta^5 + 638*zeta^4 - 2588*zeta^3 - 735*zeta^2 + 1009*zeta + 260)*q^691 + 
1/45*(102*zeta^7 + 106*zeta^6 - 633*zeta^5 - 636*zeta^4 + 1057*zeta^3 + 
1077*zeta^2 - 377*zeta - 348)*q^692 + 1/15*(-12*zeta^7 + 4*zeta^6 + 84*zeta^5 - 
6*zeta^4 - 180*zeta^3 - 44*zeta^2 + 106*zeta + 28)*q^693 + 1/45*(56*zeta^7 + 
77*zeta^6 - 302*zeta^5 - 583*zeta^4 + 277*zeta^3 + 1168*zeta^2 + 220*zeta - 
343)*q^694 + 1/45*(53*zeta^7 + 235*zeta^6 - 318*zeta^5 - 1317*zeta^4 + 
676*zeta^3 + 1893*zeta^2 - 541*zeta - 353)*q^695 + 1/15*(-9*zeta^7 - 3*zeta^6 + 
60*zeta^5 + 22*zeta^4 - 114*zeta^3 - 38*zeta^2 + 57*zeta - 1)*q^696 + 
1/45*(-138*zeta^7 - 114*zeta^6 + 852*zeta^5 + 616*zeta^4 - 1374*zeta^3 - 
800*zeta^2 + 282*zeta + 230)*q^698 + 1/15*(63*zeta^7 + 79*zeta^6 - 378*zeta^5 - 
469*zeta^4 + 698*zeta^3 + 753*zeta^2 - 474*zeta - 187)*q^699 + 1/45*(-3*zeta^7 +
29*zeta^5 + 28*zeta^4 - 62*zeta^3 - 90*zeta^2 + 23*zeta + 6)*q^700 + 
1/45*(80*zeta^7 + 2*zeta^6 - 648*zeta^5 - zeta^4 + 1640*zeta^3 - 75*zeta^2 - 
1161*zeta + 18)*q^701 + 1/15*(29*zeta^6 + 5*zeta^5 - 174*zeta^4 - 42*zeta^3 + 
307*zeta^2 + 110*zeta - 92)*q^702 + 1/45*(11*zeta^7 + 23*zeta^6 - 71*zeta^5 - 
130*zeta^4 + 106*zeta^3 + 183*zeta^2 - 15*zeta - 88)*q^703 + 1/45*(-106*zeta^7 +
22*zeta^6 + 694*zeta^5 - 224*zeta^4 - 1288*zeta^3 + 478*zeta^2 + 634*zeta - 
104)*q^704 + 1/45*(128*zeta^7 + 79*zeta^6 - 755*zeta^5 - 377*zeta^4 + 
1166*zeta^3 + 330*zeta^2 - 431*zeta + 219)*q^705 + 1/45*(75*zeta^7 + 57*zeta^6 -
558*zeta^5 - 222*zeta^4 + 1272*zeta^3 + 167*zeta^2 - 740*zeta - 23)*q^706 + 
1/45*(-57*zeta^7 + 11*zeta^6 + 394*zeta^5 - 90*zeta^4 - 789*zeta^3 + 157*zeta^2 
+ 422*zeta + 12)*q^707 + 1/15*(17*zeta^7 + 16*zeta^6 - 97*zeta^5 - 90*zeta^4 + 
142*zeta^3 + 126*zeta^2 - 40*zeta - 26)*q^708 + 1/45*(100*zeta^7 + 169*zeta^6 - 
585*zeta^5 - 1014*zeta^4 + 808*zeta^3 + 1757*zeta^2 + 60*zeta - 572)*q^709 + 
1/45*(-52*zeta^7 - 278*zeta^6 + 59*zeta^5 + 1608*zeta^4 + 745*zeta^3 - 
2454*zeta^2 - 918*zeta + 436)*q^710 + 1/15*(8*zeta^7 + 26*zeta^6 - 33*zeta^5 - 
168*zeta^4 + 14*zeta^3 + 286*zeta^2 + 12*zeta - 94)*q^711 + 1/45*(61*zeta^7 + 
87*zeta^6 - 366*zeta^5 - 525*zeta^4 + 668*zeta^3 + 821*zeta^2 - 421*zeta - 
113)*q^712 + 1/45*(-107*zeta^7 - 13*zeta^6 + 736*zeta^5 + 151*zeta^4 - 
1480*zeta^3 - 344*zeta^2 + 822*zeta - 23)*q^713 + 1/45*(-24*zeta^7 + 132*zeta^6 
+ 300*zeta^5 - 646*zeta^4 - 1074*zeta^3 + 608*zeta^2 + 978*zeta + 16)*q^715 + 
1/45*(-5*zeta^7 + 51*zeta^6 + 30*zeta^5 - 279*zeta^4 - 28*zeta^3 + 371*zeta^2 - 
zeta - 35)*q^716 + 1/45*(-20*zeta^7 + 13*zeta^6 + 136*zeta^5 - 19*zeta^4 - 
171*zeta^3 - 100*zeta^2 - 128*zeta + 1)*q^717 + 1/45*(40*zeta^7 + 118*zeta^6 - 
147*zeta^5 - 704*zeta^4 - 65*zeta^3 + 1140*zeta^2 + 246*zeta - 228)*q^718 + 
1/45*(-106*zeta^7 + 41*zeta^6 + 718*zeta^5 - 246*zeta^4 - 1505*zeta^3 + 
498*zeta^2 + 1221*zeta - 152)*q^719 + 1/45*(-94*zeta^7 - 117*zeta^6 + 550*zeta^5
+ 662*zeta^4 - 801*zeta^3 - 933*zeta^2 + 188*zeta + 292)*q^720 + 1/45*(44*zeta^7
- 30*zeta^6 - 307*zeta^5 + 208*zeta^4 + 605*zeta^3 - 328*zeta^2 - 285*zeta + 
16)*q^721 + 1/45*(145*zeta^7 - 4*zeta^6 - 949*zeta^5 + 134*zeta^4 + 1696*zeta^3 
- 499*zeta^2 - 645*zeta + 466)*q^722 + 1/15*(62*zeta^7 - 11*zeta^6 - 411*zeta^5 
+ 111*zeta^4 + 742*zeta^3 - 296*zeta^2 - 275*zeta + 225)*q^723 + 1/45*(13*zeta^7
- 46*zeta^6 - 162*zeta^5 + 221*zeta^4 + 477*zeta^3 - 162*zeta^2 - 266*zeta - 
164)*q^724 + 1/45*(92*zeta^7 + 42*zeta^6 - 560*zeta^5 - 202*zeta^4 + 927*zeta^3 
+ 228*zeta^2 - 367*zeta - 50)*q^725 + 1/45*(-20*zeta^7 - 72*zeta^6 + 136*zeta^5 
+ 432*zeta^4 - 247*zeta^3 - 743*zeta^2 + 35*zeta + 210)*q^726 + 1/45*(178*zeta^7
+ 306*zeta^6 - 1024*zeta^5 - 1777*zeta^4 + 1560*zeta^3 + 2676*zeta^2 - 645*zeta 
- 494)*q^727 + 1/45*(17*zeta^7 + 12*zeta^6 - 80*zeta^5 - 74*zeta^4 + 26*zeta^3 +
148*zeta^2 + 159*zeta - 70)*q^728 + 1/5*(-2*zeta^7 - 20*zeta^6 + 12*zeta^5 + 
114*zeta^4 - 28*zeta^3 - 158*zeta^2 + 18*zeta + 6)*q^729 + 1/45*(-22*zeta^7 + 
154*zeta^5 + 31*zeta^4 - 319*zeta^3 - 84*zeta^2 + 225*zeta - 58)*q^730 + 
1/45*(-10*zeta^7 - 12*zeta^6 + 58*zeta^5 + 61*zeta^4 - 79*zeta^3 - 72*zeta^2 - 
9*zeta + 26)*q^732 + 1/45*(-66*zeta^7 - 87*zeta^6 + 396*zeta^5 + 514*zeta^4 - 
734*zeta^3 - 820*zeta^2 + 502*zeta + 204)*q^733 + 1/45*(-59*zeta^7 - 151*zeta^6 
+ 232*zeta^5 + 931*zeta^4 - 17*zeta^3 - 1552*zeta^2 - 297*zeta + 571)*q^734 + 
1/45*(62*zeta^7 + 168*zeta^6 - 265*zeta^5 - 987*zeta^4 + 85*zeta^3 + 1544*zeta^2
+ 203*zeta - 294)*q^735 + 1/45*(-56*zeta^7 - 91*zeta^6 + 443*zeta^5 + 546*zeta^4
- 1089*zeta^3 - 888*zeta^2 + 841*zeta + 194)*q^736 + 1/45*(184*zeta^7 + 
48*zeta^6 - 1136*zeta^5 - 180*zeta^4 + 1942*zeta^3 + 108*zeta^2 - 834*zeta + 
4)*q^737 + 1/15*(zeta^7 + 25*zeta^6 + 12*zeta^5 - 142*zeta^4 - 53*zeta^3 + 
171*zeta^2 + 4*zeta + 20)*q^738 + 1/45*(11*zeta^7 + 64*zeta^6 - 97*zeta^5 - 
331*zeta^4 + 318*zeta^3 + 473*zeta^2 - 299*zeta - 204)*q^739 + 1/45*(-25*zeta^7 
- 107*zeta^6 + 126*zeta^5 + 588*zeta^4 - 212*zeta^3 - 849*zeta^2 + 212*zeta + 
241)*q^740 + 1/45*(-12*zeta^7 + 43*zeta^6 + 105*zeta^5 - 261*zeta^4 - 235*zeta^3
+ 351*zeta^2 + 75*zeta + 8)*q^741 + 1/45*(-26*zeta^7 - 36*zeta^6 + 146*zeta^5 + 
208*zeta^4 - 198*zeta^3 - 300*zeta^2 + 34*zeta + 80)*q^742 + 1/45*(-124*zeta^7 -
54*zeta^6 + 780*zeta^5 + 324*zeta^4 - 1380*zeta^3 - 518*zeta^2 + 724*zeta + 
188)*q^743 + 1/45*(10*zeta^7 + 90*zeta^6 + 49*zeta^5 - 534*zeta^4 - 445*zeta^3 +
865*zeta^2 + 460*zeta - 168)*q^744 + 1/45*(-89*zeta^7 - 205*zeta^6 + 328*zeta^5 
+ 1201*zeta^4 + 85*zeta^3 - 1936*zeta^2 - 627*zeta + 793)*q^745 + 
1/45*(15*zeta^7 + 125*zeta^6 - 90*zeta^5 - 707*zeta^4 + 208*zeta^3 + 987*zeta^2 
- 153*zeta - 83)*q^746 + 1/45*(14*zeta^7 - 30*zeta^6 - 128*zeta^5 + 165*zeta^4 +
368*zeta^3 - 166*zeta^2 - 219*zeta - 102)*q^747 + 1/45*(58*zeta^7 + 76*zeta^6 - 
330*zeta^5 - 427*zeta^4 + 423*zeta^3 + 532*zeta^2 - 33*zeta + 14)*q^749 + 
1/45*(-48*zeta^7 - 118*zeta^6 + 288*zeta^5 + 682*zeta^4 - 554*zeta^3 - 
1014*zeta^2 + 381*zeta + 160)*q^750 + 1/45*(83*zeta^7 + 149*zeta^6 - 375*zeta^5 
- 963*zeta^4 + 155*zeta^3 + 1714*zeta^2 + 477*zeta - 613)*q^751 + 
1/45*(-160*zeta^7 - 236*zeta^6 + 979*zeta^5 + 1363*zeta^4 - 1695*zeta^3 - 
2015*zeta^2 + 853*zeta + 366)*q^752 + 1/45*(-8*zeta^7 + 3*zeta^6 + 171*zeta^5 - 
18*zeta^4 - 756*zeta^3 + 95*zeta^2 + 968*zeta - 128)*q^753 + 1/45*(35*zeta^7 - 
15*zeta^6 - 203*zeta^5 + 104*zeta^4 + 351*zeta^3 - 177*zeta^2 - 184*zeta + 
130)*q^754 + 1/45*(-138*zeta^7 - 76*zeta^6 + 961*zeta^5 + 468*zeta^4 - 
2025*zeta^3 - 698*zeta^2 + 1295*zeta + 216)*q^755 + 1/15*(-11*zeta^7 - 22*zeta^6
+ 63*zeta^5 + 117*zeta^4 - 106*zeta^3 - 157*zeta^2 + 65*zeta + 30)*q^756 + 
1/45*(-48*zeta^7 + 57*zeta^6 + 319*zeta^5 - 353*zeta^4 - 530*zeta^3 + 634*zeta^2
+ 103*zeta - 335)*q^757 + 1/45*(31*zeta^7 - 50*zeta^6 - 213*zeta^5 + 341*zeta^4 
+ 388*zeta^3 - 540*zeta^2 - 119*zeta + 68)*q^758 + 1/45*(-70*zeta^7 - 24*zeta^6 
+ 382*zeta^5 + 128*zeta^4 - 570*zeta^3 - 168*zeta^2 + 218*zeta - 104)*q^759 + 
1/45*(14*zeta^7 - 30*zeta^6 - 97*zeta^5 + 180*zeta^4 + 223*zeta^3 - 325*zeta^2 -
239*zeta + 96)*q^760 + 1/45*(-98*zeta^7 - 156*zeta^6 + 570*zeta^5 + 916*zeta^4 -
890*zeta^3 - 1411*zeta^2 + 380*zeta + 272)*q^761 + 1/45*(-36*zeta^7 - 83*zeta^6 
+ 146*zeta^5 + 513*zeta^4 - 19*zeta^3 - 864*zeta^2 - 200*zeta + 321)*q^762 + 
1/45*(-28*zeta^7 - 28*zeta^6 + 168*zeta^5 + 172*zeta^4 - 304*zeta^3 - 284*zeta^2
+ 196*zeta + 60)*q^763 + 1/45*(-54*zeta^7 - 40*zeta^6 + 338*zeta^5 + 218*zeta^4 
- 563*zeta^3 - 290*zeta^2 + 138*zeta + 90)*q^764 + 1/45*(32*zeta^7 + 90*zeta^6 -
134*zeta^5 - 421*zeta^4 - 31*zeta^3 + 424*zeta^2 + 435*zeta - 212)*q^766 + 
1/45*(-51*zeta^7 - 262*zeta^6 + 306*zeta^5 + 1477*zeta^4 - 656*zeta^3 - 
2103*zeta^2 + 504*zeta + 301)*q^767 + 1/45*(-41*zeta^7 - 75*zeta^6 + 227*zeta^5 
+ 569*zeta^4 - 245*zeta^3 - 1114*zeta^2 - 63*zeta + 307)*q^768 + 
1/45*(-116*zeta^7 - 162*zeta^6 + 686*zeta^5 + 971*zeta^4 - 1110*zeta^3 - 
1557*zeta^2 + 495*zeta + 322)*q^769 + 1/45*(16*zeta^7 + 18*zeta^6 - 82*zeta^5 - 
108*zeta^4 + 70*zeta^3 + 192*zeta^2 + 74*zeta - 76)*q^770 + 1/45*(91*zeta^7 + 
18*zeta^6 - 559*zeta^5 - 56*zeta^4 + 957*zeta^3 + 6*zeta^2 - 419*zeta + 
32)*q^771 + 1/45*(175*zeta^7 + 63*zeta^6 - 1106*zeta^5 - 238*zeta^4 + 
2023*zeta^3 + 49*zeta^2 - 1134*zeta + 140)*q^772 + 1/45*(173*zeta^7 + 61*zeta^6 
- 1096*zeta^5 - 220*zeta^4 + 1908*zeta^3 - 11*zeta^2 - 778*zeta + 373)*q^773 + 
1/45*(29*zeta^7 - 2*zeta^6 - 101*zeta^5 - 11*zeta^4 - 106*zeta^3 - 21*zeta^2 + 
229*zeta + 186)*q^774 + 1/45*(-33*zeta^7 - 102*zeta^6 + 373*zeta^5 + 837*zeta^4 
- 1210*zeta^3 - 1652*zeta^2 + 1055*zeta + 644)*q^775 + 1/45*(28*zeta^7 + 
66*zeta^6 - 156*zeta^5 - 388*zeta^4 + 182*zeta^3 + 570*zeta^2 + 20*zeta - 
192)*q^776 + 1/45*(-62*zeta^7 - 48*zeta^6 + 401*zeta^5 + 288*zeta^4 - 740*zeta^3
- 474*zeta^2 + 392*zeta + 146)*q^777 + 1/15*(-26*zeta^7 - 30*zeta^6 + 191*zeta^5
+ 152*zeta^4 - 435*zeta^3 - 147*zeta^2 + 294*zeta + 4)*q^778 + 1/45*(-6*zeta^7 -
35*zeta^6 - zeta^5 + 183*zeta^4 + 77*zeta^3 - 246*zeta^2 - 50*zeta + 117)*q^779 
+ 1/45*(22*zeta^7 + 2*zeta^6 - 132*zeta^5 - 44*zeta^4 + 210*zeta^3 + 92*zeta^2 -
73*zeta + 86)*q^780 + 1/45*(38*zeta^7 + 42*zeta^6 - 224*zeta^5 - 290*zeta^4 + 
320*zeta^3 + 408*zeta^2 - 216*zeta + 206)*q^781 + 1/15*(-7*zeta^7 - 3*zeta^6 + 
46*zeta^5 + 24*zeta^4 - 85*zeta^3 - 40*zeta^2 + 51*zeta - 15)*q^783 + 
1/45*(-110*zeta^7 - 177*zeta^6 + 660*zeta^5 + 1056*zeta^4 - 1216*zeta^3 - 
1630*zeta^2 + 779*zeta + 232)*q^784 + 1/45*(-25*zeta^7 - 176*zeta^6 + 53*zeta^5 
+ 1088*zeta^4 + 62*zeta^3 - 1730*zeta^2 + 141*zeta + 578)*q^785 + 
1/45*(-78*zeta^7 - 214*zeta^6 + 346*zeta^5 + 1241*zeta^4 - 170*zeta^3 - 
1886*zeta^2 - 191*zeta + 342)*q^786 + 1/45*(208*zeta^7 + 86*zeta^6 - 1256*zeta^5
- 516*zeta^4 + 2029*zeta^3 + 847*zeta^2 - 833*zeta - 354)*q^787 + 
1/45*(18*zeta^7 + 51*zeta^6 - 46*zeta^5 - 328*zeta^4 - 68*zeta^3 + 525*zeta^2 + 
125*zeta - 22)*q^788 + 1/9*(21*zeta^7 - 22*zeta^6 - 159*zeta^5 + 135*zeta^4 + 
340*zeta^3 - 180*zeta^2 - 165*zeta - 20)*q^789 + 1/45*(-270*zeta^7 - 39*zeta^6 +
1635*zeta^5 + 72*zeta^4 - 2544*zeta^3 + 410*zeta^2 + 781*zeta - 845)*q^790 + 
1/45*(39*zeta^7 + 93*zeta^6 - 230*zeta^5 - 494*zeta^4 + 424*zeta^3 + 675*zeta^2 
- 292*zeta - 163)*q^791 + 1/15*(22*zeta^7 + 4*zeta^6 - 154*zeta^5 - 22*zeta^4 + 
320*zeta^3 + 32*zeta^2 - 190*zeta - 24)*q^792 + 1/45*(-99*zeta^7 - 58*zeta^6 + 
611*zeta^5 + 290*zeta^4 - 1012*zeta^3 - 348*zeta^2 + 384*zeta + 126)*q^793 + 
1/45*(-70*zeta^7 - 36*zeta^6 + 537*zeta^5 + 216*zeta^4 - 1308*zeta^3 - 
302*zeta^2 + 1120*zeta + 26)*q^794 + 1/15*(36*zeta^7 + 72*zeta^6 - 182*zeta^5 - 
430*zeta^4 + 190*zeta^3 + 692*zeta^2 - 10*zeta - 140)*q^795 + 1/45*(19*zeta^7 - 
4*zeta^6 - 41*zeta^5 + 136*zeta^4 - 182*zeta^3 - 334*zeta^2 + 441*zeta - 
26)*q^796 + 1/45*(-54*zeta^7 - 222*zeta^6 + 324*zeta^5 + 1276*zeta^4 - 
650*zeta^3 - 1828*zeta^2 + 433*zeta + 162)*q^797 + 1/45*(39*zeta^7 + 21*zeta^6 -
252*zeta^5 - 125*zeta^4 + 450*zeta^3 + 184*zeta^2 - 168*zeta - 37)*q^798 + 
1/45*(118*zeta^7 + 34*zeta^6 - 792*zeta^5 - 251*zeta^4 + 1524*zeta^3 + 
450*zeta^2 - 747*zeta - 30)*q^800 + 1/45*(93*zeta^7 + 26*zeta^6 - 558*zeta^5 - 
191*zeta^4 + 988*zeta^3 + 429*zeta^2 - 642*zeta - 203)*q^801 + 1/45*(-88*zeta^7 
- 233*zeta^6 + 310*zeta^5 + 1371*zeta^4 + 111*zeta^3 - 2192*zeta^2 - 556*zeta + 
875)*q^802 + 1/45*(-100*zeta^7 + 24*zeta^6 + 704*zeta^5 - 12*zeta^4 - 
1520*zeta^3 - 370*zeta^2 + 908*zeta + 216)*q^803 + 1/45*(72*zeta^7 + 99*zeta^6 -
545*zeta^5 - 594*zeta^4 + 1274*zeta^3 + 965*zeta^2 - 942*zeta - 220)*q^804 + 
1/45*(17*zeta^7 + 34*zeta^6 - 89*zeta^5 - 202*zeta^4 + 98*zeta^3 + 300*zeta^2 + 
10*zeta - 78)*q^805 + 1/45*(-12*zeta^7 + 125*zeta^6 + 61*zeta^5 - 855*zeta^4 + 
33*zeta^3 + 1381*zeta^2 - 289*zeta - 264)*q^806 + 1/45*(-117*zeta^7 - 69*zeta^6 
+ 732*zeta^5 + 306*zeta^4 - 1272*zeta^3 - 233*zeta^2 + 554*zeta - 169)*q^807 + 
1/45*(83*zeta^7 + 46*zeta^6 - 509*zeta^5 - 206*zeta^4 + 848*zeta^3 + 151*zeta^2 
- 345*zeta + 140)*q^808 + 1/45*(195*zeta^7 + 133*zeta^6 - 1301*zeta^5 - 
762*zeta^4 + 2620*zeta^3 + 997*zeta^2 - 1675*zeta - 164)*q^809 + 1/15*(41*zeta^7
+ 30*zeta^6 - 253*zeta^5 - 156*zeta^4 + 413*zeta^3 + 198*zeta^2 - 147*zeta - 
76)*q^810 + 1/45*(44*zeta^7 - 61*zeta^6 - 367*zeta^5 + 366*zeta^4 + 1026*zeta^3 
- 703*zeta^2 - 1134*zeta + 264)*q^811 + 1/45*(34*zeta^7 + 30*zeta^6 - 233*zeta^5
- 174*zeta^4 + 485*zeta^3 + 253*zeta^2 - 296*zeta - 48)*q^812 + 1/45*(-51*zeta^7
- 136*zeta^6 + 238*zeta^5 + 918*zeta^4 - 170*zeta^3 - 1632*zeta^2 - 85*zeta + 
510)*q^813 + 1/45*(-52*zeta^7 - 86*zeta^6 + 312*zeta^5 + 488*zeta^4 - 600*zeta^3
- 764*zeta^2 + 454*zeta + 256)*q^814 + 1/15*(18*zeta^7 - 14*zeta^6 - 140*zeta^5 
+ 39*zeta^4 + 338*zeta^3 + 10*zeta^2 - 285*zeta + 70)*q^815 + 1/45*(4*zeta^7 + 
52*zeta^6 + 24*zeta^5 - 233*zeta^4 - 228*zeta^3 + 210*zeta^2 + 369*zeta - 
120)*q^817 + 1/45*(-107*zeta^7 - 198*zeta^6 + 642*zeta^5 + 1153*zeta^4 - 
1212*zeta^3 - 1763*zeta^2 + 834*zeta + 349)*q^818 + 1/45*(29*zeta^7 + 7*zeta^6 -
159*zeta^5 - 77*zeta^4 + 121*zeta^3 + 226*zeta^2 + 235*zeta - 79)*q^819 + 
1/45*(54*zeta^7 - 2*zeta^6 - 400*zeta^5 - 23*zeta^4 + 920*zeta^3 + 128*zeta^2 - 
595*zeta - 66)*q^820 + 1/45*(8*zeta^7 + 15*zeta^6 - 135*zeta^5 - 90*zeta^4 + 
549*zeta^3 + 112*zeta^2 - 653*zeta + 38)*q^821 + 1/45*(-260*zeta^7 - 117*zeta^6 
+ 1568*zeta^5 + 568*zeta^4 - 2574*zeta^3 - 651*zeta^2 + 1015*zeta + 98)*q^822 + 
1/45*(-15*zeta^7 + 84*zeta^6 + 52*zeta^5 - 621*zeta^4 + 95*zeta^3 + 1096*zeta^2 
- 280*zeta - 292)*q^823 + 1/45*(-225*zeta^7 - 51*zeta^6 + 1380*zeta^5 + 
153*zeta^4 - 2226*zeta^3 + 205*zeta^2 + 764*zeta - 625)*q^824 + 1/45*(16*zeta^7 
- 16*zeta^6 - 28*zeta^5 + 62*zeta^4 - 212*zeta^3 - 108*zeta^2 + 272*zeta + 
180)*q^825 + 1/45*(7*zeta^7 - 16*zeta^5 + 41*zeta^4 - 51*zeta^3 - 148*zeta^2 + 
68*zeta + 100)*q^826 + 1/45*(202*zeta^7 + 186*zeta^6 - 1214*zeta^5 - 1014*zeta^4
+ 1891*zeta^3 + 1368*zeta^2 - 591*zeta - 446)*q^827 + 1/45*(-38*zeta^7 - 
57*zeta^6 + 312*zeta^5 + 342*zeta^4 - 804*zeta^3 - 547*zeta^2 + 668*zeta + 
106)*q^828 + 1/45*(86*zeta^7 + 16*zeta^6 - 606*zeta^5 - 154*zeta^4 + 1310*zeta^3
+ 407*zeta^2 - 802*zeta - 148)*q^829 + 1/45*(12*zeta^7 + 63*zeta^6 - 31*zeta^5 -
383*zeta^4 - 29*zeta^3 + 606*zeta^2 - 4*zeta - 213)*q^830 + 1/45*(22*zeta^7 + 
175*zeta^6 - 132*zeta^5 - 1030*zeta^4 + 262*zeta^3 + 1424*zeta^2 - 82*zeta + 
120)*q^831 + 1/45*(74*zeta^7 - 52*zeta^6 - 570*zeta^5 + 205*zeta^4 + 1359*zeta^3
- 76*zeta^2 - 921*zeta - 2)*q^832 + 1/45*(94*zeta^7 + 12*zeta^6 - 646*zeta^5 - 
136*zeta^4 + 1297*zeta^3 + 306*zeta^2 - 720*zeta + 22)*q^834 + 1/45*(-7*zeta^7 -
61*zeta^6 + 42*zeta^5 + 333*zeta^4 - 110*zeta^3 - 469*zeta^2 + 114*zeta + 
111)*q^835 + 1/45*(8*zeta^7 + 6*zeta^6 - 44*zeta^5 - 50*zeta^4 + 38*zeta^3 + 
112*zeta^2 + 48*zeta - 34)*q^836 + 1/15*(6*zeta^7 + 56*zeta^6 + 24*zeta^5 - 
324*zeta^4 - 240*zeta^3 + 497*zeta^2 + 248*zeta - 88)*q^837 + 1/45*(26*zeta^7 - 
61*zeta^6 - 168*zeta^5 + 366*zeta^4 + 350*zeta^3 - 653*zeta^2 - 366*zeta + 
182)*q^838 + 1/45*(-341*zeta^7 - 79*zeta^6 + 2153*zeta^5 + 250*zeta^4 - 
3764*zeta^3 - 39*zeta^2 + 1649*zeta + 72)*q^839 + 1/45*(19*zeta^7 - 6*zeta^6 - 
115*zeta^5 + 65*zeta^4 + 186*zeta^3 - 148*zeta^2 - 73*zeta + 52)*q^840 + 
1/45*(50*zeta^7 - 92*zeta^6 - 292*zeta^5 + 527*zeta^4 + 318*zeta^3 - 892*zeta^2 
+ 130*zeta + 498)*q^841 + 1/45*(184*zeta^7 + 32*zeta^6 - 1148*zeta^5 - 62*zeta^4
+ 1908*zeta^3 - 268*zeta^2 - 680*zeta + 524)*q^842 + 1/45*(-79*zeta^7 - 
51*zeta^6 + 424*zeta^5 + 166*zeta^4 - 585*zeta^3 + 79*zeta^2 + 280*zeta - 
268)*q^843 + 1/45*(-107*zeta^7 + 64*zeta^6 + 735*zeta^5 - 484*zeta^4 - 
1463*zeta^3 + 876*zeta^2 + 799*zeta - 184)*q^844 + 1/45*(68*zeta^7 + 18*zeta^6 -
386*zeta^5 - 108*zeta^4 + 533*zeta^3 + 183*zeta^2 - 113*zeta - 110)*q^845 + 
1/15*(-22*zeta^7 - 52*zeta^6 + 134*zeta^5 + 276*zeta^4 - 230*zeta^3 - 329*zeta^2
+ 124*zeta + 32)*q^846 + 1/45*(-28*zeta^7 - 5*zeta^6 + 131*zeta^5 + 17*zeta^4 - 
25*zeta^3 - 62*zeta^2 - 324*zeta + 71)*q^847 + 1/45*(-108*zeta^7 - 178*zeta^6 + 
648*zeta^5 + 1096*zeta^4 - 1160*zeta^3 - 1668*zeta^2 + 642*zeta + 16)*q^848 + 
1/45*(162*zeta^7 + 84*zeta^6 - 1050*zeta^5 - 547*zeta^4 + 1887*zeta^3 + 
836*zeta^2 - 849*zeta + 22)*q^849 + 1/45*(124*zeta^7 + 62*zeta^6 - 806*zeta^5 - 
393*zeta^4 + 1457*zeta^3 + 600*zeta^2 - 621*zeta - 40)*q^851 + 1/45*(-zeta^7 - 
61*zeta^6 + 6*zeta^5 + 325*zeta^4 - 52*zeta^3 - 449*zeta^2 + 91*zeta + 
129)*q^852 + 1/45*(15*zeta^7 + 98*zeta^6 - zeta^5 - 538*zeta^4 - 168*zeta^3 + 
762*zeta^2 + 69*zeta - 324)*q^853 + 1/45*(-8*zeta^7 - 20*zeta^6 + 43*zeta^5 + 
111*zeta^4 - 55*zeta^3 - 151*zeta^2 + 17*zeta + 22)*q^854 + 1/45*(4*zeta^7 - 
15*zeta^6 - 33*zeta^5 + 90*zeta^4 + 96*zeta^3 - 163*zeta^2 - 124*zeta + 
52)*q^855 + 1/45*(73*zeta^7 - 6*zeta^6 - 501*zeta^5 + 104*zeta^4 + 959*zeta^3 - 
258*zeta^2 - 469*zeta - 24)*q^856 + 1/45*(129*zeta^7 + 24*zeta^6 - 955*zeta^5 - 
195*zeta^4 + 2116*zeta^3 + 422*zeta^2 - 1313*zeta - 308)*q^857 + 
1/45*(-158*zeta^7 - 58*zeta^6 + 1076*zeta^5 + 176*zeta^4 - 2120*zeta^3 + 
66*zeta^2 + 1016*zeta - 258)*q^858 + 1/45*(55*zeta^7 - 187*zeta^6 - 438*zeta^5 +
1110*zeta^4 + 848*zeta^3 - 1813*zeta^2 - 124*zeta + 717)*q^859 + 1/45*(21*zeta^7
- 29*zeta^6 - 110*zeta^5 + 240*zeta^4 + 109*zeta^3 - 467*zeta^2 + 38*zeta + 
148)*q^860 + 1/45*(62*zeta^7 + 45*zeta^6 - 350*zeta^5 - 250*zeta^4 + 519*zeta^3 
+ 345*zeta^2 - 166*zeta - 32)*q^861 + 1/45*(-124*zeta^7 - 21*zeta^6 + 899*zeta^5
+ 126*zeta^4 - 2051*zeta^3 - 112*zeta^2 + 1699*zeta - 30)*q^862 + 
1/45*(104*zeta^7 - 98*zeta^6 - 928*zeta^5 + 537*zeta^4 + 2560*zeta^3 - 
777*zeta^2 - 1887*zeta + 94)*q^863 + 1/15*(-12*zeta^7 - 17*zeta^6 + 51*zeta^5 + 
101*zeta^4 - 5*zeta^3 - 174*zeta^2 - 100*zeta + 75)*q^864 + 1/45*(-207*zeta^7 - 
447*zeta^6 + 1242*zeta^5 + 2653*zeta^4 - 2306*zeta^3 - 3961*zeta^2 + 1414*zeta +
315)*q^865 + 1/45*(-50*zeta^7 - 94*zeta^6 + 256*zeta^5 + 462*zeta^4 - 208*zeta^3
- 504*zeta^2 - 288*zeta + 182)*q^866 + 1/45*(27*zeta^7 + 25*zeta^6 - 164*zeta^5 
- 143*zeta^4 + 254*zeta^3 + 188*zeta^2 - 66*zeta - 9)*q^868 + 1/45*(48*zeta^7 + 
166*zeta^6 - 288*zeta^5 - 928*zeta^4 + 596*zeta^3 + 1356*zeta^2 - 480*zeta - 
316)*q^869 + 1/15*(5*zeta^7 + 15*zeta^6 - 18*zeta^5 - 91*zeta^4 - 3*zeta^3 + 
148*zeta^2 + 23*zeta - 55)*q^870 + 1/45*(104*zeta^7 + 282*zeta^6 - 576*zeta^5 - 
1525*zeta^4 + 800*zeta^3 + 1933*zeta^2 - 317*zeta - 230)*q^871 + 
1/45*(-32*zeta^7 + 96*zeta^6 + 216*zeta^5 - 576*zeta^4 - 492*zeta^3 + 
1028*zeta^2 + 572*zeta - 296)*q^872 + 1/45*(-76*zeta^7 + 48*zeta^6 + 484*zeta^5 
- 340*zeta^4 - 918*zeta^3 + 588*zeta^2 + 506*zeta - 236)*q^873 + 1/45*(9*zeta^7 
- 49*zeta^6 - 94*zeta^5 + 288*zeta^4 + 233*zeta^3 - 367*zeta^2 - 74*zeta - 
28)*q^874 + 1/45*(-16*zeta^7 - 77*zeta^6 + 73*zeta^5 + 427*zeta^4 - 106*zeta^3 -
622*zeta^2 + 125*zeta + 175)*q^875 + 1/45*(-107*zeta^7 - 91*zeta^6 + 728*zeta^5 
+ 404*zeta^4 - 1484*zeta^3 - 387*zeta^2 + 806*zeta - 3)*q^876 + 1/45*(155*zeta^7
- 26*zeta^6 - 1043*zeta^5 + 253*zeta^4 + 2018*zeta^3 - 512*zeta^2 - 1049*zeta + 
52)*q^877 + 1/45*(-212*zeta^7 - 103*zeta^6 + 1344*zeta^5 + 476*zeta^4 - 
2304*zeta^3 - 501*zeta^2 + 927*zeta + 274)*q^878 + 1/45*(4*zeta^7 + 36*zeta^6 - 
90*zeta^5 - 216*zeta^4 + 384*zeta^3 + 344*zeta^2 - 424*zeta - 44)*q^879 + 
1/45*(76*zeta^7 - 80*zeta^6 - 660*zeta^5 + 412*zeta^4 + 1780*zeta^3 - 498*zeta^2
- 1284*zeta + 24)*q^880 + 1/45*(-27*zeta^7 - 60*zeta^6 + 175*zeta^5 + 500*zeta^4
- 274*zeta^3 - 1014*zeta^2 + 103*zeta + 234)*q^881 + 1/15*(-22*zeta^7 - 
28*zeta^6 + 132*zeta^5 + 164*zeta^4 - 246*zeta^3 - 264*zeta^2 + 173*zeta + 
78)*q^882 + 1/45*(193*zeta^7 - 21*zeta^6 - 1372*zeta^5 - 67*zeta^4 + 2914*zeta^3
+ 432*zeta^2 - 1800*zeta + 109)*q^883 + 1/15*(25*zeta^7 - 41*zeta^6 - 216*zeta^5
+ 166*zeta^4 + 588*zeta^3 - 102*zeta^2 - 513*zeta + 81)*q^885 + 1/45*(130*zeta^7
+ 179*zeta^6 - 780*zeta^5 - 1062*zeta^4 + 1442*zeta^3 + 1680*zeta^2 - 968*zeta -
364)*q^886 + 1/45*(82*zeta^7 + 196*zeta^6 - 275*zeta^5 - 1102*zeta^4 - 
180*zeta^3 + 1706*zeta^2 + 658*zeta - 752)*q^887 + 1/45*(22*zeta^7 - 24*zeta^6 -
215*zeta^5 + 147*zeta^4 + 635*zeta^3 - 266*zeta^2 - 491*zeta + 54)*q^888 + 
1/45*(-62*zeta^7 - 47*zeta^6 + 350*zeta^5 + 282*zeta^4 - 460*zeta^3 - 489*zeta^2
+ 12*zeta + 194)*q^889 + 1/45*(-208*zeta^7 - 151*zeta^6 + 1276*zeta^5 + 
788*zeta^4 - 2072*zeta^3 - 1005*zeta^2 + 735*zeta + 362)*q^890 + 1/15*(14*zeta^7
+ 6*zeta^6 - 74*zeta^5 - 8*zeta^4 + 96*zeta^3 - 50*zeta^2 - 38*zeta + 56)*q^891 
+ 1/45*(38*zeta^7 + 145*zeta^6 - 173*zeta^5 - 806*zeta^4 + 212*zeta^3 + 
1162*zeta^2 - 207*zeta - 289)*q^892 + 1/45*(51*zeta^7 - 3*zeta^6 - 342*zeta^5 + 
60*zeta^4 + 636*zeta^3 - 197*zeta^2 - 256*zeta + 161)*q^893 + 1/45*(-39*zeta^7 -
zeta^6 + 399*zeta^5 + 150*zeta^4 - 1142*zeta^3 - 549*zeta^2 + 801*zeta + 
436)*q^894 + 1/45*(354*zeta^7 + 267*zeta^6 - 2174*zeta^5 - 1400*zeta^4 + 
3524*zeta^3 + 1797*zeta^2 - 1235*zeta - 662)*q^895 + 1/45*(-60*zeta^7 - 
57*zeta^6 + 355*zeta^5 + 342*zeta^4 - 529*zeta^3 - 586*zeta^2 + 105*zeta + 
206)*q^896 + 1/45*(-138*zeta^7 - 170*zeta^6 + 998*zeta^5 + 871*zeta^4 - 
2230*zeta^3 - 886*zeta^2 + 1487*zeta + 42)*q^897 + 1/45*(-68*zeta^7 - 147*zeta^6
+ 300*zeta^5 + 949*zeta^4 - 123*zeta^3 - 1660*zeta^2 - 320*zeta + 577)*q^898 + 
1/45*(6*zeta^7 + 44*zeta^6 - 36*zeta^5 - 260*zeta^4 + 70*zeta^3 + 360*zeta^2 - 
21*zeta + 34)*q^899 + 1/45*(76*zeta^7 + 42*zeta^6 - 490*zeta^5 - 252*zeta^4 + 
871*zeta^3 + 370*zeta^2 - 330*zeta - 60)*q^900 + 1/45*(104*zeta^7 + 12*zeta^6 - 
716*zeta^5 - 126*zeta^4 + 1442*zeta^3 + 296*zeta^2 - 750*zeta - 48)*q^902 + 
1/45*(41*zeta^7 + 29*zeta^6 - 246*zeta^5 - 179*zeta^4 + 446*zeta^3 + 319*zeta^2 
- 302*zeta - 117)*q^903 + 1/45*(-17*zeta^7 - 95*zeta^6 + 37*zeta^5 + 569*zeta^4 
+ 63*zeta^3 - 886*zeta^2 + zeta + 319)*q^904 + 1/45*(18*zeta^7 + 70*zeta^6 - 
45*zeta^5 - 414*zeta^4 - 135*zeta^3 + 661*zeta^2 + 208*zeta - 128)*q^905 + 
1/45*(4*zeta^7 + 45*zeta^6 - 19*zeta^5 - 270*zeta^4 - 11*zeta^3 + 474*zeta^2 + 
131*zeta - 142)*q^906 + 1/45*(-139*zeta^7 - 217*zeta^6 + 795*zeta^5 + 
1252*zeta^4 - 1081*zeta^3 - 1803*zeta^2 + 158*zeta + 562)*q^907 + 
1/45*(-17*zeta^7 - 44*zeta^6 + 44*zeta^5 + 197*zeta^4 + 65*zeta^3 - 112*zeta^2 -
40*zeta - 156)*q^908 + 1/45*(95*zeta^7 + 76*zeta^6 - 617*zeta^5 - 347*zeta^4 + 
1166*zeta^3 + 333*zeta^2 - 587*zeta + 48)*q^909 + 1/45*(-12*zeta^7 + 27*zeta^6 +
77*zeta^5 - 157*zeta^4 - 106*zeta^3 + 262*zeta^2 - 15*zeta - 129)*q^910 + 
1/45*(-48*zeta^7 - 110*zeta^6 + 274*zeta^5 + 642*zeta^4 - 494*zeta^3 - 
830*zeta^2 + 422*zeta + 16)*q^911 + 1/45*(5*zeta^7 + 21*zeta^6 - 49*zeta^5 - 
114*zeta^4 + 92*zeta^3 + 153*zeta^2 - 15*zeta - 124)*q^912 + 1/45*(196*zeta^7 + 
132*zeta^6 - 1102*zeta^5 - 792*zeta^4 + 1438*zeta^3 + 1374*zeta^2 - 46*zeta - 
568)*q^913 + 1/45*(52*zeta^7 + 254*zeta^6 - 79*zeta^5 - 1480*zeta^4 - 645*zeta^3
+ 2294*zeta^2 + 830*zeta - 420)*q^914 + 1/45*(37*zeta^7 + 106*zeta^6 - 
128*zeta^5 - 628*zeta^4 - 48*zeta^3 + 1004*zeta^2 + 211*zeta - 392)*q^915 + 
1/45*(-5*zeta^7 + 99*zeta^6 + 30*zeta^5 - 525*zeta^4 + 14*zeta^3 + 713*zeta^2 - 
100*zeta - 191)*q^916 + 1/45*(7*zeta^7 + 41*zeta^6 - 8*zeta^5 - 240*zeta^4 - 
124*zeta^3 + 282*zeta^2 + 99*zeta + 119)*q^917 + 1/45*(96*zeta^7 - 54*zeta^6 - 
726*zeta^5 + 230*zeta^4 + 1689*zeta^3 - 94*zeta^2 - 1020*zeta - 128)*q^919 + 
1/45*(55*zeta^7 + 166*zeta^6 - 330*zeta^5 - 955*zeta^4 + 646*zeta^3 + 
1397*zeta^2 - 445*zeta - 189)*q^920 + 1/15*(7*zeta^7 + 8*zeta^6 - 35*zeta^5 - 
56*zeta^4 + 22*zeta^3 + 110*zeta^2 + 45*zeta - 38)*q^921 + 1/45*(-100*zeta^7 - 
310*zeta^6 + 461*zeta^5 + 1734*zeta^4 - 305*zeta^3 - 2420*zeta^2 - 140*zeta + 
368)*q^922 + 1/45*(176*zeta^7 + zeta^6 - 1031*zeta^5 - 6*zeta^4 + 1578*zeta^3 - 
21*zeta^2 - 646*zeta - 116)*q^923 + 1/45*(22*zeta^7 + 48*zeta^6 - 94*zeta^5 - 
296*zeta^4 + 54*zeta^3 + 456*zeta^2 + 58*zeta - 64)*q^924 + 1/45*(35*zeta^7 + 
38*zeta^6 - 346*zeta^5 - 365*zeta^4 + 999*zeta^3 + 818*zeta^2 - 762*zeta - 
412)*q^925 + 1/45*(19*zeta^7 - 7*zeta^6 - 60*zeta^5 + 21*zeta^4 - 106*zeta^3 - 
55*zeta^2 + 188*zeta + 147)*q^926 + 1/45*(-172*zeta^7 - 71*zeta^6 + 1111*zeta^5 
+ 265*zeta^4 - 2014*zeta^3 - 54*zeta^2 + 883*zeta - 315)*q^927 + 
1/45*(-25*zeta^7 - 42*zeta^6 + 124*zeta^5 + 211*zeta^4 - 159*zeta^3 - 194*zeta^2
+ 112*zeta - 76)*q^928 + 1/45*(-92*zeta^7 - 6*zeta^6 + 576*zeta^5 - 22*zeta^4 - 
1015*zeta^3 + 120*zeta^2 + 467*zeta - 54)*q^929 + 1/45*(-56*zeta^7 + 114*zeta^6 
+ 376*zeta^5 - 684*zeta^4 - 823*zeta^3 + 1231*zeta^2 + 851*zeta - 354)*q^930 + 
1/45*(-4*zeta^7 + 26*zeta^6 + 78*zeta^5 - 163*zeta^4 - 310*zeta^3 + 297*zeta^2 +
273*zeta - 66)*q^931 + 1/15*(11*zeta^7 + 23*zeta^6 - 61*zeta^5 - 173*zeta^4 + 
69*zeta^3 + 334*zeta^2 + 5*zeta - 91)*q^932 + 1/45*(-13*zeta^7 - 26*zeta^6 + 
78*zeta^5 + 155*zeta^4 - 144*zeta^3 - 233*zeta^2 + 88*zeta + 19)*q^933 + 
1/45*(-143*zeta^7 - 117*zeta^6 + 884*zeta^5 + 642*zeta^4 - 1430*zeta^3 - 
842*zeta^2 + 327*zeta + 201)*q^934 + 1/15*(-7*zeta^7 - 7*zeta^6 + 42*zeta^5 + 
30*zeta^4 - 63*zeta^3 - 32*zeta^2 - 15*zeta + 41)*q^936 + 1/45*(-171*zeta^7 - 
265*zeta^6 + 1026*zeta^5 + 1553*zeta^4 - 1918*zeta^3 - 2425*zeta^2 + 1318*zeta +
547)*q^937 + 1/45*(30*zeta^7 + 35*zeta^6 - 178*zeta^5 - 301*zeta^4 + 207*zeta^3 
+ 648*zeta^2 + 78*zeta - 165)*q^938 + 1/45*(-80*zeta^7 - 94*zeta^6 + 536*zeta^5 
+ 527*zeta^4 - 1080*zeta^3 - 715*zeta^2 + 647*zeta + 114)*q^939 + 
1/45*(114*zeta^7 + 51*zeta^6 - 646*zeta^5 - 306*zeta^4 + 877*zeta^3 + 526*zeta^2
- 129*zeta - 248)*q^940 + 1/45*(252*zeta^7 + 72*zeta^6 - 1636*zeta^5 - 
244*zeta^4 + 2914*zeta^3 + 84*zeta^2 - 1270*zeta - 220)*q^941 + 1/45*(-15*zeta^7
+ 52*zeta^6 + 276*zeta^5 - 141*zeta^4 - 961*zeta^3 - 216*zeta^2 + 648*zeta + 
476)*q^942 + 1/45*(2*zeta^7 - 23*zeta^6 - 119*zeta^5 + 181*zeta^4 + 530*zeta^3 -
304*zeta^2 - 379*zeta - 23)*q^943 + 1/45*(-160*zeta^7 + 52*zeta^6 + 958*zeta^5 -
365*zeta^4 - 1378*zeta^3 + 858*zeta^2 + 244*zeta - 762)*q^944 + 1/15*(26*zeta^7 
- zeta^6 - 166*zeta^5 + 31*zeta^4 + 300*zeta^3 - 91*zeta^2 - 150*zeta + 
32)*q^945 + 1/45*(240*zeta^7 + 126*zeta^6 - 1472*zeta^5 - 620*zeta^4 + 
2438*zeta^3 + 726*zeta^2 - 944*zeta - 224)*q^946 + 1/45*(-113*zeta^6 - 67*zeta^5
+ 678*zeta^4 + 425*zeta^3 - 1220*zeta^2 - 785*zeta + 406)*q^947 + 
1/45*(-2*zeta^7 + 6*zeta^6 - 11*zeta^5 + 95*zeta^3 - 119*zeta^2 - 110*zeta + 
60)*q^948 + 1/45*(75*zeta^7 + 26*zeta^6 - 398*zeta^5 - 228*zeta^4 + 268*zeta^3 +
600*zeta^2 + 629*zeta - 228)*q^949 + 1/45*(-19*zeta^7 - 108*zeta^6 + 114*zeta^5 
+ 623*zeta^4 - 234*zeta^3 - 877*zeta^2 + 141*zeta + 29)*q^950 + 
1/45*(-163*zeta^7 - 147*zeta^6 + 994*zeta^5 + 773*zeta^4 - 1555*zeta^3 - 
974*zeta^2 + 210*zeta + 337)*q^951 + 1/45*(-48*zeta^7 + 76*zeta^6 + 412*zeta^5 -
321*zeta^4 - 1114*zeta^3 + 214*zeta^2 + 921*zeta - 92)*q^953 + 1/15*(-8*zeta^7 -
36*zeta^6 + 48*zeta^5 + 204*zeta^4 - 100*zeta^3 - 292*zeta^2 + 74*zeta + 
40)*q^954 + 1/45*(62*zeta^7 + 172*zeta^6 - 215*zeta^5 - 1014*zeta^4 - 84*zeta^3 
+ 1618*zeta^2 + 374*zeta - 640)*q^955 + 1/45*(54*zeta^7 - 6*zeta^6 - 368*zeta^5 
- 37*zeta^4 + 760*zeta^3 + 278*zeta^2 - 433*zeta - 134)*q^956 + 1/15*(-4*zeta^7 
- 6*zeta^6 + 44*zeta^5 + 36*zeta^4 - 146*zeta^3 - 52*zeta^2 + 154*zeta)*q^957 + 
1/45*(92*zeta^7 + 36*zeta^6 - 492*zeta^5 - 200*zeta^4 + 712*zeta^3 + 276*zeta^2 
- 260*zeta + 144)*q^958 + 1/45*(6*zeta^7 - 17*zeta^6 - 84*zeta^5 + 63*zeta^4 + 
266*zeta^3 + 9*zeta^2 - 168*zeta - 112)*q^959 + 1/45*(-109*zeta^7 + 31*zeta^6 + 
676*zeta^5 - 236*zeta^4 - 1060*zeta^3 + 571*zeta^2 + 270*zeta - 481)*q^960 + 
1/45*(-153*zeta^7 - 123*zeta^6 + 936*zeta^5 + 591*zeta^4 - 1590*zeta^3 - 
599*zeta^2 + 716*zeta - 133)*q^961 + 1/45*(51*zeta^7 - 98*zeta^6 - 377*zeta^5 + 
633*zeta^4 + 748*zeta^3 - 932*zeta^2 - 259*zeta + 52)*q^962 + 1/45*(-28*zeta^7 -
87*zeta^6 + 76*zeta^5 + 554*zeta^4 + 99*zeta^3 - 879*zeta^2 - 202*zeta + 
76)*q^963 + 1/45*(-122*zeta^7 - 117*zeta^6 + 732*zeta^5 + 702*zeta^4 - 
1131*zeta^3 - 1198*zeta^2 + 287*zeta + 412)*q^964 + 1/45*(-154*zeta^7 - 
56*zeta^6 + 1071*zeta^5 + 413*zeta^4 - 2275*zeta^3 - 868*zeta^2 + 1379*zeta + 
266)*q^965 + 1/45*(-23*zeta^7 - 8*zeta^6 + 172*zeta^5 + 170*zeta^4 - 282*zeta^3 
- 484*zeta^2 + 7*zeta + 70)*q^966 + 1/45*(74*zeta^7 + 261*zeta^6 - 444*zeta^5 - 
1518*zeta^4 + 862*zeta^3 + 2188*zeta^2 - 536*zeta - 136)*q^967 + 
1/45*(-23*zeta^7 + 15*zeta^6 + 176*zeta^5 - 19*zeta^4 - 416*zeta^3 - 60*zeta^2 +
396*zeta - 155)*q^968 + 1/45*(-26*zeta^7 + 38*zeta^6 + 220*zeta^5 - 136*zeta^4 -
586*zeta^3 + 56*zeta^2 + 546*zeta - 138)*q^970 + 1/45*(-26*zeta^7 + 14*zeta^6 + 
156*zeta^5 - 68*zeta^4 - 270*zeta^3 + 44*zeta^2 + 179*zeta + 62)*q^971 + 
1/15*(-4*zeta^7 + zeta^6 + 3*zeta^5 - 41*zeta^4 + 61*zeta^3 + 106*zeta^2 - 
116*zeta + 5)*q^972 + 1/45*(-52*zeta^7 - 22*zeta^6 + 343*zeta^5 + 172*zeta^4 - 
675*zeta^3 - 394*zeta^2 + 374*zeta + 124)*q^973 + 1/45*(-18*zeta^7 - 79*zeta^6 +
200*zeta^5 + 474*zeta^4 - 642*zeta^3 - 779*zeta^2 + 578*zeta + 154)*q^974 + 
1/45*(329*zeta^7 + 159*zeta^6 - 2001*zeta^5 - 776*zeta^4 + 3301*zeta^3 + 
897*zeta^2 - 1292*zeta - 210)*q^975 + 1/45*(-8*zeta^7 - 40*zeta^6 + 109*zeta^5 +
326*zeta^4 - 391*zeta^3 - 638*zeta^2 + 363*zeta + 240)*q^976 + 1/45*(73*zeta^7 -
172*zeta^6 - 553*zeta^5 + 1040*zeta^4 + 1060*zeta^3 - 1743*zeta^2 - 229*zeta + 
726)*q^977 + 1/15*(44*zeta^7 + 4*zeta^6 - 290*zeta^5 + 13*zeta^4 + 530*zeta^3 - 
110*zeta^2 - 216*zeta + 122)*q^978 + 1/45*(-140*zeta^7 + 58*zeta^6 + 974*zeta^5 
- 418*zeta^4 - 1942*zeta^3 + 674*zeta^2 + 986*zeta)*q^979 + 1/45*(39*zeta^7 + 
72*zeta^6 - 211*zeta^5 - 424*zeta^4 + 253*zeta^3 + 624*zeta^2 - zeta - 
172)*q^980 + 1/15*(8*zeta^7 + 28*zeta^6 - 56*zeta^5 - 168*zeta^4 + 108*zeta^3 + 
288*zeta^2 - 28*zeta - 80)*q^981 + 1/45*(50*zeta^7 + 74*zeta^6 - 404*zeta^5 - 
329*zeta^4 + 1020*zeta^3 + 140*zeta^2 - 757*zeta + 82)*q^982 + 1/45*(-82*zeta^7 
- 178*zeta^6 + 269*zeta^5 + 964*zeta^4 + 222*zeta^3 - 1454*zeta^2 - 754*zeta + 
698)*q^983 + 1/15*(6*zeta^7 + 38*zeta^6 - 36*zeta^5 - 216*zeta^4 + 78*zeta^3 + 
304*zeta^2 - 55*zeta - 26)*q^984 + 1/45*(-84*zeta^7 + 84*zeta^6 + 672*zeta^5 - 
263*zeta^4 - 1680*zeta^3 + 22*zeta^2 + 1479*zeta - 376)*q^985 + 1/45*(-79*zeta^7
- 21*zeta^6 + 532*zeta^5 + 138*zeta^4 - 1030*zeta^3 - 250*zeta^2 + 447*zeta + 
105)*q^987 + 1/45*(19*zeta^7 + 17*zeta^6 - 114*zeta^5 - 97*zeta^4 + 214*zeta^3 +
169*zeta^2 - 162*zeta - 91)*q^988 + 1/45*(-73*zeta^7 - 171*zeta^6 + 321*zeta^5 +
1109*zeta^4 - 141*zeta^3 - 1934*zeta^2 - 295*zeta + 659)*q^989 + 
1/15*(-12*zeta^7 - 20*zeta^6 + 64*zeta^5 + 122*zeta^4 - 80*zeta^3 - 204*zeta^2 +
18*zeta + 44)*q^990 + 1/45*(-242*zeta^7 - 78*zeta^6 + 1483*zeta^5 + 468*zeta^4 -
2491*zeta^3 - 743*zeta^2 + 1187*zeta + 324)*q^991 + 1/45*(25*zeta^7 + 19*zeta^6 
- 189*zeta^5 - 82*zeta^4 + 364*zeta^3 + 75*zeta^2 - 149*zeta - 136)*q^992 + 
1/45*(-50*zeta^7 - 10*zeta^6 + 260*zeta^5 - 52*zeta^4 - 314*zeta^3 + 314*zeta^2 
+ 92*zeta - 232)*q^993 + 1/45*(35*zeta^7 + 28*zeta^6 - 205*zeta^5 - 139*zeta^4 +
318*zeta^3 + 145*zeta^2 - 127*zeta + 40)*q^994 + 1/45*(272*zeta^7 + 211*zeta^6 -
1609*zeta^5 - 1036*zeta^4 + 2544*zeta^3 + 1056*zeta^2 - 1035*zeta + 317)*q^995 +
1/45*(86*zeta^7 + 29*zeta^6 - 551*zeta^5 - 113*zeta^4 + 1027*zeta^3 + 37*zeta^2 
- 581*zeta + 48)*q^996 + 1/45*(-30*zeta^7 - 131*zeta^6 + 174*zeta^5 + 774*zeta^4
- 157*zeta^3 - 1143*zeta^2 - 130*zeta + 464)*q^997 + 1/45*(-24*zeta^7 + 
125*zeta^6 + 109*zeta^5 - 750*zeta^4 - 104*zeta^3 + 1301*zeta^2 + 164*zeta - 
328)*q^998 + 1/15*(20*zeta^7 - 18*zeta^6 - 173*zeta^5 + 94*zeta^4 + 465*zeta^3 -
120*zeta^2 - 336*zeta + 8)*q^999 + 1/45*(29*zeta^7 + 118*zeta^6 - 90*zeta^5 - 
716*zeta^4 - 44*zeta^3 + 1144*zeta^2 + 67*zeta - 412)*q^1000 + 1/45*(58*zeta^7 -
64*zeta^6 - 348*zeta^5 + 286*zeta^4 + 540*zeta^3 - 298*zeta^2 - 214*zeta + 
170)*q^1001 + 1/45*(-57*zeta^7 - 27*zeta^6 + 372*zeta^5 + 169*zeta^4 - 
678*zeta^3 - 260*zeta^2 + 282*zeta + 35)*q^1002 + 1/45*(-63*zeta^7 + 57*zeta^6 +
498*zeta^5 - 281*zeta^4 - 1227*zeta^3 + 214*zeta^2 + 732*zeta + 173)*q^1004 + 
1/45*(-82*zeta^7 - 247*zeta^6 + 492*zeta^5 + 1426*zeta^4 - 958*zeta^3 - 
2084*zeta^2 + 646*zeta + 252)*q^1005 + 1/45*(-76*zeta^7 - 117*zeta^6 + 
385*zeta^5 + 829*zeta^4 - 289*zeta^3 - 1586*zeta^2 - 348*zeta + 503)*q^1006 + 
1/45*(8*zeta^7 + 60*zeta^6 + 8*zeta^5 - 342*zeta^4 - 200*zeta^3 + 506*zeta^2 + 
218*zeta - 84)*q^1007 + 1/45*(-74*zeta^7 - 69*zeta^6 + 474*zeta^5 + 414*zeta^4 -
852*zeta^3 - 691*zeta^2 + 404*zeta + 214)*q^1008 + 1/45*(-182*zeta^7 - 
107*zeta^6 + 1110*zeta^5 + 542*zeta^4 - 1817*zeta^3 - 663*zeta^2 + 682*zeta + 
200)*q^1009 + 1/45*(-35*zeta^7 - 69*zeta^6 + 298*zeta^5 + 512*zeta^4 - 
803*zeta^3 - 923*zeta^2 + 654*zeta + 308)*q^1010 + 1/45*(132*zeta^7 + 69*zeta^6 
- 795*zeta^5 - 312*zeta^4 + 1272*zeta^3 + 220*zeta^2 - 481*zeta + 251)*q^1011 + 
1/45*(30*zeta^7 - 54*zeta^6 - 264*zeta^5 + 354*zeta^4 + 636*zeta^3 - 614*zeta^2 
- 280*zeta + 206)*q^1012 + 1/45*(-181*zeta^7 - 73*zeta^6 + 1114*zeta^5 + 
262*zeta^4 - 1961*zeta^3 + zeta^2 + 1078*zeta - 228)*q^1013 + 1/45*(115*zeta^7 +
33*zeta^6 - 691*zeta^5 - 140*zeta^4 + 1149*zeta^3 + 123*zeta^2 - 482*zeta + 
38)*q^1014 + 1/45*(-28*zeta^7 - 12*zeta^6 + 156*zeta^5 + 72*zeta^4 - 201*zeta^3 
- 125*zeta^2 + 13*zeta + 62)*q^1015 + 1/45*(70*zeta^7 + 118*zeta^6 - 384*zeta^5 
- 707*zeta^4 + 520*zeta^3 + 1140*zeta^2 - 159*zeta - 234)*q^1016 + 
1/45*(14*zeta^7 - 47*zeta^6 - 102*zeta^5 + 265*zeta^4 + 109*zeta^3 - 344*zeta^2 
+ 214*zeta + 113)*q^1017 + 1/45*(145*zeta^7 + 279*zeta^6 - 870*zeta^5 - 
1621*zeta^4 + 1648*zeta^3 + 2469*zeta^2 - 1139*zeta - 485)*q^1018 + 
1/15*(-2*zeta^7 + 24*zeta^6 + 38*zeta^5 - 91*zeta^4 - 161*zeta^3 + 60*zeta^2 + 
243*zeta - 110)*q^1019 + 1/45*(21*zeta^7 + 13*zeta^6 - 134*zeta^5 - 131*zeta^4 +
233*zeta^3 + 218*zeta^2 - 246*zeta + 201)*q^1021 + 1/45*(41*zeta^7 + 20*zeta^6 -
246*zeta^5 - 113*zeta^4 + 458*zeta^3 + 235*zeta^2 - 353*zeta - 207)*q^1022 + 
1/45*(10*zeta^7 + 80*zeta^6 + 18*zeta^5 - 424*zeta^4 - 172*zeta^3 + 572*zeta^2 +
62*zeta - 260)*q^1023 + 1/45*(18*zeta^7 + 156*zeta^6 + 62*zeta^5 - 908*zeta^4 - 
670*zeta^3 + 1411*zeta^2 + 700*zeta - 256)*q^1024 + 1/45*(-4*zeta^7 + 126*zeta^6
- 10*zeta^5 - 756*zeta^4 + 85*zeta^3 + 1307*zeta^2 + 79*zeta - 342)*q^1025 + 
1/15*(23*zeta^7 + 17*zeta^6 - 143*zeta^5 - 88*zeta^4 + 235*zeta^3 + 111*zeta^2 -
84*zeta - 46)*q^1026 + 1/45*(-76*zeta^7 + 101*zeta^6 + 451*zeta^5 - 779*zeta^4 -
641*zeta^3 + 1417*zeta^2 + 73*zeta - 360)*q^1027 + 1/45*(-41*zeta^7 - 61*zeta^6 
+ 266*zeta^5 + 305*zeta^4 - 530*zeta^3 - 379*zeta^2 + 318*zeta + 73)*q^1028 + 
1/45*(74*zeta^7 + 85*zeta^6 - 527*zeta^5 - 389*zeta^4 + 1166*zeta^3 + 428*zeta^2
- 703*zeta - 95)*q^1029 + 1/45*(58*zeta^7 + 236*zeta^6 - 611*zeta^5 - 
1792*zeta^4 + 1967*zeta^3 + 3286*zeta^2 - 1821*zeta - 1080)*q^1030 + 
1/45*(-441*zeta^7 - 270*zeta^6 + 2693*zeta^5 + 1376*zeta^4 - 4403*zeta^3 - 
1698*zeta^2 + 1637*zeta + 536)*q^1031 + 1/45*(22*zeta^7 - 102*zeta^6 - 
141*zeta^5 + 612*zeta^4 + 315*zeta^3 - 1081*zeta^2 - 427*zeta + 304)*q^1032 + 
1/45*(-96*zeta^7 - 146*zeta^6 + 453*zeta^5 + 972*zeta^4 - 345*zeta^3 - 
1892*zeta^2 - 158*zeta + 484)*q^1033 + 1/45*(-32*zeta^7 - 88*zeta^6 + 162*zeta^5
+ 620*zeta^4 - 160*zeta^3 - 1132*zeta^2 + 8*zeta + 328)*q^1034 + 1/45*(18*zeta^7
+ 89*zeta^6 - 108*zeta^5 - 500*zeta^4 + 232*zeta^3 + 714*zeta^2 - 183*zeta - 
116)*q^1035 + 1/45*(-38*zeta^7 - 56*zeta^6 + 210*zeta^5 + 311*zeta^4 - 
243*zeta^3 - 380*zeta^2 - 15*zeta - 10)*q^1036 + O(q^1037), 1/150*(16*zeta^7 + 
22*zeta^6 - 90*zeta^5 - 122*zeta^4 + 111*zeta^3 + 150*zeta^2)*q + 
1/150*(-11*zeta^7 - 5*zeta^6 + 66*zeta^5 + 27*zeta^4 - 124*zeta^3 - 59*zeta^2 + 
99*zeta + 63)*q^2 + 1/150*(12*zeta^7 + 2*zeta^6 - 71*zeta^5 - 36*zeta^4 + 
70*zeta^3 + 114*zeta^2 + 80*zeta - 30)*q^3 + 1/150*(-28*zeta^7 + 2*zeta^6 + 
193*zeta^5 + 22*zeta^4 - 405*zeta^3 - 136*zeta^2 + 236*zeta + 64)*q^4 + 
1/150*(52*zeta^7 + 31*zeta^6 - 291*zeta^5 - 186*zeta^4 + 376*zeta^3 + 323*zeta^2
- 12*zeta - 140)*q^5 + 1/150*(-56*zeta^7 - 21*zeta^6 + 324*zeta^5 + 104*zeta^4 -
514*zeta^3 - 123*zeta^2 + 203*zeta - 30)*q^6 + 1/150*(62*zeta^7 - zeta^6 - 
424*zeta^5 + 31*zeta^4 + 846*zeta^3 - 79*zeta^2 - 468*zeta - 16)*q^7 + 
1/150*(-25*zeta^7 - 44*zeta^6 + 151*zeta^5 + 229*zeta^4 - 274*zeta^3 - 
299*zeta^2 + 165*zeta + 56)*q^8 + 1/150*(-58*zeta^7 - 77*zeta^6 + 373*zeta^5 + 
382*zeta^4 - 724*zeta^3 - 462*zeta^2 + 415*zeta + 69)*q^9 + 1/150*(26*zeta^7 + 
3*zeta^6 - 174*zeta^5 - 5*zeta^4 + 340*zeta^3 - 15*zeta^2 - 190*zeta)*q^10 + 
1/75*(54*zeta^6 + 44*zeta^5 - 346*zeta^4 - 197*zeta^3 + 552*zeta^2 + 185*zeta - 
106)*q^11 + 1/150*(68*zeta^7 + 57*zeta^6 - 433*zeta^5 - 342*zeta^4 + 772*zeta^3 
+ 569*zeta^2 - 368*zeta - 180)*q^12 + 1/150*(140*zeta^7 + 110*zeta^6 - 
958*zeta^5 - 657*zeta^4 + 1990*zeta^3 + 1015*zeta^2 - 1205*zeta - 214)*q^13 + 
1/150*(4*zeta^7 + 7*zeta^6 - 36*zeta^5 - 81*zeta^4 + 79*zeta^3 + 188*zeta^2 - 
48*zeta - 29)*q^14 + 1/150*(-8*zeta^7 + 29*zeta^6 + 48*zeta^5 - 140*zeta^4 - 
54*zeta^3 + 182*zeta^2 - 22*zeta - 106)*q^15 + 1/150*(-65*zeta^7 - zeta^6 + 
454*zeta^5 + 21*zeta^4 - 937*zeta^3 - 102*zeta^2 + 432*zeta + 131)*q^16 + 
1/150*(-95*zeta^7 - 69*zeta^6 + 596*zeta^5 + 393*zeta^4 - 998*zeta^3 - 
536*zeta^2 + 300*zeta + 93)*q^18 + 1/150*(-11*zeta^7 - 5*zeta^6 + 66*zeta^5 + 
27*zeta^4 - 124*zeta^3 - 59*zeta^2 + 99*zeta + 63)*q^19 + 1/150*(26*zeta^7 - 
13*zeta^6 - 122*zeta^5 + 107*zeta^4 + 7*zeta^3 - 152*zeta^2 + 370*zeta - 
13)*q^20 + 1/150*(-68*zeta^7 - 70*zeta^6 + 464*zeta^5 + 395*zeta^4 - 960*zeta^3 
- 541*zeta^2 + 587*zeta + 90)*q^21 + 1/75*(-2*zeta^7 - 12*zeta^6 + 47*zeta^5 + 
72*zeta^4 - 206*zeta^3 - 108*zeta^2 + 242*zeta + 2)*q^22 + 1/150*(80*zeta^7 + 
59*zeta^6 - 440*zeta^5 - 334*zeta^4 + 631*zeta^3 + 471*zeta^2 - 192*zeta - 
16)*q^23 + 1/150*(32*zeta^7 + 21*zeta^6 - 188*zeta^5 - 89*zeta^4 + 312*zeta^3 + 
43*zeta^2 - 176*zeta + 56)*q^24 + 1/150*(51*zeta^7 + 27*zeta^6 - 362*zeta^5 - 
95*zeta^4 + 766*zeta^3 + 33*zeta^2 - 406*zeta + 41)*q^25 + 1/150*(95*zeta^7 + 
70*zeta^6 - 661*zeta^5 - 292*zeta^4 + 1380*zeta^3 + 239*zeta^2 - 749*zeta + 
24)*q^26 + 1/50*(47*zeta^7 + 10*zeta^6 - 306*zeta^5 - 29*zeta^4 + 579*zeta^3 - 
18*zeta^2 - 322*zeta + 20)*q^27 + 1/150*(-6*zeta^7 - 77*zeta^6 - 26*zeta^5 + 
490*zeta^4 + 217*zeta^3 - 777*zeta^2 - 234*zeta + 144)*q^28 + 1/150*(-20*zeta^7 
+ 3*zeta^6 + 63*zeta^5 - 18*zeta^4 + 117*zeta^3 + 8*zeta^2 - 325*zeta + 58)*q^29
+ 1/150*(-20*zeta^7 - 14*zeta^6 + 138*zeta^5 + 85*zeta^4 - 290*zeta^3 - 
135*zeta^2 + 177*zeta + 30)*q^30 + 1/150*(22*zeta^7 + 2*zeta^6 - 125*zeta^5 - 
44*zeta^4 + 106*zeta^3 + 158*zeta^2 + 174*zeta - 50)*q^31 + 1/150*(68*zeta^7 - 
50*zeta^6 - 408*zeta^5 + 226*zeta^4 + 674*zeta^3 - 190*zeta^2 - 369*zeta + 
4)*q^32 + 1/75*(47*zeta^7 + 3*zeta^6 - 326*zeta^5 - 27*zeta^4 + 665*zeta^3 + 
86*zeta^2 - 300*zeta - 93)*q^33 + 1/150*(3*zeta^7 + 55*zeta^6 + 34*zeta^5 - 
296*zeta^4 - 259*zeta^3 + 320*zeta^2 + 249*zeta + 75)*q^35 + 1/150*(57*zeta^7 - 
55*zeta^6 - 342*zeta^5 + 253*zeta^4 + 550*zeta^3 - 249*zeta^2 - 270*zeta + 
67)*q^36 + 1/150*(-50*zeta^7 + 9*zeta^6 + 264*zeta^5 - 35*zeta^4 - 147*zeta^3 - 
76*zeta^2 - 530*zeta + 73)*q^37 + 1/150*(32*zeta^7 + 50*zeta^6 - 217*zeta^5 - 
264*zeta^4 + 445*zeta^3 + 304*zeta^2 - 278*zeta - 28)*q^38 + 1/150*(6*zeta^7 + 
54*zeta^6 - 197*zeta^5 - 324*zeta^4 + 917*zeta^3 + 485*zeta^2 - 1101*zeta - 
4)*q^39 + 1/150*(20*zeta^7 - 63*zeta^6 - 172*zeta^5 + 414*zeta^4 + 437*zeta^3 - 
675*zeta^2 - 312*zeta + 152)*q^40 + 1/150*(-175*zeta^7 + 17*zeta^6 + 1216*zeta^5
- 158*zeta^4 - 2465*zeta^3 + 283*zeta^2 + 1360*zeta + 84)*q^41 + 
1/150*(-71*zeta^7 - 34*zeta^6 + 509*zeta^5 + 110*zeta^4 - 1088*zeta^3 - 
11*zeta^2 + 577*zeta - 64)*q^42 + 1/150*(-65*zeta^7 - 58*zeta^6 + 445*zeta^5 + 
259*zeta^4 - 918*zeta^3 - 255*zeta^2 + 507*zeta + 10)*q^43 + 1/75*(-153*zeta^7 -
10*zeta^6 + 1029*zeta^5 - 15*zeta^4 - 2018*zeta^3 + 144*zeta^2 + 1119*zeta + 
4)*q^44 + 1/150*(38*zeta^7 - 102*zeta^6 - 314*zeta^5 + 674*zeta^4 + 771*zeta^3 -
1104*zeta^2 - 535*zeta + 250)*q^45 + 1/150*(-102*zeta^7 - 121*zeta^6 + 
764*zeta^5 + 726*zeta^4 - 1770*zeta^3 - 1169*zeta^2 + 1322*zeta + 262)*q^46 + 
1/150*(-246*zeta^7 - 188*zeta^6 + 1682*zeta^5 + 1132*zeta^4 - 3490*zeta^3 - 
1777*zeta^2 + 2108*zeta + 384)*q^47 + 1/150*(-16*zeta^7 - 31*zeta^6 + 146*zeta^5
+ 349*zeta^4 - 327*zeta^3 - 800*zeta^2 + 212*zeta + 125)*q^48 + 
1/150*(-50*zeta^7 + 44*zeta^6 + 300*zeta^5 - 200*zeta^4 - 486*zeta^3 + 
188*zeta^2 + 245*zeta - 46)*q^49 + 1/150*(138*zeta^7 + 88*zeta^6 - 878*zeta^5 - 
506*zeta^4 + 1517*zeta^3 + 710*zeta^2 - 498*zeta - 150)*q^50 + 1/150*(91*zeta^7 
- 49*zeta^6 - 686*zeta^5 + 242*zeta^4 + 1589*zeta^3 - 148*zeta^2 - 849*zeta - 
261)*q^52 + 1/75*(-24*zeta^7 + 70*zeta^6 + 144*zeta^5 - 334*zeta^4 - 178*zeta^3 
+ 426*zeta^2 - 27*zeta - 256)*q^53 + 1/50*(-5*zeta^7 + 27*zeta^5 + 4*zeta^4 - 
18*zeta^3 - 22*zeta^2 - 47*zeta + 10)*q^54 + 1/75*(130*zeta^7 + 62*zeta^6 - 
892*zeta^5 - 427*zeta^4 + 1860*zeta^3 + 830*zeta^2 - 1111*zeta - 234)*q^55 + 
1/150*(-66*zeta^7 - 45*zeta^6 + 386*zeta^5 + 270*zeta^4 - 566*zeta^3 - 
461*zeta^2 + 126*zeta + 178)*q^56 + 1/150*(-56*zeta^7 - 21*zeta^6 + 324*zeta^5 +
104*zeta^4 - 514*zeta^3 - 123*zeta^2 + 203*zeta - 30)*q^57 + 1/150*(-10*zeta^7 -
48*zeta^6 + zeta^5 + 232*zeta^4 + 135*zeta^3 - 182*zeta^2 - 65*zeta - 136)*q^58 
+ 1/150*(89*zeta^7 + 163*zeta^6 - 536*zeta^5 - 851*zeta^4 + 974*zeta^3 + 
1119*zeta^2 - 596*zeta - 219)*q^59 + 1/150*(45*zeta^7 + 120*zeta^6 - 237*zeta^5 
- 654*zeta^4 + 360*zeta^3 + 913*zeta^2 - 253*zeta - 202)*q^60 + 1/150*(3*zeta^7 
+ 9*zeta^6 - 7*zeta^5 - 42*zeta^4 - 14*zeta^3 + 29*zeta^2 + 7*zeta + 28)*q^61 + 
1/150*(-82*zeta^7 - 35*zeta^6 + 470*zeta^5 + 180*zeta^4 - 734*zeta^3 - 
225*zeta^2 + 281*zeta - 38)*q^62 + 1/150*(-134*zeta^7 - 102*zeta^6 + 819*zeta^5 
+ 612*zeta^4 - 1338*zeta^3 - 1030*zeta^2 + 494*zeta + 358)*q^63 + 
1/150*(-146*zeta^7 - 106*zeta^6 + 1000*zeta^5 + 645*zeta^4 - 2080*zeta^3 - 
1032*zeta^2 + 1257*zeta + 230)*q^64 + 1/150*(-63*zeta^7 + 33*zeta^6 + 289*zeta^5
- 283*zeta^4 + 11*zeta^3 + 426*zeta^2 - 929*zeta + 27)*q^65 + 1/75*(-48*zeta^7 +
8*zeta^6 + 288*zeta^5 - 26*zeta^4 - 506*zeta^3 - 54*zeta^2 + 339*zeta + 
124)*q^66 + 1/150*(-217*zeta^7 - 167*zeta^6 + 1352*zeta^5 + 947*zeta^4 - 
2228*zeta^3 - 1276*zeta^2 + 636*zeta + 203)*q^67 + 1/150*(273*zeta^7 + 
153*zeta^6 - 1758*zeta^5 - 886*zeta^4 + 3117*zeta^3 + 1280*zeta^2 - 1083*zeta - 
335)*q^69 + 1/150*(10*zeta^7 - 21*zeta^6 - 60*zeta^5 + 100*zeta^4 + 84*zeta^3 - 
122*zeta^2 - 15*zeta + 64)*q^70 + 1/150*(-57*zeta^7 + 32*zeta^6 + 267*zeta^5 - 
260*zeta^4 - 10*zeta^3 + 378*zeta^2 - 827*zeta + 18)*q^71 + 1/50*(30*zeta^7 + 
24*zeta^6 - 205*zeta^5 - 143*zeta^4 + 425*zeta^3 + 220*zeta^2 - 257*zeta - 
46)*q^72 + 1/150*(-334*zeta^7 - 249*zeta^6 + 2024*zeta^5 + 1494*zeta^4 - 
3242*zeta^3 - 2521*zeta^2 + 1114*zeta + 894)*q^73 + 1/150*(106*zeta^7 + 
73*zeta^6 - 586*zeta^5 - 410*zeta^4 + 851*zeta^3 + 573*zeta^2 - 270*zeta - 
8)*q^74 + 1/150*(14*zeta^7 - 88*zeta^6 - 221*zeta^5 + 436*zeta^4 + 697*zeta^3 - 
362*zeta^2 - 371*zeta - 264)*q^75 + 1/150*(17*zeta^7 - 14*zeta^6 - 141*zeta^5 + 
105*zeta^4 + 334*zeta^3 - 201*zeta^2 - 163*zeta + 70)*q^76 + 1/75*(78*zeta^7 + 
153*zeta^6 - 459*zeta^5 - 807*zeta^4 + 810*zeta^3 + 1076*zeta^2 - 503*zeta - 
215)*q^77 + 1/150*(3*zeta^7 - 157*zeta^6 - 240*zeta^5 + 774*zeta^4 + 925*zeta^3 
- 639*zeta^2 - 480*zeta - 452)*q^78 + 1/150*(-20*zeta^7 - 99*zeta^6 + 40*zeta^5 
+ 624*zeta^4 + 154*zeta^3 - 981*zeta^2 - 243*zeta + 166)*q^79 + 
1/150*(162*zeta^7 + 95*zeta^6 - 892*zeta^5 - 570*zeta^4 + 1092*zeta^3 + 
997*zeta^2 + 68*zeta - 446)*q^80 + 1/50*(-2*zeta^7 - 26*zeta^6 + 12*zeta^5 + 
121*zeta^4 - 20*zeta^3 - 84*zeta^2 + 21*zeta - 18)*q^81 + 1/150*(-21*zeta^7 - 
25*zeta^6 + 169*zeta^5 + 303*zeta^4 - 323*zeta^3 - 726*zeta^2 + 125*zeta + 
117)*q^82 + 1/150*(52*zeta^7 - 185*zeta^6 - 312*zeta^5 + 888*zeta^4 + 350*zeta^3
- 1154*zeta^2 + 150*zeta + 702)*q^83 + 1/150*(-83*zeta^7 - 15*zeta^6 + 
566*zeta^5 + 100*zeta^4 - 1121*zeta^3 - 208*zeta^2 + 483*zeta + 149)*q^84 + 
1/150*(-151*zeta^7 - 103*zeta^6 + 954*zeta^5 + 587*zeta^4 - 1623*zeta^3 - 
810*zeta^2 + 504*zeta + 165)*q^86 + 1/50*(23*zeta^7 - 8*zeta^6 - 138*zeta^5 + 
33*zeta^4 + 238*zeta^3 - 3*zeta^2 - 151*zeta - 41)*q^87 + 1/75*(23*zeta^7 - 
8*zeta^6 - 114*zeta^5 + 58*zeta^4 + 34*zeta^3 - 56*zeta^2 + 289*zeta - 22)*q^88 
+ 1/150*(-262*zeta^7 - 270*zeta^6 + 1789*zeta^5 + 1522*zeta^4 - 3705*zeta^3 - 
2079*zeta^2 + 2268*zeta + 344)*q^89 + 1/150*(-46*zeta^7 - 30*zeta^6 + 267*zeta^5
+ 180*zeta^4 - 384*zeta^3 - 308*zeta^2 + 76*zeta + 122)*q^90 + 
1/150*(-143*zeta^7 + 152*zeta^6 + 995*zeta^5 - 1052*zeta^4 - 2063*zeta^3 + 
1788*zeta^2 + 1223*zeta - 480)*q^91 + 1/150*(-129*zeta^7 + 61*zeta^6 + 
965*zeta^5 - 354*zeta^4 - 2094*zeta^3 + 401*zeta^2 + 1147*zeta + 204)*q^92 + 
1/150*(-62*zeta^7 + 32*zeta^6 + 500*zeta^5 - 271*zeta^4 - 1166*zeta^3 + 
560*zeta^2 + 582*zeta - 206)*q^93 + 1/150*(-159*zeta^7 - 123*zeta^6 + 
1098*zeta^5 + 525*zeta^4 - 2274*zeta^3 - 457*zeta^2 + 1234*zeta - 29)*q^94 + 
1/150*(26*zeta^7 + 3*zeta^6 - 174*zeta^5 - 5*zeta^4 + 340*zeta^3 - 15*zeta^2 - 
190*zeta)*q^95 + 1/150*(242*zeta^7 - 9*zeta^6 - 1482*zeta^5 + 190*zeta^4 + 
2587*zeta^3 - 489*zeta^2 - 1220*zeta + 324)*q^96 + 1/75*(-54*zeta^7 - 8*zeta^6 +
221*zeta^5 + 48*zeta^4 + 44*zeta^3 - 122*zeta^2 - 536*zeta + 154)*q^97 + 
1/150*(46*zeta^7 + 106*zeta^6 - 312*zeta^5 - 533*zeta^4 + 640*zeta^3 + 
522*zeta^2 - 417*zeta - 6)*q^98 + 1/25*(15*zeta^7 - 3*zeta^6 - 79*zeta^5 + 
13*zeta^4 + 43*zeta^3 + 18*zeta^2 + 161*zeta - 21)*q^99 + 1/150*(-57*zeta^7 + 
11*zeta^6 + 342*zeta^5 - 39*zeta^4 - 600*zeta^3 - 53*zeta^2 + 401*zeta + 
145)*q^100 + 1/150*(105*zeta^7 - 19*zeta^6 - 754*zeta^5 + 77*zeta^4 + 
1627*zeta^3 + 46*zeta^2 - 798*zeta - 243)*q^101 + 1/150*(-153*zeta^7 - 31*zeta^6
+ 1040*zeta^5 + 204*zeta^4 - 2048*zeta^3 - 406*zeta^2 + 879*zeta + 263)*q^103 + 
1/150*(-4*zeta^7 + 89*zeta^6 + 24*zeta^5 - 434*zeta^4 + 56*zeta^3 + 604*zeta^2 -
227*zeta - 402)*q^104 + 1/150*(21*zeta^7 - 13*zeta^6 - 95*zeta^5 + 111*zeta^4 - 
11*zeta^3 - 174*zeta^2 + 323*zeta - 3)*q^105 + 1/75*(-46*zeta^7 - 30*zeta^6 + 
314*zeta^5 + 189*zeta^4 - 650*zeta^3 - 322*zeta^2 + 389*zeta + 78)*q^106 + 
1/150*(438*zeta^7 + 311*zeta^6 - 2606*zeta^5 - 1866*zeta^4 + 3994*zeta^3 + 
3167*zeta^2 - 1138*zeta - 1174)*q^107 + 1/50*(25*zeta^7 - 55*zeta^6 - 197*zeta^5
+ 366*zeta^4 + 464*zeta^3 - 603*zeta^2 - 311*zeta + 140)*q^108 + 
1/75*(-22*zeta^7 - 28*zeta^6 + 112*zeta^5 + 130*zeta^4 - 146*zeta^3 - 92*zeta^2 
+ 88*zeta - 72)*q^109 + 1/75*(28*zeta^7 + 65*zeta^6 - 157*zeta^5 - 349*zeta^4 + 
262*zeta^3 + 478*zeta^2 - 173*zeta - 103)*q^110 + 1/150*(47*zeta^7 - 140*zeta^6 
- 479*zeta^5 + 892*zeta^4 + 1268*zeta^3 - 1489*zeta^2 - 571*zeta + 442)*q^111 + 
1/150*(177*zeta^7 + 81*zeta^6 - 1093*zeta^5 - 324*zeta^4 + 1942*zeta^3 + 
113*zeta^2 - 1091*zeta + 196)*q^112 + 1/150*(-142*zeta^7 + 221*zeta^6 + 
1046*zeta^5 - 1494*zeta^4 - 2307*zeta^3 + 2493*zeta^2 + 1456*zeta - 612)*q^113 +
1/150*(72*zeta^7 + 81*zeta^6 - 527*zeta^5 - 486*zeta^4 + 1184*zeta^3 + 
785*zeta^2 - 852*zeta - 184)*q^114 + 1/150*(98*zeta^7 + 56*zeta^6 - 670*zeta^5 -
366*zeta^4 + 1390*zeta^3 + 661*zeta^2 - 830*zeta - 172)*q^115 + 
1/150*(-10*zeta^7 + 22*zeta^6 + 15*zeta^5 - 224*zeta^4 + 142*zeta^3 + 454*zeta^2
- 338*zeta - 46)*q^116 + 1/150*(54*zeta^7 + 148*zeta^6 - 324*zeta^5 - 736*zeta^4
+ 746*zeta^3 + 1140*zeta^2 - 843*zeta - 886)*q^117 + 1/150*(88*zeta^7 + 
78*zeta^6 - 538*zeta^5 - 438*zeta^4 + 847*zeta^3 + 574*zeta^2 - 204*zeta - 
72)*q^118 + 1/150*(7*zeta^7 + 39*zeta^6 - 10*zeta^5 - 210*zeta^4 - 113*zeta^3 + 
232*zeta^2 + 147*zeta + 39)*q^120 + 1/150*(48*zeta^7 - 201*zeta^6 - 288*zeta^5 +
968*zeta^4 + 290*zeta^3 - 1274*zeta^2 + 224*zeta + 786)*q^121 + 1/150*(-7*zeta^7
- 5*zeta^6 + 46*zeta^5 + 57*zeta^4 - 63*zeta^3 - 140*zeta^2 - 13*zeta + 
29)*q^122 + 1/150*(230*zeta^7 + 264*zeta^6 - 1567*zeta^5 - 1461*zeta^4 + 
3235*zeta^3 + 1910*zeta^2 - 1987*zeta - 282)*q^123 + 1/150*(128*zeta^7 + 
101*zeta^6 - 795*zeta^5 - 606*zeta^4 + 1346*zeta^3 + 1015*zeta^2 - 558*zeta - 
340)*q^124 + 1/150*(55*zeta^7 - 210*zeta^6 - 507*zeta^5 + 1376*zeta^4 + 
1349*zeta^3 - 2238*zeta^2 - 991*zeta + 480)*q^125 + 1/150*(-67*zeta^7 + 
60*zeta^6 + 541*zeta^5 - 323*zeta^4 - 1248*zeta^3 + 322*zeta^2 + 679*zeta + 
188)*q^126 + 1/150*(-125*zeta^7 - 355*zeta^6 + 642*zeta^5 + 1944*zeta^4 - 
940*zeta^3 - 2733*zeta^2 + 688*zeta + 617)*q^127 + 1/150*(-58*zeta^7 - 
281*zeta^6 + 199*zeta^5 + 1591*zeta^4 - 58*zeta^3 - 2336*zeta^2 + 195*zeta + 
575)*q^128 + 1/150*(10*zeta^7 + 103*zeta^6 + 74*zeta^5 - 505*zeta^4 - 436*zeta^3
+ 413*zeta^2 + 218*zeta + 288)*q^129 + 1/150*(-41*zeta^7 + 70*zeta^6 + 
309*zeta^5 - 472*zeta^4 - 695*zeta^3 + 786*zeta^2 + 445*zeta - 184)*q^130 + 
1/150*(404*zeta^7 + 229*zeta^6 - 2219*zeta^5 - 1374*zeta^4 + 2697*zeta^3 + 
2406*zeta^2 + 191*zeta - 1094)*q^131 + 1/75*(134*zeta^7 + 114*zeta^6 - 
916*zeta^5 - 669*zeta^4 + 1900*zeta^3 + 998*zeta^2 - 1153*zeta - 198)*q^132 + 
1/150*(4*zeta^7 + 7*zeta^6 - 36*zeta^5 - 81*zeta^4 + 79*zeta^3 + 188*zeta^2 - 
48*zeta - 29)*q^133 + 1/150*(185*zeta^7 + 23*zeta^6 - 1110*zeta^5 - 163*zeta^4 +
2010*zeta^3 + 579*zeta^2 - 1462*zeta - 729)*q^134 + 1/50*(5*zeta^7 + 47*zeta^6 +
12*zeta^5 - 253*zeta^4 - 186*zeta^3 + 276*zeta^2 + 198*zeta + 57)*q^135 + 
1/150*(-185*zeta^7 - 123*zeta^6 + 1172*zeta^5 + 703*zeta^4 - 2006*zeta^3 - 
976*zeta^2 + 636*zeta + 203)*q^137 + 1/150*(-244*zeta^7 - 3*zeta^6 + 1464*zeta^5
+ 78*zeta^4 - 2624*zeta^3 - 572*zeta^2 + 1861*zeta + 854)*q^138 + 
1/150*(81*zeta^7 - 28*zeta^6 - 409*zeta^5 + 188*zeta^4 + 150*zeta^3 - 150*zeta^2
+ 987*zeta - 78)*q^139 + 1/150*(-182*zeta^7 - 88*zeta^6 + 1248*zeta^5 + 
604*zeta^4 - 2600*zeta^3 - 1169*zeta^2 + 1552*zeta + 328)*q^140 + 
1/150*(8*zeta^7 - 75*zeta^6 + 219*zeta^5 + 450*zeta^4 - 1353*zeta^3 - 656*zeta^2
+ 1777*zeta - 46)*q^141 + 1/150*(-15*zeta^7 + 71*zeta^6 + 147*zeta^5 - 
462*zeta^4 - 410*zeta^3 + 747*zeta^2 + 313*zeta - 164)*q^142 + 1/75*(359*zeta^7 
+ 103*zeta^6 - 2303*zeta^5 - 356*zeta^4 + 4286*zeta^3 - 17*zeta^2 - 2393*zeta + 
220)*q^143 + 1/150*(49*zeta^7 - 193*zeta^6 - 538*zeta^5 + 1208*zeta^4 + 
1468*zeta^3 - 1983*zeta^2 - 640*zeta + 579)*q^144 + 1/150*(-70*zeta^7 - 
164*zeta^6 + 388*zeta^5 + 883*zeta^4 - 634*zeta^3 - 1212*zeta^2 + 418*zeta + 
258)*q^145 + 1/150*(-167*zeta^7 + 133*zeta^6 + 1325*zeta^5 - 724*zeta^4 - 
3016*zeta^3 + 737*zeta^2 + 1643*zeta + 420)*q^146 + 1/150*(-166*zeta^7 + 
21*zeta^6 + 1030*zeta^5 - 226*zeta^4 - 1833*zeta^3 + 489*zeta^2 + 890*zeta - 
248)*q^147 + 1/150*(-318*zeta^7 - 223*zeta^6 + 1882*zeta^5 + 1338*zeta^4 - 
2846*zeta^3 - 2275*zeta^2 + 758*zeta + 854)*q^148 + 1/150*(264*zeta^7 + 
220*zeta^6 - 1803*zeta^5 - 1299*zeta^4 + 3735*zeta^3 + 1963*zeta^2 - 2261*zeta -
398)*q^149 + 1/150*(66*zeta^7 + 44*zeta^6 - 449*zeta^5 - 546*zeta^4 + 652*zeta^3
+ 1374*zeta^2 + 74*zeta - 264)*q^150 + 1/150*(-61*zeta^7 + 188*zeta^6 + 
366*zeta^5 - 901*zeta^4 - 444*zeta^3 + 1155*zeta^2 - 88*zeta - 681)*q^151 + 
1/150*(-25*zeta^7 - 21*zeta^6 + 154*zeta^5 + 119*zeta^4 - 247*zeta^3 - 
158*zeta^2 + 66*zeta + 19)*q^152 + 1/75*(59*zeta^7 + 57*zeta^6 - 356*zeta^5 - 
320*zeta^4 + 542*zeta^3 + 414*zeta^2 - 117*zeta - 37)*q^154 + 1/150*(-18*zeta^7 
+ 67*zeta^6 + 108*zeta^5 - 326*zeta^4 - 122*zeta^3 + 424*zeta^2 - 46*zeta - 
232)*q^155 + 1/150*(3*zeta^7 + 55*zeta^6 - 121*zeta^5 - 597*zeta^4 + 485*zeta^3 
+ 1302*zeta^2 - 611*zeta - 171)*q^156 + 1/150*(-264*zeta^7 + 26*zeta^6 + 
1821*zeta^5 + 174*zeta^4 - 3825*zeta^3 - 1258*zeta^2 + 2228*zeta + 608)*q^157 + 
1/150*(32*zeta^7 + 51*zeta^6 - 289*zeta^5 - 306*zeta^4 + 820*zeta^3 + 479*zeta^2
- 752*zeta - 72)*q^158 + 1/25*(-6*zeta^7 + 31*zeta^6 + 62*zeta^5 - 202*zeta^4 - 
177*zeta^3 + 327*zeta^2 + 136*zeta - 68)*q^159 + 1/150*(279*zeta^7 + 51*zeta^6 -
1829*zeta^5 - 132*zeta^4 + 3488*zeta^3 - 137*zeta^2 - 1939*zeta + 92)*q^160 + 
1/150*(141*zeta^7 + 129*zeta^6 - 958*zeta^5 - 583*zeta^4 + 1958*zeta^3 + 
587*zeta^2 - 1078*zeta - 25)*q^161 + 1/50*(-38*zeta^7 - zeta^6 + 287*zeta^5 - 
43*zeta^4 - 638*zeta^3 + 152*zeta^2 + 327*zeta - 77)*q^162 + 1/50*(80*zeta^7 - 
3*zeta^6 - 549*zeta^5 + 49*zeta^4 + 1099*zeta^3 - 111*zeta^2 - 607*zeta - 
24)*q^163 + 1/150*(55*zeta^7 + 222*zeta^6 - 155*zeta^5 - 1392*zeta^4 - 
227*zeta^3 + 2178*zeta^2 + 489*zeta - 368)*q^164 + 1/75*(-110*zeta^7 - 63*zeta^6
+ 606*zeta^5 + 378*zeta^4 - 744*zeta^3 - 661*zeta^2 - 40*zeta + 298)*q^165 + 
1/150*(140*zeta^7 + 110*zeta^6 - 958*zeta^5 - 657*zeta^4 + 1990*zeta^3 + 
1015*zeta^2 - 1205*zeta - 214)*q^166 + 1/150*(-40*zeta^7 + 9*zeta^6 + 210*zeta^5
- 43*zeta^4 - 111*zeta^3 - 32*zeta^2 - 436*zeta + 53)*q^167 + 1/150*(-12*zeta^7 
- 31*zeta^6 + 72*zeta^5 + 154*zeta^4 - 164*zeta^3 - 240*zeta^2 + 183*zeta + 
190)*q^168 + 1/150*(128*zeta^7 + 192*zeta^6 - 704*zeta^5 - 1061*zeta^4 + 
800*zeta^3 + 1290*zeta^2 + 81*zeta + 20)*q^169 + 1/150*(-95*zeta^7 - 69*zeta^6 +
596*zeta^5 + 393*zeta^4 - 998*zeta^3 - 536*zeta^2 + 300*zeta + 93)*q^171 + 
1/150*(72*zeta^7 - 34*zeta^6 - 432*zeta^5 + 146*zeta^4 + 734*zeta^3 - 70*zeta^2 
- 443*zeta - 80)*q^172 + 1/150*(24*zeta^7 - 69*zeta^6 + 4*zeta^5 + 731*zeta^4 - 
517*zeta^3 - 1524*zeta^2 + 1036*zeta + 159)*q^173 + 1/50*(-40*zeta^7 - 72*zeta^6
+ 271*zeta^5 + 373*zeta^4 - 555*zeta^3 - 405*zeta^2 + 351*zeta + 26)*q^174 + 
1/150*(84*zeta^7 + 83*zeta^6 - 575*zeta^5 - 498*zeta^4 + 1168*zeta^3 + 
815*zeta^2 - 724*zeta - 220)*q^175 + 1/75*(-131*zeta^7 + 144*zeta^6 + 915*zeta^5
- 994*zeta^4 - 1906*zeta^3 + 1686*zeta^2 + 1136*zeta - 450)*q^176 + 
1/50*(-40*zeta^7 - 26*zeta^6 + 237*zeta^5 + 112*zeta^4 - 399*zeta^3 - 60*zeta^2 
+ 227*zeta - 64)*q^177 + 1/150*(-274*zeta^7 - 131*zeta^6 + 1967*zeta^5 + 
422*zeta^4 - 4212*zeta^3 - 38*zeta^2 + 2237*zeta - 245)*q^178 + 
1/150*(-12*zeta^7 + 117*zeta^6 + 189*zeta^5 - 708*zeta^4 - 576*zeta^3 + 
1124*zeta^2 + 223*zeta - 317)*q^179 + 1/150*(305*zeta^7 + 54*zeta^6 - 
2003*zeta^5 - 137*zeta^4 + 3828*zeta^3 - 152*zeta^2 - 2129*zeta + 92)*q^180 + 
1/150*(304*zeta^7 + 89*zeta^6 - 1780*zeta^5 - 404*zeta^4 + 2884*zeta^3 + 
411*zeta^2 - 1189*zeta + 210)*q^181 + 1/150*(176*zeta^7 + 161*zeta^6 - 
1165*zeta^5 - 966*zeta^4 + 2235*zeta^3 + 1592*zeta^2 - 1251*zeta - 462)*q^182 + 
1/150*(22*zeta^7 + 40*zeta^6 - 150*zeta^5 - 206*zeta^4 + 310*zeta^3 + 219*zeta^2
- 198*zeta - 12)*q^183 + 1/150*(31*zeta^7 + 3*zeta^6 - 184*zeta^5 - 79*zeta^4 + 
181*zeta^3 + 272*zeta^2 + 213*zeta - 71)*q^184 + 1/150*(68*zeta^7 - 199*zeta^6 -
408*zeta^5 + 954*zeta^4 + 508*zeta^3 - 1216*zeta^2 + 63*zeta + 702)*q^185 + 
1/150*(-266*zeta^7 - 162*zeta^6 + 1700*zeta^5 + 931*zeta^4 - 2966*zeta^3 - 
1318*zeta^2 + 987*zeta + 314)*q^186 + 1/150*(-144*zeta^7 + 102*zeta^6 + 
1110*zeta^5 - 514*zeta^4 - 2649*zeta^3 + 374*zeta^2 + 1464*zeta + 448)*q^188 + 
1/50*(11*zeta^7 - 39*zeta^6 - 66*zeta^5 + 187*zeta^4 + 74*zeta^3 - 243*zeta^2 + 
32*zeta + 149)*q^189 + 1/150*(3*zeta^6 - 2*zeta^5 - 25*zeta^4 + 11*zeta^3 + 
48*zeta^2 - 20*zeta - 9)*q^190 + 1/150*(86*zeta^7 + 178*zeta^6 - 583*zeta^5 - 
906*zeta^4 + 1195*zeta^3 + 927*zeta^2 - 768*zeta - 32)*q^191 + 1/150*(18*zeta^7 
- 33*zeta^6 + 40*zeta^5 + 198*zeta^4 - 622*zeta^3 - 277*zeta^2 + 942*zeta - 
58)*q^192 + 1/150*(-42*zeta^7 - 539*zeta^6 - 182*zeta^5 + 3430*zeta^4 + 
1519*zeta^3 - 5439*zeta^2 - 1638*zeta + 1008)*q^193 + 1/75*(-27*zeta^7 - 
80*zeta^6 + 71*zeta^5 + 381*zeta^4 + 90*zeta^3 - 286*zeta^2 - 35*zeta - 
228)*q^194 + 1/150*(-137*zeta^7 - 307*zeta^6 + 770*zeta^5 + 1646*zeta^4 - 
1280*zeta^3 - 2245*zeta^2 + 828*zeta + 469)*q^195 + 1/150*(144*zeta^7 + 
219*zeta^6 - 903*zeta^5 - 1113*zeta^4 + 1710*zeta^3 + 1402*zeta^2 - 1003*zeta - 
241)*q^196 + 1/150*(-322*zeta^7 - 197*zeta^6 + 1915*zeta^5 + 829*zeta^4 - 
3235*zeta^3 - 389*zeta^2 + 1825*zeta - 512)*q^197 + 1/25*(-31*zeta^7 - 22*zeta^6
+ 171*zeta^5 + 124*zeta^4 - 247*zeta^3 - 174*zeta^2 + 77*zeta + 4)*q^198 + 
1/150*(628*zeta^7 + 469*zeta^6 - 3805*zeta^5 - 2814*zeta^4 + 6092*zeta^3 + 
4749*zeta^2 - 2088*zeta - 1684)*q^199 + 1/150*(-52*zeta^7 - 70*zeta^6 + 
351*zeta^5 + 380*zeta^4 - 715*zeta^3 - 474*zeta^2 + 438*zeta + 60)*q^200 + 
1/150*(-112*zeta^7 - 57*zeta^6 + 745*zeta^5 + 769*zeta^4 - 1021*zeta^3 - 
2018*zeta^2 - 264*zeta + 395)*q^201 + 1/150*(-112*zeta^7 + 30*zeta^6 + 
672*zeta^5 - 118*zeta^4 - 1170*zeta^3 - 46*zeta^2 + 765*zeta + 248)*q^202 + 
1/150*(-82*zeta^7 - 102*zeta^6 + 472*zeta^5 + 567*zeta^4 - 628*zeta^3 - 
706*zeta^2 + 51*zeta + 18)*q^203 + 1/150*(-4*zeta^7 - 150*zeta^6 - 122*zeta^5 + 
805*zeta^4 + 767*zeta^3 - 864*zeta^2 - 711*zeta - 208)*q^205 + 1/150*(147*zeta^7
- 24*zeta^6 - 882*zeta^5 + 83*zeta^4 + 1556*zeta^3 + 163*zeta^2 - 1060*zeta - 
417)*q^206 + 1/150*(91*zeta^7 + 32*zeta^6 - 576*zeta^5 - 466*zeta^4 + 698*zeta^3
+ 1292*zeta^2 + 389*zeta - 278)*q^207 + 1/150*(158*zeta^7 - 136*zeta^6 - 
1094*zeta^5 + 442*zeta^4 + 2310*zeta^3 + 431*zeta^2 - 1294*zeta - 476)*q^208 + 
1/75*(-2*zeta^7 - 12*zeta^6 + 47*zeta^5 + 72*zeta^4 - 206*zeta^3 - 108*zeta^2 + 
242*zeta + 2)*q^209 + 1/150*(19*zeta^7 - 24*zeta^6 - 135*zeta^5 + 164*zeta^4 + 
287*zeta^3 - 276*zeta^2 - 175*zeta + 72)*q^210 + 1/150*(-693*zeta^7 - 59*zeta^6 
+ 4637*zeta^5 - 6*zeta^4 - 9042*zeta^3 + 617*zeta^2 + 5011*zeta - 36)*q^211 + 
1/75*(118*zeta^7 + 305*zeta^6 - 631*zeta^5 - 1657*zeta^4 + 982*zeta^3 + 
2304*zeta^2 - 679*zeta - 507)*q^212 + 1/150*(-104*zeta^7 - 271*zeta^6 + 
557*zeta^5 + 1472*zeta^4 - 872*zeta^3 - 2048*zeta^2 + 607*zeta + 455)*q^213 + 
1/150*(219*zeta^7 - 127*zeta^6 - 1673*zeta^5 + 714*zeta^4 + 3696*zeta^3 - 
767*zeta^2 - 2023*zeta - 420)*q^214 + 1/150*(38*zeta^7 - 61*zeta^6 - 286*zeta^5 
+ 414*zeta^4 + 639*zeta^3 - 693*zeta^2 - 404*zeta + 156)*q^215 + 
1/50*(-42*zeta^7 - 24*zeta^6 + 229*zeta^5 + 144*zeta^4 - 271*zeta^3 - 253*zeta^2
- 33*zeta + 116)*q^216 + 1/150*(-128*zeta^7 - 118*zeta^6 + 874*zeta^5 + 
681*zeta^4 - 1810*zeta^3 - 981*zeta^2 + 1101*zeta + 182)*q^217 + 1/75*(18*zeta^7
+ 8*zeta^6 - 122*zeta^5 - 120*zeta^4 + 172*zeta^3 + 324*zeta^2 + 38*zeta - 
60)*q^218 + 1/150*(-156*zeta^7 - 139*zeta^6 + 936*zeta^5 + 718*zeta^4 - 
1832*zeta^3 - 1308*zeta^2 + 1593*zeta + 1198)*q^219 + 1/75*(-11*zeta^7 - 
141*zeta^6 - 64*zeta^5 + 760*zeta^4 + 616*zeta^3 - 826*zeta^2 - 615*zeta - 
187)*q^220 + 1/150*(363*zeta^7 + 207*zeta^6 - 2334*zeta^5 - 1196*zeta^4 + 
4125*zeta^3 + 1720*zeta^2 - 1419*zeta - 445)*q^222 + 1/150*(-142*zeta^7 + 
269*zeta^6 + 852*zeta^5 - 1274*zeta^4 - 1222*zeta^3 + 1528*zeta^2 + 286*zeta - 
792)*q^223 + 1/150*(-71*zeta^7 + 3*zeta^6 + 396*zeta^5 + 61*zeta^4 - 303*zeta^3 
- 352*zeta^2 - 629*zeta + 133)*q^224 + 1/150*(-166*zeta^7 - 246*zeta^6 + 
1127*zeta^5 + 1308*zeta^4 - 2315*zeta^3 - 1537*zeta^2 + 1442*zeta + 156)*q^225 +
1/150*(170*zeta^7 + 143*zeta^6 - 1080*zeta^5 - 858*zeta^4 + 1916*zeta^3 + 
1429*zeta^2 - 900*zeta - 454)*q^226 + 1/150*(242*zeta^7 + 153*zeta^6 - 
1350*zeta^5 - 848*zeta^4 + 1996*zeta^3 + 1167*zeta^2 - 665*zeta + 6)*q^227 + 
1/150*(34*zeta^7 - 47*zeta^6 - 298*zeta^5 + 245*zeta^4 + 728*zeta^3 - 229*zeta^2
- 394*zeta - 144)*q^228 + 1/150*(147*zeta^7 + 444*zeta^6 - 735*zeta^5 - 
2442*zeta^4 + 1032*zeta^3 + 3455*zeta^2 - 791*zeta - 794)*q^229 + 
1/150*(35*zeta^7 + 49*zeta^6 - 220*zeta^5 - 247*zeta^4 + 414*zeta^3 + 305*zeta^2
- 236*zeta - 45)*q^230 + 1/75*(-119*zeta^7 - 57*zeta^6 + 731*zeta^5 + 230*zeta^4
- 1290*zeta^3 - 85*zeta^2 + 725*zeta - 140)*q^231 + 1/50*(6*zeta^7 + 23*zeta^6 -
18*zeta^5 - 144*zeta^4 - 20*zeta^3 + 225*zeta^2 + 49*zeta - 38)*q^232 + 
1/50*(-118*zeta^7 - 111*zeta^6 + 794*zeta^5 + 666*zeta^4 - 1568*zeta^3 - 
1093*zeta^2 + 928*zeta + 306)*q^233 + 1/150*(-322*zeta^7 - 438*zeta^6 + 
2192*zeta^5 + 2355*zeta^4 - 4520*zeta^3 - 2854*zeta^2 + 2807*zeta + 330)*q^234 +
1/150*(112*zeta^7 - 66*zeta^6 - 517*zeta^5 + 548*zeta^4 - 14*zeta^3 - 826*zeta^2
+ 1668*zeta - 26)*q^235 + 1/150*(-81*zeta^7 + 125*zeta^6 + 486*zeta^5 - 
587*zeta^4 - 728*zeta^3 + 675*zeta^2 + 243*zeta - 323)*q^236 + 
1/150*(-148*zeta^7 - 48*zeta^6 + 988*zeta^5 + 291*zeta^4 - 1882*zeta^3 - 
490*zeta^2 + 753*zeta + 240)*q^237 + 1/150*(162*zeta^7 - 88*zeta^6 - 1222*zeta^5
+ 435*zeta^4 + 2833*zeta^3 - 268*zeta^2 - 1515*zeta - 466)*q^239 + 
1/150*(-46*zeta^7 + 87*zeta^6 + 276*zeta^5 - 408*zeta^4 - 392*zeta^3 + 
490*zeta^2 + 79*zeta - 280)*q^240 + 1/150*(-62*zeta^7 + 80*zeta^6 + 189*zeta^5 -
802*zeta^4 + 440*zeta^3 + 1562*zeta^2 - 1486*zeta - 116)*q^241 + 
1/150*(168*zeta^7 + 146*zeta^6 - 1150*zeta^5 - 851*zeta^4 + 2390*zeta^3 + 
1251*zeta^2 - 1455*zeta - 242)*q^242 + 1/50*(-178*zeta^7 - 138*zeta^6 + 
1095*zeta^5 + 828*zeta^4 - 1815*zeta^3 - 1391*zeta^2 + 703*zeta + 476)*q^243 + 
1/150*(25*zeta^7 - zeta^6 - 153*zeta^5 + 20*zeta^4 + 267*zeta^3 - 51*zeta^2 - 
126*zeta + 34)*q^244 + 1/150*(-253*zeta^7 - 47*zeta^6 + 1663*zeta^5 + 130*zeta^4
- 3184*zeta^3 + 97*zeta^2 + 1777*zeta - 68)*q^245 + 1/150*(281*zeta^7 + 
115*zeta^6 - 2030*zeta^5 - 320*zeta^4 + 4364*zeta^3 - 135*zeta^2 - 2300*zeta + 
303)*q^246 + 1/150*(95*zeta^7 + 70*zeta^6 - 661*zeta^5 - 292*zeta^4 + 
1380*zeta^3 + 239*zeta^2 - 749*zeta + 24)*q^247 + 1/150*(74*zeta^7 + 35*zeta^6 -
452*zeta^5 - 137*zeta^4 + 790*zeta^3 + 37*zeta^2 - 440*zeta + 96)*q^248 + 
1/150*(zeta^7 - 255*zeta^6 - 213*zeta^5 + 1634*zeta^4 + 938*zeta^3 - 2607*zeta^2
- 877*zeta + 504)*q^249 + 1/150*(-60*zeta^7 - 27*zeta^6 + 301*zeta^5 + 
162*zeta^4 - 247*zeta^3 - 298*zeta^2 - 225*zeta + 170)*q^250 + 
1/150*(-510*zeta^7 - 80*zeta^6 + 3509*zeta^5 + 931*zeta^4 - 7345*zeta^3 - 
2800*zeta^2 + 4325*zeta + 1062)*q^251 + 1/150*(-67*zeta^7 + 10*zeta^6 + 
360*zeta^5 - 20*zeta^4 - 224*zeta^3 - 164*zeta^2 - 677*zeta + 104)*q^252 + 
1/75*(91*zeta^7 - 58*zeta^6 - 546*zeta^5 + 259*zeta^4 + 912*zeta^3 - 193*zeta^2 
- 520*zeta - 37)*q^253 + 1/150*(56*zeta^7 - 14*zeta^6 - 406*zeta^5 + 61*zeta^4 +
889*zeta^3 + 4*zeta^2 - 447*zeta - 132)*q^254 + 1/150*(313*zeta^7 + 283*zeta^6 -
1908*zeta^5 - 1594*zeta^4 + 2982*zeta^3 + 2086*zeta^2 - 717*zeta - 223)*q^256 + 
1/150*(-29*zeta^7 - 104*zeta^6 + 174*zeta^5 + 515*zeta^4 - 428*zeta^3 - 
781*zeta^2 + 524*zeta + 591)*q^257 + 1/150*(-72*zeta^7 - 41*zeta^6 + 494*zeta^5 
+ 555*zeta^4 - 721*zeta^3 - 1440*zeta^2 - 92*zeta + 267)*q^258 + 
1/150*(318*zeta^7 + 228*zeta^6 - 2176*zeta^5 - 1394*zeta^4 + 4520*zeta^3 + 
2251*zeta^2 - 2726*zeta - 508)*q^259 + 1/150*(-444*zeta^7 - 259*zeta^6 + 
2457*zeta^5 + 1554*zeta^4 - 3061*zeta^3 - 2712*zeta^2 - 91*zeta + 1206)*q^260 + 
1/50*(37*zeta^7 + 45*zeta^6 - 189*zeta^5 - 268*zeta^4 + 227*zeta^3 + 399*zeta^2 
- 28*zeta - 42)*q^261 + 1/150*(202*zeta^7 + 62*zeta^6 - 1295*zeta^5 - 226*zeta^4
+ 2411*zeta^3 + 28*zeta^2 - 1353*zeta + 120)*q^262 + 1/30*(-107*zeta^7 - 
157*zeta^6 + 676*zeta^5 + 793*zeta^4 - 1290*zeta^3 - 989*zeta^2 + 752*zeta + 
165)*q^263 + 1/25*(4*zeta^7 + 29*zeta^6 - 5*zeta^5 - 167*zeta^4 - 30*zeta^3 + 
250*zeta^2 - zeta - 63)*q^264 + 1/75*(-383*zeta^7 - 63*zeta^6 + 2525*zeta^5 + 
152*zeta^4 - 4848*zeta^3 + 197*zeta^2 + 2699*zeta - 92)*q^265 + 
1/150*(-68*zeta^7 - 13*zeta^6 + 404*zeta^5 + 46*zeta^4 - 671*zeta^3 - 21*zeta^2 
+ 290*zeta - 60)*q^266 + 1/150*(-196*zeta^7 - 282*zeta^6 + 1630*zeta^5 + 
1692*zeta^4 - 4267*zeta^3 - 2685*zeta^2 + 3631*zeta + 490)*q^267 + 
1/150*(-86*zeta^7 - 260*zeta^6 + 577*zeta^5 + 1281*zeta^4 - 1165*zeta^3 - 
1162*zeta^2 + 779*zeta - 38)*q^268 + 1/150*(-109*zeta^7 + 39*zeta^6 + 548*zeta^5
- 267*zeta^4 - 191*zeta^3 + 232*zeta^2 - 1343*zeta + 101)*q^269 + 1/50*(5*zeta^7
- 19*zeta^6 - 30*zeta^5 + 93*zeta^4 + 34*zeta^3 - 121*zeta^2 + 12*zeta + 
63)*q^270 + 1/150*(272*zeta^7 + 374*zeta^6 - 1530*zeta^5 - 2074*zeta^4 + 
1887*zeta^3 + 2550*zeta^2)*q^271 + 1/150*(-270*zeta^7 - 264*zeta^6 + 1626*zeta^5
+ 1481*zeta^4 - 2463*zeta^3 - 1912*zeta^2 + 519*zeta + 166)*q^273 + 
1/150*(163*zeta^7 + 13*zeta^6 - 978*zeta^5 - 109*zeta^4 + 1762*zeta^3 + 
461*zeta^2 - 1264*zeta - 603)*q^274 + 1/75*(-26*zeta^7 - 9*zeta^6 + 161*zeta^5 +
125*zeta^4 - 185*zeta^3 - 346*zeta^2 - 126*zeta + 79)*q^275 + 1/150*(302*zeta^7 
+ 424*zeta^6 - 2054*zeta^5 - 2270*zeta^4 + 4230*zeta^3 + 2719*zeta^2 - 2630*zeta
- 300)*q^276 + 1/150*(-198*zeta^7 - 28*zeta^6 + 817*zeta^5 + 168*zeta^4 + 
124*zeta^3 - 430*zeta^2 - 1912*zeta + 554)*q^277 + 1/150*(-97*zeta^7 - 
113*zeta^6 + 501*zeta^5 + 670*zeta^4 - 618*zeta^3 - 993*zeta^2 + 93*zeta + 
104)*q^278 + 1/150*(106*zeta^7 + 111*zeta^6 - 565*zeta^5 - 499*zeta^4 + 
801*zeta^3 + 311*zeta^2 - 463*zeta + 304)*q^279 + 1/150*(-73*zeta^7 - 185*zeta^6
+ 394*zeta^5 + 1003*zeta^4 - 622*zeta^3 - 1391*zeta^2 + 426*zeta + 305)*q^280 + 
1/150*(212*zeta^7 + 847*zeta^6 - 875*zeta^5 - 4751*zeta^4 + 770*zeta^3 + 
6890*zeta^2 - 883*zeta - 1649)*q^281 + 1/150*(4*zeta^7 + 252*zeta^6 + 329*zeta^5
- 1234*zeta^4 - 1383*zeta^3 + 998*zeta^2 + 719*zeta + 736)*q^282 + 
1/150*(-21*zeta^7 - 695*zeta^6 - 435*zeta^5 + 4440*zeta^4 + 2303*zeta^3 - 
7065*zeta^2 - 2272*zeta + 1346)*q^283 + 1/150*(-406*zeta^7 - 242*zeta^6 + 
2261*zeta^5 + 1452*zeta^4 - 2875*zeta^3 - 2527*zeta^2 + 11*zeta + 1104)*q^284 + 
1/150*(-20*zeta^7 - 14*zeta^6 + 138*zeta^5 + 85*zeta^4 - 290*zeta^3 - 135*zeta^2
+ 177*zeta + 30)*q^285 + 1/75*(-55*zeta^7 - 7*zeta^6 + 326*zeta^5 + 151*zeta^4 -
321*zeta^3 - 500*zeta^2 - 373*zeta + 131)*q^286 + 1/150*(-115*zeta^7 + 
128*zeta^6 + 690*zeta^5 - 593*zeta^4 - 1090*zeta^3 + 619*zeta^2 + 493*zeta - 
219)*q^287 + 1/150*(344*zeta^7 + 114*zeta^6 - 2294*zeta^5 - 693*zeta^4 + 
4361*zeta^3 + 1160*zeta^2 - 1749*zeta - 540)*q^288 + 1/150*(-14*zeta^7 - 
30*zeta^6 + 68*zeta^5 + 165*zeta^4 - 38*zeta^3 - 194*zeta^2 - 51*zeta - 
18)*q^290 + 1/75*(118*zeta^7 - 50*zeta^6 - 708*zeta^5 + 212*zeta^4 + 1210*zeta^3
- 76*zeta^2 - 745*zeta - 162)*q^291 + 1/150*(-167*zeta^7 + 31*zeta^6 + 
886*zeta^5 - 115*zeta^4 - 507*zeta^3 - 268*zeta^2 - 1757*zeta + 241)*q^292 + 
1/75*(106*zeta^7 - 4*zeta^6 - 730*zeta^5 - 100*zeta^4 + 1530*zeta^3 + 527*zeta^2
- 892*zeta - 240)*q^293 + 1/150*(206*zeta^7 + 219*zeta^6 - 1458*zeta^5 - 
1314*zeta^4 + 3120*zeta^3 + 2137*zeta^2 - 2096*zeta - 538)*q^294 + 
1/150*(-88*zeta^7 + 225*zeta^6 + 724*zeta^5 - 1492*zeta^4 - 1764*zeta^3 + 
2451*zeta^2 + 1211*zeta - 542)*q^295 + 1/150*(-249*zeta^7 - 73*zeta^6 + 
1593*zeta^5 + 252*zeta^4 - 2954*zeta^3 + 15*zeta^2 + 1647*zeta - 164)*q^296 + 
1/25*(45*zeta^7 + 120*zeta^6 - 237*zeta^5 - 654*zeta^4 + 360*zeta^3 + 913*zeta^2
- 253*zeta - 202)*q^297 + 1/150*(198*zeta^7 + 132*zeta^6 - 1384*zeta^5 - 
529*zeta^4 + 2894*zeta^3 + 376*zeta^2 - 1554*zeta + 90)*q^298 + 
1/150*(186*zeta^7 + 274*zeta^6 - 881*zeta^5 - 1266*zeta^4 + 961*zeta^3 + 
868*zeta^2 - 583*zeta + 760)*q^299 + 1/150*(-242*zeta^7 - 45*zeta^6 + 
1438*zeta^5 + 156*zeta^4 - 2390*zeta^3 - 63*zeta^2 + 1035*zeta - 218)*q^300 + 
1/150*(-130*zeta^7 - 113*zeta^6 + 842*zeta^5 + 678*zeta^4 - 1552*zeta^3 - 
1123*zeta^2 + 800*zeta + 342)*q^301 + 1/150*(-122*zeta^7 - 78*zeta^6 + 
837*zeta^5 + 490*zeta^4 - 1745*zeta^3 - 829*zeta^2 + 1052*zeta + 200)*q^302 + 
1/150*(18*zeta^7 + 55*zeta^6 - 202*zeta^5 - 609*zeta^4 + 539*zeta^3 + 
1368*zeta^2 - 470*zeta - 201)*q^303 + 1/150*(66*zeta^7 - 14*zeta^6 - 396*zeta^5 
+ 52*zeta^4 + 694*zeta^3 + 52*zeta^2 - 463*zeta - 166)*q^304 + 1/150*(2*zeta^7 +
8*zeta^6 - 6*zeta^5 - 42*zeta^4 - 15*zeta^3 + 46*zeta^2 + 30*zeta + 2)*q^305 + 
1/150*(-73*zeta^7 + 63*zeta^6 + 574*zeta^5 - 321*zeta^4 - 1405*zeta^3 + 
254*zeta^2 + 798*zeta + 243)*q^307 + 1/75*(-67*zeta^7 + 120*zeta^6 + 402*zeta^5 
- 567*zeta^4 - 584*zeta^3 + 673*zeta^2 + 154*zeta - 343)*q^308 + 
1/150*(-49*zeta^7 - 67*zeta^6 + 392*zeta^5 + 763*zeta^4 - 753*zeta^3 - 
1784*zeta^2 + 317*zeta + 299)*q^309 + 1/150*(-40*zeta^7 - 22*zeta^6 + 280*zeta^5
+ 139*zeta^4 - 600*zeta^3 - 235*zeta^2 + 371*zeta + 58)*q^310 + 1/150*(52*zeta^7
+ 31*zeta^6 - 291*zeta^5 - 186*zeta^4 + 376*zeta^3 + 323*zeta^2 - 12*zeta - 
140)*q^311 + 1/150*(91*zeta^7 + 144*zeta^6 - 439*zeta^5 - 872*zeta^4 + 
441*zeta^3 + 1320*zeta^2 + 43*zeta - 172)*q^312 + 1/150*(449*zeta^7 + 148*zeta^6
- 2853*zeta^5 - 539*zeta^4 + 5250*zeta^3 + 54*zeta^2 - 2935*zeta + 332)*q^313 + 
1/150*(171*zeta^7 - 132*zeta^6 - 1409*zeta^5 + 1003*zeta^4 + 3322*zeta^3 - 
1939*zeta^2 - 1623*zeta + 684)*q^314 + 1/150*(-118*zeta^7 - 305*zeta^6 + 
631*zeta^5 + 1657*zeta^4 - 982*zeta^3 - 2304*zeta^2 + 679*zeta + 507)*q^315 + 
1/150*(274*zeta^7 - zeta^6 - 1870*zeta^5 + 119*zeta^4 + 3724*zeta^3 - 331*zeta^2
- 2062*zeta - 64)*q^316 + 1/150*(405*zeta^7 - 116*zeta^6 - 2561*zeta^5 + 
964*zeta^4 + 4693*zeta^3 - 1848*zeta^2 - 2385*zeta + 744)*q^317 + 1/25*(6*zeta^7
+ zeta^6 - 24*zeta^5 - 6*zeta^4 - 8*zeta^3 + 15*zeta^2 + 64*zeta - 18)*q^318 + 
1/25*(-28*zeta^7 + 2*zeta^6 + 193*zeta^5 + 22*zeta^4 - 405*zeta^3 - 136*zeta^2 +
236*zeta + 64)*q^319 + 1/150*(71*zeta^7 - 35*zeta^6 - 326*zeta^5 + 303*zeta^4 - 
9*zeta^3 - 452*zeta^2 + 1037*zeta - 37)*q^320 + 1/150*(140*zeta^7 + 197*zeta^6 -
840*zeta^5 - 998*zeta^4 + 1724*zeta^3 + 1672*zeta^2 - 1637*zeta - 1410)*q^321 + 
1/150*(314*zeta^7 + 212*zeta^6 - 1986*zeta^5 - 1212*zeta^4 + 3387*zeta^3 + 
1678*zeta^2 - 1068*zeta - 334)*q^322 + 1/50*(-59*zeta^7 - 57*zeta^6 + 356*zeta^5
+ 320*zeta^4 - 542*zeta^3 - 414*zeta^2 + 117*zeta + 37)*q^324 + 
1/150*(-146*zeta^7 - 45*zeta^6 + 876*zeta^5 + 262*zeta^4 - 1614*zeta^3 - 
644*zeta^2 + 1224*zeta + 688)*q^325 + 1/50*(6*zeta^7 + 9*zeta^6 - 53*zeta^5 - 
109*zeta^4 + 113*zeta^3 + 258*zeta^2 - 62*zeta - 39)*q^326 + 1/75*(-52*zeta^7 - 
108*zeta^6 + 350*zeta^5 + 552*zeta^4 - 710*zeta^3 - 574*zeta^2 + 452*zeta + 
24)*q^327 + 1/150*(196*zeta^7 + 141*zeta^6 - 1167*zeta^5 - 846*zeta^4 + 
1791*zeta^3 + 1436*zeta^2 - 511*zeta - 530)*q^328 + 1/150*(242*zeta^7 - 
279*zeta^6 - 1702*zeta^5 + 1920*zeta^4 + 3572*zeta^3 - 3249*zeta^2 - 2145*zeta +
854)*q^329 + 1/75*(-55*zeta^7 - 15*zeta^6 + 355*zeta^5 + 52*zeta^4 - 666*zeta^3 
+ zeta^2 + 373*zeta - 28)*q^330 + 1/75*(76*zeta^7 + 275*zeta^6 - 339*zeta^5 - 
1533*zeta^4 + 374*zeta^3 + 2206*zeta^2 - 351*zeta - 521)*q^331 + 
1/150*(-289*zeta^7 - 788*zeta^6 + 1509*zeta^5 + 4302*zeta^4 - 2264*zeta^3 - 
6021*zeta^2 + 1613*zeta + 1342)*q^332 + 1/150*(-389*zeta^7 - 192*zeta^6 + 
2381*zeta^5 + 779*zeta^4 - 4182*zeta^3 - 298*zeta^2 + 2351*zeta - 476)*q^333 + 
1/150*(80*zeta^7 + 59*zeta^6 - 440*zeta^5 - 334*zeta^4 + 631*zeta^3 + 471*zeta^2
- 192*zeta - 16)*q^334 + 1/150*(-138*zeta^7 - 92*zeta^6 + 791*zeta^5 + 
552*zeta^4 - 1096*zeta^3 - 950*zeta^2 + 148*zeta + 382)*q^335 + 1/150*(34*zeta^7
+ 196*zeta^6 - 222*zeta^5 - 932*zeta^4 + 430*zeta^3 + 723*zeta^2 - 324*zeta + 
96)*q^336 + 1/150*(98*zeta^7 - 51*zeta^6 - 466*zeta^5 + 405*zeta^4 + 49*zeta^3 -
560*zeta^2 + 1378*zeta - 43)*q^337 + 1/150*(-86*zeta^7 - 49*zeta^6 + 516*zeta^5 
+ 262*zeta^4 - 978*zeta^3 - 532*zeta^2 + 794*zeta + 524)*q^338 + 
1/150*(-203*zeta^7 - 255*zeta^6 + 1166*zeta^5 + 1418*zeta^4 - 1541*zeta^3 - 
1764*zeta^2 + 117*zeta + 37)*q^339 + 1/75*(69*zeta^7 - 15*zeta^6 - 498*zeta^5 + 
65*zeta^4 + 1083*zeta^3 + 14*zeta^2 - 534*zeta - 167)*q^341 + 1/150*(81*zeta^7 +
7*zeta^6 - 486*zeta^5 - 55*zeta^4 + 878*zeta^3 + 231*zeta^2 - 636*zeta - 
313)*q^342 + 1/150*(162*zeta^7 - 28*zeta^6 - 861*zeta^5 + 94*zeta^4 + 500*zeta^3
+ 294*zeta^2 + 1690*zeta - 240)*q^343 + 1/150*(82*zeta^7 + 82*zeta^6 - 
564*zeta^5 - 461*zeta^4 + 1180*zeta^3 + 624*zeta^2 - 729*zeta - 102)*q^344 + 
1/150*(-60*zeta^7 - 27*zeta^6 + 301*zeta^5 + 162*zeta^4 - 247*zeta^3 - 
298*zeta^2 - 225*zeta + 170)*q^345 + 1/150*(472*zeta^7 + 31*zeta^6 - 2856*zeta^5
+ 62*zeta^4 + 4885*zeta^3 - 465*zeta^2 - 2222*zeta + 524)*q^346 + 
1/150*(-711*zeta^7 + 110*zeta^6 + 5003*zeta^5 - 837*zeta^4 - 10270*zeta^3 + 
1292*zeta^2 + 5665*zeta + 476)*q^347 + 1/50*(-54*zeta^7 - 48*zeta^6 + 368*zeta^5
+ 215*zeta^4 - 754*zeta^3 - 212*zeta^2 + 414*zeta + 6)*q^348 + 1/75*(170*zeta^7 
+ 133*zeta^6 - 1175*zeta^5 - 569*zeta^4 + 2438*zeta^3 + 500*zeta^2 - 1327*zeta +
25)*q^349 + 1/150*(42*zeta^7 - 97*zeta^6 - 422*zeta^5 + 495*zeta^4 + 1116*zeta^3
- 443*zeta^2 - 598*zeta - 288)*q^350 + 1/50*(-26*zeta^7 + 148*zeta^6 + 
278*zeta^5 - 962*zeta^4 - 811*zeta^3 + 1554*zeta^2 + 633*zeta - 326)*q^351 + 
1/75*(290*zeta^7 + 213*zeta^6 - 1748*zeta^5 - 1278*zeta^4 + 2765*zeta^3 + 
2160*zeta^2 - 905*zeta - 776)*q^352 + 1/150*(354*zeta^7 - 112*zeta^6 - 
2444*zeta^5 + 116*zeta^4 + 5140*zeta^3 + 1483*zeta^2 - 2960*zeta - 888)*q^353 + 
1/50*(16*zeta^7 + 6*zeta^6 - 105*zeta^5 - 92*zeta^4 + 138*zeta^3 + 254*zeta^2 + 
52*zeta - 50)*q^354 + 1/150*(121*zeta^7 - 307*zeta^6 - 726*zeta^5 + 1457*zeta^4 
+ 946*zeta^3 - 1829*zeta^2 + 12*zeta + 1091)*q^355 + 1/150*(-323*zeta^7 - 
61*zeta^6 + 2200*zeta^5 + 403*zeta^4 - 4348*zeta^3 - 824*zeta^2 + 1866*zeta + 
577)*q^356 + 1/150*(-199*zeta^7 - 105*zeta^6 + 1288*zeta^5 + 613*zeta^4 - 
2308*zeta^3 - 900*zeta^2 + 828*zeta + 245)*q^358 + 1/150*(65*zeta^7 - 233*zeta^6
- 390*zeta^5 + 1121*zeta^4 + 438*zeta^3 - 1457*zeta^2 + 184*zeta + 871)*q^359 + 
1/50*(-13*zeta^7 + 8*zeta^6 + 60*zeta^5 - 66*zeta^4 + 2*zeta^3 + 100*zeta^2 - 
195*zeta + 2)*q^360 + 1/150*(-538*zeta^7 - 406*zeta^6 + 3678*zeta^5 + 
2453*zeta^4 - 7630*zeta^3 - 3876*zeta^2 + 4605*zeta + 846)*q^361 + 
1/150*(-388*zeta^7 - 433*zeta^6 + 2825*zeta^5 + 2598*zeta^4 - 6300*zeta^3 - 
4201*zeta^2 + 4488*zeta + 996)*q^362 + 1/150*(-35*zeta^7 - 285*zeta^6 - 
17*zeta^5 + 1806*zeta^4 + 664*zeta^3 - 2853*zeta^2 - 801*zeta + 520)*q^363 + 
1/150*(-496*zeta^7 - 158*zeta^6 + 3159*zeta^5 + 568*zeta^4 - 5829*zeta^3 - 
36*zeta^2 + 3257*zeta - 352)*q^364 + 1/150*(-309*zeta^7 - 795*zeta^6 + 
1656*zeta^5 + 4317*zeta^4 - 2586*zeta^3 - 5999*zeta^2 + 1784*zeta + 1319)*q^365 
+ 1/150*(49*zeta^7 + 11*zeta^6 - 364*zeta^5 - zeta^4 + 802*zeta^3 - 109*zeta^2 -
420*zeta + 73)*q^366 + 1/150*(65*zeta^7 - 48*zeta^6 - 514*zeta^5 + 259*zeta^4 + 
1169*zeta^3 - 256*zeta^2 - 642*zeta - 164)*q^367 + 1/150*(-469*zeta^7 + zeta^6 +
2861*zeta^5 - 264*zeta^4 - 4961*zeta^3 + 783*zeta^2 + 2312*zeta - 590)*q^368 + 
1/50*(142*zeta^7 + 115*zeta^6 - 890*zeta^5 - 690*zeta^4 + 1536*zeta^3 + 
1153*zeta^2 - 672*zeta - 378)*q^369 + 1/150*(118*zeta^7 + 64*zeta^6 - 812*zeta^5
- 420*zeta^4 + 1700*zeta^3 + 761*zeta^2 - 1024*zeta - 200)*q^370 + 
1/75*(55*zeta^7 - 31*zeta^6 - 252*zeta^5 + 263*zeta^4 - 13*zeta^3 - 400*zeta^2 +
821*zeta - 17)*q^371 + 1/150*(86*zeta^7 + 49*zeta^6 - 516*zeta^5 - 262*zeta^4 + 
978*zeta^3 + 532*zeta^2 - 794*zeta - 524)*q^372 + 1/150*(-167*zeta^7 - 
393*zeta^6 + 776*zeta^5 + 2151*zeta^4 - 260*zeta^3 - 2504*zeta^2 - 798*zeta - 
243)*q^373 + 1/150*(-32*zeta^7 + 90*zeta^6 + 314*zeta^5 - 477*zeta^4 - 
959*zeta^3 + 472*zeta^2 + 651*zeta + 204)*q^375 + 1/150*(15*zeta^7 - 155*zeta^6 
- 90*zeta^5 + 749*zeta^4 - 16*zeta^3 - 1029*zeta^2 + 351*zeta + 701)*q^376 + 
1/150*(103*zeta^7 - 4*zeta^6 - 573*zeta^5 - 88*zeta^4 + 434*zeta^3 + 506*zeta^2 
+ 917*zeta - 194)*q^377 + 1/50*(30*zeta^7 + 24*zeta^6 - 205*zeta^5 - 143*zeta^4 
+ 425*zeta^3 + 220*zeta^2 - 257*zeta - 46)*q^378 + 1/150*(352*zeta^7 + 
163*zeta^6 - 1811*zeta^5 - 978*zeta^4 + 1695*zeta^3 + 1774*zeta^2 + 993*zeta - 
966)*q^379 + 1/150*(6*zeta^7 - 31*zeta^6 - 62*zeta^5 + 202*zeta^4 + 177*zeta^3 -
327*zeta^2 - 136*zeta + 68)*q^380 + 1/150*(329*zeta^7 + 14*zeta^6 - 2225*zeta^5 
+ 67*zeta^4 + 4390*zeta^3 - 332*zeta^2 - 2435*zeta - 36)*q^381 + 
1/150*(224*zeta^7 + 43*zeta^6 - 1665*zeta^5 + 36*zeta^4 + 3664*zeta^3 - 
560*zeta^2 - 1907*zeta + 357)*q^382 + 1/150*(-221*zeta^7 - 295*zeta^6 + 
1424*zeta^5 + 1463*zeta^4 - 2774*zeta^3 - 1771*zeta^2 + 1596*zeta + 271)*q^383 +
1/150*(299*zeta^7 - 75*zeta^6 - 2147*zeta^5 + 490*zeta^4 + 4494*zeta^3 - 
647*zeta^2 - 2477*zeta - 292)*q^384 + 1/75*(-75*zeta^7 + 219*zeta^6 + 635*zeta^5
- 1444*zeta^4 - 1589*zeta^3 + 2361*zeta^2 + 1118*zeta - 526)*q^385 + 
1/150*(70*zeta^7 + 175*zeta^6 - 826*zeta^5 - 1050*zeta^4 + 2828*zeta^3 + 
1617*zeta^2 - 2940*zeta - 154)*q^386 + 1/150*(226*zeta^7 + 288*zeta^6 - 
1541*zeta^5 - 1563*zeta^4 + 3185*zeta^3 + 1942*zeta^2 - 1973*zeta - 246)*q^387 +
1/75*(-27*zeta^7 + 42*zeta^6 + 74*zeta^5 - 416*zeta^4 + 232*zeta^3 + 816*zeta^2 
- 709*zeta - 72)*q^388 + 1/50*(-82*zeta^7 + 55*zeta^6 + 492*zeta^5 - 246*zeta^4 
- 818*zeta^3 + 192*zeta^2 + 458*zeta + 16)*q^389 + 1/150*(-44*zeta^7 - 66*zeta^6
+ 242*zeta^5 + 367*zeta^4 - 275*zeta^3 - 448*zeta^2 - 21*zeta - 16)*q^390 + 
1/150*(-53*zeta^7 + 21*zeta^6 + 392*zeta^5 - 102*zeta^4 - 884*zeta^3 + 46*zeta^2
+ 453*zeta + 147)*q^392 + 1/150*(-119*zeta^7 + 234*zeta^6 + 714*zeta^5 - 
1113*zeta^4 - 1018*zeta^3 + 1343*zeta^2 + 227*zeta - 683)*q^393 + 
1/150*(128*zeta^7 + 59*zeta^6 - 823*zeta^5 - 779*zeta^4 + 1047*zeta^3 + 
2062*zeta^2 + 440*zeta - 433)*q^394 + 1/150*(-228*zeta^7 - 106*zeta^6 + 
1570*zeta^5 + 731*zeta^4 - 3290*zeta^3 - 1421*zeta^2 + 1975*zeta + 402)*q^395 + 
1/25*(96*zeta^7 + 67*zeta^6 - 567*zeta^5 - 402*zeta^4 + 853*zeta^3 + 684*zeta^2 
- 221*zeta - 258)*q^396 + 1/150*(-467*zeta^7 + 396*zeta^6 + 3167*zeta^5 - 
2792*zeta^4 - 6369*zeta^3 + 4812*zeta^2 + 3649*zeta - 1372)*q^397 + 
1/150*(314*zeta^7 - 251*zeta^6 - 2490*zeta^5 + 1369*zeta^4 + 5664*zeta^3 - 
1401*zeta^2 - 3082*zeta - 784)*q^398 + 1/150*(-71*zeta^7 - 34*zeta^6 + 
509*zeta^5 + 110*zeta^4 - 1088*zeta^3 - 11*zeta^2 + 577*zeta - 64)*q^399 + 
1/150*(-189*zeta^7 + 1427*zeta^5 - 241*zeta^4 - 3166*zeta^3 + 797*zeta^2 + 
1613*zeta - 400)*q^400 + 1/150*(795*zeta^7 + 138*zeta^6 - 5231*zeta^5 - 
351*zeta^4 + 10022*zeta^3 - 380*zeta^2 - 5581*zeta + 212)*q^401 + 
1/150*(852*zeta^7 + 240*zeta^6 - 5000*zeta^5 - 1070*zeta^4 + 8129*zeta^3 + 
1050*zeta^2 - 3371*zeta + 598)*q^402 + 1/150*(-54*zeta^7 + 46*zeta^6 + 53*zeta^5
- 276*zeta^4 + 941*zeta^3 + 361*zeta^2 - 1661*zeta + 160)*q^403 + 
1/150*(386*zeta^7 + 298*zeta^6 - 2640*zeta^5 - 1789*zeta^4 + 5480*zeta^3 + 
2792*zeta^2 - 3313*zeta - 598)*q^404 + 1/50*(-13*zeta^7 + 5*zeta^6 + 62*zeta^5 -
41*zeta^4 - 9*zeta^3 + 52*zeta^2 - 175*zeta + 11)*q^405 + 1/150*(60*zeta^7 + 
23*zeta^6 - 360*zeta^5 - 128*zeta^4 + 670*zeta^3 + 294*zeta^2 - 522*zeta - 
314)*q^406 + 1/75*(-83*zeta^7 + 135*zeta^6 + 716*zeta^5 - 706*zeta^4 - 
1946*zeta^3 + 654*zeta^2 + 1215*zeta + 373)*q^407 + 1/150*(-210*zeta^7 - 
10*zeta^6 + 1460*zeta^5 + 101*zeta^4 - 2990*zeta^3 - 362*zeta^2 + 1353*zeta + 
426)*q^409 + 1/150*(-29*zeta^7 + 62*zeta^6 + 174*zeta^5 - 299*zeta^4 - 
246*zeta^3 + 365*zeta^2 + 53*zeta - 169)*q^410 + 1/150*(-88*zeta^7 - 53*zeta^6 +
603*zeta^5 + 697*zeta^4 - 881*zeta^3 - 1790*zeta^2 - 104*zeta + 335)*q^411 + 
1/150*(-354*zeta^7 - 330*zeta^6 + 2417*zeta^5 + 1900*zeta^4 - 5005*zeta^3 - 
2723*zeta^2 + 3046*zeta + 500)*q^412 + 1/150*(244*zeta^7 + 165*zeta^6 - 
1425*zeta^5 - 990*zeta^4 + 2082*zeta^3 + 1691*zeta^2 - 454*zeta - 656)*q^413 + 
1/150*(-575*zeta^7 - 180*zeta^6 + 3359*zeta^5 + 838*zeta^4 - 5418*zeta^3 - 
894*zeta^2 + 2212*zeta - 370)*q^414 + 1/150*(995*zeta^7 + 159*zeta^6 - 
6558*zeta^5 - 362*zeta^4 + 12583*zeta^3 - 567*zeta^2 - 6994*zeta + 252)*q^415 + 
1/150*(-55*zeta^7 + 493*zeta^6 + 846*zeta^5 - 2997*zeta^4 - 2582*zeta^3 + 
4771*zeta^2 + 1042*zeta - 1329)*q^416 + 1/150*(12*zeta^7 + 291*zeta^6 + 
159*zeta^5 - 1710*zeta^4 - 756*zeta^3 + 2624*zeta^2 + 217*zeta - 695)*q^417 + 
1/75*(-zeta^7 + 34*zeta^6 + 55*zeta^5 - 167*zeta^4 - 208*zeta^3 + 136*zeta^2 + 
109*zeta + 100)*q^418 + 1/150*(-41*zeta^7 + 16*zeta^6 + 265*zeta^5 - 126*zeta^4 
- 498*zeta^3 + 234*zeta^2 + 260*zeta - 78)*q^419 + 1/150*(152*zeta^7 + 87*zeta^6
- 835*zeta^5 - 522*zeta^4 + 1015*zeta^3 + 914*zeta^2 + 73*zeta - 414)*q^420 + 
1/75*(52*zeta^7 - 18*zeta^6 - 361*zeta^5 + 26*zeta^4 + 765*zeta^3 + 204*zeta^2 -
444*zeta - 128)*q^421 + 1/150*(9*zeta^7 - 41*zeta^6 + 42*zeta^5 + 461*zeta^4 - 
371*zeta^3 - 996*zeta^2 + 611*zeta + 105)*q^422 + 1/50*(-25*zeta^7 - 88*zeta^6 +
150*zeta^5 + 435*zeta^4 - 368*zeta^3 - 661*zeta^2 + 450*zeta + 507)*q^423 + 
1/25*(5*zeta^7 + 31*zeta^6 - 4*zeta^5 - 168*zeta^4 - 98*zeta^3 + 186*zeta^2 + 
117*zeta + 37)*q^424 + 1/150*(9*zeta^7 - 33*zeta^6 - 96*zeta^5 + 173*zeta^4 + 
312*zeta^3 - 172*zeta^2 - 228*zeta - 59)*q^426 + 1/150*(-11*zeta^7 - 5*zeta^6 + 
66*zeta^5 + 27*zeta^4 - 124*zeta^3 - 59*zeta^2 + 99*zeta + 63)*q^427 + 
1/150*(219*zeta^7 - 57*zeta^6 - 1130*zeta^5 + 329*zeta^4 + 521*zeta^3 - 
36*zeta^2 + 2497*zeta - 267)*q^428 + 1/75*(-98*zeta^7 + 108*zeta^6 + 682*zeta^5 
- 384*zeta^4 - 1450*zeta^3 - 191*zeta^2 + 808*zeta + 312)*q^429 + 
1/150*(-34*zeta^7 - 31*zeta^6 + 204*zeta^5 + 186*zeta^4 - 316*zeta^3 - 
317*zeta^2 + 84*zeta + 110)*q^430 + 1/150*(-487*zeta^7 + 189*zeta^6 + 
3119*zeta^5 - 1476*zeta^4 - 5821*zeta^3 + 2727*zeta^2 + 3036*zeta - 994)*q^431 +
1/50*(161*zeta^7 + 15*zeta^6 - 1078*zeta^5 - 8*zeta^4 + 2105*zeta^3 - 127*zeta^2
- 1170*zeta + 4)*q^432 + 1/75*(13*zeta^7 - 112*zeta^6 - 197*zeta^5 + 682*zeta^4 
+ 600*zeta^3 - 1087*zeta^2 - 245*zeta + 302)*q^433 + 1/150*(-113*zeta^7 - 
64*zeta^6 + 801*zeta^5 + 234*zeta^4 - 1696*zeta^3 - 109*zeta^2 + 905*zeta - 
78)*q^434 + 1/50*(47*zeta^7 + 10*zeta^6 - 306*zeta^5 - 29*zeta^4 + 579*zeta^3 - 
18*zeta^2 - 322*zeta + 20)*q^435 + 1/75*(-74*zeta^7 + 18*zeta^6 + 466*zeta^5 - 
156*zeta^4 - 848*zeta^3 + 306*zeta^2 + 426*zeta - 128)*q^436 + 
1/150*(-102*zeta^7 - 121*zeta^6 + 764*zeta^5 + 726*zeta^4 - 1770*zeta^3 - 
1169*zeta^2 + 1322*zeta + 262)*q^437 + 1/150*(538*zeta^7 + 804*zeta^6 - 
3656*zeta^5 - 4266*zeta^4 + 7520*zeta^3 + 4981*zeta^2 - 4694*zeta - 492)*q^438 +
1/150*(-222*zeta^7 + 131*zeta^6 + 1019*zeta^5 - 1099*zeta^4 + 51*zeta^3 + 
1674*zeta^2 - 3330*zeta + 51)*q^439 + 1/75*(-39*zeta^7 + 110*zeta^6 + 234*zeta^5
- 527*zeta^4 - 296*zeta^3 + 669*zeta^2 - 24*zeta - 383)*q^440 + 1/50*(-74*zeta^7
- 16*zeta^6 + 502*zeta^5 + 103*zeta^4 - 985*zeta^3 - 200*zeta^2 + 417*zeta + 
130)*q^441 + 1/150*(361*zeta^7 + 397*zeta^6 - 2130*zeta^5 - 2215*zeta^4 + 
3051*zeta^3 + 2806*zeta^2 - 474*zeta - 163)*q^443 + 1/150*(-88*zeta^7 - 
145*zeta^6 + 528*zeta^5 + 730*zeta^4 - 1108*zeta^3 - 1196*zeta^2 + 1093*zeta + 
990)*q^444 + 1/150*(82*zeta^7 - 45*zeta^6 - 369*zeta^5 + 397*zeta^4 - 45*zeta^3 
- 622*zeta^2 + 1246*zeta - 29)*q^445 + 1/150*(-56*zeta^7 + 86*zeta^6 + 
392*zeta^5 - 331*zeta^4 - 840*zeta^3 - 37*zeta^2 + 461*zeta + 198)*q^446 + 
1/150*(42*zeta^7 + 129*zeta^6 - 580*zeta^5 - 774*zeta^4 + 2149*zeta^3 + 
1180*zeta^2 - 2337*zeta - 80)*q^447 + 1/150*(137*zeta^7 - 175*zeta^6 - 
977*zeta^5 + 1196*zeta^4 + 2083*zeta^3 - 2013*zeta^2 - 1272*zeta + 518)*q^448 + 
1/150*(361*zeta^7 - 76*zeta^6 - 2571*zeta^5 + 521*zeta^4 + 5340*zeta^3 - 
726*zeta^2 - 2945*zeta - 308)*q^449 + 1/150*(-286*zeta^7 - 83*zeta^6 + 
2095*zeta^5 + 124*zeta^4 - 4552*zeta^3 + 450*zeta^2 + 2377*zeta - 393)*q^450 + 
1/75*(-239*zeta^7 - 427*zeta^6 + 1442*zeta^5 + 2225*zeta^4 - 2618*zeta^3 - 
2913*zeta^2 + 1586*zeta + 555)*q^451 + 1/150*(-693*zeta^7 - 169*zeta^6 + 
4487*zeta^5 + 540*zeta^4 - 8440*zeta^3 + 155*zeta^2 + 4705*zeta - 340)*q^452 + 
1/150*(-39*zeta^7 + 249*zeta^6 + 439*zeta^5 - 1616*zeta^4 - 1315*zeta^3 + 
2607*zeta^2 + 1042*zeta - 542)*q^453 + 1/150*(-312*zeta^7 - 363*zeta^6 + 
2321*zeta^5 + 2178*zeta^4 - 5330*zeta^3 - 3509*zeta^2 + 3942*zeta + 796)*q^454 +
1/150*(444*zeta^7 + 200*zeta^6 - 3045*zeta^5 - 1407*zeta^4 + 6345*zeta^3 + 
2813*zeta^2 - 3781*zeta - 814)*q^455 + 1/150*(-14*zeta^7 - 7*zeta^6 + 90*zeta^5 
+ 89*zeta^4 - 115*zeta^3 - 232*zeta^2 - 46*zeta + 49)*q^456 + 1/150*(-77*zeta^7 
+ 151*zeta^6 + 462*zeta^5 - 709*zeta^4 - 650*zeta^3 + 857*zeta^2 + 116*zeta - 
495)*q^457 + 1/150*(-97*zeta^7 + 3*zeta^6 + 682*zeta^5 + 10*zeta^4 - 1423*zeta^3
- 132*zeta^2 + 675*zeta + 191)*q^458 + 1/150*(10*zeta^7 - 88*zeta^6 - 158*zeta^5
+ 470*zeta^4 + 629*zeta^3 - 490*zeta^2 - 498*zeta - 150)*q^460 + 
1/150*(-49*zeta^7 - 265*zeta^6 + 294*zeta^5 + 1299*zeta^4 - 830*zeta^3 - 
1927*zeta^2 + 1170*zeta + 1461)*q^461 + 1/75*(35*zeta^7 + 13*zeta^6 - 222*zeta^5
- 185*zeta^4 + 271*zeta^3 + 508*zeta^2 + 145*zeta - 109)*q^462 + 
1/150*(86*zeta^7 + 178*zeta^6 - 583*zeta^5 - 906*zeta^4 + 1195*zeta^3 + 
927*zeta^2 - 768*zeta - 32)*q^463 + 1/150*(-292*zeta^7 - 243*zeta^6 + 
1851*zeta^5 + 1458*zeta^4 - 3270*zeta^3 - 2429*zeta^2 + 1522*zeta + 776)*q^464 +
1/150*(-5*zeta^7 + 87*zeta^6 + 97*zeta^5 - 558*zeta^4 - 356*zeta^3 + 891*zeta^2 
+ 315*zeta - 188)*q^465 + 1/50*(-59*zeta^7 + 121*zeta^6 + 575*zeta^5 - 
616*zeta^4 - 1498*zeta^3 + 545*zeta^2 + 809*zeta + 372)*q^466 + 
1/150*(124*zeta^7 - 268*zeta^6 - 1174*zeta^5 + 1751*zeta^4 + 2998*zeta^3 - 
2994*zeta^2 - 1384*zeta + 918)*q^467 + 1/150*(40*zeta^7 + 563*zeta^6 + 
185*zeta^5 - 3289*zeta^4 - 1202*zeta^3 + 5010*zeta^2 + 293*zeta - 1305)*q^468 + 
1/150*(-193*zeta^7 + 130*zeta^6 + 1499*zeta^5 - 719*zeta^4 - 3356*zeta^3 + 
752*zeta^2 + 1833*zeta + 420)*q^469 + 1/150*(60*zeta^7 - 135*zeta^6 - 472*zeta^5
+ 896*zeta^4 + 1114*zeta^3 - 1473*zeta^2 - 751*zeta + 350)*q^470 + 
1/150*(660*zeta^7 + 555*zeta^6 - 4211*zeta^5 - 3330*zeta^4 + 7538*zeta^3 + 
5537*zeta^2 - 3630*zeta - 1744)*q^471 + 1/50*(-56*zeta^7 - 34*zeta^6 + 
385*zeta^5 + 216*zeta^4 - 805*zeta^3 - 372*zeta^2 + 486*zeta + 92)*q^472 + 
1/75*(41*zeta^7 - 236*zeta^5 - 62*zeta^4 + 206*zeta^3 + 268*zeta^2 + 327*zeta - 
82)*q^473 + 1/150*(144*zeta^7 - 7*zeta^6 - 864*zeta^5 - 8*zeta^4 + 1534*zeta^3 +
282*zeta^2 - 1056*zeta - 434)*q^474 + 1/150*(138*zeta^7 + 88*zeta^6 - 878*zeta^5
- 506*zeta^4 + 1517*zeta^3 + 710*zeta^2 - 498*zeta - 150)*q^475 + 
1/25*(12*zeta^7 + 54*zeta^6 - 30*zeta^5 - 293*zeta^4 - 123*zeta^3 + 328*zeta^2 +
183*zeta + 56)*q^477 + 1/150*(-189*zeta^7 + 66*zeta^6 + 1134*zeta^5 - 271*zeta^4
- 1954*zeta^3 + 25*zeta^2 + 1235*zeta + 327)*q^478 + 1/75*(-60*zeta^7 + 
94*zeta^6 + 164*zeta^5 - 930*zeta^4 + 518*zeta^3 + 1824*zeta^2 - 1580*zeta - 
162)*q^479 + 1/150*(-154*zeta^7 - 52*zeta^6 + 1056*zeta^5 + 410*zeta^4 - 
2200*zeta^3 - 933*zeta^2 + 1302*zeta + 300)*q^480 + 1/150*(432*zeta^7 + 
151*zeta^6 - 2063*zeta^5 - 906*zeta^4 + 1227*zeta^3 + 1742*zeta^2 + 2293*zeta - 
1198)*q^481 + 1/150*(-422*zeta^7 + 21*zeta^6 + 2594*zeta^5 - 368*zeta^4 - 
4548*zeta^3 + 915*zeta^2 + 2155*zeta - 562)*q^482 + 1/150*(-28*zeta^7 - 
212*zeta^6 - 107*zeta^5 + 1030*zeta^4 + 821*zeta^3 - 818*zeta^2 - 413*zeta - 
608)*q^483 + 1/150*(-297*zeta^7 - 846*zeta^6 + 1519*zeta^5 + 4636*zeta^4 - 
2204*zeta^3 - 6521*zeta^2 + 1615*zeta + 1468)*q^484 + 1/75*(-142*zeta^7 - 
341*zeta^6 + 783*zeta^5 + 1839*zeta^4 - 1274*zeta^3 - 2532*zeta^2 + 851*zeta + 
547)*q^485 + 1/50*(-89*zeta^7 + 87*zeta^6 + 728*zeta^5 - 466*zeta^4 - 
1695*zeta^3 + 461*zeta^2 + 920*zeta + 268)*q^486 + 1/150*(-527*zeta^7 + 
652*zeta^6 + 3743*zeta^5 - 4466*zeta^4 - 7942*zeta^3 + 7530*zeta^2 + 4824*zeta -
1946)*q^487 + 1/150*(4*zeta^7 + 6*zeta^6 - 38*zeta^5 - 36*zeta^4 + 113*zeta^3 + 
55*zeta^2 - 109*zeta - 6)*q^488 + 1/50*(-92*zeta^7 - 98*zeta^6 + 627*zeta^5 + 
550*zeta^4 - 1295*zeta^3 - 744*zeta^2 + 792*zeta + 120)*q^489 + 1/150*(17*zeta^7
- 13*zeta^6 - 88*zeta^5 + 85*zeta^4 + 33*zeta^3 - 104*zeta^2 + 227*zeta + 
5)*q^490 + 1/150*(87*zeta^7 + 356*zeta^6 - 522*zeta^5 - 1759*zeta^4 + 
1334*zeta^3 + 2645*zeta^2 - 1703*zeta - 1985)*q^491 + 1/150*(344*zeta^7 + 
114*zeta^6 - 2294*zeta^5 - 693*zeta^4 + 4361*zeta^3 + 1160*zeta^2 - 1749*zeta - 
540)*q^492 + 1/150*(237*zeta^7 + 157*zeta^6 - 1502*zeta^5 - 898*zeta^4 + 
2573*zeta^3 + 1248*zeta^2 - 819*zeta - 259)*q^494 + 1/25*(-21*zeta^7 + 60*zeta^6
+ 126*zeta^5 - 287*zeta^4 - 158*zeta^3 + 365*zeta^2 - 17*zeta - 213)*q^495 + 
1/150*(-14*zeta^7 - 57*zeta^6 + 172*zeta^5 + 603*zeta^4 - 493*zeta^3 - 
1324*zeta^2 + 482*zeta + 199)*q^496 + 1/150*(406*zeta^7 + 192*zeta^6 - 
2785*zeta^5 - 1327*zeta^4 + 5805*zeta^3 + 2592*zeta^2 - 3465*zeta - 734)*q^497 +
1/150*(6*zeta^7 + 54*zeta^6 - 197*zeta^5 - 324*zeta^4 + 917*zeta^3 + 485*zeta^2 
- 1101*zeta - 4)*q^498 + 1/150*(344*zeta^7 - 374*zeta^6 - 2404*zeta^5 + 
2586*zeta^4 + 5005*zeta^3 - 4392*zeta^2 - 2977*zeta + 1162)*q^499 + 
1/150*(622*zeta^7 + 88*zeta^6 - 4117*zeta^5 - 172*zeta^4 + 7937*zeta^3 - 
394*zeta^2 - 4411*zeta + 120)*q^500 + 1/150*(31*zeta^7 - 118*zeta^6 - 337*zeta^5
+ 740*zeta^4 + 916*zeta^3 - 1217*zeta^2 - 401*zeta + 356)*q^501 + 
1/150*(135*zeta^7 - 255*zeta^6 - 1242*zeta^5 + 1686*zeta^4 + 3120*zeta^3 - 
2917*zeta^2 - 1448*zeta + 913)*q^502 + 1/150*(1119*zeta^7 - 65*zeta^6 - 
7722*zeta^5 + 786*zeta^4 + 15551*zeta^3 - 1599*zeta^2 - 8598*zeta - 436)*q^503 +
1/50*(-31*zeta^7 + 32*zeta^6 + 215*zeta^5 - 222*zeta^4 - 444*zeta^3 + 378*zeta^2
+ 262*zeta - 102)*q^504 + 1/150*(-350*zeta^7 - 205*zeta^6 + 1932*zeta^5 + 
1230*zeta^4 - 2386*zeta^3 - 2149*zeta^2 - 110*zeta + 958)*q^505 + 
1/75*(-122*zeta^7 - 242*zeta^6 + 825*zeta^5 + 1240*zeta^4 - 1685*zeta^3 - 
1299*zeta^2 + 1074*zeta + 60)*q^506 + 1/150*(101*zeta^7 + 10*zeta^6 - 591*zeta^5
- 242*zeta^4 + 556*zeta^3 + 838*zeta^2 + 727*zeta - 232)*q^507 + 
1/150*(87*zeta^7 - 294*zeta^6 - 522*zeta^5 + 1409*zeta^4 + 602*zeta^3 - 
1823*zeta^2 + 209*zeta + 1107)*q^508 + 1/150*(267*zeta^7 - 59*zeta^6 - 
1928*zeta^5 + 257*zeta^4 + 4196*zeta^3 + 48*zeta^2 - 2070*zeta - 649)*q^509 + 
1/150*(238*zeta^7 - 96*zeta^6 - 1762*zeta^5 + 460*zeta^4 + 3979*zeta^3 - 
202*zeta^2 - 2064*zeta - 634)*q^511 + 1/150*(-65*zeta^7 - 302*zeta^6 + 
390*zeta^5 + 1491*zeta^4 - 1036*zeta^3 - 2225*zeta^2 + 1374*zeta + 1647)*q^512 +
1/50*(-5*zeta^7 + 27*zeta^5 + 4*zeta^4 - 18*zeta^3 - 22*zeta^2 - 47*zeta + 
10)*q^513 + 1/150*(206*zeta^7 + 274*zeta^6 - 1403*zeta^5 - 1478*zeta^4 + 
2895*zeta^3 + 1807*zeta^2 - 1796*zeta - 216)*q^514 + 1/150*(256*zeta^7 + 
152*zeta^6 - 1402*zeta^5 - 912*zeta^4 + 1683*zeta^3 + 1599*zeta^2 + 169*zeta - 
718)*q^515 + 1/150*(278*zeta^7 + 21*zeta^6 - 1678*zeta^5 + 18*zeta^4 + 
2861*zeta^3 - 243*zeta^2 - 1296*zeta + 308)*q^516 + 1/75*(-652*zeta^7 - 
177*zeta^6 + 4195*zeta^5 + 595*zeta^4 - 7833*zeta^3 + 79*zeta^2 + 4369*zeta - 
376)*q^517 + 1/150*(183*zeta^7 + 159*zeta^6 - 1250*zeta^5 - 707*zeta^4 + 
2566*zeta^3 + 685*zeta^2 - 1406*zeta - 11)*q^518 + 1/150*(565*zeta^7 + 
458*zeta^6 - 3883*zeta^5 - 1990*zeta^4 + 8008*zeta^3 + 1817*zeta^2 - 4359*zeta +
52)*q^519 + 1/150*(-466*zeta^7 - 70*zeta^6 + 3073*zeta^5 + 142*zeta^4 - 
5897*zeta^3 + 304*zeta^2 + 3271*zeta - 120)*q^520 + 1/75*(81*zeta^7 - 358*zeta^6
- 785*zeta^5 + 2338*zeta^4 + 2160*zeta^3 - 3792*zeta^2 - 1624*zeta + 806)*q^521 
+ 1/50*(-48*zeta^7 - 60*zeta^6 + 370*zeta^5 + 360*zeta^4 - 889*zeta^3 - 
577*zeta^2 + 693*zeta + 122)*q^522 + 1/50*(-70*zeta^7 - 14*zeta^6 + 482*zeta^5 +
141*zeta^4 - 1010*zeta^3 - 390*zeta^2 + 597*zeta + 142)*q^523 + 
1/150*(202*zeta^7 - 116*zeta^6 - 921*zeta^5 + 990*zeta^4 - 68*zeta^3 - 
1522*zeta^2 + 3042*zeta - 56)*q^524 + 1/150*(128*zeta^7 + 17*zeta^6 - 768*zeta^5
- 116*zeta^4 + 1394*zeta^3 + 406*zeta^2 - 1022*zeta - 522)*q^525 + 
1/30*(-156*zeta^7 - 118*zeta^6 + 974*zeta^5 + 670*zeta^4 - 1613*zeta^3 - 
906*zeta^2 + 468*zeta + 148)*q^526 + 1/75*(-245*zeta^7 - 243*zeta^6 + 
1472*zeta^5 + 1362*zeta^4 - 2216*zeta^3 - 1754*zeta^2 + 453*zeta + 147)*q^528 + 
1/150*(117*zeta^7 + 276*zeta^6 - 702*zeta^5 - 1373*zeta^4 + 1570*zeta^3 + 
2159*zeta^2 - 1709*zeta - 1731)*q^529 + 1/75*(23*zeta^7 - 17*zeta^6 - 108*zeta^5
+ 133*zeta^4 + zeta^3 - 200*zeta^2 + 349*zeta + 5)*q^530 + 1/50*(-110*zeta^7 - 
86*zeta^6 + 753*zeta^5 + 514*zeta^4 - 1565*zeta^3 - 795*zeta^2 + 948*zeta + 
168)*q^531 + 1/150*(10*zeta^7 + 25*zeta^6 - 118*zeta^5 - 150*zeta^4 + 404*zeta^3
+ 231*zeta^2 - 420*zeta - 22)*q^532 + 1/150*(505*zeta^7 - 390*zeta^6 - 
3393*zeta^5 + 2774*zeta^4 + 6746*zeta^3 - 4812*zeta^2 - 3814*zeta + 1410)*q^533 
+ 1/150*(-98*zeta^7 + 503*zeta^6 + 1373*zeta^5 - 2515*zeta^4 - 4169*zeta^3 + 
2147*zeta^2 + 2207*zeta + 1472)*q^534 + 1/150*(451*zeta^7 + 1139*zeta^6 - 
2430*zeta^5 - 6177*zeta^4 + 3818*zeta^3 + 8565*zeta^2 - 2606*zeta - 1867)*q^535 
+ 1/150*(151*zeta^7 + 131*zeta^6 - 1036*zeta^5 - 580*zeta^4 + 2140*zeta^3 + 
559*zeta^2 - 1178*zeta - 13)*q^536 + 1/150*(-158*zeta^7 + 105*zeta^6 + 
1229*zeta^5 - 577*zeta^4 - 2757*zeta^3 + 593*zeta^2 + 1511*zeta + 352)*q^537 + 
1/150*(121*zeta^7 + 151*zeta^6 - 617*zeta^5 - 900*zeta^4 + 735*zeta^3 + 
1341*zeta^2 - 82*zeta - 150)*q^538 + 1/75*(-242*zeta^7 - 171*zeta^6 + 
1434*zeta^5 + 1026*zeta^4 - 2175*zeta^3 - 1744*zeta^2 + 587*zeta + 652)*q^539 + 
1/50*(-146*zeta^7 - 68*zeta^6 + 1001*zeta^5 + 473*zeta^4 - 2085*zeta^3 - 
932*zeta^2 + 1243*zeta + 266)*q^540 + 1/150*(8*zeta^7 + 48*zeta^6 - 119*zeta^5 -
494*zeta^4 + 380*zeta^3 + 1066*zeta^2 - 420*zeta - 160)*q^541 + 
1/150*(-187*zeta^7 - 85*zeta^6 + 1122*zeta^5 + 459*zeta^4 - 2108*zeta^3 - 
1003*zeta^2 + 1683*zeta + 1071)*q^542 + 1/150*(930*zeta^7 + 582*zeta^6 - 
5928*zeta^5 - 3343*zeta^4 + 10284*zeta^3 + 4706*zeta^2 - 3387*zeta - 1058)*q^543
+ 1/75*(-10*zeta^7 - 30*zeta^6 + 40*zeta^5 + 166*zeta^4 + 20*zeta^3 - 192*zeta^2
- 72*zeta - 34)*q^545 + 1/150*(215*zeta^7 + 48*zeta^6 - 1290*zeta^5 - 291*zeta^4
+ 2362*zeta^3 + 817*zeta^2 - 1769*zeta - 961)*q^546 + 1/150*(-107*zeta^7 - 
32*zeta^6 + 677*zeta^5 + 508*zeta^4 - 814*zeta^3 - 1450*zeta^2 - 481*zeta + 
310)*q^547 + 1/150*(-142*zeta^7 - 256*zeta^6 + 963*zeta^5 + 1325*zeta^4 - 
1975*zeta^3 - 1434*zeta^2 + 1251*zeta + 90)*q^548 + 1/150*(26*zeta^7 + 33*zeta^6
- 204*zeta^5 - 198*zeta^4 + 501*zeta^3 + 316*zeta^2 - 401*zeta - 64)*q^549 + 
1/75*(150*zeta^7 + 48*zeta^6 - 874*zeta^5 - 226*zeta^4 + 1405*zeta^3 + 
246*zeta^2 - 571*zeta + 98)*q^550 + 1/150*(-10*zeta^7 - 48*zeta^6 + zeta^5 + 
232*zeta^4 + 135*zeta^3 - 182*zeta^2 - 65*zeta - 136)*q^551 + 1/150*(-119*zeta^7
+ 29*zeta^6 + 926*zeta^5 - 325*zeta^4 - 2102*zeta^3 + 771*zeta^2 + 1058*zeta - 
321)*q^552 + 1/150*(-161*zeta^7 - 274*zeta^6 + 983*zeta^5 + 1418*zeta^4 - 
1808*zeta^3 - 1837*zeta^2 + 1083*zeta + 340)*q^553 + 1/150*(-99*zeta^7 - 
292*zeta^6 + 271*zeta^5 + 1401*zeta^4 + 282*zeta^3 - 1082*zeta^2 - 91*zeta - 
804)*q^554 + 1/150*(59*zeta^7 - 258*zeta^6 - 567*zeta^5 + 1684*zeta^4 + 
1555*zeta^3 - 2730*zeta^2 - 1169*zeta + 588)*q^555 + 1/150*(542*zeta^7 + 
356*zeta^6 - 3127*zeta^5 - 2136*zeta^4 + 4419*zeta^3 + 3665*zeta^2 - 747*zeta - 
1464)*q^556 + 1/30*(70*zeta^7 + 96*zeta^6 - 476*zeta^5 - 516*zeta^4 + 980*zeta^3
+ 625*zeta^2 - 608*zeta - 72)*q^557 + 1/150*(-76*zeta^7 - 41*zeta^6 + 501*zeta^5
+ 529*zeta^4 - 677*zeta^3 - 1370*zeta^2 - 188*zeta + 275)*q^558 + 
1/150*(134*zeta^7 + 95*zeta^6 - 804*zeta^5 - 492*zeta^4 + 1552*zeta^3 + 
950*zeta^2 - 1317*zeta - 948)*q^559 + 1/150*(32*zeta^7 + 194*zeta^6 - 30*zeta^5 
- 1050*zeta^4 - 603*zeta^3 + 1162*zeta^2 + 732*zeta + 224)*q^560 + 
1/150*(-441*zeta^7 - 159*zeta^6 + 2928*zeta^5 + 958*zeta^4 - 5520*zeta^3 - 
1562*zeta^2 + 2181*zeta + 671)*q^562 + 1/150*(271*zeta^7 - 392*zeta^6 - 
1626*zeta^5 + 1845*zeta^4 + 2474*zeta^3 - 2087*zeta^2 - 921*zeta + 903)*q^563 + 
1/150*(4*zeta^7 - 94*zeta^6 + 153*zeta^5 + 1004*zeta^4 - 778*zeta^3 - 
2158*zeta^2 + 1112*zeta + 274)*q^564 + 1/150*(610*zeta^7 + 276*zeta^6 - 
4188*zeta^5 - 1934*zeta^4 + 8740*zeta^3 + 3845*zeta^2 - 5218*zeta - 1108)*q^565 
+ 1/150*(44*zeta^7 + 178*zeta^6 - 734*zeta^5 - 1068*zeta^4 + 2925*zeta^3 + 
1623*zeta^2 - 3289*zeta - 86)*q^566 + 1/50*(37*zeta^7 + 45*zeta^6 - 189*zeta^5 -
268*zeta^4 + 227*zeta^3 + 399*zeta^2 - 28*zeta - 42)*q^567 + 1/150*(-417*zeta^7 
- 71*zeta^6 + 2748*zeta^5 + 180*zeta^4 - 5275*zeta^3 + 195*zeta^2 + 2940*zeta - 
100)*q^568 + 1/150*(-208*zeta^7 + 7*zeta^6 + 1593*zeta^5 - 315*zeta^4 - 
3590*zeta^3 + 958*zeta^2 + 1849*zeta - 441)*q^569 + 1/150*(-11*zeta^7 - 
10*zeta^6 + 77*zeta^5 + 44*zeta^4 - 164*zeta^3 - 43*zeta^2 + 93*zeta + 4)*q^570 
+ 1/150*(-252*zeta^7 + 196*zeta^6 + 1999*zeta^5 - 1062*zeta^4 - 4553*zeta^3 + 
1066*zeta^2 + 2489*zeta + 640)*q^571 + 1/75*(261*zeta^7 - 411*zeta^6 - 
1925*zeta^5 + 2776*zeta^4 + 4253*zeta^3 - 4629*zeta^2 - 2690*zeta + 1138)*q^572 
+ 1/150*(324*zeta^7 + 348*zeta^6 - 2308*zeta^5 - 2088*zeta^4 + 4987*zeta^3 + 
3391*zeta^2 - 3399*zeta - 842)*q^573 + 1/150*(76*zeta^7 + 212*zeta^6 - 
511*zeta^5 - 1051*zeta^4 + 1035*zeta^3 + 977*zeta^2 - 685*zeta + 18)*q^574 + 
1/150*(-104*zeta^7 - 59*zeta^6 + 708*zeta^5 + 789*zeta^4 - 1019*zeta^3 - 
2044*zeta^2 - 156*zeta + 385)*q^575 + 1/150*(-33*zeta^7 - 164*zeta^6 + 
198*zeta^5 + 809*zeta^4 - 538*zeta^3 - 1203*zeta^2 + 729*zeta + 887)*q^576 + 
1/150*(25*zeta^7 - 113*zeta^6 - 288*zeta^5 + 602*zeta^4 + 984*zeta^3 - 
614*zeta^2 - 717*zeta - 223)*q^577 + 1/150*(-581*zeta^7 - 105*zeta^6 + 
3962*zeta^5 + 700*zeta^4 - 7847*zeta^3 - 1456*zeta^2 + 3381*zeta + 1043)*q^579 +
1/150*(54*zeta^7 - 133*zeta^6 - 324*zeta^5 + 634*zeta^4 + 430*zeta^3 - 
792*zeta^2 - 18*zeta + 448)*q^580 + 1/150*(-137*zeta^7 + 85*zeta^6 + 615*zeta^5 
- 735*zeta^4 + 91*zeta^3 + 1166*zeta^2 - 2127*zeta + 19)*q^581 + 
1/75*(-190*zeta^7 - 350*zeta^6 + 1288*zeta^5 + 1807*zeta^4 - 2640*zeta^3 - 
1940*zeta^2 + 1675*zeta + 114)*q^582 + 1/25*(-188*zeta^7 - 110*zeta^6 + 
1040*zeta^5 + 660*zeta^4 - 1294*zeta^3 - 1152*zeta^2 - 42*zeta + 512)*q^583 + 
1/150*(-223*zeta^7 + 255*zeta^6 + 1567*zeta^5 - 1756*zeta^4 - 3285*zeta^3 + 
2973*zeta^2 + 1970*zeta - 782)*q^584 + 1/150*(-773*zeta^7 - 111*zeta^6 + 
5111*zeta^5 + 218*zeta^4 - 9840*zeta^3 + 497*zeta^2 + 5465*zeta - 164)*q^585 + 
1/75*(-59*zeta^7 + 53*zeta^6 + 494*zeta^5 - 391*zeta^4 - 1178*zeta^3 + 
739*zeta^2 + 574*zeta - 253)*q^586 + 1/150*(202*zeta^7 + 635*zeta^6 - 989*zeta^5
- 3503*zeta^4 + 1338*zeta^3 + 4976*zeta^2 - 1061*zeta - 1153)*q^587 + 
1/150*(-139*zeta^7 - 153*zeta^6 + 733*zeta^5 + 694*zeta^4 - 1020*zeta^3 - 
449*zeta^2 + 595*zeta - 412)*q^588 + 1/150*(-82*zeta^7 - 35*zeta^6 + 470*zeta^5 
+ 180*zeta^4 - 734*zeta^3 - 225*zeta^2 + 281*zeta - 38)*q^589 + 1/150*(92*zeta^7
+ 63*zeta^6 - 519*zeta^5 - 378*zeta^4 + 684*zeta^3 + 655*zeta^2 - 32*zeta - 
268)*q^590 + 1/150*(-200*zeta^7 - 594*zeta^6 + 1345*zeta^5 + 2928*zeta^4 - 
2725*zeta^3 - 2660*zeta^2 + 1822*zeta - 84)*q^591 + 1/150*(-49*zeta^7 + 
109*zeta^6 + 80*zeta^5 - 1093*zeta^4 + 671*zeta^3 + 2200*zeta^2 - 1635*zeta - 
229)*q^592 + 1/150*(34*zeta^7 - 284*zeta^6 - 204*zeta^5 + 1376*zeta^4 + 
46*zeta^3 - 1876*zeta^2 + 575*zeta + 1230)*q^593 + 1/25*(-11*zeta^7 + 9*zeta^6 +
86*zeta^5 - 46*zeta^4 - 209*zeta^3 + 36*zeta^2 + 117*zeta + 37)*q^594 + 
1/150*(196*zeta^7 - 68*zeta^6 - 1440*zeta^5 + 319*zeta^4 + 3216*zeta^3 - 
102*zeta^2 - 1647*zeta - 504)*q^596 + 1/150*(292*zeta^7 + 259*zeta^6 - 
1752*zeta^5 - 1336*zeta^4 + 3430*zeta^3 + 2438*zeta^2 - 2986*zeta - 2250)*q^597 
+ 1/150*(-190*zeta^7 - 106*zeta^6 + 1267*zeta^5 + 1376*zeta^4 - 1754*zeta^3 - 
3554*zeta^2 - 398*zeta + 698)*q^598 + 1/150*(512*zeta^7 + 30*zeta^6 - 
3523*zeta^5 - 708*zeta^4 + 7375*zeta^3 + 2684*zeta^2 - 4318*zeta - 1116)*q^599 +
1/150*(-80*zeta^7 - 93*zeta^6 + 603*zeta^5 + 558*zeta^4 - 1410*zeta^3 - 
895*zeta^2 + 1070*zeta + 196)*q^600 + 1/150*(-103*zeta^7 + 998*zeta^6 + 
1443*zeta^5 - 6452*zeta^4 - 4735*zeta^3 + 10374*zeta^2 + 3929*zeta - 2084)*q^601
+ 1/150*(-65*zeta^7 + 103*zeta^6 + 589*zeta^5 - 532*zeta^4 - 1470*zeta^3 + 
487*zeta^2 + 795*zeta + 316)*q^602 + 1/150*(503*zeta^7 + 280*zeta^6 - 
3575*zeta^5 - 1010*zeta^4 + 7592*zeta^3 + 435*zeta^2 - 4055*zeta + 354)*q^603 + 
1/150*(310*zeta^7 + 803*zeta^6 - 1655*zeta^5 - 4364*zeta^4 + 2568*zeta^3 + 
6070*zeta^2 - 1777*zeta - 1335)*q^604 + 1/150*(1073*zeta^7 + 169*zeta^6 - 
7072*zeta^5 - 374*zeta^4 + 13567*zeta^3 - 637*zeta^2 - 7536*zeta + 276)*q^605 + 
1/150*(-466*zeta^7 - 75*zeta^6 + 2778*zeta^5 + 226*zeta^4 - 4643*zeta^3 - 
3*zeta^2 + 2032*zeta - 444)*q^606 + 1/150*(-406*zeta^7 - 277*zeta^6 + 
2378*zeta^5 + 1662*zeta^4 - 3501*zeta^3 - 2836*zeta^2 + 801*zeta + 1092)*q^607 +
1/150*(-82*zeta^7 - 170*zeta^6 + 554*zeta^5 + 867*zeta^4 - 1130*zeta^3 - 
894*zeta^2 + 723*zeta + 34)*q^608 + 1/50*(-19*zeta^7 - 4*zeta^6 + 115*zeta^5 + 
68*zeta^4 - 122*zeta^3 - 206*zeta^2 - 113*zeta + 50)*q^609 + 1/150*(-3*zeta^7 - 
7*zeta^6 + 18*zeta^5 + 39*zeta^4 - 36*zeta^3 - 59*zeta^2 + 29*zeta + 19)*q^610 +
1/150*(-544*zeta^7 - 828*zeta^6 + 2980*zeta^5 + 4573*zeta^4 - 3334*zeta^3 - 
5550*zeta^2 - 405*zeta - 100)*q^611 + 1/150*(137*zeta^7 + 25*zeta^6 - 934*zeta^5
- 167*zeta^4 + 1849*zeta^3 + 346*zeta^2 - 798*zeta - 243)*q^613 + 
1/150*(90*zeta^7 - 40*zeta^6 - 540*zeta^5 + 172*zeta^4 + 922*zeta^3 - 72*zeta^2 
- 567*zeta - 122)*q^614 + 1/150*(-55*zeta^7 + 40*zeta^6 + 246*zeta^5 - 
338*zeta^4 + 46*zeta^3 + 544*zeta^2 - 881*zeta - 10)*q^615 + 1/75*(-154*zeta^7 -
90*zeta^6 + 1055*zeta^5 + 582*zeta^4 - 2195*zeta^3 - 1033*zeta^2 + 1316*zeta + 
264)*q^616 + 1/150*(-410*zeta^7 - 141*zeta^6 + 1958*zeta^5 + 846*zeta^4 - 
1166*zeta^3 - 1629*zeta^2 - 2170*zeta + 1130)*q^617 + 1/150*(637*zeta^7 + 
129*zeta^6 - 3773*zeta^5 - 480*zeta^4 + 6241*zeta^3 + 279*zeta^2 - 2682*zeta + 
562)*q^618 + 1/75*(277*zeta^7 - 103*zeta^6 - 2035*zeta^5 + 620*zeta^4 + 
4348*zeta^3 - 739*zeta^2 - 2389*zeta - 364)*q^619 + 1/150*(103*zeta^7 + 
266*zeta^6 - 549*zeta^5 - 1446*zeta^4 + 848*zeta^3 + 2011*zeta^2 - 585*zeta - 
440)*q^620 + 1/50*(11*zeta^7 + 79*zeta^6 - 16*zeta^5 - 454*zeta^4 - 72*zeta^3 + 
679*zeta^2 - 10*zeta - 173)*q^621 + 1/150*(26*zeta^7 + 3*zeta^6 - 174*zeta^5 - 
5*zeta^4 + 340*zeta^3 - 15*zeta^2 - 190*zeta)*q^622 + 1/150*(360*zeta^7 - 
160*zeta^6 - 2324*zeta^5 + 1222*zeta^4 + 4383*zeta^3 - 2226*zeta^2 - 2317*zeta +
770)*q^623 + 1/150*(-748*zeta^7 - 681*zeta^6 + 4931*zeta^5 + 4086*zeta^4 - 
9389*zeta^3 - 6742*zeta^2 + 5173*zeta + 1974)*q^624 + 1/150*(-386*zeta^7 + 
62*zeta^6 + 2661*zeta^5 + 148*zeta^4 - 5585*zeta^3 - 1787*zeta^2 + 3238*zeta + 
916)*q^625 + 1/150*(-83*zeta^7 - 18*zeta^6 + 504*zeta^5 + 304*zeta^4 - 
540*zeta^3 - 916*zeta^2 - 485*zeta + 220)*q^626 + 1/75*(-48*zeta^7 + 8*zeta^6 + 
288*zeta^5 - 26*zeta^4 - 506*zeta^3 - 54*zeta^2 + 339*zeta + 124)*q^627 + 
1/150*(383*zeta^7 + 647*zeta^6 - 2034*zeta^5 - 3565*zeta^4 + 1995*zeta^3 + 
4278*zeta^2 + 594*zeta + 171)*q^628 + 1/150*(13*zeta^7 - 33*zeta^6 - 124*zeta^5 
+ 174*zeta^4 + 370*zeta^3 - 170*zeta^2 - 249*zeta - 75)*q^630 + 
1/150*(-106*zeta^7 + 467*zeta^6 + 636*zeta^5 - 2250*zeta^4 - 614*zeta^3 + 
2972*zeta^2 - 564*zeta - 1848)*q^631 + 1/150*(-46*zeta^7 + 7*zeta^6 + 234*zeta^5
- 41*zeta^4 - 101*zeta^3 - 32*zeta^2 - 518*zeta + 71)*q^632 + 1/150*(566*zeta^7 
+ 448*zeta^6 - 3866*zeta^5 - 2678*zeta^4 + 8010*zeta^3 + 4147*zeta^2 - 4838*zeta
- 876)*q^633 + 1/150*(-512*zeta^7 - 527*zeta^6 + 3587*zeta^5 + 3162*zeta^4 - 
7561*zeta^3 - 5148*zeta^2 + 4977*zeta + 1322)*q^634 + 1/150*(177*zeta^7 - 
530*zeta^6 - 1513*zeta^5 + 3494*zeta^4 + 3810*zeta^3 - 5712*zeta^2 - 2690*zeta +
1258)*q^635 + 1/25*(-91*zeta^7 - 11*zeta^6 + 605*zeta^5 + 16*zeta^4 - 
1172*zeta^3 + 65*zeta^2 + 651*zeta - 12)*q^636 + 1/150*(-17*zeta^7 - 463*zeta^6 
- 268*zeta^5 + 2723*zeta^4 + 1234*zeta^3 - 4183*zeta^2 - 360*zeta + 1111)*q^637 
+ 1/25*(17*zeta^7 - 14*zeta^6 - 141*zeta^5 + 105*zeta^4 + 334*zeta^3 - 
201*zeta^2 - 163*zeta + 70)*q^638 + 1/150*(-688*zeta^7 - 117*zeta^6 + 
4528*zeta^5 + 289*zeta^4 - 8676*zeta^3 + 349*zeta^2 + 4828*zeta - 184)*q^639 + 
1/150*(143*zeta^7 - 435*zeta^6 - 1231*zeta^5 + 2868*zeta^4 + 3113*zeta^3 - 
4689*zeta^2 - 2202*zeta + 1022)*q^640 + 1/50*(-82*zeta^7 - 36*zeta^6 + 
411*zeta^5 + 216*zeta^4 - 336*zeta^3 - 398*zeta^2 - 308*zeta + 230)*q^641 + 
1/150*(-578*zeta^7 - 832*zeta^6 + 3932*zeta^5 + 4436*zeta^4 - 8100*zeta^3 - 
5251*zeta^2 + 5048*zeta + 552)*q^642 + 1/75*(65*zeta^7 - 21*zeta^6 - 337*zeta^5 
+ 123*zeta^4 + 157*zeta^3 - 50*zeta^2 + 751*zeta - 67)*q^643 + 
1/150*(-151*zeta^7 + 79*zeta^6 + 906*zeta^5 - 345*zeta^4 - 1532*zeta^3 + 
201*zeta^2 + 911*zeta + 139)*q^644 + 1/150*(31*zeta^7 + 51*zeta^6 - 166*zeta^5 -
286*zeta^4 + 169*zeta^3 + 348*zeta^2 + 27*zeta + 31)*q^645 + 1/150*(365*zeta^7 -
331*zeta^6 - 2886*zeta^5 + 1690*zeta^4 + 7113*zeta^3 - 1360*zeta^2 - 4071*zeta -
1235)*q^647 + 1/50*(-21*zeta^7 + 16*zeta^6 + 126*zeta^5 - 73*zeta^4 - 208*zeta^3
+ 63*zeta^2 + 114*zeta - 1)*q^648 + 1/25*(-28*zeta^7 + 11*zeta^6 + 139*zeta^5 - 
79*zeta^4 - 41*zeta^3 + 82*zeta^2 - 356*zeta + 23)*q^649 + 1/150*(372*zeta^7 + 
590*zeta^6 - 2532*zeta^5 - 3099*zeta^4 + 5220*zeta^3 + 3509*zeta^2 - 3283*zeta -
298)*q^650 + 1/150*(-54*zeta^7 - 96*zeta^6 + 511*zeta^5 + 576*zeta^4 - 
1507*zeta^3 - 901*zeta^2 + 1419*zeta + 128)*q^651 + 1/50*(-12*zeta^7 - 
100*zeta^6 - 8*zeta^5 + 634*zeta^4 + 237*zeta^3 - 1002*zeta^2 - 283*zeta + 
182)*q^652 + 1/30*(197*zeta^7 + 11*zeta^6 - 1328*zeta^5 + 28*zeta^4 + 
2611*zeta^3 - 191*zeta^2 - 1448*zeta - 12)*q^653 + 1/75*(-136*zeta^7 - 26*zeta^6
+ 1006*zeta^5 - 20*zeta^4 - 2200*zeta^3 + 336*zeta^2 + 1138*zeta - 222)*q^654 + 
1/150*(584*zeta^7 + 1420*zeta^6 - 3186*zeta^5 - 7677*zeta^4 + 5086*zeta^3 + 
10594*zeta^2 - 3404*zeta - 2274)*q^655 + 1/150*(-466*zeta^7 - 290*zeta^6 + 
2773*zeta^5 + 1234*zeta^4 - 4693*zeta^3 - 620*zeta^2 + 2659*zeta - 728)*q^656 + 
1/50*(-217*zeta^7 + 116*zeta^6 + 1417*zeta^5 - 862*zeta^4 - 2714*zeta^3 + 
1542*zeta^2 + 1464*zeta - 502)*q^657 + 1/150*(-296*zeta^7 - 267*zeta^6 + 
1945*zeta^5 + 1602*zeta^4 - 3682*zeta^3 - 2645*zeta^2 + 2006*zeta + 780)*q^658 +
1/150*(-196*zeta^7 - 74*zeta^6 + 1341*zeta^5 + 560*zeta^4 - 2785*zeta^3 - 
1222*zeta^2 + 1646*zeta + 380)*q^659 + 1/75*(-55*zeta^7 + 31*zeta^6 + 252*zeta^5
- 263*zeta^4 + 13*zeta^3 + 400*zeta^2 - 821*zeta + 17)*q^660 + 
1/150*(-117*zeta^7 - 171*zeta^6 + 702*zeta^5 + 859*zeta^4 - 1454*zeta^3 - 
1435*zeta^2 + 1408*zeta + 1245)*q^661 + 1/75*(-117*zeta^7 - 35*zeta^6 + 
784*zeta^5 + 216*zeta^4 - 1504*zeta^3 - 374*zeta^2 + 615*zeta + 187)*q^662 + 
1/150*(-55*zeta^7 - 255*zeta^6 + 130*zeta^5 + 1382*zeta^4 + 605*zeta^3 - 
1544*zeta^2 - 879*zeta - 263)*q^664 + 1/150*(10*zeta^7 - 21*zeta^6 - 60*zeta^5 +
100*zeta^4 + 84*zeta^3 - 122*zeta^2 - 15*zeta + 64)*q^665 + 1/150*(119*zeta^7 + 
46*zeta^6 - 756*zeta^5 - 644*zeta^4 + 928*zeta^3 + 1756*zeta^2 + 481*zeta - 
376)*q^666 + 1/150*(124*zeta^7 + 306*zeta^6 - 836*zeta^5 - 1533*zeta^4 + 
1700*zeta^3 + 1483*zeta^2 - 1109*zeta - 6)*q^667 + 1/150*(-258*zeta^7 - 
179*zeta^6 + 1520*zeta^5 + 1074*zeta^4 - 2272*zeta^3 - 1829*zeta^2 + 568*zeta + 
694)*q^668 + 1/150*(-299*zeta^7 + 297*zeta^6 + 2063*zeta^5 - 2066*zeta^4 - 
4236*zeta^3 + 3525*zeta^2 + 2485*zeta - 964)*q^669 + 1/150*(-69*zeta^7 + 
16*zeta^6 + 485*zeta^5 - 117*zeta^4 - 990*zeta^3 + 182*zeta^2 + 535*zeta + 
36)*q^670 + 1/75*(-8*zeta^7 + 11*zeta^6 + 71*zeta^5 - 76*zeta^4 - 176*zeta^3 + 
136*zeta^2 + 85*zeta - 43)*q^671 + 1/150*(161*zeta^7 - 137*zeta^6 - 1340*zeta^5 
+ 1021*zeta^4 + 3182*zeta^3 - 1945*zeta^2 - 1552*zeta + 673)*q^672 + 
1/150*(-409*zeta^7 - 12*zeta^6 + 2766*zeta^5 - 119*zeta^4 - 5453*zeta^3 + 
468*zeta^2 + 3014*zeta + 36)*q^673 + 1/150*(-2*zeta^7 - 125*zeta^6 - 86*zeta^5 +
798*zeta^4 + 423*zeta^3 - 1269*zeta^2 - 412*zeta + 252)*q^674 + 1/50*(2*zeta^7 -
5*zeta^6 + 14*zeta^5 + 30*zeta^4 - 121*zeta^3 - 40*zeta^2 + 173*zeta - 12)*q^675
+ 1/150*(-276*zeta^7 - 10*zeta^6 + 1900*zeta^5 + 353*zeta^4 - 3980*zeta^3 - 
1427*zeta^2 + 2329*zeta + 606)*q^676 + 1/150*(86*zeta^7 + 20*zeta^6 - 541*zeta^5
- 362*zeta^4 + 636*zeta^3 + 1078*zeta^2 + 422*zeta - 232)*q^677 + 
1/150*(146*zeta^7 + 55*zeta^6 - 876*zeta^5 - 304*zeta^4 + 1632*zeta^3 + 
706*zeta^2 - 1277*zeta - 776)*q^678 + 1/75*(-137*zeta^7 - 191*zeta^6 + 
768*zeta^5 + 1058*zeta^4 - 936*zeta^3 - 1298*zeta^2 - 15*zeta - 1)*q^679 + 
1/150*(812*zeta^7 + 468*zeta^6 - 5216*zeta^5 - 2703*zeta^4 + 9200*zeta^3 + 
3878*zeta^2 - 3153*zeta - 984)*q^681 + 1/75*(-76*zeta^7 + 18*zeta^6 + 456*zeta^5
- 66*zeta^4 - 794*zeta^3 - 50*zeta^2 + 517*zeta + 164)*q^682 + 1/75*(-9*zeta^7 +
9*zeta^6 + 28*zeta^5 - 97*zeta^4 + 59*zeta^3 + 192*zeta^2 - 203*zeta - 9)*q^683 
+ 1/150*(-50*zeta^7 - 120*zeta^6 + 337*zeta^5 + 603*zeta^4 - 685*zeta^3 - 
590*zeta^2 + 445*zeta + 6)*q^684 + 1/150*(-34*zeta^7 - 30*zeta^6 + 209*zeta^5 + 
180*zeta^4 - 344*zeta^3 - 304*zeta^2 + 124*zeta + 102)*q^685 + 
1/150*(-366*zeta^7 - 241*zeta^6 + 2034*zeta^5 + 1344*zeta^4 - 2984*zeta^3 - 
1863*zeta^2 + 973*zeta + 10)*q^686 + 1/150*(-419*zeta^7 - 3*zeta^6 + 2858*zeta^5
- 154*zeta^4 - 5691*zeta^3 + 467*zeta^2 + 3158*zeta + 100)*q^687 + 
1/150*(158*zeta^7 - 95*zeta^6 - 1291*zeta^5 + 773*zeta^4 + 3042*zeta^3 - 
1556*zeta^2 - 1519*zeta + 553)*q^688 + 1/75*(-325*zeta^7 - 773*zeta^6 + 
1798*zeta^5 + 4165*zeta^4 - 2938*zeta^3 - 5727*zeta^2 + 1954*zeta + 1233)*q^689 
+ 1/150*(-30*zeta^7 - 34*zeta^6 + 153*zeta^5 + 150*zeta^4 - 197*zeta^3 - 
84*zeta^2 + 111*zeta - 104)*q^690 + 1/150*(224*zeta^7 + 179*zeta^6 - 1224*zeta^5
- 1022*zeta^4 + 1727*zeta^3 + 1455*zeta^2 - 496*zeta - 80)*q^691 + 
1/150*(282*zeta^7 + 41*zeta^6 - 1158*zeta^5 - 246*zeta^4 - 208*zeta^3 + 
627*zeta^2 + 2768*zeta - 798)*q^692 + 1/25*(-96*zeta^7 - 68*zeta^6 + 657*zeta^5 
+ 417*zeta^4 - 1365*zeta^3 - 677*zeta^2 + 823*zeta + 154)*q^693 + 
1/150*(-119*zeta^7 - 128*zeta^6 + 908*zeta^5 + 1522*zeta^4 - 1618*zeta^3 - 
3652*zeta^2 + 455*zeta + 622)*q^694 + 1/150*(-137*zeta^7 + 365*zeta^6 + 
822*zeta^5 - 1737*zeta^4 - 1054*zeta^3 + 2193*zeta^2 - 56*zeta - 1303)*q^695 + 
1/50*(36*zeta^7 + 12*zeta^6 - 240*zeta^5 - 73*zeta^4 + 456*zeta^3 + 122*zeta^2 -
183*zeta - 56)*q^696 + 1/75*(411*zeta^7 + 273*zeta^6 - 2604*zeta^5 - 1562*zeta^4
+ 4458*zeta^3 + 2170*zeta^2 - 1419*zeta - 445)*q^698 + 1/50*(-162*zeta^7 - 
31*zeta^6 + 972*zeta^5 + 196*zeta^4 - 1772*zeta^3 - 582*zeta^2 + 1311*zeta + 
688)*q^699 + 1/150*(42*zeta^7 + 15*zeta^6 - 266*zeta^5 - 217*zeta^4 + 323*zeta^3
+ 600*zeta^2 + 178*zeta - 129)*q^700 + 1/150*(250*zeta^7 - 158*zeta^6 - 
1728*zeta^5 + 439*zeta^4 + 3640*zeta^3 + 840*zeta^2 - 2061*zeta - 702)*q^701 + 
1/50*(30*zeta^7 + 4*zeta^6 - 125*zeta^5 - 24*zeta^4 - 12*zeta^3 + 62*zeta^2 + 
280*zeta - 82)*q^702 + 1/150*(106*zeta^7 + 73*zeta^6 - 586*zeta^5 - 410*zeta^4 +
851*zeta^3 + 573*zeta^2 - 270*zeta - 8)*q^703 + 1/75*(-403*zeta^7 - 104*zeta^6 +
2602*zeta^5 + 343*zeta^4 - 4879*zeta^3 + 64*zeta^2 + 2722*zeta - 212)*q^704 + 
1/150*(238*zeta^7 + 554*zeta^6 - 1330*zeta^5 - 2977*zeta^4 + 2206*zeta^3 + 
4080*zeta^2 - 1456*zeta - 876)*q^705 + 1/150*(-345*zeta^7 + 177*zeta^6 + 
2772*zeta^5 - 1497*zeta^4 - 6438*zeta^3 + 3097*zeta^2 + 3200*zeta - 1153)*q^706 
+ 1/150*(-387*zeta^7 - 149*zeta^6 + 2429*zeta^5 + 570*zeta^4 - 4404*zeta^3 - 
133*zeta^2 + 2467*zeta - 348)*q^707 + 1/50*(-68*zeta^7 + 41*zeta^6 + 448*zeta^5 
- 300*zeta^4 - 868*zeta^3 + 531*zeta^2 + 475*zeta - 166)*q^708 + 
1/150*(530*zeta^7 + 194*zeta^6 - 2565*zeta^5 - 1164*zeta^4 + 1688*zeta^3 + 
2212*zeta^2 + 2580*zeta - 1462)*q^709 + 1/150*(178*zeta^7 + 92*zeta^6 - 
1211*zeta^5 - 627*zeta^4 + 2495*zeta^3 + 1206*zeta^2 - 1473*zeta - 334)*q^710 + 
1/50*(-32*zeta^7 + zeta^6 + 177*zeta^5 + 27*zeta^4 - 131*zeta^3 - 154*zeta^2 - 
288*zeta + 61)*q^711 + 1/150*(-49*zeta^7 - 123*zeta^6 + 294*zeta^5 + 615*zeta^4 
- 662*zeta^3 - 959*zeta^2 + 724*zeta + 737)*q^712 + 1/150*(413*zeta^7 + 
217*zeta^6 - 2674*zeta^5 - 1264*zeta^4 + 4795*zeta^3 + 1856*zeta^2 - 1713*zeta -
523)*q^713 + 1/75*(48*zeta^7 + 366*zeta^6 + 30*zeta^5 - 1978*zeta^4 - 
1317*zeta^3 + 2174*zeta^2 + 1464*zeta + 448)*q^715 + 1/150*(35*zeta^7 + 
111*zeta^6 - 210*zeta^5 - 549*zeta^4 + 502*zeta^3 + 841*zeta^2 - 596*zeta - 
655)*q^716 + 1/150*(5*zeta^7 + 98*zeta^6 - 214*zeta^5 - 1064*zeta^4 + 864*zeta^3
+ 2320*zeta^2 - 1093*zeta - 304)*q^717 + 1/150*(170*zeta^7 + 128*zeta^6 - 
1167*zeta^5 - 769*zeta^4 + 2435*zeta^3 + 1200*zeta^2 - 1479*zeta - 258)*q^718 + 
1/150*(124*zeta^7 + 181*zeta^6 - 1057*zeta^5 - 1086*zeta^4 + 2840*zeta^3 + 
1713*zeta^2 - 2484*zeta - 292)*q^719 + 1/150*(91*zeta^7 - 342*zeta^6 - 
835*zeta^5 + 2242*zeta^4 + 2214*zeta^3 - 3648*zeta^2 - 1622*zeta + 782)*q^720 + 
1/150*(274*zeta^7 + 165*zeta^6 - 1637*zeta^5 - 697*zeta^4 + 2785*zeta^3 + 
337*zeta^2 - 1575*zeta + 416)*q^721 + 1/150*(-340*zeta^7 - 269*zeta^6 + 
2341*zeta^5 + 1159*zeta^4 - 4834*zeta^3 - 1034*zeta^2 + 2625*zeta - 49)*q^722 + 
1/50*(-188*zeta^7 - 196*zeta^6 + 1254*zeta^5 + 921*zeta^4 - 2518*zeta^3 - 
1006*zeta^2 + 1400*zeta + 90)*q^723 + 1/150*(-112*zeta^7 + 259*zeta^6 + 
1128*zeta^5 - 1319*zeta^4 - 2988*zeta^3 + 1173*zeta^2 + 1604*zeta + 776)*q^724 +
1/150*(-203*zeta^7 - 78*zeta^6 + 1175*zeta^5 + 388*zeta^4 - 1863*zeta^3 - 
462*zeta^2 + 733*zeta - 100)*q^725 + 1/150*(50*zeta^7 + 108*zeta^6 - 529*zeta^5 
- 648*zeta^4 + 1693*zeta^3 + 1007*zeta^2 - 1685*zeta - 120)*q^726 + 
1/150*(368*zeta^7 - 144*zeta^6 - 2549*zeta^5 + 253*zeta^4 + 5385*zeta^3 + 
1431*zeta^2 - 3105*zeta - 934)*q^727 + 1/150*(52*zeta^7 - 48*zeta^6 - 205*zeta^5
+ 446*zeta^4 - 164*zeta^3 - 802*zeta^2 + 984*zeta + 40)*q^728 + 1/25*(-33*zeta^7
- 15*zeta^6 + 198*zeta^5 + 81*zeta^4 - 372*zeta^3 - 177*zeta^2 + 297*zeta + 
189)*q^729 + 1/150*(28*zeta^7 - 90*zeta^6 - 286*zeta^5 + 476*zeta^4 + 901*zeta^3
- 474*zeta^2 - 630*zeta - 188)*q^730 + 1/150*(70*zeta^7 + 48*zeta^6 - 442*zeta^5
- 274*zeta^4 + 751*zeta^3 + 378*zeta^2 - 234*zeta - 74)*q^732 + 
1/150*(174*zeta^7 + 18*zeta^6 - 1044*zeta^5 - 136*zeta^4 + 1886*zeta^3 + 
520*zeta^2 - 1363*zeta - 666)*q^733 + 1/150*(41*zeta^7 + 34*zeta^6 - 283*zeta^5 
- 394*zeta^4 + 428*zeta^3 + 958*zeta^2 + 3*zeta - 184)*q^734 + 1/150*(142*zeta^7
+ 48*zeta^6 - 980*zeta^5 - 372*zeta^4 + 2060*zeta^3 + 829*zeta^2 - 1232*zeta - 
264)*q^735 + 1/150*(584*zeta^7 + 574*zeta^6 - 3992*zeta^5 - 3444*zeta^4 + 
8091*zeta^3 + 5637*zeta^2 - 4999*zeta - 1526)*q^736 + 1/75*(-203*zeta^7 - 
186*zeta^6 + 1087*zeta^5 + 1080*zeta^4 - 1469*zeta^3 - 1566*zeta^2 + 363*zeta + 
112)*q^737 + 1/50*(71*zeta^7 - 85*zeta^6 - 603*zeta^5 + 448*zeta^4 + 1442*zeta^3
- 429*zeta^2 - 781*zeta - 260)*q^738 + 1/150*(zeta^7 + 419*zeta^6 + 358*zeta^5 -
2486*zeta^4 - 1392*zeta^3 + 3853*zeta^2 + 476*zeta - 1029)*q^739 + 
1/150*(-335*zeta^7 - 847*zeta^6 + 1806*zeta^5 + 4593*zeta^4 - 2842*zeta^3 - 
6369*zeta^2 + 1942*zeta + 1391)*q^740 + 1/150*(3*zeta^7 - 157*zeta^6 - 
240*zeta^5 + 774*zeta^4 + 925*zeta^3 - 639*zeta^2 - 480*zeta - 452)*q^741 + 
1/75*(37*zeta^7 - 63*zeta^6 - 277*zeta^5 + 424*zeta^4 + 621*zeta^3 - 705*zeta^2 
- 398*zeta + 170)*q^742 + 1/75*(-142*zeta^7 - 27*zeta^6 + 600*zeta^5 + 
162*zeta^4 + 15*zeta^3 - 374*zeta^2 - 1283*zeta + 404)*q^743 + 1/150*(20*zeta^7 
+ 90*zeta^6 - 136*zeta^5 - 429*zeta^4 + 280*zeta^3 + 335*zeta^2 - 205*zeta + 
42)*q^744 + 1/150*(-109*zeta^7 + 70*zeta^6 + 503*zeta^5 - 574*zeta^4 + 20*zeta^3
+ 874*zeta^2 - 1647*zeta + 8)*q^745 + 1/150*(75*zeta^7 + 115*zeta^6 - 450*zeta^5
- 577*zeta^4 + 938*zeta^3 + 957*zeta^2 - 918*zeta - 823)*q^746 + 
1/150*(-161*zeta^7 - 465*zeta^6 + 662*zeta^5 + 2535*zeta^4 + 223*zeta^3 - 
2906*zeta^2 - 1194*zeta - 357)*q^747 + 1/150*(-232*zeta^7 + 206*zeta^6 + 
1830*zeta^5 - 1052*zeta^4 - 4497*zeta^3 + 842*zeta^2 + 2562*zeta + 784)*q^749 + 
1/150*(57*zeta^7 - 38*zeta^6 - 342*zeta^5 + 167*zeta^4 + 566*zeta^3 - 129*zeta^2
- 309*zeta + 5)*q^750 + 1/150*(-17*zeta^7 - 131*zeta^6 + 330*zeta^5 + 
1407*zeta^4 - 1145*zeta^3 - 3076*zeta^2 + 1317*zeta + 427)*q^751 + 
1/150*(-320*zeta^7 + 194*zeta^6 + 2219*zeta^5 - 532*zeta^4 - 4695*zeta^3 - 
1060*zeta^2 + 2678*zeta + 876)*q^752 + 1/150*(902*zeta^7 + 708*zeta^6 - 
5589*zeta^5 - 4248*zeta^4 + 9414*zeta^3 + 7120*zeta^2 - 3842*zeta - 2398)*q^753 
+ 1/150*(-335*zeta^7 - 165*zeta^6 + 1907*zeta^5 + 874*zeta^4 - 2934*zeta^3 - 
1137*zeta^2 + 1081*zeta - 100)*q^754 + 1/150*(-1008*zeta^7 - 161*zeta^6 + 
6641*zeta^5 + 363*zeta^4 - 12735*zeta^3 + 587*zeta^2 + 7075*zeta - 264)*q^755 + 
1/50*(-61*zeta^7 - 167*zeta^6 + 318*zeta^5 + 912*zeta^4 - 476*zeta^3 - 
1277*zeta^2 + 340*zeta + 285)*q^756 + 1/150*(252*zeta^7 + 522*zeta^6 - 
1456*zeta^5 - 2773*zeta^4 + 2510*zeta^3 + 3734*zeta^2 - 1582*zeta - 760)*q^757 +
1/150*(176*zeta^7 + 170*zeta^6 - 963*zeta^5 - 764*zeta^4 + 1433*zeta^3 + 
480*zeta^2 - 829*zeta + 448)*q^758 + 1/75*(335*zeta^7 + 3*zeta^6 - 2039*zeta^5 +
164*zeta^4 + 3525*zeta^3 - 519*zeta^2 - 1636*zeta + 418)*q^759 + 
1/150*(-26*zeta^7 - 15*zeta^6 + 148*zeta^5 + 90*zeta^4 - 202*zeta^3 - 155*zeta^2
+ 26*zeta + 66)*q^760 + 1/150*(-298*zeta^7 - 6*zeta^6 + 2055*zeta^5 + 356*zeta^4
- 4315*zeta^3 - 1511*zeta^2 + 2530*zeta + 652)*q^761 + 1/150*(9*zeta^7 + 
32*zeta^6 - 104*zeta^5 - 342*zeta^4 + 286*zeta^3 + 756*zeta^2 - 265*zeta - 
114)*q^762 + 1/75*(26*zeta^7 + 26*zeta^6 - 156*zeta^5 - 134*zeta^4 + 308*zeta^3 
+ 238*zeta^2 - 272*zeta - 210)*q^763 + 1/150*(321*zeta^7 + 235*zeta^6 - 
2012*zeta^5 - 1337*zeta^4 + 3362*zeta^3 + 1820*zeta^2 - 1002*zeta - 315)*q^764 +
1/150*(-368*zeta^7 - 270*zeta^6 + 2306*zeta^5 + 1534*zeta^4 - 3851*zeta^3 - 
2086*zeta^2 + 1140*zeta + 368)*q^766 + 1/150*(24*zeta^7 - 317*zeta^6 - 
144*zeta^5 + 1532*zeta^4 - 106*zeta^3 - 2118*zeta^2 + 774*zeta + 1466)*q^767 + 
1/150*(179*zeta^7 + 75*zeta^6 - 1148*zeta^5 - 1031*zeta^4 + 1445*zeta^3 + 
2776*zeta^2 + 657*zeta - 583)*q^768 + 1/150*(-526*zeta^7 - 162*zeta^6 + 
3616*zeta^5 + 1321*zeta^4 - 7560*zeta^3 - 3102*zeta^2 + 4485*zeta + 1022)*q^769 
+ 1/75*(88*zeta^7 + 54*zeta^6 - 496*zeta^5 - 324*zeta^4 + 655*zeta^3 + 
561*zeta^2 - 43*zeta - 238)*q^770 + 1/150*(-259*zeta^7 - 207*zeta^6 + 
1411*zeta^5 + 1184*zeta^4 - 1983*zeta^3 - 1689*zeta^2 + 566*zeta + 82)*q^771 + 
1/150*(1505*zeta^7 + 63*zeta^6 - 10171*zeta^5 + 322*zeta^4 + 20048*zeta^3 - 
1561*zeta^2 - 11109*zeta - 140)*q^772 + 1/150*(-107*zeta^7 + 251*zeta^6 + 
1024*zeta^5 - 1625*zeta^4 - 2622*zeta^3 + 2759*zeta^2 + 1192*zeta - 847)*q^773 +
1/150*(319*zeta^7 + 113*zeta^6 - 2326*zeta^5 - 256*zeta^4 + 5044*zeta^3 - 
321*zeta^2 - 2656*zeta + 381)*q^774 + 1/150*(12*zeta^7 - 132*zeta^6 - 277*zeta^5
+ 642*zeta^4 + 955*zeta^3 - 502*zeta^2 - 515*zeta - 416)*q^775 + 1/75*(19*zeta^7
+ 138*zeta^6 - 3*zeta^5 - 874*zeta^4 - 304*zeta^3 + 1380*zeta^2 + 380*zeta - 
246)*q^776 + 1/150*(-52*zeta^7 + 57*zeta^6 + zeta^5 - 342*zeta^4 + 1175*zeta^3 +
456*zeta^2 - 1943*zeta + 166)*q^777 + 1/50*(104*zeta^7 + 210*zeta^6 - 704*zeta^5
- 1073*zeta^4 + 1440*zeta^3 + 1113*zeta^2 - 921*zeta - 46)*q^778 + 
1/150*(-21*zeta^7 - 25*zeta^6 + 169*zeta^5 + 303*zeta^4 - 323*zeta^3 - 
726*zeta^2 + 125*zeta + 117)*q^779 + 1/150*(107*zeta^7 - 248*zeta^6 - 642*zeta^5
+ 1181*zeta^4 + 870*zeta^3 - 1463*zeta^2 - 83*zeta + 811)*q^780 + 
1/75*(29*zeta^7 + 321*zeta^6 + 118*zeta^5 - 1730*zeta^4 - 1345*zeta^3 + 
1884*zeta^2 + 1377*zeta + 413)*q^781 + 1/50*(13*zeta^7 - 33*zeta^6 - 124*zeta^5 
+ 174*zeta^4 + 370*zeta^3 - 170*zeta^2 - 249*zeta - 75)*q^783 + 1/150*(95*zeta^7
+ 168*zeta^6 - 570*zeta^5 - 849*zeta^4 + 1204*zeta^3 + 1375*zeta^2 - 1196*zeta -
1093)*q^784 + 1/150*(250*zeta^7 - 121*zeta^6 - 1172*zeta^5 + 1003*zeta^4 + 
67*zeta^3 - 1420*zeta^2 + 3546*zeta - 137)*q^785 + 1/150*(-48*zeta^7 + 76*zeta^6
+ 341*zeta^5 - 299*zeta^4 - 745*zeta^3 - zeta^2 + 419*zeta + 162)*q^786 + 
1/150*(878*zeta^7 + 406*zeta^6 - 4501*zeta^5 - 2436*zeta^4 + 4139*zeta^3 + 
4427*zeta^2 + 2597*zeta - 2424)*q^787 + 1/150*(-522*zeta^7 + 336*zeta^6 + 
3454*zeta^5 - 2438*zeta^4 - 6733*zeta^3 + 4290*zeta^2 + 3715*zeta - 1322)*q^788 
+ 1/30*(96*zeta^7 + 118*zeta^6 - 489*zeta^5 - 540*zeta^4 + 635*zeta^3 + 
360*zeta^2 - 375*zeta + 320)*q^789 + 1/150*(-45*zeta^7 - 114*zeta^6 + 255*zeta^5
+ 612*zeta^4 - 444*zeta^3 - 845*zeta^2 + 311*zeta + 200)*q^790 + 
1/150*(219*zeta^7 + 693*zeta^6 - 1060*zeta^5 - 3829*zeta^4 + 1394*zeta^3 + 
5445*zeta^2 - 1112*zeta - 1253)*q^791 + 1/25*(76*zeta^7 + 22*zeta^6 - 487*zeta^5
- 76*zeta^4 + 905*zeta^3 - 4*zeta^2 - 505*zeta + 48)*q^792 + 1/150*(66*zeta^7 + 
37*zeta^6 - 374*zeta^5 - 200*zeta^4 + 568*zeta^3 + 267*zeta^2 - 201*zeta + 
6)*q^793 + 1/150*(580*zeta^7 + 549*zeta^6 - 3903*zeta^5 - 3294*zeta^4 + 
7707*zeta^3 + 5408*zeta^2 - 4555*zeta - 1514)*q^794 + 1/25*(78*zeta^7 + 
36*zeta^6 - 536*zeta^5 - 250*zeta^4 + 1120*zeta^3 + 491*zeta^2 - 670*zeta - 
140)*q^795 + 1/150*(314*zeta^7 - 59*zeta^6 - 1666*zeta^5 + 221*zeta^4 + 
953*zeta^3 + 496*zeta^2 + 3306*zeta - 451)*q^796 + 1/150*(-99*zeta^7 - 72*zeta^6
+ 594*zeta^5 + 371*zeta^4 - 1150*zeta^3 - 713*zeta^2 + 983*zeta + 717)*q^797 + 
1/150*(-201*zeta^7 - 129*zeta^6 + 1278*zeta^5 + 740*zeta^4 - 2205*zeta^3 - 
1036*zeta^2 + 717*zeta + 223)*q^798 + 1/150*(-517*zeta^7 - 301*zeta^6 + 
3318*zeta^5 + 1739*zeta^4 - 5841*zeta^3 - 2490*zeta^2 + 1998*zeta + 615)*q^800 +
1/150*(-282*zeta^7 - 209*zeta^6 + 1692*zeta^5 + 1094*zeta^4 - 3262*zeta^3 - 
2076*zeta^2 + 2748*zeta + 1952)*q^801 + 1/150*(-53*zeta^7 + 32*zeta^6 + 
260*zeta^5 - 234*zeta^4 - 54*zeta^3 + 308*zeta^2 - 731*zeta + 10)*q^802 + 
1/75*(-730*zeta^7 - 498*zeta^6 + 4997*zeta^5 + 3084*zeta^4 - 10385*zeta^3 - 
5095*zeta^2 + 6254*zeta + 1188)*q^803 + 1/150*(-558*zeta^7 - 576*zeta^6 + 
3905*zeta^5 + 3456*zeta^4 - 8216*zeta^3 - 5630*zeta^2 + 5388*zeta + 1450)*q^804 
+ 1/150*(-68*zeta^7 + 149*zeta^6 + 536*zeta^5 - 992*zeta^4 - 1262*zeta^3 + 
1635*zeta^2 + 845*zeta - 378)*q^805 + 1/150*(-27*zeta^7 - 245*zeta^6 - 
154*zeta^5 + 1200*zeta^4 + 993*zeta^3 - 979*zeta^2 - 494*zeta - 684)*q^806 + 
1/150*(-27*zeta^7 - 399*zeta^6 - 138*zeta^5 + 2331*zeta^4 + 858*zeta^3 - 
3553*zeta^2 - 206*zeta + 931)*q^807 + 1/150*(58*zeta^7 + 281*zeta^6 - 199*zeta^5
- 1591*zeta^4 + 58*zeta^3 + 2336*zeta^2 - 195*zeta - 575)*q^808 + 
1/150*(1575*zeta^7 + 68*zeta^6 - 10636*zeta^5 + 333*zeta^4 + 20945*zeta^3 - 
1648*zeta^2 - 11600*zeta - 124)*q^809 + 1/50*(zeta^7 + 15*zeta^6 + 7*zeta^5 - 
96*zeta^4 - 47*zeta^3 + 153*zeta^2 + 48*zeta - 26)*q^810 + 1/150*(-566*zeta^7 - 
446*zeta^6 + 3523*zeta^5 + 2676*zeta^4 - 5994*zeta^3 - 4478*zeta^2 + 2526*zeta +
1494)*q^811 + 1/150*(104*zeta^7 - 30*zeta^6 - 718*zeta^5 + 21*zeta^4 + 
1510*zeta^3 + 443*zeta^2 - 871*zeta - 258)*q^812 + 1/150*(204*zeta^7 + 34*zeta^6
- 1207*zeta^5 - 612*zeta^4 + 1190*zeta^3 + 1938*zeta^2 + 1360*zeta - 510)*q^813 
+ 1/75*(119*zeta^7 - 68*zeta^6 - 714*zeta^5 + 299*zeta^4 + 1200*zeta^3 - 
197*zeta^2 - 698*zeta - 77)*q^814 + 1/50*(3*zeta^7 + 71*zeta^6 + 50*zeta^5 - 
381*zeta^4 - 347*zeta^3 + 410*zeta^2 + 330*zeta + 95)*q^815 + 1/150*(-151*zeta^7
- 103*zeta^6 + 954*zeta^5 + 587*zeta^4 - 1623*zeta^3 - 810*zeta^2 + 504*zeta + 
165)*q^817 + 1/150*(218*zeta^7 - 33*zeta^6 - 1308*zeta^5 + 98*zeta^4 + 
2298*zeta^3 + 272*zeta^2 - 1536*zeta - 556)*q^818 + 1/150*(49*zeta^7 - 
103*zeta^6 - 84*zeta^5 + 1043*zeta^4 - 649*zeta^3 - 2104*zeta^2 + 1595*zeta + 
211)*q^819 + 1/150*(504*zeta^7 + 248*zeta^6 - 3455*zeta^5 - 1693*zeta^4 + 
7195*zeta^3 + 3253*zeta^2 - 4295*zeta - 906)*q^820 + 1/150*(-632*zeta^7 - 
510*zeta^6 + 3960*zeta^5 + 3060*zeta^4 - 6831*zeta^3 - 5113*zeta^2 + 2987*zeta +
1678)*q^821 + 1/150*(740*zeta^7 + 198*zeta^6 - 4352*zeta^5 - 862*zeta^4 + 
7101*zeta^3 + 804*zeta^2 - 2965*zeta + 538)*q^822 + 1/150*(-150*zeta^7 - 
111*zeta^6 + 872*zeta^5 + 489*zeta^4 - 1430*zeta^3 - 289*zeta^2 + 820*zeta - 
272)*q^823 + 1/150*(-201*zeta^6 - 165*zeta^5 + 1188*zeta^4 + 624*zeta^3 - 
1840*zeta^2 - 191*zeta + 505)*q^824 + 1/75*(133*zeta^7 + 2*zeta^6 - 1009*zeta^5 
+ 161*zeta^4 + 2254*zeta^3 - 549*zeta^2 - 1159*zeta + 270)*q^825 + 
1/150*(122*zeta^7 - 45*zeta^6 - 896*zeta^5 + 271*zeta^4 + 1914*zeta^3 - 
323*zeta^2 - 1052*zeta - 160)*q^826 + 1/150*(-163*zeta^7 + 336*zeta^6 + 
1271*zeta^5 - 2244*zeta^4 - 2959*zeta^3 + 3708*zeta^2 + 1959*zeta - 856)*q^827 +
1/150*(482*zeta^7 + 453*zeta^6 - 3228*zeta^5 - 2718*zeta^4 + 6321*zeta^3 + 
4468*zeta^2 - 3677*zeta - 1264)*q^828 + 1/150*(826*zeta^7 + 446*zeta^6 - 
5661*zeta^5 - 2954*zeta^4 + 11785*zeta^3 + 5437*zeta^2 - 7052*zeta - 1448)*q^829
+ 1/150*(-63*zeta^7 + 33*zeta^6 + 289*zeta^5 - 283*zeta^4 + 11*zeta^3 + 
426*zeta^2 - 929*zeta + 27)*q^830 + 1/150*(422*zeta^7 - 190*zeta^6 - 2532*zeta^5
+ 820*zeta^4 + 4322*zeta^3 - 356*zeta^2 - 2657*zeta - 570)*q^831 + 
1/150*(-296*zeta^7 - 482*zeta^6 + 1590*zeta^5 + 2660*zeta^4 - 1641*zeta^3 - 
3206*zeta^2 - 366*zeta - 112)*q^832 + 1/150*(-361*zeta^7 - 183*zeta^6 + 
2344*zeta^5 + 1069*zeta^4 - 4228*zeta^3 - 1584*zeta^2 + 1530*zeta + 467)*q^834 +
1/150*(58*zeta^7 - 161*zeta^6 - 348*zeta^5 + 768*zeta^4 + 440*zeta^3 - 
974*zeta^2 + 39*zeta + 576)*q^835 + 1/75*(-zeta^7 - 12*zeta^6 + 28*zeta^5 + 
130*zeta^4 - 106*zeta^3 - 284*zeta^2 + 129*zeta + 38)*q^836 + 1/50*(-54*zeta^7 -
14*zeta^6 + 369*zeta^5 + 126*zeta^4 - 765*zeta^3 - 323*zeta^2 + 448*zeta + 
112)*q^837 + 1/150*(46*zeta^7 + 49*zeta^6 - 318*zeta^5 - 294*zeta^4 + 655*zeta^3
+ 482*zeta^2 - 411*zeta - 128)*q^838 + 1/150*(284*zeta^7 + 841*zeta^6 - 
1052*zeta^5 - 5230*zeta^4 - 49*zeta^3 + 8121*zeta^2 + 1474*zeta - 1308)*q^839 + 
1/150*(164*zeta^7 + 24*zeta^6 - 1085*zeta^5 - 50*zeta^4 + 2091*zeta^3 - 
98*zeta^2 - 1163*zeta + 32)*q^840 + 1/150*(-155*zeta^7 - 712*zeta^6 + 553*zeta^5
+ 4027*zeta^4 - 222*zeta^3 - 5897*zeta^2 + 515*zeta + 1428)*q^841 + 
1/75*(-53*zeta^7 + 26*zeta^6 + 421*zeta^5 - 221*zeta^4 - 966*zeta^3 + 461*zeta^2
+ 475*zeta - 178)*q^842 + 1/150*(-869*zeta^7 + 159*zeta^6 + 6149*zeta^5 - 
1144*zeta^4 - 12690*zeta^3 + 1679*zeta^2 + 6995*zeta + 652)*q^843 + 
1/150*(-127*zeta^7 + 839*zeta^6 + 1455*zeta^5 - 5444*zeta^4 - 4393*zeta^3 + 
8781*zeta^2 + 3494*zeta - 1814)*q^844 + 1/150*(478*zeta^7 + 288*zeta^6 - 
2671*zeta^5 - 1728*zeta^4 + 3433*zeta^3 + 3003*zeta^2 - 73*zeta - 1300)*q^845 + 
1/50*(178*zeta^7 + 238*zeta^6 - 1211*zeta^5 - 1284*zeta^4 + 2495*zeta^3 + 
1571*zeta^2 - 1546*zeta - 188)*q^846 + 1/150*(-143*zeta^7 + 95*zeta^6 + 
631*zeta^5 - 833*zeta^4 + 145*zeta^3 + 1358*zeta^2 - 2289*zeta + 1)*q^847 + 
1/75*(-99*zeta^7 + 236*zeta^6 + 594*zeta^5 - 1127*zeta^4 - 800*zeta^3 + 
1401*zeta^2 + 66*zeta - 767)*q^848 + 1/150*(-648*zeta^7 - 66*zeta^6 + 
4470*zeta^5 + 508*zeta^4 - 9033*zeta^3 - 1334*zeta^2 + 4026*zeta + 1232)*q^849 +
1/150*(-556*zeta^7 - 218*zeta^6 + 3674*zeta^5 + 1302*zeta^4 - 6863*zeta^3 - 
2070*zeta^2 + 2664*zeta + 820)*q^851 + 1/150*(79*zeta^7 - 221*zeta^6 - 
474*zeta^5 + 1055*zeta^4 + 598*zeta^3 - 1339*zeta^2 + 56*zeta + 789)*q^852 + 
1/150*(73*zeta^6 - 146*zeta^5 - 803*zeta^4 + 657*zeta^3 + 1752*zeta^2 - 876*zeta
- 219)*q^853 + 1/150*(32*zeta^7 + 50*zeta^6 - 217*zeta^5 - 264*zeta^4 + 
445*zeta^3 + 304*zeta^2 - 278*zeta - 28)*q^854 + 1/150*(-46*zeta^7 - 30*zeta^6 +
267*zeta^5 + 180*zeta^4 - 384*zeta^3 - 308*zeta^2 + 76*zeta + 122)*q^855 + 
1/150*(263*zeta^7 - 381*zeta^6 - 1911*zeta^5 + 2584*zeta^4 + 4159*zeta^3 - 
4323*zeta^2 - 2594*zeta + 1086)*q^856 + 1/150*(774*zeta^7 + 354*zeta^6 - 
4775*zeta^5 - 1410*zeta^4 + 8471*zeta^3 + 472*zeta^2 - 4753*zeta + 872)*q^857 + 
1/75*(211*zeta^7 - 49*zeta^6 - 1642*zeta^5 + 563*zeta^4 + 3730*zeta^3 - 
1347*zeta^2 - 1882*zeta + 561)*q^858 + 1/150*(-865*zeta^7 - 1667*zeta^6 + 
5112*zeta^5 + 8775*zeta^4 - 9062*zeta^3 - 11663*zeta^2 + 5596*zeta + 2307)*q^859
+ 1/150*(201*zeta^7 + 41*zeta^6 - 1315*zeta^5 - 120*zeta^4 + 2504*zeta^3 - 
67*zeta^2 - 1397*zeta + 68)*q^860 + 1/150*(-353*zeta^7 + 90*zeta^6 + 2225*zeta^5
- 770*zeta^4 - 4056*zeta^3 + 1500*zeta^2 + 2044*zeta - 622)*q^861 + 
1/150*(616*zeta^7 + 624*zeta^6 - 4286*zeta^5 - 3744*zeta^4 + 8939*zeta^3 + 
6103*zeta^2 - 5791*zeta - 1590)*q^862 + 1/150*(814*zeta^7 + 182*zeta^6 - 
5588*zeta^5 - 1743*zeta^4 + 11660*zeta^3 + 4668*zeta^2 - 6867*zeta - 1666)*q^863
+ 1/50*(-27*zeta^7 + 23*zeta^6 + 111*zeta^5 - 209*zeta^4 + 65*zeta^3 + 
366*zeta^2 - 485*zeta - 15)*q^864 + 1/150*(-162*zeta^7 + 423*zeta^6 + 972*zeta^5
- 2032*zeta^4 - 1276*zeta^3 + 2554*zeta^2 + 29*zeta - 1380)*q^865 + 
1/75*(205*zeta^7 + 113*zeta^6 - 1322*zeta^5 - 654*zeta^4 + 2351*zeta^3 + 
948*zeta^2 - 819*zeta - 259)*q^866 + 1/150*(-123*zeta^7 + 5*zeta^6 + 866*zeta^5 
+ 2*zeta^4 - 1811*zeta^3 - 152*zeta^2 + 849*zeta + 261)*q^868 + 1/75*(-96*zeta^7
+ 148*zeta^6 + 576*zeta^5 - 694*zeta^4 - 862*zeta^3 + 798*zeta^2 + 285*zeta - 
388)*q^869 + 1/50*(-5*zeta^7 + 27*zeta^5 + 4*zeta^4 - 18*zeta^3 - 22*zeta^2 - 
47*zeta + 10)*q^870 + 1/150*(-806*zeta^7 - 1038*zeta^6 + 5484*zeta^5 + 
5635*zeta^4 - 11300*zeta^3 - 7012*zeta^2 + 6983*zeta + 890)*q^871 + 
1/75*(4*zeta^7 - 12*zeta^6 + 18*zeta^5 + 72*zeta^4 - 186*zeta^3 - 106*zeta^2 + 
266*zeta - 8)*q^872 + 1/75*(167*zeta^7 + 264*zeta^6 - 803*zeta^5 - 1600*zeta^4 +
801*zeta^3 + 2424*zeta^2 + 83*zeta - 308)*q^873 + 1/150*(-51*zeta^7 + 181*zeta^6
+ 601*zeta^5 - 912*zeta^4 - 1712*zeta^3 + 793*zeta^2 + 911*zeta + 532)*q^874 + 
1/150*(-266*zeta^7 - 622*zeta^6 + 1478*zeta^5 + 3347*zeta^4 - 2426*zeta^3 - 
4592*zeta^2 + 1600*zeta + 980)*q^875 + 1/150*(173*zeta^7 - 461*zeta^6 - 
1712*zeta^5 + 2959*zeta^4 + 4466*zeta^3 - 4977*zeta^2 - 2024*zeta + 1497)*q^876 
+ 1/150*(1120*zeta^7 + 344*zeta^6 - 7153*zeta^5 - 1222*zeta^4 + 13243*zeta^3 + 
38*zeta^2 - 7399*zeta + 752)*q^877 + 1/150*(-142*zeta^7 + 262*zeta^6 + 
1074*zeta^5 - 1754*zeta^4 - 2439*zeta^3 + 2904*zeta^2 + 1587*zeta - 706)*q^878 +
1/75*(-248*zeta^7 - 207*zeta^6 + 1575*zeta^5 + 1242*zeta^4 - 2793*zeta^3 - 
2068*zeta^2 + 1313*zeta + 658)*q^879 + 1/75*(418*zeta^7 + 190*zeta^6 - 
2865*zeta^5 - 1334*zeta^4 + 5965*zeta^3 + 2661*zeta^2 - 3552*zeta - 768)*q^880 +
1/150*(258*zeta^7 + 45*zeta^6 - 1540*zeta^5 - 815*zeta^4 + 1561*zeta^3 + 
2556*zeta^2 + 1658*zeta - 651)*q^881 + 1/50*(73*zeta^7 - 8*zeta^6 - 438*zeta^5 +
19*zeta^4 + 774*zeta^3 + 111*zeta^2 - 527*zeta - 207)*q^882 + 1/150*(-667*zeta^7
- 411*zeta^6 + 4258*zeta^5 + 2368*zeta^4 - 7411*zeta^3 - 3348*zeta^2 + 2475*zeta
+ 749)*q^883 + 1/50*(-10*zeta^7 - 46*zeta^6 + 24*zeta^5 + 251*zeta^4 + 
108*zeta^3 - 282*zeta^2 - 153*zeta - 54)*q^885 + 1/150*(-280*zeta^7 - 86*zeta^6 
+ 1680*zeta^5 + 498*zeta^4 - 3098*zeta^3 - 1230*zeta^2 + 2357*zeta + 1336)*q^886
+ 1/150*(182*zeta^7 - 49*zeta^6 - 955*zeta^5 + 253*zeta^4 + 495*zeta^3 + 
46*zeta^2 + 2018*zeta - 217)*q^887 + 1/150*(62*zeta^7 - 84*zeta^6 - 430*zeta^5 +
312*zeta^4 + 910*zeta^3 + 89*zeta^2 - 496*zeta - 216)*q^888 + 1/150*(-442*zeta^7
- 247*zeta^6 + 2410*zeta^5 + 1482*zeta^4 - 2855*zeta^3 - 2604*zeta^2 - 333*zeta 
+ 1204)*q^889 + 1/150*(82*zeta^7 - 86*zeta^6 - 574*zeta^5 + 598*zeta^4 + 
1193*zeta^3 - 1020*zeta^2 - 705*zeta + 262)*q^890 + 1/25*(77*zeta^7 - 12*zeta^6 
- 542*zeta^5 + 91*zeta^4 + 1113*zeta^3 - 140*zeta^2 - 614*zeta - 52)*q^891 + 
1/150*(553*zeta^7 + 1190*zeta^6 - 3163*zeta^5 - 6346*zeta^4 + 5392*zeta^3 + 
8597*zeta^2 - 3447*zeta - 1784)*q^892 + 1/150*(-159*zeta^7 - 123*zeta^6 + 
1098*zeta^5 + 525*zeta^4 - 2274*zeta^3 - 457*zeta^2 + 1234*zeta - 29)*q^893 + 
1/150*(21*zeta^7 - 326*zeta^6 - 606*zeta^5 + 1605*zeta^4 + 2153*zeta^3 - 
1314*zeta^2 - 1134*zeta - 964)*q^894 + 1/150*(-66*zeta^7 + 192*zeta^6 + 
566*zeta^5 - 1270*zeta^4 - 1421*zeta^3 + 2082*zeta^2 + 995*zeta - 442)*q^895 + 
1/150*(-300*zeta^7 - 132*zeta^6 + 1520*zeta^5 + 792*zeta^4 - 1319*zeta^3 - 
1451*zeta^2 - 1005*zeta + 826)*q^896 + 1/150*(552*zeta^7 + 1100*zeta^6 - 
3737*zeta^5 - 5629*zeta^4 + 7645*zeta^3 + 5869*zeta^2 - 4883*zeta - 258)*q^897 +
1/150*(77*zeta^7 + 78*zeta^6 - 570*zeta^5 - 916*zeta^4 + 972*zeta^3 + 
2200*zeta^2 - 205*zeta - 388)*q^898 + 1/150*(111*zeta^7 - 56*zeta^6 - 666*zeta^5
+ 245*zeta^4 + 1130*zeta^3 - 135*zeta^2 - 681*zeta - 121)*q^899 + 
1/150*(-379*zeta^7 - 213*zeta^6 + 2440*zeta^5 + 1233*zeta^4 - 4324*zeta^3 - 
1780*zeta^2 + 1500*zeta + 465)*q^900 + 1/75*(-238*zeta^7 - 204*zeta^6 + 
1462*zeta^5 + 1152*zeta^4 - 2329*zeta^3 - 1522*zeta^2 + 600*zeta + 186)*q^902 + 
1/150*(-134*zeta^7 - 41*zeta^6 + 804*zeta^5 + 236*zeta^4 - 1484*zeta^3 - 
586*zeta^2 + 1133*zeta + 648)*q^903 + 1/150*(83*zeta^7 - 55*zeta^6 - 358*zeta^5 
+ 499*zeta^4 - 117*zeta^3 - 836*zeta^2 + 1361*zeta - 1)*q^904 + 1/150*(48*zeta^7
+ 50*zeta^6 - 330*zeta^5 - 279*zeta^4 + 690*zeta^3 + 371*zeta^2 - 427*zeta - 
58)*q^905 + 1/150*(44*zeta^7 - 164*zeta^5 - 121*zeta^3 + 39*zeta^2 + 541*zeta - 
122)*q^906 + 1/150*(121*zeta^7 - 767*zeta^6 - 1365*zeta^5 + 4982*zeta^4 + 
4084*zeta^3 - 8043*zeta^2 - 3227*zeta + 1652)*q^907 + 1/150*(-322*zeta^7 + 
191*zeta^6 + 2464*zeta^5 - 1073*zeta^4 - 5450*zeta^3 + 1153*zeta^2 + 2980*zeta +
624)*q^908 + 1/150*(-35*zeta^7 + 431*zeta^6 + 638*zeta^5 - 2602*zeta^4 - 
2024*zeta^3 + 4113*zeta^2 + 788*zeta - 1137)*q^909 + 1/150*(78*zeta^7 + 
222*zeta^6 - 398*zeta^5 - 1217*zeta^4 + 574*zeta^3 + 1712*zeta^2 - 420*zeta - 
384)*q^910 + 1/75*(-279*zeta^7 + 115*zeta^6 + 2062*zeta^5 - 684*zeta^4 - 
4427*zeta^3 + 805*zeta^2 + 2426*zeta + 388)*q^911 + 1/150*(280*zeta^7 + 
51*zeta^6 - 1664*zeta^5 - 174*zeta^4 + 2767*zeta^3 + 63*zeta^2 - 1200*zeta + 
256)*q^912 + 1/75*(718*zeta^7 + 411*zeta^6 - 3946*zeta^5 - 2466*zeta^4 + 
4804*zeta^3 + 4317*zeta^2 + 332*zeta - 1954)*q^913 + 1/150*(-58*zeta^7 + 
4*zeta^6 + 391*zeta^5 + 55*zeta^4 - 795*zeta^3 - 326*zeta^2 + 445*zeta + 
150)*q^914 + 1/150*(2*zeta^7 - 4*zeta^6 - 13*zeta^5 + 22*zeta^4 + 12*zeta^3 - 
26*zeta^2 + 26*zeta + 8)*q^915 + 1/150*(-100*zeta^7 + 369*zeta^6 + 600*zeta^5 - 
1770*zeta^4 - 656*zeta^3 + 2308*zeta^2 - 335*zeta - 1426)*q^916 + 
1/150*(92*zeta^7 + 496*zeta^6 - 148*zeta^5 - 2685*zeta^4 - 1394*zeta^3 + 
2982*zeta^2 + 1809*zeta + 544)*q^917 + 1/150*(-519*zeta^7 - 909*zeta^6 + 
2724*zeta^5 + 5005*zeta^4 - 2526*zeta^3 - 5984*zeta^2 - 960*zeta - 283)*q^919 + 
1/150*(-25*zeta^7 + 71*zeta^6 + 150*zeta^5 - 335*zeta^4 - 184*zeta^3 + 
427*zeta^2 - 35*zeta - 279)*q^920 + 1/50*(2*zeta^7 - 17*zeta^6 + 20*zeta^5 + 
179*zeta^4 - 133*zeta^3 - 380*zeta^2 + 210*zeta + 47)*q^921 + 1/150*(490*zeta^7 
+ 640*zeta^6 - 3329*zeta^5 - 3471*zeta^4 + 6845*zeta^3 + 4310*zeta^2 - 4225*zeta
- 542)*q^922 + 1/150*(1006*zeta^7 + 596*zeta^6 - 5581*zeta^5 - 3576*zeta^4 + 
7008*zeta^3 + 6234*zeta^2 + 124*zeta - 2746)*q^923 + 1/75*(-149*zeta^7 + 
129*zeta^6 + 1013*zeta^5 - 908*zeta^4 - 2043*zeta^3 + 1563*zeta^2 + 1174*zeta - 
442)*q^924 + 1/150*(40*zeta^7 + 193*zeta^6 + 4*zeta^5 - 925*zeta^4 - 576*zeta^3 
+ 703*zeta^2 + 288*zeta + 568)*q^925 + 1/150*(224*zeta^7 + 43*zeta^6 - 
1665*zeta^5 + 36*zeta^4 + 3664*zeta^3 - 560*zeta^2 - 1907*zeta + 357)*q^926 + 
1/150*(178*zeta^7 - 286*zeta^6 - 1594*zeta^5 + 1925*zeta^4 + 3946*zeta^3 - 
3384*zeta^2 - 1852*zeta + 1080)*q^927 + 1/150*(-320*zeta^7 + 123*zeta^6 + 
2354*zeta^5 - 739*zeta^4 - 5034*zeta^3 + 881*zeta^2 + 2762*zeta + 424)*q^928 + 
1/150*(203*zeta^7 + 294*zeta^6 - 999*zeta^5 - 1772*zeta^4 + 1075*zeta^3 + 
2670*zeta^2 + 7*zeta - 324)*q^929 + 1/150*(14*zeta^7 - 6*zeta^6 - 49*zeta^5 + 
36*zeta^4 - 53*zeta^3 - 49*zeta^2 + 181*zeta - 24)*q^930 + 1/150*(46*zeta^7 + 
106*zeta^6 - 312*zeta^5 - 533*zeta^4 + 640*zeta^3 + 522*zeta^2 - 417*zeta - 
6)*q^931 + 1/50*(-59*zeta^7 - 17*zeta^6 + 364*zeta^5 + 257*zeta^4 - 411*zeta^3 -
736*zeta^2 - 305*zeta + 169)*q^932 + 1/150*(-8*zeta^7 + 29*zeta^6 + 48*zeta^5 - 
140*zeta^4 - 54*zeta^3 + 182*zeta^2 - 22*zeta - 106)*q^933 + 1/150*(812*zeta^7 +
468*zeta^6 - 5216*zeta^5 - 2703*zeta^4 + 9200*zeta^3 + 3878*zeta^2 - 3153*zeta -
984)*q^934 + 1/50*(73*zeta^7 + 103*zeta^6 - 408*zeta^5 - 570*zeta^4 + 492*zeta^3
+ 698*zeta^2 + 15*zeta + 1)*q^936 + 1/150*(414*zeta^7 - 5*zeta^6 - 2484*zeta^5 -
92*zeta^4 + 4432*zeta^3 + 910*zeta^2 - 3097*zeta - 1348)*q^937 + 
1/150*(-105*zeta^7 - 80*zeta^6 + 742*zeta^5 + 994*zeta^4 - 1158*zeta^3 - 
2472*zeta^2 + 33*zeta + 450)*q^938 + 1/150*(-70*zeta^7 + 226*zeta^6 + 496*zeta^5
- 953*zeta^4 - 1080*zeta^3 + 280*zeta^2 + 547*zeta + 354)*q^939 + 
1/150*(804*zeta^7 + 471*zeta^6 - 4451*zeta^5 - 2826*zeta^4 + 5552*zeta^3 + 
4931*zeta^2 + 156*zeta - 2188)*q^940 + 1/75*(171*zeta^7 - 324*zeta^6 - 
1303*zeta^5 + 2168*zeta^4 + 2977*zeta^3 - 3588*zeta^2 - 1945*zeta + 860)*q^941 +
1/150*(330*zeta^7 - 463*zeta^6 - 2904*zeta^5 + 2409*zeta^4 + 7114*zeta^3 - 
2241*zeta^2 - 3852*zeta - 1424)*q^942 + 1/150*(-518*zeta^7 - 388*zeta^6 + 
3596*zeta^5 + 1631*zeta^4 - 7490*zeta^3 - 1364*zeta^2 + 4066*zeta - 118)*q^943 +
1/150*(85*zeta^7 + 482*zeta^6 - 217*zeta^5 - 2755*zeta^4 - 218*zeta^3 + 
4083*zeta^2 - 151*zeta - 1002)*q^944 + 1/50*(211*zeta^7 + 34*zeta^6 - 
1391*zeta^5 - 79*zeta^4 + 2670*zeta^3 - 116*zeta^2 - 1485*zeta + 52)*q^945 + 
1/75*(-165*zeta^7 - 72*zeta^6 + 949*zeta^5 + 370*zeta^4 - 1486*zeta^3 - 
462*zeta^2 + 568*zeta - 62)*q^946 + 1/150*(-480*zeta^7 - 298*zeta^6 + 
2728*zeta^5 + 1788*zeta^4 - 3695*zeta^3 - 3085*zeta^2 + 395*zeta + 1286)*q^947 +
1/150*(-292*zeta^7 - 294*zeta^6 + 1994*zeta^5 + 1665*zeta^4 - 4130*zeta^3 - 
2299*zeta^2 + 2525*zeta + 390)*q^948 + 1/150*(150*zeta^7 - 254*zeta^6 - 
373*zeta^5 + 2532*zeta^4 - 1462*zeta^3 - 5010*zeta^2 + 4174*zeta + 462)*q^949 + 
1/150*(-119*zeta^7 - 3*zeta^6 + 714*zeta^5 + 43*zeta^4 - 1284*zeta^3 - 
287*zeta^2 + 921*zeta + 439)*q^950 + 1/150*(1042*zeta^7 + 768*zeta^6 - 
6526*zeta^5 - 4367*zeta^4 + 10885*zeta^3 + 5936*zeta^2 - 3225*zeta - 1018)*q^951
+ 1/150*(87*zeta^7 + 251*zeta^6 - 358*zeta^5 - 1371*zeta^4 - 119*zeta^3 + 
1574*zeta^2 + 636*zeta + 203)*q^953 + 1/25*(zeta^7 - 18*zeta^6 - 6*zeta^5 + 
87*zeta^4 - 10*zeta^3 - 121*zeta^2 + 47*zeta + 85)*q^954 + 1/150*(22*zeta^7 - 
13*zeta^6 - 115*zeta^5 + 81*zeta^4 + 51*zeta^3 - 82*zeta^2 + 274*zeta - 5)*q^955
+ 1/150*(804*zeta^7 + 564*zeta^6 - 5503*zeta^5 - 3467*zeta^4 + 11435*zeta^3 + 
5653*zeta^2 - 6893*zeta - 1294)*q^956 + 1/25*(68*zeta^7 + 57*zeta^6 - 433*zeta^5
- 342*zeta^4 + 772*zeta^3 + 569*zeta^2 - 368*zeta - 180)*q^957 + 
1/75*(-484*zeta^7 + 18*zeta^6 + 2964*zeta^5 - 380*zeta^4 - 5174*zeta^3 + 
978*zeta^2 + 2440*zeta - 648)*q^958 + 1/150*(-69*zeta^7 + 128*zeta^6 + 
651*zeta^5 - 657*zeta^4 - 1664*zeta^3 + 594*zeta^2 + 897*zeta + 388)*q^959 + 
1/150*(151*zeta^7 + 341*zeta^6 - 844*zeta^5 - 1831*zeta^4 + 1390*zeta^3 + 
2501*zeta^2 - 900*zeta - 521)*q^960 + 1/150*(-198*zeta^7 - 813*zeta^6 + 
801*zeta^5 + 4566*zeta^4 - 660*zeta^3 - 6634*zeta^2 + 811*zeta + 1597)*q^961 + 
1/150*(216*zeta^7 + 362*zeta^6 - 967*zeta^5 - 1692*zeta^4 + 893*zeta^3 + 
1208*zeta^2 - 569*zeta + 992)*q^962 + 1/150*(727*zeta^7 - 552*zeta^6 - 
4879*zeta^5 + 3934*zeta^4 + 9684*zeta^3 - 6834*zeta^2 - 5462*zeta + 2006)*q^963 
+ 1/150*(-532*zeta^7 - 207*zeta^6 + 2607*zeta^5 + 1242*zeta^4 - 1866*zeta^3 - 
2333*zeta^2 - 2378*zeta + 1472)*q^964 + 1/150*(-1274*zeta^7 - 616*zeta^6 + 
8736*zeta^5 + 4228*zeta^4 - 18200*zeta^3 - 8183*zeta^2 + 10864*zeta + 
2296)*q^965 + 1/150*(152*zeta^7 + 92*zeta^6 - 1033*zeta^5 - 1190*zeta^4 + 
1488*zeta^3 + 3046*zeta^2 + 212*zeta - 580)*q^966 + 1/150*(184*zeta^7 - 
54*zeta^6 - 1104*zeta^5 + 222*zeta^4 + 1922*zeta^3 + 38*zeta^2 - 1261*zeta - 
416)*q^967 + 1/150*(-73*zeta^7 - 285*zeta^6 + 226*zeta^5 + 1546*zeta^4 + 
509*zeta^3 - 1740*zeta^2 - 909*zeta - 265)*q^968 + 1/75*(-23*zeta^7 - 61*zeta^6 
+ 100*zeta^5 + 332*zeta^4 + 2*zeta^3 - 382*zeta^2 - 147*zeta - 39)*q^970 + 
1/150*(119*zeta^7 + 64*zeta^6 - 714*zeta^5 - 343*zeta^4 + 1350*zeta^3 + 
709*zeta^2 - 1091*zeta - 713)*q^971 + 1/50*(-89*zeta^7 + 11*zeta^6 + 483*zeta^5 
- zeta^4 - 319*zeta^3 - 274*zeta^2 - 871*zeta + 145)*q^972 + 1/150*(-542*zeta^7 
- 332*zeta^6 + 3713*zeta^5 + 2117*zeta^4 - 7725*zeta^3 - 3674*zeta^2 + 4639*zeta
+ 914)*q^973 + 1/150*(642*zeta^7 + 571*zeta^6 - 4190*zeta^5 - 3426*zeta^4 + 
7833*zeta^3 + 5666*zeta^2 - 4157*zeta - 1696)*q^974 + 1/150*(-701*zeta^7 - 
231*zeta^6 + 4089*zeta^5 + 1094*zeta^4 - 6574*zeta^3 - 1203*zeta^2 + 2663*zeta -
420)*q^975 + 1/150*(32*zeta^7 - 35*zeta^6 - 271*zeta^5 + 181*zeta^4 + 649*zeta^3
- 163*zeta^2 - 357*zeta - 120)*q^976 + 1/150*(-862*zeta^7 - 1577*zeta^6 + 
5167*zeta^5 + 8245*zeta^4 - 9310*zeta^3 - 10848*zeta^2 + 5671*zeta + 2091)*q^977
+ 1/50*(-101*zeta^7 - 46*zeta^6 + 725*zeta^5 + 143*zeta^4 - 1550*zeta^3 + 
5*zeta^2 + 819*zeta - 98)*q^978 + 1/75*(-455*zeta^7 - 221*zeta^6 + 2792*zeta^5 +
896*zeta^4 - 4921*zeta^3 - 343*zeta^2 + 2768*zeta - 540)*q^979 + 
1/150*(-111*zeta^7 + 297*zeta^6 + 919*zeta^5 - 1964*zeta^4 - 2257*zeta^3 + 
3219*zeta^2 + 1564*zeta - 722)*q^980 + 1/25*(-16*zeta^7 - 26*zeta^6 + 142*zeta^5
+ 156*zeta^4 - 396*zeta^3 - 246*zeta^2 + 356*zeta + 40)*q^981 + 
1/150*(-680*zeta^7 - 896*zeta^6 + 4631*zeta^5 + 4841*zeta^4 - 9555*zeta^3 - 
5945*zeta^2 + 5923*zeta + 722)*q^982 + 1/150*(-272*zeta^7 + 67*zeta^6 + 
1429*zeta^5 - 331*zeta^4 - 753*zeta^3 - 154*zeta^2 - 2984*zeta + 343)*q^983 + 
1/50*(21*zeta^7 + 28*zeta^6 - 126*zeta^5 - 141*zeta^4 + 258*zeta^3 + 239*zeta^2 
- 245*zeta - 211)*q^984 + 1/150*(-69*zeta^7 - 381*zeta^6 + 102*zeta^5 + 
2057*zeta^4 + 1095*zeta^3 - 2278*zeta^2 - 1416*zeta - 401)*q^985 + 
1/150*(436*zeta^7 + 444*zeta^6 - 2608*zeta^5 - 2487*zeta^4 + 3880*zeta^3 + 
3190*zeta^2 - 753*zeta - 240)*q^987 + 1/150*(-106*zeta^7 + 37*zeta^6 + 
636*zeta^5 - 152*zeta^4 - 1096*zeta^3 + 14*zeta^2 + 693*zeta + 184)*q^988 + 
1/150*(127*zeta^7 + 69*zeta^6 - 834*zeta^5 - 881*zeta^4 + 1119*zeta^3 + 
2276*zeta^2 + 325*zeta - 461)*q^989 + 1/25*(-36*zeta^7 - 20*zeta^6 + 247*zeta^5 
+ 131*zeta^4 - 515*zeta^3 - 237*zeta^2 + 309*zeta + 62)*q^990 + 
1/150*(-862*zeta^7 - 363*zeta^6 + 4298*zeta^5 + 2178*zeta^4 - 3416*zeta^3 - 
4033*zeta^2 - 3368*zeta + 2394)*q^991 + 1/150*(380*zeta^7 - 61*zeta^6 - 
2364*zeta^5 + 598*zeta^4 + 4229*zeta^3 - 1245*zeta^2 - 2074*zeta + 604)*q^992 + 
1/75*(-275*zeta^7 + 35*zeta^6 + 1925*zeta^5 - 286*zeta^4 - 3932*zeta^3 + 
467*zeta^2 + 2171*zeta + 164)*q^993 + 1/150*(85*zeta^7 + 203*zeta^6 - 470*zeta^5
- 1094*zeta^4 + 768*zeta^3 + 1505*zeta^2 - 512*zeta - 325)*q^994 + 
1/150*(577*zeta^7 + 1496*zeta^6 - 3089*zeta^5 - 8126*zeta^4 + 4824*zeta^3 + 
11301*zeta^2 - 3345*zeta - 2498)*q^995 + 1/150*(721*zeta^7 + 49*zeta^6 - 
4846*zeta^5 + 62*zeta^4 + 9497*zeta^3 - 673*zeta^2 - 5266*zeta - 12)*q^996 + 
1/150*(-405*zeta^7 - 586*zeta^6 + 1989*zeta^5 + 3534*zeta^4 - 2132*zeta^3 - 
5328*zeta^2 - 20*zeta + 634)*q^997 + 1/150*(-414*zeta^7 - 380*zeta^6 + 
2729*zeta^5 + 2280*zeta^4 - 5194*zeta^3 - 3764*zeta^2 + 2854*zeta + 1102)*q^998 
+ 1/50*(190*zeta^7 + 72*zeta^6 - 1303*zeta^5 - 541*zeta^4 + 2715*zeta^3 + 
1170*zeta^2 - 1611*zeta - 362)*q^999 + 1/150*(-86*zeta^7 + 38*zeta^6 + 
405*zeta^5 - 316*zeta^4 - 34*zeta^3 + 434*zeta^2 - 1198*zeta + 58)*q^1000 + 
1/75*(49*zeta^7 - 307*zeta^6 - 294*zeta^5 + 1483*zeta^4 + 180*zeta^3 - 
1999*zeta^2 + 533*zeta + 1295)*q^1001 + 1/150*(273*zeta^7 + 153*zeta^6 - 
1758*zeta^5 - 886*zeta^4 + 3117*zeta^3 + 1280*zeta^2 - 1083*zeta - 335)*q^1002 +
1/150*(432*zeta^7 + 942*zeta^6 - 2082*zeta^5 - 5161*zeta^4 + 1083*zeta^3 + 
6044*zeta^2 + 1707*zeta + 508)*q^1004 + 1/150*(-2*zeta^7 - 62*zeta^6 + 12*zeta^5
+ 296*zeta^4 - 98*zeta^3 - 424*zeta^2 + 221*zeta + 342)*q^1005 + 
1/150*(109*zeta^7 + 153*zeta^6 - 895*zeta^5 - 1771*zeta^4 + 1771*zeta^3 + 
4154*zeta^2 - 813*zeta - 677)*q^1006 + 1/75*(-46*zeta^7 - 30*zeta^6 + 314*zeta^5
+ 189*zeta^4 - 650*zeta^3 - 322*zeta^2 + 389*zeta + 78)*q^1007 + 
1/150*(-94*zeta^7 + 51*zeta^6 + 174*zeta^5 - 306*zeta^4 + 1203*zeta^3 + 
364*zeta^2 - 2351*zeta + 284)*q^1008 + 1/150*(263*zeta^7 + 38*zeta^6 - 
1575*zeta^5 - 98*zeta^4 + 2648*zeta^3 - 48*zeta^2 - 1168*zeta + 250)*q^1009 + 
1/150*(-175*zeta^7 - 39*zeta^6 + 1133*zeta^5 + 112*zeta^4 - 2128*zeta^3 + 
77*zeta^2 + 1179*zeta - 92)*q^1010 + 1/150*(147*zeta^7 + 444*zeta^6 - 735*zeta^5
- 2442*zeta^4 + 1032*zeta^3 + 3455*zeta^2 - 791*zeta - 794)*q^1011 + 
1/75*(-240*zeta^7 - 297*zeta^6 + 1563*zeta^5 + 1452*zeta^4 - 3072*zeta^3 - 
1712*zeta^2 + 1745*zeta + 233)*q^1012 + 1/150*(-1631*zeta^7 + 7*zeta^6 + 
11129*zeta^5 - 718*zeta^4 - 22156*zeta^3 + 1991*zeta^2 + 12263*zeta + 
372)*q^1013 + 1/150*(-445*zeta^7 - 177*zeta^6 + 2569*zeta^5 + 890*zeta^4 - 
4056*zeta^3 - 1077*zeta^2 + 1583*zeta - 212)*q^1014 + 1/150*(-218*zeta^7 - 
132*zeta^6 + 1221*zeta^5 + 792*zeta^4 - 1581*zeta^3 - 1375*zeta^2 + 53*zeta + 
592)*q^1015 + 1/150*(320*zeta^7 + 128*zeta^6 - 2199*zeta^5 - 937*zeta^4 + 
4595*zeta^3 + 1965*zeta^2 - 2739*zeta - 594)*q^1016 + 1/150*(109*zeta^7 - 
112*zeta^6 - 402*zeta^5 + 1070*zeta^4 - 466*zeta^3 - 1984*zeta^2 + 2219*zeta + 
118)*q^1017 + 1/150*(-295*zeta^7 + 69*zeta^6 + 1770*zeta^5 - 251*zeta^4 - 
3082*zeta^3 - 201*zeta^2 + 2006*zeta + 635)*q^1018 + 1/50*(-112*zeta^7 - 
186*zeta^6 + 598*zeta^5 + 1024*zeta^4 - 601*zeta^3 - 1230*zeta^2 - 162*zeta - 
40)*q^1019 + 1/150*(126*zeta^7 + 548*zeta^6 - 334*zeta^5 - 2971*zeta^4 - 
1187*zeta^3 + 3328*zeta^2 + 1839*zeta + 546)*q^1021 + 1/150*(-269*zeta^7 + 
85*zeta^6 + 1614*zeta^5 - 343*zeta^4 - 2792*zeta^3 - 25*zeta^2 + 1787*zeta + 
513)*q^1022 + 1/75*(10*zeta^7 + 35*zeta^6 - 126*zeta^5 - 397*zeta^4 + 359*zeta^3
+ 896*zeta^2 - 334*zeta - 125)*q^1023 + 1/150*(-102*zeta^7 + 6*zeta^6 + 
697*zeta^5 + 92*zeta^4 - 1445*zeta^3 - 529*zeta^2 + 830*zeta + 244)*q^1024 + 
1/150*(-314*zeta^7 - 324*zeta^6 + 2185*zeta^5 + 1944*zeta^4 - 4555*zeta^3 - 
3173*zeta^2 + 2939*zeta + 828)*q^1025 + 1/50*(13*zeta^7 + 7*zeta^6 - 73*zeta^5 -
38*zeta^4 + 110*zeta^3 + 51*zeta^2 - 39*zeta + 4)*q^1026 + 1/150*(-611*zeta^7 - 
239*zeta^6 + 3836*zeta^5 + 926*zeta^4 - 6961*zeta^3 - 253*zeta^2 + 3908*zeta - 
540)*q^1027 + 1/150*(-46*zeta^7 - 401*zeta^6 + zeta^5 + 2320*zeta^4 + 560*zeta^3
- 3494*zeta^2 - 57*zeta + 893)*q^1028 + 1/150*(-176*zeta^7 + 440*zeta^6 + 
1718*zeta^5 - 2839*zeta^4 - 4454*zeta^3 + 4798*zeta^2 + 2032*zeta - 1450)*q^1029
+ 1/150*(128*zeta^7 + 31*zeta^6 - 811*zeta^5 - 77*zeta^4 + 1477*zeta^3 - 
109*zeta^2 - 801*zeta + 120)*q^1030 + 1/150*(549*zeta^7 + 45*zeta^6 - 
3317*zeta^5 + 16*zeta^4 + 5657*zeta^3 - 453*zeta^2 - 2558*zeta + 586)*q^1031 + 
1/150*(62*zeta^7 + 93*zeta^6 - 516*zeta^5 - 558*zeta^4 + 1350*zeta^3 + 
889*zeta^2 - 1142*zeta - 166)*q^1032 + 1/150*(-1206*zeta^7 - 976*zeta^6 + 
8253*zeta^5 + 5787*zeta^4 - 17145*zeta^3 - 8812*zeta^2 + 10397*zeta + 
1814)*q^1033 + 1/75*(94*zeta^7 + 11*zeta^6 - 549*zeta^5 - 235*zeta^4 + 
515*zeta^3 + 794*zeta^2 + 674*zeta - 221)*q^1034 + 1/150*(-27*zeta^7 + 
124*zeta^6 + 162*zeta^5 - 595*zeta^4 - 148*zeta^3 + 789*zeta^2 - 168*zeta - 
511)*q^1035 + 1/150*(152*zeta^7 - 166*zeta^6 - 1230*zeta^5 + 856*zeta^4 + 
3117*zeta^3 - 730*zeta^2 - 1830*zeta - 560)*q^1036 + O(q^1037)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 5);
              X_17A6 := Curve(P_Q, [ PolynomialRing(RationalField(), 6) |
x[1]^2 - 261/68*x[2]^2 - 13/2*x[2]*x[3] - 315/136*x[2]*x[4] - 1125/136*x[2]*x[5]
+ 15/68*x[2]*x[6] + 4225/2448*x[3]^2 + 689/272*x[3]*x[4] - 39/34*x[3]*x[5] + 
481/136*x[3]*x[6] + 23/68*x[4]^2 + 1661/136*x[4]*x[5] + 1247/102*x[4]*x[6] + 
6177/272*x[5]^2 - 2087/136*x[5]*x[6] - 416/51*x[6]^2,
x[1]*x[2] - 54/17*x[2]^2 - 637/204*x[2]*x[3] - 21/17*x[2]*x[4] - 
239/68*x[2]*x[5] - 253/102*x[2]*x[6] + 2197/918*x[3]^2 + 611/612*x[3]*x[4] - 
299/72*x[3]*x[5] + 1937/918*x[3]*x[6] + 149/408*x[4]^2 + 1409/204*x[4]*x[5] + 
7391/612*x[4]*x[6] + 767/51*x[5]^2 - 1889/612*x[5]*x[6] - 3307/459*x[6]^2,
x[1]*x[3] - 135/221*x[2]^2 - 18/17*x[2]*x[3] - 27/221*x[2]*x[4] - 
279/221*x[2]*x[5] - 291/221*x[2]*x[6] + 143/204*x[3]^2 + 31/68*x[3]*x[4] - 
5/4*x[3]*x[5] + 41/51*x[3]*x[6] + 87/442*x[4]^2 + 2061/884*x[4]*x[5] + 
471/221*x[4]*x[6] + 1497/884*x[5]^2 - 2351/442*x[5]*x[6] - 623/663*x[6]^2,
x[1]*x[4] - 54/85*x[2]^2 - 2067/425*x[2]*x[3] - 33/17*x[2]*x[4] - 
5679/850*x[2]*x[5] + 39/5*x[2]*x[6] - 2704/1275*x[3]^2 + 8359/5100*x[3]*x[4] + 
1781/340*x[3]*x[5] + 7033/1275*x[3]*x[6] - 28/85*x[4]^2 + 2733/425*x[4]*x[5] + 
11/17*x[4]*x[6] + 33027/1700*x[5]^2 - 9986/425*x[5]*x[6] + 376/255*x[6]^2,
x[1]*x[5] - 9/17*x[2]^2 - 104/85*x[2]*x[3] - 13/34*x[2]*x[4] - 69/85*x[2]*x[5] -
11/17*x[2]*x[6] + 169/510*x[3]^2 + 1469/3060*x[3]*x[4] - 13/34*x[3]*x[5] + 
403/765*x[3]*x[6] + 121/60*x[4]*x[5] + 49/18*x[4]*x[6] + 31/10*x[5]^2 - 
91/30*x[5]*x[6] - 14/9*x[6]^2,
x[1]*x[6] - 27/85*x[2]^2 - 546/425*x[2]*x[3] - 3/17*x[2]*x[4] - 
576/425*x[2]*x[5] + 9/85*x[2]*x[6] + 507/850*x[3]^2 + 871/2550*x[3]*x[4] + 
91/680*x[3]*x[5] + 1079/1275*x[3]*x[6] + 6/85*x[4]^2 + 2891/1700*x[4]*x[5] + 
101/51*x[4]*x[6] + 6027/3400*x[5]^2 - 2411/850*x[5]*x[6] - 1169/510*x[6]^2,
x[1]^3 - 466834737/32447968*x[2]*x[4]*x[5] - 16925785/32447968*x[2]*x[4]*x[6] + 
6101037/4055996*x[2]*x[5]^2 + 111946623/4055996*x[2]*x[5]*x[6] - 
163127695/8111992*x[2]*x[6]^2 - 1752030605/194687808*x[3]^3 - 
163821671/194687808*x[3]^2*x[4] - 699368137/18541696*x[3]^2*x[5] + 
186827641/27812544*x[3]^2*x[6] + 38621843/48671952*x[3]*x[4]^2 + 
25655461/3041997*x[3]*x[4]*x[5] - 253129903/8589168*x[3]*x[4]*x[6] + 
284986559/8111992*x[3]*x[5]^2 - 28282189/27812544*x[3]*x[5]*x[6] + 
9407645897/292031712*x[3]*x[6]^2 + 41479511/194687808*x[4]^3 - 
271362025/64895936*x[4]^2*x[5] - 482768029/48671952*x[4]^2*x[6] + 
30426701/32447968*x[4]*x[5]^2 - 3985875385/48671952*x[4]*x[5]*x[6] + 
17061436223/292031712*x[4]*x[6]^2 + 18161519029/129791872*x[5]^3 - 
10729268449/64895936*x[5]^2*x[6] + 6408204415/97343904*x[5]*x[6]^2 - 
14734803823/438047568*x[6]^3,
x[1]^2*x[2] - 592412179/64895936*x[2]*x[4]*x[5] - 
692251565/292031712*x[2]*x[4]*x[6] + 3641081/12167988*x[2]*x[5]^2 + 
7554133001/292031712*x[2]*x[5]*x[6] - 4057295765/219023784*x[2]*x[6]^2 - 
3865105205/1314142704*x[3]^3 - 1326097877/1314142704*x[3]^2*x[4] - 
6000794033/250312896*x[3]^2*x[5] + 1292705167/187734672*x[3]^2*x[6] + 
287554709/328535676*x[3]*x[4]^2 + 8232767257/1752190272*x[3]*x[4]*x[5] - 
3906632197/292031712*x[3]*x[4]*x[6] + 31382545259/1752190272*x[3]*x[5]^2 + 
1181780327/375469344*x[3]*x[5]*x[6] + 18332363881/1971214056*x[3]*x[6]^2 + 
745667627/5256570816*x[4]^3 - 3418607915/1752190272*x[4]^2*x[5] - 
13510180231/2628285408*x[4]^2*x[6] + 143836633/64895936*x[4]*x[5]^2 - 
43952469515/876095136*x[4]*x[5]*x[6] + 27525310003/657071352*x[4]*x[6]^2 + 
92451312223/1168126848*x[5]^3 - 7347130201/64895936*x[5]^2*x[6] + 
59116197185/876095136*x[5]*x[6]^2 - 51236945831/1971214056*x[6]^3,
x[1]^2*x[3] + 4948353/8111992*x[2]*x[4]*x[5] - 91694615/52727948*x[2]*x[4]*x[6] 
+ 230902305/105455896*x[2]*x[5]^2 - 509806939/52727948*x[2]*x[5]*x[6] + 
402942845/79091922*x[2]*x[6]^2 - 237581383/146015856*x[3]^3 + 
9007115/36503964*x[3]^2*x[4] - 2443727/3476568*x[3]^2*x[5] - 
15417805/5214852*x[3]^2*x[6] + 28298765/73007928*x[3]*x[4]^2 + 
19754621/48671952*x[3]*x[4]*x[5] - 21568910/3041997*x[3]*x[4]*x[6] - 
121624787/48671952*x[3]*x[5]^2 + 617753/613512*x[3]*x[5]*x[6] + 
849395005/109511892*x[3]*x[6]^2 + 21577993/1898206128*x[4]^3 + 
181728727/316367688*x[4]^2*x[5] - 873314999/949103064*x[4]^2*x[6] - 
388842813/210911792*x[4]*x[5]^2 - 939108007/79091922*x[4]*x[5]*x[6] + 
293796736/118637883*x[4]*x[6]^2 + 44088407/12406576*x[5]^3 - 
44180454/13181987*x[5]^2*x[6] - 531296663/79091922*x[5]*x[6]^2 + 
476959061/711827298*x[6]^3,
x[1]^2*x[4] - 212562972/25349975*x[2]*x[4]*x[5] + 
77776897/20279980*x[2]*x[4]*x[6] - 1015925667/202799800*x[2]*x[5]^2 + 
1324723433/50699950*x[2]*x[5]*x[6] - 228182918/15209985*x[2]*x[6]^2 - 
822000959/91259910*x[3]^3 - 1308080111/3650396400*x[3]^2*x[4] - 
209032382/10864275*x[3]^2*x[5] + 151606351/32592825*x[3]^2*x[6] - 
228878663/182519820*x[3]*x[4]^2 + 6214068367/1216798800*x[3]*x[4]*x[5] - 
1754053561/121679880*x[3]*x[4]*x[6] + 50338618889/1216798800*x[3]*x[5]^2 - 
1667532269/130371300*x[3]*x[5]*x[6] + 745503980/27377973*x[3]*x[6]^2 + 
41186651/912599100*x[4]^3 - 6127387727/1216798800*x[4]^2*x[5] - 
13831237027/1825198200*x[4]^2*x[6] + 372963049/405599600*x[4]*x[5]^2 - 
8490643043/304199700*x[4]*x[5]*x[6] + 2176825841/76049925*x[4]*x[6]^2 + 
2310592742/25349975*x[5]^3 - 15472122009/202799800*x[5]^2*x[6] + 
43691639/17894100*x[5]*x[6]^2 - 8918579941/684449325*x[6]^3,
x[1]^2*x[5] - 9043557/4771760*x[2]*x[4]*x[5] + 5667793/8111992*x[2]*x[4]*x[6] - 
8534928/5069995*x[2]*x[5]^2 + 29794538/5069995*x[2]*x[5]*x[6] - 
13221753/4055996*x[2]*x[6]^2 - 47650733/36503964*x[3]^3 + 
19938113/121679880*x[3]^2*x[4] - 196138189/34765680*x[3]^2*x[5] - 
2491567/26074260*x[3]^2*x[6] + 3488615/48671952*x[3]*x[4]^2 + 
603333133/486719520*x[3]*x[4]*x[5] - 573731743/146015856*x[3]*x[4]*x[6] + 
602976439/121679880*x[3]*x[5]^2 - 186204187/104297040*x[3]*x[5]*x[6] + 
122184569/36503964*x[3]*x[6]^2 + 2551951/91259910*x[4]^3 - 
38366243/81119920*x[4]^2*x[5] - 58797959/60839940*x[4]^2*x[6] + 
6433043/9543520*x[4]*x[5]^2 - 462659293/30419970*x[4]*x[5]*x[6] + 
1873937893/365039640*x[4]*x[6]^2 + 3364758923/162239840*x[5]^3 - 
345564718/15209985*x[5]^2*x[6] + 3697962881/365039640*x[5]*x[6]^2 - 
262935613/91259910*x[6]^3,
x[1]^2*x[6] - 48611151/405599600*x[2]*x[4]*x[5] - 
5051853/40559960*x[2]*x[4]*x[6] + 6869979/202799800*x[2]*x[5]^2 - 
625459509/202799800*x[2]*x[5]*x[6] + 44164513/20279980*x[2]*x[6]^2 - 
62194873/60839940*x[3]^3 + 79499797/608399400*x[3]^2*x[4] - 
4670822/3621425*x[3]^2*x[5] - 182694239/173828400*x[3]^2*x[6] + 
24159083/243359760*x[3]*x[4]^2 + 139151389/811199200*x[3]*x[4]*x[5] - 
797817761/243359760*x[3]*x[4]*x[6] + 822062813/811199200*x[3]*x[5]^2 + 
59300293/57942800*x[3]*x[5]*x[6] + 241939555/73007928*x[3]*x[6]^2 + 
1658089/202799800*x[4]^3 + 25271933/405599600*x[4]^2*x[5] - 
66049373/152099850*x[4]^2*x[6] - 592308651/811199200*x[4]*x[5]^2 - 
2989202787/405599600*x[4]*x[5]*x[6] - 40097143/304199700*x[4]*x[6]^2 + 
166076133/23858800*x[5]^3 - 2342193559/405599600*x[5]^2*x[6] - 
326038031/304199700*x[5]*x[6]^2 - 64795637/76049925*x[6]^3,
x[1]*x[2]^2 - 302641421/25767504*x[2]*x[4]*x[5] - 
7886135/19325628*x[2]*x[4]*x[6] + 20267333/4294584*x[2]*x[5]^2 + 
432830761/12883752*x[2]*x[5]*x[6] - 277861165/9662814*x[2]*x[6]^2 + 
253505239/38651256*x[3]^3 - 63194339/38651256*x[3]^2*x[4] - 
573109927/22086432*x[3]^2*x[5] + 302435809/33129648*x[3]^2*x[6] + 
51991615/19325628*x[3]*x[4]^2 + 455407667/115953768*x[3]*x[4]*x[5] - 
74322625/86965326*x[3]*x[4]*x[6] - 999807341/77302512*x[3]*x[5]^2 + 
666323411/33129648*x[3]*x[5]*x[6] - 9364920955/347861304*x[3]*x[6]^2 + 
9370099/25767504*x[4]^3 + 120932785/77302512*x[4]^2*x[5] - 
504220723/115953768*x[4]^2*x[6] + 346260871/77302512*x[4]*x[5]^2 - 
1657146755/28988442*x[4]*x[5]*x[6] + 17045395313/347861304*x[4]*x[6]^2 + 
1590423043/25767504*x[5]^3 - 1651569347/12883752*x[5]^2*x[6] + 
229794365/1610469*x[5]*x[6]^2 - 6759762071/173930652*x[6]^3,
x[1]*x[2]*x[3] - 12822661/37219728*x[2]*x[4]*x[5] - 
60006845/55829592*x[2]*x[4]*x[6] + 346683/3101644*x[2]*x[5]^2 - 
20135253/6203288*x[2]*x[5]*x[6] + 9076460/2326233*x[2]*x[6]^2 + 
2218463/6441876*x[3]^3 - 291343/6441876*x[3]^2*x[4] - 
3352427/1227024*x[3]^2*x[5] - 1573247/920268*x[3]^2*x[6] + 
3045583/6441876*x[3]*x[4]^2 + 565001/6441876*x[3]*x[4]*x[5] - 
32871631/19325628*x[3]*x[4]*x[6] - 7273709/2863056*x[3]*x[5]^2 + 
218333/51126*x[3]*x[5]*x[6] + 208268/1610469*x[3]*x[6]^2 + 
10144387/334977552*x[4]^3 + 83419897/111659184*x[4]^2*x[5] - 
50339071/167488776*x[4]^2*x[6] - 3294337/27914796*x[4]*x[5]^2 - 
1981541827/167488776*x[4]*x[5]*x[6] + 21016493/251233164*x[4]*x[6]^2 + 
135957091/24813152*x[5]^3 - 269627633/37219728*x[5]^2*x[6] + 
31550923/4294584*x[5]*x[6]^2 + 1203317/4652466*x[6]^3,
x[1]*x[2]*x[4] + 52175867/12167988*x[2]*x[4]*x[5] - 
56731555/36503964*x[2]*x[4]*x[6] + 49640431/50699950*x[2]*x[5]^2 - 
628568939/30419970*x[2]*x[5]*x[6] + 122520032/9125991*x[2]*x[6]^2 - 
7352816341/456299550*x[3]^3 + 367512977/608399400*x[3]^2*x[4] + 
302277963/57942800*x[3]^2*x[5] - 72394361/260742600*x[3]^2*x[6] - 
833390857/228149775*x[3]*x[4]^2 + 174505825/219023784*x[3]*x[4]*x[5] - 
74227038821/4106695950*x[3]*x[4]*x[6] + 48591392993/912599100*x[3]*x[5]^2 - 
5138223467/156445560*x[3]*x[5]*x[6] + 513455403617/8213391900*x[3]*x[6]^2 - 
772635607/1825198200*x[4]^3 - 1703735032/228149775*x[4]^2*x[5] - 
2681989691/1368898650*x[4]^2*x[6] - 8394483743/1825198200*x[4]*x[5]^2 + 
88432774291/2737797300*x[4]*x[5]*x[6] - 5383341913/8213391900*x[4]*x[6]^2 + 
30732976307/1216798800*x[5]^3 + 25781223977/608399400*x[5]^2*x[6] - 
42125515919/304199700*x[5]*x[6]^2 + 61649375131/4106695950*x[6]^3,
x[1]*x[2]*x[5] - 27601955/24335976*x[2]*x[4]*x[5] + 
25205125/36503964*x[2]*x[4]*x[6] - 50577943/60839940*x[2]*x[5]^2 + 
58677301/18251982*x[2]*x[5]*x[6] - 28085755/54755946*x[2]*x[6]^2 - 
422948864/410669595*x[3]^3 + 8031049/45629955*x[3]^2*x[4] - 
230068657/78222780*x[3]^2*x[5] - 81930017/117334170*x[3]^2*x[6] - 
9924421/1095118920*x[3]*x[4]^2 + 226327907/438047568*x[3]*x[4]*x[5] - 
8903314823/3285356760*x[3]*x[4]*x[6] + 1472000543/547559460*x[3]*x[5]^2 - 
8820695/93867336*x[3]*x[5]*x[6] + 7976218861/2464017570*x[3]*x[6]^2 + 
68686109/3285356760*x[4]^3 - 198623543/547559460*x[4]^2*x[5] - 
64421641/96628140*x[4]^2*x[6] - 22145729/243359760*x[4]*x[5]^2 - 
4080575993/547559460*x[4]*x[5]*x[6] + 1626407509/1642678380*x[4]*x[6]^2 + 
10821059567/730079280*x[5]^3 - 2126022649/182519820*x[5]^2*x[6] + 
63996799/32209380*x[5]*x[6]^2 + 56989913/1232008785*x[6]^3,
x[1]*x[2]*x[6] + 3236525/16223984*x[2]*x[4]*x[5] - 947715/8111992*x[2]*x[4]*x[6]
- 136626563/202799800*x[2]*x[5]^2 - 93079129/60839940*x[2]*x[5]*x[6] + 
123691469/36503964*x[2]*x[6]^2 - 1312085749/1368898650*x[3]^3 + 
421999253/1825198200*x[3]^2*x[4] - 240586879/521485200*x[3]^2*x[5] - 
1267912529/782227800*x[3]^2*x[6] - 24883027/1216798800*x[3]*x[4]^2 + 
9154561/292031712*x[3]*x[4]*x[5] - 9302731451/3650396400*x[3]*x[4]*x[6] + 
5416782761/3650396400*x[3]*x[5]^2 - 220434487/312891120*x[3]*x[5]*x[6] + 
9248315024/2053347975*x[3]*x[6]^2 - 71493371/10951189200*x[4]^3 - 
154231481/3650396400*x[4]^2*x[5] - 840299857/5475594600*x[4]^2*x[6] - 
1503057337/2433597600*x[4]*x[5]^2 - 1450956013/304199700*x[4]*x[5]*x[6] - 
482902663/322093800*x[4]*x[6]^2 + 10963541557/2433597600*x[5]^3 + 
1191991163/304199700*x[5]^2*x[6] - 12444713207/1825198200*x[5]*x[6]^2 + 
4631295764/2053347975*x[6]^3,
x[1]*x[3]^2 - 12047307/40321372*x[2]*x[4]*x[5] + 3975760/10080343*x[2]*x[4]*x[6]
+ 4300677/20160686*x[2]*x[5]^2 + 8777676/10080343*x[2]*x[5]*x[6] - 
22435495/10080343*x[2]*x[6]^2 - 53521/715764*x[3]^3 + 145007/715764*x[3]^2*x[4] 
- 101973/68168*x[3]^2*x[5] + 26471/34084*x[3]^2*x[6] + 
1880857/9304932*x[3]*x[4]^2 + 12082151/18609864*x[3]*x[4]*x[5] - 
41868539/27914796*x[3]*x[4]*x[6] - 900013/775411*x[3]*x[5]^2 - 
1650737/332319*x[3]*x[5]*x[6] + 10217797/13957398*x[3]*x[6]^2 + 
392047/30241029*x[4]^3 + 7114701/40321372*x[4]^2*x[5] + 
2330477/20160686*x[4]^2*x[6] - 15201259/80642744*x[4]*x[5]^2 - 
121454218/30241029*x[4]*x[5]*x[6] + 96105547/90723087*x[4]*x[6]^2 + 
23889921/10080343*x[5]^3 - 302072331/40321372*x[5]^2*x[6] + 
331169/59647*x[5]*x[6]^2 - 7480591/6978699*x[6]^3,
x[1]*x[3]*x[4] + 429050577/188314100*x[2]*x[4]*x[5] - 
43320299/18831410*x[2]*x[4]*x[6] + 246690441/94157050*x[2]*x[5]^2 - 
1362524967/94157050*x[2]*x[5]*x[6] + 81951564/9415705*x[2]*x[6]^2 - 
38618528/10864275*x[3]^3 - 12794093/43457100*x[3]^2*x[4] + 
64693213/14485700*x[3]^2*x[5] - 16185247/21728550*x[3]^2*x[6] - 
5329117/10864275*x[3]*x[4]^2 - 8606846/10864275*x[3]*x[4]*x[5] - 
153206036/32592825*x[3]*x[4]*x[6] + 6109977/724285*x[3]*x[5]^2 - 
19796511/3621425*x[3]*x[5]*x[6] + 181302367/10864275*x[3]*x[6]^2 - 
32924431/564942300*x[4]^3 - 105158659/188314100*x[4]^2*x[5] - 
180864256/141235575*x[4]^2*x[6] - 224907139/94157050*x[4]*x[5]^2 + 
2145029959/282471150*x[4]*x[5]*x[6] + 210669751/423706725*x[4]*x[6]^2 - 
2626225731/376628200*x[5]^3 + 4456226211/188314100*x[5]^2*x[6] - 
3963995413/94157050*x[5]*x[6]^2 + 645549052/141235575*x[6]^3,
x[1]*x[3]*x[5] - 13843677/263639740*x[2]*x[4]*x[5] + 
2899699/26363974*x[2]*x[4]*x[6] - 24252861/131819870*x[2]*x[5]^2 - 
28177504/65909935*x[2]*x[5]*x[6] - 21448417/39545961*x[2]*x[6]^2 - 
9504391/45629955*x[3]^3 + 260013/10139990*x[3]^2*x[4] - 
4170257/8691420*x[3]^2*x[5] - 55601/6518565*x[3]^2*x[6] + 
738893/60839940*x[3]*x[4]^2 + 29649763/121679880*x[3]*x[4]*x[5] - 
115204181/182519820*x[3]*x[4]*x[6] - 3627223/12167988*x[3]*x[5]^2 - 
1742527/26074260*x[3]*x[5]*x[6] + 72232297/136889865*x[3]*x[6]^2 + 
2654252/593189415*x[4]^3 + 54052127/790919220*x[4]^2*x[5] - 
5417051/34893495*x[4]^2*x[6] + 246478851/527279480*x[4]*x[5]^2 - 
448702117/197729805*x[4]*x[5]*x[6] + 77767051/91259910*x[4]*x[6]^2 + 
719550581/527279480*x[5]^3 - 426177939/65909935*x[5]^2*x[6] + 
47335367/23262330*x[5]*x[6]^2 - 862661258/1779568245*x[6]^3,
x[1]*x[3]*x[6] - 4198599/188314100*x[2]*x[4]*x[5] + 
2204469/9415705*x[2]*x[4]*x[6] + 1220283/94157050*x[2]*x[5]^2 - 
19390548/47078525*x[2]*x[5]*x[6] - 9896743/9415705*x[2]*x[6]^2 - 
1754389/10864275*x[3]^3 + 141011/7242850*x[3]^2*x[4] - 
767039/3621425*x[3]^2*x[5] + 12061153/43457100*x[3]^2*x[6] + 
244897/14485700*x[3]*x[4]^2 + 825497/28971400*x[3]*x[4]*x[5] - 
6991283/14485700*x[3]*x[4]*x[6] + 894193/5794280*x[3]*x[5]^2 - 
20042033/21728550*x[3]*x[5]*x[6] + 24139513/32592825*x[3]*x[6]^2 + 
408061/282471150*x[4]^3 + 2057933/188314100*x[4]^2*x[5] + 
1577263/21728550*x[4]^2*x[6] - 43712403/376628200*x[4]*x[5]^2 - 
39267318/47078525*x[4]*x[5]*x[6] + 1667138/8307975*x[4]*x[6]^2 + 
211168011/188314100*x[5]^3 - 560076957/188314100*x[5]^2*x[6] - 
135569872/47078525*x[5]*x[6]^2 + 78841303/423706725*x[6]^3,
x[1]*x[4]^2 - 32822879739/1267498750*x[2]*x[4]*x[5] + 
1830665188/126749875*x[2]*x[4]*x[6] - 9565869807/633749375*x[2]*x[5]^2 + 
67446329394/633749375*x[2]*x[5]*x[6] - 8162381936/126749875*x[2]*x[6]^2 + 
10555148162/633749375*x[3]^3 - 1615175419/1267498750*x[3]^2*x[4] - 
18583273293/362142500*x[3]^2*x[5] + 1845417639/181071250*x[3]^2*x[6] + 
10509007197/2534997500*x[3]*x[4]^2 + 57293265263/7604992500*x[3]*x[4]*x[5] + 
90679016207/5703744375*x[3]*x[4]*x[6] - 7201834861/253499750*x[3]*x[5]^2 + 
22395230741/543213750*x[3]*x[5]*x[6] - 475948276687/5703744375*x[3]*x[6]^2 + 
562745072/633749375*x[4]^3 + 5045116103/1267498750*x[4]^2*x[5] - 
11782415261/1901248125*x[4]^2*x[6] + 49547105507/2534997500*x[4]*x[5]^2 - 
242504228303/1901248125*x[4]*x[5]*x[6] + 315312404531/5703744375*x[4]*x[6]^2 + 
342764775177/2534997500*x[5]^3 - 316839478467/1267498750*x[5]^2*x[6] + 
195183851721/633749375*x[5]*x[6]^2 - 323640352114/5703744375*x[6]^3,
x[1]*x[4]*x[5] - 184607364/126749875*x[2]*x[4]*x[5] - 
1844124/25349975*x[2]*x[4]*x[6] - 238991283/253499750*x[2]*x[5]^2 + 
891520263/126749875*x[2]*x[5]*x[6] - 106635072/25349975*x[2]*x[6]^2 - 
114318698/380249625*x[3]^3 - 5156359/126749875*x[3]^2*x[4] - 
83666999/18107125*x[3]^2*x[5] + 55592212/54321375*x[3]^2*x[6] + 
16050476/126749875*x[3]*x[4]^2 + 664252901/1520998500*x[3]*x[4]*x[5] - 
593065642/380249625*x[3]*x[4]*x[6] + 328819569/101399900*x[3]*x[5]^2 + 
17055922/18107125*x[3]*x[5]*x[6] - 29128476/126749875*x[3]*x[6]^2 + 
6373319/760499250*x[4]^3 - 46728832/126749875*x[4]^2*x[5] - 
48592679/126749875*x[4]^2*x[6] + 60289647/253499750*x[4]*x[5]^2 - 
1169045887/126749875*x[4]*x[5]*x[6] + 2402553184/380249625*x[4]*x[6]^2 + 
8482105899/506999500*x[5]^3 - 2609778657/126749875*x[5]^2*x[6] + 
1834711552/126749875*x[5]*x[6]^2 - 577528832/126749875*x[6]^3,
x[1]*x[4]*x[6] - 1321050789/2534997500*x[2]*x[4]*x[5] - 
104307837/253499750*x[2]*x[4]*x[6] + 1499928543/1267498750*x[2]*x[5]^2 - 
2468721681/1267498750*x[2]*x[5]*x[6] + 7398996/7455875*x[2]*x[6]^2 + 
12408656/633749375*x[3]^3 - 234388297/1267498750*x[3]^2*x[4] - 
445671759/362142500*x[3]^2*x[5] + 54266407/181071250*x[3]^2*x[6] + 
28129933/149117500*x[3]*x[4]^2 + 1085201871/5069995000*x[3]*x[4]*x[5] - 
2741811878/1901248125*x[3]*x[4]*x[6] - 115998909/126749875*x[3]*x[5]^2 + 
255747193/90535625*x[3]*x[5]*x[6] + 2189490173/1901248125*x[3]*x[6]^2 + 
3529107/149117500*x[4]^3 + 425295453/2534997500*x[4]^2*x[5] - 
418115056/633749375*x[4]^2*x[6] - 499101093/5069995000*x[4]*x[5]^2 - 
5594553801/1267498750*x[4]*x[5]*x[6] + 5352774359/1267498750*x[4]*x[6]^2 + 
16525396827/5069995000*x[5]^3 - 15682983867/2534997500*x[5]^2*x[6] + 
6280943421/1267498750*x[5]*x[6]^2 - 5794690444/1901248125*x[6]^3,
x[1]*x[5]^2 - 29250037/101399900*x[2]*x[4]*x[5] + 
2436887/30419970*x[2]*x[4]*x[6] + 25261249/50699950*x[2]*x[5]^2 - 
1055822/76049925*x[2]*x[5]*x[6] - 34961021/45629955*x[2]*x[6]^2 - 
128232299/684449325*x[3]^3 + 2547337/152099850*x[3]^2*x[4] - 
51847679/65185650*x[3]^2*x[5] + 7483151/97778475*x[3]^2*x[6] + 
1062581/53682300*x[3]*x[4]^2 + 394869787/1825198200*x[3]*x[4]*x[5] - 
1698702109/2737797300*x[3]*x[4]*x[6] + 9122074/45629955*x[3]*x[5]^2 - 
205768823/391113900*x[3]*x[5]*x[6] + 809043833/2053347975*x[3]*x[6]^2 + 
2861641/684449325*x[4]^3 - 5566147/53682300*x[4]^2*x[5] - 
104438861/684449325*x[4]^2*x[6] + 33665663/608399400*x[4]*x[5]^2 - 
694454417/456299550*x[4]*x[5]*x[6] + 1615526579/1368898650*x[4]*x[6]^2 + 
1596152503/608399400*x[5]^3 - 93647019/25349975*x[5]^2*x[6] + 
834029657/456299550*x[5]*x[6]^2 - 1539146914/2053347975*x[6]^3,
x[1]*x[5]*x[6] - 30321453/506999500*x[2]*x[4]*x[5] + 
1048451/50699950*x[2]*x[4]*x[6] + 26958621/253499750*x[2]*x[5]^2 + 
30205744/126749875*x[2]*x[5]*x[6] - 75498833/76049925*x[2]*x[6]^2 - 
142257947/1140748875*x[3]^3 + 2873/14911750*x[3]^2*x[4] - 
28867397/108642750*x[3]^2*x[5] + 32101043/162964125*x[3]^2*x[6] + 
43438681/1520998500*x[3]*x[4]^2 + 7101653/178941000*x[3]*x[4]*x[5] - 
2301845377/4562995500*x[3]*x[4]*x[6] + 28165007/608399400*x[3]*x[5]^2 - 
210113579/651856500*x[3]*x[5]*x[6] + 419115749/3422246625*x[3]*x[6]^2 + 
3483808/1140748875*x[4]^3 + 33746233/1520998500*x[4]^2*x[5] - 
141485843/1140748875*x[4]^2*x[6] - 100160281/1013999000*x[4]*x[5]^2 - 
509838493/380249625*x[4]*x[5]*x[6] + 3429191327/2281497750*x[4]*x[6]^2 + 
144751853/126749875*x[5]^3 - 333739341/126749875*x[5]^2*x[6] + 
451613053/380249625*x[5]*x[6]^2 - 3568603882/3422246625*x[6]^3,
x[1]*x[6]^2 - 275686857/2534997500*x[2]*x[4]*x[5] + 
1751991/7455875*x[2]*x[4]*x[6] + 297877509/1267498750*x[2]*x[5]^2 - 
102666939/633749375*x[2]*x[5]*x[6] - 144267209/126749875*x[2]*x[6]^2 - 
90083591/1901248125*x[3]^3 - 37909911/1267498750*x[3]^2*x[4] - 
27820273/90535625*x[3]^2*x[5] + 253816199/271606875*x[3]^2*x[6] + 
106897843/2534997500*x[3]*x[4]^2 + 257551723/5069995000*x[3]*x[4]*x[5] - 
1059386614/1901248125*x[3]*x[4]*x[6] - 131454661/1013999000*x[3]*x[5]^2 - 
506725609/2172855000*x[3]*x[5]*x[6] - 144846403/5703744375*x[3]*x[6]^2 + 
19301183/3802496250*x[4]^3 + 91768339/2534997500*x[4]^2*x[5] - 
63239009/1901248125*x[4]^2*x[6] - 283962909/5069995000*x[4]*x[5]^2 - 
1798713563/1267498750*x[4]*x[5]*x[6] + 3928034338/1901248125*x[4]*x[6]^2 + 
2513560713/2534997500*x[5]^3 - 23855461767/5069995000*x[5]^2*x[6] + 
2210874874/633749375*x[5]*x[6]^2 - 32141997857/11407488750*x[6]^3,
x[2]^3 - 132109759/12883752*x[2]*x[4]*x[5] - 9665795/4831407*x[2]*x[4]*x[6] - 
3335048/536823*x[2]*x[5]^2 + 102615187/3220938*x[2]*x[5]*x[6] - 
268312795/9662814*x[2]*x[6]^2 + 345957196/43482663*x[3]^3 - 
8602945/12883752*x[3]^2*x[4] - 186206735/11043216*x[3]^2*x[5] + 
140835305/16564824*x[3]^2*x[6] + 19288217/9662814*x[3]*x[4]^2 + 
361080577/231907536*x[3]*x[4]*x[5] + 2432064167/347861304*x[3]*x[4]*x[6] - 
152510059/9662814*x[3]*x[5]^2 + 150411287/8282412*x[3]*x[5]*x[6] - 
6081253841/173930652*x[3]*x[6]^2 + 16263931/38651256*x[4]^3 + 
88605791/38651256*x[4]^2*x[5] - 9859709/57976884*x[4]^2*x[6] + 
612344785/77302512*x[4]*x[5]^2 - 1789121221/57976884*x[4]*x[5]*x[6] + 
2666948117/86965326*x[4]*x[6]^2 + 57899015/1610469*x[5]^3 - 
142646155/1431528*x[5]^2*x[6] + 598619683/4831407*x[5]*x[6]^2 - 
2601704363/86965326*x[6]^3,
x[2]^2*x[3] - 1820279/6978699*x[2]*x[4]*x[5] - 29554195/41872194*x[2]*x[4]*x[6] 
- 2459770/2326233*x[2]*x[5]^2 - 5060567/6978699*x[2]*x[5]*x[6] + 
88366820/20936097*x[2]*x[6]^2 - 5254717/9662814*x[3]^3 + 
1018823/4831407*x[3]^2*x[4] + 811915/613512*x[3]^2*x[5] - 
585143/306756*x[3]^2*x[6] - 180239/4831407*x[3]*x[4]^2 - 
4811234/4831407*x[3]*x[4]*x[5] - 66488059/28988442*x[3]*x[4]*x[6] - 
5271493/1610469*x[3]*x[5]^2 + 566191/2760804*x[3]*x[5]*x[6] + 
62135629/28988442*x[3]*x[6]^2 + 2196931/251233164*x[4]^3 + 
4095271/13957398*x[4]^2*x[5] + 13031959/41872194*x[4]^2*x[6] + 
14963497/83744388*x[4]*x[5]^2 - 63219463/62808291*x[4]*x[5]*x[6] - 
1384995307/376849746*x[4]*x[6]^2 + 106092241/55829592*x[5]^3 + 
198578747/27914796*x[5]^2*x[6] - 227667443/41872194*x[5]*x[6]^2 + 
529863959/188424873*x[6]^3,
x[2]^2*x[4] + 387428099/53682300*x[2]*x[4]*x[5] - 
19022929/16104690*x[2]*x[4]*x[6] + 11331617/2982350*x[2]*x[5]^2 - 
94970341/2982350*x[2]*x[5]*x[6] + 52621588/2684115*x[2]*x[6]^2 - 
1165323952/120785175*x[3]^3 - 100509539/120785175*x[3]^2*x[4] + 
314332733/23006700*x[3]^2*x[5] - 84196307/34510050*x[3]^2*x[6] - 
1089777767/483140700*x[3]*x[4]^2 + 610639913/483140700*x[3]*x[4]*x[5] - 
3498838369/362355525*x[3]*x[4]*x[6] + 692173651/26841150*x[3]*x[5]^2 - 
122890144/5751675*x[3]*x[5]*x[6] + 1680137771/40261725*x[3]*x[6]^2 - 
272373737/483140700*x[4]^3 - 74427803/16104690*x[4]^2*x[5] - 
420197732/120785175*x[4]^2*x[6] - 1145151751/161046900*x[4]*x[5]^2 + 
885845819/24157035*x[4]*x[5]*x[6] - 3637692358/362355525*x[4]*x[6]^2 - 
156667051/7157640*x[5]^3 + 3902459209/53682300*x[5]^2*x[6] - 
388927661/3220938*x[5]*x[6]^2 + 743720408/40261725*x[6]^3,
x[2]^2*x[5] - 814787/10736460*x[2]*x[4]*x[5] + 857627/3220938*x[2]*x[4]*x[6] - 
1940669/5368230*x[2]*x[5]^2 + 17995333/8052345*x[2]*x[5]*x[6] + 
3817879/4831407*x[2]*x[6]^2 - 21906287/72471105*x[3]^3 + 
130637/1789410*x[3]^2*x[4] - 1549561/1150335*x[3]^2*x[5] - 
5068141/10353015*x[3]^2*x[6] - 3153839/96628140*x[3]*x[4]^2 + 
20258537/193256280*x[3]*x[4]*x[5] - 178902217/289884420*x[3]*x[4]*x[6] + 
141738883/48314070*x[3]*x[5]^2 + 10960417/41412060*x[3]*x[5]*x[6] + 
265789589/217413315*x[3]*x[6]^2 + 406417/72471105*x[4]^3 - 
4905307/19325628*x[4]^2*x[5] - 11008577/72471105*x[4]^2*x[6] - 
2604177/2385880*x[4]*x[5]^2 - 23021116/4831407*x[4]*x[5]*x[6] - 
160538617/144942210*x[4]*x[6]^2 + 7047875/12883752*x[5]^3 - 
60656773/16104690*x[5]^2*x[6] + 982951/3220938*x[5]*x[6]^2 + 
233359142/217413315*x[6]^3,
x[2]^2*x[6] + 3451829/17894100*x[2]*x[4]*x[5] + 14687/298235*x[2]*x[4]*x[6] - 
4632437/8947050*x[2]*x[5]^2 - 5110361/13420575*x[2]*x[5]*x[6] + 
29781382/8052345*x[2]*x[6]^2 - 42364751/120785175*x[3]^3 + 
10177687/80523450*x[3]^2*x[4] + 1366027/11503350*x[3]^2*x[5] - 
69406441/34510050*x[3]^2*x[6] - 8234707/161046900*x[3]*x[4]^2 - 
12340679/322093800*x[3]*x[4]*x[5] - 7603661/13420575*x[3]*x[4]*x[6] + 
240991231/322093800*x[3]*x[5]^2 + 124592611/69020100*x[3]*x[5]*x[6] + 
680074382/362355525*x[3]*x[6]^2 - 947714/120785175*x[4]^3 - 
1744663/32209380*x[4]^2*x[5] - 13374791/120785175*x[4]^2*x[6] - 
21500317/107364600*x[4]*x[5]^2 - 18281113/10736460*x[4]*x[5]*x[6] - 
692446918/120785175*x[4]*x[6]^2 + 2338792/2684115*x[5]^3 + 
51619721/26841150*x[5]^2*x[6] - 8530999/1073646*x[5]*x[6]^2 + 
1618181636/362355525*x[6]^3,
x[2]*x[3]^2 - 7836389/40321372*x[2]*x[4]*x[5] + 34315895/60482058*x[2]*x[4]*x[6]
- 12630798/10080343*x[2]*x[5]^2 + 19410129/20160686*x[2]*x[5]*x[6] - 
12914540/10080343*x[2]*x[6]^2 - 318331/536823*x[3]^3 - 98663/536823*x[3]^2*x[4] 
- 24823/102252*x[3]^2*x[5] - 15262/76689*x[3]^2*x[6] - 
1315757/13957398*x[3]*x[4]^2 - 9791827/13957398*x[3]*x[4]*x[5] - 
21461873/20936097*x[3]*x[4]*x[6] + 3672187/3101644*x[3]*x[5]^2 + 
549232/332319*x[3]*x[5]*x[6] + 1782294/775411*x[3]*x[6]^2 + 
75659/362892348*x[4]^3 - 8384023/120964116*x[4]^2*x[5] + 
39727663/181446174*x[4]^2*x[6] + 64372823/60482058*x[4]*x[5]^2 + 
215426053/181446174*x[4]*x[5]*x[6] - 279242009/272169261*x[4]*x[6]^2 + 
133428597/80642744*x[5]^3 - 213471649/40321372*x[5]^2*x[6] - 
270162481/60482058*x[5]*x[6]^2 + 27206954/30241029*x[6]^3,
x[2]*x[3]*x[4] + 2318126/2769325*x[2]*x[4]*x[5] - 1605827/1661595*x[2]*x[4]*x[6]
+ 5153946/2769325*x[2]*x[5]^2 - 10999442/2769325*x[2]*x[5]*x[6] + 
3454144/1661595*x[2]*x[6]^2 + 768274/639075*x[3]^3 - 2922049/3834450*x[3]^2*x[4]
- 117819/852100*x[3]^2*x[5] + 11011/1278150*x[3]^2*x[6] + 
51937/213025*x[3]*x[4]^2 - 1039726/1917225*x[3]*x[4]*x[5] - 
4933636/5751675*x[3]*x[4]*x[6] - 763727/127815*x[3]*x[5]^2 + 
21069629/3834450*x[3]*x[5]*x[6] - 14389549/5751675*x[3]*x[6]^2 - 
109208/8307975*x[4]^3 - 82657/639075*x[4]^2*x[5] - 32947171/24923925*x[4]^2*x[6]
- 665849/16615950*x[4]*x[5]^2 - 48759068/24923925*x[4]*x[5]*x[6] + 
28894457/5751675*x[4]*x[6]^2 - 43964971/11077300*x[5]^3 - 
15479929/5538650*x[5]^2*x[6] + 27408367/2769325*x[5]*x[6]^2 - 
238742854/74771775*x[6]^3,
x[2]*x[3]*x[5] + 121379/1107730*x[2]*x[4]*x[5] - 16529/332319*x[2]*x[4]*x[6] + 
679652/553865*x[2]*x[5]^2 - 746852/1661595*x[2]*x[5]*x[6] - 
965186/996957*x[2]*x[6]^2 - 25688/1150335*x[3]^3 - 2288/127815*x[3]^2*x[4] - 
129623/383445*x[3]^2*x[5] + 315614/1150335*x[3]^2*x[6] + 
23237/766890*x[3]*x[4]^2 - 400163/1533780*x[3]*x[4]*x[5] - 
552329/2300670*x[3]*x[4]*x[6] - 121705/153378*x[3]*x[5]^2 - 
2243311/2300670*x[3]*x[5]*x[6] - 714154/3451005*x[3]*x[6]^2 + 
2279/2300670*x[4]^3 + 250073/9969570*x[4]^2*x[5] - 882071/14954355*x[4]^2*x[6] -
192699/170420*x[4]*x[5]^2 - 7013816/4984785*x[4]*x[5]*x[6] + 
21591247/14954355*x[4]*x[6]^2 - 4161451/6646380*x[5]^3 + 46422/42605*x[5]^2*x[6]
+ 13125961/4984785*x[5]*x[6]^2 - 48320404/44863065*x[6]^3,
x[2]*x[3]*x[6] - 10262361/77541100*x[2]*x[4]*x[5] + 
2388987/7754110*x[2]*x[4]*x[6] + 12055647/38770550*x[2]*x[5]^2 + 
19831078/19385275*x[2]*x[5]*x[6] - 21899621/11631165*x[2]*x[6]^2 + 
668902/13420575*x[3]^3 - 487903/8947050*x[3]^2*x[4] - 686491/2556300*x[3]^2*x[5]
+ 971893/1278150*x[3]^2*x[6] + 271193/5964700*x[3]*x[4]^2 + 
1754149/35788200*x[3]*x[4]*x[5] - 10011931/17894100*x[3]*x[4]*x[6] - 
1023203/3578820*x[3]*x[5]^2 - 5613821/7668900*x[3]*x[5]*x[6] - 
46000834/40261725*x[3]*x[6]^2 + 4111189/697869900*x[4]^3 + 
9670351/232623300*x[4]^2*x[5] - 717422/13420575*x[4]^2*x[6] + 
917663/155082200*x[4]*x[5]^2 - 38912682/19385275*x[4]*x[5]*x[6] + 
517864579/348934950*x[4]*x[6]^2 + 6637081/11929400*x[5]^3 - 
106964157/19385275*x[5]^2*x[6] + 801149807/116311650*x[5]*x[6]^2 - 
792002164/523402425*x[6]^3,
x[2]*x[4]^2 - 1712779/119294*x[2]*x[4]*x[5] + 1114831/178941*x[2]*x[4]*x[6] - 
816096/59647*x[2]*x[5]^2 + 4485319/59647*x[2]*x[5]*x[6] - 
8016376/178941*x[2]*x[6]^2 + 4684004/536823*x[3]^3 + 1405235/536823*x[3]^2*x[4] 
- 1562405/51126*x[3]^2*x[5] + 462215/76689*x[3]^2*x[6] + 
761540/536823*x[3]*x[4]^2 + 1142128/536823*x[3]*x[4]*x[5] + 
17163640/1610469*x[3]*x[4]*x[6] - 2900339/357882*x[3]*x[5]^2 + 
1109212/76689*x[3]*x[5]*x[6] - 81128710/1610469*x[3]*x[6]^2 + 
906767/1073646*x[4]^3 + 205535/357882*x[4]^2*x[5] + 496399/536823*x[4]^2*x[6] + 
890447/357882*x[4]*x[5]^2 - 32586805/536823*x[4]*x[5]*x[6] + 
29661256/1610469*x[4]*x[6]^2 + 20700503/238588*x[5]^3 - 
17364713/119294*x[5]^2*x[6] + 31024625/178941*x[5]*x[6]^2 - 
43927504/1610469*x[6]^3
]);
