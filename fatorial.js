var entrada = require("readline-sync");
console.log("   FATORIAL   ");
console.log("--------------");
var a = (entrada.question("Insira o Valor: "));
function fatorial(n) {
    if (n < 0) {
        throw new Error("Numero não deve ser negativo");
    }
    var resultado = 1;
    for (var i = 1; i <= n; i++) {
        resultado *= i;
    }
    return resultado;
}
console.log("--------------");
console.log("O fatorial de ".concat(a, " \u00E9 ").concat(fatorial(a)));
