Algoritmo "MenuNexusI"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 18/04/2024
Var
// Se��o de Declara��es das vari�veis 
opcao: inteiro
total, numero: real
letra: caracter
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
      escreval ("---Multiplica��o---")
    caso 4
      escreval ("---Divis�o---")
    caso 5
      escreval ("---Fatorial---")
    caso 6
      escreval ("---Fun��o de 2� grau---")
    caso 7
      escreval ("---Convers�o de base num�rica B8 X B2---")
    caso 8
      escreval ("---Convers�o de base num�rica B2 X B8---")
    caso 9
      escreval ("---Convers�o de base num�rica B10 X B2---")
    caso 10
      escreval ("---Convers�o de base num�rica B2 X B10---")
    caso 11
      escreval ("---Convers�o de base num�rica B16 X B2---")
    caso 12
      escreval ("---Convers�o de base num�rica B2 X B16---")
    caso 13
      escreval ("---Concatenar 2 string---")
    caso 14
      escreval ("---Juros Simples---")
    caso 15
      escreval ("---Juros Compostos---")
    caso 16
      escreval ("-- Encerrando Nexus I... --")
    outrocaso
      escreval ("Op��o inv�lida, por favor digite novamente.")
  fimescolha
      
ate (opcao) = 16

Fimalgoritmo