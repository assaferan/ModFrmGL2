
    /****************************************************
    Loading this file in magma loads the objects fs_18I1 
    and X_18I1. fs_18I1 is a list of power series which form 
    a basis for the space of cusp forms. X_18I1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | -1, -3, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_18I1 := [Kq | q + q^2 + q^4 + 2*q^7 + q^8 - 3*q^11 + 2*q^13 + 
2*q^14 + q^16 - 3*q^17 - q^19 - 3*q^22 - 6*q^23 - 5*q^25 + 2*q^26 + 2*q^28 + 
6*q^29 - 4*q^31 + q^32 - 3*q^34 - 4*q^37 - q^38 + 9*q^41 - q^43 - 3*q^44 - 
6*q^46 - 6*q^47 - 3*q^49 - 5*q^50 + 2*q^52 + 12*q^53 + 2*q^56 + 6*q^58 + 3*q^59 
+ 8*q^61 - 4*q^62 + q^64 + 5*q^67 - 3*q^68 - 12*q^71 + 11*q^73 - 4*q^74 - q^76 -
6*q^77 - 4*q^79 + 9*q^82 + 12*q^83 - q^86 - 3*q^88 + 6*q^89 + 4*q^91 - 6*q^92 - 
6*q^94 + 5*q^97 - 3*q^98 - 5*q^100 + 14*q^103 + 2*q^104 + 12*q^106 + 3*q^107 - 
16*q^109 + 2*q^112 + 6*q^113 + 6*q^116 + 3*q^118 - 6*q^119 - 2*q^121 + 8*q^122 -
4*q^124 + 2*q^127 + q^128 - 2*q^133 + 5*q^134 - 3*q^136 - 3*q^137 - 19*q^139 - 
12*q^142 - 6*q^143 + 11*q^146 - 4*q^148 - 6*q^149 - 10*q^151 - q^152 - 6*q^154 -
4*q^157 - 4*q^158 - 12*q^161 - 4*q^163 + 9*q^164 + 12*q^166 - 12*q^167 - 9*q^169
- q^172 - 6*q^173 - 10*q^175 - 3*q^176 + 6*q^178 + 12*q^179 + 14*q^181 + 4*q^182
- 6*q^184 + 9*q^187 - 6*q^188 - 18*q^191 + 5*q^193 + 5*q^194 - 3*q^196 - 
12*q^197 - 10*q^199 - 5*q^200 + 12*q^203 + 14*q^206 + 2*q^208 + 3*q^209 + 
20*q^211 + 12*q^212 + 3*q^214 - 8*q^217 - 16*q^218 - 6*q^221 + 26*q^223 + 
2*q^224 + 6*q^226 + 21*q^227 + 14*q^229 + 6*q^232 + 3*q^233 + 3*q^236 - 6*q^238 
+ 6*q^239 - 7*q^241 - 2*q^242 + 8*q^244 - 2*q^247 - 4*q^248 + 21*q^251 + 
18*q^253 + 2*q^254 + q^256 - 21*q^257 - 8*q^259 + 18*q^263 - 2*q^266 + 5*q^268 -
24*q^269 + 20*q^271 - 3*q^272 - 3*q^274 + 15*q^275 - 10*q^277 - 19*q^278 + 
6*q^281 - 4*q^283 - 12*q^284 - 6*q^286 + 18*q^287 - 8*q^289 + 11*q^292 + 
30*q^293 - 4*q^296 - 6*q^298 - 12*q^299 - 2*q^301 - 10*q^302 - q^304 - 7*q^307 -
6*q^308 - 18*q^311 + 29*q^313 - 4*q^314 - 4*q^316 - 18*q^317 - 18*q^319 - 
12*q^322 + 3*q^323 - 10*q^325 - 4*q^326 + 9*q^328 - 12*q^329 - 4*q^331 + 
12*q^332 - 12*q^334 - q^337 - 9*q^338 + 12*q^341 - 20*q^343 - q^344 - 6*q^346 + 
33*q^347 - 16*q^349 - 10*q^350 - 3*q^352 - 21*q^353 + 6*q^356 + 12*q^358 - 
18*q^359 - 18*q^361 + 14*q^362 + 4*q^364 - 28*q^367 - 6*q^368 + 24*q^371 - 
34*q^373 + 9*q^374 - 6*q^376 + 12*q^377 + 23*q^379 - 18*q^382 + 5*q^386 + 
5*q^388 + 18*q^389 + 18*q^391 - 3*q^392 - 12*q^394 + 20*q^397 - 10*q^398 - 
5*q^400 - 27*q^401 - 8*q^403 + 12*q^406 + 12*q^407 + 17*q^409 + 14*q^412 + 
6*q^413 + 2*q^416 + 3*q^418 - 12*q^419 + 20*q^421 + 20*q^422 + 12*q^424 + 
15*q^425 + 16*q^427 + 3*q^428 - 30*q^431 - 7*q^433 - 8*q^434 - 16*q^436 + 
6*q^437 + 8*q^439 - 6*q^442 + 3*q^443 + 26*q^446 + 2*q^448 + 9*q^449 - 27*q^451 
+ 6*q^452 + 21*q^454 + 17*q^457 + 14*q^458 - 30*q^461 + 20*q^463 + 6*q^464 + 
3*q^466 - 15*q^467 + 10*q^469 + 3*q^472 + 3*q^473 + 5*q^475 - 6*q^476 + 6*q^478 
- 42*q^479 - 8*q^481 - 7*q^482 - 2*q^484 + 26*q^487 + 8*q^488 - 15*q^491 - 
18*q^493 - 2*q^494 - 4*q^496 - 24*q^497 - 13*q^499 + 21*q^502 + 18*q^506 + 
2*q^508 + 22*q^511 + q^512 - 21*q^514 + 18*q^517 - 8*q^518 - 3*q^521 + 20*q^523 
+ 18*q^526 + 12*q^527 + 13*q^529 - 2*q^532 + 18*q^533 + 5*q^536 - 24*q^538 + 
9*q^539 - 4*q^541 + 20*q^542 - 3*q^544 - q^547 - 3*q^548 + 15*q^550 - 6*q^551 - 
8*q^553 - 10*q^554 - 19*q^556 - 30*q^557 - 2*q^559 + 6*q^562 - 39*q^563 - 
4*q^566 - 12*q^568 + 45*q^569 - 37*q^571 - 6*q^572 + 18*q^574 + 30*q^575 + 
11*q^577 - 8*q^578 + 24*q^581 - 36*q^583 + 11*q^584 + 30*q^586 - 9*q^587 + 
4*q^589 - 4*q^592 + 6*q^593 - 6*q^596 - 12*q^598 + 12*q^599 - 37*q^601 - 2*q^602
- 10*q^604 - 28*q^607 - q^608 - 12*q^611 - 16*q^613 - 7*q^614 - 6*q^616 + 
27*q^617 + 35*q^619 - 18*q^622 + 12*q^623 + 25*q^625 + 29*q^626 - 4*q^628 + 
12*q^629 - 40*q^631 - 4*q^632 - 18*q^634 - 6*q^637 - 18*q^638 - 3*q^641 + 
23*q^643 - 12*q^644 + 3*q^646 + 18*q^647 - 9*q^649 - 10*q^650 - 4*q^652 - 
6*q^653 + 9*q^656 - 12*q^658 - 36*q^659 - 4*q^661 - 4*q^662 + 12*q^664 - 
36*q^667 - 12*q^668 - 24*q^671 - 22*q^673 - q^674 - 9*q^676 + 36*q^677 + 
10*q^679 + 12*q^682 - 9*q^683 - 20*q^686 - q^688 + 24*q^689 + 8*q^691 - 6*q^692 
+ 33*q^694 - 27*q^697 - 16*q^698 - 10*q^700 + 30*q^701 + 4*q^703 - 3*q^704 - 
21*q^706 - 4*q^709 + 6*q^712 + 24*q^713 + 12*q^716 - 18*q^718 - 36*q^719 + 
28*q^721 - 18*q^722 + 14*q^724 - 30*q^725 + 26*q^727 + 4*q^728 + 3*q^731 + 
14*q^733 - 28*q^734 - 6*q^736 - 15*q^737 + 47*q^739 + 24*q^742 + 6*q^743 - 
34*q^746 + 9*q^748 + 6*q^749 + 8*q^751 - 6*q^752 + 12*q^754 + 2*q^757 + 23*q^758
+ 42*q^761 - 32*q^763 - 18*q^764 + 6*q^767 + 2*q^769 + 5*q^772 + 18*q^773 + 
20*q^775 + 5*q^776 + 18*q^778 - 9*q^779 + 36*q^781 + 18*q^782 - 3*q^784 - 
4*q^787 - 12*q^788 + 12*q^791 + 16*q^793 + 20*q^794 - 10*q^796 - 12*q^797 + 
18*q^799 - 5*q^800 - 27*q^802 - 33*q^803 - 8*q^806 + 33*q^809 - 7*q^811 + 
12*q^812 + 12*q^814 + q^817 + 17*q^818 - 18*q^821 - 16*q^823 + 14*q^824 + 
6*q^826 - 12*q^827 - 10*q^829 + 2*q^832 + 9*q^833 + 3*q^836 - 12*q^838 + 
12*q^839 + 7*q^841 + 20*q^842 + 20*q^844 - 4*q^847 + 12*q^848 + 15*q^850 + 
24*q^851 + 26*q^853 + 16*q^854 + 3*q^856 - 42*q^857 + 35*q^859 - 30*q^862 + 
24*q^863 - 7*q^866 - 8*q^868 + 12*q^869 + 10*q^871 - 16*q^872 + 6*q^874 + 
8*q^877 + 8*q^878 - 42*q^881 - 19*q^883 - 6*q^884 + 3*q^886 + 4*q^889 + 26*q^892
+ 6*q^893 + 2*q^896 + 9*q^898 - 24*q^899 - 36*q^901 - 27*q^902 + 6*q^904 - 
31*q^907 + 21*q^908 + 48*q^911 - 36*q^913 + 17*q^914 + 14*q^916 + 38*q^919 - 
30*q^922 - 24*q^923 + 20*q^925 + 20*q^926 + 6*q^928 - 6*q^929 + 3*q^931 + 
3*q^932 - 15*q^934 + O(q^936)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_18I1 := Curve(P_Q, [ PolynomialRing(ext<K|Polynomial(K, [-1, -3,
0, 1])> where K is RationalField(), 2) | ]);