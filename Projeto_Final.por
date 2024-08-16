programa
{

	//8. Incluir, pelo menos, duas bibliotecas.
	inclua biblioteca Texto --> txt
	inclua biblioteca Util --> u
	inclua biblioteca Tipos --> ti
	inclua biblioteca Graficos --> g
	inclua biblioteca Teclado --> t

	cadeia logar, usuario, password
	logico verificador = falso, isAdmin = falso

	funcao inicio(){
		logo()
		menuLogin()

		enquanto(verificador == verdadeiro){
				
			menuPrincipal()
	
			escreva("Deu certo!!!")			
	
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
		inteiro sair
		
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
			escreva("Deseja continuar?\nEscolha 1 (sim)\nEscolha 2 (não)\nEscolha 3 (voltar ao menu)\n\n")
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
					verificador = login(usuario, password, isAdmin)
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

	funcao logico login(cadeia usuario, cadeia password, logico isAdmin){

		logico logado = falso
		cadeia vetor[5][3] = {{"Lucas", "1234", "verdadeiro"}, {"Lorrayne","2345", "verdadeiro"},
		{"Leticia", "3456", "falso"}, {"Yuri","4567", "falso"}, {"Frederico","5678", "falso"}}
		
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
				se(vetor[i][2] == "verdadeiro"){
					isAdmin = verdadeiro
					menuAdmin()
					retorne falso
				}
				senao{
					isAdmin = falso
					retorne verdadeiro
				}
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
			menuLogin()
			retorne falso
	}

	funcao menuAdmin(){
		
		inteiro opcao
		logico logado

		escreva("Olá Admin, é ótimo ter você de volta! ♡\nSeja bem-vindo(a) ", usuario)
		escreva("\nAqui você realizar diversas tarefas como adiministrador.\n\n")
		u.aguarde(2000)
		escreva("Miau! O que você acha de dar uma olhadinha nas opções?\n\n")
		u.aguarde(2000)

		
		escreva("1. Adicione um novo usuario.\n2. altere um usuario existente\n3. Exclua um usuario\n4. Sair\n\n")
		leia(opcao)
				
		//Exibe as opções
		escolha(opcao){
			caso 1:
				limpa()
				escreva("\t1. Teste de adicionar usuario\n\n")
				pare
			caso 2:
				escreva("\t2. Teste de alterar usuario existente\n\n")
				pare
			caso 3:
				escreva("\t2. Teste de excluir usuario existente\n\n")
				pare
			caso 4:
				escreva("\nsaindo...")
				u.aguarde(1000)
				limpa()
				pare
		}
	}
	
		//Menu Principal 
		funcao menuPrincipal() {

			inteiro opcao, opcao1, opcao2, x = 0
			cadeia matrizProdutos[6][4] = {{"Café gato preto", 			"10.99", 	"8", 	"Um expresso intenso e encorpado, tão misterioso quanto um gato preto"}, 
									{"Cappuccino Gatinho de Espuma", 	"4.99", 	"5", 	"Cappuccino suave com espuma extra fofa, decorado com orelhinhas de gato de canela"}, 
									{"Smoothie Gatinho Tropical", 	"13.99", 	"10", 	"Mix de frutas tropicais, como manga, abacaxi e maracujá, com um toque de leite de coco"}, 
									{"Muffin Meowberry" ,			"8.99", 	"20", 	"Muffin de mirtilo com um toque de limão, servido quentinho"}, 
									{"Cookie Pata de Gato", 			"8.99", 	"20", 	"Cookie de chocolate com pedaços de chocolate branco, moldado em formato de pata de gato"}, 
									{"Bolo Gata Mansa", 			"8.99", 	"20", 	"Bolo de baunilha com recheio de creme de leite e cobertura de chantilly"}}
			

			escreva("Olá, é ótimo ter você de volta! ♡\nSeja bem-vindo(a) ", usuario, " ao CatCafé, a nossa cafeteria ")
			escreva("onde você sentirá como um gato!\nCom miados e ronronos são liberados. Carinhos e o sabor se encontram.\n\n")
			u.aguarde(2000)
			escreva("Miau! O que você acha de dar uma olhadinha no nosso miaudápio?\n\n")
			u.aguarde(2000)
			escreva("1. Miaudápio.\n2. Retornar ao login\n\n")
			leia(opcao)
			limpa()
			
			//Opção das categorias, exibe os produtos e retorna ao menu de login
			escolha(opcao){
				caso 1:
					escreva("\t1. Bebidas\n")	
					escreva("\t2. Comidas\n\n")
					leia(opcao1)

					se(opcao1 == 1){
						limpa()
						//menu
						para(inteiro i = 0; i < 3 ; i++){
							escreva(x++, ".", matrizProdutos[i][0], "\n")
						}
						escreva("\nEscreva a opcao que você deseja: \n")
						leia(opcao2)
						bebidas(opcao2)
					}
					se(opcao1 == 2){
						limpa()
						//menu
						para(inteiro i = 3; i < 6 ; i++){
							escreva(x++, ".", matrizProdutos[i][0], "\n")
						}
						escreva("\nEscreva a opcao que você deseja: \n")
						leia(opcao2)
						comidas(opcao2)
					}
					pare
				caso 2:
					menuLogin()
					pare
			}
		}
		funcao bebidas(inteiro opcao){
			inteiro temp	
			cadeia opcaoUsuario
			inteiro carrinho = 0
			escolha (opcao){
				caso 1:
			
					inteiro gatoPreto = -1
					
	
					// Inicia o modo gráfico e define as dimensões da janela
					g.iniciar_modo_grafico(verdadeiro)
					g.definir_dimensoes_janela(300, 300)
					
					// Carrega a imagem do produto
					gatoPreto = g.carregar_imagem("gatoPreto.jpg")
			
					// Exibe os dados no console enquanto a imagem está aberta
					escreva("\n┎┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈୨♡୧┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┒\n")
					escreva("\tNome:      Café Gato Preto\n\n")
					escreva("\tPreço:     R$9.00\n\n")
					escreva("\tDescrição: Um Expresso intenso e encorpaddo,\n\t\t    tão misterioso quanto um gato preto.\n\t\t    Ideal para quem aprecia um café forte e marcante\n")
					escreva("\n┖┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈୨♡୧┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┚\n")
					// Loop principal para renderizar a imagem e capturar a decisão do usuário
					enquanto(verdadeiro)
					{
						// Limpa a tela e desenha a imagem
						g.definir_cor(g.COR_BRANCO)
						g.limpar()
						g.desenhar_imagem(0, 0, gatoPreto)
						g.renderizar()
						
						// decisão do usuário
						escreva("\n   Deseja adicionar o produto ao carrinho ou voltar ao menu inicial? \n\t(digite '1 para adicionar' ou '2 para voltar ao menu')\n")
						leia(opcaoUsuario)
						
						// Tomada de decisão
						se (opcaoUsuario == "1")
						{
							carrinho = carrinho + 1
							escreva("Produto adicionado ao carrinho. Total no carrinho: ", carrinho, "\n")
							//cod carrinho
						}
						senao se (opcaoUsuario == "2")
						{
							escreva("Voltando ao menu inicial...\n")
							u.aguarde(2000)
							// cod para voltar ao menu inicial
							pare
						}
						senao
						{
							escreva("Opção inválida, tente novamente.\n")
						}
					}
				caso 2:
			
					inteiro gatinhoTropical = -1
	
					// Inicia o modo gráfico e define as dimensões da janela
					g.iniciar_modo_grafico(verdadeiro)
					g.definir_dimensoes_janela(300, 300)
					
					// Carrega a imagem do produto
					gatinhoTropical = g.carregar_imagem("gatinhoTropical.jpg")
			
					// Exibe os dados no console enquanto a imagem está aberta
					escreva("\n┎┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈୨♡୧┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┒\n")
					escreva("\tNome:      Smoothie Gatinho Tropical\n\n")
					escreva("\tPreço:     R$12.00\n\n")
					escreva("\tDescrição: Mix de frutas tropicais, como manga, abacaxi e maracujá\n\t\t    com um toque de leite de coco. Refrescante e cheio de sabor, como um dia ensolarado.\n")
					escreva("\n┖┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈୨♡୧┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┚\n")
					// Loop principal para renderizar a imagem e capturar a decisão do usuário
					enquanto(verdadeiro)
					{
						// Limpa a tela e desenha a imagem
						g.definir_cor(g.COR_BRANCO)
						g.limpar()
						g.desenhar_imagem(0, 0, gatinhoTropical)
						g.renderizar()
						
						// decisão do usuário
						escreva("\n   Deseja adicionar o produto ao carrinho ou voltar ao menu inicial? \n\t(digite '1 para adicionar' ou '2 para voltar ao menu')\n")
						leia(opcaoUsuario)
						
						// Tomada de decisão
						se (opcaoUsuario == "1")
						{
							carrinho = carrinho + 1
							escreva("Produto adicionado ao carrinho. Total no carrinho: ", carrinho, "\n")
							//cod carrinho
						}
						senao se (opcaoUsuario == "2")
						{
							escreva("Voltando ao menu inicial...\n")
							u.aguarde(2000)
							// cod para voltar ao menu inicial
							pare
						}
						senao
						{
							escreva("Opção inválida, tente novamente.\n")
						}
					}
				caso 3:
			
					inteiro GatinhoDeespuma = -1						
	
					// Inicia o modo gráfico e define as dimensões da janela
					g.iniciar_modo_grafico(verdadeiro)
					g.definir_dimensoes_janela(300, 300)
					
					// Carrega a imagem do produto
					GatinhoDeespuma = g.carregar_imagem("GatinhoDeespuma.jpg")
			
					// Exibe os dados no console enquanto a imagem está aberta
					escreva("\n┎┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈୨♡୧┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┒\n")
					escreva("\tNome:      Smoothie Gatinho Tropical\n\n")
					escreva("\tPreço:     7.00\n\n")
					escreva("\tDescrição: Cappuccino suave com espuma extra fofa, decorado com orelhinhas de gato de canela. Perfeito para aquecer o coração.\n")
					escreva("\n┖┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈୨♡୧┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┚\n")
					// Loop principal para renderizar a imagem e capturar a decisão do usuário
					enquanto(verdadeiro)
					{
						// Limpa a tela e desenha a imagem
						g.definir_cor(g.COR_BRANCO)
						g.limpar()
						g.desenhar_imagem(0, 0, GatinhoDeespuma)
						g.renderizar()
						
						// decisão do usuário
						escreva("\n   Deseja adicionar o produto ao carrinho ou voltar ao menu inicial? \n\t(digite '1 para adicionar' ou '2 para voltar ao menu')\n")
						leia(opcaoUsuario)
						
						// Tomada de decisão
						se (opcaoUsuario == "1")
						{
							carrinho = carrinho + 1
							escreva("Produto adicionado ao carrinho. Total no carrinho: ", carrinho, "\n")
							//cod carrinho
						}
						senao se (opcaoUsuario == "2")
						{
							escreva("Voltando ao menu inicial...\n")
							u.aguarde(2000)
							// cod para voltar ao menu inicial
								pare
						}
						senao
						{
							escreva("Opção inválida, tente novamente.\n")
						}
					}
				caso contrario:
					escreva("\nOpção inválida! Voltando ao menu")
					menuPrincipal()
					pare
			}
		}
		funcao comidas(inteiro opcao){
			inteiro temp	
			cadeia opcaoUsuario
			inteiro carrinho = 0
			escolha (opcao){
				caso 1:				
				inteiro gataMansa = -1
						
		
				// Inicia o modo gráfico e define as dimensões da janela
				g.iniciar_modo_grafico(verdadeiro)
				g.definir_dimensoes_janela(300, 300)
						
				// Carrega a imagem do produto
				gataMansa = g.carregar_imagem("gataMansa.jpg")
						
				// Dados do produto
				cadeia nomeProduto = "Bolo Gata Mansa"
				real precoProduto = 8.00
				cadeia descricaoProduto = "Bolo de baunilha com recheio de creme de leite e cobertura de chantilly,\n\t\t    decorado com orelhinhas de chocolate. Delicado e irresistível.\n"
				
				// Exibe os dados no console enquanto a imagem está aberta
				escreva("\n┎┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈୨♡୧┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┒\n")
				escreva("\tNome:      Bolo Gata Mansa\n\n")
				escreva("\tPreço:     R$8.00\n\n")
				escreva("\tDescrição: Bolo de baunilha com recheio de creme de leite e cobertura de chantilly,\n\t\t    decorado com orelhinhas de chocolate. Delicado e irresistível.\n\n")
				escreva("\n┖┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈୨♡୧┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┚\n")
				// Loop principal para renderizar a imagem e capturar a decisão do usuário
				enquanto(verdadeiro)
				{
				// Limpa a tela e desenha a imagem
				g.definir_cor(g.COR_BRANCO)
				g.limpar()
				g.desenhar_imagem(0, 0, gataMansa)
				g.renderizar()
							
				// decisão do usuário
				escreva("\n   Deseja adicionar o produto ao carrinho ou voltar ao menu inicial? \n\t(digite '1 para adicionar' ou '2 para voltar ao menu')\n")
				leia(opcaoUsuario)
							
					// Tomada de decisão
					se (opcaoUsuario == "1")
						{
						carrinho = carrinho + 1
						escreva("Produto adicionado ao carrinho. Total no carrinho: ", carrinho, "\n")
						//cod carrinho
						}
					senao se (opcaoUsuario == "2")
					{
							escreva("Voltando ao menu inicial...\n")
							u.aguarde(2000)
							// cod para voltar ao menu inicial
							pare
					}
					senao
					{
								escreva("Opção inválida, tente novamente.\n")
					}
				}
					caso 2:
				
						inteiro PataDegato = -1	
		
						// Inicia o modo gráfico e define as dimensões da janela
						g.iniciar_modo_grafico(verdadeiro)
						g.definir_dimensoes_janela(300, 300)
						
						// Carrega a imagem do produto
						PataDegato = g.carregar_imagem("PataDegato.jpg")
						
						// Exibe os dados no console enquanto a imagem está aberta
						escreva("\n┎┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈୨♡୧┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┒\n")
						escreva("\tNome:      Cookie Pata de Gato\n\n")
						escreva("\tPreço:     R$5.00 \n\n")
						escreva("\tDescrição: Cookie de chocolate com pedaços de chocolate branco, moldado em formato de pata de gato\n\t\t    Crocante por fora e macio por dentro.")
						escreva("\n┖┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈୨♡୧┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┚\n")
						// Loop principal para renderizar a imagem e capturar a decisão do usuário
						enquanto(verdadeiro)
						{
							// Limpa a tela e desenha a imagem
							g.definir_cor(g.COR_BRANCO)
							g.limpar()
							g.desenhar_imagem(0, 0, PataDegato)
							g.renderizar()
							
							// decisão do usuário
							escreva("\n   Deseja adicionar o produto ao carrinho ou voltar ao menu inicial? \n\t(digite '1 para adicionar' ou '2 para voltar ao menu')\n")
							leia(opcaoUsuario)
							
							// Tomada de decisão
							se (opcaoUsuario == "1")
							{
								carrinho = carrinho + 1
								escreva("Produto adicionado ao carrinho. Total no carrinho: ", carrinho, "\n")
								//cod carrinho
							}
							senao se (opcaoUsuario == "2")
							{
								escreva("Voltando ao menu inicial...\n")
								u.aguarde(2000)
								// cod para voltar ao menu inicial
								pare
							}
							senao
							{
								escreva("Opção inválida, tente novamente.\n")
							}
						}
					caso 3:
				
						inteiro Meowberry = -1	
		
						// Inicia o modo gráfico e define as dimensões da janela
						g.iniciar_modo_grafico(verdadeiro)
						g.definir_dimensoes_janela(300, 300)
						
						// Carrega a imagem do produto
						Meowberry = g.carregar_imagem("Meowberry.jpg")
				
						// Exibe os dados no console enquanto a imagem está aberta
						escreva("\n┎┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈୨♡୧┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┒\n")
						escreva("\tNome:      Smoothie Gatinho Tropical\n\n")
						escreva("\tPreço:     R$7.00\n\n")
						escreva("\tDescrição: Muffin de mirtilo com um toque de limão,\n  servido quentinho. Uma explosão de sabor a cada mordida\n")
						escreva("\n┖┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈୨♡୧┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┚\n")
						// Loop principal para renderizar a imagem e capturar a decisão do usuário
						enquanto(verdadeiro)
						{
							// Limpa a tela e desenha a imagem
							g.definir_cor(g.COR_BRANCO)
							g.limpar()
							g.desenhar_imagem(0, 0, Meowberry)
							g.renderizar()
							
							// decisão do usuário
							escreva("\n   Deseja adicionar o produto ao carrinho ou voltar ao menu inicial? \n\t(digite '1 para adicionar' ou '2 para voltar ao menu')\n")
							leia(opcaoUsuario)
							
							// Tomada de decisão
							se (opcaoUsuario == "1")
							{
								carrinho = carrinho + 1
								escreva("Produto adicionado ao carrinho. Total no carrinho: ", carrinho, "\n")
								//cod carrinho
							}
							senao se (opcaoUsuario == "2")
							{
								escreva("Voltando ao menu inicial...\n")
								u.aguarde(2000)
								// cod para voltar ao menu inicial
									pare
							}
							senao
							{
								escreva("Opção inválida, tente novamente.\n")
							}
						}
					caso contrario:
						escreva("\nOpção inválida! Voltando ao menu")
						menuPrincipal()
						pare
				}
		}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 9831; 
 * @DOBRAMENTO-CODIGO = [13, 65, 149, 270, 306, 359, 518];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */