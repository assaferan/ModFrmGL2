freeze;

// The known direction of Green's conjecture shows that if beta_{d-4,d-2}
// vanishes, the curve does not admit a g_d^2,
// hence there is no smooth plane model.

intrinsic GradedBettiNumberGreen(X::Crv, d::RngIntElt) -> RngIntElt
{Returns the graded Betti number at index (d-4, d-2) for the curve X.}
  I := Ideal(X);
  M := QuotientModule(I);
  return BettiNumber(M, d-4, d-2);
end intrinsic;

// A function that returns the possibly smooth plane curves, given a list
// and an expected degree
intrinsic GetMaybeSmoothCurves(curves::SeqEnum[Crv],
			       labels::SeqEnum[MonStgElt],
			       d::RngIntElt) -> SeqEnum[Crv],
                                                SeqEnum[MonStgElt],
						SeqEnum[RngIntElt]
{Find the curves among the list of curves given that are not disqualified of being smooth by the Bettti numbers.}
  maybe_smooth := [];
  smooth_labels := [];
  smooth_bettis := [];
  for i->X in curves do
      vprintf ModularCurves, 1:
	  "Working on curve %o\n", labels[i];
      lcm := LCM([LCM([Denominator(x) : x in Coefficients(p)])
		  : p in DefiningPolynomials(X)]);
      p := 1;
      repeat
	  p := NextPrime(p);
	  while lcm mod p eq 0 do
	      p := NextPrime(p);
	  end while;
	  F := GF(p);
	  X_F := ChangeRing(X, F);
      until (ISA(Type(X_F), Crv));
      // betti := GradedBettiNumberGreen(X, d);
      betti := GradedBettiNumberGreen(X_F, d);
      if betti ne 0 then
	  Append(~maybe_smooth, X);
	  Append(~smooth_labels, labels[i]);
	  Append(~smooth_bettis, betti);
      end if;
  end for;
  return maybe_smooth, smooth_labels, smooth_bettis;
end intrinsic;

// This function finds a rational point on the curve X, with q-expansions of differentials given by fs. Returns a rational point P together with a non-zero coordinate (a pivot). It assumes that X is defined over the same field as the q-expansions

function GetRationalPoint(X, fs)
     // Finding a point on X
    mat := Matrix([AbsEltseq(f) : f in fs]);
    zero_col := true;
    col_idx := 0;
    while zero_col do
	col_idx +:= 1;
	// col := Column(mat, col_idx);
	col := Transpose(mat)[col_idx];

	zero_col := IsZero(col);
    end while;
    
    P := X!Eltseq(col);
    pivot := PivotColumn(col, 1);
    
    return P, pivot;
end function;

// This is a slightly faster way to find a valuation than Magma (not sure why)

function myValuation(f, m_P, I)
    d := 0;
    while f in m_P^(d+1) + I do
	d +:= 1;
    end while;
    return d;
end function;

