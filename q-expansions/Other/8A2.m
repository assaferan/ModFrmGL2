
    /****************************************************
    Loading this file in magma loads the objects fs_8A2 
    and X_8A2. fs_8A2 is a list of power series which form 
    a basis for the space of cusp forms. X_8A2 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, \[ 1, 0, 0, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_8A2 := [Kq | q + 2*zeta^2*q^3 - q^9 - 6*zeta^2*q^11 - 6*q^17 + 
2*zeta^2*q^19 + 5*q^25 + 4*zeta^2*q^27 + 12*q^33 - 6*q^41 + 10*zeta^2*q^43 - 
7*q^49 - 12*zeta^2*q^51 - 4*q^57 - 6*zeta^2*q^59 - 14*zeta^2*q^67 + 2*q^73 + 
10*zeta^2*q^75 - 11*q^81 + 18*zeta^2*q^83 + 18*q^89 + 10*q^97 + 6*zeta^2*q^99 - 
6*zeta^2*q^107 + 18*q^113 - 25*q^121 - 12*zeta^2*q^123 - 20*q^129 + 
18*zeta^2*q^131 - 6*q^137 - 22*zeta^2*q^139 - 14*zeta^2*q^147 + 6*q^153 + 
2*zeta^2*q^163 + 13*q^169 - 2*zeta^2*q^171 + 12*q^177 + 18*zeta^2*q^179 + 
36*zeta^2*q^187 - 22*q^193 + 28*q^201 + 12*q^209 - 14*zeta^2*q^211 + 
4*zeta^2*q^219 - 5*q^225 - 30*zeta^2*q^227 - 30*q^233 + 26*q^241 - 
10*zeta^2*q^243 - 36*q^249 - 6*zeta^2*q^251 - 30*q^257 + 36*zeta^2*q^267 - 
30*zeta^2*q^275 + O(q^280), q + 2*zeta^2*q^3 - q^9 - 6*zeta^2*q^11 - 6*q^17 + 
2*zeta^2*q^19 + 5*q^25 + 4*zeta^2*q^27 + 12*q^33 - 6*q^41 + 10*zeta^2*q^43 - 
7*q^49 - 12*zeta^2*q^51 - 4*q^57 - 6*zeta^2*q^59 - 14*zeta^2*q^67 + 2*q^73 + 
10*zeta^2*q^75 - 11*q^81 + 18*zeta^2*q^83 + 18*q^89 + 10*q^97 + 6*zeta^2*q^99 - 
6*zeta^2*q^107 + 18*q^113 - 25*q^121 - 12*zeta^2*q^123 - 20*q^129 + 
18*zeta^2*q^131 - 6*q^137 - 22*zeta^2*q^139 - 14*zeta^2*q^147 + 6*q^153 + 
2*zeta^2*q^163 + 13*q^169 - 2*zeta^2*q^171 + 12*q^177 + 18*zeta^2*q^179 + 
36*zeta^2*q^187 - 22*q^193 + 28*q^201 + 12*q^209 - 14*zeta^2*q^211 + 
4*zeta^2*q^219 - 5*q^225 - 30*zeta^2*q^227 - 30*q^233 + 26*q^241 - 
10*zeta^2*q^243 - 36*q^249 - 6*zeta^2*q^251 - 30*q^257 + 36*zeta^2*q^267 - 
30*zeta^2*q^275 + O(q^280), (-zeta^2 + 1)*q^3 + (3*zeta^2 - 3)*q^11 + (-zeta^2 +
1)*q^19 + (-2*zeta^2 + 2)*q^27 + (-5*zeta^2 + 5)*q^43 + (6*zeta^2 - 6)*q^51 + 
(3*zeta^2 - 3)*q^59 + (7*zeta^2 - 7)*q^67 + (-5*zeta^2 + 5)*q^75 + (-9*zeta^2 + 
9)*q^83 + (-3*zeta^2 + 3)*q^99 + (3*zeta^2 - 3)*q^107 + (6*zeta^2 - 6)*q^123 + 
(-9*zeta^2 + 9)*q^131 + (11*zeta^2 - 11)*q^139 + (7*zeta^2 - 7)*q^147 + (-zeta^2
+ 1)*q^163 + (zeta^2 - 1)*q^171 + (-9*zeta^2 + 9)*q^179 + (-18*zeta^2 + 
18)*q^187 + (7*zeta^2 - 7)*q^211 + (-2*zeta^2 + 2)*q^219 + (15*zeta^2 - 
15)*q^227 + (5*zeta^2 - 5)*q^243 + (3*zeta^2 - 3)*q^251 + (-18*zeta^2 + 
18)*q^267 + (15*zeta^2 - 15)*q^275 + O(q^280)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_8A2 := Curve(P_Q, [ PolynomialRing(CyclotomicField(8), 2) |
0
]);
