freeze;

/*
intrinsic GaloisGroup(f::RngUPolElt: Al := "pAdic", 
                          Prime := false, Precision := false,
                            Conditional := false) -> GrpPerm, SeqEnum, Any
{The Galois group of the polynomial f (of degree <= 23), the roots of f
 and the ideal giving the embedding of the coefficients into the
 splitting field.}

 if Prime cmpeq false then
   if Precision cmpeq false then
     if Al cmpeq "pAdic" and Conditional cmpeq false then
       return InternalGaloisGroup(f);
     else
       return InternalGaloisGroup(f: Al := Al, Conditional := Conditional);
     end if;
   else
     return InternalGaloisGroup(f: Al := Al, Conditional := Conditional,
                                   Precision := Precision);
   end if;
 else
   if Precision cmpeq false then
     return InternalGaloisGroup(f: Al := Al, Prime := Prime, 
                                   Conditional := Conditional);
   else
     return InternalGaloisGroup(f: Al := Al, Prime := Prime, 
                                   Conditional := Conditional,
                                   Precision := Precision);
   end if;
 end if;
end intrinsic;

intrinsic GaloisGroup(O::RngOrd: Al := "pAdic", 
                          Prime := false, Precision := false,
                            Conditional := false) -> GrpPerm, SeqEnum, Any
{}

 if Prime cmpeq false then
   if Precision cmpeq false then
     return InternalGaloisGroup(O: Al := Al, Conditional := Conditional);
   else
     return InternalGaloisGroup(O: Al := Al, Conditional := Conditional,
                                   Precision := Precision);
   end if;
 else
   if Precision cmpeq false then
     return InternalGaloisGroup(O: Al := Al, Prime := Prime, 
                                   Conditional := Conditional);
   else
     return InternalGaloisGroup(O: Al := Al, Prime := Prime, 
                                   Conditional := Conditional,
                                   Precision := Precision);
   end if;
 end if;
end intrinsic;

intrinsic GaloisGroup(K::FldAlg: Al := "pAdic", 
                          Prime := false, Precision := false,
                            Conditional := false) -> GrpPerm, SeqEnum, Any
{}

 if Prime cmpeq false then
   if Precision cmpeq false then
     return InternalGaloisGroup(K: Al := Al, Conditional := Conditional);
   else
     return InternalGaloisGroup(K: Al := Al, Conditional := Conditional,
                                   Precision := Precision);
   end if;
 else
   if Precision cmpeq false then
     return InternalGaloisGroup(K: Al := Al, Prime := Prime, 
                                   Conditional := Conditional);
   else
     return InternalGaloisGroup(K: Al := Al, Prime := Prime, 
                                   Conditional := Conditional,
                                   Precision := Precision);
   end if;
 end if;
end intrinsic;
*/

intrinsic IsAbelian(K::FldAlg[FldAlg[FldRat]]) -> BoolElt
  {Test if the automorphism group of the normal field over its coefficient field is abelian}
  G := GaloisGroup(K);
  return #G eq Degree(K) and IsAbelian(G);
end intrinsic;

intrinsic HilbertIrreducibilityCurves(f::RngUPolElt[FldFunRat[FldRat]] : MaxIndex := Infinity()) -> SetEnum, SeqEnum
{Return a finite set and a sequence of curves such that the rational points on the curves together with the finite set determine the exceptional set of f}

    // need a separable polynomial over a char 0 rational function field.
    disc := Discriminant(f);
    require not IsZero(disc) : "Argument 1 must be a separable polynomial";
    D := {};
    L := [];
    tt := Cputime();
    for pair in Roots(Numerator(LeadingCoefficient(f))) do
	Include(~D, pair[1]);
    end for;
    tt := Cputime(tt);
    vprint GaloisGroup, 2 : "Roots of LeadingCoefficient", tt;
    for pair in Roots(Numerator(disc)) do
	Include(~D, pair[1]);
    end for;
    tt := Cputime(tt);
    vprint GaloisGroup, 2 : "Roots of Discriminant", tt;

    // before Galois group changes the name
    A := AffineSpace(Rationals(), 2);
    AssignNames(~A, [Sprint(Parent(f).1), Sprint(CoefficientRing(f).1)]);

    vtime GaloisGroup, 2 :  G, r, S := GaloisGroup(f);
    //time GaloisProof(f, S); //verify the Galois group computation
    //"GaloisProof", Cputime();
    vtime GaloisGroup, 2 : Max := MaximalSubgroups(G);
    //smallest index first
    Max := Reverse(Max);
    if MaxIndex ne Infinity() then
	Max := [x : x in Max | Index(G, x`subgroup) le MaxIndex];
    end if;
    P2 := PolynomialRing(Rationals(), 2);
    x1 := P2.1;
    x2 := P2.2;
    for M in Max do
	vtime GaloisGroup, 2 : p := GaloisSubgroup(S, M`subgroup); //a defining polynomial for the fixed field of M
	for pair in Roots(Discriminant(p)) do
	    Include(~D, pair[1]);
	end for;
	Append(~L, <Curve(A, Evaluate(Polynomial([Evaluate(y, x2) : y in Coefficients(p)]), x1)), M`subgroup>);
    end for;
    return D, L;
end intrinsic;

intrinsic HilbertIrreducibilityCurves(f::RngUPolElt[RngUPol[FldRat]] : MaxIndex := Infinity()) -> SetEnum, SeqEnum
{"} //"
    f := Polynomial(FieldOfFractions(CoefficientRing(f)), f);
    return HilbertIrreducibilityCurves(f);
end intrinsic;
