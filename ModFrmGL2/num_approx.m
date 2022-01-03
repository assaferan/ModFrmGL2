// This file was intended for functions that approximate complex numbers by algebraic
// ones. The folder NumApprox should contain a more robust version, implemented by
// Edgar et al.

// The goal was to approximate the vectors obtained from the period mapping.

function ComplexEmbeddings(K)
    CC := ComplexField();
    if Type(K) eq FldRat then
	return [hom<K -> CC | >];
    end if;
    roots := [x[1] : x in Roots(DefiningPolynomial(K), CC)];
    return [hom<K -> CC | r> : r in roots];
end function;

function Complexify(M)
    iota := ComplexEmbeddings(BaseRing(M))[1];
    return ChangeRing(M, iota);
end function;

function myalgdep(a, d : D := 10^6)
    aa_real := [Floor(Real(D*a^i)) : i in [0..d]];
    aa_im := [Floor(Im(D*a^i)) : i in [0..d]];
    A := IdentityMatrix(Integers(), d+1);
    B := Transpose(Matrix(Integers(), 2, d+1, [aa_real, aa_im]));
    A := HorizontalJoin(A, B);
    L := LLL(A);
    v := Eltseq(L[1]);
    _<x> := PolynomialRing(Integers());
    return &+[v[i+1]*x^i : i in [0..d]];
end function;

// It seems to work when taking D := 10^d, and prec := 1000 so far
function num_approx(a,K : D := 10^6)
    d := Degree(K);
    // D := 10^d;
    zeta := Roots(DefiningPolynomial(K), K)[1][1];
    CC := ComplexField();
    zeta_C := Roots(DefiningPolynomial(K), CC)[1][1];
    aa_real := [Floor(Real(D*a))] cat [Floor(Real(D*zeta_C^i))
				       : i in [0..d-1]];
    aa_im := [Floor(Im(D*a))] cat [Floor(Im(D*zeta_C^i))
				     : i in [0..d-1]];
    B := Transpose(Matrix(Integers(), 2, d+1, [aa_real, aa_im]));
    A := IdentityMatrix(Integers(), d+1);
    A := HorizontalJoin(A, B);
    L := LLL(A);
    v := Eltseq(L[1])[1..d+1];
    t := &+[v[i+2]*zeta^i : i in [0..d-1]];
    t_C := &+[v[i+2]*zeta_C^i : i in [0..d-1]];
    if v[1] eq 0 then
	error Sprintf("bound %o is not large enough. Should be larger than %o!", D, a);
    end if;
    eps := a + t_C / v[1];
    a_K := -t / v[1];
    return a_K, Norm(eps);
end function;

function IsCompatibleChar(M1, M2)
    eps1 := DirichletCharacter(M1);x\
    eps2 := DirichletCharacter(M2);
    return
	IsCoercible(Parent(eps1), eps2) and (Parent(eps1)!eps2 eq eps1); 
end function;

function GetFsVecs(N, prec)
    M0 := ModularSymbols(CongruenceSubgroup(N));
    S0 := CuspidalSubspace(M0);
    D0 := NewformDecomposition(S0);
    pi := [*PeriodMapping(d, prec) : d in D0*];
    ms := MultiSpaces(M0);
    quots := MultiQuotientMaps(M0);
    fs_vecs := [];
    for d in [1..#D0] do
	M_old := Domain(pi[d]);
	if (M_old ne M0) then
	    assert exists(i){i : i in [1..#ms] | IsCompatibleChar(ms[i],M_old)};
	    M_new := ms[i];
	    divs := Divisors(Level(M_new) div Level(M_old));
	    dmaps := [DegeneracyMap(M_new, M_old, d) : d in divs];
	    fs_vecs cat:= &cat[[Vector([pi[d](dmap(quots[i](b)))[r]
				     : b in Basis(M0)])
			     : r in [1..Dimension(Codomain(pi[d]))]]
			    : dmap in dmaps];
	else
	    fs_vecs cat:= [Vector([pi[d](b)[r] : b in Basis(M0)])
			: r in [1..Dimension(Codomain(pi[d]))]];
	end if;
    end for;
    return fs_vecs;
end function;

// Here we assume K is totally imaginary.
// In all applications K will be a cyclotomic field
function NumericalApproximate(M, f_vec, K, pi, j :  denom := 1)
    C := ComplexField();
    i := C.1;
    d := Degree(K);
    assert Type(K) eq FldCyc;
    O_K := Integers(K);
    B := Basis(O_K);
    L, psi := MinkowskiLattice(O_K);
    pivot := 1;
    while IsZero(f_vec[pivot]) do
	pivot +:= 1;
    end while;
    psi_f := psi(denom*f_vec[pivot]);
    f_embs := [(psi_f[2*m-1] + i*psi_f[2*m]) / Sqrt(2) : m in [1..d div 2]];
    c_embs := [f_emb / pi(Basis(M)[pivot])[j] : f_emb in f_embs];
    c_vec := Sqrt(2) * Vector(&cat[[Real(c_emb), Im(c_emb)] :
				   c_emb in c_embs ]);
    vecs_L := ClosestVectors(L, c_vec);
    vec_L := vecs_L[1];
    coords := Coordinates(vec_L);
    scalar := &+[coords[i] * B[i] : i in [1..d]] / denom;
    // Check that the scalars works
    psi_f_all := [psi(denom*f_vec[m]) : m in [1..Degree(f_vec)]];
    f_embs_all := [[(psi_f_all[l][2*m-1] + i*psi_f_all[l][2*m]) / Sqrt(2) :
		    m in [1..d div 2]] : l in [1..Degree(f_vec)]];
    scalar_in_C := [(vec_L[2*m-1] + i*vec_L[2*m]) / Sqrt(2) :
		    m in [1..d div 2]];
    diffs := [f_embs_all[l][m] - scalar_in_C[m]*pi(Basis(M)[l])[j] :
	      l in [1..Degree(f_vec)], m in [1.. d div 2]];
    return K!scalar;
end function;

// This should return the vectors in Gamma(N) corresponding to the
// q-expansions
function qExpansionsAndVecs(N, prec)
    mat, eig_basis, qexpansions := find_xi(N, prec);
    K := BaseRing(mat);
    eig_basis := [ChangeRing(e, K) : e in eig_basis];
    fs_0 := mat^(-1) * Matrix(eig_basis);
    M := ModularSymbols(my_Gamma(N, "full"), 2, Rationals(), 0);
    S := CuspidalSubspace(M);
    g := Dimension(S) div 2;
    fs := [fs_0[i] + fs_0[i + g] : i in [1..g]];
    D := NewformDecomposition(S);
    scalars := [];
    dims := [Dimension(d) div 2 : d in D];
    dim_sum := [&+dims[1..i] : i in [0..#D]];
    for i in [1..#D] do
	pi := PeriodMapping(D[i], qexpansions[dim_sum[i]+1..dim_sum[i+1]],
			      prec, 2);
	for j in [1..dims[i]] do
	    scalar := NumericalApproximate(M, fs[dim_sum[i]+j], K, pi, j
					    :  denom := N);
	    Append(~scalars, scalar);
	end for;
    end for;
    scaled_fs := [scalars[i]^(-1)*fs[i] : i in [1..g]];
    return scaled_fs, qexpansions;
end function;

// This should give qExpansions for H if the previous function works correctly
function qExpansions(H, prec)
    N := Level(H);
    G := GL(2,Integers(N));
    M := ModularSymbols(PSL2Subgroup(sub<G|[-1,0,0,-1]>),2, Rationals(),0);
    S := CuspidalSubspace(M);
    g := Dimension(S) div 2;
    // Computing degeneracy map
    M_H := ModularSymbols(H, 2, Rationals(), 0);
    beta := DegeneracyMatrix(M, M_H, GL(2, Rationals())!1);
    S_H := CuspidalSubspace(M_H);
    oldsub := DualVectorSpace(S_H) * Transpose(beta);
    fs, qexpansions := qExpansionsAndVecs(N, prec);
    K := BaseRing(Universe(fs));
    hol_subspace := sub<Universe(fs) | fs>;
    old_hol := ChangeRing(oldsub,K) meet hol_subspace;
    qexps := [];
    for vec in Basis(old_hol) do
	/*
	v := Solution(Matrix(eig_basis), vec) * mat;
	vec_qexp := &+[v[i]*(PowerSeriesRing(K)!qexpansions[(i-1) mod g + 1]) :
		       i in [1..2*g]];
       */
	v := Solution(Matrix(fs), vec);
	vec_qexp := &+[v[i]*(PowerSeriesRing(K)!qexpansions[i]) : i in [1..g]];
	Append(~qexps, vec_qexp);
    end for;
    return qexps;
end function;
