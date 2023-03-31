program ralph;
uses crt;
var Numero : longint;
var sn : char;
var frase: string;
var letra: char;
var conver: integer;

procedure octal;
var octal: string;
	a, b: integer;
begin
	clrscr;
			writeln('===================================================================');
			writeln('|             Ha seleccionado convertir a Octal                 |');
			writeln('===================================================================');
			writeln(' su frase es: ', frase,                                         ' |');
			writeln('===================================================================');
			write ('la conversion de su frase a octal seria: ');
			
  for a := 1 to length(frase) do begin
    letra := frase[a];
    conver := ord(letra);
    octal := '';
    while conver > 0 do begin
      octal := chr((conver mod 8) + 48) + octal;
      conver := conver div 8;
    end;
    for b := 1 to (3 - length(octal)) do  write('0');
    write(octal, ' ');
  end;
end;

procedure Binario;
var  binario: string;
     a, b: integer;
begin
clrscr;
			writeln('===================================================================');
			writeln('|             Ha seleccionado convertir a Binario                 |');
			writeln('===================================================================');
			writeln ('su frase es: ', frase,                                         ' |');
			writeln('===================================================================');
			write ('la conversion de su frase a binario seria: ');
			
  for a := 1 to length(frase) do begin
    letra := frase[a];
    conver := ord(letra);
    binario := '';
    
    while conver > 0 do begin
      if (conver mod 2) = 0 then
        binario := '0' + binario
      else
        binario := '1' + binario;
      
      conver := conver div 2;
    end;
    
    for b := 1 to (8 - length(binario)) do
      write('0');
    
    write(binario, ' ');
  end;
end;

Procedure hexadecimal;
var hexa: string;
	a, b: integer;
begin
clrscr;
			writeln('===================================================================');
			writeln('|           Ha seleccionado convertir a Hexadecimal               |');
			writeln('===================================================================');
			writeln ('su frase es: ', frase,                                         ' |');
			writeln('===================================================================');
			write ('la conversion de su frase a Hexadecimal seria: ');
			
  for a := 1 to length(frase) do begin
			letra := frase[a];
			conver := ord(letra);
			hexa := '';   
    while conver > 0 do begin
      if (conver mod 16) < 10 then
        hexa := chr((conver mod 16) + 48) + hexa
		else
        hexa := chr((conver mod 16) + 55) + hexa;     
		conver := conver div 16;
    end;
    
		for b := 1 to (2 - length(hexa)) do
		write('0');
		write(hexa, ' ');
  end;
end;

procedure Romano;
	var romano: string;
		a: integer;
begin
	clrscr;
			writeln('===================================================================');
			writeln('|              Ha seleccionado convertir a Romano                 |');
			writeln('===================================================================');
			writeln ('su frase es: ', frase,                                         ' |');
			writeln('===================================================================');
			write ('la conversion de su frase a Romano seria: ');
			
  for a := 1 to length(frase) do begin
    letra := frase[a];
    conver := ord(letra);
    romano := '';
    
	while conver >= 1000 do begin
      romano := romano + 'M';
      conver := conver - 1000;
	end;
    
    if conver >= 900 then begin
      romano := romano + 'CM';
      conver := conver - 900 end
     else if conver >= 500 then begin
      romano := romano + 'D';
      conver := conver - 500;
    end;
    
    while conver >= 100 do begin
      romano := romano + 'C';
      conver := conver - 100;
    end;
    
    if conver >= 90 then begin
      romano := romano + 'XC';
      conver := conver - 90; end
    else if conver >= 50 then begin
      romano := romano + 'L';
      conver := conver - 50;
    end;
    
    while conver >= 10 do begin
      romano := romano + 'X';
      conver := conver - 10;
    end;
    
    if conver >= 9 then begin
      romano := romano + 'IX';
      conver := conver - 9;
    end
    else if conver >= 5 then begin
      romano := romano + 'V';
      conver := conver - 5;
    end;
    
    while conver >= 1 do begin
      romano := romano + 'I';
      conver := conver - 1;
    end;
    
    writeln(romano, ' ');
  end;
end;


begin
repeat 
clrscr;
	writeln(' |===============================================================================================|');
	writeln(' |                                         "BIENVENIDO"                                          |');
	writeln(' |===============================================================================================|');
	writeln(' |                                    CONVERTIDOR DE FRASES                                      |');
	writeln(' |===============================================================================================|');
	writeln(' |Escriba la frase que desea convertir: ');
	writeln(' |===============================================================================================|');
	readln (frase);
	writeln('| ===============================================================================================|');
	clrscr;
	writeln(' |===============================================================================================|');
	writeln(' |=                            Indique como desea convertir su frase                            =|');   
	writeln(' |===============================================================================================|');         
	writeln(' |====================================-------|');
	writeln(' |   Presione 1 para convertir a "binario"   |');
	writeln(' |-------------------------------------------|');
	writeln(' |   Presione 2 para convertir a "octal"     |');
	writeln(' |-------------------------------------------|');
	writeln(' | Presione 3 para convertir a "Hexadecimal" |');
	writeln(' |-------------------------------------------|');
	writeln(' |   Presione 4 para convertir a "Romano"    |');
	writeln(' |-------------------------------------------|');    	
		readln(Numero);        		    
		if Numero = 1 then Binario ; 
		if Numero = 2 then octal ;
		if Numero = 3 then hexadecimal; 
		if Numero = 4 then Romano; 
		if Numero = 1 then writeln else if Numero = 2 then writeln  else if Numero = 3 then writeln else if Numero = 4 then writeln
			else writeln('no selecciono ninguna opcion disponible');
			while (Numero <> 1) and (Numero <> 2) and (Numero <> 3)  and (Numero <> 4) do		
		begin
		   write('Por favor elige una opcion en pantalla : '); 
		   readln(Numero);
	  end;
        writeln('--------------------------------------------');
		writeln('============================================');
		Writeln('si desea continuar presione "ENTER")');
		Writeln('si desea salir presione "1")');
		writeln('============================================');						
					Readln(sn);
	until (sn = '1') or (sn = '1');
end.


