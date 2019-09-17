freeze;

//////////////////////////////////////////////////////// 
// This code is part of the goodmodels MAGMA library  //
//                                                    //
// copyright (c) 2016 Jan Tuitman and Wouter Castryck //
////////////////////////////////////////////////////////


import "auxpolys.m": check_model_p,check_model_q;


intrinsic RandomGenus3Curve(F::FldFin) -> Crv
{
A smooth plane quartic curve of genus 3 over the finite field F.
}  

  R<x,y,z>:=PolynomialRing(F,3);

  M:=MonomialsOfDegree(R,4);

  done:=false;
  while not done do
    f:=R!0;
    for i:=1 to #M do
      f:=f+Random(F)*M[i];
    end for;

    P3:=ProjectiveSpace(F,2);
    X:=Scheme(P3,f);
    if (Dimension(X) eq 1 and IsIrreducible(X) and IsNonsingular(X)) then
      done:=true;
    end if;
  end while;

  return Curve(X);
end intrinsic;


find_point_genus3:=function(f);

  // f is a polynomial of degree 4 in 3 variables
  // this function tries to find P such that f(P)=0
  // which is guaranteed to exist if q>29 and odd

  Fq:=BaseRing(Parent(f));
  S<w>:=PolynomialRing(Fq);

  done:=false;
  while not done do // to avoid infinite loop apply only for q>29   

    x0:=Random(Fq);
    y0:=Random(Fq);

    if (x0 eq 0 and y0 eq 0) then
      if (Evaluate(f,[x0,y0,1])) eq 0 then
        done:=true;
        P:=[x0,y0,1];
      end if;
    else
      g:=Evaluate(f,[x0,y0,w]); 
      zeros:=Roots(g);
      if (#zeros gt 0) then
         done:=true;
         P:=[x0,y0,zeros[1][1]];
      end if;
    end if;

  end while;
  
  return P;
end function;


move_tangent_to_infty_genus3:=function(f,P); 

  // given a quartic f and rational point P such that f(P)=0, find an equivalent quartic g 
  // such that g([0,1,0])=0 and the tangent line at this point is the line at infinity Z=0.
  
  Fq:=BaseRing(Parent(f));
  S<w>:=PolynomialRing(Fq);
  R<x,y,z>:=PolynomialRing(Fq,3);

  a:=Evaluate(Derivative(f,1),P);
  b:=Evaluate(Derivative(f,2),P);
  c:=Evaluate(Derivative(f,3),P);

  // find a suitable projective transformation

  done:=false;
  while not done do // choose random transformation matrix A satisfying constraints
  
    r1:=Random(Fq);
    r2:=Random(Fq);
  
    if a ne 0 then
      A:=Matrix(Fq,[[-(b*r1+c*r2)/a,r1,r2],[P[1],P[2],P[3]],[Random(Fq),Random(Fq),Random(Fq)]]);
    elif b ne 0 then
      A:=Matrix(Fq,[[r1,-(a*r1+c*r2)/b,r2],[P[1],P[2],P[3]],[Random(Fq),Random(Fq),Random(Fq)]]);
    else
      A:=Matrix(Fq,[[r1,r2,-(a*r1+b*r2)/c],[P[1],P[2],P[3]],[Random(Fq),Random(Fq),Random(Fq)]]);
    end if;
  
    if IsInvertible(A) then
      done:=true;
    end if;
  
  end while;
  
  g:=Evaluate(f,[A[1,1]*x+A[2,1]*y+A[3,1]*z,A[1,2]*x+A[2,2]*y+A[3,2]*z,A[1,3]*x+A[2,3]*y+A[3,3]*z]);

  // if g=0 intersects the tangent line at [0:1:0] at another rational point, move this point to [1:0:0]

  h:=Numerator(Evaluate(g,[x,y,0])/x^2);
  if Evaluate(h,[0,1,0]) eq 0 then
    h:=Numerator(h/x);
  end if;
  zeros:=Roots(Evaluate(h,[1,w,0]));
  if #zeros gt 0 then
    A:=Matrix(Fq,[[1,zeros[1][1],0],[0,1,0],[0,0,1]]);
    g:=Evaluate(g,[A[1,1]*x+A[2,1]*y+A[3,1]*z,A[1,2]*x+A[2,2]*y+A[3,2]*z,A[1,3]*x+A[2,3]*y+A[3,3]*z]);
  end if;

  return g;
end function;


lift_genus3:=function(f)

  // Starts from f in Fq[x,y,z] and dehomogenizes w.r.t. z. We assume 
  // that this gives and f with constant leading term in y. Scales 
  // f to be monic in y and then lifts it naively to characteristic 
  // zero. Tests whether this lift is valid input for pcc_p or pcc_q, 
  // if yes returns it. If unsuccesful, returns 0.

  Fq:=BaseRing(Parent(f));
  q:=#Fq;

  Fqx:=PolynomialRing(Fq);
  Fqxy:=PolynomialRing(Fqx);
  f:=Evaluate(f,[Fqx.1,Fqxy.1,1]);
  f:=Numerator(f/LeadingCoefficient(f));

  if IsPrime(q) then
    S<x>:=PolynomialRing(RationalField());
    R<y>:=PolynomialRing(S);
    g:=R!0;
    for i:=0 to Degree(f) do
      poly:=Coefficient(f,i);
      for j:=0 to Degree(poly) do
        g:=g+(RationalField()!IntegerRing()!Coefficient(poly,j))*y^i*x^j;
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
    R<y>:=PolynomialRing(S); // required by pcc_q
    g:=R!0;
    for i:=0 to Degree(f) do
      poly:=Coefficient(f,i);
      for j:=0 to Degree(poly) do
        coefs:=Eltseq(Coefficient(poly,j));
        for k:=1 to n do
          g:=g+(IntegerRing()!coefs[k])*a^(k-1)*x^j*y^i;
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


find_flex_model:=function(f)

  // Starts from f in Fq[x,y,z] homogeneous of degree 4. Tries to
  // find a good lift of f to characteristic zero, using a rational 
  // flex P of f=0 (if one exists). If unsuccesful, return 0.

  R:=Parent(f);
  Fq:=BaseRing(R);
  H:=ZeroMatrix(R,3,3);
  for i:=1 to 3 do
    for j:=1 to 3 do
      H[i,j]:=Derivative(Derivative(f,i),j);  
    end for;
  end for;
  h:=Determinant(H);
  
  P2:=ProjectiveSpace(Fq,2);
  X:=Scheme(P2,f);
  X:=Scheme(X,h);
  S:=RationalPoints(X);                   // all flexes
  
  if #S gt 0 then       
    for i:=1 to #S do                     
      if IsSingular(X,S[i]) then          // hyperflex
        P:=[S[i][1],S[i][2],S[i][3]];  
        g:=move_tangent_to_infty_genus3(f,P);
        Q,W0,Winf:=lift_genus3(g);
        if Q ne 0 then
          return Q,W0,Winf;
        end if;
      end if;
    end for;
    for i:=1 to #S do
      P:=[S[i][1],S[i][2],S[i][3]];       // flex but no hyperflex
      g:=move_tangent_to_infty_genus3(f,P);
      Q,W0,Winf:=lift_genus3(g);
      if Q ne 0 then
        return Q,W0,Winf;
      end if;
    end for;                       
  end if;

  return 0,0,0;                           // no good flex model found

end function;


find_bitangent_model:=function(f)

  // Starts from f in Fq[x,y,z] homogeneous of degree 4. Tries to
  // find a good lift of f to characteristic zero, using a bitangent 
  // intersecting the curve in another rational point (if one exists)
  // Assuming characteristic \neq 3. If unsuccesfull, returns 0.
  
  R:=Parent(f);
  Fq:=BaseRing(R);

  dfdx:=Derivative(f,1);
  dfdy:=Derivative(f,2);
  dfdz:=Derivative(f,3);

  P2<s1,s2,s3>:=ProjectiveSpace(Fq,2);
  X:=Scheme(P2,f);
  
  phi:=map< X -> P2 | [Evaluate(dfdx,[s1,s2,s3]),Evaluate(dfdy,[s1,s2,s3]),Evaluate(dfdz,[s1,s2,s3])] >;
  Y:=Image(phi);
  S:=SingularPoints(Y);

  for i:=1 to #S do
    if IsOrdinarySingularity(Y,S[i]) then             // rational bitangent
      Z:=Scheme(X,S[i][1]*s1+S[i][2]*s2+S[i][3]*s3);  // intersection with the curve
      W:=RationalPoints(Z);                           // rational points of the intersection
      for j:=1 to #W do
        P:=[W[1][1],W[1][2],W[1][3]];
        g:=move_tangent_to_infty_genus3(f,P);
        Q,W0,Winf:=lift_genus3(g);
        if Q ne 0 then
          return Q,W0,Winf;
        end if;
      end for;
    end if;
  end for;

  return 0,0,0;                                       // no good bitangent model found

end function;


find_arbitrary_model:=function(f)

  // Starts from f in Fq[x,y,z] homogeneous of degree 4. Tries (100 times) 
  // to find a good lift of f to characteristic zero, using an arbitrary
  // rational point of f=0. If unsuccesful, return 0. 

  for i:=1 to 100 do                                  // try 100 times, bit arbitrary?
    P:=find_point_genus3(f);
    g:=move_tangent_to_infty_genus3(f,P);
    Q,W0,Winf:=lift_genus3(g);
    if Q ne 0 then
      return Q,W0,Winf;
    end if;
  end for;

  return 0,0,0;

end function;


optimal_model_genus3:=function(f)

  // Starting from a plane quartic in 3 variables over a finite field,
  // this function tries to find an efficient lift to characteristic zero 
  // for use in pcc_p and pcc_q. If unsuccesful, returns 0.
  
  R<x,y,z>:=Parent(f);
  Fq:=BaseRing(R);
  q:=#Fq;
  p:=Characteristic(Fq);

  P3:=ProjectiveSpace(Fq,2);
  X:=Scheme(P3,f);
  if not IsNonsingular(X) then
    error "Quartic is not smooth";
  end if;
  
  if p ne 3 then
    Q,W0,Winf:=find_flex_model(f);
    if Q ne 0 then
      vprint Tuitman, 1: "Found a good lift of gonality 3 with a flex\n";
      return Q,W0,Winf;
    end if;
  end if;

  Q,W0,Winf:=find_bitangent_model(f);
  if Q eq 0 then
    Q,W0,Winf:=find_arbitrary_model(f);
    if (Q eq 0 and Evaluate(f,[0,1,0]) ne 0) then
      Q,W0,Winf:=lift_genus3(f);
      if Q ne 0 then
        vprint Tuitman, 1: "Found a good lift of gonality 4\n";
      end if;
    else
      vprint Tuitman, 1: "Found a good lift of gonality 3\n";
    end if;
  else
    vprint Tuitman, 1: "Found a good lift of gonality 3 with a bitangent\n";
  end if;

  if Q ne 0 then
    return Q,W0,Winf;  
  end if;

  return 0,0,0;
  
end function;
