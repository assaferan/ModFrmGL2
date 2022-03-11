
    /****************************************************
    Loading this file in magma loads the objects fs_12D3 
    and X_12D3. fs_12D3 is a list of power series which form 
    a basis for the space of cusp forms. X_12D3 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, \[ 1, 0, -1, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_12D3 := [Kq | zeta^3*q^2 + 2*zeta^3*q^6 - 2*zeta^3*q^10 - 
2*zeta^3*q^18 + 4*zeta^3*q^22 - 2*zeta^3*q^26 - 4*zeta^3*q^30 + 2*zeta^3*q^34 - 
4*zeta^3*q^38 - 8*zeta^3*q^46 - zeta^3*q^50 + 2*zeta^3*q^54 + 6*zeta^3*q^58 + 
8*zeta^3*q^62 + 8*zeta^3*q^66 + 6*zeta^3*q^74 - 4*zeta^3*q^78 - 6*zeta^3*q^82 + 
4*zeta^3*q^86 + 4*zeta^3*q^90 - 7*zeta^3*q^98 + 4*zeta^3*q^102 - 2*zeta^3*q^106 
- 8*zeta^3*q^110 - 8*zeta^3*q^114 + 4*zeta^3*q^118 - 2*zeta^3*q^122 + 
4*zeta^3*q^130 - 4*zeta^3*q^134 - 16*zeta^3*q^138 + 8*zeta^3*q^142 + 
10*zeta^3*q^146 - 2*zeta^3*q^150 - 8*zeta^3*q^158 - 2*zeta^3*q^162 - 
4*zeta^3*q^166 - 4*zeta^3*q^170 + 12*zeta^3*q^174 - 6*zeta^3*q^178 + 
16*zeta^3*q^186 + 8*zeta^3*q^190 + 2*zeta^3*q^194 - 8*zeta^3*q^198 - 
18*zeta^3*q^202 + 16*zeta^3*q^206 - 12*zeta^3*q^214 - 2*zeta^3*q^218 + 
12*zeta^3*q^222 + 18*zeta^3*q^226 + 16*zeta^3*q^230 + 4*zeta^3*q^234 + 
5*zeta^3*q^242 - 12*zeta^3*q^246 + 12*zeta^3*q^250 - 8*zeta^3*q^254 + 
8*zeta^3*q^258 - 4*zeta^3*q^262 - 4*zeta^3*q^270 - 6*zeta^3*q^274 - 
12*zeta^3*q^278 - 8*zeta^3*q^286 - 12*zeta^3*q^290 - 14*zeta^3*q^294 + 
14*zeta^3*q^298 - 16*zeta^3*q^302 - 4*zeta^3*q^306 - 16*zeta^3*q^310 - 
2*zeta^3*q^314 - 4*zeta^3*q^318 + 12*zeta^3*q^326 - 16*zeta^3*q^330 + 
24*zeta^3*q^334 - 9*zeta^3*q^338 + 8*zeta^3*q^342 + 6*zeta^3*q^346 + 
8*zeta^3*q^354 + 12*zeta^3*q^358 + 6*zeta^3*q^362 - 4*zeta^3*q^366 - 
12*zeta^3*q^370 + 8*zeta^3*q^374 + 2*zeta^3*q^386 + 8*zeta^3*q^390 - 
18*zeta^3*q^394 + 16*zeta^3*q^398 - 8*zeta^3*q^402 + 12*zeta^3*q^410 + 
16*zeta^3*q^414 - 16*zeta^3*q^418 - 20*zeta^3*q^422 + 16*zeta^3*q^426 - 
8*zeta^3*q^430 + 20*zeta^3*q^438 - 4*zeta^3*q^442 - 8*zeta^3*q^446 + 
2*zeta^3*q^450 + 12*zeta^3*q^454 + 22*zeta^3*q^458 + 10*zeta^3*q^466 - 
16*zeta^3*q^474 - 16*zeta^3*q^478 + 18*zeta^3*q^482 + 2*zeta^3*q^486 + 
14*zeta^3*q^490 + 8*zeta^3*q^494 - 8*zeta^3*q^498 + 20*zeta^3*q^502 - 
32*zeta^3*q^506 - 8*zeta^3*q^510 + 2*zeta^3*q^514 + O(q^516), zeta^3*q^2 - 
4*zeta^3*q^6 - 2*zeta^3*q^10 + 4*zeta^3*q^18 + 4*zeta^3*q^22 - 2*zeta^3*q^26 + 
8*zeta^3*q^30 + 2*zeta^3*q^34 - 4*zeta^3*q^38 - 8*zeta^3*q^46 - zeta^3*q^50 - 
4*zeta^3*q^54 + 6*zeta^3*q^58 + 8*zeta^3*q^62 - 16*zeta^3*q^66 + 6*zeta^3*q^74 +
8*zeta^3*q^78 - 6*zeta^3*q^82 + 4*zeta^3*q^86 - 8*zeta^3*q^90 - 7*zeta^3*q^98 - 
8*zeta^3*q^102 - 2*zeta^3*q^106 - 8*zeta^3*q^110 + 16*zeta^3*q^114 + 
4*zeta^3*q^118 - 2*zeta^3*q^122 + 4*zeta^3*q^130 - 4*zeta^3*q^134 + 
32*zeta^3*q^138 + 8*zeta^3*q^142 + 10*zeta^3*q^146 + 4*zeta^3*q^150 - 
8*zeta^3*q^158 + 4*zeta^3*q^162 - 4*zeta^3*q^166 - 4*zeta^3*q^170 - 
24*zeta^3*q^174 - 6*zeta^3*q^178 - 32*zeta^3*q^186 + 8*zeta^3*q^190 + 
2*zeta^3*q^194 + 16*zeta^3*q^198 - 18*zeta^3*q^202 + 16*zeta^3*q^206 - 
12*zeta^3*q^214 - 2*zeta^3*q^218 - 24*zeta^3*q^222 + 18*zeta^3*q^226 + 
16*zeta^3*q^230 - 8*zeta^3*q^234 + 5*zeta^3*q^242 + 24*zeta^3*q^246 + 
12*zeta^3*q^250 - 8*zeta^3*q^254 - 16*zeta^3*q^258 - 4*zeta^3*q^262 + 
8*zeta^3*q^270 - 6*zeta^3*q^274 - 12*zeta^3*q^278 - 8*zeta^3*q^286 - 
12*zeta^3*q^290 + 28*zeta^3*q^294 + 14*zeta^3*q^298 - 16*zeta^3*q^302 + 
8*zeta^3*q^306 - 16*zeta^3*q^310 - 2*zeta^3*q^314 + 8*zeta^3*q^318 + 
12*zeta^3*q^326 + 32*zeta^3*q^330 + 24*zeta^3*q^334 - 9*zeta^3*q^338 - 
16*zeta^3*q^342 + 6*zeta^3*q^346 - 16*zeta^3*q^354 + 12*zeta^3*q^358 + 
6*zeta^3*q^362 + 8*zeta^3*q^366 - 12*zeta^3*q^370 + 8*zeta^3*q^374 + 
2*zeta^3*q^386 - 16*zeta^3*q^390 - 18*zeta^3*q^394 + 16*zeta^3*q^398 + 
16*zeta^3*q^402 + 12*zeta^3*q^410 - 32*zeta^3*q^414 - 16*zeta^3*q^418 - 
20*zeta^3*q^422 - 32*zeta^3*q^426 - 8*zeta^3*q^430 - 40*zeta^3*q^438 - 
4*zeta^3*q^442 - 8*zeta^3*q^446 - 4*zeta^3*q^450 + 12*zeta^3*q^454 + 
22*zeta^3*q^458 + 10*zeta^3*q^466 + 32*zeta^3*q^474 - 16*zeta^3*q^478 + 
18*zeta^3*q^482 - 4*zeta^3*q^486 + 14*zeta^3*q^490 + 8*zeta^3*q^494 + 
16*zeta^3*q^498 + 20*zeta^3*q^502 - 32*zeta^3*q^506 + 16*zeta^3*q^510 + 
2*zeta^3*q^514 + O(q^516), zeta^3*q^2 + 2*zeta^3*q^10 - 4*zeta^3*q^22 - 
2*zeta^3*q^26 - 2*zeta^3*q^34 - 4*zeta^3*q^38 + 8*zeta^3*q^46 - zeta^3*q^50 - 
6*zeta^3*q^58 + 8*zeta^3*q^62 + 6*zeta^3*q^74 + 6*zeta^3*q^82 + 4*zeta^3*q^86 - 
7*zeta^3*q^98 + 2*zeta^3*q^106 - 8*zeta^3*q^110 - 4*zeta^3*q^118 - 
2*zeta^3*q^122 - 4*zeta^3*q^130 - 4*zeta^3*q^134 - 8*zeta^3*q^142 + 
10*zeta^3*q^146 - 8*zeta^3*q^158 + 4*zeta^3*q^166 - 4*zeta^3*q^170 + 
6*zeta^3*q^178 - 8*zeta^3*q^190 + 2*zeta^3*q^194 + 18*zeta^3*q^202 + 
16*zeta^3*q^206 + 12*zeta^3*q^214 - 2*zeta^3*q^218 - 18*zeta^3*q^226 + 
16*zeta^3*q^230 + 5*zeta^3*q^242 - 12*zeta^3*q^250 - 8*zeta^3*q^254 + 
4*zeta^3*q^262 + 6*zeta^3*q^274 - 12*zeta^3*q^278 + 8*zeta^3*q^286 - 
12*zeta^3*q^290 - 14*zeta^3*q^298 - 16*zeta^3*q^302 + 16*zeta^3*q^310 - 
2*zeta^3*q^314 + 12*zeta^3*q^326 - 24*zeta^3*q^334 - 9*zeta^3*q^338 - 
6*zeta^3*q^346 - 12*zeta^3*q^358 + 6*zeta^3*q^362 + 12*zeta^3*q^370 + 
8*zeta^3*q^374 + 2*zeta^3*q^386 + 18*zeta^3*q^394 + 16*zeta^3*q^398 + 
12*zeta^3*q^410 + 16*zeta^3*q^418 - 20*zeta^3*q^422 + 8*zeta^3*q^430 + 
4*zeta^3*q^442 - 8*zeta^3*q^446 - 12*zeta^3*q^454 + 22*zeta^3*q^458 - 
10*zeta^3*q^466 + 16*zeta^3*q^478 + 18*zeta^3*q^482 - 14*zeta^3*q^490 + 
8*zeta^3*q^494 - 20*zeta^3*q^502 - 32*zeta^3*q^506 - 2*zeta^3*q^514 + O(q^516)] 
;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_12D3 := Curve(P_Q, [ PolynomialRing(CyclotomicField(12), 3) |
x[1]^2 + 1/2*x[2]^2 - 3/2*x[3]^2
]);
