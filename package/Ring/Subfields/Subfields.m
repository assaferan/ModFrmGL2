freeze;

forward NextSubfields,  SubfieldFromBlock;

import "GalSubfield.m" : GetBlock, BlockComposite, FindPrime, BlockFromPrimitiveElement, 
                         PossibleBlockSizes, possible_block_sizes_iterative;
import "../GaloisGrp/GalRelRest.m" : RealBasis;


declare attributes FldAlg : SubfieldLattice;
declare attributes FldFun : SubfieldLattice;

Debug := false;
SubGraphLimit := 100;


// for colorized output...(changes the background color)
if not IsIOWrapped() then
  red := "[41m";
  green := "[42m";
  RED := "[43m";
  blue := "[44m";
  purple := "[45m";
  BLUE := "[46m";
  grey := "[47m";
  normal := "[49m";
else
  red := "";
  green := "";
  RED := "";
  blue := "";
  purple := "";
  BLUE := "";
  grey := "";
  normal := "";
end if;

color_array := [red, green, RED, blue, purple, BLUE, grey, normal];

intrinsic PrincipalPartitions(g :: GrpPerm) -> SetEnum
{Computes all the princial partitions of g}
 a := Representative(Support(g));
 p0 :={MinimalPartition(g:Block := {a,i}) : i in Support(g) | i ne a};
 return {a : a in p0};
end intrinsic;


/* A more p-adic version of lifting embeddings of subfields:

  zz : Approximation of embedding (scaled by mul)
  L  : p-adic structure of roots 
  F  : Number Field
  E  : Order of F
  g  : Subfield polynomial
  mul: Scaling factor such that zz gets scaled to an element of E
*/
function my_eval(f,x, modul)
 n := Degree(f);
 res := Coefficient(f,n);
 while n gt 0 do
  n := n - 1;
  res := (x*res + Coefficient(f,n)) mod modul;
 end while;
 return res;
end function;


function LiftEmbeddingANF(zz,L,E, g_not_scaled, mul, mul_inv : MaxPrec := Infinity())

 dg := Derivative(g_not_scaled);
 p := L`Prime[1];
 assert Valuation(Norm(mul),p) eq 0; 
 assert (Discriminant(PolynomialRing(GF(p))!g_not_scaled) ne 0);

 qu,pi := quo<E | p*E>;
 z_ns := ((pi(zz) / pi(mul)) @@ pi) mod (p*E);
 gsi_e := (1/pi(my_eval(dg, z_ns, p * E))) @@ pi;

 modul := p^2;
 g_e := my_eval(g_not_scaled, z_ns, modul * E);
 prec := 2; 
 suc := false;
 repeat
  z_ns := (z_ns - g_e * gsi_e) mod  (modul * E);
  assert2 my_eval(g_not_scaled,z_ns,(modul * E)) eq 0;
  zz_seq := [Integers()!a mod modul : a in ElementToSequence(E!(z_ns * mul))];
  zz_seq := [2*a gt modul select a - modul else a : a in zz_seq];
  mm := Max([AbsoluteValue(a) : a in zz_seq]);
  zz := E!zz_seq;
//  z_ns := zz * mul_inv;
  if (mm * 10^6 lt modul) or (prec ge MaxPrec) then
// The aproximation may be good...check!
   vprint Subfields,3:"Doing full check";
   zz_scaled_back :=  zz * mul_inv;
   vtime Subfields,3: suc :=  Evaluate(g_not_scaled, zz_scaled_back) eq 0;
  end if;  
  if not suc then
   if prec gt MaxPrec then
      return false, zz, zz_scaled_back;
   end if;
   vprintf Subfields,3:"Lifting embedding to precision %o^%o\n",p,2*prec;
   gsi_e := (gsi_e - ((my_eval(dg, z_ns, modul * E) * gsi_e) mod (modul * E)- 1) 
                      * gsi_e) mod (modul * E);
   modul := modul^2;
   prec := Min(2 * prec, MaxPrec + 1); 
   g_e := my_eval(g_not_scaled, z_ns, modul * E);
  end if;
 until suc;

 return true, zz, zz_scaled_back;
end function;


procedure get_max_comp(L, rel, f)
    if rel then
	comp_roots := [];
	assert not ISA(Type(CoefficientRing(CoefficientRing(f))), FldAlg);
	for ip in InfinitePlaces(CoefficientRing(f)) do
	    _if := Polynomial([Evaluate(c, ip) : c in Coefficients(f)]);
	    comp_roots cat:= Roots(_if, ComplexField());
	end for;
	comp_roots := [x[1] : x in comp_roots];
	max_comp := Ceiling(Maximum([Abs(x) : x in comp_roots]));
    else
        max_comp := FujiwaraBound(f);
    end if;
    L`max_comp := max_comp;
end procedure;


// General approach to prinvipal subfields by factoring the defining polynomial over the field:
procedure GeneratingSubfieldsByFactor(F,l,~S)

    vprint Subfields, 1:"Coefficient field is not Q. Use factorization approach."; 
    f := DefiningPolynomial(F);
    f := PolynomialRing(F)!f;
    f div:= Polynomial(F, [-F.1, 1]);

    fact, lc := Factorization(f);
    vprint Subfields, 1: "Have factorization";
    assert2 lc * &* [x[1] : x in fact] eq f;

    BF := Basis(F);
    for f in fact do
        vprint Subfields,3: "Treating factor",f;
	if ISA(Type(F), FldNum) then 
		Fi := NumberField(f[1] : DoLinearExtension := true, Check := false);
	elif ISA(Type(F), FldFun) then
		Fi := FunctionField(f[1] : Check := false);
	end if;
	phi := hom<F -> Fi | Fi.1>;
	B := [&cat[Eltseq(r) : r in Eltseq(b)] : b in [phi(bb) - bb : bb in BF]];
	M := Matrix(B);
	K := KernelMatrix(M);
	// Need to find a block system to get better input to sub<>
	df := DefiningPolynomial(F);

        vprint Subfields, 1: "Building subfield of degree", Nrows(K);
	if assigned l`UseGalois and Characteristic(F) ne 0 then
//"HERE HERE HERE";
	    blocks := {};
	    for i in [1 .. Nrows(K)] do
	        bg := GetBlock(l`UseGalois, F!Eltseq(K[i]));
	        Include(~blocks, bg);
	    end for;
	    B := BlockComposite(blocks);
            if Debug then
                L2 := sub< F | [F!Eltseq(K[i]) : i in [1 .. Nrows(K)]]>;
                "Degree L2", Degree(L2);
                assert (L2 eq CoefficientRing(F) and Nrows(K) eq 1) or Degree(L2) eq Nrows(K);
            end if;
            assert #B eq Nrows(K);
            vprint Subfields, 3: "Found principal block system",B;
        
	    if #B eq Degree(F) then
	        L := F;
	        assert Nrows(K) eq Degree(F);
	    elif #B eq 1 then
	        L := CoefficientRing(F);
	        assert Nrows(K) eq 1;
	    else
