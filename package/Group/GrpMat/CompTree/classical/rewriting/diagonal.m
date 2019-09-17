freeze;

import "bbclassical.m": B, BBDimension, BBType;
import "sl.m":DiagonalElementToSLPBBSL2;
import "su34.m":DiagonalElementToSLPSUBBDim3, DiagonalElementToSLPSUBBDim4;

// in some smalldimensional black-box cases, a further step is required
// in the rewriting process after SmallerMatrix.

DiagonalElementToSLP := function( G, g : Method := Method )
    
    dim := BBDimension( G );
    type := BBType( G );

    // some small-dimensional cases are handled separately
    
    if <type,dim,Method> eq <"SL",2,"BB"> then
        return DiagonalElementToSLPBBSL2( G, g );
    elif <type,dim,Method> eq <"SU",3,"BB"> then
        return DiagonalElementToSLPSUBBDim3( G, g );
    elif <type,dim,Method> eq <"SU",4,"BB"> then
        return DiagonalElementToSLPSUBBDim4( G, g );
    else
        return One( B ), One( G );
    end if;
    
end function;
        
    
    
