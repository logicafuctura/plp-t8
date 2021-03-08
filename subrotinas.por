programa
{
	inclua biblioteca Calendario
	inclua biblioteca Matematica
	inclua biblioteca Util
	inclua biblioteca Texto
	
	funcao inicio()
	{
		//invocando uma função
		inteiro resultado = somar(25, 25)
		escreva(resultado)

		//logico resultadoEhMaior = ehMaior()
		se(ehMaior()){
			escreva(ehMaior())
		}

		cadeia resultadoObterNome = obterNome()
		escreva(resultadoObterNome)

		exibirCabecalho("Fuctura")

		Util.aguarde(2000) //1000 mili -> 1s
		
		cadeia res = Texto.caixa_baixa("LOGICA")
		escreva(res)

		cadeia diaSemana = Calendario.dia_semana_abreviado(3, falso, verdadeiro)
		escreva(diaSemana)
		
	}

	//a palavra função: tanto pra criar uma função como para um procedimento
	//funcao tipo  nomeDaFuncao (parâmetros) {}
	funcao inteiro somar(inteiro numeroA, inteiro numeroB){
		//escreva("chamou a função somar")
		inteiro soma = numeroA + numeroB
		retorne soma
	}
	
	//
	funcao vazio exibirCabecalho(cadeia cabecalho){
		escreva(cabecalho)
	}

	funcao logico ehMaior(){
		retorne 1 > 2
	}

	funcao cadeia obterNome(){
		retorne "Fuctura"
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 514; 
 * @DOBRAMENTO-CODIGO = [35, 42, 46, 50];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */