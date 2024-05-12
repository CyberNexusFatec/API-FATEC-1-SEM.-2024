const entradaDados = require('readline-sync');

let binario: string = entradaDados.question("\nDigite o numero em binario: ");

let i: number = 0 
let j: number = 1
let cont: number = 1

let tamBin: number = binario.length

let binarioInvertido: string[]
let decimal: number = 0


//binario para decimal

do {
    binarioInvertido =  binario.split('').reverse()

    if(binarioInvertido[i] > '1'){
        console.log('\nValor binario invalido')
        break
    }

    else if(binarioInvertido[i] == '1'){
        decimal += cont
        
    }

    cont = cont * 2
    i += 1

}
while (i <= tamBin)

    


//decimal para octal

let valorDec: number = decimal
let valorOct: number = 0
let res: number

if(valorDec <= 7){
    valorOct = valorDec
}

else{

    while(valorDec >= 8){

        res = Math.trunc(valorDec % 8)
        console.log("res: ",res)
        valorDec = valorDec / 8
        console.log("decimal: ",valorDec)
        valorOct = valorOct + res * j
        console.log("octal: ",valorOct)
        j = j * 10

    }
    valorDec = Math.trunc(valorDec % 8)
    console.log("decimal1: ",valorDec)
    valorOct = valorOct + valorDec * j
    console.log("octal1: ",valorOct)
}


console.log("\nO valor Binario: ", binario , " em decimal será de: ", decimal, " em octal será de: " , valorOct , " !!\n")














