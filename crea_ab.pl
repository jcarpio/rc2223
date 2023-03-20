/*

crea_ab(+Lista, -Arbol)
  es cierto si Arbol unifica con un árbol binario
  válido y balanceado que contiene las etiquetas
  de Lista.

*/


crea_ab([], nil).

crea_ab([Cab|Resto], a(Cab, R1, R2)):-
  length(Resto, L),
  Ldiv2 is L div 2,
  length(L1, Ldiv2),
  append(L1, L2, Resto),
  crea_ab(L1, R1),
  crea_ab(L2, R2). 
