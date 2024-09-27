{
9. Modificar la solución del punto anterior considerando que el programa lea y almacene la información de a
lo sumo 400 alumnos. La lectura finaliza cuando se ingresa el DNI -1 (que no debe procesarse).

}
program p4p9p1;
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
procedure cargarV (var v:vector; var diml:integer);
var
  dni:integer;
begin
  writeln('DNI : '); readln(dni);
  while (diml < cant_alu) and (dni<>-1) do begin
  diml:=diml + 1;
  v[diml].dni:=dni;
  writeln('numero de inscripción: '); readln(v[diml].num);
  writeln('Apellido: '); readln(v[diml].apellido);
  writeln('Nombre: '); readln(v[diml].nombre);
  writeln('Anio nacimiento: '); readln(v[diml].anio_nac);
  writeln('DNI : '); readln(dni);
  end;
end;
function esPar (num:integer):boolean;
begin
  esPar := (num mod 2 = 0);
end;
procedure  porcentaje (v:vector; var porc:real; diml:integer);
var 
  i:integer;
begin
  for i:= 1 to diml do begin
    if (esPar(v[i].DNI)) then 
    porc:= porc + 1;
  end;
  porc:= porc*100/cant_alu;
end;
procedure dosMax (v:vector; var nom1,nom2,ape1,ape2:str20; diml:integer);
var
  edad1,edad2:integer; i:integer;
begin
  edad1:=32767;
  edad2:=32767;
  for i:= 1 to diml do 
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
  v:vector; porc:real; nom1,nom2,ape1,ape2:str20; diml:integer;
begin
  porc:=0;
  cargarV(v,diml);
  porcentaje (v, porc,diml);
  dosMax(v,nom1,nom2,ape1,ape2, diml);
  writeln ('El porcentaje de alumnos con DNI compuesto sólo por dígitos pares es: ', porc:1:2);
  writeln ('Los dos alumnos de mayor edad son: ',nom1 ,'', ape1, ' y ', nom2,'',ape2);
end.