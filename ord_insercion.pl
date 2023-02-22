

/*

ord_insercion(+Lista, -R)
  es cierto si R unifica con una lista que
  contiene los elementos de lista ordenados
  de menor a mayor. En lista podemos tener 
  elementos repetidos.

*/


ord_insercion([], []).

ord_insercion([Cab|Resto], R2):-
  ord_insercion(Resto, R),
  insertar_ord(Cab, R, R2).
  
  
/*
insertar_ord(+E, +Lista, -R)
  Prerrequisito: Lista está ordenada 
  de menor a mayor.
  
  es cierto si R unifica con una lista
  que contiene los elementos de la lista
  ordenada de menor a mayor Lista, 
  con E insertado
  en su posición correcta.

*/

insertar_ord(E, [], [E]).

insertar_ord(E, [Cab|Resto],  [Cab|R]):-
  E > Cab, 
  insertar_ord(E, Resto, R).

insertar_ord(E, [Cab|Resto],  [E, Cab|Resto]):-
  E =< Cab.

