freeze;

//////////////////////////////////////////////////////// 
// This code is part of the goodmodels MAGMA library  //
//                                                    //
// copyright (c) 2016 Jan Tuitman and Wouter Castryck //
////////////////////////////////////////////////////////


import "auxpolys.m": check_model_p, check_model_q;
import "quadraticforms.m": MatrixToQuadric, QuadricToMatrix, StandardDiagonalForm;
import "convertscroll.m": FindScrollTransfoGenus5;

intrinsic RandomGenus5CurveTrigonal(F::Fld) -> Crv
{
  A trigonal curve of genus 5 in the affine plane over the finite field F.
}

  R<x,y>:=PolynomialRing(F,2);
  M:=[y^3,y^3*x,y^3*x^2,y^2,y^2*x,y^2*x^2,y^2*x^3,y,y*x,y*x^2,y*x^3,y*x^4,1,x,x^2,x^3,x^4,x^5];

  done:=false;
  while not done do
    f:=R!0;
    for i:=1 to #M do
      f:=f+Random(F)*M[i];
    end for;

    A2:=AffineSpace(F,2);
    X:=Scheme(A2,f);
    if IsIrreducible(X) and (Dimension(X) eq 1) then
      C:=Curve(X);
      if (Genus(C) eq 5) then
        done:=true;
      end if;
    end if;
  end while;

  return C;

end intrinsic;


