freeze;

//////////////////////////////////////////////////////// 
// This code is part of the goodmodels MAGMA library  //
//                                                    //
// copyright (c) 2016 Jan Tuitman and Wouter Castryck //
////////////////////////////////////////////////////////

import "auxpolys.m": check_model_p, check_model_q;
import "quadraticforms.m": MatrixToQuadric, QuadricToMatrix, StandardDiagonalForm;


intrinsic RandomGenus4Curve(F::FldFin,d::RngIntElt) -> Crv
{
  A smooth curve of genus 4 in P^3 over the finite field F
  whose discriminant is zero, square or non-square according to 
  whether d = 0, 1 or -1
}
  require d in [-1,0,1]: "Second input should be 0,1 or -1";

  R:=PolynomialRing(F,4);

  done:=false;
  while not done do

  mon:=MonomialsOfDegree(R,3);

  S3:=R!0;
  for i:=1 to #mon do
    S3:=S3+Random(F)*mon[i];
  end for;

  M:=ZeroMatrix(F,4,4);
  
  if d eq 0 then
    for i:=2 to 4 do
      for j:=i to 4 do
        r:=Random(F);
        M[i,j]:=r;
        M[j,i]:=r;
      end for;
    end for;
  end if;

  if d ne 0 then
    done1:=false;
    while not done1 do
      M:=ZeroMatrix(F,4,4);
      for i:=1 to 4 do
        for j:=i to 4 do
          r:=Random(F);
          M[i,j]:=r;
          M[j,i]:=r;
        end for;
      end for;
      det:=Determinant(M);
      if det ne 0 then
        if IsSquare(det) then
          if d eq 1 then
            done1:=true;
          end if;
        else
          if d eq -1 then
            done1:=true;
          end if;
        end if;
      end if;
    end while;
  end if;

  S2:=MatrixToQuadric(M);

  P3:=ProjectiveSpace(F,3);
  X:=Scheme(P3,S2);
  X:=Scheme(X,S3);
  if IsIrreducible(X) and IsNonsingular(X) and Genus(Curve(X)) eq 4 then 
    done:=true;
  end if;

  end while;

  return Curve(X);

end intrinsic;


lift_chi_zero:=function(f)

  // Takes f in Fq[x,y] with constant leading term in y. Scales f to be monic in y,
  // then lifts it to characteristic zero. Tests whether this lift is good input for 
  // pcc_p or pcc_q and if so returns it. If unsuccesful, returns 0. 

  Z:=IntegerRing();
  Fq:=BaseRing(Parent(f));
  q:=#Fq;

  Fqx:=PolynomialRing(Fq);
  Fqxy:=PolynomialRing(Fqx);
  f:=Evaluate(f,[Fqx.1,Fqxy.1]);
  f:=Numerator(f/LeadingCoefficient(f));

  if IsPrime(q) then
    S<x>:=PolynomialRing(RationalField());
    R<y>:=PolynomialRing(S);
    g:=R!0;
    for i:=0 to Degree(f) do
      poly:=Coefficient(f,i);
      for j:=0 to Degree(poly) do
        g:=g+(Z!Coefficient(poly,j))*y^i*x^j;
      end for;
    end for;
    succes,W0,Winf:=check_model_p(g,q);
    if succes then
      return g,W0,Winf;
    end if;
  else // q is not prime
    n:=Degree(Fq);
    p:=Characteristic(Fq);
    m:=PolynomialRing(IntegerRing())!DefiningPolynomial(FiniteField(p^n));
    K<a>:=NumberField(m);
    S<x>:=PolynomialRing(K);
    R<y>:=PolynomialRing(S);
    g:=R!0;
    for i:=0 to Degree(f) do
      poly:=Coefficient(f,i);
      for j:=0 to Degree(poly) do
        coefs:=Eltseq(Coefficient(poly,j));
        for k:=1 to n do
          g:=g+(Z!coefs[k])*a^(k-1)*x^j*y^i;
        end for;
      end for;
    end for;
    succes,W0,Winf:=check_model_q(g,p,n);
    if succes then
      return g,W0,Winf;
    end if;
  end if;

  return 0,0,0;
