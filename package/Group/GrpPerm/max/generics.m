freeze;

import "spinor.m":InOmega;
import "gl2.m": ModToQ, GL2, GU2;
import "classicals.m": NormSpMinusSp, SOMinusOmega, GOMinusSO, NormGOMinusGO;

OrthogSL2 := function(d,q:special:=false,general:=false,normaliser:=false)
/* construct SL(2,q) in O(d,q) for d odd */
  local w, S, G, M, T, MM, A;
  assert IsOdd(d); assert IsOdd(q);
  /* construct GL(2,q) as SL(2,q) with extra generator */
  w := PrimitiveElement(GF(q));
  G := sub< GL(2,q) | SL(2,q), DiagonalMatrix(GF(q),[w,1]) >;
  M := GModule(G);
  MM := M;
  for i in [3..d] do
    T:=TensorProduct(M,MM);
    MM := [c : c in Constituents(T) | Dimension(c) eq i ][1];
  end for;
  A := ActionGroup(MM);
  S := ScalarMatrix(d, w^((d-1) div 2) );
  A := sub< GL(d,q) | A.1, A.2, A.3*S^-1 >;
  assert Determinant(A.3) eq GF(q)!1;
  assert SymmetricBilinearForm(A);
  A := A^TransformForm(A);
  if normaliser then
    return sub< GL(d,q) | A.1, A.2, A.3, ScalarMatrix(d,w) >;
  elif general then
    return sub< GL(d,q) | A.1, A.2, A.3, ScalarMatrix(d,-1) >;
  elif special or InOmega(A.3,d,q,0)  then
    //InOmega(A.3,d,q,0) seems to happen for d = 1 or 7 mod 8.
    return A;
  else return sub < GL(d,q) | A.1, A.2 >;
  end if;
end function;

SymplecticSL2 := function(d,q:normaliser:=false)
/* construct SL(2,q) in Sp(d,q) for d even */
  local w, S, G, M, T, MM, A, DA, isit, form, tmat;
  assert IsEven(d); assert IsOdd(q);
  /* construct GL(2,q) as SL(2,q) with extra generator */
  w := PrimitiveElement(GF(q));
  G := sub< GL(2,q) | SL(2,q), DiagonalMatrix(GF(q),[w,1]) >;
  M := GModule(G);
  MM := M;
  for i in [3..d] do
    T:=TensorProduct(M,MM);
    MM := [c : c in Constituents(T) | Dimension(c) eq i ][1];
  end for;
  A := ActionGroup(MM);
  S := ScalarMatrix(d, w^((d-2) div 2) );
  A := sub< GL(d,q) | A.1, A.2, A.3*S^-1 >;
  DA := sub< A | A.1, A.2 >;
  isit, form := SymplecticForm(DA); assert isit;
  tmat := TransformForm(form, "symplectic");
  A := A^tmat;
  if normaliser then return A;
  else return  sub< A | A.1, A.2 >;
  end if;
end function;

l3qdim6 := function(q:general:=false)
  local w, S, G, M, T, MM, A;
  assert IsOdd(q);
  w := PrimitiveElement(GF(q));
  G := general select GL(3,q) else SL(3,q);
  M := GModule(G);
  T := TensorProduct(M,M);
  MM := [c : c in Constituents(T) | Dimension(c) eq 6 ][1];
  A := ActionGroup(MM);
  if not general then
    S := ScalarMatrix(6, w^((q-1) div GCD(6,q-1)) );
    return sub< GL(6,q) | A, S >;
  end if;
  return sub< GL(6,q) | A, ScalarMatrix(6,w) >;
end function;

u3qdim6 := function(q:general:=false, normaliser:=false)
  local w, S, G, M, T, MM, A;
  assert IsOdd(q);
  if normaliser then general:=true; end if;
  w := PrimitiveElement(GF(q^2));
  G := general select GU(3,q) else SU(3,q);
  M := GModule(G);
  T := TensorProduct(M,M);
  MM := [c : c in Constituents(T) | Dimension(c) eq 6 ][1];
  A := ActionGroup(MM);
  A := A^TransformForm(A);
  if not general then
    S := ScalarMatrix(6, (w^(q-1))^((q+1) div GCD(6,q+1)) );
    return sub< GL(6,q^2) | A, S >;
  end if;
  if not normaliser then
    return sub< GL(6,q^2) | A, ScalarMatrix(6,w^(q-1)) >;
  end if;
  return sub< GL(6,q^2) | A, ScalarMatrix(6,w) >;
end function;

l2q3dim8 := function(q:normaliser:=false)
  //SL(2,q^3).3 <= Sp(8,q);
  w:=PrimitiveElement(GF(q^3));
  G := sub< GL(2,q^3) | SL(2,q^3), DiagonalMatrix(GF(q^3),[w,1]) >;
  M:=GModule(G); M1:=ModToQ(M,q); M2:=ModToQ(M1,q); 
  T:=TensorProduct(M,TensorProduct(M1,M2)); 
  assert IsIrreducible(T);
  u := GL(8,q^3)!PermutationMatrix(GF(q^3),Sym(8)!(2,3,5)(4,7,6));
  //induces field automorphism
  X := sub< GL(8,q^3) | ActionGroup(T), u >;
  iso, G := IsOverSmallerField(X);
  assert iso;
  G := G^TransformForm(sub<Generic(G)|G.1,G.2>);
  if normaliser then
    return G;
  end if;
  return( sub<Generic(G) | G.1,G.2,G.4 >);
end function;

l3qdim8 := function(q:special:=false,general:=false,normaliser:=false)
  //SL(3,q)(.3) <= O+(8,q), q mod 3 = 1 or O-(8,q), q mod 3 = 2
  w := PrimitiveElement(GF(q));
  G := GL2(3,q);
  M := GModule(G);
  T := TensorProduct(M,M);
  C := Constituents(T);
  M8 := [c : c in C | Dimension(c) eq 8][1];
  G8 := ActionGroup(M8);
  G8 := G8^TransformForm(G8);
  if normaliser then
    return sub< GL(8,q) | G8, ScalarMatrix(8,w) >;
  elif general and IsOdd(q) then
    return sub< GL(8,q) | G8, ScalarMatrix(8,-1) >;
  elif (special or general) and IsEven(q) then
    return sub< GL(8,q) | G8 >;
  elif special or q mod 3 eq 1 then
    return sub< GL(8,q) | G8.1, G8.2, ScalarMatrix(8,-1) >;
  else
    return sub< GL(8,q) | G8.1, G8.2 >;
  end if;
