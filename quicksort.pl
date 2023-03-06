/*
divide(+Pivote, +Lista, -Menores, -Mayores)
  es cierto si Menores unifica con los
  elementos de Lista que son menores o iguales
  que el Pivote. Mayores unifica con una lista
  que contiene los elementos mayores que el Pivote.
*/


divide(_, [], [], []).

divide(P, [Cab|Resto],  ,   ):-
   Cab =< P,
   divide(P, Resto, Menores, Mayores).
   
   
   
/*

gen_lista(+N, +Rango, -Lista)
 es cierto si Lista unifica con una lista
 de enteros aleatorios entre 0 y Rango - 1. Lista
 tendrá longitud N.

*/

gen_lista(0, []).

crypto_data_hash(test, Hash, [algorithm(A)]).


