/*

burbuja(+Lista, -R)
 es cierto si R unifica con una lista que contiene
 los elementos de Lista ordenados de menor a mayor.

*/

burbuja(Lista, Lista) :- ordenada(Lista).

burbuja(Lista, ):- append(L1, [E1, E2|L2], Lista)
  E1 > E2, append(L1, [E2, E1|L2], Lista2)



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
  
  
  
  
  
  
  

