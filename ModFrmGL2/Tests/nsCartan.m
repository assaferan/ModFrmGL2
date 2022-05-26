// Test for non-split Cartan subgroups

function benchmark(G)
  M := ModularForms(G);
  Snew := NewSubspace(CuspidalSubspace(M));
  prec := Dimension(Snew) + 10;
  tm := Cputime();
  tmp := [* qExpansion(f[1],prec) : f in Newforms(Snew) *];
  return Cputime() - tm;
end function;

function Test_John_timing(N)
  G := GammaNSplus(N);
  p := NextPrime(Index(G));
  // Constructing a Gamma0(p) with ~ same number of representatives
  time_0 := benchmark(Gamma0(p));
  time_1 := benchmark(G);
  return [time_0, time_1];
end function;

function ConjugateForm(sigma, f, prec)
  q := Parent(f).1;
  conj := [sigma(x) : x in Coefficients(f)];
  conj_f := &+([conj[i]*q^i : i in [1..#conj]]);
  return conj_f + O(q^prec);
end function;

function IsFormConjugate(f1,f2,prec)
  assert Parent(f1) eq Parent(f2);
  K := BaseRing(Parent(f1));
  Gal_K := Automorphisms(K);
  for sigma in Gal_K do
    if ConjugateForm(sigma,f1,prec) eq f2 then
      return true;
    end if;
  end for;
  return false;
end function;

function TraceForm(f, prec)
  q := Parent(f).1;
  K := BaseRing(Parent(f));
  coefs := [Trace(x) : x in Coefficients(f)];
  trace_f := &+([coefs[i]*q^i : i in [1..#coefs]]);
  return PowerSeriesRing(Rationals())!(trace_f + O(q^prec));
end function;

function GetTracesDataUpTo(max_N, prec)
  primes := PrimesUpTo(max_N);
  odd_primes := primes[2..#primes];
  res := [];
  for p in odd_primes do
     G := GammaNSplus(p);
     M := ModularForms(G);
     Snew := NewSubspace(CuspidalSubspace(M));
     forms := [* qExpansion(f[1],prec) : f in Newforms(Snew) *];
     trace_forms := [TraceForm(f,prec) : f in forms];
     if #trace_forms ne 0 then
        trace_form := &+trace_forms;
     else
        trace_form := PowerSeriesRing(Rationals())!0;
     end if;
     Append(~res, trace_form);
  end for;
  return odd_primes, res;
end function;

function GetDecompositionDimAndCharPoly(N, max_p)
  G := GammaNSplus(N);
  M := ModularSymbols(G,2,1);
  S := CuspidalSubspace(M);
  D := Decomposition(S, HeckeBound(S));
  dims := [Dimension(d) : d in D];
  primes := PrimesUpTo(max_p);
  polys := [CharacteristicPolynomial(HeckeOperator(S,p)) : p in primes];
  facs := [<primes[i], Factorization(polys[i])> : i in [1..#primes]];
  return dims, facs;
end function;

procedure DecDimCharPolyUpTo(N, max_p, output_fname)
  // This is just so that the polynomials will look better
  R<x> := PolynomialRing(Rationals());
  primes := PrimesUpTo(N);
  odd_primes := primes[5..#primes];
  output_file := Open(output_fname, "w");
  for p in odd_primes do
     fprintf output_file, "Data for X_ns+(%o):\n", p;
     dims, facs := GetDecompositionDimAndCharPoly(p, max_p);
     fprintf output_file, "Dimensions of the irreducible subspaces:\n%o\n",
             dims;
     fprintf output_file, "Factorization of the characteristic polynomial of the Hecke operators:\n%o\n\n", facs;
  end for;
  delete output_file;
end procedure;

function genusNSCartan(N, plus)
  primes_mul := Factorization(N);
  primes := [x[1] : x in primes_mul];
  beta3 := &and[p mod 3 eq 2 : p in primes];
  if beta3 then beta3 := 1; else beta3 := 0; end if;
  mult_n := 2^(#primes);
  A := (N-6)*EulerPhi(N) / 12;
  B := beta3 / 3;
  if plus then
    A := A / (mult_n);
    C := N / (mult_n * 4);
    for p_m in primes_mul do
       p := p_m[1];
       m := p_m[2];
       if p mod 4 eq 1 then C := C*(1-1/p); end if;
       if p mod 4 eq 3 then C := C*(1+1/p+2/p^m); end if;
    end for;
  else
    B := B * (mult_n);
    beta2 := &and[p mod 4 eq 3 : p in primes];
    if beta2 then beta2 := 1; else beta2 := 0; end if;
    C := mult_n * beta2 / 4;
  end if;
  return 1 + A - B - C;
end function;

procedure SingleTestNSCartan(N, plus)
  if plus then
    G := GammaNSplus(N);
  else
    G := GammaNS(N);
  end if;
  M := ModularSymbols(G);
  S := CuspidalSubspace(M);
  assert Dimension(S) eq 2*genusNSCartan(N,plus);
end procedure;

procedure Test_NSCartan_11()
  printf "Testing the eigenform of non-split Cartan 11...\n";
  N := 11;
  G := GammaNSplus(N);
  M := ModularSymbols(G);
  S := CuspidalSubspace(M);
  f := qEigenform(S,100);
  f2 := qExpansion(Newform("121k2A"),100);
  assert f eq f2;
end procedure;

procedure Test_NSCartan_17()
  printf "Testing the eigenforms of non-split Cartan 17...\n";
  N := 17;
  G := GammaNSplus(N);
  M := ModularSymbols(G);
  S := CuspidalSubspace(M);
  D := Decomposition(S, HeckeBound(S));
  // These are tested against the results of Mercuri and Schoof
  g1 := qEigenform(D[1],19);
  g2 := qEigenform(D[2], 17);
  g3 := qEigenform(D[3], 13);
// Here they are from the paper
  q := Parent(g1).1;
  f1 := q-q^2-q^4+2*q^5-4*q^7+3*q^8-3*q^9-2*q^10-2*q^13+
    4*q^14-q^16+3*q^18+O(q^19);
  assert f1 eq g1;
  q := Parent(g2).1;
  K := BaseRing(Parent(g2));
  a := K.1;
  f2 := q-(a+1)*q^2+a*q^3+(a+2)*q^4-(a+1)*q^5-3*q^6+(a-1)*q^7-3*q^8-a*q^9+
  (a+4)*q^10-3*q^11+(a+3)*q^12-(a+2)*q^13+(a-2)*q^14-3*q^15+(a-1)*q^16+O(q^17);
  assert IsFormConjugate(f2,g2,17);
  q := Parent(g3).1;
  K := BaseRing(Parent(g3));
  b := K.1;
  f3 := q-(b^2+b-2)*q^2-(b+1)*q^3+b*q^4+(b^2+b-4)*q^5+(2*b^2+2*b-3)*q^6+b*q^7+
  (b^2+b-3)*q^8+(b^2+2*b-2)*q^9+
  (2*b^2+b-6)*q^10-(2*b^2-2)*q^11-(b^2+b)*q^12+O(q^13);
  assert IsFormConjugate(f3,g3,13);
end procedure;

function buildEigenbasisNS(N)
  G := GammaNSplus(N);
  M := ModularSymbols(G);
  S := CuspidalSubspace(M);
// return qIntegralBasis(S,prec : Al := "Universal");
  prec := Dimension(S) div 2 + 10;
  return qEigenformBasis(M, prec);
end function;

function timeEigenbasisNS(N)
  res := [];
  primes := PrimesUpTo(N);
  odd_primes := primes[2..#primes];
  for p in odd_primes do
     printf "Constructing eigenbasis for Xns+(%o)...\n", p;
     tm := Cputime();
     tmp := buildEigenbasisNS(p);
     tm := Cputime() - tm;
     printf "Took %o seconds.\n", tm;
     Append(~res, [p,tm]);
  end for;
  return res;
end function;

// These are tests for the non-split Cartan
procedure Test_NSCartan(max_N)
   // right now, this is only worked out for odd primes
   //  !!! TODO : handle all N, shouldn't be much more work
  printf "Testing dimensions of non-split Cartan. p = ";
  primes := PrimesUpTo(max_N);
  odd_primes := primes[2..#primes];
  for p in odd_primes do
      printf "%o ", p;
      SingleTestNSCartan(p, false);
      SingleTestNSCartan(p, true);
  end for;
end procedure;

Test_NSCartan_11();
Test_NSCartan_17();
// Test_NSCartan(100);
Test_NSCartan(30);
