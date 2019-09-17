174,1
S,UnimodularExtension,"Given a basis matrix X with trivial elementary divisors, return a matrix U such that the vertical join of X with U is unimodular",0,1,0,0,0,0,0,0,0,-34,,-34,-38,-38,-38,-38,-38
S,LatticeBasisMatrix,"Return a basis matrix B of the lattice spanned by the rows of X, with other information (set E to elementary divisors of X if known)",0,1,0,0,0,0,0,0,0,-34,,-34,-34,-34,82,-34,82
S,LatticeBasisMatrixSimple,"Simple version, acting on full matrix in one go; return sequence L of rows to keep, and transformation matrix T",0,1,0,0,0,0,0,0,0,-34,,-34,-34,-34,82,-34,82
S,ReduceGramMatrix,"Return (r by r) reduced Gram matrix F2, indices sequence L and transformation matrix T so that F2 equals T*ColumnSubmatrix(RowSubmatrix(F, L), L)*Transpose(T) and r is the rank of F",0,1,0,0,0,0,0,0,0,-34,,-34,82,-34,-38,-38,-38
S,NHerm,Internal; assumes rank eq Ncols(X)?,0,1,0,0,0,0,0,0,0,-34,,-34,-38,-38,-38,-38,-38
S,SingleSolutionTest,"true and solution V with V*X=W, or false if no solution",0,2,0,0,0,0,0,0,0,-34,,0,0,-34,,-34,-38,-38,-38,-38,-38
S,NHerm2,Internal; assumes rank eq Ncols(X)?,0,1,0,0,0,0,0,0,0,-34,,-34,-38,-38,-38,-38,-38
