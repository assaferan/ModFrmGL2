import "sym-square.m": RecogniseSymmetricSquare, SymmetricSquarePreimage;
import "alt-square.m": RecogniseAlternatingSquare, AlternatingSquarePreimage;
import "delta.m": RecogniseDelta, DeltaPreimage;
import "dualdelta.m": RecogniseDualDelta, DualDeltaPreimage;
import "adjoint.m": RecogniseAdjoint, AdjointPreimage;
import "construct.m": MyAlternatingSquare, MySymmetricSquare, 
MyAdjointRepresentation, MyDeltaRepresentation, MyDualDeltaRepresentation;
// import "/home/eobr007/project/recog/magma/centre.m": EstimateCentre;

EmbedInCorrectField := function (G, q)
   K := BaseRing (G);
   n := Degree (G);
   F := GF (q);
   if #K eq #F then return true, G; end if;
   if #F mod #K eq 0 then 
      H := sub<GL(n, F) | [G.i : i in [1..Ngens (G)]]>;
      return true, H;
   elif #K mod #F eq 0 then 
      flag, H := IsOverSmallerField (G, Degree (F));
      if flag then return true, H; end if;
   end if;
   vprint SmallDegree: "Recognition failed: Field size is not correct";
   return false, _;
end function;

// does G satisfy form of specified type?
SatisfiesForm := function (G, form, TypeString)
   if TypeString eq "2A" then
      e := Degree (BaseRing (G)) div 2;
      found := forall{i: i in [1..Ngens (G)] |
         G.i * form * Transpose (FrobeniusImage (G.i, e)) eq form};
   elif TypeString in ["B", "C", "D", "2D"] then
      found := forall{i: i in [1..Ngens (G)] |
         G.i * form * Transpose (G.i) eq form};
   end if;
   return found;
end function;

