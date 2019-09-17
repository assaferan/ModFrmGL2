
intrinsic GeometricGaloisGroup(f::RngUPolElt[FldFunRat[FldRat]]) -> GrpPerm, RngUPolElt, GaloisData
{The geometric Galois group of f and the polynomial defining the constant field extension
fixed by the geometric Galois group};

    Sn := Sym(Degree(f));

    Ff := FunctionField(f);
    G, r, S := GaloisGroup(f);
//"GeometricGaloisGroup", G;
    prime := Prime(CoefficientRing(S`Ring));
    t := 0;
    repeat 
	G0, r0, S0 := GaloisGroup(Numerator(Specialization(f, t)) : Prime := prime);
	t +:= 1;
	conj, g1 := IsConjugate(Sn, G0, G);
    until conj;
    t1 := t - 1;
    F0 := NumberField(S0`f : Check := false);
//"GeometricGaloisGroup", t1;
    repeat 
	G1, r1, S1 := GaloisGroup(Numerator(Specialization(f, t)) : Prime := prime);
	t +:= 1;
	conj, g2 := IsConjugate(Sn, G1, G);
    until conj;
    t2 := t - 1;
    F1 := NumberField(S1`f : Check := false);
    assert t1 ne t2;
//"GeometricGaloisGroup", t2;

    G12, r12, S12 := GaloisGroup(Numerator(Specialization(f, t1))*Numerator(Specialization(f, t2)) : Prime := prime);
//"GeometricGaloisGroup", G12;

    assert #G^2 mod #G12 eq 0;
    index := #G^2 div #G12;

//"index ", index;
    assert #G mod index eq 0;
    ecf_deg := DegreeOfExactConstantField(Ff);
    assert #G mod ecf_deg eq 0;
    subgroups := NormalSubgroups(G : IndexLimit := index, OrderDividing := #G div ecf_deg);
//#G/ecf_deg;
//subgroups;
//[#x`subgroup : x in subgroups];

    g1 := g1^-1;
    g2 := g2^-1;
    geom := [];
    ecf := [];
    for X in subgroups do
	assert Numerator(#G/#X`subgroup) mod ecf_deg eq 0;
	K := GaloisSubgroup(S, X`subgroup);
	if CanChangeUniverse(Coefficients(K), Rationals()) or
	    DimensionOfExactConstantField(FunctionField(K)) eq Degree(K) then

	    assert Degree(K) le index;
	//    "found ECF?";
	    Append(~geom, X`subgroup);
	    Append(~ecf, K);
	    assert Degree(K) eq #G/#X`subgroup;
	end if;
    end for;

    if #geom gt 1 then
	geom := #geom[1] lt #geom[#geom] select geom[1] else geom[#geom];
	ecf := Degree(ecf[1]) gt Degree(ecf[#ecf]) select ecf[1] else ecf[#ecf];
	assert Degree(ecf) eq #G/#geom;
    else
	geom := geom[1];
	ecf := ecf[1];
    end if;
    return geom, ecf, S;
end intrinsic;

intrinsic GeometricGaloisGroup(f::RngUPolElt[RngUPol[FldRat]]) -> GrpPerm, SeqEnum, GaloisData
{The geometric Galois group of f};
    return GeometricGaloisGroup(Polynomial(FieldOfFractions(CoefficientRing(f)), f));
end intrinsic;

/*
Qt<t> := FunctionField(Q);
Qtx<x> := PolynomialRing(Qt);
K1 := FunctionField(x^3-2);
K2 := FunctionField(x^3-3*t+t-x);
K2 := ext<K1|DefiningPolynomial(K2)>;
Ka := RationalExtensionRepresentation(K2);
f := DefiningPolynomial(Ka);
time GeometricGaloisGroup(f);
secf := ext<Qt | x^6 + 78732>;
fact := Factorization(Polynomial(secf, f));
secf3 := ext<secf | Polynomial(secf, fact[1][1])>;
Degree(secf3, Qt);
DimensionOfExactConstantField(secf3);
ExactConstantField(secf3);
ExactConstantField(secf);
Factorization(Polynomial(secf3, fact[1][1]));
secf32 := ext<secf3 | $1[2][1] : Check := false>;
Degree(secf32, Qt);
DimensionOfExactConstantField(secf32);
Factorization(Polynomial(secf, f));
Factorization(Polynomial(secf32, $1[2][1]));
Factorization(Polynomial(secf32, $2[2][1]));


Qt<t> := FunctionField(Rationals());
P<x> := PolynomialRing(Qt);
F := FunctionField(x^2 + 2);
ExactConstantField(F);
ext<F | x^2 + t>;
RationalExtensionRepresentation($1);
f := DefiningPolynomial($1);
ExactConstantField($2);
GGG := GeometricGaloisGroup(f);

P<x> := PolynomialRing(Rationals());
P<y> := PolynomialRing(P);
f := y^6 + y + 2;
ExactConstantField(FunctionField(f));
GeometricGaloisGroup(f);
F := FunctionField(f);
_<yy> := PolynomialRing(F);
ext<F | yy^5 + F!x>;
ExactConstantField($1);
RationalExtensionRepresentation($2);
ff := DefiningPolynomial($1);
GGGff := GeometricGaloisGroup(ff);

Qt<t> := FunctionField(Rationals());
P<x> := PolynomialRing(Qt);
f := x^2 + t;
GaloisGroup(f);
GeometricGaloisGroup(f);
ExactConstantField(FunctionField(f));
f := x^2 + t + 1;
GaloisGroup(f);
GeometricGaloisGroup(f);
ExactConstantField(FunctionField(f));
f := x^4 + t + 1;
GaloisGroup(f);
GeometricGaloisGroup(f);

for d in [] do
    for i in [] do
	f := QtPolynomialWithGaloisGroup(d, i);
	TransitiveGroupIdentification(GeometricGaloisGroup(f));
    end for;
end for;

Find eg where geo != gal!@!!
Load Juergen's records 
*/
