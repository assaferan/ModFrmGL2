
H := sub<GL(2,Integers(168))|[[1,0,56,1],[1,0,114,1],[1,56,0,1],[3,56,2,73],[5,28,2,23],[11,28,2,53],[11,28,8,137],[13,84,114,13],[17,56,10,17],[57,56,112,113],[85,0,114,85],[121,0,114,25],[139,0,114,139]]>;

function get_decomposition_traces(H, B)
    H:=RealTypeConjugate(PSL2Subgroup(H));
    S:=CuspidalSubspace(ModularSymbols(H,2,Rationals(),0));
    D:=Decomposition(S,HeckeBound(S));
    T := [[Trace(a) : a in SystemOfEigenvalues(V, B : BadPrimes := false)] : V in D];
    return T;
end function;

T := get_decomposition_traces(H, 100);