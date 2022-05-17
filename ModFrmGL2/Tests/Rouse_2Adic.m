// Testing a single 2-adic subgroup

procedure Test_2adic()
    printf "Testing example of a 2-adic group... ";
    tt := Cputime();
    gens := [[1,3,12,3],[1,1,12,7],[1,3,0,3],[1,0,2,3]];
    N := 16;
    H_N := sub<GL(2,Integers(N)) | gens>;
// H_N := GetRealConjugate(H_N);
    H := PSL2Subgroup(H_N);
    H := RealTypeConjugate(H);
    M := ModularSymbols(H, 2, Rationals(), 0);
    S := CuspidalSubspace(M);
    D := Decomposition(S, HeckeBound(S));
    f := qEigenform(D[1],100);
    _<q> := Parent(f);
    assert f eq q - 4*q^5 - 3*q^9 - 4*q^13 - 2*q^17 + 11*q^25 - 4*q^29 +
		12*q^37 - 10*q^41 + 12*q^45 - 7*q^49 - 4*q^53 + 12*q^61 +
		16*q^65 - 6*q^73 + 9*q^81 + 8*q^85 + 10*q^89 - 18*q^97 + O(q^100); 
    printf "%o s\n", Cputime(tt);
end procedure;

// Here we test some of Jeremy Rouse's results
// Currently just tests genus

procedure Test_Rouse_single(gens, level, genus, id)
   printf "X_%o ", id;
   t := Cputime();
   N := level;
   G := GL(2,IntegerRing(N));
   H_N := sub<G | gens>;
   H := PSL2Subgroup(H_N, true);
// print "Creating space of modular symbols...\n";
   M := ModularSymbols(H);
//print "Done!\n";
// print "Computing cuspidal subspace...\n";
   S := CuspidalSubspace(M);
// print "Done!\n";
   assert Dimension(S) eq 2*genus;
// print "time = ", Cputime(t);  
end procedure;

// Testing dimensions for several of Rouse's 2-adic groups 
procedure Test_Rouse()
  printf "Testing genus of 2-adic curves... ";
  Test_Rouse_single([[1,3,10,7],[1,0,4,13],[1,2,4,13],[1,3,12,15]],16,1,150);
  Test_Rouse_single([[1,3,0,7],[1,0,4,5],[1,3,14,7],[1,1,6,3]],16,1,153);
  Test_Rouse_single([[1,3,12,3],[1,1,12,7],[1,3,0,3],[1,0,2,3]],16,1,155);
  Test_Rouse_single([[1,3,12,3],[1,0,2,3],[1,0,4,5],[1,2,0,13]],16,1,156);
  Test_Rouse_single([[13,10,0,1],[13,13,2,3],[15,13,0,1],[11,11,2,1]],16,1,165);
  Test_Rouse_single([[5,15,2,3],[13,13,2,3],[15,13,0,1],[11,11,2,1]],16,1,166);
  Test_Rouse_single([[3,0,0,7],[3,0,0,3],[3,3,2,1],[3,2,0,1]],16,1,167);
  Test_Rouse_single([[4,7,15,12],[7,14,7,9],[2,1,11,9]],16,2,441);
  Test_Rouse_single([[9,0,8,7],[15,14,0,3],[7,0,8,3],[1,0,0,7],[15,0,0,7]],16,2,504);
  Test_Rouse_single([[7,0,0,3],[3,5,14,7],[7,7,2,1]],16,3,556);
  Test_Rouse_single([[3,5,6,3],[3,5,14,7],[7,7,2,1]],16,3,558);
  Test_Rouse_single([[7,14,0,1],[1,5,6,11],[3,0,0,7]],16,3,563);
  Test_Rouse_single([[7,14,0,1],[5,0,0,1],[1,5,6,3]],16,3,566);
  Test_Rouse_single([[25,18,2,7],[25,25,2,7],[1,0,8,1],[25,11,2,7]],32,3,619);
  Test_Rouse_single([[29,0,4,1],[31,27,0,1],[1,4,0,1],[31,31,2,1]],32,3,649);
end procedure;

Test_2adic();
// This is no longer really needed
Test_Rouse();