end function;

u3qdim8 := function(q:special:=false,general:=false,normaliser:=false)
  //SU(3,q)(.3) <= O+(8,q), q mod 3 = 2 or O-(8,q), q mod 3 = 1
  w := PrimitiveElement(GF(q));
  G := GU2(3,q);
  M := GModule(G);
  T := TensorProduct(M,M);
  C := Constituents(T);
  M8 := [c : c in C | Dimension(c) eq 8][1];
  G8 := ActionGroup(M8);
  isit, G8q := IsOverSmallerField(G8); assert isit;
  G8q := G8q^TransformForm(G8q);
  if normaliser then
    return sub< GL(8,q) | G8q, ScalarMatrix(8,w) >;
  elif general and IsOdd(q) then
    return sub< GL(8,q) | G8q, ScalarMatrix(8,-1) >;
  elif (special or general) and IsEven(q) then
    return sub< GL(8,q) | G8q >;
  elif special or q mod 3 eq 2 then
    return sub< GL(8,q) | G8q.1, G8q.2, ScalarMatrix(8,-1) >;
  else
    return sub< GL(8,q) | G8q.1, G8q.2 >;
  end if;
end function;

l2q2dim9 := function(q:special:=false,general:=false,normaliser:=false)
  //L(2,q^2).2 <= O(9,q);
  w:=PrimitiveElement(GF(q^2)); z:=w^(q+1);
  G := sub< GL(2,q^2) | SL(2,q^2), DiagonalMatrix(GF(q^2),[w,1]) >;
  M:=GModule(G); M1:=ModToQ(M,q);
  T:=TensorProduct(M,M1); 
  assert IsIrreducible(T);
  u := GL(4,q^2)!PermutationMatrix(GF(q^2),Sym(4)!(2,3));
  //induces field automorphism
  X := sub< GL(4,q^2) | ActionGroup(T), u >;
  iso, G := IsOverSmallerField(X);
  assert iso;
  M:=GModule(G);
  T:=TensorProduct(M,M);
  C:= [c: c in Constituents(T) | Dimension(c) eq 9][1];
  G:= ActionGroup(C);
  G := G^TransformForm(sub<Generic(G)|G.1,G.2>);
  //adjust G.3 to fix form and G.4 to have determinant 1
  isit, form := SymmetricBilinearForm(sub<Generic(G)|G.1,G.2>); assert isit;
  tform := G.3 * form * Transpose(G.3);
  scal := form[1][9]/tform[1][9];
  isit, rt := IsPower(scal,2); assert isit;
  g3 := G.3 * ScalarMatrix(9, rt);
  g3 := Determinant(g3) eq 1 select g3 else -g3;
  g4 := Determinant(G.4) eq 1 select G.4 else -G.4;
  G := sub< GL(9,q) | G.1,G.2,g3,g4 >;
  if normaliser then
    return sub< GL(9,q) | G, ScalarMatrix(9,z) >;
  elif general then
    return sub< GL(9,q) | G, ScalarMatrix(9,-1) >;
  elif special then
    return G;
  else
    gg := InOmega(g3,9,q,0) select g3
     else InOmega(g4,9,q,0) select g4
     else g3*g4;
    return( sub<GL(9,q) | G.1,G.2 >);
  end if;
end function;

l3q2dim9l := function(q:general:=false)
  //(3.)L(3,q^2)(.3).2 <= L(9,q)
  w:=PrimitiveElement(GF(q^2)); z:=w^(q+1);
  G := sub< GL(3,q^2) | SL(3,q^2), DiagonalMatrix(GF(q^2),[w,1,1]) >;
  M:=GModule(G); M1:=ModToQ(M,q);
  T:=TensorProduct(M,M1); 
  assert IsIrreducible(T);
  u := GL(9,q^2)!PermutationMatrix(GF(q^2),Sym(9)!(2,4)(3,7)(6,8));
  //induces field automorphism
  X := sub< GL(9,q^2) | ActionGroup(T), u >;
  iso, G := IsOverSmallerField(X);
  assert iso;
  //adjust G.4 to have determinant 1
  g4 := Determinant(G.4) eq 1 select G.4 else -G.4;
  G := sub< GL(9,q) | G.1,G.2,G.3,g4 >;
  if general then
    return sub< GL(9,q) | G, ScalarMatrix(9,z) >;
  else
    //get power of G.3 with determinant 1
    return( sub<Generic(G) | G.1, G.2, G.3^Order(Determinant(G.3)), G.4 >);
  end if;
end function;

l3q2dim9u := function(q:general:=false, normaliser:=false)
  //(3.)L(3,q^2)(.3).2 <= L(9,q)
  w:=PrimitiveElement(GF(q^2)); z:=w^(q-1);
  G := sub< GL(3,q^2) | SL(3,q^2), DiagonalMatrix(GF(q^2),[w,1,1]) >;
  M:=GModule(G); M1:=ModToQ(M,q);
  T:=TensorProduct(Dual(M),M1); 
  assert IsIrreducible(T);
  u := GL(9,q^2)!PermutationMatrix(GF(q^2),Sym(9)!(2,4)(3,7)(6,8));
  //induces field automorphism
  G := sub< GL(9,q^2) | ActionGroup(T), u >;
  G := G^TransformForm(sub<Generic(G)|G.1,G.2>);
  //adjust G.4 to have determinant 1
  g4 := Determinant(G.4) eq 1 select G.4 else -G.4;
  G := sub< GL(9,q^2) | G.1,G.2,G.3,g4 >;
  if normaliser then
    return sub< GL(9,q^2) | G, ScalarMatrix(9,w) >;
  elif general then
    return sub< GL(9,q^2) | G, ScalarMatrix(9,z) >;
  //get power of G.3 with determinant 1
  else return( sub<Generic(G) | G.1, G.2, G.3^Order(Determinant(G.3)), G.4 >);
  end if;
