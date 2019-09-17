
freeze;

Z:=Integers(); Q:=Rationals();

import "identify_t1.m" : identify_t1;

intrinsic KroneckerCharacter(D::FldRatElt) -> GrpDrchElt
{The Kronecker character (D/n)}
 require D ne 0: "Cannot have KroneckerCharacter of 0";
 return KroneckerCharacter(Numerator(D)*Denominator(D)); end intrinsic;

intrinsic IdentifyKroneckerCharacter(chi::GrpDrchElt) -> RngIntElt
{Given a real Dirichlet character (over Q), identify it as a Kronecker char }
 chi:=AssociatedPrimitiveCharacter(chi);
 require Order(chi) le 2: "Must be quadratic";
 if Order(chi) eq 1 then return 1; end if; C:=Conductor(chi);
 return chi eq KroneckerCharacter(C) select C else -C; end intrinsic;

intrinsic ArtinRepresentationQuadratic(d::RngQZElt) -> ArtRep
{Return the Artin representation corresponding to the character given by d}
 require d ne 0: "Discriminant cannot be 0";
 if IsSquare(d) then return ArtinRepresentations(Rationals())[1]; end if;
 x:=PolynomialRing(Rationals()).1;
 return ArtinRepresentations(NumberField(x^2-d))[2]; end intrinsic;

////////////////////////////////////////////////////////////////////////

ArtRepQuad:=ArtinRepresentationQuadratic;

ARTIN_REP:=AssociativeArray();
R:=PolynomialRing(Rationals()); xv:=R.1;
RR:=FunctionField(R); U:=RR.1;

function my_minim(A) return Minimize(A : Optimize:=false); end function;
function perm_char(F) // permutation character of an algebra
 return &+[PermutationCharacter(NumberField(f[1])) : f in Factorization(F)];
 end function;

// non-Belyi case(s), most are from Bartosz Nasrecki

function artinrep_deg4_2446z(th) // actually t
 pol12:=Polynomial([-16/729/th,0,0,0,1,0,-4,0,6,0,-4,0,1]);
 pol2:=Polynomial([-th,0,1]);
 pol4:=Polynomial([-9*th^3,0,0,0,1]);
 pol6:=Polynomial([4*(-4 + th)*th^5, 12*th^5, 9*th^4, -4*th^3, -6*th^2, 0, 1]);
 function PerChar(pol)
  dec:=&cat[Decomposition(PermutationCharacter(OptimizedRepresentation
	    (NumberField(f[1])))): f in Factorization(pol)];
  dec:=[<Minimize(rho[1]),rho[2]>: rho in dec]; return dec; end function;
 per12:=PerChar(pol12); per2:=PerChar(pol2);
 per4:=PerChar(pol4); per6:=PerChar(pol6);
 rho1:=SequenceToMultiset(per12) diff SequenceToMultiset(per6);
 rho2:=SequenceToMultiset(per4) diff SequenceToMultiset(per2);
 rho:=MultisetToSequence(rho1 diff rho2);
 return &+[Integers()!x[2]*x[1]: x in rho]; end function;

function artinrep_deg4_123466z(u) // actually t
 R<X>:=PolynomialRing(FieldOfFractions(Parent(u))); u:=1/u;
 pol:=-330225942528*u^6 - 990677827584*u^6*X +
      (41278242816*u^5 + 990677827584*u^6)*X^2 +
      (-91729428480*u^5 - 330225942528*u^6)*X^3 +
      (1576599552*u^4 + 25583910912*u^5)*X^4 +
      (-7357464576*u^4 + 24078974976*u^5)*X^5 +
      (11943936*u^3 - 185296896*u^4 + 788299776*u^5)*X^6 +
      (-204374016*u^3 - 519063552*u^4)*X^7 +
      (-228096*u^2 - 11069568*u^3 - 45065808*u^4)*X^8 +
      (-2204928*u^2 - 4786048*u^3 - 55728*u^4)*X^9 +
      (864*u - 552504*u^2 + 336072*u^3)*X^10 +
      (-1920*u - 8472*u^2 - 1272*u^3)*X^11 + (-1 + 3*u - 3*u^2 + u^3)*X^12;
 psi:=perm_char(Evaluate(pol,X^2)); chi:=perm_char(pol);
 Embed(Field(chi),Field(psi),Field(psi).1^2);
 d:=psi-chi; d:=Decomposition(d);
 if #d ne 2 or Degree(d[1][1]) ne 4 then
  error "Sorry, cannot compute ArtRep for non-generic parameter"; end if;
 m:=my_minim(d[1][1]); return m; end function;
