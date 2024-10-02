Algoritmo "Numero_Maximo"
// Descrição   : Imprime determinada quantidade de números até exibir uma mensagem
// Autor(a)    : Gabriel Henrique
// Data atual  : 15/03/2024
Var

   cont, n: inteiro

Inicio

   escreva("   - Digite quantos números quer imprimir -> ")
   leia(n)
   escreval

   para cont de 1 ate n faca

      se (cont > 30) entao

         escreval
         escreval
         escreval("                  * NÚMERO MÁXIMO ATINGIDO *")
         interrompa

      fimse

      se (cont > 1) e (cont <= 30) entao

         escreva (" |")

      fimse

      escreva(cont)

   fimpara

Fimalgoritmo