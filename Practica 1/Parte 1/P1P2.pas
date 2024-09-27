{
2. Realizar un programa que lea un número real e imprima su valor absoluto. El valor absoluto de un
número X, se escribe |X| y se define como:
|X| = X cuando X es mayor o igual a cero
|X| = -X cuando X es menor a cero
}


program P1P2;
var  
  numreal, valorabsoluto: real;
begin
  writeln (' escriba un numero ');
  read (numreal);
  if (numreal >= 0) then
    writeln ('Su valor absoluto es ','|',numreal:1:2,'|');
  if (numreal <0) then
    writeln ('su valor absoluto es ','|',numreal:1:2,'|');

end.

