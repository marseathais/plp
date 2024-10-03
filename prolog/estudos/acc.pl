acc(N, R) :- R is N + 1.

main :- 
    read(N),
    acc(N, R),
    write(R), nl,
    halt.