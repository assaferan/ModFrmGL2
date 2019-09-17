freeze;

////////////////////////////////////////////////// 
// This code is part of the pcc_p MAGMA library //
//                                              //
// copyright (c) 2016 Jan Tuitman               //
//////////////////////////////////////////////////


ord_0:=function(f)

  // Compute ord_0(f), where f is a rational function.

  return Valuation(Numerator(f))-Valuation(Denominator(f));
end function;


ord_0_mat:=function(A)

  // Compute ord_0(A), where A is a matrix of rational functions.

  v:=ord_0(A[1,1]);
  for i:=1 to NumberOfRows(A) do
    for j:=1 to NumberOfColumns(A) do
      if ord_0(A[i,j]) lt v then
        v:=ord_0(A[i,j]);
      end if;
    end for;
  end for;
  return v;
end function;


ord_r:=function(f,r)

  // Compute ord_r(f), where f is a rational function

  if f eq 0 then
    return Infinity();
  end if;
  Qx<x>:=PolynomialRing(RationalField());
  r:=Qx!r;
  fac:=Factorization(r);
  vlist:=[];
  for i:=1 to #fac do
    v:=0;
    while (Numerator(f) mod fac[i][1] eq 0) do
      f:=f/fac[i][1];
      v:=v+1;
    end while;
    while (Denominator(f) mod fac[i][1] eq 0) do
      f:=f*fac[i][1];
      v:=v-1;
    end while;
    Append(~vlist,v);
  end for; 
  min:=Minimum(vlist);
  return min;
end function;


ord_r_mat:=function(A,r)

  // Compute ord_r(A), where A is matrix of rational functions

  v:=ord_r(A[1,1],r);
  for i:=1 to NumberOfRows(A) do
    for j:=1 to NumberOfColumns(A) do
      if ord_r(A[i,j],r) lt v then
        v:=ord_r(A[i,j],r);
      end if;
    end for;
  end for;
  return v;
end function;


ord_inf:=function(f)

  // Compute ord_inf(f), where f is a rational function.

  return -Degree(Numerator(f))+Degree(Denominator(f));
end function;


ord_inf_mat:=function(A);

  // Compute ord_inf(A), where A is a matrix of rational functions.

  v:=ord_inf(A[1,1]);
  for i:=1 to NumberOfRows(A) do
    for j:=1 to NumberOfColumns(A) do
      if ord_inf(A[i,j]) lt v then
        v:=ord_inf(A[i,j]);
      end if;
    end for;
  end for;
  return v;
end function;


mat_W0:=function(Q)

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


mat_Winf:=function(Q)

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


mat_Winf_alternative:=function(Q,W0) 

  // Compute the matrix Winf using W0, MaximalOrderInfinite
  // and some linear algebra.

  Qx<x>:=RationalFunctionField(RationalField());
  Qxy<y>:=PolynomialRing(Qx);
  d:=Degree(Q);

  Qnew:=Qxy!0;
  C:=Coefficients(Q);
  for i:=1 to #C do
    Qnew:=Qnew+Evaluate(C[i],x)*y^(i-1);
  end for; 
  Q:=Qnew;
  
  K:=ext<Qx|Q>;
  binf:=Basis(MaximalOrderInfinite(K));
  Winf:=ZeroMatrix(Qx,d,d);
  for i:=1 to d do
    for j:=1 to d do
      Winf[i,j]:=Eltseq(K!binf[i])[j];
    end for;
  end for;
  
  W:=W0*Winf^(-1);
  W:=Evaluate(W,1/x);
  Qt<t>:=PolynomialRing(RationalField());
  
  denom:=Qt!1;
  for i:=1 to d do
    for j:=1 to d do
      denom:=LCM(denom,Denominator(W[i,j]));
    end for;
  end for;

  A:=ZeroMatrix(Qt,d,d);
  for i:=1 to d do
    for j:=1 to d do
      A[i,j]:=Qt!(W[i,j]*denom);
    end for;
  end for;  

  S,P1,P2:=SmithForm(A);
  
  S:=ChangeRing(S,Qx);
  S:=S/denom;
  Sinv:=S^(-1);
  for i:=1 to d do
    Sinv[i,i]:=x^(ord_0(Sinv[i,i]));
  end for;

  Winf:=Evaluate(Sinv*P1,1/x)*W0;

  return Winf;

end function;


ddx:=function(f)

  // Differentiate polynomial f(x)(y) with respect to x.

  C:=Coefficients(f);
  for i:=1 to #C do
    C[i]:=Derivative(C[i]);
  end for;
  return Parent(f)!C;
end function;


