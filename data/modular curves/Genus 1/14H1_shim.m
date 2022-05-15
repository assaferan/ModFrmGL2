
    /****************************************************
    Loading this file in magma loads the objects fs_14H1_shim 
    and X_14H1_shim. fs_14H1_shim is a list of power series which form 
    a basis for the space of cusp forms. X_14H1_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_14H1_shim := [Kq | q - q^2 - 2*q^3 + q^4 + 2*q^6 + q^7 - q^8 + 
q^9 - 2*q^12 - 4*q^13 - q^14 + q^16 + 6*q^17 - q^18 + 2*q^19 - 2*q^21 + 2*q^24 -
5*q^25 + 4*q^26 + 4*q^27 + q^28 - 6*q^29 - 4*q^31 - q^32 - 6*q^34 + q^36 + 
2*q^37 - 2*q^38 + 8*q^39 + 6*q^41 + 2*q^42 + 8*q^43 - 12*q^47 - 2*q^48 + q^49 + 
5*q^50 - 12*q^51 - 4*q^52 + 6*q^53 - 4*q^54 - q^56 - 4*q^57 + 6*q^58 - 6*q^59 + 
8*q^61 + 4*q^62 + q^63 + q^64 + O(q^67)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_14H1_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3, 
"grevlex") |
-x[1]^3 + x[2]^2*x[3] + 675*x[1]*x[3]^2 - 13662*x[3]^3
]);
