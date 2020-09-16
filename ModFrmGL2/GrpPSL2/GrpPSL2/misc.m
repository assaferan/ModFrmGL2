freeze;
 
/****-*-magma-************************************************
                                                                          
                  HECKE:  Modular Symbols in Magma                         
                           William A. Stein                               
                                                                         
 FILE: misc.m (Miscellanous)                                        
                                                                       
 Last updated : 09/15/2020, Eran Assaf
      	      	07/29/2020, Eran Assaf

***************************************************************************/

// This file is intended for supporting older versions of magma
// In particular these functions only appear in Magma v. 2.23-4 and afterwards.
v1, v2, v3 := GetVersion();
version := Vector([v1, v2, v3]);

if version ge Vector([2,23,4]) then
    
    _, NormalizerGrpMat := IsIntrinsic("Normalizer");
    _, Conjugates := IsIntrinsic("Conjugates");
    _, IsConjugate := IsIntrinsic("IsConjugate");
    
else

    _, FPNormalizer := IsIntrinsic("Normalizer");
    _, FPConjugates := IsIntrinsic("Conjugates");
    _, FPIsConjugate := IsIntrinsic("IsConjugate");
    
    NormalizerGrpMat := function(G,H)
	U, phi := FPGroup(G);
	U_H := H @@ phi;
	return phi(FPNormalizer(U, U_H));
    end function;

    Conjugates := function(G,H)
	U, phi := FPGroup(G);
	U_H := H @@ phi;
	return {phi(c) : c in FPConjugates(U, U_H)};
    end function;

    IsConjugate := function(G, H, K)
	U, phi := FPGroup(G);
	U_H := H @@ phi;
	U_K := K @@ phi;
	bool, elt := FPIsConjugate(U, U_H, U_K);
	if bool then
	    return bool, phi(elt);
	end if;
	return false;	
    end function;
    
end if;

if version ge Vector([2,23,1]) then
    
    _, MinimalOvergroups := IsIntrinsic("MinimalOvergroups");
    _, IntermediateSubgroups := IsIntrinsic("IntermediateSubgroups");

else

    MinimalOvergroups := function(G,H)
	local subs, ca, ba, P, MP, I, S;
	subs := [PowerStructure(Type(G))|];
	if H eq G then return subs; end if;
	ca, P := CosetAction(G,H);
	if IsPrimitive(P) then
	    Append(~subs,G);
	    return subs;
	end if;
	MP := MinimalPartitions(P);
	for b in MP do
	    ba, I := BlocksAction(P,b);
	    S := Stabiliser(I,1) @@ ba @@ ca;
	    Append(~subs, S);
	end for;
	return subs;
    end function;
 
    IntermediateSubgroups := function(G,H)
	local subs, MO, MOR, S, AS;
	subs := [PowerStructure(Type(G))|];
	if H eq G then return subs; end if;
	if #H eq 1 or Index(G,H) gt 50 * #H^2 then
	    AllSubs := true;
	else AllSubs := false;
	end if;
     
	if AllSubs then
	    if Type(G) eq GrpPC then
		S := [s`subgroup: s in Subgroups(G) | s`order mod #H eq 0];
	    else
		S := [s`subgroup: s in Subgroups(G : OrderMultipleOf := #H )];
	    end if;
	    AS :=  &cat[[s^t : t in Transversal(G,Normaliser(G,s))] : s in S];
	    if #H gt 1 then
		AS := [ s : s in AS | H subset s ];
	    end if;
	    Exclude(~AS,H); Exclude(~AS,G);
	    return AS;
	end if;
	MO := MinimalOvergroups(G,H);
	if MO eq [G] then return subs; end if;
	subs := MO;
	for S in subs do
	    MOR := $$(G,S);
	    for m in MOR do if not m eq G and not m in subs then
				Append(~subs,m);
			    end if; end for;
	end for;
	return subs;
    end function;
    
end if;
