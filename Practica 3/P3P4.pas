{
4. Una compañía de telefonía celular debe realizar la facturación mensual de sus 9300 clientes con planes de
consumo ilimitados (clientes que pagan por lo que consumen). 
Para cada cliente se conoce su 
código de cliente y
cantidad de líneas a su nombre. 
De cada línea se tiene 
el número de teléfono,
la cantidad de minutos consumidos
y la cantidad de MB consumidos en el mes.

Se pide implementar un programa que lea los datos de los clientes de
la compañía e informe el monto total a facturar para cada uno. Para ello, se requiere:

a. Realizar un módulo que lea la información de una línea de teléfono.
b. Realizar un módulo que reciba los datos de un cliente, lea la información de todas sus líneas (utilizando el
módulo desarrollado en el inciso a. ) y retorne la cantidad total de minutos y la cantidad total de MB a facturar
del cliente.
Nota: para realizar los cálculos tener en cuenta que cada minuto cuesta $3,40 y cada MB consumido cuesta $1,35.
}


program P3P4;
const
  clientes=3;
type
  cliente = record
    cod:integer;
    lineas:integer;
end;
  linea=record
    num:integer;
    minutos:real;
    megas:real;
end;
procedure leeCliente (var cli:cliente);
begin
  write('Codigo: '); readln(cli.cod);
  write('Lineas: '); readln(cli.lineas);
end;
procedure leeLinea (var lin:linea);
begin
  write('Numero: '); readln(lin.num);
  write('Minutos: '); readln(lin.minutos);
  write('MB: '); readln(lin.megas);
end;
function minutos (minuto:real):real;
begin  
  minutos:= (minuto*3.40);
end;
function megaB (mega:real) : real;
begin
  megaB:= (mega*1.35);
end;
var  lin:linea; cli:cliente; i,x:integer;  minutosp,minutost,megap,megat:real; 
begin
  minutost:= 0;
  megat:=0;
  for i:= 1 to clientes do 
  begin
      leeCliente(cli);
      leeLinea(lin);
      minutosp:=minutos(lin.minutos);
      megap:= megaB(lin.megas);
      minutost:= minutosp;
      megat:= megap;
      writeln('la cantidad total de minutos a facturar de esta linea es: ', minutosp:1:2);
      writeln('la cantidad total de MB a facturar de esta linea es: ', megap:1:2);
    if (cli.lineas >= 2 ) then 
    begin
      for x:=2 to cli.lineas do 
        begin
          minutost:= minutost + minutosp;
          megat:= megat + megap;
          leeLinea(lin);
          minutosp:=minutos(lin.minutos);
          megap:= megaB(lin.megas);
          writeln('la cantidad total de minutos a facturar de esta linea es: ', minutosp:1:2);
          writeln('la cantidad total de MB a facturar de esta linea es: ', megap:1:2);
        end;
        writeln('El total de minutos a facturar del cliente es: ',minutost:1:2);
        writeln('El total de MB a facturar del cliente es: ',megat:1:2);
      end;
  end;
end.