ddx_mat:=function(A)

  // Differentiate matrix of rational functions.

  for i:=1 to NumberOfRows(A) do
    for j:=1 to NumberOfColumns(A) do
      A[i,j]:=Derivative(A[i,j]);
    end for;
  end for;
  return A;
end function;


ddx_vec:=function(v)

  // Differentiate vector of rational functions.

  for i:=1 to #Eltseq(v) do
    v[i]:=Derivative(v[i]);
  end for;
  return v;
end function;


reduce_mod_Q:=function(f,Q)

  // Eliminate powers of y >= d_x.

  while Degree(f) gt Degree(Q)-1 do
    f:=f-LeadingCoefficient(f)*(Parent(f).1)^(Degree(f)-Degree(Q))*Q;
  end while;
  return f;
end function;


ram:=function(J0,Jinf)

  d:=NumberOfRows(Jinf);
  
  e_list:=[];
  for i:=1 to #J0 do
    for j:=1 to d do
      Append(~e_list,Denominator(RationalField()!J0[i][j,j]));
    end for;
  end for;
  if #e_list gt 0 then
    e_0:=Maximum(e_list);
  else
    e_0:=0;
  end if;
  
  e_list:=[];
  for i:=1 to d do
    Append(~e_list,Denominator(RationalField()!Jinf[i,i]));
  end for;
  e_inf:=Maximum(e_list);

  return e_0,e_inf;
end function;


con_mat:=function(Q,Delta,s)

  // Compute the matrix G.

  d:=Degree(Q);
  Qx<x>:=RationalFunctionField(RationalField());
  Qxy<y>:=PolynomialRing(Qx);
  
  Delta:=Qx!Delta;
  Q:=Qxy!Q;
  s:=Qxy!s;

  list:=[];
  list[1]:=Qxy!0;
  for i:=2 to d do
    list[i]:=-(i-1)*y^(i-2)*(s/Delta)*ddx(Q);
  end for;
  for i:=1 to #list do
    list[i]:=reduce_mod_Q(list[i],Q);
  end for;
  G:=ZeroMatrix(Qx,d,d);
  for i:=1 to d do
    for j:=1 to d do
      G[i,j]:=Coefficient(list[i],j-1); // G acts on the right on row vectors
    end for;
  end for;
  return(G);

end function;


jordan_inf:=function(Ginf)

  // Compute Jordan form of residue matrix at infinity

  res_Ginf:=-Evaluate((1/Parent(Ginf[1,1]).1)*Evaluate(Ginf,1/Parent(Ginf[1,1]).1),0);
  Jinf,Tinf:=JordanForm(res_Ginf);
  return Jinf,Tinf,Tinf^(-1);  
end function;


jordan_0:=function(r,G0)

  // Compute Jordan forms of residue matrices at finite points

  Qx<x>:=PolynomialRing(RationalField());
  r:=Qx!r;
  fac:=Factorization(r);
  J0:=[**];
  T0:=[**];
  T0inv:=[**];
  for i:=1 to #fac do
    if Degree(fac[i][1]) eq 1 then
      K:=RationalField();
      s:=-Evaluate(fac[i][1],0);
    else
      K<s>:=NumberField(fac[i][1]); 
    end if;
    res_G0:=Evaluate(G0*r/Derivative(r),s);
    J,T:=JordanForm(res_G0);
    Append(~J0,J);
    Append(~T0,T);
    Append(~T0inv,T^(-1));
  end for;
  return J0,T0,T0inv;
end function;


basis_kernel_mod_pN:=function(A,p,N)

  // Compute a basis for the kernel of the matrix A modulo p^N

  val:=Minimum([0] cat [Valuation(x,p) : x in Eltseq(A)]); 
  A:=p^(-val)*A; 
  N:=N-val;

  Zp:=pAdicRing(p,N);
  row:=NumberOfRows(A);
  col:=NumberOfColumns(A);
  matpN:=ZeroMatrix(Zp,row,col);
  for i:=1 to row do
    for j:=1 to col do
      matpN[i,j]:=Zp!A[i,j];
    end for;
  end for;
  S,P1,P2:=SmithForm(matpN);
  b:=[];
  for i:=Rank(S)+1 to row do
    Append(~b,P1[i]);
  end for;
  if #b gt 0 then
    b:=RowSequence(HermiteForm(Matrix(b)));
  end if;
  return b;
end function;


