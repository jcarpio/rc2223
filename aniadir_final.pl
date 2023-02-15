/*
  aniadir_final(+E, +Lista, -R)
    es cierto si R unifica con una lista
	que contiene los elementos de Lista,
	en el mismo orden,con E insertado al final.
	
*/

aniadir_final(E, [], [E]).

aniadir_final(E, [Cab|Resto], [Cab|R]):-
  aniadir_final(E, Resto, R).