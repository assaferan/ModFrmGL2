# Smooth Models of Modular Curves
Using the ModFrmGL2 package to compute smooth models of modular curves.

Brief Description
-----------------
The file ModFrmGL2/FindMaybeSmoothModels.m can be run with a degree as an argument to find all modular curves of Shimura type of a certain degree (d <= 8) that might be modular. (In the sense that the corresponding Betti number in Green's conjecture does not vanish).

Warning : This may take a long time and a large amount of memory.

The models themselves can be found in the repository https://github.com/assaferan/ModularCurvesData in the folder "modular curves", classified in folders according to their genus. Each curve is given in a *.m file labeled by its Cummins-Pauli label. Curves of Shimura type have an appended "_shim" suffix, so for example a curve corresponding to the congruence subgroup 9A10 is listed under "Genus 10/9A10_shim.m".

The code that computes the Betti numbers can be found in ModFrmGL2/SmoothModel.m. This file also contains code to compute the image of a curve in P2 using the three divisors with maximal multiplicity, which in cases without higher order cancellation (quadratic and above) yields back the smooth plane model.

The file ModFrmGL2/Petri.m contains code that, given a canonical model of a genus 10 curve, produces the embedded Veronese surface in which it is contained.

The file ModFrmGL2/congruence.m contains other auxiliary functions which we have used in the project, e.g. to find models with surjective determinant, to determine groups of Shimura type, etc.

Here are examples of using the code for specific curves
> AttachSpec("ModFrmGL2/ModFrmGL2.spec");
> load "data/modular\ curves/Genus\ 6/11A6.m";
> GradedBettiNumberGreen(X_11A6,5);
0
> C := GetP2Image(X_11A6, fs_11A6);
...

> load "data/modular\ curves/Genus\ 10/9A10_shim.m";
> GradedBettiNumberGreen(X_9A10_shim,6);
0
> C := GetP2Image(X_9A10_shim, fs_9A10_shim : Shimura);
