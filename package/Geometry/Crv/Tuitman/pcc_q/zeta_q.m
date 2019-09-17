freeze;

////////////////////////////////////////////////// 
// This code is part of the pcc_q MAGMA library //
//                                              //
// copyright (c) 2016 Jan Tuitman               //
//////////////////////////////////////////////////


import "auxpolys_q.m": log;
import "coho_q.m": ord_0_mat, ord_inf_mat;
import "froblift_q.m": frobenius;
import "reductions_q.m": convert_to_Kxzzinvd, coho_red_fin, change_basis_b0binf, coho_red_inf, change_basis_binfb0, reduce_mod_pN_K;


provable_prec:=function(Q,p,n,g,W0,Winf,e0,einf:val:=0);

  // Compute the p-adic precision required for provable correctness

  d:=Degree(Q);
  W:=Winf*W0^(-1);
  
  prec_list:=[];
  prec_list[1]:=1;
  for i:=1 to g do
    Append(~prec_list,Floor(log(p,(4*g/i)*p^(n*i/2)))+1);
  end for;
  N_chi:=Maximum(prec_list);
  
  delta:=Floor(log(p,-(ord_0_mat(W)+1)*einf))+Floor(log(p,(Floor((2*g-2)/d)+1)*einf));
  N_F:=N_chi+delta-val;

  N:=N_F+Floor(log(p,-p*(ord_0_mat(W)+1)*einf));
  while (N-Floor(log(p,p*(N-1)*e0))-Floor(log(p,-(ord_inf_mat(W^(-1))+1)*einf)) lt N_F) do
    N:=N+1;
  end while;

  N:=Maximum(N,2);

  return N;
end function;


frobmatrix:=function(Q,p,n,m,N,r,W0,Winf,G0,Ginf,frobmatb0r,redlistfin,redlistinf,basis,quo_map,Kx);

  // Compute the matrix of F_p on H^1(X) mod p^N with respect to 'basis'.

  K:=BaseRing(Kx);
  d:=Degree(Q);
  degr:=Degree(r);

  L:=[];
  for i:=1 to #basis do
    im:=frobenius(basis[i],Q,p,n,m,N,r,frobmatb0r);
    im:=convert_to_Kxzzinvd(im,Q,Kx);
    im:=coho_red_fin(im,Q,p,N,r,G0,redlistfin,Kx);
    im:=change_basis_b0binf(im,p,N,r,W0,Winf,Kx); 
    im:=coho_red_inf(im,Q,p,N,r,W0,Winf,Ginf,redlistinf,Kx);
    im:=change_basis_binfb0(im,W0,Winf,Kx);

    W:=Winf*W0^(-1);
    ord0W:=ord_0_mat(W);
    ordinfW:=ord_inf_mat(W);

    T:=[];
    for k:=1 to d do
      for j:=0 to degr-ord0W-ordinfW-2 do
        Append(~T,Coefficient(im[1,k],j));
      end for;
    end for;

    Append(~L,T);

    vprintf Tuitman, 1: ".";

  end for;
  F:=ZeroMatrix(K,#L,#L);
  for i:=1 to #L do
    v:=Vector(L[i])*quo_map;
    for j:=1 to #L do
      F[i,j]:=reduce_mod_pN_K(v[j],p,N);
    end for; 
  end for;
 
  return F;
end function;


val_K:=function(f,p);

  // Compute the p-adic valuation of an element of K

  C:=Eltseq(f);
  val:=Valuation(C[1],p);
  for i:=2 to #C do
    if (Valuation(C[i],p) lt val) then
      val:=Valuation(C[i],p);
    end if;
  end for;
  return val;
end function;


val_mat_K:=function(A,p);

  // Compute the p-adic valuation of a matrix over K

  if NumberOfRows(A) eq 0 then
    return 0;
  end if;

  val:=val_K(A[1,1],p);
  for i:=1 to NumberOfRows(A) do
    for j:=1 to NumberOfRows(A) do
      if val_K(A[i,j],p) lt val then
        val:=val_K(A[i,j],p);
      end if;
    end for;
  end for;
  return val;
end function;


galois_norm:=function(Fp,p,n,m,N); // can do better with semilinear exponentation, not significant
  dim:=NumberOfRows(Fp);
  Qp:=pAdicField(p,N-(n+dim-2)*val_mat_K(Fp,p));
  Qq:=UnramifiedExtension(Qp,m);
  FpQq:=ZeroMatrix(Qq,dim,dim);
  for i:=1 to dim do
    for j:=1 to dim do
      for k:=1 to n do
        FpQq[i,j]:=FpQq[i,j]+(Fp[i,j][k])*(Qq.1)^(k-1);
      end for;
    end for;
  end for;
  norm:=FpQq;
  for k:=1 to n-1 do
    for i:=1 to dim do
      for j:=1 to dim do
        FpQq[i,j]:=GaloisImage(FpQq[i,j],1);
      end for;
    end for;
    norm:=FpQq*norm; 
  end for; 
  return norm;
end function;


revcharpoly:=function(F,p,n);

  // Compute the reverse characteristic polynomial of the Frobenius matrix p
  // using the Newton-Girard identities.

  ZT:=PolynomialRing(IntegerRing());

  if NumberOfRows(F) eq 0 then
    return ZT!1;
  end if;

  g:=NumberOfRows(F) div 2;
  chi:=Reverse(Coefficients(ZT!CharacteristicPolynomial(F:Al:="Trace"))); 
  chi[1]:=1;
  s:=[];
  s[1]:=2*g;
  N:=[];
  N[1]:=0;
  for i:=1 to g do
    N[i+1]:=Floor(Log(p,(4*g/i)*p^(n*i/2)))+1; 
  end for;
  for i:=1 to g do
    sum:=0;
    for j:=2 to i do
      sum:=sum-s[i-j+2]*chi[j];
    end for;
    lbound:=Ceiling(sum/i-p^(N[i+1])/2);
    chi[i+1]:=lbound+((chi[i+1]-lbound) mod p^(N[i+1]));
    s[i+1]:=sum-i*chi[i+1];     
  end for;
  for i:=g+1 to 2*g do
    chi[i+1]:=chi[2*g+1-i]*p^(n*(i-g));
  end for;
  return ZT!chi;
end function;


norminvroots:=function(f)

  // Compute the squares of the complex absolute values of the inverses of the 
  // roots of the integer polynomial f (to test whether it is a Weil polynomial). 

  facf:=Factorization(f);
  C:=ComplexField(100);
  Cx:=PolynomialRing(C);
  normlist:=[];
  for i:=1 to #facf do
    rootlist:=Roots(Cx!facf[i][1]);
    for j:=1 to #rootlist do
      Append(~normlist,Norm(1/rootlist[j][1]));
    end for;
  end for;
  return normlist;
end function;


test_num_zeta:=function(chi,q)

  // Test whether the integer polynomial chi has roots of absolute value q^(-1/2).

  QT:=PolynomialRing(RationalField());
  
  f:=Evaluate(chi,QT.1)*Evaluate(chi,-QT.1);
  g:= QT! [Coefficient(f,2*i) : i in [0..Degree(chi)]];

  g:=Evaluate(g,(QT.1)/q);

  return HasAllRootsOnUnitCircle(g);

end function;
