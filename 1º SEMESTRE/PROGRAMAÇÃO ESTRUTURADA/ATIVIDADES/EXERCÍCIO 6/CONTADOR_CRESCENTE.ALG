Algoritmo "Contador_crescente"
// Descri��o   : Conta n�meros pares e �mpares de forma crescente
// Autor(a)    : Gabriel Henrique
// Data atual  : 13/03/2024
Var

   cont, n: inteiro
   opc: caractere

Inicio

   escreval("                 /\  CONTADOR CRESCENTE  /\")
   escreval
   escreva("   * Digite um n�mero -> ")
   leia(n)
   escreva("   * Par ou �mpar (P/I)? -> ")
   leia(opc)
   opc <- maiusc(opc)
   escreval

   se (opc <> "P") e (opc <> "I") e (opc <> "PAR") e (opc <> "IMPAR") entao
      escreval("                     DIGITE PAR OU IMPAR!")
      fimalgoritmo
   fimse
   
   para cont de 0 ate n faca

      se (opc = "P") ou (opc = "PAR") entao

         se (cont % 2 = 0) entao

            se (cont > 0) e (cont <= n) entao
               escreva(" -|-")
            fimse
            
            escreva(cont)
            
            se (cont > 1000) entao
               escreval
               escreval
               escreval("                     VALOR M�XIMO ATINGIDO!")
               interrompa
            fimse
            
         fimse
         
      senao se (opc = "I") ou (opc = "IMPAR") entao

         se (cont % 2 <> 0) entao

            se (cont > 1) e (cont <= n) entao
               escreva(" -|-")
            fimse
            
         escreva(cont)
         
            se (cont > 1000) entao
               escreval
               escreval
               escreval("                     VALOR M�XIMO ATINGIDO!")
               interrompa
            fimse
            
         fimse
         
      fimse

   fimpara

Fimalgoritmo