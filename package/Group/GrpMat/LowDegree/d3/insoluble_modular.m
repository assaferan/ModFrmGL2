freeze;

import "common.m": makeMG;
import "deg3_groups.m": getAlt5AsMG, getPSL27AsMG;

/* List of functions:
   ohat(s,t)
   ohateq1(n,r)
   getList_a_CQ_PSL3pb(F, isGL)
   getList_b_CQ_PSU3pb(F, isGL)
   getList_c_CQ_PSL2pb(F, isGL)
   getList_ch_CQ_PGL2pb(F, isGL, isByConj)
   getList_apl_CQ_PGL3pb(F, isGL)
   getList_bpl_CQ_PGU3pb(F, isGL)
   getList_d_CQ_A5PSL27peq3(F, isGL)
   getList_e_CQ_A6peq2(F, isGL)
   getList_f_CQ_A6A7peq5(F, isGL, isByConj)
   getInsolubleModularMatrixGroupsOfDimThreeFF(F, isGL, isByConj)

**************************/

/* Notation:
   ru = root of unity
   mat = matrix

*************************/

ohat := function(s,t)
    local L,m;

    L:= [j : j in [0..Ceiling(Log(s,t))] | s^j in Divisors(t)];
    m:= Max(L);

    return m;
end function;

ohateq1:= function(n,r)
	return ((r mod n) eq 0) and not((r mod n^2) eq 0);
end function;

getList_a_CQ_PSL3pb:= function(F, isGL)
	//Central Quotient: PSL(3,p^b); b | a
	//cf. Theorems 6.2.17(a) (for group names), 6.2.28(a) (for matrix generators)

	// ***Declarations***************************************** //

	local p, strP;
	local a, b, strB;
	local pa_, pb_;

	// Roots of Unity
	local ru; //map
	local rupb_;

	// Group Names
	local strCQ;
	local strSL, strSLdesc, strGL;

	// Lists
	local lst_a_subgroups;
	local lst_a_i_iii_SL;
	local lst_a_i_SLxCr, lst_a_ii_GL, lst_a_ii_GLxCr;
	local lst_a_iii_SLxCr, lst_a_iv_SLoC9r;	

	// Matrices
	local mat1, mat2;
	local DM;  //map

	// ******************************************************* //

	p:= Characteristic(F);
	strP:= IntegerToString(p);
	a:= Degree(F);

	pa_:= p^a - 1;

	ru:= map<Integers() -> F | r :-> PrimitiveElement(F)^(pa_ div r)>;
	DM:= map<Integers() -> GL(3,F) | r:-> GL(3,F)! DiagonalMatrix([ru(r),ru(r),ru(r)])>;

	lst_a_subgroups:= [];

	mat1:= GL(3,F)! Matrix([[-1, 0, 1],
				[-1, 0, 0],
				[ 0,-1, 0]]);
		
	for b in Divisors(a) do				// b | a

		pb_:= p^b - 1;
		strB:= IntegerToString(b);

		if (b gt 1) then
			strSL:= "SL(3," cat strP cat "^" cat strB cat ")";
			strGL:= "GL(3," cat strP cat "^" cat strB cat ")";
		else
			strSL:= "SL(3," cat strP cat ")";
			strGL:= "GL(3," cat strP cat ")";
		end if;

		strCQ := "P" cat strSL;

		rupb_ := ru(p^b - 1);

		if (p^b ne 2) then
			mat2:= GL(3,F)! Matrix([[rupb_,    0      , 0],
									[ 0   , rupb_^(-1), 0],
									[ 0   ,    0      , 1]]);
			strSLdesc:= strSL;
		else
			mat2:= GL(3,F)! Matrix([[0,0,1],
									[1,0,0],
									[0,1,0]]);
			strSLdesc:= "SL(3,2) = GL(3,2)";
		end if;

		lst_a_i_iii_SL := [makeMG(F, [mat1, mat2], <strCQ, strSLdesc, "a">)];	

		if (pb_ mod 3 ne 0) then	// 3 ¬| p^b*
			lst_a_i_SLxCr := [makeMG(F, [mat1, DM(r)*mat2], <strCQ, strSL cat "xC_" cat IntegerToString(r), "a">) : 
					  r in Divisors(pa_) | Gcd(r,pb_^2) ne pb_ and r ne 1 and (isGL or ru(r)^3 eq 1)];
			if (isGL) then
				if (p^b ne 2) then	//when p=2: GL=SL
					lst_a_ii_GL := [makeMG(F, [mat1, DM(pb_)*mat2], <strCQ, strGL, "a">) ];
				else
					lst_a_ii_GL := [];
				end if;
				lst_a_ii_GLxCr := [makeMG(F, [mat1, DM(r*(pb_))*mat2], <strCQ, strGL cat "xC_" cat IntegerToString(r), "a">) : 
						 r in Divisors(pa_ div pb_) | Gcd(r, pb_) eq 1 and r ne 1];
			else
				lst_a_ii_GL := [];
				lst_a_ii_GLxCr := [];
			end if;

			lst_a_subgroups:= lst_a_subgroups cat lst_a_i_iii_SL cat lst_a_i_SLxCr cat lst_a_ii_GL cat lst_a_ii_GLxCr;

		else				// 3 | p^b*
			lst_a_iii_SLxCr := [makeMG(F, [mat1, DM(r)*mat2], <strCQ, strSL cat "xC_" cat IntegerToString(r), "a">) :
					    r in Divisors(pa_) | (r mod 3) ne 0 and r ne 1 and (isGL or ru(r)^3 eq 1)];			
			if ((p^a mod 9) eq 1) and (isGL) then
				lst_a_iv_SLoC9r := [makeMG(F, [mat1, DM(9*r), mat2], <strCQ, strSL cat "oC_" cat IntegerToString(9*r), "a">) : 
						    r in Divisors(pa_ div 9)];
			else
				lst_a_iv_SLoC9r := [];
			end if;
			lst_a_subgroups:= lst_a_subgroups cat lst_a_i_iii_SL cat lst_a_iii_SLxCr cat lst_a_iv_SLoC9r;
		end if;	
				
	end for;

	return lst_a_subgroups;
end function;

getList_b_CQ_PSU3pb:= function(F, isGL)
	//Central Quotient: PSU(3,p^b); 2b | a
	//cf. Theorems 6.2.17(b) (for group names), 6.2.28(b) (for matrix generators)

	// ***Declarations***************************************** //

	local p, strP;
	local a, b, strB;
	local pa_, pb_, pbx;
	local strSLExtraCond;

	// Roots of unity
	local ru; //map
	local rupbx, rup2b_;

	// Group Names;
	local strCQ;
	local strSU, strGU;

	// Lists
	local lst_b_subgroups;
	local lst_b_i_iii_SU, lst_b_i_SU, lst_b_ii_GU, lst_b_ii_GUxCr;
	local lst_b_iii_SUxCr, lst_b_iv_SUoC9r;

	// Matrices
	local mat1, mat2;
	local DM; //map

	// ******************************************************* //

	p:= Characteristic(F);
	strP:= IntegerToString(p);

	a:= Degree(F);
	pa_:= p^a - 1;

	lst_b_subgroups:= [];

	ru:= map<Integers() -> F | r :-> PrimitiveElement(F)^(pa_ div r)>;

	DM:= map<Integers() -> GL(3,F) | r:-> GL(3,F)! DiagonalMatrix([ru(r),ru(r),ru(r)])>;

	if not(isGL) then
		strSLExtraCond:= "ru(r)^3 eq 1";
	else
		strSLExtraCond := "true";
	end if;

	// Define beta_u 
	beta:= map<Integers() -> F | u :-> -(1 + ru(p^u + 1))^(-1)>;

	for b in [_2b div 2: _2b in Divisors(a) | IsEven(_2b)] do // 2b | a

		if (p^b ne 2) then		//p^b = 2 => soluble groups so ignore this case!

			pb_:= p^b - 1;
			pbx:= p^b + 1;
			strB:= IntegerToString(b);	

			if (b gt 1) then
				strSU:= "SU(3," cat strP cat "^" cat strB cat ")";
				strGU:= "GU(3," cat strP cat "^" cat strB cat ")";
			else
				strSU:= "SU(3," cat strP cat ")";
				strGU:= "GU(3," cat strP cat ")";
			end if;

			strCQ := "P" cat strSU;

			rupbx:= ru(p^b + 1);
			rup2b_:= ru(p^(2*b) - 1);

			mat1:= GL(3,F)! Matrix([[beta(b),-1,1],
						[  -1   ,-1,0],
						[   1   , 0,0]]);
						
			mat2:= GL(3,F)! Matrix([[rup2b_,  0  ,    0     ],
						[   0  ,rupbx,    0     ],
						[   0  ,  0  ,rup2b_^(-p^b)]]);

			lst_b_i_iii_SU := [makeMG(F, [mat1, mat2], <strCQ, strSU, "b">)];

			if ((p^b mod 3) ne 2) then		// 3 ¬| p^b+
				lst_b_i_SUxCr := [makeMG(F, [mat1, DM(r)*mat2], <strCQ, strSU cat "xC_" cat IntegerToString(r), "b">) : 
					  r in Divisors(pa_) | Gcd(r, pbx^2) ne pbx and r ne 1 and (isGL or ru(r)^3 eq 1)];
				if (isGL) then
					lst_b_ii_GU := [makeMG(F, [mat1, DM(pbx)*mat2], <strCQ, strGU, "b">)];  
					lst_b_ii_GUxCr := [makeMG(F, [mat1, DM(r*pbx)*mat2], <strCQ, strGU cat "xC_" cat IntegerToString(r), "b">) : 
							   r in Divisors(pa_ div pbx) | Gcd(r, pbx) eq 1 and r ne 1];
				else
					lst_b_ii_GU := [];
					lst_b_ii_GUxCr := [];
				end if;

				lst_b_subgroups:= lst_b_subgroups cat lst_b_i_iii_SU cat lst_b_i_SUxCr cat lst_b_ii_GU cat lst_b_ii_GUxCr;
		
			else					// 3 | p^b+
			
				lst_b_iii_SUxCr := [makeMG(F, [mat1, DM(r)*mat2], <strCQ, strSU cat "xC_" cat IntegerToString(r), "b">) : 
						    r in Divisors(pa_) | (r mod 3) ne 0 and r ne 1 and (isGL or ru(r)^3 eq 1)];
				if ((pa_ mod 9) eq 0) and (isGL) then
					lst_b_iv_SUoC9r := [makeMG(F, [mat1, DM(9*r)*mat2], <strCQ, strSU cat "oC_" cat IntegerToString(9*r), "b">) :
						    	    r in Divisors(pa_ div 9)];
				else
					lst_b_iv_SUoC9r := [];
				end if;
				lst_b_subgroups:= lst_b_subgroups cat lst_b_i_iii_SU cat lst_b_iii_SUxCr cat lst_b_iv_SUoC9r;
			end if;
		end if;
	
	end for;

	return lst_b_subgroups;
end function;

getList_c_CQ_PSL2pb:= function(F, isGL)
	//Central Quotient: PSL(2,p^b); b | a, p!=2, p^b != 3
	//cf. Theorems 6.2.10(c) (for group names), 6.2.27(c) (for matrix generators)

	// ***Declarations***************************************** //

	local p, strP;
	local a, b, strB;
	local strSLExtraCond;
	local pa_;

	// Roots of unity
	local ru; //map
	local rupb_;

	// Group Names
	local strPSL2;

	// Lists	
	local lst_c_PSL2, lst_c_PSL2xCr;
	local lst_c_subgroups;

	// Matrices
	local mat1, mat2;

	// ******************************************************* //

	p:= Characteristic(F);
	
	// p!=2
	if (p eq 2) then return []; end if;

	a:= Degree(F);
	pa_ := p^a - 1;

	ru:= map<Integers() -> F | r :-> PrimitiveElement(F)^(pa_ div r)>;

	DM:= map<Integers() -> GL(3,F) | r:-> GL(3,F)! DiagonalMatrix([ru(r),ru(r),ru(r)])>;

	if not(isGL) then
		strSLExtraCond:= "ru(r)^3 eq 1";
	else
		strSLExtraCond := "true";
	end if;

	strP:= IntegerToString(p);
	
	lst_c_subgroups:=[];

	mat1:= GL(3,F)! Matrix([[     1,-2, 2],
				[     1,-1, 0],
				[2^(-1), 0, 0]]);

	for b in Divisors(a) do

		strB:= IntegerToString(b);

		if (p^b ne 3) then
			if (b gt 1) then
				strPSL2:= "PSL(2," cat strP cat "^" cat strB cat ")";
			else
				strPSL2:= "PSL(2," cat strP cat ")";
			end if;

			rupb_:= ru(p^b - 1);
			mat2:= GL(3,F)! Matrix([[rupb_^2, 0,   0       ],
						[  0    , 1,   0       ],
						[  0    , 0, rupb_^(-2)]]);
			lst_c_PSL2 := [makeMG(F, [mat1, mat2], <strPSL2, strPSL2, "c", GF(p^a)>)];
			lst_c_PSL2xCr := [makeMG(F, [mat1, DM(r)*mat2], <strPSL2, strPSL2 cat "xC_" cat IntegerToString(r),
							      "c", GF(p^a)>) : r in Divisors(pa_) | r ne 1 and (isGL or ru(r)^3 eq 1)];

			lst_c_subgroups:= lst_c_subgroups cat lst_c_PSL2 cat lst_c_PSL2xCr;

		end if;

	end for;

	return lst_c_subgroups;
	
end function;

getList_ch_CQ_PGL2pb:= function(F, isGL, isByConj)
	//Central Quotient: PGL(2,p^b); b | a, p!=2, p^b != 3
	//cf. Theorems 6.2.10(c#) (for group names), 6.2.27(c#) (for matrix generators)

	// ***Declarations***************************************** //

	local p, strP;
	local a, b, strB;
	local pa_, pb_, pbx, pab_, pab_x;
	local strSLExtraCond;

	// Array
	local arrIsConjCopy;

	// Roots of unity
	local ru;  // map
	local rupb_;
	local rupbx, rup2b_;

	// Group Names
	local strPGL2pb, strGL2pb, strGU2pb;

	// Lists
	local lst_ch_i_PGL2, lst_ch_i_PGL2xCr;
	local lst_L, lst_Lii_GL2ModC2r, lst_Lii_GL2ModC2rxCt, lst_Liii_2sGL2ModC2r, lst_Liii_2sGL2ModC2rxCt;
	local lst_U, lst_Uii_GU2ModC2r, lst_Uii_GU2ModC2rxCt, lst_Uiii_2sGU2ModC2r, lst_Uiii_2sGU2ModC2rxCt;
	local lst_ch_subgroups;

	// Matrices
	local mat1, mat2;
	local DM, DMv; //map

	// ******************************************************* //

	p:= Characteristic(F);

	// p!=2
	if (p eq 2) then return []; end if;

	strP:= IntegerToString(p);
	a:= Degree(F);
	lst_ch_subgroups:=[];
	pa_:= p^a - 1;

	ru:= map<Integers() -> F | r :-> PrimitiveElement(F)^(pa_ div r)>;

	DM:= map<Integers() -> GL(3,F) | r:-> GL(3,F)! DiagonalMatrix([ru(r),ru(r),ru(r)])>;
	DMv:= map<Integers() -> GL(3,F) | r:-> GL(3,F)! DiagonalMatrix([r,r,r])>;

	if not(isGL) then
		strSLExtraCond:= "ru(r)^3 eq 1";
	else
		strSLExtraCond := "true";
	end if;

	mat1:= GL(3,F)! Matrix([[ 1 ,-2, 2],
				[ 1 ,-1, 0],
				[1/2, 0, 0]]);
		
	for b in Divisors(a) do

		strB:= IntegerToString(b);
		pb_ := p^b - 1;
		pbx := p^b + 1;
		pa_ := p^a - 1;
		pab_:= pa_ div pb_;
		pab_x:= pa_ div pbx;

		if (p^b ne 3) then
			if (b gt 1) then
				strPGL2pb:= "PGL(2," cat strP cat "^" cat strB cat ")";
				strGL2pb:= "GL(2," cat strP cat "^" cat strB cat ")";
				strGU2pb:= "GU(2," cat strP cat "^" cat strB cat ")";
			else
				strPGL2pb:= "PGL(2," cat strP cat ")";
				strGL2pb:= "GL(2," cat strP cat ")";
				strGU2pb:= "GU(2," cat strP cat ")";
			end if;

			rupb_:= ru(p^b - 1);

			mat2:= GL(3,F)! Matrix([[rupb_, 0,  0       ],
						[  0  , 1,  0       ],
						[  0  , 0,rupb_^(-1)]]);

			lst_ch_i_PGL2 := [makeMG(F, [mat1, mat2], <strPGL2pb, strPGL2pb, "c#">)];

			if (isByConj) then
				arrIsConjCopy:= AssociativeArray();
				arrIsConjCopy[-1] := " (NonConj Copy)";
				arrIsConjCopy[1] := "";
				
				lst_ch_i_PGL2 := [makeMG(F, [mat1, DMv(d)*mat2], <strPGL2pb, strPGL2pb cat arrIsConjCopy[d], "c#">): d in [1,-1] | isGL or d eq 1];
				lst_ch_i_PGL2xCr := [makeMG(F, [DM(r)*mat1, DMv(d)*mat2], <strPGL2pb, strPGL2pb cat "xC_" cat IntegerToString(r) cat arrIsConjCopy[d], "c#">) :
					  	     d in [1,-1], r in Divisors(pa_) | d in [1, (-1)^r] and r ne 1 and (isGL or (ru(r)^3 eq 1 and d eq 1)) ];
			else
				lst_ch_i_PGL2 := [makeMG(F, [mat1, mat2], <strPGL2pb, strPGL2pb, "c#">)];
				lst_ch_i_PGL2xCr := [makeMG(F, [DM(r)*mat1, mat2], <strPGL2pb, strPGL2pb cat "xC_" cat IntegerToString(r), "c#">) :
					  	     r in Divisors(pa_) | r ne 1 and (isGL or ru(r)^3 eq 1)];
			end if;

			if (pb_ mod 4 eq 0) and (isGL) then		// (L-ii), (L-iii)
								
				mat2:= GL(3,F)! Matrix([[rupb_, 0 ,   0      ],
							[  0  , 1 ,   0      ],
							[  0  , 0 ,rupb_^(-1)]]);

				lst_Lii_GL2ModC2r := [makeMG(F, [mat1, (DM(pb_)^r)*mat2], <strPGL2pb, strGL2pb cat " mod C_" cat IntegerToString(2*r), "c#">) : 
							r in Divisors(pb_ div 4)];

				lst_Lii_GL2ModC2rxCt := [makeMG(F, [DM(t)*mat1, (DM(pb_)^r)*mat2], <strPGL2pb,
							 "(" cat strGL2pb cat " mod C_" cat IntegerToString(2*r) cat ")" cat "xC_" cat IntegerToString(t), "c#">) : 
							 r in Divisors(pb_ div 4), t in Divisors(pa_ div pb_) | Gcd(t, pb_) eq 1 and t ne 1];
				
				lst_Liii_2sGL2ModC2r := [makeMG(F, [mat1, (DM(pb_)^r)*DM(2^(s+ohat(2,pb_)))*mat2], <strPGL2pb,
							 IntegerToString(2^s) cat ".(" cat strGL2pb cat " mod C_" cat IntegerToString(2*r) cat ")", "c#">) : 
							 r in Divisors(pb_ div 4), s in [1..ohat(2,pab_)] | r mod 2 eq 1];

				lst_Liii_2sGL2ModC2rxCt := [makeMG(F, [DM(t)*mat1, (DM(pb_)^r)*DM(2^(s+ohat(2,pb_)))*mat2], <strPGL2pb,
							 IntegerToString(2^s) cat ".(" cat strGL2pb cat " mod C_" cat IntegerToString(2*r) cat ")" cat "xC_" cat IntegerToString(t), "c#">) : 
							 r in Divisors(pb_ div 4), t in Divisors(pa_ div pb_), s in [1..ohat(2,pab_)] | r mod 2 eq 1 and Gcd(t, pb_) eq 1 and t ne 1];

				lst_L := lst_Lii_GL2ModC2r cat lst_Lii_GL2ModC2rxCt cat lst_Liii_2sGL2ModC2r cat lst_Liii_2sGL2ModC2rxCt;
			else
				lst_L := [];
			end if;	

			if (pbx mod 4 eq 0) and (2*b in Divisors(a)) and (isGL) then		// (U-ii), (U-iii)
				rupbx:= ru(p^b + 1);
				rup2b_:= ru(p^(2*b) - 1);

				matGU1:= GL(3,F)! Matrix([[    1             , -2*rup2b_^(pbx div 2), 2*rupb_],
						          [rup2b_^(-pbx div 2),       -1            ,    0   ],
						          [ rupb_^(-1)/2     ,         0            ,    0   ]]);
				mat2:= GL(3,F)! Matrix([[rup2b_^2, 0  ,     0      ],
						        [    0   ,rupbx^(-1),     0      ],
						        [    0   , 0  ,rup2b_^(-2*p^b)]]);

				lst_Uii_GU2ModC2r := [makeMG(F, [matGU1, DM(pbx)^(1-r)*mat2], <strPGL2pb, strGU2pb cat " mod C_" cat IntegerToString(2*r), "c#">) : 
						      r in Divisors(pbx div 4)];
				lst_Uii_GU2ModC2rxCt := [makeMG(F, [DM(t)*matGU1, DM(pbx)^(1-r)*mat2], <strPGL2pb, "(" cat strGU2pb cat " mod C_" cat IntegerToString(2*r) cat ")" cat "xC_" cat IntegerToString(t), "c#">) : 
							    r in Divisors(pbx div 4), t in Divisors(pa_ div pbx) | Gcd(t, pbx) eq 1 and t ne 1];
				lst_Uiii_2sGU2ModC2r := [makeMG(F, [matGU1, (DM(pbx)^r)*DM(2^(s+ohat(2,pbx)))*mat2], <strPGL2pb,
							 IntegerToString(2^s) cat ".(" cat strGU2pb cat " mod C_" cat IntegerToString(2*r) cat ")", "c#">) : 
							 r in Divisors(pbx div 4), s in [1..ohat(2,pab_x)] | r mod 2 eq 1];

				lst_Uiii_2sGU2ModC2rxCt := [makeMG(F, [DM(t)*matGU1, (DM(pbx)^r)*DM(2^(s+ohat(2,pbx)))*mat2], <strPGL2pb,
							 IntegerToString(2^s) cat ".(" cat strGU2pb cat " mod C_" cat IntegerToString(2*r) cat ")" cat "xC_" cat IntegerToString(t), "c#">) : 
							 r in Divisors(pbx div 4), t in Divisors(pa_ div pbx), s in [1..ohat(2,pab_x)] | r mod 2 eq 1 and Gcd(t, pbx) eq 1 and t ne 1];

				lst_U := lst_Uii_GU2ModC2r cat lst_Uii_GU2ModC2rxCt cat lst_Uiii_2sGU2ModC2r cat lst_Uiii_2sGU2ModC2rxCt;
			else
				lst_U := [];
			end if;			

			lst_ch_subgroups:= lst_ch_subgroups cat lst_ch_i_PGL2 cat lst_ch_i_PGL2xCr cat lst_L cat lst_U;

		end if;
		
	end for;
	return lst_ch_subgroups;
end function;

getList_apl_CQ_PGL3pb:= function(F, isGL)
	//Central Quotient: PGL(3,p^b); b | a
	//cf. Theorems 6.2.17(a+) (for group names), 6.2.28(a+) (for matrix generators)

	// ***Declarations***************************************** //

	local p, strP;
	local a, b, strB;
	local pa_, pb_;
	local s;

	// Roots of unity
	local ru; //map
	local rupb, ru9;

	// Group Names
	local strCQ, strSL, strSL3, str3SL, strGL;

	// Lists
	local lst_apl_subgroups;
	local lst_apl_i;
	local lst_apl_i_SLsdC3, lst_apl_i_SLxCrsdC3, lst_apl_i_SLxCrsdC3oC3t;
	local lst_apl_ii;
	local lst_apl_ii_SL3, lst_apl_ii_SL3xCr;
	local lst_apl_ii_SL3xCrsdC3, lst_apl_ii_SL3xCrsdC3oC3t;
	local lst_apl_iii;
	local lst_apl_iii_3SL, lst_apl_iii_3SLxCr;
	local lst_apl_iv;
	local lst_apl_iv_GL, lst_apl_iv_GLxCr;

	// Matrices
	local mat1, matSL32, matSL33;
	local matGL2;
	
	// Maps
	local DM, SM, SLM;

	// ******************************************************* //

	a:= Degree(F);
	p:= Characteristic(F);

	if ((p^a mod 3) ne 1) then return []; end if;

	strP:= IntegerToString(p);
	pa_:= p^a - 1;

	lst_apl_subgroups:= [];

	ru:= map<Integers() -> F | r :-> PrimitiveElement(F)^(pa_ div r)>;

	DM:= map<Integers() -> GL(3,F) | r:-> GL(3,F)! DiagonalMatrix([ru(r),ru(r),ru(r)])>;
	SM:= map<Integers() -> GL(3,F) | r:-> GL(3,F)! DiagonalMatrix([1,1,ru(r)])>;
	SLM:= map<Integers() -> GL(3,F) | r:-> GL(3,F)! DiagonalMatrix([ru(r),ru(r)^(-2),ru(r)])>;

	mat1:= GL(3,F)! Matrix([[-1,0,1],
							[-1,0,0],
							[0,-1,0]]);

	for b in Divisors(a) do

		strB:= IntegerToString(b);

		if (b gt 1) then
			strSL:= "SL(3," cat strP cat "^" cat strB cat ")";
			strGL:= "GL(3," cat strP cat "^" cat strB cat ")";
		else
			strSL:= "SL(3," cat strP cat ")";
			strGL:= "GL(3," cat strP cat ")";
		end if;
		
		strSL3:= strSL cat ".3";
		str3SL:= "3." cat strSL;

		strCQ:= "P" cat strGL;
		pb_ := p^b - 1;

		if (pb_ mod 3 eq 0) then

			rupb_ := ru(p^b - 1);
			pb_ := p^b - 1;
			s:= ohat(3, pb_);

			mat2:= GL(3,F)! Matrix([[rupb_,   0      , 0],
									[  0  ,rupb_^(-1), 0],
									[  0  ,   0      , 1]]);

			if (3*b in Divisors(a)) then
				lst_apl_ii_SL3 := [makeMG(F, [mat1, mat2, SLM(3^(s+1))], <strCQ, strSL3, "a+">)]; 
			else
				lst_apl_ii_SL3 := [];
			end if;

			if not(isGL) then
				lst_apl_subgroups := lst_apl_ii_SL3;
			else 		

				if (pb_ ne 3^s) then
					lst_apl_i_SLsdC3 := [makeMG(F, [mat1, mat2, SM(3^s)], <strCQ, strSL cat "`C_" cat IntegerToString(3^s), "a+">)];
				else
					lst_apl_i_SLsdC3 := [];
				end if;
				
				lst_apl_i_SLxCrsdC3 := [makeMG(F, [mat1, mat2, DM(r)*SM(3^s)], <strCQ, strSL cat "`C_" cat IntegerToString((3^s)*r), "a+">) :
							 r in Divisors(pa_) | r ne 1 and 3^s*r in Divisors(pa_) and (r mod 3 ne 0) and Gcd(3^s*r, pb_^2) ne pb_];

				lst_apl_i_SLxCrsdC3oC3t := [makeMG(F, [mat1, mat2, DM(3^t*r), SM(3^s)], <strCQ, "(" cat strSL cat "o" cat "C_" cat IntegerToString((3^t)*r) cat ")`C_" cat IntegerToString(3^s), "a+">) :
							     r in Divisors(pa_), t in [s+1..ohat(3,pa_)] | (r mod 3 ne 0) and t gt 1 and (3^s*r*3^t in Divisors(pa_)) and Gcd(3^s*r*3^t, pb_^2) ne (pb_)];

				lst_apl_i := lst_apl_i_SLsdC3 cat lst_apl_i_SLxCrsdC3 cat lst_apl_i_SLxCrsdC3oC3t;

				if (3*b in Divisors(a)) then	
					lst_apl_ii_SL3xCr := [makeMG(F, [mat1, mat2, DM(r)*SLM(3^(s+1))], <strCQ, strSL3 cat "xC_" cat IntegerToString(r), "a+">) :
										  r in Divisors(pa_) | r mod 3 ne 0 and r ne 1];
					lst_apl_ii_SL3xCrsdC3 := [makeMG(F, [mat1, mat2, DM(r)*SLM(3^(s+1)), SM(3^s)], <strCQ, strSL3 cat "`C_" cat IntegerToString(3^s*r), "a+">) :
											  r in Divisors(pa_) | r mod 3 ne 0]; //removed r ne 1 (15 Aug 2011)
					lst_apl_ii_SL3xCrsdC3oC3t := [makeMG(F, [mat1, mat2, SLM(3^(s+1)), DM(3^t*r), SM(3^s)], <strCQ, "(" cat strSL3 cat "oC_" cat IntegerToString(3^t) cat ")`C_" cat IntegerToString((3^s)*r) , "a+">) :
												  r in Divisors(pa_), t in [s+2..ohat(3,pa_)] | r mod 3 ne 0 and r ne 1];
					if (isGL) then
						lst_apl_iii_3SL := [makeMG(F, [mat1, mat2, DM(3^(s+1))*SLM(3^(s+1))], <strCQ, str3SL, "a+">)];
						lst_apl_iii_3SLxCr := [makeMG(F, [mat1, mat2, DM(3^(s+1)*r)*SLM(3^(s+1))], <strCQ, str3SL cat "xC_" cat IntegerToString(r), "a+">) : r in Divisors(pa_) | r mod 3 ne 0 and r ne 1];
						lst_apl_iii := lst_apl_iii_3SL cat lst_apl_iii_3SLxCr;
					else
						lst_apl_iii := [];
					end if;
					
					lst_apl_ii := lst_apl_ii_SL3 cat lst_apl_ii_SL3xCr cat lst_apl_ii_SL3xCrsdC3 cat lst_apl_ii_SL3xCrsdC3oC3t;
				else
					lst_apl_ii := [];				
					lst_apl_iii := [];
				end if;
				
				if (isGL) then
					matGL2:= GL(3,F)! DiagonalMatrix([rupb_,1, 1]);
					lst_apl_iv_GL := [makeMG(F, [mat1, matGL2], <strCQ, strGL, "a+">) ];
					lst_apl_iv_GLxCr := [makeMG(F, [mat1, DM(r)*matGL2], <strCQ, strGL cat "xC_" cat IntegerToString(r), "a+">) :
										  r in Divisors(pa_ div pb_) | Gcd(r, pb_) eq 1 and r ne 1 ];
					lst_apl_iv := lst_apl_iv_GL cat lst_apl_iv_GLxCr;
				else
					lst_apl_iv := [];
				end if;				

				lst_apl_subgroups:= lst_apl_subgroups cat lst_apl_i cat lst_apl_ii cat lst_apl_iii cat lst_apl_iv;
			end if;
		end if;
		
	end for;
	
	return lst_apl_subgroups;

end function;

getList_bpl_CQ_PGU3pb:= function(F, isGL)
//Central Quotient: PGU(3,p^b); 2b | a
	//cf. Theorems 6.2.17(b+) (for group names), 6.2.28(b+) (for matrix generators)

	// ***Declarations***************************************** //

	local p, strP;
	local a, b, strB;
	local pa_, pbx;

	// Roots of unity
	local ru; //map
	local rupb, ru9;
	local rup2b_;

	// Group Names
	local strCQ, strSU, strSU3, str3SU, strGU;

	// Lists
	local lst_bpl_subgroups;
	local lst_bpl_i_SUsdC3, lst_bpl_i_SUxCrsdC3, lst_bpl_i_SUxCrsdC3oC3t;
	local lst_bpl_ii, lst_bpl_ii_SU3;
	local lst_bpl_ii_SU3xCr, lst_bpl_ii_SU3xCrsdC3s, lst_bpl_ii_SU3xCrsdC3soC3t;
	local lst_bpl_iii, lst_bpl_iii_3SU, lst_bpl_iii_3SUxCr;
	local lst_bpl_iv_GU, lst_bpl_iv_GUxCr;

	// Matrices
	local mat1, mat2, mat2GU, matSU33;
	local DM, UM, SUM; //maps

	// ******************************************************* //

	a:= Degree(F);
	p:= Characteristic(F);
	pa_:= p^a - 1;

	if ((pa_ mod 3) ne 0) then return []; end if;

	strP:= IntegerToString(p);

	lst_bpl_subgroups:= [];

	ru:= map<Integers() -> F | r :-> PrimitiveElement(F)^(pa_ div r)>;

	DM:= map<Integers() -> GL(3,F) | r:-> GL(3,F)! DiagonalMatrix([ru(r),ru(r),ru(r)])>;
	UM:= map<Integers() -> GL(3,F) | r:-> GL(3,F)! DiagonalMatrix([1,ru(r),1])>;
	SUM:= map<Integers() -> GL(3,F) | r:-> GL(3,F)! DiagonalMatrix([ru(r),ru(r)^(-2),ru(r)])>;

	// Define beta_u 
	beta:= map<Integers() -> F | u :-> -(1 + ru(p^u + 1))^(-1)>;

	for b in [_2b div 2: _2b in Divisors(a) | IsEven(_2b)] do // 2b | a

		if (p^b ne 2) then		//p^b = 2 => soluble groups so ignore this case!

			rup2b_:= ru(p^(2*b) - 1);
			rupb := ru(p^b + 1);

			strB:= IntegerToString(b);
	
			if (b gt 1) then
				strSU:= "SU(3," cat strP cat "^" cat strB cat ")";
				strGU:= "GU(3," cat strP cat "^" cat strB cat ")";
			else
				strSU:= "SU(3," cat strP cat ")";
				strGU:= "GU(3," cat strP cat ")";
			end if;
			
			strSU3:= strSU cat ".3";
			str3SU:= "3." cat strSU;
			strCQ:= "P" cat strGU;
	
			pbx := p^b + 1;
			s:= ohat(3, pbx);

			if (pbx mod 3 eq 0) then
	
				mat1:= GL(3,F)! Matrix([[beta(b),-1,1],
							[  -1   ,-1,0],
							[   1   , 0,0]]);		

				mat2:= GL(3,F)! Matrix([[rup2b_,  0  ,     0       ],
							[   0  , rupb,     0       ],
							[   0  ,  0  ,rup2b_^(-p^b)]]);

				mat2GU:= GL(3,F)! Matrix([[rup2b_,  0 ,     0       ],
					 		  [   0  ,  1 ,     0       ],
							  [   0  ,  0 ,rup2b_^(-p^b)]]);
	
				if (3*b in Divisors(a)) then
					lst_bpl_ii_SU3 := [makeMG(F, [mat1, mat2, SUM(3^(s+1))], <strCQ, strSU3, "b+">)]; 
				else
					lst_bpl_ii_SU3 := [];
				end if;	

				if not(isGL) then
					lst_bpl_subgroups := lst_bpl_ii_SU3;
				else 

					if (pbx ne 3^s) then
						lst_bpl_i_SUsdC3 := [makeMG(F, [mat1, mat2, UM(3^s)], <strCQ, strSU cat "`C_" cat IntegerToString(3^s), "b+">)];
					else
						lst_bpl_i_SUsdC3 := [];
					end if;
				
					lst_bpl_i_SUxCrsdC3 := [makeMG(F, [mat1, mat2, UM(3^s)*DM(r)], <strCQ, strSU cat "`C_" cat IntegerToString(3^s*r), "b+">) :
								 r in Divisors(pa_) | r ne 1 and (r mod 3 ne 0) and 3^s*r in Divisors(pa_) 
								 and Gcd(3^s*r, pbx^2) ne pbx];

					lst_bpl_i_SUxCrsdC3oC3t := [makeMG(F, [mat1, mat2, DM(3^t), UM(3^s)*DM(r)], <strCQ, "(" cat strSU cat "oC_" cat IntegerToString(3^t*r) cat ")`C_" cat IntegerToString(3^s), "b+">) :
								     r in Divisors(pa_), t in [s+1..ohat(3,pa_)] | 
								    r ne 1 and (r mod 3 ne 0) and 
								    (3^s*r*3^t in Divisors(pa_)) and
								    Gcd(3^s*r*3^t, pbx^2) ne pbx];

					lst_bpl_i := lst_bpl_i_SUsdC3 cat lst_bpl_i_SUxCrsdC3 cat lst_bpl_i_SUxCrsdC3oC3t;

					if (3*b in Divisors(a)) then								
						lst_bpl_ii_SU3xCr := [makeMG(F, [mat1, mat2, DM(r)*SUM(3^(s+1))], <strCQ, strSU3 cat "xC_" cat IntegerToString(r), "b+">) :
								      r in Divisors(pa_) | r mod 3 ne 0 and r ne 1];
						lst_bpl_ii_SU3xCrsdC3s := [makeMG(F, [mat1, mat2, DM(r)*SUM(3^(s+1)), UM(3^s)], <strCQ, strSU3 cat "`C_" cat IntegerToString(3^s*r), "b+">) :
								           r in Divisors(pa_) | r*3^s mod 3 ne 0];
						lst_bpl_ii_SU3xCrsdC3soC3t := [makeMG(F, [mat1, mat2, SUM(3^(s+1)), DM(3^t*r), UM(3^s)], <strCQ, "(" cat strSU3 cat "oC_" cat IntegerToString(3^t*r) cat
									       ")`C_" cat IntegerToString(r), "b+">) : r in Divisors(pa_), t in [s+2..ohat(3,pa_)] | r*3^s*3^t mod 3 ne 0 and r ne 1];
						lst_bpl_ii := lst_bpl_ii_SU3 cat lst_bpl_ii_SU3xCr cat lst_bpl_ii_SU3xCrsdC3s cat lst_bpl_ii_SU3xCrsdC3soC3t;
						
						if (isGL) then
							lst_bpl_iii_3SU := [makeMG(F, [mat1, mat2, DM(3^(s+1))*SUM(3^(s+1))], <strCQ, str3SU, "a+">)];
							lst_bpl_iii_3SUxCr := [makeMG(F, [mat1, mat2, DM(3^(s+1)*r)*SUM(3^(s+1))], <strCQ, str3SU cat "xC_" cat IntegerToString(r), "a+">) : r in Divisors(pa_) | r mod 3 ne 0 and r ne 1];
							lst_bpl_iii := lst_bpl_iii_3SU cat lst_bpl_iii_3SUxCr;
						else
							lst_bpl_iii := [];
						end if;
						
					else
						lst_bpl_ii := [];	
						lst_bpl_iii := [];						
					end if;	
					
					lst_bpl_iv_GU := [makeMG(F, [mat1, mat2GU], <strCQ, strGU, "b+">) ];
					lst_bpl_iv_GUxCr := [makeMG(F, [mat1, DM(r)*mat2GU], <strCQ, strGU cat "xC_" cat IntegerToString(r), "b+">) :
													r in Divisors(pa_ div pbx) | Gcd(r, pbx) eq 1 and r ne 1 ];

					lst_bpl_subgroups:= lst_bpl_subgroups cat lst_bpl_i cat lst_bpl_ii cat lst_bpl_iii cat lst_bpl_iv_GU cat lst_bpl_iv_GUxCr;
				end if;
			end if;
		end if;	
	end for;
	
	return lst_bpl_subgroups;
end function;

getList_d_CQ_A5PSL27peq3:= function(F, isGL)

	// ***Declarations***************************************** //

	local p, strP;
	local a, flag;

	local MG_Alt5, lst_alt5, lst_al5xCr;
	local MG_PSL27, lst_psl27, lst_psl27xCr;

	// ******************************************************* //

	p:= Characteristic(F);
	a:= Degree(F);

	if (p eq 3) and (a mod 2 eq 0) then
		pa_:= p^a - 1;
		ru:= map<Integers() -> F | r :-> PrimitiveElement(F)^(pa_ div r)>;
		DM:= map<Integers() -> GL(3,F) | r:-> GL(3,F)! DiagonalMatrix([ru(r),ru(r),ru(r)])>;
		lst_alt5 := [];
		lst_psl27 := [];		

		flag, MG_Alt5 := getAlt5AsMG(F);
		
		if flag then 
			lst_alt5xCr:= [makeMG(F, [GL(3,F)! DM(r)*(GL(3,F)! MG_Alt5.1), MG_Alt5.2], <"A5", "A5 x C_" cat IntegerToString(r), "d">) :
				       r in Divisors(p^a - 1) | r ne 1 and (isGL or ru(r)^3 eq 1)];
			lst_alt5:= [MG_Alt5] cat lst_alt5xCr;
		end if;

		flag, MG_PSL27 := getPSL27AsMG(F);

		if flag then
			lst_psl27xCr:= [makeMG(F, [GL(3,F)! DM(r)*(GL(3,F)! MG_PSL27.1), MG_PSL27.2], <"PSL(2,7)", "L_2(7) x C_" cat IntegerToString(r), "d">) :
					r in Divisors(p^a - 1) | r ne 1 and (isGL or ru(r)^3 eq 1)];
			lst_psl27:= [MG_PSL27] cat lst_psl27xCr;
		end if;

		return lst_alt5 cat lst_psl27;
	else
		return [];
	end if;

end function;

getList_e_CQ_A6peq2:= function(F, isGL)
	//Central Quotient: A6 when p=2, 2 | a
	//cf. Theorems 6.2.17(e) (for group names), 6.2.28(e) (for matrix generators)

	// ***Declarations***************************************** //

	local p, strP;
	local a, b, strB;
	local pa_;

	// Roots of unity
	local ru; //map
	local ru3;

	// Lists
	local lst_e_subgroups;
	local lst_e_i, lst_e_i_3A6, lst_e_i_3A6xCr;
	local lst_e_ii, lst_e_ii_3A6oC9r;

	// Matrices
	local mat1, mat2, mat3;
	local DM; //maps

	// ******************************************************* //

	p:= Characteristic(F);
	a:= Degree(F);
	pa_ := p^a - 1;

	if (p ne 2) or ((a mod 2) ne 0) then // return [] unless p=2
		lst_e_subgroups:= [];
	else
		strP:= IntegerToString(p);

		//ru:= map<Integers() -> F | r :-> RootOfUnity(r,F)>; - revised defn to allow larger values for field size
		ru:= map<Integers() -> F | r :-> PrimitiveElement(F)^(pa_ div r)>;

		DM:= map<Integers() -> GL(3,F) | r:-> GL(3,F)! DiagonalMatrix([ru(r),ru(r),ru(r)])>;
		ru3:= ru(3);

		mat1:= GL(3,F)! Matrix([[1,0,0],
				        [0,0,1],
				        [0,1,0]]);

		mat2:= GL(3,F)! Matrix([[ 0 ,1,0],
					[ 1 ,0,0],
					[ru3,1,1]]);

		lst_e_i_3A6 := [makeMG(F, [mat1, mat2], <"A6","3.A6","e">)];
		
		if (isGL) then
			lst_e_i_3A6xCr := [makeMG(F, [DM(r)*mat1, mat2], <"A6","3.A6xC_" cat IntegerToString(r),"e">) :
					   r in Divisors(pa_) | r mod 3 ne 0 and r ne 1];		
			lst_e_i := lst_e_i_3A6 cat lst_e_i_3A6xCr;
		else
			lst_e_i := lst_e_i_3A6;
		end if;

		if (pa_ mod 9 eq 0) and (isGL) then
			lst_e_ii := [makeMG(F, [DM(9*r)*mat1, mat2], <"A6","3.A6oC_" cat IntegerToString(9*r),"e">) :
					     r in Divisors(pa_ div 9)];
		else
			lst_e_ii := [];
		end if;

		lst_e_subgroups:= lst_e_i cat lst_e_ii;

	end if;

	return lst_e_subgroups;	
end function;

