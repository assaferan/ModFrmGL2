procedure Test_NotRealType()
    printf "Testing example of a group not of real type... ";
// tt := Cputime();
    gens := [[ 7, 0, 0, 7 ],[ 2, 3, 3, 5 ],[ 0, 7, 7, 7 ],
	     [ 3, 0, 0, 3 ],[ 4, 7, 7, 3 ]];
    N := 8;
    H_N := sub<GL(2,Integers(N)) | gens>;
    H := PSL2Subgroup(H_N);
    
    M := ModularSymbols(H, 2, Rationals(), 0);
    S := CuspidalSubspace(M);
    assert &and[IsScalar(HeckeOperator(S,p)) : p in PrimesUpTo(100)];
    assert HeckeOperator(S,97)[1,1] eq 18;
// Cputime(tt);
end procedure;

Test_NotRealType();
