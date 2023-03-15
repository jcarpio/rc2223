

/*

permutar(+Lista, -R)
  es cierto si R unifica con cualquier permutación de Lista.

*/

permutar([], []).

permutar([Cab|Resto], R2):- 
   permutar(Resto, R), insertar(Cab, R, R2). 
   
   
/*

insertar(+E, +Lista, -R)
   es cierto si R unifica con una lista que contiene
   los elementos de Lista con E insertado en cualquier
   posición.
   
*/

% bagof(R, permutar([1,2,3,4,5], R), L), length(L, N)
