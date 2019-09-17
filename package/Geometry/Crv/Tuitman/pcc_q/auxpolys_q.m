freeze;

////////////////////////////////////////////////// 
// This code is part of the pcc_q MAGMA library //
//                                              //
// copyright (c) 2016 Jan Tuitman               //
//////////////////////////////////////////////////


auxpolys:=function(Q,p,n,K);

  // Compute the polynomials r,Delta,s.

  Z:=IntegerRing();  
  Kx:=RationalFunctionField(K);
  Kxy:=PolynomialRing(Kx);
  d:=Degree(Q);
  
  // Convert Q to and element of Kxy.

  QK:=Kxy!0;
  C:=Coefficients(Q);
  for i:=1 to #C do
    D:=Coefficients(C[i]);
    for j:=1 to #D do
      E:=Coefficients(D[j]);
      while #E lt n do
        Append(~E,0);
      end while;
      QK:=QK+(K!E)*(Kx.1)^(j-1)*(Kxy.1)^(i-1);
    end for;
  end for;

  Delta:=Numerator(Discriminant(QK)); 
  r:=Numerator(Delta/GCD(Delta,Derivative(Delta)));
 
  Syl:=ZeroMatrix(Kx,2*d-1,2*d-1); // Sylvester matrix.
  coefs1:=Reverse(Coefficients(QK));
  coefs2:=Reverse(Coefficients(Derivative(QK)));
  for i:=1 to d-1 do
    for j:=1 to d+1 do
      Syl[i,i+j-1]:=coefs1[j];
    end for;
  end for;
  for i:=d to 2*d-1 do
    for j:=1 to d do
      Syl[i,i-d+j]:=coefs2[j];
    end for;
  end for;

  // solve for s
  
  v:=[Kx|];
  for i:=1 to 2*d-2 do
    v[i]:=0;
  end for;
  v[2*d-1]:=Delta;
  M:=RModule(Kx,2*d-1);
  sol:=Solution(Syl,M!v);

  // take out (if possible) common factor of Delta and s

  com_fac:=Delta;
  for i:=1 to d do
    com_fac:=GCD(com_fac,Numerator(sol[2*d-i]));
  end for;
  Delta:=Numerator(Delta/com_fac);
  for i:=1 to d do
    sol[2*d-i]:=sol[2*d-i]/com_fac;
  end for;
  
  s:=Kxy!0; 
  for i:=1 to d do
    s:=s+sol[2*d-i]*(Kxy.1)^(i-1);
  end for;

  // make sure leading coefficients of Delta,r are integers
  
  lc:=LeadingCoefficient(Delta);
  Delta:=Delta/lc;
  r:=r/lc;
  s:=s/lc;
  
  denom:=Z!1;
  C:=Coefficients(Delta);
  for i:=1 to #C do
    for j:=1 to n do
      denom:=LCM(denom,Denominator(C[i][j]));
    end for;
  end for;
  C:=Coefficients(s);
  for i:=1 to #C do
    D:=Coefficients(Numerator(C[i]));
    for j:=1 to #D do
      for k:=1 to n do
        denom:=LCM(denom,Denominator(D[j][k]));
      end for;
    end for;
  end for;

  Delta_out:=BaseRing(Parent(Q))!0;
  C:=Coefficients(Delta*denom);
  for i:=1 to #C do
    for j:=1 to n do
      Delta_out:=Delta_out+(Z!C[i][j])*(BaseRing(Parent(Q)).1)^(i-1)*(BaseRing(BaseRing(Parent(Q))).1)^(j-1);
    end for;
  end for;

  r_out:=BaseRing(Parent(Q))!0;
  C:=Coefficients(r*denom);
  for i:=1 to #C do
    for j:=1 to n do
      r_out:=r_out+(Z!C[i][j])*(BaseRing(Parent(Q)).1)^(i-1)*(BaseRing(BaseRing(Parent(Q))).1)^(j-1);
    end for;
  end for;

  s_out:=Parent(Q)!0;
  C:=Coefficients(s*denom);
  for i:=1 to #C do
    D:=Coefficients(Numerator(C[i]));
    for j:=1 to #D do
      for k:=1 to n do
        s_out:=s_out+(Z!D[j][k])*(Parent(Q).1)^(i-1)*(BaseRing(Parent(Q)).1)^(j-1)*(BaseRing(BaseRing(Parent(Q))).1)^(k-1);
      end for;
    end for;
  end for;

  return r_out, Delta_out, s_out;
end function;


genus:=function(Q,p,n,m)
  
  // TODO comment

  Fq:=ext<FiniteField(p)|m>;
  A2:=AffineSpace(Fq,2);
  Fpxy:=CoordinateRing(A2);
  Qmodp:=Fpxy!0;
  C:=Coefficients(Q);
  for i:=1 to #C do
    D:=Coefficients(C[i]);
    for j:=1 to #D do
      E:=Coefficients(D[j]);
      for k:=1 to #E do
        Qmodp:=Qmodp+(E[k])*(Fq.1)^(k-1)*Fpxy.1^(j-1)*Fpxy.2^(i-1);
      end for;
    end for;
  end for;
  g:=Genus(Curve(Scheme(A2,Qmodp)));
  return g;  
end function;


smooth:=function(f,p,n,m)

  // Is f mod p separable?

  Fq:=ext<FiniteField(p)|m>;
  Fqx:=PolynomialRing(Fq);
  C:=Coefficients(f);
  D:=[Fq|];
  for i:=1 to #C do
    D[i]:=Fq!Coefficients(C[i]);
  end for;
  if Degree(Fqx!D) eq Degree(f) and IsSeparable(Fqx!D) then
    return true;
  else
    return false;
  end if;
end function;


is_integral:=function(A,p,n)

  // Is the matrix A p-adically integral?

  A:=A*Denominator(A);
  for i:=1 to NumberOfRows(A) do
    for j:=1 to NumberOfColumns(A) do
      if A[i,j] ne 0 then
        C:=Coefficients(Numerator(A[i,j]));
        for k:=1 to #C do
          for l:=1 to n do
            if Valuation(C[k][l],p) lt 0 then
              return false;
            end if;
          end for;
        end for;
      end if;
    end for;
  end for;
  return true; 
end function;

  
log:=function(p,x)
  if x gt 0 then
    return Log(p,x);
  else
    return 0; 
  end if;
end function;

