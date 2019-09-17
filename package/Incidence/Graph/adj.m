freeze;

intrinsic 'in'(S::SeqEnum, E::GrphEdgeSet) -> BoolElt
{Returns whether S defines an edge in E}
    require #S eq 2: "Sequences must have two vertices to represent an edge";

    V := VertexSet(ParentGraph(E));
    return V!S[1] adj V!S[2];
end intrinsic;

intrinsic 'in'(S::SetEnum, E::GrphEdgeSet) -> BoolElt
{Returns whether S defines an edge in E}
    require #S eq 2: "Sets must have two vertices to represent an edge";
    
    G := ParentGraph(E);
    require IsUndirected(G): "Sets may only represent edges of directed graphs";

    S := Setseq(S);
    V := VertexSet(G);
    return V!S[1] adj V!S[2];
end intrinsic;

