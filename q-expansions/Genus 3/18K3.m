
    /****************************************************
    Loading this file in magma loads the objects fs_18K3 
    and X_18K3. fs_18K3 is a list of power series which form 
    a basis for the space of cusp forms. X_18K3 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | -1, -3, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_18K3 := [Kq | zeta*q^3 + (zeta^2 - 2*zeta - 2)*q^9 + (-2*zeta^2
+ 4)*q^21 + (-3*zeta^2 + 3*zeta + 6)*q^27 + (3*zeta^2 - 6)*q^33 + (2*zeta^2 - 
2*zeta - 4)*q^39 - 3*zeta*q^51 - zeta*q^57 + (2*zeta^2 + 2*zeta - 4)*q^63 + 
(-6*zeta^2 + 6*zeta + 12)*q^69 + (5*zeta^2 - 10)*q^75 + (6*zeta^2 - 3*zeta - 
12)*q^81 + (-6*zeta^2 + 12)*q^87 + (-4*zeta^2 + 4*zeta + 8)*q^93 + (-3*zeta^2 - 
3*zeta + 6)*q^99 - 4*zeta*q^111 + (-4*zeta^2 + 2*zeta + 8)*q^117 + (9*zeta^2 - 
9*zeta - 18)*q^123 + (zeta^2 - 2)*q^129 + (6*zeta^2 - 12)*q^141 + (-3*zeta^2 + 
3*zeta + 6)*q^147 + (-3*zeta^2 + 6*zeta + 6)*q^153 + 12*zeta*q^159 + (-zeta^2 + 
2*zeta + 2)*q^171 + (3*zeta^2 - 3*zeta - 6)*q^177 + (-8*zeta^2 + 16)*q^183 - 
6*zeta*q^189 + (5*zeta^2 - 5*zeta - 10)*q^201 + (12*zeta^2 - 6*zeta - 24)*q^207 
- 12*zeta*q^213 + 11*zeta*q^219 + (-5*zeta^2 - 5*zeta + 10)*q^225 + (-6*zeta^2 +
6*zeta + 12)*q^231 + (4*zeta^2 - 8)*q^237 + (-9*zeta^2 + 18)*q^243 + (-12*zeta^2
+ 24)*q^249 + (6*zeta^2 + 6*zeta - 12)*q^261 + 6*zeta*q^267 + 4*zeta*q^273 + 
(8*zeta^2 - 4*zeta - 16)*q^279 + (-5*zeta^2 + 10)*q^291 + 9*zeta*q^297 + 
(14*zeta^2 - 14*zeta - 28)*q^309 + 3*zeta*q^321 - 16*zeta*q^327 + (-4*zeta^2 + 
8*zeta + 8)*q^333 + (6*zeta^2 - 6*zeta - 12)*q^339 + (6*zeta^2 - 12)*q^351 + 
(6*zeta^2 - 12)*q^357 + (-2*zeta^2 + 2*zeta + 4)*q^363 + (-18*zeta^2 + 9*zeta + 
36)*q^369 + 2*zeta*q^381 + (-zeta^2 - zeta + 2)*q^387 + (2*zeta^2 - 4)*q^399 + 
(3*zeta^2 - 6)*q^411 + (-19*zeta^2 + 19*zeta + 38)*q^417 + (-6*zeta^2 - 6*zeta +
12)*q^423 - 6*zeta*q^429 + (6*zeta^2 - 3*zeta - 12)*q^441 + (-6*zeta^2 + 6*zeta 
+ 12)*q^447 + (10*zeta^2 - 20)*q^453 + (9*zeta^2 - 9*zeta - 18)*q^459 + 
(-4*zeta^2 + 4*zeta + 8)*q^471 + (12*zeta^2 - 24*zeta - 24)*q^477 - 
12*zeta*q^483 - 4*zeta*q^489 + (-12*zeta^2 + 12*zeta + 24)*q^501 + (9*zeta^2 - 
18)*q^507 + (3*zeta^2 - 3*zeta - 6)*q^513 + (6*zeta^2 - 12)*q^519 + (-10*zeta^2 
+ 10*zeta + 20)*q^525 + (-6*zeta^2 + 3*zeta + 12)*q^531 + 12*zeta*q^537 + 
14*zeta*q^543 + (8*zeta^2 + 8*zeta - 16)*q^549 + (-9*zeta^2 + 18)*q^561 + 
(-6*zeta^2 + 12*zeta + 12)*q^567 + (18*zeta^2 - 36)*q^573 + (5*zeta^2 - 5*zeta -
10)*q^579 - 12*zeta*q^591 - 10*zeta*q^597 + (-10*zeta^2 + 5*zeta + 20)*q^603 + 
(12*zeta^2 - 12*zeta - 24)*q^609 + (-18*zeta^2 + 36)*q^621 + (-3*zeta^2 + 
6)*q^627 + (20*zeta^2 - 20*zeta - 40)*q^633 + (-12*zeta^2 + 24*zeta + 24)*q^639 
- 8*zeta*q^651 + (11*zeta^2 - 22*zeta - 22)*q^657 + (-6*zeta^2 + 6*zeta + 
12)*q^663 + (-26*zeta^2 + 52)*q^669 + 15*zeta*q^675 + (-21*zeta^2 + 42)*q^681 + 
(14*zeta^2 - 14*zeta - 28)*q^687 + (12*zeta^2 - 6*zeta - 24)*q^693 + 
3*zeta*q^699 + (-4*zeta^2 - 4*zeta + 8)*q^711 + (6*zeta^2 - 6*zeta - 12)*q^717 +
(7*zeta^2 - 14)*q^723 + (9*zeta^2 + 9*zeta - 18)*q^729 + (-2*zeta^2 + 2*zeta + 
4)*q^741 + (12*zeta^2 + 12*zeta - 24)*q^747 + 21*zeta*q^753 + 18*zeta*q^759 + 
(-21*zeta^2 + 21*zeta + 42)*q^771 + (8*zeta^2 - 16)*q^777 - 18*zeta*q^783 + 
(-18*zeta^2 + 36)*q^789 + (6*zeta^2 - 12*zeta - 12)*q^801 - 24*zeta*q^807 + 
20*zeta*q^813 + (4*zeta^2 - 8*zeta - 8)*q^819 + (15*zeta^2 - 15*zeta - 30)*q^825
+ (10*zeta^2 - 20)*q^831 + (-12*zeta^2 + 24)*q^837 + (-6*zeta^2 + 12)*q^843 + 
(-4*zeta^2 + 4*zeta + 8)*q^849 + 18*zeta*q^861 - 8*zeta*q^867 + (5*zeta^2 + 
5*zeta - 10)*q^873 + (30*zeta^2 - 30*zeta - 60)*q^879 + (9*zeta^2 - 18*zeta - 
18)*q^891 + (12*zeta^2 - 24)*q^897 + (-2*zeta^2 + 2*zeta + 4)*q^903 - 
7*zeta*q^921 + (-28*zeta^2 + 14*zeta + 56)*q^927 + (-18*zeta^2 + 18*zeta + 
36)*q^933 + (-29*zeta^2 + 58)*q^939 + (18*zeta^2 - 36)*q^951 + (-18*zeta^2 + 
18*zeta + 36)*q^957 + (3*zeta^2 - 6*zeta - 6)*q^963 + 3*zeta*q^969 - 
10*zeta*q^975 + (-16*zeta^2 + 32*zeta + 32)*q^981 + (-12*zeta^2 + 12*zeta + 
24)*q^987 + (4*zeta^2 - 8)*q^993 + (12*zeta^2 - 12*zeta - 24)*q^999 + (-zeta^2 +
zeta + 2)*q^1011 + (-12*zeta^2 + 6*zeta + 24)*q^1017 + 12*zeta*q^1023 - 
20*zeta*q^1029 + (33*zeta^2 - 33*zeta - 66)*q^1041 + (16*zeta^2 - 32)*q^1047 + 
(-6*zeta^2 - 6*zeta + 12)*q^1053 + (21*zeta^2 - 42)*q^1059 + (-6*zeta^2 - 6*zeta
+ 12)*q^1071 - 18*zeta*q^1077 - 18*zeta*q^1083 + (4*zeta^2 - 2*zeta - 8)*q^1089 
+ (28*zeta^2 - 56)*q^1101 + (27*zeta^2 - 54)*q^1107 + (-24*zeta^2 + 48)*q^1113 +
(-34*zeta^2 + 34*zeta + 68)*q^1119 + 12*zeta*q^1131 + 23*zeta*q^1137 + (2*zeta^2
- 4*zeta - 4)*q^1143 + 3*zeta*q^1161 + (-18*zeta^2 + 36)*q^1167 + (18*zeta^2 - 
18*zeta - 36)*q^1173 + 20*zeta*q^1191 + (-2*zeta^2 - 2*zeta + 4)*q^1197 + 
(-27*zeta^2 + 27*zeta + 54)*q^1203 + O(q^1206), 1/2*(-zeta^2 + 2*zeta + 2)*q^6 +
1/2*(-zeta^2 - zeta + 2)*q^12 + 1/2*(3*zeta^2 - 3*zeta - 6)*q^18 + 1/2*(2*zeta^2
- zeta - 4)*q^24 + 3/2*zeta*q^36 + (-zeta^2 - zeta + 2)*q^42 + 1/2*(-zeta^2 + 
2*zeta + 2)*q^48 + 1/2*(-6*zeta^2 + 3*zeta + 12)*q^54 + 1/2*(3*zeta^2 + 3*zeta -
6)*q^66 + 1/2*(-3*zeta^2 + 6)*q^72 + (2*zeta^2 - zeta - 4)*q^78 + (2*zeta^2 - 
zeta - 4)*q^84 + 1/2*(-zeta^2 - zeta + 2)*q^96 + 1/2*(3*zeta^2 - 6*zeta - 
6)*q^102 + 1/2*(3*zeta^2 - 6*zeta - 6)*q^108 + 1/2*(zeta^2 - 2*zeta - 2)*q^114 +
3*zeta*q^126 + 1/2*(-6*zeta^2 + 3*zeta + 12)*q^132 + (-6*zeta^2 + 3*zeta + 
12)*q^138 + 1/2*(3*zeta^2 - 3*zeta - 6)*q^144 + 1/2*(5*zeta^2 + 5*zeta - 
10)*q^150 + (-zeta^2 + 2*zeta + 2)*q^156 + 1/2*(9*zeta^2 - 18)*q^162 + (-zeta^2 
+ 2*zeta + 2)*q^168 + (-3*zeta^2 - 3*zeta + 6)*q^174 + (-4*zeta^2 + 2*zeta + 
8)*q^186 + 1/2*(2*zeta^2 - zeta - 4)*q^192 - 9/2*zeta*q^198 + 1/2*(3*zeta^2 + 
3*zeta - 6)*q^204 + 1/2*(3*zeta^2 + 3*zeta - 6)*q^216 + (2*zeta^2 - 4*zeta - 
4)*q^222 + 1/2*(zeta^2 + zeta - 2)*q^228 + (-3*zeta^2 + 6)*q^234 + 
1/2*(18*zeta^2 - 9*zeta - 36)*q^246 + (-3*zeta^2 + 6)*q^252 + 1/2*(zeta^2 + zeta
- 2)*q^258 + 1/2*(3*zeta^2 - 6*zeta - 6)*q^264 + (3*zeta^2 - 6*zeta - 6)*q^276 +
(3*zeta^2 + 3*zeta - 6)*q^282 + 3/2*zeta*q^288 + 1/2*(-6*zeta^2 + 3*zeta + 
12)*q^294 + 1/2*(-10*zeta^2 + 5*zeta + 20)*q^300 + 1/2*(-9*zeta^2 + 9*zeta + 
18)*q^306 + (-zeta^2 - zeta + 2)*q^312 + (-6*zeta^2 + 12*zeta + 12)*q^318 + 
1/2*(-9*zeta^2 + 9*zeta + 18)*q^324 + (-zeta^2 - zeta + 2)*q^336 + 
1/2*(-3*zeta^2 + 3*zeta + 6)*q^342 + (6*zeta^2 - 3*zeta - 12)*q^348 + 
1/2*(6*zeta^2 - 3*zeta - 12)*q^354 + (-4*zeta^2 - 4*zeta + 8)*q^366 + (2*zeta^2 
- 4*zeta - 4)*q^372 + (3*zeta^2 - 6*zeta - 6)*q^378 + 1/2*(-zeta^2 + 2*zeta + 
2)*q^384 + 1/2*(9*zeta^2 - 18)*q^396 + 1/2*(10*zeta^2 - 5*zeta - 20)*q^402 + 
1/2*(-6*zeta^2 + 3*zeta + 12)*q^408 + (9*zeta^2 - 18)*q^414 + (6*zeta^2 - 
12*zeta - 12)*q^426 + 1/2*(-6*zeta^2 + 3*zeta + 12)*q^432 + 1/2*(-11*zeta^2 + 
22*zeta + 22)*q^438 + (2*zeta^2 + 2*zeta - 4)*q^444 - 15/2*zeta*q^450 + 
1/2*(-2*zeta^2 + zeta + 4)*q^456 + (-6*zeta^2 + 3*zeta + 12)*q^462 + (3*zeta^2 -
3*zeta - 6)*q^468 + (2*zeta^2 + 2*zeta - 4)*q^474 + 1/2*(-9*zeta^2 - 9*zeta + 
18)*q^486 + 1/2*(-9*zeta^2 + 18*zeta + 18)*q^492 + (-6*zeta^2 - 6*zeta + 
12)*q^498 + (3*zeta^2 - 3*zeta - 6)*q^504 + 1/2*(-2*zeta^2 + zeta + 4)*q^516 + 
9*zeta*q^522 + 1/2*(3*zeta^2 + 3*zeta - 6)*q^528 + (-3*zeta^2 + 6*zeta + 
6)*q^534 + (-2*zeta^2 + 4*zeta + 4)*q^546 + (3*zeta^2 + 3*zeta - 6)*q^552 + 
(6*zeta^2 - 12)*q^558 + (-6*zeta^2 + 3*zeta + 12)*q^564 + 1/2*(-3*zeta^2 + 
6)*q^576 + 1/2*(-5*zeta^2 - 5*zeta + 10)*q^582 + 1/2*(3*zeta^2 - 6*zeta - 
6)*q^588 + 1/2*(-9*zeta^2 + 18*zeta + 18)*q^594 + 1/2*(5*zeta^2 - 10*zeta - 
10)*q^600 - 9/2*zeta*q^612 + (14*zeta^2 - 7*zeta - 28)*q^618 + (2*zeta^2 - zeta 
- 4)*q^624 + (-6*zeta^2 - 6*zeta + 12)*q^636 + 1/2*(-3*zeta^2 + 6*zeta + 
6)*q^642 - 9/2*zeta*q^648 + (8*zeta^2 - 16*zeta - 16)*q^654 + (-6*zeta^2 + 
6*zeta + 12)*q^666 + (2*zeta^2 - zeta - 4)*q^672 + (6*zeta^2 - 3*zeta - 
12)*q^678 - 3/2*zeta*q^684 + (-3*zeta^2 + 6*zeta + 6)*q^696 + (3*zeta^2 + 3*zeta
- 6)*q^702 + 1/2*(-3*zeta^2 + 6*zeta + 6)*q^708 + (3*zeta^2 + 3*zeta - 6)*q^714 
+ (-2*zeta^2 + zeta + 4)*q^726 + (8*zeta^2 - 4*zeta - 16)*q^732 + 
1/2*(-27*zeta^2 + 54)*q^738 + (2*zeta^2 + 2*zeta - 4)*q^744 + (3*zeta^2 + 3*zeta
- 6)*q^756 + (-zeta^2 + 2*zeta + 2)*q^762 + 1/2*(-zeta^2 - zeta + 2)*q^768 - 
3/2*zeta*q^774 + 1/2*(-9*zeta^2 + 9*zeta + 18)*q^792 + (zeta^2 + zeta - 2)*q^798
+ 1/2*(-5*zeta^2 + 10*zeta + 10)*q^804 + 1/2*(3*zeta^2 - 6*zeta - 6)*q^816 + 
1/2*(3*zeta^2 + 3*zeta - 6)*q^822 + (-9*zeta^2 + 9*zeta + 18)*q^828 + 
1/2*(-38*zeta^2 + 19*zeta + 76)*q^834 - 9*zeta*q^846 + (6*zeta^2 + 6*zeta - 
12)*q^852 + (3*zeta^2 - 6*zeta - 6)*q^858 + 1/2*(3*zeta^2 - 6*zeta - 6)*q^864 + 
1/2*(-11*zeta^2 - 11*zeta + 22)*q^876 + 1/2*(9*zeta^2 - 18)*q^882 + (-4*zeta^2 +
2*zeta + 8)*q^888 + (-6*zeta^2 + 3*zeta + 12)*q^894 + 1/2*(15*zeta^2 - 30)*q^900
+ (5*zeta^2 + 5*zeta - 10)*q^906 + 1/2*(zeta^2 - 2*zeta - 2)*q^912 + 
1/2*(18*zeta^2 - 9*zeta - 36)*q^918 + (3*zeta^2 - 6*zeta - 6)*q^924 + 
3*zeta*q^936 + (-4*zeta^2 + 2*zeta + 8)*q^942 + (-4*zeta^2 + 2*zeta + 8)*q^948 +
(18*zeta^2 - 18*zeta - 36)*q^954 + (6*zeta^2 - 12*zeta - 12)*q^966 + 
1/2*(18*zeta^2 - 9*zeta - 36)*q^972 + (2*zeta^2 - 4*zeta - 4)*q^978 + 
1/2*(-9*zeta^2 - 9*zeta + 18)*q^984 + (12*zeta^2 - 6*zeta - 24)*q^996 + 
(-12*zeta^2 + 6*zeta + 24)*q^1002 + 3*zeta*q^1008 + 1/2*(9*zeta^2 + 9*zeta - 
18)*q^1014 + 1/2*(6*zeta^2 - 3*zeta - 12)*q^1026 + 1/2*(zeta^2 - 2*zeta - 
2)*q^1032 + (3*zeta^2 + 3*zeta - 6)*q^1038 + (-9*zeta^2 + 18)*q^1044 + 
(-10*zeta^2 + 5*zeta + 20)*q^1050 + 1/2*(-6*zeta^2 + 3*zeta + 12)*q^1056 + 
1/2*(-9*zeta^2 + 18)*q^1062 + (-3*zeta^2 - 3*zeta + 6)*q^1068 + (-6*zeta^2 + 
12*zeta + 12)*q^1074 + (-7*zeta^2 + 14*zeta + 14)*q^1086 + (-2*zeta^2 - 2*zeta +
4)*q^1092 + 12*zeta*q^1098 + (-6*zeta^2 + 3*zeta + 12)*q^1104 + (-6*zeta^2 + 
6*zeta + 12)*q^1116 + 1/2*(-9*zeta^2 - 9*zeta + 18)*q^1122 + (3*zeta^2 - 6*zeta 
- 6)*q^1128 + (-9*zeta^2 + 9*zeta + 18)*q^1134 + (9*zeta^2 + 9*zeta - 18)*q^1146
+ 1/2*(3*zeta^2 - 3*zeta - 6)*q^1152 + 1/2*(10*zeta^2 - 5*zeta - 20)*q^1158 + 
1/2*(10*zeta^2 - 5*zeta - 20)*q^1164 + 1/2*(3*zeta^2 + 3*zeta - 6)*q^1176 + 
(6*zeta^2 - 12*zeta - 12)*q^1182 + 1/2*(-9*zeta^2 - 9*zeta + 18)*q^1188 + 
(5*zeta^2 - 10*zeta - 10)*q^1194 + 1/2*(5*zeta^2 + 5*zeta - 10)*q^1200 + 
O(q^1206), 1/2*(-zeta^2 + zeta + 2)*q^3 + 1/2*(-zeta^2 - zeta + 2)*q^9 + 
1/2*(3*zeta^2 - 6)*q^15 + 1/2*zeta*q^21 + 1/2*(3*zeta^2 - 3*zeta - 6)*q^27 - 
3/2*zeta*q^33 + 1/2*(-zeta^2 + 2)*q^39 + 1/2*(-3*zeta^2 + 6*zeta + 6)*q^45 + 
(-3*zeta^2 + 3*zeta + 6)*q^51 + (2*zeta^2 - 2*zeta - 4)*q^57 + 1/2*(-2*zeta^2 + 
zeta + 4)*q^63 + 1/2*(-3*zeta^2 + 6)*q^69 - 2*zeta*q^75 + 1/2*(3*zeta^2 + 3*zeta
- 6)*q^81 - 3/2*zeta*q^87 + 1/2*(5*zeta^2 - 10)*q^93 + 1/2*(6*zeta^2 - 3*zeta - 
12)*q^99 + 1/2*(3*zeta^2 - 3*zeta - 6)*q^105 + (-zeta^2 + zeta + 2)*q^111 + 
1/2*(zeta^2 - 2*zeta - 2)*q^117 + 1/2*(3*zeta^2 - 6)*q^123 + 1/2*zeta*q^129 + 
1/2*(-9*zeta^2 + 18)*q^135 + 9/2*zeta*q^141 + (-3*zeta^2 + 6)*q^147 + (-3*zeta^2
- 3*zeta + 6)*q^153 + (3*zeta^2 - 3*zeta - 6)*q^159 + 1/2*(-9*zeta^2 + 9*zeta + 
18)*q^165 + (2*zeta^2 + 2*zeta - 4)*q^171 + 1/2*(-3*zeta^2 + 6)*q^177 + 
13/2*zeta*q^183 - 3/2*zeta*q^189 + 3/2*zeta*q^195 + 1/2*(-7*zeta^2 + 14)*q^201 +
1/2*(3*zeta^2 - 6*zeta - 6)*q^207 + (6*zeta^2 - 6*zeta - 12)*q^213 + (5*zeta^2 -
5*zeta - 10)*q^219 + (4*zeta^2 - 2*zeta - 8)*q^225 + 1/2*(-3*zeta^2 + 6)*q^231 -
11/2*zeta*q^237 + 1/2*(-9*zeta^2 + 9*zeta + 18)*q^243 + 9/2*zeta*q^249 + 
(9*zeta^2 - 18)*q^255 + 1/2*(6*zeta^2 - 3*zeta - 12)*q^261 + (-3*zeta^2 + 3*zeta
+ 6)*q^267 + 1/2*(-zeta^2 + zeta + 2)*q^273 + 1/2*(-5*zeta^2 + 10*zeta + 
10)*q^279 + (-6*zeta^2 + 12)*q^285 - 11/2*zeta*q^291 + 9/2*zeta*q^297 - 
15/2*zeta*q^303 + 1/2*(-7*zeta^2 + 14)*q^309 + 1/2*(3*zeta^2 + 3*zeta - 6)*q^315
+ (-6*zeta^2 + 6*zeta + 12)*q^321 + (-zeta^2 + zeta + 2)*q^327 + (-zeta^2 - zeta
+ 2)*q^333 + 1/2*(-9*zeta^2 + 18)*q^339 + 9/2*zeta*q^345 + 1/2*(3*zeta^2 - 
6)*q^351 + 3*zeta*q^357 + (-zeta^2 + 2)*q^363 + 1/2*(-3*zeta^2 + 6*zeta + 
6)*q^369 + 1/2*(3*zeta^2 - 3*zeta - 6)*q^375 + (8*zeta^2 - 8*zeta - 16)*q^381 + 
1/2*(-2*zeta^2 + zeta + 4)*q^387 + 1/2*(21*zeta^2 - 42)*q^393 - 2*zeta*q^399 + 
1/2*(9*zeta^2 - 18*zeta - 18)*q^405 - 3/2*zeta*q^411 + 1/2*(5*zeta^2 - 10)*q^417
+ 1/2*(-18*zeta^2 + 9*zeta + 36)*q^423 + 1/2*(3*zeta^2 - 3*zeta - 6)*q^429 + 
1/2*(-9*zeta^2 + 9*zeta + 18)*q^435 + (3*zeta^2 - 6*zeta - 6)*q^441 + 
1/2*(15*zeta^2 - 30)*q^447 + 13/2*zeta*q^453 + (9*zeta^2 - 9*zeta - 18)*q^459 - 
15/2*zeta*q^465 + 1/2*(-13*zeta^2 + 26)*q^471 + (3*zeta^2 + 3*zeta - 6)*q^477 + 
1/2*(-3*zeta^2 + 3*zeta + 6)*q^483 + (-10*zeta^2 + 10*zeta + 20)*q^489 + 
1/2*(-9*zeta^2 - 9*zeta + 18)*q^495 + 1/2*(9*zeta^2 - 18)*q^501 + 6*zeta*q^507 +
(-6*zeta^2 + 6*zeta + 12)*q^513 + 9/2*zeta*q^519 + (-2*zeta^2 + 4)*q^525 + 
1/2*(3*zeta^2 - 6*zeta - 6)*q^531 + (-6*zeta^2 + 6*zeta + 12)*q^537 + (-zeta^2 +
zeta + 2)*q^543 + 1/2*(-26*zeta^2 + 13*zeta + 52)*q^549 + (3*zeta^2 - 6)*q^555 -
9*zeta*q^561 + 1/2*(6*zeta^2 - 3*zeta - 12)*q^567 - 15/2*zeta*q^573 + 
1/2*(11*zeta^2 - 22)*q^579 + 1/2*(-6*zeta^2 + 3*zeta + 12)*q^585 + (-3*zeta^2 + 
3*zeta + 6)*q^591 + (2*zeta^2 - 2*zeta - 4)*q^597 + 1/2*(7*zeta^2 - 14*zeta - 
14)*q^603 + 1/2*(-3*zeta^2 + 6)*q^609 - 9/2*zeta*q^615 + 1/2*(9*zeta^2 - 
18)*q^621 + 6*zeta*q^627 + 1/2*(17*zeta^2 - 34)*q^633 + (6*zeta^2 + 6*zeta - 
12)*q^639 + 1/2*(3*zeta^2 - 3*zeta - 6)*q^645 + 1/2*(5*zeta^2 - 5*zeta - 
10)*q^651 + (5*zeta^2 + 5*zeta - 10)*q^657 + (-3*zeta^2 + 6)*q^663 + 
1/2*zeta*q^669 + 6*zeta*q^675 - 27/2*zeta*q^681 + 1/2*(-13*zeta^2 + 26)*q^687 + 
1/2*(3*zeta^2 - 6*zeta - 6)*q^693 + (3*zeta^2 - 3*zeta - 6)*q^699 + 
1/2*(27*zeta^2 - 27*zeta - 54)*q^705 + 1/2*(22*zeta^2 - 11*zeta - 44)*q^711 + 
1/2*(-27*zeta^2 + 54)*q^717 + 1/2*zeta*q^723 + 1/2*(-9*zeta^2 - 9*zeta + 
18)*q^729 + 9*zeta*q^735 + (2*zeta^2 - 4)*q^741 + 1/2*(-18*zeta^2 + 9*zeta + 
36)*q^747 + (-6*zeta^2 + 6*zeta + 12)*q^753 + 1/2*(9*zeta^2 - 9*zeta - 18)*q^759
+ (-9*zeta^2 + 18*zeta + 18)*q^765 + 1/2*(-9*zeta^2 + 18)*q^771 + zeta*q^777 + 
9/2*zeta*q^783 + 21/2*zeta*q^789 + (-9*zeta^2 + 18)*q^795 + (-3*zeta^2 - 3*zeta 
+ 6)*q^801 + (3*zeta^2 - 3*zeta - 6)*q^807 + (-4*zeta^2 + 4*zeta + 8)*q^813 + 
1/2*(-zeta^2 - zeta + 2)*q^819 + (6*zeta^2 - 12)*q^825 + 1/2*zeta*q^831 + 
1/2*(-15*zeta^2 + 30)*q^837 - 3/2*zeta*q^843 + 1/2*(5*zeta^2 - 10)*q^849 + 
(6*zeta^2 - 12*zeta - 12)*q^855 + 1/2*(3*zeta^2 - 3*zeta - 6)*q^861 + 
1/2*(-19*zeta^2 + 19*zeta + 38)*q^867 + 1/2*(22*zeta^2 - 11*zeta - 44)*q^873 + 
1/2*(-21*zeta^2 + 42)*q^879 + 9/2*zeta*q^885 + 1/2*(-18*zeta^2 + 9*zeta + 
36)*q^891 - 3/2*zeta*q^897 + 1/2*(zeta^2 - 2)*q^903 + 1/2*(30*zeta^2 - 15*zeta -
60)*q^909 + 1/2*(39*zeta^2 - 39*zeta - 78)*q^915 + (-10*zeta^2 + 10*zeta + 
20)*q^921 + 1/2*(7*zeta^2 - 14*zeta - 14)*q^927 + 1/2*(21*zeta^2 - 42)*q^933 + 
1/2*zeta*q^939 + 1/2*(-9*zeta^2 + 9*zeta + 18)*q^945 + 21/2*zeta*q^951 + 
1/2*(9*zeta^2 - 18)*q^957 + (-6*zeta^2 - 6*zeta + 12)*q^963 + (12*zeta^2 - 
12*zeta - 24)*q^969 + (2*zeta^2 - 2*zeta - 4)*q^975 + (-zeta^2 - zeta + 2)*q^981
+ 1/2*(9*zeta^2 - 18)*q^987 - 11/2*zeta*q^993 + (3*zeta^2 - 3*zeta - 6)*q^999 + 
21/2*zeta*q^1005 + 1/2*(23*zeta^2 - 46)*q^1011 + 1/2*(9*zeta^2 - 18*zeta - 
18)*q^1017 + 1/2*(-15*zeta^2 + 15*zeta + 30)*q^1023 + 1/2*(-13*zeta^2 + 13*zeta 
+ 26)*q^1029 + 1/2*(-18*zeta^2 + 9*zeta + 36)*q^1035 + 1/2*(9*zeta^2 - 
18)*q^1041 + 1/2*zeta*q^1047 + 1/2*(-3*zeta^2 + 6*zeta + 6)*q^1053 - 
3/2*zeta*q^1059 + (-18*zeta^2 + 36)*q^1065 + (-6*zeta^2 + 3*zeta + 12)*q^1071 + 
1/2*(3*zeta^2 - 3*zeta - 6)*q^1083 + (zeta^2 - 2*zeta - 2)*q^1089 + (-15*zeta^2 
+ 30)*q^1095 + 13/2*zeta*q^1101 + 1/2*(-9*zeta^2 + 18)*q^1107 - 3*zeta*q^1113 + 
1/2*(-zeta^2 + 2)*q^1119 + 1/2*(3*zeta^2 + 3*zeta - 6)*q^1125 + 1/2*(3*zeta^2 - 
3*zeta - 6)*q^1131 + (8*zeta^2 - 8*zeta - 16)*q^1137 + (8*zeta^2 + 8*zeta - 
16)*q^1143 + 1/2*(-15*zeta^2 + 30)*q^1149 + 9/2*zeta*q^1155 - 3/2*zeta*q^1161 - 
15/2*zeta*q^1167 + (-9*zeta^2 + 18)*q^1173 + 1/2*(-21*zeta^2 + 42*zeta + 
42)*q^1179 + 1/2*(-33*zeta^2 + 33*zeta + 66)*q^1185 + (-zeta^2 + zeta + 
2)*q^1191 + (4*zeta^2 - 2*zeta - 8)*q^1197 + 1/2*(3*zeta^2 - 6)*q^1203 + 
O(q^1206)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_18K3 := Curve(P_Q, [ PolynomialRing(RationalField(), 3) |
x[1]^4 - 10*x[1]^3*x[3] - 24*x[1]^2*x[2]^2 - 12*x[1]^2*x[3]^2 - 
24*x[1]*x[2]^2*x[3] + 32*x[1]*x[3]^3 - 48*x[2]^4 + 48*x[2]^2*x[3]^2 + 16*x[3]^4
]);
