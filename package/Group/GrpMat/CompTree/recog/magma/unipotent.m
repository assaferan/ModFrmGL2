/******************************************************************************
 *
 *    unipotent.m  Composition Tree Unipotent Code
 *
 *    File      : $HeadURL:: https://subversion.sfac.auckland.ac.nz/svn/prj_#$:
 *    Author    : Henrik B‰‰rnhielm and Eamonn O'Brien
 *    Dev start : 2008-04-05
 *
 *    Version   : $Revision:: 3278                                           $:
 *    Date      : $Date:: 2017-09-04 22:38:10 +1000 (Mon, 04 Sep 2017)       $:
 *    Last edit : $Author:: eobr007                                          $:
 *
 *    $Id:: unipotent.m 3278 2017-09-04 12:38:10Z eobr007                  $:
 *
 *****************************************************************************/

freeze;

// includes improvements by Allan Steel May-August 2017 
 
/*****************************************************************************/
/* DECLARATIONS                                                              */
/*****************************************************************************/

declare attributes GrpPC : UserWords;
declare attributes GrpAb : UserWords;

import "recog.m" : ModuleInfo, ActionMapsInfo, NodeTypes;
import "mathom.m" : AschbacherErrors, AschbacherError, ReductionWithScalar;

BlockInfo := recformat<
    module : ModGrp,
    block : ModTupFld,
    gens : SeqEnum,
    SLPs : SeqEnum,
    toBlock : Map,
    toBlockBatch : UserProgram>;

/*****************************************************************************/
/* MAIN INTRINSICS                                                           */
/*****************************************************************************/

