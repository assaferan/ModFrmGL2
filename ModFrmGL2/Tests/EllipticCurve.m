procedure Test_EllipticCurve( : base := Rationals())
   if Characteristic(base) ne 0 then
      return;
   end if;

   printf "Computing c_4 and c_6 for elliptic curves, ";
   printf "and testing Tamgawa number computation... ";
   printf "37A ";
   M := ModularSymbols(37,2);
   A := SortDecomposition(NewformDecomposition(CuspidalSubspace(M)))[1];
// time E := EllipticCurve(A : Database:=false);
   E := EllipticCurve(A : Database:=false);
// printf "Testing Tamagawa number computation... ";
   assert TamagawaNumber(A,37) eq TamagawaNumber(E,37);
// print "success.";

//print "** Computing c_4 and c_6 for elliptic curve 65A...";
   printf "65A ";
   M := ModularSymbols(65,2);
   A := SortDecomposition(NewformDecomposition(CuspidalSubspace(M)))[1];
// time E := EllipticCurve(A : Database := false);
   E := EllipticCurve(A : Database := false);
// print "Testing Tamagawa number computation...";
   assert TamagawaNumber(A,5) eq TamagawaNumber(E,5);
// print "success.";

   printf "Testing database... (r, N) = ";
   D := EllipticCurveDatabase();
   repeat 
      N := Random(11,300);
      n := NumberOfIsogenyClasses(D, N);
   until n gt 0;
   r := Random(1,n);
   E := EllipticCurve(D,N,r,1);
   // printf "Curve %o at level %o.\n", r, N;
   printf "(%o,%o) ", r, N;
   M := ModularSymbols(E);
// printf "Found in space of modular symbols = %o.\n",M;
// printf "Trying to recover curve...";
   F := EllipticCurve(M);
   if E eq F then
	// print "Recovered elliptic curve.";
   else
      assert false;
   end if;
end procedure;

Test_EllipticCurve();
