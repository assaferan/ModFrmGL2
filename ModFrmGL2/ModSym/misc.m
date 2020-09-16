freeze;
 
/****-*-magma-************************************************
                                                                          
                  HECKE:  Modular Symbols in Magma                         
                           William A. Stein                               
                                                                         
 FILE: misc.m (Miscellanous)                                        
                                                                       
 Last updated : 09/15/2020, Eran Assaf
      	      	07/29/2020, Eran Assaf

***************************************************************************/

// This file is intended for supporting older versions of magma
// In particular these functions only appear in Magma v. 2.24 and afterwards.
v1, v2, v3 := GetVersion();
version := Vector([v1, v2, v3]);

if version ge Vector([2,24,4]) then
    
    _, PivotColumn := IsIntrinsic("PivotColumn");
    
else

    PivotColumn := function(X, i)
	for j in [1..NumberOfColumns(X)] do
	    if X[i,j] ne 0 then
		return j;
	    end if;
	end for;
	return 0;
    end function;
    
end if;

//    error "This package is not supported on Magma version %o", version;

// old code
/*

*/
   /*
    GenerateS4 := function(p)
	B<i,j,k> := QuaternionAlgebra(Rationals(), -1,-1);
	O_B := QuaternionOrder([1,i,j,k]);
	_, mp := pMatrixRing(O_B,p);
	S4tp := sub<GL(2,p) | [mp(1+s) : s in [i,j,k]]
			      cat [mp(1-s) : s in [i,j,k]] cat [-1]>;
	return S4tp;
    end function;
   */
//  _, PowerSeriesSeq := IsIntrinsic("AbsolutePrecision");
// _, IsTotallyComplex := IsIntrinsic("IsTotallyComplex");
// _, IdentifyKroneckerCharacter := IsIntrinsic("IdentifyKroneckerCharacter");

/*
    GenerateS4 := function(p)
	OH := QuaternionOrder(-4,-4,0);
	H := Algebra(OH);
	TZBasis_red := [O.r : r in [2..4]];
	F := Rationals();
	// This could possibly be 2 or even 1, check
	prec := 20;
	Fp := pAdicField(p, prec);
	Op := Integers(Fp);
	GFP, modP:=ResidueClassField(Op);
	hp := hom<F -> Fp | >;

	PRF<X, Y, Z>:=PolynomialRing(F, 3);
	Q0 := X^2 + Y^2 + Z^2;
	C:=Conic(ProjectiveSpace(PRF), Q0);
	mymodP:=map<BaseRing(C)->GFP | aa:->aa@hp@modP>;
	C_red:=BaseChange(C,mymodP);
	P1 := Random(Points(C_red));
	Fpxx := PolynomialRing(Fp); xx := Fpxx.1;
	PolFp<XX,YY,ZZ> := PolynomialRing(Fp,3);
	pol_map := hom< PRF -> PolFp | hp, [XX,YY,ZZ]>;
	C_loc_eqn := Q0 @ pol_map;
	lifts := [Fp| P1[i] @@modP : i in [1..3] ];
	for l := 1 to 3 do
	    subst := ChangeUniverse(lifts, Fpxx);  subst[l] := xx;
	    ok, rt := HasRoot(Evaluate(C_loc_eqn, subst));
	    assert ok;
	    P2 := [Fp| (i eq l) select rt else lifts[i] : i in [1..3] ];
	end for;

	_, r := Minimum([Valuation(P2[r]) : r in [1..3]]);
	row_vec := [P2[j]/P2[r] : j in [1..3] | j ne r];
	mat := Matrix([row_vec, [row_vec[2], row_vec[1]]]);
	M2Op := MatrixAlgebra(Op,2);
	mj := M2Op![row_vec, [row_vec[2], -row_vec[1]]];
	mi := M2Op![0,-1,1,0];
	m1 := M2Op!1;
	mk := mi*mj;
	S4tp := sub<GL(2,p) | [m1+s : s in [mi,mj,mk]]
			      cat [m1-s : s in [mi,mj,mk]] cat [-1]>;
	return S4tp;
    end function;
    
    PowerSeriesSeq := function(f)
	return [Coefficient(f, n) : n in [0..AbsolutePrecision(f)-1]];
    end function;

    IsTotallyComplex := function(K)
	inf_places := [p[1] : p in Decomposition(K, Infinity())];
	for place in inf_places do
	    f, s := IsInfinite(place);
	    assert f;
	    if s le Signature(NumberField(place)) then
		return false;
	    end if;
	end for;
	return true;
    end function;
    
    IdentifyKroneckerCharacter := function(chi)
	chi:=AssociatedPrimitiveCharacter(chi);
	if Order(chi) eq 1 then return 1; end if; C:=Conductor(chi);
	return chi eq KroneckerCharacter(C) select C else -C;
    end function;
*/
//    _, PowerSeriesSeq := IsIntrinsic("AbsolutePrecision");
