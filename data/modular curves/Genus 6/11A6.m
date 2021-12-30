
    /****************************************************
    Loading this file in magma loads the objects fs_11A6 
    and X_11A6. fs_11A6 is a list of power series which form 
    a basis for the space of cusp forms. X_11A6 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, \[ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_11A6 := [Kq | (zeta^8 - 2*zeta^7 + zeta^6 + zeta^5 - 2*zeta^4 +
zeta^3)*q + (2*zeta^9 + 6*zeta^8 + 2*zeta^7 + 2*zeta^4 + 6*zeta^3 + 2*zeta^2 + 
2)*q^2 + (-3*zeta^9 - 2*zeta^8 - 3*zeta^7 - 2*zeta^6 - 2*zeta^5 - 3*zeta^4 - 
2*zeta^3 - 3*zeta^2 - 2)*q^3 + (-2*zeta^8 - 2*zeta^7 - 6*zeta^6 - 6*zeta^5 - 
2*zeta^4 - 2*zeta^3 - 2)*q^4 + (-2*zeta^9 + zeta^8 + zeta^7 + zeta^4 + zeta^3 - 
2*zeta^2)*q^5 + (-4*zeta^9 + 2*zeta^8 + 2*zeta^7 + 2*zeta^4 + 2*zeta^3 - 
4*zeta^2)*q^6 + (2*zeta^8 + 2*zeta^7 + 6*zeta^6 + 6*zeta^5 + 2*zeta^4 + 2*zeta^3
+ 2)*q^7 + (2*zeta^9 + 6*zeta^8 + 2*zeta^7 + 2*zeta^4 + 6*zeta^3 + 2*zeta^2 + 
2)*q^9 + (-2*zeta^8 + 4*zeta^7 - 2*zeta^6 - 2*zeta^5 + 4*zeta^4 - 2*zeta^3)*q^10
- 11*q^11 + (-2*zeta^8 + 4*zeta^7 - 2*zeta^6 - 2*zeta^5 + 4*zeta^4 - 
2*zeta^3)*q^12 + (-4*zeta^9 - 12*zeta^8 - 4*zeta^7 - 4*zeta^4 - 12*zeta^3 - 
4*zeta^2 - 4)*q^13 + (12*zeta^9 + 8*zeta^8 + 12*zeta^7 + 8*zeta^6 + 8*zeta^5 + 
12*zeta^4 + 8*zeta^3 + 12*zeta^2 + 8)*q^14 + (zeta^8 + zeta^7 + 3*zeta^6 + 
3*zeta^5 + zeta^4 + zeta^3 + 1)*q^15 + (8*zeta^9 - 4*zeta^8 - 4*zeta^7 - 
4*zeta^4 - 4*zeta^3 + 8*zeta^2)*q^16 + (4*zeta^9 - 2*zeta^8 - 2*zeta^7 - 
2*zeta^4 - 2*zeta^3 + 4*zeta^2)*q^17 + (-4*zeta^8 - 4*zeta^7 - 12*zeta^6 - 
12*zeta^5 - 4*zeta^4 - 4*zeta^3 - 4)*q^18 + (-2*zeta^9 - 6*zeta^8 - 2*zeta^7 - 
2*zeta^4 - 6*zeta^3 - 2*zeta^2 - 2)*q^20 + (2*zeta^8 - 4*zeta^7 + 2*zeta^6 + 
2*zeta^5 - 4*zeta^4 + 2*zeta^3)*q^21 + 22*q^22 + (-zeta^8 + 2*zeta^7 - zeta^6 - 
zeta^5 + 2*zeta^4 - zeta^3)*q^23 + (-12*zeta^9 - 8*zeta^8 - 12*zeta^7 - 8*zeta^6
- 8*zeta^5 - 12*zeta^4 - 8*zeta^3 - 12*zeta^2 - 8)*q^25 + (8*zeta^8 + 8*zeta^7 +
24*zeta^6 + 24*zeta^5 + 8*zeta^4 + 8*zeta^3 + 8)*q^26 + (-10*zeta^9 + 5*zeta^8 +
5*zeta^7 + 5*zeta^4 + 5*zeta^3 - 10*zeta^2)*q^27 + (8*zeta^9 - 4*zeta^8 - 
4*zeta^7 - 4*zeta^4 - 4*zeta^3 + 8*zeta^2)*q^28 + (6*zeta^9 + 4*zeta^8 + 
6*zeta^7 + 4*zeta^6 + 4*zeta^5 + 6*zeta^4 + 4*zeta^3 + 6*zeta^2 + 4)*q^30 + 
(-7*zeta^9 - 21*zeta^8 - 7*zeta^7 - 7*zeta^4 - 21*zeta^3 - 7*zeta^2 - 7)*q^31 + 
(8*zeta^8 - 16*zeta^7 + 8*zeta^6 + 8*zeta^5 - 16*zeta^4 + 8*zeta^3)*q^32 + 
11*q^33 + (4*zeta^8 - 8*zeta^7 + 4*zeta^6 + 4*zeta^5 - 8*zeta^4 + 4*zeta^3)*q^34
+ (2*zeta^9 + 6*zeta^8 + 2*zeta^7 + 2*zeta^4 + 6*zeta^3 + 2*zeta^2 + 2)*q^35 + 
(-12*zeta^9 - 8*zeta^8 - 12*zeta^7 - 8*zeta^6 - 8*zeta^5 - 12*zeta^4 - 8*zeta^3 
- 12*zeta^2 - 8)*q^36 + (-3*zeta^8 - 3*zeta^7 - 9*zeta^6 - 9*zeta^5 - 3*zeta^4 -
3*zeta^3 - 3)*q^37 + (8*zeta^9 - 4*zeta^8 - 4*zeta^7 - 4*zeta^4 - 4*zeta^3 + 
8*zeta^2)*q^39 + (-24*zeta^9 - 16*zeta^8 - 24*zeta^7 - 16*zeta^6 - 16*zeta^5 - 
24*zeta^4 - 16*zeta^3 - 24*zeta^2 - 16)*q^41 + (4*zeta^9 + 12*zeta^8 + 4*zeta^7 
+ 4*zeta^4 + 12*zeta^3 + 4*zeta^2 + 4)*q^42 + (-6*zeta^8 + 12*zeta^7 - 6*zeta^6 
- 6*zeta^5 + 12*zeta^4 - 6*zeta^3)*q^43 - 22*q^44 + (-2*zeta^8 + 4*zeta^7 - 
2*zeta^6 - 2*zeta^5 + 4*zeta^4 - 2*zeta^3)*q^45 + (-2*zeta^9 - 6*zeta^8 - 
2*zeta^7 - 2*zeta^4 - 6*zeta^3 - 2*zeta^2 - 2)*q^46 + (24*zeta^9 + 16*zeta^8 + 
24*zeta^7 + 16*zeta^6 + 16*zeta^5 + 24*zeta^4 + 16*zeta^3 + 24*zeta^2 + 16)*q^47
+ (-4*zeta^8 - 4*zeta^7 - 12*zeta^6 - 12*zeta^5 - 4*zeta^4 - 4*zeta^3 - 4)*q^48 
+ (6*zeta^9 - 3*zeta^8 - 3*zeta^7 - 3*zeta^4 - 3*zeta^3 + 6*zeta^2)*q^49 + 
(-16*zeta^9 + 8*zeta^8 + 8*zeta^7 + 8*zeta^4 + 8*zeta^3 - 16*zeta^2)*q^50 + 
(-2*zeta^8 - 2*zeta^7 - 6*zeta^6 - 6*zeta^5 - 2*zeta^4 - 2*zeta^3 - 2)*q^51 + 
(24*zeta^9 + 16*zeta^8 + 24*zeta^7 + 16*zeta^6 + 16*zeta^5 + 24*zeta^4 + 
16*zeta^3 + 24*zeta^2 + 16)*q^52 + (6*zeta^9 + 18*zeta^8 + 6*zeta^7 + 6*zeta^4 +
18*zeta^3 + 6*zeta^2 + 6)*q^53 + (-10*zeta^8 + 20*zeta^7 - 10*zeta^6 - 10*zeta^5
+ 20*zeta^4 - 10*zeta^3)*q^54 - 11*q^55 + (-5*zeta^8 - 5*zeta^7 - 15*zeta^6 - 
15*zeta^5 - 5*zeta^4 - 5*zeta^3 - 5)*q^59 + (4*zeta^9 - 2*zeta^8 - 2*zeta^7 - 
2*zeta^4 - 2*zeta^3 + 4*zeta^2)*q^60 + (-24*zeta^9 + 12*zeta^8 + 12*zeta^7 + 
12*zeta^4 + 12*zeta^3 - 24*zeta^2)*q^61 + (14*zeta^8 + 14*zeta^7 + 42*zeta^6 + 
42*zeta^5 + 14*zeta^4 + 14*zeta^3 + 14)*q^62 + (12*zeta^9 + 8*zeta^8 + 12*zeta^7
+ 8*zeta^6 + 8*zeta^5 + 12*zeta^4 + 8*zeta^3 + 12*zeta^2 + 8)*q^63 + (8*zeta^9 +
24*zeta^8 + 8*zeta^7 + 8*zeta^4 + 24*zeta^3 + 8*zeta^2 + 8)*q^64 + (4*zeta^8 - 
8*zeta^7 + 4*zeta^6 + 4*zeta^5 - 8*zeta^4 + 4*zeta^3)*q^65 - 22*q^66 + 
(-7*zeta^8 + 14*zeta^7 - 7*zeta^6 - 7*zeta^5 + 14*zeta^4 - 7*zeta^3)*q^67 + 
(4*zeta^9 + 12*zeta^8 + 4*zeta^7 + 4*zeta^4 + 12*zeta^3 + 4*zeta^2 + 4)*q^68 + 
(3*zeta^9 + 2*zeta^8 + 3*zeta^7 + 2*zeta^6 + 2*zeta^5 + 3*zeta^4 + 2*zeta^3 + 
3*zeta^2 + 2)*q^69 + (-4*zeta^8 - 4*zeta^7 - 12*zeta^6 - 12*zeta^5 - 4*zeta^4 - 
4*zeta^3 - 4)*q^70 + (6*zeta^9 - 3*zeta^8 - 3*zeta^7 - 3*zeta^4 - 3*zeta^3 + 
6*zeta^2)*q^71 + (-4*zeta^8 - 4*zeta^7 - 12*zeta^6 - 12*zeta^5 - 4*zeta^4 - 
4*zeta^3 - 4)*q^73 + (-18*zeta^9 - 12*zeta^8 - 18*zeta^7 - 12*zeta^6 - 12*zeta^5
- 18*zeta^4 - 12*zeta^3 - 18*zeta^2 - 12)*q^74 + (-4*zeta^9 - 12*zeta^8 - 
4*zeta^7 - 4*zeta^4 - 12*zeta^3 - 4*zeta^2 - 4)*q^75 + 22*q^77 + (8*zeta^8 - 
16*zeta^7 + 8*zeta^6 + 8*zeta^5 - 16*zeta^4 + 8*zeta^3)*q^78 + (10*zeta^9 + 
30*zeta^8 + 10*zeta^7 + 10*zeta^4 + 30*zeta^3 + 10*zeta^2 + 10)*q^79 + 
(-12*zeta^9 - 8*zeta^8 - 12*zeta^7 - 8*zeta^6 - 8*zeta^5 - 12*zeta^4 - 8*zeta^3 
- 12*zeta^2 - 8)*q^80 + (-zeta^8 - zeta^7 - 3*zeta^6 - 3*zeta^5 - zeta^4 - 
zeta^3 - 1)*q^81 + (-32*zeta^9 + 16*zeta^8 + 16*zeta^7 + 16*zeta^4 + 16*zeta^3 -
32*zeta^2)*q^82 + (12*zeta^9 - 6*zeta^8 - 6*zeta^7 - 6*zeta^4 - 6*zeta^3 + 
12*zeta^2)*q^83 + (-4*zeta^8 - 4*zeta^7 - 12*zeta^6 - 12*zeta^5 - 4*zeta^4 - 
4*zeta^3 - 4)*q^84 + (-6*zeta^9 - 4*zeta^8 - 6*zeta^7 - 4*zeta^6 - 4*zeta^5 - 
6*zeta^4 - 4*zeta^3 - 6*zeta^2 - 4)*q^85 + (-12*zeta^9 - 36*zeta^8 - 12*zeta^7 -
12*zeta^4 - 36*zeta^3 - 12*zeta^2 - 12)*q^86 + (15*zeta^8 - 30*zeta^7 + 
15*zeta^6 + 15*zeta^5 - 30*zeta^4 + 15*zeta^3)*q^89 + (-4*zeta^9 - 12*zeta^8 - 
4*zeta^7 - 4*zeta^4 - 12*zeta^3 - 4*zeta^2 - 4)*q^90 + (-24*zeta^9 - 16*zeta^8 -
24*zeta^7 - 16*zeta^6 - 16*zeta^5 - 24*zeta^4 - 16*zeta^3 - 24*zeta^2 - 16)*q^91
+ (2*zeta^8 + 2*zeta^7 + 6*zeta^6 + 6*zeta^5 + 2*zeta^4 + 2*zeta^3 + 2)*q^92 + 
(14*zeta^9 - 7*zeta^8 - 7*zeta^7 - 7*zeta^4 - 7*zeta^3 + 14*zeta^2)*q^93 + 
(32*zeta^9 - 16*zeta^8 - 16*zeta^7 - 16*zeta^4 - 16*zeta^3 + 32*zeta^2)*q^94 + 
(-24*zeta^9 - 16*zeta^8 - 24*zeta^7 - 16*zeta^6 - 16*zeta^5 - 24*zeta^4 - 
16*zeta^3 - 24*zeta^2 - 16)*q^96 + (7*zeta^9 + 21*zeta^8 + 7*zeta^7 + 7*zeta^4 +
21*zeta^3 + 7*zeta^2 + 7)*q^97 + (6*zeta^8 - 12*zeta^7 + 6*zeta^6 + 6*zeta^5 - 
12*zeta^4 + 6*zeta^3)*q^98 + 22*q^99 + (-8*zeta^8 + 16*zeta^7 - 8*zeta^6 - 
8*zeta^5 + 16*zeta^4 - 8*zeta^3)*q^100 + (-2*zeta^9 - 6*zeta^8 - 2*zeta^7 - 
2*zeta^4 - 6*zeta^3 - 2*zeta^2 - 2)*q^101 + (-12*zeta^9 - 8*zeta^8 - 12*zeta^7 -
8*zeta^6 - 8*zeta^5 - 12*zeta^4 - 8*zeta^3 - 12*zeta^2 - 8)*q^102 + (16*zeta^8 +
16*zeta^7 + 48*zeta^6 + 48*zeta^5 + 16*zeta^4 + 16*zeta^3 + 16)*q^103 + 
(-4*zeta^9 + 2*zeta^8 + 2*zeta^7 + 2*zeta^4 + 2*zeta^3 - 4*zeta^2)*q^105 + 
(-12*zeta^8 - 12*zeta^7 - 36*zeta^6 - 36*zeta^5 - 12*zeta^4 - 12*zeta^3 - 
12)*q^106 + (54*zeta^9 + 36*zeta^8 + 54*zeta^7 + 36*zeta^6 + 36*zeta^5 + 
54*zeta^4 + 36*zeta^3 + 54*zeta^2 + 36)*q^107 + (-10*zeta^9 - 30*zeta^8 - 
10*zeta^7 - 10*zeta^4 - 30*zeta^3 - 10*zeta^2 - 10)*q^108 + (10*zeta^8 - 
20*zeta^7 + 10*zeta^6 + 10*zeta^5 - 20*zeta^4 + 10*zeta^3)*q^109 + 22*q^110 + 
(-3*zeta^8 + 6*zeta^7 - 3*zeta^6 - 3*zeta^5 + 6*zeta^4 - 3*zeta^3)*q^111 + 
(-8*zeta^9 - 24*zeta^8 - 8*zeta^7 - 8*zeta^4 - 24*zeta^3 - 8*zeta^2 - 8)*q^112 +
(27*zeta^9 + 18*zeta^8 + 27*zeta^7 + 18*zeta^6 + 18*zeta^5 + 27*zeta^4 + 
18*zeta^3 + 27*zeta^2 + 18)*q^113 + (2*zeta^9 - zeta^8 - zeta^7 - zeta^4 - 
zeta^3 + 2*zeta^2)*q^115 + (8*zeta^8 + 8*zeta^7 + 24*zeta^6 + 24*zeta^5 + 
8*zeta^4 + 8*zeta^3 + 8)*q^117 + (-30*zeta^9 - 20*zeta^8 - 30*zeta^7 - 20*zeta^6
- 20*zeta^5 - 30*zeta^4 - 20*zeta^3 - 30*zeta^2 - 20)*q^118 + (-4*zeta^9 - 
12*zeta^8 - 4*zeta^7 - 4*zeta^4 - 12*zeta^3 - 4*zeta^2 - 4)*q^119 - 11*q^121 + 
(-24*zeta^8 + 48*zeta^7 - 24*zeta^6 - 24*zeta^5 + 48*zeta^4 - 24*zeta^3)*q^122 +
(-8*zeta^9 - 24*zeta^8 - 8*zeta^7 - 8*zeta^4 - 24*zeta^3 - 8*zeta^2 - 8)*q^123 +
(42*zeta^9 + 28*zeta^8 + 42*zeta^7 + 28*zeta^6 + 28*zeta^5 + 42*zeta^4 + 
28*zeta^3 + 42*zeta^2 + 28)*q^124 + (9*zeta^8 + 9*zeta^7 + 27*zeta^6 + 27*zeta^5
+ 9*zeta^4 + 9*zeta^3 + 9)*q^125 + (16*zeta^9 - 8*zeta^8 - 8*zeta^7 - 8*zeta^4 -
8*zeta^3 + 16*zeta^2)*q^126 + (-16*zeta^9 + 8*zeta^8 + 8*zeta^7 + 8*zeta^4 + 
8*zeta^3 - 16*zeta^2)*q^127 + (18*zeta^9 + 12*zeta^8 + 18*zeta^7 + 12*zeta^6 + 
12*zeta^5 + 18*zeta^4 + 12*zeta^3 + 18*zeta^2 + 12)*q^129 + (8*zeta^9 + 
24*zeta^8 + 8*zeta^7 + 8*zeta^4 + 24*zeta^3 + 8*zeta^2 + 8)*q^130 + (-18*zeta^8 
+ 36*zeta^7 - 18*zeta^6 - 18*zeta^5 + 36*zeta^4 - 18*zeta^3)*q^131 + 22*q^132 + 
(-14*zeta^9 - 42*zeta^8 - 14*zeta^7 - 14*zeta^4 - 42*zeta^3 - 14*zeta^2 - 
14)*q^134 + (15*zeta^9 + 10*zeta^8 + 15*zeta^7 + 10*zeta^6 + 10*zeta^5 + 
15*zeta^4 + 10*zeta^3 + 15*zeta^2 + 10)*q^135 + (14*zeta^9 - 7*zeta^8 - 7*zeta^7
- 7*zeta^4 - 7*zeta^3 + 14*zeta^2)*q^137 + (4*zeta^9 - 2*zeta^8 - 2*zeta^7 - 
2*zeta^4 - 2*zeta^3 + 4*zeta^2)*q^138 + (-10*zeta^8 - 10*zeta^7 - 30*zeta^6 - 
30*zeta^5 - 10*zeta^4 - 10*zeta^3 - 10)*q^139 + (-12*zeta^9 - 8*zeta^8 - 
12*zeta^7 - 8*zeta^6 - 8*zeta^5 - 12*zeta^4 - 8*zeta^3 - 12*zeta^2 - 8)*q^140 + 
(8*zeta^9 + 24*zeta^8 + 8*zeta^7 + 8*zeta^4 + 24*zeta^3 + 8*zeta^2 + 8)*q^141 + 
(6*zeta^8 - 12*zeta^7 + 6*zeta^6 + 6*zeta^5 - 12*zeta^4 + 6*zeta^3)*q^142 - 
44*q^143 + (8*zeta^8 - 16*zeta^7 + 8*zeta^6 + 8*zeta^5 - 16*zeta^4 + 
8*zeta^3)*q^144 + (-24*zeta^9 - 16*zeta^8 - 24*zeta^7 - 16*zeta^6 - 16*zeta^5 - 
24*zeta^4 - 16*zeta^3 - 24*zeta^2 - 16)*q^146 + (-3*zeta^8 - 3*zeta^7 - 9*zeta^6
- 9*zeta^5 - 3*zeta^4 - 3*zeta^3 - 3)*q^147 + (-12*zeta^9 + 6*zeta^8 + 6*zeta^7 
+ 6*zeta^4 + 6*zeta^3 - 12*zeta^2)*q^148 + (20*zeta^9 - 10*zeta^8 - 10*zeta^7 - 
10*zeta^4 - 10*zeta^3 + 20*zeta^2)*q^149 + (8*zeta^8 + 8*zeta^7 + 24*zeta^6 + 
24*zeta^5 + 8*zeta^4 + 8*zeta^3 + 8)*q^150 + (6*zeta^9 + 4*zeta^8 + 6*zeta^7 + 
4*zeta^6 + 4*zeta^5 + 6*zeta^4 + 4*zeta^3 + 6*zeta^2 + 4)*q^151 + (4*zeta^8 - 
8*zeta^7 + 4*zeta^6 + 4*zeta^5 - 8*zeta^4 + 4*zeta^3)*q^153 - 44*q^154 + 
(7*zeta^8 - 14*zeta^7 + 7*zeta^6 + 7*zeta^5 - 14*zeta^4 + 7*zeta^3)*q^155 + 
(8*zeta^9 + 24*zeta^8 + 8*zeta^7 + 8*zeta^4 + 24*zeta^3 + 8*zeta^2 + 8)*q^156 + 
(-21*zeta^9 - 14*zeta^8 - 21*zeta^7 - 14*zeta^6 - 14*zeta^5 - 21*zeta^4 - 
14*zeta^3 - 21*zeta^2 - 14)*q^157 + (-20*zeta^8 - 20*zeta^7 - 60*zeta^6 - 
60*zeta^5 - 20*zeta^4 - 20*zeta^3 - 20)*q^158 + (-12*zeta^9 + 6*zeta^8 + 
6*zeta^7 + 6*zeta^4 + 6*zeta^3 - 12*zeta^2)*q^159 + (-16*zeta^9 + 8*zeta^8 + 
8*zeta^7 + 8*zeta^4 + 8*zeta^3 - 16*zeta^2)*q^160 + (-2*zeta^8 - 2*zeta^7 - 
6*zeta^6 - 6*zeta^5 - 2*zeta^4 - 2*zeta^3 - 2)*q^161 + (-6*zeta^9 - 4*zeta^8 - 
6*zeta^7 - 4*zeta^6 - 4*zeta^5 - 6*zeta^4 - 4*zeta^3 - 6*zeta^2 - 4)*q^162 + 
(-4*zeta^9 - 12*zeta^8 - 4*zeta^7 - 4*zeta^4 - 12*zeta^3 - 4*zeta^2 - 4)*q^163 +
(-16*zeta^8 + 32*zeta^7 - 16*zeta^6 - 16*zeta^5 + 32*zeta^4 - 16*zeta^3)*q^164 +
11*q^165 + (12*zeta^8 - 24*zeta^7 + 12*zeta^6 + 12*zeta^5 - 24*zeta^4 + 
12*zeta^3)*q^166 + (12*zeta^9 + 36*zeta^8 + 12*zeta^7 + 12*zeta^4 + 36*zeta^3 + 
12*zeta^2 + 12)*q^167 + (-3*zeta^8 - 3*zeta^7 - 9*zeta^6 - 9*zeta^5 - 3*zeta^4 -
3*zeta^3 - 3)*q^169 + (-8*zeta^9 + 4*zeta^8 + 4*zeta^7 + 4*zeta^4 + 4*zeta^3 - 
8*zeta^2)*q^170 + (12*zeta^8 + 12*zeta^7 + 36*zeta^6 + 36*zeta^5 + 12*zeta^4 + 
12*zeta^3 + 12)*q^172 + (-18*zeta^9 - 12*zeta^8 - 18*zeta^7 - 12*zeta^6 - 
12*zeta^5 - 18*zeta^4 - 12*zeta^3 - 18*zeta^2 - 12)*q^173 + (8*zeta^8 - 
16*zeta^7 + 8*zeta^6 + 8*zeta^5 - 16*zeta^4 + 8*zeta^3)*q^175 + 44*q^176 + 
(-5*zeta^8 + 10*zeta^7 - 5*zeta^6 - 5*zeta^5 + 10*zeta^4 - 5*zeta^3)*q^177 + 
(30*zeta^9 + 90*zeta^8 + 30*zeta^7 + 30*zeta^4 + 90*zeta^3 + 30*zeta^2 + 
30)*q^178 + (-45*zeta^9 - 30*zeta^8 - 45*zeta^7 - 30*zeta^6 - 30*zeta^5 - 
45*zeta^4 - 30*zeta^3 - 45*zeta^2 - 30)*q^179 + (4*zeta^8 + 4*zeta^7 + 12*zeta^6
+ 12*zeta^5 + 4*zeta^4 + 4*zeta^3 + 4)*q^180 + (-14*zeta^9 + 7*zeta^8 + 7*zeta^7
+ 7*zeta^4 + 7*zeta^3 - 14*zeta^2)*q^181 + (-32*zeta^9 + 16*zeta^8 + 16*zeta^7 +
16*zeta^4 + 16*zeta^3 - 32*zeta^2)*q^182 + (12*zeta^8 + 12*zeta^7 + 36*zeta^6 + 
36*zeta^5 + 12*zeta^4 + 12*zeta^3 + 12)*q^183 + (-3*zeta^9 - 9*zeta^8 - 3*zeta^7
- 3*zeta^4 - 9*zeta^3 - 3*zeta^2 - 3)*q^185 + (14*zeta^8 - 28*zeta^7 + 14*zeta^6
+ 14*zeta^5 - 28*zeta^4 + 14*zeta^3)*q^186 + 22*q^187 + (16*zeta^8 - 32*zeta^7 +
16*zeta^6 + 16*zeta^5 - 32*zeta^4 + 16*zeta^3)*q^188 + (10*zeta^9 + 30*zeta^8 + 
10*zeta^7 + 10*zeta^4 + 30*zeta^3 + 10*zeta^2 + 10)*q^189 + (-17*zeta^8 - 
17*zeta^7 - 51*zeta^6 - 51*zeta^5 - 17*zeta^4 - 17*zeta^3 - 17)*q^191 + 
(-16*zeta^9 + 8*zeta^8 + 8*zeta^7 + 8*zeta^4 + 8*zeta^3 - 16*zeta^2)*q^192 + 
(-8*zeta^9 + 4*zeta^8 + 4*zeta^7 + 4*zeta^4 + 4*zeta^3 - 8*zeta^2)*q^193 + 
(-14*zeta^8 - 14*zeta^7 - 42*zeta^6 - 42*zeta^5 - 14*zeta^4 - 14*zeta^3 - 
14)*q^194 + (-12*zeta^9 - 8*zeta^8 - 12*zeta^7 - 8*zeta^6 - 8*zeta^5 - 12*zeta^4
- 8*zeta^3 - 12*zeta^2 - 8)*q^195 + (6*zeta^9 + 18*zeta^8 + 6*zeta^7 + 6*zeta^4 
+ 18*zeta^3 + 6*zeta^2 + 6)*q^196 + (-2*zeta^8 + 4*zeta^7 - 2*zeta^6 - 2*zeta^5 
+ 4*zeta^4 - 2*zeta^3)*q^197 - 44*q^198 + O(q^200), (zeta^8 - 2*zeta^7 + zeta^6 
+ zeta^5 - 2*zeta^4 + zeta^3)*q + (2*zeta^9 + 6*zeta^8 + 2*zeta^7 + 2*zeta^4 + 
6*zeta^3 + 2*zeta^2 + 2)*q^2 + (-3*zeta^9 - 2*zeta^8 - 3*zeta^7 - 2*zeta^6 - 
2*zeta^5 - 3*zeta^4 - 2*zeta^3 - 3*zeta^2 - 2)*q^3 + (-2*zeta^8 - 2*zeta^7 - 
6*zeta^6 - 6*zeta^5 - 2*zeta^4 - 2*zeta^3 - 2)*q^4 + (-2*zeta^9 + zeta^8 + 
zeta^7 + zeta^4 + zeta^3 - 2*zeta^2)*q^5 + (-4*zeta^9 + 2*zeta^8 + 2*zeta^7 + 
2*zeta^4 + 2*zeta^3 - 4*zeta^2)*q^6 + (2*zeta^8 + 2*zeta^7 + 6*zeta^6 + 6*zeta^5
+ 2*zeta^4 + 2*zeta^3 + 2)*q^7 + (2*zeta^9 + 6*zeta^8 + 2*zeta^7 + 2*zeta^4 + 
6*zeta^3 + 2*zeta^2 + 2)*q^9 + (-2*zeta^8 + 4*zeta^7 - 2*zeta^6 - 2*zeta^5 + 
4*zeta^4 - 2*zeta^3)*q^10 - 11*q^11 + (-2*zeta^8 + 4*zeta^7 - 2*zeta^6 - 
2*zeta^5 + 4*zeta^4 - 2*zeta^3)*q^12 + (-4*zeta^9 - 12*zeta^8 - 4*zeta^7 - 
4*zeta^4 - 12*zeta^3 - 4*zeta^2 - 4)*q^13 + (12*zeta^9 + 8*zeta^8 + 12*zeta^7 + 
8*zeta^6 + 8*zeta^5 + 12*zeta^4 + 8*zeta^3 + 12*zeta^2 + 8)*q^14 + (zeta^8 + 
zeta^7 + 3*zeta^6 + 3*zeta^5 + zeta^4 + zeta^3 + 1)*q^15 + (8*zeta^9 - 4*zeta^8 
- 4*zeta^7 - 4*zeta^4 - 4*zeta^3 + 8*zeta^2)*q^16 + (4*zeta^9 - 2*zeta^8 - 
2*zeta^7 - 2*zeta^4 - 2*zeta^3 + 4*zeta^2)*q^17 + (-4*zeta^8 - 4*zeta^7 - 
12*zeta^6 - 12*zeta^5 - 4*zeta^4 - 4*zeta^3 - 4)*q^18 + (-2*zeta^9 - 6*zeta^8 - 
2*zeta^7 - 2*zeta^4 - 6*zeta^3 - 2*zeta^2 - 2)*q^20 + (2*zeta^8 - 4*zeta^7 + 
2*zeta^6 + 2*zeta^5 - 4*zeta^4 + 2*zeta^3)*q^21 + 22*q^22 + (-zeta^8 + 2*zeta^7 
- zeta^6 - zeta^5 + 2*zeta^4 - zeta^3)*q^23 + (-12*zeta^9 - 8*zeta^8 - 12*zeta^7
- 8*zeta^6 - 8*zeta^5 - 12*zeta^4 - 8*zeta^3 - 12*zeta^2 - 8)*q^25 + (8*zeta^8 +
8*zeta^7 + 24*zeta^6 + 24*zeta^5 + 8*zeta^4 + 8*zeta^3 + 8)*q^26 + (-10*zeta^9 +
5*zeta^8 + 5*zeta^7 + 5*zeta^4 + 5*zeta^3 - 10*zeta^2)*q^27 + (8*zeta^9 - 
4*zeta^8 - 4*zeta^7 - 4*zeta^4 - 4*zeta^3 + 8*zeta^2)*q^28 + (6*zeta^9 + 
4*zeta^8 + 6*zeta^7 + 4*zeta^6 + 4*zeta^5 + 6*zeta^4 + 4*zeta^3 + 6*zeta^2 + 
4)*q^30 + (-7*zeta^9 - 21*zeta^8 - 7*zeta^7 - 7*zeta^4 - 21*zeta^3 - 7*zeta^2 - 
7)*q^31 + (8*zeta^8 - 16*zeta^7 + 8*zeta^6 + 8*zeta^5 - 16*zeta^4 + 
8*zeta^3)*q^32 + 11*q^33 + (4*zeta^8 - 8*zeta^7 + 4*zeta^6 + 4*zeta^5 - 8*zeta^4
+ 4*zeta^3)*q^34 + (2*zeta^9 + 6*zeta^8 + 2*zeta^7 + 2*zeta^4 + 6*zeta^3 + 
2*zeta^2 + 2)*q^35 + (-12*zeta^9 - 8*zeta^8 - 12*zeta^7 - 8*zeta^6 - 8*zeta^5 - 
12*zeta^4 - 8*zeta^3 - 12*zeta^2 - 8)*q^36 + (-3*zeta^8 - 3*zeta^7 - 9*zeta^6 - 
9*zeta^5 - 3*zeta^4 - 3*zeta^3 - 3)*q^37 + (8*zeta^9 - 4*zeta^8 - 4*zeta^7 - 
4*zeta^4 - 4*zeta^3 + 8*zeta^2)*q^39 + (-24*zeta^9 - 16*zeta^8 - 24*zeta^7 - 
16*zeta^6 - 16*zeta^5 - 24*zeta^4 - 16*zeta^3 - 24*zeta^2 - 16)*q^41 + (4*zeta^9
+ 12*zeta^8 + 4*zeta^7 + 4*zeta^4 + 12*zeta^3 + 4*zeta^2 + 4)*q^42 + (-6*zeta^8 
+ 12*zeta^7 - 6*zeta^6 - 6*zeta^5 + 12*zeta^4 - 6*zeta^3)*q^43 - 22*q^44 + 
(-2*zeta^8 + 4*zeta^7 - 2*zeta^6 - 2*zeta^5 + 4*zeta^4 - 2*zeta^3)*q^45 + 
(-2*zeta^9 - 6*zeta^8 - 2*zeta^7 - 2*zeta^4 - 6*zeta^3 - 2*zeta^2 - 2)*q^46 + 
(24*zeta^9 + 16*zeta^8 + 24*zeta^7 + 16*zeta^6 + 16*zeta^5 + 24*zeta^4 + 
16*zeta^3 + 24*zeta^2 + 16)*q^47 + (-4*zeta^8 - 4*zeta^7 - 12*zeta^6 - 12*zeta^5
- 4*zeta^4 - 4*zeta^3 - 4)*q^48 + (6*zeta^9 - 3*zeta^8 - 3*zeta^7 - 3*zeta^4 - 
3*zeta^3 + 6*zeta^2)*q^49 + (-16*zeta^9 + 8*zeta^8 + 8*zeta^7 + 8*zeta^4 + 
8*zeta^3 - 16*zeta^2)*q^50 + (-2*zeta^8 - 2*zeta^7 - 6*zeta^6 - 6*zeta^5 - 
2*zeta^4 - 2*zeta^3 - 2)*q^51 + (24*zeta^9 + 16*zeta^8 + 24*zeta^7 + 16*zeta^6 +
16*zeta^5 + 24*zeta^4 + 16*zeta^3 + 24*zeta^2 + 16)*q^52 + (6*zeta^9 + 18*zeta^8
+ 6*zeta^7 + 6*zeta^4 + 18*zeta^3 + 6*zeta^2 + 6)*q^53 + (-10*zeta^8 + 20*zeta^7
- 10*zeta^6 - 10*zeta^5 + 20*zeta^4 - 10*zeta^3)*q^54 - 11*q^55 + (-5*zeta^8 - 
5*zeta^7 - 15*zeta^6 - 15*zeta^5 - 5*zeta^4 - 5*zeta^3 - 5)*q^59 + (4*zeta^9 - 
2*zeta^8 - 2*zeta^7 - 2*zeta^4 - 2*zeta^3 + 4*zeta^2)*q^60 + (-24*zeta^9 + 
12*zeta^8 + 12*zeta^7 + 12*zeta^4 + 12*zeta^3 - 24*zeta^2)*q^61 + (14*zeta^8 + 
14*zeta^7 + 42*zeta^6 + 42*zeta^5 + 14*zeta^4 + 14*zeta^3 + 14)*q^62 + 
(12*zeta^9 + 8*zeta^8 + 12*zeta^7 + 8*zeta^6 + 8*zeta^5 + 12*zeta^4 + 8*zeta^3 +
12*zeta^2 + 8)*q^63 + (8*zeta^9 + 24*zeta^8 + 8*zeta^7 + 8*zeta^4 + 24*zeta^3 + 
8*zeta^2 + 8)*q^64 + (4*zeta^8 - 8*zeta^7 + 4*zeta^6 + 4*zeta^5 - 8*zeta^4 + 
4*zeta^3)*q^65 - 22*q^66 + (-7*zeta^8 + 14*zeta^7 - 7*zeta^6 - 7*zeta^5 + 
14*zeta^4 - 7*zeta^3)*q^67 + (4*zeta^9 + 12*zeta^8 + 4*zeta^7 + 4*zeta^4 + 
12*zeta^3 + 4*zeta^2 + 4)*q^68 + (3*zeta^9 + 2*zeta^8 + 3*zeta^7 + 2*zeta^6 + 
2*zeta^5 + 3*zeta^4 + 2*zeta^3 + 3*zeta^2 + 2)*q^69 + (-4*zeta^8 - 4*zeta^7 - 
12*zeta^6 - 12*zeta^5 - 4*zeta^4 - 4*zeta^3 - 4)*q^70 + (6*zeta^9 - 3*zeta^8 - 
3*zeta^7 - 3*zeta^4 - 3*zeta^3 + 6*zeta^2)*q^71 + (-4*zeta^8 - 4*zeta^7 - 
12*zeta^6 - 12*zeta^5 - 4*zeta^4 - 4*zeta^3 - 4)*q^73 + (-18*zeta^9 - 12*zeta^8 
- 18*zeta^7 - 12*zeta^6 - 12*zeta^5 - 18*zeta^4 - 12*zeta^3 - 18*zeta^2 - 
12)*q^74 + (-4*zeta^9 - 12*zeta^8 - 4*zeta^7 - 4*zeta^4 - 12*zeta^3 - 4*zeta^2 -
4)*q^75 + 22*q^77 + (8*zeta^8 - 16*zeta^7 + 8*zeta^6 + 8*zeta^5 - 16*zeta^4 + 
8*zeta^3)*q^78 + (10*zeta^9 + 30*zeta^8 + 10*zeta^7 + 10*zeta^4 + 30*zeta^3 + 
10*zeta^2 + 10)*q^79 + (-12*zeta^9 - 8*zeta^8 - 12*zeta^7 - 8*zeta^6 - 8*zeta^5 
- 12*zeta^4 - 8*zeta^3 - 12*zeta^2 - 8)*q^80 + (-zeta^8 - zeta^7 - 3*zeta^6 - 
3*zeta^5 - zeta^4 - zeta^3 - 1)*q^81 + (-32*zeta^9 + 16*zeta^8 + 16*zeta^7 + 
16*zeta^4 + 16*zeta^3 - 32*zeta^2)*q^82 + (12*zeta^9 - 6*zeta^8 - 6*zeta^7 - 
6*zeta^4 - 6*zeta^3 + 12*zeta^2)*q^83 + (-4*zeta^8 - 4*zeta^7 - 12*zeta^6 - 
12*zeta^5 - 4*zeta^4 - 4*zeta^3 - 4)*q^84 + (-6*zeta^9 - 4*zeta^8 - 6*zeta^7 - 
4*zeta^6 - 4*zeta^5 - 6*zeta^4 - 4*zeta^3 - 6*zeta^2 - 4)*q^85 + (-12*zeta^9 - 
36*zeta^8 - 12*zeta^7 - 12*zeta^4 - 36*zeta^3 - 12*zeta^2 - 12)*q^86 + 
(15*zeta^8 - 30*zeta^7 + 15*zeta^6 + 15*zeta^5 - 30*zeta^4 + 15*zeta^3)*q^89 + 
(-4*zeta^9 - 12*zeta^8 - 4*zeta^7 - 4*zeta^4 - 12*zeta^3 - 4*zeta^2 - 4)*q^90 + 
(-24*zeta^9 - 16*zeta^8 - 24*zeta^7 - 16*zeta^6 - 16*zeta^5 - 24*zeta^4 - 
16*zeta^3 - 24*zeta^2 - 16)*q^91 + (2*zeta^8 + 2*zeta^7 + 6*zeta^6 + 6*zeta^5 + 
2*zeta^4 + 2*zeta^3 + 2)*q^92 + (14*zeta^9 - 7*zeta^8 - 7*zeta^7 - 7*zeta^4 - 
7*zeta^3 + 14*zeta^2)*q^93 + (32*zeta^9 - 16*zeta^8 - 16*zeta^7 - 16*zeta^4 - 
16*zeta^3 + 32*zeta^2)*q^94 + (-24*zeta^9 - 16*zeta^8 - 24*zeta^7 - 16*zeta^6 - 
16*zeta^5 - 24*zeta^4 - 16*zeta^3 - 24*zeta^2 - 16)*q^96 + (7*zeta^9 + 21*zeta^8
+ 7*zeta^7 + 7*zeta^4 + 21*zeta^3 + 7*zeta^2 + 7)*q^97 + (6*zeta^8 - 12*zeta^7 +
6*zeta^6 + 6*zeta^5 - 12*zeta^4 + 6*zeta^3)*q^98 + 22*q^99 + (-8*zeta^8 + 
16*zeta^7 - 8*zeta^6 - 8*zeta^5 + 16*zeta^4 - 8*zeta^3)*q^100 + (-2*zeta^9 - 
6*zeta^8 - 2*zeta^7 - 2*zeta^4 - 6*zeta^3 - 2*zeta^2 - 2)*q^101 + (-12*zeta^9 - 
8*zeta^8 - 12*zeta^7 - 8*zeta^6 - 8*zeta^5 - 12*zeta^4 - 8*zeta^3 - 12*zeta^2 - 
8)*q^102 + (16*zeta^8 + 16*zeta^7 + 48*zeta^6 + 48*zeta^5 + 16*zeta^4 + 
16*zeta^3 + 16)*q^103 + (-4*zeta^9 + 2*zeta^8 + 2*zeta^7 + 2*zeta^4 + 2*zeta^3 -
4*zeta^2)*q^105 + (-12*zeta^8 - 12*zeta^7 - 36*zeta^6 - 36*zeta^5 - 12*zeta^4 - 
12*zeta^3 - 12)*q^106 + (54*zeta^9 + 36*zeta^8 + 54*zeta^7 + 36*zeta^6 + 
36*zeta^5 + 54*zeta^4 + 36*zeta^3 + 54*zeta^2 + 36)*q^107 + (-10*zeta^9 - 
30*zeta^8 - 10*zeta^7 - 10*zeta^4 - 30*zeta^3 - 10*zeta^2 - 10)*q^108 + 
(10*zeta^8 - 20*zeta^7 + 10*zeta^6 + 10*zeta^5 - 20*zeta^4 + 10*zeta^3)*q^109 + 
22*q^110 + (-3*zeta^8 + 6*zeta^7 - 3*zeta^6 - 3*zeta^5 + 6*zeta^4 - 
3*zeta^3)*q^111 + (-8*zeta^9 - 24*zeta^8 - 8*zeta^7 - 8*zeta^4 - 24*zeta^3 - 
8*zeta^2 - 8)*q^112 + (27*zeta^9 + 18*zeta^8 + 27*zeta^7 + 18*zeta^6 + 18*zeta^5
+ 27*zeta^4 + 18*zeta^3 + 27*zeta^2 + 18)*q^113 + (2*zeta^9 - zeta^8 - zeta^7 - 
zeta^4 - zeta^3 + 2*zeta^2)*q^115 + (8*zeta^8 + 8*zeta^7 + 24*zeta^6 + 24*zeta^5
+ 8*zeta^4 + 8*zeta^3 + 8)*q^117 + (-30*zeta^9 - 20*zeta^8 - 30*zeta^7 - 
20*zeta^6 - 20*zeta^5 - 30*zeta^4 - 20*zeta^3 - 30*zeta^2 - 20)*q^118 + 
(-4*zeta^9 - 12*zeta^8 - 4*zeta^7 - 4*zeta^4 - 12*zeta^3 - 4*zeta^2 - 4)*q^119 -
11*q^121 + (-24*zeta^8 + 48*zeta^7 - 24*zeta^6 - 24*zeta^5 + 48*zeta^4 - 
24*zeta^3)*q^122 + (-8*zeta^9 - 24*zeta^8 - 8*zeta^7 - 8*zeta^4 - 24*zeta^3 - 
8*zeta^2 - 8)*q^123 + (42*zeta^9 + 28*zeta^8 + 42*zeta^7 + 28*zeta^6 + 28*zeta^5
+ 42*zeta^4 + 28*zeta^3 + 42*zeta^2 + 28)*q^124 + (9*zeta^8 + 9*zeta^7 + 
27*zeta^6 + 27*zeta^5 + 9*zeta^4 + 9*zeta^3 + 9)*q^125 + (16*zeta^9 - 8*zeta^8 -
8*zeta^7 - 8*zeta^4 - 8*zeta^3 + 16*zeta^2)*q^126 + (-16*zeta^9 + 8*zeta^8 + 
8*zeta^7 + 8*zeta^4 + 8*zeta^3 - 16*zeta^2)*q^127 + (18*zeta^9 + 12*zeta^8 + 
18*zeta^7 + 12*zeta^6 + 12*zeta^5 + 18*zeta^4 + 12*zeta^3 + 18*zeta^2 + 
12)*q^129 + (8*zeta^9 + 24*zeta^8 + 8*zeta^7 + 8*zeta^4 + 24*zeta^3 + 8*zeta^2 +
8)*q^130 + (-18*zeta^8 + 36*zeta^7 - 18*zeta^6 - 18*zeta^5 + 36*zeta^4 - 
18*zeta^3)*q^131 + 22*q^132 + (-14*zeta^9 - 42*zeta^8 - 14*zeta^7 - 14*zeta^4 - 
42*zeta^3 - 14*zeta^2 - 14)*q^134 + (15*zeta^9 + 10*zeta^8 + 15*zeta^7 + 
10*zeta^6 + 10*zeta^5 + 15*zeta^4 + 10*zeta^3 + 15*zeta^2 + 10)*q^135 + 
(14*zeta^9 - 7*zeta^8 - 7*zeta^7 - 7*zeta^4 - 7*zeta^3 + 14*zeta^2)*q^137 + 
(4*zeta^9 - 2*zeta^8 - 2*zeta^7 - 2*zeta^4 - 2*zeta^3 + 4*zeta^2)*q^138 + 
(-10*zeta^8 - 10*zeta^7 - 30*zeta^6 - 30*zeta^5 - 10*zeta^4 - 10*zeta^3 - 
10)*q^139 + (-12*zeta^9 - 8*zeta^8 - 12*zeta^7 - 8*zeta^6 - 8*zeta^5 - 12*zeta^4
- 8*zeta^3 - 12*zeta^2 - 8)*q^140 + (8*zeta^9 + 24*zeta^8 + 8*zeta^7 + 8*zeta^4 
+ 24*zeta^3 + 8*zeta^2 + 8)*q^141 + (6*zeta^8 - 12*zeta^7 + 6*zeta^6 + 6*zeta^5 
- 12*zeta^4 + 6*zeta^3)*q^142 - 44*q^143 + (8*zeta^8 - 16*zeta^7 + 8*zeta^6 + 
8*zeta^5 - 16*zeta^4 + 8*zeta^3)*q^144 + (-24*zeta^9 - 16*zeta^8 - 24*zeta^7 - 
16*zeta^6 - 16*zeta^5 - 24*zeta^4 - 16*zeta^3 - 24*zeta^2 - 16)*q^146 + 
(-3*zeta^8 - 3*zeta^7 - 9*zeta^6 - 9*zeta^5 - 3*zeta^4 - 3*zeta^3 - 3)*q^147 + 
(-12*zeta^9 + 6*zeta^8 + 6*zeta^7 + 6*zeta^4 + 6*zeta^3 - 12*zeta^2)*q^148 + 
(20*zeta^9 - 10*zeta^8 - 10*zeta^7 - 10*zeta^4 - 10*zeta^3 + 20*zeta^2)*q^149 + 
(8*zeta^8 + 8*zeta^7 + 24*zeta^6 + 24*zeta^5 + 8*zeta^4 + 8*zeta^3 + 8)*q^150 + 
(6*zeta^9 + 4*zeta^8 + 6*zeta^7 + 4*zeta^6 + 4*zeta^5 + 6*zeta^4 + 4*zeta^3 + 
6*zeta^2 + 4)*q^151 + (4*zeta^8 - 8*zeta^7 + 4*zeta^6 + 4*zeta^5 - 8*zeta^4 + 
4*zeta^3)*q^153 - 44*q^154 + (7*zeta^8 - 14*zeta^7 + 7*zeta^6 + 7*zeta^5 - 
14*zeta^4 + 7*zeta^3)*q^155 + (8*zeta^9 + 24*zeta^8 + 8*zeta^7 + 8*zeta^4 + 
24*zeta^3 + 8*zeta^2 + 8)*q^156 + (-21*zeta^9 - 14*zeta^8 - 21*zeta^7 - 
14*zeta^6 - 14*zeta^5 - 21*zeta^4 - 14*zeta^3 - 21*zeta^2 - 14)*q^157 + 
(-20*zeta^8 - 20*zeta^7 - 60*zeta^6 - 60*zeta^5 - 20*zeta^4 - 20*zeta^3 - 
20)*q^158 + (-12*zeta^9 + 6*zeta^8 + 6*zeta^7 + 6*zeta^4 + 6*zeta^3 - 
12*zeta^2)*q^159 + (-16*zeta^9 + 8*zeta^8 + 8*zeta^7 + 8*zeta^4 + 8*zeta^3 - 
16*zeta^2)*q^160 + (-2*zeta^8 - 2*zeta^7 - 6*zeta^6 - 6*zeta^5 - 2*zeta^4 - 
2*zeta^3 - 2)*q^161 + (-6*zeta^9 - 4*zeta^8 - 6*zeta^7 - 4*zeta^6 - 4*zeta^5 - 
6*zeta^4 - 4*zeta^3 - 6*zeta^2 - 4)*q^162 + (-4*zeta^9 - 12*zeta^8 - 4*zeta^7 - 
4*zeta^4 - 12*zeta^3 - 4*zeta^2 - 4)*q^163 + (-16*zeta^8 + 32*zeta^7 - 16*zeta^6
- 16*zeta^5 + 32*zeta^4 - 16*zeta^3)*q^164 + 11*q^165 + (12*zeta^8 - 24*zeta^7 +
12*zeta^6 + 12*zeta^5 - 24*zeta^4 + 12*zeta^3)*q^166 + (12*zeta^9 + 36*zeta^8 + 
12*zeta^7 + 12*zeta^4 + 36*zeta^3 + 12*zeta^2 + 12)*q^167 + (-3*zeta^8 - 
3*zeta^7 - 9*zeta^6 - 9*zeta^5 - 3*zeta^4 - 3*zeta^3 - 3)*q^169 + (-8*zeta^9 + 
4*zeta^8 + 4*zeta^7 + 4*zeta^4 + 4*zeta^3 - 8*zeta^2)*q^170 + (12*zeta^8 + 
12*zeta^7 + 36*zeta^6 + 36*zeta^5 + 12*zeta^4 + 12*zeta^3 + 12)*q^172 + 
(-18*zeta^9 - 12*zeta^8 - 18*zeta^7 - 12*zeta^6 - 12*zeta^5 - 18*zeta^4 - 
12*zeta^3 - 18*zeta^2 - 12)*q^173 + (8*zeta^8 - 16*zeta^7 + 8*zeta^6 + 8*zeta^5 
- 16*zeta^4 + 8*zeta^3)*q^175 + 44*q^176 + (-5*zeta^8 + 10*zeta^7 - 5*zeta^6 - 
5*zeta^5 + 10*zeta^4 - 5*zeta^3)*q^177 + (30*zeta^9 + 90*zeta^8 + 30*zeta^7 + 
30*zeta^4 + 90*zeta^3 + 30*zeta^2 + 30)*q^178 + (-45*zeta^9 - 30*zeta^8 - 
45*zeta^7 - 30*zeta^6 - 30*zeta^5 - 45*zeta^4 - 30*zeta^3 - 45*zeta^2 - 
30)*q^179 + (4*zeta^8 + 4*zeta^7 + 12*zeta^6 + 12*zeta^5 + 4*zeta^4 + 4*zeta^3 +
4)*q^180 + (-14*zeta^9 + 7*zeta^8 + 7*zeta^7 + 7*zeta^4 + 7*zeta^3 - 
14*zeta^2)*q^181 + (-32*zeta^9 + 16*zeta^8 + 16*zeta^7 + 16*zeta^4 + 16*zeta^3 -
32*zeta^2)*q^182 + (12*zeta^8 + 12*zeta^7 + 36*zeta^6 + 36*zeta^5 + 12*zeta^4 + 
12*zeta^3 + 12)*q^183 + (-3*zeta^9 - 9*zeta^8 - 3*zeta^7 - 3*zeta^4 - 9*zeta^3 -
3*zeta^2 - 3)*q^185 + (14*zeta^8 - 28*zeta^7 + 14*zeta^6 + 14*zeta^5 - 28*zeta^4
+ 14*zeta^3)*q^186 + 22*q^187 + (16*zeta^8 - 32*zeta^7 + 16*zeta^6 + 16*zeta^5 -
32*zeta^4 + 16*zeta^3)*q^188 + (10*zeta^9 + 30*zeta^8 + 10*zeta^7 + 10*zeta^4 + 
30*zeta^3 + 10*zeta^2 + 10)*q^189 + (-17*zeta^8 - 17*zeta^7 - 51*zeta^6 - 
51*zeta^5 - 17*zeta^4 - 17*zeta^3 - 17)*q^191 + (-16*zeta^9 + 8*zeta^8 + 
8*zeta^7 + 8*zeta^4 + 8*zeta^3 - 16*zeta^2)*q^192 + (-8*zeta^9 + 4*zeta^8 + 
4*zeta^7 + 4*zeta^4 + 4*zeta^3 - 8*zeta^2)*q^193 + (-14*zeta^8 - 14*zeta^7 - 
42*zeta^6 - 42*zeta^5 - 14*zeta^4 - 14*zeta^3 - 14)*q^194 + (-12*zeta^9 - 
8*zeta^8 - 12*zeta^7 - 8*zeta^6 - 8*zeta^5 - 12*zeta^4 - 8*zeta^3 - 12*zeta^2 - 
8)*q^195 + (6*zeta^9 + 18*zeta^8 + 6*zeta^7 + 6*zeta^4 + 18*zeta^3 + 6*zeta^2 + 
6)*q^196 + (-2*zeta^8 + 4*zeta^7 - 2*zeta^6 - 2*zeta^5 + 4*zeta^4 - 
2*zeta^3)*q^197 - 44*q^198 + O(q^200), (2*zeta^8 + zeta^7 + 2*zeta^6 + 2*zeta^5 
+ zeta^4 + 2*zeta^3)*q + (4*zeta^9 + 2*zeta^8 + 4*zeta^7 + 4*zeta^4 + 2*zeta^3 +
4*zeta^2 + 4)*q^2 + (-zeta^9 + zeta^8 - zeta^7 + zeta^6 + zeta^5 - zeta^4 + 
zeta^3 - zeta^2 + 1)*q^3 + (-4*zeta^8 - 4*zeta^7 - 2*zeta^6 - 2*zeta^5 - 
4*zeta^4 - 4*zeta^3 - 4)*q^4 + (zeta^9 + 2*zeta^8 + 2*zeta^7 + 2*zeta^4 + 
2*zeta^3 + zeta^2)*q^5 + (2*zeta^9 + 4*zeta^8 + 4*zeta^7 + 4*zeta^4 + 4*zeta^3 +
2*zeta^2)*q^6 + (4*zeta^8 + 4*zeta^7 + 2*zeta^6 + 2*zeta^5 + 4*zeta^4 + 4*zeta^3
+ 4)*q^7 + (4*zeta^9 + 2*zeta^8 + 4*zeta^7 + 4*zeta^4 + 2*zeta^3 + 4*zeta^2 + 
4)*q^9 + (-4*zeta^8 - 2*zeta^7 - 4*zeta^6 - 4*zeta^5 - 2*zeta^4 - 4*zeta^3)*q^10
- 12*q^11 + (-4*zeta^8 - 2*zeta^7 - 4*zeta^6 - 4*zeta^5 - 2*zeta^4 - 
4*zeta^3)*q^12 + (-8*zeta^9 - 4*zeta^8 - 8*zeta^7 - 8*zeta^4 - 4*zeta^3 - 
8*zeta^2 - 8)*q^13 + (4*zeta^9 - 4*zeta^8 + 4*zeta^7 - 4*zeta^6 - 4*zeta^5 + 
4*zeta^4 - 4*zeta^3 + 4*zeta^2 - 4)*q^14 + (2*zeta^8 + 2*zeta^7 + zeta^6 + 
zeta^5 + 2*zeta^4 + 2*zeta^3 + 2)*q^15 + (-4*zeta^9 - 8*zeta^8 - 8*zeta^7 - 
8*zeta^4 - 8*zeta^3 - 4*zeta^2)*q^16 + (-2*zeta^9 - 4*zeta^8 - 4*zeta^7 - 
4*zeta^4 - 4*zeta^3 - 2*zeta^2)*q^17 + (-8*zeta^8 - 8*zeta^7 - 4*zeta^6 - 
4*zeta^5 - 8*zeta^4 - 8*zeta^3 - 8)*q^18 + (-4*zeta^9 - 2*zeta^8 - 4*zeta^7 - 
4*zeta^4 - 2*zeta^3 - 4*zeta^2 - 4)*q^20 + (4*zeta^8 + 2*zeta^7 + 4*zeta^6 + 
4*zeta^5 + 2*zeta^4 + 4*zeta^3)*q^21 + 24*q^22 + (-2*zeta^8 - zeta^7 - 2*zeta^6 
- 2*zeta^5 - zeta^4 - 2*zeta^3)*q^23 + (-4*zeta^9 + 4*zeta^8 - 4*zeta^7 + 
4*zeta^6 + 4*zeta^5 - 4*zeta^4 + 4*zeta^3 - 4*zeta^2 + 4)*q^25 + (16*zeta^8 + 
16*zeta^7 + 8*zeta^6 + 8*zeta^5 + 16*zeta^4 + 16*zeta^3 + 16)*q^26 + (5*zeta^9 +
10*zeta^8 + 10*zeta^7 + 10*zeta^4 + 10*zeta^3 + 5*zeta^2)*q^27 + (-4*zeta^9 - 
8*zeta^8 - 8*zeta^7 - 8*zeta^4 - 8*zeta^3 - 4*zeta^2)*q^28 + (2*zeta^9 - 
2*zeta^8 + 2*zeta^7 - 2*zeta^6 - 2*zeta^5 + 2*zeta^4 - 2*zeta^3 + 2*zeta^2 - 
2)*q^30 + (-14*zeta^9 - 7*zeta^8 - 14*zeta^7 - 14*zeta^4 - 7*zeta^3 - 14*zeta^2 
- 14)*q^31 + (16*zeta^8 + 8*zeta^7 + 16*zeta^6 + 16*zeta^5 + 8*zeta^4 + 
16*zeta^3)*q^32 + 12*q^33 + (8*zeta^8 + 4*zeta^7 + 8*zeta^6 + 8*zeta^5 + 
4*zeta^4 + 8*zeta^3)*q^34 + (4*zeta^9 + 2*zeta^8 + 4*zeta^7 + 4*zeta^4 + 
2*zeta^3 + 4*zeta^2 + 4)*q^35 + (-4*zeta^9 + 4*zeta^8 - 4*zeta^7 + 4*zeta^6 + 
4*zeta^5 - 4*zeta^4 + 4*zeta^3 - 4*zeta^2 + 4)*q^36 + (-6*zeta^8 - 6*zeta^7 - 
3*zeta^6 - 3*zeta^5 - 6*zeta^4 - 6*zeta^3 - 6)*q^37 + (-4*zeta^9 - 8*zeta^8 - 
8*zeta^7 - 8*zeta^4 - 8*zeta^3 - 4*zeta^2)*q^39 + (-8*zeta^9 + 8*zeta^8 - 
8*zeta^7 + 8*zeta^6 + 8*zeta^5 - 8*zeta^4 + 8*zeta^3 - 8*zeta^2 + 8)*q^41 + 
(8*zeta^9 + 4*zeta^8 + 8*zeta^7 + 8*zeta^4 + 4*zeta^3 + 8*zeta^2 + 8)*q^42 + 
(-12*zeta^8 - 6*zeta^7 - 12*zeta^6 - 12*zeta^5 - 6*zeta^4 - 12*zeta^3)*q^43 - 
24*q^44 + (-4*zeta^8 - 2*zeta^7 - 4*zeta^6 - 4*zeta^5 - 2*zeta^4 - 
4*zeta^3)*q^45 + (-4*zeta^9 - 2*zeta^8 - 4*zeta^7 - 4*zeta^4 - 2*zeta^3 - 
4*zeta^2 - 4)*q^46 + (8*zeta^9 - 8*zeta^8 + 8*zeta^7 - 8*zeta^6 - 8*zeta^5 + 
8*zeta^4 - 8*zeta^3 + 8*zeta^2 - 8)*q^47 + (-8*zeta^8 - 8*zeta^7 - 4*zeta^6 - 
4*zeta^5 - 8*zeta^4 - 8*zeta^3 - 8)*q^48 + (-3*zeta^9 - 6*zeta^8 - 6*zeta^7 - 
6*zeta^4 - 6*zeta^3 - 3*zeta^2)*q^49 + (8*zeta^9 + 16*zeta^8 + 16*zeta^7 + 
16*zeta^4 + 16*zeta^3 + 8*zeta^2)*q^50 + (-4*zeta^8 - 4*zeta^7 - 2*zeta^6 - 
2*zeta^5 - 4*zeta^4 - 4*zeta^3 - 4)*q^51 + (8*zeta^9 - 8*zeta^8 + 8*zeta^7 - 
8*zeta^6 - 8*zeta^5 + 8*zeta^4 - 8*zeta^3 + 8*zeta^2 - 8)*q^52 + (12*zeta^9 + 
6*zeta^8 + 12*zeta^7 + 12*zeta^4 + 6*zeta^3 + 12*zeta^2 + 12)*q^53 + (-20*zeta^8
- 10*zeta^7 - 20*zeta^6 - 20*zeta^5 - 10*zeta^4 - 20*zeta^3)*q^54 - 12*q^55 + 
(-10*zeta^8 - 10*zeta^7 - 5*zeta^6 - 5*zeta^5 - 10*zeta^4 - 10*zeta^3 - 10)*q^59
+ (-2*zeta^9 - 4*zeta^8 - 4*zeta^7 - 4*zeta^4 - 4*zeta^3 - 2*zeta^2)*q^60 + 
(12*zeta^9 + 24*zeta^8 + 24*zeta^7 + 24*zeta^4 + 24*zeta^3 + 12*zeta^2)*q^61 + 
(28*zeta^8 + 28*zeta^7 + 14*zeta^6 + 14*zeta^5 + 28*zeta^4 + 28*zeta^3 + 
28)*q^62 + (4*zeta^9 - 4*zeta^8 + 4*zeta^7 - 4*zeta^6 - 4*zeta^5 + 4*zeta^4 - 
4*zeta^3 + 4*zeta^2 - 4)*q^63 + (16*zeta^9 + 8*zeta^8 + 16*zeta^7 + 16*zeta^4 + 
8*zeta^3 + 16*zeta^2 + 16)*q^64 + (8*zeta^8 + 4*zeta^7 + 8*zeta^6 + 8*zeta^5 + 
4*zeta^4 + 8*zeta^3)*q^65 - 24*q^66 + (-14*zeta^8 - 7*zeta^7 - 14*zeta^6 - 
14*zeta^5 - 7*zeta^4 - 14*zeta^3)*q^67 + (8*zeta^9 + 4*zeta^8 + 8*zeta^7 + 
8*zeta^4 + 4*zeta^3 + 8*zeta^2 + 8)*q^68 + (zeta^9 - zeta^8 + zeta^7 - zeta^6 - 
zeta^5 + zeta^4 - zeta^3 + zeta^2 - 1)*q^69 + (-8*zeta^8 - 8*zeta^7 - 4*zeta^6 -
4*zeta^5 - 8*zeta^4 - 8*zeta^3 - 8)*q^70 + (-3*zeta^9 - 6*zeta^8 - 6*zeta^7 - 
6*zeta^4 - 6*zeta^3 - 3*zeta^2)*q^71 + (-8*zeta^8 - 8*zeta^7 - 4*zeta^6 - 
4*zeta^5 - 8*zeta^4 - 8*zeta^3 - 8)*q^73 + (-6*zeta^9 + 6*zeta^8 - 6*zeta^7 + 
6*zeta^6 + 6*zeta^5 - 6*zeta^4 + 6*zeta^3 - 6*zeta^2 + 6)*q^74 + (-8*zeta^9 - 
4*zeta^8 - 8*zeta^7 - 8*zeta^4 - 4*zeta^3 - 8*zeta^2 - 8)*q^75 + 24*q^77 + 
(16*zeta^8 + 8*zeta^7 + 16*zeta^6 + 16*zeta^5 + 8*zeta^4 + 16*zeta^3)*q^78 + 
(20*zeta^9 + 10*zeta^8 + 20*zeta^7 + 20*zeta^4 + 10*zeta^3 + 20*zeta^2 + 
20)*q^79 + (-4*zeta^9 + 4*zeta^8 - 4*zeta^7 + 4*zeta^6 + 4*zeta^5 - 4*zeta^4 + 
4*zeta^3 - 4*zeta^2 + 4)*q^80 + (-2*zeta^8 - 2*zeta^7 - zeta^6 - zeta^5 - 
2*zeta^4 - 2*zeta^3 - 2)*q^81 + (16*zeta^9 + 32*zeta^8 + 32*zeta^7 + 32*zeta^4 +
32*zeta^3 + 16*zeta^2)*q^82 + (-6*zeta^9 - 12*zeta^8 - 12*zeta^7 - 12*zeta^4 - 
12*zeta^3 - 6*zeta^2)*q^83 + (-8*zeta^8 - 8*zeta^7 - 4*zeta^6 - 4*zeta^5 - 
8*zeta^4 - 8*zeta^3 - 8)*q^84 + (-2*zeta^9 + 2*zeta^8 - 2*zeta^7 + 2*zeta^6 + 
2*zeta^5 - 2*zeta^4 + 2*zeta^3 - 2*zeta^2 + 2)*q^85 + (-24*zeta^9 - 12*zeta^8 - 
24*zeta^7 - 24*zeta^4 - 12*zeta^3 - 24*zeta^2 - 24)*q^86 + (30*zeta^8 + 
15*zeta^7 + 30*zeta^6 + 30*zeta^5 + 15*zeta^4 + 30*zeta^3)*q^89 + (-8*zeta^9 - 
4*zeta^8 - 8*zeta^7 - 8*zeta^4 - 4*zeta^3 - 8*zeta^2 - 8)*q^90 + (-8*zeta^9 + 
8*zeta^8 - 8*zeta^7 + 8*zeta^6 + 8*zeta^5 - 8*zeta^4 + 8*zeta^3 - 8*zeta^2 + 
8)*q^91 + (4*zeta^8 + 4*zeta^7 + 2*zeta^6 + 2*zeta^5 + 4*zeta^4 + 4*zeta^3 + 
4)*q^92 + (-7*zeta^9 - 14*zeta^8 - 14*zeta^7 - 14*zeta^4 - 14*zeta^3 - 
7*zeta^2)*q^93 + (-16*zeta^9 - 32*zeta^8 - 32*zeta^7 - 32*zeta^4 - 32*zeta^3 - 
16*zeta^2)*q^94 + (-8*zeta^9 + 8*zeta^8 - 8*zeta^7 + 8*zeta^6 + 8*zeta^5 - 
8*zeta^4 + 8*zeta^3 - 8*zeta^2 + 8)*q^96 + (14*zeta^9 + 7*zeta^8 + 14*zeta^7 + 
14*zeta^4 + 7*zeta^3 + 14*zeta^2 + 14)*q^97 + (12*zeta^8 + 6*zeta^7 + 12*zeta^6 
+ 12*zeta^5 + 6*zeta^4 + 12*zeta^3)*q^98 + 24*q^99 + (-16*zeta^8 - 8*zeta^7 - 
16*zeta^6 - 16*zeta^5 - 8*zeta^4 - 16*zeta^3)*q^100 + (-4*zeta^9 - 2*zeta^8 - 
4*zeta^7 - 4*zeta^4 - 2*zeta^3 - 4*zeta^2 - 4)*q^101 + (-4*zeta^9 + 4*zeta^8 - 
4*zeta^7 + 4*zeta^6 + 4*zeta^5 - 4*zeta^4 + 4*zeta^3 - 4*zeta^2 + 4)*q^102 + 
(32*zeta^8 + 32*zeta^7 + 16*zeta^6 + 16*zeta^5 + 32*zeta^4 + 32*zeta^3 + 
32)*q^103 + (2*zeta^9 + 4*zeta^8 + 4*zeta^7 + 4*zeta^4 + 4*zeta^3 + 
2*zeta^2)*q^105 + (-24*zeta^8 - 24*zeta^7 - 12*zeta^6 - 12*zeta^5 - 24*zeta^4 - 
24*zeta^3 - 24)*q^106 + (18*zeta^9 - 18*zeta^8 + 18*zeta^7 - 18*zeta^6 - 
18*zeta^5 + 18*zeta^4 - 18*zeta^3 + 18*zeta^2 - 18)*q^107 + (-20*zeta^9 - 
10*zeta^8 - 20*zeta^7 - 20*zeta^4 - 10*zeta^3 - 20*zeta^2 - 20)*q^108 + 
(20*zeta^8 + 10*zeta^7 + 20*zeta^6 + 20*zeta^5 + 10*zeta^4 + 20*zeta^3)*q^109 + 
24*q^110 + (-6*zeta^8 - 3*zeta^7 - 6*zeta^6 - 6*zeta^5 - 3*zeta^4 - 
6*zeta^3)*q^111 + (-16*zeta^9 - 8*zeta^8 - 16*zeta^7 - 16*zeta^4 - 8*zeta^3 - 
16*zeta^2 - 16)*q^112 + (9*zeta^9 - 9*zeta^8 + 9*zeta^7 - 9*zeta^6 - 9*zeta^5 + 
9*zeta^4 - 9*zeta^3 + 9*zeta^2 - 9)*q^113 + (-zeta^9 - 2*zeta^8 - 2*zeta^7 - 
2*zeta^4 - 2*zeta^3 - zeta^2)*q^115 + (16*zeta^8 + 16*zeta^7 + 8*zeta^6 + 
8*zeta^5 + 16*zeta^4 + 16*zeta^3 + 16)*q^117 + (-10*zeta^9 + 10*zeta^8 - 
10*zeta^7 + 10*zeta^6 + 10*zeta^5 - 10*zeta^4 + 10*zeta^3 - 10*zeta^2 + 
10)*q^118 + (-8*zeta^9 - 4*zeta^8 - 8*zeta^7 - 8*zeta^4 - 4*zeta^3 - 8*zeta^2 - 
8)*q^119 - 12*q^121 + (-48*zeta^8 - 24*zeta^7 - 48*zeta^6 - 48*zeta^5 - 
24*zeta^4 - 48*zeta^3)*q^122 + (-16*zeta^9 - 8*zeta^8 - 16*zeta^7 - 16*zeta^4 - 
8*zeta^3 - 16*zeta^2 - 16)*q^123 + (14*zeta^9 - 14*zeta^8 + 14*zeta^7 - 
14*zeta^6 - 14*zeta^5 + 14*zeta^4 - 14*zeta^3 + 14*zeta^2 - 14)*q^124 + 
(18*zeta^8 + 18*zeta^7 + 9*zeta^6 + 9*zeta^5 + 18*zeta^4 + 18*zeta^3 + 18)*q^125
+ (-8*zeta^9 - 16*zeta^8 - 16*zeta^7 - 16*zeta^4 - 16*zeta^3 - 8*zeta^2)*q^126 +
(8*zeta^9 + 16*zeta^8 + 16*zeta^7 + 16*zeta^4 + 16*zeta^3 + 8*zeta^2)*q^127 + 
(6*zeta^9 - 6*zeta^8 + 6*zeta^7 - 6*zeta^6 - 6*zeta^5 + 6*zeta^4 - 6*zeta^3 + 
6*zeta^2 - 6)*q^129 + (16*zeta^9 + 8*zeta^8 + 16*zeta^7 + 16*zeta^4 + 8*zeta^3 +
16*zeta^2 + 16)*q^130 + (-36*zeta^8 - 18*zeta^7 - 36*zeta^6 - 36*zeta^5 - 
18*zeta^4 - 36*zeta^3)*q^131 + 24*q^132 + (-28*zeta^9 - 14*zeta^8 - 28*zeta^7 - 
28*zeta^4 - 14*zeta^3 - 28*zeta^2 - 28)*q^134 + (5*zeta^9 - 5*zeta^8 + 5*zeta^7 
- 5*zeta^6 - 5*zeta^5 + 5*zeta^4 - 5*zeta^3 + 5*zeta^2 - 5)*q^135 + (-7*zeta^9 -
14*zeta^8 - 14*zeta^7 - 14*zeta^4 - 14*zeta^3 - 7*zeta^2)*q^137 + (-2*zeta^9 - 
4*zeta^8 - 4*zeta^7 - 4*zeta^4 - 4*zeta^3 - 2*zeta^2)*q^138 + (-20*zeta^8 - 
20*zeta^7 - 10*zeta^6 - 10*zeta^5 - 20*zeta^4 - 20*zeta^3 - 20)*q^139 + 
(-4*zeta^9 + 4*zeta^8 - 4*zeta^7 + 4*zeta^6 + 4*zeta^5 - 4*zeta^4 + 4*zeta^3 - 
4*zeta^2 + 4)*q^140 + (16*zeta^9 + 8*zeta^8 + 16*zeta^7 + 16*zeta^4 + 8*zeta^3 +
16*zeta^2 + 16)*q^141 + (12*zeta^8 + 6*zeta^7 + 12*zeta^6 + 12*zeta^5 + 6*zeta^4
+ 12*zeta^3)*q^142 - 48*q^143 + (16*zeta^8 + 8*zeta^7 + 16*zeta^6 + 16*zeta^5 + 
8*zeta^4 + 16*zeta^3)*q^144 + (-8*zeta^9 + 8*zeta^8 - 8*zeta^7 + 8*zeta^6 + 
8*zeta^5 - 8*zeta^4 + 8*zeta^3 - 8*zeta^2 + 8)*q^146 + (-6*zeta^8 - 6*zeta^7 - 
3*zeta^6 - 3*zeta^5 - 6*zeta^4 - 6*zeta^3 - 6)*q^147 + (6*zeta^9 + 12*zeta^8 + 
12*zeta^7 + 12*zeta^4 + 12*zeta^3 + 6*zeta^2)*q^148 + (-10*zeta^9 - 20*zeta^8 - 
20*zeta^7 - 20*zeta^4 - 20*zeta^3 - 10*zeta^2)*q^149 + (16*zeta^8 + 16*zeta^7 + 
8*zeta^6 + 8*zeta^5 + 16*zeta^4 + 16*zeta^3 + 16)*q^150 + (2*zeta^9 - 2*zeta^8 +
2*zeta^7 - 2*zeta^6 - 2*zeta^5 + 2*zeta^4 - 2*zeta^3 + 2*zeta^2 - 2)*q^151 + 
(8*zeta^8 + 4*zeta^7 + 8*zeta^6 + 8*zeta^5 + 4*zeta^4 + 8*zeta^3)*q^153 - 
48*q^154 + (14*zeta^8 + 7*zeta^7 + 14*zeta^6 + 14*zeta^5 + 7*zeta^4 + 
14*zeta^3)*q^155 + (16*zeta^9 + 8*zeta^8 + 16*zeta^7 + 16*zeta^4 + 8*zeta^3 + 
16*zeta^2 + 16)*q^156 + (-7*zeta^9 + 7*zeta^8 - 7*zeta^7 + 7*zeta^6 + 7*zeta^5 -
7*zeta^4 + 7*zeta^3 - 7*zeta^2 + 7)*q^157 + (-40*zeta^8 - 40*zeta^7 - 20*zeta^6 
- 20*zeta^5 - 40*zeta^4 - 40*zeta^3 - 40)*q^158 + (6*zeta^9 + 12*zeta^8 + 
12*zeta^7 + 12*zeta^4 + 12*zeta^3 + 6*zeta^2)*q^159 + (8*zeta^9 + 16*zeta^8 + 
16*zeta^7 + 16*zeta^4 + 16*zeta^3 + 8*zeta^2)*q^160 + (-4*zeta^8 - 4*zeta^7 - 
2*zeta^6 - 2*zeta^5 - 4*zeta^4 - 4*zeta^3 - 4)*q^161 + (-2*zeta^9 + 2*zeta^8 - 
2*zeta^7 + 2*zeta^6 + 2*zeta^5 - 2*zeta^4 + 2*zeta^3 - 2*zeta^2 + 2)*q^162 + 
(-8*zeta^9 - 4*zeta^8 - 8*zeta^7 - 8*zeta^4 - 4*zeta^3 - 8*zeta^2 - 8)*q^163 + 
(-32*zeta^8 - 16*zeta^7 - 32*zeta^6 - 32*zeta^5 - 16*zeta^4 - 32*zeta^3)*q^164 +
12*q^165 + (24*zeta^8 + 12*zeta^7 + 24*zeta^6 + 24*zeta^5 + 12*zeta^4 + 
24*zeta^3)*q^166 + (24*zeta^9 + 12*zeta^8 + 24*zeta^7 + 24*zeta^4 + 12*zeta^3 + 
24*zeta^2 + 24)*q^167 + (-6*zeta^8 - 6*zeta^7 - 3*zeta^6 - 3*zeta^5 - 6*zeta^4 -
6*zeta^3 - 6)*q^169 + (4*zeta^9 + 8*zeta^8 + 8*zeta^7 + 8*zeta^4 + 8*zeta^3 + 
4*zeta^2)*q^170 + (24*zeta^8 + 24*zeta^7 + 12*zeta^6 + 12*zeta^5 + 24*zeta^4 + 
24*zeta^3 + 24)*q^172 + (-6*zeta^9 + 6*zeta^8 - 6*zeta^7 + 6*zeta^6 + 6*zeta^5 -
6*zeta^4 + 6*zeta^3 - 6*zeta^2 + 6)*q^173 + (16*zeta^8 + 8*zeta^7 + 16*zeta^6 + 
16*zeta^5 + 8*zeta^4 + 16*zeta^3)*q^175 + 48*q^176 + (-10*zeta^8 - 5*zeta^7 - 
10*zeta^6 - 10*zeta^5 - 5*zeta^4 - 10*zeta^3)*q^177 + (60*zeta^9 + 30*zeta^8 + 
60*zeta^7 + 60*zeta^4 + 30*zeta^3 + 60*zeta^2 + 60)*q^178 + (-15*zeta^9 + 
15*zeta^8 - 15*zeta^7 + 15*zeta^6 + 15*zeta^5 - 15*zeta^4 + 15*zeta^3 - 
15*zeta^2 + 15)*q^179 + (8*zeta^8 + 8*zeta^7 + 4*zeta^6 + 4*zeta^5 + 8*zeta^4 + 
8*zeta^3 + 8)*q^180 + (7*zeta^9 + 14*zeta^8 + 14*zeta^7 + 14*zeta^4 + 14*zeta^3 
+ 7*zeta^2)*q^181 + (16*zeta^9 + 32*zeta^8 + 32*zeta^7 + 32*zeta^4 + 32*zeta^3 +
16*zeta^2)*q^182 + (24*zeta^8 + 24*zeta^7 + 12*zeta^6 + 12*zeta^5 + 24*zeta^4 + 
24*zeta^3 + 24)*q^183 + (-6*zeta^9 - 3*zeta^8 - 6*zeta^7 - 6*zeta^4 - 3*zeta^3 -
6*zeta^2 - 6)*q^185 + (28*zeta^8 + 14*zeta^7 + 28*zeta^6 + 28*zeta^5 + 14*zeta^4
+ 28*zeta^3)*q^186 + 24*q^187 + (32*zeta^8 + 16*zeta^7 + 32*zeta^6 + 32*zeta^5 +
16*zeta^4 + 32*zeta^3)*q^188 + (20*zeta^9 + 10*zeta^8 + 20*zeta^7 + 20*zeta^4 + 
10*zeta^3 + 20*zeta^2 + 20)*q^189 + (-34*zeta^8 - 34*zeta^7 - 17*zeta^6 - 
17*zeta^5 - 34*zeta^4 - 34*zeta^3 - 34)*q^191 + (8*zeta^9 + 16*zeta^8 + 
16*zeta^7 + 16*zeta^4 + 16*zeta^3 + 8*zeta^2)*q^192 + (4*zeta^9 + 8*zeta^8 + 
8*zeta^7 + 8*zeta^4 + 8*zeta^3 + 4*zeta^2)*q^193 + (-28*zeta^8 - 28*zeta^7 - 
14*zeta^6 - 14*zeta^5 - 28*zeta^4 - 28*zeta^3 - 28)*q^194 + (-4*zeta^9 + 
4*zeta^8 - 4*zeta^7 + 4*zeta^6 + 4*zeta^5 - 4*zeta^4 + 4*zeta^3 - 4*zeta^2 + 
4)*q^195 + (12*zeta^9 + 6*zeta^8 + 12*zeta^7 + 12*zeta^4 + 6*zeta^3 + 12*zeta^2 
+ 12)*q^196 + (-4*zeta^8 - 2*zeta^7 - 4*zeta^6 - 4*zeta^5 - 2*zeta^4 - 
4*zeta^3)*q^197 - 48*q^198 + O(q^200), (10*zeta^9 + 5*zeta^8 + 5*zeta^6 + 
5*zeta^5 + 5*zeta^3 + 10*zeta^2 + 15)*q + (5*zeta^9 + 5*zeta^8 - 5*zeta^7 - 
5*zeta^4 + 5*zeta^3 + 5*zeta^2 - 10)*q^2 + (10*zeta^9 + 10*zeta^7 + 20*zeta^6 + 
20*zeta^5 + 10*zeta^4 + 10*zeta^2 + 30)*q^3 + (-5*zeta^8 + 5*zeta^7 + 5*zeta^6 +
5*zeta^5 + 5*zeta^4 - 5*zeta^3 - 10)*q^4 + (-10*zeta^9 - 5*zeta^8 - 5*zeta^7 - 
10*zeta^6 - 10*zeta^5 - 5*zeta^4 - 5*zeta^3 - 10*zeta^2 + 5)*q^5 + (20*zeta^9 + 
10*zeta^8 + 10*zeta^7 + 20*zeta^6 + 20*zeta^5 + 10*zeta^4 + 10*zeta^3 + 
20*zeta^2 - 10)*q^6 + (10*zeta^8 - 10*zeta^7 - 10*zeta^6 - 10*zeta^5 - 10*zeta^4
+ 10*zeta^3 + 20)*q^7 + (15*zeta^9 + 15*zeta^7 + 30*zeta^6 + 30*zeta^5 + 
15*zeta^4 + 15*zeta^2 + 45)*q^8 + (-5*zeta^9 - 5*zeta^8 + 5*zeta^7 + 5*zeta^4 - 
5*zeta^3 - 5*zeta^2 + 10)*q^9 + (-10*zeta^9 - 5*zeta^8 - 5*zeta^6 - 5*zeta^5 - 
5*zeta^3 - 10*zeta^2 - 15)*q^10 + (-20*zeta^9 - 10*zeta^8 - 10*zeta^6 - 
10*zeta^5 - 10*zeta^3 - 20*zeta^2 - 30)*q^12 + (5*zeta^9 + 5*zeta^8 - 5*zeta^7 -
5*zeta^4 + 5*zeta^3 + 5*zeta^2 - 10)*q^13 + (-10*zeta^9 - 10*zeta^7 - 20*zeta^6 
- 20*zeta^5 - 10*zeta^4 - 10*zeta^2 - 30)*q^14 + (10*zeta^8 - 10*zeta^7 - 
10*zeta^6 - 10*zeta^5 - 10*zeta^4 + 10*zeta^3 + 20)*q^15 + (10*zeta^9 + 5*zeta^8
+ 5*zeta^7 + 10*zeta^6 + 10*zeta^5 + 5*zeta^4 + 5*zeta^3 + 10*zeta^2 - 5)*q^16 +
(-50*zeta^9 - 25*zeta^8 - 25*zeta^7 - 50*zeta^6 - 50*zeta^5 - 25*zeta^4 - 
25*zeta^3 - 50*zeta^2 + 25)*q^17 + (-5*zeta^8 + 5*zeta^7 + 5*zeta^6 + 5*zeta^5 +
5*zeta^4 - 5*zeta^3 - 10)*q^18 + (-30*zeta^9 - 30*zeta^7 - 60*zeta^6 - 60*zeta^5
- 30*zeta^4 - 30*zeta^2 - 90)*q^19 + (5*zeta^9 + 5*zeta^8 - 5*zeta^7 - 5*zeta^4 
+ 5*zeta^3 + 5*zeta^2 - 10)*q^20 + (40*zeta^9 + 20*zeta^8 + 20*zeta^6 + 
20*zeta^5 + 20*zeta^3 + 40*zeta^2 + 60)*q^21 + (20*zeta^9 + 10*zeta^8 + 
10*zeta^6 + 10*zeta^5 + 10*zeta^3 + 20*zeta^2 + 30)*q^23 + (-30*zeta^9 - 
30*zeta^8 + 30*zeta^7 + 30*zeta^4 - 30*zeta^3 - 30*zeta^2 + 60)*q^24 + 
(-20*zeta^9 - 20*zeta^7 - 40*zeta^6 - 40*zeta^5 - 20*zeta^4 - 20*zeta^2 - 
60)*q^25 + (5*zeta^8 - 5*zeta^7 - 5*zeta^6 - 5*zeta^5 - 5*zeta^4 + 5*zeta^3 + 
10)*q^26 + (40*zeta^9 + 20*zeta^8 + 20*zeta^7 + 40*zeta^6 + 40*zeta^5 + 
20*zeta^4 + 20*zeta^3 + 40*zeta^2 - 20)*q^27 + (20*zeta^9 + 10*zeta^8 + 
10*zeta^7 + 20*zeta^6 + 20*zeta^5 + 10*zeta^4 + 10*zeta^3 + 20*zeta^2 - 10)*q^28
+ (-45*zeta^8 + 45*zeta^7 + 45*zeta^6 + 45*zeta^5 + 45*zeta^4 - 45*zeta^3 - 
90)*q^29 + (-10*zeta^9 - 10*zeta^7 - 20*zeta^6 - 20*zeta^5 - 10*zeta^4 - 
10*zeta^2 - 30)*q^30 + (10*zeta^9 + 10*zeta^8 - 10*zeta^7 - 10*zeta^4 + 
10*zeta^3 + 10*zeta^2 - 20)*q^31 + (-50*zeta^9 - 25*zeta^8 - 25*zeta^6 - 
25*zeta^5 - 25*zeta^3 - 50*zeta^2 - 75)*q^32 + (-50*zeta^9 - 25*zeta^8 - 
25*zeta^6 - 25*zeta^5 - 25*zeta^3 - 50*zeta^2 - 75)*q^34 + (-10*zeta^9 - 
10*zeta^8 + 10*zeta^7 + 10*zeta^4 - 10*zeta^3 - 10*zeta^2 + 20)*q^35 + 
(-5*zeta^9 - 5*zeta^7 - 10*zeta^6 - 10*zeta^5 - 5*zeta^4 - 5*zeta^2 - 15)*q^36 +
(-15*zeta^8 + 15*zeta^7 + 15*zeta^6 + 15*zeta^5 + 15*zeta^4 - 15*zeta^3 - 
30)*q^37 + (-60*zeta^9 - 30*zeta^8 - 30*zeta^7 - 60*zeta^6 - 60*zeta^5 - 
30*zeta^4 - 30*zeta^3 - 60*zeta^2 + 30)*q^38 + (20*zeta^9 + 10*zeta^8 + 
10*zeta^7 + 20*zeta^6 + 20*zeta^5 + 10*zeta^4 + 10*zeta^3 + 20*zeta^2 - 10)*q^39
+ (15*zeta^8 - 15*zeta^7 - 15*zeta^6 - 15*zeta^5 - 15*zeta^4 + 15*zeta^3 + 
30)*q^40 + (25*zeta^9 + 25*zeta^7 + 50*zeta^6 + 50*zeta^5 + 25*zeta^4 + 
25*zeta^2 + 75)*q^41 + (20*zeta^9 + 20*zeta^8 - 20*zeta^7 - 20*zeta^4 + 
20*zeta^3 + 20*zeta^2 - 40)*q^42 + (10*zeta^9 + 5*zeta^8 + 5*zeta^6 + 5*zeta^5 +
5*zeta^3 + 10*zeta^2 + 15)*q^45 + (10*zeta^9 + 10*zeta^8 - 10*zeta^7 - 10*zeta^4
+ 10*zeta^3 + 10*zeta^2 - 20)*q^46 + (10*zeta^9 + 10*zeta^7 + 20*zeta^6 + 
20*zeta^5 + 10*zeta^4 + 10*zeta^2 + 30)*q^47 + (-10*zeta^8 + 10*zeta^7 + 
10*zeta^6 + 10*zeta^5 + 10*zeta^4 - 10*zeta^3 - 20)*q^48 + (30*zeta^9 + 
15*zeta^8 + 15*zeta^7 + 30*zeta^6 + 30*zeta^5 + 15*zeta^4 + 15*zeta^3 + 
30*zeta^2 - 15)*q^49 + (-40*zeta^9 - 20*zeta^8 - 20*zeta^7 - 40*zeta^6 - 
40*zeta^5 - 20*zeta^4 - 20*zeta^3 - 40*zeta^2 + 20)*q^50 + (50*zeta^8 - 
50*zeta^7 - 50*zeta^6 - 50*zeta^5 - 50*zeta^4 + 50*zeta^3 + 100)*q^51 + 
(5*zeta^9 + 5*zeta^7 + 10*zeta^6 + 10*zeta^5 + 5*zeta^4 + 5*zeta^2 + 15)*q^52 + 
(-45*zeta^9 - 45*zeta^8 + 45*zeta^7 + 45*zeta^4 - 45*zeta^3 - 45*zeta^2 + 
90)*q^53 + (40*zeta^9 + 20*zeta^8 + 20*zeta^6 + 20*zeta^5 + 20*zeta^3 + 
40*zeta^2 + 60)*q^54 + (60*zeta^9 + 30*zeta^8 + 30*zeta^6 + 30*zeta^5 + 
30*zeta^3 + 60*zeta^2 + 90)*q^56 + (60*zeta^9 + 60*zeta^8 - 60*zeta^7 - 
60*zeta^4 + 60*zeta^3 + 60*zeta^2 - 120)*q^57 + (45*zeta^9 + 45*zeta^7 + 
90*zeta^6 + 90*zeta^5 + 45*zeta^4 + 45*zeta^2 + 135)*q^58 + (40*zeta^8 - 
40*zeta^7 - 40*zeta^6 - 40*zeta^5 - 40*zeta^4 + 40*zeta^3 + 80)*q^59 + 
(20*zeta^9 + 10*zeta^8 + 10*zeta^7 + 20*zeta^6 + 20*zeta^5 + 10*zeta^4 + 
10*zeta^3 + 20*zeta^2 - 10)*q^60 + (60*zeta^9 + 30*zeta^8 + 30*zeta^7 + 
60*zeta^6 + 60*zeta^5 + 30*zeta^4 + 30*zeta^3 + 60*zeta^2 - 30)*q^61 + 
(10*zeta^8 - 10*zeta^7 - 10*zeta^6 - 10*zeta^5 - 10*zeta^4 + 10*zeta^3 + 
20)*q^62 + (10*zeta^9 + 10*zeta^7 + 20*zeta^6 + 20*zeta^5 + 10*zeta^4 + 
10*zeta^2 + 30)*q^63 + (-35*zeta^9 - 35*zeta^8 + 35*zeta^7 + 35*zeta^4 - 
35*zeta^3 - 35*zeta^2 + 70)*q^64 + (-10*zeta^9 - 5*zeta^8 - 5*zeta^6 - 5*zeta^5 
- 5*zeta^3 - 10*zeta^2 - 15)*q^65 + (20*zeta^9 + 10*zeta^8 + 10*zeta^6 + 
10*zeta^5 + 10*zeta^3 + 20*zeta^2 + 30)*q^67 + (25*zeta^9 + 25*zeta^8 - 
25*zeta^7 - 25*zeta^4 + 25*zeta^3 + 25*zeta^2 - 50)*q^68 + (20*zeta^9 + 
20*zeta^7 + 40*zeta^6 + 40*zeta^5 + 20*zeta^4 + 20*zeta^2 + 60)*q^69 + 
(-10*zeta^8 + 10*zeta^7 + 10*zeta^6 + 10*zeta^5 + 10*zeta^4 - 10*zeta^3 - 
20)*q^70 + (-120*zeta^9 - 60*zeta^8 - 60*zeta^7 - 120*zeta^6 - 120*zeta^5 - 
60*zeta^4 - 60*zeta^3 - 120*zeta^2 + 60)*q^71 + (-30*zeta^9 - 15*zeta^8 - 
15*zeta^7 - 30*zeta^6 - 30*zeta^5 - 15*zeta^4 - 15*zeta^3 - 30*zeta^2 + 15)*q^72
+ (10*zeta^8 - 10*zeta^7 - 10*zeta^6 - 10*zeta^5 - 10*zeta^4 + 10*zeta^3 + 
20)*q^73 + (15*zeta^9 + 15*zeta^7 + 30*zeta^6 + 30*zeta^5 + 15*zeta^4 + 
15*zeta^2 + 45)*q^74 + (40*zeta^9 + 40*zeta^8 - 40*zeta^7 - 40*zeta^4 + 
40*zeta^3 + 40*zeta^2 - 80)*q^75 + (60*zeta^9 + 30*zeta^8 + 30*zeta^6 + 
30*zeta^5 + 30*zeta^3 + 60*zeta^2 + 90)*q^76 + (20*zeta^9 + 10*zeta^8 + 
10*zeta^6 + 10*zeta^5 + 10*zeta^3 + 20*zeta^2 + 30)*q^78 + (-50*zeta^9 - 
50*zeta^8 + 50*zeta^7 + 50*zeta^4 - 50*zeta^3 - 50*zeta^2 + 100)*q^79 + 
(-5*zeta^9 - 5*zeta^7 - 10*zeta^6 - 10*zeta^5 - 5*zeta^4 - 5*zeta^2 - 15)*q^80 +
(-55*zeta^8 + 55*zeta^7 + 55*zeta^6 + 55*zeta^5 + 55*zeta^4 - 55*zeta^3 - 
110)*q^81 + (50*zeta^9 + 25*zeta^8 + 25*zeta^7 + 50*zeta^6 + 50*zeta^5 + 
25*zeta^4 + 25*zeta^3 + 50*zeta^2 - 25)*q^82 + (60*zeta^9 + 30*zeta^8 + 
30*zeta^7 + 60*zeta^6 + 60*zeta^5 + 30*zeta^4 + 30*zeta^3 + 60*zeta^2 - 30)*q^83
+ (-20*zeta^8 + 20*zeta^7 + 20*zeta^6 + 20*zeta^5 + 20*zeta^4 - 20*zeta^3 - 
40)*q^84 + (25*zeta^9 + 25*zeta^7 + 50*zeta^6 + 50*zeta^5 + 25*zeta^4 + 
25*zeta^2 + 75)*q^85 + (-180*zeta^9 - 90*zeta^8 - 90*zeta^6 - 90*zeta^5 - 
90*zeta^3 - 180*zeta^2 - 270)*q^87 + (-90*zeta^9 - 45*zeta^8 - 45*zeta^6 - 
45*zeta^5 - 45*zeta^3 - 90*zeta^2 - 135)*q^89 + (5*zeta^9 + 5*zeta^8 - 5*zeta^7 
- 5*zeta^4 + 5*zeta^3 + 5*zeta^2 - 10)*q^90 + (-10*zeta^9 - 10*zeta^7 - 
20*zeta^6 - 20*zeta^5 - 10*zeta^4 - 10*zeta^2 - 30)*q^91 + (-10*zeta^8 + 
10*zeta^7 + 10*zeta^6 + 10*zeta^5 + 10*zeta^4 - 10*zeta^3 - 20)*q^92 + 
(40*zeta^9 + 20*zeta^8 + 20*zeta^7 + 40*zeta^6 + 40*zeta^5 + 20*zeta^4 + 
20*zeta^3 + 40*zeta^2 - 20)*q^93 + (20*zeta^9 + 10*zeta^8 + 10*zeta^7 + 
20*zeta^6 + 20*zeta^5 + 10*zeta^4 + 10*zeta^3 + 20*zeta^2 - 10)*q^94 + 
(-30*zeta^8 + 30*zeta^7 + 30*zeta^6 + 30*zeta^5 + 30*zeta^4 - 30*zeta^3 - 
60)*q^95 + (-50*zeta^9 - 50*zeta^7 - 100*zeta^6 - 100*zeta^5 - 50*zeta^4 - 
50*zeta^2 - 150)*q^96 + (65*zeta^9 + 65*zeta^8 - 65*zeta^7 - 65*zeta^4 + 
65*zeta^3 + 65*zeta^2 - 130)*q^97 + (30*zeta^9 + 15*zeta^8 + 15*zeta^6 + 
15*zeta^5 + 15*zeta^3 + 30*zeta^2 + 45)*q^98 + (40*zeta^9 + 20*zeta^8 + 
20*zeta^6 + 20*zeta^5 + 20*zeta^3 + 40*zeta^2 + 60)*q^100 + (-50*zeta^9 - 
50*zeta^8 + 50*zeta^7 + 50*zeta^4 - 50*zeta^3 - 50*zeta^2 + 100)*q^101 + 
(-50*zeta^9 - 50*zeta^7 - 100*zeta^6 - 100*zeta^5 - 50*zeta^4 - 50*zeta^2 - 
150)*q^102 + (40*zeta^8 - 40*zeta^7 - 40*zeta^6 - 40*zeta^5 - 40*zeta^4 + 
40*zeta^3 + 80)*q^103 + (30*zeta^9 + 15*zeta^8 + 15*zeta^7 + 30*zeta^6 + 
30*zeta^5 + 15*zeta^4 + 15*zeta^3 + 30*zeta^2 - 15)*q^104 + (-40*zeta^9 - 
20*zeta^8 - 20*zeta^7 - 40*zeta^6 - 40*zeta^5 - 20*zeta^4 - 20*zeta^3 - 
40*zeta^2 + 20)*q^105 + (-45*zeta^8 + 45*zeta^7 + 45*zeta^6 + 45*zeta^5 + 
45*zeta^4 - 45*zeta^3 - 90)*q^106 + (-30*zeta^9 - 30*zeta^7 - 60*zeta^6 - 
60*zeta^5 - 30*zeta^4 - 30*zeta^2 - 90)*q^107 + (-20*zeta^9 - 20*zeta^8 + 
20*zeta^7 + 20*zeta^4 - 20*zeta^3 - 20*zeta^2 + 40)*q^108 + (110*zeta^9 + 
55*zeta^8 + 55*zeta^6 + 55*zeta^5 + 55*zeta^3 + 110*zeta^2 + 165)*q^109 + 
(-60*zeta^9 - 30*zeta^8 - 30*zeta^6 - 30*zeta^5 - 30*zeta^3 - 60*zeta^2 - 
90)*q^111 + (10*zeta^9 + 10*zeta^8 - 10*zeta^7 - 10*zeta^4 + 10*zeta^3 + 
10*zeta^2 - 20)*q^112 + (-45*zeta^9 - 45*zeta^7 - 90*zeta^6 - 90*zeta^5 - 
45*zeta^4 - 45*zeta^2 - 135)*q^113 + (60*zeta^8 - 60*zeta^7 - 60*zeta^6 - 
60*zeta^5 - 60*zeta^4 + 60*zeta^3 + 120)*q^114 + (-20*zeta^9 - 10*zeta^8 - 
10*zeta^7 - 20*zeta^6 - 20*zeta^5 - 10*zeta^4 - 10*zeta^3 - 20*zeta^2 + 
10)*q^115 + (-90*zeta^9 - 45*zeta^8 - 45*zeta^7 - 90*zeta^6 - 90*zeta^5 - 
45*zeta^4 - 45*zeta^3 - 90*zeta^2 + 45)*q^116 + (-5*zeta^8 + 5*zeta^7 + 5*zeta^6
+ 5*zeta^5 + 5*zeta^4 - 5*zeta^3 - 10)*q^117 + (-40*zeta^9 - 40*zeta^7 - 
80*zeta^6 - 80*zeta^5 - 40*zeta^4 - 40*zeta^2 - 120)*q^118 + (-50*zeta^9 - 
50*zeta^8 + 50*zeta^7 + 50*zeta^4 - 50*zeta^3 - 50*zeta^2 + 100)*q^119 + 
(60*zeta^9 + 30*zeta^8 + 30*zeta^6 + 30*zeta^5 + 30*zeta^3 + 60*zeta^2 + 
90)*q^120 + (60*zeta^9 + 30*zeta^8 + 30*zeta^6 + 30*zeta^5 + 30*zeta^3 + 
60*zeta^2 + 90)*q^122 + (-50*zeta^9 - 50*zeta^8 + 50*zeta^7 + 50*zeta^4 - 
50*zeta^3 - 50*zeta^2 + 100)*q^123 + (10*zeta^9 + 10*zeta^7 + 20*zeta^6 + 
20*zeta^5 + 10*zeta^4 + 10*zeta^2 + 30)*q^124 + (-45*zeta^8 + 45*zeta^7 + 
45*zeta^6 + 45*zeta^5 + 45*zeta^4 - 45*zeta^3 - 90)*q^125 + (20*zeta^9 + 
10*zeta^8 + 10*zeta^7 + 20*zeta^6 + 20*zeta^5 + 10*zeta^4 + 10*zeta^3 + 
20*zeta^2 - 10)*q^126 + (-160*zeta^9 - 80*zeta^8 - 80*zeta^7 - 160*zeta^6 - 
160*zeta^5 - 80*zeta^4 - 80*zeta^3 - 160*zeta^2 + 80)*q^127 + (15*zeta^8 - 
15*zeta^7 - 15*zeta^6 - 15*zeta^5 - 15*zeta^4 + 15*zeta^3 + 30)*q^128 + 
(-5*zeta^9 - 5*zeta^8 + 5*zeta^7 + 5*zeta^4 - 5*zeta^3 - 5*zeta^2 + 10)*q^130 + 
(-120*zeta^9 - 60*zeta^8 - 60*zeta^6 - 60*zeta^5 - 60*zeta^3 - 120*zeta^2 - 
180)*q^133 + (10*zeta^9 + 10*zeta^8 - 10*zeta^7 - 10*zeta^4 + 10*zeta^3 + 
10*zeta^2 - 20)*q^134 + (-20*zeta^9 - 20*zeta^7 - 40*zeta^6 - 40*zeta^5 - 
20*zeta^4 - 20*zeta^2 - 60)*q^135 + (75*zeta^8 - 75*zeta^7 - 75*zeta^6 - 
75*zeta^5 - 75*zeta^4 + 75*zeta^3 + 150)*q^136 + (100*zeta^9 + 50*zeta^8 + 
50*zeta^7 + 100*zeta^6 + 100*zeta^5 + 50*zeta^4 + 50*zeta^3 + 100*zeta^2 - 
50)*q^137 + (40*zeta^9 + 20*zeta^8 + 20*zeta^7 + 40*zeta^6 + 40*zeta^5 + 
20*zeta^4 + 20*zeta^3 + 40*zeta^2 - 20)*q^138 + (10*zeta^8 - 10*zeta^7 - 
10*zeta^6 - 10*zeta^5 - 10*zeta^4 + 10*zeta^3 + 20)*q^139 + (-10*zeta^9 - 
10*zeta^7 - 20*zeta^6 - 20*zeta^5 - 10*zeta^4 - 10*zeta^2 - 30)*q^140 + 
(-20*zeta^9 - 20*zeta^8 + 20*zeta^7 + 20*zeta^4 - 20*zeta^3 - 20*zeta^2 + 
40)*q^141 + (-120*zeta^9 - 60*zeta^8 - 60*zeta^6 - 60*zeta^5 - 60*zeta^3 - 
120*zeta^2 - 180)*q^142 + (-10*zeta^9 - 5*zeta^8 - 5*zeta^6 - 5*zeta^5 - 
5*zeta^3 - 10*zeta^2 - 15)*q^144 + (45*zeta^9 + 45*zeta^8 - 45*zeta^7 - 
45*zeta^4 + 45*zeta^3 + 45*zeta^2 - 90)*q^145 + (-10*zeta^9 - 10*zeta^7 - 
20*zeta^6 - 20*zeta^5 - 10*zeta^4 - 10*zeta^2 - 30)*q^146 + (-30*zeta^8 + 
30*zeta^7 + 30*zeta^6 + 30*zeta^5 + 30*zeta^4 - 30*zeta^3 - 60)*q^147 + 
(-30*zeta^9 - 15*zeta^8 - 15*zeta^7 - 30*zeta^6 - 30*zeta^5 - 15*zeta^4 - 
15*zeta^3 - 30*zeta^2 + 15)*q^148 + (170*zeta^9 + 85*zeta^8 + 85*zeta^7 + 
170*zeta^6 + 170*zeta^5 + 85*zeta^4 + 85*zeta^3 + 170*zeta^2 - 85)*q^149 + 
(40*zeta^8 - 40*zeta^7 - 40*zeta^6 - 40*zeta^5 - 40*zeta^4 + 40*zeta^3 + 
80)*q^150 + (80*zeta^9 + 80*zeta^7 + 160*zeta^6 + 160*zeta^5 + 80*zeta^4 + 
80*zeta^2 + 240)*q^151 + (90*zeta^9 + 90*zeta^8 - 90*zeta^7 - 90*zeta^4 + 
90*zeta^3 + 90*zeta^2 - 180)*q^152 + (50*zeta^9 + 25*zeta^8 + 25*zeta^6 + 
25*zeta^5 + 25*zeta^3 + 50*zeta^2 + 75)*q^153 + (-20*zeta^9 - 10*zeta^8 - 
10*zeta^6 - 10*zeta^5 - 10*zeta^3 - 20*zeta^2 - 30)*q^155 + (-10*zeta^9 - 
10*zeta^8 + 10*zeta^7 + 10*zeta^4 - 10*zeta^3 - 10*zeta^2 + 20)*q^156 + 
(10*zeta^9 + 10*zeta^7 + 20*zeta^6 + 20*zeta^5 + 10*zeta^4 + 10*zeta^2 + 
30)*q^157 + (-50*zeta^8 + 50*zeta^7 + 50*zeta^6 + 50*zeta^5 + 50*zeta^4 - 
50*zeta^3 - 100)*q^158 + (-180*zeta^9 - 90*zeta^8 - 90*zeta^7 - 180*zeta^6 - 
180*zeta^5 - 90*zeta^4 - 90*zeta^3 - 180*zeta^2 + 90)*q^159 + (50*zeta^9 + 
25*zeta^8 + 25*zeta^7 + 50*zeta^6 + 50*zeta^5 + 25*zeta^4 + 25*zeta^3 + 
50*zeta^2 - 25)*q^160 + (20*zeta^8 - 20*zeta^7 - 20*zeta^6 - 20*zeta^5 - 
20*zeta^4 + 20*zeta^3 + 40)*q^161 + (55*zeta^9 + 55*zeta^7 + 110*zeta^6 + 
110*zeta^5 + 55*zeta^4 + 55*zeta^2 + 165)*q^162 + (10*zeta^9 + 10*zeta^8 - 
10*zeta^7 - 10*zeta^4 + 10*zeta^3 + 10*zeta^2 - 20)*q^163 + (-50*zeta^9 - 
25*zeta^8 - 25*zeta^6 - 25*zeta^5 - 25*zeta^3 - 50*zeta^2 - 75)*q^164 + 
(60*zeta^9 + 30*zeta^8 + 30*zeta^6 + 30*zeta^5 + 30*zeta^3 + 60*zeta^2 + 
90)*q^166 + (60*zeta^9 + 60*zeta^8 - 60*zeta^7 - 60*zeta^4 + 60*zeta^3 + 
60*zeta^2 - 120)*q^167 + (60*zeta^9 + 60*zeta^7 + 120*zeta^6 + 120*zeta^5 + 
60*zeta^4 + 60*zeta^2 + 180)*q^168 + (-60*zeta^8 + 60*zeta^7 + 60*zeta^6 + 
60*zeta^5 + 60*zeta^4 - 60*zeta^3 - 120)*q^169 + (50*zeta^9 + 25*zeta^8 + 
25*zeta^7 + 50*zeta^6 + 50*zeta^5 + 25*zeta^4 + 25*zeta^3 + 50*zeta^2 - 
25)*q^170 + (60*zeta^9 + 30*zeta^8 + 30*zeta^7 + 60*zeta^6 + 60*zeta^5 + 
30*zeta^4 + 30*zeta^3 + 60*zeta^2 - 30)*q^171 + (-30*zeta^9 - 30*zeta^7 - 
60*zeta^6 - 60*zeta^5 - 30*zeta^4 - 30*zeta^2 - 90)*q^173 + (-90*zeta^9 - 
90*zeta^8 + 90*zeta^7 + 90*zeta^4 - 90*zeta^3 - 90*zeta^2 + 180)*q^174 + 
(-80*zeta^9 - 40*zeta^8 - 40*zeta^6 - 40*zeta^5 - 40*zeta^3 - 80*zeta^2 - 
120)*q^175 + (160*zeta^9 + 80*zeta^8 + 80*zeta^6 + 80*zeta^5 + 80*zeta^3 + 
160*zeta^2 + 240)*q^177 + (-45*zeta^9 - 45*zeta^8 + 45*zeta^7 + 45*zeta^4 - 
45*zeta^3 - 45*zeta^2 + 90)*q^178 + (120*zeta^9 + 120*zeta^7 + 240*zeta^6 + 
240*zeta^5 + 120*zeta^4 + 120*zeta^2 + 360)*q^179 + (-5*zeta^8 + 5*zeta^7 + 
5*zeta^6 + 5*zeta^5 + 5*zeta^4 - 5*zeta^3 - 10)*q^180 + (-10*zeta^9 - 5*zeta^8 -
5*zeta^7 - 10*zeta^6 - 10*zeta^5 - 5*zeta^4 - 5*zeta^3 - 10*zeta^2 + 5)*q^181 + 
(-20*zeta^9 - 10*zeta^8 - 10*zeta^7 - 20*zeta^6 - 20*zeta^5 - 10*zeta^4 - 
10*zeta^3 - 20*zeta^2 + 10)*q^182 + (-60*zeta^8 + 60*zeta^7 + 60*zeta^6 + 
60*zeta^5 + 60*zeta^4 - 60*zeta^3 - 120)*q^183 + (30*zeta^9 + 30*zeta^7 + 
60*zeta^6 + 60*zeta^5 + 30*zeta^4 + 30*zeta^2 + 90)*q^184 + (15*zeta^9 + 
15*zeta^8 - 15*zeta^7 - 15*zeta^4 + 15*zeta^3 + 15*zeta^2 - 30)*q^185 + 
(40*zeta^9 + 20*zeta^8 + 20*zeta^6 + 20*zeta^5 + 20*zeta^3 + 40*zeta^2 + 
60)*q^186 + (-20*zeta^9 - 10*zeta^8 - 10*zeta^6 - 10*zeta^5 - 10*zeta^3 - 
20*zeta^2 - 30)*q^188 + (40*zeta^9 + 40*zeta^8 - 40*zeta^7 - 40*zeta^4 + 
40*zeta^3 + 40*zeta^2 - 80)*q^189 + (30*zeta^9 + 30*zeta^7 + 60*zeta^6 + 
60*zeta^5 + 30*zeta^4 + 30*zeta^2 + 90)*q^190 + (40*zeta^8 - 40*zeta^7 - 
40*zeta^6 - 40*zeta^5 - 40*zeta^4 + 40*zeta^3 + 80)*q^191 + (-140*zeta^9 - 
70*zeta^8 - 70*zeta^7 - 140*zeta^6 - 140*zeta^5 - 70*zeta^4 - 70*zeta^3 - 
140*zeta^2 + 70)*q^192 + (-50*zeta^9 - 25*zeta^8 - 25*zeta^7 - 50*zeta^6 - 
50*zeta^5 - 25*zeta^4 - 25*zeta^3 - 50*zeta^2 + 25)*q^193 + (65*zeta^8 - 
65*zeta^7 - 65*zeta^6 - 65*zeta^5 - 65*zeta^4 + 65*zeta^3 + 130)*q^194 + 
(-10*zeta^9 - 10*zeta^7 - 20*zeta^6 - 20*zeta^5 - 10*zeta^4 - 10*zeta^2 - 
30)*q^195 + (-15*zeta^9 - 15*zeta^8 + 15*zeta^7 + 15*zeta^4 - 15*zeta^3 - 
15*zeta^2 + 30)*q^196 + (110*zeta^9 + 55*zeta^8 + 55*zeta^6 + 55*zeta^5 + 
55*zeta^3 + 110*zeta^2 + 165)*q^197 + (240*zeta^9 + 120*zeta^8 + 120*zeta^6 + 
120*zeta^5 + 120*zeta^3 + 240*zeta^2 + 360)*q^199 + O(q^200), (-10*zeta^9 + 
10*zeta^8 + 5*zeta^7 + 30*zeta^6 + 30*zeta^5 + 5*zeta^4 + 10*zeta^3 - 10*zeta^2 
+ 40)*q + (-5*zeta^9 + 5*zeta^8 - 25*zeta^7 + 15*zeta^6 + 15*zeta^5 - 25*zeta^4 
+ 5*zeta^3 - 5*zeta^2 - 35)*q^3 + (-40*zeta^9 + 40*zeta^8 + 20*zeta^7 + 
10*zeta^6 + 10*zeta^5 + 20*zeta^4 + 40*zeta^3 - 40*zeta^2 - 60)*q^4 + 
(-45*zeta^9 - 120*zeta^8 - 60*zeta^7 - 30*zeta^6 - 30*zeta^5 - 60*zeta^4 - 
120*zeta^3 - 45*zeta^2 - 150)*q^5 + (60*zeta^9 + 50*zeta^8 + 80*zeta^7 + 
40*zeta^6 + 40*zeta^5 + 80*zeta^4 + 50*zeta^3 + 60*zeta^2 - 20)*q^9 + 
(-20*zeta^9 + 20*zeta^8 + 10*zeta^7 + 60*zeta^6 + 60*zeta^5 + 10*zeta^4 + 
20*zeta^3 - 20*zeta^2 + 80)*q^12 + (60*zeta^9 - 60*zeta^8 - 30*zeta^7 - 
15*zeta^6 - 15*zeta^5 - 30*zeta^4 - 60*zeta^3 + 60*zeta^2 + 90)*q^15 + 
(60*zeta^9 + 160*zeta^8 + 80*zeta^7 + 40*zeta^6 + 40*zeta^5 + 80*zeta^4 + 
160*zeta^3 + 60*zeta^2 + 200)*q^16 + (-180*zeta^9 - 150*zeta^8 - 240*zeta^7 - 
120*zeta^6 - 120*zeta^5 - 240*zeta^4 - 150*zeta^3 - 180*zeta^2 + 60)*q^20 + 
(90*zeta^9 - 90*zeta^8 - 45*zeta^7 - 270*zeta^6 - 270*zeta^5 - 45*zeta^4 - 
90*zeta^3 + 90*zeta^2 - 360)*q^23 + (20*zeta^9 - 20*zeta^8 + 100*zeta^7 - 
60*zeta^6 - 60*zeta^5 + 100*zeta^4 - 20*zeta^3 + 20*zeta^2 + 140)*q^25 + 
(75*zeta^9 + 200*zeta^8 + 100*zeta^7 + 50*zeta^6 + 50*zeta^5 + 100*zeta^4 + 
200*zeta^3 + 75*zeta^2 + 250)*q^27 + (150*zeta^9 + 125*zeta^8 + 200*zeta^7 + 
100*zeta^6 + 100*zeta^5 + 200*zeta^4 + 125*zeta^3 + 150*zeta^2 - 50)*q^31 + 
(20*zeta^9 - 20*zeta^8 + 100*zeta^7 - 60*zeta^6 - 60*zeta^5 + 100*zeta^4 - 
20*zeta^3 + 20*zeta^2 + 140)*q^36 + (140*zeta^9 - 140*zeta^8 - 70*zeta^7 - 
35*zeta^6 - 35*zeta^5 - 70*zeta^4 - 140*zeta^3 + 140*zeta^2 + 210)*q^37 + 
(-60*zeta^9 + 60*zeta^8 + 30*zeta^7 + 180*zeta^6 + 180*zeta^5 + 30*zeta^4 + 
60*zeta^3 - 60*zeta^2 + 240)*q^45 + (-60*zeta^9 + 60*zeta^8 - 300*zeta^7 + 
180*zeta^6 + 180*zeta^5 - 300*zeta^4 + 60*zeta^3 - 60*zeta^2 - 420)*q^47 + 
(-80*zeta^9 + 80*zeta^8 + 40*zeta^7 + 20*zeta^6 + 20*zeta^5 + 40*zeta^4 + 
80*zeta^3 - 80*zeta^2 - 120)*q^48 + (-105*zeta^9 - 280*zeta^8 - 140*zeta^7 - 
70*zeta^6 - 70*zeta^5 - 140*zeta^4 - 280*zeta^3 - 105*zeta^2 - 350)*q^49 + 
(-180*zeta^9 - 150*zeta^8 - 240*zeta^7 - 120*zeta^6 - 120*zeta^5 - 240*zeta^4 - 
150*zeta^3 - 180*zeta^2 + 60)*q^53 + (-300*zeta^9 + 300*zeta^8 + 150*zeta^7 + 
75*zeta^6 + 75*zeta^5 + 150*zeta^4 + 300*zeta^3 - 300*zeta^2 - 450)*q^59 + 
(-90*zeta^9 - 240*zeta^8 - 120*zeta^7 - 60*zeta^6 - 60*zeta^5 - 120*zeta^4 - 
240*zeta^3 - 90*zeta^2 - 300)*q^60 + (240*zeta^9 + 200*zeta^8 + 320*zeta^7 + 
160*zeta^6 + 160*zeta^5 + 320*zeta^4 + 200*zeta^3 + 240*zeta^2 - 80)*q^64 + 
(-130*zeta^9 + 130*zeta^8 + 65*zeta^7 + 390*zeta^6 + 390*zeta^5 + 65*zeta^4 + 
130*zeta^3 - 130*zeta^2 + 520)*q^67 + (45*zeta^9 - 45*zeta^8 + 225*zeta^7 - 
135*zeta^6 - 135*zeta^5 + 225*zeta^4 - 45*zeta^3 + 45*zeta^2 + 315)*q^69 + 
(-45*zeta^9 - 120*zeta^8 - 60*zeta^7 - 30*zeta^6 - 30*zeta^5 - 60*zeta^4 - 
120*zeta^3 - 45*zeta^2 - 150)*q^71 + (120*zeta^9 + 100*zeta^8 + 160*zeta^7 + 
80*zeta^6 + 80*zeta^5 + 160*zeta^4 + 100*zeta^3 + 120*zeta^2 - 40)*q^75 + 
(-60*zeta^9 + 60*zeta^8 - 300*zeta^7 + 180*zeta^6 + 180*zeta^5 - 300*zeta^4 + 
60*zeta^3 - 60*zeta^2 - 420)*q^80 + (20*zeta^9 - 20*zeta^8 - 10*zeta^7 - 
5*zeta^6 - 5*zeta^5 - 10*zeta^4 - 20*zeta^3 + 20*zeta^2 + 30)*q^81 + (90*zeta^9 
- 90*zeta^8 - 45*zeta^7 - 270*zeta^6 - 270*zeta^5 - 45*zeta^4 - 90*zeta^3 + 
90*zeta^2 - 360)*q^89 + (360*zeta^9 - 360*zeta^8 - 180*zeta^7 - 90*zeta^6 - 
90*zeta^5 - 180*zeta^4 - 360*zeta^3 + 360*zeta^2 + 540)*q^92 + (75*zeta^9 + 
200*zeta^8 + 100*zeta^7 + 50*zeta^6 + 50*zeta^5 + 100*zeta^4 + 200*zeta^3 + 
75*zeta^2 + 250)*q^93 + (-510*zeta^9 - 425*zeta^8 - 680*zeta^7 - 340*zeta^6 - 
340*zeta^5 - 680*zeta^4 - 425*zeta^3 - 510*zeta^2 + 170)*q^97 + (80*zeta^9 - 
80*zeta^8 - 40*zeta^7 - 240*zeta^6 - 240*zeta^5 - 40*zeta^4 - 80*zeta^3 + 
80*zeta^2 - 320)*q^100 + (-80*zeta^9 + 80*zeta^8 + 40*zeta^7 + 20*zeta^6 + 
20*zeta^5 + 40*zeta^4 + 80*zeta^3 - 80*zeta^2 - 120)*q^103 + (300*zeta^9 + 
250*zeta^8 + 400*zeta^7 + 200*zeta^6 + 200*zeta^5 + 400*zeta^4 + 250*zeta^3 + 
300*zeta^2 - 100)*q^108 + (70*zeta^9 - 70*zeta^8 - 35*zeta^7 - 210*zeta^6 - 
210*zeta^5 - 35*zeta^4 - 70*zeta^3 + 70*zeta^2 - 280)*q^111 + (105*zeta^9 - 
105*zeta^8 + 525*zeta^7 - 315*zeta^6 - 315*zeta^5 + 525*zeta^4 - 105*zeta^3 + 
105*zeta^2 + 735)*q^113 + (405*zeta^9 + 1080*zeta^8 + 540*zeta^7 + 270*zeta^6 + 
270*zeta^5 + 540*zeta^4 + 1080*zeta^3 + 405*zeta^2 + 1350)*q^115 + (50*zeta^9 - 
50*zeta^8 + 250*zeta^7 - 150*zeta^6 - 150*zeta^5 + 250*zeta^4 - 50*zeta^3 + 
50*zeta^2 + 350)*q^124 + (60*zeta^9 - 60*zeta^8 - 30*zeta^7 - 15*zeta^6 - 
15*zeta^5 - 30*zeta^4 - 60*zeta^3 + 60*zeta^2 + 90)*q^125 + (-75*zeta^9 + 
75*zeta^8 - 375*zeta^7 + 225*zeta^6 + 225*zeta^5 - 375*zeta^4 + 75*zeta^3 - 
75*zeta^2 - 525)*q^135 + (-45*zeta^9 - 120*zeta^8 - 60*zeta^7 - 30*zeta^6 - 
30*zeta^5 - 60*zeta^4 - 120*zeta^3 - 45*zeta^2 - 150)*q^137 + (-360*zeta^9 - 
300*zeta^8 - 480*zeta^7 - 240*zeta^6 - 240*zeta^5 - 480*zeta^4 - 300*zeta^3 - 
360*zeta^2 + 120)*q^141 + (80*zeta^9 - 80*zeta^8 - 40*zeta^7 - 240*zeta^6 - 
240*zeta^5 - 40*zeta^4 - 80*zeta^3 + 80*zeta^2 - 320)*q^144 + (140*zeta^9 - 
140*zeta^8 - 70*zeta^7 - 35*zeta^6 - 35*zeta^5 - 70*zeta^4 - 140*zeta^3 + 
140*zeta^2 + 210)*q^147 + (-210*zeta^9 - 560*zeta^8 - 280*zeta^7 - 140*zeta^6 - 
140*zeta^5 - 280*zeta^4 - 560*zeta^3 - 210*zeta^2 - 700)*q^148 + (-150*zeta^9 + 
150*zeta^8 + 75*zeta^7 + 450*zeta^6 + 450*zeta^5 + 75*zeta^4 + 150*zeta^3 - 
150*zeta^2 + 600)*q^155 + (-115*zeta^9 + 115*zeta^8 - 575*zeta^7 + 345*zeta^6 + 
345*zeta^5 - 575*zeta^4 + 115*zeta^3 - 115*zeta^2 - 805)*q^157 + (-90*zeta^9 - 
240*zeta^8 - 120*zeta^7 - 60*zeta^6 - 60*zeta^5 - 120*zeta^4 - 240*zeta^3 - 
90*zeta^2 - 300)*q^159 + (480*zeta^9 + 400*zeta^8 + 640*zeta^7 + 320*zeta^6 + 
320*zeta^5 + 640*zeta^4 + 400*zeta^3 + 480*zeta^2 - 160)*q^163 + (-260*zeta^9 + 
260*zeta^8 + 130*zeta^7 + 65*zeta^6 + 65*zeta^5 + 130*zeta^4 + 260*zeta^3 - 
260*zeta^2 - 390)*q^169 + (-150*zeta^9 + 150*zeta^8 + 75*zeta^7 + 450*zeta^6 + 
450*zeta^5 + 75*zeta^4 + 150*zeta^3 - 150*zeta^2 + 600)*q^177 + (105*zeta^9 - 
105*zeta^8 + 525*zeta^7 - 315*zeta^6 - 315*zeta^5 + 525*zeta^4 - 105*zeta^3 + 
105*zeta^2 + 735)*q^179 + (-240*zeta^9 + 240*zeta^8 + 120*zeta^7 + 60*zeta^6 + 
60*zeta^5 + 120*zeta^4 + 240*zeta^3 - 240*zeta^2 - 360)*q^180 + (-375*zeta^9 - 
1000*zeta^8 - 500*zeta^7 - 250*zeta^6 - 250*zeta^5 - 500*zeta^4 - 1000*zeta^3 - 
375*zeta^2 - 1250)*q^181 + (630*zeta^9 + 525*zeta^8 + 840*zeta^7 + 420*zeta^6 + 
420*zeta^5 + 840*zeta^4 + 525*zeta^3 + 630*zeta^2 - 210)*q^185 + (-240*zeta^9 + 
240*zeta^8 + 120*zeta^7 + 720*zeta^6 + 720*zeta^5 + 120*zeta^4 + 240*zeta^3 - 
240*zeta^2 + 960)*q^188 + (-300*zeta^9 + 300*zeta^8 + 150*zeta^7 + 75*zeta^6 + 
75*zeta^5 + 150*zeta^4 + 300*zeta^3 - 300*zeta^2 - 450)*q^191 + (120*zeta^9 + 
320*zeta^8 + 160*zeta^7 + 80*zeta^6 + 80*zeta^5 + 160*zeta^4 + 320*zeta^3 + 
120*zeta^2 + 400)*q^192 + (-420*zeta^9 - 350*zeta^8 - 560*zeta^7 - 280*zeta^6 - 
280*zeta^5 - 560*zeta^4 - 350*zeta^3 - 420*zeta^2 + 140)*q^196 + (200*zeta^9 - 
200*zeta^8 - 100*zeta^7 - 600*zeta^6 - 600*zeta^5 - 100*zeta^4 - 200*zeta^3 + 
200*zeta^2 - 800)*q^199 + O(q^200), (5*zeta^8 + 10*zeta^7 + 5*zeta^6 + 5*zeta^5 
+ 10*zeta^4 + 5*zeta^3 + 15)*q + (-5*zeta^9 + 5*zeta^8 - 5*zeta^7 - 5*zeta^4 + 
5*zeta^3 - 5*zeta^2 + 10)*q^2 + (-10*zeta^9 - 20*zeta^8 - 10*zeta^7 - 20*zeta^6 
- 20*zeta^5 - 10*zeta^4 - 20*zeta^3 - 10*zeta^2 + 10)*q^3 + (5*zeta^8 + 5*zeta^7
- 5*zeta^6 - 5*zeta^5 + 5*zeta^4 + 5*zeta^3 - 10)*q^4 + (10*zeta^9 + 5*zeta^8 + 
5*zeta^7 + 5*zeta^4 + 5*zeta^3 + 10*zeta^2 + 15)*q^5 + (20*zeta^9 + 10*zeta^8 + 
10*zeta^7 + 10*zeta^4 + 10*zeta^3 + 20*zeta^2 + 30)*q^6 + (10*zeta^8 + 10*zeta^7
- 10*zeta^6 - 10*zeta^5 + 10*zeta^4 + 10*zeta^3 - 20)*q^7 + (15*zeta^9 + 
30*zeta^8 + 15*zeta^7 + 30*zeta^6 + 30*zeta^5 + 15*zeta^4 + 30*zeta^3 + 
15*zeta^2 - 15)*q^8 + (-5*zeta^9 + 5*zeta^8 - 5*zeta^7 - 5*zeta^4 + 5*zeta^3 - 
5*zeta^2 + 10)*q^9 + (5*zeta^8 + 10*zeta^7 + 5*zeta^6 + 5*zeta^5 + 10*zeta^4 + 
5*zeta^3 + 15)*q^10 + (-10*zeta^8 - 20*zeta^7 - 10*zeta^6 - 10*zeta^5 - 
20*zeta^4 - 10*zeta^3 - 30)*q^12 + (-5*zeta^9 + 5*zeta^8 - 5*zeta^7 - 5*zeta^4 +
5*zeta^3 - 5*zeta^2 + 10)*q^13 + (10*zeta^9 + 20*zeta^8 + 10*zeta^7 + 20*zeta^6 
+ 20*zeta^5 + 10*zeta^4 + 20*zeta^3 + 10*zeta^2 - 10)*q^14 + (-10*zeta^8 - 
10*zeta^7 + 10*zeta^6 + 10*zeta^5 - 10*zeta^4 - 10*zeta^3 + 20)*q^15 + 
(-10*zeta^9 - 5*zeta^8 - 5*zeta^7 - 5*zeta^4 - 5*zeta^3 - 10*zeta^2 - 15)*q^16 +
(-50*zeta^9 - 25*zeta^8 - 25*zeta^7 - 25*zeta^4 - 25*zeta^3 - 50*zeta^2 - 
75)*q^17 + (-5*zeta^8 - 5*zeta^7 + 5*zeta^6 + 5*zeta^5 - 5*zeta^4 - 5*zeta^3 + 
10)*q^18 + (-30*zeta^9 - 60*zeta^8 - 30*zeta^7 - 60*zeta^6 - 60*zeta^5 - 
30*zeta^4 - 60*zeta^3 - 30*zeta^2 + 30)*q^19 + (5*zeta^9 - 5*zeta^8 + 5*zeta^7 +
5*zeta^4 - 5*zeta^3 + 5*zeta^2 - 10)*q^20 + (-20*zeta^8 - 40*zeta^7 - 20*zeta^6 
- 20*zeta^5 - 40*zeta^4 - 20*zeta^3 - 60)*q^21 + (10*zeta^8 + 20*zeta^7 + 
10*zeta^6 + 10*zeta^5 + 20*zeta^4 + 10*zeta^3 + 30)*q^23 + (30*zeta^9 - 
30*zeta^8 + 30*zeta^7 + 30*zeta^4 - 30*zeta^3 + 30*zeta^2 - 60)*q^24 + 
(20*zeta^9 + 40*zeta^8 + 20*zeta^7 + 40*zeta^6 + 40*zeta^5 + 20*zeta^4 + 
40*zeta^3 + 20*zeta^2 - 20)*q^25 + (-5*zeta^8 - 5*zeta^7 + 5*zeta^6 + 5*zeta^5 -
5*zeta^4 - 5*zeta^3 + 10)*q^26 + (-40*zeta^9 - 20*zeta^8 - 20*zeta^7 - 20*zeta^4
- 20*zeta^3 - 40*zeta^2 - 60)*q^27 + (20*zeta^9 + 10*zeta^8 + 10*zeta^7 + 
10*zeta^4 + 10*zeta^3 + 20*zeta^2 + 30)*q^28 + (-45*zeta^8 - 45*zeta^7 + 
45*zeta^6 + 45*zeta^5 - 45*zeta^4 - 45*zeta^3 + 90)*q^29 + (-10*zeta^9 - 
20*zeta^8 - 10*zeta^7 - 20*zeta^6 - 20*zeta^5 - 10*zeta^4 - 20*zeta^3 - 
10*zeta^2 + 10)*q^30 + (10*zeta^9 - 10*zeta^8 + 10*zeta^7 + 10*zeta^4 - 
10*zeta^3 + 10*zeta^2 - 20)*q^31 + (25*zeta^8 + 50*zeta^7 + 25*zeta^6 + 
25*zeta^5 + 50*zeta^4 + 25*zeta^3 + 75)*q^32 + (-25*zeta^8 - 50*zeta^7 - 
25*zeta^6 - 25*zeta^5 - 50*zeta^4 - 25*zeta^3 - 75)*q^34 + (10*zeta^9 - 
10*zeta^8 + 10*zeta^7 + 10*zeta^4 - 10*zeta^3 + 10*zeta^2 - 20)*q^35 + (5*zeta^9
+ 10*zeta^8 + 5*zeta^7 + 10*zeta^6 + 10*zeta^5 + 5*zeta^4 + 10*zeta^3 + 5*zeta^2
- 5)*q^36 + (15*zeta^8 + 15*zeta^7 - 15*zeta^6 - 15*zeta^5 + 15*zeta^4 + 
15*zeta^3 - 30)*q^37 + (60*zeta^9 + 30*zeta^8 + 30*zeta^7 + 30*zeta^4 + 
30*zeta^3 + 60*zeta^2 + 90)*q^38 + (20*zeta^9 + 10*zeta^8 + 10*zeta^7 + 
10*zeta^4 + 10*zeta^3 + 20*zeta^2 + 30)*q^39 + (15*zeta^8 + 15*zeta^7 - 
15*zeta^6 - 15*zeta^5 + 15*zeta^4 + 15*zeta^3 - 30)*q^40 + (25*zeta^9 + 
50*zeta^8 + 25*zeta^7 + 50*zeta^6 + 50*zeta^5 + 25*zeta^4 + 50*zeta^3 + 
25*zeta^2 - 25)*q^41 + (20*zeta^9 - 20*zeta^8 + 20*zeta^7 + 20*zeta^4 - 
20*zeta^3 + 20*zeta^2 - 40)*q^42 + (5*zeta^8 + 10*zeta^7 + 5*zeta^6 + 5*zeta^5 +
10*zeta^4 + 5*zeta^3 + 15)*q^45 + (-10*zeta^9 + 10*zeta^8 - 10*zeta^7 - 
10*zeta^4 + 10*zeta^3 - 10*zeta^2 + 20)*q^46 + (-10*zeta^9 - 20*zeta^8 - 
10*zeta^7 - 20*zeta^6 - 20*zeta^5 - 10*zeta^4 - 20*zeta^3 - 10*zeta^2 + 10)*q^47
+ (10*zeta^8 + 10*zeta^7 - 10*zeta^6 - 10*zeta^5 + 10*zeta^4 + 10*zeta^3 - 
20)*q^48 + (-30*zeta^9 - 15*zeta^8 - 15*zeta^7 - 15*zeta^4 - 15*zeta^3 - 
30*zeta^2 - 45)*q^49 + (-40*zeta^9 - 20*zeta^8 - 20*zeta^7 - 20*zeta^4 - 
20*zeta^3 - 40*zeta^2 - 60)*q^50 + (50*zeta^8 + 50*zeta^7 - 50*zeta^6 - 
50*zeta^5 + 50*zeta^4 + 50*zeta^3 - 100)*q^51 + (5*zeta^9 + 10*zeta^8 + 5*zeta^7
+ 10*zeta^6 + 10*zeta^5 + 5*zeta^4 + 10*zeta^3 + 5*zeta^2 - 5)*q^52 + 
(-45*zeta^9 + 45*zeta^8 - 45*zeta^7 - 45*zeta^4 + 45*zeta^3 - 45*zeta^2 + 
90)*q^53 + (-20*zeta^8 - 40*zeta^7 - 20*zeta^6 - 20*zeta^5 - 40*zeta^4 - 
20*zeta^3 - 60)*q^54 + (30*zeta^8 + 60*zeta^7 + 30*zeta^6 + 30*zeta^5 + 
60*zeta^4 + 30*zeta^3 + 90)*q^56 + (-60*zeta^9 + 60*zeta^8 - 60*zeta^7 - 
60*zeta^4 + 60*zeta^3 - 60*zeta^2 + 120)*q^57 + (-45*zeta^9 - 90*zeta^8 - 
45*zeta^7 - 90*zeta^6 - 90*zeta^5 - 45*zeta^4 - 90*zeta^3 - 45*zeta^2 + 45)*q^58
+ (-40*zeta^8 - 40*zeta^7 + 40*zeta^6 + 40*zeta^5 - 40*zeta^4 - 40*zeta^3 + 
80)*q^59 + (-20*zeta^9 - 10*zeta^8 - 10*zeta^7 - 10*zeta^4 - 10*zeta^3 - 
20*zeta^2 - 30)*q^60 + (60*zeta^9 + 30*zeta^8 + 30*zeta^7 + 30*zeta^4 + 
30*zeta^3 + 60*zeta^2 + 90)*q^61 + (10*zeta^8 + 10*zeta^7 - 10*zeta^6 - 
10*zeta^5 + 10*zeta^4 + 10*zeta^3 - 20)*q^62 + (10*zeta^9 + 20*zeta^8 + 
10*zeta^7 + 20*zeta^6 + 20*zeta^5 + 10*zeta^4 + 20*zeta^3 + 10*zeta^2 - 10)*q^63
+ (-35*zeta^9 + 35*zeta^8 - 35*zeta^7 - 35*zeta^4 + 35*zeta^3 - 35*zeta^2 + 
70)*q^64 + (5*zeta^8 + 10*zeta^7 + 5*zeta^6 + 5*zeta^5 + 10*zeta^4 + 5*zeta^3 + 
15)*q^65 + (10*zeta^8 + 20*zeta^7 + 10*zeta^6 + 10*zeta^5 + 20*zeta^4 + 
10*zeta^3 + 30)*q^67 + (-25*zeta^9 + 25*zeta^8 - 25*zeta^7 - 25*zeta^4 + 
25*zeta^3 - 25*zeta^2 + 50)*q^68 + (-20*zeta^9 - 40*zeta^8 - 20*zeta^7 - 
40*zeta^6 - 40*zeta^5 - 20*zeta^4 - 40*zeta^3 - 20*zeta^2 + 20)*q^69 + 
(10*zeta^8 + 10*zeta^7 - 10*zeta^6 - 10*zeta^5 + 10*zeta^4 + 10*zeta^3 - 
20)*q^70 + (120*zeta^9 + 60*zeta^8 + 60*zeta^7 + 60*zeta^4 + 60*zeta^3 + 
120*zeta^2 + 180)*q^71 + (-30*zeta^9 - 15*zeta^8 - 15*zeta^7 - 15*zeta^4 - 
15*zeta^3 - 30*zeta^2 - 45)*q^72 + (10*zeta^8 + 10*zeta^7 - 10*zeta^6 - 
10*zeta^5 + 10*zeta^4 + 10*zeta^3 - 20)*q^73 + (15*zeta^9 + 30*zeta^8 + 
15*zeta^7 + 30*zeta^6 + 30*zeta^5 + 15*zeta^4 + 30*zeta^3 + 15*zeta^2 - 15)*q^74
+ (40*zeta^9 - 40*zeta^8 + 40*zeta^7 + 40*zeta^4 - 40*zeta^3 + 40*zeta^2 - 
80)*q^75 + (-30*zeta^8 - 60*zeta^7 - 30*zeta^6 - 30*zeta^5 - 60*zeta^4 - 
30*zeta^3 - 90)*q^76 + (10*zeta^8 + 20*zeta^7 + 10*zeta^6 + 10*zeta^5 + 
20*zeta^4 + 10*zeta^3 + 30)*q^78 + (50*zeta^9 - 50*zeta^8 + 50*zeta^7 + 
50*zeta^4 - 50*zeta^3 + 50*zeta^2 - 100)*q^79 + (5*zeta^9 + 10*zeta^8 + 5*zeta^7
+ 10*zeta^6 + 10*zeta^5 + 5*zeta^4 + 10*zeta^3 + 5*zeta^2 - 5)*q^80 + (55*zeta^8
+ 55*zeta^7 - 55*zeta^6 - 55*zeta^5 + 55*zeta^4 + 55*zeta^3 - 110)*q^81 + 
(-50*zeta^9 - 25*zeta^8 - 25*zeta^7 - 25*zeta^4 - 25*zeta^3 - 50*zeta^2 - 
75)*q^82 + (60*zeta^9 + 30*zeta^8 + 30*zeta^7 + 30*zeta^4 + 30*zeta^3 + 
60*zeta^2 + 90)*q^83 + (-20*zeta^8 - 20*zeta^7 + 20*zeta^6 + 20*zeta^5 - 
20*zeta^4 - 20*zeta^3 + 40)*q^84 + (25*zeta^9 + 50*zeta^8 + 25*zeta^7 + 
50*zeta^6 + 50*zeta^5 + 25*zeta^4 + 50*zeta^3 + 25*zeta^2 - 25)*q^85 + 
(90*zeta^8 + 180*zeta^7 + 90*zeta^6 + 90*zeta^5 + 180*zeta^4 + 90*zeta^3 + 
270)*q^87 + (-45*zeta^8 - 90*zeta^7 - 45*zeta^6 - 45*zeta^5 - 90*zeta^4 - 
45*zeta^3 - 135)*q^89 + (-5*zeta^9 + 5*zeta^8 - 5*zeta^7 - 5*zeta^4 + 5*zeta^3 -
5*zeta^2 + 10)*q^90 + (10*zeta^9 + 20*zeta^8 + 10*zeta^7 + 20*zeta^6 + 20*zeta^5
+ 10*zeta^4 + 20*zeta^3 + 10*zeta^2 - 10)*q^91 + (10*zeta^8 + 10*zeta^7 - 
10*zeta^6 - 10*zeta^5 + 10*zeta^4 + 10*zeta^3 - 20)*q^92 + (-40*zeta^9 - 
20*zeta^8 - 20*zeta^7 - 20*zeta^4 - 20*zeta^3 - 40*zeta^2 - 60)*q^93 + 
(20*zeta^9 + 10*zeta^8 + 10*zeta^7 + 10*zeta^4 + 10*zeta^3 + 20*zeta^2 + 
30)*q^94 + (-30*zeta^8 - 30*zeta^7 + 30*zeta^6 + 30*zeta^5 - 30*zeta^4 - 
30*zeta^3 + 60)*q^95 + (-50*zeta^9 - 100*zeta^8 - 50*zeta^7 - 100*zeta^6 - 
100*zeta^5 - 50*zeta^4 - 100*zeta^3 - 50*zeta^2 + 50)*q^96 + (65*zeta^9 - 
65*zeta^8 + 65*zeta^7 + 65*zeta^4 - 65*zeta^3 + 65*zeta^2 - 130)*q^97 + 
(-15*zeta^8 - 30*zeta^7 - 15*zeta^6 - 15*zeta^5 - 30*zeta^4 - 15*zeta^3 - 
45)*q^98 + (20*zeta^8 + 40*zeta^7 + 20*zeta^6 + 20*zeta^5 + 40*zeta^4 + 
20*zeta^3 + 60)*q^100 + (50*zeta^9 - 50*zeta^8 + 50*zeta^7 + 50*zeta^4 - 
50*zeta^3 + 50*zeta^2 - 100)*q^101 + (50*zeta^9 + 100*zeta^8 + 50*zeta^7 + 
100*zeta^6 + 100*zeta^5 + 50*zeta^4 + 100*zeta^3 + 50*zeta^2 - 50)*q^102 + 
(-40*zeta^8 - 40*zeta^7 + 40*zeta^6 + 40*zeta^5 - 40*zeta^4 - 40*zeta^3 + 
80)*q^103 + (-30*zeta^9 - 15*zeta^8 - 15*zeta^7 - 15*zeta^4 - 15*zeta^3 - 
30*zeta^2 - 45)*q^104 + (-40*zeta^9 - 20*zeta^8 - 20*zeta^7 - 20*zeta^4 - 
20*zeta^3 - 40*zeta^2 - 60)*q^105 + (-45*zeta^8 - 45*zeta^7 + 45*zeta^6 + 
45*zeta^5 - 45*zeta^4 - 45*zeta^3 + 90)*q^106 + (-30*zeta^9 - 60*zeta^8 - 
30*zeta^7 - 60*zeta^6 - 60*zeta^5 - 30*zeta^4 - 60*zeta^3 - 30*zeta^2 + 
30)*q^107 + (-20*zeta^9 + 20*zeta^8 - 20*zeta^7 - 20*zeta^4 + 20*zeta^3 - 
20*zeta^2 + 40)*q^108 + (-55*zeta^8 - 110*zeta^7 - 55*zeta^6 - 55*zeta^5 - 
110*zeta^4 - 55*zeta^3 - 165)*q^109 + (-30*zeta^8 - 60*zeta^7 - 30*zeta^6 - 
30*zeta^5 - 60*zeta^4 - 30*zeta^3 - 90)*q^111 + (-10*zeta^9 + 10*zeta^8 - 
10*zeta^7 - 10*zeta^4 + 10*zeta^3 - 10*zeta^2 + 20)*q^112 + (45*zeta^9 + 
90*zeta^8 + 45*zeta^7 + 90*zeta^6 + 90*zeta^5 + 45*zeta^4 + 90*zeta^3 + 
45*zeta^2 - 45)*q^113 + (-60*zeta^8 - 60*zeta^7 + 60*zeta^6 + 60*zeta^5 - 
60*zeta^4 - 60*zeta^3 + 120)*q^114 + (20*zeta^9 + 10*zeta^8 + 10*zeta^7 + 
10*zeta^4 + 10*zeta^3 + 20*zeta^2 + 30)*q^115 + (-90*zeta^9 - 45*zeta^8 - 
45*zeta^7 - 45*zeta^4 - 45*zeta^3 - 90*zeta^2 - 135)*q^116 + (-5*zeta^8 - 
5*zeta^7 + 5*zeta^6 + 5*zeta^5 - 5*zeta^4 - 5*zeta^3 + 10)*q^117 + (-40*zeta^9 -
80*zeta^8 - 40*zeta^7 - 80*zeta^6 - 80*zeta^5 - 40*zeta^4 - 80*zeta^3 - 
40*zeta^2 + 40)*q^118 + (-50*zeta^9 + 50*zeta^8 - 50*zeta^7 - 50*zeta^4 + 
50*zeta^3 - 50*zeta^2 + 100)*q^119 + (-30*zeta^8 - 60*zeta^7 - 30*zeta^6 - 
30*zeta^5 - 60*zeta^4 - 30*zeta^3 - 90)*q^120 + (30*zeta^8 + 60*zeta^7 + 
30*zeta^6 + 30*zeta^5 + 60*zeta^4 + 30*zeta^3 + 90)*q^122 + (50*zeta^9 - 
50*zeta^8 + 50*zeta^7 + 50*zeta^4 - 50*zeta^3 + 50*zeta^2 - 100)*q^123 + 
(-10*zeta^9 - 20*zeta^8 - 10*zeta^7 - 20*zeta^6 - 20*zeta^5 - 10*zeta^4 - 
20*zeta^3 - 10*zeta^2 + 10)*q^124 + (45*zeta^8 + 45*zeta^7 - 45*zeta^6 - 
45*zeta^5 + 45*zeta^4 + 45*zeta^3 - 90)*q^125 + (-20*zeta^9 - 10*zeta^8 - 
10*zeta^7 - 10*zeta^4 - 10*zeta^3 - 20*zeta^2 - 30)*q^126 + (-160*zeta^9 - 
80*zeta^8 - 80*zeta^7 - 80*zeta^4 - 80*zeta^3 - 160*zeta^2 - 240)*q^127 + 
(15*zeta^8 + 15*zeta^7 - 15*zeta^6 - 15*zeta^5 + 15*zeta^4 + 15*zeta^3 - 
30)*q^128 + (-5*zeta^9 + 5*zeta^8 - 5*zeta^7 - 5*zeta^4 + 5*zeta^3 - 5*zeta^2 + 
10)*q^130 + (-60*zeta^8 - 120*zeta^7 - 60*zeta^6 - 60*zeta^5 - 120*zeta^4 - 
60*zeta^3 - 180)*q^133 + (-10*zeta^9 + 10*zeta^8 - 10*zeta^7 - 10*zeta^4 + 
10*zeta^3 - 10*zeta^2 + 20)*q^134 + (20*zeta^9 + 40*zeta^8 + 20*zeta^7 + 
40*zeta^6 + 40*zeta^5 + 20*zeta^4 + 40*zeta^3 + 20*zeta^2 - 20)*q^135 + 
(-75*zeta^8 - 75*zeta^7 + 75*zeta^6 + 75*zeta^5 - 75*zeta^4 - 75*zeta^3 + 
150)*q^136 + (-100*zeta^9 - 50*zeta^8 - 50*zeta^7 - 50*zeta^4 - 50*zeta^3 - 
100*zeta^2 - 150)*q^137 + (40*zeta^9 + 20*zeta^8 + 20*zeta^7 + 20*zeta^4 + 
20*zeta^3 + 40*zeta^2 + 60)*q^138 + (10*zeta^8 + 10*zeta^7 - 10*zeta^6 - 
10*zeta^5 + 10*zeta^4 + 10*zeta^3 - 20)*q^139 + (-10*zeta^9 - 20*zeta^8 - 
10*zeta^7 - 20*zeta^6 - 20*zeta^5 - 10*zeta^4 - 20*zeta^3 - 10*zeta^2 + 
10)*q^140 + (-20*zeta^9 + 20*zeta^8 - 20*zeta^7 - 20*zeta^4 + 20*zeta^3 - 
20*zeta^2 + 40)*q^141 + (60*zeta^8 + 120*zeta^7 + 60*zeta^6 + 60*zeta^5 + 
120*zeta^4 + 60*zeta^3 + 180)*q^142 + (-5*zeta^8 - 10*zeta^7 - 5*zeta^6 - 
5*zeta^5 - 10*zeta^4 - 5*zeta^3 - 15)*q^144 + (-45*zeta^9 + 45*zeta^8 - 
45*zeta^7 - 45*zeta^4 + 45*zeta^3 - 45*zeta^2 + 90)*q^145 + (10*zeta^9 + 
20*zeta^8 + 10*zeta^7 + 20*zeta^6 + 20*zeta^5 + 10*zeta^4 + 20*zeta^3 + 
10*zeta^2 - 10)*q^146 + (30*zeta^8 + 30*zeta^7 - 30*zeta^6 - 30*zeta^5 + 
30*zeta^4 + 30*zeta^3 - 60)*q^147 + (30*zeta^9 + 15*zeta^8 + 15*zeta^7 + 
15*zeta^4 + 15*zeta^3 + 30*zeta^2 + 45)*q^148 + (170*zeta^9 + 85*zeta^8 + 
85*zeta^7 + 85*zeta^4 + 85*zeta^3 + 170*zeta^2 + 255)*q^149 + (40*zeta^8 + 
40*zeta^7 - 40*zeta^6 - 40*zeta^5 + 40*zeta^4 + 40*zeta^3 - 80)*q^150 + 
(80*zeta^9 + 160*zeta^8 + 80*zeta^7 + 160*zeta^6 + 160*zeta^5 + 80*zeta^4 + 
160*zeta^3 + 80*zeta^2 - 80)*q^151 + (90*zeta^9 - 90*zeta^8 + 90*zeta^7 + 
90*zeta^4 - 90*zeta^3 + 90*zeta^2 - 180)*q^152 + (-25*zeta^8 - 50*zeta^7 - 
25*zeta^6 - 25*zeta^5 - 50*zeta^4 - 25*zeta^3 - 75)*q^153 + (-10*zeta^8 - 
20*zeta^7 - 10*zeta^6 - 10*zeta^5 - 20*zeta^4 - 10*zeta^3 - 30)*q^155 + 
(10*zeta^9 - 10*zeta^8 + 10*zeta^7 + 10*zeta^4 - 10*zeta^3 + 10*zeta^2 - 
20)*q^156 + (-10*zeta^9 - 20*zeta^8 - 10*zeta^7 - 20*zeta^6 - 20*zeta^5 - 
10*zeta^4 - 20*zeta^3 - 10*zeta^2 + 10)*q^157 + (50*zeta^8 + 50*zeta^7 - 
50*zeta^6 - 50*zeta^5 + 50*zeta^4 + 50*zeta^3 - 100)*q^158 + (180*zeta^9 + 
90*zeta^8 + 90*zeta^7 + 90*zeta^4 + 90*zeta^3 + 180*zeta^2 + 270)*q^159 + 
(50*zeta^9 + 25*zeta^8 + 25*zeta^7 + 25*zeta^4 + 25*zeta^3 + 50*zeta^2 + 
75)*q^160 + (20*zeta^8 + 20*zeta^7 - 20*zeta^6 - 20*zeta^5 + 20*zeta^4 + 
20*zeta^3 - 40)*q^161 + (55*zeta^9 + 110*zeta^8 + 55*zeta^7 + 110*zeta^6 + 
110*zeta^5 + 55*zeta^4 + 110*zeta^3 + 55*zeta^2 - 55)*q^162 + (10*zeta^9 - 
10*zeta^8 + 10*zeta^7 + 10*zeta^4 - 10*zeta^3 + 10*zeta^2 - 20)*q^163 + 
(25*zeta^8 + 50*zeta^7 + 25*zeta^6 + 25*zeta^5 + 50*zeta^4 + 25*zeta^3 + 
75)*q^164 + (30*zeta^8 + 60*zeta^7 + 30*zeta^6 + 30*zeta^5 + 60*zeta^4 + 
30*zeta^3 + 90)*q^166 + (-60*zeta^9 + 60*zeta^8 - 60*zeta^7 - 60*zeta^4 + 
60*zeta^3 - 60*zeta^2 + 120)*q^167 + (-60*zeta^9 - 120*zeta^8 - 60*zeta^7 - 
120*zeta^6 - 120*zeta^5 - 60*zeta^4 - 120*zeta^3 - 60*zeta^2 + 60)*q^168 + 
(60*zeta^8 + 60*zeta^7 - 60*zeta^6 - 60*zeta^5 + 60*zeta^4 + 60*zeta^3 - 
120)*q^169 + (-50*zeta^9 - 25*zeta^8 - 25*zeta^7 - 25*zeta^4 - 25*zeta^3 - 
50*zeta^2 - 75)*q^170 + (60*zeta^9 + 30*zeta^8 + 30*zeta^7 + 30*zeta^4 + 
30*zeta^3 + 60*zeta^2 + 90)*q^171 + (-30*zeta^9 - 60*zeta^8 - 30*zeta^7 - 
60*zeta^6 - 60*zeta^5 - 30*zeta^4 - 60*zeta^3 - 30*zeta^2 + 30)*q^173 + 
(-90*zeta^9 + 90*zeta^8 - 90*zeta^7 - 90*zeta^4 + 90*zeta^3 - 90*zeta^2 + 
180)*q^174 + (40*zeta^8 + 80*zeta^7 + 40*zeta^6 + 40*zeta^5 + 80*zeta^4 + 
40*zeta^3 + 120)*q^175 + (80*zeta^8 + 160*zeta^7 + 80*zeta^6 + 80*zeta^5 + 
160*zeta^4 + 80*zeta^3 + 240)*q^177 + (45*zeta^9 - 45*zeta^8 + 45*zeta^7 + 
45*zeta^4 - 45*zeta^3 + 45*zeta^2 - 90)*q^178 + (-120*zeta^9 - 240*zeta^8 - 
120*zeta^7 - 240*zeta^6 - 240*zeta^5 - 120*zeta^4 - 240*zeta^3 - 120*zeta^2 + 
120)*q^179 + (5*zeta^8 + 5*zeta^7 - 5*zeta^6 - 5*zeta^5 + 5*zeta^4 + 5*zeta^3 - 
10)*q^180 + (10*zeta^9 + 5*zeta^8 + 5*zeta^7 + 5*zeta^4 + 5*zeta^3 + 10*zeta^2 +
15)*q^181 + (-20*zeta^9 - 10*zeta^8 - 10*zeta^7 - 10*zeta^4 - 10*zeta^3 - 
20*zeta^2 - 30)*q^182 + (-60*zeta^8 - 60*zeta^7 + 60*zeta^6 + 60*zeta^5 - 
60*zeta^4 - 60*zeta^3 + 120)*q^183 + (30*zeta^9 + 60*zeta^8 + 30*zeta^7 + 
60*zeta^6 + 60*zeta^5 + 30*zeta^4 + 60*zeta^3 + 30*zeta^2 - 30)*q^184 + 
(15*zeta^9 - 15*zeta^8 + 15*zeta^7 + 15*zeta^4 - 15*zeta^3 + 15*zeta^2 - 
30)*q^185 + (-20*zeta^8 - 40*zeta^7 - 20*zeta^6 - 20*zeta^5 - 40*zeta^4 - 
20*zeta^3 - 60)*q^186 + (-10*zeta^8 - 20*zeta^7 - 10*zeta^6 - 10*zeta^5 - 
20*zeta^4 - 10*zeta^3 - 30)*q^188 + (-40*zeta^9 + 40*zeta^8 - 40*zeta^7 - 
40*zeta^4 + 40*zeta^3 - 40*zeta^2 + 80)*q^189 + (-30*zeta^9 - 60*zeta^8 - 
30*zeta^7 - 60*zeta^6 - 60*zeta^5 - 30*zeta^4 - 60*zeta^3 - 30*zeta^2 + 
30)*q^190 + (-40*zeta^8 - 40*zeta^7 + 40*zeta^6 + 40*zeta^5 - 40*zeta^4 - 
40*zeta^3 + 80)*q^191 + (140*zeta^9 + 70*zeta^8 + 70*zeta^7 + 70*zeta^4 + 
70*zeta^3 + 140*zeta^2 + 210)*q^192 + (-50*zeta^9 - 25*zeta^8 - 25*zeta^7 - 
25*zeta^4 - 25*zeta^3 - 50*zeta^2 - 75)*q^193 + (65*zeta^8 + 65*zeta^7 - 
65*zeta^6 - 65*zeta^5 + 65*zeta^4 + 65*zeta^3 - 130)*q^194 + (-10*zeta^9 - 
20*zeta^8 - 10*zeta^7 - 20*zeta^6 - 20*zeta^5 - 10*zeta^4 - 20*zeta^3 - 
10*zeta^2 + 10)*q^195 + (-15*zeta^9 + 15*zeta^8 - 15*zeta^7 - 15*zeta^4 + 
15*zeta^3 - 15*zeta^2 + 30)*q^196 + (-55*zeta^8 - 110*zeta^7 - 55*zeta^6 - 
55*zeta^5 - 110*zeta^4 - 55*zeta^3 - 165)*q^197 + (120*zeta^8 + 240*zeta^7 + 
120*zeta^6 + 120*zeta^5 + 240*zeta^4 + 120*zeta^3 + 360)*q^199 + O(q^200), 
(-20*zeta^9 - 10*zeta^8 - 15*zeta^7 - 10*zeta^6 - 10*zeta^5 - 15*zeta^4 - 
10*zeta^3 - 20*zeta^2)*q + (20*zeta^9 - 10*zeta^8 - 20*zeta^7 - 20*zeta^4 - 
10*zeta^3 + 20*zeta^2 + 20)*q^2 + (-5*zeta^9 - 15*zeta^8 - 5*zeta^7 + 5*zeta^6 +
5*zeta^5 - 5*zeta^4 - 15*zeta^3 - 5*zeta^2 - 15)*q^3 + (-20*zeta^8 + 20*zeta^7 -
10*zeta^6 - 10*zeta^5 + 20*zeta^4 - 20*zeta^3 + 20)*q^4 + (5*zeta^9 + 10*zeta^8 
+ 10*zeta^7 + 20*zeta^6 + 20*zeta^5 + 10*zeta^4 + 10*zeta^3 + 5*zeta^2 + 20)*q^5
+ (-10*zeta^9 - 20*zeta^8 - 20*zeta^7 - 40*zeta^6 - 40*zeta^5 - 20*zeta^4 - 
20*zeta^3 - 10*zeta^2 - 40)*q^6 + (-20*zeta^8 + 20*zeta^7 - 10*zeta^6 - 
10*zeta^5 + 20*zeta^4 - 20*zeta^3 + 20)*q^7 + (-20*zeta^9 + 10*zeta^8 + 
20*zeta^7 + 20*zeta^4 + 10*zeta^3 - 20*zeta^2 - 20)*q^9 + (-40*zeta^9 - 
20*zeta^8 - 30*zeta^7 - 20*zeta^6 - 20*zeta^5 - 30*zeta^4 - 20*zeta^3 - 
40*zeta^2)*q^10 + (40*zeta^9 + 20*zeta^8 + 30*zeta^7 + 20*zeta^6 + 20*zeta^5 + 
30*zeta^4 + 20*zeta^3 + 40*zeta^2)*q^12 + (-40*zeta^9 + 20*zeta^8 + 40*zeta^7 + 
40*zeta^4 + 20*zeta^3 - 40*zeta^2 - 40)*q^13 + (20*zeta^9 + 60*zeta^8 + 
20*zeta^7 - 20*zeta^6 - 20*zeta^5 + 20*zeta^4 + 60*zeta^3 + 20*zeta^2 + 60)*q^14
+ (10*zeta^8 - 10*zeta^7 + 5*zeta^6 + 5*zeta^5 - 10*zeta^4 + 10*zeta^3 - 
10)*q^15 + (-20*zeta^9 - 40*zeta^8 - 40*zeta^7 - 80*zeta^6 - 80*zeta^5 - 
40*zeta^4 - 40*zeta^3 - 20*zeta^2 - 80)*q^16 + (10*zeta^9 + 20*zeta^8 + 
20*zeta^7 + 40*zeta^6 + 40*zeta^5 + 20*zeta^4 + 20*zeta^3 + 10*zeta^2 + 40)*q^17
+ (40*zeta^8 - 40*zeta^7 + 20*zeta^6 + 20*zeta^5 - 40*zeta^4 + 40*zeta^3 - 
40)*q^18 + (20*zeta^9 - 10*zeta^8 - 20*zeta^7 - 20*zeta^4 - 10*zeta^3 + 
20*zeta^2 + 20)*q^20 + (40*zeta^9 + 20*zeta^8 + 30*zeta^7 + 20*zeta^6 + 
20*zeta^5 + 30*zeta^4 + 20*zeta^3 + 40*zeta^2)*q^21 + (20*zeta^9 + 10*zeta^8 + 
15*zeta^7 + 10*zeta^6 + 10*zeta^5 + 15*zeta^4 + 10*zeta^3 + 20*zeta^2)*q^23 + 
(-20*zeta^9 - 60*zeta^8 - 20*zeta^7 + 20*zeta^6 + 20*zeta^5 - 20*zeta^4 - 
60*zeta^3 - 20*zeta^2 - 60)*q^25 + (80*zeta^8 - 80*zeta^7 + 40*zeta^6 + 
40*zeta^5 - 80*zeta^4 + 80*zeta^3 - 80)*q^26 + (25*zeta^9 + 50*zeta^8 + 
50*zeta^7 + 100*zeta^6 + 100*zeta^5 + 50*zeta^4 + 50*zeta^3 + 25*zeta^2 + 
100)*q^27 + (20*zeta^9 + 40*zeta^8 + 40*zeta^7 + 80*zeta^6 + 80*zeta^5 + 
40*zeta^4 + 40*zeta^3 + 20*zeta^2 + 80)*q^28 + (-10*zeta^9 - 30*zeta^8 - 
10*zeta^7 + 10*zeta^6 + 10*zeta^5 - 10*zeta^4 - 30*zeta^3 - 10*zeta^2 - 30)*q^30
+ (70*zeta^9 - 35*zeta^8 - 70*zeta^7 - 70*zeta^4 - 35*zeta^3 + 70*zeta^2 + 
70)*q^31 + (160*zeta^9 + 80*zeta^8 + 120*zeta^7 + 80*zeta^6 + 80*zeta^5 + 
120*zeta^4 + 80*zeta^3 + 160*zeta^2)*q^32 + (-80*zeta^9 - 40*zeta^8 - 60*zeta^7 
- 40*zeta^6 - 40*zeta^5 - 60*zeta^4 - 40*zeta^3 - 80*zeta^2)*q^34 + (20*zeta^9 -
10*zeta^8 - 20*zeta^7 - 20*zeta^4 - 10*zeta^3 + 20*zeta^2 + 20)*q^35 + 
(-20*zeta^9 - 60*zeta^8 - 20*zeta^7 + 20*zeta^6 + 20*zeta^5 - 20*zeta^4 - 
60*zeta^3 - 20*zeta^2 - 60)*q^36 + (-30*zeta^8 + 30*zeta^7 - 15*zeta^6 - 
15*zeta^5 + 30*zeta^4 - 30*zeta^3 + 30)*q^37 + (20*zeta^9 + 40*zeta^8 + 
40*zeta^7 + 80*zeta^6 + 80*zeta^5 + 40*zeta^4 + 40*zeta^3 + 20*zeta^2 + 80)*q^39
+ (40*zeta^9 + 120*zeta^8 + 40*zeta^7 - 40*zeta^6 - 40*zeta^5 + 40*zeta^4 + 
120*zeta^3 + 40*zeta^2 + 120)*q^41 + (-40*zeta^9 + 20*zeta^8 + 40*zeta^7 + 
40*zeta^4 + 20*zeta^3 - 40*zeta^2 - 40)*q^42 + (-120*zeta^9 - 60*zeta^8 - 
90*zeta^7 - 60*zeta^6 - 60*zeta^5 - 90*zeta^4 - 60*zeta^3 - 120*zeta^2)*q^43 + 
(40*zeta^9 + 20*zeta^8 + 30*zeta^7 + 20*zeta^6 + 20*zeta^5 + 30*zeta^4 + 
20*zeta^3 + 40*zeta^2)*q^45 + (-20*zeta^9 + 10*zeta^8 + 20*zeta^7 + 20*zeta^4 + 
10*zeta^3 - 20*zeta^2 - 20)*q^46 + (40*zeta^9 + 120*zeta^8 + 40*zeta^7 - 
40*zeta^6 - 40*zeta^5 + 40*zeta^4 + 120*zeta^3 + 40*zeta^2 + 120)*q^47 + 
(-40*zeta^8 + 40*zeta^7 - 20*zeta^6 - 20*zeta^5 + 40*zeta^4 - 40*zeta^3 + 
40)*q^48 + (-15*zeta^9 - 30*zeta^8 - 30*zeta^7 - 60*zeta^6 - 60*zeta^5 - 
30*zeta^4 - 30*zeta^3 - 15*zeta^2 - 60)*q^49 + (-40*zeta^9 - 80*zeta^8 - 
80*zeta^7 - 160*zeta^6 - 160*zeta^5 - 80*zeta^4 - 80*zeta^3 - 40*zeta^2 - 
160)*q^50 + (20*zeta^8 - 20*zeta^7 + 10*zeta^6 + 10*zeta^5 - 20*zeta^4 + 
20*zeta^3 - 20)*q^51 + (-40*zeta^9 - 120*zeta^8 - 40*zeta^7 + 40*zeta^6 + 
40*zeta^5 - 40*zeta^4 - 120*zeta^3 - 40*zeta^2 - 120)*q^52 + (-60*zeta^9 + 
30*zeta^8 + 60*zeta^7 + 60*zeta^4 + 30*zeta^3 - 60*zeta^2 - 60)*q^53 + 
(-200*zeta^9 - 100*zeta^8 - 150*zeta^7 - 100*zeta^6 - 100*zeta^5 - 150*zeta^4 - 
100*zeta^3 - 200*zeta^2)*q^54 + (-50*zeta^8 + 50*zeta^7 - 25*zeta^6 - 25*zeta^5 
+ 50*zeta^4 - 50*zeta^3 + 50)*q^59 + (-10*zeta^9 - 20*zeta^8 - 20*zeta^7 - 
40*zeta^6 - 40*zeta^5 - 20*zeta^4 - 20*zeta^3 - 10*zeta^2 - 40)*q^60 + 
(-60*zeta^9 - 120*zeta^8 - 120*zeta^7 - 240*zeta^6 - 240*zeta^5 - 120*zeta^4 - 
120*zeta^3 - 60*zeta^2 - 240)*q^61 + (-140*zeta^8 + 140*zeta^7 - 70*zeta^6 - 
70*zeta^5 + 140*zeta^4 - 140*zeta^3 + 140)*q^62 + (-20*zeta^9 - 60*zeta^8 - 
20*zeta^7 + 20*zeta^6 + 20*zeta^5 - 20*zeta^4 - 60*zeta^3 - 20*zeta^2 - 60)*q^63
+ (-80*zeta^9 + 40*zeta^8 + 80*zeta^7 + 80*zeta^4 + 40*zeta^3 - 80*zeta^2 - 
80)*q^64 + (80*zeta^9 + 40*zeta^8 + 60*zeta^7 + 40*zeta^6 + 40*zeta^5 + 
60*zeta^4 + 40*zeta^3 + 80*zeta^2)*q^65 + (140*zeta^9 + 70*zeta^8 + 105*zeta^7 +
70*zeta^6 + 70*zeta^5 + 105*zeta^4 + 70*zeta^3 + 140*zeta^2)*q^67 + (40*zeta^9 -
20*zeta^8 - 40*zeta^7 - 40*zeta^4 - 20*zeta^3 + 40*zeta^2 + 40)*q^68 + (5*zeta^9
+ 15*zeta^8 + 5*zeta^7 - 5*zeta^6 - 5*zeta^5 + 5*zeta^4 + 15*zeta^3 + 5*zeta^2 +
15)*q^69 + (-40*zeta^8 + 40*zeta^7 - 20*zeta^6 - 20*zeta^5 + 40*zeta^4 - 
40*zeta^3 + 40)*q^70 + (-15*zeta^9 - 30*zeta^8 - 30*zeta^7 - 60*zeta^6 - 
60*zeta^5 - 30*zeta^4 - 30*zeta^3 - 15*zeta^2 - 60)*q^71 + (40*zeta^8 - 
40*zeta^7 + 20*zeta^6 + 20*zeta^5 - 40*zeta^4 + 40*zeta^3 - 40)*q^73 + 
(30*zeta^9 + 90*zeta^8 + 30*zeta^7 - 30*zeta^6 - 30*zeta^5 + 30*zeta^4 + 
90*zeta^3 + 30*zeta^2 + 90)*q^74 + (40*zeta^9 - 20*zeta^8 - 40*zeta^7 - 
40*zeta^4 - 20*zeta^3 + 40*zeta^2 + 40)*q^75 + (-160*zeta^9 - 80*zeta^8 - 
120*zeta^7 - 80*zeta^6 - 80*zeta^5 - 120*zeta^4 - 80*zeta^3 - 160*zeta^2)*q^78 +
(100*zeta^9 - 50*zeta^8 - 100*zeta^7 - 100*zeta^4 - 50*zeta^3 + 100*zeta^2 + 
100)*q^79 + (-20*zeta^9 - 60*zeta^8 - 20*zeta^7 + 20*zeta^6 + 20*zeta^5 - 
20*zeta^4 - 60*zeta^3 - 20*zeta^2 - 60)*q^80 + (-10*zeta^8 + 10*zeta^7 - 
5*zeta^6 - 5*zeta^5 + 10*zeta^4 - 10*zeta^3 + 10)*q^81 + (80*zeta^9 + 160*zeta^8
+ 160*zeta^7 + 320*zeta^6 + 320*zeta^5 + 160*zeta^4 + 160*zeta^3 + 80*zeta^2 + 
320)*q^82 + (30*zeta^9 + 60*zeta^8 + 60*zeta^7 + 120*zeta^6 + 120*zeta^5 + 
60*zeta^4 + 60*zeta^3 + 30*zeta^2 + 120)*q^83 + (40*zeta^8 - 40*zeta^7 + 
20*zeta^6 + 20*zeta^5 - 40*zeta^4 + 40*zeta^3 - 40)*q^84 + (10*zeta^9 + 
30*zeta^8 + 10*zeta^7 - 10*zeta^6 - 10*zeta^5 + 10*zeta^4 + 30*zeta^3 + 
10*zeta^2 + 30)*q^85 + (120*zeta^9 - 60*zeta^8 - 120*zeta^7 - 120*zeta^4 - 
60*zeta^3 + 120*zeta^2 + 120)*q^86 + (-300*zeta^9 - 150*zeta^8 - 225*zeta^7 - 
150*zeta^6 - 150*zeta^5 - 225*zeta^4 - 150*zeta^3 - 300*zeta^2)*q^89 + 
(-40*zeta^9 + 20*zeta^8 + 40*zeta^7 + 40*zeta^4 + 20*zeta^3 - 40*zeta^2 - 
40)*q^90 + (-40*zeta^9 - 120*zeta^8 - 40*zeta^7 + 40*zeta^6 + 40*zeta^5 - 
40*zeta^4 - 120*zeta^3 - 40*zeta^2 - 120)*q^91 + (20*zeta^8 - 20*zeta^7 + 
10*zeta^6 + 10*zeta^5 - 20*zeta^4 + 20*zeta^3 - 20)*q^92 + (-35*zeta^9 - 
70*zeta^8 - 70*zeta^7 - 140*zeta^6 - 140*zeta^5 - 70*zeta^4 - 70*zeta^3 - 
35*zeta^2 - 140)*q^93 + (80*zeta^9 + 160*zeta^8 + 160*zeta^7 + 320*zeta^6 + 
320*zeta^5 + 160*zeta^4 + 160*zeta^3 + 80*zeta^2 + 320)*q^94 + (40*zeta^9 + 
120*zeta^8 + 40*zeta^7 - 40*zeta^6 - 40*zeta^5 + 40*zeta^4 + 120*zeta^3 + 
40*zeta^2 + 120)*q^96 + (-70*zeta^9 + 35*zeta^8 + 70*zeta^7 + 70*zeta^4 + 
35*zeta^3 - 70*zeta^2 - 70)*q^97 + (120*zeta^9 + 60*zeta^8 + 90*zeta^7 + 
60*zeta^6 + 60*zeta^5 + 90*zeta^4 + 60*zeta^3 + 120*zeta^2)*q^98 + (160*zeta^9 +
80*zeta^8 + 120*zeta^7 + 80*zeta^6 + 80*zeta^5 + 120*zeta^4 + 80*zeta^3 + 
160*zeta^2)*q^100 + (-20*zeta^9 + 10*zeta^8 + 20*zeta^7 + 20*zeta^4 + 10*zeta^3 
- 20*zeta^2 - 20)*q^101 + (-20*zeta^9 - 60*zeta^8 - 20*zeta^7 + 20*zeta^6 + 
20*zeta^5 - 20*zeta^4 - 60*zeta^3 - 20*zeta^2 - 60)*q^102 + (160*zeta^8 - 
160*zeta^7 + 80*zeta^6 + 80*zeta^5 - 160*zeta^4 + 160*zeta^3 - 160)*q^103 + 
(-10*zeta^9 - 20*zeta^8 - 20*zeta^7 - 40*zeta^6 - 40*zeta^5 - 20*zeta^4 - 
20*zeta^3 - 10*zeta^2 - 40)*q^105 + (120*zeta^8 - 120*zeta^7 + 60*zeta^6 + 
60*zeta^5 - 120*zeta^4 + 120*zeta^3 - 120)*q^106 + (-90*zeta^9 - 270*zeta^8 - 
90*zeta^7 + 90*zeta^6 + 90*zeta^5 - 90*zeta^4 - 270*zeta^3 - 90*zeta^2 - 
270)*q^107 + (100*zeta^9 - 50*zeta^8 - 100*zeta^7 - 100*zeta^4 - 50*zeta^3 + 
100*zeta^2 + 100)*q^108 + (200*zeta^9 + 100*zeta^8 + 150*zeta^7 + 100*zeta^6 + 
100*zeta^5 + 150*zeta^4 + 100*zeta^3 + 200*zeta^2)*q^109 + (60*zeta^9 + 
30*zeta^8 + 45*zeta^7 + 30*zeta^6 + 30*zeta^5 + 45*zeta^4 + 30*zeta^3 + 
60*zeta^2)*q^111 + (-80*zeta^9 + 40*zeta^8 + 80*zeta^7 + 80*zeta^4 + 40*zeta^3 -
80*zeta^2 - 80)*q^112 + (45*zeta^9 + 135*zeta^8 + 45*zeta^7 - 45*zeta^6 - 
45*zeta^5 + 45*zeta^4 + 135*zeta^3 + 45*zeta^2 + 135)*q^113 + (-5*zeta^9 - 
10*zeta^8 - 10*zeta^7 - 20*zeta^6 - 20*zeta^5 - 10*zeta^4 - 10*zeta^3 - 5*zeta^2
- 20)*q^115 + (-80*zeta^8 + 80*zeta^7 - 40*zeta^6 - 40*zeta^5 + 80*zeta^4 - 
80*zeta^3 + 80)*q^117 + (50*zeta^9 + 150*zeta^8 + 50*zeta^7 - 50*zeta^6 - 
50*zeta^5 + 50*zeta^4 + 150*zeta^3 + 50*zeta^2 + 150)*q^118 + (40*zeta^9 - 
20*zeta^8 - 40*zeta^7 - 40*zeta^4 - 20*zeta^3 + 40*zeta^2 + 40)*q^119 + 
(480*zeta^9 + 240*zeta^8 + 360*zeta^7 + 240*zeta^6 + 240*zeta^5 + 360*zeta^4 + 
240*zeta^3 + 480*zeta^2)*q^122 + (-80*zeta^9 + 40*zeta^8 + 80*zeta^7 + 80*zeta^4
+ 40*zeta^3 - 80*zeta^2 - 80)*q^123 + (70*zeta^9 + 210*zeta^8 + 70*zeta^7 - 
70*zeta^6 - 70*zeta^5 + 70*zeta^4 + 210*zeta^3 + 70*zeta^2 + 210)*q^124 + 
(90*zeta^8 - 90*zeta^7 + 45*zeta^6 + 45*zeta^5 - 90*zeta^4 + 90*zeta^3 - 
90)*q^125 + (-40*zeta^9 - 80*zeta^8 - 80*zeta^7 - 160*zeta^6 - 160*zeta^5 - 
80*zeta^4 - 80*zeta^3 - 40*zeta^2 - 160)*q^126 + (-40*zeta^9 - 80*zeta^8 - 
80*zeta^7 - 160*zeta^6 - 160*zeta^5 - 80*zeta^4 - 80*zeta^3 - 40*zeta^2 - 
160)*q^127 + (-30*zeta^9 - 90*zeta^8 - 30*zeta^7 + 30*zeta^6 + 30*zeta^5 - 
30*zeta^4 - 90*zeta^3 - 30*zeta^2 - 90)*q^129 + (-80*zeta^9 + 40*zeta^8 + 
80*zeta^7 + 80*zeta^4 + 40*zeta^3 - 80*zeta^2 - 80)*q^130 + (-360*zeta^9 - 
180*zeta^8 - 270*zeta^7 - 180*zeta^6 - 180*zeta^5 - 270*zeta^4 - 180*zeta^3 - 
360*zeta^2)*q^131 + (-140*zeta^9 + 70*zeta^8 + 140*zeta^7 + 140*zeta^4 + 
70*zeta^3 - 140*zeta^2 - 140)*q^134 + (25*zeta^9 + 75*zeta^8 + 25*zeta^7 - 
25*zeta^6 - 25*zeta^5 + 25*zeta^4 + 75*zeta^3 + 25*zeta^2 + 75)*q^135 + 
(-35*zeta^9 - 70*zeta^8 - 70*zeta^7 - 140*zeta^6 - 140*zeta^5 - 70*zeta^4 - 
70*zeta^3 - 35*zeta^2 - 140)*q^137 + (10*zeta^9 + 20*zeta^8 + 20*zeta^7 + 
40*zeta^6 + 40*zeta^5 + 20*zeta^4 + 20*zeta^3 + 10*zeta^2 + 40)*q^138 + 
(100*zeta^8 - 100*zeta^7 + 50*zeta^6 + 50*zeta^5 - 100*zeta^4 + 100*zeta^3 - 
100)*q^139 + (20*zeta^9 + 60*zeta^8 + 20*zeta^7 - 20*zeta^6 - 20*zeta^5 + 
20*zeta^4 + 60*zeta^3 + 20*zeta^2 + 60)*q^140 + (-80*zeta^9 + 40*zeta^8 + 
80*zeta^7 + 80*zeta^4 + 40*zeta^3 - 80*zeta^2 - 80)*q^141 + (120*zeta^9 + 
60*zeta^8 + 90*zeta^7 + 60*zeta^6 + 60*zeta^5 + 90*zeta^4 + 60*zeta^3 + 
120*zeta^2)*q^142 + (-160*zeta^9 - 80*zeta^8 - 120*zeta^7 - 80*zeta^6 - 
80*zeta^5 - 120*zeta^4 - 80*zeta^3 - 160*zeta^2)*q^144 + (-40*zeta^9 - 
120*zeta^8 - 40*zeta^7 + 40*zeta^6 + 40*zeta^5 - 40*zeta^4 - 120*zeta^3 - 
40*zeta^2 - 120)*q^146 + (-30*zeta^8 + 30*zeta^7 - 15*zeta^6 - 15*zeta^5 + 
30*zeta^4 - 30*zeta^3 + 30)*q^147 + (30*zeta^9 + 60*zeta^8 + 60*zeta^7 + 
120*zeta^6 + 120*zeta^5 + 60*zeta^4 + 60*zeta^3 + 30*zeta^2 + 120)*q^148 + 
(50*zeta^9 + 100*zeta^8 + 100*zeta^7 + 200*zeta^6 + 200*zeta^5 + 100*zeta^4 + 
100*zeta^3 + 50*zeta^2 + 200)*q^149 + (-80*zeta^8 + 80*zeta^7 - 40*zeta^6 - 
40*zeta^5 + 80*zeta^4 - 80*zeta^3 + 80)*q^150 + (-10*zeta^9 - 30*zeta^8 - 
10*zeta^7 + 10*zeta^6 + 10*zeta^5 - 10*zeta^4 - 30*zeta^3 - 10*zeta^2 - 
30)*q^151 + (80*zeta^9 + 40*zeta^8 + 60*zeta^7 + 40*zeta^6 + 40*zeta^5 + 
60*zeta^4 + 40*zeta^3 + 80*zeta^2)*q^153 + (-140*zeta^9 - 70*zeta^8 - 105*zeta^7
- 70*zeta^6 - 70*zeta^5 - 105*zeta^4 - 70*zeta^3 - 140*zeta^2)*q^155 + 
(80*zeta^9 - 40*zeta^8 - 80*zeta^7 - 80*zeta^4 - 40*zeta^3 + 80*zeta^2 + 
80)*q^156 + (-35*zeta^9 - 105*zeta^8 - 35*zeta^7 + 35*zeta^6 + 35*zeta^5 - 
35*zeta^4 - 105*zeta^3 - 35*zeta^2 - 105)*q^157 + (-200*zeta^8 + 200*zeta^7 - 
100*zeta^6 - 100*zeta^5 + 200*zeta^4 - 200*zeta^3 + 200)*q^158 + (30*zeta^9 + 
60*zeta^8 + 60*zeta^7 + 120*zeta^6 + 120*zeta^5 + 60*zeta^4 + 60*zeta^3 + 
30*zeta^2 + 120)*q^159 + (-40*zeta^9 - 80*zeta^8 - 80*zeta^7 - 160*zeta^6 - 
160*zeta^5 - 80*zeta^4 - 80*zeta^3 - 40*zeta^2 - 160)*q^160 + (20*zeta^8 - 
20*zeta^7 + 10*zeta^6 + 10*zeta^5 - 20*zeta^4 + 20*zeta^3 - 20)*q^161 + 
(10*zeta^9 + 30*zeta^8 + 10*zeta^7 - 10*zeta^6 - 10*zeta^5 + 10*zeta^4 + 
30*zeta^3 + 10*zeta^2 + 30)*q^162 + (40*zeta^9 - 20*zeta^8 - 40*zeta^7 - 
40*zeta^4 - 20*zeta^3 + 40*zeta^2 + 40)*q^163 + (-320*zeta^9 - 160*zeta^8 - 
240*zeta^7 - 160*zeta^6 - 160*zeta^5 - 240*zeta^4 - 160*zeta^3 - 
320*zeta^2)*q^164 + (-240*zeta^9 - 120*zeta^8 - 180*zeta^7 - 120*zeta^6 - 
120*zeta^5 - 180*zeta^4 - 120*zeta^3 - 240*zeta^2)*q^166 + (120*zeta^9 - 
60*zeta^8 - 120*zeta^7 - 120*zeta^4 - 60*zeta^3 + 120*zeta^2 + 120)*q^167 + 
(-30*zeta^8 + 30*zeta^7 - 15*zeta^6 - 15*zeta^5 + 30*zeta^4 - 30*zeta^3 + 
30)*q^169 + (20*zeta^9 + 40*zeta^8 + 40*zeta^7 + 80*zeta^6 + 80*zeta^5 + 
40*zeta^4 + 40*zeta^3 + 20*zeta^2 + 80)*q^170 + (-120*zeta^8 + 120*zeta^7 - 
60*zeta^6 - 60*zeta^5 + 120*zeta^4 - 120*zeta^3 + 120)*q^172 + (30*zeta^9 + 
90*zeta^8 + 30*zeta^7 - 30*zeta^6 - 30*zeta^5 + 30*zeta^4 + 90*zeta^3 + 
30*zeta^2 + 90)*q^173 + (160*zeta^9 + 80*zeta^8 + 120*zeta^7 + 80*zeta^6 + 
80*zeta^5 + 120*zeta^4 + 80*zeta^3 + 160*zeta^2)*q^175 + (100*zeta^9 + 50*zeta^8
+ 75*zeta^7 + 50*zeta^6 + 50*zeta^5 + 75*zeta^4 + 50*zeta^3 + 100*zeta^2)*q^177 
+ (300*zeta^9 - 150*zeta^8 - 300*zeta^7 - 300*zeta^4 - 150*zeta^3 + 300*zeta^2 +
300)*q^178 + (-75*zeta^9 - 225*zeta^8 - 75*zeta^7 + 75*zeta^6 + 75*zeta^5 - 
75*zeta^4 - 225*zeta^3 - 75*zeta^2 - 225)*q^179 + (40*zeta^8 - 40*zeta^7 + 
20*zeta^6 + 20*zeta^5 - 40*zeta^4 + 40*zeta^3 - 40)*q^180 + (35*zeta^9 + 
70*zeta^8 + 70*zeta^7 + 140*zeta^6 + 140*zeta^5 + 70*zeta^4 + 70*zeta^3 + 
35*zeta^2 + 140)*q^181 + (-80*zeta^9 - 160*zeta^8 - 160*zeta^7 - 320*zeta^6 - 
320*zeta^5 - 160*zeta^4 - 160*zeta^3 - 80*zeta^2 - 320)*q^182 + (-120*zeta^8 + 
120*zeta^7 - 60*zeta^6 - 60*zeta^5 + 120*zeta^4 - 120*zeta^3 + 120)*q^183 + 
(30*zeta^9 - 15*zeta^8 - 30*zeta^7 - 30*zeta^4 - 15*zeta^3 + 30*zeta^2 + 
30)*q^185 + (280*zeta^9 + 140*zeta^8 + 210*zeta^7 + 140*zeta^6 + 140*zeta^5 + 
210*zeta^4 + 140*zeta^3 + 280*zeta^2)*q^186 + (-320*zeta^9 - 160*zeta^8 - 
240*zeta^7 - 160*zeta^6 - 160*zeta^5 - 240*zeta^4 - 160*zeta^3 - 
320*zeta^2)*q^188 + (100*zeta^9 - 50*zeta^8 - 100*zeta^7 - 100*zeta^4 - 
50*zeta^3 + 100*zeta^2 + 100)*q^189 + (-170*zeta^8 + 170*zeta^7 - 85*zeta^6 - 
85*zeta^5 + 170*zeta^4 - 170*zeta^3 + 170)*q^191 + (40*zeta^9 + 80*zeta^8 + 
80*zeta^7 + 160*zeta^6 + 160*zeta^5 + 80*zeta^4 + 80*zeta^3 + 40*zeta^2 + 
160)*q^192 + (-20*zeta^9 - 40*zeta^8 - 40*zeta^7 - 80*zeta^6 - 80*zeta^5 - 
40*zeta^4 - 40*zeta^3 - 20*zeta^2 - 80)*q^193 + (140*zeta^8 - 140*zeta^7 + 
70*zeta^6 + 70*zeta^5 - 140*zeta^4 + 140*zeta^3 - 140)*q^194 + (20*zeta^9 + 
60*zeta^8 + 20*zeta^7 - 20*zeta^6 - 20*zeta^5 + 20*zeta^4 + 60*zeta^3 + 
20*zeta^2 + 60)*q^195 + (-60*zeta^9 + 30*zeta^8 + 60*zeta^7 + 60*zeta^4 + 
30*zeta^3 - 60*zeta^2 - 60)*q^196 + (-40*zeta^9 - 20*zeta^8 - 30*zeta^7 - 
20*zeta^6 - 20*zeta^5 - 30*zeta^4 - 20*zeta^3 - 40*zeta^2)*q^197 + O(q^200)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 5);
              X_11A6 := Curve(P_Q, [ PolynomialRing(RationalField(), 6) |
x[1]^2 + 1/12*x[2]*x[4] - 119/220*x[2]*x[5] - 49/440*x[2]*x[6] - 
1171/19800*x[3]^2 - 1/55*x[3]*x[4] + 83/3300*x[3]*x[5] + 1/450*x[3]*x[6] + 
111/24200*x[4]^2 - 1/165*x[4]*x[5] + 1/220*x[4]*x[6] + 7/200*x[5]^2 - 
161/3300*x[5]*x[6] - 11/450*x[6]^2,
x[1]*x[2] + 1/12*x[2]*x[4] - 2/5*x[2]*x[5] - 6/55*x[2]*x[6] - 1/25*x[3]^2 - 
1/55*x[3]*x[4] + 18/275*x[3]*x[5] + 4/275*x[3]*x[6] + 9/3025*x[4]^2 - 
1/165*x[4]*x[5] + 1/220*x[4]*x[6] + 13/275*x[5]^2 - 6/275*x[5]*x[6] - 
13/550*x[6]^2,
x[1]*x[3] - x[1]*x[5] + 1/2*x[1]*x[6] - 5/24*x[2]*x[4] + 19/11*x[2]*x[5] + 
3/44*x[2]*x[6] - 1/110*x[3]^2 - 1/11*x[3]*x[5] - 7/110*x[3]*x[6] - 9/1210*x[4]^2
- 4/33*x[4]*x[5] + 3/88*x[4]*x[6] - 9/110*x[5]^2 + 1/110*x[5]*x[6] + 
4/55*x[6]^2,
x[1]*x[4] - 1/2*x[2]*x[4] + 10/3*x[2]*x[5] - 5/12*x[2]*x[6] + 1/9*x[3]^2 - 
2/3*x[3]*x[5] - 5/9*x[3]*x[6] - 1/22*x[4]^2 - 1/3*x[5]^2 + 1/3*x[5]*x[6] + 
7/36*x[6]^2,
x[2]^2 - 4/5*x[2]*x[5] - 12/55*x[2]*x[6] - 2/25*x[3]^2 + 36/275*x[3]*x[5] + 
8/275*x[3]*x[6] + 18/3025*x[4]^2 + 26/275*x[5]^2 - 12/275*x[5]*x[6] - 
13/275*x[6]^2,
x[2]*x[3] + 27/11*x[2]*x[5] + 7/11*x[2]*x[6] - 1/55*x[3]^2 - 2/11*x[3]*x[5] - 
7/55*x[3]*x[6] - 9/605*x[4]^2 - 9/55*x[5]^2 + 1/55*x[5]*x[6] + 8/55*x[6]^2
]);
