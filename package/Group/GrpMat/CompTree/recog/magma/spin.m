freeze;
      
import "centre.m": EstimateCentre;
import "../../GrpMat/util/section.m": ExtractAction;

// G perfect and absolutely irreducible; 
// unique non-abelian comp factor is Omega (d, q) with supplied type 
// is G spin repn? 
// in even char Spin = Omega 

IsSpinGroup := function (G, type, d, q)

   // assert IsProbablyPerfect (G) and IsAbsolutelyIrreducible (G);
   if IsPowerOf(q, 2) then return false; end if;
   
   if Degree (G) eq d then
      except := type eq "Omega-" and d eq 8;
      if not except then return false; end if;
   end if;
         
   if IsOdd (d) and IsOdd (q) then 
      z := Gcd (2, q - 1);
      Z := EstimateCentre (G, z);
      assert #Z le z;
      return #Z eq z;
   end if;
    
   n := d div 2;

   if type eq "Omega+" and IsEven (n) then
      // complete list for n = 12 and Degree(G) < 352 
      if Degree (G) eq 2^(n - 1) or (q eq 3 and d eq 12 and Degree (G) eq 320) then 
         z := 2;
         Z := EstimateCentre (G, z);
         assert #Z le z;
         return #Z eq z;
      else
         return false;
      end if;
   elif type eq "Omega+" then 
      z := Gcd (4, q^n - 1);
      Z := EstimateCentre (G, z);
      return #Z eq z;
   elif type in {"Omega-", "Omega"} then 
      z := Gcd (4, q^n + 1);
      Z := EstimateCentre (G, z);
      return #Z eq z;
   end if;
   error "Incorrect type supplied";
end function;

