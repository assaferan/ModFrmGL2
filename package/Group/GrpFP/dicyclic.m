freeze;

// MW 03-Nov-2010
// The GrpFP functions are by MW 2010, the GrpGPC by billu 2016

intrinsic DicyclicGroupOld(n::RngIntElt) -> GrpFP
{Given an integer, return the dicyclic group of order 4n}
 FG<a,b>:=FreeGroup(2); return quo<FG|a^(2*n),b^2*a^n,a^b*a>; end intrinsic;

// billu Aug-2016
intrinsic DicyclicGroup(n::RngIntElt) -> GrpGPC
{Given an integer, return the dicyclic group of order 4n}
    FG<a,b>:=FreeGroup(2);
    G := quo< GrpGPC : FG | a^2 = b^n, b^(2*n) = Id(FG), b^a = b^(2*n-1) >;
    return G;
end intrinsic;

intrinsic DicyclicGroupOld(A::GrpAb,a::GrpAbElt) -> GrpFP
{Given an abelian group and an element of order 2, create the dicyclic group}
 require a in A and Order(a) eq 2: "a must be in A and of order 2";
 O:=[Order(A.i) : i in [1..Ngens(A)]]; FG:=FreeGroup(#O+1); x:=FG.(#O+1);
 REL:=[FG.i^(O[i]) : i in [1..#O]] cat [(FG.i)^x*FG.i : i in [1..#O]];
 REL cat:=[FG.i*FG.j*FG.i^(-1)*FG.j^(-1) : i,j in [1..#O]];
 E:=(Eltseq(a) cat [0]); a_im:=&*[FG.i^E[i] : i in [1..#E]];
 REL cat:=[x^2*(a_im)^(-1)];  return quo<FG|REL>; end intrinsic;

// billu Aug-2016
intrinsic DicyclicGroup(A::GrpAb,a::GrpAbElt) -> GrpGPC
{Given an abelian group and an element of order 2, create the
dicyclic group}
 require a in A and Order(a) eq 2: "a must be in A and of order 2";
    O:=[Order(A.i) : i in [1..Ngens(A)]];
    FG:=FreeGroup(#O+1);
    x:=FG.1;
    REL:=[(FG.(i+1))^O[i] = Id(FG) : i in [1..#O] | O[i] ne 0] cat
	    [(FG.(i+1))^x = FG.(i+1)^(O[i]-1) : i in [1..#O] | O[i] ne 1];
    E:=Eltseq(a);
    a_im := &* [FG.(i+1)^E[i] : i in [1..#E]];
    G := quo< GrpGPC : FG | REL, x^2 = a_im  >;
    return G;
end intrinsic;