end function;

l3qdim10 := function(q:general:=false)
  local w, S, G, M, T, MM, A;
  assert Factorisation(q)[1][1] ge 5;
  w := PrimitiveElement(GF(q));
  G := sub < GL(3,q) | SL(3,q), DiagonalMatrix(GF(q),[w,1,1]) > ;
  M := GModule(G);
  T := TensorPower(M,3);
  MM := [c : c in Constituents(T) | Dimension(c) eq 10 ][1];
  G := ActionGroup(MM);
  if general then return sub< GL(10,q) | G, ScalarMatrix(10,w) >; end if;
  //get intersection with SL
  o := Order(Determinant(G.3));
  tp := 3^Valuation(o,3);
  g3 := G.3^(o div tp);
  isit, rt := IsPower(Determinant(g3),10); assert isit;
  g3 := g3 * ScalarMatrix(10,rt^-1);
  S := ScalarMatrix(10, w^((q-1) div GCD(10,q-1)) );
  return sub< GL(10,q) | G.1, G.2, g3, S >;
end function;

u3qdim10 := function(q:general:=false, normaliser:=false)
  local w, S, G, M, T, MM, A;
  assert Factorisation(q)[1][1] ge 5;
  if normaliser then general:=true; end if;
  w := PrimitiveElement(GF(q^2));
  G := sub < GL(3,q^2) | SU(3,q), GU(3,q).1 > ;
  M := GModule(G);
  T := TensorPower(M,3);
  MM := [c : c in Constituents(T) | Dimension(c) eq 10 ][1];
  A := ActionGroup(MM);
  G := A^TransformForm(A);
  if normaliser then return sub< GL(10,q^2) | G, ScalarMatrix(10,w) >; end if;
  if general then
       return sub< GL(10,q^2) | G, ScalarMatrix(10,w^(q-1)) >;
  end if;
  //get intersection with SU
  o := Order(Determinant(G.3));
  tp := 3^Valuation(o,3);
  g3 := G.3^(o div tp);
  isit, rt := IsPower(Determinant(g3),10*(q-1)); assert isit;
  g3 := g3 * ScalarMatrix(10,rt^-(q-1));
  S := ScalarMatrix(10, (w^(q-1))^((q+1) div GCD(10,q+1)) );
  return sub< GL(10,q^2) | G.1, G.2, g3, S >;
end function;

l4qdim10 := function(q:general:=false)
  local w, S, G, M, T, MM, A;
  assert Factorisation(q)[1][1] ge 3;
  w := PrimitiveElement(GF(q));
  G := sub < GL(4,q) | SL(4,q), DiagonalMatrix(GF(q),[w,1,1,1]) > ;
  M := GModule(G);
  T := TensorPower(M,2);
  MM := [c : c in Constituents(T) | Dimension(c) eq 10 ][1];
  G := ActionGroup(MM);
  if general then return sub< GL(10,q) | G, ScalarMatrix(10,w) >; end if;
  //get intersection with SL
  o := Order(Determinant(G.3));
  tp := 2^Valuation(o,2);
  g3 := G.3^(2*o div tp);
  isit, rt := IsPower(Determinant(g3),10); assert isit;
  g3 := g3 * ScalarMatrix(10,rt^-1);
  S := ScalarMatrix(10, w^((q-1) div GCD(10,q-1)) );
  return sub< GL(10,q) | G.1, G.2, g3, S >;
end function;

u4qdim10 := function(q:general:=false, normaliser:=false)
  local w, S, G, M, T, MM, A;
  assert Factorisation(q)[1][1] ge 3;
  if normaliser then general:=true; end if;
  w := PrimitiveElement(GF(q^2));
  G := sub < GL(4,q^2) | SU(4,q), GU(4,q).1 > ;
  M := GModule(G);
  T := TensorPower(M,2);
  MM := [c : c in Constituents(T) | Dimension(c) eq 10 ][1];
  A := ActionGroup(MM);
  G := A^TransformForm(A);
  if normaliser then return sub< GL(10,q^2) | G, ScalarMatrix(10,w) >; end if;
  if general then
       return sub< GL(10,q^2) | G, ScalarMatrix(10,w^(q-1)) >;
  end if;
  //get intersection with SU
  o := Order(Determinant(G.3));
  tp := 2^Valuation(o,2);
  g3 := G.3^(2*o div tp);
  isit, rt := IsPower(Determinant(g3),10*(q-1)); assert isit;
  g3 := g3 * ScalarMatrix(10,rt^-(q-1));
  S := ScalarMatrix(10, (w^(q-1))^((q+1) div GCD(10,q+1)) );
  return sub< GL(10,q^2) | G.1, G.2, g3, S >;
end function;

l5qdim10 := function(q:general:=false)
  local w, S, G, M, T, MM, A;
  w := PrimitiveElement(GF(q));
  G := general select GL(5,q) else SL(5,q);
  M := GModule(G);
  T := TensorProduct(M,M);
  MM := [c : c in Constituents(T) | Dimension(c) eq 10 ][1];
  A := ActionGroup(MM);
  if not general then
    S := ScalarMatrix(10, w^((q-1) div GCD(10,q-1)) );
    return sub< GL(10,q) | A, S >;
  end if;
  return sub< GL(10,q) | A, ScalarMatrix(10,w) >;
end function;

u5qdim10 := function(q:general:=false, normaliser:=false)
  local w, S, G, M, T, MM, A;
  if normaliser then general:=true; end if;
  w := PrimitiveElement(GF(q^2));
  G := general select GU(5,q) else SU(5,q);
  M := GModule(G);
  T := TensorProduct(M,M);
  MM := [c : c in Constituents(T) | Dimension(c) eq 10 ][1];
  A := ActionGroup(MM);
  A := A^TransformForm(A);
  if not general then
    S := ScalarMatrix(10, (w^(q-1))^((q+1) div GCD(10,q+1)) );
    return sub< GL(10,q^2) | A, S >;
  end if;
  if not normaliser then
    return sub< GL(10,q^2) | A, ScalarMatrix(10,w^(q-1)) >;
  end if;
  return sub< GL(10,q^2) | A, ScalarMatrix(10,w) >;
