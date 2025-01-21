procedure Test_Issue29()
  printf "Testing issue #29";
  P<x,y,z,u,v,w> := ProjectiveSpace(Rationals(),5);
  gens := [[4,0,0,3], [0,1,1,0], [2,0,0,2]];
  N := 11;
  H_N := sub<GL(2, Integers(N)) | gens>;
  H := PSL2Subgroup(H_N);
  M := ModularSymbols(H, 2, Rationals(), 0);
  S := CuspidalSubspace(M);
  XD10nred<[x]>, basisD10 := ModularCurve(H);
  assert IsCurve(XD10nred);
  assert not IsHyperelliptic(XD10nred);
end procedure;

Test_Issue29();
