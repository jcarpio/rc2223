/*

Predicado NumElem

+: El argumento tiene que estar instanciado
-: El argumento tiene que estar libre
?: El argumento puede estar libre o instanciado

num_elem(+Lista, -N)
 es cierto cuando N unifica con el número 
 de elementos de Lista.

Principio de Inducción

1) P(n0)
2) \/ n > n0, P(n-1) -> P(n)

              P(N) :- N2 is N-1, P(N2).
 
 
*/

num_elem([], 0).

num_elem([_|Resto], R2):-  num_elem(Resto, R), R2 is R+1.


