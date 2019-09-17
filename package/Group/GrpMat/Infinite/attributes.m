freeze;

// AddAttribute (GrpMat, "Congruence");
declare attributes GrpMat: Congruence, UserWords, SLPGroup, InvMats;
declare attributes GrpMat: AbelianBasis;
declare attributes GrpMat: HirschNumber;
declare attributes GrpMat: SFChangeOfBasis;
declare attributes AlgMat: AbelianBasis, InvMats;
declare attributes AlgMat: UserWords;
declare attributes AlgMat: UserGenerators;
declare attributes GrpGPC: UserGenerators;
RF := recformat< Finite, Subgroup, Map, Virtual, Selberg, Isomorphism, 
                 Image, Relations, 
                 Nilpotent, Soluble, SolubleByFinite, NilpotentByFinite,
                 AbelianByFinite, CentralByFinite, CompletelyReducible >;

