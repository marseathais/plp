my_length([], 0).
my_length([_|T], L) :- my_length(T, L2), L is L2 + 1.

main :- 
    read(List),
    my_length(List, L),
    write(L),
    halt.