freeze;

/* code to decompose V^* \otimes V^\delta representation of H where 
   V^* is dual module for classical group H; the relevant cases are 
   SL(d, q) and SU(d, q) where V^* \otimes V^\delta is not 
   isomorphic to V \otimes V^\delta 

   Brian Corr and Eamonn O'Brien
*/

import "construct.m": MyDualDeltaRepresentation;
import "basics.m": getExtensionDegree, ChooseSingerElt, ScaleMatrix, 
FindScalarMultipleOverSubfield, fixSigns, EmbedInCorrectField, 
ElementFixesForm, GroupFixesForm;
import "delta.m": FixScalars;

//helpers
FindIndex := function (i, j, d)
   return (i - 1) * d + j;
end function;

FindEigenspacesSL := function (G, e, s, ev, TypeString) 
   n := Degree (G);
   flag, d := IsSquare (n);
   F := BaseRing (G);
   q := #F;
   E := GF(q^d);
   p := Characteristic (F);

   EV := &join(ev);
   MA := MatrixAlgebra (E, d);
   for f in ev do
      if #f eq 1 then continue; end if; 
      v := f[1]; 
      C := [x: x in EV | v^(q + 1) / x in EV and x^(-1 + p^e) eq v^(-1 + q * p^e)];
      /* candidates for l12 */
      C := [x : x in C | not x in [f[1], f[2]]];
      // vprint SmallDegree: "Length of C is ", #C;
      if #C eq 0 then continue; end if;

      good := true;
      first := {@ v^(q^j): j in [0..d - 1] @};
      L := Zero (MA);

      /* diagonal entries */
      for i in [1..d] do 
         L[i][i] := first[i]; 
      end for;
      
      Original := L;
      for c in C do 
         L := Original;
         L[1][2] := c;
         L[2][1] := L[1][1] * L[2][2] / L[1][2];
         for i in [2..d - 1] do
            L[i][i + 1] := L[i - 1][i]^q;
         end for;
         L[d][1] := L[d - 1][d]^q;
         for i in [2..d - 1] do
            L[i + 1][1] := (L[1][1] * L[i][i] * L[i + 1][i + 1]) /(L[i][i + 1] * L[1][i]);
            if not (L[i+1][1] eq L[1][1] * (L[2][1] / L[1][1])^((q^i - 1) div (q - 1))) then 
               good := false; continue c; 
            end if;
            L[1][i + 1] := L[1][1] * L[i + 1][i + 1] / L[i+1][1];
         end for;
         for i in [3..d - 1] do
            for j in [1..d - i] do
               L[j + 1][j + i] := L[j][j + i - 1]^q;
            end for;
         end for;
         for i in [2..d - 1] do
            for j in [2..d - i + 1] do
               L[i - 1 + j][j] := L[i - 2 + j][j - 1]^q;
            end for;
         end for;
      end for;
      if good and (Set(Eltseq(L)) eq Set(EV)) then 
          break f;
      end if;
   end for;
   
   try 
      L := Eltseq (L);
      ES := [Eigenspace (s, e).1: e in L];
      CB := GL(n, E) ! &cat ([Eltseq (x): x in ES]);
      return true, CB, CB^-1;
   catch e;
      return false,_,_;
   end try;
end function;

FindEigenspacesSOOdd := function (G, e, s, ev, TypeString) 
   n := Degree (G);
   flag, d := IsSquare (n);
   F := BaseRing (G);
   q := #F;
   dprime := d-1;
   E := GF(q^dprime);
   p := Characteristic (F);
   EV := &join(ev);
   MA := MatrixAlgebra (E, d);

   for f in ev do 
      v := f[1]; 
      if #f eq 1 then continue; end if;
      L := Zero (MA);

      for i in [1..dprime] do
         for j in [1..dprime] do
            val := v^(-q^(i-1) + p^e*q^(j-1));            
            if not val in EV then continue f; end if;
            L[i][j] := val;
         end for;
         val := v^(-q^(i-1));            
         if not val in EV then continue f; end if;
         L[i][d] := val;
         val := v^(p^e*q^(i-1));            
         if not val in EV then continue f; end if;
         L[d][i] := val;
      end for;
      L[d][d] := 1;
      break;
   end for;

   try
      L := Eltseq (L);
      ES := [Eigenspace (s, e).1: e in L];
      CB := GL(n, E) ! &cat ([Eltseq (x): x in ES]);
      return true, CB, CB^-1;
   catch e;
      return false, _,_;
   end try;
end function;

/* decompose g in G; CB is change-of-basis;
   C is matrix of constants; e is degree of Frobenius */
