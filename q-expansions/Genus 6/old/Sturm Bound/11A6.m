
    /****************************************************
    Loading this file in magma loads the objects fs_11A6 
    and X_11A6. fs_11A6 is a list of power series which form 
    a basis for the space of cusp forms. X_11A6 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | 1, 3, -3, -4, 1, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_11A6 := [Kq | (12*zeta^4 - 48*zeta^2 + 24)*q + (-24*zeta^3 + 
72*zeta)*q^2 - 12*zeta*q^3 + (-24*zeta^4 - 24*zeta^3 + 72*zeta^2 + 48*zeta - 
24)*q^4 + (12*zeta^2 - 24)*q^5 + (24*zeta^2 - 48)*q^6 + (24*zeta^4 + 24*zeta^3 -
72*zeta^2 - 48*zeta + 24)*q^7 + (-24*zeta^3 + 72*zeta)*q^9 + (-24*zeta^4 + 
96*zeta^2 - 48)*q^10 + 24*q^11 + (-24*zeta^4 + 96*zeta^2 - 48)*q^12 + (48*zeta^3
- 144*zeta)*q^13 + 48*zeta*q^14 + (12*zeta^4 + 12*zeta^3 - 36*zeta^2 - 24*zeta +
12)*q^15 + (-48*zeta^2 + 96)*q^16 + (-24*zeta^2 + 48)*q^17 + (-48*zeta^4 - 
48*zeta^3 + 144*zeta^2 + 96*zeta - 48)*q^18 + (24*zeta^3 - 72*zeta)*q^20 + 
(24*zeta^4 - 96*zeta^2 + 48)*q^21 - 48*q^22 + (-12*zeta^4 + 48*zeta^2 - 24)*q^23
- 48*zeta*q^25 + (96*zeta^4 + 96*zeta^3 - 288*zeta^2 - 192*zeta + 96)*q^26 + 
(60*zeta^2 - 120)*q^27 + (-48*zeta^2 + 96)*q^28 + 24*zeta*q^30 + (84*zeta^3 - 
252*zeta)*q^31 + (96*zeta^4 - 384*zeta^2 + 192)*q^32 - 24*q^33 + (48*zeta^4 - 
192*zeta^2 + 96)*q^34 + (-24*zeta^3 + 72*zeta)*q^35 - 48*zeta*q^36 + (-36*zeta^4
- 36*zeta^3 + 108*zeta^2 + 72*zeta - 36)*q^37 + (-48*zeta^2 + 96)*q^39 - 
96*zeta*q^41 + (-48*zeta^3 + 144*zeta)*q^42 + (-72*zeta^4 + 288*zeta^2 - 
144)*q^43 + 48*q^44 + (-24*zeta^4 + 96*zeta^2 - 48)*q^45 + (24*zeta^3 - 
72*zeta)*q^46 + 96*zeta*q^47 + (-48*zeta^4 - 48*zeta^3 + 144*zeta^2 + 96*zeta - 
48)*q^48 + (-36*zeta^2 + 72)*q^49 + (96*zeta^2 - 192)*q^50 + (-24*zeta^4 - 
24*zeta^3 + 72*zeta^2 + 48*zeta - 24)*q^51 + 96*zeta*q^52 + (-72*zeta^3 + 
216*zeta)*q^53 + (-120*zeta^4 + 480*zeta^2 - 240)*q^54 + 24*q^55 + (-60*zeta^4 -
60*zeta^3 + 180*zeta^2 + 120*zeta - 60)*q^59 + (-24*zeta^2 + 48)*q^60 + 
(144*zeta^2 - 288)*q^61 + (168*zeta^4 + 168*zeta^3 - 504*zeta^2 - 336*zeta + 
168)*q^62 + 48*zeta*q^63 + (-96*zeta^3 + 288*zeta)*q^64 + (48*zeta^4 - 
192*zeta^2 + 96)*q^65 + 48*q^66 + (-84*zeta^4 + 336*zeta^2 - 168)*q^67 + 
(-48*zeta^3 + 144*zeta)*q^68 + 12*zeta*q^69 + (-48*zeta^4 - 48*zeta^3 + 
144*zeta^2 + 96*zeta - 48)*q^70 + (-36*zeta^2 + 72)*q^71 + (-48*zeta^4 - 
48*zeta^3 + 144*zeta^2 + 96*zeta - 48)*q^73 - 72*zeta*q^74 + (48*zeta^3 - 
144*zeta)*q^75 - 48*q^77 + (96*zeta^4 - 384*zeta^2 + 192)*q^78 + (-120*zeta^3 + 
360*zeta)*q^79 - 48*zeta*q^80 + (-12*zeta^4 - 12*zeta^3 + 36*zeta^2 + 24*zeta - 
12)*q^81 + (192*zeta^2 - 384)*q^82 + (-72*zeta^2 + 144)*q^83 + (-48*zeta^4 - 
48*zeta^3 + 144*zeta^2 + 96*zeta - 48)*q^84 - 24*zeta*q^85 + (144*zeta^3 - 
432*zeta)*q^86 + (180*zeta^4 - 720*zeta^2 + 360)*q^89 + (48*zeta^3 - 
144*zeta)*q^90 - 96*zeta*q^91 + (24*zeta^4 + 24*zeta^3 - 72*zeta^2 - 48*zeta + 
24)*q^92 + (-84*zeta^2 + 168)*q^93 + (-192*zeta^2 + 384)*q^94 - 96*zeta*q^96 + 
(-84*zeta^3 + 252*zeta)*q^97 + (72*zeta^4 - 288*zeta^2 + 144)*q^98 - 48*q^99 + 
(-96*zeta^4 + 384*zeta^2 - 192)*q^100 + (24*zeta^3 - 72*zeta)*q^101 - 
48*zeta*q^102 + (192*zeta^4 + 192*zeta^3 - 576*zeta^2 - 384*zeta + 192)*q^103 + 
(24*zeta^2 - 48)*q^105 + (-144*zeta^4 - 144*zeta^3 + 432*zeta^2 + 288*zeta - 
144)*q^106 + 216*zeta*q^107 + (120*zeta^3 - 360*zeta)*q^108 + (120*zeta^4 - 
480*zeta^2 + 240)*q^109 - 48*q^110 + (-36*zeta^4 + 144*zeta^2 - 72)*q^111 + 
(96*zeta^3 - 288*zeta)*q^112 + 108*zeta*q^113 + (-12*zeta^2 + 24)*q^115 + 
(96*zeta^4 + 96*zeta^3 - 288*zeta^2 - 192*zeta + 96)*q^117 - 120*zeta*q^118 + 
(48*zeta^3 - 144*zeta)*q^119 + 24*q^121 + (-288*zeta^4 + 1152*zeta^2 - 
576)*q^122 + (96*zeta^3 - 288*zeta)*q^123 + 168*zeta*q^124 + (108*zeta^4 + 
108*zeta^3 - 324*zeta^2 - 216*zeta + 108)*q^125 + (-96*zeta^2 + 192)*q^126 + 
(96*zeta^2 - 192)*q^127 + 72*zeta*q^129 + (-96*zeta^3 + 288*zeta)*q^130 + 
(-216*zeta^4 + 864*zeta^2 - 432)*q^131 - 48*q^132 + (168*zeta^3 - 
504*zeta)*q^134 + 60*zeta*q^135 + (-84*zeta^2 + 168)*q^137 + (-24*zeta^2 + 
48)*q^138 + (-120*zeta^4 - 120*zeta^3 + 360*zeta^2 + 240*zeta - 120)*q^139 - 
48*zeta*q^140 + (-96*zeta^3 + 288*zeta)*q^141 + (72*zeta^4 - 288*zeta^2 + 
144)*q^142 + 96*q^143 + (96*zeta^4 - 384*zeta^2 + 192)*q^144 - 96*zeta*q^146 + 
(-36*zeta^4 - 36*zeta^3 + 108*zeta^2 + 72*zeta - 36)*q^147 + (72*zeta^2 - 
144)*q^148 + (-120*zeta^2 + 240)*q^149 + (96*zeta^4 + 96*zeta^3 - 288*zeta^2 - 
192*zeta + 96)*q^150 + 24*zeta*q^151 + (48*zeta^4 - 192*zeta^2 + 96)*q^153 + 
96*q^154 + (84*zeta^4 - 336*zeta^2 + 168)*q^155 + (-96*zeta^3 + 288*zeta)*q^156 
- 84*zeta*q^157 + (-240*zeta^4 - 240*zeta^3 + 720*zeta^2 + 480*zeta - 240)*q^158
+ (72*zeta^2 - 144)*q^159 + (96*zeta^2 - 192)*q^160 + (-24*zeta^4 - 24*zeta^3 + 
72*zeta^2 + 48*zeta - 24)*q^161 - 24*zeta*q^162 + (48*zeta^3 - 144*zeta)*q^163 +
(-192*zeta^4 + 768*zeta^2 - 384)*q^164 - 24*q^165 + (144*zeta^4 - 576*zeta^2 + 
288)*q^166 + (-144*zeta^3 + 432*zeta)*q^167 + (-36*zeta^4 - 36*zeta^3 + 
108*zeta^2 + 72*zeta - 36)*q^169 + (48*zeta^2 - 96)*q^170 + (144*zeta^4 + 
144*zeta^3 - 432*zeta^2 - 288*zeta + 144)*q^172 - 72*zeta*q^173 + (96*zeta^4 - 
384*zeta^2 + 192)*q^175 - 96*q^176 + (-60*zeta^4 + 240*zeta^2 - 120)*q^177 + 
(-360*zeta^3 + 1080*zeta)*q^178 - 180*zeta*q^179 + (48*zeta^4 + 48*zeta^3 - 
144*zeta^2 - 96*zeta + 48)*q^180 + (84*zeta^2 - 168)*q^181 + (192*zeta^2 - 
384)*q^182 + (144*zeta^4 + 144*zeta^3 - 432*zeta^2 - 288*zeta + 144)*q^183 + 
(36*zeta^3 - 108*zeta)*q^185 + (168*zeta^4 - 672*zeta^2 + 336)*q^186 - 48*q^187 
+ (192*zeta^4 - 768*zeta^2 + 384)*q^188 + (-120*zeta^3 + 360*zeta)*q^189 + 
(-204*zeta^4 - 204*zeta^3 + 612*zeta^2 + 408*zeta - 204)*q^191 + (96*zeta^2 - 
192)*q^192 + (48*zeta^2 - 96)*q^193 + (-168*zeta^4 - 168*zeta^3 + 504*zeta^2 + 
336*zeta - 168)*q^194 - 48*zeta*q^195 + (-72*zeta^3 + 216*zeta)*q^196 + 
(-24*zeta^4 + 96*zeta^2 - 48)*q^197 + 96*q^198 + 84*zeta*q^201 + (48*zeta^4 + 
48*zeta^3 - 144*zeta^2 - 96*zeta + 48)*q^202 + (48*zeta^2 - 96)*q^204 + 
(96*zeta^4 + 96*zeta^3 - 288*zeta^2 - 192*zeta + 96)*q^205 + 384*zeta*q^206 + 
(24*zeta^3 - 72*zeta)*q^207 + (-192*zeta^4 + 768*zeta^2 - 384)*q^208 + 
(-48*zeta^4 + 192*zeta^2 - 96)*q^210 + (144*zeta^3 - 432*zeta)*q^211 - 
144*zeta*q^212 + (-36*zeta^4 - 36*zeta^3 + 108*zeta^2 + 72*zeta - 36)*q^213 + 
(-432*zeta^2 + 864)*q^214 + (-72*zeta^2 + 144)*q^215 - 168*zeta*q^217 + 
(-240*zeta^3 + 720*zeta)*q^218 + (-48*zeta^4 + 192*zeta^2 - 96)*q^219 + 48*q^220
+ (-96*zeta^4 + 384*zeta^2 - 192)*q^221 + (72*zeta^3 - 216*zeta)*q^222 + 
228*zeta*q^223 + (192*zeta^4 + 192*zeta^3 - 576*zeta^2 - 384*zeta + 192)*q^224 +
(96*zeta^2 - 192)*q^225 + (-216*zeta^2 + 432)*q^226 + (-216*zeta^4 - 216*zeta^3 
+ 648*zeta^2 + 432*zeta - 216)*q^227 + (180*zeta^3 - 540*zeta)*q^229 + 
(24*zeta^4 - 96*zeta^2 + 48)*q^230 + 48*q^231 + (288*zeta^3 - 864*zeta)*q^233 + 
192*zeta*q^234 + (-96*zeta^4 - 96*zeta^3 + 288*zeta^2 + 192*zeta - 96)*q^235 + 
(120*zeta^2 - 240)*q^236 + (120*zeta^2 - 240)*q^237 + (96*zeta^4 + 96*zeta^3 - 
288*zeta^2 - 192*zeta + 96)*q^238 - 360*zeta*q^239 + (48*zeta^3 - 
144*zeta)*q^240 + (-96*zeta^4 + 384*zeta^2 - 192)*q^241 - 48*q^242 + 
(-192*zeta^4 + 768*zeta^2 - 384)*q^243 + (288*zeta^3 - 864*zeta)*q^244 - 
36*zeta*q^245 + (192*zeta^4 + 192*zeta^3 - 576*zeta^2 - 384*zeta + 192)*q^246 + 
(-72*zeta^4 - 72*zeta^3 + 216*zeta^2 + 144*zeta - 72)*q^249 + 216*zeta*q^250 + 
(-276*zeta^3 + 828*zeta)*q^251 + (96*zeta^4 - 384*zeta^2 + 192)*q^252 - 24*q^253
+ (-192*zeta^4 + 768*zeta^2 - 384)*q^254 + (24*zeta^3 - 72*zeta)*q^255 + 
192*zeta*q^256 + (24*zeta^4 + 24*zeta^3 - 72*zeta^2 - 48*zeta + 24)*q^257 + 
(-144*zeta^2 + 288)*q^258 + (-72*zeta^2 + 144)*q^259 + (-96*zeta^4 - 96*zeta^3 +
288*zeta^2 + 192*zeta - 96)*q^260 + (432*zeta^3 - 1296*zeta)*q^262 + (168*zeta^4
- 672*zeta^2 + 336)*q^263 + (-72*zeta^4 + 288*zeta^2 - 144)*q^265 - 
180*zeta*q^267 + (168*zeta^4 + 168*zeta^3 - 504*zeta^2 - 336*zeta + 168)*q^268 +
(120*zeta^2 - 240)*q^269 + (-120*zeta^2 + 240)*q^270 + (336*zeta^4 + 336*zeta^3 
- 1008*zeta^2 - 672*zeta + 336)*q^271 + 96*zeta*q^272 + (96*zeta^3 - 
288*zeta)*q^273 + (168*zeta^4 - 672*zeta^2 + 336)*q^274 - 96*q^275 + (24*zeta^4 
- 96*zeta^2 + 48)*q^276 + (-24*zeta^3 + 72*zeta)*q^277 - 240*zeta*q^278 + 
(168*zeta^4 + 168*zeta^3 - 504*zeta^2 - 336*zeta + 168)*q^279 + (-216*zeta^2 + 
432)*q^281 + (-192*zeta^4 - 192*zeta^3 + 576*zeta^2 + 384*zeta - 192)*q^282 + 
48*zeta*q^283 + (-72*zeta^3 + 216*zeta)*q^284 - 192*q^286 + (192*zeta^4 - 
768*zeta^2 + 384)*q^287 + (-192*zeta^3 + 576*zeta)*q^288 - 156*zeta*q^289 + 
(84*zeta^2 - 168)*q^291 + (96*zeta^2 - 192)*q^292 + (-288*zeta^4 - 288*zeta^3 + 
864*zeta^2 + 576*zeta - 288)*q^293 - 72*zeta*q^294 + (60*zeta^3 - 
180*zeta)*q^295 + 120*q^297 + (240*zeta^4 - 960*zeta^2 + 480)*q^298 + 
(-48*zeta^3 + 144*zeta)*q^299 + 96*zeta*q^300 + (-144*zeta^4 - 144*zeta^3 + 
432*zeta^2 + 288*zeta - 144)*q^301 + (-48*zeta^2 + 96)*q^302 + (-24*zeta^2 + 
48)*q^303 + 144*zeta*q^305 + (-96*zeta^3 + 288*zeta)*q^306 + (96*zeta^4 - 
384*zeta^2 + 192)*q^307 - 96*q^308 + (192*zeta^4 - 768*zeta^2 + 384)*q^309 + 
(-168*zeta^3 + 504*zeta)*q^310 + 144*zeta*q^311 + (-12*zeta^2 + 24)*q^313 + 
(168*zeta^2 - 336)*q^314 + (-48*zeta^4 - 48*zeta^3 + 144*zeta^2 + 96*zeta - 
48)*q^315 - 240*zeta*q^316 + (156*zeta^3 - 468*zeta)*q^317 + (-144*zeta^4 + 
576*zeta^2 - 288)*q^318 + (-96*zeta^4 + 384*zeta^2 - 192)*q^320 + (-216*zeta^3 +
648*zeta)*q^321 - 48*zeta*q^322 + (24*zeta^2 - 48)*q^324 + (-192*zeta^2 + 
384)*q^325 + (96*zeta^4 + 96*zeta^3 - 288*zeta^2 - 192*zeta + 96)*q^326 - 
120*zeta*q^327 + (-192*zeta^4 + 768*zeta^2 - 384)*q^329 + 48*q^330 + (84*zeta^4 
- 336*zeta^2 + 168)*q^331 + (-144*zeta^3 + 432*zeta)*q^332 - 72*zeta*q^333 + 
(-288*zeta^4 - 288*zeta^3 + 864*zeta^2 + 576*zeta - 288)*q^334 + (-84*zeta^2 + 
168)*q^335 + (-96*zeta^2 + 192)*q^336 + (264*zeta^4 + 264*zeta^3 - 792*zeta^2 - 
528*zeta + 264)*q^337 - 72*zeta*q^338 + (-108*zeta^3 + 324*zeta)*q^339 + 
(-48*zeta^4 + 192*zeta^2 - 96)*q^340 + 168*q^341 + (240*zeta^3 - 720*zeta)*q^343
+ (-12*zeta^4 - 12*zeta^3 + 36*zeta^2 + 24*zeta - 12)*q^345 + (144*zeta^2 - 
288)*q^346 + (336*zeta^2 - 672)*q^347 + 360*zeta*q^349 + (-192*zeta^3 + 
576*zeta)*q^350 + (240*zeta^4 - 960*zeta^2 + 480)*q^351 + 192*q^352 + 
(-252*zeta^4 + 1008*zeta^2 - 504)*q^353 + (120*zeta^3 - 360*zeta)*q^354 - 
36*zeta*q^355 + (-360*zeta^4 - 360*zeta^3 + 1080*zeta^2 + 720*zeta - 360)*q^356 
+ (-48*zeta^2 + 96)*q^357 + (360*zeta^2 - 720)*q^358 + (240*zeta^4 + 240*zeta^3 
- 720*zeta^2 - 480*zeta + 240)*q^359 + (-228*zeta^3 + 684*zeta)*q^361 + 
(-168*zeta^4 + 672*zeta^2 - 336)*q^362 - 24*q^363 + (-192*zeta^4 + 768*zeta^2 - 
384)*q^364 + (48*zeta^3 - 144*zeta)*q^365 + 288*zeta*q^366 + (204*zeta^4 + 
204*zeta^3 - 612*zeta^2 - 408*zeta + 204)*q^367 + (48*zeta^2 - 96)*q^368 + 
(192*zeta^2 - 384)*q^369 + (72*zeta^4 + 72*zeta^3 - 216*zeta^2 - 144*zeta + 
72)*q^370 + 144*zeta*q^371 + (-168*zeta^3 + 504*zeta)*q^372 + (-312*zeta^4 + 
1248*zeta^2 - 624)*q^373 + 96*q^374 + (108*zeta^4 - 432*zeta^2 + 216)*q^375 + 
(-240*zeta^4 - 240*zeta^3 + 720*zeta^2 + 480*zeta - 240)*q^378 + (-60*zeta^2 + 
120)*q^379 + (96*zeta^4 + 96*zeta^3 - 288*zeta^2 - 192*zeta + 96)*q^381 - 
408*zeta*q^382 + (-12*zeta^3 + 36*zeta)*q^383 - 48*q^385 + (-96*zeta^4 + 
384*zeta^2 - 192)*q^386 + (144*zeta^3 - 432*zeta)*q^387 - 168*zeta*q^388 + 
(180*zeta^4 + 180*zeta^3 - 540*zeta^2 - 360*zeta + 180)*q^389 + (96*zeta^2 - 
192)*q^390 + (24*zeta^2 - 48)*q^391 + 216*zeta*q^393 + (48*zeta^3 - 
144*zeta)*q^394 + (-120*zeta^4 + 480*zeta^2 - 240)*q^395 - 96*q^396 + 
(-24*zeta^4 + 96*zeta^2 - 48)*q^397 + (-192*zeta^4 - 192*zeta^3 + 576*zeta^2 + 
384*zeta - 192)*q^400 + (24*zeta^2 - 48)*q^401 + (-168*zeta^2 + 336)*q^402 + 
(-336*zeta^4 - 336*zeta^3 + 1008*zeta^2 + 672*zeta - 336)*q^403 + 48*zeta*q^404 
+ (12*zeta^3 - 36*zeta)*q^405 + 72*q^407 + (-360*zeta^3 + 1080*zeta)*q^409 + 
192*zeta*q^410 + (-84*zeta^4 - 84*zeta^3 + 252*zeta^2 + 168*zeta - 84)*q^411 + 
(-384*zeta^2 + 768)*q^412 + (-120*zeta^2 + 240)*q^413 + (48*zeta^4 + 48*zeta^3 -
144*zeta^2 - 96*zeta + 48)*q^414 - 72*zeta*q^415 + (384*zeta^3 - 
1152*zeta)*q^416 + (-120*zeta^4 + 480*zeta^2 - 240)*q^417 + (240*zeta^4 - 
960*zeta^2 + 480)*q^419 + (48*zeta^3 - 144*zeta)*q^420 + 264*zeta*q^421 + 
(288*zeta^4 + 288*zeta^3 - 864*zeta^2 - 576*zeta + 288)*q^422 + (-192*zeta^2 + 
384)*q^423 + (-96*zeta^4 - 96*zeta^3 + 288*zeta^2 + 192*zeta - 96)*q^425 - 
72*zeta*q^426 + (-288*zeta^3 + 864*zeta)*q^427 + (432*zeta^4 - 1728*zeta^2 + 
864)*q^428 - 96*q^429 + (144*zeta^4 - 576*zeta^2 + 288)*q^430 + (-216*zeta^3 + 
648*zeta)*q^431 - 240*zeta*q^432 + (132*zeta^4 + 132*zeta^3 - 396*zeta^2 - 
264*zeta + 132)*q^433 + (336*zeta^2 - 672)*q^434 + (-240*zeta^4 - 240*zeta^3 + 
720*zeta^2 + 480*zeta - 240)*q^436 + (96*zeta^3 - 288*zeta)*q^438 + (480*zeta^4 
- 1920*zeta^2 + 960)*q^439 + (72*zeta^4 - 288*zeta^2 + 144)*q^441 + (192*zeta^3 
- 576*zeta)*q^442 - 132*zeta*q^443 + (72*zeta^4 + 72*zeta^3 - 216*zeta^2 - 
144*zeta + 72)*q^444 + (180*zeta^2 - 360)*q^445 + (-456*zeta^2 + 912)*q^446 + 
(-120*zeta^4 - 120*zeta^3 + 360*zeta^2 + 240*zeta - 120)*q^447 + 192*zeta*q^448 
+ (420*zeta^3 - 1260*zeta)*q^449 + (-192*zeta^4 + 768*zeta^2 - 384)*q^450 - 
192*q^451 + (216*zeta^4 - 864*zeta^2 + 432)*q^452 + (-24*zeta^3 + 72*zeta)*q^453
- 432*zeta*q^454 + (96*zeta^4 + 96*zeta^3 - 288*zeta^2 - 192*zeta + 96)*q^455 + 
(-144*zeta^2 + 288)*q^457 + (360*zeta^4 + 360*zeta^3 - 1080*zeta^2 - 720*zeta + 
360)*q^458 - 120*zeta*q^459 + (-24*zeta^3 + 72*zeta)*q^460 + (144*zeta^4 - 
576*zeta^2 + 288)*q^461 - 96*q^462 + (-132*zeta^4 + 528*zeta^2 - 264)*q^463 - 
84*zeta*q^465 + (576*zeta^4 + 576*zeta^3 - 1728*zeta^2 - 1152*zeta + 576)*q^466 
+ (-324*zeta^2 + 648)*q^467 + (-192*zeta^2 + 384)*q^468 + (-168*zeta^4 - 
168*zeta^3 + 504*zeta^2 + 336*zeta - 168)*q^469 - 192*zeta*q^470 + (84*zeta^3 - 
252*zeta)*q^471 - 144*q^473 + (-240*zeta^4 + 960*zeta^2 - 480)*q^474 + 
96*zeta*q^476 + (-144*zeta^4 - 144*zeta^3 + 432*zeta^2 + 288*zeta - 144)*q^477 +
(720*zeta^2 - 1440)*q^478 + (240*zeta^2 - 480)*q^479 + (96*zeta^4 + 96*zeta^3 - 
288*zeta^2 - 192*zeta + 96)*q^480 + 144*zeta*q^481 + (192*zeta^3 - 
576*zeta)*q^482 + (-24*zeta^4 + 96*zeta^2 - 48)*q^483 + 48*q^484 + (-84*zeta^4 +
336*zeta^2 - 168)*q^485 + (384*zeta^3 - 1152*zeta)*q^486 + 276*zeta*q^487 + 
(-48*zeta^2 + 96)*q^489 + (72*zeta^2 - 144)*q^490 + (96*zeta^4 + 96*zeta^3 - 
288*zeta^2 - 192*zeta + 96)*q^491 + 192*zeta*q^492 - 48*q^495 + (-336*zeta^4 + 
1344*zeta^2 - 672)*q^496 + (72*zeta^3 - 216*zeta)*q^497 - 144*zeta*q^498 + 
(-240*zeta^4 - 240*zeta^3 + 720*zeta^2 + 480*zeta - 240)*q^499 + (-216*zeta^2 + 
432)*q^500 + (144*zeta^2 - 288)*q^501 + (-552*zeta^4 - 552*zeta^3 + 1656*zeta^2 
+ 1104*zeta - 552)*q^502 - 312*zeta*q^503 + (24*zeta^4 - 96*zeta^2 + 48)*q^505 +
48*q^506 + (-36*zeta^4 + 144*zeta^2 - 72)*q^507 + (192*zeta^3 - 576*zeta)*q^508 
+ 180*zeta*q^509 + (48*zeta^4 + 48*zeta^3 - 144*zeta^2 - 96*zeta + 48)*q^510 + 
(-96*zeta^2 + 192)*q^511 + (-384*zeta^2 + 768)*q^512 + 48*zeta*q^514 + 
(-192*zeta^3 + 576*zeta)*q^515 + (144*zeta^4 - 576*zeta^2 + 288)*q^516 + 
192*q^517 + (144*zeta^4 - 576*zeta^2 + 288)*q^518 + (72*zeta^3 - 216*zeta)*q^519
+ (36*zeta^4 + 36*zeta^3 - 108*zeta^2 - 72*zeta + 36)*q^521 + (-192*zeta^2 + 
384)*q^523 + (432*zeta^4 + 432*zeta^3 - 1296*zeta^2 - 864*zeta + 432)*q^524 - 
96*zeta*q^525 + (-336*zeta^3 + 1008*zeta)*q^526 + (-168*zeta^4 + 672*zeta^2 - 
336)*q^527 + 96*q^528 + (-264*zeta^4 + 1056*zeta^2 - 528)*q^529 + (144*zeta^3 - 
432*zeta)*q^530 - 120*zeta*q^531 + (-384*zeta^2 + 768)*q^533 + (360*zeta^2 - 
720)*q^534 + (-216*zeta^4 - 216*zeta^3 + 648*zeta^2 + 432*zeta - 216)*q^535 + 
(180*zeta^3 - 540*zeta)*q^537 + (-240*zeta^4 + 960*zeta^2 - 480)*q^538 - 
72*q^539 + (120*zeta^4 - 480*zeta^2 + 240)*q^540 + (-96*zeta^3 + 288*zeta)*q^541
+ 672*zeta*q^542 + (84*zeta^4 + 84*zeta^3 - 252*zeta^2 - 168*zeta + 84)*q^543 + 
(-192*zeta^2 + 384)*q^544 + (120*zeta^2 - 240)*q^545 + (192*zeta^4 + 192*zeta^3 
- 576*zeta^2 - 384*zeta + 192)*q^546 + 96*zeta*q^547 + (-168*zeta^3 + 
504*zeta)*q^548 + (-288*zeta^4 + 1152*zeta^2 - 576)*q^549 + 192*q^550 + 
240*zeta*q^553 + (-48*zeta^4 - 48*zeta^3 + 144*zeta^2 + 96*zeta - 48)*q^554 + 
(-36*zeta^2 + 72)*q^555 + (240*zeta^2 - 480)*q^556 + (24*zeta^4 + 24*zeta^3 - 
72*zeta^2 - 48*zeta + 24)*q^557 + 336*zeta*q^558 + (-288*zeta^3 + 
864*zeta)*q^559 + (96*zeta^4 - 384*zeta^2 + 192)*q^560 + 48*q^561 + (432*zeta^4 
- 1728*zeta^2 + 864)*q^562 + (48*zeta^3 - 144*zeta)*q^563 - 192*zeta*q^564 + 
(-108*zeta^4 - 108*zeta^3 + 324*zeta^2 + 216*zeta - 108)*q^565 + (-96*zeta^2 + 
192)*q^566 + (-24*zeta^2 + 48)*q^567 + (-336*zeta^4 + 1344*zeta^2 - 672)*q^571 +
192*q^572 + (-204*zeta^4 + 816*zeta^2 - 408)*q^573 + (-384*zeta^3 + 
1152*zeta)*q^574 + 48*zeta*q^575 + (-192*zeta^4 - 192*zeta^3 + 576*zeta^2 + 
384*zeta - 192)*q^576 + (396*zeta^2 - 792)*q^577 + (312*zeta^2 - 624)*q^578 + 
(48*zeta^4 + 48*zeta^3 - 144*zeta^2 - 96*zeta + 48)*q^579 + (144*zeta^3 - 
432*zeta)*q^581 + (-168*zeta^4 + 672*zeta^2 - 336)*q^582 - 144*q^583 + 
(-96*zeta^3 + 288*zeta)*q^585 - 576*zeta*q^586 + (-336*zeta^4 - 336*zeta^3 + 
1008*zeta^2 + 672*zeta - 336)*q^587 + (72*zeta^2 - 144)*q^588 + (120*zeta^4 + 
120*zeta^3 - 360*zeta^2 - 240*zeta + 120)*q^590 + 24*zeta*q^591 + (-144*zeta^3 +
432*zeta)*q^592 + (528*zeta^4 - 2112*zeta^2 + 1056)*q^593 - 240*q^594 + 
(48*zeta^4 - 192*zeta^2 + 96)*q^595 + (-240*zeta^3 + 720*zeta)*q^596 + 
(-96*zeta^4 - 96*zeta^3 + 288*zeta^2 + 192*zeta - 96)*q^598 + (480*zeta^2 - 
960)*q^599 + (-24*zeta^4 - 24*zeta^3 + 72*zeta^2 + 48*zeta - 24)*q^601 - 
288*zeta*q^602 + (168*zeta^3 - 504*zeta)*q^603 + (48*zeta^4 - 192*zeta^2 + 
96)*q^604 + O(q^605), (12*zeta^4 - 48*zeta^2 + 24)*q + (-24*zeta^3 + 
72*zeta)*q^2 - 12*zeta*q^3 + (-24*zeta^4 - 24*zeta^3 + 72*zeta^2 + 48*zeta - 
24)*q^4 + (12*zeta^2 - 24)*q^5 + (24*zeta^2 - 48)*q^6 + (24*zeta^4 + 24*zeta^3 -
72*zeta^2 - 48*zeta + 24)*q^7 + (-24*zeta^3 + 72*zeta)*q^9 + (-24*zeta^4 + 
96*zeta^2 - 48)*q^10 + 24*q^11 + (-24*zeta^4 + 96*zeta^2 - 48)*q^12 + (48*zeta^3
- 144*zeta)*q^13 + 48*zeta*q^14 + (12*zeta^4 + 12*zeta^3 - 36*zeta^2 - 24*zeta +
12)*q^15 + (-48*zeta^2 + 96)*q^16 + (-24*zeta^2 + 48)*q^17 + (-48*zeta^4 - 
48*zeta^3 + 144*zeta^2 + 96*zeta - 48)*q^18 + (24*zeta^3 - 72*zeta)*q^20 + 
(24*zeta^4 - 96*zeta^2 + 48)*q^21 - 48*q^22 + (-12*zeta^4 + 48*zeta^2 - 24)*q^23
- 48*zeta*q^25 + (96*zeta^4 + 96*zeta^3 - 288*zeta^2 - 192*zeta + 96)*q^26 + 
(60*zeta^2 - 120)*q^27 + (-48*zeta^2 + 96)*q^28 + 24*zeta*q^30 + (84*zeta^3 - 
252*zeta)*q^31 + (96*zeta^4 - 384*zeta^2 + 192)*q^32 - 24*q^33 + (48*zeta^4 - 
192*zeta^2 + 96)*q^34 + (-24*zeta^3 + 72*zeta)*q^35 - 48*zeta*q^36 + (-36*zeta^4
- 36*zeta^3 + 108*zeta^2 + 72*zeta - 36)*q^37 + (-48*zeta^2 + 96)*q^39 - 
96*zeta*q^41 + (-48*zeta^3 + 144*zeta)*q^42 + (-72*zeta^4 + 288*zeta^2 - 
144)*q^43 + 48*q^44 + (-24*zeta^4 + 96*zeta^2 - 48)*q^45 + (24*zeta^3 - 
72*zeta)*q^46 + 96*zeta*q^47 + (-48*zeta^4 - 48*zeta^3 + 144*zeta^2 + 96*zeta - 
48)*q^48 + (-36*zeta^2 + 72)*q^49 + (96*zeta^2 - 192)*q^50 + (-24*zeta^4 - 
24*zeta^3 + 72*zeta^2 + 48*zeta - 24)*q^51 + 96*zeta*q^52 + (-72*zeta^3 + 
216*zeta)*q^53 + (-120*zeta^4 + 480*zeta^2 - 240)*q^54 + 24*q^55 + (-60*zeta^4 -
60*zeta^3 + 180*zeta^2 + 120*zeta - 60)*q^59 + (-24*zeta^2 + 48)*q^60 + 
(144*zeta^2 - 288)*q^61 + (168*zeta^4 + 168*zeta^3 - 504*zeta^2 - 336*zeta + 
168)*q^62 + 48*zeta*q^63 + (-96*zeta^3 + 288*zeta)*q^64 + (48*zeta^4 - 
192*zeta^2 + 96)*q^65 + 48*q^66 + (-84*zeta^4 + 336*zeta^2 - 168)*q^67 + 
(-48*zeta^3 + 144*zeta)*q^68 + 12*zeta*q^69 + (-48*zeta^4 - 48*zeta^3 + 
144*zeta^2 + 96*zeta - 48)*q^70 + (-36*zeta^2 + 72)*q^71 + (-48*zeta^4 - 
48*zeta^3 + 144*zeta^2 + 96*zeta - 48)*q^73 - 72*zeta*q^74 + (48*zeta^3 - 
144*zeta)*q^75 - 48*q^77 + (96*zeta^4 - 384*zeta^2 + 192)*q^78 + (-120*zeta^3 + 
360*zeta)*q^79 - 48*zeta*q^80 + (-12*zeta^4 - 12*zeta^3 + 36*zeta^2 + 24*zeta - 
12)*q^81 + (192*zeta^2 - 384)*q^82 + (-72*zeta^2 + 144)*q^83 + (-48*zeta^4 - 
48*zeta^3 + 144*zeta^2 + 96*zeta - 48)*q^84 - 24*zeta*q^85 + (144*zeta^3 - 
432*zeta)*q^86 + (180*zeta^4 - 720*zeta^2 + 360)*q^89 + (48*zeta^3 - 
144*zeta)*q^90 - 96*zeta*q^91 + (24*zeta^4 + 24*zeta^3 - 72*zeta^2 - 48*zeta + 
24)*q^92 + (-84*zeta^2 + 168)*q^93 + (-192*zeta^2 + 384)*q^94 - 96*zeta*q^96 + 
(-84*zeta^3 + 252*zeta)*q^97 + (72*zeta^4 - 288*zeta^2 + 144)*q^98 - 48*q^99 + 
(-96*zeta^4 + 384*zeta^2 - 192)*q^100 + (24*zeta^3 - 72*zeta)*q^101 - 
48*zeta*q^102 + (192*zeta^4 + 192*zeta^3 - 576*zeta^2 - 384*zeta + 192)*q^103 + 
(24*zeta^2 - 48)*q^105 + (-144*zeta^4 - 144*zeta^3 + 432*zeta^2 + 288*zeta - 
144)*q^106 + 216*zeta*q^107 + (120*zeta^3 - 360*zeta)*q^108 + (120*zeta^4 - 
480*zeta^2 + 240)*q^109 - 48*q^110 + (-36*zeta^4 + 144*zeta^2 - 72)*q^111 + 
(96*zeta^3 - 288*zeta)*q^112 + 108*zeta*q^113 + (-12*zeta^2 + 24)*q^115 + 
(96*zeta^4 + 96*zeta^3 - 288*zeta^2 - 192*zeta + 96)*q^117 - 120*zeta*q^118 + 
(48*zeta^3 - 144*zeta)*q^119 + 24*q^121 + (-288*zeta^4 + 1152*zeta^2 - 
576)*q^122 + (96*zeta^3 - 288*zeta)*q^123 + 168*zeta*q^124 + (108*zeta^4 + 
108*zeta^3 - 324*zeta^2 - 216*zeta + 108)*q^125 + (-96*zeta^2 + 192)*q^126 + 
(96*zeta^2 - 192)*q^127 + 72*zeta*q^129 + (-96*zeta^3 + 288*zeta)*q^130 + 
(-216*zeta^4 + 864*zeta^2 - 432)*q^131 - 48*q^132 + (168*zeta^3 - 
504*zeta)*q^134 + 60*zeta*q^135 + (-84*zeta^2 + 168)*q^137 + (-24*zeta^2 + 
48)*q^138 + (-120*zeta^4 - 120*zeta^3 + 360*zeta^2 + 240*zeta - 120)*q^139 - 
48*zeta*q^140 + (-96*zeta^3 + 288*zeta)*q^141 + (72*zeta^4 - 288*zeta^2 + 
144)*q^142 + 96*q^143 + (96*zeta^4 - 384*zeta^2 + 192)*q^144 - 96*zeta*q^146 + 
(-36*zeta^4 - 36*zeta^3 + 108*zeta^2 + 72*zeta - 36)*q^147 + (72*zeta^2 - 
144)*q^148 + (-120*zeta^2 + 240)*q^149 + (96*zeta^4 + 96*zeta^3 - 288*zeta^2 - 
192*zeta + 96)*q^150 + 24*zeta*q^151 + (48*zeta^4 - 192*zeta^2 + 96)*q^153 + 
96*q^154 + (84*zeta^4 - 336*zeta^2 + 168)*q^155 + (-96*zeta^3 + 288*zeta)*q^156 
- 84*zeta*q^157 + (-240*zeta^4 - 240*zeta^3 + 720*zeta^2 + 480*zeta - 240)*q^158
+ (72*zeta^2 - 144)*q^159 + (96*zeta^2 - 192)*q^160 + (-24*zeta^4 - 24*zeta^3 + 
72*zeta^2 + 48*zeta - 24)*q^161 - 24*zeta*q^162 + (48*zeta^3 - 144*zeta)*q^163 +
(-192*zeta^4 + 768*zeta^2 - 384)*q^164 - 24*q^165 + (144*zeta^4 - 576*zeta^2 + 
288)*q^166 + (-144*zeta^3 + 432*zeta)*q^167 + (-36*zeta^4 - 36*zeta^3 + 
108*zeta^2 + 72*zeta - 36)*q^169 + (48*zeta^2 - 96)*q^170 + (144*zeta^4 + 
144*zeta^3 - 432*zeta^2 - 288*zeta + 144)*q^172 - 72*zeta*q^173 + (96*zeta^4 - 
384*zeta^2 + 192)*q^175 - 96*q^176 + (-60*zeta^4 + 240*zeta^2 - 120)*q^177 + 
(-360*zeta^3 + 1080*zeta)*q^178 - 180*zeta*q^179 + (48*zeta^4 + 48*zeta^3 - 
144*zeta^2 - 96*zeta + 48)*q^180 + (84*zeta^2 - 168)*q^181 + (192*zeta^2 - 
384)*q^182 + (144*zeta^4 + 144*zeta^3 - 432*zeta^2 - 288*zeta + 144)*q^183 + 
(36*zeta^3 - 108*zeta)*q^185 + (168*zeta^4 - 672*zeta^2 + 336)*q^186 - 48*q^187 
+ (192*zeta^4 - 768*zeta^2 + 384)*q^188 + (-120*zeta^3 + 360*zeta)*q^189 + 
(-204*zeta^4 - 204*zeta^3 + 612*zeta^2 + 408*zeta - 204)*q^191 + (96*zeta^2 - 
192)*q^192 + (48*zeta^2 - 96)*q^193 + (-168*zeta^4 - 168*zeta^3 + 504*zeta^2 + 
336*zeta - 168)*q^194 - 48*zeta*q^195 + (-72*zeta^3 + 216*zeta)*q^196 + 
(-24*zeta^4 + 96*zeta^2 - 48)*q^197 + 96*q^198 + 84*zeta*q^201 + (48*zeta^4 + 
48*zeta^3 - 144*zeta^2 - 96*zeta + 48)*q^202 + (48*zeta^2 - 96)*q^204 + 
(96*zeta^4 + 96*zeta^3 - 288*zeta^2 - 192*zeta + 96)*q^205 + 384*zeta*q^206 + 
(24*zeta^3 - 72*zeta)*q^207 + (-192*zeta^4 + 768*zeta^2 - 384)*q^208 + 
(-48*zeta^4 + 192*zeta^2 - 96)*q^210 + (144*zeta^3 - 432*zeta)*q^211 - 
144*zeta*q^212 + (-36*zeta^4 - 36*zeta^3 + 108*zeta^2 + 72*zeta - 36)*q^213 + 
(-432*zeta^2 + 864)*q^214 + (-72*zeta^2 + 144)*q^215 - 168*zeta*q^217 + 
(-240*zeta^3 + 720*zeta)*q^218 + (-48*zeta^4 + 192*zeta^2 - 96)*q^219 + 48*q^220
+ (-96*zeta^4 + 384*zeta^2 - 192)*q^221 + (72*zeta^3 - 216*zeta)*q^222 + 
228*zeta*q^223 + (192*zeta^4 + 192*zeta^3 - 576*zeta^2 - 384*zeta + 192)*q^224 +
(96*zeta^2 - 192)*q^225 + (-216*zeta^2 + 432)*q^226 + (-216*zeta^4 - 216*zeta^3 
+ 648*zeta^2 + 432*zeta - 216)*q^227 + (180*zeta^3 - 540*zeta)*q^229 + 
(24*zeta^4 - 96*zeta^2 + 48)*q^230 + 48*q^231 + (288*zeta^3 - 864*zeta)*q^233 + 
192*zeta*q^234 + (-96*zeta^4 - 96*zeta^3 + 288*zeta^2 + 192*zeta - 96)*q^235 + 
(120*zeta^2 - 240)*q^236 + (120*zeta^2 - 240)*q^237 + (96*zeta^4 + 96*zeta^3 - 
288*zeta^2 - 192*zeta + 96)*q^238 - 360*zeta*q^239 + (48*zeta^3 - 
144*zeta)*q^240 + (-96*zeta^4 + 384*zeta^2 - 192)*q^241 - 48*q^242 + 
(-192*zeta^4 + 768*zeta^2 - 384)*q^243 + (288*zeta^3 - 864*zeta)*q^244 - 
36*zeta*q^245 + (192*zeta^4 + 192*zeta^3 - 576*zeta^2 - 384*zeta + 192)*q^246 + 
(-72*zeta^4 - 72*zeta^3 + 216*zeta^2 + 144*zeta - 72)*q^249 + 216*zeta*q^250 + 
(-276*zeta^3 + 828*zeta)*q^251 + (96*zeta^4 - 384*zeta^2 + 192)*q^252 - 24*q^253
+ (-192*zeta^4 + 768*zeta^2 - 384)*q^254 + (24*zeta^3 - 72*zeta)*q^255 + 
192*zeta*q^256 + (24*zeta^4 + 24*zeta^3 - 72*zeta^2 - 48*zeta + 24)*q^257 + 
(-144*zeta^2 + 288)*q^258 + (-72*zeta^2 + 144)*q^259 + (-96*zeta^4 - 96*zeta^3 +
288*zeta^2 + 192*zeta - 96)*q^260 + (432*zeta^3 - 1296*zeta)*q^262 + (168*zeta^4
- 672*zeta^2 + 336)*q^263 + (-72*zeta^4 + 288*zeta^2 - 144)*q^265 - 
180*zeta*q^267 + (168*zeta^4 + 168*zeta^3 - 504*zeta^2 - 336*zeta + 168)*q^268 +
(120*zeta^2 - 240)*q^269 + (-120*zeta^2 + 240)*q^270 + (336*zeta^4 + 336*zeta^3 
- 1008*zeta^2 - 672*zeta + 336)*q^271 + 96*zeta*q^272 + (96*zeta^3 - 
288*zeta)*q^273 + (168*zeta^4 - 672*zeta^2 + 336)*q^274 - 96*q^275 + (24*zeta^4 
- 96*zeta^2 + 48)*q^276 + (-24*zeta^3 + 72*zeta)*q^277 - 240*zeta*q^278 + 
(168*zeta^4 + 168*zeta^3 - 504*zeta^2 - 336*zeta + 168)*q^279 + (-216*zeta^2 + 
432)*q^281 + (-192*zeta^4 - 192*zeta^3 + 576*zeta^2 + 384*zeta - 192)*q^282 + 
48*zeta*q^283 + (-72*zeta^3 + 216*zeta)*q^284 - 192*q^286 + (192*zeta^4 - 
768*zeta^2 + 384)*q^287 + (-192*zeta^3 + 576*zeta)*q^288 - 156*zeta*q^289 + 
(84*zeta^2 - 168)*q^291 + (96*zeta^2 - 192)*q^292 + (-288*zeta^4 - 288*zeta^3 + 
864*zeta^2 + 576*zeta - 288)*q^293 - 72*zeta*q^294 + (60*zeta^3 - 
180*zeta)*q^295 + 120*q^297 + (240*zeta^4 - 960*zeta^2 + 480)*q^298 + 
(-48*zeta^3 + 144*zeta)*q^299 + 96*zeta*q^300 + (-144*zeta^4 - 144*zeta^3 + 
432*zeta^2 + 288*zeta - 144)*q^301 + (-48*zeta^2 + 96)*q^302 + (-24*zeta^2 + 
48)*q^303 + 144*zeta*q^305 + (-96*zeta^3 + 288*zeta)*q^306 + (96*zeta^4 - 
384*zeta^2 + 192)*q^307 - 96*q^308 + (192*zeta^4 - 768*zeta^2 + 384)*q^309 + 
(-168*zeta^3 + 504*zeta)*q^310 + 144*zeta*q^311 + (-12*zeta^2 + 24)*q^313 + 
(168*zeta^2 - 336)*q^314 + (-48*zeta^4 - 48*zeta^3 + 144*zeta^2 + 96*zeta - 
48)*q^315 - 240*zeta*q^316 + (156*zeta^3 - 468*zeta)*q^317 + (-144*zeta^4 + 
576*zeta^2 - 288)*q^318 + (-96*zeta^4 + 384*zeta^2 - 192)*q^320 + (-216*zeta^3 +
648*zeta)*q^321 - 48*zeta*q^322 + (24*zeta^2 - 48)*q^324 + (-192*zeta^2 + 
384)*q^325 + (96*zeta^4 + 96*zeta^3 - 288*zeta^2 - 192*zeta + 96)*q^326 - 
120*zeta*q^327 + (-192*zeta^4 + 768*zeta^2 - 384)*q^329 + 48*q^330 + (84*zeta^4 
- 336*zeta^2 + 168)*q^331 + (-144*zeta^3 + 432*zeta)*q^332 - 72*zeta*q^333 + 
(-288*zeta^4 - 288*zeta^3 + 864*zeta^2 + 576*zeta - 288)*q^334 + (-84*zeta^2 + 
168)*q^335 + (-96*zeta^2 + 192)*q^336 + (264*zeta^4 + 264*zeta^3 - 792*zeta^2 - 
528*zeta + 264)*q^337 - 72*zeta*q^338 + (-108*zeta^3 + 324*zeta)*q^339 + 
(-48*zeta^4 + 192*zeta^2 - 96)*q^340 + 168*q^341 + (240*zeta^3 - 720*zeta)*q^343
+ (-12*zeta^4 - 12*zeta^3 + 36*zeta^2 + 24*zeta - 12)*q^345 + (144*zeta^2 - 
288)*q^346 + (336*zeta^2 - 672)*q^347 + 360*zeta*q^349 + (-192*zeta^3 + 
576*zeta)*q^350 + (240*zeta^4 - 960*zeta^2 + 480)*q^351 + 192*q^352 + 
(-252*zeta^4 + 1008*zeta^2 - 504)*q^353 + (120*zeta^3 - 360*zeta)*q^354 - 
36*zeta*q^355 + (-360*zeta^4 - 360*zeta^3 + 1080*zeta^2 + 720*zeta - 360)*q^356 
+ (-48*zeta^2 + 96)*q^357 + (360*zeta^2 - 720)*q^358 + (240*zeta^4 + 240*zeta^3 
- 720*zeta^2 - 480*zeta + 240)*q^359 + (-228*zeta^3 + 684*zeta)*q^361 + 
(-168*zeta^4 + 672*zeta^2 - 336)*q^362 - 24*q^363 + (-192*zeta^4 + 768*zeta^2 - 
384)*q^364 + (48*zeta^3 - 144*zeta)*q^365 + 288*zeta*q^366 + (204*zeta^4 + 
204*zeta^3 - 612*zeta^2 - 408*zeta + 204)*q^367 + (48*zeta^2 - 96)*q^368 + 
(192*zeta^2 - 384)*q^369 + (72*zeta^4 + 72*zeta^3 - 216*zeta^2 - 144*zeta + 
72)*q^370 + 144*zeta*q^371 + (-168*zeta^3 + 504*zeta)*q^372 + (-312*zeta^4 + 
1248*zeta^2 - 624)*q^373 + 96*q^374 + (108*zeta^4 - 432*zeta^2 + 216)*q^375 + 
(-240*zeta^4 - 240*zeta^3 + 720*zeta^2 + 480*zeta - 240)*q^378 + (-60*zeta^2 + 
120)*q^379 + (96*zeta^4 + 96*zeta^3 - 288*zeta^2 - 192*zeta + 96)*q^381 - 
408*zeta*q^382 + (-12*zeta^3 + 36*zeta)*q^383 - 48*q^385 + (-96*zeta^4 + 
384*zeta^2 - 192)*q^386 + (144*zeta^3 - 432*zeta)*q^387 - 168*zeta*q^388 + 
(180*zeta^4 + 180*zeta^3 - 540*zeta^2 - 360*zeta + 180)*q^389 + (96*zeta^2 - 
192)*q^390 + (24*zeta^2 - 48)*q^391 + 216*zeta*q^393 + (48*zeta^3 - 
144*zeta)*q^394 + (-120*zeta^4 + 480*zeta^2 - 240)*q^395 - 96*q^396 + 
(-24*zeta^4 + 96*zeta^2 - 48)*q^397 + (-192*zeta^4 - 192*zeta^3 + 576*zeta^2 + 
384*zeta - 192)*q^400 + (24*zeta^2 - 48)*q^401 + (-168*zeta^2 + 336)*q^402 + 
(-336*zeta^4 - 336*zeta^3 + 1008*zeta^2 + 672*zeta - 336)*q^403 + 48*zeta*q^404 
+ (12*zeta^3 - 36*zeta)*q^405 + 72*q^407 + (-360*zeta^3 + 1080*zeta)*q^409 + 
192*zeta*q^410 + (-84*zeta^4 - 84*zeta^3 + 252*zeta^2 + 168*zeta - 84)*q^411 + 
(-384*zeta^2 + 768)*q^412 + (-120*zeta^2 + 240)*q^413 + (48*zeta^4 + 48*zeta^3 -
144*zeta^2 - 96*zeta + 48)*q^414 - 72*zeta*q^415 + (384*zeta^3 - 
1152*zeta)*q^416 + (-120*zeta^4 + 480*zeta^2 - 240)*q^417 + (240*zeta^4 - 
960*zeta^2 + 480)*q^419 + (48*zeta^3 - 144*zeta)*q^420 + 264*zeta*q^421 + 
(288*zeta^4 + 288*zeta^3 - 864*zeta^2 - 576*zeta + 288)*q^422 + (-192*zeta^2 + 
384)*q^423 + (-96*zeta^4 - 96*zeta^3 + 288*zeta^2 + 192*zeta - 96)*q^425 - 
72*zeta*q^426 + (-288*zeta^3 + 864*zeta)*q^427 + (432*zeta^4 - 1728*zeta^2 + 
864)*q^428 - 96*q^429 + (144*zeta^4 - 576*zeta^2 + 288)*q^430 + (-216*zeta^3 + 
648*zeta)*q^431 - 240*zeta*q^432 + (132*zeta^4 + 132*zeta^3 - 396*zeta^2 - 
264*zeta + 132)*q^433 + (336*zeta^2 - 672)*q^434 + (-240*zeta^4 - 240*zeta^3 + 
720*zeta^2 + 480*zeta - 240)*q^436 + (96*zeta^3 - 288*zeta)*q^438 + (480*zeta^4 
- 1920*zeta^2 + 960)*q^439 + (72*zeta^4 - 288*zeta^2 + 144)*q^441 + (192*zeta^3 
- 576*zeta)*q^442 - 132*zeta*q^443 + (72*zeta^4 + 72*zeta^3 - 216*zeta^2 - 
144*zeta + 72)*q^444 + (180*zeta^2 - 360)*q^445 + (-456*zeta^2 + 912)*q^446 + 
(-120*zeta^4 - 120*zeta^3 + 360*zeta^2 + 240*zeta - 120)*q^447 + 192*zeta*q^448 
+ (420*zeta^3 - 1260*zeta)*q^449 + (-192*zeta^4 + 768*zeta^2 - 384)*q^450 - 
192*q^451 + (216*zeta^4 - 864*zeta^2 + 432)*q^452 + (-24*zeta^3 + 72*zeta)*q^453
- 432*zeta*q^454 + (96*zeta^4 + 96*zeta^3 - 288*zeta^2 - 192*zeta + 96)*q^455 + 
(-144*zeta^2 + 288)*q^457 + (360*zeta^4 + 360*zeta^3 - 1080*zeta^2 - 720*zeta + 
360)*q^458 - 120*zeta*q^459 + (-24*zeta^3 + 72*zeta)*q^460 + (144*zeta^4 - 
576*zeta^2 + 288)*q^461 - 96*q^462 + (-132*zeta^4 + 528*zeta^2 - 264)*q^463 - 
84*zeta*q^465 + (576*zeta^4 + 576*zeta^3 - 1728*zeta^2 - 1152*zeta + 576)*q^466 
+ (-324*zeta^2 + 648)*q^467 + (-192*zeta^2 + 384)*q^468 + (-168*zeta^4 - 
168*zeta^3 + 504*zeta^2 + 336*zeta - 168)*q^469 - 192*zeta*q^470 + (84*zeta^3 - 
252*zeta)*q^471 - 144*q^473 + (-240*zeta^4 + 960*zeta^2 - 480)*q^474 + 
96*zeta*q^476 + (-144*zeta^4 - 144*zeta^3 + 432*zeta^2 + 288*zeta - 144)*q^477 +
(720*zeta^2 - 1440)*q^478 + (240*zeta^2 - 480)*q^479 + (96*zeta^4 + 96*zeta^3 - 
288*zeta^2 - 192*zeta + 96)*q^480 + 144*zeta*q^481 + (192*zeta^3 - 
576*zeta)*q^482 + (-24*zeta^4 + 96*zeta^2 - 48)*q^483 + 48*q^484 + (-84*zeta^4 +
336*zeta^2 - 168)*q^485 + (384*zeta^3 - 1152*zeta)*q^486 + 276*zeta*q^487 + 
(-48*zeta^2 + 96)*q^489 + (72*zeta^2 - 144)*q^490 + (96*zeta^4 + 96*zeta^3 - 
288*zeta^2 - 192*zeta + 96)*q^491 + 192*zeta*q^492 - 48*q^495 + (-336*zeta^4 + 
1344*zeta^2 - 672)*q^496 + (72*zeta^3 - 216*zeta)*q^497 - 144*zeta*q^498 + 
(-240*zeta^4 - 240*zeta^3 + 720*zeta^2 + 480*zeta - 240)*q^499 + (-216*zeta^2 + 
432)*q^500 + (144*zeta^2 - 288)*q^501 + (-552*zeta^4 - 552*zeta^3 + 1656*zeta^2 
+ 1104*zeta - 552)*q^502 - 312*zeta*q^503 + (24*zeta^4 - 96*zeta^2 + 48)*q^505 +
48*q^506 + (-36*zeta^4 + 144*zeta^2 - 72)*q^507 + (192*zeta^3 - 576*zeta)*q^508 
+ 180*zeta*q^509 + (48*zeta^4 + 48*zeta^3 - 144*zeta^2 - 96*zeta + 48)*q^510 + 
(-96*zeta^2 + 192)*q^511 + (-384*zeta^2 + 768)*q^512 + 48*zeta*q^514 + 
(-192*zeta^3 + 576*zeta)*q^515 + (144*zeta^4 - 576*zeta^2 + 288)*q^516 + 
192*q^517 + (144*zeta^4 - 576*zeta^2 + 288)*q^518 + (72*zeta^3 - 216*zeta)*q^519
+ (36*zeta^4 + 36*zeta^3 - 108*zeta^2 - 72*zeta + 36)*q^521 + (-192*zeta^2 + 
384)*q^523 + (432*zeta^4 + 432*zeta^3 - 1296*zeta^2 - 864*zeta + 432)*q^524 - 
96*zeta*q^525 + (-336*zeta^3 + 1008*zeta)*q^526 + (-168*zeta^4 + 672*zeta^2 - 
336)*q^527 + 96*q^528 + (-264*zeta^4 + 1056*zeta^2 - 528)*q^529 + (144*zeta^3 - 
432*zeta)*q^530 - 120*zeta*q^531 + (-384*zeta^2 + 768)*q^533 + (360*zeta^2 - 
720)*q^534 + (-216*zeta^4 - 216*zeta^3 + 648*zeta^2 + 432*zeta - 216)*q^535 + 
(180*zeta^3 - 540*zeta)*q^537 + (-240*zeta^4 + 960*zeta^2 - 480)*q^538 - 
72*q^539 + (120*zeta^4 - 480*zeta^2 + 240)*q^540 + (-96*zeta^3 + 288*zeta)*q^541
+ 672*zeta*q^542 + (84*zeta^4 + 84*zeta^3 - 252*zeta^2 - 168*zeta + 84)*q^543 + 
(-192*zeta^2 + 384)*q^544 + (120*zeta^2 - 240)*q^545 + (192*zeta^4 + 192*zeta^3 
- 576*zeta^2 - 384*zeta + 192)*q^546 + 96*zeta*q^547 + (-168*zeta^3 + 
504*zeta)*q^548 + (-288*zeta^4 + 1152*zeta^2 - 576)*q^549 + 192*q^550 + 
240*zeta*q^553 + (-48*zeta^4 - 48*zeta^3 + 144*zeta^2 + 96*zeta - 48)*q^554 + 
(-36*zeta^2 + 72)*q^555 + (240*zeta^2 - 480)*q^556 + (24*zeta^4 + 24*zeta^3 - 
72*zeta^2 - 48*zeta + 24)*q^557 + 336*zeta*q^558 + (-288*zeta^3 + 
864*zeta)*q^559 + (96*zeta^4 - 384*zeta^2 + 192)*q^560 + 48*q^561 + (432*zeta^4 
- 1728*zeta^2 + 864)*q^562 + (48*zeta^3 - 144*zeta)*q^563 - 192*zeta*q^564 + 
(-108*zeta^4 - 108*zeta^3 + 324*zeta^2 + 216*zeta - 108)*q^565 + (-96*zeta^2 + 
192)*q^566 + (-24*zeta^2 + 48)*q^567 + (-336*zeta^4 + 1344*zeta^2 - 672)*q^571 +
192*q^572 + (-204*zeta^4 + 816*zeta^2 - 408)*q^573 + (-384*zeta^3 + 
1152*zeta)*q^574 + 48*zeta*q^575 + (-192*zeta^4 - 192*zeta^3 + 576*zeta^2 + 
384*zeta - 192)*q^576 + (396*zeta^2 - 792)*q^577 + (312*zeta^2 - 624)*q^578 + 
(48*zeta^4 + 48*zeta^3 - 144*zeta^2 - 96*zeta + 48)*q^579 + (144*zeta^3 - 
432*zeta)*q^581 + (-168*zeta^4 + 672*zeta^2 - 336)*q^582 - 144*q^583 + 
(-96*zeta^3 + 288*zeta)*q^585 - 576*zeta*q^586 + (-336*zeta^4 - 336*zeta^3 + 
1008*zeta^2 + 672*zeta - 336)*q^587 + (72*zeta^2 - 144)*q^588 + (120*zeta^4 + 
120*zeta^3 - 360*zeta^2 - 240*zeta + 120)*q^590 + 24*zeta*q^591 + (-144*zeta^3 +
432*zeta)*q^592 + (528*zeta^4 - 2112*zeta^2 + 1056)*q^593 - 240*q^594 + 
(48*zeta^4 - 192*zeta^2 + 96)*q^595 + (-240*zeta^3 + 720*zeta)*q^596 + 
(-96*zeta^4 - 96*zeta^3 + 288*zeta^2 + 192*zeta - 96)*q^598 + (480*zeta^2 - 
960)*q^599 + (-24*zeta^4 - 24*zeta^3 + 72*zeta^2 + 48*zeta - 24)*q^601 - 
288*zeta*q^602 + (168*zeta^3 - 504*zeta)*q^603 + (48*zeta^4 - 192*zeta^2 + 
96)*q^604 + O(q^605), (12*zeta^4 - 24*zeta^2 + 24*zeta)*q + (-48*zeta^4 - 
24*zeta^3 + 144*zeta^2 + 72*zeta - 48)*q^2 + (24*zeta^4 - 72*zeta^2 + 
12*zeta)*q^3 + (24*zeta^4 + 24*zeta^3 - 120*zeta^2 - 96*zeta + 120)*q^4 + 
(-24*zeta^4 - 24*zeta^3 + 84*zeta^2 + 72*zeta - 24)*q^5 + (-48*zeta^4 - 
48*zeta^3 + 168*zeta^2 + 144*zeta - 48)*q^6 + (-24*zeta^4 - 24*zeta^3 + 
120*zeta^2 + 96*zeta - 120)*q^7 + (-48*zeta^4 - 24*zeta^3 + 144*zeta^2 + 72*zeta
- 48)*q^9 + (-24*zeta^4 + 48*zeta^2 - 48*zeta)*q^10 + 144*q^11 + (-24*zeta^4 + 
48*zeta^2 - 48*zeta)*q^12 + (96*zeta^4 + 48*zeta^3 - 288*zeta^2 - 144*zeta + 
96)*q^13 + (-96*zeta^4 + 288*zeta^2 - 48*zeta)*q^14 + (-12*zeta^4 - 12*zeta^3 + 
60*zeta^2 + 48*zeta - 60)*q^15 + (96*zeta^4 + 96*zeta^3 - 336*zeta^2 - 288*zeta 
+ 96)*q^16 + (48*zeta^4 + 48*zeta^3 - 168*zeta^2 - 144*zeta + 48)*q^17 + 
(48*zeta^4 + 48*zeta^3 - 240*zeta^2 - 192*zeta + 240)*q^18 + (48*zeta^4 + 
24*zeta^3 - 144*zeta^2 - 72*zeta + 48)*q^20 + (24*zeta^4 - 48*zeta^2 + 
48*zeta)*q^21 - 288*q^22 + (-12*zeta^4 + 24*zeta^2 - 24*zeta)*q^23 + (96*zeta^4 
- 288*zeta^2 + 48*zeta)*q^25 + (-96*zeta^4 - 96*zeta^3 + 480*zeta^2 + 384*zeta -
480)*q^26 + (-120*zeta^4 - 120*zeta^3 + 420*zeta^2 + 360*zeta - 120)*q^27 + 
(96*zeta^4 + 96*zeta^3 - 336*zeta^2 - 288*zeta + 96)*q^28 + (-48*zeta^4 + 
144*zeta^2 - 24*zeta)*q^30 + (168*zeta^4 + 84*zeta^3 - 504*zeta^2 - 252*zeta + 
168)*q^31 + (96*zeta^4 - 192*zeta^2 + 192*zeta)*q^32 - 144*q^33 + (48*zeta^4 - 
96*zeta^2 + 96*zeta)*q^34 + (-48*zeta^4 - 24*zeta^3 + 144*zeta^2 + 72*zeta - 
48)*q^35 + (96*zeta^4 - 288*zeta^2 + 48*zeta)*q^36 + (36*zeta^4 + 36*zeta^3 - 
180*zeta^2 - 144*zeta + 180)*q^37 + (96*zeta^4 + 96*zeta^3 - 336*zeta^2 - 
288*zeta + 96)*q^39 + (192*zeta^4 - 576*zeta^2 + 96*zeta)*q^41 + (-96*zeta^4 - 
48*zeta^3 + 288*zeta^2 + 144*zeta - 96)*q^42 + (-72*zeta^4 + 144*zeta^2 - 
144*zeta)*q^43 + 288*q^44 + (-24*zeta^4 + 48*zeta^2 - 48*zeta)*q^45 + (48*zeta^4
+ 24*zeta^3 - 144*zeta^2 - 72*zeta + 48)*q^46 + (-192*zeta^4 + 576*zeta^2 - 
96*zeta)*q^47 + (48*zeta^4 + 48*zeta^3 - 240*zeta^2 - 192*zeta + 240)*q^48 + 
(72*zeta^4 + 72*zeta^3 - 252*zeta^2 - 216*zeta + 72)*q^49 + (-192*zeta^4 - 
192*zeta^3 + 672*zeta^2 + 576*zeta - 192)*q^50 + (24*zeta^4 + 24*zeta^3 - 
120*zeta^2 - 96*zeta + 120)*q^51 + (-192*zeta^4 + 576*zeta^2 - 96*zeta)*q^52 + 
(-144*zeta^4 - 72*zeta^3 + 432*zeta^2 + 216*zeta - 144)*q^53 + (-120*zeta^4 + 
240*zeta^2 - 240*zeta)*q^54 + 144*q^55 + (60*zeta^4 + 60*zeta^3 - 300*zeta^2 - 
240*zeta + 300)*q^59 + (48*zeta^4 + 48*zeta^3 - 168*zeta^2 - 144*zeta + 48)*q^60
+ (-288*zeta^4 - 288*zeta^3 + 1008*zeta^2 + 864*zeta - 288)*q^61 + (-168*zeta^4 
- 168*zeta^3 + 840*zeta^2 + 672*zeta - 840)*q^62 + (-96*zeta^4 + 288*zeta^2 - 
48*zeta)*q^63 + (-192*zeta^4 - 96*zeta^3 + 576*zeta^2 + 288*zeta - 192)*q^64 + 
(48*zeta^4 - 96*zeta^2 + 96*zeta)*q^65 + 288*q^66 + (-84*zeta^4 + 168*zeta^2 - 
168*zeta)*q^67 + (-96*zeta^4 - 48*zeta^3 + 288*zeta^2 + 144*zeta - 96)*q^68 + 
(-24*zeta^4 + 72*zeta^2 - 12*zeta)*q^69 + (48*zeta^4 + 48*zeta^3 - 240*zeta^2 - 
192*zeta + 240)*q^70 + (72*zeta^4 + 72*zeta^3 - 252*zeta^2 - 216*zeta + 72)*q^71
+ (48*zeta^4 + 48*zeta^3 - 240*zeta^2 - 192*zeta + 240)*q^73 + (144*zeta^4 - 
432*zeta^2 + 72*zeta)*q^74 + (96*zeta^4 + 48*zeta^3 - 288*zeta^2 - 144*zeta + 
96)*q^75 - 288*q^77 + (96*zeta^4 - 192*zeta^2 + 192*zeta)*q^78 + (-240*zeta^4 - 
120*zeta^3 + 720*zeta^2 + 360*zeta - 240)*q^79 + (96*zeta^4 - 288*zeta^2 + 
48*zeta)*q^80 + (12*zeta^4 + 12*zeta^3 - 60*zeta^2 - 48*zeta + 60)*q^81 + 
(-384*zeta^4 - 384*zeta^3 + 1344*zeta^2 + 1152*zeta - 384)*q^82 + (144*zeta^4 + 
144*zeta^3 - 504*zeta^2 - 432*zeta + 144)*q^83 + (48*zeta^4 + 48*zeta^3 - 
240*zeta^2 - 192*zeta + 240)*q^84 + (48*zeta^4 - 144*zeta^2 + 24*zeta)*q^85 + 
(288*zeta^4 + 144*zeta^3 - 864*zeta^2 - 432*zeta + 288)*q^86 + (180*zeta^4 - 
360*zeta^2 + 360*zeta)*q^89 + (96*zeta^4 + 48*zeta^3 - 288*zeta^2 - 144*zeta + 
96)*q^90 + (192*zeta^4 - 576*zeta^2 + 96*zeta)*q^91 + (-24*zeta^4 - 24*zeta^3 + 
120*zeta^2 + 96*zeta - 120)*q^92 + (168*zeta^4 + 168*zeta^3 - 588*zeta^2 - 
504*zeta + 168)*q^93 + (384*zeta^4 + 384*zeta^3 - 1344*zeta^2 - 1152*zeta + 
384)*q^94 + (192*zeta^4 - 576*zeta^2 + 96*zeta)*q^96 + (-168*zeta^4 - 84*zeta^3 
+ 504*zeta^2 + 252*zeta - 168)*q^97 + (72*zeta^4 - 144*zeta^2 + 144*zeta)*q^98 -
288*q^99 + (-96*zeta^4 + 192*zeta^2 - 192*zeta)*q^100 + (48*zeta^4 + 24*zeta^3 -
144*zeta^2 - 72*zeta + 48)*q^101 + (96*zeta^4 - 288*zeta^2 + 48*zeta)*q^102 + 
(-192*zeta^4 - 192*zeta^3 + 960*zeta^2 + 768*zeta - 960)*q^103 + (-48*zeta^4 - 
48*zeta^3 + 168*zeta^2 + 144*zeta - 48)*q^105 + (144*zeta^4 + 144*zeta^3 - 
720*zeta^2 - 576*zeta + 720)*q^106 + (-432*zeta^4 + 1296*zeta^2 - 
216*zeta)*q^107 + (240*zeta^4 + 120*zeta^3 - 720*zeta^2 - 360*zeta + 240)*q^108 
+ (120*zeta^4 - 240*zeta^2 + 240*zeta)*q^109 - 288*q^110 + (-36*zeta^4 + 
72*zeta^2 - 72*zeta)*q^111 + (192*zeta^4 + 96*zeta^3 - 576*zeta^2 - 288*zeta + 
192)*q^112 + (-216*zeta^4 + 648*zeta^2 - 108*zeta)*q^113 + (24*zeta^4 + 
24*zeta^3 - 84*zeta^2 - 72*zeta + 24)*q^115 + (-96*zeta^4 - 96*zeta^3 + 
480*zeta^2 + 384*zeta - 480)*q^117 + (240*zeta^4 - 720*zeta^2 + 120*zeta)*q^118 
+ (96*zeta^4 + 48*zeta^3 - 288*zeta^2 - 144*zeta + 96)*q^119 + 144*q^121 + 
(-288*zeta^4 + 576*zeta^2 - 576*zeta)*q^122 + (192*zeta^4 + 96*zeta^3 - 
576*zeta^2 - 288*zeta + 192)*q^123 + (-336*zeta^4 + 1008*zeta^2 - 
168*zeta)*q^124 + (-108*zeta^4 - 108*zeta^3 + 540*zeta^2 + 432*zeta - 540)*q^125
+ (192*zeta^4 + 192*zeta^3 - 672*zeta^2 - 576*zeta + 192)*q^126 + (-192*zeta^4 -
192*zeta^3 + 672*zeta^2 + 576*zeta - 192)*q^127 + (-144*zeta^4 + 432*zeta^2 - 
72*zeta)*q^129 + (-192*zeta^4 - 96*zeta^3 + 576*zeta^2 + 288*zeta - 192)*q^130 +
(-216*zeta^4 + 432*zeta^2 - 432*zeta)*q^131 - 288*q^132 + (336*zeta^4 + 
168*zeta^3 - 1008*zeta^2 - 504*zeta + 336)*q^134 + (-120*zeta^4 + 360*zeta^2 - 
60*zeta)*q^135 + (168*zeta^4 + 168*zeta^3 - 588*zeta^2 - 504*zeta + 168)*q^137 +
(48*zeta^4 + 48*zeta^3 - 168*zeta^2 - 144*zeta + 48)*q^138 + (120*zeta^4 + 
120*zeta^3 - 600*zeta^2 - 480*zeta + 600)*q^139 + (96*zeta^4 - 288*zeta^2 + 
48*zeta)*q^140 + (-192*zeta^4 - 96*zeta^3 + 576*zeta^2 + 288*zeta - 192)*q^141 +
(72*zeta^4 - 144*zeta^2 + 144*zeta)*q^142 + 576*q^143 + (96*zeta^4 - 192*zeta^2 
+ 192*zeta)*q^144 + (192*zeta^4 - 576*zeta^2 + 96*zeta)*q^146 + (36*zeta^4 + 
36*zeta^3 - 180*zeta^2 - 144*zeta + 180)*q^147 + (-144*zeta^4 - 144*zeta^3 + 
504*zeta^2 + 432*zeta - 144)*q^148 + (240*zeta^4 + 240*zeta^3 - 840*zeta^2 - 
720*zeta + 240)*q^149 + (-96*zeta^4 - 96*zeta^3 + 480*zeta^2 + 384*zeta - 
480)*q^150 + (-48*zeta^4 + 144*zeta^2 - 24*zeta)*q^151 + (48*zeta^4 - 96*zeta^2 
+ 96*zeta)*q^153 + 576*q^154 + (84*zeta^4 - 168*zeta^2 + 168*zeta)*q^155 + 
(-192*zeta^4 - 96*zeta^3 + 576*zeta^2 + 288*zeta - 192)*q^156 + (168*zeta^4 - 
504*zeta^2 + 84*zeta)*q^157 + (240*zeta^4 + 240*zeta^3 - 1200*zeta^2 - 960*zeta 
+ 1200)*q^158 + (-144*zeta^4 - 144*zeta^3 + 504*zeta^2 + 432*zeta - 144)*q^159 +
(-192*zeta^4 - 192*zeta^3 + 672*zeta^2 + 576*zeta - 192)*q^160 + (24*zeta^4 + 
24*zeta^3 - 120*zeta^2 - 96*zeta + 120)*q^161 + (48*zeta^4 - 144*zeta^2 + 
24*zeta)*q^162 + (96*zeta^4 + 48*zeta^3 - 288*zeta^2 - 144*zeta + 96)*q^163 + 
(-192*zeta^4 + 384*zeta^2 - 384*zeta)*q^164 - 144*q^165 + (144*zeta^4 - 
288*zeta^2 + 288*zeta)*q^166 + (-288*zeta^4 - 144*zeta^3 + 864*zeta^2 + 432*zeta
- 288)*q^167 + (36*zeta^4 + 36*zeta^3 - 180*zeta^2 - 144*zeta + 180)*q^169 + 
(-96*zeta^4 - 96*zeta^3 + 336*zeta^2 + 288*zeta - 96)*q^170 + (-144*zeta^4 - 
144*zeta^3 + 720*zeta^2 + 576*zeta - 720)*q^172 + (144*zeta^4 - 432*zeta^2 + 
72*zeta)*q^173 + (96*zeta^4 - 192*zeta^2 + 192*zeta)*q^175 - 576*q^176 + 
(-60*zeta^4 + 120*zeta^2 - 120*zeta)*q^177 + (-720*zeta^4 - 360*zeta^3 + 
2160*zeta^2 + 1080*zeta - 720)*q^178 + (360*zeta^4 - 1080*zeta^2 + 
180*zeta)*q^179 + (-48*zeta^4 - 48*zeta^3 + 240*zeta^2 + 192*zeta - 240)*q^180 +
(-168*zeta^4 - 168*zeta^3 + 588*zeta^2 + 504*zeta - 168)*q^181 + (-384*zeta^4 - 
384*zeta^3 + 1344*zeta^2 + 1152*zeta - 384)*q^182 + (-144*zeta^4 - 144*zeta^3 + 
720*zeta^2 + 576*zeta - 720)*q^183 + (72*zeta^4 + 36*zeta^3 - 216*zeta^2 - 
108*zeta + 72)*q^185 + (168*zeta^4 - 336*zeta^2 + 336*zeta)*q^186 - 288*q^187 + 
(192*zeta^4 - 384*zeta^2 + 384*zeta)*q^188 + (-240*zeta^4 - 120*zeta^3 + 
720*zeta^2 + 360*zeta - 240)*q^189 + (204*zeta^4 + 204*zeta^3 - 1020*zeta^2 - 
816*zeta + 1020)*q^191 + (-192*zeta^4 - 192*zeta^3 + 672*zeta^2 + 576*zeta - 
192)*q^192 + (-96*zeta^4 - 96*zeta^3 + 336*zeta^2 + 288*zeta - 96)*q^193 + 
(168*zeta^4 + 168*zeta^3 - 840*zeta^2 - 672*zeta + 840)*q^194 + (96*zeta^4 - 
288*zeta^2 + 48*zeta)*q^195 + (-144*zeta^4 - 72*zeta^3 + 432*zeta^2 + 216*zeta -
144)*q^196 + (-24*zeta^4 + 48*zeta^2 - 48*zeta)*q^197 + 576*q^198 + (-168*zeta^4
+ 504*zeta^2 - 84*zeta)*q^201 + (-48*zeta^4 - 48*zeta^3 + 240*zeta^2 + 192*zeta 
- 240)*q^202 + (-96*zeta^4 - 96*zeta^3 + 336*zeta^2 + 288*zeta - 96)*q^204 + 
(-96*zeta^4 - 96*zeta^3 + 480*zeta^2 + 384*zeta - 480)*q^205 + (-768*zeta^4 + 
2304*zeta^2 - 384*zeta)*q^206 + (48*zeta^4 + 24*zeta^3 - 144*zeta^2 - 72*zeta + 
48)*q^207 + (-192*zeta^4 + 384*zeta^2 - 384*zeta)*q^208 + (-48*zeta^4 + 
96*zeta^2 - 96*zeta)*q^210 + (288*zeta^4 + 144*zeta^3 - 864*zeta^2 - 432*zeta + 
288)*q^211 + (288*zeta^4 - 864*zeta^2 + 144*zeta)*q^212 + (36*zeta^4 + 36*zeta^3
- 180*zeta^2 - 144*zeta + 180)*q^213 + (864*zeta^4 + 864*zeta^3 - 3024*zeta^2 - 
2592*zeta + 864)*q^214 + (144*zeta^4 + 144*zeta^3 - 504*zeta^2 - 432*zeta + 
144)*q^215 + (336*zeta^4 - 1008*zeta^2 + 168*zeta)*q^217 + (-480*zeta^4 - 
240*zeta^3 + 1440*zeta^2 + 720*zeta - 480)*q^218 + (-48*zeta^4 + 96*zeta^2 - 
96*zeta)*q^219 + 288*q^220 + (-96*zeta^4 + 192*zeta^2 - 192*zeta)*q^221 + 
(144*zeta^4 + 72*zeta^3 - 432*zeta^2 - 216*zeta + 144)*q^222 + (-456*zeta^4 + 
1368*zeta^2 - 228*zeta)*q^223 + (-192*zeta^4 - 192*zeta^3 + 960*zeta^2 + 
768*zeta - 960)*q^224 + (-192*zeta^4 - 192*zeta^3 + 672*zeta^2 + 576*zeta - 
192)*q^225 + (432*zeta^4 + 432*zeta^3 - 1512*zeta^2 - 1296*zeta + 432)*q^226 + 
(216*zeta^4 + 216*zeta^3 - 1080*zeta^2 - 864*zeta + 1080)*q^227 + (360*zeta^4 + 
180*zeta^3 - 1080*zeta^2 - 540*zeta + 360)*q^229 + (24*zeta^4 - 48*zeta^2 + 
48*zeta)*q^230 + 288*q^231 + (576*zeta^4 + 288*zeta^3 - 1728*zeta^2 - 864*zeta +
576)*q^233 + (-384*zeta^4 + 1152*zeta^2 - 192*zeta)*q^234 + (96*zeta^4 + 
96*zeta^3 - 480*zeta^2 - 384*zeta + 480)*q^235 + (-240*zeta^4 - 240*zeta^3 + 
840*zeta^2 + 720*zeta - 240)*q^236 + (-240*zeta^4 - 240*zeta^3 + 840*zeta^2 + 
720*zeta - 240)*q^237 + (-96*zeta^4 - 96*zeta^3 + 480*zeta^2 + 384*zeta - 
480)*q^238 + (720*zeta^4 - 2160*zeta^2 + 360*zeta)*q^239 + (96*zeta^4 + 
48*zeta^3 - 288*zeta^2 - 144*zeta + 96)*q^240 + (-96*zeta^4 + 192*zeta^2 - 
192*zeta)*q^241 - 288*q^242 + (-192*zeta^4 + 384*zeta^2 - 384*zeta)*q^243 + 
(576*zeta^4 + 288*zeta^3 - 1728*zeta^2 - 864*zeta + 576)*q^244 + (72*zeta^4 - 
216*zeta^2 + 36*zeta)*q^245 + (-192*zeta^4 - 192*zeta^3 + 960*zeta^2 + 768*zeta 
- 960)*q^246 + (72*zeta^4 + 72*zeta^3 - 360*zeta^2 - 288*zeta + 360)*q^249 + 
(-432*zeta^4 + 1296*zeta^2 - 216*zeta)*q^250 + (-552*zeta^4 - 276*zeta^3 + 
1656*zeta^2 + 828*zeta - 552)*q^251 + (96*zeta^4 - 192*zeta^2 + 192*zeta)*q^252 
- 144*q^253 + (-192*zeta^4 + 384*zeta^2 - 384*zeta)*q^254 + (48*zeta^4 + 
24*zeta^3 - 144*zeta^2 - 72*zeta + 48)*q^255 + (-384*zeta^4 + 1152*zeta^2 - 
192*zeta)*q^256 + (-24*zeta^4 - 24*zeta^3 + 120*zeta^2 + 96*zeta - 120)*q^257 + 
(288*zeta^4 + 288*zeta^3 - 1008*zeta^2 - 864*zeta + 288)*q^258 + (144*zeta^4 + 
144*zeta^3 - 504*zeta^2 - 432*zeta + 144)*q^259 + (96*zeta^4 + 96*zeta^3 - 
480*zeta^2 - 384*zeta + 480)*q^260 + (864*zeta^4 + 432*zeta^3 - 2592*zeta^2 - 
1296*zeta + 864)*q^262 + (168*zeta^4 - 336*zeta^2 + 336*zeta)*q^263 + 
(-72*zeta^4 + 144*zeta^2 - 144*zeta)*q^265 + (360*zeta^4 - 1080*zeta^2 + 
180*zeta)*q^267 + (-168*zeta^4 - 168*zeta^3 + 840*zeta^2 + 672*zeta - 840)*q^268
+ (-240*zeta^4 - 240*zeta^3 + 840*zeta^2 + 720*zeta - 240)*q^269 + (240*zeta^4 +
240*zeta^3 - 840*zeta^2 - 720*zeta + 240)*q^270 + (-336*zeta^4 - 336*zeta^3 + 
1680*zeta^2 + 1344*zeta - 1680)*q^271 + (-192*zeta^4 + 576*zeta^2 - 
96*zeta)*q^272 + (192*zeta^4 + 96*zeta^3 - 576*zeta^2 - 288*zeta + 192)*q^273 + 
(168*zeta^4 - 336*zeta^2 + 336*zeta)*q^274 - 576*q^275 + (24*zeta^4 - 48*zeta^2 
+ 48*zeta)*q^276 + (-48*zeta^4 - 24*zeta^3 + 144*zeta^2 + 72*zeta - 48)*q^277 + 
(480*zeta^4 - 1440*zeta^2 + 240*zeta)*q^278 + (-168*zeta^4 - 168*zeta^3 + 
840*zeta^2 + 672*zeta - 840)*q^279 + (432*zeta^4 + 432*zeta^3 - 1512*zeta^2 - 
1296*zeta + 432)*q^281 + (192*zeta^4 + 192*zeta^3 - 960*zeta^2 - 768*zeta + 
960)*q^282 + (-96*zeta^4 + 288*zeta^2 - 48*zeta)*q^283 + (-144*zeta^4 - 
72*zeta^3 + 432*zeta^2 + 216*zeta - 144)*q^284 - 1152*q^286 + (192*zeta^4 - 
384*zeta^2 + 384*zeta)*q^287 + (-384*zeta^4 - 192*zeta^3 + 1152*zeta^2 + 
576*zeta - 384)*q^288 + (312*zeta^4 - 936*zeta^2 + 156*zeta)*q^289 + 
(-168*zeta^4 - 168*zeta^3 + 588*zeta^2 + 504*zeta - 168)*q^291 + (-192*zeta^4 - 
192*zeta^3 + 672*zeta^2 + 576*zeta - 192)*q^292 + (288*zeta^4 + 288*zeta^3 - 
1440*zeta^2 - 1152*zeta + 1440)*q^293 + (144*zeta^4 - 432*zeta^2 + 
72*zeta)*q^294 + (120*zeta^4 + 60*zeta^3 - 360*zeta^2 - 180*zeta + 120)*q^295 + 
720*q^297 + (240*zeta^4 - 480*zeta^2 + 480*zeta)*q^298 + (-96*zeta^4 - 48*zeta^3
+ 288*zeta^2 + 144*zeta - 96)*q^299 + (-192*zeta^4 + 576*zeta^2 - 96*zeta)*q^300
+ (144*zeta^4 + 144*zeta^3 - 720*zeta^2 - 576*zeta + 720)*q^301 + (96*zeta^4 + 
96*zeta^3 - 336*zeta^2 - 288*zeta + 96)*q^302 + (48*zeta^4 + 48*zeta^3 - 
168*zeta^2 - 144*zeta + 48)*q^303 + (-288*zeta^4 + 864*zeta^2 - 144*zeta)*q^305 
+ (-192*zeta^4 - 96*zeta^3 + 576*zeta^2 + 288*zeta - 192)*q^306 + (96*zeta^4 - 
192*zeta^2 + 192*zeta)*q^307 - 576*q^308 + (192*zeta^4 - 384*zeta^2 + 
384*zeta)*q^309 + (-336*zeta^4 - 168*zeta^3 + 1008*zeta^2 + 504*zeta - 
336)*q^310 + (-288*zeta^4 + 864*zeta^2 - 144*zeta)*q^311 + (24*zeta^4 + 
24*zeta^3 - 84*zeta^2 - 72*zeta + 24)*q^313 + (-336*zeta^4 - 336*zeta^3 + 
1176*zeta^2 + 1008*zeta - 336)*q^314 + (48*zeta^4 + 48*zeta^3 - 240*zeta^2 - 
192*zeta + 240)*q^315 + (480*zeta^4 - 1440*zeta^2 + 240*zeta)*q^316 + 
(312*zeta^4 + 156*zeta^3 - 936*zeta^2 - 468*zeta + 312)*q^317 + (-144*zeta^4 + 
288*zeta^2 - 288*zeta)*q^318 + (-96*zeta^4 + 192*zeta^2 - 192*zeta)*q^320 + 
(-432*zeta^4 - 216*zeta^3 + 1296*zeta^2 + 648*zeta - 432)*q^321 + (96*zeta^4 - 
288*zeta^2 + 48*zeta)*q^322 + (-48*zeta^4 - 48*zeta^3 + 168*zeta^2 + 144*zeta - 
48)*q^324 + (384*zeta^4 + 384*zeta^3 - 1344*zeta^2 - 1152*zeta + 384)*q^325 + 
(-96*zeta^4 - 96*zeta^3 + 480*zeta^2 + 384*zeta - 480)*q^326 + (240*zeta^4 - 
720*zeta^2 + 120*zeta)*q^327 + (-192*zeta^4 + 384*zeta^2 - 384*zeta)*q^329 + 
288*q^330 + (84*zeta^4 - 168*zeta^2 + 168*zeta)*q^331 + (-288*zeta^4 - 
144*zeta^3 + 864*zeta^2 + 432*zeta - 288)*q^332 + (144*zeta^4 - 432*zeta^2 + 
72*zeta)*q^333 + (288*zeta^4 + 288*zeta^3 - 1440*zeta^2 - 1152*zeta + 
1440)*q^334 + (168*zeta^4 + 168*zeta^3 - 588*zeta^2 - 504*zeta + 168)*q^335 + 
(192*zeta^4 + 192*zeta^3 - 672*zeta^2 - 576*zeta + 192)*q^336 + (-264*zeta^4 - 
264*zeta^3 + 1320*zeta^2 + 1056*zeta - 1320)*q^337 + (144*zeta^4 - 432*zeta^2 + 
72*zeta)*q^338 + (-216*zeta^4 - 108*zeta^3 + 648*zeta^2 + 324*zeta - 216)*q^339 
+ (-48*zeta^4 + 96*zeta^2 - 96*zeta)*q^340 + 1008*q^341 + (480*zeta^4 + 
240*zeta^3 - 1440*zeta^2 - 720*zeta + 480)*q^343 + (12*zeta^4 + 12*zeta^3 - 
60*zeta^2 - 48*zeta + 60)*q^345 + (-288*zeta^4 - 288*zeta^3 + 1008*zeta^2 + 
864*zeta - 288)*q^346 + (-672*zeta^4 - 672*zeta^3 + 2352*zeta^2 + 2016*zeta - 
672)*q^347 + (-720*zeta^4 + 2160*zeta^2 - 360*zeta)*q^349 + (-384*zeta^4 - 
192*zeta^3 + 1152*zeta^2 + 576*zeta - 384)*q^350 + (240*zeta^4 - 480*zeta^2 + 
480*zeta)*q^351 + 1152*q^352 + (-252*zeta^4 + 504*zeta^2 - 504*zeta)*q^353 + 
(240*zeta^4 + 120*zeta^3 - 720*zeta^2 - 360*zeta + 240)*q^354 + (72*zeta^4 - 
216*zeta^2 + 36*zeta)*q^355 + (360*zeta^4 + 360*zeta^3 - 1800*zeta^2 - 1440*zeta
+ 1800)*q^356 + (96*zeta^4 + 96*zeta^3 - 336*zeta^2 - 288*zeta + 96)*q^357 + 
(-720*zeta^4 - 720*zeta^3 + 2520*zeta^2 + 2160*zeta - 720)*q^358 + (-240*zeta^4 
- 240*zeta^3 + 1200*zeta^2 + 960*zeta - 1200)*q^359 + (-456*zeta^4 - 228*zeta^3 
+ 1368*zeta^2 + 684*zeta - 456)*q^361 + (-168*zeta^4 + 336*zeta^2 - 
336*zeta)*q^362 - 144*q^363 + (-192*zeta^4 + 384*zeta^2 - 384*zeta)*q^364 + 
(96*zeta^4 + 48*zeta^3 - 288*zeta^2 - 144*zeta + 96)*q^365 + (-576*zeta^4 + 
1728*zeta^2 - 288*zeta)*q^366 + (-204*zeta^4 - 204*zeta^3 + 1020*zeta^2 + 
816*zeta - 1020)*q^367 + (-96*zeta^4 - 96*zeta^3 + 336*zeta^2 + 288*zeta - 
96)*q^368 + (-384*zeta^4 - 384*zeta^3 + 1344*zeta^2 + 1152*zeta - 384)*q^369 + 
(-72*zeta^4 - 72*zeta^3 + 360*zeta^2 + 288*zeta - 360)*q^370 + (-288*zeta^4 + 
864*zeta^2 - 144*zeta)*q^371 + (-336*zeta^4 - 168*zeta^3 + 1008*zeta^2 + 
504*zeta - 336)*q^372 + (-312*zeta^4 + 624*zeta^2 - 624*zeta)*q^373 + 576*q^374 
+ (108*zeta^4 - 216*zeta^2 + 216*zeta)*q^375 + (240*zeta^4 + 240*zeta^3 - 
1200*zeta^2 - 960*zeta + 1200)*q^378 + (120*zeta^4 + 120*zeta^3 - 420*zeta^2 - 
360*zeta + 120)*q^379 + (-96*zeta^4 - 96*zeta^3 + 480*zeta^2 + 384*zeta - 
480)*q^381 + (816*zeta^4 - 2448*zeta^2 + 408*zeta)*q^382 + (-24*zeta^4 - 
12*zeta^3 + 72*zeta^2 + 36*zeta - 24)*q^383 - 288*q^385 + (-96*zeta^4 + 
192*zeta^2 - 192*zeta)*q^386 + (288*zeta^4 + 144*zeta^3 - 864*zeta^2 - 432*zeta 
+ 288)*q^387 + (336*zeta^4 - 1008*zeta^2 + 168*zeta)*q^388 + (-180*zeta^4 - 
180*zeta^3 + 900*zeta^2 + 720*zeta - 900)*q^389 + (-192*zeta^4 - 192*zeta^3 + 
672*zeta^2 + 576*zeta - 192)*q^390 + (-48*zeta^4 - 48*zeta^3 + 168*zeta^2 + 
144*zeta - 48)*q^391 + (-432*zeta^4 + 1296*zeta^2 - 216*zeta)*q^393 + (96*zeta^4
+ 48*zeta^3 - 288*zeta^2 - 144*zeta + 96)*q^394 + (-120*zeta^4 + 240*zeta^2 - 
240*zeta)*q^395 - 576*q^396 + (-24*zeta^4 + 48*zeta^2 - 48*zeta)*q^397 + 
(192*zeta^4 + 192*zeta^3 - 960*zeta^2 - 768*zeta + 960)*q^400 + (-48*zeta^4 - 
48*zeta^3 + 168*zeta^2 + 144*zeta - 48)*q^401 + (336*zeta^4 + 336*zeta^3 - 
1176*zeta^2 - 1008*zeta + 336)*q^402 + (336*zeta^4 + 336*zeta^3 - 1680*zeta^2 - 
1344*zeta + 1680)*q^403 + (-96*zeta^4 + 288*zeta^2 - 48*zeta)*q^404 + (24*zeta^4
+ 12*zeta^3 - 72*zeta^2 - 36*zeta + 24)*q^405 + 432*q^407 + (-720*zeta^4 - 
360*zeta^3 + 2160*zeta^2 + 1080*zeta - 720)*q^409 + (-384*zeta^4 + 1152*zeta^2 -
192*zeta)*q^410 + (84*zeta^4 + 84*zeta^3 - 420*zeta^2 - 336*zeta + 420)*q^411 + 
(768*zeta^4 + 768*zeta^3 - 2688*zeta^2 - 2304*zeta + 768)*q^412 + (240*zeta^4 + 
240*zeta^3 - 840*zeta^2 - 720*zeta + 240)*q^413 + (-48*zeta^4 - 48*zeta^3 + 
240*zeta^2 + 192*zeta - 240)*q^414 + (144*zeta^4 - 432*zeta^2 + 72*zeta)*q^415 +
(768*zeta^4 + 384*zeta^3 - 2304*zeta^2 - 1152*zeta + 768)*q^416 + (-120*zeta^4 +
240*zeta^2 - 240*zeta)*q^417 + (240*zeta^4 - 480*zeta^2 + 480*zeta)*q^419 + 
(96*zeta^4 + 48*zeta^3 - 288*zeta^2 - 144*zeta + 96)*q^420 + (-528*zeta^4 + 
1584*zeta^2 - 264*zeta)*q^421 + (-288*zeta^4 - 288*zeta^3 + 1440*zeta^2 + 
1152*zeta - 1440)*q^422 + (384*zeta^4 + 384*zeta^3 - 1344*zeta^2 - 1152*zeta + 
384)*q^423 + (96*zeta^4 + 96*zeta^3 - 480*zeta^2 - 384*zeta + 480)*q^425 + 
(144*zeta^4 - 432*zeta^2 + 72*zeta)*q^426 + (-576*zeta^4 - 288*zeta^3 + 
1728*zeta^2 + 864*zeta - 576)*q^427 + (432*zeta^4 - 864*zeta^2 + 864*zeta)*q^428
- 576*q^429 + (144*zeta^4 - 288*zeta^2 + 288*zeta)*q^430 + (-432*zeta^4 - 
216*zeta^3 + 1296*zeta^2 + 648*zeta - 432)*q^431 + (480*zeta^4 - 1440*zeta^2 + 
240*zeta)*q^432 + (-132*zeta^4 - 132*zeta^3 + 660*zeta^2 + 528*zeta - 660)*q^433
+ (-672*zeta^4 - 672*zeta^3 + 2352*zeta^2 + 2016*zeta - 672)*q^434 + (240*zeta^4
+ 240*zeta^3 - 1200*zeta^2 - 960*zeta + 1200)*q^436 + (192*zeta^4 + 96*zeta^3 - 
576*zeta^2 - 288*zeta + 192)*q^438 + (480*zeta^4 - 960*zeta^2 + 960*zeta)*q^439 
+ (72*zeta^4 - 144*zeta^2 + 144*zeta)*q^441 + (384*zeta^4 + 192*zeta^3 - 
1152*zeta^2 - 576*zeta + 384)*q^442 + (264*zeta^4 - 792*zeta^2 + 132*zeta)*q^443
+ (-72*zeta^4 - 72*zeta^3 + 360*zeta^2 + 288*zeta - 360)*q^444 + (-360*zeta^4 - 
360*zeta^3 + 1260*zeta^2 + 1080*zeta - 360)*q^445 + (912*zeta^4 + 912*zeta^3 - 
3192*zeta^2 - 2736*zeta + 912)*q^446 + (120*zeta^4 + 120*zeta^3 - 600*zeta^2 - 
480*zeta + 600)*q^447 + (-384*zeta^4 + 1152*zeta^2 - 192*zeta)*q^448 + 
(840*zeta^4 + 420*zeta^3 - 2520*zeta^2 - 1260*zeta + 840)*q^449 + (-192*zeta^4 +
384*zeta^2 - 384*zeta)*q^450 - 1152*q^451 + (216*zeta^4 - 432*zeta^2 + 
432*zeta)*q^452 + (-48*zeta^4 - 24*zeta^3 + 144*zeta^2 + 72*zeta - 48)*q^453 + 
(864*zeta^4 - 2592*zeta^2 + 432*zeta)*q^454 + (-96*zeta^4 - 96*zeta^3 + 
480*zeta^2 + 384*zeta - 480)*q^455 + (288*zeta^4 + 288*zeta^3 - 1008*zeta^2 - 
864*zeta + 288)*q^457 + (-360*zeta^4 - 360*zeta^3 + 1800*zeta^2 + 1440*zeta - 
1800)*q^458 + (240*zeta^4 - 720*zeta^2 + 120*zeta)*q^459 + (-48*zeta^4 - 
24*zeta^3 + 144*zeta^2 + 72*zeta - 48)*q^460 + (144*zeta^4 - 288*zeta^2 + 
288*zeta)*q^461 - 576*q^462 + (-132*zeta^4 + 264*zeta^2 - 264*zeta)*q^463 + 
(168*zeta^4 - 504*zeta^2 + 84*zeta)*q^465 + (-576*zeta^4 - 576*zeta^3 + 
2880*zeta^2 + 2304*zeta - 2880)*q^466 + (648*zeta^4 + 648*zeta^3 - 2268*zeta^2 -
1944*zeta + 648)*q^467 + (384*zeta^4 + 384*zeta^3 - 1344*zeta^2 - 1152*zeta + 
384)*q^468 + (168*zeta^4 + 168*zeta^3 - 840*zeta^2 - 672*zeta + 840)*q^469 + 
(384*zeta^4 - 1152*zeta^2 + 192*zeta)*q^470 + (168*zeta^4 + 84*zeta^3 - 
504*zeta^2 - 252*zeta + 168)*q^471 - 864*q^473 + (-240*zeta^4 + 480*zeta^2 - 
480*zeta)*q^474 + (-192*zeta^4 + 576*zeta^2 - 96*zeta)*q^476 + (144*zeta^4 + 
144*zeta^3 - 720*zeta^2 - 576*zeta + 720)*q^477 + (-1440*zeta^4 - 1440*zeta^3 + 
5040*zeta^2 + 4320*zeta - 1440)*q^478 + (-480*zeta^4 - 480*zeta^3 + 1680*zeta^2 
+ 1440*zeta - 480)*q^479 + (-96*zeta^4 - 96*zeta^3 + 480*zeta^2 + 384*zeta - 
480)*q^480 + (-288*zeta^4 + 864*zeta^2 - 144*zeta)*q^481 + (384*zeta^4 + 
192*zeta^3 - 1152*zeta^2 - 576*zeta + 384)*q^482 + (-24*zeta^4 + 48*zeta^2 - 
48*zeta)*q^483 + 288*q^484 + (-84*zeta^4 + 168*zeta^2 - 168*zeta)*q^485 + 
(768*zeta^4 + 384*zeta^3 - 2304*zeta^2 - 1152*zeta + 768)*q^486 + (-552*zeta^4 +
1656*zeta^2 - 276*zeta)*q^487 + (96*zeta^4 + 96*zeta^3 - 336*zeta^2 - 288*zeta +
96)*q^489 + (-144*zeta^4 - 144*zeta^3 + 504*zeta^2 + 432*zeta - 144)*q^490 + 
(-96*zeta^4 - 96*zeta^3 + 480*zeta^2 + 384*zeta - 480)*q^491 + (-384*zeta^4 + 
1152*zeta^2 - 192*zeta)*q^492 - 288*q^495 + (-336*zeta^4 + 672*zeta^2 - 
672*zeta)*q^496 + (144*zeta^4 + 72*zeta^3 - 432*zeta^2 - 216*zeta + 144)*q^497 +
(288*zeta^4 - 864*zeta^2 + 144*zeta)*q^498 + (240*zeta^4 + 240*zeta^3 - 
1200*zeta^2 - 960*zeta + 1200)*q^499 + (432*zeta^4 + 432*zeta^3 - 1512*zeta^2 - 
1296*zeta + 432)*q^500 + (-288*zeta^4 - 288*zeta^3 + 1008*zeta^2 + 864*zeta - 
288)*q^501 + (552*zeta^4 + 552*zeta^3 - 2760*zeta^2 - 2208*zeta + 2760)*q^502 + 
(624*zeta^4 - 1872*zeta^2 + 312*zeta)*q^503 + (24*zeta^4 - 48*zeta^2 + 
48*zeta)*q^505 + 288*q^506 + (-36*zeta^4 + 72*zeta^2 - 72*zeta)*q^507 + 
(384*zeta^4 + 192*zeta^3 - 1152*zeta^2 - 576*zeta + 384)*q^508 + (-360*zeta^4 + 
1080*zeta^2 - 180*zeta)*q^509 + (-48*zeta^4 - 48*zeta^3 + 240*zeta^2 + 192*zeta 
- 240)*q^510 + (192*zeta^4 + 192*zeta^3 - 672*zeta^2 - 576*zeta + 192)*q^511 + 
(768*zeta^4 + 768*zeta^3 - 2688*zeta^2 - 2304*zeta + 768)*q^512 + (-96*zeta^4 + 
288*zeta^2 - 48*zeta)*q^514 + (-384*zeta^4 - 192*zeta^3 + 1152*zeta^2 + 576*zeta
- 384)*q^515 + (144*zeta^4 - 288*zeta^2 + 288*zeta)*q^516 + 1152*q^517 + 
(144*zeta^4 - 288*zeta^2 + 288*zeta)*q^518 + (144*zeta^4 + 72*zeta^3 - 
432*zeta^2 - 216*zeta + 144)*q^519 + (-36*zeta^4 - 36*zeta^3 + 180*zeta^2 + 
144*zeta - 180)*q^521 + (384*zeta^4 + 384*zeta^3 - 1344*zeta^2 - 1152*zeta + 
384)*q^523 + (-432*zeta^4 - 432*zeta^3 + 2160*zeta^2 + 1728*zeta - 2160)*q^524 +
(192*zeta^4 - 576*zeta^2 + 96*zeta)*q^525 + (-672*zeta^4 - 336*zeta^3 + 
2016*zeta^2 + 1008*zeta - 672)*q^526 + (-168*zeta^4 + 336*zeta^2 - 
336*zeta)*q^527 + 576*q^528 + (-264*zeta^4 + 528*zeta^2 - 528*zeta)*q^529 + 
(288*zeta^4 + 144*zeta^3 - 864*zeta^2 - 432*zeta + 288)*q^530 + (240*zeta^4 - 
720*zeta^2 + 120*zeta)*q^531 + (768*zeta^4 + 768*zeta^3 - 2688*zeta^2 - 
2304*zeta + 768)*q^533 + (-720*zeta^4 - 720*zeta^3 + 2520*zeta^2 + 2160*zeta - 
720)*q^534 + (216*zeta^4 + 216*zeta^3 - 1080*zeta^2 - 864*zeta + 1080)*q^535 + 
(360*zeta^4 + 180*zeta^3 - 1080*zeta^2 - 540*zeta + 360)*q^537 + (-240*zeta^4 + 
480*zeta^2 - 480*zeta)*q^538 - 432*q^539 + (120*zeta^4 - 240*zeta^2 + 
240*zeta)*q^540 + (-192*zeta^4 - 96*zeta^3 + 576*zeta^2 + 288*zeta - 192)*q^541 
+ (-1344*zeta^4 + 4032*zeta^2 - 672*zeta)*q^542 + (-84*zeta^4 - 84*zeta^3 + 
420*zeta^2 + 336*zeta - 420)*q^543 + (384*zeta^4 + 384*zeta^3 - 1344*zeta^2 - 
1152*zeta + 384)*q^544 + (-240*zeta^4 - 240*zeta^3 + 840*zeta^2 + 720*zeta - 
240)*q^545 + (-192*zeta^4 - 192*zeta^3 + 960*zeta^2 + 768*zeta - 960)*q^546 + 
(-192*zeta^4 + 576*zeta^2 - 96*zeta)*q^547 + (-336*zeta^4 - 168*zeta^3 + 
1008*zeta^2 + 504*zeta - 336)*q^548 + (-288*zeta^4 + 576*zeta^2 - 
576*zeta)*q^549 + 1152*q^550 + (-480*zeta^4 + 1440*zeta^2 - 240*zeta)*q^553 + 
(48*zeta^4 + 48*zeta^3 - 240*zeta^2 - 192*zeta + 240)*q^554 + (72*zeta^4 + 
72*zeta^3 - 252*zeta^2 - 216*zeta + 72)*q^555 + (-480*zeta^4 - 480*zeta^3 + 
1680*zeta^2 + 1440*zeta - 480)*q^556 + (-24*zeta^4 - 24*zeta^3 + 120*zeta^2 + 
96*zeta - 120)*q^557 + (-672*zeta^4 + 2016*zeta^2 - 336*zeta)*q^558 + 
(-576*zeta^4 - 288*zeta^3 + 1728*zeta^2 + 864*zeta - 576)*q^559 + (96*zeta^4 - 
192*zeta^2 + 192*zeta)*q^560 + 288*q^561 + (432*zeta^4 - 864*zeta^2 + 
864*zeta)*q^562 + (96*zeta^4 + 48*zeta^3 - 288*zeta^2 - 144*zeta + 96)*q^563 + 
(384*zeta^4 - 1152*zeta^2 + 192*zeta)*q^564 + (108*zeta^4 + 108*zeta^3 - 
540*zeta^2 - 432*zeta + 540)*q^565 + (192*zeta^4 + 192*zeta^3 - 672*zeta^2 - 
576*zeta + 192)*q^566 + (48*zeta^4 + 48*zeta^3 - 168*zeta^2 - 144*zeta + 
48)*q^567 + (-336*zeta^4 + 672*zeta^2 - 672*zeta)*q^571 + 1152*q^572 + 
(-204*zeta^4 + 408*zeta^2 - 408*zeta)*q^573 + (-768*zeta^4 - 384*zeta^3 + 
2304*zeta^2 + 1152*zeta - 768)*q^574 + (-96*zeta^4 + 288*zeta^2 - 48*zeta)*q^575
+ (192*zeta^4 + 192*zeta^3 - 960*zeta^2 - 768*zeta + 960)*q^576 + (-792*zeta^4 -
792*zeta^3 + 2772*zeta^2 + 2376*zeta - 792)*q^577 + (-624*zeta^4 - 624*zeta^3 + 
2184*zeta^2 + 1872*zeta - 624)*q^578 + (-48*zeta^4 - 48*zeta^3 + 240*zeta^2 + 
192*zeta - 240)*q^579 + (288*zeta^4 + 144*zeta^3 - 864*zeta^2 - 432*zeta + 
288)*q^581 + (-168*zeta^4 + 336*zeta^2 - 336*zeta)*q^582 - 864*q^583 + 
(-192*zeta^4 - 96*zeta^3 + 576*zeta^2 + 288*zeta - 192)*q^585 + (1152*zeta^4 - 
3456*zeta^2 + 576*zeta)*q^586 + (336*zeta^4 + 336*zeta^3 - 1680*zeta^2 - 
1344*zeta + 1680)*q^587 + (-144*zeta^4 - 144*zeta^3 + 504*zeta^2 + 432*zeta - 
144)*q^588 + (-120*zeta^4 - 120*zeta^3 + 600*zeta^2 + 480*zeta - 600)*q^590 + 
(-48*zeta^4 + 144*zeta^2 - 24*zeta)*q^591 + (-288*zeta^4 - 144*zeta^3 + 
864*zeta^2 + 432*zeta - 288)*q^592 + (528*zeta^4 - 1056*zeta^2 + 
1056*zeta)*q^593 - 1440*q^594 + (48*zeta^4 - 96*zeta^2 + 96*zeta)*q^595 + 
(-480*zeta^4 - 240*zeta^3 + 1440*zeta^2 + 720*zeta - 480)*q^596 + (96*zeta^4 + 
96*zeta^3 - 480*zeta^2 - 384*zeta + 480)*q^598 + (-960*zeta^4 - 960*zeta^3 + 
3360*zeta^2 + 2880*zeta - 960)*q^599 + (24*zeta^4 + 24*zeta^3 - 120*zeta^2 - 
96*zeta + 120)*q^601 + (576*zeta^4 - 1728*zeta^2 + 288*zeta)*q^602 + (336*zeta^4
+ 168*zeta^3 - 1008*zeta^2 - 504*zeta + 336)*q^603 + (48*zeta^4 - 96*zeta^2 + 
96*zeta)*q^604 + O(q^605), (12*zeta^4 - 60*zeta^2 + 12*zeta + 24)*q + (12*zeta^4
- 12*zeta^3 - 60*zeta^2 + 36*zeta + 72)*q^2 + (24*zeta^4 + 48*zeta^3 - 72*zeta^2
- 96*zeta - 24)*q^3 + (24*zeta^3 + 12*zeta^2 - 60*zeta + 12)*q^4 + (-12*zeta^4 -
12*zeta^3 + 48*zeta^2 + 12*zeta - 60)*q^5 + (24*zeta^4 + 24*zeta^3 - 96*zeta^2 -
24*zeta + 120)*q^6 + (-48*zeta^3 - 24*zeta^2 + 120*zeta - 24)*q^7 + (36*zeta^4 +
72*zeta^3 - 108*zeta^2 - 144*zeta - 36)*q^8 + (-12*zeta^4 + 12*zeta^3 + 
60*zeta^2 - 36*zeta - 72)*q^9 + (-12*zeta^4 + 60*zeta^2 - 12*zeta - 24)*q^10 + 
(-24*zeta^4 + 120*zeta^2 - 24*zeta - 48)*q^12 + (12*zeta^4 - 12*zeta^3 - 
60*zeta^2 + 36*zeta + 72)*q^13 + (-24*zeta^4 - 48*zeta^3 + 72*zeta^2 + 96*zeta +
24)*q^14 + (-48*zeta^3 - 24*zeta^2 + 120*zeta - 24)*q^15 + (12*zeta^4 + 
12*zeta^3 - 48*zeta^2 - 12*zeta + 60)*q^16 + (-60*zeta^4 - 60*zeta^3 + 
240*zeta^2 + 60*zeta - 300)*q^17 + (24*zeta^3 + 12*zeta^2 - 60*zeta + 12)*q^18 +
(-72*zeta^4 - 144*zeta^3 + 216*zeta^2 + 288*zeta + 72)*q^19 + (12*zeta^4 - 
12*zeta^3 - 60*zeta^2 + 36*zeta + 72)*q^20 + (48*zeta^4 - 240*zeta^2 + 48*zeta +
96)*q^21 + (24*zeta^4 - 120*zeta^2 + 24*zeta + 48)*q^23 + (-72*zeta^4 + 
72*zeta^3 + 360*zeta^2 - 216*zeta - 432)*q^24 + (-48*zeta^4 - 96*zeta^3 + 
144*zeta^2 + 192*zeta + 48)*q^25 + (-24*zeta^3 - 12*zeta^2 + 60*zeta - 12)*q^26 
+ (48*zeta^4 + 48*zeta^3 - 192*zeta^2 - 48*zeta + 240)*q^27 + (24*zeta^4 + 
24*zeta^3 - 96*zeta^2 - 24*zeta + 120)*q^28 + (216*zeta^3 + 108*zeta^2 - 
540*zeta + 108)*q^29 + (-24*zeta^4 - 48*zeta^3 + 72*zeta^2 + 96*zeta + 24)*q^30 
+ (24*zeta^4 - 24*zeta^3 - 120*zeta^2 + 72*zeta + 144)*q^31 + (-60*zeta^4 + 
300*zeta^2 - 60*zeta - 120)*q^32 + (-60*zeta^4 + 300*zeta^2 - 60*zeta - 
120)*q^34 + (-24*zeta^4 + 24*zeta^3 + 120*zeta^2 - 72*zeta - 144)*q^35 + 
(-12*zeta^4 - 24*zeta^3 + 36*zeta^2 + 48*zeta + 12)*q^36 + (72*zeta^3 + 
36*zeta^2 - 180*zeta + 36)*q^37 + (-72*zeta^4 - 72*zeta^3 + 288*zeta^2 + 72*zeta
- 360)*q^38 + (24*zeta^4 + 24*zeta^3 - 96*zeta^2 - 24*zeta + 120)*q^39 + 
(-72*zeta^3 - 36*zeta^2 + 180*zeta - 36)*q^40 + (60*zeta^4 + 120*zeta^3 - 
180*zeta^2 - 240*zeta - 60)*q^41 + (48*zeta^4 - 48*zeta^3 - 240*zeta^2 + 
144*zeta + 288)*q^42 + (12*zeta^4 - 60*zeta^2 + 12*zeta + 24)*q^45 + (24*zeta^4 
- 24*zeta^3 - 120*zeta^2 + 72*zeta + 144)*q^46 + (24*zeta^4 + 48*zeta^3 - 
72*zeta^2 - 96*zeta - 24)*q^47 + (48*zeta^3 + 24*zeta^2 - 120*zeta + 24)*q^48 + 
(36*zeta^4 + 36*zeta^3 - 144*zeta^2 - 36*zeta + 180)*q^49 + (-48*zeta^4 - 
48*zeta^3 + 192*zeta^2 + 48*zeta - 240)*q^50 + (-240*zeta^3 - 120*zeta^2 + 
600*zeta - 120)*q^51 + (12*zeta^4 + 24*zeta^3 - 36*zeta^2 - 48*zeta - 12)*q^52 +
(-108*zeta^4 + 108*zeta^3 + 540*zeta^2 - 324*zeta - 648)*q^53 + (48*zeta^4 - 
240*zeta^2 + 48*zeta + 96)*q^54 + (72*zeta^4 - 360*zeta^2 + 72*zeta + 144)*q^56 
+ (144*zeta^4 - 144*zeta^3 - 720*zeta^2 + 432*zeta + 864)*q^57 + (108*zeta^4 + 
216*zeta^3 - 324*zeta^2 - 432*zeta - 108)*q^58 + (-192*zeta^3 - 96*zeta^2 + 
480*zeta - 96)*q^59 + (24*zeta^4 + 24*zeta^3 - 96*zeta^2 - 24*zeta + 120)*q^60 +
(72*zeta^4 + 72*zeta^3 - 288*zeta^2 - 72*zeta + 360)*q^61 + (-48*zeta^3 - 
24*zeta^2 + 120*zeta - 24)*q^62 + (24*zeta^4 + 48*zeta^3 - 72*zeta^2 - 96*zeta -
24)*q^63 + (-84*zeta^4 + 84*zeta^3 + 420*zeta^2 - 252*zeta - 504)*q^64 + 
(-12*zeta^4 + 60*zeta^2 - 12*zeta - 24)*q^65 + (24*zeta^4 - 120*zeta^2 + 24*zeta
+ 48)*q^67 + (60*zeta^4 - 60*zeta^3 - 300*zeta^2 + 180*zeta + 360)*q^68 + 
(48*zeta^4 + 96*zeta^3 - 144*zeta^2 - 192*zeta - 48)*q^69 + (48*zeta^3 + 
24*zeta^2 - 120*zeta + 24)*q^70 + (-144*zeta^4 - 144*zeta^3 + 576*zeta^2 + 
144*zeta - 720)*q^71 + (-36*zeta^4 - 36*zeta^3 + 144*zeta^2 + 36*zeta - 
180)*q^72 + (-48*zeta^3 - 24*zeta^2 + 120*zeta - 24)*q^73 + (36*zeta^4 + 
72*zeta^3 - 108*zeta^2 - 144*zeta - 36)*q^74 + (96*zeta^4 - 96*zeta^3 - 
480*zeta^2 + 288*zeta + 576)*q^75 + (72*zeta^4 - 360*zeta^2 + 72*zeta + 
144)*q^76 + (24*zeta^4 - 120*zeta^2 + 24*zeta + 48)*q^78 + (-120*zeta^4 + 
120*zeta^3 + 600*zeta^2 - 360*zeta - 720)*q^79 + (-12*zeta^4 - 24*zeta^3 + 
36*zeta^2 + 48*zeta + 12)*q^80 + (264*zeta^3 + 132*zeta^2 - 660*zeta + 132)*q^81
+ (60*zeta^4 + 60*zeta^3 - 240*zeta^2 - 60*zeta + 300)*q^82 + (72*zeta^4 + 
72*zeta^3 - 288*zeta^2 - 72*zeta + 360)*q^83 + (96*zeta^3 + 48*zeta^2 - 240*zeta
+ 48)*q^84 + (60*zeta^4 + 120*zeta^3 - 180*zeta^2 - 240*zeta - 60)*q^85 + 
(-216*zeta^4 + 1080*zeta^2 - 216*zeta - 432)*q^87 + (-108*zeta^4 + 540*zeta^2 - 
108*zeta - 216)*q^89 + (12*zeta^4 - 12*zeta^3 - 60*zeta^2 + 36*zeta + 72)*q^90 +
(-24*zeta^4 - 48*zeta^3 + 72*zeta^2 + 96*zeta + 24)*q^91 + (48*zeta^3 + 
24*zeta^2 - 120*zeta + 24)*q^92 + (48*zeta^4 + 48*zeta^3 - 192*zeta^2 - 48*zeta 
+ 240)*q^93 + (24*zeta^4 + 24*zeta^3 - 96*zeta^2 - 24*zeta + 120)*q^94 + 
(144*zeta^3 + 72*zeta^2 - 360*zeta + 72)*q^95 + (-120*zeta^4 - 240*zeta^3 + 
360*zeta^2 + 480*zeta + 120)*q^96 + (156*zeta^4 - 156*zeta^3 - 780*zeta^2 + 
468*zeta + 936)*q^97 + (36*zeta^4 - 180*zeta^2 + 36*zeta + 72)*q^98 + (48*zeta^4
- 240*zeta^2 + 48*zeta + 96)*q^100 + (-120*zeta^4 + 120*zeta^3 + 600*zeta^2 - 
360*zeta - 720)*q^101 + (-120*zeta^4 - 240*zeta^3 + 360*zeta^2 + 480*zeta + 
120)*q^102 + (-192*zeta^3 - 96*zeta^2 + 480*zeta - 96)*q^103 + (36*zeta^4 + 
36*zeta^3 - 144*zeta^2 - 36*zeta + 180)*q^104 + (-48*zeta^4 - 48*zeta^3 + 
192*zeta^2 + 48*zeta - 240)*q^105 + (216*zeta^3 + 108*zeta^2 - 540*zeta + 
108)*q^106 + (-72*zeta^4 - 144*zeta^3 + 216*zeta^2 + 288*zeta + 72)*q^107 + 
(-48*zeta^4 + 48*zeta^3 + 240*zeta^2 - 144*zeta - 288)*q^108 + (132*zeta^4 - 
660*zeta^2 + 132*zeta + 264)*q^109 + (-72*zeta^4 + 360*zeta^2 - 72*zeta - 
144)*q^111 + (24*zeta^4 - 24*zeta^3 - 120*zeta^2 + 72*zeta + 144)*q^112 + 
(-108*zeta^4 - 216*zeta^3 + 324*zeta^2 + 432*zeta + 108)*q^113 + (-288*zeta^3 - 
144*zeta^2 + 720*zeta - 144)*q^114 + (-24*zeta^4 - 24*zeta^3 + 96*zeta^2 + 
24*zeta - 120)*q^115 + (-108*zeta^4 - 108*zeta^3 + 432*zeta^2 + 108*zeta - 
540)*q^116 + (24*zeta^3 + 12*zeta^2 - 60*zeta + 12)*q^117 + (-96*zeta^4 - 
192*zeta^3 + 288*zeta^2 + 384*zeta + 96)*q^118 + (-120*zeta^4 + 120*zeta^3 + 
600*zeta^2 - 360*zeta - 720)*q^119 + (72*zeta^4 - 360*zeta^2 + 72*zeta + 
144)*q^120 + (72*zeta^4 - 360*zeta^2 + 72*zeta + 144)*q^122 + (-120*zeta^4 + 
120*zeta^3 + 600*zeta^2 - 360*zeta - 720)*q^123 + (24*zeta^4 + 48*zeta^3 - 
72*zeta^2 - 96*zeta - 24)*q^124 + (216*zeta^3 + 108*zeta^2 - 540*zeta + 
108)*q^125 + (24*zeta^4 + 24*zeta^3 - 96*zeta^2 - 24*zeta + 120)*q^126 + 
(-192*zeta^4 - 192*zeta^3 + 768*zeta^2 + 192*zeta - 960)*q^127 + (-72*zeta^3 - 
36*zeta^2 + 180*zeta - 36)*q^128 + (-12*zeta^4 + 12*zeta^3 + 60*zeta^2 - 36*zeta
- 72)*q^130 + (-144*zeta^4 + 720*zeta^2 - 144*zeta - 288)*q^133 + (24*zeta^4 - 
24*zeta^3 - 120*zeta^2 + 72*zeta + 144)*q^134 + (-48*zeta^4 - 96*zeta^3 + 
144*zeta^2 + 192*zeta + 48)*q^135 + (-360*zeta^3 - 180*zeta^2 + 900*zeta - 
180)*q^136 + (120*zeta^4 + 120*zeta^3 - 480*zeta^2 - 120*zeta + 600)*q^137 + 
(48*zeta^4 + 48*zeta^3 - 192*zeta^2 - 48*zeta + 240)*q^138 + (-48*zeta^3 - 
24*zeta^2 + 120*zeta - 24)*q^139 + (-24*zeta^4 - 48*zeta^3 + 72*zeta^2 + 96*zeta
+ 24)*q^140 + (-48*zeta^4 + 48*zeta^3 + 240*zeta^2 - 144*zeta - 288)*q^141 + 
(-144*zeta^4 + 720*zeta^2 - 144*zeta - 288)*q^142 + (-12*zeta^4 + 60*zeta^2 - 
12*zeta - 24)*q^144 + (108*zeta^4 - 108*zeta^3 - 540*zeta^2 + 324*zeta + 
648)*q^145 + (-24*zeta^4 - 48*zeta^3 + 72*zeta^2 + 96*zeta + 24)*q^146 + 
(144*zeta^3 + 72*zeta^2 - 360*zeta + 72)*q^147 + (-36*zeta^4 - 36*zeta^3 + 
144*zeta^2 + 36*zeta - 180)*q^148 + (204*zeta^4 + 204*zeta^3 - 816*zeta^2 - 
204*zeta + 1020)*q^149 + (-192*zeta^3 - 96*zeta^2 + 480*zeta - 96)*q^150 + 
(192*zeta^4 + 384*zeta^3 - 576*zeta^2 - 768*zeta - 192)*q^151 + (216*zeta^4 - 
216*zeta^3 - 1080*zeta^2 + 648*zeta + 1296)*q^152 + (60*zeta^4 - 300*zeta^2 + 
60*zeta + 120)*q^153 + (-24*zeta^4 + 120*zeta^2 - 24*zeta - 48)*q^155 + 
(-24*zeta^4 + 24*zeta^3 + 120*zeta^2 - 72*zeta - 144)*q^156 + (24*zeta^4 + 
48*zeta^3 - 72*zeta^2 - 96*zeta - 24)*q^157 + (240*zeta^3 + 120*zeta^2 - 
600*zeta + 120)*q^158 + (-216*zeta^4 - 216*zeta^3 + 864*zeta^2 + 216*zeta - 
1080)*q^159 + (60*zeta^4 + 60*zeta^3 - 240*zeta^2 - 60*zeta + 300)*q^160 + 
(-96*zeta^3 - 48*zeta^2 + 240*zeta - 48)*q^161 + (132*zeta^4 + 264*zeta^3 - 
396*zeta^2 - 528*zeta - 132)*q^162 + (24*zeta^4 - 24*zeta^3 - 120*zeta^2 + 
72*zeta + 144)*q^163 + (-60*zeta^4 + 300*zeta^2 - 60*zeta - 120)*q^164 + 
(72*zeta^4 - 360*zeta^2 + 72*zeta + 144)*q^166 + (144*zeta^4 - 144*zeta^3 - 
720*zeta^2 + 432*zeta + 864)*q^167 + (144*zeta^4 + 288*zeta^3 - 432*zeta^2 - 
576*zeta - 144)*q^168 + (288*zeta^3 + 144*zeta^2 - 720*zeta + 144)*q^169 + 
(60*zeta^4 + 60*zeta^3 - 240*zeta^2 - 60*zeta + 300)*q^170 + (72*zeta^4 + 
72*zeta^3 - 288*zeta^2 - 72*zeta + 360)*q^171 + (-72*zeta^4 - 144*zeta^3 + 
216*zeta^2 + 288*zeta + 72)*q^173 + (-216*zeta^4 + 216*zeta^3 + 1080*zeta^2 - 
648*zeta - 1296)*q^174 + (-96*zeta^4 + 480*zeta^2 - 96*zeta - 192)*q^175 + 
(192*zeta^4 - 960*zeta^2 + 192*zeta + 384)*q^177 + (-108*zeta^4 + 108*zeta^3 + 
540*zeta^2 - 324*zeta - 648)*q^178 + (288*zeta^4 + 576*zeta^3 - 864*zeta^2 - 
1152*zeta - 288)*q^179 + (24*zeta^3 + 12*zeta^2 - 60*zeta + 12)*q^180 + 
(-12*zeta^4 - 12*zeta^3 + 48*zeta^2 + 12*zeta - 60)*q^181 + (-24*zeta^4 - 
24*zeta^3 + 96*zeta^2 + 24*zeta - 120)*q^182 + (288*zeta^3 + 144*zeta^2 - 
720*zeta + 144)*q^183 + (72*zeta^4 + 144*zeta^3 - 216*zeta^2 - 288*zeta - 
72)*q^184 + (36*zeta^4 - 36*zeta^3 - 180*zeta^2 + 108*zeta + 216)*q^185 + 
(48*zeta^4 - 240*zeta^2 + 48*zeta + 96)*q^186 + (-24*zeta^4 + 120*zeta^2 - 
24*zeta - 48)*q^188 + (96*zeta^4 - 96*zeta^3 - 480*zeta^2 + 288*zeta + 
576)*q^189 + (72*zeta^4 + 144*zeta^3 - 216*zeta^2 - 288*zeta - 72)*q^190 + 
(-192*zeta^3 - 96*zeta^2 + 480*zeta - 96)*q^191 + (-168*zeta^4 - 168*zeta^3 + 
672*zeta^2 + 168*zeta - 840)*q^192 + (-60*zeta^4 - 60*zeta^3 + 240*zeta^2 + 
60*zeta - 300)*q^193 + (-312*zeta^3 - 156*zeta^2 + 780*zeta - 156)*q^194 + 
(-24*zeta^4 - 48*zeta^3 + 72*zeta^2 + 96*zeta + 24)*q^195 + (-36*zeta^4 + 
36*zeta^3 + 180*zeta^2 - 108*zeta - 216)*q^196 + (132*zeta^4 - 660*zeta^2 + 
132*zeta + 264)*q^197 + (288*zeta^4 - 1440*zeta^2 + 288*zeta + 576)*q^199 + 
(144*zeta^4 - 144*zeta^3 - 720*zeta^2 + 432*zeta + 864)*q^200 + (48*zeta^4 + 
96*zeta^3 - 144*zeta^2 - 192*zeta - 48)*q^201 + (240*zeta^3 + 120*zeta^2 - 
600*zeta + 120)*q^202 + (216*zeta^4 + 216*zeta^3 - 864*zeta^2 - 216*zeta + 
1080)*q^203 + (120*zeta^4 + 120*zeta^3 - 480*zeta^2 - 120*zeta + 600)*q^204 + 
(-120*zeta^3 - 60*zeta^2 + 300*zeta - 60)*q^205 + (-96*zeta^4 - 192*zeta^3 + 
288*zeta^2 + 384*zeta + 96)*q^206 + (-24*zeta^4 + 24*zeta^3 + 120*zeta^2 - 
72*zeta - 144)*q^207 + (12*zeta^4 - 60*zeta^2 + 12*zeta + 24)*q^208 + 
(-48*zeta^4 + 240*zeta^2 - 48*zeta - 96)*q^210 + (144*zeta^4 - 144*zeta^3 - 
720*zeta^2 + 432*zeta + 864)*q^211 + (-108*zeta^4 - 216*zeta^3 + 324*zeta^2 + 
432*zeta + 108)*q^212 + (-576*zeta^3 - 288*zeta^2 + 1440*zeta - 288)*q^213 + 
(-72*zeta^4 - 72*zeta^3 + 288*zeta^2 + 72*zeta - 360)*q^214 + (288*zeta^3 + 
144*zeta^2 - 720*zeta + 144)*q^216 + (-48*zeta^4 - 96*zeta^3 + 144*zeta^2 + 
192*zeta + 48)*q^217 + (132*zeta^4 - 132*zeta^3 - 660*zeta^2 + 396*zeta + 
792)*q^218 + (48*zeta^4 - 240*zeta^2 + 48*zeta + 96)*q^219 + (-60*zeta^4 + 
300*zeta^2 - 60*zeta - 120)*q^221 + (-72*zeta^4 + 72*zeta^3 + 360*zeta^2 - 
216*zeta - 432)*q^222 + (-240*zeta^4 - 480*zeta^3 + 720*zeta^2 + 960*zeta + 
240)*q^223 + (240*zeta^3 + 120*zeta^2 - 600*zeta + 120)*q^224 + (48*zeta^4 + 
48*zeta^3 - 192*zeta^2 - 48*zeta + 240)*q^225 + (-108*zeta^4 - 108*zeta^3 + 
432*zeta^2 + 108*zeta - 540)*q^226 + (-576*zeta^3 - 288*zeta^2 + 1440*zeta - 
288)*q^227 + (144*zeta^4 + 288*zeta^3 - 432*zeta^2 - 576*zeta - 144)*q^228 + 
(-108*zeta^4 + 108*zeta^3 + 540*zeta^2 - 324*zeta - 648)*q^229 + (-24*zeta^4 + 
120*zeta^2 - 24*zeta - 48)*q^230 + (-324*zeta^4 + 1620*zeta^2 - 324*zeta - 
648)*q^232 + (-252*zeta^4 + 252*zeta^3 + 1260*zeta^2 - 756*zeta - 1512)*q^233 + 
(12*zeta^4 + 24*zeta^3 - 36*zeta^2 - 48*zeta - 12)*q^234 + (-48*zeta^3 - 
24*zeta^2 + 120*zeta - 24)*q^235 + (96*zeta^4 + 96*zeta^3 - 384*zeta^2 - 96*zeta
+ 480)*q^236 + (-240*zeta^4 - 240*zeta^3 + 960*zeta^2 + 240*zeta - 1200)*q^237 +
(240*zeta^3 + 120*zeta^2 - 600*zeta + 120)*q^238 + (-72*zeta^4 - 144*zeta^3 + 
216*zeta^2 + 288*zeta + 72)*q^239 + (24*zeta^4 - 24*zeta^3 - 120*zeta^2 + 
72*zeta + 144)*q^240 + (-264*zeta^4 + 1320*zeta^2 - 264*zeta - 528)*q^241 + 
(-120*zeta^4 + 600*zeta^2 - 120*zeta - 240)*q^243 + (-72*zeta^4 + 72*zeta^3 + 
360*zeta^2 - 216*zeta - 432)*q^244 + (-36*zeta^4 - 72*zeta^3 + 108*zeta^2 + 
144*zeta + 36)*q^245 + (240*zeta^3 + 120*zeta^2 - 600*zeta + 120)*q^246 + 
(-72*zeta^4 - 72*zeta^3 + 288*zeta^2 + 72*zeta - 360)*q^247 + (72*zeta^4 + 
72*zeta^3 - 288*zeta^2 - 72*zeta + 360)*q^248 + (288*zeta^3 + 144*zeta^2 - 
720*zeta + 144)*q^249 + (108*zeta^4 + 216*zeta^3 - 324*zeta^2 - 432*zeta - 
108)*q^250 + (24*zeta^4 - 24*zeta^3 - 120*zeta^2 + 72*zeta + 144)*q^251 + 
(-24*zeta^4 + 120*zeta^2 - 24*zeta - 48)*q^252 + (-192*zeta^4 + 960*zeta^2 - 
192*zeta - 384)*q^254 + (-120*zeta^4 + 120*zeta^3 + 600*zeta^2 - 360*zeta - 
720)*q^255 + (-204*zeta^4 - 408*zeta^3 + 612*zeta^2 + 816*zeta + 204)*q^256 + 
(-456*zeta^3 - 228*zeta^2 + 1140*zeta - 228)*q^257 + (72*zeta^4 + 72*zeta^3 - 
288*zeta^2 - 72*zeta + 360)*q^259 + (-24*zeta^3 - 12*zeta^2 + 60*zeta - 
12)*q^260 + (-108*zeta^4 - 216*zeta^3 + 324*zeta^2 + 432*zeta + 108)*q^261 + 
(264*zeta^4 - 1320*zeta^2 + 264*zeta + 528)*q^263 + (108*zeta^4 - 540*zeta^2 + 
108*zeta + 216)*q^265 + (-144*zeta^4 + 144*zeta^3 + 720*zeta^2 - 432*zeta - 
864)*q^266 + (-216*zeta^4 - 432*zeta^3 + 648*zeta^2 + 864*zeta + 216)*q^267 + 
(48*zeta^3 + 24*zeta^2 - 120*zeta + 24)*q^268 + (-12*zeta^4 - 12*zeta^3 + 
48*zeta^2 + 12*zeta - 60)*q^269 + (-48*zeta^4 - 48*zeta^3 + 192*zeta^2 + 48*zeta
- 240)*q^270 + (480*zeta^3 + 240*zeta^2 - 1200*zeta + 240)*q^271 + (-60*zeta^4 -
120*zeta^3 + 180*zeta^2 + 240*zeta + 60)*q^272 + (48*zeta^4 - 48*zeta^3 - 
240*zeta^2 + 144*zeta + 288)*q^273 + (120*zeta^4 - 600*zeta^2 + 120*zeta + 
240)*q^274 + (-48*zeta^4 + 240*zeta^2 - 48*zeta - 96)*q^276 + (12*zeta^4 - 
12*zeta^3 - 60*zeta^2 + 36*zeta + 72)*q^277 + (-24*zeta^4 - 48*zeta^3 + 
72*zeta^2 + 96*zeta + 24)*q^278 + (48*zeta^3 + 24*zeta^2 - 120*zeta + 24)*q^279 
+ (-72*zeta^4 - 72*zeta^3 + 288*zeta^2 + 72*zeta - 360)*q^280 + (72*zeta^4 + 
72*zeta^3 - 288*zeta^2 - 72*zeta + 360)*q^281 + (96*zeta^3 + 48*zeta^2 - 
240*zeta + 48)*q^282 + (-336*zeta^4 - 672*zeta^3 + 1008*zeta^2 + 1344*zeta + 
336)*q^283 + (144*zeta^4 - 144*zeta^3 - 720*zeta^2 + 432*zeta + 864)*q^284 + 
(-144*zeta^4 + 720*zeta^2 - 144*zeta - 288)*q^285 + (120*zeta^4 - 600*zeta^2 + 
120*zeta + 240)*q^287 + (60*zeta^4 - 60*zeta^3 - 300*zeta^2 + 180*zeta + 
360)*q^288 + (96*zeta^4 + 192*zeta^3 - 288*zeta^2 - 384*zeta - 96)*q^289 + 
(-216*zeta^3 - 108*zeta^2 + 540*zeta - 108)*q^290 + (312*zeta^4 + 312*zeta^3 - 
1248*zeta^2 - 312*zeta + 1560)*q^291 + (24*zeta^4 + 24*zeta^3 - 96*zeta^2 - 
24*zeta + 120)*q^292 + (216*zeta^3 + 108*zeta^2 - 540*zeta + 108)*q^293 + 
(72*zeta^4 + 144*zeta^3 - 216*zeta^2 - 288*zeta - 72)*q^294 + (-96*zeta^4 + 
96*zeta^3 + 480*zeta^2 - 288*zeta - 576)*q^295 + (-108*zeta^4 + 540*zeta^2 - 
108*zeta - 216)*q^296 + (204*zeta^4 - 1020*zeta^2 + 204*zeta + 408)*q^298 + 
(24*zeta^4 - 24*zeta^3 - 120*zeta^2 + 72*zeta + 144)*q^299 + (96*zeta^4 + 
192*zeta^3 - 288*zeta^2 - 384*zeta - 96)*q^300 + (192*zeta^4 + 192*zeta^3 - 
768*zeta^2 - 192*zeta + 960)*q^302 + (-240*zeta^4 - 240*zeta^3 + 960*zeta^2 + 
240*zeta - 1200)*q^303 + (-144*zeta^3 - 72*zeta^2 + 360*zeta - 72)*q^304 + 
(-72*zeta^4 - 144*zeta^3 + 216*zeta^2 + 288*zeta + 72)*q^305 + (60*zeta^4 - 
60*zeta^3 - 300*zeta^2 + 180*zeta + 360)*q^306 + (264*zeta^4 - 1320*zeta^2 + 
264*zeta + 528)*q^307 + (192*zeta^4 - 960*zeta^2 + 192*zeta + 384)*q^309 + 
(-24*zeta^4 + 24*zeta^3 + 120*zeta^2 - 72*zeta - 144)*q^310 + (288*zeta^4 + 
576*zeta^3 - 864*zeta^2 - 1152*zeta - 288)*q^311 + (144*zeta^3 + 72*zeta^2 - 
360*zeta + 72)*q^312 + (-276*zeta^4 - 276*zeta^3 + 1104*zeta^2 + 276*zeta - 
1380)*q^313 + (24*zeta^4 + 24*zeta^3 - 96*zeta^2 - 24*zeta + 120)*q^314 + 
(-48*zeta^3 - 24*zeta^2 + 120*zeta - 24)*q^315 + (-120*zeta^4 - 240*zeta^3 + 
360*zeta^2 + 480*zeta + 120)*q^316 + (24*zeta^4 - 24*zeta^3 - 120*zeta^2 + 
72*zeta + 144)*q^317 + (-216*zeta^4 + 1080*zeta^2 - 216*zeta - 432)*q^318 + 
(84*zeta^4 - 420*zeta^2 + 84*zeta + 168)*q^320 + (144*zeta^4 - 144*zeta^3 - 
720*zeta^2 + 432*zeta + 864)*q^321 + (-48*zeta^4 - 96*zeta^3 + 144*zeta^2 + 
192*zeta + 48)*q^322 + (720*zeta^3 + 360*zeta^2 - 1800*zeta + 360)*q^323 + 
(-132*zeta^4 - 132*zeta^3 + 528*zeta^2 + 132*zeta - 660)*q^324 + (-48*zeta^4 - 
48*zeta^3 + 192*zeta^2 + 48*zeta - 240)*q^325 + (-48*zeta^3 - 24*zeta^2 + 
120*zeta - 24)*q^326 + (264*zeta^4 + 528*zeta^3 - 792*zeta^2 - 1056*zeta - 
264)*q^327 + (-180*zeta^4 + 180*zeta^3 + 900*zeta^2 - 540*zeta - 1080)*q^328 + 
(48*zeta^4 - 240*zeta^2 + 48*zeta + 96)*q^329 + (-240*zeta^4 + 1200*zeta^2 - 
240*zeta - 480)*q^331 + (-72*zeta^4 + 72*zeta^3 + 360*zeta^2 - 216*zeta - 
432)*q^332 + (-36*zeta^4 - 72*zeta^3 + 108*zeta^2 + 144*zeta + 36)*q^333 + 
(-288*zeta^3 - 144*zeta^2 + 720*zeta - 144)*q^334 + (-24*zeta^4 - 24*zeta^3 + 
96*zeta^2 + 24*zeta - 120)*q^335 + (48*zeta^4 + 48*zeta^3 - 192*zeta^2 - 48*zeta
+ 240)*q^336 + (-312*zeta^3 - 156*zeta^2 + 780*zeta - 156)*q^337 + (144*zeta^4 +
288*zeta^3 - 432*zeta^2 - 576*zeta - 144)*q^338 + (216*zeta^4 - 216*zeta^3 - 
1080*zeta^2 + 648*zeta + 1296)*q^339 + (-60*zeta^4 + 300*zeta^2 - 60*zeta - 
120)*q^340 + (72*zeta^4 - 360*zeta^2 + 72*zeta + 144)*q^342 + (240*zeta^4 - 
240*zeta^3 - 1200*zeta^2 + 720*zeta + 1440)*q^343 + (-96*zeta^3 - 48*zeta^2 + 
240*zeta - 48)*q^345 + (-72*zeta^4 - 72*zeta^3 + 288*zeta^2 + 72*zeta - 
360)*q^346 + (336*zeta^4 + 336*zeta^3 - 1344*zeta^2 - 336*zeta + 1680)*q^347 + 
(-432*zeta^3 - 216*zeta^2 + 1080*zeta - 216)*q^348 + (324*zeta^4 + 648*zeta^3 - 
972*zeta^2 - 1296*zeta - 324)*q^349 + (-96*zeta^4 + 96*zeta^3 + 480*zeta^2 - 
288*zeta - 576)*q^350 + (48*zeta^4 - 240*zeta^2 + 48*zeta + 96)*q^351 + 
(-108*zeta^4 + 540*zeta^2 - 108*zeta - 216)*q^353 + (192*zeta^4 - 192*zeta^3 - 
960*zeta^2 + 576*zeta + 1152)*q^354 + (144*zeta^4 + 288*zeta^3 - 432*zeta^2 - 
576*zeta - 144)*q^355 + (-216*zeta^3 - 108*zeta^2 + 540*zeta - 108)*q^356 + 
(-240*zeta^4 - 240*zeta^3 + 960*zeta^2 + 240*zeta - 1200)*q^357 + (288*zeta^4 + 
288*zeta^3 - 1152*zeta^2 - 288*zeta + 1440)*q^358 + (-48*zeta^3 - 24*zeta^2 + 
120*zeta - 24)*q^359 + (36*zeta^4 + 72*zeta^3 - 108*zeta^2 - 144*zeta - 
36)*q^360 + (-204*zeta^4 + 204*zeta^3 + 1020*zeta^2 - 612*zeta - 1224)*q^361 + 
(-12*zeta^4 + 60*zeta^2 - 12*zeta - 24)*q^362 + (24*zeta^4 - 120*zeta^2 + 
24*zeta + 48)*q^364 + (-24*zeta^4 + 24*zeta^3 + 120*zeta^2 - 72*zeta - 
144)*q^365 + (144*zeta^4 + 288*zeta^3 - 432*zeta^2 - 576*zeta - 144)*q^366 + 
(336*zeta^3 + 168*zeta^2 - 840*zeta + 168)*q^367 + (24*zeta^4 + 24*zeta^3 - 
96*zeta^2 - 24*zeta + 120)*q^368 + (-60*zeta^4 - 60*zeta^3 + 240*zeta^2 + 
60*zeta - 300)*q^369 + (-72*zeta^3 - 36*zeta^2 + 180*zeta - 36)*q^370 + 
(216*zeta^4 + 432*zeta^3 - 648*zeta^2 - 864*zeta - 216)*q^371 + (-48*zeta^4 + 
48*zeta^3 + 240*zeta^2 - 144*zeta - 288)*q^372 + (-264*zeta^4 + 1320*zeta^2 - 
264*zeta - 528)*q^373 + (-216*zeta^4 + 1080*zeta^2 - 216*zeta - 432)*q^375 + 
(-72*zeta^4 + 72*zeta^3 + 360*zeta^2 - 216*zeta - 432)*q^376 + (108*zeta^4 + 
216*zeta^3 - 324*zeta^2 - 432*zeta - 108)*q^377 + (-192*zeta^3 - 96*zeta^2 + 
480*zeta - 96)*q^378 + (384*zeta^4 + 384*zeta^3 - 1536*zeta^2 - 384*zeta + 
1920)*q^379 + (-72*zeta^4 - 72*zeta^3 + 288*zeta^2 + 72*zeta - 360)*q^380 + 
(-768*zeta^3 - 384*zeta^2 + 1920*zeta - 384)*q^381 + (-96*zeta^4 - 192*zeta^3 + 
288*zeta^2 + 384*zeta + 96)*q^382 + (-240*zeta^4 + 240*zeta^3 + 1200*zeta^2 - 
720*zeta - 1440)*q^383 + (72*zeta^4 - 360*zeta^2 + 72*zeta + 144)*q^384 + 
(-60*zeta^4 + 300*zeta^2 - 60*zeta - 120)*q^386 + (156*zeta^4 + 312*zeta^3 - 
468*zeta^2 - 624*zeta - 156)*q^388 + (72*zeta^3 + 36*zeta^2 - 180*zeta + 
36)*q^389 + (-24*zeta^4 - 24*zeta^3 + 96*zeta^2 + 24*zeta - 120)*q^390 + 
(-120*zeta^4 - 120*zeta^3 + 480*zeta^2 + 120*zeta - 600)*q^391 + (216*zeta^3 + 
108*zeta^2 - 540*zeta + 108)*q^392 + (132*zeta^4 - 132*zeta^3 - 660*zeta^2 + 
396*zeta + 792)*q^394 + (120*zeta^4 - 600*zeta^2 + 120*zeta + 240)*q^395 + 
(156*zeta^4 - 780*zeta^2 + 156*zeta + 312)*q^397 + (288*zeta^4 - 288*zeta^3 - 
1440*zeta^2 + 864*zeta + 1728)*q^398 + (-288*zeta^4 - 576*zeta^3 + 864*zeta^2 + 
1152*zeta + 288)*q^399 + (-96*zeta^3 - 48*zeta^2 + 240*zeta - 48)*q^400 + 
(-276*zeta^4 - 276*zeta^3 + 1104*zeta^2 + 276*zeta - 1380)*q^401 + (48*zeta^4 + 
48*zeta^3 - 192*zeta^2 - 48*zeta + 240)*q^402 + (-48*zeta^3 - 24*zeta^2 + 
120*zeta - 24)*q^403 + (-120*zeta^4 - 240*zeta^3 + 360*zeta^2 + 480*zeta + 
120)*q^404 + (132*zeta^4 - 132*zeta^3 - 660*zeta^2 + 396*zeta + 792)*q^405 + 
(216*zeta^4 - 1080*zeta^2 + 216*zeta + 432)*q^406 + (360*zeta^4 - 1800*zeta^2 + 
360*zeta + 720)*q^408 + (-252*zeta^4 + 252*zeta^3 + 1260*zeta^2 - 756*zeta - 
1512)*q^409 + (-60*zeta^4 - 120*zeta^3 + 180*zeta^2 + 240*zeta + 60)*q^410 + 
(480*zeta^3 + 240*zeta^2 - 1200*zeta + 240)*q^411 + (96*zeta^4 + 96*zeta^3 - 
384*zeta^2 - 96*zeta + 480)*q^412 + (-192*zeta^4 - 192*zeta^3 + 768*zeta^2 + 
192*zeta - 960)*q^413 + (48*zeta^3 + 24*zeta^2 - 120*zeta + 24)*q^414 + 
(-72*zeta^4 - 144*zeta^3 + 216*zeta^2 + 288*zeta + 72)*q^415 + (-60*zeta^4 + 
60*zeta^3 + 300*zeta^2 - 180*zeta - 360)*q^416 + (48*zeta^4 - 240*zeta^2 + 
48*zeta + 96)*q^417 + (24*zeta^4 - 120*zeta^2 + 24*zeta + 48)*q^419 + (48*zeta^4
- 48*zeta^3 - 240*zeta^2 + 144*zeta + 288)*q^420 + (156*zeta^4 + 312*zeta^3 - 
468*zeta^2 - 624*zeta - 156)*q^421 + (-288*zeta^3 - 144*zeta^2 + 720*zeta - 
144)*q^422 + (-24*zeta^4 - 24*zeta^3 + 96*zeta^2 + 24*zeta - 120)*q^423 + 
(-324*zeta^4 - 324*zeta^3 + 1296*zeta^2 + 324*zeta - 1620)*q^424 + (480*zeta^3 +
240*zeta^2 - 1200*zeta + 240)*q^425 + (-288*zeta^4 - 576*zeta^3 + 864*zeta^2 + 
1152*zeta + 288)*q^426 + (144*zeta^4 - 144*zeta^3 - 720*zeta^2 + 432*zeta + 
864)*q^427 + (72*zeta^4 - 360*zeta^2 + 72*zeta + 144)*q^428 + (144*zeta^4 - 
144*zeta^3 - 720*zeta^2 + 432*zeta + 864)*q^431 + (48*zeta^4 + 96*zeta^3 - 
144*zeta^2 - 192*zeta - 48)*q^432 + (-456*zeta^3 - 228*zeta^2 + 1140*zeta - 
228)*q^433 + (-48*zeta^4 - 48*zeta^3 + 192*zeta^2 + 48*zeta - 240)*q^434 + 
(216*zeta^4 + 216*zeta^3 - 864*zeta^2 - 216*zeta + 1080)*q^435 + (264*zeta^3 + 
132*zeta^2 - 660*zeta + 132)*q^436 + (-144*zeta^4 - 288*zeta^3 + 432*zeta^2 + 
576*zeta + 144)*q^437 + (48*zeta^4 - 48*zeta^3 - 240*zeta^2 + 144*zeta + 
288)*q^438 + (-264*zeta^4 + 1320*zeta^2 - 264*zeta - 528)*q^439 + (-36*zeta^4 + 
180*zeta^2 - 36*zeta - 72)*q^441 + (-60*zeta^4 + 60*zeta^3 + 300*zeta^2 - 
180*zeta - 360)*q^442 + (-240*zeta^4 - 480*zeta^3 + 720*zeta^2 + 960*zeta + 
240)*q^443 + (-144*zeta^3 - 72*zeta^2 + 360*zeta - 72)*q^444 + (108*zeta^4 + 
108*zeta^3 - 432*zeta^2 - 108*zeta + 540)*q^445 + (-240*zeta^4 - 240*zeta^3 + 
960*zeta^2 + 240*zeta - 1200)*q^446 + (816*zeta^3 + 408*zeta^2 - 2040*zeta + 
408)*q^447 + (168*zeta^4 + 336*zeta^3 - 504*zeta^2 - 672*zeta - 168)*q^448 + 
(156*zeta^4 - 156*zeta^3 - 780*zeta^2 + 468*zeta + 936)*q^449 + (48*zeta^4 - 
240*zeta^2 + 48*zeta + 96)*q^450 + (108*zeta^4 - 540*zeta^2 + 108*zeta + 
216)*q^452 + (-384*zeta^4 + 384*zeta^3 + 1920*zeta^2 - 1152*zeta - 2304)*q^453 +
(-288*zeta^4 - 576*zeta^3 + 864*zeta^2 + 1152*zeta + 288)*q^454 + (48*zeta^3 + 
24*zeta^2 - 120*zeta + 24)*q^455 + (432*zeta^4 + 432*zeta^3 - 1728*zeta^2 - 
432*zeta + 2160)*q^456 + (468*zeta^4 + 468*zeta^3 - 1872*zeta^2 - 468*zeta + 
2340)*q^457 + (216*zeta^3 + 108*zeta^2 - 540*zeta + 108)*q^458 + (-240*zeta^4 - 
480*zeta^3 + 720*zeta^2 + 960*zeta + 240)*q^459 + (24*zeta^4 - 24*zeta^3 - 
120*zeta^2 + 72*zeta + 144)*q^460 + (-396*zeta^4 + 1980*zeta^2 - 396*zeta - 
792)*q^461 + (-240*zeta^4 + 1200*zeta^2 - 240*zeta - 480)*q^463 + (-108*zeta^4 +
108*zeta^3 + 540*zeta^2 - 324*zeta - 648)*q^464 + (-48*zeta^4 - 96*zeta^3 + 
144*zeta^2 + 192*zeta + 48)*q^465 + (504*zeta^3 + 252*zeta^2 - 1260*zeta + 
252)*q^466 + (-144*zeta^4 - 144*zeta^3 + 576*zeta^2 + 144*zeta - 720)*q^467 + 
(-12*zeta^4 - 12*zeta^3 + 48*zeta^2 + 12*zeta - 60)*q^468 + (-96*zeta^3 - 
48*zeta^2 + 240*zeta - 48)*q^469 + (-24*zeta^4 - 48*zeta^3 + 72*zeta^2 + 96*zeta
+ 24)*q^470 + (-48*zeta^4 + 48*zeta^3 + 240*zeta^2 - 144*zeta - 288)*q^471 + 
(288*zeta^4 - 1440*zeta^2 + 288*zeta + 576)*q^472 + (-240*zeta^4 + 1200*zeta^2 -
240*zeta - 480)*q^474 + (-288*zeta^4 + 288*zeta^3 + 1440*zeta^2 - 864*zeta - 
1728)*q^475 + (-120*zeta^4 - 240*zeta^3 + 360*zeta^2 + 480*zeta + 120)*q^476 + 
(-216*zeta^3 - 108*zeta^2 + 540*zeta - 108)*q^477 + (-72*zeta^4 - 72*zeta^3 + 
288*zeta^2 + 72*zeta - 360)*q^478 + (-192*zeta^4 - 192*zeta^3 + 768*zeta^2 + 
192*zeta - 960)*q^479 + (240*zeta^3 + 120*zeta^2 - 600*zeta + 120)*q^480 + 
(36*zeta^4 + 72*zeta^3 - 108*zeta^2 - 144*zeta - 36)*q^481 + (-264*zeta^4 + 
264*zeta^3 + 1320*zeta^2 - 792*zeta - 1584)*q^482 + (96*zeta^4 - 480*zeta^2 + 
96*zeta + 192)*q^483 + (-156*zeta^4 + 780*zeta^2 - 156*zeta - 312)*q^485 + 
(-120*zeta^4 + 120*zeta^3 + 600*zeta^2 - 360*zeta - 720)*q^486 + (24*zeta^4 + 
48*zeta^3 - 72*zeta^2 - 96*zeta - 24)*q^487 + (432*zeta^3 + 216*zeta^2 - 
1080*zeta + 216)*q^488 + (48*zeta^4 + 48*zeta^3 - 192*zeta^2 - 48*zeta + 
240)*q^489 + (-36*zeta^4 - 36*zeta^3 + 144*zeta^2 + 36*zeta - 180)*q^490 + 
(-48*zeta^3 - 24*zeta^2 + 120*zeta - 24)*q^491 + (-120*zeta^4 - 240*zeta^3 + 
360*zeta^2 + 480*zeta + 120)*q^492 + (540*zeta^4 - 540*zeta^3 - 2700*zeta^2 + 
1620*zeta + 3240)*q^493 + (-72*zeta^4 + 360*zeta^2 - 72*zeta - 144)*q^494 + 
(24*zeta^4 - 120*zeta^2 + 24*zeta + 48)*q^496 + (-288*zeta^4 + 288*zeta^3 + 
1440*zeta^2 - 864*zeta - 1728)*q^497 + (144*zeta^4 + 288*zeta^3 - 432*zeta^2 - 
576*zeta - 144)*q^498 + (-192*zeta^3 - 96*zeta^2 + 480*zeta - 96)*q^499 + 
(-108*zeta^4 - 108*zeta^3 + 432*zeta^2 + 108*zeta - 540)*q^500 + (288*zeta^4 + 
288*zeta^3 - 1152*zeta^2 - 288*zeta + 1440)*q^501 + (-48*zeta^3 - 24*zeta^2 + 
120*zeta - 24)*q^502 + (456*zeta^4 + 912*zeta^3 - 1368*zeta^2 - 1824*zeta - 
456)*q^503 + (-72*zeta^4 + 72*zeta^3 + 360*zeta^2 - 216*zeta - 432)*q^504 + 
(120*zeta^4 - 600*zeta^2 + 120*zeta + 240)*q^505 + (-288*zeta^4 + 1440*zeta^2 - 
288*zeta - 576)*q^507 + (192*zeta^4 - 192*zeta^3 - 960*zeta^2 + 576*zeta + 
1152)*q^508 + (-504*zeta^4 - 1008*zeta^3 + 1512*zeta^2 + 2016*zeta + 504)*q^509 
+ (240*zeta^3 + 120*zeta^2 - 600*zeta + 120)*q^510 + (-48*zeta^4 - 48*zeta^3 + 
192*zeta^2 + 48*zeta - 240)*q^511 + (-132*zeta^4 - 132*zeta^3 + 528*zeta^2 + 
132*zeta - 660)*q^512 + (-576*zeta^3 - 288*zeta^2 + 1440*zeta - 288)*q^513 + 
(-228*zeta^4 - 456*zeta^3 + 684*zeta^2 + 912*zeta + 228)*q^514 + (-96*zeta^4 + 
96*zeta^3 + 480*zeta^2 - 288*zeta - 576)*q^515 + (72*zeta^4 - 360*zeta^2 + 
72*zeta + 144)*q^518 + (144*zeta^4 - 144*zeta^3 - 720*zeta^2 + 432*zeta + 
864)*q^519 + (-36*zeta^4 - 72*zeta^3 + 108*zeta^2 + 144*zeta + 36)*q^520 + 
(-720*zeta^3 - 360*zeta^2 + 1800*zeta - 360)*q^521 + (-108*zeta^4 - 108*zeta^3 +
432*zeta^2 + 108*zeta - 540)*q^522 + (-192*zeta^4 - 192*zeta^3 + 768*zeta^2 + 
192*zeta - 960)*q^523 + (-192*zeta^4 - 384*zeta^3 + 576*zeta^2 + 768*zeta + 
192)*q^525 + (264*zeta^4 - 264*zeta^3 - 1320*zeta^2 + 792*zeta + 1584)*q^526 + 
(-120*zeta^4 + 600*zeta^2 - 120*zeta - 240)*q^527 + (-228*zeta^4 + 1140*zeta^2 -
228*zeta - 456)*q^529 + (108*zeta^4 - 108*zeta^3 - 540*zeta^2 + 324*zeta + 
648)*q^530 + (96*zeta^4 + 192*zeta^3 - 288*zeta^2 - 384*zeta - 96)*q^531 + 
(-288*zeta^3 - 144*zeta^2 + 720*zeta - 144)*q^532 + (60*zeta^4 + 60*zeta^3 - 
240*zeta^2 - 60*zeta + 300)*q^533 + (-216*zeta^4 - 216*zeta^3 + 864*zeta^2 + 
216*zeta - 1080)*q^534 + (144*zeta^3 + 72*zeta^2 - 360*zeta + 72)*q^535 + 
(72*zeta^4 + 144*zeta^3 - 216*zeta^2 - 288*zeta - 72)*q^536 + (-576*zeta^4 + 
576*zeta^3 + 2880*zeta^2 - 1728*zeta - 3456)*q^537 + (-12*zeta^4 + 60*zeta^2 - 
12*zeta - 24)*q^538 + (48*zeta^4 - 240*zeta^2 + 48*zeta + 96)*q^540 + 
(408*zeta^4 - 408*zeta^3 - 2040*zeta^2 + 1224*zeta + 2448)*q^541 + (240*zeta^4 +
480*zeta^3 - 720*zeta^2 - 960*zeta - 240)*q^542 + (-48*zeta^3 - 24*zeta^2 + 
120*zeta - 24)*q^543 + (300*zeta^4 + 300*zeta^3 - 1200*zeta^2 - 300*zeta + 
1500)*q^544 + (-132*zeta^4 - 132*zeta^3 + 528*zeta^2 + 132*zeta - 660)*q^545 + 
(-96*zeta^3 - 48*zeta^2 + 240*zeta - 48)*q^546 + (192*zeta^4 + 384*zeta^3 - 
576*zeta^2 - 768*zeta - 192)*q^547 + (-120*zeta^4 + 120*zeta^3 + 600*zeta^2 - 
360*zeta - 720)*q^548 + (-72*zeta^4 + 360*zeta^2 - 72*zeta - 144)*q^549 + 
(648*zeta^4 - 3240*zeta^2 + 648*zeta + 1296)*q^551 + (-144*zeta^4 + 144*zeta^3 +
720*zeta^2 - 432*zeta - 864)*q^552 + (240*zeta^4 + 480*zeta^3 - 720*zeta^2 - 
960*zeta - 240)*q^553 + (-24*zeta^3 - 12*zeta^2 + 60*zeta - 12)*q^554 + 
(72*zeta^4 + 72*zeta^3 - 288*zeta^2 - 72*zeta + 360)*q^555 + (24*zeta^4 + 
24*zeta^3 - 96*zeta^2 - 24*zeta + 120)*q^556 + (-48*zeta^3 - 24*zeta^2 + 
120*zeta - 24)*q^557 + (24*zeta^4 + 48*zeta^3 - 72*zeta^2 - 96*zeta - 24)*q^558 
+ (-24*zeta^4 + 120*zeta^2 - 24*zeta - 48)*q^560 + (72*zeta^4 - 360*zeta^2 + 
72*zeta + 144)*q^562 + (408*zeta^4 - 408*zeta^3 - 2040*zeta^2 + 1224*zeta + 
2448)*q^563 + (-48*zeta^4 - 96*zeta^3 + 144*zeta^2 + 192*zeta + 48)*q^564 + 
(216*zeta^3 + 108*zeta^2 - 540*zeta + 108)*q^565 + (-336*zeta^4 - 336*zeta^3 + 
1344*zeta^2 + 336*zeta - 1680)*q^566 + (264*zeta^4 + 264*zeta^3 - 1056*zeta^2 - 
264*zeta + 1320)*q^567 + (-864*zeta^3 - 432*zeta^2 + 2160*zeta - 432)*q^568 + 
(-72*zeta^4 - 144*zeta^3 + 216*zeta^2 + 288*zeta + 72)*q^569 + (-144*zeta^4 + 
144*zeta^3 + 720*zeta^2 - 432*zeta - 864)*q^570 + (264*zeta^4 - 1320*zeta^2 + 
264*zeta + 528)*q^571 + (192*zeta^4 - 960*zeta^2 + 192*zeta + 384)*q^573 + 
(120*zeta^4 - 120*zeta^3 - 600*zeta^2 + 360*zeta + 720)*q^574 + (-96*zeta^4 - 
192*zeta^3 + 288*zeta^2 + 384*zeta + 96)*q^575 + (-168*zeta^3 - 84*zeta^2 + 
420*zeta - 84)*q^576 + (252*zeta^4 + 252*zeta^3 - 1008*zeta^2 - 252*zeta + 
1260)*q^577 + (96*zeta^4 + 96*zeta^3 - 384*zeta^2 - 96*zeta + 480)*q^578 + 
(-240*zeta^3 - 120*zeta^2 + 600*zeta - 120)*q^579 + (108*zeta^4 + 216*zeta^3 - 
324*zeta^2 - 432*zeta - 108)*q^580 + (144*zeta^4 - 144*zeta^3 - 720*zeta^2 + 
432*zeta + 864)*q^581 + (312*zeta^4 - 1560*zeta^2 + 312*zeta + 624)*q^582 + 
(72*zeta^4 - 360*zeta^2 + 72*zeta + 144)*q^584 + (12*zeta^4 - 12*zeta^3 - 
60*zeta^2 + 36*zeta + 72)*q^585 + (108*zeta^4 + 216*zeta^3 - 324*zeta^2 - 
432*zeta - 108)*q^586 + (336*zeta^3 + 168*zeta^2 - 840*zeta + 168)*q^587 + 
(-72*zeta^4 - 72*zeta^3 + 288*zeta^2 + 72*zeta - 360)*q^588 + (-144*zeta^4 - 
144*zeta^3 + 576*zeta^2 + 144*zeta - 720)*q^589 + (192*zeta^3 + 96*zeta^2 - 
480*zeta + 96)*q^590 + (264*zeta^4 + 528*zeta^3 - 792*zeta^2 - 1056*zeta - 
264)*q^591 + (-36*zeta^4 + 36*zeta^3 + 180*zeta^2 - 108*zeta - 216)*q^592 + 
(-132*zeta^4 + 660*zeta^2 - 132*zeta - 264)*q^593 + (120*zeta^4 - 600*zeta^2 + 
120*zeta + 240)*q^595 + (-204*zeta^4 + 204*zeta^3 + 1020*zeta^2 - 612*zeta - 
1224)*q^596 + (576*zeta^4 + 1152*zeta^3 - 1728*zeta^2 - 2304*zeta - 576)*q^597 +
(-48*zeta^3 - 24*zeta^2 + 120*zeta - 24)*q^598 + (-408*zeta^4 - 408*zeta^3 + 
1632*zeta^2 + 408*zeta - 2040)*q^599 + (288*zeta^4 + 288*zeta^3 - 1152*zeta^2 - 
288*zeta + 1440)*q^600 + (-312*zeta^3 - 156*zeta^2 + 780*zeta - 156)*q^601 + 
(-24*zeta^4 + 24*zeta^3 + 120*zeta^2 - 72*zeta - 144)*q^603 + (-192*zeta^4 + 
960*zeta^2 - 192*zeta - 384)*q^604 + O(q^605), (-15*zeta^4 - 12*zeta^3 + 
36*zeta^2 + 18*zeta + 24)*q + (-24*zeta^4 - 6*zeta^3 + 84*zeta^2 + 9*zeta - 
54)*q^3 + (6*zeta^4 + 18*zeta^3 - 54*zeta^2 - 60*zeta + 30)*q^4 + (-18*zeta^4 - 
54*zeta^3 + 63*zeta^2 + 180*zeta - 90)*q^5 + (24*zeta^4 + 6*zeta^3 - 84*zeta^2 -
42*zeta - 12)*q^9 + (-30*zeta^4 - 24*zeta^3 + 72*zeta^2 + 36*zeta + 48)*q^12 + 
(-9*zeta^4 - 27*zeta^3 + 81*zeta^2 + 90*zeta - 45)*q^15 + (24*zeta^4 + 72*zeta^3
- 84*zeta^2 - 240*zeta + 120)*q^16 + (-72*zeta^4 - 18*zeta^3 + 252*zeta^2 + 
126*zeta + 36)*q^20 + (135*zeta^4 + 108*zeta^3 - 324*zeta^2 - 162*zeta - 
216)*q^23 + (96*zeta^4 + 24*zeta^3 - 336*zeta^2 - 36*zeta + 216)*q^25 + 
(30*zeta^4 + 90*zeta^3 - 105*zeta^2 - 300*zeta + 150)*q^27 + (60*zeta^4 + 
15*zeta^3 - 210*zeta^2 - 105*zeta - 30)*q^31 + (96*zeta^4 + 24*zeta^3 - 
336*zeta^2 - 36*zeta + 216)*q^36 + (-21*zeta^4 - 63*zeta^3 + 189*zeta^2 + 
210*zeta - 105)*q^37 + (-90*zeta^4 - 72*zeta^3 + 216*zeta^2 + 108*zeta + 
144)*q^45 + (-288*zeta^4 - 72*zeta^3 + 1008*zeta^2 + 108*zeta - 648)*q^47 + 
(12*zeta^4 + 36*zeta^3 - 108*zeta^2 - 120*zeta + 60)*q^48 + (-42*zeta^4 - 
126*zeta^3 + 147*zeta^2 + 420*zeta - 210)*q^49 + (-72*zeta^4 - 18*zeta^3 + 
252*zeta^2 + 126*zeta + 36)*q^53 + (45*zeta^4 + 135*zeta^3 - 405*zeta^2 - 
450*zeta + 225)*q^59 + (-36*zeta^4 - 108*zeta^3 + 126*zeta^2 + 360*zeta - 
180)*q^60 + (96*zeta^4 + 24*zeta^3 - 336*zeta^2 - 168*zeta - 48)*q^64 + 
(-195*zeta^4 - 156*zeta^3 + 468*zeta^2 + 234*zeta + 312)*q^67 + (216*zeta^4 + 
54*zeta^3 - 756*zeta^2 - 81*zeta + 486)*q^69 + (-18*zeta^4 - 54*zeta^3 + 
63*zeta^2 + 180*zeta - 90)*q^71 + (48*zeta^4 + 12*zeta^3 - 168*zeta^2 - 84*zeta 
- 24)*q^75 + (-288*zeta^4 - 72*zeta^3 + 1008*zeta^2 + 108*zeta - 648)*q^80 + 
(-3*zeta^4 - 9*zeta^3 + 27*zeta^2 + 30*zeta - 15)*q^81 + (135*zeta^4 + 
108*zeta^3 - 324*zeta^2 - 162*zeta - 216)*q^89 + (-54*zeta^4 - 162*zeta^3 + 
486*zeta^2 + 540*zeta - 270)*q^92 + (30*zeta^4 + 90*zeta^3 - 105*zeta^2 - 
300*zeta + 150)*q^93 + (-204*zeta^4 - 51*zeta^3 + 714*zeta^2 + 357*zeta + 
102)*q^97 + (120*zeta^4 + 96*zeta^3 - 288*zeta^2 - 144*zeta - 192)*q^100 + 
(12*zeta^4 + 36*zeta^3 - 108*zeta^2 - 120*zeta + 60)*q^103 + (120*zeta^4 + 
30*zeta^3 - 420*zeta^2 - 210*zeta - 60)*q^108 + (105*zeta^4 + 84*zeta^3 - 
252*zeta^2 - 126*zeta - 168)*q^111 + (504*zeta^4 + 126*zeta^3 - 1764*zeta^2 - 
189*zeta + 1134)*q^113 + (162*zeta^4 + 486*zeta^3 - 567*zeta^2 - 1620*zeta + 
810)*q^115 + (240*zeta^4 + 60*zeta^3 - 840*zeta^2 - 90*zeta + 540)*q^124 + 
(-9*zeta^4 - 27*zeta^3 + 81*zeta^2 + 90*zeta - 45)*q^125 + (-360*zeta^4 - 
90*zeta^3 + 1260*zeta^2 + 135*zeta - 810)*q^135 + (-18*zeta^4 - 54*zeta^3 + 
63*zeta^2 + 180*zeta - 90)*q^137 + (-144*zeta^4 - 36*zeta^3 + 504*zeta^2 + 
252*zeta + 72)*q^141 + (120*zeta^4 + 96*zeta^3 - 288*zeta^2 - 144*zeta - 
192)*q^144 + (-21*zeta^4 - 63*zeta^3 + 189*zeta^2 + 210*zeta - 105)*q^147 + 
(-84*zeta^4 - 252*zeta^3 + 294*zeta^2 + 840*zeta - 420)*q^148 + (-225*zeta^4 - 
180*zeta^3 + 540*zeta^2 + 270*zeta + 360)*q^155 + (-552*zeta^4 - 138*zeta^3 + 
1932*zeta^2 + 207*zeta - 1242)*q^157 + (-36*zeta^4 - 108*zeta^3 + 126*zeta^2 + 
360*zeta - 180)*q^159 + (192*zeta^4 + 48*zeta^3 - 672*zeta^2 - 336*zeta - 
96)*q^163 + (39*zeta^4 + 117*zeta^3 - 351*zeta^2 - 390*zeta + 195)*q^169 + 
(-225*zeta^4 - 180*zeta^3 + 540*zeta^2 + 270*zeta + 360)*q^177 + (504*zeta^4 + 
126*zeta^3 - 1764*zeta^2 - 189*zeta + 1134)*q^179 + (36*zeta^4 + 108*zeta^3 - 
324*zeta^2 - 360*zeta + 180)*q^180 + (-150*zeta^4 - 450*zeta^3 + 525*zeta^2 + 
1500*zeta - 750)*q^181 + (252*zeta^4 + 63*zeta^3 - 882*zeta^2 - 441*zeta - 
126)*q^185 + (-360*zeta^4 - 288*zeta^3 + 864*zeta^2 + 432*zeta + 576)*q^188 + 
(45*zeta^4 + 135*zeta^3 - 405*zeta^2 - 450*zeta + 225)*q^191 + (48*zeta^4 + 
144*zeta^3 - 168*zeta^2 - 480*zeta + 240)*q^192 + (-168*zeta^4 - 42*zeta^3 + 
588*zeta^2 + 294*zeta + 84)*q^196 + (300*zeta^4 + 240*zeta^3 - 720*zeta^2 - 
360*zeta - 480)*q^199 + (-312*zeta^4 - 78*zeta^3 + 1092*zeta^2 + 117*zeta - 
702)*q^201 + (-216*zeta^4 - 54*zeta^3 + 756*zeta^2 + 378*zeta + 108)*q^207 + 
(-288*zeta^4 - 72*zeta^3 + 1008*zeta^2 + 108*zeta - 648)*q^212 + (-9*zeta^4 - 
27*zeta^3 + 81*zeta^2 + 90*zeta - 45)*q^213 + (-24*zeta^4 - 6*zeta^3 + 84*zeta^2
+ 9*zeta - 54)*q^223 + (-48*zeta^4 - 144*zeta^3 + 168*zeta^2 + 480*zeta - 
240)*q^225 + (60*zeta^4 + 15*zeta^3 - 210*zeta^2 - 105*zeta - 30)*q^229 + 
(-108*zeta^4 - 324*zeta^3 + 972*zeta^2 + 1080*zeta - 540)*q^235 + (180*zeta^4 + 
540*zeta^3 - 630*zeta^2 - 1800*zeta + 900)*q^236 + (-144*zeta^4 - 36*zeta^3 + 
504*zeta^2 + 252*zeta + 72)*q^240 + (240*zeta^4 + 192*zeta^3 - 576*zeta^2 - 
288*zeta - 384)*q^243 + (504*zeta^4 + 126*zeta^3 - 1764*zeta^2 - 189*zeta + 
1134)*q^245 + (324*zeta^4 + 81*zeta^3 - 1134*zeta^2 - 567*zeta - 162)*q^251 + 
(384*zeta^4 + 96*zeta^3 - 1344*zeta^2 - 144*zeta + 864)*q^256 + (-54*zeta^4 - 
162*zeta^3 + 486*zeta^2 + 540*zeta - 270)*q^257 + (270*zeta^4 + 216*zeta^3 - 
648*zeta^2 - 324*zeta - 432)*q^265 + (216*zeta^4 + 54*zeta^3 - 756*zeta^2 - 
81*zeta + 486)*q^267 + (78*zeta^4 + 234*zeta^3 - 702*zeta^2 - 780*zeta + 
390)*q^268 + (180*zeta^4 + 540*zeta^3 - 630*zeta^2 - 1800*zeta + 900)*q^269 + 
(270*zeta^4 + 216*zeta^3 - 648*zeta^2 - 324*zeta - 432)*q^276 + (-30*zeta^4 - 
90*zeta^3 + 270*zeta^2 + 300*zeta - 150)*q^279 + (-72*zeta^4 - 18*zeta^3 + 
252*zeta^2 + 126*zeta + 36)*q^284 + (-408*zeta^4 - 102*zeta^3 + 1428*zeta^2 + 
153*zeta - 918)*q^289 + (-102*zeta^4 - 306*zeta^3 + 357*zeta^2 + 1020*zeta - 
510)*q^291 + (-540*zeta^4 - 135*zeta^3 + 1890*zeta^2 + 945*zeta + 270)*q^295 + 
(192*zeta^4 + 48*zeta^3 - 672*zeta^2 - 72*zeta + 432)*q^300 + (-60*zeta^4 - 
48*zeta^3 + 144*zeta^2 + 72*zeta + 96)*q^309 + (-288*zeta^4 - 72*zeta^3 + 
1008*zeta^2 + 108*zeta - 648)*q^311 + (114*zeta^4 + 342*zeta^3 - 399*zeta^2 - 
1140*zeta + 570)*q^313 + (324*zeta^4 + 81*zeta^3 - 1134*zeta^2 - 567*zeta - 
162)*q^317 + (-360*zeta^4 - 288*zeta^3 + 864*zeta^2 + 432*zeta + 576)*q^320 + 
(-12*zeta^4 - 36*zeta^3 + 42*zeta^2 + 120*zeta - 60)*q^324 + (-525*zeta^4 - 
420*zeta^3 + 1260*zeta^2 + 630*zeta + 840)*q^331 + (-336*zeta^4 - 84*zeta^3 + 
1176*zeta^2 + 126*zeta - 756)*q^333 + (-234*zeta^4 - 702*zeta^3 + 819*zeta^2 + 
2340*zeta - 1170)*q^335 + (252*zeta^4 + 63*zeta^3 - 882*zeta^2 - 441*zeta - 
126)*q^339 + (81*zeta^4 + 243*zeta^3 - 729*zeta^2 - 810*zeta + 405)*q^345 + 
(135*zeta^4 + 108*zeta^3 - 324*zeta^2 - 162*zeta - 216)*q^353 + (216*zeta^4 + 
54*zeta^3 - 756*zeta^2 - 81*zeta + 486)*q^355 + (-54*zeta^4 - 162*zeta^3 + 
486*zeta^2 + 540*zeta - 270)*q^356 + (228*zeta^4 + 57*zeta^3 - 798*zeta^2 - 
399*zeta - 114)*q^361 + (111*zeta^4 + 333*zeta^3 - 999*zeta^2 - 1110*zeta + 
555)*q^367 + (-216*zeta^4 - 648*zeta^3 + 756*zeta^2 + 2160*zeta - 1080)*q^368 + 
(120*zeta^4 + 30*zeta^3 - 420*zeta^2 - 210*zeta - 60)*q^372 + (45*zeta^4 + 
36*zeta^3 - 108*zeta^2 - 54*zeta - 72)*q^375 + (-150*zeta^4 - 450*zeta^3 + 
525*zeta^2 + 1500*zeta - 750)*q^379 + (-468*zeta^4 - 117*zeta^3 + 1638*zeta^2 + 
819*zeta + 234)*q^383 + (-816*zeta^4 - 204*zeta^3 + 2856*zeta^2 + 306*zeta - 
1836)*q^388 + (45*zeta^4 + 135*zeta^3 - 405*zeta^2 - 450*zeta + 225)*q^389 + 
(-30*zeta^4 - 24*zeta^3 + 72*zeta^2 + 36*zeta + 48)*q^397 + (-48*zeta^4 - 
144*zeta^3 + 432*zeta^2 + 480*zeta - 240)*q^400 + (180*zeta^4 + 540*zeta^3 - 
630*zeta^2 - 1800*zeta + 900)*q^401 + (36*zeta^4 + 9*zeta^3 - 126*zeta^2 - 
63*zeta - 18)*q^405 + (-9*zeta^4 - 27*zeta^3 + 81*zeta^2 + 90*zeta - 45)*q^411 +
(48*zeta^4 + 144*zeta^3 - 168*zeta^2 - 480*zeta + 240)*q^412 + (-360*zeta^4 - 
288*zeta^3 + 864*zeta^2 + 432*zeta + 576)*q^419 + (240*zeta^4 + 60*zeta^3 - 
840*zeta^2 - 90*zeta + 540)*q^421 + (144*zeta^4 + 432*zeta^3 - 504*zeta^2 - 
1440*zeta + 720)*q^423 + (480*zeta^4 + 120*zeta^3 - 1680*zeta^2 - 180*zeta + 
1080)*q^432 + (-87*zeta^4 - 261*zeta^3 + 783*zeta^2 + 870*zeta - 435)*q^433 + 
(-210*zeta^4 - 168*zeta^3 + 504*zeta^2 + 252*zeta + 336)*q^441 + (504*zeta^4 + 
126*zeta^3 - 1764*zeta^2 - 189*zeta + 1134)*q^443 + (-42*zeta^4 - 126*zeta^3 + 
378*zeta^2 + 420*zeta - 210)*q^444 + (162*zeta^4 + 486*zeta^3 - 567*zeta^2 - 
1620*zeta + 810)*q^445 + (-468*zeta^4 - 117*zeta^3 + 1638*zeta^2 + 819*zeta + 
234)*q^449 + (630*zeta^4 + 504*zeta^3 - 1512*zeta^2 - 756*zeta - 1008)*q^452 + 
(648*zeta^4 + 162*zeta^3 - 2268*zeta^2 - 1134*zeta - 324)*q^460 + (465*zeta^4 + 
372*zeta^3 - 1116*zeta^2 - 558*zeta - 744)*q^463 + (-360*zeta^4 - 90*zeta^3 + 
1260*zeta^2 + 135*zeta - 810)*q^465 + (-18*zeta^4 - 54*zeta^3 + 63*zeta^2 + 
180*zeta - 90)*q^467 + (-276*zeta^4 - 69*zeta^3 + 966*zeta^2 + 483*zeta + 
138)*q^471 + (36*zeta^4 + 108*zeta^3 - 324*zeta^2 - 360*zeta + 180)*q^477 + 
(765*zeta^4 + 612*zeta^3 - 1836*zeta^2 - 918*zeta - 1224)*q^485 + (1032*zeta^4 +
258*zeta^3 - 3612*zeta^2 - 387*zeta + 2322)*q^487 + (96*zeta^4 + 288*zeta^3 - 
336*zeta^2 - 960*zeta + 480)*q^489 + (300*zeta^4 + 240*zeta^3 - 720*zeta^2 - 
360*zeta - 480)*q^496 + (-120*zeta^4 - 360*zeta^3 + 1080*zeta^2 + 1200*zeta - 
600)*q^499 + (-36*zeta^4 - 108*zeta^3 + 126*zeta^2 + 360*zeta - 180)*q^500 + 
(-195*zeta^4 - 156*zeta^3 + 468*zeta^2 + 234*zeta + 312)*q^507 + (-1080*zeta^4 -
270*zeta^3 + 3780*zeta^2 + 405*zeta - 2430)*q^509 + (-144*zeta^4 - 36*zeta^3 + 
504*zeta^2 + 252*zeta + 72)*q^515 + (45*zeta^4 + 135*zeta^3 - 405*zeta^2 - 
450*zeta + 225)*q^521 + (-870*zeta^4 - 696*zeta^3 + 2088*zeta^2 + 1044*zeta + 
1392)*q^529 + (720*zeta^4 + 180*zeta^3 - 2520*zeta^2 - 270*zeta + 1620)*q^531 + 
(252*zeta^4 + 63*zeta^3 - 882*zeta^2 - 441*zeta - 126)*q^537 + (-450*zeta^4 - 
360*zeta^3 + 1080*zeta^2 + 540*zeta + 720)*q^540 + (-75*zeta^4 - 225*zeta^3 + 
675*zeta^2 + 750*zeta - 375)*q^543 + (-72*zeta^4 - 18*zeta^3 + 252*zeta^2 + 
126*zeta + 36)*q^548 + (126*zeta^4 + 378*zeta^3 - 441*zeta^2 - 1260*zeta + 
630)*q^555 + (-576*zeta^4 - 144*zeta^3 + 2016*zeta^2 + 216*zeta - 1296)*q^564 + 
(189*zeta^4 + 567*zeta^3 - 1701*zeta^2 - 1890*zeta + 945)*q^565 + (-225*zeta^4 -
180*zeta^3 + 540*zeta^2 + 270*zeta + 360)*q^573 + (-864*zeta^4 - 216*zeta^3 + 
3024*zeta^2 + 324*zeta - 1944)*q^575 + (-48*zeta^4 - 144*zeta^3 + 432*zeta^2 + 
480*zeta - 240)*q^576 + (-282*zeta^4 - 846*zeta^3 + 987*zeta^2 + 2820*zeta - 
1410)*q^577 + (144*zeta^4 + 432*zeta^3 - 1296*zeta^2 - 1440*zeta + 720)*q^587 + 
(-84*zeta^4 - 252*zeta^3 + 294*zeta^2 + 840*zeta - 420)*q^588 + (-336*zeta^4 - 
84*zeta^3 + 1176*zeta^2 + 588*zeta + 168)*q^592 + (480*zeta^4 + 120*zeta^3 - 
1680*zeta^2 - 180*zeta + 1080)*q^597 + (-216*zeta^4 - 648*zeta^3 + 756*zeta^2 + 
2160*zeta - 1080)*q^599 + (312*zeta^4 + 78*zeta^3 - 1092*zeta^2 - 546*zeta - 
156)*q^603 + O(q^605), (4*zeta^4 - 20*zeta^2 - 4*zeta + 24)*q + (-4*zeta^4 + 
4*zeta^3 + 12*zeta^2 - 12*zeta + 8)*q^2 + (8*zeta^4 - 24*zeta^2 + 16*zeta + 
24)*q^3 + (8*zeta^4 + 8*zeta^3 - 28*zeta^2 - 20*zeta + 4)*q^4 + (4*zeta^4 + 
4*zeta^3 - 8*zeta^2 - 12*zeta + 4)*q^5 + (8*zeta^4 + 8*zeta^3 - 16*zeta^2 - 
24*zeta + 8)*q^6 + (16*zeta^4 + 16*zeta^3 - 56*zeta^2 - 40*zeta + 8)*q^7 + 
(-12*zeta^4 + 36*zeta^2 - 24*zeta - 36)*q^8 + (-4*zeta^4 + 4*zeta^3 + 12*zeta^2 
- 12*zeta + 8)*q^9 + (4*zeta^4 - 20*zeta^2 - 4*zeta + 24)*q^10 + (-8*zeta^4 + 
40*zeta^2 + 8*zeta - 48)*q^12 + (-4*zeta^4 + 4*zeta^3 + 12*zeta^2 - 12*zeta + 
8)*q^13 + (-8*zeta^4 + 24*zeta^2 - 16*zeta - 24)*q^14 + (-16*zeta^4 - 16*zeta^3 
+ 56*zeta^2 + 40*zeta - 8)*q^15 + (-4*zeta^4 - 4*zeta^3 + 8*zeta^2 + 12*zeta - 
4)*q^16 + (-20*zeta^4 - 20*zeta^3 + 40*zeta^2 + 60*zeta - 20)*q^17 + (-8*zeta^4 
- 8*zeta^3 + 28*zeta^2 + 20*zeta - 4)*q^18 + (24*zeta^4 - 72*zeta^2 + 48*zeta + 
72)*q^19 + (4*zeta^4 - 4*zeta^3 - 12*zeta^2 + 12*zeta - 8)*q^20 + (-16*zeta^4 + 
80*zeta^2 + 16*zeta - 96)*q^21 + (8*zeta^4 - 40*zeta^2 - 8*zeta + 48)*q^23 + 
(24*zeta^4 - 24*zeta^3 - 72*zeta^2 + 72*zeta - 48)*q^24 + (-16*zeta^4 + 
48*zeta^2 - 32*zeta - 48)*q^25 + (-8*zeta^4 - 8*zeta^3 + 28*zeta^2 + 20*zeta - 
4)*q^26 + (-16*zeta^4 - 16*zeta^3 + 32*zeta^2 + 48*zeta - 16)*q^27 + (8*zeta^4 +
8*zeta^3 - 16*zeta^2 - 24*zeta + 8)*q^28 + (-72*zeta^4 - 72*zeta^3 + 252*zeta^2 
+ 180*zeta - 36)*q^29 + (8*zeta^4 - 24*zeta^2 + 16*zeta + 24)*q^30 + (8*zeta^4 -
8*zeta^3 - 24*zeta^2 + 24*zeta - 16)*q^31 + (20*zeta^4 - 100*zeta^2 - 20*zeta + 
120)*q^32 + (-20*zeta^4 + 100*zeta^2 + 20*zeta - 120)*q^34 + (8*zeta^4 - 
8*zeta^3 - 24*zeta^2 + 24*zeta - 16)*q^35 + (-4*zeta^4 + 12*zeta^2 - 8*zeta - 
12)*q^36 + (24*zeta^4 + 24*zeta^3 - 84*zeta^2 - 60*zeta + 12)*q^37 + (24*zeta^4 
+ 24*zeta^3 - 48*zeta^2 - 72*zeta + 24)*q^38 + (8*zeta^4 + 8*zeta^3 - 16*zeta^2 
- 24*zeta + 8)*q^39 + (24*zeta^4 + 24*zeta^3 - 84*zeta^2 - 60*zeta + 12)*q^40 + 
(-20*zeta^4 + 60*zeta^2 - 40*zeta - 60)*q^41 + (16*zeta^4 - 16*zeta^3 - 
48*zeta^2 + 48*zeta - 32)*q^42 + (4*zeta^4 - 20*zeta^2 - 4*zeta + 24)*q^45 + 
(-8*zeta^4 + 8*zeta^3 + 24*zeta^2 - 24*zeta + 16)*q^46 + (8*zeta^4 - 24*zeta^2 +
16*zeta + 24)*q^47 + (16*zeta^4 + 16*zeta^3 - 56*zeta^2 - 40*zeta + 8)*q^48 + 
(-12*zeta^4 - 12*zeta^3 + 24*zeta^2 + 36*zeta - 12)*q^49 + (-16*zeta^4 - 
16*zeta^3 + 32*zeta^2 + 48*zeta - 16)*q^50 + (80*zeta^4 + 80*zeta^3 - 280*zeta^2
- 200*zeta + 40)*q^51 + (-4*zeta^4 + 12*zeta^2 - 8*zeta - 12)*q^52 + (-36*zeta^4
+ 36*zeta^3 + 108*zeta^2 - 108*zeta + 72)*q^53 + (-16*zeta^4 + 80*zeta^2 + 
16*zeta - 96)*q^54 + (24*zeta^4 - 120*zeta^2 - 24*zeta + 144)*q^56 + (-48*zeta^4
+ 48*zeta^3 + 144*zeta^2 - 144*zeta + 96)*q^57 + (36*zeta^4 - 108*zeta^2 + 
72*zeta + 108)*q^58 + (-64*zeta^4 - 64*zeta^3 + 224*zeta^2 + 160*zeta - 32)*q^59
+ (-8*zeta^4 - 8*zeta^3 + 16*zeta^2 + 24*zeta - 8)*q^60 + (24*zeta^4 + 24*zeta^3
- 48*zeta^2 - 72*zeta + 24)*q^61 + (16*zeta^4 + 16*zeta^3 - 56*zeta^2 - 40*zeta 
+ 8)*q^62 + (-8*zeta^4 + 24*zeta^2 - 16*zeta - 24)*q^63 + (-28*zeta^4 + 
28*zeta^3 + 84*zeta^2 - 84*zeta + 56)*q^64 + (4*zeta^4 - 20*zeta^2 - 4*zeta + 
24)*q^65 + (8*zeta^4 - 40*zeta^2 - 8*zeta + 48)*q^67 + (-20*zeta^4 + 20*zeta^3 +
60*zeta^2 - 60*zeta + 40)*q^68 + (16*zeta^4 - 48*zeta^2 + 32*zeta + 48)*q^69 + 
(16*zeta^4 + 16*zeta^3 - 56*zeta^2 - 40*zeta + 8)*q^70 + (48*zeta^4 + 48*zeta^3 
- 96*zeta^2 - 144*zeta + 48)*q^71 + (-12*zeta^4 - 12*zeta^3 + 24*zeta^2 + 
36*zeta - 12)*q^72 + (16*zeta^4 + 16*zeta^3 - 56*zeta^2 - 40*zeta + 8)*q^73 + 
(-12*zeta^4 + 36*zeta^2 - 24*zeta - 36)*q^74 + (32*zeta^4 - 32*zeta^3 - 
96*zeta^2 + 96*zeta - 64)*q^75 + (-24*zeta^4 + 120*zeta^2 + 24*zeta - 144)*q^76 
+ (8*zeta^4 - 40*zeta^2 - 8*zeta + 48)*q^78 + (40*zeta^4 - 40*zeta^3 - 
120*zeta^2 + 120*zeta - 80)*q^79 + (-4*zeta^4 + 12*zeta^2 - 8*zeta - 12)*q^80 + 
(88*zeta^4 + 88*zeta^3 - 308*zeta^2 - 220*zeta + 44)*q^81 + (-20*zeta^4 - 
20*zeta^3 + 40*zeta^2 + 60*zeta - 20)*q^82 + (24*zeta^4 + 24*zeta^3 - 48*zeta^2 
- 72*zeta + 24)*q^83 + (-32*zeta^4 - 32*zeta^3 + 112*zeta^2 + 80*zeta - 16)*q^84
+ (-20*zeta^4 + 60*zeta^2 - 40*zeta - 60)*q^85 + (72*zeta^4 - 360*zeta^2 - 
72*zeta + 432)*q^87 + (-36*zeta^4 + 180*zeta^2 + 36*zeta - 216)*q^89 + 
(-4*zeta^4 + 4*zeta^3 + 12*zeta^2 - 12*zeta + 8)*q^90 + (-8*zeta^4 + 24*zeta^2 -
16*zeta - 24)*q^91 + (16*zeta^4 + 16*zeta^3 - 56*zeta^2 - 40*zeta + 8)*q^92 + 
(-16*zeta^4 - 16*zeta^3 + 32*zeta^2 + 48*zeta - 16)*q^93 + (8*zeta^4 + 8*zeta^3 
- 16*zeta^2 - 24*zeta + 8)*q^94 + (-48*zeta^4 - 48*zeta^3 + 168*zeta^2 + 
120*zeta - 24)*q^95 + (40*zeta^4 - 120*zeta^2 + 80*zeta + 120)*q^96 + (52*zeta^4
- 52*zeta^3 - 156*zeta^2 + 156*zeta - 104)*q^97 + (-12*zeta^4 + 60*zeta^2 + 
12*zeta - 72)*q^98 + (16*zeta^4 - 80*zeta^2 - 16*zeta + 96)*q^100 + (40*zeta^4 -
40*zeta^3 - 120*zeta^2 + 120*zeta - 80)*q^101 + (-40*zeta^4 + 120*zeta^2 - 
80*zeta - 120)*q^102 + (-64*zeta^4 - 64*zeta^3 + 224*zeta^2 + 160*zeta - 
32)*q^103 + (-12*zeta^4 - 12*zeta^3 + 24*zeta^2 + 36*zeta - 12)*q^104 + 
(-16*zeta^4 - 16*zeta^3 + 32*zeta^2 + 48*zeta - 16)*q^105 + (-72*zeta^4 - 
72*zeta^3 + 252*zeta^2 + 180*zeta - 36)*q^106 + (24*zeta^4 - 72*zeta^2 + 48*zeta
+ 72)*q^107 + (-16*zeta^4 + 16*zeta^3 + 48*zeta^2 - 48*zeta + 32)*q^108 + 
(-44*zeta^4 + 220*zeta^2 + 44*zeta - 264)*q^109 + (-24*zeta^4 + 120*zeta^2 + 
24*zeta - 144)*q^111 + (-8*zeta^4 + 8*zeta^3 + 24*zeta^2 - 24*zeta + 16)*q^112 +
(-36*zeta^4 + 108*zeta^2 - 72*zeta - 108)*q^113 + (-96*zeta^4 - 96*zeta^3 + 
336*zeta^2 + 240*zeta - 48)*q^114 + (8*zeta^4 + 8*zeta^3 - 16*zeta^2 - 24*zeta +
8)*q^115 + (-36*zeta^4 - 36*zeta^3 + 72*zeta^2 + 108*zeta - 36)*q^116 + 
(-8*zeta^4 - 8*zeta^3 + 28*zeta^2 + 20*zeta - 4)*q^117 + (32*zeta^4 - 96*zeta^2 
+ 64*zeta + 96)*q^118 + (-40*zeta^4 + 40*zeta^3 + 120*zeta^2 - 120*zeta + 
80)*q^119 + (-24*zeta^4 + 120*zeta^2 + 24*zeta - 144)*q^120 + (24*zeta^4 - 
120*zeta^2 - 24*zeta + 144)*q^122 + (40*zeta^4 - 40*zeta^3 - 120*zeta^2 + 
120*zeta - 80)*q^123 + (8*zeta^4 - 24*zeta^2 + 16*zeta + 24)*q^124 + (72*zeta^4 
+ 72*zeta^3 - 252*zeta^2 - 180*zeta + 36)*q^125 + (-8*zeta^4 - 8*zeta^3 + 
16*zeta^2 + 24*zeta - 8)*q^126 + (-64*zeta^4 - 64*zeta^3 + 128*zeta^2 + 192*zeta
- 64)*q^127 + (24*zeta^4 + 24*zeta^3 - 84*zeta^2 - 60*zeta + 12)*q^128 + 
(-4*zeta^4 + 4*zeta^3 + 12*zeta^2 - 12*zeta + 8)*q^130 + (-48*zeta^4 + 
240*zeta^2 + 48*zeta - 288)*q^133 + (-8*zeta^4 + 8*zeta^3 + 24*zeta^2 - 24*zeta 
+ 16)*q^134 + (-16*zeta^4 + 48*zeta^2 - 32*zeta - 48)*q^135 + (-120*zeta^4 - 
120*zeta^3 + 420*zeta^2 + 300*zeta - 60)*q^136 + (-40*zeta^4 - 40*zeta^3 + 
80*zeta^2 + 120*zeta - 40)*q^137 + (16*zeta^4 + 16*zeta^3 - 32*zeta^2 - 48*zeta 
+ 16)*q^138 + (16*zeta^4 + 16*zeta^3 - 56*zeta^2 - 40*zeta + 8)*q^139 + 
(8*zeta^4 - 24*zeta^2 + 16*zeta + 24)*q^140 + (-16*zeta^4 + 16*zeta^3 + 
48*zeta^2 - 48*zeta + 32)*q^141 + (48*zeta^4 - 240*zeta^2 - 48*zeta + 288)*q^142
+ (-4*zeta^4 + 20*zeta^2 + 4*zeta - 24)*q^144 + (-36*zeta^4 + 36*zeta^3 + 
108*zeta^2 - 108*zeta + 72)*q^145 + (-8*zeta^4 + 24*zeta^2 - 16*zeta - 24)*q^146
+ (48*zeta^4 + 48*zeta^3 - 168*zeta^2 - 120*zeta + 24)*q^147 + (12*zeta^4 + 
12*zeta^3 - 24*zeta^2 - 36*zeta + 12)*q^148 + (68*zeta^4 + 68*zeta^3 - 
136*zeta^2 - 204*zeta + 68)*q^149 + (64*zeta^4 + 64*zeta^3 - 224*zeta^2 - 
160*zeta + 32)*q^150 + (-64*zeta^4 + 192*zeta^2 - 128*zeta - 192)*q^151 + 
(72*zeta^4 - 72*zeta^3 - 216*zeta^2 + 216*zeta - 144)*q^152 + (-20*zeta^4 + 
100*zeta^2 + 20*zeta - 120)*q^153 + (-8*zeta^4 + 40*zeta^2 + 8*zeta - 48)*q^155 
+ (8*zeta^4 - 8*zeta^3 - 24*zeta^2 + 24*zeta - 16)*q^156 + (8*zeta^4 - 24*zeta^2
+ 16*zeta + 24)*q^157 + (80*zeta^4 + 80*zeta^3 - 280*zeta^2 - 200*zeta + 
40)*q^158 + (72*zeta^4 + 72*zeta^3 - 144*zeta^2 - 216*zeta + 72)*q^159 + 
(20*zeta^4 + 20*zeta^3 - 40*zeta^2 - 60*zeta + 20)*q^160 + (32*zeta^4 + 
32*zeta^3 - 112*zeta^2 - 80*zeta + 16)*q^161 + (-44*zeta^4 + 132*zeta^2 - 
88*zeta - 132)*q^162 + (8*zeta^4 - 8*zeta^3 - 24*zeta^2 + 24*zeta - 16)*q^163 + 
(20*zeta^4 - 100*zeta^2 - 20*zeta + 120)*q^164 + (24*zeta^4 - 120*zeta^2 - 
24*zeta + 144)*q^166 + (-48*zeta^4 + 48*zeta^3 + 144*zeta^2 - 144*zeta + 
96)*q^167 + (48*zeta^4 - 144*zeta^2 + 96*zeta + 144)*q^168 + (96*zeta^4 + 
96*zeta^3 - 336*zeta^2 - 240*zeta + 48)*q^169 + (-20*zeta^4 - 20*zeta^3 + 
40*zeta^2 + 60*zeta - 20)*q^170 + (24*zeta^4 + 24*zeta^3 - 48*zeta^2 - 72*zeta +
24)*q^171 + (24*zeta^4 - 72*zeta^2 + 48*zeta + 72)*q^173 + (-72*zeta^4 + 
72*zeta^3 + 216*zeta^2 - 216*zeta + 144)*q^174 + (32*zeta^4 - 160*zeta^2 - 
32*zeta + 192)*q^175 + (64*zeta^4 - 320*zeta^2 - 64*zeta + 384)*q^177 + 
(36*zeta^4 - 36*zeta^3 - 108*zeta^2 + 108*zeta - 72)*q^178 + (96*zeta^4 - 
288*zeta^2 + 192*zeta + 288)*q^179 + (8*zeta^4 + 8*zeta^3 - 28*zeta^2 - 20*zeta 
+ 4)*q^180 + (4*zeta^4 + 4*zeta^3 - 8*zeta^2 - 12*zeta + 4)*q^181 + (-8*zeta^4 -
8*zeta^3 + 16*zeta^2 + 24*zeta - 8)*q^182 + (-96*zeta^4 - 96*zeta^3 + 336*zeta^2
+ 240*zeta - 48)*q^183 + (-24*zeta^4 + 72*zeta^2 - 48*zeta - 72)*q^184 + 
(12*zeta^4 - 12*zeta^3 - 36*zeta^2 + 36*zeta - 24)*q^185 + (-16*zeta^4 + 
80*zeta^2 + 16*zeta - 96)*q^186 + (-8*zeta^4 + 40*zeta^2 + 8*zeta - 48)*q^188 + 
(-32*zeta^4 + 32*zeta^3 + 96*zeta^2 - 96*zeta + 64)*q^189 + (24*zeta^4 - 
72*zeta^2 + 48*zeta + 72)*q^190 + (-64*zeta^4 - 64*zeta^3 + 224*zeta^2 + 
160*zeta - 32)*q^191 + (56*zeta^4 + 56*zeta^3 - 112*zeta^2 - 168*zeta + 
56)*q^192 + (-20*zeta^4 - 20*zeta^3 + 40*zeta^2 + 60*zeta - 20)*q^193 + 
(104*zeta^4 + 104*zeta^3 - 364*zeta^2 - 260*zeta + 52)*q^194 + (8*zeta^4 - 
24*zeta^2 + 16*zeta + 24)*q^195 + (-12*zeta^4 + 12*zeta^3 + 36*zeta^2 - 36*zeta 
+ 24)*q^196 + (-44*zeta^4 + 220*zeta^2 + 44*zeta - 264)*q^197 + (96*zeta^4 - 
480*zeta^2 - 96*zeta + 576)*q^199 + (-48*zeta^4 + 48*zeta^3 + 144*zeta^2 - 
144*zeta + 96)*q^200 + (16*zeta^4 - 48*zeta^2 + 32*zeta + 48)*q^201 + (80*zeta^4
+ 80*zeta^3 - 280*zeta^2 - 200*zeta + 40)*q^202 + (-72*zeta^4 - 72*zeta^3 + 
144*zeta^2 + 216*zeta - 72)*q^203 + (40*zeta^4 + 40*zeta^3 - 80*zeta^2 - 
120*zeta + 40)*q^204 + (40*zeta^4 + 40*zeta^3 - 140*zeta^2 - 100*zeta + 
20)*q^205 + (32*zeta^4 - 96*zeta^2 + 64*zeta + 96)*q^206 + (-8*zeta^4 + 8*zeta^3
+ 24*zeta^2 - 24*zeta + 16)*q^207 + (-4*zeta^4 + 20*zeta^2 + 4*zeta - 24)*q^208 
+ (-16*zeta^4 + 80*zeta^2 + 16*zeta - 96)*q^210 + (-48*zeta^4 + 48*zeta^3 + 
144*zeta^2 - 144*zeta + 96)*q^211 + (-36*zeta^4 + 108*zeta^2 - 72*zeta - 
108)*q^212 + (-192*zeta^4 - 192*zeta^3 + 672*zeta^2 + 480*zeta - 96)*q^213 + 
(24*zeta^4 + 24*zeta^3 - 48*zeta^2 - 72*zeta + 24)*q^214 + (-96*zeta^4 - 
96*zeta^3 + 336*zeta^2 + 240*zeta - 48)*q^216 + (16*zeta^4 - 48*zeta^2 + 32*zeta
+ 48)*q^217 + (44*zeta^4 - 44*zeta^3 - 132*zeta^2 + 132*zeta - 88)*q^218 + 
(-16*zeta^4 + 80*zeta^2 + 16*zeta - 96)*q^219 + (-20*zeta^4 + 100*zeta^2 + 
20*zeta - 120)*q^221 + (24*zeta^4 - 24*zeta^3 - 72*zeta^2 + 72*zeta - 48)*q^222 
+ (-80*zeta^4 + 240*zeta^2 - 160*zeta - 240)*q^223 + (80*zeta^4 + 80*zeta^3 - 
280*zeta^2 - 200*zeta + 40)*q^224 + (-16*zeta^4 - 16*zeta^3 + 32*zeta^2 + 
48*zeta - 16)*q^225 + (-36*zeta^4 - 36*zeta^3 + 72*zeta^2 + 108*zeta - 36)*q^226
+ (192*zeta^4 + 192*zeta^3 - 672*zeta^2 - 480*zeta + 96)*q^227 + (-48*zeta^4 + 
144*zeta^2 - 96*zeta - 144)*q^228 + (-36*zeta^4 + 36*zeta^3 + 108*zeta^2 - 
108*zeta + 72)*q^229 + (8*zeta^4 - 40*zeta^2 - 8*zeta + 48)*q^230 + (-108*zeta^4
+ 540*zeta^2 + 108*zeta - 648)*q^232 + (84*zeta^4 - 84*zeta^3 - 252*zeta^2 + 
252*zeta - 168)*q^233 + (4*zeta^4 - 12*zeta^2 + 8*zeta + 12)*q^234 + (-16*zeta^4
- 16*zeta^3 + 56*zeta^2 + 40*zeta - 8)*q^235 + (-32*zeta^4 - 32*zeta^3 + 
64*zeta^2 + 96*zeta - 32)*q^236 + (-80*zeta^4 - 80*zeta^3 + 160*zeta^2 + 
240*zeta - 80)*q^237 + (-80*zeta^4 - 80*zeta^3 + 280*zeta^2 + 200*zeta - 
40)*q^238 + (24*zeta^4 - 72*zeta^2 + 48*zeta + 72)*q^239 + (8*zeta^4 - 8*zeta^3 
- 24*zeta^2 + 24*zeta - 16)*q^240 + (88*zeta^4 - 440*zeta^2 - 88*zeta + 
528)*q^241 + (-40*zeta^4 + 200*zeta^2 + 40*zeta - 240)*q^243 + (24*zeta^4 - 
24*zeta^3 - 72*zeta^2 + 72*zeta - 48)*q^244 + (-12*zeta^4 + 36*zeta^2 - 24*zeta 
- 36)*q^245 + (80*zeta^4 + 80*zeta^3 - 280*zeta^2 - 200*zeta + 40)*q^246 + 
(24*zeta^4 + 24*zeta^3 - 48*zeta^2 - 72*zeta + 24)*q^247 + (24*zeta^4 + 
24*zeta^3 - 48*zeta^2 - 72*zeta + 24)*q^248 + (-96*zeta^4 - 96*zeta^3 + 
336*zeta^2 + 240*zeta - 48)*q^249 + (-36*zeta^4 + 108*zeta^2 - 72*zeta - 
108)*q^250 + (8*zeta^4 - 8*zeta^3 - 24*zeta^2 + 24*zeta - 16)*q^251 + (8*zeta^4 
- 40*zeta^2 - 8*zeta + 48)*q^252 + (-64*zeta^4 + 320*zeta^2 + 64*zeta - 
384)*q^254 + (40*zeta^4 - 40*zeta^3 - 120*zeta^2 + 120*zeta - 80)*q^255 + 
(-68*zeta^4 + 204*zeta^2 - 136*zeta - 204)*q^256 + (-152*zeta^4 - 152*zeta^3 + 
532*zeta^2 + 380*zeta - 76)*q^257 + (24*zeta^4 + 24*zeta^3 - 48*zeta^2 - 72*zeta
+ 24)*q^259 + (8*zeta^4 + 8*zeta^3 - 28*zeta^2 - 20*zeta + 4)*q^260 + (36*zeta^4
- 108*zeta^2 + 72*zeta + 108)*q^261 + (-88*zeta^4 + 440*zeta^2 + 88*zeta - 
528)*q^263 + (36*zeta^4 - 180*zeta^2 - 36*zeta + 216)*q^265 + (48*zeta^4 - 
48*zeta^3 - 144*zeta^2 + 144*zeta - 96)*q^266 + (-72*zeta^4 + 216*zeta^2 - 
144*zeta - 216)*q^267 + (16*zeta^4 + 16*zeta^3 - 56*zeta^2 - 40*zeta + 8)*q^268 
+ (4*zeta^4 + 4*zeta^3 - 8*zeta^2 - 12*zeta + 4)*q^269 + (-16*zeta^4 - 16*zeta^3
+ 32*zeta^2 + 48*zeta - 16)*q^270 + (-160*zeta^4 - 160*zeta^3 + 560*zeta^2 + 
400*zeta - 80)*q^271 + (20*zeta^4 - 60*zeta^2 + 40*zeta + 60)*q^272 + (16*zeta^4
- 16*zeta^3 - 48*zeta^2 + 48*zeta - 32)*q^273 + (-40*zeta^4 + 200*zeta^2 + 
40*zeta - 240)*q^274 + (-16*zeta^4 + 80*zeta^2 + 16*zeta - 96)*q^276 + 
(-4*zeta^4 + 4*zeta^3 + 12*zeta^2 - 12*zeta + 8)*q^277 + (-8*zeta^4 + 24*zeta^2 
- 16*zeta - 24)*q^278 + (16*zeta^4 + 16*zeta^3 - 56*zeta^2 - 40*zeta + 8)*q^279 
+ (24*zeta^4 + 24*zeta^3 - 48*zeta^2 - 72*zeta + 24)*q^280 + (24*zeta^4 + 
24*zeta^3 - 48*zeta^2 - 72*zeta + 24)*q^281 + (-32*zeta^4 - 32*zeta^3 + 
112*zeta^2 + 80*zeta - 16)*q^282 + (112*zeta^4 - 336*zeta^2 + 224*zeta + 
336)*q^283 + (48*zeta^4 - 48*zeta^3 - 144*zeta^2 + 144*zeta - 96)*q^284 + 
(48*zeta^4 - 240*zeta^2 - 48*zeta + 288)*q^285 + (40*zeta^4 - 200*zeta^2 - 
40*zeta + 240)*q^287 + (-20*zeta^4 + 20*zeta^3 + 60*zeta^2 - 60*zeta + 40)*q^288
+ (32*zeta^4 - 96*zeta^2 + 64*zeta + 96)*q^289 + (-72*zeta^4 - 72*zeta^3 + 
252*zeta^2 + 180*zeta - 36)*q^290 + (-104*zeta^4 - 104*zeta^3 + 208*zeta^2 + 
312*zeta - 104)*q^291 + (8*zeta^4 + 8*zeta^3 - 16*zeta^2 - 24*zeta + 8)*q^292 + 
(-72*zeta^4 - 72*zeta^3 + 252*zeta^2 + 180*zeta - 36)*q^293 + (-24*zeta^4 + 
72*zeta^2 - 48*zeta - 72)*q^294 + (-32*zeta^4 + 32*zeta^3 + 96*zeta^2 - 96*zeta 
+ 64)*q^295 + (36*zeta^4 - 180*zeta^2 - 36*zeta + 216)*q^296 + (68*zeta^4 - 
340*zeta^2 - 68*zeta + 408)*q^298 + (-8*zeta^4 + 8*zeta^3 + 24*zeta^2 - 24*zeta 
+ 16)*q^299 + (32*zeta^4 - 96*zeta^2 + 64*zeta + 96)*q^300 + (-64*zeta^4 - 
64*zeta^3 + 128*zeta^2 + 192*zeta - 64)*q^302 + (-80*zeta^4 - 80*zeta^3 + 
160*zeta^2 + 240*zeta - 80)*q^303 + (48*zeta^4 + 48*zeta^3 - 168*zeta^2 - 
120*zeta + 24)*q^304 + (24*zeta^4 - 72*zeta^2 + 48*zeta + 72)*q^305 + (20*zeta^4
- 20*zeta^3 - 60*zeta^2 + 60*zeta - 40)*q^306 + (-88*zeta^4 + 440*zeta^2 + 
88*zeta - 528)*q^307 + (64*zeta^4 - 320*zeta^2 - 64*zeta + 384)*q^309 + 
(8*zeta^4 - 8*zeta^3 - 24*zeta^2 + 24*zeta - 16)*q^310 + (96*zeta^4 - 288*zeta^2
+ 192*zeta + 288)*q^311 + (48*zeta^4 + 48*zeta^3 - 168*zeta^2 - 120*zeta + 
24)*q^312 + (92*zeta^4 + 92*zeta^3 - 184*zeta^2 - 276*zeta + 92)*q^313 + 
(8*zeta^4 + 8*zeta^3 - 16*zeta^2 - 24*zeta + 8)*q^314 + (16*zeta^4 + 16*zeta^3 -
56*zeta^2 - 40*zeta + 8)*q^315 + (40*zeta^4 - 120*zeta^2 + 80*zeta + 120)*q^316 
+ (8*zeta^4 - 8*zeta^3 - 24*zeta^2 + 24*zeta - 16)*q^317 + (72*zeta^4 - 
360*zeta^2 - 72*zeta + 432)*q^318 + (28*zeta^4 - 140*zeta^2 - 28*zeta + 
168)*q^320 + (-48*zeta^4 + 48*zeta^3 + 144*zeta^2 - 144*zeta + 96)*q^321 + 
(-16*zeta^4 + 48*zeta^2 - 32*zeta - 48)*q^322 + (240*zeta^4 + 240*zeta^3 - 
840*zeta^2 - 600*zeta + 120)*q^323 + (44*zeta^4 + 44*zeta^3 - 88*zeta^2 - 
132*zeta + 44)*q^324 + (-16*zeta^4 - 16*zeta^3 + 32*zeta^2 + 48*zeta - 16)*q^325
+ (16*zeta^4 + 16*zeta^3 - 56*zeta^2 - 40*zeta + 8)*q^326 + (-88*zeta^4 + 
264*zeta^2 - 176*zeta - 264)*q^327 + (-60*zeta^4 + 60*zeta^3 + 180*zeta^2 - 
180*zeta + 120)*q^328 + (-16*zeta^4 + 80*zeta^2 + 16*zeta - 96)*q^329 + 
(-80*zeta^4 + 400*zeta^2 + 80*zeta - 480)*q^331 + (24*zeta^4 - 24*zeta^3 - 
72*zeta^2 + 72*zeta - 48)*q^332 + (-12*zeta^4 + 36*zeta^2 - 24*zeta - 36)*q^333 
+ (-96*zeta^4 - 96*zeta^3 + 336*zeta^2 + 240*zeta - 48)*q^334 + (8*zeta^4 + 
8*zeta^3 - 16*zeta^2 - 24*zeta + 8)*q^335 + (16*zeta^4 + 16*zeta^3 - 32*zeta^2 -
48*zeta + 16)*q^336 + (104*zeta^4 + 104*zeta^3 - 364*zeta^2 - 260*zeta + 
52)*q^337 + (-48*zeta^4 + 144*zeta^2 - 96*zeta - 144)*q^338 + (72*zeta^4 - 
72*zeta^3 - 216*zeta^2 + 216*zeta - 144)*q^339 + (20*zeta^4 - 100*zeta^2 - 
20*zeta + 120)*q^340 + (24*zeta^4 - 120*zeta^2 - 24*zeta + 144)*q^342 + 
(-80*zeta^4 + 80*zeta^3 + 240*zeta^2 - 240*zeta + 160)*q^343 + (-32*zeta^4 - 
32*zeta^3 + 112*zeta^2 + 80*zeta - 16)*q^345 + (24*zeta^4 + 24*zeta^3 - 
48*zeta^2 - 72*zeta + 24)*q^346 + (112*zeta^4 + 112*zeta^3 - 224*zeta^2 - 
336*zeta + 112)*q^347 + (144*zeta^4 + 144*zeta^3 - 504*zeta^2 - 360*zeta + 
72)*q^348 + (-108*zeta^4 + 324*zeta^2 - 216*zeta - 324)*q^349 + (-32*zeta^4 + 
32*zeta^3 + 96*zeta^2 - 96*zeta + 64)*q^350 + (-16*zeta^4 + 80*zeta^2 + 16*zeta 
- 96)*q^351 + (-36*zeta^4 + 180*zeta^2 + 36*zeta - 216)*q^353 + (-64*zeta^4 + 
64*zeta^3 + 192*zeta^2 - 192*zeta + 128)*q^354 + (48*zeta^4 - 144*zeta^2 + 
96*zeta + 144)*q^355 + (-72*zeta^4 - 72*zeta^3 + 252*zeta^2 + 180*zeta - 
36)*q^356 + (80*zeta^4 + 80*zeta^3 - 160*zeta^2 - 240*zeta + 80)*q^357 + 
(96*zeta^4 + 96*zeta^3 - 192*zeta^2 - 288*zeta + 96)*q^358 + (16*zeta^4 + 
16*zeta^3 - 56*zeta^2 - 40*zeta + 8)*q^359 + (-12*zeta^4 + 36*zeta^2 - 24*zeta -
36)*q^360 + (-68*zeta^4 + 68*zeta^3 + 204*zeta^2 - 204*zeta + 136)*q^361 + 
(4*zeta^4 - 20*zeta^2 - 4*zeta + 24)*q^362 + (8*zeta^4 - 40*zeta^2 - 8*zeta + 
48)*q^364 + (8*zeta^4 - 8*zeta^3 - 24*zeta^2 + 24*zeta - 16)*q^365 + (48*zeta^4 
- 144*zeta^2 + 96*zeta + 144)*q^366 + (112*zeta^4 + 112*zeta^3 - 392*zeta^2 - 
280*zeta + 56)*q^367 + (-8*zeta^4 - 8*zeta^3 + 16*zeta^2 + 24*zeta - 8)*q^368 + 
(-20*zeta^4 - 20*zeta^3 + 40*zeta^2 + 60*zeta - 20)*q^369 + (24*zeta^4 + 
24*zeta^3 - 84*zeta^2 - 60*zeta + 12)*q^370 + (-72*zeta^4 + 216*zeta^2 - 
144*zeta - 216)*q^371 + (-16*zeta^4 + 16*zeta^3 + 48*zeta^2 - 48*zeta + 
32)*q^372 + (88*zeta^4 - 440*zeta^2 - 88*zeta + 528)*q^373 + (-72*zeta^4 + 
360*zeta^2 + 72*zeta - 432)*q^375 + (24*zeta^4 - 24*zeta^3 - 72*zeta^2 + 72*zeta
- 48)*q^376 + (36*zeta^4 - 108*zeta^2 + 72*zeta + 108)*q^377 + (-64*zeta^4 - 
64*zeta^3 + 224*zeta^2 + 160*zeta - 32)*q^378 + (-128*zeta^4 - 128*zeta^3 + 
256*zeta^2 + 384*zeta - 128)*q^379 + (-24*zeta^4 - 24*zeta^3 + 48*zeta^2 + 
72*zeta - 24)*q^380 + (256*zeta^4 + 256*zeta^3 - 896*zeta^2 - 640*zeta + 
128)*q^381 + (32*zeta^4 - 96*zeta^2 + 64*zeta + 96)*q^382 + (-80*zeta^4 + 
80*zeta^3 + 240*zeta^2 - 240*zeta + 160)*q^383 + (-24*zeta^4 + 120*zeta^2 + 
24*zeta - 144)*q^384 + (-20*zeta^4 + 100*zeta^2 + 20*zeta - 120)*q^386 + 
(52*zeta^4 - 156*zeta^2 + 104*zeta + 156)*q^388 + (24*zeta^4 + 24*zeta^3 - 
84*zeta^2 - 60*zeta + 12)*q^389 + (8*zeta^4 + 8*zeta^3 - 16*zeta^2 - 24*zeta + 
8)*q^390 + (-40*zeta^4 - 40*zeta^3 + 80*zeta^2 + 120*zeta - 40)*q^391 + 
(-72*zeta^4 - 72*zeta^3 + 252*zeta^2 + 180*zeta - 36)*q^392 + (44*zeta^4 - 
44*zeta^3 - 132*zeta^2 + 132*zeta - 88)*q^394 + (-40*zeta^4 + 200*zeta^2 + 
40*zeta - 240)*q^395 + (52*zeta^4 - 260*zeta^2 - 52*zeta + 312)*q^397 + 
(-96*zeta^4 + 96*zeta^3 + 288*zeta^2 - 288*zeta + 192)*q^398 + (-96*zeta^4 + 
288*zeta^2 - 192*zeta - 288)*q^399 + (-32*zeta^4 - 32*zeta^3 + 112*zeta^2 + 
80*zeta - 16)*q^400 + (92*zeta^4 + 92*zeta^3 - 184*zeta^2 - 276*zeta + 92)*q^401
+ (16*zeta^4 + 16*zeta^3 - 32*zeta^2 - 48*zeta + 16)*q^402 + (16*zeta^4 + 
16*zeta^3 - 56*zeta^2 - 40*zeta + 8)*q^403 + (40*zeta^4 - 120*zeta^2 + 80*zeta +
120)*q^404 + (44*zeta^4 - 44*zeta^3 - 132*zeta^2 + 132*zeta - 88)*q^405 + 
(-72*zeta^4 + 360*zeta^2 + 72*zeta - 432)*q^406 + (120*zeta^4 - 600*zeta^2 - 
120*zeta + 720)*q^408 + (84*zeta^4 - 84*zeta^3 - 252*zeta^2 + 252*zeta - 
168)*q^409 + (-20*zeta^4 + 60*zeta^2 - 40*zeta - 60)*q^410 + (160*zeta^4 + 
160*zeta^3 - 560*zeta^2 - 400*zeta + 80)*q^411 + (-32*zeta^4 - 32*zeta^3 + 
64*zeta^2 + 96*zeta - 32)*q^412 + (-64*zeta^4 - 64*zeta^3 + 128*zeta^2 + 
192*zeta - 64)*q^413 + (-16*zeta^4 - 16*zeta^3 + 56*zeta^2 + 40*zeta - 8)*q^414 
+ (24*zeta^4 - 72*zeta^2 + 48*zeta + 72)*q^415 + (-20*zeta^4 + 20*zeta^3 + 
60*zeta^2 - 60*zeta + 40)*q^416 + (-16*zeta^4 + 80*zeta^2 + 16*zeta - 96)*q^417 
+ (8*zeta^4 - 40*zeta^2 - 8*zeta + 48)*q^419 + (-16*zeta^4 + 16*zeta^3 + 
48*zeta^2 - 48*zeta + 32)*q^420 + (52*zeta^4 - 156*zeta^2 + 104*zeta + 
156)*q^421 + (-96*zeta^4 - 96*zeta^3 + 336*zeta^2 + 240*zeta - 48)*q^422 + 
(8*zeta^4 + 8*zeta^3 - 16*zeta^2 - 24*zeta + 8)*q^423 + (-108*zeta^4 - 
108*zeta^3 + 216*zeta^2 + 324*zeta - 108)*q^424 + (-160*zeta^4 - 160*zeta^3 + 
560*zeta^2 + 400*zeta - 80)*q^425 + (96*zeta^4 - 288*zeta^2 + 192*zeta + 
288)*q^426 + (48*zeta^4 - 48*zeta^3 - 144*zeta^2 + 144*zeta - 96)*q^427 + 
(-24*zeta^4 + 120*zeta^2 + 24*zeta - 144)*q^428 + (-48*zeta^4 + 48*zeta^3 + 
144*zeta^2 - 144*zeta + 96)*q^431 + (16*zeta^4 - 48*zeta^2 + 32*zeta + 48)*q^432
+ (-152*zeta^4 - 152*zeta^3 + 532*zeta^2 + 380*zeta - 76)*q^433 + (16*zeta^4 + 
16*zeta^3 - 32*zeta^2 - 48*zeta + 16)*q^434 + (72*zeta^4 + 72*zeta^3 - 
144*zeta^2 - 216*zeta + 72)*q^435 + (-88*zeta^4 - 88*zeta^3 + 308*zeta^2 + 
220*zeta - 44)*q^436 + (48*zeta^4 - 144*zeta^2 + 96*zeta + 144)*q^437 + 
(16*zeta^4 - 16*zeta^3 - 48*zeta^2 + 48*zeta - 32)*q^438 + (88*zeta^4 - 
440*zeta^2 - 88*zeta + 528)*q^439 + (-12*zeta^4 + 60*zeta^2 + 12*zeta - 
72)*q^441 + (20*zeta^4 - 20*zeta^3 - 60*zeta^2 + 60*zeta - 40)*q^442 + 
(-80*zeta^4 + 240*zeta^2 - 160*zeta - 240)*q^443 + (-48*zeta^4 - 48*zeta^3 + 
168*zeta^2 + 120*zeta - 24)*q^444 + (-36*zeta^4 - 36*zeta^3 + 72*zeta^2 + 
108*zeta - 36)*q^445 + (-80*zeta^4 - 80*zeta^3 + 160*zeta^2 + 240*zeta - 
80)*q^446 + (-272*zeta^4 - 272*zeta^3 + 952*zeta^2 + 680*zeta - 136)*q^447 + 
(-56*zeta^4 + 168*zeta^2 - 112*zeta - 168)*q^448 + (52*zeta^4 - 52*zeta^3 - 
156*zeta^2 + 156*zeta - 104)*q^449 + (-16*zeta^4 + 80*zeta^2 + 16*zeta - 
96)*q^450 + (36*zeta^4 - 180*zeta^2 - 36*zeta + 216)*q^452 + (128*zeta^4 - 
128*zeta^3 - 384*zeta^2 + 384*zeta - 256)*q^453 + (-96*zeta^4 + 288*zeta^2 - 
192*zeta - 288)*q^454 + (16*zeta^4 + 16*zeta^3 - 56*zeta^2 - 40*zeta + 8)*q^455 
+ (-144*zeta^4 - 144*zeta^3 + 288*zeta^2 + 432*zeta - 144)*q^456 + (156*zeta^4 +
156*zeta^3 - 312*zeta^2 - 468*zeta + 156)*q^457 + (-72*zeta^4 - 72*zeta^3 + 
252*zeta^2 + 180*zeta - 36)*q^458 + (80*zeta^4 - 240*zeta^2 + 160*zeta + 
240)*q^459 + (8*zeta^4 - 8*zeta^3 - 24*zeta^2 + 24*zeta - 16)*q^460 + 
(132*zeta^4 - 660*zeta^2 - 132*zeta + 792)*q^461 + (-80*zeta^4 + 400*zeta^2 + 
80*zeta - 480)*q^463 + (36*zeta^4 - 36*zeta^3 - 108*zeta^2 + 108*zeta - 
72)*q^464 + (-16*zeta^4 + 48*zeta^2 - 32*zeta - 48)*q^465 + (168*zeta^4 + 
168*zeta^3 - 588*zeta^2 - 420*zeta + 84)*q^466 + (48*zeta^4 + 48*zeta^3 - 
96*zeta^2 - 144*zeta + 48)*q^467 + (-4*zeta^4 - 4*zeta^3 + 8*zeta^2 + 12*zeta - 
4)*q^468 + (32*zeta^4 + 32*zeta^3 - 112*zeta^2 - 80*zeta + 16)*q^469 + (8*zeta^4
- 24*zeta^2 + 16*zeta + 24)*q^470 + (-16*zeta^4 + 16*zeta^3 + 48*zeta^2 - 
48*zeta + 32)*q^471 + (-96*zeta^4 + 480*zeta^2 + 96*zeta - 576)*q^472 + 
(-80*zeta^4 + 400*zeta^2 + 80*zeta - 480)*q^474 + (96*zeta^4 - 96*zeta^3 - 
288*zeta^2 + 288*zeta - 192)*q^475 + (-40*zeta^4 + 120*zeta^2 - 80*zeta - 
120)*q^476 + (-72*zeta^4 - 72*zeta^3 + 252*zeta^2 + 180*zeta - 36)*q^477 + 
(24*zeta^4 + 24*zeta^3 - 48*zeta^2 - 72*zeta + 24)*q^478 + (-64*zeta^4 - 
64*zeta^3 + 128*zeta^2 + 192*zeta - 64)*q^479 + (-80*zeta^4 - 80*zeta^3 + 
280*zeta^2 + 200*zeta - 40)*q^480 + (-12*zeta^4 + 36*zeta^2 - 24*zeta - 
36)*q^481 + (-88*zeta^4 + 88*zeta^3 + 264*zeta^2 - 264*zeta + 176)*q^482 + 
(-32*zeta^4 + 160*zeta^2 + 32*zeta - 192)*q^483 + (-52*zeta^4 + 260*zeta^2 + 
52*zeta - 312)*q^485 + (40*zeta^4 - 40*zeta^3 - 120*zeta^2 + 120*zeta - 
80)*q^486 + (8*zeta^4 - 24*zeta^2 + 16*zeta + 24)*q^487 + (144*zeta^4 + 
144*zeta^3 - 504*zeta^2 - 360*zeta + 72)*q^488 + (-16*zeta^4 - 16*zeta^3 + 
32*zeta^2 + 48*zeta - 16)*q^489 + (-12*zeta^4 - 12*zeta^3 + 24*zeta^2 + 36*zeta 
- 12)*q^490 + (16*zeta^4 + 16*zeta^3 - 56*zeta^2 - 40*zeta + 8)*q^491 + 
(40*zeta^4 - 120*zeta^2 + 80*zeta + 120)*q^492 + (180*zeta^4 - 180*zeta^3 - 
540*zeta^2 + 540*zeta - 360)*q^493 + (24*zeta^4 - 120*zeta^2 - 24*zeta + 
144)*q^494 + (8*zeta^4 - 40*zeta^2 - 8*zeta + 48)*q^496 + (96*zeta^4 - 96*zeta^3
- 288*zeta^2 + 288*zeta - 192)*q^497 + (48*zeta^4 - 144*zeta^2 + 96*zeta + 
144)*q^498 + (-64*zeta^4 - 64*zeta^3 + 224*zeta^2 + 160*zeta - 32)*q^499 + 
(36*zeta^4 + 36*zeta^3 - 72*zeta^2 - 108*zeta + 36)*q^500 + (96*zeta^4 + 
96*zeta^3 - 192*zeta^2 - 288*zeta + 96)*q^501 + (16*zeta^4 + 16*zeta^3 - 
56*zeta^2 - 40*zeta + 8)*q^502 + (-152*zeta^4 + 456*zeta^2 - 304*zeta - 
456)*q^503 + (-24*zeta^4 + 24*zeta^3 + 72*zeta^2 - 72*zeta + 48)*q^504 + 
(-40*zeta^4 + 200*zeta^2 + 40*zeta - 240)*q^505 + (-96*zeta^4 + 480*zeta^2 + 
96*zeta - 576)*q^507 + (-64*zeta^4 + 64*zeta^3 + 192*zeta^2 - 192*zeta + 
128)*q^508 + (-168*zeta^4 + 504*zeta^2 - 336*zeta - 504)*q^509 + (80*zeta^4 + 
80*zeta^3 - 280*zeta^2 - 200*zeta + 40)*q^510 + (16*zeta^4 + 16*zeta^3 - 
32*zeta^2 - 48*zeta + 16)*q^511 + (-44*zeta^4 - 44*zeta^3 + 88*zeta^2 + 132*zeta
- 44)*q^512 + (192*zeta^4 + 192*zeta^3 - 672*zeta^2 - 480*zeta + 96)*q^513 + 
(76*zeta^4 - 228*zeta^2 + 152*zeta + 228)*q^514 + (-32*zeta^4 + 32*zeta^3 + 
96*zeta^2 - 96*zeta + 64)*q^515 + (24*zeta^4 - 120*zeta^2 - 24*zeta + 144)*q^518
+ (-48*zeta^4 + 48*zeta^3 + 144*zeta^2 - 144*zeta + 96)*q^519 + (-12*zeta^4 + 
36*zeta^2 - 24*zeta - 36)*q^520 + (-240*zeta^4 - 240*zeta^3 + 840*zeta^2 + 
600*zeta - 120)*q^521 + (36*zeta^4 + 36*zeta^3 - 72*zeta^2 - 108*zeta + 
36)*q^522 + (-64*zeta^4 - 64*zeta^3 + 128*zeta^2 + 192*zeta - 64)*q^523 + 
(64*zeta^4 - 192*zeta^2 + 128*zeta + 192)*q^525 + (88*zeta^4 - 88*zeta^3 - 
264*zeta^2 + 264*zeta - 176)*q^526 + (40*zeta^4 - 200*zeta^2 - 40*zeta + 
240)*q^527 + (-76*zeta^4 + 380*zeta^2 + 76*zeta - 456)*q^529 + (-36*zeta^4 + 
36*zeta^3 + 108*zeta^2 - 108*zeta + 72)*q^530 + (32*zeta^4 - 96*zeta^2 + 64*zeta
+ 96)*q^531 + (-96*zeta^4 - 96*zeta^3 + 336*zeta^2 + 240*zeta - 48)*q^532 + 
(-20*zeta^4 - 20*zeta^3 + 40*zeta^2 + 60*zeta - 20)*q^533 + (-72*zeta^4 - 
72*zeta^3 + 144*zeta^2 + 216*zeta - 72)*q^534 + (-48*zeta^4 - 48*zeta^3 + 
168*zeta^2 + 120*zeta - 24)*q^535 + (-24*zeta^4 + 72*zeta^2 - 48*zeta - 
72)*q^536 + (-192*zeta^4 + 192*zeta^3 + 576*zeta^2 - 576*zeta + 384)*q^537 + 
(4*zeta^4 - 20*zeta^2 - 4*zeta + 24)*q^538 + (16*zeta^4 - 80*zeta^2 - 16*zeta + 
96)*q^540 + (-136*zeta^4 + 136*zeta^3 + 408*zeta^2 - 408*zeta + 272)*q^541 + 
(80*zeta^4 - 240*zeta^2 + 160*zeta + 240)*q^542 + (-16*zeta^4 - 16*zeta^3 + 
56*zeta^2 + 40*zeta - 8)*q^543 + (-100*zeta^4 - 100*zeta^3 + 200*zeta^2 + 
300*zeta - 100)*q^544 + (-44*zeta^4 - 44*zeta^3 + 88*zeta^2 + 132*zeta - 
44)*q^545 + (32*zeta^4 + 32*zeta^3 - 112*zeta^2 - 80*zeta + 16)*q^546 + 
(-64*zeta^4 + 192*zeta^2 - 128*zeta - 192)*q^547 + (-40*zeta^4 + 40*zeta^3 + 
120*zeta^2 - 120*zeta + 80)*q^548 + (24*zeta^4 - 120*zeta^2 - 24*zeta + 
144)*q^549 + (216*zeta^4 - 1080*zeta^2 - 216*zeta + 1296)*q^551 + (48*zeta^4 - 
48*zeta^3 - 144*zeta^2 + 144*zeta - 96)*q^552 + (80*zeta^4 - 240*zeta^2 + 
160*zeta + 240)*q^553 + (-8*zeta^4 - 8*zeta^3 + 28*zeta^2 + 20*zeta - 4)*q^554 +
(-24*zeta^4 - 24*zeta^3 + 48*zeta^2 + 72*zeta - 24)*q^555 + (8*zeta^4 + 8*zeta^3
- 16*zeta^2 - 24*zeta + 8)*q^556 + (16*zeta^4 + 16*zeta^3 - 56*zeta^2 - 40*zeta 
+ 8)*q^557 + (-8*zeta^4 + 24*zeta^2 - 16*zeta - 24)*q^558 + (8*zeta^4 - 
40*zeta^2 - 8*zeta + 48)*q^560 + (24*zeta^4 - 120*zeta^2 - 24*zeta + 144)*q^562 
+ (-136*zeta^4 + 136*zeta^3 + 408*zeta^2 - 408*zeta + 272)*q^563 + (-16*zeta^4 +
48*zeta^2 - 32*zeta - 48)*q^564 + (72*zeta^4 + 72*zeta^3 - 252*zeta^2 - 180*zeta
+ 36)*q^565 + (112*zeta^4 + 112*zeta^3 - 224*zeta^2 - 336*zeta + 112)*q^566 + 
(88*zeta^4 + 88*zeta^3 - 176*zeta^2 - 264*zeta + 88)*q^567 + (288*zeta^4 + 
288*zeta^3 - 1008*zeta^2 - 720*zeta + 144)*q^568 + (24*zeta^4 - 72*zeta^2 + 
48*zeta + 72)*q^569 + (-48*zeta^4 + 48*zeta^3 + 144*zeta^2 - 144*zeta + 
96)*q^570 + (-88*zeta^4 + 440*zeta^2 + 88*zeta - 528)*q^571 + (64*zeta^4 - 
320*zeta^2 - 64*zeta + 384)*q^573 + (-40*zeta^4 + 40*zeta^3 + 120*zeta^2 - 
120*zeta + 80)*q^574 + (-32*zeta^4 + 96*zeta^2 - 64*zeta - 96)*q^575 + 
(-56*zeta^4 - 56*zeta^3 + 196*zeta^2 + 140*zeta - 28)*q^576 + (-84*zeta^4 - 
84*zeta^3 + 168*zeta^2 + 252*zeta - 84)*q^577 + (32*zeta^4 + 32*zeta^3 - 
64*zeta^2 - 96*zeta + 32)*q^578 + (80*zeta^4 + 80*zeta^3 - 280*zeta^2 - 200*zeta
+ 40)*q^579 + (-36*zeta^4 + 108*zeta^2 - 72*zeta - 108)*q^580 + (48*zeta^4 - 
48*zeta^3 - 144*zeta^2 + 144*zeta - 96)*q^581 + (-104*zeta^4 + 520*zeta^2 + 
104*zeta - 624)*q^582 + (24*zeta^4 - 120*zeta^2 - 24*zeta + 144)*q^584 + 
(-4*zeta^4 + 4*zeta^3 + 12*zeta^2 - 12*zeta + 8)*q^585 + (36*zeta^4 - 108*zeta^2
+ 72*zeta + 108)*q^586 + (112*zeta^4 + 112*zeta^3 - 392*zeta^2 - 280*zeta + 
56)*q^587 + (24*zeta^4 + 24*zeta^3 - 48*zeta^2 - 72*zeta + 24)*q^588 + 
(-48*zeta^4 - 48*zeta^3 + 96*zeta^2 + 144*zeta - 48)*q^589 + (-64*zeta^4 - 
64*zeta^3 + 224*zeta^2 + 160*zeta - 32)*q^590 + (-88*zeta^4 + 264*zeta^2 - 
176*zeta - 264)*q^591 + (-12*zeta^4 + 12*zeta^3 + 36*zeta^2 - 36*zeta + 
24)*q^592 + (44*zeta^4 - 220*zeta^2 - 44*zeta + 264)*q^593 + (40*zeta^4 - 
200*zeta^2 - 40*zeta + 240)*q^595 + (68*zeta^4 - 68*zeta^3 - 204*zeta^2 + 
204*zeta - 136)*q^596 + (192*zeta^4 - 576*zeta^2 + 384*zeta + 576)*q^597 + 
(-16*zeta^4 - 16*zeta^3 + 56*zeta^2 + 40*zeta - 8)*q^598 + (136*zeta^4 + 
136*zeta^3 - 272*zeta^2 - 408*zeta + 136)*q^599 + (96*zeta^4 + 96*zeta^3 - 
192*zeta^2 - 288*zeta + 96)*q^600 + (104*zeta^4 + 104*zeta^3 - 364*zeta^2 - 
260*zeta + 52)*q^601 + (-8*zeta^4 + 8*zeta^3 + 24*zeta^2 - 24*zeta + 16)*q^603 +
(64*zeta^4 - 320*zeta^2 - 64*zeta + 384)*q^604 + O(q^605), (-6*zeta^4 + 
12*zeta^2 + 12*zeta + 24)*q + (-24*zeta^4 - 12*zeta^3 + 120*zeta^2 + 36*zeta - 
72)*q^2 + (-12*zeta^4 - 24*zeta^3 + 36*zeta^2 + 66*zeta - 24)*q^3 + (36*zeta^4 -
12*zeta^3 - 132*zeta^2 + 48*zeta + 84)*q^4 + (-12*zeta^4 - 12*zeta^3 + 30*zeta^2
+ 12*zeta + 12)*q^5 + (24*zeta^4 + 24*zeta^3 - 60*zeta^2 - 24*zeta - 24)*q^6 + 
(36*zeta^4 - 12*zeta^3 - 132*zeta^2 + 48*zeta + 84)*q^7 + (24*zeta^4 + 12*zeta^3
- 120*zeta^2 - 36*zeta + 72)*q^9 + (-12*zeta^4 + 24*zeta^2 + 24*zeta + 48)*q^10 
+ (12*zeta^4 - 24*zeta^2 - 24*zeta - 48)*q^12 + (48*zeta^4 + 24*zeta^3 - 
240*zeta^2 - 72*zeta + 144)*q^13 + (48*zeta^4 + 96*zeta^3 - 144*zeta^2 - 
264*zeta + 96)*q^14 + (-18*zeta^4 + 6*zeta^3 + 66*zeta^2 - 24*zeta - 42)*q^15 + 
(48*zeta^4 + 48*zeta^3 - 120*zeta^2 - 48*zeta - 48)*q^16 + (-24*zeta^4 - 
24*zeta^3 + 60*zeta^2 + 24*zeta + 24)*q^17 + (-72*zeta^4 + 24*zeta^3 + 
264*zeta^2 - 96*zeta - 168)*q^18 + (-24*zeta^4 - 12*zeta^3 + 120*zeta^2 + 
36*zeta - 72)*q^20 + (12*zeta^4 - 24*zeta^2 - 24*zeta - 48)*q^21 + (6*zeta^4 - 
12*zeta^2 - 12*zeta - 24)*q^23 + (-48*zeta^4 - 96*zeta^3 + 144*zeta^2 + 264*zeta
- 96)*q^25 + (-144*zeta^4 + 48*zeta^3 + 528*zeta^2 - 192*zeta - 336)*q^26 + 
(-60*zeta^4 - 60*zeta^3 + 150*zeta^2 + 60*zeta + 60)*q^27 + (-48*zeta^4 - 
48*zeta^3 + 120*zeta^2 + 48*zeta + 48)*q^28 + (-24*zeta^4 - 48*zeta^3 + 
72*zeta^2 + 132*zeta - 48)*q^30 + (-84*zeta^4 - 42*zeta^3 + 420*zeta^2 + 
126*zeta - 252)*q^31 + (48*zeta^4 - 96*zeta^2 - 96*zeta - 192)*q^32 + 
(-24*zeta^4 + 48*zeta^2 + 48*zeta + 96)*q^34 + (-24*zeta^4 - 12*zeta^3 + 
120*zeta^2 + 36*zeta - 72)*q^35 + (-48*zeta^4 - 96*zeta^3 + 144*zeta^2 + 
264*zeta - 96)*q^36 + (54*zeta^4 - 18*zeta^3 - 198*zeta^2 + 72*zeta + 126)*q^37 
+ (-48*zeta^4 - 48*zeta^3 + 120*zeta^2 + 48*zeta + 48)*q^39 + (96*zeta^4 + 
192*zeta^3 - 288*zeta^2 - 528*zeta + 192)*q^41 + (48*zeta^4 + 24*zeta^3 - 
240*zeta^2 - 72*zeta + 144)*q^42 + (-36*zeta^4 + 72*zeta^2 + 72*zeta + 144)*q^43
+ (12*zeta^4 - 24*zeta^2 - 24*zeta - 48)*q^45 + (24*zeta^4 + 12*zeta^3 - 
120*zeta^2 - 36*zeta + 72)*q^46 + (96*zeta^4 + 192*zeta^3 - 288*zeta^2 - 
528*zeta + 192)*q^47 + (72*zeta^4 - 24*zeta^3 - 264*zeta^2 + 96*zeta + 168)*q^48
+ (36*zeta^4 + 36*zeta^3 - 90*zeta^2 - 36*zeta - 36)*q^49 + (96*zeta^4 + 
96*zeta^3 - 240*zeta^2 - 96*zeta - 96)*q^50 + (-36*zeta^4 + 12*zeta^3 + 
132*zeta^2 - 48*zeta - 84)*q^51 + (-96*zeta^4 - 192*zeta^3 + 288*zeta^2 + 
528*zeta - 192)*q^52 + (72*zeta^4 + 36*zeta^3 - 360*zeta^2 - 108*zeta + 
216)*q^53 + (-60*zeta^4 + 120*zeta^2 + 120*zeta + 240)*q^54 + (90*zeta^4 - 
30*zeta^3 - 330*zeta^2 + 120*zeta + 210)*q^59 + (24*zeta^4 + 24*zeta^3 - 
60*zeta^2 - 24*zeta - 24)*q^60 + (144*zeta^4 + 144*zeta^3 - 360*zeta^2 - 
144*zeta - 144)*q^61 + (252*zeta^4 - 84*zeta^3 - 924*zeta^2 + 336*zeta + 
588)*q^62 + (-48*zeta^4 - 96*zeta^3 + 144*zeta^2 + 264*zeta - 96)*q^63 + 
(96*zeta^4 + 48*zeta^3 - 480*zeta^2 - 144*zeta + 288)*q^64 + (24*zeta^4 - 
48*zeta^2 - 48*zeta - 96)*q^65 + (42*zeta^4 - 84*zeta^2 - 84*zeta - 168)*q^67 + 
(-48*zeta^4 - 24*zeta^3 + 240*zeta^2 + 72*zeta - 144)*q^68 + (12*zeta^4 + 
24*zeta^3 - 36*zeta^2 - 66*zeta + 24)*q^69 + (72*zeta^4 - 24*zeta^3 - 264*zeta^2
+ 96*zeta + 168)*q^70 + (36*zeta^4 + 36*zeta^3 - 90*zeta^2 - 36*zeta - 36)*q^71 
+ (-72*zeta^4 + 24*zeta^3 + 264*zeta^2 - 96*zeta - 168)*q^73 + (72*zeta^4 + 
144*zeta^3 - 216*zeta^2 - 396*zeta + 144)*q^74 + (-48*zeta^4 - 24*zeta^3 + 
240*zeta^2 + 72*zeta - 144)*q^75 + (-48*zeta^4 + 96*zeta^2 + 96*zeta + 192)*q^78
+ (-120*zeta^4 - 60*zeta^3 + 600*zeta^2 + 180*zeta - 360)*q^79 + (-48*zeta^4 - 
96*zeta^3 + 144*zeta^2 + 264*zeta - 96)*q^80 + (18*zeta^4 - 6*zeta^3 - 66*zeta^2
+ 24*zeta + 42)*q^81 + (-192*zeta^4 - 192*zeta^3 + 480*zeta^2 + 192*zeta + 
192)*q^82 + (-72*zeta^4 - 72*zeta^3 + 180*zeta^2 + 72*zeta + 72)*q^83 + 
(-72*zeta^4 + 24*zeta^3 + 264*zeta^2 - 96*zeta - 168)*q^84 + (24*zeta^4 + 
48*zeta^3 - 72*zeta^2 - 132*zeta + 48)*q^85 + (-144*zeta^4 - 72*zeta^3 + 
720*zeta^2 + 216*zeta - 432)*q^86 + (-90*zeta^4 + 180*zeta^2 + 180*zeta + 
360)*q^89 + (48*zeta^4 + 24*zeta^3 - 240*zeta^2 - 72*zeta + 144)*q^90 + 
(-96*zeta^4 - 192*zeta^3 + 288*zeta^2 + 528*zeta - 192)*q^91 + (-36*zeta^4 + 
12*zeta^3 + 132*zeta^2 - 48*zeta - 84)*q^92 + (84*zeta^4 + 84*zeta^3 - 
210*zeta^2 - 84*zeta - 84)*q^93 + (-192*zeta^4 - 192*zeta^3 + 480*zeta^2 + 
192*zeta + 192)*q^94 + (96*zeta^4 + 192*zeta^3 - 288*zeta^2 - 528*zeta + 
192)*q^96 + (84*zeta^4 + 42*zeta^3 - 420*zeta^2 - 126*zeta + 252)*q^97 + 
(36*zeta^4 - 72*zeta^2 - 72*zeta - 144)*q^98 + (48*zeta^4 - 96*zeta^2 - 96*zeta 
- 192)*q^100 + (24*zeta^4 + 12*zeta^3 - 120*zeta^2 - 36*zeta + 72)*q^101 + 
(-48*zeta^4 - 96*zeta^3 + 144*zeta^2 + 264*zeta - 96)*q^102 + (-288*zeta^4 + 
96*zeta^3 + 1056*zeta^2 - 384*zeta - 672)*q^103 + (24*zeta^4 + 24*zeta^3 - 
60*zeta^2 - 24*zeta - 24)*q^105 + (-216*zeta^4 + 72*zeta^3 + 792*zeta^2 - 
288*zeta - 504)*q^106 + (-216*zeta^4 - 432*zeta^3 + 648*zeta^2 + 1188*zeta - 
432)*q^107 + (-120*zeta^4 - 60*zeta^3 + 600*zeta^2 + 180*zeta - 360)*q^108 + 
(60*zeta^4 - 120*zeta^2 - 120*zeta - 240)*q^109 + (18*zeta^4 - 36*zeta^2 - 
36*zeta - 72)*q^111 + (96*zeta^4 + 48*zeta^3 - 480*zeta^2 - 144*zeta + 
288)*q^112 + (108*zeta^4 + 216*zeta^3 - 324*zeta^2 - 594*zeta + 216)*q^113 + 
(12*zeta^4 + 12*zeta^3 - 30*zeta^2 - 12*zeta - 12)*q^115 + (144*zeta^4 - 
48*zeta^3 - 528*zeta^2 + 192*zeta + 336)*q^117 + (120*zeta^4 + 240*zeta^3 - 
360*zeta^2 - 660*zeta + 240)*q^118 + (-48*zeta^4 - 24*zeta^3 + 240*zeta^2 + 
72*zeta - 144)*q^119 + (144*zeta^4 - 288*zeta^2 - 288*zeta - 576)*q^122 + 
(96*zeta^4 + 48*zeta^3 - 480*zeta^2 - 144*zeta + 288)*q^123 + (168*zeta^4 + 
336*zeta^3 - 504*zeta^2 - 924*zeta + 336)*q^124 + (-162*zeta^4 + 54*zeta^3 + 
594*zeta^2 - 216*zeta - 378)*q^125 + (96*zeta^4 + 96*zeta^3 - 240*zeta^2 - 
96*zeta - 96)*q^126 + (96*zeta^4 + 96*zeta^3 - 240*zeta^2 - 96*zeta - 96)*q^127 
+ (-72*zeta^4 - 144*zeta^3 + 216*zeta^2 + 396*zeta - 144)*q^129 + (96*zeta^4 + 
48*zeta^3 - 480*zeta^2 - 144*zeta + 288)*q^130 + (-108*zeta^4 + 216*zeta^2 + 
216*zeta + 432)*q^131 + (168*zeta^4 + 84*zeta^3 - 840*zeta^2 - 252*zeta + 
504)*q^134 + (60*zeta^4 + 120*zeta^3 - 180*zeta^2 - 330*zeta + 120)*q^135 + 
(84*zeta^4 + 84*zeta^3 - 210*zeta^2 - 84*zeta - 84)*q^137 + (-24*zeta^4 - 
24*zeta^3 + 60*zeta^2 + 24*zeta + 24)*q^138 + (-180*zeta^4 + 60*zeta^3 + 
660*zeta^2 - 240*zeta - 420)*q^139 + (48*zeta^4 + 96*zeta^3 - 144*zeta^2 - 
264*zeta + 96)*q^140 + (96*zeta^4 + 48*zeta^3 - 480*zeta^2 - 144*zeta + 
288)*q^141 + (36*zeta^4 - 72*zeta^2 - 72*zeta - 144)*q^142 + (-48*zeta^4 + 
96*zeta^2 + 96*zeta + 192)*q^144 + (-96*zeta^4 - 192*zeta^3 + 288*zeta^2 + 
528*zeta - 192)*q^146 + (54*zeta^4 - 18*zeta^3 - 198*zeta^2 + 72*zeta + 
126)*q^147 + (-72*zeta^4 - 72*zeta^3 + 180*zeta^2 + 72*zeta + 72)*q^148 + 
(-120*zeta^4 - 120*zeta^3 + 300*zeta^2 + 120*zeta + 120)*q^149 + (144*zeta^4 - 
48*zeta^3 - 528*zeta^2 + 192*zeta + 336)*q^150 + (-24*zeta^4 - 48*zeta^3 + 
72*zeta^2 + 132*zeta - 48)*q^151 + (24*zeta^4 - 48*zeta^2 - 48*zeta - 96)*q^153 
+ (-42*zeta^4 + 84*zeta^2 + 84*zeta + 168)*q^155 + (-96*zeta^4 - 48*zeta^3 + 
480*zeta^2 + 144*zeta - 288)*q^156 + (-84*zeta^4 - 168*zeta^3 + 252*zeta^2 + 
462*zeta - 168)*q^157 + (360*zeta^4 - 120*zeta^3 - 1320*zeta^2 + 480*zeta + 
840)*q^158 + (-72*zeta^4 - 72*zeta^3 + 180*zeta^2 + 72*zeta + 72)*q^159 + 
(96*zeta^4 + 96*zeta^3 - 240*zeta^2 - 96*zeta - 96)*q^160 + (-36*zeta^4 + 
12*zeta^3 + 132*zeta^2 - 48*zeta - 84)*q^161 + (24*zeta^4 + 48*zeta^3 - 
72*zeta^2 - 132*zeta + 48)*q^162 + (-48*zeta^4 - 24*zeta^3 + 240*zeta^2 + 
72*zeta - 144)*q^163 + (-96*zeta^4 + 192*zeta^2 + 192*zeta + 384)*q^164 + 
(-72*zeta^4 + 144*zeta^2 + 144*zeta + 288)*q^166 + (-144*zeta^4 - 72*zeta^3 + 
720*zeta^2 + 216*zeta - 432)*q^167 + (54*zeta^4 - 18*zeta^3 - 198*zeta^2 + 
72*zeta + 126)*q^169 + (-48*zeta^4 - 48*zeta^3 + 120*zeta^2 + 48*zeta + 
48)*q^170 + (216*zeta^4 - 72*zeta^3 - 792*zeta^2 + 288*zeta + 504)*q^172 + 
(72*zeta^4 + 144*zeta^3 - 216*zeta^2 - 396*zeta + 144)*q^173 + (48*zeta^4 - 
96*zeta^2 - 96*zeta - 192)*q^175 + (30*zeta^4 - 60*zeta^2 - 60*zeta - 120)*q^177
+ (-360*zeta^4 - 180*zeta^3 + 1800*zeta^2 + 540*zeta - 1080)*q^178 + 
(-180*zeta^4 - 360*zeta^3 + 540*zeta^2 + 990*zeta - 360)*q^179 + (-72*zeta^4 + 
24*zeta^3 + 264*zeta^2 - 96*zeta - 168)*q^180 + (-84*zeta^4 - 84*zeta^3 + 
210*zeta^2 + 84*zeta + 84)*q^181 + (192*zeta^4 + 192*zeta^3 - 480*zeta^2 - 
192*zeta - 192)*q^182 + (216*zeta^4 - 72*zeta^3 - 792*zeta^2 + 288*zeta + 
504)*q^183 + (-36*zeta^4 - 18*zeta^3 + 180*zeta^2 + 54*zeta - 108)*q^185 + 
(84*zeta^4 - 168*zeta^2 - 168*zeta - 336)*q^186 + (-96*zeta^4 + 192*zeta^2 + 
192*zeta + 384)*q^188 + (-120*zeta^4 - 60*zeta^3 + 600*zeta^2 + 180*zeta - 
360)*q^189 + (306*zeta^4 - 102*zeta^3 - 1122*zeta^2 + 408*zeta + 714)*q^191 + 
(-96*zeta^4 - 96*zeta^3 + 240*zeta^2 + 96*zeta + 96)*q^192 + (48*zeta^4 + 
48*zeta^3 - 120*zeta^2 - 48*zeta - 48)*q^193 + (-252*zeta^4 + 84*zeta^3 + 
924*zeta^2 - 336*zeta - 588)*q^194 + (48*zeta^4 + 96*zeta^3 - 144*zeta^2 - 
264*zeta + 96)*q^195 + (72*zeta^4 + 36*zeta^3 - 360*zeta^2 - 108*zeta + 
216)*q^196 + (-12*zeta^4 + 24*zeta^2 + 24*zeta + 48)*q^197 + (84*zeta^4 + 
168*zeta^3 - 252*zeta^2 - 462*zeta + 168)*q^201 + (-72*zeta^4 + 24*zeta^3 + 
264*zeta^2 - 96*zeta - 168)*q^202 + (48*zeta^4 + 48*zeta^3 - 120*zeta^2 - 
48*zeta - 48)*q^204 + (144*zeta^4 - 48*zeta^3 - 528*zeta^2 + 192*zeta + 
336)*q^205 + (-384*zeta^4 - 768*zeta^3 + 1152*zeta^2 + 2112*zeta - 768)*q^206 + 
(-24*zeta^4 - 12*zeta^3 + 120*zeta^2 + 36*zeta - 72)*q^207 + (-96*zeta^4 + 
192*zeta^2 + 192*zeta + 384)*q^208 + (24*zeta^4 - 48*zeta^2 - 48*zeta - 
96)*q^210 + (144*zeta^4 + 72*zeta^3 - 720*zeta^2 - 216*zeta + 432)*q^211 + 
(-144*zeta^4 - 288*zeta^3 + 432*zeta^2 + 792*zeta - 288)*q^212 + (54*zeta^4 - 
18*zeta^3 - 198*zeta^2 + 72*zeta + 126)*q^213 + (432*zeta^4 + 432*zeta^3 - 
1080*zeta^2 - 432*zeta - 432)*q^214 + (-72*zeta^4 - 72*zeta^3 + 180*zeta^2 + 
72*zeta + 72)*q^215 + (168*zeta^4 + 336*zeta^3 - 504*zeta^2 - 924*zeta + 
336)*q^217 + (240*zeta^4 + 120*zeta^3 - 1200*zeta^2 - 360*zeta + 720)*q^218 + 
(-24*zeta^4 + 48*zeta^2 + 48*zeta + 96)*q^219 + (48*zeta^4 - 96*zeta^2 - 96*zeta
- 192)*q^221 + (72*zeta^4 + 36*zeta^3 - 360*zeta^2 - 108*zeta + 216)*q^222 + 
(228*zeta^4 + 456*zeta^3 - 684*zeta^2 - 1254*zeta + 456)*q^223 + (-288*zeta^4 + 
96*zeta^3 + 1056*zeta^2 - 384*zeta - 672)*q^224 + (-96*zeta^4 - 96*zeta^3 + 
240*zeta^2 + 96*zeta + 96)*q^225 + (-216*zeta^4 - 216*zeta^3 + 540*zeta^2 + 
216*zeta + 216)*q^226 + (-324*zeta^4 + 108*zeta^3 + 1188*zeta^2 - 432*zeta - 
756)*q^227 + (-180*zeta^4 - 90*zeta^3 + 900*zeta^2 + 270*zeta - 540)*q^229 + 
(12*zeta^4 - 24*zeta^2 - 24*zeta - 48)*q^230 + (288*zeta^4 + 144*zeta^3 - 
1440*zeta^2 - 432*zeta + 864)*q^233 + (192*zeta^4 + 384*zeta^3 - 576*zeta^2 - 
1056*zeta + 384)*q^234 + (144*zeta^4 - 48*zeta^3 - 528*zeta^2 + 192*zeta + 
336)*q^235 + (-120*zeta^4 - 120*zeta^3 + 300*zeta^2 + 120*zeta + 120)*q^236 + 
(120*zeta^4 + 120*zeta^3 - 300*zeta^2 - 120*zeta - 120)*q^237 + (144*zeta^4 - 
48*zeta^3 - 528*zeta^2 + 192*zeta + 336)*q^238 + (360*zeta^4 + 720*zeta^3 - 
1080*zeta^2 - 1980*zeta + 720)*q^239 + (-48*zeta^4 - 24*zeta^3 + 240*zeta^2 + 
72*zeta - 144)*q^240 + (-48*zeta^4 + 96*zeta^2 + 96*zeta + 192)*q^241 + 
(96*zeta^4 - 192*zeta^2 - 192*zeta - 384)*q^243 + (288*zeta^4 + 144*zeta^3 - 
1440*zeta^2 - 432*zeta + 864)*q^244 + (-36*zeta^4 - 72*zeta^3 + 108*zeta^2 + 
198*zeta - 72)*q^245 + (-288*zeta^4 + 96*zeta^3 + 1056*zeta^2 - 384*zeta - 
672)*q^246 + (-108*zeta^4 + 36*zeta^3 + 396*zeta^2 - 144*zeta - 252)*q^249 + 
(-216*zeta^4 - 432*zeta^3 + 648*zeta^2 + 1188*zeta - 432)*q^250 + (276*zeta^4 + 
138*zeta^3 - 1380*zeta^2 - 414*zeta + 828)*q^251 + (48*zeta^4 - 96*zeta^2 - 
96*zeta - 192)*q^252 + (96*zeta^4 - 192*zeta^2 - 192*zeta - 384)*q^254 + 
(24*zeta^4 + 12*zeta^3 - 120*zeta^2 - 36*zeta + 72)*q^255 + (192*zeta^4 + 
384*zeta^3 - 576*zeta^2 - 1056*zeta + 384)*q^256 + (-36*zeta^4 + 12*zeta^3 + 
132*zeta^2 - 48*zeta - 84)*q^257 + (144*zeta^4 + 144*zeta^3 - 360*zeta^2 - 
144*zeta - 144)*q^258 + (-72*zeta^4 - 72*zeta^3 + 180*zeta^2 + 72*zeta + 
72)*q^259 + (-144*zeta^4 + 48*zeta^3 + 528*zeta^2 - 192*zeta - 336)*q^260 + 
(-432*zeta^4 - 216*zeta^3 + 2160*zeta^2 + 648*zeta - 1296)*q^262 + (84*zeta^4 - 
168*zeta^2 - 168*zeta - 336)*q^263 + (36*zeta^4 - 72*zeta^2 - 72*zeta - 
144)*q^265 + (-180*zeta^4 - 360*zeta^3 + 540*zeta^2 + 990*zeta - 360)*q^267 + 
(-252*zeta^4 + 84*zeta^3 + 924*zeta^2 - 336*zeta - 588)*q^268 + (-120*zeta^4 - 
120*zeta^3 + 300*zeta^2 + 120*zeta + 120)*q^269 + (-120*zeta^4 - 120*zeta^3 + 
300*zeta^2 + 120*zeta + 120)*q^270 + (504*zeta^4 - 168*zeta^3 - 1848*zeta^2 + 
672*zeta + 1176)*q^271 + (-96*zeta^4 - 192*zeta^3 + 288*zeta^2 + 528*zeta - 
192)*q^272 + (-96*zeta^4 - 48*zeta^3 + 480*zeta^2 + 144*zeta - 288)*q^273 + 
(84*zeta^4 - 168*zeta^2 - 168*zeta - 336)*q^274 + (-12*zeta^4 + 24*zeta^2 + 
24*zeta + 48)*q^276 + (-24*zeta^4 - 12*zeta^3 + 120*zeta^2 + 36*zeta - 72)*q^277
+ (-240*zeta^4 - 480*zeta^3 + 720*zeta^2 + 1320*zeta - 480)*q^278 + (-252*zeta^4
+ 84*zeta^3 + 924*zeta^2 - 336*zeta - 588)*q^279 + (-216*zeta^4 - 216*zeta^3 + 
540*zeta^2 + 216*zeta + 216)*q^281 + (-288*zeta^4 + 96*zeta^3 + 1056*zeta^2 - 
384*zeta - 672)*q^282 + (-48*zeta^4 - 96*zeta^3 + 144*zeta^2 + 264*zeta - 
96)*q^283 + (72*zeta^4 + 36*zeta^3 - 360*zeta^2 - 108*zeta + 216)*q^284 + 
(-96*zeta^4 + 192*zeta^2 + 192*zeta + 384)*q^287 + (-192*zeta^4 - 96*zeta^3 + 
960*zeta^2 + 288*zeta - 576)*q^288 + (-156*zeta^4 - 312*zeta^3 + 468*zeta^2 + 
858*zeta - 312)*q^289 + (-84*zeta^4 - 84*zeta^3 + 210*zeta^2 + 84*zeta + 
84)*q^291 + (96*zeta^4 + 96*zeta^3 - 240*zeta^2 - 96*zeta - 96)*q^292 + 
(-432*zeta^4 + 144*zeta^3 + 1584*zeta^2 - 576*zeta - 1008)*q^293 + (72*zeta^4 + 
144*zeta^3 - 216*zeta^2 - 396*zeta + 144)*q^294 + (-60*zeta^4 - 30*zeta^3 + 
300*zeta^2 + 90*zeta - 180)*q^295 + (-120*zeta^4 + 240*zeta^2 + 240*zeta + 
480)*q^298 + (-48*zeta^4 - 24*zeta^3 + 240*zeta^2 + 72*zeta - 144)*q^299 + 
(96*zeta^4 + 192*zeta^3 - 288*zeta^2 - 528*zeta + 192)*q^300 + (216*zeta^4 - 
72*zeta^3 - 792*zeta^2 + 288*zeta + 504)*q^301 + (48*zeta^4 + 48*zeta^3 - 
120*zeta^2 - 48*zeta - 48)*q^302 + (-24*zeta^4 - 24*zeta^3 + 60*zeta^2 + 24*zeta
+ 24)*q^303 + (-144*zeta^4 - 288*zeta^3 + 432*zeta^2 + 792*zeta - 288)*q^305 + 
(96*zeta^4 + 48*zeta^3 - 480*zeta^2 - 144*zeta + 288)*q^306 + (48*zeta^4 - 
96*zeta^2 - 96*zeta - 192)*q^307 + (-96*zeta^4 + 192*zeta^2 + 192*zeta + 
384)*q^309 + (-168*zeta^4 - 84*zeta^3 + 840*zeta^2 + 252*zeta - 504)*q^310 + 
(144*zeta^4 + 288*zeta^3 - 432*zeta^2 - 792*zeta + 288)*q^311 + (12*zeta^4 + 
12*zeta^3 - 30*zeta^2 - 12*zeta - 12)*q^313 + (168*zeta^4 + 168*zeta^3 - 
420*zeta^2 - 168*zeta - 168)*q^314 + (-72*zeta^4 + 24*zeta^3 + 264*zeta^2 - 
96*zeta - 168)*q^315 + (240*zeta^4 + 480*zeta^3 - 720*zeta^2 - 1320*zeta + 
480)*q^316 + (-156*zeta^4 - 78*zeta^3 + 780*zeta^2 + 234*zeta - 468)*q^317 + 
(-72*zeta^4 + 144*zeta^2 + 144*zeta + 288)*q^318 + (48*zeta^4 - 96*zeta^2 - 
96*zeta - 192)*q^320 + (-216*zeta^4 - 108*zeta^3 + 1080*zeta^2 + 324*zeta - 
648)*q^321 + (-48*zeta^4 - 96*zeta^3 + 144*zeta^2 + 264*zeta - 96)*q^322 + 
(-24*zeta^4 - 24*zeta^3 + 60*zeta^2 + 24*zeta + 24)*q^324 + (-192*zeta^4 - 
192*zeta^3 + 480*zeta^2 + 192*zeta + 192)*q^325 + (144*zeta^4 - 48*zeta^3 - 
528*zeta^2 + 192*zeta + 336)*q^326 + (120*zeta^4 + 240*zeta^3 - 360*zeta^2 - 
660*zeta + 240)*q^327 + (-96*zeta^4 + 192*zeta^2 + 192*zeta + 384)*q^329 + 
(-42*zeta^4 + 84*zeta^2 + 84*zeta + 168)*q^331 + (-144*zeta^4 - 72*zeta^3 + 
720*zeta^2 + 216*zeta - 432)*q^332 + (-72*zeta^4 - 144*zeta^3 + 216*zeta^2 + 
396*zeta - 144)*q^333 + (432*zeta^4 - 144*zeta^3 - 1584*zeta^2 + 576*zeta + 
1008)*q^334 + (84*zeta^4 + 84*zeta^3 - 210*zeta^2 - 84*zeta - 84)*q^335 + 
(-96*zeta^4 - 96*zeta^3 + 240*zeta^2 + 96*zeta + 96)*q^336 + (396*zeta^4 - 
132*zeta^3 - 1452*zeta^2 + 528*zeta + 924)*q^337 + (72*zeta^4 + 144*zeta^3 - 
216*zeta^2 - 396*zeta + 144)*q^338 + (108*zeta^4 + 54*zeta^3 - 540*zeta^2 - 
162*zeta + 324)*q^339 + (-24*zeta^4 + 48*zeta^2 + 48*zeta + 96)*q^340 + 
(240*zeta^4 + 120*zeta^3 - 1200*zeta^2 - 360*zeta + 720)*q^343 + (18*zeta^4 - 
6*zeta^3 - 66*zeta^2 + 24*zeta + 42)*q^345 + (-144*zeta^4 - 144*zeta^3 + 
360*zeta^2 + 144*zeta + 144)*q^346 + (336*zeta^4 + 336*zeta^3 - 840*zeta^2 - 
336*zeta - 336)*q^347 + (-360*zeta^4 - 720*zeta^3 + 1080*zeta^2 + 1980*zeta - 
720)*q^349 + (192*zeta^4 + 96*zeta^3 - 960*zeta^2 - 288*zeta + 576)*q^350 + 
(120*zeta^4 - 240*zeta^2 - 240*zeta - 480)*q^351 + (126*zeta^4 - 252*zeta^2 - 
252*zeta - 504)*q^353 + (120*zeta^4 + 60*zeta^3 - 600*zeta^2 - 180*zeta + 
360)*q^354 + (-36*zeta^4 - 72*zeta^3 + 108*zeta^2 + 198*zeta - 72)*q^355 + 
(540*zeta^4 - 180*zeta^3 - 1980*zeta^2 + 720*zeta + 1260)*q^356 + (48*zeta^4 + 
48*zeta^3 - 120*zeta^2 - 48*zeta - 48)*q^357 + (360*zeta^4 + 360*zeta^3 - 
900*zeta^2 - 360*zeta - 360)*q^358 + (360*zeta^4 - 120*zeta^3 - 1320*zeta^2 + 
480*zeta + 840)*q^359 + (228*zeta^4 + 114*zeta^3 - 1140*zeta^2 - 342*zeta + 
684)*q^361 + (-84*zeta^4 + 168*zeta^2 + 168*zeta + 336)*q^362 + (96*zeta^4 - 
192*zeta^2 - 192*zeta - 384)*q^364 + (48*zeta^4 + 24*zeta^3 - 240*zeta^2 - 
72*zeta + 144)*q^365 + (288*zeta^4 + 576*zeta^3 - 864*zeta^2 - 1584*zeta + 
576)*q^366 + (-306*zeta^4 + 102*zeta^3 + 1122*zeta^2 - 408*zeta - 714)*q^367 + 
(-48*zeta^4 - 48*zeta^3 + 120*zeta^2 + 48*zeta + 48)*q^368 + (192*zeta^4 + 
192*zeta^3 - 480*zeta^2 - 192*zeta - 192)*q^369 + (108*zeta^4 - 36*zeta^3 - 
396*zeta^2 + 144*zeta + 252)*q^370 + (-144*zeta^4 - 288*zeta^3 + 432*zeta^2 + 
792*zeta - 288)*q^371 + (168*zeta^4 + 84*zeta^3 - 840*zeta^2 - 252*zeta + 
504)*q^372 + (-156*zeta^4 + 312*zeta^2 + 312*zeta + 624)*q^373 + (-54*zeta^4 + 
108*zeta^2 + 108*zeta + 216)*q^375 + (360*zeta^4 - 120*zeta^3 - 1320*zeta^2 + 
480*zeta + 840)*q^378 + (60*zeta^4 + 60*zeta^3 - 150*zeta^2 - 60*zeta - 
60)*q^379 + (144*zeta^4 - 48*zeta^3 - 528*zeta^2 + 192*zeta + 336)*q^381 + 
(408*zeta^4 + 816*zeta^3 - 1224*zeta^2 - 2244*zeta + 816)*q^382 + (12*zeta^4 + 
6*zeta^3 - 60*zeta^2 - 18*zeta + 36)*q^383 + (48*zeta^4 - 96*zeta^2 - 96*zeta - 
192)*q^386 + (144*zeta^4 + 72*zeta^3 - 720*zeta^2 - 216*zeta + 432)*q^387 + 
(-168*zeta^4 - 336*zeta^3 + 504*zeta^2 + 924*zeta - 336)*q^388 + (-270*zeta^4 + 
90*zeta^3 + 990*zeta^2 - 360*zeta - 630)*q^389 + (-96*zeta^4 - 96*zeta^3 + 
240*zeta^2 + 96*zeta + 96)*q^390 + (24*zeta^4 + 24*zeta^3 - 60*zeta^2 - 24*zeta 
- 24)*q^391 + (-216*zeta^4 - 432*zeta^3 + 648*zeta^2 + 1188*zeta - 432)*q^393 + 
(-48*zeta^4 - 24*zeta^3 + 240*zeta^2 + 72*zeta - 144)*q^394 + (-60*zeta^4 + 
120*zeta^2 + 120*zeta + 240)*q^395 + (12*zeta^4 - 24*zeta^2 - 24*zeta - 
48)*q^397 + (288*zeta^4 - 96*zeta^3 - 1056*zeta^2 + 384*zeta + 672)*q^400 + 
(-24*zeta^4 - 24*zeta^3 + 60*zeta^2 + 24*zeta + 24)*q^401 + (-168*zeta^4 - 
168*zeta^3 + 420*zeta^2 + 168*zeta + 168)*q^402 + (-504*zeta^4 + 168*zeta^3 + 
1848*zeta^2 - 672*zeta - 1176)*q^403 + (-48*zeta^4 - 96*zeta^3 + 144*zeta^2 + 
264*zeta - 96)*q^404 + (-12*zeta^4 - 6*zeta^3 + 60*zeta^2 + 18*zeta - 36)*q^405 
+ (-360*zeta^4 - 180*zeta^3 + 1800*zeta^2 + 540*zeta - 1080)*q^409 + (192*zeta^4
+ 384*zeta^3 - 576*zeta^2 - 1056*zeta + 384)*q^410 + (126*zeta^4 - 42*zeta^3 - 
462*zeta^2 + 168*zeta + 294)*q^411 + (384*zeta^4 + 384*zeta^3 - 960*zeta^2 - 
384*zeta - 384)*q^412 + (-120*zeta^4 - 120*zeta^3 + 300*zeta^2 + 120*zeta + 
120)*q^413 + (72*zeta^4 - 24*zeta^3 - 264*zeta^2 + 96*zeta + 168)*q^414 + 
(72*zeta^4 + 144*zeta^3 - 216*zeta^2 - 396*zeta + 144)*q^415 + (-384*zeta^4 - 
192*zeta^3 + 1920*zeta^2 + 576*zeta - 1152)*q^416 + (-60*zeta^4 + 120*zeta^2 + 
120*zeta + 240)*q^417 + (-120*zeta^4 + 240*zeta^2 + 240*zeta + 480)*q^419 + 
(48*zeta^4 + 24*zeta^3 - 240*zeta^2 - 72*zeta + 144)*q^420 + (264*zeta^4 + 
528*zeta^3 - 792*zeta^2 - 1452*zeta + 528)*q^421 + (-432*zeta^4 + 144*zeta^3 + 
1584*zeta^2 - 576*zeta - 1008)*q^422 + (192*zeta^4 + 192*zeta^3 - 480*zeta^2 - 
192*zeta - 192)*q^423 + (-144*zeta^4 + 48*zeta^3 + 528*zeta^2 - 192*zeta - 
336)*q^425 + (72*zeta^4 + 144*zeta^3 - 216*zeta^2 - 396*zeta + 144)*q^426 + 
(288*zeta^4 + 144*zeta^3 - 1440*zeta^2 - 432*zeta + 864)*q^427 + (216*zeta^4 - 
432*zeta^2 - 432*zeta - 864)*q^428 + (-72*zeta^4 + 144*zeta^2 + 144*zeta + 
288)*q^430 + (-216*zeta^4 - 108*zeta^3 + 1080*zeta^2 + 324*zeta - 648)*q^431 + 
(-240*zeta^4 - 480*zeta^3 + 720*zeta^2 + 1320*zeta - 480)*q^432 + (-198*zeta^4 +
66*zeta^3 + 726*zeta^2 - 264*zeta - 462)*q^433 + (-336*zeta^4 - 336*zeta^3 + 
840*zeta^2 + 336*zeta + 336)*q^434 + (-360*zeta^4 + 120*zeta^3 + 1320*zeta^2 - 
480*zeta - 840)*q^436 + (-96*zeta^4 - 48*zeta^3 + 480*zeta^2 + 144*zeta - 
288)*q^438 + (240*zeta^4 - 480*zeta^2 - 480*zeta - 960)*q^439 + (-36*zeta^4 + 
72*zeta^2 + 72*zeta + 144)*q^441 + (192*zeta^4 + 96*zeta^3 - 960*zeta^2 - 
288*zeta + 576)*q^442 + (-132*zeta^4 - 264*zeta^3 + 396*zeta^2 + 726*zeta - 
264)*q^443 + (-108*zeta^4 + 36*zeta^3 + 396*zeta^2 - 144*zeta - 252)*q^444 + 
(-180*zeta^4 - 180*zeta^3 + 450*zeta^2 + 180*zeta + 180)*q^445 + (-456*zeta^4 - 
456*zeta^3 + 1140*zeta^2 + 456*zeta + 456)*q^446 + (-180*zeta^4 + 60*zeta^3 + 
660*zeta^2 - 240*zeta - 420)*q^447 + (-192*zeta^4 - 384*zeta^3 + 576*zeta^2 + 
1056*zeta - 384)*q^448 + (-420*zeta^4 - 210*zeta^3 + 2100*zeta^2 + 630*zeta - 
1260)*q^449 + (-96*zeta^4 + 192*zeta^2 + 192*zeta + 384)*q^450 + (-108*zeta^4 + 
216*zeta^2 + 216*zeta + 432)*q^452 + (-24*zeta^4 - 12*zeta^3 + 120*zeta^2 + 
36*zeta - 72)*q^453 + (-432*zeta^4 - 864*zeta^3 + 1296*zeta^2 + 2376*zeta - 
864)*q^454 + (-144*zeta^4 + 48*zeta^3 + 528*zeta^2 - 192*zeta - 336)*q^455 + 
(-144*zeta^4 - 144*zeta^3 + 360*zeta^2 + 144*zeta + 144)*q^457 + (540*zeta^4 - 
180*zeta^3 - 1980*zeta^2 + 720*zeta + 1260)*q^458 + (120*zeta^4 + 240*zeta^3 - 
360*zeta^2 - 660*zeta + 240)*q^459 + (24*zeta^4 + 12*zeta^3 - 120*zeta^2 - 
36*zeta + 72)*q^460 + (72*zeta^4 - 144*zeta^2 - 144*zeta - 288)*q^461 + 
(66*zeta^4 - 132*zeta^2 - 132*zeta - 264)*q^463 + (-84*zeta^4 - 168*zeta^3 + 
252*zeta^2 + 462*zeta - 168)*q^465 + (-864*zeta^4 + 288*zeta^3 + 3168*zeta^2 - 
1152*zeta - 2016)*q^466 + (324*zeta^4 + 324*zeta^3 - 810*zeta^2 - 324*zeta - 
324)*q^467 + (-192*zeta^4 - 192*zeta^3 + 480*zeta^2 + 192*zeta + 192)*q^468 + 
(-252*zeta^4 + 84*zeta^3 + 924*zeta^2 - 336*zeta - 588)*q^469 + (192*zeta^4 + 
384*zeta^3 - 576*zeta^2 - 1056*zeta + 384)*q^470 + (-84*zeta^4 - 42*zeta^3 + 
420*zeta^2 + 126*zeta - 252)*q^471 + (120*zeta^4 - 240*zeta^2 - 240*zeta - 
480)*q^474 + (96*zeta^4 + 192*zeta^3 - 288*zeta^2 - 528*zeta + 192)*q^476 + 
(216*zeta^4 - 72*zeta^3 - 792*zeta^2 + 288*zeta + 504)*q^477 + (-720*zeta^4 - 
720*zeta^3 + 1800*zeta^2 + 720*zeta + 720)*q^478 + (240*zeta^4 + 240*zeta^3 - 
600*zeta^2 - 240*zeta - 240)*q^479 + (144*zeta^4 - 48*zeta^3 - 528*zeta^2 + 
192*zeta + 336)*q^480 + (-144*zeta^4 - 288*zeta^3 + 432*zeta^2 + 792*zeta - 
288)*q^481 + (-192*zeta^4 - 96*zeta^3 + 960*zeta^2 + 288*zeta - 576)*q^482 + 
(-12*zeta^4 + 24*zeta^2 + 24*zeta + 48)*q^483 + (42*zeta^4 - 84*zeta^2 - 84*zeta
- 168)*q^485 + (384*zeta^4 + 192*zeta^3 - 1920*zeta^2 - 576*zeta + 1152)*q^486 +
(276*zeta^4 + 552*zeta^3 - 828*zeta^2 - 1518*zeta + 552)*q^487 + (48*zeta^4 + 
48*zeta^3 - 120*zeta^2 - 48*zeta - 48)*q^489 + (72*zeta^4 + 72*zeta^3 - 
180*zeta^2 - 72*zeta - 72)*q^490 + (144*zeta^4 - 48*zeta^3 - 528*zeta^2 + 
192*zeta + 336)*q^491 + (-192*zeta^4 - 384*zeta^3 + 576*zeta^2 + 1056*zeta - 
384)*q^492 + (168*zeta^4 - 336*zeta^2 - 336*zeta - 672)*q^496 + (72*zeta^4 + 
36*zeta^3 - 360*zeta^2 - 108*zeta + 216)*q^497 + (-144*zeta^4 - 288*zeta^3 + 
432*zeta^2 + 792*zeta - 288)*q^498 + (360*zeta^4 - 120*zeta^3 - 1320*zeta^2 + 
480*zeta + 840)*q^499 + (216*zeta^4 + 216*zeta^3 - 540*zeta^2 - 216*zeta - 
216)*q^500 + (144*zeta^4 + 144*zeta^3 - 360*zeta^2 - 144*zeta - 144)*q^501 + 
(-828*zeta^4 + 276*zeta^3 + 3036*zeta^2 - 1104*zeta - 1932)*q^502 + (312*zeta^4 
+ 624*zeta^3 - 936*zeta^2 - 1716*zeta + 624)*q^503 + (12*zeta^4 - 24*zeta^2 - 
24*zeta - 48)*q^505 + (18*zeta^4 - 36*zeta^2 - 36*zeta - 72)*q^507 + (192*zeta^4
+ 96*zeta^3 - 960*zeta^2 - 288*zeta + 576)*q^508 + (180*zeta^4 + 360*zeta^3 - 
540*zeta^2 - 990*zeta + 360)*q^509 + (-72*zeta^4 + 24*zeta^3 + 264*zeta^2 - 
96*zeta - 168)*q^510 + (96*zeta^4 + 96*zeta^3 - 240*zeta^2 - 96*zeta - 96)*q^511
+ (-384*zeta^4 - 384*zeta^3 + 960*zeta^2 + 384*zeta + 384)*q^512 + (-48*zeta^4 -
96*zeta^3 + 144*zeta^2 + 264*zeta - 96)*q^514 + (192*zeta^4 + 96*zeta^3 - 
960*zeta^2 - 288*zeta + 576)*q^515 + (72*zeta^4 - 144*zeta^2 - 144*zeta - 
288)*q^516 + (-72*zeta^4 + 144*zeta^2 + 144*zeta + 288)*q^518 + (72*zeta^4 + 
36*zeta^3 - 360*zeta^2 - 108*zeta + 216)*q^519 + (-54*zeta^4 + 18*zeta^3 + 
198*zeta^2 - 72*zeta - 126)*q^521 + (-192*zeta^4 - 192*zeta^3 + 480*zeta^2 + 
192*zeta + 192)*q^523 + (648*zeta^4 - 216*zeta^3 - 2376*zeta^2 + 864*zeta + 
1512)*q^524 + (96*zeta^4 + 192*zeta^3 - 288*zeta^2 - 528*zeta + 192)*q^525 + 
(336*zeta^4 + 168*zeta^3 - 1680*zeta^2 - 504*zeta + 1008)*q^526 + (-84*zeta^4 + 
168*zeta^2 + 168*zeta + 336)*q^527 + (132*zeta^4 - 264*zeta^2 - 264*zeta - 
528)*q^529 + (144*zeta^4 + 72*zeta^3 - 720*zeta^2 - 216*zeta + 432)*q^530 + 
(-120*zeta^4 - 240*zeta^3 + 360*zeta^2 + 660*zeta - 240)*q^531 + (384*zeta^4 + 
384*zeta^3 - 960*zeta^2 - 384*zeta - 384)*q^533 + (360*zeta^4 + 360*zeta^3 - 
900*zeta^2 - 360*zeta - 360)*q^534 + (-324*zeta^4 + 108*zeta^3 + 1188*zeta^2 - 
432*zeta - 756)*q^535 + (-180*zeta^4 - 90*zeta^3 + 900*zeta^2 + 270*zeta - 
540)*q^537 + (-120*zeta^4 + 240*zeta^2 + 240*zeta + 480)*q^538 + (-60*zeta^4 + 
120*zeta^2 + 120*zeta + 240)*q^540 + (-96*zeta^4 - 48*zeta^3 + 480*zeta^2 + 
144*zeta - 288)*q^541 + (672*zeta^4 + 1344*zeta^3 - 2016*zeta^2 - 3696*zeta + 
1344)*q^542 + (-126*zeta^4 + 42*zeta^3 + 462*zeta^2 - 168*zeta - 294)*q^543 + 
(192*zeta^4 + 192*zeta^3 - 480*zeta^2 - 192*zeta - 192)*q^544 + (120*zeta^4 + 
120*zeta^3 - 300*zeta^2 - 120*zeta - 120)*q^545 + (288*zeta^4 - 96*zeta^3 - 
1056*zeta^2 + 384*zeta + 672)*q^546 + (-96*zeta^4 - 192*zeta^3 + 288*zeta^2 + 
528*zeta - 192)*q^547 + (168*zeta^4 + 84*zeta^3 - 840*zeta^2 - 252*zeta + 
504)*q^548 + (-144*zeta^4 + 288*zeta^2 + 288*zeta + 576)*q^549 + (240*zeta^4 + 
480*zeta^3 - 720*zeta^2 - 1320*zeta + 480)*q^553 + (72*zeta^4 - 24*zeta^3 - 
264*zeta^2 + 96*zeta + 168)*q^554 + (36*zeta^4 + 36*zeta^3 - 90*zeta^2 - 36*zeta
- 36)*q^555 + (240*zeta^4 + 240*zeta^3 - 600*zeta^2 - 240*zeta - 240)*q^556 + 
(36*zeta^4 - 12*zeta^3 - 132*zeta^2 + 48*zeta + 84)*q^557 + (-336*zeta^4 - 
672*zeta^3 + 1008*zeta^2 + 1848*zeta - 672)*q^558 + (288*zeta^4 + 144*zeta^3 - 
1440*zeta^2 - 432*zeta + 864)*q^559 + (48*zeta^4 - 96*zeta^2 - 96*zeta - 
192)*q^560 + (-216*zeta^4 + 432*zeta^2 + 432*zeta + 864)*q^562 + (48*zeta^4 + 
24*zeta^3 - 240*zeta^2 - 72*zeta + 144)*q^563 + (-192*zeta^4 - 384*zeta^3 + 
576*zeta^2 + 1056*zeta - 384)*q^564 + (162*zeta^4 - 54*zeta^3 - 594*zeta^2 + 
216*zeta + 378)*q^565 + (96*zeta^4 + 96*zeta^3 - 240*zeta^2 - 96*zeta - 
96)*q^566 + (-24*zeta^4 - 24*zeta^3 + 60*zeta^2 + 24*zeta + 24)*q^567 + 
(-168*zeta^4 + 336*zeta^2 + 336*zeta + 672)*q^571 + (102*zeta^4 - 204*zeta^2 - 
204*zeta - 408)*q^573 + (-384*zeta^4 - 192*zeta^3 + 1920*zeta^2 + 576*zeta - 
1152)*q^574 + (48*zeta^4 + 96*zeta^3 - 144*zeta^2 - 264*zeta + 96)*q^575 + 
(288*zeta^4 - 96*zeta^3 - 1056*zeta^2 + 384*zeta + 672)*q^576 + (-396*zeta^4 - 
396*zeta^3 + 990*zeta^2 + 396*zeta + 396)*q^577 + (312*zeta^4 + 312*zeta^3 - 
780*zeta^2 - 312*zeta - 312)*q^578 + (72*zeta^4 - 24*zeta^3 - 264*zeta^2 + 
96*zeta + 168)*q^579 + (-144*zeta^4 - 72*zeta^3 + 720*zeta^2 + 216*zeta - 
432)*q^581 + (-84*zeta^4 + 168*zeta^2 + 168*zeta + 336)*q^582 + (-96*zeta^4 - 
48*zeta^3 + 480*zeta^2 + 144*zeta - 288)*q^585 + (-576*zeta^4 - 1152*zeta^3 + 
1728*zeta^2 + 3168*zeta - 1152)*q^586 + (504*zeta^4 - 168*zeta^3 - 1848*zeta^2 +
672*zeta + 1176)*q^587 + (-72*zeta^4 - 72*zeta^3 + 180*zeta^2 + 72*zeta + 
72)*q^588 + (180*zeta^4 - 60*zeta^3 - 660*zeta^2 + 240*zeta + 420)*q^590 + 
(-24*zeta^4 - 48*zeta^3 + 72*zeta^2 + 132*zeta - 48)*q^591 + (144*zeta^4 + 
72*zeta^3 - 720*zeta^2 - 216*zeta + 432)*q^592 + (264*zeta^4 - 528*zeta^2 - 
528*zeta - 1056)*q^593 + (-24*zeta^4 + 48*zeta^2 + 48*zeta + 96)*q^595 + 
(-240*zeta^4 - 120*zeta^3 + 1200*zeta^2 + 360*zeta - 720)*q^596 + (144*zeta^4 - 
48*zeta^3 - 528*zeta^2 + 192*zeta + 336)*q^598 + (-480*zeta^4 - 480*zeta^3 + 
1200*zeta^2 + 480*zeta + 480)*q^599 + (-36*zeta^4 + 12*zeta^3 + 132*zeta^2 - 
48*zeta - 84)*q^601 + (288*zeta^4 + 576*zeta^3 - 864*zeta^2 - 1584*zeta + 
576)*q^602 + (-168*zeta^4 - 84*zeta^3 + 840*zeta^2 + 252*zeta - 504)*q^603 + 
(24*zeta^4 - 48*zeta^2 - 48*zeta - 96)*q^604 + O(q^605)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 5);
              X_11A6 := Curve(P_Q, [ PolynomialRing(RationalField(), 6) |
x[1]^2 + 9/11*x[2]*x[5] + 1/11*x[2]*x[6] - 31/198*x[3]^2 + 1/11*x[3]*x[5] + 
4/99*x[3]*x[6] + 24/121*x[4]^2 + 9/22*x[5]^2 - 10/11*x[5]*x[6] - 20/99*x[6]^2,
x[1]*x[2] - 2/3*x[2]*x[4] + 8/11*x[3]*x[4] - 8/11*x[4]*x[5] + 4/11*x[4]*x[6],
x[1]*x[3] + 3*x[1]*x[5] - x[1]*x[6] + 1/3*x[2]*x[4] - 32/11*x[4]*x[5] + 
6/11*x[4]*x[6],
x[1]*x[4] + x[2]*x[5] - 1/12*x[2]*x[6] - 1/18*x[3]^2 - x[3]*x[5] - 5/9*x[3]*x[6]
+ 4/11*x[4]^2 + 3/2*x[5]^2 - x[5]*x[6] - 7/18*x[6]^2,
x[2]^2 + 12*x[2]*x[5] + 24/11*x[2]*x[6] - 2*x[3]^2 - 108/11*x[3]*x[5] - 
16/11*x[3]*x[6] + 288/121*x[4]^2 + 234/11*x[5]^2 - 72/11*x[5]*x[6] - 
52/11*x[6]^2,
x[2]*x[3] - 81/11*x[2]*x[5] - 14/11*x[2]*x[6] - 1/11*x[3]^2 + 30/11*x[3]*x[5] + 
14/11*x[3]*x[6] - 144/121*x[4]^2 - 81/11*x[5]^2 + 6/11*x[5]*x[6] + 32/11*x[6]^2
]);
