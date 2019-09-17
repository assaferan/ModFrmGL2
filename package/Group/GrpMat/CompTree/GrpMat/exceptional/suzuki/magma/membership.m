/******************************************************************************
 *
 *    membership.m Suzuki constructive membership testing code
 *
 *    File      : $HeadURL:: https://subversion.sfac.auckland.ac.nz/svn/prj_#$:
 *    Author    : Henrik B‰‰rnhielm
 *    Dev start : 2006-03-31
 *
 *    Version   : $Revision:: 3272                                           $:
 *    Date      : $Date:: 2017-08-27 10:07:58 +1000 (Sun, 27 Aug 2017)       $:
 *    Last edit : $Author:: jbaa004                                          $:
 *
 *    $Id:: membership.m 3272 2017-08-27 00:07:58Z jbaa004                 $:
 *
 *****************************************************************************/

freeze;
 
/*****************************************************************************/
/* DECLARATIONS                                                              */
/*****************************************************************************/

declare verbose SuzukiMembership, 10;

import "../../../util/basics.m" : MatSLP;
forward SuzukiConstructiveMembershipEngine, constructSemisimpleElement,
	constructDiagonalElement;

// Information stored with standard Sz copy, containing data used in
// membership testing
SuzukiRecognitionFormat := recformat<
    z : Rec,
    subDiagBasis : SeqEnum,
    subDiagElts : SeqEnum,
    subsubDiagBasis : SeqEnum,
    subsubDiagElts : SeqEnum,
    slpGroup : GrpSLP   // SLP group with redundant generators
>;

/*****************************************************************************/
/* TEST FUNCTIONS                                                            */
/*****************************************************************************/

/*
intrinsic TestSzMembership() -> BoolElt
{ }

    timings := [];
    nElts := 100;
    reals := RealField(5);
    SetAssertions(false);
    for m in [1 .. 100] do
	F := GF(2, 2 * m + 1 : Optimize := false);
	q := #F;
	S := Sz(F);
	R := RandomProcess(S);
	printf "Benchmark field size %o", m;

	field_time := 0;
	for i in [1 .. 10^6] do
	    t := Cputime();
	    _ := Random(F) * Random(F);
	    field_time +:= Cputime(t);
	end for;
	
	repeat
	    SS := sub<Generic(S) | [Random(R) : i in [1 .. 2]]>;
	until SuzukiStandardRecogniser(SS);
	printf "\t2";
	
	G := RandomConjugate(SS);
	W := WordGroup(G);
	R := RandomProcessWithWords(G : Scramble := 1);
	_ := SuzukiConjugacy(G : Randomiser := R, CheckInput := false);
	printf "\t3";

	times := [];
	for n in [1 .. nElts] do
	    g := Random(R);
	    t := Cputime();
	    flag, slp := SuzukiNaturalConstructiveMembership(
			     G, g : CheckInput := false, Randomiser := R);
	    Append(~times, Cputime(t));
	    assert flag;
 	    assert Evaluate(slp, UserGenerators(G)) eq g;
	end for;
	printf "\t4\n";
	Append(~timings, <reals ! m,
			  (reals ! (&+ times)) / (nElts * field_time)>);
    end for;

    print "\tTime";
    for x in timings do;
	printf "%o\t%o\n", x[1], x[2];
    end for;
    return true;
end intrinsic;
*/

/*****************************************************************************/
/* MAIN INTRINSICS                                                           */
/*****************************************************************************/

intrinsic SuzukiNaturalConstructiveMembership(G :: GrpMat, g :: GrpMatElt :
    Randomiser := RandomProcessWithWords(G : WordGroup := WordGroup(G)),
    CheckInput := true) -> BoolElt, GrpSLPElt
    { G is a conjuate of Sz(q), the standard copy, and g \in GL(4, q).
    
    Return true and straight line program of g in generators of G, if g \in G.
    Otherwise return false. }
    local bool, slp;

    if CheckInput then
	if not SuzukiStandardRecogniser(G) then
	    error "G is not the standard Suzuki group";
	end if;
    end if;

    assert assigned G`SuzukiReductionData;
    vprint SuzukiMembership, 2 : "Non-explicit membership";

    h := g^G`SuzukiReductionData`conjugator;
    
    // Non-constructive membership is easy
    if not SuzukiStandardMembership(h) then
	return false, _;
    end if;

    if not assigned G`RandomProcess then
	G`RandomProcess := Randomiser;
    end if;

    vprint SuzukiMembership, 2 : "Get recognition data";
    assert assigned G`SuzukiRecognitionData;
    vprint SuzukiMembership, 2 : "Get SLP for given element";

    // Perform constructive membership
    slp := SuzukiConstructiveMembershipEngine(G, h);
    assert Parent(slp) eq G`SuzukiRecognitionData`slpGroup;
    assert Parent(slp) eq WordGroup(G);
    return true, slp;
end intrinsic;

/*****************************************************************************/
/* AUXILIARY FUNCTIONS                                                       */
/*****************************************************************************/

