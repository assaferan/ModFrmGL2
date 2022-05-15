
    /****************************************************
    Loading this file in magma loads the objects fs_26A3 
    and X_26A3. fs_26A3 is a list of power series which form 
    a basis for the space of cusp forms. X_26A3 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | -1, -3, 6, 4, -5, -1, 1 
]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_26A3 := [Kq | q^13 + 2*q^65 - 2*q^91 - 3*q^117 - 2*q^143 - 
q^169 + 6*q^221 - 6*q^247 + 8*q^299 - q^325 + 2*q^377 + 10*q^403 - 4*q^455 - 
6*q^481 - 6*q^533 + 4*q^559 - 6*q^585 - 2*q^611 - 3*q^637 + 6*q^689 - 4*q^715 - 
10*q^767 - 2*q^793 + 6*q^819 - 2*q^845 + 10*q^871 + 10*q^923 + 2*q^949 + 
4*q^1001 - 4*q^1027 + 9*q^1053 - 6*q^1079 + 12*q^1105 - 6*q^1157 + 2*q^1183 - 
12*q^1235 + 2*q^1261 + 6*q^1287 - 2*q^1313 - 8*q^1339 + O(q^1378), 1/3*(zeta^5 -
3*zeta^3 - 2*zeta^2 + 3)*q^13 + 1/3*(3*zeta^5 - 12*zeta^3 - 3*zeta^2 + 9*zeta + 
4)*q^26 + 1/3*(-3*zeta^3 + 3*zeta^2 + 9*zeta - 5)*q^52 + 1/3*(-zeta^5 + 3*zeta^3
+ 2*zeta^2 - 3)*q^65 + 1/3*(-8*zeta^5 + 36*zeta^3 + 4*zeta^2 - 36*zeta - 4)*q^91
+ 1/3*(-3*zeta^5 + 15*zeta^3 - 18*zeta + 1)*q^104 + (2*zeta^5 - 9*zeta^3 - 
zeta^2 + 9*zeta + 1)*q^117 + 1/3*(-3*zeta^5 + 12*zeta^3 + 3*zeta^2 - 9*zeta - 
4)*q^130 + 1/3*(4*zeta^5 - 24*zeta^3 + 4*zeta^2 + 36*zeta - 8)*q^143 + 
1/3*(5*zeta^5 - 18*zeta^3 - 7*zeta^2 + 9*zeta + 10)*q^169 + 1/3*(-12*zeta^5 + 
60*zeta^3 - 72*zeta + 4)*q^182 + 1/3*(3*zeta^5 - 12*zeta^3 - 3*zeta^2 + 9*zeta +
4)*q^208 + (-2*zeta^5 + 9*zeta^3 + zeta^2 - 9*zeta - 1)*q^221 + (3*zeta^5 - 
15*zeta^3 + 18*zeta - 1)*q^234 + 1/3*(3*zeta^3 - 3*zeta^2 - 9*zeta + 5)*q^260 + 
1/3*(-12*zeta^3 + 12*zeta^2 + 36*zeta - 20)*q^286 + 1/3*(-4*zeta^5 + 24*zeta^3 -
4*zeta^2 - 36*zeta + 8)*q^299 + 1/3*(-4*zeta^5 + 12*zeta^3 + 8*zeta^2 - 
12)*q^325 + 1/3*(12*zeta^5 - 51*zeta^3 - 9*zeta^2 + 45*zeta + 11)*q^338 + 
1/3*(12*zeta^5 - 48*zeta^3 - 12*zeta^2 + 36*zeta + 16)*q^364 + 1/3*(-zeta^5 + 
6*zeta^3 - zeta^2 - 9*zeta + 2)*q^377 + 1/3*(4*zeta^5 - 12*zeta^3 - 8*zeta^2 + 
12)*q^403 + 1/3*(-3*zeta^3 + 3*zeta^2 + 9*zeta - 5)*q^416 + (-3*zeta^5 + 
15*zeta^3 - 18*zeta + 1)*q^442 + 1/3*(8*zeta^5 - 36*zeta^3 - 4*zeta^2 + 36*zeta 
+ 4)*q^455 + (-3*zeta^5 + 12*zeta^3 + 3*zeta^2 - 9*zeta - 4)*q^468 + (zeta^5 - 
6*zeta^3 + zeta^2 + 9*zeta - 2)*q^481 + 1/3*(3*zeta^5 - 15*zeta^3 + 18*zeta - 
1)*q^520 + (-3*zeta^5 + 18*zeta^3 - 3*zeta^2 - 27*zeta + 6)*q^533 + 
1/3*(16*zeta^5 - 72*zeta^3 - 8*zeta^2 + 72*zeta + 8)*q^559 + 1/3*(-12*zeta^5 + 
60*zeta^3 - 72*zeta + 4)*q^572 + (-2*zeta^5 + 9*zeta^3 + zeta^2 - 9*zeta - 
1)*q^585 + 1/3*(12*zeta^3 - 12*zeta^2 - 36*zeta + 20)*q^598 + 1/3*(-8*zeta^5 + 
24*zeta^3 + 16*zeta^2 - 24)*q^611 + (3*zeta^5 - 18*zeta^3 + 3*zeta^2 + 27*zeta -
6)*q^637 + 1/3*(-12*zeta^5 + 48*zeta^3 + 12*zeta^2 - 36*zeta - 16)*q^650 + 
1/3*(-3*zeta^5 + 3*zeta^3 + 12*zeta^2 + 18*zeta - 19)*q^676 + (-3*zeta^5 + 
9*zeta^3 + 6*zeta^2 - 9)*q^689 + 1/3*(-4*zeta^5 + 24*zeta^3 - 4*zeta^2 - 36*zeta
+ 8)*q^715 + 1/3*(-12*zeta^3 + 12*zeta^2 + 36*zeta - 20)*q^728 + 1/3*(3*zeta^3 -
3*zeta^2 - 9*zeta + 5)*q^754 + 1/3*(8*zeta^5 - 36*zeta^3 - 4*zeta^2 + 36*zeta + 
4)*q^767 + 1/3*(-14*zeta^5 + 63*zeta^3 + 7*zeta^2 - 63*zeta - 7)*q^793 + 
1/3*(12*zeta^5 - 48*zeta^3 - 12*zeta^2 + 36*zeta + 16)*q^806 + (-4*zeta^5 + 
24*zeta^3 - 4*zeta^2 - 36*zeta + 8)*q^819 + 1/3*(-3*zeta^5 + 15*zeta^3 - 18*zeta
+ 1)*q^832 + 1/3*(-5*zeta^5 + 18*zeta^3 + 7*zeta^2 - 9*zeta - 10)*q^845 + 
1/3*(4*zeta^5 - 24*zeta^3 + 4*zeta^2 + 36*zeta - 8)*q^871 + (3*zeta^5 - 
12*zeta^3 - 3*zeta^2 + 9*zeta + 4)*q^884 + 1/3*(12*zeta^5 - 60*zeta^3 + 72*zeta 
- 4)*q^910 + 1/3*(16*zeta^5 - 72*zeta^3 - 8*zeta^2 + 72*zeta + 8)*q^923 + 
(3*zeta^3 - 3*zeta^2 - 9*zeta + 5)*q^936 + 1/3*(11*zeta^5 - 33*zeta^3 - 
22*zeta^2 + 33)*q^949 + (-3*zeta^3 + 3*zeta^2 + 9*zeta - 5)*q^962 + 
1/3*(16*zeta^5 - 48*zeta^3 - 32*zeta^2 + 48)*q^1001 + 1/3*(-4*zeta^5 + 12*zeta^3
+ 8*zeta^2 - 12)*q^1027 + 1/3*(-3*zeta^5 + 12*zeta^3 + 3*zeta^2 - 9*zeta - 
4)*q^1040 + (3*zeta^5 - 18*zeta^3 + 3*zeta^2 + 27*zeta - 6)*q^1053 + (9*zeta^3 -
9*zeta^2 - 27*zeta + 15)*q^1066 + (2*zeta^5 - 9*zeta^3 - zeta^2 + 9*zeta + 
1)*q^1105 + 1/3*(24*zeta^5 - 120*zeta^3 + 144*zeta - 8)*q^1118 + 1/3*(12*zeta^5 
- 48*zeta^3 - 12*zeta^2 + 36*zeta + 16)*q^1144 + (-2*zeta^5 + 12*zeta^3 - 
2*zeta^2 - 18*zeta + 4)*q^1157 + (-3*zeta^5 + 15*zeta^3 - 18*zeta + 1)*q^1170 + 
1/3*(-28*zeta^5 + 132*zeta^3 + 8*zeta^2 - 144*zeta - 4)*q^1183 + 1/3*(12*zeta^5 
- 60*zeta^3 + 72*zeta - 4)*q^1196 + 1/3*(-24*zeta^5 + 96*zeta^3 + 24*zeta^2 - 
72*zeta - 32)*q^1222 + 1/3*(-4*zeta^5 + 18*zeta^3 + 2*zeta^2 - 18*zeta - 
2)*q^1261 + (-9*zeta^3 + 9*zeta^2 + 27*zeta - 15)*q^1274 + (-4*zeta^5 + 
12*zeta^3 + 8*zeta^2 - 12)*q^1287 + 1/3*(12*zeta^3 - 12*zeta^2 - 36*zeta + 
20)*q^1300 + 1/3*(7*zeta^5 - 42*zeta^3 + 7*zeta^2 + 63*zeta - 14)*q^1313 + 
1/3*(-8*zeta^5 + 24*zeta^3 + 16*zeta^2 - 24)*q^1339 + 1/3*(-9*zeta^5 + 48*zeta^3
- 3*zeta^2 - 63*zeta + 8)*q^1352 + O(q^1378), 1/27*(5*zeta^5 - 24*zeta^3 - 
zeta^2 + 27*zeta)*q^13 + 1/27*(6*zeta^5 - 33*zeta^3 + 3*zeta^2 + 45*zeta - 
7)*q^26 + 1/27*(-9*zeta^5 + 39*zeta^3 + 6*zeta^2 - 36*zeta - 7)*q^52 + 
1/27*(-5*zeta^5 + 24*zeta^3 + zeta^2 - 27*zeta)*q^65 + 1/27*(-4*zeta^5 + 
36*zeta^3 - 16*zeta^2 - 72*zeta + 28)*q^91 + 1/27*(3*zeta^5 - 6*zeta^3 - 
9*zeta^2 - 9*zeta + 14)*q^104 + 1/9*(zeta^5 - 9*zeta^3 + 4*zeta^2 + 18*zeta - 
7)*q^117 + 1/27*(-6*zeta^5 + 33*zeta^3 - 3*zeta^2 - 45*zeta + 7)*q^130 + 
1/27*(-16*zeta^5 + 60*zeta^3 + 20*zeta^2 - 36*zeta - 28)*q^143 + 1/27*(16*zeta^5
- 81*zeta^3 + zeta^2 + 99*zeta - 7)*q^169 + 1/27*(12*zeta^5 - 24*zeta^3 - 
36*zeta^2 - 36*zeta + 56)*q^182 + 1/27*(6*zeta^5 - 33*zeta^3 + 3*zeta^2 + 
45*zeta - 7)*q^208 + 1/9*(-zeta^5 + 9*zeta^3 - 4*zeta^2 - 18*zeta + 7)*q^221 + 
1/9*(-3*zeta^5 + 6*zeta^3 + 9*zeta^2 + 9*zeta - 14)*q^234 + 1/27*(9*zeta^5 - 
39*zeta^3 - 6*zeta^2 + 36*zeta + 7)*q^260 + 1/27*(-36*zeta^5 + 156*zeta^3 + 
24*zeta^2 - 144*zeta - 28)*q^286 + 1/27*(16*zeta^5 - 60*zeta^3 - 20*zeta^2 + 
36*zeta + 28)*q^299 + 1/27*(-20*zeta^5 + 96*zeta^3 + 4*zeta^2 - 108*zeta)*q^325 
+ 1/27*(15*zeta^5 - 93*zeta^3 + 18*zeta^2 + 144*zeta - 35)*q^338 + 
1/27*(24*zeta^5 - 132*zeta^3 + 12*zeta^2 + 180*zeta - 28)*q^364 + 1/27*(4*zeta^5
- 15*zeta^3 - 5*zeta^2 + 9*zeta + 7)*q^377 + 1/27*(20*zeta^5 - 96*zeta^3 - 
4*zeta^2 + 108*zeta)*q^403 + 1/27*(-9*zeta^5 + 39*zeta^3 + 6*zeta^2 - 36*zeta - 
7)*q^416 + 1/9*(3*zeta^5 - 6*zeta^3 - 9*zeta^2 - 9*zeta + 14)*q^442 + 
1/27*(4*zeta^5 - 36*zeta^3 + 16*zeta^2 + 72*zeta - 28)*q^455 + 1/9*(-6*zeta^5 + 
33*zeta^3 - 3*zeta^2 - 45*zeta + 7)*q^468 + 1/9*(-4*zeta^5 + 15*zeta^3 + 
5*zeta^2 - 9*zeta - 7)*q^481 + 1/27*(-3*zeta^5 + 6*zeta^3 + 9*zeta^2 + 9*zeta - 
14)*q^520 + 1/3*(4*zeta^5 - 15*zeta^3 - 5*zeta^2 + 9*zeta + 7)*q^533 + 
1/27*(8*zeta^5 - 72*zeta^3 + 32*zeta^2 + 144*zeta - 56)*q^559 + 1/27*(12*zeta^5 
- 24*zeta^3 - 36*zeta^2 - 36*zeta + 56)*q^572 + 1/9*(-zeta^5 + 9*zeta^3 - 
4*zeta^2 - 18*zeta + 7)*q^585 + 1/27*(36*zeta^5 - 156*zeta^3 - 24*zeta^2 + 
144*zeta + 28)*q^598 + 1/27*(-40*zeta^5 + 192*zeta^3 + 8*zeta^2 - 
216*zeta)*q^611 + 1/3*(-4*zeta^5 + 15*zeta^3 + 5*zeta^2 - 9*zeta - 7)*q^637 + 
1/27*(-24*zeta^5 + 132*zeta^3 - 12*zeta^2 - 180*zeta + 28)*q^650 + 
1/27*(-33*zeta^5 + 150*zeta^3 + 15*zeta^2 - 153*zeta - 14)*q^676 + 
1/3*(-5*zeta^5 + 24*zeta^3 + zeta^2 - 27*zeta)*q^689 + 1/27*(16*zeta^5 - 
60*zeta^3 - 20*zeta^2 + 36*zeta + 28)*q^715 + 1/27*(-36*zeta^5 + 156*zeta^3 + 
24*zeta^2 - 144*zeta - 28)*q^728 + 1/27*(9*zeta^5 - 39*zeta^3 - 6*zeta^2 + 
36*zeta + 7)*q^754 + 1/27*(4*zeta^5 - 36*zeta^3 + 16*zeta^2 + 72*zeta - 
28)*q^767 + 1/27*(-7*zeta^5 + 63*zeta^3 - 28*zeta^2 - 126*zeta + 49)*q^793 + 
1/27*(24*zeta^5 - 132*zeta^3 + 12*zeta^2 + 180*zeta - 28)*q^806 + 1/9*(16*zeta^5
- 60*zeta^3 - 20*zeta^2 + 36*zeta + 28)*q^819 + 1/27*(3*zeta^5 - 6*zeta^3 - 
9*zeta^2 - 9*zeta + 14)*q^832 + 1/27*(-16*zeta^5 + 81*zeta^3 - zeta^2 - 99*zeta 
+ 7)*q^845 + 1/27*(-16*zeta^5 + 60*zeta^3 + 20*zeta^2 - 36*zeta - 28)*q^871 + 
1/9*(6*zeta^5 - 33*zeta^3 + 3*zeta^2 + 45*zeta - 7)*q^884 + 1/27*(-12*zeta^5 + 
24*zeta^3 + 36*zeta^2 + 36*zeta - 56)*q^910 + 1/27*(8*zeta^5 - 72*zeta^3 + 
32*zeta^2 + 144*zeta - 56)*q^923 + 1/9*(9*zeta^5 - 39*zeta^3 - 6*zeta^2 + 
36*zeta + 7)*q^936 + 1/27*(55*zeta^5 - 264*zeta^3 - 11*zeta^2 + 297*zeta)*q^949 
+ 1/9*(-9*zeta^5 + 39*zeta^3 + 6*zeta^2 - 36*zeta - 7)*q^962 + 1/27*(80*zeta^5 -
384*zeta^3 - 16*zeta^2 + 432*zeta)*q^1001 + 1/27*(-20*zeta^5 + 96*zeta^3 + 
4*zeta^2 - 108*zeta)*q^1027 + 1/27*(-6*zeta^5 + 33*zeta^3 - 3*zeta^2 - 45*zeta +
7)*q^1040 + 1/3*(-4*zeta^5 + 15*zeta^3 + 5*zeta^2 - 9*zeta - 7)*q^1053 + 
1/3*(9*zeta^5 - 39*zeta^3 - 6*zeta^2 + 36*zeta + 7)*q^1066 + 1/9*(zeta^5 - 
9*zeta^3 + 4*zeta^2 + 18*zeta - 7)*q^1105 + 1/27*(-24*zeta^5 + 48*zeta^3 + 
72*zeta^2 + 72*zeta - 112)*q^1118 + 1/27*(24*zeta^5 - 132*zeta^3 + 12*zeta^2 + 
180*zeta - 28)*q^1144 + 1/9*(8*zeta^5 - 30*zeta^3 - 10*zeta^2 + 18*zeta + 
14)*q^1157 + 1/9*(3*zeta^5 - 6*zeta^3 - 9*zeta^2 - 9*zeta + 14)*q^1170 + 
1/27*(4*zeta^5 + 48*zeta^3 - 68*zeta^2 - 180*zeta + 112)*q^1183 + 
1/27*(-12*zeta^5 + 24*zeta^3 + 36*zeta^2 + 36*zeta - 56)*q^1196 + 
1/27*(-48*zeta^5 + 264*zeta^3 - 24*zeta^2 - 360*zeta + 56)*q^1222 + 
1/27*(-2*zeta^5 + 18*zeta^3 - 8*zeta^2 - 36*zeta + 14)*q^1261 + 1/3*(-9*zeta^5 +
39*zeta^3 + 6*zeta^2 - 36*zeta - 7)*q^1274 + 1/9*(-20*zeta^5 + 96*zeta^3 + 
4*zeta^2 - 108*zeta)*q^1287 + 1/27*(36*zeta^5 - 156*zeta^3 - 24*zeta^2 + 
144*zeta + 28)*q^1300 + 1/27*(-28*zeta^5 + 105*zeta^3 + 35*zeta^2 - 63*zeta - 
49)*q^1313 + 1/27*(-40*zeta^5 + 192*zeta^3 + 8*zeta^2 - 216*zeta)*q^1339 + 
1/27*(18*zeta^5 - 57*zeta^3 - 33*zeta^2 + 9*zeta + 49)*q^1352 + O(q^1378)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_26A3 := Curve(P_Q, [ PolynomialRing(RationalField(), 3) |
x[1]^4 - 21/26*x[1]^2*x[2]^2 + 27/26*x[1]^2*x[2]*x[3] - 243/26*x[1]^2*x[3]^2 - 
415/676*x[1]*x[2]^3 - 1647/676*x[1]*x[2]^2*x[3] + 4131/169*x[1]*x[2]*x[3]^2 - 
729/676*x[1]*x[3]^3 - 147/676*x[2]^4 + 189/338*x[2]^3*x[3] - 
3645/676*x[2]^2*x[3]^2 + 2187/338*x[2]*x[3]^3 - 19683/676*x[3]^4
]);
