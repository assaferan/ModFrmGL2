import "test_utils.m" : MakeGroupCopy, RandomSpace;

/* Compute several random spaces of modular symbols, and verify
   that their dimensions agree with the dimensions computed using
   the standard dimension formulas. */

procedure Test_DimensionConsistency_GammaN_Single(N, k)
//  t := Cputime();
  M := ModularSymbols(CongruenceSubgroup(N), k);
  M1 := ModularSymbols(FakeGamma(N, "full"), k);
  // This wouldn't work when k is odd, since we need Gamma prime to
  // contain -1.
  // Test without characters
  //  M2 := ModularSymbols(my_Gamma(N, "full"), k, Rationals(), 0);
  assert Dimension(M) eq Dimension(M1);
  //  assert Dimension(M) eq Dimension(M2);
  S := CuspidalSubspace(M);
  S1 := CuspidalSubspace(M1);
  //  S2 := CuspidalSubspace(M2);
  assert Dimension(S) eq Dimension(S1);
  //  assert Dimension(S) eq Dimension(S2);
  // printf " \tdim  = %o,    \t%os\n",Dimension(CuspidalSubspace(M)),Cputime(t);
end procedure;

procedure Test_DimensionConsistency_Single(M, N, k, eps)
//    t := Cputime();
    d := DimensionCuspForms(eps,k);
    assert 2*d eq Dimension(CuspidalSubspace(M));
//    printf " \tdim  = %o,    \t%os\n",Dimension(CuspidalSubspace(M)),Cputime(t);
end procedure;

procedure Test_DimensionConsistency(numchecks : base := Rationals())
   printf "Dimension of cuspidal subspace test. ";
   printf "(k, N, eps) = ";
   if Characteristic(base) ne 0 then
      return;
   end if;

   for i in [1..numchecks] do
      M,N,k,eps := RandomSpace();
      Test_DimensionConsistency_Single(M, N, k, eps);
      M_copy := MakeGroupCopy(M);
      Test_DimensionConsistency_Single(M_copy, N, k, eps);
      // Testing Gamma(N)
      Test_DimensionConsistency_GammaN_Single(N,k);
   end for;
end procedure;

Test_DimensionConsistency(5);
