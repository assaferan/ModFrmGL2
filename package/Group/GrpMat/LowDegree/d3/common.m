freeze;

/* List of functions available:

   makeMG(F, lstMat, lstProps)

*****************************************************************************/

// declare attributes
AddAttribute(GrpMat, "CentralQuotient");
AddAttribute(GrpMat, "Description");
AddAttribute(GrpMat, "Family");
AddAttribute(GrpMat, "Field");
AddAttribute(GrpMat, "Properties");

makeMG:= function(F, lstMat, lstProps)
    local MG;
	local d;
	
	d:= #Rows(lstMat[1]);
	
    MG:= MatrixGroup<d, F | lstMat>;
    MG`CentralQuotient := lstProps[1];
    MG`Description := lstProps[2];
    MG`Family := lstProps[3];
    MG`Field := F;
    
	if (#lstProps lt 4) then
		MG`Properties := "Modular, Irreducible, Insoluble";
    else
		MG`Properties := lstProps[4];   
    end if;
	
    return MG;
end function;
