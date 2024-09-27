program Hello;
type
  str30=string[20];
  procesador=record
    marca:str30;
    linea:str30;
    core:integer;
    velocidad:real;
    nano:integer;
end;
  maximos=record
    marca1:str30;
    marca2:str30;
end;
procedure leector(var pro:procesador);
  begin
    writeln('Marca: '); readln(pro.marca);
    writeln('linea: '); readln(pro.linea);
    writeln('nucleos: '); readln(pro.core);
    if(pro.core<>0) then begin
    writeln('velocidad: '); readln(pro.velocidad);
    writeln(' nanómetros: '); readln(pro.nano);
    end;
end;
procedure procmulti(p:procesador; var contadoP:integer);   {Cantidad de procesadores multicore (de más de un core) de Intel o  AMD,}
begin                                                 { cuyos relojes alcancen velocidades de al menos 2 Ghz. [mas de un core y velocidad >= a 2]}
  if (p.marca= 'AMD') or (p.marca='Intel') then begin
    if(p.core>=2) and (p.velocidad>=2) then 
    contadoP:= contadoP + 1;
  end;
end;
procedure proctransis(p:procesador; var marca1,linea1:str30);  {Marca y línea de todos los procesadores de más de 2 cores con transistores de a lo sumo 22 nm.}
begin
  if (p.core>2) and (p.nano<=22) then begin
    marca1:= p.marca;
    linea1:=p.linea;
    end;
end;
function contador(p:procesador):integer;
begin
  if(p.nano=14) then begin                                    {Las dos marcas con mayor cantidad de procesadores con transistores de 14 nm. [dos maximos] } 
  contador:= contador+1;
  end;
end;
procedure dosmaximos(p:procesador; var max:maximos; contador:integer; var contmax1,contmax2:integer); 
begin
  if (contador>contmax1) then begin
    contmax2:=contmax1;
    max.marca2:=max.marca1;
    contmax1:=contador;
    max.marca1:=p.marca;
    end
    else
    if (contador>contmax2)  then begin
    contmax2:=contador;
    max.marca2:=p.marca;
    end;
end; 
var  p:procesador; cont,contadoP,contmax1,contmax2:integer; marca1,linea1:str30; max:maximos; marcaActual:str30;
begin
   contmax1:=0;
   contmax2:=0;
  leector(p);
    while (p.core <> 0) do begin
      marcaActual:=p.marca;
      cont:=0;
      while (p.core<>0) and (marcaActual=p.marca) do begin
        cont:=contador(p);
        procmulti(p,contadoP);
        proctransis(p,marca1,linea1);
        dosmaximos(p, max, cont,contmax1,contmax2);
        leector(p); 
      end;
    end;
    writeln('procesadores multicore, relojes alcancen velocidades de al menos 2 Ghz: ',contadoP);
    writeln('Las dos marcas con mayor cantidad de procesadores con transistores de 14 nm: ', max.marca1 ,' y ', max.marca2 );
    writeln('Marca y línea de todos los procesadores de más de 2 cores con transistores de a lo sumo 22 nm: ', marca1 , linea1);
end.  
