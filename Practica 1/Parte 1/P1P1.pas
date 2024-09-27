{
1. Realizar un programa que lea 2 números enteros desde teclado e informe en pantalla cuál de los
dos números es el mayor. Si son iguales debe informar en pantalla lo siguiente: “Los números leídos
son iguales”.
}

program P1P1;
var 
  num1, num2: integer;
begin
  writeln('escriba un numero');
  read(num1);
  writeln('escriba otro numero');
  read(num2);
  if (num1>num2) then
    writeln('el numero ', num1,' es mayor');
  if (num1<num2) then
    writeln('el numero ', num2,' es mayor');
  if (num1=num2) then
    writeln(' los numeros leidos son iguales ');
end.

