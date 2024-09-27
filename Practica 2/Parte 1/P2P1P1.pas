program alcance4;
procedure enteros;
var
  num,numalto:integer;
begin
numalto:= -1;
readln(num);
  while (num>=0) do 
  begin
    if(num mod 2 = 0) and (num>numalto) then 
      begin
        numalto:=num;
      end;
    readln(num);
  end;
  writeln(numalto);
end;
begin
  enteros;
end.

