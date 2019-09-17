freeze;

/* original implementation by Eamonn O'Brien 1998.
   Revision by Michael Vaughan-Lee Dec 2011 to use types of elements to count.
   Further major revision of main section of code by MRVL in March 2017.

   The "wrapper" consisting of the first three functions below and the
   last 100 lines is unchanged from 2011, but the rest is essentially new.
   There are three main changes to the code.

   (1) Use ExteriorSquare(alpha) to get the action of alpha in GL(d,p) on
       the p-Multiplicator, rather than group theoretic machinery.
       Adjustments are needed for p=2.
   (2) The ClassLength of alpha depends only on the type of alpha, so
       only compute it once for each type.
   (3) Eamonn's code stored list of irreducible polynomials, and built
       up conjugacy classes from the lists. For d=7,8 and p=11,13 these
       lists are enormous.  To save space I look at one characteristic
       polynomial at a time (without storing a list of char polys),
       and generate the possible Rational Forms for each char poly.
       For reasons I don't understand, this also saves time.

    ClassRep and Backtrack from backtrack.m are no longer needed,
    and auto.m is no longer needed.

    I use the same ClassLength function from backtrack.m as before.
    This function has as input a list P of polynomials and a list gamma
    of partitions. The function only uses the degrees of the polynomials
    in P, and this list of degrees together with gamma is equivalent
    to type.  It would be cleaner to rewrite the function to take
    type as input, but probably not worth the effort. 
    
*/

//import "backtrack.m": ClassLength, ClassRep, BackTrack;
import "backtrack.m": ClassLength;

declare verbose ClassTwo, 1;

FACTOR := 10000;

IsValidInput := function (p, d)

   if not IsPrime (p) then
      error "ClassTwo: Argument 1 (", p ,") is not a prime";
   end if;

   if d lt 1 then 
      error "ClassTwo: Argument 2 (", d ,") must be at least 1";
   end if;

   return true;

end function;

/* rank of p-multiplicator */

RankOfMultiplicator := function (d, p, Exponent)

   /* rank of p-multiplicator */
   if Exponent eq true then 
      m := p eq 2 select 0 else Binomial (d, 2);  
   else 
      m := Binomial (d, 2) + d; 
   end if;

   return m;

end function;

