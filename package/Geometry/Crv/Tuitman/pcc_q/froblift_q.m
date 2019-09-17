freeze;

////////////////////////////////////////////////// 
// This code is part of the pcc_q MAGMA library //
//                                              //
// copyright (c) 2016 Jan Tuitman               //
//////////////////////////////////////////////////


import "coho_q.m": Zax_to_Kx, ord_r_mat;


getrings:=function(p,N,m);

  // Construct rings mod p^N.

  O<a>:=quo<PolynomialRing(IntegerRing(p^N))|m>;
  Ox<x>:=PolynomialRing(O);
  S<z>:=LaurentSeriesRing(Ox); // z=r
  R<y>:=PolynomialRing(S);
  return O,Ox,S,R;
end function;


push_to_R:=function(f,R)

  // Push to the ring R (from getrings)

  R1:=Parent(f); S1:=BaseRing(R1); Ox1:=BaseRing(S1); O1:=BaseRing(Ox1);
  S:=BaseRing(R); Ox:=BaseRing(S); O:=BaseRing(Ox);
  phi:=hom<O1->O|O.1>; phi:=hom<Ox1->Ox|phi,Ox.1>; phi:=hom<S1->S|phi,S.1>; phi:=hom<R1->R|phi,R.1>;
  g:=phi(f);
  return g;
end function;


push_to_S:=function(f,S)

  // Push to the ring S (from getrings)

  S1:=Parent(f); Ox1:=BaseRing(S1); O1:=BaseRing(Ox1);
  Ox:=BaseRing(S); O:=BaseRing(Ox);
  phi:=hom<O1->O|O.1>; phi:=hom<Ox1->Ox|phi,Ox.1>; phi:=hom<S1->S|phi,S.1>;
  g:=phi(f);
  return g;
end function;


push_to_Ox:=function(f,Ox);

  // Push to the ring Ox (from getrings)
  
  Ox1:=Parent(f); O1:=BaseRing(Ox1);
  O:=BaseRing(Ox);
  phi:=hom<O1->O|O.1>; phi:=hom<Ox1->Ox|phi,Ox.1>;
  g:=phi(f);
  return g;
end function;


Zax_to_Ox:=function(f,Ox);

  // Push from Zax to the ring Ox

  Zax:=Parent(f); Za:=BaseRing(Zax);
  O:=BaseRing(Ox);
  phi:=hom<Za->O|O.1>; phi:=hom<Zax->Ox|phi,Ox.1>;
  g:=phi(f);
  return g;
end function;


Zaxy_to_R:=function(f,R);

  // Push from Zaxy to the ring R

  Zaxy:=Parent(f); Zax:=BaseRing(Zaxy); Za:=BaseRing(Zax);
  S:=BaseRing(R); Ox:=BaseRing(S); O:=BaseRing(Ox);
  phi:=hom<Za->O|O.1>; phi:=hom<Zax->Ox|phi,Ox.1>; phi:=hom<Zaxy->R|phi,R.1>;
  g:=phi(f);
  return g;
end function;


sigma_Ox:=function(f,p,n,m,N);

  // Apply p-th power Frobenius to an element of Ox (coefficientwise).

  Z:=IntegerRing();
  Zq:=UnramifiedExtension(pAdicRing(p,N),m);
  C:=Coefficients(f);
  for i:=1 to #C do
    D:=Coefficients(GaloisImage(Zq!Coefficients(C[i]),1));
    E:=[];
    for i:=1 to #D do
      E[i]:=Z!D[i];
    end for;
    C[i]:=BaseRing(Parent(f))!E;
  end for;
  return Parent(f)!C;
end function;


sigma_R:=function(f,p,n,m,N);

  // Apply p-th power Frobenius to an element of R (coefficientwise).

  R:=Parent(f);
  S:=BaseRing(R);
  Ox:=BaseRing(S);
  O:=BaseRing(Ox);

  C:=Coefficients(f);
  for i:=1 to #C do
    if C[i] ne 0 then
      v:=Valuation(C[i]);
      D:=Coefficients(C[i]);
      for j:=1 to #D do
        D[j]:=sigma_Ox(D[j],p,n,m,N);
      end for;
      C[i]:=S.1^v*(S!D);
    end if;
  end for;
  return Parent(f)!C;
end function;


