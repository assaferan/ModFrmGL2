freeze;

//The code in this file was written by Daniel Rogers, PhD student of Derek Holt

spininductplus:=function(n,q:func:=false,largeff:=false, aut:=false);
/* Input: an integer n>2 and a prime power q
 * Return: generators for the half-spin representation of 2.SO^+_2n(q)
 * For spin representation, interchange the last two generators and
 * direct sum the resulting matrices
 * largeff used for constructing twisted representations, where we need to
 * make FF larger
 */

	if n le 2 then;
		error "Require n > 2";
	end if;

	if aut eq true and (q eq 0 or func eq true) then;
		error "aut=true only works for nonzero q and func := false";
	end if;

	if q eq 0 then;
		F:=Rationals();
		if largeff then;
			FF<t,u,del,gam,delbar,gambar>:=PolynomialRing(F,6);
		else;
			FF<t,u>:=PolynomialRing(F,2);	
		end if;
		G:=GL(2^(n-1),FF);
		M:=MatrixAlgebra(FF,2^(n-1));
		B:=[t];
	else;
		M:=MatrixAlgebra(GF(q),2^(n-1));
		G:=GL(2^(n-1),q);
		FF := GF(q);
		B:=Basis(FF);
	end if;

	E:=function(i,j);
		out:=Zero(M);
		out[i][j]:=1;
		return out;
	end function;



	if n eq 3 then;
		alpha:=[];
		alpha[1]:=function(t) ; return Identity(M) + t*E(3,2);
		end function;
		alpha[2]:=function(t) ; return Identity(M) - t*E(2,1);
		end function;
		alpha[3]:=function(t) ; return Identity(M) + t*E(4,3);
		end function;
		
		alpham:=[];
		for i in [1..3] do;
			alpham[i] := function(t); return Transpose(alpha[i](t));
				 end function;
		end for;

		if func eq true then;
			return alpha,alpham,_,_;
		else;
			W:=[]; Wm:=[];
			for i in [1..3] do;
				for b in B do;
					Append(~W,alpha[i](b));
					Append(~Wm,alpham[i](b));
				end for;
			end for;
			if aut eq false then;
				return W,Wm,_,_;
                        elif IsEven(q) then;
				return W,Wm,[],[];
			else;
				nu := PrimitiveElement(GF(q));
				dg:=DiagonalMatrix(GF(q),[nu,1,1,1]);
				d:=DiagonalMatrix(GF(q),[nu,nu,nu,1]);
				return W,Wm,[dg],[d];
			end if;
		end if;
	end if;

	beta,betam:=$$(n-1,q:func:=true,largeff:=largeff);

	alpha:=[];
	alpham:=[];


	alpha[1]:= function(t);
		a:=Identity(M);
		for theta in [1..2^(n-3)] do;
			a[2^(n-2)+theta, 2^(n-3) + theta] := t;
		end for;
		return a;
	end function;

	alpham[1]:=function(t); return Transpose(alpha[1](t)); end function;
	
	for i in [2..n-2] do;
		a:=beta[i-1];
		alpha[i] := function(t); return DirectSum(a(t),(a)(t));
			end function;
		alpham[i] := function(t); return Transpose(alpha[i](t));
			end function;	
	end for;

	alpha[n-1] := function(t); return DirectSum(beta[n-2](t),beta[n-1](-t));
			 end function;
	alpham[n-1] := function(t); return Transpose(alpha[n-1](t)); 
			end function;
	alpha[n] := function(t); return DirectSum(beta[n-1](t),beta[n-2](-t)); 
			end function;
	alpham[n] := function(t); return Transpose(alpha[n](t)); end function;

	if func eq true then;
		return alpha,alpham,_,_;
	else;
		W:=[]; Wm:=[];
		for i in [1..#alpha] do;
			for b in B do;
				Append(~W,alpha[i](b));
				Append(~Wm,alpham[i](b));
			end for;
		end for;
		if aut eq false then;
			return W,Wm,_,_;
                elif IsEven(q) then;
			return W,Wm,[],[];
		else;
			nu:=PrimitiveElement(GF(q));
			d:=DiagonalMatrix(GF(q),[1,1,1,nu^-1]); 
			dg:=DiagonalMatrix(GF(q),[1,nu^-1,nu^-1,nu^-1]);
			for i in [1..n-3] do;
				dn:= DirectSum(d,dg);
				dgn:=DirectSum(dg,nu^-1*d);
				d:=dn; dg:=dgn;
			end for;
			if IsOdd(n) then;
			// Half-spin representation preserves no form
			// Rescale d to have determinant 1 or -1 if possible.
				isit,scal := IsPower(Determinant(d),2^(n-1));
				if isit then;
					d := d*scal^-1;
				else;
					isit2,scal2 :=
					IsPower(Determinant(-d),2^(n-1));
					if isit2 then;
						d := d*scal2^-1;
					end if;
				end if;
				return W,Wm,[d],[dg];
			else;
	// We also need to construct the delta' automorphism separately here.
				dp:=DiagonalMatrix(GF(q),[1,nu,nu,1]);
				dgp:=DiagonalMatrix(GF(q),[1,nu^-1,nu^-1,1]);
				for i in [1..n-3] do;
					dpn := DirectSum(dp,nu*dgp);
					dgpn:= DirectSum(dgp,nu^-1*dp);
					dp := dpn; dgp := dgpn;
				end for;
				if  (n mod 4) eq 0 then;
	// Half-spin representation preserves an orthogonal plus type form
	// For this computation, we use dg instead of d to induce the delta
	// automorphism
	// dg can be rescaled to preserve the form and have determinant 1
					dg := dg * nu^(n div 4);
		//dgp lies in the conformal group, so we do not rescale it.
					return W,Wm,[dg,dgp],[d,dp];
				else;
		//Half-spin representation preserves a symplectic form
		//d can be rescaled to preserve the form and have determinant 1;
					d := d*nu^((n-2) div 4);
		// dp lies in the conformal group, so we do not rescale it.
					return W,Wm,[dg,dgp], [d,dp];	
				end if;
			end if;
		end if;
	end if;
end function;

spininductcirc:=function(n,q :func:=false, aut:=false);
	if aut eq true and (q eq 0 or func eq true) then;
		error "aut=true only works for nonzero q and func := false";
	end if;

	Wb,Wbm:=spininductplus(n+1,q:func:=true);
	e:=#Basis(GF(q));

	M:=MatrixAlgebra(GF(q),2^n);
	
	W:=[];Wm:=[];

	for j in [1..n-1] do;
		Append(~W,Wb[j]);
		Append(~Wm,Wbm[j]);			
	end for;
	f := function(b); return Wb[n](b) + Wb[n+1](b) - Identity(M);
		end function;
	Append(~W,f);
	f := function(b); return Wbm[n](b) + Wbm[n+1](b) - Identity(M);
		end function;
	Append(~Wm,f);


	if func then;
		return W,Wm,_;
	elif func eq false then;
		out:=[]; outm:=[];
		B := Basis(GF(q));
		for i in [1..#W] do;
			for b in B do;
				Append(~out,W[i](b));
				Append(~outm,Wm[i](b));
			end for;
		end for;
		if aut eq false then;
			return out, outm, _;
		elif IsEven(q) then
                        return out, outm, [];
                else;
			nu:=PrimitiveElement(GF(q));
			d:=DiagonalMatrix(GF(q),
                      [1: i in [1..2^(n-1)]] cat [nu^-1 : i in [1..2^(n-1)]]);
			return out, outm, [d];
		end if;
	end if;
end function;

spininductminus:=function(n,q:func:=false,aut:=false);
/* Input: an integer n>2 and a prime power q
 * Return: sequences W and W2, generators for the half-spin representation
 *  of 2.SO^+_2n(q)
 * aut:=true returns a third sequence of generators for outer automorphisms
 * realised by matrices
 * This sequence will have length either 1 or 2.
 * If it has length 2, the first entry lies in the same quasisimple classical
 * group as the spin group.
 * The second, together with the first, generates the full automorphism group.
 * If it has length 1, the entry generates the full automorphism group,
 * and lies in the classical group if this is possible.
 */
	if aut eq true and (q eq 0 or func eq true) then;
		error "aut=true only works for nonzero q and func := false";
	end if;

	X,Xm:=spininductplus(n,q^2:func:=true,largeff:=true);

	if q eq 0 then;
		FF<t,u,del,gam,delbar,gambar>:=BaseRing(X[1](1));
		bar:=hom<FF -> FF | [t,u,delbar,gambar,del,gam]>;
	end if;	

	M := Parent(X[1](1));

	Y := []; Ym:=[];
	for i in [1..n-2] do;
		Y[i] := function(t); return M!X[i](t); end function;
		Ym[i] := function(t); return M!Xm[i](t); end function;
	end for;

	if q ne 0 then;	
		Y[n-1] := function(u); return X[n-1](u) * X[n](u^q);
			end function;
		Ym[n-1] := function(u); return Xm[n-1](u^q) * Xm[n](u);
			end function;
	else;
		Y[n-1] := function(u); return M!X[n-1](u) * M!X[n](bar(u));
			end function;
		Ym[n-1] := function(u); return M!Xm[n-1](bar(u)) * M!Xm[n](u);
			end function;
	end if;


	if q ne 0 then;
		for i in [1..n-3] do;
			Y[n-1+i] := function(t);
			 return Y[i](t)^-1*Y[i+1](1)^-1 * Y[i](t) * Y[i+1](1);
			end function;
			Ym[n-1+i] := function(t);
				return Transpose(Y[n-1+i](t^q));
			end function;
		end for;
		Y[2*n-2] := function(t);
			return Ym[n-1](1) * Y[n-1](-1) * Y[n-2] (-t) *
				Y[n-1](1) * Ym[n-1](-1);
			end function;
		Ym[2*n-2] := function(t); return Transpose(Y[2*n-2](t^q));
			end function;
		Y[2*n-3] := function(t);
			return Y[2*n-2](t^(q+1)) * Y[n-2](1)^-1 *
			    	Y[n-1](t)^-1 * Y[n-2](1) * Y[n-1](t);
			end function;
		Ym[2*n-3] := function(t); return Transpose(Y[2*n-3](t^q));
			end function;
	else;
		for i in [1..n-3] do;
			Y[n-1+i] := function(t);
			return Y[i](t)^-1*Y[i+1](1)^-1 * Y[i](t) * Y[i+1](1);
			end function;
			Ym[n-1+i] := function(t);
			return Transpose(Y[n-1+i](bar(t)));
			end function;
		end for;
		Y[2*n-2] := function(t);
			return Ym[n-1](1) * Y[n-1](-1) * Y[n-2] (-t) *
				Y[n-1](1) * Ym[n-1](-1);
			end function;
		Ym[2*n-2] := function(t); return Transpose(Y[2*n-2](bar(t)));
			end function;
		Y[2*n-3] := function(t);
			return Y[2*n-2](t * bar(t)) * Y[n-2](1)^-1 *
				Y[n-1](t)^-1 * Y[n-2](1) * Y[n-1](t);
			end function;
		Ym[2*n-3] := function(t); return Transpose(Y[2*n-3](bar(t)));
			end function;
	end if;

	if func eq false then;
		F:=GF(q^2); nu:=PrimitiveElement(F);
		Bb:=Basis(F);
		Bs:=Basis(sub<F|nu^(q+1)>);
		out:=[Y[i](b) : i in [1..n-2], b in Bs] cat
						[Y[n-1](b) : b in Bb];
		outm:=[Ym[i](b) : i in [1..n-2], b in Bs] cat
						[Ym[n-1](b) : b in Bb];
		if aut eq false then;
			return out,outm,_;
		elif IsEven(q) then;
			return out,outm,[];
		else;
			d := DiagonalMatrix(GF(q^2),[1,nu^-1,nu^-1,nu^(-q-1)]);
			sigma:=function(d);
			return Generic(Parent(d))![e^q : e in Eltseq(d)];
			end function;
			for i in [1..n-3] do;
				d := DirectSum(d,nu^-1*sigma(d));
			end for;
			if IsOdd(n) then;
				// Rescaling d to preserve the form
				d := nu^((n-1) div 2) * d;
		/* Now attempting to rescale d to preserve the form and have
		 * determinant 1 or -1.  To do this, we can only rescale d
		 * by elements whose order divides q+1
		 * IsPower gives us an element that would rescale d to have
		 * determinant 1  Such an element, multiplied by all roots of
		 * unity in F, will give all elements that would do this
		 * We then check to see if any such elements have order
		 * dividing q+1
		 */
				u:=RootOfUnity(2^(n-1),F);
				U:={u^i : i in [1..2^(n-1)] | u^i in F};
	// Start with finding elements that rescale d to have determinant 1
				isit,scal:=IsPower(Determinant(d),2^(n-1));
				if isit then;
					preserve:=
				{ scal*u : u in U | (scal*u)^(q+1) eq 1};
					if #preserve ne 0 then;
						s:=Random(preserve);
						d:=d*s^-1;
					end if;
				else;
		// Now find elements that rescale d to have determinant -1
					isit2,scal:=
					IsPower(Determinant(d^2),2^(n-1));
					if isit2 then;
						preserve:=
				{ scal*u : u in U | (scal*u)^(q+1) eq 1};
						if #preserve ne 0 then;
							s:=Random(preserve);
							ds:=d^2*s^-1;
							return out,outm,[d];
						end if;
					end if;
				end if;
		// If n is even, we cannot rescale d to preserve the form
			end if;
			return out,outm,[d];
		end if;
	end if;
	return Y,Ym,_;
end function;

testplus:=function(n,q);

	X,Xm:=spininductplus(n,q:func:=true);

	wa:= function(alpha,t);
		return X[alpha](t) * Xm[alpha](-t^-1) * X[alpha](t);
	end function;

	h:= function(alpha,t);
		return wa(alpha,t) * wa(alpha,-1);
	end function;

	w:= Identity(Parent(X[1](1)));
	for i in [n..1 by -1] do;
		w:=w*wa(i,1);
	end for;

	nu:= PrimitiveElement(GF(q));

	if IsEven(n) then;
		if q ne 2 then;
			return [h(n-1,nu), Xm[n](1)*X[n-2](1)*w];			
		else;
			return [X[n](1)*X[n-2](1), w];
		end if;
	else;
		if q notin {2,3} then;
			return [h(n,nu),X[n](1)*w];
		else;
			return [X[n](1),w];
		end if;
	end if;
end function;

testcirc:=function(n,q:early:=false);
// Input n and q
// Return two generators for the half spin representation of Omega(2n+1,q);

	// Generators from spininductcirc
	X,Xm:=spininductcirc(n,q:func:=true);

	// The function w_alpha(t) (or n_alpha(t) from the literature)
	// Only for positive fundamental roots, so alpha is a positive integer
	wa:= function(alpha,t);
		return X[alpha](t) * Xm[alpha](-t^-1) * X[alpha](t);
	end function;

	// The function h_alpha(t) from the literature.
	h:= function(alpha,t);
		return wa(alpha,t) * wa(alpha,-1);
	end function;

	// Commutator function
	CC:=function(a,b); return a^-1*b^-1*a*b; end function;

	// The element n as given in the literature
	w:= Identity(Parent(X[1](1)));
	for i in [n..1 by -1] do;
		w:=w*wa(i,1);
	end for;

	// The element corresponding to the root element epsilon_1 - epsilon_n
	// This is given by alpha_1 + alpha_2 + ... + alpha_{n-1} if end =0, and the same + 2 alpha_n if end=1
	// All related structure constants are 1, so we can build this from iterated commutators.
	x:=function(t : tail := 0);
		if n lt 3 then error "n too small"; end if;
		out:=CC(X[1](t),X[2](1));
		if n eq 3 then return out; end if;
		for i in [3..n-2] do;
			out := CC(out,X[i](1));
		end for;
		if tail eq 0 then;
			out:= CC(out,X[n-1](1));
		elif tail eq 1 then;
			z:=Xm[n-1](1) * X[n-1](-1) * X[n](-1) * X[n-1](1) * Xm[n-1](-1);
			out := CC(out,z);
		else;
			error "tail must be 0 or 1";
		end if;
		return out;
	end function;

	if early then return x; end if;

	nu:= PrimitiveElement(GF(q));

	if IsOdd(q) then;
		if q ne 3 then;
//			hh := x(nu:tail:=1) * Transpose(x(-nu^-1:tail:=1)) * x(nu:tail:=1) * x(-1:tail:=1) 
//				* Transpose(x(1:tail:=1)) * x(-1:tail:=1);
			hh := x(nu:tail:=0) * Transpose(x(-nu^-1:tail:=0)) * x(nu:tail:=0) * x(-1:tail:=0) 
				* Transpose(x(1:tail:=0)) * x(-1:tail:=0);
			return [hh, X[n](1)*w];
		else;
			return [X[n](1),w];
		end if;
	else;
		// The element corresponding to the root element epsilon_1 + 
		if q ne 2 then;
//			hh := x(nu:tail:=1) * Transpose(x(-nu^-1:tail:=1)) * x(nu:tail:=1) * x(-1:tail:=1) 
//				* Transpose(x(1:tail:=1)) * x(-1:tail:=1);
			hh := x(nu:tail:=0) * Transpose(x(-nu^-1:tail:=0)) * x(nu:tail:=0) * x(-1:tail:=0) 
				* Transpose(x(1:tail:=0)) * x(-1:tail:=0);
			return [hh, x(1:tail:=0)*Xm[n](1)*w];
		else;
			return [x(1:tail:=0) * Xm[n](1),w];
		end if;
	end if;
end function;

testminus:=function(n,q);

	X,Xm:=spininductplus(n,q^2:func:=true); //Obtaining the generators from their embedding inside OmegaPlus(2*n,q)
	y:=function(t); return X[n-1](t) * X[n](t^q); end function;

	nu:=PrimitiveElement(GF(q^2));

	wa:= function(alpha,t);
		return X[alpha](t) * Xm[alpha](-t^-1) * X[alpha](t);
	end function;

	h:= function(alpha,t);
		return wa(alpha,t) * wa(alpha,-1);
	end function;

	w:= y(1) * Transpose(y(-1)) * y(1);
	for i in [n-2..1 by -1] do;
		w:=w*wa(i,1);
	end for;

	hh:= h(n,nu)*h(n-1,nu^q);

	x:= X[n-1](1)*X[n](1);

	return [x*w,hh];
end function;

HalfSpinPlus := function(n,q : Automorphisms:=false)
  local nh, m1, m2, m3, k, gens, grp;
  assert IsEven(n);
  nh:= n div 2;
  m1, m2, m3 := spininductplus(nh,q : aut:=Automorphisms);
  k := NumberOfRows(m1[1]); assert k eq 2^(nh-1);
  gens := Automorphisms select m1 cat m2 cat m3 else m1 cat m2;
  grp := sub< GL(k,q) | gens >;
  return grp;
end function;

FullSpinPlus := function(n,q : Automorphisms:=false)
  local p, e, nh, m1, m2, m3, m3g, mm1, mm2, k, gens, set, grp;
  assert IsEven(n);
  nh:= n div 2;
  p := Factorisation(q)[1][1];
  e := Factorisation(q)[1][2];
  m1, m2, m3, m3g := spininductplus(nh,q : aut:=Automorphisms);
  k := NumberOfRows(m1[1]); assert k eq 2^(nh-1);
  set:=[1..(nh-2)*e] cat [(nh-1)*e+1..nh*e] cat [(nh-2)*e + 1..(nh-1)*e];
  mm1 := [m1[i] : i in set];
  mm2 := [m2[i] : i in set];
  gens := [DiagonalJoin(m1[i],mm1[i]) : i in [1..nh*e]] cat
          [DiagonalJoin(m2[i],mm2[i]) : i in [1..nh*e]];
  if Automorphisms then
     if IsOdd(q) then
       gens cat:= [ DiagonalJoin(m3[i],m3g[i]) : i in [1..#m3]];
     end if;
     Append(~gens, PermutationMatrix(GF(q),Sym(2*k)!([k+1..2*k] cat [1..k])));
  end if;
  grp := sub< GL(2*k,q) | gens >;
  return grp;
end function;

MatToQ := function(m,q)
  local nr;
  nr := NumberOfRows(m);
  return Matrix(nr,nr,[x^q : x in Eltseq(m)]);
end function;

HalfSpinMinus := function(n,q : Automorphisms:=false)
  local nh, m1, m2, m3, k, gens, grp;
  assert IsEven(n);
  nh:= n div 2;
  m1, m2, m3 := spininductminus(nh,q : aut:=Automorphisms);
  k := NumberOfRows(m1[1]); assert k eq 2^(nh-1);
  gens := Automorphisms select m1 cat m2 cat m3 else m1 cat m2;
  grp := sub< GL(k,q^2) | gens >;
  return grp;
end function;

FullSpinMinus := function(n,q : Automorphisms:=false)
  local p, e, nh, m1, m2, m3, m3g, mm1, mm2, k, gens, set, grp;
  assert IsEven(n);
  nh:= n div 2;
  p := Factorisation(q)[1][1];
  e := Factorisation(q)[1][2];
  nh:= n div 2;
  m1, m2, m3 := spininductminus(nh,q : aut:=Automorphisms);
  k := NumberOfRows(m1[1]); assert k eq 2^(nh-1);
  mm1 := m1; mm2 := m2;
  for i in [(nh-2)*e + 1..nh*e] do;
    mm1[i] := MatToQ(mm1[i],q);
    mm2[i] := MatToQ(mm2[i],q);
  end for;
  gens := [DiagonalJoin(m1[i],mm1[i]) : i in [1..nh*e]] cat
          [DiagonalJoin(m2[i],mm2[i]) : i in [1..nh*e]];
  if Automorphisms then
     if IsOdd(q) then
       gens cat:= [ DiagonalJoin(m3[i],MatToQ(m3[i],q)) : i in [1..#m3]];
     end if;
     Append(~gens, PermutationMatrix(GF(q),Sym(2*k)!([k+1..2*k] cat [1..k])));
  end if;
  grp := sub< GL(2*k,q^2) | gens >;
  return grp;
end function;

SpinCircle := function(n,q : Automorphisms:=false)
  local nh, m1, m2, m3, k, gens, grp;
  assert IsOdd(n);
  nh:= n div 2;
  m1, m2, m3 := spininductcirc(nh,q : aut:=Automorphisms);
  k := NumberOfRows(m1[1]); assert k eq 2^nh;
  gens := Automorphisms select m1 cat m2 cat m3 else m1 cat m2;
  grp := sub< GL(k,q) | gens >;
  return grp;
end function;

Spin8PlusS4 := function(q)
  local p, e, X, Xm;
  //degree 24 representation of Spin^+_8(q).S_4 - by Daniel Rogers
  p := Factorisation(q)[1][1];
  e := Factorisation(q)[1][2];
  X, Xm:=spininductplus(4,q);

// Fi and Fim are the four families of generators from spininductplus
  F1:=X[1..e]; F2:=X[e+1..2*e]; F3:=X[2*e+1..3*e]; F4:=X[3*e+1..4*e];
  F1m:=Xm[1..e]; F2m:=Xm[e+1..2*e]; F3m:=Xm[2*e+1..3*e]; F4m:=Xm[3*e+1..4*e];
  
  //Permute these families by the triality automorphism of the Dynkin diagram,
  //  induced by (1,3,4)
  Y:=F3 cat F2 cat F4 cat F1;
  Z:=F4 cat F2 cat F1 cat F3;
  Ym:=F3m cat F2m cat F4m cat F1m;
  Zm:=F4m cat F2m cat F1m cat F3m;
  
  GX:=sub<GL(8,q) | X cat Xm>;
  GY:=sub<GL(8,q) | Y cat Ym>;
  GZ:=sub<GL(8,q) | Z cat Zm>;
  
  //Check the three modules are not isomorphic
  VX:=GModule(GX); VY:=GModule(GY); VZ:=GModule(GZ);
  assert IsIsomorphic(VX,VY) eq false;
  assert IsIsomorphic(VX,VZ) eq false; 
  assert IsIsomorphic(VY,VZ) eq false;
  
  A:=[DirectSum(X[i],DirectSum(Y[i],Z[i])) : i in [1..#X]];
  Am:=[DirectSum(Xm[i],DirectSum(Ym[i],Zm[i])) : i in [1..#X]];
  
  // Diagonal automorphisms
  nu:=PrimitiveElement(GF(q));
  
  delta:=DiagonalMatrix([nu,nu,nu,1,nu,1,1,1]);
  deltatau:=DiagonalMatrix([nu,nu,nu,nu,1,1,1,1]);
  deltatau2:=DiagonalMatrix([nu,1,1,1,1,1,1,nu^-1]);
  
  d1:=DirectSum(delta,DirectSum(deltatau,deltatau2));
  
  deltaprime:=DiagonalMatrix([1,nu,nu,1,nu,1,1,nu]);
  deltaprimetau:=DiagonalMatrix([1,1,1,nu,nu^-1,1,1,1]);
  deltaprimetau2:=DiagonalMatrix([1,nu^-1,nu^-1,nu^-1,1,1,1,nu^-1]);
  
  d2:=DirectSum(deltaprime,DirectSum(deltaprimetau,deltaprimetau2));
  
  // Graph automorphisms
  tau:=Zero(MatrixAlgebra(GF(q),24));
  for i in [1..8] do;
  tau[i,i+8] := 1;
  tau[i+8,i+16] := 1;
  tau[i+16,i] := 1;
  end for;
  gammap:=
      Sym(24)!([17..24] cat [9..16] cat [1..8]) * Sym(24)!(4,5)(12,13)(20,21);
  gamma:=PermutationMatrix(GF(q),gammap);
  
  S:=sub<GL(24,q) | A cat Am>;
  Sd:=sub<GL(24,q) | A cat Am cat [d1,d2,tau,gamma]>;  
  return S, Sd;
end function;
