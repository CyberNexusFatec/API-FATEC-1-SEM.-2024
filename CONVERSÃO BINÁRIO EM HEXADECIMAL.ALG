Algoritmo "ConversaoBinarioParaHexadecimal"
// Descrição: Converte números binários em hexadecimais
Var
   numbin, numhex, conversaohex, resultado:caractere
   contador, vezes : inteiro

Inicio
   Escreval ("==============================================")
   Escreval ("CALCULO DE CONVERSÃO DE BINÁRIO EM HEXADECIMAL")
   Escreval ("==============================================")
   Escreval ("QUANTOS ALGARISMOS VOCÊ QUER CONVERTER?: ")
   leia (vezes)

   se vezes <= 0 então
      repita

         Escreval ("QUANTOS ALGARISMOS VOCÊ QUER CONVERTER?:")
         leia (vezes)
   se vezes <= 0 então
            Escreval ("VOCÊ DEVE INSERIR UM NUMERO MAIOR QUE ZERO!")
   //senao se vezes > 16 então
            //Escreval ("A QUANTIDADE DE ALGARISMOS NÃO PODE SER MAIOR QUE 16!")
        fimse
      até (vezes > 0) e (vezes < 16)
   fimse

   se vezes >1 entao
    se vezes > 16 entao
    fimse
   fimse


      repita
         contador <- contador + 1
         Escreval ("ALGARISMO ", contador, ":")
         leia (numbin)
         


         // Conversão de binário para hexadecimal
         escolha numbin
         caso "0000"
            conversaohex := "0"
         caso "0001"
            conversaohex := "1"
         caso "0010"
            conversaohex := "2"
         caso "0011"
            conversaohex := "3"
         caso "0100"
            conversaohex := "4"
         caso "0101"
            conversaohex := "5"
         caso "0110"
            conversaohex := "6"
         caso "0111"
            conversaohex := "7"
         caso "1000"
            conversaohex := "8"
         caso "1001"
            conversaohex := "9"
         caso "1010"
            conversaohex := "A"
         caso "1011"
            conversaohex := "B"
         caso "1100"
            conversaohex := "C"
         caso "1101"
            conversaohex := "D"
         caso "1110"
            conversaohex := "E"
         caso "1111"
            conversaohex := "F"
         outrocaso
            escreval ("O ALGARISMO NÃO É BINÁRIO")
         Fimescolha
         resultado := resultado + conversaohex  // Acumula os resultados
      até contador = vezes

      Escreval ("O valor em Hexadecimal será ", resultado )




FimAlgoritmo


