freeze;

intrinsic WriteOverSmallerField(G::GrpMat, F::FldFin) -> GrpMat, Map
{Given a group G of d by d matrices over a finite field E having degree e
and a subfield F of E having degree f, write the matrices of G as
d*e/f by d*e/f matrices over F and return the group and the isomorphism};

    K := CoefficientRing(G);
    require Type(K) eq FldFin: "Argument 1 is not over a finite field";
    require PrimeField(K) cmpeq PrimeField(F): "Arguments are not compatible";

    d := Degree(G);
    A := MatrixRing(K, d);
    B, f := MatrixRing(A, F);

    H := MatrixGroup<Degree(K, F) * d, F | [f(G.i): i in [1 .. Ngens(G)]]>;
    g := map<G -> Generic (H) | x :-> f(x)>;
    return H, g;
end intrinsic;

intrinsic WriteOverSmallerField(M::ModGrp, F::FldFin) -> ModGrp, Map
{Given a module of dimension d over a finite field E having degree e
and a subfield F of E having degree f, write M as a module MM of dimension
d*e/f and return the module and the isomorphism M -> MM};

    K := BaseRing(M);
    require Type(K) eq FldFin: "Argument 1 is not over a finite field";
    require PrimeField(K) cmpeq PrimeField(F): "Arguments are not compatible";

    G := Group(M);
    d := Dimension(M);
    A := MatrixRing(K, d);
    B, f := MatrixRing(A, F);
    V := VectorSpace(M);
    W, g := VectorSpace(V,F);

    mats := [B | f(ActionGenerator(M,i)) : i in [1 .. Ngens(G)]];
    MM := GModule(G,mats);
    m := map<M -> MM | x :-> MM!(g(V!x))>;
    return MM, m;
end intrinsic;
