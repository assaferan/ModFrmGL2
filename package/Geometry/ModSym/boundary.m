freeze;
 
/****-*-magma-* EXPORT DATE: 2004-03-08 ************************************
                                                                            
                   HECKE:  Modular Symbols in Magma                          
                            William A. Stein                                 
                                                                            
   FILE: boundary.m (Computing the boundary map, whose kernel 
                     is the cuspidal symbols)

   $Header: /home/was/magma/packages/modsym/code/RCS/boundary.m,v 1.4 2002/01/22 01:58:36 was Exp $

   $Log: boundary.m,v $
   Revision 1.4  2002/01/22 01:58:36  was
   Added "StandardCusp".

   Revision 1.3  2002/01/20 03:43:15  was
   Added Cusps and RationalCusps.

   Revision 1.2  2001/04/23 00:44:46  was
   Changed BoundaryMap comment.

   Revision 1.1  2001/04/20 04:42:59  was
   Initial revision

   Revision 1.6  2001/01/24 18:13:47  was
   *** empty log message ***

   Revision 1.5  2000/06/19 09:54:39  was
   added freeze

   Revision 1.4  2000/05/25 22:31:59  was
   fixed comment in BoundaryMap

   Revision 1.3  2000/05/02 07:55:39  was
   added $Log: boundary.m,v $
   added Revision 1.4  2002/01/22 01:58:36  was
   added Added "StandardCusp".
   added
   added Revision 1.3  2002/01/20 03:43:15  was
   added Added Cusps and RationalCusps.
   added
   added Revision 1.2  2001/04/23 00:44:46  was
   added Changed BoundaryMap comment.
   added
   added Revision 1.1  2001/04/20 04:42:59  was
   added Initial revision
   added
   added Revision 1.6  2001/01/24 18:13:47  was
   added *** empty log message ***
   added
   added Revision 1.5  2000/06/19 09:54:39  was
   added added freeze
   added
   added Revision 1.4  2000/05/25 22:31:59  was
   added fixed comment in BoundaryMap
   added

                                                                            
 ***************************************************************************/

import "../GrpPSL2/GrpPSL2/creation.m" : FindLiftToSL2;

import "core.m" : CosetReduce,
                  LiftToCosetRep,
                  UnwindManinSymbol;

forward           CuspEquiv, 
                  CuspToFree,
                  CuspToFreeHelper,
                  ReduceCusp;


/////////////////////////////////////////////////////////////
//                                                         //
//               Exported functions                        //
//                                                         //
//  BoundaryMap, CuspToFree                                //
//                                                         //
/////////////////////////////////////////////////////////////


intrinsic BoundaryMap(M::ModSym) -> ModMatFldElt
{A matrix that represents the boundary map from M to the 
vector space whose basis consists of the weight-k cusps.}
   if not assigned M`boundary_map then
      if not IsAmbientSpace(M) then
         B := BoundaryMap(AmbientSpace(M));
         M`boundary_map := RMatrixSpace(BaseField(M),Dimension(M),Ncols(B))!
                  &cat [ Eltseq(v*B) : v in Basis(Representation(M))];
      else
         if Dimension(M) eq 0 then
            M`boundary_map := RMatrixSpace(BaseField(M),0,0)!0;
            return M`boundary_map;
         end if;
         Tgens := M`quot`Tgens;
         Sgens := M`quot`Sgens;
         F     := BaseField(M);
         n     := #Tgens;
         D     := [ [] : i in [1..n]];
         for j in [1..n] do
            i := Sgens[Tgens[j]];
            uv, w, ind := UnwindManinSymbol(i,M`mlist); 
            g := LiftToCosetRep(uv, M`N);
            if w eq Weight(M)-2 then 
               Append(~D[j], CuspToFreeHelper(M,Sign(M),[g[1],g[3]]));
            end if;
            if w eq 0 then // substract the second term.
               t := CuspToFreeHelper(M,Sign(M),[g[2],g[4]]);
               t[1] *:= -1;
               Append(~D[j], t);
            end if; 
         end for;
         if &cat D eq [] then
            M`boundary_map := RMatrixSpace(BaseField(M),Dimension(M),0)!0;
            return M`boundary_map;
         end if;      
         m := Max([x[2] : x in &cat D]);
         V := VectorSpace(F,m);
         Drows := [&+[V| x[1]*V.x[2] : x in D[i]] : i in [1..n]];
         M`boundary_map := RMatrixSpace(BaseField(M),n,m) ! Drows;
      end if;
   end if;
   return M`boundary_map;
