AttachSpec("ModFrmGL2.spec");

dir := GetCurrentDirectory();
ChangeDirectory("/Users/eranassaf/Dropbox\ \(Dartmouth\ College\)\
/Research/ModularSymbols/csg24.dat/");
// load "csg10-lev168.dat";
load "csg15-lev240.dat";
ChangeDirectory(dir);

import "congruence.m" : LoadGroups, qExpansionBasisShimura;
import "congruence.m" : LoadGroupsByGenus;
import "congruence.m" : write_qexps;

grps := LoadGroups(L);
grps_by_genus := LoadGroupsByGenus(L);
grps_6 := [grps[name] : name in grps_by_genus[6]];
grps_10 := [grps[name] : name in grps_by_genus[10]];
grps_15 := [grps[name] : name in grps_by_genus[15]];
shim6 :=  [ "11A6", "22C6", "31A6", "31B6",
            "58A6", "71A6", "79A6", "121A6" ];
shim10 :=  [ "9A10", "18E10", "18M10", "26D10", "27B10", "28D10", "36Q10",
             "37A10", "38A10", "46A10", "54A10", "54I10", "81A10", "86A10"
             , "92A10", "108F10", "127A10" ];

SetDebugOnError(true);

procedure computeShimuraModularCurves()
    for name in shim6 do
	X, fs := qExpansionBasisShimura(name, grps);
	write_qexps(name cat "_shim", fs, X);
	print "Group ", name, " - done!";
    end for;

    for name in shim10 do
	X, fs := qExpansionBasisShimura(name, grps);
	write_qexps(name cat "_shim", fs, X);
	print "Group ", name, " - done!";
    end for;
end procedure;