radix_reduce:=function(f,r,m); 

  // Eliminate powers of x >= deg(r) in element f of R.

  R:=Parent(f);
  S:=BaseRing(R);
  Ox:=BaseRing(S);
  O:=BaseRing(Ox);

  r:=Zax_to_Ox(r,Ox);

  C:=Coefficients(f);
  for i:=1 to #C do
    if C[i] ne 0 then
      v:=Valuation(C[i]);
      D:=Coefficients(C[i]);
      j:=1;
      while j le #D do
        if Degree(D[j]) ge Degree(r) then
          quot,rem := Quotrem(D[j],r);
          D[j]     := rem;
          if #D lt j+1 then
            D[j+1]:=quot;
          else
            D[j+1]:=D[j+1]+quot;
          end if;   
        end if;
        j:=j+1;
      end while;
      C[i]:=(S.1)^v*(S!D);
    end if;  
  end for;
  return R!C; 
end function;


reduce_mod_Q:=function(f,Q,r,m); 

  // Eliminate powers of y >= deg(Q).

  Q:=radix_reduce(push_to_R(Q,Parent(f)),r,m);
   
  while Degree(f) ge Degree(Q) do
    f:=f-Coefficient(f,Degree(f))*(Parent(f).1)^(Degree(f)-Degree(Q))*(push_to_R(Q,Parent(f))); 
  end while;
  f:=radix_reduce(f,r,m);
  
  return f;  
end function;


xpforx:=function(f,xp,r,m); 

  // Substitute x^p for x in an element of R (without any z).

  R:=Parent(f);
  S:=BaseRing(R);
  Ox:=BaseRing(S);
  O:=BaseRing(Ox);

  // Determine the degree in x of f.
  
  C:=Coefficients(f);
  degxf:=0;
  for i:=1 to #C do
    if (C[i] ne 0) and (Degree(Coefficients(C[i])[1]) gt degxf) then 
      degxf:=Degree(Coefficients(C[i])[1]);
    end if;
  end for;

  // Compute the radix_reduction of (x^p)^k for k up to degxf.

  xppow:=[];
  xppow[1]:=R!1;
  xppow[2]:=push_to_R(xp,R);
  for i:=2 to degxf do
    Append(~xppow,radix_reduce(xppow[i]*xppow[2],r,m));
  end for;

  // Substitute x^p into f(-,y).

  out:=Parent(f)!0;
  for i:=1 to #C do
    if C[i] eq 0 then
      D:=[];
    else
      D:=Coefficients(Coefficients(C[i])[1]);
    end if; 
    for j:=1 to #D do
      out:=out+D[j]*xppow[j]*(Parent(f).1)^(i-1);
    end for;
  end for;

  out:=radix_reduce(out,r,m); 

  return out;
end function;


pow:=function(f,k,Q,r,m);

  // computes f^k for an element f in R

  if k eq 0 then
    return Parent(f)!1;
  end if;

  digits:=Intseq(k,2);
  f2i:=f;
  
  if digits[1] eq 1 then 
    fpow:=f;
  else
    fpow:=Parent(f)!1;
  end if;

  for i:=2 to #digits do
    f2i:=reduce_mod_Q(f2i*f2i,Q,r,m);
    if digits[i] eq 1 then
      fpow:=reduce_mod_Q(fpow*f2i,Q,r,m);
    end if;
  end for;

  return fpow;
  
end function;


