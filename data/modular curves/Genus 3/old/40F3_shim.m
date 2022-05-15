
    /****************************************************
    Loading this file in magma loads the objects fs_40F3_shim 
    and X_40F3_shim. fs_40F3_shim is a list of power series which form 
    a basis for the space of cusp forms. X_40F3_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_40F3_shim := [Kq | q + q^5 - 4*q^7 - 3*q^9 + 4*q^11 - 2*q^13 + 
2*q^17 + 4*q^19 + 4*q^23 + q^25 - 2*q^29 - 8*q^31 - 4*q^35 + 6*q^37 - 6*q^41 - 
8*q^43 - 3*q^45 + O(q^47), q + q^5 - 4*q^7 - 3*q^9 + 4*q^11 - 2*q^13 + 2*q^17 + 
4*q^19 + 4*q^23 + q^25 - 2*q^29 - 8*q^31 - 4*q^35 + 6*q^37 - 6*q^41 - 8*q^43 - 
3*q^45 + O(q^47), q^2 - 2*q^6 - q^10 + 2*q^14 + q^18 + 2*q^26 + 2*q^30 - 6*q^34 
- 4*q^38 - 4*q^42 + 6*q^46 + O(q^47), q^3 + q^5 - 3*q^7 - 2*q^9 + 2*q^11 - 
2*q^13 - q^15 + 4*q^17 + 4*q^19 + 2*q^21 - q^23 - 2*q^27 - 4*q^29 - 2*q^31 - 
q^35 + 2*q^37 + 2*q^39 - 6*q^41 + q^43 - q^45 + O(q^47)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_40F3_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3) |
x[1]*x[3] - x[2]^2 - x[3]^2
]);
