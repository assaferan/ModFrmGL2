freeze;

/******************************************************************
*                                                                 *
* Spinor genera of lattices over number fields                    *
* BONGs of lattices over number fields                            *
* Genera of lattices over number fields                           *
*                                                                 *
* See D. Lorch, "Einklassige Geschlechter orthogonaler Gruppen",  * 
*                                                                 *
* David Lorch, 2015                                               *
*                                                                 *
******************************************************************/

// we fix some primes for the genus computations and add them as a global property of the field / lattice:

declare attributes LatNF:
  GenusComp;

import "LatNF.m" : PrimeOK, SetupLatticeInSpace, EvenGenusSymbol, MyGram, MyLineOrbits;

GenusComputationFormat:=recformat<
  RCG:GrpAb,			// a ray class group associated to some lattice L
  hom_RCG:Map,

  MM:SeqEnum,			// list of prime powers defining RCG
  M:RngOrdIdl,			// M = &*MM
  RayPrimes:SetIndx,		// like MM, but is a list of the prime ideals only (no exponents)
  Inf:SetIndx,			// the infinite (real) places of the ray

  RCG_Subgroup:GrpAb,		// a subgroup of RCG
  RCG_FactorGroup:GrpAb,	// = RCG modulo RCG_Subgroup
  hom_RCG_FactorGroup:Map

//  CriticalPrimes:SeqEnum,	// a set of primes needed to list all the proper spinor genera in Genus(L)
//  GroupElementsToPrimes: Assoc	// maps the elements of RCG_Factorgroup to primes representing them
>;



// 1. Maximal norm splittings and (good) BONGs, as defined by C. Beli:

