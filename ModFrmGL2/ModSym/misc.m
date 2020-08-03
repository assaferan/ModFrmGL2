freeze;
 
/****-*-magma-************************************************
                                                                          
                  HECKE:  Modular Symbols in Magma                         
                           William A. Stein                               
                                                                         
 FILE: misc.m (Miscellanous)                                        
                                                                       
 Last updated : 07/29/2020, Eran Assaf

***************************************************************************/

// This file is intended for supporting older versions of magma
// In particular these functions only appear in Magma v. 2.24 and afterwards.
v1, v2, v3 := GetVersion();
if (v1 lt 2) or ( (v1 eq 2) and (v2 lt 24) ) then
    MinimalOvergps := function(G,H)
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
 
    IntermediateSubgps := function(G,H)
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
	MO := MinimalOvergps(G,H);
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
else
    MinimalOvergps := MinimalOvergroups;
    IntermediateSubgps := IntermediateSubgroups;
end if;
