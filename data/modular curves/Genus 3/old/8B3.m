
    /****************************************************
    Loading this file in magma loads the objects fs_8B3 
    and X_8B3. fs_8B3 is a list of power series which form 
    a basis for the space of cusp forms. X_8B3 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, \[ 1, 0, 0, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_8B3 := [Kq | (zeta^3 + zeta)*q^2 + (-2*zeta^3 - 2*zeta)*q^10 + 
(-3*zeta^3 - 3*zeta)*q^18 + (6*zeta^3 + 6*zeta)*q^26 + (2*zeta^3 + 2*zeta)*q^34 
+ (-zeta^3 - zeta)*q^50 + (-10*zeta^3 - 10*zeta)*q^58 + (-2*zeta^3 - 
2*zeta)*q^74 + (10*zeta^3 + 10*zeta)*q^82 + (6*zeta^3 + 6*zeta)*q^90 + 
(-7*zeta^3 - 7*zeta)*q^98 + (14*zeta^3 + 14*zeta)*q^106 + (-10*zeta^3 - 
10*zeta)*q^122 + (-12*zeta^3 - 12*zeta)*q^130 + (-6*zeta^3 - 6*zeta)*q^146 + 
(9*zeta^3 + 9*zeta)*q^162 + (-4*zeta^3 - 4*zeta)*q^170 + (10*zeta^3 + 
10*zeta)*q^178 + (18*zeta^3 + 18*zeta)*q^194 + (-2*zeta^3 - 2*zeta)*q^202 + 
(6*zeta^3 + 6*zeta)*q^218 + (-14*zeta^3 - 14*zeta)*q^226 + (-18*zeta^3 - 
18*zeta)*q^234 + (-11*zeta^3 - 11*zeta)*q^242 + (12*zeta^3 + 12*zeta)*q^250 + 
(-22*zeta^3 - 22*zeta)*q^274 + (20*zeta^3 + 20*zeta)*q^290 + (14*zeta^3 + 
14*zeta)*q^298 + (-6*zeta^3 - 6*zeta)*q^306 + (22*zeta^3 + 22*zeta)*q^314 + 
(23*zeta^3 + 23*zeta)*q^338 + (-26*zeta^3 - 26*zeta)*q^346 + (-18*zeta^3 - 
18*zeta)*q^362 + (4*zeta^3 + 4*zeta)*q^370 + (-14*zeta^3 - 14*zeta)*q^386 + 
(-2*zeta^3 - 2*zeta)*q^394 + (-20*zeta^3 - 20*zeta)*q^410 + O(q^424), (zeta^3 + 
zeta)*q^2 + (-2*zeta^3 - 2*zeta)*q^10 + (-3*zeta^3 - 3*zeta)*q^18 + (6*zeta^3 + 
6*zeta)*q^26 + (2*zeta^3 + 2*zeta)*q^34 + (-zeta^3 - zeta)*q^50 + (-10*zeta^3 - 
10*zeta)*q^58 + (-2*zeta^3 - 2*zeta)*q^74 + (10*zeta^3 + 10*zeta)*q^82 + 
(6*zeta^3 + 6*zeta)*q^90 + (-7*zeta^3 - 7*zeta)*q^98 + (14*zeta^3 + 
14*zeta)*q^106 + (-10*zeta^3 - 10*zeta)*q^122 + (-12*zeta^3 - 12*zeta)*q^130 + 
(-6*zeta^3 - 6*zeta)*q^146 + (9*zeta^3 + 9*zeta)*q^162 + (-4*zeta^3 - 
4*zeta)*q^170 + (10*zeta^3 + 10*zeta)*q^178 + (18*zeta^3 + 18*zeta)*q^194 + 
(-2*zeta^3 - 2*zeta)*q^202 + (6*zeta^3 + 6*zeta)*q^218 + (-14*zeta^3 - 
14*zeta)*q^226 + (-18*zeta^3 - 18*zeta)*q^234 + (-11*zeta^3 - 11*zeta)*q^242 + 
(12*zeta^3 + 12*zeta)*q^250 + (-22*zeta^3 - 22*zeta)*q^274 + (20*zeta^3 + 
20*zeta)*q^290 + (14*zeta^3 + 14*zeta)*q^298 + (-6*zeta^3 - 6*zeta)*q^306 + 
(22*zeta^3 + 22*zeta)*q^314 + (23*zeta^3 + 23*zeta)*q^338 + (-26*zeta^3 - 
26*zeta)*q^346 + (-18*zeta^3 - 18*zeta)*q^362 + (4*zeta^3 + 4*zeta)*q^370 + 
(-14*zeta^3 - 14*zeta)*q^386 + (-2*zeta^3 - 2*zeta)*q^394 + (-20*zeta^3 - 
20*zeta)*q^410 + O(q^424), zeta^3*q - 2*zeta^3*q^3 - zeta^3*q^9 + 6*zeta^3*q^11 
- 6*zeta^3*q^17 - 2*zeta^3*q^19 + 5*zeta^3*q^25 - 4*zeta^3*q^27 + 12*zeta^3*q^33
- 6*zeta^3*q^41 - 10*zeta^3*q^43 - 7*zeta^3*q^49 + 12*zeta^3*q^51 - 
4*zeta^3*q^57 + 6*zeta^3*q^59 + 14*zeta^3*q^67 + 2*zeta^3*q^73 - 10*zeta^3*q^75 
- 11*zeta^3*q^81 - 18*zeta^3*q^83 + 18*zeta^3*q^89 + 10*zeta^3*q^97 - 
6*zeta^3*q^99 + 6*zeta^3*q^107 + 18*zeta^3*q^113 - 25*zeta^3*q^121 + 
12*zeta^3*q^123 - 20*zeta^3*q^129 - 18*zeta^3*q^131 - 6*zeta^3*q^137 + 
22*zeta^3*q^139 + 14*zeta^3*q^147 + 6*zeta^3*q^153 - 2*zeta^3*q^163 + 
13*zeta^3*q^169 + 2*zeta^3*q^171 + 12*zeta^3*q^177 - 18*zeta^3*q^179 - 
36*zeta^3*q^187 - 22*zeta^3*q^193 + 28*zeta^3*q^201 + 12*zeta^3*q^209 + 
14*zeta^3*q^211 - 4*zeta^3*q^219 - 5*zeta^3*q^225 + 30*zeta^3*q^227 - 
30*zeta^3*q^233 + 26*zeta^3*q^241 + 10*zeta^3*q^243 - 36*zeta^3*q^249 + 
6*zeta^3*q^251 - 30*zeta^3*q^257 - 36*zeta^3*q^267 + 30*zeta^3*q^275 + 
18*zeta^3*q^281 + 22*zeta^3*q^283 + 19*zeta^3*q^289 - 20*zeta^3*q^291 + 
24*zeta^3*q^297 - 34*zeta^3*q^307 + 10*zeta^3*q^313 + 12*zeta^3*q^321 + 
12*zeta^3*q^323 - 26*zeta^3*q^331 - 14*zeta^3*q^337 - 36*zeta^3*q^339 + 
6*zeta^3*q^347 - 30*zeta^3*q^353 + 15*zeta^3*q^361 + 50*zeta^3*q^363 + 
6*zeta^3*q^369 + 38*zeta^3*q^379 + 10*zeta^3*q^387 - 36*zeta^3*q^393 - 
6*zeta^3*q^401 - 22*zeta^3*q^409 + 12*zeta^3*q^411 + 44*zeta^3*q^417 - 
18*zeta^3*q^419 + O(q^424), (-zeta^3 + zeta)*q^3 + (3*zeta^3 - 3*zeta)*q^11 + 
(-zeta^3 + zeta)*q^19 + (-2*zeta^3 + 2*zeta)*q^27 + (-5*zeta^3 + 5*zeta)*q^43 + 
(6*zeta^3 - 6*zeta)*q^51 + (3*zeta^3 - 3*zeta)*q^59 + (7*zeta^3 - 7*zeta)*q^67 +
(-5*zeta^3 + 5*zeta)*q^75 + (-9*zeta^3 + 9*zeta)*q^83 + (-3*zeta^3 + 
3*zeta)*q^99 + (3*zeta^3 - 3*zeta)*q^107 + (6*zeta^3 - 6*zeta)*q^123 + 
(-9*zeta^3 + 9*zeta)*q^131 + (11*zeta^3 - 11*zeta)*q^139 + (7*zeta^3 - 
7*zeta)*q^147 + (-zeta^3 + zeta)*q^163 + (zeta^3 - zeta)*q^171 + (-9*zeta^3 + 
9*zeta)*q^179 + (-18*zeta^3 + 18*zeta)*q^187 + (7*zeta^3 - 7*zeta)*q^211 + 
(-2*zeta^3 + 2*zeta)*q^219 + (15*zeta^3 - 15*zeta)*q^227 + (5*zeta^3 - 
5*zeta)*q^243 + (3*zeta^3 - 3*zeta)*q^251 + (-18*zeta^3 + 18*zeta)*q^267 + 
(15*zeta^3 - 15*zeta)*q^275 + (11*zeta^3 - 11*zeta)*q^283 + (-10*zeta^3 + 
10*zeta)*q^291 + (-17*zeta^3 + 17*zeta)*q^307 + (6*zeta^3 - 6*zeta)*q^323 + 
(-13*zeta^3 + 13*zeta)*q^331 + (-18*zeta^3 + 18*zeta)*q^339 + (3*zeta^3 - 
3*zeta)*q^347 + (25*zeta^3 - 25*zeta)*q^363 + (19*zeta^3 - 19*zeta)*q^379 + 
(5*zeta^3 - 5*zeta)*q^387 + (6*zeta^3 - 6*zeta)*q^411 + (-9*zeta^3 + 
9*zeta)*q^419 + O(q^424)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_8B3 := Curve(P_Q, [ PolynomialRing(CyclotomicField(8), 3) |
x[1]^2 + (-zeta^2 - 1)*x[2]*x[3] + 2*x[3]^2
]);
