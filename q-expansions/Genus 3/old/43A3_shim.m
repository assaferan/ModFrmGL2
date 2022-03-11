
    /****************************************************
    Loading this file in magma loads the objects fs_43A3_shim 
    and X_43A3_shim. fs_43A3_shim is a list of power series which form 
    a basis for the space of cusp forms. X_43A3_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_43A3_shim := [Kq | q + 2*q^5 - 2*q^6 - 2*q^7 - q^9 - 2*q^10 - 
q^11 + q^13 + 2*q^14 + 2*q^15 - 4*q^16 + 5*q^17 - 2*q^19 - 2*q^21 + 4*q^22 + 
q^23 + 4*q^24 + q^25 + 4*q^26 + O(q^29), q + 2*q^5 - 2*q^6 - 2*q^7 - q^9 - 
2*q^10 - q^11 + q^13 + 2*q^14 + 2*q^15 - 4*q^16 + 5*q^17 - 2*q^19 - 2*q^21 + 
4*q^22 + q^23 + 4*q^24 + q^25 + 4*q^26 + O(q^29), q^2 + q^3 - q^4 + 3*q^5 - 
3*q^6 - q^7 - q^9 - 5*q^10 - 2*q^11 + 2*q^12 + 3*q^13 + q^14 - 3*q^15 + 4*q^17 +
q^18 + 4*q^20 - q^21 + 5*q^22 + q^23 + 2*q^24 - 5*q^25 - 3*q^26 - 2*q^27 + 
O(q^29), 2*q^3 - q^4 + 4*q^5 - 3*q^6 - 2*q^7 + 2*q^8 - q^9 - 7*q^10 - 4*q^11 + 
2*q^12 + q^13 + 3*q^14 - q^15 + 2*q^17 + 2*q^18 + 2*q^19 + 4*q^20 - 3*q^21 + 
6*q^22 + 5*q^23 + 2*q^24 - q^25 - 4*q^26 - 6*q^27 + O(q^29)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_43A3_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3) |
x[1]^3*x[3] - 2*x[1]^2*x[2]^2 + 2*x[1]^2*x[2]*x[3] - 2*x[1]^2*x[3]^2 + 
x[1]*x[2]^3 + 3*x[1]*x[2]^2*x[3] - 5*x[1]*x[2]*x[3]^2 + 3*x[1]*x[3]^3 - 9*x[2]^4
+ 24*x[2]^3*x[3] - 28*x[2]^2*x[3]^2 + 16*x[2]*x[3]^3 - 4*x[3]^4
]);
