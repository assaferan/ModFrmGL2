# ModularSymbols
Extending magma's implementation of modular symbols to arbitrary congruence subgroups

Brief Description
-----------------
Currently magma's implementation only supports modular symbols for the subgroups Gamma0(N), Gamma1(N) of PSL2(Z)
(It also supports modular symbols for Gamma(N) by embedding it in Gamma0(N^2))
The goal of this extension is to support arbitrary congruence subgroups of PSL2(Z), given either by their 
generators or by their image in PSL(Z/NZ) (where N is the level).

Quick Start
-----------
Simply run the following line in magma: (from the main directory -  package)
load "./Geometry/ModSym/tests.m";

This attaches the package to your runnning magma session.

Status
------
In my view there are three development vectors:
1. Features / Bugs - things we would like to support and currently aren't working.
2. Profiling - things that are not as quick and efficient as we would like. This is particularly important 
in order to establish relevance of this package.
3. Testing - adding tests to verify that the results we are getting are in order.
Even though this usually falls within bugs, here the effort for it is quite significant, so it really deservres
a place of its own.

1. Features / Bugs
------------------

+ The package supports construction of a space of modular symbols from a subgroup G of GL(Z/NZ) 
with surjective determinant, and which includes -I, or by a subgroup of PSL2(Z) given by 
generators, or arbirtrary sequence of intersection and conjugation of standard subgroups.

+ The package supports construction of such a space for a given representation of the finite group
N(G)/G, where N(G) is the normalizer in PSL2(Z). 

+ The package also supports computation of the boundary map and cuspidal subspace for these.

- At the moment, there is no support for odd characters (i.e. -I not in group)

- Since Hecke operators do not always commute with the action of N(G)/G, these spaces at the moment
do not support q-Expansions -> Should restrict to those commuting with all of them.

- Newforms are not yet implemented.

- Something doesn't work when trying to compute Zywina's example. Should check why.


2. Profiling
------------

The main bottleneck at the moment for creating spaces is the function CosetReduce - 
Given an element of PSL2(Z), computes to which coset of G it belongs.

At the moment, it is implemented naively, by running over the (inverses of) coset representatives.
This can be improved, at least for small N (level), by creating a hash table from PSL(2,Z/NZ) into 
the list of coset representatives.
Should think if this could be improved in the general case.
Maybe can use the Todd-Coxeter table to increase efficiency.

3. Testing
----------
All tests are implemented in "Geometry/ModSym/tests.m" and could be run using the procedure DoTests(num);
Currently implemented are:
1. tests for the genera of Jeremy Rouse's 2-adic modular curves
2. tests for specific properties of spaces of modular spaces out of Stein's book (Modular Forms : A Computational Approach)

Tests to add:
1. Complete list of properties for Rouse's curves + including all curves by using his magma files.
2. Zywina's example from the video talk.
3. Other specific examples from books.
4. Adding standard testing procedures, to check that results for Gamma0, Gamma1 are identical.
(Some of it is already implemented, but as some of the features of the original package are still missing, such as newforms,
it can't be fully compared)
5. Computing the (log) canonical map and finding vanishing quadrics.
6. Computing the j-map.



