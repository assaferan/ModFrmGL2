
    /****************************************************
    Loading this file in magma loads the objects fs_7B1 
    and X_7B1. fs_7B1 is a list of power series which form 
    a basis for the space of cusp forms. X_7B1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | -1, -2, 1, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_7B1 := [Kq | 1/4*(-zeta^2 + 4)*q + 1/4*(zeta^2 + zeta + 1)*q^2 
+ 1/4*(zeta - 2)*q^4 + 1/4*(3*zeta^2 - 12)*q^8 + 1/4*(-3*zeta^2 - 3*zeta - 
3)*q^9 + (-zeta + 2)*q^11 + 1/4*(-zeta^2 - zeta - 1)*q^16 + 1/4*(3*zeta - 
6)*q^18 + (-zeta^2 + 4)*q^22 + (2*zeta^2 + 2*zeta + 2)*q^23 + 1/4*(5*zeta - 
10)*q^25 + 1/2*(-zeta^2 + 4)*q^29 + 1/4*(-5*zeta + 10)*q^32 + 1/4*(-3*zeta^2 + 
12)*q^36 + 1/2*(-3*zeta^2 - 3*zeta - 3)*q^37 + (3*zeta^2 - 12)*q^43 + (-zeta^2 -
zeta - 1)*q^44 + (-2*zeta + 4)*q^46 + 1/4*(5*zeta^2 - 20)*q^50 + 1/2*(5*zeta - 
10)*q^53 + 1/2*(zeta^2 + zeta + 1)*q^58 + 1/4*(-7*zeta^2 + 28)*q^64 + (-zeta + 
2)*q^67 + (-4*zeta^2 + 16)*q^71 + 1/4*(9*zeta^2 + 9*zeta + 9)*q^72 + 1/2*(3*zeta
- 6)*q^74 + (2*zeta^2 + 2*zeta + 2)*q^79 + 1/4*(-9*zeta + 18)*q^81 + (-3*zeta^2 
- 3*zeta - 3)*q^86 + (3*zeta - 6)*q^88 + (2*zeta^2 - 8)*q^92 + (3*zeta^2 - 
12)*q^99 + 1/4*(5*zeta^2 + 5*zeta + 5)*q^100 + 1/2*(5*zeta^2 - 20)*q^106 + 
(-5*zeta^2 - 5*zeta - 5)*q^107 + 1/2*(-9*zeta + 18)*q^109 + 1/2*(-zeta^2 + 
4)*q^113 + 1/2*(zeta - 2)*q^116 + 1/4*(5*zeta^2 + 5*zeta + 5)*q^121 + (-4*zeta^2
+ 16)*q^127 + 1/4*(-3*zeta^2 - 3*zeta - 3)*q^128 + (-zeta^2 + 4)*q^134 + 
1/2*(5*zeta - 10)*q^137 + (4*zeta^2 + 4*zeta + 4)*q^142 + 1/4*(-3*zeta + 
6)*q^144 + 1/2*(-3*zeta^2 + 12)*q^148 + 1/2*(11*zeta^2 + 11*zeta + 11)*q^149 + 
(6*zeta - 12)*q^151 + (-2*zeta + 4)*q^158 + 1/4*(-9*zeta^2 + 36)*q^162 + 
(-5*zeta^2 - 5*zeta - 5)*q^163 + 1/4*(13*zeta^2 - 52)*q^169 + (-3*zeta + 
6)*q^172 + (zeta^2 - 4)*q^176 + (-zeta + 2)*q^179 + (-6*zeta^2 - 6*zeta - 
6)*q^184 + (2*zeta^2 + 2*zeta + 2)*q^191 + 1/2*(-9*zeta + 18)*q^193 + 
1/2*(13*zeta^2 - 52)*q^197 + (-3*zeta^2 - 3*zeta - 3)*q^198 + 1/4*(-15*zeta + 
30)*q^200 + (6*zeta - 12)*q^207 + (3*zeta^2 - 12)*q^211 + 1/2*(5*zeta^2 + 5*zeta
+ 5)*q^212 + (5*zeta - 10)*q^214 + 1/2*(-9*zeta^2 + 36)*q^218 + 1/4*(-15*zeta^2 
+ 60)*q^225 + 1/2*(zeta^2 + zeta + 1)*q^226 + 1/2*(3*zeta^2 - 12)*q^232 + 
1/2*(11*zeta^2 + 11*zeta + 11)*q^233 + (-4*zeta^2 + 16)*q^239 + 1/4*(-5*zeta + 
10)*q^242 + (-8*zeta^2 + 32)*q^253 + (4*zeta^2 + 4*zeta + 4)*q^254 + 
1/4*(17*zeta - 34)*q^256 + 1/2*(-3*zeta^2 - 3*zeta - 3)*q^261 + (-8*zeta + 
16)*q^263 + (-zeta^2 - zeta - 1)*q^268 + 1/2*(5*zeta^2 - 20)*q^274 + (-5*zeta^2 
- 5*zeta - 5)*q^275 + 1/2*(5*zeta - 10)*q^277 + 1/2*(13*zeta^2 - 52)*q^281 + 
(4*zeta - 8)*q^284 + 1/4*(15*zeta^2 - 60)*q^288 + 1/4*(-17*zeta^2 - 17*zeta - 
17)*q^289 + 1/2*(9*zeta^2 + 9*zeta + 9)*q^296 + 1/2*(-11*zeta + 22)*q^298 + 
(6*zeta^2 - 24)*q^302 + (2*zeta^2 - 8)*q^316 + 1/2*(-17*zeta^2 - 17*zeta - 
17)*q^317 + (-2*zeta + 4)*q^319 + 1/4*(-9*zeta^2 - 9*zeta - 9)*q^324 + (5*zeta -
10)*q^326 + (9*zeta^2 + 9*zeta + 9)*q^331 + 1/2*(-9*zeta + 18)*q^333 + 
1/2*(-15*zeta^2 + 60)*q^337 + 1/4*(-13*zeta^2 - 13*zeta - 13)*q^338 + O(q^343)] 
;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_7B1 := Curve(P_Q, [ PolynomialRing(ext<K|Polynomial(K, [-1, -2, 
1, 1])> where K is RationalField(), 2) | ]);
