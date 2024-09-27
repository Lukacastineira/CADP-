program alcanceYFunciones;
var
suma, cant : integer;
function calcularPromedio: real;
var
prom : real;
begin
if (cant = 0) then
prom := -1
else
prom := suma / cant;
end;
begin
readln(suma);
readln(cant);
if (cant <> 0) then 
writeln('El promedio es: ' , calcularPromedio:2:2)
else
writeln('Dividir por cero no parece ser una buena idea');
end.
