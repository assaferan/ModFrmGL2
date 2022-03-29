
    /****************************************************
    Loading this file in magma loads the objects fs_21E1 
    and X_21E1. fs_21E1 is a list of power series which form 
    a basis for the space of cusp forms. X_21E1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | 1, -8, 8, 6, -6, -1, 1 
]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_21E1 := [Kq | 1/8*(-2*zeta^5 + 13*zeta^3 - 2*zeta^2 - 19*zeta +
8)*q + 1/4*(zeta^5 - 3*zeta^3 + zeta^2 - zeta - 4)*q^4 + 1/8*(2*zeta^5 + zeta^3 
+ 2*zeta^2 - 23*zeta - 1)*q^7 + 1/8*(14*zeta^5 - 91*zeta^3 + 14*zeta^2 + 
133*zeta - 56)*q^13 + 1/2*(3*zeta^5 - 16*zeta^3 + 3*zeta^2 + 18*zeta - 5)*q^16 +
1/8*(-21*zeta^5 + 112*zeta^3 - 21*zeta^2 - 126*zeta + 35)*q^19 + 1/8*(5*zeta^5 -
15*zeta^3 + 5*zeta^2 - 5*zeta - 20)*q^25 + 1/4*(13*zeta^5 - 67*zeta^3 + 
13*zeta^2 + 71*zeta - 31)*q^28 + 1/8*(7*zeta^5 - 21*zeta^3 + 7*zeta^2 - 7*zeta -
28)*q^31 + 1/8*(-3*zeta^5 + 16*zeta^3 - 3*zeta^2 - 18*zeta + 5)*q^37 + 
1/8*(-10*zeta^5 + 65*zeta^3 - 10*zeta^2 - 95*zeta + 40)*q^43 + 1/8*(-37*zeta^5 +
202*zeta^3 - 37*zeta^2 - 236*zeta + 92)*q^49 + 1/4*(-7*zeta^5 + 21*zeta^3 - 
7*zeta^2 + 7*zeta + 28)*q^52 + 1/4*(21*zeta^5 - 112*zeta^3 + 21*zeta^2 + 
126*zeta - 35)*q^61 + (2*zeta^5 - 13*zeta^3 + 2*zeta^2 + 19*zeta - 8)*q^64 + 
1/8*(-11*zeta^5 + 33*zeta^3 - 11*zeta^2 + 11*zeta + 44)*q^67 + 1/8*(7*zeta^5 - 
21*zeta^3 + 7*zeta^2 - 7*zeta - 28)*q^73 + 1/4*(-14*zeta^5 + 91*zeta^3 - 
14*zeta^2 - 133*zeta + 56)*q^76 + 1/8*(-39*zeta^5 + 208*zeta^3 - 39*zeta^2 - 
234*zeta + 65)*q^79 + 1/8*(-14*zeta^5 - 7*zeta^3 - 14*zeta^2 + 161*zeta + 
7)*q^91 + 1/4*(-14*zeta^5 + 91*zeta^3 - 14*zeta^2 - 133*zeta + 56)*q^97 + 
1/4*(15*zeta^5 - 80*zeta^3 + 15*zeta^2 + 90*zeta - 25)*q^100 + 1/8*(-21*zeta^5 +
112*zeta^3 - 21*zeta^2 - 126*zeta + 35)*q^103 + 1/8*(-17*zeta^5 + 51*zeta^3 - 
17*zeta^2 + 17*zeta + 68)*q^109 + 1/2*(11*zeta^5 - 68*zeta^3 + 11*zeta^2 + 
94*zeta - 30)*q^112 + 1/8*(-33*zeta^5 + 176*zeta^3 - 33*zeta^2 - 198*zeta + 
55)*q^121 + 1/4*(21*zeta^5 - 112*zeta^3 + 21*zeta^2 + 126*zeta - 35)*q^124 + 
1/8*(38*zeta^5 - 247*zeta^3 + 38*zeta^2 + 361*zeta - 152)*q^127 + 
1/8*(-77*zeta^5 + 476*zeta^3 - 77*zeta^2 - 658*zeta + 210)*q^133 + 
1/8*(14*zeta^5 - 91*zeta^3 + 14*zeta^2 + 133*zeta - 56)*q^139 + 1/4*(-2*zeta^5 +
13*zeta^3 - 2*zeta^2 - 19*zeta + 8)*q^148 + 1/2*(zeta^5 - 3*zeta^3 + zeta^2 - 
zeta - 4)*q^151 + 1/4*(-7*zeta^5 + 21*zeta^3 - 7*zeta^2 + 7*zeta + 28)*q^157 + 
(3*zeta^5 - 16*zeta^3 + 3*zeta^2 + 18*zeta - 5)*q^163 + 1/2*(-18*zeta^5 + 
117*zeta^3 - 18*zeta^2 - 171*zeta + 72)*q^169 + 1/4*(5*zeta^5 - 15*zeta^3 + 
5*zeta^2 - 5*zeta - 20)*q^172 + 1/8*(65*zeta^5 - 335*zeta^3 + 65*zeta^2 + 
355*zeta - 155)*q^175 + 1/8*(14*zeta^5 - 91*zeta^3 + 14*zeta^2 + 133*zeta - 
56)*q^181 + 1/8*(25*zeta^5 - 75*zeta^3 + 25*zeta^2 - 25*zeta - 100)*q^193 + 
1/4*(-20*zeta^5 + 137*zeta^3 - 20*zeta^2 - 211*zeta + 59)*q^196 + 1/2*(7*zeta^5 
- 21*zeta^3 + 7*zeta^2 - 7*zeta - 28)*q^199 + 1/2*(-21*zeta^5 + 112*zeta^3 - 
21*zeta^2 - 126*zeta + 35)*q^208 + (4*zeta^5 - 26*zeta^3 + 4*zeta^2 + 38*zeta - 
16)*q^211 + 1/8*(91*zeta^5 - 469*zeta^3 + 91*zeta^2 + 497*zeta - 217)*q^217 + 
1/2*(14*zeta^5 - 91*zeta^3 + 14*zeta^2 + 133*zeta - 56)*q^223 + 1/8*(-21*zeta^5 
+ 112*zeta^3 - 21*zeta^2 - 126*zeta + 35)*q^229 + 1/4*(-7*zeta^5 + 21*zeta^3 - 
7*zeta^2 + 7*zeta + 28)*q^241 + 1/2*(14*zeta^5 - 91*zeta^3 + 14*zeta^2 + 
133*zeta - 56)*q^244 + 1/8*(147*zeta^5 - 784*zeta^3 + 147*zeta^2 + 882*zeta - 
245)*q^247 + (-2*zeta^5 + 6*zeta^3 - 2*zeta^2 + 2*zeta + 8)*q^256 + 
1/8*(-11*zeta^5 + 68*zeta^3 - 11*zeta^2 - 94*zeta + 30)*q^259 + 1/4*(-33*zeta^5 
+ 176*zeta^3 - 33*zeta^2 - 198*zeta + 55)*q^268 + 1/2*(-21*zeta^5 + 112*zeta^3 -
21*zeta^2 - 126*zeta + 35)*q^271 + 1/8*(31*zeta^5 - 93*zeta^3 + 31*zeta^2 - 
31*zeta - 124)*q^277 + 1/8*(7*zeta^5 - 21*zeta^3 + 7*zeta^2 - 7*zeta - 28)*q^283
+ 1/8*(-51*zeta^5 + 272*zeta^3 - 51*zeta^2 - 306*zeta + 85)*q^289 + 
1/4*(21*zeta^5 - 112*zeta^3 + 21*zeta^2 + 126*zeta - 35)*q^292 + 1/8*(10*zeta^5 
+ 5*zeta^3 + 10*zeta^2 - 115*zeta - 5)*q^301 + 1/2*(7*zeta^5 - 21*zeta^3 + 
7*zeta^2 - 7*zeta - 28)*q^304 + 1/8*(-70*zeta^5 + 455*zeta^3 - 70*zeta^2 - 
665*zeta + 280)*q^307 + 1/8*(105*zeta^5 - 560*zeta^3 + 105*zeta^2 + 630*zeta - 
175)*q^313 + 1/4*(-26*zeta^5 + 169*zeta^3 - 26*zeta^2 - 247*zeta + 104)*q^316 + 
1/8*(-35*zeta^5 + 105*zeta^3 - 35*zeta^2 + 35*zeta + 140)*q^325 + 1/8*(-3*zeta^5
+ 16*zeta^3 - 3*zeta^2 - 18*zeta + 5)*q^331 + 1/8*(-10*zeta^5 + 65*zeta^3 - 
10*zeta^2 - 95*zeta + 40)*q^337 + 1/8*(23*zeta^5 - 209*zeta^3 + 23*zeta^2 + 
397*zeta - 85)*q^343 + 1/4*(-14*zeta^5 + 91*zeta^3 - 14*zeta^2 - 133*zeta + 
56)*q^349 + 1/4*(-15*zeta^5 + 45*zeta^3 - 15*zeta^2 + 15*zeta + 60)*q^361 + 
1/4*(-91*zeta^5 + 469*zeta^3 - 91*zeta^2 - 497*zeta + 217)*q^364 + 
1/8*(-35*zeta^5 + 105*zeta^3 - 35*zeta^2 + 35*zeta + 140)*q^367 + 
1/8*(-39*zeta^5 + 208*zeta^3 - 39*zeta^2 - 234*zeta + 65)*q^373 + 1/8*(74*zeta^5
- 481*zeta^3 + 74*zeta^2 + 703*zeta - 296)*q^379 + 1/2*(7*zeta^5 - 21*zeta^3 + 
7*zeta^2 - 7*zeta - 28)*q^388 + 1/8*(105*zeta^5 - 560*zeta^3 + 105*zeta^2 + 
630*zeta - 175)*q^397 + 1/2*(10*zeta^5 - 65*zeta^3 + 10*zeta^2 + 95*zeta - 
40)*q^400 + 1/8*(-49*zeta^5 + 147*zeta^3 - 49*zeta^2 + 49*zeta + 196)*q^403 + 
1/8*(7*zeta^5 - 21*zeta^3 + 7*zeta^2 - 7*zeta - 28)*q^409 + 1/4*(-14*zeta^5 + 
91*zeta^3 - 14*zeta^2 - 133*zeta + 56)*q^412 + 1/8*(38*zeta^5 - 247*zeta^3 + 
38*zeta^2 + 361*zeta - 152)*q^421 + 1/4*(77*zeta^5 - 476*zeta^3 + 77*zeta^2 + 
658*zeta - 210)*q^427 + 1/8*(-70*zeta^5 + 455*zeta^3 - 70*zeta^2 - 665*zeta + 
280)*q^433 + 1/4*(-51*zeta^5 + 272*zeta^3 - 51*zeta^2 - 306*zeta + 85)*q^436 + 
1/2*(-21*zeta^5 + 112*zeta^3 - 21*zeta^2 - 126*zeta + 35)*q^439 + (-2*zeta^5 - 
zeta^3 - 2*zeta^2 + 23*zeta + 1)*q^448 + 1/8*(123*zeta^5 - 656*zeta^3 + 
123*zeta^2 + 738*zeta - 205)*q^457 + 1/8*(-46*zeta^5 + 299*zeta^3 - 46*zeta^2 - 
437*zeta + 184)*q^463 + 1/8*(-143*zeta^5 + 737*zeta^3 - 143*zeta^2 - 781*zeta + 
341)*q^469 + 1/8*(-70*zeta^5 + 455*zeta^3 - 70*zeta^2 - 665*zeta + 280)*q^475 + 
1/8*(21*zeta^5 - 112*zeta^3 + 21*zeta^2 + 126*zeta - 35)*q^481 + 1/4*(-22*zeta^5
+ 143*zeta^3 - 22*zeta^2 - 209*zeta + 88)*q^484 + 1/8*(25*zeta^5 - 75*zeta^3 + 
25*zeta^2 - 25*zeta - 100)*q^487 + 1/2*(14*zeta^5 - 91*zeta^3 + 14*zeta^2 + 
133*zeta - 56)*q^496 + 1/8*(-129*zeta^5 + 688*zeta^3 - 129*zeta^2 - 774*zeta + 
215)*q^499 + 1/4*(-19*zeta^5 + 57*zeta^3 - 19*zeta^2 + 19*zeta + 76)*q^508 + 
1/8*(91*zeta^5 - 469*zeta^3 + 91*zeta^2 + 497*zeta - 217)*q^511 + 
1/8*(105*zeta^5 - 560*zeta^3 + 105*zeta^2 + 630*zeta - 175)*q^523 + 
1/8*(23*zeta^5 - 69*zeta^3 + 23*zeta^2 - 23*zeta - 92)*q^529 + 1/4*(14*zeta^5 + 
7*zeta^3 + 14*zeta^2 - 161*zeta - 7)*q^532 + 1/8*(87*zeta^5 - 464*zeta^3 + 
87*zeta^2 + 522*zeta - 145)*q^541 + (10*zeta^5 - 65*zeta^3 + 10*zeta^2 + 95*zeta
- 40)*q^547 + 1/8*(-143*zeta^5 + 884*zeta^3 - 143*zeta^2 - 1222*zeta + 
390)*q^553 + 1/4*(-7*zeta^5 + 21*zeta^3 - 7*zeta^2 + 7*zeta + 28)*q^556 + 
1/8*(70*zeta^5 - 455*zeta^3 + 70*zeta^2 + 665*zeta - 280)*q^559 + 1/8*(31*zeta^5
- 93*zeta^3 + 31*zeta^2 - 31*zeta - 124)*q^571 + 1/8*(-35*zeta^5 + 105*zeta^3 - 
35*zeta^2 + 35*zeta + 140)*q^577 + 1/8*(-98*zeta^5 + 637*zeta^3 - 98*zeta^2 - 
931*zeta + 392)*q^589 + 1/2*(zeta^5 - 3*zeta^3 + zeta^2 - zeta - 4)*q^592 + 
1/8*(98*zeta^5 - 637*zeta^3 + 98*zeta^2 + 931*zeta - 392)*q^601 + (3*zeta^5 - 
16*zeta^3 + 3*zeta^2 + 18*zeta - 5)*q^604 + 1/8*(-147*zeta^5 + 784*zeta^3 - 
147*zeta^2 - 882*zeta + 245)*q^607 + 1/4*(5*zeta^5 - 15*zeta^3 + 5*zeta^2 - 
5*zeta - 20)*q^613 + 1/8*(49*zeta^5 - 147*zeta^3 + 49*zeta^2 - 49*zeta - 
196)*q^619 + 1/8*(75*zeta^5 - 400*zeta^3 + 75*zeta^2 + 450*zeta - 125)*q^625 + 
1/2*(-21*zeta^5 + 112*zeta^3 - 21*zeta^2 - 126*zeta + 35)*q^628 + 
1/2*(-22*zeta^5 + 143*zeta^3 - 22*zeta^2 - 209*zeta + 88)*q^631 + 
1/8*(259*zeta^5 - 1414*zeta^3 + 259*zeta^2 + 1652*zeta - 644)*q^637 + 
1/8*(14*zeta^5 - 91*zeta^3 + 14*zeta^2 + 133*zeta - 56)*q^643 + (4*zeta^5 - 
26*zeta^3 + 4*zeta^2 + 38*zeta - 16)*q^652 + 1/8*(49*zeta^5 - 147*zeta^3 + 
49*zeta^2 - 49*zeta - 196)*q^661 + 1/8*(74*zeta^5 - 481*zeta^3 + 74*zeta^2 + 
703*zeta - 296)*q^673 + (9*zeta^5 - 27*zeta^3 + 9*zeta^2 - 9*zeta - 36)*q^676 + 
1/4*(14*zeta^5 + 7*zeta^3 + 14*zeta^2 - 161*zeta - 7)*q^679 + 1/2*(15*zeta^5 - 
80*zeta^3 + 15*zeta^2 + 90*zeta - 25)*q^688 + 1/8*(-147*zeta^5 + 784*zeta^3 - 
147*zeta^2 - 882*zeta + 245)*q^691 + 1/4*(55*zeta^5 - 340*zeta^3 + 55*zeta^2 + 
470*zeta - 150)*q^700 + 1/8*(-7*zeta^5 + 21*zeta^3 - 7*zeta^2 + 7*zeta + 
28)*q^703 + 1/4*(-33*zeta^5 + 176*zeta^3 - 33*zeta^2 - 198*zeta + 55)*q^709 + 
1/8*(-77*zeta^5 + 476*zeta^3 - 77*zeta^2 - 658*zeta + 210)*q^721 + 
1/4*(-7*zeta^5 + 21*zeta^3 - 7*zeta^2 + 7*zeta + 28)*q^724 + 1/8*(98*zeta^5 - 
637*zeta^3 + 98*zeta^2 + 931*zeta - 392)*q^727 + 1/8*(-21*zeta^5 + 112*zeta^3 - 
21*zeta^2 - 126*zeta + 35)*q^733 + 1/8*(-53*zeta^5 + 159*zeta^3 - 53*zeta^2 + 
53*zeta + 212)*q^739 + 1/8*(123*zeta^5 - 656*zeta^3 + 123*zeta^2 + 738*zeta - 
205)*q^751 + 1/4*(-26*zeta^5 + 169*zeta^3 - 26*zeta^2 - 247*zeta + 104)*q^757 + 
1/8*(-221*zeta^5 + 1139*zeta^3 - 221*zeta^2 - 1207*zeta + 527)*q^763 + 
1/8*(98*zeta^5 - 637*zeta^3 + 98*zeta^2 + 931*zeta - 392)*q^769 + 1/4*(75*zeta^5
- 400*zeta^3 + 75*zeta^2 + 450*zeta - 125)*q^772 + 1/8*(105*zeta^5 - 560*zeta^3 
+ 105*zeta^2 + 630*zeta - 175)*q^775 + 1/2*(17*zeta^5 - 65*zeta^3 + 17*zeta^2 + 
25*zeta - 33)*q^784 + (-7*zeta^5 + 21*zeta^3 - 7*zeta^2 + 7*zeta + 28)*q^787 + 
1/4*(-147*zeta^5 + 784*zeta^3 - 147*zeta^2 - 882*zeta + 245)*q^793 + (21*zeta^5 
- 112*zeta^3 + 21*zeta^2 + 126*zeta - 35)*q^796 + (-14*zeta^5 + 91*zeta^3 - 
14*zeta^2 - 133*zeta + 56)*q^811 + 1/8*(-105*zeta^5 + 560*zeta^3 - 105*zeta^2 - 
630*zeta + 175)*q^817 + 1/2*(13*zeta^5 - 39*zeta^3 + 13*zeta^2 - 13*zeta - 
52)*q^823 + 1/8*(7*zeta^5 - 21*zeta^3 + 7*zeta^2 - 7*zeta - 28)*q^829 + 
(-14*zeta^5 + 91*zeta^3 - 14*zeta^2 - 133*zeta + 56)*q^832 + 1/8*(58*zeta^5 - 
377*zeta^3 + 58*zeta^2 + 551*zeta - 232)*q^841 + (-4*zeta^5 + 12*zeta^3 - 
4*zeta^2 + 4*zeta + 16)*q^844 + 1/8*(-121*zeta^5 + 748*zeta^3 - 121*zeta^2 - 
1034*zeta + 330)*q^847 + 1/8*(-70*zeta^5 + 455*zeta^3 - 70*zeta^2 - 665*zeta + 
280)*q^853 + (21*zeta^5 - 112*zeta^3 + 21*zeta^2 + 126*zeta - 35)*q^859 + 
1/4*(77*zeta^5 - 476*zeta^3 + 77*zeta^2 + 658*zeta - 210)*q^868 + 1/8*(77*zeta^5
- 231*zeta^3 + 77*zeta^2 - 77*zeta - 308)*q^871 + 1/4*(-51*zeta^5 + 272*zeta^3 -
51*zeta^2 - 306*zeta + 85)*q^877 + 1/8*(-94*zeta^5 + 611*zeta^3 - 94*zeta^2 - 
893*zeta + 376)*q^883 + 1/8*(-38*zeta^5 - 19*zeta^3 - 38*zeta^2 + 437*zeta + 
19)*q^889 + (-7*zeta^5 + 21*zeta^3 - 7*zeta^2 + 7*zeta + 28)*q^892 + 
1/8*(-59*zeta^5 + 177*zeta^3 - 59*zeta^2 + 59*zeta + 236)*q^907 + 
1/4*(-14*zeta^5 + 91*zeta^3 - 14*zeta^2 - 133*zeta + 56)*q^916 + 1/8*(-3*zeta^5 
+ 16*zeta^3 - 3*zeta^2 - 18*zeta + 5)*q^919 + 1/8*(-10*zeta^5 + 65*zeta^3 - 
10*zeta^2 - 95*zeta + 40)*q^925 + 1/8*(-119*zeta^5 + 455*zeta^3 - 119*zeta^2 - 
175*zeta + 231)*q^931 + 1/8*(-70*zeta^5 + 455*zeta^3 - 70*zeta^2 - 665*zeta + 
280)*q^937 + 1/8*(-49*zeta^5 + 147*zeta^3 - 49*zeta^2 + 49*zeta + 196)*q^949 + 
1/4*(27*zeta^5 - 144*zeta^3 + 27*zeta^2 + 162*zeta - 45)*q^961 + 1/2*(-21*zeta^5
+ 112*zeta^3 - 21*zeta^2 - 126*zeta + 35)*q^964 + 1/8*(122*zeta^5 - 793*zeta^3 +
122*zeta^2 + 1159*zeta - 488)*q^967 + 1/8*(-14*zeta^5 - 7*zeta^3 - 14*zeta^2 + 
161*zeta + 7)*q^973 + (-7*zeta^5 + 21*zeta^3 - 7*zeta^2 + 7*zeta + 28)*q^976 + 
1/4*(98*zeta^5 - 637*zeta^3 + 98*zeta^2 + 931*zeta - 392)*q^988 + 
1/8*(-17*zeta^5 + 51*zeta^3 - 17*zeta^2 + 17*zeta + 68)*q^991 + 1/8*(49*zeta^5 -
147*zeta^3 + 49*zeta^2 - 49*zeta - 196)*q^997 + 1/8*(38*zeta^5 - 247*zeta^3 + 
38*zeta^2 + 361*zeta - 152)*q^1009 + 1/4*(-14*zeta^5 + 91*zeta^3 - 14*zeta^2 - 
133*zeta + 56)*q^1021 + (-12*zeta^5 + 64*zeta^3 - 12*zeta^2 - 72*zeta + 
20)*q^1024 + 1/8*(273*zeta^5 - 1456*zeta^3 + 273*zeta^2 + 1638*zeta - 
455)*q^1027 + 1/8*(-53*zeta^5 + 159*zeta^3 - 53*zeta^2 + 53*zeta + 212)*q^1033 +
1/4*(2*zeta^5 + zeta^3 + 2*zeta^2 - 23*zeta - 1)*q^1036 + 1/8*(7*zeta^5 - 
21*zeta^3 + 7*zeta^2 - 7*zeta - 28)*q^1039 + 1/8*(-46*zeta^5 + 299*zeta^3 - 
46*zeta^2 - 437*zeta + 184)*q^1051 + 1/2*(13*zeta^5 - 67*zeta^3 + 13*zeta^2 + 
71*zeta - 31)*q^1057 + 1/2*(14*zeta^5 - 91*zeta^3 + 14*zeta^2 + 133*zeta - 
56)*q^1063 + 1/8*(-147*zeta^5 + 784*zeta^3 - 147*zeta^2 - 882*zeta + 245)*q^1069
+ 1/2*(-22*zeta^5 + 143*zeta^3 - 22*zeta^2 - 209*zeta + 88)*q^1072 + 
1/8*(25*zeta^5 - 75*zeta^3 + 25*zeta^2 - 25*zeta - 100)*q^1075 + (-14*zeta^5 + 
91*zeta^3 - 14*zeta^2 - 133*zeta + 56)*q^1084 + 1/8*(-165*zeta^5 + 880*zeta^3 - 
165*zeta^2 - 990*zeta + 275)*q^1087 + 1/8*(-130*zeta^5 + 845*zeta^3 - 130*zeta^2
- 1235*zeta + 520)*q^1093 + 1/4*(-91*zeta^5 + 469*zeta^3 - 91*zeta^2 - 497*zeta 
+ 217)*q^1099 + 1/4*(93*zeta^5 - 496*zeta^3 + 93*zeta^2 + 558*zeta - 155)*q^1108
+ 1/4*(23*zeta^5 - 69*zeta^3 + 23*zeta^2 - 23*zeta - 92)*q^1117 + 
1/8*(-35*zeta^5 + 105*zeta^3 - 35*zeta^2 + 35*zeta + 140)*q^1123 + 
1/8*(87*zeta^5 - 464*zeta^3 + 87*zeta^2 + 522*zeta - 145)*q^1129 + 
1/4*(21*zeta^5 - 112*zeta^3 + 21*zeta^2 + 126*zeta - 35)*q^1132 + (11*zeta^5 - 
68*zeta^3 + 11*zeta^2 + 94*zeta - 30)*q^1141 + 1/8*(-14*zeta^5 + 91*zeta^3 - 
14*zeta^2 - 133*zeta + 56)*q^1147 + 1/8*(-21*zeta^5 + 112*zeta^3 - 21*zeta^2 - 
126*zeta + 35)*q^1153 + 1/4*(-34*zeta^5 + 221*zeta^3 - 34*zeta^2 - 323*zeta + 
136)*q^1156 + 1/4*(49*zeta^5 - 147*zeta^3 + 49*zeta^2 - 49*zeta - 196)*q^1159 + 
1/2*(14*zeta^5 - 91*zeta^3 + 14*zeta^2 + 133*zeta - 56)*q^1168 + (-24*zeta^5 + 
128*zeta^3 - 24*zeta^2 - 144*zeta + 40)*q^1171 + 1/2*(18*zeta^5 + 9*zeta^3 + 
18*zeta^2 - 207*zeta - 9)*q^1183 + 1/8*(-59*zeta^5 + 177*zeta^3 - 59*zeta^2 + 
59*zeta + 236)*q^1201 + 1/4*(65*zeta^5 - 335*zeta^3 + 65*zeta^2 + 355*zeta - 
155)*q^1204 + 1/4*(75*zeta^5 - 400*zeta^3 + 75*zeta^2 + 450*zeta - 125)*q^1213 +
(21*zeta^5 - 112*zeta^3 + 21*zeta^2 + 126*zeta - 35)*q^1216 + 1/8*(-100*zeta^5 +
685*zeta^3 - 100*zeta^2 - 1055*zeta + 295)*q^1225 + 1/4*(35*zeta^5 - 105*zeta^3 
+ 35*zeta^2 - 35*zeta - 140)*q^1228 + 1/8*(98*zeta^5 - 637*zeta^3 + 98*zeta^2 + 
931*zeta - 392)*q^1231 + 1/4*(-105*zeta^5 + 560*zeta^3 - 105*zeta^2 - 630*zeta +
175)*q^1237 + 1/4*(-7*zeta^5 + 21*zeta^3 - 7*zeta^2 + 7*zeta + 28)*q^1249 + 
1/4*(70*zeta^5 - 455*zeta^3 + 70*zeta^2 + 665*zeta - 280)*q^1252 + 
1/4*(98*zeta^5 - 637*zeta^3 + 98*zeta^2 + 931*zeta - 392)*q^1261 + 
1/2*(13*zeta^5 - 39*zeta^3 + 13*zeta^2 - 13*zeta - 52)*q^1264 + 1/8*(-14*zeta^5 
- 7*zeta^3 - 14*zeta^2 + 161*zeta + 7)*q^1267 + 1/8*(154*zeta^5 - 1001*zeta^3 + 
154*zeta^2 + 1463*zeta - 616)*q^1273 + 1/2*(-21*zeta^5 + 112*zeta^3 - 21*zeta^2 
- 126*zeta + 35)*q^1279 + O(q^1281)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_21E1 := Curve(P_Q, [ PolynomialRing(ext<K|Polynomial(K, [1, -8, 
8, 6, -6, -1, 1])> where K is RationalField(), 2) | ]);
