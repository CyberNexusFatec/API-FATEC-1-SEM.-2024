let entrada = require("readline-sync")
console.log("   FATORIAL   ")
console.log("--------------")
let a = (entrada.question("Insira o Valor: "))


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

console.log("--------------")
console.log(`O fatorial de ${a} é ${fatorial(a)}`);

