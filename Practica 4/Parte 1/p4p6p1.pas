{6. Dado que en la solución anterior se recorre dos veces el vector (una para calcular el elemento máximo y
otra para el mínimo), implementar un único módulo que recorra una única vez el vector y devuelva ambas
posiciones
}


program p4p6p1;
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
procedure intercambio (var v:vector; x,y: integer);
var
  aux: integer;
begin
  aux:= v[x];
  v[x]:= v[y];
  v[y]:= aux;
end;

procedure maximoMinimo (v:vector; diml:integer; var max:integer; var min:integer );
var 
  i:integer; max1:integer; min1:integer;
begin
  max1:=0;
  min1:=32767;
  for i:=1 to diml do 
  begin
    if (v[i]>max1) then
    begin
      max1:= v[i];
      max:=i;
    end;
    if(v[i]<min1) then 
    begin
      min1:= v[i];
      min:=i;
    end;
  end;
end;
var
  v:vector; diml:integer; max:integer; min:integer;
begin

  diml:=0;
  cargarv(v,dimL);
  maximoMinimo (v, diml,max, min );
  writeln ('El maximo ', max ,  ' el minimo ', min );
end.