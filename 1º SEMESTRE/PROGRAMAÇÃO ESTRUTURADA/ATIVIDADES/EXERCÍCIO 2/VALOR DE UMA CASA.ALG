Algoritmo "Pre�o de uma casa"
// Descri��o   : Calcula o pre�o para construir uma casa em um terreno retangular
// Autor(a)    : Gabriel Henrique
// Data atual  : 16/02/2024
Var

   base, altura, area, valor: real

Inicio

   escreva("Digite o tamanho do comprimento do terreno: ")
   leia(base)
   escreva("Digite o tamanho da largura do terreno: ")
   leia(altura)
   area <- base * altura
   valor <- 850 * area
   escreval("O valor necess�rio para construir a casa � R$", valor, ".")

Fimalgoritmo