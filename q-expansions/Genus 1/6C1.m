
    /****************************************************
    Loading this file in magma loads the objects fs_6C1 
    and X_6C1. fs_6C1 is a list of power series which form 
    a basis for the space of cusp forms. X_6C1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_6C1 := [Kq | q - 4*q^7 + 2*q^13 + 8*q^19 - 5*q^25 - 4*q^31 - 
10*q^37 + 8*q^43 + 9*q^49 + 14*q^61 - 16*q^67 - 10*q^73 - 4*q^79 - 8*q^91 + 
O(q^96)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_6C1 := Curve(P_Q, [ PolynomialRing(RationalField(), 3, 
"grevlex") |
-x[1]^3 + x[2]^2*x[3] - x[3]^3
]);
P1<a,b> := ProjectiveSpace(Rationals(),1);
images := [ PolynomialRing(RationalField(), 3, "grevlex") |
64/177721566165711648130730216419*x[2]*x[3] - 
64/177721566165711648130730216419*x[3]^2,
32/31610164398427644121*x[1]*x[3]
];
Jmap_6C1 := map<X_6C1 -> P1 | images>;
