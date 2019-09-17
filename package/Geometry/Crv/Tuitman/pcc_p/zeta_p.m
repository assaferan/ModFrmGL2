freeze;

////////////////////////////////////////////////// 
// This code is part of the pcc_p MAGMA library //
//                                              //
// copyright (c) 2016 Jan Tuitman               //
//////////////////////////////////////////////////


import "auxpolys_p.m": log;
import "coho_p.m": ord_0_mat, ord_inf_mat;
import "froblift_p.m": frobenius;
import "reductions_p.m": convert_to_Qxzzinvd, coho_red_fin, change_basis_b0binf, coho_red_inf, change_basis_binfb0, reduce_mod_pN_Q;


provable_prec:=function(Q,p,g,W0,Winf,e0,einf:val:=0);

  // Compute the p-adic precision required for provable correctness

  d:=Degree(Q);
  W:=Winf*W0^(-1);
  
  prec_list:=[];
  prec_list[1]:=1;
  for i:=1 to g do
    Append(~prec_list,Floor(log(p,(4*g/i)*p^(i/2)))+1);
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


frobmatrix:=function(Q,p,N,r,W0,Winf,G0,Ginf,frobmatb0r,redlistfin,redlistinf,basis,quo_map);

  // Compute the matrix of F_p on H^1(X) mod p^N with respect to 'basis'.

  d:=Degree(Q);
  degr:=Degree(r);

  L:=[];
  for i:=1 to #basis do

    
    im:=frobenius(basis[i],Q,p,N,r,frobmatb0r);
    im:=convert_to_Qxzzinvd(im,Q);
    im:=coho_red_fin(im,Q,p,N,r,W0,Winf,G0,redlistfin);
    im:=change_basis_b0binf(im,p,N,r,W0,Winf);
    im:=coho_red_inf(im,Q,p,N,r,W0,Winf,Ginf,redlistinf);
    im:=change_basis_binfb0(im,W0,Winf);

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

  F:=ZeroMatrix(Rationals(),#L,#L);
  for i:=1 to #L do
    v:=Vector(L[i])*quo_map;
    for j:=1 to #L do
      F[i,j]:=reduce_mod_pN_Q(v[j],p,N);
    end for; 
  end for;

  return F;
end function;

revcharpoly:=function(Fp,p);

  // Compute the reverse characteristic polynomial of the Frobenius matrix p
  // using the Newton-Girard identities.

  g:=NumberOfRows(Fp) div 2;
  chi:=Reverse(Coefficients(PolynomialRing(IntegerRing())!CharacteristicPolynomial(Fp))); 
  chi[1]:=1;
  s:=[];
  s[1]:=2*g;
  N:=[];
  N[1]:=0;
  for i:=1 to g do
    N[i+1]:=Floor(Log(p,(4*g/i)*p^(i/2)))+1; 
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
    chi[i+1]:=chi[2*g+1-i]*p^(i-g);
  end for;
  return PolynomialRing(IntegerRing())!chi;
end function;


norminvroots:=function(f)

  // Compute the squares of the complex absolute values of the inverses of the 
  // roots of the integer polynomial f (to test whether it is a Weil polynomial). 

  facf:=Factorization(f);
  C:=ComplexField(20);
  Cx:=PolynomialRing(C);
  normlist:=[];
  for i:=1 to #facf do
    rootlist:=Roots(Cx!facf[i][1]); 
    for i:=1 to #rootlist do
      Append(~normlist,Norm(1/rootlist[i][1]));
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