//"FromBlock CALL FROM GeneratingSubfields";
	        L := SubfieldFromBlock(F, B, l : Opt := true);
	        assert Degree(L) eq Nrows(K);
	    end if;
        else
	    H := [F!Eltseq(K[i]) : i in [1 .. Nrows(K)]];
	    L := sub< F | H>;
            assert Nrows(K) eq 1 or Degree(L) eq Nrows(K);
	    B := false;
	end if;

	if L ne CoefficientRing(F) then
 	    bool, bs := InternalGaloisSubfieldLatticeAddField(l, L);// : B := B);
	    if B cmpne false and assigned bs then
		assert bs eq B;
	    end if;
	    if bool then
                vprint Subfields,1:"Generating subfield",L,"found.";
		Append(~S, L);
	    end if;

	// assertions to check the coercion
            if Debug then
                assert Evaluate(DefiningPolynomial(L), F!L.1) eq 0;
            end if;
	end if;
    end for;
    vprint Subfields,1:"Have generating subfields";
    l`GeneratingComplete := true;
end procedure;

function GetShapeInformation(f)
    cycle_data := [];
    cycle_data_fix_pt := [ ];
    p := Degree(f)^2;
    p_lim := Degree(f);
    min_length := 2*Degree(f);
    min_98_length := 2*Degree(f);
    poss_bl_s := false;
    cycles := {};
    split_deg := 1 + Degree(f);
    repeat 
        p := NextPrime(p);
        if IsCoercible(PolynomialRing(GF(p)), f) then
            red := PolynomialRing(GF(p))!f;
            if (Degree(red) eq Degree(f)) and (Gcd(red,Derivative(red)) eq 1) then
                degs := &cat [[a[1] : i in [1..Degree(a[2]) div a[1]]] : a in DistinctDegreeFactorization(red)]; 
                Append(~cycle_data,<p,degs>);
                split_deg := Min(split_deg, LCM(degs));
		if 1 in degs then
  		     Append(~cycle_data_fix_pt, <p, degs>);
                     min_length := Min(#degs, min_length);
 		end if;
                min_98_length := Min(#degs, min_98_length);
                if not degs in cycles then
                   poss_bl_s := possible_block_sizes_iterative(degs:start := poss_bl_s);
                   Include(~cycles, degs);
                   if #poss_bl_s eq 0 then
                       return cycle_data, cycle_data_fix_pt, min_length, min_98_length, poss_bl_s;
                   end if;
                end if; 
            end if;
        end if;
    until (#cycle_data_fix_pt gt 0) and (#cycle_data gt p_lim) and (2 * split_deg le 1 + Degree(f));

    return cycle_data, cycle_data_fix_pt, min_length, min_98_length, poss_bl_s;
end function;


// ToDo: Estimate the number of short cosets that the old algorithm has to treat and select the prime already here!
function use_this_alg(min_length, min_98_length, cycle_sizes, a,n)
 cycle_size := Maximum(cycle_sizes);
// min_length initialised to 2n and might not be really set yet
 if min_length ge n and min_98_length gt 5 then
    // Probable Galois extension : best to stay here
    // or haven't tried enough primes to reduce
    return true;
 elif min_length/min_98_length ge 3 then
    // lengths are not close, short for K compared to KvH
    // unless cycle_size or coeffs are particularly small
    // cycle_size will be a degree of a p-adic splitting field K would use
    // limit it
    if cycle_size lt 60 and cycle_size ge n/10 and (cycle_size gt n/2 or a gt n^(3/2)) then
	return false;
    end if;
 elif cycle_size*a/min_98_length gt n^(n/2) then 
    return false;
 end if;
 return true;
end function;


function LLL_with_removals(M, _a, n, ll)
//return LLL(M, [pa : i in [1 .. d]], RealField()!_a);
    M := func<|LLL(M)>();
    N := Orthogonalize(Matrix(RealField(100 + n + ll), M));
    len := Nrows(N);
    while Norm(N[len]) gt _a do
	len -:= 1;
    end while;
    M := RowSubmatrix(M, len);
    //"M, L : ", M, L;
    //[Floor(Norm(x)) : x in Rows(Orthogonalize(Matrix(RealField(100 + n + ll), M)))];
    //[Floor(Norm(x)) : x in Rows(Orthogonalize(Matrix(RealField(100 + n + ll), L)))], _a;
    //M - L;
    return M;
end function;


function ConfirmBlockSystem(F,f,L,B)
    n := Degree(f);
    split := L`Prime[5];	        // splitting field
    p := L`Prime[1];    
    assert not assigned L`UseGalois;    // Otherwise the roots are at an other place
    r := L`Prime[4];		        // roots in residue field
  
    scale := LCM([Denominator(a / LeadingCoefficient(f)) : a in Coefficients(f)]);

    max_comp := FujiwaraBound(f);

    tschirni := -1;
    repeat
     tschirni := tschirni + 1;
     sf_r := [&*[ r[i]  + tschirni : i in b] : b in B];  // Make sure that subfield polynomial is good mod p
    until #Set(sf_r) eq #B;
    vprint Subfields,3: "Used tschirni ", tschirni;
    bnd := Ceiling(scale * (max_comp+tschirni)^#B[1]); // bound for one root of the subfield polynomial
    
    bnd_co := 2*(bnd+1)^#B;
 //   bnd, bnd_co; 
    prec_2 := Ceiling(Log(bnd_co) / Log(p) + 1); // We haven`t proved the subfield yet. Give 1 additional p-adic digits to check at this point.
    SetPrecision(split, prec_2);
    if assigned L`Roots and Precision(L`Roots[1]) ge prec_2 then
     R := [split!a : a in L`Roots];
    else
     vtime Subfields,3: R := [ HenselLift(Polynomial(split, f), split!x) : x in r];
     L`Roots := R;
    end if;  

// p-adic aproximation of subfield polynomial
    sf_pol_app := &*[Polynomial([-&*[ R[i] + tschirni : i in b] * scale,1]) : b in B];
    sf_co_app := Coefficients(sf_pol_app);

// Check by rational reconstruction:
    sf_co := [];
    for i := 1 to #sf_co_app do
        suc,y := IsCoercible(Integers(), sf_co_app[i]);
        if not suc then
           vprint Subfields,1:"Block system disproved. (Coefficients not in Z)";
           return 0,0, false;
        end if;
        if AbsoluteValue(y) gt bnd^(#B + 1 - i) * Binomial(#B, i-1) then
           vprint Subfields,1:"Block system disproved. (Coefficients to big)";
           return 0,0, false;
        end if;
        Append(~sf_co,y);
    end for;
    sf_pol := Polynomial(sf_co); 
    vprint Subfields,3: "Found subfield given by",Parent(f)!sf_pol;

    
    // Compute bound for embedding:
    lift_bound := 2*scale^n*FujiwaraBound(sf_pol) * #B * n * Sqrt(&+[a^2  : a in Coefficients(f)]) / LeadingCoefficient(f);
    max_lift_prec := Ceiling(Log(lift_bound) / Log(p));
    zz_ff := Interpolation([r[i] : i in b, b in B],[ &*[ r[i] + tschirni : i in b] * scale : dum in b,  b in B]);
    zz := F!([Integers()!Coefficient(zz_ff,j) * (scale^j) * Integers()!(Integers(p)!scale^-j) 
               : j in [0..Degree(zz_ff)]] cat [0 : j in [Degree(zz_ff)+1 .. n-1]]);

    if not assigned L`EquationOrder then
	    L`EquationOrder := Order([(F.1*scale)^i : i in [0..Degree(F)-1]] : Order, Verify := false);
    end if;
    E := L`EquationOrder;

    scale_pow := scale^(Degree(f)) / LeadingCoefficient(f);
    suc, emb, emb_scaled_back := LiftEmbeddingANF(zz * L`fs_alpha * scale_pow,L, E , sf_pol, 
                    L`fs_alpha * scale_pow, L`fs_alpha_inv / scale_pow: MaxPrec := max_lift_prec);
//    [ Round(Log(AbsoluteValue(a)) / Log(10)) : a in Eltseq(emb)], lift_bound;
    if not suc then
       vprint Subfields,1:"Block system disproved. (No embedding found)";
    end if;
    vprint Subfields,4: suc, emb;  

    return sf_pol, emb_scaled_back, suc;
end function;

function ConfirmSubfield(F, f, L, H)
//F given field, f defining polynomial, L subfield struct, 
//H list of a potential vector space basis of the wanted subfield
//return the subfield or the information that something does not fit 
    n := Degree(f);
    sf_deg := #H;
    split := L`Prime[5];	        // splitting field
    assert not assigned L`UseGalois;    // Otherwise the roots are at an other place
    r := L`Prime[4];		        // roots in residue field
    
    elts_as_pol := [];
    for i := 1 to #H do
        act := ElementToSequence(H[i]);
        m := LCM([Denominator(a) : a in act]);  
        Append(~elts_as_pol, Polynomial([Integers()!(a * m) : a in act]));
    end for;

    prec := 1;
    repeat
      wl := [[Evaluate(f, rr) : f in elts_as_pol]  : rr in r];  
      if #Set(wl) gt sf_deg then
         vprint Subfields,3:"Subfield disproved. (No block system 1)";
         return 0,0,false; 
      end if;
      if  #Set(wl) ne sf_deg then 
       prec := prec * 2;
       SetPrecision(split, prec);
       r := [ HenselLift(Polynomial(split, f), split!x) : x in r];
      end if;
    until #Set(wl) eq sf_deg;
    B := [[i : i in [1..n] | wl[i] eq t] : t in Set(wl) ];
    if {#a : a in B} ne {n div sf_deg} then
       vprint Subfields,3:"Subfield disproved. (No block system 2)";
       return 0,0,false;
    end if;
    vprint Subfields,3: "Blocksystem identified with precision", prec div 2;

    return ConfirmBlockSystem(F,f,L,B);
end function;

function identify_first_block(hh, sf_deg, Fact, HP, n, II);
   deg_g := 0;
   gS := {};
   FII := Fact[II];
   prec := 1;
   for j := 1 to #Fact do
    if func<|hh mod Fact[j] eq hh mod FII>() then
     deg_g +:= Degree(Fact[j]);
     Include(~gS, j);
    end if;
   end for;
   while (deg_g * sf_deg ne n) do // Not enought precision for block identification
     assert (deg_g * sf_deg gt n);
     prec := 2*prec;
     fact2 := HenselLift(HP, prec);
     gS := {};
     for j := 1 to #Fact do
       if func<|Parent(fact2[1])!hh mod fact2[j] eq Parent(fact2[1])!hh mod fact2[II]>() then
         Include(~gS, j);
       end if;
     end for; 
     deg_g := &+[Degree(fact2[j]) : j in gS];
//     prec, gS;
   end while;  
   if prec gt 1 then 
      vprint Subfields,2:"First block identified with precision",prec;
   end if;
   return gS;
end function;

/*
This function implements the computation of the fields L_i as in 
van Hoeij and Klueners "Generating Subfields" Theorem 2.1
There are two "methods" implemented.
The second uses F as F_tilde and the computations are somewhat straightforward
The first uses local methods (see van Hoej and Klueners, Novocin ISSAC 2011)
*/
function principal_subfield(F, f, l, HP, a, a_sq, p, Fact,i,II,bas, bl, possible_subfield_degrees)

 n := Degree(F); 
 fda := l`fs_alpha_inv;
 d := Degree(Fact[i]);
 bls := &+[Degree(Fact[j]) : j in bl];

 increase_precision_factor := 1; lll_time := 0;
 repeat  
  aa := increase_precision_factor*Ceiling(n/d*Log(p, 2^d*a*2^n));
  vprintf Subfields,2:"Working with p-adic precision %o. Calling HenselLift\n",aa;
  vtime Subfields,2: fact := HenselLift(HP, aa);

  pa := p^aa;

  P := PolynomialRing(Integers(pa));
  ChangeUniverse(~fact, P);
	    //fact;
  FI := fact[II];
  fi := fact[i];
	    
  alpha_1 := -TrailingCoefficient(FI);
  Pbas := [P!x : x in bas];
	    
  fi_int := PolynomialRing(Integers())!fi;
  Pfi_int := P!fi_int;
  PFI := P!FI;

	    //"using", P!fi_int, "and", P!FI;

  B := func<|[Eltseq(P1mod) cat [0 : i in [Degree(P1mod) + 2 .. d]] where 
			P1mod := Pbas[j] mod Pfi_int - Pbas[j] mod PFI
							: j in [1 .. n ]]>();
  M := Matrix(Integers(), n, d, B);
  ll := Ceiling(Log(10, a));

  vprintf Subfields,2: "%oCalling LLL with matrix from%o %o\n",blue, normal, Parent(M);
  vprint Subfields,4: " with ", M;
  cput := Cputime();
  vtime Subfields,2: M := LLL(M, p, aa, a_sq);
  lll_time := lll_time + Cputime(cput);
  vprintf Subfields,3: "After LLL result of type %o %o\n", Parent(M),M;
  m := Nrows(M);//upper estimate for the degree of the principal field
  C := 100000000;
  // Multiply last d columns
  //Skip this test?!?
  D := DiagonalMatrix([1 : i in [1 .. n]] cat [C : i in [1 .. d]]);
  fix_verb := 2;
  cput := Cputime();
  while not func<|&and[IsZero(M[i][j]) : i in [1 .. m], j in [n + 1 .. Ncols(M)]]>() do
		vprint Subfields,fix_verb: "Try to fix... ";
                fix_verb := 3;
		M := M*D;
		//"M :", M;
		M := LLL_with_removals(M, a_sq,n, ll);
		m := Nrows(M);
	    //m;
  end while; 
  lll_time := lll_time + Cputime(cput);
  vprint Subfields,2: "Possible degree of subfield: ",m;

  if m eq 1 then
     vprintf Subfields,4:"Factor results in trivial subfield\n";
     return {1..#fact},_,_, lll_time;
  end if;

  if m eq n div bls then
     vprintf Subfields,4:"%oFactor reproduces known subfield.%o\n",green, normal;
     return bl,_,_, lll_time;
  end if;

  if not m in possible_subfield_degrees then //not enough precision
     continue; 
  end if;
	    
  H := func<|[F!Eltseq(M[k])[1 .. n] * fda : k in [1 .. m]]>();
  vprint Subfields,4: "Basis of subfield ", H[1],  Eltseq(M[1])[1..n],MinimalPolynomial(H[1]);

// Proof or disproof subfield of degree #H by ckecking the blocksystem. 
  sf_pol, sf_emb, suc := ConfirmSubfield(F, f, l, H);//Tries to compute subfield of degree m
             
  if suc then //Subfield proved, check block
   hh:=Polynomial(Eltseq(sf_emb));

//Confirm that alpha and f_i are in the same block....
   gS := identify_first_block(hh, Degree(sf_pol), Fact, HP, n, II);
 //gS;           
   if (not II in gS) or (not i in gS)  or (&+[Degree(Fact[i]) : i in gS] ne (n div m)) then 
     vprint Subfields,2 : "block not like expected";
   else
     return gS, sf_pol, sf_emb, lll_time;
   end if;
  end if;
  increase_precision_factor := increase_precision_factor * 2;
 until false;
end function;


/* for each factor to do compute 
   - KK := biggest subfield of principal subfield already known, 
   - list of a subields above KK */
function latt_struct(factors_to_do, blocks, degs, II, poss_bl_s);
 ind := [];
 bl_l := [];
 neighbors_l := [];
 loc_poss_s := [];
 tt := &join (SetToSequence(blocks) cat [{a : a in factors_to_do}]);
 trivial_inds := {i  : i in [1..#degs] | not i in tt}; // Blocks proven to result in the subfield Q.
 n := &+degs;

 for j in factors_to_do do
  act := [a : a in blocks | j in a] cat [{1..#degs}];
  lo := &meet act;
  bls_null := &+[degs[i] : i in lo]; // We are trying to refine lo of block size bls_null.
  bls_refine := [a : a in poss_bl_s cat [n] | bls_null mod a eq 0]; // Possible block sizes finer than bls_null
  if bls_refine eq [bls_null] then
     vprintf Subfields,3:"Factor %o excluded. Minimal block already known.\n",j;
     continue j;
  end if;
  neighbors := [a : a in blocks | (a subset lo) and (a ne lo)];
  n_sl := [&+[degs[j] : j in tt] : tt in neighbors]; // Block sizes of neighbor fields

  comp_sum := {degs[II] + degs[j]}; // Build a set of possible degrees reached by additional factors that don't bring us down to Q.
  for kk in lo do
     if (kk ne II) and (j ne kk) and (not kk in trivial_inds) then 
        comp_sum := comp_sum join {a + degs[kk] : a in comp_sum};
     end if;
  end for;
  act_poss_block_sizes := [a : a in bls_refine | a in comp_sum ]; // need the option for a fixed block with factors from lo.

// Add the trivial partition if necessary
  if (not n in act_poss_block_sizes) and (bls_null eq n) then Append(~act_poss_block_sizes,n); end if;

  if act_poss_block_sizes eq [bls_null] then
     vprintf Subfields,3:"Factor %o excluded. To large for intermediate field.\n",j;   
     continue j;
  end if;
  // Intersection of blocks from different block systems can result in empty sets and exactly one other cardinality.
  // Thus, too skew block systems can be excluded. 
  for t2 in n_sl do 
// Intersecting with a eighbor partition must result in a valid partition size
// and the intersections must be empty or of the same size
      act_poss_block_sizes := [a : a in act_poss_block_sizes | 
                               Max([rs : rs in bls_refine cat [1] | rs le (a - degs[j]) ]) * (bls_null div t2) ge a];
  end for;
  assert bls_null in act_poss_block_sizes;
  if act_poss_block_sizes eq [bls_null] then
     vprintf Subfields,3:"Factor %o excluded. Overlap with neighbors contradictory\n",j;  
     continue j;
  end if;
  fac := Factorization(bls_null);
  p_max := Max([a[1] : a in fac]);
  if (p_max ne bls_null) and (bls_null lt p_max^2) then
     if p_max in n_sl then
        act_poss_block_sizes := [a : a in act_poss_block_sizes | a ne p_max];
     end if;
  end if;  
 
  lo_is_proven_principal := not lo subset (SequenceToSet(factors_to_do) join  &join (neighbors cat [{II}]) );
  loc_degs := Sort([degs[j] : j in lo]); 
  if (#fac eq 1) and (fac[1][2] eq 2) and (#neighbors eq 2) then // p^2 case
     if (#{loc_degs[i] : i in [2..#loc_degs]} gt 1) or // This cycle type is not compatible with more than 2 intermediate fields
        lo_is_proven_principal then
        vprintf Subfields,3:"Factor %o excluded by p^2-test with p^2 = %o\n",j, fac;
        continue j;
     end if;
  end if;
  if (bls_null eq 4) and (lo_is_proven_principal) and (#neighbors gt 0) then
// In degree 4 we have either at most 1 subfield or the Kleinian 4 group. Thus, the group field is not principal
     vprintf Subfields,3:"Factor %o excluded as relative degree 4 extension does not have the Klein four group\n",j;
     continue j;
  end if;  
  if (#fac eq 2) and (fac[1][2] eq 1) and (fac[2][2] eq 1) then // pq - case
    if (fac[2][1] mod fac[1][1] ne 1) then  // In this case we have at most one block system with size p and one with size q
      assert #neighbors le 2;
      act_poss_block_sizes := [a : a in act_poss_block_sizes | not a in n_sl]; // At most on block system of each size proven
    else
// Hard part of pq-case: q = 1 mod p
      if (not bls_null in {21,55}) and (bls_null le 10000) then 
         if lo_is_proven_principal or (#SequenceToSet(loc_degs) gt 1) then // The relative group is not the regular representation of a degree q Frobenius group
            assert #neighbors le 2;
            act_poss_block_sizes := [a : a in act_poss_block_sizes | not a in n_sl]; // At most on block system of each size up to degree 1000
         end if;
      end if;
      if (bls_null in {21,55}) and (lo_is_proven_principal or (#SequenceToSet(loc_degs) gt 1)) and 
         (#neighbors eq 2) then
         act_poss_block_sizes := [bls_null];
      end if;
    end if;      
    if act_poss_block_sizes eq [bls_null] then 
       vprintf Subfields,3:"Factor %o excluded by pq-test with pq = %o\n",j,fac;
       continue j; 
    end if;
  end if;
  if (bls_null eq 8) and (lo_is_proven_principal) and (#neighbors eq 2) then 
// Degree 8: Principal blocks of size 2,4,8 -> no other blocks possible
   if {2,4} eq { &+[degs[i] : i in a] : a in neighbors} then
// Have to check that the size 4 block is principal
    n4 := Representative([a : a in neighbors | &+[degs[i] : i in a] eq 4]);
    n2 := Representative([a : a in neighbors | &+[degs[i] : i in a] eq 2]);
    if (2 in [degs[i] : i in n4]) or (#[i : i in n4 | (not i in n2) and (not i in factors_to_do) ] gt 0) then
      vprintf Subfields,3:"Factor %o excluded by 8-test\n", j;
      continue j;
    end if; 
   end if;
  end if;
  Append(~ind,j);
  Append(~bl_l,&meet act);
  Append(~neighbors_l,neighbors );
  Append(~loc_poss_s, act_poss_block_sizes); 
 end for;
 return ind, bl_l, neighbors_l, loc_poss_s;
end function; 

function get_frobenius(l)
 r := l`Prime[4]; 
 p := l`Prime[1];     
 return Sym(#r)![Index(r,r[i]^p) : i in [1..#r]];
end function;

procedure  AddToBlockList(F, subf, part, HP, n, II, Fact, ~blocks); 
  emb := Polynomial(ElementToSequence(F!subf.1)); // Embedding
  first_block := identify_first_block(emb, Degree(subf), Fact, HP, n, II);  
  assert  #Representative(part) eq &+[Degree(Fact[i]) : i in first_block];
  vprintf Subfields,2: "First block %o\n",first_block;
  Include(~blocks,first_block);  
end procedure;

/*
OptAlg is used to select this method only if it is the optimal algorithm
for computing Subfields. If OptAlg is true then after the degrees of factors
have been checked and found to be too large then the function will return 
so that the old Subfields algorithm can be used. OptAlg should be false to use
this algorithm regardless, e.g. when GeneratingSubfields only are required
OptAlg := true will only have effect when the coefficient field of F is the
rational field (the only case there is a reliable possibly faster algorithm)


Proof levels: Proof by proving the blocksystem -- fast and easy: See Juergen's theses for details
              Proof done in ConfirmSubfield / ConfirmBlockSystem
*/
function GeneratingSubfieldsFunc(F, l : OptAlg := false)
    cput := Cputime();
    vprint Subfields,1:"Start GeneratingSubfieldsFunc";
    // Get generating subfields already stored in the lattice
    S := InternalSubfieldLatticeGetGeneratingSubfields(l);

    n := Degree(F);
    if n eq 1 then
	return [];
    end if;

    if l`GeneratingComplete then 
	return S;
    end if;

    f := DefiningPolynomial(F);

    PF := PolynomialRing(F);
    if CoefficientField(F) cmpne RationalField() then 
//"Calling FindPrime", Degree(F), l;
        FindPrime(AbsoluteDegree(F)^2,l);
//"done";
        GeneratingSubfieldsByFactor(F,l,~S);
	return S;
    end if;
    // Now we are in the rational case, use LLL or the old code

    if OptAlg and (Degree(f) le 30) then
        vprint Subfields,1:"Degree <= 30. Not using this algorithm.";
        return false, _;
    end if;

    // collect cycle type information for later use.
    cycle_data, cycle_data_fix_pt, min_length, min_98_length, poss_bl_s := GetShapeInformation(f); 
    vprint Subfields,2:"Cycles found",{ SequenceToMultiset(a[2]) : a in cycle_data},#cycle_data,"primes tested";
    if #poss_bl_s eq 0 then
        vprint Subfields,1:"No subfields by shape test";
        return S;
    end if;
    vprint Subfields,1:"Shape test forces blocks to be of size",poss_bl_s;
    gal_lower_bound := InternalDivisorOfGroupOrder({a[2] : a in cycle_data}); 
    vprintf Subfields,1:"%oOrder of Galois group is multiple of%o %o\n", RED,normal, gal_lower_bound;
    possible_subfield_degrees := {n div a : a in poss_bl_s};
    if not 1 in { #[b : b in a | b mod 2 eq 0] mod 2 : a in {a[2] : a in cycle_data}} then
// Shape test indicates that Disc(f) is probably a square.
      in_An := IsSquare(Discriminant(f));
    else
      in_An := false;
    end if;
    if in_An and GetVerbose("Subfields") gt 0 then
      printf"Galois group is contained in A_n\n";
    end if;

    denom := func<|LCM([Denominator(c) : c in Coefficients(f)])>();
    lc := LeadingCoefficient(f);
    f *:= denom;
    
    cycle_sizes := {LCM(x[2]) : x in cycle_data};
    
    // some estimate from size of polynomial coeffs
    a_sq := Integers()!Norm(Vector(Coefficients(f)));
    blocks := {};
        
    if OptAlg then
	if not use_this_alg(min_length, min_98_length, cycle_sizes, a_sq,n) then
	    // need a prime with full info for the lattice stuff 
	    // at the end
            mm := Min(cycle_sizes);
            p :=  Representative([a[1] : a in cycle_data | LCM(a[2]) eq mm]);
	    FindPrime(p - 1, l);
	    return false;
	end if;
    end if;
    vprint Subfields, 1:"Coefficient field is Q. Use LLL";

    a := Sqrt(a_sq);
    a *:= n^2;
    a_sq *:= n^4;    //JK: a_sq is the square of the critical bound

// Choose prime for the splitting field, minimize the splitting field degree
    mm := Min(cycle_sizes);
    p :=  Representative([a[1] : a in cycle_data | LCM(a[2]) eq mm]);
//    mm,p;
    FindPrime(p-1, l);

// Choose prime for LLL: Need a linear factor and a minimal number of factors to LLL
    cnt := n + 1; ind := -1;
    max_bl_s := Max(poss_bl_s);
    for i := 1 to #cycle_data_fix_pt do
     dl :=  cycle_data_fix_pt[i][2];
     assert 1 in dl;
     c0 := #[a : a in dl | a lt max_bl_s]; 
     if c0 lt cnt then
       ind := i; cnt := c0;
     end if;
    end for;     
    assert ind ne -1;

    p := cycle_data_fix_pt[ind][1];
    Fact := [ff[1] : ff in Factorization(PolynomialRing(GF(p))!f)];

    vprintf Subfields,1:"Choosing p = %o of type %o for LLL\n",p,{* Degree(a) : a in Fact *}; 

    HP := HenselProcess(PolynomialRing(Integers())!f, Fact, 10);
    increase_precision_factor := 1;
    for i in [1 .. #Fact] do
	if Degree(Fact[i]) eq 1 then
	    II := i;
	    break;
	end if;
    end for;
    assert assigned II;
    f := Polynomial(CoefficientField(F), f);
    PFf := PF!f;
    fd := Derivative(f);
    fd_int := PolynomialRing(Integers())!fd;
    _, inv := XGCD(fd, f);
    // Get the \alpha^i/f'(\alpha) basis here once
    bas := func<|[(Parent(inv).1)^i * inv mod f : i in [0..n-1]]>();
    Fbas := func<|[Evaluate(x, F.1) : x in bas]>();

    lll_effect_count := 0;    lll_time := 0;    lll_degrees := []; sfb_time := 0;

    factors_to_do := [i : i in [1..#Fact] | i ne II];

    vprint Subfields,2:"Setup time:",Cputime(cput);
    while #factors_to_do gt 0 do

// Check space for more subfields
     ind, bl_l, neighbors_l, loc_poss_s := latt_struct(factors_to_do, blocks, [Degree(a) : a in Fact], II, poss_bl_s);
     if #ind eq 0 then
        vprintf Subfields,2:"%oLattice test: No space for more subfields left.%o\n",RED,normal;
        break;
     end if;
     if #blocks eq 0 then
       vprint Subfields,2: #ind,"factors to do";
     else
       vprintf Subfields,2: "Lattice test excluded %o factors. Still %o factors to do.\n", #factors_to_do - #Set(ind),#Set(ind);
     end if;
     factors_to_do := ind;
     i := ind[1];
     Remove(~factors_to_do,Index(factors_to_do,i));  

     i_0 := Index(ind,i);
     bl := bl_l[i_0];
     neighbors := neighbors_l[i_0];
     act_poss_block_sizes := loc_poss_s[i_0];

     fi := Fact[i];   
     d := Degree(fi);
     vprintf Subfields,2:"%oDoing factor %o of degree %o%o\n",red,i,d,normal;	    

     if #bl gt 0 then
       bls:=&+[Degree(Fact[j]): j in bl];
       vprintf Subfields,2: "The principal subfield we are about to compute contains %o ",bl;
       vprintf Subfields,2: "of size %o and subfield degree %o\n",bls, n div bls;
       n_sl := [&+[Degree(Fact[j]): j in tt] : tt in neighbors];
       if #neighbors gt 0 then
           vprintf Subfields,2:"Known neighbors %o\nOf sizes %o and subfield degrees %o\n",neighbors,
                               n_sl, [n div a : a in n_sl];
       end if;                   
       vprintf Subfields,2:"Possible block sizes for this factor %o\n",act_poss_block_sizes; 
     else
       bl := {1..#Fact};
       bls := n;
     end if;

     gS, sf_pol, sf_emb, t_lll := principal_subfield(F, f, l, HP, a, a_sq,p, Fact, i, II, bas, bl, possible_subfield_degrees);     
     cput := Cputime();
     lll_time := lll_time + t_lll;
     Append(~lll_degrees, Degree(Fact[i]));

     if (gS eq {1..#Fact}) or (gS in blocks) then
       vprintf Subfields,2 : "%oSubfield already known%o\n", green, normal;
       continue;//go to next factor
     end if; 
     lll_effect_count := lll_effect_count + 1;
     Include(~blocks, gS);
     assert (n div Degree(sf_pol)) eq (&+[Degree(Fact[j]): j in gS]);
     vprintf Subfields,2:"First block %o.\n", gS;
     L := ext<CoefficientField(F) | sf_pol>;
     Embed(L, F, sf_emb);//Store subfield
	    
     assert2 Evaluate(DefiningPolynomial(L), sf_emb) eq 0;
     assert2 F!L.1 eq sf_emb;
     bool, bs := InternalGaloisSubfieldLatticeAddField(l, L);// : B := B);//Store subfield
    //"Added", bool;
     if bool then
	Append(~S, L);//Store subfield
     end if;

     vprint Subfields,4:"Time for remaining steps:",Cputime(cput);
     vprint Subfields,1:"LLL found subfield given by",DefiningPolynomial(L);
     vprint Subfields,3:"Current block list is:",blocks; 
     vprint Subfields,2:"We know ",#blocks," blocks"; 
     if #blocks gt 0 then
        bll := {a[2] : a in l`Fields};
        all_block_systems := [[SetToSequence(b) : b in a] : a in bll | #Representative(a) gt 1];
        gal_approx := IntersectionOfWreathProducts(all_block_systems);
        if in_An then
           gal_approx := gal_approx meet Alt(n);
        end if;
        assert (#gal_approx mod gal_lower_bound eq 0) and IsTransitive(gal_approx);  
        pp_new := [a : a in PrincipalPartitions(gal_approx) | not a in bll and #a gt 1];
        if GetVerbose("Subfields") gt 0 then
            printf "%oOrder of Galois starting group:%o %o\n",RED,normal, #gal_approx; 
//                   IsEven(gal_approx) select "in A_n" else "not in A_n";  
            printf"Group has %o additional principal partitions.%o\n", #pp_new, 
                   (#pp_new gt 0) select " Adding them." else "";
        end if;
        Cput := Cputime();
        for part in pp_new do
            subf := SubfieldFromBlock(F, Set(part), l);
            Append(~S,subf);
            bool, bs := InternalGaloisSubfieldLatticeAddField(l,subf:B := Set(part));
            assert bs eq part;  
            AddToBlockList(F, subf, part, HP, n, II, Fact, ~blocks); 
        end for;                 
        sfb_time := sfb_time + Cputime(Cput);   
        if GetVerbose("Subfields") gt 2 and #pp_new gt 0 then
            printf"Time for subfield construction: %o\n",Cputime(Cput);
        end if;        

        if Order(gal_approx) eq gal_lower_bound then                    
           vprintf Subfields,1:"%oGroup reached lower bound. Early return from generating subfields.%o\n",RED,normal;
           break;   
        end if; 
        if Order(gal_approx) eq 2 * gal_lower_bound then 
           vprintf Subfields,1:"%oGalois group up to index 2 found.%o ",RED,normal;
// We are very close the the Galois group. Is a descent with more blocks still possible?
           ugv := MaximalSubgroups(gal_approx:IsTransitive, IndexEqual := 2); //  Index 2 subgroups are normal!
           ugv := [u`subgroup : u in ugv];
           pp := PrincipalPartitions(gal_approx);
           ugv := [u : u in ugv | PrincipalPartitions(u) ne pp]; 
           if (#ugv gt 0) then
// Exclude all thouse descents that turn principal subfields into non-principal ones. 
              p_sub_degs := {};
              to_do_set := SequenceToSet(factors_to_do) join {II};  
              if (&join SetToSequence(blocks) join to_do_set) ne {1..#Fact} then
                 Include(~p_sub_degs,1);
              end if;              
              for a in blocks do 
               if not a subset &join ([to_do_set] cat [b : b in blocks | (b ne a) and (b subset a)]) then
                  Include(~p_sub_degs, n div &+[Degree(Fact[i]) : i in a]); // a is proven to be principal block.
               end if;
              end for;  
              ugv := [u : u in ugv | p_sub_degs subset {#a : a in PrincipalPartitions(u)}];
           end if;
           if #ugv eq 0 then
              vprintf Subfields,1:"No descent with more subfields possible.\n",RED,normal;
              break;
           end if;  
           vprintf Subfields,1: "%o index-two-subgroups with additional principal partitions found.\n",#ugv;  
           cnt := #ugv;
           frob := get_frobenius(l);
           ugv := [u : u in ugv | frob in u]; //  Index 2 subgroups are normal!
           if #ugv lt cnt then 
              vprintf Subfields,2: "%o subgroups do not contain the Frobenius element.\n",cnt - #ugv;  
           end if;   
           vprintf Subfields,2:"Trying %o subgroups directly.\n",#ugv;
           Cput := Cputime();
           for i := 1 to #ugv do
              pp2 :=  [tt : tt in PrincipalPartitions(ugv[i]) | not tt in pp];
              assert #pp2 gt 0;
              sf_pol, sf_emb, suc := ConfirmBlockSystem(F,f,l,pp2[1]); //  Index 2 subgroups are normal!
              if suc then
                 vprintf Subfields,2:"Found subfield given by %o. Descent to group of order %o\n",sf_pol, #ugv[i];	    
                 L := ext<CoefficientField(F) | sf_pol>;
                 Embed(L, F, sf_emb);//Store subfield
	    
                 assert2 Evaluate(DefiningPolynomial(L), sf_emb) eq 0;
                 assert2 F!L.1 eq sf_emb;
                 bool, bs := InternalGaloisSubfieldLatticeAddField(l, L);// : B := B);//Store subfield
                 if bool then
                     Append(~S, L);//Store subfield
                 end if;
                 AddToBlockList(F, L, pp2[1], HP, n, II, Fact, ~blocks); 
                 if #pp2 gt 1 and GetVerbose("Subfields") gt 1 then
                     printf"Group forces %o additional princial subfields. Adding them.\n",#pp2-1;
                 end if;
                 for k := 2 to #pp2 do // Add all the other new principal subfields to the lattice
                     subf := SubfieldFromBlock(F, pp2[k], l);
                     Append(~S,subf);
                     bool, bs := InternalGaloisSubfieldLatticeAddField(l,subf:B := Set(pp2[k]));
                     assert bs eq pp2[k];  
                     AddToBlockList(F, subf, pp2[k], HP, n, II, Fact, ~blocks); 
                 end for;
                 gal_approx := ugv[i];
                 break i; // Only one descent is possible   
              end if; 
           end for;
           sfb_time := sfb_time + Cputime(Cput);
           vprintf Subfields,1:"%oSubgroup lattice exhausted.%o Inspection time: %o\n",RED,normal,Cputime(Cput);
           break; 
        end if;
     end if;
    end while;
     //blocks;

    vprintf Subfields,1: "Have generating subfields. Called LLL for %o local factor(s) with degree(s) %o. ",#lll_degrees, lll_degrees;
    vprintf Subfields,1: "%o LLL-call(s) resulted in progress.\n",lll_effect_count;
    vprintf Subfields,1: "Total LLL time %o\n",lll_time;
    vprintf Subfields,1: "Time for Subfield from block system %o\n",sfb_time;
    l`GeneratingComplete := true;
    return S;
end function;

function SubfieldsOfAll(F : OptAlg := false, Proof := 1)
/*
This function implements the Algorithm "AllSubfields" of van Hoeij and Klueners
It finds a generating set for the subfields of F and sets up the array e
Additionally, it also puts the generating subfields into a subfield lattice
*/
    // Get generating set
    l := InternalGaloisSubfieldLatticeCreate(F);
    S := GeneratingSubfieldsFunc(F, l : OptAlg := OptAlg);
    if OptAlg and S cmpeq false then 
        vprint Subfields,1:"Using combinatorial algorithm";
//"Back to old";
        FindPrime(Degree(F)^2,l);
	S := InternalSubfields(F);
	for s in S do 
	    _ := InternalGaloisSubfieldLatticeAddField(l, s[1]);
	end for;
	l`Complete := true;
	l`GeneratingComplete := true;
	return [<x[1], Coercion(x[1], F)> : x in l`Fields], l;
	return S, l;
    end if;
    // Take intersections
    e := [];
//"Got lattice";
    for i in S do
	if i eq F then
	    Append(~e, 1);
	else 
	    Append(~e, 0);
	end if;
    end for;
    //S is a copy of l`Fields but the first elements of the tuples are
    //fields rather than maps from the fields into F
    S := [<x, y> where _, y := InternalGaloisSubfieldLatticeFindField(l, x) : x in S];
//"Have S";
    //L is a copy of the top of the subfield lattice
    L := <F, y> where _, y := InternalGaloisSubfieldLatticeFindField(l, F);
    Cput := Cputime();
    cnt0 := #l`Fields;
    NextSubfields(F, S, L, e, 0, l);
    vprintf Subfields,1: "Constructed remaining %o subfields. Time %o\n",#l`Fields - cnt0, Cputime(Cput);
    l`Complete := true;
    if false and Type(F) eq FldFun then
	return [<Domain(x[1]), x[1]> : x in l`Fields], l;
    else 
	return [<x[1], Coercion(x[1], F)> : x in l`Fields], l;
    end if;
end function;

function IntersectionFunc(F, K, FK)
// F is a subfield of FK, K is a principal subfield of FK (from the generating 
// set)
// FK is the top field which we are computing Subfields of
// return a subfield of F

    if CoefficientField(F) ne CoefficientField(K) then
    B := Basis(F);
    BF := ChangeUniverse(B, FK);
    BK := ChangeUniverse(Basis(K), FK);
    M := ZeroMatrix(CoefficientRing(FK), #BF + #BK, Degree(FK));
    for i := 1 to #BF do 
	M[i] := Vector(Eltseq(BF[i]));
    end for;
    for i := 1 to #BK do
	M[i + #BF] := Vector(Eltseq(BK[i]));
    end for;
    //S, null := Solution(M, ZeroMatrix(CoefficientRing(FK), Ncols(M), Ncols(M)));
    vtime Subfields : S := KernelMatrix(M);
    //null := Rank(null);
    S := Submatrix(S, 1, 1, Nrows(S), #BF);
    S := Matrix(F, S);
    M := Matrix(Degree(F), 1, B);
    M := S*M;
    // Need to find a block system to get better input to sub<>
    vtime Subfields : return sub<F | Eltseq(M)>;
    end if;

    //Rewritten using SubfieldFromBlock
    //Lattice may be stored and populated - it may not be constructed empty here
    //so cannot make assumptions when fields are already in the lattice
    L := InternalGaloisSubfieldLatticeCreate(FK);
    _, BK := InternalGaloisSubfieldLatticeAddField(L, K);
    _, BF := InternalGaloisSubfieldLatticeAddField(L, F);
    B := InternalGaloisSubfieldLatticeMeet(BK, BF);
    if #B eq 1 then 
	return CoefficientRing(FK);
    end if;
    if #B eq Degree(FK) then
	return FK;
    end if;
    return SubfieldFromBlock(FK, B, L : NumSub := #L`Fields);
end function;



/* General case for lifting of embedding. 
   This function can deal with Hensel-Lemma problems resulting from a subfield polynomial with roots congruent mod p */

    /*
    We are using the lifting 
    
	b_{i+1} = b_i - w_i g(b_i) mod p^{2^i} (or so)
	w_{i+1} = w_i(2 - w_i g'(b_{i+1})) mod p^{2^i+1}

    in Klueners

    where we start with an approximation b_0 such that g(b_0) = 0 mod p and
    w_0 is the inverse of g'(b_0) mod p

    We are here trying to get our approximations b_0 (z) and w_0 (w)
    */
/*
 E        : Equation order of F
 F        : Number Field
 L        : p-adic data structure of subfields
 B        : Block system corresponding to the subfield
 g        : subfield polynomial
 rel      : is relative extension
 prec     : precision of initial computation
 _df      :
 p        : prime ideal for completion of base ring
 zz       : Approximation of embedding
 scale    :     
*/
/*
function LiftEmbeddingGeneral(E, F, L, B, g, rel, prec, _df,  p,  zz, scale)

    vprintf Subfields,3: "Further lifting for embedding needed.\n"; 

    if false and assigned L`UseGalois then
	 dg := Polynomial([L`UseGalois`BaseMap(c, prec) : c in Eltseq(Derivative(g))]);
    end if;

    deg_g := Degree(g);
    _dg := Discriminant(g) * (_df)^(deg_g*(deg_g - 1));

if not ISA(Type(p), RngElt) then
assert Valuation(Order(p)!_dg, p) eq 0;
else
assert Valuation(Parent(p)!_dg, p) eq 0;
end if;

// Want w to be the inverse of g'(zz) for use in lifting
// remove discriminant scaling so w is now 1/g'(I()) = 1/g'(z)
    qu,pi := quo<E | E!!p>; 
    w := (1/pi(Evaluate(Derivative(g),zz))) @@ pi; 

    den := Denominator(FieldOfFractions(E)!w);
//den;
//Factorization(den);
den_change := false;
 if not ISA(Type(p), RngElt) and Valuation(Order(p)!den, p) gt 0 then
  den_change := true;
  if not IsExport() then
    "Recomputing denominator", den;
  end if;
  val := Valuation(Order(p)!den, p);
  id1 := ideal<Order(p) | den>;
  id1 := id1 / ideal<Order(p) | p>^val;
  den := CRT(ideal<Order(p) | p>, id1, Order(p)!1, Order(p)!0);
  assert w*den in E;
end if;

if not ISA(Type(p), RngElt) then
assert Valuation(Order(p)!den, p) eq 0;
else
assert Valuation(den, p) eq 0;
end if;

    // make w integral in the order we are using
    w *:= den;
    if Type(prec) ne RngIntElt then
	prec := prec[1];
    end if;

if den_change then
    iden := InverseMod(den, p^prec);
    den := 1;
else
    if not ISA(Type(p), RngElt) then
	den, iden := XGCD(den, Minimum(p)^prec);
    else
	den, iden := XGCD(den, p^prec);
    end if;
    // divide by denominator mod p
end if;
    w *:= iden; 

    pp := p;
    w := E!w;
    if not ISA(Type(p), RngElt) then
	pE := E!!p;
	pm := pE;
    else
	pE := p*E;
	pm := p;
    end if;

    p_val := 1;
    dg := Derivative(g);
    //pE;
    // Find to what precision we know the root of the defining polynomial
    // of the subfield
    vprint Subfields,4: "Computing larges modul p^e with g(zz) = 0 mod p^e for initial embedding zz.";
    vtime Subfields,4: e := E!Evaluate(g, zz);
    vtime Subfields,4: e2 := Evaluate(dg, zz)*w - den;
    pEm := pE*pm;
    vtime Subfields,4:
    while func<|(e ne 0 and e mod (pEm) eq 0) and (e2 mod (pEm) eq 0) >() do
//"before", pp;
	pp *:= p;
	p_val +:= 1;
	pE := pEm;
        pEm *:= pm;
    end while;
    vprint Subfields,4:"Initial precision",p_val;

    if not ISA(Type(p), RngElt) then
	vtime Subfields,4: pE := E!!pp;
    else
	pE := pp*E;
    end if;

    if false or Debug then
	"Starting at ", Valuation(pp, p);
	if assigned L`UseGalois then
	      [GetBlock(L`UseGalois, x[1]) : x in Roots(g, F)], B;
	      time assert exists{x : x in Roots(g, F) | GetBlock(L`UseGalois, x[1]) eq B};
	else
	    assert #Roots(g, F) ge 1;
	end if;
    end if;
*/
/*
"z evaluations";
z; zz;
z - Roots(g, F)[2][1];
zz - Roots(g, F)[2][1];
Evaluate(g, Roots(g, F)[2][1]);
[Valuation(x, p) : x in Eltseq(Evaluate(g, z))];
[Valuation(x, p) : x in Eltseq(Evaluate(g, zz))];
*/
    // We do this coercion because we can get some strange random covering
    // structures for which it is really hard to find where they are coming
    // from so we just coerce here instead
    //g := PolynomialRing(E)!g;
/*    if  Debug then
	"Before SubfieldFromBlock lifting loop";
	Evaluate(g, zz);
    end if;
    zz_pow := [1, zz];
    vprint Subfields,4:"Building power list:";
    vtime Subfields,4: 
    for i := 2 to deg_g do
	Append(~zz_pow, zz*zz_pow[i]);
    end for;
    cg := Coefficients(g);
    cdg := Coefficients(dg) cat [0 : i in [Degree(dg) .. deg_g - 1]];
    vtime Subfields,4: egzz := &+[cg[i]*zz_pow[i] : i in [1 .. deg_g + 1]];

    while egzz ne 0 do
        vprint Subfields,4: "Next egzz iteration"; 
	// check we still have the correct setup
	if (assigned L`UseGalois and assigned L`UseGalois`Scale and not IsOne(L`UseGalois`Scale)) or Debug then
	    //"Loop", pp;
	    // [ Valuation(x, p) : x in Eltseq(E!Evaluate(g, zz))];
	    //[ Valuation(x, p) : x in Eltseq(w*E!Evaluate(Derivative(g), zz)-den)];
	    // [ Valuation(x, CoefficientRing(E)!!p) : x in Eltseq(E!Evaluate(g, zz))];
	    // [ Valuation(x, CoefficientRing(E)!!p) : x in Eltseq(w*E!Evaluate(Derivative(g), zz)-den)];
            vprint Subfields,4: "Eval 4";
	    vtime Subfields,4: assert E!Evaluate(g, zz) mod pE eq 0;
	    // w/den is the inverse of g'(z) mod pE
	    vtime Subfields,4: assert E!(Evaluate(Derivative(g), zz)*w) mod pE eq den;
	end if;
        assert2 E!Evaluate(g, zz) mod pE eq 0;
	// w/den is the inverse of g'(z) mod pE
	assert2 E!(Evaluate(Derivative(g), zz)*w) mod pE eq den;
        vprint Subfields,4: "passed assertions";
 	if not false and not IsExport() then
	    if p_val gt 5000 then
		"too much looping in SubfieldFromBlock", p_val, F;
	    end if;
	    if false and ISA(Type(pp), RngUPolElt) and Degree(pp) gt 1000 then 
		    error "too much in SubfieldFromBlock"; 
	    end if;
	end if;

	// square the modulus
	// but why do we divide by den 3 times??
	pp *:= pp;
	p_val *:= 2;
	if not ISA(Type(pp), RngElt) then
	    pp /:= den;
  	    pp /:= den;
	    pp /:= den;
	    pE := E!!pp;
            p_val := p_val - 3 * Valuation(Order(p)!den,p);
	else
	    pp div:= den;
	    pp div:= den;
	    pp div:= den;
	    pE := pp*E;
            p_val := p_val - 3 * Valuation(Order(p)!den,p);
	end if;
	zz := func<|E!zz>();
	//Content(pE);
	zz := func<|zz mod pE>();
	w := func<|E!w mod pE>();
	nz := egzz*w;
	if (assigned L`UseGalois and assigned L`UseGalois`Scale and not IsOne(L`UseGalois`Scale)) or false or Debug then
	    if Type(CoefficientRing(F)) eq FldFun then
		  //assert forall{x : x in Eltseq(E!nz) | Numerator(x, CoefficientRing(E)) mod den eq 0};
	    else
	        assert forall{x : x in Eltseq(E!nz) | Numerator(x) mod den eq 0};
	    end if;
	end if;

	// Really wanted to multiply by w/den, so do the /den bit
	if Type(CoefficientRing(F)) eq FldFun then
	    nz := E![Numerator(x, CoefficientRing(E)) div den : x in Eltseq(E!nz)];
	elif rel then
	    nz := E![Numerator(x) / den : x in Eltseq(E!nz)];
	else
	    nz := E![Numerator(x) div den : x in Eltseq(E!nz)];
	end if;
        nz := func<|E!nz mod pE>();
	zz := zz - nz;
	if Type(CoefficientRing(F)) eq FldFun then
	    time R := ReconstructionEnvironment(p, p_val);
	    zz := E![Reconstruct(CoefficientRing(E)!x, R) : x in Eltseq(zz)];
	elif rel then
	    R := ReconstructionEnvironment(ideal<CoefficientRing(E) | Generators(p)>, p_val);
	    zz := E![Reconstruct(CoefficientRing(E)!x, R : UseDenominator := false) : x in Eltseq(zz)];
	end if;

	zz_pow := [1, zz];
        vprint Subfields,4:"Computing new power list";
        vtime Subfields,4: 
	for i := 2 to deg_g do
            Append(~zz_pow, zz*zz_pow[i]);
	end for;
        vprint Subfields,4:"Evaluating cdg polynomial";
	vtime Subfields,4: nz := w*&+[cdg[i]*zz_pow[i] : i in [1 .. deg_g]];
	// Again really wanted to multiply by w/den so do the /den bit
	if ((assigned L`UseGalois and assigned L`UseGalois`Scale and not IsOne(L`UseGalois`Scale)) or false or Debug) and Type(CoefficientRing(F)) ne FldFun then
	    assert forall{x : x in Eltseq(E!nz) | Numerator(x) mod den eq 0};
	end if;
	if Type(CoefficientRing(F)) eq FldFun then
	    w := w*(2 - E![Numerator(x, CoefficientRing(E)) div den : x in Eltseq(nz)]);
	elif rel then 
	    w := w*(2 - E![Numerator(x) / den : x in Eltseq(nz)]);
	else
	    w := w*(2 - E![Numerator(x) div den : x in Eltseq(nz)]);
	end if;
	denpE := func<|(den*pE)>();
	//Content(denpE);
	w := func<|w mod denpE>();
        vprint Subfields,4:"Evaluating cg polynomial";
	vtime Subfields,4: egzz := &+[cg[i]*zz_pow[i] : i in [1 .. deg_g + 1]];
//        [Valuation(CoefficientRing(E)!a,ideal<CoefficientRing(E) | Generators(p)>) : a in Eltseq(egzz)] ;
    end while;

    return zz;
end function;
*/

/* F : Field
   B : Block-system
   L : p-adic data structure with root ordering
   r : roots in residue class field 


   Structure of block polynomial:

     Block b corresponds to resolvent-root   scale^Degree(T) \prod_{i in b} T(r_i), T is Tschirnhausen transformation
     r_i are the roots of F (not scaled, possible not algebraic integers!)
*/
function sfb_setup(F,B,L)
    if assigned L`UseGalois then	// use roots in correct order
	r := L`UseGalois`Roots;
	_, rfm := ResidueClassField(L`UseGalois`Ring);
	r := [rfm(rr) : rr in r];
    else
	r := L`Prime[4];		// roots in residue field
    end if;

    split := L`Prime[5];   	        // splitting field   
    tschirni := PolynomialRing(Integers()).1;
    rel := false;
    f := DefiningPolynomial(F);
    p := L`Prime[1];

    if Type(F) eq FldFun then
	//tschirni;
	//(L`UseGalois)`max_comp;
	scale := L`UseGalois`Scale;
	// Recompute the tschirni now that we have the scaling factor
	// Here the scaling factor matters since we are not using GaloisRoot
	scale_rf := L`Prime[2](scale);
	theta_k := [scale_rf^Degree(tschirni) * &*[Evaluate(tschirni, r[i]): i in b] : b in B];
	for i in [1 .. Degree(F)] do
	  if #Set(theta_k) eq #B then
	    break;
	  end if;
	  tschirni +:= 1; //CF: wrong in char p - guaranteed to work for number 
			  //fields, see Klueners' thesis
	  theta_k := [scale_rf^Degree(tschirni) * &*[Evaluate(tschirni, r[i]): i in b] : b in B];
	end for;
	no_tschirni := Degree(F);
	while #Set(theta_k) ne #B do
	  //CF: probably too restrictive in general for function fields in char p
	  tschirni := Parent(tschirni)!([Random(3) : i in [1 .. Maximum(2, no_tschirni div 5)]] cat [1]);
	  theta_k := [scale_rf^Degree(tschirni) * &*[Evaluate(tschirni, r[i]): i in b] : b in B];
	  no_tschirni +:= 1;
	end while;

	SL := SLPolynomialRing(Integers(), Degree(F));
	theta_inv := [ &*[SL.i : i in b] : b in B];
	g := &* [Polynomial([-x, 1]) : x in theta_inv];
	cg := Eltseq(g);  // cg are the elementary symmetric functions in the "products over blocks"-polynomials
	for i in [1 .. Degree(g)+1] do  
	    cg[i]`GalInvType := "Other";
	end for;
	bounds := [L`UseGalois`Bound(tschirni, inv, 1) : inv in cg[1 .. #cg - 1]];
        //CF: too slow for large examples, do it directly.

	if Characteristic(F) eq 0 then
	    bound := &+bounds;
	    bound := ChangePrecision(bound, 2*AbsolutePrecision(bound));
	    bound *:= bound;
	    prec := L`UseGalois`GetPrec(bound, L`UseGalois);
	    prec +:= prec;
	    split`DefaultPrecision := prec[1];
	    csplit := CoefficientRing(split);
	    csplit`DefaultPrecision := prec[2];
	    R := L`UseGalois`Roots;
	    if not assigned L`Roots or Precision(L`Roots[1]) lt prec then
		L`Roots := [GaloisRoot(i, L`UseGalois:Prec := prec, Scaled := false) : i in [1 .. Degree(F)]];
	    end if;
	    R := L`Roots;
	    char := Characteristic(L`Prime[3]);
	    half_char := Ceiling(char / 2);
	    back_map := function(x, b)
	        if false and Debug then 
                  "before", x, bound;
                end if;
		bool, x := (L`UseGalois)`IsInt(x, bound, (L`UseGalois) : full);
		if b then
                  assert bool;
		end if;
		return x;
 	    end function;
	else//Char(F) ne 0
	    bound := Maximum(bounds);
	    prec := L`UseGalois`GetPrec(bound, L`UseGalois);
	    if not assigned L`Roots or Precision(L`Roots[1]) lt prec then
		L`Roots := [GaloisRoot(i, L`UseGalois:Prec := prec, Scaled := false) : i in [1 .. Degree(F)]];
	    end if;
	    R := L`Roots;
	    back_map := function(x, b)
		bool, x := (L`UseGalois)`IsInt(x, bound, (L`UseGalois));
		if b then
		  if not bool then
		  F;
		  end if;
                  assert bool;
		end if;
		return x;
	    end function;
	end if;
	from_residue_field_map := Inverse(L`Prime[2]);
    else 
// The number field case: rel if relative
	rel := ISA(Type(CoefficientRing(F)), FldAlg);
	scale := LCM([Denominator(CoefficientRing(F)!x) : x in 
		    Eltseq(Polynomial(CoefficientRing(F), f)/LeadingCoefficient(f))]);
	if not assigned L`max_comp then
            get_max_comp(L, rel, f);
	end if;
        max_comp := L`max_comp;

	// Recompute the tschirni now that we have the scaling factor
	// Here the scaling factor matters since we are not using GaloisRoot
	theta_k := [scale * &*[Evaluate(tschirni, r[i]): i in b] : b in B];
	for i in [1 .. Degree(F)] do
	  if #Set(theta_k) eq #B then
	    break;
	  end if;
	  tschirni +:= 1; //CF: wrong in char p - guaranteed to work for number 
			  //fields, see Klueners' thesis
	  theta_k := [scale * &*[Evaluate(tschirni, r[i]): i in b] : b in B];
	end for;

        vprintf Subfields,3 : "Tschirni is %o\n",tschirni;  

	C := Evaluate(tschirni, max_comp)^#Rep(B) * scale^Degree(tschirni);
	bound := Maximum([Binomial(#B, i)*C^i : i in [1 .. #B]]);
	if rel then
	    Z_k := MaximalOrder(CoefficientField(F));
	    RB := Transpose(RealBasis(Z_k));
	    a,b := SpectralRadius(RB);
	    n := Degree(Z_k);
	    C := 1/b*bound*Sqrt(n);
	    prec := Ceiling(n*Log(C* 2 * 3^(n-1))/Log(Norm(p)));
	else
	    prec := Ceiling(Log(L`Prime[1], 2*bound)) + 1;
	    assert L`Prime[1]^(prec) gt 2*bound;
	end if;

	if prec gt split`DefaultPrecision then
	    SetPrecision(split, prec);
	end if;
	split`DefaultPrecision := prec;

	if rel then
	    ms := L`Prime[6]; // Use L`Prime[6] to map into split
	    f := Polynomial(split, [ms(x) : x in Eltseq(f)]);
	end if;
	if not assigned L`Roots or Precision(L`Roots[1]) lt prec then
	    L`Roots := [ HenselLift(Polynomial(split, f), split!x) : x in r];
	end if;
 	R := L`Roots;
//        vprintf Subfields,3 : "Ring of roots is: %o.\n",Parent(L`Roots[1]) ;   

	if rel then
	    k := CoefficientRing(F);
	    Z_k := MaximalOrder(k);
	    Z := Integers();
	    l_k := Degree(p);
	    back_map := function(x, b) 
		prec := AbsolutePrecision(x);
		x := BaseRing(split)!x;

		M := VerticalJoin(Matrix(Z, [Eltseq(
		    BaseRing(split)!ms(x))
		 : x in Basis(Z_k, k)]), Minimum(p)^prec*IdentityMatrix(Z, l_k));
		f, I := IsConsistent(M, IdentityMatrix(Z, l_k));
		assert f;
		I := Submatrix(I, 1, 1, l_k, Degree(k));
		Zk := Z_k;
		kk := k;
		assert forall{x : x in [1..l_k] |
		    Valuation(ms(Z_k!Eltseq(I[x]))
		  - BaseRing(split)!Eltseq(IdentityMatrix(Z, l_k)[x])) gt 0};

		RE := ReconstructionEnvironment(MaximalOrder(Order(p))!!p, prec);
		x := Matrix(Z, [Eltseq(x)]) * I;
		x := Z_k!Eltseq(x);

		x := Reconstruct(x, RE : UseDenominator := false);
		return x;
	    end function;
	else
	    _B := L`Prime[1]^(split`DefaultPrecision);
	    back_map := Coercion(split, Integers(CoefficientRing(F)));
	    _B2 := _B div 2;
	    back_map := function(x, b) 
	    //x;
		x := back_map(x); 
		return (x gt _B2 select x - _B else x); 
	    end function;
	end if;
	from_residue_field_map := Coercion(Codomain(L`Prime[2]), Integers(CoefficientRing(F)));
    end if;

    return from_residue_field_map,  back_map, rel, split, tschirni, theta_k, scale, prec;
end function;
 

/* F : field
   L : p-adic data structure wirth roots and root-ordering
   B : Blocksystem of subfield */
function SubfieldFromBlock(F, B, L : Opt := false, NumSub := 0)

    vprintf Subfields,3:"Computing subfield to block %o\n", [a : a in B | 1 in a][1];
    tt_sfb := Cputime();
 
    p := L`Prime[1];
    f := DefiningPolynomial(F);
    from_residue_field_map, back_map, rel, split, tschirni, theta_k, scale, prec := sfb_setup(F,B,L);
    R := L`Roots;

    // R contains the roots of the defining polynomial of F in the completion
    // product of roots in a block is a root of the defining polynomial of the 
    // subfield (in theta)
    // theta contains elements of the completion which are the roots of split_g
// "tschirni : ", tschirni;
  
    if assigned L`UseGalois and assigned L`UseGalois`BaseMap then
     scale_bm := L`UseGalois`BaseMap(scale, prec);
    else
     scale_bm := scale;
    end if;
    theta := [scale_bm^Degree(tschirni) * &*[Evaluate(tschirni,  R[i]): i in b] : b in B];
    split_g := &* [Polynomial([-x, 1]) : x in theta];
    if not assigned L`UseGalois then
      // not when UseGalois since then we use different roots so don't expect it
      // to match since we have not updated theta_k
      rf, mrf := ResidueClassField(Universe(theta));
      assert rf eq Universe(theta_k);
      assert theta_k eq [mrf(th) : th in theta];
    end if;
//g;
    // essentially the defining polynomial of the subfield, roots are the elements
    // of theta
    if Type(CoefficientRing(F)) eq FldFun then
	g := Polynomial(MaximalOrderFinite(CoefficientRing(F)), [back_map(x, true) : x in Coefficients(split_g)]);
    else
	g := Polynomial(Integers(CoefficientRing(F)), [back_map(x, true) : x in Coefficients(split_g)]);
    end if;
    g_not_scaled := g; // Don't confuse me with scaling!
    vprintf Subfields,3: "Subfield polynomial: %o\n",g;

    _dg := Discriminant(g);

    // split_g and g are always monic here, are they integral? Depends on whether
    // roots in R are, I think they are because we use GaloisRoot for R rather
    // than `Roots

    // check there is a root of g with block system B
    if false or Debug then 
	gg := Polynomial(split, [L`Prime[6](x) : x in Eltseq(g)]);
	gg - split_g;
	_rt :=  Roots(g, F);
	assert #_rt ge 1;
	if assigned L`UseGalois then
	    _brt := [GetBlock(L`UseGalois, x[1]) : x in _rt];
	    assert exists(x){x : x in [1..#_rt] | _brt[x] eq B};
	    "found block system!!!", _brt[x], _rt[x];
	end if;
    end if;

    GFp := L`Prime[2]; 
    // All the roots of the defining polynomial of F in blocks
    rcat := &cat [ [FieldOfFractions(split) | scale_bm * R[i] : i in b] : b in B];
    // All the roots of the defining polynomial of the subfield (contains duplicates)
    thetacat := &cat [ [FieldOfFractions(split) | theta[j] : i in [1 .. #Rep(B)]] : j in [1..#B]];
    // Map roots of defining polynomial of F to roots of defining polynomial 
    // of subfield, which are products of such roots
    // Map each root to the product of roots which contains it
    // This is still over the completion
    I := Interpolation(rcat, thetacat);
    assert2 &and[IsWeaklyZero(Evaluate(I, rcat[i]) - thetacat[i]): i in [1 .. #rcat]];

    J := I;
    //integral element * discriminant \in equation order
    // Want a polynomial with roots integral_element * discriminant?
    // Want a polynomial over SOME equation order? 
    _f := DefiningPolynomial(F);
    _f := Polynomial([x/l : x in Eltseq(_f)]) where l := LeadingCoefficient(_f);

    // _df := Discriminant(_f); old _df no longer used!
    if Type(CoefficientRing(F)) eq FldFun then
	_d := Lcm([Denominator(x, MaximalOrderFinite(CoefficientRing(F))) : x in Eltseq(_f)]);
    else 
	_d := Lcm([Denominator(CoefficientField(F)!x) : x in Eltseq(_f)]);
    end if;
    if Type(F) eq FldFun then
	_df := Denominator(L`fs_alpha_inv, MaximalOrderFinite(F));
    else 
	_df := Denominator(L`fs_alpha_inv);
    end if;

if not ISA(Type(p), RngElt) then
assert Valuation(Order(p)!_df, p) eq 0;
else
assert Valuation(Parent(p)!_df, p) eq 0;
end if;
//    _df *:= scale^(n*(n - 1)) where n is Degree(F);
   _df *:= scale^(n) where n is Degree(F);
if not ISA(Type(p), RngElt) then
assert Valuation(Order(p)!_df, p) eq 0;
else
assert Valuation(Parent(p)!_df, p) eq 0;
end if;
 
    if Type(CoefficientRing(_f)) eq FldFun then
	//assert Denominator(_df, MaximalOrderFinite(CoefficientRing(_f))) eq 1;
	//_df := Numerator(_df, MaximalOrderFinite(CoefficientRing(_f))); // to change type to poly
    else
	assert Denominator(_df) eq 1;
	_df := Numerator(_df); // to change type??? 
    end if;
    if assigned L`UseGalois then
	_ddf :=  L`UseGalois`BaseMap(_df, prec);
    elif rel then
	ms := L`Prime[6];
	_ddf :=  ms(_df);
    else
	_ddf :=  split!_df;
    end if;
    // need to make sure coeffs of I are integral so the back_map will succeed
    // now maps rcat[i] to _ddf*thetacat[i]
    I *:= _ddf;
    I := Polynomial(F, [back_map(c, false) : c in Coefficients(I)]);
    JJ := I;

// Replace g by polynomial with roots scaled by _df:
    real_g := g;
    rf := func<x|Polynomial(Reverse(Eltseq(x)))>;
    ng := rf(Evaluate(rf(g), Parent(g).1*CoefficientRing(g)!_df));
    g := Parent(g)!ng; 

    if Debug then
      "g with scaled roots:", g;
    end if;
    split_g := Parent(split_g)!rf(Evaluate(rf(split_g), Parent(split_g).1*CoefficientRing(split_g)!_ddf));

    if false or Debug and assigned L`UseGalois then 
	"Root check";
	time assert exists{x : x in Roots(g, F) | GetBlock(L`UseGalois, x[1]) eq B};
    end if;

    // I maps the roots of the defining polynomial of F to roots of the defining
    // polynomial of the subfield
    // So z should be (an approximation to) a root of the defining polynomial
    // of the subfield (a primitive element)
    z := Evaluate(I, F.1 * scale);

    if Type(F) eq FldFun then
	E := CoefficientRing(EquationOrderFinite(F));
	if Type(E) eq RngFunOrd then
	    E := MaximalOrder(E);
	end if;
	if not assigned L`EquationOrder then
	    L`EquationOrder := Order(E, [(F.1*scale)^i : i in [0..Degree(F)-1]] : Order, Verify := false);
	end if;
	E := L`EquationOrder;
	//assert Basis(E, F) eq Basis(EquationOrderFinite(F), F);
	//E := EquationOrderFinite(F);
    else
	if not assigned L`EquationOrder then
	    L`EquationOrder := Order([(F.1*scale)^i : i in [0..Degree(F)-1]] : Order, Verify := false);
	end if;
	E := L`EquationOrder;
    end if;

    tt_emb := Cputime();
// z is an appoximation of the embedding. 
    suc := false; 
    if (not rel) and (CoefficientField(F) cmpeq Rationals()) then
      suc, zz :=  LiftEmbeddingANF(E!z, L, E, g_not_scaled, _df, 1/_df);
    end if;
    if not suc then // Use old code
      zz := E!z;
      vtime Subfields,4: eval_g_z := Evaluate(g, z);
      if eval_g_z ne 0 then // Check for exact root
 /*       zz := LiftEmbeddingGeneral(E, F, L, B, g, 
                                   rel, prec, _df, p, zz, scale); */
        vtime Subfields,4: eval_g_z := Evaluate(g, z);
    // Check for exact root
        vprintf Subfields,3: "Further lifting for embedding needed.\n"; 

	// Need to lift
	dg := Derivative(split_g);
	if false and assigned L`UseGalois then
	    dg := Polynomial([L`UseGalois`BaseMap(c, prec) : c in Eltseq(Derivative(g))]);
	end if;

	// Ie maps roots in rcat (rcat[i]) to 1/g'(_ddf*thetacat[i])???
	// This will compute w = 1/g'(z) where z = I(F.1*scale)
	// and I maps rcat[i] to _ddf*thetacat[i]
        Ie := Interpolation(rcat, [1/Evaluate(dg, t*_ddf) :t in thetacat]);

	//_dg := Discriminant(g);
	deg_g := Degree(g);
	_dg *:= (_df)^(deg_g*(deg_g - 1));
	if false and assigned L`UseGalois then
	    Ie *:= L`UseGalois`BaseMap(_dg, prec);
	else 
	    Ie *:= Discriminant(split_g);
	end if;
	// Ie now maps rcat[i] to _dg/(g'(_ddf*thetacat[i]))
	Ie := Polynomial([back_map(c, false) : c in Coefficients(Ie)]);
	//Ie;
	//Parent(Ie);
	//Polynomial(Integers(),Ie);

	// Unused! and this is the only use of GFp
	//J := Polynomial([GFp(c) : c in Coefficients(I)] cat [Codomain(GFp)!0]);

if not ISA(Type(p), RngElt) then
assert Valuation(Order(p)!_dg, p) eq 0;
else
assert Valuation(Parent(p)!_dg, p) eq 0;
end if;
	// Want w to be the inverse of g'(zz) for use in lifting
        w := Evaluate(Ie,F.1*scale);
if not ISA(Type(p), RngElt) then
assert &and[Valuation(FieldOfFractions(Order(p))!x, p) ge 0 : x in Eltseq(w)];
else
assert &and[Valuation(FieldOfFractions(Parent(p))!x, p) ge 0 : x in Eltseq(w)];
end if;
	// remove discriminant scaling so w is now 1/g'(I()) = 1/g'(z)
	w := w/_dg;

	den := Denominator(FieldOfFractions(E)!w);
//den;
//Factorization(den);
den_change := false;
 if not ISA(Type(p), RngElt) and Valuation(Order(p)!den, p) gt 0 then
  den_change := true;
  if not IsExport() then
    "Recomputing denominator", den;
  end if;
  val := Valuation(Order(p)!den, p);
  id1 := ideal<Order(p) | den>;
  id1 := id1 / ideal<Order(p) | p>^val;
  den := CRT(ideal<Order(p) | p>, id1, Order(p)!1, Order(p)!0);
  assert w*den in E;
end if;


if not ISA(Type(p), RngElt) then
/*
fd := Factorization(den);
dden := &cat[[<__d[1], __d[2]*x[2]> : __d in _d] where _d := Decomposition(Order(p), x[1]) : x in fd];
dden_nop := [x : x in dden | Valuation(x[1], p) eq 0];
den2 := &*[b^x[2] where _, b := TwoElement(x[1]) : x in dden_nop];
den2;
_w := w*den;
w*den2 in E;
*/
assert Valuation(Order(p)!den, p) eq 0;
else
assert Valuation(den, p) eq 0;
end if;

	// make w integral in the order we are using
	w *:= den;
	if Type(prec) ne RngIntElt then
	    prec := prec[1];
	end if;

if den_change then
 iden := InverseMod(den, p^prec);
 den := 1;
else
	if not ISA(Type(p), RngElt) then
	    den, iden := XGCD(den, Minimum(p)^prec);
	else
	    den, iden := XGCD(den, p^prec);
	end if;
	// divide by denominator mod p
end if;
	w *:= iden; 

	pp := p;
	w := E!w;
	if not ISA(Type(p), RngElt) then
	    pE := E!!p;
	    pm := pE;
	else
	    pE := p*E;
	    pm := p;
	end if;

	p_val := 1;
	dg := Derivative(g);
    //pE;
	// Find to what precision we know the root of the defining polynomial
	// of the subfield
	vprint Subfields,4: "Computing larges modul p^e with g(zz) = 0 mod p^e for initial embedding zz.";
        vtime Subfields,4: e := E!Evaluate(g, zz);
	vtime Subfields,4: e2 := Evaluate(dg, zz)*w - den;
        pEm := pE*pm;
        vtime Subfields,4:
	while func<|(e ne 0 and e mod (pEm) eq 0) and (e2 mod (pEm) eq 0) >() do
//"before", pp;
	  pp *:= p;
	  p_val +:= 1;
	  pE := pEm;
          pEm *:= pm;
//pp;
	end while;
        vprint Subfields,4:"Initial precision",p_val;
//p_val;
	if not ISA(Type(p), RngElt) then
	    vtime Subfields,4: pE := E!!pp;
	else
	    pE := pp*E;
	end if;

	if false or Debug then
	  "Starting at ", Valuation(pp, p);
	  if assigned L`UseGalois then
	      [GetBlock(L`UseGalois, x[1]) : x in Roots(g, F)], B;
	      time assert exists{x : x in Roots(g, F) | GetBlock(L`UseGalois, x[1]) eq B};
	  else
	    assert #Roots(g, F) ge 1;
	  end if;
	end if;

/*
"z evaluations";
z; zz;
z - Roots(g, F)[2][1];
zz - Roots(g, F)[2][1];
Evaluate(g, Roots(g, F)[2][1]);
[Valuation(x, p) : x in Eltseq(Evaluate(g, z))];
[Valuation(x, p) : x in Eltseq(Evaluate(g, zz))];
*/
	// We do this coercion because we can get some strange random covering
	// structures for which it is really hard to find where they are coming
	// from so we just coerce here instead
	//g := PolynomialRing(E)!g;
	if  Debug then
	    "Before SubfieldFromBlock lifting loop";
	    Evaluate(g, zz);
	end if;
	zz_pow := [1, zz];
        vprint Subfields,4:"Building power list:";
        vtime Subfields,4: 
	for i := 2 to deg_g do
	    Append(~zz_pow, zz*zz_pow[i]);
	end for;
	cg := Coefficients(g);
	cdg := Coefficients(dg) cat [0 : i in [Degree(dg) .. deg_g - 1]];
	vtime Subfields,4: egzz := &+[cg[i]*zz_pow[i] : i in [1 .. deg_g + 1]];
	//egzz := Evaluate(g, zz);
	//assert egzz eq Evaluate(g, zz);
	while egzz ne 0 do
            vprint Subfields,4: "Next egzz iteration"; 
	    // check we still have the correct setup
	    if (assigned L`UseGalois and assigned L`UseGalois`Scale and not IsOne(L`UseGalois`Scale)) or Debug then
	      //"Loop", pp;
	      // [ Valuation(x, p) : x in Eltseq(E!Evaluate(g, zz))];
	      //[ Valuation(x, p) : x in Eltseq(w*E!Evaluate(Derivative(g), zz)-den)];
	      // [ Valuation(x, CoefficientRing(E)!!p) : x in Eltseq(E!Evaluate(g, zz))];
	      // [ Valuation(x, CoefficientRing(E)!!p) : x in Eltseq(w*E!Evaluate(Derivative(g), zz)-den)];
              vprint Subfields,4: "Eval 4";
	      vtime Subfields,4: assert E!Evaluate(g, zz) mod pE eq 0;
	      // w/den is the inverse of g'(z) mod pE
	      vtime Subfields,4: assert E!(Evaluate(Derivative(g), zz)*w) mod pE eq den;
	    end if;
	    if false then
	      assert E!Evaluate(g, zz) mod pE eq 0;
	      // w/den is the inverse of g'(z) mod pE
	      assert E!(Evaluate(Derivative(g), zz)*w) mod pE eq den;
    "passed assertions";
	    end if;
	    if not false and not IsExport() then
		if p_val gt 5000 then
		    "too much looping in SubfieldFromBlock", p_val, F;
		end if;
		if false and ISA(Type(pp), RngUPolElt) and Degree(pp) gt 1000 then 
		    error "too much in SubfieldFromBlock"; 
		end if;
	    end if;

	    // square the modulus
	    // but why do we divide by den 3 times??
	    pp *:= pp;
	    p_val *:= 2;
	    if not ISA(Type(pp), RngElt) then
		pp /:= den;
		pp /:= den;
		pp /:= den;
		pE := E!!pp;
	    else
		pp div:= den;
		pp div:= den;
		pp div:= den;
		pE := pp*E;
	    end if;
	    zz := func<|E!zz>();
	    //Content(pE);
	    zz := func<|zz mod pE>();
	    w := func<|E!w mod pE>();
	    nz := egzz*w;
	    if (assigned L`UseGalois and assigned L`UseGalois`Scale and not IsOne(L`UseGalois`Scale)) or false or Debug then
		if Type(CoefficientRing(F)) eq FldFun then
		  //assert forall{x : x in Eltseq(E!nz) | Numerator(x, CoefficientRing(E)) mod den eq 0};
		else
		  assert forall{x : x in Eltseq(E!nz) | Numerator(x) mod den eq 0};
		end if;
	    end if;
	    // Really wanted to multiply by w/den, so do the /den bit
	    if Type(CoefficientRing(F)) eq FldFun then
		nz := E![Numerator(x, CoefficientRing(E)) div den : x in Eltseq(E!nz)];
	    elif rel then
		nz := E![Numerator(x) / den : x in Eltseq(E!nz)];
	    else
		nz := E![Numerator(x) div den : x in Eltseq(E!nz)];
	    end if;
            nz := func<|E!nz mod pE>();
	    zz := zz - nz;
	    if Type(CoefficientRing(F)) eq FldFun then
		time R := ReconstructionEnvironment(p, p_val);
		zz := E![Reconstruct(CoefficientRing(E)!x, R) : x in Eltseq(zz)];
	    elif rel then
	        R := ReconstructionEnvironment(ideal<CoefficientRing(E) | Generators(p)>, p_val);
		zz := E![Reconstruct(CoefficientRing(E)!x, R : UseDenominator := false) : x in Eltseq(zz)];
	    end if;
	    zz_pow := [1, zz];
            vprint Subfields,4:"Comuting new power list";
            vtime Subfields,4: 
	    for i := 2 to deg_g do
        	Append(~zz_pow, zz*zz_pow[i]);
	    end for;
            vprint Subfields,4:"Evaluating cdg polynomial";
	    vtime Subfields,4: nz := w*&+[cdg[i]*zz_pow[i] : i in [1 .. deg_g]];
	    // Again really wanted to multiply by w/den so do the /den bit
	    if ((assigned L`UseGalois and assigned L`UseGalois`Scale and not IsOne(L`UseGalois`Scale)) or false or Debug) 
               and Type(CoefficientRing(F)) ne FldFun then
	      assert forall{x : x in Eltseq(E!nz) | Numerator(x) mod den eq 0};
	    end if;
	    if Type(CoefficientRing(F)) eq FldFun then
		w := w*(2 - E![Numerator(x, CoefficientRing(E)) div den : x in Eltseq(nz)]);
	    elif rel then 
		w := w*(2 - E![Numerator(x) / den : x in Eltseq(nz)]);
	    else
		w := w*(2 - E![Numerator(x) div den : x in Eltseq(nz)]);
	    end if;
	    denpE := func<|(den*pE)>();
	    //Content(denpE);
	    w := func<|w mod denpE>();
            vprint Subfields,4:"Evaluating cg polynomial";
	    vtime Subfields,4: egzz := &+[cg[i]*zz_pow[i] : i in [1 .. deg_g + 1]];
	    //egzz := Evaluate(g, zz);

	end while;
      end if;
    end if;

    if Debug  then
      "SubfieldFromBlock: Lifting done. Storing result in internal format.";
    end if;
    if CoefficientField(F) cmpeq Rationals() then
        g := Polynomial(CoefficientField(F), g);
        g := Evaluate(g, Parent(g).1*_df);
	g := g/LeadingCoefficient(g);
	g *:= LCM([Denominator(xx) : xx in Coefficients(g)]);
    end if;
    subF := ext<CoefficientField(F) | real_g : Global := false>;
    proc<|Embed(subF, F, zz/_df)>();

    vprintf Subfields,3: "Time for embedding: %o\n", Cputime(tt_emb); 

    if true or NumSub lt SubGraphLimit then
	assert2 Evaluate(DefiningPolynomial(subF), F!zz/_df) eq 0;
	assert2 Evaluate(DefiningPolynomial(subF), F!subF.1) eq 0;
	assert2 F!subF.1 eq F!zz/_df;
    else 
"NumSub = ", NumSub;
    end if;
//MinimalPolynomial(zz/_df); g;
//subF, _subF;
    if Opt and Degree(F) eq AbsoluteDegree(F) and Degree(subF) lt 5 then
	O, mp := OptimizedRepresentation(subF);
//"subF : ", subF;
//"O : ", O;
	O := sub<F | mp(O.1)>;
	if Valuation(Discriminant(DefiningPolynomial(O)), p) eq 0 then
	    subF := O;
	end if;
    end if;
    vprintf Subfields,3: "Time for SubfieldFromBlock: %o\n",Cputime(tt_sfb);
    return subF;
end function;

intrinsic OptimizedRepresentation(K::FldFun[FldFunRat]) -> FldFun, Map
  {}
  M := MaximalOrderFinite(K);
  require   IsAbsoluteOrder(M) : "Field must be an absolute extension";

  b:= ShortBasis(Divisor(1*M));

  i := 1;
  mf := false;
  e := false;
  fe := false;
  repeat
    if i le Degree(K) then
      n := b[i];
    else
      n := Random(b) + Random(b);
    end if;
    f := MinimalPolynomial(n);
    if Degree(f) eq Degree(K) then
      if mf cmpeq false then
        e := n;
        fe := f;
        mf := &+([ Degree(x) : x in Eltseq(f)]);
      else
        nf := &+([ Degree(x) : x in Eltseq(f)]);
        if nf lt mf then
          e := n;
          fe := f;
          mf := nf;
        end if;
      end if;
    end if;
    i +:=1;
  until i gt Degree(K)^2 and mf cmpne false;


  L := FunctionField(fe);
  mp := hom<L -> K | e>;

  return L, mp;
end intrinsic;

/*
intrinsic SFB(a,b,c) -> .
  {}
  return SubfieldFromBlock(a, b, c);
end intrinsic;
*/

procedure NextSubfields(F, S, L, e, s, subfields)
/*
This procedure implements the algorithm NextSubfields of van Hoeij and Klueners
F is the field we are computing subfields of
S is a sequence of tuples <gen_subf, B> where B is a set (block system)
which is the second 
entry of the tuples in the subfield lattice, holding a generating set for the 
subfields
L is a tuple of the top of the subfield lattice <LL, B> where LL is a subfield 
of F
e is as described in van Hoeij and Klueners (pg 3)
s is as described in van Hoeij and Klueners (pg 3)
subfields is the subfield lattice which we are adding subfields to
*/

//"NextSubfields In";
//F;
//S;
//L;
//e;
//s;
//subfields;
    for i := s + 1 to #S do
	if e[i] ne 0 then
	    continue;
	end if;
	//Step 1 : take intersection
	M := InternalGaloisSubfieldLatticeMeet(S[i][2], L[2]);
	et := [];
	append := true;

	if #M eq 1 then
	  continue;
	end if;

//"NextSubfields", i;
	// Step 2 : find the e tuple for M
	// and check the condition on the e[j] as in step 3
	for j := 1 to i - 1 do
	    // assign et[j]
	    if InternalGaloisSubfieldLatticeSubset(M, S[j][2]) then
		Append(~et, 1);
		if et[j] gt e[j] then
		    append := false;
		end if;
	    else 
		Append(~et, 0);
	    end if;
	end for;
	for j := i to #S do 
	    // assign et[j]
	    if InternalGaloisSubfieldLatticeSubset(M, S[j][2]) then
		Append(~et, 1);
	    else 
		Append(~et, 0);
	    end if;
	end for;
	// Step 3 : If condition on e[j] was satisfied then keep M
	// (intersect the actual fields rather than lattice stuff)
	// and recurse
	if append then
	    df := DefiningPolynomial(F);
	    //if not false and IsMonic(df) and LCM([Denominator(c) : c in Coefficients(df)]) eq 1 then
	    if M eq S[i][2] then
		LL := S[i][1];
	    elif exists(j){j: j in [1 .. #subfields`Fields] | M eq subfields`Fields[j][2]} then
		LL := subfields`Fields[j][1];
	    else
                LL := SubfieldFromBlock(F, M, subfields : NumSub := #subfields`Fields);
		f := InternalGaloisSubfieldLatticeAddField(subfields, LL: B := M);
		assert f;
	    end if;
	    NextSubfields(F, S, <LL, M>, et, i, subfields);
	end if;
    end for;
//"NextSubfields Out";
end procedure;


intrinsic Subfields(F::FldAlg : Current := false, Al := "Default", Proof := 1) -> SeqEnum
{Return the subfields of the algebraic field F};
    require IsSimple(F) : "Field must be a simple extension";
    if Current or (assigned F`SubfieldLattice and F`SubfieldLattice`Complete) then
	if assigned F`SubfieldLattice then
	    l := F`SubfieldLattice;
	    return [<x[1], Coercion(x[1], F)> : x in l`Fields], l;
	else
	    l := InternalGaloisSubfieldLatticeCreate(F);
	    return [], l;
	end if;
    end if;
    if Al eq "Klueners" and CoefficientField(F) eq Rationals() then 
	// Could improve this to put the subfield lattice into the internal stuff?
	l := InternalGaloisSubfieldLatticeCreate(F);
        FindPrime(Degree(F)^2,l);
	if not l`Complete then
	    S := InternalSubfields(F);
	    for s in S do 
		_ := InternalGaloisSubfieldLatticeAddField(l, s[1]);
	    end for;
	    l`Complete := true;
	    l`GeneratingComplete := true;
	end if;
	return [<x[1], Coercion(x[1], F)> : x in l`Fields], l;
	return S, l;
    end if;
    // Can't store the subfields of relatives yet - not internally anyway
    if Al in {"KvH", "KluenersvanHoeij"} or CoefficientField(F) ne Rationals() then
	return SubfieldsOfAll(F : Proof := Proof);
    end if;
    assert CoefficientField(F) eq Rationals();
    require Al eq "Default" : "Parameter Al must be one of \"Default\", \"Klueners\", \"KluenersvanHoeij\"";
    return SubfieldsOfAll(F : OptAlg := true, Proof := Proof);
end intrinsic;

function triple_relative_subfields(F : Current := false)
    if Type(F) eq FldFun then
	A := RationalExtensionRepresentation(CoefficientField(F));
	AF := ext<A | DefiningPolynomial(F)>;
	subfields := Subfields(AF);
    else 
	A := AbsoluteField(CoefficientField(F));
	AF := ext<A | DefiningPolynomial(F) : Check := false>;
	subfields := Subfields(AF : Current := Current);
    end if;
    //return [<x[1], Coercion(x[1], F)> : x in l`Fields], l;
    S := [CartesianProduct(PowerStructure(Type(F)), PowerStructure(Map))|];
    for x in subfields do
	subf := sub<F | F!Eltseq(AF!x[1].1)>;
	Append(~S, <subf, Coercion(subf, F)>);
    end for;
    return S;
end function;

intrinsic Subfields(F::FldFun[FldFun[FldFun]]) -> SeqEnum
{Return the subfields of the function field F};
    require IsSimple(F) : "Field must be a simple extension";
    return triple_relative_subfields(F);
end intrinsic;

intrinsic Subfields(F::FldAlg[FldAlg[FldAlg]] : Current := false) -> SeqEnum
{Return the subfields of the algebraic field F};
    require IsSimple(F) : "Field must be a simple extension";
    return triple_relative_subfields(F : Current := Current);
end intrinsic;

intrinsic Subfields(F::FldFun[FldFunRat[FldFin]]) -> SeqEnum
{Return the subfields of the global function field F};
    require IsSimple(F) : "Field must be a simple extension";
    return SubfieldsOfAll(F);
end intrinsic;

intrinsic Subfields(F::FldFun[FldFun]) -> SeqEnum
{Return the subfields of the function field F represented relatively};
    require IsSimple(F) : "Field must be a simple extension";
    return SubfieldsOfAll(F);
end intrinsic;

// Use FldAlg[FldAlg[FldRat]] for any higher towers as per Subfields
intrinsic GeneratingSubfields(F::FldAlg : Proof := 1) -> SeqEnum
{Return the generating subfields of the algebraic field F};
    l := InternalGaloisSubfieldLatticeCreate(F);
    g := GeneratingSubfieldsFunc(F, l: OptAlg := true);
    if g cmpeq false then
	assert CoefficientField(F) eq Rationals();
	_, l := Subfields(F : Al := "Klueners");
    end if;
    g := InternalSubfieldLatticeGetGeneratingSubfields(l);
    return g;
end intrinsic;

function triple_relative_generating_subfields(F)
    if Type(F) eq FldFun then
	A := RationalExtensionRepresentation(CoefficientField(F));
	AF := ext<A | DefiningPolynomial(F)>;
    else 
	A := AbsoluteField(CoefficientField(F));
	AF := ext<A | DefiningPolynomial(F)>;
    end if;
    subfields := GeneratingSubfields(AF);
    //return [<x[1], Coercion(x[1], F)> : x in l`Fields], l;
    S := [];
    for x in subfields do
	subf := sub<F | F!Eltseq(AF!x.1)>;
	Append(~S, subf);
    end for;
    return S;
end function;

intrinsic GeneratingSubfields(F::FldAlg[FldAlg[FldAlg]]) -> SeqEnum
{Return the generating subfields of the algebraic field F};
    return triple_relative_generating_subfields(F);
end intrinsic;

// Use FldFun[FldFun[FldFunRat]] for any higher towers as per Subfields
intrinsic GeneratingSubfields(F::FldFun) -> SeqEnum
{Return the generating subfields of the function field F};
    l := InternalGaloisSubfieldLatticeCreate(F);
    g := GeneratingSubfieldsFunc(F, l);
    g := InternalSubfieldLatticeGetGeneratingSubfields(l);
    return g;
end intrinsic;

intrinsic GeneratingSubfields(F::FldFun[FldFun[FldFun]]) -> SeqEnum
{Return the generating subfields of the function field F};
    return triple_relative_generating_subfields(F);
end intrinsic;

function generating_subfields_as_lattice(F, l : Proof := 1)
    S := GeneratingSubfieldsFunc(F, l : Proof := Proof);
    S := InternalSubfieldLatticeGetGeneratingSubfields(l);
    return l, [<s, Coercion(s, F)> : s in S];
end function;

intrinsic GeneratingSubfieldsLattice(F::FldAlg : Proof := 1) -> Any, SeqEnum
{Return the generating subfields of F in a subfield lattice};
    require CoefficientField(F) cmpeq Rationals() or CoefficientField(CoefficientField(F)) cmpeq Rationals() : "Extension must be absolute or simple relative";
    l := InternalGaloisSubfieldLatticeCreate(F);
    return generating_subfields_as_lattice(F, l : Proof := Proof);
end intrinsic;

intrinsic GeneratingSubfieldsLattice(F::FldFun) -> Any, SeqEnum
{Return the generating subfields of F in a subfield lattice};
    require Type(CoefficientField(F)) ne FldFun or Type(CoefficientField(CoefficientField(F))) ne FldFun : "Extension must be absolute or simple relative";
    l := InternalGaloisSubfieldLatticeCreate(F);
    return generating_subfields_as_lattice(F, l);
end intrinsic;

intrinsic GeneratingSubfieldsLattice(F::FldFun, S::GaloisData) -> Any, SeqEnum
{Return the generating subfields of F in a subfield lattice};
    require Type(CoefficientField(F)) ne FldFun or Type(CoefficientField(CoefficientField(F))) ne FldFun : "Extension must be absolute or simple relative";
    l := InternalGaloisSubfieldLatticeCreate(F, S);
    return generating_subfields_as_lattice(F, l);
end intrinsic;

intrinsic 'meet'(F::FldAlg, K::FldAlg) -> FldAlg
{Return the intersection of F and K if they have a covering structure};

    has, FK := ExistsCoveringStructure(F, K);
    require has : "Fields must have a covering structure";
    return IntersectionFunc(F, K, FK);

end intrinsic;


