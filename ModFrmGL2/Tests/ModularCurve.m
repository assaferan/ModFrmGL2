procedure Test_Curve(G)
    X<[x]> := ModularCurve(G);
    assert HasSurjectiveDeterminant(G);
    X<[x]> := ChangeRing(X, Rationals());
    assert Genus(X) eq Genus(G);
end procedure;

Test_Curve(Gamma0(11));