function ScalesAndNorms(G, p)
  // G is a list of Gram matrices, for example a Jordan decomposition
  // We calculate the invariants of the entries of G, viewed as individual lattices.

  e := RamificationIndex(p);
  Uniformizer := NumberField(Order(p)) ! PrimitiveElement(p);
  sL := [Minimum({Valuation(g[i,j], p): i in [1..j], j in [1..Ncols(g)]}): g in G];

  aL:= []; uL:= []; wL:= [];
  sL := [Minimum({Valuation(x, p): x in Eltseq(g)}): g in G];
  for i in [1..#G] do
    // similar, but not equal to, the code for obtaining a genus symbol
    // (for the genus symbol, we consider a scaling L^(s(L_i)) in O'Meara's notation)
    D:= Diagonal(G[i]);
    min, pos:= Minimum([ Valuation(d, p) : d in D ]);
    Append(~aL, e+sL[i] le min select Uniformizer^(e+sL[i]) else D[pos]);
    Append(~uL, Valuation(aL[i], p));
//    Append(~wL, Minimum({e+sL[i]} join {uL[i] + QuadraticDefect(d/aL[i], p): d in D}));
  end for;

  return sL, aL, uL; /*, wL;*/ // scales, norm generators, norm valuations, weight valuations of the Gs.
end function;

function NormUpscaled(G, p : Scales:= [])
  // calculate Norm(L^{scale(L_i)}), for all i.
  // for the definition of L^{a}, cf. § 82 I, p.237, in O'Meara

  // G is a splitting of a nf lattice L into Gram matrices,
  // which can e.g. be calculated by JordanDecomposition(), but need not
  // be a Jordan decomposition.
    sL := Scales eq [] select [Minimum({Valuation(g[i,j], p): i in [1..j], j in [1..Ncols(g)]}): g in G] else Scales;
    e := RamificationIndex(p);
    Uniformizer := NumberField(Order(p)) ! PrimitiveElement(p);

    aL:= []; uL:= []; wL:= [];
    for i in [1..#G] do
      // Die Norm ist 2*Scale + <die Ideale die von den Diagonalelementen erzeugt werden>, cf. § 94 O'Meara.
      GG:= DiagonalJoin(< j lt i select Uniformizer^(2*(sL[i]-sL[j])) * G[j] else G[j] : j in [1..#G] >);
      D:= Diagonal(GG);
      // Is 2*s(L_i) eq n_i? (We always have scale \supseteq norm \supseteq 2*scale)
      min, pos:= Minimum([ Valuation(d, p) : d in D ]);
      vprintf Genus, 2: "val(2*scale) = %o, val(diagonal)=%o\n", e+sL[i], min;
      // um einen Normerzeuger zu finden, muss man einfach Erzeuger des größeren der Ideale 2*Scale bzw. <Diagonalelemente> nehmen:
      if e+sL[i] le min then
        vprintf Genus, 2: "NU: case 1\n";
        Append(~aL, Uniformizer^(e+sL[i]));
      else
        vprintf Genus, 2: "NU: case 2\n";
        Append(~aL, D[pos]);
      end if;
      Append(~uL, Valuation(aL[i], p));
      // Append(~wL, Minimum({e+sL[i]} join {uL[i] + QuadraticDefect(d/aL[i], p): d in D}));
    end for;

 // uL: the valuations of the upscaled norms
 // aL: the generators of the upscaled norms
 return uL, aL;
end function;

procedure Swap(~x, ~y)
  temp:= x;
  x:= y;
  y:= temp;
end procedure;

procedure beli_correction(L, ~G, ~JJ, Steps, i, j, p);
  // This is a helper procedure for GoodBasisOfNormGenerators().
  // Correct the Jordan components with number i and j of L from the Jordan decomposition given in G and JJ,
  // in such a way that the new component with number i has maximal norm. 
  assert #Steps[i] eq 2;

  //assert DiagonalJoin(<g: g in G>) eq MyGram(L, Matrix(JJ));

  // for debugging:
  /*
  NU := NormUpscaled(G, p);
  // assert orthogonality of the vectors in JJ[Steps[i]] and those in JJ[Steps[j]], i.e. those that make up G[i] and G[j]:
  //if Nrows(G[j]) eq 2 then assert IsZero( C*L`IP*Transpose(B) where B is RowSubmatrix(JJ, Steps[i]) where C is  RowSubmatrix(JJ, Steps[j])); end if;

  assert NU[i] lt Valuation(Norm(NumberFieldLatticeWithGram(G[i])), p); // otherwise, the norm condition is violated
  assert NU[j] le Valuation(Norm(NumberFieldLatticeWithGram(G[j])), p); // "<=" must always hold, otherwise something about the lattice is broken
  */

  // if G[j] is two-dimensional, make sure that a norm generator is on the [1,1] position:
  if (Ncols(G[j]) eq 2) and (Valuation(G[j][1,1], p) gt Valuation(G[j][2,2], p)) then
    Swap(~JJ[Steps[j,1]], ~JJ[Steps[j,2]]);
    Swap(~G[j,1,1], ~G[j,2,2]);
  end if;
  /*
  if Ncols(G[j]) eq 2 then
    a:= Valuation(G[j,1,1], p);
    b:= Valuation(G[j,1,2], p) + RamificationIndex(p);
    c:= Valuation(G[j,2,2], p);
    m:= Minimum([a,b,c]);
    if m eq a then 
      ;		// do not remove this line
    elif m eq c then
      Swap(~JJ[Steps[j,1]], ~JJ[Steps[j,2]]);
      Swap(~G[j,1,1], ~G[j,2,2]);
    else
      JJ[Steps[j,1]] +:= JJ[Steps[j,2]];
      G[j] :=  MyGram(L, JJ[Steps[j]]);
      assert Valuation(G[j,1,1]) eq m;
    end if;
  end if;
  */

  JJ[Steps[i,1]] +:= JJ[Steps[j,1]];

  // update Gram matrix for component #i:
  G[i] := MyGram(L, RowSubmatrix(JJ, Steps[i]));
  x := JJ[Steps[i][1]];
  y := JJ[Steps[i][2]];

  // re-orthogonalize the first basis vector of G[j]:
  // Ansatz: v = JJ[Steps[j][1]] + lambda*x + mu*y
  GI := G[i]^(-1);
  v := Vector([-G[j][1,1], 0]) * GI;

  // assert integrality at p:
  assert &and[Valuation(v[k], p) ge 0: k in [1..Ncols(v)]];
  JJ[Steps[j][1]] +:= v[1]*x + v[2]*y;

  // if applicable, re-orthogonalize the second basis vector of G[j]:
  if Ncols(G[j]) eq 2 then
    w := Vector([-G[j][1,2], 0]) * GI; 
    assert &and[Valuation(w[k], p) ge 0: k in [1..Ncols(w)]];
    JJ[Steps[j][2]] +:= w[1]*x + w[2]*y;
  end if;

  // update Gram matrix for component #j:
  G[j] := MyGram(L, RowSubmatrix(JJ, Steps[j]) );

  // assert Valuation(Norm(LatticeModule(G[i])), p) eq NU[i];
end procedure;

function IsMaximalNormSplittingInternal(GramMatrices, Scales, Norms, p)
  // Scales: list of valuations of scales
  // Norms: list of generators of norms
  // occurring in a Genus symbol of L at p, as calculated
  // by GenusSymbol(L, p). 

  Norms := [Valuation(Norms[i], p): i in [1..#Norms]];

  // test if each component is either unary or binary:
  fail := exists(i){i: i in [1..#GramMatrices] | Ncols(GramMatrices[i]) notin {1,2}};
  if fail then
    vprintf Genus : "IsMaximalNormSplittingInternal failed: components are not all unary or binary\n";
    return false, -i, {};
  end if;

  // test if binary components are modular:
  // fail := exists(i){i: i in [1..#GramMatrices] | #E ne 1 where _,_,E is JordanDecomposition(LatticeModule(GramMatrices[i]), p)};
  fail := exists(i){i: i in [1..#GramMatrices] | Ncols(GramMatrices[i]) ne 1 and Valuation(Determinant(GramMatrices[i]), p) ne 2*Scales[i] };
  if fail then
    vprintf Genus : "IsMaximalNormSplittingInternal failed: at least one of the binary components is not modular\n";
    return false, -i, {};
  end if;


  // test if sL[1] \supseteq sL[2] \supseteq ... \supseteq sL[#sL]:
  for i in [1..#Scales-1] do if (Scales[i] gt Scales[i+1]) then
    error Sprintf("scale condition at components %o/%o not met, perhaps something is wrong with your lattice?\nFor your reference, the scale valuations are %o", i, i+1, Scales);
    return false, 0, {}; end if;
  end for;

  // test if nL[i] = n(L^{sL[i]}):
  NU, _ := NormUpscaled(GramMatrices, p: Scales:= Scales);
  failset := {}; // for testing purposes, we count the components that do not have maximal norm
  for i in [1..#Scales] do
    assert NU[i] le Norms[i];
    if NU[i] lt Norms[i] then
      vprintf Genus : "IsMaximalNormSplittingInternal failed: norm condition at component %o\n", i;
      Include(~failset, i);
    end if;
  end for;
  if #failset gt 0 then return false, Rep(failset), failset; end if;
  return true, 0, {};
end function;

intrinsic MaximalNormSplitting(L::LatNF, p::RngOrdIdl) -> SeqEnum, List
{A maximal norm splitting of L at a dyadic prime p}
  // we follow C. Beli, "Representation of Integral Quadratic Forms over Dyadic Local Fields", section 7

  ok, err:= PrimeOK(L, p);
  require ok : err;

  R := Order(p);
  e := RamificationIndex(p);
  Uniformizer := PrimitiveElement(p);

  // Jordan decomposition actually decomposes L into 1x1 and 2x2 blocks.
  // We start with such a decomposition.

  J, G:= JordanDecomposition(L, p);

  // join J into one matrix of base vectors:
  JJ := VerticalJoin(<j: j in J>);
  // join the individual Gram matrices:
  A  := DiagonalJoin(<g: g in G>);

  // read the finer decomposition:
  G := [* *];
  Steps:= [];
  i:= 1; n:= Ncols(A);
  while i le n do
    size:= i ne n and A[i,i+1] ne 0 select 2 else 1;
    Append(~G, Submatrix(A, i, i, size, size));
    Append(~Steps, [i..i+size-1]);
    i +:= size;
  end while;

  // This handles the case that p is odd:
  if forall{s: s in Steps | #s eq 1} then
    return Rows(JJ), G;
  end if;

  // Now we turn this decomposition of unary/binary components into a maximal norm splitting:
  failset := {};
  while true do
    /*
    AA:= DiagonalJoin(<g: g in G>);
    FF:= MyGram(L, JJ);
    assert AA eq FF;
    */

    // Scale valuations sL, Norm generators aL and Norm valuations uL of the decomposition
    sL, aL, uL := ScalesAndNorms(G, p);

    failset_old := failset;
    b, i, failset := IsMaximalNormSplittingInternal(G, sL, aL, p);
    assert (failset_old eq {}) or (#failset_old gt #failset);
    if b then break; end if; // maximal norm splitting reached!
    assert i gt 0; // if b is false and i=0, something is wrong with our lattice

    // here comes the interesting stuff:
    // the maximal norm splitting condition is violated at index i.
    assert #Steps[i] eq 2; 
    find_j := [uL[k]: k in [i+1..#uL]] cat [2*(sL[i] - sL[k]) + uL[k]: k in [1..i-1]];
    assert #find_j gt 0;
    min, j := Minimum(find_j);

    if j le #aL - i then
      j := j + i;  // we want j to correspond to a Jordan component, not an index in find_j
      assert j gt i;

      // This is case 1 in Beli.
      beli_correction(L, ~G, ~JJ, Steps, i, j, p);
    else
      j := j - (#aL - i); // we want j to correspond to a Jordan component, not an index in find_j
      assert j lt i;

      // This is case 2 in Beli.
      // switch to a basis of the dual lattice L^#: 
      for k in [1..#Steps] do
        for l in [1..#Steps[k]] do
          JJ[Steps[k][l]] *:= Uniformizer^(-sL[k]);
        end for;
        //assert Valuation(Scale(NumberFieldLatticeWithGram( MyGram(L, JJ[Steps[k]]) )), p) eq -sL[k];
      end for;

      // apply case 1 to the reversed orthogonal sum of the dual lattices:
      Reverse(~Steps);
      // update Gram matrices for the reversed, dualized lattice:
      for k in [1..#G] do
        G[k] :=  MyGram(L, RowSubmatrix(JJ, Steps[k]));
      end for;

      assert #Steps[#aL - i + 1] eq 2; // component i is now at position #aL-i+1

      beli_correction(L, ~G, ~JJ, Steps, #aL - i + 1, #aL - j + 1, p);

      Reverse(~Steps);

      // update norms/scales from the updated Gram matrices:
      sL, aL, uL := ScalesAndNorms(Reverse(G), p);
      // dualize again:
      for k in [1..#Steps] do for l in [1..#Steps[k]] do
        JJ[Steps[k][l]] *:= Uniformizer^(-sL[k]);
      end for; end for;

      // update Gram matrices:
      for k in [1..#G] do
        G[k] := MyGram(L, RowSubmatrix(JJ, Steps[k]));
        assert Nrows(G[k]) in {1,2};
      end for;
    end if;
  end while;

  assert [#s: s in Steps] eq [ Nrows(g): g in G ];
  return Partition(Rows(JJ), [ Nrows(g): g in G ]), G;
end intrinsic;

//intrinsic IsGoodBONG(BONG::[], p::RngOrdIdl) -> BoolElt
//{Returns true iff BONG is a good BONG at p, as defined by C. Beli.}
function IsGoodBONG(BONG, p)
  // Given: a BONG of a LatticeModule L at prime p.
  return &and[Valuation(BONG[i], p) le Valuation(BONG[i+2], p): i in [1..#BONG-2]];
//end intrinsic;
end function;

function MakeBONGdim2(A, p);
  // cf. Beli, Lemma 3.3
  // return a BONG of a 2-dimensional lattice represented by the Gram matrix A

  a:= Valuation(A[1,1], p);
  b:= Valuation(A[2,2], p);
  s:= Minimum( [ a, b, Valuation(A[1,2], p) ] );
  det:= Determinant(A);
  assert Valuation(det, p) eq 2*s;
  norm:= Minimum( [ a, b, RamificationIndex(p)+s ] );
  K := NumberField(Order(p));
  S := MatrixRing(K, 2) ! 1;

  // Make the (1,1) entry a norm generator
  if a ne norm then
    if b eq norm then
      SwapRows(~S, 1, 2);
    else
      S[1] +:= S[2];
    end if;
    A := S*A*Transpose(S);
    assert Valuation(A[1,1], p) eq norm;
  end if;
  S[2] +:= A[1,2]/A[1,1] * S[1];

  return S, [ A[1,1], det/A[1,1] ];
end function;

intrinsic GoodBasisOfNormGenerators(L::LatNF, p::RngOrdIdl) -> [], []
{Return a good basis of norm generators of L at a dyadic prime p}
  // Any BONG obtained from a maximal norm splitting is good, cf. Corollary 4.2 in Beli.
  // If a maximal norm splitting is calculated, a good BONG can be read off by joining
  // together the BONGs of the 1- and 2-dimensional components.
  ok, err:= PrimeOK(L, p);
  require ok : err;

  K:= BaseRing(L);
  JJ, G:= MaximalNormSplitting(L, p);
  BONG := []; Diag:= [];

  for i in [1..#G] do
    GG := G[i];
    assert Nrows(GG) le 2;
    if Nrows(GG) eq 2 then
      S, D:= MakeBONGdim2(GG, p);
      BONG cat:= Rows(S * Matrix(JJ[i]));
      Diag cat:= D;
    else
      Append(~BONG,  JJ[i,1]);
      Append(~Diag, GG[1,1]);
    end if;
  end for;
  return BONG, Diag;
end intrinsic;



// 2. Spinor norms of lattices over number fields:

function IsInA(a, p) // needed for G_function
  assert Minimum(p) eq 2;
  e := RamificationIndex(p);
  // cf. Lemma 3.5 in Beli: A is the set of all a \in F^* for which either (-a\not\in (F^*)^2 and D(-a) \subseteq O_p) or (-a\in (F^*)^2 and ord(a)\geq -2e).
  def:= QuadraticDefect(-a, p);
  return ( (Type(def) ne Infty) and (def ge 0) ) or 
         ( (Type(def) eq Infty) and (Valuation(a, p) ge -2*e) );
end function;

function HasPropertyA(L, p) // needed for SpinorNorm
  rL, sL, _, aL := EvenGenusSymbol(L, p);

  r:= Max(rL);
  if r gt 2 then
    vprintf Genus : "[at a prime over 2]: property A is violated because there is a %o-dimensional Jordan component\n", r;
    return false;
  end if;

  nL := [Valuation(aL[i], p): i in [1..#aL]];
  for i in [1..#sL], j in [i+1..#sL] do
    if not ((0 lt nL[j] - nL[i]) and (nL[j] - nL[i] lt 2*(sL[j] - sL[i]))) then
      vprintf Genus : "[at a prime over 2]: property A is violated at %o, %o (norm/scale valuations do not fit)\n", i, j;
      return false;
    end if;
  end for;
  return true;
end function;

function N_function(a, g, p)
  V:= Domain(g);
  // V, g is the result of LocalMultiplicativeGroupModSquares(p).

  // treat the squares separately:
  if QuadraticDefect(a, p) eq Infinity() then return V; end if;

  // cf. paragraph before 1.2 in Beli 2003:
  // N(a) := N(F(\sqrt(a))/F), i.e. the values of the norm mapping of the quadratic extension
  // and N(a) is the orthogonal complement of (<a>(F^*)^2). 
  return Kernel( Matrix(GF(2), 1, [ HilbertSymbol(a, b @ g, p) eq 1 select 0 else 1 : b in Basis(V) ] ));
end function;

// TODO: This is the kernel of what map?
function OnePlusPowerOfP(k, g, p)
  // See Beli 2003, Def. 1. 
  // We expect V, g = LocalMultiplicativeGroupModSquares(p)
  V := Domain(g);
  S := {v@g: v in V};
  S := {s: s in S | RelativeQuadraticDefect(s, p) ge k};
  return sub<V | [s@@g: s in S]>;
end function;

// cf. Beli 2003, Def. 4.
function G_function(a, g, p)
  assert Minimum(p) eq 2;
  // We expect V, g = LocalMultiplicativeGroupModSquares(p)
  V:= Domain(g);

  e := RamificationIndex(p);
  R := Valuation(a, p);
  d := RelativeQuadraticDefect(-a, p);

  if not IsInA(a, p) then 
     vprintf Genus : "G_function, case F\n";
     return N_function(-a, g, p);
  elif Valuation(-4*a, p) eq 0 and IsLocalSquare(-4*a, p) then 
     vprintf Genus : "G_function, case G\n";
     return sub<V|[V.i: i in [1..Dimension(V)-1]]>;
  elif (R gt 4*e) then 
    vprintf Genus : "G_function, case H\n";
    return sub<V| a@@g>;
  elif (2*e lt R) and (R le 4*e) then
    if (d le 2*e - R/2) then
      vprintf Genus : "G_function, case A\n";
      return N_function(-a, g, p) meet (sub<V| (a@@g)> + OnePlusPowerOfP(R + d - 2*e, g, p));
    else
      vprintf Genus : "G_function, case B\n";
      assert GF(2)!R eq 0;
      return (sub<V| (a@@g)>) + OnePlusPowerOfP(R div 2, g, p);
    end if;
  elif (R le 2*e) then
    // printf "e = %o, R = %o, d = %o\n", e, R, d;
    if (d le e - R/2) then
      vprintf Genus : "G_function, case C\n";
      return N_function(-a, g, p);
    elif (e - R/2 lt d) and (d le 3*e/2 - R/4) then
      assert R mod 2 eq 0;
      vprintf Genus : "G_function, case D\n";
      return N_function(-a, g, p) meet OnePlusPowerOfP(IntegerRing()!(R/2) + d - e, g, p);
    else
      vprintf Genus : "G_function, case E\n";
      // Attention: Use the Floor function wherever Beli writes stuff in square brackets. 
      // This is due to his citing Hsia's papers, which have this convention.
      return OnePlusPowerOfP(e - (Floor(e/2 - R/4)), g, p);
    end if;
  else error "this never happens.";
  end if;
end function;

intrinsic SpinorNorm(L::LatNF, p::RngOrdIdl) -> ModTupFld, Map, BoolElt
{The spinor norm of L at p. Returns a subspace of the GF(2)-vector space K_p^*/(K_p^*)^2 and a boolean which is true iff the spinor norm is exactly the units O_p^*}

  ok, err:= PrimeOK(L, p);
  require ok: err;

  V, g := LocalMultiplicativeGroupModSquares(p);

  if Minimum(p) ne 2 then
    // cf. Satz 3 in Kneser, "Klassenzahlen indefiniter quadratischer Formen in drei oder mehr Veränderlichen":
    J, G, E := JordanDecomposition(L, p);
    for i in [1..#G] do
      if Rank(G[i]) ge 2 then
        vprintf Genus : "This lattice has a 2-dimensional Jordan constituent, and p is odd. Spinor norm is either F^* or O_F^*(F^*)^2, i.e. we will find a vector space of dimension %o or %o.\n", Rank(V)-1, Rank(V);
        // well, which of the two is the case?
        if #{e mod 2: e in E} lt 2 then
          // the units only: 
          return sub<V | [V.i: i in [1..Dimension(V)-1]]>, g, true;
        else
          // the whole group:
          return V, g, false;
        end if;
      end if;
    end for;
    // this is the case where p is odd and each
    // of its Jordan components has dimension 1. In this case, the units
    // need not be contained in the Spinor norm.

    // generators of the (principal) norm ideals of the Jordan
    // components: since p is odd, the norms (and the scales) are just the 
    // dimensions of the Jordan components
    NormGens := [g[1,1]: g in G];
    TwoNormGens := [ NormGens[i]*NormGens[j] : j in [i..#NormGens], i in [1..#NormGens] ];
    TwoNormVectors := [x@@g: x in TwoNormGens];

    vprintf Genus : "odd p, norm generators of the %o Jordan components are: \n\n%o\n\n Products of two elements are \n\n%o\n\nTwoNormVectors:\n%o\n\n", #G, NormGens, TwoNormGens, TwoNormVectors;

    // cf. Kneser 1956, Satz 3:
    SN := sub<V| TwoNormVectors>;
  else
    e:= RamificationIndex(p);
    SN := sub<V| 0>;
    _, BONG := GoodBasisOfNormGenerators(L, p);
    vprintf Genus : "BONG = %o\n", BONG;
    // assert IsGoodBONG(BONG, p);
    if not HasPropertyA(L, p) then
      vprintf Genus : "This lattice does not have property A. Spinor norm is either F^* or O_F^*(F^*)^2, i.e. we will find a vector space of dimension %o or %o.\n", Rank(V)-1, Rank(V);
      // Using section 7, Thm. 3 in Beli 2002, one can decide which of the two cases applies. 
      // This is why we needed to compute a *good* BONG:
      for i in [1..#BONG-1] do
        BG := Basis(G_function(BONG[i+1]/BONG[i], g, p));
        if exists{bg: bg in BG | bg[#Basis(V)] ne 0} then
          return V, g, false;
        end if;
      end for;
      for i in [1..#BONG-2] do
        if Valuation(BONG[i], p) eq Valuation(BONG[i+2], p) then
          assert IsEven(Valuation(BONG[i+1], p) - Valuation(BONG[i], p));
          if GF(2)!((Valuation(BONG[i+1], p) - Valuation(BONG[i], p)) div 2) ne GF(2)!e then
            // the whole group:
            return V, g, false;
          end if;
        end if;
      end for;

      // if all checks have passed, the Spinor norm is exactly the units:
      return sub<V | [V.i: i in [1..Dimension(V)-1]]>, g, true;
    end if;

    // cf. Beli 2003, Thm. 1
    for i in [2..Rank(L)] do SN +:= G_function(BONG[i]/BONG[i-1], g, p); end for;

    // for why we can take the Minimum in what follows here, see the remark on p. 161 in Beli 2003:
    Diff:= { Valuation(BONG[i+2], p) - Valuation(BONG[i], p) : i in [1..#BONG-2] };
    if exists{d: d in Diff | IsEven(d)} then
      alpha := Minimum({d div 2 : d in Diff | IsEven(d) });
      SN +:= OnePlusPowerOfP(alpha, g, p);
    end if;
  end if;

  return SN, g, SN eq sub<V | [V.i: i in [1..Dimension(V)-1]]>;
end intrinsic;




/******************************************************************
*                                                                 *
* The Neighbour intrinsics provided by this package file          *
*                                                                 *
******************************************************************/

function SmallestNormGoodPrime(L)
  // return a smallest-norm prime p which is not over 2 and L_p is modular
  // -- making neighbor generation possible (and hopefully fast!).

  K:= BaseRing(L);
  R:= Integers(K);
  Bad:= { p : p in BadPrimes(L) | not IsModular(L, p) }; 
  p:= 2;
  repeat
    p:= NextPrime(p);
    P:= Support(p*R) diff Bad;
  until #P ne 0;
  P:= Setseq(P);
  Bad:= #Bad eq 0 select 2*R else 2 * &*Bad; 
  limit:= Minimum( {Norm(q): q in P} );
  // Now there might be a smaller prime ...
  P:= PrimesUpTo(limit, K : coprime_to:= Bad);
  return P[1];
end function;

forward PrepareClassGroup;

//intrinsic MapIdeleIntoClassGroup(L::LatMod, Idele::[]: AtInfinity:=false) -> GrpAbElt
//{ map an idele into the class group associated to L. The parameter Idele must be a list of tuples <p, a_p>, where p is a prime of BaseRing(L), and a_p is an element of K^* (interpreted as an element of the completion K^*_p). The parameter AtInfinity can be a list of tuples <v, +1 or -1>, where v is an element of InfinitePlaces(BaseRing(L)). All places, finite or infinite, which are unspecified are interpreted as 1.}
function MapIdeleIntoClassGroup(L, Idele : AtInfinity:= false)
  if not assigned(L`GenusComp) then PrepareClassGroup(L); end if;

  F := BaseRing(L);
  R := Integers(F);
  // sanity checks: 
  error if not &and[(Type(i) cmpeq Tup) and (#i eq 2) and ISA(Type(i[1]), RngOrdIdl) and (Order(i[1]) cmpeq R) and ISA(Type(i[2]), FldNumElt) : i in Idele], "Idele: must be a list of tuples <p, a_p> with p::RngOrdIdl, a_p::FldNumElt";
  IP := L`GenusComp`Inf;
  the_idele_inf := [1^^#IP];
  if AtInfinity cmpne false then
    error if not Type(AtInfinity) eq SeqEnum, "AtInfinity: must be false, or a list";
    error if not &and[(Type(i) cmpeq Tup) and (#i eq 2) and (i[2] in [-1, 1]) and (i[1] in IP): i in AtInfinity], "AtInfinity: must be a list of tuples <v, +1/-1> with v in RealPlaces(BaseRing(L))";
    for i in AtInfinity do
      idx:= Index(IP, i[1]);
      if idx ne 0 then the_idele_inf[idx] := i[2]; end if;
    end for;
  end if;

  // The finite places we need to make congruent to 1 in order to be able to map into the class group:
  the_idele := [R!1: p in L`GenusComp`RayPrimes];
  for i in Idele do
    j := Index(L`GenusComp`RayPrimes, i[1]);
    if j gt 0 then the_idele[j] := i[2]; end if;
  end for;

  // L`GenusComp`hom_RCG is the map from L`GenusComp`RCG into the divisors that Magma returns. 
  // So, only the ideals D that are coprime to the ray  lie in the codomain of the map and can be mapped 
  // into L`GenusComp`RCG via I@@L`GenusComp`hom_RCG.
  // The ideles we are considering here are considered to be representatives of classes of ideles (modulo (F^*_S)*J^L, 
  // where F^*_S is the set of principal ideles which are totally positive at the infinite places where the envelopping space V of L is anisotropic, 
  // and where J^L is the set of ideles which lie in the spinor norm of L at all finite places. 

  // So, we may modify the ideles in the following two ways without changing their class:
  // 1) multiply every component by an element s of F^*
  // 2) multiply any individual component (at p) by an element of the spinor norms of L_p. In particular, any component is only relevant modulo squares.
  // Thus we can achieve that the idele in question is congruent to 1 modulo the ray M that defines L`GenusComp`RCG.
  // The idele is then interpreted as the ideal \prod_p{p^Valuation(idele_p, p)}, which can be mapped into the class group by Magma.
  // first, we need to be able to invert modulo the divisor L`GenusComp`M:

  if &or[Valuation(the_idele[i], L`GenusComp`RayPrimes[i]) gt 0: i in [1..#the_idele]] then
    // we need to correct with an element of F^* which is positive at the relevant infinite places.
    // Since InverseMod only works for finite places, we will first correct only the finite places ...
    s := WeakApproximation( Setseq( L`GenusComp`RayPrimes ), [-Valuation(the_idele[i], L`GenusComp`RayPrimes[i]): i in [1..#L`GenusComp`RayPrimes]]);
  else
    s := F!1;
  end if;

  // Now s * Idele is a unit at the RayPrimes
  // Now rescale once more with some t in F^* such that t*s*Idele = 1 mod MM and has the correct signs.

  sIdele:= [ R ! quo< R | L`GenusComp`MM[i] > ! (s*the_idele[i]) : i in [1..#the_idele] ];
  x := (#L`GenusComp`RayPrimes eq 0) select R ! 1 else InverseMod(CRT(sIdele, L`GenusComp`MM), L`GenusComp`M);
  // Unfortunately, CRT wants SORTED integers ... 
  Inf:= [ idx where _, idx:= IsInfinite(v) : v in L`GenusComp`Inf ];
  Signs:= [ Sign(Evaluate(s,IP[j])) * the_idele_inf[j] : j in [1..#IP] ];
  ParallelSort(~Inf, ~Signs);
  t := CRT(L`GenusComp`M, Inf, x, Signs);

  // Now this element s should do the trick:
  s *:= t;

  // Check if everything is ok.
  assert &and[ IsOne(quo< R | L`GenusComp`MM[k] > ! (s * the_idele[k])): k in [1..#the_idele]];
  assert &and[ Evaluate(s * the_idele_inf[j], IP[j]) gt 0: j in [1..#IP]];

  // This idele can be sent into the ray class group L`GenusComp`RCG via the (inverse of the) homomorphism returned by Magma.
  // We first interpret it as the ideal which will actually have to be mapped:
  // i.e., we just collect the p-valuations at the noncritical places (p notin RayPrimes):
  temp := [ Idele[j][1]^Valuation(Idele[j][2], Idele[j][1]): j in [1..#Idele]]; 
  ideal:= #temp eq 0 select ideal< R | s > else s * &*temp;

  g:= ideal @@ L`GenusComp`hom_RCG;

  // The second return value is the element in the factor group of the ray class group actually corresponding to a proper spinor genus in Genus(L).
  // Note that this hom might not be set up yet, if this function gets called from PrepareClassGroup.
  if assigned L`GenusComp`hom_RCG_FactorGroup then
    return g, g@L`GenusComp`hom_RCG_FactorGroup;
  else
    return g, _ ;
  end if;
end function;

procedure PrepareClassGroup(L)
  if assigned L`GenusComp then return; end if;
  F := BaseRing(L);
  R := Integers(F);
  U := PowerIdeal(R);
  L`GenusComp := rec< GenusComputationFormat | M:= 1*R, MM:= [ U | ], RayPrimes:= {@ U | @} /*, GroupElementsToPrimes:=AssociativeArray()*/ >;

  Gens := [];
  for p in BadPrimes(L : Even) do
    Spinors, g, ExactlyTheUnits := SpinorNorm(L, p);

    // we only need to carry around those finite places where the Spinor norm is not exactly the units:
    if ExactlyTheUnits then continue; end if;

    V:= Domain(g);
    vprintf Genus : "Found a prime over %o where the Spinor norm is not exactly the units of the order. dim(Spinors)=%o, dim(LocalMultGrpModSq)=%o\n", Minimum(p), Dimension(Spinors), Dimension(V);
    Include(~L`GenusComp`RayPrimes, p);
    // a basis of the Spinor norm of L at p, when viewed (modulo squares) as an F_2-vector space  (cf. LocalMultiplicativeGroupModSquares)
    b := Basis(Spinors);
    Gens cat:= [<p, F!(a@g)>: a in b];
    assert &and[Valuation(gg, p) in {0,1}: gg in [a@g: a in b]];  // we rely on LocalMultiplicativeGroupModSquares mapping to 0- and 1-valued elements, and on the last base vector of V to represent a uniformizer of p

    I:= p^(1+2*Valuation(Order(p)!2, p));
    L`GenusComp`M *:= I;
    Append(~L`GenusComp`MM, I);
  end for;
  // Now L`GenusComp`M contains a ray M and L`GenusComp`MM is the support of this ray.
  // We now compute the indefinite real places of L
  L`GenusComp`Inf:= {@ v: v in RealPlaces(F) | not IsIsotropic(L, v) @};
  // Now get the ray class group to M*I.
  I:= Sort([ i where _, i:= IsInfinite(v) : v in L`GenusComp`Inf ]);
  L`GenusComp`RCG, L`GenusComp`hom_RCG := RayClassGroup(L`GenusComp`M, I);

  // Now we map the generators into the class group to create the factor group.
  RCG_SubgroupGens := [ MapIdeleIntoClassGroup(L, [g]) : g in Gens ];
  L`GenusComp`RCG_Subgroup := sub<L`GenusComp`RCG | RCG_SubgroupGens, 2*L`GenusComp`RCG>;
  L`GenusComp`RCG_FactorGroup, L`GenusComp`hom_RCG_FactorGroup := quo<L`GenusComp`RCG | L`GenusComp`RCG_Subgroup >;

  vprintf Genus : "*** PrepareClassGroup: ray class group: size = %o\n", #L`GenusComp`RCG;
  vprintf Genus : "*** PrepareClassGroup: subgroup of ray class group: size = %o\n", #L`GenusComp`RCG_Subgroup;
  // Step 2: find good generators (that is: generators which are not dyadic, and not in BadPrimes(L) 
  // -- so that neighbour generation is always possible), of this factor group.
  // Only pick ideles of the form (1,...,1,p,1,...,1) so that:
  // a)  nothing has to be corrected before they can be mapped down into the factor group
  // b)  we can simply store the prime ideal and know that it corresponds to the (1,...,1,p,1,...,1) 
  // These prime ideals will be stored in L`GenusComp`CriticalPrimes.

  // the primes which generate the spinor genera in Genus(L):
  // if L is indefinite, we need one prime for each factor group element.
  // if L is definite, we only need a generating set of primes for the factor group.

 // definite:= #L`GenusComp`Inf eq Signature(F);
 // L`GenusComp`CriticalPrimes := GetCriticalPrimes(L: FullList := not definite);

  // vprintf Genus : "*** good primes over %o (together with the squares) generate the subgroup.\n", [Minimum(q): q in L`GenusComp`CriticalPrimes];
  // vprintf Genus : "*** PrepareClassGroup: factor group of ray class group: size = %o (this is the number of Spinor `+` genera in Genus(L))\n", #L`GenusComp`RCG_FactorGroup;
end procedure;

function GetGeneratingPrimes(L: ModOut:= [])
  PrepareClassGroup(L);

  F := BaseRing(L);
  R := Integers(F);
  Primes := [];
  Elements:= [];
  // We start with the subgroup generated by ModOut and enlarge it until we reach the full group.
  S := sub<L`GenusComp`RCG_FactorGroup | ModOut >; 
  Bad:= BadPrimes(L);

  pp:= 2;
  GoodPrimes:= {};

  while #S lt #L`GenusComp`RCG_FactorGroup do
    while #GoodPrimes eq 0 do
      pp:= NextPrime(pp);
      GoodPrimes:= Support(pp * R) diff Bad;
    end while;
    p := Rep(GoodPrimes); Exclude(~GoodPrimes, p);

    // map the (1,...,1,pi,1,...,1) idele into the class group, where pi is a uniformizing element of p:
    _, h := MapIdeleIntoClassGroup(L, [<p, F!PrimitiveElement(p)>]);

    if h notin S then
      Append(~Primes, p);
      Append(~Elements, h);
      S:= sub< L`GenusComp`RCG_FactorGroup | S, h >;
    end if;
  end while;

  // Note that since L`GenusComp`RCG_FactorGroup is an elementary
  // abelian 2-group the above code produces a minimal generating set.

  return Primes, Elements;
end function;

intrinsic Neighbours(L::LatNF, p::RngOrdIdl : AutoOrbits:= false, CallBack:= false, Limit:= Infinity()) -> [], []
{The p-neighbours of L}
  ok, err:= PrimeOK(L, p);
  require ok : err;

  // WARNING!
  // If you dare to change the lattices that we accept, make sure that
  // the genus symbol information of the neighbours is set up correctly
  // (or not at all) at the end of this intrinsic -- MK

  R:= BaseRing(L);
  ok, rescale:= IsModular(L, p);
  require ok: "The lattice must be locally modular";
  require Rank(L) ge 2 : "The rank of the lattice must be at least 2";
  require IsIsotropic(L, p) : "The lattice must be locally isotropic";
  e:= Valuation(R ! 2, p);
  require e eq 0 or Valuation(Norm(L), p) ge e : "The lattice must be even";

  UseCallBack:= CallBack cmpne false;
  // We certainly will find one lattice anyway
  if Limit eq 1 and not UseCallBack then AutoOrbits:= false; end if;

  F:= FieldOfFractions(Integers(BaseRing(L)));
  B:= LocalBasis(L, p : Type:= "Submodule"); n:= #B;
  n:= #B;
  B:= Matrix(F, Matrix(B));
  k, h:= ResidueClassField(p);
  pi:= PrimitiveElement(p);
  piinv:= WeakApproximation([p],[-1]);
  Form:= S * Matrix(F, PseudoGramMatrix(L)) * Transpose(S) where S:= B * Matrix(F, L`BM)^-1;
  if rescale ne 0 then
    Form:= piinv^rescale * Form;
  end if;
  U:= VectorSpace(F, n, Form);
  pForm:= Matrix(k, n, [ x @ h : x in Eltseq(Form) ]);
  W:= VectorSpace(k, n, pForm);

  if AutoOrbits cmpne false then
    if AutoOrbits cmpeq true then
      require IsDefinite(L) : "The lattice must be definite when AutoOrbits is set";
      A:= AutomorphismGroup(L : NaturalAction:= false);
    else
      A:= AutoOrbits;
    end if;
    BM:= Matrix(F, L`BM);
    S1:= Solution(BM, B);
    S2:= Solution(B, BM);
    A:= [Matrix(k, n, [ x @ h : x in Eltseq(S1 * Matrix(F, A.i) * S2) ]) : i in [1..Ngens(A)]];
    A:= [ a: a in A | not IsScalar(a) ];
    AutoOrbits:= #A ge 1;
  end if;
  if AutoOrbits then
    A:= sub< GL(n,k) | A >;
    LO:= MyLineOrbits(A);
  else
    LO:= ProjectiveLineProcess(W);
  end if;

  Result:= []; E:= [];
  pM:= p*Module(L: IP:= false);
  keep:= true; cont:= true; found:= false;
//#LO, "orbits";
  for i in [1..#LO] do
//  if i mod 100000 eq 0 then i; end if;
    w:= AutoOrbits select W ! LO[i,1] else Next(LO);
    if (w,w) ne 0 then continue; end if;
    if IsZero(w*pForm) then continue; end if;   // for "bad primes"
    x:= U ! [e @@ h: e in Eltseq(w)];
    nrm:= (x,x);
    val:= Valuation(nrm, p);
    assert val gt 0;
    if val le e then continue;  // can only happen if p even
    elif val eq e+1 then
      // make val > e+1
      ok:= exists(r){r : r in [1..n] | (w, W.r) ne 0}; assert ok;
      a:= R ! ((nrm / (2*pi * (x,U.r))) @ h @@ h);
      x := x - a * pi * U.r;
      assert Valuation( (x,x), p ) ge e+2;
    end if;
    found:= true;

    // normalize x
    ok:= exists(kk){ i : i in [1..n] | x[i] @ h ne 0 }; assert ok;
    x *:=  R ! (((x[kk] @ h)^-1) @@ h);
    if e ne 0 then
      x*:= 1 + ((((x[kk]-1)/pi) @ h) @@ h) * pi;
      assert Valuation(x[kk] - 1, p) ge 2;
    end if;

    xF:= x*Form;
    ok:= exists(mm){ r : r in [1..n] | r ne kk and Valuation(xF[r], p) eq 0 }; assert ok;

    VV:= Matrix([ x * piinv, 0 * pi*U.mm ] cat [ U.i - ((xF[i]/xF[mm]) @ h @@ h)*U.mm : i in [1..n] | i ne kk and i ne mm ]);
    V:= VV * B;
    LL:= SetupLatticeInSpace(L, pM + Module(Rows(V)));

    if UseCallBack then
      keep, cont:= CallBack(Result, LL);
    end if;
    if keep then Append(~Result, LL); Append(~E, AutoOrbits select LO[i,2] else 1); end if;
    if not cont or #Result ge Limit then break; end if;
  end for;
  // This cannot happen for the current input we allow
  if not found then "Warning: L_p/pL_p has no suitable isotropic vector!"; end if;

  // Set up the genus symbols for all neighbours found.
  //assert forall{LL: LL in Result | IsLocallyIsometric(L, LL, p)};
  if assigned L`GenusSymbols then
    for i in [1..#Result] do Result[i]`GenusSymbols:= L`GenusSymbols; end for;
  end if;

  return Result, E;
end intrinsic;

intrinsic IteratedNeighbours(L::LatNF, p::RngOrdIdl: UseAuto:= true, Limit:= Infinity()) -> []
{The iterated p-neighbours of L}
  require IsDefinite(L) : "L must be definite"; // otherwise we cannot test for isometry
  // There are a lot of more checks needed, which will happen in Neighbours ... 

  Result := [ L ];
  i:= 1;
  while (i le #Result) and (#Result lt Limit) do
    // keep if not isometric, continue until the whole graph has been exhausted.
    call := func < Res, M | forall{ x: x in Res cat Result | not IsIsometric(M, x) }, true >;
    // The Limit condition is checked here.
    Result cat:= Neighbours(Result[i], p: CallBack:=call, AutoOrbits:= UseAuto, Limit:= Limit - #Result);
    i +:= 1;
  end while;
  return Result;
end intrinsic;

intrinsic GenusRepresentatives(L::LatNF : Limit:= Infinity(), UseAuto:= true) -> []
{A list of representatives of the isometry classes in the genus of L}

  require Rank(L) ge 3 : "Only implemented for lattices of rank at least 3."; // otherwise the isomorphism to the class group fails, cf. §102 in O'Meara.
  require (Limit ge 1): "Limit should be a positive integer or Infinity().";

  // There are infinitely many primes generating our ray class group for L,
  // so there is no need to choose dyadic primes. Neighbour generation
  // for dyadic primes is a pain and should be avoided.

  F:= BaseRing(L);
  definite, a:= IsDefinite(L);

  if definite then
      if not IsOne(a) then
         L:= InnerProductScaling(L, a);
      end if;
      // our favorite prime of small norm:
      good := SmallestNormGoodPrime(L);

      // Let's see if the favorite prime switches proper spinor genera:
      // If it does, we can mod it out to save some time.
      _, h := MapIdeleIntoClassGroup(L, [<good, F!UniformizingElement(good)>]);
      Primes:= GetGeneratingPrimes( L : ModOut:= [ h ] );

      vprint Genus: "Calling iterated neighbours with prime over", Minimum(good), "of norm", Norm(good);
      Result:= [ IteratedNeighbours(L, good: UseAuto:= UseAuto, Limit:= Limit) ];
      found:= #Result[1];
      vprint Genus: "Starting with", found, "lattices.";
      i:= 1;
      while found lt Limit and (i le #Result) do 
         for p in Primes do
            LL:= Neighbours(Result[i,1], p : Limit:= 1)[1];
            if forall{X : X in R, R in Result | not IsIsometric(X, LL)} then
              vprint Genus: "New spinor genus found. Calling iterated neighbours again.";
              Append(~Result, IteratedNeighbours(LL, p : UseAuto:= UseAuto, Limit:= Limit));
              found +:= #Result[#Result];
              vprint Genus: "New number of lattices:", found;
            end if;
            if found ge Limit then break; end if;
         end for;
         i +:= 1;
      end while;

      Result := &cat Result; 
      assert forall{<i,j>: j in [1..i-1], i in [1..#Result] | not IsIsometric(Result[i], Result[j]) };
      if not IsOne(a) then
         Result:= [ InnerProductScaling(L, ainv) : L in Result ] where ainv:= 1/a;
      end if;
  else
      // The indefinite case.
      // What makes this case easier: proper spinor genera and proper classes coincide (when rank(L) >= 3, cf. 104:5 in O'Meara). 
      // What makes this case harder: Aut(L) is infinite. We cannot test for isometry of global lattices.
      // How do we still achieve a system of representatives for the classes in Genus(L), and avoid hitting a class twice if it decomposes into two proper classes?: 
      // We explicitly calculate the group element corresponding to an improper automorphism in O(V) that switches two proper classes, and mod it out. 
      // The group element can be calculated by explicitly mapping the spinor norm of the reflection at any anisitropic vector.

      G := PseudoGramMatrix(L);
      ind := [i: i in [1..Nrows(G)] | not IsZero(G[i][i])];
      if #ind eq 0 then
        ind := [i: i in [2..Ncols(G)] | not IsZero(G[1][i])];
        error if #ind eq 0, "Lattice is degenerate";
        // now Phi(v_1+v_i, v_1+v_i) = 2*Phi(v_1, v_i), for any i in ind.
        spinornorm := 2*G[1][ind[1]];
      else
        spinornorm := G[ind[1],ind[1]];
      end if;
      // now spinornorm is a representative of the spinor norm of the reflection at x_i for some i, or at (x_1+x_i) for some i.
      

      PrepareClassGroup(L); 
      norm:= Norm(L);
      R:= Integers(F);
      Differ:= { p: p in Support(norm) join Support( ideal< R | spinornorm > ) | Valuation(norm, p) ne Valuation(spinornorm, p) };
      Idele:= [];
      for p in Differ join L`GenusComp`RayPrimes do
        G, pi:= GenusSymbol(L, p);
	if Minimum(p) eq 2 then
	  norm:= G[1,4];
	else
	  norm:= pi^G[1,2];
          if G[1,1] eq 1 and G[1,3] eq -1 then
	    k,h:= ResidueClassField(p);
	    norm *:= Nonsquare(k) @@ h;
  	  end if;
	end if;
	Append(~Idele, <p, spinornorm * norm >);
      end for;

      _, h := MapIdeleIntoClassGroup(L, Idele);

      // If h is the identity, then classes and proper classes coincide.
      // Othwerwise, every class decomposes into two proper ones.
      // So modding out by h achieves that we only represent classes.

      Primes:= GetGeneratingPrimes( L : ModOut:= [ h ] );
      size:= #L`GenusComp`RCG_FactorGroup;
      if not IsIdentity(h) then size div:= 2; end if;
      assert 2^#Primes eq size;

      Result:= [L];
      if #Primes ne 0 then
        Prod:= &* Primes;
        for p in Primes do
          N:= Neighbours(L, p : Limit:= 1)[1];
          a:= Prod div p;
          for i in [1..#Result] do
            // at p we want N_p and at all other places q, we want Result[i]_q:
            LL:= p * Result[i] + a * N;
            Append(~Result, LL);
	    if #Result ge Limit then break p; end if;
          end for;
        end for;
      end if;
      assert forall{LL: LL in Result | IsSameGenus(L, LL) };
  end if;

  return Result;
end intrinsic;
