Algoritmo "Valor por hora"
// Descrição   : Calcula quanto um indivíduo recebe por hora
// Autor(a)    : Gabriel Henrique
// Data atual  : 16/02/2024
Var

   salario, valor_hora: real
   horas, horas_mensal: inteiro

Inicio

   escreva("Insira o valor do salário que recebe: ")
   leia(salario)
   escreva("Insira o número de horas diárias: ")
   leia(horas)
   horas_mensal <- horas * 30
   valor_hora <- salario / horas_mensal
   escreval ("O valor recebido por hora é R$", valor_hora, ".")

Fimalgoritmo