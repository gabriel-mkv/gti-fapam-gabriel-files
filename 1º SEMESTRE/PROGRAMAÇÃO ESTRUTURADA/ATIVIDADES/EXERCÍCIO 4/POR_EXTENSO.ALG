Algoritmo "Por_Extenso"
// Descrição   : Escreve o número digitado por extenso
// Autor(a)    : Gabriel Henrique
// Data atual  : 01/03/2024
Var

   numero: inteiro

Inicio

   escreval("                 «---------------------------»")
   escreval("                      NÚMEROS POR EXTENSO")
   escreval("                 «---------------------------»")
   escreval

   escreva("                    - Insira um número: ")
   leia(numero)
   escreval
   
   escolha (numero)
      caso 1
         escreval("                  O número", numero, " por extenso é UM!")
      caso 2
         escreval("                 O número", numero, " por extenso é DOIS!")
      caso 3
         escreval("                 O número", numero, " por extenso é TRÊS!")
      caso 4
         escreval("                O número", numero, " por extenso é QUATRO!")
      caso 5
         escreval("                O número", numero, " por extenso é CINCO!")
      caso 6
         escreval("                 O número", numero, " por extenso é SEIS!")
      caso 7
         escreval("                 O número", numero, " por extenso é SETE!")
      caso 8
         escreval("                 O número", numero, " por extenso é OITO!")
      caso 9
         escreval("                 O número", numero, " por extenso é NOVE!")
      caso 10
         escreval("                 O número", numero, " por extenso é DEZ!")
      outrocaso
         escreval("                        Número inválido!")
   fimescolha
   
   escreval
   escreval("                 «---------------------------»")
   
Fimalgoritmo