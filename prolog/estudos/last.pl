last([H|[]], H) :- !.
last([_|T], R) :- last(T, R).

main :- 
    read(List),
    last(List, R),
    write(R),
    halt.