Reconstruct := function (G, g, C, CB, CBinv, e, q, TypeString)
   F := BaseRing (G);
   n := Degree (G);
   d := Isqrt (n);
   p := Characteristic (F);

   dprime := getExtensionDegree (d, TypeString);

   P := Parent (CB);
   K := CB * P!g * CBinv;
   E := BaseRing (P);
   MA := MatrixAlgebra (GF(q^dprime), d);
   A := Zero (MA);
   for i in [1..d] do 
      for j in [1..d] do 
         aijpower := K[FindIndex(1,i,d)][FindIndex(1,j,d)]*C[1][j] / C[1][i];
         A[i][j] := AllRoots (aijpower, p^e)[1];
      end for;
   end for;

   return true, A;
end function;

TryReconstruct := function (G, g, C, CB, CBinv, e,q, TypeString, trials, tryWithoutRandomElt)
   if tryWithoutRandomElt then
      flag, A := Reconstruct (G, g, C, CB, CBinv, e, q, TypeString);
      if flag then return true, A; end if;
   end if;
   for i in [1..trials] do
      h := Random(G);
      flag1, A1 := Reconstruct (G, g*h^(-1), C, CB, CBinv, e, q, TypeString);
      if (flag1 eq false) then continue; end if;
      flag2, A2 := Reconstruct (G, h, C, CB, CBinv, e, q, TypeString);
      if (flag2 eq false) then continue; end if;
      return true, A1*A2;
   end for;
   return false,_;
end function;

DetermineConstants := function (G, CB, CBinv, e, s, TypeString)
   F := BaseRing (G);
   n := Degree (G);
   d := Isqrt (n);
   q := #F;
   p := Characteristic (F);
   dprime := getExtensionDegree (d, TypeString);

   R := RandomProcess (G);
   P := Parent (CB);

   g := Random (R);
   K := CB * P ! g * CB^-1;

   // compute a_11* / a_22* 
   a11starovera22star := K[FindIndex (1, 3, d)][FindIndex (1, 3, d)]/
                         K[FindIndex (2, 3, d)][FindIndex (2, 3, d)];

   E := GF (q^dprime);
   MA := MatrixAlgebra (E, d);

   //compute order of s and a random conjugate for testing later
   Ord := Order(s);
   sss := Generic(G) ! Eltseq (s);
   sss := GL(n, q^dprime)!sss;
   sss := sss^(GL(n, q^dprime)!Random(G));
   sss := GL(n, q)!sss;

   A := Zero (MA);
   w := PrimitiveElement (E);

   //guess c_11. in practice both c_12, c_11 are 1 so this loop is not an issue. 
   for k in [0..q - 1] do 
      C := Zero (MA);
      C[1][1] := w^k;
      for i in [2..dprime] do
         C[i][i] := C[i - 1][i - 1]^q;
      end for;
      
      //guess c_12
      for kk in [0..q] do 
          C[1][2] := w^kk;
          for j in [3..dprime] do 
             C[1][j]:= (C[1][j-1]^(q+1) / C[1][j-2]^q) * a11starovera22star * 
                        K[FindIndex (2, j-1, d)][FindIndex (2,j, d)]/
                        K[FindIndex (1,j-1, d)][FindIndex (1,j, d)];
          end for;

          // compute Cij for all values up to dprime
          for j in [2..dprime] do
             for k in [1..dprime] do
                if k eq 1 then 
                   C[j][k] := C[j- 1][dprime]^q;
                else 
                   C[j][k] := C[j- 1][k - 1]^q; 
                end if;
             end for;
          end for;

          if (dprime eq d-1) then
             //this one also never rises above 0
             for kkk in [0..q] do
                C[1][d] := w^kkk;
                //a simple test 
                f2, ss := TryReconstruct (G, sss, C, CB, CBinv, e, q, TypeString, 100, true);
                if not IsScalar (ss^Ord) then continue kkk; end if;
                return true, C;
             end for;
          end if;

          if (dprime eq d-2) then
             // this one also never rises above 0
             for kkk in [0..q] do
                C[1][d] := w^kkk;
                C[1][d-1] := w^kkk;

                // a simple test 
                f2, ss := TryReconstruct (G, sss, C, CB, CBinv, e, q, TypeString, 100, true);
                 if not IsScalar (ss^Ord) then continue kkk; end if;
                 return true, C;
             end for;
          end if;

          f2, ss := TryReconstruct (G, sss, C, CB, CBinv, e, q, TypeString, 100, true);
          if not IsScalar (ss^Ord) then continue kk; end if;

          return true, C;
       end for;
    end for;

    return false, _;
end function;

