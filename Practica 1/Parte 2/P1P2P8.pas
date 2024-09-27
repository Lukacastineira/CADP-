{
8. Un local de ropa desea analizar las ventas realizadas en el último mes. Para ello se lee por cada día
del mes, los montos de las ventas realizadas. La lectura de montos para cada día finaliza cuando se
lee el monto 0. Se asume un mes de 31 días. Informar la cantidad de ventas por cada día, y el monto
total acumulado en ventas de todo el mes.
a. Modifique el ejercicio anterior para que además informe el día en el que se realizó la mayor
cantidad de ventas.
}


program P1P2P8;
var
  i,dia :integer;
  monto, montototalmes, ventadia, diamax: real;
begin
  montototalmes:= 0;
  diamax:= 0 ;
    for i:= 1 to 31 do 
    begin
       ventadia:= 0;
       write('monto: '); readln(monto);
         while (monto <> 0) do 
           begin
             ventadia:= ventadia + monto;
             write('monto: '); readln(monto);
           end;
           if(diamax<ventadia) then
           begin
             diamax:=ventadia;
             dia:= i;
           end;
       writeln('ventas del dia: ',ventadia:10:2,'%');
       montototalmes:= montototalmes + ventadia;
   end;
     writeln('dia con mayor cantidad de ventas fue: ',dia);
     writeln('el monto total de ventas del mes es: ', montototalmes:2:2,'$');
end.