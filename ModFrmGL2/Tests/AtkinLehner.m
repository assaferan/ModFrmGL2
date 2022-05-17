
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

procedure Test_IssueKoutsianas()
  printf "Testing issue in mail from Koutsianas... ";
  gens := [[1,3,12,3],[1,1,12,7],[1,3,0,3],[1,0,2,3]];
  N := 16;
  H_N := sub<GL(2,Integers(N)) | gens>;
  H := PSL2Subgroup(H_N);
  M := ModularSymbols(H, 2, Rationals(), 0);
  S := CuspidalSubspace(M);
  A := AtkinLehnerOperator(S, 8);  
end procedure;

Test_AtkinLehner(5);

Test_IssueKoutsianas();
