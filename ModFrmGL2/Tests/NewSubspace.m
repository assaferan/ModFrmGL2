import "test_utils.m" : MakeGroupCopy, RandomSpaceWithTrivialCharacter;

/* Compute several random spaces of modular symbols with trivial
   character, and verify that the dimensions of their cuspidal new 
   subspaces agree with the dimensions computed using the standard 
   dimension formulas. */

procedure Test_DimensionNewSubspace_Single(M, N, k)
// t := Cputime();
    d := DimensionNewCuspFormsGamma0(N,k);
    assert 2*d eq Dimension(NewSubspace(CuspidalSubspace(M)));
//   printf " \tdim  = %o,    \t%os\n",
//    Dimension(NewSubspace(CuspidalSubspace(M))),Cputime(t);
end procedure;

procedure Test_DimensionNewSubspace(numcheck : base := Rationals())
   if Characteristic(base) ne 0 then
      return;
   end if;
   printf "Dimension of new subspace check. ";
   printf "(k,N) = ";
   for i in [1..numcheck] do
      M,N,k := RandomSpaceWithTrivialCharacter();
      Test_DimensionNewSubspace_Single(M, N, k);
      // This cannot work on the copy due to the differnet definition of new
   end for;
end procedure;

Test_DimensionNewSubspace(5);
