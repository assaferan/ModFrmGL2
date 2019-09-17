/*
Code originally by Peter Brooksbank for computing isomorphisms
of modules and related operations.

Installed and modified in a few ways by AKS.
*/

///// basic functions /////

ImageUnderMats := function (mats, U)

    BM := BasisMatrix(U);
    return sub<U | Rowspace(VerticalJoin([BM*Matrix(x): x in mats]))>;

   ims := [];
   for x in mats do     
      for u in Basis (U) do  
          Append (~ims, u*Matrix (x));
      end for; 
   end for;   
   return sub <U | ims>;
end function;


IsNilpotentEA := function (X : 
   U := VectorSpace (BaseRing (Parent (X[1])), Nrows (X[1])) )

   x := X[#X];
   d := Nrows (x);
    
   if (x^d ne 0*x) then
       return false, 1;
   end if;
    
   W0 := ImageUnderMats (X, U);
   stop := false;
   W := W0;
   while (Dimension (W) ne 0 and not stop) do
       Z := ImageUnderMats (X, W);
       if Dimension (Z) eq Dimension (W) then
	  stop := true;
       else
          W := Z;
       end if;
   end while;
      
   if stop then 
       return false, 0;
   else 
       return true, W0;
   end if;
      
end function;


FittingDecomposition := function (z)
   d := Nrows (z);
   s := z^d;
return Image (s), Nullspace (s);
end function;


MyAHom := function (M1, M2) return AHom (M1, M2); end function;


MapToMatrix := function (phi)
   M := Domain (phi);
   ims := [ (M.i) @ phi : i in [1..Dimension (M)] ];
return Matrix (ims);
end function;


///// main functions /////

NonNilpotentElementOfEA := function (X)
/*
   INPUT: <X> = set of matrices
   OUTPUT: 
        <NotNilp> = <true> if and only if Env(<X>) is not nilpotent
        <t> = integer
        <zprime> = element of semigp gen'd by <X> (or possibly identity)
                            s.t. <X>[<t>] * <z> is not nilpotent
*/
   A := Parent (X[1]);
   F := BaseRing (A);
   d := Degree (A);
   V := VectorSpace (F, d);
   
   Y := [];
   VY := sub < V | V!0 >;
   isNilp := true;
   m := 0;
   while (isNilp) and (m lt #X) do
      m +:= 1;
      z := X[m];
      flag, VY := IsNilpotentEA ([ X[k] : k in [1..m-1]] cat [z]);
      if (not flag) then
         isNilp := false;
      end if;
   end while;
   
   if (isNilp) then
      return  false, _, _;
   end if;  
     
   if (z^d ne 0*z) then
      return true, m, Identity (A);
   end if;

   Ylist := [1..m-1];
   factors := [ Identity (A) : k in Ylist ];
   Y := [ X[k] : k in Ylist ];
 
   while (z^d eq 0*z) do

      Vz := ImageUnderMats ([z], V);
      VY := ImageUnderMats (Y, V);
      W := V;
      while Dimension (W) ne Dimension (VY + Vz) do
         W := VY + Vz; 
         VY := ImageUnderMats (Y, W);
         Vz := ImageUnderMats ([z], W);
      end while;
        
assert exists (j){ l : l in [1..#Y] | 
                  exists { w : w in Basis (W) |
                      not w * Y[l] * z in VY } };
      
      isNilp, im := IsNilpotentEA (Y cat [Y[j] * z] : U := W);
      
      if isNilp then
         Append (~Ylist, Ylist[j]);
         Append (~factors, factors[j] * z);
         Append (~Y, Y[j] * z);
      else 
         zprime := factors[j] * z;
         t := Ylist[j];
         u := X[t] * zprime;
         assert (u eq Y[j] * z);
         z := u;
      end if;
        
   end while;

assert z eq X[t] * zprime;

return true, t, zprime;
end function;


IsSplitter := function (f, C)
/*
   INPUT: 
       <f> = homomorphism <M1> -> <M2>
       <C> = basis for Hom(<M2>,<M1>)
   OUTPUT:
        <isit> = <true> or <false>
        <g> in Hom(<M2>,<M1>) with <f><g> not nilpotent
*/
   d := Nrows (f);
   if (d eq 0) or (Ncols (f) eq 0) then
      return false, _;
   end if;
   if (#C eq 0) then
      return false, _;
   end if;
   gens := [ MatrixAlgebra (BaseRing (f), d)!(f*c) : c in C ];
   isit, t, zprime := NonNilpotentElementOfEA (gens);
   if (not isit) then
      return false, _;
   else
      g := C[t] * zprime;
      return true, g;
   end if;
     
end function;


KrullSchmidtIsomorphism := function (M1, M2)
/* 
   INPUT: 
      <M1> = module 
      <M2> = module
   OUTPUT:
      <f> in Hom(<M1>,<M2>)
      <g> in Hom(<M2>,<M1>)
      inducing inverse isomorphisms on maximal
      isomorphic summands of <M1> and <M2>
*/     
   F := BaseRing (M1);
   assert F eq BaseRing (M2);
   
   d1 := Dimension (M1);
   d2 := Dimension (M2);  
   H12 := MyAHom (M1, M2);
   H21 := MyAHom (M2, M1);
   B := Basis (H12);
   C := Basis (H21);
   
   flag := false;
   i := 0;
   while (i lt #B) and (not flag) do
      i +:= 1;
      b := B[i];
      flag, g := IsSplitter (b, C);
   end while;
     
   if not flag then  // there is no splitter in <B>
      return H12!0, H21!0;
   end if;
     
   N1, K1 := FittingDecomposition (b * g);
   N2, K2 := FittingDecomposition (g * b);
   e := Dimension (N1);
   assert e eq Dimension (N2);
   
   // check to see if this is already enough
   if (e eq d1) or (e eq d2) then
      return b, H21!g;
   end if;
   
   // recursive step: first set up base-change-matrices
   X := Matrix (Basis (N1) cat Basis (K1));
   Y := Matrix (Basis (N2) cat Basis (K2));
   Xi := X^-1;
   Yi := Y^-1;
   
   bb := X * b * Yi;
   gg := Y * g * Xi;
   bN := ExtractBlock (bb, 1, 1, e, e);
   gN := ExtractBlock (gg, 1, 1, e, e);
   
   // set up submodules <k1> and <k2>
   K1 := sub < M1 | K1 >;
   K2 := sub < M2 | K2 >;
   
   fK, gK := $$ (K1, K2); // recursive call
   
   // glue maps together and conjugate back
   fM := DiagonalJoin (bN, fK);
   gM := DiagonalJoin (gN, gK); 
   Xi := X^-1;
   Yi := Y^-1;
   f := Xi * fM * Y;
   g := Yi * gM * X;
   
return f, g;
end function;



///// construct intrinsics /////

intrinsic  SummandIsomorphism (M::ModRng, N::ModRng) -> ModRng, ModRng, Map, Map
    {Unique maximal, isomorphic summands of M and N, and inverse 
     isomorphisms between them.}

   f, g := KrullSchmidtIsomorphism (M, N);
   im1, ker1 := FittingDecomposition (f*g);
   im2, ker2 := FittingDecomposition (g*f);
   Mmax, iM := sub < M | im1 >;
   Nmax, iN := sub < N | im2 >;
//"Parent(f):", Parent(f);
//"iN:", iN;
   fMtoN := hom < Mmax -> Nmax | x :-> ((x @ iM) * f) @@ iN >; 
   fNtoM := hom < Nmax -> Mmax | x :-> ((x @ iN) * g) @@ iM >;

return Mmax, Nmax, fMtoN, fNtoM, f, g;
end intrinsic;

intrinsic  InternalIsomorphismTestFF(M::ModRng, N::ModRng, H::ModMatRng) ->
    BoolElt, Mtrx
{Internal}

    f, g := KrullSchmidtIsomorphism (M, N);
    im1, ker1 := FittingDecomposition (f*g);

    if Dimension(im1) eq Dimension(M) then
	return true, f;
    end if;
    return false, _;
end intrinsic;

intrinsic  RelativeDecomposition (M::ModRng, T::ModRng) -> ModRng, ModRng
    {Direct sum decomposition of M into N + K, where
     K is minimal with respect to containing T.}

   if Dimension (T) eq 0 then
      return M, T;
   end if;
   if Dimension (T) eq Dimension (M) then
      return sub< M | M!0 >, T;
   end if;
   K := M;
   N := sub < M | M!0 >;
   stop := false;
   while (not stop) do
      Kbar, pi := K / T;
      C := Basis (MyAHom (Kbar, K));
      f := MapToMatrix (pi);
      iterate, g := IsSplitter (f, C);
      if iterate then
         im, ker := FittingDecomposition (f*g);
         N := N + sub < K | Basis (im) >;
         K := sub < K | Basis (ker) >;
      else
         stop := true;
      end if;
   end while;
   
return N, K;
end intrinsic;


intrinsic  SocleRecursive (M::ModRng)  ->  ModRng
   {The socle of M}

   isirr, T := IsIrreducible (M);
   if isirr then   // Soc(<M>) = <M>
      return M;
   end if;
   // make first recursive call
   S0 := $$ (T);   
   // make second recursive call
   Mbar, pi := M / S0;
   S1bar := $$ (Mbar);  
   // pull the answer back to <M>
   S1 := sub < M | [ (S1bar.i) @@ pi : 
                             i in [1..Dimension (S1bar)] ] 
                             cat Basis (Kernel (pi)) >;
   // find the rest of the socle inside <S1>
   N, K := RelativeDecomposition (S1, S0);

    return S0 + N;
end intrinsic;


