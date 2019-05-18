Program jogodavelha; 

uses
  crt;


var
  rodada: Integer;
  victory, winner, looser, player1, player2, jogada1, jogada2, jogada3, jogada4, jogada5, jogada6, jogada7, jogada8, jogada9, a, b, c, d, e, f, g, h, i: char;
  gameover: Boolean;
  
procedure Vitoria(var a, b, c, d, e, f, g, h, i: char);
	begin
	{vitórias}
	if(a=b) and (a=c) then 
		begin
			gameover:=true;
			victory:=a;
		end;
	if(d=e) and (d=f) then 
		begin
			gameover:=true;
			victory:=d;
		end;
	if(g=h) and (g=i) then 
		begin
			gameover:=true;
			victory:=g;
		end;
	if(a=d) and (a=g) then 
		begin
			gameover:=true;
			victory:=a;
		end;
	if(b=e) and (b=h) then 
		begin
			gameover:=true;
			victory:=b;
		end;
	if(c=f) and (c=i) then 
		begin
			gameover:=true;
			victory:=c;
		end;
	if(a=e) and (a=i) then 
		begin
			gameover:=true;
			victory:=a;
		end;
	if(c=e) and (c=g) then 
		begin
			gameover:=true;
			victory:=c;
		end;
	
	if victory= player1 then 
	begin
		winner:=player1;
		looser:=player2;
	end
	else
	begin
		winner:=player2;
		looser:=player1;
	end;
end;

{jogadas}
procedure play (jogada, player: char);
begin
	if(jogada='a') then a:= player;
	if(jogada='b') then b:= player;
	if(jogada='c') then c:= player;
	if(jogada='d') then d:= player;
	if(jogada='e') then e:= player;
	if(jogada='f') then f:= player;
	if(jogada='g') then g:= player;
	if(jogada='h') then h:= player;
	if(jogada='i') then i:= player;
end;

begin
	{valores das casas}
  a := 'A';
  b := 'B';
  c := 'C';
  d := 'D';
  e := 'E';
  f := 'F';
  g := 'G';
  h := 'H';
  i := 'I';
  gameover:=false;
  rodada:=0;
  
  {tela inicial}
  clrscr();
  WriteLn('Jogo da Velha');
  WriteLn('Tecle ENTER para entrar.');
  ReadLn();
  clrscr();
  WriteLn('Player 1, Com qual vc quer jogar?');
  WriteLn('X ou O?');
  ReadLn(player1);
  case player1 of 
    'X': 
    begin
      player2 := 'O';
      writeln('Player 2: O');
    end;
    'O': 
    begin
      player2 := 'X';
      writeln('Player 2: X');
    end;
    else 
    begin
      repeat 
        begin
          writeln('Letra inválida! Digite X ou O.');
          ReadLn(player1);
        end;
      until (player1 = 'X') or (player1 = 'O');
    end;
	end;
	{começa o jogo}
  repeat 
    begin
      rodada:=(rodada + 1);
      clrscr();
      WriteLn(a, '|', b, '|', c);
      WriteLn('-+-+-');
      WriteLn(d, '|', e, '|', f);
      WriteLn('-+-+-');
      WriteLn(g, '|', h, '|', i);
      writeln('');        
      case rodada of
	      1:begin 
	      		writeln('player1, digite uma letra de A a I.');
						readln(jogada1);
						play(jogada1, player1);							
						vitoria( a, b, c, d, e, f, g, h, i); 						
					end; 						
	      2: begin 
	      		writeln('player2, digite uma letra de A a I.');
						readln(jogada2);
						play(jogada2, player2);							
						vitoria( a, b, c, d, e, f, g, h, i);
					end;
	      3: begin 
	      		writeln('player1, digite uma letra de A a I.');
						readln(jogada3);
						play(jogada3, player1);							
						vitoria( a, b, c, d, e, f, g, h, i);
					end;
	      4: begin 
	      		writeln('player2, digite uma letra de A a I.');
						readln(jogada4);         
						play(jogada4, player2);							
						vitoria( a, b, c, d, e, f, g, h, i);
					end;
	      5: begin 
	      		writeln('player1, digite uma letra de A a I.');
						readln(jogada5);
						play(jogada5, player1);							
						vitoria( a, b, c, d, e, f, g, h, i);
					end;
	      6: begin 
	      		writeln('player2, digite uma letra de A a I.');
						readln(jogada6);
						play(jogada6, player2);							
						vitoria( a, b, c, d, e, f, g, h, i);
					end;
	      7: begin 
	      		writeln('player1, digite uma letra de A a I.');
						readln(jogada7);
						play(jogada7, player1);							
						vitoria( a, b, c, d, e, f, g, h, i);
					end;
	      8: begin 
	      		writeln('player2, digite um nÃºmero de 1 a 9.');
						readln(jogada8);
						play(jogada8, player2);							
						vitoria( a, b, c, d, e, f, g, h, i);
					end;
	      9: begin 
	      		writeln('player1, digite um nÃºmero de 1 a 9.');
						readln(jogada9);
						play(jogada9, player1);							
						vitoria( a, b, c, d, e, f, g, h, i);
					end;
	      else gameover:=true;
			end;   
  	end;
  until (gameover=true);
  if (gameover=true) then
  	begin
  	clrscr;
  	WriteLn(a, '|', b, '|', c);
      WriteLn('-+-+-');
      WriteLn(d, '|', e, '|', f);
      WriteLn('-+-+-');
      WriteLn(g, '|', h, '|', i);
      writeln('');
  	writeln(winner, ' vence! Parabéns! E o ' , looser , ' vai pra puta que o pariu! Tecle ENTER para sair!');    	
  end;
  readln;	
end.