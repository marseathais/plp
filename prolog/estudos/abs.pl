abs_list([], []).
abs_list([H|T], [X|T2]) :- abs(H, X), abs_list(T, T2).

abs(N, R) :- (N < 0 -> R is -N ; R = N).

main :- 
    read(List),
    abs_list(List, R),
    write(R),
    halt.