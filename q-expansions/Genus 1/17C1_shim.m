
    /****************************************************
    Loading this file in magma loads the objects fs_17C1_shim 
    and X_17C1_shim. fs_17C1_shim is a list of power series which form 
    a basis for the space of cusp forms. X_17C1_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_17C1_shim := [Kq | q - q^2 - q^4 - 2*q^5 + 4*q^7 + 3*q^8 - 
3*q^9 + 2*q^10 - 2*q^13 - 4*q^14 - q^16 + q^17 + 3*q^18 - 4*q^19 + 2*q^20 + 
4*q^23 - q^25 + 2*q^26 - 4*q^28 + 6*q^29 + 4*q^31 - 5*q^32 - q^34 - 8*q^35 + 
3*q^36 - 2*q^37 + 4*q^38 - 6*q^40 - 6*q^41 + 4*q^43 + 6*q^45 - 4*q^46 + 9*q^49 +
q^50 + 2*q^52 + 6*q^53 + 12*q^56 - 6*q^58 - 12*q^59 - 10*q^61 - 4*q^62 - 12*q^63
+ 7*q^64 + 4*q^65 + 4*q^67 + O(q^68)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_17C1_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3, 
"grevlex") |
-x[1]^3 + x[2]^2*x[3] + 891*x[1]*x[3]^2 - 4374*x[3]^3
]);
