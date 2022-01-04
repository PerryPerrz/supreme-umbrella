% Suite de Fibonacci
%f1
suite_u(0, 1).
%f2
suite_u(1, 1).
%r1
suite_u(P, U) :- %On stock dans U le résultat de suite_u(P)
    P>=2,
    Q is P-1,
    W is P-2,
    suite_u(Q, V),
    suite_u(W, Z),
    U is Z+V. %On stock dans U le résultat final de la fonction (cf paramètres)