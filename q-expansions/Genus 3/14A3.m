
    /****************************************************
    Loading this file in magma loads the objects fs_14A3 
    and X_14A3. fs_14A3 is a list of power series which form 
    a basis for the space of cusp forms. X_14A3 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | 1, -2, -1, 1 ]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_14A3 := [Kq | 1/6*(-2*zeta^2 - zeta + 6)*q + 1/6*(-zeta^2 + 
3*zeta + 3)*q^3 + 1/2*(3*zeta^2 - 2*zeta - 2)*q^5 + 1/6*(-7*zeta^2 - 7*zeta + 
14)*q^7 + 1/3*(-3*zeta^2 + 2*zeta + 2)*q^9 + 1/2*(zeta^2 - 3*zeta - 3)*q^11 + 
1/3*(-2*zeta^2 - zeta + 6)*q^13 + 1/2*(-2*zeta^2 - zeta + 6)*q^15 + 1/2*(-zeta^2
+ 3*zeta + 3)*q^17 + 1/6*(-3*zeta^2 + 2*zeta + 2)*q^19 + 1/6*(-7*zeta^2 + 
14*zeta + 7)*q^21 + 1/2*(3*zeta^2 - 2*zeta - 2)*q^23 + 1/3*(-2*zeta^2 + 6*zeta +
6)*q^25 + 1/6*(10*zeta^2 + 5*zeta - 30)*q^27 + (2*zeta^2 + zeta - 6)*q^29 + 
1/6*(7*zeta^2 - 21*zeta - 21)*q^31 + 1/2*(-3*zeta^2 + 2*zeta + 2)*q^33 + 
1/2*(14*zeta^2 - 7*zeta - 21)*q^35 + 1/6*(-3*zeta^2 + 2*zeta + 2)*q^37 + 
1/3*(-zeta^2 + 3*zeta + 3)*q^39 + (-2*zeta^2 - zeta + 6)*q^41 + 1/3*(4*zeta^2 + 
2*zeta - 12)*q^43 + (zeta^2 - 3*zeta - 3)*q^45 + 1/2*(-9*zeta^2 + 6*zeta + 
6)*q^47 + 1/6*(-7*zeta^2 + 35*zeta)*q^49 + 1/2*(3*zeta^2 - 2*zeta - 2)*q^51 + 
1/2*(-zeta^2 + 3*zeta + 3)*q^53 + 1/2*(6*zeta^2 + 3*zeta - 18)*q^55 + 
1/6*(2*zeta^2 + zeta - 6)*q^57 + 1/2*(-3*zeta^2 + 9*zeta + 9)*q^59 + 
1/6*(-3*zeta^2 + 2*zeta + 2)*q^61 + 1/3*(-14*zeta^2 + 7*zeta + 21)*q^63 + 
(3*zeta^2 - 2*zeta - 2)*q^65 + 1/6*(7*zeta^2 - 21*zeta - 21)*q^67 + 
1/2*(-2*zeta^2 - zeta + 6)*q^69 + 1/6*(zeta^2 - 3*zeta - 3)*q^73 + 1/3*(6*zeta^2
- 4*zeta - 4)*q^75 + 1/2*(7*zeta^2 - 14*zeta - 7)*q^77 + 1/6*(-39*zeta^2 + 
26*zeta + 26)*q^79 + 1/6*(-zeta^2 + 3*zeta + 3)*q^81 + (-4*zeta^2 - 2*zeta + 
12)*q^83 + 1/2*(-6*zeta^2 - 3*zeta + 18)*q^85 + (zeta^2 - 3*zeta - 3)*q^87 + 
1/2*(15*zeta^2 - 10*zeta - 10)*q^89 + 1/3*(-7*zeta^2 - 7*zeta + 14)*q^91 + 
1/6*(-21*zeta^2 + 14*zeta + 14)*q^93 + 1/2*(zeta^2 - 3*zeta - 3)*q^95 + 
1/3*(10*zeta^2 + 5*zeta - 30)*q^97 + (-2*zeta^2 - zeta + 6)*q^99 + 
1/2*(-5*zeta^2 + 15*zeta + 15)*q^101 + 1/6*(33*zeta^2 - 22*zeta - 22)*q^103 + 
1/2*(-7*zeta^2 - 7*zeta + 14)*q^105 + 1/2*(15*zeta^2 - 10*zeta - 10)*q^107 + 
1/6*(zeta^2 - 3*zeta - 3)*q^109 + 1/6*(2*zeta^2 + zeta - 6)*q^111 + (-2*zeta^2 -
zeta + 6)*q^113 + 1/2*(-3*zeta^2 + 9*zeta + 9)*q^115 + 1/3*(-6*zeta^2 + 4*zeta +
4)*q^117 + 1/2*(-7*zeta^2 + 14*zeta + 7)*q^119 + 1/3*(-3*zeta^2 + 2*zeta + 
2)*q^121 + (-zeta^2 + 3*zeta + 3)*q^123 + 1/2*(2*zeta^2 + zeta - 6)*q^125 + 
1/3*(-8*zeta^2 - 4*zeta + 24)*q^127 + 1/3*(2*zeta^2 - 6*zeta - 6)*q^129 + 
1/2*(3*zeta^2 - 2*zeta - 2)*q^131 + 1/6*(-14*zeta^2 + 7*zeta + 21)*q^133 + 
1/2*(-15*zeta^2 + 10*zeta + 10)*q^135 + 1/2*(7*zeta^2 - 21*zeta - 21)*q^137 + 
1/3*(-20*zeta^2 - 10*zeta + 60)*q^139 + 1/2*(6*zeta^2 + 3*zeta - 18)*q^141 + 
(zeta^2 - 3*zeta - 3)*q^143 + (-9*zeta^2 + 6*zeta + 6)*q^145 + 1/6*(35*zeta^2 - 
28*zeta - 49)*q^147 + 1/2*(3*zeta^2 - 2*zeta - 2)*q^149 + 1/6*(-17*zeta^2 + 
51*zeta + 51)*q^151 + (2*zeta^2 + zeta - 6)*q^153 + 1/2*(14*zeta^2 + 7*zeta - 
42)*q^155 + 1/6*(13*zeta^2 - 39*zeta - 39)*q^157 + 1/2*(3*zeta^2 - 2*zeta - 
2)*q^159 + 1/2*(14*zeta^2 - 7*zeta - 21)*q^161 + 1/6*(33*zeta^2 - 22*zeta - 
22)*q^163 + 1/2*(3*zeta^2 - 9*zeta - 9)*q^165 + (4*zeta^2 + 2*zeta - 12)*q^167 +
1/2*(6*zeta^2 + 3*zeta - 18)*q^169 + 1/3*(-zeta^2 + 3*zeta + 3)*q^171 + 
1/2*(-9*zeta^2 + 6*zeta + 6)*q^173 + 1/3*(-14*zeta^2 + 28*zeta + 14)*q^175 + 
1/2*(9*zeta^2 - 6*zeta - 6)*q^177 + 1/2*(-7*zeta^2 + 21*zeta + 21)*q^179 + 
1/3*(10*zeta^2 + 5*zeta - 30)*q^181 + 1/6*(2*zeta^2 + zeta - 6)*q^183 + 
1/2*(zeta^2 - 3*zeta - 3)*q^185 + 1/2*(-9*zeta^2 + 6*zeta + 6)*q^187 + 
1/6*(35*zeta^2 + 35*zeta - 70)*q^189 + 1/2*(-9*zeta^2 + 6*zeta + 6)*q^191 + 
1/6*(-11*zeta^2 + 33*zeta + 33)*q^193 + (-2*zeta^2 - zeta + 6)*q^195 + 
(-6*zeta^2 - 3*zeta + 18)*q^197 + 1/6*(7*zeta^2 - 21*zeta - 21)*q^199 + 
1/6*(-21*zeta^2 + 14*zeta + 14)*q^201 + (7*zeta^2 + 7*zeta - 14)*q^203 + 
(9*zeta^2 - 6*zeta - 6)*q^205 + (zeta^2 - 3*zeta - 3)*q^207 + 1/2*(-2*zeta^2 - 
zeta + 6)*q^209 + 1/3*(4*zeta^2 + 2*zeta - 12)*q^211 + (-6*zeta^2 + 4*zeta + 
4)*q^215 + 1/6*(49*zeta^2 - 98*zeta - 49)*q^217 + 1/6*(-3*zeta^2 + 2*zeta + 
2)*q^219 + (-zeta^2 + 3*zeta + 3)*q^221 + 1/3*(-8*zeta^2 - 4*zeta + 24)*q^223 + 
1/3*(8*zeta^2 + 4*zeta - 24)*q^225 + 1/2*(zeta^2 - 3*zeta - 3)*q^227 + 
1/6*(33*zeta^2 - 22*zeta - 22)*q^229 + 1/2*(-14*zeta^2 + 7*zeta + 21)*q^231 + 
1/2*(-21*zeta^2 + 14*zeta + 14)*q^233 + 1/2*(9*zeta^2 - 27*zeta - 27)*q^235 + 
1/6*(26*zeta^2 + 13*zeta - 78)*q^237 + (4*zeta^2 + 2*zeta - 12)*q^239 + 
1/6*(zeta^2 - 3*zeta - 3)*q^241 + 1/3*(24*zeta^2 - 16*zeta - 16)*q^243 + 
1/2*(-28*zeta^2 - 7*zeta + 49)*q^245 + 1/3*(-3*zeta^2 + 2*zeta + 2)*q^247 + 
(-2*zeta^2 + 6*zeta + 6)*q^249 + 1/2*(6*zeta^2 + 3*zeta - 18)*q^253 + 
1/2*(-3*zeta^2 + 9*zeta + 9)*q^255 + 1/2*(3*zeta^2 - 2*zeta - 2)*q^257 + 
1/6*(-14*zeta^2 + 7*zeta + 21)*q^259 + (6*zeta^2 - 4*zeta - 4)*q^261 + 
1/2*(zeta^2 - 3*zeta - 3)*q^263 + 1/2*(-6*zeta^2 - 3*zeta + 18)*q^265 + 
1/2*(-10*zeta^2 - 5*zeta + 30)*q^267 + 1/2*(-zeta^2 + 3*zeta + 3)*q^269 + 
1/6*(33*zeta^2 - 22*zeta - 22)*q^271 + 1/3*(-7*zeta^2 + 14*zeta + 7)*q^273 + 
(-6*zeta^2 + 4*zeta + 4)*q^275 + 1/6*(13*zeta^2 - 39*zeta - 39)*q^277 + 
1/3*(-14*zeta^2 - 7*zeta + 42)*q^279 + (-10*zeta^2 - 5*zeta + 30)*q^281 + 
1/6*(-29*zeta^2 + 87*zeta + 87)*q^283 + 1/2*(-3*zeta^2 + 2*zeta + 2)*q^285 + 
(-7*zeta^2 - 7*zeta + 14)*q^287 + 1/3*(-12*zeta^2 + 8*zeta + 8)*q^289 + 
1/3*(5*zeta^2 - 15*zeta - 15)*q^291 + (-2*zeta^2 - zeta + 6)*q^293 + 
1/2*(-18*zeta^2 - 9*zeta + 54)*q^295 + 1/2*(-5*zeta^2 + 15*zeta + 15)*q^297 + 
(3*zeta^2 - 2*zeta - 2)*q^299 + 1/3*(14*zeta^2 + 14*zeta - 28)*q^301 + 
1/2*(15*zeta^2 - 10*zeta - 10)*q^303 + 1/2*(zeta^2 - 3*zeta - 3)*q^305 + 
1/3*(28*zeta^2 + 14*zeta - 84)*q^307 + 1/6*(-22*zeta^2 - 11*zeta + 66)*q^309 + 
1/2*(9*zeta^2 - 27*zeta - 27)*q^311 + 1/6*(69*zeta^2 - 46*zeta - 46)*q^313 + 
(7*zeta^2 - 14*zeta - 7)*q^315 + 1/2*(-9*zeta^2 + 6*zeta + 6)*q^317 + (-3*zeta^2
+ 9*zeta + 9)*q^319 + 1/2*(-10*zeta^2 - 5*zeta + 30)*q^321 + 1/2*(2*zeta^2 + 
zeta - 6)*q^323 + 1/3*(-4*zeta^2 + 12*zeta + 12)*q^325 + 1/6*(-3*zeta^2 + 2*zeta
+ 2)*q^327 + 1/2*(-42*zeta^2 + 21*zeta + 63)*q^329 + 1/6*(-39*zeta^2 + 26*zeta +
26)*q^331 + 1/3*(-zeta^2 + 3*zeta + 3)*q^333 + 1/2*(14*zeta^2 + 7*zeta - 
42)*q^335 + 1/3*(34*zeta^2 + 17*zeta - 102)*q^337 + (-zeta^2 + 3*zeta + 3)*q^339
+ 1/2*(21*zeta^2 - 14*zeta - 14)*q^341 + 1/6*(77*zeta^2 - 91*zeta - 98)*q^343 + 
1/2*(9*zeta^2 - 6*zeta - 6)*q^345 + 1/2*(-3*zeta^2 + 9*zeta + 9)*q^347 + 
1/3*(-26*zeta^2 - 13*zeta + 78)*q^349 + 1/3*(10*zeta^2 + 5*zeta - 30)*q^351 + 
1/2*(7*zeta^2 - 21*zeta - 21)*q^353 + 1/2*(14*zeta^2 - 7*zeta - 21)*q^357 + 
1/2*(15*zeta^2 - 10*zeta - 10)*q^359 + (3*zeta^2 - 9*zeta - 9)*q^361 + 
1/3*(2*zeta^2 + zeta - 6)*q^363 + O(q^364), (zeta + 1)*q + (4*zeta^2 - 8)*q^3 + 
2*zeta*q^5 + (-5*zeta^2 + 15)*q^9 + (4*zeta^2 - 4*zeta)*q^11 + (6*zeta^2 - 
6*zeta - 6)*q^13 + (-4*zeta - 4)*q^15 + (-2*zeta^2 + 4)*q^17 + 4*zeta*q^19 + 
(4*zeta^2 - 12)*q^23 + (-3*zeta^2 + 3*zeta)*q^25 + (-8*zeta^2 + 8*zeta + 8)*q^27
+ (8*zeta + 8)*q^29 - 16*zeta*q^33 + (8*zeta^2 - 24)*q^37 + (-12*zeta^2 + 
12*zeta)*q^39 + (-10*zeta^2 + 10*zeta + 10)*q^41 + (-4*zeta - 4)*q^43 + 
(-10*zeta^2 + 20)*q^45 + 8*zeta*q^47 + (4*zeta^2 - 12)*q^51 + (10*zeta^2 - 
10*zeta)*q^53 + (8*zeta^2 - 8*zeta - 8)*q^55 + (-8*zeta - 8)*q^57 + (-20*zeta^2 
+ 40)*q^59 - 10*zeta*q^61 + (-6*zeta^2 + 18)*q^65 + (16*zeta^2 - 16*zeta - 
16)*q^69 + (10*zeta^2 - 20)*q^73 + 12*zeta*q^75 + (-8*zeta^2 + 24)*q^79 + 
(zeta^2 - zeta)*q^81 + (-20*zeta^2 + 20*zeta + 20)*q^83 + (2*zeta + 2)*q^85 + 
(32*zeta^2 - 64)*q^87 + 10*zeta*q^89 + (4*zeta^2 - 4*zeta)*q^95 + (-2*zeta^2 + 
2*zeta + 2)*q^97 + (20*zeta + 20)*q^99 + (18*zeta^2 - 36)*q^101 - 16*zeta*q^103 
+ (-8*zeta^2 + 24)*q^107 + (-8*zeta^2 + 8*zeta)*q^109 + (32*zeta^2 - 32*zeta - 
32)*q^111 + (6*zeta + 6)*q^113 + (8*zeta^2 - 16)*q^115 + 30*zeta*q^117 + 
(-5*zeta^2 + 15)*q^121 + (20*zeta^2 - 20*zeta)*q^123 + (-16*zeta^2 + 16*zeta + 
16)*q^125 + (-20*zeta - 20)*q^127 + (-16*zeta^2 + 32)*q^129 - 12*zeta*q^131 + 
(8*zeta^2 - 24)*q^135 + (4*zeta^2 - 4*zeta - 4)*q^139 + (-16*zeta - 16)*q^141 + 
(-24*zeta^2 + 48)*q^143 + 16*zeta*q^145 + (-10*zeta^2 + 30)*q^149 + (-4*zeta^2 +
4*zeta)*q^151 + (10*zeta^2 - 10*zeta - 10)*q^153 + (-10*zeta^2 + 20)*q^157 - 
40*zeta*q^159 + (-4*zeta^2 + 12)*q^163 + (-16*zeta^2 + 16*zeta)*q^165 + 
(-8*zeta^2 + 8*zeta + 8)*q^167 + (5*zeta + 5)*q^169 + (-20*zeta^2 + 40)*q^171 - 
6*zeta*q^173 + (40*zeta^2 - 120)*q^177 + (-30*zeta^2 + 30*zeta + 30)*q^181 + 
(20*zeta + 20)*q^183 + (16*zeta^2 - 32)*q^185 + 8*zeta*q^187 + (16*zeta^2 - 
48)*q^191 + (-10*zeta^2 + 10*zeta)*q^193 + (-24*zeta^2 + 24*zeta + 24)*q^195 + 
(-10*zeta - 10)*q^197 + (10*zeta^2 - 30)*q^205 + (-20*zeta^2 + 20*zeta)*q^207 + 
(16*zeta^2 - 16*zeta - 16)*q^209 + (24*zeta + 24)*q^211 - 8*zeta*q^215 + 
(-20*zeta^2 + 60)*q^219 + (6*zeta^2 - 6*zeta)*q^221 + (24*zeta^2 - 24*zeta - 
24)*q^223 + (-15*zeta - 15)*q^225 + (-12*zeta^2 + 24)*q^227 - 30*zeta*q^229 + 
(8*zeta^2 - 8*zeta)*q^235 + (-32*zeta^2 + 32*zeta + 32)*q^237 + (-12*zeta - 
12)*q^239 + (-18*zeta^2 + 36)*q^241 + 20*zeta*q^243 + (-12*zeta^2 + 36)*q^247 + 
(40*zeta^2 - 40*zeta)*q^249 + (28*zeta^2 - 28*zeta - 28)*q^251 + (-16*zeta - 
16)*q^253 + (8*zeta^2 - 16)*q^255 + 30*zeta*q^257 + (-40*zeta^2 + 120)*q^261 + 
(-24*zeta^2 + 24*zeta)*q^263 + (20*zeta^2 - 20*zeta - 20)*q^265 + (-20*zeta - 
20)*q^267 + (26*zeta^2 - 52)*q^269 + 40*zeta*q^271 + (12*zeta^2 - 36)*q^275 + 
(22*zeta^2 - 22*zeta)*q^277 + (16*zeta + 16)*q^281 + (4*zeta^2 - 8)*q^283 - 
16*zeta*q^285 + (15*zeta^2 - 45)*q^289 + (4*zeta^2 - 4*zeta)*q^291 + (46*zeta^2 
- 46*zeta - 46)*q^293 + (20*zeta + 20)*q^295 + (32*zeta^2 - 64)*q^297 - 
24*zeta*q^299 + (-36*zeta^2 + 108)*q^303 + (-10*zeta^2 + 10*zeta)*q^305 + 
(-28*zeta^2 + 28*zeta + 28)*q^307 + (32*zeta + 32)*q^309 + (32*zeta^2 - 
64)*q^311 + 6*zeta*q^313 + (2*zeta^2 - 6)*q^317 + (32*zeta^2 - 32*zeta)*q^319 + 
(-32*zeta^2 + 32*zeta + 32)*q^321 + (4*zeta + 4)*q^323 + (18*zeta^2 - 36)*q^325 
+ 32*zeta*q^327 + (20*zeta^2 - 60)*q^331 + (-40*zeta^2 + 40*zeta)*q^333 + 
(8*zeta + 8)*q^337 + (24*zeta^2 - 48)*q^339 + (-16*zeta^2 + 48)*q^345 + 
(-12*zeta^2 + 12*zeta)*q^347 + (-6*zeta^2 + 6*zeta + 6)*q^349 + (-24*zeta - 
24)*q^351 + (-14*zeta^2 + 28)*q^353 + (20*zeta^2 - 60)*q^359 + (-11*zeta^2 + 
11*zeta)*q^361 + (-20*zeta^2 + 20*zeta + 20)*q^363 + O(q^364), zeta^2*q + 
(2*zeta^2 + 2*zeta - 8)*q^3 + (-zeta^2 + 2*zeta + 3)*q^5 + (-5*zeta^2 + 5*zeta +
15)*q^9 + (-4*zeta + 8)*q^11 + (6*zeta^2 - 3*zeta - 3)*q^13 - 4*zeta^2*q^15 + 
(-zeta^2 - zeta + 4)*q^17 + (-2*zeta^2 + 4*zeta + 6)*q^19 + (4*zeta^2 - 4*zeta -
12)*q^23 + (3*zeta - 6)*q^25 + (-8*zeta^2 + 4*zeta + 4)*q^27 + 8*zeta^2*q^29 + 
(8*zeta^2 - 16*zeta - 24)*q^33 + (8*zeta^2 - 8*zeta - 24)*q^37 + (12*zeta - 
24)*q^39 + (-10*zeta^2 + 5*zeta + 5)*q^41 - 4*zeta^2*q^43 + (-5*zeta^2 - 5*zeta 
+ 20)*q^45 + (-4*zeta^2 + 8*zeta + 12)*q^47 + (4*zeta^2 - 4*zeta - 12)*q^51 + 
(-10*zeta + 20)*q^53 + (8*zeta^2 - 4*zeta - 4)*q^55 - 8*zeta^2*q^57 + 
(-10*zeta^2 - 10*zeta + 40)*q^59 + (5*zeta^2 - 10*zeta - 15)*q^61 + (-6*zeta^2 +
6*zeta + 18)*q^65 + (16*zeta^2 - 8*zeta - 8)*q^69 + (5*zeta^2 + 5*zeta - 
20)*q^73 + (-6*zeta^2 + 12*zeta + 18)*q^75 + (-8*zeta^2 + 8*zeta + 24)*q^79 + 
(-zeta + 2)*q^81 + (-20*zeta^2 + 10*zeta + 10)*q^83 + 2*zeta^2*q^85 + (16*zeta^2
+ 16*zeta - 64)*q^87 + (-5*zeta^2 + 10*zeta + 15)*q^89 + (-4*zeta + 8)*q^95 + 
(-2*zeta^2 + zeta + 1)*q^97 + 20*zeta^2*q^99 + (9*zeta^2 + 9*zeta - 36)*q^101 + 
(8*zeta^2 - 16*zeta - 24)*q^103 + (-8*zeta^2 + 8*zeta + 24)*q^107 + (8*zeta - 
16)*q^109 + (32*zeta^2 - 16*zeta - 16)*q^111 + 6*zeta^2*q^113 + (4*zeta^2 + 
4*zeta - 16)*q^115 + (-15*zeta^2 + 30*zeta + 45)*q^117 + (-5*zeta^2 + 5*zeta + 
15)*q^121 + (-20*zeta + 40)*q^123 + (-16*zeta^2 + 8*zeta + 8)*q^125 - 
20*zeta^2*q^127 + (-8*zeta^2 - 8*zeta + 32)*q^129 + (6*zeta^2 - 12*zeta - 
18)*q^131 + (8*zeta^2 - 8*zeta - 24)*q^135 + (4*zeta^2 - 2*zeta - 2)*q^139 - 
16*zeta^2*q^141 + (-12*zeta^2 - 12*zeta + 48)*q^143 + (-8*zeta^2 + 16*zeta + 
24)*q^145 + (-10*zeta^2 + 10*zeta + 30)*q^149 + (4*zeta - 8)*q^151 + (10*zeta^2 
- 5*zeta - 5)*q^153 + (-5*zeta^2 - 5*zeta + 20)*q^157 + (20*zeta^2 - 40*zeta - 
60)*q^159 + (-4*zeta^2 + 4*zeta + 12)*q^163 + (16*zeta - 32)*q^165 + (-8*zeta^2 
+ 4*zeta + 4)*q^167 + 5*zeta^2*q^169 + (-10*zeta^2 - 10*zeta + 40)*q^171 + 
(3*zeta^2 - 6*zeta - 9)*q^173 + (40*zeta^2 - 40*zeta - 120)*q^177 + (-30*zeta^2 
+ 15*zeta + 15)*q^181 + 20*zeta^2*q^183 + (8*zeta^2 + 8*zeta - 32)*q^185 + 
(-4*zeta^2 + 8*zeta + 12)*q^187 + (16*zeta^2 - 16*zeta - 48)*q^191 + (10*zeta - 
20)*q^193 + (-24*zeta^2 + 12*zeta + 12)*q^195 - 10*zeta^2*q^197 + (10*zeta^2 - 
10*zeta - 30)*q^205 + (20*zeta - 40)*q^207 + (16*zeta^2 - 8*zeta - 8)*q^209 + 
24*zeta^2*q^211 + (4*zeta^2 - 8*zeta - 12)*q^215 + (-20*zeta^2 + 20*zeta + 
60)*q^219 + (-6*zeta + 12)*q^221 + (24*zeta^2 - 12*zeta - 12)*q^223 - 
15*zeta^2*q^225 + (-6*zeta^2 - 6*zeta + 24)*q^227 + (15*zeta^2 - 30*zeta - 
45)*q^229 + (-8*zeta + 16)*q^235 + (-32*zeta^2 + 16*zeta + 16)*q^237 - 
12*zeta^2*q^239 + (-9*zeta^2 - 9*zeta + 36)*q^241 + (-10*zeta^2 + 20*zeta + 
30)*q^243 + (-12*zeta^2 + 12*zeta + 36)*q^247 + (-40*zeta + 80)*q^249 + 
(28*zeta^2 - 14*zeta - 14)*q^251 - 16*zeta^2*q^253 + (4*zeta^2 + 4*zeta - 
16)*q^255 + (-15*zeta^2 + 30*zeta + 45)*q^257 + (-40*zeta^2 + 40*zeta + 
120)*q^261 + (24*zeta - 48)*q^263 + (20*zeta^2 - 10*zeta - 10)*q^265 - 
20*zeta^2*q^267 + (13*zeta^2 + 13*zeta - 52)*q^269 + (-20*zeta^2 + 40*zeta + 
60)*q^271 + (12*zeta^2 - 12*zeta - 36)*q^275 + (-22*zeta + 44)*q^277 + 
16*zeta^2*q^281 + (2*zeta^2 + 2*zeta - 8)*q^283 + (8*zeta^2 - 16*zeta - 
24)*q^285 + (15*zeta^2 - 15*zeta - 45)*q^289 + (-4*zeta + 8)*q^291 + (46*zeta^2 
- 23*zeta - 23)*q^293 + 20*zeta^2*q^295 + (16*zeta^2 + 16*zeta - 64)*q^297 + 
(12*zeta^2 - 24*zeta - 36)*q^299 + (-36*zeta^2 + 36*zeta + 108)*q^303 + (10*zeta
- 20)*q^305 + (-28*zeta^2 + 14*zeta + 14)*q^307 + 32*zeta^2*q^309 + (16*zeta^2 +
16*zeta - 64)*q^311 + (-3*zeta^2 + 6*zeta + 9)*q^313 + (2*zeta^2 - 2*zeta - 
6)*q^317 + (-32*zeta + 64)*q^319 + (-32*zeta^2 + 16*zeta + 16)*q^321 + 
4*zeta^2*q^323 + (9*zeta^2 + 9*zeta - 36)*q^325 + (-16*zeta^2 + 32*zeta + 
48)*q^327 + (20*zeta^2 - 20*zeta - 60)*q^331 + (40*zeta - 80)*q^333 + 
8*zeta^2*q^337 + (12*zeta^2 + 12*zeta - 48)*q^339 + (-16*zeta^2 + 16*zeta + 
48)*q^345 + (12*zeta - 24)*q^347 + (-6*zeta^2 + 3*zeta + 3)*q^349 - 
24*zeta^2*q^351 + (-7*zeta^2 - 7*zeta + 28)*q^353 + (20*zeta^2 - 20*zeta - 
60)*q^359 + (11*zeta - 22)*q^361 + (-20*zeta^2 + 10*zeta + 10)*q^363 + O(q^364)]
;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_14A3 := Curve(P_Q, [ PolynomialRing(ext<K|Polynomial(K, [1, -2, 
-1, 1])> where K is RationalField(), 3) |
x[1]^2 + 1/3*x[1]*x[2] + 2/3*x[1]*x[3] - 3/4*x[2]^2 + 13/12*x[2]*x[3] - 
5/18*x[3]^2
]);
