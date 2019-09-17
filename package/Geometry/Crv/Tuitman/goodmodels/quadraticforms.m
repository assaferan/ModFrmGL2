freeze;

//////////////////////////////////////////////////////// 
// This code is part of the goodmodels MAGMA library  //
//                                                    //
// copyright (c) 2016 Jan Tuitman and Wouter Castryck //
////////////////////////////////////////////////////////


function QuadricToMatrix(Q); 

  // RETURNS THE SYMMETRIC MATRIX CORRESPONDING TO A 
  // GIVEN QUADRATIC HOMOGENEOUS FORM OVER A FIELD OF 
  // CHARACTERISTIC NOT TWO
  
  R := Parent(Q);
  n := Rank(R);
  F := BaseRing(R);
  M := Matrix(F,n,n,[0 : i in [1..n^2]]);
  for t in Terms(Q) do
    exps := Exponents(t);
    coef := Coefficients(t)[1];
    i := Index(exps,2);
    if i eq 0 then
      i := Index(exps,1);
      j := Index(Remove(exps,i),1) + 1;
      M[i][j] := coef/2; M[j][i] := coef/2;
    else M[i][i] := coef;
    end if;
  end for;
  return M;
end function;


function MatrixToQuadric(M); 

  // RETURNS THE QUADRATIC HOMOGENEOUS FORM CORRESPONDING 
  // TO A GIVEN SYMMETRIC MATRIX OVER A FIELDS OF 
  // CHARACTERISTIC NOT TWO
  
  MSpace := Parent(M);
  n := Degree(MSpace);
  F := BaseRing(MSpace);
  R := PolynomialRing(F,n);
  Q := 0;
  for i in [1..n] do
    Q +:= M[i][i]*R.i^2;
    for j in [(i+1)..n] do
      Q +:= 2*M[i][j]*R.i*R.j;
    end for;
  end for;
  return Q;
end function;


function FindNormalizedVector(V,d);
// GIVEN AN INNER PRODUCT SPACE V OF DIMENSION n > 0 
// OVER A FINITE FIELD OF CHARACTERISTIC NOT TWO, ALONG 
// WITH A NONSQUARE FIELD ELEMENT d, RETURN 
// * A VECTOR OF NORM 1 IF n > 1 (ALWAYS EXISTS),
// * A VECTOR OF NORM 1 IF n = 1 AND THE INNER PRODUCT 
// *                MATRIX HAS A SQUARE DETERMINANT
// * A VECTOR OF NORM d IF n = 1 AND THE INNER PRODUCT 
// *                MATRIX HAS A NONSQUARE DETERMINANT  
  if IsSquare(d) then return "d is a square.";
  else
    n := Dimension(V);
    B := Basis(V);
    F := BaseRing(V);
    S<x> := PolynomialRing(F);
    if n gt 1 then
      repeat
        a := Random(CartesianPower(F, n-1));
        a_vec := &+[ a[i-1]*B[i] : i in [2..n] ];
        quadpol := Norm(B[1])*x^2 + 2*InnerProduct(B[1],a_vec)*x + Norm(a_vec);
        hasroot, root := HasRoot(quadpol - 1);   
      until hasroot;
      return root*B[1] + a_vec;
    else
      a := InnerProduct(B[1],B[1]);
      if IsSquare(a) then 
        return Sqrt(a^(-1))*B[1]; 
      else 
        return Sqrt(d*a^(-1))*B[1]; end if;
    end if;
  end if;
end function;


function GiveOrthoPseudonormalBasis(V,d);
// WE TAKE AS INPUT AN INNER PRODUCT SPACE OF 
// DIMENSION n OVER A FINITE FIELD OF CHARACTERISTIC 
// NOT TWO, ALONG WITH AND A NONSQUARE ELEMENT d. 
// WE RETURN A "PSEUDO-ORTHONORMAL" BASIS v_1, ..., 
// v_n OF THIS VECTOR SPACE, BY WHICH WE MEAN AN 
// ORTHOGONAL BASIS WITH THE EXTRA PROPERTY THAT 
// <v_i, v_i> = 1 FOR i = 1 TO n - 1. AS FOR i = n, 
// WE EITHER ENSURE THAT <v_n, v_n> = 1 OR 
// <v_n, v_n> = d, DEPENDING ON WHETHER THE 
// DETERMINANT OF M IS A SQUARE OR NOT.

