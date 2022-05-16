
    /****************************************************
    Loading this file in magma loads the objects fs_7A3_shim 
    and X_7A3_shim. fs_7A3_shim is a list of power series which form 
    a basis for the space of cusp forms. X_7A3_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_7A3_shim := [Kq | q - 3*q^8 + 4*q^22 + 2*q^29 + 3*q^36 - 
12*q^43 - 5*q^50 + 7*q^64 + 16*q^71 - 8*q^92 - 12*q^99 - 10*q^106 + 2*q^113 + 
16*q^127 + 4*q^134 + 6*q^148 + 9*q^162 - 13*q^169 - 4*q^176 - 26*q^197 - 
12*q^211 + 18*q^218 + 15*q^225 - 6*q^232 + 16*q^239 + 32*q^253 - 10*q^274 - 
26*q^281 - 15*q^288 - 24*q^302 - 8*q^316 + 30*q^337 + 36*q^344 + 4*q^358 - 
12*q^379 + 18*q^386 + 5*q^400 - 24*q^407 - 24*q^414 - 26*q^421 + 20*q^428 + 
2*q^449 - 40*q^463 + 30*q^477 - 5*q^484 + 44*q^491 - 11*q^512 + 32*q^526 + 
44*q^547 - 10*q^554 - 48*q^568 - 40*q^575 - 22*q^596 - 12*q^603 - 26*q^617 + 
O(q^623), q^2 - 3*q^9 - q^16 + 8*q^23 - 6*q^37 - 4*q^44 + 2*q^58 + 9*q^72 + 
8*q^79 - 12*q^86 + 5*q^100 - 20*q^107 + 5*q^121 - 3*q^128 + 16*q^142 + 22*q^149 
- 20*q^163 - 24*q^184 + 8*q^191 - 12*q^198 + 10*q^212 + 2*q^226 + 22*q^233 + 
16*q^254 - 6*q^261 - 4*q^268 - 20*q^275 - 17*q^289 + 18*q^296 - 34*q^317 - 
9*q^324 + 36*q^331 - 13*q^338 + 20*q^352 + 8*q^359 + 22*q^373 + 36*q^387 - 
26*q^394 - 34*q^401 - 12*q^422 - 18*q^436 - 20*q^443 + 15*q^450 - 6*q^457 - 
2*q^464 + 16*q^478 + 36*q^499 + 32*q^506 - 34*q^541 + 10*q^548 - 26*q^562 + 
22*q^569 - 21*q^576 - 40*q^583 + 24*q^604 + O(q^623), q^4 - 4*q^11 + 3*q^18 + 
5*q^25 - 5*q^32 - 8*q^46 + 10*q^53 - 4*q^67 + 6*q^74 - 9*q^81 + 12*q^88 - 
18*q^109 + 2*q^116 + 10*q^137 - 3*q^144 + 24*q^151 - 8*q^158 - 12*q^172 - 
4*q^179 - 18*q^193 - 15*q^200 + 24*q^207 + 20*q^214 - 5*q^242 + 17*q^256 - 
32*q^263 + 10*q^277 + 16*q^284 - 22*q^298 - 8*q^319 + 20*q^326 - 18*q^333 - 
4*q^347 + 19*q^361 + 8*q^368 - 8*q^382 + 38*q^389 - 12*q^396 - 30*q^424 - 
32*q^431 + 2*q^452 - 22*q^466 + 48*q^473 + 24*q^487 + 16*q^508 + 6*q^522 - 
41*q^529 + 12*q^536 + 20*q^550 - 46*q^557 - 4*q^571 + 17*q^578 - 6*q^592 - 
32*q^599 + 38*q^613 + O(q^623)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_7A3_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3) |
x[1]^3*x[3] - x[1]*x[2]^3 + x[2]*x[3]^3
]);