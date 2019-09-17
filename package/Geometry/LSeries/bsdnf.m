/*******************************************************
Implements BSD-related functions for elliptic curves
over number fields:
  ConjecturalRegulator, AnalyticRank, ConjecturalSha
Tim & Vladimir Dokchitser Aug 2010
*******************************************************/


freeze;


Z:=Integers();
Q:=Rationals();


function cross(z1,z2)
  a:=Real(z1);
  b:=Imaginary(z1);
  c:=Real(z2);
  d:=Imaginary(z2);
  return a*d-b*c;
end function;


IsCloseToReal:=func<x,prec|Abs(Imaginary(x)) lt 10^(2-prec)>;


function RealPeriod(p1,p2)
  prec:=Precision(p1);
  if IsCloseToReal(p1,prec) then return p1; end if;
  if IsCloseToReal(p2,prec) then return p2; end if;
  q:=BestApproximation(Imaginary(p1)/Imaginary(p2),10^((prec-2) div 2));
  num:=Numerator(q);
  den:=Denominator(q);
  assert IsCloseToReal(p1*den-p2*num,prec);
  return p1*den-p2*num;
end function;


function BSDEasyTerms(E: Precision:=6)

  K:=BaseField(E);
  r1,r2:=Signature(K);
  inf:=InfinitePlaces(K);
  P:=Periods(E: Precision:=Max(Precision,20));
  dsc:=Discriminant(E);
  C:=ComplexField(Precision);
  realpers:=&*[C| RealPeriod(P[i][1],P[i][2]): i in [1..r1+r2] | IsReal(inf[i])];
  realcorr:=&*[Z| d lt 0 select 1 else 2: d in RealEmbeddings(dsc)];
  complpers:=&*[C| cross(P[i][1],P[i][2]): i in [1..r1+r2] | not IsReal(inf[i])];
  complcorr:=2^r2;
  omegas:=Abs(realpers*realcorr*complpers*complcorr);

  // Torsion
  tors:=#TorsionSubgroup(E);

  // Discriminant of O_K
  dK:=Abs(Discriminant(IntegerRing(K)));

  // Tamagawa numbers * Omega contribution
  loc:=LocalInformation(E);
  tam:=&*[Z| l[4]: l in loc];
  disc:=Discriminant(E);
  om:=&*[Q| Norm(l[1])^((Valuation(disc,l[1])-l[2]) div 12): l in loc];
  C:=tam*om;

  return C * omegas / Sqrt(dK) / tors^2;
end function;


function OrderOfVanishing(L,tolerance)
  w:=Sign(L);
  if w in [1,-1] 
    then der:=w gt 0 select -2 else -1; step:=2;
    else der:=-1; step:=1; 
  end if;
  repeat
    der+:=step;
    vprint LSeries,1: "Computing "*Sprint(der)*"th derivative of",L;
    lval:=Evaluate(L,1: Derivative:=der, Leading:=true)/Factorial(der);
  until Abs(lval) ge tolerance;
  return der,lval; 
end function;

intrinsic AnalyticRank(E::CrvEll[FldNum] : Precision:=8) -> RngIntElt, FldReElt
{Computes the analytic rank of E, assuming the conjectural functional equation
 for its L-function. Returns the analytic rank and the leading derivative
 of the L-function at s=1. Uses Precision to determine whether a given
 derivative is 0.}

 K:=BaseField(E);
 if &and[IsCoercible(Rationals(),x) : x in Coefficients(E)] then
  L:=LSeries(ChangeRing(E,Rationals()),K : Precision:=Precision);
 else L:=LSeries(E: Precision:=Precision); end if;
 // geh, maybe already take L as input? doing Galois comp not always easy
 P:=L`prod; prec:=L`precision;
 tolerance:=prec le 8 select 1E-4 else 10^-(prec div 2); ord:=0; lead:=1;
 if P cmpeq false then return OrderOfVanishing(L,tolerance); end if;
 // unravel the product
 PF:=[* F[1]`parent: F in P *];
 oper:=["compute": F in P]; CH:=[* 0 : F in P *];
 OK:=func<x|Type(x) eq Tup and #x eq 3 and x[2] cmpeq "tensor"
            and Type(x[1]) eq CrvEll and Type(x[3]) eq ArtRep>;
 for i in [1..#P] do F:=PF[i];
 if OK(F) and (F[1] cmpeq PF[1])
   then CH[i]:=Character(F[3]); if IsReal(CH[i]) then continue; end if;
   if exists{j: j in [2..i-1] | OK(PF[j]) and
                                Character(PF[j][3]) eq ComplexConjugate(CH[i])}
   then oper[i]:="skip"; else oper[i]:="andconjugate"; end if; end if; end for;
 rk:=[0 :  F in P]; ld:=[* 0 :  F in P *]; // oper,CH;
 for i in [1..#P] do F:=P[i]; o:=oper[i];
  if o eq "skip" then ch:=Character(PF[i][3]);
  assert exists(w){j: j in [2..i-1] |
                   OK(PF[j]) and Character(PF[j][3]) eq ComplexConjugate(ch)};
   rk[i]:=rk[w]; ld[i]:=ComplexConjugate(ld[w]); continue; end if;
  rk[i],ld[i]:=OrderOfVanishing(F[1],tolerance); end for;
 for i in [1..#P] do if CH[i] cmpeq 0 then continue; end if;
  for j in [1..#P] do if i eq j or CH[j] cmpeq 0 then continue; end if;
  if IsConjugate(CH[i],CH[j]) and rk[i] gt rk[j] then
   printf "Seems component %o should have smaller rank, increase prec\n",i;
   return AnalyticRank(E: Precision:=Precision+2); end if; end for; end for;
 return &+rk,Real(&*[x : x in ld]); end intrinsic;

intrinsic ConjecturalRegulator(E::CrvEll[FldNum] : Precision:=10) 
  -> FldReElt, RngIntElt
{For an elliptic curve over a number field, this returns 
(approximately) the conjectural value of Regulator*|Sha|
according to the Birch-Swinnerton-Dyer conjecture.
The analytic rank is also returned.   
'Precision' is used to decide which derivatives are zero 
(in determining the rank)}
  r,lead:=AnalyticRank(E: Precision:=Precision);
  R := lead/BSDEasyTerms(E: Precision:=Precision)
           /Degree(BaseField(E),Q)^r;
  return R, r;
end intrinsic;


intrinsic ConjecturalSha(E::CrvEll[FldNum], pts::Setq[PtEll] : Precision:=6)
  -> FldReElt
{For an elliptic curve over a number field K, this returns 
an approximate value for #Sha(E) computed analytically, 
assuing the Birch-Swinnerton-Dyer conjecture and assuming
that the given points generate E(K) modulo torsion. 
(More precisely: returns 0 if the subgroup <pts> has rank 
smaller than the analytic rank, otherwise returns #Sha(E)/I^2
where I is the index of <pts> as a subgroup of E(K)/E_tors.}

  K:=BaseField(E);

  pts:=IndependentGenerators([E| p : p in pts]);

  // regulator
  if IsEmpty(pts) then reg:=1; else 
    reg:=Determinant(HeightPairingMatrix(pts: Precision:=Precision))
      * Degree(K,Q)^#pts;
    assert reg ne 0;
  end if;

  // lvalue
  L:=LSeries(E: Precision:=Precision);
  lval:=Evaluate(L,1: Derivative:=#pts)/Factorial(#pts);

  return lval/reg/BSDEasyTerms(E: Precision:=Precision);
end intrinsic;

