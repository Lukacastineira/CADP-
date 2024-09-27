{
11. Realizar un programa modularizado que lea una secuencia de caracteres y verifique si cumple con el patrón
A%B*, donde:
- A es una secuencia de caracteres en la que no existe el carácter ‘$’.
- B es una secuencia con la misma cantidad de caracteres que aparecen en A y en la que aparece a lo sumo
3 veces el carácter ‘@’.
- Los caracteres % y * seguro existen
Nota: en caso de no cumplir, informar que parte del patrón no se cumplió.
}


program P2P2P10;
function arroba (c:char):boolean;
begin
  arroba:= (c='@');
end;
function parteA : boolean;
var
  c : char;
  seguir : boolean;
begin
  read(c);
  seguir := true;
  while (c <> '%') and (seguir) do begin
    if (c='$') then
       seguir := false
    else
        read(c);
  end;
  parteA := seguir;
end;

procedure parteB (var partB:boolean);
var
  c:char;
begin
  partB:= true;
  read(c);
  while (c<>'*') and (partB) do begin
    if (arroba(c))  then
    partB:= false
    else
      read(c);
  end;
end;
var partB:boolean;
begin
    if (parteA) then begin
      parteB (partB);
      if (partB) then 
        writeln ('cumple')
      else
         writeln('no cumple B');
    end
    else
      writeln('no cumple A');
end.

