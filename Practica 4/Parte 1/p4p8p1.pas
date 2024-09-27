{
8. Realizar un programa que lea y almacene la información de 
400 alumnos ingresantes a la Facultad de Informática de la UNLP en el año 2020. 
De cada alumno se lee: 
nro de inscripción, 
DNI, 
apellido, 
nombre y
año de nacimiento. 
Una vez leída y almacenada toda la información, calcular e informar:
a) El porcentaje de alumnos con DNI compuesto sólo por dígitos pares.
b) Apellido y nombre de los dos alumnos de mayor edad.
}
program p4p8p1;
const
  cant_alu=2;
type
  str20 = string[30];
  alumno = record
  num: integer;
  DNI:integer;
  apellido: str20;
  nombre: str20;
  anio_nac:integer;
end;
  vector= array [1..cant_alu] of alumno;
procedure cargarV (var v:vector);
var i:integer;
begin
  for i:= 1 to cant_alu do begin
  writeln('numero de inscripción: '); readln(v[i].num);
  writeln('DNI : '); readln(v[i].DNI);
  writeln('Apellido: '); readln(v[i].apellido);
  writeln('Nombre: '); readln(v[i].nombre);
  writeln('Anio nacimiento: '); readln(v[i].anio_nac);
  end;
end;
function esPar (num:integer):boolean;
begin
  esPar := (num mod 2 = 0);
end;
procedure  porcentaje (v:vector; var porc:real);
var 
  i:integer;
begin
  for i:= 1 to cant_alu do begin
    if (esPar(v[i].DNI)) then 
    porc:= porc + 1;
  end;
  porc:= porc*100/cant_alu;
end;
procedure dosMax (v:vector; var nom1,nom2,ape1,ape2:str20);
var
  edad1,edad2:integer; i:integer;
begin
  edad1:=32767;
  edad2:=32767;
  for i:= 1 to cant_alu do 
  begin
    if (v[i].anio_nac<edad1) then 
      begin 
      edad2 := edad1;
      nom2 := nom1;
      ape2 := ape1;
      edad1 := v[i].anio_nac;
      nom1 := v[i].nombre;
      ape1 := v[i].apellido;
      end
      else
      if(v[i].anio_nac<edad2) then
        begin
        edad2 := v[i].anio_nac;
        nom2 := v[i].nombre;
        ape2 := v[i].apellido;
        end;
    end;
end;
var
  v:vector; porc:real; nom1,nom2,ape1,ape2:str20;
begin
  porc:=0;
  cargarV(v);
  porcentaje (v, porc);
  dosMax(v,nom1,nom2,ape1,ape2);
  writeln ('El porcentaje de alumnos con DNI compuesto sólo por dígitos pares es: ', porc:1:2);
  writeln ('Los dos alumnos de mayor edad son: ',nom1 ,'', ape1, ' y ', nom2,'',ape2);
end.