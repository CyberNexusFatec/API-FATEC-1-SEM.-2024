Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 23/04/2024
Var
   // Seção de Declarações das variáveis
   decimal, i,j, tamBin, cont, res: inteiro
   binario, binarioInvertido : Caracter
   valordec, valoroct: real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //Decimal = Binario * 2^Posição do binario
   //após isso soma tudo



   //binario para decimal

   escreva("Digite o número binário ")
   leia(binario)


   i := 0
   j := 1
   tamBin <- compr(binario)
   cont <- 1

   repita
      binarioInvertido <- copia(binario,(tamBin - i),1 )
      se binarioInvertido > "1" entao
         escreva("Valor binario invalido")
         interrompa
      fimse

      se binarioInvertido = "1" entao
         decimal <- decimal + cont

      fimse
      cont <- cont  * 2

      i <- i + 1

   ate i >= tamBin

   //decimal para octal

   valordec <- decimal

   se valordec <= 7 entao
      valoroct <-  valordec

   senao
      enquanto valordec >= 8 faca

         res <- valordec % 8
         valordec <- valordec / 8
         valoroct <- valoroct + res  * j
         j <- j * 10

      fimenquanto
      valordec <- valordec % 8;
      valoroct <- valoroct + valordec  * j

   fimse

   // mostra resultado de tudo

   Escreval ("O valor Binario: ", binario , " em decimal será de: ", decimal, " em octal será de: " , valoroct , " !!")

Fimalgoritmo