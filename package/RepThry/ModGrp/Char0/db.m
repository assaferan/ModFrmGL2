freeze;

/*******************************************************************************
				Defines
*******************************************************************************/

Z := IntegerRing();
Q := RationalField();

SEP := "%";

/*******************************************************************************
				Misc
*******************************************************************************/

char_to_seq := func<c | [Z!x: x in Eltseq(c)]>;

groups_identical := func<G, H |
    Degree(G) eq Degree(H) and Ngens(G) eq Ngens(H) and
	forall{i: i in [1 .. Ngens(G)] | G.i eq H.i}
    >;

groups_test := func<G, H, AllowEqualGroup |
    Degree(G) eq Degree(H) and Ngens(G) eq Ngens(H) and
    (AllowEqualGroup select
	(G eq H) else
	forall{i: i in [1 .. Ngens(G)] | G.i eq H.i}
    )>;

/*******************************************************************************
				File IO
*******************************************************************************/

get_ind_name := func<name | Sprintf("%o.ind", name)>;
get_rep_name := func<name, i | Sprintf("%o.r%o", name, i)>;

function get_path(fn)
    // return Sprintf("/tmp/RepRat/%o", fn);
    return Sprintf("%o/data/RepRat/%o", GetLibraryRoot(), fn);
end function;

procedure write_file(fn, T, comment)
    fn := get_path(fn);
    F := Open(fn, "w");
    if comment cmpne "" then
	fprintf F, "/*\n%o\n*/\n\n", comment;
    end if;
    fprintf F, "%o\n", T[1];
    for i := 2 to #T do
	fprintf F, "%o\n%o\n", SEP, T[i];
    end for;
end procedure;

function read_file_test(fn)
    fn := get_path(fn);
    l, F := ReadTest(fn);
    if not l then
	return false, _;
    end if;

    S := Split(F, SEP);
    T := <eval s: s in S>;
    return true, T;
end function;

function read_file(fn)
    l, T := read_file_test(fn);
    if not l then
	error "File not found:", get_path(fn);
    end if;

    return T;
end function;

/*******************************************************************************
				Make DB
*******************************************************************************/

intrinsic MakeRepsDB(name, G, R, C)
{Data into name}

    C := [char_to_seq(c): c in C];
    ind := <name, C>;
    ind := <C>;
    ind_name := get_ind_name(name);
    write_file(ind_name, ind, "");

    for i := 1 to #C do
	if not IsDefined(R, i) then
	    continue;
	end if;

	M := R[i, 1];
	rep_name := get_rep_name(name, i);
	L := [ActionGenerator(M, i): i in [1 .. Nagens(M)]];
	rep := <Sprint(L, "Magma")>;
	write_file(
	    rep_name, rep,
	    Sprintf(
		"%o\nDensity: %o", R[i], [Sprintf("%.5o", Density(x)): x in L]
	    )
	);
    end for;

end intrinsic;

/*******************************************************************************
			    Get from DB (all or abs num)
*******************************************************************************/

function make_module(G, DG, G2DG, L, p)
    if p ne 0 then
	F := GF(p);
	L := [Matrix(F, X): X in L];
    end if;

    if G2DG cmpne 1 then
	DM := GModule(DG, L: Check := false);
	r := Representation(DM);
	L := [r(G2DG(G.i)): i in [1 .. Ngens(G)]];
    end if;

    M := GModule(G, L: Check := false);
    return M;
end function;

/*
    return DBGetAll(name, G, DG, G2DG);

intrinsic DBGetAll(name::MonStgElt, G::Grp) -> SeqEnum, SeqEnum
{All reps for G given by name and corresponding characters}
*/

function DBGetAll(name, G, DG, G2DG: MaxDegree := 0, p := 0)
//-> SeqEnum, SeqEnum

    ind_name := get_ind_name(name);
//ind_name;
    l, I := read_file_test(ind_name);
    if not l then
	return [], [];
    end if;

    OC := Explode(I);
    R := [];
    C := [];

    for i := 1 to #OC do
	if MaxDegree gt 0 and OC[i, 1] gt MaxDegree then
	    continue;
	end if;
	rep_name := get_rep_name(name, i);
	l, F := read_file_test(rep_name);
	if l then
	    L := Explode(F);
	    M := make_module(G, DG, G2DG, L, p);
	    R[i] := M;
	    C[i] := OC[i];
	end if;
    end for;

    return R, C;

end function;

/*
intrinsic RepsDBGet(name::MonStgElt, G::Grp, i::RngIntElt) -> ModGrp, SeqEnum
{Rep number i for "name"}

    ind_name := get_ind_name(name);
    I := read_file(ind_name);

    OC := Explode(I);
    range := [1 .. #OC];
    require i in range: "Rep number must be in", range;

    rep_name := get_rep_name(name, i);
    R := read_file(rep_name);
    L := Explode(R);
    M := make_module(G, DG, G2DG, L, 0);

    return M, _; // OC[i]

end intrinsic;
*/

/*******************************************************************************
			    Get from DB (by name, char)
*******************************************************************************/