end function;


find_point_chi_zero:=function(f);

  // f is a polynomial in two variables with Newton polygon
  // the triangle Delta with vertices (0,0),(6,0) and (0,3). 
  // This function tries to find an affine point P such that 
  // f(P)=0 possibly after transforming f to map the points
  // at infinity to affine points. This is guaranteed to work 
  // if q>49.

  R<x,y>:=Parent(f);
  Fq:=BaseRing(R);
  S<w>:=PolynomialRing(Fq);

  done:=false;

  while not done do // to avoid infinite loop apply only for q>49
    x0:=Random(Fq);
    poly:=Evaluate(f,[x0,w]);
    zeros:=Roots(poly);
    if #zeros gt 0 then
      done:=true;
      r:=Random(1,#zeros);
      y0:=zeros[r][1]; 
      P:=[x0,y0];
    else
      f:=Numerator(x^6*Evaluate(f,[1/x,y/x^2]));
    end if;   
  end while;
  
  return f,P;
end function;


reduce_polygon_chi_zero:=function(f,P)

  // f is a polynomial in two variables with Newton polygon
  // the triangle Delta with vertices (0,0),(6,0) and (0,3) 
  // and P is a point such that f(P) is zero. This function
  // finds an equivalent polynomial with Newton polygon with
  // vertices (0,0),(0,3),(4,0) and (4,1).

  R<x,y>:=Parent(f);

  x0:=P[1];
  y0:=P[2];

  dfdx:=Evaluate(Derivative(f,1),[x0,y0]);
  dfdy:=Evaluate(Derivative(f,2),[x0,y0]);

  if dfdx eq 0 or dfdy eq 0 then
    g:=Evaluate(f,[x+x0,y+y0]);
  else
    g:=Evaluate(f,[(-dfdy/dfdx)*x+x0,y+x+y0]); 
  end if;

  h:=Numerator(x^6*Evaluate(g,[1/x,y/x^2])); 

  return h;

end function;


good_model_chi_zero:=function(S2,S3,d)

  // Given a quadric S2 of discriminant chi=0 and a cubic S3, 
  // both in 4 variables over Fq, and a nonsquare element d of Fq, 
  // find an efficient lift to characteristic 0 for use in pcc_p or 
  // pcc_q. If unsuccesful, returns 0.
  
  R<x,y,z,w>:=Parent(S2);
  Fq:=BaseRing(R);  
  q:=#Fq;

  M1:=QuadricToMatrix(S2);
  P1,rank1,isasquare1,Pstan1:=StandardDiagonalForm(M1,d);
  if not isasquare1 then
    S2:=d*S2;
    M1:=QuadricToMatrix(S2);
    P1,rank1,isasquare1,Pstan1:=StandardDiagonalForm(M1,d);
  end if;

  M2:=QuadricToMatrix(z*w-x^2);
  P2,rank2,isasquare2,Pstan2:=StandardDiagonalForm(M2,d);

  A:=P2^(-1)*P1;

  S2:=Evaluate(S2,[A[1,1]*x+A[2,1]*y+A[3,1]*z+A[4,1]*w,A[1,2]*x+A[2,2]*y+A[3,2]*z+A[4,2]*w,A[1,3]*x+A[2,3]*y+A[3,3]*z+A[4,3]*w,A[1,4]*x+A[2,4]*y+A[3,4]*z+A[4,4]*w]);
  S3:=Evaluate(S3,[A[1,1]*x+A[2,1]*y+A[3,1]*z+A[4,1]*w,A[1,2]*x+A[2,2]*y+A[3,2]*z+A[4,2]*w,A[1,3]*x+A[2,3]*y+A[3,3]*z+A[4,3]*w,A[1,4]*x+A[2,4]*y+A[3,4]*z+A[4,4]*w]);

  S<x,y>:=PolynomialRing(Fq,2);
  f:=Evaluate(S3,[x,y,1,x^2]); 

  if q gt 49 then
    for i:=1 to 100 do
      g,P:=find_point_chi_zero(f);
      g:=reduce_polygon_chi_zero(g,P);
      g,W0,Winf:=lift_chi_zero(g);
      if g ne 0 then
        vprint Tuitman, 1: "Found a good lift and succeeded in reducing the degree in x\n";
        return g,W0,Winf;
      end if;
    end for;
  end if;
  
  g,W0,Winf:=lift_chi_zero(f);
  if g ne 0 then
    vprint Tuitman, 1: "Found a good lift but did not succeed in reducing the degree in x\n";
  end if;

  return g,W0,Winf;
  
end function;


lift_chi_one:=function(f)

  // Takes the output of good_model_chi_one or reduce_polygon_chi_one 
  // and lifts it to characteristic zero, for use in pcc_p or pcc_q.

  Z:=IntegerRing();
  Fq:=BaseRing(Parent(f));
  q:=#Fq;

  Fqx:=PolynomialRing(Fq);
  Fqxy:=PolynomialRing(Fqx);
  f:=Evaluate(f,[Fqx.1,Fqxy.1,1,1]);
  
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
    S<x>:=PolynomialRing(RationalField());
    R<y>:=PolynomialRing(S);
    g:=R!0;
    for i:=0 to Degree(h) do
      poly:=Coefficient(h,i);
      for j:=0 to Degree(poly) do
        g:=g+(Z!Coefficient(poly,j))*y^i*x^j;
      end for;
    end for;
    succes,W0,Winf:=check_model_p(g,q);
    if succes then
      return g,W0,Winf;
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


find_horizontal_tangent:=function(f)

  // Takes f in Fq[x,y,z,w], bihomogeneous of bidegree (3,3)
  // defining a smooth curve of genus 4 in P^1xP^1. Outputs an
  // equivalent f and a point P, such that the tangent line to
  // f=0 at P is horizontal (i.e. P is a ramification point of
  // the projection onto the second P^1).

  R<x,y,z,w>:=Parent(f);
  Fq:=BaseRing(R);
  S<s,t>:=PolynomialRing(Fq,2);
  L<l>:=PolynomialRing(Fq);
  
  g:=Evaluate(f,[s,t,1,1]);
  dgds:=Derivative(g,1);
  dgdt:=Derivative(g,2);

  A2:=AffineSpace(Fq,2);
  X:=Scheme(A2,g);

  // first search the finite points:

  Y:=Scheme(X,dgds);
  points:=RationalPoints(Y);
  if #points gt 0 then
    return f,[points[1][1],points[1][2],1,1];
  end if;

  Y:=Scheme(X,dgdt);
  points:=RationalPoints(Y);
  if #points gt 0 then
    return Evaluate(f,[y,x,w,z]),[points[1][2],points[1][1],1,1]; // switch variables (x:z) and (y:w)
  end if;

  // switch the lines at infinity with the x,y axes:

  f:=Numerator((x*y*z*w)^3*Evaluate(f,[1/x,1/y,1/z,1/w]));
  g:=Evaluate(f,[s,t,1,1]);
  dgds:=Derivative(g,1);
  dgdt:=Derivative(g,2);

  // now search the x,y axes:

  h:=Evaluate(g,[0,l]); // y axis
  zeros:=Roots(h);
  for i:=1 to #zeros do
    t0:=zeros[i][1];
    if Evaluate(dgds,[0,t0]) eq 0 then
      return f, [0,t0,1,1];
    elif Evaluate(dgdt,[0,t0]) eq 0 then
      return Evaluate(f,[y,x,w,z]),[t0,0,1,1];
    end if;
  end for;

  h:=Evaluate(g,[l,0]); // x axis
  zeros:=Roots(h);
  for i:=1 to #zeros do
    s0:=zeros[i][1];
    if Evaluate(dgds,[s0,0]) eq 0 then
      return f, [s0,0,1,1];
    elif Evaluate(dgdt,[s0,0]) eq 0 then
      return Evaluate(f,[y,x,w,z]),[0,s0,1,1];
    end if;
  end for;

  return f,[0,0,0,0]; // nothing found

end function;


find_point_chi_one:=function(f);

  // f is a bihomogeneous polynomial in variables (x:z), (y:w) of
  // bidegree (3,3). This function tries to find P on P^1xP^1 such
  // that f(P)=0, which is guaranteed to exist if q>49 (and odd)

  Fq:=BaseRing(Parent(f));
  S<w>:=PolynomialRing(Fq);

  done:=false;
  while not done do 
    x0:=Random(Fq);
    if x0 eq 0 then
      z0:=1;
    else
      z0:=Random(Fq);
    end if;
    y0:=Random(Fq);
    if y0 eq 0 then
      if Evaluate(f,[x0,y0,z0,1]) eq 0 then
        done:=true;
        P:=[x0,y0,z0,1];
      end if;
    else
      poly:=Evaluate(f,[x0,y0,z0,w]); 
      zeros:=Roots(poly);
      if #zeros gt 0 then
        done:=true;
        r:=Random(1,#zeros);
        P:=[x0,y0,z0,zeros[r][1]];
      end if;
    end if;    
  end while;
  
  return P;
end function;


reduce_polygon_chi_one:=function(f,P)

  // f is a bihomogenous polynomial in variables (x:z), (y:w) of
  // bidegree (3,3) and P a point on P^1xP^1 such that f(P)=0. 
  // Let g be the dehomogenisation of f w.r.t z and w, note that
  // the Newton polygon of g is a square with sides of length 3.
  // This function outputs a polynomial equivalent to g, but with
  // a smaller Newton polygon.

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

  A:=A^(-1); B:=B^(-1); 

  f:=Evaluate(f,[A[1,1]*x+A[2,1]*z,B[1,1]*y+B[2,1]*w,A[1,2]*x+A[2,2]*z,B[1,2]*y+B[2,2]*w]);

  return Evaluate(f,[x,y,1,1]);

end function;


good_model_chi_one:=function(S2,S3,d)

  // given a quadric S2 of discriminant chi=-1 and a cubic S3, 
  // both in 4 variables over Fq, and a nonsquare element d, 
  // transform so that S2 becomes xy-zw and output the 
  // projection of S3=0 from [0:0:0:1] onto the xyz-plane 
  // dehomogenised with respect to z.
  
  R<x,y,z,w>:=Parent(S2);
  Fq:=BaseRing(R);
  q:=#Fq;  

  M1:=QuadricToMatrix(S2);
  P1,rank1,isasquare1,Pstan1:=StandardDiagonalForm(M1,d);
  if not isasquare1 then
    S2:=d*S2;
    M1:=QuadricToMatrix(S2);
    P1,rank1,isasquare1,Pstan1:=StandardDiagonalForm(M1,d);
  end if;

  M2:=QuadricToMatrix(x*y-z*w);
  P2,rank2,isasquare2,Pstan2:=StandardDiagonalForm(M2,d);

  A:=P2^(-1)*P1;

  S2:=Evaluate(S2,[A[1,1]*x+A[2,1]*y+A[3,1]*z+A[4,1]*w,A[1,2]*x+A[2,2]*y+A[3,2]*z+A[4,2]*w,A[1,3]*x+A[2,3]*y+A[3,3]*z+A[4,3]*w,A[1,4]*x+A[2,4]*y+A[3,4]*z+A[4,4]*w]);
  S3:=Evaluate(S3,[A[1,1]*x+A[2,1]*y+A[3,1]*z+A[4,1]*w,A[1,2]*x+A[2,2]*y+A[3,2]*z+A[4,2]*w,A[1,3]*x+A[2,3]*y+A[3,3]*z+A[4,3]*w,A[1,4]*x+A[2,4]*y+A[3,4]*z+A[4,4]*w]);

  f:=[Evaluate(S3,[x*w,y*z,z*w,x*y]),Evaluate(S3,[y*z,x*w,z*w,x*y])];

  for i:=1 to 2 do
    if q gt 49 then
      g,P:=find_horizontal_tangent(f[i]);
      if P ne [0,0,0,0] then
        g:=reduce_polygon_chi_one(g,P);
        g,W0,Winf:=lift_chi_one(g);
        if g ne 0 then
          vprint Tuitman, 1: "Found a good lift with horizonal tangent\n";
          return g,W0,Winf;
        end if;
      else
        for i:=1 to 100 do
          P:=find_point_chi_one(f[i]);        
          g:=reduce_polygon_chi_one(f[i],P); 
          g,W0,Winf:=lift_chi_one(g);
          if g ne 0 then
            "Found a good lift and succeeded in reducing the degree in x\n";
            return g,W0,Winf;
          end if;
        end for;
      end if;
    end if;
  end for;

  for i:=1 to 2 do
    g,W0,Winf:=lift_chi_one(f[i]);
    if g ne 0 then
      "Found a good lift but did not succeed in reducing the degree in x\n"; 
      return g,W0,Winf;
    end if;
  end for;

  return 0,0,0;

end function;


lift_chi_minusone:=function(S2,S3,rat:alternative_Winf:=false);

  // Takes the output of good_model_chi_minusone and lifts
  // it to characteristic zero, for use in pcc_p or pcc_q.

  Z:=IntegerRing();
  T:=Parent(S2);
  Fq:=BaseRing(T);
  q:=#Fq;

  l:=Numerator(Evaluate(S3,[0,T.2,0,T.4])/Evaluate(S2,[0,T.2,0,T.4]));

  if IsPrime(q) then
    R:=PolynomialRing(IntegerRing(),4);
    S<x,y,z,w>:=PolynomialRing(RationalField(),4);
    
    S2Q:=S!(R!S2);
    L:=S!(R!l);
    S3Q:=L*Evaluate(S2Q,[0,S.2,0,S.4]);
    S3Q:=S3Q+S!(R!(S3-Evaluate(S3,[0,T.2,0,T.4])));

    C:=Coefficients(S2Q,4);
    if Degree(S2Q,4) eq 2 then
      g:=S3Q;
      while Degree(g,4) gt 1 do
        D:=Coefficients(g,4);
        g:=g-D[#D]*w^(#D-1)+D[#D]*w^(#D-3)*(w^2-S2Q/C[3]);
      end while;
      E:=Coefficients(g,4);
      f:=Numerator(Evaluate(S2Q,[S.1,S.2,S.3,-E[1]/E[2]]));
    elif Degree(S2Q,4) eq 1 then
      f:=Numerator(Evaluate(S3Q,[S.1,S.2,S.3,-C[1]/C[2]]));
    end if;
    
    if rat then

      dfdx:=Evaluate(Derivative(f,1),[0,1,0,0]);
      dfdy:=Evaluate(Derivative(f,2),[0,1,0,0]);
      dfdz:=Evaluate(Derivative(f,3),[0,1,0,0]);

      b2:=[0,1,0];

      if dfdx eq 0 then
        b1:=[1,0,0];
        b3:=[0,0,1];
      else
        if dfdz eq 0 then
          b1:=[0,0,1];
          b3:=[1,0,0];
        else
          b1:=[-dfdz,0,dfdx];
          b3:=[1,0,0];
        end if;
      end if;

      A:=Matrix(RationalField(),[[b1[1],b1[2],b1[3]],[b2[1],b2[2],b2[3]],[b3[1],b3[2],b3[3]]]);
      f:=Evaluate(f,[A[1,1]*x+A[2,1]*y+A[3,1]*z,A[1,2]*x+A[2,2]*y+A[3,2]*z,A[1,3]*x+A[2,3]*y+A[3,3]*z,0]);

    end if;

    C:=Coefficients(f); 
    denom:=1;
    for i:=1 to #C do
      denom:=LCM(denom,Denominator(C[i]));
    end for;
    f:=f*denom;

    S<x>:=PolynomialRing(RationalField());
    R<y>:=PolynomialRing(S);
    h:=Evaluate(f,[x,y,1,0]);

    lc:=LeadingCoefficient(h);
    h:=Numerator(lc^(Degree(h)-1)*Evaluate(h,y/LeadingCoefficient(h)));

    S<x>:=PolynomialRing(RationalField());
    R<y>:=PolynomialRing(S);
    g:=R!0;
    for i:=0 to Degree(h) do
      poly:=Coefficient(h,i);
      for j:=0 to Degree(poly) do
        g:=g+(Z!Coefficient(poly,j))*y^i*x^j;
      end for;
    end for;
    succes,W0,Winf:=check_model_p(g,q);
    if succes then
      return g,W0,Winf;
    end if;

  else // q is not prime
    n:=Degree(Fq);
    p:=Characteristic(Fq);
    m:=PolynomialRing(IntegerRing())!DefiningPolynomial(FiniteField(p^n));
    K<a>:=NumberField(m);
    R<x,y,z,w>:=PolynomialRing(K,4);    

    C:=Coefficients(S2);
    terms:=Terms(S2);
    S2K:=R!0;
    for i:=1 to #C do
      E:=Exponents(terms[i]);
      for j:=1 to n do
        S2K:=S2K+(Z!Eltseq(C[i])[j])*a^(j-1)*R.1^E[1]*R.2^E[2]*R.3^E[3]*R.4^E[4];
      end for;
    end for;

    C:=Coefficients(l);
    terms:=Terms(l);
    L:=R!0;
    for i:=1 to #C do
      E:=Exponents(terms[i]);
      for j:=1 to n do
        L:=L+(Z!Eltseq(C[i])[j])*a^(j-1)*R.1^E[1]*R.2^E[2]*R.3^E[3]*R.4^E[4];
      end for;
    end for;

    S3K:=L*S2K;
    C:=Coefficients(S3-Evaluate(S3,[0,T.2,0,T.4]));
    terms:=Terms(S3-Evaluate(S3,[0,T.2,0,T.4]));
    for i:=1 to #C do
      E:=Exponents(terms[i]);
      for j:=1 to n do
        S3K:=S3K+(Z!Eltseq(C[i])[j])*a^(j-1)*R.1^E[1]*R.2^E[2]*R.3^E[3]*R.4^E[4];
      end for;
    end for;    

    C:=Coefficients(S2K,4);
    if Degree(S2K,4) eq 2 then
      g:=S3K;
      while Degree(g,4) gt 1 do
        D:=Coefficients(g,4);
        g:=g-D[#D]*w^(#D-1)+D[#D]*w^(#D-3)*(w^2-S2K/C[3]);
      end while;
      E:=Coefficients(g,4);
      f:=Numerator(Evaluate(S2K,[R.1,R.2,R.3,-E[1]/E[2]]));
    elif Degree(S2K,4) eq 1 then
      f:=Numerator(Evaluate(S3K,[R.1,R.2,R.3,-C[1]/C[2]]));
    end if;

    if rat then
    
      dfdx:=Evaluate(Derivative(f,1),[0,1,0,0]);
      dfdy:=Evaluate(Derivative(f,2),[0,1,0,0]);
      dfdz:=Evaluate(Derivative(f,3),[0,1,0,0]);

      b2:=[0,1,0];

      if dfdx eq 0 then
        b1:=[1,0,0];
        b3:=[0,0,1];
      else
        if dfdz eq 0 then
          b1:=[0,0,1];
          b3:=[1,0,0];
        else
          b1:=[-dfdz,0,dfdx];
          b3:=[1,0,0];
        end if;
      end if;

      A:=Matrix(K,[[b1[1],b1[2],b1[3]],[b2[1],b2[2],b2[3]],[b3[1],b3[2],b3[3]]]);
      f:=Evaluate(f,[A[1,1]*x+A[2,1]*y+A[3,1]*z,A[1,2]*x+A[2,2]*y+A[3,2]*z,A[1,3]*x+A[2,3]*y+A[3,3]*z,0]);

    end if;

    C:=Coefficients(f); 
    denom:=1;
    for i:=1 to #C do
      for j:=1 to n do
        denom:=LCM(denom,Denominator(C[i][j]));
      end for;
    end for;
    f:=f*denom;

    S<x>:=PolynomialRing(K);
    R<y>:=PolynomialRing(S);
    h:=Evaluate(f,[x,y,1,0]);

    lc:=LeadingCoefficient(h);
    h:=Numerator(lc^(Degree(h)-1)*Evaluate(h,y/LeadingCoefficient(h)));

    succes,W0,Winf:=check_model_q(h,p,n:alternative_Winf:=alternative_Winf);  

    if succes then
      return h,W0,Winf;
    end if;

  end if;

  return 0,0,0;
end function;


find_point_chi_minusone:=function(S2,S3)

  // Takes S2,S3 in Fq[x,y,z,w] homogeneous of degree 2 and 3.
  // Outputs a point P in P^3_{F_q} such that S2(P)=S3(P)=0,
  // possibly after replacing F_q by F_{q^2} when q<49.

  R<x,y,z,w>:=Parent(S2);
  Fq:=BaseRing(R);
  if #Fq le 49 then
    Fq:=ext<Fq|2>;
  end if;
  S<s,t>:=PolynomialRing(Fq,2);

  done:=false;
  while not done do
    z0:=Random(Fq);
    w0:=Random(Fq);
    poly1:=Evaluate(S2,[s,t,z0,w0]);
    poly2:=Evaluate(S3,[s,t,z0,w0]);
    A2:=AffineSpace(Fq,2);
    X:=Scheme(A2,poly1);
    X:=Scheme(X,poly2);
    points:=SetToSequence(RationalPoints(X));
    while #points gt 0 do
      r:=Random(points);
      if not (r[1] eq 0 and r[2] eq 0 and z0 eq 0 and w0 eq 0) then
        done:=true;
        P:=[r[1],r[2],z0,w0];
      end if;
      Exclude(~points,r);
    end while;
  end while;

  if P[1] ne 0 then
    lambda:=P[1];
  elif P[2] ne 0 then
    lambda:=P[2];
  elif P[3] ne 0 then
    lambda:=P[3];
  else
    lambda:=P[4];
  end if;

  for i:=1 to 4 do
    P[i]:=P[i]/lambda;
  end for;
  
  return P;

end function;


good_model_chi_minusone:=function(S2,S3:alternative_Winf:=false)
  
  // S2 is a quadric and S3 a cubic, both in 4 variables over
  // a finite field Fq, that define a smooth curve of genus 4
  // in P^3. P is a point in P^3 over either F_q or F_q^2 such 
  // that S2(P)=S3(P)=0

  R<x,y,z,w>:=Parent(S2);
  Fq:=BaseRing(R);
  q:=#Fq;
  n:=Degree(Fq);
  
  for i:=1 to 100 do
  
    P:=find_point_chi_minusone(S2,S3); // if q<7 this might fail!

    if (P[1] in Fq and P[2] in Fq and P[3] in Fq and P[4] in Fq) then

      rat:=true; // P is a rational point
     
      s1:=Evaluate(Derivative(S2,1),P);
      s2:=Evaluate(Derivative(S2,2),P);
      s3:=Evaluate(Derivative(S2,3),P);
      s4:=Evaluate(Derivative(S2,4),P);

      t1:=Evaluate(Derivative(S3,1),P);
      t2:=Evaluate(Derivative(S3,2),P);
      t3:=Evaluate(Derivative(S3,3),P);
      t4:=Evaluate(Derivative(S3,4),P);

      M:=Matrix(Fq,[[s1,t1],[s2,t2],[s3,t3],[s4,t4]]);
      M1:=Matrix(Fq,[[s1],[s2],[s3],[s4]]);
      M2:=Matrix(Fq,[[t1],[t2],[t3],[t4]]);

      done:=false;
      while not done do // choose random transformation matrix A mapping P to [0,0,0,1] and the tangent line at P to X=Z=0
        v:=Random(Kernel(M));
        v1:=Random(Kernel(M1));
        v2:=Random(Kernel(M2));

        A:=Matrix(Fq,[[v1[1],v1[2],v1[3],v1[4]],[v[1],v[2],v[3],v[4]],[v2[1],v2[2],v2[3],v2[4]],[P[1],P[2],P[3],P[4]]]);

        if IsInvertible(A) then
          done:=true;
        end if;
      end while;

    else

      rat:=false; // P is defined over a quadratic extension

      Q:=[]; Q[1]:=Frobenius(P[1],n); Q[2]:=Frobenius(P[2],n); Q[3]:=Frobenius(P[3],n); Q[4]:=Frobenius(P[4],n); // conjugate point

      b:=Basis(Kernel(Matrix([[P[1],Q[1]],[P[2],Q[2]],[P[3],Q[3]],[P[4],Q[4]]])));

      s1:=Fq!b[1][1]; s2:=Fq!b[1][2]; s3:=Fq!b[1][3]; s4:=Fq!b[1][4];
      t1:=Fq!b[2][1]; t2:=Fq!b[2][2]; t3:=Fq!b[2][3]; t4:=Fq!b[2][4];     

      done:=false;
      while not done do // choose random transformation matrix A mapping line through P and Q to X=Z=0   
      
        M:=Matrix(Fq,[[s1,t1],[s2,t2],[s3,t3],[s4,t4]]);
        
        v1:=Random(Kernel(M));
        v2:=Random(Kernel(M));
        
        r1:=Random(Fq); r2:=Random(Fq); r3:=Random(Fq); r4:=Random(Fq); r5:=Random(Fq); r6:=Random(Fq); r7:=Random(Fq); r8:=Random(Fq);

        A:=Matrix(Fq,[[r1,r2,r3,r4],[v1[1],v1[2],v1[3],v1[4]],[r5,r6,r7,r8],[v2[1],v2[2],v2[3],v2[4]]]);

        if IsInvertible(A) then
          done:=true;
        end if;
      end while;

    end if;
 
    S2new:=Evaluate(S2,[A[1,1]*x+A[2,1]*y+A[3,1]*z+A[4,1]*w,A[1,2]*x+A[2,2]*y+A[3,2]*z+A[4,2]*w,A[1,3]*x+A[2,3]*y+A[3,3]*z+A[4,3]*w,A[1,4]*x+A[2,4]*y+A[3,4]*z+A[4,4]*w]);
    S3new:=Evaluate(S3,[A[1,1]*x+A[2,1]*y+A[3,1]*z+A[4,1]*w,A[1,2]*x+A[2,2]*y+A[3,2]*z+A[4,2]*w,A[1,3]*x+A[2,3]*y+A[3,3]*z+A[4,3]*w,A[1,4]*x+A[2,4]*y+A[3,4]*z+A[4,4]*w]);

    f,W0,Winf:=lift_chi_minusone(S2new,S3new,rat:alternative_Winf:=alternative_Winf);
    if f ne 0 then
      if rat then
        vprint Tuitman, 1: "Found a good lift coming from a rational point\n";
      else
        vprint Tuitman, 1: "Found a good lift coming from a point over quadratic extension\n";
      end if;
      return f,W0,Winf;  
    end if;
  
  end for;
  
  return 0,0,0;

end function;


optimal_model_genus4:=function(S2,S3:alternative_Winf:=false)

  // S2 is a quadric and S3 a cubic, both in 4 variables over
  // a finite field Fq, that define a smooth curve of genus 4
  // in P^3. This function tries to find an efficient lift to 
  // characteristic zero for use in pcc_p and pcc_q. If unsuccesful, 
  // returns 0.

  R<x,y,z,w>:=Parent(S2);
  Fq:=BaseRing(R);
  q:=#Fq;

  done:=false;
  while not done do
    d:=Random(Fq);
    if not IsSquare(d) then
      done:=true;
    end if;
  end while;

  M:=QuadricToMatrix(S2); 
  det:=Determinant(M);

  if det eq 0 then                    // case chi=0
    vprint Tuitman, 1: "Discriminant is zero\n";
    f,W0,Winf:=good_model_chi_zero(S2,S3,d);
  elif IsSquare(det) then             // case chi=1
    vprint Tuitman, 1: "Discriminant is a non-zero square\n";
    f,W0,Winf:=good_model_chi_one(S2,S3,d);
  else                                // case chi=-1
    vprint Tuitman, 1: "Discriminant is a non-square\n";
    f,W0,Winf:=good_model_chi_minusone(S2,S3:alternative_Winf:=alternative_Winf);
  end if;

return f,W0,Winf;
  
end function;
