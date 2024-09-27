{
1. Realizar un programa que lea 10 números enteros e informe la suma total de los números leídos.
a. Modifique el ejercicio 1 para que además informe la cantidad de números mayores a 5.
}


program P1P2P1;
var
  num,total, x, numayor: integer;
  
begin
  numayor:= 0;
  total:= 0;
  for x:= 1 to 10 do 
  begin
  writeln('escriba un numero: ');
  read(num);
  total:= total + num;
  if (num>5) then
  numayor:= numayor + 1;
  end;
  writeln('La suma total de los numeros leidos: ', total);
  writeln('la cantidad de numeros mayores a 5 es: ', numayor);
 
end.