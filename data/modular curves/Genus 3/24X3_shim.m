
    /****************************************************
    Loading this file in magma loads the objects fs_24X3_shim 
    and X_24X3_shim. fs_24X3_shim is a list of power series which form 
    a basis for the space of cusp forms. X_24X3_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_24X3_shim := [Kq | q - q^3 - 2*q^5 + q^9 + 4*q^11 - 2*q^13 + 
2*q^15 + 2*q^17 - 4*q^19 - 8*q^23 - q^25 - q^27 + 6*q^29 + 8*q^31 - 4*q^33 + 
6*q^37 + 2*q^39 - 6*q^41 + 4*q^43 - 2*q^45 - 7*q^49 - 2*q^51 - 2*q^53 - 8*q^55 +
4*q^57 + 4*q^59 + O(q^61), q^2 - q^3 - q^6 - 2*q^8 + 2*q^9 + 2*q^11 + 2*q^12 - 
4*q^17 - q^18 + 2*q^24 - q^27 + 4*q^32 - 2*q^33 - 4*q^36 + 2*q^38 + 8*q^41 - 
4*q^44 - 4*q^48 - 5*q^50 + 4*q^51 + 5*q^54 - 2*q^57 - 10*q^59 + O(q^61), q^4 - 
q^5 - q^6 + q^9 + 2*q^11 - q^12 - q^13 + q^15 - 2*q^16 + q^17 + 2*q^18 - 3*q^19 
+ 2*q^22 - 4*q^23 + 2*q^24 + 2*q^25 - 3*q^27 + 3*q^29 + 4*q^31 - 4*q^33 - 4*q^34
- q^36 + 3*q^37 + q^39 - 3*q^41 + 7*q^43 - q^45 + 2*q^48 - 7*q^49 + 3*q^51 - 
q^53 - q^54 - 4*q^55 + 3*q^57 + 2*q^59 + O(q^61)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_24X3_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3) |
x[1]^3*x[3] - 2*x[1]^2*x[2]*x[3] - x[1]^2*x[3]^2 - x[1]*x[2]^3 + 
2*x[1]*x[2]^2*x[3] + 6*x[1]*x[2]*x[3]^2 + 2*x[2]^3*x[3] - 2*x[2]^2*x[3]^2 - 
4*x[2]*x[3]^3
]);
