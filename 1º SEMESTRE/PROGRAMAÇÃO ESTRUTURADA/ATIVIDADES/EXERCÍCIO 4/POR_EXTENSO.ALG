Algoritmo "Por_Extenso"
// Descri��o   : Escreve o n�mero digitado por extenso
// Autor(a)    : Gabriel Henrique
// Data atual  : 01/03/2024
Var

   numero: inteiro

Inicio

   escreval("                 �---------------------------�")
   escreval("                      N�MEROS POR EXTENSO")
   escreval("                 �---------------------------�")
   escreval

   escreva("                    - Insira um n�mero: ")
   leia(numero)
   escreval
   
   escolha (numero)
      caso 1
         escreval("                  O n�mero", numero, " por extenso � UM!")
      caso 2
         escreval("                 O n�mero", numero, " por extenso � DOIS!")
      caso 3
         escreval("                 O n�mero", numero, " por extenso � TR�S!")
      caso 4
         escreval("                O n�mero", numero, " por extenso � QUATRO!")
      caso 5
         escreval("                O n�mero", numero, " por extenso � CINCO!")
      caso 6
         escreval("                 O n�mero", numero, " por extenso � SEIS!")
      caso 7
         escreval("                 O n�mero", numero, " por extenso � SETE!")
      caso 8
         escreval("                 O n�mero", numero, " por extenso � OITO!")
      caso 9
         escreval("                 O n�mero", numero, " por extenso � NOVE!")
      caso 10
         escreval("                 O n�mero", numero, " por extenso � DEZ!")
      outrocaso
         escreval("                        N�mero inv�lido!")
   fimescolha
   
   escreval
   escreval("                 �---------------------------�")
   
Fimalgoritmo