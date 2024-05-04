Algoritmo "Equação do Segunda Grau"
// 
//  
// Descrição   : Pseudocódigo do calculo Equação do 2º grau, utilizando
// a formula de Bhaskara.
//A equação do 2º grau é caracterizada por possuir uma incógnita de
// grau 2. Para resolver esse tipo de equação, é importante conhecer
// a fórmula de Bhaskara. A equação do 2º grau
// é representada por: ax²+bx+c=0.

// Autor(a)    : João Pedro Ventura
// Data atual  : 18/04/2024
Var
// Seção de Declarações das variáveis 
a, b, c, delta, raiz, numero, raizAux, i, x : inteiro
x1, x2: real


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
escreval(" EQUAÇÃO DO 2º GRAU ")
escreval("---------------------")
escreva("Digite o valor de a: ")
leia(a)
escreval("---------------------")
escreva("Digite o valor de b: ")
leia(b)
escreval("---------------------")
escreva("Digite o valor de c: ")
leia(c)
escreval("---------------------")
// RAIZ QUADRADA
raiz <- 2
raizAux <- 1

para i de 1 ate a faca
     para x de 1 ate raiz faca
       raizAux <- raizAux*i
     fimpara

     se raizAux = a entao
          escreval("A raiz ", raiz, " de ", a, " é: ", i)
          interrompa
     senao
          raizAux <- 1
     fimse
fimpara
se raizAux <> a entao
   escreval("O número ", a, " não possui raiz exata ")
   interrompa
fimse
//FIM RAIZ QUADRADA
     
delta <- (-b * -b) - (4* a*c)

x1 <- ((-b + raiz) / (2*a))

x2 <- (-b - raiz) / (2*a)

escreval
escreval("O valor de delta: ", delta)
escreval
escreval("O valor de x1: ", x1)
escreval
escreval("O valor de x2: ", x2)


Fimalgoritmo