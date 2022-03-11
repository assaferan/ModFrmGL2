
    /****************************************************
    Loading this file in magma loads the objects fs_15D1 
    and X_15D1. fs_15D1 is a list of power series which form 
    a basis for the space of cusp forms. X_15D1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | 1, 4, -4, -1, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_15D1 := [Kq | 1/3*(-zeta^3 + 3*zeta)*q + 1/3*(2*zeta^3 - 
6*zeta)*q^4 + 1/3*(-5*zeta^3 + 15*zeta - 5)*q^7 + 1/3*(-5*zeta^3 + 15*zeta - 
5)*q^13 + 1/3*(-4*zeta^3 + 12*zeta)*q^16 + 1/3*(zeta^3 - 3*zeta)*q^19 + 
1/3*(10*zeta^3 - 30*zeta + 10)*q^28 + 1/3*(7*zeta^3 - 21*zeta)*q^31 + 
1/3*(10*zeta^3 - 30*zeta + 10)*q^37 + 1/3*(-5*zeta^3 + 15*zeta - 5)*q^43 + 
(-6*zeta^3 + 18*zeta)*q^49 + 1/3*(10*zeta^3 - 30*zeta + 10)*q^52 + 
1/3*(13*zeta^3 - 39*zeta)*q^61 + 1/3*(8*zeta^3 - 24*zeta)*q^64 + 1/3*(-5*zeta^3 
+ 15*zeta - 5)*q^67 + 1/3*(10*zeta^3 - 30*zeta + 10)*q^73 + 1/3*(-2*zeta^3 + 
6*zeta)*q^76 + 1/3*(4*zeta^3 - 12*zeta)*q^79 + 1/3*(-25*zeta^3 + 75*zeta)*q^91 +
1/3*(-5*zeta^3 + 15*zeta - 5)*q^97 + 1/3*(-20*zeta^3 + 60*zeta - 20)*q^103 + 
1/3*(19*zeta^3 - 57*zeta)*q^109 + 1/3*(-20*zeta^3 + 60*zeta - 20)*q^112 + 
1/3*(11*zeta^3 - 33*zeta)*q^121 + 1/3*(-14*zeta^3 + 42*zeta)*q^124 + 
1/3*(-20*zeta^3 + 60*zeta - 20)*q^127 + 1/3*(5*zeta^3 - 15*zeta + 5)*q^133 + 
1/3*(16*zeta^3 - 48*zeta)*q^139 + 1/3*(-20*zeta^3 + 60*zeta - 20)*q^148 + 
1/3*(-23*zeta^3 + 69*zeta)*q^151 + 1/3*(25*zeta^3 - 75*zeta + 25)*q^157 + 
1/3*(25*zeta^3 - 75*zeta + 25)*q^163 + (-4*zeta^3 + 12*zeta)*q^169 + 
1/3*(10*zeta^3 - 30*zeta + 10)*q^172 + 1/3*(7*zeta^3 - 21*zeta)*q^181 + 
1/3*(25*zeta^3 - 75*zeta + 25)*q^193 + (12*zeta^3 - 36*zeta)*q^196 + 
1/3*(-11*zeta^3 + 33*zeta)*q^199 + 1/3*(-20*zeta^3 + 60*zeta - 20)*q^208 + 
1/3*(13*zeta^3 - 39*zeta)*q^211 + 1/3*(35*zeta^3 - 105*zeta + 35)*q^217 + 
1/3*(-5*zeta^3 + 15*zeta - 5)*q^223 + 1/3*(-29*zeta^3 + 87*zeta)*q^229 + 
1/3*(-17*zeta^3 + 51*zeta)*q^241 + 1/3*(-26*zeta^3 + 78*zeta)*q^244 + 
1/3*(5*zeta^3 - 15*zeta + 5)*q^247 + 1/3*(-16*zeta^3 + 48*zeta)*q^256 + 
1/3*(50*zeta^3 - 150*zeta)*q^259 + 1/3*(10*zeta^3 - 30*zeta + 10)*q^268 + 
1/3*(28*zeta^3 - 84*zeta)*q^271 + 1/3*(-5*zeta^3 + 15*zeta - 5)*q^277 + 
1/3*(25*zeta^3 - 75*zeta + 25)*q^283 + 1/3*(17*zeta^3 - 51*zeta)*q^289 + 
1/3*(-20*zeta^3 + 60*zeta - 20)*q^292 + 1/3*(-25*zeta^3 + 75*zeta)*q^301 + 
1/3*(4*zeta^3 - 12*zeta)*q^304 + 1/3*(-35*zeta^3 + 105*zeta - 35)*q^307 + 
1/3*(-35*zeta^3 + 105*zeta - 35)*q^313 + 1/3*(-8*zeta^3 + 24*zeta)*q^316 + 
1/3*(-32*zeta^3 + 96*zeta)*q^331 + 1/3*(-5*zeta^3 + 15*zeta - 5)*q^337 + 
1/3*(-55*zeta^3 + 165*zeta - 55)*q^343 + 1/3*(-14*zeta^3 + 42*zeta)*q^349 + 
(6*zeta^3 - 18*zeta)*q^361 + 1/3*(50*zeta^3 - 150*zeta)*q^364 + 1/3*(-35*zeta^3 
+ 105*zeta - 35)*q^367 + 1/3*(25*zeta^3 - 75*zeta + 25)*q^373 + 1/3*(-29*zeta^3 
+ 87*zeta)*q^379 + 1/3*(10*zeta^3 - 30*zeta + 10)*q^388 + 1/3*(-35*zeta^3 + 
105*zeta - 35)*q^397 + 1/3*(35*zeta^3 - 105*zeta + 35)*q^403 + 1/3*(31*zeta^3 - 
93*zeta)*q^409 + 1/3*(40*zeta^3 - 120*zeta + 40)*q^412 + 1/3*(22*zeta^3 - 
66*zeta)*q^421 + 1/3*(65*zeta^3 - 195*zeta + 65)*q^427 + 1/3*(-35*zeta^3 + 
105*zeta - 35)*q^433 + O(q^435)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_15D1 := Curve(P_Q, [ PolynomialRing(ext<K|Polynomial(K, [1, 4, 
-4, -1, 1])> where K is RationalField(), 2) | ]);
