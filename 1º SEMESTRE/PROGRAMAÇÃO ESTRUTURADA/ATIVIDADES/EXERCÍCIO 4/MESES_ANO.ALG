Algoritmo "Meses_Ano"
// Descri��o   : Escreve o nome do m�s correspondente ao n�mero
// Autor(a)    : Gabriel Henrique
// Data atual  : 01/03/2024
Var

   mes: inteiro

Inicio

   escreval("              =====================================")
   escreval("              |           MESES DO ANO            |")
   escreval("              =====================================")
   escreval
   escreva ("              * Digite o n�mero do m�s: ")
   leia(mes)
   escreval
   
   escolha (mes)
      caso 1
         escreval("             O n�mero", mes, " se refere ao m�s de Janeiro!")
      caso 2
         escreval("            O n�mero", mes, " se refere ao m�s de Fevereiro!")
      caso 3
         escreval("              O n�mero", mes, " se refere ao m�s de Mar�o!")
      caso 4
         escreval("              O n�mero", mes, " se refere ao m�s de Abril!")
      caso 5
         escreval("               O n�mero", mes, " se refere ao m�s de Maio!")
      caso 6
         escreval("              O n�mero", mes, " se refere ao m�s de Junho!")
      caso 7
         escreval("              O n�mero", mes, " se refere ao m�s de Julho!")
      caso 8
         escreval("              O n�mero", mes, " se refere ao m�s de Agosto!")
      caso 9
         escreval("             O n�mero", mes, " se refere ao m�s de Setembro!")
      caso 10
         escreval("             O n�mero", mes, " se refere ao m�s de Outubro!")
      caso 11
         escreval("            O n�mero", mes, " se refere ao m�s de Novembro!")
      caso 12
         escreval("            O n�mero", mes, " se refere ao m�s de Dezembro!")
      outrocaso
         escreval("          O n�mero digitado n�o corresponde a nenhum m�s!")
   fimescolha

   escreval
   escreval("              |-----------------------------------|")

Fimalgoritmo