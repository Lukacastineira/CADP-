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
  proyecto = record
    cod:integer;
    tit:str30;
    cantalu:integer;
    escu:str30;
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
  write('nombre escuela: '); readln(p.escu);
  write('localidad: '); readln(p.loc);
  end;
end;     
procedure maximos (alumnos:integer; escu:str30; var cantmax1,cantmax2:integer; var nomMax1,nomMax2:str30); 
begin                                       {Nombres de las dos escuelas con mayor cantidad de alumnos participantes.}
  if (alumnos>cantmax1) then begin
    cantmax2:=cantmax1;
    nomMax2:=nomMax1;
    cantmax1:=alumnos;
    nomMax1:=escu;
    end
    else
      if(alumnos>cantmax2) then begin
        cantmax2:=alumnos;
        nomMax2:=escu;
      end;
end;
function par (codigo:integer):boolean;
begin
  par:= (codigo mod 10 div 10 = 0);
end;
procedure   locdai(tit:str30; loc:str30; cod:integer; var tit1:str30);                                    
begin                            { ● Título de los proyectos de la localidad de Daireaux cuyo código posee igual cantidad de dígitos pares e impares.}
  if (loc='daireaux') and (par(cod)) then begin
  tit1:=tit;
  writeln ('El titulo de: ',loc, ' es: ',tit1);
  end;
end;
var p:proyecto; d:docente; locActual:str30; escActual:str30; cantesculoc:integer; cantmax1,cantmax2:integer; nomMax1,nomMax2:str30;  tit1:str30;
begin
  cantmax1:=0;
  cantmax2:=0;
  leector(p,d);
    while (p.cod<>-1) do begin
      locActual:=p.loc;
      cantesculoc:=0;
      while (locActual=p.loc) and (p.cod<>-1) do begin
        escActual:=p.escu;
        maximos (p.cantalu,p.escu,cantmax1,cantmax2,nomMax1,nomMax2); 
        while (locActual=p.loc) and (escActual=p.escu) and (p.cod<>-1)do begin
        leector(p,d);
        cantesculoc:= cantesculoc + 1;       {cantidad de escuelas por cada localidad.}
        locdai(p.tit,p.loc,p.cod,tit1);  
        end;
        writeln('La cantidad de escuelas de ',locActual, ' es: ',cantesculoc);
      end;
    end;
    writeln('las dos escuelas con mayor cantidad de alumnos participantes son: ',nomMax1, ' y ', nomMax2);
end.
