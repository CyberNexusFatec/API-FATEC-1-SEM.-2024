Algoritmo "ConversaoBX2ParaBX10"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 23/04/2024
Var
// Seção de Declarações das variáveis 
numero, numero_orig, resto, ultimo: inteiro
binario: logico
numeroDecimal :real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval ("----- Você está na operação de conversão Bx2 para Bx10 -----")
escreval("Digite o número binário para conversão: ")
leia(numero)
numero_orig <- numero
// Inicializa a variável binario como verdadeira
binario <- verdadeiro
// Verificação de cada dígito do número
enquanto numero > 0 faça
  // Obter o último dígito do número
  resto <- numero % 10
  escreval(resto)
  // Verificar se o dígito não é 0 nem 1
  se resto <> 0 entao
    se resto <> 1 entao
      // Se encontrar um dígito diferente de 0, o número não é binário
      binario <- falso
      interrompa
    fimse
  fimse

  // Remove o último dígito do número para seguir o loop até acabarem os dígitos
  numero <- numero \ 10
fimenquanto

// Exibir se é binário ou não
se binario entao
  escreval("O número digitado é binário, Processando sua conversão...")


  // Inicializar a variável do número decimal
  numeroDecimal <- 0

  // Converter o número binário para decimal
  ultimo <- 0
  enquanto numero_orig > 0 faca
    resto <- numero_orig % 10
    numeroDecimal <- numeroDecimal + resto * 2 ^ ultimo
    ultimo <- ultimo + 1
    numero_orig <- numero_orig \ 10
  fimenquanto

  // Exibir o resultado da conversão
  escreval("O número binário ", numero, " é equivalente ao número decimal ", numeroDecimal)

senao
  escreval("O número digitado não é binário, insira novamente.")
fimse

Fimalgoritmo