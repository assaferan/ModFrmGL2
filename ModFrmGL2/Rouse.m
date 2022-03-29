// This is the code from Jeremy Rouse's project, adapted slightly to
// work for arbitrary groups (not only 2-adic

function size(f)
  return #Sprintf("%o",f);
end function;


// Supersimplify functions - This is probably only necessary on
// functions coming from index 3 or 4 covers because the rational
// functions that are output are ridiculously complicated

function transcheck(f)
  //printf "Finding optimal translation.\n";
  t := Parent(f).1;
  done := true;
  if size(Evaluate(f,t-1)) lt size(f) then
    upp := 0;
    mid := -1;
    low := -2;
    while size(Evaluate(f,t+low)) lt size(Evaluate(f,t+mid)) do
      upp := mid;
      mid := low;
      low := low*2;
    end while;
    done := false;
  end if;
  if size(Evaluate(f,t+1)) lt size(f) then
    low := 0;
    mid := 1;
    upp := 2;
    while size(Evaluate(f,t+2*mid)) lt size(f) do
      low := mid;
      mid := 2*mid;
      upp := 2*mid;
    end while;
    done := false;
  end if;
  if done eq false then
    uppsiz := size(Evaluate(f,t+upp));
    midsiz := size(Evaluate(f,t+mid));
    lowsiz := size(Evaluate(f,t+low));
    round := 0;
    while done eq false do
      round := round + 1;
      //printf "Bisection method, round %o.\n",round;
      //printf "low = %o, lowsiz = %o.\n",low,lowsiz;
      //printf "mid = %o, midsiz = %o.\n",mid,midsiz;
      //printf "upp = %o, uppsiz = %o.\n",upp,uppsiz;
      if (upp-low) le 1 then
        done := true;
      else
        check1 := Round((low+mid)/2);
        check2 := Round((mid+upp)/2);
        newsiz1 := size(Evaluate(f,t+check1));
        newsiz2 := size(Evaluate(f,t+check2));
        sizelist := [lowsiz,newsiz1,midsiz,newsiz2,uppsiz];
        ind := Index(sizelist,Min(sizelist));
        if (ind eq 2) then
          upp := mid;
          uppsiz := midsiz;
          mid := check1;
          midsiz := newsiz1;
        end if;
        if (ind eq 3) then
          low := check1;
          lowsiz := newsiz1;
          upp := check2;
          uppsiz := newsiz2;
        end if;
        if (ind eq 4) then
          low := mid;
          lowsiz := midsiz;
          mid := check2;
          midsiz := newsiz2;
        end if;
      end if;
    end while;
    f2 := Evaluate(f,t+mid);
    if size(f2) lt size(f) then
      //printf "It is %o.\n",mid;
      retM := Matrix([[1,mid],[0,1]]);
      //printf "It is %o.\n",mid;
      retM := Matrix([[1,mid],[0,1]]);
    else
      //printf "It is %o.\n",0;
      f2 := f;
      retM := Matrix([[1,0],[0,1]]);
    end if;
  else
    f2 := f;
    //printf "It is %o.\n",0;
    retM := Matrix([[1,0],[0,1]]);
  end if;
  return f2,retM;
end function;

// This function returns the optimal scaling of the
// polynomial g with relatively prime integer coefficients.

