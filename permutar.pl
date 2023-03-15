/*
permutar(+Lista, R)
  es cierto si obtengo en R por backtracking todas las
  permutaciones.
*/

permutar([], []).
permutar([Cab|Resto], R2):- permutar(Resto, R),
                            insertar(Cab, R, R2).
/*
insertar(+E, +Lista, -R)
  es cierto cuando R unifica con una lista que contiene
  los elementos de Lista con E insertado en cualquier posición.
*/

insertar(E, Lista, [E|Lista]).
insertar(E, [Cab|Resto], [Cab|R]):- insertar(E, Resto, R).
