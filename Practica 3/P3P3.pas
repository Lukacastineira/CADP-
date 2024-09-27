{
3. El Ministerio de Educación desea realizar un relevamiento de las 2400 escuelas primarias de la provincia de Bs. As,
con el objetivo de evaluar si se cumple la proporción de alumnos por docente calculada por la UNESCO para el año
2015 (1 docente cada 23,435 alumnos). Para ello, se cuenta con información de: 
CUE (código único de establecimiento), 
nombre del establecimiento, 
cantidad de docentes, 
cantidad de alumnos, 
localidad. 
Se pide implementar un programa que procese la información y determine:
● Cantidad de escuelas de La Plata con una relación de alumnos por docente superior a la sugerida por UNESCO.
● CUE y nombre de las dos escuelas con mejor relación entre docentes y alumnos.
El programa debe utilizar:
a) Un módulo para la lectura de la información de la escuela.
b) Un módulo para determinar la relación docente-alumno (esa relación se obtiene del cociente entre la cantidad
de alumnos y la cantidad de docentes).
}


program P3P3;
const 
  unesco = 23.435;
  escuelas = 3;
type
  str30 = string[30];
  escuela = record
    cue :integer;
    nomescu:str30;
    cantdoc:integer;
    cantest:integer;
    loc:str30;
end;
  minimo = record
    min:real;
    cue:integer;
    nom:str30;
end;
procedure leeEscu (var esc:escuela);
  begin
    write('CUE: '); readln(esc.cue);
    write('Escuela: '); readln(esc.nomescu);
    write('Docentes: '); readln(esc.cantdoc);
    write('Estudiantes: '); readln(esc.cantest);
    write('Localidad: '); readln(esc.loc);
  end;
function relacion(alumnos,docentes:integer):real;
  begin
    relacion:= (alumnos/docentes);
  end;
procedure cantLp (res:real; var cantescu:integer; loc:str30 );
  begin 
    if (res<unesco) and (loc='La Plata') then 
      cantescu:=cantescu + 1; 
  end;
procedure mejorRelacion (esc:escuela; var min1,min2:minimo; res:real);
  begin
    if (res<min1.min) then begin
      min2:=min1;
      min1.min:=res;
      min1.cue:=esc.cue;
      min1.nom:=esc.nomescu;
      end
    else
      if(res<min2.min) then begin
      min2.min:=res;
      min2.cue:=esc.cue;
      min2.nom:=esc.nomescu;
      end;
end;
var 
  es:escuela; i,cantescu:integer; res:real; min1,min2:minimo;
begin
   cantescu:= 0;
   min1.min:= 32767;
   min2.min:=32767;
  for i:= 1 to escuelas do begin
    leeEscu(es);
    res:= relacion(es.cantest, es.cantdoc);
    cantLp(res,cantescu,es.loc);
    mejorRelacion(es,min1,min2,res);
  end;
  writeln('La Cantidad de escuelas de La Plata con una relación de alumnos por docente superior a la sugerida por UNESCO es: ',cantescu);
  writeln('El CUE de la mejor relacion es: ', min1.cue, ' y la segunda: ', min2.cue, ' y el nombre de las dos escuelas es: ', min1.nom, ' y ',min2.nom);
end.