find_point_genus5_trigonal:=function(f)

  // f is a polynomial in Fq[x,y] with Newton polygon given by
  // the convex hull of the points [0,0],[4,0],[2,3] and [0,3]. 
  // This function tries to find an affine point P such that 
  // f(P)=0 possibly after transforming f to map the points
  // at infinity to affine points. This is guaranteed to work 
  // if q>89.

  R<x,y>:=Parent(f);
  Fq:=BaseRing(R);
  S<w>:=PolynomialRing(Fq);

  done:=false;

  while not done do // to avoid infinite loop apply only for q>89
    x0:=Random(Fq);
    poly:=Evaluate(f,[x0,w]);
    zeros:=Roots(poly);
    if #zeros gt 0 then
      done:=true;
      r:=Random(1,#zeros);
      y0:=zeros[r][1]; 
      P:=[x0,y0];
    else
      f:=Numerator(x^5*Evaluate(f,[1/x,y/x]));
    end if;
  end while;

 return f,P;
  
end function;


lift_genus5_trigonal:=function(f)

  // naive lift to characteristic zero

  Z:=IntegerRing(); 
  Fq:=BaseRing(Parent(f));
  q:=#Fq;

  Fqx:=PolynomialRing(Fq);
  Fqxy:=PolynomialRing(Fqx);
  f:=Evaluate(f,[Fqx.1,Fqxy.1]);

  if IsPrime(q) then              
    S<x>:=PolynomialRing(RationalField());
    R<y>:=PolynomialRing(S);
    h:=R!0;
    for i:=0 to Degree(f) do
      poly:=Coefficient(f,i);
      for j:=0 to Degree(poly) do
        h:=h+(Z!Coefficient(poly,j))*y^i*x^j;
      end for;
    end for;
    lc:=LeadingCoefficient(h);
    h:=Numerator(lc^(Degree(h)-1)*Evaluate(h,y/lc));
    succes,W0,Winf:=check_model_p(h,q);
    if succes then
      return h,W0,Winf;
    end if;
  else // q is not prime
    n:=Degree(Fq);
    p:=Characteristic(Fq);
    m:=PolynomialRing(IntegerRing())!DefiningPolynomial(FiniteField(p^n));
    K<a>:=NumberField(m);
    S<x>:=PolynomialRing(K);
    R<y>:=PolynomialRing(S);
    h:=R!0;
    for i:=0 to Degree(f) do
      poly:=Coefficient(f,i);
      for j:=0 to Degree(poly) do
        coefs:=Eltseq(Coefficient(poly,j));
        for k:=1 to n do
          h:=h+(Z!coefs[k])*a^(k-1)*x^j*y^i;
        end for;
      end for;
    end for;
    lc:=LeadingCoefficient(h);
    h:=Numerator(lc^(Degree(h)-1)*Evaluate(h,y/lc));

    succes,W0,Winf:=check_model_q(h,p,n);
    if succes then
      return h,W0,Winf;
    end if;
  end if;

  return 0,0,0; 
 
end function;


optimal_model_genus5_trigonal:=function(S21,S22,S23,S31,S32)

  // S21,S22,S23 are quadrics and S31,S32 are cubics in 5 variables
  // over a finite field Fq defining a trigonal curve of genus 5.  
  // This function tries to find an efficient lift to characteristic
  // zero of this curve for use in pcc_p and pcc_q. If unsuccesful, 
  // returns 0.

  R<X,Y,Z,V,W>:=Parent(S21);
  Fq:=BaseRing(R);
  q:=#Fq;

  scroll:=[S21,S22,S23];
  M:=FindScrollTransfoGenus5(scroll);
 
  tobeevd := [M[1][1]*X + M[1][2]*Y + M[1][3]*Z + M[1][4]*W + M[1][5]*V,
              M[2][1]*X + M[2][2]*Y + M[2][3]*Z + M[2][4]*W + M[2][5]*V,
              M[3][1]*X + M[3][2]*Y + M[3][3]*Z + M[3][4]*W + M[3][5]*V,
              M[4][1]*X + M[4][2]*Y + M[4][3]*Z + M[4][4]*W + M[4][5]*V,
              M[5][1]*X + M[5][2]*Y + M[5][3]*Z + M[5][4]*W + M[5][5]*V];

  S21:=Evaluate(S21,tobeevd); S22:=Evaluate(S22,tobeevd); S23:=Evaluate(S23,tobeevd); 
  S31:=Evaluate(S31,tobeevd); S32:=Evaluate(S32,tobeevd);

  R<x,y>:=PolynomialRing(Fq,2);
  f1:=Evaluate(S31,[x,y,1,x^2,x*y]); f2:=Evaluate(S32,[x,y,1,x^2,x*y]); f:=GCD(f1,f2);

  S<w>:=PolynomialRing(Fq);
  finf:=S!Coefficients(Coefficient(f,2,3),1);
  zeros:=Roots(finf);
  for i:=1 to #zeros do
    f:=Evaluate(f,[x+zeros[i][1],y]);
    f:=Numerator(x^5*Evaluate(f,[1/x,y/x]));
    Q,W0,Winf:=lift_genus5_trigonal(f);
    if Q ne 0 then
      vprint Tuitman, 1: "Found a good lift and succeeded in reducing the degree in x\n";
      return Q,W0,Winf;
    end if;
  end for;
  
  if q gt 89 then
    for i:=1 to 100 do
      f,P:=find_point_genus5_trigonal(f);
      dfdx:=Derivative(f,1);
      dfdy:=Derivative(f,2);
      a:=Evaluate(dfdx,P);
      b:=Evaluate(dfdy,P);
      f:=Evaluate(f,[x+P[1],y+P[2]]);
      if b ne 0 then
        c:=-a/b;
        f:=Evaluate(f,[x,y+c*x]); 
      end if;
      f:=Numerator(x^5*Evaluate(f,[1/x,y/x]));
      Q,W0,Winf:=lift_genus5_trigonal(f);
      if Q ne 0 then
        vprint Tuitman, 1: "Found a good lift and succeeded in reducing the degree in x\n";
        return Q,W0,Winf;
      end if;
    end for;
  end if;
   
  Q,W0,Winf:=lift_genus5_trigonal(f);
  if Q ne 0 then
    vprint Tuitman, 1: "Found a good lift but did not succeed in reducing the degree in x\n";
  end if;

  return Q,W0,Winf;

end function;


intrinsic RandomGenus5CurveNonTrigonal(F:FldFin) -> Crv
{ 
  A non-trigonal curve of genus 5 in P^4 over the finite field F
} 

  M := Matrix(F,5,5,[0 : i in [1..25]]);
  MSpace := Parent(M);
  R<X0,X1,X2,X3,X4> := PolynomialRing(F,5);
  PP := ProjectiveSpace(F,4);
  repeat
    genus := 0;
    M1 := Random(MSpace); 
    M2 := Random(MSpace); 
    M3 := Random(MSpace);
    Q1 := R ! MatrixToQuadric(M1); 
    Q2 := R ! MatrixToQuadric(M2); 
    Q3 := R ! MatrixToQuadric(M3);
    S := Scheme(PP,[Q1,Q2,Q3]);
    if IsIrreducible(S) and IsReduced(S) then
      if Dimension(S) eq 1 then
        if Genus(Curve(S)) eq 5 then 
          genus := 5; 
        end if;
      end if;
    end if;    
  until genus eq 5;

  return Curve(S);
end intrinsic;


lift_genus5_nontrigonal_chi_zero:=function(Q1,Q2,Q3:alternative_Winf:=false)

  // Q1,Q2,Q3 are 3 quadrics in 5 variables that define a
  // smooth curve of genus 5. This function lifts this curve
  // to characteristic zero and projects to obtain a (singular)
  // plane model. If this model is valid input for pcc_p or
  // pcc_q, then it it returned, otherwise the output is 0.
  // case: chi=0

  Z:=IntegerRing();
  T:=Parent(Q1);
  Fq:=BaseRing(T);
  q:=#Fq;

  if IsPrime(q) then
    
    R:=PolynomialRing(IntegerRing(),5);
    S:=PolynomialRing(RationalField(),5);
    
    Q1char0:=S.3*S.4-S.1^2; Q2char0:=S!(R!Q2); Q3char0:=S!(R!Q3);
    res:=Resultant(Q2char0,Q3char0,S.5);
    f:=Evaluate(res,[S.1*S.3,S.2*S.3,S.3^2,S.1^2,0]);

    S<x>:=PolynomialRing(RationalField());
    R<y>:=PolynomialRing(S);
    h:=Evaluate(f,[x,y,1,0,0]);

    lc:=LeadingCoefficient(h);
    h:=Numerator(lc^(Degree(h)-1)*Evaluate(h,y/LeadingCoefficient(h)));

    succes,W0,Winf:=check_model_p(h,q);
    if succes then
      return h,W0,Winf;
    end if;

  else // q is not prime
    
    n:=Degree(Fq);
    p:=Characteristic(Fq);
    m:=PolynomialRing(IntegerRing())!DefiningPolynomial(FiniteField(p^n));
    K<a>:=NumberField(m);
    R:=PolynomialRing(K,5);
    
    Q:=[Q1,Q2,Q3];
    Qchar0:=[];
    Qchar0[1]:=R.3*R.4-R.1^2;
    for i:=2 to 3 do
      C:=Coefficients(Q[i]);
      terms:=Terms(Q[i]);
      QiK:=R!0;
      for i:=1 to #C do
        E:=Exponents(terms[i]);
        for j:=1 to n do
          QiK:=QiK+(Z!Eltseq(C[i])[j])*a^(j-1)*R.1^E[1]*R.2^E[2]*R.3^E[3]*R.4^E[4]*R.5^E[5];
        end for;
      end for;
      Qchar0[i]:=QiK;
    end for;

    res:=Resultant(Qchar0[2],Qchar0[3],R.5);
    f:=Evaluate(res,[R.1*R.3,R.2*R.3,R.3^2,R.1^2,0]);

    S<x>:=PolynomialRing(K);
    R<y>:=PolynomialRing(S);
    h:=Evaluate(f,[x,y,1,0,0]);

    lc:=LeadingCoefficient(h);
    h:=Numerator(lc^(Degree(h)-1)*Evaluate(h,y/LeadingCoefficient(h)));

    succes,W0,Winf:=check_model_q(h,p,n:alternative_Winf:=alternative_Winf);
    if succes then
      return h,W0,Winf;
    end if;
     
  end if;

  return 0,0,0;

end function;


lift_genus5_nontrigonal_chi_one:=function(Q1,Q2,Q3:alternative_Winf:=false);

  // Q1,Q2,Q3 are 3 quadrics in 5 variables that define a
  // smooth curve of genus 5. This function lifts this curve
  // to characteristic zero and projects to obtain a (singular)
  // plane model. If this model is valid input for pcc_p or
  // pcc_q, then it it returned, otherwise the output is 0.
  // case: chi=1

  Z:=IntegerRing();
  T:=Parent(Q1);
  Fq:=BaseRing(T);
  q:=#Fq;

  if IsPrime(q) then
    
    R:=PolynomialRing(IntegerRing(),5);
    S:=PolynomialRing(RationalField(),5);
    
    Q1char0:=S.1*S.2-S.3*S.4; Q2char0:=S!(R!Q2); Q3char0:=S!(R!Q3);
    
    res:=Resultant(Q2char0,Q3char0,S.5);
    f:=Evaluate(res,[S.1*S.4,S.2*S.3,S.3*S.4,S.1*S.2,0]);

    S<x>:=PolynomialRing(RationalField());
    R<y>:=PolynomialRing(S);
    h:=Evaluate(f,[x,y,1,1,0]);

    lc:=LeadingCoefficient(h);
    h:=Numerator(lc^(Degree(h)-1)*Evaluate(h,y/LeadingCoefficient(h)));

    succes,W0,Winf:=check_model_p(h,q);
    if succes then
      return h,W0,Winf;
    end if;

  else // q is not prime
    
    n:=Degree(Fq);
    p:=Characteristic(Fq);
    m:=PolynomialRing(IntegerRing())!DefiningPolynomial(FiniteField(p^n));
    K<a>:=NumberField(m);
    R:=PolynomialRing(K,5);
    
    Q:=[Q1,Q2,Q3];
    Qchar0:=[];
    Qchar0[1]:=R.1*R.2-R.3*R.4;
    for i:=2 to 3 do
      C:=Coefficients(Q[i]);
      terms:=Terms(Q[i]);
      QiK:=R!0;
      for i:=1 to #C do
        E:=Exponents(terms[i]);
        for j:=1 to n do
          QiK:=QiK+(Z!Eltseq(C[i])[j])*a^(j-1)*R.1^E[1]*R.2^E[2]*R.3^E[3]*R.4^E[4]*R.5^E[5];
        end for;
      end for;
      Qchar0[i]:=QiK;
    end for;

    res:=Resultant(Qchar0[2],Qchar0[3],R.5);
    f:=Evaluate(res,[R.1*R.4,R.2*R.3,R.3*R.4,R.1*R.2,0]);

    S<x>:=PolynomialRing(K);
    R<y>:=PolynomialRing(S);
    h:=Evaluate(f,[x,y,1,1,0]);

    lc:=LeadingCoefficient(h);
    h:=Numerator(lc^(Degree(h)-1)*Evaluate(h,y/LeadingCoefficient(h)));

    succes,W0,Winf:=check_model_q(h,p,n:alternative_Winf:=alternative_Winf);
    if succes then
      return h,W0,Winf;
    end if;
     
  end if;

  return 0,0,0;

end function;


convert_coords:=function(P)

  // Consider the Segre embedding P^1xP^1 -> P^3 and let
  // P be a point in the image. This function returns its
  // inverse, i.e. bihomogeneous coordinates for P on P^1xP^1.

  if P[1] ne 0 then
    return [1,P[4]/P[1],P[3]/P[1],1];
  elif P[2] ne 0 then
    return [P[4]/P[2],1,1,P[3]/P[2]];
  elif P[3] ne 0 then
    return [P[1]/P[3],P[2]/P[3],1,1];
  else
    return [1,1,P[2]/P[4],P[1]/P[4]];
  end if;

end function;


move_P_to_infty_infty:=function(f,P)

  // f is a bihomogeneous polynomial and P in P^1xP^1 a
  // zero of f. This function returns that automorphism
  // AxB of P^1xP^1 that maps P to ([1:0],[1:0]).

  R<x,y,z,w>:=Parent(f);
  Fq:=BaseRing(R);

  if P[1] eq 0 then
    A:=Matrix(Fq,[[0,1],[1/P[3],0]]);
  else
    A:=Matrix(Fq,[[1/P[1],-P[3]/P[1]],[0,1]]);
  end if;  

  if P[2] eq 0 then
    B:=Matrix(Fq,[[0,1],[1/P[4],0]]);
  else
    B:=Matrix(Fq,[[1/P[2],-P[4]/P[2]],[0,1]]);
  end if; 

  return A,B;
 
end function;


optimal_model_genus5_nontrigonal:=function(Q1,Q2,Q3:alternative_Winf:=false)

  // Q1,Q2,Q3 are quadrics in 5 variables over a finite field Fq,
  // that define a smooth curve of genus 5 in P^4. This function 
  // tries to find an efficient lift to characteristic zero for 
  // use in pcc_p and pcc_q. If unsuccesful, returns 0.

  M1 := QuadricToMatrix(Q1); M2 := QuadricToMatrix(Q2); M3 := QuadricToMatrix(Q3);
  MSpace := Parent(M1);
  T:=Parent(Q1);

  n := Degree(MSpace);
  Fq := BaseRing(MSpace);
  R<x,y,z> := PolynomialRing(Fq,3);
  S<Z> := PolynomialRing(Fq);
  M1baseext := Matrix(R,n,n,Eltseq(M1)); M2baseext := Matrix(R,n,n,Eltseq(M2)); M3baseext := Matrix(R,n,n,Eltseq(M3));
  disc:= Determinant(x*M1baseext + y*M2baseext + z*M3baseext);
  P2:=ProjectiveSpace(Fq,2);
  P3<t0,t1,t2,t3>:=ProjectiveSpace(Fq,3);
  disc_curve:=Scheme(P2,disc);
  V := VectorSpace(Fq,3);

  // find a non-square in Fq:

  repeat
    d := Random(Fq);
  until not IsSquare(d);

  // try singular points on discriminant curve:
  
  sing:=SingularPoints(disc_curve);

  for i:=1 to #sing do
    alpha:=sing[i][1]; beta:=sing[i][2]; gamma:=sing[i][3];
    vec1:= V ! [alpha, beta, gamma];
    vec := ExtendBasis([vec1],V);  
    M1new := vec[1][1]*M1 + vec[1][2]*M2 + vec[1][3]*M3; M2new := vec[2][1]*M1 + vec[2][2]*M2 + vec[2][3]*M3; M3new := vec[3][1]*M1 + vec[3][2]*M2 + vec[3][3]*M3;
    P, rank, isasquare, Pstand := StandardDiagonalForm(M1new,d);
    if not isasquare then
      M1new:=d*M1new;
      P, rank, isasquare, Pstand := StandardDiagonalForm(M1new,d);
    end if;
    M1trans := Pstand*M1new*Transpose(Pstand);   M2trans := Pstand*M2new*Transpose(Pstand);   M3trans := Pstand*M3new*Transpose(Pstand);
    Q1trans := T!MatrixToQuadric(M1trans);       Q2trans := T!MatrixToQuadric(M2trans);       Q3trans := T!MatrixToQuadric(M3trans);  
    
    // swap X1 <-> X3
    Q1trans:=Evaluate(Q1trans,[T.1,T.4,T.3,T.2,T.5]);
    Q2trans:=Evaluate(Q2trans,[T.1,T.4,T.3,T.2,T.5]);
    Q3trans:=Evaluate(Q3trans,[T.1,T.4,T.3,T.2,T.5]);     
    
    f,W0,Winf:=lift_genus5_nontrigonal_chi_zero(Q1trans,Q2trans,Q3trans:alternative_Winf:=alternative_Winf); 
    if f ne 0 then
      vprint Tuitman, 1: "Found a good lift with chi equal to zero\n";
      return f,W0,Winf; 
    end if;
  end for;

  // try finding point on discriminant curve with chi(P)=1

  best:=0;    // best model found so far 
  quality:=0; // 0 if no good model yet, 1 if good model without rational node, 2 if good model with rational node

  for i:=1 to 100 do 
    if quality lt 2 then
      done:=false;
      count:=0;
      while (not done) and (count lt 100) do                         // try 100 random pairs of (alpha,beta) to find a point
        alpha := Random(Fq); beta := Random(Fq);
        subst_map := hom<R->S | [alpha,beta,Z]>;
        hasaroot, gamma := HasRoot(subst_map(disc));
        if hasaroot and (alpha ne 0 or beta ne 0 or gamma ne 0) then // P = [alpha:beta:gamma] lies on discriminant curve
          done:=true;
        end if;
        count:=count+1;
      end while;   

      // check whether chi(P)=1, if so transform the quadrics, and try to lift 
    
      if done then
        vec1 := V ! [alpha, beta, gamma];
        vec := ExtendBasis([vec1],V);    
        M1new := vec[1][1]*M1 + vec[1][2]*M2 + vec[1][3]*M3;
        M2new := vec[2][1]*M1 + vec[2][2]*M2 + vec[2][3]*M3;
        M3new := vec[3][1]*M1 + vec[3][2]*M2 + vec[3][3]*M3;
        P, rank, isasquare, Pstand := StandardDiagonalForm(M1new,d);
        if (rank eq 4) and isasquare then
          M1trans := Pstand*M1new*Transpose(Pstand); M2trans := Pstand*M2new*Transpose(Pstand); M3trans := Pstand*M3new*Transpose(Pstand);
          Q1trans := T!MatrixToQuadric(M1trans);     Q2trans := T!MatrixToQuadric(M2trans);     Q3trans := T!MatrixToQuadric(M3trans);

          // swap X0 <-> X2
          Q1trans:=Evaluate(Q1trans,[T.3,T.2,T.1,T.4,T.5]); 
          Q2trans:=Evaluate(Q2trans,[T.3,T.2,T.1,T.4,T.5]); 
          Q3trans:=Evaluate(Q3trans,[T.3,T.2,T.1,T.4,T.5]); 
          
          Res:=Resultant(Q2trans,Q3trans,T.5);  

          X:=Scheme(P3,[Evaluate(Res,[t0,t1,t2,t3,0]),Evaluate(Q1trans,[t0,t1,t2,t3,0])]);
          sing:=SingularPoints(X);
          
          if #sing gt 0 then     // the projected curve has a rational node
            P:=convert_coords(sing[1]);
            Q:=Evaluate(Res,[t0*t3,t1*t2,t2*t3,t0*t1,0]);
            A,B:=move_P_to_infty_infty(Q,P);
           
            C:=Matrix(Fq,[[A[1,1]*B[2,2],A[1,2]*B[2,1],A[1,2]*B[2,2],A[1,1]*B[2,1]],
                          [A[2,1]*B[1,2],A[2,2]*B[1,1],A[2,2]*B[1,2],A[2,1]*B[1,1]],
                          [A[2,1]*B[2,2],A[2,2]*B[2,1],A[2,2]*B[2,2],A[2,1]*B[2,1]],
                          [A[1,1]*B[1,2],A[1,2]*B[1,1],A[1,2]*B[1,2],A[1,1]*B[1,1]]]);
            D:=C^(-1);
            Q1trans:=Evaluate(Q1trans,[D[1,1]*T.1+D[2,1]*T.2+D[3,1]*T.3+D[4,1]*T.4,D[1,2]*T.1+D[2,2]*T.2+D[3,2]*T.3+D[4,2]*T.4,
                                         D[1,3]*T.1+D[2,3]*T.2+D[3,3]*T.3+D[4,3]*T.4,D[1,4]*T.1+D[2,4]*T.2+D[3,4]*T.3+D[4,4]*T.4,T.5]);
            Q2trans:=Evaluate(Q2trans,[D[1,1]*T.1+D[2,1]*T.2+D[3,1]*T.3+D[4,1]*T.4,D[1,2]*T.1+D[2,2]*T.2+D[3,2]*T.3+D[4,2]*T.4,
                                         D[1,3]*T.1+D[2,3]*T.2+D[3,3]*T.3+D[4,3]*T.4,D[1,4]*T.1+D[2,4]*T.2+D[3,4]*T.3+D[4,4]*T.4,T.5]);
            Q3trans:=Evaluate(Q3trans,[D[1,1]*T.1+D[2,1]*T.2+D[3,1]*T.3+D[4,1]*T.4,D[1,2]*T.1+D[2,2]*T.2+D[3,2]*T.3+D[4,2]*T.4,
                                         D[1,3]*T.1+D[2,3]*T.2+D[3,3]*T.3+D[4,3]*T.4,D[1,4]*T.1+D[2,4]*T.2+D[3,4]*T.3+D[4,4]*T.4,T.5]);

            // some rescaling:
            Q1trans:=Q1trans/MonomialCoefficient(Q1trans,T.1*T.2);
            a2:=MonomialCoefficient(Q2trans,T.4*T.4); a3:=MonomialCoefficient(Q3trans,T.4*T.4);
            b2:=MonomialCoefficient(Q2trans,T.4*T.5); b3:=MonomialCoefficient(Q3trans,T.4*T.5);
            c2:=MonomialCoefficient(Q2trans,T.5*T.5); c3:=MonomialCoefficient(Q3trans,T.5*T.5);
            if a2 ne 0 and a3 ne 0 then
              Q2trans:=Q2trans/a2;
              Q3trans:=Q3trans/a3;
            elif b2 ne 0 and b3 ne 0 then
              Q2trans:=Q2trans/b2;
              Q3trans:=Q3trans/b3;
            elif c2 ne 0 and c3 ne 0 then
              Q2trans:=Q2trans/c2;
              Q3trans:=Q3trans/c3;
            end if;

            f,W0,Winf:=lift_genus5_nontrigonal_chi_one(Q1trans,Q2trans,Q3trans:alternative_Winf:=alternative_Winf);
            if f ne 0 then
              quality:=2;
              best:=f;           // best model/lift found so far
            end if;
          elif quality lt 1 then // no rational node, but no model found yet
            f,W0,Winf:=lift_genus5_nontrigonal_chi_one(Q1trans,Q2trans,Q3trans:alternative_Winf:=alternative_Winf);
            if f ne 0 then
              quality:=1;        // no rational node
              best:=f;           // best model/lift found so far
            end if;
          end if;
        end if;
      end if;
    end if;

  end for;

  if best eq 0 then
    return 0,0,0;
  end if;

  if best eq 1 then
    vprint Tuitman, 1: "Found a good lift with chi equal to zero but no rational node\n";
  else
    vprint Tuitman, 1: "Found a good lift with chi equal to zero and rational node\n";
  end if;

  return best,W0,Winf;
 
end function;
