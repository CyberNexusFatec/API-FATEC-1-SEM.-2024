Algoritmo "MenuNexusI"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 18/04/2024
Var

// Se��o de Declara��es das vari�veis

valordec, total, numero, taxa, juros, valoroct: real
binario, posDec,numhex, numbin, conversaohex, stringhex ,letra: caracter
string1, string2, resultado,binarioInvertido: caracter
valorEntrada, guardaValor, opcao, conthex, vezes, sairhex, temp: inteiro
octal, decimal, i, j, tamOctal, cont, res, resto,contador,tamBin: inteiro
n, c, fat: inteiro
a, b, delta, raiz, raizAux, x : inteiro
x1, x2: real




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

 REPITA
fat <- 1

escreval("Digite um valor inteiro: ")
leia(n)
para c de n ate 1 passo -1 faca
     fat <- fat * c
fimpara
escreval("Fatorial de ", n, " � igual a:", fat)

  escreval("Deseja sair?(S ou N - caso N.)")
        leia (letra)
        se letra = "S" entao
          interrompa
         fimse
         se letra = "s" entao
           interrompa
         fimse
         ate falso
      
      
      
      
    caso 6
      escreval ("---Fun��o de 2� grau---")

repita
escreval(" EQUA��O DO 2� GRAU ")
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
escreval("Deseja voltar ao menu anterior ?(S ou N - caso N)")
        leia (letra)
        se letra = "S" entao
          interrompa
         fimse
         se letra = "s" entao
           interrompa
         fimse

   ate falso


      
      
      
      
      
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
      REPITA
      escreval ("---Convers�o de base num�rica B2 X B8---")
      

   // Se��o de Comandos, procedimento, fun��es, operadores, etc...

   //Decimal = Binario * 2^Posi��o do binario
   //ap�s isso soma tudo



   //binario para decimal
    repita
   escreva("Digite o n�mero bin�rio ")
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

   Escreval ("O valor em octal ser� de: " , valoroct , " !!")

       escreval("Deseja sair?(S ou N - caso N)")
        leia (letra)
        se letra = "S" entao
          interrompa
         fimse
         se letra = "s" entao
           interrompa
         fimse
         ate falso


      
      
      
     caso 9

     repita
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
escreval("Deseja sair?(S ou N - caso N)")
        leia (letra)
        se letra = "S" entao
          interrompa
         fimse
         se letra = "s" entao
           interrompa
         fimse
         ate falso

         
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
      
      



   Escreval ("==============================================")
   Escreval ("CALCULO DE CONVERS�O DE BIN�RIO EM HEXADECIMAL")
   Escreval ("==============================================")
   Escreval ("QUANTOS ALGARISMOS VOC� QUER CONVERTER?: ")
   leia (vezes)

   se vezes <= 0 ent�o
      repita

         Escreval ("QUANTOS ALGARISMOS VOC� QUER CONVERTER?:")
         leia (vezes)
   se vezes <= 0 ent�o
            Escreval ("VOC� DEVE INSERIR UM NUMERO MAIOR QUE ZERO!")
   //senao se vezes > 16 ent�o
            //Escreval ("A QUANTIDADE DE ALGARISMOS N�O PODE SER MAIOR QUE 16!")
        fimse
      at� (vezes > 0) e (vezes < 16)
   fimse

   se vezes >1 entao
    se vezes > 16 entao
    fimse
   fimse


      repita
         contador <- contador + 1
         Escreval ("ALGARISMO ", contador, ":")
         leia (numbin)



         // Convers�o de bin�rio para hexadecimal
         escolha numbin
         caso "0000"
            conversaohex := "0"
         caso "0001"
            conversaohex := "1"
         caso "0010"
            conversaohex := "2"
         caso "0011"
            conversaohex := "3"
         caso "0100"
            conversaohex := "4"
         caso "0101"
            conversaohex := "5"
         caso "0110"
            conversaohex := "6"
         caso "0111"
            conversaohex := "7"
         caso "1000"
            conversaohex := "8"
         caso "1001"
            conversaohex := "9"
         caso "1010"
            conversaohex := "A"
         caso "1011"
            conversaohex := "B"
         caso "1100"
            conversaohex := "C"
         caso "1101"
            conversaohex := "D"
         caso "1110"
            conversaohex := "E"
         caso "1111"
            conversaohex := "F"
         outrocaso
            escreval ("O ALGARISMO N�O � BIN�RIO")
         Fimescolha
         resultado := resultado + conversaohex  // Acumula os resultados
      at� contador = vezes

      Escreval ("O valor em Hexadecimal ser� ", resultado )
      escreval("Deseja sair?(S ou N - caso N, poder� realizar uma nova concatena��o)")
        leia (letra)
        se letra = "S" entao
          interrompa
         fimse
         se letra = "s" entao
           interrompa
         fimse
         ate falso




      
      
      
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