// determine form preserved by G possibly mod scalars 
IdentifyForm := function (G, TypeString: Scalars := false)
   if TypeString eq "A" then return false, false, _; end if;
   forms := ClassicalForms (G: Scalars := Scalars);
   if TypeString eq "2A" then form := forms`sesquilinearForm;
   elif TypeString in ["B", "C", "D", "2D"] then form := forms`bilinearForm;
   end if;
   if form cmpeq false then return false, _, _; end if;
   return true, form, forms`scalars;
end function;

// G preserves form mod scalars; rescale generators so that G fixes the form
FixForm := function (G, TypeString)

   if TypeString eq "A" then return false, G, false; end if;

   has_form, form := IdentifyForm (G, TypeString: Scalars := false);
   if has_form then return true, G, form; end if;

   has_form, form, scalars := IdentifyForm (G, TypeString: Scalars := true);
   if not has_form then return false, G, false; end if;

   d := Degree (G);

   if TypeString eq "2A" then 
      q := Isqrt (#BaseRing (G));
      S := [Root (x, q + 1): x in scalars];
   else
      S := [Root (x, 2): x in scalars];
   end if;
   S := [Generic (G) ! ScalarMatrix (d, s^-1): s in S];
   X := [G.i * S[i]: i in [1..#S]];
   A := sub<Generic (G) | X >;
   assert SatisfiesForm (A, form, TypeString);
   return true, A, form;
end function;

Orig_FixForm := function (A, TypeString: FormTrial := 10^7)

   if TypeString eq "A" then return false, A, false; end if;
   found, form := IdentifyForm (A, TypeString);
   vprint SmallDegree: "Initial group preserves form?", found; 
   if found then return found, A, form; end if;

   d := Degree (A);
   q := #BaseRing (A);
   myRootsOfUnity := AllRoots (One (GF (q)), d);
   // "# of roots is ", #myRootsOfUnity;
   myGrp := A; nmrForm := 0;
   gens := [Generic (A) ! A.i : i in [1..Ngens (A)]];
   while not found and nmrForm lt FormTrial do 
      nmrForm +:= 1; 
      if nmrForm mod 1000 eq 0 then 
         vprint SmallDegree: "Form trial", nmrForm; 
      end if;
      myList := gens;
      for i in [1..Ngens (A)] do
          myList[i] := myList[i] * Generic (A)!ScalarMatrix (d, Random (myRootsOfUnity));
      end for;
      myGrp := sub<Generic (A) | myList>;
      found, form := IdentifyForm (myGrp, TypeString);
   end while;
   vprint SmallDegree: "Form preserved?", found, nmrForm;
   if found then return true, myGrp, form; else return false, _, _; end if;
end function;

ScalarMultiple := function (g, lambda)
   P := Parent (g);
   F := BaseRing (P);
   d := Degree (P);
   return MatrixAlgebra (F, d) ! lambda * g;
end function;

ScaleMatrix := function (g)
   det := Determinant (g);
   if det eq 1 then return g; end if;
   m := Nrows (g);
   roots := AllRoots (det, m);
   if (#roots eq 0) then return false; end if;
   mu := 1/roots[1];
   return ScalarMultiple (g, mu);
end function;

ScaleMatrix2 := function (g)
   det := Determinant (g);
   m := Nrows (g);
   mu := 1;
   if det ne 1 then mu := -1; else mu := 1; end if;
   return ScalarMultiple (g, mu);
end function;

SUScaleMatrix := function (g, q)
   det := Determinant (g);
   m := Nrows (g);
   roots := AllRoots (det, m);
   roots2 := AllRoots (GF(q^2)!1, q + 1);
   roots := [x : x in roots | x in roots2];
   if (#roots eq 0) then return false; end if;
   mu := roots[1]^-1;
   return ScalarMultiple (g, mu);
end function;

FindScalarMultipleOverSubfield := function (mat, subfield)
   d := Nrows(mat);
   Grp := GL (d, subfield);
   try return Grp!mat; catch e; end try;   
   E := Eltseq (mat);
   for i in [1..d^2] do
      if (E[i] eq 0) then continue; end if;
      newmat := ScalarMultiple (mat, E[i]^-1);
      try 
         return Grp!newmat;
      catch e; 
      end try;
   end for;
   return false;
end function;

FixSpinor := function (TypeString, form, gens, q)
    d := Nrows (Rep (gens));
    Gens := gens;
    if IsEven (d) and d mod 4 ne 2 then return Gens; end if;
    if (TypeString eq "D" and q mod 4 eq 3) or (TypeString eq "2D" and q mod 4 eq 1) then
       Gens := [GL(d, q) | ];
       for i in [1..#gens] do
          spinor := SpinorNorm (gens[i], form);
          Gens[i] := spinor eq 1 select -gens[i] else gens[i];
       end for;
   end if;
   return Gens;
end function;

//find and store a form preserved by A (for testing preimage)
GroupFixesForm := function (A, TypeString, q)
   found, A, form := FixForm (A, TypeString);

   if TypeString ne "A" and not found then
      vprint SmallDegree: "Input group is probably not representation of ", TypeString;
      return false, _, _;
   end if;

   if TypeString eq "A" then
      form := A.0;
      gens := [Generic (A) ! ScaleMatrix (A.i) : i in [1..Ngens (A)]];
   elif TypeString eq "2A" then
      gens := [SUScaleMatrix (A.i, Isqrt (q)): i in [1..Ngens(A)]];
   else
      gens := [Generic (A) ! ScaleMatrix2 (A.i) : i in [1..Ngens (A)]];
      if TypeString in ["D", "2D"] then
         gens := FixSpinor (TypeString, form, gens, q);
      end if;
   end if;
   A := sub<Generic (A) | gens>;
   return true, A, form;
end function;

ElementFixesForm := function (A, F, TypeString, form, im)
   d := Degree (A);

   if TypeString eq "A" then 
      im := ScaleMatrix (im);
      if Type (im) eq BoolElt then return false, _; end if;
   elif TypeString eq "2A" then    
      deg := Degree (F) div 2; q := Isqrt (#F);
      scalar := form^-1 * im * form * Transpose (FrobeniusImage (im, deg));
      if not IsScalar (scalar) then return false, _; end if;
      scalar := scalar[1][1];
      if scalar ne 1 then
         s := Root (scalar, q + 1);
         s := ScalarMatrix (d, s^-1);
         im := im * s;
      end if;
      im := SUScaleMatrix (im, q);
      assert Order (form^-1 * im * form * Transpose (FrobeniusImage (im, deg))) eq 1;
   else
      s := form^-1 * im * form * Transpose (im);
      assert IsScalar (s);
      s := s[1][1];
      if s ne 1 then
         s := Root (s, 2);
         s := Generic (A)!ScalarMatrix (d, s^-1);
         im := im * s;
      end if;
      im := ScaleMatrix2 (im);
      im := Generic (A)!im;
      if TypeString in ["D", "2D"] then
         im := FixSpinor (TypeString, form, [im], #F);
         im := im[1];
      end if;
      assert Order (form^-1 * im * form * Transpose (im)) eq 1;
   end if;
   return true, Generic (A)!im;
end function;

// return the value d' (between d-2 and d depending on the type) 
getExtensionDegree := function (d, typeString)
   if (typeString eq "A") then return d; end if;
   if (typeString eq "C") then return d; end if;
   if (typeString eq "2D") then return d; end if;
   if (typeString eq "D") then return d-2; end if;
   if (typeString eq "B") then return d-1; end if;
   if (typeString eq "2A") then 
      if IsEven (d) then return d-1; else return d; end if;
   end if;
end function;

// Check whether the order of g is divisible by a ppd of q^d - 1
TestPPD := function (g, d, q)
   m := q^d * &*[(q^j - 1): j in Divisors (d) | j ne d];
   return g^m ne 1;
end function;

// Find a special element
ChooseSingerElt := function (G, TypeString, d: NumberRandom := 100)
   n := Degree (G);
   F := BaseRing (G);
   e := getExtensionDegree (d, TypeString);
   q := #F;
   p := Characteristic (F);
   f := Degree (F);
   qq := p^(f div 2);

   /* find Singer cycle in G */
   count := 1;
   repeat
      found := false;
      repeat
         g := Random (G);
         count +:= 1;
         //check if characteristic polynomial has irreducible factor of 'forbidden' degree
         Char := CharacteristicPolynomial (g);
         sqfree := SquareFreeFactorization (Char);
         if (#sqfree ge 3) then continue; end if;
         nonlinearfactors := [x[1]: x in sqfree | Degree(x[1]) gt 1];
         if (#nonlinearfactors ne 1) then continue; end if;
         degrees := [ x[1]: x in DistinctDegreeFactorization (nonlinearfactors[1])];
         if (not e in degrees) then continue; end if;
         forbiddendegrees := [x : x in degrees | not x in [1, 2, e div 2, e]];
         found := #forbiddendegrees le 1; 
      until found or count ge NumberRandom;
      if count ge NumberRandom then 
         vprint SmallDegree: "Failed to construct special element"; 
         return false, _, _, _;
      end if;

      E := GF (q^e);
      MA := MatrixAlgebra (E, n); 
      s := MA ! Eltseq (g);

      /* diagonalise s */
      EV := Eigenvalues (s);

      EVWithoutOnes := {@ ev[1]: ev in EV | ev[1] ne 1 @};
      NumberOfLargeEigenspaces := #{ev : ev in EV | ev[2] ge 2};

      MaxNumOfLargeEigenspaces := 1;
      if (TypeString eq "A" and not Degree(G) in [d^2-1, d^2-2]) then 
         MaxNumOfLargeEigenspaces := 0; 
      end if;

      // stop the search if s is a ppd(d,q,e)-element with enough eigenvalues
   until ((#EVWithoutOnes ge 1 and TestPPD(EVWithoutOnes[1], e, q) and 
           NumberOfLargeEigenspaces le MaxNumOfLargeEigenspaces) or count ge NumberRandom);

   if count ge NumberRandom then 
      vprint SmallDegree: "Failed to construct special element"; 
      return false, _, _, _;
   end if;

   //deal with complications in the unitary case for d even
   if (TypeString eq "2A" and IsEven (d) and n le d^2-2) then
      toohighpowers := [x^((qq^(e)+1) div (qq+1)): x in EVWithoutOnes | x^((qq^(e)+1) div (qq+1)) ne 1];
      if #toohighpowers ge 1 then 
         exp := Maximum([ Order(x): x in toohighpowers ]);
         s := s^exp;
         EV := Eigenvalues (s);      
      end if;
   end if; 

   if (count ge NumberRandom) then 
      vprint SmallDegree: "Failed to construct special element";  
      return false, _, _, _;
   else
      vprint SmallDegree: "Found special element after choosing", count, "elements";
   end if;

   /* what is the multiplicity of 1 */
   flag := exists(x){ x: x in EV | x[1] eq 1};
   if flag then ones := x[2]; else ones :=0; end if;
   /*now forget the other multiplicities */
   EV := [e[1]: e in EV];

   /* construct Frobenius orbits */
   ev := [];
   for i in [1..#EV] do
      v := EV[i];
      if v in &join (ev) then continue; end if;
      orbit := {@ v^(q^j): j in [0..d - 1] @};
      Append (~ev, orbit);
   end for;

   if (TypeString eq "2A" and IsEven (d) and (Degree(G) gt d*(d-1)/2)) then
      mySingleton := [x[1] : x in ev | #x eq 1];
      if #mySingleton gt 0 then 
         mySingleton := mySingleton[1];
         if (mySingleton ne 1) then 
            s:=s^Order (mySingleton); 
            EV := Eigenvalues (s);   
            /* what is the multiplicity of 1 */
            flag := exists(x){x: x in EV | x[1] eq 1};
            if flag then ones := x[2]; else ones := 0; end if;
            /* now forget the other multiplicities */
            EV := [e[1]: e in EV];

            /* construct Frobenius orbits  */
            ev := [];
            for i in [1..#EV] do
               v := EV[i];
               if v in &join (ev) then continue; end if;
               orbit := {@ v^(q^j): j in [0..d - 1] @};
               Append (~ev, orbit);
            end for;
         end if;
      end if;
   end if;
   return true, s, ev, ones;
end function;

ConstructListOfPossibleGroups := function(K)
   if Ngens (K) gt 20 then return false, _; end if;

   Coeffs := [x: x in CartesianPower ([One(Generic(K)), -One(Generic(K))], Ngens (K))];
   for tuple in Coeffs do 
      gp := sub<Generic(K) | [tuple[i]*K.i : i in [1..Ngens(K)]]>;
      if not (-1 in [Determinant (gp.i) : i in [1..Ngens(gp)]]) then 
         return true, gp;
      end if;
   end for;
   return false, _;
end function;

TestPlusMinusForPerfection := function(myList)
   return [gp : gp in myList | IsProbablyPerfect (gp)];
end function;

TestPlusMinusForDeterminants := function(myList) 
   newList := [];
   for gp in myList do
      if not (-1 in [Determinant (gp.i) : i in [1..Ngens(gp)]]) then Append (~newList, gp); end if; 
   end for;
   return newList;
end function;

fixSigns := function (K, G)
   if IsEven (#BaseRing (K)) then return true, K; end if; 
   flag, H := ConstructListOfPossibleGroups (K);
   if flag then return true, H; else return false, _; end if;
/* 
   myList := ConstructListOfPossibleGroups (K);
   if #myList eq 1 then return true, myList[1]; end if;
   if (IsOdd (#BaseRing(K))) then
      myList := TestPlusMinusForDeterminants (myList);
   end if;
   if #myList eq 0 then return false, _; end if;
   return true, myList[1];
*/
end function;

// preimage group stored as last item of record 
RetrieveExistingData := function (G)
   return true, G`SmallDegree[#G`SmallDegree]; 
end function;

// use LieType to find the isomorphism type of G
intrinsic RecogniseSmallDegree (G :: GrpMat) -> BoolElt, GrpMat  
{if G is a perfect defining characteristic absolutely irreducible representation of 
a classical group H of degree d and G has degree in [d + 1..d^2], then 
return true and H, otherwise false}

   require IsAbsolutelyIrreducible (G): "G must be absolutely irreducible";

   if assigned G`SmallDegree then return RetrieveExistingData (G); end if;

   vprint SmallDegree: "Determine the LieType ...";
   flag, type := LieType (G, Characteristic (BaseRing (G)));
   require flag: "G is not of Lie Type";

   TypeString := type[1];
   r := type[2];
   q := type[3];
   vprint SmallDegree: "Input group is of Lie Type", TypeString, "with rank", r, "and field size", q;

   if (TypeString in ["A", "2A"]) then d := r+1; end if;
   if (TypeString in ["C", "D", "2D"]) then d := 2*r; end if;
   if (TypeString in ["B"]) then d := 2*r+1; end if;

   FamilyTypes := AssociativeArray();
   FamilyTypes["A"] := "SL";
   FamilyTypes["B"] := "Omega";
   FamilyTypes["C"] := "Sp";
   FamilyTypes["D"] := "Omega+";
   FamilyTypes["2A"] := "SU";
   FamilyTypes["2D"] := "Omega-";
   type := FamilyTypes[TypeString]; 

   n := Degree (G);
   require n in [d + 1..d^2]: "Degree of the representation must be in range ", [d + 1..d^2];
   //certain coincidences must be caught
   if (TypeString eq "2A" and d eq 4 and Degree (G) in [20]) then 
      TypeString := "2D";
      d := 6;
   end if;
   if (TypeString eq "A" and d eq 4 and Degree (G) in [15, 36]) then 
      TypeString := "D";
      d := 6;
   end if;
   if (TypeString eq "A" and d eq 2 and Degree (G) eq 16) then 
      TypeString := "2D";
      d := 4;
   end if;
   if (TypeString eq "A" and d eq 2 and Degree (G) eq 9) then 
      TypeString := "B";
      d := 3;
   end if;
   if (TypeString eq "C" and d eq 4 and Degree (G) eq 25) then 
      TypeString := "B";
      d := 5;
   end if;
   return RecogniseSmallDegree (G, type, d, q);
end intrinsic;

SmallDegreeImpossibleInfo := recformat<
   Adjoint   : UserProgram,
   Delta     : UserProgram,
   SymSquare : UserProgram,
   AltSquare : UserProgram>;

RecogniseSmallDegreeImpossibleData := AssociativeArray();

RecogniseSmallDegreeImpossibleData["A"] := rec<SmallDegreeImpossibleInfo |
   Adjoint   := func<d, q | d le 3>,
   AltSquare := func<d, q | d le 3>,
   SymSquare := func<d, q | (d le 3 or (d eq 4 and q eq 3))>,
   Delta     := func<d, q | d le 2 or (d eq 3 and q le 4)>>;

RecogniseSmallDegreeImpossibleData["C"] := rec<SmallDegreeImpossibleInfo |
   Adjoint   := func<d, q | false>,
   AltSquare := func<d, q | (q eq 2 or d le 7)>,
   SymSquare := func<d, q | (q eq 3 or d le 5)>,
   Delta     := func<d, q | d le 3>>;

// q is underlying field size, not defining field size
RecogniseSmallDegreeImpossibleData["2A"] := rec<SmallDegreeImpossibleInfo |
   Adjoint   := func<d, q | (q eq 4 or d eq 4 or d le 2)>,
   AltSquare := func<d, q | d le 4 or (d eq 6 and q eq 4)>,
   SymSquare := func<d, q | d le 4>,
   Delta     := func<d, q | (d le 2 or (d in {4,5} and q eq 16)) or (d in {5} and q eq 81)>>;

RecogniseSmallDegreeImpossibleData["B"] := rec<SmallDegreeImpossibleInfo |
   Adjoint   := func<d, q | false>,
   AltSquare := func<d, q | (q eq 2 or d le 7)>,
   SymSquare := func<d, q | (q eq 3 or d le 6)>,
   Delta     := func<d, q | (q le 8 or d le 2) or (q eq 9 and d eq 3)>>;

RecogniseSmallDegreeImpossibleData["D"] := rec<SmallDegreeImpossibleInfo |
   Adjoint   := func<d, q | false>,
   AltSquare := func<d, q | (q eq 2 or d le 9)>,
   SymSquare := func<d, q | (q eq 3 or d le 9)>,
   Delta     := func<d, q | d le 5>>;

RecogniseSmallDegreeImpossibleData["2D"] := rec<SmallDegreeImpossibleInfo |
   Adjoint   := func<d, q | false>,
   AltSquare := func<d, q | (q eq 2 or d le 7)>,
   SymSquare := func<d, q | (q eq 3 or d le 5)>,
   Delta     := func<d, q | d le 3>>;

// type can be either "A", "B" etc or "SL", "Omega" etc
// q should be underlying field, not definition field 
function IsHandledByRecogniseSmallDegree (G, type, d, q)
   if type eq "2A" then q := q^2; end if;

   case type:
      when "SU": type := "2A";
      when "SL": type := "A";
      when "Omega": type := "B";
      when "Omega+": type := "D";
      when "Omega-": type := "2D";
      when "Sp": type := "C";
   end case;

   if not (Category(G) eq GrpMat and IsDivisibleBy (q, #CoefficientRing (G))) then
      return false;
   end if;
   n := Degree(G);

   if not (n gt d and n le d^2) then
      return false;
   end if;
   if n eq d^2 then
      // "** CHECK Delta";
      return not RecogniseSmallDegreeImpossibleData[type]`Delta(d, q);
   end if;
   if type in {"A", "2A"} and n in [d^2 - 2, d^2 - 1] then
      // "** CHECK Adjoint";
      return not RecogniseSmallDegreeImpossibleData[type]`Adjoint(d, q);
   end if;
   dchoose2 := d * (d - 1) / 2;
   if n in [dchoose2 - 2 .. dchoose2] then
      // "** CHECK Alt Square";
      return not RecogniseSmallDegreeImpossibleData[type]`AltSquare(d, q);
   end if;
   if IsOdd (q) and n in [dchoose2 + d - 2 .. dchoose2 + d] then
      // "** CHECK Sym Square";
      return not RecogniseSmallDegreeImpossibleData[type]`SymSquare(d, q);
   end if;
   
   return false;
end function;

intrinsic RecogniseSmallDegree (G :: GrpMat, type :: MonStgElt, d :: RngIntElt, q :: RngIntElt : 
   Verify := true, Hard := true, FieldLimit := 2^14) -> BoolElt, GrpMat  
{if G is a perfect defining characteristic absolutely irreducible representation of 
a classical group H of type <type>, degree d, and defining field GF (q), 
and G has degree in [d + 1..d^2], then return true and H, otherwise false;
the string <type> is one of SL, Sp, SU, Omega, Omega+, Omega-. 
If Verify then check that G is perfect. 
}
   require IsAbsolutelyIrreducible(G): "G must be absolutely irreducible";
   require type in ["SL", "Sp", "SU", "Omega", "Omega+", "Omega-"]: "Type is not valid";

   // "RecogniseSmallDegree: We are in new version of this code";
   case type:
      when "SU": TypeString := "2A";
      when "SL": TypeString := "A";
      when "Omega": TypeString := "B";
      when "Omega+": TypeString := "D";
      when "Omega-": TypeString := "2D";
      when "Sp": TypeString := "C";
   end case;
   n := Degree (G);
   require n in [d + 1..d^2]: "Degree of the representation must be in range ", [d + 1..d^2];

   if assigned G`SmallDegree then return RetrieveExistingData (G); end if;

   if TypeString eq "B" then 
      require IsOdd (d): "Degree must be odd";
   elif TypeString in {"C", "D", "2D"} then
      require IsEven (d): "Degree must be even";
   end if;

   flag := IsHandledByRecogniseSmallDegree (G, TypeString, d, q);
   if not flag then "Code does not apply to these parameters"; return false, _; end if;

   if Verify then 
      require IsProbablyPerfect (G): "Input group must be perfect";
   end if;
       
   F := BaseRing (G);
   p := Characteristic (F);
   f := Degree (F);

   // for unitary case change q to be underlying field size 
   if TypeString eq "2A" then q := q^2; end if;

   flag, e := IsPowerOf (q, p);
   require flag: "Input group must be in defining characteristic";

   require e mod f eq 0: "Base ring of input group and supplied field size are incompatible";
 
   dchoose2 := d*(d-1)/2;

   //try the alternating square 
   if (n in [dchoose2 - 2..dchoose2]) then 
      flag, A := RecogniseAlternatingSquare (G, TypeString, q); 
      if flag then return flag, A; end if;
   end if;

   //try the symmetric square
   if (n in [dchoose2 + d-2..dchoose2+d]) then
      flag, A := RecogniseSymmetricSquare (G, TypeString, q); 
      if flag then return flag, A; end if;
   end if;

   //try delta and dual delta
   if (n eq d^2) then
      if Hard eq false and q gt FieldLimit then return false, _; end if;
      flag, K := RecogniseDelta (G, TypeString, q: Hard := Hard);
      if not flag and TypeString in {"A", "2A"} then
         flag, K := RecogniseDualDelta (G, TypeString, q: Hard := Hard);
      end if;
      if flag then return flag, K; end if;
   end if;

   //try adjoint
   if (n in [d^2-2, d^2-1]) then 
      if Hard eq false and q gt FieldLimit then return false, _; end if;
      return RecogniseAdjoint (G, TypeString, q);
   end if;

   return false, _;
end intrinsic;

// G may be over a smaller field 
SetupGroup := function (G, g)
   q := G`SmallDegree[#G`SmallDegree];
   if q ne #BaseRing (G) then 
      GG := sub<GL(Degree (G), q) | [G.i: i in [1..Ngens (G)]]>;
      GG`SmallDegree := G`SmallDegree;
      g := Generic (GG)!g;
   else 
      GG := G;
   end if;
   return GG, g;
