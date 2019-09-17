freeze;

/* 
 * Computing a cleaned and rearranged set of PC generators for
 *   a unipotent matrix group. Algorithm by JF Carlson.
 * 
 * Dan Roozemond, Oct. 2010.
 */
intrinsic PCGenerators(G::GrpMatUnip[FldFin] : GensAreKnownPCSet := false, Check := true) -> SeqEnum, SeqEnum, GrpMatElt
{Compute a rearranged and cleaned up PC set of generators for a unipotent matrix group.
Such a set is computed automatically when needed, so it should not be necessary to call
this function explicitly unless there is a need to change some of the parameters.}

	k := GensAreKnownPCSet select 1 else 0;
	gens, trace := InternalUnipPCGensCleaned(G, k, Check);
	conj := G`Conjugator;

	return gens, trace, conj;
end intrinsic;

function WordMapPC(G) //WordMapPC(::GrpMat[FldFin]) -> Map
/* The word map sending elements of G to elements of the GrpSLP corresponding
   to its PC generators. */

	/* Ensure generators are computed */
	_ := InternalUnipPCGensCleaned(G, 2, true);
	
	/* The groups */
	Hpc := G`GrpSLPPC;
	
	/* The map to the pc gens */
	function mat_to_slp(x)
		b, c := InternalUnipPCWordProblem(G, x);
		if not b then error "Element not in group"; end if;
		return c;
	end function;
	wmp := map<GL(Degree(G), CoefficientRing(G)) -> Hpc | x:->mat_to_slp(x)>;
	
	/* Done. */
	return wmp;
end function;

intrinsic WordMap(G::GrpMatUnip[FldFin]) -> Map
{ The word map sending elements of G to elements of the GrpSLP corresponding
 to the original generators.}

	/* The WordMapPC, the groups, the traces for the gens. */
	wmp := WordMapPC(G);
	Hpc := G`GrpSLPPC;
	H := G`GrpSLPOrig;
	trace := G`PCGensTrace;

	/* Compose with the trace to map pc-gens to the original gens */
	phi := hom<Hpc -> H | trace>;
	return map<Domain(wmp) -> H | x:->phi(wmp(x))>;
end intrinsic;

intrinsic PCPresentation(G::GrpMatUnip[FldFin]) -> GrpPC, Map, Map
{ Construct a PC group H from G. 2nd return value is the map
  from G to H, 3rd return value is the map from H to G.}

	/* Construct the GrpPC */
	H := InternalUnipPCPresentation(G);
	gens := G`PCGens;
	assert #gens eq NumberOfPCGenerators(H);

	/* Construct the map from G to H */
	wmp := WordMapPC(G);
	phi := hom<G -> H | x :-> Evaluate(wmp(x), H)>;

	/* Construct the map from H to G */
	c := G`Conjugator;
	if IsIdentity(c) then
		psi := hom<H -> G | gens>;
	else
		cinv := c^-1;
		psi := hom<H -> G | [ g^cinv : g in gens]>;
	end if;
	
	return H, phi, psi;
end intrinsic;

intrinsic UnipotentMatrixGroup(G::GrpMat[FldFin]) -> GrpMatUnip
{ Construct a known-unipotent matrix group from G. }

  return UnipotentMatrixGroup<Degree(G), CoefficientRing(G) | [ G.i : i in [1..Ngens(G)] ]>;
end intrinsic;

intrinsic Centralizer(G::GrpMatUnip, x::GrpMatElt) -> GrpMatUnip
{ The centralizer of x in G, where x is an element of G}
    require x in G : "element must be member of the group";
    P, toP, toG := PCPresentation(G);
    C := Centralizer(P, x@toP) @ toG;
    return C;
end intrinsic;

intrinsic IsConjugate(G::GrpMatUnip, x::GrpMatElt, y::GrpMatElt) -> BoolElt, GrpMatElt
{Whether or not x and y are conjugate in G, where x and y are in G. If so, also return an element of G conjugating x to y}
    require x in G and y in G : "Both x and y must be elements of G";
    P, toP, toG := PCPresentation(G);
    fl, z := IsConjugate(P, x@toP, y@toP);
    if fl then
	z := z@toG;
	return true, z;
    else
	return false, _;
    end if;
end intrinsic;

intrinsic Normalizer(G::GrpMatUnip, H::GrpMat) -> GrpMatUnip
{ The normalizer of H in G, where H is a subgroup of G}
    require H subset G : "2nd argument must be contained in the first";
    P, toP, toG := PCPresentation(G);
    C := Normalizer(P, H@toP) @ toG;
    return C;
end intrinsic;

intrinsic IsConjugate(G::GrpMatUnip, H::GrpMat, K::GrpMat) -> BoolElt, GrpMatElt
{Whether or not x and y are conjugate in G, where x and y are in G. If so, also return an element of G conjugating x to y}
    require H subset G and K subset G : "Both H and K must be subgroups of G";
    P, toP, toG := PCPresentation(G);
    fl, z := IsConjugate(P, H@toP, K@toP);
    if fl then
	z := z@toG;
	return true, z;
    else
	return false, _;
    end if;
end intrinsic;

intrinsic LowerCentralSeries(G::GrpMatUnip) -> SeqEnum
{The lower central series of G.}
    P, toP, toG := PCPresentation(G);
    lcs := LowerCentralSeries(P);
    lcs2 := lcs @ toG;
    for i := 1 to #lcs do lcs2[i]`Order := #lcs[i]; end for;
    return lcs2;
end intrinsic;

intrinsic UpperCentralSeries(G::GrpMatUnip) -> SeqEnum
{The lower central series of G.}
    P, toP, toG := PCPresentation(G);
    lcs := UpperCentralSeries(P);
    lcs2 := lcs @ toG;
    for i := 1 to #lcs do lcs2[i]`Order := #lcs[i]; end for;
    return lcs2;
end intrinsic;

intrinsic DerivedSeries(G::GrpMatUnip) -> SeqEnum
{The lower central series of G.}
    P, toP, toG := PCPresentation(G);
    lcs := DerivedSeries(P);
    lcs2 := lcs @ toG;
    for i := 1 to #lcs do lcs2[i]`Order := #lcs[i]; end for;
    return lcs2;
end intrinsic;

