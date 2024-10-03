sum(N, 0) :- N =< 0,!.
sum(N, R) :- 
    N > 0, 
    N2 is N - 1,
    sum(N2, R2),
    R is R2 + N.

main :- 
    read(N),
    sum(N, R),
    write(R),
    halt.