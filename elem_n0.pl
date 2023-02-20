/*

elem_n0(+Pos, +Lista, -Elem) que es cierto cuando
Elem unifica con el elemento que ocupa la posición 
Pos dentro de Lista empezando a contar desde el 0.

Principio de Inducción
1) P(n0)
2) \/ n > n0, P(n-1) -> P(n)

*/

elem_n0(0, [Cab|_], Cab).

elem_n0(Pos, [_|Resto], Elem) :-  Pos > 0,
  Pos2 is Pos-1, elem_n0(Pos2, Resto, Elem).
  
  
% elem_n0(4, [1,2,3,4,5,6], 5)
% elem_n0(3, [2,3,4,5,6], 5)
 



