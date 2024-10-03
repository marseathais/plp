inverse_sub(1, Number) :- read(Number).
inverse_sub(N, S) :- 
    N2 is N - 1,
    read(Number),
    inverse_sub(N2, S2),
    S is S2 - Number.

main :- 
    read(N),
    inverse_sub(N, S),
    write(S),
    halt.