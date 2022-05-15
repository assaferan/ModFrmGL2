
    /****************************************************
    Loading this file in magma loads the objects fs_16H3_shim 
    and X_16H3_shim. fs_16H3_shim is a list of power series which form 
    a basis for the space of cusp forms. X_16H3_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_16H3_shim := [Kq | q - 3*q^9 + 2*q^17 - q^25 + 10*q^41 - 7*q^49
- 12*q^65 - 6*q^73 + 9*q^81 + 10*q^89 + 18*q^97 - 14*q^113 - 11*q^121 - 22*q^137
+ 20*q^145 - 6*q^153 + 23*q^169 + 4*q^185 - 14*q^193 + 3*q^225 + 26*q^233 + 
O(q^236), q^2 - 2*q^10 - 3*q^18 + 6*q^26 + 2*q^34 - q^50 - 10*q^58 - 2*q^74 + 
10*q^82 + 6*q^90 - 7*q^98 + 14*q^106 - 10*q^122 - 12*q^130 - 6*q^146 + 9*q^162 -
4*q^170 + 10*q^178 + 18*q^194 - 2*q^202 + 6*q^218 - 14*q^226 - 18*q^234 + 
O(q^236), q^5 - 3*q^13 + 5*q^29 + q^37 - 3*q^45 - 7*q^53 + 5*q^61 + 2*q^85 + 
q^101 - 3*q^109 + 9*q^117 - 6*q^125 - 7*q^149 - 11*q^157 + 13*q^173 + 9*q^181 + 
q^197 + 10*q^205 - 6*q^221 - 15*q^229 + O(q^236)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_16H3_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3) |
x[1]^3*x[3] + 4*x[1]*x[3]^3 - x[2]^4
]);
