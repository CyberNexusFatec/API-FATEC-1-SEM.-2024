import * as readlineSync from 'readline-sync';

// Declaração das variáveis
let a: number, b: number, c: number;
let delta: number, raiz: number;
let raizAux: number, i: number, x: number;
let x1: number, x2: number;

// Função para calcular a raiz quadrada inteira (aproximação)
function calcularRaizQuadradaInteira(num: number): number {
    for (let i = 1; i * i <= num; i++) {
        if (i * i === num) {
            return i;
        }
    }
    return -1; // Indica que não possui raiz exata
}

// Função para calcular a raiz quadrada manualmente (aproximação)
function raizQuadrada(num: number): number {
    let aproximacao = num / 2;
    let melhorAproximacao = 0;

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
    console.log(`A raiz 2 de ${a} é: ${raiz}`);
} else {
    console.log(`O número ${a} não possui raiz exata`);
}

// Calculo do delta
delta = (b * b) - (4 * a * c);

if (delta < 0) {
    console.log("Delta é ", delta," negativo, a equação não possui raízes reais.");
} else {
    // Calculo das raízes da equação usando a função raizQuadrada
    let sqrtDelta = raizQuadrada(delta);
    x1 = (-b + sqrtDelta) / (2 * a);
    x2 = (-b - sqrtDelta) / (2 * a);

    console.log();
    console.log("O valor de delta: ", delta);
    console.log();
    console.log("O valor de x1: ", x1);
    console.log("O valor de x2: ", x2);
}
