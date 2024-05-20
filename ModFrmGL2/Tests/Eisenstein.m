function GetAllCycHom(F, K)
  assert Type(F) in [FldCyc, FldRat];
  assert Type(K) in [FldCyc, FldRat];
  if Type(F) eq FldRat then
    ret := [hom<F->K | >];
  else
    cond_K := Conductor(K);
    cond_F := Conductor(F);
    K_cyc := CyclotomicField(cond_K);
    F_cyc := CyclotomicField(cond_F);
    is_K_cyc, phi_K := IsIsomorphic(K, K_cyc);
    is_F_cyc, phi_F := IsIsomorphic(F, F_cyc);
    assert is_F_cyc and is_K_cyc;
    ret := [hom<F_cyc->K_cyc | K_cyc.1^((cond_K div cond_F)*j)>
	     : j in [0..cond_F-1] | GCD(j,cond_F) eq 1];
    ret := [phi_F*h*((phi_K)^(-1)): h in ret];
  end if;
  return ret;
end function;

procedure Test_Eisenstein_Single(N,k : prec := 100, gamma_type:=0)
  printf "(%o, %o, %o) ", N, k, gamma_type;
//    tt := Cputime();
    assert gamma_type in [0,1];
    G := (gamma_type eq 0) select Gamma0(N) else Gamma1(N);
    E_orig := EisensteinSeries(ModularForms(G,k));
    E := EisensteinSeries(ModularForms(FakeGamma(N,gamma_type),k));
// assert #E eq Dimension(EisensteinSubspace(ModularForms(G,k)));
    assert #E eq #E_orig;
    if #E ne 0 then
        f_orig := [PowerSeries(e, prec) : e in E_orig];
	_<q> := Parent(f_orig[1]);
	f := [PowerSeries(e, prec*N) : e in E];
	f_vecs := [Vector(AbsEltseq(x)) : x in f];
	f_orig_vecs := [Vector(AbsEltseq(Evaluate(f,q^N))) : f in f_orig];

        // This is not good enough, as we might need a different embedding
        /*
        cond := LCM([Conductor(BaseRing(Universe(fs)))
			: fs in [f_vecs, f_orig_vecs]]);
        K := CyclotomicField(cond);
        
        assert &and[IsSubfield(BaseRing(Universe(fs)), K)
		    : fs in [f_vecs, f_orig_vecs]];
        _ := Solution(ChangeRing(Matrix(f_vecs), K),
		      ChangeRing(Matrix(f_orig_vecs),K));
	*/
        // The fields
        Fs := [* BaseRing(Universe(fs)) : fs in [*f_vecs, f_orig_vecs*] *];
        // They should be cyclotomic fields
        assert &and[Type(F) in [FldCyc,FldRat] : F in Fs];
        conds := [Conductor(F) : F in Fs];
        cond := LCM(conds);
        K := CyclotomicField(cond);
        embs := [GetAllCycHom(F,K) : F in Fs];
        for hs in CartesianProduct(embs) do
	  M := ChangeRing(Matrix(f_vecs), hs[1]);
          M_orig := ChangeRing(Matrix(f_orig_vecs), hs[2]);
/*
          submats := [Submatrix(mat, [1..#E], [1+N*j : j in [0..#E-1]])
	       : mat in [M, M_orig]];
          if submats[1]*submats[2]^(-1)*M_orig eq M then
*/
          if EchelonForm(M) eq EchelonForm(M_orig) then
	    // Cputime(tt);
	    return;
          end if;
	end for;
        // If we are here no pair of embeddings worked!
        assert false;
    end if;
//   Cputime(tt);
end procedure;

procedure Test_Eisenstein(numcheck : maxN := 15, maxk := 6)
    printf "Testing creation of Eisenstein series... (N,k,gamma) = ";
    for i in [1..numcheck] do
	N      := Random([1..maxN]);
	k      := Random([2..maxk]);
	Test_Eisenstein_Single(N,k);
        Test_Eisenstein_Single(N,k : gamma_type := 1);
    end for;
end procedure;

Test_Eisenstein(5);