end function;

sp4qdim10 := function(q:special:=false,general:=false, normaliser:=false)
  //Sp4q <= O^+(10,q) (q=1 mod 4) or O^-(10,q) (q=3 mod 4)
  assert IsOdd(q);
  w := PrimitiveElement(GF(q));
  G := sub< GL(4,q) | Sp(4,q), NormSpMinusSp(4,q) >; 
  M := GModule(G);
  C:=Constituents(TensorProduct(M,M));
  M10 := [c: c in C|Dimension(c) eq 10][1];
  G := ActionGroup(M10);
  G := G^TransformForm(sub<Generic(G)|G.1,G.2>);
  isit, form := SymmetricBilinearForm(sub<Generic(G)|G.1,G.2>); assert isit;
  tform := G.3 * form * Transpose(G.3);
  scal := form[1][10]/tform[1][10];
  isit, rt := IsPower(scal,2); assert isit;
  g3 := G.3 * ScalarMatrix(10, rt);
  G := sub<GL(10,q) | G.1, G.2, g3 >;
  sign := q mod 4 eq 1 select 1 else -1;
  assert Determinant(g3) eq 1 and not InOmega(g3,10,q,sign);
  if normaliser then return sub< GL(10,q) | G, ScalarMatrix(10,w) >;
  elif special or general then return sub< GL(10,q) | G, ScalarMatrix(10,-1) >;
  else return sub< GL(10,q) | G.1,G.2,ScalarMatrix(10,-1)>;
  end if;
end function;

s6qdim13 := function(q:special:=false,general:=false, normaliser:=false)
  //Sp6q <= O^(13,q) (q power of 3)
  assert Factorisation(q)[1][1] eq 3;
  w := PrimitiveElement(GF(q));
  G := sub< GL(6,q) | Sp(6,q), NormSpMinusSp(6,q) >; 
  M := GModule(G);
  C:=Constituents(TensorProduct(M,M));
  M13 := [c: c in C|Dimension(c) eq 13][1];
  G := ActionGroup(M13);
  G := G^TransformForm(sub<Generic(G)|G.1,G.2>);
  isit, form := SymmetricBilinearForm(sub<Generic(G)|G.1,G.2>); assert isit;
  tform := G.3 * form * Transpose(G.3);
  scal := form[1][13]/tform[1][13];
  isit, rt := IsPower(scal,2); assert isit;
  g3 := G.3 * ScalarMatrix(13, rt);
  if Determinant(g3) eq -1 then g3:=Generic(G)!(-g3); end if;
  G := sub<GL(13,q) | G.1, G.2, g3 >;
  assert Determinant(g3) eq 1 and not InOmega(g3,13,q,0);
  if normaliser then return sub< GL(13,q) | G, ScalarMatrix(13,w) >;
  elif general then return sub< GL(13,q) | G, ScalarMatrix(13,-1) >;
  elif special then return G;
  else return sub< GL(13,q) | G.1,G.2 >;
  end if;
end function;

o5qdim13 := function(q:special:=false,general:=false, normaliser:=false)
  //Om5q <= O^(13,q) (q power of 5)
  assert Factorisation(q)[1][1] eq 5;
  w := PrimitiveElement(GF(q));
  G := sub< GL(5,q) | Omega(5,q), SOMinusOmega(5,q,0) >; 
  M := GModule(G);
  C:=Constituents(TensorProduct(M,M));
  M13 := [c: c in C|Dimension(c) eq 13][1];
  G := ActionGroup(M13);
  G := G^TransformForm(sub<Generic(G)|G.1,G.2>);
  isit, form := SymmetricBilinearForm(sub<Generic(G)|G.1,G.2>); assert isit;
  tform := G.3 * form * Transpose(G.3);
  scal := form[1][13]/tform[1][13];
  isit, rt := IsPower(scal,2); assert isit;
  g3 := G.3 * ScalarMatrix(13, rt);
  if Determinant(g3) eq -1 then g3:=Generic(G)!(-g3); end if;
  G := sub<GL(13,q) | G.1, G.2, g3 >;
  assert Determinant(g3) eq 1 and not InOmega(g3,13,q,0);
  if normaliser then return sub< GL(13,q) | G, ScalarMatrix(13,w) >;
  elif general then return sub< GL(13,q) | G, ScalarMatrix(13,-1) >;
  elif special then return G;
  else return sub< GL(13,q) | G.1,G.2 >;
  end if;
end function;

s6qsympdim14 := function(q:normaliser:=false)
  //Sp6q <= Sp(14,q) (q not power of 2)
  p := Factorisation(q)[1][1];
  assert p ne 2;
  w := PrimitiveElement(GF(q));
  G := sub< GL(6,q) | Sp(6,q), NormSpMinusSp(6,q) >; 
  M := GModule(G);
  C:=Constituents(TensorProduct(M,M));
  MM := p eq 3 select [c: c in C|Dimension(c) eq 13][1]
                 else [c: c in C|Dimension(c) eq 14][1];
  C:=Constituents(TensorProduct(M,MM));
  M14 := [c: c in C|Dimension(c) eq 14][1];
  G := ActionGroup(M14);
  G := G^TransformForm(sub<Generic(G)|G.1,G.2>);
  G := sub<GL(14,q) | G.1, G.2, G.3 >;
  if normaliser then return sub< GL(14,q) | G, ScalarMatrix(14,w) >;
  else return sub< GL(14,q) | G.1, G.2 >;
  end if;
end function;