end intrinsic;


intrinsic Cusps(M::ModSym) -> SeqEnum
{The cusps of M.  The weight must be two and the character trivial.}
   require IsCharacterTrivial(M) :
    "The dirichlet character of M must be trivial.";
   require Weight(M) eq 2 : "The weight of M must equal 2.";
   if not IsAmbientSpace(M) then
      return Cusps(AmbientSpace(M));
   end if;
   if not assigned M`cusplist then
      if Level(M) eq 1 then
         M`cusplist := [<Cusps()!Infinity(),1>];
      else
         dummy := CuspidalSubspace(M);
      end if;
   end if;
   assert assigned M`cusplist;
   return [Cusps()| x[1] : x in M`cusplist | x[2] ne 0];
end intrinsic;

function IsRational(M, alpha)
   N := Level(M);
   x := Eltseq(alpha);
   for d in [n : n in [2..N-1] | GCD(n,N) eq 1] do
      if not CuspEquiv(N,x,[x[1],x[2]*d]) then
         return false;
      end if;
   end for;
   return true;
end function;

intrinsic RationalCusps(M::ModSym) -> SeqEnum
{The rational cusps of M.  The weight must be two and the character trivial.}
   require IsCharacterTrivial(M) :
      "The character of M must be trivial.";
   require Weight(M) eq 2 : "The weight of M must equal 2.";
   C := Cusps(M);
   if SquarefreeFactorization(Level(M)) eq Level(M) then
      return C;
   end if;
   return [alpha : alpha in C | IsRational(M,alpha)];
end intrinsic;

intrinsic StandardCusp(M::ModSym, x::FldRatElt) -> FldRatElt
{The unique element of Cusps(M) that is equivalent to x.}
   require IsCharacterTrivial(M) :
            "The dirichlet character of M must be trivial.";
   require Weight(M) eq 2 : "The weight of M must equal 2.";

   alpha, i := CuspToFree(M,[Numerator(x),Denominator(x)]);
   assert alpha eq 1;
   return Cusps(M)[i];
end intrinsic;

intrinsic StandardCusp(M::ModSym, x::RngIntElt) -> FldRatElt
{The unique element of Cusps(M) that is equivalent to x.}
   require IsCharacterTrivial(M) :
         "The dirichlet character of M must be trivial.";
   require Weight(M) eq 2 : "The weight of M must equal 2.";

   return StandardCusp(M, RationalField()!x);
end intrinsic;


/////////////////////////////////////////////////////////////
//                                                         //
//               Non-exported functions                    //
//                                                         //
/////////////////////////////////////////////////////////////

function CuspToFree(M, x)
// Scalar alpha and index i such that x is equivalent to
// alpha*(ith standard cusp).
   return Explode(CuspToFreeHelper(M,Sign(M),Eltseq(x)));
end function;


function ReduceCusp(a)
   d := Gcd(a);
   return [Integers()|x/d : x in a];
end function;

// This function builds a table mapping from the indices of coset
// representatives in coset_list to a pair - the index of their orbit under
// the action of the cyclic group generated by T, and their place in
// that orbit.
// This enables us, given two cosets, identify whether they are in the
// same T orbit, and in that case what is the element in the group
// transferring one coset to the other
 
