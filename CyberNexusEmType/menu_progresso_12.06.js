var opcao;
var total;
var numero;
var letra;
var rep = 0;
var entrada;
var readlineSync = require('readline-sync');
var a, b, c;
var delta, raiz;
var raizAux, i, x;
var x1, x2;
var vezes;
var contador = 0;
var resultado = "";
var conversaohex = "";
var decimal = 0;
var binario;
var decabin;
function menu() {
    console.log("*****Calculadora Nexus I*****");
    console.log("-------------Menu------------");
    console.log("Escolha uma opção de 1 a 16");
    console.log("1. Soma");
    console.log("2. Subtração");
    console.log("3. Multiplicação");
    console.log("4. Divisão");
    console.log("5. Fatorial");
    console.log("6. Função de 2º grau");
    console.log("7. Conversão de base numérica B8 X B2");
    console.log("8. Conversão de base numérica B2 X B8");
    console.log("9. Conversão de base numérica B10 X B2");
    console.log("10. Conversão de base numérica B2 X B10");
    console.log("11. Conversão de base numérica B16 X B2");
    console.log("12. Conversão de base numérica B2 X B16");
    console.log("13. Concatenar 2 strings");
    console.log("14. Juros Simples");
    console.log("15. Juros Compostos");
    console.log("16. Sair");
}
do {
    menu();
    opcao = parseInt(readlineSync.question('Escolha uma opcao: '));
    switch (opcao) {
        case 1: // CALCULO DE SOMA (OK)//
            console.clear();
            console.log("----- Você está na operação de SOMA -----");
            rep = 1;
            do {
                var entrada_1 = require("readline-sync");
                var num1 = parseFloat(entrada_1.question('Digite o primeiro valor: '));
                var num2 = parseFloat(entrada_1.question('Digite o segundo valor: '));
                var res = num1 + num2;
                console.log();
                console.log("--------------");
                console.log("A soma de ".concat(num1, " e ").concat(num2, " \u00E9: ").concat(res));
                console.log("--------------");
                console.log();
                rep = parseInt(entrada_1.question("Se desejar realizar uma nova operacao digite [1] para retornar ao menu digite qualquer digito diferente de [1]: "));
            } while (rep == 1);
            break;
        case 2: // CALCULO DE SUBTRAÇÃO (OK)//
            console.clear();
            console.log("----- Você está na operação de SUBTRAÇÃO -----");
            rep = 1;
            do {
                var entrada_2 = require("readline-sync");
                var num1 = parseFloat(entrada_2.question('Digite o primeiro valor: '));
                var num2 = parseFloat(entrada_2.question('Digite o segundo valor: '));
                var res = num1 - num2;
                console.log();
                console.log("--------------");
                console.log("A subtra\u00E7\u00E3o de ".concat(num1, " por ").concat(num2, " \u00E9: ").concat(res));
                console.log("--------------");
                console.log();
                rep = parseInt(entrada_2.question("Se desejar realizar uma nova operacao digite [1] para retornar ao menu digite qualquer digito diferente de [1]: "));
            } while (rep == 1);
            break;
        case 3: // CALCULO DE MULTIPLICAÇÃO (OK)//
            console.clear();
            console.log("----- Você está na operação de MULTIPLICAÇÃO -----");
            rep = 1;
            do {
                var entrada_3 = require("readline-sync");
                var num1 = parseFloat(entrada_3.question('Digite o primeiro valor: '));
                var num2 = parseFloat(entrada_3.question('Digite o segundo valor: '));
                var res = num1 * num2;
                console.log();
                console.log("--------------");
                console.log("A multiplica\u00E7\u00E3o de ".concat(num1, " e ").concat(num2, " \u00E9: ").concat(res));
                console.log("--------------");
                console.log();
                rep = parseInt(entrada_3.question("Se desejar realizar uma nova operacao digite [1] para retornar ao menu digite qualquer digito diferente de [1]: "));
            } while (rep == 1);
            break;
        case 4: // CALCULO DE DIVISÃO (OK)//
            console.clear();
            console.log("----- Você está na operação de DIVISÃO -----");
            rep = 1;
            do {
                var entrada_4 = require("readline-sync");
                var num1 = parseFloat(entrada_4.question('Digite o primeiro valor: '));
                var num2 = parseFloat(entrada_4.question('Digite o segundo valor: '));
                var res = num1 / num2;
                console.log();
                console.log("--------------");
                console.log("A divis\u00E3o de ".concat(num1, " por ").concat(num2, " \u00E9: ").concat(res));
                console.log("--------------");
                console.log();
                rep = parseInt(entrada_4.question("Se desejar realizar uma nova operacao digite [1] para retornar ao menu digite qualquer digito diferente de [1]: "));
            } while (rep == 1);
            break;
        case 5: // CALCULO DE FATORIAL (OK)//
            console.clear();
            console.log("----- Você está na operação de CALCULO DE FATORIAL -----");
            rep = 1;
            do {
                var entrada_5 = require("readline-sync");
                var a_1 = parseFloat(entrada_5.question("Insira o Valor: "));
                function fatorial(n) {
                    if (n < 0) {
                        throw new Error("Numero não deve ser negativo");
                    }
                    var resultado = 1;
                    for (var i_1 = 1; i_1 <= n; i_1++) {
                        resultado *= i_1;
                    }
                    return resultado;
                }
                console.log();
                console.log("--------------");
                console.log("O fatorial de ".concat(a_1, " \u00E9 ").concat(fatorial(a_1)));
                console.log("--------------");
                console.log();
                rep = parseInt(entrada_5.question("Se desejar realizar uma nova operacao digite [1] para retornar ao menu digite qualquer digito diferente de [1]: "));
            } while (rep == 1);
            break;
        case 6: // CALCULO DE FUNÇÃO DE SEGUNDO GRAU (OK)//
            console.clear();
            console.log("----- Você está na operação de FUNCAO DO SEGUNDO GRAU -----");
            rep = 1;
            // Função para calcular a raiz quadrada inteira (aproximação)
            function calcularRaizQuadradaInteira(num) {
                for (var i_2 = 1; i_2 * i_2 <= num; i_2++) {
                    if (i_2 * i_2 === num) {
                        return i_2;
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
            do {
                var entrada_6 = require("readline-sync");
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
                    console.log("--------------");
                    console.log();
                    console.log("O valor de delta: ", delta);
                    console.log();
                    console.log("O valor de x1: ", x1);
                    console.log();
                    console.log("O valor de x2: ", x2);
                    console.log("--------------");
                }
                console.log();
                rep = parseInt(entrada_6.question("Se desejar realizar uma nova operacao digite [1] para retornar ao menu digite qualquer digito diferente de [1]: "));
            } while (rep == 1);
            break;
        case 7: // CALCULO DE BASE DE CONVERSÃO NUMERICA OCTAL PARA BINÁRIO (OK)//
            console.clear();
            console.log("----- Você está na operação de CONVERSÃO NUMÉRICA OCTAL PARA BINÁRIO -----");
            rep = 1;
            do {
                var entrada_7 = require("readline-sync");
                var octal = entrada_7.question("Digite o numero octal: ");
                function octalParaBinario(octal) {
                    var decimal = parseInt(octal, 8); // Converte octal para decimal
                    var binario = '';
                    while (decimal > 0) {
                        binario = (decimal % 2) + binario;
                        decimal = Math.floor(decimal / 2);
                    }
                    // Preenche com zeros à esquerda até ter 4 algarismos
                    while (binario.length < 4) {
                        binario = '0' + binario;
                    }
                    return binario;
                }
                var resultadoBin = octalParaBinario(octal);
                console.log("--------------");
                console.log("O valor ".concat(octal, " em Binario sera: ").concat(resultadoBin));
                console.log("--------------");
                console.log();
                rep = parseInt(entrada_7.question("Se desejar realizar uma nova operacao digite [1] para retornar ao menu digite qualquer digito diferente de [1]: "));
            } while (rep === 1);
            break;
        case 8: // CALCULO DE BASE DE CONVERSÃO NUMERICA BINÁRIO PARA OCTAL (OK)//
            console.clear();
            console.log("----- Você está na operação de CONVERSAO NUMERICA BINARIO PARA OCTAL -----");
            rep = 1;
            do {
                var entrada_8 = require("readline-sync");
                var binario_1 = entrada_8.question("\nDigite o numero em binario: ");
                var i_3 = 0;
                var j = 1;
                var cont = 1;
                var tamBin = binario_1.length;
                var binarioInvertido = "";
                var decimal_1 = 0;
                //binario para decimal
                do {
                    binarioInvertido = binario_1.split('').reverse();
                    if (binarioInvertido[i_3] > '1') {
                        console.log('\nValor binario invalido');
                        break;
                    }
                    else if (binarioInvertido[i_3] == '1') {
                        decimal_1 += cont;
                    }
                    cont = cont * 2;
                    i_3 += 1;
                } while (i_3 <= tamBin);
                //decimal para octal
                var valorDec = decimal_1;
                var valorOct = 0;
                var res = void 0;
                if (valorDec <= 7) {
                    valorOct = valorDec;
                }
                else {
                    while (valorDec >= 8) {
                        res = Math.trunc(valorDec % 8);
                        valorDec = valorDec / 8;
                        valorOct = valorOct + res * j;
                        j = j * 10;
                    }
                    valorDec = Math.trunc(valorDec % 8);
                    valorOct = valorOct + valorDec * j;
                }
                console.log("O valor binario ".concat(binario_1, " em Octal sera: ").concat(valorOct));
                console.log("--------------");
                console.log();
                rep = parseInt(entrada_8.question("Se desejar realizar uma nova operacao digite [1] para retornar ao menu digite qualquer digito diferente de [1]: "));
            } while (rep == 1);
            break;
        case 9: // CALCULO DE BASE DE CONVERSÃO NUMERICA DECIMAL PARA BINÁRIO  (OK)//
            console.clear();
            console.log("----- Você está na operação de CONVERSAO NUMERICA DECIMAL PARA BINARIO -----");
            rep = 1;
            do {
                var entrada_9 = require("readline-sync");
                var decabin_1 = entrada_9.question('Digite o Numero Decimal: ');
                function decimalParaBinario(decimal) {
                    var binario = '';
                    while (decimal > 0) {
                        binario = (decimal % 2) + binario;
                        decimal = Math.floor(decimal / 2);
                    }
                    // Preenche com zeros à esquerda até ter 4 algarismos
                    while (binario.length < 4) {
                        binario = '0' + binario;
                    }
                    binario.toString;
                    return binario;
                }
                var resultadobin = decimalParaBinario(decabin_1);
                console.log("--------------");
                console.log("O VALOR ".concat(decabin_1, " EM BIN\u00C1RIO SER\u00C1: ").concat(resultadobin));
                console.log("--------------");
                console.log();
                rep = parseInt(entrada_9.question("Se desejar realizar uma nova operacao digite [1] para retornar ao menu digite qualquer digito diferente de [1]: "));
            } while (rep == 1);
            break;
        case 10: // CALCULO DE BASE DE CONVERSÃO NUMERICA BINÁRIO PARA DECIMAL (OK) //
            console.clear();
            console.log("----- Você está na operação de CONVERSAO NUMERICA BINARIO PARA DECIMAL -----");
            rep = 1;
            do {
                var binario_2 = void 0;
                // funções parciais
                // verificar se é binario retornando true ou false
                function isBinary(str) {
                    return /^[01]+$/.test(str);
                }
                // converter de binario para decimal
                function binaryToDecimal(binary) {
                    var decimal = 0;
                    for (var i_4 = 0; i_4 < binary.length; i_4++) {
                        decimal = decimal * 2 + (binary[i_4] === '1' ? 1 : 0);
                    }
                    return decimal;
                }
                // loop para validar a entrada de um numero binario
                do {
                    binario_2 = readlineSync.question("Digite um numero binario: ");
                    if (!isBinary(binario_2)) {
                        console.log("Número binário inválido. Tente novamente.");
                    }
                } while (!isBinary(binario_2));
                // chama a funcao para converter
                var decimal_2 = binaryToDecimal(binario_2);
                console.log("--------------");
                console.log("O n\u00FAmero decimal correspondente \u00E9: ".concat(decimal_2));
                console.log("--------------");
                console.log();
                var entrada_10 = require("readline-sync");
                rep = parseInt(entrada_10.question("Se desejar realizar uma nova operacao digite [1] para retornar ao menu digite qualquer digito diferente de [1]: "));
            } while (rep == 1);
            break;
        case 11: // CALCULO DE BASE DE CONVERSÃO NUMERICA HEXADECIMAL PARA BINÁRIO (OK)//
            console.clear();
            console.log("----- Você está na operação de CONVERSAO NUMERICA HEXADECIMAL PARA BINARIO -----");
            rep = 1;
            do {
                var entrada_11 = require("readline-sync");
                var numhexa = entrada_11.question('Digite o Numero Hexadecimal: ');
                var numbin = '';
                var valido = 0;
                //FUNÇÃO DE CALCULO DE NUMEROS
                function numeroparabin(decimal) {
                    var binario = '';
                    while (decimal > 0) {
                        binario = (decimal % 2) + binario;
                        decimal = Math.floor(decimal / 2);
                    }
                    while (binario.length < 4) {
                        binario = '0' + binario;
                    }
                    return binario;
                }
                //CONVERSAO DO VALOR ENTRE STRING E NUMERO
                for (var i_5 = 0; i_5 < numhexa.length; i_5++) {
                    switch (numhexa[i_5]) {
                        case 'A':
                        case 'a':
                            numbin += '1010';
                            break;
                        case 'B':
                        case 'b':
                            numbin += '1011';
                            break;
                        case 'C':
                        case 'c':
                            numbin += '1100';
                            break;
                        case 'D':
                        case 'd':
                            numbin += '1101';
                            break;
                        case 'E':
                        case 'e':
                            numbin += '1110';
                            break;
                        case 'F':
                        case 'f':
                            numbin += '1111';
                            break;
                        case '0':
                            numbin += '0000';
                            break;
                        case '1':
                        case '2':
                        case '3':
                        case '4':
                        case '5':
                        case '6':
                        case '7':
                        case '8':
                        case '9':
                            numbin += numeroparabin(parseInt(numhexa[i_5], 16)).padStart(4, '0');
                            break;
                        default:
                            valido += 1;
                            break;
                    }
                }
                //VALIDAÇÃO SE O NUMERO PODE SER CONVERTIDO
                switch (valido) {
                    case (0):
                        console.log("--------------");
                        console.log("O VALOR ".concat(numhexa, " EM BIN\u00C1RIO SER\u00C1: ").concat(numbin));
                        console.log("--------------");
                        break;
                    default:
                        console.log("--------------");
                        console.log("O VALOR NÃO PODE SER CONVERTIDO POR NAO SER DECIMAL! ");
                        console.log("--------------");
                        break;
                }
                console.log();
                rep = parseInt(entrada_11.question("Se desejar realizar uma nova operacao digite [1] para retornar ao menu digite qualquer digito diferente de [1]: "));
            } while (rep == 1);
            break;
        case 12: // CALCULO DE BASE DE CONVERSÃO NUMERICA BINÁRIO PARA HEXADECIMAL (REVISAR)//
            console.clear();
            console.log("----- Você está na operação de CONVERSAO NUMERICA BINARIO PARA HEXADECIMAL -----");
            rep = 1;
            do {
                var entrada_12 = require("readline-sync");
                vezes = parseInt(readlineSync.question("QUANTOS ALGARISMOS VOCE QUER CONVERTER?: "), 10);
                while (vezes <= 0 || vezes > 16) {
                    if (vezes <= 0) {
                        console.log("VOCÊ DEVE INSERIR UM NUMERO MAIOR QUE ZERO!");
                    }
                    else if (vezes > 16) {
                        console.log("A QUANTIDADE DE ALGARISMOS NÃO PODE SER MAIOR QUE 16!");
                    }
                    vezes = parseInt(readlineSync.question("QUANTOS ALGARISMOS VOCÊ QUER CONVERTER?: "), 10);
                }
                while (contador < vezes) {
                    contador++;
                    var numbin = readlineSync.question("ALGARISMO ".concat(contador, ": "));
                    switch (numbin) {
                        case "0000":
                            conversaohex = "0";
                            break;
                        case "0001":
                            conversaohex = "1";
                            break;
                        case "0010":
                            conversaohex = "2";
                            break;
                        case "0011":
                            conversaohex = "3";
                            break;
                        case "0100":
                            conversaohex = "4";
                            break;
                        case "0101":
                            conversaohex = "5";
                            break;
                        case "0110":
                            conversaohex = "6";
                            break;
                        case "0111":
                            conversaohex = "7";
                            break;
                        case "1000":
                            conversaohex = "8";
                            break;
                        case "1009":
                            conversaohex = "9";
                            break;
                        case "1010":
                            conversaohex = "A";
                            break;
                        case "1011":
                            conversaohex = "B";
                            break;
                        case "1100":
                            conversaohex = "C";
                            break;
                        case "1101":
                            conversaohex = "D";
                            break;
                        case "1110":
                            conversaohex = "E";
                            break;
                        case "1111":
                            conversaohex = "F";
                            break;
                        default:
                            console.log("O ALGARISMO NÃO É BINÁRIO");
                            contador--; // decrementa o contador para repetir a entrada
                            continue;
                    }
                    resultado += conversaohex;
                }
                console.log("--------------");
                console.log("O VALOR ".concat(conversaohex, " EM BIN\u00C1RIO SER\u00C1: ").concat(resultado));
                console.log("--------------");
                console.log();
                rep = parseInt(entrada_12.question("Se desejar realizar uma nova operacao digite [1] para retornar ao menu digite qualquer digito diferente de [1]: "));
            } while (rep == 1);
            break;
        case 13: // CALCULO DE CONCATENAÇÃO DE 2 STRINGS (OK)//
            console.clear();
            console.log("----- Você está na operação de CONCATENACAO DE 2 STRINGS -----");
            rep = 1;
            do {
                var entrada_13 = require("readline-sync");
                var num1 = (entrada_13.question('Digite a primeira string: '));
                var num2 = (entrada_13.question('Digite a segunda string: '));
                var res = num1 + num2;
                console.log("--------------");
                console.log("A concatena\u00E7\u00E3o de ".concat(num1, " e ").concat(num2, " \u00E9: ").concat(res));
                console.log("--------------");
                console.log();
                rep = parseInt(entrada_13.question("Se desejar realizar uma nova operacao digite [1] para retornar ao menu digite qualquer digito diferente de [1]: "));
            } while (rep == 1);
            break;
        case 14: // CALCULO DE JUROS SIMPLES (OK)//
            console.clear();
            console.log("----- Você está na operação de JUROS SIMPLES -----");
            rep = 1;
            do {
                var entrada_14 = require("readline-sync");
                var valor = parseFloat(entrada_14.question('Digite o capital: '));
                var taxa = parseFloat(entrada_14.question('Digite a taxa de juros: '));
                var tempo = parseFloat(entrada_14.question('Digite o tempo em meses: '));
                var juros = valor * (taxa / 100) * tempo;
                var total_1 = valor + juros;
                console.log("--------------");
                console.log("O juros \u00E9 de: R$".concat(juros, ", o capital total \u00E9: R$").concat(total_1));
                console.log("--------------");
                console.log();
                rep = parseInt(entrada_14.question("Se desejar realizar uma nova operacao digite [1] para retornar ao menu digite qualquer digito diferente de [1]: "));
            } while (rep == 1);
            break;
        case 15: // CALCULO DE JUROS COMPOSTOS (OK)//
            console.clear();
            console.log("----- Você está na operação de JUROS COMPOSTOS -----");
            rep = 1;
            do {
                var entrada_15 = require("readline-sync");
                var valor = parseFloat(entrada_15.question('Digite o capital: '));
                var taxa = parseFloat(entrada_15.question('Digite a taxa de juros: '));
                var tempo = parseFloat(entrada_15.question('Digite o tempo em meses: '));
                var total_2 = valor * (Math.pow((1 + taxa / 100), tempo));
                var juros = total_2 - valor;
                console.log("--------------");
                console.log("O juros \u00E9 de: R$".concat(juros, ", o capital total \u00E9: R$").concat(total_2));
                console.log("--------------");
                rep = parseInt(entrada_15.question("Se desejar realizar uma nova operacao digite [1] para retornar ao menu digite qualquer digito diferente de [1]"));
            } while (rep == 1);
            break;
        case 16: // ENCERRAMENTO DO PROGRAMA (OK)//
            console.log("--------------");
            console.log("-- Encerrando Nexus I... --");
            console.log("--------------");
            break;
        default:
            console.log("Opção inválida, por favor digite novamente.");
            break;
    }
} while (opcao !== 16);
