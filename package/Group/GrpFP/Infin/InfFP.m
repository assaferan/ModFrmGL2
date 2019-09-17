freeze;

//===============================================================
//    IsInfiniteFPGroup package V05    03-07-17  0100
//                              V05-1  31-07-17
//                              V06    30-06-18
//
declare verbose InfGrp, 3;

// Definition of status records for each type of epi-search. Purpose
// is to enable restart processing of epimorphisms not yet considered.

    L2QRec := recformat<    Typ:MonStgElt,
                            L2Obj,
                            Proj:MonStgElt,
                            Dim:RngIntElt,
                            Prime:RngIntElt,
                            Exp:RngIntElt,
                            EExp,
                            Fin:BoolElt,
                            FFCard:RngIntElt,
                            Epi,
                            Quo:Grp,
                            Phi,
                            Ord:RngIntElt,
                            Deg:RngIntElt,
                            HPc
                       >;

    SimQRec := recformat<Typ, Nme, Epi, Quo, Phi, Ord, Deg, Fac, HPc>;
    SubRec  := recformat<Typ, Sub, Ind, Epi, Quo, Phi, Ord, Deg, CF, Abl, Hpc>;
    NorRec  := recformat<Typ, Sub, Ind, Epi, Quo, Phi, Ord, Deg, CF, Abl, Hpc>;

//====================================================================
//

    OrderPSL2 := func< q | (q*(q^2-1)) div GCD(2, q-1) >;
    OrderPGL2 := func< q | (q-1)*q*(q+1) >;

