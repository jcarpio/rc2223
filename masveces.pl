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

mas_veces(Lista, E, N):- msort(Lista, L), comprime(L,L2), n_mayor(L2, E, N).
  

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
comprime([E], [(E,1)]).
comprime([Cab, Cab|Resto], [(Cab,N2)|R]):- comprime([Cab|Resto], [(Cab,N)|R]), N2 is N+1.

comprime([Cab1, Cab2|Resto], [(Cab1,1)|R]):- Cab1 \= Cab2, comprime([Cab2|Resto], R).


/*
n_mayor(+Lista, -E, +N)
  es cierto si E unifica con el elemento de mayor N en la lista
  de tuplas Lista.
  
  n_mayor([(d,1),(a,3),(b,2),(c,3),(a,1)], E, N).
  E = c
  N = 3
*/


n_mayor([(E,N)], E, N).
n_mayor([(_,N)|Resto], E2, N2):- n_mayor(Resto, E2, N2), N2 > N.
n_mayor([(E,N)|Resto], E, N):- n_mayor(Resto, _, N2), N2 =< N. 
