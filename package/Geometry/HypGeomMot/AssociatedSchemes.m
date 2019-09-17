
freeze;

// alternative varieties for HGMs
// First version contributed by Bartosz Nasrecki

function submultisets(S)
 A:=[[Multiset([t : i in [1..m]]) : m in [0..Multiplicity(S,t)]]:t in Set(S)];
 while #A ne 1 do A[#A-1]:=[a join b : a in A[#A-1],b in A[#A]];
  Prune(~A); end while; return A[1]; end function;

function canonical(O) return Sort([Sort(o) : o in O]); end function;

function new_doit(H) A:=AssociativeArray(); B:={};
 M:=Multiset([x : x in GammaList(H)]); S:=submultisets(M);
 for s in S do A[s]:=&+s;
  if A[s] eq 0 and #s ne 0 then Include(~B,s); end if; end for; //"ZEROSUMS",B;
 for b1,b2 in B do if b1 eq b2 then continue; end if; // atoms
  if b1 subset b2 then Exclude(~B,b2); end if;
  if b2 subset b1 then Exclude(~B,b1); end if; end for; // "ATOMS",B;
 for s in S do A[s]:=<0,[[]]>; end for; L:={}; day:=1;
 for b in B do
  A[b]:=<1,[canonical([MultisetToSequence(b)])]>; Include(~L,b); end for;
 while #L ne 0 do NL:={}; day:=day+1; // "day",day;
  for l in L,b in B do c:=b join l; if not c subset M then continue; end if;
   p:=[canonical([MultisetToSequence(b)] cat o) : o in A[l][2]];
   if A[c][1] lt day then A[c]:=<day,p>; Include(~NL,c); continue; end if;
   for q in p do if q in A[c][2] then continue; end if;
    A[c]:=<day,A[c][2] cat [q]>; end for; end for;
  L:=NL; end while; return A[M][2]; end function;

function get_indices(s,G) L:={1..#G}; A:=[[] : i in [1..#s]];
 for t in [1..#s] do for u in [1..#s[t]] do for v in L do
  if s[t][u] eq G[v] then A[t][u]:=v; Exclude(~L,v); break; end if;
  end for; end for; end for; return [Sort(x) : x in A]; end function;

function marks_hack(H) P:=new_doit(H); d:=#P[1]; return P,d; end function;

function doit(H,t) S,d:=marks_hack(H); G:=GammaList(H); n:=#G; SL:=[* *];
 eps:=(-1)^(&+[(-x) mod 2 : x in G | x lt 0]); F:=Parent(t); A:=[];
 for s in S do I:=get_indices(s,G); e:=SymmetricGroup(n)!(&cat I);
  indexlidirect:=Eltseq(e); indexli:=Eltseq(e^(-1));
  indexfundirect:=func<i|indexlidirect[i]>; indexfun:=func<i|indexli[i]>;
  RR:=ProductProjectiveSpace(F,[#T-1: T in I]);
  AssignNames(~RR,["y" cat IntegerToString(indexfundirect(i)) : i in [1..n]]);
  linrel:=[&+[RR.indexfun(y): y in lintup]: lintup in I];
  posprod:=&*([1] cat [RR.indexfun(i)^(G[i]): i in [1..n] | G[i] gt 0]);
  negprod:=&*([1] cat [RR.indexfun(i)^(-G[i]): i in [1..n] | G[i] lt 0]);
  poweq:=eps*t*posprod-negprod; SC:=Scheme(RR,linrel cat [poweq]);
  SL:=SL cat [* SC *]; A cat:=[s]; end for; return SL,A,n-2*d-1; end function;

////////////////////////////////////////////////////////////////////////

intrinsic AssociatedSchemes
(H::HypGeomData : t:=FunctionField(Rationals()).1)
 -> List, SeqEnum, RngIntElt
{Given a hypergeometric datum, return a list of associated schemes
 over product projective spaces in minimal dimension}
 t:=FieldOfFractions(Parent(t))!t; return doit(H,t); end intrinsic;

intrinsic AssociatedSchemes(H::HypGeomData, t::RngElt)
 -> List, SeqEnum, RngIntElt
{Given a hypergeometric datum and a field element
 (nominally over the rationals and neither 0 nor 1),
 return a list of associated schemes over product projective spaces
 in minimal dimension}
 t:=FieldOfFractions(Parent(t))!t; return doit(H,t); end intrinsic;

/*
for h in PossibleHypergeometricData(8) do
 H:=HypergeometricData(h); #AssociatedSchemes(H),GammaList(H); end for;
*/
