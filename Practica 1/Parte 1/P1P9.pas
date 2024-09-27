{
9. Realizar un programa que lea un carácter, que puede ser “+” (suma) o “-” (resta); si se ingresa otro
carácter, debe informar un error y finalizar. Una vez leído el carácter de suma o resta, deberá leerse
una secuencia de números enteros que finaliza con 0. El programa deberá aplicar la operación leída
con la secuencia de números, e imprimir el resultado final.
Por ejemplo:
○ Si se lee el carácter “-” y la secuencia 4 3 5 -6 0 , deberá imprimir: 2 (4 – 3 – 5 - (-6) )
○ Si se lee el carácter “+” y la secuencia -10 5 6 -1 0, deberá imprimir 0 ( -10 + 5 + 6 + (-1) )
}


program P1P9;
var
  caracter: char;
  num, total: integer;
  
begin
  total:= 0;
  writeln('escriba el caracter + o -');
  readln(caracter);
  if  (caracter <> '+') and (caracter <> '-') then
  writeln ('hubo un error al ingresar el caracter')
  else
    begin
    writeln('Escriba un numero');
    read(num);
    total:= num;
    end;
    while (num<>0) do begin
    writeln('Escriba un numero');
    read(num);
    if (caracter = '+')then
    total:= total + num
    else
    total:= total - num
    end;
    writeln('El resultado es final es: ',total);
end.