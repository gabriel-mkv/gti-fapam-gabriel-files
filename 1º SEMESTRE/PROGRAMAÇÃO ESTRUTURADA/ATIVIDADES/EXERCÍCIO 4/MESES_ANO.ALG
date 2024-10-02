Algoritmo "Meses_Ano"
// Descrição   : Escreve o nome do mês correspondente ao número
// Autor(a)    : Gabriel Henrique
// Data atual  : 01/03/2024
Var

   mes: inteiro

Inicio

   escreval("              =====================================")
   escreval("              |           MESES DO ANO            |")
   escreval("              =====================================")
   escreval
   escreva ("              * Digite o número do mês: ")
   leia(mes)
   escreval
   
   escolha (mes)
      caso 1
         escreval("             O número", mes, " se refere ao mês de Janeiro!")
      caso 2
         escreval("            O número", mes, " se refere ao mês de Fevereiro!")
      caso 3
         escreval("              O número", mes, " se refere ao mês de Março!")
      caso 4
         escreval("              O número", mes, " se refere ao mês de Abril!")
      caso 5
         escreval("               O número", mes, " se refere ao mês de Maio!")
      caso 6
         escreval("              O número", mes, " se refere ao mês de Junho!")
      caso 7
         escreval("              O número", mes, " se refere ao mês de Julho!")
      caso 8
         escreval("              O número", mes, " se refere ao mês de Agosto!")
      caso 9
         escreval("             O número", mes, " se refere ao mês de Setembro!")
      caso 10
         escreval("             O número", mes, " se refere ao mês de Outubro!")
      caso 11
         escreval("            O número", mes, " se refere ao mês de Novembro!")
      caso 12
         escreval("            O número", mes, " se refere ao mês de Dezembro!")
      outrocaso
         escreval("          O número digitado não corresponde a nenhum mês!")
   fimescolha

   escreval
   escreval("              |-----------------------------------|")

Fimalgoritmo