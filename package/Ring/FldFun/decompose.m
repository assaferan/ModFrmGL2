freeze;

declare verbose RationalDecompose, 3;

/******************************************************************

 Last modified: 06/06/2017

 This algorithm works over finite fields, as well as over the rational
 numbers and number fields. If k is finite and there are not enough elements
 inside k to compute the partition, this algorithm extends the base field k.

 When char(k)=0, this algorithm reduces the equations of the system
 modulo a prime number and modulo the maximal ideal of some valuation ring, so
 that the computations to find the partitions are carried over a finite field.
 
 When max(deg(fi)) < 3, fi a factor of Phi_f, we use a method involving 
 gcd/resultants computations, based on the paper Landau & Miller (1985) 
 Solvability by Radicals is in Polynomial Time. This is an improvement
 over the linear-system method.

 The functions normalize, right, normalize_decomp and leftfactor were imple
 mented by Ayad and Fleischmann, as part of their rational function 
 decomposition algorithm. Their implementation can be viewed here
 https://www.kent.ac.uk/smsas/personal/pf10/calais/decomp and their
 algorithm is described in the paper Ayad and Fleischmann (2008) On
 the decomposition of rational functions. 

 This algorithm is described in the paper Functional Decomposition using
 Principal Subfields, Allem, Capaverde, van Hoeij and Szutkoski, 2017.


 To use this code, define the rational function. For instance:

    > k:=GF(3);
    > F<t>:=FunctionField(k);
    > f:=(t^10 + 2*t^8 + 2*t^4 + t^2)/(t^12 + 2*t^6 + 1);

 Then load this file:

    > load Decompose;

 Finally, compute a (single) complete decomposition:

    > Decomposition(f: All:=false);

 The output, in this case, should be:

	[
        t^2,
        t/(t^2 + 1),
        (2*t^3 + t^2 + 2*t)/(t^3 + 2)
	]

 Which means that 

	f = (2*t^3+t^2+2*t)/(t^3+1) o t/(t^2+1) o t^2

 over k=GF(3) and each component is indecomposable. To compute all
 non-equivalent complete decompositions, simply type:

     > Decomposition(f);

 The output, in this case, should be

	[ [
	    t^2,
	    t/(t^2 + 1),
	    (2*t^3 + t^2 + 2*t)/(t^3 + 2)
	], [
	    t/(t^2 + 2),
	    t^2,
	    t/(t^3 + 1)
	], [
	    t/(t^2 + 1),
	    t^3 + 2*t,
	    t^2
	], [
	    t/(t^2 + 1),
	    t^2 + t,
	    t^3 + t^2
	], [
	    t/(t^2 + 1),
	    t^2 + 2*t,
	    t^3 + t^2
	], [
	    t/(t^2 + 1),
	    t^2,
	    t^3 + t^2 + t
	] ] 

********************************************************************/





forward mods, AllSubf, leftfactor, right, normalize, LurothGen, normalize_decomp, RationalDecompose;



intrinsic Decomposition(T::RngUPolElt: All:=true)->RngUPolElt
	{Returns all complete decompositions of the polynomial T}
	K:=Parent(T);
	k:=BaseRing(K);
	require Type(k) in {FldFin, FldRat, RngInt, FldNum, FldOrd, FldCyc, FldQuad, RngOrd, RngQuad, RngCyc} : "Rational function must be over a finite field, rational field or number field"; 
	all_decomps:=All;
	return RationalDecompose(T:All:=all_decomps);
end intrinsic;



intrinsic Decomposition(T::FldFunRatUElt: All:=true)->FldFunRatUElt
	{Returns all complete decompositions of the rational function T}
	K:=Parent(T);
	k:=BaseRing(K);
	require Type(k) in {FldFin, FldRat, RngInt, FldNum, FldOrd, FldCyc, FldQuad, RngOrd, RngQuad, RngCyc} : "Rational function must be over a finite field, rational field or number field"; 
	all_decomps:=All;
	return RationalDecompose(T:All:=all_decomps);
end intrinsic;