// even for u=3 this took forever to compute psi...

function artinrep_deg4_1346z(u) // actually t
 R<X>:=PolynomialRing(FieldOfFractions(Parent(u)));
 pol:=-16 + 576*X*u + X^2*(-288*u - 6912*u^2) + X^3*(7680*u^2 + 27648*u^3) +
   X^4*(-1584*u^2 - 25704*u^3) + X^5*(88704*u^3 - 290304*u^4) +
   X^6*(-1728*u^3 + 26808*u^4 - 114048*u^5) + X^7*(354816*u^4 + 901152*u^5) +
   X^8*(4752*u^4 + 230616*u^5 + 938871*u^6) +
   X^9*(551232*u^5 + 1196512*u^6 + 13932*u^7) +
   X^10*(-2592*u^5 + 1657512*u^6 - 1008216*u^7) +
   X^11*(69120*u^6 + 304992*u^7 + 45792*u^8) +
   X^12*(432*u^6 - 1296*u^7 + 1296*u^8 - 432*u^9);
 psi:=perm_char(Evaluate(pol,X^2)); chi:=perm_char(pol);
 Embed(Field(chi),Field(psi),Field(psi).1^2);
 d:=psi-chi; d:=Decomposition(d);
 if #d ne 2 or Degree(d[1][1]) ne 4 then
  error "Sorry, cannot compute ArtRep for non-generic parameter"; end if;
 m:=my_minim(d[1][1]); return m; end function;

// degree 2
ARTIN_REP[[1,-2,-2,-3,6]]:=
 [* 4*xv^3-xv^2+U,(xv-1+U)-U,<ArtRepQuad,U>,"Twist" *];

// degree 3
ARTIN_REP[[1,-2,3,4,-6]]:=[1-xv^2+4*(1/U)*xv^6,1-xv+4*(1/U)*xv^3];

// degree 4, total 11 of weight 0, and 4 are Belyi
ARTIN_REP[[2,-3,5,6,-10]]:=
[* -16/U+xv^6-2*xv^8+xv^10,-16/U+xv^3-2*xv^4+xv^5,<ArtRepQuad,U>,"Subtract" *];
ARTIN_REP[[1,-2,-4,-5,10]]:=
[* -16*U^3+U^2*xv^2-2*U*xv^6+xv^10,-16*U^3+U^2*xv-2*U*xv^3+xv^5,
   <ArtRepQuad,U>,"Subtract" *];
ARTIN_REP[[1,-3,4,6,-8]]:=[4/U-xv^6+xv^8,4/U-xv^3+xv^4];
ARTIN_REP[[1,-2,-3,-4,8]]:=[U^3*xv^6*(1-U*xv^2)-64*U,xv^3*(1-xv)-64*U];

ARTIN_REP[[2,-4,-4,-6,12]]:=[artinrep_deg4_2446z];

ARTIN_REP[[1,-2,-3,4,6,6,-12]]:=[artinrep_deg4_123466z];
ARTIN_REP[[1,-3,-4,-6,12]]:=[artinrep_deg4_1346z];

// degree 5, total 7 of weight 0, and 2 are Belyi
ARTIN_REP[[1,-2,4,5,-8]]:=
  [xv^10-12*xv^4/U^5-64*xv^2/U^7-1/U^8,xv^5-12*xv^2/U^5-64*xv/U^7-1/U^8];
ARTIN_REP[[1,-2,5,6,-10]]:= // this can/should be done via twisting...
  [* xv^6-4*xv^5/U+1/U^5,(xv-1+U)-U,<ArtRepQuad,-U>,"Twist"*];
ARTIN_REP[[1,-4,5,8,-10]]:=[xv^10-xv^8+4/U,xv^5-xv^4+4/U];
ARTIN_REP[[2,-3,-4,-5,10]]:=
  [xv^10-3*xv^8+3*xv^6-xv^4+64*U,xv^5-3*xv^4+3*xv^3-xv^2+64*U];
ARTIN_REP[[2,3,-4,5,-6]]:=[-1+5*xv^2-10*xv^4+(10-1024/U)*xv^6-5*xv^8+xv^10,
			   -1+5*xv-10*xv^2+(10-1024/U)*xv^3-5*xv^4+xv^5];

