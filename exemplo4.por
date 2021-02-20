programa
{
	
	funcao inicio()
	{
		real primeiraNota, segundaNota, media

		escreva("Digite a primeira nota: ")
		leia(primeiraNota)

		escreva("Digite a segunda nota: ")
		leia(segundaNota)
		
		se(primeiraNota < 0 ou segundaNota < 0){
			escreva("Valor inválido")
		} senao {
		
			media = (primeiraNota + segundaNota) / 2.0
				
			se( media >= 7 ){
				escreva("Aluno aprovado!")
			}senao se( media >= 4 e media < 7){
				escreva("Aluno em recuperação")	
			}senao se( media >= 2 e media < 4){
				escreva("Aluno em recuperação especial")
			}senao{
				escreva("Aluno reprovado")
			}
		}
		pular da linha 30 para a linha 8
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 107; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */