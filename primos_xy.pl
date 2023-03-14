/*

divisores(+N, -X, -Lista)
  es cierto si Lista unifica con la lista de divisores
  que dividen a N y que van desde 1 hasta X.

*/

divisores(_, 1, [1]).
divisores(N, X, [X|R]):- X > 1, X2 is X-1, 0 is N mod X, 
               divisores(N, X2, R).
                   
				   
divisores(N, X, R):- X > 1, X2 is X-1, 
          Z is N mod X, Z \= 0, divisores(N, X2, R).
		  

/*

primo(+N)
  es cierto si N es un número primo.
  
*/

primo(N):- divisores(N,N, [N,1]).

/*
primos_xy(+X, +Y, -L)
  es cierto si L unifica con una lista que contiene
  a los primos entre X e Y.
*/
                   			
primos_xy(X, Y, []) :- X > Y.
primos_xy(X, Y, [X|R]):- X =< Y, X2 is X+1, primo(X), primos_xy(X2, Y, R).
primos_xy(X, Y, R):- X =< Y, X2 is X+1, \+ primo(X), primos_xy(X2, Y, R).
                     

            
