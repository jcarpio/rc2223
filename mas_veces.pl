/*-----------------------------------------------------
 mas_veces(+Lista, -Elem, -Num)
   es cierto cuando Elem unifica con el elemento
   que se repite más veces en la lista Lista
   y Num unifica con el número de veces que se
   repite dicho elemento.
------------------------------------------------------*/

mas_veces(Lista, E, N):- msort(Lista, R), comprime(R, R2), n_mayor(R2, E, N).


/* ----------------------------------------------------
comprime(+Lista, -R)
  es cierto si R unifica con una lista de la siguiente forma:  
  comprime([a,a,a,b,b,c,a,d,d,d], R)
  
  R=[(a,3), (b,2), (c,1), (a,1), (d,3)]
  
  [a,a,a,b,b,c,a,d,d,d] -> [(a,3), (b,2), (c,1), (a,1), (d,3)]

  [a,a,b,b,c,a,d,d,d] ->   [(a,2), (b,2), (c,1), (a,1), (d,3)]
  
  
  [e,a,a,a,b,b,c,a,d,d,d] -> [(e,1),(a,3), (b,2), (c,1), (a,1), (d,3)]
    [a,a,a,b,b,c,a,d,d,d] ->        (a,3), (b,2), (c,1), (a,1), (d,3)]
   
  Principio de inducción
  
--------------------------------------------------------*/

comprime([], []).

comprime([E], [(E,1)]).

comprime([Cab, Cab|Resto], [(Cab, N2)|R]):-  
        comprime([Cab|Resto], [(Cab, N)|R]), N2 is N+1.
		
comprime([Cab1, Cab2|Resto], [(Cab1, 1)|R]):- Cab1 \= Cab2, 
        comprime([Cab2|Resto], R).
		
/*------------------------------------------------------

n_mayor(+Lista, -E, -N)
 es cierto si E unifica con el elemento con N mayor
 de la lista de tuplas Lista. 
 
 n_mayor([(a,3), (b,2), (c,1), (a,1), (d,3)], E, N).
 E = a
 N = 3
 
-------------------------------------------------------*/		
  
n_mayor([(E,N)], E, N).

n_mayor([(_,N)|R], E2, N2):- 
  n_mayor(R, E2, N2), N2 > N.

n_mayor([(E,N)|R], E, N):- 
  n_mayor(R, _, N2), N2 =< N.