// ***********************************
// *** WARNING: RECURSIVE FUNCTION ***
// ***********************************

  if Dimension(V) gt 0 then
    firstvector := FindNormalizedVector(V,d);
    U := sub<V | firstvector>;
    W := OrthogonalComplement(V,U);
    return [firstvector] cat $$(W,d);
  else 
    return [];
  end if;
end function;


function ExtendMatrix(M,n);
// RETURNS AN (nxn)-MATRIX HAVING M AS AN UPPER-LEFT 
// BLOCK, WITH ONES ON THE REMAINING DIAGONAL PLACES 
// AND ZEROES ELSEWHERE
  MSpace := Parent(M);
  F := BaseRing(MSpace);
  r := Degree(MSpace);
  if r gt n then 
    return "Dimension of first argument too big.";
  else
    P := [];
    for i in [1..r] do
      P cat:= (Eltseq(M[i]) cat [F ! 0 : i in [1..(n-r)]]);
    end for;
    for i in [1..(n-r)] do
      P cat:= [F! 0 : i in [1..n]];
    end for;
    N := Matrix(F,n,n,P);
    for i in [(r+1)..n] do
      N[i][i] := 1;
    end for;
    return N;
  end if;
end function;


function StandardDiagonalForm(M,d);
// WE TAKE AS INPUT THE SYMMETRIC MATRIX M CORRESPONDING 
// TO A HOMOGENEOUS QUADRATIC FORM Q IN n VARIABLES, 
// ALONG WITH A NONSQUARE ELEMENT d. LET r BE THE RANK 
// OF M. THEN WE RETURN A MATRIX P SUCH THAT P*M*P^trans 
// IS A DIAGONAL MATRIX WITH
// * 1'S AS ITS FIRST r - 1 ENTRIES, 
// * EITHER 1 OR d AS ITS rTH ENTRY
// * O'S AS ITS LAST n - r ENTRIES.
// IT ALSO RETURNS THE RANK, AND A BOOLEAN INDICATING 
// WHETHER THE rTH ENTRY IS 1 OR NOT. FINALLY, IF THE 
// ENTRY IS 1 AND THE RANK IS THREE OR FOUR, THEN WE 
// RETURN A MATRIX TRANSFORMING OUR QUADRIC INTO ONE 
// OF THE STANDARD FORMS X1*X2 - X0^2, X1*X2 - X0*X3. 
// IN THE OTHER CASES THE UNIT MATRIX IS RETURNED.
  if IsSquare(d) then 
    return "d is a square.";
  else
    MSpace := Parent(M);
    F := BaseRing(MSpace);
    n := Degree(MSpace);
    Diag, Pdiag, rank := Diagonalization(M); 
      // MAGMA'S Diagonalization AUTOMATICALLY PUTS THE ZEROS 
      // AT THE END. WE CONTINUE WITH THE NONZERO PART AND CALL
      // IT fullrankM.
    fullrankM := DiagonalMatrix(F,rank,[Diag[i][i] : i in [1..rank]]);
    isasquare := IsSquare(Determinant(fullrankM));
    V := VectorSpace(F,rank,fullrankM);
    bas := GiveOrthoPseudonormalBasis(V,d);
    P := Matrix(F,rank,rank,&cat[Eltseq(bas[i]) : i in [1..rank]]);
    P := ExtendMatrix(P,n);
    P := P*Pdiag;
    if rank eq 3 and isasquare then
      M3 := Matrix(F,3,3,[-1,0,0,0,0,1/2,0,1/2,0]);
      V3 := VectorSpace(F,3,M3);
      bas3 := GiveOrthoPseudonormalBasis(V3,d);
      P3 := Matrix(F,3,3,&cat[Eltseq(bas3[i]) : i in [1..3]]);
      P3 := ExtendMatrix(P3,n);
      Pstand := P3^(-1)*P;
    elif rank eq 4 and isasquare then
      M4 := Matrix(F,4,4,[0,0,0,-1/2,0,0,1/2,0,0,1/2,0,0,-1/2,0,0,0]);
      V4 := VectorSpace(F,4,M4);
      bas4 := GiveOrthoPseudonormalBasis(V4,d);
      P4 := Matrix(F,4,4,&cat[Eltseq(bas4[i]) : i in [1..4]]);
      P4 := ExtendMatrix(P4,n);
      Pstand := P4^(-1)*P;
    else Pstand := IdentityMatrix(F,n);
    end if;
    return P, rank, isasquare, Pstand;
  end if;
end function;