end function;

intrinsic SmallDegreePreimage (G :: GrpMat, g :: GrpMatElt: Limit := 10) -> BoolElt, GrpMatElt 
{if RecogniseSmallDegree has been applied to G and g is in G, then return true and the 
preimage of g; otherwise return false. Limit controls the number of attempts to 
construct the preimage.}

   require assigned G`SmallDegree: "Recognition for small degree modules: "
      cat "Must first apply RecogniseSmallDegree";

   Data := G`SmallDegree;
   len := #Data;
   A := Data[len]; TypeString := Data[len - 3]; q := Data[len - 1];
   d := Degree (A);

   // is g a generator of G or the identity?
   gens := [Generic (G) | G.i: i in [0..Ngens (G)]];
   pos := Position (gens, g);
   if pos ne 0 then pos -:= 1; return true, A.pos; end if;

   // no non-trivial scalars for these cases 
   if TypeString in {"B", "C", "D", "2D"} and IsScalar (g) then
      return false, _;
   end if;

   // possible scalars?
   if IsScalar (g) then 
      z := TypeString eq "2A" select Gcd (d, Isqrt (q) + 1) div 2 else Gcd (d, q - 1) div 2;
      if z eq 1 or z mod Order (g) ne 0 then return false, _; end if;
      // Z := EstimateCentre (G, z);
      // if not g in Z then return false, _; end if;
   end if;

   string := G`SmallDegree[1];
   if string eq "SymSquare" then 
      return SymmetricSquarePreimage (G, g, Limit); 
   elif string eq "AltSquare" then 
      return AlternatingSquarePreimage (G, g, Limit);
   elif string eq "DeltaSquare" then 
      return DeltaPreimage (G, g, Limit);
   elif string eq "DualDeltaSquare" then 
      return DualDeltaPreimage (G, g, Limit);
   elif string eq "Adjoint" then 
      return AdjointPreimage (G, g, Limit);
   end if;
end intrinsic;

intrinsic SmallDegreeImage (G :: GrpMat, h :: GrpMatElt) -> BoolElt, GrpMatElt 
{if RecogniseSmallDegree has been applied to G and h is in the preimage of G, 
then return true and the image of h in G; otherwise return false.}

   require assigned G`SmallDegree: "Recognition for small degree modules: "
      cat "Must first apply RecogniseSmallDegree";

   Data := G`SmallDegree;
   len := #Data;
   H := Data[len];
   m := Ngens (G);
   assert Ngens (H) eq m;

   // is h a generator of H or the identity?
   gens := [Generic (H) | H.i: i in [0..m]];
   pos := Position (gens, h);
   if pos ne 0 then pos -:= 1; return true, G.pos; end if;

   form := Data[len - 2];
   K := sub<Generic (H) | H, h>;
   assert Ngens (K) eq m + 1;

   // is h in H?
   TypeString := Data[len - 3];
   if (TypeString eq "A" and Determinant (h) ne 1) or 
      (TypeString ne "A" and not SatisfiesForm (K, form, TypeString)) then 
      return false, _; 
   end if;

   // Omega vs SO?
   if TypeString in {"B", "D", "2D"} then 
      spin := SpinorNorm (h, form);
      if spin ne 0 then return false, _; end if;
   end if;

   rep := Data[1];
   if rep eq "AltSquare" then 
      K := MyAlternatingSquare (K);
   elif rep eq "SymSquare" then 
      K := MySymmetricSquare (K);
   elif rep eq "Adjoint" then 
      K := MyAdjointRepresentation (K);
   elif rep eq "DeltaSquare" then 
      e := Data[4];
      K := MyDeltaRepresentation (K, e);
   elif rep eq "DualDeltaSquare" then 
      e := Data[4];
      K := MyDualDeltaRepresentation (K, e);
   else error "SmallDegreeImage: Type of repn is unknown";
   end if;

   image := Ngens (K) eq m + 1 select K.(m + 1) else K.0;
   if image eq K.0 then return true, G.0; end if;

   M := GModule (G);
   L := sub<Generic (K) | [K.i: i in [1..m]]>;

   // possible that G is defined over a smaller field than L
   if BaseRing (L) ne BaseRing (G) then
      vprint SmallDegree: "Groups defined over different fields";
      flag, L1 := IsOverSmallerField (L, Degree (BaseRing (G)));
      if not flag or BaseRing (G) ne BaseRing (L1) then
         error "Failure in field definition";
      end if;
      image := SmallerFieldImage (L, image);
   else
      L1 := L;
   end if;

   N := GModule (L1);
   flag, CB := IsIsomorphic (N, M);
   if not flag then 
      error "SmallDegreeImage: Modules are not isomorphic"; 
   end if;
   return true, Generic (G) ! (CB^-1 * image * CB);
end intrinsic;
