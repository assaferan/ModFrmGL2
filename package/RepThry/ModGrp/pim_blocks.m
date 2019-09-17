//===========================================================================
  identify_irreducible := function(Irrs, M);

  // Identify the irreducible module M in the list of all irreducibles Irrs 
  // for group G in such a way that, on average, the number of isomorphism 
  // tests is minimized.

  // Irrs is a list of all irreducibles sorted by dimension
 
  n := #Irrs;
  dim := Dimension(M);

  for i := 1 to n do

     success := false;
   
    // Dimension of M not equal to Irrs[i] so continue
    if Dimension(Irrs[i]) ne dim then continue; end if;

    // Reached the last irreducible
    if i eq n then
       assert Dimension(Irrs[n]) eq dim;
       irr_num := n; 
       success := true;
       break;
    end if;

    // Dimension of M is equal to Irrs[i] which has unique dimension
    if (Dimension(Irrs[i+1]) ne dim) then
       irr_num := i; 
       success := true;
       break;
    end if;

    // Several irreducibles have same dimension
    if Dimension(Irrs[i+1]) eq dim then

       // Count number of irreds that have dimension dim
       m := 1;
       for j := i+1 to n do 
          if Dimension(Irrs[j]) eq dim then
             m +:= 1;
          else
             break;
          end if; 
       end for;
       // printf "There are %o irreducibles having dimension %o.\n", m, dim;

       // Now look for match
       for k := i to i+m-2 do
           // printf "Testing isomorphism of module against irreducible %o.\n", k;
           iso := IsIsomorphic(Irrs[k], M); 
           if iso then 
              // printf "Module of %o found to be isomorphic to irreducible %o.\n", dim, k;
              irr_num := k;
              success := true;
              break;
           end if;
       end for;
       if not success then 
          irr_num := i + m - 1; 
          success := true; 
       end if;

    end if;         

    if success then break; end if;

  end for; // i 
  
  if success then
     // printf "Module of dimension %o identified as irreducible number %o.\n", dim, irr_num;
  else
     printf "ERROR: Failed to identify irreducible of dimension %o.\n", dim;
     irr_num :=  0;
  end if;
    
  return irr_num;

  end function;
 
//===========================================================================
identify_irreducibles := function(Irrs, Q);

// Irrs is the reference sequence of all irreducibles for group G
// sorted by dimension

// Q is a sequence of irreducibles for group G

  return { identify_irreducible(Irrs, M) : M in Q };

end function;

//===========================================================================
intrinsic PIMBlocks(G::Grp, p::RngIntElt, Irrs::SeqEnum, Pims::SeqEnum) -> SeqEnum
{ Given the sequence of irreducible KG-modules Irrs where K := GF(p) ordered by
  increasing degree and the corresponding sequence of projective indecomposable 
  modules, Pims, return the partition of Pims into blocks as a sequence of sequences.}

  require forall{ i : i in [2..#Irrs] | Dimension(Irrs[i-1]) le Dimension(Irrs[i]) } : "Irreducibles are not sorted by increasing degree.";

  irrs := []; 
  pims := [];
  n := #Irrs;
  for i := 1 to n do

     found := false;
     for j := 1 to #irrs do
        f := irrs[j];
        if i in f then
          irrs[j] := f join {i};
          pims[j] := pims[j] join { i };
          found := true;
          new := false;
          break;
       end if;
     end for;
     if found then continue; end if;

     cons, series := Constituents(Pims[i]);
     ids := identify_irreducibles(Irrs, cons);
     new := true;
     for j := 1 to #irrs do
       f := irrs[j];
       if #(f meet ids) gt 0 then
         irrs[j] := f join ids;
         pims[j] := pims[j] join { i };
         new := false;
         break;
       end if;
    end for;
    if new then
      Append(~irrs, ids);
      Append(~pims, { i });  
    end if; 

  end for;

  return [ SequenceToSet(Sort([ x : x in b ])) : b in irrs ];

  end intrinsic;

//===========================================================================
intrinsic PIMBlocks(G::Grp, p::RngIntElt, CM::Mtrx) -> SeqEnum
{ Given the group G a prime p and the Cartan matrix corresponding to the 
irreducible KG-modules Irrs where K := GF(p), return the partition of the
projective indecomposable modules corresponding to Irrs into blocks as a 
sequence of integer sequences.}

  irrs := []; 
  pims := [];
  n := NumberOfColumns(CM);
  for i := 1 to n do

     ids := { k : k in [1..n] | CM[i,k] ne 0 };
     new := true;
     for j := 1 to #irrs do
       f := irrs[j];
       if #(f meet ids) gt 0 then
         irrs[j] := f join ids;
         pims[j] := pims[j] join { i };
         new := false;
         break;
       end if;
    end for;
    if new then
      Append(~irrs, ids);
      Append(~pims, { i });  
    end if; 

  end for;

  return [ SequenceToSet(Sort([ x : x in b ])) : b in irrs ];

  end intrinsic;

//-----------------------------------------------------------------
