
    /****************************************************
    Loading this file in magma loads the objects fs_21D3 
    and X_21D3. fs_21D3 is a list of power series which form 
    a basis for the space of cusp forms. X_21D3 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | 1, -8, 8, 6, -6, -1, 1 
]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_21D3 := [Kq | q^21 - q^42 + q^63 - q^84 - 2*q^105 - q^126 - 
q^147 + 3*q^168 + q^189 + 2*q^210 + 4*q^231 - q^252 - 2*q^273 + q^294 - 2*q^315 
- q^336 - 6*q^357 - q^378 + 4*q^399 + 2*q^420 - q^441 - 4*q^462 + 3*q^504 - 
q^525 + 2*q^546 + q^567 + q^588 - 2*q^609 + 2*q^630 - 5*q^672 + 4*q^693 + 
6*q^714 + 2*q^735 - q^756 + 6*q^777 - 4*q^798 - 2*q^819 - 6*q^840 + 2*q^861 + 
q^882 - 4*q^903 - 4*q^924 - 2*q^945 - q^1008 + q^1029 + q^1050 - 6*q^1071 + 
2*q^1092 + 6*q^1113 - q^1134 - 8*q^1155 - 3*q^1176 + 4*q^1197 + 2*q^1218 + 
12*q^1239 + O(q^1260), 1/16*(-9*zeta^5 + 30*zeta^3 - 9*zeta^2 + 16)*q^21 + 
1/8*(24*zeta^5 - 129*zeta^3 + 24*zeta^2 + 147*zeta - 59)*q^42 + 1/16*(-15*zeta^5
+ 99*zeta^3 - 15*zeta^2 - 147*zeta + 43)*q^63 + 1/8*(-15*zeta^5 + 99*zeta^3 - 
15*zeta^2 - 147*zeta + 43)*q^84 + 1/8*(-24*zeta^5 + 129*zeta^3 - 24*zeta^2 - 
147*zeta + 59)*q^105 + 1/8*(-9*zeta^5 + 30*zeta^3 - 9*zeta^2 + 16)*q^126 + 
1/16*(42*zeta^5 - 189*zeta^3 + 42*zeta^2 + 147*zeta - 91)*q^147 + 
1/16*(24*zeta^5 - 129*zeta^3 + 24*zeta^2 + 147*zeta - 59)*q^189 + 1/4*(15*zeta^5
- 99*zeta^3 + 15*zeta^2 + 147*zeta - 43)*q^210 + 1/8*(15*zeta^5 - 99*zeta^3 + 
15*zeta^2 + 147*zeta - 43)*q^231 + 1/8*(24*zeta^5 - 129*zeta^3 + 24*zeta^2 + 
147*zeta - 59)*q^252 + 1/16*(-9*zeta^5 + 30*zeta^3 - 9*zeta^2 + 16)*q^273 + 
1/8*(-63*zeta^5 + 357*zeta^3 - 63*zeta^2 - 441*zeta + 161)*q^294 + 1/8*(9*zeta^5
- 30*zeta^3 + 9*zeta^2 - 16)*q^315 + 1/4*(-24*zeta^5 + 129*zeta^3 - 24*zeta^2 - 
147*zeta + 59)*q^336 + 1/8*(-15*zeta^5 + 99*zeta^3 - 15*zeta^2 - 147*zeta + 
43)*q^378 + 1/16*(24*zeta^5 - 129*zeta^3 + 24*zeta^2 + 147*zeta - 59)*q^399 + 
1/4*(9*zeta^5 - 30*zeta^3 + 9*zeta^2 - 16)*q^420 + 1/16*(21*zeta^5 - 168*zeta^3 
+ 21*zeta^2 + 294*zeta - 70)*q^441 + 1/4*(9*zeta^5 - 30*zeta^3 + 9*zeta^2 - 
16)*q^462 + 1/16*(15*zeta^5 - 99*zeta^3 + 15*zeta^2 + 147*zeta - 43)*q^525 + 
1/8*(24*zeta^5 - 129*zeta^3 + 24*zeta^2 + 147*zeta - 59)*q^546 + 1/16*(-9*zeta^5
+ 30*zeta^3 - 9*zeta^2 + 16)*q^567 + 1/8*(21*zeta^5 - 168*zeta^3 + 21*zeta^2 + 
294*zeta - 70)*q^588 + 1/4*(-9*zeta^5 + 30*zeta^3 - 9*zeta^2 + 16)*q^609 + 
1/4*(-24*zeta^5 + 129*zeta^3 - 24*zeta^2 - 147*zeta + 59)*q^630 + 
1/16*(-135*zeta^5 + 891*zeta^3 - 135*zeta^2 - 1323*zeta + 387)*q^651 + 
1/2*(15*zeta^5 - 99*zeta^3 + 15*zeta^2 + 147*zeta - 43)*q^672 + 1/8*(-24*zeta^5 
+ 129*zeta^3 - 24*zeta^2 - 147*zeta + 59)*q^693 + 1/8*(63*zeta^5 - 357*zeta^3 + 
63*zeta^2 + 441*zeta - 161)*q^735 + 1/8*(-9*zeta^5 + 30*zeta^3 - 9*zeta^2 + 
16)*q^756 + 1/16*(72*zeta^5 - 387*zeta^3 + 72*zeta^2 + 441*zeta - 177)*q^777 + 
1/8*(-15*zeta^5 + 99*zeta^3 - 15*zeta^2 - 147*zeta + 43)*q^798 + 
1/16*(-15*zeta^5 + 99*zeta^3 - 15*zeta^2 - 147*zeta + 43)*q^819 + 1/8*(45*zeta^5
- 150*zeta^3 + 45*zeta^2 - 80)*q^861 + 1/8*(42*zeta^5 - 189*zeta^3 + 42*zeta^2 +
147*zeta - 91)*q^882 + 1/16*(-45*zeta^5 + 150*zeta^3 - 45*zeta^2 + 80)*q^903 + 
1/4*(-24*zeta^5 + 129*zeta^3 - 24*zeta^2 - 147*zeta + 59)*q^924 + 1/8*(15*zeta^5
- 99*zeta^3 + 15*zeta^2 + 147*zeta - 43)*q^945 + 1/8*(-72*zeta^5 + 387*zeta^3 - 
72*zeta^2 - 441*zeta + 177)*q^987 + 1/4*(9*zeta^5 - 30*zeta^3 + 9*zeta^2 - 
16)*q^1008 + 1/16*(-147*zeta^5 + 735*zeta^3 - 147*zeta^2 - 735*zeta + 
343)*q^1029 + 1/8*(9*zeta^5 - 30*zeta^3 + 9*zeta^2 - 16)*q^1050 + 
1/8*(-15*zeta^5 + 99*zeta^3 - 15*zeta^2 - 147*zeta + 43)*q^1092 + 
1/4*(-45*zeta^5 + 297*zeta^3 - 45*zeta^2 - 441*zeta + 129)*q^1113 + 
1/8*(24*zeta^5 - 129*zeta^3 + 24*zeta^2 + 147*zeta - 59)*q^1134 + 1/4*(-9*zeta^5
+ 30*zeta^3 - 9*zeta^2 + 16)*q^1155 + 1/16*(-9*zeta^5 + 30*zeta^3 - 9*zeta^2 + 
16)*q^1197 + 1/2*(24*zeta^5 - 129*zeta^3 + 24*zeta^2 + 147*zeta - 59)*q^1218 + 
1/4*(45*zeta^5 - 297*zeta^3 + 45*zeta^2 + 441*zeta - 129)*q^1239 + O(q^1260), 
1/16*(-zeta^5 - 2*zeta^3 - zeta^2 + 16*zeta)*q^21 + 1/8*(8*zeta^5 - 41*zeta^3 + 
8*zeta^2 + 43*zeta - 19)*q^42 + 1/16*(-7*zeta^5 + 43*zeta^3 - 7*zeta^2 - 59*zeta
+ 19)*q^63 + 1/8*(-7*zeta^5 + 43*zeta^3 - 7*zeta^2 - 59*zeta + 19)*q^84 + 
1/8*(-8*zeta^5 + 41*zeta^3 - 8*zeta^2 - 43*zeta + 19)*q^105 + 1/8*(-zeta^5 - 
2*zeta^3 - zeta^2 + 16*zeta)*q^126 + 1/16*(10*zeta^5 - 37*zeta^3 + 10*zeta^2 + 
11*zeta - 19)*q^147 + 1/16*(8*zeta^5 - 41*zeta^3 + 8*zeta^2 + 43*zeta - 
19)*q^189 + 1/4*(7*zeta^5 - 43*zeta^3 + 7*zeta^2 + 59*zeta - 19)*q^210 + 
1/8*(7*zeta^5 - 43*zeta^3 + 7*zeta^2 + 59*zeta - 19)*q^231 + 1/8*(8*zeta^5 - 
41*zeta^3 + 8*zeta^2 + 43*zeta - 19)*q^252 + 1/16*(-zeta^5 - 2*zeta^3 - zeta^2 +
16*zeta)*q^273 + 1/8*(-23*zeta^5 + 125*zeta^3 - 23*zeta^2 - 145*zeta + 57)*q^294
+ 1/8*(zeta^5 + 2*zeta^3 + zeta^2 - 16*zeta)*q^315 + 1/4*(-8*zeta^5 + 41*zeta^3 
- 8*zeta^2 - 43*zeta + 19)*q^336 + 1/8*(-7*zeta^5 + 43*zeta^3 - 7*zeta^2 - 
59*zeta + 19)*q^378 + 1/16*(8*zeta^5 - 41*zeta^3 + 8*zeta^2 + 43*zeta - 
19)*q^399 + 1/4*(zeta^5 + 2*zeta^3 + zeta^2 - 16*zeta)*q^420 + 1/16*(13*zeta^5 -
88*zeta^3 + 13*zeta^2 + 134*zeta - 38)*q^441 + 1/4*(zeta^5 + 2*zeta^3 + zeta^2 -
16*zeta)*q^462 + 1/16*(7*zeta^5 - 43*zeta^3 + 7*zeta^2 + 59*zeta - 19)*q^525 + 
1/8*(8*zeta^5 - 41*zeta^3 + 8*zeta^2 + 43*zeta - 19)*q^546 + 1/16*(-zeta^5 - 
2*zeta^3 - zeta^2 + 16*zeta)*q^567 + 1/8*(13*zeta^5 - 88*zeta^3 + 13*zeta^2 + 
134*zeta - 38)*q^588 + 1/4*(-zeta^5 - 2*zeta^3 - zeta^2 + 16*zeta)*q^609 + 
1/4*(-8*zeta^5 + 41*zeta^3 - 8*zeta^2 - 43*zeta + 19)*q^630 + 1/16*(-63*zeta^5 +
387*zeta^3 - 63*zeta^2 - 531*zeta + 171)*q^651 + 1/2*(7*zeta^5 - 43*zeta^3 + 
7*zeta^2 + 59*zeta - 19)*q^672 + 1/8*(-8*zeta^5 + 41*zeta^3 - 8*zeta^2 - 43*zeta
+ 19)*q^693 + 1/8*(23*zeta^5 - 125*zeta^3 + 23*zeta^2 + 145*zeta - 57)*q^735 + 
1/8*(-zeta^5 - 2*zeta^3 - zeta^2 + 16*zeta)*q^756 + 1/16*(24*zeta^5 - 123*zeta^3
+ 24*zeta^2 + 129*zeta - 57)*q^777 + 1/8*(-7*zeta^5 + 43*zeta^3 - 7*zeta^2 - 
59*zeta + 19)*q^798 + 1/16*(-7*zeta^5 + 43*zeta^3 - 7*zeta^2 - 59*zeta + 
19)*q^819 + 1/8*(5*zeta^5 + 10*zeta^3 + 5*zeta^2 - 80*zeta)*q^861 + 
1/8*(10*zeta^5 - 37*zeta^3 + 10*zeta^2 + 11*zeta - 19)*q^882 + 1/16*(-5*zeta^5 -
10*zeta^3 - 5*zeta^2 + 80*zeta)*q^903 + 1/4*(-8*zeta^5 + 41*zeta^3 - 8*zeta^2 - 
43*zeta + 19)*q^924 + 1/8*(7*zeta^5 - 43*zeta^3 + 7*zeta^2 + 59*zeta - 19)*q^945
+ 1/8*(-24*zeta^5 + 123*zeta^3 - 24*zeta^2 - 129*zeta + 57)*q^987 + 1/4*(zeta^5 
+ 2*zeta^3 + zeta^2 - 16*zeta)*q^1008 + 1/16*(-43*zeta^5 + 199*zeta^3 - 
43*zeta^2 - 167*zeta + 95)*q^1029 + 1/8*(zeta^5 + 2*zeta^3 + zeta^2 - 
16*zeta)*q^1050 + 1/8*(-7*zeta^5 + 43*zeta^3 - 7*zeta^2 - 59*zeta + 19)*q^1092 +
1/4*(-21*zeta^5 + 129*zeta^3 - 21*zeta^2 - 177*zeta + 57)*q^1113 + 1/8*(8*zeta^5
- 41*zeta^3 + 8*zeta^2 + 43*zeta - 19)*q^1134 + 1/4*(-zeta^5 - 2*zeta^3 - zeta^2
+ 16*zeta)*q^1155 + 1/16*(-zeta^5 - 2*zeta^3 - zeta^2 + 16*zeta)*q^1197 + 
1/2*(8*zeta^5 - 41*zeta^3 + 8*zeta^2 + 43*zeta - 19)*q^1218 + 1/4*(21*zeta^5 - 
129*zeta^3 + 21*zeta^2 + 177*zeta - 57)*q^1239 + O(q^1260)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_21D3 := Curve(P_Q, [ PolynomialRing(ext<K|Polynomial(K, [1, -8, 
8, 6, -6, -1, 1])> where K is RationalField(), 3) |
x[1]^2 - 19/7*x[2]^2 + 102/7*x[2]*x[3] - 21*x[3]^2
]);
