{
9.  Se pide calcular e informar:
● Apellido de los dos alumnos con número de inscripción más chico.
● Nombre de los dos alumnos con número de inscripción más grande.
● Porcentaje de alumnos con nro de inscripción par.
}


program P2P2P9;
procedure alumnos (var numins:integer; var apellido, nombre:string; var totales:real);
begin
  writeln('numero inscripción: '); readln(numins);
  writeln('apellido: '); readln(apellido);
  writeln('nombre: '); readln(nombre);
  totales:= totales + 1;
end;
procedure numchico (numins:integer; apellido:string; var apellido1,apellido2:string;  var numins1,numins2:integer);
begin
  if(numins<numins1) then begin
  numins2:=numins1;
  apellido2:= apellido1;
  numins1:=numins;
  apellido1:= apellido;
  end
  else
  if(numins<numins2) then begin
  numins2:=numins;
  apellido2:= apellido;
  end;
end;
procedure numgrande (numins:integer; nombre:string; var nombre1,nombre2:string;  var numgrande1,numgrande2:integer);
begin
  if(numins>numgrande1) then begin
    numgrande2:=numgrande1;
    nombre2:= nombre1;
    numgrande1:=numins;
    nombre1:= nombre;
    end
  else
    if(numins>numgrande2) then begin
    numgrande2:=numins;
    nombre2:= nombre;
    end;
end;
procedure porcentaje (numins:integer; var par:real; totales:real);
begin
  par:= 0;
  if (numins mod 2 = 0) then begin
    par := par + 1;
    end;
    par:= par * 100 / totales;
end;
var 
  numins,numins1,numins2,numgrande1,numgrande2:integer; totales,par:real; apellido,nombre,apellido1,apellido2,nombre1,nombre2:string;
begin
  numins1:=30001;
  numins2:=30000;
  numgrande1:=0;
  repeat
    alumnos(numins,apellido,nombre,totales);
    numchico(numins,apellido,apellido1,apellido2,numins1,numins2);
    numgrande (numins,nombre,nombre1,nombre2,numgrande1,numgrande2);
    porcentaje(numins,par,totales);
  until (numins = 1200);
  writeln('los apellidos con numeros de inscripcion mas chicos son: ', apellido1, ' y ', apellido2);
  writeln('los nombres con numeros de inscripcion mas grande son: ', nombre1, ' y ', nombre2);
  writeln('porcentaje alumnos numero inscripcion par: ',par:1:2,'% ');
end.