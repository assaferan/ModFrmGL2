procedure Test_Initialization()
    print "Testing slow initialization example...";
    HN := sub<GL(2,Integers(448))|[[32,277,239,170],[120,369,295,254],[212,429,227,378],[329,146,240,39],[353,278,166,401],[426,417,357,190]]>;
    H := PSL2Subgroup(HN);
    H := RealTypeConjugate(H);
    M := ModularSymbols(H,2,Rationals(),0);
    S := CuspidalSubspace(M);
end procedure;

procedure Test_CosetReps()
    print "Testing initialization given coset representatives...";
    HN := sub<GL(2,Integers(448))|[[32,277,239,170],[120,369,295,254],[212,429,227,378],[329,146,240,39],[353,278,166,401],[426,417,357,190]]>;
    cosets, find_cosets := Transversal(GL(2, Integers(448)), HN);
    H := PSL2Subgroup(HN);
    H := RealTypeConjugate(H);
    M := ModularSymbols(H,2,Rationals(),0);
    S := CuspidalSubspace(M);
end procedure;			  

Test_Initialization();
Test_CosetReps();
