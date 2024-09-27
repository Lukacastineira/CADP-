{
8. Realizar un programa que lea tres caracteres, e informe si los tres eran letras vocales o si al menos
uno de ellos no lo era. Por ejemplo, si se leen los caracteres “a e o” deberá informar “Los tres son
vocales”, y si se leen los caracteres “z a g” deberá informar “al menos un carácter no era vocal”.
}


program P1P8;
type
  conjunto = set of char;
var
  caracter1, caracter2, caracter3 : char;
  vocales: conjunto; 
  contador: integer;
begin
  contador:=0;
  vocales:= ['A', 'a', 'E', 'e', 'I', 'i', 'O', 'o', 'U', 'u'];
    writeln('primer carater: ');
    readln(caracter1);
    if(caracter1 in vocales) then
    contador:= contador + 1;
    writeln('segundo caracter:');
    readln(caracter2);
    if(caracter2 in vocales) then
    contador:= contador + 1;
    writeln('tercer caracter:');
    readln(caracter3);
    if(caracter3 in vocales) then
    contador:= contador + 1;
    if (contador = 3)then
    writeln('los tres son vocales')
    else 
    writeln('al menos un caracter no era vocal');
end.