RecogniseDualDelta := function(GG, TypeString, q: FrobeniusDegree := [], NumberRandom := 100, Hard := true)
   vprint SmallDegree: "Trying to recognise G as the dual Frobenius case";
   assert TypeString in ["A", "2A"];

   G := GG;
   n := Degree (G);
   flag, d := IsSquare (n);
   if flag eq false then 
      vprint SmallDegree: "Representation is not the dual Frobenius square"; 
      return false, _;
   end if;
   dprime := getExtensionDegree (d, TypeString);
   
   flag, G := EmbedInCorrectField (G, q);
   if not flag then return false, _; end if;

   F := BaseRing (G);
   f := Degree (F);
   if TypeString eq "2A" then f := f div 2; end if;
   list := FrobeniusDegree cmpeq [] select [1..f - 1] else FrobeniusDegree;

   for count in [1..NumberRandom] do
      vprint SmallDegree: "\nSelect special element ", count;
      found, s, ev, ones := ChooseSingerElt (G, TypeString, d);
      if found eq false then
         vprint SmallDegree: "Could not find a special element: Representation is probably not dual Frobenius representation of" , TypeString;
         return false, _;
      end if;
      for deg in list do 
         vprint SmallDegree: "Trying Frobenius degree ", deg;
         if TypeString eq "2A" and IsEven (d) then
            found, CB, CBinv := FindEigenspacesSOOdd (G, deg, s, ev, TypeString);
         else
            found, CB, CBinv := FindEigenspacesSL (G, deg, s, ev, TypeString);
         end if;
         if found then e := deg; break; end if;
      end for;
      if not found then continue; end if;
      vprint SmallDegree: "Eigenspaces found. Frobenius degree is", e;

      found, C := DetermineConstants (G, CB, CBinv, e,s, TypeString);
      vprint SmallDegree: "Succeeded in labelling constants? ", found;
      if found eq false then continue; end if;
      vprint SmallDegree: "Constants Cij have been computed.";

      X := [];
      for i in [1..Ngens(G)] do
         flag, MyGen := TryReconstruct (G, G.i, C, CB, CBinv, e, q, TypeString, NumberRandom, true);
         if not flag or Determinant (MyGen) eq 0 then break; end if;
         MyGen := ScaleMatrix(MyGen);
         if MyGen cmpeq false then break i; end if;
         Append (~X, MyGen);
      end for;
      if #X ne Ngens (G) then continue; end if;
      H := sub<GL(d, q^dprime) | X>;
      if IsAbsolutelyIrreducible (H) then
         flag, A := IsOverSmallerField (H, Degree (GF(q)): Scalars := true);
      else
         flag := false;
      end if;
      if flag then break count; end if;
   end for;

   if not assigned A then
      vprint SmallDegree: "Recognition for dual Frobenius representation"
         cat "Representation cannot be written over smaller field";
      return false, _;
   end if;

   //find and store a form defining our group (for testing preimage)
   found, A, form := GroupFixesForm (A, TypeString, q);
   if not found then return false, _; end if;

   SCB := H`SmallerFieldChangeOfBasis;

   vprint SmallDegree: "DualDelta: Now FixScalars ...";
   found, A := FixScalars (GG, A, q, e, TypeString: 
                  fct := MyDualDeltaRepresentation, Hard := Hard); 
   if not found then return false, _; end if;

   vprint SmallDegree: "DualDelta: Frobenius degree e = ", e;

   GG`SmallDegree := <"DualDeltaSquare", CB, CBinv, e, C, SCB, SCB^(-1), TypeString, form, q, A>;
   return true, A;
end function;

DualDeltaPreimage := function (G, g, limit: NumberRandom := 100)
   vprint SmallDegree: "Computing preimage (Dual Frobenius case)";
   R := G`SmallDegree; 
   CB := R[2]; CBinv := R[3]; e := R[4]; C := R[5]; SCB := R[6]; SCBinv := R[7]; 
   TypeString := R[8]; form := R[9]; A := R[11]; q := R[10]; 
   d := Degree (A); F := BaseRing (A);

   found := false; 
   for count in [1..2 * limit] do
      flag, h := TryReconstruct (G, g, C, CB, CBinv, e, q, TypeString, NumberRandom, count eq 1); 
      if not flag then return false, _; end if;
      if Determinant (h) eq 0 then continue count; end if;

      // write the matrix over the subfield
      im := SCBinv*h*SCB;
      im := FindScalarMultipleOverSubfield (im, GF(q));
      if im cmpeq false then continue count; end if;
      found, im := ElementFixesForm (A, F, TypeString, form, im);
      if found then break count; end if;
   end for;

   if found then 
      GG := sub<Generic (G) | [G.i: i in [1..Ngens (G)]], g>;
      AA := sub<Generic (A) | [A.i: i in [1..Ngens (A)]], im>;
      found, AA := FixScalars (GG, AA, q, e, TypeString : Hard := false, 
        fct := MyDualDeltaRepresentation, Start := Ngens (G) + 1);
      if not found then return false, _; end if;
      assert Ngens (AA) eq Ngens (GG);
      im := AA.Ngens (AA);
      return true, im;
   end if;

   vprint SmallDegree: "Construction of preimage failed."; 
   return false, _;
end function;
