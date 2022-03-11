
    /****************************************************
    Loading this file in magma loads the objects fs_16E1 
    and X_16E1. fs_16E1 is a list of power series which form 
    a basis for the space of cusp forms. X_16E1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | 2, 0, -4, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_16E1 := [Kq | 1/2*(-zeta^2 + 2)*q^4 + (-zeta^2 + 2)*q^20 + 
1/2*(3*zeta^2 - 6)*q^36 + (3*zeta^2 - 6)*q^52 + (-zeta^2 + 2)*q^68 + 1/2*(zeta^2
- 2)*q^100 + (-5*zeta^2 + 10)*q^116 + (-zeta^2 + 2)*q^148 + (-5*zeta^2 + 
10)*q^164 + (3*zeta^2 - 6)*q^180 + 1/2*(7*zeta^2 - 14)*q^196 + (7*zeta^2 - 
14)*q^212 + (-5*zeta^2 + 10)*q^244 + (6*zeta^2 - 12)*q^260 + (3*zeta^2 - 
6)*q^292 + 1/2*(-9*zeta^2 + 18)*q^324 + (-2*zeta^2 + 4)*q^340 + (-5*zeta^2 + 
10)*q^356 + O(q^368)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_16E1 := Curve(P_Q, [ PolynomialRing(ext<K|Polynomial(K, [2, 0, 
-4, 0, 1])> where K is RationalField(), 2) | ]);
