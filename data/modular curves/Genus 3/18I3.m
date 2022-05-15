
    /****************************************************
    Loading this file in magma loads the objects fs_18I3 
    and X_18I3. fs_18I3 is a list of power series which form 
    a basis for the space of cusp forms. X_18I3 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | -1, -3, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_18I3 := [Kq | q^9 - 4*q^63 + 2*q^117 + 8*q^171 - 5*q^225 - 
4*q^279 - 10*q^333 + 8*q^387 + 9*q^441 + 14*q^549 - 16*q^603 - 10*q^657 - 
4*q^711 + O(q^810), 1/2*(-zeta^2 + 2)*q^9 + 1/2*(-2*zeta^2 + zeta + 4)*q^18 + 
1/2*(2*zeta^2 - zeta - 4)*q^27 + 1/2*(zeta^2 + zeta - 2)*q^36 + 1/2*(3*zeta^2 - 
3*zeta - 6)*q^54 + zeta*q^63 + 1/2*(zeta^2 - 2*zeta - 2)*q^72 + 1/2*(-3*zeta^2 +
3*zeta + 6)*q^81 - 3/2*zeta*q^99 + 1/2*(-3*zeta^2 + 6)*q^108 + (zeta^2 - zeta - 
2)*q^117 + (zeta^2 + zeta - 2)*q^126 + 1/2*(-2*zeta^2 + zeta + 4)*q^144 + 
1/2*(3*zeta^2 - 6)*q^153 + 1/2*(-3*zeta^2 + 6*zeta + 6)*q^162 + 1/2*(zeta^2 - 
2)*q^171 + (-zeta^2 - zeta + 2)*q^189 + 1/2*(-3*zeta^2 - 3*zeta + 6)*q^198 + 
(-3*zeta^2 + 3*zeta + 6)*q^207 + 3/2*zeta*q^216 - 5/2*zeta*q^225 + (zeta^2 - 
2*zeta - 2)*q^234 + 1/2*(3*zeta^2 - 6*zeta - 6)*q^243 + (zeta^2 - 2*zeta - 
2)*q^252 + 3*zeta*q^261 + (-2*zeta^2 + 2*zeta + 4)*q^279 + 1/2*(zeta^2 + zeta - 
2)*q^288 + 1/2*(3*zeta^2 + 3*zeta - 6)*q^297 + 1/2*(6*zeta^2 - 3*zeta - 
12)*q^306 + 1/2*(6*zeta^2 - 3*zeta - 12)*q^324 + (2*zeta^2 - 4)*q^333 + 
1/2*(2*zeta^2 - zeta - 4)*q^342 + (-zeta^2 + 2*zeta + 2)*q^351 + 1/2*(9*zeta^2 -
9*zeta - 18)*q^369 + (-3*zeta^2 + 6)*q^378 - 1/2*zeta*q^387 + 1/2*(-3*zeta^2 + 
6*zeta + 6)*q^396 + (-3*zeta^2 + 6*zeta + 6)*q^414 - 3*zeta*q^423 + 
1/2*(3*zeta^2 - 3*zeta - 6)*q^432 + 1/2*(-3*zeta^2 + 3*zeta + 6)*q^441 + 
1/2*(-5*zeta^2 - 5*zeta + 10)*q^450 + 1/2*(-6*zeta^2 + 3*zeta + 12)*q^459 + 
(-2*zeta^2 + zeta + 4)*q^468 + (-6*zeta^2 + 12)*q^477 - 9/2*zeta*q^486 + 
(-2*zeta^2 + zeta + 4)*q^504 + 1/2*(-2*zeta^2 + zeta + 4)*q^513 + (3*zeta^2 + 
3*zeta - 6)*q^522 + 1/2*(3*zeta^2 - 3*zeta - 6)*q^531 + 4*zeta*q^549 + 
(-2*zeta^2 + 4*zeta + 4)*q^558 + (3*zeta^2 - 6)*q^567 + 1/2*(zeta^2 - 2*zeta - 
2)*q^576 + 1/2*(9*zeta^2 - 18)*q^594 + 1/2*(5*zeta^2 - 5*zeta - 10)*q^603 + 
1/2*(-3*zeta^2 - 3*zeta + 6)*q^612 + (3*zeta^2 - 6*zeta - 6)*q^621 + (6*zeta^2 -
12)*q^639 + 1/2*(-3*zeta^2 - 3*zeta + 6)*q^648 + 1/2*(-11*zeta^2 + 22)*q^657 + 
(4*zeta^2 - 2*zeta - 8)*q^666 + 1/2*(5*zeta^2 + 5*zeta - 10)*q^675 + 
1/2*(-zeta^2 - zeta + 2)*q^684 + (-3*zeta^2 + 3*zeta + 6)*q^693 + 3*zeta*q^702 -
2*zeta*q^711 + 9/2*zeta*q^729 + 1/2*(9*zeta^2 - 18*zeta - 18)*q^738 + 
6*zeta*q^747 + 3*zeta*q^756 + 1/2*(-zeta^2 - zeta + 2)*q^774 + (-3*zeta^2 - 
3*zeta + 6)*q^783 + 1/2*(6*zeta^2 - 3*zeta - 12)*q^792 + (-3*zeta^2 + 6)*q^801 +
O(q^810), zeta*q^9 + (zeta^2 + zeta - 2)*q^18 + (-zeta^2 - zeta + 2)*q^27 + 
(zeta^2 - 2*zeta - 2)*q^36 + (-3*zeta^2 + 6)*q^54 + (2*zeta^2 - 2*zeta - 4)*q^63
+ (-2*zeta^2 + zeta + 4)*q^72 + (3*zeta^2 - 6)*q^81 + (-3*zeta^2 + 3*zeta + 
6)*q^99 + 3*zeta*q^108 + (-2*zeta^2 + 4)*q^117 + (2*zeta^2 - 4*zeta - 4)*q^126 +
(zeta^2 + zeta - 2)*q^144 - 3*zeta*q^153 + (6*zeta^2 - 3*zeta - 12)*q^162 - 
zeta*q^171 + (-2*zeta^2 + 4*zeta + 4)*q^189 + (-3*zeta^2 + 6*zeta + 6)*q^198 + 
(6*zeta^2 - 12)*q^207 + (3*zeta^2 - 3*zeta - 6)*q^216 + (-5*zeta^2 + 5*zeta + 
10)*q^225 + (-4*zeta^2 + 2*zeta + 8)*q^234 + (-6*zeta^2 + 3*zeta + 12)*q^243 + 
(-4*zeta^2 + 2*zeta + 8)*q^252 + (6*zeta^2 - 6*zeta - 12)*q^261 + (4*zeta^2 - 
8)*q^279 + (zeta^2 - 2*zeta - 2)*q^288 + (3*zeta^2 - 6*zeta - 6)*q^297 + 
(-3*zeta^2 - 3*zeta + 6)*q^306 + (-3*zeta^2 - 3*zeta + 6)*q^324 - 4*zeta*q^333 +
(-zeta^2 - zeta + 2)*q^342 + (4*zeta^2 - 2*zeta - 8)*q^351 + (-9*zeta^2 + 
18)*q^369 + 6*zeta*q^378 + (-zeta^2 + zeta + 2)*q^387 + (6*zeta^2 - 3*zeta - 
12)*q^396 + (12*zeta^2 - 6*zeta - 24)*q^414 + (-6*zeta^2 + 6*zeta + 12)*q^423 + 
(-3*zeta^2 + 6)*q^432 + (3*zeta^2 - 6)*q^441 + (-5*zeta^2 + 10*zeta + 10)*q^450 
+ (3*zeta^2 + 3*zeta - 6)*q^459 + (2*zeta^2 + 2*zeta - 4)*q^468 + 12*zeta*q^477 
+ (-9*zeta^2 + 9*zeta + 18)*q^486 + (2*zeta^2 + 2*zeta - 4)*q^504 + (zeta^2 + 
zeta - 2)*q^513 + (6*zeta^2 - 12*zeta - 12)*q^522 + (-3*zeta^2 + 6)*q^531 + 
(8*zeta^2 - 8*zeta - 16)*q^549 + (8*zeta^2 - 4*zeta - 16)*q^558 - 6*zeta*q^567 +
(-2*zeta^2 + zeta + 4)*q^576 - 9*zeta*q^594 + (-5*zeta^2 + 10)*q^603 + 
(-3*zeta^2 + 6*zeta + 6)*q^612 + (-12*zeta^2 + 6*zeta + 24)*q^621 - 
12*zeta*q^639 + (-3*zeta^2 + 6*zeta + 6)*q^648 + 11*zeta*q^657 + (-4*zeta^2 - 
4*zeta + 8)*q^666 + (5*zeta^2 - 10*zeta - 10)*q^675 + (-zeta^2 + 2*zeta + 
2)*q^684 + (6*zeta^2 - 12)*q^693 + (6*zeta^2 - 6*zeta - 12)*q^702 + (-4*zeta^2 +
4*zeta + 8)*q^711 + (9*zeta^2 - 9*zeta - 18)*q^729 + (-18*zeta^2 + 9*zeta + 
36)*q^738 + (12*zeta^2 - 12*zeta - 24)*q^747 + (6*zeta^2 - 6*zeta - 12)*q^756 + 
(-zeta^2 + 2*zeta + 2)*q^774 + (-6*zeta^2 + 12*zeta + 12)*q^783 + (-3*zeta^2 - 
3*zeta + 6)*q^792 + 6*zeta*q^801 + O(q^810)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_18I3 := Curve(P_Q, [ PolynomialRing(RationalField(), 3) |
x[1]^4 - 8/3*x[1]^2*x[2]^2 - 4/3*x[1]^2*x[2]*x[3] - 2/3*x[1]^2*x[3]^2 + 
4/3*x[1]*x[2]^3 - 2*x[1]*x[2]^2*x[3] - 2*x[1]*x[2]*x[3]^2 - 1/6*x[1]*x[3]^3 - 
8/9*x[2]^4 - 8/9*x[2]^3*x[3] - 2/3*x[2]^2*x[3]^2 - 2/9*x[2]*x[3]^3 - 1/18*x[3]^4
]);
