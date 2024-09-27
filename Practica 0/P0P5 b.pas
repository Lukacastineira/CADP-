{
5. Un kiosquero debe vender una cantidad X de caramelos entre Y clientes, dividiendo cantidades
iguales entre todos los clientes. Los que le sobren se los quedará para él.
a. Realice un programa que lea la cantidad de caramelos que posee el kiosquero (X), la
cantidad de clientes (Y), e imprima en pantalla un mensaje informando la cantidad de
caramelos que le corresponderá a cada cliente, y la cantidad de caramelos que se
quedará para sí mismo.
b. Imprima en pantalla el dinero que deberá cobrar el kiosquero si cada caramelo tiene un
valor de $1.60.
}


program P0P5;
var
  caramelos, clientes :integer;
  carameloxcliente, preciocaramelo, ctotalesclientes : real;
begin
  writeln('cantidad de caramelos');
  read(caramelos);
  writeln('cantidad de clientes');
  read(clientes);
  carameloxcliente:= caramelos DIV clientes;
  ctotalesclientes:= carameloxcliente*clientes;
  preciocaramelo:= ctotalesclientes*1.60;
  writeln('La cantidad de caramelos por cliente:', carameloxcliente:1:2);
  writeln('la cantidad de caramelos que se queda el kiosquero:',caramelos mod clientes);
  writeln('El kiosquero ganara un total de:', preciocaramelo:1:2, '$ Pesos');
end.