
    /****************************************************
    Loading this file in magma loads the objects fs_6D1 
    and X_6D1. fs_6D1 is a list of power series which form 
    a basis for the space of cusp forms. X_6D1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, \[ 1, -1, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_6D1 := [Kq | (-2*zeta + 1)*q + (8*zeta - 4)*q^7 + (-4*zeta + 
2)*q^13 + (-16*zeta + 8)*q^19 + (10*zeta - 5)*q^25 + (8*zeta - 4)*q^31 + 
(20*zeta - 10)*q^37 + (-16*zeta + 8)*q^43 + (-18*zeta + 9)*q^49 + (-28*zeta + 
14)*q^61 + (32*zeta - 16)*q^67 + (20*zeta - 10)*q^73 + (8*zeta - 4)*q^79 + 
(16*zeta - 8)*q^91 + (-28*zeta + 14)*q^97 + (-40*zeta + 20)*q^103 + (-4*zeta + 
2)*q^109 + (22*zeta - 11)*q^121 + O(q^126)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_6D1 := Curve(P_Q, [ PolynomialRing(CyclotomicField(6), 2) | ]);
