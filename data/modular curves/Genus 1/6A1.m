
    /****************************************************
    Loading this file in magma loads the objects fs_6A1 
    and X_6A1. fs_6A1 is a list of power series which form 
    a basis for the space of cusp forms. X_6A1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_6A1 := [Kq | q - 4*q^7 + 2*q^13 + 8*q^19 - 5*q^25 - 4*q^31 + O(q^36)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_6A1 := Curve(P_Q, [ PolynomialRing(RationalField(), 3, 
"grevlex") |
-x[1]^3 + x[2]^2*x[3] + 27*x[3]^3
]);
P1<a,b> := ProjectiveSpace(Rationals(),1);
images := [ PolynomialRing(RationalField(), 3, "grevlex") |
4*x[1],
x[3]
];
Jmap_6A1 := map<X_6A1 -> P1 | images>;