function OpModules(node)
    factors := node`ModuleData`Factors;
    F := CoefficientRing(node`Group);
    prime := PrimeField(F);
    
    layers := [];
    
    // Get all projections to block below diagonal
    products := [[TensorProduct(Dual(factors[i]), factors[i + j]) :
	i in [1 .. #factors - j]] :  j in [1 .. #factors - 1]];

    for j in [1 .. #products] do
	layer := [];
	for i in [1 .. #products[j]] do
	    row := i;
	    col := i + j;

	    left := node`ModuleData`FactorCorners[row];
	    top := node`ModuleData`FactorCorners[col];
	    height := Dimension(factors[col]);
	    width := Dimension(factors[row]);

	    module := ModuleOverSmallerField(products[j][i], prime);
	    space := VectorSpace(products[j][i]);
	    image, toPrime := VectorSpace(space, prime);
	    
	    proj := hom<node`Group -> space | g :-> space !
	    ElementToSequence(Submatrix(g, top, left, height, width))>;

	    block := rec<BlockInfo |
		block := image,
		module := module,
		toBlock :=
		hom<node`Group -> image | g :-> toPrime(Function(proj)(g))>,
	        toBlockBatch :=
		    func<seq | [toPrime(Function(proj)(g)) : g in seq]>>;
	    
	    Append(~layer, block);
	end for;

	Append(~layers, layer);
    end for;

    return layers;
end function;

function UnipotentCheck(node)
    try
	// All comp factors of dim 1 and group acts trivially on all
        return IsUnipotent(node`Group), _;
    catch err
	error Error(rec<AschbacherError |
	Category := AschbacherErrors`unipotent, Error := err>);
    end try;    
end function;

// d:=12; layerNr := 5; Matrix(d,d, [<i+layer,i,1>: i in [1..d-layer], layer in  [1..layerNr-1]]);

function InSubDiagonal(seq, layerNr)
    for layer in [1 .. layerNr - 1] do
	elts := &join{{g[i + layer, i] :
	    i in [1 .. Degree(g) - layer]} : g in seq};
	//if #elts gt 1 or not IsZero(Rep(elts)) then
assert (#elts gt 1 or not IsZero(Rep(elts))) eq
    not IsZero(Rep(elts));
	if #elts gt 1 or not IsZero(Rep(elts)) then

//printf "InSubDiagonal(%o, %o) -> false\n", seq, layerNr;
	    return false;
	end if;
    end for;

//printf "InSubDiagonal(%o, %o) -> true\n", seq, layerNr;
//"U:", Universe(seq);
    return true;
end function;

function UnipotentImage(G, cbm, V, projBatch, layer, scalar)
    F := CoefficientRing(G);
    p := Characteristic(F);

    // Image is abelian, but we use a PC presentation
    image := AbelianGroup(GrpAb, [p : i in [1 .. Degree(V)]]);
    
    // Compute reduction into block space
    reduction := hom<G -> image | g :->
    image ! [Integers() ! y : y in ElementToSequence(x)] where
	x is Category(seq) eq SeqEnum select seq[1] else seq
	where seq is projBatch([g^cbm])>;
    
    // Test if matrices are in this block (not in previous)    

    test_seq := func<x |
	forall{g: g in x | IsLowerTriangularISD(g^cbm, layer)}>;
    test1 := func<seq | test_seq(x) where x is Category(seq) eq SeqEnum
        select seq else [seq]>;

    test0 := func<seq | forall{g : g in x |
	IsLowerTriangular(g^cbm)} and InSubDiagonal([g^cbm :
	g in x], layer) where x is Category(seq) eq SeqEnum
	select seq else [seq]>;

    function test(q)
	t0 := test0(q);
	t1 := test1(q);
	if t0 ne t1 then
	    "BAD q:", q;
	    "t0:", t0;
	    "t1:", t1;
	    "layer:", layer;
	    assert false;
	end if;
	return t0;
    end function;

    test := test1;

    reductionScalar := func<g | Function(reduction)(g),	Identity(G),
	Identity(G)>;

    // Store ActionMaps
    return rec<ActionMapsInfo |	Single := reduction,
	Scalar := reductionScalar,
	ToKernelBatch := func<seq | seq>,
	FromKernelBatch := func<seq | seq>,
	Batch := func<seq | [image ! [Integers() ! y : y in
	ElementToSequence(x)] : x in Category(cSeq) eq SeqEnum 
	select cSeq else [cSeq] where cSeq is
	projBatch([g^cbm : g in seq])], [Identity(G) : i in [1 .. #seq]]>,
	Test := func<g | test_seq([g])>,
	BatchTest := test>;
end function;

function UnipotentImageSpinning(G, cbm, V, block, scalar)
    F := CoefficientRing(G);
    p := Characteristic(F);
    
    // Image is elementary abelian, but we use a PC presentation
    image := AbelianGroup(GrpAb, [p : i in [1 .. Degree(V)]]);
    
    // Compute reduction into block space
    reduction := hom<G -> image | g :-> image ! [Integers() ! y :
    y in ElementToSequence(Function(block`toBlock)(g^cbm))]>;
    
    // Test if matrices are in this block (not in previous)    
    test := func<seq | true>;
    reductionScalar := func<g | Function(reduction)(g),	Identity(G),
	Identity(G)>;

    // Store ActionMaps
    return rec<ActionMapsInfo |	Single := reduction,
	Scalar := reductionScalar,
	ToKernelBatch := func<seq | seq>,
	FromKernelBatch := func<seq | seq>,
	Batch := func<seq | [Function(reduction)(g) : g in seq],
	[Identity(G) : i in [1 .. #seq]]>,
	Test := func<g | test([g])>,
	BatchTest := test>;
end function;

function SpinVectorWithSLPs(M, gens, slps, v, v_slp)
    N := sub<M | v>;
    N_slps := [v_slp];
    r := 1;

    assert Universe(N_slps) eq Universe(slps);
    assert #gens eq #slps;
    flag := true;
    
    while r le Dimension(N) and flag do
	flag := false;
	for i in [1 .. #gens] do
	    w := N.r * gens[i];

	    if w notin N then
		N := sub<M | N, w>;
		Append(~N_slps, N_slps[r] * slps[i]);
		r +:= 1;
		flag := true;
	    end if;
	end for;
    end while;
	    
    return N, N_slps;
end function;

function SpinElementsWithSLPs(M, actionGens, actionSLPs, elts, slps)
    V := sub<M | >;
    V_slps := [];
    
    for i in [1 .. #elts] do
	U, U_slps := SpinVectorWithSLPs(M, actionGens,
	    actionSLPs, elts[i], slps[i]);
	V := sub<M | UserGenerators(V), UserGenerators(U)>;
	V_slps cat:= U_slps;
    end for;

    return V, V_slps;
end function;

procedure UnipotentHomSpinning(~node, data)
    try
	// Layers will be set if this is Op
        assert assigned node`ModuleData`Factors;
	assert assigned node`ModuleData`RemovedOp;
	
	node`WordGroup := node`Parent`WordGroup;
	node`EvalGroup := node`Parent`EvalGroup;
	node`RandomProcess := RandomProcessWithValues(node`Group,
	    node`Parent`KernelSLPs[node`GenMap]);
	
	if not assigned node`ModuleData`Layers then
	    node`ModuleData`Layers := OpModules(node);
	end if;

	// Unipotent groups have no scalar
	assert IsIdentity(node`Scalar);
	
	cbm := Identity(node`Group);
	
	for layerNr in [1 .. #node`ModuleData`Layers] do
	    for blockNr in [1 .. #node`ModuleData`Layers[layerNr]] do	
		inputGens := node`ModuleData`Layers[layerNr][blockNr]`
		    toBlockBatch(UserGenerators(node`Group));
		V := sub<node`ModuleData`Layers[layerNr][blockNr]`block |
		    inputGens>;
		
		// Use first layer where there is a non-trivial image
		if Dimension(V) gt 0 then
		    assert #node`GenMap eq #inputGens;
		    U, U_slps := SpinElementsWithSLPs(
			node`ModuleData`Layers[layerNr][blockNr]`block,
			ActionGenerators(
			node`ModuleData`Layers[layerNr][blockNr]`module),
			UserGenerators(node`WordGroup),
			inputGens, node`Parent`KernelSLPs[node`GenMap]);
		    
		    node`ActionMaps := UnipotentImageSpinning(node`Group, cbm,
			U, node`ModuleData`Layers[layerNr][blockNr],
			node`Scalar);
		    
		    // In this case we already have the image
		    // Breaks connection between image and parent
		    // node`Image`InputGens is not in 1-1 correspondence
		    // with parent gens
		    node`Image`InputGens := [Codomain(node`ActionMaps`Single) !
			[Integers() ! y : y in ElementToSequence(g)]
			: g in UserGenerators(U)];
		    assert #node`Image`InputGens eq #U_slps;

		    node`Image`Group := sub<Codomain(node`ActionMaps`Single) |
			node`Image`InputGens>;
		    assert not IsTrivial(node`Image`Group);
		    
		    // Magma forgets UserGenerators
		    node`Image`Group`UserGenerators := node`Image`InputGens;
		    node`Image`Group`UserWords := U_slps;

		    assert NumberOfGenerators(node`WordGroup) eq
			NumberOfActionGenerators(node`ModuleData`
			Layers[layerNr][blockNr]`module);
				    
		    // Set scalars
		    node`Kernel`Scalar := node`Scalar;
		    node`Image`Scalar := Identity(node`Image`Group);

		    // Make sure that the in the image node this blocks is
		    // the first one
		    node`Image`ModuleData := node`ModuleData;

		    for j in [1 .. layerNr - 1] do
			Remove(~node`Image`ModuleData`Layers, 1);
		    end for;
		    for j in [1 .. blockNr - 1] do
			Remove(~node`Image`ModuleData`Layers[1], 1);
		    end for;

		    node`Image`ModuleData`Layers[1][1]`gens := 
			node`Image`InputGens;
		    node`Image`ModuleData`Layers[1][1]`SLPs := U_slps;
		    
		    // Remove an additional block or layer in the kernel
		    node`Kernel`ModuleData := node`Image`ModuleData;
		    
		    if #node`Kernel`ModuleData`Layers[1] gt 1 then
			Remove(~node`Kernel`ModuleData`Layers[1], 1);
		    else
			Remove(~node`Kernel`ModuleData`Layers, 1);
		    end if;
		    
		    delete node`ModuleData;
		    return;
		end if;
	    end for;
	end for;
    catch err
	error Error(rec<AschbacherError |
	Category := AschbacherErrors`unipotent, Error := err>);
    end try;
end procedure;

procedure UnipotentHomDiagonal(~node, priority)
    try
	// Layers will be set if this is Op
        if not assigned node`ModuleData`Factors then
	    M := GModule(node`Group);
	    series, factors, cbm := CompositionSeries(M);
	    cbm := Generic(node`Group) ! cbm^(-1);
		
	    // Save info about Op
	    node`ModuleData := rec<ModuleInfo |
		CBM := cbm,
		Factors := factors,
		ExhibitSummands := node`ModuleData`ExhibitSummands,
   	        SummandSort := node`ModuleData`SummandSort,
	        FactorComp := node`ModuleData`FactorComp>;
	else
	    // If this is O_p then we should not change basis
	    if assigned node`ModuleData`RemovedOp then
		//UnipotentHomSpinning(~node, priority);
		//return;
		cbm := Identity(node`Group);
	    else
		cbm := node`ModuleData`CBM;
	    end if;
	end if;
        	
	F := CoefficientRing(node`Group);
	prime := PrimeField(F);

	// Unipotent groups have no scalar
	// unless input group is unipotent and user explicitly set a scalar
	// ignore scalar in that case
	node`Scalar := Identity(node`Group);
	
	gens := [g^cbm : g in UserGenerators(node`Group)];
	
	for layer in [1 .. Degree(node`Group) - 1] do
	    U := VectorSpace(F, Degree(node`Group) - layer);
	    primeU, primeInc := VectorSpace(U, prime);
	    
	    proj := hom<node`Group -> primeU | g :-> primeInc(U !
	    [g[i + layer, i] : i in [1 .. Degree(node`Group) - layer]])>;
	    projBatch := func<seq | [Function(proj)(g) : g in seq]>;
	    
	    V := sub<primeU | projBatch(gens)>;
	    
	    // Use first layer where there is a non-trivial image
	    if Dimension(V) gt 0 then		
		node`ActionMaps := UnipotentImage(node`Group, cbm, V,
		    projBatch, layer, node`Scalar);
		
		// In this case we already have the image
		node`Image`InputGens :=
		    node`ActionMaps`Batch(UserGenerators(node`Group));
		node`Image`Group := sub<Codomain(node`ActionMaps`Single) |
		    node`Image`InputGens>;
		assert not IsTrivial(node`Image`Group);

		// Set scalars
		node`Kernel`Scalar :=
		    node`ActionMaps`ToKernelBatch([Identity(node`Group)])[1];
		node`Image`Scalar := Identity(node`Image`Group);
		node`Image`ScalarGroup := sub<node`Image`Group | node`Image`Scalar>;
		node`Kernel`ModuleData := node`ModuleData;

                node`CBM := func<node | cbm>;
		
		// Magma forgets UserGenerators
		node`Image`Group`UserGenerators := node`Image`InputGens;
		return;
	    end if;
	end for;

	error Error(rec<AschbacherError | Error := "No layer found",
	    Category := AschbacherErrors`unipotent>);
    catch err
	error Error(rec<AschbacherError |
	Category := AschbacherErrors`unipotent, Error := err>);
    end try;
end procedure;
