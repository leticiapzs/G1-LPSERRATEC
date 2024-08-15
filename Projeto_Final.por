programa
{

	//8. Incluir, pelo menos, duas bibliotecas.
	inclua biblioteca Texto --> txt
	inclua biblioteca Util --> u
	inclua biblioteca Tipos --> ti

	cadeia logar, usuario, password
	logico verificador = falso
	inteiro sair

	funcao inicio(){
		logo()
		menuLogin()

		enquanto(verificador == verdadeiro){
			//cria Logo da loja
				
			menuPrincipal()
	
			escreva("Deu certo!!!")
	
			//c. Um tratamento de erro no login.				
	
			//Menu (Organizado e criativo)				
		
			//a. Nome do usuário logado;			
				
			//b. Lista as categorias;				
				
			//c. Após escolher a categoria, exibe os produtos;
				
			//d. Opção de sair caso o usuário não deseje mais acessar o sistema (retorna para a tela de login);
			
			//e. Um tratamento de erro no menu.				
		
			//Produtos
			//a. Inserir uma arte (pequena) que represente cada produto;			
		
			//b. Nome do produto;
				
			//c. Descrição breve do produto;
				
			//d. Quantidade de itens (estoque);
					
			//e. Preço do produto (ex: R$ 10,99);
		
			//f. Opção de voltar ao menu anterior;
			
			//g. Um tratamento de erro nos produtos.
			
			/*Bônus:
			1. Utilizar a estrutura para...até...faça para desenhar a logo da loja.
				
			2. Outros três tratamentos de erros em qualquer parte do sistema.
				
			3. Criar um login administrador que realize as seguintes alterações:
			a. exclua um usuário existente;
			b. altere um usuário existente;
			c. adicione um usuário novo.
				
			4. Carrinho de compras
			a. Lista os produtos inseridos no carrinho, suas quantidades e preços unitário;
			b. Inserir valor total no carrinho;
			c. Opção de voltar ao menu anterior;
			d. Opção de confirmar compra disparando uma mensagem, tipo “Compra realizada com sucesso!” e limpa(zera) o carrinho.*/
				
			verificador = falso
		}
	}


	funcao logo()
	{
		para(inteiro i = 0; i < 6; i++) {
            	escreva("* ")
        	}
        	escreva("\n")
        	para(inteiro i = 0; i < 2; i++) {
            	se(i != 1) {
               	escreva("*         *\n")
            	}senao {
               	para(inteiro j = 0; j < 2; j++) {
	                    se(j == 1) {
		                    escreva("* =( •.•)=*\n")
		                    escreva("*  /  />♡ *\n")
		                    escreva("* CatCafé *\n")
                    	}senao {
                        		escreva("*   ∧,,∧  *\n")
                    	}
                	}
                	escreva("*         *\n")
            	}
        	}
        	para(inteiro i = 0; i < 6; i++) {
			escreva("* ")
        	}        	
        	escreva("\n")
        	
        	u.aguarde(1000)
        	limpa()

        	para(inteiro i = 0; i < 6; i++) {
            	escreva("* ")
        	}
        	escreva("\n")
        	para(inteiro i = 0; i < 2; i++) {
           	se(i != 1) {
                	escreva("*         *\n")
            	}senao {
                	para(inteiro j = 0; j < 2; j++) {
					se(j == 1) {
						escreva("* =( •.•)=*\n")
						escreva("*  / <\\♡  *\n")  // Movimenta a posição do coração
						escreva("* CatCafé *\n")
					}senao {
						escreva("*   ∧,,∧  *\n")
		               }
				}
				escreva("*         *\n")
            	}
        	}
        	para(inteiro i = 0; i < 6; i++) {
			escreva("* ")
        	}
        	escreva("\n")

        	u.aguarde(1000)
		limpa()        		
        	para(inteiro i = 0; i < 6; i++) {
            	escreva("* ")
        	}
        	escreva("\n")
        	para(inteiro i = 0; i < 2; i++) {
            	se(i != 1) {
               	escreva("*         *\n")
            	} senao {
				para(inteiro j = 0; j < 2; j++) {
					se(j == 1) {
						escreva("* =( •.•)=*\n")
	                        	escreva("*  <\\  />♡*\n")  // Movimenta o coração para o outro lado
	                        	escreva("* CatCafé *\n")
	                    } senao {
					escreva("*   ∧,,∧  *\n")
				}
               }
                escreva("*         *\n")
            	}
        	}
        	para(inteiro i = 0; i < 6; i++) {
            	escreva("* ")
        	}
        	escreva("\n")
        	u.aguarde(1000)
	}

	funcao menuLogin(){
		//Deseja entrar na loja? S/N

		escreva("\nDeseja efetuar o login na Loja? (sim/nao)\n")
		leia(logar)
		logar = txt.caixa_baixa(logar)

		//verifica se logar é diferente de sim ou não
		se(logar != "sim"){
			se(logar != "nao"){
				escreva("Opção inválida! só é aceita respostas de sim ou nao!")
				u.aguarde(2000)
				limpa()
				inicio()
			}
		}
				
		//a. caso sim: Login
		se(logar == "sim"){
			limpa()
			escreva("Digite seu usuario: ")
			leia(usuario)
			escreva("Digite sua senha: ")
			leia(password)
			limpa()
			escreva("Deseja continuar?\nOpção 1 = sim\nOpção 2 = nao\nOpção 3 = voltar ao menu\n\n")
			leia(sair)

			escolha(sair){
				caso 1:
					limpa()
					escreva(".")
					u.aguarde(1000)
					limpa()
					escreva("..")
					u.aguarde(1000)
					limpa()
					escreva("...")
					u.aguarde(1000)
					//Chama a funcao login
					verificador = login(usuario, password)
					pare

				caso 2:
					escreva("\nsaindo...")
					u.aguarde(1000)
					limpa()
					verificador = falso
					pare
					
				caso 3:
					escreva("\nVoltando ao menu!")
					u.aguarde(1500)
					limpa()
					menuLogin()
					pare

				caso contrario:
					escreva("\nOpção inválida! Voltando a escolha")
					menuLogin()
					pare
				
				}			
		}

		//caso não: dispara uma mensagem tipo “Volte sempre que desejar!”
		se(logar == "nao"){
			limpa()
			escreva("Volte sempre que desejar!")
			u.aguarde(2000)
			limpa()
		}
	}

	funcao logico login(cadeia usuario, cadeia password){

		logico logado = falso
		cadeia vetor[][] = {{"Lucas", "1234"}, {"Lorrayne","2345"}, {"Leticia", "3456"}, {"Yuri","4567"}, {"Frederico","5678"}}

		// Converte os nomes dos usuários e do usuario querendo se conectar para caixa baixa

		usuario = txt.caixa_baixa(usuario)
    		para(inteiro i = 0; i < 5; i++){
        		vetor[i][0] = txt.caixa_baixa(vetor[i][0])
    		}

		//i. Verificação de acesso (se o usuário e senha forem válidos, entra no sistema, senão
		//retorna para o usuário digitar novamente);
    		para(inteiro i = 0; i < 5; i++) {
       		se(usuario == vetor[i][0] e password == vetor[i][1]) {
       			limpa()
       			escreva("Aguarde enquanto efetuamos o Login!")
       			u.aguarde(2000)
       			limpa()
          		escreva("Usuario logado com sucesso!")
          		u.aguarde(2500)    		
          		limpa()
          		logado = verdadeiro
          		retorne logado
        		}
    		}
    			//Caso não tenha usuario cadastrado
    			limpa()
       		escreva("Aguarde enquanto efetuamos o Login!")
       		u.aguarde(2000)
       		limpa()
			escreva("Usuario ou senha incorretos, tente novamente!")
			u.aguarde(3000)
			limpa()
			logado = falso
          	retorne logado	
	}
		//Menu Principal 
		funcao menuPrincipal() {

			inteiro opcao

			escreva("Olá, é ótimo ter você de volta! ♡\nSeja bem-vindo(a) ", usuario, " ao CatCafé, a nossa cafeteria ")
			escreva("onde você sentirá como um gato!\nCom miados e ronronos são liberados. Carinhos e o sabor se encontram.\n\n")
			u.aguarde(2000)
			escreva("Miau! O que você acha de dar uma olhadinha no nosso miaudápio?\n\n")
			u.aguarde(2000)
			escreva("1. Miaudápio.\n2. Sair\n\n")
			leia(opcao)
			
			//Exibe as categorias
			se(opcao ==1){
				escreva("\tCategorias\n\n")
			}
			escolha(opcao){
				caso 1:
					escreva("\t1. Bebidas\n")
				caso 2:
					escreva("\t2. Comidas\n\n")
					pare
			}
			//Escolha das categorias
			escreva("Escolha uma das opções para ter acesso aos nossos produtos. ")
			leia(opcao)
			
			

			
			}
		
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 7492; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {logar, 9, 8, 5}-{verificador, 10, 8, 11}-{sair, 11, 9, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */