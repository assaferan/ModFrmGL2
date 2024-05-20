import "test_utils.m" : MakeGroupCopy, RandomSpace;

procedure Test_Eigenforms_Single(M)
// t := Cputime();
    D := Decomposition(NewSubspace(CuspidalSubspace(M)),23);
//  D;
    for i in [1..#D] do
	if IsIrreducible(D[i]) and IsCuspidal(D[i]) then
            f := qEigenform(D[i],7);
        end if;
    end for;
// printf " \ttime  = %os\n\n",Cputime(t);
end procedure;

procedure Test_Eigenforms(numchecks)
  printf "Computes a bunch of eigenforms. ";
  printf "The only check is that the program doesn't bomb... ";
  printf "(k, N, eps) = ";
   for i in [1..numchecks] do
       M := RandomSpace();
       Test_Eigenforms_Single(M);
       //if Evaluate(DirichletCharacter(M), -1) eq 1 then
       Test_Eigenforms_Single(MakeGroupCopy(M));
       //end if;
   end for;
end procedure;

Test_Eigenforms(5);
