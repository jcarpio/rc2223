
/*

balanceado(+Arbol)
  es cierto si Arbol unifica con un árbol binario
  que para todo nodo, la diferencia entre la altura
  del sub arbol de la derecha y del sub arbol de la izquierda
  es como máximo 1.
  

*/


/*
altura(+Arbol, -N)
 es cierto si N unifica con la altura de Arbol. 

*/

altura(nil, 0).

altura(a(_, Hi, Hi),   ):-