RationalDecompose:=function(T: All:=true)
	// Input  : Rational Function T in k(t).
	// Output : All non-equivalent complete decompositions of T.

	K_ini:=Parent(T);
	k:=BaseRing(K_ini);
	char:=Characteristic(k);

	// Fields with less than small_fin_field elements are considered
	// small, so we extend the base field to compute the partitions.
	// See Remark 5 on Function Decompositions with Principal Subfields.

	small_fin_field:=46327;
	if char gt 0 then
		if IsFinite(k) then d:=#k; else d:=#BaseField(k); end if;
		if d lt small_fin_field then 
			new_k:=true;
			exp:=Floor(Log(d, small_fin_field));
			if IsFinite(k) then
				K, h:=ext<k|exp>;
			else
				K,h:=ext<BaseField(k)|exp>;
				K:=FunctionField(K);
			end if;
			K_new:=K;
			vprint RationalDecompose,3: "New base field     :", K;
		else
			K:=k;
			new_k:=false;
			h:=1;
			K_new:=K;
		end if;
	else 
		new_k:=false; 
		K:=k; 
		h:=1;
		K_new:=K;
	end if;

	F:=FunctionField(k);
	P:=PolynomialRing(F);
	P2:=PolynomialRing(k);
	H2x:=hom<F->P2|P2.1>;
	PP:=PolynomialRing(Integers());
	Hx:=hom<F->P|P.1>;
	P2var:=PolynomialRing(k,2);

	t_ini:=Cputime();

	fn:=Numerator(T);
	fd:=Denominator(T);
	fnx:=Hx(fn);
	fdx:=Hx(fd);

	f:=(F!fn)/(F!fd);
	d:=Degree(f);

	MonicMinPol:=function(Gn, Gd, B)
		//  Input: Rational Function g in k(t)
		// output: The minimal polynomial of the extension k(t)/k(g(t))
		gnx:=Hx(Gn);
		gdx:=Hx(Gd);
		if Degree(gnx) gt Degree(gdx) then
			phi1:=gnx-(Gn/Gd)*gdx;
			phi2:=Evaluate(Gn,P2var.1)*Evaluate(Gd,P2var.2)-Evaluate(Gn,P2var.2)*Evaluate(Gd,P2var.1);
			return (Gn/Gd),phi1, phi2, IdentityMatrix(K,2)*B;
		elif Degree(gdx) gt Degree(gnx) then
			phi1:=gdx-(Gd/Gn)*gnx;
			phi2:=Evaluate(Gd,P2var.1)*Evaluate(Gn,P2var.2)-Evaluate(Gd,P2var.2)*Evaluate(Gn,P2var.1);
			return (Gd/Gn), phi1,phi2, Matrix(K,[[0,1],[1,0]])*B;
		else
			gn, gd, A:=normalize(Gn/Gd, k);
			return $$(gn, gd, A*B);
		end if;
	end function;

	// If char gt 0 and Derivative(Phi_f) eq 0 then f can be decompose as
	// f = \tilde(f) o x^(p^k), where p is the characteristic of the field
	// and k is some positive integer.

	if char gt 0 then
		count:=0;
		while Derivative(fnx) eq 0 and Derivative(fdx) eq 0 do
			count+:=1;
			cn:=Eltseq(fnx); fnx:=P![cn[char*(i)+1] : i in [0..Degree(fnx)/char]];
			cd:=Eltseq(fdx); fdx:=P![cd[char*(i)+1] : i in [0..Degree(fdx)/char]];
		end while;
		if count gt 0 then 
			vprintf RationalDecompose, 0: "Warning: The extension defined by %o is not separable.\n", f;
			vprintf RationalDecompose, 0: "This means that %o is of the form g o %o^%o, where g=%o.\n", f,K_ini.1,char^count, Evaluate(fnx,K_ini.1)/Evaluate(fdx,K_ini.1);
			vprintf RationalDecompose, 0: "We shall only compute the decompositions of g.\n";
		end if;
	end if;

	f, Phi_f, Phi2_f, A:=MonicMinPol(Evaluate(fnx,F.1), Evaluate(fdx,F.1), IdentityMatrix(k,2));
	fd:=Denominator(f); 
	fn:=Numerator(f);
	vprint RationalDecompose, 2: "Minimal Polynomial:\n", Phi_f;

	de_norm:=function(g,A)
		return K_ini!((K_ini!A[1][1]*K_ini!g+K_ini!A[1][2])/(K_ini!A[2][1]*K_ini!g+K_ini!A[2][2]));
	end function;
    
	if Degree(f) le 1 then
		 return [[de_norm(K_ini!f,A^-1)]]; 
	end if;
    
	vprint RationalDecompose, 1: "Factoring Minimal Polynomial...";
 	vtime RationalDecompose, 1: Fact_xt:=Factorization(Phi_f); 
	r:=#Fact_xt;
	if r le 2 then 
		 return [[de_norm(K_ini!f,A^-1)]]; 
	end if;
    
	Fact_xt:=[i[1]: i in Fact_xt];
	for i:=1 to r do
		if Fact_xt[i] eq P.1-F.1 then
			Fact_xt[i]:=Fact_xt[1];
			Fact_xt[1]:=P.1-F.1;
			break i;
		end if;
	end for;

        vprint RationalDecompose, 2: "Number of Factors: ", r;
        vprint RationalDecompose, 3: "Factorization: \n", Fact_xt;

	Fact_xy:=[];
	if Maximum([Degree(fi): fi in Fact_xt]) lt 3 and char gt 0 then
		for i:=1 to r do
			d:=LCM([Denominator(c): c in Coefficients(Fact_xt[i])]);
			fi:=d*Fact_xt[i];
			cy:=[MultivariatePolynomial(P2var,H2x(c),P2var.2): c in Coefficients(fi)];
			fi:=&+[P2var.1^j*cy[j+1]: j in [0..#cy-1]];
		Append(~Fact_xy, fi);
		end for;
	end if;

   MyPartitions:=function(Fact)
        // Input:  The factorization Fact of the minimal polynomial Phi_f
        //         of the extension k(t)/k(f(t)).
        // Output: The partitions P1,...,Pr of the principal subfields of this extension.

        if char eq 0 and Degree(k) eq 1 then
            K:=GF(NextPrime(10000));
        else
            K:=K_new;
        end if;

        F:=FunctionField(K);
        P:=PolynomialRing(F);
        P2:=PolynomialRing(K);
        H2x:=hom<F->P2|P2.1>;
        Hx:=hom<F->P|P.1>;
        PP:=PolynomialRing(Integers());
        Hx:=hom<F->P|P.1>;
        P2var:=PolynomialRing(k,2);

        Fact_mod_p:=ChangeUniverse(Fact_xt, P);


        if char gt 0 and IsFinite(k) then
            p:=char; q:=#k;
        elif char gt 0 and not IsFinite(k) then
            p:=char; q:=p;
        else
            p:=NextPrime(23); q:=p;
        end if;

        // Choosing a good k(t)-ideal:
        t_ideal:=Cputime();
        Deg:=[Degree(fi): fi in Fact_xt];

        if (not Maximum(Deg) lt 3) or (char eq 0) then
            Px:=PolynomialRing(K);
            count:=0;
            flag:=false;
            Deg:=1;
            poly_tries:=[];
            // if char gt 0 then Deg:=NextPrime(Ceiling(Log(2*d^2-d)/Log(#k))); Deg:=2; end if;
            repeat
                count+:=1;
                if char gt 0 and count gt 15*Deg+5 then
                    // increases the degree of the poly defining the ideal
                    count:=1;
                    Deg:=Deg+1;
                end if;
                //ideal_poly:=Px!PP!RandomIrreduciblePolynomial(GF(p),Deg);
                ideal_poly:=Px.1^Deg+&+[Random([1..p])*Px.1^i: i in [0..Deg-1]];
                if not ideal_poly in poly_tries then
                    Append(~poly_tries, ideal_poly);
                else
                    continue;
                end if;
                if not IsIrreducible(ideal_poly) then continue; end if;
                if Degree(ideal_poly) ne 1 then
                        //FF:=ExtensionField<K, alpha|ideal_poly>;
                        FF:=ext<K|ideal_poly>;
                        FFx:=PolynomialRing(FF);
                        //alpha2:=&+[Random(k)*FF.1^i: i in [0..2]];
                        alpha2:=FF.1;
                        halpha:=hom<F->FF|alpha2>;
                        halpha2:=hom<FF->Px|Px.1>;
                else
                        FF:=K;
                        FFx:=PolynomialRing(FF);
                        alpha2:=FF!Evaluate(PP.1-ideal_poly,0)	;
                        halpha:=hom<F->FF|FF!(Evaluate(PP.1-ideal_poly,0))>;
                        halpha2:=hom<FFx->FFx| Px.1>;
                end if;

                fd_red:=halpha(fd);
                if fd_red eq 0 then continue; end if;
                fn_red:=halpha(fn);
                if fn_red eq 0 then continue; end if;

                if Deg ne 1 and fn_red/fd_red in k then continue; end if;
                Phi_f_mod_I:=FFx![halpha(F!cc): cc in Coefficients(Phi_f)];;
                // it seems faster to compute the gcd of phi and phi' to
                // determine if phi is separable then using the built-in
                // function IsSeparable(phi);
                g:=GCD(Phi_f_mod_I, Derivative(Phi_f_mod_I));
                    
                if Degree(g) ne 0 then flag:=false; else flag:=true; end if;
            until flag;

            assert(flag eq true);
            ideal_poly_r:=PolynomialRing(Integers())!Eltseq(ideal_poly);
           //vprint RationalDecompose, 2: "Degree of Polynomial Ideal: ", Degree(ideal_poly);
            vprint RationalDecompose, 3: "Polynomial Ideal:\n", ideal_poly;
        end if;



        Poly:=function(Fact, computed_c)
            // input:   The factorization of Phi_f.
            //          computed_c: set of elements c in K already used.
            // output:  The polynomials \tilde{Q}_jc=P_jc(x)-h_jc(t)*L_c(x), j=1..r, used to compute
            //          the systems \tilde{S}_i, i=1..r;

            r:=#Fact;
            flag:=true;
            Cs:=computed_c;
            repeat
                flag:=false;
                try
                    // Choose element c inside K:
                    not_already_tried:=false;
                    repeat
                    if char eq 0 then
                            c:=#Cs;
                            if not c in Cs then not_already_tried:=true; Append(~Cs, c); end if;
                    else
                          if IsFinite(K) then c:=Random(K); else c:=Random(BaseField(K)); end if;
                          if not c in Cs then not_already_tried:=true; Append(~Cs, c); end if;
                    end if;
                    until not_already_tried;

                    h_jc:=func<|[Evaluate(Derivative(Fact[i]),c)/Evaluate(Fact[i], c): i in [1..r]]>();

                    // compute modulo good ideal
                    h_jc_hat:=[halpha(F!h_jc[i]): i in [1..r]];

                    // If the algorithm reached this point it means that the elements in h_jc_hat are in O_p
                    flag:=true;
                catch e
                    flag:=false;
                end try;
            until flag;

            assert(flag);

            Nj:=[P2!Eltseq(Numerator(h_jc[i])): i in [1..r]];
            Dj:=[P2!Eltseq(Denominator(h_jc[i])): i in [1..r]];

            L_c:=LCM(Dj);
            P_jc:=[P2!(L_c/Dj[i])*Nj[i]: i in [1..r]];

            H1:=[(FFx![FF!c: c in Coefficients(P_jc[i])]): i in [1..r]];
            H2:=FFx!(L_c);

            Q_jc:=[(H1[i]-H2*h_jc_hat[i]): i in [1..r]];

        return [*Q_jc, Cs*];
        end function;



        System:=function(Q_jc, ind, F_ind_hat)
            // Input:   index ind.
            //          Polynomial Q_jc used to construct the system S_ind.
            //          The image F_ind_hat of F_ind modulo a good ideal P.
            // Output:  A system S_ind which (probably) gives us the partition P_ind.

            R_jc:=[(Q_jc[j] mod F_ind_hat): j in [1..r]];
            // Take coefficients in x
            di:=Degree(F_ind_hat);
            if not di eq 1 then 
                Rest:=[[Coefficient(R_jc[j],i): j in [1..r]]: i in [0..di-1]];
            else
                Rest:=[R_jc];
            end if;

            Si:={ };
            for rest in Rest do
                Q_hat:=[rest[l]: l in [1..r]];
                if Degree(ideal_poly) ne 1 then
                    coefsx:=[halpha2(l): l in Q_hat];
                    max_deg,_:=Max([Degree(coefsx[l]): l in [1..#Q_hat]]);
                    M:={[Coefficient(coefsx[l],s): l in [1..#Q_hat] ] : s in [0..max_deg]};
                else
                    M:={[Q_hat[l]: l in [1..#Q_hat] ]};
                end if;
                if M eq {} then continue; end if;
                Si:=Si join M;
            end for;
        return Si;
        end function;



        Check_sol:=function(Fact2, Sol, ind, alpha2)
            // Input:   Basis of solutions of a system of squations.
            // output:  The partitions P_ind of the principal subfields L_ind
            // 	        or false.

            vi:=[1: i in [1..r]];
            // Sol represents base field.
            if Nrows(Sol) eq 1 and &+[mods(Sol[1][j],p,q): j in [1..r]] eq r then 
                return [*vi,f*];
            end if;

            if char gt 0 then 
                kk:=k;
            else
                kk:=K;
            end if;

            F:=FunctionField(kk);
            P:=PolynomialRing(F);
            P2:=PolynomialRing(kk);
            H2x:=hom<F->P2|P2.1>;
            Hx:=hom<F->P|P.1>;

            Fact:=ChangeUniverse(Fact2,P);

            if Degree(ideal_poly) ne 1 then
                FF:=ext<kk|ideal_poly>;
                FFx:=PolynomialRing(FF);
                halpha:=hom<F->FF|&+[FF.1^(i-1)*kk!Eltseq(alpha2)[i]: i in [1..Degree(ideal_poly)]]>;
            else
                FF:=kk;
                FFx:=PolynomialRing(FF);
                Pr:=Parent(ideal_poly_r);
                halpha:=hom<F->FF|FF!(Evaluate(Pr.1-ideal_poly_r,0))>;
            end if;

            // The following checks if the solution is a 0-1 echelon basis and builds the
            // partition.


            t_ver_modp:=Cputime();

            for i:=1 to Nrows(Sol) do
                b:={j: j in [1..r] | Sol[i][j] ne 0};
                B:={Sol[i][j]: j in b};
                if #B ne 1 then
			vprint RationalDecompose, 3: "Solution is not in 0,1-echelon form.\n";
			return false; 
		end if;
                s:=Setseq(B)[1];
                if s eq 1 then
                    for j in b do vi[j]:=Minimum(b); end for;
                    continue i;
                elif s eq -1 then
                    for j:=1 to Ncols(Sol) do Sol[i][j]:=-Sol[i][j]; end for;
                    for j in b do vi[j]:=Minimum(b); end for;
                    continue i;
                else
      			vprint RationalDecompose, 3: "Solution is not in 0,1-echelon form.\n";
		        return false;
                end if;
            end for;

            for i:=1 to Ncols(Sol) do
                s:={*Sol[j][i]: j in [1..Nrows(Sol)] | Sol[j][i] eq 1*};
                if #s ne 1 then
			vprint RationalDecompose, 3: "Solution is not in 0,1-echelon form.\n";
			return false; 
		end if;
            end for;

            a:=&+[&+[mods(Sol[i][j], p,q): i in [1..Nrows(Sol)]]: j in [1..Ncols(Sol)]];
            if a ne Ncols(Sol) then
			vprint RationalDecompose, 3: "Solution is not in 0,1-echelon form.\n";
			return false; 
	    end if;

            Fi_hat:=FFx![halpha(ci): ci in Coefficients(Fact[ind])];

            // This check uses the factorization reduced mod p
            nr:=Nrows(Sol);

            for i:=1 to nr do
                if nr eq 1 then 
                    gener_n:=Numerator(f); gener_d:=Denominator(f);
                    break i;
                end if;
                S:={s : s in [1..Ncols(Sol)] | Abs(Integers()!mods(Sol[i,s],p,q)) eq 1};
                g:=&*[Fact[j]: j in S];
                g:= g/LeadingCoefficient(g);
                C:=Coefficients(g);
                for c in C do
                    if Degree(c) eq 0 then continue; end if;
                    if 1 in S and not assigned(gener_n) and char gt 0 then
                        // We get a Luroth generator of L_ind for free!
                        if #S eq 1 then 
                            gener_n:=F.1; gener_d:=1; 
                        else
                            gener_n:=Numerator(c); gener_d:=Denominator(c); 
                        end if;
                    end if;
                    cn:=Numerator(c);
                    cd:=Denominator(c);
                    anx:=FFx!Eltseq(cn);
                    ca:=halpha(c);
                    adx:=FFx!Eltseq(cd);
                    a:=((anx-ca*adx))mod Fi_hat;
                    if not a eq 0 then
			vprint RationalDecompose, 3: " Refinement of the correct partition found.\n";
                        return false;
                    end if;
                end for;
            end for;
            t_ver_modp:=Cputime(t_ver_modp);

            if  assigned(gener_n) then
                A:=[*vi, gener_n/gener_d*];
            else
                A:=[*vi, 0*];
            end if;
        return A;
        end function;

        t_total:=Cputime();
        Fi_hat:=[FFx![halpha(ci): ci in Coefficients(Fact[index])]: index in [1..r]];
        all_part:=false;
        partitions:=[*[*[0],0*]: i in [1..r]*];
        partitions[1]:=[*[i: i in [1..r]],F.1*];
        count:=0;
        part:={i: i in [2..r]};
        Sys:=[*{}: i in [1..r]*];

        t_poly_t:=0;
        t_sys:=0;
        t_sol:=0;
        t_check:=0;
        c_check:=0;
        computed_c:=[];
        repeat
            tt:=Cputime();
            A1:=Poly(Fact_mod_p, computed_c);
            poly:=A1[1]; computed_c:=A1[2];
            t_poly_t+:=Cputime(tt);
            count+:=1;
            for j in part do
		vprintf RationalDecompose, 3: "Computing Partition %o.\n", j;
                ind:=j;
                tt:=Cputime();
                Sys2:=System(poly, ind, Fi_hat[ind]);
                t_sys+:=Cputime(tt);

                tt:=Cputime();
                Sys[ind]:=Sys[ind] join Sys2;
                M:=Transpose(Matrix(K,SetToSequence(Sys[ind])));
                Sol:=NullspaceMatrix(M);
                t_sol+:=Cputime(tt);

                tt:=Cputime();
                s:=Check_sol(Fact_mod_p,Sol, ind, alpha2);
                c_check+:=1;
                t_check+:=Cputime(tt);

                if not s cmpeq false then
		    vprintf RationalDecompose, 3: " Partition %o computed.\n", j;
                    partitions[ind][2]:=s[2];
                    partitions[ind][1]:=s[1];
                    Exclude(~part,j);
                end if;
            end for;
        until part eq {};

        //vprint RationalDecompose, 3: "Time Polynomials       :   ",  t_poly_t;
        //vprint RationalDecompose, 3: "Time System            :   ",  t_sys;
        //vprint RationalDecompose, 3: "Time to Solve Syst.    :   ",  t_sol;
        //vprint RationalDecompose, 3: "Time to Check Sol.     :   ",  t_check;
        vprint RationalDecompose, 3: "Number of check calls: ", c_check; 
        vprint RationalDecompose, 3: "Number of points needed: ", #computed_c; 
        
        
    return partitions;
    end function;


    // The following 2 functions are used for the resultants method.
    Orbit:=function(v,O,I);
        A:={a: a in v[I]};
        orb:=A join {I};
        orb:=orb join O;
        for a in A do
            s1:={j: j in v[a]};
            while not s1 subset orb do
                for j in s1 diff orb do
                    s:=$$(v,orb, j);
                    orb:=orb join s;
                    if #orb eq #v then return orb; end if;
                end for;
            end while;
        end for;
        return orb;
    end function;

    PartVec:=function(v)
        s:={i: i in [1..#v]};
        pi:=[i: i in [1..#v]];
        Orbits:=[* *];
        while s ne {} do
            m:=1;
            delete m;
            si:=Minimum(Setseq(s));
            s:=s diff {si};
            Oi:=Orbit(v,{},si);
            s := s diff Oi;
            if si eq 1 then 
                for j in Oi do
                    pi[j]:=1;
                end for;
                Append(~Orbits, [*Oi,1*]);
                continue;
            end if;
            for i:=1 to #Orbits do
                if Oi meet Orbits[i][1] ne {} then
                    if not assigned(m) then 
                        m:=Orbits[i][2]; 
                        for j in Oi join Orbits[i][1] do pi[j]:=m; end for;
                        Append(~Orbits, [*Oi,m*]);
                    else
                        for j in Orbits[i][1] do pi[j]:=m; end for;
                        Orbits[i][2]:=m;
                    end if;
                end if;
            end for;

            if not assigned(m) then
                m:=si;
                for j in Oi do pi[j]:=m; end for;
                Append(~Orbits, [*Oi,m*]);
            end if;
        end while;
        if #{i: i in pi} eq #pi then
            A:=[*pi, F.1*];
        elif #{i: i in pi} eq 1 then
            A:=[*pi,f*];
        else
            A:=[* pi,0*];
        end if;
    return A;
    end function;


	F:=FunctionField(k);
	P:=PolynomialRing(F);
	P2:=PolynomialRing(k);
	H2x:=hom<F->P2|P2.1>;
	PP:=PolynomialRing(Integers());
	Hx:=hom<F->P|P.1>;


    
////////////////////////////////// Computing Partitions ///////////////////////////////////////

	Partition_res:=function(Fact,ind)
		// This function computes the partitions using the resultant method.
		P2:=Parent(Fact[1]);
		P3:=PolynomialRing(k,3);
		H3_2:=hom<P3->P2|P2.1, P2.2,0>;
		R:=[H3_2(Resultant(hom<P2->P3|P3.3,P3.2>(Fact[ind]), hom<P2->P3|P3.1,P3.3>(Fact[k]), P3.3)): k in [1..#Fact]];
		pi:=[[]: s in [1..#Fact]];
		for i:=1 to #Fact do
	            fi:=Fact[i];
        	    for j:=1 to #Fact do
                	if IsDivisibleBy(R[j],fi) then
                    	pi[i]:=Append(pi[i], j);
                	end if;
        	    end for;
        	end for;
	return PartVec(pi);
	end function;



	t_part:=Cputime();
	Deg:=[Degree(fi): fi in Fact_xt];

        vprint RationalDecompose, 1: "Computing Partitions of Principal Subfields...";
	if Maximum(Deg) le 2 and char gt 0 then
		vprint RationalDecompose, 2: "--Using Resultants Method--";
		Parts:=[];
		vtime RationalDecompose, 1: for i:=1 to r do
			Append(~Parts, Partition_res(Fact_xy,i));
		end for;
 	else
        	vprint RationalDecompose, 2: "--Using Linear System Method--";
        	vtime RationalDecompose, 1: Parts:=MyPartitions(Fact_xt);
    	end if;

   	vprint RationalDecompose, 2: "Partitions:\n", Parts;




///////////////////////////////// Intersecting Subfields ////////////////////////////////////////

	vprint RationalDecompose, 1: "Computing all intersections of principal subfields...";
	vtime RationalDecompose, 1: Subf:=AllSubf(Parts);

	vprint RationalDecompose, 2: "Total Number of Subfields: ",#Subf;




////////////////// For each subfield, find a Luroth generator /////////////////////////////////

	Subf_list:=[{i:i in [1..r]| s[1][i] eq 1} : s in Subf];
	PSubf_list:=[{{i:i in [1..r]} | i : i in [1..r] | P[1][i] eq 1} : P in Parts];
	vprint RationalDecompose, 1: "Computing Luroth Generators...";
	vtime RationalDecompose, 1: for i:=1 to #Subf_list do
		if #Subf_list[i] eq 1 then Subf[i][2]:=F.1; continue i; end if;
		if #Subf_list[i] eq r then Subf[i][2]:=f; continue i; end if;
		s:=Position(PSubf_list, Subf_list[i]);
		if s ne 0 and Parts[s][2] ne 0 then
            // In this case, a luroth generator was already found when 
            // we ran the function check_sol.
			Subf[i][2]:=Parts[s][2];
			continue i; 
		end if;
		g:=&*[Fact_xt[k]: k in Subf_list[i]];
		G:=LurothGen(g,k);
		gn:=F!G[1]; gd:=F!G[2];
		Subf[i][2]:=gn/gd;
	end for; 
	vprint RationalDecompose, 3: "Subfields (Partition + Luroth Generator):\n", Subf;



////////////////////////////////// Computing Maximal Chains ///////////////////////////////////////	

	t_maxc:=Cputime();


	vprint RationalDecompose, 1: "Computig Maximal Chains of subfields...";
	S:=[{{i:i in [1..r]} | i : i in [1..r] | P[1][i] eq 1} : P in Subf];
	S:={s : s in S};

	max_c:=function(v, S)
		// Input:   Set of sets S and v, a subset of S.
		// Output:  The maximal chains of sets in S containing v.

		T2:={};
		I:=#v;
		while I le r  do
			I+:=1;
			T2:=T2 join {s : s in S | #s eq I and v subset s and {t : t in T2 | t subset s} eq {}};
		end while;
		if T2 eq {} then return [[v]]; end if;
		chains:=[];
		for s in T2 do
			if v subset s and v ne s then	
				S := S diff {s};
				a:=$$(s, S);
				for c in a do Append(~chains, [v] cat c); end for;	
			end if;
		end for;
		return chains;
	end function;

	Chains:=[];
	T:={};
	for i:=2 to r-1 do
		T:=T join {s : s in S | #s eq i and {t : t in T | t subset s} eq {}};
	end for;

	de_norm:=function(g,A)
		return K_ini!((K_ini!A[1][1]*K_ini!g+K_ini!A[1][2])/(K_ini!A[2][1]*K_ini!g+K_ini!A[2][2]));
	end function;


	// This piece of code returns only a single complete decomposition of f.
	if not All then
		T:=[t : t in T];
		if #T eq 0 then return [f]; end if;
		a:=max_c(T[1],S)[1];
		l:=#a;
		gen:=[];
		for j:=1 to l do
			s:=Position(Subf_list, a[j]);
			G:=Subf[s][2];
			Append(~gen, [F!Numerator(G), F!Denominator(G)]);
		end for;
		a:=gen;
		c1:=Evaluate(a[1][1],F.1)/Evaluate(a[1][2],F.1);
		dec:=[K_ini!c1 ];
        	vprint RationalDecompose, 1: "Computing left factors...";
		vtime RationalDecompose, 1: for j:=2 to #a do
			c1:=K_ini!leftfactor(a[j], a[j-1],k);
			Append(~dec, c1);
		end for;
        	vprint RationalDecompose, 1: "Normalizing decomposition...";
		vtime RationalDecompose, 1: dec:=normalize_decomp(dec,K_ini, k);
		dec[#dec]:=de_norm(dec[#dec],A^-1);
		return [dec];
	end if;

	for v in T do
		a:=max_c(v, S);
		for s in a do Append(~Chains,s); end for;
	end for;


	vprint RationalDecompose, 1: "Time:",Cputime(t_maxc);

	if #Chains eq 0 then
		vprintf RationalDecompose, 1: "No non-trivial subfields, means that %o is indecomposable.\n", de_norm(f,A^-1);
		return [[de_norm(K_ini!f,A^-1)]]; 
	end if;


	vprint RationalDecompose, 2: "Number of maximal Chains of subfields: ", #Chains;



    

///////////////////////// Writing Maximal chains with Luroth generators  /////////////////////////////

	chains:=[];
	for c in Chains do
		l:=#c;
		gen:=[];
		for j:=1 to l do
			s:=Position(Subf_list, c[j]);
			G:=Subf[s][2];
			Append(~gen, [Numerator(G), Denominator(G)]);
		end for;
		Append(~chains, gen);
	end for;	


    
//////////////////////// Computing Left Components  ///////////////////////////////////////

	dec_chains:=[];
    	vprint RationalDecompose, 1: "Computing left factors...";
	vtime RationalDecompose, 1: for c in chains do
		c1:=Evaluate(c[1][1],K_ini.1)/Evaluate(c[1][2],K_ini.1);
		dec:=[ K_ini!c1 ];
		for j:=2 to #c do
			c1:=K_ini!leftfactor(c[j], c[j-1],k);
			Append(~dec, c1);
		end for;
		Append(~dec_chains, dec);
	end for;

//////////////////////// Normalizing the decomposition chains ///////////////////////////////////////

	Norm_Decompositions:=[ ];
    	vprint RationalDecompose, 1: "Normalizing decompositions...";
	vtime RationalDecompose, 1: for d in dec_chains do
		norm_dec_chain:=normalize_decomp(d,K_ini,k);
		norm_dec_chain[#norm_dec_chain]:=de_norm(norm_dec_chain[#norm_dec_chain],A^-1);
		// The line above, if uncommented, "corrects" the output, so that it gives
		// the decomposition of the input rational function f and not normalize(f).
		Append(~Norm_Decompositions, norm_dec_chain);
	end for;    
    
    
    return Norm_Decompositions;
end function;




/////////////////////////////////////// Additional functions /////////////////////////////////////////////



mods:=function(a,p,q)
	if p eq 0 then return a; end if;
    	if p eq q then 
		a:=Integers()!a;
        	b:=Integers()!(a mod q);
		if b le Floor(q/2) then
			return b;
        	else 
			return (b-q);
		end if;
	else
		if a in GF(p) then return $$(a,p,p); end if;
		return a;
	end if;
end function;


normalize :=function(f,k)
	// This function was implemented by Mohamed Ayad and Peter Fleischmann
	// See "On the decomposition of rational functions", Ayad and Fleischmann, 2008.

	// Input : function f in K(x)\ K
	// Output: N:= the normal form of f in left GL_2 - orbit
	//       : M:= 2 x 2 matrix with N = M o f.

	local f_d,f_n,p_0,q_0,N,p_m,q_n,m,n,M,U;
	F:=FieldOfFractions(PolynomialRing(k));
	P:=PolynomialRing(F);
	if f eq 0 then return 0; end if;
	if Degree(f) eq 0 then return 1,1,1; end if;
	M := Matrix(k, 2, 2, [1,0,0, 1]);
	N:=f;
	p:=Numerator(N); q:=Denominator(N); m:=Degree(p); n:=Degree(q);
	p_0:=Coefficient(p,0); q_0:=Coefficient(q,0);
	// first we want p_0=0;
        if not p_0 eq 0 then // if p_0=0 skip this, so here p_0 <> 0
                if (q_0 eq 0) then
                        N:=Evaluate(1/F.1,N); M:=Matrix(k, 2, 2, [0,1,1,0]);
                        p:=Numerator(N); q:=Denominator(N);
                        m:=Degree(p); n:=Degree(q);
                        p_0:=Coefficient(p,0); q_0:=Coefficient(q,0);
                else // now p_0*q_0 is nonzero
                        u:=(-q_0/p_0)*F.1+1;
                        U := Matrix(k, 2, 2, [-q_0/p_0,1,0,1]);
                        N:=Evaluate(u,N); M:=U*M;
                        p:=Numerator(N); q:=Denominator(N);
                        m:=Degree(p); n:=Degree(q);
                end if;
        end if; // now p_0 = 0 and q_0 <>0
        if m eq n then
                p_m:= Coefficient(p,m); q_n:= Coefficient(q,m);
                u:= F.1/(-q_n/p_m*F.1 + 1); U:=Matrix(k, 2, 2,[1,0,-q_n/p_m,1]);
                N:=Evaluate(u,N); M:=U*M; p:=Numerator(N); q:=Denominator(N);
                m:=Degree(p); n:=Degree(q);
        end if; // now p_0 = 0 and q_0 <>0;
                // (p,q)=1, (which is invariant under left GL_2 -action)
                // p and q have different degrees.
        p_m:= Coefficient(p,m); q_n:= Coefficient(q,n);
        u:= (q_n/p_m)*F.1; U:=Matrix(k, 2, 2,[q_n/p_m,0,0,1]); // make p,q monic
        N:=Evaluate(u,N); M:=U*M; p:=Numerator(N); q:=Denominator(N);
        m:=Degree(p); n:=Degree(q);

        if m lt n then // remove q_m
        q_n:=Coefficient(q,m); u:= F.1/(-q_n*F.1 + 1);
        U:=Matrix(k, 2, 2,[1,0,-q_n,1]);
        N:=Evaluate(u,N); M:=U*M;
        end if;
    return Numerator(N), Denominator(N), M;
end function;


LurothGen:=function(g,k)
	// Given a polynomial g \in K(t)[x], returns any coefficient not in K.

	char:=Characteristic(k);
	F:=FieldOfFractions(PolynomialRing(k));
	C:=Coefficients(g);
	for c in C do
		if not c in k then
			gn:=Numerator(c); gd:=Denominator(c);
			return [gn, gd];
		end if;
	end for;
end function;



right := function(f,M,k)
	// This function was implemented by Mohamed Ayad and Peter Fleischmann
	// See "On the decomposition of rational functions", Ayad and Fleischmann, 2008.

	// right action of GL_2 on K(x)
	// Input:  f in FF, M matrix in C^2;
	// Output: f^M;
	F:=FieldOfFractions(PolynomialRing(k));
	P:=PolynomialRing(F);
	if Determinant(M) eq 0 then 
		printf "Matrix M is not invertible\n";
		return(0);
	end if;
	u:=(M[1,1]*F.1+M[1,2])/(M[2,1]*F.1+M[2,2]);
return(Evaluate(f,u));
end function;


normalize_decomp := function(h_list,K_ini, k)
	// This function was implemented by Mohamed Ayad and Peter Fleischmann
    	// See "On the decomposition of rational functions", Ayad and Fleischmann, 2008.

	//normalizes a decomposition list
	//ie. all factors except possibly the "leftmost" (i.e. last in the list) 
	//are normalized
	//Input: h_list
	F:=FieldOfFractions(PolynomialRing(k));
	P:=PolynomialRing(F);
	M := Matrix(k, 2, 2, [1,0,0, 1]); n_list:=[ ];
	length:=#h_list; i:=1;
	while i lt length do
	    zn, zd,M:=normalize(right(h_list[i],M^-1,k),k);
	    Append(~n_list,K_ini!(Evaluate(zn,F.1)/Evaluate(zd,F.1)));
	    i:=i+1;
	end while;
	Append(~n_list,K_ini!right(h_list[length],M^-1,k));
return n_list;
end function;


leftfactor := function(f,h,k)
	// This function was implemented by Mohamed Ayad and Peter Fleischmann
    	// See "On the decomposition of rational functions", Ayad and Fleischmann, 2008.

    // Input: f=p/q and h=r/s in FF, where h is right-factor of f.
    // Output: g in FF with f = g o h,
    local g;
    F:=FieldOfFractions(PolynomialRing(k));
    P:=PolynomialRing(F);
    K:=PolynomialRing(k);
    g:=0;
    h_n:= h[1]; h_d:=h[2];
    f_n:=f[1]; f_d:=f[2];
    ff_n:=hom< K -> P | P.1 >(f_n); ff_d:=hom< K -> P | P.1 >(f_d);
    hh:= hom< K -> P | P.1 >(h_n) -F.1*hom< K -> P | P.1 >(h_d);
    B:=ff_n mod hh; D:=ff_d mod hh;
    g:=(LeadingCoefficient(B)/LeadingCoefficient(D));
    return g;
end function;



// The algorithm AllSubfields from the paper van Hoeij et al. Generating
// Subfields 2013. Fields are represented by r-partition-vetors and intersections
// of subfields are computed using join of partitions (See Szutkoski
// and van Hoeij, The complexity of computing all subfields of an algebraic 
// number field, 2016).

AllSubf:=function(Part)
	// Input  : Set of partitions Part.
	// Output : The join of all subsets of Part.

	r:=#Part[1][1];
	K:=[*[i : i in [1..r]], 0*];
	ListSubfields:=[K];
	e:=Vector(Integers(),[(Part[i][1] eq K[1]) select 1 else 0: i in [1..r]]);

	// The function P^\infty
	PInf:=function(a,P)
		if P[a] eq a then 
			return a; 
		else 
			return $$(P[a],P); 
		end if;
	end function;

	// The join of two partitions:
	MyJoin:=function(v,w,r)
		P:=w[1];
		for a:=1 to r do
			b:=v[1][a];
			A:=PInf(a,P);
			B:=PInf(b,P);
			if B gt A then 
				P[B]:=A;
			elif A gt B then 
				P[A]:=B; 
			end if;
		end for;
		// Normalizing the partition:
		for i:=1 to r do P[i]:=P[P[i]]; end for;
	        if P eq v[1] then
       			return v;
	        else
        	        return [*P,0*];
	        end if;
	end function;

	NextSubfield:=procedure(~ListSubfields, M, e, s)
		for i:=s+1 to r do
			if e[i] eq 0 then
				N:=MyJoin(Part[i],M,r);
				ee:=Vector(Integers(), [N[1][j] eq 1 select 1 else 0 : j in [1..r]]);
				for k:=1 to i-1 do
					if ee[k] gt e[k] then
						continue i;
					end if;
				end for;
				Append(~ListSubfields, N);
				$$(~ListSubfields, N, ee, i);
			end if;
		end for;
	end procedure;

	NextSubfield(~ListSubfields, K, e, 0);

return ListSubfields;
end function;



////////////////////////////////////////////////////////////////////////////////////////////






