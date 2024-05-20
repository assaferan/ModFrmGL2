import "test_utils.m" : MakeGroupCopy, RandomSpace;
import "ModSym/multichar.m" : MC_NewformDecompositionOfCuspidalSubspace;

procedure Test_NewformDecomposition_Single(M)
    t := Cputime();
    D := NewformDecomposition(CuspidalSubspace(M));
// D;
// printf " \ttime  = %os\n\n",Cputime(t);
end procedure;

procedure Test_NewformDecomposition(numchecks : base := Rationals())
   if Characteristic(base) ne 0 then
      return;
   end if;

   printf "Computes a bunch of NEWFORM decompositions. ";
   printf "The only check is that the program doesn't bomb. ";
   printf "For decomposition to work at all, things must be working well... ";
   printf "(k, N, eps) = ";

   for i in [1..numchecks] do
      M := RandomSpace();
      Test_NewformDecomposition_Single(M);
      //if Evaluate(DirichletCharacter(M),-1) eq 1 then
	  Test_NewformDecomposition_Single(MakeGroupCopy(M));
      //end if;
   end for;
end procedure;

procedure Test_NewformDecomp(N, char)
    printf "Testing NewformDecomposition of S_2(Gamma(N))... ";
    if (char) then
	M := ModularSymbols(FakeGamma(N, "full"));
    else
	M := ModularSymbols(FakeGamma(N, "full") ,2, Rationals(), 0);
    end if;
    S := CuspidalSubspace(M);
    D := NewformDecomposition(S);
    dims := [Dimension(d) : d in D];
    M0 := ModularSymbols(CongruenceSubgroup(N));
    if (N eq 1) or char then
	S0 := CuspidalSubspace(M0);
	D0 := NewformDecomposition(S0);
    else
	D0 := MC_NewformDecompositionOfCuspidalSubspace(M0);
    end if;
    dims0 := [Dimension(d) : d in D0];
    assert dims eq dims0;
end procedure;

Test_NewformDecomposition(4);
