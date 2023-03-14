/*

mas_veces(+Lista, -Elem, -Num)
 es cierto cuando Elem unifica con el elemento
 que se repite más veces en la lista Lista
 y Num unifica con el número de veces que se
 repite dicho elemento.
 
mas_veces([1,2,3,2,3,1,5,6,9,1], E, N).
E=1
N=3

*/



/*
comprime(+Lista, R)
  es cierto cuando R unifica con una lista de la siguiente format
  
  comprime([a,a,a,b,b,c,c,c,a], R).
  R = [(a,3),(b,2),(c,3),(a,1)]

  [a,a,a,b,b,c,c,c,a] ->  [(a,3),(b,2),(c,3),(a,1)]
  [a,a,b,b,c,c,c,a] ->    [(a,2),(b,2),(c,3),(a,1)]
  
  [d,a,a,a,b,b,c,c,c,a] -> [(d,1),(a,3),(b,2),(c,3),(a,1)]
    [a,a,a,b,b,c,c,c,a] ->       [(a,3),(b,2),(c,3),(a,1)]
*/


comprime([],[]).
comprime([Cab, Cab|Resto], [(Cab,N2)|R]):- comprime([Cab|Resto], [(Cab,N)|R]), N2 is N+1.

comprime([Cab1, Cab2|Resto], [(Cab,N2)|R]):- Cab1 \= Cab2, comprime([Cab1|Resto], 





