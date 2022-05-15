
    /****************************************************
    Loading this file in magma loads the objects fs_16C1 
    and X_16C1. fs_16C1 is a list of power series which form 
    a basis for the space of cusp forms. X_16C1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | 2, 0, -4, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_16C1 := [Kq | q + 2*q^3 + q^9 + 6*q^11 - 6*q^17 + 2*q^19 - 
5*q^25 - 4*q^27 + 12*q^33 + 6*q^41 - 10*q^43 - 7*q^49 - 12*q^51 + 4*q^57 + 
6*q^59 - 14*q^67 - 2*q^73 - 10*q^75 - 11*q^81 + 18*q^83 - 18*q^89 + 10*q^97 + 
6*q^99 + 6*q^107 + 18*q^113 + 25*q^121 + 12*q^123 - 20*q^129 + 18*q^131 + 
6*q^137 + 22*q^139 - 14*q^147 - 6*q^153 + 2*q^163 - 13*q^169 + 2*q^171 + 
12*q^177 + 18*q^179 - 36*q^187 - 22*q^193 - 28*q^201 + 12*q^209 - 14*q^211 - 
4*q^219 - 5*q^225 - 30*q^227 + 30*q^233 + 26*q^241 - 10*q^243 + 36*q^249 + 
6*q^251 - 30*q^257 - 36*q^267 - 30*q^275 - 18*q^281 + 22*q^283 + 19*q^289 + 
20*q^291 - 24*q^297 + 34*q^307 - 10*q^313 + 12*q^321 - 12*q^323 - 26*q^331 - 
14*q^337 + 36*q^339 + 6*q^347 - 30*q^353 - 15*q^361 + 50*q^363 + O(q^368)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_16C1 := Curve(P_Q, [ PolynomialRing(ext<K|Polynomial(K, [2, 0, 
-4, 0, 1])> where K is RationalField(), 2) | ]);