/*
    return DBGetChar(name, c, G, DG, G2DG);

intrinsic RepsDBGet(
    name::MonStgElt, c::AlgChtrElt: G := Group(Parent(c))
) -> ModGrp
{Rep given by c for name}
*/

function read_ind_file(name)
    ind_name := get_ind_name(name);
    l, I := read_file_test(ind_name);
    if not l then
	return false, "File not found";
    end if;
    return true, I;
end function;

function DBGetChar(name, c, G, DG, G2DG: p := 0) // -> ModGrp

    // c is char for G (not DG)
    // CR := Parent(c); G := Group(CR);

    c := &+GaloisOrbit(c);

    /*
    ind_name := get_ind_name(name);
    l, I := read_file_test(ind_name);
    if not l then
	return false, "File not found";
    end if;
    */

    l, I := read_ind_file(name);
    if not l then
	return false, "File not found";
    end if;

    OC := Explode(I);

    cms := SequenceToMultiset(Eltseq(c));
    OCMS := [SequenceToMultiset(c): c in OC];

//"c:", c; "Got cms:", cms;

    good_i := -1;
    match_i := [];
    for i := 1 to #OCMS do
	if cms eq OCMS[i] then
	    Append(~match_i, i);
	    /*
	    if good_i lt 0 then
		good_i := i;
	    else
		return false,
		    Sprintf(
			"Non-unique character multisets for %o, %o\n",
			OC[good_i], OC[i]);
	    end if;
	    */
	end if;
    end for;

