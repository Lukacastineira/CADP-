{

4. Implemente un programa que lea el diámetro D de un círculo e imprima:
a. El radio (R) del círculo (la mitad del diámetro).
b. El área del círculo. Para calcular el área de un círculo debe utilizar la fórmula PI x R
2
c. El perímetro del círculo. Para calcular el perímetro del círculo debe utilizar la fórmula
D*PI (o también PI*R*2).

}


program P0P4;
var
  diametro, radio, area, perimetro: real;
begin
  writeln('diametro del circulo');
  read(diametro) ;
  radio:= diametro/2;
  area:= radio*radio*pi;
  perimetro:= diametro*pi;
  writeln('El radio de circulo es:',radio);
  writeln('el area del circulo es:',area);
  writeln('el perimetro del circulo es:', perimetro);
end.



