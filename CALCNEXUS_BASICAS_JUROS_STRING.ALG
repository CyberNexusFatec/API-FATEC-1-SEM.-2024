Algoritmo "MenuNexusI"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 18/04/2024
Var
// Seção de Declarações das variáveis
opcao, temp: inteiro
total, numero, taxa, juros: real
letra, string1, string2: caracter
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
      escreval ("---Conversão de base numérica B8 X B2---")
    caso 8
      escreval ("---Conversão de base numérica B2 X B8---")
    caso 9
      escreval ("---Conversão de base numérica B10 X B2---")
    caso 10
      escreval ("---Conversão de base numérica B2 X B10---")
    caso 11
      escreval ("---Conversão de base numérica B16 X B2---")
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