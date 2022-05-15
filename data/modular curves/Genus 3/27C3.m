
    /****************************************************
    Loading this file in magma loads the objects fs_27C3 
    and X_27C3. fs_27C3 is a list of power series which form 
    a basis for the space of cusp forms. X_27C3 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | 1, 9, 0, -30, 0, 27, 0, 
-9, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_27C3 := [Kq | 1/3*(-zeta^3 + 3*zeta)*q^9 + q^27 + 
1/3*(-2*zeta^6 + 12*zeta^4 - 2*zeta^3 - 18*zeta^2 + 6*zeta + 4)*q^36 + 
1/3*(zeta^6 - 6*zeta^4 + 9*zeta^2 - 2)*q^63 - 2*q^108 + 1/3*(5*zeta^6 - 
30*zeta^4 + 5*zeta^3 + 45*zeta^2 - 15*zeta - 10)*q^117 + 1/3*(-4*zeta^6 + 
24*zeta^4 - 36*zeta^2 + 8)*q^144 + 1/3*(7*zeta^3 - 21*zeta)*q^171 - q^189 + 
1/3*(5*zeta^6 - 30*zeta^4 + 45*zeta^2 - 10)*q^225 + 1/3*(-2*zeta^3 + 
6*zeta)*q^252 + 1/3*(-4*zeta^6 + 24*zeta^4 - 4*zeta^3 - 36*zeta^2 + 12*zeta + 
8)*q^279 + 1/3*(-11*zeta^3 + 33*zeta)*q^333 + 5*q^351 + 1/3*(-8*zeta^6 + 
48*zeta^4 - 72*zeta^2 + 16)*q^387 + 4*q^432 + (-2*zeta^6 + 12*zeta^4 - 2*zeta^3 
- 18*zeta^2 + 6*zeta + 4)*q^441 + 1/3*(10*zeta^6 - 60*zeta^4 + 90*zeta^2 - 
20)*q^468 - 7*q^513 + 1/3*(zeta^6 - 6*zeta^4 + 9*zeta^2 - 2)*q^549 + 
1/3*(8*zeta^3 - 24*zeta)*q^576 + 1/3*(5*zeta^6 - 30*zeta^4 + 5*zeta^3 + 
45*zeta^2 - 15*zeta - 10)*q^603 + 1/3*(7*zeta^3 - 21*zeta)*q^657 - 5*q^675 + 
1/3*(14*zeta^6 - 84*zeta^4 + 14*zeta^3 + 126*zeta^2 - 42*zeta - 28)*q^684 + 
1/3*(-17*zeta^6 + 102*zeta^4 - 153*zeta^2 + 34)*q^711 + 2*q^756 + 1/3*(5*zeta^3 
- 15*zeta)*q^819 - 4*q^837 + 1/3*(19*zeta^6 - 114*zeta^4 + 171*zeta^2 - 
38)*q^873 + 1/3*(-10*zeta^3 + 30*zeta)*q^900 + 1/3*(-13*zeta^6 + 78*zeta^4 - 
13*zeta^3 - 117*zeta^2 + 39*zeta + 26)*q^927 + 1/3*(-2*zeta^3 + 6*zeta)*q^981 + 
11*q^999 + 1/3*(-4*zeta^6 + 24*zeta^4 - 4*zeta^3 - 36*zeta^2 + 12*zeta + 
8)*q^1008 + 1/3*(-11*zeta^6 + 66*zeta^4 - 11*zeta^3 - 99*zeta^2 + 33*zeta + 
22)*q^1089 + 1/3*(-8*zeta^6 + 48*zeta^4 - 72*zeta^2 + 16)*q^1116 + 
1/3*(-20*zeta^3 + 60*zeta)*q^1143 + 8*q^1161 + 1/3*(-7*zeta^6 + 42*zeta^4 - 
63*zeta^2 + 14)*q^1197 + 1/3*(23*zeta^6 - 138*zeta^4 + 23*zeta^3 + 207*zeta^2 - 
69*zeta - 46)*q^1251 - 6*q^1323 + 1/3*(-22*zeta^6 + 132*zeta^4 - 22*zeta^3 - 
198*zeta^2 + 66*zeta + 44)*q^1332 + 1/3*(19*zeta^6 - 114*zeta^4 + 171*zeta^2 - 
38)*q^1359 - 10*q^1404 + 1/3*(14*zeta^6 - 84*zeta^4 + 14*zeta^3 + 126*zeta^2 - 
42*zeta - 28)*q^1413 + 1/3*(25*zeta^3 - 75*zeta)*q^1467 + (-4*zeta^6 + 24*zeta^4
- 36*zeta^2 + 8)*q^1521 + 1/3*(16*zeta^3 - 48*zeta)*q^1548 + 1/3*(5*zeta^6 - 
30*zeta^4 + 5*zeta^3 + 45*zeta^2 - 15*zeta - 10)*q^1575 + 1/3*(7*zeta^3 - 
21*zeta)*q^1629 - q^1647 - 8*q^1728 + 1/3*(23*zeta^6 - 138*zeta^4 + 23*zeta^3 + 
207*zeta^2 - 69*zeta - 46)*q^1737 + (-4*zeta^6 + 24*zeta^4 - 36*zeta^2 + 
8)*q^1764 + 1/3*(-11*zeta^3 + 33*zeta)*q^1791 + 5*q^1809 + O(q^1863), q^9 + 
(-zeta^6 + 6*zeta^4 + zeta^3 - 9*zeta^2 - 3*zeta + 2)*q^18 + q^36 + (-2*zeta^6 +
12*zeta^4 - zeta^3 - 18*zeta^2 + 3*zeta + 4)*q^45 + 2*q^63 + (zeta^6 - 6*zeta^4 
+ 2*zeta^3 + 9*zeta^2 - 6*zeta - 2)*q^72 - 3*q^90 + (2*zeta^6 - 12*zeta^4 - 
2*zeta^3 + 18*zeta^2 + 6*zeta - 4)*q^99 - q^117 + (4*zeta^6 - 24*zeta^4 + 
2*zeta^3 + 36*zeta^2 - 6*zeta - 8)*q^126 - 5*q^144 + (-3*zeta^6 + 18*zeta^4 - 
6*zeta^3 - 27*zeta^2 + 18*zeta + 6)*q^153 + 2*q^171 + (zeta^6 - 6*zeta^4 - 
zeta^3 + 9*zeta^2 + 3*zeta - 2)*q^180 - 6*q^198 + (4*zeta^6 - 24*zeta^4 + 
2*zeta^3 + 36*zeta^2 - 6*zeta - 8)*q^207 - 2*q^225 + (zeta^6 - 6*zeta^4 + 
2*zeta^3 + 9*zeta^2 - 6*zeta - 2)*q^234 + 2*q^252 + (-zeta^6 + 6*zeta^4 + zeta^3
- 9*zeta^2 - 3*zeta + 2)*q^261 + 8*q^279 + (-6*zeta^6 + 36*zeta^4 - 3*zeta^3 - 
54*zeta^2 + 9*zeta + 12)*q^288 + 9*q^306 + (2*zeta^6 - 12*zeta^4 + 4*zeta^3 + 
18*zeta^2 - 12*zeta - 4)*q^315 - 7*q^333 + (-2*zeta^6 + 12*zeta^4 + 2*zeta^3 - 
18*zeta^2 - 6*zeta + 4)*q^342 + 3*q^360 + (-8*zeta^6 + 48*zeta^4 - 4*zeta^3 - 
72*zeta^2 + 12*zeta + 16)*q^369 + 2*q^387 + (2*zeta^6 - 12*zeta^4 + 4*zeta^3 + 
18*zeta^2 - 12*zeta - 4)*q^396 + 6*q^414 + (-4*zeta^6 + 24*zeta^4 + 4*zeta^3 - 
36*zeta^2 - 12*zeta + 8)*q^423 - 3*q^441 + (-4*zeta^6 + 24*zeta^4 - 2*zeta^3 - 
36*zeta^2 + 6*zeta + 8)*q^450 - q^468 + 6*q^495 + (2*zeta^6 - 12*zeta^4 - 
2*zeta^3 + 18*zeta^2 + 6*zeta - 4)*q^504 + 3*q^522 + (16*zeta^6 - 96*zeta^4 + 
8*zeta^3 + 144*zeta^2 - 24*zeta - 32)*q^531 - 7*q^549 + (-8*zeta^6 + 48*zeta^4 -
16*zeta^3 - 72*zeta^2 + 48*zeta + 16)*q^558 + q^576 + (-zeta^6 + 6*zeta^4 + 
zeta^3 - 9*zeta^2 - 3*zeta + 2)*q^585 - 10*q^603 + (6*zeta^6 - 36*zeta^4 + 
3*zeta^3 + 54*zeta^2 - 9*zeta - 12)*q^612 - 6*q^630 + (6*zeta^6 - 36*zeta^4 + 
12*zeta^3 + 54*zeta^2 - 36*zeta - 12)*q^639 - 7*q^657 + (7*zeta^6 - 42*zeta^4 - 
7*zeta^3 + 63*zeta^2 + 21*zeta - 14)*q^666 + 2*q^684 + (-8*zeta^6 + 48*zeta^4 - 
4*zeta^3 - 72*zeta^2 + 12*zeta + 16)*q^693 + 2*q^711 + (-5*zeta^6 + 30*zeta^4 - 
10*zeta^3 - 45*zeta^2 + 30*zeta + 10)*q^720 - 12*q^738 + (8*zeta^6 - 48*zeta^4 -
8*zeta^3 + 72*zeta^2 + 24*zeta - 16)*q^747 - 9*q^765 + (4*zeta^6 - 24*zeta^4 + 
2*zeta^3 + 36*zeta^2 - 6*zeta - 8)*q^774 + 6*q^792 + (3*zeta^6 - 18*zeta^4 + 
6*zeta^3 + 27*zeta^2 - 18*zeta - 6)*q^801 - 2*q^819 + (-2*zeta^6 + 12*zeta^4 + 
2*zeta^3 - 18*zeta^2 - 6*zeta + 4)*q^828 + 12*q^846 + (-4*zeta^6 + 24*zeta^4 - 
2*zeta^3 - 36*zeta^2 + 6*zeta + 8)*q^855 + 2*q^873 + (3*zeta^6 - 18*zeta^4 + 
6*zeta^3 + 27*zeta^2 - 18*zeta - 6)*q^882 - 2*q^900 + (-4*zeta^6 + 24*zeta^4 + 
4*zeta^3 - 36*zeta^2 - 12*zeta + 8)*q^909 + 8*q^927 + (2*zeta^6 - 12*zeta^4 + 
zeta^3 + 18*zeta^2 - 3*zeta - 4)*q^936 + 11*q^981 + (-6*zeta^6 + 36*zeta^4 + 
6*zeta^3 - 54*zeta^2 - 18*zeta + 12)*q^990 - 10*q^1008 + (-2*zeta^6 + 12*zeta^4 
- zeta^3 - 18*zeta^2 + 3*zeta + 4)*q^1017 - 6*q^1035 + (-zeta^6 + 6*zeta^4 - 
2*zeta^3 - 9*zeta^2 + 6*zeta + 2)*q^1044 + 24*q^1062 + (-6*zeta^6 + 36*zeta^4 + 
6*zeta^3 - 54*zeta^2 - 18*zeta + 12)*q^1071 + q^1089 + (-14*zeta^6 + 84*zeta^4 -
7*zeta^3 - 126*zeta^2 + 21*zeta + 28)*q^1098 + 8*q^1116 + (-7*zeta^6 + 42*zeta^4
- 14*zeta^3 - 63*zeta^2 + 42*zeta + 14)*q^1125 + 2*q^1143 + (-7*zeta^6 + 
42*zeta^4 + 7*zeta^3 - 63*zeta^2 - 21*zeta + 14)*q^1152 + 3*q^1170 + (4*zeta^6 -
24*zeta^4 + 2*zeta^3 + 36*zeta^2 - 6*zeta - 8)*q^1179 + 4*q^1197 + (10*zeta^6 - 
60*zeta^4 + 20*zeta^3 + 90*zeta^2 - 60*zeta - 20)*q^1206 - 9*q^1224 + (-zeta^6 +
6*zeta^4 + zeta^3 - 9*zeta^2 - 3*zeta + 2)*q^1233 + 8*q^1251 + (-4*zeta^6 + 
24*zeta^4 - 2*zeta^3 - 36*zeta^2 + 6*zeta + 8)*q^1260 - 18*q^1278 + (-2*zeta^6 +
12*zeta^4 - 4*zeta^3 - 18*zeta^2 + 12*zeta + 4)*q^1287 - 3*q^1305 + (7*zeta^6 - 
42*zeta^4 - 7*zeta^3 + 63*zeta^2 + 21*zeta - 14)*q^1314 - 7*q^1332 + (10*zeta^6 
- 60*zeta^4 + 5*zeta^3 + 90*zeta^2 - 15*zeta - 20)*q^1341 + 20*q^1359 + 
(2*zeta^6 - 12*zeta^4 + 4*zeta^3 + 18*zeta^2 - 12*zeta - 4)*q^1368 - 12*q^1386 +
(8*zeta^6 - 48*zeta^4 - 8*zeta^3 + 72*zeta^2 + 24*zeta - 16)*q^1395 + 17*q^1413 
+ (4*zeta^6 - 24*zeta^4 + 2*zeta^3 + 36*zeta^2 - 6*zeta - 8)*q^1422 + 9*q^1440 +
(-4*zeta^6 + 24*zeta^4 - 8*zeta^3 - 36*zeta^2 + 24*zeta + 8)*q^1449 - 16*q^1467 
+ (4*zeta^6 - 24*zeta^4 - 4*zeta^3 + 36*zeta^2 + 12*zeta - 8)*q^1476 - 24*q^1494
+ (-20*zeta^6 + 120*zeta^4 - 10*zeta^3 - 180*zeta^2 + 30*zeta + 40)*q^1503 - 
12*q^1521 + (9*zeta^6 - 54*zeta^4 + 18*zeta^3 + 81*zeta^2 - 54*zeta - 18)*q^1530
+ 2*q^1548 + (11*zeta^6 - 66*zeta^4 - 11*zeta^3 + 99*zeta^2 + 33*zeta - 
22)*q^1557 - 4*q^1575 + (20*zeta^6 - 120*zeta^4 + 10*zeta^3 + 180*zeta^2 - 
30*zeta - 40)*q^1584 - 9*q^1602 + (-12*zeta^6 + 72*zeta^4 - 24*zeta^3 - 
108*zeta^2 + 72*zeta + 24)*q^1611 + 2*q^1629 + (2*zeta^6 - 12*zeta^4 - 2*zeta^3 
+ 18*zeta^2 + 6*zeta - 4)*q^1638 - 6*q^1656 + (14*zeta^6 - 84*zeta^4 + 7*zeta^3 
+ 126*zeta^2 - 21*zeta - 28)*q^1665 - 18*q^1683 + (-4*zeta^6 + 24*zeta^4 - 
8*zeta^3 - 36*zeta^2 + 24*zeta + 8)*q^1692 - 6*q^1710 + (-10*zeta^6 + 60*zeta^4 
+ 10*zeta^3 - 90*zeta^2 - 30*zeta + 20)*q^1719 - q^1737 + (4*zeta^6 - 24*zeta^4 
+ 2*zeta^3 + 36*zeta^2 - 6*zeta - 8)*q^1746 - 3*q^1764 + (3*zeta^6 - 18*zeta^4 +
6*zeta^3 + 27*zeta^2 - 18*zeta - 6)*q^1773 + 20*q^1791 + (-2*zeta^6 + 12*zeta^4 
+ 2*zeta^3 - 18*zeta^2 - 6*zeta + 4)*q^1800 + 12*q^1818 + (4*zeta^6 - 24*zeta^4 
+ 2*zeta^3 + 36*zeta^2 - 6*zeta - 8)*q^1827 + 12*q^1845 + (-8*zeta^6 + 48*zeta^4
- 16*zeta^3 - 72*zeta^2 + 48*zeta + 16)*q^1854 + O(q^1863), 1/6*(-zeta^6 + 
6*zeta^4 - 2*zeta^3 - 9*zeta^2 + 6*zeta)*q^9 + 1/6*(2*zeta^6 - 12*zeta^4 - 
2*zeta^3 + 18*zeta^2 + 6*zeta - 1)*q^18 + 1/6*(2*zeta^6 - 12*zeta^4 + zeta^3 + 
18*zeta^2 - 3*zeta - 6)*q^36 + 1/6*(4*zeta^6 - 24*zeta^4 + 2*zeta^3 + 36*zeta^2 
- 6*zeta - 11)*q^45 + 1/3*(-zeta^6 + 6*zeta^4 + zeta^3 - 9*zeta^2 - 3*zeta)*q^63
+ 1/6*(-2*zeta^6 + 12*zeta^4 - 4*zeta^3 - 18*zeta^2 + 12*zeta + 1)*q^72 + 
1/2*(zeta^6 - 6*zeta^4 + 2*zeta^3 + 9*zeta^2 - 6*zeta)*q^90 + 1/3*(-2*zeta^6 + 
12*zeta^4 + 2*zeta^3 - 18*zeta^2 - 6*zeta + 1)*q^99 + 1/6*(-2*zeta^6 + 12*zeta^4
- zeta^3 - 18*zeta^2 + 3*zeta + 6)*q^117 + 1/3*(-4*zeta^6 + 24*zeta^4 - 2*zeta^3
- 36*zeta^2 + 6*zeta + 11)*q^126 + 1/6*(5*zeta^6 - 30*zeta^4 - 5*zeta^3 + 
45*zeta^2 + 15*zeta)*q^144 + 1/2*(2*zeta^6 - 12*zeta^4 + 4*zeta^3 + 18*zeta^2 - 
12*zeta - 1)*q^153 + 1/3*(-zeta^6 + 6*zeta^4 - 2*zeta^3 - 9*zeta^2 + 
6*zeta)*q^171 + 1/6*(-2*zeta^6 + 12*zeta^4 + 2*zeta^3 - 18*zeta^2 - 6*zeta + 
1)*q^180 + (-2*zeta^6 + 12*zeta^4 - zeta^3 - 18*zeta^2 + 3*zeta + 6)*q^198 + 
1/3*(-4*zeta^6 + 24*zeta^4 - 2*zeta^3 - 36*zeta^2 + 6*zeta + 11)*q^207 + 
1/3*(zeta^6 - 6*zeta^4 - zeta^3 + 9*zeta^2 + 3*zeta)*q^225 + 1/6*(-2*zeta^6 + 
12*zeta^4 - 4*zeta^3 - 18*zeta^2 + 12*zeta + 1)*q^234 + 1/3*(-zeta^6 + 6*zeta^4 
- 2*zeta^3 - 9*zeta^2 + 6*zeta)*q^252 + 1/6*(2*zeta^6 - 12*zeta^4 - 2*zeta^3 + 
18*zeta^2 + 6*zeta - 1)*q^261 + 1/3*(8*zeta^6 - 48*zeta^4 + 4*zeta^3 + 72*zeta^2
- 12*zeta - 24)*q^279 + 1/2*(4*zeta^6 - 24*zeta^4 + 2*zeta^3 + 36*zeta^2 - 
6*zeta - 11)*q^288 + 1/2*(-3*zeta^6 + 18*zeta^4 + 3*zeta^3 - 27*zeta^2 - 
9*zeta)*q^306 + 1/3*(-2*zeta^6 + 12*zeta^4 - 4*zeta^3 - 18*zeta^2 + 12*zeta + 
1)*q^315 + 1/6*(7*zeta^6 - 42*zeta^4 + 14*zeta^3 + 63*zeta^2 - 42*zeta)*q^333 + 
1/3*(2*zeta^6 - 12*zeta^4 - 2*zeta^3 + 18*zeta^2 + 6*zeta - 1)*q^342 + 
1/2*(2*zeta^6 - 12*zeta^4 + zeta^3 + 18*zeta^2 - 3*zeta - 6)*q^360 + 
1/3*(8*zeta^6 - 48*zeta^4 + 4*zeta^3 + 72*zeta^2 - 12*zeta - 22)*q^369 + 
1/3*(-zeta^6 + 6*zeta^4 + zeta^3 - 9*zeta^2 - 3*zeta)*q^387 + 1/3*(-2*zeta^6 + 
12*zeta^4 - 4*zeta^3 - 18*zeta^2 + 12*zeta + 1)*q^396 + (-zeta^6 + 6*zeta^4 - 
2*zeta^3 - 9*zeta^2 + 6*zeta)*q^414 + 1/3*(4*zeta^6 - 24*zeta^4 - 4*zeta^3 + 
36*zeta^2 + 12*zeta - 2)*q^423 + 1/2*(-2*zeta^6 + 12*zeta^4 - zeta^3 - 18*zeta^2
+ 3*zeta + 6)*q^441 + 1/3*(4*zeta^6 - 24*zeta^4 + 2*zeta^3 + 36*zeta^2 - 6*zeta 
- 11)*q^450 + 1/6*(zeta^6 - 6*zeta^4 - zeta^3 + 9*zeta^2 + 3*zeta)*q^468 + 
(-zeta^6 + 6*zeta^4 - 2*zeta^3 - 9*zeta^2 + 6*zeta)*q^495 + 1/3*(-2*zeta^6 + 
12*zeta^4 + 2*zeta^3 - 18*zeta^2 - 6*zeta + 1)*q^504 + 1/2*(2*zeta^6 - 12*zeta^4
+ zeta^3 + 18*zeta^2 - 3*zeta - 6)*q^522 + 1/3*(-16*zeta^6 + 96*zeta^4 - 
8*zeta^3 - 144*zeta^2 + 24*zeta + 44)*q^531 + 1/6*(7*zeta^6 - 42*zeta^4 - 
7*zeta^3 + 63*zeta^2 + 21*zeta)*q^549 + 1/3*(8*zeta^6 - 48*zeta^4 + 16*zeta^3 + 
72*zeta^2 - 48*zeta - 4)*q^558 + 1/6*(-zeta^6 + 6*zeta^4 - 2*zeta^3 - 9*zeta^2 +
6*zeta)*q^576 + 1/6*(2*zeta^6 - 12*zeta^4 - 2*zeta^3 + 18*zeta^2 + 6*zeta - 
1)*q^585 + 1/3*(-10*zeta^6 + 60*zeta^4 - 5*zeta^3 - 90*zeta^2 + 15*zeta + 
30)*q^603 + 1/2*(-4*zeta^6 + 24*zeta^4 - 2*zeta^3 - 36*zeta^2 + 6*zeta + 
11)*q^612 + (zeta^6 - 6*zeta^4 - zeta^3 + 9*zeta^2 + 3*zeta)*q^630 + (-2*zeta^6 
+ 12*zeta^4 - 4*zeta^3 - 18*zeta^2 + 12*zeta + 1)*q^639 + 1/6*(7*zeta^6 - 
42*zeta^4 + 14*zeta^3 + 63*zeta^2 - 42*zeta)*q^657 + 1/6*(-14*zeta^6 + 84*zeta^4
+ 14*zeta^3 - 126*zeta^2 - 42*zeta + 7)*q^666 + 1/3*(2*zeta^6 - 12*zeta^4 + 
zeta^3 + 18*zeta^2 - 3*zeta - 6)*q^684 + 1/3*(8*zeta^6 - 48*zeta^4 + 4*zeta^3 + 
72*zeta^2 - 12*zeta - 22)*q^693 + 1/3*(-zeta^6 + 6*zeta^4 + zeta^3 - 9*zeta^2 - 
3*zeta)*q^711 + 1/6*(10*zeta^6 - 60*zeta^4 + 20*zeta^3 + 90*zeta^2 - 60*zeta - 
5)*q^720 + (2*zeta^6 - 12*zeta^4 + 4*zeta^3 + 18*zeta^2 - 12*zeta)*q^738 + 
1/3*(-8*zeta^6 + 48*zeta^4 + 8*zeta^3 - 72*zeta^2 - 24*zeta + 4)*q^747 + 
1/2*(-6*zeta^6 + 36*zeta^4 - 3*zeta^3 - 54*zeta^2 + 9*zeta + 18)*q^765 + 
1/3*(-4*zeta^6 + 24*zeta^4 - 2*zeta^3 - 36*zeta^2 + 6*zeta + 11)*q^774 + 
(-zeta^6 + 6*zeta^4 + zeta^3 - 9*zeta^2 - 3*zeta)*q^792 + 1/2*(-2*zeta^6 + 
12*zeta^4 - 4*zeta^3 - 18*zeta^2 + 12*zeta + 1)*q^801 + 1/3*(zeta^6 - 6*zeta^4 +
2*zeta^3 + 9*zeta^2 - 6*zeta)*q^819 + 1/3*(2*zeta^6 - 12*zeta^4 - 2*zeta^3 + 
18*zeta^2 + 6*zeta - 1)*q^828 + (4*zeta^6 - 24*zeta^4 + 2*zeta^3 + 36*zeta^2 - 
6*zeta - 12)*q^846 + 1/3*(4*zeta^6 - 24*zeta^4 + 2*zeta^3 + 36*zeta^2 - 6*zeta -
11)*q^855 + 1/3*(-zeta^6 + 6*zeta^4 + zeta^3 - 9*zeta^2 - 3*zeta)*q^873 + 
1/2*(-2*zeta^6 + 12*zeta^4 - 4*zeta^3 - 18*zeta^2 + 12*zeta + 1)*q^882 + 
1/3*(zeta^6 - 6*zeta^4 + 2*zeta^3 + 9*zeta^2 - 6*zeta)*q^900 + 1/3*(4*zeta^6 - 
24*zeta^4 - 4*zeta^3 + 36*zeta^2 + 12*zeta - 2)*q^909 + 1/3*(8*zeta^6 - 
48*zeta^4 + 4*zeta^3 + 72*zeta^2 - 12*zeta - 24)*q^927 + 1/6*(-4*zeta^6 + 
24*zeta^4 - 2*zeta^3 - 36*zeta^2 + 6*zeta + 11)*q^936 + 1/6*(-11*zeta^6 + 
66*zeta^4 - 22*zeta^3 - 99*zeta^2 + 66*zeta)*q^981 + (2*zeta^6 - 12*zeta^4 - 
2*zeta^3 + 18*zeta^2 + 6*zeta - 1)*q^990 + 1/3*(-10*zeta^6 + 60*zeta^4 - 
5*zeta^3 - 90*zeta^2 + 15*zeta + 30)*q^1008 + 1/6*(4*zeta^6 - 24*zeta^4 + 
2*zeta^3 + 36*zeta^2 - 6*zeta - 11)*q^1017 + (zeta^6 - 6*zeta^4 - zeta^3 + 
9*zeta^2 + 3*zeta)*q^1035 + 1/6*(2*zeta^6 - 12*zeta^4 + 4*zeta^3 + 18*zeta^2 - 
12*zeta - 1)*q^1044 + (-4*zeta^6 + 24*zeta^4 - 8*zeta^3 - 36*zeta^2 + 
24*zeta)*q^1062 + (2*zeta^6 - 12*zeta^4 - 2*zeta^3 + 18*zeta^2 + 6*zeta - 
1)*q^1071 + 1/6*(2*zeta^6 - 12*zeta^4 + zeta^3 + 18*zeta^2 - 3*zeta - 6)*q^1089 
+ 1/6*(28*zeta^6 - 168*zeta^4 + 14*zeta^3 + 252*zeta^2 - 42*zeta - 77)*q^1098 + 
1/3*(-4*zeta^6 + 24*zeta^4 + 4*zeta^3 - 36*zeta^2 - 12*zeta)*q^1116 + 
1/6*(14*zeta^6 - 84*zeta^4 + 28*zeta^3 + 126*zeta^2 - 84*zeta - 7)*q^1125 + 
1/3*(-zeta^6 + 6*zeta^4 - 2*zeta^3 - 9*zeta^2 + 6*zeta)*q^1143 + 1/6*(14*zeta^6 
- 84*zeta^4 - 14*zeta^3 + 126*zeta^2 + 42*zeta - 7)*q^1152 + 1/2*(2*zeta^6 - 
12*zeta^4 + zeta^3 + 18*zeta^2 - 3*zeta - 6)*q^1170 + 1/3*(-4*zeta^6 + 24*zeta^4
- 2*zeta^3 - 36*zeta^2 + 6*zeta + 11)*q^1179 + 1/3*(-2*zeta^6 + 12*zeta^4 + 
2*zeta^3 - 18*zeta^2 - 6*zeta)*q^1197 + 1/3*(-10*zeta^6 + 60*zeta^4 - 20*zeta^3 
- 90*zeta^2 + 60*zeta + 5)*q^1206 + 1/2*(3*zeta^6 - 18*zeta^4 + 6*zeta^3 + 
27*zeta^2 - 18*zeta)*q^1224 + 1/6*(2*zeta^6 - 12*zeta^4 - 2*zeta^3 + 18*zeta^2 +
6*zeta - 1)*q^1233 + 1/3*(8*zeta^6 - 48*zeta^4 + 4*zeta^3 + 72*zeta^2 - 12*zeta 
- 24)*q^1251 + 1/3*(4*zeta^6 - 24*zeta^4 + 2*zeta^3 + 36*zeta^2 - 6*zeta - 
11)*q^1260 + (3*zeta^6 - 18*zeta^4 - 3*zeta^3 + 27*zeta^2 + 9*zeta)*q^1278 + 
1/3*(2*zeta^6 - 12*zeta^4 + 4*zeta^3 + 18*zeta^2 - 12*zeta - 1)*q^1287 + 
1/2*(zeta^6 - 6*zeta^4 + 2*zeta^3 + 9*zeta^2 - 6*zeta)*q^1305 + 1/6*(-14*zeta^6 
+ 84*zeta^4 + 14*zeta^3 - 126*zeta^2 - 42*zeta + 7)*q^1314 + 1/6*(-14*zeta^6 + 
84*zeta^4 - 7*zeta^3 - 126*zeta^2 + 21*zeta + 42)*q^1332 + 1/6*(-20*zeta^6 + 
120*zeta^4 - 10*zeta^3 - 180*zeta^2 + 30*zeta + 55)*q^1341 + 1/3*(-10*zeta^6 + 
60*zeta^4 + 10*zeta^3 - 90*zeta^2 - 30*zeta)*q^1359 + 1/3*(-2*zeta^6 + 12*zeta^4
- 4*zeta^3 - 18*zeta^2 + 12*zeta + 1)*q^1368 + (2*zeta^6 - 12*zeta^4 + 4*zeta^3 
+ 18*zeta^2 - 12*zeta)*q^1386 + 1/3*(-8*zeta^6 + 48*zeta^4 + 8*zeta^3 - 
72*zeta^2 - 24*zeta + 4)*q^1395 + 1/6*(34*zeta^6 - 204*zeta^4 + 17*zeta^3 + 
306*zeta^2 - 51*zeta - 102)*q^1413 + 1/3*(-4*zeta^6 + 24*zeta^4 - 2*zeta^3 - 
36*zeta^2 + 6*zeta + 11)*q^1422 + 1/2*(-3*zeta^6 + 18*zeta^4 + 3*zeta^3 - 
27*zeta^2 - 9*zeta)*q^1440 + 1/3*(4*zeta^6 - 24*zeta^4 + 8*zeta^3 + 36*zeta^2 - 
24*zeta - 2)*q^1449 + 1/3*(8*zeta^6 - 48*zeta^4 + 16*zeta^3 + 72*zeta^2 - 
48*zeta)*q^1467 + 1/3*(-4*zeta^6 + 24*zeta^4 + 4*zeta^3 - 36*zeta^2 - 12*zeta + 
2)*q^1476 + (-8*zeta^6 + 48*zeta^4 - 4*zeta^3 - 72*zeta^2 + 12*zeta + 24)*q^1494
+ 1/3*(20*zeta^6 - 120*zeta^4 + 10*zeta^3 + 180*zeta^2 - 30*zeta - 55)*q^1503 + 
(2*zeta^6 - 12*zeta^4 - 2*zeta^3 + 18*zeta^2 + 6*zeta)*q^1521 + 1/2*(-6*zeta^6 +
36*zeta^4 - 12*zeta^3 - 54*zeta^2 + 36*zeta + 3)*q^1530 + 1/3*(-zeta^6 + 
6*zeta^4 - 2*zeta^3 - 9*zeta^2 + 6*zeta)*q^1548 + 1/6*(-22*zeta^6 + 132*zeta^4 +
22*zeta^3 - 198*zeta^2 - 66*zeta + 11)*q^1557 + 1/3*(-4*zeta^6 + 24*zeta^4 - 
2*zeta^3 - 36*zeta^2 + 6*zeta + 12)*q^1575 + 1/3*(-20*zeta^6 + 120*zeta^4 - 
10*zeta^3 - 180*zeta^2 + 30*zeta + 55)*q^1584 + 1/2*(3*zeta^6 - 18*zeta^4 - 
3*zeta^3 + 27*zeta^2 + 9*zeta)*q^1602 + (4*zeta^6 - 24*zeta^4 + 8*zeta^3 + 
36*zeta^2 - 24*zeta - 2)*q^1611 + 1/3*(-zeta^6 + 6*zeta^4 - 2*zeta^3 - 9*zeta^2 
+ 6*zeta)*q^1629 + 1/3*(-2*zeta^6 + 12*zeta^4 + 2*zeta^3 - 18*zeta^2 - 6*zeta + 
1)*q^1638 + (-2*zeta^6 + 12*zeta^4 - zeta^3 - 18*zeta^2 + 3*zeta + 6)*q^1656 + 
1/6*(-28*zeta^6 + 168*zeta^4 - 14*zeta^3 - 252*zeta^2 + 42*zeta + 77)*q^1665 + 
(3*zeta^6 - 18*zeta^4 - 3*zeta^3 + 27*zeta^2 + 9*zeta)*q^1683 + 1/3*(4*zeta^6 - 
24*zeta^4 + 8*zeta^3 + 36*zeta^2 - 24*zeta - 2)*q^1692 + (zeta^6 - 6*zeta^4 + 
2*zeta^3 + 9*zeta^2 - 6*zeta)*q^1710 + 1/3*(10*zeta^6 - 60*zeta^4 - 10*zeta^3 + 
90*zeta^2 + 30*zeta - 5)*q^1719 + 1/6*(-2*zeta^6 + 12*zeta^4 - zeta^3 - 
18*zeta^2 + 3*zeta + 6)*q^1737 + 1/3*(-4*zeta^6 + 24*zeta^4 - 2*zeta^3 - 
36*zeta^2 + 6*zeta + 11)*q^1746 + 1/2*(zeta^6 - 6*zeta^4 - zeta^3 + 9*zeta^2 + 
3*zeta)*q^1764 + 1/2*(-2*zeta^6 + 12*zeta^4 - 4*zeta^3 - 18*zeta^2 + 12*zeta + 
1)*q^1773 + 1/3*(-10*zeta^6 + 60*zeta^4 - 20*zeta^3 - 90*zeta^2 + 
60*zeta)*q^1791 + 1/3*(2*zeta^6 - 12*zeta^4 - 2*zeta^3 + 18*zeta^2 + 6*zeta - 
1)*q^1800 + (4*zeta^6 - 24*zeta^4 + 2*zeta^3 + 36*zeta^2 - 6*zeta - 12)*q^1818 +
1/3*(-4*zeta^6 + 24*zeta^4 - 2*zeta^3 - 36*zeta^2 + 6*zeta + 11)*q^1827 + 
(-2*zeta^6 + 12*zeta^4 + 2*zeta^3 - 18*zeta^2 - 6*zeta)*q^1845 + 1/3*(8*zeta^6 -
48*zeta^4 + 16*zeta^3 + 72*zeta^2 - 48*zeta - 4)*q^1854 + O(q^1863)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_27C3 := Curve(P_Q, [ PolynomialRing(RationalField(), 3) |
x[1]^4 + 2/3*x[1]^3*x[2] - 1/3*x[1]^2*x[2]^2 - 11/81*x[1]*x[2]^3 - 
8/9*x[1]*x[2]^2*x[3] - 8/3*x[1]*x[2]*x[3]^2 - 8/3*x[1]*x[3]^3 - 13/243*x[2]^4 - 
16/27*x[2]^3*x[3] - 16/9*x[2]^2*x[3]^2 - 16/9*x[2]*x[3]^3
]);
