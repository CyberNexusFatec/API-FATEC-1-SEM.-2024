Algoritmo "MenuNexusI"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 18/04/2024
Var
// Seção de Declarações das variáveis
opcao: inteiro
total, numero: real
letra: caracter
resultado: caracter
	valorEntrada, guardaValor: inteiro
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


    caso 3
      escreval ("---Multiplicação---")
    caso 4
      escreval ("---Divisão---")
    caso 5
      escreval ("---Fatorial---")
    caso 6
      escreval ("---Função de 2º grau---")
    caso 7
      escreval ("---Conversão de base numérica B8 X B2---")
    caso 8
      escreval ("---Conversão de base numérica B2 X B8---")

    caso 10
      escreval ("---Conversão de base numérica B2 X B10---")
    caso 11
      escreval ("---Conversão de base numérica B16 X B2---")
    caso 12
      escreval ("---Conversão de base numérica B2 X B16---")
    caso 13
      escreval ("---Concatenar 2 string---")
    caso 14
      escreval ("---Juros Simples---")
    caso 15
      escreval ("---Juros Compostos---")
    caso 16
      escreval ("-- Encerrando Nexus I... --")
    outrocaso
      escreval ("Opção inválida, por favor digite novamente.")
  fimescolha

ate (opcao) = 16

Fimalgoritmo