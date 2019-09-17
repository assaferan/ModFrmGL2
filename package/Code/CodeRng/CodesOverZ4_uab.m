///////////////////////////////////////////////////////////////////////////////
/////////    Copyright 2010-2016 Jaume Pernas supervised by             ///////
/////////            Merce Villanueva and Jaume Pujol                   ///////
/////////                                                               ///////
/////////    This program is distributed under the terms of GNU         ///////
/////////               General Public License                          ///////
/////////                                                               ///////
///////////////////////////////////////////////////////////////////////////////

/******************************************************************************
    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
******************************************************************************/


/************************************************************/
/*								                            */
/* Project name: Codes over Z4 in MAGMA	                    */
/* File name: CodesOverZ4.m	        			            */
/*								                            */
/* Comment: Package developed within the CCSG group      	*/
/*								                            */
/* Authors: Jaume Pernas, Jaume Pujol and Merce Villanueva	*/
/*								                            */
/* Revision version and last date: v1.2   2010/03/15        */
/*                                 v1.3   2011/03/18        */
/*                                 v1.4   2012/02/29        */
/*                                 v1.5   2015/12/18        */
/*                                 v2.1   2016/07/15        */
/*                                 v2.2   2016/09/13        */
/*                                                          */
/************************************************************/
/*****************************************************************************/
//Uncomment freeze when package finished
freeze;

intrinsic CodesOverZ4_version() -> SeqEnum
{Return the current version of this package.}
    version := [2,2];
    return version;
end intrinsic;

/*****************************************************************************/
/* Begin: Functions from version 1.2 included in MAGMA version 2.16          */
/*        (they have been improved and some errors have been corrected)      */ 
/*****************************************************************************/

/*****************************************************************************
*************************   GLOBAL VARIABLES   ******************************* 
******************************************************************************/
Z  := IntegerRing();
Z2 := Integers(2);
Z4 := Integers(4);

/*****************************************************************************/
/******************************************************************************
** RepetitonCodeZ4 function
******************************************************************************/
/**	Description:
	Create a code over Z4 of length n with only the all-two codeword.
**/

RepetitionCodeZ4 := function(n)
	return LinearCode<Z4, n | [2 : i in [1..n]] >;		
end function;

/*****************************************************************************/
/******************************************************************************
** RemoveOrder2Rows function
******************************************************************************/
/**	Description:
	Given a matrix over Z4, remove the rows of order two.
**/

RemoveOrder2Rows := function(G)

	order4Seq := [G[i] : i in [1..Nrows(G)] | not IsZero(2*G[i]) ];	
	if IsEmpty(order4Seq)  then
		return ZeroMatrix(Z4, 0, Ncols(G));
	else
		return Matrix(order4Seq);	
	end if;
end function;

/*****************************************************************************/
/******************************************************************************
** Replace2with1 function
******************************************************************************/
/**	Description:
	Given a matrix over Z4, replace the twos with ones in rows of order two. 
**/

Replace2with1 := function(G)
    m  := Nrows(G);
    n  := Ncols(G);
    if IsZero(m) then
        return G;
    else
        RS := Parent(G[1]);   
        for i := 1 to m do
            if IsZero(2*G[i]) then
                G[i] := RS![Z!x div 2 : x in Eltseq(G[i])];
            end if;
        end for;
        return G;
    end if;
end function;

/*****************************************************************************/
/******************************************************************************
** MinRowsGeneratorMatrix function
******************************************************************************/

intrinsic MinRowsGeneratorMatrix(C::CodeLinRng) -> ModMatRngElt, RngIntElt, RngIntElt
{
	A generator matrix for the code over Z4 of length n and type 2^gamma 4^delta, with the 
minimum number of rows, that is with gamma + delta rows: gamma rows of order 
two and delta rows of order four. It also returns the parameter gamma and delta. 
}
	require (BaseRing(C) eq Z4) : "Code must be over Z4";
  
    Gs, _, _, p := StandardFormInfo(C);
    delta, gamma := Z4Type(C);
    Gmin := Gs^(p^-1);
    return VerticalJoin(RowSubmatrix(Gmin, delta+1, gamma), 
                        RowSubmatrix(Gmin, delta)), gamma, delta;		
end intrinsic;

/*****************************************************************************/
/******************************************************************************
** ReedMullerCodeQRMZ4 function
******************************************************************************/

intrinsic ReedMullerCodeQRMZ4(r::RngIntElt, m::RngIntElt) -> CodeLinRng
{
	Given an integer m >= 2 and an integer r such that 0 <= r <= m, return the 
r-th order Reed-Muller code over Z4 of length 2^m. 

The binary image under the modulo 2 map is the binary linear r-th order 
Reed-Muller code of length 2^m. For r = 1 and r = m - 2, the function returns 
the quaternary linear Kerdock and Preparata code, respectively.
}
	return ReedMullerCodeZ4(r,m);		
end intrinsic;

/*****************************************************************************/
/******************************************************************************
** PlotkinSum function
******************************************************************************/

intrinsic PlotkinSum(A::Mtrx, B::Mtrx) -> Mtrx
{
	Given matrices A and B both over the same ring and with the same number of 
columns, return the P_AB matrix over the same ring of A and B, where P_AB = 
[[A,A],[0,B]].
}
	require (Ncols(A) eq Ncols(B)):
		"All matrices must have the same number of columns";
	require (BaseRing(A) eq BaseRing(B)):
		"All matrices must have the same base ring";
	
	row1 := HorizontalJoin(A,A);
	row2 := HorizontalJoin(ZeroMatrix(BaseRing(A), Nrows(B),Ncols(B)), B);
	P_AB := VerticalJoin(row1,row2);
	
	return P_AB;	
end intrinsic;

/*****************************************************************************/
/******************************************************************************
** PlotkinSum function
******************************************************************************/

intrinsic PlotkinSum(C::Code, D::Code) -> Code
{
	Given codes C and D both over the same ring and of the same length, 
construct the Plotkin sum of C and D. The Plotkin sum consists of all vectors 
of the form (u|u+v), for all u in C and v in D.
}
	require (Length(C) eq Length(D)): "All codes must have the same length";
	require (BaseRing(C) eq BaseRing(D)): 
        "All codes must be defined over the same ring";
	
	Gc := GeneratorMatrix(C);
	Gd := GeneratorMatrix(D);
	
	return LinearCode(PlotkinSum(Gc,Gd));		
end intrinsic;

/*****************************************************************************/
/******************************************************************************
** BQPlotkinSum function
******************************************************************************/