omplus6qdim14 := function(q:normaliser:=false)
  //O^+(6,q) <= O^\pm(14,q) (q = 2^e, sign of image = (-1)^e)
  fac := Factorisation(q)[1];
  assert fac[1] eq 2;
  e := fac[2]; eps := (-1)^e;
  w := PrimitiveElement(GF(q));
  G := sub< GL(6,q) | OmegaPlus(6,q), SOMinusOmega(6,q,eps) >; 
  M := GModule(G);
  C:=Constituents(TensorProduct(M,M));
  M14 := [c: c in C|Dimension(c) eq 14][1];
  G := ActionGroup(M14);
  G := G^TransformForm(sub<Generic(G)|G.1,G.2>);
  isit, form := SymmetricBilinearForm(sub<Generic(G)|G.1,G.2>); assert isit;
  tform := G.3 * form * Transpose(G.3);
  scal := form[1][14]/tform[1][14];
  isit, rt := IsPower(scal,2); assert isit;
  g3 := G.3 * ScalarMatrix(14, rt);
  G := sub<GL(14,q) | G.1, G.2, g3 >;
  if normaliser then return sub< GL(14,q) | G, ScalarMatrix(14,w) >;
  else return G;
  end if;
end function;

omminus6qdim14 := function(q:normaliser:=false)
  //O^-(6,q) <= O^\pm(14,q) (q = 2^e, sign of image = (-1)^e)
  fac := Factorisation(q)[1];
  assert fac[1] eq 2;
  e := fac[2]; eps := (-1)^e;
  w := PrimitiveElement(GF(q));
  G := sub< GL(6,q) | OmegaMinus(6,q), SOMinusOmega(6,q,eps) >; 
  M := GModule(G);
  C:=Constituents(TensorProduct(M,M));
  M14 := [c: c in C|Dimension(c) eq 14][1];
  G := ActionGroup(M14);
  G := G^TransformForm(sub<Generic(G)|G.1,G.2>);
  isit, form := SymmetricBilinearForm(sub<Generic(G)|G.1,G.2>); assert isit;
  tform := G.3 * form * Transpose(G.3);
  scal := form[1][14]/tform[1][14];
  isit, rt := IsPower(scal,2); assert isit;
  g3 := G.3 * ScalarMatrix(14, rt);
  G := sub<GL(14,q) | G.1, G.2, g3 >;
  if normaliser then return sub< GL(14,q) | G, ScalarMatrix(14,w) >;
  else return G;
  end if;
end function;

s6qsymporth14 := function(q:special:=false,general:=false,normaliser:=false)
  //Sp6q <= O^\pm(14,q)
  p := Factorisation(q)[1][1]; assert p ne 3;
  w := PrimitiveElement(GF(q));
  G := IsOdd(q) select sub< GL(6,q) | Sp(6,q), NormSpMinusSp(6,q) > 
                else Sp(6,q);
  M := GModule(G);
  C:=Constituents(TensorProduct(M,M));
  M14 := [c: c in C|Dimension(c) eq 14][1];
  G := ActionGroup(M14);
  G := G^TransformForm(sub<Generic(G)|G.1,G.2>);
  isit, form := SymmetricBilinearForm(sub<Generic(G)|G.1,G.2>); assert isit;
  if IsOdd(q) then
    tform := G.3 * form * Transpose(G.3);
    scal := form[1][14]/tform[1][14];
    isit, rt := IsPower(scal,2); assert isit;
    g3 := G.3 * ScalarMatrix(14, rt);
    G := sub<GL(14,q) | G.1, G.2, g3 >;
  end if;
  if normaliser then return sub< GL(14,q) | G, ScalarMatrix(14,w) >;
  elif q mod 12 in {5,7} then
    if SpinorNorm(G.3,form) ne 0 then
      g3 := Generic(G)!(-G.3);
      G := sub<GL(14,q) | G.1, G.2, g3 >;
    end if;
    assert SpinorNorm(G.3,form) eq 0;
    return G;
  elif special then return G;
  else return sub< GL(14,q) | G.1, G.2 >;
  end if;
end function;

om5qdim14 := function(q:special:=false,general:=false,normaliser:=false)
  //Om5q <= O^\pm(14,q)
  p := Factorisation(q)[1][1]; assert not p in {2,5};
  w := PrimitiveElement(GF(q));
  G := sub< GL(5,q) | Omega(5,q), SOMinusOmega(5,q,0) >;
  M := GModule(G);
  C:=Constituents(TensorProduct(M,M));
  M14 := [c: c in C|Dimension(c) eq 14][1];
  G := ActionGroup(M14);
  G := G^TransformForm(sub<Generic(G)|G.1,G.2>);
  isit, form := SymmetricBilinearForm(sub<Generic(G)|G.1,G.2>); assert isit;
  if IsOdd(q) then
    tform := G.3 * form * Transpose(G.3);
    scal := form[1][14]/tform[1][14];
    isit, rt := IsPower(scal,2); assert isit;
    g3 := G.3 * ScalarMatrix(14, rt);
    G := sub<GL(14,q) | G.1, G.2, g3 >;
  end if;
  if normaliser then return sub< GL(14,q) | G, ScalarMatrix(14,w) >;
  elif q mod 10 in {3,7} then
    if SpinorNorm(G.3,form) ne 0 then
      g3 := Generic(G)!(-G.3);
      G := sub<GL(14,q) | G.1, G.2, g3 >;
    end if;
    assert SpinorNorm(G.3,form) eq 0;
    return G;
  elif special then return G;
  else return sub< GL(14,q) | G.1, G.2 >;
  end if;
end function;

g2qdim14 := function(q:normaliser:=false)
  //G2q <= O^\pm(14,q)
  p := Factorisation(q)[1][1]; assert not p in {2,3};
  w := PrimitiveElement(GF(q));
  G := G2(q);
  M := GModule(G);
  C:=Constituents(TensorProduct(M,M));
  M14 := [c: c in C|Dimension(c) eq 14][1];
  G := ActionGroup(M14);
  G := G^TransformForm(sub<Generic(G)|G.1,G.2>);
  if normaliser then return sub< GL(14,q) | G, ScalarMatrix(14,w) >;
  else return G;
  end if;
end function;

