c) Si se desea cambiar la línea 11 por la sentencia: for i:=1 to 9 do ¿Cómo debe modificarse el
código para que la variable números contenga los mismos valores que en 1.b)?
}
program sumador;
type
vnums = array [1..10] of integer;
 var
 numeros : vnums;
 i : integer;
 begin
 for i:=0 to 10 do {primer bloque for}
 numeros[i-1] := i;
 for i:=1 to 9 do {segundo bloque for}
 numeros[i] := numeros[i] + numeros [i-1];
 writeln(numeros[i]);
 end.
