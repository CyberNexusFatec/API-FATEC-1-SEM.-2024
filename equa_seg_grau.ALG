Algoritmo "Equa��o do Segunda Grau"
// 
//  
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 28/04/2024
Var
// Se��o de Declara��es das vari�veis 
a, b, c, delta, raiz, numero, raizAux, i, x : inteiro
x1, x2: real


Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc...


escreva("Digite o valor de a: ")
leia(a)

escreva("Digite o valor de b: ")
leia(b)

escreva("Digite o valor de c: ")
leia(c)

// RAIZ QUADRADA
raiz <- 2
raizAux <- 1

para i de 1 ate a faca
     para x de 1 ate raiz faca
       raizAux <- raizAux*i
     fimpara

     se raizAux = a entao
          escreval("A raiz ", raiz, " de ", a, " �: ", i)
          interrompa
     senao
          raizAux <- 1
     fimse
fimpara
se raizAux <> a entao
   escreval("O n�mero ", a, " n�o possui raiz exata ")
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