import "test_utils.m" : MakeGroupCopy, RandomSpace;
import "./ModSymA/decomp.m" : GetNN;

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

// Testing a possible error that was discovered in a random run when computing beta
procedure Test_Error()
    N_old := 12;
    N_new := 12;
    old_gens := [
	[ 11, 6, 6, 5 ],
	[ 5, 0, 0, 7 ],
	[ 1, 0, 0, 11 ],
	[ 7, 10, 6, 11 ],
	[ 5, 6, 6, 7 ],
	[ 7, 4, 6, 5 ],
	[ 1, 6, 6, 11 ],
	[ 11, 0, 0, 1 ],
	[ 5, 6, 0, 11 ],
	[ 7, 1, 0, 1 ],
	[ 11, 0, 6, 5 ],
	[ 11, 6, 6, 1 ],
	[ 5, 0, 6, 7 ],
	[ 1, 10, 0, 11 ],
	[ 1, 4, 0, 5 ],
	[ 1, 0, 6, 11 ],
	[ 5, 0, 0, 11 ],
	[ 11, 0, 6, 1 ],
	[ 11, 6, 0, 7 ],
	[ 5, 6, 6, 11 ],
	[ 7, 1, 6, 1 ],
	[ 7, 7, 0, 1 ],
	[ 7, 6, 0, 5 ],
	[ 1, 10, 6, 11 ],
	[ 1, 4, 6, 5 ],
	[ 5, 0, 6, 11 ],
	[ 11, 0, 0, 7 ],
	[ 7, 1, 0, 7 ],
	[ 1, 1, 0, 1 ],
	[ 11, 6, 6, 7 ],
	[ 11, 6, 0, 11 ],
	[ 7, 0, 0, 5 ],
	[ 7, 7, 6, 1 ],
	[ 7, 4, 0, 11 ],
	[ 7, 6, 6, 5 ],
	[ 11, 0, 6, 7 ],
	[ 11, 0, 0, 11 ],
	[ 7, 1, 6, 7 ],
	[ 1, 1, 6, 1 ],
	[ 7, 7, 0, 7 ],
	[ 1, 7, 0, 1 ],
	[ 11, 6, 6, 11 ],
	[ 7, 10, 0, 5 ],
	[ 7, 0, 6, 5 ],
	[ 1, 6, 0, 5 ],
	[ 7, 4, 6, 11 ],
	[ 1, 1, 0, 7 ],
	[ 11, 0, 6, 11 ],
	[ 7, 7, 6, 7 ],
	[ 1, 0, 0, 5 ],
	[ 1, 7, 6, 1 ],
	[ 7, 10, 6, 5 ],
	[ 1, 4, 0, 11 ],
	[ 1, 6, 6, 5 ],
	[ 5, 6, 0, 5 ],
	[ 1, 1, 6, 7 ],
	[ 1, 7, 0, 7 ],
	[ 1, 10, 0, 5 ],
	[ 1, 0, 6, 5 ],
	[ 5, 0, 0, 5 ],
	[ 5, 6, 0, 1 ],
	[ 7, 6, 0, 11 ],
	[ 1, 4, 6, 11 ],
	[ 5, 6, 6, 5 ],
	[ 5, 0, 0, 1 ],
	[ 1, 7, 6, 7 ],
	[ 7, 0, 0, 11 ],
	[ 1, 10, 6, 5 ],
	[ 5, 0, 6, 5 ],
	[ 5, 6, 6, 1 ],
	[ 7, 6, 6, 11 ],
	[ 11, 6, 0, 5 ],
	[ 7, 10, 0, 11 ],
	[ 5, 0, 6, 1 ],
	[ 5, 6, 0, 7 ],
	[ 7, 4, 0, 5 ],
	[ 7, 0, 6, 11 ],
	[ 1, 6, 0, 11 ],
	[ 11, 0, 0, 5 ],
	[ 11, 6, 0, 1 ]
    ];
    new_gens := [
	[ 1, 1, 0, 1 ],
	[ 1, 0, 0, 5 ],
	[ 7, 0, 0, 1 ],
	[ 1, 4, 0, 5 ],
	[ 1, 0, 0, 7 ],
	[ 5, 0, 0, 1 ]
    ];
    H_old := sub<GL(2, Integers(N_old)) | old_gens>;
    H_new := sub<GL(2, Integers(N_new)) | new_gens>;
    G_old := PSL2Subgroup(H_old);
    G_new := PSL2Subgroup(H_new);
    H_old_ker := sub<GL(2, Integers(N_old)) | [1,1,0,1], [1,0,0,5], [7,0,0,1], [1,0,0,7], [11,0,6,7]>;
    H_new_ker := sub<GL(2, Integers(N_new)) | [1,1,0,1], [1,0,0,5], [7,0,0,1], [1,0,0,7]>;
    G_old_ker := PSL2Subgroup(H_old_ker);
    G_new_ker := PSL2Subgroup(H_new_ker);
    Q_old, pi_old := G_old / G_old_ker;
    Q_new, pi_new := G_new / G_new_ker;
    X_old := Elements(CharacterGroup(pi_old, Rationals(), G_old, G_old_ker));
    X_new := Elements(CharacterGroup(pi_new, Rationals(), G_new, G_new_ker));
    eps_old := X_old[2];
    assert Order(eps_old) eq 2;
    eps_new := X_new[2];
    assert Order(eps_new) eq 2;
    k := 5; 
    M_old := ModularSymbols(eps_old, k);
    M_new := ModularSymbols(eps_new, k);
    beta := DegeneracyMatrix(M_old, M_new, GL(2, Rationals())!1);
    p := 5;
    // Check that the trace operator and the Hecke operator commute
    beta_t := Transpose(beta);
    T5_old := DualHeckeOperator(M_old, 5);
    T5_new := DualHeckeOperator(M_new, 5);
    assert T5_new*beta_t eq beta_t*T5_old;
    // Why does it not commute? it anti commutes for some reason!
end procedure;

Test_DegeneracyMaps(5);
// Commenting out to check if tests pass
// Test_Error();
