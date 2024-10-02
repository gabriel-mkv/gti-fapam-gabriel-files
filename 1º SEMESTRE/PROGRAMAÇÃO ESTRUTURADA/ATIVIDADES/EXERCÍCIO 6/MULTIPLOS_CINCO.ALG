Algoritmo "Multiplos_cinco"
// Descrição   : Imprime os próximos múltiplos de 5 de um número informado
// Autor(a)    : Gabriel Henrique
// Data atual  : 13/03/2024
Var

   cont, n: inteiro

Inicio

   escreval("                «--|   MÚLTIPLOS DE CINCO   |--»")
   escreval
   escreva("     * Informe um número -> ")
   leia(n)
   escreval
   
   cont <- n + 1
   
   enquanto (cont > n) faca

      se (cont % 5 = 0) entao
         escreval ("                          |-",cont, " -|")
      fimse
      
      cont <- cont + 1
      
      se (cont > (n + 50)) entao
         interrompa
      fimse
      
   fimenquanto


Fimalgoritmo