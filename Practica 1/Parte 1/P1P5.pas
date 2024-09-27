{
5. Modifique el ejercicio anterior para que, luego de leer el número X, se lean a lo sumo 10 números
reales. La lectura deberá finalizar al ingresar un valor que sea el doble de X, o al leer el décimo
número, en cuyo caso deberá informarse “No se ha ingresado el doble de X”.
}


program P1P5;
const 
  contador=10;
var
  numreal, dobledereal: real;
  cont: integer;
begin
  cont:= 0;
  read (numreal);
  dobledereal := numreal*2;
  while (numreal <> dobledereal) and (cont < contador) do begin
    read (numreal);
    cont:= cont + 1;
  if (numreal<>dobledereal) and (cont = contador) then
      writeln('no se ha ingresado el doble de x');
  end;
end.