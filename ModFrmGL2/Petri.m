// This assumes we are in the situation g = 10

intrinsic FindSchreyerSurface(X::Crv) -> Srfc
{Given a curve of genus 10, with beta_{2,4} = 27 (graded Betti number indexed (2,4)), Returns the exceptional surface X lies on, using Schereyer's method.}
    // g := 10;
    g := Genus(X);
    assert g eq 10;

    F := GF(101); // auxiliary for now
    X_F := ChangeRing(X, F);
    I_F := Ideal(X_F);

    P := Points(X_F)[1..g];

    // making sure the points are in a general linear position
    assert IsInvertible(Matrix([Eltseq(p) : p in P]));
    R_F<[x_F]> := CoordinateRing(AmbientSpace(X_F));
    x_lin := ChangeRing(Matrix([Eltseq(p) : p in P])^(-1), R_F);
    x_map := map<X_F -> AmbientSpace(X_F) | Eltseq(Vector(x_F)*x_lin)>;

    dom := Domain(AlgebraMap(x_map));
    xx := [AlgebraMap(x_map)(dom.i) : i in [1..g]];
                                 
    basis_elems := [xx[s]*xx[g-1] : s in [1..g-2]];
    basis_elems cat:= [xx[s]*xx[g] : s in [1..g-2]];  
    basis_elems cat:= [xx[g-1]^2, xx[g-1]*xx[g], xx[g]^2];

    mons2 := MonomialsOfDegree(CoordinateRing(AmbientSpace(X_F)),2);

    vecs := [];
    for b in basis_elems do
	coeffs, mons := CoefficientsAndMonomials(b);
	v := [mon in mons select coeffs[Index(mons, mon)] else 0 : mon in mons2]; 
	Append(~vecs, v);
    end for;
    basis_mat := Matrix(vecs);
    
    I_vecs := [];
    for b in Basis(I_F) do
	coeffs, mons := CoefficientsAndMonomials(b);
	v := [mon in mons select coeffs[Index(mons, mon)] else 0 : mon in mons2]; 
	Append(~I_vecs, v);
    end for;
    I_mat := Matrix(I_vecs);
    ext_mat := Matrix(vecs cat I_vecs);

    f := AssociativeArray();
    for i in [1..g-3] do
	f[i] := AssociativeArray();
	for j in [i+1..g-2] do
	    coeffs, mons := CoefficientsAndMonomials(xx[i]*xx[j]);
	    v := [mon in mons select coeffs[Index(mons, mon)] else 0 : mon in mons2]; 
	    f[i][j] := Solution(ext_mat, Vector(v));
	end for;
    end for;
    
    a := AssociativeArray();
    for i in [1..g-3] do
	a[i] := AssociativeArray();
	for j in [i+1..g-2] do
	    a[i][j] := AssociativeArray();
	    for s in [1..g-2] do
		a[i][j][s] := f[i][j][s]*x_F[g-1] + f[i][j][s+g-2]*x_F[g];
	    end for;
	end for;
    end for;

    rho := AssociativeArray();
    for s in [1..g-2] do
	rho[s] := AssociativeArray();
	for i in [1..g-3] do
	    if i ne s then
		rho[s][i] := AssociativeArray();
		for j in [i+1..g-2] do
		    if j ne s then
			rho[s][i][j] := LeadingCoefficient(a[i][j][s]);
		    end if;
		end for;
	    end if;
	end for;
    end for;

    r_mat := Matrix([[rho[4][1][2], rho[4][1][3], rho[4][2][3]],[rho[5][1][2], rho[5][1][3], rho[5][2][3]], [rho[6][1][2], rho[6][1][3], rho[6][2][3]]]);

    r := Rank(r_mat);

    assert r eq 1;
    
    // verifying all minors vanish
    assert Set(Minors(r_mat, 2)) eq {0};

    J_dets := AssociativeArray();
    for i in [1..g-3] do
	J_dets[i] := AssociativeArray();
	for k in [i+1..g-2] do
	    J_dets[i][k] := AssociativeArray();
	    for j in [1..g-2] do
		if j notin [1,2,i,k] then
		    J_dets[i][k][j] := rho[j][1][2]*f[i][k] - rho[j][i][k]*f[1][2];
		end if;
	    end for;
	end for;
    end for;

    J_det_polys := AssociativeArray();      
    for i in [1..g-3] do
	J_det_polys[i] := AssociativeArray();
	for k in [i+1..g-2] do
	    J_det_polys[i][k] := AssociativeArray();
	    for j in [1..g-2] do
		if j notin [1,2,i,k] then
		    J_det_polys[i][k][j] := &+[J_dets[i][k][j][l+2*g-1]*Basis(I_F)[l]
					       : l in [1..#Basis(I_F)]];
		end if;
	    end for;
	end for;
    end for;
    
    // verifying that the J_det[i][k][n] are all linearly dependent
    num := [#{Factorization(J_det_polys[i][k][s]) : s in [3..g-2] | s notin [i,k]}
	    : i, k in [1..g-2] | i lt k and not ((i eq 1) and (k eq 2))];
    assert #Set(num) eq 1;
    assert #num eq ((g-2)*(g-3) div 2 - 1);

    J := Ideal([J_det_polys[i][k][s] : i,k,s in [1..g-2]
		| i lt k and s notin [1,2,i,k]]);

    assert J subset I_F;

    S := Surface(AmbientSpace(X_F), J);
    return S;
end function;
