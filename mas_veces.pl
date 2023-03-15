/*-----------------------------------------------------
 mas_veces(+Lista, -Elem, -Num)
   es cierto cuando Elem unifica con el elemento
   que se repite más veces en la lista Lista
   y Num unifica con el número de veces que se
   repite dicho elemento.
------------------------------------------------------*/







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

comprime([Cab, Cab|Resto], [(Cab, N2)|R]):-  
        comprime([Cab|Resto], [(Cab, N)|R]), N2 is N+1.
