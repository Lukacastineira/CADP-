{
7. Realizar un programa que lea números enteros desde teclado hasta que se ingrese el valor -1 (que no
debe procesarse) e informe:
a. la cantidad de ocurrencias de cada dígito procesado.
b. el dígito más leído.
c. los dígitos que no tuvieron ocurrencias.
Por ejemplo, si la secuencia que se lee es: 63 34 99 94 96 -1, el programa deberá informar:
Número 3: 2 veces
Número 4: 2 veces
Número 6: 2 veces
Número 9: 4 veces
El dígito más leído fue el 9.
Los dígitos que no tuvieron ocurrencias son: 0, 1, 2, 5, 7, 8
}
program p4p7p1;
const
  cant_num=10;
type
  vector= array [1..10] of integer;
procedure ocurrencias (var v: vector; num: integer);
  begin
    while (num > 0) do
      begin
        v[(num mod 10) + 1]:= v[(num mod 10) + 1] + 1; {a. la cantidad de ocurrencias de cada dígito procesado.}
        num:= num div 10;                   // descompongo el numero leido asi puedo contar sus digitos.
      end;                                           
  end;

procedure cargarV (var v: vector);
  var
    i,num: integer;
begin
  for i:=1 to 10 do
    v[i]:= 0;
    write ('Numero: '); readln(num);
    while (num <> -1) do
    begin
      ocurrencias(v,num);
      write ('Numero: '); readln(num);
    end;
end;
procedure imprimir (var v:vector);
var 
  masleido,i,num:integer; 
begin
  masleido:=0;
  for i:= 1 to 10 do 
  begin
    if (v[i]<>0) then 
    writeln('El numero: ', i-1  , ' fue leido: ', v[i], ' veces.');  {a. la cantidad de ocurrencias de cada dígito procesado.}
    if (masleido<v[i])then 
    begin
    masleido:= v[i];    {b. el dígito más leído.}
    num:= i - 1;
    end;
    end;
    writeln ('El digito mas leido es el: ', num);  {b. el dígito más leído.}
end;
procedure sinOcurrencias (var v:vector);   {c. los dígitos que no tuvieron ocurrencias.}
var
  i:integer;
begin
  writeln ('Los digitos que no tuvieron ocurrencias son: ');
  for i:= 1 to 10 do begin
    if(v[i]= 0) then
    writeln ('El numero: ', i - 1 );
    end;
end;
var
  v:vector; num:integer;
begin
  cargarV (v);
  imprimir (v);
  sinOcurrencias(v)
end.

