programa
{
	//Módulo de promoção de funcionários
	funcao inicio()
	{
		/*Regra da promoção v1:
		 * trabalhar pelo menos 2 anos na empresa
		 * apresentar característica de liderança
		 * possuir ética
		*/
		logico temEticaNoTrabalho = verdadeiro, temCaracteristicasDeLideranca
		logico ehProativo = verdadeiro, seraPromovido
		inteiro tempoDeCasa = 3

		escreva("O funcionário possui características de liderança?")
		leia(temCaracteristicasDeLideranca)
				
		seraPromovido = (temCaracteristicasDeLideranca e temEticaNoTrabalho e ehProativo) e (tempoDeCasa >= 2)
		
		//só executa o bloco se a expressão for verdadeira
		se(seraPromovido){
			escreva("Parabéns! Você foi promovido")	
		}senao{
			//bloco do senão só é executado caso a expressão do SE seja falso
			escreva("\nInfelizmente você não foi promovido")
			se(verdadeiro){
				escreva("\neste comando foi executado dentro do senão")
			}
		}
		
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 842; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */