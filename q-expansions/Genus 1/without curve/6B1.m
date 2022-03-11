
    /****************************************************
    Loading this file in magma loads the objects fs_6B1 
    and X_6B1. fs_6B1 is a list of power series which form 
    a basis for the space of cusp forms. X_6B1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_6B1 := [Kq | q - 4*q^7 + 2*q^13 + 8*q^19 - 5*q^25 - 4*q^31 - 
10*q^37 + 8*q^43 + 9*q^49 + 14*q^61 + O(q^66)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_6B1 := Curve(P_Q, [ PolynomialRing(RationalField(), 2) | ]);
