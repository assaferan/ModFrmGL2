
    /****************************************************
    Loading this file in magma loads the objects fs_10G1 
    and X_10G1. fs_10G1 is a list of power series which form 
    a basis for the space of cusp forms. X_10G1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | -1, -1, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_10G1 := [Kq | q^5 - 2*q^15 - q^25 + 2*q^35 + q^45 + 2*q^65 + 
2*q^75 - 6*q^85 - 4*q^95 - 4*q^105 + 6*q^115 + q^125 + 4*q^135 + 6*q^145 - 
4*q^155 - 2*q^175 + 2*q^185 - 4*q^195 + 6*q^205 - 10*q^215 - q^225 - 6*q^235 - 
3*q^245 + 12*q^255 - 6*q^265 + 8*q^285 + 12*q^295 + 2*q^305 + 2*q^315 - 2*q^325 
+ O(q^330)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_10G1 := Curve(P_Q, [ PolynomialRing(ext<K|Polynomial(K, [-1, -1,
1])> where K is RationalField(), 2) | ]);
