/******************************************************************************
 *
 *    trick.m   New trick for finding stabiliser element in Sz(q)
 *
 *    File      : $HeadURL:: https://subversion.sfac.auckland.ac.nz/svn/prj_#$:
 *    Author    : Henrik B‰‰rnhielm
 *    Dev start : 2006-03-31
 *
 *    Version   : $Revision:: 3252                                           $:
 *    Date      : $Date:: 2017-06-06 05:12:58 +1000 (Tue, 06 Jun 2017)       $:
 *    Last edit : $Author:: jbaa004                                          $:
 *
 *    $Id:: trick.m 3252 2017-06-05 19:12:58Z jbaa004                      $:
 *
 *****************************************************************************/

freeze;
 
/*****************************************************************************/
/* DECLARATIONS                                                              */
/*****************************************************************************/

declare verbose SuzukiNewTrick, 10;

SuzukiCentraliserInfo :=
    recformat<q : RngIntElt, conjugator : Rec, involution : Rec>;
declare attributes GrpMat : SuzukiCentraliserData;

import "../../../util/dihedral.m" : DihedralTrick;
import "../../../util/centraliser.m" : BrayAlgorithm;
import "../../../util/basics.m" : MatSLP;

/*****************************************************************************/
/* TEST FUNCTIONS                                                            */
/*****************************************************************************/

/*****************************************************************************/
/* AUXILIARY FUNCTIONS                                                       */
/*****************************************************************************/

// Diagonalise an element of order q-1 in standard Suzuki group
function diagonaliseSuzukiCyclicGroup(g)
    F := CoefficientRing(g);
    G := Generic(Parent(g));

    eigenvalues, eigenvectors := SuzukiCyclicEigenvalues(g);
    lambda := eigenvalues[2];
    
    // 4 x 4 conjugating matrix with eigenvectors
    x := G ! &cat[ElementToSequence(f) : f in eigenvectors];

    // 4 x 4 diagonal matrix with eigenvalues
    d := G ! DiagonalMatrix(F, 4, eigenvalues);
    assert d^x eq g;

    return d, x, lambda;
end function;

// Find element of order q-1 and diagonalise it
function findCyclicGroup(G : Precise := false)
    F := CoefficientRing(G);
    q := #F;
    assert assigned G`RandomProcess;
    
    repeat
	a, word := Random(G`RandomProcess);
    until Order(a : Proof := Precise) eq q - 1;
    
    d, x, lambda := diagonaliseSuzukiCyclicGroup(a);
    return a, word, d, x, lambda;
end function;

