:- use_module(library(clpfd)).

/*

list_without_nths(+ListaValores, +ListaPosiciones, -R)
  es cierto si R unifica con una lista que contiene los
  elementos de ListaValores eliminando aquellos que 
  ocupan las posiciones que indica ListaPosiciones.
  Los valores de posiciones empiezan en 0.

 list_without_nths("abcd", [3], "abc").  
  
*/

 list_without_nths(Lista, [], Lista).
 
 list_without_nths(Lista, [Cab|Resto], R2):-
   list_without_nths(Lista, Resto, R), elimina_pos(R, Cab, R2).
   
/*   
 elimina_pos(+Lista, +Pos, -R)
   es cierto si R unifica con una lista que contiene los elementos
   de Lista exceptuando el que ocupa la posición Pos. Los
   valores de posiciones empiezan en 0.
*/

 elimina_pos([], _, []).
 
 elimina_pos([_|Resto], 0, Resto).
 
 elimina_pos([Cab|Resto], Pos, [Cab|R]):- Pos > 0, Pos2 #= Pos - 1,
   elimina_pos(Resto, Pos2, R).
