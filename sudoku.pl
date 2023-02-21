

/*
sudoku(+Matriz)
 es cierto si Matriz unifica con un sodoku 9x9 válido.
 - Cada posición de la matriz solo puede contenter valores entre 1 y 9
 - Cada fila solo podrá contener valores dintintos entre 1 y 9
 - Cada columna solo podrá contener valores distintos entre 1 y 9
 - Cada bloque 3x3 solo podrá contener valores distintos entre 1 y 9
 

*/

sudoku(Filas) :- length(Filas, 9),