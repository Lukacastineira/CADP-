{
7. Realizar un programa que lea desde teclado información de autos de carrera. Para cada uno de los
autos se lee el nombre del piloto y el tiempo total que le tomó finalizar la carrera. En la carrera
participaron 100 autos. Informar en pantalla:
- Los nombres de los dos pilotos que finalizaron en los dos primeros puestos.
- Los nombres de los dos pilotos que finalizaron en los dos últimos puestos.
}


program P1P2P7;
var
  piloto, piloto1, piloto2, piloto4, piloto3 :string;
  tiempo, tiempo4, tiempo3, tiempo1, tiempo2  :real;
  i: integer;
begin
  tiempo1:= 32767;
  tiempo2:= 32767;
  tiempo4:= 0;
  tiempo3:= 0;
  for i:= 1 to 4 do 
  begin
    writeln('nombre piloto: ');
    readln(piloto);
    writeln('tiempo en finalizar: ');
    readln(tiempo);
  if (tiempo>tiempo4) then 
    begin
      tiempo3:= tiempo4;
      piloto3:= piloto4;
      tiempo4:=tiempo;
      piloto4:=piloto;
    end
    else 
    if(tiempo>tiempo3) then begin
    tiempo3:=tiempo;
    piloto3:=piloto;
    end;
   if (tiempo<tiempo1)then 
    begin
    tiempo2:= tiempo1;
    piloto2:= piloto1;
    tiempo1:= tiempo;
    piloto1:= piloto;
    end
  else
  if(tiempo<tiempo2) then
  begin
    tiempo2:= tiempo;
    piloto2:= piloto;
  end;
  end;
  writeln('primer puesto: ',piloto1, ' segundo puesto: ',piloto2);
  writeln('el ultimo puesto: ',piloto4,' anteultimo puesto: ',piloto3);
end.