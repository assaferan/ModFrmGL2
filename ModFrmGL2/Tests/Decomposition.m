import "test_utils.m" : MakeGroupCopy, RandomSpace;

procedure Test_Decomposition_Single(M)
    t := Cputime();
    D := Decomposition(M,13);
// D;
    for A in D do
      V := VectorSpace(A);
    end for;
// printf " \ttime  = %os\n\n",Cputime(t);
end procedure;

procedure Test_Decomposition(numchecks)
   printf "Computes a bunch of decompositions. ";
   printf "The only check is that the program doesn't bomb. ";
   printf "For decomposition to work at all, things must be working well... ";
   printf "(k, N, eps) = ";
   for i in [1..numchecks] do
      M := RandomSpace();
      Test_Decomposition_Single(M);
      //if Evaluate(DirichletCharacter(M),-1) eq 1 then
	  Test_Decomposition_Single(MakeGroupCopy(M));
      //end if;
      
   end for;

end procedure;

Test_Decomposition(5);
