in(Elem, [Elem|_]) :- !.
in(Elem, [_|T]) :- in(Elem, T).

main :- 
    read(List),
    read(Elem),
    (in(Elem, List) -> write("true") ; write("false")),
    halt.