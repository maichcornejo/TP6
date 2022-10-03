program ejercicio2;
type
     mArchivo= file of integer;
var
    archivo:mArchivo;
    lec:integer;
    verificador:boolean;
function primos(primin:integer):boolean;
var
    divisor:integer;
    condicion:boolean;
begin
    divisor:=2;
    condicion:=false;
    repeat
        if (primin mod divisor=0) then
        begin
            condicion:=true;
        end;
        divisor:=divisor+1;
    until (condicion=true) or (divisor>primin-1);
    primos:= condicion;
end;


begin
    assign(archivo,'MAIA');
    reset(archivo);
    while not eof(archivo) do 
    begin 
        read(archivo, lec);
        writeln(lec);
        verificador:=primos(lec);
        if verificador=true then
            writeln('no es primo')
        else
            writeln('es primo');
    end;
    close(archivo);
end.