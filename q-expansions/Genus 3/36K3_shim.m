
    /****************************************************
    Loading this file in magma loads the objects fs_36K3_shim 
    and X_36K3_shim. fs_36K3_shim is a list of power series which form 
    a basis for the space of cusp forms. X_36K3_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_36K3_shim := [Kq | q - 4*q^7 + 2*q^13 + 8*q^19 - 5*q^25 - 
4*q^31 - 10*q^37 + 8*q^43 + 9*q^49 + 14*q^61 - 16*q^67 - 10*q^73 - 4*q^79 - 
8*q^91 + O(q^93), q^2 - q^5 - 2*q^8 + 5*q^17 + 2*q^20 - 4*q^26 - 7*q^29 + 4*q^32
- q^41 + 3*q^50 + 5*q^53 + 4*q^65 - 10*q^68 + 2*q^74 - 4*q^80 - 13*q^89 + 
O(q^93), q^4 - 2*q^7 - q^10 + 3*q^13 - 2*q^16 + 4*q^19 - 4*q^25 - 2*q^31 + 
5*q^34 - 6*q^37 + 2*q^40 + 4*q^43 + q^49 - 4*q^52 - 7*q^58 + 12*q^61 + 4*q^64 - 
8*q^67 + 3*q^73 - 2*q^79 - q^82 - 5*q^85 - 4*q^91 + O(q^93)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_36K3_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3) |
x[1]^3*x[3] - 3*x[1]^2*x[3]^2 - x[1]*x[2]^3 + 4*x[1]*x[3]^3 + 2*x[2]^3*x[3] - 
2*x[3]^4
]);
