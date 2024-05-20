// The example of Gamma(7). This is now contained in Box's work

procedure Test_Zywina()
  printf "Testing the Zywina example Gamma(7)...\n";
  N := 7;
  G := FakeGamma(N, "full");
  // until we shall make it work with characters
  // M := ModularSymbols(G)
  M := ModularSymbols(G, 2, Rationals(), 0);
  S := CuspidalSubspace(M);
  f := qIntegralBasis(S, 12);
  q := Universe(f).1;
  assert f[1] eq q-3*q^8+O(q^12);
  assert f[2] eq q^2-3*q^9+O(q^12);
  assert f[3] eq q^4-4*q^11+O(q^12);
  s := GL(2, Rationals())![0,-1,1,0];
  s_mat := ActionOnEchelonFormBasis(s, M);
  F := CyclotomicField(7);
  zeta_7 := F.1;
  alpha := zeta_7 + zeta_7^(-1);
  vals := [-3*alpha^2-2*alpha+2, 2*alpha^2-alpha-6, alpha^2+3*alpha-3,
	     -alpha^2-3*alpha+3, 3*alpha^2+2*alpha-2, 2*alpha^2-alpha-6];
  Zywina_mat := 1/7 * SymmetricMatrix(F, vals);
  assert s_mat eq Zywina_mat;
end procedure;

// Test_Zywina();
