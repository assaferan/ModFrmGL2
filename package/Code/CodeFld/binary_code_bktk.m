freeze;

RBasefmt := recformat<
    C		: CodeLin,
    mat		: Mtrx,
    mat_trans	: Mtrx,
    weights	: SeqEnum,
    vecs 	: SetIndx,
    K		: FldFin,
    N           : RngIntElt,
    D           : RngIntElt,
    RBase       : SeqEnum,
    RBase_index : SeqEnum,
    Ups         : StkPtnOrd,
    n_          : SeqEnum,
    A_          : SeqEnum,
    p_          : SeqEnum,
    w_          : SeqEnum,
    w_cell_     : SeqEnum >;

Qfmt := recformat<Q : SeqEnum, len : RngIntElt, used : RngIntElt>;

Q_extract := procedure(~Q, ~x)
    if Q`len gt 0 then
        x := Q`Q[Q`len];
        Q`len -:= 1;
    else
        x := 0;
    end if;
end procedure;

Q_construct := function(S, order)
    Sort(~S, func<x,y|order[y] - order[x]>);
    return rec<Qfmt|Q:=S, len := #S>;
end function;

perm_grp := function(words, A)
    assert Degree(A) eq Ncols(words);
    N := Degree(A);
    W := Nrows(words);
    word_set := {@ words[i]:i in [1..W] @};
    assert #word_set eq W;
    gens := [Sym(N+W)|];
    for i := 1 to Ngens(A) do
	g := A.i;
	gen := Eltseq(g);
	for j := 1 to W do
	    Append(~gen, N + Index(word_set, word_set[j]^g));
	end for;
	Append(~gens, gen);
    end for;
    B := PermutationGroup<N+W|gens>;
    B`Order := #A;
    return B;
end function;

init_data := procedure(~data:Weight := -1)
    C := data`C;
    if Weight cmpeq -1 then
	wt := MinimumWeight(C);
	m := Words(C, wt);
	wts := [wt];
	while sub<C|m> ne C do
	    wt +:= 1;
	    m2 := Words(C, wt);
	    if #m2 gt 0 then
		Append(~wts, wt);
		m join:= m2;
	    end if;
	end while;
    else
	if Type(Weight) eq RngIntElt then
	    wts := [Weight];
	else
	    wts := Weight;
	end if;
	m := {};
	for wt in wts do
	    m join:= Words(C, wt);
	end for;
    end if;
    vprintf Partition, 1: "Using words of weight %o\n", wts;
    data`K := BaseRing(C);
    data`weights := wts;
    m := Matrix(Setseq(m));
    data`mat := m;
    data`mat_trans := Transpose(m);
    data`N := Length(C);
    data`D := data`N + Nrows(m);
    data`vecs := {@ C | m[i] : i in [1..Nrows(m)] @};
end procedure;

forward pq_create, pq_add, pq_is_empty, pq_extract_min, pq_reduce_pri;

construct_rbase := procedure(~data:Weight:=-1, UseInv := false)
    init_data(~data:Weight:=Weight);
    D := data`D;
    N := data`N;
    K := data`K;
    m := data`mat;
    mt := data`mat_trans;
    Ups := OrderedPartitionStack(D);
    f := 0;	/* number of fixed points processed */
    A_ := [];	/* base for result perm group */
    n_ := [];	/* heights of each "choice" level */
    p_ := [];	/* cell number for each choice */
    L_ := [];	/* cell length of each choice */
    w_ := [];	/* ordering of points */
    w_cell_ := []; /* cell the w_ point came from */
    ht := 1;

    /* start with row/col split */
    assert N ge 2;
    assert D-N ge 2;
    fl := SplitCell(Ups, 1, [1..N]);
    assert fl;
    RBase_index := [1];
    RBase := [[*"rowcol", N*]];
    P_cells := [CellNumber(Ups, 1)];
    V_cells := [CellNumber(Ups, N+1)];

    ht := Height(Ups);
    fail_run := 0;
    PQ := pq_create();
    for i := 1 to ht do
	pq_add(~PQ, i, CellSize(Ups, i));
    end for;
    while  ht lt D do
	while ht lt D and not pq_is_empty(PQ) do
	    /* see if we can split by row v col measures */
	    pq_extract_min(~PQ, ~n, ~cs);
	    assert CellSize(Ups, n) eq cs;
	    x := Representative(Ups, n);
	    if x le N then
		/* split words on position cell */
		fl, code := RowvColSplitTest(K, mt, Ups, n, true, V_cells);
		str := "wrds";
	    else
		/* split positions on word cell */
		fl, code := RowvColSplitTest(K, m, Ups, n, false, P_cells);
		str := "posn";
	    end if;
	    if fl then
		fix := [];
		to_split := { };
		for cell := ht + 1 to Height(Ups) do
		    par := ParentCell(Ups, cell);
		    assert par le ht;
		    Include(~to_split, par);
		    if CellSize(Ups, cell) eq 1 then
			Append(~fix, cell);
			y := Rep(Ups, cell);
			f +:= 1;
			Append(~w_, y);
			assert #w_ eq f;
			Append(~w_cell_, cell);
		    else
			if x le N then
			    Append(~V_cells, cell);
			else
			    Append(~P_cells, cell);
			end if;
		    end if;
		    pq_add(~PQ, cell, CellSize(Ups, cell));
		end for;
		to_split := Setseq(to_split);
		Sort(~to_split);
		for cell in to_split do
		    if CellSize(Ups, cell) eq 1 then
			Append(~fix, cell);
			y := Rep(Ups, cell);
			f +:= 1;
			Append(~w_, y);
			assert #w_ eq f;
			Append(~w_cell_, cell);
		    end if;
		    pq_reduce_pri(~PQ, cell, CellSize(Ups, cell));
		end for;
		Append(~RBase,
		    [* "RvC", n, to_split, code, fix *]
		);
		RBase_index[ht] := #RBase;
		ht := Height(Ups);
		vprintf Partition, 3: "Refine: RvC %o after %o failures: %o\n", str, fail_run, ht;
		fail_run := 0;
	    else
		fail_run +:= 1;
	    end if;
	end while;
	assert ht eq D or pq_is_empty(PQ);
	if ht lt D then
	    /* pick a new base point */
	    assert pq_is_empty(PQ);
	    min_len := D+1;
	    min_x := D+1;
	    min_cell := 0;
	    for c := 1 to ht do
		c_len := CellSize(Ups, c);
		if c_len gt 1 then
		    c_x := Representative(Ups, c);
		    if c_len lt min_len or (c_len eq min_len and c_x lt min_x)
		    then
			min_cell := c;
			min_len := c_len;
			min_x := c_x;
		    end if;
		end if;
	    end for;
	    y := min_x;
	    if UseInv and /* min_len gt 5 and  */ y le N then
		/* try to split with multiset-invariant */
		punc := [x:x in w_|x le N];
		Sort(~punc);
		offsets := [0:i in [1..N]];
		i := 0;
		for j := 1 to N do
		    if i lt #punc and punc[i+1] eq j then
			i +:= 1;
		    end if;
		    offsets[j] := i;
		end for;
		C1 := PunctureCode(data`C, Seqset(punc));
		dummy := WeightDistribution(C1);
		// dummy;
		weight := Max(data`weights) - #punc;
		if weight ge 0 then
		    words := Transpose(WordsMatrix(C1, weight));
		    ip := IntegralGramMatrix(words);
		// Nrows(ip), Ncols(ip);
		    delete words;
		    cell := Cell(Ups, min_cell);
		    X := ([j - offsets[j]: j in cell]);
		    ip := Submatrix(ip, X, X);
		    if #Seqset(Eltseq(ip)) gt 2 then
			invs := {@ @};
			vec := [0:i in [1..D]];
			for i := 1 to #cell do
			    inv := GramIsomorphismInvariants(ip, i);
			    ind := Index(invs, inv);
			    if ind eq 0 then
				Include(~invs, inv);
				ind := Index(invs, inv);
			    end if;
			    vec[cell[i]] := ind;
			end for;
			fl, code := SplitCellsByValues(Ups, min_cell, vec);
			if fl then
			    hold_f := f;
			    fix := [];
			    for cell := ht + 1 to Height(Ups) do
				if CellSize(Ups, cell) eq 1 then
				    Append(~fix, cell);
				    y := Rep(Ups, cell);
				    f +:= 1;
				    Append(~w_, y);
				    assert #w_ eq f;
				    Append(~w_cell_, cell);
				else
				    Append(~P_cells, cell);
				end if;
				pq_add(~PQ, cell, CellSize(Ups, cell));
			    end for;
			pq_reduce_pri(~PQ, min_cell, CellSize(Ups, min_cell));
			    if CellSize(Ups, min_cell) eq 1 then
				Append(~fix, min_cell);
				y := Rep(Ups, min_cell);
				f +:= 1;
				Append(~w_, y);
				assert #w_ eq f;
				Append(~w_cell_, min_cell);
			    end if;
			    Append(~RBase,
			[* "Inv", min_cell, invs, hold_f, weight, code, fix *]
			    );
			    RBase_index[ht] := #RBase;
			    ht := Height(Ups);
		    vprintf Partition, 3: "Refine: multiset invariant: after %o failures: %o\n", fail_run, ht;
		    fail_run := 0;
			    continue;
			end if;
		    end if;
		end if;
	    end if;
	    Append(~RBase, [*"choice",min_cell,CellSize(Ups, min_cell), y *]);
	vprintf Partition, 2: "Choice: after %o failures, cell size: %o  height %o\n", fail_run, CellSize(Ups, min_cell), ht+1;
	    fail_run := 0;
	    RBase_index[Height(Ups)] := #RBase;
	    Append(~A_, y);
	    Append(~n_, ht);
	    Append(~p_, min_cell);
	    f +:= 1;
	    Append(~w_, y);
	    Append(~w_cell_, ht+1);
            fl := SplitCell(Ups, min_cell, y);
            assert fl;
            ht +:= 1;
            assert ht eq Height(Ups);
            if CellSize(Ups, min_cell) eq 1 then
                y := Rep(Ups, min_cell);
                f +:= 1;
                Append(~w_, y);
                assert #w_ eq f;
                Append(~w_cell_, min_cell);
	    end if;
	    pq_add(~PQ, ht, 1);
	end if;
	assert ht eq Height(Ups);
    end while;
    data`RBase := RBase;
    data`RBase_index := RBase_index;
    data`w_ := w_;
    data`w_cell_ := w_cell_;
    data`n_ := n_;
    data`A_ := A_;
    data`p_ := p_;
    data`Ups := Ups;
end procedure;

apply_RvC_refinement := procedure(ref, ~data, ~Ups, ~BKTK_flag, ~singles)
    n := ref[2];
    x := Representative(Ups, n);
    N := data`N;
    if x le N then
	fl, code := RowvColSplit(data`K, data`mat_trans, Ups, n, true, ref[3]);
    else
	fl, code := RowvColSplit(data`K, data`mat, Ups, n, false, ref[3]);
    end if;
    BKTK_flag := not (fl and code eq ref[4]);
    if BKTK_flag then return; end if;
    singles := ref[5];
end procedure;

apply_Inv_refinement := procedure(ref, ~data, ~Ups, ~BKTK_flag, ~singles)
    n := ref[2];
    invs := ref[3];
    f := ref[4];
    N := data`N;
    punc := data`w_cell_[1..f];
    punc := [x:p in punc|x le N where x := Representative(Ups, p)];
    Sort(~punc);
    offsets := [0:i in [1..N]];
    i := 0;
    for j := 1 to N do
	if i lt #punc and punc[i+1] eq j then
	    i +:= 1;
	end if;
	offsets[j] := i;
    end for;
    C1 := PunctureCode(data`C, Seqset(punc));
    wd := WeightDistribution(C1);
    words := Transpose(WordsMatrix(C1, ref[5]));
    ip := IntegralGramMatrix(words);
    delete words;
    cell := Cell(Ups, n);
    X := Sort([j - offsets[j]: j in cell]);
    ip := Submatrix(ip, X, X);
    vec := [0:i in [1..data`D]];
    for i in cell do
	j := i - offsets[i];
	inv := GramIsomorphismInvariants(ip, j);
	ind := Index(invs, inv);
	if ind eq 0 then
	    BKTK_flag := true;
	    return;
	end if;
	vec[i] := ind;
    end for;
    fl, code := SplitCellsByValues(Ups, n, vec);
    BKTK_flag := not (fl and code eq ref[6]);
    if BKTK_flag then return; end if;
    singles := ref[7];
