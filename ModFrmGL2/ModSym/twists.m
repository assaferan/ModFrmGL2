// Following correspondence with Joshua Box, this is implementation of twists
// in order to get q-expansions.

import "arith.m" : SmallestPrimeNondivisor;
import "../ModFrm/q-expansions.m" : PowerSeriesNormalizeMagma;
import "linalg.m" : Restrict;
import "operators.m" : ActionOnModularSymbolsBasis;
import "qexpansion.m" : EigenvectorModSymSign,
                               EigenvectorOfMatrixWithCharpoly,
                               QuickIrredTest;
import "modsym.m" : GetDegeneracyReps,
                           GetGLModel,
                           GetRealConjugate;
import "core.m" : ConvFromModularSymbol;

function TwistBasis_old(N, prec)
    X := DirichletGroupFull(N);
    L := BaseRing(X);
    X_even := [chi : chi in Elements(X) | Evaluate(chi, -1) eq 1];
    M := ModularSymbols(CongruenceSubgroup(N), 2, Rationals(), 0);
    S := CuspidalSubspace(M);
    // D := NewformDecomposition(S);
    D := Decomposition(S, HeckeBound(S));
    v1_plus := ChangeRing(EigenvectorModSymSign(D[1], 1), L);
    v1_minus := ChangeRing(EigenvectorModSymSign(D[1], -1), L);
    twist_basis_plus := [];
    twist_basis_minus := [];
    u := [1, 1, 0, 1]; 
    u_mat := Transpose(ActionOnModularSymbolsBasis(u, M));
    for chi in X_even do
	R_chi := ChangeRing(&+[Evaluate(chi^(-1), t) * u_mat^t : t in [0..N-1]], L);
	Append(~twist_basis_plus, v1_plus * R_chi);
	Append(~twist_basis_minus, v1_minus * R_chi);
    end for;
    twist_basis := twist_basis_plus cat twist_basis_minus;
    assert sub<Universe(twist_basis) | twist_basis> eq ChangeRing(DualVectorSpace(S), L);
    f := qEigenform(D[1], prec);
    K := BaseRing(Parent(f));
    KL := Compositum(K,L);
    R := PowerSeriesRing(KL);
    twist_f_basis := [R | Twist(f, chi) : chi in X_even];
    return twist_basis, twist_f_basis;
end function;

function IsCompatibleChar(M1, M2)
    eps1 := DirichletCharacter(M1);
    eps2 := DirichletCharacter(M2);
    return
	IsCoercible(Parent(eps1), eps2) and (Parent(eps1)!eps2 eq eps1); 
end function;

