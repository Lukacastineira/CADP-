{5. Utilizando los módulos implementados en el ejercicio 4, realizar un programa que lea números enteros
desde teclado (a lo sumo 100) y los almacene en un vector. La carga finaliza al leer el número 0. Al finalizar
la carga, se debe intercambiar la posición del mayor elemento por la del menor elemento, e informe la
operación realizada de la siguiente manera: “El elemento máximo ... que se encontraba en la posición ...
fue intercambiado con el elemento mínimo ... que se encontraba en la posición ...”.
}


program p4p5p1;
const 
  cant_datos=5;
type
  vector = array [1..cant_datos] of integer; 
procedure cargarv(var v:vector; var diml:integer);
var 
  num:integer; 
begin
  diml:=0;
  write('numero: ');readln(num);
  while (num<>0) and (diml < cant_datos)  do begin
    diml:= diml + 1;
    v[diml]:= num;
    write('numero: '); readln(num);
    end;
end;                                                  {a) posicion: dado un número X y el vector de números, retorna la posición del número}
function posicion (v:vector; x:integer):integer;      { X en dicho vector,o el valor -1 en caso de no encontrarse.}
var
  i:integer;                        
begin
  i:=1;
  while (i<=cant_datos) and (v[i]<>x) do 
  begin
  i:= i + 1;
  end;
  if (i>cant_datos) then 
  posicion:= -1
  else 
  posicion:= i;           
end;     
procedure incisoA (v: vector);
var
  x: integer;
begin
  write ('Numero: '); readln(x);
  writeln ('Posicion del numero es (en caso de no encontrarlo imprime - 1): ',posicion(v,x));
end;
procedure intercambio (var v:vector; x,y: integer);
var
  aux: integer;
begin
  aux:= v[x];
  v[x]:= v[y];
  v[y]:= aux;
end;
procedure incisoB (v:vector);
var 
  x,y:integer;
begin
  write('posicion X: '); readln(x);
  write('posicion Y: '); readln(y);
  intercambio(v,x,y);
  end;
function sumav (v:vector; diml:integer):integer;  {c) sumaVector: retorna la suma de todos los elementos del vector.}
var 
  i:integer;
begin
  sumav:= 0;
  for i:=1 to diml do 
    sumav:= sumav + v[i];
end;
function  promedio (v:vector; diml:integer):real;     {d) promedio: devuelve el valor promedio de los elementos del vector.}
var
  i:integer;
begin
  promedio:=0;
  for i:=1 to diml do
  promedio := promedio + v[i];
  promedio:= promedio/cant_datos;
end;
function maximo (v:vector; diml:integer):integer;
var 
  i:integer; num:integer;
begin
  num:=0;
  for i:=1 to diml do begin
    if (v[i]>num) then begin
      num:= v[i];
      maximo:=i;
    end;
  end;
end;
function minimo (v:vector; diml:integer):integer;
var
  i,num:integer;
begin
  num:=32767;
  for i:=1 to diml do begin
    if(v[i]<num) then begin
      num:= v[i];
      minimo:=i;
    end;
  end;
end;
var
  v:vector; diml:integer;
begin
  diml:=0;
  cargarv(v,dimL);
  intercambio(v,maximo(v,dimL),minimo(v,dimL)); //Las funciones me devuelven la posicion
  writeln ('El elemento maximo ',v[maximo(v,dimL)],' que se encontraba en la posicion ',minimo(v,dimL),
  ' fue intercambiado con el elemento minimo ',v[minimo(v,dimL)],' que se encontraba en la posicion ',maximo(v,dimL));
end.