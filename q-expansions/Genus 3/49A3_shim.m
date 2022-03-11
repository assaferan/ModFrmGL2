
    /****************************************************
    Loading this file in magma loads the objects fs_49A3_shim 
    and X_49A3_shim. fs_49A3_shim is a list of power series which form 
    a basis for the space of cusp forms. X_49A3_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_49A3_shim := [Kq | q - 3*q^8 + 4*q^22 + 2*q^29 + 3*q^36 - 
12*q^43 - 5*q^50 + 7*q^64 + 16*q^71 - 8*q^92 - 12*q^99 - 10*q^106 + O(q^109), 
q^2 - 3*q^9 - q^16 + 8*q^23 - 6*q^37 - 4*q^44 + 2*q^58 + 9*q^72 + 8*q^79 - 
12*q^86 + 5*q^100 - 20*q^107 + O(q^109), q^4 - 4*q^11 + 3*q^18 + 5*q^25 - 5*q^32
- 8*q^46 + 10*q^53 - 4*q^67 + 6*q^74 - 9*q^81 + 12*q^88 + O(q^109)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_49A3_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3) |
x[1]^3*x[3] - x[1]*x[2]^3 + x[2]*x[3]^3
]);