sl3qdim15a := function(q:general:=false)
  local w, S, G, M, T, MM, A;
  assert IsOdd(q);
  w := PrimitiveElement(GF(q));
  G := general select GL(3,q) else SL(3,q);
  M := GModule(G);
  T := SymmetricSquare(SymmetricSquare(M));
  MM := [c : c in Constituents(T) | Dimension(c) eq 15 ][1];
  A := ActionGroup(MM);
  if not general then
    S := ScalarMatrix(15, w^((q-1) div GCD(15,q-1)) );
    return sub< GL(15,q) | A, S >;
  end if;
  return sub< GL(15,q) | A, ScalarMatrix(15,w) >;
end function;

su3qdim15a := function(q:general:=false, normaliser:=false)
  local w, S, G, M, T, MM, A;
  assert IsOdd(q);
  if normaliser then general:=true; end if;
  w := PrimitiveElement(GF(q^2));
  G := general select GU(3,q) else SU(3,q);
  M := GModule(G);
  T := SymmetricSquare(SymmetricSquare(M));
  MM := [c : c in Constituents(T) | Dimension(c) eq 15 ][1];
  A := ActionGroup(MM);
  A := A^TransformForm(A);
  if not general then
    S := ScalarMatrix(15, (w^(q-1))^((q+1) div GCD(15,q+1)) );
    return sub< GL(15,q^2) | A, S >;
  end if;
  if not normaliser then
    return sub< GL(15,q^2) | A, ScalarMatrix(15,w^(q-1)) >;
  end if;
  return sub< GL(15,q^2) | A, ScalarMatrix(15,w) >;
end function;

sl3qdim15b := function(q:general:=false)
  local w, S, G, M, T, MM, A;
  assert IsOdd(q);
  w := PrimitiveElement(GF(q));
  G := general select GL(3,q) else SL(3,q);
  M := GModule(G);
  T := TensorProduct(M,TensorProduct(Dual(M),M));
  MM := [c : c in Constituents(T) | Dimension(c) eq 15 ][1];
  A := ActionGroup(MM);
  if not general then
    S := ScalarMatrix(15, w^((q-1) div GCD(15,q-1)) );
    return sub< GL(15,q) | A, S >;
  end if;
  return sub< GL(15,q) | A, ScalarMatrix(15,w) >;
end function;

su3qdim15b := function(q:general:=false, normaliser:=false)
  local w, S, G, M, T, MM, A;
  assert IsOdd(q);
  if normaliser then general:=true; end if;
  w := PrimitiveElement(GF(q^2));
  G := general select GU(3,q) else SU(3,q);
  M := GModule(G);
  T := TensorProduct(M,TensorProduct(Dual(M),M));
  MM := [c : c in Constituents(T) | Dimension(c) eq 15 ][1];
  A := ActionGroup(MM);
  A := A^TransformForm(A);
  if not general then
    S := ScalarMatrix(15, (w^(q-1))^((q+1) div GCD(15,q+1)) );
    return sub< GL(15,q^2) | A, S >;
  end if;
  if not normaliser then
    return sub< GL(15,q^2) | A, ScalarMatrix(15,w^(q-1)) >;
  end if;
  return sub< GL(15,q^2) | A, ScalarMatrix(15,w) >;
end function;

sl5qdim15 := function(q:general:=false)
  local w, S, G, M, T, MM, A;
  assert IsOdd(q);
  w := PrimitiveElement(GF(q));
  G := general select GL(5,q) else SL(5,q);
  M := GModule(G);
  MM := SymmetricSquare(M);
  A := ActionGroup(MM);
  if not general then
    S := ScalarMatrix(15, w^((q-1) div GCD(15,q-1)) );
    return sub< GL(15,q) | A, S >;
  end if;
  return sub< GL(15,q) | A, ScalarMatrix(15,w) >;
end function;

su5qdim15 := function(q:general:=false, normaliser:=false)
  local w, S, G, M, T, MM, A;
  assert IsOdd(q);
  if normaliser then general:=true; end if;
  w := PrimitiveElement(GF(q^2));
  G := general select GU(5,q) else SU(5,q);
  M := GModule(G);
  MM := SymmetricSquare(M);
  A := ActionGroup(MM);
  A := A^TransformForm(A);
  if not general then
    S := ScalarMatrix(15, (w^(q-1))^((q+1) div GCD(15,q+1)) );
    return sub< GL(15,q^2) | A, S >;
  end if;
  if not normaliser then
    return sub< GL(15,q^2) | A, ScalarMatrix(15,w^(q-1)) >;
  end if;
  return sub< GL(15,q^2) | A, ScalarMatrix(15,w) >;
end function;

l6qdim15 := function(q:general:=false)
  local w, S, G, M, T, MM, A;
  w := PrimitiveElement(GF(q));
  G := general select GL(6,q) else IsEven(q) select SL(6,q) else
     sub< GL(6,q) | SL(6,q), DiagonalMatrix(GF(q),[w^3,1,1,1,1,1]) >;
  M := GModule(G);
  MM := ExteriorSquare(M);
  A := ActionGroup(MM);
  //Make third generator have determinant 1
  if IsOdd(q) and not general then
    A := sub <GL(15,q) | A.1, A.2, A.3*ScalarMatrix(15,w^-1) >;
    assert Determinant(A.3) eq 1;
  end if;
  if not general then
    S := ScalarMatrix(15, w^((q-1) div GCD(15,q-1)) );
    return sub< GL(15,q) | A, S >;
  end if;
  return sub< GL(15,q) | A, ScalarMatrix(15,w) >;
end function;

u6qdim15 := function(q:general:=false, normaliser:=false)
  local w, S, G, M, T, MM, A;
  if normaliser then general:=true; end if;
  w := PrimitiveElement(GF(q^2));
  G := general select GU(6,q) else IsEven(q) select SU(6,q) else
     sub<GL(6,q^2) | SU(6,q),DiagonalMatrix(GF(q^2),[w^3,1,1,1,1,w^(-3*q)])>;
  M := GModule(G);
  MM := ExteriorSquare(M);
  A := ActionGroup(MM);
  //Make third generator have determinant 1
  if IsOdd(q) and not general then
    A := sub <GL(15,q^2) | A.1, A.2, A.3*ScalarMatrix(15,w^(q-1)) >;
    assert Determinant(A.3) eq 1;
  end if;
  A := A^TransformForm(A);
  if not general then
    S := ScalarMatrix(15, (w^(q-1))^((q+1) div GCD(15,q+1)) );
    return sub< GL(15,q^2) | A, S >;
  end if;
  if not normaliser then
    return sub< GL(15,q^2) | A, ScalarMatrix(15,w^(q-1)) >;
  end if;
  return sub< GL(15,q^2) | A, ScalarMatrix(15,w) >;
