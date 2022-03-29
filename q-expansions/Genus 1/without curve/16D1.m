
    /****************************************************
    Loading this file in magma loads the objects fs_16D1 
    and X_16D1. fs_16D1 is a list of power series which form 
    a basis for the space of cusp forms. X_16D1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | 2, 0, -4, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_16D1 := [Kq | q^2 + 2*q^6 + 2*q^10 - 4*q^14 + q^18 - 2*q^22 + 
2*q^26 + 4*q^30 - 2*q^34 + 2*q^38 - 8*q^42 + 4*q^46 - q^50 - 4*q^54 - 6*q^58 - 
4*q^66 - 8*q^70 + 10*q^74 + 4*q^78 - 6*q^82 + 6*q^86 + 2*q^90 - 8*q^94 + 9*q^98 
- 4*q^102 - 6*q^106 - 4*q^110 + 4*q^114 + 14*q^118 + 2*q^122 - 4*q^126 + 4*q^130
+ 10*q^134 + 8*q^138 + 12*q^142 + 14*q^146 - 2*q^150 + 8*q^154 - 8*q^158 - 
11*q^162 - 6*q^166 - 4*q^170 - 12*q^174 - 2*q^178 - 8*q^182 + 4*q^190 - 2*q^194 
- 2*q^198 - 6*q^202 - 4*q^206 - 16*q^210 - 2*q^214 - 6*q^218 + 20*q^222 + 
2*q^226 + 8*q^230 + 2*q^234 + 8*q^238 - 7*q^242 - 12*q^246 - 12*q^250 + 16*q^254
+ 12*q^258 - 6*q^262 - 8*q^266 - 8*q^270 + 10*q^274 - 10*q^278 - 16*q^282 - 
4*q^286 - 12*q^290 + 18*q^294 + 18*q^298 + 4*q^302 - 2*q^306 + 18*q^314 - 
12*q^318 - 16*q^322 + 2*q^326 - 8*q^330 - 20*q^334 - 9*q^338 + 2*q^342 + 
18*q^346 + 4*q^350 + 28*q^354 - 6*q^358 + 2*q^362 + 4*q^366 + O(q^368)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_16D1 := Curve(P_Q, [ PolynomialRing(ext<K|Polynomial(K, [2, 0, 
-4, 0, 1])> where K is RationalField(), 2) | ]);
