
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
              fs_21C6 := [Kq | (zeta^11 + zeta^4 + zeta^3)*q + (2*zeta^8 + 
2*zeta^6 + 2*zeta)*q^2 + (-2*zeta^11 + 4*zeta^9 - 2*zeta^8 + 2*zeta^6 - 2*zeta^4
+ 2*zeta^3 - 2*zeta + 2)*q^3 + (2*zeta^11 - 4*zeta^9 + 2*zeta^8 - 2*zeta^6 + 
2*zeta^4 - 2*zeta^3 + 2*zeta - 2)*q^4 + (-2*zeta^8 - 2*zeta^6 - 2*zeta)*q^5 + 
(-4*zeta^11 - 4*zeta^4 - 4*zeta^3)*q^6 + (3*zeta^11 - 2*zeta^9 - 2*zeta^8 - 
4*zeta^6 + 3*zeta^4 + zeta^3 - 2*zeta - 1)*q^7 + (-2*zeta^8 - 2*zeta^6 - 
2*zeta)*q^9 + (-4*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 - 4*zeta^4 + 4*zeta^3
- 4*zeta + 4)*q^10 + (-2*zeta^11 + 4*zeta^9 - 2*zeta^8 + 2*zeta^6 - 2*zeta^4 + 
2*zeta^3 - 2*zeta + 2)*q^11 + (-4*zeta^8 - 4*zeta^6 - 4*zeta)*q^12 + (zeta^11 + 
zeta^4 + zeta^3)*q^13 + (-4*zeta^11 + 12*zeta^9 - 2*zeta^8 + 10*zeta^6 - 
4*zeta^4 + 8*zeta^3 - 2*zeta + 6)*q^14 + (4*zeta^11 + 4*zeta^4 + 4*zeta^3)*q^15 
+ (-4*zeta^8 - 4*zeta^6 - 4*zeta)*q^16 + (-4*zeta^11 + 8*zeta^9 - 4*zeta^8 + 
4*zeta^6 - 4*zeta^4 + 4*zeta^3 - 4*zeta + 4)*q^18 + (zeta^8 + zeta^6 + 
zeta)*q^19 + (-4*zeta^11 - 4*zeta^4 - 4*zeta^3)*q^20 + (2*zeta^11 + 8*zeta^9 - 
6*zeta^8 + 2*zeta^6 + 2*zeta^4 + 10*zeta^3 - 6*zeta + 4)*q^21 + (-4*zeta^11 - 
4*zeta^4 - 4*zeta^3)*q^22 + (-zeta^11 + 2*zeta^9 - zeta^8 + zeta^6 - zeta^4 + 
zeta^3 - zeta + 1)*q^25 + (2*zeta^8 + 2*zeta^6 + 2*zeta)*q^26 + (-2*zeta^11 - 
2*zeta^4 - 2*zeta^3)*q^27 + (-2*zeta^11 - 8*zeta^9 + 6*zeta^8 - 2*zeta^6 - 
2*zeta^4 - 10*zeta^3 + 6*zeta - 4)*q^28 + (4*zeta^11 + 4*zeta^4 + 4*zeta^3)*q^29
+ (8*zeta^8 + 8*zeta^6 + 8*zeta)*q^30 + (9*zeta^11 - 18*zeta^9 + 9*zeta^8 - 
9*zeta^6 + 9*zeta^4 - 9*zeta^3 + 9*zeta - 9)*q^31 + (-8*zeta^11 + 16*zeta^9 - 
8*zeta^8 + 8*zeta^6 - 8*zeta^4 + 8*zeta^3 - 8*zeta + 8)*q^32 + (4*zeta^8 + 
4*zeta^6 + 4*zeta)*q^33 + (4*zeta^11 - 12*zeta^9 + 2*zeta^8 - 10*zeta^6 + 
4*zeta^4 - 8*zeta^3 + 2*zeta - 6)*q^35 + (-4*zeta^11 - 4*zeta^4 - 4*zeta^3)*q^36
+ (3*zeta^8 + 3*zeta^6 + 3*zeta)*q^37 + (2*zeta^11 - 4*zeta^9 + 2*zeta^8 - 
2*zeta^6 + 2*zeta^4 - 2*zeta^3 + 2*zeta - 2)*q^38 + (-2*zeta^11 + 4*zeta^9 - 
2*zeta^8 + 2*zeta^6 - 2*zeta^4 + 2*zeta^3 - 2*zeta + 2)*q^39 + (-10*zeta^11 - 
10*zeta^4 - 10*zeta^3)*q^41 + (-12*zeta^11 + 8*zeta^9 + 8*zeta^8 + 16*zeta^6 - 
12*zeta^4 - 4*zeta^3 + 8*zeta + 4)*q^42 + (5*zeta^11 + 5*zeta^4 + 5*zeta^3)*q^43
+ (-4*zeta^8 - 4*zeta^6 - 4*zeta)*q^44 + (4*zeta^11 - 8*zeta^9 + 4*zeta^8 - 
4*zeta^6 + 4*zeta^4 - 4*zeta^3 + 4*zeta - 4)*q^45 + (-6*zeta^8 - 6*zeta^6 - 
6*zeta)*q^47 + (8*zeta^11 + 8*zeta^4 + 8*zeta^3)*q^48 + (-8*zeta^11 + 10*zeta^9 
+ 3*zeta^8 + 13*zeta^6 - 8*zeta^4 + 2*zeta^3 + 3*zeta + 5)*q^49 + (-2*zeta^11 - 
2*zeta^4 - 2*zeta^3)*q^50 + (2*zeta^11 - 4*zeta^9 + 2*zeta^8 - 2*zeta^6 + 
2*zeta^4 - 2*zeta^3 + 2*zeta - 2)*q^52 + (12*zeta^11 - 24*zeta^9 + 12*zeta^8 - 
12*zeta^6 + 12*zeta^4 - 12*zeta^3 + 12*zeta - 12)*q^53 + (-4*zeta^8 - 4*zeta^6 -
4*zeta)*q^54 + (4*zeta^11 + 4*zeta^4 + 4*zeta^3)*q^55 + (-2*zeta^11 - 2*zeta^4 -
2*zeta^3)*q^57 + (8*zeta^8 + 8*zeta^6 + 8*zeta)*q^58 + (-12*zeta^11 + 24*zeta^9 
- 12*zeta^8 + 12*zeta^6 - 12*zeta^4 + 12*zeta^3 - 12*zeta + 12)*q^59 + 
(8*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 8*zeta^4 - 8*zeta^3 + 8*zeta - 
8)*q^60 + (10*zeta^8 + 10*zeta^6 + 10*zeta)*q^61 + (18*zeta^11 + 18*zeta^4 + 
18*zeta^3)*q^62 + (4*zeta^11 - 12*zeta^9 + 2*zeta^8 - 10*zeta^6 + 4*zeta^4 - 
8*zeta^3 + 2*zeta - 6)*q^63 + (-8*zeta^11 - 8*zeta^4 - 8*zeta^3)*q^64 + 
(-2*zeta^8 - 2*zeta^6 - 2*zeta)*q^65 + (8*zeta^11 - 16*zeta^9 + 8*zeta^8 - 
8*zeta^6 + 8*zeta^4 - 8*zeta^3 + 8*zeta - 8)*q^66 + (-5*zeta^11 + 10*zeta^9 - 
5*zeta^8 + 5*zeta^6 - 5*zeta^4 + 5*zeta^3 - 5*zeta + 5)*q^67 + (4*zeta^11 + 
16*zeta^9 - 12*zeta^8 + 4*zeta^6 + 4*zeta^4 + 20*zeta^3 - 12*zeta + 8)*q^70 + 
(-6*zeta^11 - 6*zeta^4 - 6*zeta^3)*q^71 + (-3*zeta^11 + 6*zeta^9 - 3*zeta^8 + 
3*zeta^6 - 3*zeta^4 + 3*zeta^3 - 3*zeta + 3)*q^73 + (6*zeta^11 - 12*zeta^9 + 
6*zeta^8 - 6*zeta^6 + 6*zeta^4 - 6*zeta^3 + 6*zeta - 6)*q^74 + (2*zeta^8 + 
2*zeta^6 + 2*zeta)*q^75 + (2*zeta^11 + 2*zeta^4 + 2*zeta^3)*q^76 + (2*zeta^11 + 
8*zeta^9 - 6*zeta^8 + 2*zeta^6 + 2*zeta^4 + 10*zeta^3 - 6*zeta + 4)*q^77 + 
(-4*zeta^11 - 4*zeta^4 - 4*zeta^3)*q^78 + (-zeta^8 - zeta^6 - zeta)*q^79 + 
(8*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 8*zeta^4 - 8*zeta^3 + 8*zeta - 
8)*q^80 + (-2*zeta^11 + 4*zeta^9 - 2*zeta^8 + 2*zeta^6 - 2*zeta^4 + 2*zeta^3 - 
2*zeta + 2)*q^81 + (-20*zeta^8 - 20*zeta^6 - 20*zeta)*q^82 + (6*zeta^11 + 
6*zeta^4 + 6*zeta^3)*q^83 + (8*zeta^11 - 24*zeta^9 + 4*zeta^8 - 20*zeta^6 + 
8*zeta^4 - 16*zeta^3 + 4*zeta - 12)*q^84 + (10*zeta^8 + 10*zeta^6 + 
10*zeta)*q^86 + (-8*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 8*zeta^4 + 
8*zeta^3 - 8*zeta + 8)*q^87 + (16*zeta^8 + 16*zeta^6 + 16*zeta)*q^89 + 
(8*zeta^11 + 8*zeta^4 + 8*zeta^3)*q^90 + (3*zeta^11 - 2*zeta^9 - 2*zeta^8 - 
4*zeta^6 + 3*zeta^4 + zeta^3 - 2*zeta - 1)*q^91 + (-18*zeta^8 - 18*zeta^6 - 
18*zeta)*q^93 + (-12*zeta^11 + 24*zeta^9 - 12*zeta^8 + 12*zeta^6 - 12*zeta^4 + 
12*zeta^3 - 12*zeta + 12)*q^94 + (-2*zeta^11 + 4*zeta^9 - 2*zeta^8 + 2*zeta^6 - 
2*zeta^4 + 2*zeta^3 - 2*zeta + 2)*q^95 + (16*zeta^8 + 16*zeta^6 + 16*zeta)*q^96 
+ (-6*zeta^11 - 6*zeta^4 - 6*zeta^3)*q^97 + (6*zeta^11 - 32*zeta^9 + 10*zeta^8 -
22*zeta^6 + 6*zeta^4 - 26*zeta^3 + 10*zeta - 16)*q^98 + (4*zeta^11 + 4*zeta^4 + 
4*zeta^3)*q^99 + (-2*zeta^8 - 2*zeta^6 - 2*zeta)*q^100 + (2*zeta^11 - 4*zeta^9 +
2*zeta^8 - 2*zeta^6 + 2*zeta^4 - 2*zeta^3 + 2*zeta - 2)*q^101 + (-7*zeta^8 - 
7*zeta^6 - 7*zeta)*q^103 + (12*zeta^11 - 8*zeta^9 - 8*zeta^8 - 16*zeta^6 + 
12*zeta^4 + 4*zeta^3 - 8*zeta - 4)*q^105 + (24*zeta^11 + 24*zeta^4 + 
24*zeta^3)*q^106 + (-8*zeta^8 - 8*zeta^6 - 8*zeta)*q^107 + (-4*zeta^11 + 
8*zeta^9 - 4*zeta^8 + 4*zeta^6 - 4*zeta^4 + 4*zeta^3 - 4*zeta + 4)*q^108 + 
(9*zeta^11 - 18*zeta^9 + 9*zeta^8 - 9*zeta^6 + 9*zeta^4 - 9*zeta^3 + 9*zeta - 
9)*q^109 + (8*zeta^8 + 8*zeta^6 + 8*zeta)*q^110 + (-6*zeta^11 - 6*zeta^4 - 
6*zeta^3)*q^111 + (8*zeta^11 - 24*zeta^9 + 4*zeta^8 - 20*zeta^6 + 8*zeta^4 - 
16*zeta^3 + 4*zeta - 12)*q^112 + (10*zeta^11 + 10*zeta^4 + 10*zeta^3)*q^113 + 
(-4*zeta^8 - 4*zeta^6 - 4*zeta)*q^114 + (8*zeta^11 - 16*zeta^9 + 8*zeta^8 - 
8*zeta^6 + 8*zeta^4 - 8*zeta^3 + 8*zeta - 8)*q^116 + (-2*zeta^8 - 2*zeta^6 - 
2*zeta)*q^117 + (-24*zeta^11 - 24*zeta^4 - 24*zeta^3)*q^118 + (-7*zeta^8 - 
7*zeta^6 - 7*zeta)*q^121 + (20*zeta^11 - 40*zeta^9 + 20*zeta^8 - 20*zeta^6 + 
20*zeta^4 - 20*zeta^3 + 20*zeta - 20)*q^122 + (20*zeta^11 - 40*zeta^9 + 
20*zeta^8 - 20*zeta^6 + 20*zeta^4 - 20*zeta^3 + 20*zeta - 20)*q^123 + (18*zeta^8
+ 18*zeta^6 + 18*zeta)*q^124 + (12*zeta^11 + 12*zeta^4 + 12*zeta^3)*q^125 + 
(4*zeta^11 + 16*zeta^9 - 12*zeta^8 + 4*zeta^6 + 4*zeta^4 + 20*zeta^3 - 12*zeta +
8)*q^126 + (-15*zeta^11 - 15*zeta^4 - 15*zeta^3)*q^127 + (-10*zeta^11 + 
20*zeta^9 - 10*zeta^8 + 10*zeta^6 - 10*zeta^4 + 10*zeta^3 - 10*zeta + 10)*q^129 
+ (-4*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 - 4*zeta^4 + 4*zeta^3 - 4*zeta + 
4)*q^130 + (-14*zeta^8 - 14*zeta^6 - 14*zeta)*q^131 + (8*zeta^11 + 8*zeta^4 + 
8*zeta^3)*q^132 + (-2*zeta^11 + 6*zeta^9 - zeta^8 + 5*zeta^6 - 2*zeta^4 + 
4*zeta^3 - zeta + 3)*q^133 + (-10*zeta^11 - 10*zeta^4 - 10*zeta^3)*q^134 + 
(4*zeta^8 + 4*zeta^6 + 4*zeta)*q^135 + (-12*zeta^11 + 24*zeta^9 - 12*zeta^8 + 
12*zeta^6 - 12*zeta^4 + 12*zeta^3 - 12*zeta + 12)*q^137 + (-3*zeta^11 - 3*zeta^4
- 3*zeta^3)*q^139 + (-12*zeta^11 + 8*zeta^9 + 8*zeta^8 + 16*zeta^6 - 12*zeta^4 -
4*zeta^3 + 8*zeta + 4)*q^140 + (12*zeta^11 + 12*zeta^4 + 12*zeta^3)*q^141 + 
(-12*zeta^8 - 12*zeta^6 - 12*zeta)*q^142 + (-2*zeta^11 + 4*zeta^9 - 2*zeta^8 + 
2*zeta^6 - 2*zeta^4 + 2*zeta^3 - 2*zeta + 2)*q^143 + (8*zeta^11 - 16*zeta^9 + 
8*zeta^8 - 8*zeta^6 + 8*zeta^4 - 8*zeta^3 + 8*zeta - 8)*q^144 + (-8*zeta^8 - 
8*zeta^6 - 8*zeta)*q^145 + (-6*zeta^11 - 6*zeta^4 - 6*zeta^3)*q^146 + 
(-10*zeta^11 - 12*zeta^9 + 16*zeta^8 + 4*zeta^6 - 10*zeta^4 - 22*zeta^3 + 
16*zeta - 6)*q^147 + (6*zeta^11 + 6*zeta^4 + 6*zeta^3)*q^148 + (-12*zeta^8 - 
12*zeta^6 - 12*zeta)*q^149 + (4*zeta^11 - 8*zeta^9 + 4*zeta^8 - 4*zeta^6 + 
4*zeta^4 - 4*zeta^3 + 4*zeta - 4)*q^150 + (-16*zeta^11 + 32*zeta^9 - 16*zeta^8 +
16*zeta^6 - 16*zeta^4 + 16*zeta^3 - 16*zeta + 16)*q^151 + (-12*zeta^11 + 
8*zeta^9 + 8*zeta^8 + 16*zeta^6 - 12*zeta^4 - 4*zeta^3 + 8*zeta + 4)*q^154 + 
(-18*zeta^11 - 18*zeta^4 - 18*zeta^3)*q^155 + (-4*zeta^8 - 4*zeta^6 - 
4*zeta)*q^156 + (-14*zeta^11 + 28*zeta^9 - 14*zeta^8 + 14*zeta^6 - 14*zeta^4 + 
14*zeta^3 - 14*zeta + 14)*q^157 + (-2*zeta^11 + 4*zeta^9 - 2*zeta^8 + 2*zeta^6 -
2*zeta^4 + 2*zeta^3 - 2*zeta + 2)*q^158 + (-24*zeta^8 - 24*zeta^6 - 
24*zeta)*q^159 + (16*zeta^11 + 16*zeta^4 + 16*zeta^3)*q^160 + (-4*zeta^11 - 
4*zeta^4 - 4*zeta^3)*q^162 + (4*zeta^8 + 4*zeta^6 + 4*zeta)*q^163 + (-20*zeta^11
+ 40*zeta^9 - 20*zeta^8 + 20*zeta^6 - 20*zeta^4 + 20*zeta^3 - 20*zeta + 
20)*q^164 + (-8*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 8*zeta^4 + 8*zeta^3 
- 8*zeta + 8)*q^165 + (12*zeta^8 + 12*zeta^6 + 12*zeta)*q^166 + (-14*zeta^11 - 
14*zeta^4 - 14*zeta^3)*q^167 + (-12*zeta^11 - 12*zeta^4 - 12*zeta^3)*q^169 + 
(-2*zeta^11 + 4*zeta^9 - 2*zeta^8 + 2*zeta^6 - 2*zeta^4 + 2*zeta^3 - 2*zeta + 
2)*q^171 + (10*zeta^11 - 20*zeta^9 + 10*zeta^8 - 10*zeta^6 + 10*zeta^4 - 
10*zeta^3 + 10*zeta - 10)*q^172 + (8*zeta^8 + 8*zeta^6 + 8*zeta)*q^173 + 
(-16*zeta^11 - 16*zeta^4 - 16*zeta^3)*q^174 + (zeta^11 + 4*zeta^9 - 3*zeta^8 + 
zeta^6 + zeta^4 + 5*zeta^3 - 3*zeta + 2)*q^175 + (8*zeta^11 + 8*zeta^4 + 
8*zeta^3)*q^176 + (24*zeta^8 + 24*zeta^6 + 24*zeta)*q^177 + (32*zeta^11 - 
64*zeta^9 + 32*zeta^8 - 32*zeta^6 + 32*zeta^4 - 32*zeta^3 + 32*zeta - 32)*q^178 
+ (2*zeta^11 - 4*zeta^9 + 2*zeta^8 - 2*zeta^6 + 2*zeta^4 - 2*zeta^3 + 2*zeta - 
2)*q^179 + (8*zeta^8 + 8*zeta^6 + 8*zeta)*q^180 + (13*zeta^11 + 13*zeta^4 + 
13*zeta^3)*q^181 + (-4*zeta^11 + 12*zeta^9 - 2*zeta^8 + 10*zeta^6 - 4*zeta^4 + 
8*zeta^3 - 2*zeta + 6)*q^182 + (-20*zeta^11 - 20*zeta^4 - 20*zeta^3)*q^183 + 
(-6*zeta^11 + 12*zeta^9 - 6*zeta^8 + 6*zeta^6 - 6*zeta^4 + 6*zeta^3 - 6*zeta + 
6)*q^185 + (-36*zeta^11 + 72*zeta^9 - 36*zeta^8 + 36*zeta^6 - 36*zeta^4 + 
36*zeta^3 - 36*zeta + 36)*q^186 + (-12*zeta^11 - 12*zeta^4 - 12*zeta^3)*q^188 + 
(-6*zeta^11 + 4*zeta^9 + 4*zeta^8 + 8*zeta^6 - 6*zeta^4 - 2*zeta^3 + 4*zeta + 
2)*q^189 + (-4*zeta^11 - 4*zeta^4 - 4*zeta^3)*q^190 + (10*zeta^8 + 10*zeta^6 + 
10*zeta)*q^191 + (16*zeta^11 - 32*zeta^9 + 16*zeta^8 - 16*zeta^6 + 16*zeta^4 - 
16*zeta^3 + 16*zeta - 16)*q^192 + (11*zeta^11 - 22*zeta^9 + 11*zeta^8 - 
11*zeta^6 + 11*zeta^4 - 11*zeta^3 + 11*zeta - 11)*q^193 + (-12*zeta^8 - 
12*zeta^6 - 12*zeta)*q^194 + (4*zeta^11 + 4*zeta^4 + 4*zeta^3)*q^195 + 
(10*zeta^11 + 12*zeta^9 - 16*zeta^8 - 4*zeta^6 + 10*zeta^4 + 22*zeta^3 - 16*zeta
+ 6)*q^196 + (16*zeta^11 + 16*zeta^4 + 16*zeta^3)*q^197 + (8*zeta^8 + 8*zeta^6 +
8*zeta)*q^198 + (10*zeta^8 + 10*zeta^6 + 10*zeta)*q^201 + (4*zeta^11 + 4*zeta^4 
+ 4*zeta^3)*q^202 + (12*zeta^11 - 8*zeta^9 - 8*zeta^8 - 16*zeta^6 + 12*zeta^4 + 
4*zeta^3 - 8*zeta - 4)*q^203 + (20*zeta^8 + 20*zeta^6 + 20*zeta)*q^205 + 
(-14*zeta^11 + 28*zeta^9 - 14*zeta^8 + 14*zeta^6 - 14*zeta^4 + 14*zeta^3 - 
14*zeta + 14)*q^206 + (-4*zeta^8 - 4*zeta^6 - 4*zeta)*q^208 + (-2*zeta^11 - 
2*zeta^4 - 2*zeta^3)*q^209 + (-16*zeta^11 + 48*zeta^9 - 8*zeta^8 + 40*zeta^6 - 
16*zeta^4 + 32*zeta^3 - 8*zeta + 24)*q^210 + (4*zeta^11 + 4*zeta^4 + 
4*zeta^3)*q^211 + (24*zeta^8 + 24*zeta^6 + 24*zeta)*q^212 + (12*zeta^11 - 
24*zeta^9 + 12*zeta^8 - 12*zeta^6 + 12*zeta^4 - 12*zeta^3 + 12*zeta - 12)*q^213 
+ (-16*zeta^11 + 32*zeta^9 - 16*zeta^8 + 16*zeta^6 - 16*zeta^4 + 16*zeta^3 - 
16*zeta + 16)*q^214 + (-10*zeta^8 - 10*zeta^6 - 10*zeta)*q^215 + (-9*zeta^11 - 
36*zeta^9 + 27*zeta^8 - 9*zeta^6 - 9*zeta^4 - 45*zeta^3 + 27*zeta - 18)*q^217 + 
(18*zeta^11 + 18*zeta^4 + 18*zeta^3)*q^218 + (6*zeta^8 + 6*zeta^6 + 
6*zeta)*q^219 + (8*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 8*zeta^4 - 
8*zeta^3 + 8*zeta - 8)*q^220 + (-12*zeta^8 - 12*zeta^6 - 12*zeta)*q^222 + 
(16*zeta^11 + 16*zeta^4 + 16*zeta^3)*q^223 + (8*zeta^11 + 32*zeta^9 - 24*zeta^8 
+ 8*zeta^6 + 8*zeta^4 + 40*zeta^3 - 24*zeta + 16)*q^224 + (2*zeta^11 + 2*zeta^4 
+ 2*zeta^3)*q^225 + (20*zeta^8 + 20*zeta^6 + 20*zeta)*q^226 + (18*zeta^11 - 
36*zeta^9 + 18*zeta^8 - 18*zeta^6 + 18*zeta^4 - 18*zeta^3 + 18*zeta - 18)*q^227 
+ (-4*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 - 4*zeta^4 + 4*zeta^3 - 4*zeta + 
4)*q^228 + (-19*zeta^8 - 19*zeta^6 - 19*zeta)*q^229 + (-8*zeta^11 + 24*zeta^9 - 
4*zeta^8 + 20*zeta^6 - 8*zeta^4 + 16*zeta^3 - 4*zeta + 12)*q^231 + (6*zeta^8 + 
6*zeta^6 + 6*zeta)*q^233 + (-4*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 - 
4*zeta^4 + 4*zeta^3 - 4*zeta + 4)*q^234 + (12*zeta^11 - 24*zeta^9 + 12*zeta^8 - 
12*zeta^6 + 12*zeta^4 - 12*zeta^3 + 12*zeta - 12)*q^235 + (-24*zeta^8 - 
24*zeta^6 - 24*zeta)*q^236 + (2*zeta^11 + 2*zeta^4 + 2*zeta^3)*q^237 + 
(6*zeta^11 + 6*zeta^4 + 6*zeta^3)*q^239 + (-16*zeta^8 - 16*zeta^6 - 
16*zeta)*q^240 + (14*zeta^11 - 28*zeta^9 + 14*zeta^8 - 14*zeta^6 + 14*zeta^4 - 
14*zeta^3 + 14*zeta - 14)*q^241 + (-14*zeta^11 + 28*zeta^9 - 14*zeta^8 + 
14*zeta^6 - 14*zeta^4 + 14*zeta^3 - 14*zeta + 14)*q^242 + (-2*zeta^8 - 2*zeta^6 
- 2*zeta)*q^243 + (20*zeta^11 + 20*zeta^4 + 20*zeta^3)*q^244 + (-6*zeta^11 + 
32*zeta^9 - 10*zeta^8 + 22*zeta^6 - 6*zeta^4 + 26*zeta^3 - 10*zeta + 16)*q^245 +
(40*zeta^11 + 40*zeta^4 + 40*zeta^3)*q^246 + (zeta^8 + zeta^6 + zeta)*q^247 + 
(-12*zeta^11 + 24*zeta^9 - 12*zeta^8 + 12*zeta^6 - 12*zeta^4 + 12*zeta^3 - 
12*zeta + 12)*q^249 + (24*zeta^8 + 24*zeta^6 + 24*zeta)*q^250 + (-8*zeta^11 - 
8*zeta^4 - 8*zeta^3)*q^251 + (-12*zeta^11 + 8*zeta^9 + 8*zeta^8 + 16*zeta^6 - 
12*zeta^4 - 4*zeta^3 + 8*zeta + 4)*q^252 + (-30*zeta^8 - 30*zeta^6 - 
30*zeta)*q^254 + (16*zeta^11 - 32*zeta^9 + 16*zeta^8 - 16*zeta^6 + 16*zeta^4 - 
16*zeta^3 + 16*zeta - 16)*q^256 + (26*zeta^8 + 26*zeta^6 + 26*zeta)*q^257 + 
(-20*zeta^11 - 20*zeta^4 - 20*zeta^3)*q^258 + (-6*zeta^11 + 18*zeta^9 - 3*zeta^8
+ 15*zeta^6 - 6*zeta^4 + 12*zeta^3 - 3*zeta + 9)*q^259 + (-4*zeta^11 - 4*zeta^4 
- 4*zeta^3)*q^260 + (-8*zeta^8 - 8*zeta^6 - 8*zeta)*q^261 + (-28*zeta^11 + 
56*zeta^9 - 28*zeta^8 + 28*zeta^6 - 28*zeta^4 + 28*zeta^3 - 28*zeta + 28)*q^262 
+ (4*zeta^11 - 8*zeta^9 + 4*zeta^8 - 4*zeta^6 + 4*zeta^4 - 4*zeta^3 + 4*zeta - 
4)*q^263 + (-24*zeta^11 - 24*zeta^4 - 24*zeta^3)*q^265 + (-2*zeta^11 - 8*zeta^9 
+ 6*zeta^8 - 2*zeta^6 - 2*zeta^4 - 10*zeta^3 + 6*zeta - 4)*q^266 + (-32*zeta^11 
- 32*zeta^4 - 32*zeta^3)*q^267 + (-10*zeta^8 - 10*zeta^6 - 10*zeta)*q^268 + 
(6*zeta^11 - 12*zeta^9 + 6*zeta^8 - 6*zeta^6 + 6*zeta^4 - 6*zeta^3 + 6*zeta - 
6)*q^269 + (8*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 8*zeta^4 - 8*zeta^3 + 
8*zeta - 8)*q^270 + (16*zeta^8 + 16*zeta^6 + 16*zeta)*q^271 + (2*zeta^11 + 
8*zeta^9 - 6*zeta^8 + 2*zeta^6 + 2*zeta^4 + 10*zeta^3 - 6*zeta + 4)*q^273 + 
(-24*zeta^11 - 24*zeta^4 - 24*zeta^3)*q^274 + (2*zeta^8 + 2*zeta^6 + 
2*zeta)*q^275 + (13*zeta^11 - 26*zeta^9 + 13*zeta^8 - 13*zeta^6 + 13*zeta^4 - 
13*zeta^3 + 13*zeta - 13)*q^277 + (-6*zeta^8 - 6*zeta^6 - 6*zeta)*q^278 + 
(-18*zeta^11 - 18*zeta^4 - 18*zeta^3)*q^279 + (-4*zeta^11 - 4*zeta^4 - 
4*zeta^3)*q^281 + (24*zeta^8 + 24*zeta^6 + 24*zeta)*q^282 + (-11*zeta^11 + 
22*zeta^9 - 11*zeta^8 + 11*zeta^6 - 11*zeta^4 + 11*zeta^3 - 11*zeta + 11)*q^283 
+ (-12*zeta^11 + 24*zeta^9 - 12*zeta^8 + 12*zeta^6 - 12*zeta^4 + 12*zeta^3 - 
12*zeta + 12)*q^284 + (4*zeta^8 + 4*zeta^6 + 4*zeta)*q^285 + (-4*zeta^11 - 
4*zeta^4 - 4*zeta^3)*q^286 + (-30*zeta^11 + 20*zeta^9 + 20*zeta^8 + 40*zeta^6 - 
30*zeta^4 - 10*zeta^3 + 20*zeta + 10)*q^287 + (16*zeta^11 + 16*zeta^4 + 
16*zeta^3)*q^288 + (-17*zeta^8 - 17*zeta^6 - 17*zeta)*q^289 + (-16*zeta^11 + 
32*zeta^9 - 16*zeta^8 + 16*zeta^6 - 16*zeta^4 + 16*zeta^3 - 16*zeta + 16)*q^290 
+ (12*zeta^11 - 24*zeta^9 + 12*zeta^8 - 12*zeta^6 + 12*zeta^4 - 12*zeta^3 + 
12*zeta - 12)*q^291 + (-6*zeta^8 - 6*zeta^6 - 6*zeta)*q^292 + (8*zeta^11 + 
8*zeta^4 + 8*zeta^3)*q^293 + (32*zeta^11 - 40*zeta^9 - 12*zeta^8 - 52*zeta^6 + 
32*zeta^4 - 8*zeta^3 - 12*zeta - 20)*q^294 + (24*zeta^11 + 24*zeta^4 + 
24*zeta^3)*q^295 + (4*zeta^11 - 8*zeta^9 + 4*zeta^8 - 4*zeta^6 + 4*zeta^4 - 
4*zeta^3 + 4*zeta - 4)*q^297 + (-24*zeta^11 + 48*zeta^9 - 24*zeta^8 + 24*zeta^6 
- 24*zeta^4 + 24*zeta^3 - 24*zeta + 24)*q^298 + (4*zeta^11 + 4*zeta^4 + 
4*zeta^3)*q^300 + (15*zeta^11 - 10*zeta^9 - 10*zeta^8 - 20*zeta^6 + 15*zeta^4 + 
5*zeta^3 - 10*zeta - 5)*q^301 + (-32*zeta^11 - 32*zeta^4 - 32*zeta^3)*q^302 + 
(-4*zeta^8 - 4*zeta^6 - 4*zeta)*q^303 + (-4*zeta^11 + 8*zeta^9 - 4*zeta^8 + 
4*zeta^6 - 4*zeta^4 + 4*zeta^3 - 4*zeta + 4)*q^304 + (-20*zeta^11 + 40*zeta^9 - 
20*zeta^8 + 20*zeta^6 - 20*zeta^4 + 20*zeta^3 - 20*zeta + 20)*q^305 + 
(-17*zeta^11 - 17*zeta^4 - 17*zeta^3)*q^307 + (8*zeta^11 - 24*zeta^9 + 4*zeta^8 
- 20*zeta^6 + 8*zeta^4 - 16*zeta^3 + 4*zeta - 12)*q^308 + (14*zeta^11 + 
14*zeta^4 + 14*zeta^3)*q^309 + (-36*zeta^8 - 36*zeta^6 - 36*zeta)*q^310 + 
(-6*zeta^11 + 12*zeta^9 - 6*zeta^8 + 6*zeta^6 - 6*zeta^4 + 6*zeta^3 - 6*zeta + 
6)*q^311 + (-zeta^8 - zeta^6 - zeta)*q^313 + (-28*zeta^11 - 28*zeta^4 - 
28*zeta^3)*q^314 + (-4*zeta^11 - 16*zeta^9 + 12*zeta^8 - 4*zeta^6 - 4*zeta^4 - 
20*zeta^3 + 12*zeta - 8)*q^315 + (-2*zeta^11 - 2*zeta^4 - 2*zeta^3)*q^316 + 
(24*zeta^8 + 24*zeta^6 + 24*zeta)*q^317 + (-48*zeta^11 + 96*zeta^9 - 48*zeta^8 +
48*zeta^6 - 48*zeta^4 + 48*zeta^3 - 48*zeta + 48)*q^318 + (-8*zeta^11 + 
16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 8*zeta^4 + 8*zeta^3 - 8*zeta + 8)*q^319 + 
(16*zeta^8 + 16*zeta^6 + 16*zeta)*q^320 + (16*zeta^11 + 16*zeta^4 + 
16*zeta^3)*q^321 + (-4*zeta^8 - 4*zeta^6 - 4*zeta)*q^324 + (-zeta^11 + 2*zeta^9 
- zeta^8 + zeta^6 - zeta^4 + zeta^3 - zeta + 1)*q^325 + (8*zeta^11 - 16*zeta^9 +
8*zeta^8 - 8*zeta^6 + 8*zeta^4 - 8*zeta^3 + 8*zeta - 8)*q^326 + (-18*zeta^8 - 
18*zeta^6 - 18*zeta)*q^327 + (12*zeta^11 - 36*zeta^9 + 6*zeta^8 - 30*zeta^6 + 
12*zeta^4 - 24*zeta^3 + 6*zeta - 18)*q^329 + (-16*zeta^11 - 16*zeta^4 - 
16*zeta^3)*q^330 + (-25*zeta^8 - 25*zeta^6 - 25*zeta)*q^331 + (12*zeta^11 - 
24*zeta^9 + 12*zeta^8 - 12*zeta^6 + 12*zeta^4 - 12*zeta^3 + 12*zeta - 12)*q^332 
+ (-6*zeta^11 + 12*zeta^9 - 6*zeta^8 + 6*zeta^6 - 6*zeta^4 + 6*zeta^3 - 6*zeta +
6)*q^333 + (-28*zeta^8 - 28*zeta^6 - 28*zeta)*q^334 + (10*zeta^11 + 10*zeta^4 + 
10*zeta^3)*q^335 + (24*zeta^11 - 16*zeta^9 - 16*zeta^8 - 32*zeta^6 + 24*zeta^4 +
8*zeta^3 - 16*zeta - 8)*q^336 + (13*zeta^11 + 13*zeta^4 + 13*zeta^3)*q^337 + 
(-24*zeta^8 - 24*zeta^6 - 24*zeta)*q^338 + (-20*zeta^11 + 40*zeta^9 - 20*zeta^8 
+ 20*zeta^6 - 20*zeta^4 + 20*zeta^3 - 20*zeta + 20)*q^339 + (-18*zeta^8 - 
18*zeta^6 - 18*zeta)*q^341 + (-4*zeta^11 - 4*zeta^4 - 4*zeta^3)*q^342 + 
(19*zeta^11 - 36*zeta^9 - zeta^8 - 37*zeta^6 + 19*zeta^4 - 17*zeta^3 - zeta - 
18)*q^343 + (16*zeta^11 - 32*zeta^9 + 16*zeta^8 - 16*zeta^6 + 16*zeta^4 - 
16*zeta^3 + 16*zeta - 16)*q^346 + (32*zeta^11 - 64*zeta^9 + 32*zeta^8 - 
32*zeta^6 + 32*zeta^4 - 32*zeta^3 + 32*zeta - 32)*q^347 + (-16*zeta^8 - 
16*zeta^6 - 16*zeta)*q^348 + (-14*zeta^11 - 14*zeta^4 - 14*zeta^3)*q^349 + 
(-6*zeta^11 + 4*zeta^9 + 4*zeta^8 + 8*zeta^6 - 6*zeta^4 - 2*zeta^3 + 4*zeta + 
2)*q^350 + (-2*zeta^11 - 2*zeta^4 - 2*zeta^3)*q^351 + (16*zeta^8 + 16*zeta^6 + 
16*zeta)*q^352 + (34*zeta^11 - 68*zeta^9 + 34*zeta^8 - 34*zeta^6 + 34*zeta^4 - 
34*zeta^3 + 34*zeta - 34)*q^353 + (48*zeta^11 - 96*zeta^9 + 48*zeta^8 - 
48*zeta^6 + 48*zeta^4 - 48*zeta^3 + 48*zeta - 48)*q^354 + (12*zeta^8 + 12*zeta^6
+ 12*zeta)*q^355 + (32*zeta^11 + 32*zeta^4 + 32*zeta^3)*q^356 + (4*zeta^11 + 
4*zeta^4 + 4*zeta^3)*q^358 + (20*zeta^8 + 20*zeta^6 + 20*zeta)*q^359 + 
(-18*zeta^11 + 36*zeta^9 - 18*zeta^8 + 18*zeta^6 - 18*zeta^4 + 18*zeta^3 - 
18*zeta + 18)*q^361 + (26*zeta^8 + 26*zeta^6 + 26*zeta)*q^362 + (14*zeta^11 + 
14*zeta^4 + 14*zeta^3)*q^363 + (-2*zeta^11 - 8*zeta^9 + 6*zeta^8 - 2*zeta^6 - 
2*zeta^4 - 10*zeta^3 + 6*zeta - 4)*q^364 + (6*zeta^11 + 6*zeta^4 + 
6*zeta^3)*q^365 + (-40*zeta^8 - 40*zeta^6 - 40*zeta)*q^366 + (-9*zeta^11 + 
18*zeta^9 - 9*zeta^8 + 9*zeta^6 - 9*zeta^4 + 9*zeta^3 - 9*zeta + 9)*q^367 + 
(20*zeta^8 + 20*zeta^6 + 20*zeta)*q^369 + (-12*zeta^11 - 12*zeta^4 - 
12*zeta^3)*q^370 + (-12*zeta^11 - 48*zeta^9 + 36*zeta^8 - 12*zeta^6 - 12*zeta^4 
- 60*zeta^3 + 36*zeta - 24)*q^371 + (-36*zeta^11 - 36*zeta^4 - 36*zeta^3)*q^372 
+ (23*zeta^8 + 23*zeta^6 + 23*zeta)*q^373 + (-24*zeta^11 + 48*zeta^9 - 24*zeta^8
+ 24*zeta^6 - 24*zeta^4 + 24*zeta^3 - 24*zeta + 24)*q^375 + (4*zeta^11 + 
4*zeta^4 + 4*zeta^3)*q^377 + (8*zeta^11 - 24*zeta^9 + 4*zeta^8 - 20*zeta^6 + 
8*zeta^4 - 16*zeta^3 + 4*zeta - 12)*q^378 + (3*zeta^11 + 3*zeta^4 + 
3*zeta^3)*q^379 + (-4*zeta^8 - 4*zeta^6 - 4*zeta)*q^380 + (30*zeta^11 - 
60*zeta^9 + 30*zeta^8 - 30*zeta^6 + 30*zeta^4 - 30*zeta^3 + 30*zeta - 30)*q^381 
+ (20*zeta^11 - 40*zeta^9 + 20*zeta^8 - 20*zeta^6 + 20*zeta^4 - 20*zeta^3 + 
20*zeta - 20)*q^382 + (-12*zeta^8 - 12*zeta^6 - 12*zeta)*q^383 + (12*zeta^11 - 
8*zeta^9 - 8*zeta^8 - 16*zeta^6 + 12*zeta^4 + 4*zeta^3 - 8*zeta - 4)*q^385 + 
(22*zeta^11 + 22*zeta^4 + 22*zeta^3)*q^386 + (-10*zeta^8 - 10*zeta^6 - 
10*zeta)*q^387 + (-12*zeta^11 + 24*zeta^9 - 12*zeta^8 + 12*zeta^6 - 12*zeta^4 + 
12*zeta^3 - 12*zeta + 12)*q^388 + (-6*zeta^11 + 12*zeta^9 - 6*zeta^8 + 6*zeta^6 
- 6*zeta^4 + 6*zeta^3 - 6*zeta + 6)*q^389 + (8*zeta^8 + 8*zeta^6 + 8*zeta)*q^390
+ (28*zeta^11 + 28*zeta^4 + 28*zeta^3)*q^393 + (32*zeta^8 + 32*zeta^6 + 
32*zeta)*q^394 + (2*zeta^11 - 4*zeta^9 + 2*zeta^8 - 2*zeta^6 + 2*zeta^4 - 
2*zeta^3 + 2*zeta - 2)*q^395 + (8*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 
8*zeta^4 - 8*zeta^3 + 8*zeta - 8)*q^396 + (-9*zeta^8 - 9*zeta^6 - 9*zeta)*q^397 
+ (-6*zeta^11 + 4*zeta^9 + 4*zeta^8 + 8*zeta^6 - 6*zeta^4 - 2*zeta^3 + 4*zeta + 
2)*q^399 + (4*zeta^11 + 4*zeta^4 + 4*zeta^3)*q^400 + (-36*zeta^8 - 36*zeta^6 - 
36*zeta)*q^401 + (20*zeta^11 - 40*zeta^9 + 20*zeta^8 - 20*zeta^6 + 20*zeta^4 - 
20*zeta^3 + 20*zeta - 20)*q^402 + (9*zeta^11 - 18*zeta^9 + 9*zeta^8 - 9*zeta^6 +
9*zeta^4 - 9*zeta^3 + 9*zeta - 9)*q^403 + (4*zeta^8 + 4*zeta^6 + 4*zeta)*q^404 +
(4*zeta^11 + 4*zeta^4 + 4*zeta^3)*q^405 + (-16*zeta^11 + 48*zeta^9 - 8*zeta^8 + 
40*zeta^6 - 16*zeta^4 + 32*zeta^3 - 8*zeta + 24)*q^406 + (-6*zeta^11 - 6*zeta^4 
- 6*zeta^3)*q^407 + (5*zeta^11 - 10*zeta^9 + 5*zeta^8 - 5*zeta^6 + 5*zeta^4 - 
5*zeta^3 + 5*zeta - 5)*q^409 + (40*zeta^11 - 80*zeta^9 + 40*zeta^8 - 40*zeta^6 +
40*zeta^4 - 40*zeta^3 + 40*zeta - 40)*q^410 + (24*zeta^8 + 24*zeta^6 + 
24*zeta)*q^411 + (-14*zeta^11 - 14*zeta^4 - 14*zeta^3)*q^412 + (12*zeta^11 + 
48*zeta^9 - 36*zeta^8 + 12*zeta^6 + 12*zeta^4 + 60*zeta^3 - 36*zeta + 24)*q^413 
+ (-12*zeta^8 - 12*zeta^6 - 12*zeta)*q^415 + (-8*zeta^11 + 16*zeta^9 - 8*zeta^8 
+ 8*zeta^6 - 8*zeta^4 + 8*zeta^3 - 8*zeta + 8)*q^416 + (6*zeta^11 - 12*zeta^9 + 
6*zeta^8 - 6*zeta^6 + 6*zeta^4 - 6*zeta^3 + 6*zeta - 6)*q^417 + (-4*zeta^8 - 
4*zeta^6 - 4*zeta)*q^418 + (30*zeta^11 + 30*zeta^4 + 30*zeta^3)*q^419 + 
(-8*zeta^11 - 32*zeta^9 + 24*zeta^8 - 8*zeta^6 - 8*zeta^4 - 40*zeta^3 + 24*zeta 
- 16)*q^420 + (-7*zeta^11 - 7*zeta^4 - 7*zeta^3)*q^421 + (8*zeta^8 + 8*zeta^6 + 
8*zeta)*q^422 + (12*zeta^11 - 24*zeta^9 + 12*zeta^8 - 12*zeta^6 + 12*zeta^4 - 
12*zeta^3 + 12*zeta - 12)*q^423 + (24*zeta^11 + 24*zeta^4 + 24*zeta^3)*q^426 + 
(-20*zeta^11 + 60*zeta^9 - 10*zeta^8 + 50*zeta^6 - 20*zeta^4 + 40*zeta^3 - 
10*zeta + 30)*q^427 + (-16*zeta^11 - 16*zeta^4 - 16*zeta^3)*q^428 + (4*zeta^8 + 
4*zeta^6 + 4*zeta)*q^429 + (-20*zeta^11 + 40*zeta^9 - 20*zeta^8 + 20*zeta^6 - 
20*zeta^4 + 20*zeta^3 - 20*zeta + 20)*q^430 + (-18*zeta^11 + 36*zeta^9 - 
18*zeta^8 + 18*zeta^6 - 18*zeta^4 + 18*zeta^3 - 18*zeta + 18)*q^431 + (8*zeta^8 
+ 8*zeta^6 + 8*zeta)*q^432 + (31*zeta^11 + 31*zeta^4 + 31*zeta^3)*q^433 + 
(54*zeta^11 - 36*zeta^9 - 36*zeta^8 - 72*zeta^6 + 54*zeta^4 + 18*zeta^3 - 
36*zeta - 18)*q^434 + (16*zeta^11 + 16*zeta^4 + 16*zeta^3)*q^435 + (18*zeta^8 + 
18*zeta^6 + 18*zeta)*q^436 + (12*zeta^11 - 24*zeta^9 + 12*zeta^8 - 12*zeta^6 + 
12*zeta^4 - 12*zeta^3 + 12*zeta - 12)*q^438 + (-6*zeta^11 + 32*zeta^9 - 
10*zeta^8 + 22*zeta^6 - 6*zeta^4 + 26*zeta^3 - 10*zeta + 16)*q^441 + (12*zeta^8 
+ 12*zeta^6 + 12*zeta)*q^443 + (-12*zeta^11 + 24*zeta^9 - 12*zeta^8 + 12*zeta^6 
- 12*zeta^4 + 12*zeta^3 - 12*zeta + 12)*q^444 + (-32*zeta^11 + 64*zeta^9 - 
32*zeta^8 + 32*zeta^6 - 32*zeta^4 + 32*zeta^3 - 32*zeta + 32)*q^445 + (32*zeta^8
+ 32*zeta^6 + 32*zeta)*q^446 + (24*zeta^11 + 24*zeta^4 + 24*zeta^3)*q^447 + 
(-24*zeta^11 + 16*zeta^9 + 16*zeta^8 + 32*zeta^6 - 24*zeta^4 - 8*zeta^3 + 
16*zeta + 8)*q^448 + (-18*zeta^11 - 18*zeta^4 - 18*zeta^3)*q^449 + (4*zeta^8 + 
4*zeta^6 + 4*zeta)*q^450 + (20*zeta^11 - 40*zeta^9 + 20*zeta^8 - 20*zeta^6 + 
20*zeta^4 - 20*zeta^3 + 20*zeta - 20)*q^451 + (20*zeta^11 - 40*zeta^9 + 
20*zeta^8 - 20*zeta^6 + 20*zeta^4 - 20*zeta^3 + 20*zeta - 20)*q^452 + (32*zeta^8
+ 32*zeta^6 + 32*zeta)*q^453 + (36*zeta^11 + 36*zeta^4 + 36*zeta^3)*q^454 + 
(4*zeta^11 - 12*zeta^9 + 2*zeta^8 - 10*zeta^6 + 4*zeta^4 - 8*zeta^3 + 2*zeta - 
6)*q^455 + (-11*zeta^8 - 11*zeta^6 - 11*zeta)*q^457 + (-38*zeta^11 + 76*zeta^9 -
38*zeta^8 + 38*zeta^6 - 38*zeta^4 + 38*zeta^3 - 38*zeta + 38)*q^458 + 
(20*zeta^11 + 20*zeta^4 + 20*zeta^3)*q^461 + (-8*zeta^11 - 32*zeta^9 + 24*zeta^8
- 8*zeta^6 - 8*zeta^4 - 40*zeta^3 + 24*zeta - 16)*q^462 + (-17*zeta^11 - 
17*zeta^4 - 17*zeta^3)*q^463 + (-16*zeta^8 - 16*zeta^6 - 16*zeta)*q^464 + 
(36*zeta^11 - 72*zeta^9 + 36*zeta^8 - 36*zeta^6 + 36*zeta^4 - 36*zeta^3 + 
36*zeta - 36)*q^465 + (12*zeta^11 - 24*zeta^9 + 12*zeta^8 - 12*zeta^6 + 
12*zeta^4 - 12*zeta^3 + 12*zeta - 12)*q^466 + (6*zeta^8 + 6*zeta^6 + 
6*zeta)*q^467 + (-4*zeta^11 - 4*zeta^4 - 4*zeta^3)*q^468 + (5*zeta^11 + 
20*zeta^9 - 15*zeta^8 + 5*zeta^6 + 5*zeta^4 + 25*zeta^3 - 15*zeta + 10)*q^469 + 
(24*zeta^11 + 24*zeta^4 + 24*zeta^3)*q^470 + (28*zeta^8 + 28*zeta^6 + 
28*zeta)*q^471 + (-10*zeta^11 + 20*zeta^9 - 10*zeta^8 + 10*zeta^6 - 10*zeta^4 + 
10*zeta^3 - 10*zeta + 10)*q^473 + (4*zeta^8 + 4*zeta^6 + 4*zeta)*q^474 + 
(-zeta^11 - zeta^4 - zeta^3)*q^475 + (-24*zeta^11 - 24*zeta^4 - 24*zeta^3)*q^477
+ (12*zeta^8 + 12*zeta^6 + 12*zeta)*q^478 + (-28*zeta^11 + 56*zeta^9 - 28*zeta^8
+ 28*zeta^6 - 28*zeta^4 + 28*zeta^3 - 28*zeta + 28)*q^479 + (-32*zeta^11 + 
64*zeta^9 - 32*zeta^8 + 32*zeta^6 - 32*zeta^4 + 32*zeta^3 - 32*zeta + 32)*q^480 
+ (3*zeta^8 + 3*zeta^6 + 3*zeta)*q^481 + (28*zeta^11 + 28*zeta^4 + 
28*zeta^3)*q^482 + (-14*zeta^11 - 14*zeta^4 - 14*zeta^3)*q^484 + (12*zeta^8 + 
12*zeta^6 + 12*zeta)*q^485 + (-4*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 - 
4*zeta^4 + 4*zeta^3 - 4*zeta + 4)*q^486 + (31*zeta^11 - 62*zeta^9 + 31*zeta^8 - 
31*zeta^6 + 31*zeta^4 - 31*zeta^3 + 31*zeta - 31)*q^487 + (-8*zeta^11 - 8*zeta^4
- 8*zeta^3)*q^489 + (-20*zeta^11 - 24*zeta^9 + 32*zeta^8 + 8*zeta^6 - 20*zeta^4 
- 44*zeta^3 + 32*zeta - 12)*q^490 + (-28*zeta^11 - 28*zeta^4 - 28*zeta^3)*q^491 
+ (40*zeta^8 + 40*zeta^6 + 40*zeta)*q^492 + (2*zeta^11 - 4*zeta^9 + 2*zeta^8 - 
2*zeta^6 + 2*zeta^4 - 2*zeta^3 + 2*zeta - 2)*q^494 + (-8*zeta^8 - 8*zeta^6 - 
8*zeta)*q^495 + (-36*zeta^11 - 36*zeta^4 - 36*zeta^3)*q^496 + (-18*zeta^11 + 
12*zeta^9 + 12*zeta^8 + 24*zeta^6 - 18*zeta^4 - 6*zeta^3 + 12*zeta + 6)*q^497 + 
(-24*zeta^11 - 24*zeta^4 - 24*zeta^3)*q^498 + (37*zeta^8 + 37*zeta^6 + 
37*zeta)*q^499 + (24*zeta^11 - 48*zeta^9 + 24*zeta^8 - 24*zeta^6 + 24*zeta^4 - 
24*zeta^3 + 24*zeta - 24)*q^500 + (28*zeta^11 - 56*zeta^9 + 28*zeta^8 - 
28*zeta^6 + 28*zeta^4 - 28*zeta^3 + 28*zeta - 28)*q^501 + (-16*zeta^8 - 
16*zeta^6 - 16*zeta)*q^502 + (-42*zeta^11 - 42*zeta^4 - 42*zeta^3)*q^503 + 
(-4*zeta^11 - 4*zeta^4 - 4*zeta^3)*q^505 + (24*zeta^11 - 48*zeta^9 + 24*zeta^8 -
24*zeta^6 + 24*zeta^4 - 24*zeta^3 + 24*zeta - 24)*q^507 + (-30*zeta^11 + 
60*zeta^9 - 30*zeta^8 + 30*zeta^6 - 30*zeta^4 + 30*zeta^3 - 30*zeta + 30)*q^508 
+ (2*zeta^8 + 2*zeta^6 + 2*zeta)*q^509 + (3*zeta^11 + 12*zeta^9 - 9*zeta^8 + 
3*zeta^6 + 3*zeta^4 + 15*zeta^3 - 9*zeta + 6)*q^511 + (32*zeta^11 + 32*zeta^4 + 
32*zeta^3)*q^512 + (-2*zeta^8 - 2*zeta^6 - 2*zeta)*q^513 + (52*zeta^11 - 
104*zeta^9 + 52*zeta^8 - 52*zeta^6 + 52*zeta^4 - 52*zeta^3 + 52*zeta - 52)*q^514
+ (14*zeta^11 - 28*zeta^9 + 14*zeta^8 - 14*zeta^6 + 14*zeta^4 - 14*zeta^3 + 
14*zeta - 14)*q^515 + (-20*zeta^8 - 20*zeta^6 - 20*zeta)*q^516 + (12*zeta^11 + 
12*zeta^4 + 12*zeta^3)*q^517 + (-6*zeta^11 - 24*zeta^9 + 18*zeta^8 - 6*zeta^6 - 
6*zeta^4 - 30*zeta^3 + 18*zeta - 12)*q^518 + (-16*zeta^11 - 16*zeta^4 - 
16*zeta^3)*q^519 + (12*zeta^11 - 24*zeta^9 + 12*zeta^8 - 12*zeta^6 + 12*zeta^4 -
12*zeta^3 + 12*zeta - 12)*q^521 + (-16*zeta^11 + 32*zeta^9 - 16*zeta^8 + 
16*zeta^6 - 16*zeta^4 + 16*zeta^3 - 16*zeta + 16)*q^522 + (31*zeta^8 + 31*zeta^6
+ 31*zeta)*q^523 + (-28*zeta^11 - 28*zeta^4 - 28*zeta^3)*q^524 + (-4*zeta^11 + 
12*zeta^9 - 2*zeta^8 + 10*zeta^6 - 4*zeta^4 + 8*zeta^3 - 2*zeta + 6)*q^525 + 
(8*zeta^11 + 8*zeta^4 + 8*zeta^3)*q^526 + (-16*zeta^11 + 32*zeta^9 - 16*zeta^8 +
16*zeta^6 - 16*zeta^4 + 16*zeta^3 - 16*zeta + 16)*q^528 + (-23*zeta^11 + 
46*zeta^9 - 23*zeta^8 + 23*zeta^6 - 23*zeta^4 + 23*zeta^3 - 23*zeta + 23)*q^529 
+ (-48*zeta^8 - 48*zeta^6 - 48*zeta)*q^530 + (24*zeta^11 + 24*zeta^4 + 
24*zeta^3)*q^531 + (6*zeta^11 - 4*zeta^9 - 4*zeta^8 - 8*zeta^6 + 6*zeta^4 + 
2*zeta^3 - 4*zeta - 2)*q^532 + (-10*zeta^11 - 10*zeta^4 - 10*zeta^3)*q^533 + 
(-64*zeta^8 - 64*zeta^6 - 64*zeta)*q^534 + (16*zeta^11 - 32*zeta^9 + 16*zeta^8 -
16*zeta^6 + 16*zeta^4 - 16*zeta^3 + 16*zeta - 16)*q^535 + (-4*zeta^8 - 4*zeta^6 
- 4*zeta)*q^537 + (12*zeta^11 + 12*zeta^4 + 12*zeta^3)*q^538 + (-10*zeta^11 - 
12*zeta^9 + 16*zeta^8 + 4*zeta^6 - 10*zeta^4 - 22*zeta^3 + 16*zeta - 6)*q^539 + 
(8*zeta^11 + 8*zeta^4 + 8*zeta^3)*q^540 + (-19*zeta^8 - 19*zeta^6 - 
19*zeta)*q^541 + (32*zeta^11 - 64*zeta^9 + 32*zeta^8 - 32*zeta^6 + 32*zeta^4 - 
32*zeta^3 + 32*zeta - 32)*q^542 + (-26*zeta^11 + 52*zeta^9 - 26*zeta^8 + 
26*zeta^6 - 26*zeta^4 + 26*zeta^3 - 26*zeta + 26)*q^543 + (-18*zeta^11 - 
18*zeta^4 - 18*zeta^3)*q^545 + (-12*zeta^11 + 8*zeta^9 + 8*zeta^8 + 16*zeta^6 - 
12*zeta^4 - 4*zeta^3 + 8*zeta + 4)*q^546 + (28*zeta^11 + 28*zeta^4 + 
28*zeta^3)*q^547 + (-24*zeta^8 - 24*zeta^6 - 24*zeta)*q^548 + (-20*zeta^11 + 
40*zeta^9 - 20*zeta^8 + 20*zeta^6 - 20*zeta^4 + 20*zeta^3 - 20*zeta + 20)*q^549 
+ (4*zeta^11 - 8*zeta^9 + 4*zeta^8 - 4*zeta^6 + 4*zeta^4 - 4*zeta^3 + 4*zeta - 
4)*q^550 + (4*zeta^8 + 4*zeta^6 + 4*zeta)*q^551 + (2*zeta^11 - 6*zeta^9 + zeta^8
- 5*zeta^6 + 2*zeta^4 - 4*zeta^3 + zeta - 3)*q^553 + (26*zeta^11 + 26*zeta^4 + 
26*zeta^3)*q^554 + (12*zeta^8 + 12*zeta^6 + 12*zeta)*q^555 + (-6*zeta^11 + 
12*zeta^9 - 6*zeta^8 + 6*zeta^6 - 6*zeta^4 + 6*zeta^3 - 6*zeta + 6)*q^556 + 
(-2*zeta^11 + 4*zeta^9 - 2*zeta^8 + 2*zeta^6 - 2*zeta^4 + 2*zeta^3 - 2*zeta + 
2)*q^557 + (-36*zeta^8 - 36*zeta^6 - 36*zeta)*q^558 + (5*zeta^11 + 5*zeta^4 + 
5*zeta^3)*q^559 + (-8*zeta^11 - 32*zeta^9 + 24*zeta^8 - 8*zeta^6 - 8*zeta^4 - 
40*zeta^3 + 24*zeta - 16)*q^560 + (-8*zeta^8 - 8*zeta^6 - 8*zeta)*q^562 + 
(-26*zeta^11 + 52*zeta^9 - 26*zeta^8 + 26*zeta^6 - 26*zeta^4 + 26*zeta^3 - 
26*zeta + 26)*q^563 + (24*zeta^11 - 48*zeta^9 + 24*zeta^8 - 24*zeta^6 + 
24*zeta^4 - 24*zeta^3 + 24*zeta - 24)*q^564 + (-20*zeta^8 - 20*zeta^6 - 
20*zeta)*q^565 + (-22*zeta^11 - 22*zeta^4 - 22*zeta^3)*q^566 + (2*zeta^11 + 
8*zeta^9 - 6*zeta^8 + 2*zeta^6 + 2*zeta^4 + 10*zeta^3 - 6*zeta + 4)*q^567 + 
(-26*zeta^8 - 26*zeta^6 - 26*zeta)*q^569 + (8*zeta^11 - 16*zeta^9 + 8*zeta^8 - 
8*zeta^6 + 8*zeta^4 - 8*zeta^3 + 8*zeta - 8)*q^570 + (-19*zeta^11 + 38*zeta^9 - 
19*zeta^8 + 19*zeta^6 - 19*zeta^4 + 19*zeta^3 - 19*zeta + 19)*q^571 + (-4*zeta^8
- 4*zeta^6 - 4*zeta)*q^572 + (-20*zeta^11 - 20*zeta^4 - 20*zeta^3)*q^573 + 
(40*zeta^11 - 120*zeta^9 + 20*zeta^8 - 100*zeta^6 + 40*zeta^4 - 80*zeta^3 + 
20*zeta - 60)*q^574 + (16*zeta^8 + 16*zeta^6 + 16*zeta)*q^576 + (-17*zeta^11 + 
34*zeta^9 - 17*zeta^8 + 17*zeta^6 - 17*zeta^4 + 17*zeta^3 - 17*zeta + 17)*q^577 
+ (-34*zeta^11 + 68*zeta^9 - 34*zeta^8 + 34*zeta^6 - 34*zeta^4 + 34*zeta^3 - 
34*zeta + 34)*q^578 + (-22*zeta^8 - 22*zeta^6 - 22*zeta)*q^579 + (-16*zeta^11 - 
16*zeta^4 - 16*zeta^3)*q^580 + (18*zeta^11 - 12*zeta^9 - 12*zeta^8 - 24*zeta^6 +
18*zeta^4 + 6*zeta^3 - 12*zeta - 6)*q^581 + (24*zeta^11 + 24*zeta^4 + 
24*zeta^3)*q^582 + (-24*zeta^8 - 24*zeta^6 - 24*zeta)*q^583 + (4*zeta^11 - 
8*zeta^9 + 4*zeta^8 - 4*zeta^6 + 4*zeta^4 - 4*zeta^3 + 4*zeta - 4)*q^585 + 
(16*zeta^8 + 16*zeta^6 + 16*zeta)*q^586 + (16*zeta^11 + 16*zeta^4 + 
16*zeta^3)*q^587 + (-12*zeta^11 + 64*zeta^9 - 20*zeta^8 + 44*zeta^6 - 12*zeta^4 
+ 52*zeta^3 - 20*zeta + 32)*q^588 + (9*zeta^11 + 9*zeta^4 + 9*zeta^3)*q^589 + 
(48*zeta^8 + 48*zeta^6 + 48*zeta)*q^590 + (-32*zeta^11 + 64*zeta^9 - 32*zeta^8 +
32*zeta^6 - 32*zeta^4 + 32*zeta^3 - 32*zeta + 32)*q^591 + (-12*zeta^11 + 
24*zeta^9 - 12*zeta^8 + 12*zeta^6 - 12*zeta^4 + 12*zeta^3 - 12*zeta + 12)*q^592 
+ (-6*zeta^8 - 6*zeta^6 - 6*zeta)*q^593 + (8*zeta^11 + 8*zeta^4 + 
8*zeta^3)*q^594 + (-24*zeta^11 - 24*zeta^4 - 24*zeta^3)*q^596 + (12*zeta^11 - 
24*zeta^9 + 12*zeta^8 - 12*zeta^6 + 12*zeta^4 - 12*zeta^3 + 12*zeta - 12)*q^599 
+ (-9*zeta^11 - 9*zeta^4 - 9*zeta^3)*q^601 + (-20*zeta^11 + 60*zeta^9 - 
10*zeta^8 + 50*zeta^6 - 20*zeta^4 + 40*zeta^3 - 10*zeta + 30)*q^602 + 
(10*zeta^11 + 10*zeta^4 + 10*zeta^3)*q^603 + (-32*zeta^8 - 32*zeta^6 - 
32*zeta)*q^604 + (14*zeta^11 - 28*zeta^9 + 14*zeta^8 - 14*zeta^6 + 14*zeta^4 - 
14*zeta^3 + 14*zeta - 14)*q^605 + (-8*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 
- 8*zeta^4 + 8*zeta^3 - 8*zeta + 8)*q^606 + (23*zeta^8 + 23*zeta^6 + 
23*zeta)*q^607 + (-8*zeta^11 - 8*zeta^4 - 8*zeta^3)*q^608 + (8*zeta^11 + 
32*zeta^9 - 24*zeta^8 + 8*zeta^6 + 8*zeta^4 + 40*zeta^3 - 24*zeta + 16)*q^609 + 
(-40*zeta^11 - 40*zeta^4 - 40*zeta^3)*q^610 + (-6*zeta^8 - 6*zeta^6 - 
6*zeta)*q^611 + (34*zeta^11 - 68*zeta^9 + 34*zeta^8 - 34*zeta^6 + 34*zeta^4 - 
34*zeta^3 + 34*zeta - 34)*q^613 + (-34*zeta^8 - 34*zeta^6 - 34*zeta)*q^614 + 
(-40*zeta^11 - 40*zeta^4 - 40*zeta^3)*q^615 + (-6*zeta^11 - 6*zeta^4 - 
6*zeta^3)*q^617 + (28*zeta^8 + 28*zeta^6 + 28*zeta)*q^618 + (-29*zeta^11 + 
58*zeta^9 - 29*zeta^8 + 29*zeta^6 - 29*zeta^4 + 29*zeta^3 - 29*zeta + 29)*q^619 
+ (-36*zeta^11 + 72*zeta^9 - 36*zeta^8 + 36*zeta^6 - 36*zeta^4 + 36*zeta^3 - 
36*zeta + 36)*q^620 + (-12*zeta^11 - 12*zeta^4 - 12*zeta^3)*q^622 + (-32*zeta^11
+ 96*zeta^9 - 16*zeta^8 + 80*zeta^6 - 32*zeta^4 + 64*zeta^3 - 16*zeta + 
48)*q^623 + (8*zeta^11 + 8*zeta^4 + 8*zeta^3)*q^624 + (-19*zeta^8 - 19*zeta^6 - 
19*zeta)*q^625 + (-2*zeta^11 + 4*zeta^9 - 2*zeta^8 + 2*zeta^6 - 2*zeta^4 + 
2*zeta^3 - 2*zeta + 2)*q^626 + (4*zeta^11 - 8*zeta^9 + 4*zeta^8 - 4*zeta^6 + 
4*zeta^4 - 4*zeta^3 + 4*zeta - 4)*q^627 + (-28*zeta^8 - 28*zeta^6 - 
28*zeta)*q^628 + (24*zeta^11 - 16*zeta^9 - 16*zeta^8 - 32*zeta^6 + 24*zeta^4 + 
8*zeta^3 - 16*zeta - 8)*q^630 + (8*zeta^11 + 8*zeta^4 + 8*zeta^3)*q^631 + 
(-8*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 8*zeta^4 + 8*zeta^3 - 8*zeta + 
8)*q^633 + (48*zeta^11 - 96*zeta^9 + 48*zeta^8 - 48*zeta^6 + 48*zeta^4 - 
48*zeta^3 + 48*zeta - 48)*q^634 + (30*zeta^8 + 30*zeta^6 + 30*zeta)*q^635 + 
(-48*zeta^11 - 48*zeta^4 - 48*zeta^3)*q^636 + (-8*zeta^11 + 10*zeta^9 + 3*zeta^8
+ 13*zeta^6 - 8*zeta^4 + 2*zeta^3 + 3*zeta + 5)*q^637 + (-16*zeta^11 - 16*zeta^4
- 16*zeta^3)*q^638 + (12*zeta^8 + 12*zeta^6 + 12*zeta)*q^639 + (32*zeta^8 + 
32*zeta^6 + 32*zeta)*q^642 + (-19*zeta^11 - 19*zeta^4 - 19*zeta^3)*q^643 + 
(20*zeta^11 + 20*zeta^4 + 20*zeta^3)*q^645 + (2*zeta^11 - 4*zeta^9 + 2*zeta^8 - 
2*zeta^6 + 2*zeta^4 - 2*zeta^3 + 2*zeta - 2)*q^647 + (24*zeta^8 + 24*zeta^6 + 
24*zeta)*q^649 + (-2*zeta^11 - 2*zeta^4 - 2*zeta^3)*q^650 + (36*zeta^11 - 
108*zeta^9 + 18*zeta^8 - 90*zeta^6 + 36*zeta^4 - 72*zeta^3 + 18*zeta - 54)*q^651
+ (8*zeta^11 + 8*zeta^4 + 8*zeta^3)*q^652 + (18*zeta^8 + 18*zeta^6 + 
18*zeta)*q^653 + (-36*zeta^11 + 72*zeta^9 - 36*zeta^8 + 36*zeta^6 - 36*zeta^4 + 
36*zeta^3 - 36*zeta + 36)*q^654 + (28*zeta^11 - 56*zeta^9 + 28*zeta^8 - 
28*zeta^6 + 28*zeta^4 - 28*zeta^3 + 28*zeta - 28)*q^655 + (40*zeta^8 + 40*zeta^6
+ 40*zeta)*q^656 + (6*zeta^11 + 6*zeta^4 + 6*zeta^3)*q^657 + (12*zeta^11 + 
48*zeta^9 - 36*zeta^8 + 12*zeta^6 + 12*zeta^4 + 60*zeta^3 - 36*zeta + 24)*q^658 
+ (36*zeta^11 + 36*zeta^4 + 36*zeta^3)*q^659 + (-16*zeta^8 - 16*zeta^6 - 
16*zeta)*q^660 + (-41*zeta^11 + 82*zeta^9 - 41*zeta^8 + 41*zeta^6 - 41*zeta^4 + 
41*zeta^3 - 41*zeta + 41)*q^661 + (-50*zeta^11 + 100*zeta^9 - 50*zeta^8 + 
50*zeta^6 - 50*zeta^4 + 50*zeta^3 - 50*zeta + 50)*q^662 + (2*zeta^11 + 8*zeta^9 
- 6*zeta^8 + 2*zeta^6 + 2*zeta^4 + 10*zeta^3 - 6*zeta + 4)*q^665 + (-12*zeta^11 
- 12*zeta^4 - 12*zeta^3)*q^666 + (-28*zeta^11 + 56*zeta^9 - 28*zeta^8 + 
28*zeta^6 - 28*zeta^4 + 28*zeta^3 - 28*zeta + 28)*q^668 + (-32*zeta^11 + 
64*zeta^9 - 32*zeta^8 + 32*zeta^6 - 32*zeta^4 + 32*zeta^3 - 32*zeta + 32)*q^669 
+ (20*zeta^8 + 20*zeta^6 + 20*zeta)*q^670 + (-20*zeta^11 - 20*zeta^4 - 
20*zeta^3)*q^671 + (-32*zeta^11 + 96*zeta^9 - 16*zeta^8 + 80*zeta^6 - 32*zeta^4 
+ 64*zeta^3 - 16*zeta + 48)*q^672 + (-41*zeta^11 - 41*zeta^4 - 41*zeta^3)*q^673 
+ (26*zeta^8 + 26*zeta^6 + 26*zeta)*q^674 + (2*zeta^11 - 4*zeta^9 + 2*zeta^8 - 
2*zeta^6 + 2*zeta^4 - 2*zeta^3 + 2*zeta - 2)*q^675 + (-24*zeta^11 + 48*zeta^9 - 
24*zeta^8 + 24*zeta^6 - 24*zeta^4 + 24*zeta^3 - 24*zeta + 24)*q^676 + (12*zeta^8
+ 12*zeta^6 + 12*zeta)*q^677 + (-40*zeta^11 - 40*zeta^4 - 40*zeta^3)*q^678 + 
(-18*zeta^11 + 12*zeta^9 + 12*zeta^8 + 24*zeta^6 - 18*zeta^4 - 6*zeta^3 + 
12*zeta + 6)*q^679 + (-36*zeta^8 - 36*zeta^6 - 36*zeta)*q^681 + (-36*zeta^11 + 
72*zeta^9 - 36*zeta^8 + 36*zeta^6 - 36*zeta^4 + 36*zeta^3 - 36*zeta + 36)*q^682 
+ (-12*zeta^11 + 24*zeta^9 - 12*zeta^8 + 12*zeta^6 - 12*zeta^4 + 12*zeta^3 - 
12*zeta + 12)*q^683 + (-4*zeta^8 - 4*zeta^6 - 4*zeta)*q^684 + (24*zeta^11 + 
24*zeta^4 + 24*zeta^3)*q^685 + (-2*zeta^11 + 76*zeta^9 - 36*zeta^8 + 40*zeta^6 -
2*zeta^4 + 74*zeta^3 - 36*zeta + 38)*q^686 + (38*zeta^11 + 38*zeta^4 + 
38*zeta^3)*q^687 + (-20*zeta^8 - 20*zeta^6 - 20*zeta)*q^688 + (12*zeta^11 - 
24*zeta^9 + 12*zeta^8 - 12*zeta^6 + 12*zeta^4 - 12*zeta^3 + 12*zeta - 12)*q^689 
+ (-37*zeta^8 - 37*zeta^6 - 37*zeta)*q^691 + (16*zeta^11 + 16*zeta^4 + 
16*zeta^3)*q^692 + (12*zeta^11 - 8*zeta^9 - 8*zeta^8 - 16*zeta^6 + 12*zeta^4 + 
4*zeta^3 - 8*zeta - 4)*q^693 + (64*zeta^11 + 64*zeta^4 + 64*zeta^3)*q^694 + 
(6*zeta^8 + 6*zeta^6 + 6*zeta)*q^695 + (-28*zeta^8 - 28*zeta^6 - 28*zeta)*q^698 
+ (-12*zeta^11 - 12*zeta^4 - 12*zeta^3)*q^699 + (4*zeta^11 - 12*zeta^9 + 
2*zeta^8 - 10*zeta^6 + 4*zeta^4 - 8*zeta^3 + 2*zeta - 6)*q^700 + (-4*zeta^8 - 
4*zeta^6 - 4*zeta)*q^702 + (3*zeta^11 - 6*zeta^9 + 3*zeta^8 - 3*zeta^6 + 
3*zeta^4 - 3*zeta^3 + 3*zeta - 3)*q^703 + (16*zeta^11 - 32*zeta^9 + 16*zeta^8 - 
16*zeta^6 + 16*zeta^4 - 16*zeta^3 + 16*zeta - 16)*q^704 + (-24*zeta^8 - 
24*zeta^6 - 24*zeta)*q^705 + (68*zeta^11 + 68*zeta^4 + 68*zeta^3)*q^706 + 
(-2*zeta^11 - 8*zeta^9 + 6*zeta^8 - 2*zeta^6 - 2*zeta^4 - 10*zeta^3 + 6*zeta - 
4)*q^707 + (48*zeta^11 + 48*zeta^4 + 48*zeta^3)*q^708 + (30*zeta^8 + 30*zeta^6 +
30*zeta)*q^709 + (24*zeta^11 - 48*zeta^9 + 24*zeta^8 - 24*zeta^6 + 24*zeta^4 - 
24*zeta^3 + 24*zeta - 24)*q^710 + (2*zeta^11 - 4*zeta^9 + 2*zeta^8 - 2*zeta^6 + 
2*zeta^4 - 2*zeta^3 + 2*zeta - 2)*q^711 + (4*zeta^11 + 4*zeta^4 + 
4*zeta^3)*q^715 + (4*zeta^8 + 4*zeta^6 + 4*zeta)*q^716 + (-12*zeta^11 + 
24*zeta^9 - 12*zeta^8 + 12*zeta^6 - 12*zeta^4 + 12*zeta^3 - 12*zeta + 12)*q^717 
+ (40*zeta^11 - 80*zeta^9 + 40*zeta^8 - 40*zeta^6 + 40*zeta^4 - 40*zeta^3 + 
40*zeta - 40)*q^718 + (-18*zeta^8 - 18*zeta^6 - 18*zeta)*q^719 + (-16*zeta^11 - 
16*zeta^4 - 16*zeta^3)*q^720 + (14*zeta^11 - 42*zeta^9 + 7*zeta^8 - 35*zeta^6 + 
14*zeta^4 - 28*zeta^3 + 7*zeta - 21)*q^721 + (-36*zeta^11 - 36*zeta^4 - 
36*zeta^3)*q^722 + (-28*zeta^8 - 28*zeta^6 - 28*zeta)*q^723 + (26*zeta^11 - 
52*zeta^9 + 26*zeta^8 - 26*zeta^6 + 26*zeta^4 - 26*zeta^3 + 26*zeta - 26)*q^724 
+ (-4*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 - 4*zeta^4 + 4*zeta^3 - 4*zeta + 
4)*q^725 + (28*zeta^8 + 28*zeta^6 + 28*zeta)*q^726 + (-13*zeta^11 - 13*zeta^4 - 
13*zeta^3)*q^727 + (-2*zeta^11 - 2*zeta^4 - 2*zeta^3)*q^729 + (12*zeta^8 + 
12*zeta^6 + 12*zeta)*q^730 + (-40*zeta^11 + 80*zeta^9 - 40*zeta^8 + 40*zeta^6 - 
40*zeta^4 + 40*zeta^3 - 40*zeta + 40)*q^732 + (-15*zeta^8 - 15*zeta^6 - 
15*zeta)*q^733 + (-18*zeta^11 - 18*zeta^4 - 18*zeta^3)*q^734 + (-32*zeta^11 + 
40*zeta^9 + 12*zeta^8 + 52*zeta^6 - 32*zeta^4 + 8*zeta^3 + 12*zeta + 20)*q^735 +
(10*zeta^8 + 10*zeta^6 + 10*zeta)*q^737 + (40*zeta^11 - 80*zeta^9 + 40*zeta^8 - 
40*zeta^6 + 40*zeta^4 - 40*zeta^3 + 40*zeta - 40)*q^738 + (-15*zeta^11 + 
30*zeta^9 - 15*zeta^8 + 15*zeta^6 - 15*zeta^4 + 15*zeta^3 - 15*zeta + 15)*q^739 
+ (-12*zeta^8 - 12*zeta^6 - 12*zeta)*q^740 + (-2*zeta^11 - 2*zeta^4 - 
2*zeta^3)*q^741 + (72*zeta^11 - 48*zeta^9 - 48*zeta^8 - 96*zeta^6 + 72*zeta^4 + 
24*zeta^3 - 48*zeta - 24)*q^742 + (42*zeta^11 + 42*zeta^4 + 42*zeta^3)*q^743 + 
(24*zeta^11 - 48*zeta^9 + 24*zeta^8 - 24*zeta^6 + 24*zeta^4 - 24*zeta^3 + 
24*zeta - 24)*q^745 + (46*zeta^11 - 92*zeta^9 + 46*zeta^8 - 46*zeta^6 + 
46*zeta^4 - 46*zeta^3 + 46*zeta - 46)*q^746 + (-12*zeta^8 - 12*zeta^6 - 
12*zeta)*q^747 + (16*zeta^11 - 48*zeta^9 + 8*zeta^8 - 40*zeta^6 + 16*zeta^4 - 
32*zeta^3 + 8*zeta - 24)*q^749 + (-48*zeta^11 - 48*zeta^4 - 48*zeta^3)*q^750 + 
(13*zeta^8 + 13*zeta^6 + 13*zeta)*q^751 + (24*zeta^11 - 48*zeta^9 + 24*zeta^8 - 
24*zeta^6 + 24*zeta^4 - 24*zeta^3 + 24*zeta - 24)*q^752 + (16*zeta^11 - 
32*zeta^9 + 16*zeta^8 - 16*zeta^6 + 16*zeta^4 - 16*zeta^3 + 16*zeta - 16)*q^753 
+ (8*zeta^8 + 8*zeta^6 + 8*zeta)*q^754 + (32*zeta^11 + 32*zeta^4 + 
32*zeta^3)*q^755 + (4*zeta^11 + 16*zeta^9 - 12*zeta^8 + 4*zeta^6 + 4*zeta^4 + 
20*zeta^3 - 12*zeta + 8)*q^756 + (-22*zeta^11 - 22*zeta^4 - 22*zeta^3)*q^757 + 
(6*zeta^8 + 6*zeta^6 + 6*zeta)*q^758 + (-48*zeta^8 - 48*zeta^6 - 48*zeta)*q^761 
+ (60*zeta^11 + 60*zeta^4 + 60*zeta^3)*q^762 + (-9*zeta^11 - 36*zeta^9 + 
27*zeta^8 - 9*zeta^6 - 9*zeta^4 - 45*zeta^3 + 27*zeta - 18)*q^763 + (20*zeta^11 
+ 20*zeta^4 + 20*zeta^3)*q^764 + (-24*zeta^11 + 48*zeta^9 - 24*zeta^8 + 
24*zeta^6 - 24*zeta^4 + 24*zeta^3 - 24*zeta + 24)*q^766 + (-12*zeta^11 + 
24*zeta^9 - 12*zeta^8 + 12*zeta^6 - 12*zeta^4 + 12*zeta^3 - 12*zeta + 12)*q^767 
+ (-32*zeta^8 - 32*zeta^6 - 32*zeta)*q^768 + (-49*zeta^11 - 49*zeta^4 - 
49*zeta^3)*q^769 + (-16*zeta^11 + 48*zeta^9 - 8*zeta^8 + 40*zeta^6 - 16*zeta^4 +
32*zeta^3 - 8*zeta + 24)*q^770 + (-52*zeta^11 - 52*zeta^4 - 52*zeta^3)*q^771 + 
(22*zeta^8 + 22*zeta^6 + 22*zeta)*q^772 + (-34*zeta^11 + 68*zeta^9 - 34*zeta^8 +
34*zeta^6 - 34*zeta^4 + 34*zeta^3 - 34*zeta + 34)*q^773 + (-20*zeta^11 + 
40*zeta^9 - 20*zeta^8 + 20*zeta^6 - 20*zeta^4 + 20*zeta^3 - 20*zeta + 20)*q^774 
+ (-9*zeta^8 - 9*zeta^6 - 9*zeta)*q^775 + (-18*zeta^11 + 12*zeta^9 + 12*zeta^8 +
24*zeta^6 - 18*zeta^4 - 6*zeta^3 + 12*zeta + 6)*q^777 + (-12*zeta^11 - 12*zeta^4
- 12*zeta^3)*q^778 + (-10*zeta^8 - 10*zeta^6 - 10*zeta)*q^779 + (8*zeta^11 - 
16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 8*zeta^4 - 8*zeta^3 + 8*zeta - 8)*q^780 + 
(12*zeta^11 - 24*zeta^9 + 12*zeta^8 - 12*zeta^6 + 12*zeta^4 - 12*zeta^3 + 
12*zeta - 12)*q^781 + (-8*zeta^11 - 8*zeta^4 - 8*zeta^3)*q^783 + (-12*zeta^11 + 
64*zeta^9 - 20*zeta^8 + 44*zeta^6 - 12*zeta^4 + 52*zeta^3 - 20*zeta + 32)*q^784 
+ (28*zeta^11 + 28*zeta^4 + 28*zeta^3)*q^785 + (56*zeta^8 + 56*zeta^6 + 
56*zeta)*q^786 + (40*zeta^11 - 80*zeta^9 + 40*zeta^8 - 40*zeta^6 + 40*zeta^4 - 
40*zeta^3 + 40*zeta - 40)*q^787 + (32*zeta^11 - 64*zeta^9 + 32*zeta^8 - 
32*zeta^6 + 32*zeta^4 - 32*zeta^3 + 32*zeta - 32)*q^788 + (-8*zeta^8 - 8*zeta^6 
- 8*zeta)*q^789 + (4*zeta^11 + 4*zeta^4 + 4*zeta^3)*q^790 + (30*zeta^11 - 
20*zeta^9 - 20*zeta^8 - 40*zeta^6 + 30*zeta^4 + 10*zeta^3 - 20*zeta - 10)*q^791 
+ (10*zeta^8 + 10*zeta^6 + 10*zeta)*q^793 + (-18*zeta^11 + 36*zeta^9 - 18*zeta^8
+ 18*zeta^6 - 18*zeta^4 + 18*zeta^3 - 18*zeta + 18)*q^794 + (48*zeta^11 - 
96*zeta^9 + 48*zeta^8 - 48*zeta^6 + 48*zeta^4 - 48*zeta^3 + 48*zeta - 48)*q^795 
+ (-8*zeta^11 - 8*zeta^4 - 8*zeta^3)*q^797 + (8*zeta^11 - 24*zeta^9 + 4*zeta^8 -
20*zeta^6 + 8*zeta^4 - 16*zeta^3 + 4*zeta - 12)*q^798 + (8*zeta^8 + 8*zeta^6 + 
8*zeta)*q^800 + (-32*zeta^11 + 64*zeta^9 - 32*zeta^8 + 32*zeta^6 - 32*zeta^4 + 
32*zeta^3 - 32*zeta + 32)*q^801 + (-72*zeta^11 + 144*zeta^9 - 72*zeta^8 + 
72*zeta^6 - 72*zeta^4 + 72*zeta^3 - 72*zeta + 72)*q^802 + (6*zeta^8 + 6*zeta^6 +
6*zeta)*q^803 + (20*zeta^11 + 20*zeta^4 + 20*zeta^3)*q^804 + (18*zeta^11 + 
18*zeta^4 + 18*zeta^3)*q^806 + (-12*zeta^8 - 12*zeta^6 - 12*zeta)*q^807 + 
(30*zeta^11 - 60*zeta^9 + 30*zeta^8 - 30*zeta^6 + 30*zeta^4 - 30*zeta^3 + 
30*zeta - 30)*q^809 + (8*zeta^8 + 8*zeta^6 + 8*zeta)*q^810 + (32*zeta^11 + 
32*zeta^4 + 32*zeta^3)*q^811 + (-8*zeta^11 - 32*zeta^9 + 24*zeta^8 - 8*zeta^6 - 
8*zeta^4 - 40*zeta^3 + 24*zeta - 16)*q^812 + (-32*zeta^11 - 32*zeta^4 - 
32*zeta^3)*q^813 + (-12*zeta^8 - 12*zeta^6 - 12*zeta)*q^814 + (-8*zeta^11 + 
16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 8*zeta^4 + 8*zeta^3 - 8*zeta + 8)*q^815 + 
(5*zeta^8 + 5*zeta^6 + 5*zeta)*q^817 + (10*zeta^11 + 10*zeta^4 + 
10*zeta^3)*q^818 + (4*zeta^11 - 12*zeta^9 + 2*zeta^8 - 10*zeta^6 + 4*zeta^4 - 
8*zeta^3 + 2*zeta - 6)*q^819 + (40*zeta^11 + 40*zeta^4 + 40*zeta^3)*q^820 + 
(2*zeta^8 + 2*zeta^6 + 2*zeta)*q^821 + (48*zeta^11 - 96*zeta^9 + 48*zeta^8 - 
48*zeta^6 + 48*zeta^4 - 48*zeta^3 + 48*zeta - 48)*q^822 + (-4*zeta^11 - 4*zeta^4
- 4*zeta^3)*q^825 + (-72*zeta^11 + 48*zeta^9 + 48*zeta^8 + 96*zeta^6 - 72*zeta^4
- 24*zeta^3 + 48*zeta + 24)*q^826 + (-30*zeta^11 - 30*zeta^4 - 30*zeta^3)*q^827 
+ (41*zeta^11 - 82*zeta^9 + 41*zeta^8 - 41*zeta^6 + 41*zeta^4 - 41*zeta^3 + 
41*zeta - 41)*q^829 + (-24*zeta^11 + 48*zeta^9 - 24*zeta^8 + 24*zeta^6 - 
24*zeta^4 + 24*zeta^3 - 24*zeta + 24)*q^830 + (-26*zeta^8 - 26*zeta^6 - 
26*zeta)*q^831 + (-8*zeta^11 - 8*zeta^4 - 8*zeta^3)*q^832 + (12*zeta^11 + 
12*zeta^4 + 12*zeta^3)*q^834 + (28*zeta^8 + 28*zeta^6 + 28*zeta)*q^835 + 
(-4*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 - 4*zeta^4 + 4*zeta^3 - 4*zeta + 
4)*q^836 + (-18*zeta^11 + 36*zeta^9 - 18*zeta^8 + 18*zeta^6 - 18*zeta^4 + 
18*zeta^3 - 18*zeta + 18)*q^837 + (60*zeta^8 + 60*zeta^6 + 60*zeta)*q^838 + 
(-44*zeta^11 - 44*zeta^4 - 44*zeta^3)*q^839 + (-13*zeta^11 - 13*zeta^4 - 
13*zeta^3)*q^841 + (-14*zeta^8 - 14*zeta^6 - 14*zeta)*q^842 + (8*zeta^11 - 
16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 8*zeta^4 - 8*zeta^3 + 8*zeta - 8)*q^843 + 
(8*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 8*zeta^4 - 8*zeta^3 + 8*zeta - 
8)*q^844 + (24*zeta^8 + 24*zeta^6 + 24*zeta)*q^845 + (24*zeta^11 + 24*zeta^4 + 
24*zeta^3)*q^846 + (14*zeta^11 - 42*zeta^9 + 7*zeta^8 - 35*zeta^6 + 14*zeta^4 - 
28*zeta^3 + 7*zeta - 21)*q^847 + (-48*zeta^11 - 48*zeta^4 - 48*zeta^3)*q^848 + 
(22*zeta^8 + 22*zeta^6 + 22*zeta)*q^849 + (24*zeta^8 + 24*zeta^6 + 
24*zeta)*q^852 + (35*zeta^11 + 35*zeta^4 + 35*zeta^3)*q^853 + (-20*zeta^11 - 
80*zeta^9 + 60*zeta^8 - 20*zeta^6 - 20*zeta^4 - 100*zeta^3 + 60*zeta - 40)*q^854
+ (4*zeta^11 + 4*zeta^4 + 4*zeta^3)*q^855 + (-32*zeta^11 + 64*zeta^9 - 32*zeta^8
+ 32*zeta^6 - 32*zeta^4 + 32*zeta^3 - 32*zeta + 32)*q^857 + (8*zeta^11 - 
16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 8*zeta^4 - 8*zeta^3 + 8*zeta - 8)*q^858 + 
(-40*zeta^8 - 40*zeta^6 - 40*zeta)*q^859 + (-20*zeta^11 - 20*zeta^4 - 
20*zeta^3)*q^860 + (-20*zeta^11 - 80*zeta^9 + 60*zeta^8 - 20*zeta^6 - 20*zeta^4 
- 100*zeta^3 + 60*zeta - 40)*q^861 + (-36*zeta^11 - 36*zeta^4 - 36*zeta^3)*q^862
+ (-54*zeta^8 - 54*zeta^6 - 54*zeta)*q^863 + (16*zeta^11 - 32*zeta^9 + 16*zeta^8
- 16*zeta^6 + 16*zeta^4 - 16*zeta^3 + 16*zeta - 16)*q^864 + (-16*zeta^11 + 
32*zeta^9 - 16*zeta^8 + 16*zeta^6 - 16*zeta^4 + 16*zeta^3 - 16*zeta + 16)*q^865 
+ (62*zeta^8 + 62*zeta^6 + 62*zeta)*q^866 + (34*zeta^11 + 34*zeta^4 + 
34*zeta^3)*q^867 + (-36*zeta^11 + 108*zeta^9 - 18*zeta^8 + 90*zeta^6 - 36*zeta^4
+ 72*zeta^3 - 18*zeta + 54)*q^868 + (2*zeta^11 + 2*zeta^4 + 2*zeta^3)*q^869 + 
(32*zeta^8 + 32*zeta^6 + 32*zeta)*q^870 + (-5*zeta^11 + 10*zeta^9 - 5*zeta^8 + 
5*zeta^6 - 5*zeta^4 + 5*zeta^3 - 5*zeta + 5)*q^871 + (12*zeta^8 + 12*zeta^6 + 
12*zeta)*q^873 + (36*zeta^11 - 24*zeta^9 - 24*zeta^8 - 48*zeta^6 + 36*zeta^4 + 
12*zeta^3 - 24*zeta - 12)*q^875 + (12*zeta^11 + 12*zeta^4 + 12*zeta^3)*q^876 + 
(-38*zeta^8 - 38*zeta^6 - 38*zeta)*q^877 + (-16*zeta^11 + 32*zeta^9 - 16*zeta^8 
+ 16*zeta^6 - 16*zeta^4 + 16*zeta^3 - 16*zeta + 16)*q^879 + (-16*zeta^8 - 
16*zeta^6 - 16*zeta)*q^880 + (24*zeta^11 + 24*zeta^4 + 24*zeta^3)*q^881 + 
(-20*zeta^11 - 24*zeta^9 + 32*zeta^8 + 8*zeta^6 - 20*zeta^4 - 44*zeta^3 + 
32*zeta - 12)*q^882 + (-13*zeta^11 - 13*zeta^4 - 13*zeta^3)*q^883 + (-48*zeta^11
+ 96*zeta^9 - 48*zeta^8 + 48*zeta^6 - 48*zeta^4 + 48*zeta^3 - 48*zeta + 
48)*q^885 + (24*zeta^11 - 48*zeta^9 + 24*zeta^8 - 24*zeta^6 + 24*zeta^4 - 
24*zeta^3 + 24*zeta - 24)*q^886 + (-34*zeta^8 - 34*zeta^6 - 34*zeta)*q^887 + 
(-45*zeta^11 + 30*zeta^9 + 30*zeta^8 + 60*zeta^6 - 45*zeta^4 - 15*zeta^3 + 
30*zeta + 15)*q^889 + (-64*zeta^11 - 64*zeta^4 - 64*zeta^3)*q^890 + (4*zeta^8 + 
4*zeta^6 + 4*zeta)*q^891 + (32*zeta^11 - 64*zeta^9 + 32*zeta^8 - 32*zeta^6 + 
32*zeta^4 - 32*zeta^3 + 32*zeta - 32)*q^892 + (-6*zeta^11 + 12*zeta^9 - 6*zeta^8
+ 6*zeta^6 - 6*zeta^4 + 6*zeta^3 - 6*zeta + 6)*q^893 + (48*zeta^8 + 48*zeta^6 + 
48*zeta)*q^894 + (-4*zeta^11 - 4*zeta^4 - 4*zeta^3)*q^895 + (-36*zeta^8 - 
36*zeta^6 - 36*zeta)*q^898 + (36*zeta^11 - 72*zeta^9 + 36*zeta^8 - 36*zeta^6 + 
36*zeta^4 - 36*zeta^3 + 36*zeta - 36)*q^899 + (4*zeta^11 - 8*zeta^9 + 4*zeta^8 -
4*zeta^6 + 4*zeta^4 - 4*zeta^3 + 4*zeta - 4)*q^900 + (40*zeta^11 + 40*zeta^4 + 
40*zeta^3)*q^902 + (10*zeta^11 + 40*zeta^9 - 30*zeta^8 + 10*zeta^6 + 10*zeta^4 +
50*zeta^3 - 30*zeta + 20)*q^903 + (-26*zeta^8 - 26*zeta^6 - 26*zeta)*q^905 + 
(64*zeta^11 - 128*zeta^9 + 64*zeta^8 - 64*zeta^6 + 64*zeta^4 - 64*zeta^3 + 
64*zeta - 64)*q^906 + (-37*zeta^11 + 74*zeta^9 - 37*zeta^8 + 37*zeta^6 - 
37*zeta^4 + 37*zeta^3 - 37*zeta + 37)*q^907 + (36*zeta^8 + 36*zeta^6 + 
36*zeta)*q^908 + (-4*zeta^11 - 4*zeta^4 - 4*zeta^3)*q^909 + (4*zeta^11 + 
16*zeta^9 - 12*zeta^8 + 4*zeta^6 + 4*zeta^4 + 20*zeta^3 - 12*zeta + 8)*q^910 + 
(-24*zeta^11 - 24*zeta^4 - 24*zeta^3)*q^911 + (8*zeta^8 + 8*zeta^6 + 
8*zeta)*q^912 + (-12*zeta^11 + 24*zeta^9 - 12*zeta^8 + 12*zeta^6 - 12*zeta^4 + 
12*zeta^3 - 12*zeta + 12)*q^913 + (-22*zeta^11 + 44*zeta^9 - 22*zeta^8 + 
22*zeta^6 - 22*zeta^4 + 22*zeta^3 - 22*zeta + 22)*q^914 + (40*zeta^8 + 40*zeta^6
+ 40*zeta)*q^915 + (-38*zeta^11 - 38*zeta^4 - 38*zeta^3)*q^916 + (28*zeta^11 - 
84*zeta^9 + 14*zeta^8 - 70*zeta^6 + 28*zeta^4 - 56*zeta^3 + 14*zeta - 42)*q^917 
+ (23*zeta^8 + 23*zeta^6 + 23*zeta)*q^919 + (34*zeta^11 - 68*zeta^9 + 34*zeta^8 
- 34*zeta^6 + 34*zeta^4 - 34*zeta^3 + 34*zeta - 34)*q^921 + (40*zeta^8 + 
40*zeta^6 + 40*zeta)*q^922 + (-6*zeta^11 - 6*zeta^4 - 6*zeta^3)*q^923 + 
(24*zeta^11 - 16*zeta^9 - 16*zeta^8 - 32*zeta^6 + 24*zeta^4 + 8*zeta^3 - 16*zeta
- 8)*q^924 + (-3*zeta^11 - 3*zeta^4 - 3*zeta^3)*q^925 + (-34*zeta^8 - 34*zeta^6 
- 34*zeta)*q^926 + (14*zeta^11 - 28*zeta^9 + 14*zeta^8 - 14*zeta^6 + 14*zeta^4 -
14*zeta^3 + 14*zeta - 14)*q^927 + (-32*zeta^11 + 64*zeta^9 - 32*zeta^8 + 
32*zeta^6 - 32*zeta^4 + 32*zeta^3 - 32*zeta + 32)*q^928 + (14*zeta^8 + 14*zeta^6
+ 14*zeta)*q^929 + (72*zeta^11 + 72*zeta^4 + 72*zeta^3)*q^930 + (3*zeta^11 - 
16*zeta^9 + 5*zeta^8 - 11*zeta^6 + 3*zeta^4 - 13*zeta^3 + 5*zeta - 8)*q^931 + 
(12*zeta^11 + 12*zeta^4 + 12*zeta^3)*q^932 + (12*zeta^8 + 12*zeta^6 + 
12*zeta)*q^933 + (12*zeta^11 - 24*zeta^9 + 12*zeta^8 - 12*zeta^6 + 12*zeta^4 - 
12*zeta^3 + 12*zeta - 12)*q^934 + (15*zeta^11 + 15*zeta^4 + 15*zeta^3)*q^937 + 
(-30*zeta^11 + 20*zeta^9 + 20*zeta^8 + 40*zeta^6 - 30*zeta^4 - 10*zeta^3 + 
20*zeta + 10)*q^938 + (2*zeta^11 + 2*zeta^4 + 2*zeta^3)*q^939 + (24*zeta^8 + 
24*zeta^6 + 24*zeta)*q^940 + (-4*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 - 
4*zeta^4 + 4*zeta^3 - 4*zeta + 4)*q^941 + (56*zeta^11 - 112*zeta^9 + 56*zeta^8 -
56*zeta^6 + 56*zeta^4 - 56*zeta^3 + 56*zeta - 56)*q^942 + (48*zeta^11 + 
48*zeta^4 + 48*zeta^3)*q^944 + (-8*zeta^11 + 24*zeta^9 - 4*zeta^8 + 20*zeta^6 - 
8*zeta^4 + 16*zeta^3 - 4*zeta + 12)*q^945 + (-20*zeta^11 - 20*zeta^4 - 
20*zeta^3)*q^946 + (-10*zeta^8 - 10*zeta^6 - 10*zeta)*q^947 + (4*zeta^11 - 
8*zeta^9 + 4*zeta^8 - 4*zeta^6 + 4*zeta^4 - 4*zeta^3 + 4*zeta - 4)*q^948 + 
(-3*zeta^11 + 6*zeta^9 - 3*zeta^8 + 3*zeta^6 - 3*zeta^4 + 3*zeta^3 - 3*zeta + 
3)*q^949 + (-2*zeta^8 - 2*zeta^6 - 2*zeta)*q^950 + (-48*zeta^11 - 48*zeta^4 - 
48*zeta^3)*q^951 + (44*zeta^11 + 44*zeta^4 + 44*zeta^3)*q^953 + (-48*zeta^8 - 
48*zeta^6 - 48*zeta)*q^954 + (-20*zeta^11 + 40*zeta^9 - 20*zeta^8 + 20*zeta^6 - 
20*zeta^4 + 20*zeta^3 - 20*zeta + 20)*q^955 + (12*zeta^11 - 24*zeta^9 + 
12*zeta^8 - 12*zeta^6 + 12*zeta^4 - 12*zeta^3 + 12*zeta - 12)*q^956 + (16*zeta^8
+ 16*zeta^6 + 16*zeta)*q^957 + (-56*zeta^11 - 56*zeta^4 - 56*zeta^3)*q^958 + 
(12*zeta^11 + 48*zeta^9 - 36*zeta^8 + 12*zeta^6 + 12*zeta^4 + 60*zeta^3 - 
36*zeta + 24)*q^959 + (-32*zeta^11 - 32*zeta^4 - 32*zeta^3)*q^960 + (50*zeta^8 +
50*zeta^6 + 50*zeta)*q^961 + (6*zeta^11 - 12*zeta^9 + 6*zeta^8 - 6*zeta^6 + 
6*zeta^4 - 6*zeta^3 + 6*zeta - 6)*q^962 + (16*zeta^11 - 32*zeta^9 + 16*zeta^8 - 
16*zeta^6 + 16*zeta^4 - 16*zeta^3 + 16*zeta - 16)*q^963 + (28*zeta^8 + 28*zeta^6
+ 28*zeta)*q^964 + (-22*zeta^11 - 22*zeta^4 - 22*zeta^3)*q^965 + (19*zeta^11 + 
19*zeta^4 + 19*zeta^3)*q^967 + (24*zeta^11 - 48*zeta^9 + 24*zeta^8 - 24*zeta^6 +
24*zeta^4 - 24*zeta^3 + 24*zeta - 24)*q^970 + (36*zeta^8 + 36*zeta^6 + 
36*zeta)*q^971 + (-4*zeta^11 - 4*zeta^4 - 4*zeta^3)*q^972 + (-9*zeta^11 + 
6*zeta^9 + 6*zeta^8 + 12*zeta^6 - 9*zeta^4 - 3*zeta^3 + 6*zeta + 3)*q^973 + 
(62*zeta^11 + 62*zeta^4 + 62*zeta^3)*q^974 + (2*zeta^8 + 2*zeta^6 + 
2*zeta)*q^975 + (-40*zeta^11 + 80*zeta^9 - 40*zeta^8 + 40*zeta^6 - 40*zeta^4 + 
40*zeta^3 - 40*zeta + 40)*q^976 + (-18*zeta^11 + 36*zeta^9 - 18*zeta^8 + 
18*zeta^6 - 18*zeta^4 + 18*zeta^3 - 18*zeta + 18)*q^977 + (-16*zeta^8 - 
16*zeta^6 - 16*zeta)*q^978 + (-32*zeta^11 - 32*zeta^4 - 32*zeta^3)*q^979 + 
(32*zeta^11 - 40*zeta^9 - 12*zeta^8 - 52*zeta^6 + 32*zeta^4 - 8*zeta^3 - 12*zeta
- 20)*q^980 + (-18*zeta^11 - 18*zeta^4 - 18*zeta^3)*q^981 + (-56*zeta^8 - 
56*zeta^6 - 56*zeta)*q^982 + (36*zeta^11 - 72*zeta^9 + 36*zeta^8 - 36*zeta^6 + 
36*zeta^4 - 36*zeta^3 + 36*zeta - 36)*q^983 + (-32*zeta^8 - 32*zeta^6 - 
32*zeta)*q^985 + (36*zeta^11 - 24*zeta^9 - 24*zeta^8 - 48*zeta^6 + 36*zeta^4 + 
12*zeta^3 - 24*zeta - 12)*q^987 + (2*zeta^11 + 2*zeta^4 + 2*zeta^3)*q^988 + 
(-16*zeta^11 + 32*zeta^9 - 16*zeta^8 + 16*zeta^6 - 16*zeta^4 + 16*zeta^3 - 
16*zeta + 16)*q^990 + (17*zeta^11 - 34*zeta^9 + 17*zeta^8 - 17*zeta^6 + 
17*zeta^4 - 17*zeta^3 + 17*zeta - 17)*q^991 + (-72*zeta^8 - 72*zeta^6 - 
72*zeta)*q^992 + (50*zeta^11 + 50*zeta^4 + 50*zeta^3)*q^993 + (24*zeta^11 - 
72*zeta^9 + 12*zeta^8 - 60*zeta^6 + 24*zeta^4 - 48*zeta^3 + 12*zeta - 36)*q^994 
+ (-24*zeta^8 - 24*zeta^6 - 24*zeta)*q^996 + (19*zeta^11 - 38*zeta^9 + 19*zeta^8
- 19*zeta^6 + 19*zeta^4 - 19*zeta^3 + 19*zeta - 19)*q^997 + (74*zeta^11 - 
148*zeta^9 + 74*zeta^8 - 74*zeta^6 + 74*zeta^4 - 74*zeta^3 + 74*zeta - 74)*q^998
+ (-6*zeta^8 - 6*zeta^6 - 6*zeta)*q^999 + (2*zeta^11 + 8*zeta^9 - 6*zeta^8 + 
2*zeta^6 + 2*zeta^4 + 10*zeta^3 - 6*zeta + 4)*q^1001 + (56*zeta^11 + 56*zeta^4 +
56*zeta^3)*q^1002 + (-16*zeta^11 + 32*zeta^9 - 16*zeta^8 + 16*zeta^6 - 16*zeta^4
+ 16*zeta^3 - 16*zeta + 16)*q^1004 + (-20*zeta^11 + 40*zeta^9 - 20*zeta^8 + 
20*zeta^6 - 20*zeta^4 + 20*zeta^3 - 20*zeta + 20)*q^1005 + (-84*zeta^8 - 
84*zeta^6 - 84*zeta)*q^1006 + (12*zeta^11 + 12*zeta^4 + 12*zeta^3)*q^1007 + 
(-8*zeta^11 - 32*zeta^9 + 24*zeta^8 - 8*zeta^6 - 8*zeta^4 - 40*zeta^3 + 24*zeta 
- 16)*q^1008 + (61*zeta^11 + 61*zeta^4 + 61*zeta^3)*q^1009 + (-8*zeta^8 - 
8*zeta^6 - 8*zeta)*q^1010 + (-26*zeta^11 + 52*zeta^9 - 26*zeta^8 + 26*zeta^6 - 
26*zeta^4 + 26*zeta^3 - 26*zeta + 26)*q^1011 + (32*zeta^8 + 32*zeta^6 + 
32*zeta)*q^1013 + (48*zeta^11 + 48*zeta^4 + 48*zeta^3)*q^1014 + (16*zeta^11 - 
48*zeta^9 + 8*zeta^8 - 40*zeta^6 + 16*zeta^4 - 32*zeta^3 + 8*zeta - 24)*q^1015 +
(-20*zeta^8 - 20*zeta^6 - 20*zeta)*q^1017 + (4*zeta^11 - 8*zeta^9 + 4*zeta^8 - 
4*zeta^6 + 4*zeta^4 - 4*zeta^3 + 4*zeta - 4)*q^1018 + (48*zeta^11 - 96*zeta^9 + 
48*zeta^8 - 48*zeta^6 + 48*zeta^4 - 48*zeta^3 + 48*zeta - 48)*q^1019 + 
(-18*zeta^11 - 18*zeta^4 - 18*zeta^3)*q^1021 + (-18*zeta^11 + 12*zeta^9 + 
12*zeta^8 + 24*zeta^6 - 18*zeta^4 - 6*zeta^3 + 12*zeta + 6)*q^1022 + (36*zeta^11
+ 36*zeta^4 + 36*zeta^3)*q^1023 + (32*zeta^8 + 32*zeta^6 + 32*zeta)*q^1024 + 
(10*zeta^11 - 20*zeta^9 + 10*zeta^8 - 10*zeta^6 + 10*zeta^4 - 10*zeta^3 + 
10*zeta - 10)*q^1025 + (-4*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 - 4*zeta^4 +
4*zeta^3 - 4*zeta + 4)*q^1026 + (-zeta^8 - zeta^6 - zeta)*q^1027 + (52*zeta^11 +
52*zeta^4 + 52*zeta^3)*q^1028 + (36*zeta^11 + 4*zeta^9 - 38*zeta^8 - 34*zeta^6 +
36*zeta^4 + 40*zeta^3 - 38*zeta + 2)*q^1029 + (28*zeta^11 + 28*zeta^4 + 
28*zeta^3)*q^1030 + (60*zeta^8 + 60*zeta^6 + 60*zeta)*q^1031 + (5*zeta^11 - 
10*zeta^9 + 5*zeta^8 - 5*zeta^6 + 5*zeta^4 - 5*zeta^3 + 5*zeta - 5)*q^1033 + 
(24*zeta^8 + 24*zeta^6 + 24*zeta)*q^1034 + (18*zeta^11 - 12*zeta^9 - 12*zeta^8 -
24*zeta^6 + 18*zeta^4 + 6*zeta^3 - 12*zeta - 6)*q^1036 + (-32*zeta^8 - 32*zeta^6
- 32*zeta)*q^1038 + (-19*zeta^11 + 38*zeta^9 - 19*zeta^8 + 19*zeta^6 - 19*zeta^4
+ 19*zeta^3 - 19*zeta + 19)*q^1039 + (8*zeta^11 - 16*zeta^9 + 8*zeta^8 - 
8*zeta^6 + 8*zeta^4 - 8*zeta^3 + 8*zeta - 8)*q^1040 + (-64*zeta^8 - 64*zeta^6 - 
64*zeta)*q^1041 + (24*zeta^11 + 24*zeta^4 + 24*zeta^3)*q^1042 + (24*zeta^11 - 
72*zeta^9 + 12*zeta^8 - 60*zeta^6 + 24*zeta^4 - 48*zeta^3 + 12*zeta - 36)*q^1043
+ (-16*zeta^11 - 16*zeta^4 - 16*zeta^3)*q^1044 + (4*zeta^8 + 4*zeta^6 + 
4*zeta)*q^1045 + (62*zeta^11 - 124*zeta^9 + 62*zeta^8 - 62*zeta^6 + 62*zeta^4 - 
62*zeta^3 + 62*zeta - 62)*q^1046 + (28*zeta^11 - 56*zeta^9 + 28*zeta^8 - 
28*zeta^6 + 28*zeta^4 - 28*zeta^3 + 28*zeta - 28)*q^1047 + (-16*zeta^11 - 
16*zeta^4 - 16*zeta^3)*q^1049 + (-4*zeta^11 - 16*zeta^9 + 12*zeta^8 - 4*zeta^6 -
4*zeta^4 - 20*zeta^3 + 12*zeta - 8)*q^1050 + (-53*zeta^11 - 53*zeta^4 - 
53*zeta^3)*q^1051 + (8*zeta^8 + 8*zeta^6 + 8*zeta)*q^1052 + (-2*zeta^11 + 
4*zeta^9 - 2*zeta^8 + 2*zeta^6 - 2*zeta^4 + 2*zeta^3 - 2*zeta + 2)*q^1053 + 
(-8*zeta^8 - 8*zeta^6 - 8*zeta)*q^1055 + (-32*zeta^11 - 32*zeta^4 - 
32*zeta^3)*q^1056 + (16*zeta^11 + 64*zeta^9 - 48*zeta^8 + 16*zeta^6 + 16*zeta^4 
+ 80*zeta^3 - 48*zeta + 32)*q^1057 + (-46*zeta^11 - 46*zeta^4 - 
46*zeta^3)*q^1058 + (-68*zeta^8 - 68*zeta^6 - 68*zeta)*q^1059 + (-48*zeta^11 + 
96*zeta^9 - 48*zeta^8 + 48*zeta^6 - 48*zeta^4 + 48*zeta^3 - 48*zeta + 48)*q^1060
+ (10*zeta^11 - 20*zeta^9 + 10*zeta^8 - 10*zeta^6 + 10*zeta^4 - 10*zeta^3 + 
10*zeta - 10)*q^1061 + (48*zeta^8 + 48*zeta^6 + 48*zeta)*q^1062 + (24*zeta^11 + 
24*zeta^4 + 24*zeta^3)*q^1063 + (-24*zeta^11 - 24*zeta^4 - 24*zeta^3)*q^1065 + 
(-20*zeta^8 - 20*zeta^6 - 20*zeta)*q^1066 + (12*zeta^11 - 24*zeta^9 + 12*zeta^8 
- 12*zeta^6 + 12*zeta^4 - 12*zeta^3 + 12*zeta - 12)*q^1067 + (-64*zeta^11 + 
128*zeta^9 - 64*zeta^8 + 64*zeta^6 - 64*zeta^4 + 64*zeta^3 - 64*zeta + 
64)*q^1068 + (31*zeta^8 + 31*zeta^6 + 31*zeta)*q^1069 + (32*zeta^11 + 32*zeta^4 
+ 32*zeta^3)*q^1070 + (20*zeta^11 + 20*zeta^4 + 20*zeta^3)*q^1072 + (12*zeta^8 +
12*zeta^6 + 12*zeta)*q^1073 + (-8*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 
8*zeta^4 + 8*zeta^3 - 8*zeta + 8)*q^1074 + (-5*zeta^11 + 10*zeta^9 - 5*zeta^8 + 
5*zeta^6 - 5*zeta^4 + 5*zeta^3 - 5*zeta + 5)*q^1075 + (12*zeta^8 + 12*zeta^6 + 
12*zeta)*q^1076 + (-40*zeta^11 - 40*zeta^4 - 40*zeta^3)*q^1077 + (32*zeta^11 - 
40*zeta^9 - 12*zeta^8 - 52*zeta^6 + 32*zeta^4 - 8*zeta^3 - 12*zeta - 20)*q^1078 
+ (6*zeta^11 + 6*zeta^4 + 6*zeta^3)*q^1079 + (-38*zeta^11 + 76*zeta^9 - 
38*zeta^8 + 38*zeta^6 - 38*zeta^4 + 38*zeta^3 - 38*zeta + 38)*q^1082 + 
(36*zeta^8 + 36*zeta^6 + 36*zeta)*q^1083 + (32*zeta^11 + 32*zeta^4 + 
32*zeta^3)*q^1084 + (-54*zeta^11 + 36*zeta^9 + 36*zeta^8 + 72*zeta^6 - 54*zeta^4
- 18*zeta^3 + 36*zeta + 18)*q^1085 + (-52*zeta^11 - 52*zeta^4 - 
52*zeta^3)*q^1086 + (-19*zeta^8 - 19*zeta^6 - 19*zeta)*q^1087 + (14*zeta^11 - 
28*zeta^9 + 14*zeta^8 - 14*zeta^6 + 14*zeta^4 - 14*zeta^3 + 14*zeta - 14)*q^1089
+ (-36*zeta^8 - 36*zeta^6 - 36*zeta)*q^1090 + (8*zeta^11 - 24*zeta^9 + 4*zeta^8 
- 20*zeta^6 + 8*zeta^4 - 16*zeta^3 + 4*zeta - 12)*q^1092 + (41*zeta^11 + 
41*zeta^4 + 41*zeta^3)*q^1093 + (56*zeta^8 + 56*zeta^6 + 56*zeta)*q^1094 + 
(-12*zeta^11 + 24*zeta^9 - 12*zeta^8 + 12*zeta^6 - 12*zeta^4 + 12*zeta^3 - 
12*zeta + 12)*q^1095 + (-28*zeta^8 - 28*zeta^6 - 28*zeta)*q^1097 + (-40*zeta^11 
- 40*zeta^4 - 40*zeta^3)*q^1098 + (14*zeta^11 + 56*zeta^9 - 42*zeta^8 + 
14*zeta^6 + 14*zeta^4 + 70*zeta^3 - 42*zeta + 28)*q^1099 + (4*zeta^11 + 4*zeta^4
+ 4*zeta^3)*q^1100 + (18*zeta^8 + 18*zeta^6 + 18*zeta)*q^1101 + (8*zeta^11 - 
16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 8*zeta^4 - 8*zeta^3 + 8*zeta - 8)*q^1102 + 
(-54*zeta^11 + 108*zeta^9 - 54*zeta^8 + 54*zeta^6 - 54*zeta^4 + 54*zeta^3 - 
54*zeta + 54)*q^1103 + (2*zeta^11 + 8*zeta^9 - 6*zeta^8 + 2*zeta^6 + 2*zeta^4 + 
10*zeta^3 - 6*zeta + 4)*q^1106 + (20*zeta^11 + 20*zeta^4 + 20*zeta^3)*q^1107 + 
(26*zeta^8 + 26*zeta^6 + 26*zeta)*q^1108 + (-52*zeta^11 + 104*zeta^9 - 52*zeta^8
+ 52*zeta^6 - 52*zeta^4 + 52*zeta^3 - 52*zeta + 52)*q^1109 + (24*zeta^11 - 
48*zeta^9 + 24*zeta^8 - 24*zeta^6 + 24*zeta^4 - 24*zeta^3 + 24*zeta - 24)*q^1110
+ (-4*zeta^8 - 4*zeta^6 - 4*zeta)*q^1111 + (48*zeta^11 - 144*zeta^9 + 24*zeta^8 
- 120*zeta^6 + 48*zeta^4 - 96*zeta^3 + 24*zeta - 72)*q^1113 + (-4*zeta^11 - 
4*zeta^4 - 4*zeta^3)*q^1114 + (-32*zeta^8 - 32*zeta^6 - 32*zeta)*q^1115 + 
(-36*zeta^11 + 72*zeta^9 - 36*zeta^8 + 36*zeta^6 - 36*zeta^4 + 36*zeta^3 - 
36*zeta + 36)*q^1116 + (46*zeta^11 - 92*zeta^9 + 46*zeta^8 - 46*zeta^6 + 
46*zeta^4 - 46*zeta^3 + 46*zeta - 46)*q^1117 + (10*zeta^8 + 10*zeta^6 + 
10*zeta)*q^1118 + (-46*zeta^11 - 46*zeta^4 - 46*zeta^3)*q^1119 + (48*zeta^11 - 
32*zeta^9 - 32*zeta^8 - 64*zeta^6 + 48*zeta^4 + 16*zeta^3 - 32*zeta - 16)*q^1120
+ (-12*zeta^11 - 12*zeta^4 - 12*zeta^3)*q^1121 + (-17*zeta^11 + 34*zeta^9 - 
17*zeta^8 + 17*zeta^6 - 17*zeta^4 + 17*zeta^3 - 17*zeta + 17)*q^1123 + 
(-8*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 8*zeta^4 + 8*zeta^3 - 8*zeta + 
8)*q^1124 + (-24*zeta^8 - 24*zeta^6 - 24*zeta)*q^1125 + (-52*zeta^11 - 52*zeta^4
- 52*zeta^3)*q^1126 + (-23*zeta^8 - 23*zeta^6 - 23*zeta)*q^1129 + (-40*zeta^11 +
80*zeta^9 - 40*zeta^8 + 40*zeta^6 - 40*zeta^4 + 40*zeta^3 - 40*zeta + 40)*q^1130
+ (-8*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 8*zeta^4 + 8*zeta^3 - 8*zeta +
8)*q^1131 + (-22*zeta^8 - 22*zeta^6 - 22*zeta)*q^1132 + (14*zeta^11 + 14*zeta^4 
+ 14*zeta^3)*q^1133 + (-12*zeta^11 + 8*zeta^9 + 8*zeta^8 + 16*zeta^6 - 12*zeta^4
- 4*zeta^3 + 8*zeta + 4)*q^1134 + (-36*zeta^11 - 36*zeta^4 - 36*zeta^3)*q^1135 +
(24*zeta^8 + 24*zeta^6 + 24*zeta)*q^1136 + (-6*zeta^11 + 12*zeta^9 - 6*zeta^8 + 
6*zeta^6 - 6*zeta^4 + 6*zeta^3 - 6*zeta + 6)*q^1137 + (-52*zeta^11 + 104*zeta^9 
- 52*zeta^8 + 52*zeta^6 - 52*zeta^4 + 52*zeta^3 - 52*zeta + 52)*q^1138 + 
(8*zeta^11 + 8*zeta^4 + 8*zeta^3)*q^1140 + (-8*zeta^11 + 24*zeta^9 - 4*zeta^8 + 
20*zeta^6 - 8*zeta^4 + 16*zeta^3 - 4*zeta + 12)*q^1141 + (-38*zeta^11 - 
38*zeta^4 - 38*zeta^3)*q^1142 + (30*zeta^8 + 30*zeta^6 + 30*zeta)*q^1143 + 
(38*zeta^11 - 76*zeta^9 + 38*zeta^8 - 38*zeta^6 + 38*zeta^4 - 38*zeta^3 + 
38*zeta - 38)*q^1145 + (-40*zeta^8 - 40*zeta^6 - 40*zeta)*q^1146 + (27*zeta^11 +
27*zeta^4 + 27*zeta^3)*q^1147 + (20*zeta^11 + 80*zeta^9 - 60*zeta^8 + 20*zeta^6 
+ 20*zeta^4 + 100*zeta^3 - 60*zeta + 40)*q^1148 + (24*zeta^11 + 24*zeta^4 + 
24*zeta^3)*q^1149 + (-38*zeta^11 + 76*zeta^9 - 38*zeta^8 + 38*zeta^6 - 38*zeta^4
+ 38*zeta^3 - 38*zeta + 38)*q^1151 + (49*zeta^8 + 49*zeta^6 + 49*zeta)*q^1153 + 
(-34*zeta^11 - 34*zeta^4 - 34*zeta^3)*q^1154 + (8*zeta^11 + 32*zeta^9 - 
24*zeta^8 + 8*zeta^6 + 8*zeta^4 + 40*zeta^3 - 24*zeta + 16)*q^1155 + 
(-34*zeta^11 - 34*zeta^4 - 34*zeta^3)*q^1156 + (16*zeta^8 + 16*zeta^6 + 
16*zeta)*q^1157 + (-44*zeta^11 + 88*zeta^9 - 44*zeta^8 + 44*zeta^6 - 44*zeta^4 +
44*zeta^3 - 44*zeta + 44)*q^1158 + (10*zeta^11 - 20*zeta^9 + 10*zeta^8 - 
10*zeta^6 + 10*zeta^4 - 10*zeta^3 + 10*zeta - 10)*q^1159 + (-10*zeta^11 - 
10*zeta^4 - 10*zeta^3)*q^1161 + (-24*zeta^11 + 72*zeta^9 - 12*zeta^8 + 60*zeta^6
- 24*zeta^4 + 48*zeta^3 - 12*zeta + 36)*q^1162 + (-6*zeta^11 - 6*zeta^4 - 
6*zeta^3)*q^1163 + (24*zeta^8 + 24*zeta^6 + 24*zeta)*q^1164 + (-12*zeta^11 + 
24*zeta^9 - 12*zeta^8 + 12*zeta^6 - 12*zeta^4 + 12*zeta^3 - 12*zeta + 12)*q^1165
+ (-48*zeta^11 + 96*zeta^9 - 48*zeta^8 + 48*zeta^6 - 48*zeta^4 + 48*zeta^3 - 
48*zeta + 48)*q^1166 + (12*zeta^8 + 12*zeta^6 + 12*zeta)*q^1167 + (12*zeta^11 + 
12*zeta^4 + 12*zeta^3)*q^1168 + (-42*zeta^11 + 28*zeta^9 + 28*zeta^8 + 56*zeta^6
- 42*zeta^4 - 14*zeta^3 + 28*zeta + 14)*q^1169 + (8*zeta^11 + 8*zeta^4 + 
8*zeta^3)*q^1170 + (-40*zeta^8 - 40*zeta^6 - 40*zeta)*q^1171 + (16*zeta^11 - 
32*zeta^9 + 16*zeta^8 - 16*zeta^6 + 16*zeta^4 - 16*zeta^3 + 16*zeta - 16)*q^1172
+ (32*zeta^8 + 32*zeta^6 + 32*zeta)*q^1174 + (6*zeta^11 + 6*zeta^4 + 
6*zeta^3)*q^1175 + (16*zeta^11 + 16*zeta^4 + 16*zeta^3)*q^1177 + (18*zeta^8 + 
18*zeta^6 + 18*zeta)*q^1178 + (28*zeta^11 - 56*zeta^9 + 28*zeta^8 - 28*zeta^6 + 
28*zeta^4 - 28*zeta^3 + 28*zeta - 28)*q^1179 + (48*zeta^11 - 96*zeta^9 + 
48*zeta^8 - 48*zeta^6 + 48*zeta^4 - 48*zeta^3 + 48*zeta - 48)*q^1180 + 
(-36*zeta^8 - 36*zeta^6 - 36*zeta)*q^1181 + (-64*zeta^11 - 64*zeta^4 - 
64*zeta^3)*q^1182 + (-36*zeta^11 + 24*zeta^9 + 24*zeta^8 + 48*zeta^6 - 36*zeta^4
- 12*zeta^3 + 24*zeta + 12)*q^1183 + (-24*zeta^11 - 24*zeta^4 - 
24*zeta^3)*q^1184 + (-4*zeta^8 - 4*zeta^6 - 4*zeta)*q^1185 + (-12*zeta^11 + 
24*zeta^9 - 12*zeta^8 + 12*zeta^6 - 12*zeta^4 + 12*zeta^3 - 12*zeta + 12)*q^1186
+ (52*zeta^11 - 104*zeta^9 + 52*zeta^8 - 52*zeta^6 + 52*zeta^4 - 52*zeta^3 + 
52*zeta - 52)*q^1187 + (8*zeta^8 + 8*zeta^6 + 8*zeta)*q^1188 + (-40*zeta^11 - 
40*zeta^4 - 40*zeta^3)*q^1189 + (18*zeta^11 + 18*zeta^4 + 18*zeta^3)*q^1191 + 
(-24*zeta^11 + 48*zeta^9 - 24*zeta^8 + 24*zeta^6 - 24*zeta^4 + 24*zeta^3 - 
24*zeta + 24)*q^1193 + (-12*zeta^8 - 12*zeta^6 - 12*zeta)*q^1195 + (2*zeta^11 + 
8*zeta^9 - 6*zeta^8 + 2*zeta^6 + 2*zeta^4 + 10*zeta^3 - 6*zeta + 4)*q^1197 + 
(24*zeta^11 + 24*zeta^4 + 24*zeta^3)*q^1198 + (-18*zeta^8 - 18*zeta^6 - 
18*zeta)*q^1199 + (-8*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 8*zeta^4 + 
8*zeta^3 - 8*zeta + 8)*q^1200 + (35*zeta^11 - 70*zeta^9 + 35*zeta^8 - 35*zeta^6 
+ 35*zeta^4 - 35*zeta^3 + 35*zeta - 35)*q^1201 + (-18*zeta^8 - 18*zeta^6 - 
18*zeta)*q^1202 + (72*zeta^11 + 72*zeta^4 + 72*zeta^3)*q^1203 + (-10*zeta^11 - 
40*zeta^9 + 30*zeta^8 - 10*zeta^6 - 10*zeta^4 - 50*zeta^3 + 30*zeta - 20)*q^1204
+ (-28*zeta^11 - 28*zeta^4 - 28*zeta^3)*q^1205 + (20*zeta^8 + 20*zeta^6 + 
20*zeta)*q^1206 + (-18*zeta^8 - 18*zeta^6 - 18*zeta)*q^1209 + (28*zeta^11 + 
28*zeta^4 + 28*zeta^3)*q^1210 + (-16*zeta^11 + 48*zeta^9 - 8*zeta^8 + 40*zeta^6 
- 16*zeta^4 + 32*zeta^3 - 8*zeta + 24)*q^1211 + (-8*zeta^11 - 8*zeta^4 - 
8*zeta^3)*q^1212 + (-18*zeta^8 - 18*zeta^6 - 18*zeta)*q^1213 + (46*zeta^11 - 
92*zeta^9 + 46*zeta^8 - 46*zeta^6 + 46*zeta^4 - 46*zeta^3 + 46*zeta - 46)*q^1214
+ (4*zeta^11 - 8*zeta^9 + 4*zeta^8 - 4*zeta^6 + 4*zeta^4 - 4*zeta^3 + 4*zeta - 
4)*q^1215 + (-8*zeta^8 - 8*zeta^6 - 8*zeta)*q^1216 + (-30*zeta^11 - 30*zeta^4 - 
30*zeta^3)*q^1217 + O(q^1218), (-zeta^11 + 2*zeta^9 + 2*zeta^6 - zeta^4 + zeta^3
+ 1)*q + (-2*zeta^11 + 2*zeta^9 - zeta^8 + zeta^6 - 2*zeta^4 - zeta + 1)*q^2 + 
(2*zeta^11 - 2*zeta^8 - 2*zeta^6 + 2*zeta^4 + 2*zeta^3 - 2*zeta)*q^3 + (zeta^11 
+ 3*zeta^8 + 3*zeta^6 + zeta^4 + zeta^3 + 3*zeta)*q^4 + (2*zeta^11 + 4*zeta^9 - 
2*zeta^8 + 2*zeta^6 + 2*zeta^4 + 6*zeta^3 - 2*zeta + 2)*q^5 + (-2*zeta^11 + 
4*zeta^9 - 4*zeta^8 - 2*zeta^4 + 2*zeta^3 - 4*zeta + 2)*q^6 + (zeta^11 - 
2*zeta^9 - 2*zeta^8 - 4*zeta^6 + zeta^4 - zeta^3 - 2*zeta - 1)*q^8 + (4*zeta^9 -
2*zeta^8 + 2*zeta^6 + 4*zeta^3 - 2*zeta + 2)*q^9 + (2*zeta^8 + 2*zeta^6 + 
2*zeta)*q^10 + (-2*zeta^11 + 2*zeta^8 + 2*zeta^6 - 2*zeta^4 - 2*zeta^3 + 
2*zeta)*q^11 + (8*zeta^11 - 4*zeta^9 + 2*zeta^8 - 2*zeta^6 + 8*zeta^4 + 4*zeta^3
+ 2*zeta - 2)*q^12 + (2*zeta^11 - 4*zeta^9 - 2*zeta^8 - 6*zeta^6 + 2*zeta^4 - 
2*zeta^3 - 2*zeta - 2)*q^13 + (8*zeta^11 - 16*zeta^9 + 4*zeta^8 - 12*zeta^6 + 
8*zeta^4 - 8*zeta^3 + 4*zeta - 8)*q^15 + (-6*zeta^9 + 3*zeta^8 - 3*zeta^6 - 
6*zeta^3 + 3*zeta - 3)*q^16 + (-2*zeta^11 - 4*zeta^8 - 4*zeta^6 - 2*zeta^4 - 
2*zeta^3 - 4*zeta)*q^17 + (2*zeta^11 + 2*zeta^8 + 2*zeta^6 + 2*zeta^4 + 2*zeta^3
+ 2*zeta)*q^18 + (-4*zeta^11 - 4*zeta^4 - 4*zeta^3)*q^19 + (-8*zeta^11 + 
16*zeta^9 - 6*zeta^8 + 10*zeta^6 - 8*zeta^4 + 8*zeta^3 - 6*zeta + 8)*q^20 + 
(2*zeta^11 - 4*zeta^9 + 4*zeta^8 + 2*zeta^4 - 2*zeta^3 + 4*zeta - 2)*q^22 + 
(8*zeta^11 + 4*zeta^9 - 2*zeta^8 + 2*zeta^6 + 8*zeta^4 + 12*zeta^3 - 2*zeta + 
2)*q^23 + (-6*zeta^11 + 2*zeta^8 + 2*zeta^6 - 6*zeta^4 - 6*zeta^3 + 2*zeta)*q^24
+ (zeta^11 - 9*zeta^8 - 9*zeta^6 + zeta^4 + zeta^3 - 9*zeta)*q^25 + (10*zeta^11 
- 12*zeta^9 + 6*zeta^8 - 6*zeta^6 + 10*zeta^4 - 2*zeta^3 + 6*zeta - 6)*q^26 + 
(-2*zeta^11 + 4*zeta^9 + 4*zeta^6 - 2*zeta^4 + 2*zeta^3 + 2)*q^27 + (8*zeta^11 -
16*zeta^9 + 4*zeta^8 - 12*zeta^6 + 8*zeta^4 - 8*zeta^3 + 4*zeta - 8)*q^29 + 
(4*zeta^11 + 4*zeta^4 + 4*zeta^3)*q^30 + (4*zeta^11 + 4*zeta^4 + 4*zeta^3)*q^31 
+ (3*zeta^11 - 5*zeta^8 - 5*zeta^6 + 3*zeta^4 + 3*zeta^3 - 5*zeta)*q^32 + 
(8*zeta^9 - 4*zeta^8 + 4*zeta^6 + 8*zeta^3 - 4*zeta + 4)*q^33 + (2*zeta^11 - 
4*zeta^9 + 10*zeta^8 + 6*zeta^6 + 2*zeta^4 - 2*zeta^3 + 10*zeta - 2)*q^34 + 
(-6*zeta^11 + 12*zeta^9 - 8*zeta^8 + 4*zeta^6 - 6*zeta^4 + 6*zeta^3 - 8*zeta + 
6)*q^36 + (8*zeta^9 - 4*zeta^8 + 4*zeta^6 + 8*zeta^3 - 4*zeta + 4)*q^37 + 
(4*zeta^11 + 4*zeta^4 + 4*zeta^3)*q^38 + (-8*zeta^11 + 4*zeta^8 + 4*zeta^6 - 
8*zeta^4 - 8*zeta^3 + 4*zeta)*q^39 + (-2*zeta^11 - 8*zeta^9 + 4*zeta^8 - 
4*zeta^6 - 2*zeta^4 - 10*zeta^3 + 4*zeta - 4)*q^40 + (8*zeta^11 - 16*zeta^9 + 
6*zeta^8 - 10*zeta^6 + 8*zeta^4 - 8*zeta^3 + 6*zeta - 8)*q^41 + (-8*zeta^11 + 
16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 8*zeta^4 + 8*zeta^3 - 8*zeta + 8)*q^43 + 
(-8*zeta^11 + 4*zeta^9 - 2*zeta^8 + 2*zeta^6 - 8*zeta^4 - 4*zeta^3 - 2*zeta + 
2)*q^44 + (4*zeta^11 - 8*zeta^8 - 8*zeta^6 + 4*zeta^4 + 4*zeta^3 - 8*zeta)*q^45 
+ (-6*zeta^11 + 2*zeta^8 + 2*zeta^6 - 6*zeta^4 - 6*zeta^3 + 2*zeta)*q^46 + 
(-4*zeta^11 - 4*zeta^4 - 4*zeta^3)*q^47 + (-6*zeta^11 + 12*zeta^9 + 12*zeta^6 - 
6*zeta^4 + 6*zeta^3 + 6)*q^48 + (-zeta^11 + 2*zeta^9 + 6*zeta^8 + 8*zeta^6 - 
zeta^4 + zeta^3 + 6*zeta + 1)*q^50 + (-12*zeta^11 + 8*zeta^9 - 4*zeta^8 + 
4*zeta^6 - 12*zeta^4 - 4*zeta^3 - 4*zeta + 4)*q^51 + (-8*zeta^11 - 10*zeta^8 - 
10*zeta^6 - 8*zeta^4 - 8*zeta^3 - 10*zeta)*q^52 + (-2*zeta^11 + 2*zeta^8 + 
2*zeta^6 - 2*zeta^4 - 2*zeta^3 + 2*zeta)*q^53 + (-4*zeta^11 + 4*zeta^9 - 
2*zeta^8 + 2*zeta^6 - 4*zeta^4 - 2*zeta + 2)*q^54 + (-8*zeta^11 + 16*zeta^9 - 
4*zeta^8 + 12*zeta^6 - 8*zeta^4 + 8*zeta^3 - 4*zeta + 8)*q^55 + (-8*zeta^11 + 
16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 8*zeta^4 + 8*zeta^3 - 8*zeta + 8)*q^57 + 
(4*zeta^11 + 4*zeta^4 + 4*zeta^3)*q^58 + (4*zeta^11 + 4*zeta^4 + 4*zeta^3)*q^59 
+ (4*zeta^11 - 16*zeta^8 - 16*zeta^6 + 4*zeta^4 + 4*zeta^3 - 16*zeta)*q^60 + 
(6*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 + 6*zeta^4 + 22*zeta^3 - 8*zeta + 
8)*q^61 + (-4*zeta^11 + 8*zeta^9 - 12*zeta^8 - 4*zeta^6 - 4*zeta^4 + 4*zeta^3 - 
12*zeta + 4)*q^62 + (3*zeta^11 - 6*zeta^9 - 4*zeta^8 - 10*zeta^6 + 3*zeta^4 - 
3*zeta^3 - 4*zeta - 3)*q^64 + (-4*zeta^11 - 12*zeta^9 + 6*zeta^8 - 6*zeta^6 - 
4*zeta^4 - 16*zeta^3 + 6*zeta - 6)*q^65 + (4*zeta^11 + 4*zeta^8 + 4*zeta^6 + 
4*zeta^4 + 4*zeta^3 + 4*zeta)*q^66 + (8*zeta^8 + 8*zeta^6 + 8*zeta)*q^67 + 
(-14*zeta^11 + 28*zeta^9 - 14*zeta^8 + 14*zeta^6 - 14*zeta^4 + 14*zeta^3 - 
14*zeta + 14)*q^68 + (20*zeta^11 - 40*zeta^9 + 16*zeta^8 - 24*zeta^6 + 20*zeta^4
- 20*zeta^3 + 16*zeta - 20)*q^69 + (-14*zeta^11 + 28*zeta^9 - 16*zeta^8 + 
12*zeta^6 - 14*zeta^4 + 14*zeta^3 - 16*zeta + 14)*q^71 + (4*zeta^11 - 12*zeta^9 
+ 6*zeta^8 - 6*zeta^6 + 4*zeta^4 - 8*zeta^3 + 6*zeta - 6)*q^72 + (-4*zeta^11 + 
18*zeta^8 + 18*zeta^6 - 4*zeta^4 - 4*zeta^3 + 18*zeta)*q^73 + (4*zeta^11 + 
4*zeta^8 + 4*zeta^6 + 4*zeta^4 + 4*zeta^3 + 4*zeta)*q^74 + (-16*zeta^11 - 
4*zeta^9 + 2*zeta^8 - 2*zeta^6 - 16*zeta^4 - 20*zeta^3 + 2*zeta - 2)*q^75 + 
(4*zeta^11 - 8*zeta^9 - 4*zeta^8 - 12*zeta^6 + 4*zeta^4 - 4*zeta^3 - 4*zeta - 
4)*q^76 + (8*zeta^11 - 16*zeta^9 + 20*zeta^8 + 4*zeta^6 + 8*zeta^4 - 8*zeta^3 + 
20*zeta - 8)*q^78 + (-8*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 - 8*zeta^4 - 
24*zeta^3 + 8*zeta - 8)*q^79 + (-6*zeta^11 + 12*zeta^8 + 12*zeta^6 - 6*zeta^4 - 
6*zeta^3 + 12*zeta)*q^80 + (-2*zeta^11 + 2*zeta^8 + 2*zeta^6 - 2*zeta^4 - 
2*zeta^3 + 2*zeta)*q^81 + (-2*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 - 
2*zeta^4 + 6*zeta^3 - 4*zeta + 4)*q^82 + (12*zeta^11 - 24*zeta^9 + 16*zeta^8 - 
8*zeta^6 + 12*zeta^4 - 12*zeta^3 + 16*zeta - 12)*q^83 + (10*zeta^11 - 20*zeta^9 
+ 8*zeta^8 - 12*zeta^6 + 10*zeta^4 - 10*zeta^3 + 8*zeta - 10)*q^85 + (8*zeta^11 
- 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 8*zeta^4 - 8*zeta^3 + 8*zeta - 8)*q^86 + 
(-8*zeta^11 + 16*zeta^8 + 16*zeta^6 - 8*zeta^4 - 8*zeta^3 + 16*zeta)*q^87 + 
(6*zeta^11 - 2*zeta^8 - 2*zeta^6 + 6*zeta^4 + 6*zeta^3 - 2*zeta)*q^88 + 
(-6*zeta^11 - 20*zeta^9 + 10*zeta^8 - 10*zeta^6 - 6*zeta^4 - 26*zeta^3 + 10*zeta
- 10)*q^89 + (-4*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 - 4*zeta^4 + 4*zeta^3 
- 4*zeta + 4)*q^90 + (-14*zeta^11 + 28*zeta^9 + 28*zeta^6 - 14*zeta^4 + 
14*zeta^3 + 14)*q^92 + (8*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 8*zeta^4 -
8*zeta^3 + 8*zeta - 8)*q^93 + (4*zeta^11 + 4*zeta^4 + 4*zeta^3)*q^94 + 
(-4*zeta^11 + 12*zeta^8 + 12*zeta^6 - 4*zeta^4 - 4*zeta^3 + 12*zeta)*q^95 + 
(-4*zeta^11 - 12*zeta^9 + 6*zeta^8 - 6*zeta^6 - 4*zeta^4 - 16*zeta^3 + 6*zeta - 
6)*q^96 + (2*zeta^11 - 4*zeta^9 - 2*zeta^8 - 6*zeta^6 + 2*zeta^4 - 2*zeta^3 - 
2*zeta - 2)*q^97 + (-4*zeta^11 + 8*zeta^9 + 8*zeta^6 - 4*zeta^4 + 4*zeta^3 + 
4)*q^99 + (-4*zeta^11 + 30*zeta^9 - 15*zeta^8 + 15*zeta^6 - 4*zeta^4 + 26*zeta^3
- 15*zeta + 15)*q^100 + (-10*zeta^11 - 10*zeta^4 - 10*zeta^3)*q^101 + 
(16*zeta^11 + 4*zeta^8 + 4*zeta^6 + 16*zeta^4 + 16*zeta^3 + 4*zeta)*q^102 + 
(12*zeta^11 - 8*zeta^9 + 4*zeta^8 - 4*zeta^6 + 12*zeta^4 + 4*zeta^3 + 4*zeta - 
4)*q^103 + (14*zeta^8 + 14*zeta^6 + 14*zeta)*q^104 + (2*zeta^11 - 4*zeta^9 + 
4*zeta^8 + 2*zeta^4 - 2*zeta^3 + 4*zeta - 2)*q^106 + (-8*zeta^11 + 12*zeta^9 - 
6*zeta^8 + 6*zeta^6 - 8*zeta^4 + 4*zeta^3 - 6*zeta + 6)*q^107 + (2*zeta^11 + 
6*zeta^8 + 6*zeta^6 + 2*zeta^4 + 2*zeta^3 + 6*zeta)*q^108 + (8*zeta^8 + 8*zeta^6
+ 8*zeta)*q^109 + (-4*zeta^11 - 4*zeta^4 - 4*zeta^3)*q^110 + (8*zeta^11 - 
16*zeta^9 - 16*zeta^6 + 8*zeta^4 - 8*zeta^3 - 8)*q^111 + (10*zeta^11 - 20*zeta^9
+ 16*zeta^8 - 4*zeta^6 + 10*zeta^4 - 10*zeta^3 + 16*zeta - 10)*q^113 + 
(8*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 8*zeta^4 - 8*zeta^3 + 8*zeta - 
8)*q^114 + (12*zeta^11 - 32*zeta^8 - 32*zeta^6 + 12*zeta^4 + 12*zeta^3 - 
32*zeta)*q^115 + (4*zeta^11 - 16*zeta^8 - 16*zeta^6 + 4*zeta^4 + 4*zeta^3 - 
16*zeta)*q^116 + (4*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 4*zeta^4 - 
12*zeta^3 + 8*zeta - 8)*q^117 + (-4*zeta^11 + 8*zeta^9 - 12*zeta^8 - 4*zeta^6 - 
4*zeta^4 + 4*zeta^3 - 12*zeta + 4)*q^118 + (-12*zeta^11 + 24*zeta^9 - 4*zeta^8 +
20*zeta^6 - 12*zeta^4 + 12*zeta^3 - 4*zeta + 12)*q^120 + (14*zeta^9 - 7*zeta^8 +
7*zeta^6 + 14*zeta^3 - 7*zeta + 7)*q^121 + (2*zeta^11 + 8*zeta^8 + 8*zeta^6 + 
2*zeta^4 + 2*zeta^3 + 8*zeta)*q^122 + (-4*zeta^11 + 16*zeta^8 + 16*zeta^6 - 
4*zeta^4 - 4*zeta^3 + 16*zeta)*q^123 + (20*zeta^11 - 24*zeta^9 + 12*zeta^8 - 
12*zeta^6 + 20*zeta^4 - 4*zeta^3 + 12*zeta - 12)*q^124 + (8*zeta^11 - 16*zeta^9 
+ 8*zeta^8 - 8*zeta^6 + 8*zeta^4 - 8*zeta^3 + 8*zeta - 8)*q^125 + (4*zeta^11 - 
8*zeta^9 + 8*zeta^8 + 4*zeta^4 - 4*zeta^3 + 8*zeta - 4)*q^127 + (22*zeta^11 - 
10*zeta^9 + 5*zeta^8 - 5*zeta^6 + 22*zeta^4 + 12*zeta^3 + 5*zeta - 5)*q^128 + 
(-16*zeta^8 - 16*zeta^6 - 16*zeta)*q^129 + (-2*zeta^11 - 6*zeta^8 - 6*zeta^6 - 
2*zeta^4 - 2*zeta^3 - 6*zeta)*q^130 + (-16*zeta^11 - 8*zeta^9 + 4*zeta^8 - 
4*zeta^6 - 16*zeta^4 - 24*zeta^3 + 4*zeta - 4)*q^131 + (-12*zeta^11 + 24*zeta^9 
- 16*zeta^8 + 8*zeta^6 - 12*zeta^4 + 12*zeta^3 - 16*zeta + 12)*q^132 + 
(-8*zeta^8 - 8*zeta^6 - 8*zeta)*q^134 + (4*zeta^11 + 8*zeta^9 - 4*zeta^8 + 
4*zeta^6 + 4*zeta^4 + 12*zeta^3 - 4*zeta + 4)*q^135 + (12*zeta^11 + 10*zeta^8 + 
10*zeta^6 + 12*zeta^4 + 12*zeta^3 + 10*zeta)*q^136 + (-20*zeta^8 - 20*zeta^6 - 
20*zeta)*q^137 + (-8*zeta^11 + 24*zeta^9 - 12*zeta^8 + 12*zeta^6 - 8*zeta^4 + 
16*zeta^3 - 12*zeta + 12)*q^138 + (-20*zeta^11 + 40*zeta^9 - 8*zeta^8 + 
32*zeta^6 - 20*zeta^4 + 20*zeta^3 - 8*zeta + 20)*q^139 + (-8*zeta^11 + 16*zeta^9
- 8*zeta^8 + 8*zeta^6 - 8*zeta^4 + 8*zeta^3 - 8*zeta + 8)*q^141 + (20*zeta^11 - 
36*zeta^9 + 18*zeta^8 - 18*zeta^6 + 20*zeta^4 - 16*zeta^3 + 18*zeta - 18)*q^142 
+ (8*zeta^11 - 4*zeta^8 - 4*zeta^6 + 8*zeta^4 + 8*zeta^3 - 4*zeta)*q^143 + 
(-6*zeta^11 + 6*zeta^8 + 6*zeta^6 - 6*zeta^4 - 6*zeta^3 + 6*zeta)*q^144 + 
(-16*zeta^11 - 24*zeta^9 + 12*zeta^8 - 12*zeta^6 - 16*zeta^4 - 40*zeta^3 + 
12*zeta - 12)*q^145 + (4*zeta^11 - 8*zeta^9 - 6*zeta^8 - 14*zeta^6 + 4*zeta^4 - 
4*zeta^3 - 6*zeta - 4)*q^146 + (-12*zeta^11 + 24*zeta^9 - 16*zeta^8 + 8*zeta^6 -
12*zeta^4 + 12*zeta^3 - 16*zeta + 12)*q^148 + (-16*zeta^11 - 12*zeta^9 + 
6*zeta^8 - 6*zeta^6 - 16*zeta^4 - 28*zeta^3 + 6*zeta - 6)*q^149 + (14*zeta^11 - 
2*zeta^8 - 2*zeta^6 + 14*zeta^4 + 14*zeta^3 - 2*zeta)*q^150 + (12*zeta^11 - 
12*zeta^8 - 12*zeta^6 + 12*zeta^4 + 12*zeta^3 - 12*zeta)*q^151 + (12*zeta^11 - 
8*zeta^9 + 4*zeta^8 - 4*zeta^6 + 12*zeta^4 + 4*zeta^3 + 4*zeta - 4)*q^152 + 
(8*zeta^11 - 16*zeta^9 + 12*zeta^8 - 4*zeta^6 + 8*zeta^4 - 8*zeta^3 + 12*zeta - 
8)*q^153 + (4*zeta^11 - 8*zeta^9 - 8*zeta^6 + 4*zeta^4 - 4*zeta^3 - 4)*q^155 + 
(-36*zeta^11 + 32*zeta^9 - 16*zeta^8 + 16*zeta^6 - 36*zeta^4 - 4*zeta^3 - 
16*zeta + 16)*q^156 + (-16*zeta^11 + 10*zeta^8 + 10*zeta^6 - 16*zeta^4 - 
16*zeta^3 + 10*zeta)*q^157 + (-8*zeta^8 - 8*zeta^6 - 8*zeta)*q^158 + (8*zeta^9 -
4*zeta^8 + 4*zeta^6 + 8*zeta^3 - 4*zeta + 4)*q^159 + (18*zeta^11 - 36*zeta^9 + 
10*zeta^8 - 26*zeta^6 + 18*zeta^4 - 18*zeta^3 + 10*zeta - 18)*q^160 + (2*zeta^11
- 4*zeta^9 + 4*zeta^8 + 2*zeta^4 - 2*zeta^3 + 4*zeta - 2)*q^162 + (16*zeta^11 + 
16*zeta^4 + 16*zeta^3)*q^163 + (10*zeta^11 - 12*zeta^8 - 12*zeta^6 + 10*zeta^4 +
10*zeta^3 - 12*zeta)*q^164 + (8*zeta^11 - 16*zeta^8 - 16*zeta^6 + 8*zeta^4 + 
8*zeta^3 - 16*zeta)*q^165 + (-24*zeta^11 + 40*zeta^9 - 20*zeta^8 + 20*zeta^6 - 
24*zeta^4 + 16*zeta^3 - 20*zeta + 20)*q^166 + (-28*zeta^11 + 56*zeta^9 - 
28*zeta^8 + 28*zeta^6 - 28*zeta^4 + 28*zeta^3 - 28*zeta + 28)*q^167 + 
(11*zeta^11 - 22*zeta^9 + 16*zeta^8 - 6*zeta^6 + 11*zeta^4 - 11*zeta^3 + 16*zeta
- 11)*q^169 + (-4*zeta^11 + 12*zeta^9 - 6*zeta^8 + 6*zeta^6 - 4*zeta^4 + 
8*zeta^3 - 6*zeta + 6)*q^170 + (8*zeta^8 + 8*zeta^6 + 8*zeta)*q^171 + 
(-16*zeta^11 + 8*zeta^8 + 8*zeta^6 - 16*zeta^4 - 16*zeta^3 + 8*zeta)*q^172 + 
(10*zeta^11 + 28*zeta^9 - 14*zeta^8 + 14*zeta^6 + 10*zeta^4 + 38*zeta^3 - 
14*zeta + 14)*q^173 + (8*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 8*zeta^4 - 
8*zeta^3 + 8*zeta - 8)*q^174 + (6*zeta^11 - 12*zeta^9 - 12*zeta^6 + 6*zeta^4 - 
6*zeta^3 - 6)*q^176 + (8*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 8*zeta^4 - 
8*zeta^3 + 8*zeta - 8)*q^177 + (-4*zeta^11 - 10*zeta^8 - 10*zeta^6 - 4*zeta^4 - 
4*zeta^3 - 10*zeta)*q^178 + (-14*zeta^11 + 22*zeta^8 + 22*zeta^6 - 14*zeta^4 - 
14*zeta^3 + 22*zeta)*q^179 + (12*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 + 
12*zeta^4 + 20*zeta^3 - 4*zeta + 4)*q^180 + (-2*zeta^11 + 4*zeta^9 + 2*zeta^8 + 
6*zeta^6 - 2*zeta^4 + 2*zeta^3 + 2*zeta + 2)*q^181 + (28*zeta^11 - 56*zeta^9 + 
12*zeta^8 - 44*zeta^6 + 28*zeta^4 - 28*zeta^3 + 12*zeta - 28)*q^183 + 
(-20*zeta^11 + 4*zeta^9 - 2*zeta^8 + 2*zeta^6 - 20*zeta^4 - 16*zeta^3 - 2*zeta +
2)*q^184 + (8*zeta^11 - 16*zeta^8 - 16*zeta^6 + 8*zeta^4 + 8*zeta^3 - 
16*zeta)*q^185 + (-16*zeta^11 - 8*zeta^8 - 8*zeta^6 - 16*zeta^4 - 16*zeta^3 - 
8*zeta)*q^186 + (12*zeta^11 - 8*zeta^9 + 4*zeta^8 - 4*zeta^6 + 12*zeta^4 + 
4*zeta^3 + 4*zeta - 4)*q^187 + (4*zeta^11 - 8*zeta^9 - 4*zeta^8 - 12*zeta^6 + 
4*zeta^4 - 4*zeta^3 - 4*zeta - 4)*q^188 + (4*zeta^11 - 8*zeta^9 - 8*zeta^6 + 
4*zeta^4 - 4*zeta^3 - 4)*q^190 + (36*zeta^9 - 18*zeta^8 + 18*zeta^6 + 36*zeta^3 
- 18*zeta + 18)*q^191 + (-14*zeta^11 + 6*zeta^8 + 6*zeta^6 - 14*zeta^4 - 
14*zeta^3 + 6*zeta)*q^192 + (-6*zeta^11 - 10*zeta^8 - 10*zeta^6 - 6*zeta^4 - 
6*zeta^3 - 10*zeta)*q^193 + (10*zeta^11 - 12*zeta^9 + 6*zeta^8 - 6*zeta^6 + 
10*zeta^4 - 2*zeta^3 + 6*zeta - 6)*q^194 + (-20*zeta^11 + 40*zeta^9 - 8*zeta^8 +
32*zeta^6 - 20*zeta^4 + 20*zeta^3 - 8*zeta + 20)*q^195 + (-2*zeta^11 + 4*zeta^9 
+ 4*zeta^6 - 2*zeta^4 + 2*zeta^3 + 2)*q^197 + (-8*zeta^11 + 8*zeta^9 - 4*zeta^8 
+ 4*zeta^6 - 8*zeta^4 - 4*zeta + 4)*q^198 + (-16*zeta^11 + 24*zeta^8 + 24*zeta^6
- 16*zeta^4 - 16*zeta^3 + 24*zeta)*q^199 + (5*zeta^11 + 17*zeta^8 + 17*zeta^6 + 
5*zeta^4 + 5*zeta^3 + 17*zeta)*q^200 + (16*zeta^11 + 16*zeta^4 + 
16*zeta^3)*q^201 + (10*zeta^11 - 20*zeta^9 + 30*zeta^8 + 10*zeta^6 + 10*zeta^4 -
10*zeta^3 + 30*zeta - 10)*q^202 + (-28*zeta^8 - 28*zeta^6 - 28*zeta)*q^204 + 
(-16*zeta^11 - 20*zeta^9 + 10*zeta^8 - 10*zeta^6 - 16*zeta^4 - 36*zeta^3 + 
10*zeta - 10)*q^205 + (-16*zeta^11 - 4*zeta^8 - 4*zeta^6 - 16*zeta^4 - 16*zeta^3
- 4*zeta)*q^206 + (4*zeta^11 - 20*zeta^8 - 20*zeta^6 + 4*zeta^4 + 4*zeta^3 - 
20*zeta)*q^207 + (-6*zeta^11 + 24*zeta^9 - 12*zeta^8 + 12*zeta^6 - 6*zeta^4 + 
18*zeta^3 - 12*zeta + 12)*q^208 + (8*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 +
8*zeta^4 - 8*zeta^3 + 8*zeta - 8)*q^209 + (-20*zeta^11 + 40*zeta^9 - 24*zeta^8 +
16*zeta^6 - 20*zeta^4 + 20*zeta^3 - 24*zeta + 20)*q^211 + (-8*zeta^11 + 4*zeta^9
- 2*zeta^8 + 2*zeta^6 - 8*zeta^4 - 4*zeta^3 - 2*zeta + 2)*q^212 + (-4*zeta^11 - 
28*zeta^8 - 28*zeta^6 - 4*zeta^4 - 4*zeta^3 - 28*zeta)*q^213 + (14*zeta^11 + 
6*zeta^8 + 6*zeta^6 + 14*zeta^4 + 14*zeta^3 + 6*zeta)*q^214 + (16*zeta^11 + 
16*zeta^9 - 8*zeta^8 + 8*zeta^6 + 16*zeta^4 + 32*zeta^3 - 8*zeta + 8)*q^215 + 
(2*zeta^11 - 4*zeta^9 - 4*zeta^8 - 8*zeta^6 + 2*zeta^4 - 2*zeta^3 - 4*zeta - 
2)*q^216 + (-8*zeta^8 - 8*zeta^6 - 8*zeta)*q^218 + (28*zeta^11 + 16*zeta^9 - 
8*zeta^8 + 8*zeta^6 + 28*zeta^4 + 44*zeta^3 - 8*zeta + 8)*q^219 + (-4*zeta^11 + 
16*zeta^8 + 16*zeta^6 - 4*zeta^4 - 4*zeta^3 + 16*zeta)*q^220 + (14*zeta^11 + 
14*zeta^8 + 14*zeta^6 + 14*zeta^4 + 14*zeta^3 + 14*zeta)*q^221 + (16*zeta^11 - 
16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 16*zeta^4 + 8*zeta - 8)*q^222 + (32*zeta^11 - 
64*zeta^9 + 24*zeta^8 - 40*zeta^6 + 32*zeta^4 - 32*zeta^3 + 24*zeta - 32)*q^223 
+ (18*zeta^11 - 36*zeta^9 + 16*zeta^8 - 20*zeta^6 + 18*zeta^4 - 18*zeta^3 + 
16*zeta - 18)*q^225 + (-28*zeta^11 + 44*zeta^9 - 22*zeta^8 + 22*zeta^6 - 
28*zeta^4 + 16*zeta^3 - 22*zeta + 22)*q^226 + (-4*zeta^11 + 32*zeta^8 + 
32*zeta^6 - 4*zeta^4 - 4*zeta^3 + 32*zeta)*q^227 + (-16*zeta^11 + 8*zeta^8 + 
8*zeta^6 - 16*zeta^4 - 16*zeta^3 + 8*zeta)*q^228 + (-6*zeta^11 + 8*zeta^9 - 
4*zeta^8 + 4*zeta^6 - 6*zeta^4 + 2*zeta^3 - 4*zeta + 4)*q^229 + (-12*zeta^11 + 
24*zeta^9 - 4*zeta^8 + 20*zeta^6 - 12*zeta^4 + 12*zeta^3 - 4*zeta + 12)*q^230 + 
(-12*zeta^11 + 24*zeta^9 - 4*zeta^8 + 20*zeta^6 - 12*zeta^4 + 12*zeta^3 - 4*zeta
+ 12)*q^232 + (20*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 20*zeta^4 + 
4*zeta^3 + 8*zeta - 8)*q^233 + (-12*zeta^11 - 8*zeta^8 - 8*zeta^6 - 12*zeta^4 - 
12*zeta^3 - 8*zeta)*q^234 + (-4*zeta^11 + 12*zeta^8 + 12*zeta^6 - 4*zeta^4 - 
4*zeta^3 + 12*zeta)*q^235 + (20*zeta^11 - 24*zeta^9 + 12*zeta^8 - 12*zeta^6 + 
20*zeta^4 - 4*zeta^3 + 12*zeta - 12)*q^236 + (-32*zeta^11 + 64*zeta^9 - 
16*zeta^8 + 48*zeta^6 - 32*zeta^4 + 32*zeta^3 - 16*zeta + 32)*q^237 + 
(18*zeta^11 - 36*zeta^9 + 8*zeta^8 - 28*zeta^6 + 18*zeta^4 - 18*zeta^3 + 8*zeta 
- 18)*q^239 + (12*zeta^11 + 24*zeta^9 - 12*zeta^8 + 12*zeta^6 + 12*zeta^4 + 
36*zeta^3 - 12*zeta + 12)*q^240 + (12*zeta^11 - 18*zeta^8 - 18*zeta^6 + 
12*zeta^4 + 12*zeta^3 - 18*zeta)*q^241 + (7*zeta^11 + 7*zeta^8 + 7*zeta^6 + 
7*zeta^4 + 7*zeta^3 + 7*zeta)*q^242 + (-4*zeta^9 + 2*zeta^8 - 2*zeta^6 - 
4*zeta^3 + 2*zeta - 2)*q^243 + (-30*zeta^11 + 60*zeta^9 - 26*zeta^8 + 34*zeta^6 
- 30*zeta^4 + 30*zeta^3 - 26*zeta + 30)*q^244 + (4*zeta^11 - 8*zeta^9 - 4*zeta^8
- 12*zeta^6 + 4*zeta^4 - 4*zeta^3 - 4*zeta - 4)*q^246 + (16*zeta^11 - 8*zeta^9 +
4*zeta^8 - 4*zeta^6 + 16*zeta^4 + 8*zeta^3 + 4*zeta - 4)*q^247 + (-16*zeta^11 - 
4*zeta^8 - 4*zeta^6 - 16*zeta^4 - 16*zeta^3 - 4*zeta)*q^248 + (8*zeta^11 + 
24*zeta^8 + 24*zeta^6 + 8*zeta^4 + 8*zeta^3 + 24*zeta)*q^249 + (-8*zeta^11 + 
16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 8*zeta^4 + 8*zeta^3 - 8*zeta + 8)*q^250 + 
(-16*zeta^11 + 32*zeta^9 - 12*zeta^8 + 20*zeta^6 - 16*zeta^4 + 16*zeta^3 - 
12*zeta + 16)*q^251 + (-20*zeta^11 + 40*zeta^9 - 16*zeta^8 + 24*zeta^6 - 
20*zeta^4 + 20*zeta^3 - 16*zeta + 20)*q^253 + (-16*zeta^11 + 24*zeta^9 - 
12*zeta^8 + 12*zeta^6 - 16*zeta^4 + 8*zeta^3 - 12*zeta + 12)*q^254 + (-4*zeta^11
+ 20*zeta^8 + 20*zeta^6 - 4*zeta^4 - 4*zeta^3 + 20*zeta)*q^255 + (-13*zeta^11 - 
11*zeta^8 - 11*zeta^6 - 13*zeta^4 - 13*zeta^3 - 11*zeta)*q^256 + (30*zeta^11 + 
4*zeta^9 - 2*zeta^8 + 2*zeta^6 + 30*zeta^4 + 34*zeta^3 - 2*zeta + 2)*q^257 + 
(16*zeta^8 + 16*zeta^6 + 16*zeta)*q^258 + (22*zeta^11 - 44*zeta^9 + 20*zeta^8 - 
24*zeta^6 + 22*zeta^4 - 22*zeta^3 + 20*zeta - 22)*q^260 + (-8*zeta^11 - 
16*zeta^9 + 8*zeta^8 - 8*zeta^6 - 8*zeta^4 - 24*zeta^3 + 8*zeta - 8)*q^261 + 
(12*zeta^11 - 4*zeta^8 - 4*zeta^6 + 12*zeta^4 + 12*zeta^3 - 4*zeta)*q^262 + 
(-6*zeta^11 - 10*zeta^8 - 10*zeta^6 - 6*zeta^4 - 6*zeta^3 - 10*zeta)*q^263 + 
(8*zeta^11 - 24*zeta^9 + 12*zeta^8 - 12*zeta^6 + 8*zeta^4 - 16*zeta^3 + 12*zeta 
- 12)*q^264 + (-8*zeta^11 + 16*zeta^9 - 4*zeta^8 + 12*zeta^6 - 8*zeta^4 + 
8*zeta^3 - 4*zeta + 8)*q^265 + (-32*zeta^11 + 64*zeta^9 - 12*zeta^8 + 52*zeta^6 
- 32*zeta^4 + 32*zeta^3 - 12*zeta + 32)*q^267 + (8*zeta^11 - 32*zeta^9 + 
16*zeta^8 - 16*zeta^6 + 8*zeta^4 - 24*zeta^3 + 16*zeta - 16)*q^268 + (2*zeta^11 
- 20*zeta^8 - 20*zeta^6 + 2*zeta^4 + 2*zeta^3 - 20*zeta)*q^269 + (4*zeta^8 + 
4*zeta^6 + 4*zeta)*q^270 + (-20*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 - 
20*zeta^4 - 12*zeta^3 - 4*zeta + 4)*q^271 + (-12*zeta^11 + 24*zeta^9 - 18*zeta^8
+ 6*zeta^6 - 12*zeta^4 + 12*zeta^3 - 18*zeta + 12)*q^272 + (20*zeta^8 + 
20*zeta^6 + 20*zeta)*q^274 + (16*zeta^11 + 4*zeta^9 - 2*zeta^8 + 2*zeta^6 + 
16*zeta^4 + 20*zeta^3 - 2*zeta + 2)*q^275 + (28*zeta^11 - 28*zeta^8 - 28*zeta^6 
+ 28*zeta^4 + 28*zeta^3 - 28*zeta)*q^276 + (2*zeta^11 + 14*zeta^8 + 14*zeta^6 + 
2*zeta^4 + 2*zeta^3 + 14*zeta)*q^277 + (-16*zeta^11 + 8*zeta^9 - 4*zeta^8 + 
4*zeta^6 - 16*zeta^4 - 8*zeta^3 - 4*zeta + 4)*q^278 + (-8*zeta^8 - 8*zeta^6 - 
8*zeta)*q^279 + (-4*zeta^11 + 8*zeta^9 - 12*zeta^8 - 4*zeta^6 - 4*zeta^4 + 
4*zeta^3 - 12*zeta + 4)*q^281 + (8*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 
8*zeta^4 - 8*zeta^3 + 8*zeta - 8)*q^282 + (-12*zeta^8 - 12*zeta^6 - 
12*zeta)*q^283 + (-34*zeta^11 + 10*zeta^8 + 10*zeta^6 - 34*zeta^4 - 34*zeta^3 + 
10*zeta)*q^284 + (16*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 + 16*zeta^4 + 
32*zeta^3 - 8*zeta + 8)*q^285 + (-8*zeta^11 + 16*zeta^9 - 20*zeta^8 - 4*zeta^6 -
8*zeta^4 + 8*zeta^3 - 20*zeta + 8)*q^286 + (10*zeta^11 - 20*zeta^9 + 4*zeta^8 - 
16*zeta^6 + 10*zeta^4 - 10*zeta^3 + 4*zeta - 10)*q^288 + (24*zeta^11 - 10*zeta^9
+ 5*zeta^8 - 5*zeta^6 + 24*zeta^4 + 14*zeta^3 + 5*zeta - 5)*q^289 + (4*zeta^11 -
12*zeta^8 - 12*zeta^6 + 4*zeta^4 + 4*zeta^3 - 12*zeta)*q^290 + (-8*zeta^11 + 
4*zeta^8 + 4*zeta^6 - 8*zeta^4 - 8*zeta^3 + 4*zeta)*q^291 + (-2*zeta^11 - 
48*zeta^9 + 24*zeta^8 - 24*zeta^6 - 2*zeta^4 - 50*zeta^3 + 24*zeta - 24)*q^292 +
(16*zeta^11 - 32*zeta^9 - 2*zeta^8 - 34*zeta^6 + 16*zeta^4 - 16*zeta^3 - 2*zeta 
- 16)*q^293 + (4*zeta^11 - 8*zeta^9 - 8*zeta^6 + 4*zeta^4 - 4*zeta^3 - 4)*q^295 
+ (8*zeta^11 - 24*zeta^9 + 12*zeta^8 - 12*zeta^6 + 8*zeta^4 - 16*zeta^3 + 
12*zeta - 12)*q^296 + (-4*zeta^11 + 4*zeta^8 + 4*zeta^6 - 4*zeta^4 - 4*zeta^3 + 
4*zeta)*q^297 + (10*zeta^11 - 6*zeta^8 - 6*zeta^6 + 10*zeta^4 + 10*zeta^3 - 
6*zeta)*q^298 + (-28*zeta^11 - 28*zeta^4 - 28*zeta^3)*q^299 + (22*zeta^11 - 
44*zeta^9 - 8*zeta^8 - 52*zeta^6 + 22*zeta^4 - 22*zeta^3 - 8*zeta - 22)*q^300 + 
(-12*zeta^11 + 24*zeta^9 - 24*zeta^8 - 12*zeta^4 + 12*zeta^3 - 24*zeta + 
12)*q^302 + (-20*zeta^11 + 40*zeta^9 - 20*zeta^8 + 20*zeta^6 - 20*zeta^4 + 
20*zeta^3 - 20*zeta + 20)*q^303 + (-12*zeta^8 - 12*zeta^6 - 12*zeta)*q^304 + 
(22*zeta^11 - 50*zeta^8 - 50*zeta^6 + 22*zeta^4 + 22*zeta^3 - 50*zeta)*q^305 + 
(-20*zeta^11 + 32*zeta^9 - 16*zeta^8 + 16*zeta^6 - 20*zeta^4 + 12*zeta^3 - 
16*zeta + 16)*q^306 + (36*zeta^11 - 72*zeta^9 + 20*zeta^8 - 52*zeta^6 + 
36*zeta^4 - 36*zeta^3 + 20*zeta - 36)*q^307 + (16*zeta^11 - 32*zeta^9 + 
24*zeta^8 - 8*zeta^6 + 16*zeta^4 - 16*zeta^3 + 24*zeta - 16)*q^309 + (8*zeta^11 
- 8*zeta^9 + 4*zeta^8 - 4*zeta^6 + 8*zeta^4 + 4*zeta - 4)*q^310 + (8*zeta^11 + 
12*zeta^8 + 12*zeta^6 + 8*zeta^4 + 8*zeta^3 + 12*zeta)*q^311 + (28*zeta^11 + 
28*zeta^4 + 28*zeta^3)*q^312 + (14*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 
14*zeta^4 - 2*zeta^3 + 8*zeta - 8)*q^313 + (16*zeta^11 - 32*zeta^9 + 38*zeta^8 +
6*zeta^6 + 16*zeta^4 - 16*zeta^3 + 38*zeta - 16)*q^314 + (32*zeta^11 - 64*zeta^9
+ 24*zeta^8 - 40*zeta^6 + 32*zeta^4 - 32*zeta^3 + 24*zeta - 32)*q^316 + 
(-20*zeta^9 + 10*zeta^8 - 10*zeta^6 - 20*zeta^3 + 10*zeta - 10)*q^317 + 
(4*zeta^11 + 4*zeta^8 + 4*zeta^6 + 4*zeta^4 + 4*zeta^3 + 4*zeta)*q^318 + 
(8*zeta^11 - 16*zeta^8 - 16*zeta^6 + 8*zeta^4 + 8*zeta^3 - 16*zeta)*q^319 + 
(-6*zeta^11 - 20*zeta^9 + 10*zeta^8 - 10*zeta^6 - 6*zeta^4 - 26*zeta^3 + 10*zeta
- 10)*q^320 + (-4*zeta^11 + 8*zeta^9 - 16*zeta^8 - 8*zeta^6 - 4*zeta^4 + 
4*zeta^3 - 16*zeta + 4)*q^321 + (-4*zeta^11 + 8*zeta^9 + 8*zeta^8 + 16*zeta^6 - 
4*zeta^4 + 4*zeta^3 + 8*zeta + 4)*q^323 + (-8*zeta^11 + 4*zeta^9 - 2*zeta^8 + 
2*zeta^6 - 8*zeta^4 - 4*zeta^3 - 2*zeta + 2)*q^324 + (4*zeta^11 + 26*zeta^8 + 
26*zeta^6 + 4*zeta^4 + 4*zeta^3 + 26*zeta)*q^325 + (-16*zeta^11 - 16*zeta^4 - 
16*zeta^3)*q^326 + (16*zeta^11 + 16*zeta^4 + 16*zeta^3)*q^327 + (-14*zeta^11 + 
28*zeta^9 - 14*zeta^8 + 14*zeta^6 - 14*zeta^4 + 14*zeta^3 - 14*zeta + 14)*q^328 
+ (-8*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 8*zeta^4 + 8*zeta^3 - 8*zeta +
8)*q^330 + (8*zeta^9 - 4*zeta^8 + 4*zeta^6 + 8*zeta^3 - 4*zeta + 4)*q^331 + 
(36*zeta^11 - 4*zeta^8 - 4*zeta^6 + 36*zeta^4 + 36*zeta^3 - 4*zeta)*q^332 + 
(8*zeta^11 - 8*zeta^8 - 8*zeta^6 + 8*zeta^4 + 8*zeta^3 - 8*zeta)*q^333 + 
(28*zeta^11 - 56*zeta^9 + 28*zeta^8 - 28*zeta^6 + 28*zeta^4 - 28*zeta^3 + 
28*zeta - 28)*q^334 + (-24*zeta^11 + 48*zeta^9 - 16*zeta^8 + 32*zeta^6 - 
24*zeta^4 + 24*zeta^3 - 16*zeta + 24)*q^335 + (32*zeta^11 - 64*zeta^9 + 8*zeta^8
- 56*zeta^6 + 32*zeta^4 - 32*zeta^3 + 8*zeta - 32)*q^337 + (-26*zeta^11 + 
42*zeta^9 - 21*zeta^8 + 21*zeta^6 - 26*zeta^4 + 16*zeta^3 - 21*zeta + 21)*q^338 
+ (12*zeta^11 + 20*zeta^8 + 20*zeta^6 + 12*zeta^4 + 12*zeta^3 + 20*zeta)*q^339 +
(14*zeta^11 - 14*zeta^8 - 14*zeta^6 + 14*zeta^4 + 14*zeta^3 - 14*zeta)*q^340 + 
(-8*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 8*zeta^4 + 8*zeta^3 - 8*zeta + 
8)*q^341 + (-8*zeta^8 - 8*zeta^6 - 8*zeta)*q^342 + (16*zeta^11 - 32*zeta^9 + 
24*zeta^8 - 8*zeta^6 + 16*zeta^4 - 16*zeta^3 + 24*zeta - 16)*q^344 + 
(-40*zeta^11 - 48*zeta^9 + 24*zeta^8 - 24*zeta^6 - 40*zeta^4 - 88*zeta^3 + 
24*zeta - 24)*q^345 + (4*zeta^11 + 14*zeta^8 + 14*zeta^6 + 4*zeta^4 + 4*zeta^3 +
14*zeta)*q^346 + (22*zeta^11 - 38*zeta^8 - 38*zeta^6 + 22*zeta^4 + 22*zeta^3 - 
38*zeta)*q^347 + (-24*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 - 24*zeta^4 - 
40*zeta^3 + 8*zeta - 8)*q^348 + (-14*zeta^11 + 28*zeta^9 - 14*zeta^8 + 14*zeta^6
- 14*zeta^4 + 14*zeta^3 - 14*zeta + 14)*q^349 + (4*zeta^11 - 8*zeta^9 - 4*zeta^8
- 12*zeta^6 + 4*zeta^4 - 4*zeta^3 - 4*zeta - 4)*q^351 + (4*zeta^11 + 12*zeta^9 -
6*zeta^8 + 6*zeta^6 + 4*zeta^4 + 16*zeta^3 - 6*zeta + 6)*q^352 + (2*zeta^11 - 
20*zeta^8 - 20*zeta^6 + 2*zeta^4 + 2*zeta^3 - 20*zeta)*q^353 + (-16*zeta^11 - 
8*zeta^8 - 8*zeta^6 - 16*zeta^4 - 16*zeta^3 - 8*zeta)*q^354 + (28*zeta^11 + 
24*zeta^9 - 12*zeta^8 + 12*zeta^6 + 28*zeta^4 + 52*zeta^3 - 12*zeta + 12)*q^355 
+ (36*zeta^11 - 72*zeta^9 + 34*zeta^8 - 38*zeta^6 + 36*zeta^4 - 36*zeta^3 + 
34*zeta - 36)*q^356 + (14*zeta^11 - 28*zeta^9 + 20*zeta^8 - 8*zeta^6 + 14*zeta^4
- 14*zeta^3 + 20*zeta - 14)*q^358 + (-8*zeta^11 + 12*zeta^9 - 6*zeta^8 + 
6*zeta^6 - 8*zeta^4 + 4*zeta^3 - 6*zeta + 6)*q^359 + (-8*zeta^11 + 12*zeta^8 + 
12*zeta^6 - 8*zeta^4 - 8*zeta^3 + 12*zeta)*q^360 + (-11*zeta^11 + 11*zeta^8 + 
11*zeta^6 - 11*zeta^4 - 11*zeta^3 + 11*zeta)*q^361 + (-10*zeta^11 + 12*zeta^9 - 
6*zeta^8 + 6*zeta^6 - 10*zeta^4 + 2*zeta^3 - 6*zeta + 6)*q^362 + (14*zeta^11 - 
28*zeta^9 - 28*zeta^6 + 14*zeta^4 - 14*zeta^3 - 14)*q^363 + (-58*zeta^11 + 
116*zeta^9 - 36*zeta^8 + 80*zeta^6 - 58*zeta^4 + 58*zeta^3 - 36*zeta + 58)*q^365
+ (20*zeta^11 - 8*zeta^9 + 4*zeta^8 - 4*zeta^6 + 20*zeta^4 + 12*zeta^3 + 4*zeta 
- 4)*q^366 + (-8*zeta^11 - 8*zeta^8 - 8*zeta^6 - 8*zeta^4 - 8*zeta^3 - 
8*zeta)*q^367 + (-6*zeta^11 + 30*zeta^8 + 30*zeta^6 - 6*zeta^4 - 6*zeta^3 + 
30*zeta)*q^368 + (-12*zeta^11 - 8*zeta^9 + 4*zeta^8 - 4*zeta^6 - 12*zeta^4 - 
20*zeta^3 + 4*zeta - 4)*q^369 + (-8*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 
8*zeta^4 + 8*zeta^3 - 8*zeta + 8)*q^370 + (16*zeta^11 - 32*zeta^9 + 40*zeta^8 + 
8*zeta^6 + 16*zeta^4 - 16*zeta^3 + 40*zeta - 16)*q^372 + (-16*zeta^11 + 
44*zeta^9 - 22*zeta^8 + 22*zeta^6 - 16*zeta^4 + 28*zeta^3 - 22*zeta + 22)*q^373 
+ (-16*zeta^11 - 4*zeta^8 - 4*zeta^6 - 16*zeta^4 - 16*zeta^3 - 4*zeta)*q^374 + 
(16*zeta^8 + 16*zeta^6 + 16*zeta)*q^375 + (12*zeta^11 - 8*zeta^9 + 4*zeta^8 - 
4*zeta^6 + 12*zeta^4 + 4*zeta^3 + 4*zeta - 4)*q^376 + (-20*zeta^11 + 40*zeta^9 -
8*zeta^8 + 32*zeta^6 - 20*zeta^4 + 20*zeta^3 - 8*zeta + 20)*q^377 + (-4*zeta^11 
+ 8*zeta^9 + 16*zeta^8 + 24*zeta^6 - 4*zeta^4 + 4*zeta^3 + 16*zeta + 4)*q^379 + 
(-8*zeta^11 - 24*zeta^9 + 12*zeta^8 - 12*zeta^6 - 8*zeta^4 - 32*zeta^3 + 12*zeta
- 12)*q^380 + (8*zeta^11 + 8*zeta^8 + 8*zeta^6 + 8*zeta^4 + 8*zeta^3 + 
8*zeta)*q^381 + (18*zeta^11 + 18*zeta^8 + 18*zeta^6 + 18*zeta^4 + 18*zeta^3 + 
18*zeta)*q^382 + (8*zeta^11 - 48*zeta^9 + 24*zeta^8 - 24*zeta^6 + 8*zeta^4 - 
40*zeta^3 + 24*zeta - 24)*q^383 + (34*zeta^11 - 68*zeta^9 + 44*zeta^8 - 
24*zeta^6 + 34*zeta^4 - 34*zeta^3 + 44*zeta - 34)*q^384 + (6*zeta^11 - 12*zeta^9
+ 28*zeta^8 + 16*zeta^6 + 6*zeta^4 - 6*zeta^3 + 28*zeta - 6)*q^386 + (16*zeta^11
+ 16*zeta^4 + 16*zeta^3)*q^387 + (-8*zeta^11 - 10*zeta^8 - 10*zeta^6 - 8*zeta^4 
- 8*zeta^3 - 10*zeta)*q^388 + (-4*zeta^11 + 24*zeta^8 + 24*zeta^6 - 4*zeta^4 - 
4*zeta^3 + 24*zeta)*q^389 + (-16*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 - 
16*zeta^4 - 8*zeta^3 - 4*zeta + 4)*q^390 + (16*zeta^11 - 32*zeta^9 - 4*zeta^8 - 
36*zeta^6 + 16*zeta^4 - 16*zeta^3 - 4*zeta - 16)*q^391 + (-40*zeta^11 + 
80*zeta^9 - 32*zeta^8 + 48*zeta^6 - 40*zeta^4 + 40*zeta^3 - 32*zeta + 40)*q^393 
+ (-4*zeta^11 + 4*zeta^9 - 2*zeta^8 + 2*zeta^6 - 4*zeta^4 - 2*zeta + 2)*q^394 + 
(-24*zeta^11 + 56*zeta^8 + 56*zeta^6 - 24*zeta^4 - 24*zeta^3 + 56*zeta)*q^395 + 
(4*zeta^11 + 12*zeta^8 + 12*zeta^6 + 4*zeta^4 + 4*zeta^3 + 12*zeta)*q^396 + 
(-26*zeta^11 + 32*zeta^9 - 16*zeta^8 + 16*zeta^6 - 26*zeta^4 + 6*zeta^3 - 
16*zeta + 16)*q^397 + (16*zeta^11 - 32*zeta^9 + 24*zeta^8 - 8*zeta^6 + 16*zeta^4
- 16*zeta^3 + 24*zeta - 16)*q^398 + (-27*zeta^11 + 54*zeta^9 - 24*zeta^8 + 
30*zeta^6 - 27*zeta^4 + 27*zeta^3 - 24*zeta + 27)*q^400 + (20*zeta^11 - 
16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 20*zeta^4 + 4*zeta^3 + 8*zeta - 8)*q^401 + 
(-16*zeta^11 - 16*zeta^4 - 16*zeta^3)*q^402 + (-20*zeta^11 - 4*zeta^8 - 4*zeta^6
- 20*zeta^4 - 20*zeta^3 - 4*zeta)*q^403 + (-50*zeta^11 + 60*zeta^9 - 30*zeta^8 +
30*zeta^6 - 50*zeta^4 + 10*zeta^3 - 30*zeta + 30)*q^404 + (-8*zeta^11 + 
16*zeta^9 - 4*zeta^8 + 12*zeta^6 - 8*zeta^4 + 8*zeta^3 - 4*zeta + 8)*q^405 + 
(-8*zeta^11 + 16*zeta^9 + 16*zeta^6 - 8*zeta^4 + 8*zeta^3 + 8)*q^407 + 
(44*zeta^11 - 48*zeta^9 + 24*zeta^8 - 24*zeta^6 + 44*zeta^4 - 4*zeta^3 + 24*zeta
- 24)*q^408 + (20*zeta^11 - 22*zeta^8 - 22*zeta^6 + 20*zeta^4 + 20*zeta^3 - 
22*zeta)*q^409 + (6*zeta^11 - 10*zeta^8 - 10*zeta^6 + 6*zeta^4 + 6*zeta^3 - 
10*zeta)*q^410 + (-40*zeta^11 - 40*zeta^4 - 40*zeta^3)*q^411 + (28*zeta^8 + 
28*zeta^6 + 28*zeta)*q^412 + (-4*zeta^11 + 8*zeta^9 + 8*zeta^8 + 16*zeta^6 - 
4*zeta^4 + 4*zeta^3 + 8*zeta + 4)*q^414 + (-24*zeta^11 - 16*zeta^9 + 8*zeta^8 - 
8*zeta^6 - 24*zeta^4 - 40*zeta^3 + 8*zeta - 8)*q^415 + (-10*zeta^11 + 12*zeta^8 
+ 12*zeta^6 - 10*zeta^4 - 10*zeta^3 + 12*zeta)*q^416 + (24*zeta^11 - 40*zeta^8 -
40*zeta^6 + 24*zeta^4 + 24*zeta^3 - 40*zeta)*q^417 + (-8*zeta^11 + 16*zeta^9 - 
8*zeta^8 + 8*zeta^6 - 8*zeta^4 + 8*zeta^3 - 8*zeta + 8)*q^418 + (32*zeta^11 - 
64*zeta^9 - 4*zeta^8 - 68*zeta^6 + 32*zeta^4 - 32*zeta^3 - 4*zeta - 32)*q^419 + 
(-26*zeta^11 + 52*zeta^9 - 32*zeta^8 + 20*zeta^6 - 26*zeta^4 + 26*zeta^3 - 
32*zeta + 26)*q^421 + (32*zeta^11 - 56*zeta^9 + 28*zeta^8 - 28*zeta^6 + 
32*zeta^4 - 24*zeta^3 + 28*zeta - 28)*q^422 + (8*zeta^8 + 8*zeta^6 + 
8*zeta)*q^423 + (6*zeta^11 - 2*zeta^8 - 2*zeta^6 + 6*zeta^4 + 6*zeta^3 - 
2*zeta)*q^424 + (10*zeta^11 - 44*zeta^9 + 22*zeta^8 - 22*zeta^6 + 10*zeta^4 - 
34*zeta^3 + 22*zeta - 22)*q^425 + (4*zeta^11 - 8*zeta^9 + 40*zeta^8 + 32*zeta^6 
+ 4*zeta^4 - 4*zeta^3 + 40*zeta - 4)*q^426 + (-10*zeta^11 + 20*zeta^9 - 
32*zeta^8 - 12*zeta^6 - 10*zeta^4 + 10*zeta^3 - 32*zeta + 10)*q^428 + (8*zeta^11
- 32*zeta^9 + 16*zeta^8 - 16*zeta^6 + 8*zeta^4 - 24*zeta^3 + 16*zeta - 16)*q^429
+ (-8*zeta^11 + 8*zeta^8 + 8*zeta^6 - 8*zeta^4 - 8*zeta^3 + 8*zeta)*q^430 + 
(-10*zeta^11 + 34*zeta^8 + 34*zeta^6 - 10*zeta^4 - 10*zeta^3 + 34*zeta)*q^431 + 
(-12*zeta^9 + 6*zeta^8 - 6*zeta^6 - 12*zeta^3 + 6*zeta - 6)*q^432 + (-22*zeta^11
+ 44*zeta^9 - 6*zeta^8 + 38*zeta^6 - 22*zeta^4 + 22*zeta^3 - 6*zeta + 22)*q^433 
+ (-56*zeta^11 + 112*zeta^9 - 32*zeta^8 + 80*zeta^6 - 56*zeta^4 + 56*zeta^3 - 
32*zeta + 56)*q^435 + (8*zeta^11 - 32*zeta^9 + 16*zeta^8 - 16*zeta^6 + 8*zeta^4 
- 24*zeta^3 + 16*zeta - 16)*q^436 + (-16*zeta^11 + 24*zeta^8 + 24*zeta^6 - 
16*zeta^4 - 16*zeta^3 + 24*zeta)*q^437 + (-20*zeta^11 + 8*zeta^8 + 8*zeta^6 - 
20*zeta^4 - 20*zeta^3 + 8*zeta)*q^438 + (-16*zeta^11 + 48*zeta^9 - 24*zeta^8 + 
24*zeta^6 - 16*zeta^4 + 32*zeta^3 - 24*zeta + 24)*q^439 + (12*zeta^11 - 
24*zeta^9 + 4*zeta^8 - 20*zeta^6 + 12*zeta^4 - 12*zeta^3 + 4*zeta - 12)*q^440 + 
(-14*zeta^11 + 28*zeta^9 - 56*zeta^8 - 28*zeta^6 - 14*zeta^4 + 14*zeta^3 - 
56*zeta + 14)*q^442 + (-24*zeta^11 - 36*zeta^9 + 18*zeta^8 - 18*zeta^6 - 
24*zeta^4 - 60*zeta^3 + 18*zeta - 18)*q^443 + (-8*zeta^11 - 24*zeta^8 - 
24*zeta^6 - 8*zeta^4 - 8*zeta^3 - 24*zeta)*q^444 + (-26*zeta^11 + 58*zeta^8 + 
58*zeta^6 - 26*zeta^4 - 26*zeta^3 + 58*zeta)*q^445 + (-8*zeta^11 + 32*zeta^9 - 
16*zeta^8 + 16*zeta^6 - 8*zeta^4 + 24*zeta^3 - 16*zeta + 16)*q^446 + 
(-44*zeta^11 + 88*zeta^9 - 32*zeta^8 + 56*zeta^6 - 44*zeta^4 + 44*zeta^3 - 
32*zeta + 44)*q^447 + (10*zeta^11 - 20*zeta^9 + 16*zeta^8 - 4*zeta^6 + 10*zeta^4
- 10*zeta^3 + 16*zeta - 10)*q^449 + (-12*zeta^11 + 28*zeta^9 - 14*zeta^8 + 
14*zeta^6 - 12*zeta^4 + 16*zeta^3 - 14*zeta + 14)*q^450 + (4*zeta^11 - 16*zeta^8
- 16*zeta^6 + 4*zeta^4 + 4*zeta^3 - 16*zeta)*q^451 + (38*zeta^11 + 2*zeta^8 + 
2*zeta^6 + 38*zeta^4 + 38*zeta^3 + 2*zeta)*q^452 + (-48*zeta^9 + 24*zeta^8 - 
24*zeta^6 - 48*zeta^3 + 24*zeta - 24)*q^453 + (4*zeta^11 - 8*zeta^9 - 20*zeta^8 
- 28*zeta^6 + 4*zeta^4 - 4*zeta^3 - 20*zeta - 4)*q^454 + (16*zeta^11 - 32*zeta^9
+ 24*zeta^8 - 8*zeta^6 + 16*zeta^4 - 16*zeta^3 + 24*zeta - 16)*q^456 + 
(36*zeta^9 - 18*zeta^8 + 18*zeta^6 + 36*zeta^3 - 18*zeta + 18)*q^457 + 
(10*zeta^11 + 4*zeta^8 + 4*zeta^6 + 10*zeta^4 + 10*zeta^3 + 4*zeta)*q^458 + 
(-4*zeta^11 - 8*zeta^8 - 8*zeta^6 - 4*zeta^4 - 4*zeta^3 - 8*zeta)*q^459 + 
(28*zeta^11 + 56*zeta^9 - 28*zeta^8 + 28*zeta^6 + 28*zeta^4 + 84*zeta^3 - 
28*zeta + 28)*q^460 + (-16*zeta^11 + 32*zeta^9 + 2*zeta^8 + 34*zeta^6 - 
16*zeta^4 + 16*zeta^3 + 2*zeta + 16)*q^461 + (36*zeta^11 - 72*zeta^9 + 32*zeta^8
- 40*zeta^6 + 36*zeta^4 - 36*zeta^3 + 32*zeta - 36)*q^463 + (12*zeta^11 + 
24*zeta^9 - 12*zeta^8 + 12*zeta^6 + 12*zeta^4 + 36*zeta^3 - 12*zeta + 12)*q^464 
+ (-8*zeta^11 + 8*zeta^8 + 8*zeta^6 - 8*zeta^4 - 8*zeta^3 + 8*zeta)*q^465 + 
(-28*zeta^11 - 8*zeta^8 - 8*zeta^6 - 28*zeta^4 - 28*zeta^3 - 8*zeta)*q^466 + 
(-28*zeta^11 + 40*zeta^9 - 20*zeta^8 + 20*zeta^6 - 28*zeta^4 + 12*zeta^3 - 
20*zeta + 20)*q^467 + (20*zeta^11 - 40*zeta^9 + 36*zeta^8 - 4*zeta^6 + 20*zeta^4
- 20*zeta^3 + 36*zeta - 20)*q^468 + (4*zeta^11 - 8*zeta^9 - 8*zeta^6 + 4*zeta^4 
- 4*zeta^3 - 4)*q^470 + (-12*zeta^11 + 64*zeta^9 - 32*zeta^8 + 32*zeta^6 - 
12*zeta^4 + 52*zeta^3 - 32*zeta + 32)*q^471 + (-16*zeta^11 - 4*zeta^8 - 4*zeta^6
- 16*zeta^4 - 16*zeta^3 - 4*zeta)*q^472 + (16*zeta^8 + 16*zeta^6 + 
16*zeta)*q^473 + (-16*zeta^11 - 16*zeta^4 - 16*zeta^3)*q^474 + (-20*zeta^11 + 
40*zeta^9 - 4*zeta^8 + 36*zeta^6 - 20*zeta^4 + 20*zeta^3 - 4*zeta + 20)*q^475 + 
(-4*zeta^11 + 8*zeta^9 + 8*zeta^6 - 4*zeta^4 + 4*zeta^3 + 4)*q^477 + (12*zeta^11
- 4*zeta^9 + 2*zeta^8 - 2*zeta^6 + 12*zeta^4 + 8*zeta^3 + 2*zeta - 2)*q^478 + 
(-16*zeta^11 - 4*zeta^8 - 4*zeta^6 - 16*zeta^4 - 16*zeta^3 - 4*zeta)*q^479 + 
(-16*zeta^11 + 36*zeta^8 + 36*zeta^6 - 16*zeta^4 - 16*zeta^3 + 36*zeta)*q^480 + 
(8*zeta^11 - 32*zeta^9 + 16*zeta^8 - 16*zeta^6 + 8*zeta^4 - 24*zeta^3 + 16*zeta 
- 16)*q^481 + (-12*zeta^11 + 24*zeta^9 - 18*zeta^8 + 6*zeta^6 - 12*zeta^4 + 
12*zeta^3 - 18*zeta + 12)*q^482 + (-21*zeta^11 + 42*zeta^9 - 28*zeta^8 + 
14*zeta^6 - 21*zeta^4 + 21*zeta^3 - 28*zeta + 21)*q^484 + (-4*zeta^11 - 
12*zeta^9 + 6*zeta^8 - 6*zeta^6 - 4*zeta^4 - 16*zeta^3 + 6*zeta - 6)*q^485 + 
(-2*zeta^11 - 2*zeta^8 - 2*zeta^6 - 2*zeta^4 - 2*zeta^3 - 2*zeta)*q^486 + 
(4*zeta^11 - 36*zeta^8 - 36*zeta^6 + 4*zeta^4 + 4*zeta^3 - 36*zeta)*q^487 + 
(-2*zeta^11 - 36*zeta^9 + 18*zeta^8 - 18*zeta^6 - 2*zeta^4 - 38*zeta^3 + 18*zeta
- 18)*q^488 + (32*zeta^11 - 64*zeta^9 + 32*zeta^8 - 32*zeta^6 + 32*zeta^4 - 
32*zeta^3 + 32*zeta - 32)*q^489 + (2*zeta^11 - 4*zeta^9 + 24*zeta^8 + 20*zeta^6 
+ 2*zeta^4 - 2*zeta^3 + 24*zeta - 2)*q^491 + (-4*zeta^11 - 40*zeta^9 + 20*zeta^8
- 20*zeta^6 - 4*zeta^4 - 44*zeta^3 + 20*zeta - 20)*q^492 + (-4*zeta^11 + 
20*zeta^8 + 20*zeta^6 - 4*zeta^4 - 4*zeta^3 + 20*zeta)*q^493 + (-20*zeta^11 - 
4*zeta^8 - 4*zeta^6 - 20*zeta^4 - 20*zeta^3 - 4*zeta)*q^494 + (8*zeta^11 + 
16*zeta^9 - 8*zeta^8 + 8*zeta^6 + 8*zeta^4 + 24*zeta^3 - 8*zeta + 8)*q^495 + 
(12*zeta^8 + 12*zeta^6 + 12*zeta)*q^496 + (-8*zeta^11 + 16*zeta^9 - 48*zeta^8 - 
32*zeta^6 - 8*zeta^4 + 8*zeta^3 - 48*zeta + 8)*q^498 + (-16*zeta^11 + 16*zeta^9 
- 8*zeta^8 + 8*zeta^6 - 16*zeta^4 - 8*zeta + 8)*q^499 + (16*zeta^11 - 8*zeta^8 -
8*zeta^6 + 16*zeta^4 + 16*zeta^3 - 8*zeta)*q^500 + (-56*zeta^8 - 56*zeta^6 - 
56*zeta)*q^501 + (4*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 4*zeta^4 - 
12*zeta^3 + 8*zeta - 8)*q^502 + (-10*zeta^11 + 20*zeta^9 + 20*zeta^6 - 10*zeta^4
+ 10*zeta^3 + 10)*q^505 + (8*zeta^11 - 24*zeta^9 + 12*zeta^8 - 12*zeta^6 + 
8*zeta^4 - 16*zeta^3 + 12*zeta - 12)*q^506 + (10*zeta^11 + 22*zeta^8 + 22*zeta^6
+ 10*zeta^4 + 10*zeta^3 + 22*zeta)*q^507 + (20*zeta^11 + 4*zeta^8 + 4*zeta^6 + 
20*zeta^4 + 20*zeta^3 + 4*zeta)*q^508 + (22*zeta^11 - 20*zeta^9 + 10*zeta^8 - 
10*zeta^6 + 22*zeta^4 + 2*zeta^3 + 10*zeta - 10)*q^509 + (4*zeta^11 - 8*zeta^9 -
8*zeta^8 - 16*zeta^6 + 4*zeta^4 - 4*zeta^3 - 8*zeta - 4)*q^510 + (-21*zeta^11 + 
42*zeta^9 + 6*zeta^8 + 48*zeta^6 - 21*zeta^4 + 21*zeta^3 + 6*zeta + 21)*q^512 + 
(-8*zeta^11 - 8*zeta^4 - 8*zeta^3)*q^513 + (-28*zeta^11 + 2*zeta^8 + 2*zeta^6 - 
28*zeta^4 - 28*zeta^3 + 2*zeta)*q^514 + (4*zeta^11 - 20*zeta^8 - 20*zeta^6 + 
4*zeta^4 + 4*zeta^3 - 20*zeta)*q^515 + (-16*zeta^11 + 64*zeta^9 - 32*zeta^8 + 
32*zeta^6 - 16*zeta^4 + 48*zeta^3 - 32*zeta + 32)*q^516 + (8*zeta^11 - 16*zeta^9
+ 8*zeta^8 - 8*zeta^6 + 8*zeta^4 - 8*zeta^3 + 8*zeta - 8)*q^517 + (48*zeta^11 - 
96*zeta^9 + 20*zeta^8 - 76*zeta^6 + 48*zeta^4 - 48*zeta^3 + 20*zeta - 48)*q^519 
+ (28*zeta^9 - 14*zeta^8 + 14*zeta^6 + 28*zeta^3 - 14*zeta + 14)*q^520 + 
(34*zeta^11 - 36*zeta^8 - 36*zeta^6 + 34*zeta^4 + 34*zeta^3 - 36*zeta)*q^521 + 
(-8*zeta^8 - 8*zeta^6 - 8*zeta)*q^522 + (-8*zeta^11 - 40*zeta^9 + 20*zeta^8 - 
20*zeta^6 - 8*zeta^4 - 48*zeta^3 + 20*zeta - 20)*q^523 + (28*zeta^11 - 56*zeta^9
- 56*zeta^6 + 28*zeta^4 - 28*zeta^3 - 28)*q^524 + (6*zeta^11 - 12*zeta^9 + 
28*zeta^8 + 16*zeta^6 + 6*zeta^4 - 6*zeta^3 + 28*zeta - 6)*q^526 + (-32*zeta^11 
+ 40*zeta^9 - 20*zeta^8 + 20*zeta^6 - 32*zeta^4 + 8*zeta^3 - 20*zeta + 20)*q^527
+ (-12*zeta^11 + 12*zeta^8 + 12*zeta^6 - 12*zeta^4 - 12*zeta^3 + 12*zeta)*q^528 
+ (13*zeta^11 - 45*zeta^8 - 45*zeta^6 + 13*zeta^4 + 13*zeta^3 - 45*zeta)*q^529 +
(-4*zeta^11 - 4*zeta^4 - 4*zeta^3)*q^530 + (-8*zeta^8 - 8*zeta^6 - 8*zeta)*q^531
+ (-22*zeta^11 + 44*zeta^9 - 20*zeta^8 + 24*zeta^6 - 22*zeta^4 + 22*zeta^3 - 
20*zeta + 22)*q^533 + (-28*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 28*zeta^4
- 12*zeta^3 - 8*zeta + 8)*q^534 + (4*zeta^11 + 4*zeta^4 + 4*zeta^3)*q^535 + 
(-8*zeta^11 - 16*zeta^8 - 16*zeta^6 - 8*zeta^4 - 8*zeta^3 - 16*zeta)*q^536 + 
(16*zeta^11 + 56*zeta^9 - 28*zeta^8 + 28*zeta^6 + 16*zeta^4 + 72*zeta^3 - 
28*zeta + 28)*q^537 + (-2*zeta^11 + 4*zeta^9 + 14*zeta^8 + 18*zeta^6 - 2*zeta^4 
+ 2*zeta^3 + 14*zeta + 2)*q^538 + (-16*zeta^11 + 32*zeta^9 - 12*zeta^8 + 
20*zeta^6 - 16*zeta^4 + 16*zeta^3 - 12*zeta + 16)*q^540 + (-16*zeta^11 - 
12*zeta^9 + 6*zeta^8 - 6*zeta^6 - 16*zeta^4 - 28*zeta^3 + 6*zeta - 6)*q^541 + 
(24*zeta^11 + 4*zeta^8 + 4*zeta^6 + 24*zeta^4 + 24*zeta^3 + 4*zeta)*q^542 + 
(8*zeta^11 - 4*zeta^8 - 4*zeta^6 + 8*zeta^4 + 8*zeta^3 - 4*zeta)*q^543 + 
(-14*zeta^11 - 14*zeta^4 - 14*zeta^3)*q^544 + (-24*zeta^11 + 48*zeta^9 - 
16*zeta^8 + 32*zeta^6 - 24*zeta^4 + 24*zeta^3 - 16*zeta + 24)*q^545 + 
(44*zeta^11 - 88*zeta^9 + 24*zeta^8 - 64*zeta^6 + 44*zeta^4 - 44*zeta^3 + 
24*zeta - 44)*q^547 + (-20*zeta^11 + 80*zeta^9 - 40*zeta^8 + 40*zeta^6 - 
20*zeta^4 + 60*zeta^3 - 40*zeta + 40)*q^548 + (16*zeta^11 - 28*zeta^8 - 
28*zeta^6 + 16*zeta^4 + 16*zeta^3 - 28*zeta)*q^549 + (-14*zeta^11 + 2*zeta^8 + 
2*zeta^6 - 14*zeta^4 - 14*zeta^3 + 2*zeta)*q^550 + (16*zeta^11 + 16*zeta^9 - 
8*zeta^8 + 8*zeta^6 + 16*zeta^4 + 32*zeta^3 - 8*zeta + 8)*q^551 + (-36*zeta^11 +
72*zeta^9 - 40*zeta^8 + 32*zeta^6 - 36*zeta^4 + 36*zeta^3 - 40*zeta + 36)*q^552 
+ (-2*zeta^11 + 4*zeta^9 - 20*zeta^8 - 16*zeta^6 - 2*zeta^4 + 2*zeta^3 - 20*zeta
+ 2)*q^554 + (-16*zeta^11 - 32*zeta^9 + 16*zeta^8 - 16*zeta^6 - 16*zeta^4 - 
48*zeta^3 + 16*zeta - 16)*q^555 + (-4*zeta^11 + 44*zeta^8 + 44*zeta^6 - 4*zeta^4
- 4*zeta^3 + 44*zeta)*q^556 + (26*zeta^11 - 26*zeta^8 - 26*zeta^6 + 26*zeta^4 + 
26*zeta^3 - 26*zeta)*q^557 + (24*zeta^11 - 32*zeta^9 + 16*zeta^8 - 16*zeta^6 + 
24*zeta^4 - 8*zeta^3 + 16*zeta - 16)*q^558 + (24*zeta^11 - 48*zeta^9 + 32*zeta^8
- 16*zeta^6 + 24*zeta^4 - 24*zeta^3 + 32*zeta - 24)*q^559 + (16*zeta^11 - 
32*zeta^9 + 24*zeta^8 - 8*zeta^6 + 16*zeta^4 - 16*zeta^3 + 24*zeta - 16)*q^561 +
(28*zeta^11 - 40*zeta^9 + 20*zeta^8 - 20*zeta^6 + 28*zeta^4 - 12*zeta^3 + 
20*zeta - 20)*q^562 + (4*zeta^11 + 4*zeta^4 + 4*zeta^3)*q^563 + (-16*zeta^11 + 
8*zeta^8 + 8*zeta^6 - 16*zeta^4 - 16*zeta^3 + 8*zeta)*q^564 + (-20*zeta^11 - 
8*zeta^9 + 4*zeta^8 - 4*zeta^6 - 20*zeta^4 - 28*zeta^3 + 4*zeta - 4)*q^565 + 
(12*zeta^8 + 12*zeta^6 + 12*zeta)*q^566 + (30*zeta^11 - 60*zeta^9 + 52*zeta^8 - 
8*zeta^6 + 30*zeta^4 - 30*zeta^3 + 52*zeta - 30)*q^568 + (12*zeta^11 + 16*zeta^9
- 8*zeta^8 + 8*zeta^6 + 12*zeta^4 + 28*zeta^3 - 8*zeta + 8)*q^569 + (-8*zeta^11 
+ 8*zeta^8 + 8*zeta^6 - 8*zeta^4 - 8*zeta^3 + 8*zeta)*q^570 + (28*zeta^11 - 
20*zeta^8 - 20*zeta^6 + 28*zeta^4 + 28*zeta^3 - 20*zeta)*q^571 + (36*zeta^11 - 
32*zeta^9 + 16*zeta^8 - 16*zeta^6 + 36*zeta^4 + 4*zeta^3 + 16*zeta - 16)*q^572 +
(36*zeta^11 - 72*zeta^9 - 72*zeta^6 + 36*zeta^4 - 36*zeta^3 - 36)*q^573 + 
(58*zeta^11 - 116*zeta^9 + 24*zeta^8 - 92*zeta^6 + 58*zeta^4 - 58*zeta^3 + 
24*zeta - 58)*q^575 + (8*zeta^11 - 28*zeta^9 + 14*zeta^8 - 14*zeta^6 + 8*zeta^4 
- 20*zeta^3 + 14*zeta - 14)*q^576 + (24*zeta^11 - 38*zeta^8 - 38*zeta^6 + 
24*zeta^4 + 24*zeta^3 - 38*zeta)*q^577 + (-29*zeta^11 - 5*zeta^8 - 5*zeta^6 - 
29*zeta^4 - 29*zeta^3 - 5*zeta)*q^578 + (-32*zeta^11 + 24*zeta^9 - 12*zeta^8 + 
12*zeta^6 - 32*zeta^4 - 8*zeta^3 - 12*zeta + 12)*q^579 + (52*zeta^11 - 
104*zeta^9 + 32*zeta^8 - 72*zeta^6 + 52*zeta^4 - 52*zeta^3 + 32*zeta - 52)*q^580
+ (8*zeta^11 - 16*zeta^9 + 20*zeta^8 + 4*zeta^6 + 8*zeta^4 - 8*zeta^3 + 20*zeta 
- 8)*q^582 + (-8*zeta^9 + 4*zeta^8 - 4*zeta^6 - 8*zeta^3 + 4*zeta - 4)*q^583 + 
(-2*zeta^11 - 32*zeta^8 - 32*zeta^6 - 2*zeta^4 - 2*zeta^3 - 32*zeta)*q^584 + 
(-12*zeta^11 + 20*zeta^8 + 20*zeta^6 - 12*zeta^4 - 12*zeta^3 + 20*zeta)*q^585 + 
(38*zeta^11 - 40*zeta^9 + 20*zeta^8 - 20*zeta^6 + 38*zeta^4 - 2*zeta^3 + 20*zeta
- 20)*q^586 + (-24*zeta^11 + 48*zeta^9 - 4*zeta^8 + 44*zeta^6 - 24*zeta^4 + 
24*zeta^3 - 4*zeta + 24)*q^587 + (-8*zeta^11 + 16*zeta^9 - 16*zeta^8 - 8*zeta^4 
+ 8*zeta^3 - 16*zeta + 8)*q^589 + (8*zeta^11 - 8*zeta^9 + 4*zeta^8 - 4*zeta^6 + 
8*zeta^4 + 4*zeta - 4)*q^590 + (4*zeta^11 - 4*zeta^8 - 4*zeta^6 + 4*zeta^4 + 
4*zeta^3 - 4*zeta)*q^591 + (-12*zeta^11 + 12*zeta^8 + 12*zeta^6 - 12*zeta^4 - 
12*zeta^3 + 12*zeta)*q^592 + (10*zeta^11 - 28*zeta^9 + 14*zeta^8 - 14*zeta^6 + 
10*zeta^4 - 18*zeta^3 + 14*zeta - 14)*q^593 + (4*zeta^11 - 8*zeta^9 + 8*zeta^8 +
4*zeta^4 - 4*zeta^3 + 8*zeta - 4)*q^594 + (34*zeta^11 - 68*zeta^9 + 8*zeta^8 - 
60*zeta^6 + 34*zeta^4 - 34*zeta^3 + 8*zeta - 34)*q^596 + (16*zeta^11 + 64*zeta^9
- 32*zeta^8 + 32*zeta^6 + 16*zeta^4 + 80*zeta^3 - 32*zeta + 32)*q^597 + 
(28*zeta^11 + 28*zeta^4 + 28*zeta^3)*q^598 + (-2*zeta^11 + 2*zeta^8 + 2*zeta^6 -
2*zeta^4 - 2*zeta^3 + 2*zeta)*q^599 + (44*zeta^11 - 20*zeta^9 + 10*zeta^8 - 
10*zeta^6 + 44*zeta^4 + 24*zeta^3 + 10*zeta - 10)*q^600 + (-18*zeta^11 + 
36*zeta^9 - 10*zeta^8 + 26*zeta^6 - 18*zeta^4 + 18*zeta^3 - 10*zeta + 18)*q^601 
+ (-16*zeta^11 + 32*zeta^9 - 16*zeta^8 + 16*zeta^6 - 16*zeta^4 + 16*zeta^3 - 
16*zeta + 16)*q^603 + (48*zeta^11 - 24*zeta^9 + 12*zeta^8 - 12*zeta^6 + 
48*zeta^4 + 24*zeta^3 + 12*zeta - 12)*q^604 + (14*zeta^11 - 28*zeta^8 - 
28*zeta^6 + 14*zeta^4 + 14*zeta^3 - 28*zeta)*q^605 + (40*zeta^11 + 20*zeta^8 + 
20*zeta^6 + 40*zeta^4 + 40*zeta^3 + 20*zeta)*q^606 + (8*zeta^11 - 48*zeta^9 + 
24*zeta^8 - 24*zeta^6 + 8*zeta^4 - 40*zeta^3 + 24*zeta - 24)*q^607 + 
(-16*zeta^11 + 32*zeta^9 - 12*zeta^8 + 20*zeta^6 - 16*zeta^4 + 16*zeta^3 - 
12*zeta + 16)*q^608 + (-22*zeta^11 + 44*zeta^9 - 16*zeta^8 + 28*zeta^6 - 
22*zeta^4 + 22*zeta^3 - 16*zeta + 22)*q^610 + (16*zeta^11 - 8*zeta^9 + 4*zeta^8 
- 4*zeta^6 + 16*zeta^4 + 8*zeta^3 + 4*zeta - 4)*q^611 + (28*zeta^11 + 28*zeta^4 
+ 28*zeta^3)*q^612 + (16*zeta^11 + 16*zeta^4 + 16*zeta^3)*q^613 + (12*zeta^11 + 
8*zeta^9 - 4*zeta^8 + 4*zeta^6 + 12*zeta^4 + 20*zeta^3 - 4*zeta + 4)*q^614 + 
(-52*zeta^11 + 104*zeta^9 - 32*zeta^8 + 72*zeta^6 - 52*zeta^4 + 52*zeta^3 - 
32*zeta + 52)*q^615 + (28*zeta^11 - 56*zeta^9 + 12*zeta^8 - 44*zeta^6 + 
28*zeta^4 - 28*zeta^3 + 12*zeta - 28)*q^617 + (-40*zeta^11 + 64*zeta^9 - 
32*zeta^8 + 32*zeta^6 - 40*zeta^4 + 24*zeta^3 - 32*zeta + 32)*q^618 + 
(-12*zeta^11 + 36*zeta^8 + 36*zeta^6 - 12*zeta^4 - 12*zeta^3 + 36*zeta)*q^619 + 
(-4*zeta^11 - 12*zeta^8 - 12*zeta^6 - 4*zeta^4 - 4*zeta^3 - 12*zeta)*q^620 + 
(16*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 + 16*zeta^4 + 24*zeta^3 - 4*zeta + 
4)*q^621 + (-8*zeta^11 + 16*zeta^9 - 36*zeta^8 - 20*zeta^6 - 8*zeta^4 + 8*zeta^3
- 36*zeta + 8)*q^622 + (12*zeta^11 - 24*zeta^9 - 12*zeta^8 - 36*zeta^6 + 
12*zeta^4 - 12*zeta^3 - 12*zeta - 12)*q^624 + (24*zeta^11 - 6*zeta^9 + 3*zeta^8 
- 3*zeta^6 + 24*zeta^4 + 18*zeta^3 + 3*zeta - 3)*q^625 + (-22*zeta^11 - 8*zeta^8
- 8*zeta^6 - 22*zeta^4 - 22*zeta^3 - 8*zeta)*q^626 + (16*zeta^8 + 16*zeta^6 + 
16*zeta)*q^627 + (-70*zeta^11 + 56*zeta^9 - 28*zeta^8 + 28*zeta^6 - 70*zeta^4 - 
14*zeta^3 - 28*zeta + 28)*q^628 + (16*zeta^11 - 32*zeta^9 + 24*zeta^8 - 8*zeta^6
+ 16*zeta^4 - 16*zeta^3 + 24*zeta - 16)*q^629 + (-28*zeta^11 + 56*zeta^9 - 
16*zeta^8 + 40*zeta^6 - 28*zeta^4 + 28*zeta^3 - 16*zeta + 28)*q^631 + (8*zeta^11
+ 32*zeta^9 - 16*zeta^8 + 16*zeta^6 + 8*zeta^4 + 40*zeta^3 - 16*zeta + 16)*q^632
+ (-8*zeta^11 - 40*zeta^8 - 40*zeta^6 - 8*zeta^4 - 8*zeta^3 - 40*zeta)*q^633 + 
(-10*zeta^11 - 10*zeta^8 - 10*zeta^6 - 10*zeta^4 - 10*zeta^3 - 10*zeta)*q^634 + 
(-8*zeta^11 - 8*zeta^4 - 8*zeta^3)*q^635 + (-12*zeta^11 + 24*zeta^9 - 16*zeta^8 
+ 8*zeta^6 - 12*zeta^4 + 12*zeta^3 - 16*zeta + 12)*q^636 + (-8*zeta^11 + 
16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 8*zeta^4 + 8*zeta^3 - 8*zeta + 8)*q^638 + 
(32*zeta^11 - 8*zeta^9 + 4*zeta^8 - 4*zeta^6 + 32*zeta^4 + 24*zeta^3 + 4*zeta - 
4)*q^639 + (12*zeta^11 - 46*zeta^8 - 46*zeta^6 + 12*zeta^4 + 12*zeta^3 - 
46*zeta)*q^640 + (-8*zeta^11 + 12*zeta^8 + 12*zeta^6 - 8*zeta^4 - 8*zeta^3 + 
12*zeta)*q^641 + (40*zeta^11 - 56*zeta^9 + 28*zeta^8 - 28*zeta^6 + 40*zeta^4 - 
16*zeta^3 + 28*zeta - 28)*q^642 + (-52*zeta^11 + 104*zeta^9 - 60*zeta^8 + 
44*zeta^6 - 52*zeta^4 + 52*zeta^3 - 60*zeta + 52)*q^643 + (48*zeta^11 - 
96*zeta^9 + 32*zeta^8 - 64*zeta^6 + 48*zeta^4 - 48*zeta^3 + 32*zeta - 48)*q^645 
+ (-32*zeta^11 + 40*zeta^9 - 20*zeta^8 + 20*zeta^6 - 32*zeta^4 + 8*zeta^3 - 
20*zeta + 20)*q^646 + (-24*zeta^11 + 28*zeta^8 + 28*zeta^6 - 24*zeta^4 - 
24*zeta^3 + 28*zeta)*q^647 + (6*zeta^11 - 2*zeta^8 - 2*zeta^6 + 6*zeta^4 + 
6*zeta^3 - 2*zeta)*q^648 + (-8*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 
8*zeta^4 + 8*zeta^3 - 8*zeta + 8)*q^649 + (-4*zeta^11 + 8*zeta^9 - 38*zeta^8 - 
30*zeta^6 - 4*zeta^4 + 4*zeta^3 - 38*zeta + 4)*q^650 + (-16*zeta^11 + 32*zeta^9 
+ 16*zeta^8 + 48*zeta^6 - 16*zeta^4 + 16*zeta^3 + 16*zeta + 16)*q^652 + 
(-12*zeta^11 - 56*zeta^9 + 28*zeta^8 - 28*zeta^6 - 12*zeta^4 - 68*zeta^3 + 
28*zeta - 28)*q^653 + (-16*zeta^11 - 16*zeta^4 - 16*zeta^3)*q^654 + (-24*zeta^11
+ 64*zeta^8 + 64*zeta^6 - 24*zeta^4 - 24*zeta^3 + 64*zeta)*q^655 + (18*zeta^11 +
12*zeta^9 - 6*zeta^8 + 6*zeta^6 + 18*zeta^4 + 30*zeta^3 - 6*zeta + 6)*q^656 + 
(-36*zeta^11 + 72*zeta^9 - 28*zeta^8 + 44*zeta^6 - 36*zeta^4 + 36*zeta^3 - 
28*zeta + 36)*q^657 + (-14*zeta^11 + 28*zeta^9 - 16*zeta^8 + 12*zeta^6 - 
14*zeta^4 + 14*zeta^3 - 16*zeta + 14)*q^659 + (24*zeta^11 + 16*zeta^9 - 8*zeta^8
+ 8*zeta^6 + 24*zeta^4 + 40*zeta^3 - 8*zeta + 8)*q^660 + (8*zeta^11 - 30*zeta^8 
- 30*zeta^6 + 8*zeta^4 + 8*zeta^3 - 30*zeta)*q^661 + (4*zeta^11 + 4*zeta^8 + 
4*zeta^6 + 4*zeta^4 + 4*zeta^3 + 4*zeta)*q^662 + (56*zeta^11 - 56*zeta^9 + 
28*zeta^8 - 28*zeta^6 + 56*zeta^4 + 28*zeta - 28)*q^663 + (-28*zeta^11 + 
56*zeta^9 - 56*zeta^8 - 28*zeta^4 + 28*zeta^3 - 56*zeta + 28)*q^664 + 
(-8*zeta^11 + 16*zeta^9 - 16*zeta^8 - 8*zeta^4 + 8*zeta^3 - 16*zeta + 8)*q^666 +
(-40*zeta^11 - 48*zeta^9 + 24*zeta^8 - 24*zeta^6 - 40*zeta^4 - 88*zeta^3 + 
24*zeta - 24)*q^667 + (-56*zeta^11 + 28*zeta^8 + 28*zeta^6 - 56*zeta^4 - 
56*zeta^3 + 28*zeta)*q^668 + (-16*zeta^11 + 64*zeta^8 + 64*zeta^6 - 16*zeta^4 - 
16*zeta^3 + 64*zeta)*q^669 + (-16*zeta^9 + 8*zeta^8 - 8*zeta^6 - 16*zeta^3 + 
8*zeta - 8)*q^670 + (-28*zeta^11 + 56*zeta^9 - 12*zeta^8 + 44*zeta^6 - 28*zeta^4
+ 28*zeta^3 - 12*zeta + 28)*q^671 + (-28*zeta^11 + 56*zeta^9 - 16*zeta^8 + 
40*zeta^6 - 28*zeta^4 + 28*zeta^3 - 16*zeta + 28)*q^673 + (40*zeta^11 - 
32*zeta^9 + 16*zeta^8 - 16*zeta^6 + 40*zeta^4 + 8*zeta^3 + 16*zeta - 16)*q^674 +
(2*zeta^11 - 18*zeta^8 - 18*zeta^6 + 2*zeta^4 + 2*zeta^3 - 18*zeta)*q^675 + 
(37*zeta^11 - zeta^8 - zeta^6 + 37*zeta^4 + 37*zeta^3 - zeta)*q^676 + (2*zeta^11
+ 60*zeta^9 - 30*zeta^8 + 30*zeta^6 + 2*zeta^4 + 62*zeta^3 - 30*zeta + 30)*q^677
+ (-12*zeta^11 + 24*zeta^9 - 56*zeta^8 - 32*zeta^6 - 12*zeta^4 + 12*zeta^3 - 
56*zeta + 12)*q^678 + (-18*zeta^11 + 36*zeta^9 - 20*zeta^8 + 16*zeta^6 - 
18*zeta^4 + 18*zeta^3 - 20*zeta + 18)*q^680 + (56*zeta^11 + 16*zeta^9 - 8*zeta^8
+ 8*zeta^6 + 56*zeta^4 + 72*zeta^3 - 8*zeta + 8)*q^681 + (16*zeta^11 + 8*zeta^8 
+ 8*zeta^6 + 16*zeta^4 + 16*zeta^3 + 8*zeta)*q^682 + (-14*zeta^11 + 22*zeta^8 + 
22*zeta^6 - 14*zeta^4 - 14*zeta^3 + 22*zeta)*q^683 + (8*zeta^11 - 32*zeta^9 + 
16*zeta^8 - 16*zeta^6 + 8*zeta^4 - 24*zeta^3 + 16*zeta - 16)*q^684 + (60*zeta^11
- 120*zeta^9 + 40*zeta^8 - 80*zeta^6 + 60*zeta^4 - 60*zeta^3 + 40*zeta - 
60)*q^685 + (-4*zeta^11 + 8*zeta^9 - 12*zeta^8 - 4*zeta^6 - 4*zeta^4 + 4*zeta^3 
- 12*zeta + 4)*q^687 + (-24*zeta^11 - 24*zeta^4 - 24*zeta^3)*q^688 + (8*zeta^11 
- 4*zeta^8 - 4*zeta^6 + 8*zeta^4 + 8*zeta^3 - 4*zeta)*q^689 + (16*zeta^11 - 
24*zeta^8 - 24*zeta^6 + 16*zeta^4 + 16*zeta^3 - 24*zeta)*q^690 + (16*zeta^11 - 
24*zeta^9 + 12*zeta^8 - 12*zeta^6 + 16*zeta^4 - 8*zeta^3 + 12*zeta - 12)*q^691 +
(-52*zeta^11 + 104*zeta^9 - 46*zeta^8 + 58*zeta^6 - 52*zeta^4 + 52*zeta^3 - 
46*zeta + 52)*q^692 + (-22*zeta^11 + 44*zeta^9 - 28*zeta^8 + 16*zeta^6 - 
22*zeta^4 + 22*zeta^3 - 28*zeta + 22)*q^694 + (40*zeta^11 + 64*zeta^9 - 
32*zeta^8 + 32*zeta^6 + 40*zeta^4 + 104*zeta^3 - 32*zeta + 32)*q^695 + 
(16*zeta^11 - 24*zeta^8 - 24*zeta^6 + 16*zeta^4 + 16*zeta^3 - 24*zeta)*q^696 + 
(-14*zeta^11 + 14*zeta^8 + 14*zeta^6 - 14*zeta^4 - 14*zeta^3 + 14*zeta)*q^697 + 
(14*zeta^11 - 28*zeta^9 + 14*zeta^8 - 14*zeta^6 + 14*zeta^4 - 14*zeta^3 + 
14*zeta - 14)*q^698 + (24*zeta^11 - 48*zeta^9 + 40*zeta^8 - 8*zeta^6 + 24*zeta^4
- 24*zeta^3 + 40*zeta - 24)*q^699 + (16*zeta^11 - 32*zeta^9 - 4*zeta^8 - 
36*zeta^6 + 16*zeta^4 - 16*zeta^3 - 4*zeta - 16)*q^701 + (20*zeta^11 - 24*zeta^9
+ 12*zeta^8 - 12*zeta^6 + 20*zeta^4 - 4*zeta^3 + 12*zeta - 12)*q^702 + 
(16*zeta^8 + 16*zeta^6 + 16*zeta)*q^703 + (14*zeta^11 - 6*zeta^8 - 6*zeta^6 + 
14*zeta^4 + 14*zeta^3 - 6*zeta)*q^704 + (16*zeta^11 + 16*zeta^9 - 8*zeta^8 + 
8*zeta^6 + 16*zeta^4 + 32*zeta^3 - 8*zeta + 8)*q^705 + (-2*zeta^11 + 4*zeta^9 + 
14*zeta^8 + 18*zeta^6 - 2*zeta^4 + 2*zeta^3 + 14*zeta + 2)*q^706 + (16*zeta^11 -
32*zeta^9 + 40*zeta^8 + 8*zeta^6 + 16*zeta^4 - 16*zeta^3 + 40*zeta - 16)*q^708 +
(40*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 + 40*zeta^4 + 56*zeta^3 - 8*zeta +
8)*q^709 + (-16*zeta^11 + 12*zeta^8 + 12*zeta^6 - 16*zeta^4 - 16*zeta^3 + 
12*zeta)*q^710 + (-16*zeta^11 + 32*zeta^8 + 32*zeta^6 - 16*zeta^4 - 16*zeta^3 + 
32*zeta)*q^711 + (-2*zeta^11 + 48*zeta^9 - 24*zeta^8 + 24*zeta^6 - 2*zeta^4 + 
46*zeta^3 - 24*zeta + 24)*q^712 + (16*zeta^11 - 32*zeta^9 + 24*zeta^8 - 8*zeta^6
+ 16*zeta^4 - 16*zeta^3 + 24*zeta - 16)*q^713 + (20*zeta^11 - 40*zeta^9 + 
8*zeta^8 - 32*zeta^6 + 20*zeta^4 - 20*zeta^3 + 8*zeta - 20)*q^715 + (-48*zeta^11
- 4*zeta^9 + 2*zeta^8 - 2*zeta^6 - 48*zeta^4 - 52*zeta^3 + 2*zeta - 2)*q^716 + 
(-20*zeta^11 + 36*zeta^8 + 36*zeta^6 - 20*zeta^4 - 20*zeta^3 + 36*zeta)*q^717 + 
(14*zeta^11 + 6*zeta^8 + 6*zeta^6 + 14*zeta^4 + 14*zeta^3 + 6*zeta)*q^718 + 
(48*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 + 48*zeta^4 + 64*zeta^3 - 8*zeta +
8)*q^719 + (-24*zeta^11 + 48*zeta^9 - 12*zeta^8 + 36*zeta^6 - 24*zeta^4 + 
24*zeta^3 - 12*zeta + 24)*q^720 + (11*zeta^11 - 22*zeta^9 + 22*zeta^8 + 
11*zeta^4 - 11*zeta^3 + 22*zeta - 11)*q^722 + (-12*zeta^11 - 48*zeta^9 + 
24*zeta^8 - 24*zeta^6 - 12*zeta^4 - 60*zeta^3 + 24*zeta - 24)*q^723 + (8*zeta^11
+ 10*zeta^8 + 10*zeta^6 + 8*zeta^4 + 8*zeta^3 + 10*zeta)*q^724 + (-20*zeta^11 + 
56*zeta^8 + 56*zeta^6 - 20*zeta^4 - 20*zeta^3 + 56*zeta)*q^725 + (28*zeta^11 - 
28*zeta^9 + 14*zeta^8 - 14*zeta^6 + 28*zeta^4 + 14*zeta - 14)*q^726 + 
(16*zeta^11 - 32*zeta^9 + 12*zeta^8 - 20*zeta^6 + 16*zeta^4 - 16*zeta^3 + 
12*zeta - 16)*q^727 + (2*zeta^11 - 4*zeta^9 - 4*zeta^6 + 2*zeta^4 - 2*zeta^3 - 
2)*q^729 + (-8*zeta^11 - 28*zeta^9 + 14*zeta^8 - 14*zeta^6 - 8*zeta^4 - 
36*zeta^3 + 14*zeta - 14)*q^730 + (24*zeta^11 - 8*zeta^8 - 8*zeta^6 + 24*zeta^4 
+ 24*zeta^3 - 8*zeta)*q^731 + (8*zeta^11 - 60*zeta^8 - 60*zeta^6 + 8*zeta^4 + 
8*zeta^3 - 60*zeta)*q^732 + (42*zeta^11 + 40*zeta^9 - 20*zeta^8 + 20*zeta^6 + 
42*zeta^4 + 82*zeta^3 - 20*zeta + 20)*q^733 + (8*zeta^11 - 16*zeta^9 + 32*zeta^8
+ 16*zeta^6 + 8*zeta^4 - 8*zeta^3 + 32*zeta - 8)*q^734 + (42*zeta^11 - 84*zeta^9
+ 28*zeta^8 - 56*zeta^6 + 42*zeta^4 - 42*zeta^3 + 28*zeta - 42)*q^736 + 
(-16*zeta^11 - 16*zeta^4 - 16*zeta^3)*q^737 + (8*zeta^11 - 4*zeta^8 - 4*zeta^6 +
8*zeta^4 + 8*zeta^3 - 4*zeta)*q^738 + (16*zeta^11 + 16*zeta^4 + 16*zeta^3)*q^739
+ (24*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 + 24*zeta^4 + 40*zeta^3 - 8*zeta
+ 8)*q^740 + (24*zeta^11 - 48*zeta^9 + 32*zeta^8 - 16*zeta^6 + 24*zeta^4 - 
24*zeta^3 + 32*zeta - 24)*q^741 + (58*zeta^11 - 116*zeta^9 + 24*zeta^8 - 
92*zeta^6 + 58*zeta^4 - 58*zeta^3 + 24*zeta - 58)*q^743 + (-40*zeta^11 + 
64*zeta^9 - 32*zeta^8 + 32*zeta^6 - 40*zeta^4 + 24*zeta^3 - 32*zeta + 32)*q^744 
+ (-28*zeta^11 + 72*zeta^8 + 72*zeta^6 - 28*zeta^4 - 28*zeta^3 + 72*zeta)*q^745 
+ (38*zeta^11 + 22*zeta^8 + 22*zeta^6 + 38*zeta^4 + 38*zeta^3 + 22*zeta)*q^746 +
(-32*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 32*zeta^4 - 16*zeta^3 - 8*zeta 
+ 8)*q^747 + (28*zeta^8 + 28*zeta^6 + 28*zeta)*q^748 + (-16*zeta^8 - 16*zeta^6 -
16*zeta)*q^750 + (-8*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 - 8*zeta^4 - 
24*zeta^3 + 8*zeta - 8)*q^751 + (-12*zeta^8 - 12*zeta^6 - 12*zeta)*q^752 + 
(8*zeta^11 - 32*zeta^8 - 32*zeta^6 + 8*zeta^4 + 8*zeta^3 - 32*zeta)*q^753 + 
(-16*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 - 16*zeta^4 - 8*zeta^3 - 4*zeta + 
4)*q^754 + (48*zeta^11 - 96*zeta^9 + 24*zeta^8 - 72*zeta^6 + 48*zeta^4 - 
48*zeta^3 + 24*zeta - 48)*q^755 + (-24*zeta^11 + 48*zeta^9 + 8*zeta^8 + 
56*zeta^6 - 24*zeta^4 + 24*zeta^3 + 8*zeta + 24)*q^757 + (-56*zeta^11 + 
72*zeta^9 - 36*zeta^8 + 36*zeta^6 - 56*zeta^4 + 16*zeta^3 - 36*zeta + 36)*q^758 
+ (8*zeta^11 - 40*zeta^8 - 40*zeta^6 + 8*zeta^4 + 8*zeta^3 - 40*zeta)*q^759 + 
(4*zeta^11 - 20*zeta^8 - 20*zeta^6 + 4*zeta^4 + 4*zeta^3 - 20*zeta)*q^760 + 
(-46*zeta^11 + 28*zeta^9 - 14*zeta^8 + 14*zeta^6 - 46*zeta^4 - 18*zeta^3 - 
14*zeta + 14)*q^761 + (-8*zeta^11 + 16*zeta^9 - 32*zeta^8 - 16*zeta^6 - 8*zeta^4
+ 8*zeta^3 - 32*zeta + 8)*q^762 + (-54*zeta^11 + 108*zeta^9 - 72*zeta^8 + 
36*zeta^6 - 54*zeta^4 + 54*zeta^3 - 72*zeta + 54)*q^764 + (-16*zeta^11 - 
8*zeta^9 + 4*zeta^8 - 4*zeta^6 - 16*zeta^4 - 24*zeta^3 + 4*zeta - 4)*q^765 + 
(-32*zeta^11 - 24*zeta^8 - 24*zeta^6 - 32*zeta^4 - 32*zeta^3 - 24*zeta)*q^766 + 
(-20*zeta^11 - 4*zeta^8 - 4*zeta^6 - 20*zeta^4 - 20*zeta^3 - 4*zeta)*q^767 + 
(-48*zeta^11 + 52*zeta^9 - 26*zeta^8 + 26*zeta^6 - 48*zeta^4 + 4*zeta^3 - 
26*zeta + 26)*q^768 + (42*zeta^11 - 84*zeta^9 + 42*zeta^8 - 42*zeta^6 + 
42*zeta^4 - 42*zeta^3 + 42*zeta - 42)*q^769 + (64*zeta^11 - 128*zeta^9 + 
60*zeta^8 - 68*zeta^6 + 64*zeta^4 - 64*zeta^3 + 60*zeta - 64)*q^771 + 
(-40*zeta^11 + 76*zeta^9 - 38*zeta^8 + 38*zeta^6 - 40*zeta^4 + 36*zeta^3 - 
38*zeta + 38)*q^772 + (-6*zeta^11 - 16*zeta^8 - 16*zeta^6 - 6*zeta^4 - 6*zeta^3 
- 16*zeta)*q^773 + (-16*zeta^11 - 16*zeta^4 - 16*zeta^3)*q^774 + (-28*zeta^11 + 
24*zeta^9 - 12*zeta^8 + 12*zeta^6 - 28*zeta^4 - 4*zeta^3 - 12*zeta + 12)*q^775 +
(14*zeta^8 + 14*zeta^6 + 14*zeta)*q^776 + (4*zeta^11 - 8*zeta^9 - 12*zeta^8 - 
20*zeta^6 + 4*zeta^4 - 4*zeta^3 - 12*zeta - 4)*q^778 + (8*zeta^11 + 24*zeta^9 - 
12*zeta^8 + 12*zeta^6 + 8*zeta^4 + 32*zeta^3 - 12*zeta + 12)*q^779 + (-4*zeta^11
+ 44*zeta^8 + 44*zeta^6 - 4*zeta^4 - 4*zeta^3 + 44*zeta)*q^780 + (4*zeta^11 + 
28*zeta^8 + 28*zeta^6 + 4*zeta^4 + 4*zeta^3 + 28*zeta)*q^781 + (44*zeta^11 - 
48*zeta^9 + 24*zeta^8 - 24*zeta^6 + 44*zeta^4 - 4*zeta^3 + 24*zeta - 24)*q^782 +
(16*zeta^11 - 32*zeta^9 + 8*zeta^8 - 24*zeta^6 + 16*zeta^4 - 16*zeta^3 + 8*zeta 
- 16)*q^783 + (-46*zeta^11 + 92*zeta^9 - 20*zeta^8 + 72*zeta^6 - 46*zeta^4 + 
46*zeta^3 - 20*zeta + 46)*q^785 + (16*zeta^11 - 48*zeta^9 + 24*zeta^8 - 
24*zeta^6 + 16*zeta^4 - 32*zeta^3 + 24*zeta - 24)*q^786 + (-36*zeta^11 + 
20*zeta^8 + 20*zeta^6 - 36*zeta^4 - 36*zeta^3 + 20*zeta)*q^787 + (2*zeta^11 + 
6*zeta^8 + 6*zeta^6 + 2*zeta^4 + 2*zeta^3 + 6*zeta)*q^788 + (-32*zeta^11 + 
24*zeta^9 - 12*zeta^8 + 12*zeta^6 - 32*zeta^4 - 8*zeta^3 - 12*zeta + 12)*q^789 +
(24*zeta^11 - 48*zeta^9 + 16*zeta^8 - 32*zeta^6 + 24*zeta^4 - 24*zeta^3 + 
16*zeta - 24)*q^790 + (4*zeta^11 - 8*zeta^9 - 8*zeta^8 - 16*zeta^6 + 4*zeta^4 - 
4*zeta^3 - 8*zeta - 4)*q^792 + (-8*zeta^11 - 52*zeta^9 + 26*zeta^8 - 26*zeta^6 -
8*zeta^4 - 60*zeta^3 + 26*zeta - 26)*q^793 + (42*zeta^11 + 16*zeta^8 + 16*zeta^6
+ 42*zeta^4 + 42*zeta^3 + 16*zeta)*q^794 + (8*zeta^11 - 16*zeta^8 - 16*zeta^6 + 
8*zeta^4 + 8*zeta^3 - 16*zeta)*q^795 + (-56*zeta^11 - 56*zeta^4 - 
56*zeta^3)*q^796 + (-16*zeta^11 + 32*zeta^9 - 26*zeta^8 + 6*zeta^6 - 16*zeta^4 +
16*zeta^3 - 26*zeta + 16)*q^797 + (-4*zeta^11 + 8*zeta^9 + 8*zeta^8 + 16*zeta^6 
- 4*zeta^4 + 4*zeta^3 + 8*zeta + 4)*q^799 + (-26*zeta^11 - 22*zeta^9 + 11*zeta^8
- 11*zeta^6 - 26*zeta^4 - 48*zeta^3 + 11*zeta - 11)*q^800 + (-20*zeta^11 + 
32*zeta^8 + 32*zeta^6 - 20*zeta^4 - 20*zeta^3 + 32*zeta)*q^801 + (-28*zeta^11 - 
8*zeta^8 - 8*zeta^6 - 28*zeta^4 - 28*zeta^3 - 8*zeta)*q^802 + (-28*zeta^11 - 
16*zeta^9 + 8*zeta^8 - 8*zeta^6 - 28*zeta^4 - 44*zeta^3 + 8*zeta - 8)*q^803 + 
(-16*zeta^11 + 32*zeta^9 + 16*zeta^8 + 48*zeta^6 - 16*zeta^4 + 16*zeta^3 + 
16*zeta + 16)*q^804 + (20*zeta^11 - 40*zeta^9 + 64*zeta^8 + 24*zeta^6 + 
20*zeta^4 - 20*zeta^3 + 64*zeta - 20)*q^806 + (-36*zeta^11 - 8*zeta^9 + 4*zeta^8
- 4*zeta^6 - 36*zeta^4 - 44*zeta^3 + 4*zeta - 4)*q^807 + (40*zeta^11 + 10*zeta^8
+ 10*zeta^6 + 40*zeta^4 + 40*zeta^3 + 10*zeta)*q^808 + (-14*zeta^11 - 34*zeta^8 
- 34*zeta^6 - 14*zeta^4 - 14*zeta^3 - 34*zeta)*q^809 + (-4*zeta^11 - 4*zeta^4 - 
4*zeta^3)*q^810 + (-20*zeta^11 + 40*zeta^9 - 8*zeta^8 + 32*zeta^6 - 20*zeta^4 + 
20*zeta^3 - 8*zeta + 20)*q^811 + (-32*zeta^11 + 64*zeta^9 - 40*zeta^8 + 
24*zeta^6 - 32*zeta^4 + 32*zeta^3 - 40*zeta + 32)*q^813 + (-16*zeta^11 + 
16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 16*zeta^4 - 8*zeta + 8)*q^814 + (16*zeta^11 - 
48*zeta^8 - 48*zeta^6 + 16*zeta^4 + 16*zeta^3 - 48*zeta)*q^815 + (-12*zeta^11 - 
24*zeta^8 - 24*zeta^6 - 12*zeta^4 - 12*zeta^3 - 24*zeta)*q^816 + (-32*zeta^9 + 
16*zeta^8 - 16*zeta^6 - 32*zeta^3 + 16*zeta - 16)*q^817 + (-20*zeta^11 + 
40*zeta^9 - 38*zeta^8 + 2*zeta^6 - 20*zeta^4 + 20*zeta^3 - 38*zeta + 20)*q^818 +
(46*zeta^11 - 92*zeta^9 + 24*zeta^8 - 68*zeta^6 + 46*zeta^4 - 46*zeta^3 + 
24*zeta - 46)*q^820 + (-16*zeta^11 + 44*zeta^9 - 22*zeta^8 + 22*zeta^6 - 
16*zeta^4 + 28*zeta^3 - 22*zeta + 22)*q^821 + (40*zeta^11 + 40*zeta^4 + 
40*zeta^3)*q^822 + (-8*zeta^11 - 16*zeta^8 - 16*zeta^6 - 8*zeta^4 - 8*zeta^3 - 
16*zeta)*q^823 + (-44*zeta^11 + 48*zeta^9 - 24*zeta^8 + 24*zeta^6 - 44*zeta^4 + 
4*zeta^3 - 24*zeta + 24)*q^824 + (36*zeta^11 - 72*zeta^9 + 32*zeta^8 - 40*zeta^6
+ 36*zeta^4 - 36*zeta^3 + 32*zeta - 36)*q^825 + (-50*zeta^11 + 100*zeta^9 - 
8*zeta^8 + 92*zeta^6 - 50*zeta^4 + 50*zeta^3 - 8*zeta + 50)*q^827 + (56*zeta^9 -
28*zeta^8 + 28*zeta^6 + 56*zeta^3 - 28*zeta + 28)*q^828 + (-12*zeta^11 - 
6*zeta^8 - 6*zeta^6 - 12*zeta^4 - 12*zeta^3 - 6*zeta)*q^829 + (16*zeta^11 - 
8*zeta^8 - 8*zeta^6 + 16*zeta^4 + 16*zeta^3 - 8*zeta)*q^830 + (32*zeta^11 - 
8*zeta^9 + 4*zeta^8 - 4*zeta^6 + 32*zeta^4 + 24*zeta^3 + 4*zeta - 4)*q^831 + 
(-2*zeta^11 + 4*zeta^9 + 30*zeta^8 + 34*zeta^6 - 2*zeta^4 + 2*zeta^3 + 30*zeta +
2)*q^832 + (-24*zeta^11 + 48*zeta^9 - 32*zeta^8 + 16*zeta^6 - 24*zeta^4 + 
24*zeta^3 - 32*zeta + 24)*q^834 + (56*zeta^11 + 56*zeta^9 - 28*zeta^8 + 
28*zeta^6 + 56*zeta^4 + 112*zeta^3 - 28*zeta + 28)*q^835 + (16*zeta^11 - 
8*zeta^8 - 8*zeta^6 + 16*zeta^4 + 16*zeta^3 - 8*zeta)*q^836 + (8*zeta^11 + 
8*zeta^4 + 8*zeta^3)*q^837 + (76*zeta^11 - 80*zeta^9 + 40*zeta^8 - 40*zeta^6 + 
76*zeta^4 - 4*zeta^3 + 40*zeta - 40)*q^838 + (52*zeta^11 - 104*zeta^9 + 4*zeta^8
- 100*zeta^6 + 52*zeta^4 - 52*zeta^3 + 4*zeta - 52)*q^839 + (-27*zeta^11 + 
54*zeta^9 - 32*zeta^8 + 22*zeta^6 - 27*zeta^4 + 27*zeta^3 - 32*zeta + 27)*q^841 
+ (44*zeta^11 - 76*zeta^9 + 38*zeta^8 - 38*zeta^6 + 44*zeta^4 - 32*zeta^3 + 
38*zeta - 38)*q^842 + (-16*zeta^11 - 8*zeta^8 - 8*zeta^6 - 16*zeta^4 - 16*zeta^3
- 8*zeta)*q^843 + (-52*zeta^11 + 12*zeta^8 + 12*zeta^6 - 52*zeta^4 - 52*zeta^3 +
12*zeta)*q^844 + (-22*zeta^11 - 12*zeta^9 + 6*zeta^8 - 6*zeta^6 - 22*zeta^4 - 
34*zeta^3 + 6*zeta - 6)*q^845 + (-8*zeta^8 - 8*zeta^6 - 8*zeta)*q^846 + 
(6*zeta^11 - 12*zeta^9 - 12*zeta^6 + 6*zeta^4 - 6*zeta^3 - 6)*q^848 + 
(-24*zeta^11 - 24*zeta^4 - 24*zeta^3)*q^849 + (-32*zeta^11 - 22*zeta^8 - 
22*zeta^6 - 32*zeta^4 - 32*zeta^3 - 22*zeta)*q^850 + (8*zeta^11 - 40*zeta^8 - 
40*zeta^6 + 8*zeta^4 + 8*zeta^3 - 40*zeta)*q^851 + (-48*zeta^11 + 136*zeta^9 - 
68*zeta^8 + 68*zeta^6 - 48*zeta^4 + 88*zeta^3 - 68*zeta + 68)*q^852 + 
(-70*zeta^11 + 140*zeta^9 - 70*zeta^8 + 70*zeta^6 - 70*zeta^4 + 70*zeta^3 - 
70*zeta + 70)*q^853 + (-24*zeta^11 + 48*zeta^9 - 16*zeta^8 + 32*zeta^6 - 
24*zeta^4 + 24*zeta^3 - 16*zeta + 24)*q^855 + (36*zeta^11 - 52*zeta^9 + 
26*zeta^8 - 26*zeta^6 + 36*zeta^4 - 16*zeta^3 + 26*zeta - 26)*q^856 + 
(-14*zeta^11 + 16*zeta^8 + 16*zeta^6 - 14*zeta^4 - 14*zeta^3 + 16*zeta)*q^857 + 
(-24*zeta^11 - 16*zeta^8 - 16*zeta^6 - 24*zeta^4 - 24*zeta^3 - 16*zeta)*q^858 + 
(36*zeta^11 + 64*zeta^9 - 32*zeta^8 + 32*zeta^6 + 36*zeta^4 + 100*zeta^3 - 
32*zeta + 32)*q^859 + (-40*zeta^11 + 80*zeta^9 - 16*zeta^8 + 64*zeta^6 - 
40*zeta^4 + 40*zeta^3 - 16*zeta + 40)*q^860 + (10*zeta^11 - 20*zeta^9 - 4*zeta^8
- 24*zeta^6 + 10*zeta^4 - 10*zeta^3 - 4*zeta - 10)*q^862 + (-16*zeta^11 - 
12*zeta^9 + 6*zeta^8 - 6*zeta^6 - 16*zeta^4 - 28*zeta^3 + 6*zeta - 6)*q^863 + 
(6*zeta^11 - 10*zeta^8 - 10*zeta^6 + 6*zeta^4 + 6*zeta^3 - 10*zeta)*q^864 + 
(38*zeta^11 - 86*zeta^8 - 86*zeta^6 + 38*zeta^4 + 38*zeta^3 - 86*zeta)*q^865 + 
(-26*zeta^11 + 20*zeta^9 - 10*zeta^8 + 10*zeta^6 - 26*zeta^4 - 6*zeta^3 - 
10*zeta + 10)*q^866 + (38*zeta^11 - 76*zeta^9 + 48*zeta^8 - 28*zeta^6 + 
38*zeta^4 - 38*zeta^3 + 48*zeta - 38)*q^867 + (32*zeta^11 - 64*zeta^9 + 
16*zeta^8 - 48*zeta^6 + 32*zeta^4 - 32*zeta^3 + 16*zeta - 32)*q^869 + 
(-16*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 - 16*zeta^4 - 32*zeta^3 + 8*zeta 
- 8)*q^870 + (-8*zeta^11 - 24*zeta^8 - 24*zeta^6 - 8*zeta^4 - 8*zeta^3 - 
24*zeta)*q^871 + (-8*zeta^11 - 16*zeta^8 - 16*zeta^6 - 8*zeta^4 - 8*zeta^3 - 
16*zeta)*q^872 + (4*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 4*zeta^4 - 
12*zeta^3 + 8*zeta - 8)*q^873 + (16*zeta^11 - 32*zeta^9 + 24*zeta^8 - 8*zeta^6 +
16*zeta^4 - 16*zeta^3 + 24*zeta - 16)*q^874 + (-52*zeta^11 + 104*zeta^9 - 
4*zeta^8 + 100*zeta^6 - 52*zeta^4 + 52*zeta^3 - 4*zeta + 52)*q^876 + (16*zeta^11
+ 16*zeta^4 + 16*zeta^3)*q^877 + (40*zeta^11 + 24*zeta^8 + 24*zeta^6 + 40*zeta^4
+ 40*zeta^3 + 24*zeta)*q^878 + (-36*zeta^11 + 32*zeta^8 + 32*zeta^6 - 36*zeta^4 
- 36*zeta^3 + 32*zeta)*q^879 + (-12*zeta^11 - 24*zeta^9 + 12*zeta^8 - 12*zeta^6 
- 12*zeta^4 - 36*zeta^3 + 12*zeta - 12)*q^880 + (20*zeta^11 - 40*zeta^9 - 
6*zeta^8 - 46*zeta^6 + 20*zeta^4 - 20*zeta^3 - 6*zeta - 20)*q^881 + (-16*zeta^8 
- 16*zeta^6 - 16*zeta)*q^883 + (84*zeta^11 - 140*zeta^9 + 70*zeta^8 - 70*zeta^6 
+ 84*zeta^4 - 56*zeta^3 + 70*zeta - 70)*q^884 + (-8*zeta^11 + 8*zeta^8 + 
8*zeta^6 - 8*zeta^4 - 8*zeta^3 + 8*zeta)*q^885 + (6*zeta^11 - 18*zeta^8 - 
18*zeta^6 + 6*zeta^4 + 6*zeta^3 - 18*zeta)*q^886 + (-4*zeta^11 - 4*zeta^4 - 
4*zeta^3)*q^887 + (-8*zeta^11 + 16*zeta^9 + 16*zeta^8 + 32*zeta^6 - 8*zeta^4 + 
8*zeta^3 + 16*zeta + 8)*q^888 + (26*zeta^11 - 52*zeta^9 + 20*zeta^8 - 32*zeta^6 
+ 26*zeta^4 - 26*zeta^3 + 20*zeta - 26)*q^890 + (-8*zeta^9 + 4*zeta^8 - 4*zeta^6
- 8*zeta^3 + 4*zeta - 4)*q^891 + (40*zeta^11 - 48*zeta^8 - 48*zeta^6 + 40*zeta^4
+ 40*zeta^3 - 48*zeta)*q^892 + (8*zeta^11 - 8*zeta^8 - 8*zeta^6 + 8*zeta^4 + 
8*zeta^3 - 8*zeta)*q^893 + (8*zeta^11 - 40*zeta^9 + 20*zeta^8 - 20*zeta^6 + 
8*zeta^4 - 32*zeta^3 + 20*zeta - 20)*q^894 + (-80*zeta^11 + 160*zeta^9 - 
44*zeta^8 + 116*zeta^6 - 80*zeta^4 + 80*zeta^3 - 44*zeta + 80)*q^895 + 
(-56*zeta^11 + 112*zeta^9 - 56*zeta^8 + 56*zeta^6 - 56*zeta^4 + 56*zeta^3 - 
56*zeta + 56)*q^897 + (-28*zeta^11 + 44*zeta^9 - 22*zeta^8 + 22*zeta^6 - 
28*zeta^4 + 16*zeta^3 - 22*zeta + 22)*q^898 + (-8*zeta^11 + 8*zeta^8 + 8*zeta^6 
- 8*zeta^4 - 8*zeta^3 + 8*zeta)*q^899 + (30*zeta^11 - 22*zeta^8 - 22*zeta^6 + 
30*zeta^4 + 30*zeta^3 - 22*zeta)*q^900 + (12*zeta^11 - 8*zeta^9 + 4*zeta^8 - 
4*zeta^6 + 12*zeta^4 + 4*zeta^3 + 4*zeta - 4)*q^901 + (-4*zeta^11 + 8*zeta^9 + 
4*zeta^8 + 12*zeta^6 - 4*zeta^4 + 4*zeta^3 + 4*zeta + 4)*q^902 + (-26*zeta^11 + 
52*zeta^9 - 60*zeta^8 - 8*zeta^6 - 26*zeta^4 + 26*zeta^3 - 60*zeta + 26)*q^904 +
(4*zeta^11 + 12*zeta^9 - 6*zeta^8 + 6*zeta^6 + 4*zeta^4 + 16*zeta^3 - 6*zeta + 
6)*q^905 + (-24*zeta^11 - 24*zeta^8 - 24*zeta^6 - 24*zeta^4 - 24*zeta^3 - 
24*zeta)*q^906 + (-16*zeta^11 + 16*zeta^8 + 16*zeta^6 - 16*zeta^4 - 16*zeta^3 + 
16*zeta)*q^907 + (12*zeta^11 - 104*zeta^9 + 52*zeta^8 - 52*zeta^6 + 12*zeta^4 - 
92*zeta^3 + 52*zeta - 52)*q^908 + (20*zeta^8 + 20*zeta^6 + 20*zeta)*q^909 + 
(-6*zeta^11 + 12*zeta^9 - 24*zeta^8 - 12*zeta^6 - 6*zeta^4 + 6*zeta^3 - 24*zeta 
+ 6)*q^911 + (-24*zeta^11 - 24*zeta^4 - 24*zeta^3)*q^912 + (-8*zeta^11 - 
24*zeta^8 - 24*zeta^6 - 8*zeta^4 - 8*zeta^3 - 24*zeta)*q^913 + (18*zeta^11 + 
18*zeta^8 + 18*zeta^6 + 18*zeta^4 + 18*zeta^3 + 18*zeta)*q^914 + (-56*zeta^11 - 
88*zeta^9 + 44*zeta^8 - 44*zeta^6 - 56*zeta^4 - 144*zeta^3 + 44*zeta - 44)*q^915
+ (-6*zeta^11 + 12*zeta^9 - 22*zeta^8 - 10*zeta^6 - 6*zeta^4 + 6*zeta^3 - 
22*zeta + 6)*q^916 + (4*zeta^11 - 8*zeta^9 + 20*zeta^8 + 12*zeta^6 + 4*zeta^4 - 
4*zeta^3 + 20*zeta - 4)*q^918 + (40*zeta^11 - 40*zeta^9 + 20*zeta^8 - 20*zeta^6 
+ 40*zeta^4 + 20*zeta - 20)*q^919 + (-16*zeta^11 + 52*zeta^8 + 52*zeta^6 - 
16*zeta^4 - 16*zeta^3 + 52*zeta)*q^920 + (-32*zeta^11 + 72*zeta^8 + 72*zeta^6 - 
32*zeta^4 - 32*zeta^3 + 72*zeta)*q^921 + (-38*zeta^11 + 40*zeta^9 - 20*zeta^8 + 
20*zeta^6 - 38*zeta^4 + 2*zeta^3 - 20*zeta + 20)*q^922 + (44*zeta^11 - 88*zeta^9
+ 68*zeta^8 - 20*zeta^6 + 44*zeta^4 - 44*zeta^3 + 68*zeta - 44)*q^923 + 
(36*zeta^11 - 72*zeta^9 + 32*zeta^8 - 40*zeta^6 + 36*zeta^4 - 36*zeta^3 + 
32*zeta - 36)*q^925 + (-24*zeta^11 + 56*zeta^9 - 28*zeta^8 + 28*zeta^6 - 
24*zeta^4 + 32*zeta^3 - 28*zeta + 28)*q^926 + (-8*zeta^11 - 16*zeta^8 - 
16*zeta^6 - 8*zeta^4 - 8*zeta^3 - 16*zeta)*q^927 + (-16*zeta^11 + 36*zeta^8 + 
36*zeta^6 - 16*zeta^4 - 16*zeta^3 + 36*zeta)*q^928 + (-30*zeta^11 - 36*zeta^9 + 
18*zeta^8 - 18*zeta^6 - 30*zeta^4 - 66*zeta^3 + 18*zeta - 18)*q^929 + (8*zeta^11
- 16*zeta^9 + 16*zeta^8 + 8*zeta^4 - 8*zeta^3 + 16*zeta - 8)*q^930 + (4*zeta^11 
- 8*zeta^9 + 52*zeta^8 + 44*zeta^6 + 4*zeta^4 - 4*zeta^3 + 52*zeta - 4)*q^932 + 
(40*zeta^11 - 32*zeta^9 + 16*zeta^8 - 16*zeta^6 + 40*zeta^4 + 8*zeta^3 + 16*zeta
- 16)*q^933 + (48*zeta^11 + 20*zeta^8 + 20*zeta^6 + 48*zeta^4 + 48*zeta^3 + 
20*zeta)*q^934 + (4*zeta^11 - 20*zeta^8 - 20*zeta^6 + 4*zeta^4 + 4*zeta^3 - 
20*zeta)*q^935 + (-28*zeta^11 + 56*zeta^9 - 28*zeta^8 + 28*zeta^6 - 28*zeta^4 + 
28*zeta^3 - 28*zeta + 28)*q^936 + (30*zeta^11 - 60*zeta^9 - 2*zeta^8 - 62*zeta^6
+ 30*zeta^4 - 30*zeta^3 - 2*zeta - 30)*q^937 + (12*zeta^11 - 24*zeta^9 + 
28*zeta^8 + 4*zeta^6 + 12*zeta^4 - 12*zeta^3 + 28*zeta - 12)*q^939 + (-8*zeta^11
- 24*zeta^9 + 12*zeta^8 - 12*zeta^6 - 8*zeta^4 - 32*zeta^3 + 12*zeta - 12)*q^940
+ (-14*zeta^11 + 44*zeta^8 + 44*zeta^6 - 14*zeta^4 - 14*zeta^3 + 44*zeta)*q^941 
+ (44*zeta^11 + 32*zeta^8 + 32*zeta^6 + 44*zeta^4 + 44*zeta^3 + 32*zeta)*q^942 +
(-28*zeta^11 - 56*zeta^9 + 28*zeta^8 - 28*zeta^6 - 28*zeta^4 - 84*zeta^3 + 
28*zeta - 28)*q^943 + (12*zeta^8 + 12*zeta^6 + 12*zeta)*q^944 + (-16*zeta^8 - 
16*zeta^6 - 16*zeta)*q^946 + (16*zeta^11 - 84*zeta^9 + 42*zeta^8 - 42*zeta^6 + 
16*zeta^4 - 68*zeta^3 + 42*zeta - 42)*q^947 + (-16*zeta^11 + 64*zeta^8 + 
64*zeta^6 - 16*zeta^4 - 16*zeta^3 + 64*zeta)*q^948 + (2*zeta^11 - 50*zeta^8 - 
50*zeta^6 + 2*zeta^4 + 2*zeta^3 - 50*zeta)*q^949 + (-28*zeta^11 + 24*zeta^9 - 
12*zeta^8 + 12*zeta^6 - 28*zeta^4 - 4*zeta^3 - 12*zeta + 12)*q^950 + 
(-20*zeta^11 + 40*zeta^9 + 40*zeta^6 - 20*zeta^4 + 20*zeta^3 + 20)*q^951 + 
(-2*zeta^11 + 4*zeta^9 + 4*zeta^6 - 2*zeta^4 + 2*zeta^3 + 2)*q^953 + (-8*zeta^11
+ 8*zeta^9 - 4*zeta^8 + 4*zeta^6 - 8*zeta^4 - 4*zeta + 4)*q^954 + (36*zeta^11 - 
72*zeta^8 - 72*zeta^6 + 36*zeta^4 + 36*zeta^3 - 72*zeta)*q^955 + (6*zeta^11 - 
38*zeta^8 - 38*zeta^6 + 6*zeta^4 + 6*zeta^3 - 38*zeta)*q^956 + (-16*zeta^11 - 
32*zeta^9 + 16*zeta^8 - 16*zeta^6 - 16*zeta^4 - 48*zeta^3 + 16*zeta - 16)*q^957 
+ (16*zeta^11 - 32*zeta^9 + 52*zeta^8 + 20*zeta^6 + 16*zeta^4 - 16*zeta^3 + 
52*zeta - 16)*q^958 + (-32*zeta^11 + 64*zeta^9 - 12*zeta^8 + 52*zeta^6 - 
32*zeta^4 + 32*zeta^3 - 12*zeta + 32)*q^960 + (32*zeta^11 + 14*zeta^9 - 7*zeta^8
+ 7*zeta^6 + 32*zeta^4 + 46*zeta^3 - 7*zeta + 7)*q^961 + (-24*zeta^11 - 
16*zeta^8 - 16*zeta^6 - 24*zeta^4 - 24*zeta^3 - 16*zeta)*q^962 + (12*zeta^11 + 
4*zeta^8 + 4*zeta^6 + 12*zeta^4 + 12*zeta^3 + 4*zeta)*q^963 + (42*zeta^11 + 
42*zeta^4 + 42*zeta^3)*q^964 + (24*zeta^11 - 48*zeta^9 + 20*zeta^8 - 28*zeta^6 +
24*zeta^4 - 24*zeta^3 + 20*zeta - 24)*q^965 + (-36*zeta^11 + 72*zeta^9 - 
8*zeta^8 + 64*zeta^6 - 36*zeta^4 + 36*zeta^3 - 8*zeta + 36)*q^967 + (14*zeta^11 
- 42*zeta^9 + 21*zeta^8 - 21*zeta^6 + 14*zeta^4 - 28*zeta^3 + 21*zeta - 
21)*q^968 + (24*zeta^11 - 8*zeta^8 - 8*zeta^6 + 24*zeta^4 + 24*zeta^3 - 
8*zeta)*q^969 + (-2*zeta^11 - 6*zeta^8 - 6*zeta^6 - 2*zeta^4 - 2*zeta^3 - 
6*zeta)*q^970 + (-32*zeta^11 - 56*zeta^9 + 28*zeta^8 - 28*zeta^6 - 32*zeta^4 - 
88*zeta^3 + 28*zeta - 28)*q^971 + (6*zeta^11 - 12*zeta^9 + 8*zeta^8 - 4*zeta^6 +
6*zeta^4 - 6*zeta^3 + 8*zeta - 6)*q^972 + (-4*zeta^11 + 8*zeta^9 + 24*zeta^8 + 
32*zeta^6 - 4*zeta^4 + 4*zeta^3 + 24*zeta + 4)*q^974 + (60*zeta^11 - 16*zeta^9 +
8*zeta^8 - 8*zeta^6 + 60*zeta^4 + 44*zeta^3 + 8*zeta - 8)*q^975 + (-24*zeta^11 +
42*zeta^8 + 42*zeta^6 - 24*zeta^4 - 24*zeta^3 + 42*zeta)*q^976 + (-24*zeta^11 + 
20*zeta^8 + 20*zeta^6 - 24*zeta^4 - 24*zeta^3 + 20*zeta)*q^977 + (-32*zeta^11 + 
64*zeta^9 - 32*zeta^8 + 32*zeta^6 - 32*zeta^4 + 32*zeta^3 - 32*zeta + 32)*q^978 
+ (32*zeta^11 - 64*zeta^9 + 12*zeta^8 - 52*zeta^6 + 32*zeta^4 - 32*zeta^3 + 
12*zeta - 32)*q^979 + (-16*zeta^11 + 32*zeta^9 - 16*zeta^8 + 16*zeta^6 - 
16*zeta^4 + 16*zeta^3 - 16*zeta + 16)*q^981 + (-68*zeta^11 + 92*zeta^9 - 
46*zeta^8 + 46*zeta^6 - 68*zeta^4 + 24*zeta^3 - 46*zeta + 46)*q^982 + (8*zeta^11
- 72*zeta^8 - 72*zeta^6 + 8*zeta^4 + 8*zeta^3 - 72*zeta)*q^983 + (-28*zeta^8 - 
28*zeta^6 - 28*zeta)*q^984 + (4*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 + 
4*zeta^4 + 12*zeta^3 - 4*zeta + 4)*q^985 + (4*zeta^11 - 8*zeta^9 - 8*zeta^8 - 
16*zeta^6 + 4*zeta^4 - 4*zeta^3 - 8*zeta - 4)*q^986 + (-4*zeta^11 + 8*zeta^9 + 
32*zeta^8 + 40*zeta^6 - 4*zeta^4 + 4*zeta^3 + 32*zeta + 4)*q^988 + (16*zeta^11 +
64*zeta^9 - 32*zeta^8 + 32*zeta^6 + 16*zeta^4 + 80*zeta^3 - 32*zeta + 32)*q^989 
+ (8*zeta^8 + 8*zeta^6 + 8*zeta)*q^990 + (4*zeta^11 + 20*zeta^8 + 20*zeta^6 + 
4*zeta^4 + 4*zeta^3 + 20*zeta)*q^991 + (4*zeta^11 - 16*zeta^9 + 8*zeta^8 - 
8*zeta^6 + 4*zeta^4 - 12*zeta^3 + 8*zeta - 8)*q^992 + (8*zeta^11 - 16*zeta^9 - 
16*zeta^6 + 8*zeta^4 - 8*zeta^3 - 8)*q^993 + (-88*zeta^11 + 176*zeta^9 - 
48*zeta^8 + 128*zeta^6 - 88*zeta^4 + 88*zeta^3 - 48*zeta + 88)*q^995 + 
(64*zeta^11 - 144*zeta^9 + 72*zeta^8 - 72*zeta^6 + 64*zeta^4 - 80*zeta^3 + 
72*zeta - 72)*q^996 + (-8*zeta^11 + 34*zeta^8 + 34*zeta^6 - 8*zeta^4 - 8*zeta^3 
+ 34*zeta)*q^997 + (24*zeta^11 + 8*zeta^8 + 8*zeta^6 + 24*zeta^4 + 24*zeta^3 + 
8*zeta)*q^998 + (16*zeta^9 - 8*zeta^8 + 8*zeta^6 + 16*zeta^3 - 8*zeta + 8)*q^999
+ (-16*zeta^11 + 32*zeta^9 - 24*zeta^8 + 8*zeta^6 - 16*zeta^4 + 16*zeta^3 - 
24*zeta + 16)*q^1000 + (56*zeta^8 + 56*zeta^6 + 56*zeta)*q^1002 + (-32*zeta^11 +
40*zeta^9 - 20*zeta^8 + 20*zeta^6 - 32*zeta^4 + 8*zeta^3 - 20*zeta + 20)*q^1003 
+ (-20*zeta^11 + 24*zeta^8 + 24*zeta^6 - 20*zeta^4 - 20*zeta^3 + 24*zeta)*q^1004
+ (16*zeta^11 - 48*zeta^8 - 48*zeta^6 + 16*zeta^4 + 16*zeta^3 - 48*zeta)*q^1005 
+ (8*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 8*zeta^4 - 8*zeta^3 + 8*zeta - 
8)*q^1007 + (34*zeta^11 - 68*zeta^9 + 48*zeta^8 - 20*zeta^6 + 34*zeta^4 - 
34*zeta^3 + 48*zeta - 34)*q^1009 + (-20*zeta^11 + 20*zeta^9 - 10*zeta^8 + 
10*zeta^6 - 20*zeta^4 - 10*zeta + 10)*q^1010 + (-48*zeta^11 + 64*zeta^8 + 
64*zeta^6 - 48*zeta^4 - 48*zeta^3 + 64*zeta)*q^1011 + (-28*zeta^11 + 28*zeta^8 +
28*zeta^6 - 28*zeta^4 - 28*zeta^3 + 28*zeta)*q^1012 + (-10*zeta^11 + 52*zeta^9 -
26*zeta^8 + 26*zeta^6 - 10*zeta^4 + 42*zeta^3 - 26*zeta + 26)*q^1013 + 
(-10*zeta^11 + 20*zeta^9 - 52*zeta^8 - 32*zeta^6 - 10*zeta^4 + 10*zeta^3 - 
52*zeta + 10)*q^1014 + (-12*zeta^11 + 24*zeta^9 - 32*zeta^8 - 8*zeta^6 - 
12*zeta^4 + 12*zeta^3 - 32*zeta + 12)*q^1016 + (-32*zeta^11 + 24*zeta^9 - 
12*zeta^8 + 12*zeta^6 - 32*zeta^4 - 8*zeta^3 - 12*zeta + 12)*q^1017 + 
(-32*zeta^11 - 10*zeta^8 - 10*zeta^6 - 32*zeta^4 - 32*zeta^3 - 10*zeta)*q^1018 +
(2*zeta^11 + 70*zeta^8 + 70*zeta^6 + 2*zeta^4 + 2*zeta^3 + 70*zeta)*q^1019 + 
(-56*zeta^9 + 28*zeta^8 - 28*zeta^6 - 56*zeta^3 + 28*zeta - 28)*q^1020 + 
(6*zeta^11 - 12*zeta^9 + 22*zeta^8 + 10*zeta^6 + 6*zeta^4 - 6*zeta^3 + 22*zeta -
6)*q^1021 + (-16*zeta^8 - 16*zeta^6 - 16*zeta)*q^1023 + (-12*zeta^11 + 14*zeta^9
- 7*zeta^8 + 7*zeta^6 - 12*zeta^4 + 2*zeta^3 - 7*zeta + 7)*q^1024 + (-26*zeta^11
+ 48*zeta^8 + 48*zeta^6 - 26*zeta^4 - 26*zeta^3 + 48*zeta)*q^1025 + (8*zeta^11 +
8*zeta^4 + 8*zeta^3)*q^1026 + (16*zeta^11 + 48*zeta^9 - 24*zeta^8 + 24*zeta^6 + 
16*zeta^4 + 64*zeta^3 - 24*zeta + 24)*q^1027 + (-36*zeta^11 + 72*zeta^9 + 
22*zeta^8 + 94*zeta^6 - 36*zeta^4 + 36*zeta^3 + 22*zeta + 36)*q^1028 + 
(-4*zeta^11 + 8*zeta^9 + 8*zeta^8 + 16*zeta^6 - 4*zeta^4 + 4*zeta^3 + 8*zeta + 
4)*q^1030 + (16*zeta^11 - 28*zeta^9 + 14*zeta^8 - 14*zeta^6 + 16*zeta^4 - 
12*zeta^3 + 14*zeta - 14)*q^1031 + (16*zeta^11 + 32*zeta^8 + 32*zeta^6 + 
16*zeta^4 + 16*zeta^3 + 32*zeta)*q^1032 + (12*zeta^11 + 44*zeta^8 + 44*zeta^6 + 
12*zeta^4 + 12*zeta^3 + 44*zeta)*q^1033 + (-8*zeta^11 + 16*zeta^9 - 8*zeta^8 + 
8*zeta^6 - 8*zeta^4 + 8*zeta^3 - 8*zeta + 8)*q^1034 + (64*zeta^11 - 128*zeta^9 +
40*zeta^8 - 88*zeta^6 + 64*zeta^4 - 64*zeta^3 + 40*zeta - 64)*q^1035 + 
(38*zeta^11 - 76*zeta^9 + 36*zeta^8 - 40*zeta^6 + 38*zeta^4 - 38*zeta^3 + 
36*zeta - 38)*q^1037 + (36*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 36*zeta^4
+ 20*zeta^3 + 8*zeta - 8)*q^1038 + (32*zeta^11 + 32*zeta^4 + 32*zeta^3)*q^1039 +
(18*zeta^11 - 30*zeta^8 - 30*zeta^6 + 18*zeta^4 + 18*zeta^3 - 30*zeta)*q^1040 + 
(-32*zeta^11 - 88*zeta^9 + 44*zeta^8 - 44*zeta^6 - 32*zeta^4 - 120*zeta^3 + 
44*zeta - 44)*q^1041 + (-34*zeta^11 + 68*zeta^9 - 66*zeta^8 + 2*zeta^6 - 
34*zeta^4 + 34*zeta^3 - 66*zeta + 34)*q^1042 + (32*zeta^11 - 64*zeta^9 + 
24*zeta^8 - 40*zeta^6 + 32*zeta^4 - 32*zeta^3 + 24*zeta - 32)*q^1044 + 
(-16*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 - 16*zeta^4 - 32*zeta^3 + 8*zeta 
- 8)*q^1045 + (-12*zeta^11 - 20*zeta^8 - 20*zeta^6 - 12*zeta^4 - 12*zeta^3 - 
20*zeta)*q^1046 + (-28*zeta^8 - 28*zeta^6 - 28*zeta)*q^1047 + (40*zeta^11 - 
8*zeta^9 + 4*zeta^8 - 4*zeta^6 + 40*zeta^4 + 32*zeta^3 + 4*zeta - 4)*q^1048 + 
(52*zeta^11 - 104*zeta^9 + 46*zeta^8 - 58*zeta^6 + 52*zeta^4 - 52*zeta^3 + 
46*zeta - 52)*q^1049 + (52*zeta^11 - 104*zeta^9 + 16*zeta^8 - 88*zeta^6 + 
52*zeta^4 - 52*zeta^3 + 16*zeta - 52)*q^1051 + (-40*zeta^11 + 76*zeta^9 - 
38*zeta^8 + 38*zeta^6 - 40*zeta^4 + 36*zeta^3 - 38*zeta + 38)*q^1052 + 
(8*zeta^11 - 4*zeta^8 - 4*zeta^6 + 8*zeta^4 + 8*zeta^3 - 4*zeta)*q^1053 + 
(52*zeta^11 + 20*zeta^8 + 20*zeta^6 + 52*zeta^4 + 52*zeta^3 + 20*zeta)*q^1054 + 
(40*zeta^11 + 32*zeta^9 - 16*zeta^8 + 16*zeta^6 + 40*zeta^4 + 72*zeta^3 - 
16*zeta + 16)*q^1055 + (20*zeta^11 - 40*zeta^9 + 8*zeta^8 - 32*zeta^6 + 
20*zeta^4 - 20*zeta^3 + 8*zeta - 20)*q^1056 + (-13*zeta^11 + 26*zeta^9 + 
6*zeta^8 + 32*zeta^6 - 13*zeta^4 + 13*zeta^3 + 6*zeta + 13)*q^1058 + 
(-36*zeta^11 - 8*zeta^9 + 4*zeta^8 - 4*zeta^6 - 36*zeta^4 - 44*zeta^3 + 4*zeta -
4)*q^1059 + (-4*zeta^11 + 16*zeta^8 + 16*zeta^6 - 4*zeta^4 - 4*zeta^3 + 
16*zeta)*q^1060 + (-52*zeta^11 + 48*zeta^8 + 48*zeta^6 - 52*zeta^4 - 52*zeta^3 +
48*zeta)*q^1061 + (24*zeta^11 - 32*zeta^9 + 16*zeta^8 - 16*zeta^6 + 24*zeta^4 - 
8*zeta^3 + 16*zeta - 16)*q^1062 + (48*zeta^11 - 96*zeta^9 + 36*zeta^8 - 
60*zeta^6 + 48*zeta^4 - 48*zeta^3 + 36*zeta - 48)*q^1063 + (80*zeta^11 - 
160*zeta^9 + 56*zeta^8 - 104*zeta^6 + 80*zeta^4 - 80*zeta^3 + 56*zeta - 
80)*q^1065 + (16*zeta^11 - 36*zeta^9 + 18*zeta^8 - 18*zeta^6 + 16*zeta^4 - 
20*zeta^3 + 18*zeta - 18)*q^1066 + (8*zeta^11 - 4*zeta^8 - 4*zeta^6 + 8*zeta^4 +
8*zeta^3 - 4*zeta)*q^1067 + (-4*zeta^11 + 72*zeta^8 + 72*zeta^6 - 4*zeta^4 - 
4*zeta^3 + 72*zeta)*q^1068 + (34*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 + 
34*zeta^4 + 50*zeta^3 - 8*zeta + 8)*q^1069 + (-4*zeta^11 + 8*zeta^9 - 12*zeta^8 
- 4*zeta^6 - 4*zeta^4 + 4*zeta^3 - 12*zeta + 4)*q^1070 + (24*zeta^11 - 48*zeta^9
+ 24*zeta^8 - 24*zeta^6 + 24*zeta^4 - 24*zeta^3 + 24*zeta - 24)*q^1072 + 
(-16*zeta^11 - 32*zeta^9 + 16*zeta^8 - 16*zeta^6 - 16*zeta^4 - 48*zeta^3 + 
16*zeta - 16)*q^1073 + (12*zeta^11 + 28*zeta^8 + 28*zeta^6 + 12*zeta^4 + 
12*zeta^3 + 28*zeta)*q^1074 + (32*zeta^11 - 40*zeta^8 - 40*zeta^6 + 32*zeta^4 + 
32*zeta^3 - 40*zeta)*q^1075 + (-10*zeta^11 + 68*zeta^9 - 34*zeta^8 + 34*zeta^6 -
10*zeta^4 + 58*zeta^3 - 34*zeta + 34)*q^1076 + (-4*zeta^11 + 8*zeta^9 - 
16*zeta^8 - 8*zeta^6 - 4*zeta^4 + 4*zeta^3 - 16*zeta + 4)*q^1077 + (-40*zeta^11 
+ 80*zeta^9 - 72*zeta^8 + 8*zeta^6 - 40*zeta^4 + 40*zeta^3 - 72*zeta + 
40)*q^1079 + (-4*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 - 4*zeta^4 - 
20*zeta^3 + 8*zeta - 8)*q^1080 + (-16*zeta^11 + 24*zeta^8 + 24*zeta^6 - 
16*zeta^4 - 16*zeta^3 + 24*zeta)*q^1081 + (10*zeta^11 - 6*zeta^8 - 6*zeta^6 + 
10*zeta^4 + 10*zeta^3 - 6*zeta)*q^1082 + (44*zeta^9 - 22*zeta^8 + 22*zeta^6 + 
44*zeta^3 - 22*zeta + 22)*q^1083 + (8*zeta^11 - 16*zeta^9 - 36*zeta^8 - 
52*zeta^6 + 8*zeta^4 - 8*zeta^3 - 36*zeta - 8)*q^1084 + (-8*zeta^11 + 16*zeta^9 
- 20*zeta^8 - 4*zeta^6 - 8*zeta^4 + 8*zeta^3 - 20*zeta + 8)*q^1086 + 
(-16*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 16*zeta^4 - 8*zeta + 8)*q^1087 
+ (26*zeta^11 + 24*zeta^8 + 24*zeta^6 + 26*zeta^4 + 26*zeta^3 + 24*zeta)*q^1088 
+ (14*zeta^11 - 14*zeta^8 - 14*zeta^6 + 14*zeta^4 + 14*zeta^3 - 14*zeta)*q^1089 
+ (-16*zeta^9 + 8*zeta^8 - 8*zeta^6 - 16*zeta^3 + 8*zeta - 8)*q^1090 + 
(-28*zeta^11 + 56*zeta^9 + 56*zeta^6 - 28*zeta^4 + 28*zeta^3 + 28)*q^1091 + 
(60*zeta^11 - 120*zeta^9 + 8*zeta^8 - 112*zeta^6 + 60*zeta^4 - 60*zeta^3 + 
8*zeta - 60)*q^1093 + (16*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 + 16*zeta^4 +
24*zeta^3 - 4*zeta + 4)*q^1094 + (44*zeta^11 - 116*zeta^8 - 116*zeta^6 + 
44*zeta^4 + 44*zeta^3 - 116*zeta)*q^1095 + (20*zeta^11 + 40*zeta^8 + 40*zeta^6 +
20*zeta^4 + 20*zeta^3 + 40*zeta)*q^1096 + (-2*zeta^11 - 36*zeta^9 + 18*zeta^8 - 
18*zeta^6 - 2*zeta^4 - 38*zeta^3 + 18*zeta - 18)*q^1097 + (-16*zeta^11 + 
32*zeta^9 - 20*zeta^8 + 12*zeta^6 - 16*zeta^4 + 16*zeta^3 - 20*zeta + 16)*q^1098
+ (-22*zeta^11 + 44*zeta^9 + 8*zeta^8 + 52*zeta^6 - 22*zeta^4 + 22*zeta^3 + 
8*zeta + 22)*q^1100 + (-32*zeta^11 + 32*zeta^9 - 16*zeta^8 + 16*zeta^6 - 
32*zeta^4 - 16*zeta + 16)*q^1101 + (-8*zeta^11 + 8*zeta^8 + 8*zeta^6 - 8*zeta^4 
- 8*zeta^3 + 8*zeta)*q^1102 + (14*zeta^11 - 6*zeta^8 - 6*zeta^6 + 14*zeta^4 + 
14*zeta^3 - 6*zeta)*q^1103 + (48*zeta^11 + 24*zeta^9 - 12*zeta^8 + 12*zeta^6 + 
48*zeta^4 + 72*zeta^3 - 12*zeta + 12)*q^1104 + (-28*zeta^11 + 56*zeta^9 - 
28*zeta^8 + 28*zeta^6 - 28*zeta^4 + 28*zeta^3 - 28*zeta + 28)*q^1105 + 
(16*zeta^11 - 32*zeta^9 + 12*zeta^8 - 20*zeta^6 + 16*zeta^4 - 16*zeta^3 + 
12*zeta - 16)*q^1107 + (24*zeta^11 - 68*zeta^9 + 34*zeta^8 - 34*zeta^6 + 
24*zeta^4 - 44*zeta^3 + 34*zeta - 34)*q^1108 + (10*zeta^11 + 32*zeta^8 + 
32*zeta^6 + 10*zeta^4 + 10*zeta^3 + 32*zeta)*q^1109 + (-16*zeta^8 - 16*zeta^6 - 
16*zeta)*q^1110 + (20*zeta^11 - 40*zeta^9 + 20*zeta^8 - 20*zeta^6 + 20*zeta^4 - 
20*zeta^3 + 20*zeta - 20)*q^1111 + (28*zeta^11 - 56*zeta^9 - 56*zeta^6 + 
28*zeta^4 - 28*zeta^3 - 28)*q^1112 + (-26*zeta^11 + 52*zeta^9 - 52*zeta^8 - 
26*zeta^4 + 26*zeta^3 - 52*zeta + 26)*q^1114 + (-64*zeta^11 - 80*zeta^9 + 
40*zeta^8 - 40*zeta^6 - 64*zeta^4 - 144*zeta^3 + 40*zeta - 40)*q^1115 + 
(-24*zeta^11 - 16*zeta^8 - 16*zeta^6 - 24*zeta^4 - 24*zeta^3 - 16*zeta)*q^1116 +
(-6*zeta^11 - 10*zeta^8 - 10*zeta^6 - 6*zeta^4 - 6*zeta^3 - 10*zeta)*q^1117 + 
(-48*zeta^11 + 80*zeta^9 - 40*zeta^8 + 40*zeta^6 - 48*zeta^4 + 32*zeta^3 - 
40*zeta + 40)*q^1118 + (12*zeta^11 - 24*zeta^9 - 32*zeta^8 - 56*zeta^6 + 
12*zeta^4 - 12*zeta^3 - 32*zeta - 12)*q^1119 + (-8*zeta^11 + 16*zeta^9 - 
16*zeta^8 - 8*zeta^4 + 8*zeta^3 - 16*zeta + 8)*q^1121 + (-40*zeta^11 + 64*zeta^9
- 32*zeta^8 + 32*zeta^6 - 40*zeta^4 + 24*zeta^3 - 32*zeta + 32)*q^1122 + 
(-4*zeta^11 + 60*zeta^8 + 60*zeta^6 - 4*zeta^4 - 4*zeta^3 + 60*zeta)*q^1123 + 
(-32*zeta^11 - 12*zeta^8 - 12*zeta^6 - 32*zeta^4 - 32*zeta^3 - 12*zeta)*q^1124 +
(-16*zeta^11 - 16*zeta^4 - 16*zeta^3)*q^1125 + (-4*zeta^11 + 8*zeta^9 - 
12*zeta^8 - 4*zeta^6 - 4*zeta^4 + 4*zeta^3 - 12*zeta + 4)*q^1126 + (16*zeta^11 -
32*zeta^9 + 24*zeta^8 - 8*zeta^6 + 16*zeta^4 - 16*zeta^3 + 24*zeta - 16)*q^1128 
+ (-24*zeta^11 - 8*zeta^9 + 4*zeta^8 - 4*zeta^6 - 24*zeta^4 - 32*zeta^3 + 4*zeta
- 4)*q^1129 + (16*zeta^11 - 4*zeta^8 - 4*zeta^6 + 16*zeta^4 + 16*zeta^3 - 
4*zeta)*q^1130 + (24*zeta^11 - 40*zeta^8 - 40*zeta^6 + 24*zeta^4 + 24*zeta^3 - 
40*zeta)*q^1131 + (-12*zeta^11 + 48*zeta^9 - 24*zeta^8 + 24*zeta^6 - 12*zeta^4 +
36*zeta^3 - 24*zeta + 24)*q^1132 + (-16*zeta^11 + 32*zeta^9 - 24*zeta^8 + 
8*zeta^6 - 16*zeta^4 + 16*zeta^3 - 24*zeta + 16)*q^1133 + (-100*zeta^11 + 
200*zeta^9 - 64*zeta^8 + 136*zeta^6 - 100*zeta^4 + 100*zeta^3 - 64*zeta + 
100)*q^1135 + (-48*zeta^11 + 12*zeta^9 - 6*zeta^8 + 6*zeta^6 - 48*zeta^4 - 
36*zeta^3 - 6*zeta + 6)*q^1136 + (40*zeta^11 - 8*zeta^8 - 8*zeta^6 + 40*zeta^4 +
40*zeta^3 - 8*zeta)*q^1137 + (-4*zeta^11 + 8*zeta^8 + 8*zeta^6 - 4*zeta^4 - 
4*zeta^3 + 8*zeta)*q^1138 + (-16*zeta^11 + 48*zeta^9 - 24*zeta^8 + 24*zeta^6 - 
16*zeta^4 + 32*zeta^3 - 24*zeta + 24)*q^1139 + (-40*zeta^11 + 80*zeta^9 - 
16*zeta^8 + 64*zeta^6 - 40*zeta^4 + 40*zeta^3 - 16*zeta + 40)*q^1140 + 
(-28*zeta^11 + 56*zeta^9 - 64*zeta^8 - 8*zeta^6 - 28*zeta^4 + 28*zeta^3 - 
64*zeta + 28)*q^1142 + (-16*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 
16*zeta^4 - 8*zeta + 8)*q^1143 + (-28*zeta^11 - 28*zeta^4 - 28*zeta^3)*q^1144 + 
(2*zeta^11 + 2*zeta^8 + 2*zeta^6 + 2*zeta^4 + 2*zeta^3 + 2*zeta)*q^1145 + 
(72*zeta^11 - 72*zeta^9 + 36*zeta^8 - 36*zeta^6 + 72*zeta^4 + 36*zeta - 
36)*q^1146 + (-16*zeta^8 - 16*zeta^6 - 16*zeta)*q^1147 + (-32*zeta^11 + 
64*zeta^9 + 16*zeta^8 + 80*zeta^6 - 32*zeta^4 + 32*zeta^3 + 16*zeta + 32)*q^1149
+ (44*zeta^11 - 20*zeta^9 + 10*zeta^8 - 10*zeta^6 + 44*zeta^4 + 24*zeta^3 + 
10*zeta - 10)*q^1150 + (24*zeta^11 - 24*zeta^8 - 24*zeta^6 + 24*zeta^4 + 
24*zeta^3 - 24*zeta)*q^1151 + (-10*zeta^11 - 34*zeta^8 - 34*zeta^6 - 10*zeta^4 -
10*zeta^3 - 34*zeta)*q^1152 + (-30*zeta^11 - 8*zeta^9 + 4*zeta^8 - 4*zeta^6 - 
30*zeta^4 - 38*zeta^3 + 4*zeta - 4)*q^1153 + (-24*zeta^11 + 48*zeta^9 - 
34*zeta^8 + 14*zeta^6 - 24*zeta^4 + 24*zeta^3 - 34*zeta + 24)*q^1154 + 
(-9*zeta^11 + 18*zeta^9 + 44*zeta^8 + 62*zeta^6 - 9*zeta^4 + 9*zeta^3 + 44*zeta 
+ 9)*q^1156 + (4*zeta^11 + 68*zeta^9 - 34*zeta^8 + 34*zeta^6 + 4*zeta^4 + 
72*zeta^3 - 34*zeta + 34)*q^1157 + (44*zeta^11 + 12*zeta^8 + 12*zeta^6 + 
44*zeta^4 + 44*zeta^3 + 12*zeta)*q^1158 + (-12*zeta^11 + 44*zeta^8 + 44*zeta^6 -
12*zeta^4 - 12*zeta^3 + 44*zeta)*q^1159 + (24*zeta^11 + 40*zeta^9 - 20*zeta^8 + 
20*zeta^6 + 24*zeta^4 + 64*zeta^3 - 20*zeta + 20)*q^1160 + (-16*zeta^11 + 
32*zeta^9 - 16*zeta^8 + 16*zeta^6 - 16*zeta^4 + 16*zeta^3 - 16*zeta + 16)*q^1161
+ (42*zeta^11 - 84*zeta^9 + 40*zeta^8 - 44*zeta^6 + 42*zeta^4 - 42*zeta^3 + 
40*zeta - 42)*q^1163 + (-36*zeta^11 + 32*zeta^9 - 16*zeta^8 + 16*zeta^6 - 
36*zeta^4 - 4*zeta^3 - 16*zeta + 16)*q^1164 + (4*zeta^11 - 28*zeta^8 - 28*zeta^6
+ 4*zeta^4 + 4*zeta^3 - 28*zeta)*q^1165 + (-4*zeta^11 - 4*zeta^8 - 4*zeta^6 - 
4*zeta^4 - 4*zeta^3 - 4*zeta)*q^1166 + (40*zeta^11 + 16*zeta^9 - 8*zeta^8 + 
8*zeta^6 + 40*zeta^4 + 56*zeta^3 - 8*zeta + 8)*q^1167 + (54*zeta^11 - 108*zeta^9
+ 42*zeta^8 - 66*zeta^6 + 54*zeta^4 - 54*zeta^3 + 42*zeta - 54)*q^1168 + 
(12*zeta^11 - 24*zeta^9 + 16*zeta^8 - 8*zeta^6 + 12*zeta^4 - 12*zeta^3 + 16*zeta
- 12)*q^1170 + (40*zeta^11 - 40*zeta^9 + 20*zeta^8 - 20*zeta^6 + 40*zeta^4 + 
20*zeta - 20)*q^1171 + (-22*zeta^11 - 52*zeta^8 - 52*zeta^6 - 22*zeta^4 - 
22*zeta^3 - 52*zeta)*q^1172 + (-40*zeta^11 + 32*zeta^8 + 32*zeta^6 - 40*zeta^4 -
40*zeta^3 + 32*zeta)*q^1173 + (-36*zeta^11 + 32*zeta^9 - 16*zeta^8 + 16*zeta^6 -
36*zeta^4 - 4*zeta^3 - 16*zeta + 16)*q^1174 + (-20*zeta^11 + 40*zeta^9 - 
4*zeta^8 + 36*zeta^6 - 20*zeta^4 + 20*zeta^3 - 4*zeta + 20)*q^1175 + (4*zeta^11 
- 8*zeta^9 + 16*zeta^8 + 8*zeta^6 + 4*zeta^4 - 4*zeta^3 + 16*zeta - 4)*q^1177 + 
(32*zeta^11 - 48*zeta^9 + 24*zeta^8 - 24*zeta^6 + 32*zeta^4 - 16*zeta^3 + 
24*zeta - 24)*q^1178 + (-8*zeta^11 + 40*zeta^8 + 40*zeta^6 - 8*zeta^4 - 8*zeta^3
+ 40*zeta)*q^1179 + (-4*zeta^11 - 12*zeta^8 - 12*zeta^6 - 4*zeta^4 - 4*zeta^3 - 
12*zeta)*q^1180 + (14*zeta^11 - 44*zeta^9 + 22*zeta^8 - 22*zeta^6 + 14*zeta^4 - 
30*zeta^3 + 22*zeta - 22)*q^1181 + (-4*zeta^11 + 8*zeta^9 - 8*zeta^8 - 4*zeta^4 
+ 4*zeta^3 - 8*zeta + 4)*q^1182 + (20*zeta^11 - 40*zeta^9 + 8*zeta^8 - 32*zeta^6
+ 20*zeta^4 - 20*zeta^3 + 8*zeta - 20)*q^1184 + (64*zeta^11 + 96*zeta^9 - 
48*zeta^8 + 48*zeta^6 + 64*zeta^4 + 160*zeta^3 - 48*zeta + 48)*q^1185 + 
(-24*zeta^11 - 14*zeta^8 - 14*zeta^6 - 24*zeta^4 - 24*zeta^3 - 14*zeta)*q^1186 +
(18*zeta^11 + 6*zeta^8 + 6*zeta^6 + 18*zeta^4 + 18*zeta^3 + 6*zeta)*q^1187 + 
(-16*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 - 16*zeta^4 - 8*zeta^3 - 4*zeta + 
4)*q^1188 + (-52*zeta^11 + 104*zeta^9 - 32*zeta^8 + 72*zeta^6 - 52*zeta^4 + 
52*zeta^3 - 32*zeta + 52)*q^1189 + (-20*zeta^11 + 40*zeta^9 - 52*zeta^8 - 
12*zeta^6 - 20*zeta^4 + 20*zeta^3 - 52*zeta + 20)*q^1191 + (36*zeta^11 + 
4*zeta^9 - 2*zeta^8 + 2*zeta^6 + 36*zeta^4 + 40*zeta^3 - 2*zeta + 2)*q^1192 + 
(-18*zeta^11 + 4*zeta^8 + 4*zeta^6 - 18*zeta^4 - 18*zeta^3 + 4*zeta)*q^1193 + 
(16*zeta^11 + 32*zeta^8 + 32*zeta^6 + 16*zeta^4 + 16*zeta^3 + 32*zeta)*q^1194 + 
(-36*zeta^11 - 56*zeta^9 + 28*zeta^8 - 28*zeta^6 - 36*zeta^4 - 92*zeta^3 + 
28*zeta - 28)*q^1195 + (28*zeta^11 - 56*zeta^9 - 28*zeta^8 - 84*zeta^6 + 
28*zeta^4 - 28*zeta^3 - 28*zeta - 28)*q^1196 + (2*zeta^11 - 4*zeta^9 + 4*zeta^8 
+ 2*zeta^4 - 2*zeta^3 + 4*zeta - 2)*q^1198 + (-16*zeta^11 - 16*zeta^4 - 
16*zeta^3)*q^1199 + (6*zeta^11 - 54*zeta^8 - 54*zeta^6 + 6*zeta^4 + 6*zeta^3 - 
54*zeta)*q^1200 + (-36*zeta^11 + 68*zeta^8 + 68*zeta^6 - 36*zeta^4 - 36*zeta^3 +
68*zeta)*q^1201 + (-6*zeta^11 - 4*zeta^9 + 2*zeta^8 - 2*zeta^6 - 6*zeta^4 - 
10*zeta^3 + 2*zeta - 2)*q^1202 + (24*zeta^11 - 48*zeta^9 + 40*zeta^8 - 8*zeta^6 
+ 24*zeta^4 - 24*zeta^3 + 40*zeta - 24)*q^1203 + (66*zeta^11 - 132*zeta^9 + 
36*zeta^8 - 96*zeta^6 + 66*zeta^4 - 66*zeta^3 + 36*zeta - 66)*q^1205 + 
(16*zeta^11 - 32*zeta^9 + 16*zeta^8 - 16*zeta^6 + 16*zeta^4 - 16*zeta^3 + 
16*zeta - 16)*q^1206 + (52*zeta^11 - 8*zeta^8 - 8*zeta^6 + 52*zeta^4 + 52*zeta^3
- 8*zeta)*q^1207 + (-36*zeta^11 + 12*zeta^8 + 12*zeta^6 - 36*zeta^4 - 36*zeta^3 
+ 12*zeta)*q^1208 + (-48*zeta^11 + 80*zeta^9 - 40*zeta^8 + 40*zeta^6 - 48*zeta^4
+ 32*zeta^3 - 40*zeta + 40)*q^1209 + (-14*zeta^11 + 28*zeta^9 - 14*zeta^8 + 
14*zeta^6 - 14*zeta^4 + 14*zeta^3 - 14*zeta + 14)*q^1210 + (-40*zeta^11 + 
80*zeta^9 - 100*zeta^8 - 20*zeta^6 - 40*zeta^4 + 40*zeta^3 - 100*zeta + 
40)*q^1212 + (-56*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 - 56*zeta^4 - 
48*zeta^3 - 4*zeta + 4)*q^1213 + (-32*zeta^11 - 24*zeta^8 - 24*zeta^6 - 
32*zeta^4 - 32*zeta^3 - 24*zeta)*q^1214 + (-4*zeta^11 + 8*zeta^8 + 8*zeta^6 - 
4*zeta^4 - 4*zeta^3 + 8*zeta)*q^1215 + (28*zeta^11 - 16*zeta^9 + 8*zeta^8 - 
8*zeta^6 + 28*zeta^4 + 12*zeta^3 + 8*zeta - 8)*q^1216 + (-32*zeta^11 + 64*zeta^9
- 38*zeta^8 + 26*zeta^6 - 32*zeta^4 + 32*zeta^3 - 38*zeta + 32)*q^1217 + 
O(q^1218), (zeta^8 + zeta^6 + zeta)*q + (-3*zeta^11 + 4*zeta^9 - 2*zeta^8 + 
2*zeta^6 - 3*zeta^4 + zeta^3 - 2*zeta + 2)*q^2 + (2*zeta^11 + 2*zeta^4 + 
2*zeta^3)*q^3 + (3*zeta^11 + 2*zeta^8 + 2*zeta^6 + 3*zeta^4 + 3*zeta^3 + 
2*zeta)*q^4 + (2*zeta^9 - zeta^8 + zeta^6 + 2*zeta^3 - zeta + 1)*q^5 + 
(-2*zeta^11 + 4*zeta^9 - 6*zeta^8 - 2*zeta^6 - 2*zeta^4 + 2*zeta^3 - 6*zeta + 
2)*q^6 + (-zeta^11 + 2*zeta^9 - 5*zeta^8 - 3*zeta^6 - zeta^4 + zeta^3 - 5*zeta +
1)*q^8 + (-2*zeta^11 + 4*zeta^9 - 2*zeta^8 + 2*zeta^6 - 2*zeta^4 + 2*zeta^3 - 
2*zeta + 2)*q^9 + (zeta^11 + zeta^8 + zeta^6 + zeta^4 + zeta^3 + zeta)*q^10 + 
(-2*zeta^11 - 2*zeta^4 - 2*zeta^3)*q^11 + (10*zeta^11 - 12*zeta^9 + 6*zeta^8 - 
6*zeta^6 + 10*zeta^4 - 2*zeta^3 + 6*zeta - 6)*q^12 + (-zeta^11 + 2*zeta^9 - 
6*zeta^8 - 4*zeta^6 - zeta^4 + zeta^3 - 6*zeta + 1)*q^13 + (2*zeta^11 - 4*zeta^9
- 4*zeta^6 + 2*zeta^4 - 2*zeta^3 - 2)*q^15 + (3*zeta^11 - 6*zeta^9 + 3*zeta^8 - 
3*zeta^6 + 3*zeta^4 - 3*zeta^3 + 3*zeta - 3)*q^16 + (-5*zeta^11 - 3*zeta^8 - 
3*zeta^6 - 5*zeta^4 - 5*zeta^3 - 3*zeta)*q^17 + (4*zeta^11 + 2*zeta^8 + 2*zeta^6
+ 4*zeta^4 + 4*zeta^3 + 2*zeta)*q^18 + (-4*zeta^11 + 4*zeta^9 - 2*zeta^8 + 
2*zeta^6 - 4*zeta^4 - 2*zeta + 2)*q^19 + (-3*zeta^11 + 6*zeta^9 - 4*zeta^8 + 
2*zeta^6 - 3*zeta^4 + 3*zeta^3 - 4*zeta + 3)*q^20 + (2*zeta^11 - 4*zeta^9 + 
6*zeta^8 + 2*zeta^6 + 2*zeta^4 - 2*zeta^3 + 6*zeta - 2)*q^22 + (6*zeta^11 - 
4*zeta^9 + 2*zeta^8 - 2*zeta^6 + 6*zeta^4 + 2*zeta^3 + 2*zeta - 2)*q^23 + 
(-8*zeta^11 - 2*zeta^8 - 2*zeta^6 - 8*zeta^4 - 8*zeta^3 - 2*zeta)*q^24 + 
(-3*zeta^11 - 4*zeta^8 - 4*zeta^6 - 3*zeta^4 - 3*zeta^3 - 4*zeta)*q^25 + 
(16*zeta^11 - 22*zeta^9 + 11*zeta^8 - 11*zeta^6 + 16*zeta^4 - 6*zeta^3 + 11*zeta
- 11)*q^26 + (2*zeta^8 + 2*zeta^6 + 2*zeta)*q^27 + (2*zeta^11 - 4*zeta^9 - 
4*zeta^6 + 2*zeta^4 - 2*zeta^3 - 2)*q^29 + (4*zeta^11 - 4*zeta^9 + 2*zeta^8 - 
2*zeta^6 + 4*zeta^4 + 2*zeta - 2)*q^30 + (6*zeta^11 + 2*zeta^8 + 2*zeta^6 + 
6*zeta^4 + 6*zeta^3 + 2*zeta)*q^31 + (2*zeta^11 - zeta^8 - zeta^6 + 2*zeta^4 + 
2*zeta^3 - zeta)*q^32 + (-4*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 - 4*zeta^4 
+ 4*zeta^3 - 4*zeta + 4)*q^33 + (5*zeta^11 - 10*zeta^9 + 18*zeta^8 + 8*zeta^6 + 
5*zeta^4 - 5*zeta^3 + 18*zeta - 5)*q^34 + (-4*zeta^11 + 8*zeta^9 - 10*zeta^8 - 
2*zeta^6 - 4*zeta^4 + 4*zeta^3 - 10*zeta + 4)*q^36 + (-4*zeta^11 + 8*zeta^9 - 
4*zeta^8 + 4*zeta^6 - 4*zeta^4 + 4*zeta^3 - 4*zeta + 4)*q^37 + (6*zeta^11 + 
2*zeta^8 + 2*zeta^6 + 6*zeta^4 + 6*zeta^3 + 2*zeta)*q^38 + (-10*zeta^11 - 
2*zeta^8 - 2*zeta^6 - 10*zeta^4 - 10*zeta^3 - 2*zeta)*q^39 + (2*zeta^11 - 
6*zeta^9 + 3*zeta^8 - 3*zeta^6 + 2*zeta^4 - 4*zeta^3 + 3*zeta - 3)*q^40 + 
(3*zeta^11 - 6*zeta^9 + 4*zeta^8 - 2*zeta^6 + 3*zeta^4 - 3*zeta^3 + 4*zeta - 
3)*q^41 + (-4*zeta^11 + 8*zeta^9 - 8*zeta^8 - 4*zeta^4 + 4*zeta^3 - 8*zeta + 
4)*q^43 + (-10*zeta^11 + 12*zeta^9 - 6*zeta^8 + 6*zeta^6 - 10*zeta^4 + 2*zeta^3 
- 6*zeta + 6)*q^44 + (2*zeta^11 - 2*zeta^8 - 2*zeta^6 + 2*zeta^4 + 2*zeta^3 - 
2*zeta)*q^45 + (-8*zeta^11 - 2*zeta^8 - 2*zeta^6 - 8*zeta^4 - 8*zeta^3 - 
2*zeta)*q^46 + (-4*zeta^11 + 4*zeta^9 - 2*zeta^8 + 2*zeta^6 - 4*zeta^4 - 2*zeta 
+ 2)*q^47 + (6*zeta^8 + 6*zeta^6 + 6*zeta)*q^48 + (3*zeta^11 - 6*zeta^9 + 
13*zeta^8 + 7*zeta^6 + 3*zeta^4 - 3*zeta^3 + 13*zeta - 3)*q^50 + (-16*zeta^11 + 
20*zeta^9 - 10*zeta^8 + 10*zeta^6 - 16*zeta^4 + 4*zeta^3 - 10*zeta + 10)*q^51 + 
(-17*zeta^11 - 9*zeta^8 - 9*zeta^6 - 17*zeta^4 - 17*zeta^3 - 9*zeta)*q^52 + 
(-2*zeta^11 - 2*zeta^4 - 2*zeta^3)*q^53 + (-6*zeta^11 + 8*zeta^9 - 4*zeta^8 + 
4*zeta^6 - 6*zeta^4 + 2*zeta^3 - 4*zeta + 4)*q^54 + (-2*zeta^11 + 4*zeta^9 + 
4*zeta^6 - 2*zeta^4 + 2*zeta^3 + 2)*q^55 + (-4*zeta^11 + 8*zeta^9 - 8*zeta^8 - 
4*zeta^4 + 4*zeta^3 - 8*zeta + 4)*q^57 + (4*zeta^11 - 4*zeta^9 + 2*zeta^8 - 
2*zeta^6 + 4*zeta^4 + 2*zeta - 2)*q^58 + (6*zeta^11 + 2*zeta^8 + 2*zeta^6 + 
6*zeta^4 + 6*zeta^3 + 2*zeta)*q^59 + (-2*zeta^11 - 6*zeta^8 - 6*zeta^6 - 
2*zeta^4 - 2*zeta^3 - 6*zeta)*q^60 + (-2*zeta^11 + 10*zeta^9 - 5*zeta^8 + 
5*zeta^6 - 2*zeta^4 + 8*zeta^3 - 5*zeta + 5)*q^61 + (-6*zeta^11 + 12*zeta^9 - 
20*zeta^8 - 8*zeta^6 - 6*zeta^4 + 6*zeta^3 - 20*zeta + 6)*q^62 + (-2*zeta^11 + 
4*zeta^9 - 11*zeta^8 - 7*zeta^6 - 2*zeta^4 + 2*zeta^3 - 11*zeta + 2)*q^64 + 
(2*zeta^11 - 8*zeta^9 + 4*zeta^8 - 4*zeta^6 + 2*zeta^4 - 6*zeta^3 + 4*zeta - 
4)*q^65 + (8*zeta^11 + 4*zeta^8 + 4*zeta^6 + 8*zeta^4 + 8*zeta^3 + 4*zeta)*q^66 
+ (4*zeta^11 + 4*zeta^8 + 4*zeta^6 + 4*zeta^4 + 4*zeta^3 + 4*zeta)*q^67 + 
(-28*zeta^11 + 42*zeta^9 - 21*zeta^8 + 21*zeta^6 - 28*zeta^4 + 14*zeta^3 - 
21*zeta + 21)*q^68 + (8*zeta^11 - 16*zeta^9 + 12*zeta^8 - 4*zeta^6 + 8*zeta^4 - 
8*zeta^3 + 12*zeta - 8)*q^69 + (-8*zeta^11 + 16*zeta^9 - 18*zeta^8 - 2*zeta^6 - 
8*zeta^4 + 8*zeta^3 - 18*zeta + 8)*q^71 + (10*zeta^11 - 16*zeta^9 + 8*zeta^8 - 
8*zeta^6 + 10*zeta^4 - 6*zeta^3 + 8*zeta - 8)*q^72 + (3*zeta^11 + 7*zeta^8 + 
7*zeta^6 + 3*zeta^4 + 3*zeta^3 + 7*zeta)*q^73 + (8*zeta^11 + 4*zeta^8 + 4*zeta^6
+ 8*zeta^4 + 8*zeta^3 + 4*zeta)*q^74 + (-14*zeta^11 + 12*zeta^9 - 6*zeta^8 + 
6*zeta^6 - 14*zeta^4 - 2*zeta^3 - 6*zeta + 6)*q^75 + (-2*zeta^11 + 4*zeta^9 - 
12*zeta^8 - 8*zeta^6 - 2*zeta^4 + 2*zeta^3 - 12*zeta + 2)*q^76 + (10*zeta^11 - 
20*zeta^9 + 32*zeta^8 + 12*zeta^6 + 10*zeta^4 - 10*zeta^3 + 32*zeta - 10)*q^78 +
(-8*zeta^9 + 4*zeta^8 - 4*zeta^6 - 8*zeta^3 + 4*zeta - 4)*q^79 + (-3*zeta^11 + 
3*zeta^8 + 3*zeta^6 - 3*zeta^4 - 3*zeta^3 + 3*zeta)*q^80 + (-2*zeta^11 - 
2*zeta^4 - 2*zeta^3)*q^81 + (-6*zeta^11 + 10*zeta^9 - 5*zeta^8 + 5*zeta^6 - 
6*zeta^4 + 4*zeta^3 - 5*zeta + 5)*q^82 + (8*zeta^11 - 16*zeta^9 + 20*zeta^8 + 
4*zeta^6 + 8*zeta^4 - 8*zeta^3 + 20*zeta - 8)*q^83 + (4*zeta^11 - 8*zeta^9 + 
6*zeta^8 - 2*zeta^6 + 4*zeta^4 - 4*zeta^3 + 6*zeta - 4)*q^85 + (16*zeta^11 - 
24*zeta^9 + 12*zeta^8 - 12*zeta^6 + 16*zeta^4 - 8*zeta^3 + 12*zeta - 12)*q^86 + 
(-4*zeta^11 + 4*zeta^8 + 4*zeta^6 - 4*zeta^4 - 4*zeta^3 + 4*zeta)*q^87 + 
(8*zeta^11 + 2*zeta^8 + 2*zeta^6 + 8*zeta^4 + 8*zeta^3 + 2*zeta)*q^88 + 
(4*zeta^11 - 14*zeta^9 + 7*zeta^8 - 7*zeta^6 + 4*zeta^4 - 10*zeta^3 + 7*zeta - 
7)*q^89 + (-2*zeta^11 + 4*zeta^9 - 4*zeta^8 - 2*zeta^4 + 2*zeta^3 - 4*zeta + 
2)*q^90 + (14*zeta^8 + 14*zeta^6 + 14*zeta)*q^92 + (16*zeta^11 - 24*zeta^9 + 
12*zeta^8 - 12*zeta^6 + 16*zeta^4 - 8*zeta^3 + 12*zeta - 12)*q^93 + (6*zeta^11 +
2*zeta^8 + 2*zeta^6 + 6*zeta^4 + 6*zeta^3 + 2*zeta)*q^94 + (4*zeta^8 + 4*zeta^6 
+ 4*zeta)*q^95 + (2*zeta^11 - 8*zeta^9 + 4*zeta^8 - 4*zeta^6 + 2*zeta^4 - 
6*zeta^3 + 4*zeta - 4)*q^96 + (-zeta^11 + 2*zeta^9 - 6*zeta^8 - 4*zeta^6 - 
zeta^4 + zeta^3 - 6*zeta + 1)*q^97 + (4*zeta^8 + 4*zeta^6 + 4*zeta)*q^99 + 
(-19*zeta^11 + 34*zeta^9 - 17*zeta^8 + 17*zeta^6 - 19*zeta^4 + 15*zeta^3 - 
17*zeta + 17)*q^100 + (-15*zeta^11 - 5*zeta^8 - 5*zeta^6 - 15*zeta^4 - 15*zeta^3
- 5*zeta)*q^101 + (26*zeta^11 + 10*zeta^8 + 10*zeta^6 + 26*zeta^4 + 26*zeta^3 + 
10*zeta)*q^102 + (16*zeta^11 - 20*zeta^9 + 10*zeta^8 - 10*zeta^6 + 16*zeta^4 - 
4*zeta^3 + 10*zeta - 10)*q^103 + (7*zeta^11 - 14*zeta^9 + 28*zeta^8 + 14*zeta^6 
+ 7*zeta^4 - 7*zeta^3 + 28*zeta - 7)*q^104 + (2*zeta^11 - 4*zeta^9 + 6*zeta^8 + 
2*zeta^6 + 2*zeta^4 - 2*zeta^3 + 6*zeta - 2)*q^106 + (-14*zeta^11 + 20*zeta^9 - 
10*zeta^8 + 10*zeta^6 - 14*zeta^4 + 6*zeta^3 - 10*zeta + 10)*q^107 + (6*zeta^11 
+ 4*zeta^8 + 4*zeta^6 + 6*zeta^4 + 6*zeta^3 + 4*zeta)*q^108 + (4*zeta^11 + 
4*zeta^8 + 4*zeta^6 + 4*zeta^4 + 4*zeta^3 + 4*zeta)*q^109 + (-4*zeta^11 + 
4*zeta^9 - 2*zeta^8 + 2*zeta^6 - 4*zeta^4 - 2*zeta + 2)*q^110 + (-8*zeta^8 - 
8*zeta^6 - 8*zeta)*q^111 + (8*zeta^11 - 16*zeta^9 + 22*zeta^8 + 6*zeta^6 + 
8*zeta^4 - 8*zeta^3 + 22*zeta - 8)*q^113 + (16*zeta^11 - 24*zeta^9 + 12*zeta^8 -
12*zeta^6 + 16*zeta^4 - 8*zeta^3 + 12*zeta - 12)*q^114 + (2*zeta^11 - 10*zeta^8 
- 10*zeta^6 + 2*zeta^4 + 2*zeta^3 - 10*zeta)*q^115 + (-2*zeta^11 - 6*zeta^8 - 
6*zeta^6 - 2*zeta^4 - 2*zeta^3 - 6*zeta)*q^116 + (12*zeta^11 - 20*zeta^9 + 
10*zeta^8 - 10*zeta^6 + 12*zeta^4 - 8*zeta^3 + 10*zeta - 10)*q^117 + (-6*zeta^11
+ 12*zeta^9 - 20*zeta^8 - 8*zeta^6 - 6*zeta^4 + 6*zeta^3 - 20*zeta + 6)*q^118 + 
(-2*zeta^11 + 4*zeta^9 + 4*zeta^8 + 8*zeta^6 - 2*zeta^4 + 2*zeta^3 + 4*zeta + 
2)*q^120 + (-7*zeta^11 + 14*zeta^9 - 7*zeta^8 + 7*zeta^6 - 7*zeta^4 + 7*zeta^3 -
7*zeta + 7)*q^121 + (7*zeta^11 + 5*zeta^8 + 5*zeta^6 + 7*zeta^4 + 7*zeta^3 + 
5*zeta)*q^122 + (2*zeta^11 + 6*zeta^8 + 6*zeta^6 + 2*zeta^4 + 2*zeta^3 + 
6*zeta)*q^123 + (32*zeta^11 - 44*zeta^9 + 22*zeta^8 - 22*zeta^6 + 32*zeta^4 - 
12*zeta^3 + 22*zeta - 22)*q^124 + (4*zeta^11 - 8*zeta^9 + 8*zeta^8 + 4*zeta^4 - 
4*zeta^3 + 8*zeta - 4)*q^125 + (4*zeta^11 - 8*zeta^9 + 12*zeta^8 + 4*zeta^6 + 
4*zeta^4 - 4*zeta^3 + 12*zeta - 4)*q^127 + (27*zeta^11 - 32*zeta^9 + 16*zeta^8 -
16*zeta^6 + 27*zeta^4 - 5*zeta^3 + 16*zeta - 16)*q^128 + (-8*zeta^11 - 8*zeta^8 
- 8*zeta^6 - 8*zeta^4 - 8*zeta^3 - 8*zeta)*q^129 + (-6*zeta^11 - 4*zeta^8 - 
4*zeta^6 - 6*zeta^4 - 6*zeta^3 - 4*zeta)*q^130 + (-12*zeta^11 + 8*zeta^9 - 
4*zeta^8 + 4*zeta^6 - 12*zeta^4 - 4*zeta^3 - 4*zeta + 4)*q^131 + (-8*zeta^11 + 
16*zeta^9 - 20*zeta^8 - 4*zeta^6 - 8*zeta^4 + 8*zeta^3 - 20*zeta + 8)*q^132 + 
(-4*zeta^11 + 8*zeta^9 - 16*zeta^8 - 8*zeta^6 - 4*zeta^4 + 4*zeta^3 - 16*zeta + 
4)*q^134 + (4*zeta^9 - 2*zeta^8 + 2*zeta^6 + 4*zeta^3 - 2*zeta + 2)*q^135 + 
(23*zeta^11 + 11*zeta^8 + 11*zeta^6 + 23*zeta^4 + 23*zeta^3 + 11*zeta)*q^136 + 
(-10*zeta^11 - 10*zeta^8 - 10*zeta^6 - 10*zeta^4 - 10*zeta^3 - 10*zeta)*q^137 + 
(-20*zeta^11 + 32*zeta^9 - 16*zeta^8 + 16*zeta^6 - 20*zeta^4 + 12*zeta^3 - 
16*zeta + 16)*q^138 + (-4*zeta^11 + 8*zeta^9 + 4*zeta^8 + 12*zeta^6 - 4*zeta^4 +
4*zeta^3 + 4*zeta + 4)*q^139 + (-4*zeta^11 + 8*zeta^9 - 8*zeta^8 - 4*zeta^4 + 
4*zeta^3 - 8*zeta + 4)*q^141 + (38*zeta^11 - 56*zeta^9 + 28*zeta^8 - 28*zeta^6 +
38*zeta^4 - 18*zeta^3 + 28*zeta - 28)*q^142 + (10*zeta^11 + 2*zeta^8 + 2*zeta^6 
+ 10*zeta^4 + 10*zeta^3 + 2*zeta)*q^143 + (-6*zeta^11 - 6*zeta^4 - 
6*zeta^3)*q^144 + (-4*zeta^11 - 8*zeta^9 + 4*zeta^8 - 4*zeta^6 - 4*zeta^4 - 
12*zeta^3 + 4*zeta - 4)*q^145 + (-3*zeta^11 + 6*zeta^9 - 16*zeta^8 - 10*zeta^6 -
3*zeta^4 + 3*zeta^3 - 16*zeta + 3)*q^146 + (-8*zeta^11 + 16*zeta^9 - 20*zeta^8 -
4*zeta^6 - 8*zeta^4 + 8*zeta^3 - 20*zeta + 8)*q^148 + (-10*zeta^11 + 4*zeta^9 - 
2*zeta^8 + 2*zeta^6 - 10*zeta^4 - 6*zeta^3 - 2*zeta + 2)*q^149 + (20*zeta^11 + 
6*zeta^8 + 6*zeta^6 + 20*zeta^4 + 20*zeta^3 + 6*zeta)*q^150 + (12*zeta^11 + 
12*zeta^4 + 12*zeta^3)*q^151 + (16*zeta^11 - 20*zeta^9 + 10*zeta^8 - 10*zeta^6 +
16*zeta^4 - 4*zeta^3 + 10*zeta - 10)*q^152 + (6*zeta^11 - 12*zeta^9 + 16*zeta^8 
+ 4*zeta^6 + 6*zeta^4 - 6*zeta^3 + 16*zeta - 6)*q^153 + (-4*zeta^8 - 4*zeta^6 - 
4*zeta)*q^155 + (-52*zeta^11 + 68*zeta^9 - 34*zeta^8 + 34*zeta^6 - 52*zeta^4 + 
16*zeta^3 - 34*zeta + 34)*q^156 + (-19*zeta^11 - 3*zeta^8 - 3*zeta^6 - 19*zeta^4
- 19*zeta^3 - 3*zeta)*q^157 + (-4*zeta^11 - 4*zeta^8 - 4*zeta^6 - 4*zeta^4 - 
4*zeta^3 - 4*zeta)*q^158 + (-4*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 - 
4*zeta^4 + 4*zeta^3 - 4*zeta + 4)*q^159 + (5*zeta^11 - 10*zeta^9 + 2*zeta^8 - 
8*zeta^6 + 5*zeta^4 - 5*zeta^3 + 2*zeta - 5)*q^160 + (2*zeta^11 - 4*zeta^9 + 
6*zeta^8 + 2*zeta^6 + 2*zeta^4 - 2*zeta^3 + 6*zeta - 2)*q^162 + (16*zeta^11 - 
16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 16*zeta^4 + 8*zeta - 8)*q^163 + (9*zeta^11 - 
zeta^8 - zeta^6 + 9*zeta^4 + 9*zeta^3 - zeta)*q^164 + (4*zeta^11 - 4*zeta^8 - 
4*zeta^6 + 4*zeta^4 + 4*zeta^3 - 4*zeta)*q^165 + (-44*zeta^11 + 64*zeta^9 - 
32*zeta^8 + 32*zeta^6 - 44*zeta^4 + 20*zeta^3 - 32*zeta + 32)*q^166 + 
(-14*zeta^11 + 28*zeta^9 - 28*zeta^8 - 14*zeta^4 + 14*zeta^3 - 28*zeta + 
14)*q^167 + (8*zeta^11 - 16*zeta^9 + 21*zeta^8 + 5*zeta^6 + 8*zeta^4 - 8*zeta^3 
+ 21*zeta - 8)*q^169 + (-10*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 
10*zeta^4 + 6*zeta^3 - 8*zeta + 8)*q^170 + (4*zeta^11 + 4*zeta^8 + 4*zeta^6 + 
4*zeta^4 + 4*zeta^3 + 4*zeta)*q^171 + (-20*zeta^11 - 4*zeta^8 - 4*zeta^6 - 
20*zeta^4 - 20*zeta^3 - 4*zeta)*q^172 + (-4*zeta^11 + 18*zeta^9 - 9*zeta^8 + 
9*zeta^6 - 4*zeta^4 + 14*zeta^3 - 9*zeta + 9)*q^173 + (4*zeta^11 - 8*zeta^9 + 
8*zeta^8 + 4*zeta^4 - 4*zeta^3 + 8*zeta - 4)*q^174 + (-6*zeta^8 - 6*zeta^6 - 
6*zeta)*q^176 + (16*zeta^11 - 24*zeta^9 + 12*zeta^8 - 12*zeta^6 + 16*zeta^4 - 
8*zeta^3 + 12*zeta - 12)*q^177 + (-11*zeta^11 - 7*zeta^8 - 7*zeta^6 - 11*zeta^4 
- 11*zeta^3 - 7*zeta)*q^178 + (-10*zeta^11 + 4*zeta^8 + 4*zeta^6 - 10*zeta^4 - 
10*zeta^3 + 4*zeta)*q^179 + (8*zeta^11 - 4*zeta^9 + 2*zeta^8 - 2*zeta^6 + 
8*zeta^4 + 4*zeta^3 + 2*zeta - 2)*q^180 + (zeta^11 - 2*zeta^9 + 6*zeta^8 + 
4*zeta^6 + zeta^4 - zeta^3 + 6*zeta - 1)*q^181 + (6*zeta^11 - 12*zeta^9 - 
4*zeta^8 - 16*zeta^6 + 6*zeta^4 - 6*zeta^3 - 4*zeta - 6)*q^183 + (-22*zeta^11 + 
24*zeta^9 - 12*zeta^8 + 12*zeta^6 - 22*zeta^4 + 2*zeta^3 - 12*zeta + 12)*q^184 +
(4*zeta^11 - 4*zeta^8 - 4*zeta^6 + 4*zeta^4 + 4*zeta^3 - 4*zeta)*q^185 + 
(-28*zeta^11 - 12*zeta^8 - 12*zeta^6 - 28*zeta^4 - 28*zeta^3 - 12*zeta)*q^186 + 
(16*zeta^11 - 20*zeta^9 + 10*zeta^8 - 10*zeta^6 + 16*zeta^4 - 4*zeta^3 + 10*zeta
- 10)*q^187 + (-2*zeta^11 + 4*zeta^9 - 12*zeta^8 - 8*zeta^6 - 2*zeta^4 + 
2*zeta^3 - 12*zeta + 2)*q^188 + (-4*zeta^8 - 4*zeta^6 - 4*zeta)*q^190 + 
(-18*zeta^11 + 36*zeta^9 - 18*zeta^8 + 18*zeta^6 - 18*zeta^4 + 18*zeta^3 - 
18*zeta + 18)*q^191 + (-18*zeta^11 - 4*zeta^8 - 4*zeta^6 - 18*zeta^4 - 18*zeta^3
- 4*zeta)*q^192 + (-14*zeta^11 - 8*zeta^8 - 8*zeta^6 - 14*zeta^4 - 14*zeta^3 - 
8*zeta)*q^193 + (16*zeta^11 - 22*zeta^9 + 11*zeta^8 - 11*zeta^6 + 16*zeta^4 - 
6*zeta^3 + 11*zeta - 11)*q^194 + (-4*zeta^11 + 8*zeta^9 + 4*zeta^8 + 12*zeta^6 -
4*zeta^4 + 4*zeta^3 + 4*zeta + 4)*q^195 + (2*zeta^8 + 2*zeta^6 + 2*zeta)*q^197 +
(-12*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 12*zeta^4 + 4*zeta^3 - 8*zeta +
8)*q^198 + (-12*zeta^11 + 4*zeta^8 + 4*zeta^6 - 12*zeta^4 - 12*zeta^3 + 
4*zeta)*q^199 + (16*zeta^11 + 11*zeta^8 + 11*zeta^6 + 16*zeta^4 + 16*zeta^3 + 
11*zeta)*q^200 + (16*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 16*zeta^4 + 
8*zeta - 8)*q^201 + (15*zeta^11 - 30*zeta^9 + 50*zeta^8 + 20*zeta^6 + 15*zeta^4 
- 15*zeta^3 + 50*zeta - 15)*q^202 + (-14*zeta^11 + 28*zeta^9 - 56*zeta^8 - 
28*zeta^6 - 14*zeta^4 + 14*zeta^3 - 56*zeta + 14)*q^204 + (-6*zeta^11 - 4*zeta^9
+ 2*zeta^8 - 2*zeta^6 - 6*zeta^4 - 10*zeta^3 + 2*zeta - 2)*q^205 + (-26*zeta^11 
- 10*zeta^8 - 10*zeta^6 - 26*zeta^4 - 26*zeta^3 - 10*zeta)*q^206 + (-4*zeta^11 -
8*zeta^8 - 8*zeta^6 - 4*zeta^4 - 4*zeta^3 - 8*zeta)*q^207 + (-18*zeta^11 + 
30*zeta^9 - 15*zeta^8 + 15*zeta^6 - 18*zeta^4 + 12*zeta^3 - 15*zeta + 15)*q^208 
+ (4*zeta^11 - 8*zeta^9 + 8*zeta^8 + 4*zeta^4 - 4*zeta^3 + 8*zeta - 4)*q^209 + 
(-12*zeta^11 + 24*zeta^9 - 28*zeta^8 - 4*zeta^6 - 12*zeta^4 + 12*zeta^3 - 
28*zeta + 12)*q^211 + (-10*zeta^11 + 12*zeta^9 - 6*zeta^8 + 6*zeta^6 - 10*zeta^4
+ 2*zeta^3 - 6*zeta + 6)*q^212 + (-20*zeta^11 - 16*zeta^8 - 16*zeta^6 - 
20*zeta^4 - 20*zeta^3 - 16*zeta)*q^213 + (24*zeta^11 + 10*zeta^8 + 10*zeta^6 + 
24*zeta^4 + 24*zeta^3 + 10*zeta)*q^214 + (8*zeta^11 + 8*zeta^4 + 8*zeta^3)*q^215
+ (-2*zeta^11 + 4*zeta^9 - 10*zeta^8 - 6*zeta^6 - 2*zeta^4 + 2*zeta^3 - 10*zeta 
+ 2)*q^216 + (-4*zeta^11 + 8*zeta^9 - 16*zeta^8 - 8*zeta^6 - 4*zeta^4 + 4*zeta^3
- 16*zeta + 4)*q^218 + (20*zeta^11 - 12*zeta^9 + 6*zeta^8 - 6*zeta^6 + 20*zeta^4
+ 8*zeta^3 + 6*zeta - 6)*q^219 + (2*zeta^11 + 6*zeta^8 + 6*zeta^6 + 2*zeta^4 + 
2*zeta^3 + 6*zeta)*q^220 + (28*zeta^11 + 14*zeta^8 + 14*zeta^6 + 28*zeta^4 + 
28*zeta^3 + 14*zeta)*q^221 + (24*zeta^11 - 32*zeta^9 + 16*zeta^8 - 16*zeta^6 + 
24*zeta^4 - 8*zeta^3 + 16*zeta - 16)*q^222 + (12*zeta^11 - 24*zeta^9 + 16*zeta^8
- 8*zeta^6 + 12*zeta^4 - 12*zeta^3 + 16*zeta - 12)*q^223 + (8*zeta^11 - 
16*zeta^9 + 14*zeta^8 - 2*zeta^6 + 8*zeta^4 - 8*zeta^3 + 14*zeta - 8)*q^225 + 
(-50*zeta^11 + 72*zeta^9 - 36*zeta^8 + 36*zeta^6 - 50*zeta^4 + 22*zeta^3 - 
36*zeta + 36)*q^226 + (10*zeta^11 + 14*zeta^8 + 14*zeta^6 + 10*zeta^4 + 
10*zeta^3 + 14*zeta)*q^227 + (-20*zeta^11 - 4*zeta^8 - 4*zeta^6 - 20*zeta^4 - 
20*zeta^3 - 4*zeta)*q^228 + (-10*zeta^11 + 14*zeta^9 - 7*zeta^8 + 7*zeta^6 - 
10*zeta^4 + 4*zeta^3 - 7*zeta + 7)*q^229 + (-2*zeta^11 + 4*zeta^9 + 4*zeta^8 + 
8*zeta^6 - 2*zeta^4 + 2*zeta^3 + 4*zeta + 2)*q^230 + (-2*zeta^11 + 4*zeta^9 + 
4*zeta^8 + 8*zeta^6 - 2*zeta^4 + 2*zeta^3 + 4*zeta + 2)*q^232 + (28*zeta^11 - 
36*zeta^9 + 18*zeta^8 - 18*zeta^6 + 28*zeta^4 - 8*zeta^3 + 18*zeta - 18)*q^233 +
(-22*zeta^11 - 10*zeta^8 - 10*zeta^6 - 22*zeta^4 - 22*zeta^3 - 10*zeta)*q^234 + 
(4*zeta^8 + 4*zeta^6 + 4*zeta)*q^235 + (32*zeta^11 - 44*zeta^9 + 22*zeta^8 - 
22*zeta^6 + 32*zeta^4 - 12*zeta^3 + 22*zeta - 22)*q^236 + (-8*zeta^11 + 
16*zeta^9 + 16*zeta^6 - 8*zeta^4 + 8*zeta^3 + 8)*q^237 + (4*zeta^11 - 8*zeta^9 -
2*zeta^8 - 10*zeta^6 + 4*zeta^4 - 4*zeta^3 - 2*zeta - 4)*q^239 + (12*zeta^9 - 
6*zeta^8 + 6*zeta^6 + 12*zeta^3 - 6*zeta + 6)*q^240 + (9*zeta^11 - 3*zeta^8 - 
3*zeta^6 + 9*zeta^4 + 9*zeta^3 - 3*zeta)*q^241 + (14*zeta^11 + 7*zeta^8 + 
7*zeta^6 + 14*zeta^4 + 14*zeta^3 + 7*zeta)*q^242 + (2*zeta^11 - 4*zeta^9 + 
2*zeta^8 - 2*zeta^6 + 2*zeta^4 - 2*zeta^3 + 2*zeta - 2)*q^243 + (-13*zeta^11 + 
26*zeta^9 - 22*zeta^8 + 4*zeta^6 - 13*zeta^4 + 13*zeta^3 - 22*zeta + 13)*q^244 +
(-2*zeta^11 + 4*zeta^9 - 12*zeta^8 - 8*zeta^6 - 2*zeta^4 + 2*zeta^3 - 12*zeta + 
2)*q^246 + (20*zeta^11 - 24*zeta^9 + 12*zeta^8 - 12*zeta^6 + 20*zeta^4 - 
4*zeta^3 + 12*zeta - 12)*q^247 + (-26*zeta^11 - 10*zeta^8 - 10*zeta^6 - 
26*zeta^4 - 26*zeta^3 - 10*zeta)*q^248 + (24*zeta^11 + 16*zeta^8 + 16*zeta^6 + 
24*zeta^4 + 24*zeta^3 + 16*zeta)*q^249 + (-16*zeta^11 + 24*zeta^9 - 12*zeta^8 + 
12*zeta^6 - 16*zeta^4 + 8*zeta^3 - 12*zeta + 12)*q^250 + (-6*zeta^11 + 12*zeta^9
- 8*zeta^8 + 4*zeta^6 - 6*zeta^4 + 6*zeta^3 - 8*zeta + 6)*q^251 + (-8*zeta^11 + 
16*zeta^9 - 12*zeta^8 + 4*zeta^6 - 8*zeta^4 + 8*zeta^3 - 12*zeta + 8)*q^253 + 
(-28*zeta^11 + 40*zeta^9 - 20*zeta^8 + 20*zeta^6 - 28*zeta^4 + 12*zeta^3 - 
20*zeta + 20)*q^254 + (4*zeta^11 + 8*zeta^8 + 8*zeta^6 + 4*zeta^4 + 4*zeta^3 + 
8*zeta)*q^255 + (-25*zeta^11 - 12*zeta^8 - 12*zeta^6 - 25*zeta^4 - 25*zeta^3 - 
12*zeta)*q^256 + (28*zeta^11 - 26*zeta^9 + 13*zeta^8 - 13*zeta^6 + 28*zeta^4 + 
2*zeta^3 + 13*zeta - 13)*q^257 + (8*zeta^11 - 16*zeta^9 + 32*zeta^8 + 16*zeta^6 
+ 8*zeta^4 - 8*zeta^3 + 32*zeta - 8)*q^258 + (10*zeta^11 - 20*zeta^9 + 18*zeta^8
- 2*zeta^6 + 10*zeta^4 - 10*zeta^3 + 18*zeta - 10)*q^260 + (-8*zeta^9 + 4*zeta^8
- 4*zeta^6 - 8*zeta^3 + 4*zeta - 4)*q^261 + (16*zeta^11 + 4*zeta^8 + 4*zeta^6 + 
16*zeta^4 + 16*zeta^3 + 4*zeta)*q^262 + (-14*zeta^11 - 8*zeta^8 - 8*zeta^6 - 
14*zeta^4 - 14*zeta^3 - 8*zeta)*q^263 + (20*zeta^11 - 32*zeta^9 + 16*zeta^8 - 
16*zeta^6 + 20*zeta^4 - 12*zeta^3 + 16*zeta - 16)*q^264 + (-2*zeta^11 + 4*zeta^9
+ 4*zeta^6 - 2*zeta^4 + 2*zeta^3 + 2)*q^265 + (-6*zeta^11 + 12*zeta^9 + 8*zeta^8
+ 20*zeta^6 - 6*zeta^4 + 6*zeta^3 + 8*zeta + 6)*q^267 + (24*zeta^11 - 40*zeta^9 
+ 20*zeta^8 - 20*zeta^6 + 24*zeta^4 - 16*zeta^3 + 20*zeta - 20)*q^268 + 
(-7*zeta^11 - 9*zeta^8 - 9*zeta^6 - 7*zeta^4 - 7*zeta^3 - 9*zeta)*q^269 + 
(2*zeta^11 + 2*zeta^8 + 2*zeta^6 + 2*zeta^4 + 2*zeta^3 + 2*zeta)*q^270 + 
(-24*zeta^11 + 28*zeta^9 - 14*zeta^8 + 14*zeta^6 - 24*zeta^4 + 4*zeta^3 - 
14*zeta + 14)*q^271 + (-9*zeta^11 + 18*zeta^9 - 24*zeta^8 - 6*zeta^6 - 9*zeta^4 
+ 9*zeta^3 - 24*zeta + 9)*q^272 + (10*zeta^11 - 20*zeta^9 + 40*zeta^8 + 
20*zeta^6 + 10*zeta^4 - 10*zeta^3 + 40*zeta - 10)*q^274 + (14*zeta^11 - 
12*zeta^9 + 6*zeta^8 - 6*zeta^6 + 14*zeta^4 + 2*zeta^3 + 6*zeta - 6)*q^275 + 
(28*zeta^11 + 28*zeta^4 + 28*zeta^3)*q^276 + (10*zeta^11 + 8*zeta^8 + 8*zeta^6 +
10*zeta^4 + 10*zeta^3 + 8*zeta)*q^277 + (-20*zeta^11 + 24*zeta^9 - 12*zeta^8 + 
12*zeta^6 - 20*zeta^4 + 4*zeta^3 - 12*zeta + 12)*q^278 + (-4*zeta^11 + 8*zeta^9 
- 16*zeta^8 - 8*zeta^6 - 4*zeta^4 + 4*zeta^3 - 16*zeta + 4)*q^279 + (-6*zeta^11 
+ 12*zeta^9 - 20*zeta^8 - 8*zeta^6 - 6*zeta^4 + 6*zeta^3 - 20*zeta + 6)*q^281 + 
(16*zeta^11 - 24*zeta^9 + 12*zeta^8 - 12*zeta^6 + 16*zeta^4 - 8*zeta^3 + 12*zeta
- 12)*q^282 + (-6*zeta^11 - 6*zeta^8 - 6*zeta^6 - 6*zeta^4 - 6*zeta^3 - 
6*zeta)*q^283 + (-46*zeta^11 - 12*zeta^8 - 12*zeta^6 - 46*zeta^4 - 46*zeta^3 - 
12*zeta)*q^284 + (8*zeta^11 + 8*zeta^4 + 8*zeta^3)*q^285 + (-10*zeta^11 + 
20*zeta^9 - 32*zeta^8 - 12*zeta^6 - 10*zeta^4 + 10*zeta^3 - 32*zeta + 10)*q^286 
+ (2*zeta^11 - 4*zeta^9 - 2*zeta^8 - 6*zeta^6 + 2*zeta^4 - 2*zeta^3 - 2*zeta - 
2)*q^288 + (29*zeta^11 - 34*zeta^9 + 17*zeta^8 - 17*zeta^6 + 29*zeta^4 - 
5*zeta^3 + 17*zeta - 17)*q^289 + (-4*zeta^8 - 4*zeta^6 - 4*zeta)*q^290 + 
(-10*zeta^11 - 2*zeta^8 - 2*zeta^6 - 10*zeta^4 - 10*zeta^3 - 2*zeta)*q^291 + 
(22*zeta^11 - 46*zeta^9 + 23*zeta^8 - 23*zeta^6 + 22*zeta^4 - 24*zeta^3 + 
23*zeta - 23)*q^292 + (-zeta^11 + 2*zeta^9 - 20*zeta^8 - 18*zeta^6 - zeta^4 + 
zeta^3 - 20*zeta + 1)*q^293 + (-4*zeta^8 - 4*zeta^6 - 4*zeta)*q^295 + 
(20*zeta^11 - 32*zeta^9 + 16*zeta^8 - 16*zeta^6 + 20*zeta^4 - 12*zeta^3 + 
16*zeta - 16)*q^296 + (-4*zeta^11 - 4*zeta^4 - 4*zeta^3)*q^297 + (12*zeta^11 + 
2*zeta^8 + 2*zeta^6 + 12*zeta^4 + 12*zeta^3 + 2*zeta)*q^298 + (-28*zeta^11 + 
28*zeta^9 - 14*zeta^8 + 14*zeta^6 - 28*zeta^4 - 14*zeta + 14)*q^299 + 
(-4*zeta^11 + 8*zeta^9 - 38*zeta^8 - 30*zeta^6 - 4*zeta^4 + 4*zeta^3 - 38*zeta +
4)*q^300 + (-12*zeta^11 + 24*zeta^9 - 36*zeta^8 - 12*zeta^6 - 12*zeta^4 + 
12*zeta^3 - 36*zeta + 12)*q^302 + (-40*zeta^11 + 60*zeta^9 - 30*zeta^8 + 
30*zeta^6 - 40*zeta^4 + 20*zeta^3 - 30*zeta + 30)*q^303 + (-6*zeta^11 - 6*zeta^8
- 6*zeta^6 - 6*zeta^4 - 6*zeta^3 - 6*zeta)*q^304 + (8*zeta^11 - 14*zeta^8 - 
14*zeta^6 + 8*zeta^4 + 8*zeta^3 - 14*zeta)*q^305 + (-36*zeta^11 + 52*zeta^9 - 
26*zeta^8 + 26*zeta^6 - 36*zeta^4 + 16*zeta^3 - 26*zeta + 26)*q^306 + 
(10*zeta^11 - 20*zeta^9 + 4*zeta^8 - 16*zeta^6 + 10*zeta^4 - 10*zeta^3 + 4*zeta 
- 10)*q^307 + (12*zeta^11 - 24*zeta^9 + 32*zeta^8 + 8*zeta^6 + 12*zeta^4 - 
12*zeta^3 + 32*zeta - 12)*q^309 + (12*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 
+ 12*zeta^4 - 4*zeta^3 + 8*zeta - 8)*q^310 + (18*zeta^11 + 10*zeta^8 + 10*zeta^6
+ 18*zeta^4 + 18*zeta^3 + 10*zeta)*q^311 + (42*zeta^11 + 14*zeta^8 + 14*zeta^6 +
42*zeta^4 + 42*zeta^3 + 14*zeta)*q^312 + (22*zeta^11 - 30*zeta^9 + 15*zeta^8 - 
15*zeta^6 + 22*zeta^4 - 8*zeta^3 + 15*zeta - 15)*q^313 + (19*zeta^11 - 38*zeta^9
+ 60*zeta^8 + 22*zeta^6 + 19*zeta^4 - 19*zeta^3 + 60*zeta - 19)*q^314 + 
(12*zeta^11 - 24*zeta^9 + 16*zeta^8 - 8*zeta^6 + 12*zeta^4 - 12*zeta^3 + 16*zeta
- 12)*q^316 + (10*zeta^11 - 20*zeta^9 + 10*zeta^8 - 10*zeta^6 + 10*zeta^4 - 
10*zeta^3 + 10*zeta - 10)*q^317 + (8*zeta^11 + 4*zeta^8 + 4*zeta^6 + 8*zeta^4 + 
8*zeta^3 + 4*zeta)*q^318 + (4*zeta^11 - 4*zeta^8 - 4*zeta^6 + 4*zeta^4 + 
4*zeta^3 - 4*zeta)*q^319 + (4*zeta^11 - 14*zeta^9 + 7*zeta^8 - 7*zeta^6 + 
4*zeta^4 - 10*zeta^3 + 7*zeta - 7)*q^320 + (-8*zeta^11 + 16*zeta^9 - 28*zeta^8 -
12*zeta^6 - 8*zeta^4 + 8*zeta^3 - 28*zeta + 8)*q^321 + (4*zeta^11 - 8*zeta^9 + 
20*zeta^8 + 12*zeta^6 + 4*zeta^4 - 4*zeta^3 + 20*zeta - 4)*q^323 + (-10*zeta^11 
+ 12*zeta^9 - 6*zeta^8 + 6*zeta^6 - 10*zeta^4 + 2*zeta^3 - 6*zeta + 6)*q^324 + 
(19*zeta^11 + 15*zeta^8 + 15*zeta^6 + 19*zeta^4 + 19*zeta^3 + 15*zeta)*q^325 + 
(-24*zeta^11 - 8*zeta^8 - 8*zeta^6 - 24*zeta^4 - 24*zeta^3 - 8*zeta)*q^326 + 
(16*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 16*zeta^4 + 8*zeta - 8)*q^327 + 
(-7*zeta^11 + 14*zeta^9 - 14*zeta^8 - 7*zeta^4 + 7*zeta^3 - 14*zeta + 7)*q^328 +
(-4*zeta^11 + 8*zeta^9 - 8*zeta^8 - 4*zeta^4 + 4*zeta^3 - 8*zeta + 4)*q^330 + 
(-4*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 - 4*zeta^4 + 4*zeta^3 - 4*zeta + 
4)*q^331 + (52*zeta^11 + 16*zeta^8 + 16*zeta^6 + 52*zeta^4 + 52*zeta^3 + 
16*zeta)*q^332 + (8*zeta^11 + 8*zeta^4 + 8*zeta^3)*q^333 + (56*zeta^11 - 
84*zeta^9 + 42*zeta^8 - 42*zeta^6 + 56*zeta^4 - 28*zeta^3 + 42*zeta - 42)*q^334 
+ (-8*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 8*zeta^4 + 8*zeta^3 - 8*zeta +
8)*q^335 + (4*zeta^11 - 8*zeta^9 - 16*zeta^8 - 24*zeta^6 + 4*zeta^4 - 4*zeta^3 -
16*zeta - 4)*q^337 + (-47*zeta^11 + 68*zeta^9 - 34*zeta^8 + 34*zeta^6 - 
47*zeta^4 + 21*zeta^3 - 34*zeta + 34)*q^338 + (28*zeta^11 + 16*zeta^8 + 
16*zeta^6 + 28*zeta^4 + 28*zeta^3 + 16*zeta)*q^339 + (14*zeta^11 + 14*zeta^4 + 
14*zeta^3)*q^340 + (-16*zeta^11 + 24*zeta^9 - 12*zeta^8 + 12*zeta^6 - 16*zeta^4 
+ 8*zeta^3 - 12*zeta + 12)*q^341 + (-4*zeta^11 + 8*zeta^9 - 16*zeta^8 - 8*zeta^6
- 4*zeta^4 + 4*zeta^3 - 16*zeta + 4)*q^342 + (12*zeta^11 - 24*zeta^9 + 32*zeta^8
+ 8*zeta^6 + 12*zeta^4 - 12*zeta^3 + 32*zeta - 12)*q^344 + (-16*zeta^11 - 
8*zeta^9 + 4*zeta^8 - 4*zeta^6 - 16*zeta^4 - 24*zeta^3 + 4*zeta - 4)*q^345 + 
(13*zeta^11 + 9*zeta^8 + 9*zeta^6 + 13*zeta^4 + 13*zeta^3 + 9*zeta)*q^346 + 
(14*zeta^11 - 8*zeta^8 - 8*zeta^6 + 14*zeta^4 + 14*zeta^3 - 8*zeta)*q^347 + 
(-16*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 - 16*zeta^4 - 8*zeta^3 - 4*zeta + 
4)*q^348 + (-7*zeta^11 + 14*zeta^9 - 14*zeta^8 - 7*zeta^4 + 7*zeta^3 - 14*zeta +
7)*q^349 + (-2*zeta^11 + 4*zeta^9 - 12*zeta^8 - 8*zeta^6 - 2*zeta^4 + 2*zeta^3 -
12*zeta + 2)*q^351 + (-2*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 - 2*zeta^4 + 
6*zeta^3 - 4*zeta + 4)*q^352 + (-7*zeta^11 - 9*zeta^8 - 9*zeta^6 - 7*zeta^4 - 
7*zeta^3 - 9*zeta)*q^353 + (-28*zeta^11 - 12*zeta^8 - 12*zeta^6 - 28*zeta^4 - 
28*zeta^3 - 12*zeta)*q^354 + (16*zeta^11 - 4*zeta^9 + 2*zeta^8 - 2*zeta^6 + 
16*zeta^4 + 12*zeta^3 + 2*zeta - 2)*q^355 + (17*zeta^11 - 34*zeta^9 + 32*zeta^8 
- 2*zeta^6 + 17*zeta^4 - 17*zeta^3 + 32*zeta - 17)*q^356 + (10*zeta^11 - 
20*zeta^9 + 26*zeta^8 + 6*zeta^6 + 10*zeta^4 - 10*zeta^3 + 26*zeta - 10)*q^358 +
(-14*zeta^11 + 20*zeta^9 - 10*zeta^8 + 10*zeta^6 - 14*zeta^4 + 6*zeta^3 - 
10*zeta + 10)*q^359 + (-6*zeta^11 + 2*zeta^8 + 2*zeta^6 - 6*zeta^4 - 6*zeta^3 + 
2*zeta)*q^360 + (-11*zeta^11 - 11*zeta^4 - 11*zeta^3)*q^361 + (-16*zeta^11 + 
22*zeta^9 - 11*zeta^8 + 11*zeta^6 - 16*zeta^4 + 6*zeta^3 - 11*zeta + 11)*q^362 +
(-14*zeta^8 - 14*zeta^6 - 14*zeta)*q^363 + (-18*zeta^11 + 36*zeta^9 - 14*zeta^8 
+ 22*zeta^6 - 18*zeta^4 + 18*zeta^3 - 14*zeta + 18)*q^365 + (24*zeta^11 - 
28*zeta^9 + 14*zeta^8 - 14*zeta^6 + 24*zeta^4 - 4*zeta^3 + 14*zeta - 14)*q^366 +
(-16*zeta^11 - 8*zeta^8 - 8*zeta^6 - 16*zeta^4 - 16*zeta^3 - 8*zeta)*q^367 + 
(6*zeta^11 + 12*zeta^8 + 12*zeta^6 + 6*zeta^4 + 6*zeta^3 + 12*zeta)*q^368 + 
(-8*zeta^11 + 4*zeta^9 - 2*zeta^8 + 2*zeta^6 - 8*zeta^4 - 4*zeta^3 - 2*zeta + 
2)*q^369 + (-4*zeta^11 + 8*zeta^9 - 8*zeta^8 - 4*zeta^4 + 4*zeta^3 - 8*zeta + 
4)*q^370 + (20*zeta^11 - 40*zeta^9 + 64*zeta^8 + 24*zeta^6 + 20*zeta^4 - 
20*zeta^3 + 64*zeta - 20)*q^372 + (-38*zeta^11 + 60*zeta^9 - 30*zeta^8 + 
30*zeta^6 - 38*zeta^4 + 22*zeta^3 - 30*zeta + 30)*q^373 + (-26*zeta^11 - 
10*zeta^8 - 10*zeta^6 - 26*zeta^4 - 26*zeta^3 - 10*zeta)*q^374 + (8*zeta^11 + 
8*zeta^8 + 8*zeta^6 + 8*zeta^4 + 8*zeta^3 + 8*zeta)*q^375 + (16*zeta^11 - 
20*zeta^9 + 10*zeta^8 - 10*zeta^6 + 16*zeta^4 - 4*zeta^3 + 10*zeta - 10)*q^376 +
(-4*zeta^11 + 8*zeta^9 + 4*zeta^8 + 12*zeta^6 - 4*zeta^4 + 4*zeta^3 + 4*zeta + 
4)*q^377 + (8*zeta^11 - 16*zeta^9 + 36*zeta^8 + 20*zeta^6 + 8*zeta^4 - 8*zeta^3 
+ 36*zeta - 8)*q^379 + (4*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 4*zeta^4 -
12*zeta^3 + 8*zeta - 8)*q^380 + (16*zeta^11 + 8*zeta^8 + 8*zeta^6 + 16*zeta^4 + 
16*zeta^3 + 8*zeta)*q^381 + (36*zeta^11 + 18*zeta^8 + 18*zeta^6 + 36*zeta^4 + 
36*zeta^3 + 18*zeta)*q^382 + (32*zeta^11 - 56*zeta^9 + 28*zeta^8 - 28*zeta^6 + 
32*zeta^4 - 24*zeta^3 + 28*zeta - 28)*q^383 + (22*zeta^11 - 44*zeta^9 + 
54*zeta^8 + 10*zeta^6 + 22*zeta^4 - 22*zeta^3 + 54*zeta - 22)*q^384 + 
(14*zeta^11 - 28*zeta^9 + 50*zeta^8 + 22*zeta^6 + 14*zeta^4 - 14*zeta^3 + 
50*zeta - 14)*q^386 + (16*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 16*zeta^4 
+ 8*zeta - 8)*q^387 + (-17*zeta^11 - 9*zeta^8 - 9*zeta^6 - 17*zeta^4 - 17*zeta^3
- 9*zeta)*q^388 + (6*zeta^11 + 10*zeta^8 + 10*zeta^6 + 6*zeta^4 + 6*zeta^3 + 
10*zeta)*q^389 + (-20*zeta^11 + 24*zeta^9 - 12*zeta^8 + 12*zeta^6 - 20*zeta^4 + 
4*zeta^3 - 12*zeta + 12)*q^390 + (-2*zeta^11 + 4*zeta^9 - 24*zeta^8 - 20*zeta^6 
- 2*zeta^4 + 2*zeta^3 - 24*zeta + 2)*q^391 + (-16*zeta^11 + 32*zeta^9 - 
24*zeta^8 + 8*zeta^6 - 16*zeta^4 + 16*zeta^3 - 24*zeta + 16)*q^393 + (-6*zeta^11
+ 8*zeta^9 - 4*zeta^8 + 4*zeta^6 - 6*zeta^4 + 2*zeta^3 - 4*zeta + 4)*q^394 + 
(-8*zeta^11 + 16*zeta^8 + 16*zeta^6 - 8*zeta^4 - 8*zeta^3 + 16*zeta)*q^395 + 
(12*zeta^11 + 8*zeta^8 + 8*zeta^6 + 12*zeta^4 + 12*zeta^3 + 8*zeta)*q^396 + 
(-42*zeta^11 + 58*zeta^9 - 29*zeta^8 + 29*zeta^6 - 42*zeta^4 + 16*zeta^3 - 
29*zeta + 29)*q^397 + (12*zeta^11 - 24*zeta^9 + 32*zeta^8 + 8*zeta^6 + 12*zeta^4
- 12*zeta^3 + 32*zeta - 12)*q^398 + (-12*zeta^11 + 24*zeta^9 - 21*zeta^8 + 
3*zeta^6 - 12*zeta^4 + 12*zeta^3 - 21*zeta + 12)*q^400 + (28*zeta^11 - 36*zeta^9
+ 18*zeta^8 - 18*zeta^6 + 28*zeta^4 - 8*zeta^3 + 18*zeta - 18)*q^401 + 
(-24*zeta^11 - 8*zeta^8 - 8*zeta^6 - 24*zeta^4 - 24*zeta^3 - 8*zeta)*q^402 + 
(-32*zeta^11 - 12*zeta^8 - 12*zeta^6 - 32*zeta^4 - 32*zeta^3 - 12*zeta)*q^403 + 
(-80*zeta^11 + 110*zeta^9 - 55*zeta^8 + 55*zeta^6 - 80*zeta^4 + 30*zeta^3 - 
55*zeta + 55)*q^404 + (-2*zeta^11 + 4*zeta^9 + 4*zeta^6 - 2*zeta^4 + 2*zeta^3 + 
2)*q^405 + (8*zeta^8 + 8*zeta^6 + 8*zeta)*q^407 + (68*zeta^11 - 92*zeta^9 + 
46*zeta^8 - 46*zeta^6 + 68*zeta^4 - 24*zeta^3 + 46*zeta - 46)*q^408 + 
(19*zeta^11 - zeta^8 - zeta^6 + 19*zeta^4 + 19*zeta^3 - zeta)*q^409 + (4*zeta^11
- 2*zeta^8 - 2*zeta^6 + 4*zeta^4 + 4*zeta^3 - 2*zeta)*q^410 + (-40*zeta^11 + 
40*zeta^9 - 20*zeta^8 + 20*zeta^6 - 40*zeta^4 - 20*zeta + 20)*q^411 + 
(14*zeta^11 - 28*zeta^9 + 56*zeta^8 + 28*zeta^6 + 14*zeta^4 - 14*zeta^3 + 
56*zeta - 14)*q^412 + (4*zeta^11 - 8*zeta^9 + 20*zeta^8 + 12*zeta^6 + 4*zeta^4 -
4*zeta^3 + 20*zeta - 4)*q^414 + (-16*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 - 
16*zeta^4 - 8*zeta^3 - 4*zeta + 4)*q^415 + (-9*zeta^11 + zeta^8 + zeta^6 - 
9*zeta^4 - 9*zeta^3 + zeta)*q^416 + (16*zeta^11 - 8*zeta^8 - 8*zeta^6 + 
16*zeta^4 + 16*zeta^3 - 8*zeta)*q^417 + (-16*zeta^11 + 24*zeta^9 - 12*zeta^8 + 
12*zeta^6 - 16*zeta^4 + 8*zeta^3 - 12*zeta + 12)*q^418 + (-2*zeta^11 + 4*zeta^9 
- 40*zeta^8 - 36*zeta^6 - 2*zeta^4 + 2*zeta^3 - 40*zeta + 2)*q^419 + 
(-16*zeta^11 + 32*zeta^9 - 38*zeta^8 - 6*zeta^6 - 16*zeta^4 + 16*zeta^3 - 
38*zeta + 16)*q^421 + (60*zeta^11 - 88*zeta^9 + 44*zeta^8 - 44*zeta^6 + 
60*zeta^4 - 28*zeta^3 + 44*zeta - 44)*q^422 + (4*zeta^11 + 4*zeta^8 + 4*zeta^6 +
4*zeta^4 + 4*zeta^3 + 4*zeta)*q^423 + (8*zeta^11 + 2*zeta^8 + 2*zeta^6 + 
8*zeta^4 + 8*zeta^3 + 2*zeta)*q^424 + (32*zeta^11 - 54*zeta^9 + 27*zeta^8 - 
27*zeta^6 + 32*zeta^4 - 22*zeta^3 + 27*zeta - 27)*q^425 + (20*zeta^11 - 
40*zeta^9 + 76*zeta^8 + 36*zeta^6 + 20*zeta^4 - 20*zeta^3 + 76*zeta - 20)*q^426 
+ (-16*zeta^11 + 32*zeta^9 - 54*zeta^8 - 22*zeta^6 - 16*zeta^4 + 16*zeta^3 - 
54*zeta + 16)*q^428 + (24*zeta^11 - 40*zeta^9 + 20*zeta^8 - 20*zeta^6 + 
24*zeta^4 - 16*zeta^3 + 20*zeta - 20)*q^429 + (-8*zeta^11 - 8*zeta^4 - 
8*zeta^3)*q^430 + (2*zeta^11 + 12*zeta^8 + 12*zeta^6 + 2*zeta^4 + 2*zeta^3 + 
12*zeta)*q^431 + (6*zeta^11 - 12*zeta^9 + 6*zeta^8 - 6*zeta^6 + 6*zeta^4 - 
6*zeta^3 + 6*zeta - 6)*q^432 + (-3*zeta^11 + 6*zeta^9 + 10*zeta^8 + 16*zeta^6 - 
3*zeta^4 + 3*zeta^3 + 10*zeta + 3)*q^433 + (-16*zeta^11 + 32*zeta^9 - 8*zeta^8 +
24*zeta^6 - 16*zeta^4 + 16*zeta^3 - 8*zeta + 16)*q^435 + (24*zeta^11 - 40*zeta^9
+ 20*zeta^8 - 20*zeta^6 + 24*zeta^4 - 16*zeta^3 + 20*zeta - 20)*q^436 + 
(-12*zeta^11 + 4*zeta^8 + 4*zeta^6 - 12*zeta^4 - 12*zeta^3 + 4*zeta)*q^437 + 
(-26*zeta^11 - 6*zeta^8 - 6*zeta^6 - 26*zeta^4 - 26*zeta^3 - 6*zeta)*q^438 + 
(-40*zeta^11 + 64*zeta^9 - 32*zeta^8 + 32*zeta^6 - 40*zeta^4 + 24*zeta^3 - 
32*zeta + 32)*q^439 + (2*zeta^11 - 4*zeta^9 - 4*zeta^8 - 8*zeta^6 + 2*zeta^4 - 
2*zeta^3 - 4*zeta - 2)*q^440 + (-28*zeta^11 + 56*zeta^9 - 98*zeta^8 - 42*zeta^6 
- 28*zeta^4 + 28*zeta^3 - 98*zeta + 28)*q^442 + (-6*zeta^11 - 12*zeta^9 + 
6*zeta^8 - 6*zeta^6 - 6*zeta^4 - 18*zeta^3 + 6*zeta - 6)*q^443 + (-24*zeta^11 - 
16*zeta^8 - 16*zeta^6 - 24*zeta^4 - 24*zeta^3 - 16*zeta)*q^444 + (-10*zeta^11 + 
16*zeta^8 + 16*zeta^6 - 10*zeta^4 - 10*zeta^3 + 16*zeta)*q^445 + (-24*zeta^11 + 
40*zeta^9 - 20*zeta^8 + 20*zeta^6 - 24*zeta^4 + 16*zeta^3 - 20*zeta + 20)*q^446 
+ (-16*zeta^11 + 32*zeta^9 - 20*zeta^8 + 12*zeta^6 - 16*zeta^4 + 16*zeta^3 - 
20*zeta + 16)*q^447 + (8*zeta^11 - 16*zeta^9 + 22*zeta^8 + 6*zeta^6 + 8*zeta^4 -
8*zeta^3 + 22*zeta - 8)*q^449 + (-26*zeta^11 + 40*zeta^9 - 20*zeta^8 + 20*zeta^6
- 26*zeta^4 + 14*zeta^3 - 20*zeta + 20)*q^450 + (-2*zeta^11 - 6*zeta^8 - 
6*zeta^6 - 2*zeta^4 - 2*zeta^3 - 6*zeta)*q^451 + (58*zeta^11 + 20*zeta^8 + 
20*zeta^6 + 58*zeta^4 + 58*zeta^3 + 20*zeta)*q^452 + (24*zeta^11 - 48*zeta^9 + 
24*zeta^8 - 24*zeta^6 + 24*zeta^4 - 24*zeta^3 + 24*zeta - 24)*q^453 + 
(-10*zeta^11 + 20*zeta^9 - 44*zeta^8 - 24*zeta^6 - 10*zeta^4 + 10*zeta^3 - 
44*zeta + 10)*q^454 + (12*zeta^11 - 24*zeta^9 + 32*zeta^8 + 8*zeta^6 + 12*zeta^4
- 12*zeta^3 + 32*zeta - 12)*q^456 + (-18*zeta^11 + 36*zeta^9 - 18*zeta^8 + 
18*zeta^6 - 18*zeta^4 + 18*zeta^3 - 18*zeta + 18)*q^457 + (17*zeta^11 + 7*zeta^8
+ 7*zeta^6 + 17*zeta^4 + 17*zeta^3 + 7*zeta)*q^458 + (-10*zeta^11 - 6*zeta^8 - 
6*zeta^6 - 10*zeta^4 - 10*zeta^3 - 6*zeta)*q^459 + (28*zeta^9 - 14*zeta^8 + 
14*zeta^6 + 28*zeta^3 - 14*zeta + 14)*q^460 + (zeta^11 - 2*zeta^9 + 20*zeta^8 + 
18*zeta^6 + zeta^4 - zeta^3 + 20*zeta - 1)*q^461 + (16*zeta^11 - 32*zeta^9 + 
28*zeta^8 - 4*zeta^6 + 16*zeta^4 - 16*zeta^3 + 28*zeta - 16)*q^463 + (12*zeta^9 
- 6*zeta^8 + 6*zeta^6 + 12*zeta^3 - 6*zeta + 6)*q^464 + (-8*zeta^11 - 8*zeta^4 -
8*zeta^3)*q^465 + (-46*zeta^11 - 18*zeta^8 - 18*zeta^6 - 46*zeta^4 - 46*zeta^3 -
18*zeta)*q^466 + (-48*zeta^11 + 68*zeta^9 - 34*zeta^8 + 34*zeta^6 - 48*zeta^4 + 
20*zeta^3 - 34*zeta + 34)*q^467 + (18*zeta^11 - 36*zeta^9 + 52*zeta^8 + 
16*zeta^6 + 18*zeta^4 - 18*zeta^3 + 52*zeta - 18)*q^468 + (-4*zeta^8 - 4*zeta^6 
- 4*zeta)*q^470 + (-44*zeta^11 + 76*zeta^9 - 38*zeta^8 + 38*zeta^6 - 44*zeta^4 +
32*zeta^3 - 38*zeta + 38)*q^471 + (-26*zeta^11 - 10*zeta^8 - 10*zeta^6 - 
26*zeta^4 - 26*zeta^3 - 10*zeta)*q^472 + (8*zeta^11 + 8*zeta^8 + 8*zeta^6 + 
8*zeta^4 + 8*zeta^3 + 8*zeta)*q^473 + (-16*zeta^11 + 16*zeta^9 - 8*zeta^8 + 
8*zeta^6 - 16*zeta^4 - 8*zeta + 8)*q^474 + (-2*zeta^11 + 4*zeta^9 + 12*zeta^8 + 
16*zeta^6 - 2*zeta^4 + 2*zeta^3 + 12*zeta + 2)*q^475 + (4*zeta^8 + 4*zeta^6 + 
4*zeta)*q^477 + (14*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 14*zeta^4 - 
2*zeta^3 + 8*zeta - 8)*q^478 + (-26*zeta^11 - 10*zeta^8 - 10*zeta^6 - 26*zeta^4 
- 26*zeta^3 - 10*zeta)*q^479 + (-6*zeta^11 + 10*zeta^8 + 10*zeta^6 - 6*zeta^4 - 
6*zeta^3 + 10*zeta)*q^480 + (24*zeta^11 - 40*zeta^9 + 20*zeta^8 - 20*zeta^6 + 
24*zeta^4 - 16*zeta^3 + 20*zeta - 20)*q^481 + (-9*zeta^11 + 18*zeta^9 - 
24*zeta^8 - 6*zeta^6 - 9*zeta^4 + 9*zeta^3 - 24*zeta + 9)*q^482 + (-14*zeta^11 +
28*zeta^9 - 35*zeta^8 - 7*zeta^6 - 14*zeta^4 + 14*zeta^3 - 35*zeta + 14)*q^484 +
(2*zeta^11 - 8*zeta^9 + 4*zeta^8 - 4*zeta^6 + 2*zeta^4 - 6*zeta^3 + 4*zeta - 
4)*q^485 + (-4*zeta^11 - 2*zeta^8 - 2*zeta^6 - 4*zeta^4 - 4*zeta^3 - 
2*zeta)*q^486 + (-12*zeta^11 - 16*zeta^8 - 16*zeta^6 - 12*zeta^4 - 12*zeta^3 - 
16*zeta)*q^487 + (16*zeta^11 - 34*zeta^9 + 17*zeta^8 - 17*zeta^6 + 16*zeta^4 - 
18*zeta^3 + 17*zeta - 17)*q^488 + (16*zeta^11 - 32*zeta^9 + 32*zeta^8 + 
16*zeta^4 - 16*zeta^3 + 32*zeta - 16)*q^489 + (12*zeta^11 - 24*zeta^9 + 
46*zeta^8 + 22*zeta^6 + 12*zeta^4 - 12*zeta^3 + 46*zeta - 12)*q^491 + 
(16*zeta^11 - 36*zeta^9 + 18*zeta^8 - 18*zeta^6 + 16*zeta^4 - 20*zeta^3 + 
18*zeta - 18)*q^492 + (4*zeta^11 + 8*zeta^8 + 8*zeta^6 + 4*zeta^4 + 4*zeta^3 + 
8*zeta)*q^493 + (-32*zeta^11 - 12*zeta^8 - 12*zeta^6 - 32*zeta^4 - 32*zeta^3 - 
12*zeta)*q^494 + (8*zeta^9 - 4*zeta^8 + 4*zeta^6 + 8*zeta^3 - 4*zeta + 4)*q^495 
+ (6*zeta^11 - 12*zeta^9 + 24*zeta^8 + 12*zeta^6 + 6*zeta^4 - 6*zeta^3 + 24*zeta
- 6)*q^496 + (-24*zeta^11 + 48*zeta^9 - 88*zeta^8 - 40*zeta^6 - 24*zeta^4 + 
24*zeta^3 - 88*zeta + 24)*q^498 + (-24*zeta^11 + 32*zeta^9 - 16*zeta^8 + 
16*zeta^6 - 24*zeta^4 + 8*zeta^3 - 16*zeta + 16)*q^499 + (20*zeta^11 + 4*zeta^8 
+ 4*zeta^6 + 20*zeta^4 + 20*zeta^3 + 4*zeta)*q^500 + (-28*zeta^11 - 28*zeta^8 - 
28*zeta^6 - 28*zeta^4 - 28*zeta^3 - 28*zeta)*q^501 + (12*zeta^11 - 20*zeta^9 + 
10*zeta^8 - 10*zeta^6 + 12*zeta^4 - 8*zeta^3 + 10*zeta - 10)*q^502 + (10*zeta^8 
+ 10*zeta^6 + 10*zeta)*q^505 + (20*zeta^11 - 32*zeta^9 + 16*zeta^8 - 16*zeta^6 +
20*zeta^4 - 12*zeta^3 + 16*zeta - 16)*q^506 + (26*zeta^11 + 16*zeta^8 + 
16*zeta^6 + 26*zeta^4 + 26*zeta^3 + 16*zeta)*q^507 + (32*zeta^11 + 12*zeta^8 + 
12*zeta^6 + 32*zeta^4 + 32*zeta^3 + 12*zeta)*q^508 + (32*zeta^11 - 42*zeta^9 + 
21*zeta^8 - 21*zeta^6 + 32*zeta^4 - 10*zeta^3 + 21*zeta - 21)*q^509 + 
(-4*zeta^11 + 8*zeta^9 - 20*zeta^8 - 12*zeta^6 - 4*zeta^4 + 4*zeta^3 - 20*zeta +
4)*q^510 + (3*zeta^11 - 6*zeta^9 + 33*zeta^8 + 27*zeta^6 + 3*zeta^4 - 3*zeta^3 +
33*zeta - 3)*q^512 + (-8*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 - 8*zeta^4 - 
4*zeta + 4)*q^513 + (-41*zeta^11 - 13*zeta^8 - 13*zeta^6 - 41*zeta^4 - 41*zeta^3
- 13*zeta)*q^514 + (-4*zeta^11 - 8*zeta^8 - 8*zeta^6 - 4*zeta^4 - 4*zeta^3 - 
8*zeta)*q^515 + (-48*zeta^11 + 80*zeta^9 - 40*zeta^8 + 40*zeta^6 - 48*zeta^4 + 
32*zeta^3 - 40*zeta + 40)*q^516 + (4*zeta^11 - 8*zeta^9 + 8*zeta^8 + 4*zeta^4 - 
4*zeta^3 + 8*zeta - 4)*q^517 + (10*zeta^11 - 20*zeta^9 - 8*zeta^8 - 28*zeta^6 + 
10*zeta^4 - 10*zeta^3 - 8*zeta - 10)*q^519 + (-14*zeta^11 + 28*zeta^9 - 
14*zeta^8 + 14*zeta^6 - 14*zeta^4 + 14*zeta^3 - 14*zeta + 14)*q^520 + 
(33*zeta^11 - zeta^8 - zeta^6 + 33*zeta^4 + 33*zeta^3 - zeta)*q^521 + 
(-4*zeta^11 - 4*zeta^8 - 4*zeta^6 - 4*zeta^4 - 4*zeta^3 - 4*zeta)*q^522 + 
(12*zeta^11 - 32*zeta^9 + 16*zeta^8 - 16*zeta^6 + 12*zeta^4 - 20*zeta^3 + 
16*zeta - 16)*q^523 + (-28*zeta^8 - 28*zeta^6 - 28*zeta)*q^524 + (14*zeta^11 - 
28*zeta^9 + 50*zeta^8 + 22*zeta^6 + 14*zeta^4 - 14*zeta^3 + 50*zeta - 14)*q^526 
+ (-52*zeta^11 + 72*zeta^9 - 36*zeta^8 + 36*zeta^6 - 52*zeta^4 + 20*zeta^3 - 
36*zeta + 36)*q^527 + (-12*zeta^11 - 12*zeta^4 - 12*zeta^3)*q^528 + (-3*zeta^11 
- 16*zeta^8 - 16*zeta^6 - 3*zeta^4 - 3*zeta^3 - 16*zeta)*q^529 + (-4*zeta^11 + 
4*zeta^9 - 2*zeta^8 + 2*zeta^6 - 4*zeta^4 - 2*zeta + 2)*q^530 + (-4*zeta^11 + 
8*zeta^9 - 16*zeta^8 - 8*zeta^6 - 4*zeta^4 + 4*zeta^3 - 16*zeta + 4)*q^531 + 
(-10*zeta^11 + 20*zeta^9 - 18*zeta^8 + 2*zeta^6 - 10*zeta^4 + 10*zeta^3 - 
18*zeta + 10)*q^533 + (-36*zeta^11 + 44*zeta^9 - 22*zeta^8 + 22*zeta^6 - 
36*zeta^4 + 8*zeta^3 - 22*zeta + 22)*q^534 + (6*zeta^11 + 2*zeta^8 + 2*zeta^6 + 
6*zeta^4 + 6*zeta^3 + 2*zeta)*q^535 + (-20*zeta^11 - 12*zeta^8 - 12*zeta^6 - 
20*zeta^4 - 20*zeta^3 - 12*zeta)*q^536 + (-12*zeta^11 + 40*zeta^9 - 20*zeta^8 + 
20*zeta^6 - 12*zeta^4 + 28*zeta^3 - 20*zeta + 20)*q^537 + (7*zeta^11 - 14*zeta^9
+ 30*zeta^8 + 16*zeta^6 + 7*zeta^4 - 7*zeta^3 + 30*zeta - 7)*q^538 + (-6*zeta^11
+ 12*zeta^9 - 8*zeta^8 + 4*zeta^6 - 6*zeta^4 + 6*zeta^3 - 8*zeta + 6)*q^540 + 
(-10*zeta^11 + 4*zeta^9 - 2*zeta^8 + 2*zeta^6 - 10*zeta^4 - 6*zeta^3 - 2*zeta + 
2)*q^541 + (38*zeta^11 + 14*zeta^8 + 14*zeta^6 + 38*zeta^4 + 38*zeta^3 + 
14*zeta)*q^542 + (10*zeta^11 + 2*zeta^8 + 2*zeta^6 + 10*zeta^4 + 10*zeta^3 + 
2*zeta)*q^543 + (-14*zeta^11 + 14*zeta^9 - 7*zeta^8 + 7*zeta^6 - 14*zeta^4 - 
7*zeta + 7)*q^544 + (-8*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 8*zeta^4 + 
8*zeta^3 - 8*zeta + 8)*q^545 + (12*zeta^11 - 24*zeta^9 + 4*zeta^8 - 20*zeta^6 + 
12*zeta^4 - 12*zeta^3 + 4*zeta - 12)*q^547 + (-60*zeta^11 + 100*zeta^9 - 
50*zeta^8 + 50*zeta^6 - 60*zeta^4 + 40*zeta^3 - 50*zeta + 50)*q^548 + 
(10*zeta^11 - 6*zeta^8 - 6*zeta^6 + 10*zeta^4 + 10*zeta^3 - 6*zeta)*q^549 + 
(-20*zeta^11 - 6*zeta^8 - 6*zeta^6 - 20*zeta^4 - 20*zeta^3 - 6*zeta)*q^550 + 
(8*zeta^11 + 8*zeta^4 + 8*zeta^3)*q^551 + (-20*zeta^11 + 40*zeta^9 - 44*zeta^8 -
4*zeta^6 - 20*zeta^4 + 20*zeta^3 - 44*zeta + 20)*q^552 + (-10*zeta^11 + 
20*zeta^9 - 38*zeta^8 - 18*zeta^6 - 10*zeta^4 + 10*zeta^3 - 38*zeta + 10)*q^554 
+ (-16*zeta^9 + 8*zeta^8 - 8*zeta^6 - 16*zeta^3 + 8*zeta - 8)*q^555 + 
(16*zeta^11 + 20*zeta^8 + 20*zeta^6 + 16*zeta^4 + 16*zeta^3 + 20*zeta)*q^556 + 
(26*zeta^11 + 26*zeta^4 + 26*zeta^3)*q^557 + (40*zeta^11 - 56*zeta^9 + 28*zeta^8
- 28*zeta^6 + 40*zeta^4 - 16*zeta^3 + 28*zeta - 28)*q^558 + (16*zeta^11 - 
32*zeta^9 + 40*zeta^8 + 8*zeta^6 + 16*zeta^4 - 16*zeta^3 + 40*zeta - 16)*q^559 +
(12*zeta^11 - 24*zeta^9 + 32*zeta^8 + 8*zeta^6 + 12*zeta^4 - 12*zeta^3 + 32*zeta
- 12)*q^561 + (48*zeta^11 - 68*zeta^9 + 34*zeta^8 - 34*zeta^6 + 48*zeta^4 - 
20*zeta^3 + 34*zeta - 34)*q^562 + (6*zeta^11 + 2*zeta^8 + 2*zeta^6 + 6*zeta^4 + 
6*zeta^3 + 2*zeta)*q^563 + (-20*zeta^11 - 4*zeta^8 - 4*zeta^6 - 20*zeta^4 - 
20*zeta^3 - 4*zeta)*q^564 + (-16*zeta^11 + 12*zeta^9 - 6*zeta^8 + 6*zeta^6 - 
16*zeta^4 - 4*zeta^3 - 6*zeta + 6)*q^565 + (6*zeta^11 - 12*zeta^9 + 24*zeta^8 + 
12*zeta^6 + 6*zeta^4 - 6*zeta^3 + 24*zeta - 6)*q^566 + (26*zeta^11 - 52*zeta^9 +
74*zeta^8 + 22*zeta^6 + 26*zeta^4 - 26*zeta^3 + 74*zeta - 26)*q^568 + (4*zeta^11
+ 4*zeta^9 - 2*zeta^8 + 2*zeta^6 + 4*zeta^4 + 8*zeta^3 - 2*zeta + 2)*q^569 + 
(-8*zeta^11 - 8*zeta^4 - 8*zeta^3)*q^570 + (32*zeta^11 + 4*zeta^8 + 4*zeta^6 + 
32*zeta^4 + 32*zeta^3 + 4*zeta)*q^571 + (52*zeta^11 - 68*zeta^9 + 34*zeta^8 - 
34*zeta^6 + 52*zeta^4 - 16*zeta^3 + 34*zeta - 34)*q^572 + (-36*zeta^8 - 
36*zeta^6 - 36*zeta)*q^573 + (12*zeta^11 - 24*zeta^9 - 10*zeta^8 - 34*zeta^6 + 
12*zeta^4 - 12*zeta^3 - 10*zeta - 12)*q^575 + (22*zeta^11 - 36*zeta^9 + 
18*zeta^8 - 18*zeta^6 + 22*zeta^4 - 14*zeta^3 + 18*zeta - 18)*q^576 + 
(17*zeta^11 - 7*zeta^8 - 7*zeta^6 + 17*zeta^4 + 17*zeta^3 - 7*zeta)*q^577 + 
(-46*zeta^11 - 17*zeta^8 - 17*zeta^6 - 46*zeta^4 - 46*zeta^3 - 17*zeta)*q^578 + 
(-44*zeta^11 + 56*zeta^9 - 28*zeta^8 + 28*zeta^6 - 44*zeta^4 + 12*zeta^3 - 
28*zeta + 28)*q^579 + (16*zeta^11 - 32*zeta^9 + 12*zeta^8 - 20*zeta^6 + 
16*zeta^4 - 16*zeta^3 + 12*zeta - 16)*q^580 + (10*zeta^11 - 20*zeta^9 + 
32*zeta^8 + 12*zeta^6 + 10*zeta^4 - 10*zeta^3 + 32*zeta - 10)*q^582 + (4*zeta^11
- 8*zeta^9 + 4*zeta^8 - 4*zeta^6 + 4*zeta^4 - 4*zeta^3 + 4*zeta - 4)*q^583 + 
(-19*zeta^11 - 17*zeta^8 - 17*zeta^6 - 19*zeta^4 - 19*zeta^3 - 17*zeta)*q^584 + 
(-8*zeta^11 + 4*zeta^8 + 4*zeta^6 - 8*zeta^4 - 8*zeta^3 + 4*zeta)*q^585 + 
(58*zeta^11 - 78*zeta^9 + 39*zeta^8 - 39*zeta^6 + 58*zeta^4 - 20*zeta^3 + 
39*zeta - 39)*q^586 + (-2*zeta^11 + 4*zeta^9 + 16*zeta^8 + 20*zeta^6 - 2*zeta^4 
+ 2*zeta^3 + 16*zeta + 2)*q^587 + (-8*zeta^11 + 16*zeta^9 - 24*zeta^8 - 8*zeta^6
- 8*zeta^4 + 8*zeta^3 - 24*zeta + 8)*q^589 + (12*zeta^11 - 16*zeta^9 + 8*zeta^8 
- 8*zeta^6 + 12*zeta^4 - 4*zeta^3 + 8*zeta - 8)*q^590 + (4*zeta^11 + 4*zeta^4 + 
4*zeta^3)*q^591 + (-12*zeta^11 - 12*zeta^4 - 12*zeta^3)*q^592 + (24*zeta^11 - 
38*zeta^9 + 19*zeta^8 - 19*zeta^6 + 24*zeta^4 - 14*zeta^3 + 19*zeta - 19)*q^593 
+ (4*zeta^11 - 8*zeta^9 + 12*zeta^8 + 4*zeta^6 + 4*zeta^4 - 4*zeta^3 + 12*zeta -
4)*q^594 + (4*zeta^11 - 8*zeta^9 - 18*zeta^8 - 26*zeta^6 + 4*zeta^4 - 4*zeta^3 -
18*zeta - 4)*q^596 + (-16*zeta^11 + 48*zeta^9 - 24*zeta^8 + 24*zeta^6 - 
16*zeta^4 + 32*zeta^3 - 24*zeta + 24)*q^597 + (42*zeta^11 + 14*zeta^8 + 
14*zeta^6 + 42*zeta^4 + 42*zeta^3 + 14*zeta)*q^598 + (-2*zeta^11 - 2*zeta^4 - 
2*zeta^3)*q^599 + (54*zeta^11 - 64*zeta^9 + 32*zeta^8 - 32*zeta^6 + 54*zeta^4 - 
10*zeta^3 + 32*zeta - 32)*q^600 + (-5*zeta^11 + 10*zeta^9 - 2*zeta^8 + 8*zeta^6 
- 5*zeta^4 + 5*zeta^3 - 2*zeta + 5)*q^601 + (-8*zeta^11 + 16*zeta^9 - 16*zeta^8 
- 8*zeta^4 + 8*zeta^3 - 16*zeta + 8)*q^603 + (60*zeta^11 - 72*zeta^9 + 36*zeta^8
- 36*zeta^6 + 60*zeta^4 - 12*zeta^3 + 36*zeta - 36)*q^604 + (7*zeta^11 - 
7*zeta^8 - 7*zeta^6 + 7*zeta^4 + 7*zeta^3 - 7*zeta)*q^605 + (70*zeta^11 + 
30*zeta^8 + 30*zeta^6 + 70*zeta^4 + 70*zeta^3 + 30*zeta)*q^606 + (32*zeta^11 - 
56*zeta^9 + 28*zeta^8 - 28*zeta^6 + 32*zeta^4 - 24*zeta^3 + 28*zeta - 28)*q^607 
+ (-6*zeta^11 + 12*zeta^9 - 8*zeta^8 + 4*zeta^6 - 6*zeta^4 + 6*zeta^3 - 8*zeta +
6)*q^608 + (-8*zeta^11 + 16*zeta^9 - 10*zeta^8 + 6*zeta^6 - 8*zeta^4 + 8*zeta^3 
- 10*zeta + 8)*q^610 + (20*zeta^11 - 24*zeta^9 + 12*zeta^8 - 12*zeta^6 + 
20*zeta^4 - 4*zeta^3 + 12*zeta - 12)*q^611 + (42*zeta^11 + 14*zeta^8 + 14*zeta^6
+ 42*zeta^4 + 42*zeta^3 + 14*zeta)*q^612 + (24*zeta^11 + 8*zeta^8 + 8*zeta^6 + 
24*zeta^4 + 24*zeta^3 + 8*zeta)*q^613 + (8*zeta^11 - 4*zeta^9 + 2*zeta^8 - 
2*zeta^6 + 8*zeta^4 + 4*zeta^3 + 2*zeta - 2)*q^614 + (-16*zeta^11 + 32*zeta^9 - 
12*zeta^8 + 20*zeta^6 - 16*zeta^4 + 16*zeta^3 - 12*zeta + 16)*q^615 + (6*zeta^11
- 12*zeta^9 - 4*zeta^8 - 16*zeta^6 + 6*zeta^4 - 6*zeta^3 - 4*zeta - 6)*q^617 + 
(-72*zeta^11 + 104*zeta^9 - 52*zeta^8 + 52*zeta^6 - 72*zeta^4 + 32*zeta^3 - 
52*zeta + 52)*q^618 + (12*zeta^8 + 12*zeta^6 + 12*zeta)*q^619 + (-12*zeta^11 - 
8*zeta^8 - 8*zeta^6 - 12*zeta^4 - 12*zeta^3 - 8*zeta)*q^620 + (12*zeta^11 - 
8*zeta^9 + 4*zeta^8 - 4*zeta^6 + 12*zeta^4 + 4*zeta^3 + 4*zeta - 4)*q^621 + 
(-18*zeta^11 + 36*zeta^9 - 64*zeta^8 - 28*zeta^6 - 18*zeta^4 + 18*zeta^3 - 
64*zeta + 18)*q^622 + (-6*zeta^11 + 12*zeta^9 - 36*zeta^8 - 24*zeta^6 - 6*zeta^4
+ 6*zeta^3 - 36*zeta + 6)*q^624 + (27*zeta^11 - 30*zeta^9 + 15*zeta^8 - 
15*zeta^6 + 27*zeta^4 - 3*zeta^3 + 15*zeta - 15)*q^625 + (-37*zeta^11 - 
15*zeta^8 - 15*zeta^6 - 37*zeta^4 - 37*zeta^3 - 15*zeta)*q^626 + (8*zeta^11 + 
8*zeta^8 + 8*zeta^6 + 8*zeta^4 + 8*zeta^3 + 8*zeta)*q^627 + (-98*zeta^11 + 
126*zeta^9 - 63*zeta^8 + 63*zeta^6 - 98*zeta^4 + 28*zeta^3 - 63*zeta + 63)*q^628
+ (12*zeta^11 - 24*zeta^9 + 32*zeta^8 + 8*zeta^6 + 12*zeta^4 - 12*zeta^3 + 
32*zeta - 12)*q^629 + (-8*zeta^11 + 16*zeta^9 - 4*zeta^8 + 12*zeta^6 - 8*zeta^4 
+ 8*zeta^3 - 4*zeta + 8)*q^631 + (-8*zeta^11 + 24*zeta^9 - 12*zeta^8 + 12*zeta^6
- 8*zeta^4 + 16*zeta^3 - 12*zeta + 12)*q^632 + (-32*zeta^11 - 24*zeta^8 - 
24*zeta^6 - 32*zeta^4 - 32*zeta^3 - 24*zeta)*q^633 + (-20*zeta^11 - 10*zeta^8 - 
10*zeta^6 - 20*zeta^4 - 20*zeta^3 - 10*zeta)*q^634 + (-8*zeta^11 + 8*zeta^9 - 
4*zeta^8 + 4*zeta^6 - 8*zeta^4 - 4*zeta + 4)*q^635 + (-8*zeta^11 + 16*zeta^9 - 
20*zeta^8 - 4*zeta^6 - 8*zeta^4 + 8*zeta^3 - 20*zeta + 8)*q^636 + (-4*zeta^11 + 
8*zeta^9 - 8*zeta^8 - 4*zeta^4 + 4*zeta^3 - 8*zeta + 4)*q^638 + (36*zeta^11 - 
40*zeta^9 + 20*zeta^8 - 20*zeta^6 + 36*zeta^4 - 4*zeta^3 + 20*zeta - 20)*q^639 +
(-5*zeta^11 - 17*zeta^8 - 17*zeta^6 - 5*zeta^4 - 5*zeta^3 - 17*zeta)*q^640 + 
(-6*zeta^11 + 2*zeta^8 + 2*zeta^6 - 6*zeta^4 - 6*zeta^3 + 2*zeta)*q^641 + 
(68*zeta^11 - 96*zeta^9 + 48*zeta^8 - 48*zeta^6 + 68*zeta^4 - 28*zeta^3 + 
48*zeta - 48)*q^642 + (-30*zeta^11 + 60*zeta^9 - 68*zeta^8 - 8*zeta^6 - 
30*zeta^4 + 30*zeta^3 - 68*zeta + 30)*q^643 + (16*zeta^11 - 32*zeta^9 + 
16*zeta^8 - 16*zeta^6 + 16*zeta^4 - 16*zeta^3 + 16*zeta - 16)*q^645 + 
(-52*zeta^11 + 72*zeta^9 - 36*zeta^8 + 36*zeta^6 - 52*zeta^4 + 20*zeta^3 - 
36*zeta + 36)*q^646 + (-22*zeta^11 + 2*zeta^8 + 2*zeta^6 - 22*zeta^4 - 22*zeta^3
+ 2*zeta)*q^647 + (8*zeta^11 + 2*zeta^8 + 2*zeta^6 + 8*zeta^4 + 8*zeta^3 + 
2*zeta)*q^648 + (-16*zeta^11 + 24*zeta^9 - 12*zeta^8 + 12*zeta^6 - 16*zeta^4 + 
8*zeta^3 - 12*zeta + 12)*q^649 + (-19*zeta^11 + 38*zeta^9 - 72*zeta^8 - 
34*zeta^6 - 19*zeta^4 + 19*zeta^3 - 72*zeta + 19)*q^650 + (8*zeta^11 - 16*zeta^9
+ 48*zeta^8 + 32*zeta^6 + 8*zeta^4 - 8*zeta^3 + 48*zeta - 8)*q^652 + (16*zeta^11
- 44*zeta^9 + 22*zeta^8 - 22*zeta^6 + 16*zeta^4 - 28*zeta^3 + 22*zeta - 
22)*q^653 + (-24*zeta^11 - 8*zeta^8 - 8*zeta^6 - 24*zeta^4 - 24*zeta^3 - 
8*zeta)*q^654 + (-4*zeta^11 + 20*zeta^8 + 20*zeta^6 - 4*zeta^4 - 4*zeta^3 + 
20*zeta)*q^655 + (12*zeta^11 - 6*zeta^9 + 3*zeta^8 - 3*zeta^6 + 12*zeta^4 + 
6*zeta^3 + 3*zeta - 3)*q^656 + (-14*zeta^11 + 28*zeta^9 - 20*zeta^8 + 8*zeta^6 -
14*zeta^4 + 14*zeta^3 - 20*zeta + 14)*q^657 + (-8*zeta^11 + 16*zeta^9 - 
18*zeta^8 - 2*zeta^6 - 8*zeta^4 + 8*zeta^3 - 18*zeta + 8)*q^659 + (16*zeta^11 - 
8*zeta^9 + 4*zeta^8 - 4*zeta^6 + 16*zeta^4 + 8*zeta^3 + 4*zeta - 4)*q^660 + 
(-3*zeta^11 - 11*zeta^8 - 11*zeta^6 - 3*zeta^4 - 3*zeta^3 - 11*zeta)*q^661 + 
(8*zeta^11 + 4*zeta^8 + 4*zeta^6 + 8*zeta^4 + 8*zeta^3 + 4*zeta)*q^662 + 
(84*zeta^11 - 112*zeta^9 + 56*zeta^8 - 56*zeta^6 + 84*zeta^4 - 28*zeta^3 + 
56*zeta - 56)*q^663 + (-28*zeta^11 + 56*zeta^9 - 84*zeta^8 - 28*zeta^6 - 
28*zeta^4 + 28*zeta^3 - 84*zeta + 28)*q^664 + (-8*zeta^11 + 16*zeta^9 - 
24*zeta^8 - 8*zeta^6 - 8*zeta^4 + 8*zeta^3 - 24*zeta + 8)*q^666 + (-16*zeta^11 -
8*zeta^9 + 4*zeta^8 - 4*zeta^6 - 16*zeta^4 - 24*zeta^3 + 4*zeta - 4)*q^667 + 
(-70*zeta^11 - 14*zeta^8 - 14*zeta^6 - 70*zeta^4 - 70*zeta^3 - 14*zeta)*q^668 + 
(8*zeta^11 + 24*zeta^8 + 24*zeta^6 + 8*zeta^4 + 8*zeta^3 + 24*zeta)*q^669 + 
(8*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 8*zeta^4 - 8*zeta^3 + 8*zeta - 
8)*q^670 + (-6*zeta^11 + 12*zeta^9 + 4*zeta^8 + 16*zeta^6 - 6*zeta^4 + 6*zeta^3 
+ 4*zeta + 6)*q^671 + (-8*zeta^11 + 16*zeta^9 - 4*zeta^8 + 12*zeta^6 - 8*zeta^4 
+ 8*zeta^3 - 4*zeta + 8)*q^673 + (56*zeta^11 - 72*zeta^9 + 36*zeta^8 - 36*zeta^6
+ 56*zeta^4 - 16*zeta^3 + 36*zeta - 36)*q^674 + (-6*zeta^11 - 8*zeta^8 - 
8*zeta^6 - 6*zeta^4 - 6*zeta^3 - 8*zeta)*q^675 + (55*zeta^11 + 18*zeta^8 + 
18*zeta^6 + 55*zeta^4 + 55*zeta^3 + 18*zeta)*q^676 + (-28*zeta^11 + 58*zeta^9 - 
29*zeta^8 + 29*zeta^6 - 28*zeta^4 + 30*zeta^3 - 29*zeta + 29)*q^677 + 
(-28*zeta^11 + 56*zeta^9 - 100*zeta^8 - 44*zeta^6 - 28*zeta^4 + 28*zeta^3 - 
100*zeta + 28)*q^678 + (-10*zeta^11 + 20*zeta^9 - 22*zeta^8 - 2*zeta^6 - 
10*zeta^4 + 10*zeta^3 - 22*zeta + 10)*q^680 + (48*zeta^11 - 40*zeta^9 + 
20*zeta^8 - 20*zeta^6 + 48*zeta^4 + 8*zeta^3 + 20*zeta - 20)*q^681 + (28*zeta^11
+ 12*zeta^8 + 12*zeta^6 + 28*zeta^4 + 28*zeta^3 + 12*zeta)*q^682 + (-10*zeta^11 
+ 4*zeta^8 + 4*zeta^6 - 10*zeta^4 - 10*zeta^3 + 4*zeta)*q^683 + (24*zeta^11 - 
40*zeta^9 + 20*zeta^8 - 20*zeta^6 + 24*zeta^4 - 16*zeta^3 + 20*zeta - 20)*q^684 
+ (20*zeta^11 - 40*zeta^9 + 20*zeta^8 - 20*zeta^6 + 20*zeta^4 - 20*zeta^3 + 
20*zeta - 20)*q^685 + (-6*zeta^11 + 12*zeta^9 - 20*zeta^8 - 8*zeta^6 - 6*zeta^4 
+ 6*zeta^3 - 20*zeta + 6)*q^687 + (-24*zeta^11 + 24*zeta^9 - 12*zeta^8 + 
12*zeta^6 - 24*zeta^4 - 12*zeta + 12)*q^688 + (10*zeta^11 + 2*zeta^8 + 2*zeta^6 
+ 10*zeta^4 + 10*zeta^3 + 2*zeta)*q^689 + (12*zeta^11 - 4*zeta^8 - 4*zeta^6 + 
12*zeta^4 + 12*zeta^3 - 4*zeta)*q^690 + (28*zeta^11 - 40*zeta^9 + 20*zeta^8 - 
20*zeta^6 + 28*zeta^4 - 12*zeta^3 + 20*zeta - 20)*q^691 + (-23*zeta^11 + 
46*zeta^9 - 40*zeta^8 + 6*zeta^6 - 23*zeta^4 + 23*zeta^3 - 40*zeta + 23)*q^692 +
(-14*zeta^11 + 28*zeta^9 - 34*zeta^8 - 6*zeta^6 - 14*zeta^4 + 14*zeta^3 - 
34*zeta + 14)*q^694 + (8*zeta^11 + 24*zeta^9 - 12*zeta^8 + 12*zeta^6 + 8*zeta^4 
+ 32*zeta^3 - 12*zeta + 12)*q^695 + (12*zeta^11 - 4*zeta^8 - 4*zeta^6 + 
12*zeta^4 + 12*zeta^3 - 4*zeta)*q^696 + (-14*zeta^11 - 14*zeta^4 - 
14*zeta^3)*q^697 + (28*zeta^11 - 42*zeta^9 + 21*zeta^8 - 21*zeta^6 + 28*zeta^4 -
14*zeta^3 + 21*zeta - 21)*q^698 + (20*zeta^11 - 40*zeta^9 + 56*zeta^8 + 
16*zeta^6 + 20*zeta^4 - 20*zeta^3 + 56*zeta - 20)*q^699 + (-2*zeta^11 + 4*zeta^9
- 24*zeta^8 - 20*zeta^6 - 2*zeta^4 + 2*zeta^3 - 24*zeta + 2)*q^701 + (32*zeta^11
- 44*zeta^9 + 22*zeta^8 - 22*zeta^6 + 32*zeta^4 - 12*zeta^3 + 22*zeta - 
22)*q^702 + (8*zeta^11 + 8*zeta^8 + 8*zeta^6 + 8*zeta^4 + 8*zeta^3 + 
8*zeta)*q^703 + (18*zeta^11 + 4*zeta^8 + 4*zeta^6 + 18*zeta^4 + 18*zeta^3 + 
4*zeta)*q^704 + (8*zeta^11 + 8*zeta^4 + 8*zeta^3)*q^705 + (7*zeta^11 - 14*zeta^9
+ 30*zeta^8 + 16*zeta^6 + 7*zeta^4 - 7*zeta^3 + 30*zeta - 7)*q^706 + (20*zeta^11
- 40*zeta^9 + 64*zeta^8 + 24*zeta^6 + 20*zeta^4 - 20*zeta^3 + 64*zeta - 
20)*q^708 + (32*zeta^11 - 24*zeta^9 + 12*zeta^8 - 12*zeta^6 + 32*zeta^4 + 
8*zeta^3 + 12*zeta - 12)*q^709 + (-18*zeta^11 - 2*zeta^8 - 2*zeta^6 - 18*zeta^4 
- 18*zeta^3 - 2*zeta)*q^710 + (-8*zeta^11 + 8*zeta^8 + 8*zeta^6 - 8*zeta^4 - 
8*zeta^3 + 8*zeta)*q^711 + (-26*zeta^11 + 50*zeta^9 - 25*zeta^8 + 25*zeta^6 - 
26*zeta^4 + 24*zeta^3 - 25*zeta + 25)*q^712 + (12*zeta^11 - 24*zeta^9 + 
32*zeta^8 + 8*zeta^6 + 12*zeta^4 - 12*zeta^3 + 32*zeta - 12)*q^713 + (4*zeta^11 
- 8*zeta^9 - 4*zeta^8 - 12*zeta^6 + 4*zeta^4 - 4*zeta^3 - 4*zeta - 4)*q^715 + 
(-46*zeta^11 + 44*zeta^9 - 22*zeta^8 + 22*zeta^6 - 46*zeta^4 - 2*zeta^3 - 
22*zeta + 22)*q^716 + (-12*zeta^11 + 8*zeta^8 + 8*zeta^6 - 12*zeta^4 - 12*zeta^3
+ 8*zeta)*q^717 + (24*zeta^11 + 10*zeta^8 + 10*zeta^6 + 24*zeta^4 + 24*zeta^3 + 
10*zeta)*q^718 + (40*zeta^11 - 32*zeta^9 + 16*zeta^8 - 16*zeta^6 + 40*zeta^4 + 
8*zeta^3 + 16*zeta - 16)*q^719 + (-6*zeta^11 + 12*zeta^9 + 12*zeta^6 - 6*zeta^4 
+ 6*zeta^3 + 6)*q^720 + (11*zeta^11 - 22*zeta^9 + 33*zeta^8 + 11*zeta^6 + 
11*zeta^4 - 11*zeta^3 + 33*zeta - 11)*q^722 + (12*zeta^11 - 36*zeta^9 + 
18*zeta^8 - 18*zeta^6 + 12*zeta^4 - 24*zeta^3 + 18*zeta - 18)*q^723 + 
(17*zeta^11 + 9*zeta^8 + 9*zeta^6 + 17*zeta^4 + 17*zeta^3 + 9*zeta)*q^724 + 
(-2*zeta^11 + 18*zeta^8 + 18*zeta^6 - 2*zeta^4 - 2*zeta^3 + 18*zeta)*q^725 + 
(42*zeta^11 - 56*zeta^9 + 28*zeta^8 - 28*zeta^6 + 42*zeta^4 - 14*zeta^3 + 
28*zeta - 28)*q^726 + (6*zeta^11 - 12*zeta^9 + 8*zeta^8 - 4*zeta^6 + 6*zeta^4 - 
6*zeta^3 + 8*zeta - 6)*q^727 + (-2*zeta^8 - 2*zeta^6 - 2*zeta)*q^729 + 
(6*zeta^11 - 20*zeta^9 + 10*zeta^8 - 10*zeta^6 + 6*zeta^4 - 14*zeta^3 + 10*zeta 
- 10)*q^730 + (32*zeta^11 + 8*zeta^8 + 8*zeta^6 + 32*zeta^4 + 32*zeta^3 + 
8*zeta)*q^731 + (-18*zeta^11 - 26*zeta^8 - 26*zeta^6 - 18*zeta^4 - 18*zeta^3 - 
26*zeta)*q^732 + (22*zeta^11 - 2*zeta^9 + zeta^8 - zeta^6 + 22*zeta^4 + 
20*zeta^3 + zeta - 1)*q^733 + (16*zeta^11 - 32*zeta^9 + 56*zeta^8 + 24*zeta^6 + 
16*zeta^4 - 16*zeta^3 + 56*zeta - 16)*q^734 + (14*zeta^11 - 28*zeta^9 + 
14*zeta^8 - 14*zeta^6 + 14*zeta^4 - 14*zeta^3 + 14*zeta - 14)*q^736 + 
(-16*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 16*zeta^4 - 8*zeta + 8)*q^737 +
(10*zeta^11 + 2*zeta^8 + 2*zeta^6 + 10*zeta^4 + 10*zeta^3 + 2*zeta)*q^738 + 
(24*zeta^11 + 8*zeta^8 + 8*zeta^6 + 24*zeta^4 + 24*zeta^3 + 8*zeta)*q^739 + 
(16*zeta^11 - 8*zeta^9 + 4*zeta^8 - 4*zeta^6 + 16*zeta^4 + 8*zeta^3 + 4*zeta - 
4)*q^740 + (16*zeta^11 - 32*zeta^9 + 40*zeta^8 + 8*zeta^6 + 16*zeta^4 - 
16*zeta^3 + 40*zeta - 16)*q^741 + (12*zeta^11 - 24*zeta^9 - 10*zeta^8 - 
34*zeta^6 + 12*zeta^4 - 12*zeta^3 - 10*zeta - 12)*q^743 + (-72*zeta^11 + 
104*zeta^9 - 52*zeta^8 + 52*zeta^6 - 72*zeta^4 + 32*zeta^3 - 52*zeta + 52)*q^744
+ (-6*zeta^11 + 22*zeta^8 + 22*zeta^6 - 6*zeta^4 - 6*zeta^3 + 22*zeta)*q^745 + 
(68*zeta^11 + 30*zeta^8 + 30*zeta^6 + 68*zeta^4 + 68*zeta^3 + 30*zeta)*q^746 + 
(-40*zeta^11 + 48*zeta^9 - 24*zeta^8 + 24*zeta^6 - 40*zeta^4 + 8*zeta^3 - 
24*zeta + 24)*q^747 + (14*zeta^11 - 28*zeta^9 + 56*zeta^8 + 28*zeta^6 + 
14*zeta^4 - 14*zeta^3 + 56*zeta - 14)*q^748 + (-8*zeta^11 + 16*zeta^9 - 
32*zeta^8 - 16*zeta^6 - 8*zeta^4 + 8*zeta^3 - 32*zeta + 8)*q^750 + (-8*zeta^9 + 
4*zeta^8 - 4*zeta^6 - 8*zeta^3 + 4*zeta - 4)*q^751 + (-6*zeta^11 - 6*zeta^8 - 
6*zeta^6 - 6*zeta^4 - 6*zeta^3 - 6*zeta)*q^752 + (-4*zeta^11 - 12*zeta^8 - 
12*zeta^6 - 4*zeta^4 - 4*zeta^3 - 12*zeta)*q^753 + (-20*zeta^11 + 24*zeta^9 - 
12*zeta^8 + 12*zeta^6 - 20*zeta^4 + 4*zeta^3 - 12*zeta + 12)*q^754 + (12*zeta^11
- 24*zeta^9 - 24*zeta^6 + 12*zeta^4 - 12*zeta^3 - 12)*q^755 + (4*zeta^11 - 
8*zeta^9 + 40*zeta^8 + 32*zeta^6 + 4*zeta^4 - 4*zeta^3 + 40*zeta - 4)*q^757 + 
(-92*zeta^11 + 128*zeta^9 - 64*zeta^8 + 64*zeta^6 - 92*zeta^4 + 36*zeta^3 - 
64*zeta + 64)*q^758 + (-8*zeta^11 - 16*zeta^8 - 16*zeta^6 - 8*zeta^4 - 8*zeta^3 
- 16*zeta)*q^759 + (-4*zeta^11 - 8*zeta^8 - 8*zeta^6 - 4*zeta^4 - 4*zeta^3 - 
8*zeta)*q^760 + (-60*zeta^11 + 74*zeta^9 - 37*zeta^8 + 37*zeta^6 - 60*zeta^4 + 
14*zeta^3 - 37*zeta + 37)*q^761 + (-16*zeta^11 + 32*zeta^9 - 56*zeta^8 - 
24*zeta^6 - 16*zeta^4 + 16*zeta^3 - 56*zeta + 16)*q^762 + (-36*zeta^11 + 
72*zeta^9 - 90*zeta^8 - 18*zeta^6 - 36*zeta^4 + 36*zeta^3 - 90*zeta + 36)*q^764 
+ (-12*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 - 12*zeta^4 - 4*zeta^3 - 4*zeta 
+ 4)*q^765 + (-60*zeta^11 - 28*zeta^8 - 28*zeta^6 - 60*zeta^4 - 60*zeta^3 - 
28*zeta)*q^766 + (-32*zeta^11 - 12*zeta^8 - 12*zeta^6 - 32*zeta^4 - 32*zeta^3 - 
12*zeta)*q^767 + (-74*zeta^11 + 100*zeta^9 - 50*zeta^8 + 50*zeta^6 - 74*zeta^4 +
26*zeta^3 - 50*zeta + 50)*q^768 + (21*zeta^11 - 42*zeta^9 + 42*zeta^8 + 
21*zeta^4 - 21*zeta^3 + 42*zeta - 21)*q^769 + (30*zeta^11 - 60*zeta^9 + 
56*zeta^8 - 4*zeta^6 + 30*zeta^4 - 30*zeta^3 + 56*zeta - 30)*q^771 + 
(-78*zeta^11 + 116*zeta^9 - 58*zeta^8 + 58*zeta^6 - 78*zeta^4 + 38*zeta^3 - 
58*zeta + 58)*q^772 + (-17*zeta^11 - 11*zeta^8 - 11*zeta^6 - 17*zeta^4 - 
17*zeta^3 - 11*zeta)*q^773 + (-24*zeta^11 - 8*zeta^8 - 8*zeta^6 - 24*zeta^4 - 
24*zeta^3 - 8*zeta)*q^774 + (-40*zeta^11 + 52*zeta^9 - 26*zeta^8 + 26*zeta^6 - 
40*zeta^4 + 12*zeta^3 - 26*zeta + 26)*q^775 + (7*zeta^11 - 14*zeta^9 + 28*zeta^8
+ 14*zeta^6 + 7*zeta^4 - 7*zeta^3 + 28*zeta - 7)*q^776 + (-6*zeta^11 + 12*zeta^9
- 28*zeta^8 - 16*zeta^6 - 6*zeta^4 + 6*zeta^3 - 28*zeta + 6)*q^778 + (-4*zeta^11
+ 16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 4*zeta^4 + 12*zeta^3 - 8*zeta + 8)*q^779 + 
(16*zeta^11 + 20*zeta^8 + 20*zeta^6 + 16*zeta^4 + 16*zeta^3 + 20*zeta)*q^780 + 
(20*zeta^11 + 16*zeta^8 + 16*zeta^6 + 20*zeta^4 + 20*zeta^3 + 16*zeta)*q^781 + 
(68*zeta^11 - 92*zeta^9 + 46*zeta^8 - 46*zeta^6 + 68*zeta^4 - 24*zeta^3 + 
46*zeta - 46)*q^782 + (4*zeta^11 - 8*zeta^9 - 8*zeta^6 + 4*zeta^4 - 4*zeta^3 - 
4)*q^783 + (-10*zeta^11 + 20*zeta^9 + 6*zeta^8 + 26*zeta^6 - 10*zeta^4 + 
10*zeta^3 + 6*zeta + 10)*q^785 + (40*zeta^11 - 64*zeta^9 + 32*zeta^8 - 32*zeta^6
+ 40*zeta^4 - 24*zeta^3 + 32*zeta - 32)*q^786 + (-44*zeta^11 - 8*zeta^8 - 
8*zeta^6 - 44*zeta^4 - 44*zeta^3 - 8*zeta)*q^787 + (6*zeta^11 + 4*zeta^8 + 
4*zeta^6 + 6*zeta^4 + 6*zeta^3 + 4*zeta)*q^788 + (-44*zeta^11 + 56*zeta^9 - 
28*zeta^8 + 28*zeta^6 - 44*zeta^4 + 12*zeta^3 - 28*zeta + 28)*q^789 + (8*zeta^11
- 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 8*zeta^4 - 8*zeta^3 + 8*zeta - 8)*q^790 + 
(-4*zeta^11 + 8*zeta^9 - 20*zeta^8 - 12*zeta^6 - 4*zeta^4 + 4*zeta^3 - 20*zeta +
4)*q^792 + (18*zeta^11 - 44*zeta^9 + 22*zeta^8 - 22*zeta^6 + 18*zeta^4 - 
26*zeta^3 + 22*zeta - 22)*q^793 + (71*zeta^11 + 29*zeta^8 + 29*zeta^6 + 
71*zeta^4 + 71*zeta^3 + 29*zeta)*q^794 + (4*zeta^11 - 4*zeta^8 - 4*zeta^6 + 
4*zeta^4 + 4*zeta^3 - 4*zeta)*q^795 + (-56*zeta^11 + 56*zeta^9 - 28*zeta^8 + 
28*zeta^6 - 56*zeta^4 - 28*zeta + 28)*q^796 + (-13*zeta^11 + 26*zeta^9 - 
36*zeta^8 - 10*zeta^6 - 13*zeta^4 + 13*zeta^3 - 36*zeta + 13)*q^797 + (4*zeta^11
- 8*zeta^9 + 20*zeta^8 + 12*zeta^6 + 4*zeta^4 - 4*zeta^3 + 20*zeta - 4)*q^799 + 
(-15*zeta^11 + 4*zeta^9 - 2*zeta^8 + 2*zeta^6 - 15*zeta^4 - 11*zeta^3 - 2*zeta +
2)*q^800 + (-14*zeta^11 + 6*zeta^8 + 6*zeta^6 - 14*zeta^4 - 14*zeta^3 + 
6*zeta)*q^801 + (-46*zeta^11 - 18*zeta^8 - 18*zeta^6 - 46*zeta^4 - 46*zeta^3 - 
18*zeta)*q^802 + (-20*zeta^11 + 12*zeta^9 - 6*zeta^8 + 6*zeta^6 - 20*zeta^4 - 
8*zeta^3 - 6*zeta + 6)*q^803 + (8*zeta^11 - 16*zeta^9 + 48*zeta^8 + 32*zeta^6 + 
8*zeta^4 - 8*zeta^3 + 48*zeta - 8)*q^804 + (32*zeta^11 - 64*zeta^9 + 108*zeta^8 
+ 44*zeta^6 + 32*zeta^4 - 32*zeta^3 + 108*zeta - 32)*q^806 + (-32*zeta^11 + 
28*zeta^9 - 14*zeta^8 + 14*zeta^6 - 32*zeta^4 - 4*zeta^3 - 14*zeta + 14)*q^807 +
(65*zeta^11 + 25*zeta^8 + 25*zeta^6 + 65*zeta^4 + 65*zeta^3 + 25*zeta)*q^808 + 
(-38*zeta^11 - 24*zeta^8 - 24*zeta^6 - 38*zeta^4 - 38*zeta^3 - 24*zeta)*q^809 + 
(-4*zeta^11 + 4*zeta^9 - 2*zeta^8 + 2*zeta^6 - 4*zeta^4 - 2*zeta + 2)*q^810 + 
(-4*zeta^11 + 8*zeta^9 + 4*zeta^8 + 12*zeta^6 - 4*zeta^4 + 4*zeta^3 + 4*zeta + 
4)*q^811 + (-20*zeta^11 + 40*zeta^9 - 48*zeta^8 - 8*zeta^6 - 20*zeta^4 + 
20*zeta^3 - 48*zeta + 20)*q^813 + (-24*zeta^11 + 32*zeta^9 - 16*zeta^8 + 
16*zeta^6 - 24*zeta^4 + 8*zeta^3 - 16*zeta + 16)*q^814 + (-16*zeta^8 - 16*zeta^6
- 16*zeta)*q^815 + (-30*zeta^11 - 18*zeta^8 - 18*zeta^6 - 30*zeta^4 - 30*zeta^3 
- 18*zeta)*q^816 + (16*zeta^11 - 32*zeta^9 + 16*zeta^8 - 16*zeta^6 + 16*zeta^4 -
16*zeta^3 + 16*zeta - 16)*q^817 + (-19*zeta^11 + 38*zeta^9 - 56*zeta^8 - 
18*zeta^6 - 19*zeta^4 + 19*zeta^3 - 56*zeta + 19)*q^818 + (12*zeta^11 - 
24*zeta^9 + 2*zeta^8 - 22*zeta^6 + 12*zeta^4 - 12*zeta^3 + 2*zeta - 12)*q^820 + 
(-38*zeta^11 + 60*zeta^9 - 30*zeta^8 + 30*zeta^6 - 38*zeta^4 + 22*zeta^3 - 
30*zeta + 30)*q^821 + (60*zeta^11 + 20*zeta^8 + 20*zeta^6 + 60*zeta^4 + 
60*zeta^3 + 20*zeta)*q^822 + (-20*zeta^11 - 12*zeta^8 - 12*zeta^6 - 20*zeta^4 - 
20*zeta^3 - 12*zeta)*q^823 + (-68*zeta^11 + 92*zeta^9 - 46*zeta^8 + 46*zeta^6 - 
68*zeta^4 + 24*zeta^3 - 46*zeta + 46)*q^824 + (16*zeta^11 - 32*zeta^9 + 
28*zeta^8 - 4*zeta^6 + 16*zeta^4 - 16*zeta^3 + 28*zeta - 16)*q^825 + (-4*zeta^11
+ 8*zeta^9 + 34*zeta^8 + 42*zeta^6 - 4*zeta^4 + 4*zeta^3 + 34*zeta + 4)*q^827 + 
(-28*zeta^11 + 56*zeta^9 - 28*zeta^8 + 28*zeta^6 - 28*zeta^4 + 28*zeta^3 - 
28*zeta + 28)*q^828 + (-21*zeta^11 - 9*zeta^8 - 9*zeta^6 - 21*zeta^4 - 21*zeta^3
- 9*zeta)*q^829 + (20*zeta^11 + 4*zeta^8 + 4*zeta^6 + 20*zeta^4 + 20*zeta^3 + 
4*zeta)*q^830 + (36*zeta^11 - 40*zeta^9 + 20*zeta^8 - 20*zeta^6 + 36*zeta^4 - 
4*zeta^3 + 20*zeta - 20)*q^831 + (15*zeta^11 - 30*zeta^9 + 62*zeta^8 + 32*zeta^6
+ 15*zeta^4 - 15*zeta^3 + 62*zeta - 15)*q^832 + (-16*zeta^11 + 32*zeta^9 - 
40*zeta^8 - 8*zeta^6 - 16*zeta^4 + 16*zeta^3 - 40*zeta + 16)*q^834 + (28*zeta^11
+ 28*zeta^4 + 28*zeta^3)*q^835 + (20*zeta^11 + 4*zeta^8 + 4*zeta^6 + 20*zeta^4 +
20*zeta^3 + 4*zeta)*q^836 + (12*zeta^11 + 4*zeta^8 + 4*zeta^6 + 12*zeta^4 + 
12*zeta^3 + 4*zeta)*q^837 + (116*zeta^11 - 156*zeta^9 + 78*zeta^8 - 78*zeta^6 + 
116*zeta^4 - 40*zeta^3 + 78*zeta - 78)*q^838 + (2*zeta^11 - 4*zeta^9 - 44*zeta^8
- 48*zeta^6 + 2*zeta^4 - 2*zeta^3 - 44*zeta - 2)*q^839 + (-16*zeta^11 + 
32*zeta^9 - 37*zeta^8 - 5*zeta^6 - 16*zeta^4 + 16*zeta^3 - 37*zeta + 16)*q^841 +
(82*zeta^11 - 120*zeta^9 + 60*zeta^8 - 60*zeta^6 + 82*zeta^4 - 38*zeta^3 + 
60*zeta - 60)*q^842 + (-28*zeta^11 - 12*zeta^8 - 12*zeta^6 - 28*zeta^4 - 
28*zeta^3 - 12*zeta)*q^843 + (-72*zeta^11 - 20*zeta^8 - 20*zeta^6 - 72*zeta^4 - 
72*zeta^3 - 20*zeta)*q^844 + (-16*zeta^11 + 10*zeta^9 - 5*zeta^8 + 5*zeta^6 - 
16*zeta^4 - 6*zeta^3 - 5*zeta + 5)*q^845 + (-4*zeta^11 + 8*zeta^9 - 16*zeta^8 - 
8*zeta^6 - 4*zeta^4 + 4*zeta^3 - 16*zeta + 4)*q^846 + (-6*zeta^8 - 6*zeta^6 - 
6*zeta)*q^848 + (-24*zeta^11 + 24*zeta^9 - 12*zeta^8 + 12*zeta^6 - 24*zeta^4 - 
12*zeta + 12)*q^849 + (-59*zeta^11 - 27*zeta^8 - 27*zeta^6 - 59*zeta^4 - 
59*zeta^3 - 27*zeta)*q^850 + (-8*zeta^11 - 16*zeta^8 - 16*zeta^6 - 8*zeta^4 - 
8*zeta^3 - 16*zeta)*q^851 + (-116*zeta^11 + 184*zeta^9 - 92*zeta^8 + 92*zeta^6 -
116*zeta^4 + 68*zeta^3 - 92*zeta + 92)*q^852 + (-35*zeta^11 + 70*zeta^9 - 
70*zeta^8 - 35*zeta^4 + 35*zeta^3 - 70*zeta + 35)*q^853 + (-8*zeta^11 + 
16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 8*zeta^4 + 8*zeta^3 - 8*zeta + 8)*q^855 + 
(62*zeta^11 - 88*zeta^9 + 44*zeta^8 - 44*zeta^6 + 62*zeta^4 - 26*zeta^3 + 
44*zeta - 44)*q^856 + (-13*zeta^11 + zeta^8 + zeta^6 - 13*zeta^4 - 13*zeta^3 + 
zeta)*q^857 + (-44*zeta^11 - 20*zeta^8 - 20*zeta^6 - 44*zeta^4 - 44*zeta^3 - 
20*zeta)*q^858 + (4*zeta^11 + 28*zeta^9 - 14*zeta^8 + 14*zeta^6 + 4*zeta^4 + 
32*zeta^3 - 14*zeta + 14)*q^859 + (-8*zeta^11 + 16*zeta^9 + 8*zeta^8 + 24*zeta^6
- 8*zeta^4 + 8*zeta^3 + 8*zeta + 8)*q^860 + (-2*zeta^11 + 4*zeta^9 - 18*zeta^8 -
14*zeta^6 - 2*zeta^4 + 2*zeta^3 - 18*zeta + 2)*q^862 + (-10*zeta^11 + 4*zeta^9 -
2*zeta^8 + 2*zeta^6 - 10*zeta^4 - 6*zeta^3 - 2*zeta + 2)*q^863 + (4*zeta^11 - 
2*zeta^8 - 2*zeta^6 + 4*zeta^4 + 4*zeta^3 - 2*zeta)*q^864 + (14*zeta^11 - 
24*zeta^8 - 24*zeta^6 + 14*zeta^4 + 14*zeta^3 - 24*zeta)*q^865 + (-36*zeta^11 + 
46*zeta^9 - 23*zeta^8 + 23*zeta^6 - 36*zeta^4 + 10*zeta^3 - 23*zeta + 23)*q^866 
+ (24*zeta^11 - 48*zeta^9 + 58*zeta^8 + 10*zeta^6 + 24*zeta^4 - 24*zeta^3 + 
58*zeta - 24)*q^867 + (8*zeta^11 - 16*zeta^9 - 16*zeta^6 + 8*zeta^4 - 8*zeta^3 -
8)*q^869 + (-8*zeta^11 - 8*zeta^4 - 8*zeta^3)*q^870 + (-24*zeta^11 - 16*zeta^8 -
16*zeta^6 - 24*zeta^4 - 24*zeta^3 - 16*zeta)*q^871 + (-20*zeta^11 - 12*zeta^8 - 
12*zeta^6 - 20*zeta^4 - 20*zeta^3 - 12*zeta)*q^872 + (12*zeta^11 - 20*zeta^9 + 
10*zeta^8 - 10*zeta^6 + 12*zeta^4 - 8*zeta^3 + 10*zeta - 10)*q^873 + (12*zeta^11
- 24*zeta^9 + 32*zeta^8 + 8*zeta^6 + 12*zeta^4 - 12*zeta^3 + 32*zeta - 12)*q^874
+ (-2*zeta^11 + 4*zeta^9 + 44*zeta^8 + 48*zeta^6 - 2*zeta^4 + 2*zeta^3 + 44*zeta
+ 2)*q^876 + (16*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 16*zeta^4 + 8*zeta 
- 8)*q^877 + (72*zeta^11 + 32*zeta^8 + 32*zeta^6 + 72*zeta^4 + 72*zeta^3 + 
32*zeta)*q^878 + (-38*zeta^11 - 2*zeta^8 - 2*zeta^6 - 38*zeta^4 - 38*zeta^3 - 
2*zeta)*q^879 + (-12*zeta^9 + 6*zeta^8 - 6*zeta^6 - 12*zeta^3 + 6*zeta - 
6)*q^880 + (-3*zeta^11 + 6*zeta^9 - 32*zeta^8 - 26*zeta^6 - 3*zeta^4 + 3*zeta^3 
- 32*zeta + 3)*q^881 + (-8*zeta^11 + 16*zeta^9 - 32*zeta^8 - 16*zeta^6 - 
8*zeta^4 + 8*zeta^3 - 32*zeta + 8)*q^883 + (154*zeta^11 - 224*zeta^9 + 
112*zeta^8 - 112*zeta^6 + 154*zeta^4 - 70*zeta^3 + 112*zeta - 112)*q^884 + 
(-8*zeta^11 - 8*zeta^4 - 8*zeta^3)*q^885 + (-6*zeta^8 - 6*zeta^6 - 6*zeta)*q^886
+ (-4*zeta^11 + 4*zeta^9 - 2*zeta^8 + 2*zeta^6 - 4*zeta^4 - 2*zeta + 2)*q^887 + 
(8*zeta^11 - 16*zeta^9 + 40*zeta^8 + 24*zeta^6 + 8*zeta^4 - 8*zeta^3 + 40*zeta -
8)*q^888 + (10*zeta^11 - 20*zeta^9 + 14*zeta^8 - 6*zeta^6 + 10*zeta^4 - 
10*zeta^3 + 14*zeta - 10)*q^890 + (4*zeta^11 - 8*zeta^9 + 4*zeta^8 - 4*zeta^6 + 
4*zeta^4 - 4*zeta^3 + 4*zeta - 4)*q^891 + (36*zeta^11 - 4*zeta^8 - 4*zeta^6 + 
36*zeta^4 + 36*zeta^3 - 4*zeta)*q^892 + (8*zeta^11 + 8*zeta^4 + 8*zeta^3)*q^893 
+ (28*zeta^11 - 48*zeta^9 + 24*zeta^8 - 24*zeta^6 + 28*zeta^4 - 20*zeta^3 + 
24*zeta - 24)*q^894 + (-22*zeta^11 + 44*zeta^9 - 8*zeta^8 + 36*zeta^6 - 
22*zeta^4 + 22*zeta^3 - 8*zeta + 22)*q^895 + (-28*zeta^11 + 56*zeta^9 - 
56*zeta^8 - 28*zeta^4 + 28*zeta^3 - 56*zeta + 28)*q^897 + (-50*zeta^11 + 
72*zeta^9 - 36*zeta^8 + 36*zeta^6 - 50*zeta^4 + 22*zeta^3 - 36*zeta + 36)*q^898 
+ (-8*zeta^11 - 8*zeta^4 - 8*zeta^3)*q^899 + (34*zeta^11 + 4*zeta^8 + 4*zeta^6 +
34*zeta^4 + 34*zeta^3 + 4*zeta)*q^900 + (16*zeta^11 - 20*zeta^9 + 10*zeta^8 - 
10*zeta^6 + 16*zeta^4 - 4*zeta^3 + 10*zeta - 10)*q^901 + (2*zeta^11 - 4*zeta^9 +
12*zeta^8 + 8*zeta^6 + 2*zeta^4 - 2*zeta^3 + 12*zeta - 2)*q^902 + (-30*zeta^11 +
60*zeta^9 - 94*zeta^8 - 34*zeta^6 - 30*zeta^4 + 30*zeta^3 - 94*zeta + 30)*q^904 
+ (-2*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 - 2*zeta^4 + 6*zeta^3 - 4*zeta + 
4)*q^905 + (-48*zeta^11 - 24*zeta^8 - 24*zeta^6 - 48*zeta^4 - 48*zeta^3 - 
24*zeta)*q^906 + (-16*zeta^11 - 16*zeta^4 - 16*zeta^3)*q^907 + (64*zeta^11 - 
116*zeta^9 + 58*zeta^8 - 58*zeta^6 + 64*zeta^4 - 52*zeta^3 + 58*zeta - 58)*q^908
+ (10*zeta^11 - 20*zeta^9 + 40*zeta^8 + 20*zeta^6 + 10*zeta^4 - 10*zeta^3 + 
40*zeta - 10)*q^909 + (-12*zeta^11 + 24*zeta^9 - 42*zeta^8 - 18*zeta^6 - 
12*zeta^4 + 12*zeta^3 - 42*zeta + 12)*q^911 + (-24*zeta^11 + 24*zeta^9 - 
12*zeta^8 + 12*zeta^6 - 24*zeta^4 - 12*zeta + 12)*q^912 + (-24*zeta^11 - 
16*zeta^8 - 16*zeta^6 - 24*zeta^4 - 24*zeta^3 - 16*zeta)*q^913 + (36*zeta^11 + 
18*zeta^8 + 18*zeta^6 + 36*zeta^4 + 36*zeta^3 + 18*zeta)*q^914 + (-12*zeta^11 - 
32*zeta^9 + 16*zeta^8 - 16*zeta^6 - 12*zeta^4 - 44*zeta^3 + 16*zeta - 16)*q^915 
+ (-11*zeta^11 + 22*zeta^9 - 38*zeta^8 - 16*zeta^6 - 11*zeta^4 + 11*zeta^3 - 
38*zeta + 11)*q^916 + (10*zeta^11 - 20*zeta^9 + 36*zeta^8 + 16*zeta^6 + 
10*zeta^4 - 10*zeta^3 + 36*zeta - 10)*q^918 + (60*zeta^11 - 80*zeta^9 + 
40*zeta^8 - 40*zeta^6 + 60*zeta^4 - 20*zeta^3 + 40*zeta - 40)*q^919 + (2*zeta^11
+ 18*zeta^8 + 18*zeta^6 + 2*zeta^4 + 2*zeta^3 + 18*zeta)*q^920 + (-12*zeta^11 + 
20*zeta^8 + 20*zeta^6 - 12*zeta^4 - 12*zeta^3 + 20*zeta)*q^921 + (-58*zeta^11 + 
78*zeta^9 - 39*zeta^8 + 39*zeta^6 - 58*zeta^4 + 20*zeta^3 - 39*zeta + 39)*q^922 
+ (34*zeta^11 - 68*zeta^9 + 92*zeta^8 + 24*zeta^6 + 34*zeta^4 - 34*zeta^3 + 
92*zeta - 34)*q^923 + (16*zeta^11 - 32*zeta^9 + 28*zeta^8 - 4*zeta^6 + 16*zeta^4
- 16*zeta^3 + 28*zeta - 16)*q^925 + (-52*zeta^11 + 80*zeta^9 - 40*zeta^8 + 
40*zeta^6 - 52*zeta^4 + 28*zeta^3 - 40*zeta + 40)*q^926 + (-20*zeta^11 - 
12*zeta^8 - 12*zeta^6 - 20*zeta^4 - 20*zeta^3 - 12*zeta)*q^927 + (-6*zeta^11 + 
10*zeta^8 + 10*zeta^6 - 6*zeta^4 - 6*zeta^3 + 10*zeta)*q^928 + (-12*zeta^11 - 
6*zeta^9 + 3*zeta^8 - 3*zeta^6 - 12*zeta^4 - 18*zeta^3 + 3*zeta - 3)*q^929 + 
(8*zeta^11 - 16*zeta^9 + 24*zeta^8 + 8*zeta^6 + 8*zeta^4 - 8*zeta^3 + 24*zeta - 
8)*q^930 + (26*zeta^11 - 52*zeta^9 + 100*zeta^8 + 48*zeta^6 + 26*zeta^4 - 
26*zeta^3 + 100*zeta - 26)*q^932 + (56*zeta^11 - 72*zeta^9 + 36*zeta^8 - 
36*zeta^6 + 56*zeta^4 - 16*zeta^3 + 36*zeta - 36)*q^933 + (82*zeta^11 + 
34*zeta^8 + 34*zeta^6 + 82*zeta^4 + 82*zeta^3 + 34*zeta)*q^934 + (-4*zeta^11 - 
8*zeta^8 - 8*zeta^6 - 4*zeta^4 - 4*zeta^3 - 8*zeta)*q^935 + (-56*zeta^11 + 
84*zeta^9 - 42*zeta^8 + 42*zeta^6 - 56*zeta^4 + 28*zeta^3 - 42*zeta + 42)*q^936 
+ (-zeta^11 + 2*zeta^9 - 34*zeta^8 - 32*zeta^6 - zeta^4 + zeta^3 - 34*zeta + 
1)*q^937 + (14*zeta^11 - 28*zeta^9 + 44*zeta^8 + 16*zeta^6 + 14*zeta^4 - 
14*zeta^3 + 44*zeta - 14)*q^939 + (4*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 +
4*zeta^4 - 12*zeta^3 + 8*zeta - 8)*q^940 + (zeta^11 + 15*zeta^8 + 15*zeta^6 + 
zeta^4 + zeta^3 + 15*zeta)*q^941 + (82*zeta^11 + 38*zeta^8 + 38*zeta^6 + 
82*zeta^4 + 82*zeta^3 + 38*zeta)*q^942 + (-28*zeta^9 + 14*zeta^8 - 14*zeta^6 - 
28*zeta^3 + 14*zeta - 14)*q^943 + (6*zeta^11 - 12*zeta^9 + 24*zeta^8 + 12*zeta^6
+ 6*zeta^4 - 6*zeta^3 + 24*zeta - 6)*q^944 + (-8*zeta^11 + 16*zeta^9 - 32*zeta^8
- 16*zeta^6 - 8*zeta^4 + 8*zeta^3 - 32*zeta + 8)*q^946 + (58*zeta^11 - 
100*zeta^9 + 50*zeta^8 - 50*zeta^6 + 58*zeta^4 - 42*zeta^3 + 50*zeta - 50)*q^947
+ (8*zeta^11 + 24*zeta^8 + 24*zeta^6 + 8*zeta^4 + 8*zeta^3 + 24*zeta)*q^948 + 
(-22*zeta^11 - 24*zeta^8 - 24*zeta^6 - 22*zeta^4 - 22*zeta^3 - 24*zeta)*q^949 + 
(-40*zeta^11 + 52*zeta^9 - 26*zeta^8 + 26*zeta^6 - 40*zeta^4 + 12*zeta^3 - 
26*zeta + 26)*q^950 + (20*zeta^8 + 20*zeta^6 + 20*zeta)*q^951 + (2*zeta^8 + 
2*zeta^6 + 2*zeta)*q^953 + (-12*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 
12*zeta^4 + 4*zeta^3 - 8*zeta + 8)*q^954 + (18*zeta^11 - 18*zeta^8 - 18*zeta^6 +
18*zeta^4 + 18*zeta^3 - 18*zeta)*q^955 + (-10*zeta^11 - 16*zeta^8 - 16*zeta^6 - 
10*zeta^4 - 10*zeta^3 - 16*zeta)*q^956 + (-16*zeta^9 + 8*zeta^8 - 8*zeta^6 - 
16*zeta^3 + 8*zeta - 8)*q^957 + (26*zeta^11 - 52*zeta^9 + 88*zeta^8 + 36*zeta^6 
+ 26*zeta^4 - 26*zeta^3 + 88*zeta - 26)*q^958 + (-6*zeta^11 + 12*zeta^9 + 
8*zeta^8 + 20*zeta^6 - 6*zeta^4 + 6*zeta^3 + 8*zeta + 6)*q^960 + (25*zeta^11 - 
18*zeta^9 + 9*zeta^8 - 9*zeta^6 + 25*zeta^4 + 7*zeta^3 + 9*zeta - 9)*q^961 + 
(-44*zeta^11 - 20*zeta^8 - 20*zeta^6 - 44*zeta^4 - 44*zeta^3 - 20*zeta)*q^962 + 
(20*zeta^11 + 8*zeta^8 + 8*zeta^6 + 20*zeta^4 + 20*zeta^3 + 8*zeta)*q^963 + 
(42*zeta^11 - 42*zeta^9 + 21*zeta^8 - 21*zeta^6 + 42*zeta^4 + 21*zeta - 
21)*q^964 + (10*zeta^11 - 20*zeta^9 + 16*zeta^8 - 4*zeta^6 + 10*zeta^4 - 
10*zeta^3 + 16*zeta - 10)*q^965 + (-4*zeta^11 + 8*zeta^9 + 20*zeta^8 + 28*zeta^6
- 4*zeta^4 + 4*zeta^3 + 20*zeta + 4)*q^967 + (35*zeta^11 - 56*zeta^9 + 28*zeta^8
- 28*zeta^6 + 35*zeta^4 - 21*zeta^3 + 28*zeta - 28)*q^968 + (32*zeta^11 + 
8*zeta^8 + 8*zeta^6 + 32*zeta^4 + 32*zeta^3 + 8*zeta)*q^969 + (-6*zeta^11 - 
4*zeta^8 - 4*zeta^6 - 6*zeta^4 - 6*zeta^3 - 4*zeta)*q^970 + (-4*zeta^11 - 
24*zeta^9 + 12*zeta^8 - 12*zeta^6 - 4*zeta^4 - 28*zeta^3 + 12*zeta - 12)*q^971 +
(4*zeta^11 - 8*zeta^9 + 10*zeta^8 + 2*zeta^6 + 4*zeta^4 - 4*zeta^3 + 10*zeta - 
4)*q^972 + (12*zeta^11 - 24*zeta^9 + 52*zeta^8 + 28*zeta^6 + 12*zeta^4 - 
12*zeta^3 + 52*zeta - 12)*q^974 + (68*zeta^11 - 76*zeta^9 + 38*zeta^8 - 
38*zeta^6 + 68*zeta^4 - 8*zeta^3 + 38*zeta - 38)*q^975 + (-15*zeta^11 + 9*zeta^8
+ 9*zeta^6 - 15*zeta^4 - 15*zeta^3 + 9*zeta)*q^976 + (-26*zeta^11 - 2*zeta^8 - 
2*zeta^6 - 26*zeta^4 - 26*zeta^3 - 2*zeta)*q^977 + (-64*zeta^11 + 96*zeta^9 - 
48*zeta^8 + 48*zeta^6 - 64*zeta^4 + 32*zeta^3 - 48*zeta + 48)*q^978 + (6*zeta^11
- 12*zeta^9 - 8*zeta^8 - 20*zeta^6 + 6*zeta^4 - 6*zeta^3 - 8*zeta - 6)*q^979 + 
(-8*zeta^11 + 16*zeta^9 - 16*zeta^8 - 8*zeta^4 + 8*zeta^3 - 16*zeta + 8)*q^981 +
(-114*zeta^11 + 160*zeta^9 - 80*zeta^8 + 80*zeta^6 - 114*zeta^4 + 46*zeta^3 - 
80*zeta + 80)*q^982 + (-24*zeta^11 - 32*zeta^8 - 32*zeta^6 - 24*zeta^4 - 
24*zeta^3 - 32*zeta)*q^983 + (-14*zeta^11 - 14*zeta^8 - 14*zeta^6 - 14*zeta^4 - 
14*zeta^3 - 14*zeta)*q^984 + (4*zeta^9 - 2*zeta^8 + 2*zeta^6 + 4*zeta^3 - 2*zeta
+ 2)*q^985 + (-4*zeta^11 + 8*zeta^9 - 20*zeta^8 - 12*zeta^6 - 4*zeta^4 + 
4*zeta^3 - 20*zeta + 4)*q^986 + (16*zeta^11 - 32*zeta^9 + 68*zeta^8 + 36*zeta^6 
+ 16*zeta^4 - 16*zeta^3 + 68*zeta - 16)*q^988 + (-16*zeta^11 + 48*zeta^9 - 
24*zeta^8 + 24*zeta^6 - 16*zeta^4 + 32*zeta^3 - 24*zeta + 24)*q^989 + (4*zeta^11
+ 4*zeta^8 + 4*zeta^6 + 4*zeta^4 + 4*zeta^3 + 4*zeta)*q^990 + (16*zeta^11 + 
12*zeta^8 + 12*zeta^6 + 16*zeta^4 + 16*zeta^3 + 12*zeta)*q^991 + (12*zeta^11 - 
20*zeta^9 + 10*zeta^8 - 10*zeta^6 + 12*zeta^4 - 8*zeta^3 + 10*zeta - 10)*q^992 +
(-8*zeta^8 - 8*zeta^6 - 8*zeta)*q^993 + (-24*zeta^11 + 48*zeta^9 - 8*zeta^8 + 
40*zeta^6 - 24*zeta^4 + 24*zeta^3 - 8*zeta + 24)*q^995 + (136*zeta^11 - 
208*zeta^9 + 104*zeta^8 - 104*zeta^6 + 136*zeta^4 - 72*zeta^3 + 104*zeta - 
104)*q^996 + (5*zeta^11 + 13*zeta^8 + 13*zeta^6 + 5*zeta^4 + 5*zeta^3 + 
13*zeta)*q^997 + (40*zeta^11 + 16*zeta^8 + 16*zeta^6 + 40*zeta^4 + 40*zeta^3 + 
16*zeta)*q^998 + (-8*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 8*zeta^4 + 
8*zeta^3 - 8*zeta + 8)*q^999 + (-12*zeta^11 + 24*zeta^9 - 32*zeta^8 - 8*zeta^6 -
12*zeta^4 + 12*zeta^3 - 32*zeta + 12)*q^1000 + (28*zeta^11 - 56*zeta^9 + 
112*zeta^8 + 56*zeta^6 + 28*zeta^4 - 28*zeta^3 + 112*zeta - 28)*q^1002 + 
(-52*zeta^11 + 72*zeta^9 - 36*zeta^8 + 36*zeta^6 - 52*zeta^4 + 20*zeta^3 - 
36*zeta + 36)*q^1003 + (-18*zeta^11 + 2*zeta^8 + 2*zeta^6 - 18*zeta^4 - 
18*zeta^3 + 2*zeta)*q^1004 + (-16*zeta^8 - 16*zeta^6 - 16*zeta)*q^1005 + 
(4*zeta^11 - 8*zeta^9 + 8*zeta^8 + 4*zeta^4 - 4*zeta^3 + 8*zeta - 4)*q^1007 + 
(24*zeta^11 - 48*zeta^9 + 62*zeta^8 + 14*zeta^6 + 24*zeta^4 - 24*zeta^3 + 
62*zeta - 24)*q^1009 + (-30*zeta^11 + 40*zeta^9 - 20*zeta^8 + 20*zeta^6 - 
30*zeta^4 + 10*zeta^3 - 20*zeta + 20)*q^1010 + (-40*zeta^11 + 8*zeta^8 + 
8*zeta^6 - 40*zeta^4 - 40*zeta^3 + 8*zeta)*q^1011 + (-28*zeta^11 - 28*zeta^4 - 
28*zeta^3)*q^1012 + (-36*zeta^11 + 62*zeta^9 - 31*zeta^8 + 31*zeta^6 - 36*zeta^4
+ 26*zeta^3 - 31*zeta + 31)*q^1013 + (-26*zeta^11 + 52*zeta^9 - 94*zeta^8 - 
42*zeta^6 - 26*zeta^4 + 26*zeta^3 - 94*zeta + 26)*q^1014 + (-16*zeta^11 + 
32*zeta^9 - 52*zeta^8 - 20*zeta^6 - 16*zeta^4 + 16*zeta^3 - 52*zeta + 16)*q^1016
+ (-44*zeta^11 + 56*zeta^9 - 28*zeta^8 + 28*zeta^6 - 44*zeta^4 + 12*zeta^3 - 
28*zeta + 28)*q^1017 + (-53*zeta^11 - 21*zeta^8 - 21*zeta^6 - 53*zeta^4 - 
53*zeta^3 - 21*zeta)*q^1018 + (38*zeta^11 + 36*zeta^8 + 36*zeta^6 + 38*zeta^4 + 
38*zeta^3 + 36*zeta)*q^1019 + (28*zeta^11 - 56*zeta^9 + 28*zeta^8 - 28*zeta^6 + 
28*zeta^4 - 28*zeta^3 + 28*zeta - 28)*q^1020 + (11*zeta^11 - 22*zeta^9 + 
38*zeta^8 + 16*zeta^6 + 11*zeta^4 - 11*zeta^3 + 38*zeta - 11)*q^1021 + 
(-8*zeta^11 + 16*zeta^9 - 32*zeta^8 - 16*zeta^6 - 8*zeta^4 + 8*zeta^3 - 32*zeta 
+ 8)*q^1023 + (-19*zeta^11 + 26*zeta^9 - 13*zeta^8 + 13*zeta^6 - 19*zeta^4 + 
7*zeta^3 - 13*zeta + 13)*q^1024 + (-15*zeta^11 + 11*zeta^8 + 11*zeta^6 - 
15*zeta^4 - 15*zeta^3 + 11*zeta)*q^1025 + (12*zeta^11 + 4*zeta^8 + 4*zeta^6 + 
12*zeta^4 + 12*zeta^3 + 4*zeta)*q^1026 + (-8*zeta^11 + 32*zeta^9 - 16*zeta^8 + 
16*zeta^6 - 8*zeta^4 + 24*zeta^3 - 16*zeta + 16)*q^1027 + (11*zeta^11 - 
22*zeta^9 + 80*zeta^8 + 58*zeta^6 + 11*zeta^4 - 11*zeta^3 + 80*zeta - 11)*q^1028
+ (4*zeta^11 - 8*zeta^9 + 20*zeta^8 + 12*zeta^6 + 4*zeta^4 - 4*zeta^3 + 20*zeta 
- 4)*q^1030 + (30*zeta^11 - 44*zeta^9 + 22*zeta^8 - 22*zeta^6 + 30*zeta^4 - 
14*zeta^3 + 22*zeta - 22)*q^1031 + (40*zeta^11 + 24*zeta^8 + 24*zeta^6 + 
40*zeta^4 + 40*zeta^3 + 24*zeta)*q^1032 + (40*zeta^11 + 28*zeta^8 + 28*zeta^6 + 
40*zeta^4 + 40*zeta^3 + 28*zeta)*q^1033 + (-16*zeta^11 + 24*zeta^9 - 12*zeta^8 +
12*zeta^6 - 16*zeta^4 + 8*zeta^3 - 12*zeta + 12)*q^1034 + (20*zeta^11 - 
40*zeta^9 + 16*zeta^8 - 24*zeta^6 + 20*zeta^4 - 20*zeta^3 + 16*zeta - 20)*q^1035
+ (18*zeta^11 - 36*zeta^9 + 34*zeta^8 - 2*zeta^6 + 18*zeta^4 - 18*zeta^3 + 
34*zeta - 18)*q^1037 + (44*zeta^11 - 52*zeta^9 + 26*zeta^8 - 26*zeta^6 + 
44*zeta^4 - 8*zeta^3 + 26*zeta - 26)*q^1038 + (48*zeta^11 + 16*zeta^8 + 
16*zeta^6 + 48*zeta^4 + 48*zeta^3 + 16*zeta)*q^1039 + (12*zeta^11 - 6*zeta^8 - 
6*zeta^6 + 12*zeta^4 + 12*zeta^3 - 6*zeta)*q^1040 + (12*zeta^11 - 56*zeta^9 + 
28*zeta^8 - 28*zeta^6 + 12*zeta^4 - 44*zeta^3 + 28*zeta - 28)*q^1041 + 
(-33*zeta^11 + 66*zeta^9 - 98*zeta^8 - 32*zeta^6 - 33*zeta^4 + 33*zeta^3 - 
98*zeta + 33)*q^1042 + (12*zeta^11 - 24*zeta^9 + 16*zeta^8 - 8*zeta^6 + 
12*zeta^4 - 12*zeta^3 + 16*zeta - 12)*q^1044 + (-8*zeta^11 - 8*zeta^4 - 
8*zeta^3)*q^1045 + (-28*zeta^11 - 16*zeta^8 - 16*zeta^6 - 28*zeta^4 - 28*zeta^3 
- 16*zeta)*q^1046 + (-14*zeta^11 - 14*zeta^8 - 14*zeta^6 - 14*zeta^4 - 14*zeta^3
- 14*zeta)*q^1047 + (44*zeta^11 - 48*zeta^9 + 24*zeta^8 - 24*zeta^6 + 44*zeta^4 
- 4*zeta^3 + 24*zeta - 24)*q^1048 + (23*zeta^11 - 46*zeta^9 + 40*zeta^8 - 
6*zeta^6 + 23*zeta^4 - 23*zeta^3 + 40*zeta - 23)*q^1049 + (8*zeta^11 - 16*zeta^9
- 20*zeta^8 - 36*zeta^6 + 8*zeta^4 - 8*zeta^3 - 20*zeta - 8)*q^1051 + 
(-78*zeta^11 + 116*zeta^9 - 58*zeta^8 + 58*zeta^6 - 78*zeta^4 + 38*zeta^3 - 
58*zeta + 58)*q^1052 + (10*zeta^11 + 2*zeta^8 + 2*zeta^6 + 10*zeta^4 + 10*zeta^3
+ 2*zeta)*q^1053 + (88*zeta^11 + 36*zeta^8 + 36*zeta^6 + 88*zeta^4 + 88*zeta^3 +
36*zeta)*q^1054 + (24*zeta^11 - 8*zeta^9 + 4*zeta^8 - 4*zeta^6 + 24*zeta^4 + 
16*zeta^3 + 4*zeta - 4)*q^1055 + (4*zeta^11 - 8*zeta^9 - 4*zeta^8 - 12*zeta^6 + 
4*zeta^4 - 4*zeta^3 - 4*zeta - 4)*q^1056 + (3*zeta^11 - 6*zeta^9 + 25*zeta^8 + 
19*zeta^6 + 3*zeta^4 - 3*zeta^3 + 25*zeta - 3)*q^1058 + (-32*zeta^11 + 28*zeta^9
- 14*zeta^8 + 14*zeta^6 - 32*zeta^4 - 4*zeta^3 - 14*zeta + 14)*q^1059 + 
(2*zeta^11 + 6*zeta^8 + 6*zeta^6 + 2*zeta^4 + 2*zeta^3 + 6*zeta)*q^1060 + 
(-54*zeta^11 - 2*zeta^8 - 2*zeta^6 - 54*zeta^4 - 54*zeta^3 - 2*zeta)*q^1061 + 
(40*zeta^11 - 56*zeta^9 + 28*zeta^8 - 28*zeta^6 + 40*zeta^4 - 16*zeta^3 + 
28*zeta - 28)*q^1062 + (18*zeta^11 - 36*zeta^9 + 24*zeta^8 - 12*zeta^6 + 
18*zeta^4 - 18*zeta^3 + 24*zeta - 18)*q^1063 + (28*zeta^11 - 56*zeta^9 + 
32*zeta^8 - 24*zeta^6 + 28*zeta^4 - 28*zeta^3 + 32*zeta - 28)*q^1065 + 
(34*zeta^11 - 52*zeta^9 + 26*zeta^8 - 26*zeta^6 + 34*zeta^4 - 18*zeta^3 + 
26*zeta - 26)*q^1066 + (10*zeta^11 + 2*zeta^8 + 2*zeta^6 + 10*zeta^4 + 10*zeta^3
+ 2*zeta)*q^1067 + (30*zeta^11 + 34*zeta^8 + 34*zeta^6 + 30*zeta^4 + 30*zeta^3 +
34*zeta)*q^1068 + (26*zeta^11 - 18*zeta^9 + 9*zeta^8 - 9*zeta^6 + 26*zeta^4 + 
8*zeta^3 + 9*zeta - 9)*q^1069 + (-6*zeta^11 + 12*zeta^9 - 20*zeta^8 - 8*zeta^6 -
6*zeta^4 + 6*zeta^3 - 20*zeta + 6)*q^1070 + (12*zeta^11 - 24*zeta^9 + 24*zeta^8 
+ 12*zeta^4 - 12*zeta^3 + 24*zeta - 12)*q^1072 + (-16*zeta^9 + 8*zeta^8 - 
8*zeta^6 - 16*zeta^3 + 8*zeta - 8)*q^1073 + (32*zeta^11 + 20*zeta^8 + 20*zeta^6 
+ 32*zeta^4 + 32*zeta^3 + 20*zeta)*q^1074 + (28*zeta^11 - 4*zeta^8 - 4*zeta^6 + 
28*zeta^4 + 28*zeta^3 - 4*zeta)*q^1075 + (-44*zeta^11 + 78*zeta^9 - 39*zeta^8 + 
39*zeta^6 - 44*zeta^4 + 34*zeta^3 - 39*zeta + 39)*q^1076 + (-8*zeta^11 + 
16*zeta^9 - 28*zeta^8 - 12*zeta^6 - 8*zeta^4 + 8*zeta^3 - 28*zeta + 8)*q^1077 + 
(-36*zeta^11 + 72*zeta^9 - 104*zeta^8 - 32*zeta^6 - 36*zeta^4 + 36*zeta^3 - 
104*zeta + 36)*q^1079 + (4*zeta^11 - 12*zeta^9 + 6*zeta^8 - 6*zeta^6 + 4*zeta^4 
- 8*zeta^3 + 6*zeta - 6)*q^1080 + (-12*zeta^11 + 4*zeta^8 + 4*zeta^6 - 12*zeta^4
- 12*zeta^3 + 4*zeta)*q^1081 + (12*zeta^11 + 2*zeta^8 + 2*zeta^6 + 12*zeta^4 + 
12*zeta^3 + 2*zeta)*q^1082 + (-22*zeta^11 + 44*zeta^9 - 22*zeta^8 + 22*zeta^6 - 
22*zeta^4 + 22*zeta^3 - 22*zeta + 22)*q^1083 + (-18*zeta^11 + 36*zeta^9 - 
80*zeta^8 - 44*zeta^6 - 18*zeta^4 + 18*zeta^3 - 80*zeta + 18)*q^1084 + 
(-10*zeta^11 + 20*zeta^9 - 32*zeta^8 - 12*zeta^6 - 10*zeta^4 + 10*zeta^3 - 
32*zeta + 10)*q^1086 + (-24*zeta^11 + 32*zeta^9 - 16*zeta^8 + 16*zeta^6 - 
24*zeta^4 + 8*zeta^3 - 16*zeta + 16)*q^1087 + (51*zeta^11 + 25*zeta^8 + 
25*zeta^6 + 51*zeta^4 + 51*zeta^3 + 25*zeta)*q^1088 + (14*zeta^11 + 14*zeta^4 + 
14*zeta^3)*q^1089 + (8*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 8*zeta^4 - 
8*zeta^3 + 8*zeta - 8)*q^1090 + (28*zeta^8 + 28*zeta^6 + 28*zeta)*q^1091 + 
(4*zeta^11 - 8*zeta^9 - 44*zeta^8 - 52*zeta^6 + 4*zeta^4 - 4*zeta^3 - 44*zeta - 
4)*q^1093 + (12*zeta^11 - 8*zeta^9 + 4*zeta^8 - 4*zeta^6 + 12*zeta^4 + 4*zeta^3 
+ 4*zeta - 4)*q^1094 + (8*zeta^11 - 36*zeta^8 - 36*zeta^6 + 8*zeta^4 + 8*zeta^3 
- 36*zeta)*q^1095 + (50*zeta^11 + 30*zeta^8 + 30*zeta^6 + 50*zeta^4 + 50*zeta^3 
+ 30*zeta)*q^1096 + (16*zeta^11 - 34*zeta^9 + 17*zeta^8 - 17*zeta^6 + 16*zeta^4 
- 18*zeta^3 + 17*zeta - 17)*q^1097 + (-10*zeta^11 + 20*zeta^9 - 24*zeta^8 - 
4*zeta^6 - 10*zeta^4 + 10*zeta^3 - 24*zeta + 10)*q^1098 + (4*zeta^11 - 8*zeta^9 
+ 38*zeta^8 + 30*zeta^6 + 4*zeta^4 - 4*zeta^3 + 38*zeta - 4)*q^1100 + 
(-48*zeta^11 + 64*zeta^9 - 32*zeta^8 + 32*zeta^6 - 48*zeta^4 + 16*zeta^3 - 
32*zeta + 32)*q^1101 + (-8*zeta^11 - 8*zeta^4 - 8*zeta^3)*q^1102 + (18*zeta^11 +
4*zeta^8 + 4*zeta^6 + 18*zeta^4 + 18*zeta^3 + 4*zeta)*q^1103 + (36*zeta^11 - 
24*zeta^9 + 12*zeta^8 - 12*zeta^6 + 36*zeta^4 + 12*zeta^3 + 12*zeta - 12)*q^1104
+ (-14*zeta^11 + 28*zeta^9 - 28*zeta^8 - 14*zeta^4 + 14*zeta^3 - 28*zeta + 
14)*q^1105 + (6*zeta^11 - 12*zeta^9 + 8*zeta^8 - 4*zeta^6 + 6*zeta^4 - 6*zeta^3 
+ 8*zeta - 6)*q^1107 + (58*zeta^11 - 92*zeta^9 + 46*zeta^8 - 46*zeta^6 + 
58*zeta^4 - 34*zeta^3 + 46*zeta - 46)*q^1108 + (31*zeta^11 + 21*zeta^8 + 
21*zeta^6 + 31*zeta^4 + 31*zeta^3 + 21*zeta)*q^1109 + (-8*zeta^11 - 8*zeta^8 - 
8*zeta^6 - 8*zeta^4 - 8*zeta^3 - 8*zeta)*q^1110 + (40*zeta^11 - 60*zeta^9 + 
30*zeta^8 - 30*zeta^6 + 40*zeta^4 - 20*zeta^3 + 30*zeta - 30)*q^1111 + 
(-28*zeta^8 - 28*zeta^6 - 28*zeta)*q^1112 + (-26*zeta^11 + 52*zeta^9 - 78*zeta^8
- 26*zeta^6 - 26*zeta^4 + 26*zeta^3 - 78*zeta + 26)*q^1114 + (-24*zeta^11 - 
16*zeta^9 + 8*zeta^8 - 8*zeta^6 - 24*zeta^4 - 40*zeta^3 + 8*zeta - 8)*q^1115 + 
(-44*zeta^11 - 20*zeta^8 - 20*zeta^6 - 44*zeta^4 - 44*zeta^3 - 20*zeta)*q^1116 +
(-14*zeta^11 - 8*zeta^8 - 8*zeta^6 - 14*zeta^4 - 14*zeta^3 - 8*zeta)*q^1117 + 
(-88*zeta^11 + 128*zeta^9 - 64*zeta^8 + 64*zeta^6 - 88*zeta^4 + 40*zeta^3 - 
64*zeta + 64)*q^1118 + (-16*zeta^11 + 32*zeta^9 - 76*zeta^8 - 44*zeta^6 - 
16*zeta^4 + 16*zeta^3 - 76*zeta + 16)*q^1119 + (-8*zeta^11 + 16*zeta^9 - 
24*zeta^8 - 8*zeta^6 - 8*zeta^4 + 8*zeta^3 - 24*zeta + 8)*q^1121 + (-72*zeta^11 
+ 104*zeta^9 - 52*zeta^8 + 52*zeta^6 - 72*zeta^4 + 32*zeta^3 - 52*zeta + 
52)*q^1122 + (24*zeta^11 + 28*zeta^8 + 28*zeta^6 + 24*zeta^4 + 24*zeta^3 + 
28*zeta)*q^1123 + (-54*zeta^11 - 22*zeta^8 - 22*zeta^6 - 54*zeta^4 - 54*zeta^3 -
22*zeta)*q^1124 + (-16*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 16*zeta^4 - 
8*zeta + 8)*q^1125 + (-6*zeta^11 + 12*zeta^9 - 20*zeta^8 - 8*zeta^6 - 6*zeta^4 +
6*zeta^3 - 20*zeta + 6)*q^1126 + (12*zeta^11 - 24*zeta^9 + 32*zeta^8 + 8*zeta^6 
+ 12*zeta^4 - 12*zeta^3 + 32*zeta - 12)*q^1128 + (-20*zeta^11 + 16*zeta^9 - 
8*zeta^8 + 8*zeta^6 - 20*zeta^4 - 4*zeta^3 - 8*zeta + 8)*q^1129 + (22*zeta^11 + 
6*zeta^8 + 6*zeta^6 + 22*zeta^4 + 22*zeta^3 + 6*zeta)*q^1130 + (16*zeta^11 - 
8*zeta^8 - 8*zeta^6 + 16*zeta^4 + 16*zeta^3 - 8*zeta)*q^1131 + (-36*zeta^11 + 
60*zeta^9 - 30*zeta^8 + 30*zeta^6 - 36*zeta^4 + 24*zeta^3 - 30*zeta + 30)*q^1132
+ (-12*zeta^11 + 24*zeta^9 - 32*zeta^8 - 8*zeta^6 - 12*zeta^4 + 12*zeta^3 - 
32*zeta + 12)*q^1133 + (-32*zeta^11 + 64*zeta^9 - 28*zeta^8 + 36*zeta^6 - 
32*zeta^4 + 32*zeta^3 - 28*zeta + 32)*q^1135 + (-54*zeta^11 + 60*zeta^9 - 
30*zeta^8 + 30*zeta^6 - 54*zeta^4 + 6*zeta^3 - 30*zeta + 30)*q^1136 + 
(56*zeta^11 + 16*zeta^8 + 16*zeta^6 + 56*zeta^4 + 56*zeta^3 + 16*zeta)*q^1137 + 
(-2*zeta^11 + 2*zeta^8 + 2*zeta^6 - 2*zeta^4 - 2*zeta^3 + 2*zeta)*q^1138 + 
(-40*zeta^11 + 64*zeta^9 - 32*zeta^8 + 32*zeta^6 - 40*zeta^4 + 24*zeta^3 - 
32*zeta + 32)*q^1139 + (-8*zeta^11 + 16*zeta^9 + 8*zeta^8 + 24*zeta^6 - 8*zeta^4
+ 8*zeta^3 + 8*zeta + 8)*q^1140 + (-32*zeta^11 + 64*zeta^9 - 100*zeta^8 - 
36*zeta^6 - 32*zeta^4 + 32*zeta^3 - 100*zeta + 32)*q^1142 + (-24*zeta^11 + 
32*zeta^9 - 16*zeta^8 + 16*zeta^6 - 24*zeta^4 + 8*zeta^3 - 16*zeta + 16)*q^1143 
+ (-42*zeta^11 - 14*zeta^8 - 14*zeta^6 - 42*zeta^4 - 42*zeta^3 - 14*zeta)*q^1144
+ (4*zeta^11 + 2*zeta^8 + 2*zeta^6 + 4*zeta^4 + 4*zeta^3 + 2*zeta)*q^1145 + 
(108*zeta^11 - 144*zeta^9 + 72*zeta^8 - 72*zeta^6 + 108*zeta^4 - 36*zeta^3 + 
72*zeta - 72)*q^1146 + (-8*zeta^11 + 16*zeta^9 - 32*zeta^8 - 16*zeta^6 - 
8*zeta^4 + 8*zeta^3 - 32*zeta + 8)*q^1147 + (8*zeta^11 - 16*zeta^9 + 64*zeta^8 +
48*zeta^6 + 8*zeta^4 - 8*zeta^3 + 64*zeta - 8)*q^1149 + (54*zeta^11 - 64*zeta^9 
+ 32*zeta^8 - 32*zeta^6 + 54*zeta^4 - 10*zeta^3 + 32*zeta - 32)*q^1150 + 
(24*zeta^11 + 24*zeta^4 + 24*zeta^3)*q^1151 + (-32*zeta^11 - 22*zeta^8 - 
22*zeta^6 - 32*zeta^4 - 32*zeta^3 - 22*zeta)*q^1152 + (-26*zeta^11 + 22*zeta^9 -
11*zeta^8 + 11*zeta^6 - 26*zeta^4 - 4*zeta^3 - 11*zeta + 11)*q^1153 + 
(-17*zeta^11 + 34*zeta^9 - 44*zeta^8 - 10*zeta^6 - 17*zeta^4 + 17*zeta^3 - 
44*zeta + 17)*q^1154 + (22*zeta^11 - 44*zeta^9 + 97*zeta^8 + 53*zeta^6 + 
22*zeta^4 - 22*zeta^3 + 97*zeta - 22)*q^1156 + (-30*zeta^11 + 64*zeta^9 - 
32*zeta^8 + 32*zeta^6 - 30*zeta^4 + 34*zeta^3 - 32*zeta + 32)*q^1157 + 
(72*zeta^11 + 28*zeta^8 + 28*zeta^6 + 72*zeta^4 + 72*zeta^3 + 28*zeta)*q^1158 + 
(4*zeta^11 + 16*zeta^8 + 16*zeta^6 + 4*zeta^4 + 4*zeta^3 + 16*zeta)*q^1159 + 
(4*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 + 4*zeta^4 + 20*zeta^3 - 8*zeta + 
8)*q^1160 + (-8*zeta^11 + 16*zeta^9 - 16*zeta^8 - 8*zeta^4 + 8*zeta^3 - 16*zeta 
+ 8)*q^1161 + (20*zeta^11 - 40*zeta^9 + 38*zeta^8 - 2*zeta^6 + 20*zeta^4 - 
20*zeta^3 + 38*zeta - 20)*q^1163 + (-52*zeta^11 + 68*zeta^9 - 34*zeta^8 + 
34*zeta^6 - 52*zeta^4 + 16*zeta^3 - 34*zeta + 34)*q^1164 + (-8*zeta^11 - 
12*zeta^8 - 12*zeta^6 - 8*zeta^4 - 8*zeta^3 - 12*zeta)*q^1165 + (-8*zeta^11 - 
4*zeta^8 - 4*zeta^6 - 8*zeta^4 - 8*zeta^3 - 4*zeta)*q^1166 + (32*zeta^11 - 
24*zeta^9 + 12*zeta^8 - 12*zeta^6 + 32*zeta^4 + 8*zeta^3 + 12*zeta - 12)*q^1167 
+ (21*zeta^11 - 42*zeta^9 + 30*zeta^8 - 12*zeta^6 + 21*zeta^4 - 21*zeta^3 + 
30*zeta - 21)*q^1168 + (8*zeta^11 - 16*zeta^9 + 20*zeta^8 + 4*zeta^6 + 8*zeta^4 
- 8*zeta^3 + 20*zeta - 8)*q^1170 + (60*zeta^11 - 80*zeta^9 + 40*zeta^8 - 
40*zeta^6 + 60*zeta^4 - 20*zeta^3 + 40*zeta - 40)*q^1171 + (-59*zeta^11 - 
37*zeta^8 - 37*zeta^6 - 59*zeta^4 - 59*zeta^3 - 37*zeta)*q^1172 + (-44*zeta^11 -
4*zeta^8 - 4*zeta^6 - 44*zeta^4 - 44*zeta^3 - 4*zeta)*q^1173 + (-52*zeta^11 + 
68*zeta^9 - 34*zeta^8 + 34*zeta^6 - 52*zeta^4 + 16*zeta^3 - 34*zeta + 34)*q^1174
+ (-2*zeta^11 + 4*zeta^9 + 12*zeta^8 + 16*zeta^6 - 2*zeta^4 + 2*zeta^3 + 12*zeta
+ 2)*q^1175 + (8*zeta^11 - 16*zeta^9 + 28*zeta^8 + 12*zeta^6 + 8*zeta^4 - 
8*zeta^3 + 28*zeta - 8)*q^1177 + (56*zeta^11 - 80*zeta^9 + 40*zeta^8 - 40*zeta^6
+ 56*zeta^4 - 24*zeta^3 + 40*zeta - 40)*q^1178 + (8*zeta^11 + 16*zeta^8 + 
16*zeta^6 + 8*zeta^4 + 8*zeta^3 + 16*zeta)*q^1179 + (-12*zeta^11 - 8*zeta^8 - 
8*zeta^6 - 12*zeta^4 - 12*zeta^3 - 8*zeta)*q^1180 + (36*zeta^11 - 58*zeta^9 + 
29*zeta^8 - 29*zeta^6 + 36*zeta^4 - 22*zeta^3 + 29*zeta - 29)*q^1181 + 
(-4*zeta^11 + 8*zeta^9 - 12*zeta^8 - 4*zeta^6 - 4*zeta^4 + 4*zeta^3 - 12*zeta + 
4)*q^1182 + (4*zeta^11 - 8*zeta^9 - 4*zeta^8 - 12*zeta^6 + 4*zeta^4 - 4*zeta^3 -
4*zeta - 4)*q^1184 + (16*zeta^11 + 32*zeta^9 - 16*zeta^8 + 16*zeta^6 + 16*zeta^4
+ 48*zeta^3 - 16*zeta + 16)*q^1185 + (-43*zeta^11 - 19*zeta^8 - 19*zeta^6 - 
43*zeta^4 - 43*zeta^3 - 19*zeta)*q^1186 + (30*zeta^11 + 12*zeta^8 + 12*zeta^6 + 
30*zeta^4 + 30*zeta^3 + 12*zeta)*q^1187 + (-20*zeta^11 + 24*zeta^9 - 12*zeta^8 +
12*zeta^6 - 20*zeta^4 + 4*zeta^3 - 12*zeta + 12)*q^1188 + (-16*zeta^11 + 
32*zeta^9 - 12*zeta^8 + 20*zeta^6 - 16*zeta^4 + 16*zeta^3 - 12*zeta + 16)*q^1189
+ (-26*zeta^11 + 52*zeta^9 - 84*zeta^8 - 32*zeta^6 - 26*zeta^4 + 26*zeta^3 - 
84*zeta + 26)*q^1191 + (34*zeta^11 - 32*zeta^9 + 16*zeta^8 - 16*zeta^6 + 
34*zeta^4 + 2*zeta^3 + 16*zeta - 16)*q^1192 + (-25*zeta^11 - 7*zeta^8 - 7*zeta^6
- 25*zeta^4 - 25*zeta^3 - 7*zeta)*q^1193 + (40*zeta^11 + 24*zeta^8 + 24*zeta^6 +
40*zeta^4 + 40*zeta^3 + 24*zeta)*q^1194 + (-8*zeta^11 - 20*zeta^9 + 10*zeta^8 - 
10*zeta^6 - 8*zeta^4 - 28*zeta^3 + 10*zeta - 10)*q^1195 + (-14*zeta^11 + 
28*zeta^9 - 84*zeta^8 - 56*zeta^6 - 14*zeta^4 + 14*zeta^3 - 84*zeta + 14)*q^1196
+ (2*zeta^11 - 4*zeta^9 + 6*zeta^8 + 2*zeta^6 + 2*zeta^4 - 2*zeta^3 + 6*zeta - 
2)*q^1198 + (-16*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 16*zeta^4 - 8*zeta 
+ 8)*q^1199 + (-18*zeta^11 - 24*zeta^8 - 24*zeta^6 - 18*zeta^4 - 18*zeta^3 - 
24*zeta)*q^1200 + (-20*zeta^11 + 16*zeta^8 + 16*zeta^6 - 20*zeta^4 - 20*zeta^3 +
16*zeta)*q^1201 + (-4*zeta^11 + 2*zeta^9 - zeta^8 + zeta^6 - 4*zeta^4 - 2*zeta^3
- zeta + 1)*q^1202 + (20*zeta^11 - 40*zeta^9 + 56*zeta^8 + 16*zeta^6 + 20*zeta^4
- 20*zeta^3 + 56*zeta - 20)*q^1203 + (18*zeta^11 - 36*zeta^9 + 6*zeta^8 - 
30*zeta^6 + 18*zeta^4 - 18*zeta^3 + 6*zeta - 18)*q^1205 + (32*zeta^11 - 
48*zeta^9 + 24*zeta^8 - 24*zeta^6 + 32*zeta^4 - 16*zeta^3 + 24*zeta - 24)*q^1206
+ (74*zeta^11 + 22*zeta^8 + 22*zeta^6 + 74*zeta^4 + 74*zeta^3 + 22*zeta)*q^1207 
+ (-48*zeta^11 - 12*zeta^8 - 12*zeta^6 - 48*zeta^4 - 48*zeta^3 - 12*zeta)*q^1208
+ (-88*zeta^11 + 128*zeta^9 - 64*zeta^8 + 64*zeta^6 - 88*zeta^4 + 40*zeta^3 - 
64*zeta + 64)*q^1209 + (-7*zeta^11 + 14*zeta^9 - 14*zeta^8 - 7*zeta^4 + 7*zeta^3
- 14*zeta + 7)*q^1210 + (-50*zeta^11 + 100*zeta^9 - 160*zeta^8 - 60*zeta^6 - 
50*zeta^4 + 50*zeta^3 - 160*zeta + 50)*q^1212 + (-60*zeta^11 + 64*zeta^9 - 
32*zeta^8 + 32*zeta^6 - 60*zeta^4 + 4*zeta^3 - 32*zeta + 32)*q^1213 + 
(-60*zeta^11 - 28*zeta^8 - 28*zeta^6 - 60*zeta^4 - 60*zeta^3 - 28*zeta)*q^1214 +
(-2*zeta^11 + 2*zeta^8 + 2*zeta^6 - 2*zeta^4 - 2*zeta^3 + 2*zeta)*q^1215 + 
(36*zeta^11 - 44*zeta^9 + 22*zeta^8 - 22*zeta^6 + 36*zeta^4 - 8*zeta^3 + 22*zeta
- 22)*q^1216 + (-19*zeta^11 + 38*zeta^9 - 44*zeta^8 - 6*zeta^6 - 19*zeta^4 + 
19*zeta^3 - 44*zeta + 19)*q^1217 + O(q^1218), (-zeta^11 + 2*zeta^9 + 2*zeta^6 - 
zeta^4 + zeta^3 + 1)*q + (2*zeta^11 + 2*zeta^9 - zeta^8 + zeta^6 + 2*zeta^4 + 
4*zeta^3 - zeta + 1)*q^2 + (-2*zeta^11 + 2*zeta^8 + 2*zeta^6 - 2*zeta^4 - 
2*zeta^3 + 2*zeta)*q^3 + (zeta^11 - 5*zeta^8 - 5*zeta^6 + zeta^4 + zeta^3 - 
5*zeta)*q^4 + (2*zeta^11 - 4*zeta^9 + 2*zeta^8 - 2*zeta^6 + 2*zeta^4 - 2*zeta^3 
+ 2*zeta - 2)*q^5 + (-6*zeta^11 + 12*zeta^9 - 4*zeta^8 + 8*zeta^6 - 6*zeta^4 + 
6*zeta^3 - 4*zeta + 6)*q^6 + (5*zeta^11 - 10*zeta^9 + 2*zeta^8 - 8*zeta^6 + 
5*zeta^4 - 5*zeta^3 + 2*zeta - 5)*q^8 + (4*zeta^9 - 2*zeta^8 + 2*zeta^6 + 
4*zeta^3 - 2*zeta + 2)*q^9 + (2*zeta^8 + 2*zeta^6 + 2*zeta)*q^10 + (-2*zeta^11 +
2*zeta^8 + 2*zeta^6 - 2*zeta^4 - 2*zeta^3 + 2*zeta)*q^11 + (8*zeta^11 + 4*zeta^9
- 2*zeta^8 + 2*zeta^6 + 8*zeta^4 + 12*zeta^3 - 2*zeta + 2)*q^12 + (-6*zeta^11 + 
12*zeta^9 - 2*zeta^8 + 10*zeta^6 - 6*zeta^4 + 6*zeta^3 - 2*zeta + 6)*q^13 + 
(-4*zeta^8 - 4*zeta^6 - 4*zeta)*q^15 + (-6*zeta^9 + 3*zeta^8 - 3*zeta^6 - 
6*zeta^3 + 3*zeta - 3)*q^16 + (2*zeta^11 - 8*zeta^8 - 8*zeta^6 + 2*zeta^4 + 
2*zeta^3 - 8*zeta)*q^17 + (2*zeta^11 - 6*zeta^8 - 6*zeta^6 + 2*zeta^4 + 2*zeta^3
- 6*zeta)*q^18 + (-4*zeta^11 - 4*zeta^4 - 4*zeta^3)*q^19 + (-4*zeta^11 + 
8*zeta^9 - 6*zeta^8 + 2*zeta^6 - 4*zeta^4 + 4*zeta^3 - 6*zeta + 4)*q^20 + 
(-6*zeta^11 + 12*zeta^9 - 4*zeta^8 + 8*zeta^6 - 6*zeta^4 + 6*zeta^3 - 4*zeta + 
6)*q^22 + (-8*zeta^11 + 4*zeta^9 - 2*zeta^8 + 2*zeta^6 - 8*zeta^4 - 4*zeta^3 - 
2*zeta + 2)*q^23 + (6*zeta^11 - 10*zeta^8 - 10*zeta^6 + 6*zeta^4 + 6*zeta^3 - 
10*zeta)*q^24 + (zeta^11 + 7*zeta^8 + 7*zeta^6 + zeta^4 + zeta^3 + 7*zeta)*q^25 
+ (10*zeta^11 + 12*zeta^9 - 6*zeta^8 + 6*zeta^6 + 10*zeta^4 + 22*zeta^3 - 6*zeta
+ 6)*q^26 + (2*zeta^11 - 4*zeta^9 - 4*zeta^6 + 2*zeta^4 - 2*zeta^3 - 2)*q^27 + 
(-4*zeta^8 - 4*zeta^6 - 4*zeta)*q^29 + (-4*zeta^11 - 4*zeta^4 - 4*zeta^3)*q^30 +
(-4*zeta^11 + 8*zeta^8 + 8*zeta^6 - 4*zeta^4 - 4*zeta^3 + 8*zeta)*q^31 + 
(3*zeta^11 - zeta^8 - zeta^6 + 3*zeta^4 + 3*zeta^3 - zeta)*q^32 + (-8*zeta^9 + 
4*zeta^8 - 4*zeta^6 - 8*zeta^3 + 4*zeta - 4)*q^33 + (18*zeta^11 - 36*zeta^9 + 
10*zeta^8 - 26*zeta^6 + 18*zeta^4 - 18*zeta^3 + 10*zeta - 18)*q^34 + (10*zeta^11
- 20*zeta^9 + 8*zeta^8 - 12*zeta^6 + 10*zeta^4 - 10*zeta^3 + 8*zeta - 10)*q^36 +
(8*zeta^9 - 4*zeta^8 + 4*zeta^6 + 8*zeta^3 - 4*zeta + 4)*q^37 + (-4*zeta^11 + 
8*zeta^8 + 8*zeta^6 - 4*zeta^4 - 4*zeta^3 + 8*zeta)*q^38 + (-8*zeta^11 + 
12*zeta^8 + 12*zeta^6 - 8*zeta^4 - 8*zeta^3 + 12*zeta)*q^39 + (-2*zeta^11 + 
8*zeta^9 - 4*zeta^8 + 4*zeta^6 - 2*zeta^4 + 6*zeta^3 - 4*zeta + 4)*q^40 + 
(4*zeta^11 - 8*zeta^9 + 6*zeta^8 - 2*zeta^6 + 4*zeta^4 - 4*zeta^3 + 6*zeta - 
4)*q^41 + (8*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 8*zeta^4 - 8*zeta^3 + 
8*zeta - 8)*q^43 + (8*zeta^11 + 4*zeta^9 - 2*zeta^8 + 2*zeta^6 + 8*zeta^4 + 
12*zeta^3 - 2*zeta + 2)*q^44 + (-4*zeta^11 - 4*zeta^4 - 4*zeta^3)*q^45 + 
(-6*zeta^11 + 10*zeta^8 + 10*zeta^6 - 6*zeta^4 - 6*zeta^3 + 10*zeta)*q^46 + 
(-4*zeta^11 - 4*zeta^4 - 4*zeta^3)*q^47 + (6*zeta^11 - 12*zeta^9 - 12*zeta^6 + 
6*zeta^4 - 6*zeta^3 - 6)*q^48 + (-13*zeta^11 + 26*zeta^9 - 6*zeta^8 + 20*zeta^6 
- 13*zeta^4 + 13*zeta^3 - 6*zeta + 13)*q^50 + (12*zeta^11 + 8*zeta^9 - 4*zeta^8 
+ 4*zeta^6 + 12*zeta^4 + 20*zeta^3 - 4*zeta + 4)*q^51 + (8*zeta^11 - 26*zeta^8 -
26*zeta^6 + 8*zeta^4 + 8*zeta^3 - 26*zeta)*q^52 + (-2*zeta^11 + 2*zeta^8 + 
2*zeta^6 - 2*zeta^4 - 2*zeta^3 + 2*zeta)*q^53 + (-4*zeta^11 - 4*zeta^9 + 
2*zeta^8 - 2*zeta^6 - 4*zeta^4 - 8*zeta^3 + 2*zeta - 2)*q^54 + (-4*zeta^8 - 
4*zeta^6 - 4*zeta)*q^55 + (8*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 
8*zeta^4 - 8*zeta^3 + 8*zeta - 8)*q^57 + (-4*zeta^11 - 4*zeta^4 - 4*zeta^3)*q^58
+ (-4*zeta^11 + 8*zeta^8 + 8*zeta^6 - 4*zeta^4 - 4*zeta^3 + 8*zeta)*q^59 + 
(4*zeta^11 + 8*zeta^8 + 8*zeta^6 + 4*zeta^4 + 4*zeta^3 + 8*zeta)*q^60 + 
(6*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 6*zeta^4 - 10*zeta^3 + 8*zeta - 
8)*q^61 + (-20*zeta^11 + 40*zeta^9 - 12*zeta^8 + 28*zeta^6 - 20*zeta^4 + 
20*zeta^3 - 12*zeta + 20)*q^62 + (11*zeta^11 - 22*zeta^9 + 4*zeta^8 - 18*zeta^6 
+ 11*zeta^4 - 11*zeta^3 + 4*zeta - 11)*q^64 + (4*zeta^11 - 12*zeta^9 + 6*zeta^8 
- 6*zeta^6 + 4*zeta^4 - 8*zeta^3 + 6*zeta - 6)*q^65 + (-4*zeta^11 + 12*zeta^8 + 
12*zeta^6 - 4*zeta^4 - 4*zeta^3 + 12*zeta)*q^66 + (-8*zeta^8 - 8*zeta^6 - 
8*zeta)*q^67 + (-14*zeta^11 - 28*zeta^9 + 14*zeta^8 - 14*zeta^6 - 14*zeta^4 - 
42*zeta^3 + 14*zeta - 14)*q^68 + (12*zeta^11 - 24*zeta^9 + 16*zeta^8 - 8*zeta^6 
+ 12*zeta^4 - 12*zeta^3 + 16*zeta - 12)*q^69 + (18*zeta^11 - 36*zeta^9 + 
16*zeta^8 - 20*zeta^6 + 18*zeta^4 - 18*zeta^3 + 16*zeta - 18)*q^71 + (-4*zeta^11
- 12*zeta^9 + 6*zeta^8 - 6*zeta^6 - 4*zeta^4 - 16*zeta^3 + 6*zeta - 6)*q^72 + 
(4*zeta^11 + 10*zeta^8 + 10*zeta^6 + 4*zeta^4 + 4*zeta^3 + 10*zeta)*q^73 + 
(4*zeta^11 - 12*zeta^8 - 12*zeta^6 + 4*zeta^4 + 4*zeta^3 - 12*zeta)*q^74 + 
(-16*zeta^11 + 4*zeta^9 - 2*zeta^8 + 2*zeta^6 - 16*zeta^4 - 12*zeta^3 - 2*zeta +
2)*q^75 + (-12*zeta^11 + 24*zeta^9 - 4*zeta^8 + 20*zeta^6 - 12*zeta^4 + 
12*zeta^3 - 4*zeta + 12)*q^76 + (-32*zeta^11 + 64*zeta^9 - 20*zeta^8 + 44*zeta^6
- 32*zeta^4 + 32*zeta^3 - 20*zeta + 32)*q^78 + (8*zeta^11 - 16*zeta^9 + 8*zeta^8
- 8*zeta^6 + 8*zeta^4 - 8*zeta^3 + 8*zeta - 8)*q^79 + (6*zeta^11 + 6*zeta^4 + 
6*zeta^3)*q^80 + (-2*zeta^11 + 2*zeta^8 + 2*zeta^6 - 2*zeta^4 - 2*zeta^3 + 
2*zeta)*q^81 + (-2*zeta^11 - 8*zeta^9 + 4*zeta^8 - 4*zeta^6 - 2*zeta^4 - 
10*zeta^3 + 4*zeta - 4)*q^82 + (20*zeta^11 - 40*zeta^9 + 16*zeta^8 - 24*zeta^6 +
20*zeta^4 - 20*zeta^3 + 16*zeta - 20)*q^83 + (-6*zeta^11 + 12*zeta^9 - 8*zeta^8 
+ 4*zeta^6 - 6*zeta^4 + 6*zeta^3 - 8*zeta + 6)*q^85 + (-8*zeta^11 - 16*zeta^9 + 
8*zeta^8 - 8*zeta^6 - 8*zeta^4 - 24*zeta^3 + 8*zeta - 8)*q^86 + (8*zeta^11 + 
8*zeta^4 + 8*zeta^3)*q^87 + (6*zeta^11 - 10*zeta^8 - 10*zeta^6 + 6*zeta^4 + 
6*zeta^3 - 10*zeta)*q^88 + (-6*zeta^11 + 20*zeta^9 - 10*zeta^8 + 10*zeta^6 - 
6*zeta^4 + 14*zeta^3 - 10*zeta + 10)*q^89 + (-4*zeta^11 + 8*zeta^9 - 4*zeta^8 + 
4*zeta^6 - 4*zeta^4 + 4*zeta^3 - 4*zeta + 4)*q^90 + (-14*zeta^11 + 28*zeta^9 + 
28*zeta^6 - 14*zeta^4 + 14*zeta^3 + 14)*q^92 + (-8*zeta^11 - 16*zeta^9 + 
8*zeta^8 - 8*zeta^6 - 8*zeta^4 - 24*zeta^3 + 8*zeta - 8)*q^93 + (-4*zeta^11 + 
8*zeta^8 + 8*zeta^6 - 4*zeta^4 - 4*zeta^3 + 8*zeta)*q^94 + (-4*zeta^11 - 
4*zeta^8 - 4*zeta^6 - 4*zeta^4 - 4*zeta^3 - 4*zeta)*q^95 + (-4*zeta^11 + 
12*zeta^9 - 6*zeta^8 + 6*zeta^6 - 4*zeta^4 + 8*zeta^3 - 6*zeta + 6)*q^96 + 
(-6*zeta^11 + 12*zeta^9 - 2*zeta^8 + 10*zeta^6 - 6*zeta^4 + 6*zeta^3 - 2*zeta + 
6)*q^97 + (-4*zeta^11 + 8*zeta^9 + 8*zeta^6 - 4*zeta^4 + 4*zeta^3 + 4)*q^99 + 
(4*zeta^11 + 30*zeta^9 - 15*zeta^8 + 15*zeta^6 + 4*zeta^4 + 34*zeta^3 - 15*zeta 
+ 15)*q^100 + (10*zeta^11 - 20*zeta^8 - 20*zeta^6 + 10*zeta^4 + 10*zeta^3 - 
20*zeta)*q^101 + (16*zeta^11 - 36*zeta^8 - 36*zeta^6 + 16*zeta^4 + 16*zeta^3 - 
36*zeta)*q^102 + (12*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 + 12*zeta^4 + 
20*zeta^3 - 4*zeta + 4)*q^103 + (28*zeta^11 - 56*zeta^9 + 14*zeta^8 - 42*zeta^6 
+ 28*zeta^4 - 28*zeta^3 + 14*zeta - 28)*q^104 + (-6*zeta^11 + 12*zeta^9 - 
4*zeta^8 + 8*zeta^6 - 6*zeta^4 + 6*zeta^3 - 4*zeta + 6)*q^106 + (8*zeta^11 + 
12*zeta^9 - 6*zeta^8 + 6*zeta^6 + 8*zeta^4 + 20*zeta^3 - 6*zeta + 6)*q^107 + 
(-2*zeta^11 + 10*zeta^8 + 10*zeta^6 - 2*zeta^4 - 2*zeta^3 + 10*zeta)*q^108 + 
(-8*zeta^8 - 8*zeta^6 - 8*zeta)*q^109 + (-4*zeta^11 - 4*zeta^4 - 4*zeta^3)*q^110
+ (-8*zeta^11 + 16*zeta^9 + 16*zeta^6 - 8*zeta^4 + 8*zeta^3 + 8)*q^111 + 
(-22*zeta^11 + 44*zeta^9 - 16*zeta^8 + 28*zeta^6 - 22*zeta^4 + 22*zeta^3 - 
16*zeta + 22)*q^113 + (-8*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 - 8*zeta^4 -
24*zeta^3 + 8*zeta - 8)*q^114 + (-12*zeta^11 - 8*zeta^8 - 8*zeta^6 - 12*zeta^4 -
12*zeta^3 - 8*zeta)*q^115 + (4*zeta^11 + 8*zeta^8 + 8*zeta^6 + 4*zeta^4 + 
4*zeta^3 + 8*zeta)*q^116 + (4*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 + 
4*zeta^4 + 20*zeta^3 - 8*zeta + 8)*q^117 + (-20*zeta^11 + 40*zeta^9 - 12*zeta^8 
+ 28*zeta^6 - 20*zeta^4 + 20*zeta^3 - 12*zeta + 20)*q^118 + (-4*zeta^11 + 
8*zeta^9 + 4*zeta^8 + 12*zeta^6 - 4*zeta^4 + 4*zeta^3 + 4*zeta + 4)*q^120 + 
(14*zeta^9 - 7*zeta^8 + 7*zeta^6 + 14*zeta^3 - 7*zeta + 7)*q^121 + (-2*zeta^11 +
12*zeta^8 + 12*zeta^6 - 2*zeta^4 - 2*zeta^3 + 12*zeta)*q^122 + (-4*zeta^11 - 
8*zeta^8 - 8*zeta^6 - 4*zeta^4 - 4*zeta^3 - 8*zeta)*q^123 + (20*zeta^11 + 
24*zeta^9 - 12*zeta^8 + 12*zeta^6 + 20*zeta^4 + 44*zeta^3 - 12*zeta + 12)*q^124 
+ (8*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 8*zeta^4 - 8*zeta^3 + 8*zeta - 
8)*q^125 + (-12*zeta^11 + 24*zeta^9 - 8*zeta^8 + 16*zeta^6 - 12*zeta^4 + 
12*zeta^3 - 8*zeta + 12)*q^127 + (-22*zeta^11 - 10*zeta^9 + 5*zeta^8 - 5*zeta^6 
- 22*zeta^4 - 32*zeta^3 + 5*zeta - 5)*q^128 + (-16*zeta^8 - 16*zeta^6 - 
16*zeta)*q^129 + (-2*zeta^11 + 10*zeta^8 + 10*zeta^6 - 2*zeta^4 - 2*zeta^3 + 
10*zeta)*q^130 + (-16*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 - 16*zeta^4 - 
8*zeta^3 - 4*zeta + 4)*q^131 + (-20*zeta^11 + 40*zeta^9 - 16*zeta^8 + 24*zeta^6 
- 20*zeta^4 + 20*zeta^3 - 16*zeta + 20)*q^132 + (16*zeta^11 - 32*zeta^9 + 
8*zeta^8 - 24*zeta^6 + 16*zeta^4 - 16*zeta^3 + 8*zeta - 16)*q^134 + (-4*zeta^11 
+ 8*zeta^9 - 4*zeta^8 + 4*zeta^6 - 4*zeta^4 + 4*zeta^3 - 4*zeta + 4)*q^135 + 
(-12*zeta^11 + 34*zeta^8 + 34*zeta^6 - 12*zeta^4 - 12*zeta^3 + 34*zeta)*q^136 + 
(20*zeta^8 + 20*zeta^6 + 20*zeta)*q^137 + (-8*zeta^11 - 24*zeta^9 + 12*zeta^8 - 
12*zeta^6 - 8*zeta^4 - 32*zeta^3 + 12*zeta - 12)*q^138 + (4*zeta^11 - 8*zeta^9 -
8*zeta^8 - 16*zeta^6 + 4*zeta^4 - 4*zeta^3 - 8*zeta - 4)*q^139 + (8*zeta^11 - 
16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 8*zeta^4 - 8*zeta^3 + 8*zeta - 8)*q^141 + 
(-20*zeta^11 - 36*zeta^9 + 18*zeta^8 - 18*zeta^6 - 20*zeta^4 - 56*zeta^3 + 
18*zeta - 18)*q^142 + (-8*zeta^11 + 12*zeta^8 + 12*zeta^6 - 8*zeta^4 - 8*zeta^3 
+ 12*zeta)*q^143 + (-6*zeta^11 + 6*zeta^8 + 6*zeta^6 - 6*zeta^4 - 6*zeta^3 + 
6*zeta)*q^144 + (-16*zeta^11 + 24*zeta^9 - 12*zeta^8 + 12*zeta^6 - 16*zeta^4 + 
8*zeta^3 - 12*zeta + 12)*q^145 + (-16*zeta^11 + 32*zeta^9 - 6*zeta^8 + 26*zeta^6
- 16*zeta^4 + 16*zeta^3 - 6*zeta + 16)*q^146 + (20*zeta^11 - 40*zeta^9 + 
16*zeta^8 - 24*zeta^6 + 20*zeta^4 - 20*zeta^3 + 16*zeta - 20)*q^148 + 
(16*zeta^11 - 12*zeta^9 + 6*zeta^8 - 6*zeta^6 + 16*zeta^4 + 4*zeta^3 + 6*zeta - 
6)*q^149 + (-14*zeta^11 + 26*zeta^8 + 26*zeta^6 - 14*zeta^4 - 14*zeta^3 + 
26*zeta)*q^150 + (12*zeta^11 - 12*zeta^8 - 12*zeta^6 + 12*zeta^4 + 12*zeta^3 - 
12*zeta)*q^151 + (12*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 + 12*zeta^4 + 
20*zeta^3 - 4*zeta + 4)*q^152 + (16*zeta^11 - 32*zeta^9 + 12*zeta^8 - 20*zeta^6 
+ 16*zeta^4 - 16*zeta^3 + 12*zeta - 16)*q^153 + (4*zeta^11 - 8*zeta^9 - 8*zeta^6
+ 4*zeta^4 - 4*zeta^3 - 4)*q^155 + (36*zeta^11 + 32*zeta^9 - 16*zeta^8 + 
16*zeta^6 + 36*zeta^4 + 68*zeta^3 - 16*zeta + 16)*q^156 + (16*zeta^11 - 
22*zeta^8 - 22*zeta^6 + 16*zeta^4 + 16*zeta^3 - 22*zeta)*q^157 + (8*zeta^8 + 
8*zeta^6 + 8*zeta)*q^158 + (-8*zeta^9 + 4*zeta^8 - 4*zeta^6 - 8*zeta^3 + 4*zeta 
- 4)*q^159 + (2*zeta^11 - 4*zeta^9 + 10*zeta^8 + 6*zeta^6 + 2*zeta^4 - 2*zeta^3 
+ 10*zeta - 2)*q^160 + (-6*zeta^11 + 12*zeta^9 - 4*zeta^8 + 8*zeta^6 - 6*zeta^4 
+ 6*zeta^3 - 4*zeta + 6)*q^162 + (-16*zeta^11 - 16*zeta^4 - 16*zeta^3)*q^163 + 
(-10*zeta^11 + 8*zeta^8 + 8*zeta^6 - 10*zeta^4 - 10*zeta^3 + 8*zeta)*q^164 + 
(8*zeta^11 + 8*zeta^4 + 8*zeta^3)*q^165 + (-24*zeta^11 - 40*zeta^9 + 20*zeta^8 -
20*zeta^6 - 24*zeta^4 - 64*zeta^3 + 20*zeta - 20)*q^166 + (-28*zeta^11 + 
56*zeta^9 - 28*zeta^8 + 28*zeta^6 - 28*zeta^4 + 28*zeta^3 - 28*zeta + 28)*q^167 
+ (-21*zeta^11 + 42*zeta^9 - 16*zeta^8 + 26*zeta^6 - 21*zeta^4 + 21*zeta^3 - 
16*zeta + 21)*q^169 + (4*zeta^11 + 12*zeta^9 - 6*zeta^8 + 6*zeta^6 + 4*zeta^4 + 
16*zeta^3 - 6*zeta + 6)*q^170 + (8*zeta^8 + 8*zeta^6 + 8*zeta)*q^171 + 
(-16*zeta^11 + 24*zeta^8 + 24*zeta^6 - 16*zeta^4 - 16*zeta^3 + 24*zeta)*q^172 + 
(10*zeta^11 - 28*zeta^9 + 14*zeta^8 - 14*zeta^6 + 10*zeta^4 - 18*zeta^3 + 
14*zeta - 14)*q^173 + (8*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 8*zeta^4 - 
8*zeta^3 + 8*zeta - 8)*q^174 + (6*zeta^11 - 12*zeta^9 - 12*zeta^6 + 6*zeta^4 - 
6*zeta^3 - 6)*q^176 + (-8*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 - 8*zeta^4 -
24*zeta^3 + 8*zeta - 8)*q^177 + (4*zeta^11 - 18*zeta^8 - 18*zeta^6 + 4*zeta^4 + 
4*zeta^3 - 18*zeta)*q^178 + (-14*zeta^11 + 6*zeta^8 + 6*zeta^6 - 14*zeta^4 - 
14*zeta^3 + 6*zeta)*q^179 + (12*zeta^11 - 8*zeta^9 + 4*zeta^8 - 4*zeta^6 + 
12*zeta^4 + 4*zeta^3 + 4*zeta - 4)*q^180 + (6*zeta^11 - 12*zeta^9 + 2*zeta^8 - 
10*zeta^6 + 6*zeta^4 - 6*zeta^3 + 2*zeta - 6)*q^181 + (4*zeta^11 - 8*zeta^9 - 
12*zeta^8 - 20*zeta^6 + 4*zeta^4 - 4*zeta^3 - 12*zeta - 4)*q^183 + (20*zeta^11 +
4*zeta^9 - 2*zeta^8 + 2*zeta^6 + 20*zeta^4 + 24*zeta^3 - 2*zeta + 2)*q^184 + 
(-8*zeta^11 - 8*zeta^4 - 8*zeta^3)*q^185 + (-16*zeta^11 + 40*zeta^8 + 40*zeta^6 
- 16*zeta^4 - 16*zeta^3 + 40*zeta)*q^186 + (12*zeta^11 + 8*zeta^9 - 4*zeta^8 + 
4*zeta^6 + 12*zeta^4 + 20*zeta^3 - 4*zeta + 4)*q^187 + (-12*zeta^11 + 24*zeta^9 
- 4*zeta^8 + 20*zeta^6 - 12*zeta^4 + 12*zeta^3 - 4*zeta + 12)*q^188 + (4*zeta^11
- 8*zeta^9 - 8*zeta^6 + 4*zeta^4 - 4*zeta^3 - 4)*q^190 + (36*zeta^9 - 18*zeta^8 
+ 18*zeta^6 + 36*zeta^3 - 18*zeta + 18)*q^191 + (14*zeta^11 - 22*zeta^8 - 
22*zeta^6 + 14*zeta^4 + 14*zeta^3 - 22*zeta)*q^192 + (-6*zeta^11 + 22*zeta^8 + 
22*zeta^6 - 6*zeta^4 - 6*zeta^3 + 22*zeta)*q^193 + (10*zeta^11 + 12*zeta^9 - 
6*zeta^8 + 6*zeta^6 + 10*zeta^4 + 22*zeta^3 - 6*zeta + 6)*q^194 + (4*zeta^11 - 
8*zeta^9 - 8*zeta^8 - 16*zeta^6 + 4*zeta^4 - 4*zeta^3 - 8*zeta - 4)*q^195 + 
(-2*zeta^11 + 4*zeta^9 + 4*zeta^6 - 2*zeta^4 + 2*zeta^3 + 2)*q^197 + (8*zeta^11 
+ 8*zeta^9 - 4*zeta^8 + 4*zeta^6 + 8*zeta^4 + 16*zeta^3 - 4*zeta + 4)*q^198 + 
(16*zeta^11 - 8*zeta^8 - 8*zeta^6 + 16*zeta^4 + 16*zeta^3 - 8*zeta)*q^199 + 
(5*zeta^11 - 27*zeta^8 - 27*zeta^6 + 5*zeta^4 + 5*zeta^3 - 27*zeta)*q^200 + 
(16*zeta^11 + 16*zeta^4 + 16*zeta^3)*q^201 + (50*zeta^11 - 100*zeta^9 + 
30*zeta^8 - 70*zeta^6 + 50*zeta^4 - 50*zeta^3 + 30*zeta - 50)*q^202 + 
(56*zeta^11 - 112*zeta^9 + 28*zeta^8 - 84*zeta^6 + 56*zeta^4 - 56*zeta^3 + 
28*zeta - 56)*q^204 + (16*zeta^11 - 20*zeta^9 + 10*zeta^8 - 10*zeta^6 + 
16*zeta^4 - 4*zeta^3 + 10*zeta - 10)*q^205 + (16*zeta^11 - 36*zeta^8 - 36*zeta^6
+ 16*zeta^4 + 16*zeta^3 - 36*zeta)*q^206 + (4*zeta^11 + 12*zeta^8 + 12*zeta^6 + 
4*zeta^4 + 4*zeta^3 + 12*zeta)*q^207 + (-6*zeta^11 - 24*zeta^9 + 12*zeta^8 - 
12*zeta^6 - 6*zeta^4 - 30*zeta^3 + 12*zeta - 12)*q^208 + (8*zeta^11 - 16*zeta^9 
+ 8*zeta^8 - 8*zeta^6 + 8*zeta^4 - 8*zeta^3 + 8*zeta - 8)*q^209 + (28*zeta^11 - 
56*zeta^9 + 24*zeta^8 - 32*zeta^6 + 28*zeta^4 - 28*zeta^3 + 24*zeta - 28)*q^211 
+ (8*zeta^11 + 4*zeta^9 - 2*zeta^8 + 2*zeta^6 + 8*zeta^4 + 12*zeta^3 - 2*zeta + 
2)*q^212 + (4*zeta^11 - 36*zeta^8 - 36*zeta^6 + 4*zeta^4 + 4*zeta^3 - 
36*zeta)*q^213 + (14*zeta^11 - 34*zeta^8 - 34*zeta^6 + 14*zeta^4 + 14*zeta^3 - 
34*zeta)*q^214 + (16*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 16*zeta^4 + 
8*zeta - 8)*q^215 + (-10*zeta^11 + 20*zeta^9 - 4*zeta^8 + 16*zeta^6 - 10*zeta^4 
+ 10*zeta^3 - 4*zeta + 10)*q^216 + (16*zeta^11 - 32*zeta^9 + 8*zeta^8 - 
24*zeta^6 + 16*zeta^4 - 16*zeta^3 + 8*zeta - 16)*q^218 + (-28*zeta^11 + 
16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 28*zeta^4 - 12*zeta^3 - 8*zeta + 8)*q^219 + 
(4*zeta^11 + 8*zeta^8 + 8*zeta^6 + 4*zeta^4 + 4*zeta^3 + 8*zeta)*q^220 + 
(14*zeta^11 - 42*zeta^8 - 42*zeta^6 + 14*zeta^4 + 14*zeta^3 - 42*zeta)*q^221 + 
(16*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 + 16*zeta^4 + 32*zeta^3 - 8*zeta +
8)*q^222 + (16*zeta^11 - 32*zeta^9 + 24*zeta^8 - 8*zeta^6 + 16*zeta^4 - 
16*zeta^3 + 24*zeta - 16)*q^223 + (-14*zeta^11 + 28*zeta^9 - 16*zeta^8 + 
12*zeta^6 - 14*zeta^4 + 14*zeta^3 - 16*zeta + 14)*q^225 + (28*zeta^11 + 
44*zeta^9 - 22*zeta^8 + 22*zeta^6 + 28*zeta^4 + 72*zeta^3 - 22*zeta + 22)*q^226 
+ (4*zeta^11 + 24*zeta^8 + 24*zeta^6 + 4*zeta^4 + 4*zeta^3 + 24*zeta)*q^227 + 
(-16*zeta^11 + 24*zeta^8 + 24*zeta^6 - 16*zeta^4 - 16*zeta^3 + 24*zeta)*q^228 + 
(-6*zeta^11 - 8*zeta^9 + 4*zeta^8 - 4*zeta^6 - 6*zeta^4 - 14*zeta^3 + 4*zeta - 
4)*q^229 + (4*zeta^11 - 8*zeta^9 - 4*zeta^8 - 12*zeta^6 + 4*zeta^4 - 4*zeta^3 - 
4*zeta - 4)*q^230 + (-4*zeta^11 + 8*zeta^9 + 4*zeta^8 + 12*zeta^6 - 4*zeta^4 + 
4*zeta^3 + 4*zeta + 4)*q^232 + (-20*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 - 
20*zeta^4 - 36*zeta^3 + 8*zeta - 8)*q^233 + (12*zeta^11 - 32*zeta^8 - 32*zeta^6 
+ 12*zeta^4 + 12*zeta^3 - 32*zeta)*q^234 + (-4*zeta^11 - 4*zeta^8 - 4*zeta^6 - 
4*zeta^4 - 4*zeta^3 - 4*zeta)*q^235 + (20*zeta^11 + 24*zeta^9 - 12*zeta^8 + 
12*zeta^6 + 20*zeta^4 + 44*zeta^3 - 12*zeta + 12)*q^236 + (-16*zeta^8 - 
16*zeta^6 - 16*zeta)*q^237 + (2*zeta^11 - 4*zeta^9 - 8*zeta^8 - 12*zeta^6 + 
2*zeta^4 - 2*zeta^3 - 8*zeta - 2)*q^239 + (-12*zeta^11 + 24*zeta^9 - 12*zeta^8 +
12*zeta^6 - 12*zeta^4 + 12*zeta^3 - 12*zeta + 12)*q^240 + (-12*zeta^11 + 
6*zeta^8 + 6*zeta^6 - 12*zeta^4 - 12*zeta^3 + 6*zeta)*q^241 + (7*zeta^11 - 
21*zeta^8 - 21*zeta^6 + 7*zeta^4 + 7*zeta^3 - 21*zeta)*q^242 + (4*zeta^9 - 
2*zeta^8 + 2*zeta^6 + 4*zeta^3 - 2*zeta + 2)*q^243 + (-22*zeta^11 + 44*zeta^9 - 
26*zeta^8 + 18*zeta^6 - 22*zeta^4 + 22*zeta^3 - 26*zeta + 22)*q^244 + 
(12*zeta^11 - 24*zeta^9 + 4*zeta^8 - 20*zeta^6 + 12*zeta^4 - 12*zeta^3 + 4*zeta 
- 12)*q^246 + (-16*zeta^11 - 8*zeta^9 + 4*zeta^8 - 4*zeta^6 - 16*zeta^4 - 
24*zeta^3 + 4*zeta - 4)*q^247 + (16*zeta^11 - 36*zeta^8 - 36*zeta^6 + 16*zeta^4 
+ 16*zeta^3 - 36*zeta)*q^248 + (8*zeta^11 - 40*zeta^8 - 40*zeta^6 + 8*zeta^4 + 
8*zeta^3 - 40*zeta)*q^249 + (-8*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 - 
8*zeta^4 - 24*zeta^3 + 8*zeta - 8)*q^250 + (-8*zeta^11 + 16*zeta^9 - 12*zeta^8 +
4*zeta^6 - 8*zeta^4 + 8*zeta^3 - 12*zeta + 8)*q^251 + (12*zeta^11 - 24*zeta^9 + 
16*zeta^8 - 8*zeta^6 + 12*zeta^4 - 12*zeta^3 + 16*zeta - 12)*q^253 + (16*zeta^11
+ 24*zeta^9 - 12*zeta^8 + 12*zeta^6 + 16*zeta^4 + 40*zeta^3 - 12*zeta + 
12)*q^254 + (4*zeta^11 + 12*zeta^8 + 12*zeta^6 + 4*zeta^4 + 4*zeta^3 + 
12*zeta)*q^255 + (-13*zeta^11 + 37*zeta^8 + 37*zeta^6 - 13*zeta^4 - 13*zeta^3 + 
37*zeta)*q^256 + (30*zeta^11 - 4*zeta^9 + 2*zeta^8 - 2*zeta^6 + 30*zeta^4 + 
26*zeta^3 + 2*zeta - 2)*q^257 + (32*zeta^11 - 64*zeta^9 + 16*zeta^8 - 48*zeta^6 
+ 32*zeta^4 - 32*zeta^3 + 16*zeta - 32)*q^258 + (-18*zeta^11 + 36*zeta^9 - 
20*zeta^8 + 16*zeta^6 - 18*zeta^4 + 18*zeta^3 - 20*zeta + 18)*q^260 + (8*zeta^11
- 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 8*zeta^4 - 8*zeta^3 + 8*zeta - 8)*q^261 + 
(-12*zeta^11 + 20*zeta^8 + 20*zeta^6 - 12*zeta^4 - 12*zeta^3 + 20*zeta)*q^262 + 
(-6*zeta^11 + 22*zeta^8 + 22*zeta^6 - 6*zeta^4 - 6*zeta^3 + 22*zeta)*q^263 + 
(8*zeta^11 + 24*zeta^9 - 12*zeta^8 + 12*zeta^6 + 8*zeta^4 + 32*zeta^3 - 12*zeta 
+ 12)*q^264 + (-4*zeta^8 - 4*zeta^6 - 4*zeta)*q^265 + (-8*zeta^11 + 16*zeta^9 + 
12*zeta^8 + 28*zeta^6 - 8*zeta^4 + 8*zeta^3 + 12*zeta + 8)*q^267 + (-8*zeta^11 -
32*zeta^9 + 16*zeta^8 - 16*zeta^6 - 8*zeta^4 - 40*zeta^3 + 16*zeta - 16)*q^268 +
(-2*zeta^11 - 16*zeta^8 - 16*zeta^6 - 2*zeta^4 - 2*zeta^3 - 16*zeta)*q^269 + 
(-4*zeta^8 - 4*zeta^6 - 4*zeta)*q^270 + (-20*zeta^11 - 8*zeta^9 + 4*zeta^8 - 
4*zeta^6 - 20*zeta^4 - 28*zeta^3 + 4*zeta - 4)*q^271 + (-24*zeta^11 + 48*zeta^9 
- 18*zeta^8 + 30*zeta^6 - 24*zeta^4 + 24*zeta^3 - 18*zeta + 24)*q^272 + 
(-40*zeta^11 + 80*zeta^9 - 20*zeta^8 + 60*zeta^6 - 40*zeta^4 + 40*zeta^3 - 
20*zeta + 40)*q^274 + (-16*zeta^11 + 4*zeta^9 - 2*zeta^8 + 2*zeta^6 - 16*zeta^4 
- 12*zeta^3 - 2*zeta + 2)*q^275 + (-28*zeta^11 + 28*zeta^8 + 28*zeta^6 - 
28*zeta^4 - 28*zeta^3 + 28*zeta)*q^276 + (2*zeta^11 - 18*zeta^8 - 18*zeta^6 + 
2*zeta^4 + 2*zeta^3 - 18*zeta)*q^277 + (-16*zeta^11 - 8*zeta^9 + 4*zeta^8 - 
4*zeta^6 - 16*zeta^4 - 24*zeta^3 + 4*zeta - 4)*q^278 + (-16*zeta^11 + 32*zeta^9 
- 8*zeta^8 + 24*zeta^6 - 16*zeta^4 + 16*zeta^3 - 8*zeta + 16)*q^279 + 
(20*zeta^11 - 40*zeta^9 + 12*zeta^8 - 28*zeta^6 + 20*zeta^4 - 20*zeta^3 + 
12*zeta - 20)*q^281 + (-8*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 - 8*zeta^4 -
24*zeta^3 + 8*zeta - 8)*q^282 + (-12*zeta^8 - 12*zeta^6 - 12*zeta)*q^283 + 
(-34*zeta^11 + 58*zeta^8 + 58*zeta^6 - 34*zeta^4 - 34*zeta^3 + 58*zeta)*q^284 + 
(16*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 16*zeta^4 + 8*zeta - 8)*q^285 + 
(-32*zeta^11 + 64*zeta^9 - 20*zeta^8 + 44*zeta^6 - 32*zeta^4 + 32*zeta^3 - 
20*zeta + 32)*q^286 + (2*zeta^11 - 4*zeta^9 - 4*zeta^8 - 8*zeta^6 + 2*zeta^4 - 
2*zeta^3 - 4*zeta - 2)*q^288 + (-24*zeta^11 - 10*zeta^9 + 5*zeta^8 - 5*zeta^6 - 
24*zeta^4 - 34*zeta^3 + 5*zeta - 5)*q^289 + (-4*zeta^11 - 4*zeta^8 - 4*zeta^6 - 
4*zeta^4 - 4*zeta^3 - 4*zeta)*q^290 + (-8*zeta^11 + 12*zeta^8 + 12*zeta^6 - 
8*zeta^4 - 8*zeta^3 + 12*zeta)*q^291 + (-2*zeta^11 + 48*zeta^9 - 24*zeta^8 + 
24*zeta^6 - 2*zeta^4 + 46*zeta^3 - 24*zeta + 24)*q^292 + (-20*zeta^11 + 
40*zeta^9 - 2*zeta^8 + 38*zeta^6 - 20*zeta^4 + 20*zeta^3 - 2*zeta + 20)*q^293 + 
(4*zeta^11 - 8*zeta^9 - 8*zeta^6 + 4*zeta^4 - 4*zeta^3 - 4)*q^295 + (-8*zeta^11 
- 24*zeta^9 + 12*zeta^8 - 12*zeta^6 - 8*zeta^4 - 32*zeta^3 + 12*zeta - 12)*q^296
+ (4*zeta^11 - 4*zeta^8 - 4*zeta^6 + 4*zeta^4 + 4*zeta^3 - 4*zeta)*q^297 + 
(10*zeta^11 - 14*zeta^8 - 14*zeta^6 + 10*zeta^4 + 10*zeta^3 - 14*zeta)*q^298 + 
(-28*zeta^11 - 28*zeta^4 - 28*zeta^3)*q^299 + (-38*zeta^11 + 76*zeta^9 - 
8*zeta^8 + 68*zeta^6 - 38*zeta^4 + 38*zeta^3 - 8*zeta + 38)*q^300 + (36*zeta^11 
- 72*zeta^9 + 24*zeta^8 - 48*zeta^6 + 36*zeta^4 - 36*zeta^3 + 24*zeta - 
36)*q^302 + (20*zeta^11 + 40*zeta^9 - 20*zeta^8 + 20*zeta^6 + 20*zeta^4 + 
60*zeta^3 - 20*zeta + 20)*q^303 + (-12*zeta^8 - 12*zeta^6 - 12*zeta)*q^304 + 
(22*zeta^11 + 6*zeta^8 + 6*zeta^6 + 22*zeta^4 + 22*zeta^3 + 6*zeta)*q^305 + 
(-20*zeta^11 - 32*zeta^9 + 16*zeta^8 - 16*zeta^6 - 20*zeta^4 - 52*zeta^3 + 
16*zeta - 16)*q^306 + (4*zeta^11 - 8*zeta^9 + 20*zeta^8 + 12*zeta^6 + 4*zeta^4 -
4*zeta^3 + 20*zeta - 4)*q^307 + (-32*zeta^11 + 64*zeta^9 - 24*zeta^8 + 40*zeta^6
- 32*zeta^4 + 32*zeta^3 - 24*zeta + 32)*q^309 + (-8*zeta^11 - 8*zeta^9 + 
4*zeta^8 - 4*zeta^6 - 8*zeta^4 - 16*zeta^3 + 4*zeta - 4)*q^310 + (-8*zeta^11 + 
28*zeta^8 + 28*zeta^6 - 8*zeta^4 - 8*zeta^3 + 28*zeta)*q^311 + (28*zeta^11 - 
56*zeta^8 - 56*zeta^6 + 28*zeta^4 + 28*zeta^3 - 56*zeta)*q^312 + (14*zeta^11 + 
16*zeta^9 - 8*zeta^8 + 8*zeta^6 + 14*zeta^4 + 30*zeta^3 - 8*zeta + 8)*q^313 + 
(60*zeta^11 - 120*zeta^9 + 38*zeta^8 - 82*zeta^6 + 60*zeta^4 - 60*zeta^3 + 
38*zeta - 60)*q^314 + (-16*zeta^11 + 32*zeta^9 - 24*zeta^8 + 8*zeta^6 - 
16*zeta^4 + 16*zeta^3 - 24*zeta + 16)*q^316 + (-20*zeta^9 + 10*zeta^8 - 
10*zeta^6 - 20*zeta^3 + 10*zeta - 10)*q^317 + (-4*zeta^11 + 12*zeta^8 + 
12*zeta^6 - 4*zeta^4 - 4*zeta^3 + 12*zeta)*q^318 + (8*zeta^11 + 8*zeta^4 + 
8*zeta^3)*q^319 + (-6*zeta^11 + 20*zeta^9 - 10*zeta^8 + 10*zeta^6 - 6*zeta^4 + 
14*zeta^3 - 10*zeta + 10)*q^320 + (-28*zeta^11 + 56*zeta^9 - 16*zeta^8 + 
40*zeta^6 - 28*zeta^4 + 28*zeta^3 - 16*zeta + 28)*q^321 + (-20*zeta^11 + 
40*zeta^9 - 8*zeta^8 + 32*zeta^6 - 20*zeta^4 + 20*zeta^3 - 8*zeta + 20)*q^323 + 
(8*zeta^11 + 4*zeta^9 - 2*zeta^8 + 2*zeta^6 + 8*zeta^4 + 12*zeta^3 - 2*zeta + 
2)*q^324 + (-4*zeta^11 + 34*zeta^8 + 34*zeta^6 - 4*zeta^4 - 4*zeta^3 + 
34*zeta)*q^325 + (-16*zeta^11 + 32*zeta^8 + 32*zeta^6 - 16*zeta^4 - 16*zeta^3 + 
32*zeta)*q^326 + (16*zeta^11 + 16*zeta^4 + 16*zeta^3)*q^327 + (-14*zeta^11 + 
28*zeta^9 - 14*zeta^8 + 14*zeta^6 - 14*zeta^4 + 14*zeta^3 - 14*zeta + 14)*q^328 
+ (8*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 8*zeta^4 - 8*zeta^3 + 8*zeta - 
8)*q^330 + (8*zeta^9 - 4*zeta^8 + 4*zeta^6 + 8*zeta^3 - 4*zeta + 4)*q^331 + 
(-36*zeta^11 + 68*zeta^8 + 68*zeta^6 - 36*zeta^4 - 36*zeta^3 + 68*zeta)*q^332 + 
(8*zeta^11 - 8*zeta^8 - 8*zeta^6 + 8*zeta^4 + 8*zeta^3 - 8*zeta)*q^333 + 
(28*zeta^11 + 56*zeta^9 - 28*zeta^8 + 28*zeta^6 + 28*zeta^4 + 84*zeta^3 - 
28*zeta + 28)*q^334 + (-8*zeta^11 + 16*zeta^9 - 16*zeta^8 - 8*zeta^4 + 8*zeta^3 
- 16*zeta + 8)*q^335 + (16*zeta^11 - 32*zeta^9 - 8*zeta^8 - 40*zeta^6 + 
16*zeta^4 - 16*zeta^3 - 8*zeta - 16)*q^337 + (26*zeta^11 + 42*zeta^9 - 21*zeta^8
+ 21*zeta^6 + 26*zeta^4 + 68*zeta^3 - 21*zeta + 21)*q^338 + (-12*zeta^11 + 
44*zeta^8 + 44*zeta^6 - 12*zeta^4 - 12*zeta^3 + 44*zeta)*q^339 + (14*zeta^11 - 
14*zeta^8 - 14*zeta^6 + 14*zeta^4 + 14*zeta^3 - 14*zeta)*q^340 + (-8*zeta^11 - 
16*zeta^9 + 8*zeta^8 - 8*zeta^6 - 8*zeta^4 - 24*zeta^3 + 8*zeta - 8)*q^341 + 
(-16*zeta^11 + 32*zeta^9 - 8*zeta^8 + 24*zeta^6 - 16*zeta^4 + 16*zeta^3 - 8*zeta
+ 16)*q^342 + (-32*zeta^11 + 64*zeta^9 - 24*zeta^8 + 40*zeta^6 - 32*zeta^4 + 
32*zeta^3 - 24*zeta + 32)*q^344 + (40*zeta^11 - 48*zeta^9 + 24*zeta^8 - 
24*zeta^6 + 40*zeta^4 - 8*zeta^3 + 24*zeta - 24)*q^345 + (-4*zeta^11 + 22*zeta^8
+ 22*zeta^6 - 4*zeta^4 - 4*zeta^3 + 22*zeta)*q^346 + (22*zeta^11 - 6*zeta^8 - 
6*zeta^6 + 22*zeta^4 + 22*zeta^3 - 6*zeta)*q^347 + (-24*zeta^11 + 16*zeta^9 - 
8*zeta^8 + 8*zeta^6 - 24*zeta^4 - 8*zeta^3 - 8*zeta + 8)*q^348 + (-14*zeta^11 + 
28*zeta^9 - 14*zeta^8 + 14*zeta^6 - 14*zeta^4 + 14*zeta^3 - 14*zeta + 14)*q^349 
+ (12*zeta^11 - 24*zeta^9 + 4*zeta^8 - 20*zeta^6 + 12*zeta^4 - 12*zeta^3 + 
4*zeta - 12)*q^351 + (-4*zeta^11 + 12*zeta^9 - 6*zeta^8 + 6*zeta^6 - 4*zeta^4 + 
8*zeta^3 - 6*zeta + 6)*q^352 + (-2*zeta^11 - 16*zeta^8 - 16*zeta^6 - 2*zeta^4 - 
2*zeta^3 - 16*zeta)*q^353 + (-16*zeta^11 + 40*zeta^8 + 40*zeta^6 - 16*zeta^4 - 
16*zeta^3 + 40*zeta)*q^354 + (28*zeta^11 - 24*zeta^9 + 12*zeta^8 - 12*zeta^6 + 
28*zeta^4 + 4*zeta^3 + 12*zeta - 12)*q^355 + (32*zeta^11 - 64*zeta^9 + 34*zeta^8
- 30*zeta^6 + 32*zeta^4 - 32*zeta^3 + 34*zeta - 32)*q^356 + (-26*zeta^11 + 
52*zeta^9 - 20*zeta^8 + 32*zeta^6 - 26*zeta^4 + 26*zeta^3 - 20*zeta + 26)*q^358 
+ (8*zeta^11 + 12*zeta^9 - 6*zeta^8 + 6*zeta^6 + 8*zeta^4 + 20*zeta^3 - 6*zeta +
6)*q^359 + (8*zeta^11 - 4*zeta^8 - 4*zeta^6 + 8*zeta^4 + 8*zeta^3 - 
4*zeta)*q^360 + (-11*zeta^11 + 11*zeta^8 + 11*zeta^6 - 11*zeta^4 - 11*zeta^3 + 
11*zeta)*q^361 + (-10*zeta^11 - 12*zeta^9 + 6*zeta^8 - 6*zeta^6 - 10*zeta^4 - 
22*zeta^3 + 6*zeta - 6)*q^362 + (-14*zeta^11 + 28*zeta^9 + 28*zeta^6 - 14*zeta^4
+ 14*zeta^3 + 14)*q^363 + (14*zeta^11 - 28*zeta^9 + 36*zeta^8 + 8*zeta^6 + 
14*zeta^4 - 14*zeta^3 + 36*zeta - 14)*q^365 + (-20*zeta^11 - 8*zeta^9 + 4*zeta^8
- 4*zeta^6 - 20*zeta^4 - 28*zeta^3 + 4*zeta - 4)*q^366 + (8*zeta^11 - 24*zeta^8 
- 24*zeta^6 + 8*zeta^4 + 8*zeta^3 - 24*zeta)*q^367 + (-6*zeta^11 - 18*zeta^8 - 
18*zeta^6 - 6*zeta^4 - 6*zeta^3 - 18*zeta)*q^368 + (-12*zeta^11 + 8*zeta^9 - 
4*zeta^8 + 4*zeta^6 - 12*zeta^4 - 4*zeta^3 - 4*zeta + 4)*q^369 + (-8*zeta^11 + 
16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 8*zeta^4 + 8*zeta^3 - 8*zeta + 8)*q^370 + 
(-64*zeta^11 + 128*zeta^9 - 40*zeta^8 + 88*zeta^6 - 64*zeta^4 + 64*zeta^3 - 
40*zeta + 64)*q^372 + (16*zeta^11 + 44*zeta^9 - 22*zeta^8 + 22*zeta^6 + 
16*zeta^4 + 60*zeta^3 - 22*zeta + 22)*q^373 + (16*zeta^11 - 36*zeta^8 - 
36*zeta^6 + 16*zeta^4 + 16*zeta^3 - 36*zeta)*q^374 + (-16*zeta^8 - 16*zeta^6 - 
16*zeta)*q^375 + (12*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 + 12*zeta^4 + 
20*zeta^3 - 4*zeta + 4)*q^376 + (4*zeta^11 - 8*zeta^9 - 8*zeta^8 - 16*zeta^6 + 
4*zeta^4 - 4*zeta^3 - 8*zeta - 4)*q^377 + (-36*zeta^11 + 72*zeta^9 - 16*zeta^8 +
56*zeta^6 - 36*zeta^4 + 36*zeta^3 - 16*zeta + 36)*q^379 + (8*zeta^11 - 24*zeta^9
+ 12*zeta^8 - 12*zeta^6 + 8*zeta^4 - 16*zeta^3 + 12*zeta - 12)*q^380 + 
(-8*zeta^11 + 24*zeta^8 + 24*zeta^6 - 8*zeta^4 - 8*zeta^3 + 24*zeta)*q^381 + 
(18*zeta^11 - 54*zeta^8 - 54*zeta^6 + 18*zeta^4 + 18*zeta^3 - 54*zeta)*q^382 + 
(8*zeta^11 + 48*zeta^9 - 24*zeta^8 + 24*zeta^6 + 8*zeta^4 + 56*zeta^3 - 24*zeta 
+ 24)*q^383 + (54*zeta^11 - 108*zeta^9 + 44*zeta^8 - 64*zeta^6 + 54*zeta^4 - 
54*zeta^3 + 44*zeta - 54)*q^384 + (-50*zeta^11 + 100*zeta^9 - 28*zeta^8 + 
72*zeta^6 - 50*zeta^4 + 50*zeta^3 - 28*zeta + 50)*q^386 + (-16*zeta^11 - 
16*zeta^4 - 16*zeta^3)*q^387 + (8*zeta^11 - 26*zeta^8 - 26*zeta^6 + 8*zeta^4 + 
8*zeta^3 - 26*zeta)*q^388 + (-4*zeta^11 - 16*zeta^8 - 16*zeta^6 - 4*zeta^4 - 
4*zeta^3 - 16*zeta)*q^389 + (-16*zeta^11 - 8*zeta^9 + 4*zeta^8 - 4*zeta^6 - 
16*zeta^4 - 24*zeta^3 + 4*zeta - 4)*q^390 + (-24*zeta^11 + 48*zeta^9 - 4*zeta^8 
+ 44*zeta^6 - 24*zeta^4 + 24*zeta^3 - 4*zeta + 24)*q^391 + (24*zeta^11 - 
48*zeta^9 + 32*zeta^8 - 16*zeta^6 + 24*zeta^4 - 24*zeta^3 + 32*zeta - 24)*q^393 
+ (4*zeta^11 + 4*zeta^9 - 2*zeta^8 + 2*zeta^6 + 4*zeta^4 + 8*zeta^3 - 2*zeta + 
2)*q^394 + (24*zeta^11 + 8*zeta^8 + 8*zeta^6 + 24*zeta^4 + 24*zeta^3 + 
8*zeta)*q^395 + (4*zeta^11 - 20*zeta^8 - 20*zeta^6 + 4*zeta^4 + 4*zeta^3 - 
20*zeta)*q^396 + (-26*zeta^11 - 32*zeta^9 + 16*zeta^8 - 16*zeta^6 - 26*zeta^4 - 
58*zeta^3 + 16*zeta - 16)*q^397 + (32*zeta^11 - 64*zeta^9 + 24*zeta^8 - 
40*zeta^6 + 32*zeta^4 - 32*zeta^3 + 24*zeta - 32)*q^398 + (21*zeta^11 - 
42*zeta^9 + 24*zeta^8 - 18*zeta^6 + 21*zeta^4 - 21*zeta^3 + 24*zeta - 21)*q^400 
+ (-20*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 - 20*zeta^4 - 36*zeta^3 + 
8*zeta - 8)*q^401 + (16*zeta^11 - 32*zeta^8 - 32*zeta^6 + 16*zeta^4 + 16*zeta^3 
- 32*zeta)*q^402 + (-20*zeta^11 + 44*zeta^8 + 44*zeta^6 - 20*zeta^4 - 20*zeta^3 
+ 44*zeta)*q^403 + (-50*zeta^11 - 60*zeta^9 + 30*zeta^8 - 30*zeta^6 - 50*zeta^4 
- 110*zeta^3 + 30*zeta - 30)*q^404 + (-4*zeta^8 - 4*zeta^6 - 4*zeta)*q^405 + 
(-8*zeta^11 + 16*zeta^9 + 16*zeta^6 - 8*zeta^4 + 8*zeta^3 + 8)*q^407 + 
(-44*zeta^11 - 48*zeta^9 + 24*zeta^8 - 24*zeta^6 - 44*zeta^4 - 92*zeta^3 + 
24*zeta - 24)*q^408 + (-20*zeta^11 + 18*zeta^8 + 18*zeta^6 - 20*zeta^4 - 
20*zeta^3 + 18*zeta)*q^409 + (6*zeta^11 - 2*zeta^8 - 2*zeta^6 + 6*zeta^4 + 
6*zeta^3 - 2*zeta)*q^410 + (-40*zeta^11 - 40*zeta^4 - 40*zeta^3)*q^411 + 
(56*zeta^11 - 112*zeta^9 + 28*zeta^8 - 84*zeta^6 + 56*zeta^4 - 56*zeta^3 + 
28*zeta - 56)*q^412 + (-20*zeta^11 + 40*zeta^9 - 8*zeta^8 + 32*zeta^6 - 
20*zeta^4 + 20*zeta^3 - 8*zeta + 20)*q^414 + (24*zeta^11 - 16*zeta^9 + 8*zeta^8 
- 8*zeta^6 + 24*zeta^4 + 8*zeta^3 + 8*zeta - 8)*q^415 + (10*zeta^11 - 8*zeta^8 -
8*zeta^6 + 10*zeta^4 + 10*zeta^3 - 8*zeta)*q^416 + (24*zeta^11 - 8*zeta^8 - 
8*zeta^6 + 24*zeta^4 + 24*zeta^3 - 8*zeta)*q^417 + (-8*zeta^11 - 16*zeta^9 + 
8*zeta^8 - 8*zeta^6 - 8*zeta^4 - 24*zeta^3 + 8*zeta - 8)*q^418 + (-40*zeta^11 + 
80*zeta^9 - 4*zeta^8 + 76*zeta^6 - 40*zeta^4 + 40*zeta^3 - 4*zeta + 40)*q^419 + 
(38*zeta^11 - 76*zeta^9 + 32*zeta^8 - 44*zeta^6 + 38*zeta^4 - 38*zeta^3 + 
32*zeta - 38)*q^421 + (-32*zeta^11 - 56*zeta^9 + 28*zeta^8 - 28*zeta^6 - 
32*zeta^4 - 88*zeta^3 + 28*zeta - 28)*q^422 + (8*zeta^8 + 8*zeta^6 + 
8*zeta)*q^423 + (6*zeta^11 - 10*zeta^8 - 10*zeta^6 + 6*zeta^4 + 6*zeta^3 - 
10*zeta)*q^424 + (10*zeta^11 + 44*zeta^9 - 22*zeta^8 + 22*zeta^6 + 10*zeta^4 + 
54*zeta^3 - 22*zeta + 22)*q^425 + (76*zeta^11 - 152*zeta^9 + 40*zeta^8 - 
112*zeta^6 + 76*zeta^4 - 76*zeta^3 + 40*zeta - 76)*q^426 + (54*zeta^11 - 
108*zeta^9 + 32*zeta^8 - 76*zeta^6 + 54*zeta^4 - 54*zeta^3 + 32*zeta - 54)*q^428
+ (-8*zeta^11 - 32*zeta^9 + 16*zeta^8 - 16*zeta^6 - 8*zeta^4 - 40*zeta^3 + 
16*zeta - 16)*q^429 + (8*zeta^11 - 8*zeta^8 - 8*zeta^6 + 8*zeta^4 + 8*zeta^3 - 
8*zeta)*q^430 + (-10*zeta^11 - 14*zeta^8 - 14*zeta^6 - 10*zeta^4 - 10*zeta^3 - 
14*zeta)*q^431 + (12*zeta^9 - 6*zeta^8 + 6*zeta^6 + 12*zeta^3 - 6*zeta + 
6)*q^432 + (10*zeta^11 - 20*zeta^9 - 6*zeta^8 - 26*zeta^6 + 10*zeta^4 - 
10*zeta^3 - 6*zeta - 10)*q^433 + (8*zeta^11 - 16*zeta^9 + 32*zeta^8 + 16*zeta^6 
+ 8*zeta^4 - 8*zeta^3 + 32*zeta - 8)*q^435 + (-8*zeta^11 - 32*zeta^9 + 16*zeta^8
- 16*zeta^6 - 8*zeta^4 - 40*zeta^3 + 16*zeta - 16)*q^436 + (16*zeta^11 - 
8*zeta^8 - 8*zeta^6 + 16*zeta^4 + 16*zeta^3 - 8*zeta)*q^437 + (-20*zeta^11 + 
32*zeta^8 + 32*zeta^6 - 20*zeta^4 - 20*zeta^3 + 32*zeta)*q^438 + (-16*zeta^11 - 
48*zeta^9 + 24*zeta^8 - 24*zeta^6 - 16*zeta^4 - 64*zeta^3 + 24*zeta - 24)*q^439 
+ (-4*zeta^11 + 8*zeta^9 + 4*zeta^8 + 12*zeta^6 - 4*zeta^4 + 4*zeta^3 + 4*zeta +
4)*q^440 + (98*zeta^11 - 196*zeta^9 + 56*zeta^8 - 140*zeta^6 + 98*zeta^4 - 
98*zeta^3 + 56*zeta - 98)*q^442 + (24*zeta^11 - 36*zeta^9 + 18*zeta^8 - 
18*zeta^6 + 24*zeta^4 - 12*zeta^3 + 18*zeta - 18)*q^443 + (8*zeta^11 - 40*zeta^8
- 40*zeta^6 + 8*zeta^4 + 8*zeta^3 - 40*zeta)*q^444 + (-26*zeta^11 - 6*zeta^8 - 
6*zeta^6 - 26*zeta^4 - 26*zeta^3 - 6*zeta)*q^445 + (-8*zeta^11 - 32*zeta^9 + 
16*zeta^8 - 16*zeta^6 - 8*zeta^4 - 40*zeta^3 + 16*zeta - 16)*q^446 + 
(-20*zeta^11 + 40*zeta^9 - 32*zeta^8 + 8*zeta^6 - 20*zeta^4 + 20*zeta^3 - 
32*zeta + 20)*q^447 + (-22*zeta^11 + 44*zeta^9 - 16*zeta^8 + 28*zeta^6 - 
22*zeta^4 + 22*zeta^3 - 16*zeta + 22)*q^449 + (12*zeta^11 + 28*zeta^9 - 
14*zeta^8 + 14*zeta^6 + 12*zeta^4 + 40*zeta^3 - 14*zeta + 14)*q^450 + 
(-4*zeta^11 - 8*zeta^8 - 8*zeta^6 - 4*zeta^4 - 4*zeta^3 - 8*zeta)*q^451 + 
(38*zeta^11 - 78*zeta^8 - 78*zeta^6 + 38*zeta^4 + 38*zeta^3 - 78*zeta)*q^452 + 
(48*zeta^9 - 24*zeta^8 + 24*zeta^6 + 48*zeta^3 - 24*zeta + 24)*q^453 + 
(-44*zeta^11 + 88*zeta^9 - 20*zeta^8 + 68*zeta^6 - 44*zeta^4 + 44*zeta^3 - 
20*zeta + 44)*q^454 + (-32*zeta^11 + 64*zeta^9 - 24*zeta^8 + 40*zeta^6 - 
32*zeta^4 + 32*zeta^3 - 24*zeta + 32)*q^456 + (36*zeta^9 - 18*zeta^8 + 18*zeta^6
+ 36*zeta^3 - 18*zeta + 18)*q^457 + (-10*zeta^11 + 24*zeta^8 + 24*zeta^6 - 
10*zeta^4 - 10*zeta^3 + 24*zeta)*q^458 + (-4*zeta^11 + 16*zeta^8 + 16*zeta^6 - 
4*zeta^4 - 4*zeta^3 + 16*zeta)*q^459 + (28*zeta^11 - 56*zeta^9 + 28*zeta^8 - 
28*zeta^6 + 28*zeta^4 - 28*zeta^3 + 28*zeta - 28)*q^460 + (20*zeta^11 - 
40*zeta^9 + 2*zeta^8 - 38*zeta^6 + 20*zeta^4 - 20*zeta^3 + 2*zeta - 20)*q^461 + 
(-28*zeta^11 + 56*zeta^9 - 32*zeta^8 + 24*zeta^6 - 28*zeta^4 + 28*zeta^3 - 
32*zeta + 28)*q^463 + (-12*zeta^11 + 24*zeta^9 - 12*zeta^8 + 12*zeta^6 - 
12*zeta^4 + 12*zeta^3 - 12*zeta + 12)*q^464 + (8*zeta^11 - 8*zeta^8 - 8*zeta^6 +
8*zeta^4 + 8*zeta^3 - 8*zeta)*q^465 + (-28*zeta^11 + 64*zeta^8 + 64*zeta^6 - 
28*zeta^4 - 28*zeta^3 + 64*zeta)*q^466 + (-28*zeta^11 - 40*zeta^9 + 20*zeta^8 - 
20*zeta^6 - 28*zeta^4 - 68*zeta^3 + 20*zeta - 20)*q^467 + (52*zeta^11 - 
104*zeta^9 + 36*zeta^8 - 68*zeta^6 + 52*zeta^4 - 52*zeta^3 + 36*zeta - 52)*q^468
+ (4*zeta^11 - 8*zeta^9 - 8*zeta^6 + 4*zeta^4 - 4*zeta^3 - 4)*q^470 + 
(12*zeta^11 + 64*zeta^9 - 32*zeta^8 + 32*zeta^6 + 12*zeta^4 + 76*zeta^3 - 
32*zeta + 32)*q^471 + (16*zeta^11 - 36*zeta^8 - 36*zeta^6 + 16*zeta^4 + 
16*zeta^3 - 36*zeta)*q^472 + (-16*zeta^8 - 16*zeta^6 - 16*zeta)*q^473 + 
(-16*zeta^11 - 16*zeta^4 - 16*zeta^3)*q^474 + (12*zeta^11 - 24*zeta^9 - 4*zeta^8
- 28*zeta^6 + 12*zeta^4 - 12*zeta^3 - 4*zeta - 12)*q^475 + (-4*zeta^11 + 
8*zeta^9 + 8*zeta^6 - 4*zeta^4 + 4*zeta^3 + 4)*q^477 + (-12*zeta^11 - 4*zeta^9 +
2*zeta^8 - 2*zeta^6 - 12*zeta^4 - 16*zeta^3 + 2*zeta - 2)*q^478 + (16*zeta^11 - 
36*zeta^8 - 36*zeta^6 + 16*zeta^4 + 16*zeta^3 - 36*zeta)*q^479 + (-16*zeta^11 - 
4*zeta^8 - 4*zeta^6 - 16*zeta^4 - 16*zeta^3 - 4*zeta)*q^480 + (8*zeta^11 + 
32*zeta^9 - 16*zeta^8 + 16*zeta^6 + 8*zeta^4 + 40*zeta^3 - 16*zeta + 16)*q^481 +
(-24*zeta^11 + 48*zeta^9 - 18*zeta^8 + 30*zeta^6 - 24*zeta^4 + 24*zeta^3 - 
18*zeta + 24)*q^482 + (35*zeta^11 - 70*zeta^9 + 28*zeta^8 - 42*zeta^6 + 
35*zeta^4 - 35*zeta^3 + 28*zeta - 35)*q^484 + (4*zeta^11 - 12*zeta^9 + 6*zeta^8 
- 6*zeta^6 + 4*zeta^4 - 8*zeta^3 + 6*zeta - 6)*q^485 + (2*zeta^11 - 6*zeta^8 - 
6*zeta^6 + 2*zeta^4 + 2*zeta^3 - 6*zeta)*q^486 + (4*zeta^11 + 28*zeta^8 + 
28*zeta^6 + 4*zeta^4 + 4*zeta^3 + 28*zeta)*q^487 + (-2*zeta^11 + 36*zeta^9 - 
18*zeta^8 + 18*zeta^6 - 2*zeta^4 + 34*zeta^3 - 18*zeta + 18)*q^488 + (32*zeta^11
- 64*zeta^9 + 32*zeta^8 - 32*zeta^6 + 32*zeta^4 - 32*zeta^3 + 32*zeta - 
32)*q^489 + (-46*zeta^11 + 92*zeta^9 - 24*zeta^8 + 68*zeta^6 - 46*zeta^4 + 
46*zeta^3 - 24*zeta + 46)*q^491 + (4*zeta^11 - 40*zeta^9 + 20*zeta^8 - 20*zeta^6
+ 4*zeta^4 - 36*zeta^3 + 20*zeta - 20)*q^492 + (4*zeta^11 + 12*zeta^8 + 
12*zeta^6 + 4*zeta^4 + 4*zeta^3 + 12*zeta)*q^493 + (-20*zeta^11 + 44*zeta^8 + 
44*zeta^6 - 20*zeta^4 - 20*zeta^3 + 44*zeta)*q^494 + (8*zeta^11 - 16*zeta^9 + 
8*zeta^8 - 8*zeta^6 + 8*zeta^4 - 8*zeta^3 + 8*zeta - 8)*q^495 + (24*zeta^11 - 
48*zeta^9 + 12*zeta^8 - 36*zeta^6 + 24*zeta^4 - 24*zeta^3 + 12*zeta - 24)*q^496 
+ (88*zeta^11 - 176*zeta^9 + 48*zeta^8 - 128*zeta^6 + 88*zeta^4 - 88*zeta^3 + 
48*zeta - 88)*q^498 + (16*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 + 16*zeta^4 
+ 32*zeta^3 - 8*zeta + 8)*q^499 + (-16*zeta^11 + 24*zeta^8 + 24*zeta^6 - 
16*zeta^4 - 16*zeta^3 + 24*zeta)*q^500 + (56*zeta^8 + 56*zeta^6 + 56*zeta)*q^501
+ (4*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 + 4*zeta^4 + 20*zeta^3 - 8*zeta +
8)*q^502 + (-10*zeta^11 + 20*zeta^9 + 20*zeta^6 - 10*zeta^4 + 10*zeta^3 + 
10)*q^505 + (-8*zeta^11 - 24*zeta^9 + 12*zeta^8 - 12*zeta^6 - 8*zeta^4 - 
32*zeta^3 + 12*zeta - 12)*q^506 + (-10*zeta^11 + 42*zeta^8 + 42*zeta^6 - 
10*zeta^4 - 10*zeta^3 + 42*zeta)*q^507 + (20*zeta^11 - 44*zeta^8 - 44*zeta^6 + 
20*zeta^4 + 20*zeta^3 - 44*zeta)*q^508 + (22*zeta^11 + 20*zeta^9 - 10*zeta^8 + 
10*zeta^6 + 22*zeta^4 + 42*zeta^3 - 10*zeta + 10)*q^509 + (-20*zeta^11 + 
40*zeta^9 - 8*zeta^8 + 32*zeta^6 - 20*zeta^4 + 20*zeta^3 - 8*zeta + 20)*q^510 + 
(-33*zeta^11 + 66*zeta^9 - 6*zeta^8 + 60*zeta^6 - 33*zeta^4 + 33*zeta^3 - 6*zeta
+ 33)*q^512 + (8*zeta^11 + 8*zeta^4 + 8*zeta^3)*q^513 + (28*zeta^11 - 54*zeta^8 
- 54*zeta^6 + 28*zeta^4 + 28*zeta^3 - 54*zeta)*q^514 + (4*zeta^11 + 12*zeta^8 + 
12*zeta^6 + 4*zeta^4 + 4*zeta^3 + 12*zeta)*q^515 + (-16*zeta^11 - 64*zeta^9 + 
32*zeta^8 - 32*zeta^6 - 16*zeta^4 - 80*zeta^3 + 32*zeta - 32)*q^516 + (8*zeta^11
- 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 8*zeta^4 - 8*zeta^3 + 8*zeta - 8)*q^517 + 
(8*zeta^11 - 16*zeta^9 - 20*zeta^8 - 36*zeta^6 + 8*zeta^4 - 8*zeta^3 - 20*zeta -
8)*q^519 + (28*zeta^9 - 14*zeta^8 + 14*zeta^6 + 28*zeta^3 - 14*zeta + 14)*q^520 
+ (-34*zeta^11 + 32*zeta^8 + 32*zeta^6 - 34*zeta^4 - 34*zeta^3 + 32*zeta)*q^521 
+ (8*zeta^8 + 8*zeta^6 + 8*zeta)*q^522 + (-8*zeta^11 + 40*zeta^9 - 20*zeta^8 + 
20*zeta^6 - 8*zeta^4 + 32*zeta^3 - 20*zeta + 20)*q^523 + (-28*zeta^11 + 
56*zeta^9 + 56*zeta^6 - 28*zeta^4 + 28*zeta^3 + 28)*q^524 + (-50*zeta^11 + 
100*zeta^9 - 28*zeta^8 + 72*zeta^6 - 50*zeta^4 + 50*zeta^3 - 28*zeta + 50)*q^526
+ (32*zeta^11 + 40*zeta^9 - 20*zeta^8 + 20*zeta^6 + 32*zeta^4 + 72*zeta^3 - 
20*zeta + 20)*q^527 + (12*zeta^11 - 12*zeta^8 - 12*zeta^6 + 12*zeta^4 + 
12*zeta^3 - 12*zeta)*q^528 + (13*zeta^11 + 19*zeta^8 + 19*zeta^6 + 13*zeta^4 + 
13*zeta^3 + 19*zeta)*q^529 + (-4*zeta^11 - 4*zeta^4 - 4*zeta^3)*q^530 + 
(-16*zeta^11 + 32*zeta^9 - 8*zeta^8 + 24*zeta^6 - 16*zeta^4 + 16*zeta^3 - 8*zeta
+ 16)*q^531 + (18*zeta^11 - 36*zeta^9 + 20*zeta^8 - 16*zeta^6 + 18*zeta^4 - 
18*zeta^3 + 20*zeta - 18)*q^533 + (28*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 
+ 28*zeta^4 + 44*zeta^3 - 8*zeta + 8)*q^534 + (-4*zeta^11 + 8*zeta^8 + 8*zeta^6 
- 4*zeta^4 - 4*zeta^3 + 8*zeta)*q^535 + (-8*zeta^11 + 32*zeta^8 + 32*zeta^6 - 
8*zeta^4 - 8*zeta^3 + 32*zeta)*q^536 + (16*zeta^11 - 56*zeta^9 + 28*zeta^8 - 
28*zeta^6 + 16*zeta^4 - 40*zeta^3 + 28*zeta - 28)*q^537 + (30*zeta^11 - 
60*zeta^9 + 14*zeta^8 - 46*zeta^6 + 30*zeta^4 - 30*zeta^3 + 14*zeta - 30)*q^538 
+ (8*zeta^11 - 16*zeta^9 + 12*zeta^8 - 4*zeta^6 + 8*zeta^4 - 8*zeta^3 + 12*zeta 
- 8)*q^540 + (16*zeta^11 - 12*zeta^9 + 6*zeta^8 - 6*zeta^6 + 16*zeta^4 + 
4*zeta^3 + 6*zeta - 6)*q^541 + (-24*zeta^11 + 52*zeta^8 + 52*zeta^6 - 24*zeta^4 
- 24*zeta^3 + 52*zeta)*q^542 + (8*zeta^11 - 12*zeta^8 - 12*zeta^6 + 8*zeta^4 + 
8*zeta^3 - 12*zeta)*q^543 + (-14*zeta^11 - 14*zeta^4 - 14*zeta^3)*q^544 + 
(-8*zeta^11 + 16*zeta^9 - 16*zeta^8 - 8*zeta^4 + 8*zeta^3 - 16*zeta + 8)*q^545 +
(-4*zeta^11 + 8*zeta^9 - 24*zeta^8 - 16*zeta^6 - 4*zeta^4 + 4*zeta^3 - 24*zeta +
4)*q^547 + (20*zeta^11 + 80*zeta^9 - 40*zeta^8 + 40*zeta^6 + 20*zeta^4 + 
100*zeta^3 - 40*zeta + 40)*q^548 + (-16*zeta^11 + 4*zeta^8 + 4*zeta^6 - 
16*zeta^4 - 16*zeta^3 + 4*zeta)*q^549 + (-14*zeta^11 + 26*zeta^8 + 26*zeta^6 - 
14*zeta^4 - 14*zeta^3 + 26*zeta)*q^550 + (16*zeta^11 - 16*zeta^9 + 8*zeta^8 - 
8*zeta^6 + 16*zeta^4 + 8*zeta - 8)*q^551 + (-44*zeta^11 + 88*zeta^9 - 40*zeta^8 
+ 48*zeta^6 - 44*zeta^4 + 44*zeta^3 - 40*zeta + 44)*q^552 + (38*zeta^11 - 
76*zeta^9 + 20*zeta^8 - 56*zeta^6 + 38*zeta^4 - 38*zeta^3 + 20*zeta - 38)*q^554 
+ (16*zeta^11 - 32*zeta^9 + 16*zeta^8 - 16*zeta^6 + 16*zeta^4 - 16*zeta^3 + 
16*zeta - 16)*q^555 + (4*zeta^11 + 36*zeta^8 + 36*zeta^6 + 4*zeta^4 + 4*zeta^3 +
36*zeta)*q^556 + (26*zeta^11 - 26*zeta^8 - 26*zeta^6 + 26*zeta^4 + 26*zeta^3 - 
26*zeta)*q^557 + (24*zeta^11 + 32*zeta^9 - 16*zeta^8 + 16*zeta^6 + 24*zeta^4 + 
56*zeta^3 - 16*zeta + 16)*q^558 + (40*zeta^11 - 80*zeta^9 + 32*zeta^8 - 
48*zeta^6 + 40*zeta^4 - 40*zeta^3 + 32*zeta - 40)*q^559 + (-32*zeta^11 + 
64*zeta^9 - 24*zeta^8 + 40*zeta^6 - 32*zeta^4 + 32*zeta^3 - 24*zeta + 32)*q^561 
+ (-28*zeta^11 - 40*zeta^9 + 20*zeta^8 - 20*zeta^6 - 28*zeta^4 - 68*zeta^3 + 
20*zeta - 20)*q^562 + (-4*zeta^11 + 8*zeta^8 + 8*zeta^6 - 4*zeta^4 - 4*zeta^3 + 
8*zeta)*q^563 + (-16*zeta^11 + 24*zeta^8 + 24*zeta^6 - 16*zeta^4 - 16*zeta^3 + 
24*zeta)*q^564 + (-20*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 - 20*zeta^4 - 
12*zeta^3 - 4*zeta + 4)*q^565 + (24*zeta^11 - 48*zeta^9 + 12*zeta^8 - 36*zeta^6 
+ 24*zeta^4 - 24*zeta^3 + 12*zeta - 24)*q^566 + (-74*zeta^11 + 148*zeta^9 - 
52*zeta^8 + 96*zeta^6 - 74*zeta^4 + 74*zeta^3 - 52*zeta + 74)*q^568 + 
(-12*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 12*zeta^4 + 4*zeta^3 - 8*zeta +
8)*q^569 + (8*zeta^11 - 8*zeta^8 - 8*zeta^6 + 8*zeta^4 + 8*zeta^3 - 
8*zeta)*q^570 + (28*zeta^11 - 36*zeta^8 - 36*zeta^6 + 28*zeta^4 + 28*zeta^3 - 
36*zeta)*q^571 + (36*zeta^11 + 32*zeta^9 - 16*zeta^8 + 16*zeta^6 + 36*zeta^4 + 
68*zeta^3 - 16*zeta + 16)*q^572 + (-36*zeta^11 + 72*zeta^9 + 72*zeta^6 - 
36*zeta^4 + 36*zeta^3 + 36)*q^573 + (10*zeta^11 - 20*zeta^9 - 24*zeta^8 - 
44*zeta^6 + 10*zeta^4 - 10*zeta^3 - 24*zeta - 10)*q^575 + (-8*zeta^11 - 
28*zeta^9 + 14*zeta^8 - 14*zeta^6 - 8*zeta^4 - 36*zeta^3 + 14*zeta - 14)*q^576 +
(-24*zeta^11 + 10*zeta^8 + 10*zeta^6 - 24*zeta^4 - 24*zeta^3 + 10*zeta)*q^577 + 
(-29*zeta^11 + 63*zeta^8 + 63*zeta^6 - 29*zeta^4 - 29*zeta^3 + 63*zeta)*q^578 + 
(-32*zeta^11 - 24*zeta^9 + 12*zeta^8 - 12*zeta^6 - 32*zeta^4 - 56*zeta^3 + 
12*zeta - 12)*q^579 + (12*zeta^11 - 24*zeta^9 + 32*zeta^8 + 8*zeta^6 + 12*zeta^4
- 12*zeta^3 + 32*zeta - 12)*q^580 + (-32*zeta^11 + 64*zeta^9 - 20*zeta^8 + 
44*zeta^6 - 32*zeta^4 + 32*zeta^3 - 20*zeta + 32)*q^582 + (-8*zeta^9 + 4*zeta^8 
- 4*zeta^6 - 8*zeta^3 + 4*zeta - 4)*q^583 + (2*zeta^11 - 36*zeta^8 - 36*zeta^6 +
2*zeta^4 + 2*zeta^3 - 36*zeta)*q^584 + (-12*zeta^11 + 4*zeta^8 + 4*zeta^6 - 
12*zeta^4 - 12*zeta^3 + 4*zeta)*q^585 + (38*zeta^11 + 40*zeta^9 - 20*zeta^8 + 
20*zeta^6 + 38*zeta^4 + 78*zeta^3 - 20*zeta + 20)*q^586 + (16*zeta^11 - 
32*zeta^9 - 4*zeta^8 - 36*zeta^6 + 16*zeta^4 - 16*zeta^3 - 4*zeta - 16)*q^587 + 
(24*zeta^11 - 48*zeta^9 + 16*zeta^8 - 32*zeta^6 + 24*zeta^4 - 24*zeta^3 + 
16*zeta - 24)*q^589 + (-8*zeta^11 - 8*zeta^9 + 4*zeta^8 - 4*zeta^6 - 8*zeta^4 - 
16*zeta^3 + 4*zeta - 4)*q^590 + (-4*zeta^11 + 4*zeta^8 + 4*zeta^6 - 4*zeta^4 - 
4*zeta^3 + 4*zeta)*q^591 + (-12*zeta^11 + 12*zeta^8 + 12*zeta^6 - 12*zeta^4 - 
12*zeta^3 + 12*zeta)*q^592 + (10*zeta^11 + 28*zeta^9 - 14*zeta^8 + 14*zeta^6 + 
10*zeta^4 + 38*zeta^3 - 14*zeta + 14)*q^593 + (12*zeta^11 - 24*zeta^9 + 8*zeta^8
- 16*zeta^6 + 12*zeta^4 - 12*zeta^3 + 8*zeta - 12)*q^594 + (18*zeta^11 - 
36*zeta^9 - 8*zeta^8 - 44*zeta^6 + 18*zeta^4 - 18*zeta^3 - 8*zeta - 18)*q^596 + 
(-16*zeta^11 + 64*zeta^9 - 32*zeta^8 + 32*zeta^6 - 16*zeta^4 + 48*zeta^3 - 
32*zeta + 32)*q^597 + (-28*zeta^11 + 56*zeta^8 + 56*zeta^6 - 28*zeta^4 - 
28*zeta^3 + 56*zeta)*q^598 + (-2*zeta^11 + 2*zeta^8 + 2*zeta^6 - 2*zeta^4 - 
2*zeta^3 + 2*zeta)*q^599 + (44*zeta^11 + 20*zeta^9 - 10*zeta^8 + 10*zeta^6 + 
44*zeta^4 + 64*zeta^3 - 10*zeta + 10)*q^600 + (-2*zeta^11 + 4*zeta^9 - 10*zeta^8
- 6*zeta^6 - 2*zeta^4 + 2*zeta^3 - 10*zeta + 2)*q^601 + (16*zeta^11 - 32*zeta^9 
+ 16*zeta^8 - 16*zeta^6 + 16*zeta^4 - 16*zeta^3 + 16*zeta - 16)*q^603 + 
(-48*zeta^11 - 24*zeta^9 + 12*zeta^8 - 12*zeta^6 - 48*zeta^4 - 72*zeta^3 + 
12*zeta - 12)*q^604 + (-14*zeta^11 - 14*zeta^4 - 14*zeta^3)*q^605 + (40*zeta^11 
- 100*zeta^8 - 100*zeta^6 + 40*zeta^4 + 40*zeta^3 - 100*zeta)*q^606 + (8*zeta^11
+ 48*zeta^9 - 24*zeta^8 + 24*zeta^6 + 8*zeta^4 + 56*zeta^3 - 24*zeta + 24)*q^607
+ (-8*zeta^11 + 16*zeta^9 - 12*zeta^8 + 4*zeta^6 - 8*zeta^4 + 8*zeta^3 - 12*zeta
+ 8)*q^608 + (10*zeta^11 - 20*zeta^9 + 16*zeta^8 - 4*zeta^6 + 10*zeta^4 - 
10*zeta^3 + 16*zeta - 10)*q^610 + (-16*zeta^11 - 8*zeta^9 + 4*zeta^8 - 4*zeta^6 
- 16*zeta^4 - 24*zeta^3 + 4*zeta - 4)*q^611 + (-28*zeta^11 + 56*zeta^8 + 
56*zeta^6 - 28*zeta^4 - 28*zeta^3 + 56*zeta)*q^612 + (16*zeta^11 - 32*zeta^8 - 
32*zeta^6 + 16*zeta^4 + 16*zeta^3 - 32*zeta)*q^613 + (12*zeta^11 - 8*zeta^9 + 
4*zeta^8 - 4*zeta^6 + 12*zeta^4 + 4*zeta^3 + 4*zeta - 4)*q^614 + (-12*zeta^11 + 
24*zeta^9 - 32*zeta^8 - 8*zeta^6 - 12*zeta^4 + 12*zeta^3 - 32*zeta + 12)*q^615 +
(4*zeta^11 - 8*zeta^9 - 12*zeta^8 - 20*zeta^6 + 4*zeta^4 - 4*zeta^3 - 12*zeta - 
4)*q^617 + (40*zeta^11 + 64*zeta^9 - 32*zeta^8 + 32*zeta^6 + 40*zeta^4 + 
104*zeta^3 - 32*zeta + 32)*q^618 + (12*zeta^11 + 12*zeta^8 + 12*zeta^6 + 
12*zeta^4 + 12*zeta^3 + 12*zeta)*q^619 + (-4*zeta^11 + 20*zeta^8 + 20*zeta^6 - 
4*zeta^4 - 4*zeta^3 + 20*zeta)*q^620 + (16*zeta^11 - 8*zeta^9 + 4*zeta^8 - 
4*zeta^6 + 16*zeta^4 + 8*zeta^3 + 4*zeta - 4)*q^621 + (-64*zeta^11 + 128*zeta^9 
- 36*zeta^8 + 92*zeta^6 - 64*zeta^4 + 64*zeta^3 - 36*zeta + 64)*q^622 + 
(36*zeta^11 - 72*zeta^9 + 12*zeta^8 - 60*zeta^6 + 36*zeta^4 - 36*zeta^3 + 
12*zeta - 36)*q^624 + (-24*zeta^11 - 6*zeta^9 + 3*zeta^8 - 3*zeta^6 - 24*zeta^4 
- 30*zeta^3 + 3*zeta - 3)*q^625 + (22*zeta^11 - 52*zeta^8 - 52*zeta^6 + 
22*zeta^4 + 22*zeta^3 - 52*zeta)*q^626 + (-16*zeta^8 - 16*zeta^6 - 
16*zeta)*q^627 + (-70*zeta^11 - 56*zeta^9 + 28*zeta^8 - 28*zeta^6 - 70*zeta^4 - 
126*zeta^3 + 28*zeta - 28)*q^628 + (32*zeta^11 - 64*zeta^9 + 24*zeta^8 - 
40*zeta^6 + 32*zeta^4 - 32*zeta^3 + 24*zeta - 32)*q^629 + (4*zeta^11 - 8*zeta^9 
+ 16*zeta^8 + 8*zeta^6 + 4*zeta^4 - 4*zeta^3 + 16*zeta - 4)*q^631 + (-8*zeta^11 
+ 32*zeta^9 - 16*zeta^8 + 16*zeta^6 - 8*zeta^4 + 24*zeta^3 - 16*zeta + 16)*q^632
+ (8*zeta^11 - 56*zeta^8 - 56*zeta^6 + 8*zeta^4 + 8*zeta^3 - 56*zeta)*q^633 + 
(-10*zeta^11 + 30*zeta^8 + 30*zeta^6 - 10*zeta^4 - 10*zeta^3 + 30*zeta)*q^634 + 
(-8*zeta^11 - 8*zeta^4 - 8*zeta^3)*q^635 + (-20*zeta^11 + 40*zeta^9 - 16*zeta^8 
+ 24*zeta^6 - 20*zeta^4 + 20*zeta^3 - 16*zeta + 20)*q^636 + (8*zeta^11 - 
16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 8*zeta^4 - 8*zeta^3 + 8*zeta - 8)*q^638 + 
(-32*zeta^11 - 8*zeta^9 + 4*zeta^8 - 4*zeta^6 - 32*zeta^4 - 40*zeta^3 + 4*zeta -
4)*q^639 + (-12*zeta^11 - 22*zeta^8 - 22*zeta^6 - 12*zeta^4 - 12*zeta^3 - 
22*zeta)*q^640 + (-8*zeta^11 + 4*zeta^8 + 4*zeta^6 - 8*zeta^4 - 8*zeta^3 + 
4*zeta)*q^641 + (40*zeta^11 + 56*zeta^9 - 28*zeta^8 + 28*zeta^6 + 40*zeta^4 + 
96*zeta^3 - 28*zeta + 28)*q^642 + (-68*zeta^11 + 136*zeta^9 - 60*zeta^8 + 
76*zeta^6 - 68*zeta^4 + 68*zeta^3 - 60*zeta + 68)*q^643 + (-16*zeta^11 + 
32*zeta^9 - 32*zeta^8 - 16*zeta^4 + 16*zeta^3 - 32*zeta + 16)*q^645 + 
(32*zeta^11 + 40*zeta^9 - 20*zeta^8 + 20*zeta^6 + 32*zeta^4 + 72*zeta^3 - 
20*zeta + 20)*q^646 + (24*zeta^11 - 20*zeta^8 - 20*zeta^6 + 24*zeta^4 + 
24*zeta^3 - 20*zeta)*q^647 + (6*zeta^11 - 10*zeta^8 - 10*zeta^6 + 6*zeta^4 + 
6*zeta^3 - 10*zeta)*q^648 + (-8*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 - 
8*zeta^4 - 24*zeta^3 + 8*zeta - 8)*q^649 + (-72*zeta^11 + 144*zeta^9 - 38*zeta^8
+ 106*zeta^6 - 72*zeta^4 + 72*zeta^3 - 38*zeta + 72)*q^650 + (-48*zeta^11 + 
96*zeta^9 - 16*zeta^8 + 80*zeta^6 - 48*zeta^4 + 48*zeta^3 - 16*zeta + 48)*q^652 
+ (12*zeta^11 - 56*zeta^9 + 28*zeta^8 - 28*zeta^6 + 12*zeta^4 - 44*zeta^3 + 
28*zeta - 28)*q^653 + (16*zeta^11 - 32*zeta^8 - 32*zeta^6 + 16*zeta^4 + 
16*zeta^3 - 32*zeta)*q^654 + (-24*zeta^11 - 16*zeta^8 - 16*zeta^6 - 24*zeta^4 - 
24*zeta^3 - 16*zeta)*q^655 + (18*zeta^11 - 12*zeta^9 + 6*zeta^8 - 6*zeta^6 + 
18*zeta^4 + 6*zeta^3 + 6*zeta - 6)*q^656 + (-20*zeta^11 + 40*zeta^9 - 28*zeta^8 
+ 12*zeta^6 - 20*zeta^4 + 20*zeta^3 - 28*zeta + 20)*q^657 + (18*zeta^11 - 
36*zeta^9 + 16*zeta^8 - 20*zeta^6 + 18*zeta^4 - 18*zeta^3 + 16*zeta - 18)*q^659 
+ (-24*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 24*zeta^4 - 8*zeta^3 - 8*zeta
+ 8)*q^660 + (-8*zeta^11 - 14*zeta^8 - 14*zeta^6 - 8*zeta^4 - 8*zeta^3 - 
14*zeta)*q^661 + (4*zeta^11 - 12*zeta^8 - 12*zeta^6 + 4*zeta^4 + 4*zeta^3 - 
12*zeta)*q^662 + (56*zeta^11 + 56*zeta^9 - 28*zeta^8 + 28*zeta^6 + 56*zeta^4 + 
112*zeta^3 - 28*zeta + 28)*q^663 + (-84*zeta^11 + 168*zeta^9 - 56*zeta^8 + 
112*zeta^6 - 84*zeta^4 + 84*zeta^3 - 56*zeta + 84)*q^664 + (24*zeta^11 - 
48*zeta^9 + 16*zeta^8 - 32*zeta^6 + 24*zeta^4 - 24*zeta^3 + 16*zeta - 24)*q^666 
+ (40*zeta^11 - 48*zeta^9 + 24*zeta^8 - 24*zeta^6 + 40*zeta^4 - 8*zeta^3 + 
24*zeta - 24)*q^667 + (56*zeta^11 - 84*zeta^8 - 84*zeta^6 + 56*zeta^4 + 
56*zeta^3 - 84*zeta)*q^668 + (-16*zeta^11 - 32*zeta^8 - 32*zeta^6 - 16*zeta^4 - 
16*zeta^3 - 32*zeta)*q^669 + (16*zeta^9 - 8*zeta^8 + 8*zeta^6 + 16*zeta^3 - 
8*zeta + 8)*q^670 + (4*zeta^11 - 8*zeta^9 - 12*zeta^8 - 20*zeta^6 + 4*zeta^4 - 
4*zeta^3 - 12*zeta - 4)*q^671 + (4*zeta^11 - 8*zeta^9 + 16*zeta^8 + 8*zeta^6 + 
4*zeta^4 - 4*zeta^3 + 16*zeta - 4)*q^673 + (-40*zeta^11 - 32*zeta^9 + 16*zeta^8 
- 16*zeta^6 - 40*zeta^4 - 72*zeta^3 + 16*zeta - 16)*q^674 + (-2*zeta^11 - 
14*zeta^8 - 14*zeta^6 - 2*zeta^4 - 2*zeta^3 - 14*zeta)*q^675 + (37*zeta^11 - 
73*zeta^8 - 73*zeta^6 + 37*zeta^4 + 37*zeta^3 - 73*zeta)*q^676 + (2*zeta^11 - 
60*zeta^9 + 30*zeta^8 - 30*zeta^6 + 2*zeta^4 - 58*zeta^3 + 30*zeta - 30)*q^677 +
(-100*zeta^11 + 200*zeta^9 - 56*zeta^8 + 144*zeta^6 - 100*zeta^4 + 100*zeta^3 - 
56*zeta + 100)*q^678 + (22*zeta^11 - 44*zeta^9 + 20*zeta^8 - 24*zeta^6 + 
22*zeta^4 - 22*zeta^3 + 20*zeta - 22)*q^680 + (-56*zeta^11 + 16*zeta^9 - 
8*zeta^8 + 8*zeta^6 - 56*zeta^4 - 40*zeta^3 - 8*zeta + 8)*q^681 + (-16*zeta^11 +
40*zeta^8 + 40*zeta^6 - 16*zeta^4 - 16*zeta^3 + 40*zeta)*q^682 + (-14*zeta^11 + 
6*zeta^8 + 6*zeta^6 - 14*zeta^4 - 14*zeta^3 + 6*zeta)*q^683 + (8*zeta^11 + 
32*zeta^9 - 16*zeta^8 + 16*zeta^6 + 8*zeta^4 + 40*zeta^3 - 16*zeta + 16)*q^684 +
(20*zeta^11 - 40*zeta^9 + 40*zeta^8 + 20*zeta^4 - 20*zeta^3 + 40*zeta - 
20)*q^685 + (20*zeta^11 - 40*zeta^9 + 12*zeta^8 - 28*zeta^6 + 20*zeta^4 - 
20*zeta^3 + 12*zeta - 20)*q^687 + (24*zeta^11 + 24*zeta^4 + 24*zeta^3)*q^688 + 
(-8*zeta^11 + 12*zeta^8 + 12*zeta^6 - 8*zeta^4 - 8*zeta^3 + 12*zeta)*q^689 + 
(16*zeta^11 - 8*zeta^8 - 8*zeta^6 + 16*zeta^4 + 16*zeta^3 - 8*zeta)*q^690 + 
(16*zeta^11 + 24*zeta^9 - 12*zeta^8 + 12*zeta^6 + 16*zeta^4 + 40*zeta^3 - 
12*zeta + 12)*q^691 + (-40*zeta^11 + 80*zeta^9 - 46*zeta^8 + 34*zeta^6 - 
40*zeta^4 + 40*zeta^3 - 46*zeta + 40)*q^692 + (34*zeta^11 - 68*zeta^9 + 
28*zeta^8 - 40*zeta^6 + 34*zeta^4 - 34*zeta^3 + 28*zeta - 34)*q^694 + 
(-40*zeta^11 + 64*zeta^9 - 32*zeta^8 + 32*zeta^6 - 40*zeta^4 + 24*zeta^3 - 
32*zeta + 32)*q^695 + (-16*zeta^11 + 8*zeta^8 + 8*zeta^6 - 16*zeta^4 - 16*zeta^3
+ 8*zeta)*q^696 + (-14*zeta^11 + 14*zeta^8 + 14*zeta^6 - 14*zeta^4 - 14*zeta^3 +
14*zeta)*q^697 + (14*zeta^11 + 28*zeta^9 - 14*zeta^8 + 14*zeta^6 + 14*zeta^4 + 
42*zeta^3 - 14*zeta + 14)*q^698 + (56*zeta^11 - 112*zeta^9 + 40*zeta^8 - 
72*zeta^6 + 56*zeta^4 - 56*zeta^3 + 40*zeta - 56)*q^699 + (24*zeta^11 - 
48*zeta^9 + 4*zeta^8 - 44*zeta^6 + 24*zeta^4 - 24*zeta^3 + 4*zeta - 24)*q^701 + 
(-20*zeta^11 - 24*zeta^9 + 12*zeta^8 - 12*zeta^6 - 20*zeta^4 - 44*zeta^3 + 
12*zeta - 12)*q^702 + (16*zeta^8 + 16*zeta^6 + 16*zeta)*q^703 + (14*zeta^11 - 
22*zeta^8 - 22*zeta^6 + 14*zeta^4 + 14*zeta^3 - 22*zeta)*q^704 + (16*zeta^11 - 
16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 16*zeta^4 + 8*zeta - 8)*q^705 + (30*zeta^11 - 
60*zeta^9 + 14*zeta^8 - 46*zeta^6 + 30*zeta^4 - 30*zeta^3 + 14*zeta - 30)*q^706 
+ (-64*zeta^11 + 128*zeta^9 - 40*zeta^8 + 88*zeta^6 - 64*zeta^4 + 64*zeta^3 - 
40*zeta + 64)*q^708 + (-40*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 40*zeta^4
- 24*zeta^3 - 8*zeta + 8)*q^709 + (16*zeta^11 - 20*zeta^8 - 20*zeta^6 + 
16*zeta^4 + 16*zeta^3 - 20*zeta)*q^710 + (-16*zeta^11 - 16*zeta^4 - 
16*zeta^3)*q^711 + (-2*zeta^11 - 48*zeta^9 + 24*zeta^8 - 24*zeta^6 - 2*zeta^4 - 
50*zeta^3 + 24*zeta - 24)*q^712 + (32*zeta^11 - 64*zeta^9 + 24*zeta^8 - 
40*zeta^6 + 32*zeta^4 - 32*zeta^3 + 24*zeta - 32)*q^713 + (4*zeta^11 - 8*zeta^9 
- 8*zeta^8 - 16*zeta^6 + 4*zeta^4 - 4*zeta^3 - 8*zeta - 4)*q^715 + (48*zeta^11 -
4*zeta^9 + 2*zeta^8 - 2*zeta^6 + 48*zeta^4 + 44*zeta^3 + 2*zeta - 2)*q^716 + 
(20*zeta^11 - 4*zeta^8 - 4*zeta^6 + 20*zeta^4 + 20*zeta^3 - 4*zeta)*q^717 + 
(14*zeta^11 - 34*zeta^8 - 34*zeta^6 + 14*zeta^4 + 14*zeta^3 - 34*zeta)*q^718 + 
(48*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 48*zeta^4 + 32*zeta^3 + 8*zeta -
8)*q^719 + (-12*zeta^8 - 12*zeta^6 - 12*zeta)*q^720 + (-33*zeta^11 + 66*zeta^9 -
22*zeta^8 + 44*zeta^6 - 33*zeta^4 + 33*zeta^3 - 22*zeta + 33)*q^722 + 
(12*zeta^11 - 48*zeta^9 + 24*zeta^8 - 24*zeta^6 + 12*zeta^4 - 36*zeta^3 + 
24*zeta - 24)*q^723 + (-8*zeta^11 + 26*zeta^8 + 26*zeta^6 - 8*zeta^4 - 8*zeta^3 
+ 26*zeta)*q^724 + (-20*zeta^11 - 16*zeta^8 - 16*zeta^6 - 20*zeta^4 - 20*zeta^3 
- 16*zeta)*q^725 + (28*zeta^11 + 28*zeta^9 - 14*zeta^8 + 14*zeta^6 + 28*zeta^4 +
56*zeta^3 - 14*zeta + 14)*q^726 + (8*zeta^11 - 16*zeta^9 + 12*zeta^8 - 4*zeta^6 
+ 8*zeta^4 - 8*zeta^3 + 12*zeta - 8)*q^727 + (2*zeta^11 - 4*zeta^9 - 4*zeta^6 + 
2*zeta^4 - 2*zeta^3 - 2)*q^729 + (8*zeta^11 - 28*zeta^9 + 14*zeta^8 - 14*zeta^6 
+ 8*zeta^4 - 20*zeta^3 + 14*zeta - 14)*q^730 + (-24*zeta^11 + 40*zeta^8 + 
40*zeta^6 - 24*zeta^4 - 24*zeta^3 + 40*zeta)*q^731 + (8*zeta^11 + 44*zeta^8 + 
44*zeta^6 + 8*zeta^4 + 8*zeta^3 + 44*zeta)*q^732 + (42*zeta^11 - 40*zeta^9 + 
20*zeta^8 - 20*zeta^6 + 42*zeta^4 + 2*zeta^3 + 20*zeta - 20)*q^733 + (56*zeta^11
- 112*zeta^9 + 32*zeta^8 - 80*zeta^6 + 56*zeta^4 - 56*zeta^3 + 32*zeta - 
56)*q^734 + (-14*zeta^11 + 28*zeta^9 - 28*zeta^8 - 14*zeta^4 + 14*zeta^3 - 
28*zeta + 14)*q^736 + (16*zeta^11 + 16*zeta^4 + 16*zeta^3)*q^737 + (-8*zeta^11 +
12*zeta^8 + 12*zeta^6 - 8*zeta^4 - 8*zeta^3 + 12*zeta)*q^738 + (16*zeta^11 - 
32*zeta^8 - 32*zeta^6 + 16*zeta^4 + 16*zeta^3 - 32*zeta)*q^739 + (24*zeta^11 - 
16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 24*zeta^4 + 8*zeta^3 + 8*zeta - 8)*q^740 + 
(40*zeta^11 - 80*zeta^9 + 32*zeta^8 - 48*zeta^6 + 40*zeta^4 - 40*zeta^3 + 
32*zeta - 40)*q^741 + (10*zeta^11 - 20*zeta^9 - 24*zeta^8 - 44*zeta^6 + 
10*zeta^4 - 10*zeta^3 - 24*zeta - 10)*q^743 + (40*zeta^11 + 64*zeta^9 - 
32*zeta^8 + 32*zeta^6 + 40*zeta^4 + 104*zeta^3 - 32*zeta + 32)*q^744 + 
(28*zeta^11 + 16*zeta^8 + 16*zeta^6 + 28*zeta^4 + 28*zeta^3 + 16*zeta)*q^745 + 
(38*zeta^11 - 98*zeta^8 - 98*zeta^6 + 38*zeta^4 + 38*zeta^3 - 98*zeta)*q^746 + 
(-32*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 - 32*zeta^4 - 48*zeta^3 + 8*zeta 
- 8)*q^747 + (56*zeta^11 - 112*zeta^9 + 28*zeta^8 - 84*zeta^6 + 56*zeta^4 - 
56*zeta^3 + 28*zeta - 56)*q^748 + (32*zeta^11 - 64*zeta^9 + 16*zeta^8 - 
48*zeta^6 + 32*zeta^4 - 32*zeta^3 + 16*zeta - 32)*q^750 + (8*zeta^11 - 16*zeta^9
+ 8*zeta^8 - 8*zeta^6 + 8*zeta^4 - 8*zeta^3 + 8*zeta - 8)*q^751 + (-12*zeta^8 - 
12*zeta^6 - 12*zeta)*q^752 + (8*zeta^11 + 16*zeta^8 + 16*zeta^6 + 8*zeta^4 + 
8*zeta^3 + 16*zeta)*q^753 + (-16*zeta^11 - 8*zeta^9 + 4*zeta^8 - 4*zeta^6 - 
16*zeta^4 - 24*zeta^3 + 4*zeta - 4)*q^754 + (24*zeta^8 + 24*zeta^6 + 
24*zeta)*q^755 + (-40*zeta^11 + 80*zeta^9 - 8*zeta^8 + 72*zeta^6 - 40*zeta^4 + 
40*zeta^3 - 8*zeta + 40)*q^757 + (56*zeta^11 + 72*zeta^9 - 36*zeta^8 + 36*zeta^6
+ 56*zeta^4 + 128*zeta^3 - 36*zeta + 36)*q^758 + (-8*zeta^11 - 24*zeta^8 - 
24*zeta^6 - 8*zeta^4 - 8*zeta^3 - 24*zeta)*q^759 + (4*zeta^11 + 12*zeta^8 + 
12*zeta^6 + 4*zeta^4 + 4*zeta^3 + 12*zeta)*q^760 + (-46*zeta^11 - 28*zeta^9 + 
14*zeta^8 - 14*zeta^6 - 46*zeta^4 - 74*zeta^3 + 14*zeta - 14)*q^761 + 
(-56*zeta^11 + 112*zeta^9 - 32*zeta^8 + 80*zeta^6 - 56*zeta^4 + 56*zeta^3 - 
32*zeta + 56)*q^762 + (90*zeta^11 - 180*zeta^9 + 72*zeta^8 - 108*zeta^6 + 
90*zeta^4 - 90*zeta^3 + 72*zeta - 90)*q^764 + (16*zeta^11 - 8*zeta^9 + 4*zeta^8 
- 4*zeta^6 + 16*zeta^4 + 8*zeta^3 + 4*zeta - 4)*q^765 + (32*zeta^11 - 88*zeta^8 
- 88*zeta^6 + 32*zeta^4 + 32*zeta^3 - 88*zeta)*q^766 + (-20*zeta^11 + 44*zeta^8 
+ 44*zeta^6 - 20*zeta^4 - 20*zeta^3 + 44*zeta)*q^767 + (-48*zeta^11 - 52*zeta^9 
+ 26*zeta^8 - 26*zeta^6 - 48*zeta^4 - 100*zeta^3 + 26*zeta - 26)*q^768 + 
(42*zeta^11 - 84*zeta^9 + 42*zeta^8 - 42*zeta^6 + 42*zeta^4 - 42*zeta^3 + 
42*zeta - 42)*q^769 + (-56*zeta^11 + 112*zeta^9 - 60*zeta^8 + 52*zeta^6 - 
56*zeta^4 + 56*zeta^3 - 60*zeta + 56)*q^771 + (40*zeta^11 + 76*zeta^9 - 
38*zeta^8 + 38*zeta^6 + 40*zeta^4 + 116*zeta^3 - 38*zeta + 38)*q^772 + 
(6*zeta^11 - 28*zeta^8 - 28*zeta^6 + 6*zeta^4 + 6*zeta^3 - 28*zeta)*q^773 + 
(-16*zeta^11 + 32*zeta^8 + 32*zeta^6 - 16*zeta^4 - 16*zeta^3 + 32*zeta)*q^774 + 
(-28*zeta^11 - 24*zeta^9 + 12*zeta^8 - 12*zeta^6 - 28*zeta^4 - 52*zeta^3 + 
12*zeta - 12)*q^775 + (28*zeta^11 - 56*zeta^9 + 14*zeta^8 - 42*zeta^6 + 
28*zeta^4 - 28*zeta^3 + 14*zeta - 28)*q^776 + (28*zeta^11 - 56*zeta^9 + 
12*zeta^8 - 44*zeta^6 + 28*zeta^4 - 28*zeta^3 + 12*zeta - 28)*q^778 + 
(-8*zeta^11 + 24*zeta^9 - 12*zeta^8 + 12*zeta^6 - 8*zeta^4 + 16*zeta^3 - 12*zeta
+ 12)*q^779 + (4*zeta^11 + 36*zeta^8 + 36*zeta^6 + 4*zeta^4 + 4*zeta^3 + 
36*zeta)*q^780 + (4*zeta^11 - 36*zeta^8 - 36*zeta^6 + 4*zeta^4 + 4*zeta^3 - 
36*zeta)*q^781 + (44*zeta^11 + 48*zeta^9 - 24*zeta^8 + 24*zeta^6 + 44*zeta^4 + 
92*zeta^3 - 24*zeta + 24)*q^782 + (8*zeta^8 + 8*zeta^6 + 8*zeta)*q^783 + 
(-6*zeta^11 + 12*zeta^9 + 20*zeta^8 + 32*zeta^6 - 6*zeta^4 + 6*zeta^3 + 20*zeta 
+ 6)*q^785 + (-16*zeta^11 - 48*zeta^9 + 24*zeta^8 - 24*zeta^6 - 16*zeta^4 - 
64*zeta^3 + 24*zeta - 24)*q^786 + (36*zeta^11 - 52*zeta^8 - 52*zeta^6 + 
36*zeta^4 + 36*zeta^3 - 52*zeta)*q^787 + (2*zeta^11 - 10*zeta^8 - 10*zeta^6 + 
2*zeta^4 + 2*zeta^3 - 10*zeta)*q^788 + (-32*zeta^11 - 24*zeta^9 + 12*zeta^8 - 
12*zeta^6 - 32*zeta^4 - 56*zeta^3 + 12*zeta - 12)*q^789 + (8*zeta^11 - 16*zeta^9
+ 16*zeta^8 + 8*zeta^4 - 8*zeta^3 + 16*zeta - 8)*q^790 + (20*zeta^11 - 40*zeta^9
+ 8*zeta^8 - 32*zeta^6 + 20*zeta^4 - 20*zeta^3 + 8*zeta - 20)*q^792 + (8*zeta^11
- 52*zeta^9 + 26*zeta^8 - 26*zeta^6 + 8*zeta^4 - 44*zeta^3 + 26*zeta - 26)*q^793
+ (-42*zeta^11 + 100*zeta^8 + 100*zeta^6 - 42*zeta^4 - 42*zeta^3 + 
100*zeta)*q^794 + (8*zeta^11 + 8*zeta^4 + 8*zeta^3)*q^795 + (-56*zeta^11 - 
56*zeta^4 - 56*zeta^3)*q^796 + (-36*zeta^11 + 72*zeta^9 - 26*zeta^8 + 46*zeta^6 
- 36*zeta^4 + 36*zeta^3 - 26*zeta + 36)*q^797 + (-20*zeta^11 + 40*zeta^9 - 
8*zeta^8 + 32*zeta^6 - 20*zeta^4 + 20*zeta^3 - 8*zeta + 20)*q^799 + (26*zeta^11 
- 22*zeta^9 + 11*zeta^8 - 11*zeta^6 + 26*zeta^4 + 4*zeta^3 + 11*zeta - 11)*q^800
+ (20*zeta^11 - 8*zeta^8 - 8*zeta^6 + 20*zeta^4 + 20*zeta^3 - 8*zeta)*q^801 + 
(-28*zeta^11 + 64*zeta^8 + 64*zeta^6 - 28*zeta^4 - 28*zeta^3 + 64*zeta)*q^802 + 
(-28*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 28*zeta^4 - 12*zeta^3 - 8*zeta 
+ 8)*q^803 + (48*zeta^11 - 96*zeta^9 + 16*zeta^8 - 80*zeta^6 + 48*zeta^4 - 
48*zeta^3 + 16*zeta - 48)*q^804 + (-108*zeta^11 + 216*zeta^9 - 64*zeta^8 + 
152*zeta^6 - 108*zeta^4 + 108*zeta^3 - 64*zeta + 108)*q^806 + (36*zeta^11 - 
8*zeta^9 + 4*zeta^8 - 4*zeta^6 + 36*zeta^4 + 28*zeta^3 + 4*zeta - 4)*q^807 + 
(-40*zeta^11 + 90*zeta^8 + 90*zeta^6 - 40*zeta^4 - 40*zeta^3 + 90*zeta)*q^808 + 
(-14*zeta^11 + 62*zeta^8 + 62*zeta^6 - 14*zeta^4 - 14*zeta^3 + 62*zeta)*q^809 + 
(-4*zeta^11 - 4*zeta^4 - 4*zeta^3)*q^810 + (4*zeta^11 - 8*zeta^9 - 8*zeta^8 - 
16*zeta^6 + 4*zeta^4 - 4*zeta^3 - 8*zeta - 4)*q^811 + (48*zeta^11 - 96*zeta^9 + 
40*zeta^8 - 56*zeta^6 + 48*zeta^4 - 48*zeta^3 + 40*zeta - 48)*q^813 + 
(16*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 + 16*zeta^4 + 32*zeta^3 - 8*zeta +
8)*q^814 + (-16*zeta^11 - 16*zeta^8 - 16*zeta^6 - 16*zeta^4 - 16*zeta^3 - 
16*zeta)*q^815 + (-12*zeta^11 + 48*zeta^8 + 48*zeta^6 - 12*zeta^4 - 12*zeta^3 + 
48*zeta)*q^816 + (32*zeta^9 - 16*zeta^8 + 16*zeta^6 + 32*zeta^3 - 16*zeta + 
16)*q^817 + (-56*zeta^11 + 112*zeta^9 - 38*zeta^8 + 74*zeta^6 - 56*zeta^4 + 
56*zeta^3 - 38*zeta + 56)*q^818 + (-2*zeta^11 + 4*zeta^9 - 24*zeta^8 - 20*zeta^6
- 2*zeta^4 + 2*zeta^3 - 24*zeta + 2)*q^820 + (16*zeta^11 + 44*zeta^9 - 22*zeta^8
+ 22*zeta^6 + 16*zeta^4 + 60*zeta^3 - 22*zeta + 22)*q^821 + (-40*zeta^11 + 
80*zeta^8 + 80*zeta^6 - 40*zeta^4 - 40*zeta^3 + 80*zeta)*q^822 + (-8*zeta^11 + 
32*zeta^8 + 32*zeta^6 - 8*zeta^4 - 8*zeta^3 + 32*zeta)*q^823 + (-44*zeta^11 - 
48*zeta^9 + 24*zeta^8 - 24*zeta^6 - 44*zeta^4 - 92*zeta^3 + 24*zeta - 24)*q^824 
+ (28*zeta^11 - 56*zeta^9 + 32*zeta^8 - 24*zeta^6 + 28*zeta^4 - 28*zeta^3 + 
32*zeta - 28)*q^825 + (-34*zeta^11 + 68*zeta^9 + 8*zeta^8 + 76*zeta^6 - 
34*zeta^4 + 34*zeta^3 + 8*zeta + 34)*q^827 + (56*zeta^9 - 28*zeta^8 + 28*zeta^6 
+ 56*zeta^3 - 28*zeta + 28)*q^828 + (12*zeta^11 - 30*zeta^8 - 30*zeta^6 + 
12*zeta^4 + 12*zeta^3 - 30*zeta)*q^829 + (16*zeta^11 - 24*zeta^8 - 24*zeta^6 + 
16*zeta^4 + 16*zeta^3 - 24*zeta)*q^830 + (32*zeta^11 + 8*zeta^9 - 4*zeta^8 + 
4*zeta^6 + 32*zeta^4 + 40*zeta^3 - 4*zeta + 4)*q^831 + (62*zeta^11 - 124*zeta^9 
+ 30*zeta^8 - 94*zeta^6 + 62*zeta^4 - 62*zeta^3 + 30*zeta - 62)*q^832 + 
(40*zeta^11 - 80*zeta^9 + 32*zeta^8 - 48*zeta^6 + 40*zeta^4 - 40*zeta^3 + 
32*zeta - 40)*q^834 + (-56*zeta^11 + 56*zeta^9 - 28*zeta^8 + 28*zeta^6 - 
56*zeta^4 - 28*zeta + 28)*q^835 + (-16*zeta^11 + 24*zeta^8 + 24*zeta^6 - 
16*zeta^4 - 16*zeta^3 + 24*zeta)*q^836 + (8*zeta^11 - 16*zeta^8 - 16*zeta^6 + 
8*zeta^4 + 8*zeta^3 - 16*zeta)*q^837 + (76*zeta^11 + 80*zeta^9 - 40*zeta^8 + 
40*zeta^6 + 76*zeta^4 + 156*zeta^3 - 40*zeta + 40)*q^838 + (-44*zeta^11 + 
88*zeta^9 + 4*zeta^8 + 92*zeta^6 - 44*zeta^4 + 44*zeta^3 + 4*zeta + 44)*q^839 + 
(37*zeta^11 - 74*zeta^9 + 32*zeta^8 - 42*zeta^6 + 37*zeta^4 - 37*zeta^3 + 
32*zeta - 37)*q^841 + (-44*zeta^11 - 76*zeta^9 + 38*zeta^8 - 38*zeta^6 - 
44*zeta^4 - 120*zeta^3 + 38*zeta - 38)*q^842 + (16*zeta^11 - 40*zeta^8 - 
40*zeta^6 + 16*zeta^4 + 16*zeta^3 - 40*zeta)*q^843 + (-52*zeta^11 + 92*zeta^8 + 
92*zeta^6 - 52*zeta^4 - 52*zeta^3 + 92*zeta)*q^844 + (-22*zeta^11 + 12*zeta^9 - 
6*zeta^8 + 6*zeta^6 - 22*zeta^4 - 10*zeta^3 - 6*zeta + 6)*q^845 + (-16*zeta^11 +
32*zeta^9 - 8*zeta^8 + 24*zeta^6 - 16*zeta^4 + 16*zeta^3 - 8*zeta + 16)*q^846 + 
(6*zeta^11 - 12*zeta^9 - 12*zeta^6 + 6*zeta^4 - 6*zeta^3 - 6)*q^848 + 
(24*zeta^11 + 24*zeta^4 + 24*zeta^3)*q^849 + (32*zeta^11 - 86*zeta^8 - 86*zeta^6
+ 32*zeta^4 + 32*zeta^3 - 86*zeta)*q^850 + (8*zeta^11 + 24*zeta^8 + 24*zeta^6 + 
8*zeta^4 + 8*zeta^3 + 24*zeta)*q^851 + (-48*zeta^11 - 136*zeta^9 + 68*zeta^8 - 
68*zeta^6 - 48*zeta^4 - 184*zeta^3 + 68*zeta - 68)*q^852 + (-70*zeta^11 + 
140*zeta^9 - 70*zeta^8 + 70*zeta^6 - 70*zeta^4 + 70*zeta^3 - 70*zeta + 70)*q^853
+ (8*zeta^11 - 16*zeta^9 + 16*zeta^8 + 8*zeta^4 - 8*zeta^3 + 16*zeta - 8)*q^855 
+ (-36*zeta^11 - 52*zeta^9 + 26*zeta^8 - 26*zeta^6 - 36*zeta^4 - 88*zeta^3 + 
26*zeta - 26)*q^856 + (14*zeta^11 - 12*zeta^8 - 12*zeta^6 + 14*zeta^4 + 
14*zeta^3 - 12*zeta)*q^857 + (-24*zeta^11 + 64*zeta^8 + 64*zeta^6 - 24*zeta^4 - 
24*zeta^3 + 64*zeta)*q^858 + (36*zeta^11 - 64*zeta^9 + 32*zeta^8 - 32*zeta^6 + 
36*zeta^4 - 28*zeta^3 + 32*zeta - 32)*q^859 + (8*zeta^11 - 16*zeta^9 - 16*zeta^8
- 32*zeta^6 + 8*zeta^4 - 8*zeta^3 - 16*zeta - 8)*q^860 + (18*zeta^11 - 36*zeta^9
+ 4*zeta^8 - 32*zeta^6 + 18*zeta^4 - 18*zeta^3 + 4*zeta - 18)*q^862 + 
(16*zeta^11 - 12*zeta^9 + 6*zeta^8 - 6*zeta^6 + 16*zeta^4 + 4*zeta^3 + 6*zeta - 
6)*q^863 + (-6*zeta^11 + 2*zeta^8 + 2*zeta^6 - 6*zeta^4 - 6*zeta^3 + 
2*zeta)*q^864 + (38*zeta^11 + 10*zeta^8 + 10*zeta^6 + 38*zeta^4 + 38*zeta^3 + 
10*zeta)*q^865 + (-26*zeta^11 - 20*zeta^9 + 10*zeta^8 - 10*zeta^6 - 26*zeta^4 - 
46*zeta^3 + 10*zeta - 10)*q^866 + (58*zeta^11 - 116*zeta^9 + 48*zeta^8 - 
68*zeta^6 + 58*zeta^4 - 58*zeta^3 + 48*zeta - 58)*q^867 + (-16*zeta^8 - 
16*zeta^6 - 16*zeta)*q^869 + (16*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 
16*zeta^4 + 8*zeta - 8)*q^870 + (8*zeta^11 - 40*zeta^8 - 40*zeta^6 + 8*zeta^4 + 
8*zeta^3 - 40*zeta)*q^871 + (-8*zeta^11 + 32*zeta^8 + 32*zeta^6 - 8*zeta^4 - 
8*zeta^3 + 32*zeta)*q^872 + (4*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 + 
4*zeta^4 + 20*zeta^3 - 8*zeta + 8)*q^873 + (32*zeta^11 - 64*zeta^9 + 24*zeta^8 -
40*zeta^6 + 32*zeta^4 - 32*zeta^3 + 24*zeta - 32)*q^874 + (-44*zeta^11 + 
88*zeta^9 + 4*zeta^8 + 92*zeta^6 - 44*zeta^4 + 44*zeta^3 + 4*zeta + 44)*q^876 + 
(-16*zeta^11 - 16*zeta^4 - 16*zeta^3)*q^877 + (-40*zeta^11 + 104*zeta^8 + 
104*zeta^6 - 40*zeta^4 - 40*zeta^3 + 104*zeta)*q^878 + (-36*zeta^11 + 40*zeta^8 
+ 40*zeta^6 - 36*zeta^4 - 36*zeta^3 + 40*zeta)*q^879 + (-12*zeta^11 + 24*zeta^9 
- 12*zeta^8 + 12*zeta^6 - 12*zeta^4 + 12*zeta^3 - 12*zeta + 12)*q^880 + 
(-32*zeta^11 + 64*zeta^9 - 6*zeta^8 + 58*zeta^6 - 32*zeta^4 + 32*zeta^3 - 6*zeta
+ 32)*q^881 + (32*zeta^11 - 64*zeta^9 + 16*zeta^8 - 48*zeta^6 + 32*zeta^4 - 
32*zeta^3 + 16*zeta - 32)*q^883 + (-84*zeta^11 - 140*zeta^9 + 70*zeta^8 - 
70*zeta^6 - 84*zeta^4 - 224*zeta^3 + 70*zeta - 70)*q^884 + (8*zeta^11 - 8*zeta^8
- 8*zeta^6 + 8*zeta^4 + 8*zeta^3 - 8*zeta)*q^885 + (6*zeta^11 + 6*zeta^8 + 
6*zeta^6 + 6*zeta^4 + 6*zeta^3 + 6*zeta)*q^886 + (-4*zeta^11 - 4*zeta^4 - 
4*zeta^3)*q^887 + (40*zeta^11 - 80*zeta^9 + 16*zeta^8 - 64*zeta^6 + 40*zeta^4 - 
40*zeta^3 + 16*zeta - 40)*q^888 + (-14*zeta^11 + 28*zeta^9 - 20*zeta^8 + 
8*zeta^6 - 14*zeta^4 + 14*zeta^3 - 20*zeta + 14)*q^890 + (-8*zeta^9 + 4*zeta^8 -
4*zeta^6 - 8*zeta^3 + 4*zeta - 4)*q^891 + (-40*zeta^11 + 32*zeta^8 + 32*zeta^6 -
40*zeta^4 - 40*zeta^3 + 32*zeta)*q^892 + (8*zeta^11 - 8*zeta^8 - 8*zeta^6 + 
8*zeta^4 + 8*zeta^3 - 8*zeta)*q^893 + (8*zeta^11 + 40*zeta^9 - 20*zeta^8 + 
20*zeta^6 + 8*zeta^4 + 48*zeta^3 - 20*zeta + 20)*q^894 + (-8*zeta^11 + 16*zeta^9
- 44*zeta^8 - 28*zeta^6 - 8*zeta^4 + 8*zeta^3 - 44*zeta + 8)*q^895 + (56*zeta^11
- 112*zeta^9 + 56*zeta^8 - 56*zeta^6 + 56*zeta^4 - 56*zeta^3 + 56*zeta - 
56)*q^897 + (28*zeta^11 + 44*zeta^9 - 22*zeta^8 + 22*zeta^6 + 28*zeta^4 + 
72*zeta^3 - 22*zeta + 22)*q^898 + (8*zeta^11 - 8*zeta^8 - 8*zeta^6 + 8*zeta^4 + 
8*zeta^3 - 8*zeta)*q^899 + (30*zeta^11 - 38*zeta^8 - 38*zeta^6 + 30*zeta^4 + 
30*zeta^3 - 38*zeta)*q^900 + (12*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 + 
12*zeta^4 + 20*zeta^3 - 4*zeta + 4)*q^901 + (12*zeta^11 - 24*zeta^9 + 4*zeta^8 -
20*zeta^6 + 12*zeta^4 - 12*zeta^3 + 4*zeta - 12)*q^902 + (94*zeta^11 - 
188*zeta^9 + 60*zeta^8 - 128*zeta^6 + 94*zeta^4 - 94*zeta^3 + 60*zeta - 
94)*q^904 + (-4*zeta^11 + 12*zeta^9 - 6*zeta^8 + 6*zeta^6 - 4*zeta^4 + 8*zeta^3 
- 6*zeta + 6)*q^905 + (24*zeta^11 - 72*zeta^8 - 72*zeta^6 + 24*zeta^4 + 
24*zeta^3 - 72*zeta)*q^906 + (-16*zeta^11 + 16*zeta^8 + 16*zeta^6 - 16*zeta^4 - 
16*zeta^3 + 16*zeta)*q^907 + (12*zeta^11 + 104*zeta^9 - 52*zeta^8 + 52*zeta^6 + 
12*zeta^4 + 116*zeta^3 - 52*zeta + 52)*q^908 + (40*zeta^11 - 80*zeta^9 + 
20*zeta^8 - 60*zeta^6 + 40*zeta^4 - 40*zeta^3 + 20*zeta - 40)*q^909 + 
(42*zeta^11 - 84*zeta^9 + 24*zeta^8 - 60*zeta^6 + 42*zeta^4 - 42*zeta^3 + 
24*zeta - 42)*q^911 + (24*zeta^11 + 24*zeta^4 + 24*zeta^3)*q^912 + (8*zeta^11 - 
40*zeta^8 - 40*zeta^6 + 8*zeta^4 + 8*zeta^3 - 40*zeta)*q^913 + (18*zeta^11 - 
54*zeta^8 - 54*zeta^6 + 18*zeta^4 + 18*zeta^3 - 54*zeta)*q^914 + (-56*zeta^11 + 
88*zeta^9 - 44*zeta^8 + 44*zeta^6 - 56*zeta^4 + 32*zeta^3 - 44*zeta + 44)*q^915 
+ (-38*zeta^11 + 76*zeta^9 - 22*zeta^8 + 54*zeta^6 - 38*zeta^4 + 38*zeta^3 - 
22*zeta + 38)*q^916 + (-36*zeta^11 + 72*zeta^9 - 20*zeta^8 + 52*zeta^6 - 
36*zeta^4 + 36*zeta^3 - 20*zeta + 36)*q^918 + (-40*zeta^11 - 40*zeta^9 + 
20*zeta^8 - 20*zeta^6 - 40*zeta^4 - 80*zeta^3 + 20*zeta - 20)*q^919 + 
(16*zeta^11 + 20*zeta^8 + 20*zeta^6 + 16*zeta^4 + 16*zeta^3 + 20*zeta)*q^920 + 
(-32*zeta^11 - 8*zeta^8 - 8*zeta^6 - 32*zeta^4 - 32*zeta^3 - 8*zeta)*q^921 + 
(-38*zeta^11 - 40*zeta^9 + 20*zeta^8 - 20*zeta^6 - 38*zeta^4 - 78*zeta^3 + 
20*zeta - 20)*q^922 + (92*zeta^11 - 184*zeta^9 + 68*zeta^8 - 116*zeta^6 + 
92*zeta^4 - 92*zeta^3 + 68*zeta - 92)*q^923 + (-28*zeta^11 + 56*zeta^9 - 
32*zeta^8 + 24*zeta^6 - 28*zeta^4 + 28*zeta^3 - 32*zeta + 28)*q^925 + 
(24*zeta^11 + 56*zeta^9 - 28*zeta^8 + 28*zeta^6 + 24*zeta^4 + 80*zeta^3 - 
28*zeta + 28)*q^926 + (8*zeta^11 - 32*zeta^8 - 32*zeta^6 + 8*zeta^4 + 8*zeta^3 -
32*zeta)*q^927 + (-16*zeta^11 - 4*zeta^8 - 4*zeta^6 - 16*zeta^4 - 16*zeta^3 - 
4*zeta)*q^928 + (-30*zeta^11 + 36*zeta^9 - 18*zeta^8 + 18*zeta^6 - 30*zeta^4 + 
6*zeta^3 - 18*zeta + 18)*q^929 + (24*zeta^11 - 48*zeta^9 + 16*zeta^8 - 32*zeta^6
+ 24*zeta^4 - 24*zeta^3 + 16*zeta - 24)*q^930 + (-100*zeta^11 + 200*zeta^9 - 
52*zeta^8 + 148*zeta^6 - 100*zeta^4 + 100*zeta^3 - 52*zeta + 100)*q^932 + 
(-40*zeta^11 - 32*zeta^9 + 16*zeta^8 - 16*zeta^6 - 40*zeta^4 - 72*zeta^3 + 
16*zeta - 16)*q^933 + (-48*zeta^11 + 116*zeta^8 + 116*zeta^6 - 48*zeta^4 - 
48*zeta^3 + 116*zeta)*q^934 + (4*zeta^11 + 12*zeta^8 + 12*zeta^6 + 4*zeta^4 + 
4*zeta^3 + 12*zeta)*q^935 + (-28*zeta^11 - 56*zeta^9 + 28*zeta^8 - 28*zeta^6 - 
28*zeta^4 - 84*zeta^3 + 28*zeta - 28)*q^936 + (-34*zeta^11 + 68*zeta^9 - 
2*zeta^8 + 66*zeta^6 - 34*zeta^4 + 34*zeta^3 - 2*zeta + 34)*q^937 + (-44*zeta^11
+ 88*zeta^9 - 28*zeta^8 + 60*zeta^6 - 44*zeta^4 + 44*zeta^3 - 28*zeta + 
44)*q^939 + (8*zeta^11 - 24*zeta^9 + 12*zeta^8 - 12*zeta^6 + 8*zeta^4 - 
16*zeta^3 + 12*zeta - 12)*q^940 + (14*zeta^11 + 16*zeta^8 + 16*zeta^6 + 
14*zeta^4 + 14*zeta^3 + 16*zeta)*q^941 + (44*zeta^11 - 120*zeta^8 - 120*zeta^6 +
44*zeta^4 + 44*zeta^3 - 120*zeta)*q^942 + (-28*zeta^11 + 56*zeta^9 - 28*zeta^8 +
28*zeta^6 - 28*zeta^4 + 28*zeta^3 - 28*zeta + 28)*q^943 + (24*zeta^11 - 
48*zeta^9 + 12*zeta^8 - 36*zeta^6 + 24*zeta^4 - 24*zeta^3 + 12*zeta - 24)*q^944 
+ (32*zeta^11 - 64*zeta^9 + 16*zeta^8 - 48*zeta^6 + 32*zeta^4 - 32*zeta^3 + 
16*zeta - 32)*q^946 + (-16*zeta^11 - 84*zeta^9 + 42*zeta^8 - 42*zeta^6 - 
16*zeta^4 - 100*zeta^3 + 42*zeta - 42)*q^947 + (16*zeta^11 + 32*zeta^8 + 
32*zeta^6 + 16*zeta^4 + 16*zeta^3 + 32*zeta)*q^948 + (2*zeta^11 + 46*zeta^8 + 
46*zeta^6 + 2*zeta^4 + 2*zeta^3 + 46*zeta)*q^949 + (-28*zeta^11 - 24*zeta^9 + 
12*zeta^8 - 12*zeta^6 - 28*zeta^4 - 52*zeta^3 + 12*zeta - 12)*q^950 + 
(20*zeta^11 - 40*zeta^9 - 40*zeta^6 + 20*zeta^4 - 20*zeta^3 - 20)*q^951 + 
(-2*zeta^11 + 4*zeta^9 + 4*zeta^6 - 2*zeta^4 + 2*zeta^3 + 2)*q^953 + (8*zeta^11 
+ 8*zeta^9 - 4*zeta^8 + 4*zeta^6 + 8*zeta^4 + 16*zeta^3 - 4*zeta + 4)*q^954 + 
(-36*zeta^11 - 36*zeta^4 - 36*zeta^3)*q^955 + (6*zeta^11 + 26*zeta^8 + 26*zeta^6
+ 6*zeta^4 + 6*zeta^3 + 26*zeta)*q^956 + (-16*zeta^11 + 32*zeta^9 - 16*zeta^8 + 
16*zeta^6 - 16*zeta^4 + 16*zeta^3 - 16*zeta + 16)*q^957 + (88*zeta^11 - 
176*zeta^9 + 52*zeta^8 - 124*zeta^6 + 88*zeta^4 - 88*zeta^3 + 52*zeta - 
88)*q^958 + (-8*zeta^11 + 16*zeta^9 + 12*zeta^8 + 28*zeta^6 - 8*zeta^4 + 
8*zeta^3 + 12*zeta + 8)*q^960 + (-32*zeta^11 + 14*zeta^9 - 7*zeta^8 + 7*zeta^6 -
32*zeta^4 - 18*zeta^3 - 7*zeta + 7)*q^961 + (24*zeta^11 - 64*zeta^8 - 64*zeta^6 
+ 24*zeta^4 + 24*zeta^3 - 64*zeta)*q^962 + (12*zeta^11 - 28*zeta^8 - 28*zeta^6 +
12*zeta^4 + 12*zeta^3 - 28*zeta)*q^963 + (42*zeta^11 + 42*zeta^4 + 
42*zeta^3)*q^964 + (16*zeta^11 - 32*zeta^9 + 20*zeta^8 - 12*zeta^6 + 16*zeta^4 -
16*zeta^3 + 20*zeta - 16)*q^965 + (-20*zeta^11 + 40*zeta^9 + 8*zeta^8 + 
48*zeta^6 - 20*zeta^4 + 20*zeta^3 + 8*zeta + 20)*q^967 + (-14*zeta^11 - 
42*zeta^9 + 21*zeta^8 - 21*zeta^6 - 14*zeta^4 - 56*zeta^3 + 21*zeta - 21)*q^968 
+ (-24*zeta^11 + 40*zeta^8 + 40*zeta^6 - 24*zeta^4 - 24*zeta^3 + 40*zeta)*q^969 
+ (-2*zeta^11 + 10*zeta^8 + 10*zeta^6 - 2*zeta^4 - 2*zeta^3 + 10*zeta)*q^970 + 
(-32*zeta^11 + 56*zeta^9 - 28*zeta^8 + 28*zeta^6 - 32*zeta^4 + 24*zeta^3 - 
28*zeta + 28)*q^971 + (10*zeta^11 - 20*zeta^9 + 8*zeta^8 - 12*zeta^6 + 10*zeta^4
- 10*zeta^3 + 8*zeta - 10)*q^972 + (-52*zeta^11 + 104*zeta^9 - 24*zeta^8 + 
80*zeta^6 - 52*zeta^4 + 52*zeta^3 - 24*zeta + 52)*q^974 + (-60*zeta^11 - 
16*zeta^9 + 8*zeta^8 - 8*zeta^6 - 60*zeta^4 - 76*zeta^3 + 8*zeta - 8)*q^975 + 
(24*zeta^11 - 6*zeta^8 - 6*zeta^6 + 24*zeta^4 + 24*zeta^3 - 6*zeta)*q^976 + 
(-24*zeta^11 + 28*zeta^8 + 28*zeta^6 - 24*zeta^4 - 24*zeta^3 + 28*zeta)*q^977 + 
(-32*zeta^11 - 64*zeta^9 + 32*zeta^8 - 32*zeta^6 - 32*zeta^4 - 96*zeta^3 + 
32*zeta - 32)*q^978 + (-8*zeta^11 + 16*zeta^9 + 12*zeta^8 + 28*zeta^6 - 8*zeta^4
+ 8*zeta^3 + 12*zeta + 8)*q^979 + (16*zeta^11 - 32*zeta^9 + 16*zeta^8 - 
16*zeta^6 + 16*zeta^4 - 16*zeta^3 + 16*zeta - 16)*q^981 + (68*zeta^11 + 
92*zeta^9 - 46*zeta^8 + 46*zeta^6 + 68*zeta^4 + 160*zeta^3 - 46*zeta + 46)*q^982
+ (-8*zeta^11 - 56*zeta^8 - 56*zeta^6 - 8*zeta^4 - 8*zeta^3 - 56*zeta)*q^983 + 
(28*zeta^8 + 28*zeta^6 + 28*zeta)*q^984 + (4*zeta^11 - 8*zeta^9 + 4*zeta^8 - 
4*zeta^6 + 4*zeta^4 - 4*zeta^3 + 4*zeta - 4)*q^985 + (-20*zeta^11 + 40*zeta^9 - 
8*zeta^8 + 32*zeta^6 - 20*zeta^4 + 20*zeta^3 - 8*zeta + 20)*q^986 + (-68*zeta^11
+ 136*zeta^9 - 32*zeta^8 + 104*zeta^6 - 68*zeta^4 + 68*zeta^3 - 32*zeta + 
68)*q^988 + (-16*zeta^11 + 64*zeta^9 - 32*zeta^8 + 32*zeta^6 - 16*zeta^4 + 
48*zeta^3 - 32*zeta + 32)*q^989 + (8*zeta^8 + 8*zeta^6 + 8*zeta)*q^990 + 
(4*zeta^11 - 28*zeta^8 - 28*zeta^6 + 4*zeta^4 + 4*zeta^3 - 28*zeta)*q^991 + 
(4*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 + 4*zeta^4 + 20*zeta^3 - 8*zeta + 
8)*q^992 + (-8*zeta^11 + 16*zeta^9 + 16*zeta^6 - 8*zeta^4 + 8*zeta^3 + 8)*q^993 
+ (8*zeta^11 - 16*zeta^9 + 48*zeta^8 + 32*zeta^6 + 8*zeta^4 - 8*zeta^3 + 48*zeta
- 8)*q^995 + (-64*zeta^11 - 144*zeta^9 + 72*zeta^8 - 72*zeta^6 - 64*zeta^4 - 
208*zeta^3 + 72*zeta - 72)*q^996 + (8*zeta^11 + 18*zeta^8 + 18*zeta^6 + 8*zeta^4
+ 8*zeta^3 + 18*zeta)*q^997 + (24*zeta^11 - 56*zeta^8 - 56*zeta^6 + 24*zeta^4 + 
24*zeta^3 - 56*zeta)*q^998 + (-16*zeta^9 + 8*zeta^8 - 8*zeta^6 - 16*zeta^3 + 
8*zeta - 8)*q^999 + (-32*zeta^11 + 64*zeta^9 - 24*zeta^8 + 40*zeta^6 - 32*zeta^4
+ 32*zeta^3 - 24*zeta + 32)*q^1000 + (-112*zeta^11 + 224*zeta^9 - 56*zeta^8 + 
168*zeta^6 - 112*zeta^4 + 112*zeta^3 - 56*zeta + 112)*q^1002 + (32*zeta^11 + 
40*zeta^9 - 20*zeta^8 + 20*zeta^6 + 32*zeta^4 + 72*zeta^3 - 20*zeta + 20)*q^1003
+ (20*zeta^11 - 16*zeta^8 - 16*zeta^6 + 20*zeta^4 + 20*zeta^3 - 16*zeta)*q^1004 
+ (16*zeta^11 + 16*zeta^8 + 16*zeta^6 + 16*zeta^4 + 16*zeta^3 + 16*zeta)*q^1005 
+ (8*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 8*zeta^4 - 8*zeta^3 + 8*zeta - 
8)*q^1007 + (-62*zeta^11 + 124*zeta^9 - 48*zeta^8 + 76*zeta^6 - 62*zeta^4 + 
62*zeta^3 - 48*zeta + 62)*q^1009 + (20*zeta^11 + 20*zeta^9 - 10*zeta^8 + 
10*zeta^6 + 20*zeta^4 + 40*zeta^3 - 10*zeta + 10)*q^1010 + (48*zeta^11 - 
32*zeta^8 - 32*zeta^6 + 48*zeta^4 + 48*zeta^3 - 32*zeta)*q^1011 + (-28*zeta^11 +
28*zeta^8 + 28*zeta^6 - 28*zeta^4 - 28*zeta^3 + 28*zeta)*q^1012 + (-10*zeta^11 -
52*zeta^9 + 26*zeta^8 - 26*zeta^6 - 10*zeta^4 - 62*zeta^3 + 26*zeta - 26)*q^1013
+ (-94*zeta^11 + 188*zeta^9 - 52*zeta^8 + 136*zeta^6 - 94*zeta^4 + 94*zeta^3 - 
52*zeta + 94)*q^1014 + (52*zeta^11 - 104*zeta^9 + 32*zeta^8 - 72*zeta^6 + 
52*zeta^4 - 52*zeta^3 + 32*zeta - 52)*q^1016 + (32*zeta^11 + 24*zeta^9 - 
12*zeta^8 + 12*zeta^6 + 32*zeta^4 + 56*zeta^3 - 12*zeta + 12)*q^1017 + 
(32*zeta^11 - 74*zeta^8 - 74*zeta^6 + 32*zeta^4 + 32*zeta^3 - 74*zeta)*q^1018 + 
(2*zeta^11 - 74*zeta^8 - 74*zeta^6 + 2*zeta^4 + 2*zeta^3 - 74*zeta)*q^1019 + 
(56*zeta^9 - 28*zeta^8 + 28*zeta^6 + 56*zeta^3 - 28*zeta + 28)*q^1020 + 
(38*zeta^11 - 76*zeta^9 + 22*zeta^8 - 54*zeta^6 + 38*zeta^4 - 38*zeta^3 + 
22*zeta - 38)*q^1021 + (32*zeta^11 - 64*zeta^9 + 16*zeta^8 - 48*zeta^6 + 
32*zeta^4 - 32*zeta^3 + 16*zeta - 32)*q^1023 + (12*zeta^11 + 14*zeta^9 - 
7*zeta^8 + 7*zeta^6 + 12*zeta^4 + 26*zeta^3 - 7*zeta + 7)*q^1024 + (26*zeta^11 -
4*zeta^8 - 4*zeta^6 + 26*zeta^4 + 26*zeta^3 - 4*zeta)*q^1025 + (8*zeta^11 - 
16*zeta^8 - 16*zeta^6 + 8*zeta^4 + 8*zeta^3 - 16*zeta)*q^1026 + (16*zeta^11 - 
48*zeta^9 + 24*zeta^8 - 24*zeta^6 + 16*zeta^4 - 32*zeta^3 + 24*zeta - 24)*q^1027
+ (80*zeta^11 - 160*zeta^9 + 22*zeta^8 - 138*zeta^6 + 80*zeta^4 - 80*zeta^3 + 
22*zeta - 80)*q^1028 + (-20*zeta^11 + 40*zeta^9 - 8*zeta^8 + 32*zeta^6 - 
20*zeta^4 + 20*zeta^3 - 8*zeta + 20)*q^1030 + (-16*zeta^11 - 28*zeta^9 + 
14*zeta^8 - 14*zeta^6 - 16*zeta^4 - 44*zeta^3 + 14*zeta - 14)*q^1031 + 
(-16*zeta^11 + 64*zeta^8 + 64*zeta^6 - 16*zeta^4 - 16*zeta^3 + 64*zeta)*q^1032 +
(12*zeta^11 - 68*zeta^8 - 68*zeta^6 + 12*zeta^4 + 12*zeta^3 - 68*zeta)*q^1033 + 
(-8*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 - 8*zeta^4 - 24*zeta^3 + 8*zeta - 
8)*q^1034 + (16*zeta^11 - 32*zeta^9 + 40*zeta^8 + 8*zeta^6 + 16*zeta^4 - 
16*zeta^3 + 40*zeta - 16)*q^1035 + (-34*zeta^11 + 68*zeta^9 - 36*zeta^8 + 
32*zeta^6 - 34*zeta^4 + 34*zeta^3 - 36*zeta + 34)*q^1037 + (-36*zeta^11 - 
16*zeta^9 + 8*zeta^8 - 8*zeta^6 - 36*zeta^4 - 52*zeta^3 + 8*zeta - 8)*q^1038 + 
(-32*zeta^11 + 64*zeta^8 + 64*zeta^6 - 32*zeta^4 - 32*zeta^3 + 64*zeta)*q^1039 +
(18*zeta^11 - 6*zeta^8 - 6*zeta^6 + 18*zeta^4 + 18*zeta^3 - 6*zeta)*q^1040 + 
(-32*zeta^11 + 88*zeta^9 - 44*zeta^8 + 44*zeta^6 - 32*zeta^4 + 56*zeta^3 - 
44*zeta + 44)*q^1041 + (-98*zeta^11 + 196*zeta^9 - 66*zeta^8 + 130*zeta^6 - 
98*zeta^4 + 98*zeta^3 - 66*zeta + 98)*q^1042 + (-16*zeta^11 + 32*zeta^9 - 
24*zeta^8 + 8*zeta^6 - 16*zeta^4 + 16*zeta^3 - 24*zeta + 16)*q^1044 + 
(16*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 16*zeta^4 + 8*zeta - 8)*q^1045 +
(12*zeta^11 - 44*zeta^8 - 44*zeta^6 + 12*zeta^4 + 12*zeta^3 - 44*zeta)*q^1046 + 
(28*zeta^8 + 28*zeta^6 + 28*zeta)*q^1047 + (40*zeta^11 + 8*zeta^9 - 4*zeta^8 + 
4*zeta^6 + 40*zeta^4 + 48*zeta^3 - 4*zeta + 4)*q^1048 + (40*zeta^11 - 80*zeta^9 
+ 46*zeta^8 - 34*zeta^6 + 40*zeta^4 - 40*zeta^3 + 46*zeta - 40)*q^1049 + 
(20*zeta^11 - 40*zeta^9 - 16*zeta^8 - 56*zeta^6 + 20*zeta^4 - 20*zeta^3 - 
16*zeta - 20)*q^1051 + (40*zeta^11 + 76*zeta^9 - 38*zeta^8 + 38*zeta^6 + 
40*zeta^4 + 116*zeta^3 - 38*zeta + 38)*q^1052 + (-8*zeta^11 + 12*zeta^8 + 
12*zeta^6 - 8*zeta^4 - 8*zeta^3 + 12*zeta)*q^1053 + (52*zeta^11 - 124*zeta^8 - 
124*zeta^6 + 52*zeta^4 + 52*zeta^3 - 124*zeta)*q^1054 + (40*zeta^11 - 32*zeta^9 
+ 16*zeta^8 - 16*zeta^6 + 40*zeta^4 + 8*zeta^3 + 16*zeta - 16)*q^1055 + 
(-4*zeta^11 + 8*zeta^9 + 8*zeta^8 + 16*zeta^6 - 4*zeta^4 + 4*zeta^3 + 8*zeta + 
4)*q^1056 + (-25*zeta^11 + 50*zeta^9 - 6*zeta^8 + 44*zeta^6 - 25*zeta^4 + 
25*zeta^3 - 6*zeta + 25)*q^1058 + (36*zeta^11 - 8*zeta^9 + 4*zeta^8 - 4*zeta^6 +
36*zeta^4 + 28*zeta^3 + 4*zeta - 4)*q^1059 + (4*zeta^11 + 8*zeta^8 + 8*zeta^6 + 
4*zeta^4 + 4*zeta^3 + 8*zeta)*q^1060 + (-52*zeta^11 + 56*zeta^8 + 56*zeta^6 - 
52*zeta^4 - 52*zeta^3 + 56*zeta)*q^1061 + (24*zeta^11 + 32*zeta^9 - 16*zeta^8 + 
16*zeta^6 + 24*zeta^4 + 56*zeta^3 - 16*zeta + 16)*q^1062 + (24*zeta^11 - 
48*zeta^9 + 36*zeta^8 - 12*zeta^6 + 24*zeta^4 - 24*zeta^3 + 36*zeta - 24)*q^1063
+ (-32*zeta^11 + 64*zeta^9 - 56*zeta^8 + 8*zeta^6 - 32*zeta^4 + 32*zeta^3 - 
56*zeta + 32)*q^1065 + (-16*zeta^11 - 36*zeta^9 + 18*zeta^8 - 18*zeta^6 - 
16*zeta^4 - 52*zeta^3 + 18*zeta - 18)*q^1066 + (-8*zeta^11 + 12*zeta^8 + 
12*zeta^6 - 8*zeta^4 - 8*zeta^3 + 12*zeta)*q^1067 + (-4*zeta^11 - 64*zeta^8 - 
64*zeta^6 - 4*zeta^4 - 4*zeta^3 - 64*zeta)*q^1068 + (34*zeta^11 - 16*zeta^9 + 
8*zeta^8 - 8*zeta^6 + 34*zeta^4 + 18*zeta^3 + 8*zeta - 8)*q^1069 + (-20*zeta^11 
+ 40*zeta^9 - 12*zeta^8 + 28*zeta^6 - 20*zeta^4 + 20*zeta^3 - 12*zeta + 
20)*q^1070 + (-24*zeta^11 + 48*zeta^9 - 24*zeta^8 + 24*zeta^6 - 24*zeta^4 + 
24*zeta^3 - 24*zeta + 24)*q^1072 + (16*zeta^11 - 32*zeta^9 + 16*zeta^8 - 
16*zeta^6 + 16*zeta^4 - 16*zeta^3 + 16*zeta - 16)*q^1073 + (-12*zeta^11 + 
52*zeta^8 + 52*zeta^6 - 12*zeta^4 - 12*zeta^3 + 52*zeta)*q^1074 + (32*zeta^11 - 
24*zeta^8 - 24*zeta^6 + 32*zeta^4 + 32*zeta^3 - 24*zeta)*q^1075 + (-10*zeta^11 -
68*zeta^9 + 34*zeta^8 - 34*zeta^6 - 10*zeta^4 - 78*zeta^3 + 34*zeta - 34)*q^1076
+ (-28*zeta^11 + 56*zeta^9 - 16*zeta^8 + 40*zeta^6 - 28*zeta^4 + 28*zeta^3 - 
16*zeta + 28)*q^1077 + (104*zeta^11 - 208*zeta^9 + 72*zeta^8 - 136*zeta^6 + 
104*zeta^4 - 104*zeta^3 + 72*zeta - 104)*q^1079 + (4*zeta^11 - 16*zeta^9 + 
8*zeta^8 - 8*zeta^6 + 4*zeta^4 - 12*zeta^3 + 8*zeta - 8)*q^1080 + (16*zeta^11 - 
8*zeta^8 - 8*zeta^6 + 16*zeta^4 + 16*zeta^3 - 8*zeta)*q^1081 + (10*zeta^11 - 
14*zeta^8 - 14*zeta^6 + 10*zeta^4 + 10*zeta^3 - 14*zeta)*q^1082 + (-44*zeta^9 + 
22*zeta^8 - 22*zeta^6 - 44*zeta^3 + 22*zeta - 22)*q^1083 + (-80*zeta^11 + 
160*zeta^9 - 36*zeta^8 + 124*zeta^6 - 80*zeta^4 + 80*zeta^3 - 36*zeta + 
80)*q^1084 + (32*zeta^11 - 64*zeta^9 + 20*zeta^8 - 44*zeta^6 + 32*zeta^4 - 
32*zeta^3 + 20*zeta - 32)*q^1086 + (16*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6
+ 16*zeta^4 + 32*zeta^3 - 8*zeta + 8)*q^1087 + (-26*zeta^11 + 76*zeta^8 + 
76*zeta^6 - 26*zeta^4 - 26*zeta^3 + 76*zeta)*q^1088 + (14*zeta^11 - 14*zeta^8 - 
14*zeta^6 + 14*zeta^4 + 14*zeta^3 - 14*zeta)*q^1089 + (16*zeta^9 - 8*zeta^8 + 
8*zeta^6 + 16*zeta^3 - 8*zeta + 8)*q^1090 + (28*zeta^11 - 56*zeta^9 - 56*zeta^6 
+ 28*zeta^4 - 28*zeta^3 - 28)*q^1091 + (44*zeta^11 - 88*zeta^9 - 8*zeta^8 - 
96*zeta^6 + 44*zeta^4 - 44*zeta^3 - 8*zeta - 44)*q^1093 + (-16*zeta^11 + 
8*zeta^9 - 4*zeta^8 + 4*zeta^6 - 16*zeta^4 - 8*zeta^3 - 4*zeta + 4)*q^1094 + 
(-44*zeta^11 - 28*zeta^8 - 28*zeta^6 - 44*zeta^4 - 44*zeta^3 - 28*zeta)*q^1095 +
(20*zeta^11 - 80*zeta^8 - 80*zeta^6 + 20*zeta^4 + 20*zeta^3 - 80*zeta)*q^1096 + 
(-2*zeta^11 + 36*zeta^9 - 18*zeta^8 + 18*zeta^6 - 2*zeta^4 + 34*zeta^3 - 18*zeta
+ 18)*q^1097 + (-24*zeta^11 + 48*zeta^9 - 20*zeta^8 + 28*zeta^6 - 24*zeta^4 + 
24*zeta^3 - 20*zeta + 24)*q^1098 + (-38*zeta^11 + 76*zeta^9 - 8*zeta^8 + 
68*zeta^6 - 38*zeta^4 + 38*zeta^3 - 8*zeta + 38)*q^1100 + (32*zeta^11 + 
32*zeta^9 - 16*zeta^8 + 16*zeta^6 + 32*zeta^4 + 64*zeta^3 - 16*zeta + 16)*q^1101
+ (8*zeta^11 - 8*zeta^8 - 8*zeta^6 + 8*zeta^4 + 8*zeta^3 - 8*zeta)*q^1102 + 
(14*zeta^11 - 22*zeta^8 - 22*zeta^6 + 14*zeta^4 + 14*zeta^3 - 22*zeta)*q^1103 + 
(48*zeta^11 - 24*zeta^9 + 12*zeta^8 - 12*zeta^6 + 48*zeta^4 + 24*zeta^3 + 
12*zeta - 12)*q^1104 + (-28*zeta^11 + 56*zeta^9 - 28*zeta^8 + 28*zeta^6 - 
28*zeta^4 + 28*zeta^3 - 28*zeta + 28)*q^1105 + (-8*zeta^11 + 16*zeta^9 - 
12*zeta^8 + 4*zeta^6 - 8*zeta^4 + 8*zeta^3 - 12*zeta + 8)*q^1107 + (-24*zeta^11 
- 68*zeta^9 + 34*zeta^8 - 34*zeta^6 - 24*zeta^4 - 92*zeta^3 + 34*zeta - 
34)*q^1108 + (-10*zeta^11 + 52*zeta^8 + 52*zeta^6 - 10*zeta^4 - 10*zeta^3 + 
52*zeta)*q^1109 + (16*zeta^8 + 16*zeta^6 + 16*zeta)*q^1110 + (20*zeta^11 + 
40*zeta^9 - 20*zeta^8 + 20*zeta^6 + 20*zeta^4 + 60*zeta^3 - 20*zeta + 20)*q^1111
+ (-28*zeta^11 + 56*zeta^9 + 56*zeta^6 - 28*zeta^4 + 28*zeta^3 + 28)*q^1112 + 
(78*zeta^11 - 156*zeta^9 + 52*zeta^8 - 104*zeta^6 + 78*zeta^4 - 78*zeta^3 + 
52*zeta - 78)*q^1114 + (64*zeta^11 - 80*zeta^9 + 40*zeta^8 - 40*zeta^6 + 
64*zeta^4 - 16*zeta^3 + 40*zeta - 40)*q^1115 + (24*zeta^11 - 64*zeta^8 - 
64*zeta^6 + 24*zeta^4 + 24*zeta^3 - 64*zeta)*q^1116 + (-6*zeta^11 + 22*zeta^8 + 
22*zeta^6 - 6*zeta^4 - 6*zeta^3 + 22*zeta)*q^1117 + (-48*zeta^11 - 80*zeta^9 + 
40*zeta^8 - 40*zeta^6 - 48*zeta^4 - 128*zeta^3 + 40*zeta - 40)*q^1118 + 
(-76*zeta^11 + 152*zeta^9 - 32*zeta^8 + 120*zeta^6 - 76*zeta^4 + 76*zeta^3 - 
32*zeta + 76)*q^1119 + (24*zeta^11 - 48*zeta^9 + 16*zeta^8 - 32*zeta^6 + 
24*zeta^4 - 24*zeta^3 + 16*zeta - 24)*q^1121 + (40*zeta^11 + 64*zeta^9 - 
32*zeta^8 + 32*zeta^6 + 40*zeta^4 + 104*zeta^3 - 32*zeta + 32)*q^1122 + 
(4*zeta^11 + 52*zeta^8 + 52*zeta^6 + 4*zeta^4 + 4*zeta^3 + 52*zeta)*q^1123 + 
(-32*zeta^11 + 76*zeta^8 + 76*zeta^6 - 32*zeta^4 - 32*zeta^3 + 76*zeta)*q^1124 +
(-16*zeta^11 - 16*zeta^4 - 16*zeta^3)*q^1125 + (-20*zeta^11 + 40*zeta^9 - 
12*zeta^8 + 28*zeta^6 - 20*zeta^4 + 20*zeta^3 - 12*zeta + 20)*q^1126 + 
(-32*zeta^11 + 64*zeta^9 - 24*zeta^8 + 40*zeta^6 - 32*zeta^4 + 32*zeta^3 - 
24*zeta + 32)*q^1128 + (24*zeta^11 - 8*zeta^9 + 4*zeta^8 - 4*zeta^6 + 24*zeta^4 
+ 16*zeta^3 + 4*zeta - 4)*q^1129 + (-16*zeta^11 + 28*zeta^8 + 28*zeta^6 - 
16*zeta^4 - 16*zeta^3 + 28*zeta)*q^1130 + (24*zeta^11 - 8*zeta^8 - 8*zeta^6 + 
24*zeta^4 + 24*zeta^3 - 8*zeta)*q^1131 + (-12*zeta^11 - 48*zeta^9 + 24*zeta^8 - 
24*zeta^6 - 12*zeta^4 - 60*zeta^3 + 24*zeta - 24)*q^1132 + (-32*zeta^11 + 
64*zeta^9 - 24*zeta^8 + 40*zeta^6 - 32*zeta^4 + 32*zeta^3 - 24*zeta + 32)*q^1133
+ (28*zeta^11 - 56*zeta^9 + 64*zeta^8 + 8*zeta^6 + 28*zeta^4 - 28*zeta^3 + 
64*zeta - 28)*q^1135 + (48*zeta^11 + 12*zeta^9 - 6*zeta^8 + 6*zeta^6 + 48*zeta^4
+ 60*zeta^3 - 6*zeta + 6)*q^1136 + (-40*zeta^11 + 72*zeta^8 + 72*zeta^6 - 
40*zeta^4 - 40*zeta^3 + 72*zeta)*q^1137 + (-4*zeta^11 - 4*zeta^4 - 
4*zeta^3)*q^1138 + (-16*zeta^11 - 48*zeta^9 + 24*zeta^8 - 24*zeta^6 - 16*zeta^4 
- 64*zeta^3 + 24*zeta - 24)*q^1139 + (8*zeta^11 - 16*zeta^9 - 16*zeta^8 - 
32*zeta^6 + 8*zeta^4 - 8*zeta^3 - 16*zeta - 8)*q^1140 + (100*zeta^11 - 
200*zeta^9 + 64*zeta^8 - 136*zeta^6 + 100*zeta^4 - 100*zeta^3 + 64*zeta - 
100)*q^1142 + (16*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 + 16*zeta^4 + 
32*zeta^3 - 8*zeta + 8)*q^1143 + (28*zeta^11 - 56*zeta^8 - 56*zeta^6 + 28*zeta^4
+ 28*zeta^3 - 56*zeta)*q^1144 + (2*zeta^11 - 6*zeta^8 - 6*zeta^6 + 2*zeta^4 + 
2*zeta^3 - 6*zeta)*q^1145 + (72*zeta^11 + 72*zeta^9 - 36*zeta^8 + 36*zeta^6 + 
72*zeta^4 + 144*zeta^3 - 36*zeta + 36)*q^1146 + (-32*zeta^11 + 64*zeta^9 - 
16*zeta^8 + 48*zeta^6 - 32*zeta^4 + 32*zeta^3 - 16*zeta + 32)*q^1147 + 
(-64*zeta^11 + 128*zeta^9 - 16*zeta^8 + 112*zeta^6 - 64*zeta^4 + 64*zeta^3 - 
16*zeta + 64)*q^1149 + (-44*zeta^11 - 20*zeta^9 + 10*zeta^8 - 10*zeta^6 - 
44*zeta^4 - 64*zeta^3 + 10*zeta - 10)*q^1150 + (-24*zeta^11 + 24*zeta^8 + 
24*zeta^6 - 24*zeta^4 - 24*zeta^3 + 24*zeta)*q^1151 + (-10*zeta^11 + 54*zeta^8 +
54*zeta^6 - 10*zeta^4 - 10*zeta^3 + 54*zeta)*q^1152 + (-30*zeta^11 + 8*zeta^9 - 
4*zeta^8 + 4*zeta^6 - 30*zeta^4 - 22*zeta^3 - 4*zeta + 4)*q^1153 + (-44*zeta^11 
+ 88*zeta^9 - 34*zeta^8 + 54*zeta^6 - 44*zeta^4 + 44*zeta^3 - 34*zeta + 
44)*q^1154 + (-97*zeta^11 + 194*zeta^9 - 44*zeta^8 + 150*zeta^6 - 97*zeta^4 + 
97*zeta^3 - 44*zeta + 97)*q^1156 + (-4*zeta^11 + 68*zeta^9 - 34*zeta^8 + 
34*zeta^6 - 4*zeta^4 + 64*zeta^3 - 34*zeta + 34)*q^1157 + (-44*zeta^11 + 
100*zeta^8 + 100*zeta^6 - 44*zeta^4 - 44*zeta^3 + 100*zeta)*q^1158 + 
(-12*zeta^11 - 20*zeta^8 - 20*zeta^6 - 12*zeta^4 - 12*zeta^3 - 20*zeta)*q^1159 +
(24*zeta^11 - 40*zeta^9 + 20*zeta^8 - 20*zeta^6 + 24*zeta^4 - 16*zeta^3 + 
20*zeta - 20)*q^1160 + (-16*zeta^11 + 32*zeta^9 - 16*zeta^8 + 16*zeta^6 - 
16*zeta^4 + 16*zeta^3 - 16*zeta + 16)*q^1161 + (-38*zeta^11 + 76*zeta^9 - 
40*zeta^8 + 36*zeta^6 - 38*zeta^4 + 38*zeta^3 - 40*zeta + 38)*q^1163 + 
(36*zeta^11 + 32*zeta^9 - 16*zeta^8 + 16*zeta^6 + 36*zeta^4 + 68*zeta^3 - 
16*zeta + 16)*q^1164 + (-4*zeta^11 - 20*zeta^8 - 20*zeta^6 - 4*zeta^4 - 4*zeta^3
- 20*zeta)*q^1165 + (-4*zeta^11 + 12*zeta^8 + 12*zeta^6 - 4*zeta^4 - 4*zeta^3 + 
12*zeta)*q^1166 + (40*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 40*zeta^4 + 
24*zeta^3 + 8*zeta - 8)*q^1167 + (30*zeta^11 - 60*zeta^9 + 42*zeta^8 - 18*zeta^6
+ 30*zeta^4 - 30*zeta^3 + 42*zeta - 30)*q^1168 + (-20*zeta^11 + 40*zeta^9 - 
16*zeta^8 + 24*zeta^6 - 20*zeta^4 + 20*zeta^3 - 16*zeta + 20)*q^1170 + 
(-40*zeta^11 - 40*zeta^9 + 20*zeta^8 - 20*zeta^6 - 40*zeta^4 - 80*zeta^3 + 
20*zeta - 20)*q^1171 + (22*zeta^11 - 96*zeta^8 - 96*zeta^6 + 22*zeta^4 + 
22*zeta^3 - 96*zeta)*q^1172 + (-40*zeta^11 + 48*zeta^8 + 48*zeta^6 - 40*zeta^4 -
40*zeta^3 + 48*zeta)*q^1173 + (-36*zeta^11 - 32*zeta^9 + 16*zeta^8 - 16*zeta^6 -
36*zeta^4 - 68*zeta^3 + 16*zeta - 16)*q^1174 + (12*zeta^11 - 24*zeta^9 - 
4*zeta^8 - 28*zeta^6 + 12*zeta^4 - 12*zeta^3 - 4*zeta - 12)*q^1175 + 
(-28*zeta^11 + 56*zeta^9 - 16*zeta^8 + 40*zeta^6 - 28*zeta^4 + 28*zeta^3 - 
16*zeta + 28)*q^1177 + (-32*zeta^11 - 48*zeta^9 + 24*zeta^8 - 24*zeta^6 - 
32*zeta^4 - 80*zeta^3 + 24*zeta - 24)*q^1178 + (8*zeta^11 + 24*zeta^8 + 
24*zeta^6 + 8*zeta^4 + 8*zeta^3 + 24*zeta)*q^1179 + (-4*zeta^11 + 20*zeta^8 + 
20*zeta^6 - 4*zeta^4 - 4*zeta^3 + 20*zeta)*q^1180 + (14*zeta^11 + 44*zeta^9 - 
22*zeta^8 + 22*zeta^6 + 14*zeta^4 + 58*zeta^3 - 22*zeta + 22)*q^1181 + 
(-12*zeta^11 + 24*zeta^9 - 8*zeta^8 + 16*zeta^6 - 12*zeta^4 + 12*zeta^3 - 8*zeta
+ 12)*q^1182 + (4*zeta^11 - 8*zeta^9 - 8*zeta^8 - 16*zeta^6 + 4*zeta^4 - 
4*zeta^3 - 8*zeta - 4)*q^1184 + (-64*zeta^11 + 96*zeta^9 - 48*zeta^8 + 48*zeta^6
- 64*zeta^4 + 32*zeta^3 - 48*zeta + 48)*q^1185 + (24*zeta^11 - 62*zeta^8 - 
62*zeta^6 + 24*zeta^4 + 24*zeta^3 - 62*zeta)*q^1186 + (18*zeta^11 - 42*zeta^8 - 
42*zeta^6 + 18*zeta^4 + 18*zeta^3 - 42*zeta)*q^1187 + (-16*zeta^11 - 8*zeta^9 + 
4*zeta^8 - 4*zeta^6 - 16*zeta^4 - 24*zeta^3 + 4*zeta - 4)*q^1188 + (-12*zeta^11 
+ 24*zeta^9 - 32*zeta^8 - 8*zeta^6 - 12*zeta^4 + 12*zeta^3 - 32*zeta + 
12)*q^1189 + (84*zeta^11 - 168*zeta^9 + 52*zeta^8 - 116*zeta^6 + 84*zeta^4 - 
84*zeta^3 + 52*zeta - 84)*q^1191 + (-36*zeta^11 + 4*zeta^9 - 2*zeta^8 + 2*zeta^6
- 36*zeta^4 - 32*zeta^3 - 2*zeta + 2)*q^1192 + (18*zeta^11 - 32*zeta^8 - 
32*zeta^6 + 18*zeta^4 + 18*zeta^3 - 32*zeta)*q^1193 + (16*zeta^11 - 64*zeta^8 - 
64*zeta^6 + 16*zeta^4 + 16*zeta^3 - 64*zeta)*q^1194 + (-36*zeta^11 + 56*zeta^9 -
28*zeta^8 + 28*zeta^6 - 36*zeta^4 + 20*zeta^3 - 28*zeta + 28)*q^1195 + 
(-84*zeta^11 + 168*zeta^9 - 28*zeta^8 + 140*zeta^6 - 84*zeta^4 + 84*zeta^3 - 
28*zeta + 84)*q^1196 + (-6*zeta^11 + 12*zeta^9 - 4*zeta^8 + 8*zeta^6 - 6*zeta^4 
+ 6*zeta^3 - 4*zeta + 6)*q^1198 + (16*zeta^11 + 16*zeta^4 + 16*zeta^3)*q^1199 + 
(-6*zeta^11 - 42*zeta^8 - 42*zeta^6 - 6*zeta^4 - 6*zeta^3 - 42*zeta)*q^1200 + 
(-36*zeta^11 + 4*zeta^8 + 4*zeta^6 - 36*zeta^4 - 36*zeta^3 + 4*zeta)*q^1201 + 
(-6*zeta^11 + 4*zeta^9 - 2*zeta^8 + 2*zeta^6 - 6*zeta^4 - 2*zeta^3 - 2*zeta + 
2)*q^1202 + (56*zeta^11 - 112*zeta^9 + 40*zeta^8 - 72*zeta^6 + 56*zeta^4 - 
56*zeta^3 + 40*zeta - 56)*q^1203 + (-6*zeta^11 + 12*zeta^9 - 36*zeta^8 - 
24*zeta^6 - 6*zeta^4 + 6*zeta^3 - 36*zeta + 6)*q^1205 + (-16*zeta^11 - 32*zeta^9
+ 16*zeta^8 - 16*zeta^6 - 16*zeta^4 - 48*zeta^3 + 16*zeta - 16)*q^1206 + 
(-52*zeta^11 + 96*zeta^8 + 96*zeta^6 - 52*zeta^4 - 52*zeta^3 + 96*zeta)*q^1207 +
(-36*zeta^11 + 60*zeta^8 + 60*zeta^6 - 36*zeta^4 - 36*zeta^3 + 60*zeta)*q^1208 +
(-48*zeta^11 - 80*zeta^9 + 40*zeta^8 - 40*zeta^6 - 48*zeta^4 - 128*zeta^3 + 
40*zeta - 40)*q^1209 + (-14*zeta^11 + 28*zeta^9 - 14*zeta^8 + 14*zeta^6 - 
14*zeta^4 + 14*zeta^3 - 14*zeta + 14)*q^1210 + (160*zeta^11 - 320*zeta^9 + 
100*zeta^8 - 220*zeta^6 + 160*zeta^4 - 160*zeta^3 + 100*zeta - 160)*q^1212 + 
(56*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 + 56*zeta^4 + 64*zeta^3 - 4*zeta + 
4)*q^1213 + (32*zeta^11 - 88*zeta^8 - 88*zeta^6 + 32*zeta^4 + 32*zeta^3 - 
88*zeta)*q^1214 + (-4*zeta^11 - 4*zeta^4 - 4*zeta^3)*q^1215 + (28*zeta^11 + 
16*zeta^9 - 8*zeta^8 + 8*zeta^6 + 28*zeta^4 + 44*zeta^3 - 8*zeta + 8)*q^1216 + 
(-44*zeta^11 + 88*zeta^9 - 38*zeta^8 + 50*zeta^6 - 44*zeta^4 + 44*zeta^3 - 
38*zeta + 44)*q^1217 + O(q^1218), (zeta^8 + zeta^6 + zeta)*q + (zeta^11 + zeta^4
+ zeta^3)*q^2 + (-2*zeta^11 - 2*zeta^4 - 2*zeta^3)*q^3 + (-zeta^11 - 2*zeta^8 - 
2*zeta^6 - zeta^4 - zeta^3 - 2*zeta)*q^4 + (4*zeta^11 - 6*zeta^9 + 3*zeta^8 - 
3*zeta^6 + 4*zeta^4 - 2*zeta^3 + 3*zeta - 3)*q^5 + (-2*zeta^11 + 4*zeta^9 - 
2*zeta^8 + 2*zeta^6 - 2*zeta^4 + 2*zeta^3 - 2*zeta + 2)*q^6 + (zeta^11 - 
2*zeta^9 - zeta^8 - 3*zeta^6 + zeta^4 - zeta^3 - zeta - 1)*q^8 + (-2*zeta^11 + 
4*zeta^9 - 2*zeta^8 + 2*zeta^6 - 2*zeta^4 + 2*zeta^3 - 2*zeta + 2)*q^9 + 
(zeta^11 + zeta^8 + zeta^6 + zeta^4 + zeta^3 + zeta)*q^10 + (-2*zeta^11 - 
2*zeta^4 - 2*zeta^3)*q^11 + (6*zeta^11 - 4*zeta^9 + 2*zeta^8 - 2*zeta^6 + 
6*zeta^4 + 2*zeta^3 + 2*zeta - 2)*q^12 + (-zeta^11 + 2*zeta^9 + 2*zeta^8 + 
4*zeta^6 - zeta^4 + zeta^3 + 2*zeta + 1)*q^13 + (-2*zeta^11 + 4*zeta^9 - 
8*zeta^8 - 4*zeta^6 - 2*zeta^4 + 2*zeta^3 - 8*zeta + 2)*q^15 + (3*zeta^11 - 
6*zeta^9 + 3*zeta^8 - 3*zeta^6 + 3*zeta^4 - 3*zeta^3 + 3*zeta - 3)*q^16 + 
(-zeta^11 - 3*zeta^8 - 3*zeta^6 - zeta^4 - zeta^3 - 3*zeta)*q^17 + (-2*zeta^8 - 
2*zeta^6 - 2*zeta)*q^18 + (-4*zeta^11 + 4*zeta^9 - 2*zeta^8 + 2*zeta^6 - 
4*zeta^4 - 2*zeta + 2)*q^19 + (-3*zeta^11 + 6*zeta^9 - 8*zeta^8 - 2*zeta^6 - 
3*zeta^4 + 3*zeta^3 - 8*zeta + 3)*q^20 + (-2*zeta^11 + 4*zeta^9 - 2*zeta^8 + 
2*zeta^6 - 2*zeta^4 + 2*zeta^3 - 2*zeta + 2)*q^22 + (-10*zeta^11 + 12*zeta^9 - 
6*zeta^8 + 6*zeta^6 - 10*zeta^4 + 2*zeta^3 - 6*zeta + 6)*q^23 + (4*zeta^11 - 
2*zeta^8 - 2*zeta^6 + 4*zeta^4 + 4*zeta^3 - 2*zeta)*q^24 + (5*zeta^11 + 4*zeta^8
+ 4*zeta^6 + 5*zeta^4 + 5*zeta^3 + 4*zeta)*q^25 + (4*zeta^11 + 2*zeta^9 - zeta^8
+ zeta^6 + 4*zeta^4 + 6*zeta^3 - zeta + 1)*q^26 + (-2*zeta^8 - 2*zeta^6 - 
2*zeta)*q^27 + (-2*zeta^11 + 4*zeta^9 - 8*zeta^8 - 4*zeta^6 - 2*zeta^4 + 
2*zeta^3 - 8*zeta + 2)*q^29 + (-4*zeta^11 + 4*zeta^9 - 2*zeta^8 + 2*zeta^6 - 
4*zeta^4 - 2*zeta + 2)*q^30 + (-2*zeta^11 + 2*zeta^8 + 2*zeta^6 - 2*zeta^4 - 
2*zeta^3 + 2*zeta)*q^31 + (4*zeta^11 + zeta^8 + zeta^6 + 4*zeta^4 + 4*zeta^3 + 
zeta)*q^32 + (4*zeta^11 - 8*zeta^9 + 4*zeta^8 - 4*zeta^6 + 4*zeta^4 - 4*zeta^3 +
4*zeta - 4)*q^33 + (5*zeta^11 - 10*zeta^9 + 2*zeta^8 - 8*zeta^6 + 5*zeta^4 - 
5*zeta^3 + 2*zeta - 5)*q^34 + (4*zeta^11 - 8*zeta^9 + 6*zeta^8 - 2*zeta^6 + 
4*zeta^4 - 4*zeta^3 + 6*zeta - 4)*q^36 + (-4*zeta^11 + 8*zeta^9 - 4*zeta^8 + 
4*zeta^6 - 4*zeta^4 + 4*zeta^3 - 4*zeta + 4)*q^37 + (-2*zeta^11 + 2*zeta^8 + 
2*zeta^6 - 2*zeta^4 - 2*zeta^3 + 2*zeta)*q^38 + (-6*zeta^11 + 2*zeta^8 + 
2*zeta^6 - 6*zeta^4 - 6*zeta^3 + 2*zeta)*q^39 + (-6*zeta^11 + 10*zeta^9 - 
5*zeta^8 + 5*zeta^6 - 6*zeta^4 + 4*zeta^3 - 5*zeta + 5)*q^40 + (3*zeta^11 - 
6*zeta^9 + 8*zeta^8 + 2*zeta^6 + 3*zeta^4 - 3*zeta^3 + 8*zeta - 3)*q^41 + 
(4*zeta^11 - 8*zeta^9 + 8*zeta^8 + 4*zeta^4 - 4*zeta^3 + 8*zeta - 4)*q^43 + 
(6*zeta^11 - 4*zeta^9 + 2*zeta^8 - 2*zeta^6 + 6*zeta^4 + 2*zeta^3 + 2*zeta - 
2)*q^44 + (-6*zeta^11 - 2*zeta^8 - 2*zeta^6 - 6*zeta^4 - 6*zeta^3 - 2*zeta)*q^45
+ (-4*zeta^11 + 2*zeta^8 + 2*zeta^6 - 4*zeta^4 - 4*zeta^3 + 2*zeta)*q^46 + 
(-4*zeta^11 + 4*zeta^9 - 2*zeta^8 + 2*zeta^6 - 4*zeta^4 - 2*zeta + 2)*q^47 + 
(-6*zeta^8 - 6*zeta^6 - 6*zeta)*q^48 + (-3*zeta^11 + 6*zeta^9 + zeta^8 + 
7*zeta^6 - 3*zeta^4 + 3*zeta^3 + zeta + 3)*q^50 + (8*zeta^11 - 4*zeta^9 + 
2*zeta^8 - 2*zeta^6 + 8*zeta^4 + 4*zeta^3 + 2*zeta - 2)*q^51 + (-zeta^11 - 
9*zeta^8 - 9*zeta^6 - zeta^4 - zeta^3 - 9*zeta)*q^52 + (-2*zeta^11 - 2*zeta^4 - 
2*zeta^3)*q^53 + (-2*zeta^11 - 2*zeta^4 - 2*zeta^3)*q^54 + (-2*zeta^11 + 
4*zeta^9 - 8*zeta^8 - 4*zeta^6 - 2*zeta^4 + 2*zeta^3 - 8*zeta + 2)*q^55 + 
(4*zeta^11 - 8*zeta^9 + 8*zeta^8 + 4*zeta^4 - 4*zeta^3 + 8*zeta - 4)*q^57 + 
(-4*zeta^11 + 4*zeta^9 - 2*zeta^8 + 2*zeta^6 - 4*zeta^4 - 2*zeta + 2)*q^58 + 
(-2*zeta^11 + 2*zeta^8 + 2*zeta^6 - 2*zeta^4 - 2*zeta^3 + 2*zeta)*q^59 + 
(10*zeta^11 + 6*zeta^8 + 6*zeta^6 + 10*zeta^4 + 10*zeta^3 + 6*zeta)*q^60 + 
(14*zeta^11 - 22*zeta^9 + 11*zeta^8 - 11*zeta^6 + 14*zeta^4 - 8*zeta^3 + 11*zeta
- 11)*q^61 + (-6*zeta^11 + 12*zeta^9 - 4*zeta^8 + 8*zeta^6 - 6*zeta^4 + 6*zeta^3
- 4*zeta + 6)*q^62 + (2*zeta^11 - 4*zeta^9 - 3*zeta^8 - 7*zeta^6 + 2*zeta^4 - 
2*zeta^3 - 3*zeta - 2)*q^64 + (10*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 
10*zeta^4 - 6*zeta^3 + 8*zeta - 8)*q^65 + (4*zeta^8 + 4*zeta^6 + 4*zeta)*q^66 + 
(-4*zeta^11 - 4*zeta^8 - 4*zeta^6 - 4*zeta^4 - 4*zeta^3 - 4*zeta)*q^67 + 
(-14*zeta^9 + 7*zeta^8 - 7*zeta^6 - 14*zeta^3 + 7*zeta - 7)*q^68 + (8*zeta^11 - 
16*zeta^9 + 20*zeta^8 + 4*zeta^6 + 8*zeta^4 - 8*zeta^3 + 20*zeta - 8)*q^69 + 
(8*zeta^11 - 16*zeta^9 + 14*zeta^8 - 2*zeta^6 + 8*zeta^4 - 8*zeta^3 + 14*zeta - 
8)*q^71 + (2*zeta^11 - 8*zeta^9 + 4*zeta^8 - 4*zeta^6 + 2*zeta^4 - 6*zeta^3 + 
4*zeta - 4)*q^72 + (11*zeta^11 + 7*zeta^8 + 7*zeta^6 + 11*zeta^4 + 11*zeta^3 + 
7*zeta)*q^73 + (-4*zeta^8 - 4*zeta^6 - 4*zeta)*q^74 + (-18*zeta^11 + 20*zeta^9 -
10*zeta^8 + 10*zeta^6 - 18*zeta^4 + 2*zeta^3 - 10*zeta + 10)*q^75 + (-2*zeta^11 
+ 4*zeta^9 + 4*zeta^8 + 8*zeta^6 - 2*zeta^4 + 2*zeta^3 + 4*zeta + 2)*q^76 + 
(-10*zeta^11 + 20*zeta^9 - 8*zeta^8 + 12*zeta^6 - 10*zeta^4 + 10*zeta^3 - 8*zeta
+ 10)*q^78 + (16*zeta^11 - 24*zeta^9 + 12*zeta^8 - 12*zeta^6 + 16*zeta^4 - 
8*zeta^3 + 12*zeta - 12)*q^79 + (9*zeta^11 + 3*zeta^8 + 3*zeta^6 + 9*zeta^4 + 
9*zeta^3 + 3*zeta)*q^80 + (-2*zeta^11 - 2*zeta^4 - 2*zeta^3)*q^81 + (2*zeta^11 -
6*zeta^9 + 3*zeta^8 - 3*zeta^6 + 2*zeta^4 - 4*zeta^3 + 3*zeta - 3)*q^82 + 
(8*zeta^11 - 16*zeta^9 + 12*zeta^8 - 4*zeta^6 + 8*zeta^4 - 8*zeta^3 + 12*zeta - 
8)*q^83 + (-4*zeta^11 + 8*zeta^9 - 10*zeta^8 - 2*zeta^6 - 4*zeta^4 + 4*zeta^3 - 
10*zeta + 4)*q^85 + (-8*zeta^9 + 4*zeta^8 - 4*zeta^6 - 8*zeta^3 + 4*zeta - 
4)*q^86 + (12*zeta^11 + 4*zeta^8 + 4*zeta^6 + 12*zeta^4 + 12*zeta^3 + 
4*zeta)*q^87 + (4*zeta^11 - 2*zeta^8 - 2*zeta^6 + 4*zeta^4 + 4*zeta^3 - 
2*zeta)*q^88 + (-16*zeta^11 + 26*zeta^9 - 13*zeta^8 + 13*zeta^6 - 16*zeta^4 + 
10*zeta^3 - 13*zeta + 13)*q^89 + (-2*zeta^11 + 4*zeta^9 - 4*zeta^8 - 2*zeta^4 + 
2*zeta^3 - 4*zeta + 2)*q^90 + (14*zeta^8 + 14*zeta^6 + 14*zeta)*q^92 + 
(-8*zeta^9 + 4*zeta^8 - 4*zeta^6 - 8*zeta^3 + 4*zeta - 4)*q^93 + (-2*zeta^11 + 
2*zeta^8 + 2*zeta^6 - 2*zeta^4 - 2*zeta^3 + 2*zeta)*q^94 + (-8*zeta^11 - 
4*zeta^8 - 4*zeta^6 - 8*zeta^4 - 8*zeta^3 - 4*zeta)*q^95 + (-10*zeta^11 + 
16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 10*zeta^4 + 6*zeta^3 - 8*zeta + 8)*q^96 + 
(-zeta^11 + 2*zeta^9 + 2*zeta^8 + 4*zeta^6 - zeta^4 + zeta^3 + 2*zeta + 1)*q^97 
+ (4*zeta^8 + 4*zeta^6 + 4*zeta)*q^99 + (-11*zeta^11 + 26*zeta^9 - 13*zeta^8 + 
13*zeta^6 - 11*zeta^4 + 15*zeta^3 - 13*zeta + 13)*q^100 + (5*zeta^11 - 5*zeta^8 
- 5*zeta^6 + 5*zeta^4 + 5*zeta^3 - 5*zeta)*q^101 + (6*zeta^11 - 10*zeta^8 - 
10*zeta^6 + 6*zeta^4 + 6*zeta^3 - 10*zeta)*q^102 + (8*zeta^11 - 4*zeta^9 + 
2*zeta^8 - 2*zeta^6 + 8*zeta^4 + 4*zeta^3 + 2*zeta - 2)*q^103 + (7*zeta^11 - 
14*zeta^9 - 14*zeta^6 + 7*zeta^4 - 7*zeta^3 - 7)*q^104 + (-2*zeta^11 + 4*zeta^9 
- 2*zeta^8 + 2*zeta^6 - 2*zeta^4 + 2*zeta^3 - 2*zeta + 2)*q^106 + (2*zeta^11 + 
4*zeta^9 - 2*zeta^8 + 2*zeta^6 + 2*zeta^4 + 6*zeta^3 - 2*zeta + 2)*q^107 + 
(2*zeta^11 + 4*zeta^8 + 4*zeta^6 + 2*zeta^4 + 2*zeta^3 + 4*zeta)*q^108 + 
(-4*zeta^11 - 4*zeta^8 - 4*zeta^6 - 4*zeta^4 - 4*zeta^3 - 4*zeta)*q^109 + 
(-4*zeta^11 + 4*zeta^9 - 2*zeta^8 + 2*zeta^6 - 4*zeta^4 - 2*zeta + 2)*q^110 + 
(8*zeta^8 + 8*zeta^6 + 8*zeta)*q^111 + (-8*zeta^11 + 16*zeta^9 - 10*zeta^8 + 
6*zeta^6 - 8*zeta^4 + 8*zeta^3 - 10*zeta + 8)*q^113 + (-8*zeta^9 + 4*zeta^8 - 
4*zeta^6 - 8*zeta^3 + 4*zeta - 4)*q^114 + (-22*zeta^11 - 10*zeta^8 - 10*zeta^6 -
22*zeta^4 - 22*zeta^3 - 10*zeta)*q^115 + (10*zeta^11 + 6*zeta^8 + 6*zeta^6 + 
10*zeta^4 + 10*zeta^3 + 6*zeta)*q^116 + (-4*zeta^11 + 12*zeta^9 - 6*zeta^8 + 
6*zeta^6 - 4*zeta^4 + 8*zeta^3 - 6*zeta + 6)*q^117 + (-6*zeta^11 + 12*zeta^9 - 
4*zeta^8 + 8*zeta^6 - 6*zeta^4 + 6*zeta^3 - 4*zeta + 6)*q^118 + (2*zeta^11 - 
4*zeta^9 + 12*zeta^8 + 8*zeta^6 + 2*zeta^4 - 2*zeta^3 + 12*zeta - 2)*q^120 + 
(-7*zeta^11 + 14*zeta^9 - 7*zeta^8 + 7*zeta^6 - 7*zeta^4 + 7*zeta^3 - 7*zeta + 
7)*q^121 + (3*zeta^11 + 5*zeta^8 + 5*zeta^6 + 3*zeta^4 + 3*zeta^3 + 
5*zeta)*q^122 + (-10*zeta^11 - 6*zeta^8 - 6*zeta^6 - 10*zeta^4 - 10*zeta^3 - 
6*zeta)*q^123 + (8*zeta^11 + 4*zeta^9 - 2*zeta^8 + 2*zeta^6 + 8*zeta^4 + 
12*zeta^3 - 2*zeta + 2)*q^124 + (4*zeta^11 - 8*zeta^9 + 8*zeta^8 + 4*zeta^4 - 
4*zeta^3 + 8*zeta - 4)*q^125 + (-4*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 - 
4*zeta^4 + 4*zeta^3 - 4*zeta + 4)*q^127 + (-17*zeta^11 + 12*zeta^9 - 6*zeta^8 + 
6*zeta^6 - 17*zeta^4 - 5*zeta^3 - 6*zeta + 6)*q^128 + (-8*zeta^11 - 8*zeta^8 - 
8*zeta^6 - 8*zeta^4 - 8*zeta^3 - 8*zeta)*q^129 + (2*zeta^11 + 4*zeta^8 + 
4*zeta^6 + 2*zeta^4 + 2*zeta^3 + 4*zeta)*q^130 + (-20*zeta^11 + 24*zeta^9 - 
12*zeta^8 + 12*zeta^6 - 20*zeta^4 + 4*zeta^3 - 12*zeta + 12)*q^131 + (-8*zeta^11
+ 16*zeta^9 - 12*zeta^8 + 4*zeta^6 - 8*zeta^4 + 8*zeta^3 - 12*zeta + 8)*q^132 + 
(4*zeta^11 - 8*zeta^9 - 8*zeta^6 + 4*zeta^4 - 4*zeta^3 - 4)*q^134 + (-8*zeta^11 
+ 12*zeta^9 - 6*zeta^8 + 6*zeta^6 - 8*zeta^4 + 4*zeta^3 - 6*zeta + 6)*q^135 + 
(-zeta^11 + 11*zeta^8 + 11*zeta^6 - zeta^4 - zeta^3 + 11*zeta)*q^136 + 
(10*zeta^11 + 10*zeta^8 + 10*zeta^6 + 10*zeta^4 + 10*zeta^3 + 10*zeta)*q^137 + 
(4*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 4*zeta^4 - 12*zeta^3 + 8*zeta - 
8)*q^138 + (-4*zeta^11 + 8*zeta^9 - 20*zeta^8 - 12*zeta^6 - 4*zeta^4 + 4*zeta^3 
- 20*zeta + 4)*q^139 + (4*zeta^11 - 8*zeta^9 + 8*zeta^8 + 4*zeta^4 - 4*zeta^3 + 
8*zeta - 4)*q^141 + (-2*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 - 2*zeta^4 - 
18*zeta^3 + 8*zeta - 8)*q^142 + (-6*zeta^11 + 2*zeta^8 + 2*zeta^6 - 6*zeta^4 - 
6*zeta^3 + 2*zeta)*q^143 + (-6*zeta^11 - 6*zeta^4 - 6*zeta^3)*q^144 + 
(-28*zeta^11 + 40*zeta^9 - 20*zeta^8 + 20*zeta^6 - 28*zeta^4 + 12*zeta^3 - 
20*zeta + 20)*q^145 + (-3*zeta^11 + 6*zeta^9 + 4*zeta^8 + 10*zeta^6 - 3*zeta^4 +
3*zeta^3 + 4*zeta + 3)*q^146 + (8*zeta^11 - 16*zeta^9 + 12*zeta^8 - 4*zeta^6 + 
8*zeta^4 - 8*zeta^3 + 12*zeta - 8)*q^148 + (22*zeta^11 - 28*zeta^9 + 14*zeta^8 -
14*zeta^6 + 22*zeta^4 - 6*zeta^3 + 14*zeta - 14)*q^149 + (-8*zeta^11 + 6*zeta^8 
+ 6*zeta^6 - 8*zeta^4 - 8*zeta^3 + 6*zeta)*q^150 + (12*zeta^11 + 12*zeta^4 + 
12*zeta^3)*q^151 + (8*zeta^11 - 4*zeta^9 + 2*zeta^8 - 2*zeta^6 + 8*zeta^4 + 
4*zeta^3 + 2*zeta - 2)*q^152 + (6*zeta^11 - 12*zeta^9 + 8*zeta^8 - 4*zeta^6 + 
6*zeta^4 - 6*zeta^3 + 8*zeta - 6)*q^153 + (-4*zeta^8 - 4*zeta^6 - 4*zeta)*q^155 
+ (20*zeta^11 - 4*zeta^9 + 2*zeta^8 - 2*zeta^6 + 20*zeta^4 + 16*zeta^3 + 2*zeta 
- 2)*q^156 + (13*zeta^11 - 3*zeta^8 - 3*zeta^6 + 13*zeta^4 + 13*zeta^3 - 
3*zeta)*q^157 + (4*zeta^11 + 4*zeta^8 + 4*zeta^6 + 4*zeta^4 + 4*zeta^3 + 
4*zeta)*q^158 + (4*zeta^11 - 8*zeta^9 + 4*zeta^8 - 4*zeta^6 + 4*zeta^4 - 
4*zeta^3 + 4*zeta - 4)*q^159 + (5*zeta^11 - 10*zeta^9 + 18*zeta^8 + 8*zeta^6 + 
5*zeta^4 - 5*zeta^3 + 18*zeta - 5)*q^160 + (-2*zeta^11 + 4*zeta^9 - 2*zeta^8 + 
2*zeta^6 - 2*zeta^4 + 2*zeta^3 - 2*zeta + 2)*q^162 + (-16*zeta^11 + 16*zeta^9 - 
8*zeta^8 + 8*zeta^6 - 16*zeta^4 - 8*zeta + 8)*q^163 + (-11*zeta^11 - zeta^8 - 
zeta^6 - 11*zeta^4 - 11*zeta^3 - zeta)*q^164 + (12*zeta^11 + 4*zeta^8 + 4*zeta^6
+ 12*zeta^4 + 12*zeta^3 + 4*zeta)*q^165 + (-4*zeta^11 - 16*zeta^9 + 8*zeta^8 - 
8*zeta^6 - 4*zeta^4 - 20*zeta^3 + 8*zeta - 8)*q^166 + (-14*zeta^11 + 28*zeta^9 -
28*zeta^8 - 14*zeta^4 + 14*zeta^3 - 28*zeta + 14)*q^167 + (-8*zeta^11 + 
16*zeta^9 - 11*zeta^8 + 5*zeta^6 - 8*zeta^4 + 8*zeta^3 - 11*zeta + 8)*q^169 + 
(-2*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 - 2*zeta^4 + 6*zeta^3 - 4*zeta + 
4)*q^170 + (4*zeta^11 + 4*zeta^8 + 4*zeta^6 + 4*zeta^4 + 4*zeta^3 + 
4*zeta)*q^171 + (-12*zeta^11 + 4*zeta^8 + 4*zeta^6 - 12*zeta^4 - 12*zeta^3 + 
4*zeta)*q^172 + (24*zeta^11 - 38*zeta^9 + 19*zeta^8 - 19*zeta^6 + 24*zeta^4 - 
14*zeta^3 + 19*zeta - 19)*q^173 + (4*zeta^11 - 8*zeta^9 + 8*zeta^8 + 4*zeta^4 - 
4*zeta^3 + 8*zeta - 4)*q^174 + (-6*zeta^8 - 6*zeta^6 - 6*zeta)*q^176 + 
(-8*zeta^9 + 4*zeta^8 - 4*zeta^6 - 8*zeta^3 + 4*zeta - 4)*q^177 + (-3*zeta^11 - 
7*zeta^8 - 7*zeta^6 - 3*zeta^4 - 3*zeta^3 - 7*zeta)*q^178 + (-18*zeta^11 - 
4*zeta^8 - 4*zeta^6 - 18*zeta^4 - 18*zeta^3 - 4*zeta)*q^179 + (16*zeta^11 - 
20*zeta^9 + 10*zeta^8 - 10*zeta^6 + 16*zeta^4 - 4*zeta^3 + 10*zeta - 10)*q^180 +
(zeta^11 - 2*zeta^9 - 2*zeta^8 - 4*zeta^6 + zeta^4 - zeta^3 - 2*zeta - 1)*q^181 
+ (-6*zeta^11 + 12*zeta^9 - 28*zeta^8 - 16*zeta^6 - 6*zeta^4 + 6*zeta^3 - 
28*zeta + 6)*q^183 + (18*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 18*zeta^4 +
2*zeta^3 + 8*zeta - 8)*q^184 + (-12*zeta^11 - 4*zeta^8 - 4*zeta^6 - 12*zeta^4 - 
12*zeta^3 - 4*zeta)*q^185 + (-4*zeta^11 + 12*zeta^8 + 12*zeta^6 - 4*zeta^4 - 
4*zeta^3 + 12*zeta)*q^186 + (8*zeta^11 - 4*zeta^9 + 2*zeta^8 - 2*zeta^6 + 
8*zeta^4 + 4*zeta^3 + 2*zeta - 2)*q^187 + (-2*zeta^11 + 4*zeta^9 + 4*zeta^8 + 
8*zeta^6 - 2*zeta^4 + 2*zeta^3 + 4*zeta + 2)*q^188 + (-4*zeta^8 - 4*zeta^6 - 
4*zeta)*q^190 + (-18*zeta^11 + 36*zeta^9 - 18*zeta^8 + 18*zeta^6 - 18*zeta^4 + 
18*zeta^3 - 18*zeta + 18)*q^191 + (10*zeta^11 - 4*zeta^8 - 4*zeta^6 + 10*zeta^4 
+ 10*zeta^3 - 4*zeta)*q^192 + (2*zeta^11 + 8*zeta^8 + 8*zeta^6 + 2*zeta^4 + 
2*zeta^3 + 8*zeta)*q^193 + (4*zeta^11 + 2*zeta^9 - zeta^8 + zeta^6 + 4*zeta^4 + 
6*zeta^3 - zeta + 1)*q^194 + (-4*zeta^11 + 8*zeta^9 - 20*zeta^8 - 12*zeta^6 - 
4*zeta^4 + 4*zeta^3 - 20*zeta + 4)*q^195 + (2*zeta^8 + 2*zeta^6 + 2*zeta)*q^197 
+ (4*zeta^11 + 4*zeta^4 + 4*zeta^3)*q^198 + (20*zeta^11 + 4*zeta^8 + 4*zeta^6 + 
20*zeta^4 + 20*zeta^3 + 4*zeta)*q^199 + (-6*zeta^11 - 11*zeta^8 - 11*zeta^6 - 
6*zeta^4 - 6*zeta^3 - 11*zeta)*q^200 + (16*zeta^11 - 16*zeta^9 + 8*zeta^8 - 
8*zeta^6 + 16*zeta^4 + 8*zeta - 8)*q^201 + (15*zeta^11 - 30*zeta^9 + 10*zeta^8 -
20*zeta^6 + 15*zeta^4 - 15*zeta^3 + 10*zeta - 15)*q^202 + (14*zeta^11 - 
28*zeta^9 - 28*zeta^6 + 14*zeta^4 - 14*zeta^3 - 14)*q^204 + (26*zeta^11 - 
36*zeta^9 + 18*zeta^8 - 18*zeta^6 + 26*zeta^4 - 10*zeta^3 + 18*zeta - 18)*q^205 
+ (6*zeta^11 - 10*zeta^8 - 10*zeta^6 + 6*zeta^4 + 6*zeta^3 - 10*zeta)*q^206 + 
(12*zeta^11 + 8*zeta^8 + 8*zeta^6 + 12*zeta^4 + 12*zeta^3 + 8*zeta)*q^207 + 
(6*zeta^11 - 18*zeta^9 + 9*zeta^8 - 9*zeta^6 + 6*zeta^4 - 12*zeta^3 + 9*zeta - 
9)*q^208 + (4*zeta^11 - 8*zeta^9 + 8*zeta^8 + 4*zeta^4 - 4*zeta^3 + 8*zeta - 
4)*q^209 + (12*zeta^11 - 24*zeta^9 + 20*zeta^8 - 4*zeta^6 + 12*zeta^4 - 
12*zeta^3 + 20*zeta - 12)*q^211 + (6*zeta^11 - 4*zeta^9 + 2*zeta^8 - 2*zeta^6 + 
6*zeta^4 + 2*zeta^3 + 2*zeta - 2)*q^212 + (-12*zeta^11 - 16*zeta^8 - 16*zeta^6 -
12*zeta^4 - 12*zeta^3 - 16*zeta)*q^213 + (4*zeta^11 - 10*zeta^8 - 10*zeta^6 + 
4*zeta^4 + 4*zeta^3 - 10*zeta)*q^214 + (24*zeta^11 - 32*zeta^9 + 16*zeta^8 - 
16*zeta^6 + 24*zeta^4 - 8*zeta^3 + 16*zeta - 16)*q^215 + (-2*zeta^11 + 4*zeta^9 
+ 2*zeta^8 + 6*zeta^6 - 2*zeta^4 + 2*zeta^3 + 2*zeta + 2)*q^216 + (4*zeta^11 - 
8*zeta^9 - 8*zeta^6 + 4*zeta^4 - 4*zeta^3 - 4)*q^218 + (-36*zeta^11 + 44*zeta^9 
- 22*zeta^8 + 22*zeta^6 - 36*zeta^4 + 8*zeta^3 - 22*zeta + 22)*q^219 + 
(10*zeta^11 + 6*zeta^8 + 6*zeta^6 + 10*zeta^4 + 10*zeta^3 + 6*zeta)*q^220 + 
(-14*zeta^8 - 14*zeta^6 - 14*zeta)*q^221 + (8*zeta^11 + 8*zeta^4 + 
8*zeta^3)*q^222 + (12*zeta^11 - 24*zeta^9 + 32*zeta^8 + 8*zeta^6 + 12*zeta^4 - 
12*zeta^3 + 32*zeta - 12)*q^223 + (-8*zeta^11 + 16*zeta^9 - 18*zeta^8 - 2*zeta^6
- 8*zeta^4 + 8*zeta^3 - 18*zeta + 8)*q^225 + (6*zeta^11 + 16*zeta^9 - 8*zeta^8 +
8*zeta^6 + 6*zeta^4 + 22*zeta^3 - 8*zeta + 8)*q^226 + (18*zeta^11 + 14*zeta^8 + 
14*zeta^6 + 18*zeta^4 + 18*zeta^3 + 14*zeta)*q^227 + (-12*zeta^11 + 4*zeta^8 + 
4*zeta^6 - 12*zeta^4 - 12*zeta^3 + 4*zeta)*q^228 + (-2*zeta^11 - 2*zeta^9 + 
zeta^8 - zeta^6 - 2*zeta^4 - 4*zeta^3 + zeta - 1)*q^229 + (-2*zeta^11 + 4*zeta^9
- 12*zeta^8 - 8*zeta^6 - 2*zeta^4 + 2*zeta^3 - 12*zeta + 2)*q^230 + (2*zeta^11 -
4*zeta^9 + 12*zeta^8 + 8*zeta^6 + 2*zeta^4 - 2*zeta^3 + 12*zeta - 2)*q^232 + 
(-12*zeta^11 + 4*zeta^9 - 2*zeta^8 + 2*zeta^6 - 12*zeta^4 - 8*zeta^3 - 2*zeta + 
2)*q^233 + (2*zeta^11 - 10*zeta^8 - 10*zeta^6 + 2*zeta^4 + 2*zeta^3 - 
10*zeta)*q^234 + (-8*zeta^11 - 4*zeta^8 - 4*zeta^6 - 8*zeta^4 - 8*zeta^3 - 
4*zeta)*q^235 + (8*zeta^11 + 4*zeta^9 - 2*zeta^8 + 2*zeta^6 + 8*zeta^4 + 
12*zeta^3 - 2*zeta + 2)*q^236 + (-8*zeta^11 + 16*zeta^9 - 32*zeta^8 - 16*zeta^6 
- 8*zeta^4 + 8*zeta^3 - 32*zeta + 8)*q^237 + (-4*zeta^11 + 8*zeta^9 - 18*zeta^8 
- 10*zeta^6 - 4*zeta^4 + 4*zeta^3 - 18*zeta + 4)*q^239 + (-24*zeta^11 + 
36*zeta^9 - 18*zeta^8 + 18*zeta^6 - 24*zeta^4 + 12*zeta^3 - 18*zeta + 18)*q^240 
+ (-15*zeta^11 - 3*zeta^8 - 3*zeta^6 - 15*zeta^4 - 15*zeta^3 - 3*zeta)*q^241 + 
(-7*zeta^8 - 7*zeta^6 - 7*zeta)*q^242 + (-2*zeta^11 + 4*zeta^9 - 2*zeta^8 + 
2*zeta^6 - 2*zeta^4 + 2*zeta^3 - 2*zeta + 2)*q^243 + (-13*zeta^11 + 26*zeta^9 - 
30*zeta^8 - 4*zeta^6 - 13*zeta^4 + 13*zeta^3 - 30*zeta + 13)*q^244 + (2*zeta^11 
- 4*zeta^9 - 4*zeta^8 - 8*zeta^6 + 2*zeta^4 - 2*zeta^3 - 4*zeta - 2)*q^246 + 
(-12*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 - 12*zeta^4 - 4*zeta^3 - 4*zeta + 
4)*q^247 + (6*zeta^11 - 10*zeta^8 - 10*zeta^6 + 6*zeta^4 + 6*zeta^3 - 
10*zeta)*q^248 + (-8*zeta^11 - 16*zeta^8 - 16*zeta^6 - 8*zeta^4 - 8*zeta^3 - 
16*zeta)*q^249 + (-8*zeta^9 + 4*zeta^8 - 4*zeta^6 - 8*zeta^3 + 4*zeta - 4)*q^250
+ (-6*zeta^11 + 12*zeta^9 - 16*zeta^8 - 4*zeta^6 - 6*zeta^4 + 6*zeta^3 - 16*zeta
+ 6)*q^251 + (8*zeta^11 - 16*zeta^9 + 20*zeta^8 + 4*zeta^6 + 8*zeta^4 - 8*zeta^3
+ 20*zeta - 8)*q^253 + (4*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 + 4*zeta^4 + 
12*zeta^3 - 4*zeta + 4)*q^254 + (12*zeta^11 + 8*zeta^8 + 8*zeta^6 + 12*zeta^4 + 
12*zeta^3 + 8*zeta)*q^255 + (-zeta^11 + 12*zeta^8 + 12*zeta^6 - zeta^4 - zeta^3 
+ 12*zeta)*q^256 + (32*zeta^11 - 34*zeta^9 + 17*zeta^8 - 17*zeta^6 + 32*zeta^4 -
2*zeta^3 + 17*zeta - 17)*q^257 + (8*zeta^11 - 16*zeta^9 - 16*zeta^6 + 8*zeta^4 -
8*zeta^3 - 8)*q^258 + (-10*zeta^11 + 20*zeta^9 - 22*zeta^8 - 2*zeta^6 - 
10*zeta^4 + 10*zeta^3 - 22*zeta + 10)*q^260 + (16*zeta^11 - 24*zeta^9 + 
12*zeta^8 - 12*zeta^6 + 16*zeta^4 - 8*zeta^3 + 12*zeta - 12)*q^261 + (-8*zeta^11
+ 4*zeta^8 + 4*zeta^6 - 8*zeta^4 - 8*zeta^3 + 4*zeta)*q^262 + (2*zeta^11 + 
8*zeta^8 + 8*zeta^6 + 2*zeta^4 + 2*zeta^3 + 8*zeta)*q^263 + (-4*zeta^11 + 
16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 4*zeta^4 + 12*zeta^3 - 8*zeta + 8)*q^264 + 
(-2*zeta^11 + 4*zeta^9 - 8*zeta^8 - 4*zeta^6 - 2*zeta^4 + 2*zeta^3 - 8*zeta + 
2)*q^265 + (6*zeta^11 - 12*zeta^9 + 32*zeta^8 + 20*zeta^6 + 6*zeta^4 - 6*zeta^3 
+ 32*zeta - 6)*q^267 + (8*zeta^11 - 24*zeta^9 + 12*zeta^8 - 12*zeta^6 + 8*zeta^4
- 16*zeta^3 + 12*zeta - 12)*q^268 + (-11*zeta^11 - 9*zeta^8 - 9*zeta^6 - 
11*zeta^4 - 11*zeta^3 - 9*zeta)*q^269 + (-2*zeta^11 - 2*zeta^8 - 2*zeta^6 - 
2*zeta^4 - 2*zeta^3 - 2*zeta)*q^270 + (-16*zeta^11 + 12*zeta^9 - 6*zeta^8 + 
6*zeta^6 - 16*zeta^4 - 4*zeta^3 - 6*zeta + 6)*q^271 + (-9*zeta^11 + 18*zeta^9 - 
12*zeta^8 + 6*zeta^6 - 9*zeta^4 + 9*zeta^3 - 12*zeta + 9)*q^272 + (-10*zeta^11 +
20*zeta^9 + 20*zeta^6 - 10*zeta^4 + 10*zeta^3 + 10)*q^274 + (-18*zeta^11 + 
20*zeta^9 - 10*zeta^8 + 10*zeta^6 - 18*zeta^4 + 2*zeta^3 - 10*zeta + 10)*q^275 +
(-28*zeta^11 - 28*zeta^4 - 28*zeta^3)*q^276 + (-6*zeta^11 - 8*zeta^8 - 8*zeta^6 
- 6*zeta^4 - 6*zeta^3 - 8*zeta)*q^277 + (-12*zeta^11 + 8*zeta^9 - 4*zeta^8 + 
4*zeta^6 - 12*zeta^4 - 4*zeta^3 - 4*zeta + 4)*q^278 + (-4*zeta^11 + 8*zeta^9 + 
8*zeta^6 - 4*zeta^4 + 4*zeta^3 + 4)*q^279 + (6*zeta^11 - 12*zeta^9 + 4*zeta^8 - 
8*zeta^6 + 6*zeta^4 - 6*zeta^3 + 4*zeta - 6)*q^281 + (-8*zeta^9 + 4*zeta^8 - 
4*zeta^6 - 8*zeta^3 + 4*zeta - 4)*q^282 + (-6*zeta^11 - 6*zeta^8 - 6*zeta^6 - 
6*zeta^4 - 6*zeta^3 - 6*zeta)*q^283 + (-22*zeta^11 + 12*zeta^8 + 12*zeta^6 - 
22*zeta^4 - 22*zeta^3 + 12*zeta)*q^284 + (24*zeta^11 - 32*zeta^9 + 16*zeta^8 - 
16*zeta^6 + 24*zeta^4 - 8*zeta^3 + 16*zeta - 16)*q^285 + (-10*zeta^11 + 
20*zeta^9 - 8*zeta^8 + 12*zeta^6 - 10*zeta^4 + 10*zeta^3 - 8*zeta + 10)*q^286 + 
(-2*zeta^11 + 4*zeta^9 - 10*zeta^8 - 6*zeta^6 - 2*zeta^4 + 2*zeta^3 - 10*zeta + 
2)*q^288 + (-19*zeta^11 + 14*zeta^9 - 7*zeta^8 + 7*zeta^6 - 19*zeta^4 - 5*zeta^3
- 7*zeta + 7)*q^289 + (-8*zeta^11 - 4*zeta^8 - 4*zeta^6 - 8*zeta^4 - 8*zeta^3 - 
4*zeta)*q^290 + (-6*zeta^11 + 2*zeta^8 + 2*zeta^6 - 6*zeta^4 - 6*zeta^3 + 
2*zeta)*q^291 + (-26*zeta^11 + 50*zeta^9 - 25*zeta^8 + 25*zeta^6 - 26*zeta^4 + 
24*zeta^3 - 25*zeta + 25)*q^292 + (-zeta^11 + 2*zeta^9 + 16*zeta^8 + 18*zeta^6 -
zeta^4 + zeta^3 + 16*zeta + 1)*q^293 + (-4*zeta^8 - 4*zeta^6 - 4*zeta)*q^295 + 
(4*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 4*zeta^4 - 12*zeta^3 + 8*zeta - 
8)*q^296 + (4*zeta^11 + 4*zeta^4 + 4*zeta^3)*q^297 + (8*zeta^11 - 2*zeta^8 - 
2*zeta^6 + 8*zeta^4 + 8*zeta^3 - 2*zeta)*q^298 + (-28*zeta^11 + 28*zeta^9 - 
14*zeta^8 + 14*zeta^6 - 28*zeta^4 - 14*zeta + 14)*q^299 + (-4*zeta^11 + 8*zeta^9
+ 22*zeta^8 + 30*zeta^6 - 4*zeta^4 + 4*zeta^3 + 22*zeta + 4)*q^300 + (12*zeta^11
- 24*zeta^9 + 12*zeta^8 - 12*zeta^6 + 12*zeta^4 - 12*zeta^3 + 12*zeta - 
12)*q^302 + (20*zeta^9 - 10*zeta^8 + 10*zeta^6 + 20*zeta^3 - 10*zeta + 10)*q^303
+ (-6*zeta^11 - 6*zeta^8 - 6*zeta^6 - 6*zeta^4 - 6*zeta^3 - 6*zeta)*q^304 + 
(36*zeta^11 + 14*zeta^8 + 14*zeta^6 + 36*zeta^4 + 36*zeta^3 + 14*zeta)*q^305 + 
(-4*zeta^11 - 12*zeta^9 + 6*zeta^8 - 6*zeta^6 - 4*zeta^4 - 16*zeta^3 + 6*zeta - 
6)*q^306 + (10*zeta^11 - 20*zeta^9 + 36*zeta^8 + 16*zeta^6 + 10*zeta^4 - 
10*zeta^3 + 36*zeta - 10)*q^307 + (-12*zeta^11 + 24*zeta^9 - 16*zeta^8 + 
8*zeta^6 - 12*zeta^4 + 12*zeta^3 - 16*zeta + 12)*q^309 + (-4*zeta^11 - 4*zeta^4 
- 4*zeta^3)*q^310 + (2*zeta^11 + 10*zeta^8 + 10*zeta^6 + 2*zeta^4 + 2*zeta^3 + 
10*zeta)*q^311 + (14*zeta^11 - 14*zeta^8 - 14*zeta^6 + 14*zeta^4 + 14*zeta^3 - 
14*zeta)*q^312 + (6*zeta^11 + 2*zeta^9 - zeta^8 + zeta^6 + 6*zeta^4 + 8*zeta^3 -
zeta + 1)*q^313 + (19*zeta^11 - 38*zeta^9 + 16*zeta^8 - 22*zeta^6 + 19*zeta^4 - 
19*zeta^3 + 16*zeta - 19)*q^314 + (-12*zeta^11 + 24*zeta^9 - 32*zeta^8 - 
8*zeta^6 - 12*zeta^4 + 12*zeta^3 - 32*zeta + 12)*q^316 + (10*zeta^11 - 20*zeta^9
+ 10*zeta^8 - 10*zeta^6 + 10*zeta^4 - 10*zeta^3 + 10*zeta - 10)*q^317 + 
(4*zeta^8 + 4*zeta^6 + 4*zeta)*q^318 + (12*zeta^11 + 4*zeta^8 + 4*zeta^6 + 
12*zeta^4 + 12*zeta^3 + 4*zeta)*q^319 + (-16*zeta^11 + 26*zeta^9 - 13*zeta^8 + 
13*zeta^6 - 16*zeta^4 + 10*zeta^3 - 13*zeta + 13)*q^320 + (-8*zeta^11 + 
16*zeta^9 - 4*zeta^8 + 12*zeta^6 - 8*zeta^4 + 8*zeta^3 - 4*zeta + 8)*q^321 + 
(-4*zeta^11 + 8*zeta^9 + 4*zeta^8 + 12*zeta^6 - 4*zeta^4 + 4*zeta^3 + 4*zeta + 
4)*q^323 + (6*zeta^11 - 4*zeta^9 + 2*zeta^8 - 2*zeta^6 + 6*zeta^4 + 2*zeta^3 + 
2*zeta - 2)*q^324 + (11*zeta^11 + 15*zeta^8 + 15*zeta^6 + 11*zeta^4 + 11*zeta^3 
+ 15*zeta)*q^325 + (-8*zeta^11 + 8*zeta^8 + 8*zeta^6 - 8*zeta^4 - 8*zeta^3 + 
8*zeta)*q^326 + (16*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 16*zeta^4 + 
8*zeta - 8)*q^327 + (-7*zeta^11 + 14*zeta^9 - 14*zeta^8 - 7*zeta^4 + 7*zeta^3 - 
14*zeta + 7)*q^328 + (4*zeta^11 - 8*zeta^9 + 8*zeta^8 + 4*zeta^4 - 4*zeta^3 + 
8*zeta - 4)*q^330 + (-4*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 - 4*zeta^4 + 
4*zeta^3 - 4*zeta + 4)*q^331 + (-20*zeta^11 + 16*zeta^8 + 16*zeta^6 - 20*zeta^4 
- 20*zeta^3 + 16*zeta)*q^332 + (8*zeta^11 + 8*zeta^4 + 8*zeta^3)*q^333 + 
(28*zeta^9 - 14*zeta^8 + 14*zeta^6 + 28*zeta^3 - 14*zeta + 14)*q^334 + 
(-8*zeta^11 + 16*zeta^9 - 24*zeta^8 - 8*zeta^6 - 8*zeta^4 + 8*zeta^3 - 24*zeta +
8)*q^335 + (-4*zeta^11 + 8*zeta^9 - 32*zeta^8 - 24*zeta^6 - 4*zeta^4 + 4*zeta^3 
- 32*zeta + 4)*q^337 + (5*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 + 5*zeta^4 +
21*zeta^3 - 8*zeta + 8)*q^338 + (4*zeta^11 + 16*zeta^8 + 16*zeta^6 + 4*zeta^4 + 
4*zeta^3 + 16*zeta)*q^339 + (14*zeta^11 + 14*zeta^4 + 14*zeta^3)*q^340 + 
(-8*zeta^9 + 4*zeta^8 - 4*zeta^6 - 8*zeta^3 + 4*zeta - 4)*q^341 + (-4*zeta^11 + 
8*zeta^9 + 8*zeta^6 - 4*zeta^4 + 4*zeta^3 + 4)*q^342 + (-12*zeta^11 + 24*zeta^9 
- 16*zeta^8 + 8*zeta^6 - 12*zeta^4 + 12*zeta^3 - 16*zeta + 12)*q^344 + 
(64*zeta^11 - 88*zeta^9 + 44*zeta^8 - 44*zeta^6 + 64*zeta^4 - 24*zeta^3 + 
44*zeta - 44)*q^345 + (5*zeta^11 + 9*zeta^8 + 9*zeta^6 + 5*zeta^4 + 5*zeta^3 + 
9*zeta)*q^346 + (30*zeta^11 + 8*zeta^8 + 8*zeta^6 + 30*zeta^4 + 30*zeta^3 + 
8*zeta)*q^347 + (-32*zeta^11 + 40*zeta^9 - 20*zeta^8 + 20*zeta^6 - 32*zeta^4 + 
8*zeta^3 - 20*zeta + 20)*q^348 + (-7*zeta^11 + 14*zeta^9 - 14*zeta^8 - 7*zeta^4 
+ 7*zeta^3 - 14*zeta + 7)*q^349 + (2*zeta^11 - 4*zeta^9 - 4*zeta^8 - 8*zeta^6 + 
2*zeta^4 - 2*zeta^3 - 4*zeta - 2)*q^351 + (-10*zeta^11 + 16*zeta^9 - 8*zeta^8 + 
8*zeta^6 - 10*zeta^4 + 6*zeta^3 - 8*zeta + 8)*q^352 + (-11*zeta^11 - 9*zeta^8 - 
9*zeta^6 - 11*zeta^4 - 11*zeta^3 - 9*zeta)*q^353 + (-4*zeta^11 + 12*zeta^8 + 
12*zeta^6 - 4*zeta^4 - 4*zeta^3 + 12*zeta)*q^354 + (40*zeta^11 - 52*zeta^9 + 
26*zeta^8 - 26*zeta^6 + 40*zeta^4 - 12*zeta^3 + 26*zeta - 26)*q^355 + 
(17*zeta^11 - 34*zeta^9 + 36*zeta^8 + 2*zeta^6 + 17*zeta^4 - 17*zeta^3 + 36*zeta
- 17)*q^356 + (-10*zeta^11 + 20*zeta^9 - 14*zeta^8 + 6*zeta^6 - 10*zeta^4 + 
10*zeta^3 - 14*zeta + 10)*q^358 + (2*zeta^11 + 4*zeta^9 - 2*zeta^8 + 2*zeta^6 + 
2*zeta^4 + 6*zeta^3 - 2*zeta + 2)*q^359 + (10*zeta^11 + 2*zeta^8 + 2*zeta^6 + 
10*zeta^4 + 10*zeta^3 + 2*zeta)*q^360 + (-11*zeta^11 - 11*zeta^4 - 
11*zeta^3)*q^361 + (-4*zeta^11 - 2*zeta^9 + zeta^8 - zeta^6 - 4*zeta^4 - 
6*zeta^3 + zeta - 1)*q^362 + (14*zeta^8 + 14*zeta^6 + 14*zeta)*q^363 + 
(18*zeta^11 - 36*zeta^9 + 58*zeta^8 + 22*zeta^6 + 18*zeta^4 - 18*zeta^3 + 
58*zeta - 18)*q^365 + (-16*zeta^11 + 12*zeta^9 - 6*zeta^8 + 6*zeta^6 - 16*zeta^4
- 4*zeta^3 - 6*zeta + 6)*q^366 + (-8*zeta^8 - 8*zeta^6 - 8*zeta)*q^367 + 
(-18*zeta^11 - 12*zeta^8 - 12*zeta^6 - 18*zeta^4 - 18*zeta^3 - 12*zeta)*q^368 + 
(-16*zeta^11 + 20*zeta^9 - 10*zeta^8 + 10*zeta^6 - 16*zeta^4 + 4*zeta^3 - 
10*zeta + 10)*q^369 + (-4*zeta^11 + 8*zeta^9 - 8*zeta^8 - 4*zeta^4 + 4*zeta^3 - 
8*zeta + 4)*q^370 + (-20*zeta^11 + 40*zeta^9 - 16*zeta^8 + 24*zeta^6 - 20*zeta^4
+ 20*zeta^3 - 16*zeta + 20)*q^372 + (-6*zeta^11 + 28*zeta^9 - 14*zeta^8 + 
14*zeta^6 - 6*zeta^4 + 22*zeta^3 - 14*zeta + 14)*q^373 + (6*zeta^11 - 10*zeta^8 
- 10*zeta^6 + 6*zeta^4 + 6*zeta^3 - 10*zeta)*q^374 + (-8*zeta^11 - 8*zeta^8 - 
8*zeta^6 - 8*zeta^4 - 8*zeta^3 - 8*zeta)*q^375 + (8*zeta^11 - 4*zeta^9 + 
2*zeta^8 - 2*zeta^6 + 8*zeta^4 + 4*zeta^3 + 2*zeta - 2)*q^376 + (-4*zeta^11 + 
8*zeta^9 - 20*zeta^8 - 12*zeta^6 - 4*zeta^4 + 4*zeta^3 - 20*zeta + 4)*q^377 + 
(-8*zeta^11 + 16*zeta^9 + 4*zeta^8 + 20*zeta^6 - 8*zeta^4 + 8*zeta^3 + 4*zeta + 
8)*q^379 + (20*zeta^11 - 32*zeta^9 + 16*zeta^8 - 16*zeta^6 + 20*zeta^4 - 
12*zeta^3 + 16*zeta - 16)*q^380 + (8*zeta^8 + 8*zeta^6 + 8*zeta)*q^381 + 
(-18*zeta^8 - 18*zeta^6 - 18*zeta)*q^382 + (-16*zeta^11 + 40*zeta^9 - 20*zeta^8 
+ 20*zeta^6 - 16*zeta^4 + 24*zeta^3 - 20*zeta + 20)*q^383 + (22*zeta^11 - 
44*zeta^9 + 34*zeta^8 - 10*zeta^6 + 22*zeta^4 - 22*zeta^3 + 34*zeta - 22)*q^384 
+ (-14*zeta^11 + 28*zeta^9 - 6*zeta^8 + 22*zeta^6 - 14*zeta^4 + 14*zeta^3 - 
6*zeta + 14)*q^386 + (-16*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 16*zeta^4 
- 8*zeta + 8)*q^387 + (-zeta^11 - 9*zeta^8 - 9*zeta^6 - zeta^4 - zeta^3 - 
9*zeta)*q^388 + (-14*zeta^11 - 10*zeta^8 - 10*zeta^6 - 14*zeta^4 - 14*zeta^3 - 
10*zeta)*q^389 + (-12*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 - 12*zeta^4 - 
4*zeta^3 - 4*zeta + 4)*q^390 + (-2*zeta^11 + 4*zeta^9 + 16*zeta^8 + 20*zeta^6 - 
2*zeta^4 + 2*zeta^3 + 16*zeta + 2)*q^391 + (16*zeta^11 - 32*zeta^9 + 40*zeta^8 +
8*zeta^6 + 16*zeta^4 - 16*zeta^3 + 40*zeta - 16)*q^393 + (2*zeta^11 + 2*zeta^4 +
2*zeta^3)*q^394 + (40*zeta^11 + 16*zeta^8 + 16*zeta^6 + 40*zeta^4 + 40*zeta^3 + 
16*zeta)*q^395 + (-4*zeta^11 - 8*zeta^8 - 8*zeta^6 - 4*zeta^4 - 4*zeta^3 - 
8*zeta)*q^396 + (-10*zeta^11 - 6*zeta^9 + 3*zeta^8 - 3*zeta^6 - 10*zeta^4 - 
16*zeta^3 + 3*zeta - 3)*q^397 + (12*zeta^11 - 24*zeta^9 + 16*zeta^8 - 8*zeta^6 +
12*zeta^4 - 12*zeta^3 + 16*zeta - 12)*q^398 + (12*zeta^11 - 24*zeta^9 + 
27*zeta^8 + 3*zeta^6 + 12*zeta^4 - 12*zeta^3 + 27*zeta - 12)*q^400 + 
(-12*zeta^11 + 4*zeta^9 - 2*zeta^8 + 2*zeta^6 - 12*zeta^4 - 8*zeta^3 - 2*zeta + 
2)*q^401 + (8*zeta^11 - 8*zeta^8 - 8*zeta^6 + 8*zeta^4 + 8*zeta^3 - 
8*zeta)*q^402 + (-8*zeta^11 + 12*zeta^8 + 12*zeta^6 - 8*zeta^4 - 8*zeta^3 + 
12*zeta)*q^403 + (-20*zeta^11 - 10*zeta^9 + 5*zeta^8 - 5*zeta^6 - 20*zeta^4 - 
30*zeta^3 + 5*zeta - 5)*q^404 + (-2*zeta^11 + 4*zeta^9 - 8*zeta^8 - 4*zeta^6 - 
2*zeta^4 + 2*zeta^3 - 8*zeta + 2)*q^405 + (8*zeta^8 + 8*zeta^6 + 8*zeta)*q^407 +
(-20*zeta^11 - 4*zeta^9 + 2*zeta^8 - 2*zeta^6 - 20*zeta^4 - 24*zeta^3 + 2*zeta -
2)*q^408 + (-21*zeta^11 - zeta^8 - zeta^6 - 21*zeta^4 - 21*zeta^3 - zeta)*q^409 
+ (8*zeta^11 + 2*zeta^8 + 2*zeta^6 + 8*zeta^4 + 8*zeta^3 + 2*zeta)*q^410 + 
(-40*zeta^11 + 40*zeta^9 - 20*zeta^8 + 20*zeta^6 - 40*zeta^4 - 20*zeta + 
20)*q^411 + (14*zeta^11 - 28*zeta^9 - 28*zeta^6 + 14*zeta^4 - 14*zeta^3 - 
14)*q^412 + (-4*zeta^11 + 8*zeta^9 + 4*zeta^8 + 12*zeta^6 - 4*zeta^4 + 4*zeta^3 
+ 4*zeta + 4)*q^414 + (32*zeta^11 - 40*zeta^9 + 20*zeta^8 - 20*zeta^6 + 
32*zeta^4 - 8*zeta^3 + 20*zeta - 20)*q^415 + (11*zeta^11 + zeta^8 + zeta^6 + 
11*zeta^4 + 11*zeta^3 + zeta)*q^416 + (32*zeta^11 + 8*zeta^8 + 8*zeta^6 + 
32*zeta^4 + 32*zeta^3 + 8*zeta)*q^417 + (-8*zeta^9 + 4*zeta^8 - 4*zeta^6 - 
8*zeta^3 + 4*zeta - 4)*q^418 + (-2*zeta^11 + 4*zeta^9 + 32*zeta^8 + 36*zeta^6 - 
2*zeta^4 + 2*zeta^3 + 32*zeta + 2)*q^419 + (16*zeta^11 - 32*zeta^9 + 26*zeta^8 -
6*zeta^6 + 16*zeta^4 - 16*zeta^3 + 26*zeta - 16)*q^421 + (-4*zeta^11 - 24*zeta^9
+ 12*zeta^8 - 12*zeta^6 - 4*zeta^4 - 28*zeta^3 + 12*zeta - 12)*q^422 + 
(4*zeta^11 + 4*zeta^8 + 4*zeta^6 + 4*zeta^4 + 4*zeta^3 + 4*zeta)*q^423 + 
(4*zeta^11 - 2*zeta^8 - 2*zeta^6 + 4*zeta^4 + 4*zeta^3 - 2*zeta)*q^424 + 
(-12*zeta^11 + 34*zeta^9 - 17*zeta^8 + 17*zeta^6 - 12*zeta^4 + 22*zeta^3 - 
17*zeta + 17)*q^425 + (20*zeta^11 - 40*zeta^9 + 4*zeta^8 - 36*zeta^6 + 20*zeta^4
- 20*zeta^3 + 4*zeta - 20)*q^426 + (16*zeta^11 - 32*zeta^9 + 10*zeta^8 - 
22*zeta^6 + 16*zeta^4 - 16*zeta^3 + 10*zeta - 16)*q^428 + (8*zeta^11 - 24*zeta^9
+ 12*zeta^8 - 12*zeta^6 + 8*zeta^4 - 16*zeta^3 + 12*zeta - 12)*q^429 + 
(8*zeta^11 + 8*zeta^4 + 8*zeta^3)*q^430 + (-22*zeta^11 - 12*zeta^8 - 12*zeta^6 -
22*zeta^4 - 22*zeta^3 - 12*zeta)*q^431 + (-6*zeta^11 + 12*zeta^9 - 6*zeta^8 + 
6*zeta^6 - 6*zeta^4 + 6*zeta^3 - 6*zeta + 6)*q^432 + (-3*zeta^11 + 6*zeta^9 - 
22*zeta^8 - 16*zeta^6 - 3*zeta^4 + 3*zeta^3 - 22*zeta + 3)*q^433 + (16*zeta^11 -
32*zeta^9 + 56*zeta^8 + 24*zeta^6 + 16*zeta^4 - 16*zeta^3 + 56*zeta - 16)*q^435 
+ (8*zeta^11 - 24*zeta^9 + 12*zeta^8 - 12*zeta^6 + 8*zeta^4 - 16*zeta^3 + 
12*zeta - 12)*q^436 + (20*zeta^11 + 4*zeta^8 + 4*zeta^6 + 20*zeta^4 + 20*zeta^3 
+ 4*zeta)*q^437 + (-14*zeta^11 + 6*zeta^8 + 6*zeta^6 - 14*zeta^4 - 14*zeta^3 + 
6*zeta)*q^438 + (8*zeta^11 - 32*zeta^9 + 16*zeta^8 - 16*zeta^6 + 8*zeta^4 - 
24*zeta^3 + 16*zeta - 16)*q^439 + (2*zeta^11 - 4*zeta^9 + 12*zeta^8 + 8*zeta^6 +
2*zeta^4 - 2*zeta^3 + 12*zeta - 2)*q^440 + (28*zeta^11 - 56*zeta^9 + 14*zeta^8 -
42*zeta^6 + 28*zeta^4 - 28*zeta^3 + 14*zeta - 28)*q^442 + (42*zeta^11 - 
60*zeta^9 + 30*zeta^8 - 30*zeta^6 + 42*zeta^4 - 18*zeta^3 + 30*zeta - 30)*q^443 
+ (-8*zeta^11 - 16*zeta^8 - 16*zeta^6 - 8*zeta^4 - 8*zeta^3 - 16*zeta)*q^444 + 
(-42*zeta^11 - 16*zeta^8 - 16*zeta^6 - 42*zeta^4 - 42*zeta^3 - 16*zeta)*q^445 + 
(8*zeta^11 - 24*zeta^9 + 12*zeta^8 - 12*zeta^6 + 8*zeta^4 - 16*zeta^3 + 12*zeta 
- 12)*q^446 + (-16*zeta^11 + 32*zeta^9 - 44*zeta^8 - 12*zeta^6 - 16*zeta^4 + 
16*zeta^3 - 44*zeta + 16)*q^447 + (-8*zeta^11 + 16*zeta^9 - 10*zeta^8 + 6*zeta^6
- 8*zeta^4 + 8*zeta^3 - 10*zeta + 8)*q^449 + (-2*zeta^11 + 16*zeta^9 - 8*zeta^8 
+ 8*zeta^6 - 2*zeta^4 + 14*zeta^3 - 8*zeta + 8)*q^450 + (-10*zeta^11 - 6*zeta^8 
- 6*zeta^6 - 10*zeta^4 - 10*zeta^3 - 6*zeta)*q^451 + (18*zeta^11 - 20*zeta^8 - 
20*zeta^6 + 18*zeta^4 + 18*zeta^3 - 20*zeta)*q^452 + (-24*zeta^11 + 48*zeta^9 - 
24*zeta^8 + 24*zeta^6 - 24*zeta^4 + 24*zeta^3 - 24*zeta + 24)*q^453 + 
(-10*zeta^11 + 20*zeta^9 + 4*zeta^8 + 24*zeta^6 - 10*zeta^4 + 10*zeta^3 + 4*zeta
+ 10)*q^454 + (-12*zeta^11 + 24*zeta^9 - 16*zeta^8 + 8*zeta^6 - 12*zeta^4 + 
12*zeta^3 - 16*zeta + 12)*q^456 + (-18*zeta^11 + 36*zeta^9 - 18*zeta^8 + 
18*zeta^6 - 18*zeta^4 + 18*zeta^3 - 18*zeta + 18)*q^457 + (-3*zeta^11 + 7*zeta^8
+ 7*zeta^6 - 3*zeta^4 - 3*zeta^3 + 7*zeta)*q^458 + (2*zeta^11 + 6*zeta^8 + 
6*zeta^6 + 2*zeta^4 + 2*zeta^3 + 6*zeta)*q^459 + (56*zeta^11 - 84*zeta^9 + 
42*zeta^8 - 42*zeta^6 + 56*zeta^4 - 28*zeta^3 + 42*zeta - 42)*q^460 + (zeta^11 -
2*zeta^9 - 16*zeta^8 - 18*zeta^6 + zeta^4 - zeta^3 - 16*zeta - 1)*q^461 + 
(-16*zeta^11 + 32*zeta^9 - 36*zeta^8 - 4*zeta^6 - 16*zeta^4 + 16*zeta^3 - 
36*zeta + 16)*q^463 + (-24*zeta^11 + 36*zeta^9 - 18*zeta^8 + 18*zeta^6 - 
24*zeta^4 + 12*zeta^3 - 18*zeta + 18)*q^464 + (8*zeta^11 + 8*zeta^4 + 
8*zeta^3)*q^465 + (-10*zeta^11 + 18*zeta^8 + 18*zeta^6 - 10*zeta^4 - 10*zeta^3 +
18*zeta)*q^466 + (-8*zeta^11 - 12*zeta^9 + 6*zeta^8 - 6*zeta^6 - 8*zeta^4 - 
20*zeta^3 + 6*zeta - 6)*q^467 + (18*zeta^11 - 36*zeta^9 + 20*zeta^8 - 16*zeta^6 
+ 18*zeta^4 - 18*zeta^3 + 20*zeta - 18)*q^468 + (-4*zeta^8 - 4*zeta^6 - 
4*zeta)*q^470 + (-20*zeta^11 + 52*zeta^9 - 26*zeta^8 + 26*zeta^6 - 20*zeta^4 + 
32*zeta^3 - 26*zeta + 26)*q^471 + (6*zeta^11 - 10*zeta^8 - 10*zeta^6 + 6*zeta^4 
+ 6*zeta^3 - 10*zeta)*q^472 + (-8*zeta^11 - 8*zeta^8 - 8*zeta^6 - 8*zeta^4 - 
8*zeta^3 - 8*zeta)*q^473 + (-16*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 
16*zeta^4 - 8*zeta + 8)*q^474 + (-2*zeta^11 + 4*zeta^9 - 20*zeta^8 - 16*zeta^6 -
2*zeta^4 + 2*zeta^3 - 20*zeta + 2)*q^475 + (4*zeta^8 + 4*zeta^6 + 4*zeta)*q^477 
+ (-10*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 - 10*zeta^4 - 2*zeta^3 - 4*zeta 
+ 4)*q^478 + (6*zeta^11 - 10*zeta^8 - 10*zeta^6 + 6*zeta^4 + 6*zeta^3 - 
10*zeta)*q^479 + (-26*zeta^11 - 10*zeta^8 - 10*zeta^6 - 26*zeta^4 - 26*zeta^3 - 
10*zeta)*q^480 + (-8*zeta^11 + 24*zeta^9 - 12*zeta^8 + 12*zeta^6 - 8*zeta^4 + 
16*zeta^3 - 12*zeta + 12)*q^481 + (-9*zeta^11 + 18*zeta^9 - 12*zeta^8 + 6*zeta^6
- 9*zeta^4 + 9*zeta^3 - 12*zeta + 9)*q^482 + (14*zeta^11 - 28*zeta^9 + 21*zeta^8
- 7*zeta^6 + 14*zeta^4 - 14*zeta^3 + 21*zeta - 14)*q^484 + (10*zeta^11 - 
16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 10*zeta^4 - 6*zeta^3 + 8*zeta - 8)*q^485 + 
(-2*zeta^8 - 2*zeta^6 - 2*zeta)*q^486 + (20*zeta^11 + 16*zeta^8 + 16*zeta^6 + 
20*zeta^4 + 20*zeta^3 + 16*zeta)*q^487 + (-20*zeta^11 + 38*zeta^9 - 19*zeta^8 + 
19*zeta^6 - 20*zeta^4 + 18*zeta^3 - 19*zeta + 19)*q^488 + (16*zeta^11 - 
32*zeta^9 + 32*zeta^8 + 16*zeta^4 - 16*zeta^3 + 32*zeta - 16)*q^489 + 
(-12*zeta^11 + 24*zeta^9 - 2*zeta^8 + 22*zeta^6 - 12*zeta^4 + 12*zeta^3 - 2*zeta
+ 12)*q^491 + (24*zeta^11 - 44*zeta^9 + 22*zeta^8 - 22*zeta^6 + 24*zeta^4 - 
20*zeta^3 + 22*zeta - 22)*q^492 + (12*zeta^11 + 8*zeta^8 + 8*zeta^6 + 12*zeta^4 
+ 12*zeta^3 + 8*zeta)*q^493 + (-8*zeta^11 + 12*zeta^8 + 12*zeta^6 - 8*zeta^4 - 
8*zeta^3 + 12*zeta)*q^494 + (16*zeta^11 - 24*zeta^9 + 12*zeta^8 - 12*zeta^6 + 
16*zeta^4 - 8*zeta^3 + 12*zeta - 12)*q^495 + (6*zeta^11 - 12*zeta^9 - 12*zeta^6 
+ 6*zeta^4 - 6*zeta^3 - 6)*q^496 + (24*zeta^11 - 48*zeta^9 + 8*zeta^8 - 
40*zeta^6 + 24*zeta^4 - 24*zeta^3 + 8*zeta - 24)*q^498 + (8*zeta^11 + 8*zeta^4 +
8*zeta^3)*q^499 + (-12*zeta^11 + 4*zeta^8 + 4*zeta^6 - 12*zeta^4 - 12*zeta^3 + 
4*zeta)*q^500 + (28*zeta^11 + 28*zeta^8 + 28*zeta^6 + 28*zeta^4 + 28*zeta^3 + 
28*zeta)*q^501 + (-4*zeta^11 + 12*zeta^9 - 6*zeta^8 + 6*zeta^6 - 4*zeta^4 + 
8*zeta^3 - 6*zeta + 6)*q^502 + (10*zeta^8 + 10*zeta^6 + 10*zeta)*q^505 + 
(4*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 4*zeta^4 - 12*zeta^3 + 8*zeta - 
8)*q^506 + (6*zeta^11 + 16*zeta^8 + 16*zeta^6 + 6*zeta^4 + 6*zeta^3 + 
16*zeta)*q^507 + (8*zeta^11 - 12*zeta^8 - 12*zeta^6 + 8*zeta^4 + 8*zeta^3 - 
12*zeta)*q^508 + (12*zeta^11 - 2*zeta^9 + zeta^8 - zeta^6 + 12*zeta^4 + 
10*zeta^3 + zeta - 1)*q^509 + (-4*zeta^11 + 8*zeta^9 + 4*zeta^8 + 12*zeta^6 - 
4*zeta^4 + 4*zeta^3 + 4*zeta + 4)*q^510 + (-3*zeta^11 + 6*zeta^9 + 21*zeta^8 + 
27*zeta^6 - 3*zeta^4 + 3*zeta^3 + 21*zeta + 3)*q^512 + (8*zeta^11 - 8*zeta^9 + 
4*zeta^8 - 4*zeta^6 + 8*zeta^4 + 4*zeta - 4)*q^513 + (15*zeta^11 - 13*zeta^8 - 
13*zeta^6 + 15*zeta^4 + 15*zeta^3 - 13*zeta)*q^514 + (12*zeta^11 + 8*zeta^8 + 
8*zeta^6 + 12*zeta^4 + 12*zeta^3 + 8*zeta)*q^515 + (16*zeta^11 - 48*zeta^9 + 
24*zeta^8 - 24*zeta^6 + 16*zeta^4 - 32*zeta^3 + 24*zeta - 24)*q^516 + (4*zeta^11
- 8*zeta^9 + 8*zeta^8 + 4*zeta^4 - 4*zeta^3 + 8*zeta - 4)*q^517 + (-10*zeta^11 +
20*zeta^9 - 48*zeta^8 - 28*zeta^6 - 10*zeta^4 + 10*zeta^3 - 48*zeta + 10)*q^519 
+ (-14*zeta^11 + 28*zeta^9 - 14*zeta^8 + 14*zeta^6 - 14*zeta^4 + 14*zeta^3 - 
14*zeta + 14)*q^520 + (-35*zeta^11 - zeta^8 - zeta^6 - 35*zeta^4 - 35*zeta^3 - 
zeta)*q^521 + (4*zeta^11 + 4*zeta^8 + 4*zeta^6 + 4*zeta^4 + 4*zeta^3 + 
4*zeta)*q^522 + (-28*zeta^11 + 48*zeta^9 - 24*zeta^8 + 24*zeta^6 - 28*zeta^4 + 
20*zeta^3 - 24*zeta + 24)*q^523 + (28*zeta^8 + 28*zeta^6 + 28*zeta)*q^524 + 
(-14*zeta^11 + 28*zeta^9 - 6*zeta^8 + 22*zeta^6 - 14*zeta^4 + 14*zeta^3 - 6*zeta
+ 14)*q^526 + (12*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 + 12*zeta^4 + 
20*zeta^3 - 4*zeta + 4)*q^527 + (12*zeta^11 + 12*zeta^4 + 12*zeta^3)*q^528 + 
(29*zeta^11 + 16*zeta^8 + 16*zeta^6 + 29*zeta^4 + 29*zeta^3 + 16*zeta)*q^529 + 
(-4*zeta^11 + 4*zeta^9 - 2*zeta^8 + 2*zeta^6 - 4*zeta^4 - 2*zeta + 2)*q^530 + 
(-4*zeta^11 + 8*zeta^9 + 8*zeta^6 - 4*zeta^4 + 4*zeta^3 + 4)*q^531 + (10*zeta^11
- 20*zeta^9 + 22*zeta^8 + 2*zeta^6 + 10*zeta^4 - 10*zeta^3 + 22*zeta - 10)*q^533
+ (20*zeta^11 - 12*zeta^9 + 6*zeta^8 - 6*zeta^6 + 20*zeta^4 + 8*zeta^3 + 6*zeta 
- 6)*q^534 + (-2*zeta^11 + 2*zeta^8 + 2*zeta^6 - 2*zeta^4 - 2*zeta^3 + 
2*zeta)*q^535 + (4*zeta^11 + 12*zeta^8 + 12*zeta^6 + 4*zeta^4 + 4*zeta^3 + 
12*zeta)*q^536 + (44*zeta^11 - 72*zeta^9 + 36*zeta^8 - 36*zeta^6 + 44*zeta^4 - 
28*zeta^3 + 36*zeta - 36)*q^537 + (7*zeta^11 - 14*zeta^9 - 2*zeta^8 - 16*zeta^6 
+ 7*zeta^4 - 7*zeta^3 - 2*zeta - 7)*q^538 + (6*zeta^11 - 12*zeta^9 + 16*zeta^8 +
4*zeta^6 + 6*zeta^4 - 6*zeta^3 + 16*zeta - 6)*q^540 + (22*zeta^11 - 28*zeta^9 + 
14*zeta^8 - 14*zeta^6 + 22*zeta^4 - 6*zeta^3 + 14*zeta - 14)*q^541 + 
(-10*zeta^11 + 14*zeta^8 + 14*zeta^6 - 10*zeta^4 - 10*zeta^3 + 14*zeta)*q^542 + 
(6*zeta^11 - 2*zeta^8 - 2*zeta^6 + 6*zeta^4 + 6*zeta^3 - 2*zeta)*q^543 + 
(-14*zeta^11 + 14*zeta^9 - 7*zeta^8 + 7*zeta^6 - 14*zeta^4 - 7*zeta + 7)*q^544 +
(-8*zeta^11 + 16*zeta^9 - 24*zeta^8 - 8*zeta^6 - 8*zeta^4 + 8*zeta^3 - 24*zeta +
8)*q^545 + (-12*zeta^11 + 24*zeta^9 - 44*zeta^8 - 20*zeta^6 - 12*zeta^4 + 
12*zeta^3 - 44*zeta + 12)*q^547 + (-20*zeta^11 + 60*zeta^9 - 30*zeta^8 + 
30*zeta^6 - 20*zeta^4 + 40*zeta^3 - 30*zeta + 30)*q^548 + (-22*zeta^11 - 
6*zeta^8 - 6*zeta^6 - 22*zeta^4 - 22*zeta^3 - 6*zeta)*q^549 + (-8*zeta^11 + 
6*zeta^8 + 6*zeta^6 - 8*zeta^4 - 8*zeta^3 + 6*zeta)*q^550 + (24*zeta^11 - 
32*zeta^9 + 16*zeta^8 - 16*zeta^6 + 24*zeta^4 - 8*zeta^3 + 16*zeta - 16)*q^551 +
(-20*zeta^11 + 40*zeta^9 - 36*zeta^8 + 4*zeta^6 - 20*zeta^4 + 20*zeta^3 - 
36*zeta + 20)*q^552 + (10*zeta^11 - 20*zeta^9 + 2*zeta^8 - 18*zeta^6 + 10*zeta^4
- 10*zeta^3 + 2*zeta - 10)*q^554 + (32*zeta^11 - 48*zeta^9 + 24*zeta^8 - 
24*zeta^6 + 32*zeta^4 - 16*zeta^3 + 24*zeta - 24)*q^555 + (24*zeta^11 + 
20*zeta^8 + 20*zeta^6 + 24*zeta^4 + 24*zeta^3 + 20*zeta)*q^556 + (26*zeta^11 + 
26*zeta^4 + 26*zeta^3)*q^557 + (8*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 + 
8*zeta^4 + 16*zeta^3 - 4*zeta + 4)*q^558 + (16*zeta^11 - 32*zeta^9 + 24*zeta^8 -
8*zeta^6 + 16*zeta^4 - 16*zeta^3 + 24*zeta - 16)*q^559 + (-12*zeta^11 + 
24*zeta^9 - 16*zeta^8 + 8*zeta^6 - 12*zeta^4 + 12*zeta^3 - 16*zeta + 12)*q^561 +
(-8*zeta^11 - 12*zeta^9 + 6*zeta^8 - 6*zeta^6 - 8*zeta^4 - 20*zeta^3 + 6*zeta - 
6)*q^562 + (-2*zeta^11 + 2*zeta^8 + 2*zeta^6 - 2*zeta^4 - 2*zeta^3 + 
2*zeta)*q^563 + (-12*zeta^11 + 4*zeta^8 + 4*zeta^6 - 12*zeta^4 - 12*zeta^3 + 
4*zeta)*q^564 + (-24*zeta^11 + 28*zeta^9 - 14*zeta^8 + 14*zeta^6 - 24*zeta^4 + 
4*zeta^3 - 14*zeta + 14)*q^565 + (6*zeta^11 - 12*zeta^9 - 12*zeta^6 + 6*zeta^4 -
6*zeta^3 - 6)*q^566 + (-26*zeta^11 + 52*zeta^9 - 30*zeta^8 + 22*zeta^6 - 
26*zeta^4 + 26*zeta^3 - 30*zeta + 26)*q^568 + (-20*zeta^11 + 28*zeta^9 - 
14*zeta^8 + 14*zeta^6 - 20*zeta^4 + 8*zeta^3 - 14*zeta + 14)*q^569 + (8*zeta^11 
+ 8*zeta^4 + 8*zeta^3)*q^570 + (24*zeta^11 - 4*zeta^8 - 4*zeta^6 + 24*zeta^4 + 
24*zeta^3 - 4*zeta)*q^571 + (20*zeta^11 - 4*zeta^9 + 2*zeta^8 - 2*zeta^6 + 
20*zeta^4 + 16*zeta^3 + 2*zeta - 2)*q^572 + (36*zeta^8 + 36*zeta^6 + 
36*zeta)*q^573 + (-12*zeta^11 + 24*zeta^9 - 58*zeta^8 - 34*zeta^6 - 12*zeta^4 + 
12*zeta^3 - 58*zeta + 12)*q^575 + (6*zeta^11 - 20*zeta^9 + 10*zeta^8 - 10*zeta^6
+ 6*zeta^4 - 14*zeta^3 + 10*zeta - 10)*q^576 + (-31*zeta^11 - 7*zeta^8 - 
7*zeta^6 - 31*zeta^4 - 31*zeta^3 - 7*zeta)*q^577 + (-12*zeta^11 + 17*zeta^8 + 
17*zeta^6 - 12*zeta^4 - 12*zeta^3 + 17*zeta)*q^578 + (-20*zeta^11 + 8*zeta^9 - 
4*zeta^8 + 4*zeta^6 - 20*zeta^4 - 12*zeta^3 - 4*zeta + 4)*q^579 + (16*zeta^11 - 
32*zeta^9 + 52*zeta^8 + 20*zeta^6 + 16*zeta^4 - 16*zeta^3 + 52*zeta - 16)*q^580 
+ (-10*zeta^11 + 20*zeta^9 - 8*zeta^8 + 12*zeta^6 - 10*zeta^4 + 10*zeta^3 - 
8*zeta + 10)*q^582 + (4*zeta^11 - 8*zeta^9 + 4*zeta^8 - 4*zeta^6 + 4*zeta^4 - 
4*zeta^3 + 4*zeta - 4)*q^583 + (-15*zeta^11 - 17*zeta^8 - 17*zeta^6 - 15*zeta^4 
- 15*zeta^3 - 17*zeta)*q^584 + (-16*zeta^11 - 4*zeta^8 - 4*zeta^6 - 16*zeta^4 - 
16*zeta^3 - 4*zeta)*q^585 + (18*zeta^11 + 2*zeta^9 - zeta^8 + zeta^6 + 18*zeta^4
+ 20*zeta^3 - zeta + 1)*q^586 + (-2*zeta^11 + 4*zeta^9 - 24*zeta^8 - 20*zeta^6 -
2*zeta^4 + 2*zeta^3 - 24*zeta + 2)*q^587 + (8*zeta^11 - 16*zeta^9 + 8*zeta^8 - 
8*zeta^6 + 8*zeta^4 - 8*zeta^3 + 8*zeta - 8)*q^589 + (-4*zeta^11 - 4*zeta^4 - 
4*zeta^3)*q^590 + (-4*zeta^11 - 4*zeta^4 - 4*zeta^3)*q^591 + (-12*zeta^11 - 
12*zeta^4 - 12*zeta^3)*q^592 + (-4*zeta^11 + 18*zeta^9 - 9*zeta^8 + 9*zeta^6 - 
4*zeta^4 + 14*zeta^3 - 9*zeta + 9)*q^593 + (4*zeta^11 - 8*zeta^9 + 4*zeta^8 - 
4*zeta^6 + 4*zeta^4 - 4*zeta^3 + 4*zeta - 4)*q^594 + (-4*zeta^11 + 8*zeta^9 - 
34*zeta^8 - 26*zeta^6 - 4*zeta^4 + 4*zeta^3 - 34*zeta + 4)*q^596 + (-48*zeta^11 
+ 80*zeta^9 - 40*zeta^8 + 40*zeta^6 - 48*zeta^4 + 32*zeta^3 - 40*zeta + 
40)*q^597 + (-14*zeta^11 + 14*zeta^8 + 14*zeta^6 - 14*zeta^4 - 14*zeta^3 + 
14*zeta)*q^598 + (-2*zeta^11 - 2*zeta^4 - 2*zeta^3)*q^599 + (34*zeta^11 - 
24*zeta^9 + 12*zeta^8 - 12*zeta^6 + 34*zeta^4 + 10*zeta^3 + 12*zeta - 12)*q^600 
+ (-5*zeta^11 + 10*zeta^9 - 18*zeta^8 - 8*zeta^6 - 5*zeta^4 + 5*zeta^3 - 18*zeta
+ 5)*q^601 + (8*zeta^11 - 16*zeta^9 + 16*zeta^8 + 8*zeta^4 - 8*zeta^3 + 16*zeta 
- 8)*q^603 + (-36*zeta^11 + 24*zeta^9 - 12*zeta^8 + 12*zeta^6 - 36*zeta^4 - 
12*zeta^3 - 12*zeta + 12)*q^604 + (-21*zeta^11 - 7*zeta^8 - 7*zeta^6 - 21*zeta^4
- 21*zeta^3 - 7*zeta)*q^605 + (10*zeta^11 - 30*zeta^8 - 30*zeta^6 + 10*zeta^4 + 
10*zeta^3 - 30*zeta)*q^606 + (-16*zeta^11 + 40*zeta^9 - 20*zeta^8 + 20*zeta^6 - 
16*zeta^4 + 24*zeta^3 - 20*zeta + 20)*q^607 + (-6*zeta^11 + 12*zeta^9 - 
16*zeta^8 - 4*zeta^6 - 6*zeta^4 + 6*zeta^3 - 16*zeta + 6)*q^608 + (8*zeta^11 - 
16*zeta^9 + 22*zeta^8 + 6*zeta^6 + 8*zeta^4 - 8*zeta^3 + 22*zeta - 8)*q^610 + 
(-12*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 - 12*zeta^4 - 4*zeta^3 - 4*zeta + 
4)*q^611 + (-14*zeta^11 + 14*zeta^8 + 14*zeta^6 - 14*zeta^4 - 14*zeta^3 + 
14*zeta)*q^612 + (8*zeta^11 - 8*zeta^8 - 8*zeta^6 + 8*zeta^4 + 8*zeta^3 - 
8*zeta)*q^613 + (16*zeta^11 - 20*zeta^9 + 10*zeta^8 - 10*zeta^6 + 16*zeta^4 - 
4*zeta^3 + 10*zeta - 10)*q^614 + (-16*zeta^11 + 32*zeta^9 - 52*zeta^8 - 
20*zeta^6 - 16*zeta^4 + 16*zeta^3 - 52*zeta + 16)*q^615 + (-6*zeta^11 + 
12*zeta^9 - 28*zeta^8 - 16*zeta^6 - 6*zeta^4 + 6*zeta^3 - 28*zeta + 6)*q^617 + 
(8*zeta^11 + 24*zeta^9 - 12*zeta^8 + 12*zeta^6 + 8*zeta^4 + 32*zeta^3 - 12*zeta 
+ 12)*q^618 + (24*zeta^11 + 12*zeta^8 + 12*zeta^6 + 24*zeta^4 + 24*zeta^3 + 
12*zeta)*q^619 + (4*zeta^11 + 8*zeta^8 + 8*zeta^6 + 4*zeta^4 + 4*zeta^3 + 
8*zeta)*q^620 + (20*zeta^11 - 24*zeta^9 + 12*zeta^8 - 12*zeta^6 + 20*zeta^4 - 
4*zeta^3 + 12*zeta - 12)*q^621 + (-18*zeta^11 + 36*zeta^9 - 8*zeta^8 + 28*zeta^6
- 18*zeta^4 + 18*zeta^3 - 8*zeta + 18)*q^622 + (6*zeta^11 - 12*zeta^9 - 
12*zeta^8 - 24*zeta^6 + 6*zeta^4 - 6*zeta^3 - 12*zeta - 6)*q^624 + (-21*zeta^11 
+ 18*zeta^9 - 9*zeta^8 + 9*zeta^6 - 21*zeta^4 - 3*zeta^3 - 9*zeta + 9)*q^625 + 
(7*zeta^11 - 15*zeta^8 - 15*zeta^6 + 7*zeta^4 + 7*zeta^3 - 15*zeta)*q^626 + 
(-8*zeta^11 - 8*zeta^8 - 8*zeta^6 - 8*zeta^4 - 8*zeta^3 - 8*zeta)*q^627 + 
(-42*zeta^11 + 14*zeta^9 - 7*zeta^8 + 7*zeta^6 - 42*zeta^4 - 28*zeta^3 - 7*zeta 
+ 7)*q^628 + (12*zeta^11 - 24*zeta^9 + 16*zeta^8 - 8*zeta^6 + 12*zeta^4 - 
12*zeta^3 + 16*zeta - 12)*q^629 + (8*zeta^11 - 16*zeta^9 + 28*zeta^8 + 12*zeta^6
+ 8*zeta^4 - 8*zeta^3 + 28*zeta - 8)*q^631 + (-24*zeta^11 + 40*zeta^9 - 
20*zeta^8 + 20*zeta^6 - 24*zeta^4 + 16*zeta^3 - 20*zeta + 20)*q^632 + 
(-16*zeta^11 - 24*zeta^8 - 24*zeta^6 - 16*zeta^4 - 16*zeta^3 - 24*zeta)*q^633 + 
(10*zeta^8 + 10*zeta^6 + 10*zeta)*q^634 + (-8*zeta^11 + 8*zeta^9 - 4*zeta^8 + 
4*zeta^6 - 8*zeta^4 - 4*zeta + 4)*q^635 + (-8*zeta^11 + 16*zeta^9 - 12*zeta^8 + 
4*zeta^6 - 8*zeta^4 + 8*zeta^3 - 12*zeta + 8)*q^636 + (4*zeta^11 - 8*zeta^9 + 
8*zeta^8 + 4*zeta^4 - 4*zeta^3 + 8*zeta - 4)*q^638 + (-28*zeta^11 + 24*zeta^9 - 
12*zeta^8 + 12*zeta^6 - 28*zeta^4 - 4*zeta^3 - 12*zeta + 12)*q^639 + 
(-29*zeta^11 - 17*zeta^8 - 17*zeta^6 - 29*zeta^4 - 29*zeta^3 - 17*zeta)*q^640 + 
(-10*zeta^11 - 2*zeta^8 - 2*zeta^6 - 10*zeta^4 - 10*zeta^3 - 2*zeta)*q^641 + 
(12*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 + 12*zeta^4 + 28*zeta^3 - 8*zeta +
8)*q^642 + (-30*zeta^11 + 60*zeta^9 - 52*zeta^8 + 8*zeta^6 - 30*zeta^4 + 
30*zeta^3 - 52*zeta + 30)*q^643 + (-16*zeta^11 + 32*zeta^9 - 48*zeta^8 - 
16*zeta^6 - 16*zeta^4 + 16*zeta^3 - 48*zeta + 16)*q^645 + (12*zeta^11 + 8*zeta^9
- 4*zeta^8 + 4*zeta^6 + 12*zeta^4 + 20*zeta^3 - 4*zeta + 4)*q^646 + (26*zeta^11 
+ 2*zeta^8 + 2*zeta^6 + 26*zeta^4 + 26*zeta^3 + 2*zeta)*q^647 + (4*zeta^11 - 
2*zeta^8 - 2*zeta^6 + 4*zeta^4 + 4*zeta^3 - 2*zeta)*q^648 + (-8*zeta^9 + 
4*zeta^8 - 4*zeta^6 - 8*zeta^3 + 4*zeta - 4)*q^649 + (-19*zeta^11 + 38*zeta^9 - 
4*zeta^8 + 34*zeta^6 - 19*zeta^4 + 19*zeta^3 - 4*zeta + 19)*q^650 + (-8*zeta^11 
+ 16*zeta^9 + 16*zeta^8 + 32*zeta^6 - 8*zeta^4 + 8*zeta^3 + 16*zeta + 8)*q^652 +
(40*zeta^11 - 68*zeta^9 + 34*zeta^8 - 34*zeta^6 + 40*zeta^4 - 28*zeta^3 + 
34*zeta - 34)*q^653 + (8*zeta^11 - 8*zeta^8 - 8*zeta^6 + 8*zeta^4 + 8*zeta^3 - 
8*zeta)*q^654 + (-44*zeta^11 - 20*zeta^8 - 20*zeta^6 - 44*zeta^4 - 44*zeta^3 - 
20*zeta)*q^655 + (24*zeta^11 - 30*zeta^9 + 15*zeta^8 - 15*zeta^6 + 24*zeta^4 - 
6*zeta^3 + 15*zeta - 15)*q^656 + (-14*zeta^11 + 28*zeta^9 - 36*zeta^8 - 8*zeta^6
- 14*zeta^4 + 14*zeta^3 - 36*zeta + 14)*q^657 + (8*zeta^11 - 16*zeta^9 + 
14*zeta^8 - 2*zeta^6 + 8*zeta^4 - 8*zeta^3 + 14*zeta - 8)*q^659 + (-32*zeta^11 +
40*zeta^9 - 20*zeta^8 + 20*zeta^6 - 32*zeta^4 + 8*zeta^3 - 20*zeta + 20)*q^660 +
(-19*zeta^11 - 11*zeta^8 - 11*zeta^6 - 19*zeta^4 - 19*zeta^3 - 11*zeta)*q^661 + 
(-4*zeta^8 - 4*zeta^6 - 4*zeta)*q^662 + (28*zeta^11 + 28*zeta^4 + 
28*zeta^3)*q^663 + (-28*zeta^11 + 56*zeta^9 - 28*zeta^8 + 28*zeta^6 - 28*zeta^4 
+ 28*zeta^3 - 28*zeta + 28)*q^664 + (8*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6
+ 8*zeta^4 - 8*zeta^3 + 8*zeta - 8)*q^666 + (64*zeta^11 - 88*zeta^9 + 44*zeta^8 
- 44*zeta^6 + 64*zeta^4 - 24*zeta^3 + 44*zeta - 44)*q^667 + (42*zeta^11 - 
14*zeta^8 - 14*zeta^6 + 42*zeta^4 + 42*zeta^3 - 14*zeta)*q^668 + (-40*zeta^11 - 
24*zeta^8 - 24*zeta^6 - 40*zeta^4 - 40*zeta^3 - 24*zeta)*q^669 + (-8*zeta^11 + 
16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 8*zeta^4 + 8*zeta^3 - 8*zeta + 8)*q^670 + 
(-6*zeta^11 + 12*zeta^9 - 28*zeta^8 - 16*zeta^6 - 6*zeta^4 + 6*zeta^3 - 28*zeta 
+ 6)*q^671 + (8*zeta^11 - 16*zeta^9 + 28*zeta^8 + 12*zeta^6 + 8*zeta^4 - 
8*zeta^3 + 28*zeta - 8)*q^673 + (-24*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 - 
24*zeta^4 - 16*zeta^3 - 4*zeta + 4)*q^674 + (-10*zeta^11 - 8*zeta^8 - 8*zeta^6 -
10*zeta^4 - 10*zeta^3 - 8*zeta)*q^675 + (19*zeta^11 - 18*zeta^8 - 18*zeta^6 + 
19*zeta^4 + 19*zeta^3 - 18*zeta)*q^676 + (32*zeta^11 - 62*zeta^9 + 31*zeta^8 - 
31*zeta^6 + 32*zeta^4 - 30*zeta^3 + 31*zeta - 31)*q^677 + (-28*zeta^11 + 
56*zeta^9 - 12*zeta^8 + 44*zeta^6 - 28*zeta^4 + 28*zeta^3 - 12*zeta + 28)*q^678 
+ (10*zeta^11 - 20*zeta^9 + 18*zeta^8 - 2*zeta^6 + 10*zeta^4 - 10*zeta^3 + 
18*zeta - 10)*q^680 + (-64*zeta^11 + 72*zeta^9 - 36*zeta^8 + 36*zeta^6 - 
64*zeta^4 + 8*zeta^3 - 36*zeta + 36)*q^681 + (-4*zeta^11 + 12*zeta^8 + 12*zeta^6
- 4*zeta^4 - 4*zeta^3 + 12*zeta)*q^682 + (-18*zeta^11 - 4*zeta^8 - 4*zeta^6 - 
18*zeta^4 - 18*zeta^3 - 4*zeta)*q^683 + (-8*zeta^11 + 24*zeta^9 - 12*zeta^8 + 
12*zeta^6 - 8*zeta^4 + 16*zeta^3 - 12*zeta + 12)*q^684 + (20*zeta^11 - 40*zeta^9
+ 60*zeta^8 + 20*zeta^6 + 20*zeta^4 - 20*zeta^3 + 60*zeta - 20)*q^685 + 
(6*zeta^11 - 12*zeta^9 + 4*zeta^8 - 8*zeta^6 + 6*zeta^4 - 6*zeta^3 + 4*zeta - 
6)*q^687 + (24*zeta^11 - 24*zeta^9 + 12*zeta^8 - 12*zeta^6 + 24*zeta^4 + 12*zeta
- 12)*q^688 + (-6*zeta^11 + 2*zeta^8 + 2*zeta^6 - 6*zeta^4 - 6*zeta^3 + 
2*zeta)*q^689 + (20*zeta^11 + 4*zeta^8 + 4*zeta^6 + 20*zeta^4 + 20*zeta^3 + 
4*zeta)*q^690 + (4*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 + 4*zeta^4 + 
12*zeta^3 - 4*zeta + 4)*q^691 + (-23*zeta^11 + 46*zeta^9 - 52*zeta^8 - 6*zeta^6 
- 23*zeta^4 + 23*zeta^3 - 52*zeta + 23)*q^692 + (14*zeta^11 - 28*zeta^9 + 
22*zeta^8 - 6*zeta^6 + 14*zeta^4 - 14*zeta^3 + 22*zeta - 14)*q^694 + 
(-72*zeta^11 + 104*zeta^9 - 52*zeta^8 + 52*zeta^6 - 72*zeta^4 + 32*zeta^3 - 
52*zeta + 52)*q^695 + (-20*zeta^11 - 4*zeta^8 - 4*zeta^6 - 20*zeta^4 - 20*zeta^3
- 4*zeta)*q^696 + (-14*zeta^11 - 14*zeta^4 - 14*zeta^3)*q^697 + (14*zeta^9 - 
7*zeta^8 + 7*zeta^6 + 14*zeta^3 - 7*zeta + 7)*q^698 + (20*zeta^11 - 40*zeta^9 + 
24*zeta^8 - 16*zeta^6 + 20*zeta^4 - 20*zeta^3 + 24*zeta - 20)*q^699 + (2*zeta^11
- 4*zeta^9 - 16*zeta^8 - 20*zeta^6 + 2*zeta^4 - 2*zeta^3 - 16*zeta - 2)*q^701 + 
(-8*zeta^11 - 4*zeta^9 + 2*zeta^8 - 2*zeta^6 - 8*zeta^4 - 12*zeta^3 + 2*zeta - 
2)*q^702 + (8*zeta^11 + 8*zeta^8 + 8*zeta^6 + 8*zeta^4 + 8*zeta^3 + 
8*zeta)*q^703 + (10*zeta^11 - 4*zeta^8 - 4*zeta^6 + 10*zeta^4 + 10*zeta^3 - 
4*zeta)*q^704 + (24*zeta^11 - 32*zeta^9 + 16*zeta^8 - 16*zeta^6 + 24*zeta^4 - 
8*zeta^3 + 16*zeta - 16)*q^705 + (7*zeta^11 - 14*zeta^9 - 2*zeta^8 - 16*zeta^6 +
7*zeta^4 - 7*zeta^3 - 2*zeta - 7)*q^706 + (-20*zeta^11 + 40*zeta^9 - 16*zeta^8 +
24*zeta^6 - 20*zeta^4 + 20*zeta^3 - 16*zeta + 20)*q^708 + (-48*zeta^11 + 
56*zeta^9 - 28*zeta^8 + 28*zeta^6 - 48*zeta^4 + 8*zeta^3 - 28*zeta + 28)*q^709 +
(14*zeta^11 - 2*zeta^8 - 2*zeta^6 + 14*zeta^4 + 14*zeta^3 - 2*zeta)*q^710 + 
(-24*zeta^11 - 8*zeta^8 - 8*zeta^6 - 24*zeta^4 - 24*zeta^3 - 8*zeta)*q^711 + 
(22*zeta^11 - 46*zeta^9 + 23*zeta^8 - 23*zeta^6 + 22*zeta^4 - 24*zeta^3 + 
23*zeta - 23)*q^712 + (12*zeta^11 - 24*zeta^9 + 16*zeta^8 - 8*zeta^6 + 12*zeta^4
- 12*zeta^3 + 16*zeta - 12)*q^713 + (-4*zeta^11 + 8*zeta^9 - 20*zeta^8 - 
12*zeta^6 - 4*zeta^4 + 4*zeta^3 - 20*zeta + 4)*q^715 + (50*zeta^11 - 52*zeta^9 +
26*zeta^8 - 26*zeta^6 + 50*zeta^4 - 2*zeta^3 + 26*zeta - 26)*q^716 + (28*zeta^11
+ 8*zeta^8 + 8*zeta^6 + 28*zeta^4 + 28*zeta^3 + 8*zeta)*q^717 + (4*zeta^11 - 
10*zeta^8 - 10*zeta^6 + 4*zeta^4 + 4*zeta^3 - 10*zeta)*q^718 + (56*zeta^11 - 
64*zeta^9 + 32*zeta^8 - 32*zeta^6 + 56*zeta^4 - 8*zeta^3 + 32*zeta - 32)*q^719 +
(-6*zeta^11 + 12*zeta^9 - 24*zeta^8 - 12*zeta^6 - 6*zeta^4 + 6*zeta^3 - 24*zeta 
+ 6)*q^720 + (-11*zeta^11 + 22*zeta^9 - 11*zeta^8 + 11*zeta^6 - 11*zeta^4 + 
11*zeta^3 - 11*zeta + 11)*q^722 + (36*zeta^11 - 60*zeta^9 + 30*zeta^8 - 
30*zeta^6 + 36*zeta^4 - 24*zeta^3 + 30*zeta - 30)*q^723 + (zeta^11 + 9*zeta^8 + 
9*zeta^6 + zeta^4 + zeta^3 + 9*zeta)*q^724 + (-38*zeta^11 - 18*zeta^8 - 
18*zeta^6 - 38*zeta^4 - 38*zeta^3 - 18*zeta)*q^725 + (14*zeta^11 + 14*zeta^4 + 
14*zeta^3)*q^726 + (6*zeta^11 - 12*zeta^9 + 16*zeta^8 + 4*zeta^6 + 6*zeta^4 - 
6*zeta^3 + 16*zeta - 6)*q^727 + (-2*zeta^8 - 2*zeta^6 - 2*zeta)*q^729 + 
(22*zeta^11 - 36*zeta^9 + 18*zeta^8 - 18*zeta^6 + 22*zeta^4 - 14*zeta^3 + 
18*zeta - 18)*q^730 + (-16*zeta^11 + 8*zeta^8 + 8*zeta^6 - 16*zeta^4 - 16*zeta^3
+ 8*zeta)*q^731 + (34*zeta^11 + 26*zeta^8 + 26*zeta^6 + 34*zeta^4 + 34*zeta^3 + 
26*zeta)*q^732 + (62*zeta^11 - 82*zeta^9 + 41*zeta^8 - 41*zeta^6 + 62*zeta^4 - 
20*zeta^3 + 41*zeta - 41)*q^733 + (16*zeta^11 - 32*zeta^9 + 8*zeta^8 - 24*zeta^6
+ 16*zeta^4 - 16*zeta^3 + 8*zeta - 16)*q^734 + (-14*zeta^11 + 28*zeta^9 - 
42*zeta^8 - 14*zeta^6 - 14*zeta^4 + 14*zeta^3 - 42*zeta + 14)*q^736 + 
(16*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 16*zeta^4 + 8*zeta - 8)*q^737 + 
(-6*zeta^11 + 2*zeta^8 + 2*zeta^6 - 6*zeta^4 - 6*zeta^3 + 2*zeta)*q^738 + 
(8*zeta^11 - 8*zeta^8 - 8*zeta^6 + 8*zeta^4 + 8*zeta^3 - 8*zeta)*q^739 + 
(32*zeta^11 - 40*zeta^9 + 20*zeta^8 - 20*zeta^6 + 32*zeta^4 - 8*zeta^3 + 20*zeta
- 20)*q^740 + (16*zeta^11 - 32*zeta^9 + 24*zeta^8 - 8*zeta^6 + 16*zeta^4 - 
16*zeta^3 + 24*zeta - 16)*q^741 + (-12*zeta^11 + 24*zeta^9 - 58*zeta^8 - 
34*zeta^6 - 12*zeta^4 + 12*zeta^3 - 58*zeta + 12)*q^743 + (8*zeta^11 + 24*zeta^9
- 12*zeta^8 + 12*zeta^6 + 8*zeta^4 + 32*zeta^3 - 12*zeta + 12)*q^744 + 
(50*zeta^11 + 22*zeta^8 + 22*zeta^6 + 50*zeta^4 + 50*zeta^3 + 22*zeta)*q^745 + 
(8*zeta^11 - 30*zeta^8 - 30*zeta^6 + 8*zeta^4 + 8*zeta^3 - 30*zeta)*q^746 + 
(-24*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 24*zeta^4 - 8*zeta^3 - 8*zeta +
8)*q^747 + (14*zeta^11 - 28*zeta^9 - 28*zeta^6 + 14*zeta^4 - 14*zeta^3 - 
14)*q^748 + (8*zeta^11 - 16*zeta^9 - 16*zeta^6 + 8*zeta^4 - 8*zeta^3 - 8)*q^750 
+ (16*zeta^11 - 24*zeta^9 + 12*zeta^8 - 12*zeta^6 + 16*zeta^4 - 8*zeta^3 + 
12*zeta - 12)*q^751 + (-6*zeta^11 - 6*zeta^8 - 6*zeta^6 - 6*zeta^4 - 6*zeta^3 - 
6*zeta)*q^752 + (20*zeta^11 + 12*zeta^8 + 12*zeta^6 + 20*zeta^4 + 20*zeta^3 + 
12*zeta)*q^753 + (-12*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 - 12*zeta^4 - 
4*zeta^3 - 4*zeta + 4)*q^754 + (12*zeta^11 - 24*zeta^9 + 48*zeta^8 + 24*zeta^6 +
12*zeta^4 - 12*zeta^3 + 48*zeta - 12)*q^755 + (-4*zeta^11 + 8*zeta^9 + 24*zeta^8
+ 32*zeta^6 - 4*zeta^4 + 4*zeta^3 + 24*zeta + 4)*q^757 + (20*zeta^11 + 16*zeta^9
- 8*zeta^8 + 8*zeta^6 + 20*zeta^4 + 36*zeta^3 - 8*zeta + 8)*q^758 + (-24*zeta^11
- 16*zeta^8 - 16*zeta^6 - 24*zeta^4 - 24*zeta^3 - 16*zeta)*q^759 + (12*zeta^11 +
8*zeta^8 + 8*zeta^6 + 12*zeta^4 + 12*zeta^3 + 8*zeta)*q^760 + (-32*zeta^11 + 
18*zeta^9 - 9*zeta^8 + 9*zeta^6 - 32*zeta^4 - 14*zeta^3 - 9*zeta + 9)*q^761 + 
(-16*zeta^11 + 32*zeta^9 - 8*zeta^8 + 24*zeta^6 - 16*zeta^4 + 16*zeta^3 - 8*zeta
+ 16)*q^762 + (36*zeta^11 - 72*zeta^9 + 54*zeta^8 - 18*zeta^6 + 36*zeta^4 - 
36*zeta^3 + 54*zeta - 36)*q^764 + (20*zeta^11 - 24*zeta^9 + 12*zeta^8 - 
12*zeta^6 + 20*zeta^4 - 4*zeta^3 + 12*zeta - 12)*q^765 + (4*zeta^11 - 28*zeta^8 
- 28*zeta^6 + 4*zeta^4 + 4*zeta^3 - 28*zeta)*q^766 + (-8*zeta^11 + 12*zeta^8 + 
12*zeta^6 - 8*zeta^4 - 8*zeta^3 + 12*zeta)*q^767 + (-22*zeta^11 - 4*zeta^9 + 
2*zeta^8 - 2*zeta^6 - 22*zeta^4 - 26*zeta^3 + 2*zeta - 2)*q^768 + (21*zeta^11 - 
42*zeta^9 + 42*zeta^8 + 21*zeta^4 - 21*zeta^3 + 42*zeta - 21)*q^769 + 
(-30*zeta^11 + 60*zeta^9 - 64*zeta^8 - 4*zeta^6 - 30*zeta^4 + 30*zeta^3 - 
64*zeta + 30)*q^771 + (2*zeta^11 + 36*zeta^9 - 18*zeta^8 + 18*zeta^6 + 2*zeta^4 
+ 38*zeta^3 - 18*zeta + 18)*q^772 + (-5*zeta^11 - 11*zeta^8 - 11*zeta^6 - 
5*zeta^4 - 5*zeta^3 - 11*zeta)*q^773 + (-8*zeta^11 + 8*zeta^8 + 8*zeta^6 - 
8*zeta^4 - 8*zeta^3 + 8*zeta)*q^774 + (-16*zeta^11 + 4*zeta^9 - 2*zeta^8 + 
2*zeta^6 - 16*zeta^4 - 12*zeta^3 - 2*zeta + 2)*q^775 + (7*zeta^11 - 14*zeta^9 - 
14*zeta^6 + 7*zeta^4 - 7*zeta^3 - 7)*q^776 + (6*zeta^11 - 12*zeta^9 - 4*zeta^8 -
16*zeta^6 + 6*zeta^4 - 6*zeta^3 - 4*zeta - 6)*q^778 + (-20*zeta^11 + 32*zeta^9 -
16*zeta^8 + 16*zeta^6 - 20*zeta^4 + 12*zeta^3 - 16*zeta + 16)*q^779 + 
(24*zeta^11 + 20*zeta^8 + 20*zeta^6 + 24*zeta^4 + 24*zeta^3 + 20*zeta)*q^780 + 
(-12*zeta^11 - 16*zeta^8 - 16*zeta^6 - 12*zeta^4 - 12*zeta^3 - 16*zeta)*q^781 + 
(20*zeta^11 + 4*zeta^9 - 2*zeta^8 + 2*zeta^6 + 20*zeta^4 + 24*zeta^3 - 2*zeta + 
2)*q^782 + (4*zeta^11 - 8*zeta^9 + 16*zeta^8 + 8*zeta^6 + 4*zeta^4 - 4*zeta^3 + 
16*zeta - 4)*q^783 + (10*zeta^11 - 20*zeta^9 + 46*zeta^8 + 26*zeta^6 + 10*zeta^4
- 10*zeta^3 + 46*zeta - 10)*q^785 + (8*zeta^11 - 32*zeta^9 + 16*zeta^8 - 
16*zeta^6 + 8*zeta^4 - 24*zeta^3 + 16*zeta - 16)*q^786 + (28*zeta^11 - 8*zeta^8 
- 8*zeta^6 + 28*zeta^4 + 28*zeta^3 - 8*zeta)*q^787 + (-2*zeta^11 - 4*zeta^8 - 
4*zeta^6 - 2*zeta^4 - 2*zeta^3 - 4*zeta)*q^788 + (-20*zeta^11 + 8*zeta^9 - 
4*zeta^8 + 4*zeta^6 - 20*zeta^4 - 12*zeta^3 - 4*zeta + 4)*q^789 + (8*zeta^11 - 
16*zeta^9 + 24*zeta^8 + 8*zeta^6 + 8*zeta^4 - 8*zeta^3 + 24*zeta - 8)*q^790 + 
(4*zeta^11 - 8*zeta^9 - 4*zeta^8 - 12*zeta^6 + 4*zeta^4 - 4*zeta^3 - 4*zeta - 
4)*q^792 + (34*zeta^11 - 60*zeta^9 + 30*zeta^8 - 30*zeta^6 + 34*zeta^4 - 
26*zeta^3 + 30*zeta - 30)*q^793 + (-13*zeta^11 + 29*zeta^8 + 29*zeta^6 - 
13*zeta^4 - 13*zeta^3 + 29*zeta)*q^794 + (12*zeta^11 + 4*zeta^8 + 4*zeta^6 + 
12*zeta^4 + 12*zeta^3 + 4*zeta)*q^795 + (-56*zeta^11 + 56*zeta^9 - 28*zeta^8 + 
28*zeta^6 - 56*zeta^4 - 28*zeta + 28)*q^796 + (-13*zeta^11 + 26*zeta^9 - 
16*zeta^8 + 10*zeta^6 - 13*zeta^4 + 13*zeta^3 - 16*zeta + 13)*q^797 + 
(-4*zeta^11 + 8*zeta^9 + 4*zeta^8 + 12*zeta^6 - 4*zeta^4 + 4*zeta^3 + 4*zeta + 
4)*q^799 + (37*zeta^11 - 48*zeta^9 + 24*zeta^8 - 24*zeta^6 + 37*zeta^4 - 
11*zeta^3 + 24*zeta - 24)*q^800 + (26*zeta^11 + 6*zeta^8 + 6*zeta^6 + 26*zeta^4 
+ 26*zeta^3 + 6*zeta)*q^801 + (-10*zeta^11 + 18*zeta^8 + 18*zeta^6 - 10*zeta^4 -
10*zeta^3 + 18*zeta)*q^802 + (-36*zeta^11 + 44*zeta^9 - 22*zeta^8 + 22*zeta^6 - 
36*zeta^4 + 8*zeta^3 - 22*zeta + 22)*q^803 + (8*zeta^11 - 16*zeta^9 - 16*zeta^8 
- 32*zeta^6 + 8*zeta^4 - 8*zeta^3 - 16*zeta - 8)*q^804 + (-32*zeta^11 + 
64*zeta^9 - 20*zeta^8 + 44*zeta^6 - 32*zeta^4 + 32*zeta^3 - 20*zeta + 32)*q^806 
+ (40*zeta^11 - 44*zeta^9 + 22*zeta^8 - 22*zeta^6 + 40*zeta^4 - 4*zeta^3 + 
22*zeta - 22)*q^807 + (-15*zeta^11 + 25*zeta^8 + 25*zeta^6 - 15*zeta^4 - 
15*zeta^3 + 25*zeta)*q^808 + (10*zeta^11 + 24*zeta^8 + 24*zeta^6 + 10*zeta^4 + 
10*zeta^3 + 24*zeta)*q^809 + (-4*zeta^11 + 4*zeta^9 - 2*zeta^8 + 2*zeta^6 - 
4*zeta^4 - 2*zeta + 2)*q^810 + (-4*zeta^11 + 8*zeta^9 - 20*zeta^8 - 12*zeta^6 - 
4*zeta^4 + 4*zeta^3 - 20*zeta + 4)*q^811 + (20*zeta^11 - 40*zeta^9 + 32*zeta^8 -
8*zeta^6 + 20*zeta^4 - 20*zeta^3 + 32*zeta - 20)*q^813 + (8*zeta^11 + 8*zeta^4 +
8*zeta^3)*q^814 + (-32*zeta^11 - 16*zeta^8 - 16*zeta^6 - 32*zeta^4 - 32*zeta^3 -
16*zeta)*q^815 + (6*zeta^11 + 18*zeta^8 + 18*zeta^6 + 6*zeta^4 + 6*zeta^3 + 
18*zeta)*q^816 + (-16*zeta^11 + 32*zeta^9 - 16*zeta^8 + 16*zeta^6 - 16*zeta^4 + 
16*zeta^3 - 16*zeta + 16)*q^817 + (-19*zeta^11 + 38*zeta^9 - 20*zeta^8 + 
18*zeta^6 - 19*zeta^4 + 19*zeta^3 - 20*zeta + 19)*q^818 + (-12*zeta^11 + 
24*zeta^9 - 46*zeta^8 - 22*zeta^6 - 12*zeta^4 + 12*zeta^3 - 46*zeta + 12)*q^820 
+ (-6*zeta^11 + 28*zeta^9 - 14*zeta^8 + 14*zeta^6 - 6*zeta^4 + 22*zeta^3 - 
14*zeta + 14)*q^821 + (-20*zeta^11 + 20*zeta^8 + 20*zeta^6 - 20*zeta^4 - 
20*zeta^3 + 20*zeta)*q^822 + (4*zeta^11 + 12*zeta^8 + 12*zeta^6 + 4*zeta^4 + 
4*zeta^3 + 12*zeta)*q^823 + (-20*zeta^11 - 4*zeta^9 + 2*zeta^8 - 2*zeta^6 - 
20*zeta^4 - 24*zeta^3 + 2*zeta - 2)*q^824 + (16*zeta^11 - 32*zeta^9 + 36*zeta^8 
+ 4*zeta^6 + 16*zeta^4 - 16*zeta^3 + 36*zeta - 16)*q^825 + (4*zeta^11 - 8*zeta^9
+ 50*zeta^8 + 42*zeta^6 + 4*zeta^4 - 4*zeta^3 + 50*zeta - 4)*q^827 + 
(-28*zeta^11 + 56*zeta^9 - 28*zeta^8 + 28*zeta^6 - 28*zeta^4 + 28*zeta^3 - 
28*zeta + 28)*q^828 + (3*zeta^11 - 9*zeta^8 - 9*zeta^6 + 3*zeta^4 + 3*zeta^3 - 
9*zeta)*q^829 + (12*zeta^11 - 4*zeta^8 - 4*zeta^6 + 12*zeta^4 + 12*zeta^3 - 
4*zeta)*q^830 + (28*zeta^11 - 24*zeta^9 + 12*zeta^8 - 12*zeta^6 + 28*zeta^4 + 
4*zeta^3 + 12*zeta - 12)*q^831 + (15*zeta^11 - 30*zeta^9 - 2*zeta^8 - 32*zeta^6 
+ 15*zeta^4 - 15*zeta^3 - 2*zeta - 15)*q^832 + (16*zeta^11 - 32*zeta^9 + 
24*zeta^8 - 8*zeta^6 + 16*zeta^4 - 16*zeta^3 + 24*zeta - 16)*q^834 + 
(-84*zeta^11 + 112*zeta^9 - 56*zeta^8 + 56*zeta^6 - 84*zeta^4 + 28*zeta^3 - 
56*zeta + 56)*q^835 + (-12*zeta^11 + 4*zeta^8 + 4*zeta^6 - 12*zeta^4 - 12*zeta^3
+ 4*zeta)*q^836 + (4*zeta^11 - 4*zeta^8 - 4*zeta^6 + 4*zeta^4 + 4*zeta^3 - 
4*zeta)*q^837 + (36*zeta^11 + 4*zeta^9 - 2*zeta^8 + 2*zeta^6 + 36*zeta^4 + 
40*zeta^3 - 2*zeta + 2)*q^838 + (2*zeta^11 - 4*zeta^9 + 52*zeta^8 + 48*zeta^6 + 
2*zeta^4 - 2*zeta^3 + 52*zeta - 2)*q^839 + (16*zeta^11 - 32*zeta^9 + 27*zeta^8 -
5*zeta^6 + 16*zeta^4 - 16*zeta^3 + 27*zeta - 16)*q^841 + (-6*zeta^11 - 32*zeta^9
+ 16*zeta^8 - 16*zeta^6 - 6*zeta^4 - 38*zeta^3 + 16*zeta - 16)*q^842 + 
(4*zeta^11 - 12*zeta^8 - 12*zeta^6 + 4*zeta^4 + 4*zeta^3 - 12*zeta)*q^843 + 
(-32*zeta^11 + 20*zeta^8 + 20*zeta^6 - 32*zeta^4 - 32*zeta^3 + 20*zeta)*q^844 + 
(-28*zeta^11 + 34*zeta^9 - 17*zeta^8 + 17*zeta^6 - 28*zeta^4 + 6*zeta^3 - 
17*zeta + 17)*q^845 + (-4*zeta^11 + 8*zeta^9 + 8*zeta^6 - 4*zeta^4 + 4*zeta^3 + 
4)*q^846 + (-6*zeta^8 - 6*zeta^6 - 6*zeta)*q^848 + (24*zeta^11 - 24*zeta^9 + 
12*zeta^8 - 12*zeta^6 + 24*zeta^4 + 12*zeta - 12)*q^849 + (5*zeta^11 - 27*zeta^8
- 27*zeta^6 + 5*zeta^4 + 5*zeta^3 - 27*zeta)*q^850 + (24*zeta^11 + 16*zeta^8 + 
16*zeta^6 + 24*zeta^4 + 24*zeta^3 + 16*zeta)*q^851 + (20*zeta^11 - 88*zeta^9 + 
44*zeta^8 - 44*zeta^6 + 20*zeta^4 - 68*zeta^3 + 44*zeta - 44)*q^852 + 
(-35*zeta^11 + 70*zeta^9 - 70*zeta^8 - 35*zeta^4 + 35*zeta^3 - 70*zeta + 
35)*q^853 + (8*zeta^11 - 16*zeta^9 + 24*zeta^8 + 8*zeta^6 + 8*zeta^4 - 8*zeta^3 
+ 24*zeta - 8)*q^855 + (-10*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 - 
10*zeta^4 - 26*zeta^3 + 8*zeta - 8)*q^856 + (15*zeta^11 + zeta^8 + zeta^6 + 
15*zeta^4 + 15*zeta^3 + zeta)*q^857 + (-4*zeta^11 + 20*zeta^8 + 20*zeta^6 - 
4*zeta^4 - 4*zeta^3 + 20*zeta)*q^858 + (68*zeta^11 - 100*zeta^9 + 50*zeta^8 - 
50*zeta^6 + 68*zeta^4 - 32*zeta^3 + 50*zeta - 50)*q^859 + (-8*zeta^11 + 
16*zeta^9 - 40*zeta^8 - 24*zeta^6 - 8*zeta^4 + 8*zeta^3 - 40*zeta + 8)*q^860 + 
(2*zeta^11 - 4*zeta^9 - 10*zeta^8 - 14*zeta^6 + 2*zeta^4 - 2*zeta^3 - 10*zeta - 
2)*q^862 + (22*zeta^11 - 28*zeta^9 + 14*zeta^8 - 14*zeta^6 + 22*zeta^4 - 
6*zeta^3 + 14*zeta - 14)*q^863 + (-8*zeta^11 - 2*zeta^8 - 2*zeta^6 - 8*zeta^4 - 
8*zeta^3 - 2*zeta)*q^864 + (62*zeta^11 + 24*zeta^8 + 24*zeta^6 + 62*zeta^4 + 
62*zeta^3 + 24*zeta)*q^865 + (-16*zeta^11 + 6*zeta^9 - 3*zeta^8 + 3*zeta^6 - 
16*zeta^4 - 10*zeta^3 - 3*zeta + 3)*q^866 + (24*zeta^11 - 48*zeta^9 + 38*zeta^8 
- 10*zeta^6 + 24*zeta^4 - 24*zeta^3 + 38*zeta - 24)*q^867 + (-8*zeta^11 + 
16*zeta^9 - 32*zeta^8 - 16*zeta^6 - 8*zeta^4 + 8*zeta^3 - 32*zeta + 8)*q^869 + 
(24*zeta^11 - 32*zeta^9 + 16*zeta^8 - 16*zeta^6 + 24*zeta^4 - 8*zeta^3 + 16*zeta
- 16)*q^870 + (-8*zeta^11 - 16*zeta^8 - 16*zeta^6 - 8*zeta^4 - 8*zeta^3 - 
16*zeta)*q^871 + (4*zeta^11 + 12*zeta^8 + 12*zeta^6 + 4*zeta^4 + 4*zeta^3 + 
12*zeta)*q^872 + (-4*zeta^11 + 12*zeta^9 - 6*zeta^8 + 6*zeta^6 - 4*zeta^4 + 
8*zeta^3 - 6*zeta + 6)*q^873 + (12*zeta^11 - 24*zeta^9 + 16*zeta^8 - 8*zeta^6 + 
12*zeta^4 - 12*zeta^3 + 16*zeta - 12)*q^874 + (2*zeta^11 - 4*zeta^9 + 52*zeta^8 
+ 48*zeta^6 + 2*zeta^4 - 2*zeta^3 + 52*zeta - 2)*q^876 + (-16*zeta^11 + 
16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 16*zeta^4 - 8*zeta + 8)*q^877 + (-8*zeta^11 + 
32*zeta^8 + 32*zeta^6 - 8*zeta^4 - 8*zeta^3 + 32*zeta)*q^878 + (-34*zeta^11 + 
2*zeta^8 + 2*zeta^6 - 34*zeta^4 - 34*zeta^3 + 2*zeta)*q^879 + (-24*zeta^11 + 
36*zeta^9 - 18*zeta^8 + 18*zeta^6 - 24*zeta^4 + 12*zeta^3 - 18*zeta + 18)*q^880 
+ (-3*zeta^11 + 6*zeta^9 + 20*zeta^8 + 26*zeta^6 - 3*zeta^4 + 3*zeta^3 + 20*zeta
+ 3)*q^881 + (8*zeta^11 - 16*zeta^9 - 16*zeta^6 + 8*zeta^4 - 8*zeta^3 - 8)*q^883
+ (-14*zeta^11 - 56*zeta^9 + 28*zeta^8 - 28*zeta^6 - 14*zeta^4 - 70*zeta^3 + 
28*zeta - 28)*q^884 + (8*zeta^11 + 8*zeta^4 + 8*zeta^3)*q^885 + (12*zeta^11 + 
6*zeta^8 + 6*zeta^6 + 12*zeta^4 + 12*zeta^3 + 6*zeta)*q^886 + (-4*zeta^11 + 
4*zeta^9 - 2*zeta^8 + 2*zeta^6 - 4*zeta^4 - 2*zeta + 2)*q^887 + (8*zeta^11 - 
16*zeta^9 - 8*zeta^8 - 24*zeta^6 + 8*zeta^4 - 8*zeta^3 - 8*zeta - 8)*q^888 + 
(-10*zeta^11 + 20*zeta^9 - 26*zeta^8 - 6*zeta^6 - 10*zeta^4 + 10*zeta^3 - 
26*zeta + 10)*q^890 + (4*zeta^11 - 8*zeta^9 + 4*zeta^8 - 4*zeta^6 + 4*zeta^4 - 
4*zeta^3 + 4*zeta - 4)*q^891 + (-44*zeta^11 - 4*zeta^8 - 4*zeta^6 - 44*zeta^4 - 
44*zeta^3 - 4*zeta)*q^892 + (8*zeta^11 + 8*zeta^4 + 8*zeta^3)*q^893 + 
(-12*zeta^11 + 32*zeta^9 - 16*zeta^8 + 16*zeta^6 - 12*zeta^4 + 20*zeta^3 - 
16*zeta + 16)*q^894 + (-22*zeta^11 + 44*zeta^9 - 80*zeta^8 - 36*zeta^6 - 
22*zeta^4 + 22*zeta^3 - 80*zeta + 22)*q^895 + (28*zeta^11 - 56*zeta^9 + 
56*zeta^8 + 28*zeta^4 - 28*zeta^3 + 56*zeta - 28)*q^897 + (6*zeta^11 + 16*zeta^9
- 8*zeta^8 + 8*zeta^6 + 6*zeta^4 + 22*zeta^3 - 8*zeta + 8)*q^898 + (8*zeta^11 + 
8*zeta^4 + 8*zeta^3)*q^899 + (26*zeta^11 - 4*zeta^8 - 4*zeta^6 + 26*zeta^4 + 
26*zeta^3 - 4*zeta)*q^900 + (8*zeta^11 - 4*zeta^9 + 2*zeta^8 - 2*zeta^6 + 
8*zeta^4 + 4*zeta^3 + 2*zeta - 2)*q^901 + (2*zeta^11 - 4*zeta^9 - 4*zeta^8 - 
8*zeta^6 + 2*zeta^4 - 2*zeta^3 - 4*zeta - 2)*q^902 + (30*zeta^11 - 60*zeta^9 + 
26*zeta^8 - 34*zeta^6 + 30*zeta^4 - 30*zeta^3 + 26*zeta - 30)*q^904 + 
(-10*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 10*zeta^4 + 6*zeta^3 - 8*zeta +
8)*q^905 + (-24*zeta^8 - 24*zeta^6 - 24*zeta)*q^906 + (-16*zeta^11 - 16*zeta^4 -
16*zeta^3)*q^907 + (-40*zeta^11 + 92*zeta^9 - 46*zeta^8 + 46*zeta^6 - 40*zeta^4 
+ 52*zeta^3 - 46*zeta + 46)*q^908 + (10*zeta^11 - 20*zeta^9 - 20*zeta^6 + 
10*zeta^4 - 10*zeta^3 - 10)*q^909 + (12*zeta^11 - 24*zeta^9 + 6*zeta^8 - 
18*zeta^6 + 12*zeta^4 - 12*zeta^3 + 6*zeta - 12)*q^911 + (24*zeta^11 - 24*zeta^9
+ 12*zeta^8 - 12*zeta^6 + 24*zeta^4 + 12*zeta - 12)*q^912 + (-8*zeta^11 - 
16*zeta^8 - 16*zeta^6 - 8*zeta^4 - 8*zeta^3 - 16*zeta)*q^913 + (-18*zeta^8 - 
18*zeta^6 - 18*zeta)*q^914 + (-100*zeta^11 + 144*zeta^9 - 72*zeta^8 + 72*zeta^6 
- 100*zeta^4 + 44*zeta^3 - 72*zeta + 72)*q^915 + (-11*zeta^11 + 22*zeta^9 - 
6*zeta^8 + 16*zeta^6 - 11*zeta^4 + 11*zeta^3 - 6*zeta + 11)*q^916 + (-10*zeta^11
+ 20*zeta^9 - 4*zeta^8 + 16*zeta^6 - 10*zeta^4 + 10*zeta^3 - 4*zeta + 10)*q^918 
+ (-20*zeta^11 - 20*zeta^4 - 20*zeta^3)*q^919 + (34*zeta^11 + 18*zeta^8 + 
18*zeta^6 + 34*zeta^4 + 34*zeta^3 + 18*zeta)*q^920 + (-52*zeta^11 - 20*zeta^8 - 
20*zeta^6 - 52*zeta^4 - 52*zeta^3 - 20*zeta)*q^921 + (-18*zeta^11 - 2*zeta^9 + 
zeta^8 - zeta^6 - 18*zeta^4 - 20*zeta^3 + zeta - 1)*q^922 + (34*zeta^11 - 
68*zeta^9 + 44*zeta^8 - 24*zeta^6 + 34*zeta^4 - 34*zeta^3 + 44*zeta - 34)*q^923 
+ (-16*zeta^11 + 32*zeta^9 - 36*zeta^8 - 4*zeta^6 - 16*zeta^4 + 16*zeta^3 - 
36*zeta + 16)*q^925 + (-4*zeta^11 + 32*zeta^9 - 16*zeta^8 + 16*zeta^6 - 4*zeta^4
+ 28*zeta^3 - 16*zeta + 16)*q^926 + (-4*zeta^11 - 12*zeta^8 - 12*zeta^6 - 
4*zeta^4 - 4*zeta^3 - 12*zeta)*q^927 + (-26*zeta^11 - 10*zeta^8 - 10*zeta^6 - 
26*zeta^4 - 26*zeta^3 - 10*zeta)*q^928 + (-48*zeta^11 + 66*zeta^9 - 33*zeta^8 + 
33*zeta^6 - 48*zeta^4 + 18*zeta^3 - 33*zeta + 33)*q^929 + (8*zeta^11 - 16*zeta^9
+ 8*zeta^8 - 8*zeta^6 + 8*zeta^4 - 8*zeta^3 + 8*zeta - 8)*q^930 + (-26*zeta^11 +
52*zeta^9 - 4*zeta^8 + 48*zeta^6 - 26*zeta^4 + 26*zeta^3 - 4*zeta + 26)*q^932 + 
(-24*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 - 24*zeta^4 - 16*zeta^3 - 4*zeta +
4)*q^933 + (-14*zeta^11 + 34*zeta^8 + 34*zeta^6 - 14*zeta^4 - 14*zeta^3 + 
34*zeta)*q^934 + (12*zeta^11 + 8*zeta^8 + 8*zeta^6 + 12*zeta^4 + 12*zeta^3 + 
8*zeta)*q^935 + (-28*zeta^9 + 14*zeta^8 - 14*zeta^6 - 28*zeta^3 + 14*zeta - 
14)*q^936 + (-zeta^11 + 2*zeta^9 + 30*zeta^8 + 32*zeta^6 - zeta^4 + zeta^3 + 
30*zeta + 1)*q^937 + (-14*zeta^11 + 28*zeta^9 - 12*zeta^8 + 16*zeta^6 - 
14*zeta^4 + 14*zeta^3 - 12*zeta + 14)*q^939 + (20*zeta^11 - 32*zeta^9 + 
16*zeta^8 - 16*zeta^6 + 20*zeta^4 - 12*zeta^3 + 16*zeta - 16)*q^940 + 
(29*zeta^11 + 15*zeta^8 + 15*zeta^6 + 29*zeta^4 + 29*zeta^3 + 15*zeta)*q^941 + 
(6*zeta^11 - 38*zeta^8 - 38*zeta^6 + 6*zeta^4 + 6*zeta^3 - 38*zeta)*q^942 + 
(-56*zeta^11 + 84*zeta^9 - 42*zeta^8 + 42*zeta^6 - 56*zeta^4 + 28*zeta^3 - 
42*zeta + 42)*q^943 + (6*zeta^11 - 12*zeta^9 - 12*zeta^6 + 6*zeta^4 - 6*zeta^3 -
6)*q^944 + (8*zeta^11 - 16*zeta^9 - 16*zeta^6 + 8*zeta^4 - 8*zeta^3 - 8)*q^946 +
(26*zeta^11 - 68*zeta^9 + 34*zeta^8 - 34*zeta^6 + 26*zeta^4 - 42*zeta^3 + 
34*zeta - 34)*q^947 + (40*zeta^11 + 24*zeta^8 + 24*zeta^6 + 40*zeta^4 + 
40*zeta^3 + 24*zeta)*q^948 + (26*zeta^11 + 24*zeta^8 + 24*zeta^6 + 26*zeta^4 + 
26*zeta^3 + 24*zeta)*q^949 + (-16*zeta^11 + 4*zeta^9 - 2*zeta^8 + 2*zeta^6 - 
16*zeta^4 - 12*zeta^3 - 2*zeta + 2)*q^950 + (-20*zeta^8 - 20*zeta^6 - 
20*zeta)*q^951 + (2*zeta^8 + 2*zeta^6 + 2*zeta)*q^953 + (4*zeta^11 + 4*zeta^4 + 
4*zeta^3)*q^954 + (-54*zeta^11 - 18*zeta^8 - 18*zeta^6 - 54*zeta^4 - 54*zeta^3 -
18*zeta)*q^955 + (22*zeta^11 + 16*zeta^8 + 16*zeta^6 + 22*zeta^4 + 22*zeta^3 + 
16*zeta)*q^956 + (-32*zeta^11 + 48*zeta^9 - 24*zeta^8 + 24*zeta^6 - 32*zeta^4 + 
16*zeta^3 - 24*zeta + 24)*q^957 + (26*zeta^11 - 52*zeta^9 + 16*zeta^8 - 
36*zeta^6 + 26*zeta^4 - 26*zeta^3 + 16*zeta - 26)*q^958 + (6*zeta^11 - 12*zeta^9
+ 32*zeta^8 + 20*zeta^6 + 6*zeta^4 - 6*zeta^3 + 32*zeta - 6)*q^960 + 
(-39*zeta^11 + 46*zeta^9 - 23*zeta^8 + 23*zeta^6 - 39*zeta^4 + 7*zeta^3 - 
23*zeta + 23)*q^961 + (4*zeta^11 - 20*zeta^8 - 20*zeta^6 + 4*zeta^4 + 4*zeta^3 -
20*zeta)*q^962 + (4*zeta^11 - 8*zeta^8 - 8*zeta^6 + 4*zeta^4 + 4*zeta^3 - 
8*zeta)*q^963 + (42*zeta^11 - 42*zeta^9 + 21*zeta^8 - 21*zeta^6 + 42*zeta^4 + 
21*zeta - 21)*q^964 + (10*zeta^11 - 20*zeta^9 + 24*zeta^8 + 4*zeta^6 + 10*zeta^4
- 10*zeta^3 + 24*zeta - 10)*q^965 + (4*zeta^11 - 8*zeta^9 + 36*zeta^8 + 
28*zeta^6 + 4*zeta^4 - 4*zeta^3 + 36*zeta - 4)*q^967 + (7*zeta^11 - 28*zeta^9 + 
14*zeta^8 - 14*zeta^6 + 7*zeta^4 - 21*zeta^3 + 14*zeta - 14)*q^968 + 
(-16*zeta^11 + 8*zeta^8 + 8*zeta^6 - 16*zeta^4 - 16*zeta^3 + 8*zeta)*q^969 + 
(2*zeta^11 + 4*zeta^8 + 4*zeta^6 + 2*zeta^4 + 2*zeta^3 + 4*zeta)*q^970 + 
(-60*zeta^11 + 88*zeta^9 - 44*zeta^8 + 44*zeta^6 - 60*zeta^4 + 28*zeta^3 - 
44*zeta + 44)*q^971 + (4*zeta^11 - 8*zeta^9 + 6*zeta^8 - 2*zeta^6 + 4*zeta^4 - 
4*zeta^3 + 6*zeta - 4)*q^972 + (-12*zeta^11 + 24*zeta^9 + 4*zeta^8 + 28*zeta^6 -
12*zeta^4 + 12*zeta^3 + 4*zeta + 12)*q^974 + (-52*zeta^11 + 44*zeta^9 - 
22*zeta^8 + 22*zeta^6 - 52*zeta^4 - 8*zeta^3 - 22*zeta + 22)*q^975 + (33*zeta^11
+ 9*zeta^8 + 9*zeta^6 + 33*zeta^4 + 33*zeta^3 + 9*zeta)*q^976 + (-22*zeta^11 + 
2*zeta^8 + 2*zeta^6 - 22*zeta^4 - 22*zeta^3 + 2*zeta)*q^977 + (-32*zeta^9 + 
16*zeta^8 - 16*zeta^6 - 32*zeta^3 + 16*zeta - 16)*q^978 + (6*zeta^11 - 12*zeta^9
+ 32*zeta^8 + 20*zeta^6 + 6*zeta^4 - 6*zeta^3 + 32*zeta - 6)*q^979 + (8*zeta^11 
- 16*zeta^9 + 16*zeta^8 + 8*zeta^4 - 8*zeta^3 + 16*zeta - 8)*q^981 + (22*zeta^11
+ 24*zeta^9 - 12*zeta^8 + 12*zeta^6 + 22*zeta^4 + 46*zeta^3 - 12*zeta + 
12)*q^982 + (-40*zeta^11 - 32*zeta^8 - 32*zeta^6 - 40*zeta^4 - 40*zeta^3 - 
32*zeta)*q^983 + (14*zeta^11 + 14*zeta^8 + 14*zeta^6 + 14*zeta^4 + 14*zeta^3 + 
14*zeta)*q^984 + (8*zeta^11 - 12*zeta^9 + 6*zeta^8 - 6*zeta^6 + 8*zeta^4 - 
4*zeta^3 + 6*zeta - 6)*q^985 + (-4*zeta^11 + 8*zeta^9 + 4*zeta^8 + 12*zeta^6 - 
4*zeta^4 + 4*zeta^3 + 4*zeta + 4)*q^986 + (-16*zeta^11 + 32*zeta^9 + 4*zeta^8 + 
36*zeta^6 - 16*zeta^4 + 16*zeta^3 + 4*zeta + 16)*q^988 + (-48*zeta^11 + 
80*zeta^9 - 40*zeta^8 + 40*zeta^6 - 48*zeta^4 + 32*zeta^3 - 40*zeta + 40)*q^989 
+ (4*zeta^11 + 4*zeta^8 + 4*zeta^6 + 4*zeta^4 + 4*zeta^3 + 4*zeta)*q^990 + 
(-8*zeta^11 - 12*zeta^8 - 12*zeta^6 - 8*zeta^4 - 8*zeta^3 - 12*zeta)*q^991 + 
(-4*zeta^11 + 12*zeta^9 - 6*zeta^8 + 6*zeta^6 - 4*zeta^4 + 8*zeta^3 - 6*zeta + 
6)*q^992 + (8*zeta^8 + 8*zeta^6 + 8*zeta)*q^993 + (24*zeta^11 - 48*zeta^9 + 
88*zeta^8 + 40*zeta^6 + 24*zeta^4 - 24*zeta^3 + 88*zeta - 24)*q^995 + (8*zeta^11
- 80*zeta^9 + 40*zeta^8 - 40*zeta^6 + 8*zeta^4 - 72*zeta^3 + 40*zeta - 40)*q^996
+ (21*zeta^11 + 13*zeta^8 + 13*zeta^6 + 21*zeta^4 + 21*zeta^3 + 13*zeta)*q^997 +
(8*zeta^11 - 16*zeta^8 - 16*zeta^6 + 8*zeta^4 + 8*zeta^3 - 16*zeta)*q^998 + 
(8*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 8*zeta^4 - 8*zeta^3 + 8*zeta - 
8)*q^999 + (-12*zeta^11 + 24*zeta^9 - 16*zeta^8 + 8*zeta^6 - 12*zeta^4 + 
12*zeta^3 - 16*zeta + 12)*q^1000 + (-28*zeta^11 + 56*zeta^9 + 56*zeta^6 - 
28*zeta^4 + 28*zeta^3 + 28)*q^1002 + (12*zeta^11 + 8*zeta^9 - 4*zeta^8 + 
4*zeta^6 + 12*zeta^4 + 20*zeta^3 - 4*zeta + 4)*q^1003 + (22*zeta^11 + 2*zeta^8 +
2*zeta^6 + 22*zeta^4 + 22*zeta^3 + 2*zeta)*q^1004 + (32*zeta^11 + 16*zeta^8 + 
16*zeta^6 + 32*zeta^4 + 32*zeta^3 + 16*zeta)*q^1005 + (4*zeta^11 - 8*zeta^9 + 
8*zeta^8 + 4*zeta^4 - 4*zeta^3 + 8*zeta - 4)*q^1007 + (-24*zeta^11 + 48*zeta^9 -
34*zeta^8 + 14*zeta^6 - 24*zeta^4 + 24*zeta^3 - 34*zeta + 24)*q^1009 + 
(10*zeta^11 + 10*zeta^4 + 10*zeta^3)*q^1010 + (56*zeta^11 + 8*zeta^8 + 8*zeta^6 
+ 56*zeta^4 + 56*zeta^3 + 8*zeta)*q^1011 + (-28*zeta^11 - 28*zeta^4 - 
28*zeta^3)*q^1012 + (16*zeta^11 - 42*zeta^9 + 21*zeta^8 - 21*zeta^6 + 16*zeta^4 
- 26*zeta^3 + 21*zeta - 21)*q^1013 + (-26*zeta^11 + 52*zeta^9 - 10*zeta^8 + 
42*zeta^6 - 26*zeta^4 + 26*zeta^3 - 10*zeta + 26)*q^1014 + (16*zeta^11 - 
32*zeta^9 + 12*zeta^8 - 20*zeta^6 + 16*zeta^4 - 16*zeta^3 + 12*zeta - 16)*q^1016
+ (20*zeta^11 - 8*zeta^9 + 4*zeta^8 - 4*zeta^6 + 20*zeta^4 + 12*zeta^3 + 4*zeta 
- 4)*q^1017 + (11*zeta^11 - 21*zeta^8 - 21*zeta^6 + 11*zeta^4 + 11*zeta^3 - 
21*zeta)*q^1018 + (-34*zeta^11 - 36*zeta^8 - 36*zeta^6 - 34*zeta^4 - 34*zeta^3 -
36*zeta)*q^1019 + (-28*zeta^11 + 56*zeta^9 - 28*zeta^8 + 28*zeta^6 - 28*zeta^4 +
28*zeta^3 - 28*zeta + 28)*q^1020 + (11*zeta^11 - 22*zeta^9 + 6*zeta^8 - 
16*zeta^6 + 11*zeta^4 - 11*zeta^3 + 6*zeta - 11)*q^1021 + (8*zeta^11 - 16*zeta^9
- 16*zeta^6 + 8*zeta^4 - 8*zeta^3 - 8)*q^1023 + (5*zeta^11 + 2*zeta^9 - zeta^8 +
zeta^6 + 5*zeta^4 + 7*zeta^3 - zeta + 1)*q^1024 + (37*zeta^11 + 11*zeta^8 + 
11*zeta^6 + 37*zeta^4 + 37*zeta^3 + 11*zeta)*q^1025 + (4*zeta^11 - 4*zeta^8 - 
4*zeta^6 + 4*zeta^4 + 4*zeta^3 - 4*zeta)*q^1026 + (40*zeta^11 - 64*zeta^9 + 
32*zeta^8 - 32*zeta^6 + 40*zeta^4 - 24*zeta^3 + 32*zeta - 32)*q^1027 + 
(11*zeta^11 - 22*zeta^9 - 36*zeta^8 - 58*zeta^6 + 11*zeta^4 - 11*zeta^3 - 
36*zeta - 11)*q^1028 + (-4*zeta^11 + 8*zeta^9 + 4*zeta^8 + 12*zeta^6 - 4*zeta^4 
+ 4*zeta^3 + 4*zeta + 4)*q^1030 + (-2*zeta^11 - 12*zeta^9 + 6*zeta^8 - 6*zeta^6 
- 2*zeta^4 - 14*zeta^3 + 6*zeta - 6)*q^1031 + (8*zeta^11 + 24*zeta^8 + 24*zeta^6
+ 8*zeta^4 + 8*zeta^3 + 24*zeta)*q^1032 + (-16*zeta^11 - 28*zeta^8 - 28*zeta^6 -
16*zeta^4 - 16*zeta^3 - 28*zeta)*q^1033 + (-8*zeta^9 + 4*zeta^8 - 4*zeta^6 - 
8*zeta^3 + 4*zeta - 4)*q^1034 + (20*zeta^11 - 40*zeta^9 + 64*zeta^8 + 24*zeta^6 
+ 20*zeta^4 - 20*zeta^3 + 64*zeta - 20)*q^1035 + (-18*zeta^11 + 36*zeta^9 - 
38*zeta^8 - 2*zeta^6 - 18*zeta^4 + 18*zeta^3 - 38*zeta + 18)*q^1037 + 
(-28*zeta^11 + 20*zeta^9 - 10*zeta^8 + 10*zeta^6 - 28*zeta^4 - 8*zeta^3 - 
10*zeta + 10)*q^1038 + (-16*zeta^11 + 16*zeta^8 + 16*zeta^6 - 16*zeta^4 - 
16*zeta^3 + 16*zeta)*q^1039 + (24*zeta^11 + 6*zeta^8 + 6*zeta^6 + 24*zeta^4 + 
24*zeta^3 + 6*zeta)*q^1040 + (-76*zeta^11 + 120*zeta^9 - 60*zeta^8 + 60*zeta^6 -
76*zeta^4 + 44*zeta^3 - 60*zeta + 60)*q^1041 + (-33*zeta^11 + 66*zeta^9 - 
34*zeta^8 + 32*zeta^6 - 33*zeta^4 + 33*zeta^3 - 34*zeta + 33)*q^1042 + 
(-12*zeta^11 + 24*zeta^9 - 32*zeta^8 - 8*zeta^6 - 12*zeta^4 + 12*zeta^3 - 
32*zeta + 12)*q^1044 + (24*zeta^11 - 32*zeta^9 + 16*zeta^8 - 16*zeta^6 + 
24*zeta^4 - 8*zeta^3 + 16*zeta - 16)*q^1045 + (-4*zeta^11 - 16*zeta^8 - 
16*zeta^6 - 4*zeta^4 - 4*zeta^3 - 16*zeta)*q^1046 + (14*zeta^11 + 14*zeta^8 + 
14*zeta^6 + 14*zeta^4 + 14*zeta^3 + 14*zeta)*q^1047 + (36*zeta^11 - 32*zeta^9 + 
16*zeta^8 - 16*zeta^6 + 36*zeta^4 + 4*zeta^3 + 16*zeta - 16)*q^1048 + 
(23*zeta^11 - 46*zeta^9 + 52*zeta^8 + 6*zeta^6 + 23*zeta^4 - 23*zeta^3 + 52*zeta
- 23)*q^1049 + (-8*zeta^11 + 16*zeta^9 - 52*zeta^8 - 36*zeta^6 - 8*zeta^4 + 
8*zeta^3 - 52*zeta + 8)*q^1051 + (2*zeta^11 + 36*zeta^9 - 18*zeta^8 + 18*zeta^6 
+ 2*zeta^4 + 38*zeta^3 - 18*zeta + 18)*q^1052 + (-6*zeta^11 + 2*zeta^8 + 
2*zeta^6 - 6*zeta^4 - 6*zeta^3 + 2*zeta)*q^1053 + (16*zeta^11 - 36*zeta^8 - 
36*zeta^6 + 16*zeta^4 + 16*zeta^3 - 36*zeta)*q^1054 + (56*zeta^11 - 72*zeta^9 + 
36*zeta^8 - 36*zeta^6 + 56*zeta^4 - 16*zeta^3 + 36*zeta - 36)*q^1055 + 
(4*zeta^11 - 8*zeta^9 + 20*zeta^8 + 12*zeta^6 + 4*zeta^4 - 4*zeta^3 + 20*zeta - 
4)*q^1056 + (-3*zeta^11 + 6*zeta^9 + 13*zeta^8 + 19*zeta^6 - 3*zeta^4 + 3*zeta^3
+ 13*zeta + 3)*q^1058 + (40*zeta^11 - 44*zeta^9 + 22*zeta^8 - 22*zeta^6 + 
40*zeta^4 - 4*zeta^3 + 22*zeta - 22)*q^1059 + (10*zeta^11 + 6*zeta^8 + 6*zeta^6 
+ 10*zeta^4 + 10*zeta^3 + 6*zeta)*q^1060 + (-50*zeta^11 + 2*zeta^8 + 2*zeta^6 - 
50*zeta^4 - 50*zeta^3 + 2*zeta)*q^1061 + (8*zeta^11 + 8*zeta^9 - 4*zeta^8 + 
4*zeta^6 + 8*zeta^4 + 16*zeta^3 - 4*zeta + 4)*q^1062 + (18*zeta^11 - 36*zeta^9 +
48*zeta^8 + 12*zeta^6 + 18*zeta^4 - 18*zeta^3 + 48*zeta - 18)*q^1063 + 
(-28*zeta^11 + 56*zeta^9 - 80*zeta^8 - 24*zeta^6 - 28*zeta^4 + 28*zeta^3 - 
80*zeta + 28)*q^1065 + (2*zeta^11 - 20*zeta^9 + 10*zeta^8 - 10*zeta^6 + 2*zeta^4
- 18*zeta^3 + 10*zeta - 10)*q^1066 + (-6*zeta^11 + 2*zeta^8 + 2*zeta^6 - 
6*zeta^4 - 6*zeta^3 + 2*zeta)*q^1067 + (-38*zeta^11 - 34*zeta^8 - 34*zeta^6 - 
38*zeta^4 - 38*zeta^3 - 34*zeta)*q^1068 + (42*zeta^11 - 50*zeta^9 + 25*zeta^8 - 
25*zeta^6 + 42*zeta^4 - 8*zeta^3 + 25*zeta - 25)*q^1069 + (-6*zeta^11 + 
12*zeta^9 - 4*zeta^8 + 8*zeta^6 - 6*zeta^4 + 6*zeta^3 - 4*zeta + 6)*q^1070 + 
(-12*zeta^11 + 24*zeta^9 - 24*zeta^8 - 12*zeta^4 + 12*zeta^3 - 24*zeta + 
12)*q^1072 + (32*zeta^11 - 48*zeta^9 + 24*zeta^8 - 24*zeta^6 + 32*zeta^4 - 
16*zeta^3 + 24*zeta - 24)*q^1073 + (8*zeta^11 + 20*zeta^8 + 20*zeta^6 + 8*zeta^4
+ 8*zeta^3 + 20*zeta)*q^1074 + (36*zeta^11 + 4*zeta^8 + 4*zeta^6 + 36*zeta^4 + 
36*zeta^3 + 4*zeta)*q^1075 + (24*zeta^11 - 58*zeta^9 + 29*zeta^8 - 29*zeta^6 + 
24*zeta^4 - 34*zeta^3 + 29*zeta - 29)*q^1076 + (-8*zeta^11 + 16*zeta^9 - 
4*zeta^8 + 12*zeta^6 - 8*zeta^4 + 8*zeta^3 - 4*zeta + 8)*q^1077 + (36*zeta^11 - 
72*zeta^9 + 40*zeta^8 - 32*zeta^6 + 36*zeta^4 - 36*zeta^3 + 40*zeta - 36)*q^1079
+ (12*zeta^11 - 20*zeta^9 + 10*zeta^8 - 10*zeta^6 + 12*zeta^4 - 8*zeta^3 + 
10*zeta - 10)*q^1080 + (20*zeta^11 + 4*zeta^8 + 4*zeta^6 + 20*zeta^4 + 20*zeta^3
+ 4*zeta)*q^1081 + (8*zeta^11 - 2*zeta^8 - 2*zeta^6 + 8*zeta^4 + 8*zeta^3 - 
2*zeta)*q^1082 + (22*zeta^11 - 44*zeta^9 + 22*zeta^8 - 22*zeta^6 + 22*zeta^4 - 
22*zeta^3 + 22*zeta - 22)*q^1083 + (-18*zeta^11 + 36*zeta^9 + 8*zeta^8 + 
44*zeta^6 - 18*zeta^4 + 18*zeta^3 + 8*zeta + 18)*q^1084 + (10*zeta^11 - 
20*zeta^9 + 8*zeta^8 - 12*zeta^6 + 10*zeta^4 - 10*zeta^3 + 8*zeta - 10)*q^1086 +
(8*zeta^11 + 8*zeta^4 + 8*zeta^3)*q^1087 + (-zeta^11 + 25*zeta^8 + 25*zeta^6 - 
zeta^4 - zeta^3 + 25*zeta)*q^1088 + (14*zeta^11 + 14*zeta^4 + 14*zeta^3)*q^1089 
+ (-8*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 8*zeta^4 + 8*zeta^3 - 8*zeta +
8)*q^1090 + (-28*zeta^8 - 28*zeta^6 - 28*zeta)*q^1091 + (-4*zeta^11 + 8*zeta^9 -
60*zeta^8 - 52*zeta^6 - 4*zeta^4 + 4*zeta^3 - 60*zeta + 4)*q^1093 + (-20*zeta^11
+ 24*zeta^9 - 12*zeta^8 + 12*zeta^6 - 20*zeta^4 + 4*zeta^3 - 12*zeta + 
12)*q^1094 + (-80*zeta^11 - 36*zeta^8 - 36*zeta^6 - 80*zeta^4 - 80*zeta^3 - 
36*zeta)*q^1095 + (-10*zeta^11 - 30*zeta^8 - 30*zeta^6 - 10*zeta^4 - 10*zeta^3 -
30*zeta)*q^1096 + (-20*zeta^11 + 38*zeta^9 - 19*zeta^8 + 19*zeta^6 - 20*zeta^4 +
18*zeta^3 - 19*zeta + 19)*q^1097 + (-10*zeta^11 + 20*zeta^9 - 16*zeta^8 + 
4*zeta^6 - 10*zeta^4 + 10*zeta^3 - 16*zeta + 10)*q^1098 + (-4*zeta^11 + 8*zeta^9
+ 22*zeta^8 + 30*zeta^6 - 4*zeta^4 + 4*zeta^3 + 22*zeta + 4)*q^1100 + 
(16*zeta^11 + 16*zeta^4 + 16*zeta^3)*q^1101 + (8*zeta^11 + 8*zeta^4 + 
8*zeta^3)*q^1102 + (10*zeta^11 - 4*zeta^8 - 4*zeta^6 + 10*zeta^4 + 10*zeta^3 - 
4*zeta)*q^1103 + (60*zeta^11 - 72*zeta^9 + 36*zeta^8 - 36*zeta^6 + 60*zeta^4 - 
12*zeta^3 + 36*zeta - 36)*q^1104 + (-14*zeta^11 + 28*zeta^9 - 28*zeta^8 - 
14*zeta^4 + 14*zeta^3 - 28*zeta + 14)*q^1105 + (-6*zeta^11 + 12*zeta^9 - 
16*zeta^8 - 4*zeta^6 - 6*zeta^4 + 6*zeta^3 - 16*zeta + 6)*q^1107 + (10*zeta^11 -
44*zeta^9 + 22*zeta^8 - 22*zeta^6 + 10*zeta^4 - 34*zeta^3 + 22*zeta - 22)*q^1108
+ (11*zeta^11 + 21*zeta^8 + 21*zeta^6 + 11*zeta^4 + 11*zeta^3 + 21*zeta)*q^1109 
+ (8*zeta^11 + 8*zeta^8 + 8*zeta^6 + 8*zeta^4 + 8*zeta^3 + 8*zeta)*q^1110 + 
(20*zeta^9 - 10*zeta^8 + 10*zeta^6 + 20*zeta^3 - 10*zeta + 10)*q^1111 + 
(28*zeta^8 + 28*zeta^6 + 28*zeta)*q^1112 + (26*zeta^11 - 52*zeta^9 + 26*zeta^8 -
26*zeta^6 + 26*zeta^4 - 26*zeta^3 + 26*zeta - 26)*q^1114 + (104*zeta^11 - 
144*zeta^9 + 72*zeta^8 - 72*zeta^6 + 104*zeta^4 - 40*zeta^3 + 72*zeta - 
72)*q^1115 + (4*zeta^11 - 20*zeta^8 - 20*zeta^6 + 4*zeta^4 + 4*zeta^3 - 
20*zeta)*q^1116 + (2*zeta^11 + 8*zeta^8 + 8*zeta^6 + 2*zeta^4 + 2*zeta^3 + 
8*zeta)*q^1117 + (-8*zeta^11 - 32*zeta^9 + 16*zeta^8 - 16*zeta^6 - 8*zeta^4 - 
40*zeta^3 + 16*zeta - 16)*q^1118 + (-16*zeta^11 + 32*zeta^9 + 12*zeta^8 + 
44*zeta^6 - 16*zeta^4 + 16*zeta^3 + 12*zeta + 16)*q^1119 + (8*zeta^11 - 
16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 8*zeta^4 - 8*zeta^3 + 8*zeta - 8)*q^1121 + 
(8*zeta^11 + 24*zeta^9 - 12*zeta^8 + 12*zeta^6 + 8*zeta^4 + 32*zeta^3 - 12*zeta 
+ 12)*q^1122 + (32*zeta^11 + 28*zeta^8 + 28*zeta^6 + 32*zeta^4 + 32*zeta^3 + 
28*zeta)*q^1123 + (-10*zeta^11 + 22*zeta^8 + 22*zeta^6 - 10*zeta^4 - 10*zeta^3 +
22*zeta)*q^1124 + (-16*zeta^11 + 16*zeta^9 - 8*zeta^8 + 8*zeta^6 - 16*zeta^4 - 
8*zeta + 8)*q^1125 + (-6*zeta^11 + 12*zeta^9 - 4*zeta^8 + 8*zeta^6 - 6*zeta^4 + 
6*zeta^3 - 4*zeta + 6)*q^1126 + (-12*zeta^11 + 24*zeta^9 - 16*zeta^8 + 8*zeta^6 
- 12*zeta^4 + 12*zeta^3 - 16*zeta + 12)*q^1128 + (28*zeta^11 - 32*zeta^9 + 
16*zeta^8 - 16*zeta^6 + 28*zeta^4 - 4*zeta^3 + 16*zeta - 16)*q^1129 + 
(-10*zeta^11 + 6*zeta^8 + 6*zeta^6 - 10*zeta^4 - 10*zeta^3 + 6*zeta)*q^1130 + 
(32*zeta^11 + 8*zeta^8 + 8*zeta^6 + 32*zeta^4 + 32*zeta^3 + 8*zeta)*q^1131 + 
(12*zeta^11 - 36*zeta^9 + 18*zeta^8 - 18*zeta^6 + 12*zeta^4 - 24*zeta^3 + 
18*zeta - 18)*q^1132 + (-12*zeta^11 + 24*zeta^9 - 16*zeta^8 + 8*zeta^6 - 
12*zeta^4 + 12*zeta^3 - 16*zeta + 12)*q^1133 + (32*zeta^11 - 64*zeta^9 + 
100*zeta^8 + 36*zeta^6 + 32*zeta^4 - 32*zeta^3 + 100*zeta - 32)*q^1135 + 
(42*zeta^11 - 36*zeta^9 + 18*zeta^8 - 18*zeta^6 + 42*zeta^4 + 6*zeta^3 + 18*zeta
- 18)*q^1136 + (-24*zeta^11 + 16*zeta^8 + 16*zeta^6 - 24*zeta^4 - 24*zeta^3 + 
16*zeta)*q^1137 + (-6*zeta^11 - 2*zeta^8 - 2*zeta^6 - 6*zeta^4 - 6*zeta^3 - 
2*zeta)*q^1138 + (8*zeta^11 - 32*zeta^9 + 16*zeta^8 - 16*zeta^6 + 8*zeta^4 - 
24*zeta^3 + 16*zeta - 16)*q^1139 + (-8*zeta^11 + 16*zeta^9 - 40*zeta^8 - 
24*zeta^6 - 8*zeta^4 + 8*zeta^3 - 40*zeta + 8)*q^1140 + (32*zeta^11 - 64*zeta^9 
+ 28*zeta^8 - 36*zeta^6 + 32*zeta^4 - 32*zeta^3 + 28*zeta - 32)*q^1142 + 
(8*zeta^11 + 8*zeta^4 + 8*zeta^3)*q^1143 + (14*zeta^11 - 14*zeta^8 - 14*zeta^6 +
14*zeta^4 + 14*zeta^3 - 14*zeta)*q^1144 + (-2*zeta^8 - 2*zeta^6 - 2*zeta)*q^1145
+ (36*zeta^11 + 36*zeta^4 + 36*zeta^3)*q^1146 + (-8*zeta^11 + 16*zeta^9 + 
16*zeta^6 - 8*zeta^4 + 8*zeta^3 + 8)*q^1147 + (-8*zeta^11 + 16*zeta^9 + 
32*zeta^8 + 48*zeta^6 - 8*zeta^4 + 8*zeta^3 + 32*zeta + 8)*q^1149 + (-34*zeta^11
+ 24*zeta^9 - 12*zeta^8 + 12*zeta^6 - 34*zeta^4 - 10*zeta^3 - 12*zeta + 
12)*q^1150 + (-24*zeta^11 - 24*zeta^4 - 24*zeta^3)*q^1151 + (12*zeta^11 + 
22*zeta^8 + 22*zeta^6 + 12*zeta^4 + 12*zeta^3 + 22*zeta)*q^1152 + (-34*zeta^11 +
38*zeta^9 - 19*zeta^8 + 19*zeta^6 - 34*zeta^4 + 4*zeta^3 - 19*zeta + 19)*q^1153 
+ (-17*zeta^11 + 34*zeta^9 - 24*zeta^8 + 10*zeta^6 - 17*zeta^4 + 17*zeta^3 - 
24*zeta + 17)*q^1154 + (-22*zeta^11 + 44*zeta^9 + 9*zeta^8 + 53*zeta^6 - 
22*zeta^4 + 22*zeta^3 + 9*zeta + 22)*q^1156 + (-38*zeta^11 + 72*zeta^9 - 
36*zeta^8 + 36*zeta^6 - 38*zeta^4 + 34*zeta^3 - 36*zeta + 36)*q^1157 + 
(-16*zeta^11 + 28*zeta^8 + 28*zeta^6 - 16*zeta^4 - 16*zeta^3 + 28*zeta)*q^1158 +
(-28*zeta^11 - 16*zeta^8 - 16*zeta^6 - 28*zeta^4 - 28*zeta^3 - 16*zeta)*q^1159 +
(44*zeta^11 - 64*zeta^9 + 32*zeta^8 - 32*zeta^6 + 44*zeta^4 - 20*zeta^3 + 
32*zeta - 32)*q^1160 + (-8*zeta^11 + 16*zeta^9 - 16*zeta^8 - 8*zeta^4 + 8*zeta^3
- 16*zeta + 8)*q^1161 + (-20*zeta^11 + 40*zeta^9 - 42*zeta^8 - 2*zeta^6 - 
20*zeta^4 + 20*zeta^3 - 42*zeta + 20)*q^1163 + (20*zeta^11 - 4*zeta^9 + 2*zeta^8
- 2*zeta^6 + 20*zeta^4 + 16*zeta^3 + 2*zeta - 2)*q^1164 + (-16*zeta^11 - 
12*zeta^8 - 12*zeta^6 - 16*zeta^4 - 16*zeta^3 - 12*zeta)*q^1165 + (4*zeta^8 + 
4*zeta^6 + 4*zeta)*q^1166 + (48*zeta^11 - 56*zeta^9 + 28*zeta^8 - 28*zeta^6 + 
48*zeta^4 - 8*zeta^3 + 28*zeta - 28)*q^1167 + (21*zeta^11 - 42*zeta^9 + 
54*zeta^8 + 12*zeta^6 + 21*zeta^4 - 21*zeta^3 + 54*zeta - 21)*q^1168 + 
(-8*zeta^11 + 16*zeta^9 - 12*zeta^8 + 4*zeta^6 - 8*zeta^4 + 8*zeta^3 - 12*zeta +
8)*q^1170 + (-20*zeta^11 - 20*zeta^4 - 20*zeta^3)*q^1171 + (-15*zeta^11 - 
37*zeta^8 - 37*zeta^6 - 15*zeta^4 - 15*zeta^3 - 37*zeta)*q^1172 + (-36*zeta^11 +
4*zeta^8 + 4*zeta^6 - 36*zeta^4 - 36*zeta^3 + 4*zeta)*q^1173 + (-20*zeta^11 + 
4*zeta^9 - 2*zeta^8 + 2*zeta^6 - 20*zeta^4 - 16*zeta^3 - 2*zeta + 2)*q^1174 + 
(-2*zeta^11 + 4*zeta^9 - 20*zeta^8 - 16*zeta^6 - 2*zeta^4 + 2*zeta^3 - 20*zeta +
2)*q^1175 + (-8*zeta^11 + 16*zeta^9 - 4*zeta^8 + 12*zeta^6 - 8*zeta^4 + 8*zeta^3
- 4*zeta + 8)*q^1177 + (-8*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 - 8*zeta^4 
- 24*zeta^3 + 8*zeta - 8)*q^1178 + (24*zeta^11 + 16*zeta^8 + 16*zeta^6 + 
24*zeta^4 + 24*zeta^3 + 16*zeta)*q^1179 + (4*zeta^11 + 8*zeta^8 + 8*zeta^6 + 
4*zeta^4 + 4*zeta^3 + 8*zeta)*q^1180 + (-8*zeta^11 + 30*zeta^9 - 15*zeta^8 + 
15*zeta^6 - 8*zeta^4 + 22*zeta^3 - 15*zeta + 15)*q^1181 + (-4*zeta^11 + 8*zeta^9
- 4*zeta^8 + 4*zeta^6 - 4*zeta^4 + 4*zeta^3 - 4*zeta + 4)*q^1182 + (-4*zeta^11 +
8*zeta^9 - 20*zeta^8 - 12*zeta^6 - 4*zeta^4 + 4*zeta^3 - 20*zeta + 4)*q^1184 + 
(-112*zeta^11 + 160*zeta^9 - 80*zeta^8 + 80*zeta^6 - 112*zeta^4 + 48*zeta^3 - 
80*zeta + 80)*q^1185 + (5*zeta^11 - 19*zeta^8 - 19*zeta^6 + 5*zeta^4 + 5*zeta^3 
- 19*zeta)*q^1186 + (6*zeta^11 - 12*zeta^8 - 12*zeta^6 + 6*zeta^4 + 6*zeta^3 - 
12*zeta)*q^1187 + (-12*zeta^11 + 8*zeta^9 - 4*zeta^8 + 4*zeta^6 - 12*zeta^4 - 
4*zeta^3 - 4*zeta + 4)*q^1188 + (-16*zeta^11 + 32*zeta^9 - 52*zeta^8 - 20*zeta^6
- 16*zeta^4 + 16*zeta^3 - 52*zeta + 16)*q^1189 + (26*zeta^11 - 52*zeta^9 + 
20*zeta^8 - 32*zeta^6 + 26*zeta^4 - 26*zeta^3 + 20*zeta - 26)*q^1191 + 
(-38*zeta^11 + 40*zeta^9 - 20*zeta^8 + 20*zeta^6 - 38*zeta^4 + 2*zeta^3 - 
20*zeta + 20)*q^1192 + (11*zeta^11 - 7*zeta^8 - 7*zeta^6 + 11*zeta^4 + 11*zeta^3
- 7*zeta)*q^1193 + (-8*zeta^11 - 24*zeta^8 - 24*zeta^6 - 8*zeta^4 - 8*zeta^3 - 
24*zeta)*q^1194 + (-64*zeta^11 + 92*zeta^9 - 46*zeta^8 + 46*zeta^6 - 64*zeta^4 +
28*zeta^3 - 46*zeta + 46)*q^1195 + (-14*zeta^11 + 28*zeta^9 + 28*zeta^8 + 
56*zeta^6 - 14*zeta^4 + 14*zeta^3 + 28*zeta + 14)*q^1196 + (-2*zeta^11 + 
4*zeta^9 - 2*zeta^8 + 2*zeta^6 - 2*zeta^4 + 2*zeta^3 - 2*zeta + 2)*q^1198 + 
(16*zeta^11 - 16*zeta^9 + 8*zeta^8 - 8*zeta^6 + 16*zeta^4 + 8*zeta - 8)*q^1199 +
(-30*zeta^11 - 24*zeta^8 - 24*zeta^6 - 30*zeta^4 - 30*zeta^3 - 24*zeta)*q^1200 +
(-52*zeta^11 - 16*zeta^8 - 16*zeta^6 - 52*zeta^4 - 52*zeta^3 - 16*zeta)*q^1201 +
(-8*zeta^11 + 10*zeta^9 - 5*zeta^8 + 5*zeta^6 - 8*zeta^4 + 2*zeta^3 - 5*zeta + 
5)*q^1202 + (20*zeta^11 - 40*zeta^9 + 24*zeta^8 - 16*zeta^6 + 20*zeta^4 - 
20*zeta^3 + 24*zeta - 20)*q^1203 + (-18*zeta^11 + 36*zeta^9 - 66*zeta^8 - 
30*zeta^6 - 18*zeta^4 + 18*zeta^3 - 66*zeta + 18)*q^1205 + (-16*zeta^9 + 
8*zeta^8 - 8*zeta^6 - 16*zeta^3 + 8*zeta - 8)*q^1206 + (-30*zeta^11 + 22*zeta^8 
+ 22*zeta^6 - 30*zeta^4 - 30*zeta^3 + 22*zeta)*q^1207 + (-24*zeta^11 + 12*zeta^8
+ 12*zeta^6 - 24*zeta^4 - 24*zeta^3 + 12*zeta)*q^1208 + (-8*zeta^11 - 32*zeta^9 
+ 16*zeta^8 - 16*zeta^6 - 8*zeta^4 - 40*zeta^3 + 16*zeta - 16)*q^1209 + 
(-7*zeta^11 + 14*zeta^9 - 14*zeta^8 - 7*zeta^4 + 7*zeta^3 - 14*zeta + 7)*q^1210 
+ (50*zeta^11 - 100*zeta^9 + 40*zeta^8 - 60*zeta^6 + 50*zeta^4 - 50*zeta^3 + 
40*zeta - 50)*q^1212 + (52*zeta^11 - 48*zeta^9 + 24*zeta^8 - 24*zeta^6 + 
52*zeta^4 + 4*zeta^3 + 24*zeta - 24)*q^1213 + (4*zeta^11 - 28*zeta^8 - 28*zeta^6
+ 4*zeta^4 + 4*zeta^3 - 28*zeta)*q^1214 + (-6*zeta^11 - 2*zeta^8 - 2*zeta^6 - 
6*zeta^4 - 6*zeta^3 - 2*zeta)*q^1215 + (20*zeta^11 - 12*zeta^9 + 6*zeta^8 - 
6*zeta^6 + 20*zeta^4 + 8*zeta^3 + 6*zeta - 6)*q^1216 + (-19*zeta^11 + 38*zeta^9 
- 32*zeta^8 + 6*zeta^6 - 19*zeta^4 + 19*zeta^3 - 32*zeta + 19)*q^1217 + 
O(q^1218), 1/8*(-zeta^11 + 2*zeta^8 - 2*zeta^6 - zeta^4 + zeta^3 + 2*zeta + 2)*q
+ 1/4*(-3*zeta^11 - zeta^8 + zeta^6 - 3*zeta^4 + 3*zeta^3 - zeta - 1)*q^4 + 
1/8*(-13*zeta^11 - 2*zeta^8 + 2*zeta^6 - 13*zeta^4 + 13*zeta^3 - 2*zeta + 5)*q^7
+ 1/8*(7*zeta^11 - 14*zeta^8 + 14*zeta^6 + 7*zeta^4 - 7*zeta^3 - 14*zeta - 
14)*q^13 + 1/2*(-2*zeta^11 - 3*zeta^8 + 3*zeta^6 - 2*zeta^4 + 2*zeta^3 - 3*zeta 
+ 4)*q^16 + 1/8*(14*zeta^11 + 21*zeta^8 - 21*zeta^6 + 14*zeta^4 - 14*zeta^3 + 
21*zeta - 28)*q^19 + 1/8*(-15*zeta^11 - 5*zeta^8 + 5*zeta^6 - 15*zeta^4 + 
15*zeta^3 - 5*zeta - 5)*q^25 + 1/4*(-11*zeta^11 - 13*zeta^8 + 13*zeta^6 - 
11*zeta^4 + 11*zeta^3 - 13*zeta + 8)*q^28 + 1/8*(-21*zeta^11 - 7*zeta^8 + 
7*zeta^6 - 21*zeta^4 + 21*zeta^3 - 7*zeta - 7)*q^31 + 1/8*(2*zeta^11 + 3*zeta^8 
- 3*zeta^6 + 2*zeta^4 - 2*zeta^3 + 3*zeta - 4)*q^37 + 1/8*(-5*zeta^11 + 
10*zeta^8 - 10*zeta^6 - 5*zeta^4 + 5*zeta^3 + 10*zeta + 10)*q^43 + 
1/8*(20*zeta^11 + 37*zeta^8 - 37*zeta^6 + 20*zeta^4 - 20*zeta^3 + 37*zeta - 
19)*q^49 + 1/4*(21*zeta^11 + 7*zeta^8 - 7*zeta^6 + 21*zeta^4 - 21*zeta^3 + 
7*zeta + 7)*q^52 + 1/4*(-14*zeta^11 - 21*zeta^8 + 21*zeta^6 - 14*zeta^4 + 
14*zeta^3 - 21*zeta + 28)*q^61 + (zeta^11 - 2*zeta^8 + 2*zeta^6 + zeta^4 - 
zeta^3 - 2*zeta - 2)*q^64 + 1/8*(33*zeta^11 + 11*zeta^8 - 11*zeta^6 + 33*zeta^4 
- 33*zeta^3 + 11*zeta + 11)*q^67 + 1/8*(-21*zeta^11 - 7*zeta^8 + 7*zeta^6 - 
21*zeta^4 + 21*zeta^3 - 7*zeta - 7)*q^73 + 1/4*(-7*zeta^11 + 14*zeta^8 - 
14*zeta^6 - 7*zeta^4 + 7*zeta^3 + 14*zeta + 14)*q^76 + 1/8*(26*zeta^11 + 
39*zeta^8 - 39*zeta^6 + 26*zeta^4 - 26*zeta^3 + 39*zeta - 52)*q^79 + 
1/8*(91*zeta^11 + 14*zeta^8 - 14*zeta^6 + 91*zeta^4 - 91*zeta^3 + 14*zeta - 
35)*q^91 + 1/4*(-7*zeta^11 + 14*zeta^8 - 14*zeta^6 - 7*zeta^4 + 7*zeta^3 + 
14*zeta + 14)*q^97 + 1/4*(-10*zeta^11 - 15*zeta^8 + 15*zeta^6 - 10*zeta^4 + 
10*zeta^3 - 15*zeta + 20)*q^100 + 1/8*(14*zeta^11 + 21*zeta^8 - 21*zeta^6 + 
14*zeta^4 - 14*zeta^3 + 21*zeta - 28)*q^103 + 1/8*(51*zeta^11 + 17*zeta^8 - 
17*zeta^6 + 51*zeta^4 - 51*zeta^3 + 17*zeta + 17)*q^109 + 1/2*(2*zeta^11 - 
11*zeta^8 + 11*zeta^6 + 2*zeta^4 - 2*zeta^3 - 11*zeta + 3)*q^112 + 
1/8*(22*zeta^11 + 33*zeta^8 - 33*zeta^6 + 22*zeta^4 - 22*zeta^3 + 33*zeta - 
44)*q^121 + 1/4*(-14*zeta^11 - 21*zeta^8 + 21*zeta^6 - 14*zeta^4 + 14*zeta^3 - 
21*zeta + 28)*q^124 + 1/8*(19*zeta^11 - 38*zeta^8 + 38*zeta^6 + 19*zeta^4 - 
19*zeta^3 - 38*zeta - 38)*q^127 + 1/8*(-14*zeta^11 + 77*zeta^8 - 77*zeta^6 - 
14*zeta^4 + 14*zeta^3 + 77*zeta - 21)*q^133 + 1/8*(7*zeta^11 - 14*zeta^8 + 
14*zeta^6 + 7*zeta^4 - 7*zeta^3 - 14*zeta - 14)*q^139 + 1/4*(-zeta^11 + 2*zeta^8
- 2*zeta^6 - zeta^4 + zeta^3 + 2*zeta + 2)*q^148 + 1/2*(-3*zeta^11 - zeta^8 + 
zeta^6 - 3*zeta^4 + 3*zeta^3 - zeta - 1)*q^151 + 1/4*(21*zeta^11 + 7*zeta^8 - 
7*zeta^6 + 21*zeta^4 - 21*zeta^3 + 7*zeta + 7)*q^157 + (-2*zeta^11 - 3*zeta^8 + 
3*zeta^6 - 2*zeta^4 + 2*zeta^3 - 3*zeta + 4)*q^163 + 1/2*(-9*zeta^11 + 18*zeta^8
- 18*zeta^6 - 9*zeta^4 + 9*zeta^3 + 18*zeta + 18)*q^169 + 1/4*(-15*zeta^11 - 
5*zeta^8 + 5*zeta^6 - 15*zeta^4 + 15*zeta^3 - 5*zeta - 5)*q^172 + 
1/8*(-55*zeta^11 - 65*zeta^8 + 65*zeta^6 - 55*zeta^4 + 55*zeta^3 - 65*zeta + 
40)*q^175 + 1/8*(7*zeta^11 - 14*zeta^8 + 14*zeta^6 + 7*zeta^4 - 7*zeta^3 - 
14*zeta - 14)*q^181 + 1/8*(-75*zeta^11 - 25*zeta^8 + 25*zeta^6 - 75*zeta^4 + 
75*zeta^3 - 25*zeta - 25)*q^193 + 1/4*(-17*zeta^11 + 20*zeta^8 - 20*zeta^6 - 
17*zeta^4 + 17*zeta^3 + 20*zeta - 1)*q^196 + 1/2*(-21*zeta^11 - 7*zeta^8 + 
7*zeta^6 - 21*zeta^4 + 21*zeta^3 - 7*zeta - 7)*q^199 + 1/2*(14*zeta^11 + 
21*zeta^8 - 21*zeta^6 + 14*zeta^4 - 14*zeta^3 + 21*zeta - 28)*q^208 + (2*zeta^11
- 4*zeta^8 + 4*zeta^6 + 2*zeta^4 - 2*zeta^3 - 4*zeta - 4)*q^211 + 
1/8*(-77*zeta^11 - 91*zeta^8 + 91*zeta^6 - 77*zeta^4 + 77*zeta^3 - 91*zeta + 
56)*q^217 + 1/2*(7*zeta^11 - 14*zeta^8 + 14*zeta^6 + 7*zeta^4 - 7*zeta^3 - 
14*zeta - 14)*q^223 + 1/8*(14*zeta^11 + 21*zeta^8 - 21*zeta^6 + 14*zeta^4 - 
14*zeta^3 + 21*zeta - 28)*q^229 + 1/4*(21*zeta^11 + 7*zeta^8 - 7*zeta^6 + 
21*zeta^4 - 21*zeta^3 + 7*zeta + 7)*q^241 + 1/2*(7*zeta^11 - 14*zeta^8 + 
14*zeta^6 + 7*zeta^4 - 7*zeta^3 - 14*zeta - 14)*q^244 + 1/8*(-98*zeta^11 - 
147*zeta^8 + 147*zeta^6 - 98*zeta^4 + 98*zeta^3 - 147*zeta + 196)*q^247 + 
(6*zeta^11 + 2*zeta^8 - 2*zeta^6 + 6*zeta^4 - 6*zeta^3 + 2*zeta + 2)*q^256 + 
1/8*(-2*zeta^11 + 11*zeta^8 - 11*zeta^6 - 2*zeta^4 + 2*zeta^3 + 11*zeta - 
3)*q^259 + 1/4*(22*zeta^11 + 33*zeta^8 - 33*zeta^6 + 22*zeta^4 - 22*zeta^3 + 
33*zeta - 44)*q^268 + 1/2*(14*zeta^11 + 21*zeta^8 - 21*zeta^6 + 14*zeta^4 - 
14*zeta^3 + 21*zeta - 28)*q^271 + 1/8*(-93*zeta^11 - 31*zeta^8 + 31*zeta^6 - 
93*zeta^4 + 93*zeta^3 - 31*zeta - 31)*q^277 + 1/8*(-21*zeta^11 - 7*zeta^8 + 
7*zeta^6 - 21*zeta^4 + 21*zeta^3 - 7*zeta - 7)*q^283 + 1/8*(34*zeta^11 + 
51*zeta^8 - 51*zeta^6 + 34*zeta^4 - 34*zeta^3 + 51*zeta - 68)*q^289 + 
1/4*(-14*zeta^11 - 21*zeta^8 + 21*zeta^6 - 14*zeta^4 + 14*zeta^3 - 21*zeta + 
28)*q^292 + 1/8*(-65*zeta^11 - 10*zeta^8 + 10*zeta^6 - 65*zeta^4 + 65*zeta^3 - 
10*zeta + 25)*q^301 + 1/2*(-21*zeta^11 - 7*zeta^8 + 7*zeta^6 - 21*zeta^4 + 
21*zeta^3 - 7*zeta - 7)*q^304 + 1/8*(-35*zeta^11 + 70*zeta^8 - 70*zeta^6 - 
35*zeta^4 + 35*zeta^3 + 70*zeta + 70)*q^307 + 1/8*(-70*zeta^11 - 105*zeta^8 + 
105*zeta^6 - 70*zeta^4 + 70*zeta^3 - 105*zeta + 140)*q^313 + 1/4*(-13*zeta^11 + 
26*zeta^8 - 26*zeta^6 - 13*zeta^4 + 13*zeta^3 + 26*zeta + 26)*q^316 + 
1/8*(105*zeta^11 + 35*zeta^8 - 35*zeta^6 + 105*zeta^4 - 105*zeta^3 + 35*zeta + 
35)*q^325 + 1/8*(2*zeta^11 + 3*zeta^8 - 3*zeta^6 + 2*zeta^4 - 2*zeta^3 + 3*zeta 
- 4)*q^331 + 1/8*(-5*zeta^11 + 10*zeta^8 - 10*zeta^6 - 5*zeta^4 + 5*zeta^3 + 
10*zeta + 10)*q^337 + 1/8*(71*zeta^11 - 23*zeta^8 + 23*zeta^6 + 71*zeta^4 - 
71*zeta^3 - 23*zeta - 16)*q^343 + 1/4*(-7*zeta^11 + 14*zeta^8 - 14*zeta^6 - 
7*zeta^4 + 7*zeta^3 + 14*zeta + 14)*q^349 + 1/4*(45*zeta^11 + 15*zeta^8 - 
15*zeta^6 + 45*zeta^4 - 45*zeta^3 + 15*zeta + 15)*q^361 + 1/4*(77*zeta^11 + 
91*zeta^8 - 91*zeta^6 + 77*zeta^4 - 77*zeta^3 + 91*zeta - 56)*q^364 + 
1/8*(105*zeta^11 + 35*zeta^8 - 35*zeta^6 + 105*zeta^4 - 105*zeta^3 + 35*zeta + 
35)*q^367 + 1/8*(26*zeta^11 + 39*zeta^8 - 39*zeta^6 + 26*zeta^4 - 26*zeta^3 + 
39*zeta - 52)*q^373 + 1/8*(37*zeta^11 - 74*zeta^8 + 74*zeta^6 + 37*zeta^4 - 
37*zeta^3 - 74*zeta - 74)*q^379 + 1/2*(-21*zeta^11 - 7*zeta^8 + 7*zeta^6 - 
21*zeta^4 + 21*zeta^3 - 7*zeta - 7)*q^388 + 1/8*(-70*zeta^11 - 105*zeta^8 + 
105*zeta^6 - 70*zeta^4 + 70*zeta^3 - 105*zeta + 140)*q^397 + 1/2*(5*zeta^11 - 
10*zeta^8 + 10*zeta^6 + 5*zeta^4 - 5*zeta^3 - 10*zeta - 10)*q^400 + 
1/8*(147*zeta^11 + 49*zeta^8 - 49*zeta^6 + 147*zeta^4 - 147*zeta^3 + 49*zeta + 
49)*q^403 + 1/8*(-21*zeta^11 - 7*zeta^8 + 7*zeta^6 - 21*zeta^4 + 21*zeta^3 - 
7*zeta - 7)*q^409 + 1/4*(-7*zeta^11 + 14*zeta^8 - 14*zeta^6 - 7*zeta^4 + 
7*zeta^3 + 14*zeta + 14)*q^412 + 1/8*(19*zeta^11 - 38*zeta^8 + 38*zeta^6 + 
19*zeta^4 - 19*zeta^3 - 38*zeta - 38)*q^421 + 1/4*(14*zeta^11 - 77*zeta^8 + 
77*zeta^6 + 14*zeta^4 - 14*zeta^3 - 77*zeta + 21)*q^427 + 1/8*(-35*zeta^11 + 
70*zeta^8 - 70*zeta^6 - 35*zeta^4 + 35*zeta^3 + 70*zeta + 70)*q^433 + 
1/4*(34*zeta^11 + 51*zeta^8 - 51*zeta^6 + 34*zeta^4 - 34*zeta^3 + 51*zeta - 
68)*q^436 + 1/2*(14*zeta^11 + 21*zeta^8 - 21*zeta^6 + 14*zeta^4 - 14*zeta^3 + 
21*zeta - 28)*q^439 + (13*zeta^11 + 2*zeta^8 - 2*zeta^6 + 13*zeta^4 - 13*zeta^3 
+ 2*zeta - 5)*q^448 + 1/8*(-82*zeta^11 - 123*zeta^8 + 123*zeta^6 - 82*zeta^4 + 
82*zeta^3 - 123*zeta + 164)*q^457 + 1/8*(-23*zeta^11 + 46*zeta^8 - 46*zeta^6 - 
23*zeta^4 + 23*zeta^3 + 46*zeta + 46)*q^463 + 1/8*(121*zeta^11 + 143*zeta^8 - 
143*zeta^6 + 121*zeta^4 - 121*zeta^3 + 143*zeta - 88)*q^469 + 1/8*(-35*zeta^11 +
70*zeta^8 - 70*zeta^6 - 35*zeta^4 + 35*zeta^3 + 70*zeta + 70)*q^475 + 
1/8*(-14*zeta^11 - 21*zeta^8 + 21*zeta^6 - 14*zeta^4 + 14*zeta^3 - 21*zeta + 
28)*q^481 + 1/4*(-11*zeta^11 + 22*zeta^8 - 22*zeta^6 - 11*zeta^4 + 11*zeta^3 + 
22*zeta + 22)*q^484 + 1/8*(-75*zeta^11 - 25*zeta^8 + 25*zeta^6 - 75*zeta^4 + 
75*zeta^3 - 25*zeta - 25)*q^487 + 1/2*(7*zeta^11 - 14*zeta^8 + 14*zeta^6 + 
7*zeta^4 - 7*zeta^3 - 14*zeta - 14)*q^496 + 1/8*(86*zeta^11 + 129*zeta^8 - 
129*zeta^6 + 86*zeta^4 - 86*zeta^3 + 129*zeta - 172)*q^499 + 1/4*(57*zeta^11 + 
19*zeta^8 - 19*zeta^6 + 57*zeta^4 - 57*zeta^3 + 19*zeta + 19)*q^508 + 
1/8*(-77*zeta^11 - 91*zeta^8 + 91*zeta^6 - 77*zeta^4 + 77*zeta^3 - 91*zeta + 
56)*q^511 + 1/8*(-70*zeta^11 - 105*zeta^8 + 105*zeta^6 - 70*zeta^4 + 70*zeta^3 -
105*zeta + 140)*q^523 + 1/8*(-69*zeta^11 - 23*zeta^8 + 23*zeta^6 - 69*zeta^4 + 
69*zeta^3 - 23*zeta - 23)*q^529 + 1/4*(-91*zeta^11 - 14*zeta^8 + 14*zeta^6 - 
91*zeta^4 + 91*zeta^3 - 14*zeta + 35)*q^532 + 1/8*(-58*zeta^11 - 87*zeta^8 + 
87*zeta^6 - 58*zeta^4 + 58*zeta^3 - 87*zeta + 116)*q^541 + (5*zeta^11 - 
10*zeta^8 + 10*zeta^6 + 5*zeta^4 - 5*zeta^3 - 10*zeta - 10)*q^547 + 
1/8*(-26*zeta^11 + 143*zeta^8 - 143*zeta^6 - 26*zeta^4 + 26*zeta^3 + 143*zeta - 
39)*q^553 + 1/4*(21*zeta^11 + 7*zeta^8 - 7*zeta^6 + 21*zeta^4 - 21*zeta^3 + 
7*zeta + 7)*q^556 + 1/8*(35*zeta^11 - 70*zeta^8 + 70*zeta^6 + 35*zeta^4 - 
35*zeta^3 - 70*zeta - 70)*q^559 + 1/8*(-93*zeta^11 - 31*zeta^8 + 31*zeta^6 - 
93*zeta^4 + 93*zeta^3 - 31*zeta - 31)*q^571 + 1/8*(105*zeta^11 + 35*zeta^8 - 
35*zeta^6 + 105*zeta^4 - 105*zeta^3 + 35*zeta + 35)*q^577 + 1/8*(-49*zeta^11 + 
98*zeta^8 - 98*zeta^6 - 49*zeta^4 + 49*zeta^3 + 98*zeta + 98)*q^589 + 
1/2*(-3*zeta^11 - zeta^8 + zeta^6 - 3*zeta^4 + 3*zeta^3 - zeta - 1)*q^592 + 
1/8*(49*zeta^11 - 98*zeta^8 + 98*zeta^6 + 49*zeta^4 - 49*zeta^3 - 98*zeta - 
98)*q^601 + (-2*zeta^11 - 3*zeta^8 + 3*zeta^6 - 2*zeta^4 + 2*zeta^3 - 3*zeta + 
4)*q^604 + 1/8*(98*zeta^11 + 147*zeta^8 - 147*zeta^6 + 98*zeta^4 - 98*zeta^3 + 
147*zeta - 196)*q^607 + 1/4*(-15*zeta^11 - 5*zeta^8 + 5*zeta^6 - 15*zeta^4 + 
15*zeta^3 - 5*zeta - 5)*q^613 + 1/8*(-147*zeta^11 - 49*zeta^8 + 49*zeta^6 - 
147*zeta^4 + 147*zeta^3 - 49*zeta - 49)*q^619 + 1/8*(-50*zeta^11 - 75*zeta^8 + 
75*zeta^6 - 50*zeta^4 + 50*zeta^3 - 75*zeta + 100)*q^625 + 1/2*(14*zeta^11 + 
21*zeta^8 - 21*zeta^6 + 14*zeta^4 - 14*zeta^3 + 21*zeta - 28)*q^628 + 
1/2*(-11*zeta^11 + 22*zeta^8 - 22*zeta^6 - 11*zeta^4 + 11*zeta^3 + 22*zeta + 
22)*q^631 + 1/8*(-140*zeta^11 - 259*zeta^8 + 259*zeta^6 - 140*zeta^4 + 
140*zeta^3 - 259*zeta + 133)*q^637 + 1/8*(7*zeta^11 - 14*zeta^8 + 14*zeta^6 + 
7*zeta^4 - 7*zeta^3 - 14*zeta - 14)*q^643 + (2*zeta^11 - 4*zeta^8 + 4*zeta^6 + 
2*zeta^4 - 2*zeta^3 - 4*zeta - 4)*q^652 + 1/8*(-147*zeta^11 - 49*zeta^8 + 
49*zeta^6 - 147*zeta^4 + 147*zeta^3 - 49*zeta - 49)*q^661 + 1/8*(37*zeta^11 - 
74*zeta^8 + 74*zeta^6 + 37*zeta^4 - 37*zeta^3 - 74*zeta - 74)*q^673 + 
(-27*zeta^11 - 9*zeta^8 + 9*zeta^6 - 27*zeta^4 + 27*zeta^3 - 9*zeta - 9)*q^676 +
1/4*(-91*zeta^11 - 14*zeta^8 + 14*zeta^6 - 91*zeta^4 + 91*zeta^3 - 14*zeta + 
35)*q^679 + 1/2*(-10*zeta^11 - 15*zeta^8 + 15*zeta^6 - 10*zeta^4 + 10*zeta^3 - 
15*zeta + 20)*q^688 + 1/8*(98*zeta^11 + 147*zeta^8 - 147*zeta^6 + 98*zeta^4 - 
98*zeta^3 + 147*zeta - 196)*q^691 + 1/4*(10*zeta^11 - 55*zeta^8 + 55*zeta^6 + 
10*zeta^4 - 10*zeta^3 - 55*zeta + 15)*q^700 + 1/8*(21*zeta^11 + 7*zeta^8 - 
7*zeta^6 + 21*zeta^4 - 21*zeta^3 + 7*zeta + 7)*q^703 + 1/4*(22*zeta^11 + 
33*zeta^8 - 33*zeta^6 + 22*zeta^4 - 22*zeta^3 + 33*zeta - 44)*q^709 + 
1/8*(-14*zeta^11 + 77*zeta^8 - 77*zeta^6 - 14*zeta^4 + 14*zeta^3 + 77*zeta - 
21)*q^721 + 1/4*(21*zeta^11 + 7*zeta^8 - 7*zeta^6 + 21*zeta^4 - 21*zeta^3 + 
7*zeta + 7)*q^724 + 1/8*(49*zeta^11 - 98*zeta^8 + 98*zeta^6 + 49*zeta^4 - 
49*zeta^3 - 98*zeta - 98)*q^727 + 1/8*(14*zeta^11 + 21*zeta^8 - 21*zeta^6 + 
14*zeta^4 - 14*zeta^3 + 21*zeta - 28)*q^733 + 1/8*(159*zeta^11 + 53*zeta^8 - 
53*zeta^6 + 159*zeta^4 - 159*zeta^3 + 53*zeta + 53)*q^739 + 1/8*(-82*zeta^11 - 
123*zeta^8 + 123*zeta^6 - 82*zeta^4 + 82*zeta^3 - 123*zeta + 164)*q^751 + 
1/4*(-13*zeta^11 + 26*zeta^8 - 26*zeta^6 - 13*zeta^4 + 13*zeta^3 + 26*zeta + 
26)*q^757 + 1/8*(187*zeta^11 + 221*zeta^8 - 221*zeta^6 + 187*zeta^4 - 187*zeta^3
+ 221*zeta - 136)*q^763 + 1/8*(49*zeta^11 - 98*zeta^8 + 98*zeta^6 + 49*zeta^4 - 
49*zeta^3 - 98*zeta - 98)*q^769 + 1/4*(-50*zeta^11 - 75*zeta^8 + 75*zeta^6 - 
50*zeta^4 + 50*zeta^3 - 75*zeta + 100)*q^772 + 1/8*(-70*zeta^11 - 105*zeta^8 + 
105*zeta^6 - 70*zeta^4 + 70*zeta^3 - 105*zeta + 140)*q^775 + 1/2*(-37*zeta^11 - 
17*zeta^8 + 17*zeta^6 - 37*zeta^4 + 37*zeta^3 - 17*zeta + 18)*q^784 + 
(21*zeta^11 + 7*zeta^8 - 7*zeta^6 + 21*zeta^4 - 21*zeta^3 + 7*zeta + 7)*q^787 + 
1/4*(98*zeta^11 + 147*zeta^8 - 147*zeta^6 + 98*zeta^4 - 98*zeta^3 + 147*zeta - 
196)*q^793 + (-14*zeta^11 - 21*zeta^8 + 21*zeta^6 - 14*zeta^4 + 14*zeta^3 - 
21*zeta + 28)*q^796 + (-7*zeta^11 + 14*zeta^8 - 14*zeta^6 - 7*zeta^4 + 7*zeta^3 
+ 14*zeta + 14)*q^811 + 1/8*(70*zeta^11 + 105*zeta^8 - 105*zeta^6 + 70*zeta^4 - 
70*zeta^3 + 105*zeta - 140)*q^817 + 1/2*(-39*zeta^11 - 13*zeta^8 + 13*zeta^6 - 
39*zeta^4 + 39*zeta^3 - 13*zeta - 13)*q^823 + 1/8*(-21*zeta^11 - 7*zeta^8 + 
7*zeta^6 - 21*zeta^4 + 21*zeta^3 - 7*zeta - 7)*q^829 + (-7*zeta^11 + 14*zeta^8 -
14*zeta^6 - 7*zeta^4 + 7*zeta^3 + 14*zeta + 14)*q^832 + 1/8*(29*zeta^11 - 
58*zeta^8 + 58*zeta^6 + 29*zeta^4 - 29*zeta^3 - 58*zeta - 58)*q^841 + 
(12*zeta^11 + 4*zeta^8 - 4*zeta^6 + 12*zeta^4 - 12*zeta^3 + 4*zeta + 4)*q^844 + 
1/8*(-22*zeta^11 + 121*zeta^8 - 121*zeta^6 - 22*zeta^4 + 22*zeta^3 + 121*zeta - 
33)*q^847 + 1/8*(-35*zeta^11 + 70*zeta^8 - 70*zeta^6 - 35*zeta^4 + 35*zeta^3 + 
70*zeta + 70)*q^853 + (-14*zeta^11 - 21*zeta^8 + 21*zeta^6 - 14*zeta^4 + 
14*zeta^3 - 21*zeta + 28)*q^859 + 1/4*(14*zeta^11 - 77*zeta^8 + 77*zeta^6 + 
14*zeta^4 - 14*zeta^3 - 77*zeta + 21)*q^868 + 1/8*(-231*zeta^11 - 77*zeta^8 + 
77*zeta^6 - 231*zeta^4 + 231*zeta^3 - 77*zeta - 77)*q^871 + 1/4*(34*zeta^11 + 
51*zeta^8 - 51*zeta^6 + 34*zeta^4 - 34*zeta^3 + 51*zeta - 68)*q^877 + 
1/8*(-47*zeta^11 + 94*zeta^8 - 94*zeta^6 - 47*zeta^4 + 47*zeta^3 + 94*zeta + 
94)*q^883 + 1/8*(247*zeta^11 + 38*zeta^8 - 38*zeta^6 + 247*zeta^4 - 247*zeta^3 +
38*zeta - 95)*q^889 + (21*zeta^11 + 7*zeta^8 - 7*zeta^6 + 21*zeta^4 - 21*zeta^3 
+ 7*zeta + 7)*q^892 + 1/8*(177*zeta^11 + 59*zeta^8 - 59*zeta^6 + 177*zeta^4 - 
177*zeta^3 + 59*zeta + 59)*q^907 + 1/4*(-7*zeta^11 + 14*zeta^8 - 14*zeta^6 - 
7*zeta^4 + 7*zeta^3 + 14*zeta + 14)*q^916 + 1/8*(2*zeta^11 + 3*zeta^8 - 3*zeta^6
+ 2*zeta^4 - 2*zeta^3 + 3*zeta - 4)*q^919 + 1/8*(-5*zeta^11 + 10*zeta^8 - 
10*zeta^6 - 5*zeta^4 + 5*zeta^3 + 10*zeta + 10)*q^925 + 1/8*(259*zeta^11 + 
119*zeta^8 - 119*zeta^6 + 259*zeta^4 - 259*zeta^3 + 119*zeta - 126)*q^931 + 
1/8*(-35*zeta^11 + 70*zeta^8 - 70*zeta^6 - 35*zeta^4 + 35*zeta^3 + 70*zeta + 
70)*q^937 + 1/8*(147*zeta^11 + 49*zeta^8 - 49*zeta^6 + 147*zeta^4 - 147*zeta^3 +
49*zeta + 49)*q^949 + 1/4*(-18*zeta^11 - 27*zeta^8 + 27*zeta^6 - 18*zeta^4 + 
18*zeta^3 - 27*zeta + 36)*q^961 + 1/2*(14*zeta^11 + 21*zeta^8 - 21*zeta^6 + 
14*zeta^4 - 14*zeta^3 + 21*zeta - 28)*q^964 + 1/8*(61*zeta^11 - 122*zeta^8 + 
122*zeta^6 + 61*zeta^4 - 61*zeta^3 - 122*zeta - 122)*q^967 + 1/8*(91*zeta^11 + 
14*zeta^8 - 14*zeta^6 + 91*zeta^4 - 91*zeta^3 + 14*zeta - 35)*q^973 + 
(21*zeta^11 + 7*zeta^8 - 7*zeta^6 + 21*zeta^4 - 21*zeta^3 + 7*zeta + 7)*q^976 + 
1/4*(49*zeta^11 - 98*zeta^8 + 98*zeta^6 + 49*zeta^4 - 49*zeta^3 - 98*zeta - 
98)*q^988 + 1/8*(51*zeta^11 + 17*zeta^8 - 17*zeta^6 + 51*zeta^4 - 51*zeta^3 + 
17*zeta + 17)*q^991 + 1/8*(-147*zeta^11 - 49*zeta^8 + 49*zeta^6 - 147*zeta^4 + 
147*zeta^3 - 49*zeta - 49)*q^997 + 1/8*(19*zeta^11 - 38*zeta^8 + 38*zeta^6 + 
19*zeta^4 - 19*zeta^3 - 38*zeta - 38)*q^1009 + 1/4*(-7*zeta^11 + 14*zeta^8 - 
14*zeta^6 - 7*zeta^4 + 7*zeta^3 + 14*zeta + 14)*q^1021 + (8*zeta^11 + 12*zeta^8 
- 12*zeta^6 + 8*zeta^4 - 8*zeta^3 + 12*zeta - 16)*q^1024 + 1/8*(-182*zeta^11 - 
273*zeta^8 + 273*zeta^6 - 182*zeta^4 + 182*zeta^3 - 273*zeta + 364)*q^1027 + 
1/8*(159*zeta^11 + 53*zeta^8 - 53*zeta^6 + 159*zeta^4 - 159*zeta^3 + 53*zeta + 
53)*q^1033 + 1/4*(-13*zeta^11 - 2*zeta^8 + 2*zeta^6 - 13*zeta^4 + 13*zeta^3 - 
2*zeta + 5)*q^1036 + 1/8*(-21*zeta^11 - 7*zeta^8 + 7*zeta^6 - 21*zeta^4 + 
21*zeta^3 - 7*zeta - 7)*q^1039 + 1/8*(-23*zeta^11 + 46*zeta^8 - 46*zeta^6 - 
23*zeta^4 + 23*zeta^3 + 46*zeta + 46)*q^1051 + 1/2*(-11*zeta^11 - 13*zeta^8 + 
13*zeta^6 - 11*zeta^4 + 11*zeta^3 - 13*zeta + 8)*q^1057 + 1/2*(7*zeta^11 - 
14*zeta^8 + 14*zeta^6 + 7*zeta^4 - 7*zeta^3 - 14*zeta - 14)*q^1063 + 
1/8*(98*zeta^11 + 147*zeta^8 - 147*zeta^6 + 98*zeta^4 - 98*zeta^3 + 147*zeta - 
196)*q^1069 + 1/2*(-11*zeta^11 + 22*zeta^8 - 22*zeta^6 - 11*zeta^4 + 11*zeta^3 +
22*zeta + 22)*q^1072 + 1/8*(-75*zeta^11 - 25*zeta^8 + 25*zeta^6 - 75*zeta^4 + 
75*zeta^3 - 25*zeta - 25)*q^1075 + (-7*zeta^11 + 14*zeta^8 - 14*zeta^6 - 
7*zeta^4 + 7*zeta^3 + 14*zeta + 14)*q^1084 + 1/8*(110*zeta^11 + 165*zeta^8 - 
165*zeta^6 + 110*zeta^4 - 110*zeta^3 + 165*zeta - 220)*q^1087 + 1/8*(-65*zeta^11
+ 130*zeta^8 - 130*zeta^6 - 65*zeta^4 + 65*zeta^3 + 130*zeta + 130)*q^1093 + 
1/4*(77*zeta^11 + 91*zeta^8 - 91*zeta^6 + 77*zeta^4 - 77*zeta^3 + 91*zeta - 
56)*q^1099 + 1/4*(-62*zeta^11 - 93*zeta^8 + 93*zeta^6 - 62*zeta^4 + 62*zeta^3 - 
93*zeta + 124)*q^1108 + 1/4*(-69*zeta^11 - 23*zeta^8 + 23*zeta^6 - 69*zeta^4 + 
69*zeta^3 - 23*zeta - 23)*q^1117 + 1/8*(105*zeta^11 + 35*zeta^8 - 35*zeta^6 + 
105*zeta^4 - 105*zeta^3 + 35*zeta + 35)*q^1123 + 1/8*(-58*zeta^11 - 87*zeta^8 + 
87*zeta^6 - 58*zeta^4 + 58*zeta^3 - 87*zeta + 116)*q^1129 + 1/4*(-14*zeta^11 - 
21*zeta^8 + 21*zeta^6 - 14*zeta^4 + 14*zeta^3 - 21*zeta + 28)*q^1132 + 
(2*zeta^11 - 11*zeta^8 + 11*zeta^6 + 2*zeta^4 - 2*zeta^3 - 11*zeta + 3)*q^1141 +
1/8*(-7*zeta^11 + 14*zeta^8 - 14*zeta^6 - 7*zeta^4 + 7*zeta^3 + 14*zeta + 
14)*q^1147 + 1/8*(14*zeta^11 + 21*zeta^8 - 21*zeta^6 + 14*zeta^4 - 14*zeta^3 + 
21*zeta - 28)*q^1153 + 1/4*(-17*zeta^11 + 34*zeta^8 - 34*zeta^6 - 17*zeta^4 + 
17*zeta^3 + 34*zeta + 34)*q^1156 + 1/4*(-147*zeta^11 - 49*zeta^8 + 49*zeta^6 - 
147*zeta^4 + 147*zeta^3 - 49*zeta - 49)*q^1159 + 1/2*(7*zeta^11 - 14*zeta^8 + 
14*zeta^6 + 7*zeta^4 - 7*zeta^3 - 14*zeta - 14)*q^1168 + (16*zeta^11 + 24*zeta^8
- 24*zeta^6 + 16*zeta^4 - 16*zeta^3 + 24*zeta - 32)*q^1171 + 1/2*(-117*zeta^11 -
18*zeta^8 + 18*zeta^6 - 117*zeta^4 + 117*zeta^3 - 18*zeta + 45)*q^1183 + 
1/8*(177*zeta^11 + 59*zeta^8 - 59*zeta^6 + 177*zeta^4 - 177*zeta^3 + 59*zeta + 
59)*q^1201 + 1/4*(-55*zeta^11 - 65*zeta^8 + 65*zeta^6 - 55*zeta^4 + 55*zeta^3 - 
65*zeta + 40)*q^1204 + 1/4*(-50*zeta^11 - 75*zeta^8 + 75*zeta^6 - 50*zeta^4 + 
50*zeta^3 - 75*zeta + 100)*q^1213 + (-14*zeta^11 - 21*zeta^8 + 21*zeta^6 - 
14*zeta^4 + 14*zeta^3 - 21*zeta + 28)*q^1216 + O(q^1218)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 5);
              X_21C6 := Curve(P_Q, [ PolynomialRing(RationalField(), 6) |
x[1]^2 + 4/7*x[2]*x[3] + 3/28*x[2]*x[4] + 3/14*x[2]*x[5] - 1/28*x[3]^2 - 
3/7*x[3]*x[4] - 5/7*x[3]*x[5] - 1/4*x[4]^2 - 3/14*x[4]*x[5] + 3/4*x[5]^2 + 
384/49*x[6]^2,
x[1]*x[2] + 1/56*x[2]*x[3] + 59/112*x[2]*x[4] - 11/7*x[2]*x[5] - 57/112*x[3]^2 -
27/56*x[3]*x[4] + 23/28*x[3]*x[5] - 9/16*x[4]^2 + 15/14*x[4]*x[5] - 21/16*x[5]^2
- 912/49*x[6]^2,
x[1]*x[3] + 3/28*x[2]*x[3] + 1/28*x[2]*x[4] - 47/28*x[2]*x[5] - 3/7*x[3]^2 + 
3/28*x[3]*x[4] + 3/7*x[3]*x[5] - 3/4*x[4]^2 + 33/28*x[4]*x[5] - 768/49*x[6]^2,
x[1]*x[4] - 123/56*x[2]*x[3] - 285/112*x[2]*x[4] + 39/14*x[2]*x[5] + 
95/112*x[3]^2 + 129/56*x[3]*x[4] - 113/28*x[3]*x[5] - 1/16*x[4]^2 - 
9/7*x[4]*x[5] + 35/16*x[5]^2 - 2064/49*x[6]^2,
x[1]*x[5] - 10/7*x[2]*x[3] - 8/7*x[2]*x[4] + 17/14*x[2]*x[5] + 27/28*x[3]^2 + 
15/14*x[3]*x[4] - 12/7*x[3]*x[5] - 5/7*x[4]*x[5] + 3/4*x[5]^2 - 960/49*x[6]^2,
x[2]^2 - 6/7*x[2]*x[3] + 5/7*x[2]*x[4] - 4/7*x[2]*x[5] + 3/7*x[3]^2 - 
6/7*x[3]*x[4] + 4/7*x[3]*x[5] + 4/7*x[4]*x[5] - x[5]^2 + 768/49*x[6]^2,
x[1]^3 - 5222886/2402219*x[2]*x[5]^2 - 494116368/16815533*x[2]*x[6]^2 - 
2241743/19217752*x[3]^3 + 3268765/9608876*x[3]^2*x[4] - 
39160341/19217752*x[3]^2*x[5] - 1369271/4804438*x[3]*x[4]^2 + 
6215367/4804438*x[3]*x[4]*x[5] - 2434057/19217752*x[3]*x[5]^2 + 
527442240/16815533*x[3]*x[6]^2 + 1680115/2402219*x[4]^3 - 
11721317/4804438*x[4]^2*x[5] + 15043885/9608876*x[4]*x[5]^2 + 
25638416/989149*x[4]*x[6]^2 + 45342221/19217752*x[5]^3 - 
802667776/16815533*x[5]*x[6]^2,
x[1]^2*x[2] + 8667070/2402219*x[2]*x[5]^2 - 1764368576/16815533*x[2]*x[6]^2 + 
9111741/4804438*x[3]^3 + 747087/2402219*x[3]^2*x[4] - 
1892023/4804438*x[3]^2*x[5] - 4029828/2402219*x[3]*x[4]^2 + 
4491870/2402219*x[3]*x[4]*x[5] + 2362323/4804438*x[3]*x[5]^2 + 
2031957376/16815533*x[3]*x[6]^2 + 1984464/2402219*x[4]^3 + 
3339268/2402219*x[4]^2*x[5] - 15199931/2402219*x[4]*x[5]^2 + 
42358656/989149*x[4]*x[6]^2 + 31824807/4804438*x[5]^3 + 
2025909888/16815533*x[5]*x[6]^2,
x[1]^2*x[3] + 1344303/2402219*x[2]*x[5]^2 - 23341184/16815533*x[2]*x[6]^2 + 
1273857/4804438*x[3]^3 - 191772/2402219*x[3]^2*x[4] - 
4980209/4804438*x[3]^2*x[5] - 599874/2402219*x[3]*x[4]^2 - 
1099668/2402219*x[3]*x[4]*x[5] + 3430535/4804438*x[3]*x[5]^2 + 
32799808/16815533*x[3]*x[6]^2 + 87672/2402219*x[4]^3 + 
140786/2402219*x[4]^2*x[5] + 318553/2402219*x[4]*x[5]^2 + 
7477632/989149*x[4]*x[6]^2 - 2791919/4804438*x[5]^3 - 
197331072/16815533*x[5]*x[6]^2,
x[1]^2*x[4] - 3128514/2402219*x[2]*x[5]^2 + 1015681152/16815533*x[2]*x[6]^2 - 
5107375/4804438*x[3]^3 + 649375/2402219*x[3]^2*x[4] - 
1870147/4804438*x[3]^2*x[5] + 1044676/2402219*x[3]*x[4]^2 - 
4219234/2402219*x[3]*x[4]*x[5] - 242129/4804438*x[3]*x[5]^2 - 
1247104128/16815533*x[3]*x[6]^2 - 1458224/2402219*x[4]^3 - 
2653796/2402219*x[4]^2*x[5] + 9765717/2402219*x[4]*x[5]^2 - 
12247488/989149*x[4]*x[6]^2 - 16125917/4804438*x[5]^3 - 
1190380416/16815533*x[5]*x[6]^2,
x[1]^2*x[5] - 1572189/2402219*x[2]*x[5]^2 + 486616064/16815533*x[2]*x[6]^2 - 
3211257/4804438*x[3]^3 + 347796/2402219*x[3]^2*x[4] - 
1099015/4804438*x[3]^2*x[5] + 866058/2402219*x[3]*x[4]^2 - 
1728708/2402219*x[3]*x[4]*x[5] - 4386215/4804438*x[3]*x[5]^2 - 
614278528/16815533*x[3]*x[6]^2 - 169824/2402219*x[4]^3 - 
2659802/2402219*x[4]^2*x[5] + 4916669/2402219*x[4]*x[5]^2 - 
947456/989149*x[4]*x[6]^2 - 6346577/4804438*x[5]^3 - 
801781952/16815533*x[5]*x[6]^2,
x[1]^2*x[6] + 4/7*x[2]*x[3]*x[6] + 3/28*x[2]*x[4]*x[6] + 3/14*x[2]*x[5]*x[6] - 
1/28*x[3]^2*x[6] - 3/7*x[3]*x[4]*x[6] - 5/7*x[3]*x[5]*x[6] - 1/4*x[4]^2*x[6] - 
3/14*x[4]*x[5]*x[6] + 3/4*x[5]^2*x[6] + 384/49*x[6]^3,
x[1]*x[2]^2 - 2353488/2402219*x[2]*x[5]^2 - 284914080/16815533*x[2]*x[6]^2 - 
2124903/9608876*x[3]^3 - 6833877/9608876*x[3]^2*x[4] + 
3742149/9608876*x[3]^2*x[5] - 1310937/2402219*x[3]*x[4]^2 + 
3701436/2402219*x[3]*x[4]*x[5] - 12738177/9608876*x[3]*x[5]^2 - 
14893440/16815533*x[3]*x[6]^2 + 406542/2402219*x[4]^3 + 
25155/2402219*x[4]^2*x[5] - 14258707/9608876*x[4]*x[5]^2 - 
11623264/989149*x[4]*x[6]^2 + 23686195/9608876*x[5]^3 + 
102213824/2402219*x[5]*x[6]^2,
x[1]*x[2]*x[3] + 2849919/2402219*x[2]*x[5]^2 - 444513920/16815533*x[2]*x[6]^2 + 
3190119/9608876*x[3]^3 - 5182053/9608876*x[3]^2*x[4] + 
7644987/9608876*x[3]^2*x[5] - 4368861/4804438*x[3]*x[4]^2 + 
2956509/2402219*x[3]*x[4]*x[5] - 8944215/9608876*x[3]*x[5]^2 + 
249089728/16815533*x[3]*x[6]^2 - 63642/2402219*x[4]^3 + 
6533391/4804438*x[4]^2*x[5] - 31727027/9608876*x[4]*x[5]^2 - 
11769536/989149*x[4]*x[6]^2 + 28532917/9608876*x[5]^3 + 
1430186944/16815533*x[5]*x[6]^2,
x[1]*x[2]*x[4] - 2307844/2402219*x[2]*x[5]^2 - 134946208/16815533*x[2]*x[6]^2 + 
843239/9608876*x[3]^3 - 3356025/9608876*x[3]^2*x[4] + 
1906271/9608876*x[3]^2*x[5] - 85885/2402219*x[3]*x[4]^2 - 
1922386/2402219*x[3]*x[4]*x[5] + 13948577/9608876*x[3]*x[5]^2 + 
201004544/16815533*x[3]*x[6]^2 - 1411446/2402219*x[4]^3 + 
2093691/2402219*x[4]^2*x[5] - 1326247/9608876*x[4]*x[5]^2 - 
2543776/141307*x[4]*x[6]^2 - 14208151/9608876*x[5]^3 + 
110421440/16815533*x[5]*x[6]^2,
x[1]*x[2]*x[5] - 2495381/2402219*x[2]*x[5]^2 + 179263488/16815533*x[2]*x[6]^2 + 
129431/4804438*x[3]^3 - 1996173/9608876*x[3]^2*x[4] - 258169/2402219*x[3]^2*x[5]
+ 867383/4804438*x[3]*x[4]^2 - 1306418/2402219*x[3]*x[4]*x[5] + 
1959285/4804438*x[3]*x[5]^2 - 168677760/16815533*x[3]*x[6]^2 - 
655944/2402219*x[4]^3 + 64079/4804438*x[4]^2*x[5] + 8355345/9608876*x[4]*x[5]^2 
- 10510016/989149*x[4]*x[6]^2 - 3853621/2402219*x[5]^3 - 
39814400/2402219*x[5]*x[6]^2,
x[1]*x[2]*x[6] + 1/56*x[2]*x[3]*x[6] + 59/112*x[2]*x[4]*x[6] - 
11/7*x[2]*x[5]*x[6] - 57/112*x[3]^2*x[6] - 27/56*x[3]*x[4]*x[6] + 
23/28*x[3]*x[5]*x[6] - 9/16*x[4]^2*x[6] + 15/14*x[4]*x[5]*x[6] - 
21/16*x[5]^2*x[6] - 912/49*x[6]^3,
x[1]*x[3]^2 + 14492433/4804438*x[2]*x[5]^2 - 1342920640/16815533*x[2]*x[6]^2 + 
3931474/2402219*x[3]^3 - 913188/2402219*x[3]^2*x[4] + 
11303647/9608876*x[3]^2*x[5] - 4116464/2402219*x[3]*x[4]^2 + 
9406407/4804438*x[3]*x[4]*x[5] + 821306/2402219*x[3]*x[5]^2 + 
1442238848/16815533*x[3]*x[6]^2 + 121656/2402219*x[4]^3 + 
7014688/2402219*x[4]^2*x[5] - 16458331/2402219*x[4]*x[5]^2 - 
2460224/989149*x[4]*x[6]^2 + 56718385/9608876*x[5]^3 + 
2774882752/16815533*x[5]*x[6]^2,
x[1]*x[3]*x[4] - 4947147/2402219*x[2]*x[5]^2 - 338464512/16815533*x[2]*x[6]^2 - 
3348227/9608876*x[3]^3 + 2990127/9608876*x[3]^2*x[4] - 
13145455/9608876*x[3]^2*x[5] - 1244461/4804438*x[3]*x[4]^2 + 
849717/2402219*x[3]*x[4]*x[5] + 12828211/9608876*x[3]*x[5]^2 + 
250713408/16815533*x[3]*x[6]^2 + 114390/2402219*x[4]^3 - 
4410753/4804438*x[4]^2*x[5] + 14643585/9608876*x[4]*x[5]^2 + 
14253504/989149*x[4]*x[6]^2 + 523839/9608876*x[5]^3 - 
421415616/16815533*x[5]*x[6]^2,
x[1]*x[3]*x[5] - 8766915/4804438*x[2]*x[5]^2 + 96137728/16815533*x[2]*x[6]^2 - 
1190503/9608876*x[3]^3 + 99981/4804438*x[3]^2*x[4] - 2174497/4804438*x[3]^2*x[5]
+ 174524/2402219*x[3]*x[4]^2 + 245023/4804438*x[3]*x[4]*x[5] + 
3643303/9608876*x[3]*x[5]^2 - 119639360/16815533*x[3]*x[6]^2 - 
51264/2402219*x[4]^3 - 2144560/2402219*x[4]^2*x[5] + 7660073/4804438*x[4]*x[5]^2
- 490496/989149*x[4]*x[6]^2 - 1898159/4804438*x[5]^3 - 
436706432/16815533*x[5]*x[6]^2,
x[1]*x[3]*x[6] + 3/28*x[2]*x[3]*x[6] + 1/28*x[2]*x[4]*x[6] - 
47/28*x[2]*x[5]*x[6] - 3/7*x[3]^2*x[6] + 3/28*x[3]*x[4]*x[6] + 
3/7*x[3]*x[5]*x[6] - 3/4*x[4]^2*x[6] + 33/28*x[4]*x[5]*x[6] - 768/49*x[6]^3,
x[1]*x[4]^2 + 13783368/2402219*x[2]*x[5]^2 - 4108970400/16815533*x[2]*x[6]^2 + 
32049717/9608876*x[3]^3 + 1962307/9608876*x[3]^2*x[4] - 
14968263/9608876*x[3]^2*x[5] - 8735625/2402219*x[3]*x[4]^2 + 
16163096/2402219*x[3]*x[4]*x[5] - 33938109/9608876*x[3]*x[5]^2 + 
4621323648/16815533*x[3]*x[6]^2 + 6788998/2402219*x[4]^3 - 
984309/2402219*x[4]^2*x[5] - 129242171/9608876*x[4]*x[5]^2 + 
86680224/989149*x[4]*x[6]^2 + 189507807/9608876*x[5]^3 + 
3632093760/16815533*x[5]*x[6]^2,
x[1]*x[4]*x[5] + 9234249/2402219*x[2]*x[5]^2 - 2538900480/16815533*x[2]*x[6]^2 +
5703495/2402219*x[3]^3 + 2963439/9608876*x[3]^2*x[4] - 
337147/4804438*x[3]^2*x[5] - 9971529/4804438*x[3]*x[4]^2 + 
8736030/2402219*x[3]*x[4]*x[5] - 3872473/2402219*x[3]*x[5]^2 + 
2970214656/16815533*x[3]*x[6]^2 + 3303864/2402219*x[4]^3 + 
3733007/4804438*x[4]^2*x[5] - 85191843/9608876*x[4]*x[5]^2 + 
46345536/989149*x[4]*x[6]^2 + 53197967/4804438*x[5]^3 + 
2621536896/16815533*x[5]*x[6]^2,
x[1]*x[4]*x[6] - 123/56*x[2]*x[3]*x[6] - 285/112*x[2]*x[4]*x[6] + 
39/14*x[2]*x[5]*x[6] + 95/112*x[3]^2*x[6] + 129/56*x[3]*x[4]*x[6] - 
113/28*x[3]*x[5]*x[6] - 1/16*x[4]^2*x[6] - 9/7*x[4]*x[5]*x[6] + 
35/16*x[5]^2*x[6] - 2064/49*x[6]^3,
x[1]*x[5]^2 + 11772825/4804438*x[2]*x[5]^2 - 1490784256/16815533*x[2]*x[6]^2 + 
3822014/2402219*x[3]^3 - 17100/2402219*x[3]^2*x[4] + 7357495/9608876*x[3]^2*x[5]
- 2844880/2402219*x[3]*x[4]^2 + 9065983/4804438*x[3]*x[4]*x[5] - 
1288970/2402219*x[3]*x[5]^2 + 1785575936/16815533*x[3]*x[6]^2 + 
1512192/2402219*x[4]^3 + 2728184/2402219*x[4]^2*x[5] - 
14200019/2402219*x[4]*x[5]^2 + 19888128/989149*x[4]*x[6]^2 + 
60601977/9608876*x[5]^3 + 1898392896/16815533*x[5]*x[6]^2,
x[1]*x[5]*x[6] - 10/7*x[2]*x[3]*x[6] - 8/7*x[2]*x[4]*x[6] + 17/14*x[2]*x[5]*x[6]
+ 27/28*x[3]^2*x[6] + 15/14*x[3]*x[4]*x[6] - 12/7*x[3]*x[5]*x[6] - 
5/7*x[4]*x[5]*x[6] + 3/4*x[5]^2*x[6] - 960/49*x[6]^3,
x[1]*x[6]^2 + 1607613/76871008*x[2]*x[5]^2 + 10690813/9608876*x[2]*x[6]^2 - 
18561991/1229936128*x[3]^3 + 24095673/614968064*x[3]^2*x[4] - 
41037773/1229936128*x[3]^2*x[5] + 7211141/307484032*x[3]*x[4]^2 - 
19249153/307484032*x[3]*x[4]*x[5] + 69815823/1229936128*x[3]*x[5]^2 - 
2352405/2402219*x[3]*x[6]^2 - 523761/153742016*x[4]^3 - 
5813521/307484032*x[4]^2*x[5] + 68103665/614968064*x[4]*x[5]^2 + 
554355/565228*x[4]*x[6]^2 - 161489755/1229936128*x[5]^3 - 
5726536/2402219*x[5]*x[6]^2,
x[2]^3 - 3941644/2402219*x[2]*x[5]^2 + 813931520/16815533*x[2]*x[6]^2 - 
1014670/2402219*x[3]^3 - 2505423/2402219*x[3]^2*x[4] + 
227308/2402219*x[3]^2*x[5] + 1047764/2402219*x[3]*x[4]^2 + 
2252204/2402219*x[3]*x[4]*x[5] - 4081898/2402219*x[3]*x[5]^2 - 
461782528/16815533*x[3]*x[6]^2 + 55449/2402219*x[4]^3 - 
2491552/2402219*x[4]^2*x[5] + 3180983/2402219*x[4]*x[5]^2 - 
20935424/989149*x[4]*x[6]^2 + 170220/2402219*x[5]^3 - 
375544832/16815533*x[5]*x[6]^2,
x[2]^2*x[3] - 7194552/2402219*x[2]*x[5]^2 + 1186444288/16815533*x[2]*x[6]^2 - 
3523822/2402219*x[3]^3 - 1699284/2402219*x[3]^2*x[4] - 
304424/2402219*x[3]^2*x[5] + 1877669/2402219*x[3]*x[4]^2 + 
106472/2402219*x[3]*x[4]*x[5] - 1892674/2402219*x[3]*x[5]^2 - 
1082496512/16815533*x[3]*x[6]^2 - 395616/2402219*x[4]^3 - 
4601944/2402219*x[4]^2*x[5] + 9505036/2402219*x[4]*x[5]^2 - 
26275840/989149*x[4]*x[6]^2 - 6233368/2402219*x[5]^3 - 
179808256/2402219*x[5]*x[6]^2,
x[2]^2*x[4] + 7133424/2402219*x[2]*x[5]^2 - 1053691392/16815533*x[2]*x[6]^2 + 
4840496/2402219*x[3]^3 - 1796826/2402219*x[3]^2*x[4] + 
6714016/2402219*x[3]^2*x[5] - 1631008/2402219*x[3]*x[4]^2 - 
1830064/2402219*x[3]*x[4]*x[5] + 1552112/2402219*x[3]*x[5]^2 + 
1589836800/16815533*x[3]*x[6]^2 - 1737699/2402219*x[4]^3 + 
10494920/2402219*x[4]^2*x[5] - 13034966/2402219*x[4]*x[5]^2 - 
36864/141307*x[4]*x[6]^2 + 4090368/2402219*x[5]^3 + 
2321805312/16815533*x[5]*x[6]^2,
x[2]^2*x[5] + 4005672/2402219*x[2]*x[5]^2 - 455680000/16815533*x[2]*x[6]^2 + 
2600500/2402219*x[3]^3 - 1374084/2402219*x[3]^2*x[4] + 
3361430/2402219*x[3]^2*x[5] - 619352/2402219*x[3]*x[4]^2 - 
1221488/2402219*x[3]*x[4]*x[5] + 452524/2402219*x[3]*x[5]^2 + 
671538176/16815533*x[3]*x[6]^2 - 832896/2402219*x[4]^3 + 
5508805/2402219*x[4]^2*x[5] - 7868876/2402219*x[4]*x[5]^2 - 
16098304/989149*x[4]*x[6]^2 + 4148762/2402219*x[5]^3 + 
1769960960/16815533*x[5]*x[6]^2,
x[2]^2*x[6] - 6/7*x[2]*x[3]*x[6] + 5/7*x[2]*x[4]*x[6] - 4/7*x[2]*x[5]*x[6] + 
3/7*x[3]^2*x[6] - 6/7*x[3]*x[4]*x[6] + 4/7*x[3]*x[5]*x[6] + 4/7*x[4]*x[5]*x[6] -
x[5]^2*x[6] + 768/49*x[6]^3,
x[2]*x[3]^2 - 5233779/2402219*x[2]*x[5]^2 + 627358976/16815533*x[2]*x[6]^2 - 
3230036/2402219*x[3]^3 - 780567/2402219*x[3]^2*x[4] + 248604/2402219*x[3]^2*x[5]
+ 988504/2402219*x[3]*x[4]^2 + 59256/2402219*x[3]*x[4]*x[5] + 
24932/2402219*x[3]*x[5]^2 - 584802304/16815533*x[3]*x[6]^2 - 
237504/2402219*x[4]^3 - 2953928/2402219*x[4]^2*x[5] + 
5755799/2402219*x[4]*x[5]^2 - 15414528/989149*x[4]*x[6]^2 - 
2989004/2402219*x[5]^3 - 697721856/16815533*x[5]*x[6]^2,
x[2]*x[3]*x[4] + 7098930/2402219*x[2]*x[5]^2 - 1542440448/16815533*x[2]*x[6]^2 +
4779443/2402219*x[3]^3 - 2073384/2402219*x[3]^2*x[4] + 
3576008/2402219*x[3]^2*x[5] - 2538487/2402219*x[3]*x[4]^2 + 
2786472/2402219*x[3]*x[4]*x[5] - 295775/2402219*x[3]*x[5]^2 + 
285695232/2402219*x[3]*x[6]^2 + 320160/2402219*x[4]^3 + 
6195800/2402219*x[4]^2*x[5] - 14191710/2402219*x[4]*x[5]^2 + 
2373120/141307*x[4]*x[6]^2 + 11948596/2402219*x[5]^3 + 
2250021888/16815533*x[5]*x[6]^2,
x[2]*x[3]*x[5] + 4133865/2402219*x[2]*x[5]^2 - 792811520/16815533*x[2]*x[6]^2 + 
2851005/2402219*x[3]^3 - 791298/2402219*x[3]^2*x[4] + 
1162143/2402219*x[3]^2*x[5] - 1369944/2402219*x[3]*x[4]^2 + 
1178313/2402219*x[3]*x[4]*x[5] + 484587/2402219*x[3]*x[5]^2 + 
145920256/2402219*x[3]*x[6]^2 + 64128/2402219*x[4]^3 + 
4122240/2402219*x[4]^2*x[5] - 9739523/2402219*x[4]*x[5]^2 - 
2096128/989149*x[4]*x[6]^2 + 8510857/2402219*x[5]^3 + 
1656459008/16815533*x[5]*x[6]^2,
x[2]*x[4]^2 - 3523340/2402219*x[2]*x[5]^2 - 626498048/16815533*x[2]*x[6]^2 - 
1216958/2402219*x[3]^3 + 2248155/2402219*x[3]^2*x[4] - 
6604492/2402219*x[3]^2*x[5] - 4266908/2402219*x[3]*x[4]^2 + 
8020748/2402219*x[3]*x[4]*x[5] - 1032090/2402219*x[3]*x[5]^2 + 
57504256/2402219*x[3]*x[6]^2 + 3811377/2402219*x[4]^3 - 
7548664/2402219*x[4]^2*x[5] - 1143587/2402219*x[4]*x[5]^2 + 
58018048/989149*x[4]*x[6]^2 + 9445124/2402219*x[5]^3 - 
647472128/16815533*x[5]*x[6]^2,
x[2]*x[4]*x[5] - 2569078/2402219*x[2]*x[5]^2 - 313421824/16815533*x[2]*x[6]^2 - 
219494/2402219*x[3]^3 + 974160/2402219*x[3]^2*x[4] - 1870099/2402219*x[3]^2*x[5]
- 776840/2402219*x[3]*x[4]^2 + 241396/2402219*x[3]*x[4]*x[5] + 
1869746/2402219*x[3]*x[5]^2 + 40796672/2402219*x[3]*x[6]^2 + 
1243008/2402219*x[4]^3 - 2765639/2402219*x[4]^2*x[5] + 
1250774/2402219*x[4]*x[5]^2 + 20022272/989149*x[4]*x[6]^2 + 
1041655/2402219*x[5]^3 - 121213696/16815533*x[5]*x[6]^2
]);
