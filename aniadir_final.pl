/*

aniadir_final(+Elem, +Lista, -R)
  es cierto si R unifica con una lista que contiene
  los elementos de Listo con Elem insertado al final.

  Principio de Inducción Matemático
  1) P(n0)
  2) \/ n > n0, P(n-1) -> P(n)
  
*/

aniadir_final(Elem, [], [Elem]).

aniadir_final(Elem, [Cab|Resto], [Cab|R]):-
  aniadir_final(Elem, Resto, R).

% Se puede hacer también de esta forma:
% aniadir_final(E, Lista, R):- append(Lista, [E], R).  
% Lo hemos hecho con la recursividad para seguir
% trabajando el uso del principio de inducción matemático.