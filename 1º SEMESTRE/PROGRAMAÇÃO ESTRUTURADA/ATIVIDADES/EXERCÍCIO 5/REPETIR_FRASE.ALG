Algoritmo "Repetir_frase"
// Descri��o   : Repete uma frase determinadas vezes
// Autor(a)    : Gabriel Henrique
// Data atual  : 06/03/2024
Var

   cont, qtd: inteiro

Inicio

   cont <- 0
   escreval
   escreva("              * O quanto voc� ama programa��o? -> ")
   leia(qtd)
   escreval
   
   se (qtd < 15) entao
      escreval("                  Eu sei que voc� t� mentindo")
      fimalgoritmo
   fimse
   
   enquanto (cont < qtd) faca

      se (cont > 0) entao
         escreval("                           � ----- �")
      fimse
      escreval("              PROGRAMA��O � A NOSSA MELHOR MAT�RIA!")
      cont <- (cont + 1)

   fimenquanto
   
Fimalgoritmo