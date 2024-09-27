{5.a. Realizar un módulo que reciba un par de números (numA,numB) y retorne si numB es el doble de numA.}

program P2P2P5;
procedure numeros (numA, numB:integer);
begin
writeln('numero 1:'); readln(numA);
writeln('numero 2:'); readln(numB);
if (numB= numA*2) then 
  writeln(numB, ' es el doble de ', numA)
 else
  writeln('no es el doble');
end;

var
numA, numB:  integer;
begin
  numeros(numA,numB);
end.


 {b. Utilizando el módulo realizado en el inciso a., realizar un programa que lea secuencias de pares de
números hasta encontrar el par (0,0), e informe la cantidad total de pares de números leídos y la cantidad de
pares en las que numB es el doble de numA.

Ejemplo: si se lee la siguiente secuencia: (1,2) (3,4) (9,3) (7,14) (0,0) el programa debe informar los valores
4 (cantidad de pares leídos) y 2 (cantidad de pares en los que numB es el doble de numA).    
}

program P2P2P5b;
procedure numeros (var numA, numB:integer);
begin
    writeln('numero 1:'); readln(numA);
    writeln('numero 2:'); readln(numB);
end;
procedure numpar (numA, numB : integer;  var pares:integer);
begin 
  if (numA mod 2= 0) then begin
    pares:= pares + 1;
    end;
  if (numB mod 2= 0) and (numB<>0) then begin
    pares:= pares + 1;
    end;
end;
procedure parmayor (numA,numB:integer; var paresmayor: integer);
begin
  if (numA mod 2= 0) or (numB mod 2= 0) then begin
    if (numA*2=numB) and (numB<>0) then begin
    paresmayor:= paresmayor + 1;
  end;
  end; 
end;
var
  numA, numB, pares, paresmayor: integer;
begin
  pares:= 0;
  paresmayor:= 0;
  repeat
  numeros (numA, numB);
  numpar(numA,numB,pares);
  parmayor(numA,numB,paresmayor);
  until (numA=0) and (numB=0);
  writeln('el total de numeros pares es: ', pares);
  writeln('pares en los que numB es el doble de numA: ', paresmayor);
end.   