freeze;

////////////////////////////////////////////////// 
// This code is part of the pcc_q MAGMA library //
//                                              //
// copyright (c) 2016 Jan Tuitman               //
//////////////////////////////////////////////////


import "auxpolys_q.m": log;
import "coho_q.m": Zax_to_Kx, ord_0_mat, ord_inf_mat;


reduce_mod_pN_K:=function(f,p,N);

  // Reduce an element of K mod p^N.

  if f eq 0 then 
    return f;
  else
    K:=Parent(f);
    denom:=Denominator(f);
    f:=f*denom;
  
    ord,unit:=Valuation(denom,p); 
    m:=p^(N+ord);
    ppow:=p^(ord);

    Zmodm:=IntegerRing(m);
    unitinv:=(Zmodm!unit)^-1;
  
    C:=Eltseq(f);
    C:=ChangeUniverse(C,Zmodm);
    C:=Coefficients(unitinv*Polynomial(C));
    for i:=#C+1 to Degree(K) do
      C[i]:=0;
    end for;
    C:=ChangeUniverse(C,IntegerRing());
    C:=ChangeUniverse(C,RationalField()); 
    return (K!C)/ppow;
  end if;
end function;


reduce_mod_pN_K_mat:=function(A,p,N);

  // Reduce a matrix over K mod p^N

  if A eq 0 then
    return A;
  else
    K:=Parent(A[1,1]);
    denom:=LCM([Denominator(elt): elt in Eltseq(A)]);
    A:=A*denom;
  
    ord,unit:=Valuation(denom,p); 
    m:=p^(N+ord);
    ppow:=p^(ord);

    Zmodm:=IntegerRing(m);
    unitinv:=(Zmodm!unit)^-1;

    for i:=1 to NumberOfRows(A) do
      for j:=1 to NumberOfColumns(A) do
        C:=Eltseq(A[i,j]);
        C:=ChangeUniverse(C,Zmodm);
        C:=Coefficients(unitinv*Polynomial(C));
        for i:=#C+1 to Degree(K) do
          C[i]:=0;
        end for;
        C:=ChangeUniverse(C,IntegerRing());
        C:=ChangeUniverse(C,RationalField());
        A[i,j]:=K!C;
      end for;
    end for;
    return A/ppow;
  end if;
end function;


reduce_mod_pN_Kx:=function(f,p,N);

  // Reduce a polynomial f over K mod p^N.

  if f eq 0 then
    return f;
  else
    Kx:=Parent(f);
    K:=BaseRing(Kx);

    denom:=LCM([Denominator(coef): coef in Coefficients(f)]);
    f:=f*denom;

    ord,unit:=Valuation(denom,p); 
    m:=p^(N+ord);
    ppow:=p^(ord);

    Zmodm:=IntegerRing(m);
    unitinv:=(Zmodm!unit)^-1;
  
    C:=Coefficients(f);
    C:=&cat[Eltseq(coef):coef in C];
    C:=ChangeUniverse(C,Zmodm);    
    C:=[unitinv*elt:elt in C];
    C:=ChangeUniverse(C,IntegerRing());
    C:=ChangeUniverse(C,RationalField());
    C:=Partition(C,Degree(K));
    C:=[K!elt:elt in C];
    return (Kx!C)/ppow;
  end if;  
end function;


reduce_mod_pN_Ki:=function(f,p,N);

  // Reduce an element of Ki (over K) mod p^N

  if f eq 0 then
    return f;
  else
    Ki:=Parent(f);
    K:=BaseRing(Ki);

    denom:=Denominator(f);
    f:=f*denom;

    ord,unit:=Valuation(denom,p); 
    m:=p^(N+ord);
    ppow:=p^(ord);

    Zmodm:=IntegerRing(m);
    unitinv:=(Zmodm!unit)^-1;
  
    C:=Eltseq(f);
    C:=&cat[Eltseq(elt):elt in C];
    C:=ChangeUniverse(C,Zmodm);
    C:=[unitinv*elt:elt in C];
    C:=ChangeUniverse(C,IntegerRing());
    C:=ChangeUniverse(C,RationalField());
    C:=Partition(C,Degree(K));
    C:=[K!elt:elt in C];
    C:=[Ki!elt:elt in C];
    return (Ki!C)/ppow;
  end if;  
