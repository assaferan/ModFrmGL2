// Curves that we show have gonality too high to be plane curves.

import "/Applications/Magma/package/Geometry/ModSym/operators.m" : ActionOnModularSymbolsBasis;
import "/Applications/Magma/package/Geometry/ModSym/linalg.m" : KernelOn, Restrict;
import "/Applications/Magma/package/Geometry/ModSym/modsym.m" : ModularSymbolsSub;

function gen_to_mat(g, C)
    MS := AmbientSpace(C);
    gM := ActionOnModularSymbolsBasis(Eltseq(g), MS);
    gC := Restrict(gM, VectorSpace(C));
    return Transpose(gC);
end function;

function FindLiftToSL2(g)
    elt_g := ElementToSequence(g);
    if #elt_g eq 1 then return [1,0,0,1]; end if;
    a,b,c,d := Explode(elt_g); 
    N := Modulus(Parent(a));
    Z := Integers();
    a_prime := Z!a;
    b_prime := Z!b;
    if a_prime eq 0 then
        a_prime +:= N;
    end if;
    gcd_res, x, y := Xgcd(a_prime, b_prime);
    while gcd_res ne 1 do
        b_prime +:= N; 
        gcd_res, x, y := Xgcd(a_prime, b_prime);
    end while;
    det := a_prime * Z!d - b_prime*Z!c;
    c_prime := Z!c - y * (1 - det);
    d_prime := Z!d + x * (1 - det);       
    return [a_prime, b_prime, c_prime, d_prime];
end function;

function FindCurveSimple(qexps, prec, n_rel)
    R<q> := Universe(qexps);
    K := FieldOfFractions(BaseRing(R));
    _<q> := PowerSeriesRing(K);
    zeta := K.1;
    fs := [f + O(q^prec) : f in qexps];
    g := #fs;
    R<[x]> := PolynomialRing(K,g);
    degmons := [MonomialsOfDegree(R, d) : d in [1..n_rel]];
    prods := [[Evaluate(m, fs) + O(q^prec) : m in degmons[d]] :
	      d in [1..n_rel]];
    // kers := [Kernel(Matrix([AbsEltseq(f) : f in prod])) : prod in prods];
    kers := [Kernel(Matrix([&cat[Eltseq(x) : x in AbsEltseq(f)] : f in prod])) : prod in prods];
    rels := [[&+[Eltseq(kers[d].i)[j]*degmons[d][j] : j in [1..#degmons[d]]] :
	      i in [1..Dimension(kers[d])]] : d in [1..n_rel]];
    // We want to generate the ideal with the lowest possible degree
    is_all := false;
    d := 1;
    not_in_I := rels;
    I := ideal<R | 0>;
    while not is_all do
	I +:= ideal<R | &cat not_in_I[1..d]>;
	not_in_I := [[x : x in r | x notin I] : r in rels];
	is_all := &and[IsEmpty(x) : x in not_in_I];
	d +:= 1;
    end while;
    // This might throw an error in the hyperelliptic case. 
    X := Curve(ProjectiveSpace(R),I);
    return X;
end function;

// return True if the modular curve X_H(N, gens) has gonality at least LB
// when this is determined by considering the base change to F_p
// At the moment, this assumes the number of points on X(F_p) is small (at most p+1)
function lower_bound_gonality_X_H(N, gens, prec, p, LB)
    
    M := ModularSymbolsH(N,gens,2,1);
    S := CuspidalSubspace(M);
    
    qexps := qIntegralBasis(S, prec);
    assert #qexps ge 3;
    
    // We assume the curve is not hyperelliptic (else, this would fail)
    X := FindCurveSimple(qexps, prec, 2);

    Xp := ChangeRing(X, GF(p));
    // We use this to limit our search on RR spaces
    assert #Points(Xp) le p+1;

    FF := FunctionField(Xp);
    AFF := AlgorithmicFunctionField(FF);
    pls := [Places(AFF, deg) : deg in [1..LB-1]];
    s:={};

    // partitions of d where the minimum summand is 2.  
    part_no_1 := [[p : p in Partitions(d) | Minimum(p) gt 1] : d in [1..LB-1]];

    for deg in [1..LB-1] do
	for part in part_no_1[deg] do
	    part_dims := {Dimension(RiemannRochSpace(&+[p : p in divs])) : divs in CartesianProduct([pls[d] : d in part])};
	    print "part = ", part, ", dims = ", part_dims;
	    s join:= part_dims;
	end for;
    end for;

    P := pls[1][1];
    for deg in [1..LB-2] do
	for part in part_no_1[deg] do
	    part_dims := {Dimension(RiemannRochSpace(P + &+[p : p in divs])) : divs in CartesianProduct([pls[d] : d in part])};
	    s join:= part_dims;
	    print "part = ", part, ", dims = ", part_dims;
	end for;
    end for;

    return s eq {1};
end function;

function lower_bound_gonality_X_H_91_27_54()
    return lower_bound_gonality_X_H(91, [27,54], 200, 5, 8);
end function;

// This code computes the model for the quotient by the diamond operator
/* 
   gM := ActionOnModularSymbolsBasis(qq, M);
   U, mU := UnitGroup(Integers(91));
   H := sub<GL(2,Integers(91)) | [27,0,0,1],[54,0,0,1],[1,0,0,66], [1,0,0,15],[1,1,0,1]>;
   NH := Normalizer(GL(2,Integers(91)), H);
   Q, pi_Q := quo<NH|H>;
   q := GL(2,Integers(91))![1,0,0,484]^(-1) *  GL(2,Integers(91))![22,0,0,22];
   qq := FindLiftToSL2(q);
   gM := ActionOnModularSymbolsBasis(qq, M);
   ker_d := Kernel(gM-1) meet VectorSpace(S);
   C := ModularSymbolsSub(M, ker_d);
   D := NewformDecomposition(C);
   qexps := qExpansionBasis(D,100);
   q := GL(2,Integers(127))![1,0,0,72]^(-1) *  GL(2,Integers(127))![96,0,0,96];
   qexps := qIntegralBasis(C,200);
*/