getList_f_CQ_A6A7peq5:= function(F, isGL, isByConj)
	//Central Quotient: A6, A6.2, A7 when p=5, 2 | a
	//cf. Theorems 6.2.17(d) (for group names), 6.2.28(d) (for matrix generators)

	// ***Declarations***************************************** //

	local p, strP;
	local a, b, strB;
	local pa_;

	// Roots of unity
	local ru; //map
	local ru3;

	// Lists
	local lst_f_subgroups;
	local lstV;
	local lst_f_i, lst_f_i_3A6, lst_f_i_3A6xCr, lst_f_i_3A7, lst_f_i_3A7xCr;
	local lst_f_ii, lst_f_ii_3A6oC9r, lst_f_ii_3A7oC9r;
	local lst_f_iii, lst_f_iii_6A6, lst_f_iii_6A6xCr, lst_f_iii_6A6xC2r;
	local lst_f_iv;

	// Matrices
	local matM, matV1, matV2;
	local matA7;
	local mat6A6_1, mat6A6_2, mat6A6_3;
	local DM, DMv; //maps

	// ******************************************************* //

	p:= Characteristic(F);
	a:= Degree(F);
	pa_ := p^a - 1;

	if (p ne 5) or ((a mod 2) ne 0) or (pa_ mod 3 ne 0) then // return [] unless p=5, 2 | a
		lst_f_subgroups:= [];
	else
		strP:= IntegerToString(p);

		ru:= map<Integers() -> F | r :-> PrimitiveElement(F)^(pa_ div r)>;

		DM:= map<Integers() -> GL(3,F) | r:-> GL(3,F)! DiagonalMatrix([ru(r),ru(r),ru(r)])>;
		DMv:= map<Integers() -> GL(3,F) | r:-> GL(3,F)! DiagonalMatrix([r,r,r])>;
		ru3:= ru(3);

		sqrt2:= F! SquareRoot(F! 2);

		matM:= GL(3,F)! Matrix([[-1, 0, 0],
				        [ 0, 0, 1],
				        [ 0, 1, 0]]);


		mat3A6:= GL(3,F)! Matrix([[0, 1, 0],
					  [-1, 0, 0],
					  [ru(12), ru(12)^5, 1]]);

		lstV:= [mat3A6];

		mat3A7:= GL(3,F)! Matrix([[0, 1, 0],
					  [-1, 0, 0],
					  [ru(24), ru(24)^5, 1]]);

		lst_f_i_3A6 := [makeMG(F, [matM, mat3A6], <"A6","3.A6","f">)];
		lst_f_i_3A7 := [makeMG(F, [matM, mat3A7], <"A7","3.A7","f">)];

		if (isGL) then
			lst_f_i_3A6xCr := [makeMG(F, [DM(r)*matM, mat3A6], <"A6","3.A6xC_" cat IntegerToString(r),"f">) :
					   r in Divisors(pa_) | r mod 3 ne 0 and r ne 1];		
			lst_f_i_3A7xCr := [makeMG(F, [DM(r)*matM, mat3A7], <"A7","3.A7xC_" cat IntegerToString(r),"f">) :
					   r in Divisors(pa_) | r mod 3 ne 0 and r ne 1];
			lst_f_i := lst_f_i_3A6 cat lst_f_i_3A7 cat lst_f_i_3A6xCr cat lst_f_i_3A7xCr;
		else
			lst_f_i := lst_f_i_3A6 cat lst_f_i_3A7;
		end if;

		if (pa_ mod 9 eq 0) and (isGL) then
			lst_f_ii_3A6oC9r := [makeMG(F, [DM(9*r)*matM, mat3A6], <"A6","3.A6oC_" cat IntegerToString(9*r),"f">) :
					     r in Divisors(pa_ div 9)];
			lst_f_ii_3A7oC9r := [makeMG(F, [DM(9*r)*matM, mat3A7], <"A7","3.A7oC_" cat IntegerToString(9*r),"f">) :
					     r in Divisors(pa_ div 9)];
			lst_f_ii := lst_f_ii_3A6oC9r cat lst_f_ii_3A7oC9r;
		else
			lst_f_ii := [];
		end if;

		mat6A6_1:= GL(3,F)! Matrix([[-1, 0, 0],
									[ 0,-1, 0],
									[ 0, 0, 1]]);

		mat6A6_2:= GL(3,F)! Matrix([[2,4,1],
									[1,4,2],
									[4,2,4]]);

		mat6A6_3:= GL(3,F)! Matrix([[ru3,    0     ,   0  ],
									[ 0 , ru3^2-1  , 1-ru3],
									[ 0 , ru3-ru3^2, 1-ru3^2]]);

		if (isByConj) then
			arrIsConjCopy:= AssociativeArray();
			arrIsConjCopy[-1] := " (NonConj Copy)";
			arrIsConjCopy[1] := "";
			lst_f_iii_6A6 := [makeMG(F, [mat6A6_1, mat6A6_2, DMv(d)*mat6A6_3], <"2.A6","6.A6" cat arrIsConjCopy[d],"f">) : d in [1,-1] | isGL or d eq 1];
		else
			lst_f_iii_6A6 := [makeMG(F, [mat6A6_1, mat6A6_2, mat6A6_3], <"2.A6","6.A6","f">)];
		end if;

		if (isGL) then
			if (isByConj) then
				lst_f_iii_6A6xCr := [makeMG(F, [DM(r)*mat6A6_1, mat6A6_2, DMv(d)*mat6A6_3], <"2.A6","6.A6xC_" cat IntegerToString(r) cat arrIsConjCopy[d], "f">) :
						     r in Divisors(pa_), d in [1,-1] | Gcd(6, r) eq 1 and r ne 1];
			else
				lst_f_iii_6A6xCr := [makeMG(F, [DM(r)*mat6A6_1, mat6A6_2, mat6A6_3], <"2.A6","6.A6xC_" cat IntegerToString(r), "f">) :
						     r in Divisors(pa_) | Gcd(6, r) eq 1 and r ne 1];
			end if;

			lst_f_iii_6A6xC2r := [makeMG(F, [DM(r)*mat6A6_1, mat6A6_2, mat6A6_3], <"2.A6","6.A6xC_" cat IntegerToString(r),"f">) :
					     r in Divisors(pa_) | Gcd(6, r) eq 2];

			lst_f_iii_6A6xC2r2 := [makeMG(F, [mat6A6_1, mat6A6_2, DM(2*r)*mat6A6_3], <"2.A6","6.A6xC_" cat IntegerToString(r),"f">) :
					     r in Divisors(pa_ div 2) | Gcd(6, r) eq 2];

			lst_f_iii := lst_f_iii_6A6 cat lst_f_iii_6A6xCr cat lst_f_iii_6A6xC2r cat lst_f_iii_6A6xC2r2;
		else
			lst_f_iii := lst_f_iii_6A6;
		end if;

		if (pa_ mod 9 eq 0) and (isGL) then
			lst_f_iv := [makeMG(F, [DM(9*r)*mat6A6_1, mat6A6_2, mat6A6_3], <"2.A6","6.A6oC_" cat IntegerToString(9*r),"f">) :
					r in Divisors(pa_ div 9)];
		else
			lst_f_iv := [];
		end if;

		lst_f_subgroups:= lst_f_i cat lst_f_ii cat lst_f_iii cat lst_f_iv;

	end if;

	return lst_f_subgroups;
end function;

InsolubleModular := function(F, isGL, isByConj)
	return [getList_a_CQ_PSL3pb(F, isGL)] cat
	       [getList_b_CQ_PSU3pb(F, isGL)] cat
	       [getList_c_CQ_PSL2pb(F, isGL)] cat
	       [getList_ch_CQ_PGL2pb(F, isGL, isByConj)] cat
	       [getList_d_CQ_A5PSL27peq3(F, isGL)] cat
	       [getList_apl_CQ_PGL3pb(F, isGL)] cat
	       [getList_bpl_CQ_PGU3pb(F, isGL)] cat
	       [getList_e_CQ_A6peq2(F, isGL)] cat
	       [getList_f_CQ_A6A7peq5(F, isGL, isByConj)];
end function;
