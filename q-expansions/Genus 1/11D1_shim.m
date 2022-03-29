
    /****************************************************
    Loading this file in magma loads the objects fs_11D1_shim 
    and X_11D1_shim. fs_11D1_shim is a list of power series which form 
    a basis for the space of cusp forms. X_11D1_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_11D1_shim := [Kq | q - 2*q^2 - q^3 + 2*q^4 + q^5 + 2*q^6 - 
2*q^7 - 2*q^9 - 2*q^10 + q^11 - 2*q^12 + 4*q^13 + 4*q^14 - q^15 - 4*q^16 - 
2*q^17 + 4*q^18 + 2*q^20 + 2*q^21 - 2*q^22 - q^23 - 4*q^25 - 8*q^26 + 5*q^27 - 
4*q^28 + 2*q^30 + 7*q^31 + 8*q^32 - q^33 + 4*q^34 - 2*q^35 - 4*q^36 + 3*q^37 - 
4*q^39 - 8*q^41 - 4*q^42 - 6*q^43 + 2*q^44 - 2*q^45 + 2*q^46 + 8*q^47 + 4*q^48 -
3*q^49 + 8*q^50 + 2*q^51 + 8*q^52 - 6*q^53 - 10*q^54 + O(q^55)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_11D1_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3, 
"grevlex") |
-x[1]^3 + x[2]^2*x[3] + 432*x[1]*x[3]^2 - 8208*x[3]^3
]);