end function;

l4qdim15 := function(q:special:=false,general:=false,normaliser:=false)
  //l4q = o^+6q <= O(15,q)
  p := Factorisation(q)[1][1]; assert p ne 2;
  w := PrimitiveElement(GF(q));
  G := q mod 4 eq 1 select
   sub< GL(6,q) | OmegaPlus(6,q), SOMinusOmega(6,q,1), GOMinusSO(6,q,1),
                  NormGOMinusGO(6,q,1) >
  else
   sub< GL(6,q) | OmegaPlus(6,q), GOMinusSO(6,q,1), NormGOMinusGO(6,q,1) >;
  G := ActionGroup(ExteriorSquare(GModule(G)));
  G := G^TransformForm(sub<Generic(G)|G.1,G.2>);
  ng := Ngens(G);
  isit, form := SymmetricBilinearForm(sub<Generic(G)|G.1,G.2>); assert isit;
  gg := Determinant(G.(ng-1)) eq -1 select -G.(ng-1) else G.(ng-1);
  tform := G.ng * form * Transpose(G.ng);
  //make G.ng fix form
  scal := form[1][15]/tform[1][15];
  isit, rt := IsPower(scal,2); assert isit;
  gc := G.ng * ScalarMatrix(15, rt);
  gc := Determinant(gc) eq -1 select -gc else gc;
  G := sub< GL(15,q) | [G.i : i in [1..ng-2]] cat [gg, gc] >;
  assert forall{i : i in [1..ng-1] | SpinorNorm(G.i,tform) eq 0};
  if normaliser then return sub< GL(15,q) | G, ScalarMatrix(15,w) >;
  elif special then return G;
  else return sub< GL(15,q) | [G.i : i in [1..ng-1]] >;
  end if;
end function;

u4qdim15 := function(q:special:=false,general:=false,normaliser:=false)
  //u4q = o^-6q <= O(15,q)
  p := Factorisation(q)[1][1]; assert p ne 2;
  w := PrimitiveElement(GF(q));
  G := q mod 4 eq 3 select
   sub< GL(6,q) | OmegaMinus(6,q), SOMinusOmega(6,q,-1), GOMinusSO(6,q,-1),
                  NormGOMinusGO(6,q,-1) >
  else
   sub< GL(6,q) | OmegaMinus(6,q), GOMinusSO(6,q,-1), NormGOMinusGO(6,q,-1) >;
  G := ActionGroup(ExteriorSquare(GModule(G)));
  G := G^TransformForm(sub<Generic(G)|G.1,G.2>);
  ng := Ngens(G);
  isit, form := SymmetricBilinearForm(sub<Generic(G)|G.1,G.2>); assert isit;
  gg := Determinant(G.(ng-1)) eq -1 select -G.(ng-1) else G.(ng-1);
  tform := G.ng * form * Transpose(G.ng);
  //make G.ng fix form
  scal := form[1][15]/tform[1][15];
  isit, rt := IsPower(scal,2); assert isit;
  gc := G.ng * ScalarMatrix(15, rt);
  gc := Determinant(gc) eq -1 select -gc else gc;
  G := sub< GL(15,q) | [G.i : i in [1..ng-2]] cat [gg, gc] >;
  assert forall{i : i in [1..ng-1] | SpinorNorm(G.i,tform) eq 0};
  if normaliser then return sub< GL(15,q) | G, ScalarMatrix(15,w) >;
  elif special then return G;
  else return sub< GL(15,q) | [G.i : i in [1..ng-1]] >;
  end if;
end function;

sl4qdim16 := function(q:general:=false)
  local w, S, G, M, T, MM, A;
  assert Factorisation(q)[1][1] eq 3;
  w := PrimitiveElement(GF(q));
  G := sub < GL(4,q) | SL(4,q), DiagonalMatrix(GF(q),[w,1,1,1]) > ;
  M := GModule(G);
  T := TensorPower(M,3);
  MM := [c : c in Constituents(T) | Dimension(c) eq 16 ][1];
  G := ActionGroup(MM);
  if general then return sub< GL(16,q) | G, ScalarMatrix(16,w) >; end if;
  //get intersection with SL
  o := Order(Determinant(G.3));
  tp := 2^Valuation(o,2);
  g3 := G.3^(o div tp);
  isit, rt := IsPower(Determinant(g3),16);
  if isit then
    g3 := g3 * ScalarMatrix(16,rt^-1);
  else
    assert q mod 4 eq 1;
    isit, rt := IsPower(Determinant(g3^2),16);
    if isit then
      g3 := g3^2 * ScalarMatrix(16,rt^-1);
    else g3 := g3^0;
    end if;
  end if;
  S := ScalarMatrix(16, w^((q-1) div GCD(16,q-1)) );
  return sub< GL(16,q) | G.1, G.2, g3, S >;
end function;

su4qdim16 := function(q:general:=false,normaliser:=false)
  local w, S, G, M, T, MM, A;
  assert Factorisation(q)[1][1] eq 3;
  w := PrimitiveElement(GF(q^2)); z:=w^(q-1);
  G := sub < GL(4,q^2) | SU(4,q), DiagonalMatrix(GF(q^2),[w,1,1,w^(-q)]) > ;
  M := GModule(G);
  T := TensorPower(M,3);
  MM := [c : c in Constituents(T) | Dimension(c) eq 16 ][1];
  G := ActionGroup(MM);
  if normaliser then return sub< GL(16,q^2) |G,ScalarMatrix(16,w) >; end if;
  if general then return sub< GL(16,q^2) |G,ScalarMatrix(16,w^(q-1)) >; end if;
  //get intersection with SU
  o := Order(Determinant(G.3));
  tp := 2^Valuation(o,2);
  g3 := G.3^(o div tp);
  isit, rt := IsPower(Determinant(g3),16);
  assert isit;
  g3 := g3 * ScalarMatrix(16,rt^-1);
  S := ScalarMatrix(16, z^((q+1) div GCD(16,q+1)) );
  return sub< GL(16,q^2) | G.1, G.2, g3, S >;
