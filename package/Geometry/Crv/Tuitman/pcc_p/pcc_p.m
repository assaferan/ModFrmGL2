freeze;

////////////////////////////////////////////////// 
// This code is part of the pcc_p MAGMA library //
//                                              //
// copyright (c) 2016 Jan Tuitman               //
//////////////////////////////////////////////////

/*
*****************************
* pcc_p Magma library v2.15 *
*                           *
* by Jan Tuitman            *
*****************************
*/


Z:=IntegerRing();
Zx<x>:=PolynomialRing(Z);
Zxy<y>:=PolynomialRing(Zx);


import "auxpolys_p.m": auxpolys, genus, smooth, is_integral;
import "coho_p.m": mat_W0, mat_Winf, con_mat, jordan_0, jordan_inf, ram, basis_coho, ddx_mat;
import "froblift_p.m": froblift;
import "reductions_p.m": red_lists;
import "zeta_p.m": provable_prec, frobmatrix, revcharpoly, norminvroots, test_num_zeta;


num_zeta_p:=function(Q,p: N:=0, exactcoho:=false, W0:=0, Winf:=0);

  if not IsPrime(p) then
    error "p is not prime";
  end if;

  N0:=N;

  ResetMaximumMemoryUsage();
  t0:=Cputime();

  vprint Tuitman, 1 : "Computing Delta,r,s,W^0,W^inf,G:";

  g:=genus(Q,p);
  r,Delta,s:=auxpolys(Q);

  if W0 eq 0 then
    W0:=mat_W0(Q);
  end if;
  if Winf eq 0 then
    Winf:=mat_Winf(Q);
  end if;
  W0inv:=W0^(-1); 
  Winfinv:=Winf^(-1); 

  if (Degree(r) lt 1) or (not smooth(r,p)) or (not (is_integral(W0,p) and is_integral(W0inv,p) and is_integral(Winf,p) and is_integral(Winfinv,p))) then
    error "Bad model for curve";
  end if;

  G:=con_mat(Q,Delta,s);
  G0:=W0*Evaluate(G,Parent(W0[1,1]).1)*W0^(-1)+ddx_mat(W0)*W0^(-1);
  M0:=r*G0;
  Ginf:=Winf*Evaluate(G,Parent(Winf[1,1]).1)*Winf^(-1)+ddx_mat(Winf)*Winf^(-1);
  Jinf,Tinf,Tinfinv:=jordan_inf(Ginf);
  J0,T0,T0inv:=jordan_0(r,G0);
  e0,einf:=ram(J0,Jinf);

  vprint Tuitman, 1: "Time (s) :    ", Cputime(t0);
  vprint Tuitman, 1: "Memory (Mb) : ", GetMaximumMemoryUsage() div (1024^2), "\n";

  ResetMaximumMemoryUsage();
  t:=Cputime();

  if N eq 0 then
    prov_prec:=true;
    N:=provable_prec(Q,p,g,W0,Winf,e0,einf);
  else
    prov_prec:=false;
  end if;

  vprint Tuitman, 1: "Computing basis H^1(X):"; 

  basis,quomap:=basis_coho(Q,p,N,r,W0,Winf,G0,Ginf,J0,Jinf,T0inv,Tinfinv,exactcoho);
  v:=Minimum([0] cat [Valuation(x,p) : x in Eltseq(quomap)]);
  if (v lt 0 and prov_prec) then
    N:=provable_prec(Q,p,g,W0,Winf,e0,einf:val:=v);
  end if;

  vprint Tuitman, 1: "Time (s) :    ", Cputime(t);
  vprint Tuitman, 1: "Memory (Mb) : ", GetMaximumMemoryUsage() div (1024^2), "\n";

  ResetMaximumMemoryUsage();
  t:=Cputime();

  vprint Tuitman, 1: "Computing Frobenius lift:";

  frobmatb0r:=froblift(Q,p,N-1,r,Delta,s,W0);

  vprint Tuitman, 1: "Time (s) :    ", Cputime(t);
  vprint Tuitman, 1: "Memory (Mb) : ", GetMaximumMemoryUsage() div (1024^2), "\n";

  ResetMaximumMemoryUsage();
  t:=Cputime();

  vprint Tuitman, 1: "Computing reduction matrices:";

  redlistfin,redlistinf:=red_lists(Q,p,N,r,W0,Winf,G0,Ginf,e0,einf,J0,Jinf,T0,Tinf,T0inv,Tinfinv); 

  vprint Tuitman, 1: "Time (s) :    ", Cputime(t);
  vprint Tuitman, 1: "Memory (Mb) : ", GetMaximumMemoryUsage() div (1024^2), "\n";

  ResetMaximumMemoryUsage();
  t:=Cputime();

  vprint Tuitman, 1: "Computing Frobenius matrix:";

  F:=frobmatrix(Q,p,N,r,W0,Winf,G0,Ginf,frobmatb0r,redlistfin,redlistinf,basis,quomap);

  vprint Tuitman, 1: "";
  vprint Tuitman, 1: "Time (s) :    ", Cputime(t);
  vprint Tuitman, 1: "Memory (Mb) : ", GetMaximumMemoryUsage() div (1024^2), "\n";

  chi:=revcharpoly(F,p);

  vprint Tuitman, 1: "Total time (s):", Cputime(t0), "\n";
  vprint Tuitman, 1: "The p-adic precision N:", N, "\n";

  if not test_num_zeta(chi,p) then
    printf "Result seems to be wrong.\nQ = %o\np = %o\n", Q, p;
    error "Please report this example to magma-bugs@maths.usyd.edu.au"; // jan.tuitman@kuleuven.be
  end if;
 
  return chi;

end function;
