freeze;

import "config.m": libroot;

chtrdir := Sprintf("%o/ChtrTables", libroot());
names := eval InternalLibDataRead(Sprintf("%o/names", chtrdir));

intrinsic CharacterTable(N::MonStgElt) -> SeqEnum[AlgChtrElt]
{The character table of the ATLAS group named by N, without a group attached}
    require N in names: "Character table not stored";
    file := Sprintf("%o/%o.ct", chtrdir, N);
    return eval InternalLibDataRead(file);
end intrinsic;

intrinsic CharacterTable(G::GrpAtlas) -> SeqEnum[AlgChtrElt]
{The character table of the ATLAS group G, without a group attached}
    N := Name(G);
    require N in names: "Character table not stored";
    file := Sprintf("%o/%o.ct", chtrdir, N);
    return eval InternalLibDataRead(file);
end intrinsic;

intrinsic CharacterTableNames() -> SetEnum[MonStgElt]
{The names of ATLAS groups with stored character tables}
    return names;
end intrinsic;

intrinsic HasCharacterTable(G::GrpAtlas) -> BoolElt
{Whether the group G has stored character table available}
    return Name(G) in names;
end intrinsic;
