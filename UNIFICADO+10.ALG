Algoritmo "MenuNexusI"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 18/04/2024
Var

// Se��o de Declara��es das vari�veis
valorDec,total, numero, taxa, juros: real
binario, posDec,numhex, numbin, conversaohex, stringhex ,letra: caracter
string1, string2, resultado: caracter
valorEntrada, guardaValor, opcao, conthex, vezes, sairhex, temp: inteiro
octal, decimal, i, j, tamOctal, cont, res, resto: inteiro




Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc...
repita

  escreval ("*****Calculadora Nexus I*****")
  escreval ("-------------Menu------------")
  escreval ("Escolha uma op��o de 1 � 16")
  escreval ("1. Soma")
  escreval ("2. Subtra��o")
  escreval ("3. Multiplica��o")
  escreval ("4. Divis�o")
  escreval ("5. Fatorial")
  escreval ("6. Fun��o de 2� grau")
  escreval ("7. Convers�o de base num�rica B8 X B2")
  escreval ("8. Convers�o de base num�rica B2 X B8")
  escreval ("9. Convers�o de base num�rica B10 X B2")
  escreval ("10. Convers�o de base num�rica B2 X B10")
  escreval ("11. Convers�o de base num�rica B16 X B2")
  escreval ("12. Convers�o de base num�rica B2 X B16")
  escreval ("13. Concatenar 2 strings")
  escreval ("14. Juros Simples")
  escreval ("15. Juros Compostos")
  escreval ("16. Sair")
  leia (opcao)

  escolha (opcao)

    caso 1
      escreval ("----- Voc� est� na opera��o de SOMA -----")
      total <- 0
      escreval("Digite o n�mero para soma: ")
      leia(numero)
      total <- total + numero
       // Exibir o total atual na tela
      escreval("Total: ", total)

      repita
        escreval("Digite o pr�ximo n�mero para soma: ")
        leia(numero)
        total <- total + numero
        // Exibe o total atual na tela
        escreval("Total: ", total)
        escreval("Deseja sair?(S ou N - caso N, a soma continuar� acumulando)")
        leia (letra)
        se letra = "S" entao
          interrompa
         fimse
         se letra = "s" entao
           interrompa
         fimse

      ate falso
    caso 2
      escreval ("----- Voc� est� na opera��o de SUBTRA��O -----")
      total <- 0
      escreval("Digite UM n�mero para iniciar: ")
      leia(numero)
      total <- total + numero
       // Exibir o total atual na tela
      escreval("Total: ", total)

      repita
        escreval("Digite o pr�ximo n�mero para subtrair: ")
        leia(numero)
        total <- total - numero
        // Exibe o total atual na tela
        escreval("Total: ", total)
        escreval("Deseja sair?(S ou N - caso N, a soma continuar� acumulando)")
        leia (letra)
        se letra = "S" entao
          interrompa
         fimse
         se letra = "s" entao
           interrompa
         fimse

      ate falso
    caso 3
    limpatela
      escreval ("----- Voc� est� na opera��o de MULTIPLICA��O -----")
      total <- 0
      escreval("Digite o n�mero para multiplicar: ")
      leia(numero)
      total <- total + numero

      repita
        escreval("Digite o pr�ximo n�mero para multiplica��o: ")
        leia(numero)
        total <- total * numero
        escreval("Total: ", total)
        escreval("Deseja sair?(S ou N - caso N, a multiplica��o continuar� acumulando)")
        leia (letra)
        se letra = "S" entao
          interrompa
         fimse
         se letra = "s" entao
           interrompa
         fimse
         ate falso

    caso 4
    limpatela
      escreval ("----- Voc� est� na opera��o de DIVIS�O -----")
      total <- 0
      escreval("Digite o n�mero para dividir: ")
      leia(numero)
      total <- total + numero

      repita
        escreval("Digite o pr�ximo n�mero para divis�o: ")
        leia(numero)
        total <- total / numero
        escreval("Total: ", total)
        escreval("Deseja sair?(S ou N - caso N, a divis�o continuar� acumulando)")
        leia (letra)
        se letra = "S" entao
          interrompa
         fimse
         se letra = "s" entao
           interrompa
         fimse
         ate falso

    caso 5
      escreval ("---Fatorial---")
    caso 6
      escreval ("---Fun��o de 2� grau---")
      caso 7
      repita
      escreval ("---Convers�o de base num�rica B8 X B2---")
   escreva("Digite o n�mero octal ")
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

   enquanto valorDec > 1 faca
      //escreval("1decimal: ", valorDec)
      resto <- valorDec % 2
      valorDec <- valorDec / 2
      //escreval("decimal: ", valorDec)
      se resto = 1 entao
         binario <-  "1" + binario
      senao
         binario <- "0" + binario
   fimse

fimenquanto

     //mostrar tudo

   Escreval ("O valor Binario: ", binario , "!!")

   escreval("Deseja voltar ao menu anterior ?(S ou N - caso N)")
        leia (letra)
        se letra = "S" entao
          interrompa
         fimse
         se letra = "s" entao
           interrompa
         fimse

   ate falso
   
    caso 8
      escreval ("---Convers�o de base num�rica B2 X B8---")
     caso 9
      escreval ("---Convers�o de base num�rica B10 X B2---")
      escreval ("Qual valor deseja converter em binario")
      leia(valorEntrada)
       guardaValor <- valorEntrada
       resultado <- ""
       enquanto valorEntrada > 0 faca
       se (valorEntrada mod 2) = 0 entao
       resultado <- "0" + resultado
    senao
	resultado <- "1" + resultado
    fimse
    valorEntrada <- valorEntrada div 2
 fimenquanto
 escreval (guardaValor, " = ", resultado)
escreval("Deseja sair?(S ou N - caso N.)")
        leia (letra)
        se letra = "S" entao
          interrompa
         fimse
         se letra = "s" entao
           interrompa
         fimse
    caso 10
      repita
      escreval ("---Convers�o de base num�rica B2 X B10---")
      escreval ("Qual valor deseja converter em binario")
      leia(valorEntrada)
       guardaValor <- valorEntrada
       resultado <- ""
       enquanto valorEntrada > 0 faca
       se (valorEntrada mod 2) = 0 entao
       resultado <- "0" + resultado
    senao
	resultado <- "1" + resultado
    fimse
    valorEntrada <- valorEntrada div 2
 fimenquanto
 escreval (guardaValor, " = ", resultado)
escreval("Deseja sair?(S ou N - caso N.)")
        leia (letra)
        se letra = "S" entao
          interrompa
         fimse
         se letra = "s" entao
           interrompa
         fimse
         ate falso
         
         
    caso 11
      escreval ("---Convers�o de base num�rica B16 X B2---")
             limpatela
             repita
             escreval ("---CONVERS�O DE BASE NUMERICA B16 PARA B2---")
             escreval ("QUANTOS ALGARISMOS VOC� QUER CONVERTER?: ")
                  leia (vezes)
                  se vezes <= 0 entao
                  repita
                  escreval ("VOC� DEVE INSERIR UM NUMERO REAL!")
                  escreval ("QUANTOS ALGARISMOS VOC� QUER CONVERTER?:")
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
                                       escreval ("O ALGARISMO N�O � HEXADECIMAL")
                                       escreval ("VOC� DEVE INSERIR UM NUMERO REAL!")
                                        escreval ("VOC� DEVE INSERIR UMA LETRA MAI�SCULA!")
                                       escreval ("ALGARISMO 1: ")
                                       leia (numhex)
                                       FimEscolha

                               ate conversaohex <> ""
                                 Escreval ("O valor: ", numhex, " em Bin�rio ser� ", conversaohex, " !")
                     fimse

                  se vezes >1 entao

                  repita
                        repita
                              escreval ("ALGARISMO ", conthex +1 , ":")
                              leia (numhex)
                              Escolha numhex
                                       caso "0"
                                       conversaohex:= "0000"
                                       numbin <- numbin + conversaohex
                                       stringhex <- stringhex + numhex
                                       conthex <-conthex + 1
                                       caso "1"
                                       conversaohex:= "0001"
                                       numbin <- numbin + conversaohex
                                       stringhex <- stringhex + numhex
                                       conthex <-conthex + 1
                                       caso "2"
                                       conversaohex:= "0010"
                                       numbin <- numbin + conversaohex
                                       stringhex <- stringhex + numhex
                                       conthex <-conthex + 1
                                       caso "3"
                                       conversaohex:= "0011"
                                       numbin <- numbin + conversaohex
                                       stringhex <- stringhex + numhex
                                       conthex <-conthex + 1
                                       caso "4"
                                       conversaohex:= "0100"
                                       numbin <- numbin + conversaohex
                                       stringhex <- stringhex +numhex
                                      conthex <-conthex + 1
                                       caso "5"
                                       conversaohex:= "0101"
                                       numbin <- numbin + conversaohex
                                       stringhex <- stringhex + numhex
                                      conthex <-conthex + 1
                                       caso "6"
                                       conversaohex:= "0110"
                                       numbin <- numbin + conversaohex
                                       stringhex <- stringhex + numhex
                                       conthex <-conthex + 1
                                       caso "7"
                                       conversaohex:= "0111"
                                       numbin <- numbin + conversaohex
                                       stringhex <- stringhex + numhex
                                       conthex <-conthex + 1
                                       caso "8"
                                       conversaohex:= "1000"
                                       numbin <- numbin + conversaohex
                                       stringhex <- stringhex + numhex
                                       conthex <-conthex + 1
                                       caso "9"
                                       conversaohex:= "1001"
                                       numbin <- numbin + conversaohex
                                       stringhex <- stringhex + numhex
                                       conthex <-conthex + 1
                                       caso "A"
                                       conversaohex:= "1010"
                                       numbin <- numbin + conversaohex
                                       stringhex <- stringhex + numhex
                                       conthex <-conthex + 1
                                       caso "B"
                                       conversaohex:= "1011"
                                       numbin <- numbin + conversaohex
                                       stringhex <- stringhex + numhex
                                       conthex <-conthex + 1
                                       caso "C"
                                       conversaohex:= "1100"
                                       numbin <- numbin + conversaohex
                                       stringhex <- stringhex + numhex
                                       conthex <-conthex + 1
                                       caso "D"
                                       conversaohex:= "1101"
                                       numbin <- numbin + conversaohex
                                       stringhex <- stringhex + numhex
                                       conthex <-conthex + 1
                                       caso "E"
                                       conversaohex:= "1100"
                                       numbin <- numbin + conversaohex
                                       stringhex <- stringhex + numhex
                                       conthex <-conthex + 1
                                       caso "F"
                                       conversaohex:= "1111"
                                       numbin <- numbin + conversaohex
                                       stringhex <- stringhex + numhex
                                       conthex <-conthex + 1
                                       outrocaso

                                        escreval ("O ALGARISMO N�O � HEXADECIMAL")
                                        escreval ("VOC� DEVE INSERIR UM NUMERO REAL!")
                                        escreval ("VOC� DEVE INSERIR UMA LETRA MAI�SCULA!")
                                       FimEscolha



                               ate conversaohex <> ""

                     at� conthex = vezes
                     fimse

                   Escreval ("O valor: ", stringhex, " em Bin�rio ser� ", numbin, " !")
                   Escreval (" ")
                   Escreval ("Gostaria de voltar ao menu ou realizar outro c�lculo?")
                   Escreval ("Digite 1 para realizar outro c�lculo")
                   Escreval ("Digite 2 para voltar ao menu")
                   leia(sairhex)
                   conthex <-0
                   numbin := ""
                   stringhex := ""
                   limpatela

               ate (sairhex)= 2
    caso 12
      escreval ("---Convers�o de base num�rica B2 X B16---")
    caso 13
     limpatela
      escreval("----- Voc� est� na opera��o de CONCATENA��O -----")
      string1 <- ""
      string2 <- ""
      repita
      escreval("Digite o primeiro texto: ")
      leia(string1)
      escreval("Digite o segundo texto: ")
      leia(string2)
      escreval(string1, string2)
      escreval("Deseja sair?(S ou N - caso N, poder� realizar uma nova concatena��o)")
        leia (letra)
        se letra = "S" entao
          interrompa
         fimse
         se letra = "s" entao
           interrompa
         fimse
         ate falso


    caso 14
    limpatela
      escreval ("----- Voc� est� na opera��o de JUROS SIMPLES -----")
      total <- 0
      escreval("Digite o valor do capital: ")
      leia(numero)
      total <- total + numero
      repita
      escreval("Digite a taxa para o calculo: ")
      leia(taxa)
      escreval("Digite o tempo em anos para o calculo: ")
      leia (temp)
        juros <- total * (taxa / 100) * temp
        total <- juros + total
        escreval("O montante final ser�: R$", total)
        escreval("Deseja sair?(S ou N - caso N, poder� calcular novas taxas e prazos no mesmo montante)")
        leia (letra)
        se letra = "S" entao
          interrompa
         fimse
         se letra = "s" entao
           interrompa
         fimse
         ate falso
    caso 15
    limpatela
      escreval ("----- Voc� est� na opera��o de JUROS COMPOSTOS -----")
      total <- 0
      escreval("Digite o valor do capital: ")
      leia(numero)
      total <- total + numero

    repita
    limpatela
      escreval("Digite a taxa para o c�lculo: ")
      leia(taxa)
      escreval("Digite o tempo em anos para o c�lculo: ")
      leia (temp)

        total <- total * ((1 + taxa / 100) ^ temp)

        escreval("O montante final ser�: R$", total)
        escreval("Deseja sair?(S ou N - caso N, poder� calcular novas taxas e prazos no mesmo montante)")
        leia (letra)

        se letra = "S" entao
          interrompa
         fimse
         se letra = "s" entao
           interrompa
         fimse
         ate falso
    caso 16
      escreval ("-- Encerrando Nexus I... --")
    outrocaso
      escreval ("Op��o inv�lida, por favor digite novamente.")
  fimescolha

ate (opcao) = 16

Fimalgoritmo