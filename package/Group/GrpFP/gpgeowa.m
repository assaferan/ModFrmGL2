freeze;

/* This file contains Magma implementations of the functions in the kbmag
 * library file fsageopairs.c, which attempt to prove that an automatic group
 * is hyperbolic by constructing an automaton that accepts all geodesic words,
 * and verifying that its Cayley graph has uniformly thin bigons.
 */

import "dfa.m": DFAREC; 

ReconstructWordDifferences := function(A)
/* A is an automatic group. Reconstruct the list of word differences, just
 * in case they have got lost. The returned value is what would normally
 * be returned by the intrinsic WordDifferences
 */
  dtab := WordDifferenceTable(A);
  ndiff := #dtab;
  as := #dtab[1];
  issq, ngp1 := IsSquare(as+1);
  if not issq then
    error "Input D is not a 2-variable dfa";
  end if;
  ng := ngp1-1;
  go := GeneratorOrder(A); assert #go eq ng;
  go := [A!g : g in go] cat [A!1];
  wdiffs := [ Id(A) ];
  nentries := 1;
  for st in [1..ndiff] do
    d := wdiffs[st];
    for gen in [1..as] do
      g1 := (gen-1) div ngp1 + 1;
      g2 := (gen-1) mod ngp1 + 1;
      imd := go[g1]^-1 * d * go[g2]; 
      diffno := dtab[st][gen];
      if diffno ne 0 and not IsDefined(wdiffs,diffno) then
        wdiffs[diffno] := imd;
        nentries +:= 1;
        if nentries eq ndiff then break st; end if;
      end if;
    end for;
  end for;
  // but the word differences need to lie in G
  _, phi := FPGroup(A);
  return [w @@ phi : w in wdiffs];
end function;
  

