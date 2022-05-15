
    /****************************************************
    Loading this file in magma loads the objects fs_20H3 
    and X_20H3. fs_20H3 is a list of power series which form 
    a basis for the space of cusp forms. X_20H3 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, \[ 1, 0, -1, 0, 1, 0, -1, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_20H3 := [Kq | zeta^5*q^20 - 2*zeta^5*q^60 - zeta^5*q^100 + 
2*zeta^5*q^140 + zeta^5*q^180 + 2*zeta^5*q^260 + 2*zeta^5*q^300 - 6*zeta^5*q^340
- 4*zeta^5*q^380 - 4*zeta^5*q^420 + 6*zeta^5*q^460 + zeta^5*q^500 + 
4*zeta^5*q^540 + 6*zeta^5*q^580 - 4*zeta^5*q^620 - 2*zeta^5*q^700 + 
2*zeta^5*q^740 - 4*zeta^5*q^780 + 6*zeta^5*q^820 - 10*zeta^5*q^860 + O(q^900), 
1/2*(2*zeta^7 - zeta^5 + 2*zeta^3)*q^10 + 1/2*(-2*zeta^7 + zeta^5 - 
2*zeta^3)*q^50 + 1/2*(-2*zeta^7 + zeta^5 - 2*zeta^3)*q^90 + (-4*zeta^7 + 
2*zeta^5 - 4*zeta^3)*q^110 + (4*zeta^7 - 2*zeta^5 + 4*zeta^3)*q^150 + (4*zeta^7 
- 2*zeta^5 + 4*zeta^3)*q^190 + (4*zeta^7 - 2*zeta^5 + 4*zeta^3)*q^210 + 
1/2*(-6*zeta^7 + 3*zeta^5 - 6*zeta^3)*q^250 + (-2*zeta^7 + zeta^5 - 
2*zeta^3)*q^290 + (-4*zeta^7 + 2*zeta^5 - 4*zeta^3)*q^350 + (-8*zeta^7 + 
4*zeta^5 - 8*zeta^3)*q^390 + (2*zeta^7 - zeta^5 + 2*zeta^3)*q^410 + 
1/2*(2*zeta^7 - zeta^5 + 2*zeta^3)*q^450 + 1/2*(6*zeta^7 - 3*zeta^5 + 
6*zeta^3)*q^490 + (4*zeta^7 - 2*zeta^5 + 4*zeta^3)*q^550 + (12*zeta^7 - 6*zeta^5
+ 12*zeta^3)*q^590 + (-10*zeta^7 + 5*zeta^5 - 10*zeta^3)*q^610 + (8*zeta^7 - 
4*zeta^5 + 8*zeta^3)*q^650 + (4*zeta^7 - 2*zeta^5 + 4*zeta^3)*q^690 + (8*zeta^7 
- 4*zeta^5 + 8*zeta^3)*q^710 + (-8*zeta^7 + 4*zeta^5 - 8*zeta^3)*q^750 + 
(-16*zeta^7 + 8*zeta^5 - 16*zeta^3)*q^790 + 1/2*(-22*zeta^7 + 11*zeta^5 - 
22*zeta^3)*q^810 + (-6*zeta^7 + 3*zeta^5 - 6*zeta^3)*q^890 + O(q^900), 
1/2*(2*zeta^7 - zeta^5 + 2*zeta^3)*q^30 + 1/2*(-2*zeta^7 + zeta^5 - 
2*zeta^3)*q^50 + 1/2*(-2*zeta^7 + zeta^5 - 2*zeta^3)*q^70 + (2*zeta^7 - zeta^5 +
2*zeta^3)*q^130 + 1/2*(-2*zeta^7 + zeta^5 - 2*zeta^3)*q^150 + 1/2*(-2*zeta^7 + 
zeta^5 - 2*zeta^3)*q^230 + (2*zeta^7 - zeta^5 + 2*zeta^3)*q^250 + (2*zeta^7 - 
zeta^5 + 2*zeta^3)*q^270 + (-4*zeta^7 + 2*zeta^5 - 4*zeta^3)*q^330 + 
1/2*(2*zeta^7 - zeta^5 + 2*zeta^3)*q^350 + (-2*zeta^7 + zeta^5 - 2*zeta^3)*q^370
+ 1/2*(-6*zeta^7 + 3*zeta^5 - 6*zeta^3)*q^430 + 1/2*(2*zeta^7 - zeta^5 + 
2*zeta^3)*q^450 + 1/2*(6*zeta^7 - 3*zeta^5 + 6*zeta^3)*q^470 + (-2*zeta^7 + 
zeta^5 - 2*zeta^3)*q^530 + (4*zeta^7 - 2*zeta^5 + 4*zeta^3)*q^550 + (4*zeta^7 - 
2*zeta^5 + 4*zeta^3)*q^570 + 1/2*(2*zeta^7 - zeta^5 + 2*zeta^3)*q^630 + 
(-2*zeta^7 + zeta^5 - 2*zeta^3)*q^650 + 1/2*(-14*zeta^7 + 7*zeta^5 - 
14*zeta^3)*q^670 + (4*zeta^7 - 2*zeta^5 + 4*zeta^3)*q^730 + 1/2*(-6*zeta^7 + 
3*zeta^5 - 6*zeta^3)*q^750 + (4*zeta^7 - 2*zeta^5 + 4*zeta^3)*q^770 + 
1/2*(2*zeta^7 - zeta^5 + 2*zeta^3)*q^830 + (-2*zeta^7 + zeta^5 - 2*zeta^3)*q^870
+ O(q^900)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_20H3 := Curve(P_Q, [ PolynomialRing(CyclotomicField(20), 3) |
x[1]^2 - 4/5*x[2]*x[3] - 4/5*x[3]^2
]);
