function Test_Shimura(N)
    Z_N := Integers(N);
    U, phi := UnitGroup(Z_N);
    H := Random(Subgroups(U));
//    h_gens := [phi(g) : g in Generators(U_h`subgroup)];
//    all_gens := [phi(g) : g in Generators(U)];           
    t := Random(Divisors(N));
//    mat_gens := [[-1,0,0,-1],[1,t,0,1]] cat [[a,0,0,1] : a in h_gens]
//		cat [[1,0,0,d] : d in all_gens];
//    gamma := PSL2Subgroup(sub<GL(2, Integers(N)) | mat_gens>);
    gamma := GammaShimura(U, phi, H`subgroup, t);
//   M := ModularSymbols(gamma, 2, Rationals(), 0);
    M := ModularSymbols(gamma);
    S := CuspidalSubspace(M);
    // D := NewformDecomposition(S);
    D := Decomposition(S, HeckeBound(S));
    return D, S;
end function;

num_times := 5;
max_N := 10;
for i in [1..num_times] do
    N := Random(max_N);
    D, S := Test_Shimura(N);
end for;
