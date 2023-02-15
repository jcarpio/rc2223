/*

my_reverse(+Lista, -R)
  es cierto si R unifica con una lista que contiene
  los elementos de Lista en orden inverso.

  Inducción
  1) P(n0)
  2) \/ n > n0, P(n-1) -> P(n)
                P(N):- N2 is N-1, P(N2).
   
   
*/

my_reverse([], []).

my_reverse(  ) :-  my_reverse( ),

