# ModFrmGL2
Extending magma's implementation of modular symbols to arbitrary congruence subgroups

For the application of finding smooth models of modular curves, please refer to SmoothModelsREADME.md

Brief Description
-----------------
Currently magma's implementation only supports modular symbols for the subgroups Gamma0(N), Gamma1(N) of PSL2(Z)
(It also supports modular symbols for Gamma(N) by embedding it in Gamma0(N^2))
The goal of this extension is to support arbitrary congruence subgroups of PSL2(Z), given either by their 
generators or by their image in PSL(Z/NZ) (where N is the level).

Quick Start
-----------
Simply run the following line in magma: (from the main directory -  ModFrmGL2)
AttachSpec("ModFrmGL2.spec");

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
of real type with surjective determinant, and which includes -I, or by a subgroup of PSL2(Z) given by 
generators, or arbirtrary sequence of intersection and conjugation of standard subgroups.

+ The package supports construction of such a space for a given representation of the finite group
A/G, where A is a maximal subgroup in N(G) - the normalizer of G in PSL2(Z), such that the quotient is abelian.

+ The package also supports computation of the boundary map and cuspidal subspace for these.

+ The package supports computation of Hecke operators away from the level, and in some cases, also the Hecke operators at primes dividing the level.

+ The package supports NewformDecomposition

+ The package supports q-expansions of eigenforms

- At the moment, there is no support for odd characters (i.e. -I not in group)

- At the moment, there is no support for groups not of real type, or with non-surjective determinant. Given a subgroup of GL2(ZZ/ N ZZ), it will try to conjugate into a subgroup of real type, and to find a model with surjective determinant.

- At the moment, finding elliptic invariants and equations is not supported

- At the moment, q-expansions of Eisenstein modular forms are not supported


2. Profiling
------------

The main bottleneck at the moment is the computation of the Hecke operators at primes dividing the level. This is because we use Farey symbols to find generators for the gorup in order to conjugate it.

3. Testing
----------
All tests are implemented in "tests.m" and could be run using the procedure DoTests(num);
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



