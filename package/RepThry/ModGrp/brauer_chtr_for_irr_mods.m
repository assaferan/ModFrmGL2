// freeze;

import "brauer_chars.m" : EltWithOrder;

// forward InitBrauerCharacterInfo, BrauerChtr;
// forward ComplexChtrToBC, BCToComplexChtr;


/////////////////////////////////////////////////////////////////////////////

pRegularClasses := function(G, p)

/* Determine the p-regular classes for the group G */

   Cls := Classes(G);
   pCls := {@ @};
   for i := 1 to #Cls do
      if (Cls[i][1] mod p ne 0) then 
          Include(~pCls, i);
      end if;
   end for;
  
   return pCls;

end function;


///////////////////////////////////////////////////////////////////////////////

field_degree_poly := function(f)
    coeffs := Coefficients(f);
    K := sub<Universe(coeffs)|1>;
    deg := 1;
    coeffs := [a:a in coeffs|not IsZero(a)];
    for a in coeffs do
        deg := Lcm(deg, Degree(MinimalPolynomial(a, K)));
    end for;
    return deg;
end function;

reduce_field_poly_seq := function(Q)
    deg := 1;
    for f in Q do
        deg := Lcm(deg, field_degree_poly(f));
    end for;
    bigK := BaseRing(Universe(Q));
    if deg eq Degree(bigK) then
        return Q;
    end if;
    K := sub<bigK|deg>;
    P := PolynomialRing(K);
    return [P|f:f in Q];
end function;

/*
function EltWithOrder(K, e)
    q1 := #K - 1;
    k := q1;
    P := PrimeBasis(e);
    M := [];
    for p in P do
	m := 0;
	while IsDivisibleBy(k, p) do
	    k div:= p;
	    m +:= 1;
	end while;
	assert m gt 0;
	Append(~M, m);
    end for;
    o := q1 div k;

    EM := [Valuation(e, p): p in P];

// "P:", P;
// "M:", M;
// "EM:", EM;
// "o:", o;

    repeat
	h := 1;
	repeat 
	    r := Random(K);
	until not IsZero(r);
	r := r^k;
	fail := false;
// "new";
	for i := 1 to #P do
	    p := P[i];
	    kk := o div p^M[i];
	    s := r^kk;
	    m := 0;
	    while not IsOne(s) do
		m +:= 1;
		if m eq M[i] then
		    break;
		end if;
		s := s^p;
	    end while;
// printf "p: %o, m: %o, em: %o\n", p, m, EM[i];

	    if m lt EM[i] then
		fail := true;
		break;
	    end if;

	    h *:= p^(m - EM[i]);
	end for;
    until not fail;
// "h:", h;
// Factorization(h);

    r := r^h;
    return r;
end function;
*/

roots_of_unity := function(p, Q)

    assert forall{o:o in Q|Gcd(p,o) eq 1};
    assert #Factorization(p) eq 1;

    if #Q eq 0 then Q := [1]; end if;
    e := Lcm(Q);
    fe := Factorization(e);
    ppows := {@ t[1]^t[2]: t in fe @};
    primes := {@ t[1]: t in fe @};
    pp_elts := [**];

    /* get elts with prime power orders */
    for q in ppows do
        ord := Modorder(p, q);
        K := GF(p, ord);
        Append(~pp_elts, EltWithOrder(K, q));
    end for;

    /* build final answers */
    res := [* *];
    for o in Q do

	/* build o-th root of unity mod p */
        if o eq 1 then
	    /* really easy case */
            Append(~res, GF(p)!1);
            continue o;
        end if;

	/* the field it will live in */
	degK := Modorder(p, o);
	K := GF(p, degK);

	/* build prime power order bits of root of unity */
        fo := Factorization(o);
        temp := [* *]; /* storage for prime power order bits */
        for t in fo do
            po := t[1];
            eo := t[2];
            ind := Index(primes, po);
            assert fe[ind, 1] eq po;
            ee := fe[ind,2];
            zeta := pp_elts[ind];
	    z := zeta^(po^(ee-eo));
	    degzeta := Degree(Parent(pp_elts[ind]));
	    if degK mod Degree(Parent(pp_elts[ind])) ne 0 then
		z := GF(p, Modorder(p,po^eo)) ! z;
	    end if;
            Append(~temp, K!z);
        end for;

	/* is o a prime power? */
        if #temp eq 1 then 
            Append(~res, temp[1]);
            continue o;
        end if;

	/* build this one */
        r := K!1;
        for i := 1 to #fo do
            rt := temp[i];
            ppo := fo[i,1]^fo[i,2];
	    /* assert Order(rt) eq ppo; */
            r *:= rt ^ Modinv(o div ppo, ppo);
        end for;
        Append(~res, r);
    end for;

