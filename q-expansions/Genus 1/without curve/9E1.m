
    /****************************************************
    Loading this file in magma loads the objects fs_9E1 
    and X_9E1. fs_9E1 is a list of power series which form 
    a basis for the space of cusp forms. X_9E1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | 1, -3, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_9E1 := [Kq | 1/2*(-zeta^2 + 2)*q + zeta*q^4 + 1/2*(-zeta^2 - 
zeta + 2)*q^7 - 5/2*zeta*q^13 + (2*zeta^2 + 2*zeta - 4)*q^16 + 1/2*(7*zeta^2 - 
14)*q^19 + 1/2*(-5*zeta^2 - 5*zeta + 10)*q^25 + (-zeta^2 + 2)*q^28 + 2*zeta*q^31
+ 1/2*(-11*zeta^2 + 22)*q^37 + (4*zeta^2 + 4*zeta - 8)*q^43 + 3*zeta*q^49 + 
(-5*zeta^2 - 5*zeta + 10)*q^52 + 1/2*(-zeta^2 - zeta + 2)*q^61 + (4*zeta^2 - 
8)*q^64 - 5/2*zeta*q^67 + 1/2*(7*zeta^2 - 14)*q^73 - 7*zeta*q^76 + 
1/2*(17*zeta^2 + 17*zeta - 34)*q^79 + 1/2*(5*zeta^2 - 10)*q^91 + 1/2*(-19*zeta^2
- 19*zeta + 38)*q^97 + (-5*zeta^2 + 10)*q^100 + 13/2*zeta*q^103 + (-zeta^2 + 
2)*q^109 + 2*zeta*q^112 + 11/2*zeta*q^121 + (4*zeta^2 + 4*zeta - 8)*q^124 + 
(-10*zeta^2 + 20)*q^127 + 1/2*(7*zeta^2 + 7*zeta - 14)*q^133 - 23/2*zeta*q^139 +
11*zeta*q^148 + 1/2*(-19*zeta^2 - 19*zeta + 38)*q^151 - 7*zeta*q^157 + 
1/2*(25*zeta^2 - 50)*q^163 + (6*zeta^2 + 6*zeta - 12)*q^169 + (8*zeta^2 - 
16)*q^172 - 5/2*zeta*q^175 + 1/2*(7*zeta^2 - 14)*q^181 - 23/2*zeta*q^193 + 
(6*zeta^2 + 6*zeta - 12)*q^196 + 1/2*(-11*zeta^2 + 22)*q^199 + (-10*zeta^2 + 
20)*q^208 + 13/2*zeta*q^211 + (-2*zeta^2 + 4)*q^217 + (-14*zeta^2 - 14*zeta + 
28)*q^223 + 11*zeta*q^229 + 1/2*(17*zeta^2 + 17*zeta - 34)*q^241 + (-zeta^2 + 
2)*q^244 + 35/2*zeta*q^247 - 8*zeta*q^256 + 1/2*(-11*zeta^2 - 11*zeta + 
22)*q^259 + (-5*zeta^2 - 5*zeta + 10)*q^268 + 1/2*(-29*zeta^2 + 58)*q^271 + 
(13*zeta^2 + 13*zeta - 26)*q^277 - 16*zeta*q^283 + 1/2*(17*zeta^2 - 34)*q^289 - 
7*zeta*q^292 + 4*zeta*q^301 + (-14*zeta^2 - 14*zeta + 28)*q^304 + (8*zeta^2 - 
16)*q^307 + 1/2*(35*zeta^2 + 35*zeta - 70)*q^313 + (17*zeta^2 - 34)*q^316 + 
1/2*(25*zeta^2 - 50)*q^325 + 1/2*(-zeta^2 - zeta + 2)*q^331 - 5/2*zeta*q^337 + 
1/2*(-13*zeta^2 + 26)*q^343 + 1/2*(-37*zeta^2 - 37*zeta + 74)*q^349 + 
(-15*zeta^2 + 30)*q^361 - 5*zeta*q^364 + 1/2*(35*zeta^2 + 35*zeta - 70)*q^367 + 
13/2*zeta*q^373 + 1/2*(-29*zeta^2 + 58)*q^379 + (-19*zeta^2 + 38)*q^388 + 
(17*zeta^2 - 34)*q^397 + 10*zeta*q^400 + (-10*zeta^2 - 10*zeta + 20)*q^403 + 
31/2*zeta*q^409 + (13*zeta^2 + 13*zeta - 26)*q^412 + 1/2*(-19*zeta^2 - 19*zeta +
38)*q^421 - 1/2*zeta*q^427 + (-zeta^2 + 2)*q^433 + 2*zeta*q^436 + (-14*zeta^2 - 
14*zeta + 28)*q^439 + O(q^441)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_9E1 := Curve(P_Q, [ PolynomialRing(ext<K|Polynomial(K, [1, -3, 
0, 1])> where K is RationalField(), 2) | ]);
