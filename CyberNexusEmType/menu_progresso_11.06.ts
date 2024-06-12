let opcao;
let total;
let numero;
let letra;
var rep = 0;
let entrada;
let readlineSync = require('readline-sync');
let a, b, c;
let delta, raiz;
let raizAux, i, x;
let x1, x2;
let vezes;
let contador = 0;
let resultado = "";
let conversaohex = "";
let decimal = 0;
let binario: string;


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

    switch (opcao)
     {
        case 1: // CALCULO DE SOMA (OK)//

            console.clear()
            console.log("----- Você está na operação de SOMA -----");
             rep = 1
            do {
                let entrada = require("readline-sync")
                let num1 = parseFloat(entrada.question('Digite o primeiro valor: '));
                let num2 = parseFloat(entrada.question('Digite o segundo valor: '));
                
                let res = num1 + num2;
                
                console.log()
                console.log("--------------")
                console.log(`A soma de ${num1} e ${num2} é: ${res}`);
                console.log("--------------")
                console.log()
                rep = parseInt(entrada.question("Se desejar realizar uma nova operacao digite [1] para retornar ao menu digite qualquer digito diferente de [1]: "));

            } while (rep == 1);

            break;
        
        case 2: // CALCULO DE SUBTRAÇÃO (OK)//
            console.clear()
            console.log("----- Você está na operação de SUBTRAÇÃO -----");
            rep = 1
            do {
                let entrada = require("readline-sync")
                let num1 = parseFloat(entrada.question('Digite o primeiro valor: '));
                let num2 = parseFloat(entrada.question('Digite o segundo valor: '));


                let res = num1 - num2;

                console.log()
                console.log("--------------")
                console.log(`A subtração de ${num1} por ${num2} é: ${res}`);
                console.log("--------------")
                console.log()

                rep = parseInt(entrada.question("Se desejar realizar uma nova operacao digite [1] para retornar ao menu digite qualquer digito diferente de [1]: "));

            } while (rep == 1);
                break;
        
        case 3: // CALCULO DE MULTIPLICAÇÃO (OK)//
        console.clear()
        console.log("----- Você está na operação de MULTIPLICAÇÃO -----");
         rep = 1
            do {
                let entrada = require("readline-sync")
                let num1 = parseFloat(entrada.question('Digite o primeiro valor: '));
                let num2 = parseFloat(entrada.question('Digite o segundo valor: '));


                let res= num1 * num2;

                console.log()
                console.log("--------------")
                console.log(`A multiplicação de ${num1} e ${num2} é: ${res}`);
                console.log("--------------")
                console.log()
                rep = parseInt(entrada.question("Se desejar realizar uma nova operacao digite [1] para retornar ao menu digite qualquer digito diferente de [1]: "));

}           while (rep == 1);
            break;
        
        case 4: // CALCULO DE DIVISÃO (OK)//
            console.clear()
            console.log("----- Você está na operação de DIVISÃO -----");
            rep = 1
            do {
            let  entrada = require("readline-sync")
                let num1= parseFloat(entrada.question('Digite o primeiro valor: '));
                let num2= parseFloat(entrada.question('Digite o segundo valor: '));


                let res = num1 / num2;

                console.log()
                console.log("--------------")
                console.log(`A divisão de ${num1} por ${num2} é: ${res}`);
                console.log("--------------")
                console.log()
                rep = parseInt(entrada.question("Se desejar realizar uma nova operacao digite [1] para retornar ao menu digite qualquer digito diferente de [1]: "));

            } while (rep == 1);

            break;
        
        case 5: // CALCULO DE FATORIAL (OK)//
        console.clear()
        console.log("----- Você está na operação de CALCULO DE FATORIAL -----");
         rep = 1
            do {
                let  entrada = require("readline-sync")
                let a = parseFloat(entrada.question("Insira o Valor: "))


            function fatorial(n) {
                if (n < 0) {
                    throw new Error("Numero não deve ser negativo");
                }

                let resultado = 1;
                for (let i = 1; i <= n; i++) {
                    resultado *= i;
                }

                return resultado;
            }

            console.log()
            console.log("--------------")
            console.log(`O fatorial de ${a} é ${fatorial(a)}`);
            console.log("--------------")
            console.log()
            rep = parseInt(entrada.question("Se desejar realizar uma nova operacao digite [1] para retornar ao menu digite qualquer digito diferente de [1]: "));

            } while (rep == 1);
                       
            break;
        
        case 6: // CALCULO DE FUNÇÃO DE SEGUNDO GRAU (OK)//
        console.clear()
            console.log("----- Você está na operação de FUNCAO DO SEGUNDO GRAU -----");
             rep = 1

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

        do {
            let  entrada = require("readline-sync")
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

                console.log()
                console.log("--------------")
                console.log();
                console.log("O valor de delta: ", delta);
                console.log();
                console.log("O valor de x1: ", x1);
                console.log();
                console.log("O valor de x2: ", x2);
                console.log("--------------")
            }   
            console.log()
            rep = parseInt(entrada.question("Se desejar realizar uma nova operacao digite [1] para retornar ao menu digite qualquer digito diferente de [1]: "));

        } while (rep == 1);
           
            break;
        
        case 7: // CALCULO DE BASE DE CONVERSÃO NUMERICA OCTAL PARA BINÁRIO (PENDENTE)//
        console.clear()
        console.log("----- Você está na operação de CONVERSAO NUMERICA OCTAL PARA BINARIO -----");
         rep = 1
            do {


                console.log("--------------")
                console.log("");
                console.log("--------------")
                console.log()
                rep = parseInt(entrada.question("Se desejar realizar uma nova operacao digite [1] para retornar ao menu digite qualquer digito diferente de [1]: "));

        } while (rep == 1);
                       
            break;
        
        case 8: // CALCULO DE BASE DE CONVERSÃO NUMERICA BINÁRIO PARA OCTAL (PENDENTE)//
        console.clear()
        console.log("----- Você está na operação de CONVERSAO NUMERICA BINARIO PARA OCTAL -----");
         rep = 1
            do {


                console.log("--------------")
                console.log("");
                console.log("--------------")
                console.log()
                rep = parseInt(entrada.question("Se desejar realizar uma nova operacao digite [1] para retornar ao menu digite qualquer digito diferente de [1]: "));

        } while (rep == 1);
                       
            break;
        
        case 9: // CALCULO DE BASE DE CONVERSÃO NUMERICA DECIMAL PARA BINÁRIO  (PENDENTE)//
        console.clear()
        console.log("----- Você está na operação de CONVERSAO NUMERICA DECIMAL PARA BINARIO -----");
         rep = 1
            do {


                console.log("--------------")
                console.log("");
                console.log("--------------")
                console.log()
                rep = parseInt(entrada.question("Se desejar realizar uma nova operacao digite [1] para retornar ao menu digite qualquer digito diferente de [1]: "));

        } while (rep == 1);
                       
            break;
        
        case 10: // CALCULO DE BASE DE CONVERSÃO NUMERICA BINÁRIO PARA DECIMAL (REVISAR) //
        console.clear()
        console.log("----- Você está na operação de CONVERSAO NUMERICA BINARIO PARA DECIMAL -----");
         rep = 1                        
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

            let continuar: string;
            do {
                let entrada = require("readline-sync")
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

                console.log("--------------")
                console.log(`O número decimal correspondente é: ${decimal}`);
                console.log("--------------")
                console.log()

                rep = parseInt(entrada.question("Se desejar realizar uma nova operacao digite [1] para retornar ao menu digite qualquer digito diferente de [1]: "));
               
            } while (rep == 1);
                       
            break;
        
        case 11: // CALCULO DE BASE DE CONVERSÃO NUMERICA HEXADECIMAL PARA BINÁRIO (OK)//
        console.clear()
        console.log("----- Você está na operação de CONVERSAO NUMERICA HEXADECIMAL PARA BINARIO -----");
         rep = 1
            do {
                let entrada = require("readline-sync")
                let numhexa =entrada.question('Digite o Numero Hexadecimal: ');
                let numbin= '';
                let valido =0
                
                //FUNÇÃO DE CALCULO DE NUMEROS
                function numeroparabin (decimal) 
                    {
                    var binario = '';
                    while (decimal > 0) {
                 
                        binario = (decimal % 2) + binario;
                        decimal = Math.floor(decimal / 2);
                    }
                    while (binario.length < 4) {
                        binario = '0' + binario;
                    }
                    return binario
                    }
                
                 //CONVERSAO DO VALOR ENTRE STRING E NUMERO
                 for (let i = 0; i < numhexa.length; i++) 
                    {
                    switch (numhexa[i]) {
                        
                        case 'A':
                        case 'a': numbin += '1010';
                         break;
                        case 'B':
                        case 'b': numbin += '1011';
                         break;
                        case 'C':
                        case 'c': numbin += '1100';
                         break;
                        case 'D':
                        case 'd': numbin += '1101';
                         break;
                        case 'E':
                        case 'e': numbin += '1110';
                         break;
                        case 'F':
                        case 'f': numbin += '1111';
                        break;
                        case '0':numbin += '0000';
                        break
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
                            valido +=1;
                        break
                    }
                }
                        //VALIDAÇÃO SE O NUMERO PODE SER CONVERTIDO
                        switch (valido) {
                            case (0):
                            console.log("--------------")
                            console.log(`O VALOR ${numhexa} EM BINÁRIO SERÁ: ${numbin}`);
                            console.log("--------------")
                            break
                        default:
                            console.log("--------------")
                            console.log("O VALOR NÃO PODE SER CONVERTIDO POR NAO SER HEXADECIMAL! ");
                            console.log("--------------")
                            break
                     }
                    console.log()
                    rep = parseInt(entrada.question("Se desejar realizar uma nova operacao digite [1] para retornar ao menu digite qualquer digito diferente de [1]: "));

            } while (rep == 1);
                break;
        
        case 12: // CALCULO DE BASE DE CONVERSÃO NUMERICA BINÁRIO PARA HEXADECIMAL (REVISAR)//
        console.clear()
        console.log("----- Você está na operação de CONVERSAO NUMERICA BINARIO PARA HEXADECIMAL -----");
         rep = 1
            do {
                let entrada = require("readline-sync")
                vezes = parseInt(readlineSync.question("QUANTOS ALGARISMOS VOCÊ QUER CONVERTER?: "), 10);
            
                while (vezes <= 0 || vezes > 16) {
                    if (vezes <= 0) {
                        console.log("VOCÊ DEVE INSERIR UM NUMERO MAIOR QUE ZERO!");
                    } else if (vezes > 16) {
                        console.log("A QUANTIDADE DE ALGARISMOS NÃO PODE SER MAIOR QUE 16!");
                    }
                    vezes = parseInt(readlineSync.question("QUANTOS ALGARISMOS VOCÊ QUER CONVERTER?: "), 10);
                }
            
                while (contador < vezes) {
                    contador++;
                    let numbin: string = readlineSync.question(`ALGARISMO ${contador}: `);
            
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
            
                console.log("--------------")
                console.log(`O VALOR ${conversaohex} EM BINÁRIO SERÁ: ${resultado}`);
                console.log("--------------")
                console.log()
                rep = parseInt(entrada.question("Se desejar realizar uma nova operacao digite [1] para retornar ao menu digite qualquer digito diferente de [1]: "));

        } while (rep == 1);
                      
            break;
        
        case 13: // CALCULO DE CONCATENAÇÃO DE 2 STRINGS (OK)//
        console.clear()
        console.log("----- Você está na operação de CONCATENACAO DE 2 STRINGS -----");
         rep = 1
            do {
                let entrada = require("readline-sync")
                let num1: string = (entrada.question('Digite a primeira string: '));
                let num2: string = (entrada.question('Digite a segunda string: '));
                
                
                let res: String = num1 + num2;
                
                console.log("--------------")
                console.log(`A concatenação de ${num1} e ${num2} é: ${res}`);
                console.log("--------------")
                console.log()
                rep = parseInt(entrada.question("Se desejar realizar uma nova operacao digite [1] para retornar ao menu digite qualquer digito diferente de [1]: "));
            } while (rep == 1);
            break;

        case 14: // CALCULO DE JUROS SIMPLES (OK)//
        console.clear()
        console.log("----- Você está na operação de JUROS SIMPLES -----");
         rep = 1
            do {
                let entrada = require("readline-sync")
                let valor: number = parseFloat(entrada.question('Digite o capital: '));
                let taxa: number = parseFloat(entrada.question('Digite a taxa de juros: '));
                let tempo: number = parseFloat(entrada.question('Digite o tempo em meses: '));

                let juros: number = valor * (taxa / 100) * tempo;
                let total: number = valor + juros

                console.log("--------------")
                console.log(`O juros é de: R$${juros}, o capital total é: R$${total}`);
                console.log("--------------")
                console.log()
                rep = parseInt(entrada.question("Se desejar realizar uma nova operacao digite [1] para retornar ao menu digite qualquer digito diferente de [1]: "));
            } while (rep == 1);
            break;
        
        case 15: // CALCULO DE JUROS COMPOSTOS (OK)//
        console.clear()
        console.log("----- Você está na operação de JUROS COMPOSTOS -----");
         rep = 1
            do {
                let entrada = require("readline-sync")
                let valor: number = parseFloat(entrada.question('Digite o capital: '));
                let taxa: number = parseFloat(entrada.question('Digite a taxa de juros: '));
                let tempo: number = parseFloat(entrada.question('Digite o tempo em meses: '));

                let total: number = valor * ((1 + taxa / 100) ** tempo);
                let juros: number = total - valor

                console.log("--------------")
                console.log(`O juros é de: R$${juros}, o capital total é: R$${total}`);
                console.log("--------------")

                rep = parseInt(entrada.question("Se desejar realizar uma nova operacao digite [1] para retornar ao menu digite qualquer digito diferente de [1]"));
            } while (rep == 1);
            break;
        
        case 16: // ENCERRAMENTO DO PROGRAMA (OK)//
            console.log("--------------")
            console.log("-- Encerrando Nexus I... --");
            console.log("--------------")
            break;
        
        default:
            console.log("Opção inválida, por favor digite novamente.");
            break;
    }
} while (opcao !== 16);