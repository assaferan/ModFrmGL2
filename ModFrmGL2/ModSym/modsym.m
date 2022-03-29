freeze;

/****-*-magma-* EXPORT DATE: 2004-03-08 ************************************
                                                                            
                   HECKE:  Modular Symbols in Magma                          
                            William A. Stein                                 
                                                                            
   FILE: modsym.m (Main modular symbols)

   2004-10-24: (WAS) Adding a requirement so coercion of multicharacter 
                     spaces is officially not supported

   11/19/03: (WAS)  Modified DisownChildren.

   11/17/02: (WAS)  Fixed nontermination bug in 'lt' for ModSym's 
             when the character is nontrivial.
                                                                             
   $Header: /home/was/magma/packages/ModSym/code/RCS/modsym.m,v 1.18 2002/08/25 19:39:33 was Exp was $

   $Log: modsym.m,v $
   Revision 1.19  2002/09/07 11:30:11  was
   Modified '!!' to use the levels instead of cusp widths.

   Revision 1.18  2002/08/25 19:39:33  was
   Add support for multichar spaces in coercion.

   Revision 1.17  2002/04/10 03:14:44  was
   Added hecke_algebra_z_basis.

   Revision 1.16  2002/02/19 01:15:14  was
   ..

   Revision 1.15  2002/02/19 01:13:53  was
   added al_decomp to meet.

   Revision 1.14  2002/02/19 01:03:14  was
   changed atkin_lehner to al_decomp!

   Revision 1.13  2002/02/19 00:14:04  was
   Added atkin_lehner attribute to ModSym type.

   Revision 1.12  2001/07/17 07:55:43  was
   Added attribute field_embedding.

   Revision 1.11  2001/07/17 07:18:06  was
   Removed sqfree caching.

   Revision 1.10  2001/07/17 07:09:16  was
   Added sqfree_new_operator attribute.

   Revision 1.9  2001/07/13 23:57:42  was
   Got rid of heilbronn attribute, since we no longer cache them.

   Revision 1.8  2001/07/13 03:25:41  was
   added plus and minus subspace.

   Revision 1.7  2001/07/13 02:43:14  was
   Added outgoing and incoming degeneracy matrix caches.

   Revision 1.6  2001/07/08 16:39:40  was
   Fixed this bug:
     > M:=ModularSymbols(6,4);
     > S<X, Y> := PolynomialRing(RationalField(), 2);
     > M!<S!0,[0,1]>;
          ^
      Runtime error in '!': The polynomial part is not homogeneous of degree 2.

   Revision 1.5  2001/05/21 08:59:12  was
   nothing.

   Revision 1.4  2001/05/14 02:47:28  was
   Improved comment and code of '!!'.  (I.e., changed the arguments from
   "M, x" to "M1, M2".

   Revision 1.3  2001/05/13 04:56:21  was
   ..

   Revision 1.2  2001/05/13 03:50:35  was
   Changed ModularForms flag to ModularSymbols.

   Revision 1.1  2001/04/20 04:47:00  was
   Initial revision

   Revision 1.24  2001/04/14 04:04:21  was
   Made a comment a little clearer.

   Revision 1.23  2001/02/24 04:32:05  was
   'lt' has trouble comparing forms with highly nontrivial character, so I print a warning instead
   of halting.

   Revision 1.22  2001/02/04 16:25:50  was
   Made BaseExtend a little more intelligent by trying to clear denominator, if
   this doesn't cause the dimension to go down.   This *might* never help, and might
   only slow things down.  However, another step that I will program later is
   to saturate after clearing denominators.   That will always work.

   Revision 1.21  2001/02/04 15:36:23  was
   Added use of ReductionMap in BaseExtend.

   Revision 1.20  2001/02/03 18:17:31  was
   Fixed a tiny bug

      "in intrinsic 'eq'(M1::ModSym, M2::ModSym) -> BoolElt",

   Previously this intrinsic did not compare the base fields of M1 and M2.

   Revision 1.19  2001/01/28 09:23:52  was
   fixed ordering.

   Revision 1.18  2001/01/28 08:50:39  was
   Extended 'lt' to work even if the modular symbols spaces have different
   level.

   Revision 1.17  2001/01/16 11:00:51  was
   Nothing.

   Revision 1.16  2001/01/13 04:02:34  was
   Added the following to the check to the coer. operator, so people
   won't make as many mistakes when using it.

                  if not (IsHomogeneous(coeff) and
                              (TotalDegree(coeff) eq Weight(M)-2)) then
                     return false, "The polynomial part is not homogeneous of degree "
                          cat IntegerToString(Weight(M)-2) cat ".";
                  end if;

   Revision 1.15  2000/10/28 10:46:27  was
   nothing.

   Revision 1.14  2000/09/01 16:55:30  was
   updated some documentation...  IsCuspidal, IsEisenstein, etc.

   Revision 1.13  2000/08/05 00:17:59  was
   Fixed bug in SortDecomposition.  I forgot the line

      if Dimension(M2) lt Dimension(M1) then
         return false;
      end if;

   Revision 1.12  2000/07/29 06:19:23  was
   Added a "ModularSymbol" function, like the ManinSymbol function!

   Revision 1.11  2000/07/29 03:36:20  was
   Nothing at all.

   Revision 1.10  2000/07/11 08:46:27  was
   Fix "DisownChildren" so it works even if the input is not the ambient space.

   Revision 1.9  2000/06/23 09:34:13  was
   nothing.

   Revision 1.8  2000/06/22 01:51:18  was
   Base extend w/ different characteristics now uses hom-base extend.

   Revision 1.7  2000/06/22 01:35:08  was
   base extend

   Revision 1.6  2000/06/22 00:43:57  was
   Added BaseExtend for maps.

   Revision 1.5  2000/06/19 09:55:01  was
   freeze

   Revision 1.4  2000/06/03 04:52:58  was
   verbose: ModularForm --> ModularForms

   Revision 1.3  2000/05/16 03:38:30  was
    Eliminated import of DegeneracyMatrix, because it is now an intrinsic.

   Revision 1.2  2000/05/02 13:40:07  was
   Fixed ill-defn of "IsNew".

   Revision 1.1  2000/05/02 08:03:39  was
   Initial revision

 
 ***************************************************************************/

import "../GrpPSL2/GrpPSL2/misc.m" : Conjugates, IsConjugate, NormalizerGrpMat;

import "arith.m" : ReductionMap,
                   SmallestPrimeNondivisor;


import "core.m" :  CManSymList,
                   ConvFromModularSymbol,
                   ConvToManinSymbol,
                   CQuotient,
                   ManinSymbolList,
                   ManinSymbolGenList,
                   ManSym2termQuotient,
                   ManSym3termQuotient,
                   ManSym2termQuotientGen,
                   ManSym3termQuotientGen;

import "multichar.m" : MC_ModSymToBasis,
                       AssociatedNewformSpace,
                       HasAssociatedNewformSpace;

import "operators.m" : ActionOnModularSymbolsBasis;


forward ModularSymbolsDual,
        ModularSymbolsSub;


///////////////////////////////////////////////////////////////////
//                                                               //
//    ModSym: The modular symbols object.                        //
//                                                               //
///////////////////////////////////////////////////////////////////

// In the comments in the attributes section declaration that follows, 
// we refer to "this" ModSym object as "M".

declare type ModSym [ModSymElt];

declare attributes ModSym:
// these attributes completely determine this
         eps,                // Dirichlet character
         G,                  // a level subgroup
                             // (arbitrary congruence subgroup of PSL2(Z)
         multi,              // Sequence of modular symbols spaces if
         is_multi,           // IsMultiChar is true (if eps is a sequence)
         multi_modsymgens,   // generating modular symbols in that case
         multi_quo_maps,
         MC_ModSymBasis_raw, // see function MC_ModSymBasis
         
         associated_newform_space,  // used by multi; the usual space of modular symbols underlying a 
                                   // multi space corresponding to a newform.

         isgamma1, isgamma,   // possibly assigned if this was created as the multicharacter space 
                             // of modular symbols for gamma1
         isgamma_type,       // to distinguish arbitrary levels
         k,                  // weight
         sign,               // sign -- see doc of ModularSymbols()

// Hecke bound
         hecke_bound,        // if assigned, replaces the "Sturm Bound".

// tree structure
         root,             // parent
         is_ambient_space,            // true <==> M is the root.

// tree of associated spaces of modular symbols of other levels
         creator, 
         other_levels,     

// Manin symbols reduction 
         mlist,              // list of Manin symbols, and other related data
         quot,               // gives representation of any 
                             //   Manin symbol in terms of free generators
         dimension,          // dimension of M.

// These can be recovered from eps, but we cache them for efficiency.
         N,                  // level
         F,                  // the base field

// Subspaces of various vector spaces associated to M
         sub_representation, 
         dual_representation,
         sub_cuspidal_representation,
         dual_cuspidal_representation,
         sub_integral_representation,
         dual_integral_representation,
         sub_integral_cuspidal_representation,
         dual_integral_cuspidal_representation,

// Decomposition of the cuspidal part of M into subspaces 
// corresponding to Galois-conjugacy classes of newforms.
         newform_decomposition,
         decomposition, 

// Frequently computed factors of M.
         complement,
         cuspidal_part,    
         eisenstein_part,  
         plus_part_sub,      // ZZ why both sub and dual?  
         plus_part_dual,     // see representation.m and subspace.m 
         minus_part_sub,
         minus_part_dual,
         plus_subspace,
         minus_subspace,
         new_part,      
         old_part,
         p_new_part,

// Basis of modular symbols.
         modsym_basis,        

// When applicable, the space of modular symbols 
// corresponding to the newform corresponding to M.
         associated_new_space, 

// Cached operators
         star_involution, 
         dual_star_involution,

// Discriminants of Hecke algebra
         discriminant, 
         discriminant_Q,  // disc(T tensor Q)

// Sequence of winding submodules
         winding,     

