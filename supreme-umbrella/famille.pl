% Base de regles
parent(X, Y) :-
    pere(X, Y).
parent(X, Y) :-
    mere(X, Y).
grand_pere(X, Z) :-
    pere(X, Y),
    parent(Y, Z).
grand_mere(X, Z) :-
    mere(X, Y),
    parent(Y, Z).
ascendant(X, Y) :-
    parent(X, Y).
ascendant(X, Z) :-
    parent(X, Y),
    ascendant(Y, Z).

frere_soeur(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    not(X=Y).
oncle_tante(X, Y) :-
    parent(Z, Y),
    frere_soeur(Z, X).
cousin_e(X, Y) :-
    parent(Z, X),
    parent(W, Y),
    frere_soeur(Z, W).


% Base de faits
pere(marcel, maurice).
pere(maurice, juliette).
pere(maurice, leon).
pere(marcel, jeanne).
mere(henriette, maurice).
mere(cunegonde, leon).
mere(jeanne, ulysse).