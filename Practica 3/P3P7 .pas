{
7. Realizar un programa que lea información de centros de investigación de Universidades Nacionales. De cada
centro se lee 
su nombre abreviado (ej. LIDI, LIFIA, LINTI), 
la universidad a la que pertenece, 
la cantidad de investigadores y 
la cantidad de becarios que poseen. 
La información se lee de forma consecutiva por universidad y
la lectura finaliza al leer un centro con 0 investigadores, que no debe procesarse. 

Informar:
● Cantidad total de centros para cada universidad.
● Universidad con mayor cantidad de investigadores en sus centros.
● Los dos centros con menor cantidad de becarios.
}
program p3p7;
type 
  str20=string[20];
  centro=record
    nombre:str20;
    uni:str20;
    cantinv:integer;
    cantbec:integer;
end;
procedure leector (var c:centro);
begin
  writeln('centro:'); readln(c.nombre);
  writeln('Universidad:'); readln(c.uni);
  writeln('cantidad investigadores:'); readln(c.cantinv);
  if(c.cantinv<>0) then begin
  writeln('cantidad becarios:'); readln(c.cantbec);
  end;
end;
procedure mayorcantinv (c:centro; var unimayor:str20; var cantinve:integer);  {● Universidad con mayor cantidad de investigadores en sus centros.}
begin
  if(c.cantinv>cantinve) then begin
    cantinve:=c.cantinv;
    unimayor:=c.uni;
  end;
end;  
procedure dosminimos (centro:str20; becarios:integer; var minB1,minB2:integer;  var centro1,centro2:str20);  {● Los dos centros con menor cantidad de becarios.}
begin
  if (becarios<minB1) then begin
    minB2:=minB1;
    centro2:=centro1;
    minB1:=becarios;
    centro1:=centro;
    end
    else
      if (becarios<minB2) then begin
        minB2:=becarios;
        centro2:=centro;
      end;
end;
var c:centro; uniActual:str20; cont:integer; cantinve:integer; unimayor:str20; minB1,minB2:integer; centro1,centro2:str20; centroActual:str20;
begin
   cantinve:=0;
   minB1:=32766;
   minB2:=32767;
  leector(c);
    while (c.cantinv <> 0) do begin
      uniActual:=c.uni;
      centroActual:=c.nombre;
      cont:=0;
      while (c.cantinv <> 0) and (uniActual = c.uni) do begin
        cont:=cont + 1;
        dosminimos (centroActual,c.cantbec,minB1,minB2,centro1,centro2);
        mayorcantinv (c,unimayor,cantinve);
        leector(c);
      end;
      writeln('la Cantidad total de centros de ', uniActual, ' es: ', cont);
    end;
    writeln ('La Universidad con mayor cantidad de investigadores es: ', unimayor,' con un total de: ', cantinve, ' investigadores.');
    writeln('Los dos centros con menor cantidad de becarios son: ', centro1, ' y ', centro2);
end.