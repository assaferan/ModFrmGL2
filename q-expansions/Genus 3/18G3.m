
    /****************************************************
    Loading this file in magma loads the objects fs_18G3 
    and X_18G3. fs_18G3 is a list of power series which form 
    a basis for the space of cusp forms. X_18G3 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | -1, -3, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_18G3 := [Kq | q^9 - 4*q^63 + 2*q^117 + 8*q^171 - 5*q^225 - 
4*q^279 - 10*q^333 + 8*q^387 + 9*q^441 + 14*q^549 - 16*q^603 - 10*q^657 - 
4*q^711 + O(q^810), 1/2*(-zeta^2 + 2)*q^9 + 1/2*(-zeta^2 + 2*zeta + 2)*q^27 + 
1/2*(3*zeta^2 - 3*zeta - 6)*q^45 - 1/2*zeta*q^63 + 1/2*(3*zeta^2 - 6)*q^81 + 
3/2*zeta*q^99 + 1/2*(-zeta^2 + zeta + 2)*q^117 + 1/2*(-3*zeta^2 - 3*zeta + 
6)*q^135 + (-3*zeta^2 + 6)*q^153 + (2*zeta^2 - 4)*q^171 + 1/2*(-2*zeta^2 + zeta 
+ 4)*q^189 + 1/2*(-3*zeta^2 + 3*zeta + 6)*q^207 + 2*zeta*q^225 + 1/2*(3*zeta^2 -
6*zeta - 6)*q^243 + 3/2*zeta*q^261 + 1/2*(5*zeta^2 - 5*zeta - 10)*q^279 + 
1/2*(6*zeta^2 - 3*zeta - 12)*q^297 + 1/2*(3*zeta^2 - 6)*q^315 + (-zeta^2 + 
2)*q^333 + 1/2*(zeta^2 + zeta - 2)*q^351 + 1/2*(3*zeta^2 - 3*zeta - 6)*q^369 - 
1/2*zeta*q^387 + 1/2*(-9*zeta^2 + 9*zeta + 18)*q^405 - 9/2*zeta*q^423 + 
(-3*zeta^2 + 3*zeta + 6)*q^441 + (-3*zeta^2 + 6*zeta + 6)*q^459 + (3*zeta^2 - 
6)*q^477 + 1/2*(-9*zeta^2 + 18)*q^495 + (2*zeta^2 - 4*zeta - 4)*q^513 + 
1/2*(-3*zeta^2 + 3*zeta + 6)*q^531 - 13/2*zeta*q^549 + 3/2*zeta*q^567 - 
3/2*zeta*q^585 + 1/2*(-7*zeta^2 + 7*zeta + 14)*q^603 + 1/2*(3*zeta^2 + 3*zeta - 
6)*q^621 + (6*zeta^2 - 12)*q^639 + (5*zeta^2 - 10)*q^657 + (4*zeta^2 - 2*zeta - 
8)*q^675 + 1/2*(-3*zeta^2 + 3*zeta + 6)*q^693 + 11/2*zeta*q^711 + 1/2*(-9*zeta^2
+ 18)*q^729 - 9/2*zeta*q^747 + (9*zeta^2 - 9*zeta - 18)*q^765 + 1/2*(6*zeta^2 - 
3*zeta - 12)*q^783 + (-3*zeta^2 + 6)*q^801 + O(q^810), zeta*q^9 + (2*zeta^2 - 
zeta - 4)*q^27 + (-3*zeta^2 + 6)*q^45 + (-zeta^2 + zeta + 2)*q^63 - 3*zeta*q^81 
+ (3*zeta^2 - 3*zeta - 6)*q^99 + (zeta^2 - 2)*q^117 + (-3*zeta^2 + 6*zeta + 
6)*q^135 + 6*zeta*q^153 - 4*zeta*q^171 + (zeta^2 + zeta - 2)*q^189 + (3*zeta^2 -
6)*q^207 + (4*zeta^2 - 4*zeta - 8)*q^225 + (-6*zeta^2 + 3*zeta + 12)*q^243 + 
(3*zeta^2 - 3*zeta - 6)*q^261 + (-5*zeta^2 + 10)*q^279 + (-3*zeta^2 - 3*zeta + 
6)*q^297 - 3*zeta*q^315 + 2*zeta*q^333 + (zeta^2 - 2*zeta - 2)*q^351 + 
(-3*zeta^2 + 6)*q^369 + (-zeta^2 + zeta + 2)*q^387 + (9*zeta^2 - 18)*q^405 + 
(-9*zeta^2 + 9*zeta + 18)*q^423 + (6*zeta^2 - 12)*q^441 + (12*zeta^2 - 6*zeta - 
24)*q^459 - 6*zeta*q^477 + 9*zeta*q^495 + (-8*zeta^2 + 4*zeta + 16)*q^513 + 
(3*zeta^2 - 6)*q^531 + (-13*zeta^2 + 13*zeta + 26)*q^549 + (3*zeta^2 - 3*zeta - 
6)*q^567 + (-3*zeta^2 + 3*zeta + 6)*q^585 + (7*zeta^2 - 14)*q^603 + (3*zeta^2 - 
6*zeta - 6)*q^621 - 12*zeta*q^639 - 10*zeta*q^657 + (-4*zeta^2 - 4*zeta + 
8)*q^675 + (3*zeta^2 - 6)*q^693 + (11*zeta^2 - 11*zeta - 22)*q^711 + 
9*zeta*q^729 + (-9*zeta^2 + 9*zeta + 18)*q^747 + (-18*zeta^2 + 36)*q^765 + 
(-3*zeta^2 - 3*zeta + 6)*q^783 + 6*zeta*q^801 + O(q^810)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_18G3 := Curve(P_Q, [ PolynomialRing(ext<K|Polynomial(K, [-1, -3,
0, 1])> where K is RationalField(), 3) |
x[1]^2 - 4/3*x[2]^2 - 2/3*x[2]*x[3] - 1/3*x[3]^2
]);
