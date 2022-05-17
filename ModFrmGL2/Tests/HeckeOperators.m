import "test_utils.m" : MakeGroupCopy, RandomSpace;

/* Compute two random Hecke operators on a random space, and
   verify that they commute. */

procedure Test_HeckeOperatorsCommute_Single(M)
    t := Cputime();
    n := Random(2,17);
    m := Random(2,17);
    T1:= HeckeOperator(M,n);
    T2:= HeckeOperator(M,m);
//printf "n = %o, m = %o\n", n, m;
    printf "(%o, %o) ", n, m;
    assert T1*T2 eq T2*T1;
// printf " time = %os\n", Cputime(t);
end procedure;

procedure Test_HeckeOperatorsCommute(numcheck)
   printf "Hecke operators commute test... (n,m) =  ";
   for i in [1..numcheck] do
      M := RandomSpace();
      Test_HeckeOperatorsCommute_Single(M);
      //if Evaluate(DirichletCharacter(M),-1) eq 1 then
	  Test_HeckeOperatorsCommute_Single(MakeGroupCopy(M));
      //end if;
   end for;
end procedure;

Test_HeckeOperatorsCommute(5);
