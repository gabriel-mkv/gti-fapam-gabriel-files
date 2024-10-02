Algoritmo "Bem Vindo"
// Descrição   : Imprime bem-vindo dependendo do sexo informado
// Autor(a)    : Gabriel Henrique
// Data atual  : 23/02/2024
Var

  nome, sexo: caractere
   
Inicio

  escreval("           |------------------------------------------|")
  escreval("")
  escreva("                  * Digite o seu nome: ")
  leia(nome)
  escreva("                  * Informe o seu sexo: ")
  leia(sexo)
  escreval("")
  se (sexo = "Masculino") ou (sexo = "M") ou (sexo = "masculino") ou (sexo = "m")  entao
     escreval("                          Bem-Vindo ", nome, "!")
  senao
     escreval("                          Bem-Vinda ", nome, "!")
  fimse
  escreval("")
  escreval("           |------------------------------------------|")
  
Fimalgoritmo
