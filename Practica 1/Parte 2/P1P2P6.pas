{
6. Realizar un programa que lea información de 200 productos de un supermercado. De cada producto
se lee código y precio (cada código es un número entre 1 y 200). Informar en pantalla:
- Los códigos de los dos productos más baratos.
- La cantidad de productos de más de 16 pesos con código par.
}


program P1P2P6;
var
  codigo,codigo1, codigo2, cantp, i :integer;
  precio,menor1, menor2:real;
begin
  menor1:= 32767;
  menor2:= 32767;
  cantp:= 0;
  for i:= 1 to 5 do begin
    writeln('codigo: ');
    read(codigo);
    writeln('precio: ');
    read(precio);
    if (menor1>precio) then begin
      menor2:= menor1;
      codigo2:= codigo1;
      menor1:= precio;
      codigo1:= codigo;
     end
    else
    if(menor2>precio) then begin
    menor2:= precio;
    codigo2:= codigo;
    end;
    if(precio>16) and (codigo mod 2 =0) then 
    cantp := cantp + 1;
    
  end;
  writeln('los codigos de los productos mas baratos son: ',codigo1, ' y ', codigo2);
  writeln('La cantidad de productos de más de 16 pesos con código par: ', cantp);
end.
  
  
  
  