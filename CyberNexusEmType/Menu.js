"use strict";
let opcao;
let total;
let numero;
let letra;
let readlineSync = require('readline-sync');
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
            console.log("----- Você está na operação de SOMA -----");
            break;
        case 2:
            console.log("----- Você está na operação de SUBTRAÇÃO -----");
            break;
        case 3:
            console.log("---Multiplicação---");
            break;
        case 4:
            console.log("---Divisão---");
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
            console.log("---Conversão de base numérica B16 X B2---");
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
