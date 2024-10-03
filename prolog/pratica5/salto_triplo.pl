distancia_total(D1, D2, D3, R) :- R is D1 + D2 + D3.
valida_salto(PeImpulsao, PeSalto1, PeSalto2) :- PeImpulsao = PeSalto1, PeImpulsao \= PeSalto2.

main :- 
    read(PeImpulsao),
    read(DistanciaSalto1),
    read(PeSalto1),
    read(DistanciaSalto2),
    read(PeSalto2),
    read(DistanciaSalto3),

    distancia_total(DistanciaSalto1, DistanciaSalto2, DistanciaSalto3, R),
    (valida_salto(PeImpulsao, PeSalto1, PeSalto2) -> write('Salto valido: '), write(R), halt; write('Salto invalido'), halt).

:- initialization(main).
