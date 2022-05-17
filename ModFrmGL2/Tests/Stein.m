// Here we test some easy examples from Stein's book

procedure Test_Stein_8_33()
  printf "8.33 ";
  M := ModularSymbols(FakeGamma(1,0),4);
  assert Dimension(M) eq 1;
  // There is only the Eisenstein - E4
  for p in [2,3,5,7,11] do
     Tp := HeckeOperator(M,p);
     assert Tp eq Matrix([[p^3+1]]);
  end for;
end procedure;

procedure Test_Stein_8_34()
  printf "8.34 ";
  M := ModularSymbols(FakeGamma(11,0));
  assert Dimension(M) eq 3;
  T := HeckeOperator(M,2);
  assert Eigenvalues(T) eq {<3,1>,<-2,2>};
end procedure;

procedure Test_Stein_8_35()
  printf "8.35 ";
  M := ModularSymbols(FakeGamma(3,0),6);
  assert Dimension(M) eq 4;
  T2 := HeckeOperator(M,2);
  assert Eigenvalues(T2) eq {<33,2>,<-6,2>};
  T3 := HeckeOperator(M,3);
  assert Eigenvalues(T3) eq {<1,1>, <243,1>, <9,2>};
  T5 := HeckeOperator(M,5);
  assert Eigenvalues(T5) eq {<3126,2>, <6,2>};
  T7 := HeckeOperator(M,7);
  assert Eigenvalues(T7) eq {<16808,2>,<-40,2>};
  S := CuspidalSubspace(M);
  assert Dimension(S) eq 2;
  g := qEigenform(S,8);
  q := Parent(g).1;
  assert g eq q-6*q^2+9*q^3+4*q^4+6*q^5-54*q^6-40*q^7+O(q^8);
end procedure;

procedure Test_Stein_8_36()
  printf "8.36 ";
  M := ModularSymbols(FakeGamma(43,0));
  assert Dimension(M) eq 7;
  T2 := HeckeOperator(M,2);
  f2 := CharacteristicPolynomial(T2);
  x := Parent(f2).1;
  assert f2 eq (x-3)*(x+2)^2*(x^2-2)^2;
  S := CuspidalSubspace(M);
  assert Dimension(S) eq 6;
end procedure;

procedure Test_Stein_8_37()
  printf "8.37 ";
  SetVerbose("ModularSymbols", 2);
  M := ModularSymbols(FakeGamma(2004,0));
  SetVerbose("ModularSymbols", 0);
  assert Dimension(M) eq 673;
  M_plus := ModularSymbols(FakeGamma(2004,0),2,-1);
  assert Dimension(M_plus) eq 331;
end procedure;

procedure Test_Stein_9_6()
  printf "9.6 ";
  M_old := ModularSymbols(FakeGamma(11,0));
  S_old := CuspidalSubspace(M_old);
  assert Dimension(S_old) eq 2;
  M := ModularSymbols(FakeGamma(22,0));
  S := CuspidalSubspace(M);
  assert Dimension(S) eq 4;
  T2 := HeckeOperator(S,2);
  f2 := CharacteristicPolynomial(T2);
  x := Parent(f2).1;
  assert f2 eq (x^2+2*x+2)^2;
  Snew := NewSubspace(S);
  assert Dimension(Snew) eq 0;
end procedure;

procedure Test_Stein_9_7()
  printf "9.7 ";
  M := ModularForms(FakeGamma(45,0));
  assert Dimension(M) eq 10;
  S := CuspidalSubspace(M);
  assert Dimension(S) eq 3;
  B := Basis(S,14);
  q := Universe(B).1;
  assert B eq [
    q - q^4 - q^10 - 2*q^13 + O(q^14),
    q^2 - q^5 - 3*q^8 + 4*q^11 + O(q^14),
    q^3 - q^6 - q^9 - q^12 + O(q^14)
	       ];
  Bnew := Basis(NewSubspace(S),14);
  assert Bnew eq [
    q + q^2 - q^4 - q^5 - 3*q^8 - q^10 + 4*q^11 - 2*q^13 + O(q^14)
		  ];
  M := ModularForms(FakeGamma(9,0));
  assert Dimension(M) eq 3;
  S := CuspidalSubspace(M);
  assert Dimension(S) eq 0;
  B := Basis(CuspidalSubspace(ModularForms(FakeGamma(15,0))), 10);
  assert B eq [
    q - q^2 - q^3 - q^4 + q^5 + q^6 + 3*q^8 + q^9 + O(q^10)
	       ];
end procedure;

procedure Test_Stein_9_8()
  printf "9.8 ";
  S_old := CuspidalSubspace(ModularSymbols(FakeGamma(11,0),2,1));
  assert Dimension(S_old) eq 1;
  S := CuspidalSubspace(ModularSymbols(FakeGamma(55,0),2,1));
  assert Dimension(S) eq 5;
  S_new := NewSubspace(S);
  assert Dimension(S_new) eq 3;
  T5 := HeckeOperator(S_new,5);
  assert Eigenvalues(T5) eq {<1,1>,<-1,2>};
  T4 := HeckeOperator(S_new,4);
  T2 := HeckeOperator(S_new,2);
  assert T5 eq 2*T2-T4-2;
end procedure;

procedure Test_Stein()
  printf "Testing Stein Examples... ";
  Test_Stein_8_33();
  Test_Stein_8_34();
  Test_Stein_8_35();
  Test_Stein_8_36();
// Here it takes quite a while to generate the group Gamma0(2004)
// in an alternative way - intersection with SL2 takes too much time
// Test_Stein_8_37();
   Test_Stein_9_6();
// At the moment spends too much time computing Hecke operators
// at primes dividing the level, so we don't run them every time
// Test_Stein_9_7();
// Test_Stein_9_8();
end procedure;

Test_Stein();
