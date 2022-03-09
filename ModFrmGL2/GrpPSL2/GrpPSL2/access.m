freeze;

import "../GrpPSL2Shim/mingens.m" : InternalShimuraGenerators;
import "../GrpPSL2Shim/definvs.m" : TotallyPositiveUnits;

////////////////////////////////////////////////////////////////////
//                                                                //
//                      Access Functions                          //
//                                                                //
////////////////////////////////////////////////////////////////////

declare attributes GrpPSL2Elt : MatrixH, MatrixD, MatrixDCenter;

intrinsic BaseRing(G::GrpPSL2) -> Rng
    {The base ring of G.}
    return G`BaseRing;
end intrinsic;

intrinsic Identity(G::GrpPSL2) -> GrpPSL2Elt
   {The identity element of G.}
   return G!1;
end intrinsic;

intrinsic Eltseq(A::GrpPSL2Elt) -> SeqEnum
    {Eltseq for the given element A in PSL_2(Z)}
    return Eltseq(A`Element);
end intrinsic;

intrinsic Parent(A::GrpPSL2Elt) -> GrpPSL2
   {}
   return A`Parent;
end intrinsic;

intrinsic Level(G::GrpPSL2) -> RngIntElt
   {The level of G.}
   if assigned G`ShimLevel then
      return G`ShimLevel;
   else
       // We do not calculate the level, since CalcLevel needs some level assigned
       assert assigned G`Level;
       return G`Level;
   end if;
end intrinsic;

intrinsic ImageInLevel(G::GrpPSL2 : N := Level(G)) -> GrpMat
{The image of G in SL_2(Z/NZ), where N is the level.}
  require N mod Level(G) eq 0 : "N must divide level of G";
  if not assigned G`ImageInLevel then     
     modLevel := ModLevel(G);
     if #modLevel eq 1 then
        G`ImageInLevel := modLevel;
     elif IsGamma(G) then
     // G`ImageInLevel := sub<modLevel|-modLevel!1>;
       G`ImageInLevel := sub<modLevel|>;
     else
	 // gens := [[1,1,0,1],[-1,0,0,-1]];
	gens := [[1,1,0,1]];
       if IsGamma0(G) then
          level := Level(G);
          for t in [1..level-1] do
	    d,x,y:= ExtendedGreatestCommonDivisor(t,level);
            if d eq 1 then
	       Append(~gens, [t,0,0,x]);
            end if;
          end for; 
       elif not IsGamma1(G) then
          gens := Generators(G);
       end if;
       G`ImageInLevel := sub< modLevel | [modLevel!Eltseq(g) : g in gens]>;
     end if;
  end if;
  if N ne Level(G) then
       // gens := [Eltseq(g) : g in Generators(G)] cat [[-1,0,0,-1]];
    gens := [Eltseq(g) : g in Generators(G)];
    if -ImageInLevel(G)!1 in ImageInLevel(G) then
      Append(~gens, [-1,0,0,-1]);
    end if;
    return sub<SL(2,Integers(N)) | gens>;
  end if;
  return G`ImageInLevel;
end intrinsic;

intrinsic ImageInLevelGL(G::GrpPSL2 : N := Level(G)) -> GrpMat
{The image of G in GL_2(Z/NZ), where N is the level.}
  require N mod Level(G) eq 0 : "level of G must divide N";
  if not assigned G`ImageInLevelGL then 
     modLevel := ModLevelGL(G);
     if (#modLevel eq 1) then
        G`ImageInLevelGL := modLevel;
     else
       // gens := [[-1,0,0,-1]];
       gens := [];
       level := Level(G);
       Z_N := Integers(level);
       U, psi := UnitGroup(Z_N);
       for t in Generators(U) do
	   // we change the convention to match Box's
	   Append(~gens, [psi(t), 0, 0, 1]);
	  // Append(~gens, [1,0,0,psi(t)]);
       end for;
       if IsGamma1(G) or IsGamma0(G) then
          Append(~gens, [1,1,0,1]);
       end if;
       if IsGamma0(G) then
           for t in Generators(U) do
	       // we change the convention to match Box's
	       Append(~gens, [1,0,0,psi(t)]);
	       // Append(~gens, [psi(t),0,0,1]);
          end for;
       elif not (IsGamma1(G) or IsGamma(G)) then
	 gens := gens cat [Eltseq(x) : x in Generators(G)];
       end if;
       G`ImageInLevelGL := sub< modLevel | [modLevel!g : g in gens]>;
     end if;
  end if;
  if N ne Level(G) then
    if Level(G) eq 1 then
      return GL(2, Integers(N));
    end if;
    gens := Generators(ImageInLevelGL(G));
    gens := [x : x in GL(2,Integers(N)) | GL(2, Integers(Level(G)))!x in gens];
       // return sub<GL(2,Integers(N)) | [Eltseq(g) : g in Generators(G)]>;
    return sub<GL(2,Integers(N)) | gens>;
  end if;
  return G`ImageInLevelGL; 
end intrinsic;

intrinsic ModLevel(G::GrpPSL2) -> GrpMat
  {SL_2(Z/NZ), where N is the level.}
  if assigned G`ModLevel then
     return G`ModLevel;
  else
     N := Level(G);
     if N eq 1 then return SL(1, IntegerRing(2)); end if;
     if (Type(G`BaseRing) in {Rng,RngInt,FldRat}) then 
        G`ModLevel := SL(2,quo<G`BaseRing | N>);
     else
        G`ModLevel := MatrixAlgebra(quo<G`BaseRing | N>,2);
     end if;
     return G`ModLevel;
  end if;
end intrinsic;

intrinsic ModLevelGL(G::GrpPSL2) -> GrpMat
  {GL_2(Z/NZ), where N is the level.}
  if not assigned G`ModLevelGL then
     N := Level(G);
     if N eq 1 then return GL(1, IntegerRing(2)); end if;
     if (Type(G`BaseRing) in {Rng,RngInt,FldRat}) then 
        G`ModLevelGL := GL(2,quo<G`BaseRing | N>);
     else
        G`ModLevelGL := MatrixAlgebra(quo<G`BaseRing | N>,2);
     end if;
  end if;
  return G`ModLevelGL;
end intrinsic;

intrinsic GetFindCoset(G::GrpPSL2) -> Map
{.}
  if not assigned G`FindCoset then
    cosets, find_coset := Transversal(ModLevel(G), ImageInLevel(G));
    N := Level(G);
    if N eq 1 then
      G`FS_cosets := [PSL2(BaseRing(G))!1];
    else
      G`FS_cosets := [PSL2(BaseRing(G)) | FindLiftToSL2(c) : c in cosets];
    end if;
    codom := [<i, cosets[i]^(-1)> : i in [1..#cosets]];
    coset_idx := map<cosets -> codom |
       [<cosets[i], codom[i] > : i in [1..#cosets]] >;
    G`FindCoset := find_coset*coset_idx;
    det_cosets := Transversal(ImageInLevelGL(G), ImageInLevel(G));
    dom := [Determinant(x) : x in det_cosets];
    G`DetRep := map< dom -> ImageInLevelGL(G) |
     [<Determinant(x),x> : x in det_cosets] >;
  end if;
  return G`FindCoset;
end intrinsic;

intrinsic NSCartanV(G::GrpPSL2) -> RngIntResElt
{return the middle coefficient in the quadratic polynomial x^2+vx-u used to create the group, i.e. such that it is the regular representation of ZZ[alpha], where alpha is a root of the polynomial mod N.}
  if assigned G`NSCartanV then return G`NSCartanV; end if;
  require false : "Not Implemented!";
end intrinsic;	  

intrinsic NSCartanU(G::GrpPSL2) -> RngIntResElt
 {return the (non square) element u used to create the group.
     i.e. such that N | a-d, N | b-uc.}
   // Although it makes sense, we actually need the function to
   // determine whether that's true
   // require IsGammaNS(G) or IsGammaNSplus(G);
   if assigned G`NSCartanU then return G`NSCartanU; end if;

   if Level(G) eq 1 then G`NSCartanU := 0 ; return 0; end if;

   function is_good(g, G)
     is_good_ns := (g[1,1] eq g[2,2]) and (g[2,2] ne 0) and (IsUnit(g[2,1]));
     if is_good_ns then
       return true, g[1,2] / g[2,1];
     end if;
     is_good_ns_plus_1 := (g[1,1] eq -g[2,2]) and (g[2,2] ne 0) and
                          (IsUnit(g[2,1]));
     if is_good_ns_plus_1 then
       G`IsNSCartan := false;
       return true, -g[1,2] / g[2,1];
     end if;
     return false, 0;
   end function;

   g := Random(ImageInLevel(G));
   is_good_g, u := is_good(g, G);
   cnt := 0;
   // 5 - highly unprobable to happen if G is a NS Cartan
   while (not is_good_g) and (cnt le 5)  do
      g := Random(ImageInLevel(G));
      is_good_g, u := is_good(g,G);
      cnt +:= 1;
   end while;
   if is_good_g then G`NSCartanU := u; end if;

   return u;
   // This is exact, but takes too long
/*
   size := #ImageInLevel(G);
   p := Level(G);
   if size eq p+1 then
      index_ns := true;
      G`IsNSCartanPlus := false;
   elif size eq 2*(p+1) then
      index_ns := false;
      G`IsNSCartan := false;
   else
      G`NSCartanU := 0;
      G`IsNSCartan := false;
      G`IsNSCartanPlus := false;
      return G`NSCartanU;
   end if;

   gens := Generators(ImageInLevel(G));
   good := [x : x in gens | (x[1,1] eq x[2,2]) and (x[2,1] ne 0)];

   if not index_ns then 
      good := [x : x in good | x[1,1] ne 0];
   end if;

   if #good ne 0 then
      g := good[1];
      if not IsUnit(g[2,1]) then return 0; end if;
      G`NSCartanU := g[1,2]/g[2,1];
      return G`NSCartanU;
   else
      if index_ns then
         G`NSCartanU := 0;
         G`IsNSCartan := false;
         G`IsNSCartanPlus := false;
         return G`NSCartanU;
      end if;
      good := [x : x in gens | (x[1,1] eq -x[2,2]) and (x[2,1] ne 0)];
      if #good ne 0 then
         g := good[1];
         if not IsUnit(g[2,1]) then return 0; end if;
         G`NSCartanU := -g[1,2]/g[2,1];
         return G`NSCartanU;
      end if;
      good := [x : x in gens | (x[1,2] eq x[2,1]) and (x[2,2] ne 0) and
		               (x[1,2] ne 0)];
      if #good ne 0 then
         g := good[1];
         if not IsUnit(g[2,2]) then return 0; end if;
         G`NSCartanU :=  g[1,1]/g[2,2];
         return G`NSCartanU;
      end if;
   end if;
   G`NSCartanU := 0;
   G`IsNSCartan := false;
   G`IsNSCartanPlus := false;
   return G`NSCartanU;
*/
end intrinsic;

intrinsic CongruenceIndices(G::GrpPSL2) -> RngIntElt
   {For G  a congruence subgroup, returns [[N,M,P]]
   where G consists of matrices [a,b,c,d] with
   c = 0 mod N, a, d = 1 mod M, b = 0 mod P}
  require G`IsOfGammaType : "G must be of gamma type";
  require not assigned G`EichlerOrder : "G must be a congruence subgroup";
  return G`gammaType_list;
end intrinsic;


intrinsic Genus(G::GrpPSL2) -> RngIntElt
   {The genus of the upper half plane quotiented by the congruence
   subgroup G}

   if assigned G`IsShimuraGroup then
     if assigned G`ShimGroup then
       return Integers()!((#Generators(G`ShimGroup)-#Relations(G`ShimGroup)+1)/2);
     end if;
     if EllipticInvariants(G) eq [] then
       g := 1 + ArithmeticVolume(G)/2;
     else
       g := 1 + ArithmeticVolume(G)/2 - 
         &+[s[2]*(1-1/s[1]) : s in EllipticInvariants(G)]/2;
     end if;
     assert IsIntegral(g);
     return Integers()!g;
   end if;

   Z:=Integers();

   require G`BaseRing eq Z: "Argument must be a subgroup of PSL_2(Z)";

   if IsGamma0(G) or IsGamma1(G) then
      return DimensionByFormula(CuspForms(G)); end if;

   if IsGamma(G) then N:=Level(G); if N le 2 then return 0; end if;
    return 1+Z!((N-6)*N^2/24*&*[(1-1/f[1]^2) : f in Factorization(N)]); end if;

   // note, when other groups are implemeneted, a more general
   // formular can be given than below.
   FS := FareySymbol(G);
   cusps := #Cusps(G);
   elliptic3 := #[i : i in Labels(FS) | i eq -3];
   elliptic2 := #[i : i in Labels(FS) | i eq -2];
   genus := 1 + (Index(G) - 6*cusps -4*elliptic3 - 3*elliptic2)/12;
   return Z!genus;
end intrinsic;


// the following is needed because it is not yet
// possible to use things like Set on sequences of
// objects of type GrpPSL2Elt.
intrinsic Matrix(g::GrpPSL2Elt : Precision := 0) -> GrpMatElt
    {returns an element of a matrix group corresponding to g}
   if assigned Parent(g)`IsShimuraGroup then
      if Precision eq 0 then
        if not assigned g`MatrixH then
          gmat := (Parent(g)`MatrixRepresentation)(g`Element);
          gmat /:= Sqrt(Determinant(gmat));
          g`MatrixH := gmat;
        end if;
        return g`MatrixH;
      else
        A := Algebra(BaseRing(Parent(g)));
        gmat := FuchsianMatrixRepresentation(A : Precision := Precision)(g`Element);
        gmat /:= Sqrt(Determinant(gmat));
        g`MatrixH := gmat;
        return g`MatrixH;
      end if;
   end if;
    return g`Element;
end intrinsic;


intrinsic Generators (G::GrpPSL2) -> SeqEnum
   {A sequence containing the generators for G}

   if assigned G`IsShimuraGroup then
      return InternalShimuraGenerators(G);
   end if;

   require G`BaseRing eq Integers():
   "currently only implemented for subgroups of PSL_2(Z)";
   if not assigned G`Generators then
      FS := FareySymbol(G);
      Gens := Generators(FS);
      G`Generators := [G!g : g in Gens];
      return Gens;
   else
      if Type(G`Generators[1]) ne GrpPSL2Elt then
	 G`Generators := [G| x : x in G`Generators];
      end if;
      return G`Generators;
   end if;
end intrinsic;
  

intrinsic Index(G::GrpPSL2) -> RngIntElt
    {The index of G in PSL_2(Z), if this is finite}
	// should improve on this to return a fractional index
	// when G and SL_2(Z) are comensurable
        // Also TO DO: Work it out using formulas for most cases...

    require G`BaseRing eq Integers(): "Argument must be a subgroup of SL_2(Z)";

 if Level(G) eq 1 then return 1; end if;
 if IsGamma(G) then return Level(G)*Index(Gamma1(Level(G))); end if; // MW

    if IsGamma0(G) or IsGamma1(G) then 
       N := Level(G);
       ind := N * &*[Rationals()| 1+1/p : p in PrimeDivisors(N) ];
       if IsGamma1(G) then 
          ind *:= EulerPhi(N);
          if N notin {1,2} then ind /:= 2; end if;
       end if;
       assert IsIntegral(ind);
       return Integers()! ind;
    end if;

    if not assigned G`FS_cosets then
	FS := FareySymbol(G);	
    end if;
    return #G`FS_cosets;
end intrinsic;


intrinsic CosetRepresentatives(G::GrpPSL2) -> SeqEnum
    {returns a list of coset representatives of G in PSL2(Z);
    only defined for G a subgroup of PSL2(Z)}

    require G`BaseRing eq Integers(): "Argument must be a subgroup of SL_2(Z)";

    if not assigned G`FS_cosets then
	FS := FareySymbol(G);	
     end if;
     if Type(G`FS_cosets[1]) ne GrpPSL2Elt then
	P := PSL2(Integers());
	G`FS_cosets := [P| x : x in G`FS_cosets];
     end if;
    return G`FS_cosets;
end intrinsic;
