{P4 E3}
program sumador;
const
  dimF = 100;
type
    vNum = array [1..dimF] of integer;

{Realizar un módulo que reciba el vector, una posición X y otra posición Y,
e imprima el vector desde la posición X hasta la Y. Asuma que tanto X como Y son
menores o igual a la dimensión lógica. Y considere que, dependiendo de los valores
de X e Y, podría ser necesario recorrer hacia adelante o hacia atrás.}
procedure imprimirXY (v : vNum; X : integer; Y : integer);
var
  i : integer;
begin
  if (X < Y) then begin
    for i := X to Y do begin
      write('[ ', v[i], ' ] ');
    end;
  end
  else begin
    for i := X downto Y do begin
      write('[ ', v[i], ' ] ');
    end;
  end;
  writeln();
end;

var
   v : vNum;
   dimL : integer;
   i : integer;
begin
  dimL := 0;
  for i:= 1 to 10 do
      v[i] := i;
  dimL := 10;

  //inciso A
  writeln('Inciso A : ');
  imprimirXY(v, 1, dimL);

  //inciso B
  writeln('Inciso B : ');
  imprimirXY(v, dimL, 1);

  //inciso C
  writeln('Inciso C : ');
  imprimirXY(v, dimL DIV 2, 1);
  imprimirXY(v, dimL DIV 2 + 1, dimL);

  readln();
  readln();

end.
---------------------------