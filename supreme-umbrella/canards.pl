% base de regles
%r1
appartient_a(X, mrs_bond) :-
    canard(X),
    vit_dans(X, ce_village),
    marque_avec(X, b).
%r2
appartient_a(X, mrs_bond) :-
    canard(X),
    vit_dans(X, ce_village),
    porte_col_dentelle(X).
%r3
pas_gris(X) :-
    canard(X),
    vit_dans(X, ce_village),
    appartient_a(X, mrs_bond).

% base de faits
%f1
canard(george).
%f2
canard(augusta).
%f3
marque_avec(george, a).
%f4
marque_avec(george, b).
%f5
marque_avec(augusta, b).
%f6
vit_dans(george, ce_village).
%f7
vit_dans(augusta, ce_village).
%f8
porte_col_dentelle(george).
%run : swipl canards.pl
%tester : pas_gris(X).
%voir plusieurs lignes : ";"
%réponses : X = george ; X = george ; X = augusta ;