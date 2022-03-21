// Many of the attributes won't be necessary, but we keep them for now
// in case we would like to use them

import "dirichlet.m" : CyclotomicGenerator,
                       powers_of_root;

forward CharacterFromValuesOnGenerators_internal,
        initGrpChrElt ;

// characters and character groups to be used in Modular Symbols

declare type GrpChr [GrpChrElt];

declare attributes GrpChr:  // Call this GrpChr object G.
   BaseRing,      // The base ring R over which the characters are defined
   Domain,        // The domain of the characters (the finite group Q)
   OriginalDomain, // The domain before the quotient - the finite level group
   Gamma,              // the GrpPSL2 group
   GammaPrime,         // the larger group
   QuotientMap,   // The quotient map from the finite level group
   Exponent,      // Exponent of the group Q
   RootOf1,       // A root of unity z in R^*
   PowersOfRoot,  // [z,z^2,z^3,...,z^r], where z has order r.
   OrderOfRoot,   // r = Order of z, where z is RootOf1.
   Elements,      // Sequence of all elements of G.
   Orders,        // Orders of the elements of G.
   OrdersGens,     // Orders of the generators of G
   Images,        // Images of the chosen generators of G; these are powers of z.
   Labels,        // Labels of the standard generators
   AbGrp,         // An abelian group isomorphic to this Dirichlet group,
   AbGrpMap,      // Invertible homomorphism AbGrp ----> G.
   EltArray,      // Associative array indexed by G`AbGrp storing elements of G. (Added April 2009, SRD)
   NF, Pairing, Residue_map, Zeta,
   DecompositionParents, // list, used in Decomposition
   ValsAtMinus1;  // Sequence of values at -1 of the generators of the *full* group of the same modulus

declare type GrpChrElt;

declare attributes GrpChrElt: 
   Parent,
   BaseRing,      // = x`Parent`BaseRing
   Domain,        // = x`Parent`Domain
   Element,       // corresponding element in the abelian group
   Conductor,     // Quotient by the kernel of Q--> R^*.
   ConductorMap,
   Kernel,
   Map,           // the actual map
   ReducedMap,    // the map from the conductor
   ValueList     // [eps(q) : q in Q];   (useful sometimes for efficiency).
;

////////////////////////////////////////////////////////////////
//                   Creation functions                       // 
////////////////////////////////////////////////////////////////

intrinsic CharacterGroup(pi_Q::HomGrp, R::Rng,
			 GammaPrime::GrpPSL2,Gamma::GrpPSL2) -> GrpChr
 {The group of characters of Q with image in the ring R.}
   require Type(R) in {RngInt, FldRat, FldCyc, FldFin, FldQuad, FldNum} :
       "Argument 2 must be of type RngInt, FldRat, FldCyc, FldFin, FldQuad, or FldNum.";

   G         := New(GrpChr);
   G`Domain  := Codomain(pi_Q);
   A, phi := AbelianGroup(G`Domain);
   G`AbGrp  := A;
   G`AbGrpMap := phi;
   G`QuotientMap := pi_Q;
   G`Gamma := Gamma;
   G`GammaPrime := GammaPrime;
   G`OriginalDomain := Domain(pi_Q);
   G`BaseRing := R;
   G`Exponent := Exponent(G`Domain);
   G`Domain, psi := PermutationGroup(G`AbGrp);
   ngens := Ngens(G`OriginalDomain);
   ValsOnGens := [(pi_Q*phi*psi^(-1))(G`OriginalDomain.i) : i in [1..ngens]];
   G`QuotientMap := hom<G`OriginalDomain->G`Domain | ValsOnGens>;
   A, phi := AbelianGroup(G`Domain);
   G`AbGrp  := A;
   G`AbGrpMap := phi;
   return G;
end intrinsic;

intrinsic CharacterGroup(pi_Q::HomGrp, G_prime::GrpPSL2, G::GrpPSL2) -> GrpChr
 {The group of characters of Q with image in the rationals.}
   return CharacterGroup(pi_Q,Rationals(), G_prime, G);
end intrinsic;

intrinsic FullCharacterGroup(pi_Q::HomGrp, G_prime::GrpPSL2, G::GrpPSL2) -> GrpChr
{The group of characters of Q with values in Q(zeta_m), where
m is the exponent of Q.}
   mu := Exponent(Codomain(pi_Q));
   if mu gt 2 then
      return CharacterGroup(pi_Q,CyclotomicField(mu),G_prime, G);
   else
     return CharacterGroup(pi_Q,G_prime,G);   
   end if;
end intrinsic;

intrinsic KernelInternal(x::GrpChrElt) -> GrpFin
{Compute the kernel of x in the finite quotient}
  if not assigned x`Kernel then
     K := sub< Domain(x) | [y : y in Domain(x) | Evaluate(x,y) eq 1]>;
     x`Kernel := K;
  end if;
  return x`Kernel;
end intrinsic;

intrinsic Kernel(x::GrpChrElt) -> GrpMat
{Compute the kernel of x in the matrix group}
  return KernelInternal(x)@@Parent(x)`QuotientMap;
end intrinsic; 

intrinsic Conductor(x::GrpChrElt) -> GrpFin
{Compute the conductor of x}
  // Currently this is not working - Magma claims this is not computable
  // K := Kernel(x`Map);
  if not assigned x`Conductor then
     K := KernelInternal(x);
     C, pi_C := x`Domain / K;
     x`ReducedMap := map<C->Codomain(x`Map) | [<c,x`Map(c @@ pi_C)> : c in C]>;
     x`Conductor := C;
     x`ConductorMap := pi_C;
  end if;
  return x`Conductor;
end intrinsic;

intrinsic Modulus(eps::GrpChrElt) -> RngIntElt
{compute the level of the domain of eps}
   return Modulus(BaseRing(Parent(eps)`OriginalDomain));
end intrinsic;

function initGrpChrElt(G, rep)
  x := New(GrpChrElt);
  x`Parent := G;
  x`BaseRing := G`BaseRing;
  x`Domain := G`Domain;
  x`Map := rep;
  return x;
end function;

intrinsic IsCoercible(G::GrpChr,x::.) -> BoolElt, GrpChrElt
{}
   if Type(x) eq GrpChrElt then
      if IsIdentical(x`Parent, G) then
         return true, x;
      elif x`Parent eq G then
         xG := G! x`Map;
         return true, xG;
      else
	  level_G := Modulus(BaseRing(G`OriginalDomain));
	  level_x := Modulus(BaseRing(Parent(x)`OriginalDomain));
	  level := LCM(level_G, level_x);
	  G_in_level := ImageInLevelGL(G`GammaPrime : N := level);
	  x_in_level := ImageInLevelGL(Parent(x)`GammaPrime : N := level);
	  
	  //	  if G`OriginalDomain subset Parent(x)`OriginalDomain then
	  if G_in_level subset x_in_level then
	     gens := GeneratorsSequence(G`Domain);
	     if Dimension(Codomain(x`Map)) eq 0 then
		 val_gens := [Codomain(x`Map)!1 : g in gens];
	     else
	         pre_gens := [g@@G`QuotientMap : g in gens];
                 // we still have to take preimage at the common level
                 // for that we need to lift to something with
                 // determinant prime to the level. here is one way of doing so
                 fac := Factorization(level);
                 N1 := &*[x[1]^x[2] : x in fac | level_G mod x[1] eq 0];
                 N2 := level div N1;
                 dets := [CRT([Integers()!Determinant(t), 1], [N1, N2])
			     : t in pre_gens];
                 lifts := [FindLiftToM2Z(Matrix(pre_gens[i]) : det := dets[i])
			      : i in [1..#pre_gens]];
		 // val_gens := [x(g@@G`QuotientMap) : g in gens];
	         val_gens := [x(Parent(x)`OriginalDomain!lift) : lift in lifts];
		 val_gens := [Codomain(x`Map)![[v]] : v in val_gens];
	     end if;
	     if IsEmpty(val_gens) then
		 mat_alg := MatrixAlgebra(G`BaseRing, 1);
		 rep := map<G`Domain -> mat_alg|<G`Domain!1,mat_alg!1> >;
		 // This is what we would like to do, but stopped working
		 // in magma v.2.25
//		 rep := Representation(TrivialModule(G`Domain, G`BaseRing));
	     else
		 rep := Representation(GModule(G`Domain, val_gens));
	     end if;
	     return true, initGrpChrElt(G, rep);
	     //	 elif Parent(x)`OriginalDomain subset G`OriginalDomain then
	  elif x_in_level subset G_in_level then
              G_ab, pi_ab := AbelianQuotient(G`Domain);
	      // Here we go through some pains to define
	      // the natural map GL(2,level) -> GL(2, level_G)
	      mod_lev_G := hom<Integers(level) -> Integers(level_G)|>;
	      mod_mat := hom<MatrixAlgebra(Integers(level),2) ->
					  MatrixAlgebra(Integers(level_G),2)
					  | mod_lev_G>;
	      mod_gl := hom<G_in_level -> G`OriginalDomain | g :-> mod_mat(g)>;
	      // H_ab := pi_ab(G`QuotientMap(Parent(x)`OriginalDomain));
	      H_ab := pi_ab(G`QuotientMap(mod_gl(x_in_level)));
	     Q, pi_Q := G_ab / H_ab;
	     //	 Q, pi_Q := G`OriginalDomain / Parent(x)`OriginalDomain;
	     gens_Q := [g@@pi_Q@@pi_ab : g in Generators(Q)];
	     //	 gens_x := [g@@Parent(x)`QuotientMap : g in Generators(Domain(x))];
	     gens_x_orig := Generators(Domain(x));
	     gens_x := [G`QuotientMap(g@@Parent(x)`QuotientMap) :
			g in gens_x_orig];
	     //gens := [G`QuotientMap(g) : g in gens_x cat gens_Q];
	     gens_ab := GeneratorsSequence(Kernel(pi_ab));
	     gens := gens_x cat gens_Q cat gens_ab;
	     val_gens := [x(g) : g in gens_x_orig] cat
			 [1 : g in gens_Q cat gens_ab];
	     if Dimension(Codomain(x`Map)) eq 0 then
		 val_gens := [Codomain(x`Map)!1 : v in val_gens];
	     else
		 val_gens := [Codomain(x`Map)![[v]] : v in val_gens];
	     end if;
	     // If everything is correct, iota is an isomorphism.
	     GG, iota := sub<G`Domain | gens>;
	     // We do this to be able to choose our own generators
	     assert GG eq G`Domain;
	     GG_map := Representation(GModule(GG, val_gens));
	     return true, initGrpChrElt(G, iota^(-1) * GG_map);
	 else
	     return false, "Invalid coercion: character groups are not contained in one another.";
	 end if;
	 /*	
         A := G`AbGrp;
         phi := G`AbGrpMap;
         B, psi := AbelianGroup(Conductor(x));
         homs := Homomorphisms(A,B);
         has_surjection := exists(h){h : h in homs | IsSurjective(h)}; 
         if not has_surjection then
            return false, "Invalid coercion: The given character has too large conductor";  
         end if;
         G_map := phi*h*psi^(-1)*x`ReducedMap; 
         return true, initGrpChrElt(G,G_map); 
	 */
      end if;
   elif Type(x) eq RngIntElt and x eq 1 then
     return true, initGrpChrElt(G,TrivialRepresentation(G`Domain));
//   elif (Type(x) eq HomGrp) and (Domain(x) eq G`Domain)
   elif (Type(x) in {HomGrp, Map}) and (Domain(x) eq G`Domain)
        and (BaseRing(Codomain(x)) subset G`BaseRing)
        and Degree(Codomain(x)) eq 1 then
        return true, initGrpChrElt(G,x);
   end if;
   return false, "Invalid coercion.";
end intrinsic;

intrinsic GaloisConjugacyRepresentatives(G::GrpChr) -> SeqEnum
{Representatives for the Gal(QQbar/QQ)-conjugacy classes of G.}     
   require Type(BaseRing(G)) in {FldRat, FldCyc, FldNum} : 
             "The base ring of argument 1 must be a number field.";
   return GaloisConjugacyRepresentatives(Elements(G));
end intrinsic;

intrinsic GaloisConjugacyRepresentatives(S::[GrpChrElt]) -> SeqEnum
{Representatives for the Gal(QQbar/QQ)-conjugacy classes of characters 
 contained in the given sequence S}  
   
   G := Universe(S);

   if #S eq 0 or Type(BaseRing(G)) eq FldRat then 
     return S;
   end if;

   require ISA(Type(BaseRing(G)), FldAlg) :
          "The base ring of argument 1 must be a number field.";

    // In order to test equality of representations, we will test
    // values on generators
    gens := GeneratorsSequence(G`Domain);
   
    // This decomposition is necessary since the different Base rings
    // don't live in a common universe.
    S_parts := {[ s1 : s1 in S | BaseRing(s1) eq BaseRing(s2)] : s2 in S};
    S_parts := SetToSequence(S_parts);

    for idx in [1..#S_parts] do
        i := 1;
        F := BaseRing(S_parts[idx][1]);
        Gal := Automorphisms(F);
        // This should be changed now
        S_reps := [s`Map : s in S_parts[idx]];
        gen_images := [ [ElementToSequence(r(g)) : g in gens] : r in S_reps];
        while i lt #S_parts[idx] do
             gal_conj := [ [ [gal(e) : e in seq] : seq in gen_images[i]] : gal in Gal];
             R := [j : j in [i+1..#S_parts[idx]] | gen_images[j] in gal_conj];
             for j in Reverse(R) do    // important to reverse.
               Remove(~S_parts[idx],j);
               Remove(~gen_images, j);
             end for;
             i +:= 1;
        end while;
    end for;
    return &cat(S_parts);
end intrinsic;

intrinsic MinimalBaseRingCharacter(eps::GrpChrElt) -> GrpChrElt
   {Return an equivalent character, but defined over a base ring 
    that is generated by the values}
   F := BaseRing(eps);
   // N := Modulus(eps);
   pi_Q := Parent(eps)`QuotientMap;
   Q := Domain(eps);
   G_prime := Parent(eps)`GammaPrime;
   G := Parent(eps)`Gamma;
   case Type(F):
      when FldRat:
         return eps;
      when FldFin:
         if IsPrime(#BaseRing(eps)) then
            return eps; 
         end if;
      when FldCyc:
         n := Order(eps);
         if n eq 1 then
	    return CharacterGroup(pi_Q, G_prime, G)!1;
         end if;
         if n gt 2 and EulerPhi(n) eq Degree(F) then
	     if IsEven(n) and IsOdd(n div 2) then
		 K := CyclotomicField(n div 2);
	     else
		 K := CyclotomicField(n);
	     end if;
	     G := CharacterGroup(pi_Q,K,G_prime, G);
	     return G!eps;
         else
            if n eq 2 then
               K := RationalField();
            else
		if IsEven(n) and IsOdd(n div 2) then
		    K := CyclotomicField(n div 2);
		else
		    K := CyclotomicField(n);
		end if;
            end if;
               G := CharacterGroup(pi_Q,K,G_prime, G);
            return G!eps;
         end if;
   end case;   
   require false : "The base ring of argument 1 must be the Q, F_p, or cyclotomic.";
end intrinsic;

////////////////////////////////////////////////////////////////
//                     Printing                               //
////////////////////////////////////////////////////////////////

intrinsic Print(X::GrpChr, level::MonStgElt)
   {}
   printf "Group of characters of domain %o over %o", 
          X`Domain, X`BaseRing;
end intrinsic;


intrinsic Print(x::GrpChrElt, level::MonStgElt)
   {}
   printf "%o", x`Map;
end intrinsic;

////////////////////////////////////////////////////////////////
//                                                            //
//            Membership and equality testing                 //
//                                                            //
////////////////////////////////////////////////////////////////

intrinsic 'in'(x::., X::GrpChr) -> BoolElt
   {Returns true if x is in X.}
   if Type(x) eq GrpChrElt then
      return x`Parent eq X;
   end if;
   return false;
end intrinsic;


intrinsic Parent(x::GrpChrElt) -> GrpChr
   {}
   return x`Parent;
end intrinsic;


intrinsic 'eq' (G::GrpChr,H::GrpChr) -> BoolElt
  {True iff the given groups of characters are functionally the same}
   return IsIdentical(G,H) or 
   //          G`Domain eq H`Domain and G`BaseRing cmpeq H`BaseRing;
          IsIdentical(G`Domain, H`Domain) and G`BaseRing cmpeq H`BaseRing;
end intrinsic;

intrinsic 'eq' (x::GrpChrElt,y::GrpChrElt) -> BoolElt
   {True iff the given characters have the same domain and values}
   Gx := x`Parent;
   Gy := y`Parent;
   // We don't do it because they might be of different types
   // !!! TODO : figure out why, and fix this
   // test the more frequent cases first
   if IsIdentical(Gx, Gy) then
       return ValuesOnUnitGenerators(x) cmpeq ValuesOnUnitGenerators(y);
   elif Gx ne Gy then 
      return false;   // not sure why we want to do this
   else
      return ValuesOnUnitGenerators(x) cmpeq ValuesOnUnitGenerators(y);
   end if;
end intrinsic;

////////////////////////////////////////////////////////////////
//                                                            //
//                Attribute Access Functions                  //
//                                                            //
////////////////////////////////////////////////////////////////

intrinsic BaseRing(G::GrpChr) -> Rng
   {The base ring of G.}
   return G`BaseRing;
end intrinsic;


intrinsic BaseRing(x::GrpChrElt) -> Rng
   {The base ring, i.e. the codomain, of x.}
   return x`BaseRing;
end intrinsic;

intrinsic ChangeRing(x::GrpChrElt, R::Rng) -> GrpChrElt
{.}
   return CharacterGroup(Parent(x)`QuotientMap, R,
		      Parent(x)`GammaPrime, Parent(x)`Gamma)!x;
end intrinsic;

intrinsic Domain(x::GrpChrElt) -> Rng
   {The domain Q.}
   return x`Domain;
end intrinsic;


intrinsic Codomain(x::GrpChrElt) -> Rng
{The coefficient ring in which x takes values.}
   return x`BaseRing;
end intrinsic;


intrinsic Exponent(G::GrpChr) -> RngIntElt
{The exponent of G.}
  return G`Exponent; // = exponent of Q
end intrinsic;


intrinsic Order(G::GrpChr) -> RngIntElt
{The order of G.}
  // Recall we assume that this is abelian
  return Order(G`Domain);
end intrinsic;

intrinsic '#'(G::GrpChr) -> RngIntElt
{The order of G.}
   return Order(G);
end intrinsic;

intrinsic Order(x::GrpChrElt) -> RngIntElt
{The order of x.}
  R := Integers(BaseRing(x));
  A, phi := MultiplicativeGroup(R);
  orders_gens := [Order((R!Evaluate(x,q)) @@ phi) : q in Generators(Domain(x))];
  if #orders_gens eq 0 then return 1; end if;
  return LCM(orders_gens);
end intrinsic;

intrinsic Domain(G::GrpChr) -> RngIntElt
   {The domain of the group G of characters.}
   return G`Domain;
end intrinsic;

intrinsic Elements(G::GrpChr) -> SeqEnum
   {The characters in G.}
   if not assigned G`Elements then
     chars := [initGrpChrElt(G, Representation(M)) :
			       M in IrreducibleModules(G`Domain,G`BaseRing)
			    | Dimension(M) eq 1];
     G`Elements := chars;
   end if;
   return G`Elements;
end intrinsic;

intrinsic Evaluate(x::GrpChrElt,g::GrpPermElt) -> RngElt
{The evaluation of x at g.}
   assert g in x`Domain;
   return x`BaseRing!(x`Map(g)[1,1]);
end intrinsic;

intrinsic Evaluate(x::GrpChrElt,g::GrpMatElt) -> RngElt
{Evaluation x(g).}
   if Dimension(Parent(g)) eq 1 then return 1; end if;
   if Degree(Domain(x)) eq 1 then return 1; end if;
   return Evaluate(x, x`Parent`QuotientMap(g));
end intrinsic;

intrinsic Evaluate(x::GrpChrElt,g::GrpPSL2Elt) -> RngElt
{Evaluation x(g).}
   G := Parent(x)`OriginalDomain;
   if Dimension(G) eq 1 then return 1; end if;
   elt := G!Eltseq(g);
   return Evaluate(x, elt);
end intrinsic;

intrinsic Evaluate(x::GrpChrElt,g::SeqEnum[RngIntElt]) -> RngElt
{Evaluation x(g).}
   D := Parent(x)`OriginalDomain;
   if Degree(D) eq 1 then return 1; end if;
   return Evaluate(x, D!g);
end intrinsic;

intrinsic '@'(g::GrpPermElt, x::GrpChrElt) -> RngElt
{"} // "
   return Evaluate(x,g);
end intrinsic;

intrinsic '@'(g::GrpMatElt, x::GrpChrElt) -> RngElt
{"} // "
   return Evaluate(x,g);
end intrinsic;

intrinsic '@'(g::GrpPSL2Elt, x::GrpChrElt) -> RngElt
{"} // "
   return Evaluate(x,g);
end intrinsic;

intrinsic '@'(M::AlgMatElt[RngIntRes], x::GrpChrElt) -> RngElt
{"} // "
   // !!!! TODO : Change this for treating the general case
   // This should be an extension of epsilon to the order generated
   // by the group (additively)
   is_coer, g := IsCoercible(Parent(x)`OriginalDomain, M);
   if is_coer then
       return Evaluate(x, g);
   else
       return 1;
   end if;
end intrinsic;
 
intrinsic ValuesOnUnitGenerators(x::GrpChrElt) -> SeqEnum
{The values of x on the ordered sequence generators of Q, where
 Q is the domain of x.}
   Q := x`Domain;
   gens :=  [Q.i : i in [1..Ngens(Q)]];
   return [Evaluate(x, g) : g in gens];
end intrinsic;

intrinsic IsTrivial(eps::GrpChrElt) -> BoolElt
{For internal use only}
   return &and[g@eps eq 1 : g in Generators(Domain(eps))];
end intrinsic;

intrinsic ValueList(eps::GrpChrElt) -> SeqEnum
{[The values [eps(q) : q in Domain(eps)].}
   if not assigned eps`ValueList then
      eps`ValueList := [Evaluate(eps,q) : q in Domain(eps)];
   end if;
   return eps`ValueList;
end intrinsic;

// Right now we only support even characters, nevertheless...

intrinsic IsEven(chi::GrpChrElt) -> BoolElt
{True iff the Dirichlet character chi satisfies chi(-1) = 1}
   G := Parent(chi)`Gamma;
   if Level(G) eq 1 then return true; end if;
   return Evaluate(chi,ModLevel(G)!([-1,0,0,-1])) eq 1;
end intrinsic;

intrinsic IsOdd(chi::GrpChrElt) -> BoolElt
{True iff the Dirichlet character chi satisfies chi(-1) = -1}
   G := Parent(chi)`Gamma;
   if Level(G) eq 1 then return false; end if;
   return Evaluate(chi,ModLevel(G)!([-1,0,0,-1])) eq -1;
end intrinsic;

intrinsic CharacterGroupCopy(G::GrpChr) -> GrpChr
{Clone G}
// Only copies non-optional attributes.
// In particular, MUST not copy things like G`Elements!
   GG          := New(GrpChr);
   GG`Domain  := G`Domain;
   GG`OriginalDomain  := G`OriginalDomain;
   GG`Gamma  := G`Gamma;
   GG`GammaPrime := G`GammaPrime;
   GG`QuotientMap := G`QuotientMap;
   GG`BaseRing := G`BaseRing;
   GG`Exponent := G`Exponent;
   GG`AbGrp    := G`AbGrp;
   return GG;
end intrinsic;

intrinsic Extend(eps::GrpChrElt, G::GrpMat) -> GrpChrElt
{Extend epsilon to G}
//   Gamma := PSL2Subgroup(G, false);
   Gamma := PSL2Subgroup(G, true);
  N_G := Normalizer(ModLevelGL(Parent(eps)`Gamma), G);
//   N_G := Normalizer(ModLevel(Parent(eps)`Gamma), G);
   G_prime := sub<N_G | ImageInLevelGL(Parent(eps)`GammaPrime), G>;
//   G_prime := sub<N_G | ImageInLevel(Parent(eps)`GammaPrime), G>;
   //  Gamma_prime := PSL2Subgroup(G_prime, false);
   Gamma_prime := PSL2Subgroup(G_prime, true);
   Q, pi_Q := Gamma_prime / Gamma;
   D := CharacterGroup(pi_Q, Gamma_prime, Gamma);
   return D!eps;
end intrinsic;

intrinsic Restrict(eps::GrpChrElt, G::GrpMat) -> GrpChrElt
{Restrict epsilon to G}
//   Gamma := PSL2Subgroup(G, false);
   Gamma := PSL2Subgroup(G, true);
   N_G := Normalizer(ModLevelGL(Parent(eps)`Gamma), G);
 //  N_G := Normalizer(ModLevel(Parent(eps)`Gamma), G);
   G_prime := N_G meet ImageInLevelGL(Parent(eps)`GammaPrime);
//   G_prime := N_G meet ImageInLevel(Parent(eps)`GammaPrime);
   //   Gamma_prime := PSL2Subgroup(G_prime, false);
   Gamma_prime := PSL2Subgroup(G_prime, true);
   Q, pi_Q := Gamma_prime / Gamma;
   D := CharacterGroup(pi_Q, Gamma_prime, Gamma);
   return D!eps;
end intrinsic;
