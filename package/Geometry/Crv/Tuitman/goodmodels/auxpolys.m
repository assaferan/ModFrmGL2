freeze;

//////////////////////////////////////////////////////// 
// This code is part of the goodmodels MAGMA library  //
//                                                    //
// copyright (c) 2016 Jan Tuitman and Wouter Castryck //
////////////////////////////////////////////////////////


auxpolys_p:=function(Q);

  // Compute the polynomials r,Delta.

  Delta:=Discriminant(Q);
  r:=Numerator(Delta/GCD(Delta,Derivative(Delta)));
  
  return BaseRing(Parent(Q))!r,BaseRing(Parent(Q))!Delta;
end function;


mat_W0_p:=function(Q)

  // Compute the matrix W0 using MaximalOrderFinite

  Qx<x>:=RationalFunctionField(RationalField());
  K:=ext<Qx|Q>;
  b0:=Basis(MaximalOrderFinite(K));
  d:=Degree(Q);
  mat:=ZeroMatrix(Qx,d,d);
  for i:=1 to d do
    for j:=1 to d do
      mat[i,j]:=Eltseq(K!b0[i])[j];
    end for;
  end for;
  return mat;

end function;


mat_Winf_p:=function(Q);

  // Compute the matrix Winf using MaximalOrderFinite

  Qx<x>:=RationalFunctionField(RationalField());
  Qxy<y>:=PolynomialRing(Qx);
  Qnew:=Qxy!0;
  C:=Coefficients(Q);
  for i:=1 to #C do
    Qnew:=Qnew+Evaluate(C[i],1/x)*y^(i-1);
  end for;
  Q:=Qnew;
  K:=ext<Qx|Q>;
  binf:=Basis(MaximalOrderFinite(K));
  d:=Degree(Q);
  mat:=ZeroMatrix(Qx,d,d);
  for i:=1 to d do
    for j:=1 to d do
      mat[i,j]:=Eltseq(K!binf[i])[j];
    end for;
  end for;
  return Evaluate(mat,1/x);

end function;


smooth_p:=function(f,p)

  // Is f mod p separable?

  Fp:=FiniteField(p);
  Fpx:=PolynomialRing(Fp);
  
  if Degree(Fpx!f) eq Degree(f) and IsSeparable(Fpx!f) then
    return true;
  else
    return false;
  end if;
end function;


is_integral_p:=function(A,p)

  // Is the matrix A p-adically integral?

  A:=A*Denominator(A);
  for i:=1 to NumberOfRows(A) do
    for j:=1 to NumberOfColumns(A) do
      if A[i,j] ne 0 then
        m:=Minimum([Valuation(x,p) : x in Coefficients(Numerator(A[i,j]))]);
        if m lt 0 then
          return false;
        end if;
      end if;
    end for;
  end for;
  return true; 
end function;


check_model_p:=function(Q,p)

  // Checks whether Q,p is valid input for pcc_p
 
  r,Delta:=auxpolys_p(Q);

  if ((Degree(r) lt 1) or (not smooth_p(r,p))) then
    return false,0,0;
  end if;

  W0:=mat_W0_p(Q); 
  W0inv:=W0^(-1);
  Winf:=mat_Winf_p(Q);
  Winfinv:=Winf^(-1);

  if (not (is_integral_p(W0,p) and is_integral_p(W0inv,p) and is_integral_p(Winf,p) and is_integral_p(Winfinv,p))) then
    return false,0,0;
  end if;

  return true, W0, Winf;

end function;


auxpolys_q:=function(Q,p,n);

  // Compute the polynomials r,Delta.

  Z:=IntegerRing();  
  K:=BaseRing(BaseRing(Parent(Q)));
  Kx:=RationalFunctionField(K);
  Kxy:=PolynomialRing(Kx);
  d:=Degree(Q);
  
  // Convert Q to and element of Kxy.

  QK:=Kxy!0;
  C:=Coefficients(Q);
  for i:=1 to #C do
    D:=Coefficients(C[i]);
    for j:=1 to #D do
      E:=Eltseq(D[j]);
      QK:=QK+(K!E)*(Kx.1)^(j-1)*(Kxy.1)^(i-1);
    end for;
  end for;

  Delta:=Numerator(Discriminant(QK)); 
  r:=Numerator(Delta/GCD(Delta,Derivative(Delta)));

  // make sure leading coefficients of Delta,r are integers
  
  lc:=LeadingCoefficient(Delta);
  Delta:=Delta/lc;
  r:=r/lc;
  
  denom:=Z!1;
  C:=Coefficients(Delta);
  for i:=1 to #C do
    for j:=1 to n do
      denom:=LCM(denom,Denominator(C[i][j]));
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

  return r_out, Delta_out;
end function;


Zax_to_Kx:=function(f,Kx);

  // Convert from Zax to Kx.

  fK:=Kx!0;
  K:=BaseRing(Kx);
  n:=Degree(K);
  C:=Coefficients(f);
  for i:=1 to #C do
    D:=Coefficients(C[i]);
    while #D lt n do
      Append(~D,0);
    end while;
    fK:=fK+(BaseRing(Kx)!D)*(Kx.1)^(i-1);
  end for;
  return fK;
end function;


Zaxy_to_Kxy:=function(f,Kxy);

  // Convert from Zaxy to Kxy.

  C:=Coefficients(f);
  D:=[];
  for i:=1 to #C do
    D[i]:=Zax_to_Kx(C[i],BaseRing(Kxy));
  end for;
  return Kxy!D;
