/*
ord_insercion(+Lista, -R)
  es cierto si R unifica con una lista que
  contiene los elementos de Lista ordenados
  de menor a mayor. En lista podemos tener 
  elementos repetidos.
  
  ?- ord_insercion([7,4,6,3,3,1,4,7,8,9], R), write(R).
  [1,3,3,4,4,6,7,7,8,9]

  R = [1, 3, 3, 4, 4, 6, 7, 7, 8|...] 
  
*/

ord_insercion([], []).

ord_insercion([Cab|Resto], R2):-  
  ord_insercion(Resto, R),
  insertar_ord(Cab, R, R2). 
  
  
/*
insertar_ord(+Elem, +Lista, -R)
  es cierto si R unifica con una lista
  que contiene los elementos de Lista 
  (que es una lista ordenada de menor
  a mayor) con Elem insertado en su 
  posición correcta.

*/  

insertar_ord(E, [], [E]).

insertar_ord(E, [Cab|Resto],[E, Cab|Resto]):- E =< Cab.

insertar_ord(E, [Cab|Resto], [Cab|R]):- E > Cab,
  insertar_ord(E, Resto, R).