// construct Omega^type(d, q) as a homomorphic image  of G, a spin group  
SpinImage := function (G, type, d, q: Verify := false)

   if Verify then 
      flag := IsSpinGroup (G, type, d, q);
      if not flag then return false, _, _; end if;
   end if;
  
   M := GModule (G);

   ext := false; sym := false;
   best := Binomial (d, 2) + 1;

   if IsOdd (d) then
      vprint CompositionTree, 6 : "Case 1 odd d";
      fct := d mod 8 in {1,3} select SymmetricSquare else ExteriorSquare;
      ext := fct eq ExteriorSquare;
      sym := fct eq SymmetricSquare;
      S := fct (M);
      CS, CF, CB := CompositionSeries (S);
      dim := [Dimension (x): x in CF];
      if exists(i){i: i in [1..#CF] | dim[i] eq d}  then 
         A := ActionGroup (CF[i]);    
         f, B := IsOverSmallerField (A); 
         if f then 
            A := B; smaller := SmallerFieldBasis (A); 
         else 
            smaller := Identity (Generic (A));
         end if;
         flag := ext select "ext" else "sym";
         offset := [Dimension (CF[j]): j in [1..i - 1]];
         if #offset gt 0 then offset := &+offset; else offset := 0; end if;
         return true, A, <flag, CB, offset, Degree (A), smaller>;
      end if;
      m := Minimum ([x : x in dim | x ne 1]);
      pos := Position (dim, m);
      V := CF[pos];
      if Dimension (V) lt best then 
         A := ActionGroup (V);
         flag := ext select "ext" else "sym";
         offset := [Dimension (CF[j]): j in [1..pos - 1]];
         if #offset gt 0 then offset := &+offset; else offset := 0; end if;
         N := V; best := Dimension (N); 
         data := <flag, CB, offset, best>;
      end if;
   end if;

   if IsEven (d) and (d in {10, 12, 18}) then 
      vprint CompositionTree, 6 : "Case 2, even d in 10, 12, 18, sym";
      fct := SymmetricSquare; 
      sym := true;
      flag := "sym";
      S := fct (M);
      CS, CF, CB := CompositionSeries (S);
      dim := [Dimension (x): x in CF];
      if exists(i){i: i in [1..#CF] | dim[i] eq d}  then 
         A := ActionGroup (CF[i]);    
         f, B := IsOverSmallerField (A); 
         if f then 
            A := B; smaller := SmallerFieldBasis (A); 
         else 
            smaller := Identity (Generic (A));
         end if;
         offset := [Dimension (CF[j]): j in [1..i - 1]];
         if #offset gt 0 then offset := &+offset; else offset := 0; end if;
         return true, A, <flag, CB, offset, Degree (A), smaller>;
      end if;
      m := Minimum ([x : x in dim | x ne 1]);
      pos := Position (dim, m);
      V := CF[pos];
      if Dimension (V) lt best then 
         A := ActionGroup (V);
         offset := [Dimension (CF[j]): j in [1..pos - 1]];
         if #offset gt 0 then offset := &+offset; else offset := 0; end if;
         N := V; best := Dimension (N); 
         data := <flag, CB, offset, best>;
      end if;
   end if;

   if not ext then 
      vprint CompositionTree, 6 : "Case 3 ext";
      flag := "ext";
      E := ExteriorSquare (M);
      CS, CF, CB := CompositionSeries (E);
      dim := [Dimension (x): x in CF];
      if exists(i){i: i in [1..#CF] | dim[i] eq d}  then 
         A := ActionGroup (CF[i]);    
         f, B := IsOverSmallerField (A); 
         if f then 
            A := B; smaller := SmallerFieldBasis (A); 
         else 
            smaller := Identity (Generic (A));
         end if;
         offset := [Dimension (CF[j]): j in [1..i - 1]];
         if #offset gt 0 then offset := &+offset; else offset := 0; end if;
         return true, A, <flag, CB, offset, Degree (A), smaller>;
      end if;
      m := Minimum ([x : x in dim | x ne 1]);
      pos := Position (dim, m);
      V := CF[pos];
      if Dimension (V) lt best then 
         A := ActionGroup (V);
         offset := [Dimension (CF[j]): j in [1..pos - 1]];
         if #offset gt 0 then offset := &+offset; else offset := 0; end if;
         N := V; best := Dimension (N); 
         data := <flag, CB, offset, best>;
      end if;
   end if;

   if not sym then 
      vprint CompositionTree, 6 : "Case 4 sym";
      flag := "sym";
      S := SymmetricSquare (M);
      CS, CF, CB := CompositionSeries (S);
      dim := [Dimension (x): x in CF];
      if exists(i){i: i in [1..#CF] | dim[i] eq d}  then 
         A := ActionGroup (CF[i]);    
         f, B := IsOverSmallerField (A); 
         if f then 
            A := B; smaller := SmallerFieldBasis (A); 
         else 
            smaller := Identity (Generic (A));
         end if;
         offset := [Dimension (CF[j]): j in [1..i - 1]];
         if #offset gt 0 then offset := &+offset; else offset := 0; end if;
         return true, A, <flag, CB, offset, Degree (A), smaller>;
      end if;
      m := Minimum ([x : x in dim | x ne 1]);
      pos := Position (dim, m);
      V := CF[pos];
      if Dimension (V) lt best then 
         A := ActionGroup (V);
         offset := [Dimension (CF[j]): j in [1..pos - 1]];
         if #offset gt 0 then offset := &+offset; else offset := 0; end if;
         N := V; best := Dimension (N); 
         data := <flag, CB, offset, best>;
      end if;
   end if;

   if not assigned N then error "Failed to initialise N"; end if;
   A := ActionGroup (N);
   f, B := IsOverSmallerField (A); 
   if f then 
      A := B; smaller := SmallerFieldBasis (A); 
   else 
      smaller := Identity (Generic (A));
   end if;
   data := data cat <smaller>;

   return true, A, data;
end function;

//H is SpinImage (G), parent of g;  compute image of g in H 
SpinImageOfElement := function (H, g, data)
   type := data[1]; offset := data[3]; 
   CB := data[2]; smaller := data[5]; m := data[4];
   fct := type eq "sym" select SymmetricSquare else ExteriorSquare;
   G := Parent (g);
   MA := MatrixAlgebra (BaseRing (G), Degree (G));
   h :=  fct (MA ! g);
   h := CB * h * CB^-1;
   im := ExtractAction (h, [offset + 1..offset + m]); 
   return Generic (H) ! (im^smaller);
end function;
