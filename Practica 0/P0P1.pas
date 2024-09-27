{
Implemente un programa que lea por teclado dos números enteros e imprima en pantalla los
valores leídos en orden inverso. Por ejemplo, si se ingresan los números 4 y 8, debe mostrar el
mensaje: Se ingresaron los valores 8 y 4
}

program p1p0;
var
  num1, num2 :integer; 
begin
  writeln('escriba un numero');
  read(num1);
  writeln('escriba otro numero');
  read(num2);
  writeln('se ingresaron los valores', num2, 'y', num1);
end.

