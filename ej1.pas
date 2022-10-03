program ejercicio1;
    type
        mArchivo=file of integer;
    
    var 
        archivo: mArchivo;
        encontrado,contador,lectura,valor,i,numero:integer;
        verificador:boolean;
    function buscador(ingresado:integer):integer;
    var
    lec:integer;
    begin
        while not eof(archivo) do 
            begin 
            read(archivo, lec);
             if (lec=ingresado) then   
                begin
                    contador:=contador+1;
                    verificador:=true;
                end;    
            write(lec,' ');
             end;
    end;
    
    begin
        contador:=0;
        verificador:=false;
        randomize;
        assign(archivo, 'MAIA');
        rewrite(archivo);
        for i:= 1 to 10 do 
            begin
            valor:=random(10);
            write(archivo,valor);
            end;
        seek(archivo, 0);
        writeln('Ingrese numero');
        readln(numero);
        encontrado:=buscador(numero);
        close(archivo);
        writeln('');
        if verificador=true then
             writeln('El numero ingresado esta ',contador,' veces');
    end.