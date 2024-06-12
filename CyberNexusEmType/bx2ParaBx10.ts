import * as readlineSync from 'readline-sync';
// variáveis
let decimal = 0;
let binario: string;

// funções parciais
// verificar se é binario retornando true ou false
function isBinary(str: string): boolean {
  return /^[01]+$/.test(str);
}

// converter de binario para decimal
function binaryToDecimal(binary: string): number {
  let decimal = 0;
  for (let i = 0; i < binary.length; i++) {
    decimal = decimal * 2 + (binary[i] === '1' ? 1 : 0);
  }
  return decimal;
}

// funçao da calculadora
// case 10:
console.log("---Conversão de base numérica B2 X B10---");
let continuar: string;
do {
    let binario: string;
    // loop para validar a entrada de um numero binario
    do {
        binario = readlineSync.question("Digite um numero binario: ");
        if (!isBinary(binario)) {
          console.log("Número binário inválido. Tente novamente.");
        }
    } while (!isBinary(binario));
    // chama a funcao para converter
    let decimal = binaryToDecimal(binario);
    console.log(`O número decimal correspondente é: ${decimal}`);
    continuar = readlineSync.question("Quer continuar na função binário para decimal? ('s' para continuar ou qualquer outro dígito para sair): ");
    if (continuar.toLowerCase() === 's') {
      console.clear();
    }
  } while (continuar.toLowerCase() === 's');
// break; esse break vai entrar ao incorporar ao menu
