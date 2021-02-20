programa
{
	
	funcao inicio()
	{
		//se for maior que 60 anos, está liberado para entrar
		logico temIdentidade = falso , temCNH = falso, ehSocio = falso, liberarAcessoPorIdade
		logico liberarAcesso
		inteiro idade 

		escreva("Digite a sua idade: ")
		leia(idade)
		liberarAcessoPorIdade = idade >= 60 //verdadeiro ou falso

		//operador lógico E, operador restrito
		//					verdadeiro      e falso == falso
		liberarAcesso = temIdentidade e temCNH e (ehSocio ou liberarAcessoPorIdade)

		escreva("Acesso liberado?: ", liberarAcesso)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 455; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */