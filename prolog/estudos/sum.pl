sum(N, 0) :- N =< 0,!.
sum(N, R) :-
    N > 0,
    Z is N - 1,
    sum(Z, R2),
    R is N + R2.




main :- 
    read(N),
    sum(N, R),
    write(R),
    halt.