//====================================================================
//

 IsL2Infinite := function(G);

    inf := false;
    Qs := L2Quotients(G);
    for i := 1 to #Qs do
          Q := Qs[i];
          I := Q`Ideal;
          l2t := l2TypeAsTuple(I);
          T := <Q, l2t[1], l2t[2], l2t[3], l2t[4], l2t[5]>;
          if l2t[3] eq 0 or l2t[4] eq 0 then
             inf := true;
             return inf;
          end if;
       end for;
       return inf;

 end function;

//====================================================================
// Find the smallest prime not diviving the order of group G

  SmallestPrimeNotDividingOld := function(G)

    n := #G;
    ff := Factorisation(#G);
    fprimes := { ff[i][1] : i in [1..#ff] };
    for p in [ p : p in [1 .. NextPrime(ff[#ff][1]) ] | IsPrime(p) ] do
       if p notin fprimes then
          q := p;
          break;
       end if;
    end for;
    return q;
  
  end function;

//====================================================================
// Find the smallest prime greater than 2^16 not diviving the order G

  SmallestPrimeNotDividing := function(G)

    n := #G;
    ff := Factorisation(#G);
    fprimes := { ff[i][1] : i in [1..#ff] };
    r := 2^16;
    repeat
       p := NextPrime(r);
       r := p;
    until p notin fprimes;
  
   return p;

  end function;

//======================================================================
//
// Apply Holt-Plesken criteria -- general version
//

  intrinsic HasPositiveH1Dimension( F::GrpFP, phi::HomGrp, Des::Tup : 
                              ESLimit := 10000, DBIrrs := true, CmpIrrs := true) -> BoolElt, Tup
        { Given an fp-group F and an epimorphism phi of F onto a permutation group H, this intrinsic
        returns true if some rational representation of H lifts to a rational representation of F
        whose first cohomology group is non-trivial. By a result of Holt and Plesken this shows that
        F is infinite. The vararg ESLimit allows the user to place a limit on the dimension of
        exterior squares for which the Holt-Plesken test will be applied. If DBIrrs is set to true
        then Magma will use irreducibles for H if available in the Rational Representations Database.
        If CmpIrrs is set to true then Magma will construct rational irreducible representations for
        H if they are not present in the database. Setting both false specifies that the test should
        be applied only to the permutation module and its exterior square.  Note that this version 
        is only intended to be called internally. For all other uses the two-argument version should 
        be used. }

   H1DimExtSquare := function( F, phi, ext_dim )
      zeit := Cputime();
      Z := Integers();
      h1dim := H1DimensionExteriorSquare(F, phi, Z);
      vprintf InfGrp, 1 : "    H1Dim (%o) for exterior square of perm module of dim %o took %o secs\n",
                               h1dim, ext_dim, Cputime(zeit);
      return h1dim;
   end function;

  // Max degree of computed rational irreducibles
  IrrDegBnd  := 500;
  // Max degree of module for (redundant) H1Dim ne 0 test
  ModpBnd    := 150;

  Z := Integers();
  Q := Rationals();
  H := Image(phi);
  p := SmallestPrimeNotDividing(H);
  K := GF(p);
  des := Des;
  zeit := Cputime();
  IndentPush(1);

  d := Degree(H);
  Zeit := Cputime();

  // Test whether H-P condition holds for perm module

  zeit := Cputime();
  dim := d;
  h1dim :=  H1Dimension(F, phi, Z);
  if h1dim ne 0 then
     vprintf InfGrp, 1 : "    H1Dim (%o) for perm module of dimension %o took %o seconds\n",
                              h1dim, dim, Cputime(zeit);
     vprintf InfGrp, 1 : "Checking Holt-Plesken condition took %o seconds.\n", Cputime(zeit);
     IndentPop(1);
     des[4]:= "HP"; des[5] := "PM"; des[6] := d; des[7] := h1dim;
     return true, des;
  end if;

  // Test whether H-P condition holds for exterior square of perm module

  ext_dim := (d*(d - 1)) div 2;
  bound :=  ESLimit;
  if DBHasIrreducibleModules(H) then 
      bound := 50000;
  end if;
  
  ExSqrLimit1 := ESLimit div 4;
  ExSqrDone := false;
  if ext_dim le ExSqrLimit1 then
     h1dim := H1DimExtSquare(F, phi, ext_dim);
     if h1dim ne 0 then 
         vprintf InfGrp, 1 : "Checking Holt-Plesken condition took %o seconds.\n", Cputime(zeit);
         des[4]:= "HP"; des[5] := "ES"; des[6] := ext_dim; des[7] := h1dim;
         IndentPop(1);
         return true, des; 
     end if;
     ExSqrDone := true;
  end if; // d*(d - 1)) div 2 le ESLimit (def 50000)
                  
  // Compute irreducibles of H and test whether any satisfy H-P condition
  // Skip cases where the irreducibles cant be found

  zeit0 := Cputime();
  IM := [];
  if DBIrrs and DBHasIrreducibleModules(H) then
     IM := DBIrreducibleQGModules(H);
     vprintf InfGrp, 2 : "    Dimensions of database irreducibles: %o\n", [Dimension(m) : m in IM];

  elif CmpIrrs and IsEmpty(IM) and (#H lt 10^12 and #Classes(H) lt 500) then   
     zeit1 := Cputime();
     XQ := RationalCharacterTable(H); 
     vprintf InfGrp, 2 : "Degrees of rational characters: %o \n", [ Degree(x) : x in XQ ];
     IM := IrreducibleModules(H, Q : MaxDegree := IrrDegBnd);
     vprintf InfGrp, 2 : "Time to construct %o rational irreducibles is %o.\n", #IM, Cputime(zeit1);
     vprintf InfGrp, 2 : "Dimensions of constructed irreducibles: %o\n", [Dimension(m) : m in IM];

  else
     IndentPop(1);
     vprintf InfGrp, 3 : "Obtaining the irreducibles took %o secs.\n", Cputime(zeit0);
     return false, des;
  end if;

  // Now calculate H1Dim for each irreducible

  for M in IM do
     zeit1 := Cputime();
     dim := Dimension(M);
     if dim eq 1 then continue; end if;

     // Quick test to see if positive H1Dim can be ruled out for this irreducible
     zeit2 := Cputime();
     if dim ge ModpBnd then
        zeit3 := Cputime();
        h1dimp := H1Dimension(F, phi, ChangeRing(M, K));
        vprintf InfGrp, 2 : "    H1Dim/F_p (%o) for irreducible QG-module of dimension %o took %o seconds.\n", 
                h1dimp, dim,  Cputime(zeit3);
        if h1dimp eq 0 then continue; end if;
     end if;
           
     // Definitive test for positive H1Dim
     zeit3 := Cputime();
     h1dim := H1Dimension(F, phi, M);
     vprintf InfGrp, 1 : "    H1Dim (%o) for irreducible QG-module of dimension %o took %o seconds\n",
                              h1dim, dim, Cputime(zeit3);
     if h1dim ne 0 then 
        vprintf InfGrp, 1 : "Checking Holt-Plesken condition took %o seconds.\n", Cputime(zeit);
        IndentPop(1);
        des[4]:= "HP"; des[5] := "Irr"; des[6] := dim; des[7] := h1dim;
        return true, des;
     end if;
  end for; // M

  vprintf InfGrp, 3 : "    Processing irreducibles took %o secs.\n", Cputime(zeit1);
  IndentPop(1);

  // If exterior square has not been tested do so now

  
  if (not ExSqrDone) and (ext_dim le ESLimit) then
     h1dim := H1DimExtSquare(F, phi, ext_dim);
     vprintf InfGrp, 1 : "    Checking Holt-Plesken condition took %o seconds.\n", Cputime(zeit);
     IndentPop(1);
     if h1dim eq 0 then
        return false, des;
     else
        des[4]:= "HP"; des[5] := "ES"; des[6] := ext_dim; des[7] := h1dim;
        IndentPop(1);
        return true, des;
     end if;
  end if; // d*(d - 1)) div 2 le ESLimit 

  vprintf InfGrp, 1 : "    Checking Holt-Plesken condition took %o seconds.\n", Cputime(zeit);

  IndentPop(1);
  return false, des;
                  
 end intrinsic;

//======================================================================
//
// Apply Holt-Plesken criteria -- stand-alone version

  intrinsic HasPositiveH1Dimension( F::GrpFP, phi::HomGrp : 
                              ESLimit := 10000, DBIrrs := true, CmpIrrs := true) -> BoolElt
        { Given an fp-group F and an epimorphism phi of F onto a permutation group H, this intrinsic
        returns true if some rational representation of H lifts to a rational representation of F
        whose first cohomology group is non-trivial. By a result of Holt and Plesken this shows that 
        F is infinite. The vararg ESLimit allows the user to place a limit on the dimension of
        exterior squares for which the Holt-Plesken test will be applied. If DBIrrs is set to true 
        then Magma will use irreducibles for H if available in the Rational Representations Database. 
        If CmpIrrs is set to true then Magma will construct rational irreducible representations for 
        H if they are not present in the database. Setting both false specifies that the test should 
        be applied only to the permutation module and its exterior square.}

   Des := <0,0,<>,"-","-",0,0>;
   flag, des := HasPositiveH1Dimension( F, phi, Des : 
             ESLimit := ESLimit, DBIrrs := DBIrrs, CmpIrrs := CmpIrrs);
   return flag;

   end intrinsic;

//======================================================================
//
// Try to find epimorphisms of an fp-group G onto a finite simple group
//
SimpleEpis := function(G, lodeg, hideg, loord, hiord : L2q := false)

    //  SIMPLE QUOTIENT: Search for epimorphisms onto simple groups

    vprintf InfGrp, 1 : " SIMPLE QUOTIENT Commence searching interval [%o, %o]:\n", loord, hiord; 
    IndentPush(1);

    Zeit := Cputime();
    ntcoh1 := false;
    // PQP := SimpleQuotientProcess(G, 5, 60, 60, 10^4: Limit := 3);
    zeit := Cputime();
    if L2q then
       PQP := SimpleQuotientProcess(G, lodeg, hideg, loord, hiord:
                  Limit := 3, ByDegree := false);
    else
       PQP := SimpleQuotientProcess(G, lodeg, hideg, loord, hiord: 
                  Limit := 3, ByDegree := false, Family := "notPSL2");
    end if;
    zeit_epi := Cputime(zeit);
    Q := RationalField();
    num_epis := 0;
    while not IsEmptySimpleQuotientProcess(PQP) do

       epi, info := SimpleEpimorphisms(PQP);
       for phi in epi do

          num_epis +:= 1;
          // Get the group name and order of the epimorphism
          Im := Image(phi);
          name := info[3];
          AssertAttribute(Im, "Order", info[2]);
          RandomSchreier(Im);
          vprintf InfGrp, 1 : "Found epi onto %o of order %o and degree %o: %o secs.\n", 
                 name, #Im, Degree(Im), zeit_epi;
          Des := < "SQ", name, #Im, "-", "-", 0, 0>;
          ntcoh1, des := HasPositiveH1Dimension( G, phi, Des :
                              ESLimit := 10000, DBIrrs := true, CmpIrrs := true);
          // HoltPlesken(G, phi, Im, ~ntcoh1, ~des);
          if ntcoh1 then
             IndentPop(1);
             vprintf InfGrp, 1 : " SIMPLE QUOTIENT Search of interval [%o, %o] successful: %o epis, %o secs.\n",
             loord, hiord, num_epis, Cputime(Zeit);
             return ntcoh1, des;
          end if;

        end for;  // phi

        zeit := Cputime();
        NextSimpleQuotient(~PQP);
        zeit_epi := Cputime(zeit);

    end while;   

    IndentPop(1);
    vprintf InfGrp, 1 : " SIMPLE QUOTIENT Search of interval [%o, %o] unsuccessful: %o epis, %o secs.\n\n", 
           loord, hiord, num_epis, Cputime(Zeit);
    return ntcoh1, <"Nil", 0, <>, "-", "-", 0, 0>;

end function;


//-----------------------------------------------------------------
//  Examine epimorphisms arising from L2Q

L2QEpis := function(F, L2Qs, lo, hi : SingleInfinite := false)

    OrderPSL2 := func< q | (q*(q^2-1)) div GCD(2, q-1) >;
    OrderPGL2 := func< q | (q-1)*q*(q+1) >;

    vprintf InfGrp, 1 : "\n L2 QUOTIENT Search commencing:\n";
    IndentPush(1);

    Zeit := Cputime();
    inf := false;
    num_l2s := 0;

    BND_prm := 10^5;
    BND_exp := 10^2;
    BND_fld := 10^5;

    zeit1 := Cputime();
    rels := Relations(F);
    nFGens := NumberOfGenerators(F);

    // Find L2-quotients unless already known

    if IsEmpty(L2Qs) then 

       Qs := [];
       if SingleInfinite then
          Quots1 := L2Quotients(F : SingleInfinite := true);
       else
          Quots1 := L2Quotients(F);
       end if;

       if IsEmpty(Quots1) then
           IndentPop(1);
           vprintf InfGrp, 2 : "L2Q SEARCH completed with no quotients being found, %o secs.\n\n", 
                   Cputime(Zeit);
           return false, <"Nil", 0, <>, "-", "-", 0, 0>, Qs;
        else
            vprintf InfGrp, 2 : "L2Q SEARCH found %o L2-quotients: %o secs.\n\n", #Quots1, Cputime(zeit1);
       end if;

       // Extract quotient info and sort

       Quots := [];
       infty := "oo";
       for i := 1 to #Quots1 do
          Q := Quots1[i]; 
          I := Q`Ideal; 
          l2t := l2TypeAsTuple(I);
          T := <Q, l2t[1], l2t[2], l2t[3], l2t[4], l2t[5]>;
          Append( ~Quots, T);
       end for;
       Sort(~Quots, func< A, B | A[4]^A[5] - B[4]^B[5] >);
       // [ Q[1] : Q in Quots ];

       for i := 1 to #Quots do
           Q := Quots[i];
           finite := (Q[4] ne 0) and (Q[5] ne 0);
           r := rec< L2QRec | Typ   :=  "L2Q",  
                              L2Obj :=  Q[1],
                              Proj  :=  Q[2], 
                              Dim   :=  Q[3],
                              Prime :=  Q[4],
                              Exp   :=  Q[5],
                              EExp  :=  Q[6],
                              Fin   :=  finite,
                              FFCard  :=  finite select Q[4]^Q[5] else 0
                  >; 
           Append( ~Qs, r);
       end for;

    // Restore list of previously computed L2 quotients

    else

       Qs := L2Qs;

    end if;  // Setting up l2-quotients

       // Check for infinite families of L2 quotients

       inf := false;

       for i := 1 to #Qs do

           Q := Qs[i];
           p := Q`Prime;
           e := Q`Exp;

           if p eq 0 and e ne 0 then
               inf := true;
               type := infty cat "^" cat IntegerToString(e);
           elif p ne 0 and e eq 0 then
               inf := true;
               type := IntegerToString(p) cat "^" cat infty;
           elif p eq 0 and e eq 0 then
               inf := true;
               type := infty cat "^" cat infty;
           end if;

           if inf then 
              num_l2s := #Quots;
              IndentPop(1);
              vprintf InfGrp, 1 : "L2Q SEARCH successful after finding infinite L2-family: %o secs.\n\n", 
                     Cputime(Zeit);
              return inf, <"L2Q", p, <>, "Infty", type, 0, 0>, Qs;
           end if;

       end for;

      // Apply H-P to the finite L(2, q) quotients

       num_l2s := 0;
       vprintf InfGrp, 1 : "L2Q QUOTIENT Search for finite L2Qs in the interval [%o, %o]\n", lo, hi; 
       for i := 1 to #Qs do
           
           Q := Qs[i];
           zeit1 := Cputime();
           p := Q`Prime;
           e := Q`Exp;
           q := p^e;
           if p eq 0 or e eq 0 then continue; end if;
           if (q + 1) lt lo then continue; end if;
           if (q + 1) gt hi then break; end if;
           if p gt BND_prm then continue; end if;
           if e gt BND_exp then continue; end if;
           if q gt BND_fld then continue; end if;

           num_l2s +:= 1;
           N, FGenIms := GetMatrices(Q`L2Obj);

           // PSL2 case

           if Q`Proj eq "PSL" then

              vprintf InfGrp, 2 : "\nEpimorphism onto PSL(2, %o) of order %o and degree %o:\n",
                        q, OrderPSL2(q), q+1;
              LinTyp := "PSL";
              K := CoefficientRing(N);
              V := VectorSpace(N);
              v := V![ K!1, K!0];
              P := OrbitImage(N, sub< V | v>);
              phi := hom< F -> P | [ P.i : i in [1 .. nFGens] ] >;
              AssertAttribute(P, "Order", OrderPSL2(q));
              RandomSchreier(P); 
              if #P ne OrderPSL2(q) then
                 continue;
              end if; 

           // END PSL2 case

           // PGL2 case
           else

              vprintf InfGrp, 2 : "\nConsidering epi onto PGL(2, %o) of order %o and degree %o.\n",
                        q, OrderPGL2(q), q+1;
              LinTyp := "PGL";

              // Check that N is absolutely irreducible  
              if not IsAbsolutelyIrreducible(N) then
                 continue;
              end if; 

              // Find downwards extension of N over prime subfield of F_q

              fl, NN := IsOverSmallerField(N : Scalars:=true);
              if not fl then
                 vprintf InfGrp, 2 : " @@@ Cant find extension of N over prime subfield of F_q -- Skipping.\n";
                 continue;
              end if; 

              K := CoefficientRing(NN);
              V := VectorSpace(NN);
              v := V![ K!1, K!0];
              P := OrbitImage(NN, sub< V | v>);
              phi := hom< F -> P | [  P.i : i in [1 .. nFGens] ] >;

              AssertAttribute(P, "Order", OrderPGL2(q));
              RandomSchreier(P); 
              if #P ne OrderPGL2(q) then
                 continue;
              end if; 

              vprintf InfGrp, 2 : "Epi onto PGL(2, %o) now constructed over F_%o: %o secs.\n",
                     q, q, Cputime(zeit1);

           end if;  // END PGL2 case

           // **** Optional check that relations of F are satisfied.
           /* vprintf InfGrp, 2 : "Check that relations are satisfied.\n";
           time RelsSat :=  [ phi(LHS(rels[i])) eq P!1 : i in [1 .. nFGens] ]; 
           assert  forall{ x : x in RelsSat | x eq true }; */

           // time cf := ChiefFactors(P); cf;
           Q`Quo := P; Q`Phi := phi; Q`Ord := #P; Q`Deg := Degree(P); Q`HPc := false;
           Des := <"L2Q", LinTyp, q, "-", "-", 0, 0>;
           zeit2 := Cputime();
           ntcoh1, des := HasPositiveH1Dimension( F, phi, Des :
                              ESLimit := 10000, DBIrrs := true, CmpIrrs := true);
           // HoltPlesken(F, phi, P, ~ntcoh1, ~des);
           Q`HPc := ntcoh1;
           if ntcoh1 then 
              vprintf InfGrp, 2 : "Epimorphism satisfies Holt-Plesken criteria: %o sec.\n", Cputime(zeit2);
              IndentPop(1);
              vprintf InfGrp, 1 : " L2 QUOTIENT successful after considering %o L2-quotients: %o secs.\n\n", 
                     num_l2s, Cputime(Zeit);
              return ntcoh1, des, Qs;
           else
              vprintf InfGrp, 2 : "Epimorphism does not satisfy Holt-Plesken criteria: %o sec.\n", Cputime(zeit1);
           end if;

    end for;

    IndentPop(1);
    if num_l2s lt #Qs then
       vprintf InfGrp, 2: "L2 QUOTIENT over [%o, %o] unsuccessful after considering %o out of %o L2-quotients: %o secs.\n\n", 
           lo, hi, num_l2s, #Qs, Cputime(Zeit);
       return false, <"Nil", 0, <>, "-", "-", 0, 0>, Qs;
    else
       vprintf InfGrp, 2 : "L2 QUOTIENT over [%o, %o] unsuccessful. All %o L2-quotients now considered: %o secs.\n\n", 
           lo, hi, #Qs, Cputime(Zeit);
       return false, <"Nil", 0, <>, "-", "-", 0, 0>, [];
    end if;

end function;

//-----------------------------------------------------------------
//  Consider epimorphisms arising from low index subgroups


SubEpis := function(F, lo, hi, tmult)


    vprintf InfGrp, 1 : " SUBGRP SEARCH of indices [%o, %o] commencing:\n", lo, hi;
    IndentPush(1);

    Zeit := Cputime();
    ntcoh1 := false;
    num_subs_ab := 0;
    num_subs_hp := 0;
    
   zeit := Cputime();
   bnds := <lo, hi>;
   lix := LowIndexSubgroups(F, bnds : 
                            Limit := 8, 
                            Print := 0, 
                            // TimeLimit := bnds[2]*100
                            TimeLimit := Ceiling(bnds[2]*tmult)
                            );

    nlix := #lix;
    if IsEmpty(lix) or (nlix eq 1 and Index(F, lix[1]) eq 1) then
       vprintf InfGrp, 2 : "Found no proper subgroups in interval [%o, %o] in %o secs.\n", 
              lo, hi, Cputime(zeit); 
       IndentPop(1);
       vprintf InfGrp, 1 : " SUBGRP SEARCH of [%o, %o] was unsuccessful: %o + %o subgroups, %o secs.\n\n", 
                             lo, hi, num_subs_ab, num_subs_hp, Cputime(Zeit);
       return ntcoh1, <"Nil", 0, <>, "-", "-", 0, 0>;
    else
       vprintf InfGrp, 2 :  "Found %o subgroups in interval [%o, %o] in %o seconds\n", 
          #lix, lo, hi, Cputime(zeit);
          indexes := [ Index(F, H) : H in lix ]; 
    end if;

       // See if the abelianisation of one of these subgroups is infinite.

       vprintf InfGrp, 2 :  "\nCompute the abelian quotient of each FI-subgroup:-\n";
       for H in lix do
          indx := Index(F, H);
          zeit2 := Cputime();
          num_subs_ab +:= 1;
          phi, Im := CosetAction(F, H);
          cf := ChiefFactors(Im); 
          cfstg := ChiefFactorsToStringDescending(cf);
          vprintf InfGrp, 3 : "Chief Factors: %o \n", cfstg;

          infin := not HasFiniteAQ(H);
          if infin then
              AQ := AQInvariants(H);
              nZ := &+ [ 1 : i in [1..#AQ] | AQ[i] eq 0 ];
              des := <"Sub", H, indx, "AQ", "-", AQ, 0>;
              vprintf InfGrp, 2 : "* AQ of subgroup H of index %o has inf. abelian summand of rank %o: 
                                    %o secs.\n", indx, nZ, Cputime(zeit2); 
              vprintf InfGrp, 2 : "Structure of abelian quotient is %o\n.", AQ;
              IndentPop(1);
              vprintf InfGrp, 1 : "\n SUBGRP SEARCH of [%o, %o] was successful: %o + 0 subgroups, %o secs.\n\n", 
                     lo, hi, num_subs_ab, Cputime(Zeit);
              return infin, des;
          end if;
       end for;

       // See if the kernel of one of these subgroups is infinite.

       vprintf InfGrp, 2 : "\nApply Holt-Plesken to each of the epis:-\n";
       for i := 1 to #lix do
          L := lix[i];
          indx := Index(F, L);
          zeit2 := Cputime();
          num_subs_hp +:= 1;

          // We now need to find out something about the epi image before proceeding

          // Ignore trivial group

          if indx eq 1 then continue; end if;

          // Recognise An and Sn
 
          phi, Im := CosetAction(F, L);
          d := Degree(Im);
          ansn := IsAltsym(Im);
          if ansn then
              an := forall{ x : x in Generators(Im) | IsEven(x) } select true else false;
              sn := not an;
              name := an select "A(" cat IntegerToString(indx) cat ")" else 
                                "S(" cat IntegerToString(indx) cat ")";
              Des := <"Sub", name, indx, "-", "-", 0, 0>;
              UseIrrs := d le 8 select true else false;
              ntcoh1, des := HasPositiveH1Dimension( F, phi, Des :
                              ESLimit := 10000, DBIrrs := true, CmpIrrs := true);
              // HoltPlesken(F, phi, Im, ~ntcoh1, ~des : Irrs:=UseIrrs);
              if ntcoh1 then
                 vprintf InfGrp, 2 : "%o module of dim %o for epi (%o, %o) has H^1 = %o: %o sec.\n",
                 des[5], des[6], d, #Im, des[7], Cputime(zeit2);
                 IndentPop(1);
                 vprintf InfGrp, 1 : "\n SUBGRP SEARCH successful after considering %o + %o subgroups: %o secs.\n\n",
                     num_subs_ab, num_subs_hp, Cputime(Zeit);
                 return ntcoh1, des;
              else
                  vprintf InfGrp, 2 : "Epi (%o, %o) does not satisfy Holt-Plesken: %o sec.\n",
                     d, #Im, Cputime(zeit2);
              end if;

         else 

         // Group is not An or Sn and is small enough for irreducibles to be found

             RandomSchreier(Im);
             if #Im le 10^9 then
                 Verify(Im);
                 cf := ChiefFactors(Im);
                 name := ChiefFactorsToStringDescending(cf);
                 vprintf InfGrp, 3 : "* Group of order %o: %o\n", #Im, name;
                 Des := <"Sub", name, indx, "-", "-", 0, 0>;
                 ntcoh1, des := HasPositiveH1Dimension( F, phi, Des :
                              ESLimit := 10000, DBIrrs := true, CmpIrrs := true);
                 // HoltPlesken(F, phi, Im, ~ntcoh1, ~des );
                 if ntcoh1 then
                    IndentPop(1);
                    vprintf InfGrp, 1 : "\n SUBGRP SEARCH successful after considering %o + %o subgroups: %o secs.\n\n",
                         num_subs_ab, num_subs_hp, Cputime(Zeit);
                    return ntcoh1, des;
                 else
                    vprintf InfGrp, 2 : "Epi (%o, %o) does not satisfy Holt-Plesken: %o sec.\n",
                         d, #Im, Cputime(zeit2);
                 end if;

              // Group is not An or Sn and is too large for irreducibles to be found

         else // #Im gt 10^9

                 name := "";
                 Des := <"Sub", name, indx, "-", "-", 0, 0>;
                 ntcoh1, des := HasPositiveH1Dimension( F, phi, Des :
                              ESLimit := 10000, DBIrrs := true, CmpIrrs := true);
                 // HoltPlesken(F, phi, Im, ~ntcoh1, ~des : Irrs:=false );
                 if ntcoh1 then
                    vprintf InfGrp, 2 : "%o module of dim %o for epi (%o, %o) has H^1 = %o: %o sec.\n",
                    des[5], des[6], d, #Im, des[7], Cputime(zeit2);
                    IndentPop(1);
                    vprintf InfGrp, 1 : "\n SUBGRP SEARCH successful after considering %o + %o subgroups: %o secs.\n\n",
                         num_subs_ab, num_subs_hp, Cputime(Zeit);
                    return ntcoh1, des;
                 else
                    vprintf InfGrp, 2 : "Epi (%o, %o) does not satisfy Holt-Plesken: %o sec.\n",
                         d, #Im, Cputime(zeit2);
                 end if;

            end if;

        end if;  // ansn
                  
        end for;  // lix
  
    IndentPop(1);
    vprintf InfGrp, 1 : " SUBGRP SEARCH of [%o, %o] was unsuccessful: %o + %o subgroups, %o secs.\n\n", 
           lo, hi, num_subs_ab, num_subs_hp, Cputime(Zeit);
    return ntcoh1, <"Nil", 0, <>, "-", "-", 0, 0>;

 end function; // SubEpis

//-----------------------------------------------------------------
//  Examine epimorphisms arising from low index normal subgroups


LINSEpis := function(F, lo1, hi1)

    vprintf InfGrp, 1 : " NORMAL SUBGROUPS Search of indices [%o, %o] commencing:\n", lo1, hi1;

    AQLimit := 1000;
    Zeit := Cputime();
    num_subs_aq := 0;
    num_subs_hp := 0;
    nFGens := NumberOfGenerators(F);
    ntcoh1 := false;
    zeit1 := Cputime();
    IndentPush(1);

    pass := 0;
    nlins_prev := 0;
    lo := lo1; hi := hi1;
    for pair in [ [lo, hi] ] do
    // for pair in [ [lo1, hi1], [hi1+1, 10*hi1], [10*hi1+1, 50*hi1], [50*hi1+1, 150*hi1] ] do
    lo, hi := Explode(pair);
    pass +:= 1;
    zeit2 := Cputime();
    lins := LowIndexNormalSubgroups(F, hi);
    nlins := #lins;
    if IsEmpty(lins) or (nlins eq 1 and lins[1]`Index eq 1) or (nlins eq nlins_prev) then
       vprintf InfGrp, 2: "No proper normal subgroups found in interval [%o, %o]:  %o secs.\n", 
              lo, hi, Cputime(zeit2); 
       continue;
    else
       indexes := [ Index(F, lins[i]`Group) : i in [nlins_prev+1..nlins] ]; 
       nlins_prev := nlins;
       if indexes ne [ 1 ] then 
          vprintf InfGrp, 2 : "Indices:- %o\n", indexes; 
       end if;
    end if;

       // Test if the abelianisation of any of these subgroups is infinite.
       num_subs_aq := 0;
       zeit1 := Cputime();
       for i := 1 to #lins do 
          H := lins[i]`Group;
          indx := Index(F, H);
          if indx eq 1 then continue; end if;
          if indx le lo then continue; end if;
          if indx gt AQLimit then continue; end if;
          num_subs_aq +:= 1;

          P1 := CosetImage(F, H);
          P := DegreeReduction(P1);
          cf := ChiefFactors(P);
          vprintf InfGrp, 2 : "Chief Factors: %o \n", ChiefFactorsToStringDescending(cf);

          zeit2 := Cputime(); infin := not HasFiniteAQ(H); zeit2 := Cputime(zeit2);
          zeit4 := Cputime();
          if infin then
              zeit3 := Cputime(); 
              AQ := AQInvariants(H);
              nZ := &+ [ 1 : i in [1..#AQ] | AQ[i] eq 0 ];
              vprintf InfGrp, 1 : "AQ of subgroup of index %o has infinite summand %o: %o secs,\n", 
                     indx, Multiset(AQ), Cputime(zeit4);
              vprintf InfGrp, 1 : "HasFiniteAQ, AQInvars and sum times: %o secs, %o secs, %o secs.\n",  
                     zeit2, Cputime(zeit3), zeit2 + Cputime(zeit3);
              IndentPop(1);
              vprintf InfGrp, 1 : " NORMAL SUBGROUPS Search of [%o, %o] was successful, %o + %o subgroups, %o secs.\n", 
                     lo, hi, num_subs_aq, num_subs_hp, Cputime(Zeit);
              des := <"LINS", H, Index(F, H), "AQ", "-", AQ, 0>;
              return infin, des;
          end if;
              vprintf InfGrp, 2 : "AQ time (HasFiniteAQ) for subgroup of index %o is %o secs.\n", 
                      indx, zeit2;
       end for;
       vprintf InfGrp, 2 : "AQ fails to establish non-finiteness of F: %o secs.\n", Cputime(zeit1);
     
/*
       // Apply Holt-Plesken to each epimorphism
       num_subs_hp := 0;
       for i := 1 to #lins do
          H := lins[i]`Group;
          indx := Index(F, H);
          if indx eq 1 then continue; end if;
          if indx le lo then continue; end if;
          num_subs_hp +:= 1;
          P1 := CosetImage(F, H);
          P := DegreeReduction(P1);
          vprintf InfGrp, 2 : "Applying H-P with permutation group of order %o and degree %o.\n", 
                              #P, Degree(P);
          phi := hom< F -> P | [ P.i : i in [1 .. nFGens] ] >;
          cf := ChiefFactors(P);
          vprintf InfGrp, 2 : "Chief Factors: %o \n", ChiefFactorsToStringDescending(cf);
          Des := <"LINS", H, Index(F, H), "-", "-", 0, 0>;
          ntcoh1, des := HasPositiveH1Dimension( F, phi, Des :
                              ESLimit := 10000, DBIrrs := true, CmpIrrs := true);
          // HoltPlesken(F, phi, ~ntcoh1, ~des : ESLimit := 1000);
          if ntcoh1 then 
             IndentPop(1);
             vprintf InfGrp, 1 : "\n NORMAL SUBGROUPS Search of [%o, %o] was successful: %o + %o subgroups, %o secs.\n\n", lo, hi, num_subs_aq, num_subs_hp, Cputime(Zeit);
             return ntcoh1, des;
          end if;
       end for;  // lins
*/

    end for; // pair

    IndentPop(1);
    vprintf InfGrp, 1 : " NORMAL SUBGROUPS Search of [%o, %o] unsuccessful: %o + %o subgroups, %o secs.\n\n", 
           lo, hi, num_subs_aq, num_subs_hp, Cputime(Zeit);
    return ntcoh1, <"Nil", 0, <>, "-", "-", 0, 0>;

 end function; // LINSEpis

//====================================================================
    
 Proof := function( des )

  A0 := "\n! The following lines sketch a proof that the fp-group F is infinite:-\n";

  A1 := "! F has the simple group %o of order %o as a quotient G (by SimpleQuot).\n";
  A2 := "! F has an infinite family of L2-quotients of type %o (L2Quotient).\n";
  A3 := "! F has the group %o(2, %o) of order %o as a quotient G (L2Quotient).\n";
  A4 := "! F has a subgroup H of index %o and a quotient G = F/Core(H) (LowIndex).\n";
  A5 := "! F has a normal subgroup H of index %o (LINS).\n";

  B1 := "! Let k denote the rational field.\n"; 
  B2 := "! Let M be the permutation module of $G$ as a kG-module. It has dim %o.\n";
  B3 := "! Let M be the ext square of perm module of G as a kG-module. It has dim %o.\n";
  B4 := "! Let M be an irreducible kG-module of dimension %o.\n";
  B5 := "! Let N be the kF-module given by the induced action of $F$ on M.\n";

  C1 := "! H has an infinite abelian quotient (AbelianQuot): %o\n"; 
  // C1 := "! H has an infinite abelian quotient (AbelianQuot) and hence F is infinite."; 
  C2 := "! The dimension of the first integral cohomology group of the kF-module N is %o.\n";
  C3 := "! As H^1(F, N) is non-zero, the Holt-Plesken criterion shows that F is infinite.\n"; 
  C4 := "! Hence F is infinite.\n";

  proof := Sprintf(A0);

  case des[1]:

    // Information about quotient group/subgroup

    when "SQ":
      proof := proof cat Sprintf(A1, des[2], des[3]);
           
    when "L2Q":
      if des[4] eq "Infty" then
         proof := proof cat Sprintf(A2, des[5]) cat Sprintf(C4);

      else
        q := des[3];
        if des[2] eq "PSL" then
          proof := proof cat Sprintf(A3, "PSL", q, OrderPSL2(q));
        else
          proof := proof cat Sprintf(A3, "PGL", q, OrderPGL2(q));
        end if;
      end if;

    when "Sub":
      proof := proof cat Sprintf(A4, des[3]);

    when "LINS":
      proof := proof cat Sprintf(A5, des[3]);

  end case;

    // Information about the methd of establishing group is infinite

  case des[4]:

    when "Infty":
        ;

    when "HP":
      if des[5] eq "PM" then
        proof := proof cat Sprintf(B1) cat Sprintf(B2, des[6]) cat
                 Sprintf(B5) cat Sprintf(C2, des[7]) cat Sprintf(C3); 

      elif des[5] eq "ES" then
        proof := proof cat Sprintf(B1) cat Sprintf(B3, des[6]) cat
                 Sprintf(B5) cat Sprintf(C2, des[7]) cat Sprintf(C3);

      elif des[5] eq "Irr" then
        proof := proof cat Sprintf(B1) cat Sprintf(B4, des[6]) cat
                 Sprintf(B5) cat Sprintf(C2, des[7]) cat Sprintf(C3);
      end if;
        
     when "AQ":
       proof := proof cat Sprintf(C1, des[6]) cat Sprintf(C4); 

     end case;

  /*
  prf := "";
  for s in proof do
    prf := prf cat "\n" cat s;
  end for;
  */

  return proof;

  end function;


//====================================================================
//
// Main program

 intrinsic IsInfiniteFPGroup( F::GrpFP : 
                              L2Quot := true, L3Quot := true, SimQuot := true, 
                              LISub := true, LINSub := true, Hard := false) 
                              -> BoolElt, MonStgElt
 {Given a finitely-presented group F, attempt to prove that F is infinite.  If 
  successful, the boolean value 'true' is returned together with a text string that 
  outlines a proof of non-finiteness. If the boolean value 'false' is returned, 
  then no conclusion can be drawn. The algorithm used searches for quotient groups 
  and finite-index subgroups and attempts to deduce non-finiteness from these. This 
  version works best for perfect or near perfect groups.}
 
    vprintf InfGrp, 3 : "\n";

    verb := GetVerbose("InfGrp") gt 0;
    if L2Quot then
       SQL2q := true;
    else
       SQL2q := false;
    end if;
    L2Quots := [];
    L2QuotComplete := false;
 
    //-----------------------
    if L2Quot then
       f, des, L2Quots := L2QEpis(F, L2Quots, 1, 1000 : SingleInfinite := false);
       if f then 
          return f, Proof(des); 
       else
          L2QuotComplete := IsEmpty(L2Quots); 
       end if;
    end if;

    //-----------------------
    if SimQuot then
       f, des := SimpleEpis(F, 5, 300, 60, 10000 : L2q :=  SQL2q);
       if f then 
          return f, Proof(des); 
       end if;
    end if;

    //-----------------------
    if LINSub then
       f, des := LINSEpis(F, 1, 1000);
       if f then 
          return f, Proof(des); 
       end if;
    end if;

    //-----------------------
    if LISub then
       f, des := SubEpis(F, 1, 25, 1/5);
       if f then 
          return f, Proof(des); 
       end if;
    end if;

    //-----------------------
    if L2Quot and not L2QuotComplete then
       f, des, L2Quots := L2QEpis(F, L2Quots, 1001, 20000);
       if f then 
          return f, Proof(des); 
       else
          L2QuotComplete := IsEmpty(L2Quots); 
       end if;
    end if;

    //-----------------------
    if SimQuot then
       f, des := SimpleEpis(F, 5, 300, 20001 , 10^5 : L2q :=  SQL2q);
       if f then 
          return f, Proof(des); 
       end if;
    end if;

    //-----------------------
    if LINSub then
       f, des := LINSEpis(F, 10^3+1, 10^4);
       if f then 
          return f, Proof(des); 
       end if;
    end if;

    //-----------------------
    if LISub then
       f, des := SubEpis(F, 26, 50, 2); 
       if f then 
          return f, Proof(des); 
       end if;
    end if;

    //-----------------------
    if L2Quot and not L2QuotComplete then
       f, des, L2Quots := L2QEpis(F, L2Quots, 10001, 20000);
       if f then 
          return f, Proof(des); 
       else
          L2QuotComplete := IsEmpty(L2Quots); 
       end if;
    end if;

    //-----------------------
    if SimQuot then
       f, des := SimpleEpis(F, 5, 300, 10^5+1, 10^6 : L2q :=  SQL2q);
       if f then 
          return f, Proof(des); 
       end if;  
    end if;

    //-----------------------
    if L2Quot and not L2QuotComplete then
       f, des, L2Quots := L2QEpis(F, L2Quots, 20001, 100000);
       if f then 
          return f, Proof(des); 
       else
          L2QuotComplete := IsEmpty(L2Quots); 
       end if;
    end if;

    //-----------------------
    //  if LINSub then
    //    f, des := LINEpis(F, 100001, 100000);
    //    if f then 
    //        PrintProof(des); 
    //        return f; 
    //    end if;
    //  end if;

    //-----------------------
    if SimQuot then
       f, des := SimpleEpis(F, 5, 300, 10^6+1, 10^7 : L2q :=  SQL2q);
       if f then 
          return f, Proof(des); 
       end if;
    end if;

    //-----------------------
    if LISub then
       f, des := SubEpis(F, 51, 100, 10); 
       if f then 
          return f, Proof(des); 
       end if;
    end if;

    //-----------------------
    if SimQuot then
       f, des := SimpleEpis(F, 5, 300, 10^7+1, 10^8 : L2q :=  SQL2q);
       if f then 
          return f, Proof(des); 
       end if;
    end if;

    //-----------------------
    if LISub then
       f, des := SubEpis(F, 101, 150, 15); 
       if f then 
          return f, Proof(des); 
       end if;
    end if;

    //-----------------------
    if SimQuot then
       f, des := SimpleEpis(F, 5, 300, 10^8+1, 10^9 : L2q :=  SQL2q);
       if f then 
          return f, Proof(des); 
       end if;
    end if;

    if not Hard then
         return f, "\nUnable to show that the group is infinite.\n";
    end if;

    //-----------------------
    if L3Quot then
       L3Quotients(F : UseRandomTechniques := true); 
    end if;

    //-----------------------
    if LISub then
       f, des := SubEpis(F, 151, 200, 30); 
       if f then 
          return f, Proof(des); 
       end if;
    end if;

    //-----------------------
    if L2Quot and not L2QuotComplete then
       f, des, L2Quots := L2QEpis(F, L2Quots, 100001, 500000);
       if f then 
          return f, Proof(des); 
       else
          L2QuotComplete := IsEmpty(L2Quots); 
       end if;
     end if;


    return f, "\nUnable to show that the group is infinite.\n";


 end intrinsic;




