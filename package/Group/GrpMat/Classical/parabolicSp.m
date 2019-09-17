freeze;
/*==============================================================================

    $Id: parabolicSp.m 54998 2017-06-26 06:36:13Z don $
*/
//==============================================================================
intrinsic BorelSp(n :: RngIntElt, q :: RngIntElt) -> GrpMat
{The standard Borel subgroup of Sp(n,q), i.e., a Sylow normaliser}
  require IsEven(n): "n must be even";
  m := n div 2;
  F := GF(q);
  B := Basis(F);
  zeta := PrimitiveElement(F);
  gens := [];
  G := Sp(n,q);
  for b in B do
    for i := 1 to m do
      for j := i+1 to m do
        g := IdentityMatrix(F,n);
        g[i,j] := b;
        g[n-j+1,n-i+1] := -b;
        Append(~gens,g);
        g := IdentityMatrix(F,n);
        g[i,n-j+1] := b;
        g[j,n-i+1] := b;
        Append(~gens,g);
      end for;
      g := IdentityMatrix(F,n);
      g[i,n-i+1] := b;
      Append(~gens,g);
      g := IdentityMatrix(F,n);
      g[i,i] := zeta;
      g[n-i+1,n-i+1] := zeta^-1;
      Append(~gens,g);
    end for;
  end for;
  return sub< Sp(n,q) | gens >;
end intrinsic;

intrinsic BorelSp(n :: RngIntElt, F :: FldFin) -> GrpMat
{The standard Borel subgroup of Sp(n,F), i.e., a Sylow normaliser}
  return BorelSp(n,#F);
end intrinsic;
//------------------------------------------------------------------------------

//==============================================================================
intrinsic ExtendedWeylGroupSp(n :: RngIntElt, q :: RngIntElt) -> GrpMat
{The standard extended Weyl subgroup of Sp(n,q)}
  require IsEven(n): "n must be even";
  m := n div 2;
  gens := [];
  for i := 1 to m-1 do
    g := IdentityMatrix(GF(q),n);
    g[i,i] := 0;
    g[i+1,i+1] := 0;
    g[i+1,i] := 1;
    g[i,i+1] := -1;
    k := n - i;
    g[k+1,k+1] := 0;
    g[k,k] := 0;
    g[k+1,k] := -1;
    g[k,k+1] := 1;
    Append(~gens,g);
  end for;
  g := IdentityMatrix(GF(q),n);
  g[m,m] := 0;
  g[m+1,m+1] := 0;
  g[m+1,m] := 1;
  g[m,m+1] := -1;
  Append(~gens,g);

  return sub< Sp(n,q) | gens >;
end intrinsic;

intrinsic ExtendedWeylGroupSp(n :: RngIntElt, F :: FldFin) -> GrpMat
{The standard extended Weyl subgroup of Sp(n,F)}
  return ExtendedWeylGroupSp(n,#F);
end intrinsic;
//------------------------------------------------------------------------------


//==============================================================================
intrinsic MaximalParabolicsSp(n :: RngIntElt, q :: RngIntElt) -> SeqEnum
{The standard maximal parabolic subgroups of Sp(n,q)}
  W := ExtendedWeylGroupSp(n,q);
  m := n div 2;
  B := BorelSp(n,q);
  G := Sp(n,q);
  return [ sub< G | B, [W.j : j in [1..m] | j ne i] > : i in [m..1 by -1] ];
end intrinsic;
//------------------------------------------------------------------------------
  

//==============================================================================
intrinsic MaximalParabolicsSp(n :: RngIntElt, F :: FldFin) -> SeqEnum
{The standard maximal parabolic subgroups of Sp(n,F)}
  return MaximalParabolicsSp(n,#F);
end intrinsic;
//------------------------------------------------------------------------------


// flippedId is the matrix with 1s along the anti-diagonal.
// The standard alternating form in Magma is 
// BlockMatrix(2,2,[Z,Lambda,-Lambda,Z]) where Z is
// ZeroMatrix(GF(q),n,n) where Lambda is flippedId(n,q);
flippedId := function(n,q)
  M := ZeroMatrix(GF(q),n,n);
  for i := 1 to n do M[i,n-i+1] := 1; end for;
  return M;
end function;

// Basis for the space of n x n symmetric matrices over GF(q)
symbase := function(n,q)
    F := GF(q);
    B := Basis(F);
    gens := [];
    m := n*(n+1) div 2;
    for i := 1 to m do
        Q := [F| 0 : i in [1..m]];
        for b in B do
            Q[i] := b;
            Append(~gens,SymmetricMatrix(F,Q));
        end for;
    end for;
    return gens;
end function;

//==============================================================================
intrinsic SiegelUnipotentRadical(n :: RngIntElt,q :: RngIntElt) -> GrpMat
{The unipotent radical of the Siegel parabolic subgroup of the 
 standard symplectic group Sp(n,q)}
  require IsEven(n): "first argument must be even";
  m := n div 2;
  F := GF(q);
  gens := [];
  Lambda := flippedId(m,q);
  I := IdentityMatrix(F,m);
  Z := ZeroMatrix(F,m,m);
  gens := [ BlockMatrix(2,2,[I,Lambda*S,Z,I]) : S in symbase(m,q) ];
  return sub< Sp(n,q) | gens >;
end intrinsic;

intrinsic SiegelUnipotentRadical(n :: RngIntElt,F :: FldFin) -> GrpMat
{The unipotent radical of the Siegel parabolic subgroup of the 
 standard symplectic group Sp(n,F)}
  return SiegelUnipotentRadical( n, #F );
end intrinsic;
//------------------------------------------------------------------------------

intrinsic SiegelParabolic( n::RngIntElt, q::RngIntElt) -> GrpMat
{A parabolic subgroup that stabilises a maximal isotropic subspace
 in the standard symplectic group Sp(n,q)}
  W := ExtendedWeylGroupSp(n,q);
  m := n div 2;
  B := BorelSp(n,q);
  G := Sp(n,q);
  return sub< G | B, [W.j : j in [1..m-1]] >;
end intrinsic;

intrinsic SiegelParabolic( n::RngIntElt, F::FldFin) -> GrpMat
{A parabolic subgroup that stabilises a maximal isotropic subspace
 in the standard symplectic group Sp(n,F)}
  return SiegelParabolic(n,#F);
end intrinsic;
//------------------------------------------------------------------------------

