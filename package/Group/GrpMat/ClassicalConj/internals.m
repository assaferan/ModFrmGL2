freeze;

// The internal intrinsics used to compute classes

intrinsic InternalClassesClassical( G::GrpMat ) -> BoolElt
{Internal function: The conjugacy classes of a classical group}
  vprint Classes: "Trying Classical group methods";
  ok := InternalClassesExtendedSL( G ) or
        InternalClassesExtendedSU( G ) or
        InternalClassesExtendedSp( G ) or
        InternalClassesExtendedOmega( G )
        ;
    
  // try other types
  return ok;
end intrinsic; 