end function;


reduce_mod_pN_Ki_mat:=function(A,p,N);

  // Reduce a matrix over Ki (over K) mod p^N

  if A eq 0 then
    return 0;
  else
    Ki:=Parent(A[1,1]);
    K:=BaseRing(Ki);

    denom:=LCM([Denominator(elt): elt in Eltseq(A)]);
    A:=A*denom;

    ord,unit:=Valuation(denom,p); 
    m:=p^(N+ord);
    ppow:=p^(ord);

    Zmodm:=IntegerRing(m);
    unitinv:=(Zmodm!unit)^-1;

    C:=Eltseq(A);
    C:=&cat[Eltseq(elt):elt in C];
    C:=&cat[Eltseq(elt):elt in C];
    C:=ChangeUniverse(C,Zmodm);
    C:=[unitinv*elt:elt in C];
    C:=ChangeUniverse(C,IntegerRing());
    C:=ChangeUniverse(C,RationalField());
    C:=Partition(C,Degree(K));
    C:=[K!elt:elt in C];
    C:=Partition(C,Degree(Ki));
    C:=[Ki!elt:elt in C];
    C:=Partition(C,NumberOfColumns(A));
    A:=Matrix(C);

  return A/ppow;
  end if;
  
end function;


reduce_mod_pN_Kttinv:=function(f,p,N); 

  // Reduce an element of K[t,t^{-1}] mod p^N.

  if f eq 0 then
    return f;
  else
    Kttinv:=Parent(f);
    K:=BaseRing(Kttinv);
     
    denom:=LCM([Denominator(coef): coef in Coefficients(f)]);
    f:=f*denom;

    ord,unit:=Valuation(denom,p); 
    m:=p^(N+ord);
    ppow:=p^(ord);

    Zmodm:=IntegerRing(m);
    unitinv:=(Zmodm!unit)^-1;

    val:=Valuation(f);
    C:=Coefficients(f);
    C:=&cat[Eltseq(coef):coef in C];
    C:=ChangeUniverse(C,IntegerRing());
    C:=ChangeUniverse(C,Zmodm);
    C:=[unitinv*elt:elt in C];
    C:=ChangeUniverse(C,IntegerRing());
    C:=ChangeUniverse(C,RationalField());
    C:=Partition(C,Degree(K));
    C:=[K!elt:elt in C];
  end if;
  return (Parent(f).1)^val*(Parent(f)!C)/ppow;
end function;


push_to_Ki_mat:=function(A,Ki)

  // Push a matrix to Ki (over K)

  row:=NumberOfRows(A);
  col:=NumberOfColumns(A);
  B:=ZeroMatrix(Ki,row,col);

  for i:=1 to row do
    for j:=1 to col do
      B[i,j]:=Ki!Eltseq(A[i,j]);
    end for;
  end for;

  return B;

end function;


inv_Ki:=function(f,p,n,m,N);

  // Invert an element of Ki (over K) mod p^N

  Ki:=Parent(f);
  K:=BaseRing(Ki);
  ri:=DefiningPolynomial(Ki);

  C:=Eltseq(f);  
  valset:=[];
  for i:=1 to #C do
    for j:=1 to n do
      if C[i][j] ne 0 then
        Append(~valset,Valuation(C[i][j],p));
      end if;
    end for;
  end for;
  val:=Minimum(valset);
  
  N:=N+val;
  f:=f/p^(val);
  
  Fq:=ext<FiniteField(p)|m>;
  Fqx:=PolynomialRing(Fq);
  
  rimodp:=Fqx!0;
  C:=Coefficients(ri);
  for i:=1 to #C do
    for j:=1 to n do
      rimodp:=rimodp+(Fq!C[i][j])*(Fq.1)^(j-1)*(Fqx.1)^(i-1);
    end for;
  end for;
  
  Fqxmodri:=quo<Fqx|Fqx!rimodp>;
  
  fmodp:=Fqxmodri!0;
  C:=Eltseq(f);
  for i:=1 to #C do
    for j:=1 to n do
      fmodp:=fmodp+(Fq!C[i][j])*(Fq.1)^(j-1)*(Fqxmodri.1)^(i-1);
    end for;
  end for;

  invmodp:=1/fmodp;

  inv:=Ki!0;
  C:=Coefficients(invmodp);
  for i:=1 to #C do
    D:=Eltseq(C[i]);
    for j:=1 to #D do
      inv:=inv+(IntegerRing()!D[j])*(K.1)^(j-1)*(Parent(f).1)^(i-1);
    end for;
  end for;
  
  prec:=[];
  while N gt 1 do
    Append(~prec,N);
    N:=Ceiling(N/2);
  end while;
  prec:=Reverse(prec);
  
  for i:=1 to #prec do
    inv:=reduce_mod_pN_Ki(inv*(2-inv*f),p,prec[i]);
  end for; 
  
  return inv/(p^(val));

end function;


red_lists:=function(Q,p,n,m,N,r,W0,Winf,G0,Ginf,e0,einf,J0,Jinf,T0,Tinf,T0inv,Tinfinv,Kx) 

  // Precompute the finite and infinite reduction matrices, that will be used in
  // the cohomological reductions (coho_red_fin and coho_red_inf)

  // TODO: handle case Ki=K

  K:=BaseRing(Kx);

  d:=Degree(Q);
  W:=Winf*W0^(-1);

  rK:=Zax_to_Kx(r,Kx);
  lc_rK:=LeadingCoefficient(rK);
  rK:=Numerator(rK/lc_rK);

  fac:=Factorisation(rK);

  // Finite reduction matrices

  N0:=Floor(log(p,p*e0*(N-1)));
  Nw:=N+N0; // working precision

  riseq:=[];
  redlistfinfac:=[**];

  for i:=1 to #J0 do

    redlistfinKi:=[];

    ri:=fac[i][1];
    Append(~riseq,ri);

    if Degree(ri) eq 1 then
      D:=J0[i];
      P:=reduce_mod_pN_K_mat(T0[i],p,Nw);
      Pinv:=reduce_mod_pN_K_mat(T0inv[i],p,Nw);
      
      denom:=reduce_mod_pN_K(Evaluate(Derivative(rK),-Evaluate(ri,0)),p,Nw);
      denominv:=reduce_mod_pN_K(1/denom,p,Nw); // can still do Hensel here...  

      for l:=1 to p*(N-1) do
        D:=D-IdentityMatrix(K,d);  
        mat:=Pinv*D^(-1)*P;
        mat:=reduce_mod_pN_K_mat(mat,p,Nw);
        mat:=denominv*mat;
        mat:=reduce_mod_pN_K_mat(mat,p,Nw);
        Append(~redlistfinKi,mat);
      end for;  
    else
      Ki:=ext<K|ri>;
    
      ri:=reduce_mod_pN_Kx(ri,p,Nw);
      Ki:=ext<K|ri>; // redefining Ki, same mod p^Nw    

      D:=push_to_Ki_mat(J0[i],Ki);
      P:=reduce_mod_pN_Ki_mat(push_to_Ki_mat(T0[i],Ki),p,Nw);
      Pinv:=reduce_mod_pN_Ki_mat(push_to_Ki_mat(T0inv[i],Ki),p,Nw);

      denom:=reduce_mod_pN_Ki(Evaluate(Derivative(rK),Ki.1),p,Nw);
      denominv:=inv_Ki(denom,p,n,m,Nw); 

      for l:=1 to p*(N-1) do
        D:=D-IdentityMatrix(Ki,d);  
        mat:=Pinv*D^(-1)*P;
        mat:=reduce_mod_pN_Ki_mat(mat,p,Nw);
        mat:=denominv*mat;
        mat:=reduce_mod_pN_Ki_mat(mat,p,Nw);
        Append(~redlistfinKi,mat);
      end for;
    end if;
    Append(~redlistfinfac,redlistfinKi);
  end for;

  rK0:=reduce_mod_pN_Kx(rK,p,Nw);

  L:=[];
  for i:=1 to #J0 do
    fiseq:=[];
    for k:=1 to #J0 do
      if k eq i then
        fiseq[k]:=Kx!1;
      else
        fiseq[k]:=Kx!0;
      end if;   
    end for;
    Append(~L,reduce_mod_pN_Kx(ChineseRemainderTheorem(fiseq,riseq),p,Nw));
  end for;

  redlistfin:=[];
  for l:=1 to p*(N-1) do
    mat:=ZeroMatrix(Kx,d,d);
    for i:=1 to d do
      for j:=1 to d do
        entry:=Kx!0;
        for k:=1 to #J0 do
          if Degree(riseq[k]) eq 1 then
            entry:=entry+redlistfinfac[k][l][i,j]*L[k];
          else
            entry:=entry+((Kx!Eltseq(redlistfinfac[k][l][i,j]))*L[k] mod rK0);
          end if;
        end for;
        mat[i,j]:=reduce_mod_pN_Kx(entry,p,Nw);
      end for;
    end for;
    Append(~redlistfin,mat);
  end for;

  // Infinite reduction matrices

  Ninf:=Floor(log(p,-p*(ord_0_mat(W)+1)*einf)-ord_inf_mat(W^(-1)));
  Nw:=N+N0+Ninf; // working precision

  K:=Parent(Tinf[1,1]);
  D:=reduce_mod_pN_K_mat(Jinf,p,Nw);
  P:=reduce_mod_pN_K_mat(Tinf,p,Nw);
  Pinv:=reduce_mod_pN_K_mat(Tinfinv,p,Nw);
  redlistinf:=[];
  for m:=1 to  (-p*(ord_0_mat(W)+ord_inf_mat(W)+1)-ord_inf_mat(W^(-1))) do
    D:=D-IdentityMatrix(K,d);
    mat:=Pinv*D^(-1)*P;
    mat:=reduce_mod_pN_K_mat(mat,p,Nw);
    Append(~redlistinf,mat);
  end for;

  return redlistfin,redlistinf;

