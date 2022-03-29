
    /****************************************************
    Loading this file in magma loads the objects fs_49A1_shim 
    and X_49A1_shim. fs_49A1_shim is a list of power series which form 
    a basis for the space of cusp forms. X_49A1_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_49A1_shim := [Kq | q + q^2 - q^4 - 3*q^8 - 3*q^9 + 4*q^11 - 
q^16 - 3*q^18 + 4*q^22 + 8*q^23 - 5*q^25 + 2*q^29 + 5*q^32 + 3*q^36 - 6*q^37 - 
12*q^43 - 4*q^44 + 8*q^46 - 5*q^50 - 10*q^53 + O(q^55)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_49A1_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3, 
"grevlex") |
-x[1]^3 + x[2]^2*x[3] + 2835*x[1]*x[3]^2 + 71442*x[3]^3
]);
