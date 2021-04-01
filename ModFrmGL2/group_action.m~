import "ModSym/operators.m" : ActionOnModularSymbolsBasis;

p := 17;
G := GL(2,Integers(p));
Z := Center(G);
PG, quo_G := G / Z;
G0 := SL(2, Integers(p));
PG0 := G0 @ quo_G;
gens := GeneratorsSequence(PG0);
quo_G0 := hom< G0 -> PG0 | [quo_G(x) : x in GeneratorsSequence(G0)]>;
gens_seq := [Eltseq(FindLiftToSL2(g @@ quo_G0)) : g in gens];
M_p := ModularSymbols(PSL2Subgroup(sub<G|[-1,0,0,-1]>), 2, Rationals());
S_p := CuspidalSubspace(M_p);
cusp_forms_space := DualVectorSpace(S_p);
gen_mats := [ActionOnModularSymbolsBasis(g, M_p) : g in gens_seq];
gen_mats_tr := [Transpose(g) : g in gen_mats];
gens_rest := [Restrict(x, cusp_forms_space) : x in gen_mats_tr];
Omega := GModule(PG0, gens_rest);
Omega_PG := Induction(Omega, PG);
// Change this one in the general case
T_prime := sub<G | [1,3,1,1]>;
N_prime := quo_G(Normalizer(G, T_prime));
Omega_N_prime := Restriction(Omega_PG, N_prime);
n_primes := [Representation(Omega_N_prime)(g) : g in Generators(N_prime)];
N_prime_inv := &meet[Kernel(n-1) : n in n_primes];
proj_basis := [Vector(Eltseq(x)[1..Dimension(S_p)]) : x in Basis(N_prime_inv)];
B := BasisMatrix(cusp_forms_space);
N_prime_proj := sub<cusp_forms_space | [b*B : b in proj_basis]>;


