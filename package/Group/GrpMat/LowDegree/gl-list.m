freeze;

/*
   Representatives of conjugacy classes of irreducible subgroups of GL(n, F)
   where n = 2, 3 and F is a finite field.

   List is complete when char (F) > 3. The insoluble list is complete 
   in all characteristics for n = 3.

   For n = 2 and the soluble list in degree 3, see: 
   D.L. Flannery and E.A. O'Brien, "Linear groups of small degree over finite fields",
   Internat. J. Algebra Comput. 15, 467-502, 2005.

   For the insoluble list in degree 3, see: 
   Barry Hurley, Classification Problems for Finite Linear Groups,
   PhD thesis, National University of Ireland (2013). 

   Respective implementations were developed by O'Brien and Hurley. 
   
*/

import "d2/abelian.m":AbelianList, SingerCycleList;
import "d2/monomial.m":Degree2MonomialList;
import "d2/primitive.m":Degree2PrimitiveList;
import "d2/insoluble.m":Degree2InsolubleList;
import "d3/monomial.m":MonomialList;
import "d3/primitive.m":PrimitiveList;
import "d3/insoluble_modular.m": InsolubleModular;
import "d3/insoluble_nonmodular.m": InsolubleNonmodular;

/* all integer sequences whose i-th entry is in the 
   range [1..M[i] by 1] for i in [1..#M] */

BackTrack := function (M)
 
   if Set (M) eq {1} then return [M]; end if;
 
   offset := 1;
   n := #M;
   m := [1: i in [1..#M]] cat [1];
   original := m;
   min := Minimum (m);
 
   IndexList := [i: i in [1..#M] | M[i] ge min];
   len := #IndexList;
   Append (~IndexList, n + 1);
 
   Solns := [];
   repeat
      index := 1;
      m[IndexList[index]] +:= offset;
      while (index le len and m[IndexList[index]] gt M[IndexList[index]]) do
         m[IndexList[index]] := original[IndexList[index]];
         index +:= 1;
         m[IndexList[index]] +:= offset;                                       
      end while;
      Append (~Solns, Prune (m));
   until (index gt len);
 
   return Solns;
 
end function;

intrinsic IrreducibleSubgroups (n :: RngIntElt, q :: RngIntElt: Soluble := true,
Insoluble := true) -> SeqEnum 
{Conjugacy classes of irreducible subgroups of GL(2, q) and GL(3, q)
- complete for characteristic >= 5. If either Soluble or Insoluble is false, 
then the corresponding groups are omitted; default for both is true.}

   if not (n in {2, 3}) then 
       error n, "is not a currently supported dimension (2 or 3)"; 
   end if;
   if not IsPrimePower (q) then error q, "must be field size"; end if;
   p := Factorisation (q)[1][1];
   if p lt 5 then  
      if n eq 3 then 
         if Soluble then 
            "WARNING: list of soluble subgroups is not complete"; 
         end if;
      else 
         "WARNING: list of subgroups is not complete"; 
      end if;
   end if;

   T := []; I := []; J := [];
   if n eq 2 then 
      if Soluble then 
         vprint Subgroups: "Set up abelian list ...";
         A := AbelianList (2, q);
         vprint Subgroups: "Set up monomial list ...";
         M := Degree2MonomialList (q);
         vprint Subgroups: "Set up Singer cycle list ...";
         C := SingerCycleList (2, q);
         vprint Subgroups: "Set up primitive list ...";
         P := Degree2PrimitiveList (q);
         T := A cat M cat C cat P; 
      end if;
      if Insoluble then 
         vprint Subgroups: "Set up insoluble list ...";
         I := Degree2InsolubleList (q);
         T cat:= I;
      end if;
   elif n eq 3 then
      if Soluble then 
         vprint Subgroups: "Set up abelian list ...";
         A := AbelianList (3, q);
         vprint Subgroups: "Set up monomial list ...";
         M := MonomialList (q);
         vprint Subgroups: "Set up Singer cycle list ...";
         C := SingerCycleList (3, q);
         vprint Subgroups: "Set up primitive list ...";
         P := PrimitiveList (q);
         T := A cat M cat C cat P; 
      end if;
      if Insoluble then 
         vprint Subgroups: "Set up insoluble list ...";
         I := InsolubleModular (GF (q), true, true);
         I := &cat (I);
         J := InsolubleNonmodular (GF (q), true);
         J := &cat (J);
         T cat:= I cat J;
      end if;
   end if;
   vprint Subgroups: "Total number of subgroups is ", #T;
   // return T, A, M, C, P, I cat J;
   return T;
end intrinsic;

intrinsic IrreducibleSolubleSubgroups (n :: RngIntElt, q :: RngIntElt) -> SeqEnum 
{Conjugacy classes of irreducible soluble subgroups of GL(2, q) and GL(3, q)
- complete for characteristic >= 5.}
    return IrreducibleSubgroups(n,q:Insoluble:=false);
end intrinsic;
