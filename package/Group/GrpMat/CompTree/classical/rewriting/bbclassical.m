freeze;

import "natural.m":ClassicalElementToSLP;

import "selection.m":ClearFirstRow;

import "elements.m":X_, RootElementsOfOmega, X12_, Xr2_,
  ConjugateClassicalStandardToMyBasis;

import "smallermatrix.m": SmallerMatrix, ClassicalStandardForm;

import "diagonal.m":DiagonalElementToSLP;

// we define a record format to store the invariant of classical groups
bbclassicalattributesrf := recformat< Type : MonStgElt, 
                                   Dimension : RngIntElt,
                                   Field : FldFin >;

// the attribute StabilizerOfE1 holds the stabilizer of e1
AddAttribute( Grp, "StabilizerOfE1" );
AddAttribute( Grp, "StabilizerOfE1Transpose" );

AddAttribute( Grp, "IsBlackBoxClassicalGroup" );
AddAttribute( Grp, "AttributesOfBlackBoxClassicalGroup" );
AddAttribute( Grp, "StandardGenerators" );
AddAttribute( Grp, "BBGenerators" );
AddAttribute( Grp, "BBInverseGenerators" );
AddAttribute( Grp, "BBGroup" );
AddAttribute( Grp, "ClassicalStandardGenerators" );

AddAttribute( Grp, "Xin" );
AddAttribute( Grp, "RootElements" );
AddAttribute( Grp, "RootElementsTranspose" );
AddAttribute( Grp, "SiegTrans" );
AddAttribute( Grp, "SiegTransTranspose" );

AddAttribute( Grp, "ConjugatingElementToInternalForm" );

declare verbose ClassicalRewrite, 1;

// the rewriting will happen using the following black-box
// group used as a global variable throughout.

B := SLPGroup( 11 );

// the following functions return attributes of G

BBStandardGenerators := function( G )
    
    return G`StandardGenerators;
end function;

BBGenerators := function( G )
    
    return G`BBGenerators;
end function;

BBInverseGenerators := function( G )
  
  return G`BBInverseGenerators;
end function;

BBDimension := function( G ) 
    
    return G`AttributesOfBlackBoxClassicalGroup`Dimension;
end function;

BBField := function( G ) 
  
  return G`AttributesOfBlackBoxClassicalGroup`Field;
end function;

BBType := function( G ) 
  
  return G`AttributesOfBlackBoxClassicalGroup`Type;
end function;
    
IsBlackBoxClassicalGroup := function( G ) 
                      
       return assigned G`IsBlackBoxClassicalGroup and 
       G`IsBlackBoxClassicalGroup;
end function;

BBGroup := function( G ) 

  return G`BBGroup;
end function;

// the following function checks if G is a black-box classical group
// with the given parameters.
    
