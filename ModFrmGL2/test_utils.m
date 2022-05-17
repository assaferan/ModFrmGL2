// This file does not run any tests, only includes utility functions for tests

function MakeGroupCopy(M)
  k := Weight(M);
  sign := Sign(M);
  eps := DirichletCharacter(M);
  R := BaseRing(eps);
  /*
  if (Evaluate(eps,-1) eq -1) then
     print "Currently can only work with even characters...";
     return false;
  end if;
  */
  N := Level(M);
  G0 := FakeGamma(N,0);
  G1 := FakeGamma(N,1);
  Q, pi_Q := G0 / G1;
  gens := GeneratorsSequence(ImageInLevel(G0));
  // Should add coercion of Dirichlet character to group character
  // (Maybe should just extend the functionality of Dirichlet character
  // instead?)
  X := Elements(CharacterGroup(pi_Q, R, G0, G1));
  vals_all := [[Evaluate(x, g) : g in gens] : x in X];
  vals_eps := [Evaluate(eps, g[2,2]) : g in gens];
  i := Index(vals_all, vals_eps);
  if i ne 0 then
      return ModularSymbols(X[i], k, sign);
  end if;
  print "Error! Could not find an appropriate character!\n";
  return false;
end function;

function RandomSpace(: maxN := 15, maxk := 6)
      N      := Random([1..maxN]);
      k      := Random([2..maxk]);
      if N eq 0 then
         N := 1;
         "WEIRD! - BUG IN RANDOM!!";
      end if;
      G      := DirichletGroup(N,Rationals());
      eps    := Random(G);
// printf "\n\n\n\t\t=>>>> k = %o, N = %o, eps = %o <<<<=\n", k, N, eps;
      printf "(%o, %o, %o) ", k, N, eps;
      return ModularSymbols(eps,k), N, k, eps;
end function;

function RandomSpaceWithTrivialCharacter(: maxN := 15, maxk := 6)
      N      := Random(maxN) + 1;
      k      := Random(2,Max(2,maxk - (N div 10)));
//printf " k = %o, N = %o ...\n", 
      printf "(%o,%o) ", k, N;
      return ModularSymbols(N, k), N, k;
end function;

function RandomRationalSpace( : maxN := 15, maxk := 6)
      N := Random(1,maxN);
      if N eq 0 then
         N := 1;
         "WEIRD! - BUG IN RANDOM!!";
      end if;
      k := Random(2,maxk);
      G := DirichletGroup(N);
      eps := Random(G);
// printf "\n\n\n\t\t=>>>> k = %o, N = %o, eps = %o <<<<=\n", k, N, eps;
      printf "(%o, %o, %o) ", k, N, eps;
      return ModularSymbols(eps,k), N, k, eps;
end function;
