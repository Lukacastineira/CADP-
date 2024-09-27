{
7. Realizar un programa que lea el código, el precio actual y el nuevo precio de los productos de un
almacén. La lectura finaliza al ingresar el producto con el código 32767, el cual debe procesarse.
Para cada producto leído, el programa deberá indicar si el nuevo precio del producto supera en un
10% al precio anterior.
Por ejemplo:
○ Si se ingresa el código 10382, con precio actual 40, y nuevo precio 44, deberá imprimir: “el
aumento de precio del producto 10382 no supera el 10%”
○ Si se ingresa el código 32767, con precio actual 30 y nuevo precio 33,01, deberá imprimir: “el
aumento de precio del producto 32767 es superior al 10%”

}


program P1P7;
var
   precioact, precionuevo, porcentaje :real;
   codigop: integer;
begin
  while (codigop <> 32767) do begin
    writeln ('ingrese codigo de producto ');
    read (codigop);
    writeln ('ingrese el precio actual del producto ');
    read (precioact);
    writeln ('ingrese el nuevo precio del producto ');
    read (precionuevo);
    if ((((precioact*10)/100)+ precioact)<precionuevo) then
      writeln('el aumento del precio del producto ', codigop, ' es superior al 10%')
    else
      writeln('el aumento del precio del producto: ',codigop, ' no supera el 10%');
  end;

end.