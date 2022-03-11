
    /****************************************************
    Loading this file in magma loads the objects fs_24C1 
    and X_24C1. fs_24C1 is a list of power series which form 
    a basis for the space of cusp forms. X_24C1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | 1, 0, -4, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_24C1 := [Kq | q + 4*q^7 - 2*q^13 + 8*q^19 - 5*q^25 + 4*q^31 + 
10*q^37 + 8*q^43 + 9*q^49 - 14*q^61 - 16*q^67 - 10*q^73 + 4*q^79 - 8*q^91 + 
14*q^97 - 20*q^103 - 2*q^109 - 11*q^121 - 20*q^127 + 32*q^133 - 16*q^139 + 
4*q^151 - 14*q^157 + 8*q^163 - 9*q^169 - 20*q^175 - 26*q^181 + 2*q^193 + 
28*q^199 - 16*q^211 + 16*q^217 + 28*q^223 + 22*q^229 + 14*q^241 - 16*q^247 + 
40*q^259 + 28*q^271 - 26*q^277 + 32*q^283 - 17*q^289 + 32*q^301 - 16*q^307 - 
22*q^313 + 10*q^325 + 32*q^331 - 34*q^337 + 8*q^343 - 14*q^349 + 45*q^361 + 
4*q^367 + O(q^368)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_24C1 := Curve(P_Q, [ PolynomialRing(ext<K|Polynomial(K, [1, 0, 
-4, 0, 1])> where K is RationalField(), 2) | ]);
