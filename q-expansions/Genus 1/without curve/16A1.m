
    /****************************************************
    Loading this file in magma loads the objects fs_16A1 
    and X_16A1. fs_16A1 is a list of power series which form 
    a basis for the space of cusp forms. X_16A1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | 2, 0, -4, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_16A1 := [Kq | q^8 - 2*q^40 - 3*q^72 + 6*q^104 + 2*q^136 - q^200
- 10*q^232 - 2*q^296 + 10*q^328 + 6*q^360 + O(q^368)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_16A1 := Curve(P_Q, [ PolynomialRing(ext<K|Polynomial(K, [2, 0, 
-4, 0, 1])> where K is RationalField(), 2) | ]);
