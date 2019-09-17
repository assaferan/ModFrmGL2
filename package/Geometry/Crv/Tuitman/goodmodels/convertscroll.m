freeze;

import "quadraticforms.m": StandardDiagonalForm, MatrixToQuadric, QuadricToMatrix;


function StandardScroll(F,maroni_inv);
// THIS FUNCTION GENERATES STANDARD (I.E. DETERMINANTAL) EQUATIONS FOR THE RATIONAL NORMAL SURFACE SCROLL
// OVER THE FIELD F OF TYPE maroni_inv
  a := maroni_inv[1];
  b := maroni_inv[2];
  g := a + b + 2;
  R := PolynomialRing(F,g);
  M := ZeroMatrix(R,2,g-2);
  for i in [1..a] do
    M[1][i] := R.i;
    M[2][i] := R.(i+1);
  end for;
  for i in [1..b] do
    M[1][a+i] := R.(a+1+i);
    M[2][a+i] := R.(a+2+i);
  end for;
  return Minors(M,2);
end function;


function RandomScroll(F,maroni_inv);
// THIS FUNCTION GENERATES EQUATIONS FOR THE RATIONAL NORMAL SURFACE SCROLL OVER THE FIELD F OF TYPE
// maroni_inv, BUT IN SCRAMBLED FORM
  scrollstan := StandardScroll(F,maroni_inv);
  R := Parent(scrollstan[1]);
  g := Rank(R);
  numeqs := (g-2)*(g-3) div 2;
  repeat
    M := Matrix(F,g,g,[Random(F) : i in [1..g^2]]); // FOR LINEAR CHANGE OF VARIABLES
  until Determinant(M) ne 0;
  repeat
    N := Matrix(F,numeqs,numeqs,[Random(F) : i in [1..numeqs^2]]); // FOR BASIS CHANGE
  until Determinant(N) ne 0;
  tobeevaluated := [];
  for i in [1..g] do
    tobeevaluated cat:= [&+[M[i][j]*R.j : j in [1..g]]];
  end for;
  otherbasis := [];
  for i in [1..numeqs] do
    otherbasis cat:= [&+[N[i][j]*scrollstan[j] : j in [1..numeqs]]];
    otherbasis[i] := Evaluate(otherbasis[i],tobeevaluated);
  end for;
  return otherbasis;
end function;


function FindDirectrixGenus5(scroll);
// THIS IS AN AUXILIARY FUNCTION FOR THE FUNCTION FindScrollTransfoGenus5 BELOW
// TO BE USED OVER FINITE FIELDS OF ODD CHARACTERISTIC
  R<X,Y,Z,W,V> := Parent(scroll[1]);
  S<L1,L2,L3> := PolynomialRing(R,3);
  F := BaseRing(R);
  repeat
    repeat
      M := Matrix(F,5,5,[Random(F) : i in [1..25]]);
    until Determinant(M) ne 0;
    tobeevd := [M[1][1]*X + M[1][2]*Y + M[1][3]*Z + M[1][4]*W + M[1][5]*V,
                M[2][1]*X + M[2][2]*Y + M[2][3]*Z + M[2][4]*W + M[2][5]*V,
                M[3][1]*X + M[3][2]*Y + M[3][3]*Z + M[3][4]*W + M[3][5]*V,
                M[4][1]*X + M[4][2]*Y + M[4][3]*Z + M[4][4]*W + M[4][5]*V,
                M[5][1]*X + M[5][2]*Y + M[5][3]*Z + M[5][4]*W + M[5][5]*V];
    Q1 := Evaluate(scroll[1],tobeevd);
    Q2 := Evaluate(scroll[2],tobeevd);
    Q3 := Evaluate(scroll[3],tobeevd);
    M1 := QuadricToMatrix(Q1);
    M2 := QuadricToMatrix(Q2);
    M3 := QuadricToMatrix(Q3);
    pdet := Coefficient(CharacteristicPolynomial(L1*M1 + L2*M2 + L3*M3),1);
    PP2 := ProjectivePlane(F);
    C := Curve(PP2,pdet);
    sing := SingularPoints(C);
  until  #sing eq 1;
  return sing[1];
end function;


