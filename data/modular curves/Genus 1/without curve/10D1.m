
    /****************************************************
    Loading this file in magma loads the objects fs_10D1 
    and X_10D1. fs_10D1 is a list of power series which form 
    a basis for the space of cusp forms. X_10D1 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_10D1 := [Kq | q - 2*q^3 - q^5 + 2*q^7 + q^9 + 2*q^13 + 2*q^15 -
6*q^17 - 4*q^19 - 4*q^21 + 6*q^23 + q^25 + 4*q^27 + 6*q^29 - 4*q^31 - 2*q^35 + 
2*q^37 - 4*q^39 + 6*q^41 - 10*q^43 - q^45 - 6*q^47 - 3*q^49 + 12*q^51 - 6*q^53 +
8*q^57 + 12*q^59 + 2*q^61 + 2*q^63 - 2*q^65 + 2*q^67 - 12*q^69 - 12*q^71 + 
2*q^73 - 2*q^75 + 8*q^79 - 11*q^81 + 6*q^83 + 6*q^85 - 12*q^87 - 6*q^89 + 4*q^91
+ 8*q^93 + 4*q^95 + 2*q^97 + 6*q^101 + 14*q^103 + 4*q^105 - 6*q^107 + 2*q^109 - 
4*q^111 - 6*q^113 - 6*q^115 + 2*q^117 - 12*q^119 - 11*q^121 - 12*q^123 - q^125 +
2*q^127 + 20*q^129 - 8*q^133 - 4*q^135 + 18*q^137 - 4*q^139 + 12*q^141 - 6*q^145
+ 6*q^147 - 6*q^149 + 20*q^151 - 6*q^153 + 4*q^155 - 22*q^157 + 12*q^159 + 
12*q^161 - 10*q^163 + 18*q^167 - 9*q^169 - 4*q^171 - 6*q^173 + 2*q^175 - 
24*q^177 - 12*q^179 - 10*q^181 - 4*q^183 - 2*q^185 + 8*q^189 - 12*q^191 + 
26*q^193 + 4*q^195 + 18*q^197 + 8*q^199 - 4*q^201 + 12*q^203 - 6*q^205 + 6*q^207
- 16*q^211 + 24*q^213 + 10*q^215 - 8*q^217 - 4*q^219 + O(q^220)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 1);
              X_10D1 := Curve(P_Q, [ PolynomialRing(RationalField(), 2) | ]);
