{
3. Se dispone de un vector con números enteros, de dimensión física dimF y dimensión lógica dimL.
a) Realizar un módulo que imprima el vector desde la primera posición hasta la última.

b) Realizar un módulo que imprima el vector desde la última posición hasta la primera.

c) Realizar un módulo que imprima el vector desde la mitad (dimL DIV 2) hacia la primera posición, y
desde la mitad más uno hacia la última posición.

d) Realizar un módulo que reciba el vector, una posición X y otra posición Y, e imprima el vector desde la
posición X hasta la Y. Asuma que tanto X como Y son menores o igual a la dimensión lógica. Y considere
que, dependiendo de los valores de X e Y, podría ser necesario recorrer hacia adelante o hacia atrás.

e) Utilizando el módulo implementado en el inciso anterior, vuelva a realizar los incisos a, b y c.
}
program p4p3;
const
dimF = 6;
type
vdatos = array[1..dimF] of integer;
procedure cargarVector(var v:vdatos; var dimL : integer);
var              
  i: integer;
begin
  for i:= 1 to dimF do begin
    dimL := dimL + 1;  
    v[i]:= i;
    end;
end;
procedure imprimir (v:vdatos; dimL : integer);
var 
  i:integer;
begin 
  for i:= 1 to dimF do begin
  writeln (v[i]);
  end;
end;
procedure atras ( v:vdatos; dimL : integer);
var 
  i:integer;
begin 
  for i:= dimF downto 1 do begin
  writeln (v[i]);
  end;
end;
procedure medio ( v:vdatos; dimL : integer);
var 
  i,x,mitad:integer;
begin 
  mitad:= dimF div 2;
  for i:=mitad downto 1 do begin
  writeln (v[i]);
  end;
  mitad:= mitad + 1;
  for  x:=mitad to dimF do begin
    writeln (v[i]);
  end 
end;
procedure incisoC ( v:vdatos; dimL,x,y : integer);
var 
  i:integer;
begin 
  if (x < y) then
    for i:=x to y do
    writeln(v[i])
    else
    for i:=y to x do 
    writeln(v[i]);
end;
var v:vdatos; dimL,x,y:integer; 
begin
dimL:= 0;
cargarVector(v,dimL );
imprimir (v,dimL);
writeln ('al reves');
atras(v, dimL);
writeln ('mitad hacia uno y mitad mas uno hacia ultimo');
medio(v, dimL);
writeln ('numero 1: '); readln(x);
writeln ('numero 2: '); readln(y);
incisoC (v,dimL,x,y);
end.

