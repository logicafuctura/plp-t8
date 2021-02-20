programa
{
	//aprovado: >= 7
	//recuperação: 4 <= nota < 7
	//reprovado: 4 > nota
	//recuperação especial: 2 > nota < 4
	funcao inicio()
	{
		real primeiraNota, segundaNota, media

		escreva("Digite a primeira nota: ")
		leia(primeiraNota)
		escreva("Digite a segunda nota: ")
		leia(segundaNota)

		media = (primeiraNota + segundaNota) / 2.0
			
		se( media >= 7 ){
			escreva("Aluno aprovado!")
		}senao{
			
			se( media >= 4 e media < 7){
				escreva("Aluno em recuperação")
			}senao{
				se(media >= 2 e media < 4){
					escreva("Aluno em recuperação especial")	
				}senao{
					escreva("Aluno reprovado")
				}
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 617; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */