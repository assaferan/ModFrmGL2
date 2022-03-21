
function getLevel(PH,p,k)
    level := p^k;
    assert CongruenceSubgroup(level) subset PH;
    assert Index(PH) gt 1;
    repeat
	level := level div p;
    until not (CongruenceSubgroup(level) subset PH);
    return level*p;
end function;

// Algorithm 2.5
forward CongruenceSubgroupsPrimePower;

// The Cummins-Pauli data is up to GL2-conjugacy (see e.g. SL(2, Integers(8)))
function UpToConjugacy(L)
    L_conj := [];
    for a in L do
	G := a[2];
	G_index := a[1];
	G_exists := false;
	for x in L_conj do
	    H := x[2];
	    H_index := x[1];
	    if BaseRing(ModLevel(H)) eq BaseRing(ModLevel(G)) then
		if IsConjugate(ModLevelGL(G), ImageInLevel(G), ImageInLevel(H)) then
		    G_exists := true;
		    break;
		end if;
	    end if;
	end for;
	if not G_exists then Append(~L_conj, a); end if;
    end for;
    return L_conj;
end function;

import "congruence.m" : GetGLModel;

function genus(PG)
    // G := sub<ModLevel(PG) | ImageInLevel(PG), [-1,0,0,-1]>;
    // PG := PSL2Subgroup(G);
    return Dimension(CuspidalSubspace(ModularSymbols(PG, 2, Rationals(), 0))) div 2;
end function;

function CongruenceSubgroupsPrimePower(PG, g, p, k : rec_level := 0, indexPG := 1)
    prefix := &cat(["\t" : i in [1..rec_level]] cat [""]);
    print prefix cat "Computing subgroups of group of index ", indexPG;
    evLB := 975/4096;
    alpha := 24/evLB; // coefficient of m lt alpha*(g+1)
    level := Level(PG);
    print prefix cat "Level of group is ", level;
    if level ne 1 then
	is_prime_power, q, n := IsPrimePower(level);
	assert is_prime_power and (q eq p) and (n le k);
    else
	n := 0;
    end if;
    if indexPG eq Index(CongruenceSubgroup(p^k)) then
	return [<indexPG, PG>];
    end if;
    L := [];
    if (n eq 0) and (p le 5) then
	base_exp := 2;
	S := MaximalSubgroups(SL(2, Integers(p^2)));
    elif (n eq 0) and (p gt 5) then
	base_exp := 1;
	S := MaximalSubgroups(SL(2, Integers(p)));
    else
	base_exp := n+1;
	G := ImageInLevel(PG);
	//	gens := [[Integers()!x : x in Eltseq(g)] : g in Generators(G)];
	gens := [Eltseq(FindLiftToSL2(g)) : g in Generators(G)];
	// gens := [Eltseq(g) : g in Generators(PG)];
	// generators of Gamma(p^n)
	gens cat:= [[1+a*p^n, b*p^n, c*p^n, 1+d*p^n] : a,b,c,d in [0..p-1] | (1+a*p^n)*(1+d*p^n)-b*c*p^(2*n) mod p^(n+1) eq 1];
	// gens cat:= [Eltseq(g) : g in Generators(CongruenceSubgroup(p^n))];
	S := MaximalSubgroups(sub<SL(2, Integers(p^(n+1))) | gens>);
    end if;
    print prefix cat "Looking at the ", #S, " maximal subgroups";
    for i->H in S do
	// H_gens := [Eltseq(FindLiftToSL2(h)) : h in Generators(H`subgroup)];
	// H_gens cat:= [Eltseq(g) : g in Generators(CongruenceSubgroup(p^base_exp))];
	// H_gens := [PSL2(Integers()) | x : x in H_gens];
	// PH := PSL2SubgroupFromGens(H_gens, Integers(), p^base_exp, true);
	PH := PSL2Subgroup(H`subgroup, true);
	Hsub := sub<SL(2, Integers(p^base_exp)) | H`subgroup, [-1,0,0,-1]>;
	index := Index(SL(2, Integers(p^base_exp)), Hsub);
	if (index ne indexPG) and (genus(PH) le g) then
	    print prefix cat "Group no. ", i, " has genus lt ", g;
	    // making sure the level of PH is correct.
	    PH`Level := getLevel(PH,p,base_exp);
	    PH`ModLevel := SL(2, Integers(Level(PH)));
	    PH`ModLevelGL := GL(2, Integers(Level(PH)));
	    PH`ImageInLevel := sub<PH`ModLevel | [[Integers(Level(PH))!y : y in Eltseq(x)] : x in Generators(Hsub)]>;
	    print prefix cat "It has level ", Level(PH), "and index ", index;; 
	    _, _, m := IsPrimePower(Level(PH));
	   
	    // index := Index(PH);
	    if (m le k) then
		Append(~L, <index, PH>);
	    end if;
	    // if (m lt base_exp) and (index le 1/2*alpha*(g+1)) then
	    if (m le k) and (index le 1/2*alpha*(g+1)) then
		// N := CongruenceSubgroupsPrimePower(PH, g, p, Minimum(m+1,k) : rec_level := rec_level+1, indexPG := index);
		N := CongruenceSubgroupsPrimePower(PH, g, p, k : rec_level := rec_level+1, indexPG := index);
		L cat:= N;
	    end if;
	end if;
    end for;
    return UpToConjugacy(L);
end function;

// Algorithm 2.6
function CongruenceSubgroupsLevel(g, l, PG : indexPG := 1)
    evLB := 975/4096;
    alpha := 24/evLB; // coefficient of m lt alpha*(g+1)
    L := [];
    if (indexPG eq 1) and (GCD(l, 2*3*5) eq 1) then
	q := Maximum(PrimeDivisors(l));
	S := MaximalSubgroups(SL(2, Integers(q)));
    else
	G := ImageInLevel(PG);
	gens := [Eltseq(FindLiftToSL2(g)) : g in Generators(G)];
	m := Level(PG);
	assert l mod m eq 0;
	gens cat:= [[1+a*m, b*m, c*m, 1+d*m] : a,b,c,d in [0..(l div m)-1] | (1+a*m)*(1+d*m)-b*c*m^2 mod l eq 1];
	S := MaximalSubgroups(sub<SL(2, Integers(l)) | gens>);
	q := l;
    end if;
    for H in S do
	PH := PSL2Subgroup(H`subgroup, true);
	Hsub := sub<SL(2, Integers(q)) | H`subgroup, [-1,0,0,-1]>;
	index := Index(SL(2, Integers(q)), Hsub);
	if (index ne indexPG) and (genus(PH) le g)  then
	    Append(~L, <index, PH>);
	    if (index le 1/2*alpha*(g+1)) then
		N := CongruenceSubgroupsLevel(g,l,PH : indexPG := index);
		L cat:= N;
	    end if;
	end if;
    end for;
    return L;
end function;

// Algorithm 2.7
function CongruenceSubgroupsGenusUpTo(g)
    print "Computing groups of genus up to ", g;
    if g eq 0 then
	l_bound := 168;
    else
	l_bound := Floor(12*g+1/2*(13*Sqrt(48*g+121) + 145));
    end if;
    print "bound on level is ", l_bound;
    M0 := [l : l in [1..l_bound] | &and[p le 12*g+13 : p in PrimeDivisors(l)]];
    M := [l : l in M0 | &and[l2 mod l ne 0 : l2 in M0 | l2 ne l]];
    prime_powers := [l : l in M | IsPrimePower(l)];
    print "maximal prime powers are ", prime_powers;
    M := [l : l in M | l notin prime_powers];
    print "other maximal levels are ", M;
    L := [];
    for l in prime_powers do
	print "Computing subgroups containing Gamma(", l, ")...";
	_, p, k := IsPrimePower(l);
	L cat:= CongruenceSubgroupsPrimePower(Gamma0(1), g, p, k);
    end for;
    for l in M do
	print "Computing subgroups containing Gamma(", l, ")...";
	L cat:= CongruenceSubgroupsLevel(g, l, Gamma0(1));
    end for;
    return L;
end function;
