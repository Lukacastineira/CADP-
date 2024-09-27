{
ARBA desea procesar información obtenida de imágenes satelitales de campos sembrados con soja en la
provincia de Buenos Aires. De cada campo se lee: localidad, cantidad de hectáreas sembradas y el tipo de zona
(1, 2 ó 3). La lectura finaliza al leer un campo de 900 ha en la localidad ‘Saladillo’, que debe procesarse. El precio
de la soja es de U$S320 por tn. Informar:
● La cantidad de campos de la localidad Tres de Febrero con rendimiento estimado superior a U$S 10.000.
● La localidad del campo con mayor rendimiento económico esperado.
● La localidad del campo con menor rendimiento económico esperado.
● El rendimiento económico promedio

}


program doce_b;
const
     PRECIO_DOLAR = 320;

    procedure lee (var localidad: string; var cant_ha:integer; var tipo_zona:integer; var cant_leidos:integer);
        begin
            writeln('ingrese localidad');
            readln(localidad);
            writeln('ingrese cantidad de hectáreas');
            readln(cant_ha);
            writeln('ingrese tipo de zona: 1: muy fertil, 2: estandar, 3: arida');
            readln(tipo_zona);
            cant_leidos:= cant_leidos + 1;
        end;


    function calculo(cant_ha:integer; tipo_zona:integer; precio:real): real;
    var
        rendimiento : real;
    begin

         case tipo_zona of
	      1: rendimiento:= 6;
	      2: rendimiento:= 2.6;
	      3: rendimiento:= 1.4;
	 end;
	calculo:= (rendimiento*cant_ha*precio);
    end;


    procedure saca_mayor(var nom_mayor:string; var prom_mayor:real; rendimiento:real;localidad:string);
        begin
            if(rendimiento>prom_mayor)then begin
                prom_mayor:= rendimiento;
                nom_mayor:=localidad;
            end;
        end;
    procedure saca_menor(var nom_menor:string; var prom_menor:real; rendimiento:real;localidad:string);
        begin
            if(rendimiento<prom_menor)then begin
                prom_menor:= rendimiento;
                nom_menor:=localidad;
            end;
        end;

    function promedio_todo (sumador:real;cant_leidos:integer):real;
        begin
            promedio_todo:= (sumador/cant_leidos);
        end;

    var
        localidad,nom_mayor,nom_menor:string;
        cant_ha,tipo_zona,cant_leidos,cant_tres:integer;
        rendimiento,sumador,prom_mayor,prom_menor,r_prom:real;

    begin
        nom_mayor:= '';
        nom_menor:= '';
        cant_leidos:= 0;
        cant_tres:= 0;
        sumador:=0;
        prom_mayor:= 0;
        prom_menor:= 999999999;
        r_prom:=0;
        repeat
                lee(localidad,cant_ha,tipo_zona,cant_leidos);
                cant_leidos := cant_leidos + 1;
                rendimiento := calculo(cant_ha, tipo_zona, PRECIO_DOLAR);

                if (localidad = 'Tres de febrero') and (rendimiento >= 10000)then begin
                    cant_tres := cant_tres + 1;
                end;

                sumador := sumador + rendimiento;

                saca_mayor(nom_mayor,prom_mayor,rendimiento,localidad);
                saca_menor(nom_menor,prom_menor,rendimiento,localidad);
        until ((localidad = 'saladillo') and (cant_ha = 900));
        writeln('La cantidad de campos de la localidad Tres de Febrero con rendimiento estimado superior a U$S 10.000 fue: ',
        cant_tres);
        writeln('La localidad del campo con mayor rendimiento económico esperado fue: ',nom_mayor);
        writeln('La localidad del campo con menor rendimiento económico esperado fue: ',nom_menor);
        writeln('El rendimiento económico promedio fue: ',(promedio_todo(sumador,cant_leidos)):0:2);
        readln();
        readln();
    end.
/-----------------------------/