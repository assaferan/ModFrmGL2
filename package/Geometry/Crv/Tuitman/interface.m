freeze;

/********************************************************

       Zeta function for general curves
       
       Jan Tuitman, January 2017

********************************************************/

import "pcc_p/pcc_p.m" : num_zeta_p;
import "pcc_q/pcc_q.m" : num_zeta_q;
import "goodmodels/genus3model.m" : optimal_model_genus3;
import "goodmodels/genus4model.m" : optimal_model_genus4; 
import "goodmodels/genus5model.m" : optimal_model_genus5_trigonal, optimal_model_genus5_nontrigonal;


declare verbose Tuitman, 1;


intrinsic ZetaFunction(f::RngUPolElt, p::RngIntElt : N:=0, exactcoho:=false, W0:=0, Winf:=0) -> FldFunRatUElt

{This is the low level way to call Tuitman's algorithm for the zeta function of the curve defined by f mod p.
Here f is an element of F[x][y] where F is Q or a number field, which specifies a "good" lift of the curve.}

    L := LPolynomial(f, p : N:=N, exactcoho:=exactcoho, W0:=W0, Winf:=Winf );

    T := Parent(L).1;
    q := p ^ Degree(BaseRing(BaseRing(Parent(f))));
    return L / ((1-T)*(1-q*T));
end intrinsic;

intrinsic LPolynomial(f::RngUPolElt, p::RngIntElt : N:=0, exactcoho:=false, W0:=0, Winf:=0) -> RngUPolElt
{"} // "
    R := BaseRing(f);
    require Type(R) eq RngUPol: "First input must be a one variable polynomial over a one variable polynomial ring";
    require IsPrime(p): "Second input must be a prime number";
    K:=BaseRing(R);
    require Type(K) eq FldRat or ISA(Type(K), FldNum): "The polynomial must be defined over a number field";
    require IsMonic(f) and &and [IsIntegral(c) : c in &cat[Coefficients(elt):elt in Coefficients(f)]]: "The polynomial must be monic and integral";

    if Type(K) eq FldRat then
      Z:=IntegerRing();
      Zx:=PolynomialRing(Z);
      Zxy:=PolynomialRing(Zx);
      f:=Zxy!f;
      q:=p;
      return num_zeta_p(f,p:N:=N,exactcoho:=exactcoho,W0:=W0,Winf:=Winf);
    end if;

    if ISA(Type(K), FldNum) then
      m:=DefiningPolynomial(K); 
      require IsMonic(m) and &and [IsIntegral(c) : c in Coefficients(m)] :
              "Number field must be defined by a monic integral polynomial over Z";
      mp := Polynomial(GF(p), m);
      require IsIrreducible(mp) : "Number field must be inert at p";
      
      Z:=IntegerRing();
      Za:=PolynomialRing(Z);
      Zax:=PolynomialRing(Za);
      Zaxy:=PolynomialRing(Zax);
      
      F:=Zaxy!0;
      C:=Coefficients(f);
      for i:=1 to #C do
        D:=Coefficients(C[i]);
        for j:=1 to #D do
          E:=Eltseq(D[j]);
          for k:=1 to #E do
            F:=F+(Z!E[k])*Za.1^(k-1)*Zax.1^(j-1)*Zaxy.1^(i-1);
          end for;
        end for;
      end for;
      M:=Za!m;

      n:=Degree(K);
      q:=p^n;
      return num_zeta_q(F,q:N:=N,m:=M,exactcoho:=exactcoho,W0:=W0,Winf:=Winf);
    end if;

end intrinsic;


/***************************************************************************/

intrinsic GonalityPreservingLift(C::Crv[FldFin]) -> RngUPolElt, AlgMatElt, AlgMatElt
{
  Finds a gonality preserving lift to characteristic zero for non-hyperelliptic 
  curves of genus 3,4,5 using an algorithm of Wouter Castryck and Jan Tuitman.
}

  require not IsHyperelliptic(C): "Curve must be non-hyperelliptic";
  // TO DO: could delay this check one of the subroutines hits an error

  K:=BaseRing(C); 
  g:=Genus(C);
  require g in [3,4,5]: "Curve must be of genus 3, 4 or 5";

  if g eq 3 then
    vprint Tuitman, 1: "Curve of genus 3 \n";
    b:=MinimalBasis(Ideal(Image(CanonicalMap(C))));
    F,W0,Winf:=optimal_model_genus3(b[1]);
  end if;

  if g eq 4 then
    vprint Tuitman, 1: "Curve of genus 4 \n";
    b:=MinimalBasis(Ideal(Image(CanonicalMap(C))));
    F,W0,Winf:=optimal_model_genus4(b[1],b[2]:alternative_Winf:=(Degree(K) ge 8));
  end if;

  if g eq 5 then
    b:=MinimalBasis(Ideal(Image(CanonicalMap(C))));
    if #b eq 5 then
      vprint Tuitman, 1: "Trigonal curve of genus 5 \n";
      F,W0,Winf:=optimal_model_genus5_trigonal(b[1],b[2],b[3],b[4],b[5]);
    elif #b eq 3 then
      vprint Tuitman, 1: "Nontrigonal curve of genus 5 \n";
      F,W0,Winf:=optimal_model_genus5_nontrigonal(b[1],b[2],b[3]:alternative_Winf:=(Degree(K) ge 6));
    end if;
  end if;

  require F ne 0 : "Did not find an optimal lift of the input curve";
                   // DON'T edit this string, it is referenced below in try/catch

  return F, W0, Winf;

end intrinsic;

