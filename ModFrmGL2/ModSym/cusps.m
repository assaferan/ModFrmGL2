freeze;
 
/****-*-magma-* EXPORT DATE: 2004-03-08 ************************************
                                                                            
                   HECKE:  Modular Symbols in Magma                          
                            William A. Stein                                 
                                                                            
   FILE: cusps.m (The set of cusps Q union {infinity}.)

   $Header: /home/was/modsym/RCS/cusps.m,v 1.1 2001/04/20 04:45:59 was Exp $

   $Log: cusps.m,v $
   Revision 1.1  2001/04/20 04:45:59  was
   Initial revision

   Revision 1.2  2000/05/02 07:53:34  was
   Added $Log: cusps.m,v $
   Added Revision 1.1  2001/04/20 04:45:59  was
   Added Initial revision
   Added to header

                                                                            
 ***************************************************************************/
import "boundary.m" : BuildTOrbitTable, CuspEquivGrp;

/*

EXAMPLE:

      > Cusps();
      Set of cusps
      > Cusp(2,3);
      2/3
      > Cusp(1,0);
      oo
      > X:=Cusps();
      > X![4,6];
      2/3
      > X!(4/6);
      2/3
      > X!Infinity();
      oo
      > c:=X![3,9];
      > Eltseq(c);
      [ 1, 3 ]

*/

////////////////////////////////////////////////////////////////
//                                                            //
//                  Attribute declarations                    //
//                                                            // 
////////////////////////////////////////////////////////////////

declare type SetCsp [SetCspElt];

// nothing yet:
declare attributes SetCsp:
  G,
  elements,
  orbit_table,
  coset_list,
  find_coset;

declare type SetCspElt;

declare attributes SetCspElt:
   parent,
   u, v;

////////////////////////////////////////////////////////////////
//                                                            // 
//                   Creation functions                       // 
//                                                            //
////////////////////////////////////////////////////////////////

intrinsic CuspsG(G::GrpPSL2) -> SetCsp
{The set of cusps in the upper half plane for the group G;
  consists of equivalence classes of the projective rational line under
    the action of G.}
  cusps := New(SetCsp);
  cusps`G := G;
  cuspList := Cusps(G);
  cusps`elements := [];
  for s in cuspList do
    cusp := s;
    cusp`parent := cusps;
    Append(~cusps`elements, cusp);
  end for;
  // We modify G to contain -1 in its image,
  // since the algorithms below use the image of G
  if Level(G) ne 1 then 
    H := PSL2Subgroup(sub<ModLevel(G) | ImageInLevel(G), -ModLevel(G)!1>);
  else
    H := G;
  end if;
  find_coset := GetFindCoset(H);
  coset_list := [c : c in Codomain(Components(find_coset)[1])];
  cusps`orbit_table := BuildTOrbitTable(coset_list, find_coset, H);
  cusps`coset_list := coset_list;
  cusps`find_coset := find_coset;
  return cusps;
end intrinsic;

TheCusps := New(SetCsp);
// we can't do that because PSL2 is not yet defined when this code runs.
// TheCusps := CuspsG(PSL2(Integers()));

intrinsic Cusps() -> SetCsp
   {The set of cusps in the upper half plane; consists of the
    rational numbers together with infinity.}
   
   return TheCusps;
end intrinsic;

intrinsic Group(X::SetCsp) -> GrpPSL2
{The group for which this set of cusps is defined.}
   if not assigned X`G then
     X`G := PSL2(Integers());
   end if;
   return X`G;
end intrinsic;

intrinsic Elements(X::SetCsp) -> GrpPSL2
{.}
  return X`elements;
end intrinsic;

procedure Reduce(z)
   g := GCD(z`u,z`v);
   z`u := z`u div g;
   z`v := z`v div g;
end procedure;


intrinsic Cusp(u::RngIntElt, v::RngIntElt : Quick:=false) -> SetCspElt
{Create the cusp u/v. (The 'Quick' option skips checking that u and v are coprime)}
   if Quick then
      z := New(SetCspElt);
      z`parent := TheCusps;
      z`u := u;
      z`v := v;
   else
      require u ne 0 or v ne 0 : "One of arguments 1 and 2 must be nonzero.";
      z := New(SetCspElt);
      z`parent := TheCusps;
      z`u := u; 
      z`v := v;
      Reduce(z);
   end if;
   return z;
end intrinsic;


intrinsic Cusp(x::FldRatElt) -> SetCspElt
{Create the cusp at the given element of P^1(Q)}
   return Cusp(Numerator(x),Denominator(x));
end intrinsic;


intrinsic Cusp(x::RngIntElt) -> SetCspElt
{"} // "
   return Cusp(x,1);
end intrinsic;

intrinsic Cusp(x::Infty) -> SetCspElt
{"} // "
   return Cusp(1,0);
end intrinsic;

intrinsic Cusp(u::FldRatElt, v::FldRatElt) -> SetCspElt
{Create the cusp at the given element of P^1(Q)}
 if IsZero(v) then
   return Cusp(Infinity());
 else
   return Cusp(u/v);
 end if;
end intrinsic;

intrinsic Cusp(v::ModTupRngElt[FldRat]) -> SetCspElt
{Create the cusp at the given element of P^1(Q)}
 require Degree(v) eq 2 : "Vector must be of length 2.";
 return Cusp(v[1], v[2]);
end intrinsic;
 
////////////////////////////////////////////////////////////////
//                                                            //
//                     Coercions                              //
//                                                            // 
////////////////////////////////////////////////////////////////

intrinsic IsCoercible(X::SetCsp,x::.) -> BoolElt, SetCspElt
   {}
   case Type(x):
      when SetCspElt:
         y := Cusp(x`u, x`v);
         y`parent := X;
         // for better visibility
         if assigned X`find_coset then
	   for x in Elements(X) do
	     if x eq y then
	       return true, x;
	     end if;
	   end for;
	 end if;
         return true, y;
      when SeqEnum:
         if #x ne 2 then
            return false, "Illegal coercion"; 
         end if;
         U := Type(Universe(x));
         if U eq FldRat then 
            d := LCM(Denominator(x[1]), Denominator(x[2]));
            x := [Integers()| d*x[1], d*x[2]];
         elif U ne RngInt then
            return false, "Illegal coercion"; 
         end if;
         return true, X!Cusp(x[1],x[2]);
      when RngIntElt, FldRatElt, Infty:
         return true, X!Cusp(x);
      else
         return false, "Illegal coercion"; 
   end case;
end intrinsic;

/*
intrinsic IsCoercible(X::SetCspElt,x::.) -> BoolElt, SetCspElt
{}
   return true, Parent(X)!x;
end intrinsic;
*/

////////////////////////////////////////////////////////////////
//                                                            //
//                     Printing                               //
//                                                            //
////////////////////////////////////////////////////////////////

intrinsic Print(X::SetCsp, level::MonStgElt)
   {}
   printf "Set of cusps for the group %o", Group(X);
end intrinsic;


intrinsic Print(x::SetCspElt, level::MonStgElt)
   {}
   printf "%o", x`v eq 0 select "oo" else x`u/x`v;
end intrinsic;



////////////////////////////////////////////////////////////////
//                                                            //
//            Membership and equality testing                 //
//                                                            //
////////////////////////////////////////////////////////////////

intrinsic 'in'(x::., X::SetCsp) -> BoolElt
   {Returns true if x is in X.}
   if Type(x) eq SetCspElt then
      return x`parent eq X;
   end if;
   return false;
end intrinsic;

intrinsic Parent(x::SetCspElt) -> SetCsp
   {}
   return x`parent;
end intrinsic;

intrinsic 'eq' (X::SetCsp,Y::SetCsp) -> BoolElt
   {}
   return Group(X) eq Group(Y);
end intrinsic;

intrinsic 'eq' (x::SetCspElt,y::SetCspElt) -> BoolElt
   {}
   if (x`parent ne y`parent) then return false; end if;
   X := x`parent;
   if assigned X`coset_list then
     is_eq, _ :=  CuspEquivGrp(X`coset_list, X`find_coset, X`G, X`orbit_table,
		       Eltseq(x), Eltseq(y));
   else
     is_eq := x`parent eq y`parent and 
              x`u eq y`u and x`v eq y`v;
   end if;
   return is_eq;
end intrinsic;




////////////////////////////////////////////////////////////////
//                                                            //
//                Attribute Access Functions                  //
//                                                            //
////////////////////////////////////////////////////////////////

intrinsic Eltseq(x::SetCspElt) -> SeqEnum
   {For internal use}
   return [x`u, x`v];
end intrinsic;


////////////////////////////////////////////////////////////////
//                                                            //
//         Functionality, arithmetic operations, etc.         //
//                                                            //
////////////////////////////////////////////////////////////////


intrinsic '*'(alpha::GrpMatElt[FldRat], x::SetCspElt) -> SetCspElt
{Computes the action of alpha on x.}
 Q := Rationals();
 vec := ChangeRing(Vector(Eltseq(x)), Q);
 alpha_vec := vec * Transpose(alpha);
 return Cusp(alpha_vec);
end intrinsic;

// Can we find such a matrix with small determinant?
// say insist that the determinant be d?
// Not sure, but a least we can insist of it being with positive det

intrinsic getCuspGaloisAction(d::RngIntResElt, x::SetCspElt) -> AlgMatElt
{Compute the action of zeta->zeta^d on x.}
  N := Modulus(Parent(d));
  assert N eq Level(Group(Parent(x)));
//  d_prime := Integers()!(d^(-1));
  G := Group(Parent(x));
// For some reason this simple procedure doesn't work
  tau_d := ModLevelGL(G)![1,0,0,d];
//  tau_d := ModLevelGL(G)![d,0,0,1];
  beta := ModLevel(G)!Eltseq(CuspInftyElt(x));
  mat := FindLiftToSL2(G`DetRep(d^(-1)) * beta * tau_d);
//  mat := FindLiftToSL2(G`DetRep(d^(-1)) * tau_d);
/*
  mat := FindLiftToM2Z(Matrix(G`DetRep(d_prime)) : det := d_prime);
  res := Eltseq(Vector(Eltseq(x))*Transpose(mat));
  _, coeffs := XGCD([res[1], res[2], N]);
  u,t,k := Explode(coeffs);
  gamma := FindLiftToSL2(GL(2, Integers(N))![res[1], -t, res[2], u]);
  xN := Eltseq(gamma)[1] - res[1];
  yN := Eltseq(gamma)[3] - res[2];
  dummy, coeffs := XGCD(Eltseq(x));
  u, t := Explode(coeffs);
  new_mat := mat + Parent(mat)![u*xN, t*xN, u*yN, t*yN];
  det := Determinant(new_mat);
  // If the determinant is negative, we turn it into a positive one
  if det lt 0 then
    a,b,c,d := Explode(Eltseq(mat));
    r,s := Explode(Eltseq(x));
    v := (xN*d-yN*b)*s + (xN*c-yN*a)*r;
    m := Sign(v) * ((-det) div Abs(v) + 1);
    u +:= m*s;
    t -:= m*r;
    new_mat := mat + Parent(mat)![u*xN, t*xN, u*yN, t*yN];
    assert Determinant(new_mat) gt 0;
  end if;
  return new_mat;
*/
  return mat;
end intrinsic;

// Galois action of the automorphism sending zeta to zeta^d
intrinsic '*'(d::RngIntResElt, x::SetCspElt) -> SetCspElt
{Compute the action of zeta->zeta^d on x.}
  mat := getCuspGaloisAction(d, x);
//  final_res := Eltseq(Vector(Eltseq(x))*Transpose(mat));
//  return final_res;
//  return Parent(x)!(mat*x);
  return Parent(x)!(mat*Parent(x)![1,0]);
end intrinsic;

intrinsic '*'(d::RngIntResElt, S::SetEnum[SetCspElt]) -> SetCspElt
{Compute the action of zeta->zeta^d on x.}
  return {d*x : x in S};
end intrinsic;

intrinsic '#'(X::SetCsp) -> RngIntElt
{Size of the set.}
  return #Elements(X);
end intrinsic;

intrinsic GaloisOrbit(s::SetCspElt) -> SeqEnum[SetCspElt], SeqEnum[RngIntRes]
{Return the orbit of the cusp s under the Galois action of the cyclotomic
    field Q(zeta_N), identified with (Z/NZ)^*. }
  orbit := [s];
  X := Parent(s);
  N := Level(Group(X));
  U, psi := UnitGroup(Integers(N));
  gens := [psi(g) : g in Generators(U)];
  next_idx := 1;
  actions := [psi(U!0)];
  while next_idx le #orbit do
    for g in gens do
      next_elt := g*orbit[next_idx];
      next := X!next_elt;
      if next notin orbit then
        Append(~orbit, next);
        Append(~actions, g*actions[next_idx]);
      end if;
    end for;
    next_idx +:= 1;
  end while;
  return orbit, actions;
end intrinsic;

intrinsic GaloisOrbits(X::SetCsp) -> SeqEnum
{Returns all orbits of X under the Galois action of the cyclotomic field.}
  if #X eq 0 then
    return [];
  end if;
  // For convenience we start with the cusp at infinity
  cusp := X![1,0];
  covered := [];
  ret := [];
  not_done := true;
  while not_done do
    orbit, sigmas := GaloisOrbit(cusp);
    covered cat:= orbit;
    Append(~ret, <cusp, orbit, sigmas>);
    not_done := exists(cusp){s : s in Elements(X) | s notin covered};
  end while;
  return ret;
end intrinsic;

// other functions

function getOrbit(d, s)
  orbit := [s];
  X := Parent(s);
  next_s := X!(d*orbit[#orbit]);
  while (next_s ne s) do
    Append(~orbit, next_s);
    next_s := X!(d*orbit[#orbit]);
  end while;
  return orbit;
end function;

function getGaloisOrbit(s)
  orbit := [s];
  X := Parent(s);
  N := Level(Group(X));
  U, psi := UnitGroup(Integers(N));
  gens := [psi(g) : g in Generators(U)];
  next_idx := 1;
  actions := [psi(U!0)];
  while next_idx le #orbit do
    for g in gens do
      next := X!(g*orbit[next_idx]);
      if next notin orbit then
        Append(~orbit, next);
        Append(~actions, g*actions[next_idx]);
      end if;
    end for;
    next_idx +:= 1;
  end while;
  return orbit, actions;
end function;

function getAllOrbits(d, X)
  X_elts := Elements(X);
  orbits := [];
  covered := {};
  not_all_covered := true;
  idx := 1;
  while not_all_covered do
    s := X_elts[idx];
    orbit := getOrbit(d,s);
    Append(~orbits, orbit);
    covered join:= {Index(X_elts, s) : s in orbit};
    not_all_covered := exists(idx){idx : idx in [1..#X_elts]
				   | idx notin covered};
  end while;
  return orbits;
end function;