function get_nonbelyi_art_rep(X,t) S:=[x : x in X`Glist];
 if S[1] lt 0 then return get_nonbelyi_art_rep(SwapAlphaBeta(X),1/t); end if;
 if S in Keys(ARTIN_REP) then A:=ARTIN_REP[S]; u:=1/MValue(X)/t;
 if #A eq 1 then return (A[1])(t); end if;
  rep:=my_minim(perm_char(R!Evaluate(A[1],u))-perm_char(R!Evaluate(A[2],u)));
  if #A eq 2 then return rep; end if;
  if A[4] eq "Twist" then rep2:=(A[3][1])(Rationals()!Evaluate(A[3][2],u));
   rep:=rep*rep2; end if;
  if A[4] eq "Subtract" then
   rep:=my_minim(rep-(A[3][1])(Rationals()!Evaluate(A[3][2],u))); end if;
  return rep; end if; return false; end function; // should not need to twist?
/*
 T:=Twist(X); S:=[x : x in T`Glist];
 if S[1] lt 0 then T:=SwapAlphaBeta(T); t:=1/t; S:=[x : x in T`Glist]; end if;
 if S in Keys(ARTIN_REP) then A:=ARTIN_REP[S]; u:=t; v:=1/MValue(T)/t;
  rep:=my_minim(perm_char(R!Evaluate(A[1],v))-perm_char(R!Evaluate(A[2],v)));
  tw:=MValue(T); _,tw:=Valuation(tw,2); tw:=Numerator(tw)*Denominator(tw);
  tw:=Sign(tw)*&*[Z|f[1]^(f[2] mod 2) : f in Factorization(tw)];
  if IsOdd(Degree(X)) then return my_minim(rep*ArtRepQuad(-tw/t));
  else return my_minim(rep*ArtRepQuad(tw*t)); end if; end if;
  return false; end function;*/

function get_art_rep(X,t)
 if #X`Glist eq 3 then a:=-X`Glist[1]; b:=-X`Glist[2]; e:=Gcd(a,b);
  M:=MValue(X); u:=1/M/t; if a lt 0 then a:=-a; b:=-b; u:=1/u; end if;
  x:=PolynomialRing(Rationals()).1; // above: swap of alpha/beta
  return my_minim(perm_char(x^a*(1-x)^b-u)-perm_char(x^e-u)); end if;
 if false then H:=Twist(X); // this is likely faster, when it works
  if #H`Glist eq 3 then M:=MValue(H);
   if IsOdd(#X`alpha) then u:=t; tw:=-M; else u:=t; tw:=M; end if;
   _,tw:=Valuation(tw,2); tw:=Numerator(tw)*Denominator(tw);
   tw:=Sign(tw)*&*[Z|f[1]^(f[2] mod 2) : f in Factorization(tw)];
   return my_minim(ArtinRepresentation(H,u)*ArtRepQuad(tw*t)); end if; end if;
 return get_nonbelyi_art_rep(X,t); end function;

procedure art_rep_check(R,H,t) P:=PrimesInInterval(2,100);
 Q:=Set(P) diff Set(PrimeDivisors(Numerator(t)));
 Q:=Set(Q) diff Set(PrimeDivisors(Denominator(t)));
 if t ne 1 then Q:=Set(Q) diff Set(PrimeDivisors(Numerator(t-1))); end if;
 Q:=Set(Q) diff
    Set(PrimeDivisors(LCM([Denominator(x) : x in H`alpha cat H`beta])));
 Q:=Sort(SetToSequence(Q));
 A:=[EulerFactor(H,t,p) : p in Q]; B:=[EulerFactor(R,p : R:=Z) : p in Q];
 assert A eq B; end procedure;

intrinsic ArtinRepresentation
(X::HypGeomData,t::RngQZElt : Check:=true,Optimize:=true)->ArtRep
{Given a weight 0 hypergeometric motive specialised at t, return the
 corresponding Artin representation (if known). Checks primes up to 100.}
 require t ne 0 and t ne 1: "t must be neither 0 nor 1"; t:=Rationals()!t;
 require X`weight eq 0: "Hypergeometric motive must be weight 0";
 A:=get_art_rep(X,t);
 if Type(A) eq BoolElt then
  require false: "Hypergeometric data not known as an Artin rep"; end if;
 if Optimize then A:=OptimizedRepresentation(A); end if;
 if Check then art_rep_check(A,X,t); end if; return A; end intrinsic;

////////////////////////////////////////////////////////////////////////

AEC:=AssociativeArray(); EC:=EllipticCurve;
AEC[[[2,2],[1,1]]]:=func<a|EC([1,a,a,0,0])>;
AEC[[[3],[1,1]]]:=func<a|EC([1,0,a,0,0])>;
AEC[[[4],[1,1]]]:=func<a|EC([1,0,0,a,0])>;
AEC[[[6],[1,1]]]:=func<a|EC([1,0,0,0,-a])>;
AEC[[[2,2],[3]]]:=func<a|EC([0,-a,-a,0,0])>;
AEC[[[2,2],[4]]]:=func<a|EC([0,-a,0,a,0])>;
AEC[[[2,2],[6]]]:=func<a|EC([0,-a/4,0,a/2,-a/4])>;
AEC[[[3],[4]]]:=func<a|EC([0,0,-a,-a,0])>;
AEC[[[3],[6]]]:=func<a|EC([0,0,0,-3*a,4*a+a^2/4])>;;
AEC[[[4],[6]]]:=func<a|EC([0,0,0,-a,a])>;

function hypergeom_crvell_deg2(X,t) U:=[X`cycA,X`cycB]; V:=[X`cycB,X`cycA];
 if IsDefined(AEC,U) then return AEC[U](1/X`Mvalue/t); end if;
 if IsDefined(AEC,V) then return AEC[V](X`Mvalue*t); end if;
 assert false; end function;

function ec_gen(X,t) F:=Parent(t); P:=PolynomialRing(F); y:=P.1;
 _,d:=IsPrimitive(X); H:=PrimitiveData(X);
 U:=[H`cycA,H`cycB]; V:=[H`cycB,H`cycA];
 if IsDefined(AEC,U) then u:=1/(X`Mvalue*t); FAC:=Factorization(y^d-u);
  if F cmpeq Q then Ks:=[* ext<F|f[1] : DoLinearExtension> : f in FAC *];
  else Ks:=[* ext<F|f[1]> : f in FAC *]; end if;
  Vs:=[* Degree(K) eq 1 select -Coefficient(DefiningPolynomial(K),0)
                         else K.1 : K in Ks *];
  Es:=[* AEC[U](e) : e in Vs *];
 else assert IsDefined(AEC,V); u:=X`Mvalue*t; FAC:=Factorization(y^d-u);
  if F cmpeq Q then Ks:=[* ext<F|f[1] : DoLinearExtension> : f in FAC *];
  else Ks:=[* ext<F|f[1]> : f in FAC *]; end if;
  Vs:=[* Degree(K) eq 1 select -Coefficient(DefiningPolynomial(K),0)
                         else K.1 : K in Ks *];
  Es:=[* AEC[V](e) : e in Vs *]; end if;
 assert assigned Es; return #Es eq 1 select Es[1] else Es; end function;

procedure check_ec(C,H,t) P:=PrimesInInterval(2,50); // curtail deg in Euler?
 if Type(C) ne List then C:=[* C *]; end if; // hack
 Q:=Set(P) diff Set(PrimeDivisors(Numerator(t)));
 Q:=Set(Q) diff Set(PrimeDivisors(Denominator(t)));
 if t ne 1 then Q:=Set(Q) diff Set(PrimeDivisors(Numerator(t-1))); end if;
 Q:=Set(Q) diff
    Set(PrimeDivisors(LCM([Denominator(x) : x in H`alpha cat H`beta])));
 Q:=Sort(SetToSequence(Q));
 A:=[EulerFactor(H,t,p) : p in Q]; B:=[&*[EulerFactor(c,p) : c in C] : p in Q];
 assert A eq B; end procedure;

intrinsic EllipticCurve(X::HypGeomData,t::RngQZElt : Check:=false) -> CrvEll
{Given suitable hypergeometric data (of weight 1 and imprimitivity=degree/2),
 return the associated elliptic curve specialized at t.
 Returns a list of curves when the algebra splits.}
 require t ne 0 and t ne 1: "t must be neither 0 nor 1"; t:=Rationals()!t;
 require Weight(X) eq 1: "Weight must be 1"; _,g:=IsPrimitive(X);
 require Degree(X) eq 2*g: "Imprimitivity must be half the degree";
 if Degree(X) eq 2 and Weight(X) eq 1 then E:=hypergeom_crvell_deg2(X,t);
 else E:=ec_gen(X,t); end if; if Check then check_ec(E,X,t); end if;
 return E; end intrinsic;

intrinsic EllipticCurve(X::HypGeomData) -> CrvEll
{Given suitable hypergeometric data (of weight 1 and imprimitivity=degree/2),
 return the associated elliptic curve (over a function field).}
 require Weight(X) eq 1: "Weight must be 1"; _,g:=IsPrimitive(X);
 require Degree(X) eq 2*g: "Imprimitivity must be half the degree";
 if Degree(X) eq 2 and Weight(X) eq 1 then
  return hypergeom_crvell_deg2(X,FunctionField(Rationals()).1); end if;
 return ec_gen(X,FunctionField(Rationals()).1); end intrinsic;

////////////////////////////////////////////////////////////////////////

intrinsic HyperellipticCurve(S::SeqEnum) -> CrvHyp
{Given a sequence of coefficients, construct a hyperelliptic curve}
 return HyperellipticCurve(Polynomial(Reverse(S))); end intrinsic;

procedure check_hc(C,H,t) P:=PrimesInInterval(2,50);
 Q:=Set(P) diff Set(PrimeDivisors(Numerator(t)));
 Q:=Set(Q) diff Set(PrimeDivisors(Denominator(t)));
 if t ne 1 then Q:=Set(Q) diff Set(PrimeDivisors(Numerator(t-1))); end if;
 Q:=Set(Q) diff
    Set(PrimeDivisors(LCM([Denominator(x) : x in H`alpha cat H`beta])));
 Q:=Sort(SetToSequence(Q));
 A:=[EulerFactor(H,t,p) : p in Q]; B:=[EulerFactor(C,p) : p in Q];
 assert A eq B; end procedure;

procedure mf_elt_check(f,H,t) P:=PrimesInInterval(2,100);
 Q:=Set(P) diff Set(PrimeDivisors(Numerator(t)));
 Q:=Set(Q) diff Set(PrimeDivisors(Denominator(t)));
 if t ne 1 then Q:=Set(Q) diff Set(PrimeDivisors(Numerator(t-1))); end if;
 Q:=Set(Q) diff
    Set(PrimeDivisors(LCM([Denominator(x) : x in H`alpha cat H`beta])));
 Q:=Sort(SetToSequence(Q));
 L:=LSeries(f); B:=[EulerFactor(L,p) : p in Q];
 A:=[EulerFactor(H,t,p) : p in Q]; assert A eq B; end procedure;

AHC:=AssociativeArray(); HC:=HyperellipticCurve;

AHC[[[3,6],[1,1,4]]]:=func<a|HC([1,2,1,0,0,0,-4*a])>;
AHC[[[5],[1,1,4]]]:=func<a|HC([1,2,1,0,0,-4*a,-4*a])>;
AHC[[[8],[1,1,3]]]:=func<a|HC([4,1,0,0,4*a,0])>;
AHC[[[5],[1,1,3]]]:=func<a|HC([1,2,1,0,0,4*a,0])>;
AHC[[[4,4],[1,1,3]]]:=func<a|HC([4,1,8*a,0,4*a^2,0])>;
AHC[[[2,2,4],[1,1,3]]]:=func<a|HC([1,2,1,0,4*a,4*a,0])>;
AHC[[[5],[1,1,2,2]]]:=func<a|HC([4,1,0,-2*a,0,a^2])>;
AHC[[[3,4],[1,1,2,2]]]:=func<a|HC([4,1,-4*a,-2*a,0,a^2])>;
AHC[[[5],[8]]]:=func<a|HC([1,4,0,0,0,-4*a,0])>;
AHC[[[5],[3,6]]]:=func<a|HC([1,0,0,0,0,-4*a,4*a])>;
AHC[[[5],[2,2,6]]]:=func<a|HC([4,0,0,-4*a,0,a^2])>;
AHC[[[3,3],[2,2,6]]]:=func<a|HC([1,4,0,-2*a,-4*a,0,a^2])>;
AHC[[[4,4],[5]]]:=func<a|HC([4,0,-8*a,0,4*a^2,a^2])>;
AHC[[[3,4],[5]]]:=func<a|HC([4,0,-4*a,0,0,a^2])>;
AHC[[[2,2,4],[5]]]:=func<a|HC([1,0,0,0,-4*a,4*a,0])>;
AHC[[[3,3],[5]]]:=func<a|HC([1,4,0,-2*a,0,0,a^2])>;
AHC[[[3,3],[2,2,4]]]:=func<a|HC([1,0,0,2*a,-4*a,0,a^2])>;
AHC[[[3,3],[1,1,2,2]]]:=func<a|HC([1,2,1,2*a,-2*a,0,a^2 ])>;
AHC[[[8],[1,1,4]]]:=func<a|HC([4,1,0,0,-16*a,-4*a])>;
AHC[[[4,6],[1,1,3]]]:=func<a|HC([4/a,0,-16,1,0,-4*a])>;
AHC[[[2,2,6],[1,1,3]]]:=func<a|HC([4,1,0,16*a,4*a,0])>;
AHC[[[5],[10]]]:=func<a|HC([1,2,0,0,0,a/8,a/4])>;

ATC:=AssociativeArray();
ATC[[[2,2,4],[3,6]]]:=func<t|-t>;
ATC[[[2,2,4],[10]]]:=func<t|-5*t>;
ATC[[[2,2,6],[8]]]:=func<t|-3*t>;
ATC[[[2,2,6],[10]]]:=func<t|-15*t>;
ATC[[[4,4],[2,2,6]]]:=func<t|-3*t>;
ATC[[[2,2,6],[1,1,4]]]:=func<t|3*t>;
ATC[[[10],[1,1,2,2]]]:=func<t|5*t>;
ATC[[[4,6],[1,1,2,2]]]:=func<t|3*t>;
ATC[[[8],[10]]]:=func<t|5*t>;
ATC[[[3,6],[10]]]:=func<t|5*t>;
ATC[[[10],[1,1,3]]]:=func<t|-15*t>;
ATC[[[6,6],[1,1,3]]]:=func<t|-3*t>;
ATC[[[4,4],[10]]]:=func<t|5*t>;
ATC[[[4,6],[10]]]:=func<t|15*t>;
ATC[[[10],[1,1,4]]]:=func<t|-5*t>;
ATC[[[6,6],[10]]]:=func<t|5*t>;
ATC[[[6,6],[1,1,4]]]:=func<t|-t>;
ATC[[[6,6],[1,1,2,2]]]:=func<t|t>;
ATC[[[2,2,4],[8]]]:=func<t|-t>;
ATC[[[3,4],[2,2,6]]]:=func<t|-t>;

function hyperell_curve(X,t) U:=[X`cycA,X`cycB]; V:=[X`cycB,X`cycA];
 if IsDefined(AHC,U) then return AHC[U](1/X`Mvalue/t); end if;
 if IsDefined(AHC,V) then return AHC[V](X`Mvalue*t); end if;
 if IsDefined(ATC,U) then
  return QuadraticTwist(hyperell_curve(Twist(X),t),ATC[U](t)); end if;
 if IsDefined(ATC,V) then
  return QuadraticTwist(hyperell_curve(Twist(X),t),ATC[V](t)); end if;
 return false; end function;

intrinsic HyperellipticCurve(H::HypGeomData) -> CrvHyp
{Given suitable hypergeometric data, return the associated
 hyperelliptic curve (over a function field). If not known, return false.}
 require Degree(H) eq 4 and Weight(H) eq 1: "Degree must be 4 and weight 1";
 t:=FunctionField(Rationals()).1; return hyperell_curve(H,t); end intrinsic;

intrinsic HyperellipticCurve
  (H::HypGeomData,t::RngQZElt : Check:=true) -> CrvHyp
{Given suitable hypergeometric data, return the associated
 hyperelliptic curve at t. If not known, return false.}
 require Degree(H) eq 4 and Weight(H) eq 1: "Degree must be 4 and weight 1";
 require t ne 0 and t ne 1: "t must be neither 0 nor 1"; t:=Rationals()!t;
 C:=hyperell_curve(H,t); if Type(C) eq BoolElt then return false; end if;
 if Check then check_hc(C,H,t); end if; return C; end intrinsic;

function identify_it(H,t)
 if t eq 1 then return identify_t1(H); end if;
 if Weight(H) gt 1 then return false; end if;
 if Weight(H) eq 0 then return get_art_rep(H,t); end if; // Minimize?
 if Weight(H) eq 1 then _,g:=IsPrimitive(H);
  if 2*g eq Degree(H) then return EllipticCurve(H,t); end if;
  if Degree(H) ne 4 then return false; end if;
  T:=HyperellipticCurve(H,t); return T; end if; end function;

intrinsic Identify(H::HypGeomData,t::RngQZElt : Check:=false) -> Any
{Try to identify hypergeometric data at a given t as an associated object.
 Returns false if unable.}
 require t ne 0: "t must not be 0"; t:=Rationals()!t; O:=identify_it(H,t);
 if Type(O) eq BoolElt then return false; end if;
 if not Check then return O; end if; 
 if Type(O) eq CrvEll then check_ec(O,H,t); end if;
 if Type(O) eq CrvHyp then check_hc(O,H,t); end if;
 if Type(O) eq ArtRep then art_rep_check(O,H,t); end if;
 if Type(O) eq ModFrmElt then mf_elt_check(O,H,t); end if;
 return O; end intrinsic;

////////////////////////////////////////////////////////////////////////

function hgm_curve(X,t) G:=[x: x in GammaList(X)];
 F:=FieldOfFractions(Parent(t)); A:=AffineSpace(F,2); x:=A.1; y:=A.2;
 u:=1/(MValue(X)*t); if #G gt 6 then return false; end if;
 if #G eq 4 then
  if Sign(G[4]) ne Sign(G[1]) then G:=[Abs(x) : x in G]; assert G[4] gt 0;
   f:=x^G[1]*y^G[2]*(1-x-y)^G[3]-u; return Curve(A,f); end if;
  G:=[Abs(x) : x in G]; f:=x^G[4]*(1-x)^G[1]-y^G[3]*(1-y)^G[2]*u;
  return Curve(A,f); end if;
 for i in [1..5],j in [i+1..5] do
  if G[i]+G[j]+G[#G] eq 0 then ei:=G[i]; ej:=G[j];
   a:=Abs(G[i]); b:=Abs(G[j]); s1:=Sign(G[#G]);
   Exclude(~G,ei); Exclude(~G,ej); Exclude(~G,G[#G]);
   c:=Abs(G[1]); d:=Abs(G[2]); s2:=Sign(G[3]);
   if s1 eq -1 then assert s2 eq +1;
    f:=x^c*(1-x)^d-y^a*(1-y)^b*u; return Curve(A,f); end if;
   if s2 eq -1 then
    f:=x^a*(1-x)^b-y^c*(1-y)^d*u; return Curve(A,f); end if;
   f:=x^a*(1-x)^b*y^c*(1-y)^d-u; return Curve(A,f); end if; end for;
 return false; end function;

function canonical_scheme(X,t)
 G:=X`Glist; Gn:=[-x : x in G | x lt 0]; Gp:=[x : x in G | x gt 0];
 A:=AffineSpace(Parent(t),#Gp+#Gn);
 f1:=&+[A.i : i in [1..#Gn]]-1; f2:=&+[A.(#Gn+i) : i in [1..#Gp]]-1;
 f3:=&*[A.i^Gn[i] : i in [1..#Gn]]-
     &*[A.(#Gn+i)^Gp[i] : i in [1..#Gp]]/MValue(X)/t;
 return Scheme(A,[f1,f2,f3]); end function;

intrinsic CanonicalCurve(X::HypGeomData) -> Crv
{Returns a canonical plane curve (possibly reducible) associated to 
 the given hypergeometric data, or false if this is not possible}
 return hgm_curve(X,FunctionField(Rationals()).1); end intrinsic;

intrinsic CanonicalCurve(X::HypGeomData,t::RngQZElt) -> Crv
{Returns a canonical plane curve (possibly reducible) associated to 
 the given hypergeometric data specialised at t,
 or false if this is not possible}
 return hgm_curve(X,Rationals()!t); end intrinsic;

intrinsic CanonicalScheme(X::HypGeomData) -> Sch
{The canonical scheme associated to given hypergeometric data,
 returned over a function field}
 return canonical_scheme(X,FunctionField(Rationals()).1); end intrinsic;

intrinsic CanonicalScheme(X::HypGeomData,t::RngQZElt) -> Sch
{The canonical scheme associated to given hypergeometric data,
  specialized at a rational t.}
 return canonical_scheme(X,Rationals()!t); end intrinsic;
