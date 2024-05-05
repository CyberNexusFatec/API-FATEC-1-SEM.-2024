Algoritmo "MenuNexusI"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 18/04/2024
Var

// Seção de Declarações das variáveis
valorDec,total, numero, taxa, juros: real
binario, posDec,numhex, numbin, conversaohex, stringhex ,letra: caracter
string1, string2, resultado: caracter
valorEntrada, guardaValor, opcao, conthex, vezes, sairhex, temp: inteiro
octal, decimal, i, j, tamOctal, cont, res, resto: inteiro




Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
repita

  escreval ("*****Calculadora Nexus I*****")
  escreval ("-------------Menu------------")
  escreval ("Escolha uma opção de 1 à 16")
  escreval ("1. Soma")
  escreval ("2. Subtração")
  escreval ("3. Multiplicação")
  escreval ("4. Divisão")
  escreval ("5. Fatorial")
  escreval ("6. Função de 2º grau")
  escreval ("7. Conversão de base numérica B8 X B2")
  escreval ("8. Conversão de base numérica B2 X B8")
  escreval ("9. Conversão de base numérica B10 X B2")
  escreval ("10. Conversão de base numérica B2 X B10")
  escreval ("11. Conversão de base numérica B16 X B2")
  escreval ("12. Conversão de base numérica B2 X B16")
  escreval ("13. Concatenar 2 strings")
  escreval ("14. Juros Simples")
  escreval ("15. Juros Compostos")
  escreval ("16. Sair")
  leia (opcao)

  escolha (opcao)

    caso 1
      escreval ("----- Você está na operação de SOMA -----")
      total <- 0
      escreval("Digite o número para soma: ")
      leia(numero)
      total <- total + numero
       // Exibir o total atual na tela
      escreval("Total: ", total)

      repita
        escreval("Digite o próximo número para soma: ")
        leia(numero)
        total <- total + numero
        // Exibe o total atual na tela
        escreval("Total: ", total)
        escreval("Deseja sair?(S ou N - caso N, a soma continuará acumulando)")
        leia (letra)
        se letra = "S" entao
          interrompa
         fimse
         se letra = "s" entao
           interrompa
         fimse

      ate falso
    caso 2
      escreval ("----- Você está na operação de SUBTRAÇÃO -----")
      total <- 0
      escreval("Digite UM número para iniciar: ")
      leia(numero)
      total <- total + numero
       // Exibir o total atual na tela
      escreval("Total: ", total)

      repita
        escreval("Digite o próximo número para subtrair: ")
        leia(numero)
        total <- total - numero
        // Exibe o total atual na tela
        escreval("Total: ", total)
        escreval("Deseja sair?(S ou N - caso N, a soma continuará acumulando)")
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
      escreval ("----- Você está na operação de MULTIPLICAÇÃO -----")
      total <- 0
      escreval("Digite o número para multiplicar: ")
      leia(numero)
      total <- total + numero

      repita
        escreval("Digite o próximo número para multiplicação: ")
        leia(numero)
        total <- total * numero
        escreval("Total: ", total)
        escreval("Deseja sair?(S ou N - caso N, a multiplicação continuará acumulando)")
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
      escreval ("----- Você está na operação de DIVISÃO -----")
      total <- 0
      escreval("Digite o número para dividir: ")
      leia(numero)
      total <- total + numero

      repita
        escreval("Digite o próximo número para divisão: ")
        leia(numero)
        total <- total / numero
        escreval("Total: ", total)
        escreval("Deseja sair?(S ou N - caso N, a divisão continuará acumulando)")
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
      escreval ("---Função de 2º grau---")
      caso 7
      repita
      escreval ("---Conversão de base numérica B8 X B2---")
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
      escreval ("---Conversão de base numérica B2 X B8---")
     caso 9
      escreval ("---Conversão de base numérica B10 X B2---")
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
      escreval ("---Conversão de base numérica B2 X B10---")
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
      escreval ("---Conversão de base numérica B16 X B2---")
             limpatela
             repita
             escreval ("---CONVERSÃO DE BASE NUMERICA B16 PARA B2---")
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
                                       escreval ("VOCÊ DEVE INSERIR UM NUMERO REAL!")
                                        escreval ("VOCÊ DEVE INSERIR UMA LETRA MAIÚSCULA!")
                                       escreval ("ALGARISMO 1: ")
                                       leia (numhex)
                                       FimEscolha

                               ate conversaohex <> ""
                                 Escreval ("O valor: ", numhex, " em Binário será ", conversaohex, " !")
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

                                        escreval ("O ALGARISMO NÃO É HEXADECIMAL")
                                        escreval ("VOCÊ DEVE INSERIR UM NUMERO REAL!")
                                        escreval ("VOCÊ DEVE INSERIR UMA LETRA MAIÚSCULA!")
                                       FimEscolha



                               ate conversaohex <> ""

                     até conthex = vezes
                     fimse

                   Escreval ("O valor: ", stringhex, " em Binário será ", numbin, " !")
                   Escreval (" ")
                   Escreval ("Gostaria de voltar ao menu ou realizar outro cálculo?")
                   Escreval ("Digite 1 para realizar outro cálculo")
                   Escreval ("Digite 2 para voltar ao menu")
                   leia(sairhex)
                   conthex <-0
                   numbin := ""
                   stringhex := ""
                   limpatela

               ate (sairhex)= 2
    caso 12
      escreval ("---Conversão de base numérica B2 X B16---")
    caso 13
     limpatela
      escreval("----- Você está na operação de CONCATENAÇÃO -----")
      string1 <- ""
      string2 <- ""
      repita
      escreval("Digite o primeiro texto: ")
      leia(string1)
      escreval("Digite o segundo texto: ")
      leia(string2)
      escreval(string1, string2)
      escreval("Deseja sair?(S ou N - caso N, poderá realizar uma nova concatenação)")
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
      escreval ("----- Você está na operação de JUROS SIMPLES -----")
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
        escreval("O montante final será: R$", total)
        escreval("Deseja sair?(S ou N - caso N, poderá calcular novas taxas e prazos no mesmo montante)")
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
      escreval ("----- Você está na operação de JUROS COMPOSTOS -----")
      total <- 0
      escreval("Digite o valor do capital: ")
      leia(numero)
      total <- total + numero

    repita
    limpatela
      escreval("Digite a taxa para o cálculo: ")
      leia(taxa)
      escreval("Digite o tempo em anos para o cálculo: ")
      leia (temp)

        total <- total * ((1 + taxa / 100) ^ temp)

        escreval("O montante final será: R$", total)
        escreval("Deseja sair?(S ou N - caso N, poderá calcular novas taxas e prazos no mesmo montante)")
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
      escreval ("Opção inválida, por favor digite novamente.")
  fimescolha

ate (opcao) = 16

Fimalgoritmo