GeopairsDFA := function(W, D)
/* W should be the word acceptor of an automatic group A, and D an associated
 * (2-variable) word-difference automaton.
 * This function constructs the DFA of which the states are pairs (st,d),
 * with st a state of W and d a state of D.
 * The alphabet is 2-variable with base the alphabet of W
 * (i.e. the same alphabet as D).
 * The alphabet member (g1,g2) maps (st,d) to (st^g2,d^(g1,g2))
 * if all three components are nonzero, and to zero otherwise,
 * but only when g1 and g2 are members of the base-alphabet itself, and
 * not the end-of-string symbol. This is because we want the constructed
 * 2-variable DFA to words of the same length only.
 * The effect will be to accept a pair of words (w1,w2) if the pair is
 * accepted by D, w2 is accepted by W, and w1 has the same length as w2.
 */
  as := D`alphabetsize;
  tabW := W`transitions;
  tabD := D`transitions;
  issq, ngp1 := IsSquare(as+1);
  if not issq then
    error "Input D is not a 2-variable dfa";
  end if;
  ng := ngp1-1;
  ans := rec<  DFAREC | alphabetsize := as, initial := {1} >;
  states := {@ [ Representative(W`initial), Representative(D`initial)] @};
  table := [];
  cs := 1;
  //build states and transition table of ans
  while cs le #states do
    row := [0: i in [1..as]];
    st := states[cs];
    for g1 in [1..ng] do for g2 in [1..ng] do
      im1 := tabW[st[1]][g2];
      if im1 ne 0 then
        dgno := (g1-1)*ngp1 + g2;
        im2 := tabD[st[2]][dgno];
        if im2 ne 0 then
          pos := Position(states, [im1,im2]);
          if pos eq 0 then
            Include(~states, [im1,im2]);
            pos := #states;
          end if;
          row[dgno] := pos;
        end if;
      end if;
    end for; end for;
    Append(~table, row);
    cs +:= 1;
  end while;
  ans`transitions := table;
  //now work out which states are accepting - assume that all states of W are.
  fD := [ false : i in [1..#tabD]];
  for x in D`final do fD[x] := true; end for;
  fans := {};
  for cs in [1..#states] do
    if fD[states[cs][2]] then Include(~fans,cs); end if;
  end for;
  ans`final := fans;
  return ans;
end function;

CheckGeoWA := function(GW, D : maxeqns:=100)
/* GW is a candidate for the geodesic word-acceptor of a word-
 * hyperbolic group, and D a word-difference machine
 * (In particular, all states of GW should be accepting.)
 * This routine checks the correctness of these fsa's by
 * constructing the fsa of which the states are triples (s1,s2,d),
 * with s1 and s2 states of GW and d a state of *diffptr, or s1=0.
 * The alphabet is 2-variable with base the alphabet of GW
 * (i.e. the same alphabet as D).
 * The alphabet member (g1,g2) maps (s1,s2,d) to (s1^g1,s2^g2,d^(g1,g2))
 * if the second and third components are nonzero, and to zero otherwise.
 * As with GeopairsDFA, the end-of string symbol is not allowed for g1,g2.
 * This fsa is not required itself, so its transition table is not stored.
 *
 * If, during the construction, a state (0,s2,1) (1=identity) is found,
 * then there is an equation w1=w2, with w1 and w2 both geodesics, and
 * w1 not accepted by GW, but w2 accepted. Thus GW is incorrect, and the
 * word w1 is remembered.
 * A maximum of maxeqns such left-hand-sides are returned.
 * If the list returned is empty, then GW is proved correct.
 */
  as := D`alphabetsize;
  tabGW := GW`transitions;
  tabD := D`transitions;
  issq, ngp1 := IsSquare(as+1);
  if not issq then
    error "Input D is not a 2-variable dfa";
  end if;
  ng := ngp1-1;
  states := {@ [ Representative(GW`initial),
                 Representative(GW`initial), Representative(D`initial) ] @};
  Dfin := Representative(D`final);
  table := [];
  cs := 1;
  badwds := [];
  //build states and transition table of ans
  //we need to keep track of how the states were defined in order to
  //reconstruct geodesic words not accepted by GW
  definition := [ [0,0] ];
  while cs le #states do
    st := states[cs];
    for g1 in [1..ng] do for g2 in [1..ng] do
      im1 := st[1] eq 0 select 0 else tabGW[st[1]][g1];
      im2 := tabGW[st[2]][g2];
      if im2 ne 0 then
        dgno := (g1-1)*ngp1 + g2;
        im3 := tabD[st[3]][dgno];
        if im3 ne 0 then
          if Position(states, [im1,im2,im3]) eq 0 then
            Include(~states, [im1,im2,im3]);
            Append(~definition, [g1,cs]);
            if im1 eq 0 and im3 eq Dfin then
              //new geodesic word not accepted by GW - find word
              wd := [g1]; bs := cs;
              while bs ne 1 do
                def := definition[bs];
                Append(~wd, def[1]);
                bs := def[2];
              end while;
              Append(~badwds, Reverse(wd));
              if #badwds eq maxeqns then
                cs := #states;
                break g1;
              end if;
            end if;
          end if;
        end if;
      end if;
    end for; end for;
    cs +:= 1;
  end while;
  return badwds;
end function;

WordDiffsFromEqns := function(A, badwds)
//word differences arising from reducing the words in badwds to normal form
//in automatic group A
  wdiffs := {@  @};
  genord := [ A!g : g in GeneratorOrder(A)];
  for wd in badwds do
    rwd := A.0;
    for g in wd do rwd *:= genord[g]; end for;
    assert #rwd eq #wd;
    esrwd := Eltseq(rwd); //Subword does not work for GrpAtcElt
    wdiff := A.0;
    for i in [1..#wd] do
      wdiff := genord[wd[i]]^-1 * wdiff * A![esrwd[i]]; 
      Include(~wdiffs, wdiff);
    end for;
  end for;
  return wdiffs;
end function;

WDDFA := function(A, wdiffs)
  //build word-difference automaton with state set wdiffs
  assert wdiffs[1] eq A.0;
  ng := 2*Ngens(A);
  ngp1 := ng+1;
  genord := [ A!g : g in GeneratorOrder(A)] cat [A.0];
  as := ngp1^2-1;
  ans := rec<  DFAREC | alphabetsize := as, initial := {1}, final := {1} >;
  tab := [];
  for cs in [1..#wdiffs] do
    wdiff := wdiffs[cs];
    row := [];
    ct := 1;
    for g1 in [1..ngp1] do for g2 in [1..ngp1] do
      if g1 eq ngp1 and g2 eq ngp1 then break g1; end if;
      im := genord[g1]^-1 * wdiff * genord[g2];
      pos := Position(wdiffs,im);
      row[ct] := pos;
      ct +:= 1;
    end for; end for;
    Append(~tab,row);
  end for;
  ans`transitions := tab;
  return ans;
end function;

intrinsic IsHyperbolic(A :: GrpAtc : MaxTries := 10, MaxBadWords:=100) ->
                                                            BoolElt, Rec
{Test whether automatic group A is hyperbolic}
   W := WordAcceptor(A);
   D := WordDifferenceAutomaton(A);
   vprint KBMAG: "Word acceptor has", #W`transitions, "states"; 
   vprint KBMAG: "There are", #D`transitions, "word differences"; 
   wdiffs := WordDifferences(A);
   if #wdiffs eq 0 then wdiffs := ReconstructWordDifferences(A); end if;
   wdiffs := {@ A!w : w in wdiffs @};
   for i in [1..MaxTries] do
     GP := GeopairsDFA(W,D);
     GP := MinimizeDFA(GP);
     GW := ExistsDFA(GP);
     GW := MinimizeDFA(GW);
     vprint KBMAG: "Geodesic word acceptor has", #GW`transitions, "states"; 
     badwds := CheckGeoWA(GW,D :maxeqns:=MaxBadWords);
     if #badwds eq 0 then
       vprint KBMAG: "Hyperbolicity proved after",i,"attempts";
       return true, GW;
     end if;
     newdiffs := WordDiffsFromEqns(A,badwds);
     wdiffs := wdiffs join newdiffs;
     vprint KBMAG: "Attempt number",i,"failed. There are now",
                                          #wdiffs,"word differences"; 
     D := WDDFA(A,wdiffs);
   end for;
   "Failed to prove hyperbolicity after",MaxTries,"attempts. Giving up";
   return false, _;
end intrinsic;

