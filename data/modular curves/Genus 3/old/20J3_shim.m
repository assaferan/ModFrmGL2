
    /****************************************************
    Loading this file in magma loads the objects fs_20J3_shim 
    and X_20J3_shim. fs_20J3_shim is a list of power series which form 
    a basis for the space of cusp forms. X_20J3_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_20J3_shim := [Kq | q + q^5 - 4*q^7 - 3*q^9 + 4*q^11 - 2*q^13 + 
2*q^17 + 4*q^19 + 4*q^23 + q^25 - 2*q^29 - 8*q^31 - 4*q^35 + 6*q^37 - 6*q^41 - 
8*q^43 - 3*q^45 + 4*q^47 + 9*q^49 + 6*q^53 + 4*q^55 - 4*q^59 - 2*q^61 + 12*q^63 
- 2*q^65 + 8*q^67 - 6*q^73 - 16*q^77 + 9*q^81 - 16*q^83 + 2*q^85 - 6*q^89 + 
O(q^90), q + q^5 - 4*q^7 - 3*q^9 + 4*q^11 - 2*q^13 + 2*q^17 + 4*q^19 + 4*q^23 + 
q^25 - 2*q^29 - 8*q^31 - 4*q^35 + 6*q^37 - 6*q^41 - 8*q^43 - 3*q^45 + 4*q^47 + 
9*q^49 + 6*q^53 + 4*q^55 - 4*q^59 - 2*q^61 + 12*q^63 - 2*q^65 + 8*q^67 - 6*q^73 
- 16*q^77 + 9*q^81 - 16*q^83 + 2*q^85 - 6*q^89 + O(q^90), q^2 - 2*q^6 - q^10 + 
2*q^14 + q^18 + 2*q^26 + 2*q^30 - 6*q^34 - 4*q^38 - 4*q^42 + 6*q^46 + q^50 + 
4*q^54 + 6*q^58 - 4*q^62 - 2*q^70 + 2*q^74 - 4*q^78 + 6*q^82 - 10*q^86 + 
O(q^90), q^3 + q^5 - 3*q^7 - 2*q^9 + 2*q^11 - 2*q^13 - q^15 + 4*q^17 + 4*q^19 + 
2*q^21 - q^23 - 2*q^27 - 4*q^29 - 2*q^31 - q^35 + 2*q^37 + 2*q^39 - 6*q^41 + 
q^43 - q^45 + 5*q^47 + 6*q^49 - 6*q^51 + 6*q^53 + 2*q^55 - 4*q^57 - 8*q^59 - 
2*q^61 + 5*q^63 + 3*q^67 + 6*q^69 + 6*q^71 - 4*q^73 + q^75 - 8*q^77 - 4*q^79 + 
10*q^81 - 11*q^83 - 2*q^85 + 6*q^87 + O(q^90)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_20J3_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3) |
x[1]*x[3] - x[2]^2 - x[3]^2
]);
