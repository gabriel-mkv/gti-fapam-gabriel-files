Algoritmo "Multiplos_cinco"
// Descri��o   : Imprime os pr�ximos m�ltiplos de 5 de um n�mero informado
// Autor(a)    : Gabriel Henrique
// Data atual  : 13/03/2024
Var

   cont, n: inteiro

Inicio

   escreval("                �--|   M�LTIPLOS DE CINCO   |--�")
   escreval
   escreva("     * Informe um n�mero -> ")
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