freeze;

/* List of functions:
   getAlt4AsMG(F)
   getAnySym4AsMG(F)   
   getSym4AsMG(F)
   getSym4NonConjCopyAsMG(F)
   getAlt5AsMG(F)
   get3Alt6AsMG(F)
   getPSL27AsMG(F)

**************************/

getAlt4AsMG:= function(F)
	// Generators as per Lemma 7.3.8 (i)

	// ***Declarations***************************************** //

	// Matrices
	local matA, matB;

	// Matrix Group
	local MG_Alt4;

	// ******************************************************* //

	matA:= GL(3,F)! Matrix([[0,1,0],
			        [0,0,1],
			        [1,0,0]]);

	matB:= GL(3,F)! Matrix([[-1,0, 0],
			        [ 0,1, 0],
				[ 0,0,-1]]);	

	if (Characteristic(F) in [2,3]) then
		strModu := "Modular, ";
	else
		strModu := "Non-modular, ";
	end if;

	MG_Alt4:= MatrixGroup<3, F | matA, matB>; 
	MG_Alt4`CentralQuotient := "A4";
	MG_Alt4`Description := "A4";
	MG_Alt4`Field:= F;
	MG_Alt4`Properties:= strModu cat "Soluble";

	return MG_Alt4;

end function;

getAnySym4AsMG:= function(F, d, strDesc)
	// Generators as per Lemma 7.3.8 (ii)

	// ***Declarations***************************************** //

	local strModu;
	
	// Matrices
	local matA, matB, matD;

	// Matrix Group
	local MG_Sym4;

	// ******************************************************* //
	
	matA:= GL(3,F)! Matrix([[0,1,0],
				[0,0,1],
				[1,0,0]]);

	matD:= GL(3,F)! DiagonalMatrix([d,d,d]);
							
	matB:= matD * (GL(3,F)! Matrix([[0,0,-1],
				        [0,1, 0],
        				[1,0, 0]]));
			
	if (Characteristic(F) in [2,3]) then
		strModu := "Modular, ";
	else
		strModu := "Non-modular, ";
	end if;

	MG_Sym4:= MatrixGroup<3, F | matA, matB>; 
	MG_Sym4`CentralQuotient := "S4" cat strDesc;
	MG_Sym4`Description := "S4" cat strDesc;
	MG_Sym4`Field:= F;
	MG_Sym4`Properties:= strModu cat "Soluble";

	return MG_Sym4;
end function;

getSym4AsMG:= function(F)
	return getAnySym4AsMG(F,1, "");
end function;

getSym4NonConjCopyAsMG:= function(F)
	return getAnySym4AsMG(F,-1, " (NonConj Copy)");
end function;

getAlt5AsMG:= function(F) 
	// Generators as per Lemma 5.2.10.

	// ***Declarations***************************************** //

	local sqrt5;
	local strModu;
	local P, x, f, m;

	// Matrix Group
	local MG_Alt5;

	// Matrices
	local matA, matB;
	
	// ******************************************************* //

	try
		P<x>:= PolynomialRing(F);
		f:= x^2 - x - 1;
		m:= Roots (f);
		if (#m lt 2) then
			return false, false;
		end if;

		matA:= GL(3,F)! Matrix([[0,-1,0],
					[0, 0,-1],
					[1, 0,0]]);
	
		matB:= GL(3,F)! (F! (-2)^(-1) * 
                      Matrix([[  1    ,m[2][1],m[1][1]],
		              [m[2][1],m[1][1],   1   ],
                              [m[1][1],   1   , m[2][1]]]));

		MG_Alt5:=  MatrixGroup<3, F | matA, matB>; 
		
		if (Characteristic(F) in [2,3,5]) then
			strModu := "Modular";
		else
			strModu := "Non-modular";
		end if;

		MG_Alt5`CentralQuotient := "A5";
		MG_Alt5`Description := "A5 = PSL(2,5)";
		MG_Alt5`Field := F;
		MG_Alt5`Properties := strModu cat ", Insoluble, Primitive, Simple";

		return true, MG_Alt5;
	catch e
		return false, false;
	end try;

end function;

get3Alt6AsMG:= function(F)
	// Generators as per Lemma 5.2.11	

	// ***Declarations***************************************** //

	local P, x, f, f_rts;
	local g, g_rts;
	local beta1, beta2;
	
	local strModu;
	
	// Matrix Group
	local MG_3Alt6;

	// Matrices
	local matH, matK;
	
	// ******************************************************* //

	try
		P<x>:= PolynomialRing(F);
		f:= x^2 - x - 1;
		f_rts:= Roots(f);
                //if there is only one root the group is valid but won't be 3.Alt6
		if (#f_rts lt 2) then 
			return false, false;
		end if;
		
		g:= x^2 + f_rts[1][1]*x + f_rts[1][1]^2;
		g_rts:= Roots(g);
		if (#g_rts lt 2) then
			return false, false;
		end if;
		
		beta1:= g_rts[1][1];
		beta2:= g_rts[2][1];		

		matH:= GL(3,F)! Matrix(3,3,[[-1,0,0],
		                            [ 0,0,1],
	                                    [ 0,1,0]]);
									 
		matK:= GL(3,F)! Matrix(3,3,[[  0,    1,   0],
					    [  -1,    0,   0],
					    [beta1, beta2, 1]]);
	
		MG_3Alt6:= MatrixGroup<3, F | matH, matK>;

		if (Characteristic(F) in [2,3,5]) then
			strModu := "Modular";
		else
			strModu := "Non-modular";
		end if;

		MG_3Alt6`Description := "3.A6";
		MG_3Alt6`CentralQuotient := "A6";
		MG_3Alt6`Field := F;
		MG_3Alt6`Properties:= strModu cat ", Insoluble, Primitive";

		return true, MG_3Alt6;
	catch e
		return false, false;
	end try;

end function;

getPSL27AsMG:= function(F)
	// Generators as per Lemma 5.2.12.

	// ***Declarations***************************************** //

	local sqrt_7;
	local strModu;
	local P, x, f, m;

	// Matrices
	local matB, matR;

	// ******************************************************* //

	try	
		P<x>:= PolynomialRing(F);
		f:= x^2 + x + 2;
		m:= Roots (f);
		if (#m lt 2) then
			return false, false;
		end if;

		matB:= GL(3,F)! Matrix(3,3, [[0,1,0],[0,0,1],[1,0,0]]);
		matR:= GL(3,F)! Matrix([[-1,m[1][1],0],[0,1,0],[0,m[2][1],-1]]);

		if (Characteristic(F) in [2,3,7]) then
			strModu := "Modular";
		else
			strModu := "Non-modular";
		end if;

		MG_PSL27:= MatrixGroup<3, F | matB, matR>; //PSL(2,7)
		MG_PSL27`CentralQuotient := "PSL(2,7)";
		MG_PSL27`Description := "PSL(2,7) = GL(3,2)";
		MG_PSL27`Field:= F;
		MG_PSL27`Properties:= "Non-modular, Insoluble, Primitive, Simple";

		return true, MG_PSL27;
	catch e
		return false, false;
	end try;

end function;
