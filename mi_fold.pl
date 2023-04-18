/*

mi_foldl(Objetivo, Lista, Ini, R)
  es cierto si R unifica con el resultado de encadenar
  los Objetivos de la siguiente forma

  par(Letra, Numero, Letra-Numero)
  
  mi_foldl(par, [a,b,c], 0, R)
  a-0
  b-(a-0)
  R=c-(b-(a-0))
  
*/

mi_foldl(Goal, [E], Ini, R) :- call(Goal, E, Ini, R).

mi_foldl(Goal, [Cab|Resto], Ini, R2):-
  
    mi_foldl(Goal, Resto, Ini, R), call(Goal, Cab, R, R2).
