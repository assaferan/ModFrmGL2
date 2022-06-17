import "ModSym/linalg.m" : Restrict;
import "ModSym/operators.m" : ActionOnModularSymbolsBasis;
import "congruence.m" : createPSL2Models;

function FindIsomorphicGroup(PG, t)
    GL2Q := GL(2, Rationals());
    alpha := GL2Q![1,0,0,t];
    gensG := Generators(PG);
    new_gens := [alpha * GL2Q!Eltseq(gg) * alpha^(-1) : gg in gensG];
    N := Level(PG);
    return PSL2Subgroup(sub<GL(2, Integers(N*t)) | new_gens>);
end function;

// fund the label of PG in shim_list
function IdentifyLabelShimura(PG, labels, grps)
    N := Level(PG);
    level_labels := [label : label in labels | grps[label]`level eq N];
    for label in level_labels do
	grp := grps[label];
	vprintf ModularCurves, 1 : "Computing possible GL2 models for the group %o...\n", label;
	Gs := createPSL2Models(grp);
	vprintf ModularCurves, 1 : "Finding a model of Shimura type...\n";
	assert exists(i){i : i in [1..#Gs] | IsGammaShimura(Gs[i])};
	vprintf ModularCurves, 1 : "Extracting parameters...\n";
	_, U, phi, H, t := IsGammaShimura(Gs[i]);
	PG_label := GammaShimura(U, phi, H, t);
	if (PG eq PG_label) then return label, U, phi, H, t; end if;
    end for;
    return false;
end function;

function checkALQuotientShimura(idx, labels, grps)
    label := labels[idx];
    grp := grps[label];
    GL2Q := GL(2, Rationals());
    vprintf ModularCurves, 1 : "Computing possible GL2 models for the group %o...\n", label;
    Gs := createPSL2Models(grp);
    vprintf ModularCurves, 1 : "Finding a model of Shimura type...\n";
    // otherwise this is not of Shimura type
    assert exists(i){i : i in [1..#Gs] | IsGammaShimura(Gs[i])};
    _, U, phi, H, t := IsGammaShimura(Gs[i]);
    PG := GammaShimura(U, phi, H, t);
    if (t ne 1) then
	vprintf ModularCurves, 1 : "t is not 1, finding an isomorphic group...\n";
	PG := FindIsomorphicGroup(PG,t);
	label, U, phi, H, t := IdentifyLabelShimura(PG, labels, grps);
	vprintf ModularCurves, 1: "isomrophic to %o\n", label;
	// verification
	assert t eq 1;
    end if;
    N := Level(PG);
    U_t, phi_t := UnitGroup(Integers(N*t));
    red_N := hom<Integers(N*t) -> Integers(N)|>;
    gens := [U_t.i : i in [1..Ngens(U_t)]];
    red_U := hom<U_t -> U | [red_N(phi_t(x))@@phi : x in gens]>;
    H_t := H@@red_U;
    MS_H := ModularSymbolsH(N*t, [Integers()!phi_t(g) : g in Generators(H_t)], 2, 0);
    C_H := CuspidalSubspace(MS_H);
    qs := [p^Valuation(N,p) : p in PrimeDivisors(N)];
    al_qs := AssociativeArray();
    gensG := Generators(PG);
    for q in qs do
	d, x, y:= XGCD(q,-Integers()!(N/q));
        g := [q*x, y, N, q];
	is_al := &and[GL2Q!g * GL2Q!Eltseq(gg) * GL2Q!g^(-1) in PG : gg in gensG];
	if is_al then
	    A := ActionOnModularSymbolsBasis(g, MS_H);
	    al := Restrict(A, Representation(C_H));
	    al_qs[q] := al;
	end if;
    end for;
    g := Dimension(C_H) div 2;
    all_als := [<&*S,&*{MatrixAlgebra(Rationals(), 2*g) | al_qs[s] : s in S}> : S in Subsets(Keys(al_qs)) | not IsEmpty(S)];
    // genuc check
    // we're only interested in the planar curve case
    assert exists(d){d : d in [1..10] | (d-1)*(d-2) eq 2*g};
    f := d + (d mod 2);
    for al in all_als do
	g_quo := Dimension(Kernel(al[2]-1)) div 2;
	// Riemann-Hurwitz
	RH := 2*g-2 - 2*(2*g_quo-2) - f;
	if (RH ne 0) then
	    vprintf ModularCurves, 1 : "The quotient by W_{%o} has genus %o, contradicting RH as for a plane curve as we expected %o fixed points, but there are %o.\n", al[1], g_quo, f, RH + f;
	    return false, al[1], g_quo, f, RH + f;
	end if;
    end for;
    return true;
end function;
