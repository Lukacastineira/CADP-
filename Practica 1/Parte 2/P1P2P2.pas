{
2. Realice un programa que lea 10 números e informe cuál fue el mayor número leído. Por ejemplo, si
se lee la secuencia:
3 5 6 2 3 10 98 8 -12 9
deberá informar: “El mayor número leído fue el 98”
a. Modifique el programa anterior para que, además de informar el mayor número leído, se
informe el número de orden, dentro de la secuencia, en el que fue leído. Por ejemplo, si se lee la
misma secuencia:
3 5 6 2 3 10 98 8 -12 9
deberá informar: “El mayor número leído fue el 98, en la posición 7”
}


program P1P2P2;
var
  x, num, mayor, pos : integer;
begin
  mayor:= 0;
    for x:= 1 to 10 do begin
    writeln('escribe un numero');
    read(num);
    if (mayor<num) then
        begin
        pos:= x;
        mayor:= num
        end;
    end;
    writeln ('el mayor numero leido fue: ', mayor, ' en la posición: ',pos);
end.