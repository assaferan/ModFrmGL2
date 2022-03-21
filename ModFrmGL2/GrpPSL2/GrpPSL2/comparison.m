freeze;

////////////////////////////////////////////////////////////////////
//                                                                //
//               Membership and equality testing                  //
//                                                                //
////////////////////////////////////////////////////////////////////

/*******************************************************************
  CHANGE LOG:

  Jan 2007, Steve: 
      Rewrote 'eq' and 'subset'
        to take account of subgroup_list.
      Removed IsFiniteIndex (and all calls to it!) 
        for the moment, because it does nothing.

 *******************************************************************/

import "coercion.m":  MemberTest;

intrinsic 'in'(A::., G::GrpPSL2) -> BoolElt
   {Returns true if A is in G.}
   if ISA(Type(A), GrpPSL2Elt) then
       return MemberTest(G,Matrix(A));
   elif ISA(Type(A), Mtrx) then
       return MemberTest(G,A);
   end if;   
   return false;
end intrinsic;


intrinsic 'eq' (A::GrpPSL2Elt,B::GrpPSL2Elt) -> BoolElt
    {Equality of elements of PSL_2(Z)}

    if assigned Parent(A)`IsShimuraGroup and Parent(A)`IsShimuraGroup then
      return A`Element eq B`Element;
    end if;

    R1 := BaseRing(Parent(A));
    R2 := BaseRing(Parent(B));
    // WARNING : need to test if elements of A and B can be
    // multiplied together!
    if (Type(R1) ne RngInt or Type(R1) ne FldRat) and
	(Type(R2) ne RngInt or Type(R2) ne FldRat)
	then
	require Type(R1) eq Type(R2): "first and second arguments
	must be defined over compatible rings";
    end if;    
    a_elt := Eltseq(A`Element);
    b_elt := Eltseq(B`Element);
    sA := a_elt[1];
    sB := b_elt[1];
    if sA eq 0 then
	if sB ne 0 then
	    return false;
	else
	    sA := a_elt[2];
	    sB := b_elt[2];
	end if;
    elif sB eq 0 then
	return false;	
    end if;
    if Type(R1) eq FldNum and Type(R2) eq FldNum then
	if R1 ne R2 then
	    K := NumberField(R1,R2);
	    return
	    &and[K!(a_elt[i]/sA) eq K!(b_elt[i]/sB) : i in [1..4]]; 
	end if;
    end if;    
    return &and[a_elt[i]/sA eq b_elt[i]/sB : i in [1..4]]; 
end intrinsic;


intrinsic 'eq' (G::GrpPSL2,H::GrpPSL2) -> BoolElt
    {True iff the given congruence subgroups of PSL_2(Z) are equal.}
    // Warning! this may not work well for non congruence groups!
    if G`BaseRing cmpne H`BaseRing then return false; end if;
     if assigned G`Level and assigned H`Level then
		 // levels := {G`Level, H`Level};
        levels := {CalcLevel(G), CalcLevel(H)};
        if levels eq {1} then return true;
        elif 1 in levels then return false;
        end if;
        return G subset H and H subset G;
    else
    //	return true;
        require false: "Not implemented for non-congruence subgroups";
    end if;
end intrinsic;

// This function checks whether for a given element of SL(2,Z/NZ)
// its image in PSL2(Z/NZ) lies in a Gamma1(N)
function is_elt_in_gamma1(h,N)
  in_gamma1 := (h[1,1] eq 1) and (h[2,2] eq 1);
  in_gamma1 := in_gamma1 or ((h[1,1] eq -1) and (h[2,2] eq -1));
  in_gamma1 := in_gamma1 and (h[2,1] eq 0);
  return in_gamma1;
end function;

// This function checks whether for a given element of SL(2,Z/NZ)
// its image in PSL2(Z/NZ) lies in a Gamma0(N)
function is_elt_in_gamma0(h,N)
  return (h[2,1] eq 0);
end function;

// This function checks whether for a given element of SL(2,Z/NZ)
// its image in PSL2(Z/NZ) lies in a GammaUpper0(N)
function is_elt_in_gammaUpper0(h,N)
  return (h[1,2] eq 0);
end function;

// This function wraps the above three functions together
// This function checks whether for a given element of SL(2,Z/NZ)
// its image in PSL2(Z/NZ) lies in a Gamma0(N)
function is_elt_in_gamma(h,N,type)
  if type eq "Gamma0" then
     return is_elt_in_gamma0(h,N);
  elif type eq "Gamma1" then
     return is_elt_in_gamma1(h,N);
  elif type eq "GammaUpper0" then
     return is_elt_in_gammaUpper0(h,N);
  end if;
  assert false; // Only Gamma0, Gamma1, GammaUpper0 are currently supported
end function;

// This function checks whether a congruence subgroup H
// defined via its image in a certain level
// is contained in Gamma_?(N)
function is_in_gamma(H,N, type)
  if N eq 1 then
     return true;
  end if;
  grp := SL(2, Integers(N));
  H_gens := [grp!h : h in Generators(H`ImageInLevel)];
  for h in H_gens do
     in_gamma := is_elt_in_gamma(h, N, type);
     if not in_gamma then
	return false;
     end if;
  end for;
  return true;
end function;

intrinsic 'subset'(H::GrpPSL2,G::GrpPSL2) -> BoolElt
    {True iff H is a subgroup of G, where G and H are subgroups of PSL_2(Z).}
    if (assigned G`Level) and (G`Level eq 1) then
       return Type(H`BaseRing) eq Type(G`BaseRing);
    end if;
    if not H`IsOfGammaType then
       if assigned H`Generators then
         for h in H`Generators do
             if not (h in G) then
                return false;
             end if;
         end for;
         return true;
      end if;
      if assigned H`ImageInLevel then
         N := Level(H);
         if assigned G`ImageInLevel then
	    M := Level(G);
            if N mod M ne 0 then
	      return false;
            end if;
            H_gens := [ G`ModLevel!h : h in Generators(H`ImageInLevel)];
            H_im := sub< G`ModLevel | H_gens >;
            return H_im subset G`ImageInLevel;
	 end if;
         if assigned G`Generators then
	    Gamma_N := CongruenceSubgroup(N);
            if not Gamma_N subset G then
               return false;
            end if;
            G_im := sub< H`ModLevel | [H`ModLevel!ElementToSequence(g)
 			      : g in G`Generators] cat [-H`ModLevel!1]>;
            return H`ImageInLevel subset G_im;
	 end if;
         if N mod CalcLevel(G) ne 0 then
	   return false;
         end if;
         require #G`gammaType_list eq 1 :
                 "Arguments should both be subgroups of PSL_2(Z)";
         levels := G`gammaType_list[1];
         types := ["Gamma0", "Gamma1", "GammaUpper0"];
         for idx in [1..3] do
            if not is_in_gamma(H, levels[idx], types[idx]) then
	       return false;
	    end if;
         end for;
         return true;
      end if;
    end if;
    if not G`IsOfGammaType then
        if IsGamma(H) and (CalcLevel(G) eq Level(H)) then
          return true;
        end if;
	// !!! this could be quite slow but will do for now
        gens_H := Generators(H);
        for h in gens_H do
	   if not h in G then
	      return false;
           end if;
	end for;
        return true;
    end if;
    require #H`gammaType_list eq 1 and #G`gammaType_list eq 1: 
            "Arguments should both be subgroups of PSL_2(Z)";
    MH,NH,PH := Explode(H`gammaType_list[1]);
    MG,NG,PG := Explode(G`gammaType_list[1]);
    // Note that Gamma0(2) = Gamma1(2), and more generally 
    // for n odd, [2*m,n,p] = [2*m,2*n,p] 
    type_lists_agree := (MH mod MG eq 0) and (PH mod PG eq 0) 
         and ( (NH mod NG eq 0) 
               or (2*NH mod NG eq 0) and IsOdd(NH) and IsEven(MH*PH) );
    if not type_lists_agree then return false; end if;
    // Now H < G iff the character(s) for H are trivial on G:
    if not assigned H`subgroup_list then return true; end if;
    charsH := H`subgroup_list;
    ChiH := DirichletGroup(NH, CyclotomicField(EulerPhi(NH)));
    ChiHgrp, toChiH := AbelianGroup(ChiH);
    charsHgrp := sub<ChiHgrp | [ (ChiH!charH) @@ toChiH : charH in charsH ]>;
    if assigned G`subgroup_list then
        charsG := G`subgroup_list;
    else
        // in this case, charsG will generate all even characters mod NG
        ChiG := DirichletGroup(NG, CyclotomicField(EulerPhi(NG)));
        ChiGgrp, toChiG := AbelianGroup(ChiG);
        ChiGgrp_even := Kernel(hom< ChiGgrp -> AbelianGroup([2]) | 
                             [(chi@toChiG)(-1) : chi in Generators(ChiGgrp)] >);
        charsG := [ chi @ toChiG : chi in Generators(ChiGgrp_even) ];
    end if;
    return &and[ (ChiH!charG) @@ toChiH in charsHgrp : charG in charsG ];
end intrinsic;

/*
// TO DO: make this do something non trivial!
intrinsic IsFiniteIndex(G::GrpPSL2,H::GrpPSL2) -> BoolElt
    {tests whether G is finite index in H}
    if not G subset H then
	return false;
    end if;
    return true;
end intrinsic;
*/

intrinsic Index(G::GrpPSL2,H::GrpPSL2) -> RngIntElt
    { returns index of H in G, if this is finite}
    require H subset G: "second argument must be a subgroup of the first argument";
    //require IsFiniteIndex(G,H): "First argument must have finite index in the second argument";
    Z := Integers();
    require G`BaseRing eq Z: "First argument must be a subgroup of SL_2(Z)";
    require H`BaseRing eq Z: "Second argument must be a subgroup of SL_2(Z)";
    if not assigned G`FS_cosets then
	FS := FareySymbol(G);	
    end if;
    if not assigned H`FS_cosets then
	FS := FareySymbol(H);	
    end if;
    indG := #G`FS_cosets;
    indH := #H`FS_cosets;
    return Integers()!(indH/indG);
end intrinsic;







