
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
              fs_10A3 := [Kq | (zeta + 2)*q + (-2*zeta + 6)*q^3 + (-6*zeta + 
3)*q^5 + (2*zeta - 6)*q^7 + (zeta + 2)*q^9 + (2*zeta - 6)*q^13 + (12*zeta - 
6)*q^15 + (-6*zeta + 18)*q^17 + (-4*zeta - 8)*q^19 + (-4*zeta - 8)*q^21 + 
(6*zeta - 18)*q^23 + (6*zeta - 3)*q^25 + (4*zeta - 12)*q^27 + (6*zeta + 12)*q^29
+ (-4*zeta - 8)*q^31 + (-12*zeta + 6)*q^35 + (2*zeta - 6)*q^37 + (-4*zeta - 
8)*q^39 + (6*zeta + 12)*q^41 + (-10*zeta + 30)*q^43 + (-6*zeta + 3)*q^45 + 
(-6*zeta + 18)*q^47 + (-3*zeta - 6)*q^49 + (12*zeta + 24)*q^51 + (-6*zeta + 
18)*q^53 + (8*zeta - 24)*q^57 + (12*zeta + 24)*q^59 + (2*zeta + 4)*q^61 + 
(2*zeta - 6)*q^63 + (-12*zeta + 6)*q^65 + (2*zeta - 6)*q^67 + (-12*zeta - 
24)*q^69 + (-12*zeta - 24)*q^71 + (2*zeta - 6)*q^73 + (-12*zeta + 6)*q^75 + 
(8*zeta + 16)*q^79 + (-11*zeta - 22)*q^81 + (6*zeta - 18)*q^83 + (36*zeta - 
18)*q^85 + (-12*zeta + 36)*q^87 + (-6*zeta - 12)*q^89 + (4*zeta + 8)*q^91 + 
(8*zeta - 24)*q^93 + (24*zeta - 12)*q^95 + (2*zeta - 6)*q^97 + (6*zeta + 
12)*q^101 + (14*zeta - 42)*q^103 + (24*zeta - 12)*q^105 + (-6*zeta + 18)*q^107 +
(2*zeta + 4)*q^109 + (-4*zeta - 8)*q^111 + (-6*zeta + 18)*q^113 + (-36*zeta + 
18)*q^115 + (2*zeta - 6)*q^117 + (-12*zeta - 24)*q^119 + (-11*zeta - 22)*q^121 +
(-12*zeta + 36)*q^123 + (-6*zeta + 3)*q^125 + (2*zeta - 6)*q^127 + (20*zeta + 
40)*q^129 + (-8*zeta + 24)*q^133 + (-24*zeta + 12)*q^135 + (18*zeta - 54)*q^137 
+ (-4*zeta - 8)*q^139 + (12*zeta + 24)*q^141 + (-36*zeta + 18)*q^145 + (6*zeta -
18)*q^147 + (-6*zeta - 12)*q^149 + (20*zeta + 40)*q^151 + (-6*zeta + 18)*q^153 +
(24*zeta - 12)*q^155 + (-22*zeta + 66)*q^157 + (12*zeta + 24)*q^159 + (12*zeta +
24)*q^161 + (-10*zeta + 30)*q^163 + (18*zeta - 54)*q^167 + (-9*zeta - 18)*q^169 
+ (-4*zeta - 8)*q^171 + (-6*zeta + 18)*q^173 + (12*zeta - 6)*q^175 + (-24*zeta +
72)*q^177 + (-12*zeta - 24)*q^179 + (-10*zeta - 20)*q^181 + (-4*zeta + 12)*q^183
+ (-12*zeta + 6)*q^185 + (8*zeta + 16)*q^189 + (-12*zeta - 24)*q^191 + (26*zeta 
- 78)*q^193 + (24*zeta - 12)*q^195 + (18*zeta - 54)*q^197 + (8*zeta + 16)*q^199 
+ (-4*zeta - 8)*q^201 + (12*zeta - 36)*q^203 + (-36*zeta + 18)*q^205 + (6*zeta -
18)*q^207 + (-16*zeta - 32)*q^211 + (24*zeta - 72)*q^213 + (60*zeta - 30)*q^215 
+ (-8*zeta + 24)*q^217 + (-4*zeta - 8)*q^219 + (-12*zeta - 24)*q^221 + (-10*zeta
+ 30)*q^223 + (6*zeta - 3)*q^225 + (-6*zeta + 18)*q^227 + (14*zeta + 28)*q^229 +
(-6*zeta + 18)*q^233 + (36*zeta - 18)*q^235 + (-16*zeta + 48)*q^237 + (-24*zeta 
- 48)*q^239 + (14*zeta + 28)*q^241 + (10*zeta - 30)*q^243 + (18*zeta - 9)*q^245 
+ (-8*zeta + 24)*q^247 + (-12*zeta - 24)*q^249 + (-72*zeta + 36)*q^255 + 
(-6*zeta + 18)*q^257 + (4*zeta + 8)*q^259 + (6*zeta + 12)*q^261 + (-18*zeta + 
54)*q^263 + (36*zeta - 18)*q^265 + (12*zeta - 36)*q^267 + (18*zeta + 36)*q^269 +
(20*zeta + 40)*q^271 + (-8*zeta + 24)*q^273 + (26*zeta - 78)*q^277 + (-4*zeta - 
8)*q^279 + (6*zeta + 12)*q^281 + (14*zeta - 42)*q^283 + (-48*zeta + 24)*q^285 + 
(12*zeta - 36)*q^287 + (19*zeta + 38)*q^289 + (-4*zeta - 8)*q^291 + (-30*zeta + 
90)*q^293 + (-72*zeta + 36)*q^295 + (12*zeta + 24)*q^299 + (-20*zeta - 40)*q^301
+ (-12*zeta + 36)*q^303 + (-12*zeta + 6)*q^305 + (2*zeta - 6)*q^307 + (-28*zeta 
- 56)*q^309 + (12*zeta + 24)*q^311 + (-22*zeta + 66)*q^313 + (-12*zeta + 
6)*q^315 + (-6*zeta + 18)*q^317 + (12*zeta + 24)*q^321 + (24*zeta - 72)*q^323 + 
(12*zeta - 6)*q^325 + (-4*zeta + 12)*q^327 + (-12*zeta - 24)*q^329 + (8*zeta + 
16)*q^331 + (2*zeta - 6)*q^333 + (-12*zeta + 6)*q^335 + (2*zeta - 6)*q^337 + 
(12*zeta + 24)*q^339 + (-20*zeta + 60)*q^343 + (72*zeta - 36)*q^345 + (-30*zeta 
+ 90)*q^347 + (-10*zeta - 20)*q^349 + O(q^350), (zeta + 2)*q + (-2*zeta + 6)*q^3
+ (-6*zeta + 3)*q^5 + (2*zeta - 6)*q^7 + (zeta + 2)*q^9 + (2*zeta - 6)*q^13 + 
(12*zeta - 6)*q^15 + (-6*zeta + 18)*q^17 + (-4*zeta - 8)*q^19 + (-4*zeta - 
8)*q^21 + (6*zeta - 18)*q^23 + (6*zeta - 3)*q^25 + (4*zeta - 12)*q^27 + (6*zeta 
+ 12)*q^29 + (-4*zeta - 8)*q^31 + (-12*zeta + 6)*q^35 + (2*zeta - 6)*q^37 + 
(-4*zeta - 8)*q^39 + (6*zeta + 12)*q^41 + (-10*zeta + 30)*q^43 + (-6*zeta + 
3)*q^45 + (-6*zeta + 18)*q^47 + (-3*zeta - 6)*q^49 + (12*zeta + 24)*q^51 + 
(-6*zeta + 18)*q^53 + (8*zeta - 24)*q^57 + (12*zeta + 24)*q^59 + (2*zeta + 
4)*q^61 + (2*zeta - 6)*q^63 + (-12*zeta + 6)*q^65 + (2*zeta - 6)*q^67 + 
(-12*zeta - 24)*q^69 + (-12*zeta - 24)*q^71 + (2*zeta - 6)*q^73 + (-12*zeta + 
6)*q^75 + (8*zeta + 16)*q^79 + (-11*zeta - 22)*q^81 + (6*zeta - 18)*q^83 + 
(36*zeta - 18)*q^85 + (-12*zeta + 36)*q^87 + (-6*zeta - 12)*q^89 + (4*zeta + 
8)*q^91 + (8*zeta - 24)*q^93 + (24*zeta - 12)*q^95 + (2*zeta - 6)*q^97 + (6*zeta
+ 12)*q^101 + (14*zeta - 42)*q^103 + (24*zeta - 12)*q^105 + (-6*zeta + 18)*q^107
+ (2*zeta + 4)*q^109 + (-4*zeta - 8)*q^111 + (-6*zeta + 18)*q^113 + (-36*zeta + 
18)*q^115 + (2*zeta - 6)*q^117 + (-12*zeta - 24)*q^119 + (-11*zeta - 22)*q^121 +
(-12*zeta + 36)*q^123 + (-6*zeta + 3)*q^125 + (2*zeta - 6)*q^127 + (20*zeta + 
40)*q^129 + (-8*zeta + 24)*q^133 + (-24*zeta + 12)*q^135 + (18*zeta - 54)*q^137 
+ (-4*zeta - 8)*q^139 + (12*zeta + 24)*q^141 + (-36*zeta + 18)*q^145 + (6*zeta -
18)*q^147 + (-6*zeta - 12)*q^149 + (20*zeta + 40)*q^151 + (-6*zeta + 18)*q^153 +
(24*zeta - 12)*q^155 + (-22*zeta + 66)*q^157 + (12*zeta + 24)*q^159 + (12*zeta +
24)*q^161 + (-10*zeta + 30)*q^163 + (18*zeta - 54)*q^167 + (-9*zeta - 18)*q^169 
+ (-4*zeta - 8)*q^171 + (-6*zeta + 18)*q^173 + (12*zeta - 6)*q^175 + (-24*zeta +
72)*q^177 + (-12*zeta - 24)*q^179 + (-10*zeta - 20)*q^181 + (-4*zeta + 12)*q^183
+ (-12*zeta + 6)*q^185 + (8*zeta + 16)*q^189 + (-12*zeta - 24)*q^191 + (26*zeta 
- 78)*q^193 + (24*zeta - 12)*q^195 + (18*zeta - 54)*q^197 + (8*zeta + 16)*q^199 
+ (-4*zeta - 8)*q^201 + (12*zeta - 36)*q^203 + (-36*zeta + 18)*q^205 + (6*zeta -
18)*q^207 + (-16*zeta - 32)*q^211 + (24*zeta - 72)*q^213 + (60*zeta - 30)*q^215 
+ (-8*zeta + 24)*q^217 + (-4*zeta - 8)*q^219 + (-12*zeta - 24)*q^221 + (-10*zeta
+ 30)*q^223 + (6*zeta - 3)*q^225 + (-6*zeta + 18)*q^227 + (14*zeta + 28)*q^229 +
(-6*zeta + 18)*q^233 + (36*zeta - 18)*q^235 + (-16*zeta + 48)*q^237 + (-24*zeta 
- 48)*q^239 + (14*zeta + 28)*q^241 + (10*zeta - 30)*q^243 + (18*zeta - 9)*q^245 
+ (-8*zeta + 24)*q^247 + (-12*zeta - 24)*q^249 + (-72*zeta + 36)*q^255 + 
(-6*zeta + 18)*q^257 + (4*zeta + 8)*q^259 + (6*zeta + 12)*q^261 + (-18*zeta + 
54)*q^263 + (36*zeta - 18)*q^265 + (12*zeta - 36)*q^267 + (18*zeta + 36)*q^269 +
(20*zeta + 40)*q^271 + (-8*zeta + 24)*q^273 + (26*zeta - 78)*q^277 + (-4*zeta - 
8)*q^279 + (6*zeta + 12)*q^281 + (14*zeta - 42)*q^283 + (-48*zeta + 24)*q^285 + 
(12*zeta - 36)*q^287 + (19*zeta + 38)*q^289 + (-4*zeta - 8)*q^291 + (-30*zeta + 
90)*q^293 + (-72*zeta + 36)*q^295 + (12*zeta + 24)*q^299 + (-20*zeta - 40)*q^301
+ (-12*zeta + 36)*q^303 + (-12*zeta + 6)*q^305 + (2*zeta - 6)*q^307 + (-28*zeta 
- 56)*q^309 + (12*zeta + 24)*q^311 + (-22*zeta + 66)*q^313 + (-12*zeta + 
6)*q^315 + (-6*zeta + 18)*q^317 + (12*zeta + 24)*q^321 + (24*zeta - 72)*q^323 + 
(12*zeta - 6)*q^325 + (-4*zeta + 12)*q^327 + (-12*zeta - 24)*q^329 + (8*zeta + 
16)*q^331 + (2*zeta - 6)*q^333 + (-12*zeta + 6)*q^335 + (2*zeta - 6)*q^337 + 
(12*zeta + 24)*q^339 + (-20*zeta + 60)*q^343 + (72*zeta - 36)*q^345 + (-30*zeta 
+ 90)*q^347 + (-10*zeta - 20)*q^349 + O(q^350), (-2*zeta + 2)*q - 2*zeta*q^3 - 
4*zeta*q^7 + (4*zeta - 4)*q^9 + (6*zeta - 6)*q^11 + 8*zeta*q^13 + 6*zeta*q^17 + 
(-10*zeta + 10)*q^19 + (-4*zeta + 4)*q^21 - 12*zeta*q^23 + 10*zeta*q^27 + 
(-4*zeta + 4)*q^31 + 6*zeta*q^33 - 4*zeta*q^37 + (8*zeta - 8)*q^39 + (6*zeta - 
6)*q^41 + 8*zeta*q^43 - 24*zeta*q^47 + (6*zeta - 6)*q^49 + (6*zeta - 6)*q^51 - 
12*zeta*q^53 - 10*zeta*q^57 + (-4*zeta + 4)*q^61 + 8*zeta*q^63 + 26*zeta*q^67 + 
(-12*zeta + 12)*q^69 + (-24*zeta + 24)*q^71 - 22*zeta*q^73 + 12*zeta*q^77 + 
(20*zeta - 20)*q^79 + (-2*zeta + 2)*q^81 + 18*zeta*q^83 + (-30*zeta + 30)*q^89 +
(16*zeta - 16)*q^91 - 4*zeta*q^93 - 4*zeta*q^97 + (-12*zeta + 12)*q^99 + 
(36*zeta - 36)*q^101 + 8*zeta*q^103 + 6*zeta*q^107 + (20*zeta - 20)*q^109 + 
(-4*zeta + 4)*q^111 + 18*zeta*q^113 - 16*zeta*q^117 + (12*zeta - 12)*q^119 + 
(4*zeta - 4)*q^121 + 6*zeta*q^123 - 4*zeta*q^127 + (8*zeta - 8)*q^129 + 
(-24*zeta + 24)*q^131 - 20*zeta*q^133 + 6*zeta*q^137 + (-10*zeta + 10)*q^139 + 
(-24*zeta + 24)*q^141 - 24*zeta*q^143 + 6*zeta*q^147 + (-4*zeta + 4)*q^151 - 
12*zeta*q^153 - 4*zeta*q^157 + (-12*zeta + 12)*q^159 + (-24*zeta + 24)*q^161 - 
22*zeta*q^163 - 24*zeta*q^167 + (-6*zeta + 6)*q^169 + (20*zeta - 20)*q^171 + 
48*zeta*q^173 + (30*zeta - 30)*q^179 + (-4*zeta + 4)*q^181 - 4*zeta*q^183 - 
18*zeta*q^187 + (20*zeta - 20)*q^189 + (36*zeta - 36)*q^191 + 38*zeta*q^193 + 
36*zeta*q^197 + (-40*zeta + 40)*q^199 + (26*zeta - 26)*q^201 + 24*zeta*q^207 + 
(30*zeta - 30)*q^209 + (26*zeta - 26)*q^211 - 24*zeta*q^213 - 8*zeta*q^217 + 
(-22*zeta + 22)*q^219 + (-24*zeta + 24)*q^221 + 8*zeta*q^223 - 24*zeta*q^227 + 
(-40*zeta + 40)*q^229 + (12*zeta - 12)*q^231 - 12*zeta*q^233 + 20*zeta*q^237 + 
(-34*zeta + 34)*q^241 - 32*zeta*q^243 + 40*zeta*q^247 + (18*zeta - 18)*q^249 + 
(-54*zeta + 54)*q^251 + 36*zeta*q^253 + 36*zeta*q^257 + (-8*zeta + 8)*q^259 - 
12*zeta*q^263 - 30*zeta*q^267 + (-4*zeta + 4)*q^271 + 16*zeta*q^273 - 
64*zeta*q^277 + (8*zeta - 8)*q^279 + (36*zeta - 36)*q^281 - 22*zeta*q^283 + 
12*zeta*q^287 + (16*zeta - 16)*q^289 + (-4*zeta + 4)*q^291 - 12*zeta*q^293 - 
30*zeta*q^297 + (48*zeta - 48)*q^299 + (16*zeta - 16)*q^301 + 36*zeta*q^303 - 
34*zeta*q^307 + (8*zeta - 8)*q^309 + (36*zeta - 36)*q^311 - 52*zeta*q^313 - 
24*zeta*q^317 + (6*zeta - 6)*q^321 + 30*zeta*q^323 + 20*zeta*q^327 + (-48*zeta +
48)*q^329 + (-34*zeta + 34)*q^331 + 8*zeta*q^333 + 26*zeta*q^337 + (18*zeta - 
18)*q^339 + (12*zeta - 12)*q^341 + 40*zeta*q^343 + 6*zeta*q^347 + (20*zeta - 
20)*q^349 + O(q^350), 2*zeta*q^2 + (-2*zeta + 2)*q^4 + (2*zeta - 2)*q^6 + 
2*zeta*q^8 - 2*zeta*q^12 + (4*zeta - 4)*q^14 + (-2*zeta + 2)*q^16 - 4*zeta*q^18 
- 6*zeta*q^22 + (2*zeta - 2)*q^24 + (-8*zeta + 8)*q^26 - 4*zeta*q^28 + 
2*zeta*q^32 + (-6*zeta + 6)*q^34 + (4*zeta - 4)*q^36 + 10*zeta*q^38 + 
4*zeta*q^42 + (6*zeta - 6)*q^44 + (12*zeta - 12)*q^46 - 2*zeta*q^48 + 
8*zeta*q^52 + (-10*zeta + 10)*q^54 + (4*zeta - 4)*q^56 + 4*zeta*q^62 + (-2*zeta 
+ 2)*q^64 + (-6*zeta + 6)*q^66 + 6*zeta*q^68 - 4*zeta*q^72 + (4*zeta - 4)*q^74 +
(-10*zeta + 10)*q^76 - 8*zeta*q^78 - 6*zeta*q^82 + (-4*zeta + 4)*q^84 + (-8*zeta
+ 8)*q^86 - 6*zeta*q^88 - 12*zeta*q^92 + (24*zeta - 24)*q^94 + (2*zeta - 2)*q^96
- 6*zeta*q^98 - 6*zeta*q^102 + (-8*zeta + 8)*q^104 + (12*zeta - 12)*q^106 + 
10*zeta*q^108 - 4*zeta*q^112 + (10*zeta - 10)*q^114 + 4*zeta*q^122 + (-4*zeta + 
4)*q^124 + (-8*zeta + 8)*q^126 + 2*zeta*q^128 + 6*zeta*q^132 + (-26*zeta + 
26)*q^134 + (-6*zeta + 6)*q^136 + 12*zeta*q^138 + 24*zeta*q^142 + (4*zeta - 
4)*q^144 + (22*zeta - 22)*q^146 - 4*zeta*q^148 + 10*zeta*q^152 + (-12*zeta + 
12)*q^154 + (8*zeta - 8)*q^156 - 20*zeta*q^158 + 2*zeta*q^162 + (6*zeta - 
6)*q^164 + (-18*zeta + 18)*q^166 + 4*zeta*q^168 + 8*zeta*q^172 + (6*zeta - 
6)*q^176 + 30*zeta*q^178 - 16*zeta*q^182 + (12*zeta - 12)*q^184 + (4*zeta - 
4)*q^186 - 24*zeta*q^188 - 2*zeta*q^192 + (4*zeta - 4)*q^194 + (6*zeta - 
6)*q^196 + 12*zeta*q^198 - 36*zeta*q^202 + (6*zeta - 6)*q^204 + (-8*zeta + 
8)*q^206 + 8*zeta*q^208 - 12*zeta*q^212 + (-6*zeta + 6)*q^214 + (-10*zeta + 
10)*q^216 - 20*zeta*q^218 + 4*zeta*q^222 + (4*zeta - 4)*q^224 + (-18*zeta + 
18)*q^226 - 10*zeta*q^228 + (16*zeta - 16)*q^234 - 12*zeta*q^238 - 4*zeta*q^242 
+ (-4*zeta + 4)*q^244 + (-6*zeta + 6)*q^246 + 4*zeta*q^248 + 8*zeta*q^252 + 
(4*zeta - 4)*q^254 + (-2*zeta + 2)*q^256 - 8*zeta*q^258 + 24*zeta*q^262 + 
(-6*zeta + 6)*q^264 + (20*zeta - 20)*q^266 + 26*zeta*q^268 + 6*zeta*q^272 + 
(-6*zeta + 6)*q^274 + (-12*zeta + 12)*q^276 + 10*zeta*q^278 + 24*zeta*q^282 + 
(-24*zeta + 24)*q^284 + (24*zeta - 24)*q^286 - 4*zeta*q^288 - 22*zeta*q^292 + 
(-6*zeta + 6)*q^294 + (4*zeta - 4)*q^296 + 4*zeta*q^302 + (-10*zeta + 10)*q^304 
+ (12*zeta - 12)*q^306 + 12*zeta*q^308 - 8*zeta*q^312 + (4*zeta - 4)*q^314 + 
(20*zeta - 20)*q^316 + 12*zeta*q^318 + 24*zeta*q^322 + (-2*zeta + 2)*q^324 + 
(22*zeta - 22)*q^326 - 6*zeta*q^328 + 18*zeta*q^332 + (24*zeta - 24)*q^334 + 
(-4*zeta + 4)*q^336 + 6*zeta*q^338 - 20*zeta*q^342 + (-8*zeta + 8)*q^344 + 
(-48*zeta + 48)*q^346 + O(q^350)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_10A3 := Curve(P_Q, [ PolynomialRing(RationalField(), 3) |
x[1]^4 - 45/8*x[1]^2*x[2]^2 - 135/8*x[1]^2*x[3]^2 + 125/16*x[1]*x[2]^3 - 
1125/16*x[1]*x[2]*x[3]^2 - 75/32*x[2]^4 - 225/16*x[2]^2*x[3]^2 - 675/32*x[3]^4
]);