end function;


convert_to_Kxzzinvd:=function(w,Q,Kx); 

  // Converts an element of S^d to one of (K[x][z,z^{-1}])^d 

  d:=Degree(Q);
  Kxz<z>:=LaurentSeriesRing(Kx);
  
  C:=[];
  for i:=1 to d do
    D,val:=Coefficients(w[i]);
    E:=[];
    for j:=1 to #D do
      E[j]:=Zax_to_Kx(PolynomialRing(PolynomialRing(IntegerRing()))!Coefficients(D[j]),Kx); 
    end for;
    C[i]:=z^(-1)*(Kxz.1)^(val+1)*(Kxz!E); // check z^(-1), seems necessary
  end for;
  
  return C;
end function;


val_Kxz_d:=function(v)

  // Compute the valuation of an element of (K[x][z,z^{-1}])^d.  

  val:=Valuation(v[1]);
  for i:=2 to #Eltseq(v) do
    if Valuation(v[i]) lt val then
      val:=Valuation(v[i]);
    end if;
  end for;
  return val;
end function;


coho_red_fin:=function(w,Q,p,N,r,G0,redlistfin,Kx); 

  // Reduce the 1-form w dx/r w.r.t. the basis [y^0,..,y^{d-1}] in cohomology 
  // until it has logaritmic poles at all points lying over the zeros of r.

  Kxz:=LaurentSeriesRing(Kx);
  d:=Degree(Q);
  V:=RSpace(Kx,d);

  rK:=Zax_to_Kx(r,Kx);
  lc_rK:=LeadingCoefficient(rK);
  rK:=Numerator(rK/lc_rK);

  M0:=ZeroMatrix(Kx,d,d);
  for i:=1 to d do 
    for j:=1 to d do 
      M0[i,j]:=reduce_mod_pN_Kx(Numerator(rK*G0[i,j]),p,N); 
    end for; 
  end for; 
  rK:=reduce_mod_pN_Kx(rK,p,N);

  zero:=true;
  for i:=1 to d do
    if w[i] ne 0 then
      zero:=false;
    end if;
  end for;

  if zero then
    return w;
  end if;

  l0:=-val_Kxz_d(w);
  if l0 le 0 then
    return w;
  end if;

  wcoefs:=[];
  for i:=1 to d do
    vec:=[Kx|];
    for j:=-l0 to 0 do
      vec[j+l0+1]:=Coefficient(w[i],j);  
    end for;
    Append(~wcoefs,vec);
  end for;

  l:=l0;
  while l gt 0 do
    wvec:=V!0;
    for i:=1 to d do
      wvec[i]:=wcoefs[i][-l+l0+1];
    end for;
    red_mat:=redlistfin[l];
    vvec:=wvec*red_mat;
    for i:=1 to d do
      vvec[i]:=vvec[i] mod rK;
    end for;
    mat:=ZeroMatrix(Kx,d,d);
    for i:=1 to d do
      for j:=1 to d do
        mat[i,j]:=M0[i,j];
      end for;
    end for;
    for i:=1 to d do
      mat[i,i]:=mat[i,i]-l*Derivative(rK);
    end for;
    uvec:=wvec-vvec*mat; 
    for i:=1 to d do
      uvec[i]:=reduce_mod_pN_Kx((uvec[i] div rK)-Derivative(vvec[i]),p,N);
    end for; 
    for i:=1 to d do
      wcoefs[i][-l+l0+1]:=wcoefs[i][-l+l0+1]-wvec[i];
      wcoefs[i][-l+l0+2]:=wcoefs[i][-l+l0+2]+uvec[i]; 
    end for;
    l:=l-1;
  end while;
  
  for i:=1 to d do    
    C:=[];
    C[1]:=wcoefs[i][l0+1];
    if w[i] ne 0 then
      for j:=1 to Degree(w[i]) do
        C[j+1]:=Coefficient(w[i],j);  
      end for;
    end if; 
    w[i]:=(Kxz!C);
  end for;

  return w;
