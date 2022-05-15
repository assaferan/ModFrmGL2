
    /****************************************************
    Loading this file in magma loads the objects fs_10H1 
    and X_10H1. fs_10H1 is a list of power series which form 
    a basis for the space of cusp forms. X_10H1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | -1, -1, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_10H1 := [Kq | zeta*q + (2*zeta - 2)*q^3 - 3*q^5 + (-2*zeta + 
2)*q^7 + zeta*q^9 + (-2*zeta + 2)*q^13 + 6*q^15 + (6*zeta - 6)*q^17 - 
4*zeta*q^19 - 4*zeta*q^21 + (-6*zeta + 6)*q^23 + 3*q^25 + (-4*zeta + 4)*q^27 + 
6*zeta*q^29 - 4*zeta*q^31 - 6*q^35 + (-2*zeta + 2)*q^37 - 4*zeta*q^39 + 
6*zeta*q^41 + (10*zeta - 10)*q^43 - 3*q^45 + (6*zeta - 6)*q^47 - 3*zeta*q^49 + 
12*zeta*q^51 + (6*zeta - 6)*q^53 + (-8*zeta + 8)*q^57 + 12*zeta*q^59 + 
2*zeta*q^61 + (-2*zeta + 2)*q^63 - 6*q^65 + (-2*zeta + 2)*q^67 - 12*zeta*q^69 - 
12*zeta*q^71 + (-2*zeta + 2)*q^73 - 6*q^75 + 8*zeta*q^79 - 11*zeta*q^81 + 
(-6*zeta + 6)*q^83 + 18*q^85 + (12*zeta - 12)*q^87 - 6*zeta*q^89 + 4*zeta*q^91 +
(-8*zeta + 8)*q^93 + 12*q^95 + (-2*zeta + 2)*q^97 + 6*zeta*q^101 + (-14*zeta + 
14)*q^103 + 12*q^105 + (6*zeta - 6)*q^107 + 2*zeta*q^109 - 4*zeta*q^111 + 
(6*zeta - 6)*q^113 - 18*q^115 + (-2*zeta + 2)*q^117 - 12*zeta*q^119 - 
11*zeta*q^121 + (12*zeta - 12)*q^123 - 3*q^125 + (-2*zeta + 2)*q^127 + 
20*zeta*q^129 + (8*zeta - 8)*q^133 - 12*q^135 + (-18*zeta + 18)*q^137 - 
4*zeta*q^139 + 12*zeta*q^141 - 18*q^145 + (-6*zeta + 6)*q^147 - 6*zeta*q^149 + 
20*zeta*q^151 + (6*zeta - 6)*q^153 + 12*q^155 + (22*zeta - 22)*q^157 + 
12*zeta*q^159 + 12*zeta*q^161 + (10*zeta - 10)*q^163 + (-18*zeta + 18)*q^167 - 
9*zeta*q^169 - 4*zeta*q^171 + (6*zeta - 6)*q^173 + 6*q^175 + (24*zeta - 
24)*q^177 - 12*zeta*q^179 - 10*zeta*q^181 + (4*zeta - 4)*q^183 - 6*q^185 + 
8*zeta*q^189 - 12*zeta*q^191 + (-26*zeta + 26)*q^193 + 12*q^195 + (-18*zeta + 
18)*q^197 + 8*zeta*q^199 - 4*zeta*q^201 + (-12*zeta + 12)*q^203 - 18*q^205 + 
(-6*zeta + 6)*q^207 - 16*zeta*q^211 + (-24*zeta + 24)*q^213 + 30*q^215 + (8*zeta
- 8)*q^217 - 4*zeta*q^219 - 12*zeta*q^221 + (10*zeta - 10)*q^223 + 3*q^225 + 
(6*zeta - 6)*q^227 + 14*zeta*q^229 + (6*zeta - 6)*q^233 + 18*q^235 + (16*zeta - 
16)*q^237 - 24*zeta*q^239 + 14*zeta*q^241 + (-10*zeta + 10)*q^243 + 9*q^245 + 
(8*zeta - 8)*q^247 - 12*zeta*q^249 - 36*q^255 + (6*zeta - 6)*q^257 + 
4*zeta*q^259 + 6*zeta*q^261 + (18*zeta - 18)*q^263 + 18*q^265 + (-12*zeta + 
12)*q^267 + 18*zeta*q^269 + 20*zeta*q^271 + (8*zeta - 8)*q^273 + (-26*zeta + 
26)*q^277 - 4*zeta*q^279 + 6*zeta*q^281 + (-14*zeta + 14)*q^283 - 24*q^285 + 
(-12*zeta + 12)*q^287 + 19*zeta*q^289 - 4*zeta*q^291 + (30*zeta - 30)*q^293 - 
36*q^295 + 12*zeta*q^299 - 20*zeta*q^301 + (12*zeta - 12)*q^303 - 6*q^305 + 
(-2*zeta + 2)*q^307 - 28*zeta*q^309 + 12*zeta*q^311 + (22*zeta - 22)*q^313 - 
6*q^315 + (6*zeta - 6)*q^317 + 12*zeta*q^321 + (-24*zeta + 24)*q^323 + 6*q^325 +
(4*zeta - 4)*q^327 - 12*zeta*q^329 + 8*zeta*q^331 + (-2*zeta + 2)*q^333 - 
6*q^335 + (-2*zeta + 2)*q^337 + 12*zeta*q^339 + (20*zeta - 20)*q^343 + 36*q^345 
+ (30*zeta - 30)*q^347 - 10*zeta*q^349 + 8*zeta*q^351 + (-18*zeta + 18)*q^353 + 
36*q^355 + (-24*zeta + 24)*q^357 + 24*zeta*q^359 - 3*zeta*q^361 + (-22*zeta + 
22)*q^363 - 6*q^365 + (22*zeta - 22)*q^367 + 6*zeta*q^369 + O(q^370)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_10H1 := Curve(P_Q, [ PolynomialRing(ext<K|Polynomial(K, [-1, -1,
1])> where K is RationalField(), 2) | ]);