function BuildTOrbitTable(coset_list, coset_list_inv, G)
  T := PSL2(Integers()) ! [1,1,0,1];
  T_map := [CosetReduce(x * T, coset_list_inv, G) : x in coset_list];
  orbit_table := [[] : idx in [1..#coset_list]];
  cur_idx := 1;
  cur_orbit := 1;
  cur_ord_in_orbit := 1;
  while (cur_idx le #orbit_table) do                    
     orbit_table[cur_idx] := [cur_orbit, cur_ord_in_orbit];
     cur_idx := T_map[cur_idx];                            
     if (#orbit_table[cur_idx] gt 0) then
         cur_orbit := cur_orbit + 1;
         cur_ord_in_orbit := 1;
         while (cur_idx le #orbit_table) and (#orbit_table[cur_idx] gt 0) do
	      cur_idx := cur_idx + 1;
         end while;
     else
         cur_ord_in_orbit := cur_ord_in_orbit + 1;
     end if;
  end while;
  return orbit_table;
end function;

// This function finds an element in PSL2 mapping the cusp at infinity to
// a. 

function CuspInftyElt(a)
  cusp := ReduceCusp(a);
  g := PSL2(Integers())!Reverse(LiftToCosetRep(Reverse(cusp),1));
  return Transpose(Matrix(g));
end function;

// This function checks whether the cusps a and b are equivalent.
// It uses the orbit_table as input

function CuspEquivGrp(coset_list, coset_list_inv, G, orbit_table, a, b)
  gs := [CuspInftyElt(cusp) : cusp in [a,b]];
  idxs := [CosetReduce(PSL2(Integers())!g, coset_list_inv, G) : g in gs];
  orbit := [orbit_table[idx] : idx in idxs];
  if orbit[1][1] ne orbit[2][1] then // They are not in the same orbit
     return false, PSL2(Integers())!1;
  end if;
  t := PSL2(Integers())![1, orbit[1][2] - orbit[2][2], 0, 1];
  gamma := coset_list[idxs[2]] * t * coset_list[idxs[1]]^(-1);
  h := [gs[i] * Matrix(coset_list[idxs[i]]^(-1)) : i in [1..2]];
  return true, PSL2(Integers())!(h[2] * Matrix(gamma) * h[1]^(-1));
end function; 

function CuspEquiv(N,a,b) 
   u1, v1 := Explode(ReduceCusp(a));
   u2, v2 := Explode(ReduceCusp(b));
   s1 := 0;
   s2 := 0;
   if [u1,v1] ne [0,1] then
      s1 := (v1 eq 0 or v1 eq 1) select 1 else InverseMod(u1,Abs(v1));
   end if;
   if [u2,v2] ne [0,1] then
      s2 := (v2 eq 0 or v2 eq 1) select 1 else InverseMod(u2,Abs(v2));
   end if;
   g := Gcd(v1*v2,N);
   a := s1*v2 - s2*v1;
   if a mod g ne 0 then
      return false, 1;
   end if; 

   // Now we know the cusps are equivalent.  Use the proof of Prop2.2.3
   // of Cremona to find a matrix in Gamma_0(N) relating them. 
   dum,s2,r2 := Xgcd(u2,-v2);
   assert dum eq 1;
   dum,s1,r1 := Xgcd(u1,-v1);
   assert dum eq 1; 
   a := s1*v2 - s2*v1;
   assert a mod g eq 0;
   // solve x*v1*v2 + a = 0 (mod N).
   d,x0,y0 := Xgcd(v1*v2,N);          // x0*v1*v2 + y0*N = d = g.
   // so x0*v1*v2 - g = 0 (mod N)
   x := -x0 * Integers()!(a/g);
   // now  x*v1*v2 + a = 0 (mod N)
   s1p := s1+x*v1;
   return true, (u2*s1p-r2*v1) mod N;
end function;



/* The algorithm below is *very* efficient; it is a higher-weight
   non-trivial character generalization of Cremona's algorithm. 
   However, is is quite *delicate*, so be very very careful before
   changing anything below.   I found this algorithm while writing
   my thesis (see chapter 2 of Stein, "Explicit approaches to 
   modular abelian varieties".)  */

function CuspToFreeHelper(M, sign, a) 
   if not assigned M`cusplist then
      M`cusplist := [];
   end if;

   list  := M`cusplist;
   F     := BaseField(M);
   eps   := DirichletCharacter(M);   
   is_trivial_eps := IsCharacterTrivial(M);
   if not IsOfGammaType(M) then
      G     := LevelSubgroup(M);
      coset_list :=  M`mlist`coset_list;
      coset_list_inv := M`mlist`coset_list_inv;
      orbit_table := BuildTOrbitTable(coset_list, coset_list_inv, G);
   end if;
   N     := Level(M);
   k     := Weight(M);
 
   a := ReduceCusp(a);
   if a[2] lt 0 then
      a[1] *:= F!-1;
      a[2] *:= F!-1;
   end if;

   // Check if we've already encountered this cusp.
   for i in [1..#list] do
      b          := list[i];
      if IsOfGammaType(M) then
        equiv, alp := CuspEquiv(N, b[1], a);   // [gam_alp(b[1])]=?=[a].
      else
        coset_list_inv := M`mlist`coset_list_inv;
        equiv, alp := CuspEquivGrp(coset_list, coset_list_inv, G, orbit_table, b[1],a);
// printf "alp=%o, eps=%o, ElementToSequence(alp)=%o, Domain(eps)=%o\n", alp, eps, ElementToSequence(alp), Domain(eps);
        alp := Domain(eps)!ElementToSequence(alp);
      end if;
      if equiv then
         if b[2] eq 0 then
            return <F!0,1>;
         end if;
         if is_trivial_eps then
         //if IsTrivial(eps) then
            return <1,i>;
         else
	    if IsOfGammaType(M) then
               return <Evaluate(eps,alp)^(-1),i>;
            else
	       return <eps(alp)[1,1]^(-1),i>;
            end if;
         end if;
      end if;
      if sign ne 0 then
         if IsOfGammaType(M) then
            equiv, alp := CuspEquiv(N, b[1], [-a[1],a[2]]);
         else
	    coset_list_inv := M`mlist`coset_list_inv;
            equiv, alp := CuspEquivGrp(coset_list, coset_list_inv, G, orbit_table, b[1], [-a[1],a[2]]);
            alp := Domain(eps)!ElementToSequence(alp);
         end if; 
         if equiv then
            if b[2] eq 0 then
               return <F!0,1>;
            end if;
            if is_trivial_eps then
            // if IsTrivial(eps) then
               return <sign,i>;
            else
	      if IsOfGammaType(M) then
               return <sign*Evaluate(eps,alp)^(-1),i>;
	      else
		return <eps(alp)[1,1]^(-1),i>;
              end if;
            end if;
         end if;
      end if;
   end for;

   // Determine if this cusp class is killed by the relations.
   c := F!1;
   if not is_trivial_eps then
	  //if not IsTrivial(eps) then
     if IsOfGammaType(M) then
      u := a[1]; v := a[2];
      g := Gcd(N,v);
      x := Integers()!(N/Gcd(N,v));
      for j in [0..g-1] do
         alp := 1-j*x;
         if Gcd(alp,N) eq 1 then
            if (v*(1-alp)) mod N eq 0 and (u*(1-alp)) mod g eq 0 then
               if Evaluate(eps,alp) ne 1 then
                  c := F!0;
                  break;
               end if;
            end if;
         end if;
      end for;
      else
        pi_Q := Components(eps)[1];
        Q := Codomain(pi_Q);
        H := PSL2Subgroup(Kernel(pi_Q));
        coset_list_H := CosetRepresentatives(H);
        coset_list_inv_H := [h^(-1) : h in coset_list_H];
        orbit_table_H := BuildTOrbitTable(coset_list_H, coset_list_inv_H, H);
        for q in Q do
	  q_elt := FindLiftToSL2(q @@ pi_Q);
          q_a := ElementToSequence(Matrix([a]) * Transpose(q_elt));
          equiv, tmp := CuspEquivGrp(coset_list_H, coset_list_inv_H, H, orbit_table_H, q_a,a);
          if equiv and eps(q_elt)[1,1] ne 1 then
            c := F!0;
            break;
          end if;
        end for;
     end if;
   end if;

   Append(~list,<a,c>);
   M`cusplist := list;
   i := #list;

   if sign ne 0 then
      // Check is sign relation kills this cusp. 
      ans := CuspToFreeHelper(M,0,[-a[1],a[2]]);
      if ans[2] eq i and ans[1] ne sign then
         M`cusplist[i][2] := 0;
         c := F!0;
      end if;
   end if;
   return <c,i>;
end function;