end function;


eval_pN:=function(f,g,p,N);  

  // Evaluate f at g mod p^N.

  if f eq 0 then
    return CoefficientRing(Parent(f))!0;
  end if;

  k:=Ceiling((Degree(f)+1)/4);
  h:=[];
  for i:=0 to k-1 do
    h[i+1]:=CoefficientRing(Parent(f))!Coefficient(f,4*i+3);
    for j:=1 to 3 do
      h[i+1]:=reduce_mod_pN_Kx(h[i+1]*g+Coefficient(f,4*i+3-j),p,N);
    end for;
  end for;
  h[k+1]:=0;

  gpow:=reduce_mod_pN_Kx(g^4,p,N);

  while k gt 1 do
    h_old:=h;
    h:=[];
    k:=Ceiling(k/2);
    for i:=0 to k-1 do
      h[i+1]:=reduce_mod_pN_Kx(h_old[2*i+1]+h_old[2*i+2]*gpow,p,N);  
    end for;
    h[k+1]:=0;
    if k gt 1 then
      gpow:=reduce_mod_pN_Kx(gpow^2,p,N);  
    end if;
  end while;
 
  return h[1];
end function;


change_basis_b0binf:=function(w,p,N,r,W0,Winf,Kx);

  // Change basis from [b^0_0,..b^0_(d-1)] to [b^{inf}_0,..,b^{inf}_{d-1}].

  K:=BaseRing(Kx);
  d:=NumberOfRows(Winf);

  rK:=Zax_to_Kx(r,Kx);
  lc_rK:=LeadingCoefficient(rK);
  rK:=reduce_mod_pN_Kx(Numerator(rK/lc_rK),p,N); 
  
  Kttinv<t>:=LaurentSeriesRing(K);
  Kttinvd:=RSpace(Kttinv,d);
  
  W:=Winf*W0^(-1);
  Winv:=W^(-1);
  wnew:=Kttinvd!0;
  for i:=1 to d do
    temp:=eval_pN(w[i],rK,p,N);
    if temp eq 0 then
      wnew[i]:=Kttinv!0;
    else
      wnew[i]:=t^(-Degree(temp))*(Kttinv!Reverse(Coefficients(temp)));
    end if;
  end for;
  w:=wnew*Evaluate(Winv,t^(-1));

  return w;
