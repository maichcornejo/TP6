program ejer3;
const
n=10;
max=5;
type
matriztipo=array [1..n] of integer;
tarchivo=file of matriztipo;
var
vector: matriztipo;
archivo:tarchivo;
i, j, contador, aux:integer;
begin
    contador:=0;
    assign (archivo, 'Facu');
    rewrite (archivo);
    randomize;
    for j:=1 to max do 
        begin
            for i:=1 to n do
                begin
                    vector[i]:=random(10);
                    write (vector[i], ' ');
                end;
            writeln;
            write (archivo, vector);
        end;
        seek (archivo, 0);
    while not eof(archivo) do
        begin
            contador:=contador+1;
            read(archivo, vector);
        end;
    writeln ('El archivo tiene ', contador, ' vectores');
    aux:= random (contador+1);
    writeln (aux);
    seek (archivo, aux);
    read (archivo, vector);
    for i:=1 to n do
        write (vector[i], ' ');
    close (archivo);
end.