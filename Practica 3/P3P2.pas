{
2. El registro civil de La Plata ha solicitado un programa para analizar la distribución de casamientos durante el año
2019. Para ello, cuenta con información de las fechas de todos los casamientos realizados durante ese año.
a) Analizar y definir un tipo de dato adecuado para almacenar la información de la fecha de cada casamiento.
b) Implementar un módulo que lea una fecha desde teclado y la retorne en un parámetro cuyo tipo es el definido
en el inciso a).
c) Implementar un programa que lea la fecha de todos los casamientos realizados en 2019. La lectura finaliza al
ingresar el año 2020, que no debe procesarse, e informe la cantidad de casamientos realizados durante los
meses de verano (enero, febrero y marzo) y la cantidad de casamientos realizados en los primeros 10 días de
cada mes. Nota: utilizar el módulo realizado en b) para la lectura de fecha.
}


program P3P2;
type 
  casamientos = record
    dia:integer;
    mes:integer;
    anio:integer;
end;
procedure leecas (var cas:casamientos);
begin 
    writeln ('Año: '); readln(cas.anio);
    if (cas.anio<>2020) then begin
    writeln('dia: '); readln(cas.dia);
    writeln('mes: '); readln(cas.mes);
    end;
end;
procedure  casinforme (cas:casamientos; var contcasEFM:integer);
begin
  if (cas.mes = 1) or (cas.mes = 2) or (cas.mes = 3) then 
    contcasEFM := contcasEFM + 1;
end;
procedure cas10dias (cas:casamientos; var contador10dias:integer);
begin
  if (cas.dia <= 10) then 
    contador10dias := contador10dias + 1;
end;
var cas:casamientos; contcasEFM:integer; contadordias:integer;
begin
  contcasEFM:= 0;
  contadordias:= 0;
    leecas(cas);
    while (cas.anio<>2020) do begin 
      leecas(cas);
      casinforme(cas,contcasEFM);
      cas10dias(cas,contadordias);
      end;
  writeln('los casamientos en meses de verano fueron: ',contcasEFM);
  writeln('la cantidad de casamientos realizados en los primeros 10 días es: ', contadordias);
end.