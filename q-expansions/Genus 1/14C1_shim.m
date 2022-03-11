
    /****************************************************
    Loading this file in magma loads the objects fs_14C1_shim 
    and X_14C1_shim. fs_14C1_shim is a list of power series which form 
    a basis for the space of cusp forms. X_14C1_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_14C1_shim := [Kq | q - q^2 - 2*q^3 + q^4 + 2*q^6 + q^7 - q^8 + 
q^9 - 2*q^12 - 4*q^13 - q^14 + q^16 + 6*q^17 - q^18 + 2*q^19 - 2*q^21 + O(q^23)]
;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_14C1_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3, 
"grevlex") |
-x[1]^3 + x[2]^2*x[3] - 5805*x[1]*x[3]^2 + 285714*x[3]^3
]);