res_0:=function(w,Q,r,J0,T0inv)

  // Compute res_0(\sum w_i b^0_i dx/r).

  d:=Degree(Q);
  Qx<x>:=PolynomialRing(RationalField());
  r:=Qx!r;
  fac:=Factorization(r);
  res_list:=[];
  for i:=1 to #fac do
    if Degree(fac[i][1]) eq 1 then
      s:=Parent(T0inv[i][1,1])!(-Coefficient(fac[i][1],0));
    else
      s:=Parent(T0inv[i][1,1]).1;
    end if;
    v:=Vector(Evaluate(w,s));
    v:=v*T0inv[i];
    for j:=1 to d do
      if J0[i][j,j] eq 0 then
        res_list:=res_list cat Eltseq(v[j]);
      end if;
    end for; 
  end for;  

  return Vector(res_list);

end function;


val_Qttinv_d:=function(v)

  // Compute the valuation of an element of Qttinvd from res_inf.  

  val:=Valuation(v[1]);
  for i:=2 to #Eltseq(v) do
    if Valuation(v[i]) lt val then
      val:=Valuation(v[i]);
    end if;
  end for;
  return val;
end function;


res_inf:=function(w,Q,r,W0,Winf,Ginf,Jinf,Tinfinv)

  // Compute res_inf(\sum w_i b^0_i dx/r).

  d:=Degree(Q);
  degr:=Degree(r);
  Qd:=RSpace(RationalField(),d);
  Qttinv<t>:=LaurentSeriesRing(RationalField());
  Qttinvd:=RSpace(Qttinv,d);
  
  W:=Winf*W0^(-1);
  Winv:=W^(-1);
  w:=Qttinvd!Evaluate(w,t^(-1));
  w:=w*Evaluate(Winv,t^(-1));

  res_Ginf:=-Evaluate((1/Parent(Winf[1,1]).1)*Evaluate(Ginf,1/Parent(Winf[1,1]).1),0);

  // reduce to a cohomologous 1-form that is logarithmic at all points lying over x=inf:

  while val_Qttinv_d(w) lt -degr+1 do
    m:=-val_Qttinv_d(w)-degr+1;
    mat:=res_Ginf-m*IdentityMatrix(RationalField(),d);
    rhs:=Qd!0;
    for i:=1 to d do
      rhs[i]:=rhs[i]+Coefficient(-w[i],-m-degr+1)/LeadingCoefficient(r);
    end for;
    vbar:=rhs*mat^(-1);
    w:=w-ChangeRing(vbar,Qttinv)*t^(-m)*Evaluate(r*Ginf,t^(-1))-Evaluate(r,1/t)*m*t^(1-m)*ChangeRing(vbar,Qttinv);  
  end while;

  // now sum w_i b^{inf}_i dx/r is logarithmic at all points lying over x=inf

  w:=w*t^(degr-1);
  v:=Qd!0;
  for i:=1 to d do
    v[i]:=Coefficient(w[i],0);
  end for;

  // project v onto the eigenspace of res_Ginf of eigenvalue 0 

  v:=v*Tinfinv;
  res_list:=[];
  for i:=1 to d do
    if Jinf[i,i] eq 0 then
      Append(~res_list,v[i]);
    end if;
  end for;

  return Vector(res_list);
end function;


