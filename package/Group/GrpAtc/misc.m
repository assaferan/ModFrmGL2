freeze;

intrinsic ReconstructWordDifferences(A::GrpAtc) -> SeqEnum
{Internal use}
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
  // _, phi := FPGroup(A);
  // return [ w @@ phi : w in wdiffs];

  // This version returns sequence of eltseqs of elements of G
  // which are the same as eltseqs of A elements
  return [ Eltseq(w) : w in wdiffs];
end intrinsic;
