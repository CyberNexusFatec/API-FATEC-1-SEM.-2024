var opcao;
var total;
var numero;
var letra;
var rep = 0;
var entrada;
var readlineSync = require('readline-sync');
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
    opcao = parseInt(readlineSync.question("Escolha uma opcao: "));
    switch (opcao) {
        case 1:
            console.clear();
            console.log("----- Você está na operação de SOMA -----");
            rep = 1;
            do {
                var entrada_1 = require("readline-sync");
                var num1 = parseFloat(entrada_1.question('Digite o primeiro valor: '));
                var num2 = parseFloat(entrada_1.question('Digite o segundo valor: '));
                var res = num1 + num2;
                console.log("--------------");
                console.log("A soma de ".concat(num1, " e ").concat(num2, " \u00E9: ").concat(res));
                rep = parseInt(entrada_1.question("Se desejar realizar uma nova operacao digite [1] para retornar ao menu digite qualquer digito diferente de [1]"));
            } while (rep == 1);
            break;
        case 2:
            console.clear();
            console.log("----- Você está na operação de SUBTRAÇÃO -----");
            rep = 1;
            do {
                var entrada_2 = require("readline-sync");
                var num1 = parseFloat(entrada_2.question('Digite o primeiro valor: '));
                var num2 = parseFloat(entrada_2.question('Digite o segundo valor: '));
                var res = num1 - num2;
                console.log("--------------");
                console.log("A subtra\u00E7\u00E3o de ".concat(num1, " por ").concat(num2, " \u00E9: ").concat(res));
                rep = parseInt(entrada_2.question("Se desejar realizar uma nova operacao digite [1] para retornar ao menu digite qualquer digito diferente de [1]"));
            } while (rep == 1);
            break;
        case 3:
            console.clear();
            console.log("---Multiplicação---");
            rep = 1;
            do {
                var entrada_3 = require("readline-sync");
                var num1 = parseFloat(entrada_3.question('Digite o primeiro valor: '));
                var num2 = parseFloat(entrada_3.question('Digite o segundo valor: '));
                var res = num1 * num2;
                console.log("--------------");
                console.log("A multiplica\u00E7\u00E3o de ".concat(num1, " e ").concat(num2, " \u00E9: ").concat(res));
                rep = parseInt(entrada_3.question("Se desejar realizar uma nova operacao digite [1] para retornar ao menu digite qualquer digito diferente de [1]"));
            } while (rep == 1);
            break;
        case 4:
            console.clear();
            console.log("---Divisão---");
            rep = 1;
            do {
                var entrada_4 = require("readline-sync");
                var num1 = parseFloat(entrada_4.question('Digite o primeiro valor: '));
                var num2 = parseFloat(entrada_4.question('Digite o segundo valor: '));
                var res = num1 / num2;
                console.log("--------------");
                console.log("A divis\u00E3o de ".concat(num1, " por ").concat(num2, " \u00E9: ").concat(res));
                rep = parseInt(entrada_4.question("Se desejar realizar uma nova operacao digite [1] para retornar ao menu digite qualquer digito diferente de [1]"));
            } while (rep == 1);
            break;
        case 5:
            console.log("---Fatorial---");
            break;
        case 6:
            console.log("---Função de 2º grau---");
            break;
        case 7:
            console.log("---Conversão de base numérica B8 X B2---");
            break;
        case 8:
            console.log("---Conversão de base numérica B2 X B8---");
            break;
        case 9:
            console.log("---Conversão de base numérica B10 X B2---");
            break;
        case 10:
            console.log("---Conversão de base numérica B2 X B10---");
            break;
        case 11:
            console.clear();
            console.log("----- Você está na operação de CONVERSÃO DE BASE NUMÉRICA B16 X B2 -----");
            rep = 1;
            do {
                var entrada_5 = require("readline-sync");
                var numhexa = entrada_5.question('Digite o Numero Hexadecimal: ');
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
                for (var i = 0; i < numhexa.length; i++) {
                    switch (numhexa[i]) {
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
                            numbin += numeroparabin(parseInt(numhexa[i], 16)).padStart(4, '0');
                            break;
                        default:
                            valido += 1;
                            break;
                    }
                }
                switch (valido) {
                    case (0):
                        console.log("O VALOR ".concat(numhexa, " EM BIN\u00C1RIO SER\u00C1: ").concat(numbin));
                        break;
                    default:
                        console.log("O VALOR NÃO PODE SER CONVERTIDO POR NAO SER HEXADECIMAL! ");
                        break;
                }
                rep = parseInt(entrada_5.question("Se desejar realizar uma nova operacao digite [1] para retornar ao menu digite qualquer digito diferente de [1]"));
            } while (rep == 1);
            console.clear();
            break;
        case 12:
            console.log("---Conversão de base numérica B2 X B16---");
            break;
        case 13:
            console.log("---Concatenar 2 strings---");
            break;
        case 14:
            console.log("---Juros Simples---");
            break;
        case 15:
            console.log("---Juros Compostos---");
            break;
        case 16:
            console.log("-- Encerrando Nexus I... --");
            break;
        default:
            console.log("Opção inválida, por favor digite novamente.");
            break;
    }
} while (opcao !== 16);
