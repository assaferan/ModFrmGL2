/******************************************************************************
 *
 *    conjugate.m Solves the conjugation problem for Sz
 *
 *    File      : $HeadURL:: https://subversion.sfac.auckland.ac.nz/svn/prj_#$:
 *    Author    : Henrik Bäärnhielm
 *    Dev start : 2004-12-10
 *
 *    Version   : $Revision:: 3272                                           $:
 *    Date      : $Date:: 2017-08-27 10:07:58 +1000 (Sun, 27 Aug 2017)       $:
 *    Last edit : $Author:: jbaa004                                          $:
 *
 *    $Id:: conjugate.m 3272 2017-08-27 00:07:58Z jbaa004                  $:
 *
 *****************************************************************************/

freeze;

/*****************************************************************************/
/* DECLARATIONS                                                              */
/*****************************************************************************/

declare verbose SuzukiConjugate, 10;

import "suzuki.m" : recognitionErrors, SuzukiReductionMaps,
       SuzukiReductionFormat, checkSuzukiProperSubgroups;
import "standard.m" : diagramAutomorphism, getSuzukiOrder;
import "../../../util/basics.m" : MatSLP;
import "membership.m" : getSuzukiRecognitionDataCore;
import "trick.m" : getStabiliser;

forward constructStandardGenerators, conjugateToSz;

// Status values from conjugate recognition
CONJ_SUZUKIGROUP    := 5; 
CONJ_WRONG_INPUT    := 6; 
CONJ_NOT_SYMPLECTIC := 7; 
CONJ_NOT_SUBGROUP   := 8; 
CONJ_PROPER_SUB     := 9; 

/*****************************************************************************/
/* TEST FUNCTIONS                                                            */
/*****************************************************************************/

/*
intrinsic TestSzConjugacy() -> BoolElt
{ }

    timings := [];
    nTries := 100;
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
	times := [];
	disc_times := [];
	for n in [1 .. nTries] do
	    G := RandomConjugate(SS);
	    W := WordGroup(G);
	    R := RandomProcessWithWords(G);
	    t := Cputime();
	    iso, g, disc_time :=
		SuzukiConjugacy(G : Randomiser := R, CheckInput := false);
	    Append(~times, Cputime(t));
	    Append(~disc_times, disc_time);
	end for;
	printf "\t3\n";
	Append(~timings,
	       <reals ! m,
		(reals ! (&+ times)) / (nTries * field_time),
		(reals ! (&+ disc_times)) / (nTries  * field_time)>);
    end for;

    print "\tTime\tDiscrete log time";
    for x in timings do;
	printf "%o\t%o\t%o\n", x[1], x[2], x[3];
    end for;
    return true;
end intrinsic;
*/

/*****************************************************************************/
/* MAIN INTRINSICS                                                           */
/*****************************************************************************/