// Completion check for the Bray algorithm, which also finds the elements
// that we are looking for.
function centraliserCompletionCheck(G, U, involution, slpMap)
    // Take elements of even order in involution centraliser
    elements := [i : i in [1 .. NumberOfGenerators(G)] |
	G.i ne involution and Order(G.i) in {2, 4}];

    if #elements gt 0 then
	// Take arbitrary element
	k := Rep(elements);
	y := G.k;
	slp_y := slpMap[k];

	// Get corresponding involution
	if Order(y) eq 4 then
	    y ^:= 2;
	    slp_y ^:= 2;
	end if;
	
	assert assigned U`RandomProcess;
	field := CoefficientRing(G);

	// Find external involution 
	y := rec<MatSLP | mat := y, slp := slp_y>;
	z := y;
	repeat
	    g, w := Random(U`RandomProcess);
	    z`mat ^:= g;
	    z`slp ^:= w;
	until IsOdd(Order(involution * z`mat : Proof := false)) and
	    IsOdd(Order(z`mat * y`mat : Proof := false));

	c := rec<MatSLP | mat := involution, slp := slpMap[1]>;

	// Find q-1 element
	vprint SuzukiNewTrick, 2 : "Apply dihedral trick";
	g1 := DihedralTrick(c, z, U`RandomProcess);
	g2 := DihedralTrick(z, y, U`RandomProcess);
	g := rec<MatSLP | mat := g1`mat * g2`mat, slp := g1`slp * g2`slp>;

	// Check that we got an element of order q-1
	vprint SuzukiNewTrick, 2 : "Dihedral trick order", Order(g`mat);
	s, r := Quotrem(Order(g`mat), U`SuzukiCentraliserData`q - 1);
	
	if r eq 0 then
	    if involution^(g`mat) eq y`mat then
		G`SuzukiCentraliserData :=
		    rec<SuzukiCentraliserInfo | conjugator := g,
		    involution := z>;
		return true;
	    end if;
	end if;
    end if;

    return false;
end function;

// New trick to find an element of order 4, which avoids the magic polynomials
// and the need to consider double cosets.

function getOrder4Element(G : UseIntegerFact := false, UseDiscreteLog := true)
    assert assigned G`RandomProcess;
    F := CoefficientRing(G);
    m := (Degree(F) - 1) div 2;
    t := 2^(m + 1);

    // Find random element of order q - 1 and diagonalise it
    g, g_w, u, cc, lambda := findCyclicGroup(G : Precise := UseIntegerFact);

    discrete_log_time := 0;
    P<y> := PolynomialAlgebra(F);
    
    repeat
	// Get random matrix
	h, h_w := Random(G`RandomProcess);
	B := h^(cc^(-1));
	f := Identity(G);

	if u^B eq u^(-1) then
	    vprint SuzukiNewTrick, 6 : "Bad involution";
	    continue;
	end if;

	a := B[1, 1];
	b := B[2, 2];
	c := B[3, 3];
	d := B[4, 4];
	diagonal := {* a, b, c, d *};
	vprint SuzukiNewTrick, 6 : "Got diagonal", diagonal;
	if Multiplicity(diagonal, 0) eq 3 then
	    continue;
	end if;
	
	if a eq 0 and b eq 0 and c ne 0 and d ne 0 then
	    y_vals := [c / d];
	elif a ne 0 and b ne 0 and c eq 0 and d eq 0 then
	    y_vals := [a / b];
	else
	    eqn := a * b^t * c * y^4 +
		   (a^2 * d^t + a * b^t * d + a^t * c^2 + b^(t + 1) * c) * y^3 +
		   (a * c^(t + 1) + d * b^(t + 1)) * y^2 +
		   (a * c^t * d + a^t * d^2 + b^2 * d^t + b * c^(t + 1)) * y
		   + b* c^t * d;
	    y_vals := [root[1] : root in Roots(eqn)];
	end if;

	roots := [x : yy in y_vals
		 | a * x^2 * yy^2 + b * x^2 * yy + c * yy + d eq 0
		 where x is yy^(2^m)];
	vprint SuzukiNewTrick, 6 : "Got roots", roots;
	    
	// Get corresponding elements in correct coset as words in generators
	for r in roots do
	    f_hat := Generic(G) !
		     DiagonalMatrix([r^(t + 1), r, r^(-1), r^(-t - 1)]) * B;
	    
	    if Order(f_hat) eq 4 then
		vprint SuzukiNewTrick, 3 : "Candidate found!";

		if UseDiscreteLog then
		    vprint SuzukiNewTrick, 3 : "Apply discrete log";
		    disc_time := Cputime();
		    k := Log(lambda, r);
		    discrete_log_time +:= Cputime(disc_time);
		    f := g^k * h;
		    slp_f := g_w^k * h_w;
		    vprint SuzukiNewTrick, 3 : "Discrete log done";
		else
		    slp_f := Identity(Parent(g_w));
		end if;
		
		break;
	    end if;
	end for;
    until Order(f) eq 4;

    return rec<MatSLP | mat := f, slp := slp_f>, discrete_log_time;
end function;

// Main function of the new trick. Finds generators for a stabiliser of a point
// and also the extra involution that generates the whole of Sz.
// Note that these generators do not in general give an isomorphism to the
// standard copy.

function getStabiliser(G : UseDiscreteLog := true,
		       UseIntegerFact := false, FieldSize := 0)
    local x, invol, slp, slp_x, centraliser, slpMap, g, q, field;
    
    assert assigned G`RandomProcess;
    F := CoefficientRing(G);

    // Find element of order 4
    // Use new trick if we are in the natural representation and random search
    // otherwise.
    if Degree(G) eq 4 and Characteristic(F) eq 2 and
	IsOdd(Degree(F)) and Degree(F) gt 1 then
	x, discrete_log_time :=
		getOrder4Element(G : UseDiscreteLog := UseDiscreteLog,
				 UseIntegerFact := UseIntegerFact);
	q := #F;
    else
	q := FieldSize;
	flag, x, slp_x := RandomElementOfOrder(G, 4 :
	    Randomiser := G`RandomProcess, MaxTries := q^2);
	assert flag;
	discrete_log_time := 0;
    end if;

    // Find centraliser of corresponding involution and find the generators
    // inside this centraliser
    vprint SuzukiNewTrick, 2 : "Getting involution centraliser";
    invol := x`mat^2;
    slp := x`slp^2;
    G`SuzukiCentraliserData := rec<SuzukiCentraliserInfo | q := q>;
    centraliser, slpMap := BrayAlgorithm(G, invol, slp :
	Randomiser := G`RandomProcess,
	completionCheck := centraliserCompletionCheck);

    g := centraliser`SuzukiCentraliserData`conjugator;
    z := centraliser`SuzukiCentraliserData`involution;

    assert Evaluate(x`slp, UserGenerators(G)) eq x`mat;
    assert Evaluate(g`slp, UserGenerators(G)) eq g`mat;
    
    vprint SuzukiNewTrick, 2 : "Stabiliser found";
    return [x, g, z], discrete_log_time;
end function;
