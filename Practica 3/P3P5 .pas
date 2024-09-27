{
5. Realizar un programa que lea información de autos que están a la venta en una concesionaria. De cada auto se lee:
marca, modelo y precio. La lectura finaliza cuando se ingresa la marca “ZZZ” que no debe procesarse. La
información se ingresa ordenada por marca. Se pide calcular e informar:
a. El precio promedio por marca.
b. Marca y modelo del auto más caro
}


program P3P5;
type
  str30=string[30];
  auto = record
    marca:str30;
    modelo:str30;
    precio:real;
end;
procedure  leectorA (var au:auto);
begin
  writeln('Marca: '); readln(au.marca);
  if(au.marca<>'ZZZ') then 
    begin
    writeln('Modelo: '); readln(au.modelo);
    writeln('Precio: '); readln(au.precio);
    end;
end;
procedure maximo (au:auto; var marca1,modelo1:str30; var precio1:real);
begin
  if (precio1<au.precio) then 
  begin
    precio1:= au.precio;
    marca1:=au.marca;
    modelo1:=au.modelo;
  end;
end;
var
  au:auto; marcaActual:str30; promedio:real; cont:integer; preciot:real; marca1,modelo1:str30; precio1:real;
begin
  precio1:=0;
  cont:=0;
  preciot:=0;
  leectorA(au);
    while (au.marca <> 'ZZZ') do begin
      marcaActual := au.marca;
      cont:=0;
      preciot:=0;
      maximo (au,marca1,modelo1,precio1);
        while ((au.marca <> 'ZZZ') and (marcaActual = au.marca)) do begin
         cont:=cont+1;
         preciot:=preciot+au.precio;
         leectorA(au);
         promedio:=preciot/cont;
         maximo (au,marca1,modelo1,precio1);
        end;
        writeln('el precio promedio de: ', marcaActual ,' es: ',promedio:1:2);
     end;
     writeln('La Marca y modelo del auto más caro es: ', marca1 ,'', modelo1 );
end.