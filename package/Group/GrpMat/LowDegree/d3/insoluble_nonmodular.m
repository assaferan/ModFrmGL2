freeze;

import "common.m": makeMG;
import "deg3_groups.m": getAlt5AsMG, getPSL27AsMG, get3Alt6AsMG;

/* List of functions available:
   getInsolubleNonmodularMatrixGroupsOfDimThreeFF(F, isGL)
   getInsolubleNonmodularMatrixGroupsOfDimThree(p, a, isGL)

******************************************************************************/

InsolubleNonmodular := function(F, isGL)
	// cf. Theorem 5.2.23, Lemmas 5.2.10, 5.2.11, 5.2.12.

	// ***Declarations***************************************** //

	local p, a, q, pa_;

	// Lists
	local lst_alt5, lst_alt6, lst_psl27;
	local lst_alt5xCr, lst_alt6xCr, lst_alt6oC9r, lst_psl27xCr;

	// Matrix Groups
	local M_Alt5, M_Alt6, M_PSL27;

	// maps
	local ru, DM;
	
	// ******************************************************* //

	p:= Characteristic(F);
	a:= Degree(F);
	q:= p^a;
	pa_:= p^a - 1;

	ru:= map<Integers() -> F | r :-> PrimitiveElement(F)^(pa_ div r)>;
	DM:= map<Integers() -> GL(3,F) | r:-> GL(3,F)! DiagonalMatrix([ru(r),ru(r),ru(r)])>;
	
	lst_alt5:= [];
	lst_alt6:= [];
	lst_psl27:= [];

	// Alt(5) = PSL(2,5)
	// Check conditions on q=p^a

	if ((a mod 2 eq 0) and (q mod 30 in [1,7,13,19])) or
	   ((a mod 2 eq 1) and (q mod 30 in [1,11,19,29])) then
		flag, M_Alt5 := getAlt5AsMG(F);

		if flag then 
			lst_alt5xCr:= [makeMG(F, [DM(r)*(GL(3,F)! M_Alt5.1), GL(3,F)! M_Alt5.2], <"A5", "A5 x C_" cat IntegerToString(r), "", M_Alt5`Properties>) :
				       r in Divisors(p^a - 1) | r ne 1 and (isGL or ru(r)^3 eq 1)];
			lst_alt5:= [M_Alt5] cat lst_alt5xCr;
		end if;
	end if;

	// Alt(6) = PSL(2,9)
	// Check conditions on q=p^a

	if ((a mod 2 eq 0) and (q mod 30 in [1,7,13,19])) or
	   ((a mod 2 eq 1) and (q mod 30 in [1,19])) then
		flag, M_Alt6 := get3Alt6AsMG(F);

		if flag then 
			lst_alt6xCr:= [makeMG(F, [DM(r)*(GL(3,F)! M_Alt6.1), GL(3,F)! M_Alt6.2], <"A6", "3.A6 x C_" cat IntegerToString(r), "", M_Alt6`Properties>) :
				    r in Divisors(p^a - 1) | r mod 3 ne 0 and r ne 1 and (isGL or ru(r)^3 eq 1)];
			if ((q-1) mod 9 eq 0) and (isGL) then
				lst_alt6oC9r := [makeMG(F, [DM(9*r)*M_Alt6.1, M_Alt6.2], <"A6", "3.A6 o C_" cat IntegerToString(9*r), "">) :
				    r in Divisors(p^a - 1) | r in Divisors((q-1) div 9)];
			else
				lst_alt6oC9r := [];
			end if;

			lst_alt6:= [M_Alt6] cat lst_alt6xCr cat lst_alt6oC9r;			
		end if;
	end if;

	//PSL(2,7) = GL(3,2)
	// Check conditions on q=p^a
	if ((a mod 2 eq 0) and (q mod 42 in [1,13,19,25,31,37])) or
	   ((a mod 2 eq 1) and (q mod 42 in [1,11,23,25,29,37])) then
		flag, M_PSL27 := getPSL27AsMG(F);

		if flag then
			lst_psl27xCr:= [makeMG(F, [GL(3,F)! DM(r)*(GL(3,F)! M_PSL27.1), GL(3,F)! M_PSL27.2], <"PSL(2,7)", "L_2(7) x C_" cat IntegerToString(r), "", M_PSL27`Properties>) :
					r in Divisors(p^a - 1) | r ne 1 and (isGL or ru(r)^3 eq 1)];
			lst_psl27:= [M_PSL27] cat lst_psl27xCr;
		end if;
	end if;

	return [lst_alt5] cat [lst_alt6] cat [lst_psl27];

end function;
