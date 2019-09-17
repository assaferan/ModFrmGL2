intrinsic SocleLayerFactors( P::ModGrp ) -> SeqEnum
{Determine the composition factors of each layer of the socle series
for the KG-module P.  Here a layer is the quotient of two adjacent 
terms of the socle series.}

    zeit := Cputime();
    S := SocleSeries(P);
    n := #S;

    layers := [];
    for i := n to 1 by -1 do

       if i ne 1 then
          Q := quo<S[i] | S[i-1]>; 
       else
          Q := S[1]; 
       end if;
       // i; Q;
       zeit := Cputime();
       factors := ConstituentsWithMultiplicities(Q);
       
       // factors;

       layer :=  [];
       dim_prev := 0;
       name_prev := 0;
       num_prev := 0;
       for factor in factors do

          // factor;
          dim := Dimension(factor[1]);  
          mul := factor[2];
          if dim eq dim_prev then
             name := name_prev + 1; 
          else
             name := 1;
          end if;

          sim := <dim, mul, name>;
          // sim;
          Append(~layer, sim);
          dim_prev := dim;
          name_prev := name;

       end for; // factors
       Append(~layers, layer);

    end for; // 
          
    return layers;

 end intrinsic;

 intrinsic PrintSocleStructure( L::SeqEnum) 
 {Display the composition factors of the layers L of the socle series 
 of a KG-module}

    letters := [ "a", "b", "c", "d", "e", "f", "g", "h",
                 "i", "j", "k", "l", "m", "n", "o", "p",
                 "q", "r", "s", "t", "u", "v", "w", "x",
                 "y", "z" ];

    ncols := GetColumns();
    layers := L;
    if ncols lt 120 then
       SetColumns(120);
       ncols := 120;
    end if;
    mid := ncols div 2;
    pr_list := [];
    for i := 1 to #layers do

      sims := layers[i];
      num_sims := #sims;

          stg := "";
          for k := 1 to #sims do
             factor := sims[k];
             dim := factor[1];
             mul := factor[2];
             name := factor[3];
             // k, dim, mul, name;
          
             i2s := IntegerToString(dim);
             if (k+1 le num_sims) and (sims[k+1][1] eq dim) 
                            or
             ( k-1 ge 1 and sims[k-1][1] eq dim)  then
               one := i2s cat letters[name] cat  " ";
             else
               one := i2s cat " ";
             end if;
             for l := 1 to mul do
               stg := stg cat one;
             end for;
          end for;
          Append(~pr_list, stg);

    end for;

    max_stg := 0;
    for stg in pr_list do
       max_stg := Maximum(max_stg, #stg div 2);
    end for;

    centre := 20 + (max_stg div 2);
    printf "\n";
    for x in pr_list do
       stg := x;
       lead_spaces := centre  - (#stg div 2);
       // #stg, lead_spaces;
       space := " ";
       spaces := "";
       for i := 1 to lead_spaces do spaces cat:= space; end for;
       // centre; #spaces; #stg;
       stg := spaces cat stg;
       print stg;
    end for;
    printf "\n";
          
end intrinsic;
   
