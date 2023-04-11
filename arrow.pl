

cierto(X, Y, Z) :- ( X=1, Y=2 -> Z=3 ; X=2, Y=2, Z=2 ).


% Equivalente a esto:
% cierto(Z,Y,Z) :- X=1, Y=2 -> Z=3.
% cierto(Z,Y,Z) :- X=2, Y=2 Z=2.

% X=1, Y=2 -> Z=3 
% Z=3 :- X=1, Y=2.