intrinsic BQPlotkinSum(A::Mtrx, B::Mtrx, C::Mtrx) -> Mtrx
{
	Given three matrices A, B, and C over Z4, all with the same number of 
columns, return the BQP_ABC matrix over Z4, where BQP_ABC = 
[[A,A,A,A],[0,B',2B',3B'],[0,0,B'',B''],[0,0,0,C]], B' is obtained 
from B replacing the twos with ones in the rows of order two, and B'' is obtained 
from B removing the rows of order two. 
}
	require (Ncols(A) eq Ncols(B)) and (Ncols(A) eq Ncols(C)):
		"All matrices must have the same number of columns";
	require (Type(BaseRing(A)) eq RngIntRes) and (BaseRing(A) eq Z4): 
		"Argument 1 must be a matrix over Z4";
	require (Type(BaseRing(B)) eq RngIntRes) and (BaseRing(B) eq Z4): 
		"Argument 2 must be a matrix over Z4";
	require (Type(BaseRing(C)) eq RngIntRes) and (BaseRing(C) eq Z4): 
		"Argument 3 must be a matrix over Z4";

	
	n  := Ncols(A);
	mb := Nrows(B);
	mc := Nrows(C);	
	row1 	:= HorizontalJoin(<A,A,A,A>);
	Bprime 	:= Replace2with1(B);
	zero2 	:= ZeroMatrix(Z4, mb, n);
	row2 	:= HorizontalJoin(<zero2,Bprime,2*Bprime,3*Bprime>);
	Bhut 	:= RemoveOrder2Rows(B);
	zero3   := ZeroMatrix(Z4, Nrows(Bhut), n);
	row3 	:= HorizontalJoin(<zero3,zero3,Bhut,Bhut>);
	zero4 	:= ZeroMatrix(Z4, mc, n);
	row4 	:= HorizontalJoin(<zero4,zero4,zero4,C>);
	BQP_ABC := VerticalJoin(<row1,row2,row3,row4>);
		
	return BQP_ABC;
end intrinsic;

/*****************************************************************************/
/******************************************************************************
** BQPlotkinSum function
******************************************************************************/

intrinsic BQPlotkinSum(C::Code, D::Code, E::Code) -> Code
{
	Given three codes C,D and E over Z4, all the same length, construct the 
BQ-Plotkin sum of C,D and E. Let Gd be the generator matrix of the code D of 
type 2^gamma 4^delta. The code D' over Z4 is obtained from D replacing the twos 
with ones in the gamma rows of order two of Gd, and the code D'' over Z4 is 
obtained from D removing the gamma rows of order two of Gd.
The BQ-Plotkin sum is a code over Z4 that consists of all vectors of the form 
(u,u+v',u+2v'+v'',u+3v'+v''+z), where u in C, v' in D', v'' in D'' and z in E.
}
	require (Length(C) eq Length(D)) 
		and (Length(C) eq Length(E)): "All codes must have the same length";
	require (BaseRing(C) eq BaseRing(D)) 
		and (BaseRing(C) eq BaseRing(E))
		and (BaseRing(C) eq Z4): "All codes must be defined over Z4";
		
	Gc := GeneratorMatrix(C);
	Gd := GeneratorMatrix(D);
	Ge := GeneratorMatrix(E);

	return LinearCode(BQPlotkinSum(Gc,Gd,Ge));
end intrinsic;

/*****************************************************************************/
/*****************************************************************************
** QuaternaryPlotkinSum function
******************************************************************************/

intrinsic QuaternaryPlotkinSum(A::Mtrx, B::Mtrx) -> Mtrx
{
	Given two matrices A and B both over Z4 and with the same number of 
columns, return the QP_AB matrix over Z4 of A and B, where QP_AB = 
[[A,A,A,A],[0,B,2B,3B]].
}
	require (Ncols(A) eq Ncols(B)):
		"All matrices must have the same number of columns";
	require (Type(BaseRing(A)) eq RngIntRes) and (BaseRing(A) eq Z4): 
		"Argument 1 must be a matrix over Z4";
	require (Type(BaseRing(B)) eq RngIntRes) and (BaseRing(B) eq Z4): 
		"Argument 2 must be a matrix over Z4";
	
	zero  := ZeroMatrix(Z4,Nrows(B),Ncols(B));
	row1  := HorizontalJoin(<A,A,A,A>);
	row2  := HorizontalJoin(<zero,B,2*B,3*B>);
	QP_AB := VerticalJoin(row1,row2);

	return QP_AB;		
end intrinsic;

/*****************************************************************************/
/******************************************************************************
** QuaternaryPlotkinSum function
******************************************************************************/

intrinsic QuaternaryPlotkinSum(C::Code, D::Code) -> Code
{
	Given two codes C and D over Z4, both of the same length, construct the 
Quaternary Plotkin sum of C and D. The Quaternary Plotkin sum is a code over Z4 
that consists of all vectors of the form (u,u+v,u+2v,u+3v), where u in C and v 
in D.
}
	require (Length(C) eq Length(D)): "All codes must have the same length";
	require (BaseRing(C) eq BaseRing(D))
		and (BaseRing(C) eq Z4): "All codes must be defined over Z4";
	
	Gc := GeneratorMatrix(C);
	Gd := GeneratorMatrix(D);

	return LinearCode(QuaternaryPlotkinSum(Gc,Gd));		
end intrinsic;

/*****************************************************************************/
/*****************************************************************************
** DoublePlotkinSum function
******************************************************************************/

intrinsic DoublePlotkinSum(A::Mtrx, B::Mtrx, C::Mtrx, D::Mtrx) -> Mtrx
{
	Given four matrices A,B,C, and D, all over Z4 and with the same 
number of columns, return the DP_ABCD matrix over Z4, where QP_AB = 
[[A,A,A,A],[0,B,2B,3B],[0,0,C,C],[0,0,0,D]].
}
	require (Ncols(A) eq Ncols(B)) and 
			(Ncols(A) eq Ncols(C)) and 
			(Ncols(A) eq Ncols(D)):
		"All matrices must have the same number of columns";
	require (Type(BaseRing(A)) eq RngIntRes) and (BaseRing(A) eq Z4): 
		"Argument 1 must be a matrix over Z4";
	require (Type(BaseRing(B)) eq RngIntRes) and (BaseRing(B) eq Z4): 
		"Argument 2 must be a matrix over Z4";
	require (Type(BaseRing(C)) eq RngIntRes) and (BaseRing(C) eq Z4): 
		"Argument 3 must be a matrix over Z4";
	require (Type(BaseRing(D)) eq RngIntRes) and (BaseRing(D) eq Z4): 
		"Argument 4 must be a matrix over Z4";
	
	n := Ncols(A);
	zeroB := ZeroMatrix(Z4,Nrows(B),n);
	zeroC := ZeroMatrix(Z4,Nrows(C),n);
	zeroD := ZeroMatrix(Z4,Nrows(D),n);
	row1 := HorizontalJoin(<A,A,A,A>);
	row2 := HorizontalJoin(<zeroB,B,2*B,3*B>);
	row3 := HorizontalJoin(<zeroC,zeroC,C,C>);
	row4 := HorizontalJoin(<zeroD,zeroD,zeroD,D>);
	DP_ABCD := VerticalJoin(<row1,row2,row3,row4>);	

	return DP_ABCD;			
end intrinsic;

/*****************************************************************************/
/******************************************************************************
** DoublePlotkinSum function
******************************************************************************/

intrinsic DoublePlotkinSum(C::Code, D::Code, E::Code, F::Code) -> Code
{
	Given four codes C, D, E, and F over Z4, all of the same length, construct 
the Double Plotkin sum of C, D, E, and F. The Double Plotkin sum is a code over 
Z4 that consists of all vectors of the form (u,u+v,u+2v+z,u+3v+z+t), where u in 
C, v in D, z in E, and t in F.
}
	require (Length(C) eq Length(D)) and (Length(C) eq Length(E))
		and (Length(C) eq Length(F)): "All codes must have the same length";
	require (BaseRing(C) eq BaseRing(D)) 
		and (BaseRing(C) eq BaseRing(E))
		and (BaseRing(C) eq BaseRing(F))
		and (BaseRing(C) eq Z4): "All codes must be defined over Z4";
		
	Gc := GeneratorMatrix(C);
	Gd := GeneratorMatrix(D);
	Ge := GeneratorMatrix(E);
	Gf := GeneratorMatrix(F);

	return LinearCode(DoublePlotkinSum(Gc,Gd,Ge,Gf));
end intrinsic;

/*****************************************************************************/
/******************************************************************************
** ReedMullerCodeRMZ4Matrix function
******************************************************************************/
/**	Description:
	Given integers s,r and m, return a generator matrix for the Reed-Muller
	code over Z4 given by the ReedMullerCodeRMZ4 function
**/
function ReedMullerCodeRMZ4Matrix(s,r,m)
	case m:
	when 1:			
		case r:
			when 0:
				return GeneratorMatrix(RepetitionCodeZ4(2^0));
			else
				if r lt 0 then
					return GeneratorMatrix(ZeroCode(Z4,1));
				else 
					return GeneratorMatrix(UniverseCode(Z4,1));
				end if;
		end case;	
						 
	else // m>1
		if r lt 0 then 
			return GeneratorMatrix(ZeroCode(Z4,2^(m-1)));
		else
			if s lt (Ceiling((m-1)/2)) then
				// Plotkin construction
				return  PlotkinSum(	ReedMullerCodeRMZ4Matrix(s,r,m-1), 
									ReedMullerCodeRMZ4Matrix(s,r-1,m-1));
			else
				// BQ-Plotkin construction
				return RemoveZeroRows(
						BQPlotkinSum(
									ReedMullerCodeRMZ4Matrix(s-1,r  ,m-2), 
									ReedMullerCodeRMZ4Matrix(s-1,r-1,m-2), 
									ReedMullerCodeRMZ4Matrix(s-1,r-2,m-2))
									);
			end if;
		end if;
	end case;
end function;

/*****************************************************************************/
/******************************************************************************
** ReedMullerCodeRMZ4 function
******************************************************************************/ 

intrinsic ReedMullerCodeRMZ4
    (s::RngIntElt, r::RngIntElt, m::RngIntElt) -> CodeLinRng,Mtrx
{
	 Given an integer m >= 1, an integer r such that 0 <= r <= m, and an 
integer s such that 0 <= s <= floor((m - 1)/2), return a r-th order Reed-Muller 
code over Z4 of length 2^(m-1), denoted by RMs(r,m), as well as the generator
matrix used in the recursive construction. 

The binary image under the Gray map is a binary (not necessarily linear) code 
with the same parameters as the binary linear r-th order Reed-Muller code of 
length 2^m. Note that the inclusion and duality properties are also satisfied, 
that is, the code RMs(r-1,m) is a subcode of RMs(r,m), r > 0, and the code 
RMs(r,m) is the dual code of RMs(m-r-1,m), r < m.
}
	requirege	 m,  1;
	requirerange s,  0, (m-1) div 2;
	requirerange r, 0, m;

	G := ReedMullerCodeRMZ4Matrix(s,r,m);

	return LinearCode(G), G;		
end intrinsic;

/*****************************************************************************/
/******************************************************************************
** ReedMullerCodesRMZ4 function
******************************************************************************/

intrinsic ReedMullerCodesRMZ4(s::RngIntElt, m::RngIntElt) -> SeqEnum
{
	Given an integer m >= 1, and an integer s such that 0 <= s <= floor((m - 
1)/2), return a sequence with the family of Reed-Muller codes over Z4 of 
length 2^(m-1), that is, the codes RMs(r,m), for all 0 <= r <= m. The binary 
image of these codes under the Gray map gives a family of binary (not 
necessarily linear) codes with the same parameters as the binary linear 
Reed-Muller family of codes of length 2m. Note that RMs(0,m) subcode RMs(1,m) 
subcode ... subcode RMs(m,m).
}
	requirege	 m,  1;
	requirerange s,  0, (m-1) div 2;

	return [ReedMullerCodeRMZ4(s,r,m) : r in [0..m]];	
end intrinsic;

/*****************************************************************************/
/******************************************************************************
** ExtendedPerfectCodeZ4 function
******************************************************************************/

intrinsic ExtendedPerfectCodeZ4 
	(delta::RngIntElt, m::RngIntElt) -> CodeLinRng, Mtrx
{
	Given an integer m >= 2 and an integer delta such that 1 <= delta <=
floor((m + 1)/2), return an extended perfect code over Z4 of length 2^(m-1), 
such that its dual code is of type 2^gamma 4^delta, where gamma = m + 1 - 
2delta. Moreover, return a generator matrix constructed in a recursive way from 
the Plotkin and BQPlotkin constructions defined in Section 2.3 of the manual. 

An extended perfect code over Z4 of length 2^(m-1) is a code over Z4 such 
that, after the Gray map, give a binary (not necessarily linear) code with the 
same parameters as the binary extended perfect code of length 2^m. 
}
	requirege	 m,  2;
	requirerange delta,  1, (m+1) div 2;

	return ReedMullerCodeRMZ4(delta-1,m-2,m);
end intrinsic;

/*****************************************************************************/
/******************************************************************************
** KroneckerSequence function
******************************************************************************/
/**	Description:
	Return the vector (1,3,3,1,3,1,1,3, ...) of length 2^m over Z4.
**/
function KroneckerSequence(m)
	case m:
		when 0:
			return [Z4!1];
		else
  			return KroneckerSequence(m-1) cat [x+2 : x in KroneckerSequence(m-1)];
	end case;
end function;

/*****************************************************************************/
/******************************************************************************
** DualKroneckerZ4 function
******************************************************************************/

intrinsic DualKroneckerZ4(C::CodeLinRng) -> CodeLinRng
{
	Given a code C over Z4 of length 2^m, return its Kronecker dual code. 4 The  
Kronecker dual code of C is Cdk = \{ x in Z4^(2^m) : x K2^m y = 0, for all y 
in C \}, where K2^m is a quaternary matrix of length 2^m with the vector
 (1,3,3,1,3,1,1,3, ...) in the main diagonal and zeros elsewhere. 
}
	require (BaseRing(C) eq Z4) : "Code must be over Z4";
    require (Length(C)) eq 2^Ilog(2,Length(C)) : 
        "Code must be of length a power of two";
	
	Gd := MinRowsParityCheckMatrix(C);
	m := Nrows(Gd);
	n := Ncols(Gd);
	K := KroneckerSequence(Valuation(n,2));
	
	for j := 1 to n do
        MultiplyColumn(~Gd,K[j],j);
	end for;

	return LinearCode(Gd);		
end intrinsic;

/*****************************************************************************/
/******************************************************************************
** DimensionOfSpanZ2 function
******************************************************************************/

intrinsic DimensionOfSpanZ2(C::CodeLinRng) -> RngIntElt
{
	Given a code C over Z4, return the dimension of the linear span of Cbin, 
that is, the dimension of <Cbin>, where Cbin = phi(C) and phi is the Gray map.
}
	require (BaseRing(C) eq Z4) : "Code must be over Z4";
		
    Gs := StandardFormInfo(C);
    delta, gamma := Z4Type(C);
	n := Length(C);
	R := RSpace(Z2, n-delta);

    // submatrix of order four with the last n-delta columns
	GSOrder4 := Submatrix(Gs, 1, delta+1, delta, n-delta);
    // submatrix of order two with the last n-delta columns
	GSOrder2 := Submatrix(Gs, delta+1, delta+1, gamma, n-delta);
    GSOrder2 := Parent(GSOrder2) ! [Z!x div 2 : x in Eltseq(GSOrder2)];

	generatorsOverZ2 := {R!GSOrder2[i] : i in [1..gamma]} join 
         {R!GSOrder4[i] * R!GSOrder4[j] : j in [i+1..delta], i in [1..delta-1]};
	
	return Dimension(sub<R|generatorsOverZ2>) + 2*delta;
end intrinsic;

/*****************************************************************************/
/******************************************************************************
** RankZ2 function
******************************************************************************/

intrinsic RankZ2(C::CodeLinRng) -> RngIntElt
{
	Given a code C over Z4, return the dimension of the linear span of Cbin, 
that is, the dimension of <Cbin>, where Cbin = phi(C) and phi is the Gray map.
}
	require (BaseRing(C) eq Z4) : "Code must be over Z4";

	return DimensionOfSpanZ2(C);
end intrinsic;

/*****************************************************************************/
/*****************************************************************************
** SpanZ2CodeZ4 function
******************************************************************************/

intrinsic SpanZ2CodeZ4(C::CodeLinRng) -> CodeLinFld
{
	Given a code C over Z4 of length n, return Sc = phi^(-1)(Sbin) as a code 
over Z4, and the linear span of Cbin, Sbin = <Cbin>, as a binary linear code 
of length 2^n, where Cbin = phi(C) and phi is the Gray map.
}
	require (BaseRing(C) eq Z4) : "Code must be over Z4";
	
	isLinear, binaryLinearCode := HasLinearGrayMapImage(C);	

	if isLinear then
		return C, binaryLinearCode;
	else		
		GMin := MinRowsGeneratorMatrix(C);
        delta, gamma := Z4Type(C);
		Gdelta := RowSubmatrix(GMin, gamma+1, delta);
		newVectors := {2*Gdelta[i]*Gdelta[j] : j in [i+1..delta], i in [1..delta-1]};
		Gnew 		:= Matrix(Setseq(newVectors));
		GSpanCodeZ4 := VerticalJoin(GMin, Gnew);
		SpanCodeZ4  := LinearCode(GSpanCodeZ4);
		_, SpanCodeZ2 := HasLinearGrayMapImage(SpanCodeZ4);
		return SpanCodeZ4, SpanCodeZ2;
	end if;		
end intrinsic;

/*****************************************************************************/
/*****************************************************************************
** KernelZ2CodeZ4 function
******************************************************************************/

intrinsic KernelZ2CodeZ4(C::CodeLinRng) -> CodeLinRng
{
	Given a code C over Z4 of length n, return its kernel KC as a subcode over 
Z4 of C, and Kbin = phi(KC) as a binary linear subcode of Cbin of length 2n, 
where Cbin = phi(C) and phi is the Gray map. 

The kernel KC contains the codewords v such that 2v*u in C for all u in C, 
where * denotes the component-wise product. Equivalently, the kernel Kbin = 
phi(KC) contains the codewords c in Cbin such that c + Cbin = Cbin, where Cbin 
= phi(C) and phi is the Gray map.	
}
	require (BaseRing(C) eq Z4) : "Code must be over Z4";
		
	isLinear, binaryLinearCode := HasLinearGrayMapImage(C);	

	if isLinear then
		return C, binaryLinearCode;
	else
        G, gamma, delta := MinRowsGeneratorMatrix(C);
        deltaDual := Length(C)-delta-gamma; 
        G4  := [G[i] : i in [gamma+1..gamma+delta]];
		H   := MinRowsParityCheckMatrix(C);
		H4  := [H[i] : i in [gamma+1..gamma+deltaDual]];
		GH4 := [2*u*v : u in G4, v in H4];
		HH  := VerticalJoin(H, Matrix(GH4));
		KernelCodeZ4 := DualZ4(LinearCode(HH));
		_, KernelCodeZ2 := HasLinearGrayMapImage(KernelCodeZ4);
		return KernelCodeZ4, KernelCodeZ2;
	end if;
end intrinsic;

/*****************************************************************************/
/******************************************************************************
** DimensionOfKernelZ2 function
******************************************************************************/

intrinsic DimensionOfKernelZ2(C::CodeLinRng) -> RngIntElt
{
	Given a code C over Z4, return the dimension of the Gray map image of its 
kernel KC over Z4, that is the dimension of Kbin = phi(KC), where phi is the 
Gray map. Note that Kbin is always a binary linear code.
}
	require (BaseRing(C) eq Z4) : "Code must be over Z4";
		
	_, KernelCodeZ2 := KernelZ2CodeZ4(C);

	return Dimension(KernelCodeZ2);		
end intrinsic;

/*****************************************************************************/
/*****************************************************************************/
// Auxiliar functions for LRM codes
/*****************************************************************************/

ZipSets := func < f,A,B| {f(x,y): x in A, y in B}>;

ZipTups := func < f,A,B| <f(x,y): x in A, y in B>>;

function JoinTups(t1,t2)
	case #t2:
	    when 0: 
            return t1;
	    else 
		    return JoinTups(Append(t1,t2[#t2]),Prune(t2));
	end case;
end function;

/*****************************************************************************/
/******************************************************************************
** LRM function
******************************************************************************/
/**	Description:
	Return the set of LRM codes for r and m parameters.
**/
function LRM(r,m)
	case r:
		when -1: /* Zero code */
			return <GeneratorMatrix(ZeroCode(Z4,2^(m-1)))>;

		when 0:  /* Repetition code */
			return <GeneratorMatrix(RepetitionCodeZ4(2^(m-1)))>;

		when m:  /* Universe code */ 
			return  <GeneratorMatrix(UniverseCode(Z4,2^(m-1)))>;

		else  
		    newHadamard := <>;
			if ((r eq 1) and (m ge 3) and (m mod 2 ne 0)) then  
				_, G := HadamardCodeZ4( (m+1) div 2 ,m);
				Append(~newHadamard,G);
			end if;
			return JoinTups(
					ZipTups(
						PlotkinSum, LRM(r, m-1),LRM(r-1, m-1)), newHadamard);
	end case;
end function;

/*****************************************************************************/
/******************************************************************************
** ReedMullerCodesLRMZ4 function
******************************************************************************/

intrinsic ReedMullerCodesLRMZ4(r::RngIntElt, m::RngIntElt) -> SetEnum
{
	Given an integer m >= 1 and an integer r such that 0 <= r <= m, return a
set of r-th order Reed-Muller codes over Z4 of length 2^(m-1). 

The binary image under the Gray map of any of these codes is a binary (not 
necessarily linear) code with the same parameters as the binary linear r-th 
order Reed-Muller code of length 2^m. Note that for these codes neither the 
usual inclusion nor duality properties of the binary linear Reed-Muller family 
are satisfied. 
}
	requirege 		m,  1;
	requirerange 	r,  0, m;

	return {LinearCode(G) : G in LRM(r,m)};
end intrinsic;


/*****************************************************************************/
/* End:   Functions from version 1.2 included in MAGMA version 2.16          */
/*        (they have been improved and some errors have been corrected)      */ 
/*****************************************************************************/

/*****************************************************************************/
/* Begin: Functions from version 2.0 included in MAGMA version 2.22          */
/*        (new functions have been added)                                    */
/*****************************************************************************/

/*****************************************************************************/
/******************************************************************************
** CosetRepresentatives function
******************************************************************************/

intrinsic CosetRepresentatives(C::CodeLinRng) -> SeqEnum
{
	Given a code C over Z4 of length n, with ambient space V = Z_4^n, return 
a set of coset representatives (not necessarily of minimal weight in their cosets) 
for C in V as an indexed set of vectors from V. The set of coset representatives 
\{c_0, c_1,..., c_t\} satisfies that c_0 is the zero codeword, and 
V = U_(i=0)^t (C + c_i). Note that this function is only applicable when V and 
C are small.
}	
	require BaseRing(C) eq Z4: "Code must be over Z4";

    leadersSeq := [];
    U := UniverseCode(Z4, Length(C));

    if (#C eq 1) then
        leadersSeq := {@ x : x in U @};
    elif (#C eq #U) then
        leadersSeq := {@ U!0 @};  
    else
        Q, f := quo<RSpace(U)|RSpace(C)>;
        R := RSpace(Z4, Degree(Q));
        leadersSeq := {@  (Q!x)@@f : x in R @};
    end if;

    return leadersSeq;
end intrinsic;

/*****************************************************************************/
/******************************************************************************
** CosetRepresentatives function
******************************************************************************/

intrinsic CosetRepresentatives(C::CodeLinRng, S::CodeLinRng) -> SeqEnum, SeqEnum
{
	Given a code C over Z4 of length n, and a subcode S over Z4 of C, 
return a set of coset representatives (not necessarily of minimal weight in their 
cosets) for S in C as an indexed set of codewords from C. The set of cosett 
representatives \{c_0, c_1,..., c_t \} satisfies that c_0 is the zero codeword, and 
C = U_(i=0)^t (S + c_i). Note that this function is only applicable when S and 
C are small.
}	
	require (BaseRing(C) eq Z4) : "Argument 1 must be a code over Z4";
    require (BaseRing(S) eq Z4) : "Argument 2 must be a code over Z4";
    require (S subset C): "Argument 2 must be a subcode of argument 1";

    f2 := GrayMap(C);
    V2 := VectorSpace(GF(2),2*Length(C));
    Q, f := quo<RSpace(C)|RSpace(S)>;
    degreeQ := Degree(Q);
    if degreeQ gt 0 then
        R := RSpace(Z4, degreeQ);
        leadersZ4 := {@ (Q!x)@@f : x in R @};
        leadersZ2 := {@  V2!f2(v) : v in leadersZ4 @};
    else 
        leadersZ4 := {@ C!0 @};
        leadersZ2 := {@ V2!0 @};
    end if;

    return leadersZ4, leadersZ2;
end intrinsic;

/*****************************************************************************/
/******************************************************************************
** KernelCosetRepresentatives function
******************************************************************************/

intrinsic KernelCosetRepresentatives(C::CodeLinRng) -> SeqEnum, SeqEnum
{
Given a code C over Z4 of length n, return the coset representatives 
[c_1,..., c_t] as a sequence of codewords of C, such that 
C = KC U (U_(i=1)^t (KC + c_i)), where KC is the kernel of C as a 
subcode over Z4. It also returns the coset representatives of the corresponding 
binary code Cbin = phi(C) as a sequence of binary codewords 
[phi(c_1),..., phi(c_t)], such that Cbin = Kbin U (U_(i=1)^t (Kbin + phi(c_i)))
where Kbin = phi(KC) and phi is the Gray map.
}
    require (BaseRing(C) eq Z4) : "Code must be over Z4";

    K := KernelZ2CodeZ4(C);
    f2 := GrayMap(C);
    V2 := VectorSpace(GF(2),2*Length(C));
    Q, f := quo<RSpace(C)|RSpace(K)>;
    degreeQ := Degree(Q);

    leadersZ4 := [];
    leadersZ2 := [];
    if degreeQ gt 0 then
        R := RSpace(Integers(2),degreeQ);
        leadersZ4 := [(Q!x)@@f : x in R | not IsZero(x)];
        leadersZ2 := [V2!f2(v) : v in leadersZ4 | not IsZero(v)];
    end if;

    return leadersZ4, leadersZ2; 
end intrinsic;

/*****************************************************************************/
/*****************************************************************************/
// Auxiliar functions for Hadamard codes
/*****************************************************************************/

// Additive Plotkin (binary form)
function Z4Plotkin(G,m)
    n := 2^(m-1);
	Zero := ZeroMatrix(Z4,1,n);	    		    
	Two := Matrix(Z4,[[2 : i in [1..n]]]);		
	return VerticalJoin(HorizontalJoin(G,G),HorizontalJoin(Zero,Two));
end function;

// Additive BQPlotkin (quaternary form)
function Z4BQPlotkin(G,m)
    n := 2^(m-1);		
	Zero := ZeroMatrix(Z4,1,n);	
	One := Matrix(Z4,[[1 : i in [1..n]]]);
	Two := Matrix(Z4,[[2 : i in [1..n]]]);
	Three := Matrix(Z4,[[3 : i in [1..n]]]);   
    return VerticalJoin(HorizontalJoin([G,G,G,G]),HorizontalJoin([Zero,One,Two,Three]));	
end function;

// Generator matrix of Hadamard (s,m), m>=1, 0<= s <= [(m-1)/2]
function HadamardCodeZ4Matrix(s,m)
	n := 2^(m-1);
	gamma := m-1-2*s;
	delta := s+1;
	if m eq 1 then
	    return Matrix(Z4,[[1]]);
	elif m eq 2 then
	    return Matrix(Z4,[[1,1],[0,2]]);
	else 
	    if  s gt 0 then
		    G := Matrix(Z4,[[1,1,1,1],[0,1,2,3]]);
			m0 := 3;
			gamma0:=0;  // delta0:=2;
	    else
	        G := Matrix(Z4,[[1,1],[0,2]]);
			m0 := 2;
			gamma0:=1;  // delta0:=1;
	    end if;  	 
        for d in [1..delta-2] do	// delta-delta0 for s>0	
          G := Z4BQPlotkin(G,m0);  
          m0 := m0+2;		  
        end for;
		for g in [1..gamma-gamma0] do  
        	G := Z4Plotkin(G,m0);
			m0 := m0+1;
        end for;
    end if;
    return Matrix(Z4,G);
end function;

/*****************************************************************************/
/******************************************************************************
** HadamardCodeZ4 function
******************************************************************************/

intrinsic HadamardCodeZ4(delta::RngIntElt, m::RngIntElt) -> CodeLinRng, Mtrx
{
	Given an integer m >= 1 and an integer delta such that 1 <= delta <= 
floor((m + 1)/2), return a Hadamard code over Z4 of length 2^(m-1) and type 
2^gamma 4^delta, where gamma = m + 1 - 2delta. Moreover, return a generator 
matrix with gamma + delta rows constructed in a recursive way from the Plotkin 
and BQPlotkin constructions defined in Section 2.3 of the manual. 

A Hadamard code over Z4 of length 2^(m-1) is a code over Z4 such that, after 
the Gray map, give a binary (not necessarily linear) code with the same 
parameters as the binary Hadamard code of length 2^m. 
}
	requirege	 m,  1;
	requirerange delta,  1, (m+1) div 2;
	
	G := HadamardCodeZ4Matrix(delta-1,m);
	
	return LinearCode(G), G;	
end intrinsic;

/*****************************************************************************/
/*****************************************************************************/
// Auxiliar functions for computing the PAut of Hadamard / perfect codes
/*****************************************************************************/

// Given a permutation p in Sym(n), returns the permtutation (p,id) in Sym(2n)
function DoublePermId(p)
	pseq := Eltseq(p);
	n    := #pseq; 
	return Sym(2*n)!(pseq cat [i+n : i in [1..n]]);
end function;

// Given a permutation p in Sym(n), returns the permtutation (id,p) in Sym(2n)
function DoubleIdPerm(p)
	pseq := Eltseq(p);
	n    := #pseq; 
	return Sym(2*n)!([i : i in [1..n]] cat [i+n : i in pseq]);
end function;

// Permutation (1,1+n/2)(2,2+n/2)...(n/2,n)
function Cicle2(n)
	ndiv2 := n div 2;
	return Sym(n)!([ndiv2 + j : j in [1..ndiv2]] cat [j : j in [1..ndiv2]]);
end function;

// Permutation (1,1+n/4,1+n/2,1+3n/4)(2,2+n/4,2+n/2,2+3n/4)...
function Cicle4(n)
    ndiv4 := n div 4;
	return Sym(n)!(	[ndiv4 + j   : j in [1..ndiv4]] cat 
				    [2*ndiv4 + j : j in [1..ndiv4]] cat 
				    [3*ndiv4 + j : j in [1..ndiv4]] cat 
				    [j : j in [1..ndiv4]]);
end function;

// Given a permutation p in Sym(n) (of order 4), returns the permutation 
// (id,p,p^2,p^(-1)) in Sym(4n), where p^(-1) = p^3
function QuadPermK4(p)
	pseq  := Eltseq(p);
	pseq2 := Eltseq(p^2);
	pseq3 := Eltseq(p^(-1));
	n     := #pseq; 
	return Sym(4*n)!([i : i in [1..n]] cat 
					 [i+n : i in pseq] cat 
					 [i+2*n : i in pseq2] cat 
					 [i+3*n : i in pseq3]);
end function;

// Given a permutation p in Sym(n), returns the permutation (p,p) in Sym(2n)
function DoublePerm(p)
	pseq := Eltseq(p);
	n    := #pseq; 
	return Sym(2*n)!(pseq cat [i+n : i in pseq]);
end function;

// Given a permutation p in Sym(n), returns the permutation (p,p,p,p) in Sym(4n)
function QuadruplePerm(p)
	pseq := Eltseq(p);
	n    := #pseq;
	return Sym(4*n)!(pseq cat [i+n : i in pseq] cat 
	                          [i+2*n : i in pseq] cat 
							  [i+3*n : i in pseq]);
end function;

// Permutation to add when we apply Plotkin construction (first time)
function Perm3(n)
	//exp := Truncate(Log(2,n)) - 1;
	exp := Valuation(n,2)-1;
	return Sym(n)![(i + (i mod 2)*2^exp -1) mod n +1 : i in [1..n]];
end function;

// Permutation to add when we apply Plotkin construction (except first time) 
function Perm4(n)
	ndiv4 := n div 4;
	return Sym(n)![k + j : k in [1..ndiv4], j in [ndiv4*i : i in [2,1,0,3]]];
end function;

// Permutation to add when we apply the BQPlotkin construction 
addx  := func < L,n | [x + ((x-1) div 4)*((n div 4)-4) : x in L]>;
add4x := func < L | [L[i] + ((i-1) div 4)*4 : i in [1..#L]]>;
repeatSeq := func < L,n | Flat([L : i in [1..n]])>;
		
function Perm5(n)
	p := Sym(16)!(1,16)(2,12)(3,8)(5,15)(6,11)(9,14);
	ndiv16 := n div 16;
	if n eq 16 then
		return p;
	end if;
	pseq := Eltseq(p);
	L := addx(pseq, n);
	return	Sym(n)!(
				add4x(repeatSeq(L[1..4], ndiv16)) cat 
				add4x(repeatSeq(L[5..8], ndiv16)) cat 
				add4x(repeatSeq(L[9..12], ndiv16)) cat 
				add4x(repeatSeq(L[13..16], ndiv16))
	);
end function;

// Given a subgroup G < Sym(n), return the subgroup (G,G) < Sym(2n)
function GroupDouble(G)
	n := 2*Degree(G);
	return PermutationGroup< n | [DoublePerm(p) : p in Generators(G)] >;
end function;

// Given a subgroup G < Sym(n), return the subgroup (G,G,G,G) < Sym(4n)
function GroupQuadruple(G)
	return GroupDouble(GroupDouble(G));
end function;

// Return the normal subgroup A(s,m) of PAut (permutacions adding 0,1,2,3)
function A(s,m)
    n := 2^(m-1);
	
	if m le 1 then
		return Sym(1);
	end if;
	
	if m eq 2*s+1 then
		C := PermutationGroup< n | {Cicle4(n)}>;
		return PermutationGroup< n | {GroupQuadruple(A(s-1,m-2)),C}>;
	end if;
	
	if m gt 2*s+1 then 
		C := PermutationGroup< n | {Cicle2(n)}>;
		return PermutationGroup< n | {GroupDouble(A(s,m-1)),C}>;
	end if;
end function;

// Return the normal subgroup B(s,m) of PAut (permutacions adding 0,2)
function B(s,m)
    n := 2^(m-1);
	
	if m le 1 then
		return Sym(1);
	end if;
	
	if m eq 2*s+1 then
		C := PermutationGroup< n | {Cicle4(n)^2} >;
		return PermutationGroup< n | {GroupQuadruple(B(s-1,m-2)),C} >;
	end if;
	
	if m gt 2*s+1 then 
		C := PermutationGroup< n | {Cicle2(n)} >;
		return PermutationGroup< n | {GroupDouble(B(s,m-1)),C} >;
	end if;
end function;

/*****************************************************************************/
/******************************************************************************
** PAutHadamardCodeZ4 function
******************************************************************************/

intrinsic PAutHadamardCodeZ4(delta::RngIntElt, m::RngIntElt) -> GrpPerm, Mtrx
{
	Given an integer m >= 1 and an integer delta such that 1 <= delta <= 
floor((m + 1)/2), return the permutation group G of a Hadamard code over Z4 of 
length 2^(m-1) and type 2^gamma 4^delta, where gamma = m + 1 - 2delta. The group 
G contains all permutation-action permutations which preserve the code. Thus only
permutation of coordinates is allowed, and the degree of G is always 2^(m-1). 
Moreover, return a generator matrix with gamma + delta rows constructed in a 
recursive way from the Plotkin and BQPlotkin constructions defined in Section 
2.3 of the manual. 
}
	requirege	 m,  1;
	requirerange delta,  1, (m+1) div 2;
	
	_, G := HadamardCodeZ4(delta,m); 
	n := 2^(m-1);
	s := delta - 1;

	case s:
	when 0:
	    if m eq 1 then 
		    return Sym(1), G;
		else 
            return AGL(m-1,2), G;
		end if;
	else
        // base case with delta=2 and m=3 
		if s eq 1 and m eq 3 then	
            return PermutationGroup< 4 | (2,4),(1,2)(3,4)>, G;
        end if;
			
        // BQPlotkin construction
        if m eq 2*s+1 then
            gensGroupA := Generators(A(s-1,m-2));
            gensQuadGrupA := PermutationGroup< n | {QuadPermK4(x) : x in gensGroupA}>;
            extraPerm := PermutationGroup< n | {Perm5(n)}>;
            return PermutationGroup< n | {GroupQuadruple(PAutHadamardCodeZ4(delta-1,m-2)),
			                              gensQuadGrupA, extraPerm}>, G;
        end if;
			
        // Plotkin construction (first time)
        if m eq 2*s+2 then
            gensGroupB := Generators(B(s,m-1));
            gensDouble := PermutationGroup< n | {DoubleIdPerm(x) : x in gensGroupB}>;
            extraPerm := PermutationGroup< n | {Perm3(n)}>;
            return PermutationGroup< n | {GroupDouble(PAutHadamardCodeZ4(delta,m-1)),
			                              gensDouble, extraPerm}>, G;
        end if;
			
        // Plotkin construction (except first time)
        if m gt 2*s+2 then
            gensGroupB := Generators(B(s,m-1));
            gensDouble := PermutationGroup< n | {DoubleIdPerm(x) : x in gensGroupB}>;
            extraPerm := PermutationGroup< n | {Perm4(n)}>;
            return PermutationGroup< n | {GroupDouble(PAutHadamardCodeZ4(delta,m-1)),
			                              gensDouble, extraPerm}>, G;
        end if;		
	end case;	
end intrinsic;

/*****************************************************************************/
/******************************************************************************
** PermutationGroupHadamardCodeZ4 function
******************************************************************************/

intrinsic PermutationGroupHadamardCodeZ4(delta::RngIntElt, m::RngIntElt) -> 
                                                               GrpPerm, Mtrx
{
	Given an integer m >= 1 and an integer delta such that 1 <= delta <= 
floor((m + 1)/2), return the permutation group G of a Hadamard code over Z4 of 
length 2^(m-1) and type 2^gamma 4^delta, where gamma = m + 1 - 2delta. The group 
G contains all permutation-action permutations which preserve the code. Thus only
permutation of coordinates is allowed, and the degree of G is always 2^(m-1). 
Moreover, return a generator matrix with gamma + delta rows constructed in a 
recursive way from the Plotkin and BQPlotkin constructions defined in Section 
2.3 of the manual. 
}
	requirege	 m,  1;
	requirerange delta,  1, (m+1) div 2;

	return PAutHadamardCodeZ4(delta,m);
end intrinsic;

/*****************************************************************************/
/******************************************************************************
** PAutHadamardCodeZ4Order function
******************************************************************************/

intrinsic PAutHadamardCodeZ4Order(delta::RngIntElt, m::RngIntElt) -> RngIntElt
{
	Given an integer m >= 1 and an integer delta such that 1 <= delta <= 
floor((m + 1)/2), return the cardinal of the permutation group G of a 
Hadamard code over Z4 of length 2^(m-1) and type 2^gamma 4^delta, where 
gamma = m + 1 - 2delta. The group G contains all permutation-action permutations 
which preserve the code.
}
	requirege	 m,  1;
	requirerange delta,  1, (m+1) div 2;
	
	s := delta - 1;
	if s eq 0 and m eq 1 then
		return 1;
	end if;
	if m eq 2*s+1 then
		return PAutHadamardCodeZ4Order(delta-1,m-2)*4^(s-1)*(2^(2*s+2)-2^(s+2));
	end if;
	if m gt 2*s+1 then
		return PAutHadamardCodeZ4Order(delta,m-1)*2^(m-s-2)*(2^(m-s)-2^(s+1));
	end if;
end intrinsic;

/*****************************************************************************/
/******************************************************************************
** PermutationGroupHadamardCodeZ4Order function
******************************************************************************/

intrinsic PermutationGroupHadamardCodeZ4Order(delta::RngIntElt, m::RngIntElt) 
                                                                    -> RngIntElt
{
	Given an integer m >= 1 and an integer delta such that 1 <= delta <= 
floor((m + 1)/2), return the cardinal of the permutation group G of a 
Hadamard code over Z4 of length 2^(m-1) and type 2^gamma 4^delta, where 
gamma = m + 1 - 2delta. The group G contains all permutation-action permutations 
which preserve the code.
}
	requirege	 m,  1;
	requirerange delta,  1, (m+1) div 2;
	
	return PAutHadamardCodeZ4Order(delta,m);
end intrinsic;

/*****************************************************************************/
/******************************************************************************
** PAutExtendedPerfectCodeZ4 function
******************************************************************************/

intrinsic PAutExtendedPerfectCodeZ4(delta::RngIntElt, m::RngIntElt) -> 
                                                               GrpPerm, Mtrx
{
	Given an integer m >= 2 and an integer delta such that 1 <= delta <= 
floor((m + 1)/2), return the permutation group G of an extended perfect code 
over Z4 of length 2^(m-1), such that its dual code is of type 2^gamma 4^delta, 
where gamma = m + 1 - 2delta. The group G contains all permutation-action 
permutations which preserve the code. Thus only permutation of coordinates is 
allowed, and the degree of G is always 2^(m-1). Moreover, return a generator 
matrix constructed in a recursive way from the Plotkin and BQPlotkin constructions 
defined in Section 2.3 of the manual. 
}
	requirege	 m,  2;
	requirerange delta,  1, (m+1) div 2;

       _, G := ExtendedPerfectCodeZ4(delta,m);
	return PAutHadamardCodeZ4(delta,m), G;
end intrinsic;

/*****************************************************************************/
/******************************************************************************
** PermutationGroupExtendedPerfectCodeZ4 function
******************************************************************************/

intrinsic PermutationGroupExtendedPerfectCodeZ4(delta::RngIntElt, m::RngIntElt) -> 
                                                               GrpPerm, Mtrx
{
	Given an integer m >= 2 and an integer delta such that 1 <= delta <= 
floor((m + 1)/2), return the permutation group G of an extended perfect code 
over Z4 of length 2^(m-1), such that its dual code is of type 2^gamma 4^delta, 
where gamma = m + 1 - 2delta. The group G contains all permutation-action 
permutations which preserve the code. Thus only permutation of coordinates is 
allowed, and the degree of G is always 2^(m-1). Moreover, return a generator 
matrix constructed in a recursive way from the Plotkin and BQPlotkin constructions 
defined in Section 2.3 of the manual. 
}
	requirege	 m,  2;
	requirerange delta,  1, (m+1) div 2;
       
       _, G := ExtendedPerfectCodeZ4(delta,m);
	return PAutHadamardCodeZ4(delta,m), G;
end intrinsic;

/*****************************************************************************/
/******************************************************************************
** PAutExtendedPerfectCodeZ4Order function
******************************************************************************/

intrinsic PAutExtendedPerfectCodeZ4Order(delta::RngIntElt, m::RngIntElt) 
                                                               -> RngIntElt
{
	Given an integer m >= 2 and an integer delta such that 1 <= delta <= 
floor((m + 1)/2), return the cardinal of the permutation group G of an 
extended perfect code over Z4 of length 2^(m-1), such that its dual code is of 
type 2^gamma 4^delta, where gamma = m + 1 - 2delta. The group G contains all 
permutation-action permutations which preserve the code.
}
	requirege	 m,  2;
	requirerange delta,  1, (m+1) div 2;
	
	return PAutHadamardCodeZ4Order(delta,m);
end intrinsic;

/*****************************************************************************/
/******************************************************************************
** PermutationGroupExtendedPerfectCodeZ4Order function
******************************************************************************/

intrinsic PermutationGroupExtendedPerfectCodeZ4Order(delta::RngIntElt, 
                                                        m::RngIntElt) -> RngIntElt
{
	Given an integer m >= 2 and an integer delta such that 1 <= delta <= 
floor((m + 1)/2), return the cardinal of the permutation group G of an 
extended perfect code over Z4 of length 2^(m-1), such that its dual code is of 
type 2^gamma 4^delta, where gamma = m + 1 - 2delta. The group G contains all 
permutation-action permutations which preserve the code.
}
	requirege	 m,  2;
	requirerange delta,  1, (m+1) div 2;
	
	return PAutHadamardCodeZ4Order(delta,m);
end intrinsic;

/*****************************************************************************/

/*****************************************************************************/
/* End:   Functions from version 2.0 included in MAGMA version 2.22          */
/*        (new functions have been added)                                    */
/*****************************************************************************/

/*****************************************************************************/
/* Begin: Functions from version 2.1                                         */
/*        (new functions have been added)                                    */
/*****************************************************************************/

///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
///////                 STANDARD FORM AND DUAL CODE                     ///////
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////

/****************************************************************/
/*                                                              */  
/* Function name: DiagonalizeDeltaMatrix                        */
/* Parameters: M, delta                                         */
/* Function description: Given a generator matrix M of a code   */
/*   over Z4 of type 2^gamma 4^delta having gamma+delta rows,   */
/*   and the integer number delta, return a new permutation-    */
/*   equivalent matrix such that it contains the identity       */
/*   matrix in the last delta coordinates, and the permutation  */
/*   used to obtain the new matrix.                             */
/* Output parameters: M, P                                      */
/*                                                              */
/****************************************************************/
function DiagonalizeDeltaMatrix(M, delta)
    ncols := Ncols(M);
    mrows := Nrows(M);
    nc := ncols;
    mc := mrows;
    colsSym := Sym(ncols);
    P := colsSym!1;

    for j := ncols to ncols - delta + 1 by -1 do
        if (IsZero(M[mc][nc])) or (M[mc][nc] eq 2) then
            m2 := mc;
            while (m2 gt mrows - delta) and ((IsZero(M[m2][nc])) or (M[m2][nc] eq 2)) do
     	        m2 := m2 - 1;
            end while;
            if (m2 gt mrows - delta) then
	            SwapRows(~M, mc, m2);
            else
	            n2 := nc;
                while ((IsZero(M[mc][n2])) or (M[mc][n2] eq 2)) and (n2 gt 0) do
		            n2 := n2 - 1;
	            end while;
	            if (n2 gt 0) and (n2 ne nc) then
		            SwapColumns(~M, nc, n2);
					P := P*colsSym!(nc, n2);
                end if;
            end if;
        end if;

        if (M[mc][nc] eq 3) then
	        M[mc] := -M[mc];
        end if;
        for i := mc - 1 to 1 by -1 do
            if (not IsZero(M[i][nc])) then
   	            M[i] := M[i] - M[mc]*M[i][nc];
            end if;
        end for;
        for i := mc + 1 to mrows do
            if (not IsZero(M[i][nc])) then
	            M[i] := M[i] - M[mc]*M[i][nc];
            end if;
        end for;

        mc := mc - 1;
        nc := nc - 1;
    end for;
    
    return M, P;
end function;

/****************************************************************/
/*                                                              */  
/* Function name: DiagonalizeGammaMatrix                        */
/* Parameters: M, gamma, delta                                  */
/* Function description: Given a generator matrix M of a code   */
/*   over Z4 of type 2^gamma 4^delta having gamma+delta rows    */
/*   and the identity matrix of size delta in the last delta    */
/*   coordinates, and the integer numbers gamma and delta,      */
/*   return a new permutation-equivalent matrix such that it    */
/*   contains the identity matrix in the [n-delta-gamma+1,...,  */
/*   n-delta] coordinate possitions, and the permutation used   */
/*   to obtain the new matrix.                                  */
/* Output parameters: M, P                                      */
/*                                                              */
/****************************************************************/
function DiagonalizeGammaMatrix(M, gamma, delta)
    ncols := Ncols(M);
    mrows := Nrows(M);
    nc := ncols - delta;
    mc := mrows - delta;
    colsSym := Sym(ncols);
    P := colsSym!1;

    for j := nc to nc - gamma + 1 by -1 do
        if (IsZero(M[mc][nc])) then
            m2 := mc;
            while (m2 gt 0) and (IsZero(M[m2][nc])) do
     	        m2 := m2 - 1;
            end while;
            if (not IsZero(m2)) then
	            SwapRows(~M, mc, m2);
            else
	            n2 := nc;
                while (IsZero(M[mc][n2])) and (n2 gt 0) do
		            n2 := n2 - 1;
	            end while;
	            if (n2 gt 0) and (n2 ne nc) then
		            SwapColumns(~M, nc, n2);
					P := P*colsSym!(nc, n2);
                end if;
            end if;
        end if;

        for i := mc - 1 to 1 by -1 do
            if (not IsZero(M[i][nc])) then
   	            M[i] := M[i] - M[mc];
            end if;
        end for;
        for i := mc + 1 to gamma do
            if (not IsZero(M[i][nc])) then
	            M[i] := M[i] - M[mc];
            end if;
        end for;
        for i := gamma+1 to mrows do
            if (not IsZero(M[i][nc])) and (not IsOne(M[i][nc])) then
	            M[i] := M[i] - M[mc];
            end if;
        end for;

        mc := mc - 1;
        nc := nc - 1;        
    end for;
    
    return M, P;
end function;

/****************************************************************/
/*                                                              */  
/* Function name: StandardFormInfoInverted                      */
/* Parameters: C                                                */
/* Function description: Given a code C over Z4, return a       */
/*   generator matrix of the permutation-equivalent code S in   */
/*   standard form, together with the permutation of coordinates*/
/*   used to define the corresponding isomorphism from C onto S.*/
/*   This function is called from StandardFormInverted(C).      */
/*   The generator matrix is of the form  [2C' 2Ik2  0 ]        */
/*                                        [ B'  A'  Ik1],       */
/*   where Ik1 and Ik2 are the k1 x k1 and k2 x k2 identity     */
/*   matrices, respectively, A' and C' are Z2-matrices, and B'  */
/*   is a Z4-matrix, so it has the rows and columns in inverted */
/*   order compared to the matrix given by the function         */
/*   StandardFormInfo(C).                                       */ 
/* Input parameters description:                                */
/*   - C : Code over Z4                                         */
/* Output parameters description:                               */
/*   - Generator matrix of S                                    */
/*   - Permutation of coordinates p such that C^p eq S          */
/*                                                              */
/* Signature: (<CodeLinRng> C) -> ModMatRngElt, GrpPermElt      */
/*                                                              */
/****************************************************************/
intrinsic StandardFormInfoInverted(C::CodeLinRng) -> ModMatRngElt, GrpPermElt
{
Internal function: 
Given a code C over Z4, return a generator matrix of the permutation-equivalent 
code S in standard form, together with the permutation of coordinates used to 
define the corresponding isomorphism from C onto S. This function is called from 
StandardFormInverted(C). The generator matrix is of the form  [[2C', 2Ik2, 0],     
[B', A', Ik1]], where Ik1 and Ik2 are the k1 x k1 and k2 x k2 identity 
matrices, respectively, A' and C' are Z2-matrices, and B' is a Z4-matrix, so 
it has the rows and columns in inverted order compared to the matrix given by 
the function StandardFormInfo(C).
}
    require (BaseRing(C) eq Z4): "Code must be over Z4";

    M, gamma, delta := MinRowsGeneratorMatrix(C);
    
    if IsZero(delta) then 
        Md := M;
        Pd := Sym(Length(C))!1;
    else 
        Md, Pd := DiagonalizeDeltaMatrix(M, delta);        
    end if; 
    
    if IsZero(gamma) then  
        Mdg := Md;
        Pg := Sym(Length(C))!1;
    else
        Mdg, Pg := DiagonalizeGammaMatrix(Md, gamma, delta);        
    end if; 
        
    p := Pd * Pg;
	return Mdg, p;

end intrinsic;

/****************************************************************/
/*                                                              */  
/* Function name: StandardFormInverted                          */
/* Parameters: C                                                */
/* Function description: Given a code C over Z4, return a       */
/*   permutation-equivalent code S in standard form, together   */
/*   with the corresponding isomorphism from C onto S. The      */
/*   code S is generated by a matrix in standard form having    */
/*   the rows and columns in inverted order compared to the one */
/*   given by the function StandardFormInfo(C), that is, the    */
/*   matrix [2C' 2Ik2  0 ] instead of the matrix [Ik1  A    B ] */ 
/*          [ B'  A'  Ik1]                       [0   2Ik2  2C],*/
/*   Ik1 and Ik2 are the k1 x k1 and k2 x k2 identity matrices, */
/*   respectively, A, A', C and C' are Z2-matrices, and B and B'*/
/*   are Z4-matrices.                                           */               
/* Input parameters description:                                */
/*   - C : Code over Z4                                         */
/* Output parameters description:                               */
/*   - Code over Z4 in standard form                            */
/*   - Isomorphism from C onto S                                */
/*                                                              */
/* Signature: (<CodeLinRng> C) -> CodeLinRng, Map               */
/*                                                              */
/****************************************************************/
intrinsic StandardFormInverted(C::CodeLinRng) -> CodeLinRng, Map
{ 
Internal function:
Given a code C over Z4, return a permutation-equivalent code S in standard form, 
together with the corresponding isomorphism from C onto S. The code S is generated 
by a matrix in standard form having the rows and columns in inverted order 
compared to the one given by the function StandardFormInfo(C), that is, the 
matrix [[2C', 2Ik2, 0], [B', A', Ik1]] instead of the matrix [[Ik1, A, B],  
[0, 2Ik2, 2C]], Ik1 and Ik2 are the k1 x k1 and k2 x k2 identity matrices, 
respectively, A, A', C and C' are Z2-matrices, and B and B' are Z4-matrices.
}
    require (BaseRing(C) eq Z4): "Code must be over Z4";

    Gs, p := StandardFormInfoInverted(C);
	S := LinearCode(Gs);

	f := map<C -> S | v :-> v^p, w :-> w^(p^-1)>;

	return S, f;

end intrinsic;

/****************************************************************/
/*                                                              */  
/* Function name: StandardFormDualInfo                          */
/* Parameters: C                                                */
/* Function description: Given a code C over Z4 of lenght n,    */
/*   return a generator matrix of the dual of a permutation-    */
/*   equivalent code S in standard form, togehter with the      */
/*   permutation of coordinates used to define the corresponding*/
/*   isomorphism from the dual of C onto the dual of S.         */
/*   This function is called from StandardFormDual(C).          */
/*   The matrix is of the form  [-(AC+B)^t  C^t   I_(n-k1-k2)]  */
/*                              [  2A^t     2Ik2     0       ], */
/*   where Ik1 and Ik2 are the k1 x k1 and k2 x k2 identity     */
/*   matrices, respectively, A and C are Z2-matrices, and B is  */
/*   Z4-matrix.                                                 */     
/* Input parameters description:                                */
/*   - C : Code over Z4                                         */
/* Output parameters description:                               */
/*   - Generator matrix of the dual of S                        */
/*   - Permutation of coordinates that defines the isomorphism  */
/*    from the dual of C onto the dual of S                     */
/*                                                              */
/* Signature: (<CodeLinRng> C) -> ModMatRngElt, GrpPermElt      */
/*                                                              */
/****************************************************************/
intrinsic StandardFormDualInfo(C::CodeLinRng) -> ModMatRngElt, GrpPermElt
{
Internal function: 
Given a code C over Z4 of lenght n, return a generator matrix of the dual of a 
permutation-equivalent code S in standard form, togehter with the permutation 
of coordinates used to define the corresponding isomorphism from the dual of C 
onto the dual of S. This function is called from StandardFormDual(C). The matrix 
is of the form  [[-(AC+B)^t, C^t, I_(n-k1-k2)], [2A^t, 2Ik2, 0]], where Ik1 and 
Ik2 are the k1 x k1 and k2 x k2 identity matrices, respectively, A and C are 
Z2-matrices, and B is Z4-matrix. 
}
    require (BaseRing(C) eq Z4): "Code must be over Z4";
    
    Gs, _, _, p := StandardFormInfo(C);
    n := Length(C);
    delta, gamma := Z4Type(C);
    
    A := Submatrix(Gs, 1, delta+1, delta, gamma);
    B := Submatrix(Gs, 1, gamma+delta+1, delta, n-gamma-delta);
    C := Submatrix(Gs, delta+1, gamma+delta+1, gamma, n-gamma-delta);
    C := Parent(C) ! [Z!x div 2 : x in Eltseq(C)];
    
    Order4Rows := HorizontalJoin(<-Transpose(B+A*C), Transpose(C), 
                                  IdentityMatrix(Z4, n-gamma-delta)>);
    Order2Rows := HorizontalJoin(<2*Transpose(A), 2*IdentityMatrix(Z4,gamma), 
                                  ZeroMatrix(Z4, gamma, n-gamma-delta)>);
    dualGs := VerticalJoin(Order4Rows, Order2Rows); 
        
    return dualGs, p;
    
end intrinsic;

/****************************************************************/
/*                                                              */  
/* Function name: StandardFormDual                              */
/* Parameters: C                                                */
/* Function description: Given a code C over Z4 of lenght n,    */
/*   return the dual of a permutation-equivalent code S in      */
/*   standard form, together with the corresponding isomorphism */
/*   from the dual of C onto the dual of S. Since S is generated*/
/*   by a matrix of the form [[Ik1, A, B], [0, 2Ik2, 2C]], the  */
/*   dual of S is generated by the matrix                       */
/*   [[-(AC+B)^t, C^t, I_(n-k1-k2)], [2A^t, 2Ik2, 0]], where    */
/*   Ik1 and Ik2 are the k1 x k1 and k2 x k2 identity matrices, */
/*   respectively, A and C are Z2-matrices, and B is a Z4-matrix*/                     
/* Input parameters description:                                */
/*   - C : Code over Z4                                         */
/* Output parameters description:                               */
/*   - Dual code of S over Z4 in standard form                  */
/*   - Isomorphism from dual of C onto dual of S                */
/*                                                              */
/* Signature: (<CodeLinRng> C) -> CodeLinRng, Map               */
/*                                                              */
/****************************************************************/
intrinsic StandardFormDual(C::CodeLinRng) -> CodeLinRng, Map
{
Given a code C over Z4 of lenght n, return the dual of a permutation-equivalent 
code S in standard form, together with the corresponding isomorphism from the 
dual of C onto the dual of S. Since S is generated by a matrix of the form 
[[Ik1, A, B], [0, 2Ik2, 2C]], the dual of S is generated by the matrix                       */
[[-(AC+B)^t, C^t, I_(n-k1-k2)], [2A^t, 2Ik2, 0]], where Ik1 and Ik2 are the 
k1 x k1 and k2 x k2 identity matrices, respectively, A and C are Z2-matrices, 
and B is a Z4-matrix.
}
    require (BaseRing(C) eq Z4): "Code must be over Z4";
    
    dualGs, p := StandardFormDualInfo(C);   
    dualCs := LinearCode(dualGs);
    
    dualC := dualCs^(p^-1);
    f := map<dualC -> dualCs | v :-> v^p, w :-> w^(p^-1)>;
    
    return dualCs, f;
    
end intrinsic;

/****************************************************************/
/*                                                              */  
/* Function name: MinRowsParityCheckMatrix                      */
/* Parameters: C                                                */
/* Function description: A parity check matrix for the code C   */
/*   over Z4 of lenght n and type 2^gamma 4^delta, with the     */
/*   minimum number of rows, that is, with gamma rows of order  */
/*   two and n-gamma-delta rows of order four. This function    */
/*   should be faster for most codes over Z4 than the general   */
/*   function ParityCheckMatrix(C) for codes over finite rings. */
/*   Another parity check matrix for the code C can be obtained */
/*   as the generator matrix of the dual of C with the minimum  */
/*   number of rows, that is, as                                */
/*   MinRowsGeneratorMatrix(DualZ4(C)).                         */
/* Input parameters description:                                */
/*   - C : Code over Z4                                         */
/* Output parameters description:                               */
/*   - Generator matrix of C over Z4                            */
/*                                                              */
/* Signature: (<CodeLinRng> C) -> ModMatRngElt                  */
/*                                                              */
/****************************************************************/
intrinsic MinRowsParityCheckMatrix(C::CodeLinRng) -> ModMatRngElt 
{
A parity check matrix for the code C over Z4 of lenght n and type 2^gamma 4^delta, 
with the minimum number of rows, that is, with gamma rows of order two and 
n-gamma-delta rows of order four. This function should be faster for most codes 
over Z4 than the general function ParityCheckMatrix(C) for codes over finite rings. 
Another parity check matrix for the code C can be obtained as the generator matrix 
of the dual of C with the minimum number of rows, that is, as                                
MinRowsGeneratorMatrix(DualZ4(C)).  
}
    require (BaseRing(C) eq Z4): "Code must be over Z4";
    
    dualGs, p := StandardFormDualInfo(C);
    Hmin := dualGs^(p^-1); 
    _, gamma := Z4Type(C);
    numRows := NumberOfRows(Hmin);
    
    return VerticalJoin(RowSubmatrix(Hmin, numRows-gamma+1, gamma), 
                        RowSubmatrix(Hmin, numRows-gamma));	

end intrinsic;

/****************************************************************/
/*                                                              */  
/* Function name: DualZ4                                        */
/* Parameters: C                                                */
/* Function description: The dual D of the code C over Z4 of    */
/*   length n. The dual consists of all codewords in the        */
/*   Z4-space V=Z4^n which are orthogonal to all codewords of C.*/
/*   This function should be faster for most codes over Z4 than */
/*   the general function Dual(C) for codes over finite rings.  */
/* Input parameters description:                                */
/*   - C : Code over Z4                                         */
/* Output parameters description:                               */
/*   - Code D over Z4                                           */
/*                                                              */
/* Signature: (<CodeLinRng> C) -> CodeLinRng                    */
/*                                                              */
/****************************************************************/
intrinsic DualZ4(C::CodeLinRng) -> CodeLinRng
{
The dual D of the code C over Z4 of length n. The dual consists of all codewords 
in the Z4-space V=Z4^n which are orthogonal to all codewords of C. This function 
should be faster for most codes over Z4 than the general function Dual(C) for 
codes over finite rings. 
}
    require (BaseRing(C) eq Z4): "Code must be over Z4";
    
    Gs, p := StandardFormInfoInverted(C);
    n := Length(C);
    delta, gamma := Z4Type(C);
    
    R := Submatrix(Gs, gamma+1, n-gamma-delta+1, delta, gamma); 
    S := Submatrix(Gs, gamma+1, 1, delta, n-gamma-delta);
    T := Submatrix(Gs, 1, 1, gamma, n-gamma-delta);
    T := Parent(T) ! [Z!x div 2 : x in Eltseq(T)];
    
    Order2Rows := HorizontalJoin(<ZeroMatrix(Z4, gamma, n-gamma-delta), 
                                   2*IdentityMatrix(Z4,gamma), 2*Transpose(R)>);
    Order4Rows := HorizontalJoin(<IdentityMatrix(Z4, n-gamma-delta), 
                                  Transpose(T), -Transpose(S+R*T)>);
    dualGs := VerticalJoin(Order2Rows, Order4Rows); 
    
    return LinearCode(dualGs^(p^(-1)));
    
end intrinsic;

// This function is quite slower than the previous one for Hadamard codes over Z4
//intrinsic DualZ4(C::CodeLinRng) -> CodeLinRng
//{
//}
//    require (BaseRing(C) eq Z4): "Code must be over Z4";
//        
//    dualGs, p := StandardFormDualInfo(C);
//
//    return LinearCode(dualGs^(p^-1));
//    
//end intrinsic;

///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
///////              PERMUTATION GROUPS                                 ///////
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////

/****************************************************************/
/*                                                              */  
/* Function name: PermutationGroup                              */
/* Parameters: C                                                */
/* Function description: The permutation group G of the linear  */
/*   code C of length n over the ring R, where G is the group   */
/*   of all permutation-action permutations which preserve the  */
/*   code. Thus only permutation of coordinates is allowed, and */
/*   the degree of G is always n.                               */
/* Input parameters description:                                */
/*   - C : Code over the a R                                    */
/* Output parameters description:                               */
/*   - Group of permutation                                     */
/*                                                              */
/* Signature: (<CodeLinRng> C) -> GrpPerm                       */
/*                                                              */
/* Comments: It works only for small codes, since it generates  */
/*             all codewords to add them in a matrix, and then  */
/*             uses the AutomorphismGroup function for matrices */
/*             considering only column permutations             */  
/*                                                              */
/****************************************************************/
intrinsic PermutationGroup(C::CodeLinRng) -> GrpPerm
{
The permutation group G of the linear code C of length n over the ring R, where G
is the group of all permutation-action permutations which preserve the code. 
Thus only permutation of coordinates is allowed, and the degree of G is always n.
}   
    n := Length(C);
    numCodewords := #C; 
    M := Matrix(Setseq(Set(C)));
    PAutM := AutomorphismGroup(M);
    gensPAutM := Generators(PAutM);
    
    gensPAutC := [Sym(n)![ x-numCodewords : x in Eltseq(p)[numCodewords + 1 .. 
                                          numCodewords + n] ] : p in gensPAutM ];
    return sub<Sym(n) | gensPAutC >;
    
end intrinsic;

/****************************************************************/
/*                                                              */  
/* Function name: PermutationGroupGrayMapImage                  */
/* Parameters: C                                                */
/* Function description: Given a code C over Z4 of length n,    */
/*   return the permutation group Gbin of Cbin = Phi(C), where  */
/*   Gbin is the group of all permutation-action permutations   */
/*   which preserve the binary code Cbin of length 2n and Phi   */
/*   is the Gray map. Thus only permutation of coordinates is   */
/*   allowed, and the degree of Gbin is always 2n.              */
/* Input parameters description:                                */
/*   - C : Code over Z4                                         */
/* Output parameters description:                               */
/*   - Group of permutation                                     */
/*                                                              */
/* Signature: (<CodeLinRng> C) -> GrpPerm                       */
/*                                                              */
/* Comments: It works only for small codes, since it generates  */
/*             all codewords to add them in a matrix, and then  */
/*             uses the AutomorphismGroup function for matrices */
/*             considering only column permutations             */  
/*                                                              */
/****************************************************************/
intrinsic PermutationGroupGrayMapImage(C::CodeLinRng) -> GrpPerm
{
Given a code C over Z4 of length n, return the permutation group Gbin of Cbin = Phi(C), 
where Gbin is the group of all permutation-action permutations which preserve the 
binary code Cbin of length 2n and Phi is the Gray map. 
Thus only permutation of coordinates is allowed, and the degree of Gbin is always 2n.
}
    require (BaseRing(C) eq Z4): "Code must be over Z4";
   
    n := 2*Length(C);
    numCodewords := #C; 
    M := Matrix(GrayMapImage(C));
    PAutM := AutomorphismGroup(M);
    gensPAutM := Generators(PAutM);
    
    gensPAutC := [Sym(n)![ x-numCodewords : x in Eltseq(p)[numCodewords + 1 .. 
                                          numCodewords + n] ] : p in gensPAutM ];
    return sub<Sym(n) | gensPAutC >;
    
end intrinsic;

/*****************************************************************************/
/* End:   Functions from version 2.1                                         */
/*        (new functions have been added)                                    */
/*****************************************************************************/
