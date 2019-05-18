Program Pzim ;

Var
	time, min, sec: integer;
	botaopressionado: boolean;

Begin
	writeln('Bem-vindo ao seu merecido lazer. Quantos minutos ele vai durar?');
	readln(time);
	repeat
		begin
		  delay(1000);
			clrscr; 		  
			writeln('Horário iniciado! Tempo escolhido: ',time,' minutos.');
			writeln('Tempo Transcorrido: ', min, ':', sec ); 
			sec := (sec+1);
			
			if (sec = 60) then
				begin     
					min:=(min+1);
					sec:=0;
				end; 
			
			if keypressed then
				begin 
				clrscr;
					writeln('Tempo interrompido aos ',min,' minutos! Pressione Enter para sair!');   					
					min:=(time);
					botaopressionado:=(true);
					readln;
				end;
		end;
	until (min=time);
	
	if min=time then
		if botaopressionado=false then
			begin
				writeln('Fim da contagem! ',min,' minutos. Agora corre q tu tem');
				writeln('uma mulher e três gatos te esperando! Pressione Enter para sair!');
				readln; 
			end
		else readln;
	
End.