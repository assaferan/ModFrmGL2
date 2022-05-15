// Usage: magma -b d:={d} FindMaybeSmoothModels.m

// d := 6;
genus := (d-1)*(d-2) div 2;

load "shimuraType.m";
SetVerbose("ModularCurves", 1);
genus_dir := Sprintf("../data/modular\ curves/Genus\ %o", genus);
ChangeDirectory(genus_dir);
load "all_shim.m";

curve_names := [Sprintf("X_%o_shim", s) : s in shim[genus]];
curves := [eval name : name in curve_names];

print GetMaybeSmoothCurves(curves, curve_names, d);

exit;
