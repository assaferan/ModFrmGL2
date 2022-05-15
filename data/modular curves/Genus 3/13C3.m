
    /****************************************************
    Loading this file in magma loads the objects fs_13C3 
    and X_13C3. fs_13C3 is a list of power series which form 
    a basis for the space of cusp forms. X_13C3 is a 
    representation of the corresponding modular curve in 
    projective space
    *****************************************************/

              F := RationalField();     
              f<x> := Polynomial(F, [ RationalField() | -1, 3, 6, -4, -5, 1, 1 
]);
              K<zeta> := ext<F|f>;
              Kq<q> := PowerSeriesRing(K);
              fs_13C3 := [Kq | 1/14*(-19*zeta^5 - 10*zeta^4 + 59*zeta^3 + 14)*q 
+ 1/14*(-56*zeta^5 - 33*zeta^4 + 286*zeta^3 + 96*zeta^2 - 363*zeta + 13)*q^2 + 
1/14*(-34*zeta^5 - 21*zeta^4 + 156*zeta^3 + 93*zeta^2 - 118*zeta - 108)*q^3 + 
1/14*(129*zeta^5 + 95*zeta^4 - 540*zeta^3 - 233*zeta^2 + 406*zeta + 5)*q^4 + 
1/14*(30*zeta^5 + 24*zeta^4 - 80*zeta^3 - 13*zeta^2 - 41*zeta + 12)*q^5 + 
1/14*(-13*zeta^5 - 36*zeta^4 + 81*zeta^3 + 161*zeta^2 - 89*zeta - 116)*q^6 + 
1/14*(4*zeta^5 - 89*zeta^4 + 19*zeta^3 + 363*zeta^2 - 36*zeta - 145)*q^7 + 
1/14*(-31*zeta^5 - 87*zeta^4 + 128*zeta^3 + 316*zeta^2 - 23*zeta - 199)*q^8 + 
1/14*(-9*zeta^5 - 25*zeta^4 - 27*zeta^3 + 53*zeta^2 + 212*zeta + 129)*q^9 + 
1/14*(72*zeta^5 - 29*zeta^4 - 330*zeta^3 + 98*zeta^2 + 323*zeta - 68)*q^10 + 
1/14*(-21*zeta^5 + 29*zeta^4 + 101*zeta^3 - 155*zeta^2 - 178*zeta + 129)*q^11 + 
1/14*(28*zeta^5 - 35*zeta^4 - 88*zeta^3 + 138*zeta^2 - 7*zeta + 20)*q^12 + 
1/14*(209*zeta^5 + 96*zeta^4 - 925*zeta^3 - 292*zeta^2 + 770*zeta + 78)*q^14 + 
1/14*(-27*zeta^5 + 20*zeta^4 + 65*zeta^3 - 97*zeta^2 + 81*zeta + 114)*q^15 + 
1/14*(14*zeta^5 + 20*zeta^4 - 33*zeta^3 + 10*zeta^2 + 6*zeta - 160)*q^16 + 
1/14*(-168*zeta^5 - 137*zeta^4 + 673*zeta^3 + 330*zeta^2 - 421*zeta + 54)*q^17 +
1/14*(-19*zeta^5 + 72*zeta^4 + 29*zeta^3 - 395*zeta^2 - 29*zeta + 254)*q^18 + 
1/14*(48*zeta^5 + 160*zeta^4 - 341*zeta^3 - 646*zeta^2 + 526*zeta + 327)*q^19 + 
1/14*(-5*zeta^5 + 171*zeta^4 - 70*zeta^3 - 660*zeta^2 + 203*zeta + 189)*q^20 + 
1/14*(68*zeta^5 + 79*zeta^4 - 297*zeta^3 - 198*zeta^2 + 275*zeta + 101)*q^21 + 
1/14*(138*zeta^5 + 120*zeta^4 - 513*zeta^3 - 286*zeta^2 + 194*zeta - 124)*q^22 +
1/14*(-52*zeta^5 + 30*zeta^4 + 207*zeta^3 - 201*zeta^2 - 211*zeta + 336)*q^23 + 
1/14*(-9*zeta^5 - 66*zeta^4 + 72*zeta^3 + 290*zeta^2 - 70*zeta - 180)*q^24 + 
1/14*(181*zeta^5 + 131*zeta^4 - 837*zeta^3 - 430*zeta^2 + 777*zeta + 58)*q^25 + 
1/14*(-214*zeta^5 - 120*zeta^4 + 1009*zeta^3 + 434*zeta^2 - 966*zeta - 112)*q^27
+ 1/14*(160*zeta^5 + 17*zeta^4 - 738*zeta^3 + 60*zeta^2 + 823*zeta - 269)*q^28 +
1/14*(34*zeta^5 + 19*zeta^4 - 229*zeta^3 - 304*zeta^2 + 193*zeta + 684)*q^29 + 
1/14*(-69*zeta^5 - 59*zeta^4 + 293*zeta^3 + 141*zeta^2 - 242*zeta - 11)*q^30 + 
1/14*(-89*zeta^5 - 208*zeta^4 + 351*zeta^3 + 711*zeta^2 - 71*zeta - 446)*q^31 + 
1/14*(-4*zeta^5 - 223*zeta^4 + 168*zeta^3 + 823*zeta^2 - 462*zeta - 168)*q^32 + 
1/14*(11*zeta^5 - 39*zeta^4 + 2*zeta^3 + 70*zeta^2 - 209*zeta + 173)*q^33 + 
1/14*(-25*zeta^5 + 167*zeta^4 + 70*zeta^3 - 829*zeta^2 - 258*zeta + 551)*q^34 + 
1/14*(-279*zeta^5 - 182*zeta^4 + 1267*zeta^3 + 457*zeta^2 - 1251*zeta - 
209)*q^35 + 1/14*(-144*zeta^5 + 60*zeta^4 + 733*zeta^3 + 15*zeta^2 - 721*zeta - 
440)*q^36 + 1/14*(46*zeta^5 - 17*zeta^4 - 262*zeta^3 + 136*zeta^2 + 489*zeta - 
143)*q^37 + 1/14*(-517*zeta^5 - 166*zeta^4 + 2228*zeta^3 + 450*zeta^2 - 
1722*zeta - 202)*q^38 + 1/14*(-247*zeta^5 - 109*zeta^4 + 1181*zeta^3 + 
438*zeta^2 - 1155*zeta - 166)*q^40 + 1/2*(30*zeta^5 + 22*zeta^4 - 137*zeta^3 - 
77*zeta^2 + 117*zeta + 6)*q^41 + 1/14*(114*zeta^5 + 29*zeta^4 - 502*zeta^3 - 
83*zeta^2 + 416*zeta + 28)*q^42 + 1/14*(-84*zeta^5 + 26*zeta^4 + 529*zeta^3 - 
24*zeta^2 - 886*zeta - 358)*q^43 + 1/14*(64*zeta^5 - 49*zeta^4 - 335*zeta^3 + 
341*zeta^2 + 638*zeta - 275)*q^44 + 1/14*(-129*zeta^5 + 16*zeta^4 + 670*zeta^3 -
zeta^2 - 827*zeta - 327)*q^45 + 1/14*(-82*zeta^5 - 54*zeta^4 + 465*zeta^3 + 
242*zeta^2 - 632*zeta - 269)*q^46 + 1/14*(8*zeta^5 - 18*zeta^4 + 164*zeta^3 + 
199*zeta^2 - 623*zeta - 70)*q^47 + 1/14*(-30*zeta^5 - 17*zeta^4 + 160*zeta^3 + 
44*zeta^2 - 227*zeta - 70)*q^48 + 1/14*(-66*zeta^5 + 12*zeta^4 + 313*zeta^3 - 
292*zeta - 80)*q^49 + 1/14*(115*zeta^5 + 123*zeta^4 - 680*zeta^3 - 424*zeta^2 + 
1055*zeta + 139)*q^50 + 1/14*(-80*zeta^5 + 36*zeta^4 + 319*zeta^3 - 134*zeta^2 -
182*zeta - 60)*q^51 + 1/14*(-60*zeta^5 + 139*zeta^4 + 121*zeta^3 - 556*zeta^2 + 
217*zeta - 40)*q^53 + 1/14*(-84*zeta^5 - 102*zeta^4 + 555*zeta^3 + 347*zeta^2 - 
1003*zeta - 138)*q^54 + 1/14*(78*zeta^5 - 46*zeta^4 - 347*zeta^3 + 196*zeta^2 + 
354*zeta - 216)*q^55 + 1/14*(-9*zeta^5 - 27*zeta^4 - 100*zeta^3 + 57*zeta^2 + 
502*zeta + 275)*q^56 + 1/14*(-23*zeta^5 + 19*zeta^4 + 62*zeta^3 - 158*zeta^2 - 
27*zeta + 103)*q^57 + 1/14*(15*zeta^5 + 184*zeta^4 - 166*zeta^3 - 753*zeta^2 + 
253*zeta + 341)*q^58 + 1/14*(139*zeta^5 + 266*zeta^4 - 904*zeta^3 - 1051*zeta^2 
+ 1417*zeta + 575)*q^59 + 1/14*(-33*zeta^5 - 14*zeta^4 + 65*zeta^3 - 53*zeta^2 +
107*zeta + 24)*q^60 + 1/14*(375*zeta^5 + 312*zeta^4 - 1625*zeta^3 - 749*zeta^2 +
1437*zeta + 125)*q^61 + 1/14*(60*zeta^5 - 176*zeta^4 - 389*zeta^3 + 347*zeta^2 +
535*zeta + 248)*q^62 + 1/14*(91*zeta^5 - 10*zeta^4 - 219*zeta^3 + 59*zeta^2 - 
369*zeta - 212)*q^63 + 1/14*(450*zeta^5 + 88*zeta^4 - 1883*zeta^3 - 166*zeta^2 +
1330*zeta + 176)*q^64 + 1/14*(113*zeta^5 - 47*zeta^4 - 491*zeta^3 + 130*zeta^2 +
371*zeta + 114)*q^66 + 1/14*(-260*zeta^5 - 73*zeta^4 + 1029*zeta^3 + 171*zeta^2 
- 524*zeta + 301)*q^67 + 1/14*(-334*zeta^5 + 131*zeta^4 + 1583*zeta^3 - 
284*zeta^2 - 1547*zeta - 116)*q^68 + 1/14*(171*zeta^5 + 83*zeta^4 - 768*zeta^3 -
223*zeta^2 + 704*zeta + 111)*q^69 + 1/14*(4*zeta^5 + 128*zeta^4 + 38*zeta^3 - 
539*zeta^2 - 363*zeta + 376)*q^70 + 1/14*(212*zeta^5 - 117*zeta^4 - 1082*zeta^3 
+ 417*zeta^2 + 1426*zeta + 270)*q^71 + 1/14*(-28*zeta^5 - 220*zeta^4 + 
247*zeta^3 + 914*zeta^2 - 342*zeta - 457)*q^72 + 1/14*(-3*zeta^5 - 215*zeta^4 - 
228*zeta^3 + 840*zeta^2 + 1149*zeta - 639)*q^73 + 1/14*(-285*zeta^5 - 263*zeta^4
+ 1072*zeta^3 + 621*zeta^2 - 466*zeta + 231)*q^74 + 1/14*(204*zeta^5 + 
128*zeta^4 - 863*zeta^3 - 347*zeta^2 + 633*zeta + 72)*q^75 + 1/14*(-356*zeta^5 -
185*zeta^4 + 1865*zeta^3 + 479*zeta^2 - 2552*zeta + 157)*q^76 + 1/14*(241*zeta^5
- 15*zeta^4 - 1096*zeta^3 - 20*zeta^2 + 945*zeta + 214)*q^77 + 1/14*(587*zeta^5 
+ 75*zeta^4 - 2517*zeta^3 - 178*zeta^2 + 1897*zeta + 310)*q^79 + 
1/14*(-111*zeta^5 + 23*zeta^4 + 368*zeta^3 - 156*zeta^2 - 5*zeta + 291)*q^80 + 
1/14*(-14*zeta^5 - 199*zeta^4 + 13*zeta^3 + 646*zeta^2 + 193*zeta - 396)*q^81 + 
1/2*(15*zeta^5 - 4*zeta^4 - 71*zeta^3 + 3*zeta^2 + 65*zeta + 17)*q^82 + 
1/14*(115*zeta^5 + 329*zeta^4 - 256*zeta^3 - 1091*zeta^2 - 690*zeta + 757)*q^83 
+ 1/14*(-15*zeta^5 + 128*zeta^4 - 21*zeta^3 - 433*zeta^2 + 245*zeta - 28)*q^84 +
1/14*(-54*zeta^5 - 219*zeta^4 + 407*zeta^3 + 875*zeta^2 - 654*zeta - 407)*q^85 +
1/14*(82*zeta^5 - 109*zeta^4 - 245*zeta^3 + 737*zeta^2 + 242*zeta - 491)*q^86 + 
1/14*(285*zeta^5 + 78*zeta^4 - 1311*zeta^3 - 251*zeta^2 + 1237*zeta + 247)*q^87 
+ 1/14*(242*zeta^5 + 76*zeta^4 - 1110*zeta^3 - 367*zeta^2 + 913*zeta + 472)*q^88
+ 1/14*(-163*zeta^5 + 136*zeta^4 + 342*zeta^3 - 640*zeta^2 + 682*zeta + 
734)*q^89 + 1/14*(251*zeta^5 + 47*zeta^4 - 988*zeta^3 - 12*zeta^2 + 567*zeta + 
50)*q^90 + 1/14*(385*zeta^5 + 196*zeta^4 - 1816*zeta^3 - 726*zeta^2 + 1736*zeta 
+ 218)*q^92 + 1/14*(-22*zeta^5 - 173*zeta^4 + 204*zeta^3 + 754*zeta^2 - 273*zeta
- 475)*q^93 + 1/14*(68*zeta^5 - 137*zeta^4 - 332*zeta^3 + 470*zeta^2 + 435*zeta 
- 340)*q^94 + 1/14*(336*zeta^5 + 272*zeta^4 - 1419*zeta^3 - 656*zeta^2 + 
1132*zeta + 38)*q^95 + 1/14*(-67*zeta^5 - 140*zeta^4 + 479*zeta^3 + 568*zeta^2 -
830*zeta - 286)*q^96 + 1/14*(-200*zeta^5 - 223*zeta^4 + 1141*zeta^3 + 
1033*zeta^2 - 1400*zeta - 987)*q^97 + 1/14*(-78*zeta^5 - 143*zeta^4 + 484*zeta^3
+ 605*zeta^2 - 668*zeta - 414)*q^98 + 1/14*(-125*zeta^5 - 62*zeta^4 + 543*zeta^3
- 12*zeta^2 - 620*zeta + 64)*q^99 + 1/14*(-117*zeta^5 - 128*zeta^4 + 326*zeta^3 
+ 295*zeta^2 + 245*zeta + 323)*q^100 + 1/14*(82*zeta^5 - 298*zeta^4 - 458*zeta^3
+ 925*zeta^2 + 715*zeta - 480)*q^101 + 1/14*(-76*zeta^5 - 20*zeta^4 + 435*zeta^3
- zeta^2 - 737*zeta + 92)*q^102 + 1/14*(-632*zeta^5 - 305*zeta^4 + 2997*zeta^3 +
1164*zeta^2 - 2891*zeta - 384)*q^103 + 1/14*(62*zeta^5 + 47*zeta^4 - 399*zeta^3 
- 288*zeta^2 + 581*zeta + 108)*q^105 + 1/14*(-179*zeta^5 - 20*zeta^4 + 
935*zeta^3 - 99*zeta^2 - 1393*zeta + 298)*q^106 + 1/14*(-22*zeta^5 + 126*zeta^4 
+ 215*zeta^3 - 156*zeta^2 - 330*zeta - 424)*q^107 + 1/14*(15*zeta^5 + 104*zeta^4
+ 149*zeta^3 - 213*zeta^2 - 707*zeta - 423)*q^108 + 1/7*(52*zeta^5 + 66*zeta^4 -
324*zeta^3 - 225*zeta^2 + 541*zeta + 94)*q^109 + 1/14*(124*zeta^5 + 155*zeta^4 -
740*zeta^3 - 659*zeta^2 + 1030*zeta + 516)*q^110 + 1/14*(5*zeta^5 + 68*zeta^4 - 
115*zeta^3 - 165*zeta^2 + 429*zeta - 158)*q^111 + 1/14*(43*zeta^5 + 47*zeta^4 - 
68*zeta^3 - 52*zeta^2 - 241*zeta + 55)*q^112 + 1/14*(-219*zeta^5 + 35*zeta^4 + 
1113*zeta^3 + 3*zeta^2 - 1278*zeta - 401)*q^113 + 1/14*(-130*zeta^5 + 78*zeta^4 
+ 627*zeta^3 - 186*zeta^2 - 640*zeta - 24)*q^114 + 1/14*(303*zeta^5 - zeta^4 - 
1183*zeta^3 + 197*zeta^2 + 684*zeta - 609)*q^115 + 1/14*(35*zeta^5 + 175*zeta^4 
- 450*zeta^3 - 848*zeta^2 + 987*zeta + 122)*q^116 + 1/14*(-1019*zeta^5 - 
253*zeta^4 + 4342*zeta^3 + 620*zeta^2 - 3241*zeta - 418)*q^118 + 
1/14*(-184*zeta^5 - 45*zeta^4 + 947*zeta^3 + 17*zeta^2 - 1330*zeta + 233)*q^119 
+ 1/14*(-52*zeta^5 + 30*zeta^4 + 207*zeta^3 - 201*zeta^2 - 211*zeta + 336)*q^120
+ 1/14*(111*zeta^5 + 43*zeta^4 - 667*zeta^3 - 123*zeta^2 + 1120*zeta + 
409)*q^121 + 1/14*(62*zeta^5 - 250*zeta^4 - 310*zeta^3 + 1249*zeta^2 + 871*zeta 
- 874)*q^122 + 1/2*(3*zeta^5 + 11*zeta^4 - 7*zeta^3 - 74*zeta^2 - 55*zeta + 
96)*q^123 + 1/14*(300*zeta^5 + 142*zeta^4 - 1617*zeta^3 - 776*zeta^2 + 1918*zeta
+ 1183)*q^124 + 1/14*(-113*zeta^5 + 22*zeta^4 + 373*zeta^3 - 421*zeta^2 - 
265*zeta + 292)*q^125 + 1/14*(405*zeta^5 + 333*zeta^4 - 1639*zeta^3 - 801*zeta^2
+ 1084*zeta - 97)*q^126 + 1/14*(-402*zeta^5 + 91*zeta^4 + 1968*zeta^3 + 
113*zeta^2 - 1858*zeta - 908)*q^127 + 1/14*(590*zeta^5 + 262*zeta^4 - 
2781*zeta^3 - 689*zeta^2 + 2961*zeta - 394)*q^128 + 1/14*(247*zeta^5 + 
109*zeta^4 - 1181*zeta^3 - 438*zeta^2 + 1155*zeta + 166)*q^129 + 
1/14*(-394*zeta^5 - 144*zeta^4 + 1983*zeta^3 + 734*zeta^2 - 2114*zeta - 
368)*q^131 + 1/14*(239*zeta^5 + 207*zeta^4 - 1180*zeta^3 - 732*zeta^2 + 
1263*zeta + 143)*q^132 + 1/14*(-248*zeta^5 + 120*zeta^4 + 1147*zeta^3 - 
387*zeta^2 - 1143*zeta + 232)*q^133 + 1/14*(-252*zeta^5 - 113*zeta^4 + 
1129*zeta^3 + 310*zeta^2 - 1017*zeta - 158)*q^134 + 1/14*(-74*zeta^5 - 
209*zeta^4 + 125*zeta^3 + 670*zeta^2 + 579*zeta - 479)*q^135 + 1/14*(-193*zeta^5
- 246*zeta^4 + 1126*zeta^3 + 1101*zeta^2 - 1439*zeta - 951)*q^136 + 
1/7*(-80*zeta^5 + 94*zeta^4 + 380*zeta^3 - 350*zeta^2 - 468*zeta - 44)*q^137 + 
1/14*(-31*zeta^5 - 87*zeta^4 + 128*zeta^3 + 316*zeta^2 - 23*zeta - 199)*q^138 + 
1/2*(-60*zeta^5 - 61*zeta^4 + 265*zeta^3 + 142*zeta^2 - 261*zeta - 30)*q^139 + 
1/14*(-256*zeta^5 + 81*zeta^4 + 1090*zeta^3 - 510*zeta^2 - 1043*zeta + 
820)*q^140 + 1/14*(-273*zeta^5 - 180*zeta^4 + 1161*zeta^3 + 635*zeta^2 - 
727*zeta + 6)*q^141 + 1/14*(-212*zeta^5 + 66*zeta^4 + 731*zeta^3 - 410*zeta^2 - 
168*zeta - 44)*q^142 + 1/14*(-195*zeta^5 - 110*zeta^4 + 950*zeta^3 + 434*zeta^2 
- 966*zeta - 126)*q^144 + 1/14*(386*zeta^5 - 93*zeta^4 - 1282*zeta^3 + 
604*zeta^2 + 49*zeta - 1051)*q^145 + 1/14*(418*zeta^5 - 198*zeta^4 - 2093*zeta^3
+ 156*zeta^2 + 2082*zeta + 904)*q^146 + 1/14*(-12*zeta^5 + 29*zeta^4 + 68*zeta^3
- 54*zeta^2 - 71*zeta - 36)*q^147 + 1/14*(-117*zeta^5 + 119*zeta^4 + 548*zeta^3 
- 788*zeta^2 - 985*zeta + 591)*q^148 + 1/14*(-87*zeta^5 - 195*zeta^4 + 
582*zeta^3 + 768*zeta^2 - 927*zeta - 393)*q^149 + 1/14*(76*zeta^5 + 68*zeta^4 - 
401*zeta^3 - 374*zeta^2 + 370*zeta + 471)*q^150 + 1/14*(133*zeta^5 + 468*zeta^4 
- 325*zeta^3 - 1670*zeta^2 - 828*zeta + 1138)*q^151 + 1/14*(162*zeta^5 + 
245*zeta^4 - 483*zeta^3 - 544*zeta^2 - 145*zeta - 384)*q^152 + 1/14*(282*zeta^5 
- 101*zeta^4 - 1376*zeta^3 + 83*zeta^2 + 1336*zeta + 452)*q^153 + 
1/14*(69*zeta^5 + 27*zeta^4 - 519*zeta^3 + zeta^2 + 1192*zeta - 57)*q^154 + 
1/14*(-575*zeta^5 - 275*zeta^4 + 2820*zeta^3 + 1164*zeta^2 - 2891*zeta - 
426)*q^155 + 1/14*(260*zeta^5 + 2*zeta^4 - 1017*zeta^3 + 126*zeta^2 + 560*zeta +
84)*q^157 + 1/14*(479*zeta^5 + 277*zeta^4 - 2766*zeta^3 - 690*zeta^2 + 4499*zeta
- 127)*q^158 + 1/14*(318*zeta^5 + 338*zeta^4 - 1272*zeta^3 - 875*zeta^2 + 
775*zeta + 80)*q^159 + 1/14*(-657*zeta^5 - 442*zeta^4 + 2914*zeta^3 + 
1103*zeta^2 - 2681*zeta - 353)*q^160 + 1/14*(-115*zeta^5 - 254*zeta^4 + 
327*zeta^3 + 789*zeta^2 + 329*zeta - 532)*q^161 + 1/14*(185*zeta^5 + 278*zeta^4 
- 1160*zeta^3 - 1105*zeta^2 + 1779*zeta + 677)*q^162 + 1/14*(-267*zeta^5 + 
53*zeta^4 + 1436*zeta^3 - 200*zeta^2 - 2047*zeta - 351)*q^163 + 1/2*(24*zeta^5 +
44*zeta^4 - 110*zeta^3 - 145*zeta^2 + 91*zeta + 84)*q^164 + 1/14*(-150*zeta^5 - 
89*zeta^4 + 654*zeta^3 + 228*zeta^2 - 555*zeta - 58)*q^165 + 1/14*(-198*zeta^5 +
219*zeta^4 + 1105*zeta^3 - 234*zeta^2 - 1225*zeta - 836)*q^166 + 
1/7*(-341*zeta^5 - 223*zeta^4 + 1728*zeta^3 + 692*zeta^2 - 2115*zeta + 13)*q^167
+ 1/14*(-160*zeta^5 + 79*zeta^4 + 776*zeta^3 - 122*zeta^2 - 749*zeta - 
236)*q^168 + 1/14*(683*zeta^5 + 218*zeta^4 - 2951*zeta^3 - 600*zeta^2 + 
2296*zeta + 274)*q^170 + 1/14*(163*zeta^5 + 179*zeta^4 - 1098*zeta^3 - 
578*zeta^2 + 2069*zeta + 211)*q^171 + 1/14*(218*zeta^5 - 218*zeta^4 - 
1228*zeta^3 + 131*zeta^2 + 1337*zeta + 1104)*q^172 + 1/7*(-312*zeta^5 - 
328*zeta^4 + 1356*zeta^3 + 760*zeta^2 - 1280*zeta - 112)*q^173 + 
1/14*(-112*zeta^5 - 114*zeta^4 + 484*zeta^3 + 251*zeta^2 - 459*zeta - 118)*q^174
+ 1/14*(189*zeta^5 + 23*zeta^4 - 958*zeta^3 - 278*zeta^2 + 977*zeta + 783)*q^175
+ 1/14*(4*zeta^5 - 89*zeta^4 + 19*zeta^3 + 363*zeta^2 - 36*zeta - 145)*q^176 + 
1/14*(108*zeta^5 + 260*zeta^4 - 610*zeta^3 - 989*zeta^2 + 719*zeta + 564)*q^177 
+ 1/14*(-522*zeta^5 - 455*zeta^4 + 2184*zeta^3 + 1084*zeta^2 - 1709*zeta - 
18)*q^178 + 1/14*(242*zeta^5 + 76*zeta^4 - 1110*zeta^3 - 367*zeta^2 + 913*zeta +
472)*q^179 + 1/14*(-29*zeta^5 + 157*zeta^4 - 283*zeta^3 - 619*zeta^2 + 1390*zeta
+ 529)*q^180 + 1/14*(378*zeta^5 - 35*zeta^4 - 1868*zeta^3 - 178*zeta^2 + 
1897*zeta + 464)*q^181 + 1/14*(62*zeta^5 + 61*zeta^4 - 123*zeta^3 + 4*zeta^2 - 
189*zeta - 124)*q^183 + 1/14*(-78*zeta^5 + 117*zeta^4 + 87*zeta^3 - 523*zeta^2 +
572*zeta + 507)*q^184 + 1/14*(-136*zeta^5 + 95*zeta^4 + 644*zeta^3 - 284*zeta^2 
- 671*zeta + 124)*q^185 + 1/14*(-171*zeta^5 - 87*zeta^4 + 622*zeta^3 + 
231*zeta^2 - 124*zeta + 181)*q^186 + 1/14*(-121*zeta^5 + 66*zeta^4 + 581*zeta^3 
- 551*zeta^2 - 983*zeta + 440)*q^187 + 1/14*(-33*zeta^5 + 409*zeta^4 - 14*zeta^3
- 1654*zeta^2 + 91*zeta + 609)*q^188 + 1/14*(-232*zeta^5 + 31*zeta^4 + 
1180*zeta^3 + 37*zeta^2 - 1342*zeta - 704)*q^189 + 1/14*(48*zeta^5 - 261*zeta^4 
- 203*zeta^3 + 1289*zeta^2 + 646*zeta - 879)*q^190 + 1/14*(816*zeta^5 + 
560*zeta^4 - 3395*zeta^3 - 1392*zeta^2 + 2444*zeta - 10)*q^191 + 
1/14*(-181*zeta^4 - 93*zeta^3 + 445*zeta^2 + 274*zeta + 20)*q^192 + 
1/7*(258*zeta^5 + 105*zeta^4 - 1125*zeta^3 - 287*zeta^2 + 916*zeta - 201)*q^193 
+ 1/14*(987*zeta^5 + 364*zeta^4 - 4171*zeta^3 - 892*zeta^2 + 3066*zeta + 
282)*q^194 + 1/14*(308*zeta^5 + 70*zeta^4 - 1303*zeta^3 - 158*zeta^2 + 952*zeta 
+ 124)*q^196 + 1/14*(86*zeta^5 - 140*zeta^4 + 45*zeta^3 + 581*zeta^2 - 1223*zeta
- 592)*q^197 + 1/14*(-376*zeta^5 + 73*zeta^4 + 1755*zeta^3 - 103*zeta^2 - 
1640*zeta - 212)*q^198 + 1/14*(-15*zeta^5 - 108*zeta^4 - 295*zeta^3 + 221*zeta^2
+ 1287*zeta + 715)*q^199 + 1/14*(44*zeta^5 + 159*zeta^4 - 417*zeta^3 - 
726*zeta^2 + 803*zeta + 389)*q^200 + 1/14*(66*zeta^5 - 121*zeta^4 - 348*zeta^3 +
575*zeta^2 + 680*zeta - 310)*q^201 + 1/14*(380*zeta^5 + 599*zeta^4 - 2369*zeta^3
- 2437*zeta^2 + 3516*zeta + 1571)*q^202 + 1/14*(-283*zeta^5 - 363*zeta^4 + 
938*zeta^3 + 829*zeta^2 - 50*zeta - 523)*q^203 + 1/14*(153*zeta^5 + 218*zeta^4 -
583*zeta^3 - 487*zeta^2 + 357*zeta - 109)*q^204 + 1/2*(-22*zeta^5 - 5*zeta^4 + 
86*zeta^3 - 19*zeta^2 - 70*zeta + 84)*q^205 + 1/14*(-191*zeta^5 - 248*zeta^4 + 
1367*zeta^3 + 829*zeta^2 - 2709*zeta - 362)*q^206 + 1/14*(29*zeta^5 + 51*zeta^4 
- 365*zeta^3 - 430*zeta^2 + 777*zeta + 170)*q^207 + 1/14*(-612*zeta^5 - 
209*zeta^4 + 2661*zeta^3 + 596*zeta^2 - 2107*zeta - 248)*q^209 + 
1/14*(-139*zeta^5 - 46*zeta^4 + 637*zeta^3 + 95*zeta^2 - 645*zeta + 140)*q^210 +
1/14*(-10*zeta^5 + 273*zeta^4 + 274*zeta^3 - 405*zeta^2 - 542*zeta - 740)*q^211 
+ 1/14*(477*zeta^5 + 517*zeta^4 - 2007*zeta^3 - 1193*zeta^2 + 1708*zeta + 
39)*q^212 + 1/14*(249*zeta^5 + 410*zeta^4 - 1055*zeta^3 - 1252*zeta^2 + 712*zeta
+ 732)*q^213 + 1/14*(-148*zeta^5 - 391*zeta^4 + 1004*zeta^3 + 1575*zeta^2 - 
1542*zeta - 836)*q^214 + 1/14*(358*zeta^5 - 113*zeta^4 - 1816*zeta^3 + 
259*zeta^2 + 2172*zeta + 850)*q^215 + 1/14*(48*zeta^5 - 36*zeta^4 + 10*zeta^3 + 
383*zeta^2 - 437*zeta - 204)*q^216 + 1/14*(111*zeta^5 + 39*zeta^4 - 813*zeta^3 -
115*zeta^2 + 1700*zeta + 701)*q^217 + 1/7*(76*zeta^5 + 79*zeta^4 - 328*zeta^3 - 
274*zeta^2 + 211*zeta + 204)*q^218 + 1/14*(463*zeta^5 + 234*zeta^4 - 2072*zeta^3
- 710*zeta^2 + 1798*zeta - 224)*q^219 + 1/14*(-546*zeta^5 - 224*zeta^4 + 
2455*zeta^3 + 734*zeta^2 - 2114*zeta - 256)*q^220 + 1/14*(-236*zeta^5 + 
39*zeta^4 + 1012*zeta^3 - 122*zeta^2 - 749*zeta - 180)*q^222 + 1/14*(-327*zeta^5
- 27*zeta^4 + 1392*zeta^3 - 120*zeta^2 - 1191*zeta + 573)*q^223 + 
1/14*(162*zeta^5 - 288*zeta^4 - 731*zeta^3 + 1146*zeta^2 + 938*zeta - 
1136)*q^224 + 1/14*(480*zeta^5 + 286*zeta^4 - 2049*zeta^3 - 732*zeta^2 + 
1602*zeta + 98)*q^225 + 1/14*(181*zeta^5 - 18*zeta^4 - 741*zeta^3 + 525*zeta^2 +
901*zeta - 416)*q^226 + 1/14*(-37*zeta^5 + 352*zeta^4 - 29*zeta^3 - 1295*zeta^2 
+ 395*zeta + 190)*q^227 + 1/14*(-90*zeta^5 - 261*zeta^4 + 616*zeta^3 + 
1063*zeta^2 - 924*zeta - 574)*q^228 + 1/14*(-151*zeta^5 - 431*zeta^4 + 
908*zeta^3 + 1714*zeta^2 - 1097*zeta - 991)*q^229 + 1/14*(84*zeta^5 - 26*zeta^4 
- 529*zeta^3 + 24*zeta^2 + 886*zeta + 358)*q^230 + 1/14*(-244*zeta^5 - 
311*zeta^4 + 1016*zeta^3 + 998*zeta^2 - 583*zeta - 588)*q^231 + 
1/14*(-285*zeta^5 + 133*zeta^4 + 1039*zeta^3 - 777*zeta^2 - 544*zeta + 
969)*q^232 + 1/14*(-29*zeta^5 - 51*zeta^4 + 365*zeta^3 + 430*zeta^2 - 777*zeta -
170)*q^233 + 1/14*(296*zeta^5 + 263*zeta^4 - 1744*zeta^3 - 1290*zeta^2 + 
2331*zeta + 356)*q^235 + 1/14*(-697*zeta^5 - 513*zeta^4 + 3845*zeta^3 + 
1577*zeta^2 - 5584*zeta - 145)*q^236 + 1/14*(-160*zeta^5 - 376*zeta^4 + 
579*zeta^3 + 1081*zeta^2 - 123*zeta - 376)*q^237 + 1/14*(498*zeta^5 + 519*zeta^4
- 1829*zeta^3 - 1204*zeta^2 + 697*zeta - 492)*q^238 + 1/14*(-84*zeta^5 - 
265*zeta^4 + 801*zeta^3 + 1215*zeta^2 - 1608*zeta - 627)*q^239 + 1/14*(70*zeta^5
- 64*zeta^4 - 333*zeta^3 + 216*zeta^2 + 376*zeta + 109)*q^240 + 
1/14*(-137*zeta^5 - 337*zeta^4 + 825*zeta^3 + 1542*zeta^2 - 851*zeta - 
1196)*q^241 + 1/14*(-31*zeta^5 + 112*zeta^4 - 31*zeta^3 - 659*zeta^2 + 235*zeta 
+ 398)*q^242 + 1/14*(-951*zeta^5 - 547*zeta^4 + 4125*zeta^3 + 1411*zeta^2 - 
3416*zeta - 325)*q^243 + 1/14*(500*zeta^5 - 311*zeta^4 - 2312*zeta^3 + 
1058*zeta^2 + 2373*zeta - 748)*q^244 + 1/14*(55*zeta^5 + 49*zeta^4 - 334*zeta^3 
- 154*zeta^2 + 559*zeta + 37)*q^245 + 1/2*(-20*zeta^5 - 41*zeta^4 + 91*zeta^3 + 
120*zeta^2 - 87*zeta + 16)*q^246 + 1/14*(-167*zeta^5 - 166*zeta^4 + 448*zeta^3 +
134*zeta^2 + 182*zeta + 242)*q^248 + 1/14*(-298*zeta^5 + 26*zeta^4 + 1171*zeta^3
- 313*zeta^2 - 747*zeta + 674)*q^249 + 1/14*(-496*zeta^5 + 242*zeta^4 + 
2367*zeta^3 - 563*zeta^2 - 2361*zeta - 112)*q^250 + 1/7*(348*zeta^5 + 247*zeta^4
- 1341*zeta^3 - 610*zeta^2 + 623*zeta - 218)*q^251 + 1/14*(207*zeta^5 + 
28*zeta^4 - 717*zeta^3 + 447*zeta^2 + 501*zeta - 330)*q^252 + 1/14*(-139*zeta^5 
- 27*zeta^4 + 719*zeta^3 + 226*zeta^2 - 785*zeta - 544)*q^253 + 
1/14*(-493*zeta^5 - 1012*zeta^4 + 3117*zeta^3 + 4249*zeta^2 - 4353*zeta - 
2760)*q^254 + 1/14*(26*zeta^5 - 29*zeta^4 - 47*zeta^3 + 224*zeta^2 - 39*zeta - 
139)*q^255 + 1/14*(51*zeta^5 - 170*zeta^4 - 367*zeta^3 + 323*zeta^2 + 567*zeta +
309)*q^256 + 1/14*(142*zeta^5 + 437*zeta^4 - 163*zeta^3 - 320*zeta^2 - 345*zeta 
- 2060)*q^257 + 1/14*(53*zeta^5 + 81*zeta^4 - 430*zeta^3 - 270*zeta^2 + 951*zeta
+ 137)*q^258 + 1/14*(-435*zeta^5 - 2*zeta^4 + 1907*zeta^3 + 32*zeta^2 - 
1512*zeta - 306)*q^259 + 1/14*(598*zeta^5 + 209*zeta^4 - 2962*zeta^3 - 
1030*zeta^2 + 3073*zeta + 528)*q^261 + 1/14*(92*zeta^5 - 26*zeta^4 - 171*zeta^3 
+ 117*zeta^2 - 565*zeta - 262)*q^262 + 1/14*(100*zeta^5 - 349*zeta^4 - 
509*zeta^3 + 1219*zeta^2 + 808*zeta - 924)*q^263 + 1/14*(291*zeta^5 - 24*zeta^4 
- 1282*zeta^3 - 49*zeta^2 + 933*zeta + 139)*q^264 + 1/14*(139*zeta^5 + 99*zeta^4
- 278*zeta^3 + 41*zeta^2 - 496*zeta + 19)*q^265 + 1/14*(-368*zeta^5 - 554*zeta^4
+ 2239*zeta^3 + 2340*zeta^2 - 3126*zeta - 1693)*q^266 + 1/14*(203*zeta^5 - 
96*zeta^4 - 986*zeta^3 + 219*zeta^2 + 1033*zeta + 573)*q^267 + 1/14*(-223*zeta^5
- 315*zeta^4 + 778*zeta^3 + 803*zeta^2 - 132*zeta - 499)*q^268 + 
1/14*(393*zeta^5 + 177*zeta^4 - 1810*zeta^3 - 485*zeta^2 + 1784*zeta + 
345)*q^269 + 1/14*(122*zeta^5 - 117*zeta^4 - 684*zeta^3 + 63*zeta^2 + 740*zeta +
612)*q^270 + 1/14*(-700*zeta^5 - 45*zeta^4 + 2693*zeta^3 - 221*zeta^2 - 
1328*zeta + 1265)*q^271 + 1/14*(-109*zeta^5 - 29*zeta^4 + 408*zeta^3 + 4*zeta^2 
- 189*zeta + 2)*q^272 + 1/7*(-48*zeta^5 - 68*zeta^4 + 286*zeta^3 + 284*zeta^2 - 
392*zeta - 40)*q^274 + 1/14*(-170*zeta^5 - 180*zeta^4 + 661*zeta^3 + 733*zeta^2 
- 71*zeta - 200)*q^275 + 1/14*(174*zeta^5 + 36*zeta^4 - 725*zeta^3 + 30*zeta^2 +
602*zeta - 320)*q^276 + 1/14*(390*zeta^5 + 410*zeta^4 - 1695*zeta^3 - 950*zeta^2
+ 1600*zeta + 140)*q^277 + 1/2*(-21*zeta^5 + 35*zeta^4 + 110*zeta^3 - 197*zeta^2
- 238*zeta + 147)*q^278 + 1/14*(7*zeta^5 - 481*zeta^4 + 176*zeta^3 + 1976*zeta^2
- 269*zeta - 841)*q^279 + 1/14*(-275*zeta^5 + 85*zeta^4 + 1402*zeta^3 - 
204*zeta^2 - 1707*zeta - 625)*q^280 + 1/14*(161*zeta^5 + 141*zeta^4 - 522*zeta^3
- 171*zeta^2 + 86*zeta + 101)*q^281 + 1/14*(-333*zeta^5 - 145*zeta^4 + 
1417*zeta^3 + 401*zeta^2 - 1040*zeta - 59)*q^282 + 1/7*(76*zeta^5 + 75*zeta^4 - 
474*zeta^3 - 696*zeta^2 + 361*zeta + 1356)*q^283 + 1/14*(124*zeta^5 - 344*zeta^4
+ 155*zeta^3 + 1471*zeta^2 - 1917*zeta - 1280)*q^284 + 1/14*(85*zeta^5 - 
5*zeta^4 - 265*zeta^3 + 138*zeta^2 - 7*zeta - 22)*q^285 + 1/2*(-50*zeta^5 - 
68*zeta^4 + 243*zeta^3 + 222*zeta^2 - 254*zeta)*q^287 + 1/14*(-152*zeta^5 - 
363*zeta^4 + 1273*zeta^3 + 1371*zeta^2 - 2682*zeta - 785)*q^288 + 
1/14*(-124*zeta^5 - 305*zeta^4 + 278*zeta^3 + 380*zeta^2 + 89*zeta + 1020)*q^289
+ 1/14*(507*zeta^5 + 353*zeta^4 - 2260*zeta^3 - 875*zeta^2 + 2126*zeta + 
295)*q^290 + 1/14*(164*zeta^5 + 105*zeta^4 - 879*zeta^3 - 174*zeta^2 + 1361*zeta
- 13)*q^291 + 1/14*(650*zeta^5 + 373*zeta^4 - 3654*zeta^3 - 1707*zeta^2 + 
4928*zeta + 2072)*q^292 + 1/14*(557*zeta^5 + 265*zeta^4 - 3010*zeta^3 - 
1432*zeta^2 + 3605*zeta + 2163)*q^293 + 1/14*(37*zeta^5 - 8*zeta^4 - 169*zeta^3 
+ 118*zeta^2 + 252*zeta - 98)*q^294 + 1/14*(381*zeta^5 + 393*zeta^4 - 
1430*zeta^3 - 913*zeta^2 + 652*zeta - 315)*q^295 + 1/14*(-414*zeta^5 - 56*zeta^4
+ 1909*zeta^3 + 362*zeta^2 - 1646*zeta - 592)*q^296 + 1/14*(70*zeta^5 + 
19*zeta^4 - 118*zeta^3 - 96*zeta^2 - 547*zeta - 83)*q^297 + 1/14*(711*zeta^5 + 
183*zeta^4 - 3039*zeta^3 - 462*zeta^2 + 2289*zeta + 294)*q^298 + 
1/14*(-231*zeta^5 + 70*zeta^4 + 1066*zeta^3 - 118*zeta^2 - 938*zeta - 262)*q^300
+ 1/14*(-197*zeta^5 + 163*zeta^4 + 323*zeta^3 - 737*zeta^2 + 1218*zeta + 
883)*q^301 + 1/14*(-404*zeta^5 + 399*zeta^4 + 2153*zeta^3 - 591*zeta^2 - 
2350*zeta - 1084)*q^302 + 1/14*(-627*zeta^5 - 250*zeta^4 + 2628*zeta^3 + 
709*zeta^2 - 1775*zeta - 31)*q^303 + 1/14*(-53*zeta^5 - 5*zeta^4 + 142*zeta^3 - 
145*zeta^2 + 14*zeta + 91)*q^304 + 1/14*(-125*zeta^5 + 624*zeta^4 + 313*zeta^3 -
2371*zeta^2 - zeta + 436)*q^305 + 1/14*(383*zeta^5 + 738*zeta^4 - 2405*zeta^3 - 
3093*zeta^2 + 3379*zeta + 2034)*q^306 + 1/7*(75*zeta^5 - 28*zeta^4 - 457*zeta^3 
+ 235*zeta^2 + 929*zeta - 234)*q^307 + 1/14*(-6*zeta^5 - 260*zeta^4 - 215*zeta^3
+ 522*zeta^2 + 686*zeta + 480)*q^308 + 1/14*(-226*zeta^5 - 6*zeta^4 + 932*zeta^3
- 231*zeta^2 - 813*zeta + 656)*q^309 + 1/14*(-23*zeta^5 - 149*zeta^4 + 
509*zeta^3 + 541*zeta^2 - 1620*zeta - 401)*q^310 + 1/14*(1562*zeta^5 + 
632*zeta^4 - 7129*zeta^3 - 2202*zeta^2 + 6342*zeta + 824)*q^311 + 
1/14*(187*zeta^5 + 269*zeta^4 - 646*zeta^3 - 556*zeta^2 + 217*zeta - 222)*q^313 
+ 1/14*(350*zeta^5 + 176*zeta^4 - 1901*zeta^3 - 421*zeta^2 + 2811*zeta - 
172)*q^314 + 1/14*(-38*zeta^5 - 135*zeta^4 - 65*zeta^3 - 168*zeta^2 + 219*zeta +
1348)*q^315 + 1/14*(-789*zeta^5 - 1038*zeta^4 + 2832*zeta^3 + 2339*zeta^2 - 
1057*zeta + 911)*q^316 + 1/7*(-214*zeta^5 - 71*zeta^4 + 735*zeta^3 - 276*zeta^2 
- 433*zeta + 215)*q^317 + 1/14*(-20*zeta^5 - 179*zeta^4 + 279*zeta^3 + 
557*zeta^2 - 816*zeta + 99)*q^318 + 1/14*(-80*zeta^5 + 260*zeta^4 + 197*zeta^3 -
814*zeta^2 + 298*zeta - 295)*q^319 + 1/14*(-98*zeta^5 + 171*zeta^4 + 289*zeta^3 
- 1066*zeta^2 - 337*zeta + 709)*q^320 + 1/14*(30*zeta^5 + 21*zeta^4 - 14*zeta^3 
- 52*zeta^2 - 353*zeta - 222)*q^321 + 1/14*(48*zeta^5 - 142*zeta^4 - 355*zeta^3 
+ 151*zeta^2 + 473*zeta + 544)*q^322 + 1/14*(547*zeta^5 + 328*zeta^4 - 
2980*zeta^3 - 902*zeta^2 + 4344*zeta - 110)*q^323 + 1/14*(-889*zeta^5 - 
483*zeta^4 + 3932*zeta^3 + 1448*zeta^2 - 3283*zeta - 270)*q^324 + 
1/14*(529*zeta^5 - 41*zeta^4 - 2063*zeta^3 + 390*zeta^2 + 1113*zeta + 202)*q^326
+ 1/7*(219*zeta^5 + 220*zeta^4 - 1031*zeta^3 - 829*zeta^2 + 889*zeta + 
222)*q^327 + 1/2*(64*zeta^5 + 63*zeta^4 - 258*zeta^3 - 162*zeta^2 + 163*zeta + 
12)*q^328 + 1/14*(-945*zeta^5 - 468*zeta^4 + 4247*zeta^3 + 1251*zeta^2 - 
3911*zeta - 619)*q^329 + 1/14*(11*zeta^5 + 96*zeta^4 - 51*zeta^3 - 408*zeta^2 - 
70*zeta + 266)*q^330 + 1/14*(189*zeta^5 + 408*zeta^4 - 1147*zeta^3 - 1825*zeta^2
+ 1341*zeta + 1378)*q^331 + 1/2*(-91*zeta^5 - 14*zeta^4 + 484*zeta^3 + 
103*zeta^2 - 601*zeta - 275)*q^332 + 1/14*(175*zeta^5 + 2*zeta^4 - 771*zeta^3 + 
393*zeta^2 + 1033*zeta - 344)*q^333 + 1/7*(423*zeta^5 + 564*zeta^4 - 1492*zeta^3
- 1269*zeta^2 + 469*zeta - 541)*q^334 + 1/14*(242*zeta^5 + 84*zeta^4 - 
818*zeta^3 + 477*zeta^2 + 613*zeta - 1832)*q^335 + 1/14*(-115*zeta^5 - 18*zeta^4
+ 428*zeta^3 + 18*zeta^2 - 138*zeta + 176)*q^336 + 1/14*(-73*zeta^5 + 267*zeta^4
+ 371*zeta^3 - 682*zeta^2 - 343*zeta - 306)*q^337 + 1/14*(345*zeta^5 + 
452*zeta^4 - 1617*zeta^3 - 1412*zeta^2 + 1582*zeta - 34)*q^339 + 
1/14*(494*zeta^5 + 247*zeta^4 - 2550*zeta^3 - 632*zeta^2 + 3393*zeta - 
247)*q^340 + 1/14*(520*zeta^5 + 227*zeta^4 - 2375*zeta^3 - 1013*zeta^2 + 
1888*zeta + 1188)*q^341 + 1/14*(-801*zeta^5 - 826*zeta^4 + 3066*zeta^3 + 
1919*zeta^2 - 1609*zeta + 543)*q^342 + 1/14*(106*zeta^5 - 241*zeta^4 - 
869*zeta^3 + 1127*zeta^2 + 2396*zeta - 935)*q^343 + 1/14*(-2*zeta^5 + 549*zeta^4
- 291*zeta^3 - 2141*zeta^2 + 698*zeta + 683)*q^344 + 1/14*(-111*zeta^5 + 
193*zeta^4 + 472*zeta^3 - 688*zeta^2 - 443*zeta - 87)*q^345 + 1/7*(-120*zeta^5 +
204*zeta^4 + 604*zeta^3 - 1156*zeta^2 - 1280*zeta + 852)*q^346 + 
1/14*(-30*zeta^5 - 206*zeta^4 - 225*zeta^3 + 422*zeta^2 + 1124*zeta + 700)*q^347
+ 1/14*(228*zeta^5 + 241*zeta^4 - 838*zeta^3 - 400*zeta^2 + 483*zeta - 
540)*q^348 + 1/14*(-88*zeta^5 + 75*zeta^4 + 464*zeta^3 - 446*zeta^2 - 845*zeta +
401)*q^349 + 1/14*(-437*zeta^5 - 209*zeta^4 + 1771*zeta^3 + 438*zeta^2 - 
1155*zeta - 26)*q^350 + 1/14*(819*zeta^5 + 574*zeta^4 - 3643*zeta^3 - 
1720*zeta^2 + 3108*zeta + 162)*q^352 + 1/14*(339*zeta^5 + 255*zeta^4 - 
1824*zeta^3 - 808*zeta^2 + 2507*zeta + 87)*q^353 + 1/14*(-88*zeta^5 + 317*zeta^4
+ 548*zeta^3 - 812*zeta^2 - 821*zeta + 52)*q^354 + 1/14*(-987*zeta^5 - 
446*zeta^4 + 4840*zeta^3 + 1221*zeta^2 - 5659*zeta - 1455)*q^355 + 
1/14*(-241*zeta^5 - 56*zeta^4 + 529*zeta^3 - 568*zeta^2 + 522*zeta + 314)*q^356 
+ 1/14*(-24*zeta^5 - 163*zeta^4 + 262*zeta^3 + 555*zeta^2 - 646*zeta - 38)*q^357
+ 1/14*(166*zeta^5 + 329*zeta^4 - 1017*zeta^3 - 1437*zeta^2 + 1294*zeta + 
1045)*q^358 + 1/14*(427*zeta^5 + 278*zeta^4 - 1581*zeta^3 - 120*zeta^2 + 
1060*zeta - 20)*q^359 + 1/14*(-576*zeta^5 - 412*zeta^4 + 2553*zeta^3 + 
1016*zeta^2 - 2368*zeta - 306)*q^360 + 1/14*(-142*zeta^5 - 433*zeta^4 + 
309*zeta^3 + 742*zeta^2 + 195*zeta + 908)*q^361 + 1/14*(-137*zeta^5 - 86*zeta^4 
+ 380*zeta^3 + 366*zeta^2 + 506*zeta + 16)*q^362 + 1/14*(-217*zeta^5 + 56*zeta^4
+ 1091*zeta^3 + 24*zeta^2 - 1134*zeta - 310)*q^363 + 1/14*(-1331*zeta^5 - 
681*zeta^4 + 6477*zeta^3 + 2758*zeta^2 - 6559*zeta - 910)*q^365 + 
1/14*(311*zeta^5 + 186*zeta^4 - 1555*zeta^3 - 557*zeta^2 + 1867*zeta - 64)*q^366
+ 1/14*(518*zeta^5 - 370*zeta^4 - 2655*zeta^3 + 508*zeta^2 + 2766*zeta + 
1112)*q^367 + 1/14*(330*zeta^5 + 193*zeta^4 - 1541*zeta^3 - 496*zeta^2 + 
1627*zeta + 332)*q^368 + 1/2*(-19*zeta^5 - 31*zeta^4 + 130*zeta^3 + 119*zeta^2 -
228*zeta - 55)*q^369 + 1/14*(-231*zeta^5 - 363*zeta^4 + 1418*zeta^3 + 
1520*zeta^2 - 2007*zeta - 1061)*q^370 + 1/14*(99*zeta^5 - 477*zeta^4 - 
157*zeta^3 + 1610*zeta^2 - 579*zeta + 178)*q^371 + 1/14*(-141*zeta^5 - 49*zeta^4
+ 888*zeta^3 + 30*zeta^2 - 1695*zeta + 135)*q^372 + 1/14*(-1014*zeta^5 - 
704*zeta^4 + 4593*zeta^3 + 1746*zeta^2 - 4542*zeta - 736)*q^373 + 
1/14*(-616*zeta^5 + 232*zeta^4 + 2959*zeta^3 - 367*zeta^2 - 2883*zeta - 
568)*q^374 + 1/14*(-62*zeta^5 - 147*zeta^4 + 502*zeta^3 + 560*zeta^2 - 1021*zeta
- 317)*q^375 + 1/14*(-639*zeta^5 - 529*zeta^4 + 3083*zeta^3 + 1858*zeta^2 - 
3115*zeta - 254)*q^376 + 1/14*(422*zeta^5 + 130*zeta^4 - 1657*zeta^3 - 
158*zeta^2 + 952*zeta + 40)*q^378 + 1/14*(1023*zeta^5 + 136*zeta^4 - 4277*zeta^3
+ 109*zeta^2 + 3303*zeta - 1638)*q^379 + 1/14*(522*zeta^5 - 256*zeta^4 - 
2434*zeta^3 + 769*zeta^2 + 2429*zeta - 344)*q^380 + 1/14*(-204*zeta^5 + 
133*zeta^4 + 1043*zeta^3 - 198*zeta^2 - 1115*zeta - 386)*q^381 + 1/14*(16*zeta^5
- 685*zeta^4 + 61*zeta^3 + 3185*zeta^2 + 662*zeta - 2087)*q^382 + 
1/7*(-103*zeta^5 - 58*zeta^4 + 512*zeta^3 + 399*zeta^2 - 381*zeta - 659)*q^383 +
1/14*(31*zeta^5 + 359*zeta^4 - 283*zeta^3 - 1570*zeta^2 + 205*zeta + 920)*q^384 
+ 1/14*(65*zeta^5 + 239*zeta^4 - 170*zeta^3 - 868*zeta^2 - 381*zeta + 587)*q^385
+ 1/7*(36*zeta^5 - 89*zeta^4 - 277*zeta^3 + 166*zeta^2 + 503*zeta + 254)*q^386 +
1/14*(-440*zeta^5 + 135*zeta^4 + 1923*zeta^3 - 711*zeta^2 - 1838*zeta + 
996)*q^387 + 1/2*(52*zeta^5 + 37*zeta^4 - 334*zeta^3 - 96*zeta^2 + 623*zeta + 
7)*q^388 + 1/7*(-625*zeta^5 - 95*zeta^4 + 2635*zeta^3 + 178*zeta^2 - 1897*zeta -
282)*q^389 + 1/14*(-494*zeta^5 - 225*zeta^4 + 2224*zeta^3 + 730*zeta^2 - 
1925*zeta - 216)*q^391 + 1/14*(76*zeta^5 + 20*zeta^4 - 435*zeta^3 + zeta^2 + 
737*zeta - 92)*q^392 + 1/14*(80*zeta^5 + 185*zeta^4 - 399*zeta^3 - 857*zeta^2 + 
174*zeta + 1052)*q^393 + 1/14*(747*zeta^5 + 682*zeta^4 - 3009*zeta^3 - 
1613*zeta^2 + 2011*zeta - 207)*q^394 + 1/14*(-47*zeta^5 + 324*zeta^4 + 
155*zeta^3 - 1592*zeta^2 - 582*zeta + 1066)*q^395 + 1/14*(-179*zeta^5 - 
531*zeta^4 + 1281*zeta^3 + 2062*zeta^2 - 2149*zeta - 910)*q^396 + 
1/14*(202*zeta^5 - 253*zeta^4 - 852*zeta^3 + 747*zeta^2 + 568*zeta + 586)*q^397 
+ 1/14*(-98*zeta^5 + 370*zeta^4 + 130*zeta^3 - 2041*zeta^2 - 79*zeta + 
1306)*q^398 + 1/14*(267*zeta^5 + 213*zeta^4 - 1126*zeta^3 - 515*zeta^2 + 
890*zeta + 27)*q^399 + 1/14*(58*zeta^5 - 47*zeta^4 - 224*zeta^3 + 299*zeta^2 + 
242*zeta - 484)*q^400 + 1/14*(-11*zeta^5 - 357*zeta^4 + 379*zeta^3 + 1547*zeta^2
- 886*zeta - 1049)*q^401 + 1/14*(92*zeta^5 + 212*zeta^4 - 489*zeta^3 - 
702*zeta^2 + 602*zeta - 36)*q^402 + 1/14*(-1729*zeta^5 - 798*zeta^4 + 
7577*zeta^3 + 2336*zeta^2 - 6160*zeta - 582)*q^404 + 1/14*(-326*zeta^5 - 
43*zeta^4 + 1440*zeta^3 - 62*zeta^2 - 1387*zeta + 523)*q^405 + 1/14*(-406*zeta^5
- 23*zeta^4 + 1747*zeta^3 - 148*zeta^2 - 1521*zeta + 548)*q^406 + 
1/14*(36*zeta^5 - 268*zeta^4 - 297*zeta^3 + 524*zeta^2 + 404*zeta + 294)*q^407 +
1/14*(126*zeta^5 + 50*zeta^4 - 662*zeta^3 + 11*zeta^2 + 1045*zeta - 102)*q^408 +
1/14*(551*zeta^5 - 33*zeta^4 - 2759*zeta^3 - 378*zeta^2 + 2845*zeta + 
2052)*q^409 + 1/2*(-17*zeta^5 - 2*zeta^4 + 89*zeta^3 + 19*zeta^2 - 105*zeta - 
56)*q^410 + 1/7*(-102*zeta^5 - 156*zeta^4 + 410*zeta^3 + 448*zeta^2 - 232*zeta -
264)*q^411 + 1/14*(-87*zeta^5 + 269*zeta^4 + 1009*zeta^3 - 509*zeta^2 - 
2520*zeta - 1293)*q^412 + 1/14*(-202*zeta^5 + 469*zeta^4 + 1143*zeta^3 - 
1174*zeta^2 - 1511*zeta + 4)*q^413 + 1/14*(-333*zeta^5 - 141*zeta^4 + 
1608*zeta^3 + 344*zeta^2 - 1849*zeta + 243)*q^414 + 1/14*(1379*zeta^5 + 
742*zeta^4 - 6901*zeta^3 - 3188*zeta^2 + 7336*zeta + 1066)*q^415 + 
1/2*(-16*zeta^5 - 48*zeta^4 + 39*zeta^3 + 98*zeta^2 + 22*zeta + 52)*q^417 + 
1/14*(-519*zeta^5 - 364*zeta^4 + 2963*zeta^3 + 1057*zeta^2 - 4621*zeta - 
54)*q^418 + 1/14*(-1130*zeta^5 - 18*zeta^4 + 5098*zeta^3 + 111*zeta^2 - 
4515*zeta - 176)*q^419 + 1/14*(429*zeta^5 + 271*zeta^4 - 1921*zeta^3 - 
685*zeta^2 + 1806*zeta + 267)*q^420 + 1/14*(97*zeta^5 - 433*zeta^4 - 82*zeta^3 +
2344*zeta^2 + 15*zeta - 1493)*q^421 + 1/14*(-283*zeta^5 - 746*zeta^4 + 
1927*zeta^3 + 2989*zeta^2 - 2995*zeta - 1556)*q^422 + 1/14*(-349*zeta^5 + 
92*zeta^4 + 1720*zeta^3 - 61*zeta^2 - 1779*zeta - 1153)*q^423 + 1/14*(199*zeta^5
+ 20*zeta^4 - 1253*zeta^3 + 179*zeta^2 + 2465*zeta - 338)*q^424 + 
1/14*(345*zeta^5 + 301*zeta^4 - 1246*zeta^3 - 717*zeta^2 + 340*zeta - 383)*q^425
+ 1/14*(176*zeta^5 + 271*zeta^4 - 631*zeta^3 - 601*zeta^2 + 272*zeta - 
204)*q^426 + 1/14*(810*zeta^5 + 248*zeta^4 - 3613*zeta^3 - 493*zeta^2 + 
3363*zeta - 876)*q^427 + 1/14*(602*zeta^5 + 168*zeta^4 - 2355*zeta^3 - 
166*zeta^2 + 1330*zeta + 64)*q^428 + 1/14*(-516*zeta^5 - 80*zeta^4 + 1951*zeta^3
- 118*zeta^2 - 938*zeta - 52)*q^430 + 1/14*(-580*zeta^5 - 422*zeta^4 + 
3261*zeta^3 + 1269*zeta^2 - 4921*zeta - 106)*q^431 + 1/14*(-112*zeta^5 + 
23*zeta^4 + 430*zeta^3 - 314*zeta^2 - 397*zeta + 684)*q^432 + 1/14*(849*zeta^5 +
523*zeta^4 - 3650*zeta^3 - 1329*zeta^2 + 2954*zeta + 225)*q^433 + 
1/14*(-35*zeta^5 + 258*zeta^4 - 157*zeta^3 - 1397*zeta^2 + 495*zeta + 844)*q^434
+ 1/14*(-247*zeta^5 + 232*zeta^4 + 1157*zeta^3 - 757*zeta^2 - 1231*zeta - 
450)*q^435 + 1/7*(23*zeta^5 - 67*zeta^4 - 126*zeta^3 + 334*zeta^2 + 315*zeta - 
231)*q^436 + 1/14*(28*zeta^5 + 247*zeta^4 - zeta^3 - 986*zeta^2 - 633*zeta + 
685)*q^437 + 1/14*(42*zeta^5 - 195*zeta^4 - 394*zeta^3 + 376*zeta^2 + 779*zeta +
438)*q^438 + 1/14*(14*zeta^5 - 338*zeta^4 - 73*zeta^3 + 1322*zeta^2 + 404*zeta -
1272)*q^439 + 1/14*(-30*zeta^5 - 142*zeta^4 + 425*zeta^3 + 541*zeta^2 - 
1165*zeta - 366)*q^440 + 1/14*(-289*zeta^5 - 60*zeta^4 + 1244*zeta^3 + 
158*zeta^2 - 952*zeta - 138)*q^441 + 1/7*(10*zeta^5 + 41*zeta^4 - 306*zeta^3 - 
430*zeta^2 + 777*zeta + 184)*q^443 + 1/14*(-355*zeta^5 - 314*zeta^4 + 
1812*zeta^3 + 1098*zeta^2 - 2122*zeta - 232)*q^444 + 1/14*(192*zeta^5 + 
174*zeta^4 - 391*zeta^3 + 723*zeta^2 + 121*zeta - 3088)*q^445 + 1/14*(171*zeta^5
+ 270*zeta^4 - 456*zeta^3 - 597*zeta^2 - 357*zeta - 513)*q^446 + 
1/14*(-63*zeta^5 - 162*zeta^4 + 375*zeta^3 + 633*zeta^2 - 471*zeta - 360)*q^447 
+ 1/14*(264*zeta^5 + 651*zeta^4 - 1780*zeta^3 - 2599*zeta^2 + 2778*zeta + 
1360)*q^448 + 1/14*(337*zeta^5 + 102*zeta^4 - 1775*zeta^3 - 667*zeta^2 + 
2021*zeta + 1306)*q^449 + 1/14*(-34*zeta^5 - 351*zeta^4 + 201*zeta^3 + 
1527*zeta^2 + 146*zeta - 985)*q^450 + 1/2*(-75*zeta^5 - 7*zeta^4 + 300*zeta^3 + 
39*zeta^2 - 132*zeta + 25)*q^451 + 1/14*(36*zeta^5 - 470*zeta^4 - 507*zeta^3 + 
845*zeta^2 + 959*zeta + 880)*q^452 + 1/14*(-345*zeta^5 + 59*zeta^4 + 1385*zeta^3
- 507*zeta^2 - 1040*zeta + 867)*q^453 + 1/14*(-844*zeta^5 - 239*zeta^4 + 
3728*zeta^3 + 754*zeta^2 - 3059*zeta - 428)*q^454 + 1/14*(356*zeta^5 + 
138*zeta^4 - 1589*zeta^3 - 442*zeta^2 + 1344*zeta + 164)*q^456 + 
1/14*(-673*zeta^5 + 40*zeta^4 + 2376*zeta^3 - 530*zeta^2 - 492*zeta + 
1466)*q^457 + 1/14*(258*zeta^5 - 572*zeta^4 - 1441*zeta^3 + 1448*zeta^2 + 
1884*zeta - 48)*q^458 + 1/14*(-252*zeta^5 - 300*zeta^4 + 817*zeta^3 + 684*zeta^2
+ 44*zeta + 466)*q^459 + 1/14*(138*zeta^5 + 385*zeta^4 - 247*zeta^3 - 
1235*zeta^2 - 1024*zeta + 879)*q^460 + 1/14*(403*zeta^5 + 678*zeta^4 - 
2499*zeta^3 - 2825*zeta^2 + 3563*zeta + 1904)*q^461 + 1/14*(67*zeta^5 + 
109*zeta^4 - 484*zeta^3 - 314*zeta^2 + 1011*zeta - 41)*q^462 + 1/14*(-20*zeta^5 
+ 309*zeta^4 + 361*zeta^3 - 1300*zeta^2 - 1537*zeta + 967)*q^463 + 
1/14*(462*zeta^5 + 232*zeta^4 - 2249*zeta^3 - 618*zeta^2 + 2606*zeta + 
648)*q^464 + 1/14*(-124*zeta^5 + 57*zeta^4 + 464*zeta^3 - 510*zeta^2 - 459*zeta 
+ 980)*q^465 + 1/14*(333*zeta^5 + 141*zeta^4 - 1608*zeta^3 - 344*zeta^2 + 
1849*zeta - 243)*q^466 + 1/14*(306*zeta^5 - 557*zeta^4 - 414*zeta^3 + 
2654*zeta^2 - 1645*zeta - 80)*q^467 + 1/14*(521*zeta^5 + 538*zeta^4 - 
2784*zeta^3 - 2138*zeta^2 + 3318*zeta + 338)*q^469 + 1/14*(-383*zeta^5 - 
60*zeta^4 + 1678*zeta^3 - 24*zeta^2 - 1554*zeta + 586)*q^470 + 1/14*(-80*zeta^5 
- 189*zeta^4 + 253*zeta^3 + 435*zeta^2 - 24*zeta + 100)*q^471 + 1/14*(378*zeta^5
+ 626*zeta^4 - 1315*zeta^3 - 1378*zeta^2 + 468*zeta - 520)*q^472 + 
1/14*(139*zeta^5 - 51*zeta^4 - 420*zeta^3 + 645*zeta^2 + 226*zeta - 431)*q^473 +
1/14*(216*zeta^5 + 418*zeta^4 - 1437*zeta^3 - 1592*zeta^2 + 2386*zeta + 
751)*q^474 + 1/14*(-278*zeta^5 - 293*zeta^4 + 1623*zeta^3 + 1277*zeta^2 - 
2202*zeta - 1119)*q^475 + 1/14*(145*zeta^5 - 371*zeta^4 - 674*zeta^3 + 
1985*zeta^2 + 1538*zeta - 1403)*q^476 + 1/14*(357*zeta^5 - 100*zeta^4 - 
1865*zeta^3 + 81*zeta^2 + 2243*zeta + 755)*q^477 + 1/14*(194*zeta^5 - 504*zeta^4
- 1054*zeta^3 + 1473*zeta^2 + 1461*zeta - 568)*q^478 + 1/14*(-759*zeta^5 - 
14*zeta^4 + 3541*zeta^3 - 609*zeta^2 - 4189*zeta + 1476)*q^479 + 1/14*(63*zeta^5
+ 140*zeta^4 - 538*zeta^3 - 710*zeta^2 + 980*zeta + 142)*q^480 + 
1/14*(1088*zeta^5 + 531*zeta^4 - 4689*zeta^3 - 1456*zeta^2 + 3661*zeta + 
280)*q^482 + 1/14*(154*zeta^5 - 97*zeta^4 - 522*zeta^3 + 524*zeta^2 + 165*zeta -
599)*q^483 + 1/2*(-32*zeta^5 + 8*zeta^4 + 175*zeta^3 + 61*zeta^2 - 167*zeta - 
216)*q^484 + 1/14*(-69*zeta^5 - 246*zeta^4 - 19*zeta^3 + 515*zeta^2 + 819*zeta +
613)*q^485 + 1/14*(87*zeta^5 + 630*zeta^4 - 431*zeta^3 - 2659*zeta^2 - 263*zeta 
+ 1716)*q^486 + 1/14*(-866*zeta^5 - 605*zeta^4 + 4729*zeta^3 + 3093*zeta^2 - 
5514*zeta - 3889)*q^487 + 1/14*(437*zeta^5 + 187*zeta^4 - 2434*zeta^3 - 
874*zeta^2 + 3305*zeta + 1251)*q^488 + 1/14*(-397*zeta^5 - 652*zeta^4 + 
1819*zeta^3 + 2057*zeta^2 - 1617*zeta - 1162)*q^489 + 1/14*(-195*zeta^5 - 
208*zeta^4 + 738*zeta^3 + 481*zeta^2 - 365*zeta + 149)*q^490 + 1/14*(830*zeta^5 
+ 168*zeta^4 - 3744*zeta^3 - 699*zeta^2 + 3161*zeta + 744)*q^491 + 
1/2*(35*zeta^5 + 62*zeta^4 - 185*zeta^3 - 251*zeta^2 + 185*zeta + 116)*q^492 + 
1/14*(240*zeta^5 - 101*zeta^4 - 819*zeta^3 + 548*zeta^2 + 161*zeta + 64)*q^493 +
1/14*(213*zeta^5 + 34*zeta^4 - 732*zeta^3 + 134*zeta^2 + 182*zeta - 38)*q^495 + 
1/14*(364*zeta^5 + 57*zeta^4 - 1481*zeta^3 - 15*zeta^2 + 984*zeta - 557)*q^496 +
1/14*(454*zeta^5 + 432*zeta^4 - 1531*zeta^3 - 192*zeta^2 + 872*zeta - 
2368)*q^497 + 1/14*(15*zeta^5 + 104*zeta^4 + 149*zeta^3 - 213*zeta^2 - 707*zeta 
- 423)*q^498 + 1/14*(195*zeta^5 + 691*zeta^4 - 882*zeta^3 - 2673*zeta^2 + 
198*zeta + 1683)*q^499 + 1/14*(-298*zeta^5 - 930*zeta^4 + 2093*zeta^3 + 
3742*zeta^2 - 3248*zeta - 1897)*q^500 + 1/7*(-82*zeta^5 - 200*zeta^4 + 
469*zeta^3 + 964*zeta^2 - 364*zeta - 833)*q^501 + 1/7*(15*zeta^5 - 399*zeta^4 + 
92*zeta^3 + 1909*zeta^2 + 134*zeta - 1227)*q^502 + 1/14*(324*zeta^5 + 285*zeta^4
- 1935*zeta^3 - 678*zeta^2 + 3381*zeta + 1170)*q^503 + 1/14*(520*zeta^5 + 
52*zeta^4 - 2249*zeta^3 + 65*zeta^2 + 1937*zeta - 520)*q^504 + 1/14*(-572*zeta^5
- 130*zeta^4 + 2637*zeta^3 + 109*zeta^2 - 2821*zeta + 754)*q^505 + 
1/14*(356*zeta^5 + 145*zeta^4 - 1451*zeta^3 - 296*zeta^2 + 959*zeta + 48)*q^506 
+ 1/14*(1904*zeta^5 + 357*zeta^4 - 7856*zeta^3 - 526*zeta^2 + 5313*zeta + 
668)*q^508 + 1/14*(272*zeta^5 + 301*zeta^4 - 1461*zeta^3 - 1099*zeta^2 + 
1840*zeta + 359)*q^509 + 1/14*(162*zeta^5 - 111*zeta^4 - 784*zeta^3 + 279*zeta^2
+ 814*zeta - 4)*q^510 + 1/14*(771*zeta^5 + 65*zeta^4 - 4008*zeta^3 - 387*zeta^2 
+ 5046*zeta + 1591)*q^511 + 1/14*(258*zeta^5 + 256*zeta^4 - 780*zeta^3 - 
381*zeta^2 - 105*zeta + 252)*q^512 + 1/14*(331*zeta^5 + 282*zeta^4 - 1894*zeta^3
- 1263*zeta^2 + 2525*zeta + 1257)*q^513 + 1/14*(-295*zeta^5 - 1176*zeta^4 + 
2246*zeta^3 + 4633*zeta^2 - 3749*zeta - 2029)*q^514 + 1/14*(-249*zeta^5 - 
661*zeta^4 + 470*zeta^3 + 2089*zeta^2 + 1712*zeta - 1485)*q^515 + 
1/14*(87*zeta^5 - 80*zeta^4 - 624*zeta^3 + 131*zeta^2 + 1169*zeta + 523)*q^516 +
1/14*(650*zeta^5 + 334*zeta^4 - 2763*zeta^3 - 850*zeta^2 + 2104*zeta + 40)*q^517
+ 1/14*(-256*zeta^5 - 129*zeta^4 + 1574*zeta^3 + 248*zeta^2 - 2851*zeta + 
125)*q^518 + 1/7*(-116*zeta^5 - 260*zeta^4 + 356*zeta^3 + 552*zeta^2 - 28*zeta +
248)*q^519 + 1/14*(1415*zeta^5 + 618*zeta^4 - 5913*zeta^3 - 1468*zeta^2 + 
4228*zeta + 274)*q^521 + 1/14*(-69*zeta^5 + 70*zeta^4 - 86*zeta^3 - 252*zeta^2 +
1268*zeta + 348)*q^522 + 1/14*(-712*zeta^5 - 39*zeta^4 + 2952*zeta^3 - 
600*zeta^2 - 2557*zeta + 1860)*q^523 + 1/14*(-591*zeta^5 - 144*zeta^4 + 
2955*zeta^3 + 485*zeta^2 - 3493*zeta - 985)*q^524 + 1/14*(-193*zeta^5 - 
190*zeta^4 + 1141*zeta^3 + 557*zeta^2 - 1875*zeta - 184)*q^525 + 
1/14*(449*zeta^5 + 617*zeta^4 - 2753*zeta^3 - 2518*zeta^2 + 4059*zeta + 
1724)*q^526 + 1/14*(-387*zeta^5 - 410*zeta^4 + 2201*zeta^3 + 1905*zeta^2 - 
2711*zeta - 1858)*q^527 + 1/14*(68*zeta^5 + 79*zeta^4 - 297*zeta^3 - 198*zeta^2 
+ 275*zeta + 101)*q^528 + 1/7*(-51*zeta^5 - 194*zeta^4 + 108*zeta^3 + 405*zeta^2
+ 105*zeta + 209)*q^529 + 1/14*(358*zeta^5 - 199*zeta^4 - 1651*zeta^3 + 
676*zeta^2 + 1671*zeta - 476)*q^530 + 1/14*(677*zeta^5 + 526*zeta^4 - 
3696*zeta^3 - 1674*zeta^2 + 5210*zeta + 224)*q^531 + 1/14*(1561*zeta^5 + 
546*zeta^4 - 6852*zeta^3 - 1634*zeta^2 + 5558*zeta + 674)*q^532 + 
1/14*(-185*zeta^5 - 69*zeta^4 + 644*zeta^3 + 4*zeta^2 - 189*zeta + 58)*q^534 + 
1/14*(-169*zeta^5 + 127*zeta^4 + 306*zeta^3 - 582*zeta^2 + 941*zeta + 719)*q^535
+ 1/14*(-482*zeta^5 - 285*zeta^4 + 1909*zeta^3 + 360*zeta^2 - 1383*zeta + 
940)*q^536 + 1/14*(291*zeta^5 - 24*zeta^4 - 1282*zeta^3 - 49*zeta^2 + 933*zeta +
139)*q^537 + 1/14*(-85*zeta^5 - 155*zeta^4 + 318*zeta^3 + 474*zeta^2 - 73*zeta -
295)*q^538 + 1/14*(-74*zeta^5 - 159*zeta^4 + 501*zeta^3 + 607*zeta^2 - 838*zeta 
- 277)*q^539 + 1/14*(423*zeta^5 - 6*zeta^4 - 2219*zeta^3 - 185*zeta^2 + 
2751*zeta + 1148)*q^540 + 1/14*(-183*zeta^5 + 264*zeta^4 + 147*zeta^3 - 
1938*zeta^2 + 828*zeta + 1158)*q^541 + 1/14*(-456*zeta^5 - 157*zeta^4 + 
2225*zeta^3 + 466*zeta^2 - 2521*zeta - 650)*q^542 + 1/14*(-534*zeta^5 - 
607*zeta^4 + 2295*zeta^3 + 2104*zeta^2 - 1421*zeta - 1564)*q^543 + 
1/14*(-813*zeta^5 - 515*zeta^4 + 4225*zeta^3 + 1537*zeta^2 - 5526*zeta + 
81)*q^544 + 1/7*(-124*zeta^5 - 101*zeta^4 + 660*zeta^3 + 430*zeta^2 - 777*zeta -
100)*q^545 + 1/14*(-1571*zeta^5 - 601*zeta^4 + 6882*zeta^3 + 1772*zeta^2 - 
5565*zeta - 626)*q^547 + 1/7*(-160*zeta^5 + 88*zeta^4 + 486*zeta^3 - 466*zeta^2 
+ 94*zeta + 584)*q^548 + 1/14*(-126*zeta^5 + 373*zeta^4 + 941*zeta^3 - 
370*zeta^2 - 1251*zeta - 1500)*q^549 + 1/14*(-597*zeta^5 - 414*zeta^4 + 
2375*zeta^3 + 1027*zeta^2 - 1357*zeta + 225)*q^550 + 1/14*(169*zeta^5 + 
48*zeta^4 - 429*zeta^3 + 330*zeta^2 - 176*zeta - 194)*q^551 + 1/14*(140*zeta^5 -
55*zeta^4 - 668*zeta^3 + 71*zeta^2 + 618*zeta + 500)*q^552 + 1/14*(385*zeta^5 + 
667*zeta^4 - 2484*zeta^3 - 2602*zeta^2 + 3945*zeta + 1413)*q^553 + 
1/14*(150*zeta^5 - 255*zeta^4 - 755*zeta^3 + 1445*zeta^2 + 1600*zeta - 
1065)*q^554 + 1/14*(189*zeta^5 + 131*zeta^4 - 787*zeta^3 - 325*zeta^2 + 570*zeta
- 1)*q^555 + 1/2*(-70*zeta^5 + 83*zeta^4 + 331*zeta^3 - 284*zeta^2 - 379*zeta + 
204)*q^556 + 1/14*(459*zeta^5 - 130*zeta^4 - 1609*zeta^3 + 837*zeta^2 + 457*zeta
- 1308)*q^557 + 1/14*(1159*zeta^5 + 533*zeta^4 - 5117*zeta^3 - 1606*zeta^2 + 
4235*zeta + 422)*q^558 + 1/14*(267*zeta^5 + 205*zeta^4 - 1517*zeta^3 - 
1006*zeta^2 + 1939*zeta + 302)*q^560 + 1/14*(-360*zeta^5 - 339*zeta^4 + 
1824*zeta^3 + 1214*zeta^2 - 2059*zeta - 297)*q^561 + 1/14*(362*zeta^5 - 
91*zeta^4 - 1649*zeta^3 + 304*zeta^2 + 1559*zeta - 204)*q^562 + 1/14*(681*zeta^5
+ 197*zeta^4 - 3362*zeta^3 - 621*zeta^2 + 3884*zeta + 1049)*q^563 + 
1/14*(-299*zeta^5 - 350*zeta^4 + 1283*zeta^3 + 871*zeta^2 - 1125*zeta - 
452)*q^564 + 1/14*(401*zeta^5 - 94*zeta^4 - 2040*zeta^3 + 139*zeta^2 + 2403*zeta
+ 1053)*q^565 + 1/7*(zeta^5 + 303*zeta^4 - 138*zeta^3 - 1250*zeta^2 + 197*zeta +
551)*q^566 + 1/14*(255*zeta^5 + 589*zeta^4 - 1184*zeta^3 - 2095*zeta^2 + 
838*zeta + 1257)*q^567 + 1/14*(789*zeta^5 + 658*zeta^4 - 3675*zeta^3 - 
1579*zeta^2 + 4049*zeta + 775)*q^568 + 1/14*(-516*zeta^5 - 129*zeta^4 + 
2012*zeta^3 - 414*zeta^2 - 1625*zeta + 1964)*q^569 + 1/14*(219*zeta^5 + 
107*zeta^4 - 1132*zeta^3 - 268*zeta^2 + 1515*zeta - 117)*q^570 + 
1/14*(-683*zeta^5 - 197*zeta^4 + 3365*zeta^3 + 1038*zeta^2 - 3451*zeta - 
622)*q^571 + 1/14*(157*zeta^5 - 365*zeta^4 - 497*zeta^3 + 1242*zeta^2 - 63*zeta 
+ 250)*q^573 + 1/2*(-32*zeta^5 - 50*zeta^4 + 185*zeta^3 + 193*zeta^2 - 249*zeta 
- 86)*q^574 + 1/14*(-126*zeta^5 - 178*zeta^4 + 370*zeta^3 + 121*zeta^2 - 
129*zeta + 864)*q^575 + 1/14*(528*zeta^5 + 719*zeta^4 - 1823*zeta^3 - 
1614*zeta^2 + 443*zeta - 754)*q^576 + 1/14*(-76*zeta^5 + 611*zeta^4 - 273*zeta^3
- 3228*zeta^2 + 761*zeta + 1985)*q^577 + 1/14*(181*zeta^5 + 679*zeta^4 - 
1366*zeta^3 - 2654*zeta^2 + 2313*zeta + 1135)*q^578 + 1/7*(-20*zeta^5 + 
133*zeta^4 + 92*zeta^3 - 629*zeta^2 - 318*zeta + 412)*q^579 + 1/14*(323*zeta^5 +
371*zeta^4 - 720*zeta^3 - 576*zeta^2 - 1105*zeta + 467)*q^580 + 
1/14*(-942*zeta^5 - 325*zeta^4 + 4829*zeta^3 + 964*zeta^2 - 6139*zeta - 
1808)*q^581 + 1/14*(446*zeta^5 + 23*zeta^4 - 2066*zeta^3 - 269*zeta^2 + 
1820*zeta + 564)*q^582 + 1/14*(-835*zeta^5 - 696*zeta^4 + 4076*zeta^3 + 
2446*zeta^2 - 4256*zeta - 418)*q^583 + 1/14*(-342*zeta^5 + 282*zeta^4 + 
865*zeta^3 - 1530*zeta^2 + 644*zeta + 40)*q^584 + 1/14*(-1869*zeta^5 - 
637*zeta^4 + 7741*zeta^3 + 1354*zeta^2 - 5355*zeta - 450)*q^586 + 
1/14*(-361*zeta^5 - 961*zeta^4 + 2935*zeta^3 + 3747*zeta^2 - 5822*zeta - 
2161)*q^587 + 1/14*(16*zeta^5 - 107*zeta^4 - 125*zeta^3 + 269*zeta^2 + 224*zeta 
- 4)*q^588 + 1/14*(165*zeta^5 + 378*zeta^4 - 266*zeta^3 - 811*zeta^2 - 923*zeta 
- 843)*q^589 + 1/14*(139*zeta^5 - 475*zeta^4 - 474*zeta^3 + 2526*zeta^2 + 
1051*zeta - 1703)*q^590 + 1/14*(-205*zeta^5 + 21*zeta^4 + 1069*zeta^3 + 
12*zeta^2 - 1331*zeta - 516)*q^591 + 1/14*(32*zeta^5 + 131*zeta^4 - 228*zeta^3 -
551*zeta^2 + 306*zeta + 312)*q^592 + 1/7*(-61*zeta^5 + 264*zeta^4 + 563*zeta^3 -
1181*zeta^2 - 1787*zeta + 914)*q^593 + 1/14*(543*zeta^5 + 453*zeta^4 - 
2152*zeta^3 - 1087*zeta^2 + 1278*zeta - 221)*q^594 + 1/14*(326*zeta^5 - 
166*zeta^4 - 1494*zeta^3 + 583*zeta^2 + 1497*zeta - 448)*q^595 + 
1/14*(501*zeta^5 + 345*zeta^4 - 2718*zeta^3 - 1038*zeta^2 + 3855*zeta + 
33)*q^596 + 1/14*(-458*zeta^5 + 71*zeta^4 + 2187*zeta^3 + 44*zeta^2 - 2079*zeta 
- 524)*q^597 + 1/14*(899*zeta^5 + 517*zeta^4 - 4376*zeta^3 - 2024*zeta^2 + 
4445*zeta + 570)*q^599 + 1/14*(348*zeta^5 + 329*zeta^4 - 1543*zeta^3 - 
1253*zeta^2 + 1034*zeta + 291)*q^600 + 1/14*(204*zeta^5 + 132*zeta^4 - 
717*zeta^3 + 75*zeta^2 + 483*zeta - 1080)*q^601 + 1/14*(-906*zeta^5 - 794*zeta^4
+ 3709*zeta^3 + 1890*zeta^2 - 2644*zeta + 132)*q^602 + 1/14*(-30*zeta^5 - 
125*zeta^4 - 363*zeta^3 + 246*zeta^2 + 1743*zeta - 315)*q^603 + 
1/14*(-941*zeta^5 - 463*zeta^4 + 5173*zeta^3 + 2320*zeta^2 - 6587*zeta - 
3276)*q^604 + 1/14*(-409*zeta^5 + 272*zeta^4 + 2002*zeta^3 - 865*zeta^2 - 
2331*zeta - 763)*q^605 + 1/14*(168*zeta^5 + 507*zeta^4 - 929*zeta^3 - 
1990*zeta^2 + 895*zeta + 1185)*q^606 + 1/14*(699*zeta^5 + 261*zeta^4 - 
2797*zeta^3 - 755*zeta^2 + 1430*zeta - 231)*q^607 + 1/14*(-750*zeta^5 + 
379*zeta^4 + 3531*zeta^3 - 1048*zeta^2 - 3535*zeta + 268)*q^608 + 
1/14*(48*zeta^5 - 372*zeta^4 + 237*zeta^3 + 1625*zeta^2 - 1111*zeta - 
1212)*q^609 + 1/14*(-1310*zeta^5 - 499*zeta^4 + 5864*zeta^3 + 1622*zeta^2 - 
4991*zeta - 624)*q^610 + 1/14*(-1526*zeta^5 - 371*zeta^4 + 6402*zeta^3 + 
786*zeta^2 - 4571*zeta - 552)*q^612 + 1/14*(14*zeta^5 + 99*zeta^4 + 269*zeta^3 -
561*zeta^2 - 1536*zeta + 269)*q^613 + 1/7*(356*zeta^5 - 76*zeta^4 - 1705*zeta^3 
- 5*zeta^2 + 1603*zeta + 520)*q^614 + 1/2*(24*zeta^5 + 19*zeta^4 - 117*zeta^3 - 
46*zeta^2 + 143*zeta + 34)*q^615 + 1/14*(-336*zeta^5 - 267*zeta^4 + 1523*zeta^3 
+ 451*zeta^2 - 1738*zeta - 129)*q^616 + 1/14*(117*zeta^5 - 466*zeta^4 - 
172*zeta^3 + 1387*zeta^2 - 961*zeta + 669)*q^617 + 1/14*(-220*zeta^5 - 
163*zeta^4 + 1235*zeta^3 + 765*zeta^2 - 1584*zeta - 857)*q^618 + 1/14*(-3*zeta^5
- 215*zeta^4 - 228*zeta^3 + 840*zeta^2 + 1149*zeta - 639)*q^619 + 
1/14*(-474*zeta^5 - 16*zeta^4 + 2629*zeta^3 + 190*zeta^2 - 3738*zeta - 
1308)*q^620 + 1/14*(118*zeta^5 + 143*zeta^4 - 281*zeta^3 + 178*zeta^2 + 79*zeta 
- 1428)*q^621 + 1/14*(844*zeta^5 + 738*zeta^4 - 5207*zeta^3 - 2271*zeta^2 + 
8955*zeta + 526)*q^622 + 1/14*(306*zeta^5 + 297*zeta^4 - 2188*zeta^3 - 
1866*zeta^2 + 3493*zeta + 656)*q^623 + 1/14*(-636*zeta^5 - 684*zeta^4 + 
3415*zeta^3 + 2706*zeta^2 - 4102*zeta - 404)*q^625 + 1/14*(549*zeta^5 + 
409*zeta^4 - 2783*zeta^3 - 1347*zeta^2 + 3326*zeta + 129)*q^626 + 
1/14*(-170*zeta^5 + 74*zeta^4 + 800*zeta^3 - 191*zeta^2 - 789*zeta + 16)*q^627 +
1/14*(-723*zeta^5 - 740*zeta^4 + 2873*zeta^3 + 1721*zeta^2 - 1869*zeta + 
279)*q^628 + 1/14*(207*zeta^5 - 197*zeta^4 - 930*zeta^3 + 1353*zeta^2 + 
1584*zeta - 1005)*q^629 + 1/14*(97*zeta^5 + 550*zeta^4 - 818*zeta^3 - 
2181*zeta^2 + 1383*zeta + 923)*q^630 + 1/14*(-70*zeta^5 + 741*zeta^4 + 
136*zeta^3 - 3207*zeta^2 - 548*zeta + 1614)*q^631 + 1/14*(-390*zeta^5 + 
89*zeta^4 + 1767*zeta^3 - 1272*zeta^2 - 2613*zeta + 1047)*q^632 + 
1/14*(132*zeta^5 + 49*zeta^4 - 343*zeta^3 - 142*zeta^2 - 471*zeta - 414)*q^633 +
1/7*(-714*zeta^5 + 275*zeta^4 + 3356*zeta^3 - 671*zeta^2 - 3274*zeta - 44)*q^634
+ 1/14*(81*zeta^5 + 360*zeta^4 - 1203*zeta^3 - 1333*zeta^2 + 3425*zeta + 
918)*q^635 + 1/14*(259*zeta^5 + 378*zeta^4 - 937*zeta^3 - 836*zeta^2 + 420*zeta 
- 278)*q^636 + 1/14*(-563*zeta^5 - 34*zeta^4 + 2512*zeta^3 + 182*zeta^2 - 
2086*zeta - 406)*q^638 + 1/14*(1046*zeta^5 + 293*zeta^4 - 4433*zeta^3 - 
587*zeta^2 + 3380*zeta - 1213)*q^639 + 1/14*(-718*zeta^5 + 159*zeta^4 + 
3062*zeta^3 - 1143*zeta^2 - 2862*zeta + 1988)*q^640 + 1/14*(-393*zeta^5 + 
374*zeta^4 + 2381*zeta^3 - 617*zeta^2 - 3517*zeta - 1487)*q^641 + 1/14*(zeta^5 -
136*zeta^4 + 111*zeta^3 + 672*zeta^2 - 194*zeta - 410)*q^642 + 1/14*(-244*zeta^5
- 877*zeta^4 + 1869*zeta^3 + 3331*zeta^2 - 3360*zeta - 1239)*q^643 + 
1/14*(414*zeta^5 - 58*zeta^4 - 2121*zeta^3 - 22*zeta^2 + 2492*zeta + 1169)*q^644
+ 1/14*(111*zeta^5 + 276*zeta^4 - 223*zeta^3 - 854*zeta^2 - 688*zeta + 
606)*q^645 + 1/14*(-1392*zeta^5 - 1529*zeta^4 + 5158*zeta^3 + 3522*zeta^2 - 
2209*zeta + 1284)*q^646 + 1/7*(-140*zeta^5 - 192*zeta^4 + 622*zeta^3 + 
744*zeta^2 - 360*zeta - 704)*q^647 + 1/14*(-399*zeta^5 - 547*zeta^4 + 
2321*zeta^3 + 2045*zeta^2 - 3294*zeta - 843)*q^648 + 1/14*(-1241*zeta^5 - 
704*zeta^4 + 5300*zeta^3 + 1878*zeta^2 - 4060*zeta - 202)*q^649 + 
1/14*(-367*zeta^5 + 190*zeta^4 + 1837*zeta^3 - 236*zeta^2 - 1876*zeta - 
594)*q^651 + 1/14*(137*zeta^5 + 611*zeta^4 - 1640*zeta^3 - 2396*zeta^2 + 
4079*zeta + 1559)*q^652 + 1/14*(702*zeta^5 + 298*zeta^4 - 3189*zeta^3 - 
1282*zeta^2 + 2540*zeta + 1432)*q^653 + 1/7*(195*zeta^5 + 27*zeta^4 - 831*zeta^3
- 119*zeta^2 + 556*zeta + 37)*q^654 + 1/14*(-302*zeta^5 - 591*zeta^4 + 
683*zeta^3 + 1642*zeta^2 + 1365*zeta - 1169)*q^655 + 1/2*(-13*zeta^5 + 19*zeta^4
+ 54*zeta^3 - 60*zeta^2 - 37*zeta - 31)*q^656 + 1/14*(48*zeta^5 - 1088*zeta^4 + 
407*zeta^3 + 4098*zeta^2 - 1466*zeta - 925)*q^657 + 1/14*(162*zeta^5 + 
478*zeta^4 - 658*zeta^3 - 1751*zeta^2 + 47*zeta + 1110)*q^658 + 
1/14*(-1068*zeta^5 - 299*zeta^4 + 5148*zeta^3 + 954*zeta^2 - 5583*zeta - 
1396)*q^659 + 1/14*(-192*zeta^5 + 17*zeta^4 + 849*zeta^3 - 113*zeta^2 - 770*zeta
+ 188)*q^660 + 1/14*(795*zeta^5 + 189*zeta^4 - 2871*zeta^3 - 455*zeta^2 + 
466*zeta - 1023)*q^661 + 1/14*(-1396*zeta^5 - 601*zeta^4 + 5992*zeta^3 + 
1614*zeta^2 - 4613*zeta - 404)*q^662 + 1/14*(-7*zeta^5 - 189*zeta^4 + 776*zeta^3
+ 1424*zeta^2 - 2149*zeta - 450)*q^664 + 1/14*(577*zeta^5 + 155*zeta^4 - 
2649*zeta^3 - 225*zeta^2 + 2758*zeta - 689)*q^665 + 1/14*(696*zeta^5 - 
224*zeta^4 - 3305*zeta^3 + 377*zeta^2 + 3181*zeta + 488)*q^666 + 
1/14*(-1254*zeta^5 - 663*zeta^4 + 5820*zeta^3 + 1744*zeta^2 - 5969*zeta - 
1190)*q^667 + (-89*zeta^4 + 15*zeta^3 + 408*zeta^2 + 81*zeta - 267)*q^668 + 
1/14*(72*zeta^5 - 228*zeta^4 - 231*zeta^3 + 810*zeta^2 + 42*zeta + 21)*q^669 + 
1/14*(158*zeta^5 - 263*zeta^4 - 677*zeta^3 + 931*zeta^2 + 638*zeta + 145)*q^670 
+ 1/14*(-123*zeta^5 - 559*zeta^4 + 552*zeta^3 + 2238*zeta^2 + 75*zeta - 
1431)*q^671 + 1/14*(-858*zeta^5 - 367*zeta^4 + 3716*zeta^3 + 1020*zeta^2 - 
2933*zeta - 282)*q^672 + 1/14*(208*zeta^5 + 69*zeta^4 - 443*zeta^3 + 1203*zeta^2
+ 270*zeta - 3668)*q^673 + 1/14*(199*zeta^5 + 233*zeta^4 - 882*zeta^3 - 
926*zeta^2 + 515*zeta + 301)*q^674 + 1/14*(114*zeta^5 + 67*zeta^4 - 216*zeta^3 +
146*zeta^2 - 385*zeta - 200)*q^675 + 1/7*(-99*zeta^5 + 47*zeta^4 + 792*zeta^3 + 
304*zeta^2 - 1337*zeta - 394)*q^677 + 1/14*(306*zeta^5 + 379*zeta^4 - 
1694*zeta^3 - 1408*zeta^2 + 2221*zeta + 525)*q^678 + 1/14*(610*zeta^5 - 
36*zeta^4 - 2922*zeta^3 - 387*zeta^2 + 2653*zeta + 1272)*q^679 + 
1/14*(-159*zeta^5 - 299*zeta^4 + 388*zeta^3 + 651*zeta^2 + 428*zeta + 549)*q^680
+ 1/14*(51*zeta^5 + 127*zeta^4 - 506*zeta^3 - 595*zeta^2 + 1096*zeta + 
279)*q^681 + 1/14*(293*zeta^5 + 623*zeta^4 - 1793*zeta^3 - 2752*zeta^2 + 
2187*zeta + 2024)*q^682 + 1/14*(-414*zeta^5 - 88*zeta^4 + 2125*zeta^3 + 
744*zeta^2 - 2224*zeta - 1733)*q^683 + 1/14*(-242*zeta^5 + 455*zeta^4 + 
773*zeta^3 - 2750*zeta^2 - 1089*zeta + 1849)*q^684 + 1/7*(522*zeta^5 + 
268*zeta^4 - 2496*zeta^3 - 710*zeta^2 + 2770*zeta + 642)*q^685 + 
1/14*(906*zeta^5 - 298*zeta^4 - 4424*zeta^3 + 151*zeta^2 + 4269*zeta + 
1584)*q^686 + 1/14*(-467*zeta^5 - 606*zeta^4 + 2182*zeta^3 + 2412*zeta^2 - 
1596*zeta - 884)*q^687 + 1/14*(523*zeta^5 + 276*zeta^4 - 2589*zeta^3 - 
1160*zeta^2 + 2702*zeta + 386)*q^688 + 1/14*(-247*zeta^5 - 109*zeta^4 + 
1181*zeta^3 + 438*zeta^2 - 1155*zeta - 166)*q^690 + 1/14*(1152*zeta^5 + 
237*zeta^4 - 5142*zeta^3 - 160*zeta^2 + 4991*zeta - 1593)*q^691 + 
1/7*(-408*zeta^5 + 464*zeta^4 + 1952*zeta^3 - 1508*zeta^2 - 2212*zeta + 
928)*q^692 + 1/14*(276*zeta^5 + 415*zeta^4 - 1152*zeta^3 - 922*zeta^2 + 
1067*zeta + 4)*q^693 + 1/14*(-186*zeta^5 + 375*zeta^4 + 575*zeta^3 - 2237*zeta^2
- 808*zeta + 1497)*q^694 + 1/2*(30*zeta^5 - 127*zeta^4 - 89*zeta^3 + 483*zeta^2 
+ 38*zeta - 83)*q^695 + 1/14*(173*zeta^5 - 245*zeta^4 - 660*zeta^3 + 642*zeta^2 
+ 125*zeta + 737)*q^696 + 1/2*(-32*zeta^5 - 61*zeta^4 + 161*zeta^3 + 211*zeta^2 
- 168*zeta - 119)*q^697 + 1/14*(561*zeta^5 + 503*zeta^4 - 2098*zeta^3 - 
1193*zeta^2 + 854*zeta - 479)*q^698 + 1/14*(68*zeta^5 + 40*zeta^4 - 385*zeta^3 -
397*zeta^2 + 311*zeta + 792)*q^699 + 1/14*(137*zeta^5 - 19*zeta^4 - 128*zeta^3 +
40*zeta^2 - 1423*zeta - 331)*q^700 + 1/14*(-451*zeta^5 + 302*zeta^4 + 
2239*zeta^3 - 504*zeta^2 - 2240*zeta - 770)*q^701 + O(q^702), 1/7*(4*zeta^5 + 
zeta^4 - 15*zeta^3 + 7*zeta)*q + 1/7*(7*zeta^5 + 4*zeta^4 - 37*zeta^3 - 
11*zeta^2 + 51*zeta - 2)*q^2 + 1/7*(2*zeta^5 - 10*zeta^3 - 3*zeta^2 + 9*zeta + 
8)*q^3 + 1/7*(-15*zeta^5 - 13*zeta^4 + 61*zeta^3 + 31*zeta^2 - 42*zeta + 3)*q^4 
+ 1/7*(-3*zeta^5 - zeta^4 + 8*zeta^3 - 5*zeta^2 + 2*zeta + 3)*q^5 + 
1/7*(2*zeta^5 + 5*zeta^4 - 13*zeta^3 - 21*zeta^2 + 18*zeta + 13)*q^6 + 
1/7*(zeta^5 + 11*zeta^4 - 11*zeta^3 - 44*zeta^2 + 19*zeta + 18)*q^7 + 
1/7*(zeta^5 + 8*zeta^4 - 3*zeta^3 - 33*zeta^2 - 11*zeta + 22)*q^8 + 
1/7*(3*zeta^5 + 6*zeta^4 - 5*zeta^3 - 13*zeta^2 - 17*zeta - 15)*q^9 + 
1/7*(-10*zeta^5 + 5*zeta^4 + 47*zeta^3 - 14*zeta^2 - 47*zeta + 4)*q^10 + 
1/7*(7*zeta^5 + 2*zeta^4 - 36*zeta^3 - 2*zeta^2 + 50*zeta - 8)*q^11 + 
1/7*(-7*zeta^5 + 27*zeta^3 - 4*zeta^2 - 14*zeta - 2)*q^12 + 1/7*(-30*zeta^5 - 
11*zeta^4 + 131*zeta^3 + 32*zeta^2 - 105*zeta - 12)*q^14 + 1/7*(2*zeta^5 - 
2*zeta^4 - 3*zeta^3 + 9*zeta^2 - 13*zeta - 10)*q^15 + 1/7*(-2*zeta^4 - 3*zeta^3 
- zeta^2 + 5*zeta + 16)*q^16 + 1/7*(21*zeta^5 + 20*zeta^4 - 82*zeta^3 - 
47*zeta^2 + 47*zeta - 11)*q^17 + 1/7*(4*zeta^5 - 10*zeta^4 - 12*zeta^3 + 
57*zeta^2 + 19*zeta - 38)*q^18 + 1/7*(-9*zeta^5 - 23*zeta^4 + 60*zeta^3 + 
94*zeta^2 - 89*zeta - 53)*q^19 + 1/7*(-3*zeta^5 - 22*zeta^4 + 28*zeta^3 + 
87*zeta^2 - 49*zeta - 35)*q^20 + 1/7*(-4*zeta^5 - 3*zeta^4 + 15*zeta^3 + 
3*zeta^2 - 10*zeta - 1)*q^21 + 1/7*(-18*zeta^5 - 19*zeta^4 + 66*zeta^3 + 
44*zeta^2 - 25*zeta + 18)*q^22 + 1/7*(8*zeta^5 - 3*zeta^4 - 34*zeta^3 + 
18*zeta^2 + 33*zeta - 28)*q^23 + 1/7*(-4*zeta^5 + zeta^4 + 18*zeta^3 - 8*zeta^2 
- 21*zeta + 11)*q^24 + 1/7*(-23*zeta^5 - 11*zeta^4 + 104*zeta^3 + 36*zeta^2 - 
91*zeta - 10)*q^25 + 1/7*(27*zeta^5 + 12*zeta^4 - 124*zeta^3 - 42*zeta^2 + 
112*zeta + 14)*q^27 + 1/7*(-23*zeta^5 - 8*zeta^4 + 113*zeta^3 + 15*zeta^2 - 
139*zeta + 22)*q^28 + 1/7*(-2*zeta^5 + 3*zeta^4 + 18*zeta^3 + 15*zeta^2 - 
20*zeta - 60)*q^29 + 1/7*(9*zeta^5 + 8*zeta^4 - 37*zeta^3 - 19*zeta^2 + 27*zeta 
- 1)*q^30 + 1/7*(4*zeta^5 + 18*zeta^4 - 12*zeta^3 - 69*zeta^2 - 23*zeta + 
46)*q^31 + 1/7*(6*zeta^5 + 30*zeta^4 - 49*zeta^3 - 118*zeta^2 + 84*zeta + 
49)*q^32 + 1/7*(zeta^5 + 6*zeta^4 - 10*zeta^3 - 21*zeta^2 + 23*zeta + 3)*q^33 + 
1/7*(6*zeta^5 - 23*zeta^4 - 21*zeta^3 + 120*zeta^2 + 51*zeta - 81)*q^34 + 
1/7*(30*zeta^5 + 21*zeta^4 - 133*zeta^3 - 52*zeta^2 + 123*zeta + 16)*q^35 + 
1/7*(20*zeta^5 - 13*zeta^4 - 102*zeta^3 + 16*zeta^2 + 105*zeta + 44)*q^36 + 
1/7*(-13*zeta^5 - 6*zeta^4 + 71*zeta^3 + 13*zeta^2 - 107*zeta + 8)*q^37 + 
1/7*(79*zeta^5 + 25*zeta^4 - 339*zeta^3 - 66*zeta^2 + 259*zeta + 30)*q^38 + 
1/7*(31*zeta^5 + 13*zeta^4 - 144*zeta^3 - 48*zeta^2 + 133*zeta + 18)*q^40 + 
(-2*zeta^5 - zeta^4 + 9*zeta^3 + 3*zeta^2 - 8*zeta + 1)*q^41 + 1/7*(-10*zeta^5 +
2*zeta^4 + 46*zeta^3 - 5*zeta^2 - 43*zeta)*q^42 + 1/7*(-11*zeta^4 - 20*zeta^3 + 
22*zeta^2 + 69*zeta + 40)*q^43 + 1/7*(-5*zeta^5 + 14*zeta^4 + 23*zeta^3 - 
74*zeta^2 - 54*zeta + 52)*q^44 + 1/7*(15*zeta^5 + 4*zeta^4 - 81*zeta^3 - 
23*zeta^2 + 103*zeta + 46)*q^45 + 1/7*(11*zeta^5 + 11*zeta^4 - 64*zeta^3 - 
48*zeta^2 + 87*zeta + 43)*q^46 + 1/7*(-5*zeta^5 - zeta^4 + 6*zeta^3 - 15*zeta^2 
+ 28*zeta + 7)*q^47 + 1/7*(3*zeta^5 + zeta^4 - 16*zeta^3 - 3*zeta^2 + 22*zeta + 
7)*q^48 + 1/7*(8*zeta^5 - 4*zeta^4 - 39*zeta^3 + 7*zeta^2 + 39*zeta + 8)*q^49 + 
1/7*(-15*zeta^5 - 13*zeta^4 + 89*zeta^3 + 41*zeta^2 - 144*zeta - 9)*q^50 + 
1/7*(15*zeta^5 + 2*zeta^4 - 62*zeta^3 - 2*zeta^2 + 42*zeta + 6)*q^51 + 
1/7*(20*zeta^5 - 2*zeta^4 - 73*zeta^3 + 22*zeta^2 + 28*zeta + 4)*q^53 + 
1/7*(14*zeta^5 + 13*zeta^4 - 87*zeta^3 - 41*zeta^2 + 150*zeta + 11)*q^54 + 
1/7*(-12*zeta^5 + 6*zeta^4 + 55*zeta^3 - 21*zeta^2 - 55*zeta + 16)*q^55 + 
1/7*(3*zeta^5 + 9*zeta^4 + 3*zeta^3 - 19*zeta^2 - 46*zeta - 31)*q^56 + 
1/7*(3*zeta^5 - 4*zeta^4 - 9*zeta^3 + 27*zeta^2 + 9*zeta - 18)*q^57 + 
1/7*(-5*zeta^5 - 24*zeta^4 + 39*zeta^3 + 97*zeta^2 - 61*zeta - 46)*q^58 + 
1/7*(-23*zeta^5 - 42*zeta^4 + 145*zeta^3 + 173*zeta^2 - 211*zeta - 110)*q^59 + 
1/7*(4*zeta^5 - 10*zeta^3 + 13*zeta^2 - 3*zeta - 8)*q^60 + 1/7*(-48*zeta^5 - 
41*zeta^4 + 201*zeta^3 + 98*zeta^2 - 157*zeta - 2)*q^61 + 1/7*(-20*zeta^5 + 
19*zeta^4 + 104*zeta^3 - 34*zeta^2 - 113*zeta - 36)*q^62 + 1/7*(8*zeta^4 - 
25*zeta^3 - 29*zeta^2 + 95*zeta + 24)*q^63 + 1/7*(-73*zeta^5 - 20*zeta^4 + 
308*zeta^3 + 46*zeta^2 - 224*zeta - 26)*q^64 + 1/7*(-19*zeta^5 - 3*zeta^4 + 
82*zeta^3 + 8*zeta^2 - 63*zeta - 10)*q^66 + 1/7*(19*zeta^5 + zeta^4 - 70*zeta^3 
+ 6*zeta^2 + 23*zeta - 35)*q^67 + 1/7*(46*zeta^5 - 25*zeta^4 - 222*zeta^3 + 
55*zeta^2 + 224*zeta + 20)*q^68 + 1/7*(-15*zeta^5 - 9*zeta^4 + 67*zeta^3 + 
23*zeta^2 - 62*zeta - 9)*q^69 + 1/7*(zeta^5 - 17*zeta^4 - 8*zeta^3 + 77*zeta^2 +
44*zeta - 53)*q^70 + 1/7*(-24*zeta^5 + 4*zeta^4 + 125*zeta^3 - 6*zeta^2 - 
158*zeta - 55)*q^71 + 1/7*(7*zeta^5 + 29*zeta^4 - 52*zeta^3 - 118*zeta^2 + 
79*zeta + 59)*q^72 + 1/7*(zeta^5 + 32*zeta^4 + 13*zeta^3 - 133*zeta^2 - 103*zeta
+ 94)*q^73 + 1/7*(39*zeta^5 + 41*zeta^4 - 145*zeta^3 - 95*zeta^2 + 62*zeta - 
35)*q^74 + 1/7*(-12*zeta^5 - 3*zeta^4 + 52*zeta^3 + 6*zeta^2 - 43*zeta + 4)*q^75
+ 1/7*(51*zeta^5 + 29*zeta^4 - 274*zeta^3 - 78*zeta^2 + 391*zeta - 15)*q^76 + 
1/7*(-36*zeta^5 - 9*zeta^4 + 160*zeta^3 + 30*zeta^2 - 133*zeta - 20)*q^77 + 
1/7*(-93*zeta^5 - 25*zeta^4 + 398*zeta^3 + 64*zeta^2 - 301*zeta - 38)*q^79 + 
1/7*(9*zeta^5 - 3*zeta^4 - 27*zeta^3 + 17*zeta^2 - 10*zeta - 27)*q^80 + 
1/7*(-14*zeta^5 + 15*zeta^4 + 68*zeta^3 - 45*zeta^2 - 76*zeta + 20)*q^81 + 
(zeta^4 + zeta^3 - 2*zeta^2 - 3*zeta - 2)*q^82 + 1/7*(-8*zeta^5 - 35*zeta^4 + 
13*zeta^3 + 128*zeta^2 + 83*zeta - 89)*q^83 + 1/7*(-2*zeta^5 - 17*zeta^4 + 
21*zeta^3 + 65*zeta^2 - 42*zeta - 21)*q^84 + 1/7*(11*zeta^5 + 31*zeta^4 - 
75*zeta^3 - 126*zeta^2 + 113*zeta + 68)*q^85 + 1/7*(-11*zeta^5 + 20*zeta^4 + 
35*zeta^3 - 122*zeta^2 - 48*zeta + 82)*q^86 + 1/7*(-18*zeta^5 - 5*zeta^4 + 
87*zeta^3 + 16*zeta^2 - 95*zeta - 24)*q^87 + 1/7*(-20*zeta^5 + 5*zeta^4 + 
97*zeta^3 + zeta^2 - 92*zeta - 36)*q^88 + 1/7*(10*zeta^5 - 15*zeta^4 - 2*zeta^3 
+ 64*zeta^2 - 113*zeta - 65)*q^89 + 1/7*(-44*zeta^5 - 11*zeta^4 + 180*zeta^3 + 
18*zeta^2 - 119*zeta - 12)*q^90 + 1/7*(-49*zeta^5 - 21*zeta^4 + 225*zeta^3 + 
74*zeta^2 - 203*zeta - 26)*q^92 + 1/7*(-9*zeta^5 + 4*zeta^4 + 37*zeta^3 - 
25*zeta^2 - 35*zeta + 30)*q^93 + 1/7*(-18*zeta^5 + 13*zeta^4 + 85*zeta^3 - 
40*zeta^2 - 89*zeta + 20)*q^94 + 1/7*(-42*zeta^5 - 37*zeta^4 + 172*zeta^3 + 
88*zeta^2 - 123*zeta + 6)*q^95 + 1/7*(-zeta^5 + 7*zeta^4 - 8*zeta^3 - 40*zeta^2 
+ 27*zeta + 23)*q^96 + 1/7*(27*zeta^5 + 37*zeta^4 - 161*zeta^3 - 160*zeta^2 + 
217*zeta + 126)*q^97 + 1/7*(12*zeta^5 + 22*zeta^4 - 75*zeta^3 - 92*zeta^2 + 
106*zeta + 61)*q^98 + 1/7*(9*zeta^5 - 5*zeta^4 - 34*zeta^3 + 46*zeta^2 + 41*zeta
- 33)*q^99 + 1/7*(18*zeta^5 + 24*zeta^4 - 55*zeta^3 - 54*zeta^2 - 14*zeta - 
40)*q^100 + 1/7*(-32*zeta^5 + 27*zeta^4 + 155*zeta^3 - 75*zeta^2 - 166*zeta + 
20)*q^101 + 1/7*(16*zeta^5 + 9*zeta^4 - 89*zeta^3 - 23*zeta^2 + 136*zeta - 
5)*q^102 + 1/7*(80*zeta^5 + 34*zeta^4 - 369*zeta^3 - 122*zeta^2 + 336*zeta + 
44)*q^103 + 1/7*(-2*zeta^5 - 4*zeta^4 + 21*zeta^3 + 26*zeta^2 - 42*zeta - 
8)*q^105 + 1/7*(34*zeta^5 + 16*zeta^4 - 181*zeta^3 - 37*zeta^2 + 259*zeta - 
20)*q^106 + 1/7*(12*zeta^5 - 14*zeta^4 - 67*zeta^3 + 17*zeta^2 + 75*zeta + 
48)*q^107 + 1/7*(-12*zeta^5 - 23*zeta^4 + 25*zeta^3 + 50*zeta^2 + 49*zeta + 
50)*q^108 + 1/7*(-2*zeta^5 - 2*zeta^4 + 20*zeta^3 + 10*zeta^2 - 48*zeta - 
2)*q^109 + 1/7*(-18*zeta^5 - 26*zeta^4 + 109*zeta^3 + 110*zeta^2 - 152*zeta - 
81)*q^110 + 1/7*(-4*zeta^5 - 11*zeta^4 + 29*zeta^3 + 41*zeta^2 - 52*zeta - 
15)*q^111 + 1/7*(-5*zeta^5 - 4*zeta^4 + 11*zeta^3 + zeta^2 + 15*zeta - 2)*q^112 
+ 1/7*(3*zeta^5 - 14*zeta^4 - 35*zeta^3 + 27*zeta^2 + 83*zeta + 45)*q^113 + 
1/7*(20*zeta^5 - 12*zeta^4 - 97*zeta^3 + 27*zeta^2 + 99*zeta + 8)*q^114 + 
1/7*(-31*zeta^5 - 2*zeta^4 + 126*zeta^3 - 12*zeta^2 - 88*zeta + 56)*q^115 + 
1/7*(14*zeta^5 - 7*zeta^4 - 32*zeta^3 + 54*zeta^2 - 35*zeta - 8)*q^116 + 
1/7*(160*zeta^5 + 47*zeta^4 - 682*zeta^3 - 118*zeta^2 + 511*zeta + 60)*q^118 + 
1/7*(31*zeta^5 + 15*zeta^4 - 164*zeta^3 - 36*zeta^2 + 231*zeta - 17)*q^119 + 
1/7*(8*zeta^5 - 3*zeta^4 - 34*zeta^3 + 18*zeta^2 + 33*zeta - 28)*q^120 + 
1/7*(-9*zeta^5 + 2*zeta^4 + 59*zeta^3 - zeta^2 - 105*zeta - 43)*q^121 + 
1/7*(-9*zeta^5 + 39*zeta^4 + 38*zeta^3 - 197*zeta^2 - 106*zeta + 135)*q^122 + 
(-zeta^4 + 5*zeta^2 + 2*zeta - 4)*q^123 + 1/7*(-37*zeta^5 - 31*zeta^4 + 
210*zeta^3 + 142*zeta^2 - 273*zeta - 147)*q^124 + 1/7*(12*zeta^5 - 12*zeta^4 - 
38*zeta^3 + 89*zeta^2 + 37*zeta - 60)*q^125 + 1/7*(-51*zeta^5 - 48*zeta^4 + 
201*zeta^3 + 113*zeta^2 - 121*zeta + 23)*q^126 + 1/7*(50*zeta^5 - 28*zeta^4 - 
250*zeta^3 + 37*zeta^2 + 253*zeta + 88)*q^127 + 1/7*(-66*zeta^5 - 29*zeta^4 + 
325*zeta^3 + 71*zeta^2 - 392*zeta + 45)*q^128 + 1/7*(-31*zeta^5 - 13*zeta^4 + 
144*zeta^3 + 48*zeta^2 - 133*zeta - 18)*q^129 + 1/7*(45*zeta^5 + 20*zeta^4 - 
220*zeta^3 - 86*zeta^2 + 224*zeta + 34)*q^131 + 1/7*(-19*zeta^5 - 13*zeta^4 + 
97*zeta^3 + 41*zeta^2 - 120*zeta - 1)*q^132 + 1/7*(36*zeta^5 - 19*zeta^4 - 
170*zeta^3 + 52*zeta^2 + 171*zeta - 12)*q^133 + 1/7*(21*zeta^5 + 12*zeta^4 - 
94*zeta^3 - 31*zeta^2 + 87*zeta + 13)*q^134 + 1/7*(6*zeta^5 + 23*zeta^4 - 
9*zeta^3 - 81*zeta^2 - 60*zeta + 57)*q^135 + 1/7*(27*zeta^5 + 40*zeta^4 - 
163*zeta^3 - 171*zeta^2 + 223*zeta + 128)*q^136 + 1/7*(16*zeta^5 - 16*zeta^4 - 
76*zeta^3 + 56*zeta^2 + 88*zeta + 20)*q^137 + 1/7*(zeta^5 + 8*zeta^4 - 3*zeta^3 
- 33*zeta^2 - 11*zeta + 22)*q^138 + (9*zeta^5 + 8*zeta^4 - 38*zeta^3 - 19*zeta^2
+ 31*zeta + 1)*q^139 + 1/7*(34*zeta^5 - 13*zeta^4 - 151*zeta^3 + 58*zeta^2 + 
147*zeta - 68)*q^140 + 1/7*(14*zeta^5 + 4*zeta^4 - 51*zeta^3 - 11*zeta^2 + 
9*zeta - 16)*q^141 + 1/7*(45*zeta^5 + 6*zeta^4 - 176*zeta^3 + 6*zeta^2 + 98*zeta
+ 10)*q^142 + 1/7*(23*zeta^5 + 11*zeta^4 - 109*zeta^3 - 42*zeta^2 + 105*zeta + 
14)*q^144 + 1/7*(-33*zeta^5 + 10*zeta^4 + 103*zeta^3 - 59*zeta^2 + 21*zeta + 
96)*q^145 + 1/7*(-60*zeta^5 + 38*zeta^4 + 301*zeta^3 - 59*zeta^2 - 309*zeta - 
96)*q^146 + 1/7*(-3*zeta^5 - 5*zeta^4 + 10*zeta^3 + 11*zeta^2 - 2*zeta + 
5)*q^147 + 1/7*(11*zeta^5 - 28*zeta^4 - 45*zeta^3 + 153*zeta^2 + 95*zeta - 
106)*q^148 + 1/7*(15*zeta^5 + 30*zeta^4 - 96*zeta^3 - 123*zeta^2 + 141*zeta + 
75)*q^149 + 1/7*(-9*zeta^5 - 11*zeta^4 + 52*zeta^3 + 50*zeta^2 - 65*zeta - 
45)*q^150 + 1/7*(-7*zeta^5 - 51*zeta^4 + 8*zeta^3 + 202*zeta^2 + 115*zeta - 
139)*q^151 + 1/7*(-33*zeta^5 - 42*zeta^4 + 112*zeta^3 + 95*zeta^2 - 17*zeta + 
51)*q^152 + 1/7*(-38*zeta^5 + 22*zeta^4 + 188*zeta^3 - 37*zeta^2 - 191*zeta - 
48)*q^153 + 1/7*(-23*zeta^5 - 16*zeta^4 + 138*zeta^3 + 44*zeta^2 - 234*zeta - 
2)*q^154 + 1/7*(68*zeta^5 + 31*zeta^4 - 324*zeta^3 - 122*zeta^2 + 315*zeta + 
44)*q^155 + 1/7*(-47*zeta^5 - 10*zeta^4 + 192*zeta^3 + 14*zeta^2 - 126*zeta - 
14)*q^157 + 1/7*(-85*zeta^5 - 55*zeta^4 + 481*zeta^3 + 153*zeta^2 - 746*zeta + 
5)*q^158 + 1/7*(-8*zeta^5 - 17*zeta^4 + 25*zeta^3 + 35*zeta^2 - 4*zeta + 
20)*q^159 + 1/7*(72*zeta^5 + 54*zeta^4 - 311*zeta^3 - 132*zeta^2 + 266*zeta + 
22)*q^160 + 1/7*(8*zeta^5 + 24*zeta^4 - 18*zeta^3 - 81*zeta^2 - 49*zeta + 
56)*q^161 + 1/7*(-29*zeta^5 - 46*zeta^4 + 179*zeta^3 + 191*zeta^2 - 257*zeta - 
130)*q^162 + 1/7*(33*zeta^5 + 8*zeta^4 - 180*zeta^3 - 43*zeta^2 + 239*zeta + 
89)*q^163 + (-zeta^5 - 3*zeta^4 + 4*zeta^3 + 11*zeta^2 - 7)*q^164 + 
1/7*(15*zeta^5 + 11*zeta^4 - 64*zeta^3 - 27*zeta^2 + 52*zeta + 3)*q^165 + 
1/7*(38*zeta^5 - 31*zeta^4 - 198*zeta^3 + 43*zeta^2 + 210*zeta + 92)*q^166 + 
1/7*(78*zeta^5 + 46*zeta^4 - 410*zeta^3 - 130*zeta^2 + 556*zeta - 18)*q^167 + 
1/7*(23*zeta^5 + 4*zeta^4 - 107*zeta^3 - 20*zeta^2 + 98*zeta + 18)*q^168 + 
1/7*(-104*zeta^5 - 33*zeta^4 + 447*zeta^3 + 88*zeta^2 - 343*zeta - 40)*q^170 + 
1/7*(-31*zeta^5 - 27*zeta^4 + 191*zeta^3 + 83*zeta^2 - 328*zeta - 19)*q^171 + 
1/7*(-40*zeta^5 + 33*zeta^4 + 211*zeta^3 - 39*zeta^2 - 224*zeta - 116)*q^172 + 
1/7*(96*zeta^5 + 88*zeta^4 - 400*zeta^3 - 208*zeta^2 + 312*zeta)*q^173 + 
1/7*(7*zeta^5 + 3*zeta^4 - 26*zeta^3 + 5*zeta^2 + 20*zeta - 5)*q^174 + 
1/7*(-21*zeta^5 - 10*zeta^4 + 114*zeta^3 + 53*zeta^2 - 139*zeta - 79)*q^175 + 
1/7*(zeta^5 + 11*zeta^4 - 11*zeta^3 - 44*zeta^2 + 19*zeta + 18)*q^176 + 
1/7*(-zeta^5 - 19*zeta^4 + 12*zeta^3 + 87*zeta^2 - 4*zeta - 55)*q^177 + 
1/7*(69*zeta^5 + 63*zeta^4 - 280*zeta^3 - 149*zeta^2 + 194*zeta - 15)*q^178 + 
1/7*(-20*zeta^5 + 5*zeta^4 + 97*zeta^3 + zeta^2 - 92*zeta - 36)*q^179 + 
1/7*(-9*zeta^5 - 22*zeta^4 + 92*zeta^3 + 78*zeta^2 - 230*zeta - 48)*q^180 + 
1/7*(-49*zeta^5 - 14*zeta^4 + 233*zeta^3 + 64*zeta^2 - 224*zeta - 38)*q^181 + 
1/7*(-16*zeta^5 - 4*zeta^4 + 55*zeta^3 - 6*zeta^2 - 14*zeta + 4)*q^183 + 
1/7*(5*zeta^5 - 11*zeta^4 + 6*zeta^3 + 46*zeta^2 - 81*zeta - 43)*q^184 + 
1/7*(22*zeta^5 - 13*zeta^4 - 105*zeta^3 + 34*zeta^2 + 107*zeta - 4)*q^185 + 
1/7*(15*zeta^5 + 15*zeta^4 - 51*zeta^3 - 35*zeta^2 + 4*zeta - 23)*q^186 + 
1/7*(10*zeta^5 - 22*zeta^4 - 42*zeta^3 + 123*zeta^2 + 85*zeta - 86)*q^187 + 
1/7*(-3*zeta^5 - 50*zeta^4 + 42*zeta^3 + 199*zeta^2 - 77*zeta - 77)*q^188 + 
1/7*(26*zeta^5 + 6*zeta^4 - 139*zeta^3 - 38*zeta^2 + 172*zeta + 83)*q^189 + 
1/7*(-9*zeta^5 + 38*zeta^4 + 35*zeta^3 - 194*zeta^2 - 94*zeta + 132)*q^190 + 
1/7*(-90*zeta^5 - 77*zeta^4 + 364*zeta^3 + 184*zeta^2 - 243*zeta + 22)*q^191 + 
1/7*(-14*zeta^5 + 16*zeta^4 + 73*zeta^3 - 34*zeta^2 - 82*zeta - 16)*q^192 + 
1/7*(-46*zeta^5 - 14*zeta^4 + 204*zeta^3 + 28*zeta^2 - 186*zeta + 50)*q^193 + 
1/7*(-154*zeta^5 - 49*zeta^4 + 653*zeta^3 + 120*zeta^2 - 483*zeta - 52)*q^194 + 
1/7*(-49*zeta^5 - 14*zeta^4 + 208*zeta^3 + 34*zeta^2 - 154*zeta - 18)*q^196 + 
1/7*(4*zeta^5 + 21*zeta^4 - 71*zeta^3 - 77*zeta^2 + 214*zeta + 55)*q^197 + 
1/7*(46*zeta^5 - 22*zeta^4 - 221*zeta^3 + 46*zeta^2 + 220*zeta + 24)*q^198 + 
1/7*(12*zeta^5 + 29*zeta^4 - 9*zeta^3 - 62*zeta^2 - 107*zeta - 82)*q^199 + 
1/7*(4*zeta^5 - 11*zeta^4 - zeta^3 + 67*zeta^2 - 18*zeta - 41)*q^200 + 
1/7*(-8*zeta^5 + 10*zeta^4 + 39*zeta^3 - 40*zeta^2 - 54*zeta + 3)*q^201 + 
1/7*(-59*zeta^5 - 97*zeta^4 + 365*zeta^3 + 404*zeta^2 - 521*zeta - 274)*q^202 + 
1/7*(22*zeta^5 + 23*zeta^4 - 63*zeta^3 - 36*zeta^2 - 23*zeta + 25)*q^203 + 
1/7*(-30*zeta^5 - 33*zeta^4 + 115*zeta^3 + 76*zeta^2 - 63*zeta + 20)*q^204 + 
(2*zeta^5 - 8*zeta^3 + 3*zeta^2 + 7*zeta - 8)*q^205 + 1/7*(38*zeta^5 + 36*zeta^4
- 241*zeta^3 - 113*zeta^2 + 427*zeta + 32)*q^206 + 1/7*(9*zeta^5 - 3*zeta^4 - 
16*zeta^3 + 36*zeta^2 - 35*zeta - 10)*q^207 + 1/7*(92*zeta^5 + 30*zeta^4 - 
397*zeta^3 - 82*zeta^2 + 308*zeta + 36)*q^209 + 1/7*(16*zeta^5 + 6*zeta^4 - 
77*zeta^3 - 13*zeta^2 + 89*zeta - 14)*q^210 + 1/7*(22*zeta^5 - 28*zeta^4 - 
124*zeta^3 + 37*zeta^2 + 141*zeta + 88)*q^211 + 1/7*(-75*zeta^5 - 72*zeta^4 + 
305*zeta^3 + 169*zeta^2 - 217*zeta + 15)*q^212 + 1/7*(-13*zeta^5 - 27*zeta^4 + 
46*zeta^3 + 86*zeta^2 + 3*zeta - 55)*q^213 + 1/7*(26*zeta^5 + 58*zeta^4 - 
169*zeta^3 - 238*zeta^2 + 248*zeta + 141)*q^214 + 1/7*(-40*zeta^5 - 2*zeta^4 + 
211*zeta^3 + 28*zeta^2 - 262*zeta - 113)*q^215 + 1/7*(-9*zeta^5 + 5*zeta^4 + 
20*zeta^3 - 53*zeta^2 + 8*zeta + 33)*q^216 + 1/7*(-9*zeta^5 + 8*zeta^4 + 
75*zeta^3 - 13*zeta^2 - 163*zeta - 75)*q^217 + 1/7*(-4*zeta^5 - 6*zeta^4 + 
18*zeta^3 + 24*zeta^2 - 10*zeta - 24)*q^218 + 1/7*(-40*zeta^5 - 15*zeta^4 + 
182*zeta^3 + 36*zeta^2 - 177*zeta + 35)*q^219 + 1/7*(77*zeta^5 + 28*zeta^4 - 
340*zeta^3 - 86*zeta^2 + 280*zeta + 34)*q^220 + 1/7*(39*zeta^5 + 8*zeta^4 - 
167*zeta^3 - 20*zeta^2 + 126*zeta + 18)*q^222 + 1/7*(39*zeta^5 + 9*zeta^4 - 
177*zeta^3 - 9*zeta^2 + 180*zeta - 51)*q^223 + 1/7*(-40*zeta^5 + 26*zeta^4 + 
183*zeta^3 - 95*zeta^2 - 189*zeta + 80)*q^224 + 1/7*(-48*zeta^5 - 37*zeta^4 + 
200*zeta^3 + 90*zeta^2 - 149*zeta)*q^225 + 1/7*(-16*zeta^5 + 20*zeta^4 + 
58*zeta^3 - 133*zeta^2 - 81*zeta + 92)*q^226 + 1/7*(-4*zeta^5 - 45*zeta^4 + 
47*zeta^3 + 175*zeta^2 - 92*zeta - 61)*q^227 + 1/7*(16*zeta^5 + 38*zeta^4 - 
105*zeta^3 - 156*zeta^2 + 154*zeta + 91)*q^228 + 1/7*(-zeta^5 + 34*zeta^4 - 
11*zeta^3 - 163*zeta^2 - 3*zeta + 104)*q^229 + 1/7*(11*zeta^4 + 20*zeta^3 - 
22*zeta^2 - 69*zeta - 40)*q^230 + 1/7*(2*zeta^5 + 15*zeta^4 - 5*zeta^3 - 
48*zeta^2 - 11*zeta + 28)*q^231 + 1/7*(39*zeta^5 - 162*zeta^3 + 28*zeta^2 + 
130*zeta - 78)*q^232 + 1/7*(-9*zeta^5 + 3*zeta^4 + 16*zeta^3 - 36*zeta^2 + 
35*zeta + 10)*q^233 + 1/7*(-17*zeta^5 - 20*zeta^4 + 117*zeta^3 + 108*zeta^2 - 
182*zeta - 30)*q^235 + 1/7*(97*zeta^5 + 66*zeta^4 - 542*zeta^3 - 192*zeta^2 + 
816*zeta + 4)*q^236 + 1/7*(-12*zeta^5 + 25*zeta^4 + 66*zeta^3 - 64*zeta^2 - 
85*zeta + 4)*q^237 + 1/7*(-75*zeta^5 - 82*zeta^4 + 276*zeta^3 + 189*zeta^2 - 
111*zeta + 73)*q^238 + 1/7*(-7*zeta^5 + 16*zeta^4 - zeta^3 - 104*zeta^2 + 
46*zeta + 62)*q^239 + 1/7*(-7*zeta^5 + 5*zeta^4 + 34*zeta^3 - 16*zeta^2 - 
39*zeta - 13)*q^240 + 1/7*(20*zeta^5 + 47*zeta^4 - 128*zeta^3 - 199*zeta^2 + 
174*zeta + 128)*q^241 + 1/7*(8*zeta^5 - 14*zeta^4 - 20*zeta^3 + 89*zeta^2 + 
15*zeta - 58)*q^242 + 1/7*(93*zeta^5 + 68*zeta^4 - 395*zeta^3 - 167*zeta^2 + 
315*zeta + 15)*q^243 + 1/7*(-78*zeta^5 + 43*zeta^4 + 367*zeta^3 - 124*zeta^2 - 
371*zeta + 44)*q^244 + 1/7*(-9*zeta^5 - 7*zeta^4 + 53*zeta^3 + 21*zeta^2 - 
86*zeta - 3)*q^245 + (2*zeta^5 + 2*zeta^4 - 9*zeta^3 - 6*zeta^2 + 8*zeta)*q^246 
+ 1/7*(37*zeta^5 + 11*zeta^4 - 133*zeta^3 + 2*zeta^2 + 49*zeta - 6)*q^248 + 
1/7*(34*zeta^5 + 3*zeta^4 - 143*zeta^3 + 11*zeta^2 + 116*zeta - 59)*q^249 + 
1/7*(72*zeta^5 - 41*zeta^4 - 348*zeta^3 + 92*zeta^2 + 353*zeta + 28)*q^250 + 
1/7*(-78*zeta^5 - 76*zeta^4 + 292*zeta^3 + 178*zeta^2 - 126*zeta + 66)*q^251 + 
1/7*(-20*zeta^5 + 14*zeta^4 + 64*zeta^3 - 121*zeta^2 - 55*zeta + 82)*q^252 + 
1/7*(16*zeta^5 + 9*zeta^4 - 88*zeta^3 - 45*zeta^2 + 110*zeta + 60)*q^253 + 
1/7*(78*zeta^5 + 153*zeta^4 - 493*zeta^3 - 637*zeta^2 + 702*zeta + 409)*q^254 + 
1/7*(-4*zeta^5 + 5*zeta^4 + 11*zeta^3 - 35*zeta^2 - 8*zeta + 23)*q^255 + 
1/7*(18*zeta^5 + 31*zeta^4 - 55*zeta^3 - 68*zeta^2 - 7*zeta - 40)*q^256 + 
1/7*(18*zeta^5 - 43*zeta^4 - 130*zeta^3 + 25*zeta^2 + 164*zeta + 220)*q^257 + 
1/7*(-13*zeta^5 - 13*zeta^4 + 85*zeta^3 + 41*zeta^2 - 156*zeta - 13)*q^258 + 
1/7*(68*zeta^5 + 17*zeta^4 - 295*zeta^3 - 48*zeta^2 + 231*zeta + 32)*q^259 + 
1/7*(-71*zeta^5 - 30*zeta^4 + 341*zeta^3 + 124*zeta^2 - 336*zeta - 50)*q^261 + 
1/7*(2*zeta^5 + 11*zeta^4 - 41*zeta^3 - 39*zeta^2 + 130*zeta + 29)*q^262 + 
1/7*(-38*zeta^5 + 30*zeta^4 + 179*zeta^3 - 96*zeta^2 - 190*zeta + 56)*q^263 + 
1/7*(-6*zeta^5 + 8*zeta^4 + 33*zeta^3 - 14*zeta^2 - 38*zeta - 16)*q^264 + 
1/7*(-16*zeta^5 - 5*zeta^4 + 39*zeta^3 - 30*zeta^2 + 23*zeta + 17)*q^265 + 
1/7*(55*zeta^5 + 89*zeta^4 - 338*zeta^3 - 374*zeta^2 + 475*zeta + 261)*q^266 + 
1/7*(-21*zeta^5 + 4*zeta^4 + 107*zeta^3 - 3*zeta^2 - 125*zeta - 58)*q^267 + 
1/7*(16*zeta^5 + 21*zeta^4 - 47*zeta^3 - 46*zeta^2 - 19*zeta + 31)*q^268 + 
1/7*(-33*zeta^5 - 17*zeta^4 + 153*zeta^3 + 45*zeta^2 - 156*zeta - 31)*q^269 + 
1/7*(-22*zeta^5 + 18*zeta^4 + 116*zeta^3 - 21*zeta^2 - 123*zeta - 64)*q^270 + 
1/7*(63*zeta^5 + zeta^4 - 242*zeta^3 + 34*zeta^2 + 123*zeta - 123)*q^271 + 
1/7*(20*zeta^5 + 5*zeta^4 - 80*zeta^3 - 6*zeta^2 + 49*zeta + 4)*q^272 + 
1/7*(4*zeta^5 + 8*zeta^4 - 32*zeta^3 - 40*zeta^2 + 56*zeta + 8)*q^274 + 
1/7*(-4*zeta^5 - 3*zeta^4 + 41*zeta^3 + 3*zeta^2 - 114*zeta - 1)*q^275 + 
1/7*(-16*zeta^5 + 2*zeta^4 + 69*zeta^3 - 17*zeta^2 - 63*zeta + 32)*q^276 + 
1/7*(-60*zeta^5 - 55*zeta^4 + 250*zeta^3 + 130*zeta^2 - 195*zeta)*q^277 + 
(2*zeta^5 - 7*zeta^4 - 9*zeta^3 + 36*zeta^2 + 23*zeta - 25)*q^278 + 
1/7*(7*zeta^5 + 60*zeta^4 - 68*zeta^3 - 241*zeta^2 + 113*zeta + 103)*q^279 + 
1/7*(31*zeta^5 + 2*zeta^4 - 164*zeta^3 - 23*zeta^2 + 205*zeta + 87)*q^280 + 
1/7*(-14*zeta^5 - 5*zeta^4 + 41*zeta^3 - 20*zeta^2 - 3*zeta + 13)*q^281 + 
1/7*(27*zeta^5 + 18*zeta^4 - 113*zeta^3 - 45*zeta^2 + 83*zeta + 1)*q^282 + 
1/7*(-4*zeta^5 + 6*zeta^4 + 50*zeta^3 + 72*zeta^2 - 54*zeta - 232)*q^283 + 
1/7*(-4*zeta^5 + 33*zeta^4 - 61*zeta^3 - 131*zeta^2 + 268*zeta + 107)*q^284 + 
1/7*(-19*zeta^5 - 3*zeta^4 + 72*zeta^3 - 4*zeta^2 - 35*zeta - 2)*q^285 + 
(5*zeta^5 + 4*zeta^4 - 24*zeta^3 - 14*zeta^2 + 24*zeta + 2)*q^287 + 
1/7*(25*zeta^5 + 37*zeta^4 - 184*zeta^3 - 128*zeta^2 + 369*zeta + 61)*q^288 + 
1/7*(-10*zeta^5 + 27*zeta^4 + 73*zeta^3 - 24*zeta^2 - 95*zeta - 116)*q^289 + 
1/7*(-57*zeta^5 - 43*zeta^4 + 247*zeta^3 + 105*zeta^2 - 214*zeta - 19)*q^290 + 
1/7*(-8*zeta^5 + 7*zeta^4 + 41*zeta^3 - 47*zeta^2 - 78*zeta + 37)*q^291 + 
1/7*(-86*zeta^5 - 80*zeta^4 + 497*zeta^3 + 352*zeta^2 - 672*zeta - 329)*q^292 + 
1/7*(-69*zeta^5 - 58*zeta^4 + 392*zeta^3 + 265*zeta^2 - 511*zeta - 273)*q^293 + 
1/7*(-3*zeta^5 + 5*zeta^4 + 12*zeta^3 - 30*zeta^2 - 21*zeta + 21)*q^294 + 
1/7*(-57*zeta^5 - 61*zeta^4 + 213*zeta^3 + 141*zeta^2 - 96*zeta + 49)*q^295 + 
1/7*(40*zeta^5 - 14*zeta^4 - 193*zeta^3 + 17*zeta^2 + 187*zeta + 48)*q^296 + 
1/7*(7*zeta^5 + 10*zeta^4 - 61*zeta^3 - 31*zeta^2 + 145*zeta + 16)*q^297 + 
1/7*(-111*zeta^5 - 33*zeta^4 + 474*zeta^3 + 84*zeta^2 - 357*zeta - 42)*q^298 + 
1/7*(35*zeta^5 + 7*zeta^4 - 157*zeta^3 - 26*zeta^2 + 133*zeta + 22)*q^300 + 
1/7*(5*zeta^5 - 24*zeta^4 + 44*zeta^3 + 94*zeta^2 - 224*zeta - 82)*q^301 + 
1/7*(74*zeta^5 - 56*zeta^4 - 377*zeta^3 + 92*zeta^2 + 396*zeta + 128)*q^302 + 
1/7*(48*zeta^5 + 32*zeta^4 - 197*zeta^3 - 80*zeta^2 + 132*zeta - 6)*q^303 + 
1/7*(6*zeta^5 - 3*zeta^4 - 17*zeta^3 + 32*zeta^2 + 7*zeta - 21)*q^304 + 
1/7*(2*zeta^5 - 75*zeta^4 + 31*zeta^3 + 291*zeta^2 - 86*zeta - 87)*q^305 + 
1/7*(-60*zeta^5 - 113*zeta^4 + 377*zeta^3 + 471*zeta^2 - 536*zeta - 307)*q^306 +
1/7*(-8*zeta^5 + 28*zeta^4 + 48*zeta^3 - 138*zeta^2 - 134*zeta + 100)*q^307 + 
1/7*(30*zeta^5 + 47*zeta^4 - 94*zeta^3 - 104*zeta^2 - 7*zeta - 62)*q^308 + 
1/7*(24*zeta^5 - 5*zeta^4 - 103*zeta^3 + 35*zeta^2 + 96*zeta - 60)*q^309 + 
1/7*(17*zeta^5 + 24*zeta^4 - 130*zeta^3 - 80*zeta^2 + 274*zeta + 38)*q^310 + 
1/7*(-215*zeta^5 - 80*zeta^4 + 960*zeta^3 + 258*zeta^2 - 812*zeta - 102)*q^311 +
1/7*(-32*zeta^5 - 15*zeta^4 + 122*zeta^3 + 22*zeta^2 - 63*zeta + 4)*q^313 + 
1/7*(-56*zeta^5 - 33*zeta^4 + 307*zeta^3 + 89*zeta^2 - 454*zeta + 13)*q^314 + 
1/7*(-6*zeta^5 + 17*zeta^4 + 52*zeta^3 + 7*zeta^2 - 66*zeta - 132)*q^315 + 
1/7*(144*zeta^5 + 164*zeta^4 - 531*zeta^3 - 376*zeta^2 + 224*zeta - 138)*q^316 +
1/7*(40*zeta^5 - 18*zeta^4 - 126*zeta^3 + 198*zeta^2 + 88*zeta - 134)*q^317 + 
1/7*(9*zeta^5 + 27*zeta^4 - 65*zeta^3 - 104*zeta^2 + 111*zeta + 44)*q^318 + 
1/7*(zeta^5 - 33*zeta^4 + 16*zeta^3 + 122*zeta^2 - 55*zeta - 23)*q^319 + 
1/7*(14*zeta^5 - 29*zeta^4 - 45*zeta^3 + 171*zeta^2 + 68*zeta - 115)*q^320 + 
1/7*(-3*zeta^5 - 7*zeta^4 + 15*zeta^2 + 36*zeta + 25)*q^321 + 1/7*(-16*zeta^5 + 
17*zeta^4 + 88*zeta^3 - 20*zeta^2 - 97*zeta - 60)*q^322 + 1/7*(-82*zeta^5 - 
51*zeta^4 + 452*zeta^3 + 142*zeta^2 - 671*zeta + 11)*q^323 + 1/7*(126*zeta^5 + 
49*zeta^4 - 550*zeta^3 - 142*zeta^2 + 441*zeta + 48)*q^324 + 1/7*(-97*zeta^5 - 
19*zeta^4 + 396*zeta^3 + 24*zeta^2 - 259*zeta - 30)*q^326 + 1/7*(-20*zeta^5 - 
16*zeta^4 + 90*zeta^3 + 58*zeta^2 - 70*zeta - 8)*q^327 + (-2*zeta^5 - 3*zeta^4 +
7*zeta^3 + 6*zeta^2 - 3*zeta + 4)*q^328 + 1/7*(84*zeta^5 + 51*zeta^4 - 
375*zeta^3 - 130*zeta^2 + 347*zeta + 50)*q^329 + 1/7*(zeta^5 - 11*zeta^4 - 
4*zeta^3 + 52*zeta^2 + 21*zeta - 35)*q^330 + 1/7*(-28*zeta^5 - 59*zeta^4 + 
177*zeta^3 + 249*zeta^2 - 244*zeta - 163)*q^331 + (11*zeta^5 + 6*zeta^4 - 
61*zeta^3 - 29*zeta^2 + 79*zeta + 38)*q^332 + 1/7*(-14*zeta^5 + 18*zeta^4 + 
54*zeta^3 - 117*zeta^2 - 83*zeta + 82)*q^333 + 1/7*(-156*zeta^5 - 180*zeta^4 + 
570*zeta^3 + 412*zeta^2 - 224*zeta + 160)*q^334 + 1/7*(-20*zeta^5 - 7*zeta^4 + 
65*zeta^3 - 47*zeta^2 - 48*zeta + 172)*q^335 + 1/7*(8*zeta^5 - zeta^4 - 
26*zeta^3 + 8*zeta^2 - 3*zeta - 19)*q^336 + 1/7*(15*zeta^5 - 5*zeta^4 - 
70*zeta^3 + 8*zeta^2 + 63*zeta + 18)*q^337 + 1/7*(-38*zeta^5 - 27*zeta^4 + 
175*zeta^3 + 88*zeta^2 - 161*zeta - 12)*q^339 + 1/7*(-69*zeta^5 - 38*zeta^4 + 
367*zeta^3 + 101*zeta^2 - 515*zeta + 24)*q^340 + 1/7*(-38*zeta^5 + 6*zeta^4 + 
185*zeta^3 + 18*zeta^2 - 172*zeta - 88)*q^341 + 1/7*(120*zeta^5 + 126*zeta^4 - 
455*zeta^3 - 292*zeta^2 + 226*zeta - 90)*q^342 + 1/7*(-5*zeta^5 + 50*zeta^4 + 
47*zeta^3 - 224*zeta^2 - 192*zeta + 160)*q^343 + 1/7*(-11*zeta^5 - 71*zeta^4 + 
97*zeta^3 + 282*zeta^2 - 165*zeta - 118)*q^344 + 1/7*(9*zeta^5 - 20*zeta^4 - 
36*zeta^3 + 73*zeta^2 + 31*zeta + 1)*q^345 + 1/7*(24*zeta^5 - 80*zeta^4 - 
104*zeta^3 + 416*zeta^2 + 256*zeta - 288)*q^346 + 1/7*(24*zeta^5 + 43*zeta^4 - 
58*zeta^3 - 94*zeta^2 - 69*zeta - 84)*q^347 + 1/7*(-6*zeta^5 - 15*zeta^4 + 
11*zeta^3 + 12*zeta^2 + 7*zeta + 68)*q^348 + 1/7*(27*zeta^5 + 10*zeta^4 - 
143*zeta^3 - 17*zeta^2 + 207*zeta - 24)*q^349 + 1/7*(71*zeta^5 + 23*zeta^4 - 
294*zeta^3 - 48*zeta^2 + 203*zeta + 18)*q^350 + 1/7*(-112*zeta^5 - 49*zeta^4 + 
491*zeta^3 + 144*zeta^2 - 399*zeta - 40)*q^352 + 1/7*(-43*zeta^5 - 29*zeta^4 + 
237*zeta^3 + 85*zeta^2 - 348*zeta - 1)*q^353 + 1/7*(34*zeta^5 - 31*zeta^4 - 
171*zeta^3 + 70*zeta^2 + 185*zeta + 20)*q^354 + 1/7*(84*zeta^5 + 32*zeta^4 - 
421*zeta^3 - 92*zeta^2 + 512*zeta + 142)*q^355 + 1/7*(29*zeta^5 - 7*zeta^4 - 
76*zeta^3 + 124*zeta^2 + zeta - 79)*q^356 + 1/7*(8*zeta^5 + 24*zeta^4 - 
57*zeta^3 - 94*zeta^2 + 94*zeta + 43)*q^357 + 1/7*(-25*zeta^5 - 49*zeta^4 + 
157*zeta^3 + 206*zeta^2 - 219*zeta - 136)*q^358 + 1/7*(-35*zeta^5 + 3*zeta^4 + 
114*zeta^3 - 114*zeta^2 - 71*zeta + 79)*q^359 + 1/7*(66*zeta^5 + 51*zeta^4 - 
284*zeta^3 - 124*zeta^2 + 241*zeta + 18)*q^360 + 1/7*(-18*zeta^5 + 37*zeta^4 + 
114*zeta^3 - 49*zeta^2 - 142*zeta - 116)*q^361 + 1/7*(-8*zeta^5 - 11*zeta^4 + 
74*zeta^3 + 32*zeta^2 - 185*zeta - 17)*q^362 + 1/7*(28*zeta^5 + 7*zeta^4 - 
135*zeta^3 - 36*zeta^2 + 133*zeta + 24)*q^363 + 1/7*(159*zeta^5 + 73*zeta^4 - 
752*zeta^3 - 280*zeta^2 + 721*zeta + 98)*q^365 + 1/7*(-36*zeta^5 - 20*zeta^4 + 
187*zeta^3 + 55*zeta^2 - 249*zeta + 12)*q^366 + 1/7*(-84*zeta^5 + 58*zeta^4 + 
423*zeta^3 - 97*zeta^2 - 439*zeta - 128)*q^367 + 1/7*(-33*zeta^5 - 20*zeta^4 + 
152*zeta^3 + 51*zeta^2 - 155*zeta - 29)*q^368 + (zeta^4 - 3*zeta^3 - 6*zeta^2 + 
9*zeta + 3)*q^369 + 1/7*(35*zeta^5 + 58*zeta^4 - 216*zeta^3 - 243*zeta^2 + 
305*zeta + 167)*q^370 + 1/7*(2*zeta^5 + 61*zeta^4 - 48*zeta^3 - 231*zeta^2 + 
116*zeta + 62)*q^371 + 1/7*(5*zeta^5 - 14*zeta^4 - 37*zeta^3 + 67*zeta^2 + 
103*zeta - 52)*q^372 + 1/7*(114*zeta^5 + 83*zeta^4 - 502*zeta^3 - 204*zeta^2 + 
457*zeta + 54)*q^373 + 1/7*(84*zeta^5 - 47*zeta^4 - 410*zeta^3 + 92*zeta^2 + 
415*zeta + 68)*q^374 + 1/7*(9*zeta^5 + 14*zeta^4 - 67*zeta^3 - 49*zeta^2 + 
135*zeta + 24)*q^375 + 1/7*(73*zeta^5 + 41*zeta^4 - 344*zeta^3 - 148*zeta^2 + 
329*zeta + 38)*q^376 + 1/7*(-73*zeta^5 - 20*zeta^4 + 298*zeta^3 + 34*zeta^2 - 
196*zeta - 18)*q^378 + 1/7*(-110*zeta^5 - 22*zeta^4 + 483*zeta^3 + 15*zeta^2 - 
443*zeta + 154)*q^379 + 1/7*(-76*zeta^5 + 41*zeta^4 + 361*zeta^3 - 107*zeta^2 - 
364*zeta + 12)*q^380 + 1/7*(-9*zeta^5 - 28*zeta^4 + 14*zeta^3 + 59*zeta^2 + 
45*zeta + 47)*q^381 + 1/7*(-17*zeta^5 + 86*zeta^4 + 59*zeta^3 - 434*zeta^2 - 
174*zeta + 292)*q^382 + 1/7*(22*zeta^5 + 20*zeta^4 - 122*zeta^3 - 98*zeta^2 + 
142*zeta + 108)*q^383 + 1/7*(-8*zeta^5 - 45*zeta^4 + 64*zeta^3 + 185*zeta^2 - 
94*zeta - 92)*q^384 + 1/7*(-3*zeta^5 - 26*zeta^4 + 3*zeta^3 + 105*zeta^2 + 
57*zeta - 72)*q^385 + 1/7*(18*zeta^5 + 36*zeta^4 - 44*zeta^3 - 78*zeta^2 - 
46*zeta - 62)*q^386 + 1/7*(58*zeta^5 - 24*zeta^4 - 263*zeta^3 + 90*zeta^2 + 
258*zeta - 80)*q^387 + (-11*zeta^5 - 8*zeta^4 + 65*zeta^3 + 23*zeta^2 - 107*zeta
- 2)*q^388 + 1/7*(202*zeta^5 + 54*zeta^4 - 856*zeta^3 - 128*zeta^2 + 630*zeta + 
76)*q^389 + 1/7*(69*zeta^5 + 26*zeta^4 - 305*zeta^3 - 80*zeta^2 + 252*zeta + 
30)*q^391 + 1/7*(-16*zeta^5 - 9*zeta^4 + 89*zeta^3 + 23*zeta^2 - 136*zeta + 
5)*q^392 + 1/7*(6*zeta^5 - 8*zeta^4 - 21*zeta^3 + 50*zeta^2 + 26*zeta - 
80)*q^393 + 1/7*(-102*zeta^5 - 99*zeta^4 + 401*zeta^3 + 232*zeta^2 - 241*zeta + 
48)*q^394 + 1/7*(11*zeta^5 - 45*zeta^4 - 40*zeta^3 + 232*zeta^2 + 103*zeta - 
157)*q^395 + 1/7*(34*zeta^5 + 79*zeta^4 - 224*zeta^3 - 321*zeta^2 + 336*zeta + 
182)*q^396 + 1/7*(-16*zeta^5 + 26*zeta^4 + 67*zeta^3 - 88*zeta^2 - 54*zeta - 
25)*q^397 + 1/7*(21*zeta^5 - 51*zeta^4 - 62*zeta^3 + 293*zeta^2 + 94*zeta - 
195)*q^398 + 1/7*(-33*zeta^5 - 29*zeta^4 + 135*zeta^3 + 69*zeta^2 - 96*zeta + 
5)*q^399 + 1/7*(-10*zeta^5 + 4*zeta^4 + 42*zeta^3 - 25*zeta^2 - 41*zeta + 
40)*q^400 + 1/7*(-15*zeta^5 + 14*zeta^4 + 44*zeta^3 - 70*zeta^2 + 6*zeta + 
72)*q^401 + 1/7*(-5*zeta^5 - 10*zeta^4 + 30*zeta^3 + 38*zeta^2 - 42*zeta - 
2)*q^402 + 1/7*(252*zeta^5 + 91*zeta^4 - 1093*zeta^3 - 256*zeta^2 + 861*zeta + 
96)*q^404 + 1/7*(41*zeta^5 + 12*zeta^4 - 193*zeta^3 - 19*zeta^2 + 215*zeta - 
46)*q^405 + 1/7*(42*zeta^5 - 11*zeta^4 - 188*zeta^3 + 47*zeta^2 + 178*zeta - 
52)*q^406 + 1/7*(30*zeta^5 + 45*zeta^4 - 104*zeta^3 - 100*zeta^2 + 31*zeta - 
42)*q^407 + 1/7*(-7*zeta^5 + 9*zeta^4 + 34*zeta^3 - 55*zeta^2 - 66*zeta + 
41)*q^408 + 1/7*(-60*zeta^5 - 17*zeta^4 + 320*zeta^3 + 105*zeta^2 - 386*zeta - 
208)*q^409 + (2*zeta^5 + zeta^4 - 11*zeta^3 - 5*zeta^2 + 14*zeta + 7)*q^410 + 
1/7*(12*zeta^5 + 20*zeta^4 - 40*zeta^3 - 56*zeta^2 - 4*zeta + 36)*q^411 + 
1/7*(-27*zeta^5 - 64*zeta^4 + 37*zeta^3 + 137*zeta^2 + 175*zeta + 151)*q^412 + 
1/7*(58*zeta^5 - 49*zeta^4 - 290*zeta^3 + 109*zeta^2 + 310*zeta + 36)*q^413 + 
1/7*(41*zeta^5 + 19*zeta^4 - 207*zeta^3 - 47*zeta^2 + 264*zeta - 25)*q^414 + 
1/7*(-154*zeta^5 - 77*zeta^4 + 751*zeta^3 + 316*zeta^2 - 763*zeta - 108)*q^415 +
(3*zeta^5 + 2*zeta^4 - 10*zeta^3 - 2*zeta^2 + 2*zeta - 2)*q^417 + 1/7*(82*zeta^5
+ 56*zeta^4 - 465*zeta^3 - 161*zeta^2 + 719*zeta + 4)*q^418 + 1/7*(120*zeta^5 - 
43*zeta^4 - 563*zeta^3 + 103*zeta^2 + 546*zeta + 12)*q^419 + 1/7*(-45*zeta^5 - 
32*zeta^4 + 197*zeta^3 + 79*zeta^2 - 175*zeta - 19)*q^420 + 1/7*(-23*zeta^5 + 
58*zeta^4 + 67*zeta^3 - 331*zeta^2 - 103*zeta + 220)*q^421 + 1/7*(50*zeta^5 + 
111*zeta^4 - 325*zeta^3 - 455*zeta^2 + 478*zeta + 269)*q^422 + 1/7*(37*zeta^5 + 
2*zeta^4 - 193*zeta^3 - 31*zeta^2 + 229*zeta + 116)*q^423 + 1/7*(-8*zeta^5 + 
26*zeta^4 + 56*zeta^3 - 125*zeta^2 - 159*zeta + 94)*q^424 + 1/7*(-45*zeta^5 - 
49*zeta^4 + 161*zeta^3 + 113*zeta^2 - 48*zeta + 53)*q^425 + 1/7*(2*zeta^5 - 
18*zeta^4 - 23*zeta^3 + 30*zeta^2 + 40*zeta + 40)*q^426 + 1/7*(-88*zeta^5 - 
29*zeta^4 + 411*zeta^3 + 57*zeta^2 - 442*zeta + 89)*q^427 + 1/7*(-105*zeta^5 - 
28*zeta^4 + 428*zeta^3 + 46*zeta^2 - 280*zeta - 26)*q^428 + 1/7*(95*zeta^5 + 
22*zeta^4 - 382*zeta^3 - 26*zeta^2 + 238*zeta + 22)*q^430 + 1/7*(86*zeta^5 + 
59*zeta^4 - 485*zeta^3 - 171*zeta^2 + 742*zeta + 5)*q^431 + 1/7*(14*zeta^5 - 
3*zeta^4 - 57*zeta^3 + 30*zeta^2 + 53*zeta - 60)*q^432 + 1/7*(-87*zeta^5 - 
67*zeta^4 + 365*zeta^3 + 163*zeta^2 - 280*zeta - 5)*q^433 + 1/7*(14*zeta^5 - 
30*zeta^4 - 34*zeta^3 + 181*zeta^2 + 31*zeta - 118)*q^434 + 1/7*(24*zeta^5 - 
19*zeta^4 - 115*zeta^3 + 61*zeta^2 + 128*zeta + 45)*q^435 + 1/7*(-6*zeta^5 + 
12*zeta^4 + 28*zeta^3 - 50*zeta^2 - 42*zeta + 14)*q^436 + 1/7*(-31*zeta^4 - 
9*zeta^3 + 135*zeta^2 + 78*zeta - 93)*q^437 + 1/7*(21*zeta^5 + 37*zeta^4 - 
60*zeta^3 - 81*zeta^2 - 24*zeta - 55)*q^438 + 1/7*(-28*zeta^5 + 24*zeta^4 + 
127*zeta^3 - 93*zeta^2 - 137*zeta + 88)*q^439 + 1/7*(10*zeta^5 + 17*zeta^4 - 
81*zeta^3 - 59*zeta^2 + 176*zeta + 31)*q^440 + 1/7*(45*zeta^5 + 13*zeta^4 - 
193*zeta^3 - 34*zeta^2 + 147*zeta + 18)*q^441 + 1/7*(26*zeta^5 - 4*zeta^4 - 
62*zeta^3 + 72*zeta^2 - 56*zeta - 20)*q^443 + 1/7*(32*zeta^5 + 23*zeta^4 - 
170*zeta^3 - 72*zeta^2 + 229*zeta + 5)*q^444 + 1/7*(-8*zeta^5 - 23*zeta^4 - 
12*zeta^3 - 52*zeta^2 + 39*zeta + 292)*q^445 + 1/7*(-36*zeta^5 - 48*zeta^4 + 
117*zeta^3 + 108*zeta^2 + 66)*q^446 + 1/7*(12*zeta^4 - 6*zeta^3 - 57*zeta^2 + 
3*zeta + 36)*q^447 + 1/7*(-46*zeta^5 - 98*zeta^4 + 297*zeta^3 + 402*zeta^2 - 
436*zeta - 241)*q^448 + 1/7*(-40*zeta^5 - 27*zeta^4 + 223*zeta^3 + 129*zeta^2 - 
284*zeta - 153)*q^449 + 1/7*(-5*zeta^5 + 40*zeta^4 + 17*zeta^3 - 194*zeta^2 - 
72*zeta + 130)*q^450 + (3*zeta^5 + zeta^4 - 11*zeta^3 - 3*zeta^2 + 2*zeta - 
3)*q^451 + 1/7*(-40*zeta^5 + 47*zeta^4 + 218*zeta^3 - 74*zeta^2 - 245*zeta - 
116)*q^452 + 1/7*(45*zeta^5 + 6*zeta^4 - 198*zeta^3 + 8*zeta^2 + 188*zeta - 
72)*q^453 + 1/7*(125*zeta^5 + 40*zeta^4 - 545*zeta^3 - 116*zeta^2 + 434*zeta + 
54)*q^454 + 1/7*(-51*zeta^5 - 18*zeta^4 + 224*zeta^3 + 54*zeta^2 - 182*zeta - 
22)*q^456 + 1/7*(54*zeta^5 - 11*zeta^4 - 176*zeta^3 + 74*zeta^2 - 11*zeta - 
141)*q^457 + 1/7*(-72*zeta^5 + 60*zeta^4 + 359*zeta^3 - 135*zeta^2 - 383*zeta - 
40)*q^458 + 1/7*(42*zeta^5 + 51*zeta^4 - 144*zeta^3 - 116*zeta^2 + 25*zeta - 
62)*q^459 + 1/7*(-11*zeta^5 - 42*zeta^4 + 17*zeta^3 + 148*zeta^2 + 108*zeta - 
104)*q^460 + 1/7*(-62*zeta^5 - 107*zeta^4 + 385*zeta^3 + 447*zeta^2 - 546*zeta -
301)*q^461 + 1/7*(-13*zeta^5 - 20*zeta^4 + 82*zeta^3 + 79*zeta^2 - 127*zeta - 
47)*q^462 + 1/7*(2*zeta^5 - 47*zeta^4 - 27*zeta^3 + 207*zeta^2 + 146*zeta - 
145)*q^463 + 1/7*(-42*zeta^5 - 19*zeta^4 + 206*zeta^3 + 52*zeta^2 - 241*zeta - 
62)*q^464 + 1/7*(18*zeta^5 - 5*zeta^4 - 73*zeta^3 + 44*zeta^2 + 69*zeta - 
84)*q^465 + 1/7*(-41*zeta^5 - 19*zeta^4 + 207*zeta^3 + 47*zeta^2 - 264*zeta + 
25)*q^466 + 1/7*(-109*zeta^5 + 6*zeta^4 + 383*zeta^3 - 124*zeta^2 - 112*zeta - 
6)*q^467 + 1/7*(-43*zeta^5 - 37*zeta^4 + 235*zeta^3 + 162*zeta^2 - 287*zeta - 
38)*q^469 + 1/7*(46*zeta^5 + 13*zeta^4 - 214*zeta^3 - 20*zeta^2 + 231*zeta - 
53)*q^470 + 1/7*(-6*zeta^5 + 14*zeta^4 + 37*zeta^3 - 26*zeta^2 - 48*zeta - 
24)*q^471 + 1/7*(-84*zeta^5 - 99*zeta^4 + 310*zeta^3 + 226*zeta^2 - 135*zeta + 
80)*q^472 + 1/7*(-16*zeta^5 + 17*zeta^4 + 49*zeta^3 - 124*zeta^2 - 45*zeta + 
83)*q^473 + 1/7*(-37*zeta^5 - 67*zeta^4 + 234*zeta^3 + 274*zeta^2 - 345*zeta - 
171)*q^474 + 1/7*(39*zeta^5 + 51*zeta^4 - 233*zeta^3 - 218*zeta^2 + 321*zeta + 
170)*q^475 + 1/7*(-18*zeta^5 + 63*zeta^4 + 73*zeta^3 - 328*zeta^2 - 179*zeta + 
225)*q^476 + 1/7*(31*zeta^4 + 43*zeta^3 - 62*zeta^2 - 141*zeta - 86)*q^477 + 
1/7*(-60*zeta^5 + 49*zeta^4 + 293*zeta^3 - 127*zeta^2 - 312*zeta + 12)*q^478 + 
1/7*(120*zeta^5 + 42*zeta^4 - 597*zeta^3 - 77*zeta^2 + 757*zeta - 114)*q^479 + 
1/7*(7*zeta^5 - 7*zeta^4 - 5*zeta^3 + 50*zeta^2 - 49*zeta - 10)*q^480 + 
1/7*(-162*zeta^5 - 58*zeta^4 + 695*zeta^3 + 154*zeta^2 - 532*zeta - 56)*q^482 + 
1/7*(-21*zeta^5 + 2*zeta^4 + 83*zeta^3 - 23*zeta^2 - 55*zeta + 48)*q^483 + 
(4*zeta^5 - 3*zeta^4 - 22*zeta^3 + 23*zeta + 20)*q^484 + 1/7*(30*zeta^5 + 
47*zeta^4 - 87*zeta^3 - 104*zeta^2 - 35*zeta - 76)*q^485 + 1/7*(6*zeta^5 - 
70*zeta^4 - 22*zeta^3 + 331*zeta^2 + 125*zeta - 222)*q^486 + 1/7*(109*zeta^5 + 
113*zeta^4 - 629*zeta^3 - 506*zeta^2 + 823*zeta + 468)*q^487 + 1/7*(-57*zeta^5 -
46*zeta^4 + 326*zeta^3 + 205*zeta^2 - 439*zeta - 207)*q^488 + 1/7*(18*zeta^5 + 
40*zeta^4 - 72*zeta^3 - 135*zeta^2 + 21*zeta + 84)*q^489 + 1/7*(30*zeta^5 + 
32*zeta^4 - 113*zeta^3 - 74*zeta^2 + 54*zeta - 24)*q^490 + 1/7*(-76*zeta^5 + 
21*zeta^4 + 359*zeta^3 - 33*zeta^2 - 342*zeta - 52)*q^491 + (-2*zeta^4 + zeta^3 
+ 9*zeta^2 - zeta - 6)*q^492 + 1/7*(-52*zeta^5 - 6*zeta^4 + 203*zeta^3 - 
10*zeta^2 - 112*zeta - 12)*q^493 + 1/7*(-43*zeta^5 - 9*zeta^4 + 167*zeta^3 + 
2*zeta^2 - 91*zeta - 6)*q^495 + 1/7*(-35*zeta^5 - 5*zeta^4 + 146*zeta^3 - 
2*zeta^2 - 111*zeta + 55)*q^496 + 1/7*(-16*zeta^5 - 32*zeta^4 + 25*zeta^3 - 
13*zeta^2 + 15*zeta + 248)*q^497 + 1/7*(-12*zeta^5 - 23*zeta^4 + 25*zeta^3 + 
50*zeta^2 + 49*zeta + 50)*q^498 + 1/7*(-2*zeta^5 - 67*zeta^4 + 7*zeta^3 + 
296*zeta^2 + 95*zeta - 197)*q^499 + 1/7*(55*zeta^5 + 135*zeta^4 - 364*zeta^3 - 
552*zeta^2 + 539*zeta + 315)*q^500 + 1/7*(22*zeta^5 + 54*zeta^4 - 140*zeta^3 - 
232*zeta^2 + 182*zeta + 154)*q^501 + 1/7*(-24*zeta^5 + 98*zeta^4 + 74*zeta^3 - 
512*zeta^2 - 178*zeta + 342)*q^502 + 1/7*(-45*zeta^5 - 18*zeta^4 + 246*zeta^3 + 
51*zeta^2 - 357*zeta - 117)*q^503 + 1/7*(-52*zeta^5 + 13*zeta^4 + 234*zeta^3 - 
52*zeta^2 - 221*zeta + 52)*q^504 + 1/7*(74*zeta^5 + 27*zeta^4 - 361*zeta^3 - 
55*zeta^2 + 434*zeta - 67)*q^505 + 1/7*(-58*zeta^5 - 18*zeta^4 + 241*zeta^3 + 
38*zeta^2 - 168*zeta - 16)*q^506 + 1/7*(-315*zeta^5 - 84*zeta^4 + 1319*zeta^3 + 
180*zeta^2 - 938*zeta - 106)*q^508 + 1/7*(-23*zeta^5 - 21*zeta^4 + 130*zeta^3 + 
70*zeta^2 - 191*zeta - 17)*q^509 + 1/7*(-26*zeta^5 + 16*zeta^4 + 126*zeta^3 - 
37*zeta^2 - 129*zeta - 8)*q^510 + 1/7*(-33*zeta^5 + 25*zeta^4 + 223*zeta^3 - 
39*zeta^2 - 394*zeta - 171)*q^511 + 1/7*(-23*zeta^5 - 13*zeta^4 + 64*zeta^3 - 
13*zeta^2 + 14*zeta + 7)*q^512 + 1/7*(-45*zeta^5 - 52*zeta^4 + 265*zeta^3 + 
225*zeta^2 - 361*zeta - 188)*q^513 + 1/7*(61*zeta^5 + 168*zeta^4 - 415*zeta^3 - 
681*zeta^2 + 629*zeta + 366)*q^514 + 1/7*(20*zeta^5 + 71*zeta^4 - 33*zeta^3 - 
246*zeta^2 - 181*zeta + 173)*q^515 + 1/7*(6*zeta^5 + 22*zeta^4 + 5*zeta^3 - 
46*zeta^2 - 84*zeta - 60)*q^516 + 1/7*(-44*zeta^5 - 4*zeta^4 + 193*zeta^3 + 
zeta^2 - 167*zeta + 24)*q^517 + 1/7*(55*zeta^5 + 36*zeta^4 - 317*zeta^3 - 
99*zeta^2 + 507*zeta - 2)*q^518 + 1/7*(40*zeta^5 + 24*zeta^4 - 144*zeta^3 - 
32*zeta^2 + 56*zeta - 16)*q^519 + 1/7*(-222*zeta^5 - 73*zeta^4 + 935*zeta^3 + 
172*zeta^2 - 679*zeta - 68)*q^521 + 1/7*(-12*zeta^5 - 21*zeta^4 + 108*zeta^3 + 
70*zeta^2 - 257*zeta - 39)*q^522 + 1/7*(74*zeta^5 - 15*zeta^4 - 319*zeta^3 + 
102*zeta^2 + 297*zeta - 172)*q^523 + 1/7*(36*zeta^5 - zeta^4 - 201*zeta^3 - 
10*zeta^2 + 287*zeta + 102)*q^524 + 1/7*(6*zeta^5 - 2*zeta^4 - 42*zeta^3 + 
15*zeta^2 + 93*zeta - 18)*q^525 + 1/7*(-68*zeta^5 - 103*zeta^4 + 416*zeta^3 + 
431*zeta^2 - 590*zeta - 304)*q^526 + 1/7*(52*zeta^5 + 69*zeta^4 - 309*zeta^3 - 
299*zeta^2 + 416*zeta + 239)*q^527 + 1/7*(-4*zeta^5 - 3*zeta^4 + 15*zeta^3 + 
3*zeta^2 - 10*zeta - 1)*q^528 + 1/7*(48*zeta^5 + 64*zeta^4 - 170*zeta^3 - 
144*zeta^2 + 56*zeta - 60)*q^529 + 1/7*(-54*zeta^5 + 29*zeta^4 + 254*zeta^3 - 
83*zeta^2 - 256*zeta + 28)*q^530 + 1/7*(-88*zeta^5 - 61*zeta^4 + 490*zeta^3 + 
180*zeta^2 - 731*zeta - 7)*q^531 + 1/7*(-231*zeta^5 - 77*zeta^4 + 1003*zeta^3 + 
218*zeta^2 - 791*zeta - 94)*q^532 + 1/7*(36*zeta^5 + 9*zeta^4 - 140*zeta^3 - 
6*zeta^2 + 77*zeta + 4)*q^534 + 1/7*(5*zeta^5 - 19*zeta^4 + 31*zeta^3 + 
75*zeta^2 - 176*zeta - 67)*q^535 + 1/7*(30*zeta^5 + 11*zeta^4 - 116*zeta^3 + 
13*zeta^2 + 90*zeta - 108)*q^536 + 1/7*(-6*zeta^5 + 8*zeta^4 + 33*zeta^3 - 
14*zeta^2 - 38*zeta - 16)*q^537 + 1/7*(5*zeta^5 + 12*zeta^4 - 15*zeta^3 - 
39*zeta^2 - 13*zeta + 26)*q^538 + 1/7*(13*zeta^5 + 25*zeta^4 - 83*zeta^3 - 
102*zeta^2 + 123*zeta + 62)*q^539 + 1/7*(-50*zeta^5 - 19*zeta^4 + 273*zeta^3 + 
99*zeta^2 - 350*zeta - 161)*q^540 + 1/7*(33*zeta^5 - 39*zeta^4 - 84*zeta^3 + 
282*zeta^2 + 39*zeta - 183)*q^541 + 1/7*(33*zeta^5 + 8*zeta^4 - 170*zeta^3 - 
27*zeta^2 + 215*zeta + 65)*q^542 + 1/7*(10*zeta^5 + 25*zeta^4 - 44*zeta^3 - 
97*zeta^2 + 14*zeta + 92)*q^543 + 1/7*(103*zeta^5 + 62*zeta^4 - 552*zeta^3 - 
174*zeta^2 + 778*zeta - 20)*q^544 + 1/7*(22*zeta^5 + 16*zeta^4 - 118*zeta^3 - 
72*zeta^2 + 140*zeta + 20)*q^545 + 1/7*(232*zeta^5 + 79*zeta^4 - 1006*zeta^3 - 
222*zeta^2 + 791*zeta + 92)*q^547 + 1/7*(32*zeta^5 - 12*zeta^4 - 100*zeta^3 + 
68*zeta^2 - 16*zeta - 100)*q^548 + 1/7*(42*zeta^5 - 45*zeta^4 - 232*zeta^3 + 
51*zeta^2 + 256*zeta + 164)*q^549 + 1/7*(66*zeta^5 + 61*zeta^4 - 255*zeta^3 - 
144*zeta^2 + 135*zeta - 40)*q^550 + 1/7*(-19*zeta^5 + 5*zeta^4 + 52*zeta^3 - 
82*zeta^2 - 9*zeta + 53)*q^551 + 1/7*(-14*zeta^5 + 2*zeta^4 + 71*zeta^3 + 
2*zeta^2 - 80*zeta - 43)*q^552 + 1/7*(-63*zeta^5 - 108*zeta^4 + 394*zeta^3 + 
445*zeta^2 - 573*zeta - 289)*q^553 + 1/7*(-15*zeta^5 + 50*zeta^4 + 65*zeta^3 - 
260*zeta^2 - 160*zeta + 180)*q^554 + 1/7*(-21*zeta^5 - 18*zeta^4 + 85*zeta^3 + 
43*zeta^2 - 57*zeta + 5)*q^555 + (14*zeta^5 - 9*zeta^4 - 66*zeta^3 + 27*zeta^2 +
68*zeta - 12)*q^556 + 1/7*(-48*zeta^5 + 6*zeta^4 + 177*zeta^3 - 55*zeta^2 - 
73*zeta + 114)*q^557 + 1/7*(-167*zeta^5 - 61*zeta^4 + 728*zeta^3 + 176*zeta^2 - 
581*zeta - 66)*q^558 + 1/7*(-19*zeta^5 - 17*zeta^4 + 116*zeta^3 + 88*zeta^2 - 
161*zeta - 26)*q^560 + 1/7*(29*zeta^5 + 22*zeta^4 - 153*zeta^3 - 71*zeta^2 + 
201*zeta + 8)*q^561 + 1/7*(-46*zeta^5 + 21*zeta^4 + 216*zeta^3 - 57*zeta^2 - 
214*zeta + 12)*q^562 + 1/7*(-45*zeta^5 - 5*zeta^4 + 241*zeta^3 + 25*zeta^2 - 
324*zeta - 107)*q^563 + 1/7*(18*zeta^5 + 14*zeta^4 - 66*zeta^3 - 15*zeta^2 + 
39*zeta + 6)*q^564 + 1/7*(-45*zeta^5 - 6*zeta^4 + 239*zeta^3 + 47*zeta^2 - 
297*zeta - 134)*q^565 + 1/7*(-10*zeta^5 - 76*zeta^4 + 92*zeta^3 + 306*zeta^2 - 
150*zeta - 134)*q^566 + 1/7*(-8*zeta^5 - 47*zeta^4 + 33*zeta^3 + 192*zeta^2 + 
31*zeta - 125)*q^567 + 1/7*(-102*zeta^5 - 77*zeta^4 + 455*zeta^3 + 188*zeta^2 - 
435*zeta - 60)*q^568 + 1/7*(46*zeta^5 + zeta^4 - 183*zeta^3 + 68*zeta^2 + 
159*zeta - 188)*q^569 + 1/7*(-31*zeta^5 - 17*zeta^4 + 165*zeta^3 + 45*zeta^2 - 
232*zeta + 11)*q^570 + 1/7*(83*zeta^5 + 33*zeta^4 - 396*zeta^3 - 136*zeta^2 + 
385*zeta + 58)*q^571 + 1/7*(-43*zeta^5 + 5*zeta^4 + 168*zeta^3 - 36*zeta^2 - 
91*zeta - 18)*q^573 + (2*zeta^5 + 3*zeta^4 - 13*zeta^3 - 11*zeta^2 + 22*zeta + 
5)*q^574 + 1/7*(15*zeta^4 + 19*zeta^3 - 3*zeta^2 - 34*zeta - 92)*q^575 + 
1/7*(-99*zeta^5 - 116*zeta^4 + 358*zeta^3 + 265*zeta^2 - 129*zeta + 109)*q^576 +
1/7*(30*zeta^5 - 73*zeta^4 - 77*zeta^3 + 425*zeta^2 + 94*zeta - 279)*q^577 + 
1/7*(-37*zeta^5 - 98*zeta^4 + 250*zeta^3 + 397*zeta^2 - 379*zeta - 215)*q^578 + 
1/7*(4*zeta^5 - 28*zeta^4 - 10*zeta^3 + 116*zeta^2 + 16*zeta - 46)*q^579 + 
1/7*(-33*zeta^5 - 28*zeta^4 + 79*zeta^3 + 17*zeta^2 + 79*zeta - 18)*q^580 + 
1/7*(69*zeta^5 + 8*zeta^4 - 380*zeta^3 - 39*zeta^2 + 539*zeta + 185)*q^581 + 
1/7*(-46*zeta^5 + 18*zeta^4 + 222*zeta^3 - 27*zeta^2 - 217*zeta - 48)*q^582 + 
1/7*(66*zeta^5 + 43*zeta^4 - 332*zeta^3 - 134*zeta^2 + 399*zeta - 3)*q^583 + 
1/7*(93*zeta^5 + 4*zeta^4 - 342*zeta^3 + 62*zeta^2 + 140*zeta + 10)*q^584 + 
1/7*(301*zeta^5 + 91*zeta^4 - 1262*zeta^3 - 204*zeta^2 + 903*zeta + 94)*q^586 + 
1/7*(41*zeta^5 + 80*zeta^4 - 332*zeta^3 - 290*zeta^2 + 704*zeta + 158)*q^587 + 
1/7*(-10*zeta^5 + 10*zeta^4 + 51*zeta^3 - 22*zeta^2 - 56*zeta - 8)*q^588 + 
1/7*(-48*zeta^5 - 70*zeta^4 + 147*zeta^3 + 156*zeta^2 + 30*zeta + 106)*q^589 + 
1/7*(-23*zeta^5 + 72*zeta^4 + 81*zeta^3 - 387*zeta^2 - 173*zeta + 262)*q^590 + 
1/7*(24*zeta^5 + 7*zeta^4 - 130*zeta^3 - 39*zeta^2 + 166*zeta + 74)*q^591 + 
1/7*(-6*zeta^5 - 18*zeta^4 + 41*zeta^3 + 74*zeta^2 - 60*zeta - 41)*q^592 + 
1/7*(8*zeta^5 - 92*zeta^4 - 72*zeta^3 + 414*zeta^2 + 314*zeta - 292)*q^593 + 
1/7*(-69*zeta^5 - 67*zeta^4 + 267*zeta^3 + 157*zeta^2 - 146*zeta + 41)*q^594 + 
1/7*(-48*zeta^5 + 25*zeta^4 + 225*zeta^3 - 73*zeta^2 - 226*zeta + 28)*q^595 + 
1/7*(-69*zeta^5 - 45*zeta^4 + 381*zeta^3 + 129*zeta^2 - 564*zeta + 3)*q^596 + 
1/7*(64*zeta^5 + 16*zeta^4 - 295*zeta^3 - 66*zeta^2 + 266*zeta + 44)*q^597 + 
1/7*(-106*zeta^5 - 51*zeta^4 + 502*zeta^3 + 194*zeta^2 - 483*zeta - 64)*q^599 + 
1/7*(-11*zeta^5 - 7*zeta^4 + 36*zeta^3 + 28*zeta^2 + 17*zeta + 1)*q^600 + 
1/7*(-12*zeta^5 - 9*zeta^4 + 36*zeta^3 - 18*zeta^2 - 21*zeta + 108)*q^601 + 
1/7*(120*zeta^5 + 113*zeta^4 - 478*zeta^3 - 266*zeta^2 + 305*zeta - 44)*q^602 + 
1/7*(10*zeta^5 + 23*zeta^4 - 5*zeta^3 - 61*zeta^2 - 112*zeta + 49)*q^603 + 
1/7*(120*zeta^5 + 103*zeta^4 - 686*zeta^3 - 463*zeta^2 + 910*zeta + 462)*q^604 +
1/7*(43*zeta^5 - 16*zeta^4 - 217*zeta^3 + 41*zeta^2 + 259*zeta + 98)*q^605 + 
1/7*(-43*zeta^4 + 11*zeta^3 + 199*zeta^2 + 26*zeta - 129)*q^606 + 
1/7*(-51*zeta^5 - 38*zeta^4 + 195*zeta^3 + 93*zeta^2 - 87*zeta + 35)*q^607 + 
1/7*(110*zeta^5 - 61*zeta^4 - 526*zeta^3 + 151*zeta^2 + 532*zeta + 4)*q^608 + 
1/7*(-16*zeta^5 + 19*zeta^4 + 33*zeta^3 - 89*zeta^2 + 60*zeta + 89)*q^609 + 
1/7*(187*zeta^5 + 66*zeta^4 - 823*zeta^3 - 200*zeta^2 + 672*zeta + 82)*q^610 + 
1/7*(245*zeta^5 + 70*zeta^4 - 1035*zeta^3 - 164*zeta^2 + 756*zeta + 86)*q^612 + 
1/7*(35*zeta^5 + 23*zeta^4 - 218*zeta^3 - 58*zeta^2 + 393*zeta - 1)*q^613 + 
1/7*(-88*zeta^5 + 46*zeta^4 + 432*zeta^3 - 76*zeta^2 - 434*zeta - 104)*q^614 + 
(-3*zeta^5 - 2*zeta^4 + 14*zeta^3 + 5*zeta^2 - 15*zeta - 3)*q^615 + 
1/7*(21*zeta^5 - 2*zeta^4 - 83*zeta^3 + 62*zeta^2 + 94*zeta - 48)*q^616 + 
1/7*(3*zeta^5 + 62*zeta^4 - 57*zeta^3 - 229*zeta^2 + 143*zeta + 50)*q^617 + 
1/7*(29*zeta^5 + 31*zeta^4 - 169*zeta^3 - 136*zeta^2 + 227*zeta + 120)*q^618 + 
1/7*(zeta^5 + 32*zeta^4 + 13*zeta^3 - 133*zeta^2 - 103*zeta + 94)*q^619 + 
1/7*(18*zeta^5 - 25*zeta^4 - 146*zeta^3 + 44*zeta^2 + 301*zeta + 142)*q^620 + 
1/7*(-2*zeta^5 - 15*zeta^4 - 16*zeta^3 - 15*zeta^2 + 32*zeta + 140)*q^621 + 
1/7*(-146*zeta^5 - 113*zeta^4 + 863*zeta^3 + 337*zeta^2 - 1410*zeta - 47)*q^622 
+ 1/7*(3*zeta^5 - 22*zeta^4 + 69*zeta^3 + 160*zeta^2 - 224*zeta - 46)*q^623 + 
1/7*(51*zeta^5 + 46*zeta^4 - 282*zeta^3 - 202*zeta^2 + 350*zeta + 46)*q^625 + 
1/7*(-57*zeta^5 - 36*zeta^4 + 300*zeta^3 + 106*zeta^2 - 404*zeta + 6)*q^626 + 
1/7*(24*zeta^5 - 13*zeta^4 - 115*zeta^3 + 31*zeta^2 + 116*zeta + 4)*q^627 + 
1/7*(108*zeta^5 + 109*zeta^4 - 421*zeta^3 - 254*zeta^2 + 245*zeta - 58)*q^628 + 
1/7*(-20*zeta^5 + 47*zeta^4 + 79*zeta^3 - 262*zeta^2 - 157*zeta + 181)*q^629 + 
1/7*(-23*zeta^5 - 76*zeta^4 + 163*zeta^3 + 307*zeta^2 - 251*zeta - 156)*q^630 + 
1/7*(-86*zeta^4 + 41*zeta^3 + 348*zeta^2 - 74*zeta - 139)*q^631 + 1/7*(32*zeta^5
- 53*zeta^4 - 127*zeta^3 + 319*zeta^2 + 220*zeta - 223)*q^632 + 1/7*(-9*zeta^5 -
14*zeta^4 + 14*zeta^3 + 31*zeta^2 + 59*zeta + 47)*q^633 + 1/7*(196*zeta^5 - 
104*zeta^4 - 940*zeta^3 + 242*zeta^2 + 946*zeta + 48)*q^634 + 1/7*(-34*zeta^5 - 
50*zeta^4 + 261*zeta^3 + 169*zeta^2 - 549*zeta - 82)*q^635 + 1/7*(-42*zeta^5 - 
21*zeta^4 + 163*zeta^3 + 36*zeta^2 - 91*zeta + 4)*q^636 + 1/7*(85*zeta^5 + 
23*zeta^4 - 373*zeta^3 - 70*zeta^2 + 301*zeta + 42)*q^638 + 1/7*(-99*zeta^5 - 
23*zeta^4 + 430*zeta^3 + 30*zeta^2 - 373*zeta + 129)*q^639 + 1/7*(90*zeta^5 - 
32*zeta^4 - 400*zeta^3 + 143*zeta^2 + 387*zeta - 168)*q^640 + 1/7*(-30*zeta^5 - 
85*zeta^4 + 37*zeta^3 + 180*zeta^2 + 197*zeta + 176)*q^641 + 1/7*(-5*zeta^5 + 
15*zeta^4 + 12*zeta^3 - 84*zeta^2 - 17*zeta + 55)*q^642 + 1/7*(51*zeta^5 + 
129*zeta^4 - 343*zeta^3 - 520*zeta^2 + 525*zeta + 280)*q^643 + 1/7*(-47*zeta^5 -
11*zeta^4 + 252*zeta^3 + 68*zeta^2 - 315*zeta - 147)*q^644 + 1/7*(-9*zeta^5 - 
29*zeta^4 + 16*zeta^3 + 98*zeta^2 + 73*zeta - 69)*q^645 + 1/7*(219*zeta^5 + 
239*zeta^4 - 814*zeta^3 - 551*zeta^2 + 356*zeta - 197)*q^646 + 1/7*(16*zeta^4 - 
4*zeta^3 - 76*zeta^2 - 12*zeta + 96)*q^647 + 1/7*(35*zeta^5 + 40*zeta^4 - 
216*zeta^3 - 138*zeta^2 + 356*zeta + 50)*q^648 + 1/7*(185*zeta^5 + 69*zeta^4 - 
789*zeta^3 - 178*zeta^2 + 595*zeta + 58)*q^649 + 1/7*(50*zeta^5 + 9*zeta^4 - 
239*zeta^3 - 52*zeta^2 + 231*zeta + 44)*q^651 + 1/7*(-27*zeta^5 - 59*zeta^4 + 
241*zeta^3 + 213*zeta^2 - 550*zeta - 123)*q^652 + 1/7*(-52*zeta^5 + 8*zeta^4 + 
251*zeta^3 + 19*zeta^2 - 233*zeta - 104)*q^653 + 1/7*(-18*zeta^5 - 4*zeta^4 + 
78*zeta^3 + 14*zeta^2 - 58*zeta - 6)*q^654 + 1/7*(26*zeta^5 + 57*zeta^4 - 
55*zeta^3 - 167*zeta^2 - 140*zeta + 119)*q^655 + (zeta^5 - 2*zeta^4 - 4*zeta^3 +
7*zeta^2 + 3*zeta + 1)*q^656 + 1/7*(19*zeta^5 + 141*zeta^4 - 180*zeta^3 - 
554*zeta^2 + 323*zeta + 215)*q^657 + 1/7*(-5*zeta^5 - 45*zeta^4 + 14*zeta^3 + 
187*zeta^2 + 66*zeta - 125)*q^658 + 1/7*(69*zeta^5 + 11*zeta^4 - 358*zeta^3 - 
45*zeta^2 + 454*zeta + 141)*q^659 + 1/7*(22*zeta^5 - 8*zeta^4 - 101*zeta^3 + 
26*zeta^2 + 98*zeta - 16)*q^660 + 1/7*(-41*zeta^5 + 14*zeta^4 + 96*zeta^3 - 
70*zeta^2 + 162*zeta + 124)*q^661 + 1/7*(211*zeta^5 + 72*zeta^4 - 903*zeta^3 - 
188*zeta^2 + 686*zeta + 74)*q^662 + 1/7*(-42*zeta^5 + 7*zeta^4 + 110*zeta^3 - 
106*zeta^2 + 63*zeta + 24)*q^664 + 1/7*(-71*zeta^5 - 26*zeta^4 + 344*zeta^3 + 
54*zeta^2 - 406*zeta + 64)*q^665 + 1/7*(-92*zeta^5 + 49*zeta^4 + 446*zeta^3 - 
100*zeta^2 - 449*zeta - 60)*q^666 + 1/7*(117*zeta^5 + 67*zeta^4 - 540*zeta^3 - 
173*zeta^2 + 550*zeta + 105)*q^667 + (-4*zeta^5 + 22*zeta^4 + 14*zeta^3 - 
110*zeta^2 - 44*zeta + 74)*q^668 + 1/7*(-3*zeta^5 + 27*zeta^4 - 102*zeta^2 + 
21*zeta + 21)*q^669 + 1/7*(-13*zeta^5 + 27*zeta^4 + 53*zeta^3 - 98*zeta^2 - 
47*zeta - 4)*q^670 + 1/7*(-zeta^5 + 58*zeta^4 + 5*zeta^3 - 263*zeta^2 - 95*zeta 
+ 176)*q^671 + 1/7*(69*zeta^5 + 43*zeta^4 - 296*zeta^3 - 109*zeta^2 + 238*zeta +
17)*q^672 + 1/7*(-18*zeta^5 - 16*zeta^4 + 31*zeta^3 - 86*zeta^2 - 6*zeta + 
336)*q^673 + 1/7*(-zeta^5 - 3*zeta^4 - 7*zeta^3 + 17*zeta^2 + 50*zeta - 7)*q^674
+ 1/7*(-31*zeta^5 - 6*zeta^4 + 107*zeta^3 - 16*zeta^2 - 28*zeta + 6)*q^675 + 
1/7*(-4*zeta^5 + 6*zeta^4 - 52*zeta^3 - 100*zeta^2 + 182*zeta + 48)*q^677 + 
1/7*(-25*zeta^5 - 26*zeta^4 + 147*zeta^3 + 89*zeta^2 - 227*zeta - 28)*q^678 + 
1/7*(-68*zeta^5 + 33*zeta^4 + 337*zeta^3 - 39*zeta^2 - 336*zeta - 116)*q^679 + 
1/7*(39*zeta^5 + 53*zeta^4 - 127*zeta^3 - 119*zeta^2 + 2*zeta - 71)*q^680 + 
1/7*(4*zeta^5 - 5*zeta^4 + 3*zeta^3 + 42*zeta^2 - 41*zeta - 23)*q^681 + 
1/7*(-44*zeta^5 - 91*zeta^4 + 278*zeta^3 + 383*zeta^2 - 386*zeta - 250)*q^682 + 
1/7*(47*zeta^5 + 27*zeta^4 - 258*zeta^3 - 136*zeta^2 + 319*zeta + 181)*q^683 + 
1/7*(34*zeta^5 - 77*zeta^4 - 113*zeta^3 + 443*zeta^2 + 188*zeta - 299)*q^684 + 
1/7*(-96*zeta^5 - 48*zeta^4 + 460*zeta^3 + 128*zeta^2 - 512*zeta - 120)*q^685 + 
1/7*(-120*zeta^5 + 69*zeta^4 + 595*zeta^3 - 111*zeta^2 - 604*zeta - 164)*q^686 +
1/7*(4*zeta^5 + 13*zeta^4 - 4*zeta^3 - 62*zeta^2 - 63*zeta + 31)*q^687 + 
1/7*(-60*zeta^5 - 29*zeta^4 + 289*zeta^3 + 116*zeta^2 - 287*zeta - 40)*q^688 + 
1/7*(31*zeta^5 + 13*zeta^4 - 144*zeta^3 - 48*zeta^2 + 133*zeta + 18)*q^690 + 
1/7*(-139*zeta^5 - 44*zeta^4 + 657*zeta^3 + 79*zeta^2 - 735*zeta + 146)*q^691 + 
1/7*(160*zeta^5 - 104*zeta^4 - 760*zeta^3 + 296*zeta^2 + 784*zeta - 96)*q^692 + 
1/7*(-57*zeta^5 - 59*zeta^4 + 230*zeta^3 + 137*zeta^2 - 162*zeta + 15)*q^693 + 
1/7*(27*zeta^5 - 62*zeta^4 - 89*zeta^3 + 356*zeta^2 + 148*zeta - 240)*q^694 + 
(-zeta^5 + 15*zeta^4 - 3*zeta^3 - 58*zeta^2 + 13*zeta + 16)*q^695 + 
1/7*(-11*zeta^5 + 28*zeta^4 + 38*zeta^3 - 95*zeta^2 - 9*zeta - 17)*q^696 + 
(zeta^5 + 4*zeta^4 - 5*zeta^3 - 16*zeta^2 + 2*zeta + 10)*q^697 + 1/7*(-75*zeta^5
- 79*zeta^4 + 277*zeta^3 + 183*zeta^2 - 112*zeta + 71)*q^698 + 1/7*(-4*zeta^5 + 
3*zeta^4 + 28*zeta^3 + 18*zeta^2 - 29*zeta - 68)*q^699 + 1/7*(15*zeta^5 + 
25*zeta^4 - 137*zeta^3 - 81*zeta^2 + 332*zeta + 45)*q^700 + 1/7*(64*zeta^5 + 
9*zeta^4 - 303*zeta^3 - 56*zeta^2 + 287*zeta + 56)*q^701 + O(q^702), 
1/14*(6*zeta^5 - 2*zeta^4 - 19*zeta^3 + 14*zeta^2)*q + 1/14*(14*zeta^5 + 
6*zeta^4 - 73*zeta^3 - 13*zeta^2 + 101*zeta - 10)*q^2 + 1/14*(-4*zeta^5 - 
7*zeta^4 + 13*zeta^3 + 13*zeta^2 - 4*zeta + 12)*q^3 + 1/14*(-33*zeta^5 - 
30*zeta^4 + 137*zeta^3 + 71*zeta^2 - 105*zeta + 1)*q^4 + 1/14*(-8*zeta^5 - 
5*zeta^4 + 19*zeta^3 - 4*zeta^2 + 17*zeta + 1)*q^5 + 1/14*(3*zeta^5 + 11*zeta^4 
- 23*zeta^3 - 42*zeta^2 + 41*zeta + 16)*q^6 + 1/14*(-2*zeta^5 + 27*zeta^4 - 
6*zeta^3 - 101*zeta^2 + 32*zeta + 20)*q^7 + 1/14*(-2*zeta^5 + 12*zeta^4 + 
20*zeta^3 - 53*zeta^2 - 69*zeta + 40)*q^8 + 1/14*(-6*zeta^5 + 9*zeta^4 + 
45*zeta^3 - 16*zeta^2 - 85*zeta - 40)*q^9 + 1/14*(-22*zeta^5 + 11*zeta^4 + 
102*zeta^3 - 35*zeta^2 - 102*zeta + 20)*q^10 + 1/14*(28*zeta^5 + 17*zeta^4 - 
138*zeta^3 - 52*zeta^2 + 159*zeta - 5)*q^11 + 1/14*(-14*zeta^5 - 7*zeta^4 + 
51*zeta^3 + 8*zeta^2 - 21*zeta + 4)*q^12 + 1/14*(-66*zeta^5 - 20*zeta^4 + 
291*zeta^3 + 62*zeta^2 - 238*zeta - 32)*q^14 + 1/14*(10*zeta^5 - 3*zeta^4 - 
29*zeta^3 + 17*zeta^2 - 16*zeta - 29)*q^15 + 1/14*(-3*zeta^4 - 8*zeta^3 - 
12*zeta^2 + 11*zeta + 52)*q^16 + 1/14*(42*zeta^5 + 44*zeta^4 - 165*zeta^3 - 
102*zeta^2 + 102*zeta - 20)*q^17 + 1/14*(13*zeta^5 - 15*zeta^4 - 46*zeta^3 + 
103*zeta^2 + 60*zeta - 71)*q^18 + 1/14*(-17*zeta^5 - 52*zeta^4 + 118*zeta^3 + 
211*zeta^2 - 179*zeta - 111)*q^19 + 1/14*(-zeta^5 - 54*zeta^4 + 35*zeta^3 + 
211*zeta^2 - 77*zeta - 70)*q^20 + 1/14*(zeta^5 + 6*zeta^4 - 23*zeta^3 - 
34*zeta^2 + 62*zeta + 16)*q^21 + 1/14*(-27*zeta^5 - 39*zeta^4 + 92*zeta^3 + 
87*zeta^2 - 20*zeta + 41)*q^22 + 1/14*(26*zeta^5 - zeta^4 - 107*zeta^3 + 
34*zeta^2 + 95*zeta - 84)*q^23 + 1/14*(-27*zeta^5 - 16*zeta^4 + 125*zeta^3 + 
51*zeta^2 - 119*zeta + 6)*q^24 + 1/14*(-52*zeta^5 - 13*zeta^4 + 240*zeta^3 + 
54*zeta^2 - 217*zeta - 36)*q^25 + 1/14*(65*zeta^5 + 25*zeta^4 - 305*zeta^3 - 
98*zeta^2 + 287*zeta + 42)*q^27 + 1/14*(-66*zeta^5 - 26*zeta^4 + 313*zeta^3 + 
61*zeta^2 - 345*zeta + 54)*q^28 + 1/14*(18*zeta^5 + 22*zeta^4 - 50*zeta^3 + 
5*zeta^2 + 19*zeta - 160)*q^29 + 1/14*(24*zeta^5 + 19*zeta^4 - 101*zeta^3 - 
46*zeta^2 + 79*zeta + 2)*q^30 + 1/14*(-zeta^5 + 27*zeta^4 + 38*zeta^3 - 
107*zeta^2 - 164*zeta + 83)*q^31 + 1/14*(9*zeta^5 + 73*zeta^4 - 84*zeta^3 - 
296*zeta^2 + 133*zeta + 133)*q^32 + 1/14*(5*zeta^5 + 16*zeta^4 - 29*zeta^3 - 
77*zeta^2 + 17*zeta + 64)*q^33 + 1/14*(16*zeta^5 - 45*zeta^4 - 63*zeta^3 + 
243*zeta^2 + 136*zeta - 167)*q^34 + 1/14*(87*zeta^5 + 56*zeta^4 - 392*zeta^3 - 
141*zeta^2 + 377*zeta + 59)*q^35 + 1/14*(30*zeta^5 - 37*zeta^4 - 167*zeta^3 + 
52*zeta^2 + 189*zeta + 108)*q^36 + 1/14*(-44*zeta^5 - 30*zeta^4 + 229*zeta^3 + 
93*zeta^2 - 297*zeta - 2)*q^37 + 1/14*(171*zeta^5 + 55*zeta^4 - 736*zeta^3 - 
148*zeta^2 + 567*zeta + 66)*q^38 + 1/14*(78*zeta^5 + 37*zeta^4 - 370*zeta^3 - 
142*zeta^2 + 357*zeta + 48)*q^40 + 1/2*(-zeta^5 + 3*zeta^4 + 2*zeta^3 - 
14*zeta^2 + zeta + 11)*q^41 + 1/14*(-8*zeta^5 + 17*zeta^4 + 41*zeta^3 - 
53*zeta^2 - 54*zeta + 28)*q^42 + 1/14*(21*zeta^5 - 13*zeta^4 - 142*zeta^3 + 
19*zeta^2 + 254*zeta + 109)*q^43 + 1/14*(3*zeta^5 + 49*zeta^4 - 18*zeta^3 - 
216*zeta^2 - 39*zeta + 141)*q^44 + 1/14*(40*zeta^5 - zeta^4 - 209*zeta^3 - 
17*zeta^2 + 256*zeta + 111)*q^45 + 1/14*(27*zeta^5 + 20*zeta^4 - 152*zeta^3 - 
93*zeta^2 + 197*zeta + 103)*q^46 + 1/14*(-32*zeta^5 - 33*zeta^4 + 107*zeta^3 + 
58*zeta^2 - 21*zeta - 35)*q^47 + 1/14*(15*zeta^5 + 5*zeta^4 - 73*zeta^3 - 
15*zeta^2 + 82*zeta + 21)*q^48 + 1/14*(12*zeta^5 - 13*zeta^4 - 62*zeta^3 + 
28*zeta^2 + 69*zeta + 12)*q^49 + 1/14*(-19*zeta^5 - 16*zeta^4 + 130*zeta^3 + 
44*zeta^2 - 258*zeta - 10)*q^50 + 1/14*(33*zeta^5 + 17*zeta^4 - 135*zeta^3 - 
38*zeta^2 + 91*zeta + 2)*q^51 + 1/14*(37*zeta^5 + 18*zeta^4 - 120*zeta^3 - 
2*zeta^2 + 14*zeta - 22)*q^53 + 1/14*(21*zeta^5 + 23*zeta^4 - 148*zeta^3 - 
72*zeta^2 + 295*zeta + 27)*q^54 + 1/14*(-32*zeta^5 + 9*zeta^4 + 142*zeta^3 - 
42*zeta^2 - 135*zeta + 52)*q^55 + 1/14*(-27*zeta^5 + 10*zeta^4 + 155*zeta^3 - 
11*zeta^2 - 223*zeta - 85)*q^56 + 1/14*(8*zeta^5 - 6*zeta^4 - 24*zeta^3 + 
51*zeta^2 + 17*zeta - 34)*q^57 + 1/14*(-4*zeta^5 - 57*zeta^4 + 55*zeta^3 + 
219*zeta^2 - 116*zeta - 69)*q^58 + 1/14*(-52*zeta^5 - 91*zeta^4 + 319*zeta^3 + 
389*zeta^2 - 432*zeta - 277)*q^59 + 1/14*(13*zeta^5 + 7*zeta^4 - 36*zeta^3 + 
9*zeta^2 - 8*zeta - 5)*q^60 + 1/14*(-135*zeta^5 - 100*zeta^4 + 578*zeta^3 + 
245*zeta^2 - 477*zeta - 31)*q^61 + 1/14*(-58*zeta^5 + 25*zeta^4 + 289*zeta^3 - 
16*zeta^2 - 285*zeta - 124)*q^62 + 1/14*(33*zeta^4 - 69*zeta^3 - 131*zeta^2 + 
244*zeta + 99)*q^63 + 1/14*(-155*zeta^5 - 51*zeta^4 + 651*zeta^3 + 118*zeta^2 - 
469*zeta - 46)*q^64 + 1/14*(-46*zeta^5 - 29*zeta^4 + 200*zeta^3 + 82*zeta^2 - 
161*zeta - 8)*q^66 + 1/14*(39*zeta^5 - 23*zeta^4 - 119*zeta^3 + 121*zeta^2 - 
18*zeta - 147)*q^67 + 1/14*(90*zeta^5 - 62*zeta^4 - 438*zeta^3 + 149*zeta^2 + 
455*zeta + 16)*q^68 + 1/14*(-33*zeta^5 - 24*zeta^4 + 153*zeta^3 + 59*zeta^2 - 
163*zeta - 31)*q^69 + 1/14*(-2*zeta^5 - 43*zeta^4 - 5*zeta^3 + 182*zeta^2 + 
101*zeta - 125)*q^70 + 1/14*(-71*zeta^5 + 27*zeta^4 + 352*zeta^3 - 58*zeta^2 - 
391*zeta - 191)*q^71 + 1/14*(7*zeta^5 + 68*zeta^4 - 78*zeta^3 - 261*zeta^2 + 
157*zeta + 85)*q^72 + 1/14*(26*zeta^5 + 104*zeta^4 - 68*zeta^3 - 385*zeta^2 - 
165*zeta + 260)*q^73 + 1/14*(69*zeta^5 + 86*zeta^4 - 249*zeta^3 - 195*zeta^2 + 
93*zeta - 77)*q^74 + 1/14*(10*zeta^5 + 27*zeta^4 - 41*zeta^3 - 96*zeta^2 + 
9*zeta + 76)*q^75 + 1/14*(115*zeta^5 + 61*zeta^4 - 607*zeta^3 - 159*zeta^2 + 
842*zeta - 47)*q^76 + 1/14*(-89*zeta^5 - 52*zeta^4 + 401*zeta^3 + 164*zeta^2 - 
350*zeta - 30)*q^77 + 1/14*(-206*zeta^5 - 83*zeta^4 + 884*zeta^3 + 222*zeta^2 - 
679*zeta - 64)*q^79 + 1/14*(31*zeta^5 - 8*zeta^4 - 100*zeta^3 + 50*zeta^2 - 
8*zeta - 86)*q^80 + 1/14*(-70*zeta^5 - 2*zeta^4 + 312*zeta^3 - zeta^2 - 275*zeta
+ 16)*q^81 + 1/2*(3*zeta^5 + 2*zeta^4 - 10*zeta^3 - 5*zeta^2 - zeta - 5)*q^82 + 
1/14*(-26*zeta^5 - 91*zeta^4 + 37*zeta^3 + 311*zeta^2 + 254*zeta - 221)*q^83 + 
1/14*(-3*zeta^5 - 43*zeta^4 + 35*zeta^3 + 178*zeta^2 - 49*zeta - 84)*q^84 + 
1/14*(20*zeta^5 + 71*zeta^4 - 144*zeta^3 - 287*zeta^2 + 222*zeta + 144)*q^85 + 
1/14*(-27*zeta^5 + 37*zeta^4 + 84*zeta^3 - 246*zeta^2 - 93*zeta + 165)*q^86 + 
1/14*(-27*zeta^5 - 18*zeta^4 + 148*zeta^3 + 45*zeta^2 - 223*zeta - 71)*q^87 + 
1/14*(-2*zeta^5 + 46*zeta^4 + 37*zeta^3 - 100*zeta^2 - 82*zeta - 40)*q^88 + 
1/14*(57*zeta^5 - 26*zeta^4 - 143*zeta^3 + 131*zeta^2 - 173*zeta - 192)*q^89 + 
1/14*(-87*zeta^5 - 20*zeta^4 + 347*zeta^3 + 20*zeta^2 - 210*zeta - 18)*q^90 + 
1/14*(-119*zeta^5 - 49*zeta^4 + 558*zeta^3 + 188*zeta^2 - 525*zeta - 74)*q^92 + 
1/14*(-66*zeta^5 - 36*zeta^4 + 297*zeta^3 + 113*zeta^2 - 259*zeta + 24)*q^93 + 
1/14*(-62*zeta^5 + 9*zeta^4 + 278*zeta^3 - 39*zeta^2 - 256*zeta + 44)*q^94 + 
1/14*(-105*zeta^5 - 87*zeta^4 + 440*zeta^3 + 209*zeta^2 - 342*zeta - 5)*q^95 + 
1/14*(-33*zeta^5 - 28*zeta^4 + 135*zeta^3 + 45*zeta^2 - 117*zeta - 18)*q^96 + 
1/14*(58*zeta^5 + 73*zeta^4 - 350*zeta^3 - 303*zeta^2 + 504*zeta + 224)*q^97 + 
1/14*(25*zeta^5 + 47*zeta^4 - 158*zeta^3 - 194*zeta^2 + 229*zeta + 123)*q^98 + 
1/14*(3*zeta^5 - 32*zeta^4 + 19*zeta^3 + 167*zeta^2 - 47*zeta - 102)*q^99 + 
1/14*(6*zeta^5 + 43*zeta^4 + 26*zeta^3 - 88*zeta^2 - 147*zeta - 102)*q^100 + 
1/14*(-118*zeta^5 + 16*zeta^4 + 537*zeta^3 - 46*zeta^2 - 494*zeta + 16)*q^101 + 
1/14*(45*zeta^5 + 31*zeta^4 - 242*zeta^3 - 94*zeta^2 + 337*zeta + 3)*q^102 + 
1/14*(197*zeta^5 + 86*zeta^4 - 928*zeta^3 - 330*zeta^2 + 882*zeta + 122)*q^103 +
1/14*(-17*zeta^5 - 20*zeta^4 + 112*zeta^3 + 102*zeta^2 - 168*zeta - 26)*q^105 + 
1/14*(100*zeta^5 + 59*zeta^4 - 513*zeta^3 - 171*zeta^2 + 658*zeta - 23)*q^106 + 
1/14*(32*zeta^5 - 21*zeta^4 - 174*zeta^3 - 6*zeta^2 + 179*zeta + 156)*q^107 + 
1/14*(3*zeta^5 - 38*zeta^4 - 78*zeta^3 + 75*zeta^2 + 231*zeta + 131)*q^108 + 
1/7*(16*zeta^5 + 23*zeta^4 - 69*zeta^3 - 66*zeta^2 + 55*zeta + 37)*q^109 + 
1/14*(-41*zeta^5 - 53*zeta^4 + 244*zeta^3 + 228*zeta^2 - 333*zeta - 181)*q^110 +
1/14*(-13*zeta^5 - 27*zeta^4 + 75*zeta^3 + 128*zeta^2 - 71*zeta - 110)*q^111 + 
1/14*(-18*zeta^5 - 20*zeta^4 + 48*zeta^3 + 33*zeta^2 + 33*zeta - 24)*q^112 + 
1/14*(-6*zeta^5 - 21*zeta^4 - 35*zeta^3 + 44*zeta^2 + 205*zeta + 120)*q^113 + 
1/14*(44*zeta^5 - 25*zeta^4 - 212*zeta^3 + 58*zeta^2 + 215*zeta + 12)*q^114 + 
1/14*(-92*zeta^5 - 3*zeta^4 + 364*zeta^3 - 46*zeta^2 - 223*zeta + 175)*q^115 + 
1/14*(7*zeta^5 - 14*zeta^4 + 57*zeta^3 + 144*zeta^2 - 224*zeta - 54)*q^116 + 
1/14*(345*zeta^5 + 116*zeta^4 - 1471*zeta^3 - 296*zeta^2 + 1106*zeta + 
118)*q^118 + 1/14*(85*zeta^5 + 47*zeta^4 - 435*zeta^3 - 131*zeta^2 + 560*zeta - 
29)*q^119 + 1/14*(26*zeta^5 - zeta^4 - 107*zeta^3 + 34*zeta^2 + 95*zeta - 
84)*q^120 + 1/14*(-66*zeta^5 - 11*zeta^4 + 337*zeta^3 + 44*zeta^2 - 413*zeta - 
124)*q^121 + 1/14*(-10*zeta^5 + 97*zeta^4 + 43*zeta^3 - 460*zeta^2 - 201*zeta + 
311)*q^122 + 1/2*(2*zeta^5 - 2*zeta^4 - 7*zeta^3 + 2*zeta^2 - 4*zeta + 15)*q^123
+ 1/14*(-87*zeta^5 - 50*zeta^4 + 490*zeta^3 + 227*zeta^2 - 665*zeta - 273)*q^124
+ 1/14*(25*zeta^5 - 25*zeta^4 - 64*zeta^3 + 193*zeta^2 + 24*zeta - 125)*q^125 + 
1/14*(-108*zeta^5 - 107*zeta^4 + 431*zeta^3 + 250*zeta^2 - 283*zeta + 38)*q^126 
+ 1/14*(68*zeta^5 - 91*zeta^4 - 375*zeta^3 + 157*zeta^2 + 432*zeta + 188)*q^127 
+ 1/14*(-141*zeta^5 - 33*zeta^4 + 666*zeta^3 + 26*zeta^2 - 763*zeta + 183)*q^128
+ 1/14*(-78*zeta^5 - 37*zeta^4 + 370*zeta^3 + 142*zeta^2 - 357*zeta - 48)*q^129 
+ 1/14*(127*zeta^5 + 79*zeta^4 - 631*zeta^3 - 318*zeta^2 + 665*zeta + 86)*q^131 
+ 1/14*(-11*zeta^5 + 12*zeta^4 + 58*zeta^3 - 68*zeta^2 - 110*zeta + 58)*q^132 + 
1/14*(82*zeta^5 - 39*zeta^4 - 381*zeta^3 + 120*zeta^2 + 379*zeta - 60)*q^133 + 
1/14*(42*zeta^5 + 32*zeta^4 - 197*zeta^3 - 78*zeta^2 + 218*zeta + 44)*q^134 + 
1/14*(23*zeta^5 + 66*zeta^4 - 45*zeta^3 - 216*zeta^2 - 160*zeta + 152)*q^135 + 
1/14*(58*zeta^5 + 81*zeta^4 - 353*zeta^3 - 337*zeta^2 + 506*zeta + 241)*q^136 + 
1/7*(26*zeta^5 - 26*zeta^4 - 120*zeta^3 + 84*zeta^2 + 122*zeta + 50)*q^137 + 
1/14*(-2*zeta^5 + 12*zeta^4 + 20*zeta^3 - 53*zeta^2 - 69*zeta + 40)*q^138 + 
1/2*(30*zeta^5 + 20*zeta^4 - 129*zeta^3 - 50*zeta^2 + 106*zeta + 8)*q^139 + 
1/14*(86*zeta^5 - 23*zeta^4 - 370*zeta^3 + 143*zeta^2 + 350*zeta - 228)*q^140 + 
1/14*(-43*zeta^4 + 53*zeta^3 + 183*zeta^2 - 158*zeta - 129)*q^141 + 
1/14*(85*zeta^5 + 23*zeta^4 - 313*zeta^3 + 2*zeta^2 + 133*zeta - 6)*q^142 + 
1/14*(59*zeta^5 + 27*zeta^4 - 286*zeta^3 - 112*zeta^2 + 287*zeta + 42)*q^144 + 
1/14*(-116*zeta^5 + 22*zeta^4 + 389*zeta^3 - 155*zeta^2 - 21*zeta + 298)*q^145 +
1/14*(-104*zeta^5 + 99*zeta^4 + 546*zeta^3 - 162*zeta^2 - 593*zeta - 228)*q^146 
+ 1/14*(-15*zeta^5 - 11*zeta^4 + 57*zeta^3 + 27*zeta^2 - 24*zeta + 11)*q^147 + 
1/14*(6*zeta^5 - 84*zeta^4 - 8*zeta^3 + 401*zeta^2 + 97*zeta - 264)*q^148 + 
1/14*(33*zeta^5 + 66*zeta^4 - 207*zeta^3 - 279*zeta^2 + 285*zeta + 186)*q^149 + 
1/14*(-17*zeta^5 - 20*zeta^4 + 106*zeta^3 + 75*zeta^2 - 171*zeta - 43)*q^150 + 
1/14*(-21*zeta^5 - 122*zeta^4 + 5*zeta^3 + 457*zeta^2 + 365*zeta - 324)*q^151 + 
1/14*(-60*zeta^5 - 84*zeta^4 + 189*zeta^3 + 188*zeta^2 + 20*zeta + 122)*q^152 + 
1/14*(-64*zeta^5 + 61*zeta^4 + 331*zeta^3 - 115*zeta^2 - 360*zeta - 100)*q^153 +
1/14*(-66*zeta^5 - 59*zeta^4 + 382*zeta^3 + 192*zeta^2 - 589*zeta - 45)*q^154 + 
1/14*(179*zeta^5 + 92*zeta^4 - 871*zeta^3 - 372*zeta^2 + 882*zeta + 122)*q^155 +
1/14*(-95*zeta^5 - 29*zeta^4 + 379*zeta^3 + 42*zeta^2 - 231*zeta - 14)*q^157 + 
1/14*(-201*zeta^5 - 142*zeta^4 + 1124*zeta^3 + 422*zeta^2 - 1686*zeta - 
24)*q^158 + 1/14*(58*zeta^5 + 34*zeta^4 - 267*zeta^3 - 154*zeta^2 + 204*zeta + 
184)*q^159 + 1/14*(192*zeta^5 + 137*zeta^4 - 848*zeta^3 - 338*zeta^2 + 777*zeta 
+ 96)*q^160 + 1/14*(19*zeta^5 + 57*zeta^4 - 20*zeta^3 - 181*zeta^2 - 196*zeta + 
133)*q^161 + 1/14*(-68*zeta^5 - 97*zeta^4 + 405*zeta^3 + 423*zeta^2 - 536*zeta -
335)*q^162 + 1/14*(95*zeta^5 - 2*zeta^4 - 487*zeta^3 - 61*zeta^2 + 551*zeta + 
312)*q^163 + 1/2*(2*zeta^5 - zeta^4 - 15*zeta^3 + 6*zeta^2 + 35*zeta - 7)*q^164 
+ 1/14*(33*zeta^5 + 27*zeta^4 - 145*zeta^3 - 65*zeta^2 + 134*zeta + 15)*q^165 + 
1/14*(78*zeta^5 - 64*zeta^4 - 416*zeta^3 + 61*zeta^2 + 441*zeta + 264)*q^166 + 
1/7*(69*zeta^5 + 24*zeta^4 - 360*zeta^3 - 38*zeta^2 + 508*zeta - 66)*q^167 + 
1/14*(66*zeta^5 + 55*zeta^4 - 311*zeta^3 - 184*zeta^2 + 301*zeta + 20)*q^168 + 
1/14*(-226*zeta^5 - 74*zeta^4 + 975*zeta^3 + 202*zeta^2 - 756*zeta - 88)*q^170 +
1/14*(-57*zeta^5 - 58*zeta^4 + 374*zeta^3 + 184*zeta^2 - 688*zeta - 60)*q^171 + 
1/14*(-74*zeta^5 + 74*zeta^4 + 411*zeta^3 - 62*zeta^2 - 448*zeta - 328)*q^172 + 
1/7*(156*zeta^5 + 108*zeta^4 - 664*zeta^3 - 268*zeta^2 + 528*zeta + 28)*q^173 + 
1/14*(-13*zeta^4 + 31*zeta^3 + 74*zeta^2 - 89*zeta - 39)*q^174 + 
1/14*(-49*zeta^5 - 8*zeta^4 + 269*zeta^3 + 41*zeta^2 - 373*zeta - 108)*q^175 + 
1/14*(-2*zeta^5 + 27*zeta^4 - 6*zeta^3 - 101*zeta^2 + 32*zeta + 20)*q^176 + 
1/14*(30*zeta^5 + 3*zeta^4 - 143*zeta^3 + 50*zeta^2 + 211*zeta - 51)*q^177 + 
1/14*(177*zeta^5 + 147*zeta^4 - 735*zeta^3 - 353*zeta^2 + 550*zeta - 5)*q^178 + 
1/14*(-2*zeta^5 + 46*zeta^4 + 37*zeta^3 - 100*zeta^2 - 82*zeta - 40)*q^179 + 
1/14*(4*zeta^5 - 47*zeta^4 + 110*zeta^3 + 180*zeta^2 - 457*zeta - 149)*q^180 + 
1/14*(-140*zeta^5 - 105*zeta^4 + 675*zeta^3 + 376*zeta^2 - 679*zeta - 64)*q^181 
+ 1/14*(-17*zeta^5 + 22*zeta^4 + 30*zeta^3 - 114*zeta^2 + 70*zeta + 6)*q^183 + 
1/14*(39*zeta^5 - 13*zeta^4 - 103*zeta^3 + 69*zeta^2 - 104*zeta - 117)*q^184 + 
1/14*(54*zeta^5 - 23*zeta^4 - 252*zeta^3 + 65*zeta^2 + 248*zeta - 20)*q^185 + 
1/14*(-9*zeta^5 + 26*zeta^4 + 67*zeta^3 - 49*zeta^2 - 113*zeta - 59)*q^186 + 
1/14*(zeta^5 - 75*zeta^4 + 14*zeta^3 + 349*zeta^2 + 54*zeta - 227)*q^187 + 
1/14*(13*zeta^5 - 124*zeta^4 + 7*zeta^3 + 463*zeta^2 - 119*zeta - 84)*q^188 + 
1/14*(67*zeta^5 - 5*zeta^4 - 352*zeta^3 - 8*zeta^2 + 447*zeta + 163)*q^189 + 
1/14*(-17*zeta^5 + 85*zeta^4 + 70*zeta^3 - 424*zeta^2 - 211*zeta + 289)*q^190 + 
1/14*(-177*zeta^5 - 175*zeta^4 + 728*zeta^3 + 409*zeta^2 - 550*zeta + 19)*q^191 
+ 1/14*(-56*zeta^5 + 10*zeta^4 + 267*zeta^3 + 5*zeta^2 - 249*zeta - 80)*q^192 + 
1/7*(-45*zeta^5 + 7*zeta^4 + 181*zeta^3 - 63*zeta^2 - 136*zeta + 111)*q^193 + 
1/14*(-322*zeta^5 - 84*zeta^4 + 1361*zeta^3 + 194*zeta^2 - 994*zeta - 120)*q^194
+ 1/14*(-105*zeta^5 - 35*zeta^4 + 445*zeta^3 + 86*zeta^2 - 329*zeta - 34)*q^196 
+ 1/14*(-15*zeta^5 + 49*zeta^4 - 68*zeta^3 - 196*zeta^2 + 433*zeta + 177)*q^197 
+ 1/14*(76*zeta^5 - 68*zeta^4 - 377*zeta^3 + 167*zeta^2 + 407*zeta + 8)*q^198 + 
1/14*(-45*zeta^5 + 40*zeta^4 + 298*zeta^3 - 65*zeta^2 - 507*zeta - 221)*q^199 + 
1/14*(41*zeta^5 + 22*zeta^4 - 159*zeta^3 + 6*zeta^2 + 134*zeta - 16)*q^200 + 
1/14*(-33*zeta^5 + 29*zeta^4 + 146*zeta^3 - 74*zeta^2 - 109*zeta - 111)*q^201 + 
1/14*(-134*zeta^5 - 205*zeta^4 + 810*zeta^3 + 879*zeta^2 - 1100*zeta - 
656)*q^202 + 1/14*(40*zeta^5 + 45*zeta^4 - 49*zeta^3 - 47*zeta^2 - 276*zeta + 
55)*q^203 + 1/14*(-87*zeta^5 - 74*zeta^4 + 344*zeta^3 + 177*zeta^2 - 203*zeta + 
37)*q^204 + 1/2*(4*zeta^5 - zeta^4 - 15*zeta^3 + 13*zeta^2 + 14*zeta - 28)*q^205
+ 1/14*(64*zeta^5 + 75*zeta^4 - 449*zeta^3 - 243*zeta^2 + 882*zeta + 97)*q^206 +
1/14*(-4*zeta^5 - 29*zeta^4 + 88*zeta^3 + 166*zeta^2 - 217*zeta - 36)*q^207 + 
1/14*(201*zeta^5 + 66*zeta^4 - 872*zeta^3 - 186*zeta^2 + 686*zeta + 82)*q^209 + 
1/14*(38*zeta^5 + 9*zeta^4 - 175*zeta^3 - 9*zeta^2 + 186*zeta - 49)*q^210 + 
1/14*(68*zeta^5 - 35*zeta^4 - 361*zeta^3 - 25*zeta^2 + 362*zeta + 300)*q^211 + 
1/14*(-228*zeta^5 - 171*zeta^4 + 951*zeta^3 + 418*zeta^2 - 707*zeta - 2)*q^212 +
1/14*(5*zeta^5 - 16*zeta^4 - 99*zeta^3 + 45*zeta^2 + 323*zeta - 58)*q^213 + 
1/14*(53*zeta^5 + 129*zeta^4 - 348*zeta^3 - 532*zeta^2 + 505*zeta + 313)*q^214 +
1/14*(-109*zeta^5 + 25*zeta^4 + 558*zeta^3 - 42*zeta^2 - 673*zeta - 271)*q^215 +
1/14*(-38*zeta^5 - 17*zeta^4 + 121*zeta^3 - 34*zeta^2 - 37*zeta + 25)*q^216 + 
1/14*(-108*zeta^5 - 9*zeta^4 + 557*zeta^3 + 54*zeta^2 - 689*zeta - 214)*q^217 + 
1/7*(18*zeta^5 + 13*zeta^4 - 74*zeta^3 - 31*zeta^2 + 52*zeta - 4)*q^218 + 
1/14*(-67*zeta^5 + 16*zeta^4 + 273*zeta^3 - 121*zeta^2 - 227*zeta + 182)*q^219 +
1/14*(175*zeta^5 + 63*zeta^4 - 783*zeta^3 - 206*zeta^2 + 665*zeta + 86)*q^220 + 
1/14*(90*zeta^5 + 47*zeta^4 - 387*zeta^3 - 128*zeta^2 + 301*zeta + 20)*q^222 + 
1/14*(111*zeta^5 + 24*zeta^4 - 486*zeta^3 - 24*zeta^2 + 438*zeta - 150)*q^223 + 
1/14*(-144*zeta^5 + 11*zeta^4 + 628*zeta^3 - 104*zeta^2 - 567*zeta + 204)*q^224 
+ 1/14*(-93*zeta^5 - 87*zeta^4 + 398*zeta^3 + 205*zeta^2 - 346*zeta - 21)*q^225 
+ 1/14*(-17*zeta^5 + 65*zeta^4 + 24*zeta^3 - 357*zeta^2 - 20*zeta + 229)*q^226 +
1/14*(zeta^5 - 113*zeta^4 + 53*zeta^3 + 448*zeta^2 - 117*zeta - 158)*q^227 + 
1/14*(31*zeta^5 + 85*zeta^4 - 210*zeta^3 - 346*zeta^2 + 315*zeta + 189)*q^228 + 
1/14*(-54*zeta^5 + 2*zeta^4 + 246*zeta^3 - 129*zeta^2 - 351*zeta + 114)*q^229 + 
1/14*(-21*zeta^5 + 13*zeta^4 + 142*zeta^3 - 19*zeta^2 - 254*zeta - 109)*q^230 + 
1/14*(-74*zeta^5 - 37*zeta^4 + 318*zeta^3 + 103*zeta^2 - 244*zeta - 28)*q^231 + 
1/14*(146*zeta^5 + 35*zeta^4 - 614*zeta^3 - 56*zeta^2 + 461*zeta - 187)*q^232 + 
1/14*(4*zeta^5 + 29*zeta^4 - 88*zeta^3 - 166*zeta^2 + 217*zeta + 36)*q^233 + 
1/14*(-78*zeta^5 - 65*zeta^4 + 473*zeta^3 + 344*zeta^2 - 651*zeta - 108)*q^235 +
1/14*(184*zeta^5 + 113*zeta^4 - 1044*zeta^3 - 302*zeta^2 + 1637*zeta - 29)*q^236
+ 1/14*(-102*zeta^5 - 15*zeta^4 + 463*zeta^3 + 72*zeta^2 - 397*zeta - 92)*q^237 
+ 1/14*(-144*zeta^5 - 172*zeta^4 + 519*zeta^3 + 392*zeta^2 - 184*zeta + 
162)*q^238 + 1/14*(-77*zeta^5 - 53*zeta^4 + 296*zeta^3 + 40*zeta^2 - 225*zeta - 
5)*q^239 + 1/14*(-21*zeta^5 + 18*zeta^4 + 100*zeta^3 - 59*zeta^2 - 111*zeta - 
37)*q^240 + 1/14*(30*zeta^5 + 102*zeta^4 - 227*zeta^3 - 386*zeta^2 + 408*zeta + 
143)*q^241 + 1/14*(33*zeta^5 - 7*zeta^4 - 114*zeta^3 + 123*zeta^2 + 96*zeta - 
87)*q^242 + 1/14*(192*zeta^5 + 165*zeta^4 - 841*zeta^3 - 394*zeta^2 + 777*zeta +
82)*q^243 + 1/14*(-194*zeta^5 + 75*zeta^4 + 890*zeta^3 - 249*zeta^2 - 868*zeta +
164)*q^244 + 1/14*(-17*zeta^5 - 14*zeta^4 + 104*zeta^3 + 42*zeta^2 - 178*zeta - 
8)*q^245 + 1/2*(3*zeta^5 - 4*zeta^4 - 14*zeta^3 + 10*zeta^2 + 12*zeta + 6)*q^246
+ 1/14*(45*zeta^5 - 43*zeta^4 - 112*zeta^3 + 220*zeta^2 - 91*zeta - 2)*q^248 + 
1/14*(107*zeta^5 + 15*zeta^4 - 442*zeta^3 + 6*zeta^2 + 321*zeta - 169)*q^249 + 
1/14*(150*zeta^5 - 93*zeta^4 - 725*zeta^3 + 222*zeta^2 + 743*zeta + 28)*q^250 + 
1/7*(-48*zeta^5 - 78*zeta^4 + 163*zeta^3 + 172*zeta^2 - 42*zeta + 74)*q^251 + 
1/14*(-37*zeta^5 + 35*zeta^4 + 82*zeta^3 - 283*zeta^2 + 12*zeta + 179)*q^252 + 
1/14*(38*zeta^5 + 10*zeta^4 - 209*zeta^3 - 50*zeta^2 + 284*zeta + 97)*q^253 + 
1/14*(159*zeta^5 + 331*zeta^4 - 1023*zeta^3 - 1358*zeta^2 + 1501*zeta + 
820)*q^254 + 1/14*(-13*zeta^5 + 4*zeta^4 + 41*zeta^3 - 56*zeta^2 - 26*zeta + 
38)*q^255 + 1/14*(69*zeta^5 + 64*zeta^4 - 240*zeta^3 - 151*zeta^2 + 35*zeta - 
95)*q^256 + 1/14*(62*zeta^5 - 54*zeta^4 - 398*zeta^3 - 141*zeta^2 + 421*zeta + 
736)*q^257 + 1/14*(-23*zeta^5 - 30*zeta^4 + 166*zeta^3 + 100*zeta^2 - 332*zeta -
44)*q^258 + 1/14*(158*zeta^5 + 78*zeta^4 - 691*zeta^3 - 226*zeta^2 + 560*zeta + 
48)*q^259 + 1/14*(-194*zeta^5 - 115*zeta^4 + 949*zeta^3 + 452*zeta^2 - 973*zeta 
- 124)*q^261 + 1/14*(3*zeta^5 + 41*zeta^4 - 100*zeta^3 - 160*zeta^2 + 321*zeta +
117)*q^262 + 1/14*(-148*zeta^5 + 10*zeta^4 + 657*zeta^3 - 67*zeta^2 - 593*zeta +
112)*q^263 + 1/14*(54*zeta^5 + 19*zeta^4 - 206*zeta^3 - 56*zeta^2 + 69*zeta - 
38)*q^264 + 1/14*(-52*zeta^5 - 39*zeta^4 + 139*zeta^3 + 11*zeta^2 + 66*zeta - 
13)*q^265 + 1/14*(121*zeta^5 + 186*zeta^4 - 738*zeta^3 - 785*zeta^2 + 1031*zeta 
+ 563)*q^266 + 1/14*(-56*zeta^5 + 27*zeta^4 + 283*zeta^3 - 85*zeta^2 - 352*zeta 
- 101)*q^267 + 1/14*(24*zeta^5 + 35*zeta^4 - 11*zeta^3 - 55*zeta^2 - 242*zeta + 
57)*q^268 + 1/14*(-81*zeta^5 - 50*zeta^4 + 387*zeta^3 + 127*zeta^2 - 437*zeta - 
99)*q^269 + 1/14*(-40*zeta^5 + 41*zeta^4 + 223*zeta^3 - 35*zeta^2 - 244*zeta - 
180)*q^270 + 1/14*(175*zeta^5 - 23*zeta^4 - 643*zeta^3 + 205*zeta^2 + 258*zeta -
419)*q^271 + 1/14*(37*zeta^5 + 4*zeta^4 - 141*zeta^3 + 12*zeta^2 + 70*zeta + 
6)*q^272 + 1/7*(10*zeta^5 + 6*zeta^4 - 66*zeta^3 - 44*zeta^2 + 98*zeta + 
20)*q^274 + 1/14*(-55*zeta^5 - 71*zeta^4 + 324*zeta^3 + 260*zeta^2 - 479*zeta - 
103)*q^275 + 1/14*(-24*zeta^5 + 17*zeta^4 + 100*zeta^3 - 92*zeta^2 - 105*zeta + 
132)*q^276 + 1/14*(-195*zeta^5 - 135*zeta^4 + 830*zeta^3 + 335*zeta^2 - 660*zeta
- 35)*q^277 + 1/2*(-21*zeta^4 + zeta^3 + 95*zeta^2 + 28*zeta - 63)*q^278 + 
1/14*(-7*zeta^5 + 146*zeta^4 - 53*zeta^3 - 547*zeta^2 + 201*zeta + 116)*q^279 + 
1/14*(85*zeta^5 - 18*zeta^4 - 435*zeta^3 + 25*zeta^2 + 521*zeta + 218)*q^280 + 
1/14*(-28*zeta^5 - 11*zeta^4 + 51*zeta^3 - 51*zeta^2 + 104*zeta + 23)*q^281 + 
1/14*(30*zeta^5 + 41*zeta^4 - 131*zeta^3 - 92*zeta^2 + 135*zeta + 12)*q^282 + 
1/7*(46*zeta^5 + 43*zeta^4 - 148*zeta^3 + 5*zeta^2 + 82*zeta - 300)*q^283 + 
1/14*(-83*zeta^5 + 39*zeta^4 + 178*zeta^3 - 186*zeta^2 + 381*zeta + 283)*q^284 +
1/14*(-32*zeta^5 - zeta^4 + 108*zeta^3 - 34*zeta^2 - 21*zeta + 4)*q^285 + 
1/2*(11*zeta^5 - zeta^4 - 55*zeta^3 - 6*zeta^2 + 57*zeta + 14)*q^287 + 
1/14*(-zeta^5 + 45*zeta^4 - 157*zeta^3 - 157*zeta^2 + 620*zeta + 137)*q^288 + 
1/14*(-50*zeta^5 + 23*zeta^4 + 288*zeta^3 + 97*zeta^2 - 286*zeta - 412)*q^289 + 
1/14*(-159*zeta^5 - 110*zeta^4 + 703*zeta^3 + 273*zeta^2 - 643*zeta - 81)*q^290 
+ 1/14*(23*zeta^5 + 70*zeta^4 - 117*zeta^3 - 270*zeta^2 + 86*zeta + 164)*q^291 +
1/14*(-213*zeta^5 - 141*zeta^4 + 1190*zeta^3 + 668*zeta^2 - 1533*zeta - 
791)*q^292 + 1/14*(-163*zeta^5 - 94*zeta^4 + 917*zeta^3 + 429*zeta^2 - 1239*zeta
- 518)*q^293 + 1/14*(-zeta^5 + 18*zeta^4 - 3*zeta^3 - 87*zeta^2 - 7*zeta + 
56)*q^294 + 1/14*(-117*zeta^5 - 130*zeta^4 + 435*zeta^3 + 299*zeta^2 - 193*zeta 
+ 105)*q^295 + 1/14*(32*zeta^5 - 77*zeta^4 - 188*zeta^3 + 176*zeta^2 + 249*zeta 
+ 44)*q^296 + 1/14*(28*zeta^5 + 50*zeta^4 - 207*zeta^3 - 183*zeta^2 + 403*zeta +
94)*q^297 + 1/14*(-240*zeta^5 - 81*zeta^4 + 1026*zeta^3 + 210*zeta^2 - 777*zeta 
- 84)*q^298 + 1/14*(91*zeta^5 + 63*zeta^4 - 414*zeta^3 - 200*zeta^2 + 371*zeta +
26)*q^300 + 1/14*(46*zeta^5 - 57*zeta^4 - 32*zeta^3 + 246*zeta^2 - 441*zeta - 
263)*q^301 + 1/14*(160*zeta^5 - 112*zeta^4 - 821*zeta^3 + 145*zeta^2 + 853*zeta 
+ 360)*q^302 + 1/14*(30*zeta^5 + 69*zeta^4 - 124*zeta^3 - 148*zeta^2 + 135*zeta 
- 2)*q^303 + 1/14*(16*zeta^5 - zeta^4 - 43*zeta^3 + 55*zeta^2 - 35)*q^304 + 
1/14*(31*zeta^5 - 193*zeta^4 - 55*zeta^3 + 734*zeta^2 - 59*zeta - 148)*q^305 + 
1/14*(-125*zeta^5 - 243*zeta^4 + 793*zeta^3 + 1004*zeta^2 - 1147*zeta - 
632)*q^306 + 1/7*(15*zeta^5 + 63*zeta^4 - 62*zeta^3 - 247*zeta^2 - 20*zeta + 
159)*q^307 + 1/14*(87*zeta^5 + 95*zeta^4 - 288*zeta^3 - 219*zeta^2 - 149)*q^308 
+ 1/14*(50*zeta^5 - 18*zeta^4 - 207*zeta^3 + 126*zeta^2 + 200*zeta - 216)*q^309 
+ 1/14*(22*zeta^5 + 57*zeta^4 - 230*zeta^3 - 204*zeta^2 + 579*zeta + 127)*q^310 
+ 1/14*(-501*zeta^5 - 197*zeta^4 + 2273*zeta^3 + 674*zeta^2 - 1995*zeta - 
258)*q^311 + 1/14*(-41*zeta^5 + 44*zeta^4 + 127*zeta^3 - 184*zeta^2 + 14*zeta - 
22)*q^313 + 1/14*(-133*zeta^5 - 81*zeta^4 + 716*zeta^3 + 228*zeta^2 - 1017*zeta 
+ 23)*q^314 + 1/14*(-2*zeta^5 + 36*zeta^4 + 78*zeta^3 + 63*zeta^2 - 113*zeta - 
408)*q^315 + 1/14*(342*zeta^5 + 351*zeta^4 - 1276*zeta^3 - 816*zeta^2 + 553*zeta
- 298)*q^316 + 1/7*(37*zeta^5 - 24*zeta^4 - 77*zeta^3 + 236*zeta^2 - 46*zeta - 
146)*q^317 + 1/14*(24*zeta^5 + 65*zeta^4 - 150*zeta^3 - 289*zeta^2 + 170*zeta + 
206)*q^318 + 1/14*(5*zeta^5 - 88*zeta^4 + 10*zeta^3 + 365*zeta^2 - 9*zeta - 
157)*q^319 + 1/14*(35*zeta^5 - 54*zeta^4 - 113*zeta^3 + 344*zeta^2 + 144*zeta - 
232)*q^320 + 1/14*(27*zeta^5 - 7*zeta^4 - 147*zeta^3 + 5*zeta^2 + 194*zeta + 
69)*q^321 + 1/14*(-38*zeta^5 + 29*zeta^4 + 209*zeta^3 - 2*zeta^2 - 219*zeta - 
188)*q^322 + 1/14*(-179*zeta^5 - 108*zeta^4 + 979*zeta^3 + 297*zeta^2 - 
1437*zeta + 34)*q^323 + 1/14*(273*zeta^5 + 70*zeta^4 - 1203*zeta^3 - 220*zeta^2 
+ 980*zeta + 142)*q^324 + 1/14*(-198*zeta^5 - 67*zeta^4 + 790*zeta^3 + 
106*zeta^2 - 483*zeta - 24)*q^326 + 1/7*(20*zeta^5 + 37*zeta^4 - 111*zeta^3 - 
149*zeta^2 + 126*zeta + 71)*q^327 + 1/2*(10*zeta^5 + 7*zeta^4 - 46*zeta^3 - 
31*zeta^2 + 34*zeta + 36)*q^328 + 1/14*(189*zeta^5 + 136*zeta^4 - 874*zeta^3 - 
335*zeta^2 + 923*zeta + 173)*q^329 + 1/14*(5*zeta^5 - 20*zeta^4 - 27*zeta^3 + 
99*zeta^2 + 77*zeta - 70)*q^330 + 1/14*(-49*zeta^5 - 127*zeta^4 + 339*zeta^3 + 
496*zeta^2 - 555*zeta - 234)*q^331 + 1/2*(28*zeta^5 + 7*zeta^4 - 151*zeta^3 - 
41*zeta^2 + 192*zeta + 85)*q^332 + 1/14*(-7*zeta^5 + 69*zeta^4 - 10*zeta^3 - 
347*zeta^2 - 2*zeta + 221)*q^333 + 1/7*(-180*zeta^5 - 191*zeta^4 + 662*zeta^3 + 
442*zeta^2 - 259*zeta + 176)*q^334 + 1/14*(-58*zeta^5 - 14*zeta^4 + 185*zeta^3 -
172*zeta^2 - 142*zeta + 552)*q^335 + 1/14*(19*zeta^5 - 12*zeta^4 - 53*zeta^3 + 
61*zeta^2 - 29*zeta - 74)*q^336 + 1/14*(54*zeta^5 + 73*zeta^4 - 252*zeta^3 - 
226*zeta^2 + 245*zeta - 8)*q^337 + 1/14*(-78*zeta^5 + 12*zeta^4 + 371*zeta^3 + 
6*zeta^2 - 350*zeta - 88)*q^339 + 1/14*(-156*zeta^5 - 78*zeta^4 + 813*zeta^3 + 
197*zeta^2 - 1105*zeta + 78)*q^340 + 1/14*(20*zeta^5 + 100*zeta^4 - 27*zeta^3 - 
211*zeta^2 - 83*zeta - 104)*q^341 + 1/14*(264*zeta^5 + 273*zeta^4 - 1008*zeta^3 
- 634*zeta^2 + 521*zeta - 184)*q^342 + 1/14*(45*zeta^5 + 187*zeta^4 - 150*zeta^3
- 714*zeta^2 - 183*zeta + 471)*q^343 + 1/14*(-6*zeta^5 - 173*zeta^4 + 128*zeta^3
+ 675*zeta^2 - 272*zeta - 226)*q^344 + 1/14*(31*zeta^5 - 58*zeta^4 - 131*zeta^3 
+ 211*zeta^2 + 127*zeta + 12)*q^345 + 1/7*(4*zeta^5 - 116*zeta^4 - 8*zeta^3 + 
536*zeta^2 + 164*zeta - 356)*q^346 + 1/14*(15*zeta^5 + 75*zeta^4 + 46*zeta^3 - 
155*zeta^2 - 324*zeta - 217)*q^347 + 1/14*(26*zeta^5 + 9*zeta^4 - 148*zeta^3 - 
129*zeta^2 + 126*zeta + 284)*q^348 + 1/14*(100*zeta^5 + 64*zeta^4 - 505*zeta^3 -
197*zeta^2 + 615*zeta - 8)*q^349 + 1/14*(138*zeta^5 + 17*zeta^4 - 560*zeta^3 - 
2*zeta^2 + 357*zeta + 48)*q^350 + 1/14*(-238*zeta^5 - 42*zeta^4 + 1055*zeta^3 + 
146*zeta^2 - 868*zeta - 144)*q^352 + 1/14*(-75*zeta^5 - 40*zeta^4 + 422*zeta^3 +
96*zeta^2 - 662*zeta + 30)*q^353 + 1/14*(114*zeta^5 - 29*zeta^4 - 540*zeta^3 + 
35*zeta^2 + 512*zeta + 100)*q^354 + 1/14*(294*zeta^5 + 125*zeta^4 - 1440*zeta^3 
- 348*zeta^2 + 1671*zeta + 430)*q^355 + 1/14*(89*zeta^5 + 28*zeta^4 - 247*zeta^3
+ 151*zeta^2 - 23*zeta - 94)*q^356 + 1/14*(19*zeta^5 + 57*zeta^4 - 124*zeta^3 - 
246*zeta^2 + 155*zeta + 159)*q^357 + 1/14*(-48*zeta^5 - 105*zeta^4 + 316*zeta^3 
+ 421*zeta^2 - 486*zeta - 232)*q^358 + 1/14*(-49*zeta^5 + 36*zeta^4 + 59*zeta^3 
- 353*zeta^2 + 205*zeta + 206)*q^359 + 1/14*(183*zeta^5 + 129*zeta^4 - 
804*zeta^3 - 319*zeta^2 + 722*zeta + 83)*q^360 + 1/14*(-90*zeta^5 + 24*zeta^4 + 
472*zeta^3 + 105*zeta^2 - 451*zeta - 440)*q^361 + 1/14*(-47*zeta^5 - 76*zeta^4 +
321*zeta^3 + 279*zeta^2 - 575*zeta - 134)*q^362 + 1/14*(84*zeta^5 + 70*zeta^4 - 
409*zeta^3 - 250*zeta^2 + 420*zeta + 36)*q^363 + 1/14*(410*zeta^5 + 197*zeta^4 -
1982*zeta^3 - 798*zeta^2 + 1981*zeta + 280)*q^365 + 1/14*(-68*zeta^5 - 23*zeta^4
+ 347*zeta^3 + 37*zeta^2 - 468*zeta + 67)*q^366 + 1/14*(-168*zeta^5 + 129*zeta^4
+ 862*zeta^3 - 198*zeta^2 - 907*zeta - 332)*q^367 + 1/14*(-102*zeta^5 - 
58*zeta^4 + 473*zeta^3 + 150*zeta^2 - 488*zeta - 96)*q^368 + 1/2*(-8*zeta^5 - 
9*zeta^4 + 33*zeta^3 + 21*zeta^2 - 26*zeta - 11)*q^369 + 1/14*(77*zeta^5 + 
122*zeta^4 - 471*zeta^3 - 515*zeta^2 + 657*zeta + 366)*q^370 + 1/14*(-4*zeta^5 +
158*zeta^4 - 51*zeta^3 - 644*zeta^2 + 90*zeta + 261)*q^371 + 1/14*(-38*zeta^5 - 
98*zeta^4 + 158*zeta^3 + 349*zeta^2 - 45*zeta - 218)*q^372 + 1/14*(339*zeta^5 + 
219*zeta^4 - 1516*zeta^3 - 551*zeta^2 + 1424*zeta + 207)*q^373 + 
1/14*(154*zeta^5 - 123*zeta^4 - 769*zeta^3 + 264*zeta^2 + 815*zeta + 116)*q^374 
+ 1/14*(-4*zeta^5 + 14*zeta^4 - 41*zeta^3 - 49*zeta^2 + 213*zeta + 50)*q^375 + 
1/14*(176*zeta^5 + 51*zeta^4 - 852*zeta^3 - 250*zeta^2 + 847*zeta + 148)*q^376 +
1/14*(-141*zeta^5 - 23*zeta^4 + 559*zeta^3 + 2*zeta^2 - 329*zeta - 34)*q^378 + 
1/14*(-298*zeta^5 - 33*zeta^4 + 1253*zeta^3 - 65*zeta^2 - 1004*zeta + 497)*q^379
+ 1/14*(-170*zeta^5 + 86*zeta^4 + 797*zeta^3 - 248*zeta^2 - 798*zeta + 88)*q^380
+ 1/14*(-66*zeta^5 - 56*zeta^4 + 217*zeta^3 + 134*zeta^2 + 22*zeta + 116)*q^381 
+ 1/14*(-57*zeta^5 + 157*zeta^4 + 246*zeta^3 - 840*zeta^2 - 555*zeta + 
585)*q^382 + 1/7*(20*zeta^5 + 15*zeta^4 - 123*zeta^3 - 49*zeta^2 + 208*zeta + 
25)*q^383 + 1/14*(2*zeta^5 - 106*zeta^4 + 61*zeta^3 + 386*zeta^2 - 204*zeta - 
61)*q^384 + 1/14*(-8*zeta^5 - 60*zeta^4 - 6*zeta^3 + 231*zeta^2 + 187*zeta - 
164)*q^385 + 1/7*(24*zeta^5 + 34*zeta^4 - 61*zeta^3 - 76*zeta^2 - 66*zeta - 
78)*q^386 + 1/14*(136*zeta^5 - 50*zeta^4 - 601*zeta^3 + 233*zeta^2 + 583*zeta - 
288)*q^387 + 1/2*(-26*zeta^5 - 22*zeta^4 + 153*zeta^3 + 69*zeta^2 - 245*zeta - 
14)*q^388 + 1/7*(218*zeta^5 + 79*zeta^4 - 922*zeta^3 - 194*zeta^2 + 679*zeta + 
64)*q^389 + 1/14*(156*zeta^5 + 53*zeta^4 - 699*zeta^3 - 176*zeta^2 + 595*zeta + 
80)*q^391 + 1/14*(-45*zeta^5 - 31*zeta^4 + 242*zeta^3 + 94*zeta^2 - 337*zeta - 
3)*q^392 + 1/14*(72*zeta^5 + 30*zeta^4 - 287*zeta^3 - 9*zeta^2 + 221*zeta - 
176)*q^393 + 1/14*(-237*zeta^5 - 222*zeta^4 + 948*zeta^3 + 523*zeta^2 - 617*zeta
+ 79)*q^394 + 1/14*(27*zeta^5 - 92*zeta^4 - 109*zeta^3 + 481*zeta^2 + 263*zeta -
330)*q^395 + 1/14*(72*zeta^5 + 178*zeta^4 - 469*zeta^3 - 744*zeta^2 + 658*zeta +
455)*q^396 + 1/14*(-45*zeta^5 + 81*zeta^4 + 202*zeta^3 - 314*zeta^2 - 249*zeta +
29)*q^397 + 1/14*(70*zeta^5 - 73*zeta^4 - 247*zeta^3 + 520*zeta^2 + 309*zeta - 
359)*q^398 + 1/14*(-81*zeta^5 - 68*zeta^4 + 339*zeta^3 + 163*zeta^2 - 263*zeta -
3)*q^399 + 1/14*(-36*zeta^5 - zeta^4 + 147*zeta^3 - 41*zeta^2 - 128*zeta + 
116)*q^400 + 1/14*(-124*zeta^5 - 49*zeta^4 + 514*zeta^3 + 140*zeta^2 - 327*zeta 
+ 101)*q^401 + 1/14*(-11*zeta^5 + 13*zeta^4 + 73*zeta^3 - 6*zeta^2 - 105*zeta - 
38)*q^402 + 1/14*(546*zeta^5 + 154*zeta^4 - 2385*zeta^3 - 454*zeta^2 + 1904*zeta
+ 256)*q^404 + 1/14*(114*zeta^5 + 32*zeta^4 - 517*zeta^3 - 53*zeta^2 + 515*zeta 
- 132)*q^405 + 1/14*(70*zeta^5 - 48*zeta^4 - 310*zeta^3 + 207*zeta^2 + 323*zeta 
- 232)*q^406 + 1/14*(129*zeta^5 + 99*zeta^4 - 492*zeta^3 - 241*zeta^2 + 218*zeta
- 91)*q^407 + 1/14*(14*zeta^5 + 59*zeta^4 - 75*zeta^3 - 240*zeta^2 + 41*zeta + 
149)*q^408 + 1/14*(-146*zeta^5 + 6*zeta^4 + 781*zeta^3 + 14*zeta^2 - 1048*zeta -
305)*q^409 + 1/2*(5*zeta^5 + zeta^4 - 27*zeta^3 - 6*zeta^2 + 35*zeta + 14)*q^410
+ 1/7*(2*zeta^5 + 8*zeta^4 + 26*zeta^3 - 14*zeta^2 - 122*zeta + 20)*q^411 + 
1/14*(12*zeta^5 - 103*zeta^4 - 249*zeta^3 + 202*zeta^2 + 721*zeta + 398)*q^412 +
1/14*(178*zeta^5 - 56*zeta^4 - 848*zeta^3 + 83*zeta^2 + 815*zeta + 152)*q^413 + 
1/14*(93*zeta^5 + 32*zeta^4 - 454*zeta^3 - 60*zeta^2 + 550*zeta - 90)*q^414 + 
1/14*(-420*zeta^5 - 224*zeta^4 + 2089*zeta^3 + 950*zeta^2 - 2198*zeta - 
316)*q^415 + 1/2*(zeta^5 - 11*zeta^4 + 5*zeta^3 + 42*zeta^2 - 25*zeta + 2)*q^417
+ 1/14*(172*zeta^5 + 119*zeta^4 - 981*zeta^3 - 343*zeta^2 + 1530*zeta + 
13)*q^418 + 1/14*(166*zeta^5 - 180*zeta^4 - 813*zeta^3 + 522*zeta^2 + 910*zeta -
192)*q^419 + 1/14*(-120*zeta^5 - 83*zeta^4 + 537*zeta^3 + 206*zeta^2 - 511*zeta 
- 74)*q^420 + 1/14*(-80*zeta^5 + 80*zeta^4 + 286*zeta^3 - 577*zeta^2 - 361*zeta 
+ 400)*q^421 + 1/14*(103*zeta^5 + 247*zeta^4 - 673*zeta^3 - 1022*zeta^2 + 
969*zeta + 610)*q^422 + 1/14*(94*zeta^5 - 25*zeta^4 - 489*zeta^3 + 69*zeta^2 + 
634*zeta + 181)*q^423 + 1/14*(51*zeta^5 + 151*zeta^4 - 210*zeta^3 - 555*zeta^2 +
24*zeta + 351)*q^424 + 1/14*(-57*zeta^5 - 98*zeta^4 + 175*zeta^3 + 215*zeta^2 + 
19*zeta + 125)*q^425 + 1/14*(52*zeta^5 + 8*zeta^4 - 255*zeta^3 - 95*zeta^2 + 
221*zeta + 200)*q^426 + 1/14*(-209*zeta^5 - 33*zeta^4 + 928*zeta^3 - 16*zeta^2 -
901*zeta + 319)*q^427 + 1/14*(-203*zeta^5 - 35*zeta^4 + 803*zeta^3 + 6*zeta^2 - 
469*zeta - 46)*q^428 + 1/14*(181*zeta^5 + 33*zeta^4 - 699*zeta^3 + 10*zeta^2 + 
371*zeta + 26)*q^430 + 1/14*(171*zeta^5 + 113*zeta^4 - 976*zeta^3 - 316*zeta^2 +
1533*zeta - 3)*q^431 + 1/14*(42*zeta^5 - zeta^4 - 166*zeta^3 + 73*zeta^2 + 
146*zeta - 188)*q^432 + 1/14*(-183*zeta^5 - 160*zeta^4 + 789*zeta^3 + 381*zeta^2
- 693*zeta - 53)*q^433 + 1/14*(63*zeta^5 - 17*zeta^4 - 226*zeta^3 + 247*zeta^2 +
218*zeta - 177)*q^434 + 1/14*(71*zeta^5 - 67*zeta^4 - 337*zeta^3 + 228*zeta^2 + 
381*zeta + 106)*q^435 + 1/7*(-15*zeta^5 + 16*zeta^4 + 63*zeta^3 - 41*zeta^2 - 
35*zeta - 56)*q^436 + 1/14*(-7*zeta^5 - 78*zeta^4 - 3*zeta^3 + 318*zeta^2 + 
194*zeta - 220)*q^437 + 1/14*(63*zeta^5 + 73*zeta^4 - 195*zeta^3 - 167*zeta^2 - 
50*zeta - 135)*q^438 + 1/14*(-140*zeta^5 - 13*zeta^4 + 600*zeta^3 - 38*zeta^2 - 
517*zeta + 188)*q^439 + 1/14*(zeta^5 + 29*zeta^4 - 90*zeta^3 - 106*zeta^2 + 
327*zeta + 85)*q^440 + 1/14*(99*zeta^5 + 37*zeta^4 - 426*zeta^3 - 100*zeta^2 + 
329*zeta + 34)*q^441 + 1/7*(2*zeta^5 - 31*zeta^4 + 69*zeta^3 + 180*zeta^2 - 
217*zeta - 36)*q^443 + 1/14*(27*zeta^5 - 4*zeta^4 - 157*zeta^3 + 53*zeta^2 + 
291*zeta - 66)*q^444 + 1/14*(-54*zeta^5 - 59*zeta^4 + 101*zeta^3 - 190*zeta^2 - 
15*zeta + 900)*q^445 + 1/14*(-54*zeta^5 - 93*zeta^4 + 144*zeta^3 + 204*zeta^2 + 
105*zeta + 162)*q^446 + 1/14*(-21*zeta^5 - 3*zeta^4 + 96*zeta^3 - 33*zeta^2 - 
132*zeta + 33)*q^447 + 1/14*(-97*zeta^5 - 217*zeta^4 + 624*zeta^3 + 904*zeta^2 -
885*zeta - 561)*q^448 + 1/14*(-95*zeta^5 - 37*zeta^4 + 527*zeta^3 + 176*zeta^2 -
713*zeta - 268)*q^449 + 1/14*(-25*zeta^5 + 67*zeta^4 + 120*zeta^3 - 354*zeta^2 -
283*zeta + 251)*q^450 + 1/2*(-15*zeta^5 + 67*zeta^3 + 5*zeta^2 - 53*zeta - 
9)*q^451 + 1/14*(-130*zeta^5 + 53*zeta^4 + 663*zeta^3 + 22*zeta^2 - 651*zeta - 
412)*q^452 + 1/14*(148*zeta^5 + 37*zeta^4 - 640*zeta^3 - 58*zeta^2 + 541*zeta - 
185)*q^453 + 1/14*(282*zeta^5 + 109*zeta^4 - 1241*zeta^3 - 328*zeta^2 + 
1015*zeta + 116)*q^454 + 1/14*(-115*zeta^5 - 41*zeta^4 + 511*zeta^3 + 130*zeta^2
- 427*zeta - 54)*q^456 + 1/14*(165*zeta^5 - 48*zeta^4 - 537*zeta^3 + 293*zeta^2 
- 13*zeta - 474)*q^457 + 1/14*(-220*zeta^5 + 69*zeta^4 + 1046*zeta^3 - 
108*zeta^2 - 1005*zeta - 172)*q^458 + 1/14*(63*zeta^5 + 101*zeta^4 - 188*zeta^3 
- 223*zeta^2 - 50*zeta - 149)*q^459 + 1/14*(-41*zeta^5 - 119*zeta^4 + 78*zeta^3 
+ 390*zeta^2 + 295*zeta - 275)*q^460 + 1/14*(-135*zeta^5 - 227*zeta^4 + 
833*zeta^3 + 954*zeta^2 - 1169*zeta - 658)*q^461 + 1/14*(-37*zeta^5 - 44*zeta^4 
+ 207*zeta^3 + 213*zeta^2 - 229*zeta - 214)*q^462 + 1/14*(-25*zeta^5 - 
144*zeta^4 + 61*zeta^3 + 566*zeta^2 + 240*zeta - 382)*q^463 + 1/14*(-147*zeta^5 
- 67*zeta^4 + 708*zeta^3 + 183*zeta^2 - 792*zeta - 191)*q^464 + 1/14*(62*zeta^5 
+ 3*zeta^4 - 246*zeta^3 + 87*zeta^2 + 212*zeta - 252)*q^465 + 1/14*(-93*zeta^5 -
32*zeta^4 + 454*zeta^3 + 60*zeta^2 - 550*zeta + 90)*q^466 + 1/14*(-174*zeta^5 - 
33*zeta^4 + 487*zeta^3 - 228*zeta^2 + 161*zeta + 124)*q^467 + 1/14*(-131*zeta^5 
- 59*zeta^4 + 720*zeta^3 + 348*zeta^2 - 875*zeta - 162)*q^469 + 1/14*(125*zeta^5
+ 30*zeta^4 - 559*zeta^3 - 37*zeta^2 + 539*zeta - 160)*q^470 + 1/14*(-44*zeta^5 
+ 213*zeta^3 + 45*zeta^2 - 191*zeta - 120)*q^471 + 1/14*(-231*zeta^5 - 
215*zeta^4 + 878*zeta^3 + 507*zeta^2 - 416*zeta + 169)*q^472 + 1/14*(-38*zeta^5 
+ 29*zeta^4 + 105*zeta^3 - 249*zeta^2 - 50*zeta + 163)*q^473 + 1/14*(-87*zeta^5 
- 146*zeta^4 + 526*zeta^3 + 635*zeta^2 - 689*zeta - 477)*q^474 + 1/14*(90*zeta^5
+ 101*zeta^4 - 528*zeta^3 - 439*zeta^2 + 716*zeta + 374)*q^475 + 
1/14*(-20*zeta^5 + 161*zeta^4 + 71*zeta^3 - 779*zeta^2 - 300*zeta + 523)*q^476 +
1/14*(21*zeta^5 + 50*zeta^4 + 26*zeta^3 - 107*zeta^2 - 355*zeta - 227)*q^477 + 
1/14*(-202*zeta^5 + 42*zeta^4 + 933*zeta^3 - 96*zeta^2 - 874*zeta - 24)*q^478 + 
1/14*(362*zeta^5 + 161*zeta^4 - 1739*zeta^3 - 413*zeta^2 + 1958*zeta - 
241)*q^479 + 1/14*(-7*zeta^5 - 21*zeta^4 + 108*zeta^3 + 152*zeta^2 - 245*zeta - 
50)*q^480 + 1/14*(-341*zeta^5 - 80*zeta^4 + 1466*zeta^3 + 210*zeta^2 - 1120*zeta
- 154)*q^482 + 1/14*(-84*zeta^5 - 18*zeta^4 + 345*zeta^3 + 25*zeta^2 - 233*zeta 
+ 114)*q^483 + 1/2*(2*zeta^5 - 11*zeta^4 - 21*zeta^3 + 8*zeta^2 + 31*zeta + 
52)*q^484 + 1/14*(45*zeta^5 + 88*zeta^4 - 92*zeta^3 - 191*zeta^2 - 189*zeta - 
191)*q^485 + 1/14*(37*zeta^5 - 119*zeta^4 - 194*zeta^3 + 605*zeta^2 + 506*zeta -
431)*q^486 + 1/14*(244*zeta^5 + 201*zeta^4 - 1416*zeta^3 - 857*zeta^2 + 
1994*zeta + 800)*q^487 + 1/14*(-145*zeta^5 - 76*zeta^4 + 797*zeta^3 + 381*zeta^2
- 1005*zeta - 524)*q^488 + 1/14*(-29*zeta^5 - 3*zeta^4 + 228*zeta^3 - 3*zeta^2 -
518*zeta + 49)*q^489 + 1/14*(66*zeta^5 + 69*zeta^4 - 250*zeta^3 - 160*zeta^2 + 
123*zeta - 50)*q^490 + 1/14*(-58*zeta^5 + 140*zeta^4 + 325*zeta^3 - 368*zeta^2 -
436*zeta + 48)*q^491 + 1/2*(14*zeta^5 + 11*zeta^4 - 65*zeta^3 - 39*zeta^2 + 
58*zeta + 5)*q^492 + 1/14*(-99*zeta^5 - 30*zeta^4 + 364*zeta^3 + 6*zeta^2 - 
154*zeta + 10)*q^493 + 1/14*(-75*zeta^5 - 3*zeta^4 + 268*zeta^3 - 60*zeta^2 - 
91*zeta - 2)*q^495 + 1/14*(-91*zeta^5 + 3*zeta^4 + 359*zeta^3 - 73*zeta^2 - 
226*zeta + 191)*q^496 + 1/14*(4*zeta^5 - 13*zeta^4 - 134*zeta^3 - 296*zeta^2 + 
145*zeta + 876)*q^497 + 1/14*(3*zeta^5 - 38*zeta^4 - 78*zeta^3 + 75*zeta^2 + 
231*zeta + 131)*q^498 + 1/14*(32*zeta^5 - 97*zeta^4 - 203*zeta^3 + 479*zeta^2 + 
552*zeta - 355)*q^499 + 1/14*(107*zeta^5 + 304*zeta^4 - 728*zeta^3 - 1241*zeta^2
+ 1085*zeta + 679)*q^500 + 1/7*(13*zeta^5 + 58*zeta^4 - 112*zeta^3 - 209*zeta^2 
+ 231*zeta + 49)*q^501 + 1/7*(-46*zeta^5 + 77*zeta^4 + 185*zeta^3 - 461*zeta^2 -
326*zeta + 323)*q^502 + 1/14*(-288*zeta^5 - 90*zeta^4 + 1377*zeta^3 + 276*zeta^2
- 1470*zeta - 354)*q^503 + 1/14*(-78*zeta^5 + 65*zeta^4 + 351*zeta^3 - 
260*zeta^2 - 377*zeta + 260)*q^504 + 1/14*(195*zeta^5 + 65*zeta^4 - 916*zeta^3 -
128*zeta^2 + 1001*zeta - 195)*q^505 + 1/14*(-115*zeta^5 - 20*zeta^4 + 470*zeta^3
+ 22*zeta^2 - 308*zeta - 38)*q^506 + 1/14*(-658*zeta^5 - 203*zeta^4 + 
2731*zeta^3 + 424*zeta^2 - 1897*zeta - 180)*q^508 + 1/14*(-3*zeta^5 + 7*zeta^4 +
55*zeta^3 - 49*zeta^2 - 206*zeta + 27)*q^509 + 1/14*(-60*zeta^5 + 31*zeta^4 + 
287*zeta^3 - 73*zeta^2 - 288*zeta - 12)*q^510 + 1/14*(-123*zeta^5 + 6*zeta^4 + 
751*zeta^3 + 29*zeta^2 - 1235*zeta - 477)*q^511 + 1/14*(-52*zeta^5 - 37*zeta^4 +
103*zeta^3 - 16*zeta^2 + 189*zeta - 7)*q^512 + 1/14*(-106*zeta^5 - 99*zeta^4 + 
611*zeta^3 + 439*zeta^2 - 818*zeta - 415)*q^513 + 1/14*(116*zeta^5 + 385*zeta^4 
- 815*zeta^3 - 1571*zeta^2 + 1220*zeta + 829)*q^514 + 1/14*(72*zeta^5 + 
201*zeta^4 - 137*zeta^3 - 649*zeta^2 - 506*zeta + 459)*q^515 + 1/14*(-12*zeta^5 
+ 33*zeta^4 + 130*zeta^3 - 62*zeta^2 - 315*zeta - 160)*q^516 + 1/14*(4*zeta^5 + 
85*zeta^4 - 8*zeta^3 - 310*zeta^2 - 79*zeta + 260)*q^517 + 1/14*(142*zeta^5 + 
110*zeta^4 - 801*zeta^3 - 341*zeta^2 + 1205*zeta + 46)*q^518 + 1/7*(16*zeta^5 - 
52*zeta^4 - 24*zeta^3 + 200*zeta^2 - 84*zeta + 16)*q^519 + 1/14*(-452*zeta^5 - 
92*zeta^4 + 1889*zeta^3 + 174*zeta^2 - 1330*zeta - 172)*q^521 + 1/14*(-25*zeta^5
- 70*zeta^4 + 253*zeta^3 + 259*zeta^2 - 613*zeta - 160)*q^522 + 1/14*(146*zeta^5
- 61*zeta^4 - 608*zeta^3 + 391*zeta^2 + 596*zeta - 636)*q^523 + 1/14*(117*zeta^5
+ 30*zeta^4 - 634*zeta^3 - 99*zeta^2 + 889*zeta + 293)*q^524 + 1/14*(-47*zeta^5 
- 87*zeta^4 + 210*zeta^3 + 285*zeta^2 - 158*zeta - 167)*q^525 + 
1/14*(-158*zeta^5 - 214*zeta^4 + 939*zeta^3 + 930*zeta^2 - 1256*zeta - 
743)*q^526 + 1/14*(113*zeta^5 + 135*zeta^4 - 677*zeta^3 - 564*zeta^2 + 967*zeta 
+ 432)*q^527 + 1/14*(zeta^5 + 6*zeta^4 - 23*zeta^3 - 34*zeta^2 + 62*zeta + 
16)*q^528 + 1/7*(78*zeta^5 + 69*zeta^4 - 292*zeta^3 - 164*zeta^2 + 119*zeta - 
66)*q^529 + 1/14*(-130*zeta^5 + 54*zeta^4 + 598*zeta^3 - 177*zeta^2 - 587*zeta +
112)*q^530 + 1/14*(-153*zeta^5 - 88*zeta^4 + 875*zeta^3 + 221*zeta^2 - 1401*zeta
+ 42)*q^531 + 1/14*(-511*zeta^5 - 175*zeta^4 + 2236*zeta^3 + 516*zeta^2 - 
1799*zeta - 218)*q^532 + 1/14*(61*zeta^5 - 4*zeta^4 - 217*zeta^3 + 68*zeta^2 + 
70*zeta + 6)*q^534 + 1/14*(39*zeta^5 - 46*zeta^4 - 34*zeta^3 + 200*zeta^2 - 
348*zeta - 216)*q^535 + 1/14*(10*zeta^5 - 36*zeta^4 - 6*zeta^3 + 261*zeta^2 + 
37*zeta - 456)*q^536 + 1/14*(54*zeta^5 + 19*zeta^4 - 206*zeta^3 - 56*zeta^2 + 
69*zeta - 38)*q^537 + 1/14*(4*zeta^5 + 18*zeta^4 + 16*zeta^3 - 55*zeta^2 - 
121*zeta + 46)*q^538 + 1/14*(30*zeta^5 + 55*zeta^4 - 184*zeta^3 - 237*zeta^2 + 
244*zeta + 170)*q^539 + 1/14*(-131*zeta^5 - 11*zeta^4 + 693*zeta^3 + 110*zeta^2 
- 861*zeta - 378)*q^540 + 1/14*(123*zeta^5 - 6*zeta^4 - 399*zeta^3 + 381*zeta^2 
+ 237*zeta - 264)*q^541 + 1/14*(102*zeta^5 + 40*zeta^4 - 521*zeta^3 - 114*zeta^2
+ 662*zeta + 192)*q^542 + 1/14*(-146*zeta^5 - 92*zeta^4 + 606*zeta^3 + 
215*zeta^2 - 441*zeta + 40)*q^543 + 1/14*(200*zeta^5 + 93*zeta^4 - 1066*zeta^3 -
212*zeta^2 + 1531*zeta - 121)*q^544 + 1/7*(34*zeta^5 + 19*zeta^4 - 183*zeta^3 - 
96*zeta^2 + 217*zeta + 36)*q^545 + 1/14*(509*zeta^5 + 164*zeta^4 - 2223*zeta^3 -
480*zeta^2 + 1778*zeta + 222)*q^547 + 1/7*(66*zeta^5 - 2*zeta^4 - 236*zeta^3 + 
44*zeta^2 + 58*zeta - 138)*q^548 + 1/14*(98*zeta^5 - 78*zeta^4 - 544*zeta^3 + 
3*zeta^2 + 573*zeta + 512)*q^549 + 1/14*(99*zeta^5 + 130*zeta^4 - 372*zeta^3 - 
293*zeta^2 + 199*zeta - 81)*q^550 + 1/14*(-53*zeta^5 - 10*zeta^4 + 141*zeta^3 - 
123*zeta^2 + 25*zeta + 76)*q^551 + 1/14*(-35*zeta^5 + 17*zeta^4 + 180*zeta^3 - 
60*zeta^2 - 239*zeta - 47)*q^552 + 1/14*(-147*zeta^5 - 232*zeta^4 + 885*zeta^3 +
1007*zeta^2 - 1171*zeta - 766)*q^553 + 1/14*(-5*zeta^5 + 145*zeta^4 + 10*zeta^3 
- 670*zeta^2 - 205*zeta + 445)*q^554 + 1/14*(-42*zeta^5 - 41*zeta^4 + 173*zeta^3
+ 96*zeta^2 - 131*zeta + 4)*q^555 + 1/2*(42*zeta^5 - 10*zeta^4 - 190*zeta^3 + 
37*zeta^2 + 179*zeta - 32)*q^556 + 1/14*(-170*zeta^5 - 5*zeta^4 + 647*zeta^3 - 
79*zeta^2 - 302*zeta + 325)*q^557 + 1/14*(-366*zeta^5 - 109*zeta^4 + 1610*zeta^3
+ 334*zeta^2 - 1309*zeta - 176)*q^558 + 1/14*(-74*zeta^5 - 57*zeta^4 + 
426*zeta^3 + 286*zeta^2 - 553*zeta - 88)*q^560 + 1/14*(12*zeta^5 - 16*zeta^4 - 
79*zeta^3 + 93*zeta^2 + 193*zeta - 72)*q^561 + 1/14*(-90*zeta^5 + 56*zeta^4 + 
422*zeta^3 - 173*zeta^2 - 433*zeta + 88)*q^562 + 1/14*(-141*zeta^5 - 46*zeta^4 +
743*zeta^3 + 139*zeta^2 - 997*zeta - 311)*q^563 + 1/14*(-zeta^5 - 21*zeta^4 + 
90*zeta^3 + 135*zeta^2 - 274*zeta - 61)*q^564 + 1/14*(-120*zeta^5 + 19*zeta^4 + 
621*zeta^3 - 17*zeta^2 - 764*zeta - 299)*q^565 + 1/7*(3*zeta^5 - 92*zeta^4 + 
41*zeta^3 + 345*zeta^2 - 137*zeta - 76)*q^566 + 1/14*(30*zeta^5 - 39*zeta^4 - 
199*zeta^3 + 211*zeta^2 + 470*zeta - 177)*q^567 + 1/14*(-363*zeta^5 - 210*zeta^4
+ 1624*zeta^3 + 541*zeta^2 - 1503*zeta - 223)*q^568 + 1/14*(90*zeta^5 - 
23*zeta^4 - 334*zeta^3 + 305*zeta^2 + 312*zeta - 660)*q^569 + 1/14*(-71*zeta^5 -
36*zeta^4 + 370*zeta^3 + 92*zeta^2 - 502*zeta + 34)*q^570 + 1/14*(226*zeta^5 + 
137*zeta^4 - 1098*zeta^3 - 526*zeta^2 + 1113*zeta + 136)*q^571 + 
1/14*(-96*zeta^5 - 73*zeta^4 + 364*zeta^3 + 142*zeta^2 - 189*zeta + 36)*q^573 + 
1/2*(-5*zeta^5 - 3*zeta^4 + 16*zeta^3 + 12*zeta^2 + 9*zeta + 1)*q^574 + 
1/14*(-14*zeta^5 + 12*zeta^4 + 109*zeta^3 + 90*zeta^2 - 114*zeta - 320)*q^575 + 
1/14*(-222*zeta^5 - 244*zeta^4 + 803*zeta^3 + 562*zeta^2 - 274*zeta + 244)*q^576
+ 1/14*(129*zeta^5 - 64*zeta^4 - 469*zeta^3 + 634*zeta^2 + 512*zeta - 450)*q^577
+ 1/14*(-73*zeta^5 - 224*zeta^4 + 501*zeta^3 + 921*zeta^2 - 733*zeta - 
508)*q^578 + 1/7*(17*zeta^5 - 35*zeta^4 - 60*zeta^3 + 108*zeta^2 + 5*zeta + 
53)*q^579 + 1/14*(-102*zeta^5 - 112*zeta^4 + 248*zeta^3 + 169*zeta^2 + 269*zeta 
- 132)*q^580 + 1/14*(282*zeta^5 + 82*zeta^4 - 1445*zeta^3 - 258*zeta^2 + 
1820*zeta + 540)*q^581 + 1/14*(-48*zeta^5 + 83*zeta^4 + 263*zeta^3 - 191*zeta^2 
- 322*zeta - 44)*q^582 + 1/14*(43*zeta^5 - 44*zeta^4 - 211*zeta^3 + 247*zeta^2 +
357*zeta - 218)*q^583 + 1/14*(157*zeta^5 + 27*zeta^4 - 499*zeta^3 + 142*zeta^2 +
21*zeta - 62)*q^584 + 1/14*(616*zeta^5 + 147*zeta^4 - 2558*zeta^3 - 278*zeta^2 +
1771*zeta + 204)*q^586 + 1/14*(-82*zeta^5 + 43*zeta^4 + 48*zeta^3 - 162*zeta^2 +
923*zeta + 293)*q^587 + 1/14*(-36*zeta^5 + 8*zeta^4 + 171*zeta^3 - 5*zeta^2 - 
161*zeta - 40)*q^588 + 1/14*(-72*zeta^5 - 133*zeta^4 + 168*zeta^3 + 290*zeta^2 +
227*zeta + 264)*q^589 + 1/14*(-52*zeta^5 + 150*zeta^4 + 188*zeta^3 - 815*zeta^2 
- 389*zeta + 554)*q^590 + 1/14*(64*zeta^5 - 335*zeta^3 - 34*zeta^2 + 410*zeta + 
181)*q^591 + 1/14*(-9*zeta^5 - 41*zeta^4 + 72*zeta^3 + 160*zeta^2 - 125*zeta - 
65)*q^592 + 1/7*(-29*zeta^5 - 153*zeta^4 + 86*zeta^3 + 601*zeta^2 + 204*zeta - 
401)*q^593 + 1/14*(-135*zeta^5 - 146*zeta^4 + 523*zeta^3 + 337*zeta^2 - 303*zeta
+ 79)*q^594 + 1/14*(-114*zeta^5 + 48*zeta^4 + 523*zeta^3 - 162*zeta^2 - 514*zeta
+ 112)*q^595 + 1/14*(-135*zeta^5 - 78*zeta^4 + 750*zeta^3 + 204*zeta^2 - 
1140*zeta + 36)*q^596 + 1/14*(173*zeta^5 + 122*zeta^4 - 810*zeta^3 - 414*zeta^2 
+ 770*zeta + 66)*q^597 + 1/14*(-271*zeta^5 - 122*zeta^4 + 1313*zeta^3 + 
508*zeta^2 - 1316*zeta - 194)*q^599 + 1/14*(43*zeta^5 + 77*zeta^4 - 261*zeta^3 -
301*zeta^2 + 372*zeta + 145)*q^600 + 1/14*(-18*zeta^5 - 3*zeta^4 + 33*zeta^3 - 
132*zeta^2 - 21*zeta + 372)*q^601 + 1/14*(285*zeta^5 + 257*zeta^4 - 1158*zeta^3 
- 609*zeta^2 + 804*zeta - 59)*q^602 + 1/14*(71*zeta^5 + 122*zeta^4 - 221*zeta^3 
- 340*zeta^2 - 84*zeta + 224)*q^603 + 1/14*(292*zeta^5 + 172*zeta^4 - 
1631*zeta^3 - 810*zeta^2 + 2142*zeta + 1001)*q^604 + 1/14*(124*zeta^5 - 
73*zeta^4 - 609*zeta^3 + 219*zeta^2 + 700*zeta + 259)*q^605 + 1/14*(49*zeta^5 - 
26*zeta^4 - 239*zeta^3 + 218*zeta^2 + 410*zeta - 176)*q^606 + 1/14*(18*zeta^5 - 
71*zeta^4 - 117*zeta^3 + 136*zeta^2 + 139*zeta + 84)*q^607 + 1/14*(242*zeta^5 - 
130*zeta^4 - 1146*zeta^3 + 349*zeta^2 + 1155*zeta - 64)*q^608 + 
1/14*(-129*zeta^5 - 31*zeta^4 + 494*zeta^3 + 66*zeta^2 - 197*zeta + 165)*q^609 +
1/14*(424*zeta^5 + 155*zeta^4 - 1889*zeta^3 - 496*zeta^2 + 1589*zeta + 
200)*q^610 + 1/14*(518*zeta^5 + 161*zeta^4 - 2179*zeta^3 - 372*zeta^2 + 
1575*zeta + 164)*q^612 + 1/14*(133*zeta^5 + 129*zeta^4 - 761*zeta^3 - 437*zeta^2
+ 1132*zeta + 121)*q^613 + 1/7*(-66*zeta^5 + 73*zeta^4 + 345*zeta^3 - 148*zeta^2
- 385*zeta - 92)*q^614 + 1/2*(-12*zeta^5 - 6*zeta^4 + 55*zeta^3 + 16*zeta^2 - 
54*zeta - 10)*q^615 + 1/14*(-7*zeta^5 - 73*zeta^4 + 110*zeta^3 + 352*zeta^2 - 
209*zeta - 205)*q^616 + 1/14*(8*zeta^5 + 163*zeta^4 - 103*zeta^3 - 697*zeta^2 + 
92*zeta + 369)*q^617 + 1/14*(68*zeta^5 + 57*zeta^4 - 390*zeta^3 - 253*zeta^2 + 
526*zeta + 250)*q^618 + 1/14*(26*zeta^5 + 104*zeta^4 - 68*zeta^3 - 385*zeta^2 - 
165*zeta + 260)*q^619 + 1/14*(111*zeta^5 - 13*zeta^4 - 660*zeta^3 - 11*zeta^2 + 
1036*zeta + 395)*q^620 + 1/14*(-10*zeta^5 - 26*zeta^4 - 24*zeta^3 - 103*zeta^2 +
55*zeta + 448)*q^621 + 1/14*(-289*zeta^5 - 243*zeta^4 + 1760*zeta^3 + 740*zeta^2
- 2983*zeta - 151)*q^622 + 1/14*(-76*zeta^5 - 117*zeta^4 + 583*zeta^3 + 
632*zeta^2 - 987*zeta - 160)*q^623 + 1/14*(157*zeta^5 + 69*zeta^4 - 871*zeta^3 -
422*zeta^2 + 1071*zeta + 202)*q^625 + 1/14*(-82*zeta^5 - 19*zeta^4 + 436*zeta^3 
- 2*zeta^2 - 655*zeta + 107)*q^626 + 1/14*(50*zeta^5 - 30*zeta^4 - 239*zeta^3 + 
78*zeta^2 + 244*zeta - 8)*q^627 + 1/14*(267*zeta^5 + 244*zeta^4 - 1062*zeta^3 - 
577*zeta^2 + 665*zeta - 101)*q^628 + 1/14*(-16*zeta^5 + 137*zeta^4 + 31*zeta^3 -
673*zeta^2 - 162*zeta + 443)*q^629 + 1/14*(-38*zeta^5 - 177*zeta^4 + 297*zeta^3 
+ 709*zeta^2 - 478*zeta - 325)*q^630 + 1/14*(49*zeta^5 - 213*zeta^4 - 110*zeta^3
+ 746*zeta^2 - 139*zeta + 19)*q^631 + 1/14*(13*zeta^5 - 188*zeta^4 + 23*zeta^3 +
916*zeta^2 + 78*zeta - 590)*q^632 + 1/14*(60*zeta^5 - 14*zeta^4 - 315*zeta^3 + 
8*zeta^2 + 386*zeta + 130)*q^633 + 1/7*(196*zeta^5 - 127*zeta^4 - 943*zeta^3 + 
325*zeta^2 + 972*zeta - 20)*q^634 + 1/14*(-30*zeta^5 - 103*zeta^4 + 395*zeta^3 +
369*zeta^2 - 1100*zeta - 249)*q^635 + 1/14*(-56*zeta^5 + 56*zeta^4 + 185*zeta^3 
- 226*zeta^2 - 14*zeta - 36)*q^636 + 1/14*(201*zeta^5 + 101*zeta^4 - 892*zeta^3 
- 308*zeta^2 + 749*zeta + 70)*q^638 + 1/14*(-229*zeta^5 + 11*zeta^4 + 925*zeta^3
- 207*zeta^2 - 668*zeta + 491)*q^639 + 1/14*(212*zeta^5 - 69*zeta^4 - 915*zeta^3
+ 393*zeta^2 + 878*zeta - 588)*q^640 + 1/14*(-87*zeta^5 - 152*zeta^4 + 
136*zeta^3 + 333*zeta^2 + 551*zeta + 453)*q^641 + 1/14*(-25*zeta^5 + 12*zeta^4 +
95*zeta^3 - 119*zeta^2 - 113*zeta + 86)*q^642 + 1/14*(108*zeta^5 + 295*zeta^4 - 
714*zeta^3 - 1235*zeta^2 + 994*zeta + 742)*q^643 + 1/14*(-123*zeta^5 + 8*zeta^4 
+ 644*zeta^3 + 25*zeta^2 - 805*zeta - 315)*q^644 + 1/14*(-31*zeta^5 - 82*zeta^4 
+ 59*zeta^3 + 259*zeta^2 + 211*zeta - 184)*q^645 + 1/14*(465*zeta^5 + 509*zeta^4
- 1725*zeta^3 - 1173*zeta^2 + 744*zeta - 425)*q^646 + 1/7*(-56*zeta^5 - 
30*zeta^4 + 228*zeta^3 + 48*zeta^2 - 170*zeta + 72)*q^647 + 1/14*(-14*zeta^5 - 
3*zeta^4 - 44*zeta^3 + 38*zeta^2 + 401*zeta + 19)*q^648 + 1/14*(379*zeta^5 + 
65*zeta^4 - 1614*zeta^3 - 148*zeta^2 + 1197*zeta + 178)*q^649 + 1/14*(152*zeta^5
+ 136*zeta^4 - 733*zeta^3 - 470*zeta^2 + 742*zeta + 52)*q^651 + 1/14*(47*zeta^5 
- 64*zeta^4 + 64*zeta^3 + 246*zeta^2 - 860*zeta - 286)*q^652 + 1/14*(20*zeta^5 +
131*zeta^4 - 12*zeta^3 - 290*zeta^2 - 129*zeta - 100)*q^653 + 1/7*(18*zeta^5 - 
3*zeta^4 - 71*zeta^3 + 23*zeta - 8)*q^654 + 1/14*(81*zeta^5 + 166*zeta^4 - 
163*zeta^3 - 464*zeta^2 - 448*zeta + 336)*q^655 + 1/2*(3*zeta^5 - 6*zeta^4 - 
13*zeta^3 + 23*zeta^2 + 15*zeta - 2)*q^656 + 1/14*(11*zeta^5 + 348*zeta^4 - 
242*zeta^3 - 1377*zeta^2 + 481*zeta + 501)*q^657 + 1/14*(10*zeta^5 - 71*zeta^4 -
105*zeta^3 + 312*zeta^2 + 379*zeta - 233)*q^658 + 1/14*(177*zeta^5 + 69*zeta^4 -
943*zeta^3 - 197*zeta^2 + 1304*zeta + 411)*q^659 + 1/14*(40*zeta^5 - 26*zeta^4 -
183*zeta^3 + 95*zeta^2 + 189*zeta - 80)*q^660 + 1/14*(-72*zeta^5 + 133*zeta^4 + 
46*zeta^3 - 588*zeta^2 + 635*zeta + 543)*q^661 + 1/14*(446*zeta^5 + 115*zeta^4 -
1911*zeta^3 - 296*zeta^2 + 1449*zeta + 188)*q^662 + 1/14*(-21*zeta^5 + 70*zeta^4
- 129*zeta^3 - 460*zeta^2 + 560*zeta + 106)*q^664 + 1/14*(-180*zeta^5 - 
53*zeta^4 + 838*zeta^3 + 88*zeta^2 - 903*zeta + 201)*q^665 + 1/14*(-166*zeta^5 +
133*zeta^4 + 823*zeta^3 - 304*zeta^2 - 873*zeta - 76)*q^666 + 1/14*(333*zeta^5 +
195*zeta^4 - 1559*zeta^3 - 501*zeta^2 + 1658*zeta + 343)*q^667 + (-7*zeta^5 + 
20*zeta^4 + 31*zeta^3 - 106*zeta^2 - 72*zeta + 74)*q^668 + 1/14*(-15*zeta^5 + 
72*zeta^4 + 42*zeta^3 - 279*zeta^2 - 21*zeta + 63)*q^669 + 1/14*(-44*zeta^5 + 
79*zeta^4 + 188*zeta^3 - 287*zeta^2 - 186*zeta - 20)*q^670 + 1/14*(-26*zeta^5 + 
94*zeta^4 + 158*zeta^3 - 461*zeta^2 - 447*zeta + 334)*q^671 + 1/14*(93*zeta^5 + 
103*zeta^4 - 423*zeta^3 - 237*zeta^2 + 462*zeta + 71)*q^672 + 1/14*(-104*zeta^5 
- 66*zeta^4 + 309*zeta^3 - 213*zeta^2 - 191*zeta + 1008)*q^673 + 1/14*(51*zeta^5
+ 62*zeta^4 - 280*zeta^3 - 230*zeta^2 + 362*zeta + 84)*q^674 + 1/14*(-36*zeta^5 
+ 33*zeta^4 + 73*zeta^3 - 192*zeta^2 + 119*zeta + 16)*q^675 + 1/7*(39*zeta^5 + 
78*zeta^4 - 277*zeta^3 - 348*zeta^2 + 448*zeta + 50)*q^677 + 1/14*(8*zeta^5 + 
10*zeta^4 + 21*zeta^3 - 59*zeta^2 - 225*zeta + 14)*q^678 + 1/14*(-74*zeta^5 + 
130*zeta^4 + 425*zeta^3 - 244*zeta^2 - 518*zeta - 216)*q^679 + 1/14*(69*zeta^5 +
104*zeta^4 - 201*zeta^3 - 231*zeta^2 - 81*zeta - 173)*q^680 + 1/14*(48*zeta^5 + 
45*zeta^4 - 181*zeta^3 - 77*zeta^2 + 110*zeta + 39)*q^681 + 1/14*(-80*zeta^5 - 
196*zeta^4 + 543*zeta^3 + 774*zeta^2 - 866*zeta - 389)*q^682 + 1/14*(109*zeta^5 
+ 30*zeta^4 - 604*zeta^3 - 141*zeta^2 + 839*zeta + 261)*q^683 + 1/14*(79*zeta^5 
- 154*zeta^4 - 257*zeta^3 + 920*zeta^2 + 380*zeta - 620)*q^684 + 
1/7*(-156*zeta^5 - 78*zeta^4 + 744*zeta^3 + 208*zeta^2 - 818*zeta - 188)*q^685 +
1/14*(-194*zeta^5 + 198*zeta^4 + 1015*zeta^3 - 366*zeta^2 - 1116*zeta - 
344)*q^686 + 1/14*(-127*zeta^5 - 138*zeta^4 + 659*zeta^3 + 509*zeta^2 - 763*zeta
- 160)*q^687 + 1/14*(-160*zeta^5 - 82*zeta^4 + 787*zeta^3 + 342*zeta^2 - 
812*zeta - 116)*q^688 + 1/14*(78*zeta^5 + 37*zeta^4 - 370*zeta^3 - 142*zeta^2 + 
357*zeta + 48)*q^690 + 1/14*(-366*zeta^5 - 94*zeta^4 + 1661*zeta^3 + 129*zeta^2 
- 1673*zeta + 450)*q^691 + 1/7*(232*zeta^5 - 64*zeta^4 - 1060*zeta^3 + 
208*zeta^2 + 1008*zeta - 128)*q^692 + 1/14*(-201*zeta^5 - 141*zeta^4 + 
835*zeta^3 + 349*zeta^2 - 600*zeta + 5)*q^693 + 1/14*(65*zeta^5 - 121*zeta^4 - 
214*zeta^3 + 730*zeta^2 + 313*zeta - 493)*q^694 + 1/2*(-8*zeta^5 + 39*zeta^4 + 
20*zeta^3 - 147*zeta^2 + 2*zeta + 24)*q^695 + 1/14*(-27*zeta^5 + 84*zeta^4 + 
113*zeta^3 - 349*zeta^2 - 171*zeta + 118)*q^696 + 1/2*(-5*zeta^5 - zeta^4 + 
28*zeta^3 - 4*zeta^2 - 49*zeta + 7)*q^697 + 1/14*(-123*zeta^5 - 164*zeta^4 + 
433*zeta^3 + 369*zeta^2 - 133*zeta + 159)*q^698 + 1/14*(22*zeta^5 + 29*zeta^4 - 
63*zeta^3 - 8*zeta^2 + 23*zeta - 172)*q^699 + 1/14*(47*zeta^5 + 104*zeta^4 - 
398*zeta^3 - 384*zeta^2 + 862*zeta + 218)*q^700 + 1/14*(194*zeta^5 + 178*zeta^4 
- 927*zeta^3 - 602*zeta^2 + 924*zeta + 56)*q^701 + O(q^702)] ;
              P_Q<[x]> := ProjectiveSpace(Rationals(), 2);
              X_13C3 := Curve(P_Q, [ PolynomialRing(RationalField(), 3) |
x[1]^4 + 103/4*x[1]^3*x[2] - 3*x[1]^3*x[3] - 149/4*x[1]^2*x[2]^2 + 
1923/4*x[1]^2*x[2]*x[3] - 242*x[1]^2*x[3]^2 - 11589/8*x[1]*x[2]^3 + 
40747/8*x[1]*x[2]^2*x[3] - 3431*x[1]*x[2]*x[3]^2 + 1139/2*x[1]*x[3]^3 - 
54027/16*x[2]^4 + 167735/16*x[2]^3*x[3] - 6875*x[2]^2*x[3]^2 + 484*x[2]*x[3]^3 +
759/2*x[3]^4
]);
