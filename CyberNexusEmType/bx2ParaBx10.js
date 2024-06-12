"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var readlineSync = require("readline-sync");
// variáveis
var decimal = 0;
var binario;
// funções parciais
// verificar se é binario retornando true ou false
function isBinary(str) {
    return /^[01]+$/.test(str);
}
// converter de binario para decimal
function binaryToDecimal(binary) {
    var decimal = 0;
    for (var i = 0; i < binary.length; i++) {
        decimal = decimal * 2 + (binary[i] === '1' ? 1 : 0);
    }
    return decimal;
}
// funçao da calculadora
// case 10:
console.log("---Conversão de base numérica B2 X B10---");
var continuar;
do {
    var binario_1 = void 0;
    // loop para validar a entrada de um numero binario
    do {
        binario_1 = readlineSync.question("Digite um numero binario: ");
        if (!isBinary(binario_1)) {
            console.log("Número binário inválido. Tente novamente.");
        }
    } while (!isBinary(binario_1));
    // chama a funcao para converter
    var decimal_1 = binaryToDecimal(binario_1);
    console.log("O n\u00FAmero decimal correspondente \u00E9: ".concat(decimal_1));
    continuar = readlineSync.question("Quer continuar na função binário para decimal? ('s' para continuar ou qualquer outro dígito para sair): ");
    if (continuar.toLowerCase() === 's') {
        console.clear();
    }
} while (continuar.toLowerCase() === 's');
// break; esse break vai entrar ao incorporar ao menu
