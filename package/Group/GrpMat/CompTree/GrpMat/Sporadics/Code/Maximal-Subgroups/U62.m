import "../recformat.m":SporadicRF;
/* generators for maximal subgroups of U62 */
  
/* list of subgroups of U62 */

DataU62 := function ()

   F<a, b> := SLPGroup (2);
   
   L := [
   rec <SporadicRF | name := "U62", generators := [a, b], 
       order := 9196830720>,
   
   rec <SporadicRF | name := "U52", parent := "U62", 
       generators := [a, b^2 * a * b^2], order :=13685760, index := 672> ,

   rec <SporadicRF | name := "2^1+8:U4(2)", parent := "U62", 
       generators := [ (a, b),  b * a * b^5 * a * b^4], order := 13271040, index := 693>,

   rec <SporadicRF | name := "2^9:L3(4)", parent := "U62", 
       generators := [ (a, b), b * a * b * a * b^4], order := 10321920, index := 891>,

   rec <SporadicRF | name := "U4(3):2", parent := "U62", 
       generators := [ a, b^2 * a * b^3], order := 6531840, index := 1408>,
   
   rec <SporadicRF | name := "S6(2)", parent := "U62", 
       generators := [ a, b^2 * a * b * a * b^3], order := 1451520, index := 6336>,

   rec <SporadicRF | name := "M22", parent := "U62", 
       generators := [ (a, b), (a * b)^3 * b], order := 443520, index := 20736>,

   rec <SporadicRF | name := "U(4,2)xS3", parent := "U62", 
       generators := [ (a, b), (b*a)^3 * b^5 * a * b^5], order := 155520, index := 59136>,

   rec <SporadicRF | name := "L3(4):2", parent := "U62", 
       generators := [ (a, b), (a*b)^2*a*b^5*a*b^3*a*b^2*a*b^4], order := 43020, index := 228096>
   ];
   
   return L;
   
end function;
