"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var readlineSync = require("readline-sync");
// Declaração das variáveis
var a, b, c;
var delta, raiz;
var raizAux, i, x;
var x1, x2;
// Função para calcular a raiz quadrada inteira (aproximação)
function calcularRaizQuadradaInteira(num) {
    for (var i_1 = 1; i_1 * i_1 <= num; i_1++) {
        if (i_1 * i_1 === num) {
            return i_1;
        }
    }
    return -1; // Indica que não possui raiz exata
}
// Função para calcular a raiz quadrada manualmente (aproximação)
function raizQuadrada(num) {
    var aproximacao = num / 2;
    var melhorAproximacao = 0;
    while (aproximacao !== melhorAproximacao) {
        melhorAproximacao = aproximacao;
        aproximacao = (num / melhorAproximacao + melhorAproximacao) / 2;
    }
    return aproximacao;
}
// Seção de comandos, procedimentos, funções, operadores, etc...
console.log("EQUAÇÃO DO 2º GRAU");
console.log("---------------------");
a = parseFloat(readlineSync.question("Digite o valor de a: "));
console.log("---------------------");
b = parseFloat(readlineSync.question("Digite o valor de b: "));
console.log("---------------------");
c = parseFloat(readlineSync.question("Digite o valor de c: "));
console.log("---------------------");
// Calculo da raiz quadrada inteira de 'a'
raiz = calcularRaizQuadradaInteira(a);
if (raiz !== -1) {
    console.log("A raiz 2 de ".concat(a, " \u00E9: ").concat(raiz));
}
else {
    console.log("O n\u00FAmero ".concat(a, " n\u00E3o possui raiz exata"));
}
// Calculo do delta
delta = (b * b) - (4 * a * c);
if (delta < 0) {
    console.log("Delta é ", delta, " negativo, a equação não possui raízes reais.");
}
else {
    // Calculo das raízes da equação usando a função raizQuadrada
    var sqrtDelta = raizQuadrada(delta);
    x1 = (-b + sqrtDelta) / (2 * a);
    x2 = (-b - sqrtDelta) / (2 * a);
    console.log();
    console.log("O valor de delta: ", delta);
    console.log();
    console.log("O valor de x1: ", x1);
    console.log("O valor de x2: ", x2);
}
