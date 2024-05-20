// Testing for bugs found by Calvin George (Issue #19)

procedure Test_Index2()
    H := sub<GL(2,Integers(2)) | [[0,1],[1,1]]>;
    Gamma := PSL2Subgroup(H);
    elliptic := EllipticPoints(Gamma);
    assert #elliptic eq 2;
    // Testing when creating from generators
    gens := [[2,1,1,1],[-1,0,2,-1],[3,-2,2,-1],[-1,0,0,-1]];
    Gamma := SubgroupFromGens(Gamma0(1), [Matrix(Integers(),2,2,g) : g in gens],2,false);
    FS := FareySymbol(Gamma);
    assert Index(Gamma) eq 2;
end procedure;

// function JV wrote to compute signature from group data
// This should already exist somewhere around here
function signature(G,H)
    ind := Index(G,H); 
    GHT := CosetTable(G,H);
    pi := CosetTableToRepresentation(G,GHT);
    S := Matrix([[0,-1],[1,0]]);
    T := Matrix([[1,1],[0,1]]);
    ST := S*T;
    phiScyc := CycleStructure(pi(G!S));  // either [<2, i>, <1, j>] or [<2, i>]
    if phiScyc[#phiScyc][1] eq 1 then
	nu_2 := phiScyc[#phiScyc][2];
    else
	nu_2 := 0;
    end if;
    phiSTcyc := CycleStructure(pi(G!ST));  // either [<3, i>, <1, j>] or [<3, i>]
    if phiSTcyc[#phiSTcyc][1] eq 1 then
	nu_3 := phiSTcyc[#phiSTcyc][2];
    else
	nu_3 := 0;
    end if;
    eoo := #CycleDecomposition(pi(G!T));
    return eoo, nu_2, nu_3;
 end function;

procedure Test_Index4()

    gens1 := [
    [ 3, 0, 0, 3 ],
    [ 0, 3, 1, 3 ],
    [ 3, 3, 2, 1 ]];

    gens2 := [
	[ 0, 1, 1, 0 ],
	[ 1, 3, 2, 3 ]
	];
    
    H1 := sub<SL(2,Integers(4)) | gens1>;
    H2 := sub<GL(2,Integers(4)) | gens2>;
    assert IsConjugate(SL(2,Integers(4)), H1, H2 meet SL(2,Integers(4)));
    Gamma1 := PSL2Subgroup(H1);
    Gamma2 := PSL2Subgroup(H2);
    assert Index(Gamma1) eq 4;
    assert Index(Gamma2) eq 4;
    assert #Cusps(Gamma1) eq 1;
    assert Index(Gamma1) eq 4;
end procedure;

procedure Test_Signature(N, index, gens)
    H := sub<GL(2, Integers(N)) | gens>;
    G := PSL2Subgroup(H);
    assert Index(G) eq index;
    sl2 := SL(2, Integers(N));
    eoo, e2, e3 := signature(sl2, H meet sl2);
    elliptic := EllipticPoints(G);
    cusps := Cusps(G);
    assert #cusps eq eoo;
    ell2 := [* pt : pt in elliptic | Order(pt, G) eq 2 *];
    ell3 := [* pt : pt in elliptic | Order(pt, G) eq 3 *];
    assert #ell2 eq e2;
    assert #ell3 eq e3;
    assert #elliptic eq e2 + e3;
    // Checking again after Farey Symbols calculation
    assert Index(G) eq index;
end procedure;

procedure Test_Wrong_Signatures()
    wrong_sigs := [ [* 2, 2,
		     [
			 [ 0, 1, 1, 1 ]
		     ]
		     *],
		    [* 4, 4,
		     [
			 [ 3, 0, 0, 3 ],
			 [ 0, 3, 1, 3 ],
			 [ 3, 3, 2, 1 ]
		     ]
		     *],
		    [* 4, 2,
		     [
			 [ 3, 0, 2, 3 ],
			 [ 1, 2, 2, 1 ],
			 [ 2, 3, 3, 1 ],
			 [ 1, 2, 0, 1 ]
		     ]
		     *],
		    [* 8, 8,
		     [
			 [ 7, 0, 0, 7 ],
			 [ 5, 4, 0, 5 ],
			 [ 0, 7, 1, 7 ],
			 [ 5, 0, 4, 5 ],
			 [ 7, 7, 2, 1 ]
		     ]
		     *],
		    [* 8, 8,
		     [
			 [ 7, 0, 0, 7 ],
			 [ 3, 3, 2, 5 ],
			 [ 5, 4, 0, 5 ],
			 [ 0, 7, 1, 7 ],
			 [ 5, 0, 4, 5 ]
		     ]
		     *],
		    [* 8, 4,
		     [
			 [ 5, 0, 0, 5 ],
			 [ 0, 3, 5, 3 ],
			 [ 1, 4, 0, 1 ],
			 [ 3, 0, 0, 3 ],
			 [ 7, 7, 2, 1 ],
			 [ 1, 0, 4, 1 ]
		     ]
		     *],
		    [* 8, 2,
		     [
			 [ 5, 6, 2, 1 ],
			 [ 1, 2, 0, 1 ],
			 [ 7, 0, 2, 7 ],
			 [ 5, 0, 0, 5 ],
			 [ 2, 7, 7, 1 ],
			 [ 1, 4, 0, 1 ],
			 [ 1, 0, 4, 1 ]
		     ]
		     *],
		    [* 9, 27,
		     [
			 [ 2, 5, 8, 7 ],
			 [ 8, 0, 0, 8 ],
			 [ 7, 7, 6, 1 ],
			 [ 6, 1, 8, 3 ]
		     ]
		     *] ];
    for grp in wrong_sigs do
	N, index, gens := Explode(grp);
	Test_Signature(N, index, gens);
    end for;
end procedure;

Test_Index2();
Test_Index4();
Test_Wrong_Signatures();
