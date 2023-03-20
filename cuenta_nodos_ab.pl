/*

cuenta_nodos(+Arbol, -N)
  es cierto si N unifica con el número
  de nodos de árbol binario Arbol.

  Principio de Inducción
  
  1) P(n0)
  2) Para todo n > n0, P(n-1) -> P(n)
                       P(N):- N2 is N-1, P(N2).  
*/

cuenta_nodos(nil, 0).

cuenta_nodos(a(_, Hi, Hd), R):-
  cuenta_nodos(Hi, Ri),
  cuenta_nodos(Hd, Rd),
  R is Ri + Rd + 1.
  
arbol_1( a(a, a(b, a(d,nil,nil), a(e,nil,nil)), a(c,nil,a(f,a(g,nil,nil),nil))) 
       ). 
	   
	   
arbol_2( a(1, a(2,nil,nil), a(3,nil,nil)) ).
