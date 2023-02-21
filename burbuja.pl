/*
burbuja(+Lista, -R)
 es cierto si R unifica con una lista que contiene
 los elementos de Lista ordenados de menor a mayor.
 
 Ejemplo:
 ¿Qué sucede si pregunto a Prolog esto?
 burbuja([2,1,3,5,2], [1,2,3,4,5]).
 
*/

burbuja(Lista, Lista) :- ordenada(Lista).

burbuja(Lista, R):- append(L1, [E1, E2|L2], Lista),
  E1 > E2, append(L1, [E2, E1|L2], Lista2), burbuja(Lista2, R).

burbuja(Lista, R):- append(_, [E1, E2|_], Lista),
  E1 =< E2, burbuja(Lista, R).



/*
ordenada(+Lista)
 es cierto si los elementos de Lista están ordenados 
 de menor a mayor.
 Principio de Inducción
 1) P(n0)
 2) Para todo n > n0, P(n-1) -> P(n)
 
*/

ordenada([]).

ordenada([_]).

ordenada([Cab1, Cab2|Resto]) :- Cab1 < Cab2,
  ordenada([Cab2|Resto]).
  