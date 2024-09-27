{
10. Realizar un programa modularizado que lea una secuencia de caracteres y verifique si cumple con el patrón
A$B#, donde:
- A es una secuencia de sólo letras vocales
- B es una secuencia de sólo caracteres alfabéticos sin letras vocales
- los caracteres $ y # seguro existen
Nota: en caso de no cumplir, informar que parte del patrón no se cumplió.
}


program P2P2P10;
function esAlfabetico(c:char):boolean;
begin
  esAlfabetico:= ((c >= 'a') and (c <= 'z')) or ((c >= 'A') and (c <= 'Z'));
end;
function esVocal(c:char):boolean;
begin
  esVocal := (c = 'a') or (c = 'e') or (c = 'i') or  (c = 'o') or (c = 'u') or (c = 'A') or (c = 'E') or (c = 'I') or (c = 'O') or (c = 'U');
end;
function aVocales:boolean;
var
  c:char;
  seguir:boolean;
begin
  read(c);
  seguir:= true;
    while (c<>'$') and (seguir) do begin
      if not (esVocal(c)) then
      seguir := false
      else
      read(c);
    end;
    aVocales:= seguir;
end;
function charAlfa:boolean;
var
  c:char;
  seguir:boolean;
begin
  read(c);
  seguir:= true;
  while (c <> '#') and (seguir) do
  begin
   if (not esAlfabetico(c)) or (esVocal(c)) then
     seguir:= false
     else
     read(c);
  end;
  charAlfa:= seguir;
end;
begin
  if(aVocales) then
    if(charAlfa) then
      writeln('cumple')
    else
      writeln('no cumple parte B')
  else
    writeln('no cumple parte A');
end.