end function;


mat_W0_q:=function(Q,Kxy)

  // Compute the matrix W0 using MaximalOrderFinite

  Kx<x>:=RationalFunctionField(CoefficientRing(CoefficientRing(Kxy)));
  fun_field:=ext<Kx|Polynomial([Kx!elt:elt in Coefficients(Q)])>; 
  b0:=Basis(MaximalOrderFinite(fun_field));
  d:=Degree(Q);
  mat:=ZeroMatrix(Kx,d,d);
  for i:=1 to d do
    for j:=1 to d do
      mat[i,j]:=Eltseq(fun_field!b0[i])[j];
    end for;
  end for;
  return mat;

end function;


mat_Winf_q:=function(Q,Kxy);

  // Compute the matrix Winf using MaximalOrderFinite

  Kx<x>:=RationalFunctionField(CoefficientRing(CoefficientRing(Kxy)));
  Kxy<y>:=PolynomialRing(Kx);
  Qnew:=Kxy!0;
  C:=Coefficients(Q);
  for i:=1 to #C do
    Qnew:=Qnew+Evaluate(C[i],1/x)*y^(i-1);
  end for;
  Q:=Qnew;

  fun_field:=ext<Kx|Q>;
  binf:=Basis(MaximalOrderFinite(fun_field));
  d:=Degree(Q);
  mat:=ZeroMatrix(Kx,d,d);
  for i:=1 to d do
    for j:=1 to d do
      mat[i,j]:=Eltseq(fun_field!binf[i])[j];
    end for;
  end for;
  return Evaluate(mat,1/x);

end function;


mat_Winf_q_alternative:=function(Q,W0,Kxy) 

  // Compute the matrix Winf using W0, MaximalOrderInfinite
  // and some linear algebra.

  K:=CoefficientRing(CoefficientRing(Kxy));
  Kx<x>:=RationalFunctionField(K);
  Kxy<y>:=PolynomialRing(Kx);
  d:=Degree(Q);

  Qnew:=Kxy!0;
  C:=Coefficients(Q);
  for i:=1 to #C do
    Qnew:=Qnew+Evaluate(C[i],x)*y^(i-1);
  end for;
  Q:=Qnew;
  
  fun_field:=ext<Kx|Q>;
  binf:=Basis(MaximalOrderInfinite(fun_field));
  Winf:=ZeroMatrix(Kx,d,d);
  for i:=1 to d do
    for j:=1 to d do
      Winf[i,j]:=Eltseq(fun_field!binf[i])[j];;
    end for;
  end for;
  
  W:=W0*Winf^(-1);
  W:=Evaluate(W,1/x);
  Kt<t>:=PolynomialRing(K);
  
  denom:=Kt!1;
  for i:=1 to d do
    for j:=1 to d do
      denom:=LCM(denom,Denominator(W[i,j]));
    end for;
  end for;

  A:=ZeroMatrix(Kt,d,d);
  for i:=1 to d do
    for j:=1 to d do
      A[i,j]:=Kt!(W[i,j]*denom);
    end for;
  end for;  

  S,P1,P2:=SmithForm(A);
  
  S:=ChangeRing(S,Kx);
  S:=S/denom;
  Sinv:=S^(-1);
  for i:=1 to d do
    Sinv[i,i]:=x^(Valuation(Numerator(Sinv[i,i]))-Valuation(Denominator(Sinv[i,i])));
  end for;

  
  Winf:=Evaluate(Sinv*P1,1/x)*W0;

  return Winf;

end function;


smooth_q:=function(f,p,n)

  // Is f mod p separable?

  Fq:=FiniteField(p^n);
  Fqx:=PolynomialRing(FiniteField(p^n));
  C:=Coefficients(f);
  D:=[Fq|];
  for i:=1 to #C do
    D[i]:=Fq![IntegerRing()!elt:elt in Eltseq(C[i])];
  end for;
  if Degree(Fqx!D) eq Degree(f) and IsSeparable(Fqx!D) then
    return true;
  else
    return false;
  end if;
end function;


is_integral_q:=function(A,p,n)

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


check_model_q:=function(Q,p,n: alternative_Winf:=false)

  // Check whether Q,p,n is valid input for pcc_q.

  r,Delta:=auxpolys_q(Q,p,n);

  if ((Degree(r) lt 1) or (not smooth_q(r,p,n))) then // r = constant check not correct here...
    return false,0,0;
  end if;

  Kxy:=Parent(Q);
  Kx:=BaseRing(Kxy);
  K:=BaseRing(Kx);  

  W0:=mat_W0_q(Q,Kxy);
  if not is_integral_q(W0,p,n) then
    return false,0,0;
  end if; 

  W0inv:=W0^(-1);
  if not is_integral_q(W0inv,p,n) then
    return false,0,0;
  end if;

  if alternative_Winf then
    Winf:=mat_Winf_q_alternative(Q,W0,Kxy);
  else
    Winf:=mat_Winf_q(Q,Kxy);
  end if;

  if not is_integral_q(Winf,p,n) then
    return false,0,0;
  end if;

  Winfinv:=Winf^(-1);
  if not is_integral_q(Winfinv,p,n) then
    return false,0,0;
  end if;

  return true, W0, Winf;

end function;

