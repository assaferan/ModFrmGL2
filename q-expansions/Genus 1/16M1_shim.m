
    /****************************************************
    Loading this file in magma loads the objects fs_16M1_shim 
    and X_16M1_shim. fs_16M1_shim is a list of power series which form 
    a basis for the space of cusp forms. X_16M1_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_16M1_shim := [Kq | q - 2*q^5 - 3*q^9 + 6*q^13 + 2*q^17 - q^25 -
10*q^29 - 2*q^37 + 10*q^41 + 6*q^45 - 7*q^49 + 14*q^53 - 10*q^61 - 12*q^65 - 
6*q^73 + 9*q^81 - 4*q^85 + 10*q^89 + 18*q^97 - 2*q^101 + 6*q^109 - 14*q^113 - 
18*q^117 - 11*q^121 + 12*q^125 - 22*q^137 + 20*q^145 + 14*q^149 - 6*q^153 + 
22*q^157 + 23*q^169 - 26*q^173 - 18*q^181 + O(q^182)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_16M1_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3, 
"grevlex") |
-x[1]^3 + x[2]^2*x[3] + 1296*x[1]*x[3]^2
]);
