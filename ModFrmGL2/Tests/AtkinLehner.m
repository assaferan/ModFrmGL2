
procedure Test_AtkinLehner(numchecks : maxN := 15, maxk := 6)
  printf "Testing Atkin-Lehner... (k,N) = ";
   for i in [1..numchecks] do
      N := Random(maxN)+1;
      k := 2*Random(1,Max(1,maxk-(N div 10)));
// printf " k = %o, N = %o ...\n", k, N;
      printf "(%o,%o) ", k, N;
      S := CuspidalSubspace(ModularSymbols(N,k,+1));
//    t := Cputime();
// print "S = ", S;
      q_exps := [qExpansionBasis(A,25) : A in AtkinLehnerDecomposition(S)]; 
// print "time = ", Cputime(t);
   end for;
end procedure;

Test_AtkinLehner(5);