// Core of the constructive membership routine
function SuzukiConstructiveMembershipEngine(G, g)
    F := CoefficientRing(G);
    m := (Degree(F) - 1) div 2;
    t := 2^(m + 1);

    assert assigned G`RandomProcess;
    assert assigned G`SuzukiRecognitionData;

    W := G`SuzukiRecognitionData`slpGroup;
    
    vprint SuzukiMembership, 1: "Entering Suzuki constructive membership";
    if not IsLowerTriangular(g) then
	V := VectorSpace(G);    
	v := V ! RowSequence(g)[1];
	v *:= v[4]^(-1);
	a := v[3];
	b := v[2];
	u1 := constructSemisimpleElement(G, a, b);
	assert u1`mat[4, 3] eq a and u1`mat[4, 2] eq b;
	k1 := G`SuzukiRecognitionData`z`mat * u1`mat;
	g_w := G`SuzukiRecognitionData`z`slp * u1`slp;
    else
	g_w := W ! 1;
	k1 := G ! 1;
    end if;
    
    k0 := g / k1;
    lambda := k0[2, 2];
    k3 := constructDiagonalElement(G, lambda);
    assert IsDiagonal(k3`mat) and k3`mat[2, 2] eq lambda;
    
    k2 := k3`mat^(-1) * k0;
    assert IsLowerTriangular(k2) and k2[1, 1] eq 1;

    c := k2[4, 3];
    d := k2[4, 2];
    u2 := constructSemisimpleElement(G, c, d);
    assert u2`mat[4, 3] eq c and u2`mat[4, 2] eq d;
    assert u2`mat eq k2;
    
    SLP := k3`slp * u2`slp * g_w;
    vprint SuzukiMembership, 1: "Leaving Suzuki constructive membership";
    return SLP;
end function;

function getSuzukiRecognitionDataCore(G, f, e, z, conj)
    F := CoefficientRing(G);

    subDiagBasis := [];
    subDiagElts := [];
    elt := rec<MatSLP | mat := f`mat^conj, slp := f`slp>;
    for i in [1 .. Degree(F)] do	
	Append(~subDiagBasis, elt`mat[4, 3]);
        Append(~subDiagElts, elt);
	elt`mat ^:= e`mat^conj;
	elt`slp ^:= e`slp;
    end for;

    subsubDiagBasis := [];
    subsubDiagElts := [];
    elt := rec<MatSLP | mat := (f`mat^2)^conj, slp := f`slp^2>;
    for i in [1 .. Degree(F)] do	
	Append(~subsubDiagBasis, elt`mat[4, 2]);
        Append(~subsubDiagElts, elt);
	elt`mat ^:= e`mat^conj;
	elt`slp ^:= e`slp;
    end for;

    assert #SequenceToSet(subDiagBasis) eq Degree(F);
    assert #SequenceToSet(subsubDiagBasis) eq Degree(F);

    // Construct standard generators for Gauss-Jordan elimination
    recognitionData := rec<SuzukiRecognitionFormat |
	z := rec<MatSLP | mat := z`mat^conj, slp := z`slp>,
	subDiagBasis := subDiagBasis,
	subDiagElts := subDiagElts,
        subsubDiagBasis := subsubDiagBasis,
	subsubDiagElts := subsubDiagElts,
	slpGroup := WordGroup(G)>;
    
    return recognitionData;
end function;

/*****************************************************************************/
/* AUXILIARY FUNCTIONS                                                       */
/*****************************************************************************/

function constructSemisimpleElement(G, a, b)
    F := CoefficientRing(G);
    V1, inc1 := VectorSpace(F, PrimeField(F),
			    G`SuzukiRecognitionData`subDiagBasis);
    assert Dimension(V1) eq Degree(F);
    
    // Obtain SLP of first sub diagonal
    coords := ChangeUniverse(Coordinates(V1, inc1(a)), Integers());
    j1 := rec<MatSLP |
	      mat := &*[G`SuzukiRecognitionData`subDiagElts[i]`mat^coords[i] :
		   	i in [1 .. #coords]],
	      slp := &*[G`SuzukiRecognitionData`subDiagElts[i]`slp^coords[i] :
		   	i in [1 .. #coords]]>;

    assert j1`mat[4, 3] eq a;
    
    // Obtain SLP of second sub diagonal
    beta := b - j1`mat[4, 2];
    V2, inc2 := VectorSpace(F, PrimeField(F),
			    G`SuzukiRecognitionData`subsubDiagBasis);
    assert Dimension(V2) eq Degree(F);

    coords := ChangeUniverse(Coordinates(V2, inc2(beta)), Integers());
    j2 := rec<MatSLP |
          mat := &*[G`SuzukiRecognitionData`subsubDiagElts[i]`mat^coords[i] :
		    i in [1 .. #coords]],
	  slp := &*[G`SuzukiRecognitionData`subsubDiagElts[i]`slp^coords[i] :
		    i in [1 .. #coords]]>;
    assert j2`mat[4, 2] eq beta;

    return rec<MatSLP | mat := j1`mat * j2`mat, slp := j1`slp * j2`slp>;
end function;

function constructDiagonalElement(G, lambda)
    F := CoefficientRing(G);
    m := (Degree(F) - 1) div 2;
    t := 2^(m + 1);

    z := G`SuzukiRecognitionData`z;
    u1 := constructSemisimpleElement(G, 0, lambda^(1 + t div 2));
    u2 := constructSemisimpleElement(G, lambda^(-t div 2),
				     lambda^(-1 - t div 2));
    u3 := constructSemisimpleElement(G, lambda^(t div 2), 0);
    return rec<MatSLP |
	       mat := z`mat * u1`mat * z`mat * u2`mat * z`mat * u3`mat,
	       slp := z`slp * u1`slp * z`slp * u2`slp * z`slp * u3`slp>;
end function;
