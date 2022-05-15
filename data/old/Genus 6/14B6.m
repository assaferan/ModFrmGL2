
    /****************************************************
    Loading this file in magma loads the objects fs_14B6 
    and X_14B6. fs_14B6 is a list of power series which form 
    a basis for the space of cusp forms. X_14B6 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | 1, -2, -1, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_14B6 := [Kq | (-2*zeta^2 + zeta + 3)*q + (3*zeta^2 - 5)*q^2 + 
(-2*zeta^2 - 2*zeta + 4)*q^3 + (3*zeta^2 - 3*zeta - 4)*q^4 + (6*zeta - 2)*q^6 + 
(-3*zeta + 1)*q^8 + (zeta^2 - 2*zeta - 1)*q^9 + (6*zeta^2 - 10)*q^12 + (8*zeta^2
- 4*zeta - 12)*q^13 + (-3*zeta^2 + 5)*q^16 + (6*zeta^2 + 6*zeta - 12)*q^17 + 
(-3*zeta^2 + 3*zeta + 4)*q^18 + (2*zeta^2 - 4*zeta - 2)*q^19 + (6*zeta^2 - 
6*zeta - 8)*q^24 + (-5*zeta^2 - 5*zeta + 10)*q^25 + (-12*zeta^2 + 20)*q^26 + 
(-8*zeta^2 + 4*zeta + 12)*q^27 + (12*zeta^2 - 6*zeta - 18)*q^29 + (-4*zeta^2 - 
4*zeta + 8)*q^31 + (-3*zeta^2 + 3*zeta + 4)*q^32 + (-18*zeta + 6)*q^34 + (3*zeta
- 1)*q^36 + (2*zeta^2 - 4*zeta - 2)*q^37 + (-6*zeta^2 + 6*zeta + 8)*q^38 + 
(8*zeta^2 + 8*zeta - 16)*q^39 + (-12*zeta^2 + 6*zeta + 18)*q^41 + (-16*zeta^2 + 
8*zeta + 24)*q^43 + (-12*zeta^2 + 24*zeta + 12)*q^47 + (-6*zeta + 2)*q^48 + 
(15*zeta - 5)*q^50 + (-12*zeta^2 + 24*zeta + 12)*q^51 + (-12*zeta^2 + 12*zeta + 
16)*q^52 + (6*zeta^2 + 6*zeta - 12)*q^53 + (12*zeta^2 - 20)*q^54 + (8*zeta^2 - 
4*zeta - 12)*q^57 + (-18*zeta^2 + 30)*q^58 + (-6*zeta^2 - 6*zeta + 12)*q^59 + 
(8*zeta^2 - 16*zeta - 8)*q^61 + (12*zeta - 4)*q^62 + (3*zeta - 1)*q^64 + 
(-4*zeta^2 - 4*zeta + 8)*q^67 + (-18*zeta^2 + 30)*q^68 + (3*zeta^2 - 5)*q^72 + 
(2*zeta^2 + 2*zeta - 4)*q^73 + (-6*zeta^2 + 6*zeta + 8)*q^74 + (10*zeta^2 - 
20*zeta - 10)*q^75 + (6*zeta - 2)*q^76 + (-24*zeta + 8)*q^78 + (8*zeta^2 - 
16*zeta - 8)*q^79 + (-11*zeta^2 - 11*zeta + 22)*q^81 + (18*zeta^2 - 30)*q^82 + 
(12*zeta^2 - 6*zeta - 18)*q^83 + (24*zeta^2 - 40)*q^86 + (12*zeta^2 + 12*zeta - 
24)*q^87 + (-6*zeta^2 + 12*zeta + 6)*q^89 + (8*zeta^2 - 16*zeta - 8)*q^93 + 
(36*zeta^2 - 36*zeta - 48)*q^94 + (-6*zeta^2 + 10)*q^96 + (20*zeta^2 - 10*zeta -
30)*q^97 + (15*zeta^2 - 25)*q^100 + (36*zeta^2 - 36*zeta - 48)*q^102 + 
(-4*zeta^2 + 8*zeta + 4)*q^103 + (12*zeta - 4)*q^104 + (-18*zeta + 6)*q^106 + 
(12*zeta^2 - 24*zeta - 12)*q^107 + (12*zeta^2 - 12*zeta - 16)*q^108 + (2*zeta^2 
+ 2*zeta - 4)*q^109 + (8*zeta^2 - 4*zeta - 12)*q^111 + (-12*zeta^2 + 6*zeta + 
18)*q^113 + (-12*zeta^2 + 20)*q^114 + (-18*zeta^2 + 18*zeta + 24)*q^116 + 
(-4*zeta^2 + 8*zeta + 4)*q^117 + (18*zeta - 6)*q^118 + (-11*zeta^2 + 22*zeta + 
11)*q^121 + (-24*zeta^2 + 24*zeta + 32)*q^122 + (-12*zeta^2 - 12*zeta + 
24)*q^123 + (12*zeta^2 - 20)*q^124 + (32*zeta^2 - 16*zeta - 48)*q^127 + 
(3*zeta^2 - 5)*q^128 + (-16*zeta^2 - 16*zeta + 32)*q^129 + (18*zeta^2 - 36*zeta 
- 18)*q^131 + (12*zeta - 4)*q^134 + (-18*zeta^2 + 18*zeta + 24)*q^136 + 
(18*zeta^2 + 18*zeta - 36)*q^137 + (-28*zeta^2 + 14*zeta + 42)*q^139 + 
(-48*zeta^2 + 24*zeta + 72)*q^141 + (3*zeta^2 - 3*zeta - 4)*q^144 + (-6*zeta + 
2)*q^146 + (6*zeta - 2)*q^148 + (-18*zeta^2 + 36*zeta + 18)*q^149 + (-30*zeta^2 
+ 30*zeta + 40)*q^150 + (8*zeta^2 + 8*zeta - 16)*q^151 + (6*zeta^2 - 10)*q^152 +
(-12*zeta^2 + 6*zeta + 18)*q^153 + (-24*zeta^2 + 40)*q^156 + (-4*zeta^2 - 4*zeta
+ 8)*q^157 + (-24*zeta^2 + 24*zeta + 32)*q^158 + (-12*zeta^2 + 24*zeta + 
12)*q^159 + (33*zeta - 11)*q^162 + (-16*zeta^2 + 32*zeta + 16)*q^163 + 
(18*zeta^2 - 18*zeta - 24)*q^164 + (-18*zeta^2 + 30)*q^166 + (24*zeta^2 - 
12*zeta - 36)*q^167 + (-6*zeta^2 + 3*zeta + 9)*q^169 + (2*zeta^2 + 2*zeta - 
4)*q^171 + (24*zeta^2 - 24*zeta - 32)*q^172 + (-12*zeta^2 + 24*zeta + 12)*q^173 
+ (-36*zeta + 12)*q^174 + (12*zeta^2 - 24*zeta - 12)*q^177 + (18*zeta^2 - 
18*zeta - 24)*q^178 + (-12*zeta^2 - 12*zeta + 24)*q^179 + (-40*zeta^2 + 20*zeta 
+ 60)*q^181 + (32*zeta^2 - 16*zeta - 48)*q^183 + (-24*zeta^2 + 24*zeta + 
32)*q^186 + (-36*zeta + 12)*q^188 + (24*zeta^2 - 48*zeta - 24)*q^191 + 
(-6*zeta^2 + 6*zeta + 8)*q^192 + (14*zeta^2 + 14*zeta - 28)*q^193 + (-30*zeta^2 
+ 50)*q^194 + (36*zeta^2 - 18*zeta - 54)*q^197 + (20*zeta^2 + 20*zeta - 
40)*q^199 + (15*zeta^2 - 15*zeta - 20)*q^200 + (8*zeta^2 - 16*zeta - 8)*q^201 + 
(-36*zeta + 12)*q^204 + (12*zeta^2 - 12*zeta - 16)*q^206 + (12*zeta^2 - 
20)*q^208 + (8*zeta^2 - 4*zeta - 12)*q^211 + (-18*zeta^2 + 30)*q^212 + 
(-36*zeta^2 + 36*zeta + 48)*q^214 + (-12*zeta + 4)*q^216 + (-6*zeta + 2)*q^218 +
(-4*zeta^2 + 8*zeta + 4)*q^219 + (-24*zeta^2 - 24*zeta + 48)*q^221 + (-12*zeta^2
+ 20)*q^222 + (-16*zeta^2 + 8*zeta + 24)*q^223 + (10*zeta^2 - 5*zeta - 15)*q^225
+ (18*zeta^2 - 30)*q^226 + (18*zeta^2 + 18*zeta - 36)*q^227 + (-12*zeta^2 + 
12*zeta + 16)*q^228 + (-4*zeta^2 + 8*zeta + 4)*q^229 + (18*zeta - 6)*q^232 + 
(-6*zeta^2 + 12*zeta + 6)*q^233 + (12*zeta^2 - 12*zeta - 16)*q^234 + (18*zeta^2 
- 30)*q^236 + (32*zeta^2 - 16*zeta - 48)*q^237 + (-48*zeta^2 + 24*zeta + 
72)*q^239 + (-10*zeta^2 - 10*zeta + 20)*q^241 + (33*zeta^2 - 33*zeta - 44)*q^242
+ (10*zeta^2 - 20*zeta - 10)*q^243 + (24*zeta - 8)*q^244 + (36*zeta - 12)*q^246 
+ (-8*zeta^2 + 16*zeta + 8)*q^247 + (12*zeta^2 - 12*zeta - 16)*q^248 + 
(12*zeta^2 + 12*zeta - 24)*q^249 + (36*zeta^2 - 18*zeta - 54)*q^251 + 
(-48*zeta^2 + 80)*q^254 + (3*zeta^2 - 3*zeta - 4)*q^256 + (18*zeta^2 - 36*zeta -
18)*q^257 + (48*zeta - 16)*q^258 + (-6*zeta^2 + 12*zeta + 6)*q^261 + (-54*zeta^2
+ 54*zeta + 72)*q^262 + (-24*zeta^2 + 12*zeta + 36)*q^267 + (12*zeta^2 - 
20)*q^268 + (-12*zeta^2 - 12*zeta + 24)*q^269 + (-16*zeta^2 + 32*zeta + 
16)*q^271 + (18*zeta - 6)*q^272 + (-54*zeta + 18)*q^274 + (-10*zeta^2 - 10*zeta 
+ 20)*q^277 + (42*zeta^2 - 70)*q^278 + (8*zeta^2 - 4*zeta - 12)*q^279 + 
(12*zeta^2 - 6*zeta - 18)*q^281 + (72*zeta^2 - 120)*q^282 + (-22*zeta^2 - 
22*zeta + 44)*q^283 + (-3*zeta + 1)*q^288 + (19*zeta^2 - 38*zeta - 19)*q^289 + 
(20*zeta^2 + 20*zeta - 40)*q^291 + (-6*zeta^2 + 10)*q^292 + (-48*zeta^2 + 
24*zeta + 72)*q^293 + (6*zeta^2 - 10)*q^296 + (54*zeta^2 - 54*zeta - 72)*q^298 +
(30*zeta - 10)*q^300 + (-24*zeta + 8)*q^302 + (6*zeta^2 - 6*zeta - 8)*q^304 + 
(18*zeta^2 - 30)*q^306 + (-4*zeta^2 + 2*zeta + 6)*q^307 + (-16*zeta^2 + 8*zeta +
24)*q^309 + (-24*zeta^2 - 24*zeta + 48)*q^311 + (-24*zeta^2 + 24*zeta + 
32)*q^312 + (-10*zeta^2 + 20*zeta + 10)*q^313 + (12*zeta - 4)*q^314 + (24*zeta -
8)*q^316 + (6*zeta^2 - 12*zeta - 6)*q^317 + (36*zeta^2 - 36*zeta - 48)*q^318 + 
(48*zeta^2 - 24*zeta - 72)*q^321 + (-24*zeta^2 + 12*zeta + 36)*q^323 + 
(33*zeta^2 - 55)*q^324 + (20*zeta^2 + 20*zeta - 40)*q^325 + (48*zeta^2 - 48*zeta
- 64)*q^326 + (-4*zeta^2 + 8*zeta + 4)*q^327 + (-18*zeta + 6)*q^328 + (8*zeta^2 
- 16*zeta - 8)*q^331 + (-18*zeta^2 + 18*zeta + 24)*q^332 + (2*zeta^2 + 2*zeta - 
4)*q^333 + (-36*zeta^2 + 60)*q^334 + (-28*zeta^2 + 14*zeta + 42)*q^337 + 
(9*zeta^2 - 15)*q^338 + (-12*zeta^2 - 12*zeta + 24)*q^339 + (-6*zeta + 2)*q^342 
+ (-24*zeta + 8)*q^344 + (36*zeta^2 - 36*zeta - 48)*q^346 + (-24*zeta^2 - 
24*zeta + 48)*q^347 + (-36*zeta^2 + 60)*q^348 + (56*zeta^2 - 28*zeta - 84)*q^349
+ (32*zeta^2 - 16*zeta - 48)*q^351 + (18*zeta^2 + 18*zeta - 36)*q^353 + 
(-36*zeta^2 + 36*zeta + 48)*q^354 + (-18*zeta + 6)*q^356 + (36*zeta - 12)*q^358 
+ (-24*zeta^2 + 48*zeta + 24)*q^359 + (-15*zeta^2 - 15*zeta + 30)*q^361 + 
(60*zeta^2 - 100)*q^362 + (-44*zeta^2 + 22*zeta + 66)*q^363 + (-48*zeta^2 + 
80)*q^366 + (8*zeta^2 + 8*zeta - 16)*q^367 + (6*zeta^2 - 12*zeta - 6)*q^369 + 
(24*zeta - 8)*q^372 + (14*zeta^2 - 28*zeta - 14)*q^373 + (-36*zeta^2 + 60)*q^376
+ (-48*zeta^2 + 24*zeta + 72)*q^377 + (32*zeta^2 - 16*zeta - 48)*q^379 + 
(32*zeta^2 + 32*zeta - 64)*q^381 + (-72*zeta^2 + 72*zeta + 96)*q^382 + 
(36*zeta^2 - 72*zeta - 36)*q^383 + (6*zeta - 2)*q^384 + (-42*zeta + 14)*q^386 + 
(8*zeta^2 - 16*zeta - 8)*q^387 + (-30*zeta^2 + 30*zeta + 40)*q^388 + (18*zeta^2 
+ 18*zeta - 36)*q^389 + (72*zeta^2 - 36*zeta - 108)*q^393 + (-54*zeta^2 + 
90)*q^394 + (20*zeta^2 - 40*zeta - 20)*q^397 + (-60*zeta + 20)*q^398 + (-15*zeta
+ 5)*q^400 + (-18*zeta^2 + 36*zeta + 18)*q^401 + (-24*zeta^2 + 24*zeta + 
32)*q^402 + (16*zeta^2 + 16*zeta - 32)*q^403 + O(q^406), (-2*zeta^2 + zeta + 
3)*q + (3*zeta^2 - 5)*q^2 + (-2*zeta^2 - 2*zeta + 4)*q^3 + (3*zeta^2 - 3*zeta - 
4)*q^4 + (6*zeta - 2)*q^6 + (-3*zeta + 1)*q^8 + (zeta^2 - 2*zeta - 1)*q^9 + 
(6*zeta^2 - 10)*q^12 + (8*zeta^2 - 4*zeta - 12)*q^13 + (-3*zeta^2 + 5)*q^16 + 
(6*zeta^2 + 6*zeta - 12)*q^17 + (-3*zeta^2 + 3*zeta + 4)*q^18 + (2*zeta^2 - 
4*zeta - 2)*q^19 + (6*zeta^2 - 6*zeta - 8)*q^24 + (-5*zeta^2 - 5*zeta + 10)*q^25
+ (-12*zeta^2 + 20)*q^26 + (-8*zeta^2 + 4*zeta + 12)*q^27 + (12*zeta^2 - 6*zeta 
- 18)*q^29 + (-4*zeta^2 - 4*zeta + 8)*q^31 + (-3*zeta^2 + 3*zeta + 4)*q^32 + 
(-18*zeta + 6)*q^34 + (3*zeta - 1)*q^36 + (2*zeta^2 - 4*zeta - 2)*q^37 + 
(-6*zeta^2 + 6*zeta + 8)*q^38 + (8*zeta^2 + 8*zeta - 16)*q^39 + (-12*zeta^2 + 
6*zeta + 18)*q^41 + (-16*zeta^2 + 8*zeta + 24)*q^43 + (-12*zeta^2 + 24*zeta + 
12)*q^47 + (-6*zeta + 2)*q^48 + (15*zeta - 5)*q^50 + (-12*zeta^2 + 24*zeta + 
12)*q^51 + (-12*zeta^2 + 12*zeta + 16)*q^52 + (6*zeta^2 + 6*zeta - 12)*q^53 + 
(12*zeta^2 - 20)*q^54 + (8*zeta^2 - 4*zeta - 12)*q^57 + (-18*zeta^2 + 30)*q^58 +
(-6*zeta^2 - 6*zeta + 12)*q^59 + (8*zeta^2 - 16*zeta - 8)*q^61 + (12*zeta - 
4)*q^62 + (3*zeta - 1)*q^64 + (-4*zeta^2 - 4*zeta + 8)*q^67 + (-18*zeta^2 + 
30)*q^68 + (3*zeta^2 - 5)*q^72 + (2*zeta^2 + 2*zeta - 4)*q^73 + (-6*zeta^2 + 
6*zeta + 8)*q^74 + (10*zeta^2 - 20*zeta - 10)*q^75 + (6*zeta - 2)*q^76 + 
(-24*zeta + 8)*q^78 + (8*zeta^2 - 16*zeta - 8)*q^79 + (-11*zeta^2 - 11*zeta + 
22)*q^81 + (18*zeta^2 - 30)*q^82 + (12*zeta^2 - 6*zeta - 18)*q^83 + (24*zeta^2 -
40)*q^86 + (12*zeta^2 + 12*zeta - 24)*q^87 + (-6*zeta^2 + 12*zeta + 6)*q^89 + 
(8*zeta^2 - 16*zeta - 8)*q^93 + (36*zeta^2 - 36*zeta - 48)*q^94 + (-6*zeta^2 + 
10)*q^96 + (20*zeta^2 - 10*zeta - 30)*q^97 + (15*zeta^2 - 25)*q^100 + (36*zeta^2
- 36*zeta - 48)*q^102 + (-4*zeta^2 + 8*zeta + 4)*q^103 + (12*zeta - 4)*q^104 + 
(-18*zeta + 6)*q^106 + (12*zeta^2 - 24*zeta - 12)*q^107 + (12*zeta^2 - 12*zeta -
16)*q^108 + (2*zeta^2 + 2*zeta - 4)*q^109 + (8*zeta^2 - 4*zeta - 12)*q^111 + 
(-12*zeta^2 + 6*zeta + 18)*q^113 + (-12*zeta^2 + 20)*q^114 + (-18*zeta^2 + 
18*zeta + 24)*q^116 + (-4*zeta^2 + 8*zeta + 4)*q^117 + (18*zeta - 6)*q^118 + 
(-11*zeta^2 + 22*zeta + 11)*q^121 + (-24*zeta^2 + 24*zeta + 32)*q^122 + 
(-12*zeta^2 - 12*zeta + 24)*q^123 + (12*zeta^2 - 20)*q^124 + (32*zeta^2 - 
16*zeta - 48)*q^127 + (3*zeta^2 - 5)*q^128 + (-16*zeta^2 - 16*zeta + 32)*q^129 +
(18*zeta^2 - 36*zeta - 18)*q^131 + (12*zeta - 4)*q^134 + (-18*zeta^2 + 18*zeta +
24)*q^136 + (18*zeta^2 + 18*zeta - 36)*q^137 + (-28*zeta^2 + 14*zeta + 42)*q^139
+ (-48*zeta^2 + 24*zeta + 72)*q^141 + (3*zeta^2 - 3*zeta - 4)*q^144 + (-6*zeta +
2)*q^146 + (6*zeta - 2)*q^148 + (-18*zeta^2 + 36*zeta + 18)*q^149 + (-30*zeta^2 
+ 30*zeta + 40)*q^150 + (8*zeta^2 + 8*zeta - 16)*q^151 + (6*zeta^2 - 10)*q^152 +
(-12*zeta^2 + 6*zeta + 18)*q^153 + (-24*zeta^2 + 40)*q^156 + (-4*zeta^2 - 4*zeta
+ 8)*q^157 + (-24*zeta^2 + 24*zeta + 32)*q^158 + (-12*zeta^2 + 24*zeta + 
12)*q^159 + (33*zeta - 11)*q^162 + (-16*zeta^2 + 32*zeta + 16)*q^163 + 
(18*zeta^2 - 18*zeta - 24)*q^164 + (-18*zeta^2 + 30)*q^166 + (24*zeta^2 - 
12*zeta - 36)*q^167 + (-6*zeta^2 + 3*zeta + 9)*q^169 + (2*zeta^2 + 2*zeta - 
4)*q^171 + (24*zeta^2 - 24*zeta - 32)*q^172 + (-12*zeta^2 + 24*zeta + 12)*q^173 
+ (-36*zeta + 12)*q^174 + (12*zeta^2 - 24*zeta - 12)*q^177 + (18*zeta^2 - 
18*zeta - 24)*q^178 + (-12*zeta^2 - 12*zeta + 24)*q^179 + (-40*zeta^2 + 20*zeta 
+ 60)*q^181 + (32*zeta^2 - 16*zeta - 48)*q^183 + (-24*zeta^2 + 24*zeta + 
32)*q^186 + (-36*zeta + 12)*q^188 + (24*zeta^2 - 48*zeta - 24)*q^191 + 
(-6*zeta^2 + 6*zeta + 8)*q^192 + (14*zeta^2 + 14*zeta - 28)*q^193 + (-30*zeta^2 
+ 50)*q^194 + (36*zeta^2 - 18*zeta - 54)*q^197 + (20*zeta^2 + 20*zeta - 
40)*q^199 + (15*zeta^2 - 15*zeta - 20)*q^200 + (8*zeta^2 - 16*zeta - 8)*q^201 + 
(-36*zeta + 12)*q^204 + (12*zeta^2 - 12*zeta - 16)*q^206 + (12*zeta^2 - 
20)*q^208 + (8*zeta^2 - 4*zeta - 12)*q^211 + (-18*zeta^2 + 30)*q^212 + 
(-36*zeta^2 + 36*zeta + 48)*q^214 + (-12*zeta + 4)*q^216 + (-6*zeta + 2)*q^218 +
(-4*zeta^2 + 8*zeta + 4)*q^219 + (-24*zeta^2 - 24*zeta + 48)*q^221 + (-12*zeta^2
+ 20)*q^222 + (-16*zeta^2 + 8*zeta + 24)*q^223 + (10*zeta^2 - 5*zeta - 15)*q^225
+ (18*zeta^2 - 30)*q^226 + (18*zeta^2 + 18*zeta - 36)*q^227 + (-12*zeta^2 + 
12*zeta + 16)*q^228 + (-4*zeta^2 + 8*zeta + 4)*q^229 + (18*zeta - 6)*q^232 + 
(-6*zeta^2 + 12*zeta + 6)*q^233 + (12*zeta^2 - 12*zeta - 16)*q^234 + (18*zeta^2 
- 30)*q^236 + (32*zeta^2 - 16*zeta - 48)*q^237 + (-48*zeta^2 + 24*zeta + 
72)*q^239 + (-10*zeta^2 - 10*zeta + 20)*q^241 + (33*zeta^2 - 33*zeta - 44)*q^242
+ (10*zeta^2 - 20*zeta - 10)*q^243 + (24*zeta - 8)*q^244 + (36*zeta - 12)*q^246 
+ (-8*zeta^2 + 16*zeta + 8)*q^247 + (12*zeta^2 - 12*zeta - 16)*q^248 + 
(12*zeta^2 + 12*zeta - 24)*q^249 + (36*zeta^2 - 18*zeta - 54)*q^251 + 
(-48*zeta^2 + 80)*q^254 + (3*zeta^2 - 3*zeta - 4)*q^256 + (18*zeta^2 - 36*zeta -
18)*q^257 + (48*zeta - 16)*q^258 + (-6*zeta^2 + 12*zeta + 6)*q^261 + (-54*zeta^2
+ 54*zeta + 72)*q^262 + (-24*zeta^2 + 12*zeta + 36)*q^267 + (12*zeta^2 - 
20)*q^268 + (-12*zeta^2 - 12*zeta + 24)*q^269 + (-16*zeta^2 + 32*zeta + 
16)*q^271 + (18*zeta - 6)*q^272 + (-54*zeta + 18)*q^274 + (-10*zeta^2 - 10*zeta 
+ 20)*q^277 + (42*zeta^2 - 70)*q^278 + (8*zeta^2 - 4*zeta - 12)*q^279 + 
(12*zeta^2 - 6*zeta - 18)*q^281 + (72*zeta^2 - 120)*q^282 + (-22*zeta^2 - 
22*zeta + 44)*q^283 + (-3*zeta + 1)*q^288 + (19*zeta^2 - 38*zeta - 19)*q^289 + 
(20*zeta^2 + 20*zeta - 40)*q^291 + (-6*zeta^2 + 10)*q^292 + (-48*zeta^2 + 
24*zeta + 72)*q^293 + (6*zeta^2 - 10)*q^296 + (54*zeta^2 - 54*zeta - 72)*q^298 +
(30*zeta - 10)*q^300 + (-24*zeta + 8)*q^302 + (6*zeta^2 - 6*zeta - 8)*q^304 + 
(18*zeta^2 - 30)*q^306 + (-4*zeta^2 + 2*zeta + 6)*q^307 + (-16*zeta^2 + 8*zeta +
24)*q^309 + (-24*zeta^2 - 24*zeta + 48)*q^311 + (-24*zeta^2 + 24*zeta + 
32)*q^312 + (-10*zeta^2 + 20*zeta + 10)*q^313 + (12*zeta - 4)*q^314 + (24*zeta -
8)*q^316 + (6*zeta^2 - 12*zeta - 6)*q^317 + (36*zeta^2 - 36*zeta - 48)*q^318 + 
(48*zeta^2 - 24*zeta - 72)*q^321 + (-24*zeta^2 + 12*zeta + 36)*q^323 + 
(33*zeta^2 - 55)*q^324 + (20*zeta^2 + 20*zeta - 40)*q^325 + (48*zeta^2 - 48*zeta
- 64)*q^326 + (-4*zeta^2 + 8*zeta + 4)*q^327 + (-18*zeta + 6)*q^328 + (8*zeta^2 
- 16*zeta - 8)*q^331 + (-18*zeta^2 + 18*zeta + 24)*q^332 + (2*zeta^2 + 2*zeta - 
4)*q^333 + (-36*zeta^2 + 60)*q^334 + (-28*zeta^2 + 14*zeta + 42)*q^337 + 
(9*zeta^2 - 15)*q^338 + (-12*zeta^2 - 12*zeta + 24)*q^339 + (-6*zeta + 2)*q^342 
+ (-24*zeta + 8)*q^344 + (36*zeta^2 - 36*zeta - 48)*q^346 + (-24*zeta^2 - 
24*zeta + 48)*q^347 + (-36*zeta^2 + 60)*q^348 + (56*zeta^2 - 28*zeta - 84)*q^349
+ (32*zeta^2 - 16*zeta - 48)*q^351 + (18*zeta^2 + 18*zeta - 36)*q^353 + 
(-36*zeta^2 + 36*zeta + 48)*q^354 + (-18*zeta + 6)*q^356 + (36*zeta - 12)*q^358 
+ (-24*zeta^2 + 48*zeta + 24)*q^359 + (-15*zeta^2 - 15*zeta + 30)*q^361 + 
(60*zeta^2 - 100)*q^362 + (-44*zeta^2 + 22*zeta + 66)*q^363 + (-48*zeta^2 + 
80)*q^366 + (8*zeta^2 + 8*zeta - 16)*q^367 + (6*zeta^2 - 12*zeta - 6)*q^369 + 
(24*zeta - 8)*q^372 + (14*zeta^2 - 28*zeta - 14)*q^373 + (-36*zeta^2 + 60)*q^376
+ (-48*zeta^2 + 24*zeta + 72)*q^377 + (32*zeta^2 - 16*zeta - 48)*q^379 + 
(32*zeta^2 + 32*zeta - 64)*q^381 + (-72*zeta^2 + 72*zeta + 96)*q^382 + 
(36*zeta^2 - 72*zeta - 36)*q^383 + (6*zeta - 2)*q^384 + (-42*zeta + 14)*q^386 + 
(8*zeta^2 - 16*zeta - 8)*q^387 + (-30*zeta^2 + 30*zeta + 40)*q^388 + (18*zeta^2 
+ 18*zeta - 36)*q^389 + (72*zeta^2 - 36*zeta - 108)*q^393 + (-54*zeta^2 + 
90)*q^394 + (20*zeta^2 - 40*zeta - 20)*q^397 + (-60*zeta + 20)*q^398 + (-15*zeta
+ 5)*q^400 + (-18*zeta^2 + 36*zeta + 18)*q^401 + (-24*zeta^2 + 24*zeta + 
32)*q^402 + (16*zeta^2 + 16*zeta - 32)*q^403 + O(q^406), (-3*zeta + 1)*q + 
(zeta^2 - 2*zeta - 1)*q^2 + (-5*zeta^2 - 5*zeta + 10)*q^4 + (14*zeta^2 - 7*zeta 
- 21)*q^8 + (-9*zeta^2 + 15)*q^9 + (-12*zeta^2 + 12*zeta + 16)*q^11 + (3*zeta^2 
- 6*zeta - 3)*q^16 + (-3*zeta^2 - 3*zeta + 6)*q^18 + (-8*zeta^2 + 4*zeta + 
12)*q^22 + (24*zeta^2 - 40)*q^23 + (15*zeta^2 - 15*zeta - 20)*q^25 + (-6*zeta + 
2)*q^29 + (17*zeta^2 + 17*zeta - 34)*q^32 + (-30*zeta^2 + 15*zeta + 45)*q^36 + 
(-18*zeta^2 + 30)*q^37 + (36*zeta - 12)*q^43 + (-20*zeta^2 + 40*zeta + 20)*q^44 
+ (8*zeta^2 + 8*zeta - 16)*q^46 + (10*zeta^2 - 5*zeta - 15)*q^50 + (30*zeta^2 - 
30*zeta - 40)*q^53 + (2*zeta^2 - 4*zeta - 2)*q^58 + (-22*zeta^2 + 11*zeta + 
33)*q^64 + (-12*zeta^2 + 12*zeta + 16)*q^67 + (-48*zeta + 16)*q^71 + (21*zeta^2 
- 42*zeta - 21)*q^72 + (-6*zeta^2 - 6*zeta + 12)*q^74 + (24*zeta^2 - 40)*q^79 + 
(-27*zeta^2 + 27*zeta + 36)*q^81 + (-12*zeta^2 + 24*zeta + 12)*q^86 + 
(-28*zeta^2 - 28*zeta + 56)*q^88 + (80*zeta^2 - 40*zeta - 120)*q^92 + (36*zeta -
12)*q^99 + (25*zeta^2 - 50*zeta - 25)*q^100 + (20*zeta^2 - 10*zeta - 30)*q^106 +
(-60*zeta^2 + 100)*q^107 + (-54*zeta^2 + 54*zeta + 72)*q^109 + (-6*zeta + 
2)*q^113 + (-10*zeta^2 - 10*zeta + 20)*q^116 + (15*zeta^2 - 25)*q^121 + 
(-48*zeta + 16)*q^127 + (-23*zeta^2 + 46*zeta + 23)*q^128 + (-8*zeta^2 + 4*zeta 
+ 12)*q^134 + (30*zeta^2 - 30*zeta - 40)*q^137 + (16*zeta^2 - 32*zeta - 
16)*q^142 + (-9*zeta^2 - 9*zeta + 18)*q^144 + (-60*zeta^2 + 30*zeta + 90)*q^148 
+ (66*zeta^2 - 110)*q^149 + (72*zeta^2 - 72*zeta - 96)*q^151 + (8*zeta^2 + 
8*zeta - 16)*q^158 + (-18*zeta^2 + 9*zeta + 27)*q^162 + (-60*zeta^2 + 100)*q^163
+ (39*zeta - 13)*q^169 + (60*zeta^2 + 60*zeta - 120)*q^172 + (-24*zeta^2 + 
12*zeta + 36)*q^176 + (-12*zeta^2 + 12*zeta + 16)*q^179 + (-56*zeta^2 + 112*zeta
+ 56)*q^184 + (24*zeta^2 - 40)*q^191 + (-54*zeta^2 + 54*zeta + 72)*q^193 + 
(78*zeta - 26)*q^197 + (-12*zeta^2 + 24*zeta + 12)*q^198 + (35*zeta^2 + 35*zeta 
- 70)*q^200 + (72*zeta^2 - 72*zeta - 96)*q^207 + (36*zeta - 12)*q^211 + 
(50*zeta^2 - 100*zeta - 50)*q^212 + (-20*zeta^2 - 20*zeta + 40)*q^214 + 
(-36*zeta^2 + 18*zeta + 54)*q^218 + (-45*zeta + 15)*q^225 + (2*zeta^2 - 4*zeta -
2)*q^226 + (28*zeta^2 - 14*zeta - 42)*q^232 + (66*zeta^2 - 110)*q^233 + 
(-48*zeta + 16)*q^239 + (5*zeta^2 + 5*zeta - 10)*q^242 + (-96*zeta + 32)*q^253 +
(16*zeta^2 - 32*zeta - 16)*q^254 + (-45*zeta^2 - 45*zeta + 90)*q^256 + 
(-18*zeta^2 + 30)*q^261 + (-96*zeta^2 + 96*zeta + 128)*q^263 + (-20*zeta^2 + 
40*zeta + 20)*q^268 + (20*zeta^2 - 10*zeta - 30)*q^274 + (-60*zeta^2 + 
100)*q^275 + (30*zeta^2 - 30*zeta - 40)*q^277 + (78*zeta - 26)*q^281 + 
(-80*zeta^2 - 80*zeta + 160)*q^284 + (102*zeta^2 - 51*zeta - 153)*q^288 + 
(-51*zeta^2 + 85)*q^289 + (42*zeta^2 - 84*zeta - 42)*q^296 + (22*zeta^2 + 
22*zeta - 44)*q^298 + (48*zeta^2 - 24*zeta - 72)*q^302 + (80*zeta^2 - 40*zeta - 
120)*q^316 + (-102*zeta^2 + 170)*q^317 + (-24*zeta^2 + 24*zeta + 32)*q^319 + 
(-45*zeta^2 + 90*zeta + 45)*q^324 + (-20*zeta^2 - 20*zeta + 40)*q^326 + 
(108*zeta^2 - 180)*q^331 + (-54*zeta^2 + 54*zeta + 72)*q^333 + (-90*zeta + 
30)*q^337 + (-13*zeta^2 + 26*zeta + 13)*q^338 + (-168*zeta^2 + 84*zeta + 
252)*q^344 + (-12*zeta^2 + 12*zeta + 16)*q^347 + (68*zeta^2 - 136*zeta - 
68)*q^352 + (-8*zeta^2 + 4*zeta + 12)*q^358 + (24*zeta^2 - 40)*q^359 + 
(57*zeta^2 - 57*zeta - 76)*q^361 + (24*zeta^2 + 24*zeta - 48)*q^368 + (66*zeta^2
- 110)*q^373 + (36*zeta - 12)*q^379 + (8*zeta^2 + 8*zeta - 16)*q^382 + 
(-36*zeta^2 + 18*zeta + 54)*q^386 + (108*zeta^2 - 180)*q^387 + (114*zeta^2 - 
114*zeta - 152)*q^389 + (-26*zeta^2 + 52*zeta + 26)*q^394 + (60*zeta^2 + 60*zeta
- 120)*q^396 + (30*zeta^2 - 15*zeta - 45)*q^400 + (-102*zeta^2 + 170)*q^401 + 
O(q^406), (-6*zeta^2 - 3*zeta + 11)*q + (3*zeta^2 + 12*zeta - 9)*q^2 + 
(-6*zeta^2 + 18*zeta + 4)*q^3 + (15*zeta^2 - 3*zeta - 24)*q^4 + (24*zeta^2 - 
30*zeta - 30)*q^6 + (12*zeta^2 - 15*zeta - 15)*q^8 + (9*zeta^2 - 6*zeta - 
13)*q^9 + (-6*zeta^2 - 24*zeta + 18)*q^12 + (-24*zeta^2 - 12*zeta + 44)*q^13 + 
(-3*zeta^2 - 12*zeta + 9)*q^16 + (18*zeta^2 - 54*zeta - 12)*q^17 + (-15*zeta^2 +
3*zeta + 24)*q^18 + (-18*zeta^2 + 12*zeta + 26)*q^19 + (-30*zeta^2 + 6*zeta + 
48)*q^24 + (15*zeta^2 - 45*zeta - 10)*q^25 + (12*zeta^2 + 48*zeta - 36)*q^26 + 
(24*zeta^2 + 12*zeta - 44)*q^27 + (36*zeta^2 + 18*zeta - 66)*q^29 + (-12*zeta^2 
+ 36*zeta + 8)*q^31 + (-15*zeta^2 + 3*zeta + 24)*q^32 + (-72*zeta^2 + 90*zeta + 
90)*q^34 + (-12*zeta^2 + 15*zeta + 15)*q^36 + (18*zeta^2 - 12*zeta - 26)*q^37 + 
(30*zeta^2 - 6*zeta - 48)*q^38 + (-24*zeta^2 + 72*zeta + 16)*q^39 + (36*zeta^2 +
18*zeta - 66)*q^41 + (-48*zeta^2 - 24*zeta + 88)*q^43 + (108*zeta^2 - 72*zeta - 
156)*q^47 + (-24*zeta^2 + 30*zeta + 30)*q^48 + (-60*zeta^2 + 75*zeta + 75)*q^50 
+ (-108*zeta^2 + 72*zeta + 156)*q^51 + (60*zeta^2 - 12*zeta - 96)*q^52 + 
(-18*zeta^2 + 54*zeta + 12)*q^53 + (-12*zeta^2 - 48*zeta + 36)*q^54 + (24*zeta^2
+ 12*zeta - 44)*q^57 + (-18*zeta^2 - 72*zeta + 54)*q^58 + (-18*zeta^2 + 54*zeta 
+ 12)*q^59 + (-72*zeta^2 + 48*zeta + 104)*q^61 + (48*zeta^2 - 60*zeta - 60)*q^62
+ (-12*zeta^2 + 15*zeta + 15)*q^64 + (12*zeta^2 - 36*zeta - 8)*q^67 + (18*zeta^2
+ 72*zeta - 54)*q^68 + (3*zeta^2 + 12*zeta - 9)*q^72 + (6*zeta^2 - 18*zeta - 
4)*q^73 + (-30*zeta^2 + 6*zeta + 48)*q^74 + (-90*zeta^2 + 60*zeta + 130)*q^75 + 
(24*zeta^2 - 30*zeta - 30)*q^76 + (96*zeta^2 - 120*zeta - 120)*q^78 + (72*zeta^2
- 48*zeta - 104)*q^79 + (33*zeta^2 - 99*zeta - 22)*q^81 + (-18*zeta^2 - 72*zeta 
+ 54)*q^82 + (-36*zeta^2 - 18*zeta + 66)*q^83 + (24*zeta^2 + 96*zeta - 72)*q^86 
+ (36*zeta^2 - 108*zeta - 24)*q^87 + (54*zeta^2 - 36*zeta - 78)*q^89 + 
(72*zeta^2 - 48*zeta - 104)*q^93 + (-180*zeta^2 + 36*zeta + 288)*q^94 + 
(6*zeta^2 + 24*zeta - 18)*q^96 + (-60*zeta^2 - 30*zeta + 110)*q^97 + (15*zeta^2 
+ 60*zeta - 45)*q^100 + (180*zeta^2 - 36*zeta - 288)*q^102 + (36*zeta^2 - 
24*zeta - 52)*q^103 + (48*zeta^2 - 60*zeta - 60)*q^104 + (72*zeta^2 - 90*zeta - 
90)*q^106 + (108*zeta^2 - 72*zeta - 156)*q^107 + (-60*zeta^2 + 12*zeta + 
96)*q^108 + (-6*zeta^2 + 18*zeta + 4)*q^109 + (-24*zeta^2 - 12*zeta + 44)*q^111 
+ (-36*zeta^2 - 18*zeta + 66)*q^113 + (-12*zeta^2 - 48*zeta + 36)*q^114 + 
(-90*zeta^2 + 18*zeta + 144)*q^116 + (36*zeta^2 - 24*zeta - 52)*q^117 + 
(72*zeta^2 - 90*zeta - 90)*q^118 + (-99*zeta^2 + 66*zeta + 143)*q^121 + 
(120*zeta^2 - 24*zeta - 192)*q^122 + (36*zeta^2 - 108*zeta - 24)*q^123 + 
(-12*zeta^2 - 48*zeta + 36)*q^124 + (96*zeta^2 + 48*zeta - 176)*q^127 + 
(3*zeta^2 + 12*zeta - 9)*q^128 + (-48*zeta^2 + 144*zeta + 32)*q^129 + 
(-162*zeta^2 + 108*zeta + 234)*q^131 + (-48*zeta^2 + 60*zeta + 60)*q^134 + 
(90*zeta^2 - 18*zeta - 144)*q^136 + (-54*zeta^2 + 162*zeta + 36)*q^137 + 
(84*zeta^2 + 42*zeta - 154)*q^139 + (-144*zeta^2 - 72*zeta + 264)*q^141 + 
(15*zeta^2 - 3*zeta - 24)*q^144 + (-24*zeta^2 + 30*zeta + 30)*q^146 + 
(-24*zeta^2 + 30*zeta + 30)*q^148 + (-162*zeta^2 + 108*zeta + 234)*q^149 + 
(150*zeta^2 - 30*zeta - 240)*q^150 + (-24*zeta^2 + 72*zeta + 16)*q^151 + 
(-6*zeta^2 - 24*zeta + 18)*q^152 + (36*zeta^2 + 18*zeta - 66)*q^153 + 
(-24*zeta^2 - 96*zeta + 72)*q^156 + (-12*zeta^2 + 36*zeta + 8)*q^157 + 
(-120*zeta^2 + 24*zeta + 192)*q^158 + (108*zeta^2 - 72*zeta - 156)*q^159 + 
(-132*zeta^2 + 165*zeta + 165)*q^162 + (-144*zeta^2 + 96*zeta + 208)*q^163 + 
(-90*zeta^2 + 18*zeta + 144)*q^164 + (18*zeta^2 + 72*zeta - 54)*q^166 + 
(-72*zeta^2 - 36*zeta + 132)*q^167 + (-18*zeta^2 - 9*zeta + 33)*q^169 + 
(6*zeta^2 - 18*zeta - 4)*q^171 + (120*zeta^2 - 24*zeta - 192)*q^172 + 
(108*zeta^2 - 72*zeta - 156)*q^173 + (-144*zeta^2 + 180*zeta + 180)*q^174 + 
(108*zeta^2 - 72*zeta - 156)*q^177 + (-90*zeta^2 + 18*zeta + 144)*q^178 + 
(36*zeta^2 - 108*zeta - 24)*q^179 + (120*zeta^2 + 60*zeta - 220)*q^181 + 
(96*zeta^2 + 48*zeta - 176)*q^183 + (-120*zeta^2 + 24*zeta + 192)*q^186 + 
(-144*zeta^2 + 180*zeta + 180)*q^188 + (216*zeta^2 - 144*zeta - 312)*q^191 + 
(30*zeta^2 - 6*zeta - 48)*q^192 + (-42*zeta^2 + 126*zeta + 28)*q^193 + 
(30*zeta^2 + 120*zeta - 90)*q^194 + (108*zeta^2 + 54*zeta - 198)*q^197 + 
(60*zeta^2 - 180*zeta - 40)*q^199 + (75*zeta^2 - 15*zeta - 120)*q^200 + 
(-72*zeta^2 + 48*zeta + 104)*q^201 + (144*zeta^2 - 180*zeta - 180)*q^204 + 
(-60*zeta^2 + 12*zeta + 96)*q^206 + (-12*zeta^2 - 48*zeta + 36)*q^208 + 
(24*zeta^2 + 12*zeta - 44)*q^211 + (-18*zeta^2 - 72*zeta + 54)*q^212 + 
(-180*zeta^2 + 36*zeta + 288)*q^214 + (-48*zeta^2 + 60*zeta + 60)*q^216 + 
(24*zeta^2 - 30*zeta - 30)*q^218 + (-36*zeta^2 + 24*zeta + 52)*q^219 + 
(72*zeta^2 - 216*zeta - 48)*q^221 + (12*zeta^2 + 48*zeta - 36)*q^222 + 
(48*zeta^2 + 24*zeta - 88)*q^223 + (30*zeta^2 + 15*zeta - 55)*q^225 + (18*zeta^2
+ 72*zeta - 54)*q^226 + (54*zeta^2 - 162*zeta - 36)*q^227 + (-60*zeta^2 + 
12*zeta + 96)*q^228 + (36*zeta^2 - 24*zeta - 52)*q^229 + (-72*zeta^2 + 90*zeta +
90)*q^232 + (-54*zeta^2 + 36*zeta + 78)*q^233 + (-60*zeta^2 + 12*zeta + 
96)*q^234 + (-18*zeta^2 - 72*zeta + 54)*q^236 + (-96*zeta^2 - 48*zeta + 
176)*q^237 + (-144*zeta^2 - 72*zeta + 264)*q^239 + (-30*zeta^2 + 90*zeta + 
20)*q^241 + (165*zeta^2 - 33*zeta - 264)*q^242 + (-90*zeta^2 + 60*zeta + 
130)*q^243 + (96*zeta^2 - 120*zeta - 120)*q^244 + (-144*zeta^2 + 180*zeta + 
180)*q^246 + (-72*zeta^2 + 48*zeta + 104)*q^247 + (-60*zeta^2 + 12*zeta + 
96)*q^248 + (-36*zeta^2 + 108*zeta + 24)*q^249 + (-108*zeta^2 - 54*zeta + 
198)*q^251 + (-48*zeta^2 - 192*zeta + 144)*q^254 + (15*zeta^2 - 3*zeta - 
24)*q^256 + (-162*zeta^2 + 108*zeta + 234)*q^257 + (192*zeta^2 - 240*zeta - 
240)*q^258 + (-54*zeta^2 + 36*zeta + 78)*q^261 + (270*zeta^2 - 54*zeta - 
432)*q^262 + (-72*zeta^2 - 36*zeta + 132)*q^267 + (12*zeta^2 + 48*zeta - 
36)*q^268 + (-36*zeta^2 + 108*zeta + 24)*q^269 + (144*zeta^2 - 96*zeta - 
208)*q^271 + (72*zeta^2 - 90*zeta - 90)*q^272 + (216*zeta^2 - 270*zeta - 
270)*q^274 + (30*zeta^2 - 90*zeta - 20)*q^277 + (-42*zeta^2 - 168*zeta + 
126)*q^278 + (-24*zeta^2 - 12*zeta + 44)*q^279 + (36*zeta^2 + 18*zeta - 
66)*q^281 + (72*zeta^2 + 288*zeta - 216)*q^282 + (-66*zeta^2 + 198*zeta + 
44)*q^283 + (12*zeta^2 - 15*zeta - 15)*q^288 + (171*zeta^2 - 114*zeta - 
247)*q^289 + (-60*zeta^2 + 180*zeta + 40)*q^291 + (6*zeta^2 + 24*zeta - 
18)*q^292 + (144*zeta^2 + 72*zeta - 264)*q^293 + (6*zeta^2 + 24*zeta - 18)*q^296
+ (270*zeta^2 - 54*zeta - 432)*q^298 + (120*zeta^2 - 150*zeta - 150)*q^300 + 
(96*zeta^2 - 120*zeta - 120)*q^302 + (-30*zeta^2 + 6*zeta + 48)*q^304 + 
(-18*zeta^2 - 72*zeta + 54)*q^306 + (12*zeta^2 + 6*zeta - 22)*q^307 + 
(-48*zeta^2 - 24*zeta + 88)*q^309 + (-72*zeta^2 + 216*zeta + 48)*q^311 + 
(-120*zeta^2 + 24*zeta + 192)*q^312 + (90*zeta^2 - 60*zeta - 130)*q^313 + 
(48*zeta^2 - 60*zeta - 60)*q^314 + (-96*zeta^2 + 120*zeta + 120)*q^316 + 
(54*zeta^2 - 36*zeta - 78)*q^317 + (-180*zeta^2 + 36*zeta + 288)*q^318 + 
(-144*zeta^2 - 72*zeta + 264)*q^321 + (-72*zeta^2 - 36*zeta + 132)*q^323 + 
(33*zeta^2 + 132*zeta - 99)*q^324 + (60*zeta^2 - 180*zeta - 40)*q^325 + 
(240*zeta^2 - 48*zeta - 384)*q^326 + (36*zeta^2 - 24*zeta - 52)*q^327 + 
(-72*zeta^2 + 90*zeta + 90)*q^328 + (72*zeta^2 - 48*zeta - 104)*q^331 + 
(90*zeta^2 - 18*zeta - 144)*q^332 + (-6*zeta^2 + 18*zeta + 4)*q^333 + (36*zeta^2
+ 144*zeta - 108)*q^334 + (-84*zeta^2 - 42*zeta + 154)*q^337 + (9*zeta^2 + 
36*zeta - 27)*q^338 + (-36*zeta^2 + 108*zeta + 24)*q^339 + (-24*zeta^2 + 30*zeta
+ 30)*q^342 + (96*zeta^2 - 120*zeta - 120)*q^344 + (-180*zeta^2 + 36*zeta + 
288)*q^346 + (72*zeta^2 - 216*zeta - 48)*q^347 + (36*zeta^2 + 144*zeta - 
108)*q^348 + (-168*zeta^2 - 84*zeta + 308)*q^349 + (96*zeta^2 + 48*zeta - 
176)*q^351 + (54*zeta^2 - 162*zeta - 36)*q^353 + (-180*zeta^2 + 36*zeta + 
288)*q^354 + (-72*zeta^2 + 90*zeta + 90)*q^356 + (-144*zeta^2 + 180*zeta + 
180)*q^358 + (-216*zeta^2 + 144*zeta + 312)*q^359 + (45*zeta^2 - 135*zeta - 
30)*q^361 + (-60*zeta^2 - 240*zeta + 180)*q^362 + (132*zeta^2 + 66*zeta - 
242)*q^363 + (-48*zeta^2 - 192*zeta + 144)*q^366 + (24*zeta^2 - 72*zeta - 
16)*q^367 + (-54*zeta^2 + 36*zeta + 78)*q^369 + (-96*zeta^2 + 120*zeta + 
120)*q^372 + (126*zeta^2 - 84*zeta - 182)*q^373 + (36*zeta^2 + 144*zeta - 
108)*q^376 + (144*zeta^2 + 72*zeta - 264)*q^377 + (96*zeta^2 + 48*zeta - 
176)*q^379 + (96*zeta^2 - 288*zeta - 64)*q^381 + (-360*zeta^2 + 72*zeta + 
576)*q^382 + (-324*zeta^2 + 216*zeta + 468)*q^383 + (24*zeta^2 - 30*zeta - 
30)*q^384 + (168*zeta^2 - 210*zeta - 210)*q^386 + (72*zeta^2 - 48*zeta - 
104)*q^387 + (150*zeta^2 - 30*zeta - 240)*q^388 + (-54*zeta^2 + 162*zeta + 
36)*q^389 + (216*zeta^2 + 108*zeta - 396)*q^393 + (-54*zeta^2 - 216*zeta + 
162)*q^394 + (-180*zeta^2 + 120*zeta + 260)*q^397 + (-240*zeta^2 + 300*zeta + 
300)*q^398 + (60*zeta^2 - 75*zeta - 75)*q^400 + (-162*zeta^2 + 108*zeta + 
234)*q^401 + (120*zeta^2 - 24*zeta - 192)*q^402 + (-48*zeta^2 + 144*zeta + 
32)*q^403 + O(q^406), (-3*zeta^2 + 5)*q + (-3*zeta^2 - 3*zeta + 6)*q^2 + (zeta^2
- 5*zeta)*q^3 + (6*zeta^2 - 3*zeta - 9)*q^4 + (10*zeta^2 - 8*zeta - 14)*q^5 + 
(6*zeta^2 - 9*zeta - 7)*q^6 + (-3*zeta^2 + 6*zeta + 3)*q^8 + (-3*zeta^2 + 3*zeta
+ 4)*q^9 + (18*zeta^2 - 6*zeta - 28)*q^10 + (-6*zeta + 2)*q^11 + (3*zeta^2 + 
6*zeta - 7)*q^12 + (12*zeta^2 - 20)*q^15 + (-3*zeta^2 - 3*zeta + 6)*q^16 + 
(zeta^2 - 5*zeta)*q^17 + (-6*zeta^2 + 3*zeta + 9)*q^18 + (-25*zeta^2 + 20*zeta +
35)*q^19 + (-12*zeta^2 + 18*zeta + 14)*q^20 + (6*zeta^2 - 12*zeta - 6)*q^22 + 
(-12*zeta^2 + 12*zeta + 16)*q^23 + (-9*zeta^2 + 3*zeta + 14)*q^24 + (9*zeta - 
3)*q^25 + (-16*zeta^2 - 4*zeta + 28)*q^27 + (-6*zeta^2 + 10)*q^29 + (12*zeta^2 +
12*zeta - 24)*q^30 + (-6*zeta^2 + 30*zeta)*q^31 + (6*zeta^2 - 3*zeta - 9)*q^32 +
(10*zeta^2 - 8*zeta - 14)*q^33 + (6*zeta^2 - 9*zeta - 7)*q^34 + (3*zeta^2 - 
6*zeta - 3)*q^36 + (30*zeta^2 - 30*zeta - 40)*q^37 + (-45*zeta^2 + 15*zeta + 
70)*q^38 + (-6*zeta^2 - 12*zeta + 14)*q^40 + (28*zeta^2 + 7*zeta - 49)*q^41 + 
(-6*zeta^2 + 10)*q^43 + (6*zeta^2 + 6*zeta - 12)*q^44 + (2*zeta^2 - 
10*zeta)*q^45 + (-24*zeta^2 + 12*zeta + 36)*q^46 + (10*zeta^2 - 8*zeta - 
14)*q^47 + (6*zeta^2 - 9*zeta - 7)*q^48 + (-9*zeta^2 + 18*zeta + 9)*q^50 + 
(6*zeta^2 - 6*zeta - 8)*q^51 + (-6*zeta + 2)*q^53 + (-12*zeta^2 - 24*zeta + 
28)*q^54 + (16*zeta^2 + 4*zeta - 28)*q^55 + (-30*zeta^2 + 50)*q^57 + (-6*zeta^2 
- 6*zeta + 12)*q^58 + (zeta^2 - 5*zeta)*q^59 + (-24*zeta^2 + 12*zeta + 36)*q^60 
+ (10*zeta^2 - 8*zeta - 14)*q^61 + (-36*zeta^2 + 54*zeta + 42)*q^62 + (-3*zeta^2
+ 6*zeta + 3)*q^64 + (18*zeta^2 - 6*zeta - 28)*q^66 + (36*zeta - 12)*q^67 + 
(3*zeta^2 + 6*zeta - 7)*q^68 + (-16*zeta^2 - 4*zeta + 28)*q^69 + (36*zeta^2 - 
60)*q^71 + (3*zeta^2 + 3*zeta - 6)*q^72 + (zeta^2 - 5*zeta)*q^73 + (60*zeta^2 - 
30*zeta - 90)*q^74 + (-15*zeta^2 + 12*zeta + 21)*q^75 + (30*zeta^2 - 45*zeta - 
35)*q^76 + (-12*zeta^2 + 12*zeta + 16)*q^79 + (18*zeta^2 - 6*zeta - 28)*q^80 + 
(-15*zeta + 5)*q^81 + (21*zeta^2 + 42*zeta - 49)*q^82 + (-28*zeta^2 - 7*zeta + 
49)*q^83 + (12*zeta^2 - 20)*q^85 + (-6*zeta^2 - 6*zeta + 12)*q^86 + (2*zeta^2 - 
10*zeta)*q^87 + (-12*zeta^2 + 6*zeta + 18)*q^88 + (-25*zeta^2 + 20*zeta + 
35)*q^89 + (12*zeta^2 - 18*zeta - 14)*q^90 + (12*zeta^2 - 24*zeta - 12)*q^92 + 
(-36*zeta^2 + 36*zeta + 48)*q^93 + (18*zeta^2 - 6*zeta - 28)*q^94 + (-60*zeta + 
20)*q^95 + (3*zeta^2 + 6*zeta - 7)*q^96 + (-28*zeta^2 - 7*zeta + 49)*q^97 + 
(-6*zeta^2 + 10)*q^99 + (-9*zeta^2 - 9*zeta + 18)*q^100 + (-6*zeta^2 + 
30*zeta)*q^101 + (12*zeta^2 - 6*zeta - 18)*q^102 + (10*zeta^2 - 8*zeta - 
14)*q^103 + (6*zeta^2 - 12*zeta - 6)*q^106 + (-12*zeta^2 + 12*zeta + 16)*q^107 +
(36*zeta^2 - 12*zeta - 56)*q^108 + (-6*zeta + 2)*q^109 + (12*zeta^2 + 24*zeta - 
28)*q^110 + (40*zeta^2 + 10*zeta - 70)*q^111 + (36*zeta^2 - 60)*q^113 + 
(-30*zeta^2 - 30*zeta + 60)*q^114 + (8*zeta^2 - 40*zeta)*q^115 + (12*zeta^2 - 
6*zeta - 18)*q^116 + (6*zeta^2 - 9*zeta - 7)*q^118 + (12*zeta^2 - 24*zeta - 
12)*q^120 + (-21*zeta^2 + 21*zeta + 28)*q^121 + (18*zeta^2 - 6*zeta - 28)*q^122 
+ (42*zeta - 14)*q^123 + (-18*zeta^2 - 36*zeta + 42)*q^124 + (16*zeta^2 + 4*zeta
- 28)*q^125 + (-48*zeta^2 + 80)*q^127 + (-3*zeta^2 - 3*zeta + 6)*q^128 + 
(2*zeta^2 - 10*zeta)*q^129 + (45*zeta^2 - 36*zeta - 63)*q^131 + (-12*zeta^2 + 
18*zeta + 14)*q^132 + (-36*zeta^2 + 72*zeta + 36)*q^134 + (48*zeta^2 - 48*zeta -
64)*q^135 + (-9*zeta^2 + 3*zeta + 14)*q^136 + (36*zeta - 12)*q^137 + (-12*zeta^2
- 24*zeta + 28)*q^138 + (-28*zeta^2 - 7*zeta + 49)*q^139 + (12*zeta^2 - 
20)*q^141 + (36*zeta^2 + 36*zeta - 72)*q^142 + (-6*zeta^2 + 3*zeta + 9)*q^144 + 
(20*zeta^2 - 16*zeta - 28)*q^145 + (6*zeta^2 - 9*zeta - 7)*q^146 + (-30*zeta^2 +
60*zeta + 30)*q^148 + (30*zeta^2 - 30*zeta - 40)*q^149 + (-27*zeta^2 + 9*zeta + 
42)*q^150 + (-48*zeta + 16)*q^151 + (15*zeta^2 + 30*zeta - 35)*q^152 + 
(-4*zeta^2 - zeta + 7)*q^153 + (-72*zeta^2 + 120)*q^155 + (8*zeta^2 - 
40*zeta)*q^157 + (-24*zeta^2 + 12*zeta + 36)*q^158 + (10*zeta^2 - 8*zeta - 
14)*q^159 + (-12*zeta^2 + 18*zeta + 14)*q^160 + (15*zeta^2 - 30*zeta - 15)*q^162
+ (30*zeta^2 - 30*zeta - 40)*q^163 + (-63*zeta^2 + 21*zeta + 98)*q^164 + 
(24*zeta - 8)*q^165 + (-21*zeta^2 - 42*zeta + 49)*q^166 + (56*zeta^2 + 14*zeta -
98)*q^167 + (39*zeta^2 - 65)*q^169 + (12*zeta^2 + 12*zeta - 24)*q^170 + 
(-5*zeta^2 + 25*zeta)*q^171 + (12*zeta^2 - 6*zeta - 18)*q^172 + (-60*zeta^2 + 
48*zeta + 84)*q^173 + (12*zeta^2 - 18*zeta - 14)*q^174 + (6*zeta^2 - 12*zeta - 
6)*q^176 + (6*zeta^2 - 6*zeta - 8)*q^177 + (-45*zeta^2 + 15*zeta + 70)*q^178 + 
(36*zeta - 12)*q^179 + (6*zeta^2 + 12*zeta - 14)*q^180 + (12*zeta^2 - 20)*q^183 
+ (12*zeta^2 + 12*zeta - 24)*q^184 + (-20*zeta^2 + 100*zeta)*q^185 + (-72*zeta^2
+ 36*zeta + 108)*q^186 + (10*zeta^2 - 8*zeta - 14)*q^187 + (-12*zeta^2 + 18*zeta
+ 14)*q^188 + (60*zeta^2 - 120*zeta - 60)*q^190 + (-12*zeta^2 + 12*zeta + 
16)*q^191 + (-9*zeta^2 + 3*zeta + 14)*q^192 + (-48*zeta + 16)*q^193 + 
(-21*zeta^2 - 42*zeta + 49)*q^194 + (-6*zeta^2 + 10)*q^197 + (-6*zeta^2 - 6*zeta
+ 12)*q^198 + (-6*zeta^2 + 30*zeta)*q^199 + (18*zeta^2 - 9*zeta - 27)*q^200 + 
(-60*zeta^2 + 48*zeta + 84)*q^201 + (-36*zeta^2 + 54*zeta + 42)*q^202 + 
(-6*zeta^2 + 12*zeta + 6)*q^204 + (-84*zeta^2 + 84*zeta + 112)*q^205 + 
(18*zeta^2 - 6*zeta - 28)*q^206 + (12*zeta - 4)*q^207 + (-40*zeta^2 - 10*zeta + 
70)*q^209 + (36*zeta^2 - 60)*q^211 + (6*zeta^2 + 6*zeta - 12)*q^212 + 
(-12*zeta^2 + 60*zeta)*q^213 + (-24*zeta^2 + 12*zeta + 36)*q^214 + (20*zeta^2 - 
16*zeta - 28)*q^215 + (-24*zeta^2 + 36*zeta + 28)*q^216 + (6*zeta^2 - 12*zeta - 
6)*q^218 + (6*zeta^2 - 6*zeta - 8)*q^219 + (-36*zeta^2 + 12*zeta + 56)*q^220 + 
(30*zeta^2 + 60*zeta - 70)*q^222 + (9*zeta^2 - 15)*q^225 + (36*zeta^2 + 36*zeta 
- 72)*q^226 + (15*zeta^2 - 75*zeta)*q^227 + (60*zeta^2 - 30*zeta - 90)*q^228 + 
(-60*zeta^2 + 48*zeta + 84)*q^229 + (48*zeta^2 - 72*zeta - 56)*q^230 + 
(-6*zeta^2 + 12*zeta + 6)*q^232 + (72*zeta^2 - 72*zeta - 96)*q^233 + (24*zeta - 
8)*q^235 + (3*zeta^2 + 6*zeta - 7)*q^236 + (-16*zeta^2 - 4*zeta + 28)*q^237 + 
(36*zeta^2 - 60)*q^239 + (12*zeta^2 + 12*zeta - 24)*q^240 + (15*zeta^2 - 
75*zeta)*q^241 + (-42*zeta^2 + 21*zeta + 63)*q^242 + (-35*zeta^2 + 28*zeta + 
49)*q^243 + (-12*zeta^2 + 18*zeta + 14)*q^244 + (-42*zeta^2 + 84*zeta + 
42)*q^246 + (54*zeta^2 - 18*zeta - 84)*q^248 + (-42*zeta + 14)*q^249 + 
(12*zeta^2 + 24*zeta - 28)*q^250 + (-28*zeta^2 - 7*zeta + 49)*q^251 + 
(-24*zeta^2 + 40)*q^253 + (-48*zeta^2 - 48*zeta + 96)*q^254 + (-4*zeta^2 + 
20*zeta)*q^255 + (6*zeta^2 - 3*zeta - 9)*q^256 + (45*zeta^2 - 36*zeta - 
63)*q^257 + (12*zeta^2 - 18*zeta - 14)*q^258 + (-6*zeta^2 + 6*zeta + 8)*q^261 + 
(81*zeta^2 - 27*zeta - 126)*q^262 + (36*zeta - 12)*q^263 + (-6*zeta^2 - 12*zeta 
+ 14)*q^264 + (16*zeta^2 + 4*zeta - 28)*q^265 + (-30*zeta^2 + 50)*q^267 + 
(-36*zeta^2 - 36*zeta + 72)*q^268 + (8*zeta^2 - 40*zeta)*q^269 + (96*zeta^2 - 
48*zeta - 144)*q^270 + (80*zeta^2 - 64*zeta - 112)*q^271 + (6*zeta^2 - 9*zeta - 
7)*q^272 + (-36*zeta^2 + 72*zeta + 36)*q^274 + (-18*zeta^2 + 18*zeta + 24)*q^275
+ (36*zeta^2 - 12*zeta - 56)*q^276 + (-6*zeta + 2)*q^277 + (-21*zeta^2 - 42*zeta
+ 49)*q^278 + (24*zeta^2 + 6*zeta - 42)*q^279 + (-48*zeta^2 + 80)*q^281 + 
(12*zeta^2 + 12*zeta - 24)*q^282 + (zeta^2 - 5*zeta)*q^283 + (-72*zeta^2 + 
36*zeta + 108)*q^284 + (100*zeta^2 - 80*zeta - 140)*q^285 + (3*zeta^2 - 6*zeta -
3)*q^288 + (-45*zeta^2 + 45*zeta + 60)*q^289 + (36*zeta^2 - 12*zeta - 56)*q^290 
+ (-42*zeta + 14)*q^291 + (3*zeta^2 + 6*zeta - 7)*q^292 + (56*zeta^2 + 14*zeta -
98)*q^293 + (12*zeta^2 - 20)*q^295 + (-30*zeta^2 - 30*zeta + 60)*q^296 + 
(8*zeta^2 - 40*zeta)*q^297 + (60*zeta^2 - 30*zeta - 90)*q^298 + (18*zeta^2 - 
27*zeta - 21)*q^300 + (48*zeta^2 - 96*zeta - 48)*q^302 + (-36*zeta^2 + 36*zeta +
48)*q^303 + (-45*zeta^2 + 15*zeta + 70)*q^304 + (24*zeta - 8)*q^305 + (-3*zeta^2
- 6*zeta + 7)*q^306 + (28*zeta^2 + 7*zeta - 49)*q^307 + (12*zeta^2 - 20)*q^309 +
(-72*zeta^2 - 72*zeta + 144)*q^310 + (8*zeta^2 - 40*zeta)*q^311 + (45*zeta^2 - 
36*zeta - 63)*q^313 + (48*zeta^2 - 72*zeta - 56)*q^314 + (12*zeta^2 - 24*zeta - 
12)*q^316 + (30*zeta^2 - 30*zeta - 40)*q^317 + (18*zeta^2 - 6*zeta - 28)*q^318 +
(-12*zeta + 4)*q^319 + (-6*zeta^2 - 12*zeta + 14)*q^320 + (-16*zeta^2 - 4*zeta +
28)*q^321 + (-30*zeta^2 + 50)*q^323 + (15*zeta^2 + 15*zeta - 30)*q^324 + 
(60*zeta^2 - 30*zeta - 90)*q^326 + (10*zeta^2 - 8*zeta - 14)*q^327 + (42*zeta^2 
- 63*zeta - 49)*q^328 + (-24*zeta^2 + 48*zeta + 24)*q^330 + (30*zeta^2 - 30*zeta
- 40)*q^331 + (63*zeta^2 - 21*zeta - 98)*q^332 + (-30*zeta + 10)*q^333 + 
(42*zeta^2 + 84*zeta - 98)*q^334 + (-96*zeta^2 - 24*zeta + 168)*q^335 + 
(-6*zeta^2 + 10)*q^337 + (39*zeta^2 + 39*zeta - 78)*q^338 + (-12*zeta^2 + 
60*zeta)*q^339 + (-24*zeta^2 + 12*zeta + 36)*q^340 + (-60*zeta^2 + 48*zeta + 
84)*q^341 + (-30*zeta^2 + 45*zeta + 35)*q^342 + (-6*zeta^2 + 12*zeta + 6)*q^344 
+ (48*zeta^2 - 48*zeta - 64)*q^345 + (-108*zeta^2 + 36*zeta + 168)*q^346 + 
(-90*zeta + 30)*q^347 + (6*zeta^2 + 12*zeta - 14)*q^348 + (6*zeta^2 + 6*zeta - 
12)*q^352 + (zeta^2 - 5*zeta)*q^353 + (12*zeta^2 - 6*zeta - 18)*q^354 + 
(-120*zeta^2 + 96*zeta + 168)*q^355 + (30*zeta^2 - 45*zeta - 35)*q^356 + 
(-36*zeta^2 + 72*zeta + 36)*q^358 + (-96*zeta^2 + 96*zeta + 128)*q^359 + 
(-18*zeta^2 + 6*zeta + 28)*q^360 + (93*zeta - 31)*q^361 + (-28*zeta^2 - 7*zeta +
49)*q^363 + (12*zeta^2 - 20)*q^365 + (12*zeta^2 + 12*zeta - 24)*q^366 + 
(-20*zeta^2 + 100*zeta)*q^367 + (-24*zeta^2 + 12*zeta + 36)*q^368 + (35*zeta^2 -
28*zeta - 49)*q^369 + (-120*zeta^2 + 180*zeta + 140)*q^370 + (36*zeta^2 - 
72*zeta - 36)*q^372 + (30*zeta^2 - 30*zeta - 40)*q^373 + (18*zeta^2 - 6*zeta - 
28)*q^374 + (24*zeta - 8)*q^375 + (-6*zeta^2 - 12*zeta + 14)*q^376 + (78*zeta^2 
- 130)*q^379 + (60*zeta^2 + 60*zeta - 120)*q^380 + (16*zeta^2 - 80*zeta)*q^381 +
(-24*zeta^2 + 12*zeta + 36)*q^382 + (-130*zeta^2 + 104*zeta + 182)*q^383 + 
(6*zeta^2 - 9*zeta - 7)*q^384 + (48*zeta^2 - 96*zeta - 48)*q^386 + (-6*zeta^2 + 
6*zeta + 8)*q^387 + (63*zeta^2 - 21*zeta - 98)*q^388 + (78*zeta - 26)*q^389 + 
(-16*zeta^2 - 4*zeta + 28)*q^391 + (54*zeta^2 - 90)*q^393 + (-6*zeta^2 - 6*zeta 
+ 12)*q^394 + (8*zeta^2 - 40*zeta)*q^395 + (12*zeta^2 - 6*zeta - 18)*q^396 + 
(80*zeta^2 - 64*zeta - 112)*q^397 + (-36*zeta^2 + 54*zeta + 42)*q^398 + 
(-9*zeta^2 + 18*zeta + 9)*q^400 + (-54*zeta^2 + 54*zeta + 72)*q^401 + 
(-108*zeta^2 + 36*zeta + 168)*q^402 + (-18*zeta^2 - 36*zeta + 42)*q^404 + 
(40*zeta^2 + 10*zeta - 70)*q^405 + O(q^406), (-zeta^2 + 5*zeta)*q + (-6*zeta^2 +
9*zeta + 7)*q^2 + (7*zeta^2 - 5*zeta - 10)*q^3 + (-3*zeta^2 - 6*zeta + 7)*q^4 + 
(10*zeta^2 + 4*zeta - 18)*q^5 + (12*zeta^2 - 3*zeta - 19)*q^6 + (9*zeta^2 - 
3*zeta - 14)*q^8 + (4*zeta^2 + zeta - 7)*q^9 + (6*zeta^2 + 18*zeta - 16)*q^10 + 
(-10*zeta^2 + 8*zeta + 14)*q^11 + (-9*zeta^2 + 12*zeta + 11)*q^12 + (4*zeta^2 - 
20*zeta)*q^15 + (-6*zeta^2 + 9*zeta + 7)*q^16 + (7*zeta^2 - 5*zeta - 10)*q^17 + 
(3*zeta^2 + 6*zeta - 7)*q^18 + (-25*zeta^2 - 10*zeta + 45)*q^19 + (-24*zeta^2 + 
6*zeta + 38)*q^20 + (-18*zeta^2 + 6*zeta + 28)*q^22 + (16*zeta^2 + 4*zeta - 
28)*q^23 + (-3*zeta^2 - 9*zeta + 8)*q^24 + (15*zeta^2 - 12*zeta - 21)*q^25 + 
(8*zeta^2 - 28*zeta - 4)*q^27 + (-2*zeta^2 + 10*zeta)*q^29 + (24*zeta^2 - 
36*zeta - 28)*q^30 + (-42*zeta^2 + 30*zeta + 60)*q^31 + (-3*zeta^2 - 6*zeta + 
7)*q^32 + (10*zeta^2 + 4*zeta - 18)*q^33 + (12*zeta^2 - 3*zeta - 19)*q^34 + 
(-9*zeta^2 + 3*zeta + 14)*q^36 + (-40*zeta^2 - 10*zeta + 70)*q^37 + (-15*zeta^2 
- 45*zeta + 40)*q^38 + (18*zeta^2 - 24*zeta - 22)*q^40 + (-14*zeta^2 + 49*zeta +
7)*q^41 + (-2*zeta^2 + 10*zeta)*q^43 + (12*zeta^2 - 18*zeta - 14)*q^44 + 
(14*zeta^2 - 10*zeta - 20)*q^45 + (12*zeta^2 + 24*zeta - 28)*q^46 + (10*zeta^2 +
4*zeta - 18)*q^47 + (12*zeta^2 - 3*zeta - 19)*q^48 + (27*zeta^2 - 9*zeta - 
42)*q^50 + (-8*zeta^2 - 2*zeta + 14)*q^51 + (-10*zeta^2 + 8*zeta + 14)*q^53 + 
(36*zeta^2 - 48*zeta - 44)*q^54 + (-8*zeta^2 + 28*zeta + 4)*q^55 + (-10*zeta^2 +
50*zeta)*q^57 + (-12*zeta^2 + 18*zeta + 14)*q^58 + (7*zeta^2 - 5*zeta - 10)*q^59
+ (12*zeta^2 + 24*zeta - 28)*q^60 + (10*zeta^2 + 4*zeta - 18)*q^61 + (-72*zeta^2
+ 18*zeta + 114)*q^62 + (9*zeta^2 - 3*zeta - 14)*q^64 + (6*zeta^2 + 18*zeta - 
16)*q^66 + (60*zeta^2 - 48*zeta - 84)*q^67 + (-9*zeta^2 + 12*zeta + 11)*q^68 + 
(8*zeta^2 - 28*zeta - 4)*q^69 + (12*zeta^2 - 60*zeta)*q^71 + (6*zeta^2 - 9*zeta 
- 7)*q^72 + (7*zeta^2 - 5*zeta - 10)*q^73 + (-30*zeta^2 - 60*zeta + 70)*q^74 + 
(-15*zeta^2 - 6*zeta + 27)*q^75 + (60*zeta^2 - 15*zeta - 95)*q^76 + (16*zeta^2 +
4*zeta - 28)*q^79 + (6*zeta^2 + 18*zeta - 16)*q^80 + (-25*zeta^2 + 20*zeta + 
35)*q^81 + (-63*zeta^2 + 84*zeta + 77)*q^82 + (14*zeta^2 - 49*zeta - 7)*q^83 + 
(4*zeta^2 - 20*zeta)*q^85 + (-12*zeta^2 + 18*zeta + 14)*q^86 + (14*zeta^2 - 
10*zeta - 20)*q^87 + (6*zeta^2 + 12*zeta - 14)*q^88 + (-25*zeta^2 - 10*zeta + 
45)*q^89 + (24*zeta^2 - 6*zeta - 38)*q^90 + (-36*zeta^2 + 12*zeta + 56)*q^92 + 
(48*zeta^2 + 12*zeta - 84)*q^93 + (6*zeta^2 + 18*zeta - 16)*q^94 + (-100*zeta^2 
+ 80*zeta + 140)*q^95 + (-9*zeta^2 + 12*zeta + 11)*q^96 + (14*zeta^2 - 49*zeta -
7)*q^97 + (-2*zeta^2 + 10*zeta)*q^99 + (-18*zeta^2 + 27*zeta + 21)*q^100 + 
(-42*zeta^2 + 30*zeta + 60)*q^101 + (-6*zeta^2 - 12*zeta + 14)*q^102 + 
(10*zeta^2 + 4*zeta - 18)*q^103 + (-18*zeta^2 + 6*zeta + 28)*q^106 + (16*zeta^2 
+ 4*zeta - 28)*q^107 + (12*zeta^2 + 36*zeta - 32)*q^108 + (-10*zeta^2 + 8*zeta +
14)*q^109 + (-36*zeta^2 + 48*zeta + 44)*q^110 + (-20*zeta^2 + 70*zeta + 
10)*q^111 + (12*zeta^2 - 60*zeta)*q^113 + (-60*zeta^2 + 90*zeta + 70)*q^114 + 
(56*zeta^2 - 40*zeta - 80)*q^115 + (-6*zeta^2 - 12*zeta + 14)*q^116 + (12*zeta^2
- 3*zeta - 19)*q^118 + (-36*zeta^2 + 12*zeta + 56)*q^120 + (28*zeta^2 + 7*zeta -
49)*q^121 + (6*zeta^2 + 18*zeta - 16)*q^122 + (70*zeta^2 - 56*zeta - 98)*q^123 +
(54*zeta^2 - 72*zeta - 66)*q^124 + (-8*zeta^2 + 28*zeta + 4)*q^125 + (-16*zeta^2
+ 80*zeta)*q^127 + (-6*zeta^2 + 9*zeta + 7)*q^128 + (14*zeta^2 - 10*zeta - 
20)*q^129 + (45*zeta^2 + 18*zeta - 81)*q^131 + (-24*zeta^2 + 6*zeta + 38)*q^132 
+ (108*zeta^2 - 36*zeta - 168)*q^134 + (-64*zeta^2 - 16*zeta + 112)*q^135 + 
(-3*zeta^2 - 9*zeta + 8)*q^136 + (60*zeta^2 - 48*zeta - 84)*q^137 + (36*zeta^2 -
48*zeta - 44)*q^138 + (14*zeta^2 - 49*zeta - 7)*q^139 + (4*zeta^2 - 
20*zeta)*q^141 + (72*zeta^2 - 108*zeta - 84)*q^142 + (3*zeta^2 + 6*zeta - 
7)*q^144 + (20*zeta^2 + 8*zeta - 36)*q^145 + (12*zeta^2 - 3*zeta - 19)*q^146 + 
(90*zeta^2 - 30*zeta - 140)*q^148 + (-40*zeta^2 - 10*zeta + 70)*q^149 + 
(-9*zeta^2 - 27*zeta + 24)*q^150 + (-80*zeta^2 + 64*zeta + 112)*q^151 + 
(-45*zeta^2 + 60*zeta + 55)*q^152 + (2*zeta^2 - 7*zeta - 1)*q^153 + (-24*zeta^2 
+ 120*zeta)*q^155 + (56*zeta^2 - 40*zeta - 80)*q^157 + (12*zeta^2 + 24*zeta - 
28)*q^158 + (10*zeta^2 + 4*zeta - 18)*q^159 + (-24*zeta^2 + 6*zeta + 38)*q^160 +
(-45*zeta^2 + 15*zeta + 70)*q^162 + (-40*zeta^2 - 10*zeta + 70)*q^163 + 
(-21*zeta^2 - 63*zeta + 56)*q^164 + (40*zeta^2 - 32*zeta - 56)*q^165 + 
(63*zeta^2 - 84*zeta - 77)*q^166 + (-28*zeta^2 + 98*zeta + 14)*q^167 + 
(13*zeta^2 - 65*zeta)*q^169 + (24*zeta^2 - 36*zeta - 28)*q^170 + (-35*zeta^2 + 
25*zeta + 50)*q^171 + (-6*zeta^2 - 12*zeta + 14)*q^172 + (-60*zeta^2 - 24*zeta +
108)*q^173 + (24*zeta^2 - 6*zeta - 38)*q^174 + (-18*zeta^2 + 6*zeta + 28)*q^176 
+ (-8*zeta^2 - 2*zeta + 14)*q^177 + (-15*zeta^2 - 45*zeta + 40)*q^178 + 
(60*zeta^2 - 48*zeta - 84)*q^179 + (-18*zeta^2 + 24*zeta + 22)*q^180 + (4*zeta^2
- 20*zeta)*q^183 + (24*zeta^2 - 36*zeta - 28)*q^184 + (-140*zeta^2 + 100*zeta + 
200)*q^185 + (36*zeta^2 + 72*zeta - 84)*q^186 + (10*zeta^2 + 4*zeta - 18)*q^187 
+ (-24*zeta^2 + 6*zeta + 38)*q^188 + (-180*zeta^2 + 60*zeta + 280)*q^190 + 
(16*zeta^2 + 4*zeta - 28)*q^191 + (-3*zeta^2 - 9*zeta + 8)*q^192 + (-80*zeta^2 +
64*zeta + 112)*q^193 + (63*zeta^2 - 84*zeta - 77)*q^194 + (-2*zeta^2 + 
10*zeta)*q^197 + (-12*zeta^2 + 18*zeta + 14)*q^198 + (-42*zeta^2 + 30*zeta + 
60)*q^199 + (-9*zeta^2 - 18*zeta + 21)*q^200 + (-60*zeta^2 - 24*zeta + 
108)*q^201 + (-72*zeta^2 + 18*zeta + 114)*q^202 + (18*zeta^2 - 6*zeta - 
28)*q^204 + (112*zeta^2 + 28*zeta - 196)*q^205 + (6*zeta^2 + 18*zeta - 16)*q^206
+ (20*zeta^2 - 16*zeta - 28)*q^207 + (20*zeta^2 - 70*zeta - 10)*q^209 + 
(12*zeta^2 - 60*zeta)*q^211 + (12*zeta^2 - 18*zeta - 14)*q^212 + (-84*zeta^2 + 
60*zeta + 120)*q^213 + (12*zeta^2 + 24*zeta - 28)*q^214 + (20*zeta^2 + 8*zeta - 
36)*q^215 + (-48*zeta^2 + 12*zeta + 76)*q^216 + (-18*zeta^2 + 6*zeta + 28)*q^218
+ (-8*zeta^2 - 2*zeta + 14)*q^219 + (-12*zeta^2 - 36*zeta + 32)*q^220 + 
(-90*zeta^2 + 120*zeta + 110)*q^222 + (3*zeta^2 - 15*zeta)*q^225 + (72*zeta^2 - 
108*zeta - 84)*q^226 + (105*zeta^2 - 75*zeta - 150)*q^227 + (-30*zeta^2 - 
60*zeta + 70)*q^228 + (-60*zeta^2 - 24*zeta + 108)*q^229 + (96*zeta^2 - 24*zeta 
- 152)*q^230 + (18*zeta^2 - 6*zeta - 28)*q^232 + (-96*zeta^2 - 24*zeta + 
168)*q^233 + (40*zeta^2 - 32*zeta - 56)*q^235 + (-9*zeta^2 + 12*zeta + 11)*q^236
+ (8*zeta^2 - 28*zeta - 4)*q^237 + (12*zeta^2 - 60*zeta)*q^239 + (24*zeta^2 - 
36*zeta - 28)*q^240 + (105*zeta^2 - 75*zeta - 150)*q^241 + (21*zeta^2 + 42*zeta 
- 49)*q^242 + (-35*zeta^2 - 14*zeta + 63)*q^243 + (-24*zeta^2 + 6*zeta + 
38)*q^244 + (126*zeta^2 - 42*zeta - 196)*q^246 + (18*zeta^2 + 54*zeta - 
48)*q^248 + (-70*zeta^2 + 56*zeta + 98)*q^249 + (-36*zeta^2 + 48*zeta + 
44)*q^250 + (14*zeta^2 - 49*zeta - 7)*q^251 + (-8*zeta^2 + 40*zeta)*q^253 + 
(-96*zeta^2 + 144*zeta + 112)*q^254 + (-28*zeta^2 + 20*zeta + 40)*q^255 + 
(-3*zeta^2 - 6*zeta + 7)*q^256 + (45*zeta^2 + 18*zeta - 81)*q^257 + (24*zeta^2 -
6*zeta - 38)*q^258 + (8*zeta^2 + 2*zeta - 14)*q^261 + (27*zeta^2 + 81*zeta - 
72)*q^262 + (60*zeta^2 - 48*zeta - 84)*q^263 + (18*zeta^2 - 24*zeta - 22)*q^264 
+ (-8*zeta^2 + 28*zeta + 4)*q^265 + (-10*zeta^2 + 50*zeta)*q^267 + (-72*zeta^2 +
108*zeta + 84)*q^268 + (56*zeta^2 - 40*zeta - 80)*q^269 + (-48*zeta^2 - 96*zeta 
+ 112)*q^270 + (80*zeta^2 + 32*zeta - 144)*q^271 + (12*zeta^2 - 3*zeta - 
19)*q^272 + (108*zeta^2 - 36*zeta - 168)*q^274 + (24*zeta^2 + 6*zeta - 42)*q^275
+ (12*zeta^2 + 36*zeta - 32)*q^276 + (-10*zeta^2 + 8*zeta + 14)*q^277 + 
(63*zeta^2 - 84*zeta - 77)*q^278 + (-12*zeta^2 + 42*zeta + 6)*q^279 + 
(-16*zeta^2 + 80*zeta)*q^281 + (24*zeta^2 - 36*zeta - 28)*q^282 + (7*zeta^2 - 
5*zeta - 10)*q^283 + (36*zeta^2 + 72*zeta - 84)*q^284 + (100*zeta^2 + 40*zeta - 
180)*q^285 + (-9*zeta^2 + 3*zeta + 14)*q^288 + (60*zeta^2 + 15*zeta - 105)*q^289
+ (12*zeta^2 + 36*zeta - 32)*q^290 + (-70*zeta^2 + 56*zeta + 98)*q^291 + 
(-9*zeta^2 + 12*zeta + 11)*q^292 + (-28*zeta^2 + 98*zeta + 14)*q^293 + (4*zeta^2
- 20*zeta)*q^295 + (-60*zeta^2 + 90*zeta + 70)*q^296 + (56*zeta^2 - 40*zeta - 
80)*q^297 + (-30*zeta^2 - 60*zeta + 70)*q^298 + (36*zeta^2 - 9*zeta - 57)*q^300 
+ (-144*zeta^2 + 48*zeta + 224)*q^302 + (48*zeta^2 + 12*zeta - 84)*q^303 + 
(-15*zeta^2 - 45*zeta + 40)*q^304 + (40*zeta^2 - 32*zeta - 56)*q^305 + (9*zeta^2
- 12*zeta - 11)*q^306 + (-14*zeta^2 + 49*zeta + 7)*q^307 + (4*zeta^2 - 
20*zeta)*q^309 + (-144*zeta^2 + 216*zeta + 168)*q^310 + (56*zeta^2 - 40*zeta - 
80)*q^311 + (45*zeta^2 + 18*zeta - 81)*q^313 + (96*zeta^2 - 24*zeta - 152)*q^314
+ (-36*zeta^2 + 12*zeta + 56)*q^316 + (-40*zeta^2 - 10*zeta + 70)*q^317 + 
(6*zeta^2 + 18*zeta - 16)*q^318 + (-20*zeta^2 + 16*zeta + 28)*q^319 + (18*zeta^2
- 24*zeta - 22)*q^320 + (8*zeta^2 - 28*zeta - 4)*q^321 + (-10*zeta^2 + 
50*zeta)*q^323 + (30*zeta^2 - 45*zeta - 35)*q^324 + (-30*zeta^2 - 60*zeta + 
70)*q^326 + (10*zeta^2 + 4*zeta - 18)*q^327 + (84*zeta^2 - 21*zeta - 133)*q^328 
+ (72*zeta^2 - 24*zeta - 112)*q^330 + (-40*zeta^2 - 10*zeta + 70)*q^331 + 
(21*zeta^2 + 63*zeta - 56)*q^332 + (-50*zeta^2 + 40*zeta + 70)*q^333 + 
(-126*zeta^2 + 168*zeta + 154)*q^334 + (48*zeta^2 - 168*zeta - 24)*q^335 + 
(-2*zeta^2 + 10*zeta)*q^337 + (78*zeta^2 - 117*zeta - 91)*q^338 + (-84*zeta^2 + 
60*zeta + 120)*q^339 + (12*zeta^2 + 24*zeta - 28)*q^340 + (-60*zeta^2 - 24*zeta 
+ 108)*q^341 + (-60*zeta^2 + 15*zeta + 95)*q^342 + (18*zeta^2 - 6*zeta - 
28)*q^344 + (-64*zeta^2 - 16*zeta + 112)*q^345 + (-36*zeta^2 - 108*zeta + 
96)*q^346 + (-150*zeta^2 + 120*zeta + 210)*q^347 + (-18*zeta^2 + 24*zeta + 
22)*q^348 + (12*zeta^2 - 18*zeta - 14)*q^352 + (7*zeta^2 - 5*zeta - 10)*q^353 + 
(-6*zeta^2 - 12*zeta + 14)*q^354 + (-120*zeta^2 - 48*zeta + 216)*q^355 + 
(60*zeta^2 - 15*zeta - 95)*q^356 + (108*zeta^2 - 36*zeta - 168)*q^358 + 
(128*zeta^2 + 32*zeta - 224)*q^359 + (-6*zeta^2 - 18*zeta + 16)*q^360 + 
(155*zeta^2 - 124*zeta - 217)*q^361 + (14*zeta^2 - 49*zeta - 7)*q^363 + 
(4*zeta^2 - 20*zeta)*q^365 + (24*zeta^2 - 36*zeta - 28)*q^366 + (-140*zeta^2 + 
100*zeta + 200)*q^367 + (12*zeta^2 + 24*zeta - 28)*q^368 + (35*zeta^2 + 14*zeta 
- 63)*q^369 + (-240*zeta^2 + 60*zeta + 380)*q^370 + (-108*zeta^2 + 36*zeta + 
168)*q^372 + (-40*zeta^2 - 10*zeta + 70)*q^373 + (6*zeta^2 + 18*zeta - 16)*q^374
+ (40*zeta^2 - 32*zeta - 56)*q^375 + (18*zeta^2 - 24*zeta - 22)*q^376 + 
(26*zeta^2 - 130*zeta)*q^379 + (120*zeta^2 - 180*zeta - 140)*q^380 + (112*zeta^2
- 80*zeta - 160)*q^381 + (12*zeta^2 + 24*zeta - 28)*q^382 + (-130*zeta^2 - 
52*zeta + 234)*q^383 + (12*zeta^2 - 3*zeta - 19)*q^384 + (-144*zeta^2 + 48*zeta 
+ 224)*q^386 + (8*zeta^2 + 2*zeta - 14)*q^387 + (21*zeta^2 + 63*zeta - 56)*q^388
+ (130*zeta^2 - 104*zeta - 182)*q^389 + (8*zeta^2 - 28*zeta - 4)*q^391 + 
(18*zeta^2 - 90*zeta)*q^393 + (-12*zeta^2 + 18*zeta + 14)*q^394 + (56*zeta^2 - 
40*zeta - 80)*q^395 + (-6*zeta^2 - 12*zeta + 14)*q^396 + (80*zeta^2 + 32*zeta - 
144)*q^397 + (-72*zeta^2 + 18*zeta + 114)*q^398 + (27*zeta^2 - 9*zeta - 
42)*q^400 + (72*zeta^2 + 18*zeta - 126)*q^401 + (-36*zeta^2 - 108*zeta + 
96)*q^402 + (54*zeta^2 - 72*zeta - 66)*q^404 + (-20*zeta^2 + 70*zeta + 10)*q^405
+ O(q^406), q - q^3 - 3*q^5 - 2*q^9 - 3*q^11 - 2*q^13 + 3*q^15 - 3*q^17 + q^19 +
3*q^23 + 4*q^25 + 5*q^27 - 6*q^29 + 7*q^31 + 3*q^33 - q^37 + 2*q^39 - 6*q^41 - 
4*q^43 + 6*q^45 + 9*q^47 + 3*q^51 + 3*q^53 + 9*q^55 - q^57 - 9*q^59 + q^61 + 
6*q^65 - 7*q^67 - 3*q^69 + q^73 - 4*q^75 - 13*q^79 + q^81 - 12*q^83 + 9*q^85 + 
6*q^87 - 15*q^89 - 7*q^93 - 3*q^95 + 10*q^97 + 6*q^99 - 15*q^101 - 11*q^103 + 
15*q^107 - q^109 + q^111 + 6*q^113 - 9*q^115 + 4*q^117 - 2*q^121 + 6*q^123 + 
3*q^125 + 8*q^127 + 4*q^129 - 3*q^131 - 15*q^135 - 21*q^137 - 20*q^139 - 9*q^141
+ 6*q^143 + 18*q^145 + 3*q^149 + 17*q^151 + 6*q^153 - 21*q^155 + 13*q^157 - 
3*q^159 + 11*q^163 - 9*q^165 + 12*q^167 - 9*q^169 - 2*q^171 + 9*q^173 + 9*q^177 
+ 21*q^179 + 10*q^181 - q^183 + 3*q^185 + 9*q^187 - 9*q^191 + 11*q^193 - 6*q^195
+ 18*q^197 + 7*q^199 + 7*q^201 + 18*q^205 - 6*q^207 - 3*q^209 - 4*q^211 + 
12*q^215 - q^219 + 6*q^221 - 8*q^223 - 8*q^225 + 3*q^227 - 11*q^229 - 21*q^233 -
27*q^235 + 13*q^237 - 12*q^239 + q^241 - 16*q^243 - 2*q^247 + 12*q^249 - 9*q^253
- 9*q^255 - 3*q^257 + 12*q^261 - 3*q^263 - 9*q^265 + 15*q^267 - 3*q^269 - 
11*q^271 - 12*q^275 - 13*q^277 - 14*q^279 + 30*q^281 - 29*q^283 + 3*q^285 - 
8*q^289 - 10*q^291 - 6*q^293 + 27*q^295 - 15*q^297 - 6*q^299 + 15*q^303 - 
3*q^305 + 28*q^307 + 11*q^309 + 27*q^311 - 23*q^313 - 9*q^317 + 18*q^319 - 
15*q^321 - 3*q^323 - 8*q^325 + q^327 - 13*q^331 + 2*q^333 + 21*q^335 - 34*q^337 
- 6*q^339 - 21*q^341 + 9*q^345 + 9*q^347 - 26*q^349 - 10*q^351 + 21*q^353 + 
15*q^359 - 18*q^361 + 2*q^363 - 3*q^365 - 5*q^367 + 12*q^369 - 25*q^373 - 
3*q^375 + 12*q^377 + 8*q^379 - 8*q^381 + 33*q^383 + 8*q^387 + 15*q^389 - 9*q^391
+ 3*q^393 + 39*q^395 + 37*q^397 + 3*q^401 - 14*q^403 - 3*q^405 + O(q^406)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 5);
              X_14B6 := Curve(P_Q, [ PolynomialRing(RationalField(), 6) |
x[1]^2 + 322/285*x[2]^2 + 508/855*x[2]*x[3] + 84/475*x[2]*x[4] + 
124/1425*x[2]*x[5] + 3376/855*x[2]*x[6] - 473/3591*x[3]^2 + 4/21*x[3]*x[4] - 
148/5985*x[3]*x[5] - 32/2565*x[3]*x[6] - 752/7125*x[4]^2 - 1448/7125*x[4]*x[5] +
2448/475*x[4]*x[6] - 688/7125*x[5]^2 + 13264/4275*x[5]*x[6] - 14336/513*x[6]^2,
x[1]*x[2] - 1/95*x[2]^2 - 119/285*x[2]*x[3] - 166/475*x[2]*x[4] - 
142/475*x[2]*x[5] - 728/285*x[2]*x[6] + 1/57*x[3]^2 - 2/15*x[3]*x[4] + 
2/95*x[3]*x[5] + 64/95*x[3]*x[6] - 904/2375*x[4]^2 + 604/2375*x[4]*x[5] - 
5176/1425*x[4]*x[6] + 224/2375*x[5]^2 + 216/475*x[5]*x[6] + 896/57*x[6]^2,
x[1]*x[3] + 2063/285*x[2]^2 + 3722/855*x[2]*x[3] + 786/475*x[2]*x[4] + 
2246/1425*x[2]*x[5] + 22904/855*x[2]*x[6] - 394/513*x[3]^2 + 2*x[3]*x[4] - 
446/855*x[3]*x[5] + 7952/2565*x[3]*x[6] - 2368/7125*x[4]^2 - 
20932/7125*x[4]*x[5] + 61336/1425*x[4]*x[6] - 4592/7125*x[5]^2 + 
64616/4275*x[5]*x[6] - 114688/513*x[6]^2,
x[1]*x[4] + 94/95*x[2]^2 + 166/285*x[2]*x[3] + 24/475*x[2]*x[4] + 
238/475*x[2]*x[5] + 1552/285*x[2]*x[6] - 16/171*x[3]^2 + 9/35*x[3]*x[4] - 
22/399*x[3]*x[5] - 184/855*x[3]*x[6] + 2792/16625*x[4]^2 - 6792/16625*x[4]*x[5] 
+ 2328/475*x[4]*x[6] + 48/16625*x[5]^2 + 2168/1425*x[5]*x[6] - 5824/171*x[6]^2,
x[1]*x[5] - 541/285*x[2]^2 - 1774/855*x[2]*x[3] - 612/475*x[2]*x[4] - 
1582/1425*x[2]*x[5] - 12328/855*x[2]*x[6] + 179/513*x[3]^2 - 76/105*x[3]*x[4] + 
353/1197*x[3]*x[5] + 776/2565*x[3]*x[6] - 27388/49875*x[4]^2 + 
67388/49875*x[4]*x[5] - 31792/1425*x[4]*x[6] + 9628/49875*x[5]^2 - 
19552/4275*x[5]*x[6] + 41216/513*x[6]^2,
x[1]*x[6] + 28/285*x[2]^2 + 904/5985*x[2]*x[3] - 48/3325*x[2]*x[4] + 
472/9975*x[2]*x[5] + 814/855*x[2]*x[6] - 8/513*x[3]^2 - 16/855*x[3]*x[5] - 
263/2565*x[3]*x[6] + 2764/49875*x[4]^2 - 2864/49875*x[4]*x[5] + 
1316/1425*x[4]*x[6] + 188/7125*x[5]^2 + 1996/4275*x[5]*x[6] - 2912/513*x[6]^2,
x[1]^3 - 1645481669/1225566300*x[2]*x[4]*x[5] + 
128799977891/12255663000*x[2]*x[4]*x[6] - 2196928711/2451132600*x[2]*x[5]^2 - 
23390148953/12255663000*x[2]*x[5]*x[6] + 11953059881/350161800*x[2]*x[6]^2 - 
490300757/12605824800*x[3]^3 - 3228410431/29413591200*x[3]^2*x[4] + 
357044507/88240773600*x[3]^2*x[5] - 6812502709/6302912400*x[3]^2*x[6] - 
700549935907/1715792820000*x[3]*x[4]^2 - 
1708913164387/2573689230000*x[3]*x[4]*x[5] - 
66942543427/18383494500*x[3]*x[4]*x[6] + 1025438177111/5147378460000*x[3]*x[5]^2
+ 122931240611/110300967000*x[3]*x[5]*x[6] - 16026093277/3151456200*x[3]*x[6]^2 
+ 2203967317693/2859654700000*x[4]^3 + 441022961403/2859654700000*x[4]^2*x[5] - 
128666189893/40852210000*x[4]^2*x[6] + 5564632390613/8578964100000*x[4]*x[5]^2 -
378198083471/45958736250*x[4]*x[5]*x[6] + 34540202557/875404500*x[4]*x[6]^2 + 
5807360794147/8578964100000*x[5]^3 + 1503006462637/367669890000*x[5]^2*x[6] + 
37537483979/1969660125*x[5]*x[6]^2 + 84312213559/393932025*x[6]^3,
x[1]^2*x[2] + 378603103/2451132600*x[2]*x[4]*x[5] - 
15657593177/24511326000*x[2]*x[4]*x[6] - 435763243/4902265200*x[2]*x[5]^2 - 
16582138309/24511326000*x[2]*x[5]*x[6] + 4060200293/700323600*x[2]*x[6]^2 - 
2232449141/529444641600*x[3]^3 + 308029333/6536353600*x[3]^2*x[4] + 
97312111/176481547200*x[3]^2*x[5] + 743690623/12605824800*x[3]^2*x[6] - 
683664487813/10294756920000*x[3]*x[4]^2 - 
40266098711/5147378460000*x[3]*x[4]*x[5] - 7005543631/36766989000*x[3]*x[4]*x[6]
- 44375202839/3431585640000*x[3]*x[5]^2 - 3968310617/220601934000*x[3]*x[5]*x[6]
- 2527294627/2100970800*x[3]*x[6]^2 + 429160422729/5719309400000*x[4]^3 - 
19948395923/17157928200000*x[4]^2*x[5] - 464472511961/735339780000*x[4]^2*x[6] +
411148591489/17157928200000*x[4]*x[5]^2 - 65894974963/91917472500*x[4]*x[5]*x[6]
+ 27444159563/5252427000*x[4]*x[6]^2 - 148123431209/17157928200000*x[5]^3 + 
28850913587/245113260000*x[5]^2*x[6] + 17829670387/3939320250*x[5]*x[6]^2 - 
9057410719/2363592150*x[6]^3,
x[1]^2*x[3] - 145077481/87540450*x[2]*x[4]*x[5] + 
8658904159/875404500*x[2]*x[4]*x[6] - 188475539/175080900*x[2]*x[5]^2 - 
2357765197/875404500*x[2]*x[5]*x[6] + 8983681483/175080900*x[2]*x[6]^2 - 
1091596819/14706795600*x[3]^3 - 1738998893/14706795600*x[3]^2*x[4] + 
2076795841/44120386800*x[3]^2*x[5] - 4581997487/3151456200*x[3]^2*x[6] - 
77479178143/122556630000*x[3]*x[4]^2 - 124712381663/183834945000*x[3]*x[4]*x[5] 
- 6885966623/1313106750*x[3]*x[4]*x[6] + 61707053539/367669890000*x[3]*x[5]^2 + 
15166195039/7878640500*x[3]*x[5]*x[6] - 7510220711/1575728100*x[3]*x[6]^2 + 
199298993857/204261050000*x[4]^3 + 73829282647/204261050000*x[4]^2*x[5] - 
44908867771/8754045000*x[4]^2*x[6] + 409018410937/612783150000*x[4]*x[5]^2 - 
33944659579/3282766875*x[4]*x[5]*x[6] + 21930217351/437702250*x[4]*x[6]^2 + 
544327526303/612783150000*x[5]^3 + 146499321713/26262135000*x[5]^2*x[6] + 
49108545794/1969660125*x[5]*x[6]^2 + 101732325674/393932025*x[6]^3,
x[1]^2*x[4] - 11019419/29180150*x[2]*x[4]*x[5] + 
481290821/291801500*x[2]*x[4]*x[6] - 10196561/58360300*x[2]*x[5]^2 - 
366610143/291801500*x[2]*x[5]*x[6] + 251950377/58360300*x[2]*x[6]^2 - 
29450207/6302912400*x[3]^3 - 59766127/4902265200*x[3]^2*x[4] + 
8542639/700323600*x[3]^2*x[5] - 198305653/1050485400*x[3]^2*x[6] - 
989451731/5836030000*x[3]*x[4]^2 - 5602440997/61278315000*x[3]*x[4]*x[5] - 
691098437/437702250*x[3]*x[4]*x[6] + 4945883441/122556630000*x[3]*x[5]^2 + 
7193949/291801500*x[3]*x[5]*x[6] - 947330909/525242700*x[3]*x[6]^2 + 
33749359249/204261050000*x[4]^3 + 53769542279/204261050000*x[4]^2*x[5] - 
5482606649/2918015000*x[4]^2*x[6] + 26275945603/204261050000*x[4]*x[5]^2 - 
1245709001/1094255625*x[4]*x[5]*x[6] + 4303759607/437702250*x[4]*x[6]^2 + 
25597349957/204261050000*x[5]^3 + 5508813547/8754045000*x[5]^2*x[6] + 
1400570962/218851125*x[5]*x[6]^2 + 18252494218/393932025*x[6]^3,
x[1]^2*x[5] + 51686803/43770225*x[2]*x[4]*x[5] - 
3266348977/437702250*x[2]*x[4]*x[6] + 47348957/87540450*x[2]*x[5]^2 + 
1092159091/437702250*x[2]*x[5]*x[6] - 1600097149/87540450*x[2]*x[6]^2 + 
25763651/1050485400*x[3]^3 + 6639757/1050485400*x[3]^2*x[4] - 
539621503/22060193400*x[3]^2*x[5] + 1142647961/1575728100*x[3]^2*x[6] + 
18816805529/61278315000*x[3]*x[4]^2 + 5422531727/13131067500*x[3]*x[4]*x[5] + 
178125541/72950375*x[3]*x[4]*x[6] - 12074792917/183834945000*x[3]*x[5]^2 - 
2583953617/3939320250*x[3]*x[5]*x[6] + 2467358033/787864050*x[3]*x[6]^2 - 
52159440871/102130525000*x[4]^3 - 33569934241/102130525000*x[4]^2*x[5] + 
6561059471/1459007500*x[4]^2*x[6] - 85710136111/306391575000*x[4]*x[5]^2 + 
18893911274/3282766875*x[4]*x[5]*x[6] - 22701323659/656553375*x[4]*x[6]^2 - 
154225235609/306391575000*x[5]^3 - 27394618439/13131067500*x[5]^2*x[6] - 
25080245764/1969660125*x[5]*x[6]^2 - 66006555244/393932025*x[6]^3,
x[1]^2*x[6] - 3410692/43770225*x[2]*x[4]*x[5] + 
150416594/218851125*x[2]*x[4]*x[6] - 1671574/43770225*x[2]*x[5]^2 - 
42828302/218851125*x[2]*x[5]*x[6] + 58517078/43770225*x[2]*x[6]^2 - 
81409/612783150*x[3]^3 - 20514509/1838349450*x[3]^2*x[4] + 
3224113/5515048350*x[3]^2*x[5] - 240894872/2757524175*x[3]^2*x[6] - 
310351519/15319578750*x[3]*x[4]^2 - 779815679/22979368125*x[3]*x[4]*x[5] - 
1813558952/4595873625*x[3]*x[4]*x[6] + 633777187/45958736250*x[3]*x[5]^2 + 
802021718/13787620875*x[3]*x[5]*x[6] - 300455326/393932025*x[3]*x[6]^2 + 
1150483681/25532631250*x[4]^3 + 471615751/25532631250*x[4]^2*x[5] - 
178428643/1094255625*x[4]^2*x[6] + 2910031321/76597893750*x[4]*x[5]^2 - 
592822256/3282766875*x[4]*x[5]*x[6] + 293595532/218851125*x[4]*x[6]^2 + 
2840571599/76597893750*x[5]^3 + 631646129/3282766875*x[5]^2*x[6] + 
3378637216/1969660125*x[5]*x[6]^2 + 6381827536/393932025*x[6]^3,
x[1]*x[2]^2 + 18749783/29180150*x[2]*x[4]*x[5] - 
643511457/291801500*x[2]*x[4]*x[6] + 24507077/58360300*x[2]*x[5]^2 + 
899872931/291801500*x[2]*x[5]*x[6] + 36874691/58360300*x[2]*x[6]^2 - 
339846067/44120386800*x[3]^3 - 843037423/14706795600*x[3]^2*x[4] - 
53028047/1634088400*x[3]^2*x[5] + 425971001/1050485400*x[3]^2*x[6] + 
25843998667/122556630000*x[3]*x[4]^2 + 9564413849/61278315000*x[3]*x[4]*x[5] + 
2242510687/1313106750*x[3]*x[4]*x[6] - 2927006197/122556630000*x[3]*x[5]^2 + 
633477301/875404500*x[3]*x[5]*x[6] - 5226949/175080900*x[3]*x[6]^2 - 
40433247733/204261050000*x[4]^3 - 75287870243/204261050000*x[4]^2*x[5] + 
41177264999/8754045000*x[4]^2*x[6] - 50271512751/204261050000*x[4]*x[5]^2 + 
3723088717/1094255625*x[4]*x[5]*x[6] - 35956696657/1313106750*x[4]*x[6]^2 - 
33023279769/204261050000*x[5]^3 - 6321460199/8754045000*x[5]^2*x[6] - 
2775558254/218851125*x[5]*x[6]^2 - 22509780706/393932025*x[6]^3,
x[1]*x[2]*x[3] + 179590853/116720600*x[2]*x[4]*x[5] - 
13613230947/1167206000*x[2]*x[4]*x[6] + 155874007/233441200*x[2]*x[5]^2 + 
834036601/1167206000*x[2]*x[5]*x[6] - 3490359439/233441200*x[2]*x[6]^2 - 
144675517/8403883200*x[3]^3 + 388327661/8403883200*x[3]^2*x[4] - 
109607353/2801294400*x[3]^2*x[5] + 5783903971/4201941600*x[3]^2*x[6] + 
59651260057/490226520000*x[3]*x[4]^2 + 154369656179/245113260000*x[3]*x[4]*x[5] 
+ 16520699377/5252427000*x[3]*x[4]*x[6] - 45864299687/490226520000*x[3]*x[5]^2 +
3410952671/3501618000*x[3]*x[5]*x[6] + 13335017563/2100970800*x[3]*x[6]^2 - 
423877036743/817044200000*x[4]^3 - 274751313953/817044200000*x[4]^2*x[5] + 
132794930429/35016180000*x[4]^2*x[6] - 540807337221/817044200000*x[4]*x[5]^2 + 
32984561407/4377022500*x[4]*x[5]*x[6] - 223880582947/5252427000*x[4]*x[6]^2 - 
489950139699/817044200000*x[5]^3 - 108638333629/35016180000*x[5]^2*x[6] - 
6502059067/437702250*x[5]*x[6]^2 - 50694916321/262621350*x[6]^3,
x[1]*x[2]*x[4] + 43705669/350161800*x[2]*x[4]*x[5] - 
3114230651/3501618000*x[2]*x[4]*x[6] + 132122111/700323600*x[2]*x[5]^2 + 
1072412033/3501618000*x[2]*x[5]*x[6] - 2620121287/700323600*x[2]*x[6]^2 + 
2751185719/529444641600*x[3]^3 - 220659449/8403883200*x[3]^2*x[4] + 
279147133/25211649600*x[3]^2*x[5] + 1382269243/12605824800*x[3]^2*x[6] - 
11300709919/1470679560000*x[3]*x[4]^2 + 18571323307/735339780000*x[3]*x[4]*x[5] 
+ 1508336947/5252427000*x[3]*x[4]*x[6] - 4523899957/490226520000*x[3]*x[5]^2 - 
9383550971/31514562000*x[3]*x[5]*x[6] - 42288869/700323600*x[3]*x[6]^2 - 
129355349973/817044200000*x[4]^3 + 102366456151/2451132600000*x[4]^2*x[5] + 
139121185957/105048540000*x[4]^2*x[6] + 35317341907/2451132600000*x[4]*x[5]^2 + 
16501037831/13131067500*x[4]*x[5]*x[6] - 516017313/583603000*x[4]*x[6]^2 - 
115759160267/2451132600000*x[5]^3 - 25239446519/35016180000*x[5]^2*x[6] - 
7587834233/3939320250*x[5]*x[6]^2 - 49942538779/2363592150*x[6]^3,
x[1]*x[2]*x[5] + 15299189/29180150*x[2]*x[4]*x[5] - 
550657681/291801500*x[2]*x[4]*x[6] + 17772741/58360300*x[2]*x[5]^2 + 
1143560523/291801500*x[2]*x[5]*x[6] - 26447897/58360300*x[2]*x[6]^2 - 
247987711/44120386800*x[3]^3 - 91538719/700323600*x[3]^2*x[4] - 
97796677/2100970800*x[3]^2*x[5] + 228258533/1050485400*x[3]^2*x[6] + 
27674277511/122556630000*x[3]*x[4]^2 + 5888232517/61278315000*x[3]*x[4]*x[5] + 
894360107/437702250*x[3]*x[4]*x[6] - 316873667/40852210000*x[3]*x[5]^2 + 
2893814399/2626213500*x[3]*x[5]*x[6] + 140572061/58360300*x[3]*x[6]^2 - 
49928772489/204261050000*x[4]^3 - 122523724319/204261050000*x[4]^2*x[5] + 
52604224667/8754045000*x[4]^2*x[6] - 29329235883/204261050000*x[4]*x[5]^2 + 
3430580261/1094255625*x[4]*x[5]*x[6] - 3737062609/145900750*x[4]*x[6]^2 - 
15307603277/204261050000*x[5]^3 - 445782089/2918015000*x[5]^2*x[6] - 
8905561196/656553375*x[5]*x[6]^2 - 29941083298/393932025*x[6]^3,
x[1]*x[2]*x[6] - 10520329/102130525*x[2]*x[4]*x[5] + 
407834781/1021305250*x[2]*x[4]*x[6] - 9617351/204261050*x[2]*x[5]^2 - 
340653323/1021305250*x[2]*x[5]*x[6] + 22117721/29180150*x[2]*x[6]^2 + 
9042541/7353397800*x[3]^3 + 5461781/1050485400*x[3]^2*x[4] + 
3101283/817044200*x[3]^2*x[5] - 44345969/525242700*x[3]^2*x[6] - 
10177305161/428948205000*x[3]*x[4]^2 - 7607112067/214474102500*x[3]*x[4]*x[5] - 
1546669196/4595873625*x[3]*x[4]*x[6] + 1247532151/428948205000*x[3]*x[5]^2 - 
141861211/1021305250*x[3]*x[5]*x[6] - 10058357/262621350*x[3]*x[6]^2 + 
24706888839/714913675000*x[4]^3 + 32823825169/714913675000*x[4]^2*x[5] - 
18868730917/30639157500*x[4]^2*x[6] + 25984779333/714913675000*x[4]*x[5]^2 - 
3831105772/7659789375*x[4]*x[5]*x[6] + 2451257633/656553375*x[4]*x[6]^2 + 
25760173827/714913675000*x[5]^3 + 8275435517/30639157500*x[5]^2*x[6] + 
171419584/72950375*x[5]*x[6]^2 + 211991164/14590075*x[6]^3,
x[1]*x[3]^2 - 2535609121/175080900*x[2]*x[4]*x[5] + 
148531504039/1750809000*x[2]*x[4]*x[6] - 3121227899/350161800*x[2]*x[5]^2 - 
48941635237/1750809000*x[2]*x[5]*x[6] + 127743577843/350161800*x[2]*x[6]^2 - 
477277919/1400647200*x[3]^3 + 31172461/4201941600*x[3]^2*x[4] + 
1624518463/12605824800*x[3]^2*x[5] - 49532188727/6302912400*x[3]^2*x[6] - 
1180599336103/245113260000*x[3]*x[4]^2 - 
2568229602023/367669890000*x[3]*x[4]*x[5] - 
95792690183/2626213500*x[3]*x[4]*x[6] + 997971804619/735339780000*x[3]*x[5]^2 + 
87783422119/15757281000*x[3]*x[5]*x[6] - 220897330031/3151456200*x[3]*x[6]^2 + 
3036375418297/408522100000*x[4]^3 + 1355703209887/408522100000*x[4]^2*x[5] - 
845703889891/17508090000*x[4]^2*x[6] + 7241479220977/1225566300000*x[4]*x[5]^2 -
590522839459/6565533750*x[4]*x[5]*x[6] + 394767481871/875404500*x[4]*x[6]^2 + 
8468205041063/1225566300000*x[5]^3 + 2189469796073/52524270000*x[5]^2*x[6] + 
455958903337/1969660125*x[5]*x[6]^2 + 796676367277/393932025*x[6]^3,
x[1]*x[3]*x[4] - 115514159/58360300*x[2]*x[4]*x[5] + 
5755791761/583603000*x[2]*x[4]*x[6] - 161721421/116720600*x[2]*x[5]^2 - 
5061652163/583603000*x[2]*x[5]*x[6] + 3715180357/116720600*x[2]*x[6]^2 - 
1102608103/29413591200*x[3]^3 + 87790139/1400647200*x[3]^2*x[4] + 
262520537/4201941600*x[3]^2*x[5] - 2845125473/2100970800*x[3]^2*x[6] - 
40326392497/81704420000*x[3]*x[4]^2 - 116951778577/122556630000*x[3]*x[4]*x[5] -
5567807617/875404500*x[3]*x[4]*x[6] + 65476771181/245113260000*x[3]*x[5]^2 + 
2993163281/5252427000*x[3]*x[5]*x[6] - 11682683369/1050485400*x[3]*x[6]^2 + 
64146395787/58360300000*x[4]^3 + 19828759677/58360300000*x[4]^2*x[5] - 
52779653909/5836030000*x[4]^2*x[6] + 53760012689/58360300000*x[4]*x[5]^2 - 
28381088741/2188511250*x[4]*x[5]*x[6] + 11847746729/291801500*x[4]*x[6]^2 + 
50268259591/58360300000*x[5]^3 + 87176083327/17508090000*x[5]^2*x[6] + 
28888071863/656553375*x[5]*x[6]^2 + 42885375323/131310675*x[6]^3,
x[1]*x[3]*x[5] + 605409253/87540450*x[2]*x[4]*x[5] - 
39581594287/875404500*x[2]*x[4]*x[6] + 643905107/175080900*x[2]*x[5]^2 + 
7797467821/875404500*x[2]*x[5]*x[6] - 20358294019/175080900*x[2]*x[6]^2 + 
805364089/4902265200*x[3]^3 + 449230387/2100970800*x[3]^2*x[4] + 
17942321/6302912400*x[3]^2*x[5] + 13704815591/3151456200*x[3]^2*x[6] + 
29133353057/17508090000*x[3]*x[4]^2 + 81892427537/26262135000*x[3]*x[4]*x[5] + 
1882541771/145900750*x[3]*x[4]*x[6] - 39146304061/52524270000*x[3]*x[5]^2 - 
12467898127/7878640500*x[3]*x[5]*x[6] + 26519741423/1575728100*x[3]*x[6]^2 - 
600827040601/204261050000*x[4]^3 - 299954455071/204261050000*x[4]^2*x[5] + 
60646857201/2918015000*x[4]^2*x[6] - 1776587153041/612783150000*x[4]*x[5]^2 + 
124460165947/3282766875*x[4]*x[5]*x[6] - 245706572629/1313106750*x[4]*x[6]^2 - 
1851347114279/612783150000*x[5]^3 - 453276782009/26262135000*x[5]^2*x[6] - 
172229936942/1969660125*x[5]*x[6]^2 - 382356259082/393932025*x[6]^3,
x[1]*x[3]*x[6] - 110797178/306391575*x[2]*x[4]*x[5] + 
6013651921/1531957875*x[2]*x[4]*x[6] - 55683791/306391575*x[2]*x[5]^2 - 
284580943/1531957875*x[2]*x[5]*x[6] + 249230761/43770225*x[2]*x[6]^2 - 
1013497/408522100*x[3]^3 - 287719151/3676698900*x[3]^2*x[4] - 
14309573/11030096700*x[3]^2*x[5] - 275041079/787864050*x[3]^2*x[6] - 
21032703667/214474102500*x[3]*x[4]^2 - 54673366547/321711153750*x[3]*x[4]*x[5] -
6763831024/4595873625*x[3]*x[4]*x[6] + 54254863591/643422307500*x[3]*x[5]^2 + 
3042289141/13787620875*x[3]*x[5]*x[6] - 296476037/393932025*x[3]*x[6]^2 + 
86605816333/357456837500*x[4]^3 + 20447686843/357456837500*x[4]^2*x[5] - 
5945540599/15319578750*x[4]^2*x[6] + 208805202853/1072370512500*x[4]*x[5]^2 - 
41182046704/22979368125*x[4]*x[5]*x[6] + 1946544434/218851125*x[4]*x[6]^2 + 
203033940707/1072370512500*x[5]^3 + 44587024397/45958736250*x[5]^2*x[6] + 
7345680992/1969660125*x[5]*x[6]^2 + 23755440632/393932025*x[6]^3,
x[1]*x[4]^2 + 5154347/58360300*x[2]*x[4]*x[5] + 
1881128947/583603000*x[2]*x[4]*x[6] - 15677207/116720600*x[2]*x[5]^2 - 
314506601/583603000*x[2]*x[5]*x[6] + 730867039/116720600*x[2]*x[6]^2 - 
265668943/88240773600*x[3]^3 - 16861981/4201941600*x[3]^2*x[4] + 
46935419/4201941600*x[3]^2*x[5] - 372733171/2100970800*x[3]^2*x[6] - 
3001223657/245113260000*x[3]*x[4]^2 - 4601577793/40852210000*x[3]*x[4]*x[5] - 
4305381377/2626213500*x[3]*x[4]*x[6] + 3669778429/81704420000*x[3]*x[5]^2 + 
113999987/5252427000*x[3]*x[5]*x[6] - 283693907/116720600*x[3]*x[6]^2 + 
156961379543/408522100000*x[4]^3 - 777467247/408522100000*x[4]^2*x[5] - 
10288850029/17508090000*x[4]^2*x[6] + 65702768821/408522100000*x[4]*x[5]^2 - 
1873860069/729503750*x[4]*x[5]*x[6] - 935053/2626213500*x[4]*x[6]^2 + 
50480420099/408522100000*x[5]^3 + 3860553743/5836030000*x[5]^2*x[6] + 
2973689201/656553375*x[5]*x[6]^2 + 14878244563/393932025*x[6]^3,
x[1]*x[4]*x[5] + 11623801/14590075*x[2]*x[4]*x[5] - 
910494349/145900750*x[2]*x[4]*x[6] + 23546069/29180150*x[2]*x[5]^2 + 
466733967/145900750*x[2]*x[5]*x[6] - 464366413/29180150*x[2]*x[6]^2 + 
163919927/7353397800*x[3]^3 + 8835109/350161800*x[3]^2*x[4] + 
10375927/1050485400*x[3]^2*x[5] + 315827657/525242700*x[3]^2*x[6] + 
4788961473/20426105000*x[3]*x[4]^2 + 12779135693/30639157500*x[3]*x[4]*x[5] + 
133276601/72950375*x[3]*x[4]*x[6] - 5306949629/61278315000*x[3]*x[5]^2 - 
1106142029/1313106750*x[3]*x[5]*x[6] + 623766521/262621350*x[3]*x[6]^2 - 
5977610283/14590075000*x[4]^3 + 599290949/102130525000*x[4]^2*x[5] + 
4415091581/1459007500*x[4]^2*x[6] - 42430773207/102130525000*x[4]*x[5]^2 + 
4822432538/1094255625*x[4]*x[5]*x[6] - 5771401783/218851125*x[4]*x[6]^2 - 
33426278433/102130525000*x[5]^3 - 12798725143/4377022500*x[5]^2*x[6] - 
10729943168/656553375*x[5]*x[6]^2 - 1970390492/14590075*x[6]^3,
x[1]*x[4]*x[6] - 5372518/102130525*x[2]*x[4]*x[5] + 
196076651/510652625*x[2]*x[4]*x[6] - 2685421/102130525*x[2]*x[5]^2 + 
132295717/510652625*x[2]*x[5]*x[6] + 38849491/14590075*x[2]*x[6]^2 - 
369563/1225566300*x[3]^3 - 12918821/1225566300*x[3]^2*x[4] - 
224503/3676698900*x[3]^2*x[5] - 10349399/262621350*x[3]^2*x[6] - 
1010647777/71491367500*x[3]*x[4]^2 - 2608561057/107237051250*x[3]*x[4]*x[5] - 
114285673/510652625*x[3]*x[4]*x[6] + 2492030621/214474102500*x[3]*x[5]^2 + 
190543721/4595873625*x[3]*x[5]*x[6] - 100302047/131310675*x[3]*x[6]^2 + 
12220979469/357456837500*x[4]^3 + 3298987899/357456837500*x[4]^2*x[5] + 
781850131/5106526250*x[4]^2*x[6] + 9915445943/357456837500*x[4]*x[5]^2 - 
2106473624/7659789375*x[4]*x[5]*x[6] + 100100362/218851125*x[4]*x[6]^2 + 
9648952417/357456837500*x[5]^3 + 3509086207/15319578750*x[5]^2*x[6] + 
14873752/656553375*x[5]*x[6]^2 + 619869992/131310675*x[6]^3,
x[1]*x[5]^2 - 58444883/87540450*x[2]*x[4]*x[5] + 
6499989917/875404500*x[2]*x[4]*x[6] - 49851577/175080900*x[2]*x[5]^2 + 
4292082889/875404500*x[2]*x[5]*x[6] + 5091483929/175080900*x[2]*x[6]^2 - 
2439682291/44120386800*x[3]^3 - 739577897/2100970800*x[3]^2*x[4] + 
24311309/6302912400*x[3]^2*x[5] - 1994581381/3151456200*x[3]^2*x[6] + 
3333918697/40852210000*x[3]*x[4]^2 - 90572917669/183834945000*x[3]*x[4]*x[5] + 
567402317/437702250*x[3]*x[4]*x[6] + 15097304951/52524270000*x[3]*x[5]^2 + 
19593491357/7878640500*x[3]*x[5]*x[6] + 1746948707/1575728100*x[3]*x[6]^2 + 
42261858491/204261050000*x[4]^3 - 153695134739/204261050000*x[4]^2*x[5] + 
72276292727/8754045000*x[4]^2*x[6] + 268447730531/612783150000*x[4]*x[5]^2 - 
18459206777/3282766875*x[4]*x[5]*x[6] - 12709953361/1313106750*x[4]*x[6]^2 + 
260022867589/612783150000*x[5]^3 + 63835605019/26262135000*x[5]^2*x[6] - 
42080417078/1969660125*x[5]*x[6]^2 + 3450472718/43770225*x[6]^3,
x[1]*x[5]*x[6] - 42939458/306391575*x[2]*x[4]*x[5] - 
271099769/1531957875*x[2]*x[4]*x[6] - 18321851/306391575*x[2]*x[5]^2 - 
1122121423/1531957875*x[2]*x[5]*x[6] - 62986979/43770225*x[2]*x[6]^2 + 
12623147/3676698900*x[3]^3 + 117886949/3676698900*x[3]^2*x[4] + 
14103601/1575728100*x[3]^2*x[5] + 7103431/787864050*x[3]^2*x[6] - 
6102752687/214474102500*x[3]*x[4]^2 - 11739988367/321711153750*x[3]*x[4]*x[5] - 
146057046/510652625*x[3]*x[4]*x[6] - 9801703949/643422307500*x[3]*x[5]^2 - 
3589313474/13787620875*x[3]*x[5]*x[6] - 124367057/393932025*x[3]*x[6]^2 + 
5611104913/357456837500*x[4]^3 + 31952920023/357456837500*x[4]^2*x[5] - 
5456360713/5106526250*x[4]^2*x[6] + 34392730633/1072370512500*x[4]*x[5]^2 - 
15116787544/22979368125*x[4]*x[5]*x[6] + 2133296822/656553375*x[4]*x[6]^2 + 
35122506527/1072370512500*x[5]^3 + 7991481017/45958736250*x[5]^2*x[6] + 
5269883912/1969660125*x[5]*x[6]^2 + 1630603352/393932025*x[6]^3,
x[1]*x[6]^2 + 1118056/61278315*x[2]*x[4]*x[5] - 
46513532/306391575*x[2]*x[4]*x[6] + 497692/61278315*x[2]*x[5]^2 + 
9717356/306391575*x[2]*x[5]*x[6] - 596522/8754045*x[2]*x[6]^2 - 
132059/428948205*x[3]^3 - 2830271/1286844615*x[3]^2*x[4] - 
3343349/3860533845*x[3]^2*x[5] + 7037018/551504835*x[3]^2*x[6] + 
42967931/10723705125*x[3]*x[4]^2 + 182751542/32171115375*x[3]*x[4]*x[5] - 
504232/919174725*x[3]*x[4]*x[6] + 15012337/32171115375*x[3]*x[5]^2 + 
74151988/2757524175*x[3]*x[5]*x[6] + 445069/78786405*x[3]*x[6]^2 - 
80766629/17872841875*x[4]^3 - 169967459/17872841875*x[4]^2*x[5] + 
164347594/1531957875*x[4]^2*x[6] - 297521789/53618525625*x[4]*x[5]^2 + 
581277248/4595873625*x[4]*x[5]*x[6] - 17159276/14590075*x[4]*x[6]^2 - 
297577291/53618525625*x[5]^3 + 38909218/4595873625*x[5]^2*x[6] - 
42435964/393932025*x[5]*x[6]^2 - 129993664/78786405*x[6]^3,
x[2]^3 - 272778073/350161800*x[2]*x[4]*x[5] + 
4949598767/3501618000*x[2]*x[4]*x[6] - 308008787/700323600*x[2]*x[5]^2 - 
176845661/3501618000*x[2]*x[5]*x[6] - 7040499221/700323600*x[2]*x[6]^2 + 
394420211/75634948800*x[3]^3 + 52378631/2801294400*x[3]^2*x[4] + 
581407799/25211649600*x[3]^2*x[5] - 5010639631/12605824800*x[3]^2*x[6] + 
127044797923/1470679560000*x[3]*x[4]^2 - 
126507305119/735339780000*x[3]*x[4]*x[5] - 8821997399/5252427000*x[3]*x[4]*x[6] 
+ 26320899169/490226520000*x[3]*x[5]^2 - 12150512593/31514562000*x[3]*x[5]*x[6] 
- 9878992781/2100970800*x[3]*x[6]^2 + 91871368641/817044200000*x[4]^3 + 
695861473733/2451132600000*x[4]^2*x[5] - 303176063569/105048540000*x[4]^2*x[6] +
74100890681/2451132600000*x[4]*x[5]^2 - 54918224027/13131067500*x[4]*x[5]*x[6] +
69881564389/5252427000*x[4]*x[6]^2 + 504878713439/2451132600000*x[5]^3 + 
57557784923/35016180000*x[5]^2*x[6] + 31661370461/3939320250*x[5]*x[6]^2 + 
252190877743/2363592150*x[6]^3,
x[2]^2*x[3] + 26134641/58360300*x[2]*x[4]*x[5] + 
3002270121/583603000*x[2]*x[4]*x[6] + 76023579/116720600*x[2]*x[5]^2 + 
3242471957/583603000*x[2]*x[5]*x[6] - 4109123123/116720600*x[2]*x[6]^2 - 
15824323/1400647200*x[3]^3 - 203311463/4201941600*x[3]^2*x[4] - 
135411743/4201941600*x[3]^2*x[5] + 1468873847/2100970800*x[3]^2*x[6] + 
434256149/245113260000*x[3]*x[4]^2 + 17427810503/122556630000*x[3]*x[4]*x[5] + 
5869644989/2626213500*x[3]*x[4]*x[6] - 3257079353/81704420000*x[3]*x[5]^2 + 
3544947241/5252427000*x[3]*x[5]*x[6] - 5526212209/1050485400*x[3]*x[6]^2 - 
115941864651/408522100000*x[4]^3 - 74861962621/408522100000*x[4]^2*x[5] + 
98280437353/17508090000*x[4]^2*x[6] - 19575919697/408522100000*x[4]*x[5]^2 + 
13342892899/2188511250*x[4]*x[5]*x[6] - 62246187479/2626213500*x[4]*x[6]^2 - 
92523764743/408522100000*x[5]^3 - 12556529251/5836030000*x[5]^2*x[6] - 
16649687957/656553375*x[5]*x[6]^2 - 6188888797/131310675*x[6]^3,
x[2]^2*x[4] - 1097847/58360300*x[2]*x[4]*x[5] + 5046073/583603000*x[2]*x[4]*x[6]
+ 220907/116720600*x[2]*x[5]^2 + 1077719941/583603000*x[2]*x[5]*x[6] + 
516857901/116720600*x[2]*x[6]^2 + 85166563/88240773600*x[3]^3 - 
381674759/4201941600*x[3]^2*x[4] - 29538613/1400647200*x[3]^2*x[5] + 
77805911/2100970800*x[3]^2*x[6] + 22919692679/81704420000*x[3]*x[4]^2 + 
7000611239/122556630000*x[3]*x[4]*x[5] + 4442589557/2626213500*x[3]*x[4]*x[6] - 
2283685867/245113260000*x[3]*x[5]^2 + 161021937/583603000*x[3]*x[5]*x[6] + 
119138383/1050485400*x[3]*x[6]^2 - 205375258763/408522100000*x[4]^3 - 
85018437373/408522100000*x[4]^2*x[5] + 14952722563/5836030000*x[4]^2*x[6] - 
79061862161/408522100000*x[4]*x[5]^2 + 5038735987/2188511250*x[4]*x[5]*x[6] - 
40448185127/2626213500*x[4]*x[6]^2 - 16146119559/408522100000*x[5]^3 + 
6308701111/17508090000*x[5]^2*x[6] - 1262626547/218851125*x[5]*x[6]^2 - 
10030697383/393932025*x[6]^3,
x[2]^2*x[5] - 58823257/29180150*x[2]*x[4]*x[5] + 
2656093363/291801500*x[2]*x[4]*x[6] - 68712383/58360300*x[2]*x[5]^2 - 
2030605129/291801500*x[2]*x[5]*x[6] + 990599631/58360300*x[2]*x[6]^2 - 
654076447/44120386800*x[3]^3 + 37622619/233441200*x[3]^2*x[4] - 
30257509/2100970800*x[3]^2*x[5] - 974637059/1050485400*x[3]^2*x[6] - 
69079728953/122556630000*x[3]*x[4]^2 - 30172912291/61278315000*x[3]*x[4]*x[5] - 
2100200611/437702250*x[3]*x[4]*x[6] + 3002921741/40852210000*x[3]*x[5]^2 + 
80401523/2626213500*x[3]*x[5]*x[6] - 3090268027/525242700*x[3]*x[6]^2 + 
157300646247/204261050000*x[4]^3 + 98036462337/204261050000*x[4]^2*x[5] - 
102454109341/8754045000*x[4]^2*x[6] + 117757814309/204261050000*x[4]*x[5]^2 - 
10042578503/1094255625*x[4]*x[5]*x[6] + 27884920721/437702250*x[4]*x[6]^2 + 
118661148371/204261050000*x[5]^3 + 15844254047/2918015000*x[5]^2*x[6] + 
15581164858/656553375*x[5]*x[6]^2 + 97423142054/393932025*x[6]^3,
x[2]^2*x[6] + 20566416/102130525*x[2]*x[4]*x[5] - 
721873662/510652625*x[2]*x[4]*x[6] + 9636252/102130525*x[2]*x[5]^2 + 
152047946/510652625*x[2]*x[5]*x[6] - 27505892/14590075*x[2]*x[6]^2 - 
1333183/919174725*x[3]^3 + 442957/131310675*x[3]^2*x[4] - 
4935221/919174725*x[3]^2*x[5] + 11866219/131310675*x[3]^2*x[6] + 
2598098243/53618525625*x[3]*x[4]^2 + 4059521842/53618525625*x[3]*x[4]*x[5] + 
3603954934/4595873625*x[3]*x[4]*x[6] - 287425871/17872841875*x[3]*x[5]^2 + 
596565598/4595873625*x[3]*x[5]*x[6] + 207695564/131310675*x[3]*x[6]^2 - 
7553811057/89364209375*x[4]^3 - 6717579847/89364209375*x[4]^2*x[5] + 
2694734342/7659789375*x[4]^2*x[6] - 7191109379/89364209375*x[4]*x[5]^2 + 
7220786788/7659789375*x[4]*x[5]*x[6] - 3927591232/656553375*x[4]*x[6]^2 - 
7082585701/89364209375*x[5]^3 - 1234668314/2553263125*x[5]^2*x[6] - 
771060424/656553375*x[5]*x[6]^2 - 1666763168/43770225*x[6]^3,
x[2]*x[3]^2 + 360209127/116720600*x[2]*x[4]*x[5] - 
45537736593/1167206000*x[2]*x[4]*x[6] + 248031213/233441200*x[2]*x[5]^2 - 
8134922781/1167206000*x[2]*x[5]*x[6] - 15518043541/233441200*x[2]*x[6]^2 - 
263114341/2801294400*x[3]^3 + 1602751253/2801294400*x[3]^2*x[4] - 
288663107/2801294400*x[3]^2*x[5] + 3619097083/1400647200*x[3]^2*x[6] + 
196458732961/163408840000*x[3]*x[4]^2 + 83663966667/81704420000*x[3]*x[4]*x[5] +
27995682121/1750809000*x[3]*x[4]*x[6] - 63435169951/163408840000*x[3]*x[5]^2 + 
11413581349/3501618000*x[3]*x[5]*x[6] - 13729929101/700323600*x[3]*x[6]^2 - 
1405036009917/817044200000*x[4]^3 - 676083374907/817044200000*x[4]^2*x[5] - 
19445933083/11672060000*x[4]^2*x[6] - 1232199449799/817044200000*x[4]*x[5]^2 + 
21300971511/1459007500*x[4]*x[5]*x[6] - 243188480731/1750809000*x[4]*x[6]^2 - 
1262615019681/817044200000*x[5]^3 - 86633956517/11672060000*x[5]^2*x[6] - 
6375891473/437702250*x[5]*x[6]^2 - 26214226633/87540450*x[6]^3,
x[2]*x[3]*x[4] + 82730433/116720600*x[2]*x[4]*x[5] + 
4411032833/1167206000*x[2]*x[4]*x[6] + 47023827/233441200*x[2]*x[5]^2 - 
2972945139/1167206000*x[2]*x[5]*x[6] - 4514033979/233441200*x[2]*x[6]^2 + 
21020863/8403883200*x[3]^3 + 11655529/933764800*x[3]^2*x[4] + 
14423409/933764800*x[3]^2*x[5] + 335265077/1400647200*x[3]^2*x[6] - 
8112389841/163408840000*x[3]*x[4]^2 + 72131973/81704420000*x[3]*x[4]*x[5] - 
213714067/583603000*x[3]*x[4]*x[6] - 10759525969/163408840000*x[3]*x[5]^2 - 
561687623/1167206000*x[3]*x[5]*x[6] + 3121710781/700323600*x[3]*x[6]^2 + 
388502053677/817044200000*x[4]^3 - 266516126133/817044200000*x[4]^2*x[5] + 
50096934123/11672060000*x[4]^2*x[6] + 70124634519/817044200000*x[4]*x[5]^2 + 
4749424809/1459007500*x[4]*x[5]*x[6] - 18378672263/583603000*x[4]*x[6]^2 - 
121586526639/817044200000*x[5]^3 - 20417764523/11672060000*x[5]^2*x[6] + 
404951771/145900750*x[5]*x[6]^2 - 4807569781/262621350*x[6]^3,
x[2]*x[3]*x[5] + 31273452/14590075*x[2]*x[4]*x[5] - 
692881173/145900750*x[2]*x[4]*x[6] + 43040613/29180150*x[2]*x[5]^2 + 
2287554859/145900750*x[2]*x[5]*x[6] - 44157351/29180150*x[2]*x[6]^2 - 
13748353/1050485400*x[3]^3 - 37012799/116720600*x[3]^2*x[4] - 
53622037/350161800*x[3]^2*x[5] + 31735571/58360300*x[3]^2*x[6] + 
11336706271/20426105000*x[3]*x[4]^2 + 5738432737/10213052500*x[3]*x[4]*x[5] + 
365816852/72950375*x[3]*x[4]*x[6] - 1447189161/20426105000*x[3]*x[5]^2 + 
448547489/437702250*x[3]*x[5]*x[6] + 517980589/87540450*x[3]*x[6]^2 - 
61771437387/102130525000*x[4]^3 - 54853496277/102130525000*x[4]^2*x[5] + 
21427964087/1459007500*x[4]^2*x[6] - 98810699889/102130525000*x[4]*x[5]^2 + 
5996124742/364751875*x[4]*x[5]*x[6] - 4592217497/72950375*x[4]*x[6]^2 - 
42895745391/102130525000*x[5]^3 - 2322501687/1459007500*x[5]^2*x[6] - 
15479516962/218851125*x[5]*x[6]^2 - 24721227356/131310675*x[6]^3,
x[2]*x[3]*x[6] - 3673461/14590075*x[2]*x[4]*x[5] + 
266850129/145900750*x[2]*x[4]*x[6] - 3359859/29180150*x[2]*x[5]^2 - 
13185207/145900750*x[2]*x[5]*x[6] + 232871723/29180150*x[2]*x[6]^2 + 
7308461/2451132600*x[3]^3 + 30313267/2451132600*x[3]^2*x[4] + 
22614107/2451132600*x[3]^2*x[5] - 43157449/175080900*x[3]^2*x[6] - 
1185628783/20426105000*x[3]*x[4]^2 - 887051301/10213052500*x[3]*x[4]*x[5] - 
110832088/218851125*x[3]*x[4]*x[6] + 150556753/20426105000*x[3]*x[5]^2 - 
169109197/437702250*x[3]*x[5]*x[6] - 152762197/87540450*x[3]*x[6]^2 + 
8670774051/102130525000*x[4]^3 + 11423784021/102130525000*x[4]^2*x[5] - 
834809651/1459007500*x[4]^2*x[6] + 9097537497/102130525000*x[4]*x[5]^2 - 
667750716/364751875*x[4]*x[5]*x[6] + 3893712193/218851125*x[4]*x[6]^2 + 
9017564943/102130525000*x[5]^3 + 631999451/1459007500*x[5]^2*x[6] + 
999762176/218851125*x[5]*x[6]^2 - 27557068/14590075*x[6]^3,
x[2]*x[4]^2 + 5130481/14006472*x[2]*x[4]*x[5] + 
34856473/140064720*x[2]*x[4]*x[6] + 8378843/28012944*x[2]*x[5]^2 + 
541196741/140064720*x[2]*x[5]*x[6] + 343563101/28012944*x[2]*x[6]^2 + 
35855509/3025397952*x[3]^3 - 5136117/37350592*x[3]^2*x[4] + 
13979761/1008465984*x[3]^2*x[5] + 13444711/504232992*x[3]^2*x[6] + 
24142902437/58827182400*x[3]*x[4]^2 + 272098039/29413591200*x[3]*x[4]*x[5] - 
151147681/210097080*x[3]*x[4]*x[6] + 1030337911/19609060800*x[3]*x[5]^2 - 
359716967/1260582480*x[3]*x[5]*x[6] - 462378539/84038832*x[3]*x[6]^2 + 
2717745879/32681768000*x[4]^3 - 20806048973/98045304000*x[4]^2*x[5] + 
37724708089/4201941600*x[4]^2*x[6] - 31900555361/98045304000*x[4]*x[5]^2 - 
874024813/525242700*x[4]*x[5]*x[6] - 1979200909/210097080*x[4]*x[6]^2 + 
4299461641/98045304000*x[5]^3 + 23312237/1400647200*x[5]^2*x[6] - 
1363638941/157572810*x[5]*x[6]^2 - 3575969383/94543686*x[6]^3
]);
