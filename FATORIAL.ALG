Algoritmo "Fatorial"
// 
//  
// Descri��o   : O fatorial de um n�mero � o produto dele
//pelos seus antecessores maiores que 0. O fatorial de um
// n�mero � a multiplica��o desse n�mero por todos os seus
// antecessores maiores que zero. Para representar o fatorial
// de um n�mero, escrevemos o n�mero seguido de um ponto de
// exclama��o, ou seja, n! (l�-se �n fatorial�).
// Autor(a)    : Jo�o Pedro Ventura
// Data atual  : 04/05/2024
Var
// Se��o de Declara��es das vari�veis 
n, c, fat: inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
fat <- 1
escreval("         FATORIAL        ")
escreval("-------------------------")
escreval("Digite um valor inteiro: ")
leia(n)
para c de n ate 1 passo -1 faca
     fat <- fat * c
fimpara
escreval("Fatorial de ", n, " � igual a:", fat)

Fimalgoritmo