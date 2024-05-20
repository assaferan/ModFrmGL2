procedure Test_IsotypicDecomposition()
  printf "Testing dimensions of isotypic components... ";
  H_N := sub<GL(2,Integers(11^2))|[[1,61,45,1],[10,2,62,111]]>;
  H := PSL2Subgroup(H_N);
  M := ModularSymbols(H, 2, Rationals(), 0);
  S := CuspidalSubspace(M);
  assert IsotypicDimensionDecomposition(S) eq
    [ <1, 2>, <5, 2>, <5, 2>, <35, 2>, <35, 2>, <50, 2>,
	<90, 2>, <90, 2>, <200, 2> ];
  H := FakeGamma(22,0);
  M := ModularSymbols(H, 2, Rationals(), 0);
  S := CuspidalSubspace(M);
  assert IsotypicDimensionDecomposition(S) eq [<1,4>];
  assert IsotypicDimensionDecomposition(S : Proof) eq [<2,2>];
  printf "Testing issue #5... ";
  H_N := sub<GL(2,Integers(25))|[[11,19,9,14],[4,16,7,22]]>;
  H := PSL2Subgroup(H_N);
  M := ModularSymbols(H, 2, Rationals(), 0);
  S := CuspidalSubspace(M);
  assert IsotypicDimensionDecomposition(S) eq
     [<2, 2>, <2, 2>, <2, 2>, <2, 2>, <2, 4>, <2, 4>, <4, 2>, <8, 2>, <8, 2>];
end procedure;

Test_IsotypicDecomposition();