froblift:=function(Q,p,n,m,N,r,Delta,s,W0);

  // Compute the matrix of Fp on R w.r.t. basis [b^0_i/r]
  
  O,Ox,S,R:=getrings(p,N,m);
  
  d:=Degree(Q);
  C:=Coefficients(Q); 

  Q:=Zaxy_to_R(Q,R);

  rK:=Zax_to_Kx(r,Parent(Numerator(W0[1,1]))); 
  DeltaKx:=Zax_to_Kx(Delta,Parent(Numerator(W0[1,1]))); 
  lc_rK:=LeadingCoefficient(rK);
  rK:=rK/lc_rK;
  DeltaK:=DeltaKx/lc_rK;

  r:=Zax_to_Ox(r,Ox);
  Delta:=Zax_to_Ox(r,Ox);
  s:=Zaxy_to_R(s,R);

  lc_r:=BaseRing(O)!LeadingCoefficient(r);
  r:=r/lc_r;
  Delta:=Delta/lc_r; 
  s:=s/lc_r;

  Qsigma:=sigma_R(Q,p,n,m,N);
  rsigma:=sigma_Ox(r,p,n,m,N);
  Deltasigma:=sigma_Ox(Delta,p,n,m,N);
  ssigma:=sigma_R(s,p,n,m,N);

  cnt:=1;
  while (rK^cnt mod DeltaKx ne 0) do
    cnt:=cnt+1;
  end while;
  g:=Ox!0;
  C:=Coefficients(rK^cnt div DeltaK);
  for i:=1 to #C do
    for j:=1 to n do
      g:=g+(BaseRing(O)!C[i][j])*(O.1)^(j-1)*(Ox.1)^(i-1);
    end for;
  end for;

  gsigma:=sigma_Ox(g,p,n,m,N);
  
  prec:=[];
  k:=N;
  while k gt 1 do
    Append(~prec,k);
    k:=Ceiling(k/2);
  end while;
  prec:=Reverse(prec);

  // 1) Compute F_p(1/r), F_p(1/Delta) and F_p(y)

  xp:=pow(R!(Ox.1),p,Q,r,m);
  alpha:=R!((S.1)^(-p));
  beta:=pow(R.1,p,Q,r,m);
  
  for i:=1 to #prec do

    Oi,Oxi,Si,Ri:=getrings(p,prec[i],m);
    xpi:=pow(Ri!(Oxi.1),p,Q,r,m);
    rxp:=xpforx(Ri!(Oxi!push_to_Ox(rsigma,Oxi)),xpi,r,m);

    alpha:=push_to_R(alpha,Ri);
    alpha:=radix_reduce(alpha*radix_reduce(Ri!2-alpha*rxp,r,m),r,m); // alpha=F_p(1/r)

    alpha_power:=alpha;
    for j:=2 to cnt do
      alpha_power:=radix_reduce(alpha_power*alpha,r,m);
    end for; 
    gxp:=xpforx(Ri!(push_to_Ox(gsigma,Oxi)),xpi,r,m); 
    alpha1:=radix_reduce(gxp*alpha_power,r,m); // alpha1=F_p(1/Delta)

    beta:=push_to_R(beta,Ri);

    powers:=[];
    powers[1]:=Ri!1;
    for j:=2 to d+1 do
      powers[j]:=reduce_mod_Q(beta*powers[j-1],Q,r,m);
    end for;

    Qxp:=xpforx(push_to_R(Qsigma,Ri),xpi,r,m);
    sxp:=xpforx(push_to_R(ssigma,Ri),xpi,r,m);

    evalQxp:=Ri!0;
    for j:=0 to d do
      evalQxp:=evalQxp+Coefficient(Qxp,j)*powers[j+1]; 
    end for;
    evalQxp:=radix_reduce(evalQxp,r,m); 
    evalsxp:=Ri!0;
    for j:=0 to Degree(s) do
      evalsxp:=evalsxp+Coefficient(sxp,j)*powers[j+1];
    end for;
    evalsxp:=radix_reduce(evalsxp,r,m);
    beta:=radix_reduce(beta-reduce_mod_Q(radix_reduce(evalQxp*evalsxp,r,m),Q,r,m)*(Ri!alpha1),r,m); // beta=F_p(y)
  end for;
  
  // (slow) optional tests:
  // radix_reduce(alpha*push_to_R(xpforx(R!(push_to_Ox(rsigma,Ox)),xpi,r,m,L),Parent(alpha)),r,m) eq 1; // 
  // radix_reduce(alpha1*push_to_R(xpforx(R!(Ox!Deltasigma),xpi,r,m,L),Parent(alpha1)),r,m) eq 1; // 
  // reduce_mod_Q(Evaluate(push_to_R(xpforx(Qsigma,xpi,r,m,L),Parent(beta)),beta),Q,r,m) eq 0; //
  
  // 2) Compute matrix of F_p on R w.r.t. basis [y^i/r]

  alpha:=push_to_R(alpha,R);
  beta:=push_to_R(beta,R);
    
  mat:=ZeroMatrix(S,d,d); 
  Fpyir:=(S.1)*(alpha);        		 // r*F_p(y^0/r)
  for i:=1 to d do
    mat[1,i]:=Coefficient(Fpyir,i-1);
  end for;
  for i:=2 to d do
    Fpyir:=reduce_mod_Q(beta*Fpyir,Q,r,m); // r*F_p(y^(j+1)/r) = F_p(y)*(r*F_p(y^j/r))
    for j:=1 to d do
      mat[i,j]:=Coefficient(Fpyir,j-1);
    end for;
  end for;

  // 3) Compute the matrix of F_p on R w.r.t. basis [b^0_i/r] (i.e. Fp(W0)*mat*W0^(-1))

  W0inv:=W0^(-1);
  ordrW0inv:=ord_r_mat(W0inv,rK);
  W0invS:=ZeroMatrix(S,d,d);
  for i:=1 to d do
    for j:=1 to d do
      C:=Coefficients(Numerator((Parent(W0[1,1])!rK)^(-ordrW0inv)*W0inv[i,j]));
      num:=Ox!0;
      for k:=1 to #C do
        for l:=1 to n do
          num:=num+(BaseRing(O)!C[k][l])*(Ox.1)^(k-1)*(O.1)^(l-1);
        end for;
      end for;
      W0invS[i,j]:=Coefficient(radix_reduce(R!((S.1)^(ordrW0inv)*num),r,m),0); // Compute S!W0^(-1)
    end for;
  end for;
  
  mat:=mat*W0invS; // Compute mat*W0^(-1)
  for i:=1 to d do
    for j:=1 to d do
      mat[i,j]:=Coefficient(radix_reduce(R!mat[i,j],r,m),0); 
    end for;
  end for;
  
  ordrW0:=ord_r_mat(W0,rK);
  FpW0S:=ZeroMatrix(S,d,d);
  for i:=1 to d do
    for j:=1 to d do
      numW0ij:=Numerator((Parent(W0[1,1])!rK)^(-ordrW0)*W0[i,j]);
      C:=Coefficients(numW0ij);
      numW0ijOx:=Ox!0;
      for k:=1 to #C do
        for l:=1 to n do
          numW0ijOx:=numW0ijOx+(BaseRing(O)!C[k][l])*(Ox.1)^(k-1)*(O.1)^(l-1);
        end for; 
      end for;   
      FpW0S[i,j]:=Coefficient(radix_reduce(pow(alpha,-ordrW0,Q,r,m)*xpforx(R!sigma_Ox(numW0ijOx,p,n,m,N),xp,r,m),r,m),0); // Compute S!Fp(W0) 
    end for;
  end for;
 
  mat:=FpW0S*mat; // Compute Fp(W0)*mat*W0^(-1)
  for i:=1 to d do
    for j:=1 to d do 
      mat[i,j]:=Coefficient(radix_reduce(R!mat[i,j],r,m),0);
    end for;
  end for;
  
  return mat; // matrix of Fp on R w.r.t. basis [b^0_i/r]

