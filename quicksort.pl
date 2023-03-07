/*
divide(+Pivote, +Lista, -Menores, -Mayores)
  es cierto si Menores unifica con los
  elementos de Lista que son menores o iguales
  que el Pivote. Mayores unifica con una lista
  que contiene los elementos mayores que el Pivote.
*/


divide(_, [], [], []).

divide(P, [Cab|Resto], [Cab|Menores], Mayores):-
   Cab =< P,
   divide(P, Resto, Menores, Mayores).

divide(P, [Cab|Resto], Menores, [Cab|Mayores]):-
   Cab > P,
   divide(P, Resto, Menores, Mayores).

/*

quicksort(+Lista, -R)
  es cierto si R unifica con una lista que contiene
  los elementos de Lista ordenados de menor a mayore
  por el método de QuickSort.  
  
*/

quicksort([], []).
quicksort([Cab|Resto], R):-
   divide(Cab, Resto, Me, Ma),
   quicksort(Me, RMe),
   quicksort(Ma, RMa),
   append(RMe, [Cab|RMa], R).
      
/*
gen_lista(+N, +Rango, -Lista)
 es cierto si Lista unifica con una lista
 de enteros aleatorios entre 0 y Rango - 1. Lista
 tendrá longitud N.
*/

gen_lista(0, _, []).
gen_lista(N, Rango, [Aleatorio|R]):- N > 0, N2 is N - 1,
  gen_lista(N2, Rango, R),
  random(0, Rango, Aleatorio).


