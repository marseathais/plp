lower_10(0) :- !.
lower_10(N) :- 
    (N < 10 -> write(N), nl ; false),
    N2 is N - 1,
    lower_10(N2).

main :- 
    read(N),
    lower_10(N),
    halt.