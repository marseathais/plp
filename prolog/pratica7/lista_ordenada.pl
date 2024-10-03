esta_ordenada([], "A lista esta ordenada.") :- !.
esta_ordenada([M, N|_], "A lista nao esta ordenada.") :- M > N, !.
esta_ordenada([_|T], R) :- esta_ordenada(T, R).

main :- 
    read(Lista),
    esta_ordenada(Lista, R),
    write(R),
    halt.

:- initialization(main).