end function;


coho_red_inf:=function(w,Q,p,N,r,W0,Winf,Ginf,redlistinf,Kx);

  // Reduce the 1-form w dx/r w.r.t. the basis [b^{inf}_0,..,b^{inf}_{d-1}] in cohomology,
  // lowering the pole order at the point lying over the point at infinity.

  K:=BaseRing(Kx);
  d:=Degree(Q);
  Kd:=RSpace(K,d);

  Kttinv<t>:=LaurentSeriesRing(K);
  Kttinvd:=RSpace(Kttinv,d);
  
  degr:=Degree(r);

  zero:=true;
  for i:=1 to d do
    if w[i] ne 0 then
      zero:=false;
    end if;
  end for;

  if zero then
    return w;
  end if;
  
  W:=Winf*W0^(-1);  
  ord0W:=ord_0_mat(W);

  rK:=Zax_to_Kx(r,Kx);
  Minf:=rK*Ginf;
  lc_rK:=LeadingCoefficient(rK);
  rK:=Numerator(rK/lc_rK);
  Minf:=Minf/lc_rK;

  Minftinv:=Evaluate(Minf,t^(-1));
  rtinv:=Evaluate(rK,1/t);

  rtinv:=reduce_mod_pN_Kttinv(rtinv,p,N); 
  for i:=1 to NumberOfRows(Minftinv) do 
    for j:=1 to NumberOfColumns(Minftinv) do 
      Minftinv[i,j]:=reduce_mod_pN_Kttinv(Minftinv[i,j],p,N); 
    end for; 
  end for; 

  vallist:=[];
  deglist:=[0];
  for i:=1 to d do
    if w[i] ne 0 then
      Append(~vallist,Valuation(w[i]));
      Append(~deglist,Degree(w[i]));
    end if;
  end for;

  valw:=Minimum(vallist);
  degw:=Maximum(deglist);
   
  wcoefs:=[];
  for i:=1 to d do
    vec:=[K|];
    for j:=valw to degw do
      vec[j-valw+1]:=Coefficient(w[i],j);  
    end for;
    Append(~wcoefs,vec);
  end for;

  m0:=-valw-degr+1;

  m:=m0;
  while m gt -(ord0W+1) do
    wvec:=Kd!0;
    for i:=1 to d do
      wvec[i]:=-wcoefs[i][-m+m0+1];
    end for;
    red_mat:=redlistinf[m];
    vvec:=wvec*red_mat;
    dif:=((Kttinvd!vvec)*t^(-m)*Minftinv)+rtinv*m*t^(1-m)*(Kttinvd!vvec);
    for i:=1 to d do
      difmodpN:=reduce_mod_pN_Kttinv(dif[i],p,N);
      C,val:=Coefficients(difmodpN);
      for j:=1 to #C do
        wcoefs[i][j+val-1+m0+degr]:=wcoefs[i][j+val-1+m0+degr]-C[j];
      end for;
    end for;
    m:=m-1;
  end while;

  for i:=1 to d do
    w[i]:=reduce_mod_pN_Kttinv(t^(-m0-degr+1)*(Kttinv!wcoefs[i]),p,N);
  end for;    

  return w;
end function;


change_basis_binfb0:=function(w,W0,Winf,Kx);

  // Change basis from [b^{inf}_0,..,b^{inf}_{d-1}] to [b^0_0,..b^0_(d-1)].

  t:=Parent(w[1]).1;
  
  W:=Winf*W0^(-1);
  w:=w*Evaluate(W,t^(-1));
  w:=Evaluate(w,t^(-1));
  for i:=1 to NumberOfColumns(w) do
    temp:=w[1,i];
    if temp ne 0 then
      for j:=Valuation(temp) to -1 do
        temp:=temp-Coefficient(temp,j)*t^j;
      end for;
    end if;
    w[1,i]:=temp;
  end for;
  w:=Evaluate(w,Kx.1);
  return w;
end function;
