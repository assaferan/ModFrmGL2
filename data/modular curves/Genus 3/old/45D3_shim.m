
    /****************************************************
    Loading this file in magma loads the objects fs_45D3_shim 
    and X_45D3_shim. fs_45D3_shim is a list of power series which form 
    a basis for the space of cusp forms. X_45D3_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_45D3_shim := [Kq | q - q^4 - q^10 - 2*q^13 - q^16 + 4*q^19 + 
4*q^22 + q^25 - 2*q^34 - 10*q^37 + 3*q^40 + 4*q^43 + O(q^47), q - q^4 - q^10 - 
2*q^13 - q^16 + 4*q^19 + 4*q^22 + q^25 - 2*q^34 - 10*q^37 + 3*q^40 + 4*q^43 + 
O(q^47), q^2 - q^5 - 3*q^8 + 4*q^11 - 2*q^17 + q^20 - 2*q^26 + 2*q^29 + 5*q^32 +
4*q^38 - 10*q^41 - 4*q^44 + O(q^47), q^3 - q^6 - q^9 - q^12 + q^15 + q^18 + 
3*q^24 + q^27 - q^30 - 4*q^33 + q^36 - 2*q^39 - q^45 + O(q^47)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_45D3_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3) |
x[1]^3*x[3] - x[1]^2*x[2]^2 + x[1]*x[2]*x[3]^2 - x[2]^3*x[3] - 5*x[3]^4
]);
