Algoritmo "Calcular IMC"
// Descrição   : Calcula o IMC de uma pessoa
// Autor(a)    : Gabriel Henrique
// Data atual  : 16/02/2024
Var

   peso, altura, imc: real

Inicio

   escreva("Insira o peso da pessoa: ")
   leia(peso)
   escreva("Insira a altura da pessoa: ")
   leia(altura)
   imc <- peso / altura ^ 2
   escreval("O IMC dessa pessoa é", imc, ".")

Fimalgoritmo