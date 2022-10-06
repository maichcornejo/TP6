program ejer4;
type
talumnos=record
    nombre: string;
    edad: integer;
    direccion: string;
    carrera: string;
    mataprobadas: integer;
end;
tarchivo=file of talumnos;
var
archivo: tarchivo;
alumnos:talumnos;
menu: integer;


procedure escritura (var minion:talumnos);
begin
    reset (archivo, 'ej4');
    with alumnos do begin
            writeln ('Ingrese el nombre del alumno');
            readln (nombre);
            writeln ('Ingrese la edad del alumno');
            readln (edad);
            writeln ('Ingrese la direccion');
            readln (domicilio);
            writeln ('Ingrese la carrera que cursa');
            readln (carrera);
            writeln ('Ingrese la cantidad de materias aprobadas');
            readln (mataprobadas);
    write (archivo, alumnos);
    close (archivo);
end;
procedure borrado (var );
begin
writeln ('Ingrese ')




begin
    assign (archivo, 'ej4');
    rewrite (archivo);
    with alumnos do begin
        writeln ('Ingrese el nombre del alumno');
        readln (nombre);
        writeln ('Ingrese la edad del alumno');
        readln (edad);
        writeln ('Ingrese la direccion');
        readln (domicilio);
        writeln ('Ingrese la carrera que cursa');
        readln (carrera);
        writeln ('Ingrese la cantidad de materias aprobadas');
        readln (mataprobadas);
    end;
    write (archivo, alumnos);
    close(archivo);
    writeln ('Ingrese 1 para agregar un alumno nuevo, 2 para borrar un alumno y 3 para imprimir todos los alumnos');
    readln (menu);
    case menu of
    1: escritura();
    2 borrado ();
    3:listado();
    end; 
end.