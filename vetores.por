programa
{
	
	funcao inicio()
	{
		const inteiro TAMANHO_DO_VETOR = 5

		//evitar várias declarações e utilizar 1 único para manipular várias variáveis
		inteiro idade1 = 34, idade2, idade3, idad4, idade5
		
		inteiro qtdFilhos1, qtdFilhos2, qtdFilhos3, qtdFilhos4, qtdFilhos5
		
			  //tamanho do vetor		
		inteiro vetorDeIdades[TAMANHO_DO_VETOR] //aqui eu guardo valores inteiros
		inteiro vetorDeFilhos[10] //aqui eu guardo valores inteiros
		cadeia  vetorDeCadeias[9]
		logico  vetorDeLogicos[2]

				//indice
		vetorDeIdades[0] = 45 //primeiro:
		vetorDeIdades[1] = 32 //segundo
		vetorDeIdades[2] = 23 //terceiro
		vetorDeIdades[7]  = idade1
		leia(vetorDeIdades[8])
		//último elemento vai estar na posição: tamanho - 1 
		vetorDeIdades[9] = 157 //décimo (10-1 = 9)

		
		escreva(vetorDeIdades[0])
		escreva(vetorDeIdades[1])
		escreva(vetorDeIdades[2])
		escreva(vetorDeIdades[3])
		escreva(vetorDeIdades[4])
		escreva(vetorDeIdades[5])
		escreva(vetorDeIdades[6])
		escreva(vetorDeIdades[7])
		escreva(vetorDeIdades[8])
		escreva(vetorDeIdades[9])
		escreva(vetorDeIdades[10]) //tentar acessar um elemento fora do meu vetor, vai ocorrer um erro
		

		inteiro somatorio = 0
		para(inteiro i = 0; i < TAMANHO_DO_VETOR; i = i + 1){
			escreva(vetorDeIdades[i])
			somatorio = somatorio + vetorDeIdades[i]
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 865; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */