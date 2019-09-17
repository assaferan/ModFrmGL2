freeze;

intrinsic InternalIndecomposableSummands(M::ModRng: EB := 0) -> []
{Internal}

    require Type(BaseRing(M)) eq FldFin: "Module not over finite field";

    vprint Decomposition: "Decompose:", M;

    if IsIrreducible(M) then
	vprint Decomposition: "Irreducible";
	return [M];
    end if;

//"InternalIndecomposableSummands of:"; M: Magma;

    K := BaseRing(M);
    d := Dimension(M);

    E := 0;

    if EB cmpne 0 then
	vprint Decomposition: "Endomorphism ring basis given";
	e := Nrows(EB);
	assert Ncols(EB) eq d*d;
	vprintf Decomposition: "Endomorphism ring dim: %o\n", e;
    elif 1 eq 1 then
	//a,b:=GetSeed();
	vprint Decomposition: "Get endomorphism ring basis";
	vtime Decomposition: EB := EndomorphismRingBasisMatrix(M);
	e := Nrows(EB);
	/*
	if e eq 0 then 
	    printf "SetSeed(%o, %o);\n", a, b;
	    printf "M := %m\n", M;
	    error "DIE";
	end if;
	*/
	assert Ncols(EB) eq d*d;
	vprintf Decomposition: "Endomorphism ring dim: %o\n", e;
    else
	vprint Decomposition: "Get endomorphism ring";
	vtime Decomposition: E := EndomorphismRing(M);
	vprint Decomposition: E;
	e := Dimension(E);
    end if;

    best_X := 0;
    best_cost := Infinity();

    vprint Decomposition: "Find best element"; vtime Decomposition:
    for i := 1 to 10 do
	if E cmpeq 0 then
	    X := Random(RSpace(K, e))*EB;
	    X := Matrix(d, Eltseq(X));
	else
	    X := Random(E);
	end if;
	fcp := FactoredCharacteristicPolynomial(X: Proof := false);
	if #fcp gt 1 then
	    cost := &+[(Degree(t[1])*t[2])^2: t in fcp];
	    vprint Decomposition: i, fcp, cost;
	    if cost lt best_cost then
		vprint Decomposition: "NEW BEST";
		best_X := X;
		best_cost := cost;
	    end if;
	elif fcp[1, 2] eq 1 and Degree(fcp[1, 1]) eq e then
	    vprint Decomposition: "Proven indecomposable via random elt";
	    return [M];
	end if;
    end for;

    X := best_X;
    if X cmpne 0 then
	fmp := FactoredMinimalPolynomial(X);
	vprint Decomposition: "fmp:", fmp;

	vprint Decomposition: "Get kernels";
	vtime Decomposition: k := [Kernel(Evaluate(t[1], X)^t[2]): t in fmp];

	vprint Decomposition: "Get submodules";
	vtime Decomposition: S := [sub<M|x>: x in k];
	vprint Decomposition: "Split:", S;

	IndentPush();
	SS := &cat[$$(M): M in S];
	Sort(~SS, func<x, y | Dimension(x) - Dimension(y)>);
	IndentPop();
	return SS;
    end if;

    if E cmpne 0 then
	EBM := Basis(E);
    else
	EBM := [Matrix(d, Eltseq(EB[i])): i in [1 .. e]];
    end if;

    vprint Decomposition: "Get reg rep";
    vtime Decomposition: rr := RegularRepresentation(EBM);
    delete EBM;

    MM := RModule(rr);
    vprint Decomposition: MM;

    vprint Decomposition: "Get Jacobson radical";
    vtime Decomposition: J := JacobsonRadical(MM);
    vprint Decomposition: J;

    Q := MM/J;
    vprint Decomposition: "Quotient:", Q;

    if IsIrreducible(Q) then
	vprint Decomposition: "Proven indecomposable via Jacobson radical";
	return [M];
    end if;

    vprint Decomposition: "Fail Jacobson radical test";
    return $$(M: EB := EB);

end intrinsic;