// Find a divisor on the curve X with maximal valuation at the point P,
// Specifying a non-zero coordinate (the pivot)
// The parameter {num} can be used to return the {num} divisors with maximal
// valuation at the point.
function FindMaximalValuation(X,P,pivot : num := 1)
    Pn<[z]> := AmbientSpace(X);
    n := #z;
    X_aff<[x]> := AffinePatch(X, n+1-pivot);
    P_aff := [P[i] / P[pivot] : i in [1..n] | i ne pivot];
    assert P_aff in X_aff;
    m_P := Ideal([x[i]-P_aff[i] : i in [1..n-1]]);
    I := Ideal(X_aff);
    vals := [myValuation(f, m_P, I) : f in x];
    //sorted_vals := Sort([<vals[i],i> : i in [1..#vals]]);
    //min_vals := [e[2] : e in sorted_vals | e[1] eq sorted_vals[1][1]];
    new_min := Minimum(vals);
    basis_min_val := [];
    other_vals := [];
    new_vals := [];
    all_divs_by_val := [];
    // start loop
    while new_min lt Infinity() do
	print "new_min = ", new_min;
	min_vals := [i : i in [1..#vals] | vals[i] eq new_min];
	other_vals := [i : i in other_vals | i notin min_vals];
	min_val_divs := [x[i] : i in min_vals];
	min_val_divs cat:= [basis_min_val[j] : j in [1..#basis_min_val]
			    | new_vals[j] eq new_min];
	all_divs_by_val cat:= min_val_divs;
	print "The linear subspace with this valuation is of dimension ", #min_val_divs;
	reductions := [NormalForm(f, m_P^(new_min+1)+I) : f in min_val_divs];
	quotients := [nf div reductions[1] : nf in reductions];
	// ker := Kernel(Transpose(Matrix([[Evaluate(f, P_aff) : f in min_val_divs]])));
	ker := Kernel(Transpose(Matrix([quotients])));
	basis_min_val := [&+[b[j]*min_val_divs[j] : j in [1..#min_val_divs]] : b in Basis(ker)];
	new_vals := [myValuation(b, m_P, I) : b in basis_min_val];
	old_min := new_min;
	new_min := Minimum([vals[i] : i in other_vals] cat new_vals cat [Infinity()]);
    end while;

    //    lambda_aff := min_val_divs[1];
    lambda_affs := Reverse(all_divs_by_val)[1..num];
    hom_coords := [z[i] / z[pivot] : i in [1..n] | i ne pivot];
    lambdas := [CoordinateRing(Pn)!(z[pivot]*Evaluate(lambda_aff, hom_coords))
		: lambda_aff in lambda_affs];
    // Creating the divisor takes too long
    // D := Divisor(X, Scheme(Pn, lambda));
    return lambdas, old_min;
end function;

// This function returns the image of X in P2 using the three
// divisors of maximal multiplicity, assuming it has a flex point.
// Since the existence of a smooth model is independent of the
// field of definition in this case, we base change to the
// field of definition of the q-expansions to find a rational point.
intrinsic GetP2Image(X::Crv, fs::SeqEnum[RngSerPowElt]
		     : Shimura := false) -> Crv
{Returns the image of the curve X in P2 by projecting onto the 3
divisors with maximal multiplicities at P}
    // if X is already in P2, we simply return it.
    if #fs eq 3 then
      return X;
    end if;
    K := BaseRing(Universe(fs));
    P2<[y]> := ProjectiveSpace(K,2);
    // If this is a group of Shimura type, the last 3 q-expansions will be of
    // maximal valuation at infinity (since we echelonize over Q).
    if Shimura then
      _<[x]> := AmbientSpace(X);	
      return Image(map<X -> P2 | x[#fs-2..#fs]>);
    end if;
    X_K := ChangeRing(X, K);
    P, pivot := GetRationalPoint(X_K, fs);
    Ds, v := FindMaximalValuation(X_K,P,pivot : num := 3);
    // We assume for now that P is a flex.
    // This is always the case when the group is of Shimura type
    assert v ge 3;
    
    return Image(map<X_K -> P2 | Ds >);
end intrinsic;

// old version, a bit slow
/*
function GetDivisorOfMaximalMultiplicity(X, fs)
    P, pivot := GetRationalPoint(X, fs);
    // projective space
    Pn<[z]> := AmbientSpace(X);
    
    n := #z;
    X_aff<[x]> := AffinePatch(X, n+1-pivot);
    P_aff := [P[i] / P[pivot] : i in [1..n] | i ne pivot];
    assert P_aff in X_aff;
    m_P := Ideal([x[i]-P_aff[i] : i in [1..n-1]]);
    I := Ideal(X_aff);
    has_linear := true;
    d := 1;
    while has_linear do
	m_P_pow := m_P^d + I;
	gb := GroebnerBasis(ChangeOrder(m_P_pow,"grevlex"));
	has_linear := exists(p){p : p in gb | Degree(p) eq 1};
	if has_linear then
	    lambda_aff := p;
	end if;
	d +:= 1;
    end while;
    // we homogenize lambda
    hom_coords := [z[i] / z[pivot] : i in [1..n] | i ne pivot];
    lambda := CoordinateRing(Pn)!(z[pivot]*Evaluate(lambda_aff, hom_coords));
    D := Divisor(X, Scheme(Pn, lambda));
    return D;
end function;

function GetP2Image(X, fs)
    P, pivot := GetRationalPoint(X, fs);
    Pn<[z]> := AmbientSpace(X);
    // This takes too long. We try to replace it by something faster
    // divs := [Divisor(X, Scheme(Pn, zz)) : zz in z];
    // mults := [Valuation(D, P) : D in divs];

    n := #z;
    X_aff<[x]> := AffinePatch(X, n+1-pivot);
    mults_aff := [Valuation(xx, P) : xx in x];
    mults := mults_aff[1..pivot-1] cat [0] cat mults_aff[pivot..n-1];
    
    // all multiplicities are distinct
    assert #Set(mults) eq #mults;
    sorted_mults := Reverse(Sort([<mults[i], i> : i in [1..#mults]]));
    P2<[y]> := ProjectiveSpace(Rationals(),2);
    return Image(map<X -> P2 | [z[m[2]] : m in sorted_mults[1..3]] >);
end function;
*/
  

  
