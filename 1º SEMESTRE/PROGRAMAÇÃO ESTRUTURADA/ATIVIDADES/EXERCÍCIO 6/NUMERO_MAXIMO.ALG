Algoritmo "Numero_Maximo"
// Descri��o   : Imprime determinada quantidade de n�meros at� exibir uma mensagem
// Autor(a)    : Gabriel Henrique
// Data atual  : 15/03/2024
Var

   cont, n: inteiro

Inicio

   escreva("   - Digite quantos n�meros quer imprimir -> ")
   leia(n)
   escreval

   para cont de 1 ate n faca

      se (cont > 30) entao

         escreval
         escreval
         escreval("                  * N�MERO M�XIMO ATINGIDO *")
         interrompa

      fimse

      se (cont > 1) e (cont <= 30) entao

         escreva (" |")

      fimse

      escreva(cont)

   fimpara

Fimalgoritmo