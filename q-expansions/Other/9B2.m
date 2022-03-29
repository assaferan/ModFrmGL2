
    /****************************************************
    Loading this file in magma loads the objects fs_9B2 
    and X_9B2. fs_9B2 is a list of power series which form 
    a basis for the space of cusp forms. X_9B2 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | 1, -3, 0, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_9B2 := [Kq | (-zeta^2 + 2)*q + (2*zeta^2 + zeta - 4)*q^2 - 
zeta*q^4 + (zeta^2 + 2*zeta - 2)*q^5 + (2*zeta^2 + 2*zeta - 4)*q^7 + (zeta^2 - 
zeta - 2)*q^8 + (3*zeta^2 - 6)*q^10 + (-4*zeta^2 - 2*zeta + 8)*q^11 + zeta*q^13 
+ (-2*zeta^2 - 4*zeta + 4)*q^14 + (-5*zeta^2 - 5*zeta + 10)*q^16 + (-3*zeta^2 + 
3*zeta + 6)*q^17 + (-2*zeta^2 + 4)*q^19 + (-2*zeta^2 - zeta + 4)*q^20 + 
6*zeta*q^22 + (-2*zeta^2 - 4*zeta + 4)*q^23 + (-2*zeta^2 - 2*zeta + 4)*q^25 + 
(zeta^2 - zeta - 2)*q^26 + (-2*zeta^2 + 4)*q^28 + (2*zeta^2 + zeta - 4)*q^29 - 
8*zeta*q^31 + (3*zeta^2 + 6*zeta - 6)*q^32 + (9*zeta^2 + 9*zeta - 18)*q^34 + 
(2*zeta^2 - 2*zeta - 4)*q^35 + (7*zeta^2 - 14)*q^37 + (4*zeta^2 + 2*zeta - 
8)*q^38 - 3*zeta*q^40 + (4*zeta^2 + 8*zeta - 8)*q^41 + (2*zeta^2 + 2*zeta - 
4)*q^43 + (2*zeta^2 - 2*zeta - 4)*q^44 + (-6*zeta^2 + 12)*q^46 + (8*zeta^2 + 
4*zeta - 16)*q^47 + 3*zeta*q^49 + (2*zeta^2 + 4*zeta - 4)*q^50 + (-zeta^2 - zeta
+ 2)*q^52 + (-6*zeta^2 + 12)*q^55 + (-4*zeta^2 - 2*zeta + 8)*q^56 - 3*zeta*q^58 
+ (-8*zeta^2 - 16*zeta + 16)*q^59 + (-7*zeta^2 - 7*zeta + 14)*q^61 + (-8*zeta^2 
+ 8*zeta + 16)*q^62 + (-zeta^2 + 2)*q^64 + (2*zeta^2 + zeta - 4)*q^65 + 
10*zeta*q^67 + (-3*zeta^2 - 6*zeta + 6)*q^68 + (-6*zeta^2 - 6*zeta + 12)*q^70 + 
(6*zeta^2 - 6*zeta - 12)*q^71 + (7*zeta^2 - 14)*q^73 + (-14*zeta^2 - 7*zeta + 
28)*q^74 - 2*zeta*q^76 + (4*zeta^2 + 8*zeta - 8)*q^77 + (2*zeta^2 + 2*zeta - 
4)*q^79 + (-5*zeta^2 + 5*zeta + 10)*q^80 + (12*zeta^2 - 24)*q^82 + (-16*zeta^2 -
8*zeta + 32)*q^83 + 9*zeta*q^85 + (-2*zeta^2 - 4*zeta + 4)*q^86 + (6*zeta^2 + 
6*zeta - 12)*q^88 + (3*zeta^2 - 3*zeta - 6)*q^89 + (2*zeta^2 - 4)*q^91 + 
(4*zeta^2 + 2*zeta - 8)*q^92 - 12*zeta*q^94 + (2*zeta^2 + 4*zeta - 4)*q^95 + 
(2*zeta^2 + 2*zeta - 4)*q^97 + (3*zeta^2 - 3*zeta - 6)*q^98 + (2*zeta^2 - 
4)*q^100 + (8*zeta^2 + 4*zeta - 16)*q^101 - 8*zeta*q^103 + (-zeta^2 - 2*zeta + 
2)*q^104 + (-11*zeta^2 + 22)*q^109 + (12*zeta^2 + 6*zeta - 24)*q^110 + 
10*zeta*q^112 + (zeta^2 + 2*zeta - 2)*q^113 + (-6*zeta^2 - 6*zeta + 12)*q^115 + 
(-zeta^2 + zeta + 2)*q^116 + (-24*zeta^2 + 48)*q^118 + (12*zeta^2 + 6*zeta - 
24)*q^119 - zeta*q^121 + (7*zeta^2 + 14*zeta - 14)*q^122 + (8*zeta^2 + 8*zeta - 
16)*q^124 + (-7*zeta^2 + 7*zeta + 14)*q^125 + (-2*zeta^2 + 4)*q^127 + (14*zeta^2
+ 7*zeta - 28)*q^128 - 3*zeta*q^130 + (-2*zeta^2 - 4*zeta + 4)*q^131 + (4*zeta^2
+ 4*zeta - 8)*q^133 + (10*zeta^2 - 10*zeta - 20)*q^134 + (9*zeta^2 - 18)*q^136 +
(2*zeta^2 + zeta - 4)*q^137 - 8*zeta*q^139 + (2*zeta^2 + 4*zeta - 4)*q^140 + 
(-18*zeta^2 - 18*zeta + 36)*q^142 + (-2*zeta^2 + 2*zeta + 4)*q^143 + (3*zeta^2 -
6)*q^145 + (-14*zeta^2 - 7*zeta + 28)*q^146 + 7*zeta*q^148 + (-5*zeta^2 - 
10*zeta + 10)*q^149 + (20*zeta^2 + 20*zeta - 40)*q^151 + (2*zeta^2 - 2*zeta - 
4)*q^152 + (12*zeta^2 - 24)*q^154 + (-16*zeta^2 - 8*zeta + 32)*q^155 - 
17*zeta*q^157 + (-2*zeta^2 - 4*zeta + 4)*q^158 + (9*zeta^2 + 9*zeta - 18)*q^160 
+ (-4*zeta^2 + 4*zeta + 8)*q^161 + (16*zeta^2 - 32)*q^163 + (-8*zeta^2 - 4*zeta 
+ 16)*q^164 + 24*zeta*q^166 + (10*zeta^2 + 20*zeta - 20)*q^167 + (-12*zeta^2 - 
12*zeta + 24)*q^169 + (9*zeta^2 - 9*zeta - 18)*q^170 + (-2*zeta^2 + 4)*q^172 + 
(-22*zeta^2 - 11*zeta + 44)*q^173 + 4*zeta*q^175 + (-10*zeta^2 - 20*zeta + 
20)*q^176 + (-9*zeta^2 - 9*zeta + 18)*q^178 + (-12*zeta^2 + 12*zeta + 24)*q^179 
+ (-2*zeta^2 + 4)*q^181 + (-4*zeta^2 - 2*zeta + 8)*q^182 + 6*zeta*q^184 + 
(-7*zeta^2 - 14*zeta + 14)*q^185 + (-18*zeta^2 - 18*zeta + 36)*q^187 + 
(-4*zeta^2 + 4*zeta + 8)*q^188 + (6*zeta^2 - 12)*q^190 + (20*zeta^2 + 10*zeta - 
40)*q^191 + zeta*q^193 + (-2*zeta^2 - 4*zeta + 4)*q^194 + (-3*zeta^2 - 3*zeta + 
6)*q^196 + (3*zeta^2 - 3*zeta - 6)*q^197 + (-20*zeta^2 + 40)*q^199 + (4*zeta^2 +
2*zeta - 8)*q^200 - 12*zeta*q^202 + (-2*zeta^2 - 4*zeta + 4)*q^203 + (12*zeta^2 
+ 12*zeta - 24)*q^205 + (-8*zeta^2 + 8*zeta + 16)*q^206 + (-5*zeta^2 + 10)*q^208
+ (-8*zeta^2 - 4*zeta + 16)*q^209 + 10*zeta*q^211 + (2*zeta^2 - 2*zeta - 
4)*q^215 + (-16*zeta^2 + 32)*q^217 + (22*zeta^2 + 11*zeta - 44)*q^218 - 
6*zeta*q^220 + (3*zeta^2 + 6*zeta - 6)*q^221 + (2*zeta^2 + 2*zeta - 4)*q^223 + 
(6*zeta^2 - 6*zeta - 12)*q^224 + (3*zeta^2 - 6)*q^226 + (-4*zeta^2 - 2*zeta + 
8)*q^227 + zeta*q^229 + (6*zeta^2 + 12*zeta - 12)*q^230 + (-3*zeta^2 - 3*zeta + 
6)*q^232 + (15*zeta^2 - 15*zeta - 30)*q^233 + (12*zeta^2 - 24)*q^235 + 
(16*zeta^2 + 8*zeta - 32)*q^236 - 18*zeta*q^238 + (16*zeta^2 + 32*zeta - 
32)*q^239 + (29*zeta^2 + 29*zeta - 58)*q^241 + (-zeta^2 + zeta + 2)*q^242 + 
(7*zeta^2 - 14)*q^244 + (6*zeta^2 + 3*zeta - 12)*q^245 + 2*zeta*q^247 + 
(8*zeta^2 + 16*zeta - 16)*q^248 + (21*zeta^2 + 21*zeta - 42)*q^250 + (-6*zeta^2 
+ 6*zeta + 12)*q^251 + (12*zeta^2 - 24)*q^253 + (4*zeta^2 + 2*zeta - 8)*q^254 - 
19*zeta*q^256 + (-5*zeta^2 - 10*zeta + 10)*q^257 + (-14*zeta^2 - 14*zeta + 
28)*q^259 + (-zeta^2 + zeta + 2)*q^260 + (-6*zeta^2 + 12)*q^262 + (8*zeta^2 + 
4*zeta - 16)*q^263 + (-4*zeta^2 - 8*zeta + 8)*q^266 + (-10*zeta^2 - 10*zeta + 
20)*q^268 + (9*zeta^2 - 9*zeta - 18)*q^269 + (-2*zeta^2 + 4)*q^271 + (-30*zeta^2
- 15*zeta + 60)*q^272 - 3*zeta*q^274 + (-4*zeta^2 - 8*zeta + 8)*q^275 + 
(2*zeta^2 + 2*zeta - 4)*q^277 + (-8*zeta^2 + 8*zeta + 16)*q^278 + (-6*zeta^2 + 
12)*q^280 + (14*zeta^2 + 7*zeta - 28)*q^281 + 28*zeta*q^283 + (6*zeta^2 + 
12*zeta - 12)*q^284 + (6*zeta^2 + 6*zeta - 12)*q^286 + (8*zeta^2 - 8*zeta - 
16)*q^287 + (-10*zeta^2 + 20)*q^289 + (-6*zeta^2 - 3*zeta + 12)*q^290 + 
7*zeta*q^292 + (-11*zeta^2 - 22*zeta + 22)*q^293 + (-24*zeta^2 - 24*zeta + 
48)*q^295 + (-7*zeta^2 + 7*zeta + 14)*q^296 + (-15*zeta^2 + 30)*q^298 + 
(-4*zeta^2 - 2*zeta + 8)*q^299 - 4*zeta*q^301 + (-20*zeta^2 - 40*zeta + 
40)*q^302 + (-10*zeta^2 - 10*zeta + 20)*q^304 + (-7*zeta^2 + 7*zeta + 14)*q^305 
+ (16*zeta^2 - 32)*q^307 + (-8*zeta^2 - 4*zeta + 16)*q^308 + 24*zeta*q^310 + 
(4*zeta^2 + 8*zeta - 8)*q^311 + (-25*zeta^2 - 25*zeta + 50)*q^313 + (-17*zeta^2 
+ 17*zeta + 34)*q^314 + (-2*zeta^2 + 4)*q^316 + (-10*zeta^2 - 5*zeta + 20)*q^317
+ 6*zeta*q^319 + (zeta^2 + 2*zeta - 2)*q^320 + (12*zeta^2 + 12*zeta - 24)*q^322 
+ (-6*zeta^2 + 6*zeta + 12)*q^323 + (-2*zeta^2 + 4)*q^325 + (-32*zeta^2 - 
16*zeta + 64)*q^326 - 12*zeta*q^328 + (-8*zeta^2 - 16*zeta + 16)*q^329 + 
(2*zeta^2 + 2*zeta - 4)*q^331 + (8*zeta^2 - 8*zeta - 16)*q^332 + (30*zeta^2 - 
60)*q^334 + (20*zeta^2 + 10*zeta - 40)*q^335 - 26*zeta*q^337 + (12*zeta^2 + 
24*zeta - 24)*q^338 + (-9*zeta^2 - 9*zeta + 18)*q^340 + (16*zeta^2 - 16*zeta - 
32)*q^341 + (20*zeta^2 - 40)*q^343 + (-4*zeta^2 - 2*zeta + 8)*q^344 + 
33*zeta*q^346 + (-2*zeta^2 - 4*zeta + 4)*q^347 + (2*zeta^2 + 2*zeta - 4)*q^349 +
(4*zeta^2 - 4*zeta - 8)*q^350 + (-18*zeta^2 + 36)*q^352 + (-16*zeta^2 - 8*zeta +
32)*q^353 - 18*zeta*q^355 + (3*zeta^2 + 6*zeta - 6)*q^356 + (36*zeta^2 + 36*zeta
- 72)*q^358 + (-6*zeta^2 + 6*zeta + 12)*q^359 + O(q^360), (-zeta^2 + 2)*q + 
(2*zeta^2 + zeta - 4)*q^2 - zeta*q^4 + (zeta^2 + 2*zeta - 2)*q^5 + (2*zeta^2 + 
2*zeta - 4)*q^7 + (zeta^2 - zeta - 2)*q^8 + (3*zeta^2 - 6)*q^10 + (-4*zeta^2 - 
2*zeta + 8)*q^11 + zeta*q^13 + (-2*zeta^2 - 4*zeta + 4)*q^14 + (-5*zeta^2 - 
5*zeta + 10)*q^16 + (-3*zeta^2 + 3*zeta + 6)*q^17 + (-2*zeta^2 + 4)*q^19 + 
(-2*zeta^2 - zeta + 4)*q^20 + 6*zeta*q^22 + (-2*zeta^2 - 4*zeta + 4)*q^23 + 
(-2*zeta^2 - 2*zeta + 4)*q^25 + (zeta^2 - zeta - 2)*q^26 + (-2*zeta^2 + 4)*q^28 
+ (2*zeta^2 + zeta - 4)*q^29 - 8*zeta*q^31 + (3*zeta^2 + 6*zeta - 6)*q^32 + 
(9*zeta^2 + 9*zeta - 18)*q^34 + (2*zeta^2 - 2*zeta - 4)*q^35 + (7*zeta^2 - 
14)*q^37 + (4*zeta^2 + 2*zeta - 8)*q^38 - 3*zeta*q^40 + (4*zeta^2 + 8*zeta - 
8)*q^41 + (2*zeta^2 + 2*zeta - 4)*q^43 + (2*zeta^2 - 2*zeta - 4)*q^44 + 
(-6*zeta^2 + 12)*q^46 + (8*zeta^2 + 4*zeta - 16)*q^47 + 3*zeta*q^49 + (2*zeta^2 
+ 4*zeta - 4)*q^50 + (-zeta^2 - zeta + 2)*q^52 + (-6*zeta^2 + 12)*q^55 + 
(-4*zeta^2 - 2*zeta + 8)*q^56 - 3*zeta*q^58 + (-8*zeta^2 - 16*zeta + 16)*q^59 + 
(-7*zeta^2 - 7*zeta + 14)*q^61 + (-8*zeta^2 + 8*zeta + 16)*q^62 + (-zeta^2 + 
2)*q^64 + (2*zeta^2 + zeta - 4)*q^65 + 10*zeta*q^67 + (-3*zeta^2 - 6*zeta + 
6)*q^68 + (-6*zeta^2 - 6*zeta + 12)*q^70 + (6*zeta^2 - 6*zeta - 12)*q^71 + 
(7*zeta^2 - 14)*q^73 + (-14*zeta^2 - 7*zeta + 28)*q^74 - 2*zeta*q^76 + (4*zeta^2
+ 8*zeta - 8)*q^77 + (2*zeta^2 + 2*zeta - 4)*q^79 + (-5*zeta^2 + 5*zeta + 
10)*q^80 + (12*zeta^2 - 24)*q^82 + (-16*zeta^2 - 8*zeta + 32)*q^83 + 9*zeta*q^85
+ (-2*zeta^2 - 4*zeta + 4)*q^86 + (6*zeta^2 + 6*zeta - 12)*q^88 + (3*zeta^2 - 
3*zeta - 6)*q^89 + (2*zeta^2 - 4)*q^91 + (4*zeta^2 + 2*zeta - 8)*q^92 - 
12*zeta*q^94 + (2*zeta^2 + 4*zeta - 4)*q^95 + (2*zeta^2 + 2*zeta - 4)*q^97 + 
(3*zeta^2 - 3*zeta - 6)*q^98 + (2*zeta^2 - 4)*q^100 + (8*zeta^2 + 4*zeta - 
16)*q^101 - 8*zeta*q^103 + (-zeta^2 - 2*zeta + 2)*q^104 + (-11*zeta^2 + 
22)*q^109 + (12*zeta^2 + 6*zeta - 24)*q^110 + 10*zeta*q^112 + (zeta^2 + 2*zeta -
2)*q^113 + (-6*zeta^2 - 6*zeta + 12)*q^115 + (-zeta^2 + zeta + 2)*q^116 + 
(-24*zeta^2 + 48)*q^118 + (12*zeta^2 + 6*zeta - 24)*q^119 - zeta*q^121 + 
(7*zeta^2 + 14*zeta - 14)*q^122 + (8*zeta^2 + 8*zeta - 16)*q^124 + (-7*zeta^2 + 
7*zeta + 14)*q^125 + (-2*zeta^2 + 4)*q^127 + (14*zeta^2 + 7*zeta - 28)*q^128 - 
3*zeta*q^130 + (-2*zeta^2 - 4*zeta + 4)*q^131 + (4*zeta^2 + 4*zeta - 8)*q^133 + 
(10*zeta^2 - 10*zeta - 20)*q^134 + (9*zeta^2 - 18)*q^136 + (2*zeta^2 + zeta - 
4)*q^137 - 8*zeta*q^139 + (2*zeta^2 + 4*zeta - 4)*q^140 + (-18*zeta^2 - 18*zeta 
+ 36)*q^142 + (-2*zeta^2 + 2*zeta + 4)*q^143 + (3*zeta^2 - 6)*q^145 + 
(-14*zeta^2 - 7*zeta + 28)*q^146 + 7*zeta*q^148 + (-5*zeta^2 - 10*zeta + 
10)*q^149 + (20*zeta^2 + 20*zeta - 40)*q^151 + (2*zeta^2 - 2*zeta - 4)*q^152 + 
(12*zeta^2 - 24)*q^154 + (-16*zeta^2 - 8*zeta + 32)*q^155 - 17*zeta*q^157 + 
(-2*zeta^2 - 4*zeta + 4)*q^158 + (9*zeta^2 + 9*zeta - 18)*q^160 + (-4*zeta^2 + 
4*zeta + 8)*q^161 + (16*zeta^2 - 32)*q^163 + (-8*zeta^2 - 4*zeta + 16)*q^164 + 
24*zeta*q^166 + (10*zeta^2 + 20*zeta - 20)*q^167 + (-12*zeta^2 - 12*zeta + 
24)*q^169 + (9*zeta^2 - 9*zeta - 18)*q^170 + (-2*zeta^2 + 4)*q^172 + (-22*zeta^2
- 11*zeta + 44)*q^173 + 4*zeta*q^175 + (-10*zeta^2 - 20*zeta + 20)*q^176 + 
(-9*zeta^2 - 9*zeta + 18)*q^178 + (-12*zeta^2 + 12*zeta + 24)*q^179 + (-2*zeta^2
+ 4)*q^181 + (-4*zeta^2 - 2*zeta + 8)*q^182 + 6*zeta*q^184 + (-7*zeta^2 - 
14*zeta + 14)*q^185 + (-18*zeta^2 - 18*zeta + 36)*q^187 + (-4*zeta^2 + 4*zeta + 
8)*q^188 + (6*zeta^2 - 12)*q^190 + (20*zeta^2 + 10*zeta - 40)*q^191 + zeta*q^193
+ (-2*zeta^2 - 4*zeta + 4)*q^194 + (-3*zeta^2 - 3*zeta + 6)*q^196 + (3*zeta^2 - 
3*zeta - 6)*q^197 + (-20*zeta^2 + 40)*q^199 + (4*zeta^2 + 2*zeta - 8)*q^200 - 
12*zeta*q^202 + (-2*zeta^2 - 4*zeta + 4)*q^203 + (12*zeta^2 + 12*zeta - 
24)*q^205 + (-8*zeta^2 + 8*zeta + 16)*q^206 + (-5*zeta^2 + 10)*q^208 + 
(-8*zeta^2 - 4*zeta + 16)*q^209 + 10*zeta*q^211 + (2*zeta^2 - 2*zeta - 4)*q^215 
+ (-16*zeta^2 + 32)*q^217 + (22*zeta^2 + 11*zeta - 44)*q^218 - 6*zeta*q^220 + 
(3*zeta^2 + 6*zeta - 6)*q^221 + (2*zeta^2 + 2*zeta - 4)*q^223 + (6*zeta^2 - 
6*zeta - 12)*q^224 + (3*zeta^2 - 6)*q^226 + (-4*zeta^2 - 2*zeta + 8)*q^227 + 
zeta*q^229 + (6*zeta^2 + 12*zeta - 12)*q^230 + (-3*zeta^2 - 3*zeta + 6)*q^232 + 
(15*zeta^2 - 15*zeta - 30)*q^233 + (12*zeta^2 - 24)*q^235 + (16*zeta^2 + 8*zeta 
- 32)*q^236 - 18*zeta*q^238 + (16*zeta^2 + 32*zeta - 32)*q^239 + (29*zeta^2 + 
29*zeta - 58)*q^241 + (-zeta^2 + zeta + 2)*q^242 + (7*zeta^2 - 14)*q^244 + 
(6*zeta^2 + 3*zeta - 12)*q^245 + 2*zeta*q^247 + (8*zeta^2 + 16*zeta - 16)*q^248 
+ (21*zeta^2 + 21*zeta - 42)*q^250 + (-6*zeta^2 + 6*zeta + 12)*q^251 + 
(12*zeta^2 - 24)*q^253 + (4*zeta^2 + 2*zeta - 8)*q^254 - 19*zeta*q^256 + 
(-5*zeta^2 - 10*zeta + 10)*q^257 + (-14*zeta^2 - 14*zeta + 28)*q^259 + (-zeta^2 
+ zeta + 2)*q^260 + (-6*zeta^2 + 12)*q^262 + (8*zeta^2 + 4*zeta - 16)*q^263 + 
(-4*zeta^2 - 8*zeta + 8)*q^266 + (-10*zeta^2 - 10*zeta + 20)*q^268 + (9*zeta^2 -
9*zeta - 18)*q^269 + (-2*zeta^2 + 4)*q^271 + (-30*zeta^2 - 15*zeta + 60)*q^272 -
3*zeta*q^274 + (-4*zeta^2 - 8*zeta + 8)*q^275 + (2*zeta^2 + 2*zeta - 4)*q^277 + 
(-8*zeta^2 + 8*zeta + 16)*q^278 + (-6*zeta^2 + 12)*q^280 + (14*zeta^2 + 7*zeta -
28)*q^281 + 28*zeta*q^283 + (6*zeta^2 + 12*zeta - 12)*q^284 + (6*zeta^2 + 6*zeta
- 12)*q^286 + (8*zeta^2 - 8*zeta - 16)*q^287 + (-10*zeta^2 + 20)*q^289 + 
(-6*zeta^2 - 3*zeta + 12)*q^290 + 7*zeta*q^292 + (-11*zeta^2 - 22*zeta + 
22)*q^293 + (-24*zeta^2 - 24*zeta + 48)*q^295 + (-7*zeta^2 + 7*zeta + 14)*q^296 
+ (-15*zeta^2 + 30)*q^298 + (-4*zeta^2 - 2*zeta + 8)*q^299 - 4*zeta*q^301 + 
(-20*zeta^2 - 40*zeta + 40)*q^302 + (-10*zeta^2 - 10*zeta + 20)*q^304 + 
(-7*zeta^2 + 7*zeta + 14)*q^305 + (16*zeta^2 - 32)*q^307 + (-8*zeta^2 - 4*zeta +
16)*q^308 + 24*zeta*q^310 + (4*zeta^2 + 8*zeta - 8)*q^311 + (-25*zeta^2 - 
25*zeta + 50)*q^313 + (-17*zeta^2 + 17*zeta + 34)*q^314 + (-2*zeta^2 + 4)*q^316 
+ (-10*zeta^2 - 5*zeta + 20)*q^317 + 6*zeta*q^319 + (zeta^2 + 2*zeta - 2)*q^320 
+ (12*zeta^2 + 12*zeta - 24)*q^322 + (-6*zeta^2 + 6*zeta + 12)*q^323 + 
(-2*zeta^2 + 4)*q^325 + (-32*zeta^2 - 16*zeta + 64)*q^326 - 12*zeta*q^328 + 
(-8*zeta^2 - 16*zeta + 16)*q^329 + (2*zeta^2 + 2*zeta - 4)*q^331 + (8*zeta^2 - 
8*zeta - 16)*q^332 + (30*zeta^2 - 60)*q^334 + (20*zeta^2 + 10*zeta - 40)*q^335 -
26*zeta*q^337 + (12*zeta^2 + 24*zeta - 24)*q^338 + (-9*zeta^2 - 9*zeta + 
18)*q^340 + (16*zeta^2 - 16*zeta - 32)*q^341 + (20*zeta^2 - 40)*q^343 + 
(-4*zeta^2 - 2*zeta + 8)*q^344 + 33*zeta*q^346 + (-2*zeta^2 - 4*zeta + 4)*q^347 
+ (2*zeta^2 + 2*zeta - 4)*q^349 + (4*zeta^2 - 4*zeta - 8)*q^350 + (-18*zeta^2 + 
36)*q^352 + (-16*zeta^2 - 8*zeta + 32)*q^353 - 18*zeta*q^355 + (3*zeta^2 + 
6*zeta - 6)*q^356 + (36*zeta^2 + 36*zeta - 72)*q^358 + (-6*zeta^2 + 6*zeta + 
12)*q^359 + O(q^360), 2*zeta*q + (2*zeta^2 + 4*zeta - 4)*q^2 + (-2*zeta^2 - 
2*zeta + 4)*q^4 + (-2*zeta^2 + 2*zeta + 4)*q^5 + (4*zeta^2 - 8)*q^7 + (4*zeta^2 
+ 2*zeta - 8)*q^8 - 6*zeta*q^10 + (-4*zeta^2 - 8*zeta + 8)*q^11 + (2*zeta^2 + 
2*zeta - 4)*q^13 + (4*zeta^2 - 4*zeta - 8)*q^14 + (-10*zeta^2 + 20)*q^16 + 
(-12*zeta^2 - 6*zeta + 24)*q^17 + 4*zeta*q^19 + (-2*zeta^2 - 4*zeta + 4)*q^20 + 
(12*zeta^2 + 12*zeta - 24)*q^22 + (4*zeta^2 - 4*zeta - 8)*q^23 + (-4*zeta^2 + 
8)*q^25 + (4*zeta^2 + 2*zeta - 8)*q^26 + 4*zeta*q^28 + (2*zeta^2 + 4*zeta - 
4)*q^29 + (-16*zeta^2 - 16*zeta + 32)*q^31 + (-6*zeta^2 + 6*zeta + 12)*q^32 + 
(18*zeta^2 - 36)*q^34 + (8*zeta^2 + 4*zeta - 16)*q^35 - 14*zeta*q^37 + (4*zeta^2
+ 8*zeta - 8)*q^38 + (-6*zeta^2 - 6*zeta + 12)*q^40 + (-8*zeta^2 + 8*zeta + 
16)*q^41 + (4*zeta^2 - 8)*q^43 + (8*zeta^2 + 4*zeta - 16)*q^44 + 12*zeta*q^46 + 
(8*zeta^2 + 16*zeta - 16)*q^47 + (6*zeta^2 + 6*zeta - 12)*q^49 + (-4*zeta^2 + 
4*zeta + 8)*q^50 + (-2*zeta^2 + 4)*q^52 + 12*zeta*q^55 + (-4*zeta^2 - 8*zeta + 
8)*q^56 + (-6*zeta^2 - 6*zeta + 12)*q^58 + (16*zeta^2 - 16*zeta - 32)*q^59 + 
(-14*zeta^2 + 28)*q^61 + (-32*zeta^2 - 16*zeta + 64)*q^62 + 2*zeta*q^64 + 
(2*zeta^2 + 4*zeta - 4)*q^65 + (20*zeta^2 + 20*zeta - 40)*q^67 + (6*zeta^2 - 
6*zeta - 12)*q^68 + (-12*zeta^2 + 24)*q^70 + (24*zeta^2 + 12*zeta - 48)*q^71 - 
14*zeta*q^73 + (-14*zeta^2 - 28*zeta + 28)*q^74 + (-4*zeta^2 - 4*zeta + 8)*q^76 
+ (-8*zeta^2 + 8*zeta + 16)*q^77 + (4*zeta^2 - 8)*q^79 + (-20*zeta^2 - 10*zeta +
40)*q^80 - 24*zeta*q^82 + (-16*zeta^2 - 32*zeta + 32)*q^83 + (18*zeta^2 + 
18*zeta - 36)*q^85 + (4*zeta^2 - 4*zeta - 8)*q^86 + (12*zeta^2 - 24)*q^88 + 
(12*zeta^2 + 6*zeta - 24)*q^89 - 4*zeta*q^91 + (4*zeta^2 + 8*zeta - 8)*q^92 + 
(-24*zeta^2 - 24*zeta + 48)*q^94 + (-4*zeta^2 + 4*zeta + 8)*q^95 + (4*zeta^2 - 
8)*q^97 + (12*zeta^2 + 6*zeta - 24)*q^98 - 4*zeta*q^100 + (8*zeta^2 + 16*zeta - 
16)*q^101 + (-16*zeta^2 - 16*zeta + 32)*q^103 + (2*zeta^2 - 2*zeta - 4)*q^104 + 
22*zeta*q^109 + (12*zeta^2 + 24*zeta - 24)*q^110 + (20*zeta^2 + 20*zeta - 
40)*q^112 + (-2*zeta^2 + 2*zeta + 4)*q^113 + (-12*zeta^2 + 24)*q^115 + 
(-4*zeta^2 - 2*zeta + 8)*q^116 + 48*zeta*q^118 + (12*zeta^2 + 24*zeta - 
24)*q^119 + (-2*zeta^2 - 2*zeta + 4)*q^121 + (-14*zeta^2 + 14*zeta + 28)*q^122 +
(16*zeta^2 - 32)*q^124 + (-28*zeta^2 - 14*zeta + 56)*q^125 + 4*zeta*q^127 + 
(14*zeta^2 + 28*zeta - 28)*q^128 + (-6*zeta^2 - 6*zeta + 12)*q^130 + (4*zeta^2 -
4*zeta - 8)*q^131 + (8*zeta^2 - 16)*q^133 + (40*zeta^2 + 20*zeta - 80)*q^134 - 
18*zeta*q^136 + (2*zeta^2 + 4*zeta - 4)*q^137 + (-16*zeta^2 - 16*zeta + 
32)*q^139 + (-4*zeta^2 + 4*zeta + 8)*q^140 + (-36*zeta^2 + 72)*q^142 + 
(-8*zeta^2 - 4*zeta + 16)*q^143 - 6*zeta*q^145 + (-14*zeta^2 - 28*zeta + 
28)*q^146 + (14*zeta^2 + 14*zeta - 28)*q^148 + (10*zeta^2 - 10*zeta - 20)*q^149 
+ (40*zeta^2 - 80)*q^151 + (8*zeta^2 + 4*zeta - 16)*q^152 - 24*zeta*q^154 + 
(-16*zeta^2 - 32*zeta + 32)*q^155 + (-34*zeta^2 - 34*zeta + 68)*q^157 + 
(4*zeta^2 - 4*zeta - 8)*q^158 + (18*zeta^2 - 36)*q^160 + (-16*zeta^2 - 8*zeta + 
32)*q^161 - 32*zeta*q^163 + (-8*zeta^2 - 16*zeta + 16)*q^164 + (48*zeta^2 + 
48*zeta - 96)*q^166 + (-20*zeta^2 + 20*zeta + 40)*q^167 + (-24*zeta^2 + 
48)*q^169 + (36*zeta^2 + 18*zeta - 72)*q^170 + 4*zeta*q^172 + (-22*zeta^2 - 
44*zeta + 44)*q^173 + (8*zeta^2 + 8*zeta - 16)*q^175 + (20*zeta^2 - 20*zeta - 
40)*q^176 + (-18*zeta^2 + 36)*q^178 + (-48*zeta^2 - 24*zeta + 96)*q^179 + 
4*zeta*q^181 + (-4*zeta^2 - 8*zeta + 8)*q^182 + (12*zeta^2 + 12*zeta - 24)*q^184
+ (14*zeta^2 - 14*zeta - 28)*q^185 + (-36*zeta^2 + 72)*q^187 + (-16*zeta^2 - 
8*zeta + 32)*q^188 - 12*zeta*q^190 + (20*zeta^2 + 40*zeta - 40)*q^191 + 
(2*zeta^2 + 2*zeta - 4)*q^193 + (4*zeta^2 - 4*zeta - 8)*q^194 + (-6*zeta^2 + 
12)*q^196 + (12*zeta^2 + 6*zeta - 24)*q^197 + 40*zeta*q^199 + (4*zeta^2 + 8*zeta
- 8)*q^200 + (-24*zeta^2 - 24*zeta + 48)*q^202 + (4*zeta^2 - 4*zeta - 8)*q^203 +
(24*zeta^2 - 48)*q^205 + (-32*zeta^2 - 16*zeta + 64)*q^206 + 10*zeta*q^208 + 
(-8*zeta^2 - 16*zeta + 16)*q^209 + (20*zeta^2 + 20*zeta - 40)*q^211 + (8*zeta^2 
+ 4*zeta - 16)*q^215 + 32*zeta*q^217 + (22*zeta^2 + 44*zeta - 44)*q^218 + 
(-12*zeta^2 - 12*zeta + 24)*q^220 + (-6*zeta^2 + 6*zeta + 12)*q^221 + (4*zeta^2 
- 8)*q^223 + (24*zeta^2 + 12*zeta - 48)*q^224 - 6*zeta*q^226 + (-4*zeta^2 - 
8*zeta + 8)*q^227 + (2*zeta^2 + 2*zeta - 4)*q^229 + (-12*zeta^2 + 12*zeta + 
24)*q^230 + (-6*zeta^2 + 12)*q^232 + (60*zeta^2 + 30*zeta - 120)*q^233 - 
24*zeta*q^235 + (16*zeta^2 + 32*zeta - 32)*q^236 + (-36*zeta^2 - 36*zeta + 
72)*q^238 + (-32*zeta^2 + 32*zeta + 64)*q^239 + (58*zeta^2 - 116)*q^241 + 
(-4*zeta^2 - 2*zeta + 8)*q^242 - 14*zeta*q^244 + (6*zeta^2 + 12*zeta - 12)*q^245
+ (4*zeta^2 + 4*zeta - 8)*q^247 + (-16*zeta^2 + 16*zeta + 32)*q^248 + (42*zeta^2
- 84)*q^250 + (-24*zeta^2 - 12*zeta + 48)*q^251 - 24*zeta*q^253 + (4*zeta^2 + 
8*zeta - 8)*q^254 + (-38*zeta^2 - 38*zeta + 76)*q^256 + (10*zeta^2 - 10*zeta - 
20)*q^257 + (-28*zeta^2 + 56)*q^259 + (-4*zeta^2 - 2*zeta + 8)*q^260 + 
12*zeta*q^262 + (8*zeta^2 + 16*zeta - 16)*q^263 + (8*zeta^2 - 8*zeta - 16)*q^266
+ (-20*zeta^2 + 40)*q^268 + (36*zeta^2 + 18*zeta - 72)*q^269 + 4*zeta*q^271 + 
(-30*zeta^2 - 60*zeta + 60)*q^272 + (-6*zeta^2 - 6*zeta + 12)*q^274 + (8*zeta^2 
- 8*zeta - 16)*q^275 + (4*zeta^2 - 8)*q^277 + (-32*zeta^2 - 16*zeta + 64)*q^278 
+ 12*zeta*q^280 + (14*zeta^2 + 28*zeta - 28)*q^281 + (56*zeta^2 + 56*zeta - 
112)*q^283 + (-12*zeta^2 + 12*zeta + 24)*q^284 + (12*zeta^2 - 24)*q^286 + 
(32*zeta^2 + 16*zeta - 64)*q^287 + 20*zeta*q^289 + (-6*zeta^2 - 12*zeta + 
12)*q^290 + (14*zeta^2 + 14*zeta - 28)*q^292 + (22*zeta^2 - 22*zeta - 44)*q^293 
+ (-48*zeta^2 + 96)*q^295 + (-28*zeta^2 - 14*zeta + 56)*q^296 + 30*zeta*q^298 + 
(-4*zeta^2 - 8*zeta + 8)*q^299 + (-8*zeta^2 - 8*zeta + 16)*q^301 + (40*zeta^2 - 
40*zeta - 80)*q^302 + (-20*zeta^2 + 40)*q^304 + (-28*zeta^2 - 14*zeta + 
56)*q^305 - 32*zeta*q^307 + (-8*zeta^2 - 16*zeta + 16)*q^308 + (48*zeta^2 + 
48*zeta - 96)*q^310 + (-8*zeta^2 + 8*zeta + 16)*q^311 + (-50*zeta^2 + 100)*q^313
+ (-68*zeta^2 - 34*zeta + 136)*q^314 + 4*zeta*q^316 + (-10*zeta^2 - 20*zeta + 
20)*q^317 + (12*zeta^2 + 12*zeta - 24)*q^319 + (-2*zeta^2 + 2*zeta + 4)*q^320 + 
(24*zeta^2 - 48)*q^322 + (-24*zeta^2 - 12*zeta + 48)*q^323 + 4*zeta*q^325 + 
(-32*zeta^2 - 64*zeta + 64)*q^326 + (-24*zeta^2 - 24*zeta + 48)*q^328 + 
(16*zeta^2 - 16*zeta - 32)*q^329 + (4*zeta^2 - 8)*q^331 + (32*zeta^2 + 16*zeta -
64)*q^332 - 60*zeta*q^334 + (20*zeta^2 + 40*zeta - 40)*q^335 + (-52*zeta^2 - 
52*zeta + 104)*q^337 + (-24*zeta^2 + 24*zeta + 48)*q^338 + (-18*zeta^2 + 
36)*q^340 + (64*zeta^2 + 32*zeta - 128)*q^341 - 40*zeta*q^343 + (-4*zeta^2 - 
8*zeta + 8)*q^344 + (66*zeta^2 + 66*zeta - 132)*q^346 + (4*zeta^2 - 4*zeta - 
8)*q^347 + (4*zeta^2 - 8)*q^349 + (16*zeta^2 + 8*zeta - 32)*q^350 + 
36*zeta*q^352 + (-16*zeta^2 - 32*zeta + 32)*q^353 + (-36*zeta^2 - 36*zeta + 
72)*q^355 + (-6*zeta^2 + 6*zeta + 12)*q^356 + (72*zeta^2 - 144)*q^358 + 
(-24*zeta^2 - 12*zeta + 48)*q^359 + O(q^360)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_9B2 := Curve(P_Q, [ PolynomialRing(ext<K|Polynomial(K, [1, -3, 
0, 1])> where K is RationalField(), 2) |
0
]);
