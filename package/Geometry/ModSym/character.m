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
   Map,           // the actual map
   ReducedMap,    // the map from the conductor
   ValueList     // [eps(q) : q in Q];   (useful sometimes for efficiency).
;

////////////////////////////////////////////////////////////////
//                   Creation functions                       // 
////////////////////////////////////////////////////////////////

intrinsic CharacterGroup(pi_Q::HomGrp, R::Rng) -> GrpChr
 {The group of characters of Q with image in the ring R.}
   require Type(R) in {RngInt, FldRat, FldCyc, FldFin, FldQuad, FldNum} :
       "Argument 2 must be of type RngInt, FldRat, FldCyc, FldFin, FldQuad, or FldNum.";

   G         := New(GrpChr);
   G`Domain  := Codomain(pi_Q);
   A, phi := AbelianGroup(G`Domain);
   G`AbGrp  := A;
   G`AbGrpMap := phi;
   G`QuotientMap := pi_Q;
   G`OriginalDomain := Domain(pi_Q);
   G`BaseRing := R;
   G`Exponent := Exponent(G`Domain);
   return G;
end intrinsic;

intrinsic CharacterGroup(pi_Q::HomGrp) -> GrpChr
 {The group of characters of Q with image in the rationals.}
    return CharacterGroup(pi_Q,Rationals());
end intrinsic;

intrinsic FullCharacterGroup(pi_Q::HomGrp) -> GrpChr
{The group of characters of Q with values in Q(zeta_m), where
m is the exponent of Q.}
   mu := Exponent(Codomain(pi_Q));
   if mu gt 2 then
      return CharacterGroup(pi_Q,CyclotomicField(mu));
   else
     return CharacterGroup(pi_Q);   
   end if;
end intrinsic;

intrinsic Conductor(x::GrpChrElt) -> GrpFin
{Compute the conductor of x}
  // Currently this is not working - Magma claims this is not computable
  // K := Kernel(x`Map);
  if not assigned x`Conductor then
     K := sub< Domain(x) | [y : y in Domain(x) | Evaluate(x,y) eq 1]>;
     C, pi_C := x`Domain / K;
     x`ReducedMap := map<C->Codomain(x`Map) | [<c,x`Map(c @@ pi_C)> : c in C]>;
     x`Conductor := C;
  end if;
  return x`Conductor;
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
	 // This is done because at the moment Magma only supports
	 // homomorphisms of abelian groups.
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
      end if;
   elif Type(x) eq RngIntElt and x eq 1 then
     return true, initGrpChrElt(G,TrivialRepresentation(G`Domain));
   elif (Type(x) eq HomGrp) and (Domain(x) eq G`Domain)
        and (BaseRing(Codomain(x)) subset G`BaseRing)
        and Dimension(Codomain(x)) eq 1 then
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
            return CharacterGroup(pi_Q)!1;
         end if;
         if n gt 2 and EulerPhi(n) eq Degree(F) then
            return eps;
         else
            if n eq 2 then
               K := RationalField();
            else
               K := CyclotomicField(n);
            end if;
            G := CharacterGroup(pi_Q,K);
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
   print x`Map;
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
          G`Domain eq H`Domain and G`BaseRing cmpeq H`BaseRing;
end intrinsic;

intrinsic 'eq' (x::GrpChrElt,y::GrpChrElt) -> BoolElt
   {True iff the given characters have the same domain and values}
   Gx := x`Parent;
   Gy := y`Parent;
   // test the more frequent cases first
   if IsIdentical(Gx, Gy) then
      return x`Element eq y`Element; 
   elif Gx eq Gy then 
      return Eltseq(x`Element) eq Eltseq(y`Element); 
   elif Gx`Domain ne Gy`Domain then 
      return false;   // not sure why we want to do this
   else
      return ValuesOnGenerators(x) cmpeq ValuesOnGenerators(y);
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
  A, phi := MultiplicativeGroup(BaseRing(x));
  orders_gens := [Order(Evaluate(x,q) @@ phi) : q in Generators(Domain(x))];
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
			       M in IrreducibleModules(G`Domain,G`BaseRing)];
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
   return Evaluate(x, x`Parent`QuotientMap(g));
end intrinsic;

intrinsic Evaluate(x::GrpChrElt,g::GrpPSL2Elt) -> RngElt
{Evaluation x(g).}
   G := Parent(x)`OriginalDomain;
   elt := G!Eltseq(g);
   return Evaluate(x, elt);
end intrinsic;

intrinsic Evaluate(x::GrpChrElt,g::SeqEnum[RngIntElt]) -> RngElt
{Evaluation x(g).}
   return Evaluate(x, PSL2(Integers())!g);
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
 
intrinsic ValuesOnGenerators(x::GrpChrElt) -> SeqEnum
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
