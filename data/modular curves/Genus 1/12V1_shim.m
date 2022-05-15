
    /****************************************************
    Loading this file in magma loads the objects fs_12V1_shim 
    and X_12V1_shim. fs_12V1_shim is a list of power series which form 
    a basis for the space of cusp forms. X_12V1_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_12V1_shim := [Kq | q - q^3 - 2*q^5 + q^9 + 4*q^11 - 2*q^13 + 
2*q^15 + 2*q^17 - 4*q^19 - 8*q^23 - q^25 - q^27 + 6*q^29 + 8*q^31 - 4*q^33 + 
6*q^37 + 2*q^39 - 6*q^41 + 4*q^43 - 2*q^45 - 7*q^49 - 2*q^51 - 2*q^53 - 8*q^55 +
4*q^57 + 4*q^59 - 2*q^61 + 4*q^65 - 4*q^67 + 8*q^69 + 8*q^71 + 10*q^73 + q^75 - 
8*q^79 + q^81 - 4*q^83 - 4*q^85 - 6*q^87 - 6*q^89 - 8*q^93 + 8*q^95 + 2*q^97 + 
4*q^99 - 18*q^101 + 16*q^103 - 12*q^107 - 2*q^109 - 6*q^111 + 18*q^113 + 
16*q^115 - 2*q^117 + 5*q^121 + 6*q^123 + 12*q^125 - 8*q^127 - 4*q^129 - 4*q^131 
+ 2*q^135 - 6*q^137 - 12*q^139 - 8*q^143 - 12*q^145 + 7*q^147 + 14*q^149 - 
16*q^151 + 2*q^153 - 16*q^155 - 2*q^157 + 2*q^159 + 12*q^163 + 8*q^165 + 
24*q^167 - 9*q^169 - 4*q^171 + 6*q^173 - 4*q^177 + O(q^178)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_12V1_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3, 
"grevlex") |
-x[1]^3 + x[2]^2*x[3] - 864*x[1]*x[3]^2 - 12096*x[3]^3
]);
