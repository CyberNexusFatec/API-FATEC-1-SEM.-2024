Algoritmo "octal para binario"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 23/04/2024
Var
   // Seção de Declarações das variáveis
   octal, decimal, i, j, tamOctal, cont, res, resto: inteiro
   binario, posDec : Caracter
   valorDec: real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //Octal = Binario * 2^Posição do binario
   //após isso soma tudo


   //octal para decimal

   escreva("Digite o número octal ")
   leia(octal)
   i:= 1
   j := 0
   tamOctal <- compr(numpcarac(octal))


   se octal <= 7 entao
      decimal <- octal
   senao
      enquanto tamOctal > j faca
         posDec <-  copia(numpcarac(octal), (tamOctal - j), 1)

         res <- caracpnum(posDec) * i
         decimal <- decimal + res

         i <- i * 8
         j <-  j + 1
      fimenquanto

   fimse

   //decimal para binario

   valorDec <- decimal

   repita
      escreval("1decimal: ", valorDec)
      resto <- valorDec % 2
      valorDec <- valorDec / 2
      escreval("decimal: ", valorDec)
      se resto = 1 entao
         binario <-  "1" + binario
      senao
         binario <- "0" + binario
      fimse

   ate valorDec > 2



   //mostrar tudo

   Escreval ("O valor Binario: ", binario , " em decimal será de: ", decimal, " em octal será de: " , octal , " !!")

Fimalgoritmo