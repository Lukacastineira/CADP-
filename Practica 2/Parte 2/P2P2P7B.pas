{
7. 
a. Realizar un módulo que reciba como parámetro un número entero y retorne la cantidad de dígitos que
posee y la suma de los mismos.
b. Utilizando el módulo anterior, realizar un programa que lea una secuencia de números e imprima la
cantidad total de dígitos leídos. La lectura finaliza al leer un número cuyos dígitos suman exactamente 10, el
cual debe procesarse.
}


program P2P2P7;
procedure leenteros (var num:integer);
begin
  writeln('un numero: '); readln(num);
end;
procedure nument ( num:integer; var cantdig,sumadigitos:integer);
var 
  resto: integer;
begin
  sumadigitos:= 0;
  while (num<> 0) do 
  begin
    cantdig:= cantdig + 1;
    resto := num mod 10;
    sumadigitos := sumadigitos + resto ;
    num:= num div 10;
  end;
end;
var
  num, cantdig, sumadigitos:integer;
begin
  sumadigitos:=0;
  while (sumadigitos<> 10) do begin
  leenteros(num);
  nument(num, cantdig, sumadigitos);
  end;
  writeln ('cantidad total de digitos leidos : ', cantdig);
  writeln ('suma del ultimo digito: ', sumadigitos);
end.

