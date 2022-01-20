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

// list of best value of M for the different groups
grps_M := [ <"11A6", 1>, <"14B6", 1>, <"17A6", 1>, <"18A6", 1>, <"18B6", 1>, <"18C6", 1>, <"20C6", 1>, <"21B6", 3>, <"21C6", 1>, <"22A6", 1>, <"22B6", 1>, <"22C6", 1>, <"24D6", 1>, <"24G6", 1>, <"27A6", 1>, <"28D6", 1>, <"28E6", 1>, <"28G6", 1>, <"28I6", 1>, <"30A6", 2>, <"30B6", 1>, <"30C6", 1>, <"30D6", 1>, <"30E6", 3>, <"31A6", 1>, <"31B6", 1>, <"32A6", 1>, <"32B6", 1>, <"35E6", 5>, <"36C6", 1>, <"36D6", 1>, <"36E6", 1>, <"36F6", 1>, <"36J6", 1>, <"36K6", 1>, <"39A6", 1>, <"45A6", 1>, <"45C6", 1>, <"45D6", 1>, <"48A6", 1>, <"48B6", 1>, <"48C6", 1>, <"48D6", 1>, <"48I6", 1>, <"48J6", 1>, <"50E6", 1>, <"52A6", 1>, <"54A6", 1>, <"54B6", 1>, <"56D6", 1>, <"56E6", 1>, <"58A6", 58>, <"60B6", 1>, <"60C6", 1>, <"60E6", 1>, <"60F6", 1>, <"63A6", 7>, <"66B6", 11>, <"66D6", 11>, <"69A6", 23>, <"71A6", 71>, <"72B6", 1>, <"72C6", 1>, <"72D6", 1>, <"78A6", 1>, <"79A6", 79>, <"86A6", 43>, <"87A6", 29>, <"90B6", 1>, <"90C6", 1>, <"100A6", 1>, <"121A6", 121> ];

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

