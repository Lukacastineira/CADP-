{
8. La Comisión Provincial por la Memoria desea analizar la información de los proyectos presentados en el programa
Jóvenes y Memoria durante la convocatoria 2020. 
Cada proyecto posee un 
código único, 
un título, el docente coordinador (DNI, nombre y apellido, email), 
la cantidad de alumnos que participan del proyecto, 
el nombre de la escuela y la localidad a la que pertenecen. 
Cada escuela puede presentar más de un proyecto. La información se
ingresa ordenada consecutivamente por localidad y, para cada localidad, por escuela. Realizar un programa que
lea la información de los proyectos hasta que se ingrese el proyecto con código -1 (que no debe procesarse), e
informe:
● Cantidad total de escuelas que participan en la convocatoria 2018 y cantidad de escuelas por cada localidad.
● Nombres de las dos escuelas con mayor cantidad de alumnos participantes.
● Título de los proyectos de la localidad de Daireaux cuyo código posee igual cantidad de dígitos pares e impares.
}


program p3p8;
type
  str30=string[30];
  proyecto = 
    cod:integer;recor
    tit:str30;
    cantalu:integer;
    nomescu:str30;
    loc:str30;
end;
  docente=record
    dni:integer;
    nom:str30;
    ape:str30;
    email:str30;
end;
procedure leector (var p:proyecto; var d:docente);
begin
  write('codigo: '); readln(p.cod);
  if (p.cod<>-1) then begin
  write('titulo: '); readln(p.tit);
  write('dni del docente: '); readln(d.dni);
  write('nombre del docente: '); readln(d.nom);
  write('apellido del docente: '); readln(d.ape);
  write('email del docente: '); readln(d.email);
  write('cantidad alumnos: '); readln(p.cantalu);
  write('nombre escuela: '); readln(p.nomescu);
  write('localidad: '); readln(p.loc);
  end;
end;
var p:proyecto; d:docente; locActual:str30;
begin
  leector(p,d);
    while (p.cod<>-1) do begin
      locActual:=p.loc;
      while (locActual=p.loc) and (p.cod<>-1) do begin
        leector(p,d);
      end;
    end;
end.

