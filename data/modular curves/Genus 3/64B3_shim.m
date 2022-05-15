
    /****************************************************
    Loading this file in magma loads the objects fs_64B3_shim 
    and X_64B3_shim. fs_64B3_shim is a list of power series which form 
    a basis for the space of cusp forms. X_64B3_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_64B3_shim := [Kq | q - 3*q^9 + 2*q^17 - q^25 + 10*q^41 - 7*q^49
+ O(q^63), q^2 - 2*q^10 - 3*q^18 + 6*q^26 + 2*q^34 - q^50 - 10*q^58 + O(q^63), 
q^5 - 3*q^13 + 5*q^29 + q^37 - 3*q^45 - 7*q^53 + 5*q^61 + O(q^63)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_64B3_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3) |
x[1]^3*x[3] + 4*x[1]*x[3]^3 - x[2]^4
]);
