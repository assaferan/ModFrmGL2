freeze;

intrinsic IsHadamardEquivalent(H1::AlgMatElt, H2::AlgMatElt : Al := "Traces")
	-> BoolElt, AlgMatElt, AlgMatElt
{True iff the two Hadamard matrices are equivalent.  If Al is "Leon" then
no further information is returned, but if Al is "nauty" or "Traces"
(the default) then transformation matrices X and Y are returned such that
H2 = X*H1*Y};

    require Al in {"Leon", "nauty", "Traces"}:
	"Algorithm must be one of Leon, nauty, or Traces";
    require IsHadamard(H1) and IsHadamard(H2):
	"The input matrices must be Hadamard";

    if Al eq "Leon" then
	return IsHadamardEquivalentLeon(H1, H2),_,_;
    else
	m1,X1,Y1 := HadamardCanonicalForm(H1 : Al := Al);
	m2,X2,Y2 := HadamardCanonicalForm(H2 : Al := Al);
	if m1 ne m2 then
	    return false,_,_;
	end if;
	return true, X2^-1*X1, Y1*Y2^-1;
    end if;
end intrinsic;

intrinsic HadamardMatrixToInteger(H::AlgMatElt) -> RngIntElt
{Returns an integer encoding the entries of the Hadamard matrix};
    Z := Integers();
    return Seqint([Sign(1-x) : x in ChangeUniverse(Eltseq(H), Z)], 2);
end intrinsic;

intrinsic HadamardMatrixFromInteger(x::RngIntElt, n::RngIntElt) -> AlgMatElt
{Returns a Hadamard matrix of dimension n as encoded by the integer x};
    Z := Integers();
    return MatrixRing(Z, n)![(-1)^k : k in Intseq(x, 2, n^2)];
end intrinsic;

