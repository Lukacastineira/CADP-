{
3. Realizar un programa que lea desde teclado la información de alumnos ingresantes a la carrera
Analista en TIC. De cada alumno se lee nombre y nota obtenida en el módulo EPA (la nota es un
número entre 1 y 10). La lectura finaliza cuando se lee el nombre “Zidane Zinedine“, que debe
procesarse. Al finalizar la lectura informar:
- La cantidad de alumnos aprobados (nota 8 o mayor) y
- la cantidad de alumnos que obtuvieron un 7 como nota.
}


program P1P2P3;
var
  nombre: string;
  notaepa, mayor, siete:integer;
begin
  mayor:= 0;
  siete:= 0;
  repeat
  writeln('nombre alumno: ');
  readln(nombre);
  writeln('nota EPA: ');
  readln(notaepa);
  if (notaepa >= 8) then
  mayor:= mayor + 1;
  if (notaepa=7) then
  siete:= siete + 1;
  until nombre = ('Zidane Zinedine');
  writeln('Los aprobados con nota 8 o mayor son: ',mayor);
  writeln('Los aprobados con nota 7 son: ', siete)
end.