function scale(g)
  coflist := Coefficients(g);
  ret := 1;
  if #[ i : i in [1..#coflist] | coflist[i] ne 0] ge 2 then
    gcd1 := GCD([Coefficient(g,i) : i in [1..Degree(g)]]);
    //printf "GCD1 = %o.\n",gcd1;
    gcd2 := GCD([Coefficient(g,i) : i in [0..Degree(g)-1]]);
    //printf "GCD2 = %o.\n",gcd2;
    //printf "Computing prime factorization.\n";
    primelist := PrimeDivisors(LCM(gcd1,gcd2));
    //printf "Done!\n";
    for j in [1..#primelist] do
      p := primelist[j];
      vallist := [ Valuation(Coefficient(g,n),p) : n in [0..Degree(g)]];
      //printf "Checking p = %o.\n",p;
      if Valuation(Coefficient(g,Degree(g)),p) gt 0 then
        //printf "Exponent should be negative.\n";
        //printf "List = %o.\n",[ vallist[n+1]/n : n in [1..Degree(g)]];
        ex := Floor(Min([ vallist[n+1]/n : n in [1..Degree(g)]]));
        ex := -ex;
      else
        //printf "Exponent should be positive.\n";
        //printf "List = %o.\n",[ vallist[n+1]/(Degree(g)-n) : n in [0..Degree(g)-1]];
        ex := Floor(Min([ vallist[n+1]/(Degree(g)-n) : n in [0..Degree(g)-1]]));
      end if;

      ret := ret*p^(ex);
    end for;
  end if;
  return ret;
end function;

function scale2(f)
  t := Parent(f).1;
  num := Numerator(f);
  denom := Denominator(f);
  coflist := [ Denominator(Coefficient(num,n)) : n in [0..Degree(num)]];
  coflist := coflist cat [ Denominator(Coefficient(denom,n)) : n in [0..Degree(denom)]];
  mult := LCM(coflist);
  num := PolynomialRing(Integers())!(num*mult);
  denom := PolynomialRing(Integers())!(denom*mult);
  //printf "Current size = %o.\n",size(f);
  //printf "Scaling numerator.\n";
  r1 := scale(num div Content(num));
  //printf "Scaling denominator.\n";
  r2 := scale(denom div Content(denom));
  primelist := PrimeDivisors(Numerator(r1)*Denominator(r1)*Numerator(r2)*Denominator(r2));
  primevals := [];
  for i in [1..#primelist] do
    v1 := Valuation(r1,primelist[i]);
    v2 := Valuation(r2,primelist[i]);
    if (v1 lt 0) and (v2 lt 0) then
      Append(~primevals,Max(v1,v2));
    else
      if (v1 gt 0) and (v2 gt 0) then
        Append(~primevals,Min(v1,v2));
      else
        Append(~primevals,0);
      end if;
    end if;
  end for;
  if #primelist gt 0 then
    scalfac := &*[ primelist[i]^primevals[i] : i in [1..#primelist]];
  else
    scalfac := 1;
  end if;
  //printf "Scaling factor %o.\n",scalfac;
  newf := Evaluate(f,scalfac*t);
  retsize := size(newf);
  //printf "Size of scaled f = %o.\n",retsize;
  return scalfac,retsize;
end function;

// Supersimplify function

function supersimplify(f)
  printf "Call to supersimplify.\n";
  t := Parent(f).1;
  j := f;
  changemat := Matrix([[1,0],[0,1]]);
  prevsize := size(j);
  prevj := j;
  prevmat := changemat;
  alldone := false;
  while alldone eq false do
  printf "Entering simplification iteration. Current size = %o.\n",prevsize;
  scal, newsize := scale2(j);
  jnew := Evaluate(j,t*scal);
  changemat := changemat*Matrix([[scal,0],[0,1]]);
  printf "Size after scaling = %o.\n",newsize;

  // Do translations - do this by
  // factoring num and denom modulo prime
  // powers

  //printf "Translation check.\n";
  num := PolynomialRing(Rationals())!Numerator(jnew);
  denom := PolynomialRing(Rationals())!Denominator(jnew);
  coflist := [ Denominator(Coefficient(num,n)) : n in [0..Degree(num)]];
  num := num*LCM(coflist);
  num := PolynomialRing(Integers())!num;
  coflist := [ Denominator(Coefficient(denom,n)) : n in [0..Degree(denom)]];
  denom := denom*LCM(coflist);
  denom := PolynomialRing(Integers())!denom;
  if Degree(num) gt 0 then
    FF := Factorization(num);
    sqrfreenum := &*[ FF[i][1] : i in [1..#FF]];
  else
    sqrfreenum := PolynomialRing(Integers())!1;
  end if;
  if Degree(denom) gt 0 then
    FF := Factorization(denom);
    sqrfreedenom := &*[ FF[i][1] : i in [1..#FF]];
  else
    sqrfreedenom := PolynomialRing(Integers())!1;
  end if;
  if (Degree(sqrfreenum) gt 0) and (Degree(sqrfreedenom) gt 0) then
    D := GCD(Discriminant(sqrfreenum),Discriminant(sqrfreedenom));
  end if;
  if Degree(sqrfreenum) eq 0 then
    D := Discriminant(sqrfreedenom);
  end if;
  if Degree(sqrfreedenom) eq 0 then
    D := Discriminant(sqrfreenum);
  end if;
  plist := PrimeDivisors(D);
  for n in [1..#plist] do
    p := plist[n];
    F := GF(p);
    RRRR<zzzz> := PolynomialRing(F);
    done := false;
    while done eq false do
      //printf "Translation check at p = %o.\n",p;
      num := PolynomialRing(Rationals())!Numerator(jnew);
      denom := PolynomialRing(Rationals())!Denominator(jnew);
      coflist := [ Denominator(Coefficient(num,n)) : n in [0..Degree(num)]];
      num := num*LCM(coflist);
      num := RRRR!num;
      coflist := [ Denominator(Coefficient(denom,n)) : n in [0..Degree(denom)]];
      denom := denom*LCM(coflist);
      denom := RRRR!denom;
      prod := RRRR!1;
      if (num ne 0) then
        prod := prod*num;
      end if;
      if (denom ne 0) then
        prod := prod*denom;
      end if;
      fac := Factorization(prod);
      //printf "Factorization = %o.\n",fac;
      if (#fac eq 1) and Degree(fac[1][1]) eq 1 then
        r := Integers()!(Roots(prod)[1][1]);
        chk1 := Evaluate(jnew,p*t+r);
        chk2 := Evaluate(jnew,p*t+(-p+r));
        size1 := size(chk1);
        size2 := size(chk2);
       //printf "Possible new sizes are %o and %o.\n",size1,size2;
        minsize := Min(size1,size2);
        if (minsize lt newsize) then
          if (size1 eq minsize) then
            jnew := chk1;
            changemat := changemat*Matrix([[p,r],[0,1]]);
            newsize := size1;
            //printf "Transformation %o. New size = %o.\n",p*t+r,newsize;
          else
            jnew := chk2;
            changemat := changemat*Matrix([[p,r-p],[0,1]]);
            newsize := size2;
            //printf "Transformation %o. New size = %o.\n",p*t+(-p+r),newsize;
          end if;
        else
          done := true;
        end if;
      else
        done := true;
      end if;
    end while;
  end for;
  printf "Translation check done. New size = %o.\n",newsize;
  j := jnew;

  // Do some rounds of random substitutions
  done := false;
  bound := 5;
  it := 0;
  ptlist := [];
  for aa in [-bound..bound] do
    for bb in [-bound..bound] do
      for cc in [-bound..bound] do
        for dd in [0..bound] do
          if GCD([aa,bb,cc,dd]) eq 1 then
            if aa*dd - bb*cc ne 0 then
              Append(~ptlist,<aa,bb,cc,dd>);
            end if;
          end if;
        end for;
      end for;
    end for;
  end for;
  printf "Doing up to 5 rounds of substitutions.\n";
  while done eq false do
    it := it + 1;
    cursize := size(j);
    //printf "Beginning iteration %o. Size = %o.\n",it,cursize;
    minsize := cursize;
    for n in [1..#ptlist] do
      pt := ptlist[n];
      aa := pt[1];
      bb := pt[2];
      cc := pt[3];
      dd := pt[4];
      jnew := Evaluate(j,(aa*t+bb)/(cc*t+dd));
      chksize := size(jnew);
      if (chksize lt minsize) then
        //printf "Index %o has size %o. pt = %o\n",n,chksize,pt;
        minsize := chksize;
        ind := n;
      end if;
    end for;
    if minsize lt cursize then
      pt := ptlist[ind];
      aa := pt[1];
      bb := pt[2];
      cc := pt[3];
      dd := pt[4];
      jnew := Evaluate(j,(aa*t+bb)/(cc*t+dd));
      changemat := changemat*Matrix([[aa,bb],[cc,dd]]);
      printf "After round %o size = %o.\n",it,minsize;
      j := jnew;
      //printf "j = %o.\n",j;
      if (it ge 5) then
        done := true;
      end if;
    else
      done := true;
    end if;
  end while;
  // Translation rounds
  printf "Doing two more random checks.\n";
  j, retM := transcheck(j);
  changemat := changemat*retM;
  // Hack for group number 7
  if size(Evaluate(j,t/31)) lt size(j) then
    j := Evaluate(j,t/31);
    changemat := changemat*Matrix([[1,0],[0,31]]);
  end if;
  printf "Final size is %o.\n",size(j);
  if size(j) ge prevsize then
    alldone := true;
    j := prevj;
    changemat := prevmat;
  else
    prevj := j;
    prevmat := changemat;
    prevsize := size(j);
  end if;
  end while;
  return j, changemat;
end function;

forward GetModularFunctionAndModel;

function CoveringGroup(G)
  cands := MinimalOvergroups(ModLevelGL(G), ImageInLevelGL(G));
  if IsEmpty(cands) then
    return PSL2(Integers());
  end if;
  _, idx := Minimum([Index(cand, ImageInLevelGL(G)) : cand in cands]);
  covergp := PSL2Subgroup(cands[idx], false);
  return covergp;
end function;

function maptoj(curgp, ptlist);
  curptlist := ptlist;
  while (curgp ne PSL2(Integers())) do
    covergp := CoveringGroup(curgp);
    _, _, mp := GetModularFunctionAndModel(curgp);				
    curpt := Domain(mp)!curptlist;
    newpt := mp(curpt);
    curptlist := Coordinates(newpt);
    curgp := covergp;
  end while;
  return newpt;
end function;

function JMap(G)
  curgp := G;
  _, _, mp := GetModularFunctionAndModel(curgp);
  polyRing := CoordinateRing(Codomain(mp));
  curpt := GeneratorsSequence(polyRing);
  while (curgp ne PSL2(Integers())) do
    covergp := CoveringGroup(curgp);
    polys := [AlgebraMap(mp)(x) : x in GeneratorsSequence(polyRing)];
// curpt := [AlgebraMap(mp)(x) : x in curpt];
    curpt := [Evaluate(p, curpt) : p in polys];
    curgp := covergp;
    _, _, mp := GetModularFunctionAndModel(covergp);
   polyRing := CoordinateRing(Codomain(mp));
  end while;
  return curpt;
end function;

// This function takes two q-expansions and a degree bound
// The first one is a modular function, the second
// is a modular function of degree 1, and the
// third is a degree bound. This function tries to represent
// the first input as a rational function in the second.
// The two modular functions MUST belong to the same
// power series ring.
// The range of coefficients needed is from
// val2+deg*val1 to val2+deg*val1+2*deg+1

function ratfuncrep(modfunc,haup,deg)
  FF<tt> := FunctionField(Rationals());
  printf "Call to ratfuncrep with deg = %o.\n",deg;
  if IsWeaklyZero(modfunc) then
    return Parent(tt)!0;
  end if;
  field := BaseRing(Parent(modfunc));
  q := Parent(modfunc).1;
  M := ZeroMatrix(field,2*deg+2,2*deg+2);
  den := ExponentDenominator(haup);
  val1 := Min(0,Valuation(haup)*den);
  val2 := Min(0,Valuation(modfunc)*den);
  //printf "den = %o.\n",den;
  timet := Cputime();
  printf "Building last %o rows of the matrix.\n",deg+1;
  printf "Using coefficients %o to %o.\n",(val2+deg*val1)/den,(val2+deg*val1+2*deg+1)/den;
  for m in [0..deg] do
    haupprec := (m*val1 + 2*deg+2)/den;
    func2 := -(haup + BigO(q^(haupprec)))^(deg-m)*modfunc;
    //printf "For m = %o, the precision on func2 is from %o to %o.\n",m,Valuation(func2),AbsolutePrecision(func2);
    //printf "For m = %o, precision needed is from %o to %o.\n",m,(val2+(deg-m)*val1)/den,(val2+(deg-m)*val1+2*deg+1)/den;
    //printf "Coefficient range %o to %o.\n",(val2+deg*val1)/den,(val2+deg*val1+2*deg+1)/den;
    for n in [1..2*deg+2] do
      M[m+deg+2][n] := Coefficient(func2,(val2+deg*val1+n-1)/den);
    end for;
  end for;
  printf "Time taken was %o.\n",Cputime(timet);
  timet := Cputime();
  printf "Building the first %o rows of the matrix.\n",deg+1;
  for m in [0..deg] do
    haupprec := (val2+m*val1+2*deg+2)/den;
    func2 := (haup+BigO(q^(haupprec)))^(deg-m);
    //printf "For m = %o, precision on func2 ranges from %o to %o.\n",m,Valuation(func2),AbsolutePrecision(func2);
    //printf "Precision needed is %o to %o.\n",(val2+(deg-m)*val1)/den,(val2+(deg-m)*val1+2*deg+1)/den;
    for n in [1..2*deg+2] do
      M[m+1][n] := Coefficient(func2,(val2+deg*val1+n-1)/den);
    end for;
  end for;
  printf "Time taken was %o.\n",Cputime(timet);
  printf "Solving the linear system of size %ox%o.\n",2*deg+2,2*deg+2;
  timet := Cputime();
  V := Nullspace(M);
  printf "Time taken was %o.\n",Cputime(timet);
  printf "Null space has dimension %o.\n",Dimension(V);
  assert Dimension(V) gt 0;
  v := V.1;
  QQ := Rationals();
  // We really hope that all the entries of V can be coerced into QQ
  numcoeffs := [ QQ!v[i] : i in [1..deg+1]];
  denomcoeffs := [ QQ!v[i] : i in [deg+2..2*deg+2]];
  mult := LCM([Denominator(v[i]) : i in [1..2*deg+2]]);
  numcoeffs := [ numcoeffs[i]*mult : i in [1..deg+1]];
  denomcoeffs := [ denomcoeffs[i]*mult : i in [1..deg+1]];
  ret := &+[ numcoeffs[i]*tt^(deg+1-i) : i in [1..deg+1]]/&+[ denomcoeffs[i]*tt\
^(deg+1-i) : i in [1..deg+1]];
  // New ret check
  numer := &+[ numcoeffs[i]*tt^(deg+1-i) : i in [1..deg+1]];
  denom := &+[ denomcoeffs[i]*tt^(deg+1-i) : i in [1..deg+1]];
  for d in [2..Dimension(V)] do
    vd := V.d;
    numerd := &+[ (QQ!vd[i])*tt^(deg+1-i) : i in [1..deg+1]];
    denomd := &+[ (QQ!vd[i])*tt^(2*deg+2-i) : i in [deg+2..2*deg+2]];
    if (numerd*denom - numer*denomd) ne 0 then
      printf "ERROR in ratfuncrep! is not unique!\n";
      bad := 0;
      bad2 := 1/bad;
    end if;    
  end for;
/*
  retcheck := &+[ numcoeffs[i]*(haup+BigO(q^AbsolutePrecision(modfunc)))^(deg+1-i) : i in [1..deg+1]]/&\
+[
  denomcoeffs[i]*(haup+BigO(q^AbsolutePrecision(modfunc)))^(deg+1-i) : i in [1..deg+1]];
  if IsWeaklyZero(retcheck - modfunc) then
    printf "Success! The linear system worked.\n";
    printf "The result was %o.\n",ret;
  else
    printf "Error! Solving the linear system failed!\n";
    bad := 0;
    bad2 := 1/bad;
  end if;
*/
  return ret;
end function;

// This function takes as input three modular functions
// modfunc, x, y. It also takes a degree bound deg.
// It then represents modfunc as a modular function
// of degree at most deg in the function field of the elliptic
// curve y^2 + a1 xy + a3 y = x^3 + a2 x^2 + a4 x + a6.

function genusoneratfuncrep(modfunc,x,y,deg)
  printf "Call to genusoneratfuncrep with deg = %o.\n",deg;
  field := BaseRing(Parent(modfunc));
  q := Parent(modfunc).1;
  den := LCM(ExponentDenominator(x),ExponentDenominator(y));
  valm := Valuation(modfunc)*den;
  valx := Valuation(x)*den;
  valy := Valuation(y)*den;
  // What range of exponents should we look at?
  val1 := valm + (3*deg-3)+Min(0,valx);
  val2 := (3*deg-3)*Min(0,valx);
  val3 := (3*deg-3)*Min(0,valx)+valy;
  startval := Min([val1,val2,val3]);
  rowlen := 13*deg;
  endval := startval + rowlen;
  //printf "The range of exponents is from %o to %o.\n",startval,endval;
  //printf "The actual precision needed for modfunc is %o.\n",(endval+Max(0,(3*deg-3)*(-valx)))/den;
  // An elliptic function of degree k has the form
  // (A(x) + B(x) y)/C(x), where deg A <= 3k-3, deg B <= 3k-5, and
  // deg C <= 3k-3.
  M := ZeroMatrix(field,9*deg-8,rowlen);
  printf "Building matrix - part 1.\n";
  for m in [0..3*deg-3] do
    relprec := 1+endval - (3*deg-3-m)*valx - valm;
    absprec := relprec - valx;
    func := -(x+BigO(q^(absprec/den)))^(3*deg-3-m)*modfunc;
    for n in [1..rowlen] do
      M[m+1][n] := Coefficient(func,(startval+n-1)/den);
    end for;
  end for;
  printf "Building matrix - part 2.\n";
  for m in [0..3*deg-3] do
    relprec := 1+endval - (3*deg-3-m)*valx;
    absprec := relprec - valx;
    func := (x+BigO(q^(absprec/den)))^(3*deg-3-m);
    for n in [1..rowlen] do
      M[3*deg-1+m][n] := Coefficient(func,(startval+n-1)/den);
    end for;
  end for;
  printf "Building matrix - part 3.\n";
  for m in [0..3*deg-6] do
    relprec := 1+endval - (3*deg-6-m)*valx - valy;
    absprec := relprec - valx;
    func := (x+BigO(q^(absprec/den)))^(3*deg-6-m)*y;
    for n in [1..rowlen] do
      M[6*deg-3+m][n] := Coefficient(func,(startval+n-1)/den);
    end for;
  end for;
  printf "Computing nullspace of %ox%o matrix.\n",NumberOfRows(M),NumberOfColumns(M);
  V := Nullspace(M);
  printf "Done!\n";
  printf "Null space has dimension %o.\n",Dimension(V);
  v := V.1;
  QQ := Rationals();
  // We really hope that all the entries of V can be coerced into QQ
/*
  for n in [1..9*deg-8] do
    printf "Solution %o is %o.\n",n,v[n];
  end for;
  bad := 0;
  bad2 := 1/bad;
*/
  FFF<ttt> := PolynomialRing(QQ);
  ccoeffs := [ QQ!v[i] : i in [1..3*deg-2]];
  acoeffs := [ QQ!v[i] : i in [3*deg-1..6*deg-4]];
  bcoeffs := [ QQ!v[i] : i in [6*deg-3..9*deg-8]];
  reta := &+[ acoeffs[i]*ttt^(3*deg-2-i) : i in [1..3*deg-2]];
  retb := &+[ bcoeffs[i]*ttt^(3*deg-5-i) : i in [1..3*deg-5]];
  retc := &+[ ccoeffs[i]*ttt^(3*deg-2-i) : i in [1..3*deg-2]];
  for d in [2..Dimension(V)] do
    vd := V.d;
    ccoeffsd := [ QQ!vd[i] : i in [1..3*deg-2]];
    acoeffsd := [ QQ!vd[i] : i in [3*deg-1..6*deg-4]];
    bcoeffsd := [ QQ!vd[i] : i in [6*deg-3..9*deg-8]];
    retad := &+[ acoeffsd[i]*ttt^(3*deg-2-i) : i in [1..3*deg-2]];
    retbd := &+[ bcoeffsd[i]*ttt^(3*deg-5-i) : i in [1..3*deg-5]];
    retcd := &+[ ccoeffsd[i]*ttt^(3*deg-2-i) : i in [1..3*deg-2]]; 
    chk1 := reta*retcd - retad*retc;
    chk2 := retb*retcd - retbd*retc;
    if (chk1 ne 0) or (chk2 ne 0) then
      printf "ERROR! Solution is not unique in genusoneratfuncrep.\n";
      bad := 0;
      bad2 := 1/bad;
    end if;
  end for;
  gcd := GCD([reta,retb,retc]);
  //printf "We found gcd = %o.\n",gcd;
  return reta div gcd, retb div gcd, retc div gcd;
end function;

// Function simplifyelliptic - This function takes reta, retb,
// and retc from the genusoneratfuncrep function, and also the
// ainvariants of the elliptic curve, and it outputs two polynomials
// p1 and p2 with the property that the input divided by p1(x) + p2(x)y
// is a square.

function simplifyelliptic(reta,retb,retc,ainvars)
  E := EllipticCurve(ainvars);
  F<x> := FunctionField(Rationals());
  S<zz> := PolynomialRing(F);
  f := zz^2 + ainvars[1]*zz*x + ainvars[3]*zz - (x^3 + ainvars[2]*x^2 + ainvars[4]*x + ainvars[5]);
  K<y> := FunctionField(f);
  elt := (K!Evaluate(reta,x)+K!Evaluate(retb,x)*y)/(K!Evaluate(retc,x));
  D := Divisor(elt);
  S := Support(D);
  infty := Divisor(InfinitePlaces(K)[1]);

  simpd := DivisorGroup(K)!0;
  D2 := DivisorGroup(K)!0;
  for i in [1..#S] do
    val := Valuation(D,S[i]);
    if (val mod 2 eq 1) then
      simpd := simpd + S[i];
    end if;
    D2 := D2 + Floor(val/2)*S[i];
  end for;
  deg := Degree(simpd);
  simpd := simpd - deg*infty;
  D2 := D2 - Degree(D2)*infty;

  // This divisor is probably not principal - Make it so it is!
  OK := EquationOrderFinite(K);

  // Guess a random point on E to add to the divisor to make it principal
  T, phi0 := TorsionSubgroup(E);
  torspoints := { phi0(a) : a in T };
  // We assume that E has rank 1.
  GG, phi := MordellWeilGroup(E);
  num := #Generators(GG);
  P := phi(GG.num);

  found := false;
  it := 0;
  while found eq false do
    chklist := [ it*P + s : s in torspoints ] cat [ -it*P + s : s in torspoints ];
    it2 := 0;
    done := false;
    while done eq false do
      it2 := it2 + 1;
      if it2 gt #chklist then
        done := true;
      else
        pt := chklist[it2];
        if (pt eq E!0) then
          dv := infty;
        else
          xcord := pt[1];
          ycord := pt[2];
          I := ideal<OK | x-xcord,y-ycord>;
          dv := Divisor(Place(I));
        end if;
        dv := dv - infty;
        if IsPrincipal(D2-dv) then
          done := true;
          found := true;
          //printf "We found it! We have pt = %o.\n",pt;
        end if;
      end if;
    end while;
    it := it + 1;
  end while;

  divg := D2-dv;
  a, gfunc := IsPrincipal(divg);
  g := Evaluate(RationalFunction(gfunc),y);
  simp1 := elt/g^2;
  T<z> := PolynomialRing(Rationals());
  elts := Eltseq(simp1);
  elts := [ T!elts[1], T!elts[2] ];
  if Degree(elts[1]) ge 0 then
    denomlcm1 := LCM([ Denominator(Coefficient(elts[1],i)) : i in [0..Degree(elts[1])]]);
    numgcd1 := GCD([ Numerator(Coefficient(elts[1],i)) : i in [0..Degree(elts[1])]]);
  else
    denomlcm1 := 1;
    numgcd1 := 0;
  end if;
  if Degree(elts[2]) ge 0 then
    denomlcm2 := LCM([ Denominator(Coefficient(elts[2],i)) : i in [0..Degree(elts[2])]]);
    numgcd2 := GCD([ Numerator(Coefficient(elts[2],i)) : i in [0..Degree(elts[2])]]);
  else
    denomlcm2 := 1;
    numgcd2 := 0;
  end if;
  denomlcm := LCM([denomlcm1,denomlcm2]);
  numgcd := GCD([numgcd1,numgcd2]);
  aa, bb := SquarefreeFactorization(denomlcm);
  cc, dd := SquarefreeFactorization(numgcd);  
  fac := (aa^2*bb^2)/dd^2;
  return elts[1]*fac,elts[2]*fac;
end function;

import "ModFrm/eisenstein.m" : ActionOnEisensteinSeries;

// Returns the equation over QQ(j) that the Hauptmodule j_H satisfies.
function GetModularFunctionAndModel(H)
  FF<tt> := FunctionField(Rationals());
  RR<t> :=PolynomialRing(Rationals());
  RRR<x,y> := PolynomialRing(Rationals(),2);
  ZZ<b> := PolynomialRing(Integers());
  sub := ImageInLevelGL(H);
  QQ := Rationals();
  N := Level(H);
  prec := 110 * N;
  KK<z> := CyclotomicField(N);
  RRRRR<qq> := PuiseuxSeriesRing(KK);
  E4 := 240*qExpansion(EisensteinSeries(ModularForms(1,4))[1], prec);
  E6 := -504*qExpansion(EisensteinSeries(ModularForms(1,6))[1], prec);
  Delta := E4^3 - E6^2;
  j := 1728*E4^3 / Delta;
  haupt := RRRRR!j;
  if (H eq PSL2(Integers())) then
    X<a,b> := ProjectiveSpace(Rationals(), 1);
    covering_map := map< X -> X | [a, b]>;
    return X, haupt, covering_map, covering_map;
  end if;
  // Change this
  radN := &*[x[1] : x in Factorization(N)];
// indbound := 8;
  indbound := radN^3;
  covergp := CoveringGroup(H);
  done := true;
  repeat
  try
  ind := Index(ImageInLevelGL(covergp : N := N), ImageInLevelGL(H));
  gencover := Genus(covergp);
  gen := Genus(H);
  K<zeta> := CyclotomicField(N);
  R<q> := PuiseuxSeriesRing(K);
  bigG := GL(2,Integers(N));
  // This cam from Rouse's code - why do we look at this subgroup?
//  U, phi := UnitGroup(Integers(N));
//  gens := [[phi(g),0,0,1] : g in Generators(U)];
//weird_group := sub<bigG | [3,0,0,1], [5,0,0,1], [1,1,0,1], [-1,0,0,-1]>;
//  weird_group := sub<bigG | gens cat [[1,1,0,1], [-1,0,0,-1]]>;
// indbound := Index(bigG, weird_group);
//phi, B, C := CosetAction(bigG,weird_group);
//  phi, B, C := CosetAction(bigG, ImageInLevelGL(H));
//  permcover := phi(ImageInLevelGL(covergp : N := N));
//  L0 := LowIndexSubgroups(permcover,indbound);
// permcover := ImageInLevelGL(covergp : N := N^2);
  permcover := ImageInLevelGL(covergp : N := N);
  L0 := Subgroups(permcover : IndexLimit := indbound);
  printf "Done! There were %o conjugacy classes.\n",#L0;
  oldcuspnums := [];
  printf "Computing number of cusps for each of these groups...";
  for n in [1..#L0] do
	  // cusps := #Cusps(PSL2Subgroup(L0[n] @@ phi));
    cusps := #Cusps(PSL2Subgroup(L0[n]`subgroup));
    Append(~oldcuspnums,cusps);  
  end for;
  printf "Done!\n";
  assert Maximum(oldcuspnums) ge 2;
  printf "Building the list of all subgroups of index <= %o.\n",indbound;
  L := [];
  cuspnums := [];
  for n in [1..#L0] do
	  //  cursub := L0[n];
    cursub := L0[n]`subgroup;
    Norm := Normalizer(permcover, cursub);
    cosets := RightTransversal(permcover,Norm);
    for m in [1..#cosets] do
      Append(~L,Conjugate(cursub,cosets[m]));
      Append(~cuspnums,oldcuspnums[n]);
    end for;
  end for;
  printf "Done. There are %o subgroups of index <= %o.\n",#L,indbound;
// permgp := phi(ImageInLevelGL(H));
// permgp := ImageInLevelGL(H : N := N^2);
  permgp := ImageInLevelGL(H : N := N);
  printf "Finding which subgroups are contained in permgp...";
// sublist := [ n : n in [1..#L] | L[n] subset permgp and -L[n]!1 in L[n]];
  sublist := [ n : n in [1..#L] | L[n] subset permgp];
  printf "Done!\n";
  done := false;
  found := false;
  it := 1;
  goodgroup := 0;
  while (done eq false) do
    if (it in sublist) then
      //printf "Testing group %o.\n",it;
      cusps := cuspnums[it];
      llst := [ cuspnums[j] : j in [1..it-1] | L[it] subset L[j]];
      if #llst gt 0 then
        cuspsuper := Max(llst);
      else
        cuspsuper := 0;
      end if;
      if (cusps gt cuspsuper) then
        inde := Index(permgp,L[it]);
// sl2ind := Index(sub meet SL(2,Integers(N)),(L[it] @@ phi) meet SL(2,Integers(N)));
        L_N := sub<GL(2,Integers(N)) | Generators(L[it])>;
        sl2ind := Index(sub meet SL(2,Integers(N)),L_N meet SL(2,Integers(N)));
        if (inde eq sl2ind) then
          done := true;
          found := true;
          goodgroup := it;
          printf "Group %o works!\n",it;
          printf "It has %o cusps.\n",cusps;
        end if;
      end if;
      if (done eq false) then
        it := it + 1;
      end if;
    else
      it := it + 1;
    end if;
    if (it gt #L) then
      done := true;
      printf "We didn't find a good subgroup!\n";
      bad := 0;
      bad2 := 1/bad;
    end if;
  end while;
  assert cusps ge 2;
  // Here's the group we'll compute Eisenstein series for.
  // subsub := L[goodgroup] @@ phi;
  subsub := L[goodgroup];
  K := PSL2Subgroup(subsub);
  permsubsub := L[goodgroup];

  xmodfunc := 0;
  ymodfunc := 0;
  xcoord := 0;
  ycoord := 0;
  expdenomx := 0;
  expdenomy := 0;
  alist := [0,0,0,0,0];
  Xcov, haupt, Xcov_map, jmap_cov := GetModularFunctionAndModel(covergp);

  // If gencover eq 0 then we computed the Fourier expansion of a hauptmodul
  // We suppose that the Fourier expansion was stored with z as the root of unity.
  // This root of unity may be different than zeta.

  if gencover eq 0 then
    cycfield := BaseRing(Parent(haupt));
    ordofz := 2*Degree(cycfield);
    pow := Floor(N/ordofz);
    expdenom := ExponentDenominator(haupt);
    newhaupt := R!0;
    for n in [Valuation(haupt)*expdenom..AbsolutePrecision(haupt)*expdenom-1] do
      cof := Eltseq(Coefficient(haupt,n/expdenom));
      term := R!(&+[ cof[i]*zeta^(pow*(i-1)) : i in [1..#cof]]*q^(n/expdenom));
      newhaupt := newhaupt + term;
    end for;
    newhaupt := newhaupt + BigO(q^AbsolutePrecision(haupt));
    haupt := newhaupt;
  end if;
  if gencover eq 1 then
    //ee, coords, _ := GetModularFunctionAndModel(covergp);
    alist := aInvariants(Xcov);
    xcoord, ycoord := Explode(haupt);
    cycfield := BaseRing(Parent(xcoord));
    ordofz := 2*Degree(cycfield);
    pow := Floor(N/ordofz);
    newxcoord := R!BigO(q^AbsolutePrecision(xcoord));
    newycoord := R!BigO(q^AbsolutePrecision(ycoord));
    expdenomx := ExponentDenominator(xcoord);
    expdenomy := ExponentDenominator(ycoord);
    for n in [Valuation(xcoord)*expdenomx..AbsolutePrecision(xcoord)*expdenomx-1] do
      cof := Eltseq(Coefficient(xcoord,n/expdenomx));
      term := R!(&+[ cof[i]*zeta^(pow*(i-1)) : i in [1..#cof]]*q^(n/expdenomx));
      newxcoord := newxcoord + term;
    end for;
    for n in [Valuation(ycoord)*expdenomy..AbsolutePrecision(ycoord)*expdenomy-1] do
      cof := Eltseq(Coefficient(ycoord,n/expdenomy));
      term := R!(&+[ cof[i]*zeta^(pow*(i-1)) : i in [1..#cof]]*q^(n/expdenomy));
      newycoord := newycoord + term;
    end for;
    xcoord := newxcoord;
    ycoord := newycoord;
  end if;

  // Enumerate the representatives of the right cosets of subsub in covergp 
  // sorted by coset of sub in covergp

  // S1 and S2 are sets of representatives for the right cosets

  S1 := SetToSequence(RightTransversal(ImageInLevelGL(covergp : N := N),sub));
  S2 := SetToSequence(RightTransversal(sub,subsub));

// bigind := Index(covergp,K);
//  printf "The index of subsub in covergp is %o.\n",bigind;

  eis2basis := EisensteinSeries(ModularForms(K));
  assert #eis2basis gt 0;
  seq := [ i : i in [1..#eis2basis]];
  // The result here is not considered an Eisenstein object by magma
  // x := &+[ seq[m]*eis2basis[m] : m in [1..#eis2basis]];

  fourier_basis := [[[ActionOnEisensteinSeries(S2[j]*S1[i], x)
		       : x in eis2basis] : j in [1..#S2]] : i in [1..#S1]];

  fourierlist := [[ &+[seq[m]*qExpansion(fourier_basis[i][j][m], prec)
		   : m in [1..#eis2basis]] : j in [1..#S2]] : i in [1..#S1]];

  puiseux<q> := PuiseuxSeriesRing(BaseRing(Parent(fourierlist[1][1])));
  fourierlist := [[Evaluate(puiseux!f, q^(1/N)) : f in fs] : fs in fourierlist];

  vprintf ModularForms, 1: "Symmetrizing.\n";
  wt := 0;
  formsused := [];
  if (subsub eq sub) then
    wt := 2;
    formsused := [ fourierlist[i][1] : i in [1..#fourierlist]];
  else
    wt := 4;
    termnum := 0;
    for i in [1..#S1] do
      formtouse := R!0;
      maxnum := #S1*#S2*(#S2-1)/2;
      for j in [1..#S2] do
        for j2 in [j+1..#S2] do
          termnum := termnum+1;
          vprintf ModularForms, 2: "Doing term %o of %o.\n",termnum,maxnum;
          formtouse := formtouse + fourierlist[i][j]*fourierlist[i][j2];
        end for;
      end for;
      Append(~formsused,formtouse);
    end for;
  end if;
  vprintf ModularForms, 1: "Done!\n";
  chk := #{ formsused[i] : i in [1..#formsused]};
  s := 2;
  while (chk lt #S1) and (s lt #S2) do		     
		       //  if (chk lt #S1) then
    printf "Error - the number of roots is %o. This is less than %o.\n",chk,#S1;
    printf "Trying again.\n";
// wt := 6;
    s +:= 1;
    wt := 2*s;
    polyRing := PolynomialRing(BaseRing(Universe(fourierlist[1])), #S2);
    poly := ElementarySymmetricPolynomial(polyRing,s);
    formsused := [];
//    termnum := 0;
    for i in [1..#S1] do
      formtouse := Evaluate(poly,fourierlist[i]);
/*
      formtouse := R!0;
      maxnum := #S1*(#S2)*(#S2-1)*(#S2-2)/6;
      for j in [1..#S2] do
        for j2 in [j+1..#S2] do
          for j3 in [j2+1..#S2] do
            termnum := termnum + 1;
            printf "Doing term %o of %o.\n",termnum,maxnum;
            formtouse := formtouse + fourierlist[i][j]*fourierlist[i][j2]*fourierlist[i][j3];
          end for;
        end for;
      end for;
*/
      Append(~formsused,formtouse);
    end for;
// rechk := #{ formsused[i] : i in [1..#formsused]};
    chk := #{ formsused[i] : i in [1..#formsused]};
//printf "This time we have %o roots.\n",rechk;
    printf "This time we have %o roots.\n",chk;
  end while;
/*
    if (rechk lt #S1) then
      printf "We're still screwed!\n";
      bad := 0;
      bad2 := 1/bad;
    end if;
  end if;
*/
  if (chk lt #S1) then
      printf "We're still screwed!\n";
      bad := 0;
      bad2 := 1/bad;
  end if;

  effwt := 0;
  if (wt eq 6) then
    effwt := 6;
    denomfunc := Eisenstein(6,q : Precision := Ceiling(2*prec/N));
  end if;
  if (wt eq 4) then
    effwt := 4;
    denomfunc := Eisenstein(4,q : Precision := Ceiling(2*prec/N));
  end if;
  if (wt eq 2) then
    //if (Index(covergp) mod 3 eq 0) then
    primes := [x[1] : x in Factorization(N)];
    is_sub_gamma0 := exists(p){p : p in primes | covergp subset Gamma0(p)};
    if is_sub_gamma0 then
      effwt := 2;
      denomfunc := p*Eisenstein(2,q^p : Precision := Ceiling(2*prec / N))
         - Eisenstein(2,q : Precision := Ceiling(2*prec/N));
//      denomfunc := 2*Eisenstein(2,q^2 : Precision := Ceiling(2*prec/N)) - Eisenstein(2,q : Precision := Ceiling(2*prec/N));
    else
      effwt := 6;
      denomfunc := Eisenstein(6,q : Precision := Ceiling(2*prec/N))/Eisenstein(4,q : Precision := Ceiling(2*prec/N));
    end if;    
  end if;

  // Step 5 - Compute the minimal polynomial over Q(X(cover)) of
  // the modular function formsused[1]/denomfunc.

  degbound := Ceiling((effwt*Index(H))/(12*ind));
  R := Parent(denomfunc);
  S<xxx> := PolynomialRing(R);
  poly := S!1;
  for i in [1..#S1] do
    poly := poly*((R!denomfunc)*xxx - R!formsused[i]);
  end for;
  poly := poly/((R!denomfunc)^Degree(poly));
  modf := (R!formsused[1])/(R!denomfunc);

  inftyratpoints := false;
  noratpoints := false;

  if gencover eq 0 then
    coefflist := [];
    for m in [0..Degree(poly)-1] do
      printf "Call to ratfunc with m = %o.\n",m;
      ret := ratfuncrep(Coefficient(poly,m),haupt,(Degree(poly)-m)*degbound);
      //printf "Return of ratfunc is %o.\n",ret;
      Append(~coefflist,ret);
      printf "Result has degree %o.\n",Max(Degree(Numerator(ret)),Degree(Denominator(ret)));
    end for;
    Append(~coefflist,1);
    denom := FF!LCM([Denominator(coefflist[i]) : i in [1..#coefflist]]);
    scaledcoefflist := [ RR!(denom*coefflist[i]) : i in [1..#coefflist]];
    curveeq := &+[ Evaluate(scaledcoefflist[i+1],x)*y^i : i in [0..#coefflist-1]];
    cofs := Coefficients(curveeq,y);
    if not IsIrreducible(curveeq) then
      printf "Error! We didn't get a good primitive element!\n";
      printf "The factorization is %o.\n",Factorization(curveeq);
      bad := 0;
      bad2 := 1/bad;
    end if;
    // Case 1 - Degree is 2
    if (ind eq 2) then
      // First simplify the square root
      cofs := Coefficients(curveeq,y);
      disc := RR!Evaluate(cofs[2]^2 - 4*cofs[1]*cofs[3],[t,0]);
      denom := LCM([Denominator(Coefficient(disc,m)) : m in [0..Degree(disc)]]);
      FFF := Factorization(denom);
      if #FFF gt 0 then
        mult := &*[ FFF[n][1]^(2*Ceiling(FFF[n][2]/2)) : n in [1..#FFF]];
        disc := disc*mult;
        disc := ZZ!disc;
      else
        disc := ZZ!disc;
      end if;
      FFF2 := Factorization(disc);
      if #FFF2 gt 0 then
        discdiv := &*[ FFF2[n][1]^(2*Floor(FFF2[n][2]/2)) : n in [1..#FFF2]];
        newdisc := disc div discdiv;
      else
        newdisc := disc;
      end if;
      printf "Fairly simple model is y^2 = %o.\n",newdisc;
      // Here, y is the new uniformizer, and newdisc is a polynomial in
      // the old one.
      // Case 1a - Degree is 2 and genus is zero
      if (gen eq 0) then
        // uni is the modular function equal to y.
        // We should be able to manually build a conic now
        a := Rationals()!Coefficient(newdisc,2);
        b := -Rationals()!1;
        c := Rationals()!Coefficient(newdisc,0);
        d := Rationals()!0;
        e := Rationals()!0;
        f := Rationals()!Coefficient(newdisc,1);
        CC := Conic([a,b,c,d,e,f]);
        isrational, P := HasRationalPoint(CC);
        printf "The modular curve is a conic given by %o.\n",DefiningEquation(CC);
        if isrational then
          inftyratpoints := true;
          printf "This genus zero curve has a rational point on it, namely %o.\n",P;
          A := Parametrization(CC,P);
          xparam := A([tt,1])[1];
          yparam := A([tt,1])[2];
          printf "We have x = %o.\n",xparam;
          printf "We have y = %o.\n",yparam;
          // Build a polynomial ring over FF, the rational function field.
          RRRR<xx> := PolynomialRing(FF);
          newcurveeq := -xx^2 + a*tt^2 + f*tt + c;
          SSSS<yy> := FunctionField(newcurveeq);
          TTTT<zz> := PolynomialRing(SSSS);
          num := Numerator(yparam);
          denom := Denominator(yparam);
          uniformpoly := Evaluate(denom,zz)*yy - Evaluate(num,zz);
          unifunc := Roots(uniformpoly)[1][1];

          // unifunc is a uniformizer for the function field
          newpoly := MinimalPolynomial(unifunc);
          denom := LCM([Denominator(Coefficient(newpoly,i)) : i in [0..Degree(newpoly)]]);
          newpoly2 := &+[ Evaluate(RR!(denom*Coefficient(newpoly,i)),y)*x^i : i in [0..Degree(newpoly)]];
          if not Degree(newpoly2,y) eq 1 then
            printf "Something is wrong! We don't have a uniformizer!\n";
            printf "The polynomial is %o.\n",newpoly2;
            bad := 0;
            bad2 := 1/bad;
          end if;
          newcofs := Coefficients(newpoly2,y);
          initratfunc := -Evaluate(newcofs[1],[tt,0])/Evaluate(newcofs[2],[tt,0]);
          printf "We have y = %o.\n",initratfunc;
          printf "Here tt is the Hauptmodul for the group %o,\n",H;
          printf "and y is the Hauptmodul for group %o.\n",covergp;
          printf "Optimizing.\n";
          newratfunc, M := supersimplify(initratfunc);
          printf "The final model is y = %o.\n",newratfunc;
          M := ChangeRing(M,Rationals());
          M := M^(-1);
// if subnum in covergpset then
          // Tweak uniformizer
          printf "Computing modular function.\n";
          truncprec := Ceiling(AbsolutePrecision(modf)+20);
          // cofs := Coefficients(curveeq,y);
          modfunccofs := [ Evaluate(RR!Evaluate(cofs[i],[t,0]),(haupt+BigO(q^truncprec))): i in [1..#cofs]];
          olduni := 2*modfunccofs[3]*modf+modfunccofs[2];
          if #FFF gt 0 then
            aa, multsqrt := IsSquare(mult);
            olduni := olduni*multsqrt;
          end if;
          if #FFF2 gt 0 then
            aa, discdivsqrt := IsSquare(discdiv);
            uni := olduni/Evaluate(discdivsqrt,haupt+BigO(q^truncprec));
          else
            uni := olduni;
          end if;
          seqlist := ElementToSequence(unifunc);
          truncprec := Ceiling(AbsolutePrecision(uni)+20);
          printf "Computing uniformizer coefficients.\n";
          coefflist := [ Evaluate(seqlist[i],haupt+BigO(q^truncprec)) : i in [1..#seqlist]];
          printf "Computing uniformizer...\n";
          uniformize := &+[ coefflist[i]*uni^(i-1) : i in [1..#seqlist]];
          newhaupt := (M[1][1]*uniformize + M[1][2])/(M[2][1]*uniformize + M[2][2]);
// end if;
      else
        printf "This genus zero curve has no rational points!\n";
        noratpoints := true;  
      end if;
    end if;
    // Case 1b - Degree is 2 and genus is one
    if (gen eq 1) then
      locsov := true;
      if Degree(newdisc) eq 4 then
        HypC := HyperellipticCurve(newdisc);
        printf "Analyzing the curve y^2 = %o.\n",newdisc;
        if IsLocallySolvable(HypC,2) then
          printf "The curve has 2-adic points.\n";
          if (QuarticNumberOfRealRoots(newdisc) ge 1) or (LeadingCoefficient(newdisc) gt 0) then
            printf "The curve has real points too.\n";
            printf "Therefore it probably has rational points.\n";
            // All the modular curves we've computed have good reduction away
            // from 2. Note that the Shafarevich-Tate groups of all elliptic
            // curves with good reduction away from 2 over Q are trivial,
            // at least assuming strong BSD.
          else
            printf "The curve has no real points!\n";
            locsov := false;
          end if;
        else
          printf "The curve does not have any 2-adic points, and so it doesn't have any rational points either!\n";
          locsov := false;
        end if;
        if (locsov eq false) then
          noratpoints := true;
        else
          // If we get here, the curve should have a rational point.
          pointfound := false;
          searchbound := 1;
          pt := 0;
          while pointfound eq false do
            searchbound := searchbound * 10;
            S := Points(HypC : Bound := searchbound);
            if #S gt 0 then
              pointfound := true;
              pt := SetToIndexedSet(S)[1];
            end if;
          end while;
          printf "We found a point. It is %o.\n",pt;
          E, phi0 := EllipticCurve(HypC,pt);
          s := DefiningPolynomials(phi0);
          E2, phi := MinimalModel(E);
          printf "The modular curve is elliptic. It is the %o.\n",E2;
          s2 := DefiningPolynomials(Inverse(phi0*phi));
        end if;
      end if;
      if Degree(newdisc) eq 3 then
        newdisc := Evaluate(newdisc,t);
        // Right now, x is the old Hauptmodul, and y is the generator
        // of the new
        HypC := HyperellipticCurve(newdisc);
        E, phi0 := EllipticCurve(HypC);
        s := DefiningPolynomials(phi0);
        E2, phi := MinimalModel(E);
        printf "The modular curve is elliptic. It is the %o.\n",E2;
        s2 := DefiningPolynomials(Inverse(phi0*phi));
      end if;
      // Some writing data to files was removed here
      if (locsov eq true) then
        GG, phiphi := MordellWeilGroup(E2);
        if AnalyticRank(E2) eq 0 then
          printf "The rank of this elliptic curve is zero and the rational points are the following.\n";
          // Create the map from Xcur -> Xcover
          EE<XX,YY,ZZ> := EllipticCurve(aInvariants(E2));
          poly1 := Evaluate(s2[1],[XX,YY,ZZ]);
          poly2 := Evaluate(s2[3],[XX,YY,ZZ]);
//          Xcov,_ := GetModularFunctionAndModel(covergp);
          maptocover := map<EE -> Xcov | [poly1,poly2]>;
          for a in GG do
            curpt := phiphi(a);
// jimage := maptoj(covergp,Coordinates(maptocover(curpt)));
            jimage := jmap_cov(Coordinates(maptocover(curpt)));
            if jimage[2] eq 0 then
              printf "The point %o is a cusp.\n",curpt;
            else
              printf "The point %o maps to j = %o.\n",curpt,jimage[1];
            end if;
          end for;
        else
          inftyratpoints := true;
          printf "The rank of this elliptic curve is positive.\n";
          printf "The Mordell-Weil group is %o.\n",GG;
          printf "Generators are:\n";
          for a in Generators(GG) do
            printf "%o.\n",phiphi(a);
          end for;
// if subnum in covergpset then
            printf "Computing modular function.\n";
            truncprec := Ceiling(AbsolutePrecision(modf)+20);
            modfunccofs := [ Evaluate(RR!Evaluate(cofs[i],[t,0]),(haupt+BigO(q^truncprec))): i in [1..#cofs]];
            olduni := 2*modfunccofs[3]*modf+modfunccofs[2];
            if #FFF gt 0 then
              aa, multsqrt := IsSquare(mult);
              olduni := olduni*multsqrt;
            end if;
            if #FFF2 gt 0 then
              aa, discdivsqrt := IsSquare(discdiv);
              uni := olduni/Evaluate(discdivsqrt,haupt+BigO(q^truncprec));
            else
              uni := olduni;
            end if;
            xmodfunc := haupt;
            ymodfunc := uni;
            firstx := Evaluate(s[1],[xmodfunc,ymodfunc,1]);
            firsty := Evaluate(s[2],[xmodfunc,ymodfunc,1]);
            firstz := Evaluate(s[3],[xmodfunc,ymodfunc,1]);
            xmodfunc := firstx/firstz;
            ymodfunc := firsty/firstz;
            s3 := DefiningPolynomials(phi);
            nextx := Evaluate(s3[1],[xmodfunc,ymodfunc,1]);
            nexty := Evaluate(s3[2],[xmodfunc,ymodfunc,1]);
            nextz := Evaluate(s3[3],[xmodfunc,ymodfunc,1]);
            xmodfunc := nextx/nextz;
            ymodfunc := nexty/nextz;
// end if;
        end if;
      end if;
    end if;
    // Case 1c - Degree is 2 and genus is >= 2 (only genus 2 happens here)
    if (gen ge 2) then
      HypC := HyperellipticCurve(newdisc);
      newC, phi := ReducedMinimalWeierstrassModel(HypC);
      printf "Reduced model is %o.\n",newC;
      printf "Map is %o.\n",DefiningPolynomials(phi);
      J := Jacobian(HypC);
      highbound := RankBound(J);
      printf "The rank of the Jacobian is at most %o.\n",highbound;
      if (highbound eq 0) then
        PS := Chabauty0(J);
        PS := { phi(pt) : pt in PS };
        printf "The following is a list of all the points on the curve:\n";
      else
        PS := Points(newC : Bound := 100000);
        printf "Here are some points on the curve that we found:\n";
      end if;
      // Build the map to the cover
      phi2 := Inverse(phi);
      for pt in PS do
        pt2 := phi2(pt);
        printf "The point on the cover is %o.\n",pt2;
        if (pt2[3] eq 0) then
          p1pt := [1,0]; 
        else
          p1pt := [pt2[1]/pt2[3],1];
        end if;
// jinvar := maptoj(covergp,p1pt);
        jinvar := jmap_cov(p1pt);
        if (jinvar[2] eq 0) then
          printf "The point %o is a cusp.\n",pt;
        else
          printf "The point %o maps to j = %o.\n",pt,jinvar[1];
        end if;
        if IsSingular(newC!pt) then
          printf "The latter point is singular.\n";
        end if;
      end for;
    end if;
  end if;
  // Case 2 - Degree is > 2
  if (ind gt 2) then
    C := ProjectiveClosure(Curve(AffineSpace(Rationals(),2),curveeq));
    if (gen eq 0) then
      // This is called only for X_6, X_7 and X_55
      bound := 10;
      found := false;
      while found eq false do
        printf "Searching for a non-singular rational point with bound %o.\n",bound;
        plist := PointSearch(C,bound);
        it := 1;
        done := false;
        while done eq false do
          pt := plist[it];
          if not IsSingular(C!pt) then
            P := C!pt;
            done := true;
            found := true;
          else
            it := it + 1;
          end if;
          if (it gt #plist) then
            done := true;
            bound := bound*2;
          end if;
        end while;
        if bound gt 60000 then
          printf "No point found. Trying Magma!\n";
          C_conic, phi := Conic(C);
          found, P_conic := HasRationalPoint(C_conic);
          if found then
	    P := (phi^(-1))(P_conic);
          end if;
        end if;
      end while;
      inftyratpoints := true;
      printf "Parametrizing the curve.\n";
      A := Parametrization(C,P);
      printf "Found it!\n";
      xparam := A([tt,1])[1];
      yparam := A([tt,1])[2];
      printf "We have x = %o.\n",xparam;
      printf "We have y = %o.\n",yparam;
      // Build a polynomial ring over FF, the rational function field.
      RRRR<xx> := PolynomialRing(FF);
      SSSS<yy> := FunctionField(Evaluate(curveeq,[tt,xx]));
      TTTT<zz> := PolynomialRing(SSSS);
      num := Numerator(yparam);
      denom := Denominator(yparam);
      uniformpoly := Evaluate(denom,zz)*yy - Evaluate(num,zz);
      unifunc := Roots(uniformpoly)[1][1];
      seqlist := ElementToSequence(unifunc);
      truncprec := Ceiling(AbsolutePrecision(modf)+20);
      printf "Computing uniformizer coefficients.\n";
      coefflist := [ Evaluate(seqlist[i],haupt+BigO(q^truncprec)) : i in [1..#seqlist]];
      printf "Computing uniformizer...\n";
      uniformize := &+[ coefflist[i]*modf^(i-1) : i in [1..#seqlist]];
      newpoly := MinimalPolynomial(unifunc);
      denom := LCM([Denominator(Coefficient(newpoly,i)) : i in [0..Degree(newpoly)]]);
      newpoly2 := &+[ Evaluate(RR!(denom*Coefficient(newpoly,i)),y)*x^i : i in [0..Degree(newpoly)]];
      if not Degree(newpoly2,y) eq 1 then
        printf "Something is wrong! We don't have a uniformizer!\n";
        printf "The polynomial is %o.\n",newpoly2;
        bad := 0;
        bad2 := 1/bad;
      end if;
      cofs := Coefficients(newpoly2,y);
      initratfunc := -Evaluate(cofs[1],[tt,0])/Evaluate(cofs[2],[tt,0]);
      printf "We have y = %o.\n",initratfunc;
      printf "Here tt is the Hauptmodul for the group %o,\n",H;
      printf "and y is the Hauptmodul for group %o.\n",covergp;
      printf "Optimizing.\n";
      newratfunc, M := supersimplify(initratfunc);
      printf "The final model is y = %o.\n",newratfunc;
      //printf "M = %o.\n",M;
      M := ChangeRing(M,Rationals());
      M := M^(-1);
      newhaupt := (M[1][1]*uniformize + M[1][2])/(M[2][1]*uniformize + M[2][2]);
    end if;
    if (gen gt 0) then
      // This only happens for X_441 - we'll see if we can do the computation
      // anyway.
      printf "We must be doing X_441. Burcu Baran already worked this case out.\n";
      printf "The curve equation is %o.\n",C;
      printf "Determining hyperelliptic model.\n";
      A, B, phi0 := IsHyperelliptic(C);
      printf "The hyperelliptic model is %o.\n",B;
      printf "The map is %o.\n",phi0;
      // The answer should be yes.
      newC, phi := ReducedMinimalWeierstrassModel(B);
      printf "The minimal model is %o.\n",newC;
      printf "The map to the minimal model is %o.\n",phi;
      printf "The covering map written to a file will be wrong!\n";
    end if;  
  end if;
end if;

if gencover eq 1 then
  // In this case ind = 2
  // There are cases where gen = 1 here, but all of the base curves
  // have rank zero. That's why inftyratpoints = false.
  modfuncdisc := Coefficient(poly,1)^2 - 4*Coefficient(poly,0);
  reta, retb, retc := genusoneratfuncrep(modfuncdisc,xcoord,ycoord,2*degbound);
  newreta, newretb := simplifyelliptic(reta,retb,retc,alist);
  // OK, now we build the curve as a cover of the elliptic curve.
  deg := Max([2, 1 + Degree(newretb), Degree(newreta)]);
  P3 := ProjectiveSpace(Rationals(),3);
  CR<x,y,z,w> := CoordinateRing(P3);
  // This is where the curve should go
  // here we refer to alist, the a-invarints read from the model
  // of the cover.
  f1 := y^2*z + alist[1]*x*y*z + alist[3]*y*z^2
   - (x^3 + alist[2]*x^2*z + alist[4]*x*z^2 + alist[5]*z^3);
  f2 := w^2*z^(deg-2);
  if (newreta ne 0) then
    f2 := f2 - &+[ Coefficient(newreta,i)*x^i*z^(deg-i) : i in [0..Degree(newreta)]];
  end if;
  if (newretb ne 0) then
    f2 := f2 - &+[ Coefficient(newretb,i)*y*x^i*z^(deg-1-i) : i in [0..Degree(newretb)]];
  end if;
  printf "Our model is given by:\n";
  printf "%o = 0.\n",Evaluate(f1,[x,y,1,0]);
  printf "w^2 = %o + (%o)*y\n",Evaluate(newreta,x),Evaluate(newretb,x);
  I := ideal<CR | f1,f2>;
  I2 := PrimaryDecomposition(I);
  indextouse := Index([ IsPrime(I2[i]) : i in [1..#I2]],true);
  //printf "The primary decomposition is %o.\n",I2; 
  // Hopefully this is the right piece to look at.
  C := Curve(P3,I2[indextouse]); 
  printf "Computing genus of the model we got.\n"; 
  gencomp := Genus(C);
  printf "It is %o.\n",gencomp;
  if (gen ne gencomp) then
    printf "Error! Our model computation is wrong!.\n";
    bad := 0;
    bad2 := 1/bad;
  end if;
  // Do a search for rational points using the Mordell-Weil group of E
  mwbound := 100;
  EEE := EllipticCurve(alist);
  T, maptotors := TorsionSubgroup(EEE);
  torspoints := { maptotors(t) : t in T };
  MW, maptoMW := MordellWeilGroup(EEE);
  gener := maptoMW(MW.NumberOfGenerators(MW));
  // We are using that all of our elliptic curves have rank 1.
  bigptlist := [ m*gener + t : m in [-mwbound..mwbound], t in torspoints ];
  foundpoints := [];
  for p in bigptlist do
    if p[3] ne 0 then
      wsqr := Evaluate(newreta,p[1])+p[2]*Evaluate(newretb,p[1]);
      issqr, sqr := IsSquare(wsqr);
      if issqr then
        pt := [p[1],p[2],p[3],sqr];
        chk1, cpoint := IsCoercible(C,pt);
        if (chk1 eq true) then
          Append(~foundpoints,cpoint);
        end if;
        if (sqr ne 0) then
          pt := [p[1],p[2],p[3],-sqr];
          chk1, cpoint := IsCoercible(C,pt);
          if (chk1 eq true) then
            Append(~foundpoints,cpoint);
          end if;
        end if;     
      end if;
    end if;
  end for; 
  smallsearch := PointSearch(C,100);
  for pt in smallsearch do
    cpoint := C!pt;
    if Index(foundpoints,cpoint) eq 0 then
      Append(~foundpoints,cpoint);
    end if;
  end for; 
  printf "Here are the points we found on C:\n";
  for pt in foundpoints do
    if (pt[1] ne 0) or (pt[2] ne 0) or (pt[3] ne 0) then
		      // jinvar := maptoj(covergp,[pt[1],pt[2],pt[3]]);
      jinvar := jmap_cov([pt[1],pt[2],pt[3]]);
      if (jinvar[2] eq 0) then
        printf "The point %o is a cusp.\n",pt;
      else
        printf "The point %o maps to j = %o.\n",pt,jinvar[1];
      end if;
      if IsSingular(pt) then
        printf "The latter point is singular.\n";
      end if;
    else 
      printf "The point %o doesn't map to the elliptic curve.\n",pt;
      if IsSingular(pt) then
        printf "It is singular.\n";
      end if;
    end if;
  end for;
  if (gen eq 3) then
  // See if it is hyperelliptic or get the plane quartic model
  // but don't do anything with it.
    B := 0;
    A, B, phi2 := IsGeometricallyHyperelliptic(C);
    if (A eq true) then
      if HasRationalPoint(B) then
        printf "The curve is hyperelliptic. A hyperelliptic model is %o.\n",B;
        printf "The map is %o.\n",phi2;
      else
        printf "This genus 3 curve has a degree 2 map to a conic with no rational points!\n";
        noratpoints := true;
      end if;
    end if;
    if (A eq false) then
      printf "The curve is not geometrically hyperelliptic.\n";
      phi3 := CanonicalMap(C);
      C2 := CanonicalImage(C,phi3);
      quartmod := DefiningEquations(C2)[1];
      printf "It's plane quartic model is %o.\n",Evaluate(quartmod,[x,y,z]);
    end if;
  end if;  
end if;
  
  if (gen eq 0) then
    X<a,b> := ProjectiveSpace(Rationals(), 1);
    assert assigned newratfunc;
    num := Numerator(newratfunc);
    denom := Denominator(newratfunc);
    degdeg := Max(Degree(num),Degree(denom));
    poly1 := &+[ Coefficient(num,i)*a^i*b^(degdeg-i)
		   : i in [0..Degree(num)]];
    poly2 := &+[ Coefficient(denom,i)*a^i*b^(degdeg-i)
		   : i in [0..Degree(denom)]];
    //Y, _ := GetModularFunctionAndModel(covergp);
    covering_map := map< X -> Xcov | [poly1,poly2]>;
    expdenom := ExponentDenominator(newhaupt);
    bestexpdenom := LCM([ Denominator(a/expdenom) : a in [expdenom*Valuation(newhaupt)..expdenom*AbsolutePrecision(newhaupt)-1] | Coefficient(newhaupt,a/expdenom) ne 0]);
    endprec := Floor(bestexpdenom*AbsolutePrecision(newhaupt))/bestexpdenom;
    reparsedhaupt := BigO(qq^endprec);
    for m in [bestexpdenom*Valuation(newhaupt)..bestexpdenom*endprec-1] do
      cof := KK!Eltseq(Coefficient(newhaupt,m/bestexpdenom));
      reparsedhaupt := reparsedhaupt + cof*qq^(m/bestexpdenom);
    end for;
    haupt := reparsedhaupt;

    polyRing := CoordinateRing(Xcov);
    cov_polys := [AlgebraMap(jmap_cov)(x) : x in GeneratorsSequence(polyRing)];

    jmap := map< X -> X | [Evaluate(p, [poly1,poly2]) : p in cov_polys]>;
    
    return X, haupt, covering_map, jmap;
  end if;

  if (gen eq 1) then
    X<x,y,z> := EllipticCurve(aInvariants(E2));
    poly1 := Evaluate(s2[1],[x,y,z]);
    poly2 := Evaluate(s2[3],[x,y,z]);
    covering_map := map<X -> Xcov | [poly1,poly2]>;
    if (inftyratpoints eq true) then
      expdenom := ExponentDenominator(xmodfunc);
      bestexpdenom := LCM([ Denominator(a/expdenom) : a in [expdenom*Valuation
(xmodfunc)..expdenom*AbsolutePrecision(xmodfunc)-1] | Coefficient(xmodfunc,a/expdenom) ne 0]);
      endprec := Floor(bestexpdenom*AbsolutePrecision(xmodfunc))/bestexpdenom;
      reparsedxmodfunc := BigO(qq^endprec);
      for m in [bestexpdenom*Valuation(xmodfunc)..bestexpdenom*endprec-1] do
        cof := KK!Eltseq(Coefficient(xmodfunc,m/bestexpdenom));
        reparsedxmodfunc := reparsedxmodfunc + cof*qq^(m/bestexpdenom);
      end for;
      xcoord := reparsedxmodfunc;
      expdenom := ExponentDenominator(ymodfunc);
      bestexpdenom := LCM([ Denominator(a/expdenom) : a in [expdenom*Valuation
(ymodfunc)..expdenom*AbsolutePrecision(ymodfunc)-1] | Coefficient(ymodfunc,a/expdenom) ne 0]);
      endprec := Floor(bestexpdenom*AbsolutePrecision(ymodfunc))/bestexpdenom;
      reparsedymodfunc := BigO(qq^endprec);
      for m in [bestexpdenom*Valuation(ymodfunc)..bestexpdenom*endprec-1] do
        cof := KK!Eltseq(Coefficient(ymodfunc,m/bestexpdenom));
        reparsedymodfunc := reparsedymodfunc + cof*qq^(m/bestexpdenom);
      end for;
      ycoord := reparsedymodfunc;
    end if;
    return X, [xcoord, ycoord], covering_map, _;
  end if;

  catch e
      done := false;
      covergp := CoveringGroup(covergp);
      if Index(covergp) eq 1 then
	  done := true;
      end if;
  end try;
 
  until done;

  return false,_;
end function;


// Groups that don't work here - check why
// 6E1