function FindScrollTransfoGenus5(scroll);
// THIS FUNCTION TAKES AS INPUT A SCROLL OF TYPE (1,2) IN SCRAMBLED FORM
// AND RETURNS A MATRIX M SUCH THAT THE VARIABLE CHANGE
//  [X]         [X]
//  [Y]         [Y]
//  [Z] <-- M * [Z]
//  [W]         [W]
//  [V]         [V]
// PUTS IT IN THE STANDARD FORM GIVEN BY THE MINORS OF
//  [ X V W ]
//  [ Z X Y ]
// USING THE AD HOC METHOD THAT IS DESCRIBED IN ALGORITHM 18
// TO BE USED OVER FINITE FIELDS OF ODD CHARACTERISTIC

  R<X,Y,Z,W,V> := Parent(scroll[1]);
  S<L1,L2,L3> := PolynomialRing(R,3);
  F := BaseRing(R);

  // *************************************************
  // STAGE ONE: MOVE DIRECTRIX TO LINE X = Z = V = 0 *
  // TRANSFORMATION MATRIX WILL BE CALLED Mdir       *
  // *************************************************
  a := FindDirectrixGenus5(scroll);
  repeat
    M := Matrix(F,3,3, Eltseq(a) cat [Random(F) : i in [1..6]]);
  until Determinant(M) ne 0;
  Q1 := M[1][1]*scroll[1] + M[1][2]*scroll[2] + M[1][3]*scroll[3];
  Q2 := M[2][1]*scroll[1] + M[2][2]*scroll[2] + M[2][3]*scroll[3];
  Q3 := M[3][1]*scroll[1] + M[3][2]*scroll[2] + M[3][3]*scroll[3];
  M1 := QuadricToMatrix(Q1);
  repeat d := Random(F); until not IsSquare(d);
  P, r, bool, M := StandardDiagonalForm(M1,d);
  if not bool then
    Q1 := d*Q1;
    M1 := QuadricToMatrix(Q1);
    P, r, bool, M := StandardDiagonalForm(M1,d);
  end if;
  permmatrix := Matrix(F,5,5,[1,0,0,0,0,
                              0,0,0,0,1,
                              0,0,1,0,0,
                              0,0,0,1,0,
                              0,1,0,0,0]);
  Mdir := Transpose(M)*permmatrix;
  tobeevd := [Mdir[1][1]*X + Mdir[1][2]*Y + Mdir[1][3]*Z + Mdir[1][4]*W + Mdir[1][5]*V,
              Mdir[2][1]*X + Mdir[2][2]*Y + Mdir[2][3]*Z + Mdir[2][4]*W + Mdir[2][5]*V,
              Mdir[3][1]*X + Mdir[3][2]*Y + Mdir[3][3]*Z + Mdir[3][4]*W + Mdir[3][5]*V,
              Mdir[4][1]*X + Mdir[4][2]*Y + Mdir[4][3]*Z + Mdir[4][4]*W + Mdir[4][5]*V,
              Mdir[5][1]*X + Mdir[5][2]*Y + Mdir[5][3]*Z + Mdir[5][4]*W + Mdir[5][5]*V];
  Qt1 := Evaluate(Q1,tobeevd);
  Qt2 := Evaluate(Q2,tobeevd);
  Qt3 := Evaluate(Q3,tobeevd);

  //************************************************************************************
  // STAGE TWO: DETERMINE POINTS OF INTERSECTION WITH YW-LINE OF LINE IN PLANE THROUGH:*
  // POINT (0:0:1) ON XZV-PLANE (SHOULD EVENTUALLY PASS THROUGH (0:1)                  *
  // POINT (0:1:0) ON XZV-PLANE (SHOULD EVENTUALLY PASS THROUGH (1:0)                  *
  // POINT (1:1:1) ON XZV-PLANE (SHOULD EVENTUALLY PASS THROUGH (1:1)                  *
  // AND APPLY A TRANSFORMATION PURELY IN THE YW-COORDINATES THAT MOVE THESE TO        *
  // (0:1), (1:0) AND (1:1) RESPECTIVELY                                               *
  // TRANSFORMATION MATRIX WILL BE CALLED Mpts                                         *
  // ***********************************************************************************
  // plane connecting YW-line with (0:0:1) is X = Z = 0
  // plane connecting YW-line with (0:1:0) is X = V = 0
  // plane connecting YW-line with (1:1:1) is X = Z = V
  PP := ProjectiveSpace(F,4);
  YWline := Scheme(PP,[X,Z,V]);
  Sint1 := Scheme(PP,[Qt1,Qt2,Qt3,X,Z]);
  Sint2 := Scheme(PP,[Qt1,Qt2,Qt3,X,V]);
  Sint3 := Scheme(PP,[Qt1,Qt2,Qt3,X-Z,X-V]);
  for irr in IrreducibleComponents(Sint1) do
     intersec := irr meet YWline;
     if Dimension(intersec) eq 0 then
        p1 := Points(intersec)[1];
        break;
     end if;
  end for;
  for irr in IrreducibleComponents(Sint2) do
     intersec := irr meet YWline;
     if Dimension(intersec) eq 0 then p2 := Points(intersec)[1]; break; end if;
  end for;
  for irr in IrreducibleComponents(Sint3) do
     intersec := irr meet YWline;
     if Dimension(intersec) eq 0 then p3 := Points(intersec)[1]; break; end if;
  end for;
  // print "Points of intersection with YW-line found are respectively", p1, p2, p3;
  beta := p1[4]*p3[2] - p1[2]*p3[4];
  alpha := p2[4]*p3[2] - p2[2]*p3[4];
  a := alpha*p1[4]; b := - alpha*p1[2];
  c := beta*p2[4]; d := - beta*p2[2];
  Mpts := Matrix(F,5,5,[1,0,0,0,0,
                        0,a,0,b,0,
                        0,0,1,0,0,
                        0,c,0,d,0,
                        0,0,0,0,1]);
  Mpts := Mpts^(-1);
  tobeevd := [Mpts[1][1]*X + Mpts[1][2]*Y + Mpts[1][3]*Z + Mpts[1][4]*W + Mpts[1][5]*V,
              Mpts[2][1]*X + Mpts[2][2]*Y + Mpts[2][3]*Z + Mpts[2][4]*W + Mpts[2][5]*V,
              Mpts[3][1]*X + Mpts[3][2]*Y + Mpts[3][3]*Z + Mpts[3][4]*W + Mpts[3][5]*V,
              Mpts[4][1]*X + Mpts[4][2]*Y + Mpts[4][3]*Z + Mpts[4][4]*W + Mpts[4][5]*V,
              Mpts[5][1]*X + Mpts[5][2]*Y + Mpts[5][3]*Z + Mpts[5][4]*W + Mpts[5][5]*V];

  Qt1 := Evaluate(Qt1,tobeevd);
  Qt2 := Evaluate(Qt2,tobeevd);
  Qt3 := Evaluate(Qt3,tobeevd);

  //*********************************************************************
  // STAGE THREE: SIMPLIFY THE IDEAL, NO ACTUAL TRANSFORMATION INVOLVED *
  //*********************************************************************

  // REPLACE X^2 BY Z*V
  Qt2rep := R ! 0;
  for t in Terms(Qt2) do
    if Exponents(t) eq [2,0,0,0,0] then
      Qt2rep +:= Coefficients(t)[1]*Z*V;
    else
      Qt2rep +:= t;
    end if;
  end for;
  Qt2 := Qt2rep;
  Qt3rep := R ! 0;
  for t in Terms(Qt3) do
    if Exponents(t) eq [2,0,0,0,0] then
      Qt3rep +:= Coefficients(t)[1]*Z*V;
    else
      Qt3rep +:= t;
    end if;
  end for;
  Qt3 := Qt3rep;

  // FIND COEFFICIENT OF X*Y, MAKE MONIC IN Qt2 AND ELIMINATE FROM Qt3
  lco2 := F ! 0;
  for t in Terms(Qt2) do
    if Exponents(t) eq [1,1,0,0,0] then
      lco2 := Coefficients(t)[1];
    end if;
  end for;
  lco3 := F ! 0;
  for t in Terms(Qt3) do
    if Exponents(t) eq [1,1,0,0,0] then
      lco3 := Coefficients(t)[1];
    end if;
  end for;
  if lco2 eq 0 then
    Qt2rep := Qt3/lco3; Qt3 := Qt2; Qt2 := Qt2rep;
  else
    Qt2 := Qt2/lco2;
    if lco3 ne 0 then Qt3 := Qt3/lco3 - Qt2; end if;
  end if;

  // NOW FIND COEFFICIENT IN X*W, MAKE MONIC IN Qt3 AND ELIMINATE FROM Qt2
  lco2 := F ! 0;
  for t in Terms(Qt2) do
    if Exponents(t) eq [1,0,0,1,0] then
      lco2 := Coefficients(t)[1];
    end if;
  end for;
  lco3 := F ! 0;
  for t in Terms(Qt3) do
    if Exponents(t) eq [1,0,0,1,0] then
      lco3 := Coefficients(t)[1];
    end if;
  end for;
  Qt3 := Qt3/lco3;
  Qt2 := Qt2 - lco2*Qt3;

  // **************************************************************************
  // STAGE FOUR: READ OFF FINAL TRANSFORMATION Y <- L1(X,Z,V), W <- L2(X,Z,V) *
  // TRANSFORMATION MATRIX WILL BE CALLED Mlin                                *
  // **************************************************************************

  sjoY := Derivative(Qt2,X);
  sjoW := Derivative(Qt3,X);
  replY := 2*Y - sjoY;
  replW := 2*W - sjoW;
  aY := 0; bY := 0; cY := 0;
  aW := 0; bW := 0; cW := 0;
  for t in Terms(replY) do
    if Exponents(t) eq [1,0,0,0,0] then
      aY := Coefficients(t)[1];
    end if;
    if Exponents(t) eq [0,0,1,0,0] then
      bY := Coefficients(t)[1];
    end if;
    if Exponents(t) eq [0,0,0,0,1] then
      cY := Coefficients(t)[1];
    end if;
  end for;
  for t in Terms(replW) do
    if Exponents(t) eq [1,0,0,0,0] then
      aW := Coefficients(t)[1];
    end if;
    if Exponents(t) eq [0,0,1,0,0] then
      bW := Coefficients(t)[1];
    end if;
    if Exponents(t) eq [0,0,0,0,1] then
      cW := Coefficients(t)[1];
    end if;
  end for;
  Mlin := Matrix(F,5,5,[1,0,0,0,0,
                        aY,1,bY,0,cY,
                        0,0,1,0,0,
                        aW,0,bW,1,cW,
                        0,0,0,0,1]);
  tobeevd := [Mlin[1][1]*X + Mlin[1][2]*Y + Mlin[1][3]*Z + Mlin[1][4]*W + Mlin[1][5]*V,
              Mlin[2][1]*X + Mlin[2][2]*Y + Mlin[2][3]*Z + Mlin[2][4]*W + Mlin[2][5]*V,
              Mlin[3][1]*X + Mlin[3][2]*Y + Mlin[3][3]*Z + Mlin[3][4]*W + Mlin[3][5]*V,
              Mlin[4][1]*X + Mlin[4][2]*Y + Mlin[4][3]*Z + Mlin[4][4]*W + Mlin[4][5]*V,
              Mlin[5][1]*X + Mlin[5][2]*Y + Mlin[5][3]*Z + Mlin[5][4]*W + Mlin[5][5]*V];
  Qt1 := Evaluate(Qt1,tobeevd);
  Qt2 := Evaluate(Qt2,tobeevd);
  Qt3 := Evaluate(Qt3,tobeevd);
  M := Mdir*Mpts*Mlin;
  
  return M;
