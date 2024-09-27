{
4. Realizar un programa que lea un número real X. Luego, deberá leer números reales hasta que se
ingrese uno cuyo valor sea exactamente el doble de X (el primer número leído).
}


program P1P4;
var
  numrealx, dobledereal: real;
begin
  read (numrealx);
  dobledereal := numrealx*2;
  while (numrealx <> dobledereal) do begin
    read (numrealx);
  end;
end.