basis_coho:=function(Q,p,N,r,W0,Winf,G0,Ginf,J0,Jinf,T0inv,Tinfinv,exactcoho)
  
  // Compute a basis for H^1(X).

  Qx<x>:=PolynomialRing(RationalField());
  Qxy<y>:=PolynomialRing(Qx);
  d:=Degree(Q);
  Qxd:=RSpace(Qx,d);
  degr:=Degree(r);
 
  W:=Winf*W0^(-1);

  Winv:=W^(-1);
  ord0W:=ord_0_mat(W);
  ordinfW:=ord_inf_mat(W);
  ord0Winv:=ord_0_mat(Winv);
  ordinfWinv:=ord_inf_mat(Winv);

  // Compute a matrix with kernel (E0 intersect Einf).

  deg_bound_E0:=degr-ord0W-ordinfW-2; 
  basisE0:=[];
  for i:=0 to d-1  do 
    for j:=0 to deg_bound_E0 do
      Append(~basisE0,[i,j]);
    end for;
  end for;
  dimE0:=#basisE0;
  E0:=VectorSpace(RationalField(),dimE0);

  matE0nEinf:=ZeroMatrix(RationalField(),dimE0,d*(-ordinfW-ordinfWinv)); 
  for i:=1 to dimE0 do
    temp:=RowSequence(x^(basisE0[i][2])*Winv)[basisE0[i][1]+1];
    for j:=0 to d-1 do
      for k:=0 to (-ordinfW-ordinfWinv-1) do 
        matE0nEinf[i,j*(-ordinfW-ordinfWinv)+k+1]:=Coefficient(Numerator((Parent(W[1,1]).1)^(-ord0Winv)*temp[j+1]),k-ord0W-ord0Winv+degr-1); 
      end for;
    end for;
  end for;  

  // Compute the finite residues.
  
  w:=Qxd!0;
  w[1]:=1;
  res0dim:=Dimension(Parent(res_0(w,Q,r,J0,T0inv)));
  matres0:=ZeroMatrix(RationalField(),dimE0,res0dim); 
  for i:=1 to dimE0 do
    w:=Qxd!0;
    w[basisE0[i][1]+1]:=x^(basisE0[i][2]);
    coefs:=res_0(w,Q,r,J0,T0inv); 
    for j:=1 to res0dim do
        matres0[i,j]:=coefs[j];
    end for;
  end for;

  // Compute a basis for (E0 intersect Einf) intersect (ker_res_0). 

  mat:=ZeroMatrix(RationalField(),dimE0,NumberOfColumns(matE0nEinf)+NumberOfColumns(matres0));
  for i:=1 to dimE0 do
    for j:=1 to NumberOfColumns(matE0nEinf) do
      mat[i,j]:=matE0nEinf[i,j];
    end for;
    for j:=1 to NumberOfColumns(matres0) do
      mat[i,j+NumberOfColumns(matE0nEinf)]:=matres0[i,j];
    end for;
  end for;

  if exactcoho then    
    b0:=Basis(Kernel(mat));             // Exact linear algebra
  else
    b0:=basis_kernel_mod_pN(mat,p,3*N); // Linear algebra mod p^N
  end if;
 
  dimE0nEinfnkerres0:=#b0;
  
  // Compute a projection from E0 onto (E0 intersect Einf) intersect (ker_res_0).

  pivotsb0:=[];
  for i:=1 to #b0 do
    j:=1;
    while b0[i][j] eq 0 do
      j:=j+1;
    end while;
    Append(~pivotsb0,j);
  end for;

  matb0:=IdentityMatrix(RationalField(),dimE0);
  for i:=1 to dimE0 do
    for j:=1 to #pivotsb0 do
      if i eq pivotsb0[j] then
        for k:=1 to dimE0 do
          matb0[i,k]:=b0[j][k];
        end for;
      end if;
    end for;
  end for;
  b0:=RowSequence(matb0); // Extends the basis for E0nEinfnkerres0 to one for E0
  matb0inv:=matb0^(-1);
  for i:=dimE0 to 1 by -1 do
    if not i in pivotsb0 then
      matb0inv:=RemoveColumn(matb0inv,i); // The matrix of the projection from E0 onto E0nEinfnkerres0
    end if;
  end for;
  
  // Compute a matrix with kernel (B0 intersect Binf)

  deg_bound_B0:=-ord0W-ordinfW-1;
  basisB0:=[];
  for i:=0 to d-1  do 
    for j:=0 to deg_bound_B0 do
      Append(~basisB0,[i,j]);
    end for;
  end for;
  dimB0:=#basisB0;
  B0:=VectorSpace(RationalField(),dimB0);

  matB0nBinf:=ZeroMatrix(RationalField(),dimB0,d*(-ordinfW-ordinfWinv));
  for i:=1 to dimB0 do
    power_x:=basisB0[i][2];
    power_y:=basisB0[i][1];
    temp:=RowSequence(x^(power_x)*Winv)[power_y+1];
    for j:=0 to d-1 do
      for k:=0 to (-ordinfW-ordinfWinv-1) do
        matB0nBinf[i,j*(-ordinfW-ordinfWinv)+k+1]:=Coefficient(Numerator((Parent(W[1,1]).1)^(-ord0Winv)*temp[j+1]),k-ord0W-ord0Winv);
      end for;
    end for;
  end for;

  // Compute d(B0 intersect Binf).

  B0nBinf:=Kernel(matB0nBinf);
  basisB0nBinf:=Basis(B0nBinf);
  dimB0nBinf:=#basisB0nBinf;  

  list:=[];
  for i:=1 to dimB0nBinf do
    vec:=basisB0nBinf[i];
    vecQxd:=Qxd!0;
    for j:=1 to dimB0 do
      vecQxd[basisB0[j][1]+1]:=vecQxd[basisB0[j][1]+1]+vec[j]*x^(basisB0[j][2]);
    end for;
    vecQxd:=vecQxd*ChangeRing(r*G0,Qx)+r*ddx_vec(vecQxd);
    coefs:=[];
    for j:=1 to dimE0 do
      power_x:=basisE0[j][2];
      power_y:=basisE0[j][1];
      coefs[j]:=Coefficient(vecQxd[power_y+1],power_x);  
    end for;
    Append(~list,(E0!coefs)*matb0inv);
  end for;

  // Compute H1(X-x^(-1)(infty))

  cocyc:=VectorSpace(RationalField(),NumberOfColumns(matb0inv));
  cobound:=sub<cocyc|list>;
  H1Xminusinfty:=Complement(cocyc,cobound);
  dimH1Xminusinfty:=Dimension(H1Xminusinfty);

  b1:=Basis(H1Xminusinfty) cat Basis(cobound);
  matb1:=Matrix(b1);
  matb1inv:=matb1^(-1);
  for i:=#b1 to Dimension(H1Xminusinfty)+1 by -1 do
    matb1inv:=RemoveColumn(matb1inv,i);
  end for;

  // Compute the infinite residues:

  w:=Qxd!0;
  w[1]:=1;
  resinfdim:=Dimension(Parent(res_inf(w,Q,r,W0,Winf,Ginf,Jinf,Tinfinv)));
  matresinf:=ZeroMatrix(RationalField(),dimH1Xminusinfty,resinfdim); 
  
  for i:=1 to dimH1Xminusinfty do   
    v:=E0!0;
    for j:=1 to Degree(cocyc) do
      v:=v+b1[i][j]*(E0!(b0[pivotsb0[j]]));
    end for;
    w[basisE0[i][1]+1]:=x^(basisE0[i][2]);
    w:=Qxd!0;
    for j:=1 to dimE0 do
      w[basisE0[j][1]+1]:=w[basisE0[j][1]+1]+v[j]*x^(basisE0[j][2]);
    end for;
    coefs:=res_inf(w,Q,r,W0,Winf,Ginf,Jinf,Tinfinv);   
    for j:=1 to resinfdim do
        matresinf[i,j]:=coefs[j];
    end for;
  end for;

  // Compute H^1(X)

  if exactcoho then                           
    H1X:=Kernel(matresinf);                   // Exact linear algebra
    b2:=Basis(H1X);
  else
    b2:=basis_kernel_mod_pN(matresinf,p,2*N); // Linear algebra mod p^N
  end if;

  dimH1X:=#b2;

  pivotsb2:=[];
  for i:=1 to #b2 do
    j:=1;
    while b2[i][j] eq 0 do
      j:=j+1;
    end while;
    Append(~pivotsb2,j);
  end for;
  
  matb2:=IdentityMatrix(RationalField(),dimH1Xminusinfty);
  for i:=1 to dimH1Xminusinfty do
    for j:=1 to #pivotsb2 do
      if i eq pivotsb2[j] then
        for k:=1 to dimH1Xminusinfty do
          matb2[i,k]:=b2[j][k];
        end for;
      end if;
    end for;
  end for;
  b2:=RowSequence(matb2); // Extends the basis for H1X to one for H1Xminusinfty
  matb2inv:=matb2^(-1);
  for i:=dimH1Xminusinfty to 1 by -1 do
    if not i in pivotsb2 then
      matb2inv:=RemoveColumn(matb2inv,i); // The matrix of the projection from H1Xminusinfty onto H1X
    end if;
  end for;

  b:=[];
  for i:=1 to dimH1X do
    v:=cocyc!0;
    for j:=1 to dimH1Xminusinfty do 
      v:=v+b2[pivotsb2[i]][j]*b1[j];
    end for;
    w:=E0!0;
    for j:=1 to dimE0nEinfnkerres0 do
      w:=w+v[j]*(E0!b0[pivotsb0[j]]);
    end for;
    Append(~b,w);
  end for;

  // finding a common denominator for the elements of b
 
  denom:=1;
  for i:=1 to #b do
    for j:=1 to dimE0 do
      denom:=LCM(denom,Denominator(b[i][j]));
    end for;
  end for;
  for i:=1 to #b do
    b[i]:=denom*b[i];
  end for;

  quomap:=matb0inv*matb1inv*matb2inv/denom; // dit klopt niet met bovenstaand blok

  Z:=IntegerRing();
  Zx<x>:=PolynomialRing(Z);
  Zxd:=RSpace(Zx,d);
  basis:=[Zxd|];

  for i:=1 to #b do
    vec:=Zxd!0;
    for j:=1 to dimE0 do
      vec[basisE0[j][1]+1]:=vec[basisE0[j][1]+1]+(Z!(b[i][j]))*x^(basisE0[j][2]);
    end for;
    Append(~basis,vec);
  end for;

  return basis,quomap;
    
end function;
