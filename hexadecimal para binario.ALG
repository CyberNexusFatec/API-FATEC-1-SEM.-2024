Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 24/04/2024
Var
// Seção de Declarações das variáveis 
numhex, numbin, conversaohex, stringhex:  caracter
contador, vezes : INTEIRO

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
Escreval ("==============================================")
 Escreval ("CALCULO DE CONVERSÃO DE BINÁRIO EM OCTAL")
 Escreval ("==============================================")
 escreval ("QUANTOS ALGARISMOS VOCÊ QUER CONVERTER?: ")
      leia (vezes)
      se vezes <= 0 entao
      repita
      escreval ("VOCÊ DEVE INSERIR UM NUMERO REAL!")
      escreval ("QUANTOS ALGARISMOS VOCÊ QUER CONVERTER?:")
      leia (vezes)
      ate vezes > 0
      fimse
       se vezes = 1 entao
        escreval ("ALGARISMO 1: ")
                 leia (numhex)
                   repita
                   Escolha numhex
                           caso "0"
                           conversaohex:= "0000"
                           caso "1"
                           conversaohex:= "0001"
                           caso "2"
                           conversaohex:= "0010"
                           caso "3"
                           conversaohex:= "0011"
                           caso "4"
                           conversaohex:= "0100"
                           caso "5"
                           conversaohex:= "0101"
                           caso "6"
                           conversaohex:= "0110"
                           caso "7"
                           conversaohex:= "0111"
                           caso "8"
                           conversaohex:= "1000"
                           caso "9"
                           conversaohex:= "1001"
                           caso "A"
                           conversaohex:= "1010"
                           caso "B"
                           conversaohex:= "1011"
                           caso "C"
                           conversaohex:= "1100"
                           caso "D"
                           conversaohex:= "1101"
                           caso "E"
                           conversaohex:= "1100"
                           caso "F"
                           conversaohex:= "1111"
                           outrocaso
                           escreval ("O ALGARISMO NÃO É HEXADECIMAL")
                           escreval ("ALGARISMO 1: ")
                           leia (numhex)
                           FimEscolha

                   ate conversaohex <> ""
                     Escreval ("O valor: ", numhex, " em Binário será ", conversaohex, " !")
      
         Fimalgoritmo
         fimse

      se vezes >1 entao


      repita
            contador <-contador + 1
            repita
                  escreval ("ALGARISMO ", contador, ":")
                  leia (numhex)
                  Escolha numhex
                           caso "0"
                           conversaohex:= "0000"
                           numbin <- numbin + conversaohex
                           stringhex <- stringhex + numhex
                           caso "1"
                           conversaohex:= "0001"
                           numbin <- numbin + conversaohex
                           stringhex <- stringhex + numhex
                           caso "2"
                           conversaohex:= "0010"
                           numbin <- numbin + conversaohex
                           stringhex <- stringhex + numhex
                           caso "3"
                           conversaohex:= "0011"
                           numbin <- numbin + conversaohex
                           stringhex <- stringhex + numhex
                           caso "4"
                           conversaohex:= "0100"
                           numbin <- numbin + conversaohex
                           stringhex <- stringhex + numhex
                           caso "5"
                           conversaohex:= "0101"
                           numbin <- numbin + conversaohex
                           stringhex <- stringhex + numhex
                           caso "6"
                           conversaohex:= "0110"
                           numbin <- numbin + conversaohex
                           stringhex <- stringhex + numhex
                           caso "7"
                           conversaohex:= "0111"
                           numbin <- numbin + conversaohex
                           stringhex <- stringhex + numhex
                           caso "8"
                           conversaohex:= "1000"
                           numbin <- numbin + conversaohex
                           stringhex <- stringhex + numhex
                           caso "9"
                           conversaohex:= "1001"
                           numbin <- numbin + conversaohex
                           stringhex <- stringhex + numhex
                           caso "A"
                           conversaohex:= "1010"
                           numbin <- numbin + conversaohex
                           stringhex <- stringhex + numhex
                           caso "B"
                           conversaohex:= "1011"
                           numbin <- numbin + conversaohex
                           stringhex <- stringhex + numhex
                           caso "C"
                           conversaohex:= "1100"
                           numbin <- numbin + conversaohex
                           stringhex <- stringhex + numhex
                           caso "D"
                           conversaohex:= "1101"
                           numbin <- numbin + conversaohex
                           stringhex <- stringhex + numhex
                           caso "E"
                           conversaohex:= "1100"
                           numbin <- numbin + conversaohex
                           stringhex <- stringhex + numhex
                           caso "F"
                           conversaohex:= "1111"
                           numbin <- numbin + conversaohex
                           stringhex <- stringhex + numhex
                           outrocaso
                           escreval ("O ALGARISMO NÃO É HEXADECIMAL")

                       FimEscolha

                   ate conversaohex <> ""

         até contador = vezes
         fimse

       Escreval ("O valor: ", stringhex, " em Binário será ", numbin, " !")

Fimalgoritmo
