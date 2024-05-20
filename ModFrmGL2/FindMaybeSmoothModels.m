// Usage: magma -b d:={d} [i:={i}] FindMaybeSmoothModels.m

// d := 6;
d := StringToInteger(d);
genus := (d-1)*(d-2) div 2;

load "shimuraType.m";
SetVerbose("ModularCurves", 1);
genus_dir := Sprintf("../data/modular\ curves/Genus\ %o", genus);
ChangeDirectory(genus_dir);
load "all_shim.m";

curve_names := [Sprintf("X_%o_shim", s) : s in shim[genus]];
curves := [eval name : name in curve_names];

if assigned i then
    idx := StringToInteger(i);
    curves := curves[idx..idx+1];
    curve_names := curve_names[idx..idx+1];
end if;

print GetMaybeSmoothCurves(curves, curve_names, d);

exit;