// Twisted winding submodules
         twisted_winding,
         twisted_winding_index,

// The boundary map, from M --> BoundaryModularSymbols.
         boundary_map,       
         cusplist,
         orbit_table,
         orbit_table_H,

// Caching of data related to various operators on M.
         heilbronn_cremona,
         heilbronn_merel,
         atkin_lehner,
         dual_atkin_lehner,  
         hecke_operator, 
         hecke_operator_proj_data,  // useful for speeding computation of hecke operator on subspaces
         dual_hecke_operator,
         projection_matrix,
         standard_images,       // images of standard basis vectors
         standard_images_squares,
         standard_images_all, 
         degeneracy_matrices_out,    // outgoing maps
         degeneracy_matrices_in,     // incoming maps
         hecke_algebra,
         hecke_algebra_over_q,
         hecke_algebra_disc,
         hecke_eigenvalue_field,
         hecke_eigenvalue_ring,
         hecke_algebra_z_basis,
         inner_twists,
         action_on_modsyms,
         num_components,

// Character groups of tori of M.
         X,                  

// Mestre module
         mestre,            

// For q-expansions of corresponding modular forms.
         qeigenform,         // q-expansion of eigenform-- a pair, f(x), coefs.
         qexpbasis,          // rational basis of q-expansions.
         qintbasis,          // integral basis of q-expansions.
         field_embedding,    // embedding psi : M/I --> field.
                             // (used in CompactSystemOfEigenvalues).
         eigenvector_in_terms_of_integral_basis,       // used by the intrinsic of the same name
         eigenvector_in_terms_of_expansion_basis,       // used by the intrinsic of the same name
         im_M1, // the image of the map from M_k(Gamma1(N^2))

// Eigenvectors for the action of the Hecke algebra (used in
// computing q-expansions)
         eigen, 
         eigenplus, 
         eigenminus,    
         eigenint,           // Eigenform in terms of integral basis

         one_over_ei,        // = <i, eigen[i], 1/eigen[i]>, where eigen is some eigenvector
                             // (added by Steve, because computing 1/eig[i] can take ages)


// The modular polarization.
         modular_kernel,
         modular_degree,

// Congruence between integral modular forms.
         congruence_group,


// Predicates
         is_new,
         is_p_new,             
         is_cuspidal,        
         is_eisenstein,      
         is_irreducible,     

// Analytic invariants
         scaled_rational_period_map,
         period_lattice,    
         real_volume,       
         minus_volume,  
         c_inf,              // Number of real components. 
         c_inf_minus,      

// used in analytic computations
         PeriodGens, 
 PGfast, 
         RatPeriodMap, 
         RatPeriodLat, 
         RatPeriodConj,
         RatPeriodMapSign, 
         PeriodMap, 
         PeriodMapPrecision,


// Rational parts of special values of L-functions.
         L_ratios,           // Ratios L(M,1)/Omega*(fudge).          
         L_ratios_odd,       // odd part of Ratios L(M,1)/Omega*(fudge).          
         ZxZalp, VolLEven, VolLOdd, // used in L_ratios computation.

// Component groups
         compgrp_orders,     // orders of component groups.
         tamagawa_numbers,   
         xdata,              // used in computing component groups.
         component_group_image,  // image of component group of J_0(N) in component group of M.

// The intersection pairing
         int_pairing,        // matrix of the intersection pairing (see intpairing.m).

// Atkin-Lehner decomposition
         al_decomp;       // sequence of pairs <p, eps_p>.

declare type ModSymElt;

declare attributes ModSymElt:
   parent,
   element,
   modsym_rep,
   maninsym_rep;
 
///////////////////////////////////////////////////////////////
// Manual deletion (from before the era of memory management)

intrinsic DisownChildren(M::ModSym) 
{No longer necessary -- do not use!}
end intrinsic;

intrinsic DeleteAllAssociatedData(M::ModSym : DeleteChars:=false)
{"} // "
end intrinsic;

///////////////////////////////////////////////////////////////
//                                                           //
//                  CONSTRUCTORS                             //
//                                                           //
///////////////////////////////////////////////////////////////


function IsSupportedField(F)
   if Type(F) in {@ FldRat, FldQuad, FldCyc, FldNum, FldFin@} then
      return true;
   else 
      return false;
   end if;
end function;

SupportMessage := "Modular symbols are only supported over fields of type FldRat, FldQuad, FldCyc, FldNum, or FldFin.";


intrinsic ModularSymbols(N::RngIntElt) -> ModSym
{The space of modular symbols 
 of level N, weight 2, and trivial character over the rational numbers.}
   requirege N,1;
   return ModularSymbols(N,2);
end intrinsic;


intrinsic ModularSymbols(N::RngIntElt, k::RngIntElt) -> ModSym
{The space of modular symbols of level N, weight k, and trivial character,
 over the rational numbers.}
   requirege N,1;
   requirege k,2;
   return ModularSymbols(N,k,0);
end intrinsic;


intrinsic ModularSymbols(N::RngIntElt, k::RngIntElt, F::Fld) -> ModSym
{The space of modular symbols of level N, weight k, and trivial character, 
 over the field F.}
   requirege N,1;
   requirege k,2;
   require IsSupportedField(F) : SupportMessage;
   return ModularSymbols(DirichletGroup(N,F)!1,k);
end intrinsic;

intrinsic ModularSymbols(G::GrpPSL2, k::RngIntElt, F::Fld) -> ModSym
{The space of modular symbols of level G, weight k, 
 over the field F.}
   requirege k,2;
   require IsSupportedField(F) : SupportMessage;
   return ModularSymbols(G,k,F,0);
end intrinsic;

intrinsic ModularSymbols(N::RngIntElt, k::RngIntElt, F::Fld, sign::RngIntElt) -> ModSym
{The space of modular symbols of level N, weight k, trivial
 character, and given sign, over the field F.}
   requirege N,1;
   requirege k,2;
   require sign in {-1,0,1} : "Argument 4 must be either -1, 0, or 1.";
   require IsSupportedField(F) : SupportMessage;
   return ModularSymbols(DirichletGroup(N,F)!1,k,sign);
end intrinsic;


intrinsic ModularSymbols(N::RngIntElt, k::RngIntElt, 
                               sign::RngIntElt) -> ModSym
{The space of modular symbols of level N, weight k, 
 trivial character, and given sign over the rational numbers.
 If sign=+1 then returns the +1 quotient, if sign=-1
 returns the -1 quotient, and if sign=0 returns the full
 space, respectively. The +1 quotient of M is M/(*-1)M, where 
 * is StarInvolution(M).}
   require sign in {-1,0,1} : "Argument 3 must be either -1, 0, or 1.";
   requirege N,1;
   requirege k,2;
   G := DirichletGroup(N);
   x := (G!1)^0;
   return ModularSymbols(x,k,sign);
end intrinsic;

intrinsic ModularSymbols(G::GrpPSL2, k::RngIntElt, 
				  sign::RngIntElt) -> ModSym
{The space of modular symbols of level G, weight k, 
 and given sign over the rational numbers.
 If sign=+1 then returns the +1 quotient, if sign=-1
 returns the -1 quotient, and if sign=0 returns the full
 space, respectively. The +1 quotient of M is M/(*-1)M, where 
 * is StarInvolution(M).}
   require sign in {-1,0,1} : "Argument 3 must be either -1, 0, or 1.";
   
   requirege k,2;
   return ModularSymbols(G,k,Rationals(),sign);
end intrinsic;

forward GetRealConjugate;
forward GetGLModel;

intrinsic ModularSymbols(G::GrpPSL2, k::RngIntElt, 
			 F::Fld, sign::RngIntElt) -> ModSym
{The space of modular symbols of level G, weight k, 
 and given sign over the field F.
 If sign=+1 then returns the +1 quotient, if sign=-1
 returns the -1 quotient, and if sign=0 returns the full
 space, respectively. The +1 quotient of M is M/(*-1)M, where 
 * is StarInvolution(M).}
   require sign in {-1,0,1} : "Argument 3 must be either -1, 0, or 1.";
   
   requirege k,2;
   require IsSupportedField(F) : SupportMessage;

   H := ImageInLevelGL(G);
/*
   if not IsOfRealType(G) then
     H := GetRealConjugate(H);
     G := PSL2Subgroup(H);
   end if;
*/
/*
   if assigned G`DetRep and #Domain(G`DetRep) lt EulerPhi(Level(G)) then
     H := GetGLModel(H);
     G := PSL2Subgroup(H);
   end if;
  */
   // Z := Center(ModLevel(G));
   Z := [-1,0,0,-1];
   ZG := PSL2Subgroup(sub<ModLevelGL(G) | Z, ImageInLevelGL(G)>);
   Q, pi_Q := ZG/G;
   eps := CharacterGroup(pi_Q, F, ZG, G)!1;
   return ModularSymbols(eps,ZG,k,F,sign);
end intrinsic;

intrinsic ModularSymbols(eps::GrpDrchElt, k::RngIntElt) -> ModSym
{The space of modular symbols of weight k and character eps.}
   requirege k,2;
   require IsSupportedField(BaseRing(eps)) : SupportMessage;
   return ModularSymbols(eps,k,0);
end intrinsic;

intrinsic ModularSymbols(eps::GrpChrElt, k::RngIntElt) -> ModSym
{The space of modular symbols of weight k and character eps.}
   requirege k,2;
   require IsSupportedField(BaseRing(eps)) : SupportMessage;
   return ModularSymbols(eps,k,0);
end intrinsic;

forward CreateTrivialSpace;

intrinsic ModularSymbols(eps::GrpDrchElt, k::RngIntElt, 
                         sign::RngIntElt) -> ModSym
{The space of modular symbols of weight k and character eps.
 The level and base field are specified as part of eps.
 The third argument "sign" allows for working in certain
 quotients.  The possible values are -1, 0, or +1, which correspond
 to the -1 quotient, full space, and +1 quotient.}
   require (-1 le sign and sign le 1) : 
              "Argument 3 must be either -1, 0, or 1";
   requirege k, 2;
   N := Modulus(eps);
   require N ge 1: "Modulus must be at least 1";

   F := BaseRing(eps);
   require IsSupportedField(F) : SupportMessage;

   G := Gamma0(N);

   if GetVerbose("ModularSymbols") gt 0 and 
      BaseRing(eps) ne BaseRing(MinimalBaseRingCharacter(eps)) then
      print "WARNING: You are creating a space of modular symbols with character eps";
      print "where eps is defined over a bigger field than necessary.   It would be";
      print "much more efficient to replace eps by MinimalBaseRingCharacter(eps).";
   end if;

   if Type(F) in {FldAC, FldPad} then
      if IsVerbose("ModularSymbols") then
         printf "WARNING: Base field %o not fully supported.\n", F;  
         printf "You might try using a less exotic base field, and then\n";
         printf "base extending.  However many standard functions might\n";
         printf "not work.\n";
      end if;
   end if;

   if IsVerbose("ModularSymbols") then
      tt := Cputime();
      printf "Computing space of modular symbols of level %o and weight %o....\n", N,k;
   end if;

   if Evaluate(eps,-1) ne (-1)^k then
       return CreateTrivialSpace(k,eps,sign);
   end if;

   if GetVerbose("ModularSymbols") ge 2 then   
      t := Cputime(); "I.\tManin symbols list."; 
   end if;
   mlist := ManinSymbolList(k,N,F);
   if GetVerbose("ModularSymbols") ge 2 then   
      printf "\t\t(%o s)\n",Cputime(t);
   end if;

   if GetVerbose("ModularSymbols") ge 2 then   
      t := Cputime(); "II.\t2-term relations.";
   end if;
   Sgens, Squot, Scoef := ManSym2termQuotient(mlist, eps, sign);
/*"Sgens = ", Sgens;
"Squot = ", Squot;
"Scoef = ", Scoef;
*/
   if GetVerbose("ModularSymbols") ge 2 then   
      printf "\t\t(%o s)\n",Cputime(t);
   end if;

   if #Sgens lt 1 then
       return CreateTrivialSpace(k,eps,sign);
   end if;

   if GetVerbose("ModularSymbols") ge 2 then   
      t := Cputime(); "III.\t3-term relations.";
   end if;
   Tgens, Tquot := ManSym3termQuotient(mlist, eps, Sgens, Squot, Scoef);
   if GetVerbose("ModularSymbols") ge 2 then   
      printf "\t\t(%o s)\n",Cputime(t);
   end if;
   dim := #Tgens;
   if dim lt 1 then
       return CreateTrivialSpace(k,eps,sign);
   end if; 
 
   M := New(ModSym);
   M`G := G;
   M`is_ambient_space := true;
   M`sub_representation  := VectorSpace(F,dim);
   M`dual_representation  := VectorSpace(F,dim);
   M`dimension := dim;
   M`k    := k;
   M`N    := N;
   M`eps  := eps;
   M`isgamma_type := true;
   M`sign := sign;
   M`F    := F;
   M`mlist:= mlist;
   M`quot := rec<CQuotient |  
                 Sgens := Sgens, 
                 Squot := Squot, 
                 Scoef := Scoef,
                 Tgens := Tgens, 
                 Tquot := Tquot>;  

   M`quot`Tquot := [Representation(M)!v : v in M`quot`Tquot];  // move them into M.
   if IsVerbose("ModularSymbols") then
      printf "\t\t(total time to create space = %o seconds)\n",Cputime(tt);
   end if;

   return M;
end intrinsic;

forward CreateTrivialSpaceGenEps;

intrinsic ModularSymbols(eps::GrpChrElt, G::GrpPSL2, k::RngIntElt,
				  F::Fld, sign::RngIntElt) -> ModSym
{The space of modular symbols of weight k and level G, with character eps.
 The third argument "sign" allows for working in certain
 quotients.  The possible values are -1, 0, or +1, which correspond
 to the -1 quotient, full space, and +1 quotient.}
   
   require (-1 le sign and sign le 1) : 
              "Argument 3 must be either -1, 0, or 1";
   requirege k, 2;
   require IsSupportedField(F) : SupportMessage;

 
   if sign ne 0 then
      require IsOfRealType(G) : "Group is not of real type.
                                 Sign quotients are only relevant 
                                 for groups of real type.";
   end if; 

   if Type(F) in {FldAC, FldPad} then
      if IsVerbose("ModularSymbols") then
         printf "WARNING: Base field %o not fully supported.\n", F;  
         printf "You might try using a less exotic base field, and then\n";
         printf "base extending.  However many standard functions might\n";
         printf "not work.\n";
      end if;
   end if;

   if IsVerbose("ModularSymbols") then
      tt := Cputime();
      printf "Computing space of modular symbols of level %o and weight %o....\n", G, k;
   end if;

   if Evaluate(eps,[-1,0,0,-1]) ne (-1)^k then
      return CreateTrivialSpaceGenEps(k,eps,sign,G);
   end if; 

   if GetVerbose("ModularSymbols") ge 2 then   
      t := Cputime(); "I.\tManin symbols list.";
   end if;
  
   mlist := ManinSymbolGenList(k,G,F);
   if GetVerbose("ModularSymbols") ge 2 then   
      printf "\t\t(%o s)\n",Cputime(t);
   end if;

   if GetVerbose("ModularSymbols") ge 2 then   
      t := Cputime(); "II.\t2-term relations.";
   end if;
   Sgens, Squot, Scoef := ManSym2termQuotientGen(mlist, eps, sign, G);

   if GetVerbose("ModularSymbols") ge 2 then   
      printf "\t\t(%o s)\n",Cputime(t);
   end if;

   if #Sgens lt 1 then
     return CreateTrivialSpaceGenEps(k,eps,sign,G);
   end if;

   if GetVerbose("ModularSymbols") ge 2 then   
      t := Cputime(); "III.\t3-term relations.";
   end if;
   Tgens, Tquot := ManSym3termQuotientGen(mlist, eps, Sgens, Squot, Scoef, G);
   if GetVerbose("ModularSymbols") ge 2 then   
      printf "\t\t(%o s)\n",Cputime(t);
   end if;
   dim := #Tgens;
   if dim lt 1 then
     return CreateTrivialSpaceGenEps(k,eps,sign,G);
   end if;

   M := New(ModSym);
   M`G    := G;
   M`is_ambient_space := true;
   M`sub_representation  := VectorSpace(F,dim);
   M`dual_representation  := VectorSpace(F,dim);
   M`dimension := dim;
   M`k    := k;
   M`isgamma_type := false;
   M`N    := Level(G);
   M`sign := sign;
   M`F    := F;
   M`eps := eps;
   
   M`sub_representation  := VectorSpace(F,dim);
   M`dual_representation  := VectorSpace(F,dim);
   M`dimension := dim;
   M`k    := k;
   
   M`N    := Level(G);
   M`sign := sign;
   M`F    := F;
   M`eps := eps;
   
   
   M`mlist:= mlist;
   M`quot := rec<CQuotient |  
                 Sgens := Sgens, 
                 Squot := Squot, 
                 Scoef := Scoef,
                 Tgens := Tgens, 
                 Tquot := Tquot>;  

   M`quot`Tquot := [Representation(M)!v : v in M`quot`Tquot];  // move them into M.

   if IsVerbose("ModularSymbols") then
      printf "\t\t(total time to create space = %o seconds)\n",Cputime(tt);
   end if;

   return M;
end intrinsic;


intrinsic ModularSymbols(eps::GrpChrElt, k::RngIntElt, 
                         sign::RngIntElt) -> ModSym
{The space of modular symbols of weight k and character eps,
    as a subspace of the modular symbols of weight k and level G.
 The level and base field are specified as part of overM.
 The third argument "sign" allows for working in certain
 quotients.  The possible values are -1, 0, or +1, which correspond
 to the -1 quotient, full space, and +1 quotient.}
   require (-1 le sign and sign le 1) : 
              "Argument 3 must be either -1, 0, or 1";
   requirege k, 2;

   F := BaseRing(eps);
   require IsSupportedField(F) : SupportMessage;

   if GetVerbose("ModularSymbols") gt 0 and 
      BaseRing(eps) ne BaseRing(MinimalBaseRingCharacter(eps)) then
      print "WARNING: You are creating a space of modular symbols with representation rep";
      print "where rep is defined over a bigger field than necessary.   It would be";
      print "much more efficient to replace eps by MinimalBaseRingCharacter(eps).";
   end if;

   if Type(F) in {FldAC, FldPad} then
      if IsVerbose("ModularSymbols") then
         printf "WARNING: Base field %o not fully supported.\n", F;  
         printf "You might try using a less exotic base field, and then\n";
         printf "base extending.  However many standard functions might\n";
         printf "not work.\n";
      end if;
   end if;

   G := Parent(eps)`GammaPrime;

   if IsVerbose("ModularSymbols") then
      tt := Cputime();
      printf "Computing space of modular symbols of level %o and weight %o....\n", G,k;
   end if;

   return ModularSymbols(eps, G, k, F, sign);

end intrinsic;


function ModularSymbolsSub(M, V)
/* Given a Hecke stable subspace V of Representation(M), construct 
   the corresponding space of modular symbols. 
   This function is not exported because it allows the user too much
   power to create nasty objects that don't satisfy the definition
   of a ModSym.
*/
  assert Degree(V) eq Dimension(AmbientSpace(M)) or
         Degree(V) eq Dimension(AmbientSpace(M)) * NumComponents(M);
   // assert V subset Representation(M);
   // This is obviously nontrivial in large dimensions

   MM := New(ModSym);
   MM`root := AmbientSpace(M);
   MM`is_ambient_space := false;
   MM`sub_representation := V;
   MM`dimension := Dimension(V);
   MM`sign := M`sign;
   MM`F    := M`F;
   MM`k    := M`k; // added for faster access (04-09, SRD)
   MM`G    := M`G;
   return MM;
end function;


function ModularSymbolsDual(M, V) 
/* Given a Hecke stable subspace of the linear dual of V, construct 
   the corresponding space of modular symbols.
   This function is not exported because it allows the user too much
   power to create nasty objects that don't satisfy the definition
   of a ModSym.
*/
   assert V subset DualRepresentation(M);
   MM := New(ModSym);
   MM`root := AmbientSpace(M);
   MM`is_ambient_space := false;
   MM`dual_representation := V;
   MM`dimension := Dimension(V);
   MM`sign := M`sign;
   MM`F    := M`F;
   MM`k    := M`k; // added for faster access (04-09, SRD)
   MM`G    := M`G;
   return MM;
end function;


function CreateTrivialSpace(k,eps,sign)
   F := BaseRing(eps);
   V := VectorSpace(F,0);
   N := Modulus(eps);
   M := New(ModSym);
   M`is_ambient_space := true;
   M`sub_representation  := VectorSpace(F,0);
   M`dual_representation  := VectorSpace(F,0);
   M`dimension := 0;
   M`k := k;
   M`N := N;
   M`G := Gamma1(N);
   M`eps := eps;
   M`isgamma_type := true;
   M`sign := sign;
   M`F := F;

   M`quot := rec<CQuotient | Sgens:=[], Squot:=[], 
               Scoef:=[], Tgens := [], Tquot:=[]>;

   coset_list := P1Classes(N);
   M`mlist := rec<CManSymList |
               k := k, 
               F := F, 
               R := PolynomialRing(F,2),
               coset_list := coset_list,
               n := #coset_list*(k-1)>;
   return M;
end function;

function CreateTrivialSpaceGenEps(k,eps,sign,G)
   F := BaseRing(eps);
   V := VectorSpace(F,0);
   M := New(ModSym);
   M`is_ambient_space := true;
   M`sub_representation  := VectorSpace(F,0);
   M`dual_representation  := VectorSpace(F,0);
   M`dimension := 0;

   M`k := k;
   M`G := G;
   M`eps := eps;
   M`N := Level(G);
   M`sign := sign;
   M`F := F;
   M`isgamma_type := false;

   M`quot := rec<CQuotient | Sgens:=[], Squot:=[], 
               Scoef:=[], Tgens := [], Tquot:=[]>;

   coset_list := CosetRepresentatives(G);
   M`mlist := rec<CManSymList |
               k := k, 
               F := F, 
               R := PolynomialRing(F,2),
               coset_list := coset_list,
               n := #coset_list*(k-1)>;
   return M;
end function;

///////////////////////////////////////////////////////////////
//                                                           //
//                 INVARIANTS                                //
//                                                           //
///////////////////////////////////////////////////////////////

intrinsic Weight(M::ModSym) -> RngIntElt
{The weight of the space M of modular symbols.}
   return M`k; // changed 04-09, SRD
   if IsAmbientSpace(M) then
      return M`k;
   end if;
   return Weight(AmbientSpace(M));
end intrinsic;


intrinsic Level(M::ModSym) -> RngIntElt
{The level of the space M of modular symbols.}
   if IsAmbientSpace(M) then
      return M`N;
   end if;
   return Level(AmbientSpace(M));
end intrinsic;

intrinsic LevelSubgroup(M::ModSym) -> GrpPSL2
{The level subgroup of the space M of modular symbols.}
   if IsAmbientSpace(M) then
      return M`G;
   end if;
   return LevelSubgroup(AmbientSpace(M));
end intrinsic;

intrinsic IsCuspidal(M::ModSym) -> BoolElt
{True if and only if M is contained in the cuspidal subspace
 of the ambient space.}
   if not assigned M`is_cuspidal then
      M`is_cuspidal := VectorSpace(M) 
                subset VectorSpace(CuspidalSubspace(AmbientSpace(M)));
   end if;
   return M`is_cuspidal;
end intrinsic;


intrinsic IsEisenstein(M::ModSym) -> BoolElt
{True if and only if M is contained in the Eisenstein 
 subspace of the ambient space.}
   if not assigned M`is_eisenstein then 
      M`is_eisenstein := M subset EisensteinSubspace(AmbientSpace(M));
   end if;
   return M`is_eisenstein;
end intrinsic;


intrinsic BaseRing(M::ModSym) -> Rng
{The base ring of the space M of modular symbols.}
   return M`F;
end intrinsic;


intrinsic BaseField(M::ModSym) -> Fld
{The base field of the space M of modular symbols.}
   return M`F;
end intrinsic;

intrinsic IsOfGammaType(M::ModSym) -> BoolElt
{True if and only if M is of gamma type}
   if IsAmbientSpace(M) then
      return M`isgamma_type;
   else
      return IsOfGammaType(AmbientSpace(M));
   end if;
end intrinsic;

intrinsic DirichletCharacter(M::ModSym) -> SeqEnum
{The Dirichlet character of the space M of modular symbols.}
   if IsAmbientSpace(M) then
      require assigned(M`eps) : "This space of modular symbols is not over a
                                 group of type gamma,hence it has no character";
      return M`eps;
   elif HasAssociatedNewformSpace(M) then
      return DirichletCharacter(AssociatedNewformSpace(M));
   else
      return DirichletCharacter(AmbientSpace(M));
   end if;
end intrinsic;


intrinsic IsPlusQuotient(M::ModSym) -> SeqEnum
{True if and only if the sign of M is +1.}
   if not assigned M`sign then 
      return Sign(AmbientSpace(M)) eq 1;
   end if;
   return M`sign eq 1;
end intrinsic;


intrinsic IsMinusQuotient(M::ModSym) -> SeqEnum
{True if and only if the sign of M is -1.}
   if not assigned M`sign then 
      return Sign(AmbientSpace(M)) eq -1;
   end if;
   return M`sign eq -1;
end intrinsic;


intrinsic Sign(M::ModSym) -> RngIntElt
{The sign of M; either -1, 0, or 1.}
   if not assigned M`sign then
      return Sign(AmbientSpace(M));
   end if;
   return M`sign;
end intrinsic;


intrinsic Dimension(M::ModSym) -> RngIntElt
{The dimension of M.}
   if not assigned M`dimension then return -1; end if;
    return M`dimension;
end intrinsic;


intrinsic DimensionComplexTorus(M::ModSym) -> RngIntElt
{The dimension of the abelian variety attached to A.}
   require IsCuspidal(M) : "Argument 1 must be cuspidal.";
   return Sign(M) ne 0 select Dimension(M) 
                  else Integers()!(Dimension(M)/2);
end intrinsic;


intrinsic Degree(M::ModSym) -> RngIntElt
{The degree of M, which is the dimension of the root of M.}
   if IsAmbientSpace(M) then
      return Dimension(M);
   else
      return Dimension(AmbientSpace(M));
   end if;
end intrinsic;


intrinsic IsAmbientSpace(M::ModSym) -> BoolElt
{True if and only if M is the ambient space of modular symbols,
 which was created by specifying a weight and character.}
   return M`is_ambient_space;
end intrinsic;


intrinsic AmbientSpace(M::ModSym) -> ModSym
{The ambient space of modular symbols, in which M lies.}
   if IsAmbientSpace(M) then
      return M;
   else
      return M`root;
   end if;
end intrinsic;


intrinsic IsIrreducible(M::ModSym) -> BoolElt
{True if and only if the Hecke operators T_p, with p prime to the 
level of M, do not decompose M into smaller modular symbols spaces.}

   if not assigned M`is_irreducible then
      require Type(BaseField(M)) in {FldRat, FldCyc, FldNum} :
         "The base field must be either the rationals, a cyclotomic field, or a number field.";

      if assigned M`associated_new_space then
         M`is_irreducible := true;
         return true;
      end if;

      E := EisensteinSubspace(M);
      if Dimension(E) gt 0 then
         if Dimension(E) lt Dimension(M) then
            M`is_irreducible := false;
         else
            D := Decomposition(M,HeckeBound(M));
            M`is_irreducible := #D eq 1;
         end if;
         return M`is_irreducible;     
      end if;

      // Currently, NewformDecomposition is only implemented for
      // Spaces of modular symbols of gamma type
      if IsOfGammaType(M) then
         D := NewformDecomposition(M);
      else
         D := Decomposition(M, HeckeBound(M));
      end if;

      M`is_irreducible := #D le 1;

      if #D eq 1 and HasAssociatedNewSpace(D[1]) then  // useful later
         M`associated_new_space := D[1]`associated_new_space;
         if assigned D[1]`associated_newform_space then
            M`associated_newform_space := D[1]`associated_newform_space;
         end if;
      end if;

   end if;
   return M`is_irreducible;
end intrinsic;


intrinsic IsNew (M::ModSym) -> BoolElt
{True if and only if M is contained in the new 
 cuspidal subspace of the ambient space.}
   if not assigned M`is_new then
      M`is_new := M subset NewSubspace(CuspidalSubspace(AmbientSpace(M)));
   end if;
   return M`is_new;
end intrinsic;


intrinsic IsNew (M::ModSym, p::RngIntElt) -> BoolElt
{True if and only if M is contained in the p-new cuspidal 
subspace of the ambient space.}

   if Level(M) mod p ne 0 then
      return true;
   end if;

   if not assigned M`is_p_new then
      M`is_p_new := [];
   end if;
   if exists(i) { i : i in [1..#M`is_p_new] | M`is_p_new[i][1] eq p } then
      return M`is_p_new[i][2];
   end if;
   require Characteristic(BaseField(M)) eq 0 :
          "The base field of argument 1 must be of characteristic 0.";
   t := M subset NewSubspace(CuspidalSubspace(AmbientSpace(M)),p);
   Append(~M`is_p_new, <p,t>);
   return t;
end intrinsic;

intrinsic IsNew (M::ModSym, p::GrpMat[RngIntRes]) -> BoolElt
{True if and only if M is contained in the p-new cuspidal 
subspace of the ambient space.}

//   if not (ImageInLevelGL(LevelSubgroup(M)) subset p) then
   eps := DirichletCharacter(M);
   G := ImageInLevelGL(Parent(eps)`Gamma);
   if not (G subset p) then
      return true;
   end if;

   if not assigned M`is_p_new then
      M`is_p_new := [];
   end if;
   if exists(i) { i : i in [1..#M`is_p_new] | M`is_p_new[i][1] eq p } then
      return M`is_p_new[i][2];
   end if;
   require Characteristic(BaseField(M)) eq 0 :
          "The base field of argument 1 must be of characteristic 0.";
   t := M subset NewSubspace(CuspidalSubspace(AmbientSpace(M)),p);
   Append(~M`is_p_new, <p,t>);
   return t;
end intrinsic;

intrinsic Basis(M::ModSym) -> SeqEnum
{The basis of M.}
   return [M!b : b in Basis(Representation(M))];
end intrinsic;

intrinsic IntegralBasis(M::ModSym) -> SeqEnum
{A basis over the integers for the integral modular symbols.
This is the intersection of M with the Z-lattice generated by 
all modular symbols X^iY^(k-2-i)\{a,b\}. 
If the base field is a number field
not equal to Q, then we view M as a Q-vector space using restriction
of scalars. 
}
//   require BaseField(M) cmpeq RationalField() :
//        "The base field of M must be RationalField().";

   L, phi  := Lattice(M);
   
   return [phi(b) : b in Basis(L)];
end intrinsic;

intrinsic NumComponents(M::ModSym) -> SeqEnum
{The number of connected components of the modular curve.}
  if not assigned M`num_components then
     if IsOfGammaType(M) then
        M`num_components := 1;
     else
        N := Level(M);
        G := LevelSubgroup(M);
        M`num_components := EulerPhi(N) div #Domain(G`DetRep);
     end if;
  end if;
  return M`num_components;
end intrinsic;

////////////////////////////////////////////////////////////////
//                                                            //
//                     Coercions                              //
//                                                            // 
////////////////////////////////////////////////////////////////

function ExtReElt_to_Cusp(z)
   if z cmpeq Infinity() then
      return Cusps()!Infinity();
   end if;
   return Cusps()!RationalField()!z;
end function;

function MakeCusps(x)
   x1, x2 := Explode(x);
   if Type(x1) eq SeqEnum and Type(Universe(x1)) eq RngInt and
      Type(x2) eq SeqEnum and Type(Universe(x2)) eq RngInt 
   then
      // shortcut (added 04-09, SRD)
      cusp1 := Cusp(x1[1], x1[2] : Quick);
      cusp2 := Cusp(x2[1], x2[2] : Quick);
      return cusp1, cusp2;
   elif Type(x1) eq ExtReElt then
      return Explode([ExtReElt_to_Cusp(z) : z in x]);
   else
      cusps := Cusps();
      valid, cusp1 := IsCoercible(cusps, x[1]);
      if valid then 
         valid, cusp2 := IsCoercible(cusps, x[2]);
      end if;
      if valid then 
         return cusp1, cusp2;
      end if;
      return false;
   end if;
end function;


//intrinsic IsCoercible(M::ModSym,x::.) -> BoolElt, ModSymElt
intrinsic IsCoercible(M::ModSym,x::.) -> BoolElt, ModSymElt
{Coerce x into M.}
   case Type(x):
      when RngIntElt:
         if x eq 0 then
            y := New(ModSymElt);
            y`parent := AmbientSpace(M);
            y`element := VectorSpace(M)!0;
            return true, y;
         end if;

      when ModTupFldElt, LatElt:
         val, el := IsCoercible(VectorSpace(M),x);
         if val eq false then
            return false, "Cannot coerce vector into space -- the dimension of the ambient space "*
                          "of the space of modular symbols should equal the dimension of the vector.";
         end if;
         y := New(ModSymElt);
         y`parent := AmbientSpace(M);
         y`element := el;
         return true, y;

      when SeqEnum:
         n := #x;
         if n eq 0 then
            return true, M!0;
         end if;

         if Type(x[1]) eq Tup then
            if IsMultiChar(M) then
               // changed so it returns a ModSymElt in M (04-09, SRD)
               //return true, MC_ModSymToBasis(M,x);
               vector := MC_ModSymToBasis(M,x);
               return true, M!vector;
            end if;
            R := AmbientSpace(M)`mlist`R;
            y := [];
            for a in x do
               if #a gt 2 then
                  return false, "Invalid tuple length.";
               end if;
               valid, coeff := IsCoercible(R,a[1]);
               if not valid then
                  return false, "Invalid polynomial coefficient of tuple.";
               end if;
               if Type(a[2]) ne SeqEnum then
                  return false, "Second argument of tuple must be a SeqEnum.";
               end if;
               if #a[2] ne 2 then
                  return false, "Second argument of tuple must have length 2.";
               end if;
               if coeff ne 0 and
                  (not (IsHomogeneous(coeff) and 
                           (TotalDegree(coeff) eq Weight(M)-2))) then
                  return false, "The polynomial part is not homogeneous of degree " 
                       cat IntegerToString(Weight(M)-2) cat ".";
               end if; 
               if Type(Universe(a[2])) eq SetCsp then
                  cusp1, cusp2 := Explode(a[2]);
               else
                  cusp1, cusp2 := MakeCusps(a[2]);
               end if;
               if Type(cusp1) eq BoolElt then
                  return false, "Invalid modular symbol in tuple -- not coercible into cusps!";
               end if;
               Append(~y,<coeff,[cusp1,cusp2]>);
            end for;
            return true, ConvFromModularSymbol(M,y);
         end if;


         valid, el := IsCoercible(VectorSpace(M),x);
         if valid eq false then
            return false, "Argument 2 is not coercible into the vector space of argument 1.";
         end if;
         y := New(ModSymElt);
         y`parent := AmbientSpace(M);
         y`element := el;
         return true, y;

      when Tup:
         return $$(M, [x]); //IsCoercible(M,[x]);


      when ModSymElt:
         if Parent(x) subset M then
            // TO DO: isn't this dangerous??  
            // should make a new copy of x instead of changing x's attributes -- SRD
            x`parent := AmbientSpace(M);
            return true, x;
         else 
            return false, "Illegal coercion";
            // This code would sometimes work, but it would also
            // be meaningless and not well defined, so I'm
            // not allowing it anymore.
            m := ModularSymbolRepresentation(x);
            can_coerce, ans := IsCoercible(M,m);
            if can_coerce then
               return true, ans;
            else
               return false, "Illegal coercion";  
            end if;
         end if;    

      else
         return false, "Illegal coercion";

   end case;
end intrinsic;

function GetDegeneracyReps(M1, M2, divisors)
    candidates := &cat[&cat[[[n div a, b, 0, a] : b in [0..a-1]
			     | GCD(b, GCD(a, n div a)) eq 1] :
			    a in Divisors(n)] : n in divisors];
    candidates := [GL(2,Rationals())!x : x in candidates];
    G1 := LevelSubgroup(M1);
    G2 := LevelSubgroup(M2);
    if (G1 subset G2) then
	G := G1;
	H := G2;
    else
	G := G2;
	H := G1;
    end if;
    
    gens := Generators(G);
    conj_gens := [[GL(2,Rationals())!Matrix(g)^alpha : g in gens]
		  : alpha in candidates];
    M2Z := MatrixAlgebra(Integers(),2);
    is_coercible := [&and[IsCoercible(M2Z, g) : g in cg] :
		     cg in conj_gens];
    candidates := [candidates[j] : j in [1..#candidates] |
		   is_coercible[j]];
    conj_gens := [conj_gens[j] : j in [1..#conj_gens] |
		  is_coercible[j]];
    is_good := [&and[g in H : g in cg] : cg in conj_gens];
    single_divisors := [candidates[j] : j in [1..#candidates] |
			is_good[j]];

    ans := [];
    // Checking for compatibility with Hecke operators
    for divisor in single_divisors do
	det := Integers()!Determinant(divisor);
	if Level(G) mod (Level(H) * det) ne 0 then
	    M2D := MatrixAlgebra(Integers(det),2);
	    alpha := M2D!Eltseq(divisor);
	    a, b, c, d := Explode(Eltseq(alpha));
	    alpha_tilde := M2D![d,-b,-c,a];
	    // Problem := as we only know H`DetRep(n) mod Level(H)
	    // There are several possibilities modulo D
	    hecke := [];
	    d_prime := det div GCD(det, Level(H));
	    offsets := CartesianPower([0..d_prime-1], 4);
	    for n in Domain(H`DetRep) do
		elt := [Integers()!a : a in Eltseq(H`DetRep(n))];
		for offset in offsets do
	    	   Append(~hecke, M2D![elt[i] + offset[i] : i in [1..4]]);
		end for;
	    end for;
	    // hecke := [M2D!H`DetRep(n) : n in Domain(H`DetRep)];
	    compat := &and[IsZero(alpha_tilde * h * alpha) : h in hecke];
	else
	    // This is Proposition 5.3.2
	    compat := true;
	end if;
	if compat then
	    Append(~ans, divisor);
	end if;
    end for;

    return ans;
    
  // I thought this should help, but these maps don't necessarily commute
  // with the Hecke Operators
/*
  // Now multiplying by conjugations in SL2Z
  conjs := Conjugates(ModLevel(G), ImageInLevel(H : N := Level(G)));
// for some weird reason the first works with Gamma(N), the second with
// Gamma0(N) - what is it? 
// old_conjs := [c : c in conjs | ImageInLevelGL(G) subset c];
  old_conjs := [c : c in conjs | ImageInLevel(G) subset c];
  alphas := [];
  for old_conj in old_conjs do
     con, alpha := IsConjugate(ModLevel(G),
			       ImageInLevel(H : N := Level(G)), old_conj);
     Append(~alphas, alpha);
   end for;
// !!! TODO: What do I do here when det is not surjective ???
//   det_reps := [G`DetRep(Determinant(alpha)) :  alpha in alphas];
//   betas := [alphas[i] * det_reps[i]^(-1) : i in [1..#alphas]];
   betas := alphas;
   beta_lifts := [GL(2,Rationals())!Eltseq(FindLiftToSL2(beta)) :
			beta in betas];
   return &cat[[beta * d : d in single_divisors] : beta in beta_lifts];
*/
   //return single_divisors;
end function;


intrinsic '!!'(M1::ModSym, M2::ModSym) -> ModSym
{The modular symbols subspace of M1 associated to M2.
Let N1 be the level of M1.  If ModularSymbols(M2,N1) is 
defined, let M3 be this modular symbols space, otherwise 
terminate with  an error.  If M3 is contained in M1, 
return M3, otherwise terminate with an error.}
   require IsOfGammaType(M1) eq IsOfGammaType(M2) :
       "Only support cases where both spaces are of gamma type or both are not";

   if not IsOfGammaType(M1) then
      require (LevelSubgroup(M1) subset LevelSubgroup(M2)) or
               (LevelSubgroup(M2) subset LevelSubgroup(M1)) :
       "The level subgroups of arguments 1 and 2 must be compatible." ;
   else
     require (Level(M1) mod Level(M2) eq 0 or Level(M2) mod Level(M1) eq 0) 
         : "The levels of arguments 1 and 2 must be compatible.";
   end if;
   
   require Weight(M1) eq Weight(M2) 
         : "The weights of arguments 1 and 2 must be the same.";
   require not IsMultiChar(M1) and not IsMultiChar(M2) 
         : "Coercision of modular symbols spaces is not supported for multicharacter spaces.";
   require Parent(DirichletCharacter(M1))!DirichletCharacter(M2) 
                eq DirichletCharacter(M1) 
         : "The characters of arguments 1 and 2 must be compatible.";

   if IsOfGammaType(M1) then
      if Level(M1) eq Level(M2) then
         require M2 subset M1 :  
           "Argument 2 must be contained in argument 1.";
         return M2;
       end if;
   else
       // if LevelSubgroup(M1) eq LevelSubgroup(M2) then
       G1 := Parent(DirichletCharacter(M1))`Gamma;
       G2 := Parent(DirichletCharacter(M2))`Gamma;
       if ImageInLevel(G1) eq ImageInLevel(G2) then
         require M2 subset M1 :  
           "Argument 2 must be contained in argument 1.";
         return M2;
       end if;
   end if;

   /*
   if IsOfGammaType(M1) then
       N1 := Level(M1);
       N2 := Level(M2);
   else
       N1 := CuspWidth(LevelSubgroup(M1), Infinity());
       N2 := CuspWidth(LevelSubgroup(M2), Infinity());
   end if;
  */
   N1 := Level(M1);
   N2 := Level(M2);
   
/*   divisors := Divisors(Level(M1) mod Level(M2) eq 0 select
                           Level(M1) div Level(M2) 
                        else
                           Level(M2) div Level(M1));
*/
   divisors := Divisors(N1 mod N2 eq 0 select N1 div N2 else N2 div N1);
   if not IsOfGammaType(M1) then
       // divisors := get_degeneracy_reps(M1, M2, divisors);
       divisors := GetDegeneracyReps(M1, M2, Divisors(LCM(N1, N2)));
   end if;

   B := Basis(VectorSpace(M2));
   imB := [];
   for d in divisors do
       f := DegeneracyMatrix(AmbientSpace(M2),AmbientSpace(M1),d);
       /*
       is_invariant := true;
       if not IsOfGammaType(M1) then
	   // Check that f commutes with the Hecke operators
	   // at primes dividing the level
	   primes := [x[1] : x in Factorization(N1)];
	   for p in primes do
	       Tp1 := HeckeOperator(AmbientSpace(M1), p);
	       Tp2 := HeckeOperator(AmbientSpace(M2), p);
	       if f * Tp1 ne Tp2 * f then
		   is_invariant := false;
		   break;
	       end if;
	   end for;
       end if;
       if not is_invariant then continue; end if;
*/
      for b in B do
         v := b*f;
         require v in VectorSpace(M1) :
           "The natural image of argument 2 is not a subspace of argument 1.";
         Append(~imB,v);
      end for;
   end for;
   return ModularSymbolsSub(M1, sub<VectorSpace(M1) | imB>);
   // Why did I add the following check??  ( ---Steve)
   ans := ModularSymbolsSub(M1, sub<VectorSpace(M1) | imB>);
   // error if Dimension(ans) eq 0, "Coerced structure has dimension 0, we're told";
   return ans;
end intrinsic;


////////////////////////////////////////////////////////////////
//                                                            //
//                     Printing                               //
//                                                            // 
////////////////////////////////////////////////////////////////

intrinsic Print(M::ModSym, level::MonStgElt)
{}
   if IsAmbientSpace(M) then
      full := "Full m";
   else
      full := "M";
   end if;
   
   if level eq "Minimal" then 
      printf "%oodular symbols space of weight %o and dimension %o over %o",
           full, Weight(M), Dimension(M), BaseField(M);
      return;
   end if;

   if IsOfGammaType(M) then
      if IsTrivial(DirichletCharacter(M)) then
         printf "%oodular symbols space for Gamma_0(%o) of weight %o and dimension %o over %o",
              full, Level(M), Weight(M), Dimension(M), BaseField(M);
      elif IsMultiChar(AmbientSpace(M)) then
         if assigned M`isgamma1 and M`isgamma1 then
            printf "%oodular symbols space for Gamma_1(%o) of weight %o and dimension %o over %o",
              full, Level(M), Weight(M), Dimension(M), BaseField(M);
         elif assigned M`isgamma and M`isgamma then
            printf "%oodular symbols space for Gamma(%o) of weight %o and dimension %o over %o " 
                 * "embedded as a subspace of modular symbols for Gamma_1(%o)",
              full, Integers()!Sqrt(Level(M)), Weight(M), Dimension(M), BaseField(M), Level(M);
         else
            printf "%oodular symbols space of level %o, weight %o, and dimension %o over %o (multi-character)",
              full, Level(M), Weight(M), Dimension(M), BaseField(M);
         end if;
      else
         printf "%oodular symbols space of level %o, weight %o, character %o, and dimension %o over %o",
              full, Level(M), Weight(M), DirichletCharacter(M), Dimension(M), BaseField(M);
      end if;
   else
     if IsTrivial(DirichletCharacter(M)) then
       printf "%oodular symbols space of level %o, weight %o, and dimension %o over %o",
       full, LevelSubgroup(M), Weight(M), Dimension(M), BaseField(M);
     elif IsMultiChar(AmbientSpace(M)) then
       printf "%oodular symbols space of level %o, weight %o, and dimension %o over %o (multi-character)",
              full, LevelSubgroup(M), Weight(M), Dimension(M), BaseField(M);
     else
       eps := DirichletCharacter(M);
       gens := Generators(Domain(eps));
       values_on_gens := [eps(g) : g in gens];
       printf "%oodular symbols space of level %o, weight %o, character sending %o to %o, and dimension %o over %o",
         full, LevelSubgroup(M), Weight(M), gens, values_on_gens, Dimension(M), BaseField(M);
     end if;
   end if;
end intrinsic;


intrinsic Print(x::ModSymElt, level::MonStgElt)
{}
   if IsZero(x`element) then
      printf "0"; 
   end if;
   m := ModularSymbolRepresentation(x);
   case level:
      when "Default":
         for i in [1..#m] do
            if m[i][1] ne 1 then
               if Weight(Parent(x)) eq 2  or
                      #Terms(m[i][1]) le 1 then
                  printf "%o*", m[i][1];
               else
                  printf "(%o)*", m[i][1];
               end if; 
            end if;
            printf "{%o, %o}", Cusps()!m[i][2][1], Cusps()!m[i][2][2];
            if i lt #m then
               printf " + ";
            end if;
        end for;
         
 //     when "Minimal":
//      when "Maximal":
      when "Magma":
         printf "%m", m;
      else
         m;
   end case;

end intrinsic;


////////////////////////////////////////////////////////////////
//                                                            //
//            Membership and equality testing                 //
//                                                            //
////////////////////////////////////////////////////////////////

intrinsic 'in'(x::ModSymElt, M::ModSym) -> BoolElt
{True if and only if x is an element of M.}

   return AmbientSpace(Parent(x)) eq AmbientSpace(M) and 
          Representation(x) in VectorSpace(M);

end intrinsic;


intrinsic Parent(x::ModSymElt) -> ModSym
   {}
   return x`parent;
end intrinsic;



////////////////////////////////////////////////////////////////
//                                                            //
//                     Operators                              //
//                                                            // 
////////////////////////////////////////////////////////////////

intrinsic 'subset'(M1::ModSym, M2::ModSym) -> BoolElt
{}
   if not (AmbientSpace(M1) cmpeq AmbientSpace(M2)) then
      return false;
   end if;
   if assigned M1`dual_representation and assigned M2`dual_representation then
      return DualRepresentation(M1) subset DualRepresentation(M2);
   end if;
   if assigned M1`sub_representation and assigned M2`sub_representation then
      return Representation(M1) subset Representation(M2);
   end if;
   return DualRepresentation(M1) subset DualRepresentation(M2);
end intrinsic;


intrinsic 'eq'(M1::ModSym, M2::ModSym) -> BoolElt
{}
   if IsOfGammaType(M1) ne IsOfGammaType(M2) then
      return false;
   end if;
   complete_eq := DirichletCharacter(M1) eq DirichletCharacter(M2);
   return IsMultiChar(M1) eq IsMultiChar(M2) and
          Weight(M1) eq Weight(M2) and
          Level(M1) eq Level(M2) and
          BaseField(M1) cmpeq BaseField(M2) and
          complete_eq and
          Sign(M1) eq Sign(M2) and
          ( (assigned M1`dual_representation and assigned M2`dual_representation 
                and DualVectorSpace(M1) cmpeq DualVectorSpace(M2)) or 
            (assigned M1`sub_representation and assigned M2`sub_representation 
                and VectorSpace(M1) cmpeq VectorSpace(M2))
          );
end intrinsic;


intrinsic 'eq' (x::ModSymElt,y::ModSymElt) -> BoolElt
   {}
   return x`parent eq y`parent and x`element eq y`element;
end intrinsic;

intrinsic 'eq' (x::ModSymElt, y::RngIntElt) -> BoolElt
{}
   require y eq 0 : "Argument 2 must equal 0.";
   return x eq Parent(x)!y;
end intrinsic;

intrinsic 'eq' (y::RngIntElt, x::ModSymElt) -> BoolElt
{}
   require y eq 0 : "Argument 1 must equal 0.";
   return x eq Parent(x)!y;
end intrinsic;

intrinsic 'meet'(M1::ModSym, M2::ModSym) -> ModSym
{The intersection of spaces of modular symbols M1 and M2 
(which must be subspaces of a common ambient)}

   require AmbientSpace(M1) eq AmbientSpace(M2) : 
          "Arguments 1 and 2 must have the same root.";

   if assigned M1`sub_representation and 
      assigned M2`sub_representation 
   then
      // MUST call function (cached sub may be larger)
      M := ModularSymbolsSub(M1,
              VectorSpace(M1) meet VectorSpace(M2));

      // The dual_representation may be any larger space:
      // DualRepresentation will find the correct space
      if assigned M1`dual_representation and 
         assigned M2`dual_representation 
      then
         M`dual_representation := 
              M1`dual_representation meet M2`dual_representation;
      elif assigned M1`dual_representation then
         M`dual_representation := M1`dual_representation;
      elif assigned M2`dual_representation then
         M`dual_representation := M2`dual_representation;
      end if;
   else
      // MUST call function (cached dual may be larger)
      M := ModularSymbolsDual(M1,
              DualVectorSpace(M1) meet DualVectorSpace(M2));

      // The sub_representation may be any larger space:
      // Representation will still find the correct space
      if assigned M1`sub_representation then
         M`sub_representation := M1`sub_representation;
      elif assigned M2`sub_representation then
         M`sub_representation := M2`sub_representation;
      end if;      
   end if;

   if assigned M1`al_decomp or assigned M2`al_decomp then
      M`al_decomp := (assigned M1`al_decomp select M1`al_decomp else {}) join
                     (assigned M2`al_decomp select M2`al_decomp else {});
   end if;

   return M;
end intrinsic;


intrinsic '+'(M1::ModSym, M2::ModSym) -> ModSym
{}
   require AmbientSpace(M1) eq AmbientSpace(M2) : "Arguments 1 and 2 must have the same root.";
   if assigned M1`al_decomp or assigned M2`al_decomp then
      require false : "+ not yet defined for Atkin-Lehner subspace.";
   end if;
   
   if assigned M1`sub_representation and assigned
                    M2`sub_representation then
      M := ModularSymbolsSub(AmbientSpace(M1),
              Representation(M1) + Representation(M2));
      if assigned M1`dual_representation and assigned
                      M2`dual_representation then
         M`dual_representation := 
              M1`dual_representation + M2`dual_representation;
      end if;
   else
      M := ModularSymbolsDual(AmbientSpace(M1),
              DualRepresentation(M1) + DualRepresentation(M2));
   end if;
   return M;
end intrinsic;


intrinsic '-'(M1::ModSym, M2::ModSym) -> ModSym
{}
   require AmbientSpace(M1) eq AmbientSpace(M2) : "Arguments 1 and 2 must have the same root.";
   if assigned M1`al_decomp or assigned M2`al_decomp then
      require false : "- not yet defined for Atkin-Lehner subspace.";
   end if;

   return M1 meet Complement(M2);
end intrinsic;


// This function must be defined and has to return a ModTupFldElt 
// in order for the system "subset" command to work.
intrinsic '+'(x::ModSymElt, y::ModTupFldElt) -> ModTupFldElt
{}
   require Dimension(Parent(x)) eq Degree(y) : "Bad argument types";
   return x`element+y;
end intrinsic;


intrinsic '.'(M::ModSym, i::RngIntElt) -> ModSymElt
{}
   requirege i,1;
   require i le Dimension(M) : "Argument 2 must be at most", Dimension(M);
   return M!(Representation(M).i);
end intrinsic;


intrinsic 'lt' (M1::ModSym, M2::ModSym) -> BoolElt
{Compare spaces of modular symbols that corresponding to
Galois-conjugacy classes of newforms of some level.  See the
manual for the definition of the ordering.}
   // At the moment for arbitrary gamma we just sort according to dimensions
   // Have to insert some ordering with respect to degeneracy maps
   if not IsOfGammaType(M1) then
       require not IsOfGammaType(M2) : "can't compare modular symbol spaces 
                                     when one is of gamma type, and the other
                                     is not";
       return Dimension(M1) lt Dimension(M2);
   end if;
   if HasAssociatedNewSpace(M1) and HasAssociatedNewSpace(M2) then
      N1 := AssociatedNewSpace(M1);
      N2 := AssociatedNewSpace(M2);
      if Level(N1) gt Level(N2) then
         return true;
      elif Level(N1) lt Level(N2) then
         return false;
      end if;
      if Level(N1) lt Level(M1) then
         return N1 lt N2;    // compare associated new spaces, recursively.
      end if;
   end if;

      /* special ordering, which extends Cremona's:
         (1) Smallest dimension is lesser (this was already tested above).
         (2) When the weight is two and the character is trivial:
             order by Wq eigenvalues, starting with *smallest* p|N and 
             with "+" being less than "-"
         (3) Order by abs(trace(a_p)), p not dividing the level, with positive
             one being smaller in the the event that the two absolute
             values are equal.  If weight is not two or character is
             nontrivial, include a_p for p dividing the level.
       */
   if M1 cmpeq M2 then
      return false;
   end if;

   if Dimension(M1) lt Dimension(M2) then
      return true;
   end if;

   if Dimension(M2) lt Dimension(M1) then
      return false;
   end if;

   
   cremona := not IsMultiChar(M1) and not IsMultiChar(M2) and Weight(M1) eq 2 and IsTrivial(DirichletCharacter(M1)) and IsTrivial(DirichletCharacter(M2));
   // Atkin-Lehners.
   if cremona then
      for P in Factorization(Level(M1)) do
         a1 := RationalField()!DualAtkinLehner(M1,P[1])[1,1];
         a2 := RationalField()!DualAtkinLehner(M2,P[1])[1,1];
         if a1 gt a2 then
            return true;
         elif a1 lt a2 then
            return false;
         end if;
      end for;
   end if;
   // by abs(trace(a_p))
   if cremona then   
      p := SmallestPrimeNondivisor(Level(M1),2);
   else
      p := 2;
   end if;
   while true do
      t1 := Trace(Trace(DualHeckeOperator(M1,p)));
      t2 := Trace(Trace(DualHeckeOperator(M2,p)));
      if Abs(t1) lt Abs(t2) then
         return true;
      elif Abs(t1) gt Abs(t2) then
         return false;
      elif Abs(t1) eq Abs(t2) then
         if t1 gt t2 then 
            return true;
         elif t1 lt t2 then
            return false;
         end if;
      end if;
      p := NextPrime(p);
      if cremona then 
         p := SmallestPrimeNondivisor(Level(M1),p);
      end if;
      if p gt HeckeBound(M1) and p gt HeckeBound(M2) then
         //print "WARNING!: Could not compare argument 1 and argument 2.";
         //print "Arg 1 = ", M1, "\nArg 2 = ", M2;
         //print "Please send was@math.harvard.edu an email.";
         return true;
      end if;
   end while;      

end intrinsic;


intrinsic ManinSymbol(x::ModSymElt) -> SeqEnum
{An expression of x in terms of Manin symbols, which are
represented  as 2-tuples < P(X,Y),[u,v] >.}
   M := AmbientSpace(Parent(x));
   require not IsMultiChar(M) : 
    "Argument 1 must not belong to a multicharacter space.";
   w := Representation(x);
   return [<w[i]*y[1],y[2]> : i in [1..Dimension(M)]  | w[i] ne 0           
             where y is ConvToManinSymbol(M,i) ]; 
end intrinsic;


intrinsic ModularSymbol(x::ModSymElt) -> SeqEnum
{An expression of x in terms of modular symbols.}
   return ModularSymbolRepresentation(x);
end intrinsic;


////////////////////////////////////////////////////////////////
//                                                            //
//                    Base Extension                          //
//                                                            // 
////////////////////////////////////////////////////////////////


intrinsic BaseExtend(M::ModSym, F::Fld) -> ModSym
{Base extension of M to F.}

   require IsSupportedField(F) : SupportMessage;

   require not IsMultiChar(M) : "Not implemented for \"multicharacter\" spaces"; // TO DO

   K := BaseField(M);

   if K cmpeq F then
      return M;
   end if;

   if Characteristic(K) ne Characteristic(F) then
      require Characteristic(K) eq 0:
           "Base field of M and F have incompatible characteristics.";
      vprint ModularSymbols,1 : "WARNING: Base field of M and F have different characteristics.";
      phi := ReductionMap(K,F);    
      return BaseExtend(M, phi);
   end if;


   if not IsAmbientSpace(M) then

      ambient := BaseExtend(AmbientSpace(M),F);
      V := VectorSpace(ambient);

      if assigned M`sub_representation then
         B := [V|b : b in Basis(VectorSpace(M))];
         N := ModularSymbolsSub(ambient, 
                        sub<V | B>);
      end if;

      if assigned M`dual_representation then
         B := [V|b : b in Basis(DualVectorSpace(M))];
         if assigned M`sub_representation then
            N`dual_representation := sub<DualVectorSpace(ambient)|B>;
         else
            N := ModularSymbolsDual(ambient, 
                          sub<DualVectorSpace(ambient) | B>);
         end if;
      end if;
      
      return N;
   end if;


   // Base extend an ambient space:

   function BaseExtendMlist(mlist, F) 
      // Base extend the mlist to the field F.
      mlist`F := F;
      mlist`R := PolynomialRing(F,2);
      return mlist;
   end function;
   
   function BaseExtendQuot(quot, F) 
      // Base extend the quot to the field F.
      quot`Scoef:=[F!quot`Scoef[i] : i in [1..#quot`Scoef]];
      if #quot`Tquot gt 1 then
         V := VectorSpace(F,Degree(quot`Tquot[1]));
         quot`Tquot := [V!quot`Tquot[i] : i in [1..#quot`Tquot]];
      end if;
      return quot;
   end function;
   

   N := New(ModSym);
   N`is_ambient_space := true;


   V := VectorSpace(F,Dimension(AmbientSpace(M)));
   V := VectorSpace(F,Dimension(M));
   N`sub_representation  := V;
   N`dual_representation := V;

   N`k    := M`k;
   N`N    := M`N;
   N`G    := M`G;
   N`isgamma_type := M`isgamma_type;
   if (IsOfGammaType(M)) then
       N`eps  := BaseExtend(M`eps,F);
   end if;
   N`sign := M`sign;
   N`F    := F;

   N`dimension := M`dimension;

   N`mlist := BaseExtendMlist(M`mlist, F);
   N`quot  := BaseExtendQuot(M`quot, F);
  
   return N;
end intrinsic;


intrinsic Eltseq(M::ModSymElt) -> SeqEnum
{For internal use}
   return Eltseq(M`element);
end intrinsic;


intrinsic BaseExtend(M::ModSym, f::Map) -> ModSym
{Base extension of M to Codomain(f) using the map f : BaseField(M) --> F.}

   F := Codomain(f);

   require IsSupportedField(F) : SupportMessage;

   require not IsMultiChar(M) : "Not implemented for \"multicharacter\" spaces"; // TO DO

   if BaseField(M) cmpeq F then
      return M;
   end if;

   if not IsAmbientSpace(M) then

      ambient := BaseExtend(AmbientSpace(M),f);
      V := VectorSpace(ambient);

      function BaseExtendSpace(V, f, B)
         // if Domain(f) is a characteristic 0 field, and Codomain(f) has
         // has characteristic p, multiply
	 // each of the basis vectors by p^(ord_p(denominator)) --
	 // This doesn't change the space that B spans.
	 // Optimally, we would saturate B first, but we don't yet do that.
         p := Characteristic(Codomain(f));
         if p ne 0 and Characteristic(Domain(f)) eq 0 then
            B := [b*LCM([p^Valuation(Denominator(b[i]),p) : i in [1..Degree(b)]])
                               : b in B];
         end if;
         reduced := [V | [f(x) : x in Eltseq(b)] : b in B]; 
         Vred := sub<V|reduced>;
         if Dimension(Vred) lt #B then
            error "Base extension of ", M, " to ", Codomain(f), " is not yet programmed.";
         end if;
         return Vred;
      end function;         

      if assigned M`sub_representation then
         Vred := BaseExtendSpace(V, f, Basis(VectorSpace(M)));
         N := ModularSymbolsSub(ambient, Vred);
      end if;

      if assigned M`dual_representation then
         Vred := BaseExtendSpace(DualVectorSpace(ambient), f, 
                                    Basis(DualVectorSpace(M)));
         if assigned M`sub_representation then
            N`dual_representation := Vred;
         else
            N := ModularSymbolsDual(ambient, Vred);
         end if;
      end if;
      
      return N;
   end if;


   // Base extend an ambient space:

   function BaseExtendMlist(mlist, F) 
      // Base extend the mlist to the field F.
      mlist`F := F;
      mlist`R := PolynomialRing(F,2);
      return mlist;
   end function;
   
   function BaseExtendQuot(quot, F, f) 
      // Base extend the quot to the field F.
      quot`Scoef:=[f(quot`Scoef[i]) : i in [1..#quot`Scoef]];
      if #quot`Tquot gt 1 then
         V := VectorSpace(F,Degree(quot`Tquot[1]));
         quot`Tquot := [V![f(x) : x in Eltseq(quot`Tquot[i])] 
                                       : i in [1..#quot`Tquot]];
      end if;
      return quot;
   end function;
   

   N := New(ModSym);
   N`is_ambient_space := true;

   V := VectorSpace(F,Dimension(AmbientSpace(M)));
   V := VectorSpace(F,Dimension(M));
   N`sub_representation  := V;
   N`dual_representation := V;

   N`k    := M`k;
   N`N    := M`N;
   N`G    := M`G;
   N`isgamma_type := M`isgamma_type;
   if IsOfGammaType(M) then
     N`eps  := BaseExtend(M`eps,f);
   end if;
   N`sign := M`sign;
   N`F    := F;

   N`dimension := M`dimension;

   N`mlist := BaseExtendMlist(M`mlist, F);
   N`quot  := BaseExtendQuot(M`quot, F, f);
  
   return N;
end intrinsic;



////////////////////////////////////////////////////////////////
//                                                            //
//                    Arithmetic                              //
//                                                            // 
////////////////////////////////////////////////////////////////

function init_ModSymElt(M,v)
   x := New(ModSymElt);
   x`parent := M;
   x`element := v;
   return x;
end function;

intrinsic '*'(a::RngElt,x::ModSymElt) -> ModSymElt
   {}
   M := Parent(x);
   require Type(Parent(a)) eq RngInt or 
      Parent(a) cmpeq BaseRing(M) : "Elements have different parents."; 
   z := New(ModSymElt);
   z`parent := M;
   z`element := a*x`element;
   return z;
end intrinsic;

intrinsic '*'(x::ModSymElt,a::RngElt) -> ModSymElt
   {}
   M := Parent(x);
   if Type(Parent(a)) eq AlgMat then
      require Type(BaseRing(Parent(a))) eq RngInt or 
         BaseRing(Parent(a)) eq BaseRing(M) : 
         "Arguments have different coefficient rings."; 
      require Degree(Parent(a)) eq Dimension(M) : 
         "Arguments have incompatible dimensions."; 
   else 
      require Type(Parent(a)) ne RngIntElt or 
         Parent(a) cmpeq BaseField(M) : 
         "Arguments have different coefficient rings."; 
   end if;
   return init_ModSymElt(M,x`element * a);
end intrinsic;

intrinsic '*'(x::ModSymElt,T::AlgMatElt) -> ModSymElt
   {}
   M := Parent(x);
   require Type(BaseRing(Parent(T))) eq RngInt or 
      BaseRing(Parent(T)) eq BaseRing(M) : 
      "Arguments have different coefficient rings."; 
   require Degree(Parent(T)) eq Dimension(M) : 
      "Arguments have incompatible dimensions."; 
   return init_ModSymElt(M,x`element * T);
end intrinsic;

intrinsic '+'(x::ModSymElt,y::ModSymElt) -> ModSymElt
   {}
   M := Parent(x);
   require Parent(y) eq M : "Elements have different parents."; 
   return init_ModSymElt(M,x`element + y`element);
end intrinsic;

intrinsic '-'(x::ModSymElt,y::ModSymElt) -> ModSymElt
   {}
   M := Parent(x);
   require Parent(y) eq M : "Elements have different parents."; 
   return init_ModSymElt(M,x`element - y`element);
end intrinsic;

// Helper functions for creation
function GetRealConjugate(H)
  GL_N := GL(2, BaseRing(H));
  N_H := NormalizerGrpMat(GL_N, H);
  N_H_conjs := Conjugates(GL_N, N_H);
  eta := GL_N![-1,0,0,1];
  real := exists(real_N_H){ real_N_H : real_N_H in N_H_conjs | eta in real_N_H};
  error if not real, Error("No real type conjugate");
  dummy, alpha := IsConjugate(GL_N,N_H,real_N_H);
  real_H := H^alpha;
  assert real_H^eta eq real_H;
  return real_H; 
end function;

// TODO - move this to GrpPSL2
intrinsic RealTypeConjugate(G::GrpPSL2) -> GrpPSL2
{R a conjugate group which is of real type, if it exists.}
  H := ImageInLevelGL(G);
  real_H := GetRealConjugate(H);
  return PSL2Subgroup(real_H);
end intrinsic;

function GetGLModel(H : RealType := true)
  N := Modulus(BaseRing(H));
  SL_N := SL(2, Integers(N));
  GL_N := GL(2, BaseRing(H));
  N_H := NormalizerGrpMat(GL_N, H);
  Q, pi_Q := N_H / H;
  subs := SubgroupClasses(N_H/H : OrderEqual := EulerPhi(N));
  cands := [s`subgroup@@pi_Q : s in subs];
// This was too slow
// subs := [H] cat IntermediateSubgroups(N_H, H) cat [N_H];
//  cands := [s : s in subs | Index(s, H) eq EulerPhi(N)];
  cands := &join[Conjugates(N_H, c) : c in cands | c meet SL_N eq H];
  error if IsEmpty(cands), Error("No model with surjective determinant");

  if RealType then
      eta := GL_N![-1,0,0,1];
      cands := [c : c in cands | c^eta eq c];
      error if IsEmpty(cands), Error("No model with surjective determinant, 
                 	                        which commutes with eta");
  end if;
  // We would perfer a model for which the Hecke operators are standard
  U, psi := UnitGroup(Integers(N));
  if exists(c){c : c in cands |
//      ImageInLevelGL(CongruenceSubgroup(N)) subset c} then
	       sub<GL(2,Integers(N)) | [[1,0,0,psi(t)] : t in Generators(U)]> subset c} then
	       return c;
  else
      return Random(cands);
  end if;
end function;
