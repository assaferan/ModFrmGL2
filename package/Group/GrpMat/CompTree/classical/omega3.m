freeze;

import "../recog/magma/centre.m": EstimateCentre;

RecogniseOmega3vsSL2 := function (G, q)
   T := CompositionTree (G);
   f, toFactors, fromFactors, a3, a4, bb, goldToW := CompositionTreeSeries(G);
   I := Codomain (toFactors[2]);
   f,a,b,c,d,e,w:=ClassicalConstructiveRecognition (I, "SL", 2, q);
   phi := toFactors[2];
   gamma := goldToW[2];
   W := [Function (gamma)(x): x in e];
   N := CompositionTreeNiceGroup (G);
   E := Evaluate (W, [N.i: i in [1..Ngens (N)]]);
   Q, R := ClassicalStandardPresentation ("SL", 2, q);
   S := Set (Evaluate (R, E));
   assert forall{x: x in S | IsCentral (G, x)};
   if #S ne 1 then 
      S := [x : x in S];
      CR := CartesianProduct ([S: i in [1..4]]);
      for x in CR do 
         EE := [E[j] * x[j]: j in [1..4]];
         s := Set (Evaluate (R, EE));
         if #s eq 1 then E := EE; break; end if;
      end for;
   end if;

   K := SL (2, q);
   S := ClassicalStandardGenerators ("SL", 2, q);

   MySmallToLarge := function (G, E, S, x)
      K := Universe (S); q := #BaseRing (K);
      f, w := ClassicalRewrite (K, S, "SL", 2, q, x);
      h := Evaluate (w, E);
      return h;
   end function;

   FixLargeToSmall := function (G, K, phi, a, x) 
      Z := EstimateCentre (K, Gcd (2, q - 1));
      y := Function (phi)(x);
      z := a (y);
      if Order (z) ne Order (x) then
         z := Z.1 * z;
      end if;
      assert Order (x) eq Order (z);
      return z;
   end function;

   MyLargeToSmall := function (G, E, g)
      f, w := CompositionTreeElementToWord (G, g);
      return Evaluate (w, E);
   end function;

   ElementToSLP := function (G, g)
      f, w := CompositionTreeElementToWord (G, g);
      eta := CompositionTreeNiceToUser (G);
      return eta (w);
   end function;

   phi := hom<Generic (G) -> K | x :-> FixLargeToSmall(G, K, phi, a, x)>;
   gens := [N.i: i in [1..Ngens (N)]];
   e := [phi (x): x in gens];

   WG := WordGroup (G);
   phi := hom<Generic (G) -> K | x :-> MyLargeToSmall(G, e, x)>;
   tau := hom<K -> Generic (G) | x :-> MySmallToLarge(G, E, S, x)>;
   gamma := hom<Generic (G) -> WG | x :-> ElementToSLP (G, x)>;
   delta := hom<WG -> G | w :-> Evaluate (w, [G.i: i in [1..Ngens (G)]])>;
   W := [gamma (e): e in E];

   return true, phi, tau, gamma, delta, E, W;
end function;

/* 
q := 3^9;
G:=eval Read ("K2");
time f, a, b, c, d, E, W := RecogniseOmega3vsSL2 (G, q);

Q,R := ClassicalStandardPresentation ("SL", 2, q);
assert #Set (Evaluate (R, E)) eq 1;
assert Evaluate (W, [G.i: i in [1..Ngens(G)]]) eq E;

for i in [1..100] do
x := Random (G);
y := a (x);
z := b (y);
assert z eq x;
i;
end for;

K := Codomain (a);
for i in [1..100] do
x := Random (K);
y := b (x);
z := a (y);
assert x eq z;
i;
end for;

for i in [1..100] do
x := Random (G);
y := c (x);
z := d (y);
assert z eq x;
i;
end for;

*/
