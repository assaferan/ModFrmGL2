
    /****************************************************
    Loading this file in magma loads the objects fs_17C1 
    and X_17C1. fs_17C1 is a list of power series which form 
    a basis for the space of cusp forms. X_17C1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_17C1 := [Kq | q - q^2 - q^4 - 2*q^5 + 4*q^7 + 3*q^8 - 3*q^9 + 
2*q^10 - 2*q^13 - 4*q^14 - q^16 + q^17 + 3*q^18 - 4*q^19 + 2*q^20 + 4*q^23 - 
q^25 + 2*q^26 - 4*q^28 + 6*q^29 + 4*q^31 - 5*q^32 - q^34 - 8*q^35 + 3*q^36 - 
2*q^37 + 4*q^38 - 6*q^40 - 6*q^41 + 4*q^43 + 6*q^45 - 4*q^46 + 9*q^49 + q^50 + 
2*q^52 + 6*q^53 + 12*q^56 - 6*q^58 - 12*q^59 - 10*q^61 - 4*q^62 - 12*q^63 + 
7*q^64 + 4*q^65 + 4*q^67 - q^68 + 8*q^70 - 4*q^71 - 9*q^72 - 6*q^73 + 2*q^74 + 
4*q^76 + 12*q^79 + 2*q^80 + 9*q^81 + 6*q^82 - 4*q^83 - 2*q^85 - 4*q^86 + 10*q^89
- 6*q^90 - 8*q^91 - 4*q^92 + 8*q^95 + 2*q^97 - 9*q^98 + q^100 - 10*q^101 + 
8*q^103 - 6*q^104 - 6*q^106 + 8*q^107 + 6*q^109 - 4*q^112 - 14*q^113 - 8*q^115 -
6*q^116 + 6*q^117 + 12*q^118 + 4*q^119 - 11*q^121 + 10*q^122 - 4*q^124 + 
12*q^125 + 12*q^126 + 8*q^127 + 3*q^128 - 4*q^130 + 16*q^131 - 16*q^133 - 
4*q^134 + 3*q^136 - 6*q^137 - 8*q^139 + 8*q^140 + 4*q^142 + 3*q^144 - 12*q^145 +
6*q^146 + 2*q^148 - 10*q^149 - 16*q^151 - 12*q^152 - 3*q^153 - 8*q^155 - 2*q^157
- 12*q^158 + 10*q^160 + 16*q^161 - 9*q^162 + 24*q^163 + 6*q^164 + 4*q^166 - 
4*q^167 - 9*q^169 + 2*q^170 + 12*q^171 - 4*q^172 + 22*q^173 - 4*q^175 - 10*q^178
+ 12*q^179 - 6*q^180 - 2*q^181 + 8*q^182 + 12*q^184 + 4*q^185 - 8*q^190 - 
16*q^191 + 2*q^193 - 2*q^194 - 9*q^196 - 18*q^197 - 20*q^199 - 3*q^200 + 
10*q^202 + 24*q^203 + 12*q^205 - 8*q^206 - 12*q^207 + 2*q^208 + 8*q^211 - 
6*q^212 - 8*q^214 - 8*q^215 + 16*q^217 - 6*q^218 - 2*q^221 + 24*q^223 - 20*q^224
+ 3*q^225 + 14*q^226 - 24*q^227 + 6*q^229 + 8*q^230 + 18*q^232 - 6*q^233 - 
6*q^234 + 12*q^236 - 4*q^238 - 16*q^239 + 18*q^241 + 11*q^242 + 10*q^244 - 
18*q^245 + 8*q^247 + 12*q^248 - 12*q^250 + 12*q^251 + 12*q^252 - 8*q^254 - 
17*q^256 + 18*q^257 - 8*q^259 - 4*q^260 - 18*q^261 - 16*q^262 - 16*q^263 - 
12*q^265 + 16*q^266 - 4*q^268 + 22*q^269 - 16*q^271 - q^272 + 6*q^274 + 14*q^277
+ 8*q^278 - 12*q^279 - 24*q^280 - 6*q^281 - 16*q^283 + 4*q^284 - 24*q^287 + 
15*q^288 + q^289 + 12*q^290 + 6*q^292 + 6*q^293 + 24*q^295 - 6*q^296 + 10*q^298 
- 8*q^299 + 16*q^301 + 16*q^302 + 4*q^304 + 20*q^305 + 3*q^306 - 12*q^307 + 
8*q^310 + 28*q^311 - 22*q^313 + 2*q^314 + 24*q^315 - 12*q^316 - 10*q^317 - 
14*q^320 - 16*q^322 - 4*q^323 - 9*q^324 + 2*q^325 - 24*q^326 - 18*q^328 + 
4*q^331 + 4*q^332 + 6*q^333 + 4*q^334 - 8*q^335 - 14*q^337 + 9*q^338 + 2*q^340 -
12*q^342 + 8*q^343 + 12*q^344 - 22*q^346 + 32*q^347 - 18*q^349 + 4*q^350 - 
30*q^353 + 8*q^355 - 10*q^356 - 12*q^358 + 18*q^360 - 3*q^361 + 2*q^362 + 
8*q^364 + 12*q^365 + 28*q^367 - 4*q^368 + 18*q^369 - 4*q^370 + 24*q^371 + 
6*q^373 - 12*q^377 - 8*q^379 - 8*q^380 + 16*q^382 - 24*q^383 - 2*q^386 - 
12*q^387 - 2*q^388 + 6*q^389 + 4*q^391 + 27*q^392 + 18*q^394 - 24*q^395 + 
6*q^397 + 20*q^398 + q^400 - 14*q^401 - 8*q^403 + 10*q^404 - 18*q^405 - 24*q^406
+ 26*q^409 - 12*q^410 - 8*q^412 - 48*q^413 + 12*q^414 + 8*q^415 + 10*q^416 + 
8*q^419 + 22*q^421 - 8*q^422 + 18*q^424 - q^425 - 40*q^427 - 8*q^428 + 8*q^430 +
12*q^431 + 2*q^433 - 16*q^434 - 6*q^436 - 16*q^437 - 20*q^439 - 27*q^441 + 
2*q^442 + 28*q^443 - 20*q^445 - 24*q^446 + 28*q^448 + 34*q^449 - 3*q^450 + 
14*q^452 + 24*q^454 + 16*q^455 - 6*q^457 - 6*q^458 + 8*q^460 - 2*q^461 + 
32*q^463 - 6*q^464 + 6*q^466 + 12*q^467 - 6*q^468 + 16*q^469 - 36*q^472 + 
4*q^475 - 4*q^476 - 18*q^477 + 16*q^478 + 36*q^479 + 4*q^481 - 18*q^482 + 
11*q^484 - 4*q^485 + 20*q^487 - 30*q^488 + 18*q^490 + 20*q^491 + 6*q^493 - 
8*q^494 - 4*q^496 - 16*q^497 - 40*q^499 - 12*q^500 - 12*q^502 - 12*q^503 - 
36*q^504 + 20*q^505 - 8*q^508 - 2*q^509 - 24*q^511 + 11*q^512 - 18*q^514 - 
16*q^515 + 8*q^518 + 12*q^520 + 26*q^521 + 18*q^522 - 36*q^523 - 16*q^524 + 
16*q^526 + 4*q^527 - 7*q^529 + 12*q^530 + 36*q^531 + 16*q^532 + 12*q^533 - 
16*q^535 + 12*q^536 - 22*q^538 + 6*q^541 + 16*q^542 - 5*q^544 - 12*q^545 - 
32*q^547 + 6*q^548 + 30*q^549 - 24*q^551 + 48*q^553 - 14*q^554 + 8*q^556 + 
30*q^557 + 12*q^558 - 8*q^559 + 8*q^560 + 6*q^562 - 4*q^563 + 28*q^565 + 
16*q^566 + 36*q^567 - 12*q^568 - 38*q^569 - 32*q^571 + 24*q^574 - 4*q^575 - 
21*q^576 - 14*q^577 - q^578 + 12*q^580 - 16*q^581 - 18*q^584 - 12*q^585 - 
6*q^586 + 4*q^587 - 16*q^589 - 24*q^590 + 2*q^592 + 18*q^593 - 8*q^595 + 
10*q^596 + 8*q^598 - 24*q^599 + 10*q^601 - 16*q^602 - 12*q^603 + 16*q^604 + 
22*q^605 + 20*q^607 + 20*q^608 - 20*q^610 + 3*q^612 - 26*q^613 + 12*q^614 - 
6*q^617 - 48*q^619 + 8*q^620 - 28*q^622 + 40*q^623 - 19*q^625 + 22*q^626 + 
2*q^628 - 2*q^629 - 24*q^630 + 16*q^631 + 36*q^632 + 10*q^634 - 16*q^635 - 
18*q^637 + 12*q^639 - 6*q^640 - 30*q^641 + 32*q^643 - 16*q^644 + 4*q^646 + 
8*q^647 + 27*q^648 - 2*q^650 - 24*q^652 + 6*q^653 - 32*q^655 + 6*q^656 + 
18*q^657 + 4*q^659 + 38*q^661 - 4*q^662 - 12*q^664 + 32*q^665 - 6*q^666 + 
24*q^667 + 4*q^668 + 8*q^670 + 2*q^673 + 14*q^674 + 9*q^676 + 30*q^677 + 8*q^679
- 6*q^680 - 40*q^683 - 12*q^684 + 12*q^685 - 8*q^686 - 4*q^688 - 12*q^689 - 
8*q^691 - 22*q^692 - 32*q^694 + 16*q^695 - 6*q^697 + 18*q^698 + 4*q^700 - 
18*q^701 + 8*q^703 + 30*q^706 - 40*q^707 - 34*q^709 - 8*q^710 - 36*q^711 + 
30*q^712 + 16*q^713 - 12*q^716 + 4*q^719 - 6*q^720 + 32*q^721 + 3*q^722 + 
2*q^724 - 6*q^725 + 40*q^727 - 24*q^728 - 27*q^729 - 12*q^730 + 4*q^731 - 
50*q^733 - 28*q^734 - 20*q^736 - 18*q^738 + 28*q^739 - 4*q^740 - 24*q^742 + 
12*q^743 + 20*q^745 - 6*q^746 + 12*q^747 + 32*q^749 + 20*q^751 + 12*q^754 + 
32*q^755 + 22*q^757 + 8*q^758 + 24*q^760 - 22*q^761 + 24*q^763 + 16*q^764 + 
6*q^765 + 24*q^766 + 24*q^767 - 14*q^769 - 2*q^772 - 26*q^773 + 12*q^774 - 
4*q^775 + 6*q^776 - 6*q^778 + 24*q^779 - 4*q^782 - 9*q^784 + 4*q^785 - 32*q^787 
+ 18*q^788 + 24*q^790 - 56*q^791 + 20*q^793 - 6*q^794 + 20*q^796 - 50*q^797 + 
5*q^800 - 30*q^801 + 14*q^802 - 32*q^805 + 8*q^806 - 30*q^808 + 26*q^809 + 
18*q^810 + 40*q^811 - 24*q^812 - 48*q^815 - 16*q^817 - 26*q^818 + 24*q^819 - 
12*q^820 - 18*q^821 + 20*q^823 + 24*q^824 + 48*q^826 - 48*q^827 + 12*q^828 - 
34*q^829 - 8*q^830 - 14*q^832 + 9*q^833 + 8*q^835 - 8*q^838 + 20*q^839 + 7*q^841
- 22*q^842 - 8*q^844 + 18*q^845 - 44*q^847 - 6*q^848 + q^850 - 8*q^851 + 
14*q^853 + 40*q^854 - 24*q^855 + 24*q^856 + 10*q^857 + 52*q^859 + 8*q^860 - 
12*q^862 + 16*q^863 - 44*q^865 - 2*q^866 - 16*q^868 - 8*q^871 + 18*q^872 - 
6*q^873 + 16*q^874 + 48*q^875 + 6*q^877 + 20*q^878 - 46*q^881 + 27*q^882 - 
12*q^883 + 2*q^884 - 28*q^886 + 12*q^887 + 32*q^889 + 20*q^890 - 24*q^892 - 
24*q^895 + 12*q^896 - 34*q^898 + 24*q^899 - 3*q^900 + 6*q^901 - 42*q^904 + 
4*q^905 + 32*q^907 + 24*q^908 + 30*q^909 - 16*q^910 - 4*q^911 + 6*q^914 - 
6*q^916 + 64*q^917 + 24*q^919 - 24*q^920 + 2*q^922 + 8*q^923 + 2*q^925 - 
32*q^926 - 24*q^927 - 30*q^928 - 30*q^929 - 36*q^931 + 6*q^932 - 12*q^934 + 
18*q^936 + 10*q^937 - 16*q^938 + 6*q^941 - 24*q^943 + 12*q^944 + 32*q^947 + 
12*q^949 - 4*q^950 + 12*q^952 - 22*q^953 + 18*q^954 + 32*q^955 + 16*q^956 - 
36*q^958 - 24*q^959 - 15*q^961 - 4*q^962 - 24*q^963 - 18*q^964 - 4*q^965 - 
33*q^968 + 4*q^970 - 12*q^971 - 32*q^973 - 20*q^974 + 10*q^976 + 18*q^977 + 
18*q^980 - 18*q^981 - 20*q^982 + 12*q^983 + 36*q^985 - 6*q^986 - 8*q^988 + 
16*q^989 - 12*q^991 - 20*q^992 + 16*q^994 + 40*q^995 + 46*q^997 + 40*q^998 + 
36*q^1000 - 12*q^1003 - 12*q^1004 + 12*q^1006 - 24*q^1007 + 12*q^1008 - 
14*q^1009 - 20*q^1010 + 30*q^1013 - 48*q^1015 + 24*q^1016 + 42*q^1017 + 2*q^1018
- 36*q^1019 + 14*q^1021 + 24*q^1022 + 23*q^1024 + 6*q^1025 - 24*q^1027 - 
18*q^1028 + 16*q^1030 - 12*q^1031 + 58*q^1033 + 24*q^1035 + 8*q^1036 - 10*q^1037
+ 40*q^1039 - 4*q^1040 - 26*q^1042 - 40*q^1043 + 18*q^1044 + 36*q^1046 + 
48*q^1048 - 22*q^1049 + 8*q^1051 + 16*q^1052 - 18*q^1053 - 4*q^1054 - 16*q^1055 
- 64*q^1057 + 7*q^1058 + 12*q^1060 - 18*q^1061 - 36*q^1062 - 48*q^1063 - 
48*q^1064 - 12*q^1066 - 50*q^1069 + 16*q^1070 - 12*q^1071 - 4*q^1072 - 12*q^1073
- 4*q^1075 - 22*q^1076 + 8*q^1079 - 6*q^1082 + 16*q^1084 - 32*q^1085 + 7*q^1088 
+ 33*q^1089 + 12*q^1090 + 62*q^1093 + 32*q^1094 - 18*q^1096 + 42*q^1097 - 
30*q^1098 - 8*q^1099 + 24*q^1102 + 8*q^1103 + 4*q^1105 - 48*q^1106 - 14*q^1108 +
6*q^1109 - 24*q^1112 - 30*q^1114 - 48*q^1115 + 12*q^1116 - 26*q^1117 + 8*q^1118 
+ 40*q^1120 + 48*q^1121 + 36*q^1123 + 6*q^1124 - 36*q^1125 + 4*q^1126 + 
36*q^1127 - 38*q^1129 - 28*q^1130 + 16*q^1132 - 36*q^1134 + 48*q^1135 + 4*q^1136
+ 38*q^1138 + 4*q^1139 + 96*q^1141 + 32*q^1142 - 24*q^1143 - 12*q^1145 - 
8*q^1147 + 24*q^1148 + 4*q^1150 - 12*q^1151 - 9*q^1152 + 2*q^1153 + 14*q^1154 + 
O(q^1156)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_17C1 := Curve(P_Q, [ PolynomialRing(RationalField(), 2) | ]);