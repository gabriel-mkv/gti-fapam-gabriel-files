Algoritmo "Repetir_frase"
// Descrição   : Repete uma frase determinadas vezes
// Autor(a)    : Gabriel Henrique
// Data atual  : 06/03/2024
Var

   cont, qtd: inteiro

Inicio

   cont <- 0
   escreval
   escreva("              * O quanto você ama programação? -> ")
   leia(qtd)
   escreval
   
   se (qtd < 15) entao
      escreval("                  Eu sei que você tá mentindo")
      fimalgoritmo
   fimse
   
   enquanto (cont < qtd) faca

      se (cont > 0) entao
         escreval("                           « ----- »")
      fimse
      escreval("              PROGRAMAÇÃO É A NOSSA MELHOR MATÉRIA!")
      cont <- (cont + 1)

   fimenquanto
   
Fimalgoritmo