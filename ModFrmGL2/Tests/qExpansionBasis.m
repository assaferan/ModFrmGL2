import "test_utils.m" : RandomRationalSpace;

function my_Round(x)   // this function disappeared from MAGMA!!!!!!!!!!
   n := Floor(x);
   return (x-n) ge 0.5 select n+1 else n;
end function;

procedure Test_qExpansionBasis(numchecks)
   printf "Integral Basis Tests... (k,N,eps) = ";
   for i in [1..numchecks] do
      M := CuspidalSubspace(RandomRationalSpace());
// t := Cputime();
      bnd := my_Round(HeckeBound(M));
      delete M`qintbasis;
      Quniv := qExpansionBasis(M, bnd : Al := "Universal");
// Quniv;
      delete M`qintbasis;
      Qnf   := qExpansionBasis(M, bnd : Al := "Newform");
// Qnf;
      if Quniv ne Qnf then
        assert false;       //        error "Test_qExpansionBasis failed on ",M;
      end if;
//      printf "\t\t\tTEST PASSED!!!\n";
//      printf " \ttime  = %os\n\n",Cputime(t);
   end for;
end procedure;

Test_qExpansionBasis(5);