end function;


frobenius:=function(w,Q,p,n,m,N,r,frobmatb0r);

  // Compute F_p(sum w_i b^0_i dx/r) mod p^N.

  O,Ox,S,R:=getrings(p,N-1,m);
  a:=O.1; x:=Ox.1; y:=R.1; z:=S.1;

  d:=Degree(Q);
  Q:=R!Q;

  Sd:=RSpace(S,d);

  r:=push_to_Ox(r,Ox); 
  lc_r:=LeadingCoefficient(r);
  r:=r/lc_r;

  xp_minus_one:=pow(R!(Ox!x),p-1,Q,r,m);		   
  xp:=radix_reduce(xp_minus_one*(R!(Ox!x)),r,m); 

  frob:=Sd!0;
  for i:=1 to d do
    temp:=radix_reduce((xp_minus_one)*xpforx(R!sigma_Ox(push_to_Ox(w[i],Ox),p,n,m,N),xp,r,m),r,m);
    for j:=1 to d do
      frob[j]:=Coefficient(radix_reduce(frob[j]+(R!push_to_S(frobmatb0r[i,j],S))*temp,r,m),0);
    end for;
  end for;

  O,Ox,S,R:=getrings(p,N,m);
  Sd:=RSpace(S,d);

  frobnew:=Sd!0;
  for i:=1 to d do 
    frobnew[i]:=p*push_to_S(frob[i],S); 
  end for;
  frob:=frobnew;

  return frob;   
end function;


