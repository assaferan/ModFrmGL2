
    /****************************************************
    Loading this file in magma loads the objects fs_87A6 
    and X_87A6. fs_87A6 is a list of power series which form 
    a basis for the space of cusp forms. X_87A6 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              Kq<q> := PowerSeriesRing(F);
              fs_87A6 := [Kq | q^3 - q^12 - q^15 - q^18 + 2*q^21 - 2*q^24 - 
2*q^27 + 2*q^33 + 2*q^36 + q^39 + 2*q^42 + 3*q^48 - 4*q^51 - 2*q^54 + 6*q^57 + 
O(q^58), q^3 - q^12 - q^15 - q^18 + 2*q^21 - 2*q^24 - 2*q^27 + 2*q^33 + 2*q^36 +
q^39 + 2*q^42 + 3*q^48 - 4*q^51 - 2*q^54 + 6*q^57 + O(q^58), q^6 - q^9 - 2*q^12 
+ 2*q^18 + 2*q^21 + q^24 - 2*q^27 - q^30 + q^33 - 3*q^36 + 2*q^39 - 2*q^42 + 
q^45 - 2*q^51 + 2*q^54 + O(q^58), q - q^4 - 2*q^5 - q^7 - q^8 - 5*q^11 + q^13 - 
2*q^14 + q^17 + 2*q^20 - 2*q^22 - 6*q^23 - q^25 + 4*q^26 + 3*q^28 - q^29 + 
4*q^31 + 5*q^32 + 4*q^34 + 2*q^35 - 4*q^37 + 2*q^40 + 2*q^41 - 6*q^43 + 7*q^44 -
4*q^46 - q^47 - 2*q^49 - 5*q^52 + 8*q^53 + 10*q^55 + 5*q^56 + O(q^58), q^2 - q^4
- 2*q^7 - 2*q^8 - 2*q^10 - 2*q^11 + 4*q^13 + q^14 + 3*q^16 + 4*q^17 + 2*q^20 - 
3*q^22 - 4*q^23 - 3*q^26 + q^28 + 8*q^31 + q^32 - 3*q^34 + 4*q^35 + 4*q^40 - 
4*q^43 + 5*q^44 - 2*q^46 - 6*q^47 - q^50 - q^52 + 4*q^55 + O(q^58), q - q^4 + 
2*q^5 - q^7 + q^8 + 5*q^11 + q^13 + 2*q^14 - q^17 - 2*q^20 - 2*q^22 + 6*q^23 - 
q^25 - 4*q^26 + 3*q^28 + q^29 + 4*q^31 - 5*q^32 + 4*q^34 - 2*q^35 - 4*q^37 + 
2*q^40 - 2*q^41 - 6*q^43 - 7*q^44 - 4*q^46 + q^47 - 2*q^49 - 5*q^52 - 8*q^53 + 
10*q^55 - 5*q^56 + O(q^58), q^2 + q^4 + 2*q^7 - 2*q^8 + 2*q^10 - 2*q^11 - 4*q^13
+ q^14 - 3*q^16 + 4*q^17 + 2*q^20 + 3*q^22 - 4*q^23 - 3*q^26 - q^28 - 8*q^31 + 
q^32 + 3*q^34 + 4*q^35 - 4*q^40 + 4*q^43 + 5*q^44 + 2*q^46 - 6*q^47 - q^50 + 
q^52 - 4*q^55 + O(q^58)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 5);
              X_87A6 := Curve(P_Q, [ PolynomialRing(RationalField(), 6) |
x[1]^2 + 4/5*x[2]^2 + 1/10*x[3]^2 + 1/20*x[4]^2 - 1/10*x[5]^2 - 1/20*x[6]^2,
x[1]*x[2] + 3/5*x[2]^2 - 1/20*x[3]^2 + 1/10*x[4]^2 + 1/20*x[5]^2 - 1/10*x[6]^2,
x[1]*x[3] + x[2]*x[3] + x[2]*x[4] - x[4]*x[6],
x[1]*x[4] - x[2]*x[3] + x[2]*x[4] - 1/2*x[3]*x[6] + 1/2*x[4]*x[5],
x[1]*x[5] + x[2]*x[5] - x[2]*x[6] - 1/2*x[4]^2 - 1/2*x[6]^2,
x[1]*x[6] + x[2]*x[5] + x[2]*x[6] + 1/2*x[3]*x[4] - 1/2*x[5]*x[6],
x[1]^3 - 13/116*x[2]*x[3]*x[4] + 1/116*x[2]*x[4]^2 - 13/116*x[2]*x[5]*x[6] - 
1/116*x[2]*x[6]^2 + 3/116*x[3]^2*x[6] - 3/58*x[3]*x[4]*x[5] + 
15/116*x[3]*x[4]*x[6] - 15/232*x[4]^2*x[5] - 9/116*x[4]^2*x[6] + 
3/116*x[5]^2*x[6] - 15/232*x[5]*x[6]^2 - 3/116*x[6]^3,
x[1]^2*x[2] + 3/29*x[2]*x[3]*x[4] - 21/116*x[2]*x[4]^2 + 3/29*x[2]*x[5]*x[6] + 
21/116*x[2]*x[6]^2 - 5/116*x[3]^2*x[6] + 5/58*x[3]*x[4]*x[5] + 
1/29*x[3]*x[4]*x[6] - 1/58*x[4]^2*x[5] + 15/116*x[4]^2*x[6] - 5/116*x[5]^2*x[6] 
- 1/58*x[5]*x[6]^2 + 5/116*x[6]^3,
x[1]^2*x[3] + 20/29*x[2]*x[4]*x[5] + 8/29*x[2]*x[4]*x[6] + 5/58*x[3]^3 + 
1/4*x[3]*x[4]^2 - 5/58*x[3]*x[5]^2 + 2/29*x[3]*x[5]*x[6] + 11/116*x[3]*x[6]^2 - 
3/29*x[4]^3 - 2/29*x[4]*x[5]^2 - 10/29*x[4]*x[5]*x[6] - 1/29*x[4]*x[6]^2,
x[1]^2*x[4] - 8/29*x[2]*x[4]*x[5] + 20/29*x[2]*x[4]*x[6] - 1/29*x[3]^3 + 
1/29*x[3]*x[5]^2 + 5/29*x[3]*x[5]*x[6] - 4/29*x[3]*x[6]^2 - 1/116*x[4]^3 - 
5/29*x[4]*x[5]^2 + 4/29*x[4]*x[5]*x[6] - 39/116*x[4]*x[6]^2,
x[1]^2*x[5] - 10/29*x[2]*x[3]*x[4] + 4/29*x[2]*x[4]^2 + 10/29*x[2]*x[5]*x[6] + 
4/29*x[2]*x[6]^2 + 5/58*x[3]^2*x[5] - 1/29*x[3]^2*x[6] + 9/116*x[4]^2*x[5] + 
2/29*x[4]^2*x[6] - 5/58*x[5]^3 + 1/29*x[5]^2*x[6] - 9/116*x[5]*x[6]^2 - 
2/29*x[6]^3,
x[1]^2*x[6] - 4/29*x[2]*x[3]*x[4] - 10/29*x[2]*x[4]^2 + 4/29*x[2]*x[5]*x[6] - 
10/29*x[2]*x[6]^2 + 1/29*x[3]^2*x[5] + 5/58*x[3]^2*x[6] - 2/29*x[4]^2*x[5] + 
9/116*x[4]^2*x[6] - 1/29*x[5]^3 - 5/58*x[5]^2*x[6] + 2/29*x[5]*x[6]^2 - 
9/116*x[6]^3,
x[1]*x[2]^2 + 9/116*x[2]*x[3]*x[4] + 3/58*x[2]*x[4]^2 + 9/116*x[2]*x[5]*x[6] - 
3/58*x[2]*x[6]^2 + 7/232*x[3]^2*x[6] - 7/116*x[3]*x[4]*x[5] + 
3/116*x[3]*x[4]*x[6] - 3/232*x[4]^2*x[5] - 21/232*x[4]^2*x[6] + 
7/232*x[5]^2*x[6] - 3/232*x[5]*x[6]^2 - 7/232*x[6]^3,
x[1]*x[2]*x[3] + 15/29*x[2]*x[4]*x[5] + 6/29*x[2]*x[4]*x[6] - 7/116*x[3]^3 + 
1/4*x[3]*x[4]^2 + 7/116*x[3]*x[5]^2 + 3/58*x[3]*x[5]*x[6] + 1/116*x[3]*x[6]^2 - 
9/116*x[4]^3 - 3/58*x[4]*x[5]^2 - 15/58*x[4]*x[5]*x[6] - 3/116*x[4]*x[6]^2,
x[1]*x[2]*x[4] - 6/29*x[2]*x[4]*x[5] + 15/29*x[2]*x[4]*x[6] - 3/116*x[3]^3 + 
3/116*x[3]*x[5]^2 - 7/58*x[3]*x[5]*x[6] - 3/29*x[3]*x[6]^2 + 21/116*x[4]^3 + 
7/58*x[4]*x[5]^2 + 3/29*x[4]*x[5]*x[6] + 7/116*x[4]*x[6]^2,
x[1]*x[2]*x[5] - 15/58*x[2]*x[3]*x[4] + 3/29*x[2]*x[4]^2 + 15/58*x[2]*x[5]*x[6] 
+ 3/29*x[2]*x[6]^2 - 7/116*x[3]^2*x[5] - 3/116*x[3]^2*x[6] + 7/58*x[4]^2*x[5] + 
3/58*x[4]^2*x[6] + 7/116*x[5]^3 + 3/116*x[5]^2*x[6] - 7/58*x[5]*x[6]^2 - 
3/58*x[6]^3,
x[1]*x[2]*x[6] - 3/29*x[2]*x[3]*x[4] - 15/58*x[2]*x[4]^2 + 3/29*x[2]*x[5]*x[6] -
15/58*x[2]*x[6]^2 + 3/116*x[3]^2*x[5] - 7/116*x[3]^2*x[6] - 3/58*x[4]^2*x[5] + 
7/58*x[4]^2*x[6] - 3/116*x[5]^3 + 7/116*x[5]^2*x[6] + 3/58*x[5]*x[6]^2 - 
7/58*x[6]^3,
x[1]*x[3]^2 + x[2]*x[3]*x[4] - x[2]*x[4]^2 - 1/2*x[3]^2*x[6] + 
1/2*x[3]*x[4]*x[5] - x[3]*x[4]*x[6] + x[4]^2*x[6],
x[1]*x[3]*x[4] + x[2]*x[3]*x[4] + x[2]*x[4]^2 - x[4]^2*x[6],
x[1]*x[3]*x[5] + x[2]*x[4]*x[5] + x[2]*x[4]*x[6] - 1/2*x[3]*x[5]*x[6] + 
1/2*x[4]^3 + 1/2*x[4]*x[5]^2 - x[4]*x[5]*x[6] + 1/2*x[4]*x[6]^2,
x[1]*x[3]*x[6] - x[2]*x[4]*x[5] + x[2]*x[4]*x[6] - 1/2*x[3]*x[4]^2 - 
1/2*x[3]*x[6]^2 + x[4]*x[5]*x[6] - x[4]*x[6]^2,
x[1]*x[4]^2 - x[2]*x[3]*x[4] + x[2]*x[4]^2 - 1/2*x[3]*x[4]*x[6] + 
1/2*x[4]^2*x[5],
x[1]*x[4]*x[5] + x[2]*x[4]*x[5] - x[2]*x[4]*x[6] - 1/2*x[4]^3 - 1/2*x[4]*x[6]^2,
x[1]*x[4]*x[6] + x[2]*x[4]*x[5] + x[2]*x[4]*x[6] + 1/2*x[3]*x[4]^2 - 
1/2*x[4]*x[5]*x[6],
x[1]*x[5]^2 - x[2]*x[5]*x[6] - x[2]*x[6]^2 - 1/2*x[3]*x[4]*x[5] - 
1/2*x[4]^2*x[5] - 1/2*x[4]^2*x[6] + 1/2*x[5]^2*x[6] - 1/2*x[5]*x[6]^2 - 
1/2*x[6]^3,
x[1]*x[5]*x[6] + x[2]*x[5]*x[6] - x[2]*x[6]^2 - 1/2*x[4]^2*x[6] - 1/2*x[6]^3,
x[1]*x[6]^2 + x[2]*x[5]*x[6] + x[2]*x[6]^2 + 1/2*x[3]*x[4]*x[6] - 
1/2*x[5]*x[6]^2,
x[2]^3 - 15/116*x[2]*x[3]*x[4] + 19/116*x[2]*x[4]^2 - 15/116*x[2]*x[5]*x[6] - 
19/116*x[2]*x[6]^2 - 1/116*x[3]^2*x[6] + 1/58*x[3]*x[4]*x[5] - 
5/116*x[3]*x[4]*x[6] + 5/232*x[4]^2*x[5] + 3/116*x[4]^2*x[6] - 1/116*x[5]^2*x[6]
+ 5/232*x[5]*x[6]^2 + 1/116*x[6]^3,
x[2]^2*x[3] - 25/29*x[2]*x[4]*x[5] - 10/29*x[2]*x[4]*x[6] + 1/58*x[3]^3 - 
1/4*x[3]*x[4]^2 - 1/58*x[3]*x[5]^2 - 5/58*x[3]*x[5]*x[6] - 21/116*x[3]*x[6]^2 + 
15/116*x[4]^3 + 5/58*x[4]*x[5]^2 + 25/58*x[4]*x[5]*x[6] + 5/116*x[4]*x[6]^2,
x[2]^2*x[4] + 10/29*x[2]*x[4]*x[5] - 25/29*x[2]*x[4]*x[6] + 5/116*x[3]^3 - 
5/116*x[3]*x[5]^2 + 1/29*x[3]*x[5]*x[6] + 5/29*x[3]*x[6]^2 - 3/58*x[4]^3 - 
1/29*x[4]*x[5]^2 - 5/29*x[4]*x[5]*x[6] - 1/58*x[4]*x[6]^2,
x[2]^2*x[5] + 25/58*x[2]*x[3]*x[4] - 5/29*x[2]*x[4]^2 - 25/58*x[2]*x[5]*x[6] - 
5/29*x[2]*x[6]^2 + 1/58*x[3]^2*x[5] + 5/116*x[3]^2*x[6] - 1/29*x[4]^2*x[5] - 
5/58*x[4]^2*x[6] - 1/58*x[5]^3 - 5/116*x[5]^2*x[6] + 1/29*x[5]*x[6]^2 + 
5/58*x[6]^3,
x[2]^2*x[6] + 5/29*x[2]*x[3]*x[4] + 25/58*x[2]*x[4]^2 - 5/29*x[2]*x[5]*x[6] + 
25/58*x[2]*x[6]^2 - 5/116*x[3]^2*x[5] + 1/58*x[3]^2*x[6] + 5/58*x[4]^2*x[5] - 
1/29*x[4]^2*x[6] + 5/116*x[5]^3 - 1/58*x[5]^2*x[6] - 5/58*x[5]*x[6]^2 + 
1/29*x[6]^3,
x[2]*x[3]^2 + x[2]*x[4]^2 + 1/2*x[3]^2*x[6] - 1/2*x[3]*x[4]*x[5] - x[4]^2*x[6],
x[2]*x[3]*x[5] - x[2]*x[4]*x[6] + 1/2*x[3]*x[5]*x[6] - 1/2*x[4]^3 - 
1/2*x[4]*x[5]^2 - 1/2*x[4]*x[6]^2,
x[2]*x[3]*x[6] + x[2]*x[4]*x[5] + 1/2*x[3]*x[4]^2 + 1/2*x[3]*x[6]^2 - 
x[4]*x[5]*x[6],
x[2]*x[5]^2 + x[2]*x[6]^2 + 1/2*x[3]*x[4]*x[5] + 1/2*x[4]^2*x[6] - 
1/2*x[5]^2*x[6] + 1/2*x[6]^3,
x[3]^2*x[4] - 2*x[3]*x[5]*x[6] + x[4]^3 + x[4]*x[5]^2 + 3*x[4]*x[6]^2
]);