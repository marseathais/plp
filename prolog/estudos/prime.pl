prime(N) :- N > 1, N2 is N // 2, \+ (between(2, N2, X), N mod X =:= 0).

main :-
    read(N),
    (prime(N) -> write('É primo'); write('Não é primo')),
    halt.