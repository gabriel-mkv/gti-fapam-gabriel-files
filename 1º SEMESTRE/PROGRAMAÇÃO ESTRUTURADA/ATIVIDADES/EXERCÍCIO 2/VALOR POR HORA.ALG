Algoritmo "Valor por hora"
// Descri��o   : Calcula quanto um indiv�duo recebe por hora
// Autor(a)    : Gabriel Henrique
// Data atual  : 16/02/2024
Var

   salario, valor_hora: real
   horas, horas_mensal: inteiro

Inicio

   escreva("Insira o valor do sal�rio que recebe: ")
   leia(salario)
   escreva("Insira o n�mero de horas di�rias: ")
   leia(horas)
   horas_mensal <- horas * 30
   valor_hora <- salario / horas_mensal
   escreval ("O valor recebido por hora � R$", valor_hora, ".")

Fimalgoritmo