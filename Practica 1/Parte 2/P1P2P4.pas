{
4. Realizar un programa que lea 1000 números enteros desde teclado. Informar en pantalla cuáles son
los dos números mínimos leídos.
a. Modifique el ejercicio anterior para que, en vez de leer 1000 números, la lectura finalice al leer
el número 0, el cual debe procesarse.
b. Modifique el ejercicio anterior para que, en vez de leer 1000 números, la lectura finalice al leer
el número 0, el cual no debe procesarse
}


program P1P2P4;
var
  num, i, minimo1, minimo2 :integer;
begin
  minimo1:= 32767;
  minimo2:=32767;
  for i:=1 to 1000 do begin
  writeln('escribe un numero: ');
  read(num);
  if (minimo1>num) then
      begin
        minimo2:= minimo1;
        minimo1:= num; 
      end
  else
  if(minimo2>num) then
    minimo2:= num;
  end;
  writeln('los numeros minimos es: ',minimo1, ' y ',minimo2);
end.