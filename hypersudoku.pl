/*

A Hyper Sudoku is solved by filling the numbers from 1 to 9 into the blank cells, but it has, 
unlike classic Sudoku. 13 regions (four regions overlap with the nine standard regions). In all regions, 
the numbers from 1 to 9 can appear only once. Otherwise, a Hyper Sudoku is solved like a normal Sudoku.

http://www.sudoku-space.com/hyper-sudoku/

*/

:- use_module(library(clpfd)).

sudoku(Filas) :-
        length(Filas, 9), maplist(same_length(Filas), Filas),
        append(Filas, Vs), Vs ins 1..9,
        maplist(all_distinct, Filas),
        transpose(Filas, Columnas), maplist(all_distinct, Columnas),
		Filas = [F1,F2,F3,F4,F5,F6,F7,F8,F9],
		bloques_distintos(F1,F2,F3),
		bloques_distintos(F4,F5,F6),
		bloques_distintos(F7,F8,F9),
		hyper_bloques_distintos(F2,F3,F4),
		hyper_bloques_distintos(F6,F7,F8).
		
/*
bloques_distintos(+L1, +L2, +L3)
  es cierto si los tres bloques 3x3 formados por las listas de longitud 9 L1, L2 y L3
  tienen elementos distintos.
*/
bloques_distintos([],[],[]).		
bloques_distintos([E11,E12,E13|Resto1], [E21,E22,E23|Resto2], [E31,E32,E33|Resto3]):-
    all_distinct([E11,E12,E13,E21,E22,E23,E31,E32,E33]),
    bloques_distintos(Resto1, Resto2, Resto3).	

/*	
hyper_bloques_distintos(+L1, +L2, +L3).	
*/	

hyper_bloques_distintos([],[],[]).
hyper_bloques_distintos([_],[_],[_]).
hyper_bloques_distintos([_,E12,E13,E14|Resto1], [_,E22,E23,E24|Resto2], [_,E32,E33,E34|Resto3]):-
  all_distinct([E12,E13,E14,E22,E23,E24,E32,E33,E34]),
  hyper_bloques_distintos(Resto1,Resto2,Resto3).
  
	
problem(1, P) :- % shokyuu
        P = [[1,_,_,8,_,4,_,_,_],
             [_,2,_,_,_,_,4,5,6],
             [_,_,3,2,_,5,_,_,_],
             [_,_,_,4,_,_,8,_,5],
             [7,8,9,_,5,_,_,_,_],
             [_,_,_,_,_,6,2,_,3],
             [8,_,1,_,_,_,7,_,_],
             [_,_,_,1,2,3,_,8,_],
             [2,_,5,_,_,_,_,_,9]].
			 
/*
[
[1,5,6,8,9,4,3,2,7],
[9,2,8,7,3,1,4,5,6],
[4,7,3,2,6,5,9,1,8],
[3,6,2,4,1,7,8,9,5],
[7,8,9,3,5,2,6,4,1],
[5,1,4,9,8,6,2,7,3],
[8,3,1,5,4,9,7,6,2],
[6,9,7,1,2,3,5,8,4],
[2,4,5,6,7,8,1,3,9]
]

*/			 


problem(2, P) :-  % shokyuu
        P = [[_,_,2,_,3,_,1,_,_],
             [_,4,_,_,_,_,_,3,_],
             [1,_,5,_,_,_,_,8,2],
             [_,_,_,2,_,_,6,5,_],
             [9,_,_,_,8,7,_,_,3],
             [_,_,_,_,4,_,_,_,_],
             [8,_,_,_,7,_,_,_,4],
             [_,9,3,1,_,_,_,6,_],
             [_,_,7,_,6,_,5,_,_]].

problem(3, P) :-
        P = [[1,_,_,_,_,_,_,_,_],
             [_,_,2,7,4,_,_,_,_],
             [_,_,_,5,_,_,_,_,4],
             [_,3,_,_,_,_,_,_,_],
             [7,5,_,_,_,_,_,_,_],
             [_,_,_,_,_,9,6,_,_],
             [_,4,_,_,_,6,_,_,_],
             [_,_,_,_,_,_,_,7,1],
             [_,_,_,_,_,1,_,3,_]].

problem(4, P) :- % hyper-sudoku
        P = [[9,3,_,_,_,_,_,_,_],
             [_,_,_,8,_,_,_,_,_],
             [8,_,6,_,_,_,_,_,2],
             [_,5,_,_,_,_,7,_,3],
             [7,_,8,_,_,_,_,1,_],
             [4,_,_,_,_,_,_,5,_],
             [3,_,5,6,_,7,_,_,9],
             [_,_,_,_,1,_,_,4,_],
             [2,_,_,_,_,_,_,_,6]].		

/*
[[9,3,4,7,5,2,8,6,1],
 [5,1,2,8,9,6,4,3,7],
 [8,7,6,3,4,1,5,9,2],
 [1,5,9,4,6,8,7,2,3],
 [7,6,8,2,3,5,9,1,4],
 [4,2,3,1,7,9,6,5,8],
 [3,4,5,6,2,7,1,8,9],
 [6,8,7,9,1,3,2,4,5],
 [2,9,1,5,8,4,3,7,6]
 ]

*/			 