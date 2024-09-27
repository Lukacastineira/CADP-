{4. Se dispone de un vector con 100 números enteros. Implementar los siguientes módulos:
a) posicion: dado un número X y el vector de números, retorna la posición del número X en dicho vector,
o el valor -1 en caso de no encontrarse.
b) intercambio: recibe dos valores x e y (entre 1 y 100) y el vector de números, y retorna el mismo vector
donde se intercambiaron los valores de las posiciones x e y.
c) sumaVector: retorna la suma de todos los elementos del vector.
d) promedio: devuelve el valor promedio de los elementos del vector.
e) elementoMaximo: retorna la posición del mayor elemento del vector
f) elementoMinimo: retorna la posicion del menor elemento del vector}


program p4p4p1;
const 
  cant_datos=100;
type
  vector = array [1..cant_datos] of integer; 
procedure cargarv(var v:vector);
var 
  i:integer; 
begin
  for i:= 1 to cant_datos do begin
    v[i]:=i;
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
function sumav (v:vector):integer;  {c) sumaVector: retorna la suma de todos los elementos del vector.}
var 
  i:integer;
begin
  sumav:= 0;
  for i:=1 to cant_datos do 
    sumav:= sumav + v[i];
end;
function  promedio (v:vector):real;     {d) promedio: devuelve el valor promedio de los elementos del vector.}
var
  i:integer;
begin
  promedio:=0;
  for i:=1 to cant_datos do
  promedio := promedio + v[i];
  promedio:= promedio/cant_datos;
end;
function maximo (v:vector):integer;
var 
  i:integer; num:integer;
begin
  num:=0;
  for i:=1 to cant_datos do begin
    if (v[i]>num) then begin
      num:= v[i];
      maximo:=num;
    end;
  end;
end;
function minimo (v:vector):integer;
var
  i,num:integer;
begin
  num:=32767;
  for i:=1 to cant_datos do begin
    if(v[i]<num) then begin
      num:= v[i];
      minimo:=num;
    end;
  end;
end;
var
  v:vector;
begin
  cargarv(v);
  incisoA(v);
  incisoB(v);
  writeln ('la suma de todos los numeros del vector es: ',sumav(v));
  writeln ('el promedio de los numeros del vector es: ', promedio(v):1:2);
  writeln ('la posición del mayor elemento del vector es: ', maximo(v));
  writeln ('la posicion del menor elemento del vector es: ', minimo(v));
end.