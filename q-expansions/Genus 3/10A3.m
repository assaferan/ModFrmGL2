
    /****************************************************
    Loading this file in magma loads the objects fs_10A3 
    and X_10A3. fs_10A3 is a list of power series which form 
    a basis for the space of cusp forms. X_10A3 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | -1, -1, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_10A3 := [Kq | zeta*q + (2*zeta - 2)*q^3 - 3*q^5 + (-2*zeta + 
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
+ (30*zeta - 30)*q^347 - 10*zeta*q^349 + O(q^350), 1/3*(-zeta + 3)*q + 1/3*(zeta
+ 2)*q^3 + 1/3*(2*zeta + 4)*q^7 + 1/3*(2*zeta - 6)*q^9 + (zeta - 3)*q^11 + 
1/3*(-4*zeta - 8)*q^13 + (-zeta - 2)*q^17 + 1/3*(-5*zeta + 15)*q^19 + 
1/3*(-2*zeta + 6)*q^21 + (2*zeta + 4)*q^23 + 1/3*(-5*zeta - 10)*q^27 + 
1/3*(-2*zeta + 6)*q^31 + (-zeta - 2)*q^33 + 1/3*(2*zeta + 4)*q^37 + 1/3*(4*zeta 
- 12)*q^39 + (zeta - 3)*q^41 + 1/3*(-4*zeta - 8)*q^43 + (4*zeta + 8)*q^47 + 
(zeta - 3)*q^49 + (zeta - 3)*q^51 + (2*zeta + 4)*q^53 + 1/3*(5*zeta + 10)*q^57 +
1/3*(-2*zeta + 6)*q^61 + 1/3*(-4*zeta - 8)*q^63 + 1/3*(-13*zeta - 26)*q^67 + 
(-2*zeta + 6)*q^69 + (-4*zeta + 12)*q^71 + 1/3*(11*zeta + 22)*q^73 + (-2*zeta - 
4)*q^77 + 1/3*(10*zeta - 30)*q^79 + 1/3*(-zeta + 3)*q^81 + (-3*zeta - 6)*q^83 + 
(-5*zeta + 15)*q^89 + 1/3*(8*zeta - 24)*q^91 + 1/3*(2*zeta + 4)*q^93 + 
1/3*(2*zeta + 4)*q^97 + (-2*zeta + 6)*q^99 + (6*zeta - 18)*q^101 + 1/3*(-4*zeta 
- 8)*q^103 + (-zeta - 2)*q^107 + 1/3*(10*zeta - 30)*q^109 + 1/3*(-2*zeta + 
6)*q^111 + (-3*zeta - 6)*q^113 + 1/3*(8*zeta + 16)*q^117 + (2*zeta - 6)*q^119 + 
1/3*(2*zeta - 6)*q^121 + (-zeta - 2)*q^123 + 1/3*(2*zeta + 4)*q^127 + 
1/3*(4*zeta - 12)*q^129 + (-4*zeta + 12)*q^131 + 1/3*(10*zeta + 20)*q^133 + 
(-zeta - 2)*q^137 + 1/3*(-5*zeta + 15)*q^139 + (-4*zeta + 12)*q^141 + (4*zeta + 
8)*q^143 + (-zeta - 2)*q^147 + 1/3*(-2*zeta + 6)*q^151 + (2*zeta + 4)*q^153 + 
1/3*(2*zeta + 4)*q^157 + (-2*zeta + 6)*q^159 + (-4*zeta + 12)*q^161 + 
1/3*(11*zeta + 22)*q^163 + (4*zeta + 8)*q^167 + (-zeta + 3)*q^169 + 1/3*(10*zeta
- 30)*q^171 + (-8*zeta - 16)*q^173 + (5*zeta - 15)*q^179 + 1/3*(-2*zeta + 
6)*q^181 + 1/3*(2*zeta + 4)*q^183 + (3*zeta + 6)*q^187 + 1/3*(10*zeta - 
30)*q^189 + (6*zeta - 18)*q^191 + 1/3*(-19*zeta - 38)*q^193 + (-6*zeta - 
12)*q^197 + 1/3*(-20*zeta + 60)*q^199 + 1/3*(13*zeta - 39)*q^201 + (-4*zeta - 
8)*q^207 + (5*zeta - 15)*q^209 + 1/3*(13*zeta - 39)*q^211 + (4*zeta + 8)*q^213 +
1/3*(4*zeta + 8)*q^217 + 1/3*(-11*zeta + 33)*q^219 + (-4*zeta + 12)*q^221 + 
1/3*(-4*zeta - 8)*q^223 + (4*zeta + 8)*q^227 + 1/3*(-20*zeta + 60)*q^229 + 
(2*zeta - 6)*q^231 + (2*zeta + 4)*q^233 + 1/3*(-10*zeta - 20)*q^237 + 
1/3*(-17*zeta + 51)*q^241 + 1/3*(16*zeta + 32)*q^243 + 1/3*(-20*zeta - 40)*q^247
+ (3*zeta - 9)*q^249 + (-9*zeta + 27)*q^251 + (-6*zeta - 12)*q^253 + (-6*zeta - 
12)*q^257 + 1/3*(-4*zeta + 12)*q^259 + (2*zeta + 4)*q^263 + (5*zeta + 10)*q^267 
+ 1/3*(-2*zeta + 6)*q^271 + 1/3*(-8*zeta - 16)*q^273 + 1/3*(32*zeta + 64)*q^277 
+ 1/3*(4*zeta - 12)*q^279 + (6*zeta - 18)*q^281 + 1/3*(11*zeta + 22)*q^283 + 
(-2*zeta - 4)*q^287 + 1/3*(8*zeta - 24)*q^289 + 1/3*(-2*zeta + 6)*q^291 + 
(2*zeta + 4)*q^293 + (5*zeta + 10)*q^297 + (8*zeta - 24)*q^299 + 1/3*(8*zeta - 
24)*q^301 + (-6*zeta - 12)*q^303 + 1/3*(17*zeta + 34)*q^307 + 1/3*(4*zeta - 
12)*q^309 + (6*zeta - 18)*q^311 + 1/3*(26*zeta + 52)*q^313 + (4*zeta + 8)*q^317 
+ (zeta - 3)*q^321 + (-5*zeta - 10)*q^323 + 1/3*(-10*zeta - 20)*q^327 + (-8*zeta
+ 24)*q^329 + 1/3*(-17*zeta + 51)*q^331 + 1/3*(-4*zeta - 8)*q^333 + 
1/3*(-13*zeta - 26)*q^337 + (3*zeta - 9)*q^339 + (2*zeta - 6)*q^341 + 
1/3*(-20*zeta - 40)*q^343 + (-zeta - 2)*q^347 + 1/3*(10*zeta - 30)*q^349 + 
O(q^350), zeta*q^2 + (-zeta + 1)*q^4 + (zeta - 1)*q^6 + zeta*q^8 - zeta*q^12 + 
(2*zeta - 2)*q^14 + (-zeta + 1)*q^16 - 2*zeta*q^18 - 3*zeta*q^22 + (zeta - 
1)*q^24 + (-4*zeta + 4)*q^26 - 2*zeta*q^28 + zeta*q^32 + (-3*zeta + 3)*q^34 + 
(2*zeta - 2)*q^36 + 5*zeta*q^38 + 2*zeta*q^42 + (3*zeta - 3)*q^44 + (6*zeta - 
6)*q^46 - zeta*q^48 + 4*zeta*q^52 + (-5*zeta + 5)*q^54 + (2*zeta - 2)*q^56 + 
2*zeta*q^62 + (-zeta + 1)*q^64 + (-3*zeta + 3)*q^66 + 3*zeta*q^68 - 2*zeta*q^72 
+ (2*zeta - 2)*q^74 + (-5*zeta + 5)*q^76 - 4*zeta*q^78 - 3*zeta*q^82 + (-2*zeta 
+ 2)*q^84 + (-4*zeta + 4)*q^86 - 3*zeta*q^88 - 6*zeta*q^92 + (12*zeta - 12)*q^94
+ (zeta - 1)*q^96 - 3*zeta*q^98 - 3*zeta*q^102 + (-4*zeta + 4)*q^104 + (6*zeta -
6)*q^106 + 5*zeta*q^108 - 2*zeta*q^112 + (5*zeta - 5)*q^114 + 2*zeta*q^122 + 
(-2*zeta + 2)*q^124 + (-4*zeta + 4)*q^126 + zeta*q^128 + 3*zeta*q^132 + 
(-13*zeta + 13)*q^134 + (-3*zeta + 3)*q^136 + 6*zeta*q^138 + 12*zeta*q^142 + 
(2*zeta - 2)*q^144 + (11*zeta - 11)*q^146 - 2*zeta*q^148 + 5*zeta*q^152 + 
(-6*zeta + 6)*q^154 + (4*zeta - 4)*q^156 - 10*zeta*q^158 + zeta*q^162 + (3*zeta 
- 3)*q^164 + (-9*zeta + 9)*q^166 + 2*zeta*q^168 + 4*zeta*q^172 + (3*zeta - 
3)*q^176 + 15*zeta*q^178 - 8*zeta*q^182 + (6*zeta - 6)*q^184 + (2*zeta - 
2)*q^186 - 12*zeta*q^188 - zeta*q^192 + (2*zeta - 2)*q^194 + (3*zeta - 3)*q^196 
+ 6*zeta*q^198 - 18*zeta*q^202 + (3*zeta - 3)*q^204 + (-4*zeta + 4)*q^206 + 
4*zeta*q^208 - 6*zeta*q^212 + (-3*zeta + 3)*q^214 + (-5*zeta + 5)*q^216 - 
10*zeta*q^218 + 2*zeta*q^222 + (2*zeta - 2)*q^224 + (-9*zeta + 9)*q^226 - 
5*zeta*q^228 + (8*zeta - 8)*q^234 - 6*zeta*q^238 - 2*zeta*q^242 + (-2*zeta + 
2)*q^244 + (-3*zeta + 3)*q^246 + 2*zeta*q^248 + 4*zeta*q^252 + (2*zeta - 
2)*q^254 + (-zeta + 1)*q^256 - 4*zeta*q^258 + 12*zeta*q^262 + (-3*zeta + 
3)*q^264 + (10*zeta - 10)*q^266 + 13*zeta*q^268 + 3*zeta*q^272 + (-3*zeta + 
3)*q^274 + (-6*zeta + 6)*q^276 + 5*zeta*q^278 + 12*zeta*q^282 + (-12*zeta + 
12)*q^284 + (12*zeta - 12)*q^286 - 2*zeta*q^288 - 11*zeta*q^292 + (-3*zeta + 
3)*q^294 + (2*zeta - 2)*q^296 + 2*zeta*q^302 + (-5*zeta + 5)*q^304 + (6*zeta - 
6)*q^306 + 6*zeta*q^308 - 4*zeta*q^312 + (2*zeta - 2)*q^314 + (10*zeta - 
10)*q^316 + 6*zeta*q^318 + 12*zeta*q^322 + (-zeta + 1)*q^324 + (11*zeta - 
11)*q^326 - 3*zeta*q^328 + 9*zeta*q^332 + (12*zeta - 12)*q^334 + (-2*zeta + 
2)*q^336 + 3*zeta*q^338 - 10*zeta*q^342 + (-4*zeta + 4)*q^344 + (-24*zeta + 
24)*q^346 + O(q^350)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_10A3 := Curve(P_Q, [ PolynomialRing(RationalField(), 3) |
x[1]^4 - 81/10*x[1]^2*x[2]^2 - 27/2*x[1]^2*x[3]^2 - 27/2*x[1]*x[2]^3 + 
135/2*x[1]*x[2]*x[3]^2 - 243/50*x[2]^4 - 81/5*x[2]^2*x[3]^2 - 27/2*x[3]^4
]);
