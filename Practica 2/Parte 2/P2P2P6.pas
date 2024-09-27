{
6. Realizar un programa modularizado que lea datos de 100 productos de una tienda de ropa. Para cada
producto debe leer el precio, código y tipo (pantalón, remera, camisa, medias, campera, etc.). Informar:
● Código de los dos productos más baratos.
● Código del producto de tipo “pantalón” más caro.
● Precio promedio.
}


program P2P2P6;
const 
  productos = 100;
procedure producto (var precio:real; var codigo:integer; var tipo:string);
begin
  writeln('precio'); readln(precio);
  writeln('codigo'); readln(codigo);
  writeln('tipo'); readln(tipo);
end;
procedure masBaratos (precio:real; var preciobarato1, preciobarato2:real; codigo:integer; var codbarato1, codbarato2: integer);
begin
  if (precio < preciobarato1)then begin
    preciobarato2 := preciobarato1;
    codbarato2:= codbarato1;
    preciobarato1:= precio;
    codbarato1:= codigo;
    end
    else
    if(precio<preciobarato2) then begin
    preciobarato2:= precio;
    codbarato2:= codigo;
  end;
end; 
procedure lompa (precio:real; codigo:integer; tipo:string; var codlompa:integer; var preciolompa:real);
begin
  if (tipo = 'pantalon') and (precio > preciolompa) then 
  begin
      preciolompa:= precio;
      codlompa:=codigo;
  end;
end;
procedure promedio (precio:real; var promprecio:real);
begin 
  promprecio:= promprecio + precio; 
end;
var
  precio,preciobarato1,preciobarato2,preciolompa, promprecio:real; codigo,codbarato1,codbarato2,codlompa,i :integer; tipo:string;
begin
  precio:= 0;
  codigo:= 0;
  preciobarato1:= 31000;
  preciobarato2:= 31000;
  codbarato1:= 31000;
  codbarato2:= 31000;
  preciolompa:= 0;
  codlompa:= 0;
for i:= 1 to productos do
begin
  producto(precio, codigo, tipo);
  masBaratos(precio,preciobarato1,preciobarato2,codigo,codbarato1,codbarato2);
  lompa(precio,codigo,tipo,codlompa,preciolompa);
  promedio(precio,promprecio);
end;
    promprecio  := promprecio / 100;
    writeln('el Código de los dos productos más baratos es: ', codbarato1, ' y ', codbarato2);
    writeln('el codigo de el pantalon mas caro es: ', codlompa);
    writeln('el precio promedio es: ', promprecio:1:2);
       
end.