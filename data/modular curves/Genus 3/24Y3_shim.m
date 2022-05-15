
    /****************************************************
    Loading this file in magma loads the objects fs_24Y3_shim 
    and X_24Y3_shim. fs_24Y3_shim is a list of power series which form 
    a basis for the space of cusp forms. X_24Y3_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_24Y3_shim := [Kq | q - q^4 - 2*q^5 - q^6 - q^7 + 2*q^8 + 2*q^10
+ 2*q^11 + q^12 + q^13 + 2*q^15 - 2*q^16 - 4*q^19 - 2*q^20 - q^21 - 2*q^23 - 
4*q^26 - q^27 + 2*q^28 + 6*q^29 + 5*q^31 - 2*q^33 + 2*q^35 + q^36 - q^37 + 
4*q^38 - q^39 - 2*q^41 + 2*q^42 + 4*q^43 - 6*q^47 - 2*q^48 - 5*q^49 - 2*q^51 + 
4*q^52 - 4*q^53 + q^54 - 4*q^55 - 4*q^56 + 4*q^57 - 6*q^58 - 2*q^60 + O(q^61), 
q^2 - q^4 - 2*q^5 + q^7 + q^9 + 2*q^11 - q^12 + q^13 - 2*q^14 + 2*q^16 + 2*q^17 
- q^18 - 4*q^19 + 2*q^20 - q^21 - 6*q^23 + 2*q^24 - q^25 - q^27 + 2*q^28 + 
6*q^29 + 2*q^30 + 3*q^31 - 4*q^32 - 2*q^33 - 2*q^34 + 2*q^35 + q^36 - q^37 + 
3*q^39 - 4*q^40 - 4*q^41 + 4*q^43 + 4*q^46 + 6*q^47 - 2*q^48 - 2*q^49 + q^50 - 
2*q^51 - 4*q^52 - 4*q^53 - 4*q^55 - 2*q^60 + O(q^61), q^3 - q^4 - q^6 - q^7 + 
2*q^8 - q^9 + 2*q^10 - 2*q^11 + q^12 + 3*q^13 - 2*q^16 - 2*q^17 - 2*q^20 - q^21 
+ 6*q^23 + q^25 - 4*q^26 + 2*q^28 - 3*q^31 + 2*q^33 + 2*q^35 + q^36 - 7*q^37 + 
4*q^38 - 3*q^39 + 4*q^41 + 2*q^42 + 2*q^45 - 6*q^47 - 2*q^48 + 2*q^49 + 4*q^52 -
2*q^53 + q^54 + 4*q^55 - 4*q^56 - 6*q^58 - 4*q^59 - 2*q^60 + O(q^61)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_24Y3_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3) |
x[1]^3*x[3] - x[1]^2*x[2]^2 - x[1]^2*x[3]^2 + x[1]*x[2]^3 - x[1]*x[2]^2*x[3] - 
3*x[1]*x[2]*x[3]^2 + x[2]^3*x[3] + 2*x[2]^2*x[3]^2 + x[2]*x[3]^3
]);