end procedure;

aut_grp := function(C:BaseChangeLevel:=-1, Weight := -1, UseInv:=false)
    assert ISA(Type(C), CodeLin);
    assert #BaseRing(C) eq 2;
    zeit := Cputime();
    if Length(C) eq 1 then
	return Sym(1);
    end if;
    data := rec<RBasefmt|C := C>;
    construct_rbase(~data:Weight := Weight, UseInv := UseInv);
    basic_cell_sizes :=  [t[3]: t in data`RBase | t[1] eq "choice"];
vprintf Partition: "RBase construction after %o secs\n", Cputime(zeit);
vprintf Partition: "Basic cell sizes: %o\n", basic_cell_sizes;
basic_cell_sizes;
    N := data`N;
    D := data`D;
    A := data`A_;
    sym := Sym(D);
    KA_cod := BSGSProcess(D);
    AssignBase(~KA_cod, A);
    KB_cod := KA_cod;
base := A;
base;
    Ups := data`Ups;
    Pop(Ups, 1);
    assert NumberOfCells(Ups) eq 1;
    assert Degree(Ups) eq D;
    ht := 1;
    n := data`n_;
    p := data`p_;
    ell := #n;
    RBase := data`RBase;
    RBase_index := data`RBase_index;
    Gamma := [rec<Qfmt|>:i in [1..#n]];
    w := data`w_;
    assert #w eq D;
    w_inv := [];
    for i := 1 to D do
        w_inv[w[i]] := i;
    end for;
    w_cell := data`w_cell_;
    KB_orb_mins := [[]:i in [1..ell]];
    KB_orb_lens := [[]:i in [1..ell]];
    if IsDefined(n,1) and n[1] eq 1 then
        d := 1;
        Gamma[1]`Q := Reverse(w);
        Gamma[1]`len := D;
    else
        d := 0;
    end if;
    beta := [0:i in [1..ell]];
    singles := [];
    KA_Delta := BasicOrbits(KA_cod);
    KA_Delta_lens := BasicOrbitLengths(KA_cod);
    if BaseChangeLevel eq -1 then BaseChangeLevel := ell;
    else BaseChangeLevel +:= 1; end if;
    // skip1 := [0:i in [1..ell]];
    // skip2 := [0:i in [1..ell]];
    // skip3 := [0:i in [1..ell]];
    // skip4 := [0:i in [1..ell]];
    // skip5 := [0:i in [1..ell]];
    // skip6 := [0:i in [1..ell]];
    // unskip := [0:i in [1..ell]];

    /* main loop starts here */
    BKTK_flag := false;
    first_moved := ell + 1;
    perfect_level := ell+1;
    while ht gt 0 do
	if d gt 0 and ht eq n[d] then
	    repeat 
		BKTK_flag := false;
		Q_extract(~Gamma[d], ~beta[d]);
		if d eq first_moved then
		    info := KB_orb_mins[d];
		    if IsEmpty(info) then
			info := OrbitMinsInternal(KA_cod, d, w_inv);
			assert #info eq D;
			KB_orb_mins[d] := info;
		    end if;
		    if info[beta[d]] lt w_inv[beta[d]] then
			// skip1[d] +:= 1;
			BKTK_flag := true;
		    end if;
		elif d gt first_moved then
		    for i := first_moved to d do
			if A[d] in KA_Delta[i] then
			    if w_inv[beta[d]] lt w_inv[beta[i]] then
				// skip2[d] +:= 1;
				BKTK_flag := true;
				break;
			    end if;
			    if i le BaseChangeLevel then
				info := KB_orb_mins[i];
				if IsEmpty(info) then
				    info := OrbitMinsInternal(KB_cod, i, w_inv);
				    KB_orb_mins[i] := info;
				end if;
				if info[beta[d]] lt w_inv[beta[i]] then
				    // skip3[d] +:= 1;
				    BKTK_flag := true;
				    break;
				end if;
			    end if;
			end if;
		    end for;
		    if  not BKTK_flag and d lt ell and d le BaseChangeLevel and
			    KA_Delta_lens[d] lt Order(KB_cod, d) 
		    then
			info := KB_orb_lens[d];
			if IsEmpty(info) then
			    info :=  OrbitLensInternal(KB_cod, d);
			    assert #info eq D;
			    KB_orb_lens[d] := info;
			end if;
			if info[beta[d]] gt KA_Delta_lens[d] then
			    // skip4[d] +:= 1;
			    BKTK_flag := true;
			end if;
		    end if;
		end if;
	    until not BKTK_flag or Gamma[d]`len lt KA_Delta_lens[d];

	    if not BKTK_flag then
		BKTK_flag := not SplitCell(Ups, p[d], beta[d]);
		if not BKTK_flag then
		    singles := [ht+1];
		    if CellSize(Ups, p[d]) eq 1 then
			Append(~singles, p[d]);
		    end if;
		    // unskip[d] +:= 1;
		end if;
	    end if;
	else
	    /* do refinement for this level */
	    ref := RBase[RBase_index[ht]];
	    singles := [];
	    if ref[1] eq "RvC" then
		apply_RvC_refinement(ref, ~data, ~Ups, ~BKTK_flag, ~singles);
	    elif ref[1] eq "Inv" then
		apply_Inv_refinement(ref, ~data, ~Ups, ~BKTK_flag, ~singles);
	    elif ref[1] eq "rowcol" then
		assert ht eq 1;
		fl := SplitCell(Ups, 1, [1..ref[2]]);
		assert fl;
	    else
		error "Unknown refinement";
	    end if;
	end if;

	if not BKTK_flag then
	    ht := Height(Ups);
	end if;

	if not BKTK_flag and ht eq D then
	    if first_moved le ell then
		perm := [];
		for i := 1 to D do
		    perm[w[i]] := Rep(Ups, w_cell[i]);
		end for;
		sym_perm := sym!perm;
		if not BaseImageWordStrip(KA_cod, sym_perm) then
		    elt := Sym(N)!perm[1..N];
		    flag := C^elt eq C;
		    /*
		    if flag then
			// elt := elt^-1;
			xperm := sym!(perm[1..N] cat
			    [N + Index(data`vecs, v^elt): v in data`vecs]);
			flag := xperm eq sym_perm;
			if not flag then
			    "Wow", Order(elt), Order(xperm), Order(sym_perm);
			    sym_perm := xperm;
			end if;
			xflag := forall{i: i in [1..first_moved-1] |
			    base[i]^sym_perm eq base[i]} and
			    base[first_moved]^sym_perm ne base[first_moved];
			if not xflag then "Oops"; end if;
		    end if;
		    */
		    if not flag then
			"aut test failed at bottom level";
		    end if;
		    if flag then
			"Adding generator";
			AddStrongGenerator(~KA_cod, sym_perm, ~ngen);
			SetDefining(~KA_cod, ngen, true);
			for i := 1 to first_moved do
			    AddStrongGeneratorToLevel(~KA_cod, ngen, i);
			end for;
			ConstructBasicOrbit(~KA_cod, first_moved, false);
    vprintf Partition: "SGen level %o, orbits %o\n", first_moved, BasicOrbitLengths(KA_cod);
			KB_cod := KA_cod^sym_perm;
			KA_Delta := BasicOrbits(KA_cod);
			KA_Delta_lens := BasicOrbitLengths(KA_cod);
			for lev := 1 to Min(first_moved, BaseChangeLevel) do
			    KB_orb_mins[lev] := [];
			    KB_orb_lens[lev] := [];
			end for;
			for lev := first_moved+1 to ell do
			    /* force multi-level backtrack */
			    // skip5[lev] +:= Gamma[lev]`len;
			    Gamma[lev]`len := 0;
			end for;
		    end if;
		else
		    "Found perm already in group";
		end if;
	    end if;
	    BKTK_flag := true;
	end if; /* ht eq D */

	if BKTK_flag then
	    /* handle backtracking */
	    while d gt 0 and Gamma[d]`len lt #KA_Delta[d] do
		// skip6[d] +:= Gamma[d]`len;
		d -:= 1;
	    end while;
	    if d gt 0 then
		Pop(Ups, n[d]);
		ht := n[d];
	    else
		ht := 0;
	    end if;
	    if first_moved gt d then
		if first_moved le ell then
		    vprintf Partition: "Finished level %o\n", first_moved;
		end if;
		if perfect_level eq first_moved + 1 and
		     #KA_Delta[first_moved] eq basic_cell_sizes[first_moved]
		     and d gt 0
		then
		    BaseChangeLevel := Min(first_moved-1, BaseChangeLevel);
		    vprintf Partition, 2: "New BaseChangeLevel %o\n", BaseChangeLevel;
		    perfect_level -:= 1;
		end if;
		first_moved := d;
	    end if;
	    BKTK_flag := false;
	    continue; /* main loop */
	end if;

	if d lt ell and ht eq n[d+1] then
	    if d gt 0 and d lt BaseChangeLevel then
		KB_cod := InsertBasePoint(KB_cod, d, beta[d]);
		for lev := d+1 to #KB_orb_mins do
		    KB_orb_mins[lev] := [];
		    KB_orb_lens[lev] := [];
		end for;
	    end if;
	    d +:= 1;
	    Gamma[d] := Q_construct(Cell(Ups, p[d]), w_inv);
	end if;
    end while; /* end of main loop */

BasicOrbitLengths(KA_cod);
&*BasicOrbitLengths(KA_cod);
#KA_cod;
    A := sub<sym | KA_cod>;
    A`Order := #KA_cod;
    A`BSGS := KA_cod;
#A,FactoredOrder(A);
    // assert #sub<Generic(A)|A> eq #A;
    _, B := OrbitAction(A, {1..N});
    // B:Magma;
    // assert #B eq #A;

    // skip1, skip2, skip3, skip4, skip5, skip6, unskip;

    return B,A;

end function;

equivalence := function(C1, C2 : Subgroups := "Right", LeftSubgroup := 0, RightSubgroup:= 0, Weight := -1, BaseChangeLevel := -1, UseInv := false)
    if #BaseRing(C1) ne 2 then
	error "Codes must be binary";
    end if;
    if Length(C1) ne Length(C2) or Dimension(C1) ne Dimension(C1) or
	BaseRing(C1) cmpne BaseRing(C2) or
	WeightDistribution(C1) ne WeightDistribution(C2)
    then
	return false, _;
    end if;
    if Length(C1) eq 1 then
	return true, Id(Sym(1));
    end if;
    data1 := rec<RBasefmt|C := C1>;
    construct_rbase(~data1 : Weight := Weight, UseInv:=UseInv);

    basic_cell_sizes :=  [t[3]: t in data1`RBase | t[1] eq "choice"];
    vprintf Partition: "Basic cell sizes: %o\n", basic_cell_sizes;

    data2 := rec<RBasefmt|C := C2>;
    init_data(~data2: Weight := data1`weights);
    data2`w_cell_ := data1`w_cell_;

    N := data1`N;
    D := data1`D;
    A := data1`A_;
    if LeftSubgroup cmpeq 0 then
        KA_cod := BSGSProcess(D);
        AssignBase(~KA_cod, A);
    else
        KA := perm_grp(data1`mat, LeftSubgroup);
        KA := ChangeBase(KA, A);
        KA_cod := Representation(KA);
    end if;
    if RightSubgroup cmpeq 0 then
        KB_cod := BSGSProcess(D);
        AssignBase(~KB_cod, A);
    else
        KB := perm_grp(data2`mat, RightSubgroup);
        KB := ChangeBase(KB, A);
        KB_cod := Representation(KB);
    end if;

    Ups := data1`Ups;
    Pop(Ups, 1);
    assert NumberOfCells(Ups) eq 1;
    assert Degree(Ups) eq D;
    ht := 1;
    n := data1`n_;
    p := data1`p_;
    ell := #n;
    RBase := data1`RBase;
    RBase_index := data1`RBase_index;
    Gamma := [rec<Qfmt|>:i in [1..#n]];
    w := data1`w_;
    w_inv := [];
    for i := 1 to D do
        w_inv[w[i]] := i;
    end for;
    w_cell := data1`w_cell_;
    KB_orb_mins := [[]:i in [1..ell]];
    KB_orb_lens := [[]:i in [1..ell]];
    if IsDefined(n,1) and n[1] eq 1 then
        d := 1;
        Gamma[1]`Q := Reverse(w);
        Gamma[1]`len := D;
    else
        d := 0;
    end if;
    beta := [0:i in [1..ell]];
    singles := [];
    KA_Delta := BasicOrbits(KA_cod);
    KA_Delta_lens := BasicOrbitLengths(KA_cod);
    if BaseChangeLevel eq -1 then BaseChangeLevel := ell;
    else BaseChangeLevel +:= 1; end if;

    /* main loop starts here */
    BKTK_flag := false;
    first_moved := ell+1;
    while ht gt 0 do
	if d gt 0 and ht eq n[d] then
	    Q_extract(~Gamma[d], ~beta[d]);
	    if d eq first_moved then
		info := KB_orb_mins[d];
		if IsEmpty(info) then
		    info := OrbitMinsInternal(KA_cod, d, w_inv);
		    assert #info eq D;
		    KB_orb_mins[d] := info;
		end if;
		if info[beta[d]] lt w_inv[beta[d]] then
		    BKTK_flag := true;
		end if;
	    elif d gt first_moved and d le BaseChangeLevel then
		if d lt ell and 2*KA_Delta_lens[d] lt basic_cell_sizes[d] and
		    exists{i:i in [d+1..ell]|KA_Delta_lens[i] gt 1}
		then
		    info := KB_orb_lens[d];
		    if IsEmpty(info) then
			info :=  OrbitLensInternal(KB_cod, d);
			assert #info eq D;
			KB_orb_lens[d] := info;
		    end if;
		    BKTK_flag := info[beta[d]] gt KA_Delta_lens[d];
		    if not BKTK_flag then
			for i := 1 to d-1 do
			    if A[d] in KA_Delta[i] then
				info := KB_orb_mins[i];
				if IsEmpty(info) then
				    info := OrbitMinsInternal(KB_cod, i, w_inv);
				    KB_orb_mins[i] := info;
				end if;
				if info[beta[i]] lt w_inv[beta[i]] then
				    BKTK_flag := true;
				end if;
			    end if;
			end for;
		    end if;
		end if;
	    end if;

	    if not BKTK_flag then
		BKTK_flag := not SplitCell(Ups, p[d], beta[d]);
		if not BKTK_flag then
		    singles := [ht+1];
		    if CellSize(Ups, p[d]) eq 1 then
			Append(~singles, p[d]);
		    end if;
		end if;
	    end if;
	else
	    /* do refinement for this level */
	    ref := RBase[RBase_index[ht]];
	    singles := [];
	    if ref[1] eq "RvC" then
		apply_RvC_refinement(ref, ~data2, ~Ups, ~BKTK_flag, ~singles);
	    elif ref[1] eq "Inv" then
		apply_Inv_refinement(ref, ~data2, ~Ups, ~BKTK_flag, ~singles);
	    elif ref[1] eq "rowcol" then
		assert ht eq 1;
		fl := SplitCell(Ups, 1, [1..ref[2]]);
		assert fl;
	    else
		error "Unknown refinement";
	    end if;
	end if;

	if not BKTK_flag then
	    ht := Height(Ups);
	end if;

	if not BKTK_flag and ht eq D then
	    perm := [];
	    for i := 1 to D do
		if w[i] le N then
		    perm[w[i]] := Rep(Ups, w_cell[i]);
		end if;
	    end for;
	    perm := Sym(N)!perm;
	    if C1^perm eq C2 then
		return true, perm;
	    end if;
	    vprintf Partition: "Equivalence test failed at bottom level";
	    BKTK_flag := true;
	end if; /* ht eq D */

	if BKTK_flag then
	    /* handle backtracking */
	    while d gt 0 and Gamma[d]`len lt #KA_Delta[d] do
		d -:= 1;
	    end while;
	    if d gt 0 then
		Pop(Ups, n[d]);
		ht := n[d];
	    else
		ht := 0;
	    end if;
	    if first_moved gt d then
		if first_moved le ell then
		    vprintf Partition: "Finished level %o\n", first_moved;
		end if;
		first_moved := d;
	    end if;
	    BKTK_flag := false;
	    continue; /* main loop */
	end if;

	if d lt ell and ht eq n[d+1] then
	    if d gt 0 and d lt BaseChangeLevel then
		KB_cod := InsertBasePoint(KB_cod, d, beta[d]);
		for lev := d+1 to #KB_orb_mins do
		    KB_orb_mins[lev] := [];
		    KB_orb_lens[lev] := [];
		end for;
	    end if;
	    d +:= 1;
	    Gamma[d] := Q_construct(Cell(Ups, p[d]), w_inv);
	end if;
    end while; /* end of main loop */

    return false, _;

end function;

PriQfmt := recformat<
    Q : SeqEnum,
    pri : SeqEnum,
    pos : SeqEnum,
    n : RngIntElt >;

pq_create := function()
    return rec<PriQfmt | Q := [], pri := [], pos := [], n := 0>;
end function;

pq_is_empty := function(Q)
    return Q`n eq 0;
end function;

pq_add := procedure(~Q, x, p)
    Q`n +:= 1;
    i := Q`n;
    j := i div 2;
    Q`pri[x] := p;
    while j gt 0 and Q`pri[Q`Q[j]] gt p do
	Q`Q[i] := Q`Q[j];
	Q`pos[Q`Q[j]] := i;
	i := j;
	j := i div 2;
    end while;
    Q`Q[i] := x;
    Q`pos[x] := i;
end procedure;

pq_extract_min:= procedure(~Q, ~x, ~p)
    n := Q`n;
    x := Q`Q[1]; p := Q`pri[x];
    y := Q`Q[n]; q := Q`pri[y];
    n -:= 1;
    Q`n := n;
    i := 1;
    repeat
	j := 2*i;
	if j gt Q`n then
	    break;
	end if;
	qj := Q`pri[Q`Q[j]];
	if j lt n and Q`pri[Q`Q[j+1]] lt qj then
	    j +:= 1;
	    qj := Q`pri[Q`Q[j+1]];
	end if;
	if q le qj then
	    break;
	end if;
	Q`Q[i] := Q`Q[j];
	Q`pos[Q`Q[j]] := i;
	i := j;
    until false;
    Q`Q[i] := y;
    Q`pos[y] := i;
end procedure;

pq_reduce_pri := procedure(~Q, x, p)
    if Q`pri[x] le p then
	return;
    end if;
    i := Q`pos[x];
    Q`pri[x] := p;
    j := i div 2;
    while j gt 0 and Q`pri[Q`Q[j]] gt p do
	Q`Q[i] := Q`Q[j];
	Q`pos[Q`Q[j]] := i;
	i := j;
	j := i div 2;
    end while;
    Q`Q[i] := x;
    Q`pos[x] := i;
end procedure;

intrinsic AutomorphismGroupBinaryCode(C::CodeLinFld: BaseChangeLevel:=-1, Weight := -1, UseInv:=false) -> GrpPerm
{Internal}
    require #BaseRing(C) eq 2: "Code must be a binary code";
    A := aut_grp(C:BaseChangeLevel:=BaseChangeLevel, Weight:=Weight,
	UseInv:=UseInv);
    return A;
end intrinsic;

intrinsic AutGrpBinCode(C::CodeLinFld, UseInv:: BoolElt) -> GrpPerm
{Internal}
    A := aut_grp(C: UseInv := UseInv);
    return A;
end intrinsic;


intrinsic IsEquivalentBinaryCode(C1::CodeLinFld, C2::CodeLinFld:
BaseChangeLevel:=-1, Weight := -1, UseInv:=false, LeftSubgroup := 0, RightSubgroup:= 0)->BoolElt, GrpPermElt
{Internal}
    require #BaseRing(C1) eq 2: "Codes must be binary codes";
    require #BaseRing(C2) eq 2: "Codes must be binary codes";
    return equivalence(C1, C2 : LeftSubgroup := LeftSubgroup,
	RightSubgroup:= RightSubgroup, Weight := Weight,
	BaseChangeLevel := BaseChangeLevel, UseInv := UseInv);
end intrinsic;