/* MRV-L's function to find the type of a matrix */
FindType := function(g)
   f :=PrimaryInvariantFactors(g);
   pfs := {f[i][1] : i in [1..#f]};
   type :={* *};
   for pf in pfs do
     party := [];
     for i in [1..#f] do
       if f[i][1] ne pf then continue; end if;
       Append (~party, f[i][2]);
     end for;
     Sort (~party);
     Insert (~party, 1, Degree(pf));
     Include (~type, party);
   end for;
   return type;
end function;

getseqs:=function(s)
//if s = [m1,m2,...,mn] get all sequences [i1,i2,...,in] with 1 <= i_j <= m_j for all j
seqs:={[i]:i in [1..s[1]]};
if #s eq 1 then return seqs; end if;
for j in [2..#s] do
  temp:={};
  seq2:={[i]: i in [1..s[j]]};
  for a in seqs do
  for b in seq2 do
    Include(~temp,a cat b);
  end for;
  end for;
  seqs:=temp;
end for;
return seqs;
end function;


/* Count p-class 2 d-generator groups whose step size is in Step; 
   if Exponent is true, count those groups which have exponent p */

BasicCount := function (d, p, Step, Nmr, m: Exponent := false) 

   //Arrays to store the types that arise, the number of times each
   //type arises, and the NumberOfFixedSpace information for each type
   types:={@ @};
   numtypes:=[];
   numfixspaces:=[];
   //Arrays to store the types of matrices in GL(d,p), 
   //and the ClassLength for each type
   dtypes:={@ @};
   lendtypes:=[];

   /* if prime is 2 and exponent enforced, then H = G */
   if p eq 2 and Exponent then return []; end if;

   gl := GL (d, p);
   order := OrderGL (d, p);
   Agl:=GL((d*(d+1)) div 2,p);
   F := BaseRing (gl);
   Vd:=VectorSpace(F,d);
   Polys<x>:=PolynomialRing(F);
   M0:=ExteriorSquare(CompanionMatrix(x-1));  //Empty matrix!

   t := Cputime ();

   /* required partitions */
   Parts := [Partitions (delta) : delta in [1..d]];
   Reps := []; NmrElts := 0; NmrReps := 0;
   /* I don't think Reps does anything.  did it ever? */

   for v in Vd do
   /* Consider all possible characteristic polynomials for elements
      in GL(d,p), one at a time. */
      if v[1] eq 0 then continue; end if;
      g:=x^d;
      for i in [1..d] do
        g:=g+v[i]*x^(i-1);
      end for;
      ff:=Factorization(g);
      n:=#ff;
      P:=[ff[i][1]:i in [1..n]];
      degs:=[ff[i][2]:i in [1..n]];
      ss:=[#Parts[degs[i]]:i in [1..n]];
      //we need to generate all sequences [i1,i2,...,in] with 1<=i_j<=degs[j]
      seqs:=getseqs(ss);
      /* Generate all possible Rational Forms with char poly g. */
      for seq in seqs do

         alpha:=M0;  //Start off with the empty matrix, and add on companion matrices
         gamma:=[]; //We need gamma as input for ClassLength function
         type :={* *};
         for i in [1..n] do
            pol:=P[i];
            party:=Parts[degs[i]][seq[i]];
            Include(~type,Insert(party,1,Degree(pol)));
            gamma[i]:=DualPartition(party);
            for j in [1..#party] do
               alpha:=DirectSum(alpha,CompanionMatrix(pol^party[j]));
            end for;
         end for;
         alpha:=gl!alpha;
         NmrReps +:= 1;
         if NmrReps mod FACTOR eq 0 then 
             vprintf ClassTwo: "Processing rep %o\n", NmrReps;
         end if;
         /* get ClassLength(alpha) */
         tti := Position (dtypes,type);
         if tti ne 0 then
            len:=lendtypes[tti];
         else;
            len := order div ClassLength (P, p, gamma);
            Include(~dtypes,type);
            Append(~lendtypes,len);
         end if;
         NmrElts +:= len;
         /* extend automorphism of G to act on the p-covering group H */
         A:=ExteriorSquare(alpha);
         if not Exponent then 
            A:=DirectSum(alpha,A);
            if p eq 2 then
               for i in [1..d] do
                  col:=d;
                  for j in [2..d] do
                  for k in [1..j-1] do
                     col:=col+1;
                     A[i][col]:=alpha[i][j]*alpha[i][k];
                  end for;
                  end for;
               end for;
            end if;
            A:=Agl!A;
         end if;
         tt := FindType (A);
         tti := Position (types, tt);
         if tti ne 0 then 
            numtypes[tti] +:= len;
         else 
            Include(~types, tt);
            Append(~numtypes, len);
            temp := [];
            for s in Step do
               // printf "s = %o m = %o\n", s, m;
               temp[s] := NumberOfFixedSpaces (A, s);
            end for;
            Append(~numfixspaces, temp);
         end if;

      end for;
   end for;

   assert NmrElts eq order;

   for i in [1..#types] do
      len := numtypes[i];
      temp := numfixspaces[i];
      for s in Step do
         Nmr[s]  +:= len*temp[s];
         Nmr[m-s] := Nmr[s];
      end for;
   end for;

   for i in [1..#Nmr] do
      if IsDefined (Nmr, i) then Nmr[i] := Nmr[i] div order; end if;
   end for;
   
   return Nmr;

end function;

intrinsic ClassTwo (p::RngIntElt, d::RngIntElt, s::RngIntElt :
                      Exponent := false) -> RngIntElt
{Count all p-class 2 d-generator groups of order p^(d + s); 
 if Exponent is true, count those groups which have exponent p}

   valid := IsValidInput (p, d);

   if s le 0 then return 0; end if;

   /* rank of p-multiplicator */
   m := RankOfMultiplicator (d, p, Exponent);
   if m eq 0 then return 0; end if;

   if s eq m then return 1; end if;

   if s gt m then return 0; end if;

   if (s gt m div 2) then s := m - s; end if;

   Step := [s]; Nmr := []; Nmr[s] := 0; 
   vprint ClassTwo: "Step is ", Step;

   return BasicCount (d, p, Step, Nmr, m: Exponent := Exponent)[s];

end intrinsic;

intrinsic ClassTwo (p::RngIntElt, d::RngIntElt, Step:: SeqEnum:
                    Exponent := false) -> SeqEnum
{Count all p-class 2 d-generator groups of order p^(d + s) for s in Step; 
 if Exponent is true, count those groups which have exponent p}

   valid := IsValidInput (p, d);

   /* rank of p-multiplicator */
   m := RankOfMultiplicator (d, p, Exponent);
   if m eq 0 then return []; end if;

   /* what step sizes do we consider? */
   Sort (~Step);

   order := OrderGL (d, p);
   Nmr := []; if m in Step then Nmr[m] := order; end if;
   Step := [x : x in Step | x gt 0 and x lt m];
   i := 1;
   while (i le #Step) do
      x := Step[i]; y := m - x;
      if x in Step and y in Step and x ne y then
         Exclude (~Step, y);
      end if;
      i +:= 1;
   end while;
   for i in Step do Nmr[i] := 0; end for;

   vprint ClassTwo: "Step sizes to consider: ", Step;
   if Step eq [] then return []; end if;

   return BasicCount (d, p, Step, Nmr, m: Exponent := Exponent);

end intrinsic;

intrinsic ClassTwo (p::RngIntElt, d::RngIntElt: Exponent := false) -> SeqEnum
{Count all p-class 2 d-generator groups; if Exponent is true, 
 count those groups which have exponent p}

   valid := IsValidInput (p, d);

   /* rank of p-multiplicator */
   m := RankOfMultiplicator (d, p, Exponent);
   if m eq 0 then return []; end if;

   order := OrderGL (d, p);
   Nmr := []; Nmr[m] := order; 
   Step := [1..m div 2];
   for i in [1..m - 1] do Nmr[i] := 0; end for;
   vprint ClassTwo: "Step sizes to consider is ", Step;

   return BasicCount (d, p, Step, Nmr, m: Exponent := Exponent);

end intrinsic;

