programa
{
	inclua biblioteca Matematica --> m
	
	const inteiro OP_BANCO_BB = 1, OP_BANCO_CEF = 2, OP_BANCO_ITAU = 3, OP_BANCO_SANTANDER = 4, OP_BANCO_BRAD = 5
	const real TX_JUROS_BB = 0.0306, TX_JUROS_CEF = 0.0332
	const inteiro SIM = 1, NAO = 2
		
	funcao inicio()
	{
		real valorDoEmprestimo = -1.0, taxaDeJuros, taxaDeReducao, valorDaParcela
		inteiro prazoFinanciamento = -1
		logico ehConsignado, ehCorrentista
		inteiro opConsignado = -1, opCorrentista = 1, opInstituicaoFinanceira = -1, opNovaSimulacao = SIM
		
		enquanto(opNovaSimulacao == SIM){
		
			enquanto(valorDoEmprestimo < 0.0){
				escreva("Digite o valor do empréstimo: ")
				leia(valorDoEmprestimo)
				se(valorDoEmprestimo < 0.0){
					escreva("Valor inválido! Apenas números positivos")
				}
			}
	
			enquanto(prazoFinanciamento < 0){
				escreva("Digite o prazo do financiamento: ")
				leia(prazoFinanciamento)
				se(prazoFinanciamento < 0){
					escreva("Valor inválido! Apenas números positivos")
				}
			}
	
			opConsignado = obterResultado("É Consignado", SIM, NAO)
			opCorrentista = obterResultado("É correntista", SIM, NAO)
	
			enquanto(opInstituicaoFinanceira < OP_BANCO_BB ou opInstituicaoFinanceira > OP_BANCO_BRAD){
				escreva("\nEscolha uma das Instituições financeiras abaixo:\n")
				escreva(OP_BANCO_BB + " - Banco do Brasil\n")
				escreva(OP_BANCO_CEF + " - Caixa Econômica Federal\n")
				escreva(OP_BANCO_ITAU + " - Itaú\n")
				escreva(OP_BANCO_SANTANDER + " - Santander\n")
				escreva(OP_BANCO_BRAD + " - Bradesco\n")
				escreva("Digite: ")
				leia(opInstituicaoFinanceira)
				se(opInstituicaoFinanceira < OP_BANCO_BB ou opInstituicaoFinanceira > OP_BANCO_BRAD){
					escreva("Opção inválida!")
				}
			}
	
			taxaDeJuros = obterTaxaDeJuros(opInstituicaoFinanceira)
			taxaDeReducao = obterTaxaDeReducao(opCorrentista, opConsignado)
			valorDaParcela = obterValorDaParcela(valorDoEmprestimo, prazoFinanciamento, taxaDeJuros, taxaDeReducao)

			real custoDoEmprestimo = valorDaParcela * prazoFinanciamento
			real diferenca = custoDoEmprestimo - valorDoEmprestimo

			limpa()
			
			escreva("\nValor da parcela: ", m.arredondar(valorDaParcela, 2))
			escreva("\nCusto total do empréstimo: ", m.arredondar(custoDoEmprestimo, 2))
			escreva("\nDiferenca: ", m.arredondar(diferenca, 2))
			escreva("\n")
			opNovaSimulacao = obterResultado("Deseja simular novamente?", SIM, NAO)
		}
	}

	funcao real obterValorDaParcela(real valorDoEmprestimo, inteiro prazoFinanciamento, real taxaDeJuros, real taxaDeReducao){
		real valorFinalDaParcela = 0.0, acrescimo = 0.0
				    //100	            * 0.6      = 60
		acrescimo = (valorDoEmprestimo) * (taxaDeJuros - taxaDeReducao)
		valorFinalDaParcela = (valorDoEmprestimo + acrescimo) / prazoFinanciamento
		
		retorne valorFinalDaParcela
	}

	funcao real obterTaxaDeReducao(inteiro opCorrentista, inteiro opConsignado){	
										 
		se(opCorrentista == SIM e opConsignado == SIM){
			retorne 0.006
		}senao se(opCorrentista == SIM e opConsignado == NAO){
			retorne 0.005
		}
		senao se(opCorrentista == NAO e opConsignado == SIM){
			retorne 0.01
		}senao{
			retorne 0.0
		}
	}

	funcao real obterTaxaDeJuros(inteiro opInstituicaoFinanceira){
		real taxaDeJuros = 0.0
		
		se(opInstituicaoFinanceira == OP_BANCO_BB){ //5horas
			taxaDeJuros = TX_JUROS_BB
		}		
		senao se(opInstituicaoFinanceira == OP_BANCO_CEF){ //5horas
			taxaDeJuros = TX_JUROS_CEF
		}
		senao se(opInstituicaoFinanceira == OP_BANCO_SANTANDER){ //5horas
			
		}
		
		retorne taxaDeJuros
	}

	funcao inteiro obterResultado(cadeia titulo, inteiro primeiraOpcao, inteiro segundaOpcao){
		inteiro op = -1
		enquanto(op != primeiraOpcao e op != segundaOpcao){
			escreva(titulo)
			escreva("\nEscolha uma das opções abaixo:\n")
			escreva(primeiraOpcao + " - Sim\n")
			escreva(segundaOpcao + "  - Não")
			escreva("\nDigite: ")
			leia(op)
			se(op != primeiraOpcao e op != segundaOpcao){
				escreva("Opção inválida!")
			}
		}
		retorne op
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1011; 
 * @DOBRAMENTO-CODIGO = [17, 25, 36];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {valorDoEmprestimo, 11, 7, 17}-{taxaDeJuros, 11, 33, 11}-{taxaDeReducao, 11, 46, 13}-{valorDaParcela, 11, 61, 14}-{valorDoEmprestimo, 68, 38, 17}-{valorFinalDaParcela, 69, 7, 19}-{acrescimo, 69, 34, 9}-{opInstituicaoFinanceira, 91, 38, 23};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */