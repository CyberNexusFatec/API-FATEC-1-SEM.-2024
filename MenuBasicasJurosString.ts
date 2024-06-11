let opcao: number;
let total: number;
let numero: number;
let letra: string;
let readlineSync = require('readline-sync');

function menu(): void {
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
            console.clear()
            console.log("----- Você está na operação de SOMA -----");
            let rep = 1
            do {
                let entrada = require("readline-sync")
                let num1: number = parseFloat(entrada.question('Digite o primeiro valor: '));
                let num2: number = parseFloat(entrada.question('Digite o segundo valor: '));
                
                
                let res: number = num1 + num2;
                
                console.log("--------------")
                
                console.log(`A soma de ${num1} e ${num2} é: ${res}`);
                rep = parseInt(entrada.question("Se desejar realizar uma nova operaçao digite [1] para retornar ao menu digite qualquer digito diferente de [1]"));

            } while (rep == 1);

            break;

        case 2:
            console.clear()
            console.log("----- Você está na operação de SUBTRAÇÃO -----");
            let rep = 1
            do {
       
                let entrada = require("readline-sync")

                let num1: number = parseFloat(entrada.question('Digite o primeiro valor: '));
                let num2: number = parseFloat(entrada.question('Digite o segundo valor: '));


                let res: number = num1 - num2;

                console.log("--------------")

                console.log(`A subtração de ${num1} por ${num2} é: ${res}`);
                rep = parseInt(entrada.question("Se desejar realizar uma nova operaçao digite [1] para retornar ao menu digite qualquer digito diferente de [1]"));

            } while (rep == 1);
                break;

        case 3:
            console.clear()
            console.log("---Multiplicação---");
            let entrada = require("readline-sync")
            let rep = 1
            do {
                let num1: number = parseFloat(entrada.question('Digite o primeiro valor: '));
                let num2: number = parseFloat(entrada.question('Digite o segundo valor: '));


                let res: number = num1 * num2;

                console.log("--------------")

                console.log(`A multiplicação de ${num1} e ${num2} é: ${res}`);
                rep = parseInt(entrada.question("Se desejar realizar uma nova operaçao digite [1] para retornar ao menu digite qualquer digito diferente de [1]"));

}           while (rep == 1);
            break;
        case 4:
            console.clear()
            console.log("---Divisão---");
            let entrada = require("readline-sync")
            let rep = 1
            do {

                let num1: number = parseFloat(entrada.question('Digite o primeiro valor: '));
                let num2: number = parseFloat(entrada.question('Digite o segundo valor: '));


                let res: number = num1 / num2;

                console.log("--------------")

                console.log(`A divisão de ${num1} por ${num2} é: ${res}`);
                rep = parseInt(entrada.question("Se desejar realizar uma nova operaçao digite [1] para retornar ao menu digite qualquer digito diferente de [1]"));

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
            console.log("---Conversão de base numérica B16 X B2---");
            break;
        case 12:
            console.log("---Conversão de base numérica B2 X B16---");
            break;
        case 13:
            console.clear()
            console.log("---Concatenar 2 strings---");
            let rep = 1
            do {
                let entrada = require("readline-sync")
                let num1: String = (entrada.question('Digite a primeira string: '));
                let num2: String = (entrada.question('Digite a segunda string: '));
                
                
                let res: String = num1 + num2;
                
                console.log("--------------")
                
                console.log(`A concatenação de ${num1} e ${num2} é: ${res}`);
                rep = parseInt(entrada.question("Se desejar realizar uma nova operaçao digite [1] para retornar ao menu digite qualquer digito diferente de [1]"));

            } while (rep == 1);
            break;
        case 14:
            console.clear()
            console.log("---Juros Simples---");
            let entrada = require("readline-sync")
            let rep = 1
            do {

                let valor: number = parseFloat(entrada.question('Digite o capital: '));
                let taxa: number = parseFloat(entrada.question('Digite a taxa de juros: '));
                let tempo: number = parseFloat(entrada.question('Digite o tempo em meses: '));

                let juros: number = valor * (taxa / 100) * tempo;
                let total: number = valor + juros
                console.log("--------------")

                console.log(`O juros é de: R$${juros}, o capital total é: R$${total}`);
                rep = parseInt(entrada.question("Se desejar realizar uma nova operaçao digite [1] para retornar ao menu digite qualquer digito diferente de [1]"));
            } while (rep == 1);
            break;
        
            case 15:
            console.clear()
            console.log("---Juros Compostos---");
            let entrada = require("readline-sync")
            let rep = 1
            do {

                let valor: number = parseFloat(entrada.question('Digite o capital: '));
                let taxa: number = parseFloat(entrada.question('Digite a taxa de juros: '));
                let tempo: number = parseFloat(entrada.question('Digite o tempo em meses: '));

                let total: number = valor * ((1 + taxa / 100) ** tempo);
                let juros: number = total - valor
                console.log("--------------")

                console.log(`O juros é de: R$${juros}, o capital total é: R$${total}`);
                rep = parseInt(entrada.question("Se desejar realizar uma nova operaçao digite [1] para retornar ao menu digite qualquer digito diferente de [1]"));
            } while (rep == 1);
            break;
        case 16:
            console.log("-- Encerrando Nexus I... --");
            break;
        default:
            console.log("Opção inválida, por favor digite novamente.");
            break;
    }
} while (opcao !== 16);