//"match_i:", match_i;

    if #match_i eq 0 then
	return false, "Character multiset not found in DB";
    end if;

    for i in match_i do
	rep_name := get_rep_name(name, i);
	l, R := read_file_test(rep_name);
	if not l then
	    continue;
	end if;
	L := Explode(R);
	M := make_module(G, DG, G2DG, L, p);
	if #match_i eq 1 then
	    M`Character := ExactQuotient(Z!Dimension(M), Z!Degree(c))*c;
	    return true, M;
	end if;
	if Char(M) eq c then
	    return true, M;
	end if;
	delete M;
    end for;

    return false, "Rep not stored";

end function;

/*******************************************************************************
			    c9 Groups
*******************************************************************************/

intrinsic c9Group(S::MonStgElt) -> Grp
{c9lattices group S}

    fn := GetLibraryRoot() cat "/c9lattices/" cat S;
    G := eval Read(fn);
    return G;
end intrinsic;

/*******************************************************************************
			    Get from DB (by group)
*******************************************************************************/

function AtlasPermGroupCheck(S)
    if S notin ATLASGroupNames() then
	return false, _;
    end if;
    A := ATLASGroup(S);
    if #PermRepKeys(A) eq 0 then
	return false, _;
    end if;
    return true, PermutationGroup(S, 1);
end function;

function get_name(G)

    if not IsSimple(G) or Type(G) notin {GrpPerm, GrpMat} then
	return false, _, _, _;
    end if;

    f, TL := SimpleGroupName(G);
    if not f /*or #TL gt 1*/ then
	return false, _, _, _;
    end if;

    DG := 0;
    name := 0;

    //T := TL[1];

for T in TL do
    t, a, b := Explode(T);

    if t cmpeq "A" then
	d := a + 1;
	q := b;
	if d eq 2 then
	    DG := PSL(d, q);
	    name := Sprintf("psl%o_%o", d, q);
	elif <d, q> in { <3, 9>, <4, 3> } then
	    // Missing from ATLAS
	    name := Sprintf("L%o%o", d, q);
	    c9name := Sprintf("l%o%op", d, q);
	    DG := c9Group(c9name);
	elif d eq 3 and q le 14 then
	    DG := PermutationGroup(Sprintf("L3%o", q), 1);
	    name := Sprintf("L%o%o", d, q);
	elif d ge 3 then
	    l, DG := AtlasPermGroupCheck(Sprintf("L%o%o", d, q));
	    if not l then
		//return false, _, _, _;
		continue;
	    end if;
	    name := Sprintf("L%o%o", d, q);
	end if;
    elif t cmpeq "2A" then
	d := a + 1;
	q := b;
	if d eq 3 and q in {3 .. 13} then
	    name := Sprintf("U3%o", q);
	else
	    DG := PSU(d, q);
	    name := Sprintf("psu%o_%o", d, q);
	end if;
    elif t cmpeq "C" then
	d := 2*a;
	q := b;
	name := Sprintf("S%o%o", d, q);
	if name eq "S43" then
	    name := "U42"; // Equivalent (only U42 stored)
	elif <d, q> in { <4, 9> } then
	    // Missing from ATLAS
	    name := Sprintf("S%o%o", d, q);
	    c9name := Sprintf("s%o%op", d, q);
	    DG := c9Group(c9name);
	end if;
    elif t cmpeq 17 then
	d := a;
	assert b eq 0;
	DG := Alt(d);
	name := Sprintf("alt%o", d);
	//return true, name, DG;
    elif t cmpeq 18 then // Sporadic
	case b:
	when "XXX":
	    1;
	else
	    name := Sprintf("%o", b);
	    DG := PermutationGroup(b, 1);
	end case;
    elif T cmpeq <"2B", 2, 8> then
	name := "Sz8";
    elif T cmpeq <"2B", 2, 32> then
	name := "Sz32";
    elif T cmpeq <"3D", 4, 3> then
	name := "TD43";
    elif T cmpeq <"2D", 4, 2> then
	name := "O8m2";
    elif T cmpeq <"D", 4, 2> then
	name := "O8p2";
	DG := c9Group("o8+2p"); // No rep in ATLAS
    end if;

    if name cmpne 0 and DG cmpeq 0 then
	l, DG := AtlasPermGroupCheck(name);
	if not l then
	    continue;
	    //return false, _, _, _;
	end if;
    end if;

//printf "Try name: %o, DG: %o\n", name, DG;

    // Test whether any data for this before doing possibly expensive iso test:
    if name cmpne 0 and not read_ind_file(name) then
	continue;
	//return false, _, _, _;
    end if;

    if DG cmpne 0 then
	if groups_identical(G, DG) then
	    return true, name, DG, 1;
	end if;

//"Use IsIsomorphic"; time
	l, G2DG := IsIsomorphic(G, DG);
//"Res:", l;
	if l then 
	    return true, name, DG, G2DG;
	end if;
    end if;
end for;

    return false, _, _, _;
end function;

intrinsic RepsDBGet(G::Grp, c::AlgChtrElt)
    -> BoolElt, ModGrp
{DB Rep given by char c for G}

    require Group(Parent(c)) cmpeq G: "Group of char is not G";

    l, name, DG, G2DG := get_name(G);
    if not l then
	return false, _;
    end if;

    return DBGetChar(name, c, G, DG, G2DG);

end intrinsic;

intrinsic RepsDBGet(G::Grp: MaxDegree := 0, p := 0) -> SeqEnum, SeqEnum
{All DB reps for G}

    l, name, DG, G2DG := get_name(G);
    if not l then
	return [], [];
    end if;

    return DBGetAll(name, G, DG, G2DG: MaxDegree := MaxDegree, p := p);

end intrinsic;

intrinsic DBIrreducibleQGModules(G::Grp, D::RngIntElt: p := 0)
    -> SeqEnum, SeqEnum
{All irreducible QG modules in the database, up to dimension D}

    R, C := RepsDBGet(G: MaxDegree := D, p := p);
    if p eq 0 then
	R := [ChangeRing(M, Q): M in R];
    end if;
    return R, C;

end intrinsic;

intrinsic DBIrreducibleQGModules(G::Grp) -> SeqEnum, SeqEnum
{All irreducible QG modules in the database}

    return DBIrreducibleQGModules(G, 0);

end intrinsic;

intrinsic DBHasIrreducibleModules(G::Grp) -> BoolElt
{Return whether the DB has any data for group G}

    l := get_name(G);
    return l;

end intrinsic;

/*******************************************************************************
				Small group DB
*******************************************************************************/

intrinsic RepsSmallGet(G::Grp, num::RngIntElt) -> BoolElt, SeqEnum
{Stored reps for SmallGroup(#G, num)}

    fn := Sprintf("small%o_%o", #G, num);
    l, T := read_file_test(fn);
    if not l then
	return false, _;
    end if;

    L := [GModule(G, Q): Q in T];
    return true, L;

end intrinsic;

intrinsic RepsSmallGet(G::Grp) -> BoolElt, SeqEnum
{Stored reps for SmallGroup G}

    o := #G;
    fn := Sprintf("small%o.ind", o);
    l, T := read_file_test(fn);
    if not l then
	return false, _;
    end if;

    assert #T eq 1;
    Q := T[1];

    ng := Type(G) eq GrpPC select NPCgens(G) else Ngens(G);

    for i in Q do
vprint ZMeataxe: "Try DB", o, i;
	S := SmallGroup(o, i);

	l, f := IsIsomorphic(G, S);
	if l then
	    vprintf ZMeataxe: "Match DB for SmallGroup(%o, %o)\n", o, i;
	    l, L := RepsSmallGet(S, i);
	    if not l then
		break;
	    end if;

	    if S cmpeq G and forall{i: i in [1 .. ng] | S.i eq G.i} then
//"Exact";
		return true, L;
	    end if;

	    LG := [];
	    for M in L do
		r := Representation(M);
		Append(~LG, GModule(G, [r(f(G.i)): i in [1 .. ng]]));
	    end for;
	    return true, LG;
	end if;
    end for;

    return false, _;

end intrinsic;

intrinsic MakeRepsSmall(o, num, L)
{Data into name}

    assert #Group(L[1]) eq o;

    L := <
	Sprint([ActionGenerator(M, i): i in [1 .. Nagens(M)]], "Magma"):
	M in L
    >;

    name := Sprintf("small%o_%o", o, num);
    write_file(name, L, "");

end intrinsic;
