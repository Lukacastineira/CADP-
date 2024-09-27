{
8. Realizar un programa modularizado que lea secuencia de números enteros. La lectura finaliza cuando llega el
número 123456, el cual no debe procesarse. Informar en pantalla para cada número la suma de sus dígitos
pares y la cantidad de dígitos impares que posee.
}


program P2P2P8;
procedure numeros (var num:integer);
begin
  writeln('numero: '); readln(num);
end;
procedure sumadigito (num:integer; var impares, sumadigitos :integer);
var
  resto:integer;
begin
  impares:= 0;
  sumadigitos:= 0;
  while (num <>0) and (num<>12345) do 
  begin
    resto := num mod 10;
    if (resto mod 2 = 0) then
    sumadigitos := sumadigitos + resto 
    else
    impares := impares + 1;
    num:= num div 10
  end;
end;
var
  num, impares, sumadigitos:integer;
begin
  while (num <> 12345) do 
  begin
    numeros(num);
    sumadigito(num,impares,sumadigitos);
    writeln('suma digitos pares: ',sumadigitos);
    writeln('cantidad numeros impares: ', impares);
  end;
end.

