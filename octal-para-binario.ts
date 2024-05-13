const entradaOctal = require('readline-sync')

let octal: string = entradaOctal.question('\nDigite o valor em octal: ')

let i: number = 0 
let j: number = 1
let cont: number = 1


let tamOctal: number = octal.length

let octalInvertido: string[]
let decimal: number = 0
let res: number

//binario para decimal


if (parseFloat(octal) <= 7){
    decimal = parseFloat(octal)
}
else{
    while(tamOctal > i){

        octalInvertido = octal.split('').reverse()

        res = parseFloat(octalInvertido[i]) * j

        decimal += res

        i += 1
        j *= 8  


    }
}


//decimal para binario


let valorDec: number = decimal
let resto: number
let binario: string = ''

while( valorDec > 1) {

    resto = Math.trunc( valorDec % 2)
    console.log("resto: ",resto)
    valorDec = valorDec / 2
    console.log("valDec: ",valorDec)
    
    if(resto == 1){
        binario = '1' + binario
    }
    else{
        binario = '0' + binario
    }

}



console.log("\nO valor Binario: ", binario , " em decimal será de: ", decimal, " em octal será de: " , octal , " !!\n")




