// This is a patch I ran on the file to make it possible to actually import the data

procedure patch_csg_file(genus, level)
    fname := Sprintf("csg%o-lev%o.dat", genus, level);
    r := Read(fname);
    load_idx := Index(r, "load");
    next_line := load_idx + Index(r[load_idx..#r], "\n");
    second_line := next_line + Index(r[next_line..#r], "\n");
    prev_file := Split(r[load_idx..next_line-2], " ;")[2];
    pre := Split(prev_file, "-")[1];
    med := Split(Split(prev_file, "-")[2], ".")[1];
    last_genus := eval pre[5..#pre];
    last_level := eval med[4..#med];
    import_line := "import " cat prev_file cat Sprintf(" : L%o_%o;", last_genus, 
						       last_level);
    L_line := Sprintf("L%o_%o := L%o_%o cat ", genus, level, last_genus, 
		      last_level);
    to_write := r[1..load_idx-1] cat "// " cat r[load_idx..next_line-1] cat 
		import_line cat "\n" cat L_line cat r[second_line-1..#r];
    Write(fname, to_write : Overwrite);
end procedure;