end function;


function MaroniIndex(maroni_inv,exps);
// AUXILIARY FUNCTION THAT RETURNS THE INDEX OF THE VARIABLE CORRESPONDING TO x^iy^j 
// WITH [i,j] = exps, WITH RESPECT TO THE MARONI INVARIANTS maroni_inv
  a := maroni_inv[1];
  b := maroni_inv[2];
  i := exps[1];
  j := exps[2];
  if (j eq 1) and (i le a) then
    return i + 1;
  elif (j eq 0) and (i le b) then
    return a + i + 2;
  else 
    return 1;
  end if;
end function;


function ConvertScroll(scroll,maroni_inv);
// THIS FUNCTION TAKES AS INPUT A RATIONAL NORMAL SURFACE SCROLL scroll AND A TYPE maroni_inv = [a,b] 
// AND RETURNS  
// * A BOOLEAN INDICATING WHETHER scroll IS INDEED OF TYPE [a,b] OR NOT
// * - (IF true) A MATRIX M SUCH THAT THE VARIABLE CHANGE
//     [X1]         [X1]
//     [X2]         [X2]
//     [X3] <-- M * [X3]
//     [...]        [...]
//     [Xg]         [Xg]
//    PUTS scroll IN THE STANDARD FORM GIVEN BY THE MINORS OF
//     [ X1 X2 ... Xa     X(a+2) X(a+3) ... X(a+b+1) ]
//     [ X2 X3 ... X(a+1) X(a+3) X(a+4) ... X(a+b+2) ]
//   - (IF false) THE g x g ZERO MATRIX
// WE ASSUME THAT g := a + b + 2 >= 5 AND THAT THE TYPE SATISFIES THE MARONI CONDITIONS
//              a <= b, b <= (2g-2)/3.
// IF g = 5, I.E. IF THE TYPE IS [1,2], THEN OUR AD HOC METHOD FROM ALGORITHM 18 IS 
// INVOKED. THIS WORKS OVER ANY FINITE FIELD OF ODD CHARACTERISTIC.
// IF g >= 6 THEN WE INVOKE SCHICHO'S FUNCTION ParametrizeScroll WHICH MAY THROW AN ERROR
// IN SMALL CHARACTERISTIC, SUCH AS 3, 5, OR MAYBE HIGHER.
// IF THE GIVEN SCROLL IS NOT OF TYPE 

  a := maroni_inv[1];
  b := maroni_inv[2];
  R := Parent(scroll[1]);
  F := BaseRing(R);
  g := Rank(R);
  // CHECK MARONI CONDITIONS
  if (g eq a + b + 2) and (a le b) and (b le (2*g-2)/3) then
    scrollstan := StandardScroll(F,maroni_inv);
    if g eq 5 then
      transfomat := FindScrollTransfoGenus5(scroll);
      changeorderofvariables := Matrix(F,5,5,[0,1,0,0,0,
                                              0,0,0,1,0,
                                              0,0,1,0,0,
                                              1,0,0,0,0,
                                              0,0,0,0,1])^(-1);
      transfomat := transfomat*changeorderofvariables;
    else
      Pgmin1 := ProjectiveSpace(F,g-1);
      P2 := ProjectivePlane(F);
      Rtwo<x,y> := PolynomialRing(F,2);
      print "Naively applying Schicho's Lie algebra implementation (touch wood)...";
      _, phi := ParametrizeScroll(Scheme(Pgmin1,scroll),P2);
      _, phistan := ParametrizeScroll(Scheme(Pgmin1,scrollstan),P2);
      print "Success!";
      transfo := DefiningEquations(Inverse(phistan)*phi);
      transfo := [R ! t : t in transfo];
      evaltrans := [];
      h := hom<R -> Rtwo | [ y*x^i : i in [0..a]] cat [x^i : i in [0..b]]>;
      for t in transfo do
        evaltrans cat:= [h(t)];
      end for;
      gcd := GCD(evaltrans);
      evaltrans := [t div gcd : t in evaltrans];
      cleantrans := [];
      for t in evaltrans do
        cleant := [ F ! 0 : i in [1..g]];
        for ter in Terms(t) do
          c := Coefficients(ter)[1];
          cleant[MaroniIndex([a,b],Exponents(ter))] := c;
        end for;
        cleantrans cat:= cleant;
      end for;  
      transfomat := Matrix(F,g,g,cleantrans);   
    end if;
    // NOW TEST OUTPUT
    tobeevd := [];
    for i in [1..g] do
      linform := R ! 0;
      for j in [1..g] do
        linform +:= transfomat[i][j]*R.j;
      end for;
      tobeevd cat:= [linform];
    end for;
    boolret := Ideal([R ! Evaluate(s,tobeevd) : s in scroll]) eq Ideal([ R ! s : s in scrollstan]);
    if boolret then
      return boolret, transfomat;
    else
      return boolret, ZeroMatrix(F,g,g);
    end if;
  else
    return "Maroni conditions not satisfied.";
  end if;
end function;
