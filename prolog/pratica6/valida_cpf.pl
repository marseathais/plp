calcula_digito_verificador(Digitos, Peso, Digito) :-
    number_chars(Digitos, Lista_digitos),
    soma_digitos(Lista_digitos, Peso, Soma),
    Resto is Soma mod 11,
    (Resto < 2 -> Digito = 0 ; Digito is 11 - Resto),
    write(Soma),nl.
    
soma_digitos([], _, 0).
soma_digitos([D|Resto], Peso, Soma) :-
    atom_number(D, X),
    Peso2 is Peso - 1,
    soma_digitos(Resto, Peso2, SomaResto),
    Soma is SomaResto + X * Peso,
    write(Peso),nl.
    
valida_cpf(CPF) :-
    PenultimoDigito is (CPF // 10) mod 10,
    UltimoDigito is CPF mod 10,

    write(CPF),
    calcula_digito_verificador(CPF, 10, D1),
    calcula_digito_verificador(CPF, 11, D2),
    
    (D1 = PenultimoDigito, D2 = UltimoDigito -> write('CPF valido') ; write('CPF invalido')).
    
main :- 
    read(CPF),
    valida_cpf(CPF),
    halt.
 
:- initialization(main).