// conditions satisfied by elts of res 
// comment out checks as they take a bit of time!
// assert forall{i:i in [1..#Q]|Order(res[i]) eq Q[i]}; /* orders as required */
// assert forall{0:i,j in [1..#Q]|res[i]^(Q[i] div d) eq res[j]^(Q[j] div d)
//  where d is Gcd(Q[i], Q[j])}; /* compatibility of powers */

    return res;
end function;


InitBrauerCharacterInfo := procedure(~G, p, DimLim)
    zeit := Cputime();
    // vprint IrrMods, 2: "Precomputing the Brauer character information";
    cl := Classes(G);
    /* Get p-regular classes, skipping the identity */
    reg := {@i:i in [2..#cl]|not IsDivisibleBy(cl[i,1], p)@};
    pm := PowerMap(G);
    // vprint IrrMods, 3: "Power map found computed", Cputime(zeit), "seconds";
    info := G`pMod`BrauerInfo;
    polys := [**];
    vals := [**];
    lift_where := [];
    reg_ords := {@ cl[i,1]: i in reg @};
    roots := roots_of_unity(p, reg_ords);
    // vprint IrrMods, 3:"Found roots of unity mod", p, "in", Cputime(zeit), "seconds";
    bcp := DimLim + 1;
    e := Lcm([cl[i,1]: i in reg]);
    d := bcp mod e;
    if d eq 0 then
	bcp +:= 1;
    elif d ne 1 then
	bcp +:= e - d + 1;
    end if;
    assert bcp mod e eq 1;
    while not (#G mod bcp ne 0 and IsPrime(bcp)) do
	bcp +:= e;
    end while;
    field := GF(bcp);
    // vprint IrrMods, 2: "Brauer characters will be computed in the", field, "after", Cputime(zeit), "secs";
    big_zeta := EltWithOrder(field, e);
    /* big_zeta is an e-th root of unity in field */
    done := {@ @};
    for i in reg do
        n := cl[i, 1];
        assert e mod n eq 0;
	/* subgroup of unit grp mod n that fixes this class */
        grp := {j:j in [1..n-1]|pm(i, j) eq i};
        ind := Index(done, <n, grp>);
        if ind gt 0 then
            lift_where[i] := ind;
            continue i;
        else
            Include(~done,  <n, grp>);
            lift_where[i] := #done;
        end if;
        z := roots[Index(reg_ords, n)]; /* n-th root of unity over GF(p) */
        zeta := big_zeta ^ (e div n); /* n-th root of unity in field */
	K := Parent(z);
        P := PolynomialRing(K); X := P.1;
        n_polys := [P|];
        n_vals := [];
        to_do := {0..n-1};
        while to_do ne {} do
            r := Rep(to_do);
	    /* the following powers of z will occur together as eigenvalues */
            powers := {(r*j) mod n : j in grp};
            to_do diff:= powers;
	    /* precompute corresp. polynomial factor */
            Append(~n_polys, &*[ X-z^j : j in powers]);
	    /* precompute corresp. brauer chtr values in all powers */
            Append(~n_vals, [&+[ zeta^(k*j) : j in powers]:k in [1..n-1]]);
        end while;
        Append(~polys, reduce_field_poly_seq(n_polys));
        Append(~vals, n_vals);
    end for;
    info`lift_polys := polys;
    info`lift_vals := vals;
    info`lift_where := lift_where;
    info`pCls := reg;
    info`field := field;
    info`zeta := big_zeta;
    info`primitive := PrimitiveElement(field);
    info`lift_ords := {@Integers()| @};
    info`lift_mats := [* *];
    int_classes := {1} join {i:i in [1..#cl]|cl[i,1] mod p eq 0 or
	forall{j:j in [1..cl[i,1]]|GCD(j,cl[i,1]) ne 1 or pm(i,j) eq i}};
    info`int_classes := int_classes;
    G`pMod`BrauerInfo := info;
    // vprint IrrMods, 2: "Precomputation of Brauer Character data took", Cputime(zeit), "seconds";
end procedure;

BrauerChtr := function(G, M)
    zeit := Cputime();
    // rep_time := 0.0;
    // cp_time := 0.0;
    info := G`pMod`BrauerInfo;
    K := info`field;
    chtr := [K|Dimension(M)];
    reg := info`pCls;
    polys := info`lift_polys;
    vals := info`lift_vals;
    lift_where := info`lift_where;
    len := #reg;
    cl := Classes(G);
    pm := PowerMap(G);
    rho := Representation(M);
    p := Characteristic(BaseRing(M));
    for i := len to 1 by -1 do
	if IsDefined(chtr, i+1) then
	    continue i;
	end if;
        c := reg[i];
        w := lift_where[c];
        i_polys := polys[w];
	d_i_polys := Degree(BaseRing(Universe(i_polys)));
        i_vals := vals[w];
        i_len := #i_polys;
	n := cl[c,1];
        val := [K| 0 : k in [1..n-1]];
	// t1 := Cputime();
	rep_im := cl[c, 3]@rho;
	// rep_time +:= Cputime(t1);
	// vprint IrrMods, 3:"Class rep image:", Cputime(t1), "seconds";
	// t1 := Cputime();
        cp := CharacteristicPolynomial(rep_im);
	// cp_time +:= Cputime(t1);
	// vprint IrrMods, 3:"Char poly:", Cputime(t1), "seconds";
	d_cp := Degree(BaseRing(Parent(cp)));
	d := Gcd(d_cp, d_i_polys);
	if d lt d_cp then
	    cp := PolynomialRing(GF(p, d))!cp;
	end if;
	if d lt d_i_polys then
	    cp := Universe(i_polys)!cp;
	end if;
        for j := 1 to i_len do
            f := i_polys[j];
	    i_vals_j := i_vals[j];
            repeat
                flag, quot := IsDivisibleBy(cp, f);
                if flag then
                    cp := quot;
		    for k := 1 to n-1 do
			val[k] +:= i_vals_j[k];
		    end for;
                else
                    continue j;
                end if;
            until false;
        end for;
	for k := 1 to n-1 do
	    ck := pm(c, k);
	    ind := Index(reg, ck)+1;
	    if IsDefined(chtr, ind) then 
		continue k;
	    end if;
	    chtr[ind] := val[k];
	end for;
    end for;
    // vprint IrrMods, 3: "BrauerChtr: reps time:", rep_time, "seconds";
    // vprint IrrMods, 3: "BrauerChtr: char poly time:", cp_time, "seconds";
    vprint IrrMods, 3: "BrauerChtr:", Cputime(zeit), "seconds";
    return chtr;
end function;

///////////////////////////////////////////////////////////////////////////

ComplexChtrToBC := function(c)
// Assumes G`pMod`BrauerInfo is defined with appropriate data
    G := Group(Parent(c));
    cl := ClassesData(G);
    info := G`pMod`BrauerInfo;
    v := CharacterToModular(c, info`primitive);
    reg := info`pCls;
    K := info`field;
    res := [K|Degree(c)];
    for i in reg do Append(~res, v[i]); end for;
    return res;
end function;

BCToComplexChtr := function(G, b)
// Assumes G`pMod`BrauerInfo is defined with appropriate data
    info := G`pMod`BrauerInfo;
    cl := ClassesData(G);
    K := info`field;
    v := [K|0:i in [1..#cl]];
    v[1] := b[1];
    reg := info`pCls;
    for i := 1 to #reg do
	v[reg[i]] := b[i+1];
    end for;
    res := ChtrLiftInternal(CharacterRing(G), Vector(v), info`int_classes,
	    info`lift_ords, info`lift_mats, info`primitive);
    return res;
end function;

BCToComplexChtrSeq := function(G, b)
// Assumes G`pMod`BrauerInfo is defined with appropriate data
    chi := BCToComplexChtr(G,b);
    info := G`pMod`BrauerInfo;
    reg := info`pCls;
    res := [Degree(chi)];
    for i := 1 to #reg do
	Append(~res, chi[reg[i]]);
    end for;
    return res;
end function;

BCToComplexChtrVec := function(G, b)
// Assumes G`pMod`BrauerInfo is defined with appropriate data
    chi := BCToComplexChtrSeq(G,b);
    res := Vector(chi);;
    return res;
end function;

