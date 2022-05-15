
    /****************************************************
    Loading this file in magma loads the objects fs_15A1 
    and X_15A1. fs_15A1 is a list of power series which form 
    a basis for the space of cusp forms. X_15A1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | 1, 4, -4, -1, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_15A1 := [Kq | q - 2*q^4 - 5*q^7 - 5*q^13 + 4*q^16 - q^19 + 
10*q^28 - 7*q^31 + 10*q^37 - 5*q^43 + 18*q^49 + 10*q^52 - 13*q^61 - 8*q^64 - 
5*q^67 + 10*q^73 + 2*q^76 - 4*q^79 + 25*q^91 - 5*q^97 - 20*q^103 - 19*q^109 - 
20*q^112 - 11*q^121 + 14*q^124 - 20*q^127 + 5*q^133 - 16*q^139 - 20*q^148 + 
23*q^151 + 25*q^157 + 25*q^163 + 12*q^169 + 10*q^172 - 7*q^181 + 25*q^193 - 
36*q^196 + 11*q^199 - 20*q^208 - 13*q^211 + 35*q^217 - 5*q^223 + O(q^225)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_15A1 := Curve(P_Q, [ PolynomialRing(ext<K|Polynomial(K, [1, 4, 
-4, -1, 1])> where K is RationalField(), 2) | ]);
