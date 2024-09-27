program anidamientos;
function analizarLetra : boolean;
var
letra : char;
begin
readln(letra);
if (letra >= 'a') and (letra <= 'z') then
analizarLetra := true
else
if (letra >= 'A') and (letra <= 'Z') then
analizarletra := false;
end; { fin de la funcion analizarLetra }
procedure leer;
begin
if (analizarLetra=true) then
writeln('Se trata de una minúscula')
else
writeln('Se trata de una mayúscula');
end; { fin del procedure leer}
var
ok : boolean;
begin { programa principal }
leer;
ok := analizarLetra;
if ok then
writeln('Gracias, vuelva prontosss');
end.