IsBlackBoxClassicalGroupWithParameters := function ( G, gens, type, dim, q ) 
                    
    q1 := case< type | "SU": q^2, default: q >;                     
    
    return assigned G`IsBlackBoxClassicalGroup and 
           G`IsBlackBoxClassicalGroup and
           G`ClassicalStandardGenerators eq gens and 
           BBType( G ) eq type and 
           BBDimension( G ) eq dim and 
           BBField( G ) eq GF( q1 );
    
end function;

// this function is almost the same as Evaluate( slp, gens ) but does
// not require that #gens eq no. of generators of Parent( slp ).

Evaluate2 := function( slp, list )
  
    for i in [1..#Generators( Parent( slp ))-#list] do
            Append( ~list, list[1]^0 );
    end for;
    
    return Evaluate( slp, list );
end function;

// the following function sets up the data structure inside G that will
// be used in the rewriting process.

BlackBoxClassicalGroup := procedure( ~G, gens, type, dim, q  ) 

  if IsBlackBoxClassicalGroupWithParameters( G, gens, type, dim, q ) then
    return;
  end if; 

  if type eq "SU" then
      qq := q^2;  
  else
      qq := q;
  end if;
  
  stgens := gens;

  if type eq "SL" then
      
      bbgens := [ B.1^B.2, B.2^-1, B.3^(B.1^-1*B.2), B.4, B.1, 
                  B.3, One( B ), One( B ), One( B ), One( B ), One( B )];
      bbgensinv := [ B.5, B.2^-1, B.6, B.4 ];
      newgens := [ Evaluate2( x, gens ) : x in bbgens ];
      gens := newgens;
      bbgroup := SLPGroup( 4 );

  elif type eq "Sp" then
        
      bbgens := [ B.1, B.2, B.3, B.4, B.5, ((B.6^B.2^2)^B.1)^-1,
                  (((B.6^B.2^2)^B.1)^-1)^(B.1^B.2), One( B ), One( B ),
                  B.4, One( B ) ];
      bbgensinv := [ B.1, B.2, B.3, B.4, B.5, (B.6^(B.1^-1*B.2^-2))^-1 ];
      newgens := [ Evaluate2( x, gens ) : x in bbgens ];
      gens := newgens; 
      bbgroup := SLPGroup( 6 );
        
    elif type eq "SU" and IsEven( dim ) then
        
        /* the output of ClassicalStandardGenerators contains
          a different root element to the one we usually use
          we append T_{f_1,e_2} as it is more convenient for
          our procedures.    */
          
        bbgens := [ B.1, B.2, B.3, B.7^B.2^2, B.5, B.6^B.2^2, 
                    (B.6^B.2^2)^(B.1^B.2), One( B ), One( B ), B.4, One( B )];
        bbgensinv := [ B.1, B.2, B.3, B.10,B.5,B.6^B.2^-2,B.4^B.2^-2 ];
        newgens := [ Evaluate2( x, gens ) : x in bbgens ];  
        gens := newgens;
        bbgroup := SLPGroup( 7 );
        
    elif type eq "SU" and IsOdd( dim )  then
        
       /* the output of ClassicalStandardGenerators contains
          a different root element to the one we usually use
          we append T_{f_1,w}(-1/2) as it is more convenient for
          our procedures.    */
        
        w := X_( type, dim, q );
        bbgens := [ B.1, B.2, B.3, B.7^B.2, B.5, w,
                    w^(B.1^B.2), B.6^B.2, One( B ), B.4, One( B ) ];
        bbgensinv := [ B.1, B.2, B.3, B.10, B.5, B.8^B.2^-1, B.4^B.2^-1 ];
        newgens := [ Evaluate2( x, gens ) : x in bbgens ];  
        gens := newgens;
        bbgroup := SLPGroup( 7 );

    elif type eq "Omega+" then

        bbgens := [ B.1, B.8, One( B ), B.3, B.4, B.5,
		     B.2, One( B ), One( B ), B.6*B.3, One( B )];
        bbgensinv := [ B.1, B.7, B.4, B.5, B.6, B.10*B.4^-1, 
                       One( B ), B.2 ];
        newgens := [ Evaluate2( x, gens ) : x in bbgens ];
        gens := newgens;
        bbgroup := SLPGroup( 8 );
        
    elif type eq "Omega" then
        
        w1, w2 := RootElementsOfOmega( type, dim, q );
        _, p := IsPrimePower( q );
    
        if dim mod 4 eq 1 then
            l1 := Integers()!( GF(p)!(-1/2));
            l2 := -2;
        else
            l1 := Integers()!( GF(p)!(1/2));
            l2 := 2;
        end if; 
        
        bbgens := [ B.1^B.4, B.4, One( B ), B.3^B.4, B.5, 
                    w1, w2, (B.2^B.4)^l1, One( B ), B.3^B.4, One( B )];
        bbgensinv := [ B.1^B.2^-1,(B.8^l2)^B.2^-1,B.4^B.2^-1,B.2,B.5 ];
        newgens := [ Evaluate2( x, gens ) : x in bbgens ];
        gens := newgens;  
        bbgroup := SLPGroup( 5 );
        
    elif type eq "Omega-" and IsEven( q ) then
        
        w1, w2 := X12_( type, dim, q );
        w3 := Xr2_( dim, q );
        exp := case< dim mod 4 | 0: 1, 2: -1, default: false >;
        bbgens := [ (B.1*B.2)^B.5, B.5, One( B ), (B.3^B.5),
                    B.4, w1, w2, (B.1^B.5)^exp, 
                    w3, (B.3^B.5)^(q+1), B.3 ];
        bbgensinv := [ (B.8^-exp)^(B.2^-1), (B.8^exp)^(B.2^-1)*B.1^(B.2^-1),
                       B.4^(B.2^-1),B.5,B.2];
        newgens := [ Evaluate2( x, gens ) : x in bbgens ];
        gens := newgens;   
        bbgroup := SLPGroup( 5 );
           
    elif type eq "Omega-" then
        
        w1, w2 := X12_( type, dim, q );
        w3 := Xr2_( dim, q );
        exp := case< dim mod 4 | 0: 1, 2: -1, default: false >;
        bbgens := [ B.1^B.5, B.5, One( B ), (B.3^B.5),
                    B.4, w1, w2, (B.2^B.5)^exp, 
                            w3, (B.3^B.5)^(q+1), B.3 ];
        bbgensinv := [ B.1^B.2^-1, (B.8^exp)^B.2^-1, 
                       B.11, B.5, B.2 ];
        newgens := [ Evaluate2( x, gens ) : x in bbgens ];
        gens := newgens;  
        bbgroup := SLPGroup( 5 );
        
    end if;

    if assigned G`SiegTrans then delete G`SiegTrans; end if; 
    if assigned G`SiegTransTranspose then
        delete G`SiegTransTranspose; end if;
    if assigned G`StabilizerOfE1Transpose then 
        delete G`StabilizerOfE1Transpose; end if;
    if assigned G`StabilizerOfE1 then delete G`StabilizerOfE1; end if;
    if assigned G`Xin then delete G`Xin; end if;
    if assigned G`RootElements then delete G`RootElements; end if;
    if assigned G`RootElementsTranspose then 
        delete G`RootElementsTranspose; end if;
    
    G`StandardGenerators := gens;
    G`BBGenerators := bbgens;
    G`BBInverseGenerators := bbgensinv;
    G`BBGroup := bbgroup;
    G`ClassicalStandardGenerators := stgens;
    
    G`AttributesOfBlackBoxClassicalGroup := rec< bbclassicalattributesrf | 
                                                 Type := type, 
                                                 Dimension := dim, 
                                                 Field := GF( qq ) >;
       
    G`IsBlackBoxClassicalGroup := true;
