Program CaixaEletronico;

uses crt;

var
	saldo, valor, opcao: integer; 
Begin
repeat 
	begin
		clrscr;
		writeln('Caixa Eletrônico MR');	
		writeln('Selecione a opcao desejada.');
		writeln('1 - Saque');		
		writeln('2 - Saldo');
		writeln('3 - Extrato');
		writeln('4 - Deposito');
		writeln('5 - Sair');	
		readln(opcao);
		
		if (opcao=1) then    {saque}
			begin
				clrscr();
				writeln('Digite um valor para sacar:');
				readln(valor);
			
				if (valor<=saldo) then 
					begin
						saldo:= saldo - valor;
						writeln('Saque feito com sucesso!');
						delay(3000);
					end
				else 
					begin
						writeln('Valor digitado maior que o saldo!'); 					
						delay(3000);
					end;
			end;
			
		if (opcao=2) then   {saldo}
			begin
				clrscr();
				writeln('Saldo disponível: R$ ', saldo, ',00');
				writeln('Tecle ENTER para ir para o menu principal');
				readln();			
				
			end;
			
		if (opcao=3) then    {extrato}
			begin	
				writeln('Opcao indisponivel no momento!');
				delay(3000); 
			end;
			
		if (opcao=4) then    {deposito}
			begin
				clrscr();
				writeln('Digite um valor para depositar:');
				readln(valor);
				saldo:= saldo + valor;
				if (valor > 0) then 
					begin
						writeln('Valor depositado com sucesso!');
						delay(3000);
					end;
				
			end;
	
	
								
		end;
	until (opcao = 5);
	writeln('Pressione ENTER para sair');
	readln;
	
End.