// This file was made in order to implement the isomorphism
// M_k(Gamma(N)) \cong M_k(Gamma0(N^2) cap Gamma1(N))

import "ModSym/core.m" : ConvFromModularSymbol;

// Here x is a symbol for Gamma(N)
function FullGammaIsomElt(M, x)
    N := Level(Parent(x));
    symb := ModularSymbol(x);
    new_symb := ModularSymbolApply([1,0,0,N], symb);
    new_x := ConvFromModularSymbol(M, new_symb);
    return new_x;
end function;

function FullGammaIsom(M, M_full)
    return Matrix([Representation(FullGammaIsomElt(M, x)) :
		   x in Basis(M_full)]);
end function;
