// freeze;

/*
 * The theory of vertices and sources used here is from
 * [G] - Green, On the indecomposable representations of a finite group,
 * Math. Zeitschr. Bd. 70 (1959), 430--445.
 *
 * To find vertices we use the methods of
 * [DKZ] - Danz, Kulshammer & Zimmermann, On vertices of simple modules for
 * symmetric groups of small degrees, J. Algebra 320 (2008), 680--707.
*/


remove_proj_summands := function(M: lim := 0)
// Assumes M is a G-module for some p-group G, and the base ring of M is
// a finite field GF(q) of characteristic p.
// This is algorithm ProjSummands from DKZ.
// Searches for projective direct summands and returns a quotient module
// with any such found summands quotiented out.
// A Monte Carlo algorithm: The probability that the returned module has
// any projective direct summands is <= (1/q)^lim.

    f := FactoredOrder(Group(M));
    assert #f le 1;
    assert #f eq 0 or f[1,1] eq Characteristic(BaseRing(M));
    Q := M;
    order := Order(Group(M));
    count := 0;
    limit := lim;
    if limit le 0 then
	limit := Ceiling(Log(#BaseRing(M), 1000));
	limit := Max(limit, 2);
    end if;
    while count le limit and Dimension(Q) ge order do
	X := sub<Q | Random(Q)>;
	if Dimension(X) eq order then
	    count := 0;
	    Q := quo< Q | X>;
	else
	    count +:= 1;
	end if;
    end while;
    return Q;
end function;

RTEx := function(endos, delta, d, F, A, B)
     rt := RightTransversal(A, B);
     tr := [z : i in [1..#endos]] where z := ZeroMatrix(F, d, d);
     for g in rt do
         mat := delta(g);
         inv := mat^-1;
         for i := 1 to #tr do
             tr[i] +:= inv*endos[i]*mat;
	 end for;
     end for; 
     return tr;
end function;

RelTr := function(endos, M, chain)
// Computes the image of the relative trace map Tr_H^G on End(M)
    F := BaseRing(M);
    d := Dimension(M);
    delta := Representation(M);
    for s := #chain to 2 by -1 do
	mats := RTEx(endos, delta, d, F, chain[s-1], chain[s]);
	endos := [m : m in mats | not IsZero(m)];
	if #endos eq 0 then return endos; end if;
    end for;
    return endos;
end function;

IsRelProj := function(M, H, chain)
// tests for G-module M being relatively H projective using
// Higman's criterion based on relative trace map.
    d := Dimension(M);
    basis := Basis(EndomorphismAlgebra(Restriction(M, H)));
    return exists{m: m in RelTr(basis, M, Append(chain, H)) | Rank(m) eq d};
end function;

vert := function(M, G, H, chain, min)
// The vertex computation.
// chain is a descending chain of subgroups of G, to begin with G
    if #H gt min then
	Append(~chain, H);
	m := MaximalSubgroups(H);
	done := [];
	for r in m do
	    X := r`subgroup;
	    if G ne H and exists{x : x in done | IsConjugate(G, X, x)} then 
		continue r;
	    end if;
	    if IsRelProj(M, X, chain) then
		return $$(M, G, X, chain, min);
	    end if;
	    Append(~done, X);
	end for;
    end if;
    return H;
end function;

vertex_func := function(M, F, G, H, trials)
// Leaves checks to intrinsics.
// Returns vertex and indecomposable G-module such that the restriction of
// the module to the vertex has a source as a direct summnad
    p := Characteristic(F);
    if #G mod p ne 0 then
	V := sub<G|>;
	S := TrivialModule(V,F);
	return V, S;
    end if;
    if H cmpeq 0 then
	H := Sylow(G, p);
    else
	H := Sylow(H, p);
    end if;
    if #H eq 1 then
	S := TrivialModule(H,F);
	return H, S;
    end if;
    Gp := p^Valuation(#G,p);
    MH := Restriction(M,H);
    MH := remove_proj_summands(MH : lim := trials);
    done := [];
    V := sub<H|>;
    S := TrivialModule(V,F);
    for I in IndecomposableSummands(MH) do
	if exists{x : x in done | IsIsomorphic(I,x)} then 
	    continue I;
	end if;
	min := Gp div GCD(Gp, Dimension(I));
	min := Max(#V, min);
	vertI := vert(I, H, H, [], min);
	if vertI eq H then
	    return H, I;
	end if;
	if #vertI gt #V then V := vertI; S := I; end if;
	Append(~done, I);
    end for;
    return V, S;
end function;

intrinsic Vertex(M::ModGrp: H := 0) -> Grp
{A vertex for the G-module M}

    G := Group(M);
    require IsFinite(G): "Group must be finite";
    F := BaseRing(M);
    require IsField(F) and IsFinite(F) : "Base ring of G-module must be a finite field";
    V := vertex_func(M, F, G, H, 0);
    return V;
end intrinsic;

intrinsic Source(M::ModGrp: H := 0) -> ModGrp, ModGrp
{A source module for the G-module M, and the Green correspondent of M}
    G := Group(M);
    require IsFinite(G): "Group must be finite";
    F := BaseRing(M);
    require IsField(F) and IsFinite(F) :
	"Base ring of G-module must be a finite field";
    V := vertex_func(M, F, G, H, 0);
    N := Normalizer(G, V);
    MN := Restriction(M, N);
    I := IndecomposableSummands(MN);
    poss := [ <g,v> : g in I | #v eq #V where v := Vertex(g)];
    if #poss eq 1 then
	g := poss[1,1];
    else
	fl := exists(g){t[1] : t in poss | IsConjugate(G, t[2], V)};
	assert fl;
    end if;
    gV := Restriction(g, V);
    I := IndecomposableSummands(gV);
    s := I[1];
    return s, g;
end intrinsic;