end procedure;

// One of the main intrinsic functions. It takes the group G as one
// of the parameters, and hence is able to store additional
// information about G that make subsequent rewriting faster.

  intrinsic ClassicalRewriteNatural( G::GrpMat[FldFin], tr::GrpMatElt[FldFin], g::GrpMatElt[FldFin] :
        type := false,
	CheckMembership := false )
        -> BoolElt, GrpElt
{G must be a matrix group over a finite field and tr must be an element of the  universe of G such that G is equal to a group generated by the output of ClassicalStandardGenerators( type, dim, q )^tr for some values of type, dim, and q. The function returns true and a straight-line program from the generating set of G given by ClassicalStandardGenerators( type, dim, q )^tr to g. The additional parameter type may specify the classical type of G. The use of this parameter is recommended when G may be viewed in more than one way as a classical group (such as SL(2,q)=Sp(2,q)). The possible values for type are "SL", "Sp", "SU", "Omega", "Omega+", and "Omega-". By default, the element g is assumed to be an element of G and no membership test is performed. In this case, the output true should be interpreted as stating that the rewriting process terminated successfully. The optional parameter CheckMembership can be used to force membership test before the rewriting procedure is performed. If this parameter is set true, then the function checks the membership of g in G. If the membership test fails, the function returns false, if the membership test is successful, the function returns true and an SLP to the element g.} 

     // get the parameters of the group
     dim := Dimension( G );
     F := CoefficientRing( G );
     gl := GL( dim, F );
     if Category( type ) eq BoolElt and not type then
         cltype := ClassicalType( G );

         error if Category( cltype ) eq BoolElt and not cltype, 
                  "G must be a classical group";
         type := case< cltype |
                 "linear": "SL",
                 "symplectic": "Sp", 
                 "unitary": "SU", 
                 "orthogonalplus": "Omega+",
                 "orthogonalminus": "Omega-",
                 "orthogonalcircle": "Omega",
                 default: false >;
     end if;
     
     q := #F; q0 := case< type | "SU": Round( Sqrt( q )), default: q >;
       
     // check membership in classical group first
       
       if CheckMembership then
         g0 := tr*MatrixAlgebra( F, dim )!g*tr^-1;
         if Determinant( g0 ) ne 1 then 
             return false, _; 
         end if;
         
         mat := ClassicalStandardForm( type, dim, #F ); 
                        
             if type eq "SU" then
             g01 := Transpose( MatrixAlgebra( F, dim )!
                            [ x^q0 : x in Eltseq( g0 )]);
             
         else
             
             g01 := Transpose( g0 );
             
         end if;
         
         newmat := g0*mat*g01; 
         
         if type in { "Sp", "SU" } and newmat ne mat then 
             return false, _;
         elif type in { "Omega", "Omega+", "Omega-" } then
             
             if mat + Transpose( mat ) ne newmat + Transpose( newmat ) 
                then
                 return false, _;
             end if;
                            
             if Characteristic( F ) ne 2 and 
                SpinorNorm( gl!g0, mat ) ne 0 then
                 return false, _;
             end if;
             
         end if;
         
     end if;
     
     // storing data in G
     gens := ClassicalStandardGenerators( type, dim, q0 );
     BlackBoxClassicalGroup( ~G, gens^tr, type, dim, q0 );
     
     G`ConjugatingElementToInternalForm := tr^-1*
            ConjugateClassicalStandardToMyBasis( type, dim, q );
     
     w := ClassicalElementToSLP( G, type, dim, q, g );
     
     return true, w;
          
end intrinsic;       

// the second intrinsic. see its description for what it does.

intrinsic ClassicalRewriteNatural( type::MonStgElt, 
        tr::GrpMatElt[FldFin], g::GrpMatElt[FldFin] :
	CheckMembership := false )  -> BoolElt, GrpElt 
{The function writes an element g of a classical group generated by ClassicalStandardGenerators( type, dim, q )^tr (where dim and q are inferred from g) as a straight-line program in the generators given by ClassicalStandardGenerators( type, dim, q )^tr. The possible values for type are "SL", "Sp", "SU", "Omega", "Omega+", and "Omega-". By default, the element g is assumed to be an element of G, and no membership test is performed. The output of the function is true and an SLP pointing to g. In this case, the output true should be interpreted as stating that the rewriting process terminated successfully. The optional parameter CheckMembership can be used to force membership test before the rewriting procedure is performed. If this parameter is set true, then the function checks the membership of g in G. If the membership  test fails, the function returns false, if the membership test is successful, the function returns true and an SLP to the element g.}

    require type in { "SL", "Sp", "SU", "Omega+", "Omega-", "Omega" }: 
    "Argument 1 should be a classical type";

     gl := Parent( g ); 
     dim := Dimension( gl );
     F := CoefficientRing( gl );
     q := #F; q0 := case< type | "SU": Round( Sqrt( q )), default: q >;
     gens := ClassicalStandardGenerators( type, dim, q0 )^tr;
     G := sub< Universe( gens ) | gens >;
          
     return ClassicalRewriteNatural( G, tr, g : 
                    CheckMembership := CheckMembership,
                    type := type );
end intrinsic;
 
intrinsic ClassicalRewrite( G::Grp, gens::SeqEnum, 
        type::MonStgElt, dim::RngIntElt, q::RngIntElt, g::GrpElt : 
        Method := "choose" ) -> BoolElt, GrpElt
{The group G must be isomorphic to the classical group given by the argument type, dim, and q; gens must be a generating set of G that satisfies ClassicalStandardPresentation( type, dim, q ); g must be an element in the same universe as the generators of G; the string type is one of "SL", "Sp", "SU", "Omega", "Omega+", "Omega-". The function checks if g is an element of G and returns true or false accordingly. Further, if g is in G, then the function also returns a straight-line program from gens to g. The algorithm employed in the function depends on whether G is given in its natural representation, in a matrix representation over a field in the defining characteristic (grey-box), or in some other representation that that does not fall under the previous cases (black-box). The optional parameter Method may be supplied to override the default choice of algorithm. The possible values of Method are "BB" (to force that the black-box algorithm be used) or "CharP" (to force the grey-box algorithm). If g is not an element of G, then the program attempts to find an SLP that points to an element of h such that gh^-1 centralises G. If such an SLP is found that the function returns false and this SLP.}
				
    require type in { "SL", "Sp", "SU", "Omega+", "Omega-", "Omega" }: 
    "Argument 3 should be a classical type";
    
    requirege dim, 2;
    requirege q, 2;
    require IsPrimePower( q ): "the field size should be a prime-power";
    
    mem := GetMaximumMemoryUsage();
    q2 := case< type | "SU": q^2, default: q >;
     
    /* 
      choosing method
    */
      
    if Method eq "choose" then 

        if Category( G ) eq GrpMat and 
           #CoefficientRing( G ) eq q2  and Dimension( G ) eq dim 
           and gens eq ClassicalStandardGenerators( type, dim, q ) 
           and < type, IsEven( q )> ne < "Omega", true > then
            return ClassicalRewriteNatural( G, g^0, g : 
                           CheckMembership := true,
                           type := type );
            
        elif Category( G ) eq GrpMat and 
          Characteristic( CoefficientRing( G )) eq
          PrimeBasis( q )[1] and IsAbsolutelyIrreducible( G ) then
            
            Method := "CharP";
            
        else
            
            Method := "BB";
            
        end if;
        
    end if;

    /* if Method eq "BB" and type in { "Omega+", "Omega-", "Omega" } then
       error "Black-box methods are not implemented for orthogonal groups";
    end if;
    */
    
    BlackBoxClassicalGroup( ~G, gens, type, dim, q );  
        
    /* 
       Is some cases we use the existing isomorphisms between
       the classical groups.
    */
      
    // Sp( 2,q ) equal to SL( 2, q )
      
    if type eq "Sp" and dim eq 2 then
           
         newgens := [ gens[1], gens[1], gens[3], gens[4]]; 
         newG := sub< Universe( gens ) | newgens >;
         
         v, p := ClassicalRewrite( newG, newgens, "SL", 
                         2, q, g : Method := Method );

         if assigned p and not Category( p ) eq BoolElt then
             BB := BBGroup( G );
             return v, Evaluate2( p, [ BB.1, BB.1, BB.3, BB.4]);
         else
             return false, _;
         end if;
         
     // SU( 2, q ) isom SL( 2, q )    
         
     elif type eq "SU" and dim eq 2 then
         
         newgens := [ gens[1], gens[1], gens[3], gens[4]];
         newG := sub< Universe( gens ) | newgens >;
         v, p := ClassicalRewrite( newG, newgens, "SL", 
                         2, q, g );
         if assigned p and not Category( p ) eq BoolElt then
             BB := BBGroup( G );
             return v, Evaluate2( p, [ BB.1, BB.1, BB.3, BB.4]);
         else
             return false, _;
         end if;  
     
     // Omega( 3, q ) isom SL( 2, q )
       
     elif type eq "Omega" and dim eq 3 and Method eq "BB" then
         
         newgens := [ gens[1], gens[1], gens[2], gens[3]];
         newG := sub< Universe( gens ) | newgens >;
         v, p := ClassicalRewrite( newG, newgens, "SL", 
                         2, q, g );
         if assigned p and not Category( p ) eq BoolElt then
             BB := BBGroup( G );
             return v, Evaluate2( p, [ BB.1, BB.1, BB.2, BB.3]);
         else
             return false, _;
         end if;  
         
     //    Omega-(4,q) isom SL(2,q^2)
           
     elif type eq "Omega-" and dim eq 4 and IsOdd( q ) and Method eq "BB" then
         
         newgens := [ gens[1], gens[1], gens[2], gens[3]];
         newG := sub< Universe( gens ) | newgens >;
         v, p := ClassicalRewrite( newG, newgens, "SL", 
                             2, q^2, g );
         if assigned p and not Category( p ) eq BoolElt then
             BB := BBGroup( G );
             return v, Evaluate2( p, [ BB.1, BB.1, BB.2, BB.3]);
         else
             return false, _;
         end if;  
         
     elif type eq "Omega-" and dim eq 4 and IsEven( q ) and Method eq "BB" then
         
         newgens := [ gens[2]*gens[1]*gens[2], gens[2]*gens[1]*gens[2], 
                      gens[1], gens[3]];

         newG := sub< Universe( gens ) | newgens >;
         v, p := ClassicalRewrite( newG, newgens, "SL", 
                             2, q^2, g );
         if assigned p and not Category( p ) eq BoolElt then
             BB := BBGroup( G );
             return v, Evaluate2( p, [ BB.2*BB.1*BB.2, BB.2*BB.1*BB.2, 
                            BB.1, BB.3]);
         else
             return false, _;
         end if;  
         
         // Omega+(4,q) isom SL(2,q) Y SL(2,q)
           
     elif type eq "Omega+" and dim eq 4 and Method eq "BB" then
             
             
          newgens1 := [ gens[4], gens[4], gens[5], gens[6]];
          newgens2 := [ gens[1], gens[1], gens[2], gens[3]];
          newG1 := sub< Universe( gens ) | newgens1 >;
          newG2 := sub< Universe( gens ) | newgens2 >;
          
          v1, p1 := ClassicalRewrite( newG1, newgens1, "SL", 2, q, g );
          if not assigned p1 or Category( p1 ) eq BoolElt then
              return false, _;
          end if;
          
          g1 := Evaluate( p1, newgens1 );
          
          v2, p2 := ClassicalRewrite( newG2, newgens2, "SL", 2, q, g1*g^-1 );
          if not assigned p2 or Category( p2 ) eq BoolElt then
              return false, _;
          end if;
          
          BB := BBGroup( G );
          
          p1 := Evaluate2( p1, [BB.4, BB.4, BB.5, BB.6 ] );
          p2 := Evaluate2( p2, [BB.1, BB.1, BB.2, BB.3 ] );
          
          return v2, p1*p2^-1;
             
     end if;
              
   /* 
       First we need to decorate G with some attributes that describe
       it as a classical group                        
    */
      

    type := BBType( G );
    gens := BBStandardGenerators( G );

    /* 
      The following function executes the rewriting procedure. 
      The procedure has 5 main steps. Let g be in element in the 
      black-box
      group G isomorphic to SX(n,q). Then in the first step we 
      find elements xl and xr such that xl*g*xr has e_1-row [1,0,...,0]. 
      Then we replace g by  xl*g*xr and we find such elements
      such that the e_1 row and the e_1-column of xl*g*xr 
      are [1,...,0]. 
      We replace g by  xl*g*xr and this element
      is considered as an element of the black-box group isomorphic to 
      SL(n-1,q) or SX(n-2,q) modulo the (e_1,e_1) entry. 
      The third step recovers
      this element as an explicit element of SX(n-[1,2],q) 
      and in the fourth step we write this element as an SLP in the 
      standard
      generators of SX(n-[1,2],q) using the implementation for the 
      natural representation.
        
      After doing these reductions, we obtain an 
      element which corresponds to a
      diagonal matrix and we write such an element as an SLP in the 
      last step. 
    */
        
   if type eq "Omega+" then
       S1 := gens[1]*gens[5]; progS1 := B.1*B.5;        
   else
       S1 := gens[1]; progS1 := B.1;
   end if;

   pr1l, pr1r, xl, xr := ClearFirstRow( G, g : 
                                 Method := Method, 
                                 FirstCall := true ); 

   if Category( pr1l ) eq BoolElt then return false, _; end if;
   g := xl*g*xr;

   if type eq "SL" then

       pr2l, pr2r, el1, el2 := ClearFirstRow( G, g : Method := Method, 
                                       Transpose := true );
       if Category( pr2l ) eq BoolElt then return false, _; end if;
       g := el1*g*el2; 
       
   else
       
       g := g^S1; 
       pr2l, pr2r, el1, el2 := ClearFirstRow( G, g : Method := Method );
       if Category( pr2l ) eq BoolElt then return false, _; end if;
       pr2l := pr2l*progS1^-1; pr2r := progS1*pr2r;
       g := el1*g*el2; 
   end if;

   pr3, pr4, el := SmallerMatrix( G, g : Method := Method ); 

   if Category( pr3 ) eq BoolElt then return false, _; end if;
   g := el*g*Evaluate2( pr3, gens )^-1;
   
   // in most of the cases we are finished at this point. The 
   // next function only has effect for some small dimensional 
   // black-box cases.  
   
   pr5, el := DiagonalElementToSLP( G, g : Method := Method );
   if Category( pr5 ) eq BoolElt then return false, _; end if; 
   g := g*el; 

   p := pr1l^-1*pr2l^-1*pr4^-1*pr5^-1*pr3*pr2r^-1*pr1r^-1;
   
   p := Evaluate2( p, BBGenerators( G ));
   bbgroup := BBGroup( G );
   p := Evaluate2( p, [ bbgroup.i : i in [1..#Generators( bbgroup )]]);
                
   vprint ClassicalRewrite, 1: 
          "ClassicalRewrite finished... memory used: ",
          GetMaximumMemoryUsage() - mem;
                
   return g eq One( G ), p;
end intrinsic;

