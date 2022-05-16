
    /****************************************************
    Loading this file in magma loads the objects fs_12K3_shim 
    and X_12K3_shim. fs_12K3_shim is a list of power series which form 
    a basis for the space of cusp forms. X_12K3_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_12K3_shim := [Kq | q - 2*q^5 + q^9 - 2*q^13 + 2*q^17 - q^25 + 
6*q^29 - 4*q^33 + 6*q^37 - 6*q^41 - 2*q^45 - 7*q^49 - 2*q^53 + 4*q^57 - 2*q^61 +
4*q^65 + 8*q^69 + 10*q^73 + q^81 - 4*q^85 - 6*q^89 - 8*q^93 + 2*q^97 - 18*q^101 
- 2*q^109 + 18*q^113 - 2*q^117 + 5*q^121 + 12*q^125 - 4*q^129 - 6*q^137 - 
12*q^145 + 14*q^149 + 2*q^153 - 2*q^157 + 8*q^165 - 9*q^169 + 6*q^173 - 4*q^177 
+ 6*q^181 - 12*q^185 + 2*q^193 - 18*q^197 + 4*q^201 + 12*q^205 - 16*q^209 - 
8*q^213 - 4*q^221 - q^225 + O(q^228), q^2 - q^6 - 2*q^10 + q^18 + 4*q^22 - 
2*q^26 + 2*q^30 + 2*q^34 - 4*q^38 - 8*q^46 - q^50 - q^54 + 6*q^58 + 8*q^62 - 
4*q^66 + 6*q^74 + 2*q^78 - 6*q^82 + 4*q^86 - 2*q^90 - 7*q^98 - 2*q^102 - 2*q^106
- 8*q^110 + 4*q^114 + 4*q^118 - 2*q^122 + 4*q^130 - 4*q^134 + 8*q^138 + 8*q^142 
+ 10*q^146 + q^150 - 8*q^158 + q^162 - 4*q^166 - 4*q^170 - 6*q^174 - 6*q^178 - 
8*q^186 + 8*q^190 + 2*q^194 + 4*q^198 - 18*q^202 + 16*q^206 - 12*q^214 - 2*q^218
- 6*q^222 + 18*q^226 + O(q^228), q^3 - 4*q^11 - 2*q^15 + 4*q^19 + 8*q^23 + q^27 
- 8*q^31 - 2*q^39 - 4*q^43 + 2*q^51 + 8*q^55 - 4*q^59 + 4*q^67 - 8*q^71 - q^75 +
8*q^79 + 4*q^83 + 6*q^87 - 8*q^95 - 4*q^99 - 16*q^103 + 12*q^107 + 6*q^111 - 
16*q^115 - 6*q^123 + 8*q^127 + 4*q^131 - 2*q^135 + 12*q^139 + 8*q^143 - 7*q^147 
+ 16*q^151 + 16*q^155 - 2*q^159 - 12*q^163 - 24*q^167 + 4*q^171 - 12*q^179 - 
2*q^183 - 8*q^187 + 4*q^195 - 16*q^199 + 8*q^207 + 20*q^211 + 8*q^215 + 10*q^219
+ 8*q^223 - 12*q^227 + O(q^228)] ;
              P_Q<[x]> := WeightedProjectiveSpace(Rationals(), [ 1, 4, 1 ]);
              X_12K3_shim := Curve(P_Q, [ PolynomialRing(RationalField(), [ 1, 
4, 1 ]) |
-x[1]^8 - 14*x[1]^4*x[3]^4 + x[2]^2 - x[3]^8
]);

    /****************************************************
    Loading this file in magma loads the objects fs_12O3_shim 
    and X_12O3_shim. fs_12O3_shim is a list of power series which form 
    a basis for the space of cusp forms. X_12O3_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_12O3_shim := [Kq | q - 4*q^7 + 2*q^13 + 8*q^19 - 5*q^25 - 
4*q^31 - 10*q^37 + 8*q^43 + 9*q^49 + 14*q^61 - 16*q^67 - 10*q^73 - 4*q^79 - 
8*q^91 + 14*q^97 + 20*q^103 + 2*q^109 - 11*q^121 + 20*q^127 - 32*q^133 - 
16*q^139 - 4*q^151 + 14*q^157 + 8*q^163 - 9*q^169 + 20*q^175 + 26*q^181 + 
2*q^193 - 28*q^199 - 16*q^211 + 16*q^217 - 28*q^223 - 22*q^229 + 14*q^241 + 
16*q^247 + O(q^255), q^2 - q^5 - 2*q^8 + 5*q^17 + 2*q^20 - 4*q^26 - 7*q^29 + 
4*q^32 - q^41 + 3*q^50 + 5*q^53 + 4*q^65 - 10*q^68 + 2*q^74 - 4*q^80 - 13*q^89 +
7*q^98 + 11*q^101 + 8*q^104 - q^113 + 14*q^116 - 10*q^122 - 8*q^125 - 8*q^128 - 
7*q^137 - 16*q^146 + 17*q^149 + 2*q^164 + 10*q^170 + 11*q^173 - 2*q^185 + 
8*q^194 - 13*q^197 - 6*q^200 - 10*q^212 + 20*q^218 - 20*q^221 + 5*q^233 - 
11*q^242 - 7*q^245 + O(q^255), q^4 - 2*q^7 - q^10 + 3*q^13 - 2*q^16 + 4*q^19 - 
4*q^25 - 2*q^31 + 5*q^34 - 6*q^37 + 2*q^40 + 4*q^43 + q^49 - 4*q^52 - 7*q^58 + 
12*q^61 + 4*q^64 - 8*q^67 + 3*q^73 - 2*q^79 - q^82 - 5*q^85 - 4*q^91 + 3*q^97 + 
3*q^100 + 10*q^103 + 5*q^106 - 9*q^109 + 10*q^127 + 4*q^130 - 16*q^133 - 
10*q^136 - 8*q^139 + 7*q^145 + 2*q^148 - 2*q^151 + 18*q^157 - 4*q^160 + 4*q^163 
- 6*q^169 + 10*q^175 - 13*q^178 + 3*q^181 - 6*q^193 + 7*q^196 - 14*q^199 + 
11*q^202 + q^205 + 8*q^208 - 8*q^211 + 8*q^217 - 14*q^223 - q^226 - 9*q^229 + 
14*q^232 + 3*q^241 - 10*q^244 + 8*q^247 - 8*q^250 + O(q^255)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_12O3_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3) |
x[1]^3*x[3] - 3*x[1]^2*x[3]^2 - x[1]*x[2]^3 + 4*x[1]*x[3]^3 + 2*x[2]^3*x[3] - 
2*x[3]^4
]);

    /****************************************************
    Loading this file in magma loads the objects fs_15E3_shim 
    and X_15E3_shim. fs_15E3_shim is a list of power series which form 
    a basis for the space of cusp forms. X_15E3_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_15E3_shim := [Kq | q - q^4 - q^10 - 2*q^13 - q^16 + 4*q^19 + 
4*q^22 + q^25 - 2*q^34 - 10*q^37 + 3*q^40 + 4*q^43 - 7*q^49 + 2*q^52 - 4*q^55 + 
2*q^58 - 2*q^61 + 7*q^64 + 12*q^67 + 10*q^73 - 4*q^76 - 10*q^82 + 2*q^85 - 
12*q^88 - 8*q^94 + 2*q^97 - q^100 - 16*q^103 + 10*q^106 + 14*q^109 + 4*q^118 + 
5*q^121 - 8*q^127 + 2*q^130 + O(q^132), q^2 - q^5 - 3*q^8 + 4*q^11 - 2*q^17 + 
q^20 - 2*q^26 + 2*q^29 + 5*q^32 + 4*q^38 - 10*q^41 - 4*q^44 - 8*q^47 + q^50 + 
10*q^53 + 4*q^59 + 2*q^65 + 2*q^68 + 8*q^71 - 10*q^74 + q^80 - 12*q^83 + 4*q^86 
+ 6*q^89 - 4*q^95 - 7*q^98 - 6*q^101 + 6*q^104 + 12*q^107 - 4*q^110 - 2*q^113 - 
2*q^116 - 2*q^122 - q^125 - 3*q^128 + 12*q^131 + O(q^132), q^3 - q^6 - q^9 - 
q^12 + q^15 + q^18 + 3*q^24 + q^27 - q^30 - 4*q^33 + q^36 - 2*q^39 - q^45 - q^48
+ 2*q^51 - q^54 + 4*q^57 - q^60 + 4*q^66 - 3*q^72 + q^75 + 2*q^78 - q^81 - 
2*q^87 + q^90 - 5*q^96 + 4*q^99 - 2*q^102 - q^108 - 10*q^111 - 4*q^114 + 2*q^117
+ 3*q^120 + 10*q^123 + 4*q^129 + O(q^132)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_15E3_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3) |
x[1]^3*x[3] - x[1]^2*x[2]^2 + x[1]*x[2]*x[3]^2 - x[2]^3*x[3] - 5*x[3]^4
]);

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

    /****************************************************
    Loading this file in magma loads the objects fs_20J3_shim 
    and X_20J3_shim. fs_20J3_shim is a list of power series which form 
    a basis for the space of cusp forms. X_20J3_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_20J3_shim := [Kq | q + q^5 - 4*q^7 - 3*q^9 + 4*q^11 - 2*q^13 + 
2*q^17 + 4*q^19 + 4*q^23 + q^25 - 2*q^29 - 8*q^31 - 4*q^35 + 6*q^37 - 6*q^41 - 
8*q^43 - 3*q^45 + 4*q^47 + 9*q^49 + 6*q^53 + 4*q^55 - 4*q^59 - 2*q^61 + 12*q^63 
- 2*q^65 + 8*q^67 - 6*q^73 - 16*q^77 + 9*q^81 - 16*q^83 + 2*q^85 - 6*q^89 + 
O(q^90), q^2 - 2*q^6 - q^10 + 2*q^14 + q^18 + 2*q^26 + 2*q^30 - 6*q^34 - 4*q^38 
- 4*q^42 + 6*q^46 + q^50 + 4*q^54 + 6*q^58 - 4*q^62 - 2*q^70 + 2*q^74 - 4*q^78 +
6*q^82 - 10*q^86 + O(q^90), q^3 + q^5 - 3*q^7 - 2*q^9 + 2*q^11 - 2*q^13 - q^15 +
4*q^17 + 4*q^19 + 2*q^21 - q^23 - 2*q^27 - 4*q^29 - 2*q^31 - q^35 + 2*q^37 + 
2*q^39 - 6*q^41 + q^43 - q^45 + 5*q^47 + 6*q^49 - 6*q^51 + 6*q^53 + 2*q^55 - 
4*q^57 - 8*q^59 - 2*q^61 + 5*q^63 + 3*q^67 + 6*q^69 + 6*q^71 - 4*q^73 + q^75 - 
8*q^77 - 4*q^79 + 10*q^81 - 11*q^83 - 2*q^85 + 6*q^87 + O(q^90)] ;
              P_Q<[x]> := WeightedProjectiveSpace(Rationals(), [ 1, 4, 1 ]);
              X_20J3_shim := Curve(P_Q, [ PolynomialRing(RationalField(), [ 1, 
4, 1 ]) |
-x[1]^8 - 8*x[1]^6*x[3]^2 + 2*x[1]^4*x[3]^4 - 8*x[1]^2*x[3]^6 + x[2]^2 - x[3]^8
]);

    /****************************************************
    Loading this file in magma loads the objects fs_20S3_shim 
    and X_20S3_shim. fs_20S3_shim is a list of power series which form 
    a basis for the space of cusp forms. X_20S3_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_20S3_shim := [Kq | q - 2*q^4 - 3*q^5 + 4*q^8 + 3*q^9 + 2*q^10 -
2*q^13 - 4*q^16 - 6*q^18 + 2*q^20 + 7*q^25 + 2*q^26 - 4*q^29 + 6*q^34 + 6*q^36 -
8*q^40 - 8*q^41 - 3*q^45 - 7*q^49 - 8*q^50 + 18*q^53 + 8*q^58 + 12*q^61 + 8*q^64
+ 4*q^65 - 12*q^68 - 22*q^73 - 14*q^74 + 12*q^80 - 9*q^81 - 6*q^85 + O(q^89), 
q^2 - 2*q^4 - q^5 + 2*q^8 + 3*q^9 - q^10 - q^13 - 3*q^17 - 3*q^18 + 4*q^20 + 
4*q^25 - 4*q^29 - 4*q^32 + 6*q^34 + 7*q^37 - 6*q^40 - 6*q^45 - 7*q^49 - q^50 + 
2*q^52 + 9*q^53 + 4*q^58 + 8*q^64 + 3*q^65 - 6*q^68 + 6*q^72 - 11*q^73 - 14*q^74
+ 4*q^80 - 8*q^82 + 3*q^85 + O(q^89), q^3 - q^4 - q^5 - q^7 + 2*q^8 + q^9 + q^10
- 2*q^13 - q^15 - 2*q^16 + 3*q^17 - 3*q^18 + 2*q^19 + q^20 + 2*q^21 - 3*q^23 + 
3*q^25 + q^26 - 2*q^27 - 5*q^29 + 2*q^31 + 3*q^34 + q^35 + 3*q^36 - q^37 + 
2*q^39 - 4*q^40 - 7*q^41 + 5*q^43 - q^45 + 3*q^47 - 2*q^49 - 4*q^50 - 6*q^51 + 
12*q^53 - 4*q^57 + 4*q^58 - 6*q^59 + 5*q^61 - q^63 + 4*q^64 + 3*q^65 - q^67 - 
6*q^68 + 6*q^69 + 6*q^71 - 12*q^73 - 7*q^74 + q^75 - 4*q^79 + 6*q^80 + q^81 - 
3*q^83 - 6*q^85 + 6*q^87 + O(q^89)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_20S3_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3) |
x[1]^3*x[3] - x[1]^2*x[2]^2 - 3*x[1]^2*x[3]^2 + x[1]*x[2]^3 + 4*x[1]*x[3]^3 - 
2*x[3]^4
]);

    /****************************************************
    Loading this file in magma loads the objects fs_21D3_shim 
    and X_21D3_shim. fs_21D3_shim is a list of power series which form 
    a basis for the space of cusp forms. X_21D3_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_21D3_shim := [Kq | q - 2*q^4 - 2*q^5 - q^7 + 2*q^8 + q^9 + 
4*q^10 + 4*q^11 - q^13 - 2*q^14 - 2*q^15 - 2*q^16 - 4*q^17 - 2*q^18 + 3*q^19 + 
q^21 - 4*q^22 + 2*q^24 + 2*q^26 + q^27 + 4*q^28 - 6*q^31 + 2*q^32 + 2*q^33 + 
4*q^34 + 4*q^35 + 5*q^37 - 4*q^38 - 2*q^39 - 4*q^40 - 2*q^41 - q^43 - 4*q^44 - 
2*q^47 - 2*q^48 - 4*q^51 - 4*q^53 - 4*q^55 - 2*q^56 + 3*q^57 + 4*q^58 + 16*q^59 
+ O(q^60), q^2 - q^4 - 2*q^5 - q^6 + q^7 + q^8 + q^9 + 2*q^10 + 2*q^11 + q^12 - 
q^13 - 3*q^14 - 3*q^16 - 2*q^17 - q^18 + 2*q^19 + 2*q^20 + q^24 + 2*q^26 + q^28 
- 2*q^29 - 2*q^30 - 3*q^31 + q^32 + 2*q^34 + 4*q^35 - q^36 + 4*q^37 - 2*q^38 - 
q^39 - 2*q^40 + 4*q^41 + 3*q^42 - 3*q^43 - 4*q^44 - 4*q^47 + q^48 - 4*q^49 + 
q^50 - 2*q^51 - 2*q^53 + q^54 - 4*q^55 - q^56 + q^57 + 6*q^58 + 8*q^59 + 
O(q^60), q^3 - 2*q^5 - 2*q^6 + q^7 + 2*q^8 + q^9 + 2*q^11 - 2*q^13 - 2*q^16 - 
4*q^17 + 3*q^19 + 4*q^20 - 2*q^21 + 2*q^24 - q^25 + 2*q^26 - 2*q^28 - 4*q^29 + 
3*q^31 - 6*q^32 + 2*q^33 + 4*q^34 + 2*q^35 - 2*q^36 + 5*q^37 - 2*q^38 - q^39 - 
4*q^40 + 8*q^41 + 4*q^42 - 6*q^43 - 4*q^44 - 2*q^45 - 2*q^47 + 2*q^48 - 3*q^49 +
2*q^50 - 4*q^51 + 2*q^52 + 8*q^53 - 8*q^55 - 2*q^56 + 2*q^57 + 4*q^58 + 4*q^59 +
O(q^60)] ;
              P_Q<[x]> := WeightedProjectiveSpace(Rationals(), [ 1, 4, 1 ]);
              X_21D3_shim := Curve(P_Q, [ PolynomialRing(RationalField(), [ 1, 
4, 1 ]) |
-x[1]^8 + 6*x[1]^6*x[3]^2 - 4*x[1]^5*x[3]^3 - 11*x[1]^4*x[3]^4 + 
24*x[1]^3*x[3]^5 - 22*x[1]^2*x[3]^6 + 8*x[1]*x[3]^7 + x[2]^2 - x[3]^8
]);

    /****************************************************
    Loading this file in magma loads the objects fs_24V3_shim 
    and X_24V3_shim. fs_24V3_shim is a list of power series which form 
    a basis for the space of cusp forms. X_24V3_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_24V3_shim := [Kq | q - 2*q^5 + q^9 - 2*q^13 + 2*q^17 - q^25 + 
6*q^29 - 4*q^33 + 6*q^37 - 6*q^41 - 2*q^45 - 7*q^49 - 2*q^53 + 4*q^57 - 2*q^61 +
4*q^65 + 8*q^69 + 10*q^73 + q^81 - 4*q^85 - 6*q^89 - 8*q^93 + 2*q^97 - 18*q^101 
- 2*q^109 + 18*q^113 - 2*q^117 + 5*q^121 + O(q^122), q^2 - q^6 - 2*q^10 + q^18 +
4*q^22 - 2*q^26 + 2*q^30 + 2*q^34 - 4*q^38 - 8*q^46 - q^50 - q^54 + 6*q^58 + 
8*q^62 - 4*q^66 + 6*q^74 + 2*q^78 - 6*q^82 + 4*q^86 - 2*q^90 - 7*q^98 - 2*q^102 
- 2*q^106 - 8*q^110 + 4*q^114 + 4*q^118 + O(q^122), q^3 - 4*q^11 - 2*q^15 + 
4*q^19 + 8*q^23 + q^27 - 8*q^31 - 2*q^39 - 4*q^43 + 2*q^51 + 8*q^55 - 4*q^59 + 
4*q^67 - 8*q^71 - q^75 + 8*q^79 + 4*q^83 + 6*q^87 - 8*q^95 - 4*q^99 - 16*q^103 +
12*q^107 + 6*q^111 - 16*q^115 + O(q^122)] ;
              P_Q<[x]> := WeightedProjectiveSpace(Rationals(), [ 1, 4, 1 ]);
              X_24V3_shim := Curve(P_Q, [ PolynomialRing(RationalField(), [ 1, 
4, 1 ]) |
-x[1]^8 - 14*x[1]^4*x[3]^4 + x[2]^2 - x[3]^8
]);

    /****************************************************
    Loading this file in magma loads the objects fs_24X3_shim 
    and X_24X3_shim. fs_24X3_shim is a list of power series which form 
    a basis for the space of cusp forms. X_24X3_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_24X3_shim := [Kq | q - q^3 - 2*q^5 + q^9 + 4*q^11 - 2*q^13 + 
2*q^15 + 2*q^17 - 4*q^19 - 8*q^23 - q^25 - q^27 + 6*q^29 + 8*q^31 - 4*q^33 + 
6*q^37 + 2*q^39 - 6*q^41 + 4*q^43 - 2*q^45 - 7*q^49 - 2*q^51 - 2*q^53 - 8*q^55 +
4*q^57 + 4*q^59 + O(q^61), q^2 - q^3 - q^6 - 2*q^8 + 2*q^9 + 2*q^11 + 2*q^12 - 
4*q^17 - q^18 + 2*q^24 - q^27 + 4*q^32 - 2*q^33 - 4*q^36 + 2*q^38 + 8*q^41 - 
4*q^44 - 4*q^48 - 5*q^50 + 4*q^51 + 5*q^54 - 2*q^57 - 10*q^59 + O(q^61), q^4 - 
q^5 - q^6 + q^9 + 2*q^11 - q^12 - q^13 + q^15 - 2*q^16 + q^17 + 2*q^18 - 3*q^19 
+ 2*q^22 - 4*q^23 + 2*q^24 + 2*q^25 - 3*q^27 + 3*q^29 + 4*q^31 - 4*q^33 - 4*q^34
- q^36 + 3*q^37 + q^39 - 3*q^41 + 7*q^43 - q^45 + 2*q^48 - 7*q^49 + 3*q^51 - 
q^53 - q^54 - 4*q^55 + 3*q^57 + 2*q^59 + O(q^61)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_24X3_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3) |
x[1]^3*x[3] - 2*x[1]^2*x[2]*x[3] - x[1]^2*x[3]^2 - x[1]*x[2]^3 + 
2*x[1]*x[2]^2*x[3] + 6*x[1]*x[2]*x[3]^2 + 2*x[2]^3*x[3] - 2*x[2]^2*x[3]^2 - 
4*x[2]*x[3]^3
]);

    /****************************************************
    Loading this file in magma loads the objects fs_24Y3_shim 
    and X_24Y3_shim. fs_24Y3_shim is a list of power series which form 
    a basis for the space of cusp forms. X_24Y3_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_24Y3_shim := [Kq | q - q^4 - 2*q^5 - q^6 - q^7 + 2*q^8 + 2*q^10
+ 2*q^11 + q^12 + q^13 + 2*q^15 - 2*q^16 - 4*q^19 - 2*q^20 - q^21 - 2*q^23 - 
4*q^26 - q^27 + 2*q^28 + 6*q^29 + 5*q^31 - 2*q^33 + 2*q^35 + q^36 - q^37 + 
4*q^38 - q^39 - 2*q^41 + 2*q^42 + 4*q^43 - 6*q^47 - 2*q^48 - 5*q^49 - 2*q^51 + 
4*q^52 - 4*q^53 + q^54 - 4*q^55 - 4*q^56 + 4*q^57 - 6*q^58 - 2*q^60 + O(q^61), 
q^2 - q^4 - 2*q^5 + q^7 + q^9 + 2*q^11 - q^12 + q^13 - 2*q^14 + 2*q^16 + 2*q^17 
- q^18 - 4*q^19 + 2*q^20 - q^21 - 6*q^23 + 2*q^24 - q^25 - q^27 + 2*q^28 + 
6*q^29 + 2*q^30 + 3*q^31 - 4*q^32 - 2*q^33 - 2*q^34 + 2*q^35 + q^36 - q^37 + 
3*q^39 - 4*q^40 - 4*q^41 + 4*q^43 + 4*q^46 + 6*q^47 - 2*q^48 - 2*q^49 + q^50 - 
2*q^51 - 4*q^52 - 4*q^53 - 4*q^55 - 2*q^60 + O(q^61), q^3 - q^4 - q^6 - q^7 + 
2*q^8 - q^9 + 2*q^10 - 2*q^11 + q^12 + 3*q^13 - 2*q^16 - 2*q^17 - 2*q^20 - q^21 
+ 6*q^23 + q^25 - 4*q^26 + 2*q^28 - 3*q^31 + 2*q^33 + 2*q^35 + q^36 - 7*q^37 + 
4*q^38 - 3*q^39 + 4*q^41 + 2*q^42 + 2*q^45 - 6*q^47 - 2*q^48 + 2*q^49 + 4*q^52 -
2*q^53 + q^54 + 4*q^55 - 4*q^56 - 6*q^58 - 4*q^59 - 2*q^60 + O(q^61)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_24Y3_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3) |
x[1]^3*x[3] - x[1]^2*x[2]^2 - x[1]^2*x[3]^2 + x[1]*x[2]^3 - x[1]*x[2]^2*x[3] - 
3*x[1]*x[2]*x[3]^2 + x[2]^3*x[3] + 2*x[2]^2*x[3]^2 + x[2]*x[3]^3
]);

    /****************************************************
    Loading this file in magma loads the objects fs_30K3_shim 
    and X_30K3_shim. fs_30K3_shim is a list of power series which form 
    a basis for the space of cusp forms. X_30K3_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_30K3_shim := [Kq | q - q^4 - q^6 - 2*q^7 + q^9 + q^10 - 2*q^11 
+ 2*q^12 + 2*q^14 - q^15 + 3*q^16 + 4*q^17 - 2*q^20 - 2*q^21 - 2*q^22 - q^24 + 
q^25 - 2*q^26 - 2*q^28 - 4*q^29 + 4*q^31 - 4*q^32 + 2*q^33 - 2*q^34 + 2*q^35 - 
q^36 - 4*q^37 + 4*q^38 + 2*q^39 + q^40 + 2*q^41 + 2*q^42 + 6*q^44 + O(q^46), q^2
- q^4 - q^6 - q^8 + q^10 + q^12 + 3*q^16 + q^18 - q^20 - 4*q^22 + q^24 - 2*q^26 
- q^30 - q^32 + 2*q^34 - q^36 + 4*q^38 - q^40 + 4*q^44 + O(q^46), q^3 + q^4 - 
q^5 - q^6 - 2*q^7 - 2*q^8 + q^10 + 2*q^11 + 2*q^13 + 2*q^14 + q^16 + 2*q^17 - 
4*q^19 - 2*q^21 - 2*q^22 + q^24 - 2*q^26 + q^27 - 2*q^28 - 2*q^29 + 4*q^31 + 
2*q^32 - 2*q^33 - 2*q^34 + 2*q^35 + q^36 + 6*q^37 + 4*q^38 - q^40 - 8*q^41 + 
2*q^42 - 4*q^43 - 2*q^44 - q^45 + O(q^46)] ;
              P_Q<[x]> := WeightedProjectiveSpace(Rationals(), [ 1, 4, 1 ]);
              X_30K3_shim := Curve(P_Q, [ PolynomialRing(RationalField(), [ 1, 
4, 1 ]) |
-x[1]^8 - 6*x[1]^7*x[3] - 9*x[1]^6*x[3]^2 - 6*x[1]^5*x[3]^3 + 4*x[1]^4*x[3]^4 + 
6*x[1]^3*x[3]^5 - 9*x[1]^2*x[3]^6 + 6*x[1]*x[3]^7 + x[2]^2 - x[3]^8
]);

    /****************************************************
    Loading this file in magma loads the objects fs_32J3_shim 
    and X_32J3_shim. fs_32J3_shim is a list of power series which form 
    a basis for the space of cusp forms. X_32J3_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_32J3_shim := [Kq | q - 3*q^9 + 2*q^17 - q^25 + 10*q^41 - 7*q^49
- 12*q^65 - 6*q^73 + 9*q^81 + 10*q^89 + 18*q^97 - 14*q^113 - 11*q^121 + 
O(q^124), q^2 - 2*q^10 - 3*q^18 + 6*q^26 + 2*q^34 - q^50 - 10*q^58 - 2*q^74 + 
10*q^82 + 6*q^90 - 7*q^98 + 14*q^106 - 10*q^122 + O(q^124), q^5 - 3*q^13 + 
5*q^29 + q^37 - 3*q^45 - 7*q^53 + 5*q^61 + 2*q^85 + q^101 - 3*q^109 + 9*q^117 + 
O(q^124)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_32J3_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3) |
x[1]^3*x[3] + 4*x[1]*x[3]^3 - x[2]^4
]);

    /****************************************************
    Loading this file in magma loads the objects fs_33C3_shim 
    and X_33C3_shim. fs_33C3_shim is a list of power series which form 
    a basis for the space of cusp forms. X_33C3_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_33C3_shim := [Kq | q - q^5 - 2*q^6 + 2*q^7 - 2*q^8 - q^9 - 
2*q^10 + q^11 + 2*q^12 + 4*q^14 + 2*q^15 - 2*q^16 - 2*q^17 + 4*q^18 + 2*q^20 - 
4*q^21 + 5*q^23 + 2*q^24 - 2*q^25 - 4*q^26 - q^27 - 4*q^28 - 4*q^29 + O(q^31), 
q^2 - q^4 - q^5 - q^6 + 2*q^7 - q^8 + q^9 + q^12 - 2*q^13 + q^15 + q^16 - q^18 -
2*q^21 + q^22 + 3*q^23 + q^24 + q^25 + 2*q^26 - 2*q^27 - 2*q^29 + O(q^31), q^3 -
2*q^6 - q^9 + 2*q^12 + q^15 + 2*q^18 - 2*q^21 - 2*q^27 - 2*q^30 + O(q^31)] ;
              P_Q<[x]> := WeightedProjectiveSpace(Rationals(), [ 1, 4, 1 ]);
              X_33C3_shim := Curve(P_Q, [ PolynomialRing(RationalField(), [ 1, 
4, 1 ]) |
-x[1]^8 - 10*x[1]^6*x[3]^2 + 8*x[1]^5*x[3]^3 - 47*x[1]^4*x[3]^4 + 
40*x[1]^3*x[3]^5 - 82*x[1]^2*x[3]^6 + 44*x[1]*x[3]^7 + x[2]^2 - 33*x[3]^8
]);

    /****************************************************
    Loading this file in magma loads the objects fs_34C3_shim 
    and X_34C3_shim. fs_34C3_shim is a list of power series which form 
    a basis for the space of cusp forms. X_34C3_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_34C3_shim := [Kq | q - 2*q^4 - 2*q^5 + 4*q^7 + 2*q^8 - 3*q^9 - 
2*q^13 + 2*q^16 + q^17 - 4*q^19 + 4*q^20 + 4*q^23 - q^25 - 8*q^28 + 6*q^29 + 
4*q^31 - 6*q^32 + O(q^35), q^2 - q^4 - q^8 - 2*q^10 + 4*q^14 + 3*q^16 - 3*q^18 +
2*q^20 - 2*q^26 - 4*q^28 - q^32 + q^34 + O(q^35), q^3 - 2*q^4 - q^5 + q^6 + 
4*q^7 - 2*q^9 - q^10 - 3*q^11 + q^12 - 2*q^13 + 4*q^14 + 2*q^16 + q^17 - 2*q^18 
+ 3*q^20 - 4*q^21 - 3*q^22 + 2*q^23 + q^24 + 2*q^25 - 2*q^26 - 2*q^27 - 4*q^28 +
3*q^29 + 4*q^31 - 4*q^32 + 6*q^33 + q^34 + O(q^35)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_34C3_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3) |
x[1]^3*x[3] - x[1]^2*x[2]^2 - 3*x[1]^2*x[3]^2 + 2*x[1]*x[2]^3 + 
3*x[1]*x[2]^2*x[3] - 3*x[1]*x[2]*x[3]^2 + 4*x[1]*x[3]^3 - x[2]^4 + 4*x[2]^3*x[3]
- 6*x[2]^2*x[3]^2 + 4*x[2]*x[3]^3 - 2*x[3]^4
]);

    /****************************************************
    Loading this file in magma loads the objects fs_35A3_shim 
    and X_35A3_shim. fs_35A3_shim is a list of power series which form 
    a basis for the space of cusp forms. X_35A3_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_35A3_shim := [Kq | q - 2*q^6 - 2*q^8 - q^11 + 4*q^13 - q^15 + 
2*q^16 + 2*q^18 + 2*q^20 + q^21 + 2*q^22 - 4*q^23 + q^25 + 2*q^26 - 4*q^27 - 
2*q^28 + q^29 - 2*q^30 + O(q^31), q^2 - 3*q^4 - q^5 + 2*q^6 + q^7 + 3*q^8 - q^9 
+ q^10 - q^11 - 4*q^12 + 2*q^13 - q^14 - q^15 - q^16 + 2*q^17 - q^18 + 4*q^19 - 
q^20 + q^21 - 2*q^22 - 4*q^23 + 4*q^24 + q^28 - q^29 + 2*q^30 + O(q^31), q^3 - 
2*q^4 - q^5 + 2*q^6 + q^7 + 2*q^8 - 2*q^9 - 2*q^11 - 2*q^12 + q^13 + 2*q^16 + 
3*q^17 - 2*q^18 + 2*q^19 - 2*q^22 - 2*q^23 - 2*q^26 - q^27 + 2*q^29 + 2*q^30 + 
O(q^31)] ;
              P_Q<[x]> := WeightedProjectiveSpace(Rationals(), [ 1, 4, 1 ]);
              X_35A3_shim := Curve(P_Q, [ PolynomialRing(RationalField(), [ 1, 
4, 1 ]) |
-x[1]^8 + 12*x[1]^7*x[3] - 50*x[1]^6*x[3]^2 + 108*x[1]^5*x[3]^3 - 
131*x[1]^4*x[3]^4 + 76*x[1]^3*x[3]^5 + 10*x[1]^2*x[3]^6 - 44*x[1]*x[3]^7 + 
x[2]^2 + 19*x[3]^8
]);

    /****************************************************
    Loading this file in magma loads the objects fs_36K3_shim 
    and X_36K3_shim. fs_36K3_shim is a list of power series which form 
    a basis for the space of cusp forms. X_36K3_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_36K3_shim := [Kq | q - 4*q^7 + 2*q^13 + 8*q^19 - 5*q^25 - 
4*q^31 - 10*q^37 + 8*q^43 + 9*q^49 + 14*q^61 - 16*q^67 - 10*q^73 - 4*q^79 - 
8*q^91 + O(q^93), q^2 - q^5 - 2*q^8 + 5*q^17 + 2*q^20 - 4*q^26 - 7*q^29 + 4*q^32
- q^41 + 3*q^50 + 5*q^53 + 4*q^65 - 10*q^68 + 2*q^74 - 4*q^80 - 13*q^89 + 
O(q^93), q^4 - 2*q^7 - q^10 + 3*q^13 - 2*q^16 + 4*q^19 - 4*q^25 - 2*q^31 + 
5*q^34 - 6*q^37 + 2*q^40 + 4*q^43 + q^49 - 4*q^52 - 7*q^58 + 12*q^61 + 4*q^64 - 
8*q^67 + 3*q^73 - 2*q^79 - q^82 - 5*q^85 - 4*q^91 + O(q^93)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_36K3_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3) |
x[1]^3*x[3] - 3*x[1]^2*x[3]^2 - x[1]*x[2]^3 + 4*x[1]*x[3]^3 + 2*x[2]^3*x[3] - 
2*x[3]^4
]);

    /****************************************************
    Loading this file in magma loads the objects fs_39A3_shim 
    and X_39A3_shim. fs_39A3_shim is a list of power series which form 
    a basis for the space of cusp forms. X_39A3_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_39A3_shim := [Kq | q + q^5 - q^6 - 2*q^7 - 3*q^8 + q^9 - q^10 +
q^11 + q^12 - q^15 + q^16 + 2*q^17 + 3*q^20 + 2*q^21 + 3*q^22 - 2*q^23 + q^25 + 
q^26 - 2*q^28 - 4*q^29 - 3*q^30 + 4*q^32 - 3*q^33 + 4*q^34 - 8*q^35 + O(q^36), 
q^2 - 2*q^4 - 2*q^5 + q^6 + 2*q^7 + q^8 + 2*q^10 - 2*q^12 - 2*q^14 - 2*q^15 + 
4*q^17 + q^18 - 2*q^19 - 2*q^20 + 2*q^21 - 2*q^22 + q^24 - q^26 + 2*q^28 + 
2*q^30 + 2*q^31 + q^32 - 2*q^34 + O(q^36), q^3 - q^4 - 3*q^5 + q^6 + 4*q^7 + q^8
- q^10 - 3*q^11 - 2*q^12 - q^13 + 2*q^14 - q^15 + 2*q^16 + 4*q^17 - 2*q^19 + 
3*q^20 - 3*q^22 - 2*q^23 - 2*q^24 + 2*q^25 - q^26 + q^27 - 4*q^28 + 6*q^29 + 
q^30 - 2*q^31 + q^33 + O(q^36)] ;
              P_Q<[x]> := WeightedProjectiveSpace(Rationals(), [ 1, 4, 1 ]);
              X_39A3_shim := Curve(P_Q, [ PolynomialRing(RationalField(), [ 1, 
4, 1 ]) |
-x[1]^8 + 6*x[1]^7*x[3] - 3*x[1]^6*x[3]^2 - 12*x[1]^5*x[3]^3 + 23*x[1]^4*x[3]^4 
- 12*x[1]^3*x[3]^5 - 3*x[1]^2*x[3]^6 + 6*x[1]*x[3]^7 + x[2]^2 - x[3]^8
]);

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
8*q^43 - 3*q^45 + O(q^47), q^2 - 2*q^6 - q^10 + 2*q^14 + q^18 + 2*q^26 + 2*q^30 
- 6*q^34 - 4*q^38 - 4*q^42 + 6*q^46 + O(q^47), q^3 + q^5 - 3*q^7 - 2*q^9 + 
2*q^11 - 2*q^13 - q^15 + 4*q^17 + 4*q^19 + 2*q^21 - q^23 - 2*q^27 - 4*q^29 - 
2*q^31 - q^35 + 2*q^37 + 2*q^39 - 6*q^41 + q^43 - q^45 + O(q^47)] ;
              P_Q<[x]> := WeightedProjectiveSpace(Rationals(), [ 1, 4, 1 ]);
              X_40F3_shim := Curve(P_Q, [ PolynomialRing(RationalField(), [ 1, 
4, 1 ]) |
-x[1]^8 - 8*x[1]^6*x[3]^2 + 2*x[1]^4*x[3]^4 - 8*x[1]^2*x[3]^6 + x[2]^2 - x[3]^8
]);

    /****************************************************
    Loading this file in magma loads the objects fs_41A3_shim 
    and X_41A3_shim. fs_41A3_shim is a list of power series which form 
    a basis for the space of cusp forms. X_41A3_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_41A3_shim := [Kq | q + q^4 - q^5 - 2*q^6 + 2*q^7 - 2*q^8 - 
3*q^10 - 2*q^12 + 2*q^14 + 2*q^15 + 3*q^16 - 2*q^17 + 3*q^18 + 2*q^19 + q^20 - 
3*q^21 + 2*q^23 - q^25 + 2*q^26 + O(q^27), q^2 - 2*q^4 - q^5 + 3*q^8 + q^9 + 
q^10 - 2*q^11 - 2*q^12 + 2*q^13 + 2*q^14 - 4*q^16 - 2*q^18 + 2*q^19 - 3*q^20 - 
q^21 + 4*q^22 + 2*q^23 + 2*q^24 - 4*q^26 + O(q^27), q^3 - 2*q^4 + q^6 - q^7 + 
2*q^8 + 2*q^10 - 3*q^11 - q^12 + 2*q^13 - q^14 - 2*q^15 - 2*q^18 + 3*q^19 + 
2*q^21 + q^22 + 4*q^23 + q^24 - 2*q^25 - 2*q^26 + O(q^27)] ;
              P_Q<[x]> := WeightedProjectiveSpace(Rationals(), [ 1, 4, 1 ]);
              X_41A3_shim := Curve(P_Q, [ PolynomialRing(RationalField(), [ 1, 
4, 1 ]) |
-x[1]^8 + 12*x[1]^7*x[3] - 48*x[1]^6*x[3]^2 + 82*x[1]^5*x[3]^3 - 
60*x[1]^4*x[3]^4 + 8*x[1]^3*x[3]^5 + 27*x[1]^2*x[3]^6 - 16*x[1]*x[3]^7 + x[2]^2 
+ 4*x[3]^8
]);

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
q^23 + 4*q^24 + q^25 + 4*q^26 + O(q^29), q^2 + q^3 - q^4 + 3*q^5 - 3*q^6 - q^7 -
q^9 - 5*q^10 - 2*q^11 + 2*q^12 + 3*q^13 + q^14 - 3*q^15 + 4*q^17 + q^18 + 4*q^20
- q^21 + 5*q^22 + q^23 + 2*q^24 - 5*q^25 - 3*q^26 - 2*q^27 + O(q^29), 2*q^3 - 
q^4 + 4*q^5 - 3*q^6 - 2*q^7 + 2*q^8 - q^9 - 7*q^10 - 4*q^11 + 2*q^12 + q^13 + 
3*q^14 - q^15 + 2*q^17 + 2*q^18 + 2*q^19 + 4*q^20 - 3*q^21 + 6*q^22 + 5*q^23 + 
2*q^24 - q^25 - 4*q^26 - 6*q^27 + O(q^29)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_43A3_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3) |
x[1]^3*x[3] - 2*x[1]^2*x[2]^2 + 2*x[1]^2*x[2]*x[3] - 2*x[1]^2*x[3]^2 + 
x[1]*x[2]^3 + 3*x[1]*x[2]^2*x[3] - 5*x[1]*x[2]*x[3]^2 + 3*x[1]*x[3]^3 - 9*x[2]^4
+ 24*x[2]^3*x[3] - 28*x[2]^2*x[3]^2 + 16*x[2]*x[3]^3 - 4*x[3]^4
]);

    /****************************************************
    Loading this file in magma loads the objects fs_45D3_shim 
    and X_45D3_shim. fs_45D3_shim is a list of power series which form 
    a basis for the space of cusp forms. X_45D3_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_45D3_shim := [Kq | q - q^4 - q^10 - 2*q^13 - q^16 + 4*q^19 + 
4*q^22 + q^25 - 2*q^34 - 10*q^37 + 3*q^40 + 4*q^43 + O(q^47), q^2 - q^5 - 3*q^8 
+ 4*q^11 - 2*q^17 + q^20 - 2*q^26 + 2*q^29 + 5*q^32 + 4*q^38 - 10*q^41 - 4*q^44 
+ O(q^47), q^3 - q^6 - q^9 - q^12 + q^15 + q^18 + 3*q^24 + q^27 - q^30 - 4*q^33 
+ q^36 - 2*q^39 - q^45 + O(q^47)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_45D3_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3) |
x[1]^3*x[3] - x[1]^2*x[2]^2 + x[1]*x[2]*x[3]^2 - x[2]^3*x[3] - 5*x[3]^4
]);

    /****************************************************
    Loading this file in magma loads the objects fs_48J3_shim 
    and X_48J3_shim. fs_48J3_shim is a list of power series which form 
    a basis for the space of cusp forms. X_48J3_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_48J3_shim := [Kq | q - 2*q^5 + q^9 - 2*q^13 + 2*q^17 - q^25 + 
6*q^29 - 4*q^33 + 6*q^37 - 6*q^41 - 2*q^45 - 7*q^49 - 2*q^53 + 4*q^57 - 2*q^61 +
O(q^63), q^2 - q^6 - 2*q^10 + q^18 + 4*q^22 - 2*q^26 + 2*q^30 + 2*q^34 - 4*q^38 
- 8*q^46 - q^50 - q^54 + 6*q^58 + 8*q^62 + O(q^63), q^3 - 4*q^11 - 2*q^15 + 
4*q^19 + 8*q^23 + q^27 - 8*q^31 - 2*q^39 - 4*q^43 + 2*q^51 + 8*q^55 - 4*q^59 + 
O(q^63)] ;
              P_Q<[x]> := WeightedProjectiveSpace(Rationals(), [ 1, 4, 1 ]);
              X_48J3_shim := Curve(P_Q, [ PolynomialRing(RationalField(), [ 1, 
4, 1 ]) |
-x[1]^8 - 14*x[1]^4*x[3]^4 + x[2]^2 - x[3]^8
]);

    /****************************************************
    Loading this file in magma loads the objects fs_49A3_shim 
    and X_49A3_shim. fs_49A3_shim is a list of power series which form 
    a basis for the space of cusp forms. X_49A3_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_49A3_shim := [Kq | q - 3*q^8 + 4*q^22 + 2*q^29 + 3*q^36 - 
12*q^43 - 5*q^50 + 7*q^64 + 16*q^71 - 8*q^92 - 12*q^99 - 10*q^106 + O(q^109), 
q^2 - 3*q^9 - q^16 + 8*q^23 - 6*q^37 - 4*q^44 + 2*q^58 + 9*q^72 + 8*q^79 - 
12*q^86 + 5*q^100 - 20*q^107 + O(q^109), q^4 - 4*q^11 + 3*q^18 + 5*q^25 - 5*q^32
- 8*q^46 + 10*q^53 - 4*q^67 + 6*q^74 - 9*q^81 + 12*q^88 + O(q^109)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_49A3_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3) |
x[1]^3*x[3] - x[1]*x[2]^3 + x[2]*x[3]^3
]);

    /****************************************************
    Loading this file in magma loads the objects fs_64B3_shim 
    and X_64B3_shim. fs_64B3_shim is a list of power series which form 
    a basis for the space of cusp forms. X_64B3_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_64B3_shim := [Kq | q - 3*q^9 + 2*q^17 - q^25 + 10*q^41 - 7*q^49
+ O(q^63), q^2 - 2*q^10 - 3*q^18 + 6*q^26 + 2*q^34 - q^50 - 10*q^58 + O(q^63), 
q^5 - 3*q^13 + 5*q^29 + q^37 - 3*q^45 - 7*q^53 + 5*q^61 + O(q^63)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_64B3_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3) |
x[1]^3*x[3] + 4*x[1]*x[3]^3 - x[2]^4
]);

    /****************************************************
    Loading this file in magma loads the objects fs_7A3_shim 
    and X_7A3_shim. fs_7A3_shim is a list of power series which form 
    a basis for the space of cusp forms. X_7A3_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_7A3_shim := [Kq | q - 3*q^8 + 4*q^22 + 2*q^29 + 3*q^36 - 
12*q^43 - 5*q^50 + 7*q^64 + 16*q^71 - 8*q^92 - 12*q^99 - 10*q^106 + 2*q^113 + 
16*q^127 + 4*q^134 + 6*q^148 + 9*q^162 - 13*q^169 - 4*q^176 - 26*q^197 - 
12*q^211 + 18*q^218 + 15*q^225 - 6*q^232 + 16*q^239 + 32*q^253 - 10*q^274 - 
26*q^281 - 15*q^288 - 24*q^302 - 8*q^316 + 30*q^337 + 36*q^344 + 4*q^358 - 
12*q^379 + 18*q^386 + 5*q^400 - 24*q^407 - 24*q^414 - 26*q^421 + 20*q^428 + 
2*q^449 - 40*q^463 + 30*q^477 - 5*q^484 + 44*q^491 - 11*q^512 + 32*q^526 + 
44*q^547 - 10*q^554 - 48*q^568 - 40*q^575 - 22*q^596 - 12*q^603 - 26*q^617 + 
O(q^623), q^2 - 3*q^9 - q^16 + 8*q^23 - 6*q^37 - 4*q^44 + 2*q^58 + 9*q^72 + 
8*q^79 - 12*q^86 + 5*q^100 - 20*q^107 + 5*q^121 - 3*q^128 + 16*q^142 + 22*q^149 
- 20*q^163 - 24*q^184 + 8*q^191 - 12*q^198 + 10*q^212 + 2*q^226 + 22*q^233 + 
16*q^254 - 6*q^261 - 4*q^268 - 20*q^275 - 17*q^289 + 18*q^296 - 34*q^317 - 
9*q^324 + 36*q^331 - 13*q^338 + 20*q^352 + 8*q^359 + 22*q^373 + 36*q^387 - 
26*q^394 - 34*q^401 - 12*q^422 - 18*q^436 - 20*q^443 + 15*q^450 - 6*q^457 - 
2*q^464 + 16*q^478 + 36*q^499 + 32*q^506 - 34*q^541 + 10*q^548 - 26*q^562 + 
22*q^569 - 21*q^576 - 40*q^583 + 24*q^604 + O(q^623), q^4 - 4*q^11 + 3*q^18 + 
5*q^25 - 5*q^32 - 8*q^46 + 10*q^53 - 4*q^67 + 6*q^74 - 9*q^81 + 12*q^88 - 
18*q^109 + 2*q^116 + 10*q^137 - 3*q^144 + 24*q^151 - 8*q^158 - 12*q^172 - 
4*q^179 - 18*q^193 - 15*q^200 + 24*q^207 + 20*q^214 - 5*q^242 + 17*q^256 - 
32*q^263 + 10*q^277 + 16*q^284 - 22*q^298 - 8*q^319 + 20*q^326 - 18*q^333 - 
4*q^347 + 19*q^361 + 8*q^368 - 8*q^382 + 38*q^389 - 12*q^396 - 30*q^424 - 
32*q^431 + 2*q^452 - 22*q^466 + 48*q^473 + 24*q^487 + 16*q^508 + 6*q^522 - 
41*q^529 + 12*q^536 + 20*q^550 - 46*q^557 - 4*q^571 + 17*q^578 - 6*q^592 - 
32*q^599 + 38*q^613 + O(q^623)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_7A3_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3) |
x[1]^3*x[3] - x[1]*x[2]^3 + x[2]*x[3]^3
]);

    /****************************************************
    Loading this file in magma loads the objects fs_8A3_shim 
    and X_8A3_shim. fs_8A3_shim is a list of power series which form 
    a basis for the space of cusp forms. X_8A3_shim is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              K := F;
              Kq<q> := PowerSeriesRing(K);
              fs_8A3_shim := [Kq | q - 3*q^9 + 2*q^17 - q^25 + 10*q^41 - 7*q^49 
- 12*q^65 - 6*q^73 + 9*q^81 + 10*q^89 + 18*q^97 - 14*q^113 - 11*q^121 - 22*q^137
+ 20*q^145 - 6*q^153 + 23*q^169 + 4*q^185 - 14*q^193 + 3*q^225 + 26*q^233 - 
30*q^241 + 2*q^257 - 28*q^265 + 10*q^281 - 13*q^289 + 20*q^305 + 26*q^313 + 
18*q^337 + 34*q^353 - 19*q^361 - 30*q^369 - 60*q^377 + 2*q^401 - 6*q^409 + 
O(q^424), q^2 - 2*q^10 - 3*q^18 + 6*q^26 + 2*q^34 - q^50 - 10*q^58 - 2*q^74 + 
10*q^82 + 6*q^90 - 7*q^98 + 14*q^106 - 10*q^122 - 12*q^130 - 6*q^146 + 9*q^162 -
4*q^170 + 10*q^178 + 18*q^194 - 2*q^202 + 6*q^218 - 14*q^226 - 18*q^234 - 
11*q^242 + 12*q^250 - 22*q^274 + 20*q^290 + 14*q^298 - 6*q^306 + 22*q^314 + 
23*q^338 - 26*q^346 - 18*q^362 + 4*q^370 - 14*q^386 - 2*q^394 - 20*q^410 + 
O(q^424), q^5 - 3*q^13 + 5*q^29 + q^37 - 3*q^45 - 7*q^53 + 5*q^61 + 2*q^85 + 
q^101 - 3*q^109 + 9*q^117 - 6*q^125 - 7*q^149 - 11*q^157 + 13*q^173 + 9*q^181 + 
q^197 + 10*q^205 - 6*q^221 - 15*q^229 - 7*q^245 - 15*q^261 + 13*q^269 + 9*q^277 
+ 17*q^293 - 11*q^317 + 3*q^325 - 3*q^333 + 5*q^349 - 6*q^365 - 7*q^373 + 
17*q^389 - 19*q^397 + 9*q^405 - 15*q^421 + O(q^424)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_8A3_shim := Curve(P_Q, [ PolynomialRing(RationalField(), 3) |
x[1]^3*x[3] + 4*x[1]*x[3]^3 - x[2]^4
]);
