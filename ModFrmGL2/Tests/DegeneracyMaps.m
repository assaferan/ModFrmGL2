import "test_utils.m" : MakeGroupCopy, RandomSpace;
import "./ModSym/decomp.m" : GetNN;

function my_idxG0(n)
   return 
      &*[Integers()| t[1]^t[2] + t[1]^(t[2]-1) : t in Factorization(n)];
end function;

procedure Test_DegeneracyMaps_Single(M, N, k, eps)
// t := Cputime();
    if N gt 1 then
	if IsOfGammaType(M) then
            divs := [d : d in Divisors(N) | d mod Conductor(eps) eq 0 ];
	else
	    G_N := ImageInLevelGL(LevelSubgroup(M));
	    divs := [d : d in GetNN(M) | d meet G_N subset Kernel(eps)];
	end if;
        NN   := Random(divs);
    else
        return;
    end if;
    
    oldM := ModularSymbols(M,NN);
// print "  Lower level space has level ",NN;

    if IsOfGammaType(M) then
	one := 1;
	d := N div NN;
	idx := my_idxG0(N) div my_idxG0(NN);
	idx_d := idx * (d^(k-2));
    else
	one := GL(2, Rationals())!1;
	NN_prime := sub<ModLevelGL(LevelSubgroup(M)) | G_N, NN>;
	PNN := PSL2Subgroup(NN_prime);
	d := GL(2, Rationals())![1,0,0,N div Level(PNN)];
	idx := Index(PNN, LevelSubgroup(M));
	idx_d := Index(PNN, LevelSubgroup(M)^d);
    end if;
    
    beta_1  := DegeneracyMatrix(oldM,M,one);
    alpha_1 := DegeneracyMatrix(M,oldM,one);
    
    
    beta_d  := DegeneracyMatrix(oldM,M,d);
    alpha_d := DegeneracyMatrix(M,oldM,d);
    
    if Dimension(M) eq 0 or Dimension(oldM) eq 0 then
        return;
    end if;
    
    ba_1:= beta_1*alpha_1; 
    X   := Parent(ba_1)!0;
    for i in [1..NumberOfRows(X)] do 
        X[i,i] := 1;
    end for;
    assert ba_1 eq X*idx;
    ba_d := beta_d*alpha_d;
    assert ba_d eq X*idx_d;
// printf " time = %os\n", Cputime(t);
end procedure;

procedure Test_DegeneracyMaps(numcheck)
   printf "Degeneracy maps test. ";
   printf "This tests conversion between Manin and modular symbols. ";
   printf "(k, N, eps) = ";
   for i in [1..numcheck] do
      M,N,k,eps := RandomSpace();
      Test_DegeneracyMaps_Single(M, N, k, eps);
      //if Evaluate(eps, -1) eq 1 then
	  M_copy := MakeGroupCopy(M);
	  eps_copy := DirichletCharacter(M_copy);
	  Test_DegeneracyMaps_Single(M_copy, N, k, eps_copy);
      //end if;
   end for;
end procedure;

Test_DegeneracyMaps(5);
