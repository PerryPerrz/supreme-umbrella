%parent(john, ann).

%r1
q(X, Z) :-
    p(X, Y),
    q(Y, Z).
%f2
q(b, c).

%f1
p(a, b).