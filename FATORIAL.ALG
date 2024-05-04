Algoritmo "Fatorial"
// 
//  
// Descrição   : O fatorial de um número é o produto dele
//pelos seus antecessores maiores que 0. O fatorial de um
// número é a multiplicação desse número por todos os seus
// antecessores maiores que zero. Para representar o fatorial
// de um número, escrevemos o número seguido de um ponto de
// exclamação, ou seja, n! (lê-se “n fatorial”).
// Autor(a)    : João Pedro Ventura
// Data atual  : 04/05/2024
Var
// Seção de Declarações das variáveis 
n, c, fat: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
fat <- 1
escreval("         FATORIAL        ")
escreval("-------------------------")
escreval("Digite um valor inteiro: ")
leia(n)
para c de n ate 1 passo -1 faca
     fat <- fat * c
fimpara
escreval("Fatorial de ", n, " é igual a:", fat)

Fimalgoritmo