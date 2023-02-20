/*

concatenar(+Lista1, +Lista2, -R)
  es cierto si R unifia con una lista que
  contiene los elementos de Lista1 seguidos
  de los elementos de Lista2 y en el mismo orden.

Principio de Inducción
1) P(n0)
2) \/ n > n0, P(n-1) -> P(n)  
  
*/

concatenar([], L, L).

concatenar([Cab|Resto], L, [Cab|R]):-
  concatenar(Resto, L, R).


