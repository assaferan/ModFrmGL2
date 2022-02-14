In order to load the package, write the following line in your MAGMA interpreter:
> AttachSpec("ModFrmGL2.spec");

Here are some usage examples:

1. a subgroup of GL2(ZZ/ N ZZ) given by generators 

> gens := [[1,3,12,3],[1,1,12,7],[1,3,0,3],[1,0,2,3]];
> N := 16;
> H_N := sub<GL(2,Integers(N)) | gens>;
> H := PSL2Subgroup(H_N);
> H := RealTypeConjugate(H);
> M := ModularSymbols(H, 2, Rationals(), 0);
> S := CuspidalSubspace(M);
> D := Decomposition(S, HeckeBound(S));
> qEigenform(D[1],100);
q - 4*q^5 - 3*q^9 - 4*q^13 - 2*q^17 + 11*q^25 - 4*q^29 + 
12*q^37 - 10*q^41 + 12*q^45 - 7*q^49 - 4*q^53 + 12*q^61 + 
16*q^65 - 6*q^73 + 9*q^81 + 8*q^85 + 10*q^89 - 18*q^97 + O(q^100)

2. Non-split Cartan
> G := GammaNSplus(13);
> M := ModularSymbols(G, 2, Rationals(), 0);
> S := CuspidalSubspace(M);
> D := Decomposition(S, HeckeBound(S));
> qEigenform(D[1], 20);
q + a*q^2 + (-a^2 - 2*a)*q^3 + (a^2 - 2)*q^4 + 
(a^2 + 2*a - 2)*q^5 + (-a - 1)*q^6 + (a^2 - 3)*q^7 + 
(-2*a^2 - 3*a + 1)*q^8 + (a^2 + 3*a - 1)*q^9 + (-a      
+ 1)*q^10 + (-a^2 - 2*a - 2)*q^11 + (a^2 + 3*a)*q^12 + 
(-2*a^2 - 2*a + 1)*q^14 + (a^2 + a - 2)*q^15 + 
(-a^2 - a + 2)*q^16 + (-a^2 + a + 2)*q^17 + 
(a^2 + 1)*q^18 + (-2*a^2 - a + 2)*q^19 + O(q^20)
> BaseRing(Parent($1));
Number Field with defining polynomial x^3 + 2*x^2 - x - 1 
over the Rational  Field

3. Exceptional subgroups
> p := 13;
> O := QuaternionOrder([1,i,j,k]);
> _, mp := pMatrixRing(O,p);
> S4tp := sub<GL(2,p) | [mp(1+s) : s in [i,j,k]] 
>  cat [mp(1-s) : s in [i,j,k]] cat [-1]>;
> H_S4 := sub<GL(2,Integers(p)) | Generators(S4tp)>;
> G_S4 := PSL2Subgroup(H_S4);
> G_S4 := RealTypeConjugate(G_S4);
> M := ModularSymbols(G_S4, 2, Rationals(), 0);
> S := CuspidalSubspace(M);
> D := Decomposition(S, HeckeBound(S));
> [*qEigenform(d,20) : d in D*];
[*
q + a*q^2 + (-a^2 - 2*a)*q^3 + (a^2 - 2)*q^4 + 
(a^2 + 2*a - 2)*q^5 + (-a - 1)*q^6 + (a^2 - 3)*q^7 + 
(-2*a^2 - 3*a + 1)*q^8 + (a^2 + 3*a - 1)*q^9 +
(-a + 1)*q^10 + (-a^2 - 2*a - 2)*q^11 + (a^2 + 3*a)*q^12 + 
(-2*a^2 - 2*a + 1)*q^14 + (a^2 + a - 2)*q^15 + 
(-a^2 - a + 2)*q^16 + (-a^2 + a + 2)*q^17 + 
(a^2 + 1)*q^18 + (-2*a^2 - a + 2)*q^19 + O(q^20)
*]
> BaseRing(Parent(qEigenform(D[1])));
Number Field with defining polynomial x^3 + 2*x^2 - x - 1 
over the Rational  Field

