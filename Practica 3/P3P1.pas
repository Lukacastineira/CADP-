{

a. Completar el programa principal para que lea información de alumnos (código, nombre, promedio) e informe
la cantidad de alumnos leídos. La lectura finaliza cuando ingresa un alumno con código 0, que no debe
procesarse. Nota: utilizar el módulo leer.
b. Modificar al programa anterior para que, al finalizar la lectura de todos los alumnos, se informe también el
nombre del alumno con mejor promedio.

}
program Registros;
type
  str20 = string[20];
  alumno = record
  codigo : integer;
  nombre : str20;
  promedio : real;
end;
procedure leer(var alu : alumno; var contador:integer);
  begin
    writeln('Ingrese el código del alumno');
    readln(alu.codigo);
    if (alu.codigo <> 0) then begin
      contador:= contador + 1;
      writeln('Ingrese el nombre del alumno'); readln(alu.nombre);
      writeln('Ingrese el promedio del alumno'); readln(alu.promedio);
    end;
  end;
procedure mejorp (var alu:alumno; var nombremp:str20; var mejorpromedio:real);
  begin
    if (alu.promedio > mejorpromedio) then begin
      mejorpromedio:=alu.promedio;
      nombremp:= alu.nombre;
    end;
end;
var
alu:alumno; contador:integer; nombremp:str20; mejorpromedio:real;
begin
  contador:= 0;
  mejorpromedio:= 0;
  leer(alu,contador);
  while (alu.codigo <> 0) do begin
  mejorp(alu,nombremp,mejorpromedio);
  leer(alu,contador);
  end;
  writeln('el total de alumnos leidos es: ',contador);
  writeln('el alumno con mejor promedio es: ', nombremp, ' con un promedio de: ', mejorpromedio:1:2);
end.