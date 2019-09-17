freeze;

/* The totally positive case is based on stuff with Gael Collinet */
/* The Lorentzian case comes from Gael Collinet more completely */

// maps between lattices ?

////////////////////////////////////////////////////////////////////////

declare type LatNF[LatNFElt];
declare attributes LatNF : BM,IP,GRAM,K,Js,GenusSymbols; // IP can be unknown
declare attributes LatNFElt : vec,coord,parent;

declare type ProcPL;
declare attributes ProcPL: a, v, dim, depth;

// convex hull

////////////////////////////////////////////////////////////////////////

intrinsic Hash(x::LatNFElt) -> RngIntElt {hash}
 return Hash(x`vec); end intrinsic;

function new_nf_lat_elt(L,cv)
 E:=Eltseq(cv); assert &and[E[j] in L`Js[j] : j in [1..#E]];
 ans:=New(LatNFElt); ans`coord:=cv; ans`vec:=cv*L`BM;
 ans`parent:=L; return ans; end function;

intrinsic Print(v::LatNFElt,level::MonStgElt) {Print number field lattice elt}
 printf "%o",v`vec; return; end intrinsic;

intrinsic Parent(v::LatNFElt) -> LatNF {parent lattice}
 return v`parent; end intrinsic;

intrinsic 'in'(v::ModTupRngElt,L::LatNF) -> BoolElt,ModTupFldElt
{Determine if a vector is in a number field lattice, and if so the coordinates}
 try v:=ChangeRing(v,L`K);
 catch err; require false: "Vector doesn't coerce into lattice field"; end try;
 require Degree(L) eq Degree(v): "Vector and lattice must have same degree";
 b,sol:=IsConsistent(L`BM,v); if not b then return b,_; end if;
 E:=Eltseq(sol); b:=&and[E[i] in L`Js[i] : i in [1..#E]];
 return b,sol; end intrinsic;

intrinsic IsIdentical(A::LatNF,B::LatNF) -> BoolElt
{Whether two number fields lattices are equal
(same basis, Gram, and ideals, and inner product if applicable)}
 return A`K eq B`K and Degree(A) eq Degree(B) and Rank(A) eq Rank(B)
        and A`BM eq B`BM and A`GRAM eq B`GRAM and A`IP eq B`IP
        and A`Js eq B`Js; end intrinsic;

intrinsic 'in'(v::LatNFElt,L::LatNF) -> BoolElt,ModTupFldElt
{Determine if a lattice element is in a number field lattice}
 if IsIdentical(Parent(v),L) then return true,v`coord; end if;
 return 'in'(v`vec,L); end intrinsic;

intrinsic IsCoercible(L::LatNF,e::.) -> BoolElt,LatNFElt {coerce}
 if Type(e) eq LatNFElt then return IsCoercible(L,Eltseq(e`vec)); end if;
 if ISA(Type(e), ModTupRngElt) then return IsCoercible(L,Eltseq(e)); end if;
 if Type(e) eq SeqEnum then
  if #e ne Degree(L) then return false,"Illegal coercion"; end if;
  try e:=ChangeUniverse(e,L`K); e:=Vector(e);
  catch err; return false,"Illegal coercion"; end try;
  b,coord:='in'(e,L); if not b then return false,"Illegal coercion"; end if;
  return true,new_nf_lat_elt(L,coord); end if;
 return false,"Illegal coercion"; end intrinsic;

intrinsic '.'(L::LatNF,i::RngIntElt) -> LatNFElt
{The ith generator of the basis of a number field lattice}
 require i ge 0 and i le Nrows(L`BM): "Second argument not in required range";
 require i eq 0 or IsOne(L`Js[i]): "The ith ideal is not trivial";
 e:=new_nf_lat_elt // works for i eq 0 also!
    (L,Vector([L`K | j eq i select 1 else 0 : j in [1..Rank(L)]]));
 return e; end intrinsic;

