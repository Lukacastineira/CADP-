{
5. Realizar un programa que lea números enteros desde teclado. La lectura debe finalizar cuando se
ingrese el número 100, el cual debe procesarse. Informar en pantalla:
◦ El número máximo leído.
◦ El número mínimo leído.
◦ La suma total de los números leídos.
}


program P1P2P5;
var
  num, numMax, numMin, numSuma:integer;
begin
  numsuma:= 0;
  numMin:= 32767;
  numMax:= 0;
  repeat
    writeln('num:');
    read(num);
    if(num<numMin)then
    numMin:= num;
    if (num>numMax) then 
    numMax:= num;  
    numSuma:= numSuma + num;
  until num = 100;
  writeln('el mayor numero leido es: ',numMax);
  writeln('el menor numero leido es: ',numMin);
  writeln('la suma de todos los numeros leidos es: ',numsuma);
end.
  
  
  
  