programa
{
	funcao inicio()
	{
		//resolver as atividades, dentro do bloco do início

		//declarar uma variável
		//tipo primitivo e nome
		//camelCase: 1ª letra minúscula, maiúsculas
		real notaDaPrimeiraProva, notaDaSegundaProva, mediaDoAluno
		cadeia nomeDoAluno

		//entradada: 
		escreva("Digite o nome do aluno: ")
		leia(nomeDoAluno)

		//valor digitado no teclado e vai atribuir a variável
		escreva("Digite a primeira nota da prova: ")
		leia(notaDaPrimeiraProva)

		escreva("Digite a segunda nota da prova: ")
		leia(notaDaSegundaProva)

		//concatenção
		//saída de dados, imprimir uma cadeia no console
		escreva("Aluno: ", nomeDoAluno)
		escreva("\nValor da primeira nota: " + notaDaPrimeiraProva + " \nNota da segunda prova: " + notaDaSegundaProva)

		mediaDoAluno = (notaDaPrimeiraProva + notaDaSegundaProva) / 2.0 //processamento
		
		//input - entrada - leia
		//output/print - saída - escreva

		escreva("\nA média do aluno é: " + mediaDoAluno) //saída
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 915; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */