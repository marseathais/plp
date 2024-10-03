calcula_media(N1, N2, N3, R) :- Media is (N1 + N2 + N3)/3, classifica(Media, R).
classifica(M, "aprovado") :- M >= 7, !.
classifica(M, "reprovado") :- M < 4, !.
classifica(M, "na final"). 

main :-
    write("Aluno: "),
    read_string(user_input, "\n", "\r", _, Nome),
    write("Nota 1: "),
    read(N1),
    write("Nota 2: "),
    read(N2),
    write("Nota 3: "),
    read(N3),
    calcula_media(N1, N2, N3, R),
    write('Aluno: '), write(Nome), write('\nSituação: '), write(R), 
    halt.