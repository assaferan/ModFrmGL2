// freeze;

intrinsic Sleep(n::RngIntElt)
{Sleeps for n seconds}
    require n ge 0: "Argument must be a non-negative integer";
    _ := WaitForIO([] : TimeLimit := n*1000);
end intrinsic;
