{
3. Realizar un programa que lea 3 números enteros y los imprima en orden descendente.
Por ejemplo, si se ingresan los valores 4, -10 y 12, deberá imprimir: 12 4 -10
}


program P1P3;
var  
  num1, num2, num3: integer;
  tmp: integer;
begin
  read(num1, num2, num3);
  if not (num1>num2) then
  begin
    tmp := num1;
    num1 := num2;
    num2 := tmp;
  end;
  if not (num1>num3) then
  begin
    tmp := num1;
    num1 := num3;
    num3 := tmp;
  end;
  if not (num2>num3) then
  begin
    tmp := num2;
    num2 := num3;
    num3 := tmp;
  end;
  writeln(num1,'',num2,'',num3);
end.