function NewformDecompositionSubspaceMaps(M)
    ms := MultiSpaces(M);
    S := CuspidalSubspace(M);
    D := NewformDecomposition(S);
    DD := [* *];
    for d in D do
	M_old := AmbientSpace(d);
	if not IsIdentical(M_old, M) then
	    assert exists(i){i : i in [1..#ms] | IsCompatibleChar(ms[i],M_old)};
	    M_new := ms[i];
	    quo_mat := Matrix([Representation(MultiQuotientMaps(M)[i](x))
			       : x in Basis(M)]);
	    quo_lev := Level(M_new) div Level(M_old);
	    divs := Divisors(quo_lev);
	    betas := [];
	    ims := [];
	    for m in divs do
		dmap := DegeneracyMatrix(M_new, M_old, m);
		beta := Transpose(dmap) * Transpose(quo_mat);
		im_d := DualVectorSpace(d) * beta;
		Append(~ims, im_d);
		Append(~betas, <beta, quo_lev div m>);
	    end for;
	    for j in [1..#betas] do
		Append(~DD, <d, betas[j], betas>);
	    end for;
	else
	    one := <IdentityMatrix(BaseRing(d), Dimension(M)), 1>;
	    Append(~DD, <d, one, [one]>); 
	end if;
    end for;
    return DD;
end function;

function NewformDecompositionSubspaceMaps2(M, prec)
    ms := MultiSpaces(M);
    S := CuspidalSubspace(M);
    D := NewformDecomposition(S);
    DD := [* *];

    F := Rationals();
    evs := AssociativeArray(D);
    printf "Computing eigenvectors...\n";
    for d in D do
	evs_d := [];
	v := EigenvectorModSymSign(d,1);
	f := qEigenform(d, prec);
        K := NormalClosure(BaseRing(v));
        F := Compositum(F, K);
        assert IsIsomorphic(K, NormalClosure(BaseRing(Parent(f))));
	f := PowerSeriesRing(K)!f;
	gal, _, psi := AutomorphismGroup(K, Rationals());
	aut := [psi(g) : g in gal];
	p := 2;
	sig := aut;
 
	while (#sig gt 1) do
	    T_p := ChangeRing(DualHeckeOperator(AmbientSpace(d),p), K);
	    a_p := Coefficient(f,p);
	    sig := [sigma : sigma in sig |
		    a_p * ApplyAut(sigma, v) eq
		    ApplyAut(sigma, v) * T_p];
	
	    p := NextPrime(p);
	end while;
	v := ApplyAut(sig[1], v);
	for sig in aut do
	    Append(~evs_d, <ApplyAut(sig, v), ApplyAut(sig, f)>);
	end for;
	evs[d] := <evs_d, K>;
    end for;

    printf "Preparing images in M_k(Gamma(N))...\n";
    for d in D do
	K := evs[d][2];
	M_old := AmbientSpace(d);
	if not IsIdentical(M_old, M) then
	    assert exists(i){i : i in [1..#ms] | IsCompatibleChar(ms[i],M_old)};
	    M_new := ms[i];
	    quo_mat := Matrix([Representation(MultiQuotientMaps(M)[i](x))
			       : x in Basis(M)]);
	    quo_lev := Level(M_new) div Level(M_old);
	    divs := Divisors(quo_lev);
	    betas := [];
	    for m in divs do
		dmap := DegeneracyMatrix(M_new, M_old, m);
		beta := Transpose(dmap) * Transpose(quo_mat);
		// Append(~betas, <ChangeRing(beta, K), quo_lev div m>);
		Append(~betas, <ChangeRing(beta, K), m>);
	    end for;
	    for j in [1..#betas] do
		for ev in evs[d][1] do
		    v, f := Explode(ev);
		    V := sub<Parent(v)|[v]>;
		    _<q> := Parent(f);
		    Append(~DD, <V, betas[j], betas,
				 betas[j][2]*Evaluate(f, q^betas[j][2])>);
		end for;
	    end for;
	else
	    one := <IdentityMatrix(K, Dimension(M)), 1>;
	    for ev in evs[d][1] do
		v, f := Explode(ev);
		V := sub<Parent(v)|[v]>;
		Append(~DD, <V, one, [one], f>);
	    end for;
	end if;
    end for;
    return DD, F;
end function;

function TwistBasis0(N, prec)
    X := DirichletGroupFull(N);
    L := Compositum(CyclotomicField(N), BaseRing(X));
    X_even := [chi : chi in Elements(X) | Evaluate(chi, -1) eq 1];
    M := ModularSymbols(CongruenceSubgroup(N));
    S := CuspidalSubspace(M);
    D, K := NewformDecompositionSubspaceMaps2(M, prec);

    KL := Compositum(K, L);
    R<q> := PowerSeriesRing(KL);
    
    indices_covered := {};
    next_idx := 1;
    twist_bases := [* *];
    twist_f_bases := [* *];

    printf "Calculating %o twisting operators....\n", #X_even;

    conds := {Conductor(eps) : eps in X_even};
    u_mats := AssociativeArray(conds);
    u_mats_powers := AssociativeArray(conds);
    for c in conds do
	u := [c, 1, 0, c];
	// This seems like the bottleneck at the moment. How can we do it more quickly?
	u_mats[c] := Transpose(ActionOnModularSymbolsBasis(u, M));
        u_mats_powers[c] := [Parent(u_mats[c])!1];
        while #u_mats_powers[c] lt c do
	  u_mats_powers[c] := Append(u_mats_powers[c],
		       u_mats[c]*u_mats_powers[c][#u_mats_powers[c]]);
        end while;
    end for;
    
    chars := [* *];
    for eps in X_even do
	c := Conductor(eps);
	chi := DirichletGroupFull(c)!eps;
	u_mat := u_mats[c];
        u_mat_powers := u_mats_powers[c];
	// The ChangeRing is killing us. Let's try to calculate in smaller fields
//	R_chi := ChangeRing(&+[Evaluate(chi^(-1), t) * u_mat^t : t in [0..c-1]], KL);
        R_chi := ChangeRing(&+[Evaluate(chi^(-1), t) * u_mat_powers[t+1] : t in [0..c-1]], KL);
	g := GaussSum(chi^(-1));
	Append(~chars, <BaseExtend(chi, KL), R_chi, KL!g>);
    end for;
    
    while next_idx le #D do
	printf "Covered %o out of %o hecke irreds...\n", #indices_covered, #D;
	f := D[next_idx][4];
	beta := D[next_idx][2];
	// f := Evaluate(f, q^beta[2]);
	v1_plus := Basis(D[next_idx][1])[1];
	v1_plus := ChangeRing(v1_plus * beta[1], KL);
	twist_basis_plus := [];
	twist_f_basis := [R | ];
	
	for char in chars do
	    chi := char[1];
	    R_chi := char[2];
	    g := char[3];
	    
	    v_plus := v1_plus * R_chi;
	    assert exists(j){j : j in [1..#D] |
			     v_plus in ChangeRing(D[j][1] * D[j][2][1] ,KL)};
	    betas := D[j][3];
	    
	    v_plus_orig := Solution(ChangeRing(D[j][2][1], KL), v_plus);
	    
	    f_twist := g * Twist(R!f, chi);
	    assert &and[Coefficient(f_twist,n) eq 0 : n in [0..prec-1]
			    | n mod beta[2] ne 0];
	    f_twist_orig := &+[beta[2]^(-1)*Coefficient(f_twist,beta[2]*n)*q^n
			       : n in [0..(prec - 1)]] + O(q^prec);
	    
	    for beta in betas do
		v_p := v_plus_orig * ChangeRing(beta[1], KL);
		f_twist_new := beta[2]*Evaluate(f_twist_orig, q^beta[2]);
		
		assert exists(j){j : j in [1..#D] |
			     v_p in ChangeRing(D[j][1] * D[j][2][1] ,KL)};
		Include(~indices_covered, j);
		Append(~twist_basis_plus, v_p);
		Append(~twist_f_basis, f_twist_new);
	    end for;
	end for;
	Append(~twist_bases, twist_basis_plus);
	Append(~twist_f_bases, twist_f_basis);
	while next_idx in indices_covered do
	    next_idx +:= 1;
	end while;
    end while;
    // debug_info := <D, K, chars>;
    return twist_bases, twist_f_bases; //, debug_info;
end function;

function TwistBasis(N, prec)
    X := DirichletGroupFull(N);
    L := BaseRing(X);
    X_even := [chi : chi in Elements(X) | Evaluate(chi, -1) eq 1];
    M := ModularSymbols(CongruenceSubgroup(N), 2, Rationals(), 0);
    S := CuspidalSubspace(M);
    D := NewformDecomposition(S);

    indices_covered := {};
    next_idx := 1;
    twist_bases := [* *];
    twist_f_bases := [* *];
    fields := [* *];
    one := GL(2, Rationals())!1;
    while next_idx le #D do
	d := D[next_idx];
	d_old := AssociatedNewSpace(d);
	f := qEigenform(d, prec);
	K := BaseRing(Parent(f));
	Append(~fields, K);
	KL := Compositum(K,L);
	R<q> := PowerSeriesRing(KL);
	v1_plus := EigenvectorModSymSign(d_old, 1);
	assert IsIsomorphic(BaseRing(v1_plus), K);
	v1_plus := ChangeRing(v1_plus, KL);
	// embed them in the underlying vector space of M
	beta := DegeneracyMatrix(AmbientSpace(d),AmbientSpace(d_old),one);
	v1_plus := v1_plus * ChangeRing(Transpose(beta), KL);
	twist_basis_plus := [];
	twist_f_basis := [R | ];
	for chi in X_even do
	    c := Conductor(chi);
	    u := [c, N, 0, c];
	    u_mat := Transpose(ActionOnModularSymbolsBasis(u, M));
	    R_chi := ChangeRing(&+[Evaluate(chi^(-1), t) * u_mat^t : t in [0..N-1]], KL);
	    v_plus := v1_plus * R_chi;
	    assert exists(j){j : j in [1..#D] |
			     v_plus in ChangeRing(DualVectorSpace(D[j]) ,KL)};
	    Include(~indices_covered, j);
	    d := D[j];
	    d_old := AssociatedNewSpace(d);
	    quo_lev := Level(d) div Level(d_old);
	    divisors := GetDegeneracyReps(d_old, d, Divisors(quo_lev));
	    betas := [Transpose(DegeneracyMatrix(AmbientSpace(d),AmbientSpace(d_old),m))
		      : m in divisors];
	    assert exists(beta){beta : beta in betas |
				v_plus in ChangeRing(DualVectorSpace(d_old)*beta, KL)};
	    v_plus_orig := Solution(ChangeRing(beta, KL), v_plus);
	    f_twist := R!Twist(f, BaseExtend(chi, KL));
	    for l in [1..#divisors] do
		v_p := v_plus_orig * ChangeRing(betas[l], KL);
		g := Evaluate(f_twist, q^(quo_lev div Integers()!divisors[l][1,1]));
		for sig in Automorphisms(KL) do
		    Append(~twist_basis_plus, ApplyAut(sig, v_p));
		    Append(~twist_f_basis, ApplyAut(sig, g));
		end for;
	    end for;
	end for;
	Append(~twist_bases, twist_basis_plus);
	Append(~twist_f_bases, twist_f_basis);
	while next_idx in indices_covered do
	    next_idx +:= 1;
	end while;
    end while;
    for F in fields do
	KL := Compositum(L, F);
    end for;
    big_basis := &cat [[ChangeRing(v, KL) : v in basis] : basis in twist_bases];
    V := sub<Universe(big_basis) | big_basis>;
    // assert V eq ChangeRing(DualVectorSpace(S), KL);
    assert Dimension(V) eq Dimension(S) div 2;
    return twist_bases, twist_f_bases;
end function;

function qExpansion(vs, N, prec)
    twist_basis, twist_f_basis := TwistBasis(N, prec);
    g := #twist_basis div 2;
    L := BaseRing(Universe(twist_basis));
    K := BaseRing(vs);
    KL := Compositum(K,L);
    R<q> := PowerSeriesRing(KL);
    twist_coeffs := Solution(ChangeRing(Matrix(twist_basis), KL), ChangeRing(vs, KL));
    f := &+[twist_coeffs[i] * R!twist_f_basis[i] : i in [1..g]];
    f_nor := f / Coefficient(f, 1);
    return f_nor;
end function;

// Here x is a symbol for Gamma(N)
function FullGammaIsomElt(M, x)
    N := Level(Parent(x));
    symb := ModularSymbol(x);
    new_symb := ModularSymbolApply([1,0,0,N], symb);
    new_x := ConvFromModularSymbol(M, new_symb);
    return new_x;
end function;

function FullGammaIsom(M, M_full)
    return Matrix([Representation(FullGammaIsomElt(M, x)) :
		   x in Basis(M_full)]);
end function;

function DegMapToFullSpace(M, M_full)
  N := Level(M);
  symbs := [ModularSymbol(x) : x in Basis(M_full)];
  new_symbs := [ModularSymbolApply([1,0,0,1/N], symb) : symb in symbs];
  new_xs := [ConvFromModularSymbol(M, new_symb) : new_symb in new_symbs];
  return Matrix([Representation(new_x) : new_x in new_xs]);
end function;

function FindCurveSimple(qexps, prec, n_rel)
    R<q> := Universe(qexps);
    K := BaseRing(R);
    zeta := K.1;
   fs := [f + O(q^prec) : f in qexps];
//     T, E := EchelonForm(Matrix([AbsEltseq(f) : f in fs]));
    n := #fs;
//    fs := [&+[E[j][i]*fs[i] : i in [1..n]] : j in [1..n]];
    R<[x]> := PolynomialRing(K,n);
    degmons := [MonomialsOfDegree(R, d) : d in [1..n_rel]];
    prods := [[Evaluate(m, fs) + O(q^prec) : m in degmons[d]] :
	      d in [1..n_rel]];
    // This part is for equations over QQ, but should be tested thoroughly
    /*
prod_traces := [[&cat[[Trace(zeta^j*x) : x in AbsEltseq(f)] :  
j in [0..Degree(K)-1]] : f in prod] : prod in prods];
kers := [Kernel(Matrix(pr_tr)) : pr_tr in prod_traces];
*/
    kers := [Kernel(Matrix([AbsEltseq(f) : f in prod])) : prod in prods];
    rels := [[&+[Eltseq(kers[d].i)[j]*degmons[d][j] : j in [1..#degmons[d]]] :
	      i in [1..Dimension(kers[d])]] : d in [1..n_rel]];
    I := ideal<R | &cat rels>;
    X := Curve(ProjectiveSpace(R),I);
    return X;
end function;

// This only works when conjugating one eigenform
// gives you another eigenform
function FindRationalCurve(qexps, prec, n_rel)
    _<q> := PowerSeriesRing(Rationals());
    fs := [];
    for qexp in qexps do
      K := BaseRing(Parent(qexp));
      zeta := K.1;
      for j in [0..Degree(K)-1] do
        f := &+[Trace(zeta^j*Coefficient(qexp, n))*q^n : n in [1..prec-1]];
        f +:= O(q^prec);
        Append(~fs, f);
      end for;
    end for;
    T, E := EchelonForm(Matrix([AbsEltseq(f) : f in fs]));
    fs := [&+[E[j][i]*fs[i] : i in [1..#fs]] : j in [1..#fs]];
    n := #fs;
    R<[x]> := PolynomialRing(Rationals(),n);
    degmons := [MonomialsOfDegree(R, d) : d in [1..n_rel]];
    prods := [[Evaluate(m, fs) + O(q^prec) : m in degmons[d]] :
	      d in [1..n_rel]];
    kers := [Kernel(Matrix([AbsEltseq(f) : f in prod])) : prod in prods];
    rels := [[&+[Eltseq(kers[d].i)[j]*degmons[d][j] : j in [1..#degmons[d]]] :
	      i in [1..Dimension(kers[d])]] : d in [1..n_rel]];
    I := ideal<R | &cat rels>;
    X := Curve(ProjectiveSpace(R),I);
    return X;
end function;

function GetInvariantSubspace(H, M)
  N := Modulus(BaseRing(H));
  G := GL(2,Integers(N));
  S := CuspidalSubspace(M);
  Z := Center(G);
  PG, quo_G := G / Z;
  G0 := SL(2, Integers(N));
  PG0 := G0 @ quo_G;
  gens := GeneratorsSequence(PG0);
  quo_G0 := hom< G0 -> PG0 | [quo_G(x) : x in GeneratorsSequence(G0)]>;
  gens_seq := [Eltseq(FindLiftToSL2(g @@ quo_G0)) : g in gens];
  GL2Q := GL(2, Rationals());
  alpha_N := GL2Q![1,0,0,N]^(-1);
  conj_gens := [Eltseq(GL2Q!g^alpha_N) : g in gens_seq];
  gen_mats := [ActionOnModularSymbolsBasis(g, M) : g in conj_gens];
  cusp_symbols := VectorSpace(S);
  gens_rest := [Restrict(x, cusp_symbols) : x in gen_mats];
  Omega := GModule(PG0, [Transpose(x) : x in gens_rest]);
  hs := [Transpose(Representation(Omega)(g)) :
			       g in Generators(quo_G0(H))];
  if IsEmpty(hs) then
    H_inv := VectorSpace(Omega);
  else
    H_inv := &meet[Kernel(n-1) : n in hs];
  end if;
  return H_inv;
end function;

function GetInvariantSubspaceSL2(H, S, T)
  N := Modulus(BaseRing(H));
  G := SL(2,Integers(N));
  Z := Center(G);
  PG, quo_G := G / Z;
  s := [0,-1,1,0];
  t := [1,1,0,1];
  PG := sub<PG | quo_G(s),quo_G(t)>;
  Omega := GModule(PG, [Transpose(x) : x in [S,T]]);
  hs := [Transpose(Representation(Omega)(g)) :
			       g in Generators(quo_G(H))];
  if IsEmpty(hs) then
    H_inv := VectorSpace(Omega);
  else
    H_inv := &meet[Kernel(h-1) : h in hs];
  end if;
  return H_inv;
end function;

function GetContainingIrreducibleRep(V, M, N)
  T_M := ActionOnModularSymbolsBasis([1,1/N,0,1], M);
  S_M := ActionOnModularSymbolsBasis([0,-1,N^2,0], M);
  inv_rep := V;
  old_dim := 0;
  while (Dimension(inv_rep) gt old_dim) do
    old_dim := Dimension(inv_rep);
    inv_rep := inv_rep + inv_rep*T_M + inv_rep*S_M;
  end while;
  return inv_rep;
end function;

function my_ev_before_lift(A, M)
  use_quick := t in {RngInt, FldRat} or ISA(t, FldAlg) where t is Type(BaseRing(A));
  N := Level(M);
  p := SmallestPrimeNondivisor(N, 2);
  T := Restrict(ChangeRing(HeckeOperator(M, p), BaseRing(A)), A);

  i := 1;
  str := "T_" * IntegerToString(p);
  while true do
      vprintf ModularSymbols, 2:
	  "FindIrreducibleHeckeOperator, try #%o, %o\n", i, str;
      if use_quick then
          if QuickIrredTest(T) then
               vprintf ModularSymbols, 2: "CharacteristicPolynomial: "; 
               vtime ModularSymbols, 2:
               f := CharacteristicPolynomial(T);
               // assert IsIrreducible(f);
               break;
          end if;
      else
          f := CharacteristicPolynomial(T);
          if IsIrreducible(f) then
              break;
          end if;
      end if; 

      if i eq 15 then
        "WARNING: it seems hard to find an irreducible element in the Hecke algebra.";
	if Characteristic(BaseRing(A)) gt 0 then
           "In characteristic p, the algorithm is not guaranteed to terminate.";
        end if;
      end if;

      p := SmallestPrimeNondivisor(N, NextPrime(p));
      rand := Random([-1,1]);
      T +:= rand*Restrict(HeckeOperator(M,p),A);
      str *:= " + " * IntegerToString(rand) * "*T_" * IntegerToString(p);
      i +:= 1;
  end while;
   
  return EigenvectorOfMatrixWithCharpoly(T,f);
end function;

function my_eigenvector(A, M)
   // Returns an eigenvector of the Hecke algebra on A over
   // a polynomial extension of the ground field.
   // The eigenvector lies in VectorSpace(A) tensor Qbar
   e := my_ev_before_lift(A, M);
   F := Parent(e[1]);
   V := RSpace(F,Degree(A));
   B := Basis(A);
   sum := V!0;
   for i := 1 to #B do
      sum +:= e[i]*V!B[i];
   end for;
   return sum;
end function;

function my_eigenvalue(v, T)
  pivot := 1;
  while v[pivot] eq 0 and pivot lt Degree(v) do pivot +:= 1; end while;
  return (v*T)[pivot] / v[pivot];
end function;

function ChangeToIntegralEquations(X)
  pols := DefiningPolynomials(X);
  denoms := [LCM([Denominator(e) : e in Coefficients(pol)]) : pol in pols];
  pols := [ChangeRing(denoms[i]*pols[i], Integers()) : i in [1..#pols]];
  R<[x]> := Universe(pols);
  X_ZZ := Curve(ProjectiveSpace(R), pols);
// return ChangeRing(X_ZZ, Rationals());
  return X_ZZ;
end function;

// assume X is sprojective
function MoveRationalPoints(X)
  QQ := Rationals();
  X_QQ := ChangeRing(ChangeToIntegralEquations(X), QQ);
  pts := RationalPoints(X_QQ);
  d := Dimension(AmbientSpace(X)) + 1;
  // If there are on rational points, return the curve with the identity map
  if IsEmpty(pts) then
    return X, MatrixAlgebra(QQ, d)!1;
  end if;
  pt_mat := Matrix([Eltseq(pt) : pt in pts]);
  // finding linearly independent rows
  rows := [PivotColumn(EchelonForm(Transpose(pt_mat)),i) : i in [1..d]];
  var_change := Submatrix(pt_mat, rows, [1..d]);
  pols := DefiningPolynomials(X);
  R<[x]> := ChangeRing(Universe(pols), QQ);
  vars := Vector([R.i : i in [1..NumberOfGenerators(R)]]);
  new_vars := vars * ChangeRing(var_change, R);
  new_pols := [Evaluate(pol, Eltseq(new_vars)) : pol in pols];
  X_new := Curve(ProjectiveSpace(R), new_pols);
  return ChangeToIntegralEquations(X_new), var_change;
end function;

// factoring out the big chunl of CremonaMethod

function get_eigenvector_in_subspace(H, T, S, Conj, M)
  N := Modulus(BaseRing(H));
  C := CuspidalSubspace(M);
  H_inv := GetInvariantSubspaceSL2(H, S, T);
  Cb := Basis(C);
  Cmat := Transpose(Matrix([Eltseq(c) : c in Cb]));
  Cnew := NewSubspace(C);
  Cnew_dec := NewformDecomposition(Cnew);
  newproj := [*BasisMatrix(DualVectorSpace(comp))*Cmat : comp in Cnew_dec*];
  H_inv_bas := Transpose(BasisMatrix(H_inv));
  new_H_components := [i : i in [1..#newproj] | newproj[i]*H_inv_bas ne 0];
  S_H := [Cnew_dec[h] : h in new_H_components];
  V_M := VectorSpace(S_H[1]);
  V_C :=  Solution(Transpose(Cmat),BasisMatrix(V_M));
  V := sub<Universe(Rows(V_C)) | Rows(V_C)>;
  W_M := &+[VectorSpace(c) : c in S_H];
  inv_rep := GetContainingIrreducibleRep(W_M, M, N);
  comps := [c : c in [1..#Cnew_dec] | VectorSpace(Cnew_dec[c]) subset inv_rep];
  W_C :=  Solution(Transpose(Cmat),BasisMatrix(inv_rep));
  W := sub<Universe(Rows(W_C)) | Rows(W_C)>;
  Vplus := Kernel(Transpose(Conj-1)) meet V;
  Wplus := Kernel(Transpose(Conj-1)) meet W;
  evec := my_eigenvector(Vplus, C);
  return S_H, evec, Conj;
end function;

function init_twist_operators(X, T, N)
  L := BaseRing(X);
  X_gens := Generators(X);
  eps := X_gens[1]; // only works when cyclic - TODO : generalize!!!
  Q_N<zeta_N> := CyclotomicField(N);
  geps := &+[zeta_N^i*eps(i) : i in [0..N-1]];
  gepsvecm := Vector([(-geps)^i : i in [0..EulerPhi(N)-1]]);
  Tpowers := [Parent(T)!1];
  while (#Tpowers lt N) do
    Append(~Tpowers, T*Tpowers[#Tpowers]);
  end while;
  TpowersL := [ChangeRing(mat, L) : mat in Tpowers];
  // for debugging purposes we will put here the twisting by chi bar
  R_chis := [];
  gauss := [];
  for chi in X_gens do
    // R_chi := &+[Evaluate(chi^(-1), t) * TpowersL[t+1] : t in [0..N-1]];
    // g := GaussSum(chi^(-1));
    R_chi := &+[Evaluate(chi, t) * TpowersL[t+1] : t in [0..N-1]];
    g := GaussSum(chi);
    Append(~R_chis, R_chi);
    Append(~gauss, g);
  end for;
  return R_chis, gauss, gepsvecm;
end function;

function find_cond(fs, N)
  cond := EulerPhi(N); // for the values of characters
 
  for f in fs do
    Kf := BaseRing(Parent(f));
    // F := Compositum(F, Kf);
    if Type(Kf) eq FldRat then
       cond_f := 1;
    else
       cond_f := Norm(Conductor(AbelianExtension(AbsoluteField(Kf))));
    end if;
    cond := LCM(cond, cond_f);
  end for;
  return cond;
end function;

function get_char_idxs(fs, n, X, X_even, Qcond)
  relevant_chars := {};
  idxs_by_f := [];
  
  U := [d : d in [1..n-1] | GCD(d,n) eq 1];
  f1 := fs[1];
  for f in fs do
     Kf := AbsoluteField(BaseRing(Parent(f)));
// chars_f := {chi : chi in Elements(X) |
     chars_f := {chi : chi in X_even |
		 &and[chi(g)^(-1)*Qcond!Coefficient(f1,g) in
	        {Qcond!a(Coefficient(f,g)) : a in Automorphisms(Kf)}
		      //		     	      : g in ZNstar_gens]};
: g in [1..n-1]]};
     relevant_chars join:= chars_f;
     rel_idxs := [j : j in [1..n] | Elements(X)[j] in chars_f];
     Append(~idxs_by_f, rel_idxs);
  end for;
  rel_idxs := &cat idxs_by_f;
  return relevant_chars, rel_idxs, idxs_by_f;
end function;

function get_evec_twists(evec, R_chis, Qcond, X_gens, gauss)
  R_chis := [ChangeRing(R, Qcond) : R in R_chis];
  evec_twists := [[ChangeRing(evec, Qcond)]];
  elt_vecs := [[Vector([0 : chi in X_gens])]];
  all_gauss := [[Universe(gauss) | 1]];
  for i in [1..#X_gens] do
    n_i := Order(X_gens[i]);
    e_i := Vector([0 : j in [1..i-1]] cat [1] cat [0 : j in [i+1..#X_gens]]);
    for j in [1..n_i-1] do
      new_twists := [v * R_chis[i] : v in evec_twists[#evec_twists]];
      new_vecs := [v + e_i : v in elt_vecs[#elt_vecs]];
      new_gauss := [g * gauss[i] : g in all_gauss[#all_gauss]];
      Append(~evec_twists, new_twists);
      Append(~elt_vecs, new_vecs);
      Append(~all_gauss, new_gauss);
    end for;
    evec_twists := [&cat evec_twists];
    elt_vecs := [&cat elt_vecs];
    all_gauss := [&cat all_gauss];
  end for;
  evec_twists := evec_twists[1];
  elt_vecs := elt_vecs[1];
  all_gauss := all_gauss[1];
  return evec_twists, elt_vecs, all_gauss;
end function;

function get_scaled_coeffs(Qcond, L, K, autK, evec, N, H_inv_1s, C,
			   r, n, fs, X, H_invs,
			   rel_idxs, idxs_by_f, indices, all_gauss)
  
  T_n := [HeckeOperator(C,p) : p in PrimesUpTo(N)];
  eps := Generators(X)[1];
  eps_vals := [Qcond!eps(p) : p in PrimesUpTo(N)];
  as := [my_eigenvalue(evec, ChangeRing(t_n,K)) : t_n in T_n];
  eigs := [[aut(a) : aut in autK] : a in as];
  eigs_all := [[Qcond!ai*(eps_vals[idx])^j : j in [0..n-1], ai in eigs[idx]]
		  : idx in [1..#eigs]];
  eigs_rel := [ [eig[n*i+j] : i in [0..Degree(K)-1], j in [1..n] |
		    indices[j] in rel_idxs] : eig in eigs_all];
  eigs_by_f := [[ [eig[n*i+j] : i in [0..Degree(K)-1], j in [1..n] |
		      indices[j] in idxs_by_f[m]]
                     : eig in eigs_all] : m in [1..#fs]];
/*
  eigs_by_f := [[ [[eig[n*i+j] : i in [0..Degree(K)-1]] :  j in [1..n] |
		      indices[j] in idxs_by_f[m]]
                     : eig in eigs_all] : m in [1..#fs]];
*/
  assert &and[H_inv_1[i] eq 0 : i in [1..n], H_inv_1 in H_inv_1s
	    | indices[i] notin rel_idxs];
  coeffs := [[[h[i] : i in [1..#X] | indices[i] in rel_idxs]
			    : h in H_inv] : H_inv in H_invs];
  rev_inds := [Index(indices, i) : i in rel_idxs];
  coeffs_scaled := [[[h[i]*all_gauss[i] : i in rev_inds] : h in H_inv]
		     : H_inv in H_invs];
  return coeffs_scaled, eigs, eigs_by_f;
end function;

function get_f_conjs(fs, Qcond, eigs_by_f,
		     Q_huge, Q_huge_q, ps_prec, N, K)
    f_conjs := [];
/*
  f := f1;
  Kf := AbsoluteField(BaseRing(Parent(f)));
  f_eig := [Coefficient(f,n) : n in ZNstar_gens];
  f_eig := [Coefficient(f,p) : p in PrimesUpTo(n)];
  if Type(Kf) eq FldRat then
       embsKfQcond := [hom<Kf -> Qcond|>];
  else
       embsKfQcond := [hom<Kf -> Qcond | r[1]> :
		    r in Roots(DefiningPolynomial(Kf), Qcond)];
  end if;
  embs := [[e : e in embsKfQcond | &and[e(f_eig[i]) eq eigs_by_f[1][i][j]
			     : i in [1..#f_eig]]][1] : j in [1..Degree(Kf)]];
  f_conjs := [Q_huge_q!([Q_huge!e(c) : c in AbsEltseq(f)]) : e in embs];
*/
  for m in [1..#fs] do
    f := fs[m];
    Kf := AbsoluteField(BaseRing(Parent(f)));
    f_eig := [Coefficient(f,p) : p in PrimesUpTo(N)];
    if Type(Kf) eq FldRat then
       embsKfQcond := [hom<Kf -> Qcond|>];
    else
       embsKfQcond := [hom<Kf -> Qcond | r[1]> :
		    r in Roots(DefiningPolynomial(Kf), Qcond)];
    end if;
    embs := [[e : e in embsKfQcond | &and[e(f_eig[i]) eq eigs_by_f[m][i][j]
			     : i in [1..#f_eig]]][1] : j in [1..Degree(Kf)]];
/*
    embs := &cat [[e : e in embsKfQcond |
		 exists(idx){idx : idx in [1..#(eigs_by_f[m][1])]
	    | &and[e(f_eig[i]) eq eigs_by_f[m][i][idx][j]
		   : i in [1..#f_eig]]}] : j in [1..Degree(K)]];
*/
    f_conjs cat:= [Q_huge_q!([Q_huge!e(c) : c in AbsEltseq(f)]) : e in embs];
  end for;
  q := Q_huge_q.1;
  f_conjs := [f + O(q^ps_prec) : f in f_conjs];
  return f_conjs;
end function;

function get_get_cusp_func(X, M_evec_twists, W1, HW_vec, gal_elts, psi,
			   MM, Q_N, Qcond, Q_huge, gepsvecm, conj_huge, hs)
  function get_cusp(gam)
    v1 := Solution(M_evec_twists, HW_vec * gam * BasisMatrix(W1));
    vs := &cat[[ApplyAut(psi(g), v) : g in gal_elts] : v in Rows(v1)];
    mat := ChangeRing(Transpose(Matrix(vs))*ChangeRing(MM, Qcond), Q_huge);
    // TODO - what scaling replaces the gepsvec in general?
    p2 := Eltseq(gepsvecm * mat);
    p2 := [conj_huge(c) : c in p2];
    pivot := Maximum([i : i in [1..#hs] | p2[i] ne 0]);
    p2 := [c/p2[pivot] : c in p2];
    assert &and[Evaluate(pol,p2) eq 0 : pol in DefiningPolynomials(X)];
    p2 := [Q_N!c : c in p2];
    assert &and[Evaluate(pol,p2) eq 0 : pol in DefiningPolynomials(X)];
    return p2;
  end function;
  return get_cusp;
end function;

function get_Xcusps(N, SW1, TW1, gammas, X_QN, get_cusp)
  G := SL(2,Integers(N));
  Z := Center(G);
  PG, quo_G := G / Z;
  s := [0,-1,1,0];
  t := [1,1,0,1];
  PG := sub<PG | quo_G(s),quo_G(t)>;
  Omega_W1 := GModule(PG, [Transpose(x) : x in [SW1,TW1]]);
  gs := [Representation(Omega_W1)(quo_G(G!gamma)) : gamma in gammas];
  X_cusps := [X_QN!get_cusp(Transpose(g^(-1))) : g in gs];
  return X_cusps;
end function;

// This has to be adapted to include degeneracy maps
// The twists of a newform alone do not span everything,
// only if we allow degeneracy maps

function CremonaMethod(H, ps_prec, n_rel)
  N := Modulus(BaseRing(H));
  M := ModularSymbols(CongruenceSubgroup(N));
  C := CuspidalSubspace(M);
  T := Restrict(ActionOnModularSymbolsBasis([1,1/N,0,1],M), VectorSpace(C));
  S := Restrict(ActionOnModularSymbolsBasis([0,-1,N^2,0],M), VectorSpace(C));
  Conj := Transpose(StarInvolution(C));
  S_H, evec := get_eigenvector_in_subspace(H, T, S, Conj, M);
  K := BaseRing(evec);
  autK := Automorphisms(K);
  evecs := [ApplyAut(aut, evec) : aut in autK];
  X := DirichletGroupFull(N);
  r,n := DistinguishedRoot(X);
  X_even := [x : x in Elements(X) | IsEven(x)];
  L := BaseRing(X);
  X_gens := Generators(X);
  A, phi := AbelianGroup(X);
  ZNstar_gens := UnitGenerators(X);
  Q_N<zeta_N> := CyclotomicField(N);
  Q_N_q<q> := PowerSeriesRing(Q_N);
  R_chis, gauss, gepsvecm := init_twist_operators(X, T, N);
  fs := [* qEigenform(s_h, ps_prec) : s_h in S_H *];
  // Should we include these as well? I'm not sure
  // fs cat:= [* qEigenform(Cnew_dec[c], ps_prec) : c in comps
  // 			| c notin new_H_components  *];
  // Magma works much better over cyclotomic fields, so we switch to cyclotomic
  cond := find_cond(fs, N);
  
  Qcond<zeta> := CyclotomicField(cond);
  assert &and[IsSubfield(BaseRing(Parent(f)), Qcond) : f in fs];
  assert IsSubfield(K, Qcond);
  relevant_chars, rel_idxs, idxs_by_f := get_char_idxs(fs, n, X, X_even, Qcond);
  // chars[#chars] is a generator when N is prime -
  // handle the general case later
  evec_twists, elt_vecs, all_gauss := get_evec_twists(evec, R_chis,
						      Qcond, X_gens, gauss);
  indices := [Index(Elements(X),phi(A!Eltseq(v))) : v in elt_vecs];
  W1 := sub<Universe(evec_twists) | evec_twists>;
  M_evec_twists := Matrix(evec_twists);
  TW1 := Restrict(ChangeRing(T, Qcond), W1);
  SW1 := Restrict(ChangeRing(S, Qcond), W1);
  H_inv_W1 := GetInvariantSubspaceSL2(H, SW1, TW1);
  // This shouldn't be necessary once we restrict to even characters
  W1_plus := Kernel(Restrict(Transpose(ChangeRing(Conj,Qcond))-1, W1)); 
  H_inv_W1 := H_inv_W1 meet W1_plus;
  basis_HW := Basis(H_inv_W1);
  H_inv_1s := [Solution(M_evec_twists, b * BasisMatrix(W1)) : b in basis_HW];

// Figure out what do we want here in general, e.g. if K \cap L is not trivial
  gal, _, psi := AutomorphismGroup(Qcond,L);
  // next we want to match these to the corresopnding elements of Gal(K)
  gal_elts := [g : g in gal];
  autK_vals := [Qcond!aut(K.1) : aut in autK];
  // exists(g){g : g in gal | Order(g) ne 1};
  gal_perm := [Index(autK_vals, psi(g)(K.1)) : g in gal_elts];
  gal_elts := [gal_elts[Index(gal_perm,i)] : i in [1..#autK]];
  H_invs := [[ApplyAut(psi(g), H_inv_1) : g in gal_elts] : H_inv_1 in H_inv_1s];
  coeffs_scaled, eigs, eigs_by_f := get_scaled_coeffs(Qcond, L, K, autK, evec,
						      N,
				      H_inv_1s, C, r, n, fs, X, H_invs,
				     rel_idxs, idxs_by_f, indices, all_gauss);
  Q_huge<zeta_huge> := CyclotomicField(LCM(cond, N));
  Q_huge_q<q> := PowerSeriesRing(Q_huge);
  _, conj_huge := HasComplexConjugate(Q_huge);

  f_conjs := get_f_conjs(fs, Qcond, eigs_by_f,
			 Q_huge, Q_huge_q, ps_prec, N, K);
  coeffs_scaled_conj := [[[conj_huge(c) : c in ci] : ci in cih]
			  : cih in  coeffs_scaled];
  // This assertion fails for some reason.
  assert #f_conjs eq #rel_idxs * Degree(K);
  hs := [ [&+[csc[j+1][i+1]*f_conjs[Degree(K)*i+j+1]
	       : i in [0..#rel_idxs-1]] : j in [0..Degree(K)-1]]
	  : csc in coeffs_scaled_conj];
  // That's what I think should be here, but it doesn't work
  // tmp := [* Matrix([[e^j : j in [0..#egg[1]-1]] : e in egg[1]]) :
  // 		  egg in eigs_by_f *];
  // MK will then be the direct sum of tmp
  MK := Matrix([[e^j : j in [0..Degree(K)-1]] : e in eigs[1]]);
  hh := &cat [Eltseq(Vector(hss) * Transpose(ChangeRing(MK^(-1),Q_huge_q)))
	  : hss in hs];
  hs := [Q_N_q!h : h in hh];
  X := FindCurveSimple(hs, ps_prec, n_rel);
  X, var_change := MoveRationalPoints(X);
  tt := Eltseq(Vector(hh)*ChangeRing(var_change^(-1),Q_huge_q));
  ts := [Q_N_q!t : t in tt];
  X_QN := ChangeRing(X, Q_N);
  MK := DirectSum([MK : csc in coeffs_scaled_conj]);  
  MM := Transpose(MK^(-1)) * var_change^(-1);
  get_cusp := get_get_cusp_func(X, M_evec_twists, W1, Matrix(basis_HW),
				 gal_elts, psi,
			       MM, Q_N, Qcond, Q_huge, gepsvecm, conj_huge, hs);
  cusps := Cusps(PSL2Subgroup(H));
  gammas := [Eltseq(CuspInftyElt(cusp)) : cusp in cusps];
  X_cusps := get_Xcusps(N, SW1, TW1, gammas, X_QN, get_cusp);
  QQ := Rationals();
  X_QQ := ChangeRing(X, QQ);
  return X_QQ, X_cusps, ts;
end function;

function CremonaJInvariant(qexps, X_QQ, X_cusps, PtsQ, N)
  nvars := #qexps;
  Q_N_q<q> := Universe(qexps);
  ffq := [Q_N_q!(AbsEltseq(f)[2..Degree(f)]) + O(q^AbsolutePrecision(f))
	     : f in qexps];
  QQ := Rationals();
  R<[x]> := CoordinateRing(AmbientSpace(X_QQ));
  deg_rel := 1;
  nullity := 0;
  while nullity eq 0 do
    deg_rel +:= 1;
    mons := MonomialsOfDegree(R,deg_rel);
    mat := Matrix([[Evaluate(m, Eltseq(c)) : c in X_cusps] : m in mons]);
    ker := Kernel(mat);
    nullity := Dimension(ker);
  end while;
  M := BasisMatrix(ker);
  M := ChangeRing(Denominator(M)*M, Integers());
  Sm,U,V := SmithForm(M);
  tmp := ChangeRing(Submatrix(Sm, [1..nullity], [1..nullity]), QQ);
  M := ChangeRing(tmp^(-1)*ChangeRing(U*M,QQ), Integers());
  M := Transpose(LLL(M * Transpose(M))) * M;
  cubs := [&+[r[i]*mons[i] : i in [1..#mons]] : r in Rows(M)];
  X_QN := Universe(X_cusps); 
  PtsQ_not_cusps := [p : p in PtsQ | X_QN!Eltseq(p) notin X_cusps];
  assert exists(cub){cub : cub in cubs |
      &and[not IsZero(Evaluate(cubs, Eltseq(p))) : p in PtsQ_not_cusps]};
  var_powers := [[Parent(ffq[i])!1] : i in [1..nvars]];
  while #var_powers[1] le N*deg_rel do
     for i in [1..nvars] do
       Append(~var_powers[i], ffq[i]*var_powers[i][#var_powers[i]]);
     end for;
  end while;
  mons := MonomialsOfDegree(R, N*deg_rel);
  mons_red := &join[Set(Monomials(NormalForm(m, Ideal(X_QQ)))) : m in mons];
  mons_red := SetToSequence(mons_red);
  mons_q := [&*[var_powers[i][Degree(m,i)+1] : i in [1..nvars]]
		 : m in mons_red];
  num_eqs := #mons_red + 5;
  arr := [ [Coefficient(mq,i) : i in [0..num_eqs]] : mq in mons_q];
  denjN := Evaluate(cub, ffq)^N;
  jq := jInvariant(q);
  jqN := Evaluate(jq,q^N);
  numjqNd := jqN*denjN;
  arr cat:= [[-Coefficient(numjqNd,i) : i in [0..num_eqs]]];
  relmatQ := Matrix([Flat([Eltseq(aij) : aij in ai]) : ai in arr]);
  ker := Kernel(relmatQ);
  assert Dimension(ker) eq 1;
  b := Basis(ker)[1];
  b *:= Denominator(b);
  d := b[Degree(b)];
  jnum := &+[Eltseq(b)[i]*mons_red[i] : i in [1..Degree(b)-1]];
  jden := d*cub^N;
  // This is a test to check it is the same as Cremona's
  //  [Evaluate(jnum, Eltseq(p)) / Evaluate(jden, Eltseq(p)) : p in PtsQ];
  return jnum, jden;
end function;

procedure testCremonaSingle(H, js, ps_prec, n_rel)
  N := Modulus(BaseRing(H));
  X, X_cusps, fs := CremonaMethod(H, ps_prec, n_rel);
  PtsQ := RationalPoints(X);
  X_QN := Universe(X_cusps); 
  PtsQ_not_cusps := [p : p in PtsQ | X_QN!Eltseq(p) notin X_cusps];
  jnum, jden := CremonaJInvariant(fs, X, X_cusps, PtsQ, N);
  js2 := [Evaluate(jnum, Eltseq(p)) / Evaluate(jden, Eltseq(p))
	     : p in PtsQ_not_cusps];
  assert Set(js2) eq js;
end procedure;

procedure testCremona()
  QQ := Rationals();
  N := 13;
  H := sub<GL(2,Integers(N)) | [-5,0,0,5],[-2,-2,-3,3]>; // S4
  js := { -160855552000/1594323, 0, 11225615440/1594323, 
    90616364985637924505590372621162077487104/197650497353702094308570556640625};
  print "Testing X_S4(13)....";
  testCremonaSingle(H, js, 200, 4);
  H := ImageInLevel(GammaSplus(N));
  js := {287496, -12288000, 1728, -884736000, 0, 54000};
  print "Testing Xs(13)...";
  testCremonaSingle(H, js, 200, 4);
  H := ImageInLevel(GammaNSplus(N));
  js := {16581375, -32768, -884736, -3375, -147197952000,
	 -262537412640768000, 8000};
  print "Testing Xns(13)...";
  testCremonaSingle(H, js, 200, 4);
end procedure;

function updateOrbits(possible_orbits, nbrs)
  new_orbits := [];
  for orbits in possible_orbits do
    open_orbit := orbits[#orbits];
    if IsEmpty(open_orbit) then
       not_all := exists(x){x : x in Keys(nbrs) | x notin &cat orbits};
       if not_all then
         Append(~new_orbits, orbits[1..#orbits-1] cat [[x]]);
       else
	 Append(~new_orbits, orbits);
       end if;
    else
      last := open_orbit[#open_orbit];
      for nbr in nbrs[last] do
       if open_orbit[1] eq nbr then
         Append(~new_orbits, orbits cat [[]]);
       elif nbr notin &cat orbits then
	 Append(~new_orbits, orbits[1..#orbits-1] cat [open_orbit cat [nbr]]);
       end if;
      end for;
    end if;
  end for;
  return new_orbits;
end function;

function possibleOrbits(d, H)
  cusps_H := CuspsG(H);
  N := Level(H);
  cusps_N := CuspsG(CongruenceSubgroup(N));
  pre_s := [{x : x in Elements(cusps_N) | cusps_H!x eq s} :
		   s in Elements(cusps_H)];
  nbrs := AssociativeArray();
  for i in [1..#Elements(cusps_H)] do
    s := Elements(cusps_H)[i];
    nbrs[s] := {cusps_H!t : t in d*pre_s[i]};
  end for;
  
end function;

function GetInvariantDualSubspace(H, M)
  N := Modulus(BaseRing(H));
  G := GL(2,Integers(N));
  S := CuspidalSubspace(M);
  Z := Center(G);
  PG, quo_G := G / Z;
  G0 := SL(2, Integers(N));
  PG0 := G0 @ quo_G;
  gens := GeneratorsSequence(PG0);
  quo_G0 := hom< G0 -> PG0 | [quo_G(x) : x in GeneratorsSequence(G0)]>;
  gens_seq := [Eltseq(FindLiftToSL2(g @@ quo_G0)) : g in gens];
  GL2Q := GL(2, Rationals());
  alpha_N := GL2Q![1,0,0,N]^(-1);
  conj_gens := [Eltseq(GL2Q!g^alpha_N) : g in gens_seq];
  gen_mats := [ActionOnModularSymbolsBasis(g, M) : g in conj_gens];
  gen_mats_tr := [Transpose(g) : g in gen_mats];
  cusp_forms_space := DualVectorSpace(S);
  gens_rest := [Restrict(x, cusp_forms_space) : x in gen_mats_tr];
  Omega := GModule(PG0, gens_rest);
  Omega_PG := Induction(Omega, PG);
// T_prime := ImageInLevelGL(H);
  vprintf ModularSymbols, 1:
    "Restricting the representation to the subgroup...\n";
  Omega_H := Restriction(Omega_PG,quo_G(H));
  vprintf ModularSymbols, 1: "Done.\n";
  hs := [Representation(Omega_H)(g) :
			       g in Generators(quo_G(H))];
  if IsEmpty(hs) then
    H_inv := VectorSpace(Omega_H);
  else
    H_inv := &meet[Kernel(n-1) : n in hs];
  end if;
  proj_basis := [Vector(Eltseq(x)[1..Dimension(S)]) :
			 x in Basis(H_inv)];
  B := BasisMatrix(cusp_forms_space);
  H_proj := sub<cusp_forms_space | [b*B : b in proj_basis]>;
  return H_proj;
end function;

// At the moment, this seems to work only for N <= 8...
// It also works for half of the groups of level 9 - fails for 9A3, 9C4
// Figure out why!!!
// For 10 the procedure Genus(X) starts getting heavy, for some reason
// For 11 the basis finding is already getting long
// It seems that we fail to find the right constants for a two-dimensional space

function get_qexps_from_bases(H, B0, F0)
// N := Level(H);
    // B0, F0 := TwistBasis0(N, prec);
    spaces := [* sub<Universe(basis) | basis> : basis in B0 *];
//    M_H := ModularSymbols(H, 2, Rationals(), 0);
//    S_H := CuspidalSubspace(M_H);
//    M_full := ModularSymbols(CongruenceSubgroup(N), 2, Rationals(), 0);
// M_full := ModularSymbols(CongruenceSubgroup(N));
//    beta := Transpose(DegeneracyMatrix(M_full, M_H, GL(2, Rationals())!1));
    N := Modulus(BaseRing(H));
    M := ModularSymbols(CongruenceSubgroup(N));  
//    phi := FullGammaIsom(M, M_full);
//    im_S_H := DualVectorSpace(S_H) * beta * Transpose(phi^(-1));
    im_S_H := GetInvariantDualSubspace(H, M);
    K := BaseRing(spaces[1]);
    for j in [1..#F0] do 
	K := Compositum(K,BaseRing(Universe(F0[j])));
	K := Compositum(K,BaseRing(Universe(B0[j])));
    end for;
    spaces := [ChangeRing(space, K) : space in spaces];
    im_S_H := ChangeRing(im_S_H, K);
    R<q> := PowerSeriesRing(K);
    fs := [];
    for j in [1..#B0] do
	B := Basis(im_S_H meet spaces[j]);
	mat_B0 := ChangeRing(Matrix(B0[j]), K);
	for b in B do
	    twist_coeffs := Solution(mat_B0, b);
            f := &+[twist_coeffs[i] * R!F0[j][i] : i in [1..#F0[j]]];
	    Append(~fs, f);
	end for;
    end for;
    F := MinimalCyclotomicField(&cat [AbsEltseq(f) : f in fs]);
    return [PowerSeriesNormalizeMagma(PowerSeriesRing(F)!f) : f in fs];
end function;

function LoadGroupsByLevel(L)
  gens_by_level := AssociativeArray();
  for l in L do
     if IsDefined(gens_by_level, l`level) then
       Append(~gens_by_level[l`level], <l`name, l`matgens>);
     else
       gens_by_level[l`level] := [<l`name, l`matgens>];
     end if;
  end for;
  return gens_by_level;
end function;

function Test_qExpansions(level, L, func)
    test_grps := [l : l in L | l`level eq level and l`genus gt 2];
    // 100 should suffice at the moment. Later check how to determine required precision.
    prec := 100;
    // B, F := TwistBasis0(level, prec);
    B, F := func(level, prec);
    failed := [];
    for grp in test_grps do
       try
	 H := sub<GL(2, Integers(level)) | grp`matgens>;

         G := PSL2Subgroup(H);

         if not IsOfRealType(G) then
            H := GetRealConjugate(H);
            G := PSL2Subgroup(H);
         end if;

/*
         if assigned G`DetRep and #Domain(G`DetRep) lt EulerPhi(Level(G)) then
            H := GetGLModel(H);
            G := PSL2Subgroup(H);
         end if;
*/

         fs := get_qexps_from_bases(ImageInLevelGL(G), B, F);
	 max_deg := Maximum(7-grp`genus, 2);
	 X := FindCurveSimple(fs, prec, max_deg);
	 // The second case for hyperelliptic curves -
	 // should check that more thoroughly
	 if Genus(X) notin [grp`genus,0] then
	    Append(~failed, <grp`name, Genus(X)>);
	 end if;
       catch e
	 Append(~failed, <grp`name, e`Object >);
       end try;
    end for;
    return failed;
end function;

function sameB(B1, B2)
    KL := BaseRing(B2[1][1]);
    assert IsIsomorphic(BaseRing(B1[1][1]), KL);
    B3 := [[ChangeRing(v, KL) : v in b] : b in B1];
    return &and [B2[i] eq B3[i] : i in [1..#B2]];
end function;

function sameF(F1, F2)
    KL := BaseRing(Parent(F2[1][1]));
    assert IsIsomorphic(BaseRing(Parent(F1[1][1])), KL);
    R<q> := PowerSeriesRing(KL);
    F3 := [[R!v : v in f] : f in F1];
    return &and [F2[i] eq F3[i] : i in [1..#F2]];
end function;

/*
intrinsic ModularCurve(G::GrpPSL2) -> Crv, SeqEnum[Pt], SeqEnum[RngSerPowElt]
{Returns the modular curve X_G, its cusps and the canonical coordinate map.}
  genus := Genus(G);
  max_deg := Maximum(7-genus, 2);
  bound := HeckeBound(ModularSymbols(G));
  prec := Level(G)*bound;
  X, X_cusps, fs := CremonaMethod(ImageInLevel(G), prec, max_deg);
  _<[x]> := CoordinateRing(X);
  return X, X_cusps, fs;
end intrinsic;
*/