end function;

l4q2dim16l := function(q:general:=false)
  //(2.)L(4,q^2)(.2 or 4).2 <= L(16,q)
  w:=PrimitiveElement(GF(q^2)); z:=w^(q+1);
  G := sub< GL(4,q^2) | SL(4,q^2), DiagonalMatrix(GF(q^2),[w,1,1,1]) >;
  M:=GModule(G); M1:=ModToQ(M,q);
  T:=TensorProduct(M,M1); 
  assert IsIrreducible(T);
  u := GL(16,q^2)!PermutationMatrix(GF(q^2),
                               Sym(16)!(2,5)(3,9)(4,13)(7,10)(8,14)(12,15));
  //induces field automorphism
  X := sub< GL(16,q^2) | ActionGroup(T), u >;
  iso, G := IsOverSmallerField(X);
  assert iso;
  if general then return sub< GL(16,q) | G, ScalarMatrix(16,z) >;
  else
    //adjust G.3 to get determinant 1
    S := ScalarMatrix(16, z^((q-1) div GCD(16,q-1)) );
    return( sub<Generic(G) | G.1, G.2, G.3^Order(Determinant(G.3)), G.4, S >);
  end if;
end function;

l4q2dim16u := function(q:general:=false, normaliser:=false)
  //(4.)L(4,q^2)(.2 or 4).2 <= U(16,q)
  w:=PrimitiveElement(GF(q^2)); z:=w^(q-1);
  G := sub< GL(4,q^2) | SL(4,q^2), DiagonalMatrix(GF(q^2),[w,1,1,1]) >;
  M:=GModule(G); M1:=ModToQ(M,q);
  T:=TensorProduct(Dual(M),M1); 
  assert IsIrreducible(T);
  u := GL(16,q^2)!PermutationMatrix(GF(q^2),
                               Sym(16)!(2,5)(3,9)(4,13)(7,10)(8,14)(12,15));
  //induces field automorphism
  G := sub< GL(16,q^2) | ActionGroup(T), u >;
  G := G^TransformForm(sub<Generic(G)|G.1,G.2>);
  if normaliser then return sub< GL(16,q^2) | G, ScalarMatrix(16,w) >;
  elif general then return sub< GL(16,q^2) | G, ScalarMatrix(16,z) >;
  else
    //get power of G.3 with determinant 1
    S := ScalarMatrix(16, z^((q+1) div GCD(16,q+1)) );
    return( sub<Generic(G) | G.1, G.2, G.3^Order(Determinant(G.3)), G.4, S >);
  end if;
end function;

sp4qdim16 := function(q:normaliser:=false)
  //Sp4q <= Sp(16,q), p ne 2,5
  assert not Factorisation(q)[1][1] in {2,5};
  w := PrimitiveElement(GF(q));
  G := sub< GL(4,q) | Sp(4,q), NormSpMinusSp(4,q) >; 
  M := GModule(G);
  C:=Constituents(TensorPower(M,3));
  M16 := [c: c in C|Dimension(c) eq 16][1];
  G := ActionGroup(M16);
  G := G^TransformForm(sub<Generic(G)|G.1,G.2>);
  if normaliser then return sub< GL(16,q) | G, ScalarMatrix(16,w) >;
  else return sub< GL(16,q) | G.1,G.2 >;
  end if;
end function;

l2q4dim16 := function(q:normaliser:=false)
  //SL(2,q^4).4 <= O+(16,q);
  assert q ne 2;
  w:=PrimitiveElement(GF(q^4)); z:=w^(1+q+q^2+q^3);
  G := sub< GL(2,q^4) | SL(2,q^4), DiagonalMatrix(GF(q^4),[w,1]) >;
  M:=GModule(G); M1:=ModToQ(M,q); M2:=ModToQ(M1,q); M3:=ModToQ(M2,q); 
  T:=TensorProduct(M,TensorProduct(M1,TensorProduct(M2,M3))); 
  assert IsIrreducible(T);
  u := GL(16,q^4)!PermutationMatrix(GF(q^4),
                             Sym(16)!(2,3,5,9)(4,7,13,10)(8,15,14,12)(6,11));
  //induces field automorphism
  X := sub< GL(16,q^4) | ActionGroup(T), u >;
  iso, G := IsOverSmallerField(X);
  assert iso;
  G := G^TransformForm(sub<Generic(G)|G.1,G.2>);
  if normaliser then return sub< Generic(G) | G, ScalarMatrix(16,z)>; end if;
  return( sub<Generic(G) | G.1,G.2,G.4 >);
end function;

s4q2dim16 := function(q:normaliser:=false)
  //S(4,q^2).2 <= O^+(16,q)
  assert IsOdd(q);
  w:=PrimitiveElement(GF(q^2)); z:=w^(q+1);
  G := sub< GL(4,q^2) | Sp(4,q^2), NormSpMinusSp(4,q^2) >;
  M:=GModule(G); M1:=ModToQ(M,q);
  T:=TensorProduct(M,M1); 
  assert IsIrreducible(T);
  u := GL(16,q^2)!PermutationMatrix(GF(q^2),
                               Sym(16)!(2,5)(3,9)(4,13)(7,10)(8,14)(12,15));
  //induces field automorphism
  X := sub< GL(16,q^2) | ActionGroup(T), u >;
  iso, G := IsOverSmallerField(X);
  assert iso;
  G := G^TransformForm(sub<Generic(G)|G.1,G.2>);
  if normaliser then return sub< GL(16,q) | G, ScalarMatrix(16,z) >;
  else return( sub<Generic(G) | G.1, G.2, G.4 >);
  end if;
end function;