intrinsic SuzukiConjugacy(G :: GrpMat[FldFin] : Randomiser :=
			  RandomProcessWithWords(G : WordGroup := WordGroup(G)),
			  CheckInput := true, W := WordGroup(G),
			  UseIntegerFact := false) -> Map, GrpMatElt
    {G \leq GL(4, q) is a conjugate of Sz(q).

    Return an explicit isomorphism to the standard copy H = G^x,
    as well as such an element x. }
    
    if CheckInput then
	bool := SuzukiConjugateRecogniser(G);
	if not bool then
	    error "Sz conjugation: G is not a conjugate of Sz";
	end if;
    end if;
    
    if not assigned G`RandomProcess then
	G`RandomProcess := Randomiser;
    end if;

    alpha1, h1, gamma, discrete_log_time := constructStandardGenerators(G);
    conj := conjugateToSz(G, alpha1, h1, gamma);
    image := G^conj;
    
    // Construct isomorphism from G to standard Sz
    homo := hom<G -> Generic(image) | x :-> x^conj>;
    iso := hom<G -> image | x :-> Generic(image) ! Function(homo)(x)>;

    if not assigned G`SuzukiReductionData then
	G`SuzukiReductionData := rec<SuzukiReductionFormat |
	    conjugator := conj,
	    maps := rec<SuzukiReductionMaps | conjugation := iso>>;
    else
	G`SuzukiReductionData`conjugator := conj;
	if not assigned G`SuzukiReductionData`maps then
	    G`SuzukiReductionData`maps :=
		rec<SuzukiReductionMaps | conjugation := iso>;
	end if;
    end if;
    
    vprint SuzukiConjugate, 3 : "Setup constructive membership data";

    G`SuzukiRecognitionData :=
	getSuzukiRecognitionDataCore(G, alpha1, h1, gamma, conj);
    vprint SuzukiConjugate, 3 : "Conjugation problem solved";

    return iso, conj, discrete_log_time;
end intrinsic;

intrinsic SuzukiConjugateRecogniser(G :: GrpMat) -> BoolElt, RngIntElt
    { G \leq GL(4, q). Determine (non-constructively) if G is a conjugate of
    the standard copy of Sz(q). }
    local form, field, GG, H, q;

    vprint SuzukiConjugate, 8: "Checking input";
    
    // Check that input is sensible
    if not (Degree(G) eq 4 and Category(F) eq FldFin and
	Characteristic(F) eq 2 and IsOdd(Degree(F)) and Degree(F) gt 1)
	where F is CoefficientRing(G) then
	return false, CONJ_WRONG_INPUT;
    end if;
    
    vprint SuzukiConjugate, 8: "Checking preserved form";

    // Check that G is conjugate to a subgroup of Sp(4, q), ie check that it
    // preserves a symplectic form
    flag, form := SymplecticForm(G);
    if not flag then
	return false, CONJ_NOT_SYMPLECTIC;
    end if;
    
    field := CoefficientRing(G);
    q := #field;
    
    vprint SuzukiConjugate, 8: "Conjugating form";

    // Make sure G preserves standard form
    conj := TransformForm(form, "symplectic");
    H := G^conj;

    // Determine if G is a subgroup of Sz(q)
    GG := sub<Generic(H) | [diagramAutomorphism(H.i) :
	i in [1 .. NumberOfGenerators(H)]]>;
    if not IsIsomorphic(GModule(H), GModule(GG)) then
	return false, CONJ_NOT_SUBGROUP;
    end if;

    // Determine if G is a proper subgroup of Sz(q)
    if checkSuzukiProperSubgroups(G) then
	return true, CONJ_SUZUKIGROUP;
    else
	return false, CONJ_PROPER_SUB;
    end if;    
end intrinsic;

/*****************************************************************************/
/* AUXILIARY FUNCTIONS                                                       */
/*****************************************************************************/

function constructStandardGenerators(G : UseIntegerFact := false)
    assert Degree(G) eq 4;
    assert assigned G`RandomProcess;
    F := CoefficientRing(G);
    m := (Degree(F) - 1) div 2;
    t := 2^(m + 1);

    gens, discrete_log_time :=
		getStabiliser(G : UseIntegerFact := UseIntegerFact);
    alpha1 := gens[1];
    assert Order(alpha1`mat) eq 4;

    MA := MatrixAlgebra(F, Degree(G));
    flags := [[Nullspace((MA ! alpha1`mat - 1)^i) : i in [1 .. Degree(G)]]];
    P := flags[1][1];
    assert Dimension(P) eq 1;
    assert P * alpha1`mat eq P;
    
    repeat
	beta, beta_w := Random(G`RandomProcess);
    until P * beta ne P;

    gamma := rec<MatSLP | mat := (alpha1`mat^2)^beta,
			  slp := (alpha1`slp^2)^beta_w>;
    assert IsIdentity(gamma`mat * gamma`mat);
    return alpha1, gens[2], gamma, discrete_log_time;
end function;

function conjugateToSz(G, f, e, z)
    assert Degree(G) eq 4;
    assert assigned G`RandomProcess;
    F := CoefficientRing(G);
    m := (Degree(F) - 1) div 2;
    t := 2^(m + 1);

    MA := MatrixAlgebra(F, Degree(G));
    flags := [[Nullspace((MA ! f`mat - 1)^i) : i in [1 .. Degree(G)]]];
        
    alpha2 := rec<MatSLP | mat := f`mat^z`mat,
			   slp := f`slp^z`slp>;
    Append(~flags, [Nullspace((MA ! alpha2`mat - 1)^i) :
		    i in [1 .. Degree(G)]]);

    // Get one-dimensional subspaces
    spaces := [Basis(flags[1][1])[1], Basis(flags[1][2] meet flags[2][3])[1]];
    spaces cat:= [spaces[2] * z`mat, spaces[1] * z`mat];

    conjugator := GL(Degree(G), CoefficientRing(G)) !
		  &cat[ElementToSequence(spaces[i]) : i in [1 .. #spaces]];

    H := G^(conjugator^(-1));
    flag, form := SymplecticForm(H);
    assert flag;
    assert form[1, 4] eq form[4, 1] and form[2, 3] eq form[3, 2]
	   and form[1, 4] eq 1;
    
    vprint SuzukiConjugate, 3 : "Compute final diagonal conjugator";

    x := Sqrt(form[2, 3]);
    fix := Generic(G) ! DiagonalMatrix(F, [1, x, x, 1]);
    assert SuzukiStandardRecogniser(H^fix);
    return conjugator^(-1) * fix;
end function;
