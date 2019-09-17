freeze;

grp := function(n, q)
    r := (q-1) div n;
    a := Integers()!(PrimitiveElement(GF(q)) ^ r);
    assert Modorder(a, q) eq n;
    b := n;
    repeat
	d := GCD(r, n);
	b *:= d;
	r div:= d;
    until d eq 1;
    fn := Factorization(n);
    fb := Factorization(b);
    if n eq 1 then ngens := 1; else
	ngens := &+[t[2]:t in fn] + &+[t[2]:t in fb] + 1;
    end if;
    F := FreeGroup(ngens);
    rels := [];
    gen := 0;
    for t in fn do
	for i := 1 to t[2] do
	    gen +:= 1;
	    Append(~rels, F.gen^t[1] = F.(gen+1));
	end for;
    end for;
    for t in fb do
	for i := 1 to t[2] do
	    gen +:= 1;
	    if gen lt ngens - 1 then
		Append(~rels, F.gen^t[1] = F.(gen+1));
	    else
		Append(~rels, F.gen^t[1] = F.0);
	    end if;
	end for;
    end for;
    Append(~rels, F.ngens^q = F.0);
    gen := 0;
    for t in fn do
	for i := 1 to t[2] do
	    gen +:= 1;
	    Append(~rels, F.ngens^F.gen = F.ngens^a);
	    a := Modexp(a, t[1], q);
	end for;
    end for;
    G := quo<F|rels:Class := "PolycyclicGroup">;
    return G, b;
end function;

chtr_with_schur := function(n, q)
    G, b := grp(n, q);
    N := Sylow(G, q);
    C := Centralizer(G, N);
    nq := b*q;
    // assert #C eq nq;
    // assert IsCyclic(C);
    c := &* AbelianBasis(C);
    // assert Order(c) eq #C;
    cm := ClassMap(C);
    z := RootOfUnity(nq, CyclotomicField(nq:Sparse:=true));
    lambda := [Parent(z)|];
    zi := Parent(z)!1;
    ci := C!1;
    for i := 1 to nq do
	zi := zi*z;
	ci := ci*c;
	lambda[cm(ci)] := zi;
    end for;
    lambda := CharacterRing(C)!lambda;
    AssertAttribute(lambda, "IsCharacter", true);
    chi := Induction(lambda, G);
    // assert Norm(chi) eq 1;
    // fl, x := HasAttribute(chi, "IsCharacter");
    // assert fl and x;
    // AssertAttribute(chi, "IsCharacter", true);
    AssertAttribute(chi, "IsIrreducible", true);
    return chi, G;
end function;

intrinsic SchurIndexGroup(n::RngIntElt:Prime := 0) -> GrpPC
{A group having an irreducible character with Schur index n}

    require n ge 1: "n must be positive";

    if n eq 1 then
	G := SmallGroup(1,1);
	return G;
    end if;

    if Prime cmpeq 0 then
	p := 1;
	k := 0;
	repeat
	    p +:= n;
	    k +:= 1;
	until GCD(n,k) eq 1 and IsPrime(p);
    else
	p := Prime;
    end if;
    G := grp(n, p);
    return G;

end intrinsic;

intrinsic CharacterWithSchurIndex(n::RngIntElt:Prime := 0) -> AlgChtrElt, GrpPC
{A character with Schur index n}

    require n ge 1: "n must be positive";

    if n eq 1 then
	G := SmallGroup(1,1);
	x := CharacterRing(G) ! 1;
	return x, G;
    end if;

    if Prime cmpeq 0 then
	p := 1;
	k := 0;
	repeat
	    p +:= n;
	    k +:= 1;
	until GCD(n,k) eq 1 and IsPrime(p);
    else
	p := Prime;
    end if;
    x, G := chtr_with_schur(n, p);
    return x, G;

end intrinsic;

intrinsic CharacterWithSchurIndex(n::RngIntElt, p::RngIntElt) -> AlgChtrElt, GrpPC
{A character with Schur index n over the p-adic numbers Q_p}

    require n ge 1: "n must be positive";
    require IsPrime(p): "p must be prime";
    require n eq 1 or n eq 2 and p eq 2 or p mod n eq 1:
	"Must have either n divide p-1 or n = p = 2";

    if n eq 1 then
	G := SmallGroup(1,1);
	x := CharacterRing(G) ! 1;
	return x, G;
    end if;

    if n eq 2 and p eq 2 then
	G := SmallGroup(8,4);
	x := CharacterRing(G) ! [ 2, -2, 0, 0, 0 ];
	x`IsCharacter := true;
	x`IsIrreducible := true;
	x`Schur := -1;
	return x, G;
    end if;

    x, G := chtr_with_schur(n, p);
    return x, G;

end intrinsic;

intrinsic CharacterWithSchurIndex(n::RngIntElt, k::FldAlg) -> AlgChtrElt, GrpPC
{A character with Schur index n over the field k}

    require n ge 1: "n must be positive";

    if n eq 1 then
	G := SmallGroup(1,1);
	x := CharacterRing(G) ! 1;
	return x, G;
    end if;

    F := AbsoluteField(Compositum(k, CyclotomicField(n)));
    f := DefiningPolynomial(F);
    d := Degree(f);
    assert d eq Degree(F);
    if Coefficient(f, d) ne 1 or
	    not CanChangeUniverse(Coefficients(f), Integers()) 
    then
	delete f;
	M := MaximalOrder(F);
	z := PrimitiveElement(M);
	f := MinimalPolynomial(z);
	assert Degree(f) eq d and Coefficient(f, d) eq 1 and
	    CanChangeUniverse(Coefficients(f), Integers());
	delete z, M;
    end if;
    delete F;

    p := 1;
    repeat p +:= n;
	if IsPrime(p) and
	    exists{t: t in Roots(PolynomialRing(GF(p))!f) | t[2] eq 1} 
	then
	    break;
	end if;
    until false;
    delete f;

    x, G := chtr_with_schur(n, p);
    return x, G;

end intrinsic;

