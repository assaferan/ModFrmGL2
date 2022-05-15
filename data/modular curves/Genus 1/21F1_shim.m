
    /****************************************************
    Loading this file in magma loads the objects fs_21F1_shim 
    and X_21F1_shim. fs_21F1_shim is a list of power series which form 
    a basis for the space of cusp forms. X_21F1_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_21F1_shim := [Kq | q - q^2 + q^3 - q^4 - 2*q^5 - q^6 - q^7 + 
3*q^8 + q^9 + 2*q^10 + 4*q^11 - q^12 - 2*q^13 + q^14 - 2*q^15 - q^16 - 6*q^17 - 
q^18 + 4*q^19 + 2*q^20 - q^21 - 4*q^22 + 3*q^24 - q^25 + 2*q^26 + q^27 + q^28 - 
2*q^29 + 2*q^30 - 5*q^32 + 4*q^33 + 6*q^34 + 2*q^35 - q^36 + 6*q^37 - 4*q^38 - 
2*q^39 - 6*q^40 + 2*q^41 + q^42 - 4*q^43 - 4*q^44 - 2*q^45 - q^48 + q^49 + q^50 
- 6*q^51 + 2*q^52 + 6*q^53 - q^54 - 8*q^55 - 3*q^56 + 4*q^57 + 2*q^58 + 12*q^59 
+ 2*q^60 + O(q^61)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_21F1_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3, 
"grevlex") |
-x[1]^3 + x[2]^2*x[3] - 1269*x[1]*x[3]^2 + 3834*x[3]^3
]);
