{
b. ARBA desea procesar información obtenida de imágenes satelitales de campos sembrados con soja en la
provincia de Buenos Aires. De cada campo se lee: localidad, cantidad de hectáreas sembradas y el tipo de zona
(1, 2 ó 3). La lectura finaliza al leer un campo de 900 ha en la localidad ‘Saladillo’, que debe procesarse. El precio
de la soja es de U$S320 por tn. Informar:
● La cantidad de campos de la localidad Tres de Febrero con rendimiento estimado superior a U$S 10.000.
● La localidad del campo con mayor rendimiento económico esperado.
● La localidad del campo con menor rendimiento económico esperado.
● El rendimiento económico promedio.
}

       
program P2P2P12;
procedure leeplantacion (var ha,zona,precious:integer);
begin
  writeln('hectares:'); readln(ha);
  writeln('tipo de zona:'); readln(zona);
  writeln('precio U$S:'); readln(precious);
end;
procedure calculo(ha,zona:integer; precious:real; var rendimiento:real);
begin
  case zona of
    1: rendimiento:= 6;
    2: rendimiento:= 2.6;
    3: rendimiento:= 1.4;
  end;
  rendimiento:= (rendimiento*ha*precious);
end;
var ha,zona,precious:integer; rendimiento:real;
begin
    rendimiento:= 0;
    leeplantacion(ha,zona,precious);
    calculo(ha,zona,precious,rendimiento);
    writeln(rendimiento:1:2);
end.

