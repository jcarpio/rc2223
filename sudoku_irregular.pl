sudoku(Filas):- length(Filas, 9),
                maplist(same_length(Filas, Filas)),
				append(Filas, Vars), Vars ins 1..9,
				maplist(all_distinct, Filas),
				transpose(Filas, Columnas),
				maplist(all_distinct, Columnas),
				Filas=[[E11,E12,E13,E14,E15,E16,E17,E18,E19],
				       [E21,E22,E23,E24,E25,E26,E27,E28,E29],
					   [E31,E32,E33,E34,E35,E36,E37,E38,E39],
					   [E41,E42,E43,E44,E45,E46,E47,E48,E49],
					   [E51,E52,E53,E54,E55,E56,E57,E58,E59],
					   [E61,E62,E63,E64,E65,E66,E67,E68,E69],
					   [E71,E72,E73,E74,E75,E76,E77,E78,E79],
					   [E81,E82,E83,E84,E85,E86,E87,E88,E89],
					   [E91,E92,E93,E94,E95,E96,E97,E98,E99]],
				% Bloque 1
                all_distinct([E11,E12,E13,E14,E15,E16,E23,E24,E25]),
				all_distinct([E11,E12,E13,E14,E15,E16,E23,E24,E25]).
				
/*


*/		
		
sudoku1([
        [_,_,_,_,3,_,_,_,_],
		[_,_,_,_,_,9,_,_,_],
		[_,5,6,9,_,_,2,1,_],
		[8,_,3,_,_,_,_,7,_],
		[7,_,_,3,4,5,_,_,9],
		[_,4,_,_,_,_,8,_,3],
		[_,7,5,_,_,6,9,4,_],
		[_,_,_,1,_,_,_,_,_],
		[_,_,_,_,5,_,_,_,_],
]).				

% sudoku1(S), sudoku(S), maplist(label, S).