intrinsic CoordinatesToLattice(L::LatNF,S::SeqEnum) -> LatNFElt
{Given suitable coordinates on the pseudobasis, construct the lattice vector}
 try S:=ChangeUniverse(S,L`K); require #S eq Rank(L): "Sequence length wrong";
 catch e; require false: "Cannot coerce sequence into number field"; end try;
 v:=Vector(S)*L`BM; require IsCoercible(L,v): "Coordinates are not in lattice";
 return L!v; end intrinsic;

intrinsic CoordinatesToLattice(L::LatNF,v::ModTupFldElt) -> LatNFElt
{Given suitable coordinates on the pseudobasis, construct the lattice vector}
 return CoordinatesToLattice(L,Eltseq(v)); end intrinsic;

intrinsic '+'(v::LatNFElt,w::LatNFElt) -> LatNFElt {add}
 require IsIdentical(Parent(v),Parent(w)): "Vectors must have same Parent";
 return new_nf_lat_elt(Parent(v),v`coord+w`coord); end intrinsic;

intrinsic '-'(v::LatNFElt,w::LatNFElt) -> LatNFElt {subtract}
 require IsIdentical(Parent(v),Parent(w)): "Vectors must have same Parent";
 return new_nf_lat_elt(Parent(v),v`coord-w`coord); end intrinsic;

intrinsic '-'(v::LatNFElt) -> LatNFElt {negate}
 return new_nf_lat_elt(Parent(v),-v`coord); end intrinsic;

intrinsic '/'(v::LatNFElt,s:RngElt) -> LatNFElt {scalar division}
 require s ne 0: "Cannot divide by zero"; return '*'(v,1/s); end intrinsic;

intrinsic '*'(s::Any,v::LatNFElt) -> LatNFElt {scalar multiply}
 require ISA(Type(s),RngElt): "Invalid type in mult"; L:=Parent(v);
 require IsCoercible(L`K,s): "Element must coerce into lattice field";
 s:=(L`K)!s; b,coord:='in'(s*v`vec,L);
 require b: "Illegal scalar multiplication (result not in lattice)";
 return new_nf_lat_elt(L,coord); end intrinsic;

intrinsic '*'(T::Mtrx,v::LatNFElt) -> LatNFElt {basis transformation}
 require Nrows(T) eq Ncols(T): "Transformation matrix must be square";
 require Determinant(T) ne 0: "Transformation must be invertible";
 L:=Parent(v); require Nrows(T) eq Nrows(L`BM): "Matrix size != basis size";
 try T:=ChangeRing(T,L`K); b,coord:='in'(v`coord*T*L`BM,L);
 catch e; require false: "Element must coerce into lattice field"; end try;
 require b: "Illegal scalar multiplication (result not in lattice)";
 return new_nf_lat_elt(L,coord); end intrinsic;

intrinsic '*'(v::LatNFElt,s::Any) -> LatNFElt {scalar multiply}
 require ISA(Type(s),RngElt): "Invalid type in mult"; L:=Parent(v);
 require IsCoercible(L`K,s): "Ring element must coerce into lattice field";
 return s*v; end intrinsic;

intrinsic '*'(v::LatNFElt,T::Mtrx) -> LatNFElt {ambient transform}
 require Nrows(T) eq Ncols(T): "Transformation matrix must be square";
 L:=Parent(v); require Degree(L) eq Nrows(T): "Vector/matrix not same degree";
 require Determinant(T) ne 0: "Transformation must be invertible"; // hackish
 try T:=ChangeRing(T,L`K);  w:=Vector(v)*T;
 catch e; require false: "Matrix must coerce into lattice field";  end try;
 require IsCoercible(L,w): "Resulting vector must be in lattice";
 return L!w; end intrinsic;

////////////////////////////////////////////////////////////////////////

intrinsic '^'(v::LatNFElt,M::Mtrx) -> Setq[LatNFElt] {group action}
 require Nrows(M) eq Ncols(M): "Matrix must be square";
 try L:=Parent(v); M:=ChangeRing(M,L`K);
 catch err; require false: "Matrix must coerce into lattice field"; end try;
 require Rank(L) eq Nrows(M): "Rank of matrix not number of rows of matrix";
 w:=v`coord*M*L`BM; b,w:=IsCoercible(L,w);
 require b: "Matrix must map v to a lattice element"; return w; end intrinsic;

intrinsic '^'(v::LatNFElt,g::GrpMatElt) -> Setq[LatNFElt] {group action}
 return v^Matrix(g); end intrinsic;

intrinsic '^'(S::Setq[LatNFElt],g::GrpMatElt) -> Setq {orbit of group action}
 M:=Matrix(g); return {v^M : v in S}; end intrinsic; // could be more efficient

intrinsic '^'(E::SeqEnum[LatNFElt],g::GrpMatElt) -> SeqEnum {grp action orbit}
 M:=Matrix(g); return [v^M : v in E]; end intrinsic; // could be more efficient

function orbit_stab(G,v,f) // from MyStabGens package/Group/GrpMat/GLConjugate
 n:=Ngens(G); O:={@ v @}; P:=[Id(G)]; S:=[]; i:=0;
 while i lt #O do i:=i+1;
  for j in [1..n] do x:=P[i]*G.j; vx:=f(x,v); k:=Index(O,vx);
   if k eq 0 then Include(~O,vx); Append(~P,x);
   else x:=x*P[k]^(-1); assert f(x,v) eq v;
    if not IsOne(x) and x notin S and x^(-1) notin S then Append(~S,x); end if;
    end if; end for; end while; return O,S; end function;
 
intrinsic Stabilizer(G::GrpMat,S::Setq[LatNFElt]) -> GrpMat {stabilizer}
 orb,stab:=orbit_stab(G,S,func<x,v|v^x>); return sub<G|stab>; end intrinsic;

intrinsic Orbit(G::GrpMat,S::Setq[LatNFElt]) -> Setq {group action on sets}
 orb,stab:=orbit_stab(G,S,func<x,v|v^x>); return orb; end intrinsic;

intrinsic '^'(S::Setq[LatNFElt],G::GrpMat) -> Setq {group action orbit on sets}
 orb,stab:=orbit_stab(G,S,func<x,v|v^x>); return orb; end intrinsic;

intrinsic Stabilizer(G::GrpMat,E::SeqEnum[LatNFElt]) -> GrpMat {stabilizer}
 orb,stab:=orbit_stab(G,E,func<x,v|v^x>); return sub<G|stab>; end intrinsic;

intrinsic Orbit(G::GrpMat,E::SeqEnum[LatNFElt]) -> Setq {group action on sets}
 orb,stab:=orbit_stab(G,E,func<x,v|v^x>); return orb; end intrinsic;

intrinsic '^'(E::SeqEnum[LatNFElt],G::GrpMat) -> Setq {grp action on seq}
 orb,stab:=orbit_stab(G,E,func<x,v|v^x>); return orb; end intrinsic;

intrinsic Stabilizer(G::GrpMat,v::LatNFElt) -> GrpMat {stabilizer}
 orb,stab:=orbit_stab(G,v,func<x,v|v^x>); return sub<G|stab>; end intrinsic;

intrinsic Orbit(G::GrpMat,v::LatNFElt) -> Setq[LatNFElt] {orbit}
 orb,stab:=orbit_stab(G,v,func<x,v|v^x>); return orb; end intrinsic;

intrinsic '^'(v::LatNFElt,G::GrpMat) -> Setq[LatNFElt] {orbit of group action}
 orb,stab:=orbit_stab(G,v,func<x,v|v^x>); return orb; end intrinsic;

////////////////////////////////////////////////////////////////////////

intrinsic 'eq'(v::LatNFElt,w::LatNFElt) -> BoolElt
{Whether two number field lattice vectors are equal}
 require IsIdentical(Parent(v),Parent(w)): "Vectors must have same Parent";
 return v`coord eq w`coord; end intrinsic;

intrinsic 'ne'(v::LatNFElt,w::LatNFElt) -> BoolElt
{Whether two number field lattice vectors are not equal}
 require IsIdentical(Parent(v),Parent(w)): "Vectors must have same Parent";
 return v`coord ne w`coord; end intrinsic;

intrinsic IsZero(v::LatNFElt) -> BoolElt
{Whether a number field lattice vector is zero}
 return IsZero(v`coord); end intrinsic;

intrinsic InnerProduct(v::LatNFElt,w::LatNFElt) -> FldElt
{The inner product of two number field lattice vectors}
 require IsIdentical(Parent(v),Parent(w)): "Vectors must have same Parent";
 a:=Eltseq(v`coord*PseudoGramMatrix(Parent(v))); b:=Eltseq(w`coord);
 return &+[a[i]*b[i] : i in [1..#a]];  end intrinsic;

intrinsic Norm(v::LatNFElt) -> FldElt
{The norm of a number field lattice vector}
 return InnerProduct(v,v); end intrinsic;

intrinsic Vector(v::LatNFElt) -> ModTupFldElt
{The underlying (ambient) vector of a number field lattice vector}
 return Vector(v`vec); end intrinsic;

intrinsic Eltseq(v::LatNFElt) -> SeqEnum
{The underlying (ambient) vector of a number field lattice vector}
 return Eltseq(v`vec); end intrinsic;

intrinsic Coordinates(v::LatNFElt) -> ModTupFldElt
{The coordinates of a given number field lattice vector, in terms of the basis}
 return v`coord; end intrinsic;

////////////////////////////////////////////////////////////////////////

intrinsic Module(L::LatNF : IP:=true) -> ModDed
{Given a number field lattice, return the corresponding Dedekind module}
 require not IP or L`IP ne 0: "The ambient inner product must be known";
 O:=Integers(L`K); F:=FieldOfFractions(O);
 if Nrows(L`BM) eq 0 then M:=Module(Rows(Matrix(O,0,Degree(L),[])));
  if IP then ChangeInnerProduct(~M,ChangeRing(L`IP,F)); end if;
  return M; end if;
 d:=LCM([d where _,d:=IsIntegral(e) : e in Eltseq(L`BM)]);
 B:=ChangeRing(L`BM*d,O); M:=Module([<L`Js[i]/d,B[i]> : i in [1..#L`Js]]);
 if IP then ChangeInnerProduct(~M,ChangeRing(L`IP,F)); end if;
 return M; end intrinsic;

function new_nf_lat(BM,GM : IP:=0,Js:=[]) BR:=BaseRing(BM);
 assert BR eq BaseRing(GM); assert ISA(Type(BR),FldNum);
 if not IsAbsoluteField(BR) then
  "WARNING: moving lattice to absolute number field extension";
  A:=AbsoluteField(BR); BM:=ChangeRing(BM,A); GM:=ChangeRing(BM,A);
  if IP ne 0 then IP:=ChangeRing(BM,A); end if;
  Js:=[ideal<Integers(A)|[A!a : a in Generators(J)]> : J in Js];
  return new_nf_lat(BM,GM : IP:=IP,Js:=Js); end if;
 L:=New(LatNF); L`K:=BaseRing(BM); O:=Integers(L`K);
 if #Js eq 0 then Js:=[Parent(1*O) | 1*O : i in [1..Nrows(BM)]]; end if;
 L`BM:=BM; L`GRAM:=Matrix(GM); L`IP:=IP; L`Js:=Js;
 if IP ne 0 then assert BM*IP*Transpose(BM) eq GM; end if;
 return L; end function;

intrinsic NumberFieldLattice
(K::FldNum,d::RngIntElt : Gram:=IdentityMatrix(K,d)) -> LatNF
{The standard d-dimensional lattice over a number field,
 with the inner product matrix being given by the optional argument Gram}
 require IsCoercible(MatrixAlgebra(K,d),Gram):
 "Gram matrix must be d-by-d and coerce into K"; Gram:=ChangeRing(Gram,K);
 require IsSymmetric(Gram): "Gram matrix must be symmetric";
 require Determinant(Gram) ne 0: "Gram matrix must be invertible";
 return new_nf_lat(IdentityMatrix(K,d),Gram : IP:=Gram); end intrinsic;

intrinsic NumberFieldLatticeWithGram(F::Mtrx) -> LatNF
{The free lattice with Gram matrix F over a number field}
  require Ncols(F) eq Nrows(F) and IsSymmetric(F): "Matrix must be symmetric";
  R:= BaseRing(F); T:= Type(R);
  if ISA(T, RngOrd) then F:= ChangeRing(F, NumberField(R));
  elif ISA(T, FldOrd) then F:= ChangeRing(F, NumberField(Integers(R)));
  else require ISA(T, FldNum) : "Matrix must be over a number field"; end if;
  require Determinant(F) ne 0 : "The Gram matrix must be regular";
  return new_nf_lat(IdentityMatrix(BaseRing(F), Ncols(F)), F : IP:= F);
end intrinsic;

intrinsic NumberFieldLattice(D::ModDed) -> LatNF
{Given a Dedekind module, return the corresponding number field lattice}
 require not InternalDedModHasDenom(D):
 "The Dedekind module has a denominator, and is likely not torsionfree";
 Q:=PseudoMatrix(D); K:=NumberField(BaseRing(D));
 BM:=ChangeRing(Matrix(Q),K); IPM:=ChangeRing(InnerProductMatrix(D),K);
 GM:=BM*IPM*Transpose(BM);
 X:=new_nf_lat(BM,GM : IP:=IPM,Js:=CoefficientIdeals(Q));
 if IsFree(X) then X:=SimpleLattice(X); end if; return X; end intrinsic;

intrinsic NumberFieldLattice
(S::SeqEnum[ModTupFldElt] :
 InnerProduct:=0,Gram:=0,Ideals:=[],Independent:=false)-> LatNF
{Determine a number field lattice from vectors over a number field}
 U:=Universe(S); K:=BaseRing(U); deg:=Degree(U); IP:=InnerProduct;
 M:=Matrix(S); r:=Rank(M); O:=Integers(K); F:=FieldOfFractions(O);
 require ISA(Type(K),FldNum): "Vectors must be over a number field";
 if #Ideals eq 0 then Ideals:=[Parent(1*O) | 1*O : i in [1..#S]]; end if;
 require #Ideals eq #S: "Number of ideals must equal nunmber of vectors";
 require &and[not IsZero(j) : j in Ideals]: "Ideals cannot be zero";
 require NumberField(Ring(Universe(Ideals))) eq K:
  "The number field for the ideals and the vectors must be same";
 if IP eq 0 and Gram eq 0 then IP:=IdentityMatrix(K,deg); end if;
 if IP ne 0 then require Nrows(IP) eq deg and Ncols(IP) eq Nrows(IP):
  "Inner product must be square with same degree as the vectors"; end if; 
 if IP ne 0 and Gram ne 0 then require Gram eq M*IP*Transpose(M):
  "Both Gram and inner product given and not coherent"; end if;
 if IP ne 0 then Gram:=M*IP*Transpose(M); end if;
 require IP eq 0 or Determinant(IP) ne 0: "Inner product must be invertible";
 require Nrows(Gram) eq #S and Ncols(Gram) eq #S:
 "Gram matrix must be square and same degree as the number of basis elements";
 try Gram:=ChangeRing(Gram,K);
  catch e; require false: "Gram matrix must coerce into number field"; end try;
 if r eq Nrows(M) then // case of independent rows
  require Determinant(Gram) ne 0: "Gram matrix must have nonzero determinant";
  return new_nf_lat(M,Gram : IP:=IP,Js:=Ideals); end if;
 require not Independent: "Vectors must be independent"; // non-independent
 d:=LCM([d where _,d:=IsIntegral(e) : e in Eltseq(M)]);
 B:=ChangeRing(M*d,O); X:=Module([<Ideals[i]/d,B[i]> : i in [1..#S]]);
 if IP ne 0 then ChangeInnerProduct(~X,ChangeRing(IP,F)); // inner prod given
  return NumberFieldLattice(X); end if;
 U:=NumberFieldLattice(X); C:=Solution(M,U`BM);
 u:=Nrows(U`BM); Z:=Gram; g:=Nrows(Z);
 G:=Matrix(u,u,[&+[E[k]*C[j][k] :k in [1..g]] where E:=C[i]*Z :i,j in [1..u]]);
 require Determinant(G) ne 0: "The pseudoGram matrix must be invertible";
 X:=new_nf_lat(U`BM,G : Js:=U`Js); S:=Solution(U`BM,M);
 b:=&and[(S[i]*G*Transpose(Matrix(S[j])))[1] eq Gram[i][j] : i,j in [1..g]];
 require b: "The Gram matrix is inconsistent on the given dependent vectors";
 return X; end intrinsic;

// allow a sequence of LatNFElt's ? no, that can use sub<>

////////////////////////////////////////////////////////////////////////

intrinsic Print(L::LatNF,level::MonStgElt) {Print number field lattice}
 printf "Number field lattice over %o",L`K;
 SB:=(Nrows(L`BM) eq Ncols(L`BM)) and L`BM eq 1;
 STR:=IsSimple(L) select "" else "pseudo";
 if Nrows(L`BM) eq Ncols(L`BM) and L`BM eq 1
  then printf " of degree %o in standard basis",Degree(L);
 else printf " with %obasis matrix\n%o",STR,L`BM; end if;
 if L`IP ne 0 and L`IP ne 1 then printf "\nand inner product matrix\n%o",L`IP;
 elif L`IP eq 0 and ((not SB) or L`GRAM ne 1) then
      printf "\nand %oGram matrix\n%o",STR,L`GRAM; end if;
 if not &and[J eq 1*Integers(L`K) : J in L`Js] then
  printf "\nand coefficient ideals\n%o",L`Js; end if; return; end intrinsic;

/*
intrinsic SubConstr(L::LatNF,E::SeqEnum) -> LatNF, Map {sub}
 require #E eq 0: "Generic sequence must be empty in sub<> of LatNF";
 M:=Matrix(L`K,0,Degree(L),[]); G:=Matrix(L`K,0,0,[]);
 return new_nf_lat(M,G : IP:=L`IP),_; end intrinsic;

intrinsic SubConstr(L::LatNF,E::SeqEnum[ModTupFldElt]) -> LatNF, Map {sub}
 if #Set(E) ne #E then E:=[e : e in Set(E) | not IsZero(E)]; end if;
 try E:=[ChangeRing(e,L`K) : e in E]; M:=Matrix(E); r:=Nrows(M);
 catch err; require false: "Vectors must coerce into lattice field"; end try;
 if Nrows(L`BM) eq 0 then return L; end if;
 if #E eq 0 then return SubConstr(L,E); end if;
 require &and[e in L : e in E]: "The vectors must be in the lattice";
 if Rank(M) eq r then // given vectors are independent, up to 0 and repeats
  G:=Matrix(r,r,[InnerProduct(L!E[i],L!E[j]) : i,j in [1..r]]);
  X:=new_nf_lat(M,G : IP:=L`IP); return X,_; end if;
 if L`IP ne 0 then // inner product given
  M:=Module(L); S:=sub<M|[M!e : e in E]>; X:=NumberFieldLattice(S);
  if not IsSimple(X) and IsFree(X) then X:=SimpleLattice(X); end if;
  return X,_; end if;
 M:=Module(L : IP:=false); S:=sub<M|[M!e : e in E]>; // create GRAM from data
 Y:=NumberFieldLattice(S); u:=Nrows(Y`BM); g:=Nrows(L`GRAM);
 C:=[c where _,c:='in'(Y`BM[i],L) : i in [1..u]]; // Solution
 G:=[&+[E[k]*C[j][k] : k in [1..g]] where E:=C[i]*L`GRAM : i,j in [1..u]];
 G:=Matrix(u,u,G); X:=new_nf_lat(Y`BM,G : Js:=Y`Js);
 if IsFree(X) then X:=SimpleLattice(X); end if; return X,_; end intrinsic;

intrinsic SubConstr(L::LatNF,E::SeqEnum[LatNFElt]) -> LatNF, Map {sub}
 return SubConstr(L,[e`vec : e in E]); end intrinsic;
*/

function GetGens(V, x)
  ok, y:= IsCoercible(V, x);
  if ok then return ok, [y]; end if;

  if ISA(Type(x), LatNF) then 
    x:= Module(x : IP:= false);
  elif ISA(Type(x), PMat) then
    x:= Module(x); 
  end if;
  if ISA(Type(x), ModDed) then
    x:= Generators(x);
  elif ISA(Type(x), LatNFElt) then
    x:= Vector(x);
  end if;

  if ISA(Type(x), {Setq, List, Tup}) then
    res:= [ ];
    for e in x do
      ok, y:= GetGens(V, e);
      if not ok then return ok, _; end if;
      res cat:= y;
    end for;
    return true, res;
  else
    return false, _;
  end if;
end function;

function MyGram(L, B)
  B:= Matrix(L`K, Matrix(B));
  if L`IP ne 0 then 
    return B * L`IP * Transpose(B);
  end if;
  S:= Solution(L`BM, B);
  return S * L`GRAM * Transpose(S);
end function;

function SetupLatticeInSpace(L, M : Minimal:= false)
  if Minimal then
    BM:= Generators(M : Minimal);
    Minimal:= #BM eq Dimension(M);
  end if;
  if Minimal then
    BM:= Matrix(BaseRing(L), Matrix(BM));
    Js:= [];
  else
    BM:= Matrix(BaseRing(L), BasisMatrix(M));
    Js:= [ x[1]: x in PseudoBasis(M) ];
  end if;
  G:= MyGram(L, BM);
  return new_nf_lat(BM, G : IP:= L`IP, Js:= Js);
end function;

intrinsic SubConstructor(L::LatNF, RHS::Tup) -> LatNF
{The sublattice of L generated by RHS}
  ok, Gens:= GetGens(L, RHS);
  require ok: "Cannot coerce RHS into LHS";
  if IsZero(L) then return L; end if;
  // Check if the given Gens generate a free lattice:
  M:= Matrix( [ EmbeddingSpace(L) | Vector(x) : x in Gens ] );
  if #Gens eq Rank(M) then
    G:= MyGram(L, M);
    return new_nf_lat(M, G: IP:= L`IP);
  else
    FF:= FieldOfFractions(Integers(L`K));
    // should we really activate Minimal?
    return SetupLatticeInSpace(L, Module( Rows(Matrix(FF, M)) ) : Minimal);
  end if;
end intrinsic;

intrinsic ExtConstructor(L::LatNF, RHS::Tup) -> LatNF
{The lattice generated by L and RHS}
  M:= Module(L : IP:= false);
  F:= FieldOfFractions(Integers(L`K));
  ok, Gens:= GetGens(VectorSpace(F, Degree(M)), RHS);
  require ok: "Cannot coerce RHS into LHS";
  if #Gens eq 0 then return L; end if;
  if L`IP cmpeq 0 then
    // It might happen that Gens do not lie in K*L. 
    require IsConsistent(L`BM, Gens) :
      "Cannot increase the rank of the lattice when the inner product is not set";
  end if;
  return SetupLatticeInSpace(L, M + Module(Gens));
end intrinsic;

intrinsic 'eq'(A::LatNF,B::LatNF) -> BoolElt
{Whether two number fields lattices are equal, namely subsets of each other
 respecting the inner product and/or Gram matrix}
 if Degree(A) ne Degree(B) then return false; end if;
 if A`IP ne B`IP then return false; end if;
 if A`K ne B`K then return false; end if;
 return A subset B and B subset A; end intrinsic;

intrinsic 'ne'(A::LatNF,B::LatNF) -> BoolElt
{Whether two number fields lattices are equal
 (same basis, and Gram, and ideals, and inner product if applicable)}
 return not (A eq B); end intrinsic;

////////////////////////////////////////////////////////////////////////

intrinsic '+'(A::LatNF,B::LatNF) -> LatNF
{The addition (join) of two number field lattices}
 require Degree(A) eq Degree(B): "Lattices must have same degree";
 require A`K eq B`K: "Lattices must be over the same number field";
 require A`IP eq B`IP: "Lattices must have same ambient inner product matrix";
 if Rank(A) eq 0 then return B; end if; if Rank(B) eq 0 then return A; end if;
 M:=VerticalJoin(A`BM,B`BM); R:=0; S:=0;
 if A`IP ne 0 then // inner product is known
  if Rank(M) eq Nrows(M) then J:=A`Js cat B`Js; // independent case
   return new_nf_lat(M,M*A`IP*Transpose(M) : IP:=A`IP, Js:=J); end if;
  return NumberFieldLattice(Module(A)+Module(B)); end if;
 if Rank(M) eq Rank(A) then R:=A; S:=B; end if;
 if Rank(M) eq Rank(B) then R:=B; S:=A; end if;
 require R cmpne 0: "Ambient inner product unknown";
 Y:=NumberFieldLattice(Module(A : IP:=false)+Module(B : IP:=false));
 C:=Solution(R`BM,Y`BM); g:=Nrows(R`GRAM); u:=Nrows(C);
 G:=[&+[E[k]*C[j][k] : k in [1..g]] where E:=C[i]*R`GRAM : i,j in [1..u]];
 X:=new_nf_lat(Y`BM,Matrix(u,u,G) : Js:=Y`Js);
 b:=&and[InnerProduct(X!g,X!h) eq InnerProduct(g,h) : g,h in Generators(S)];
 require b: "Given Gram matrices are not consistent"; return X; end intrinsic;

intrinsic 'meet'(A::LatNF,B::LatNF) -> LatNF
{The intersection of two number field lattices}
 require Degree(A) eq Degree(B): "Lattices must have same degree";
 require A`K eq B`K: "Lattices must be over the same number field";
 require A`IP eq B`IP: "Lattices must have same ambient inner product matrix";
 if Rank(A) eq 0 then return A; end if; if Rank(B) eq 0 then return B; end if;
 if IsSublattice(A,B) then return B; end if;
 if IsSublattice(B,A) then return A; end if;
 if A`IP ne 0 then return NumberFieldLattice(Module(A) meet Module(B)); end if;
 M:=Module(A : IP:=false); N:=Module(B : IP:=false);
 X:=NumberFieldLattice(M meet N); u:=Nrows(X`BM);
 sA:=Solution(A`BM,X`BM); gA:=Nrows(A`GRAM);
 sB:=Solution(B`BM,X`BM); gB:=Nrows(B`GRAM);
 GA:=[&+[E[k]*sA[j][k] : k in [1..gA]] where E:=sA[i]*A`GRAM : i,j in [1..u]];
 GB:=[&+[E[k]*sB[j][k] : k in [1..gB]] where E:=sB[i]*B`GRAM : i,j in [1..u]];
 require GA eq GB: "The lattices do not have consistent Gram matrices";
 return new_nf_lat(X`BM,Matrix(u,u,GA) : Js:=X`Js); end intrinsic;

intrinsic DirectSum(A::LatNF,B::LatNF) -> LatNF
{The direct sum of two number field lattices}
 require BaseRing(A) eq BaseRing(B): "Lattices must have same base ring";
 if A`IP ne 0 and B`IP ne 0 then I:=DiagonalJoin(A`IP,B`IP); else I:=0; end if;
 BM:=DiagonalJoin(A`BM,B`BM); G:=DiagonalJoin(A`GRAM,B`GRAM);
 return new_nf_lat(BM,G : IP:=I,Js:=A`Js cat B`Js); end intrinsic;

intrinsic DirectSum(S::SeqEnum[LatNF]) -> LatNF
{The direct sum of a sequence of number field lattices}
 require #S ne 0: "The sequence of number field lattice cannot be empty";
 if #S eq 1 then return S[1]; end if; A:=S[1];
 for i in [2..#S] do A:=DirectSum(A,S[i]); end for; return A; end intrinsic;

intrinsic '*'(T::Mtrx,L::LatNF) -> LatNF
{Transform the coordinates of a number field lattice by the given matrix}
 try T:=ChangeRing(T,BaseRing(L));
 catch e; error "Transformation matrix must coerce into lattice field";end try;
 require Ncols(T) eq Nrows(T): "Transformation matrix must be square";
 require Nrows(T) eq Dimension(L): "Basis must be same size of transform";
 require Determinant(T) ne 0: "Transformation must be invertible";
 if IsSimple(L) then R:=Rows(T*L`BM); G:=T*GramMatrix(L)*Transpose(T);
 else C:=[(v`coord)*T : v in Generators(L)]; r:=Rank(L); g:=#C;
      M:=[&+[W[k]*C[j][k] where W:=C[i]*L`GRAM : k in [1..r]] : i,j in [1..g]];
      G:=Matrix(g,g,M); R:=[c*(L`BM) : c in C]; end if;
 return NumberFieldLattice(R : InnerProduct:=L`IP, Gram:=G); end intrinsic;

intrinsic '*'(TJ::PMat,L::LatNF) -> LatNF
{Multiply the pseudobasis by T and the coefficient ideals by the J sequence}
 K:=NumberField(Order(TJ)); T:=Matrix(TJ); J:=CoefficientIdeals(TJ);
 require K eq L`K: "Fields of pseudomatrix and number field lattice not same";
 require Determinant(T) ne 0: "Transformation must be invertible";
 require Nrows(T) eq Dimension(L): "Basis must be same size of transform";
 if Rank(L) eq 0 then return L; end if; G:=T*PseudoGramMatrix(L)*Transpose(T);
 return new_nf_lat(T*L`BM,G : IP:=L`IP,Js:=[L`Js[i]*J[i] : i in [1..#J]]);
 end intrinsic;

intrinsic '*'(L::LatNF,T::Mtrx) -> LatNF
{Transformation on the ambient vectors of a number field lattice}
 try T:=ChangeRing(T,BaseRing(L));
 catch e; error "Transformation matrix must coerce into lattice field";end try;
 require Ncols(T) eq Nrows(T): "Transformation matrix must be square";
 require Ncols(T) eq Degree(L): "Basis must be same size of transform";
 require Determinant(T) ne 0: "Transformation must be invertible";
 if L`IP ne 0 then R:=GeneratorMatrix(L)*T; // TT:=Transpose(T);
  return NumberFieldLattice(Rows(R) : InnerProduct:=L`IP); end if;
 R:=GeneratorMatrix(L)*T; u:=Nrows(R); g:=Rank(L); b,S:=IsConsistent(L`BM,R);
 require b: "Transformation must retain basis span when inner product unknown";
 G:=[&+[E[k]*S[j][k] : k in [1..g]] where E:=S[i]*L`GRAM : i,j in [1..u]];
 return NumberFieldLattice(Rows(R) : Gram:=Matrix(u,u,G)); end intrinsic;
 // should transform the inner product also?! // don't think so

intrinsic '*'(J::RngOrdFracIdl,L::LatNF) -> LatNF
{Multiply all the fractional ideals of a number field lattice by given ideal}
 require NumberField(Ring(Parent(J))) eq L`K:
 "Ideal and lattice must be over the same number field";
 require not IsZero(J): "The ideal must be nonzero";
 return new_nf_lat(L`BM,L`GRAM : IP:=L`IP,Js:=[J*X : X in L`Js]);
 end intrinsic;

intrinsic '*'(L::LatNF,J::RngOrdFracIdl) -> LatNF
{Multiply all the fractional ideals of a number field lattice by given ideal}
 return J*L; end intrinsic;

intrinsic '*'(s::Any,L::LatNF) -> LatNF
{Given a lattice and a nonzero field element, scale the basis vectors}
 require ISA(Type(s),RngElt): "Invalid type in mult";
 require IsCoercible(L`K,s): "Ring element must coerce into lattice field";
 return BasisScaling(L,s); end intrinsic;

intrinsic '*'(L::LatNF,s::Any) -> LatNF
{Given a lattice and a nonzero field element, scale the basis vectors}
 require ISA(Type(s),RngElt): "Invalid type in mult";
 require IsCoercible(L`K,s): "Ring element must coerce into lattice field";
 return BasisScaling(L,s); end intrinsic;

intrinsic '/'(L::LatNF,s::RngElt) -> LatNF
{Given a lattice and a nonzero field element, scale the basis vectors}
 require IsCoercible(L`K,s): "Ring element must coerce into lattice field";
 require s ne 0: "s cannot be 0"; return BasisScaling(L,1/s); end intrinsic;

intrinsic '/'(L::LatNF,J::RngOrdFracIdl) -> LatNF
{Divide all the fractional ideals of a number field lattice by given ideal}
 require not IsZero(J): "The ideal must be nonzero";
 return (1/J)*L; end intrinsic;

intrinsic BasisScaling(L::LatNF,s::RngElt) -> LatNF
{Given a lattice and a nonzero field element, scale the basis vectors}
 try s:=(L`K)!s; require s ne 0: "s cannot be 0";
 catch e; require false: "Element must coerce into lattice field"; end try;
 return new_nf_lat(s*L`BM,s^2*L`GRAM : IP:=L`IP,Js:=L`Js); end intrinsic;

intrinsic InnerProductScaling(L::LatNF,s::RngElt) -> LatNF
{Given a lattice and a nonzero field element, scale the inner product}
 try s:=(L`K)!s; require s ne 0: "s cannot be 0";
 catch e; require false: "Element must coerce into lattice field"; end try;
 return new_nf_lat(L`BM,s*L`GRAM : IP:=s*L`IP,Js:=L`Js); end intrinsic;

intrinsic MakeAmbientInnerProduct(~L::LatNF,IP::Mtrx)
{Attach the given inner product matrix to a number field lattice}
 require L`IP eq 0: "The lattice already has an ambient inner product";
 try IP:=ChangeRing(IP,L`K); r:=Nrows(IP);
 catch e; require false: "The matrix does not coerce in the field"; end try;
 require r eq Ncols(IP): "Inner product matrix must be square";
 require r eq Degree(L): "Degree of inner product must be same as lattice";
 require L`BM*IP*Transpose(L`BM) eq L`GRAM:
 "The inner product does not induce the known pseudoGram matrix";
 L`IP:=IP; end intrinsic;

////////////////////////////////////////////////////////////////////////

intrinsic Basis(L::LatNF) -> SeqEnum[ModTupFldElt]
{The basis (given as rows) of a simple number field lattice}
 require IsSimple(L): "The number field lattice must be simple";
 return Rows(L`BM); end intrinsic;

intrinsic BasisMatrix(L::LatNF) -> Mtrx
{The matrix of the basis of a simple number field lattice}
 require IsSimple(L): "The number field lattice must be simple";
 return L`BM; end intrinsic;

intrinsic PseudoBasis(L::LatNF) -> SeqEnum[ModTupFldElt]
{The pseudobasis (given as rows) of a number field lattice}
 return Rows(L`BM); end intrinsic;

intrinsic PseudoBasisMatrix(L::LatNF) -> Mtrx
{The matrix of the pseudobasis of a number field lattice}
 return L`BM; end intrinsic;

intrinsic PseudoMatrix(L::LatNF) -> PMat
{The pseudomatrix of a number field lattice}
 return PseudoMatrix(L`Js,L`BM); end intrinsic;

intrinsic CoefficientIdeals(L::LatNF) -> SeqEnum
{The coefficient ideals of a number field lattice}
 return L`Js; end intrinsic;

intrinsic Generators(L::LatNF) -> SeqEnum
{A sequence of generators for a number field lattice}
 if IsSimple(L) then return [L.i : i in [1..Rank(L)]]; end if;
 return ChangeUniverse(Rows(GeneratorMatrix(L)),L); end intrinsic;

intrinsic GeneratorMatrix(L::LatNF) -> SeqEnum
{A matrix whose rows are generators a number field lattice}
 if IsSimple(L) then return Matrix([Vector(L.i) : i in [1..Rank(L)]]); end if;
 return ChangeRing(GeneratorMatrix(Module(L : IP:=false)),L`K); end intrinsic;

intrinsic InnerProductMatrix(L::LatNF) -> Mtrx
{The inner product matrix of a number field lattice (if given)}
 require L`IP ne 0: "Inner product matrix is not known";
 return L`IP; end intrinsic;

intrinsic GramMatrix(L::LatNF) -> Mtrx
{The Gram matrix of a simple number field lattice}
 require IsSimple(L): "The lattice must be given a simple lattice";
 return L`GRAM; end intrinsic;

intrinsic PseudoGramMatrix(L::LatNF) -> Mtrx
{The Gram matrix of the pseudobasis of a number field lattice}
 return L`GRAM; end intrinsic;

intrinsic Rank(L::LatNF) -> RngIntElt
{The rank (dimension) of a number field lattice}
 return Nrows(L`BM); end intrinsic;

intrinsic Dimension(L::LatNF) -> RngIntElt
{The dimension (rank) of a number field lattice}
 return Nrows(L`BM); end intrinsic;

intrinsic Degree(L::LatNF) -> RngIntElt
{The degree of a number field lattice (that is, of its ambient)}
 return Ncols(L`BM); end intrinsic;

intrinsic BaseRing(L::LatNF) -> Rng
{The base ring of a number field lattice}
 return L`K; end intrinsic;

intrinsic Determinant(L::LatNF) -> FldNumElt
{The determinant of a number field lattice, defined up to squares of units}
 if #L`Js eq 0 then return L`K!1; end if;
 require IsFree(L): "The number field lattice must be free";
 return Determinant(GramMatrix(SimpleLattice(L))); end intrinsic;

intrinsic Discriminant(L::LatNF) -> RngOrdFracIdl
{The discriminant ideal of a number field lattice}
 return Determinant(L`GRAM)*(&*[J : J in L`Js])^2; end intrinsic;

intrinsic Volume(L::LatNF) -> RngOrdFracIdl
{The volume of a number field lattice, which is the ideal
 generated by the determinants of all free sublattices}
 return Determinant(L`GRAM)*(&*[J : J in L`Js])^2; end intrinsic;

intrinsic Norm(L::LatNF) -> RngOrdFracIdl // from Markus and David Lorch
{The norm of the lattice L}
 if Rank(L) eq 0 then return ideal<Integers(L`K)|>; end if;
 D:=Diagonal(PseudoGramMatrix(L)); J:=L`Js;
 return &+{D[i]*J[i]^2 : i in [1..#D]} + 2*Scale(L); end intrinsic;

intrinsic Scale(L::LatNF) -> RngOrdFracIdl // from Markus and David Lorch
{The scale of the lattice L}
 if Rank(L) eq 0 then return ideal<Integers(L`K)|>; end if; G:=L`GRAM; J:=L`Js;
 return &+{G[i,j]*J[i]*J[j] : i in [1..j],j in [1..#J] | G[i,j] ne 0};
 end intrinsic;

intrinsic Zero(L::LatNF) -> LatNFElt
{The zero vector of a number field lattice}
 return L.0; end intrinsic;

intrinsic IsZero(L::LatNF) -> BoolElt
{Whether a number field lattice is zero}
 return Rank(L) eq 0; end intrinsic;

intrinsic IsSimple(L::LatNF) -> BoolElt
{Whether all the fractional ideals of a number field lattice are trivial}
 return &and[IsOne(j) : j in L`Js]; end intrinsic;

intrinsic IsFree(L::LatNF) -> BoolElt
{Whether a number field lattice is free}
 return IsFree(Module(L : IP:=false)); end intrinsic;

intrinsic IsFree(M::ModDed) -> BoolElt // from Markus and David Lorch
{Tests if M is a free module}
 return ok where ok:= IsPrincipal(SteinitzClass(M)); end intrinsic;

intrinsic SimpleLattice(L::LatNF) -> LatNF
{Given a free number field lattice, return an equivalent lattice
 with all of its coefficients ideals trivial}
 if &and[IsPrincipal(j) : j in L`Js] then // easy case
  E:=[L`K | e where _,e:=IsPrincipal(j) : j in L`Js]; D:=DiagonalMatrix(E);
  return new_nf_lat(D*L`BM,D*L`GRAM*D : IP:=L`IP); end if;
 require IsFree(L): "Lattice is not free";
 M:=Module(L : IP:=false); P:=SteinitzForm(PseudoMatrix(M));
 B:=ChangeRing(Matrix(P),L`K); J:=CoefficientIdeals(P);
 // assert &and[IsPrincipal(j) : j in J];
 E:=[L`K | e where _,e:=IsPrincipal(j) : j in J];
 D:=DiagonalMatrix(E); B:=D*B; r:=Nrows(B);
 G:=Matrix(r,r,[InnerProduct(L!(B[i]),L!(B[j])) : i,j in [1..r]]);
 R:=new_nf_lat(B,G : IP:=L`IP);
 // assert IsSublattice(L,R) and IsSublattice(R,L);
 return R; end intrinsic;
// SteinitzForm on the module seems insufficient, need on the PMat ...
// ok, the point is that SteinitzForm on the PseudoMatrix
// calls PseudoMatrix on the SteinitzForm(M) *but* with vararg Generators
// I was not using Generators when calling PseudoMatrix

intrinsic Dual(L::LatNF) -> LatNF
{The dual lattice to L}
 if Rank(L) eq 0 then return L; end if;
 GI:=L`GRAM^(-1); R:=GI*L`BM; J:=[J^(-1) : J in L`Js];
return new_nf_lat(R,GI : Js:=J,IP:=L`IP); end intrinsic; // GI^t in general

intrinsic IsModular(L::LatNF) -> BoolElt, RngOrdFracIdl
{Return if L is modular, and if so an ideal such that J*Dual(L) equals L}
 if Rank(L) eq 0 then return true,ideal<L`K|1>; end if; s:=Scale(L);
 if Volume(L) eq s^Rank(L) then return true,s; else return false,_; end if;
 end intrinsic;

function PrimeOK(L, p)
  if BaseRing(L) cmpne NumberField(Order(p)) then
    return false, "Incompatible arguments";
  elif not IsPrime(p) or IsZero(p) then
    return false, "The ideal is not maximal";
  end if;
  return true, "";
end function;

intrinsic IsModular(L::LatNF, p::RngOrdIdl) -> BoolElt, RngIntElt
{If L_p is p^v-modular, return true and v}
  ok, err:= PrimeOK(L, p);
  require ok : err;
  if IsZero(L) then return true, 0; end if;
  v:= Valuation(Scale(L), p);
  if v*Rank(L) eq Valuation(Volume(L), p) then
    return true, v;
  end if;
  return false, _;
end intrinsic;

////////////////////////////////////////////////////////////////////////

function gram_is_totally_positive_definite(G) OrthoGram:=OrthogonalizeGram;
 return &and[IsTotallyPositive(d) : d in Diagonal(OrthoGram(G))]; end function;

intrinsic IsTotallyPositiveDefinite(L::LatNF) -> BoolElt
{Whether a number field lattice is totally positive definite}
 return IsTotallyReal(L`K) and gram_is_totally_positive_definite(L`GRAM);
end intrinsic;

intrinsic IsDefinite(L::LatNF) -> BoolElt, RngOrdElt
{Whether a number field lattice is definite. If so, an element
 such that the rescaled lattice is totally positive definite}

  if not IsTotallyReal(L`K) then return false, _; end if;
  
  D:= Diagonal(OrthogonalizeGram(L`GRAM));
  Signs:= [];
  for v in RealPlaces(L`K) do 
    s:= { Sign( Evaluate(x, v) ) : x in D };
    if #s ne 1 then return false, _; end if;
    Append(~Signs, Rep(s));
  end for;
  R:= Integers(L`K);
  a:= #Set(Signs) eq 1 select R ! Signs[1] else CRT(1*R, [1..#Signs], R ! 1, Signs);
  return true, a;
end intrinsic;

////////////////////////////////////////////////////////////////////////

function gram_ideals_over_Z(G,J) K:=NumberField(Ring(Universe(J)));
 B:=ChangeRing(Matrix([AbsoluteBasis(j) : j in J]),K);
 d:=AbsoluteDegree(K); r:=Nrows(G); assert #J eq r; Y:=[[] : j in [1..d]];
 A:=[B[i][a]*B[j][b]*G[i][j]:j in [1..r],b in [1..d], i in [1..r],a in [1..d]];
 M:=[Matrix(d*r,[Rationals()|Trace(b*x) : x in Eltseq(A)]) : b in Basis(K)];
 return M; end function;
/*
 for i in [1..(d*r)^2] do E:=Eltseq(A[i]);
  for j in [1..d] do Y[j][i]:=E[j]; end for; end for;
 return [ChangeRing(Matrix(d*r,d*r,y),Rationals()) : y in Y];
*/

function retract_to_K(T,J1,J2) K:=NumberField(Ring(Universe(J1)));
 B:=ChangeRing(Matrix([AbsoluteBasis(j) : j in J1]),K);
 C:=ChangeRing(Matrix([AbsoluteBasis(j) : j in J2]),K);
 d:=AbsoluteDegree(K); nd:=Ncols(T); assert nd mod d eq 0; n:=nd div d;
 R:=MatrixAlgebra(K,n)!0; // undo "jbia" of above
 for i,j in [1..n] do
  R[i][j]:=&+[T[i][j+(k-1)*n]*C[j][k] : k in [1..d]]/B[i][1]; end for;
 return R; end function;

function auto_group(G,J) // G is pseudoGram matrix
 R:=gram_ideals_over_Z(G,J);
 c:=Lcm([Denominator(x) : x in &cat[Eltseq(r) : r in R]]);
 R:=[ChangeRing(c*r,Integers()) : r in R]; assert IsSymmetric(R[1]);
  _,T:=LLLGram(R[1] : Delta:=0.999); TT:=Transpose(T); R:=[T*r*TT : r in R];
 AA:=AutomorphismGroup(R); TI:=T^(-1);
 A:=[TI*g*T : g in Generators(AA)]; Aw:=[retract_to_K(a,J,J) : a in A];
 ANS:=MatrixGroup<Degree(Universe(Aw)),BaseRing(Universe(Aw))|Aw>;
 ANS:=ChangeRing(ANS,BaseRing(G)); ANS`Order:=#AA; return ANS; end function;

function extend_pseudobasis(M) R:=Random; I:=[-1,1]; u:=0; // Smith can reorder
 c:=Ncols(M); s:=c-Nrows(M); K:=BaseRing(M); d:=AbsoluteDegree(K);
 while true do u:=u+1; if u gt 10 then u:=0; I cat:=[R(2*#I)]; end if;
  A:=Matrix(s,c,[K|&+[R(I)*K.1^i : i in [1..d]] : j in [1..c],k in [1..s]]);
  V:=VerticalJoin(M,A); if Rank(V) eq c then return V; end if; end while;
 end function;

intrinsic AutomorphismGroup
(L::LatNF : NaturalAction:=false,Check:=true) -> GrpMat
{The automorphism group of a totally positive definite number field lattice}
 definite, s:= IsDefinite(L);
 require definite: "Lattice must be totally pos definite";
 if s ne 1 then L:= InnerProductScaling(L, s); end if;
 if Rank(L) eq 0 then
  if NaturalAction then require Degree(L) ne 0: "Lattice degree cannot be 0";
   return MatrixGroup<Degree(L),L`K|>; end if;
  require false: "Lattice must be positive rank"; end if;
 // if Rank(L) eq 0 then return MatrixGroup<0,L`K|>; end if;
 if not NaturalAction then A:=auto_group(PseudoGramMatrix(L),L`Js);
  if Check then assert &and[a*L eq L : a in Generators(A)]; end if;
  return A; end if;
 // not working in quartic case, none of extended Gram matrices are pos def?
 A:=auto_group(PseudoGramMatrix(L),L`Js);
 B:=extend_pseudobasis(L`BM); BI:=B^(-1); d:=Degree(L); r:=Rank(L);
 GENS:=[BI*DiagonalJoin(g,IdentityMatrix(L`K,d-r))*B: g in Generators(A)];
 if Check then assert &and[L*T eq L : T in GENS]; end if;
 M:=MatrixGroup<d,L`K|GENS>; M`Order:=#A; return M; end intrinsic;

function is_isom_basis_act(A,B)
 Y:=PseudoGramMatrix(A); Z:=PseudoGramMatrix(B);
 E:=gram_ideals_over_Z(Y,A`Js); F:=gram_ideals_over_Z(Z,B`Js);
 c:=Lcm([Denominator(x) : x in &cat[Eltseq(r) : r in E cat F]]);
 E:=[ChangeRing(c*r,Integers()) : r in E];
 F:=[ChangeRing(c*r,Integers()) : r in F];
 _,T:=LLLGram(E[1] : Delta:=0.999); TT:=Transpose(T); TI:=T^(-1);
 _,U:=LLLGram(F[1] : Delta:=0.999); UU:=Transpose(U); UI:=U^(-1);
 E:=[T*e*TT : e in E]; F:=[U*f*UU : f in F];
 b,X:=IsIsometric(E,F); if not b then return b,_; end if;
 R:=ChangeRing(retract_to_K(UI*X*T,A`Js,B`Js),A`K); return true,R;
 end function;

intrinsic IsIsometric
(A::LatNF,B::LatNF : NaturalAction:=false) -> BoolElt, Mtrx
{Whether two totally positive definite number field lattices are isometric}
 require BaseRing(A) eq BaseRing(B): "Lattices must be over same field";
 definite, s:= IsDefinite(A);
 require definite: "Lattices must be positive definite";
 if s ne 1 then B:= InnerProductScaling(B, s); end if;
 if not IsTotallyPositiveDefinite(B) then return false, _; end if;
 if Rank(A) ne Rank(B) then return false,_; end if;
 if NaturalAction then
  require Degree(A) eq Degree(B): "Lattices must be of same degree";
 elif Rank(A) eq 0 then return true,Matrix(0,[A`K|]); end if;
 b,T:=is_isom_basis_act(A,B); if not b then return b,_; end if;
 if not NaturalAction then return b,T; end if; d:=Degree(A); r:=Rank(A);
 U:=extend_pseudobasis(A`BM); UI:=U^(-1); V:=extend_pseudobasis(B`BM);
 return b,UI*DiagonalJoin(T,IdentityMatrix(A`K,d-r))*V; end intrinsic;

intrinsic IsSimilar(A::LatNF, B::LatNF : NaturalAction:=false) -> BoolElt, Mtrx, FldAlgElt
{Whether two definite number field lattices are similar}
  require BaseRing(A) cmpeq BaseRing(B) : "The lattices must have identical base rings";
  m:= Rank(A);
  if m ne Rank(B) then return false, _, _; end if;
  ok1, a:= IsDefinite(A);
  ok2, b:= IsDefinite(B);
  require ok1 and ok2: "Lattices must be definite";

  I:= Scale(A) / Scale(B);
  if I ne Norm(A) / Norm(B) then return false, _, _; end if;
  ok, gens:= HasTotallyPositiveGenerator(a/b * I);
  if not ok then return false, _, _; end if;
 
  AA:= InnerProductScaling(A, a);
  for g in gens do
    M:= InnerProductScaling(B, g*b);
    assert Scale(AA) eq Scale(M) and Norm(AA) eq Norm(M);
    ok, x:= IsIsometric(AA, M : NaturalAction:= NaturalAction);
    if ok then return true, x, a^-1 * g * b; end if;
  end for;
  return false, _, _;
end intrinsic;

////////////////////////////////////////////////////////////////////////

function vec_retract_to_K(v,J) K:=NumberField(Ring(Universe(J)));
 d:=AbsoluteDegree(K); nd:=Degree(v); assert nd mod d eq 0; n:=nd div d;
 R:=VectorSpace(K,n)!0; // undo "jbia" of above
 B:=ChangeRing(Matrix([AbsoluteBasis(j) : j in J]),K);
 for j in [1..n] do // R[j]:=&+[v[j+(k-1)*n]*B[k] : k in [1..d]];
  R[j]:=&+[v[j+(k-1)*n]*B[j][k] : k in [1..d]]/B[1][1]; end for;
 return R; end function;

intrinsic Sphere(L::LatNF,e::RngElt : Negatives:=true) -> Setq[LatNFElt]
{Given a number field lattice and a norm, return the vectors on that sphere}
 require IsCoercible(L`K,e): "Field elements must coerce into number field";
 definite, s:= IsDefinite(L);
 require definite: "Lattice must be definite";
 if e eq 0 then return {L.0}; end if; 
 LL:= s eq 1 select L else InnerProductScaling(L, s);
 e:=L`K!e; f:=e*(L`K!s); deg:=AbsoluteDegree(L`K);
 if not IsTotallyPositive(f) or f notin Norm(LL) then return {L|}; end if;
 G:=gram_ideals_over_Z(LL`GRAM/f,LL`Js); // Is G[1] always trace?
 LAT:=LatticeWithGram(G[1]); SV:=ShortVectors(LAT,deg,deg);
 X:=[L | vec_retract_to_K(v[1],L`Js)*L`BM : v in SV ];
 X:=[v : v in X | Norm(v) eq e];
 if Negatives then X cat:=[-x : x in X]; end if; return Set(X); end intrinsic;
 /*
 B:=[AbsoluteBasis(J) : J in L`Js]; r:=Rank(L); deg:=AbsoluteDegree(L`K);
 V:=VectorSpace(L`K,r); ZB:= [b*V.i : b in B[i], i in [1..r]];
 M:=[&+[E[k]*y[k] : k in [1..r]] where E:=x*L`GRAM/e : x,y in ZB];
 M:=Matrix(r*deg,[AbsoluteTrace(x) : x in M]);
 LAT:=LatticeWithGram(M); SV:=ShortVectors(LAT,deg,deg);
 X:=[L | &+[sv[1,i]*ZB[i] : i in [1..#ZB]]*L`BM : sv in SV];
 X:=[x : x in X | Norm(x) eq e];
 if Negatives then X cat:=[-x : x in X]; end if;
 return Set(X); end intrinsic;
 */

////////////////////////////////////////////////////////////////////////

intrinsic IsSublattice(S::LatNF,L::LatNF) -> BoolElt
{Return if S is a sublattice of L}
 require Degree(S) eq Degree(L): "Lattices must be same degree";
 require S`K eq L`K: "Lattices must be over the same number field";
 require S`IP eq L`IP: "Lattices must have the same ambient inner product";
 G:=Generators(S);
 for g in G do if not g in L then return false; end if; end for;
 for g,h in G do // other 'subset's in Magma give error on nonconsistent IPs
  if InnerProduct(g,h) ne InnerProduct(L!g,L!h) then return false; end if;
  end for; return true; end intrinsic; // would rather allow it this way

intrinsic 'subset'(S::LatNF,L::LatNF) -> BoolElt, Mtrx {"}//"
 return IsSublattice(S,L); end intrinsic;

intrinsic OrthogonalComplement(L::LatNF,v::LatNFElt) -> LatNF
{Given a lattice L and a vector v, return the orthogonal complement}
 require v in L: "The vector must be in the lattice";
 return OrthogonalComplement(L,sub<L|[v]>); end intrinsic;

intrinsic OrthogonalComplement(L::LatNF,S::LatNF) -> LatNF
{Given a lattice L and a sublattice S, return the orthogonal complement}
 require IsSublattice(S,L): "S must be a sublattice of L";
 if Rank(S) eq 0 then return L; end if; r:=Rank(L); A:=[]; K:=L`K;
 if Rank(S) eq Rank(L) then return SubConstructor(L,<[]>); end if; // hackish, IP
 GRAM:=PseudoGramMatrix(L); M:=Matrix([(L!g)`coord*GRAM : g in Generators(S)]);
 O:=MaximalOrder(L`K); d:=LCM([d where _,d:=IsIntegral(e) : e in Eltseq(M)]);
 T:=ChangeRing(Transpose(M)*d,O); R:=RSpace(O,r); Jd:=Denominator(&+L`Js);
 B:=[b*R.i : b in AbsoluteBasis(Jd*L`Js[i]), i in [1..r]]; Z:=Integers();
 KER:=KernelMatrix(Matrix(Z,[&cat[Eltseq(O!x) : x in Eltseq(b*T)] : b in B]));
 // AbsoluteBasis OK with Eltseq(O!x) here, as all K are absolute
 C:=ChangeRing(GeneratorMatrix(Module(Rows(Matrix(O,KER)*Matrix(B)))),K);
 R:=Rows(C*L`BM/Jd); // above is from Markus, though I added Jd myself
 if L`IP eq 0 then // this should be OK now
  G:=Matrix(#R,#R,[InnerProduct(L!R[i],L!R[j]) : i,j in [1..#R]]);
  return NumberFieldLattice(R : Gram:=G); end if; // could assert...
 return NumberFieldLattice(R : InnerProduct:=L`IP); end intrinsic;


////////////////////////////////////////////////////////////////////////

intrinsic EmbeddingSpace(L::LatNF) -> Mod
{The embedding space of the lattice L}
  if L`IP cmpeq 0 then
    return VectorSpace(L`K, Degree(L));
  end if;
  return VectorSpace(L`K, Degree(L), L`IP);
end intrinsic;

intrinsic LocalBasis(L::LatNF, p::RngOrdIdl : Type:= "") -> []
{A basis of a free module that coincides with M at the prime ideal p}
  require NumberField(Order(p)) cmpeq BaseRing(L) : "Incompatible arguments";
  require Type in {"", "Submodule", "Supermodule"} : "Type must be \"Submodule\" or \"Supermodule\" when specified";
  if Type eq "" then
    pi:= UniformizingElement(p);
  end if;
  B:= [ EmbeddingSpace(L) | ];
  P:= PseudoBasis(L);
  for i in [1..#P] do
    I:= L`Js[i];
    g:= Generators(I);
    if #g eq 1 then x:= g[1];
    elif Type eq "" then x:= pi^Valuation(I, p);
    else
      Fact:= Factorization(I);
      Fact:= Type eq "Submodule" select [ f: f in Fact | f[1] eq p or f[2] gt 0 ]
                                   else [ f: f in Fact | f[1] eq p or f[2] lt 0 ];
      if forall{ f: f in Fact | f[1] ne p } then Append(~Fact, <p, 0>); end if;
      x:= WeakApproximation([ f[1] : f in Fact ], [ f[2] : f in Fact ]);
    end if;
    assert Valuation(x, p) eq Valuation(I, p);
    Append(~B, x*P[i]);
  end for;
  return B;
end intrinsic;


////////////////////////////////////////////////////////////////////////
// The genus of a lattice

intrinsic BadPrimes(L::LatNF : Even:= false) -> {}
{The set of prime ideals at which L is not unimodular}
  Bad:= Support(Scale(L)) join Support(Volume(L));
  if Even then Bad join:= Support( 2*Integers(BaseRing(L))); end if;
  return Bad;
end intrinsic;

Hasse:= func< D, p | &*[ Integers() | HilbertSymbol(D[i], &*D[ [i+1..n] ], p) : i in [1..n-1] ] where n:= #D >;

function MyDiagonal(L, Ambient)
/* Maybe cache the diagonal like this:
  if Ambient and not IsFull(L) then
    return Diagonal(OrthogonalizeGram(InnerProductMatrix(L)));
  elif not assigned L`Diagonal then
    F:= IsFull(L) select InnerProductMatrix(L) else GramMatrix(L, Basis(Module(L)));
    L`Diagonal:= Diagonal(OrthogonalizeGram(F));
  end if;
  return L`Diagonal;
*/
  F:= Ambient select L`IP else PseudoGramMatrix(L);
  return Diagonal(OrthogonalizeGram(F));
end function;

intrinsic HasseInvariant(L::LatNF, p::RngOrdIdl : AmbientSpace:= false) -> RngIntElt
{The Hasse invariant of L at p}
  ok, err:= PrimeOK(L, p);
  require ok: err;
  require not AmbientSpace or L`IP ne 0: "Lattices do not have an inner product set up";
  return Hasse(MyDiagonal(L, AmbientSpace), p);
end intrinsic;

//Maybe this should be called Clifford invariant?
intrinsic WittInvariant(L::LatNF, p::RngOrdIdl : AmbientSpace:= false) -> RngIntElt
{The Witt invariant of L at p}
  ok, err:= PrimeOK(L, p);
  require ok: err;
  if AmbientSpace then
    require L`IP ne 0: "Lattices do not have an inner product set up";
    F:= L`IP;
  else
    F:= L`GRAM;
  end if;
  h:= HasseInvariant(L, p : AmbientSpace:= AmbientSpace);
  Det:= Determinant(F);
  c:= L`K ! case < Ncols(F) mod 8 | 3: -Det, 4: -Det, 5: -1, 6: -1, 7: Det, 0: Det, default : 1 >;
  return h * HilbertSymbol(L`K ! -1, c, p);
end intrinsic;

intrinsic IsRationallyEquivalent(L1::LatNF, L2::LatNF, p::RngOrdIdl : AmbientSpace:= false) -> BoolElt
{Decide if the completions L1_p and L2_p generate isometric spaces}
  if AmbientSpace then
    require L1`IP ne 0 and L2`IP ne 0: "Lattices do not have an inner product set up";
    F1:= L1`IP; F2:= L2`IP;
  else
    F1:= PseudoGramMatrix(L1);
    F2:= PseudoGramMatrix(L2);
  end if;
  if F1 eq F2 then return true; end if;
  require BaseRing(L1) cmpeq BaseRing(L2): "Incompatible arguments";
  ok, err:= PrimeOK(L1,p);
  require ok : err;
  return Ncols(F1) eq Ncols(F2) and IsLocalSquare(Determinant(F1) * Determinant(F2), p) and
    HasseInvariant(L1, p : AmbientSpace:= AmbientSpace) eq HasseInvariant(L2, p : AmbientSpace:= AmbientSpace);
end intrinsic;

intrinsic IsRationallyEquivalent(L1::LatNF, L2::LatNF, p::PlcNumElt : AmbientSpace:= false) -> BoolElt
{"} //"
  if IsFinite(p) then
    return IsRationallyEquivalent(L1, L2, Ideal(p) : AmbientSpace:= AmbientSpace);
  elif AmbientSpace then
    require L1`IP ne 0 and L2`IP ne 0: "Lattices do not have an inner product set up";
    F1:= L1`IP; F2:= L2`IP;
  else
    F1:= PseudoGramMatrix(L1);
    F2:= PseudoGramMatrix(L2);
  end if;
  if F1 eq F2 then return true; end if;
  K:= BaseRing(L1);
  require K cmpeq BaseRing(L2) and K cmpeq NumberField(p) : "Incompatible arguments";
  if Ncols(F1) ne Ncols(F2) then return false; end if;
  I1:= #[ d : d in MyDiagonal(L1, AmbientSpace) | Evaluate(d, p) lt 0 ];
  I2:= #[ d : d in MyDiagonal(L2, AmbientSpace) | Evaluate(d, p) lt 0 ];
  return I1 eq I2;
end intrinsic;

//intrinsic QuadraticFormInvariants(M::AlgMatElt[FldAlg]: Minimize:= true) -> FldAlgElt, SetEnum[RngOrdIdl], SeqEnum[RngIntElt]
//{The invariants describing the quadratic form M}
//  require IsSymmetric(M) and Rank(M) eq Ncols(M): "The form must be symmetric and regular";
function QuadraticFormInvariants(M : Minimize)
  D:= Diagonal(OrthogonalizeGram(M));
  K:= BaseRing(M);
  R:= Integers(K);
  P:= Support(2*R);
  U:= Universe(P);
  for d in D do
    P join:= { f[1] : f in Factorization(d*R) | IsOdd(f[2]) };
  end for;
  F:= Minimize select {U | p : p in P | Hasse(D, p) eq -1 } else { <p, Hasse(D, p) > : p in P };
  I:= [ #[ d: d in D | Evaluate(d, f) le 0 ] : f in RealPlaces(K) ];
  return &* D, F, I;
//end intrinsic;
end function;

intrinsic IsRationallyEquivalent(L1::LatNF, L2::LatNF : AmbientSpace:= false) -> BoolElt
{Tests if L1 and L2 are equivalent over their base field}
  require BaseRing(L1) cmpeq BaseRing(L2): "Incompatible lattices";

  if AmbientSpace then
    require L1`IP ne 0 and L2`IP ne 0 : "Inner product is not known";
    F1:= InnerProductMatrix(L1);
    F2:= InnerProductMatrix(L2);
  else
    F1:= PseudoGramMatrix(L1);
    F2:= PseudoGramMatrix(L2);
  end if;
  if F1 cmpeq F2 then return true;
  elif Ncols(F1) ne Ncols(F2) then return false; end if;

  Det1, Finite1, I1:= QuadraticFormInvariants(F1);
  Det2, Finite2, I2:= QuadraticFormInvariants(F2);
  return I1 eq I2 and Finite1 eq Finite2 and IsSquare(Det1*Det2);
end intrinsic;

intrinsic JordanDecomposition(L::LatNF, p::RngOrdIdl) -> [], [], []
{A Jordan decomposition of the completion of the completion L_p}
  ok, err:= PrimeOK(L,p);
  require ok : err;

  O:= Order(p);
  even:= Minimum(p) eq 2;
  if even then pi:= UniformizingElement(p); end if;

  B:= Matrix(LocalBasis(L, p));
  F:= PseudoGramMatrix(L);
  P:= Matrix(PseudoBasis(L));
  S:= Solution(P, B);

  n:= Ncols(F);
  k:= 1;

  oldval:= Infinity();
  Blocks:= []; Exponents:= [];
  while k le n do
    G:= S*F*Transpose(S);

    // find an element <i, j> with minimal p-valuation.
    // Take it from the diagonal, if possible, and from the lowest-possible row number.
    X:= [ Valuation(G[i,i], p): i in [k..n] ];
    m, ii:= Minimum( X ); ii +:= k-1;
    pair:= <ii, ii>;

    for i in [k..n], j in [i+1..n] do
      tmp:= Valuation(G[i,j], p);
      if tmp lt m then m:= tmp; pair:= <i,j>; end if;
    end for;
    if m ne oldval then Append(~Blocks, k); oldval:= m; Append(~Exponents, m); end if;

    if even and pair[1] ne pair[2] then
      SwapRows(~S, pair[1],   k); // swap f_1 and e_i
      SwapRows(~S, pair[2], k+1); // swap f_2 and e_j

      T12:= (S[k] * F * Matrix(1, Eltseq(S[k+1])))[1];
      S[k] *:= pi^Valuation(T12, p)/T12;
      T := func<i,j|(S[i] * F * Matrix(1, Eltseq(S[j])))[1]>;
      T11 := T(k,k); T22 := T(k+1, k+1); T12:= T(k, k+1);

      d := T11*T22 - T12^2;
      for l in [k+2..n] do
        tl := T12*T(k+1,l)-T22*T(k  ,l); // t_k from step 4
        ul := T12*T(k  ,l)-T11*T(k+1,l); // u_k from step 4
        S[l] +:= (tl/d)*S[k] + (ul/d)*S[k+1];
      end for;
      k +:= 2;
    else
      if pair[1] eq pair[2] then
        SwapRows(~S, pair[1], k);
      else
        S[pair[1]] +:= S[pair[2]];
        SwapRows(~S, pair[1], k);
      end if;
      nrm:= (S[k] * F * Matrix(1, Eltseq(S[k])))[1];
      X:= S[k] * F * Transpose(S); // T(e_k, f_i), 1<=i<=n
      for l in [k+1..n] do S[l] -:= X[l]/nrm * S[k]; end for;
      k+:= 1;
    end if;
  end while;

  G:= S*F*Transpose(S);
  Append(~Blocks, n+1);
  Matrices:= [* RowSubmatrix(SP, Blocks[i], Blocks[i+1] - Blocks[i]) : i in [1..#Blocks-1] *] where SP:= S*P;
  Grams:= [* Submatrix(G, Blocks[i], Blocks[i], Blocks[i+1] - Blocks[i], Blocks[i+1] - Blocks[i]) : i in [1..#Blocks-1] *];
  return Matrices, Grams, Exponents;
end intrinsic;


intrinsic GenusSymbol(L::LatNF, p::RngOrdIdl : Uniformizer:= 0) -> [], .
{The genus symbol of L at p}

  // Use the cache and fix the odd-dimensional cases if needed
  if not assigned L`GenusSymbols then
    L`GenusSymbols:= AssociativeArray();
  end if;
  ok, sym:= IsDefined(L`GenusSymbols, p);
  if ok then
    if Minimum(p) eq 2 then
      return Explode(sym);
    elif Uniformizer cmpeq 0 then
      x, Uniformizer:= Explode(sym);
    else
      _, h:= ResidueClassField(p);
      x:= IsSquare( (Uniformizer / sym[2]) @ h ) select sym[1] else
        [ < e[1], e[2], IsOdd(e[1]*e[2]) select -e[3] else e[3] > : e in sym[1] ];
    end if;
    return x, Uniformizer;
  end if;

  ok, err:= PrimeOK(L, p);
  require ok: err;
  J, G, E:= JordanDecomposition(L, p);
  F:= BaseRing(L);
  if Uniformizer cmpeq 0 then
    Uniformizer:= F ! PrimitiveElement(p);
  else
    ok, Uniformizer := IsCoercible( F, Uniformizer );
    require ok and Valuation(Uniformizer, p) eq 1: "Wrong uniformizer";
  end if;
  if Minimum(p) ne 2 then
    _, h:= ResidueClassField(p);
    Gs:= [ h(&*Diagonal(G[i]) / Uniformizer^(E[i] * Nrows(J[i]))) :  i in [1..#J] ];
    assert 0 notin Gs;
    x:= [ < Nrows(J[i]), E[i], IsSquare(Gs[i]) select 1 else -1 >: i in [1..#J] ];
    L`GenusSymbols[p]:= <x, Uniformizer>;
    return x, Uniformizer;
  else
    t:= #G;
    e := RamificationIndex(p);

    sym:= [];
    for i in [1..t] do
      //TODO: Use Decomposition of L better, remove GG
      GG:= DiagonalJoin(< j lt i select Uniformizer^(2*(E[i]-E[j])) * G[j] else G[j] : j in [1..t] >);
      D:= Diagonal(GG);
      min, pos:= Minimum([ Valuation(d, p) : d in D ]);
      a:= e+E[i] le min select Uniformizer^(e+E[i]) else D[pos];
      u:= Valuation(a, p);
      w:= Minimum({e+E[i]} join {u + QuadraticDefect(d/a, p): d in D});
      Append(~sym, <Ncols(G[i]), E[i], w, a>);
    end for;
    L`GenusSymbols[p]:= < sym, G >;
    return sym, G;
  end if;
end intrinsic;

// For internal use. It sorts the fundamental invariants and computes
// the ideals f_i from O'Mearai §93, if needed.
function EvenGenusSymbol(L, p: Needf:= false)
  sym, G:= GenusSymbol(L, p);
  r:= []; s:= []; w:= []; a:= []; f:= [];
  for g in sym do
    Append(~r, g[1]);
    Append(~s, g[2]);
    Append(~w, g[3]);
    Append(~a, g[4]);
  end for;

  if Needf then
    e:= RamificationIndex(p);
    u:= [ Valuation(x, p): x in a ];
    for k in [1..#a-1] do
       exp:= u[k] + u[k+1];
       Append(~f, (IsOdd(exp) select exp else Minimum({QuadraticDefect(a[k]*a[k+1], p), u[k]+w[k+1], u[k+1]+w[k], e+(exp div 2) + s[k]})) - 2*s[k] );
     end for;
  end if;

  return r, s, w, a, f, G;
end function;

// Check if the diagonal form D1 embeds into D2.
// The rank of D1 is one less than D2.
my_little_helper := function(D1, D2, p)
  // The complement of D1 must be &*D1 * &*D2, so ...
  Append(~D1, &*D1 * &*D2); 
  return Hasse(D1, p) eq Hasse(D2, p);
end function;

intrinsic IsLocallyIsometric(L1::LatNF, L2::LatNF, p::RngOrdIdl: CheckIsometricSpaces) -> BoolElt
{Returns true if and only if the p-adic completions of L1 and L2 are isometric}
  R:= BaseRing(L1);
  require R cmpeq BaseRing(L2) : "Incompatible base rings";
  ok, err:= PrimeOK(L1, p);
  require ok: err;

  d:= Dimension(L1);
  if d ne Dimension(L2) then return false;
  elif d eq 0 then return true;
  end if;

  if Minimum(p) ne 2 then
    S, pi:= GenusSymbol(L1, p);
    return S eq GenusSymbol(L2, p : Uniformizer:= pi);
  end if;

  // Test the embedding spaces first
  if CheckIsometricSpaces and not IsRationallyEquivalent(L1, L2, p) then return false; end if;

  dimL1, sL1, wL1, aL1, fL1, G1 := EvenGenusSymbol(L1, p : Needf);
  dimL2, sL2, wL2, aL2, fL2, G2 := EvenGenusSymbol(L2, p : Needf);

  if (dimL1 ne dimL2) or (sL1 ne sL2) or (wL1 ne wL2) then return false; end if;
  uL1 := [Valuation(aL1[k], p): k in [1..#aL1]];
  uL2 := [Valuation(aL2[k], p): k in [1..#aL2]];
  if uL1 ne uL2 then return false; end if;

  bL := [aL1[k]/aL2[k]: k in [1..#aL1]];
  qL := [QuadraticDefect(bL[k], p): k in [1..#bL]];

  if &or[qL[k] lt wL1[k]-uL2[k]: k in [1..#qL]] then return false; end if;

  e := RamificationIndex(p);
  // Now we have to check if some elements are represented by some local quadratic spaces...
  diag1:= [ Diagonal(OrthogonalizeGram(g)) : g in G1 ];
  diag2:= [ Diagonal(OrthogonalizeGram(g)) : g in G2 ];
  dets1:= [ &*d : d in diag1 ];
  dets2:= [ &*d : d in diag2 ];

  for i in [1..#fL1] do
    detquot := &*[ dets1[k]/dets2[k] : k in [1..i] ];
    assert Valuation(detquot, p) eq 0;
    if QuadraticDefect(detquot, p) lt fL1[i] then return false; end if;
    if (fL1[i] gt 2*e + uL1[i+1] - wL2[i+1]) and
      not my_little_helper( &cat diag1[1..i], Append(&cat diag2[1..i], aL2[i+1]), p) then return false;
    end if;
    if (fL1[i] gt 2*e + uL1[i  ] - wL2[i  ]) and
      not my_little_helper(&cat diag1[1..i] , Append(&cat diag2[1..i], aL2[i]  ), p) then return false;
    end if;
  end for;

  return true;
end intrinsic;

intrinsic IsSameGenus(L1::LatNF, L2::LatNF) -> BoolElt
{Returns true if and only if the lattices L1 and L2 are in the same genus}
  require BaseRing(L1) cmpeq BaseRing(L2) : "Incompatible base rings";
  if Rank(L1) ne Rank(L2) or Norm(L1) ne Norm(L2) or Discriminant(L1) ne Discriminant(L2) or Scale(L1) ne Scale(L2) or not IsRationallyEquivalent(L1, L2) then return false; end if;
  return forall{ p: p in BadPrimes(L1: Even) | IsLocallyIsometric(L1, L2, p) };
end intrinsic;

intrinsic IsIsotropic(L::LatNF, p::RngOrdIdl : AmbientSpace:= false) -> BoolElt
{Tests if L is isotropic at p}
  ok, err:= PrimeOK(L, p);
  require ok: err;
  require not AmbientSpace or L`IP cmpne 0 : "Inner product is not known";

  F:= AmbientSpace select InnerProductMatrix(L) else PseudoGramMatrix(L);
  n:= Ncols(F);
  d:= Determinant(F);
  K:= BaseRing(L);
  if d eq 0 then return true;
  elif n le 1 then return false;
  elif n eq 2 then return IsLocalSquare(-d, p);
  elif n eq 3 then return HasseInvariant(L, p : AmbientSpace:= AmbientSpace) eq HilbertSymbol(K ! -1, K! -1, p);
  elif n eq 4 then return not IsLocalSquare(d, p) or HasseInvariant(L, p: AmbientSpace:= AmbientSpace) eq HilbertSymbol(K ! -1, K! -1, p);
  else return true;
  end if;
end intrinsic;

intrinsic IsIsotropic(L::LatNF, p::PlcNumElt : AmbientSpace:= false) -> BoolElt
{Tests if L is isotropic at p}
  require BaseRing(L) cmpeq NumberField(p) : "Incompatible arguments";
  require not AmbientSpace or L`IP cmpne 0 : "Inner product is not known";

  if IsFinite(p) then return IsIsotropic(L, Ideal(p)); end if;

  F:= AmbientSpace select InnerProductMatrix(L) else PseudoGramMatrix(L);
  n:= Ncols(F);
  d:= Determinant(F);
  K:= BaseRing(L);
  if d eq 0 then return true;
  elif n le 1 then return false;
  elif IsComplex(p) then return true;
  else
    D:= Diagonal( OrthogonalizeGram(F) );
    return #{ Sign( Evaluate(d, p) ) : d in D } eq 2;
  end if;
end intrinsic;

function MaximalSubspaces(k, n)
  I:= MatrixRing(k, n) ! 1;
  L:= [];
  for i in [1..n] do
    X:= RemoveRow(I, i);
    V:= VectorSpace(k, i-1);
    for v in V do Append(~L, InsertBlock(X, Matrix(1, Eltseq(v)), 1, i)); end for;
  end for;
  return L;
end function;

function MyLineOrbits(G)
  k:= BaseRing(G);
  if IsPrimeField(k) then
   try
      return [ < o[2].1, o[1] > : o in OrbitsOfSpaces(G, 1) ];
    catch e;
    end try;
  end if;
  return [ < l[1].1, #l> : l in LineOrbits(G) ];
end function;

intrinsic MaximalSublattices(L::LatNF, p::RngOrdIdl : AutoOrbits:= false, CallBack:= false, Limit:= Infinity()) -> [], []
{The maximal sublattices of L that contain pL}
  ok, err:= PrimeOK(L, p);
  require ok : err;

  F:= FieldOfFractions(Integers(BaseRing(L)));
  B:= LocalBasis(L, p : Type:= "Submodule"); n:= #B;
  B:= Matrix(F, Matrix(B));
  k, h:= ResidueClassField(p); hinv:= h^-1;

  if AutoOrbits cmpne false then
    if AutoOrbits cmpeq true then
      require IsDefinite(L) : "The lattice must be totally positive definite when AutoOrbits is set";
      A:= AutomorphismGroup(L : NaturalAction:= false);
    else
      A:= AutoOrbits;
    end if;
    BM:= Matrix(F, L`BM);
    S1:= Solution(BM, B);
    S2:= Solution(B, BM);
    AT:= [Transpose(Matrix(k, n, [ x @ h : x in Eltseq(S1 * Matrix(F, A.i) * S2) ])) : i in [1..Ngens(A)]];
    AT:= [ a: a in AT | not IsScalar(a) ];
    AutoOrbits:= #AT ge 1;
  end if;
  if AutoOrbits then
    AT:= sub< GL(n,k) | AT >;
    Ls:= MyLineOrbits(AT);
  else
    Ls:= MaximalSubspaces(k, n);
  end if;

  pML:= p*Module(L: IP:= false);
  Result:= []; keep:= true; cont:= true; E:= [];
  for i in [1..#Ls] do
    if AutoOrbits then
      m:= ChangeRing(KernelMatrix( Matrix(1, Eltseq(Ls[i,1])) ), hinv);
    else
      m:= ChangeRing(Ls[i], hinv);
    end if;
    m:= ChangeRing(m, F);
    LL:= SetupLatticeInSpace(L, Module(Rows(m * B)) + pML);
    if CallBack cmpne false then
      keep, cont:= CallBack(Result, LL);
    end if;
    if keep then
      Append(~Result, LL);
      Append(~E, AutoOrbits select Ls[i,2] else 1);
    end if;
    if not cont then break; end if;
    if #Result ge Limit then break; end if;
  end for;

  return Result, E;
end intrinsic;

intrinsic MinimalSuperlattices(L::LatNF, p::RngOrdIdl : AutoOrbits:= false, CallBack:= false, Limit:= Infinity()) -> []
{The maximal sublattices of L that contain pL}
  ok, err:= PrimeOK(L, p);
  require ok: err;

  F:= FieldOfFractions(Integers(BaseRing(L)));
  B:= LocalBasis(L, p : Type:= "Submodule"); n:= #B;
  B:= Matrix(F, Matrix(B));
  k, h:= ResidueClassField(p); hinv:= h^-1;

  if AutoOrbits cmpne false then
    if AutoOrbits cmpeq true then
      require IsDefinite(L) : "The lattice must be totally positive definite when AutoOrbits is set";
      A:= AutomorphismGroup(L : NaturalAction:= false);
    else
      A:= AutoOrbits;
    end if;
    BM:= Matrix(F, L`BM);
    S1:= Solution(BM, B);
    S2:= Solution(B, BM);
    AT:= [ Matrix(k, n, [ x @ h : x in Eltseq(S1 * Matrix(F, A.i) * S2) ]) : i in [1..Ngens(A)]];
    AT:= [ a: a in AT | not IsScalar(a) ];
    AutoOrbits:= #AT ge 1;
  end if;
  if AutoOrbits then
    AT:= sub< GL(n,k) | AT >;
    Ls:= MyLineOrbits(AT);
  else
    Ls:= ProjectiveLineProcess(k, n);
  end if;

  pinv:= p^-1;
  ML:= Module(L: IP:= false);
  Result:= []; keep:= true; cont:= true; E:= [];
  for i in [1..#Ls] do
    l:= AutoOrbits select Ls[i,1] else Next(Ls);
    m:= ChangeRing(ChangeRing(l, hinv), F);
    LL:= SetupLatticeInSpace(L, ML + Module([< pinv, m*B >]));
    if CallBack cmpne false then
      keep, cont:= CallBack(Result, LL);
    end if;
    if keep then
      Append(~Result, LL);
      Append(~E, AutoOrbits select Ls[i,2] else 1);
    end if;
    if not cont then break; end if;
    if #Result ge Limit then break; end if;
  end for;

  return Result, E;
end intrinsic;

////////////////////////////////////////////////////////////////////////
//                                                                    //
//           Constructing (maximal) integral lattices                 //
//                                                                    //
////////////////////////////////////////////////////////////////////////

// Characteristic \ne 2
function IsIsotropicFinite(M)
  n:= Ncols(M);
  k:= BaseRing(M);
  assert IsField(k) and IsFinite(k) and Characteristic(k) ne 2;
  if n eq 0 then
    ;
  elif n eq 1 then
    if IsZero(M[1,1]) then return true, Vector(k, [1]); end if;
  else
    if n le 3 then
      G, T:= OrthogonalizeGram(M);
    else        // solution can be found within the first three vars.
      G, T:= OrthogonalizeGram(SubmatrixRange(M, 1,1,3,3));
      B:= RMatrixSpace(k, 3, n) ! 0;
      B[1,1]:= 1; B[2,2]:= 1; B[3,3]:= 1;
      T:= T * B;
    end if;
    if exists(i){i: i in [1..Ncols(G)] | G[i,i] eq 0} then return true, T[i];
    elif n eq 2 then
      ok, s := IsSquare( -G[1,1] / G[2,2] );
      if ok then return true, T[1] + s*T[2]; end if;
    else
      repeat
        x:= Random(k); y:= Random(k);
        ok, z:= IsSquare( (-x^2*G[1,1] - y^2*G[2,2])/G[3,3] );
       until ok and (x ne 0 or y ne 0);
       return true, x*T[1] + y*T[2] + z*T[3];
    end if;
  end if;

 return false, _;
end function;

// Oracle that computes the determinant of a max. integral lattice in the 
// quadratic space spanned by L.
function GuessMaxDet(L, p)
  m:= Rank(L); n:= m div 2;
  d:= Determinant(L`GRAM);
  e:= 2*Valuation(Order(p) ! 2, p);
  if IsOdd(m) then
    v:= Valuation(d, p) mod 2;
    v:= WittInvariant(L, p) eq 1 select v-e*n else 2-v-e*n;
  else
    if IsOdd( (m*(m-1)) div 2 ) then d := -d; end if;
    qd:= QuadraticDefect(d, p);
    if Type(qd) eq Infty then
      v:= WittInvariant(L, p) eq 1 select -e*n else 2-e*n;
    else
      vd:= Valuation(d, p);
      v:= vd - 2*(qd div 2) + e*(1-n);
      //if IsEven(vd) and qd eq vd+e and WittInvariant(L,p) eq -1 then v:= v+2; end if;
      if IsEven(vd) and qd eq vd+e and WittInvariant(L,p) eq -1 then v:= -e*n+2; end if;
    end if;
  end if;
  return v;
end function;

intrinsic IsMaximalIntegral(L::LatNF, p::RngOrdIdl) -> BoolElt, LatNF
{Checks whether L_p is maximal integral. If L_p is integral but not 
 maximal integral, a minimal integral over-lattice at p is returned}
  ok, err:= PrimeOK(L, p);
  require ok : err;
  if IsZero(L) then return true, L; end if;
  if Valuation(Norm(L), p) lt 0 then return false, _; end if;
  if GuessMaxDet(L, p) eq Valuation(Volume(L), p) then return true, L; end if;

  k, h:= ResidueClassField(p);
  BM:= Matrix(LocalBasis(L, p: Type:= "Submodule"));

  G:= 2*MyGram(L, BM);
  V:= KernelMatrix(Matrix(Nrows(BM), [x @ h: x in Eltseq(G)]));
  K:= BaseRing(L);
  assert Nrows(V) ne 0;

  if Minimum(p) ne 2 then
    T:= ChangeRing(ChangeRing(V, h^-1), K);
    H:= T * G * Transpose(T) / PrimitiveElement(p);
    ok, v:= IsIsotropicFinite(Matrix(Ncols(H), [x @ h : x in Eltseq(H)] ));
    assert ok;
    v:= Vector(K, Eltseq( v*V ) @@ h);
    valv:= Valuation( (v*G, v) , p );
    assert valv ge 2;
  else
    val2:= Valuation(BaseRing(L)!2, p);
    PP:= ProjectiveLineProcess(k, Nrows(V));
    repeat
      x:= Next(PP);
      assert not IsZero(x);
      v:= Vector(K, Eltseq(x * V) @@ h);
      valv:= Valuation( (v*G, v), p );
      assert valv ge 1;
    until valv ge val2 + 2;
  end if;
  FF:= FieldOfFractions(Integers(K));
  LL:= SetupLatticeInSpace(L, Module(L: IP:= false) + Module( [ ChangeRing(WeakApproximation([p], [-1]) *v*BM, FF) ] ) );
  assert Volume(L) eq Volume(LL) * p^2 and Valuation(Norm(LL), p) ge 0;
  return false, LL;
end intrinsic;

intrinsic IsMaximalIntegral(L::LatNF) -> BoolElt, LatNF
{Checks whether L is maximal integral. If L is integral but not
 maximal integral, a minimal integral over-lattice is returned}
  if IsZero(L) then return true, L; end if;
  if not IsIntegral(Norm(L)) then return false, _; end if;
  for p in BadPrimes(L : Even) do
    ok, LL:= IsMaximalIntegral(L, p);
    if not ok then return false, LL; end if;
  end for;
  return true, L;
end intrinsic;

intrinsic IsMaximal(L::LatNF, p::RngOrdIdl) -> BoolElt, LatNF
{Checks if L_p is Norm(L_p)-maximal}
  ok, err:= PrimeOK(L, p);
  require ok : err;
  v:= Valuation(Norm(L), p);
  x:= PrimitiveElement(p)^-v;
  ok, LL:= IsMaximalIntegral( InnerProductScaling(L, x), p);
  if ok then return true, L; end if;
  return false, InnerProductScaling(LL, 1/x);
end intrinsic;

intrinsic IsMaximal(L::LatNF) -> BoolElt, LatNF
{Checks if L is Norm(L)-maximal}
  for p in BadPrimes(L : Even) do
    ok, LL:= IsMaximal(L, p);
    if not ok then return false, LL; end if;
  end for;
  return true, L;
end intrinsic;

intrinsic MaximalIntegralLattice(L::LatNF, p::RngOrdIdl) -> LatNF
{A p-maximal integral lattice over L}
  ok, err:= PrimeOK(L, p);
  require ok : err;
  if IsZero(L) then return L; end if;
  require Valuation(Norm(L), p) ge 0 : "The norm of the lattice must be locally integral";

  repeat
    ok, L:= IsMaximalIntegral(L, p);
  until ok;
  return L;
end intrinsic;

intrinsic MaximalIntegralLattice(L::LatNF) -> LatNF
{A maximal integral lattice containing L}
  if IsZero(L) then return L; end if;
  require IsIntegral(Norm(L)) : "The lattice must be integral";

  for p in BadPrimes(L : Even) do
    L:= MaximalIntegralLattice(L, p);
  end for;
  return L;
end intrinsic;

intrinsic MaximalIntegralLattice(Q::Mtrx) -> LatNF
{A lattice which is maximal integral with respect to the quadratic form Q}
  require IsSymmetric(Q) : "The form must be symmetric";
  R:= BaseRing(Q); T:= Type(R);
  if ISA(T, {RngOrd, FldOrd}) then
    R:= NumberField(R);
    Q:= Matrix(R, Q);
  else
    require ISA(T, FldNum) : "The matrix must be over a number field";
  end if;
  n:= Nrows(Q);
  require Rank(Q) eq n : "The form must be non-degenerate";

  // We start with some integral lattice.
  L:= NumberFieldLattice(R, n : Gram:= Q );
  N:= Norm(L);
  if not IsOne(N) then
    FN:= Factorization(N);
    d:= &*[ f[1]^(f[2] div 2) : f in Factorization(N) ];
    L:= d^-1*L;
    N:= Norm(L);
    assert IsIntegral(N);
  end if;

  return MaximalIntegralLattice(L);
end intrinsic;


////////////////////////////////////////////////////////////////////////
//                                                                    //
//                   The mass of a lattice                            //
//                                                                    //
////////////////////////////////////////////////////////////////////////


// returns q^-dim(G) * #G(F_q)
function GroupOrder(G, m, q)
  if G[1] ne "O" then
    o:= &* case< G[1] |
          "G": [ 1-   q^-j : j in [1..m] ],             // GL_m
          "U": [ 1-(-q)^-j : j in [1..m] ],             //  U_m
      default: [ 1-   q^-j : j in [2..m by 2] ] >;      // Sp_m
  else // the orthogonal cases:
    if IsEven(m) then
      k:= m div 2;
      e:= G[2] eq "+" select 1 else -1;
      o:= 2 * (1-e * q^-k) * &* [ Rationals() | 1-q^-j: j in [2..(m-2) by 2] ];
    else
      o:= 2 * &* [ Rationals() | 1-q^-j: j in [2..m by 2] ];
    end if;
  end if;
  return o;
end function;

get_disc:= func< F | (-1)^(((m-1)*m) div 2) * Determinant(F) where m:= Ncols(F) >;

// Local factor of a maximal lattice in L`K*L following Shimura / Gan-Hanke-Yu.
function lf_max(L, p)
  m:= Rank(L); r:= m div 2;
  if m eq 1 then return 1; end if;
  w:= WittInvariant(L, p);
  d:= get_disc(L`GRAM);
  q:= Norm(p);
  if IsOdd(m) then
    if IsOdd(Valuation(d,p)) then return (q^r+w)/2;
    elif w eq -1 and IsEven(Valuation(d,p)) then return (q^(m-1)-1) / (q+1) / 2;
    end if;
  else
    if IsOdd(Valuation(d,p)) then return 1/2;           // ram.
    elif IsLocalSquare(d,p) then                        // split
      if w eq -1 then return (q^(r-1)-1)*(q^r-1)/(q+1)/2; end if;
    elif IsOdd(QuadraticDefect(d,p)) then return 1/2;   // ram.
    else                                                // inert
      if w eq -1 then return (q^(r-1)+1)*(q^r+1)/(q+1)/2; end if;
    end if;
  end if;
  return 1;
end function;

// Local factor of a unimodular lattice at an even prime p
GetEps:= func< c | (Type(c) eq Infty) select 1 else -1 >;
function lf_uni(L, p)
  d, s, w, a, _, G := EvenGenusSymbol(L, p);
  assert s eq [0] and Minimum(p) eq 2;
  d:= d[1]; b:= w[1]; a:= Valuation(a[1], p);
  e:= RamificationIndex(p);
  q:= Norm(p);
  if IsEven(d) then
    assert b eq e or IsOdd(a+b);
    r:= d div 2;
    disc:= (-1)^r * Determinant(G[1]);
    c:= QuadraticDefect(disc, p);
    if d eq 2 then
      if a lt b and b eq e and c ge 2*e then
        lf:= q^( (e-a-1) div 2 ) * (q - GetEps(c));
      elif b eq e and a+e+1 le c and c lt 2*e then
        lf:= 2*q^((c-e-a) div 2);
      else
        lf:= 1;
      end if;
    elif IsEven(a+b) then
      if e eq a then
        lf:= 1;
      elif c ge 2*e then
        lf:= q^(Integers() ! ((e-a)*(r-1/2) - r)) * (q^r - GetEps(c));
      elif a+e+1 le c then
        lf:= 2*q^(Integers() ! ((c-e-a-1)*(r-1/2)));
      else
        lf:= q^((c-e-a-1)*(r-1));
      end if;
    else  // a+b odd
      if c eq a+b then
        lf:= 1;
      elif c ge 2*e then
        // We first compute the Hilbert symbol hs of (alpha, 1+gamma).
        hs:= (Type(c) eq Infty) or IsEven(a) select 1 else -1;
        // Compute c'
        if WittInvariant(L, p) eq hs then
          cc:= c;
        else
          cc:= Type(c) eq Infty select 2*e else Infinity();
        end if;

        if e eq b and Type(cc) eq Infty then
          ee:= GetEps(c);
          lf:= q^(Integers() ! ((e-a-1)*(r-1/2))) * (q^r-ee) * (q^(r-1)+ee) / 2;
        elif e eq b then
          lf:= q^(Integers() ! ((e-a-1)*(r-1/2))) * (q+1);
        elif Type(cc) eq Infty and c eq cc then
          ee:= GetEps(c);
          lf:= q^(Integers() ! ((2*e-b-a-3)*(r-1/2)+r)) * (q^r-ee) * (q^(2*r-2)-ee) / 2;
        elif Type(cc) eq Infty then
          lf:= q^(Integers() ! ((2*e-b-a-3)*(r-1/2)+r)) * (q+1);
        elif c eq cc then
          ee:= GetEps(c);
          lf:= q^(Integers() ! ((2*e-b-a-3)*(r-1/2)+r)) * (q^(r-1) + 1) * (q^r-ee) * (q^(r-1)+ee) / 2;
        else
          lf:= q^(Integers() ! ((2*e-b-a-3)*(r-1/2)+r)) * (q^(r-1) + 1) * (q+1);
        end if;
      elif b eq e then
        lf:= 2 * q^(Integers() ! ((c-e-a)*(r-1/2)));
      else
        lf:= (q^(2*r-2) - 1) * q^(Integers() ! ((c-a-b-2)*(r-1/2)+1));
      end if;
    end if;
  else  // Dim odd.
    assert a eq 0;
    r:= (d-3) div 2;
    Witt:= WittInvariant(L, p);

    if e eq b then
      lf:= 1;
    elif IsOdd(e) then
      lf:=(q^(r+1)-Witt) * q^((r+1)*(e-b-1));
    else
      lf:= (Witt eq 1 select (q^(2*r+2)-1)/2 else q+1) * q^((r+1)*(e-b-1));
    end if;
  end if;
  return lf_max(InnerProductScaling(L, 2), p) * lf;
end function;

// Local factor when p|2 is unramified following S. Cho.
function lf_Cho(L, p)
  assert Minimum(p) eq 2 and not IsRamified(p);
  m:= Rank(L);
  _, G, S:= JordanDecomposition(L, p);
  k,h:= ResidueClassField(p);
  V:= [**];

  for s in S do
    AG:= DiagonalJoin(< 2^(S[j] lt s select 2*(s- S[j]) else 0) * G[j] : j in [1..#G] >);
    B:= KernelMatrix( Matrix(k, 1, [ h(d/2^s) : d in Diagonal(AG) ]) );
    B:= Matrix(k, Ncols(B), [ Sqrt(x): x in Eltseq(B) ]);
    BK:= ChangeRing(ChangeRing(B, h^-1), BaseRing(AG));
    Q:= BK * AG * Transpose(BK) / 2^(s+1);
    for i,j in [1..Ncols(Q)] do
      if i gt j then Q[i,j]:= 0;
      elif i lt j then Q[i,j] *:= 2;
      end if;
    end for;
    Q:= Matrix(k, Ncols(Q), [ x @ h: x in Eltseq(Q) ]);

    VV:= VectorSpace(k, Nrows(B));
    BB:= Basis(VV);
    assert Matrix(k, #BB, [ (b*Q, c) + (c*Q, b): b, c in BB ]) eq Q + Transpose(Q);

    N:= KernelMatrix(Q+Transpose(Q));
    ok, D:= IsDiagonal(N * Q * Transpose(N));
    assert ok;
    Rad:= KernelMatrix(Matrix(k, 1, D)) * N;

    W, g:= quo< VV | RowSpace(Rad) >;
    if Dimension(W) eq 0 then
      Append(~V, < s, Matrix(k, 0, []) >);
    else
      BB:= Matrix([ b @@ g: b in Basis(W) ]);
      Append(~V, < s, MatrixRing(k, Nrows(BB)) ! (BB * Q * Transpose(BB)) > );
    end if;
  end for;
  M:= [ Ncols(g): g in G ];

  PT:= [ Valuation(Norm(NumberFieldLattice(L`K, Ncols(G[i]) : Gram:= G[i])), p) eq S[i] : i in [1..#S] ];              // parity type I
  Alpha:= [];
  for i in [1..#G] do
    ok:= exists(v){v: v in V | v[1] eq S[i] }; assert ok;
    if Ncols(v[2]) ne 0 and (S[i]-1 notin S or not PT[i-1]) and (S[i]+1 notin S or not PT[i+1]) then Append(~Alpha, i); end if;
  end for;
  Beta:= [];
  for i in [1..#G] do
    if not PT[i] then continue; end if;
    idx:= Index(S, S[i]+2);
    if idx eq 0 or not PT[idx] then Append(~Beta, i); end if;
  end for;
  rk:= - &+[ (m*(m-1)) div 2 where m:= Ncols(Q[2]): Q in V ] + (m*(m-1)) div 2;
  assert rk ge 0;               // rk of max. red. quotient  
  q:= Norm(p);
  res:= 2^(#Alpha + #Beta);
  N:= Multiplicity(PT, true) - #[ i: i in [1..#S-1] | PT[i] and PT[i+1] and S[i+1] eq S[i]+1 ] + &+[ Integers() | M[i] : i in [1..#S] | not PT[i] ];
  for i in [1..#S] do
    N +:= S[i] * (M[i]*(M[i]+1)) div 2;
    N +:= S[i] * M[i] * &+[ Integers() | M[j]: j in [i+1..#S] ];
  end for;
  for v in V do
    mi:= Ncols(v[2]);
    if mi eq 0 then continue;
    elif IsOdd(mi) then
      QFT:= "O";
    elif mi gt 0 then
      QFT:= QuadraticFormType(v[2]) eq "orthogonalplus" select "O+" else "O-";
    end if;
//    v[1], QFT, mi;
    res *:= GroupOrder(QFT, mi, q)/2;
  end for;

  beta:= 1/2 * q^N * res;

  exp:= (m+1)/2 * (&+[ S[i] * M[i] : i in [1..#S] ]);           // from det.
  if IsOdd(m) then
    exp +:= (m+1)/2;
    H:= GroupOrder("O", m, q);
  else
    exp +:= m;
    d:= get_disc(L`GRAM);
    K:= NumberField(Order(p));
    if IsLocalSquare(d,p) then
      H:= GroupOrder("O+", m, q);
    else
      // TODO: The valuation v can be read off the quadratic defect of d.
      E:= ext< K | Polynomial([-d,0,1]) >;
      v:= Valuation(Discriminant(Integers(E)), p);
      if v eq 0 then
        H:= GroupOrder("O-", m , q);
      else
        H:= GroupOrder("O", m-1, q);
        exp +:= v * (1-m)/2;
      end if;
    end if;
  end if;
  assert IsIntegral(exp);
  exp:= Integers() ! exp;

  return q^exp * H/2 / beta;
end function;

// General local factor driver
intrinsic LocalFactor(L::LatNF, p::RngOrdIdl) -> FldRatElt
{The local factor of L at the prime p in the Minkowsi-Siegel mass formula}

  ok, err:= PrimeOK(L, p);
  require ok : err;

  if Rank(L) le 1 then return 1; end if;

  if Minimum(p) eq 2 then
    if not IsRamified(p) then
      return lf_Cho(L,p);
    elif IsMaximal(L, p) then
      s:= PrimitiveElement(p)^-Valuation(Norm(L), p);
      return lf_max(InnerProductScaling(L, s), p);
    elif IsModular(L, p) then
      s:= PrimitiveElement(p)^-Valuation(Scale(L), p);
      return lf_uni(InnerProductScaling(L, s), p);
    else
      def, a:= IsDefinite(L);
      s:= PrimitiveElement(p)^-Valuation(Norm(L), p);
      if def then
        R:= Integers(L`K);
        s*:= CRT(p, [1..AbsoluteDegree(R)], R ! 1, Signature(L`K ! (s*a)) );
      end if;
      L:= InnerProductScaling(L, s);
      Chain:= [L];
      ok, LL:= IsMaximalIntegral(L, p);
      while not ok do
        Append(~Chain, LL);
        ok, LL:= IsMaximalIntegral(LL, p);
      end while;
      f:= lf_max(L, p);
      for i in [1..#Chain-1] do
        M, E:= MaximalSublattices(Chain[i+1], p: AutoOrbits:= def, CallBack:= func< Res, X | IsLocallyIsometric(Chain[i  ], X, p), true >);
        f *:= &+E;
        M, E:= MinimalSuperlattices(Chain[i], p: AutoOrbits:= def, CallBack:= func< Res, X | IsLocallyIsometric(Chain[i+1], X, p), true >);
        f /:= &+E;
      end for;
      return f;
    end if;
  end if;

  // The odd primes
   _, G, s:= JordanDecomposition(L, p);
  if #s eq 1 then return 1; end if;

  m:= Rank(L);
  q:= Norm(p);
  if IsOdd(m) then
    f := GroupOrder("O+", m, q);
  else
    d:= get_disc(L`GRAM);
    if IsOdd(Valuation(d, p)) then
      f := GroupOrder("O+", m-1, q);
    elif IsLocalSquare(d, p) then
      f := GroupOrder("O+", m, q);
    else
      f := GroupOrder("O-", m, q);
    end if;
  end if;
  N:= 0;

  for i in [1..#s] do
    mi:= Ncols(G[i]);
    ri:= &+[ Integers() | Ncols(G[j]): j in [i+1..#s] ];
    det:= get_disc(G[i]);
    sq:= IsLocalSquare(det, p);
    f /:= GroupOrder( sq select "O+" else "O-", mi, q);
    N -:= s[i] * mi*(mi+1)/2 + s[i]*mi*ri;
    N +:= s[i]*mi*(m+1)/2;              // coming from the volume!
  end for;

  // fix the wierd stuff
  if IsEven(m) and IsOdd(Valuation(d, p)) then
    N +:= (1-m)/2;
  end if;
  //    <q,N,1/f>;
  assert IsIntegral(N);
  N:= Integers() ! N;
  return q^N * f;
end intrinsic;

// The non-trivial character of Gal(E/K) if [E:K]=2.
function ExtensionToHeckeCharacter(E)
  assert Degree(E) eq 2;
  K:= BaseField(E);
//  if not IsAbsoluteField(K) then K:= AbsoluteField(K); end if;
  RE:= Integers(E);

  S:= [];
  for i in RealPlaces(K) do
    if #Decomposition(E, i) ne 2 then
      if Type(i) eq Infty then
        idx:= 1;
      else
        ok, idx:= IsInfinite(i); assert ok;
      end if;
      Append(~S, idx);
    end if;
  end for;
  S:= Sort(S);

  bad:= Type(K) eq FldRat;
  if bad then
    DE:= Integers( QNF() ) * Discriminant(RE);
  else
    DE:= Discriminant(RE);
  end if;
  //P:= ClassGroupPrimeIdealGenerators(DE, S);
  Cl, h:= RayClassGroup(DE, S);
  P:= &join[ Support( h(Cl.i) ) : i in [1..Ngens(Cl)] ];
  T:= < < p, IsSplit(bad select Minimum(p) else p, RE) select 1 else -1> : p in P >;
  h:= HeckeCharacter(DE, S, T);
  assert IsPrimitive(h);
  return h;
end function;

// returns L_K(z) or (L_K/L_F)(z) if [K:F]=2 and Relative is true.
function DedekindZetaExact(K, z : Relative:= false)
  if IsOdd(z) then
    k:= 1-z;
    if AbsoluteDegree(K) eq 1 then
      return BernoulliNumber(k)/-k;
    elif AbsoluteDegree(K) eq 2 and IsTotallyReal(K) then
      d:= AbsoluteDiscriminant(Integers(K));
      if Relative then
        return BernoulliNumber(k, KroneckerCharacter(d, Rationals())) / -k;
      else
        return BernoulliNumber(k) * BernoulliNumber(k, KroneckerCharacter(d, Rationals())) / k^2;
      end if;
    end if;
  end if;

  if Relative then
    H:= ExtensionToHeckeCharacter(K);
    L:= LSeries(H);
//    F:= BaseField(K);
//    K:= OptimizedRepresentation(AbsoluteField(K));
//    L:= LSeries(K : Method:= Degree(F) ge 5 select "Direct" else "Default") / LSeries(F);
  else
    L:= LSeries(K);
  end if;

  i:= 0;
  repeat
    if i ge 1 then
      LSetPrecision(L, 40 + i*20);
//      "increasing precision", i;
    end if;
    x:= Evaluate(L, z);
    if Type(x) eq FldComElt and Im(x) le 10^-20 then x:= Re(x); end if;
    X:= Type(x) eq FldReElt select { BestApproximation(x, 10^i) : i in [12, 14, 16, 18] } else [];
    i +:= 1;
  until #X eq 1;

  return Rep(X);
end function;

intrinsic Mass(L::LatNF : StandardMass:= 0) -> FldRatElt
{Returns the mass of L}
//  require IsDefinite(L) : "Only implemented for lattices in definite quadratic spaces";
  m:= Rank(L);
  if m eq 0 then return 1; end if;
  if m eq 1 then return 1/2; end if;

  K:= BaseRing(L);
  r:= m div 2;

  if StandardMass eq 0 then
    StandardMass:= 2^(-AbsoluteDegree(K) * r);
    if IsOdd(m) then
      StandardMass *:= &* [ DedekindZetaExact(K, -i) : i in [1..m-2 by 2] ];
    else
      StandardMass *:= &* [ Rationals() | DedekindZetaExact(K, -i) : i in [1..m-3 by 2] ];
      Disc:= get_disc(L`GRAM);
      if IsSquare(Disc) then
        StandardMass *:= DedekindZetaExact(K, 1-r);
      else
        E:= ext< K | Polynomial([-Disc,0,1]) >;
        StandardMass *:= DedekindZetaExact(E, 1-r : Relative);
      end if;
    end if;
  end if;

  mass:= Abs(StandardMass);
  for p in BadPrimes(L : Even) do
    mass *:= LocalFactor(L, p);
  end for;
  return mass;
end intrinsic;

intrinsic Mass(L::Lat : StandardMass:= 0) -> FldRatElt
{"} //"
  M:= NumberFieldLatticeWithGram( ChangeRing(GramMatrix(L), QNF()) );
  return Mass(M : StandardMass:= StandardMass);
end intrinsic;

////////////////////////////////////////////////////////////////////////

function nflat_is_lorentzian(L) IP:=InfinitePlaces(L`K); ok:=false;
 O,T:=OrthogonalizeGram(L`GRAM); D:=Diagonal(O);
 for i in [1..#D],j in [1..#IP] do
  if Real(Evaluate(D[i],IP[j])) gt 0 then continue; end if;
  if ok then return false,_,_; end if; ok:=true; w:=i; e:=j; end for;  
 if not ok then return false,_,_; end if;
 v:=Vector([i eq w select L`K!1 else 0 : i in [1..Nrows(L`GRAM)]]);
 return ok,v*(T^(-1)),e; end function;

intrinsic IsLorentzian(L::LatNF) -> BoolElt, ModTupFldElt, RngIntElt
{Whether a number field lattice is lorentzian}
 require IsTotallyReal(L`K): "Number field of lattice must be totally real";
 r:=Rank(L); if r eq 0 then return false,_,_; end if;
 b,coord,e:=nflat_is_lorentzian(L); if not b then return b,_,_; end if;
 S:=&+[coord[j]*(L`Js[j]^(-1)) : j in [1..r]];
 d:=Denominator(S); c:=Content(S); w:=(d/c)*coord;
 return true,new_nf_lat_elt(L,w),e; end intrinsic;

intrinsic IsTimelike(v::LatNFElt) -> BoolElt
{Whether a vector in a Lorentzian lattice is timelike}
 L:=v`parent; b,_,e:=IsLorentzian(L); require b: "Lattice must be Lorentzian";
 return Real(Evaluate(Norm(v),InfinitePlaces(L`K)[e])) lt 0; end intrinsic;

intrinsic IsSpacelike(v::LatNFElt) -> BoolElt
{Whether a vector in a Lorentzian lattice is timelike}
 L:=v`parent; b,_,e:=IsLorentzian(L); require b: "Lattice must be Lorentzian";
 return Real(Evaluate(Norm(v),InfinitePlaces(L`K)[e])) gt 0; end intrinsic;

intrinsic IsIsometric
(L::LatNF,v::LatNFElt,w::LatNFElt : NaturalAction:=false) -> BoolElt, Mtrx
{Given a Lorentzian lattice and two timelike vectors,
 determine if there is an automorphism T of L with v=Tw}
 require IsIdentical(L,v`parent): "Lattice must be parent of the first vector";
 require IsIdentical(L,w`parent): "Lattice must be parent of second vector";
 require IsLorentzian(L): "The lattice must be Lorentzian";
 require IsTimelike(v): "The first vector must be timelike";
 require IsTimelike(w): "The second vector must be timelike";
 if Norm(v) ne Norm(w) then return false,_; end if; K:=L`K;
 Ov:=OrthogonalComplement(L,v); Ow:=OrthogonalComplement(L,w);
 b,T:=IsIsometric(Ov,Ow); if not b then return false,_; end if;
 R:=Matrix(Rows(Ov`BM) cat [v`vec]); Rs:=Solution(L`BM,R);
 S:=Matrix(Rows(Ow`BM) cat [w`vec]); Ss:=Solution(L`BM,S);
 U:=Ss^(-1)*DiagonalJoin(T,DiagonalMatrix([K|1]))*Rs; assert U*w eq v;
 if U*L eq L then if not NaturalAction then return true,U; end if;
  E:=extend_pseudobasis(L`BM); EI:=E^(-1); d:=Degree(L); r:=Rank(L);
  return true,EI*DiagonalJoin(U,IdentityMatrix(K,d-r))*E; end if;
 // this all needs to be tested...
 G,M:=AutomorphismGroup(L,v); C:=RightTransversal(M,G);
 for c in C do if IsOne(c) then continue; end if; // c*v eq v;
  ci:=c^(-1); assert (U*ci)*w eq v; // this is the right way around...
  if (U*ci)*L eq L then if not NaturalAction then return true,U*ci; end if;
   E:=extend_pseudobasis(L`BM); EI:=E^(-1); d:=Degree(L); r:=Rank(L);
   return true,EI*DiagonalJoin(U*ci,IdentityMatrix(K,d-r))*E; end if; end for;
 return false,_; end intrinsic;

intrinsic AutomorphismGroup
(L::LatNF,v::LatNFElt : NaturalAction:=false) -> GrpMat, GrpMat
{Given a Lorentzian lattice and a timelike vector, determine the stabilizer}
 require IsIdentical(L,v`parent): "Lattice must be parent of the vector";
 require IsTimelike(v): "The vector must be timelike";
 O:=OrthogonalComplement(L,v); A:=AutomorphismGroup(O); K:=L`K;
 Gs:=[DiagonalJoin(g,DiagonalMatrix([K|1])) : g in Generators(A)];
 R:=Matrix(Rows(O`BM) cat [v`vec]); S:=Solution(L`BM,R);
 Gs:=[S^(-1)*g*S : g in Gs]; M:=MatrixGroup<Rank(L),K|Gs>; M`Order:=#A;
 orb,stab:=orbit_stab(M,L,func<g,L|g*L>);
 if not NaturalAction then return sub<M|stab>,M; end if;
 E:=extend_pseudobasis(L`BM); EI:=E^(-1); d:=Degree(L); r:=Rank(L);
 MG:=MatrixGroup<d,K|[EI*DiagonalJoin(g,IdentityMatrix(K,d-r))*E : g in Gs]>;
 ST:=sub<MG|[EI*DiagonalJoin(g,IdentityMatrix(K,d-r))*E : g in stab]>;
 return ST,MG; end intrinsic;

////////////////////////////////////////////////////////////////////////

intrinsic Print(PL::ProcPL)
{internal}
  printf "A projective line process for %m", Parent(PL`v);
end intrinsic;

intrinsic IsCoercible(PL::ProcPL, x::.) -> BoolElt, .
{internal}
   return false, "Illegal coercion";
end intrinsic;

intrinsic ProjectiveLineProcess(V::ModTupFld[FldFin]) -> ProcPL
{Creates a projective line process for V}
  PL:= New(ProcPL);
  PL`a:= PrimitiveElement(BaseField(V));
  PL`v:= V ! 0;
  PL`dim:= Dimension(V);
  PL`depth:= PL`dim+1;
  return PL;
end intrinsic;

intrinsic ProjectiveLineProcess(k::FldFin, n::RngIntElt) -> ProcPL
{Creates a projective line process for k^n}
  requirege n, 1;
  return ProjectiveLineProcess(VectorSpace(k, n));
end intrinsic;

intrinsic '#'(PL::ProcPL) -> RngIntElt
{The number of lines in PL}
  q:= #Parent(PL`a);
  return (q^PL`dim-1) div (q-1);
end intrinsic;

intrinsic Next(PL::ProcPL) -> ModTupFldElt
{The next element in the process. Returns the zero vector if no more elements left}
  if PL`depth ne 0 then
    i:= PL`dim;
    while true do
      if i eq PL`depth then
        PL`v[i]:= 0; i -:= 1;
      elif i lt PL`depth then
        PL`depth:= i;
        if i ge 1 then PL`v[i]:= 1; end if;
        break;
      elif PL`v[i] eq 0 then PL`v[i]:= 1; break;
      else
        PL`v[i] *:= PL`a;
        if PL`v[i] eq 1 then PL`v[i]:= 0; i -:= 1; else break; end if;
      end if;
    end while;
  end if;
  return PL`v;
end intrinsic;
