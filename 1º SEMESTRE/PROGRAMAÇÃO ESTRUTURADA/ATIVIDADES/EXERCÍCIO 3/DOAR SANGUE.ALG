Algoritmo "Doar Sangue"
// Descrição   : Informa se o usuário pode ou não doar sangue
// Autor(a)    : Gabriel Henrique
// Data atual  : 23/02/2024
Var

   nome, tatuagem, alcool: caractere
   idade: inteiro
   peso: real
   
Inicio

   escreval("                  FORMULÁRIO DE DOAÇÃO DE SANGUE")
   escreval("")
   escreval("         /----------------------------------------------\")
   escreval("")
   //Informe o nome do usuário
   escreva("               Informe o seu nome: ")
   leia(nome)
   //Informe a idade do usuário
   escreva("               ",nome, ", informe a sua idade: ")
   leia(idade)
   //Informa se o usuário tem a idade necessária
   se (idade < 19) ou (idade > 69) entao
      escreval("")
      escreval ("                     Você não pode doar sangue!")
      Fimalgoritmo
   senao
   //Informe o peso do usuário
      escreva ("               Informe o seu peso: ")
      leia(peso)
   fimse
   //Informa se o usuário tem o peso necessário
   se (peso < 50) entao
      escreval("")
      escreval ("                     Você não pode doar sangue!")
      Fimalgoritmo
   senao
   //Informe se o usuário fez uma tatuagem recente
      escreva ("               Fez alguma tatuagem nesse último ano? ")
      leia(tatuagem)
   fimse
   //Informe ao usuário que fez uma tatuagem recente que ele não pode doar sangue
   se (tatuagem = "Sim") ou (tatuagem = "sim") ou (tatuagem = "s") ou (tatuagem = "S") entao
      escreval("")
      escreval ("                     Você não pode doar sangue!")
      Fimalgoritmo
   senao
   //Informa se o usuário ingeriu álcool nas últimas 12 horas
      escreva ("               Ingeriu álcool nas últimas 12 horas? ")
      leia(alcool)
   fimse
   //Informa ao usuário que bebeu nas última 12 horas que não pode doar sangue
   se (alcool = "Sim") ou (alcool = "sim") ou (alcool = "s") ou (alcool = "S") entao
      escreval("")
      escreval ("                     Você não pode doar sangue!")
   senao
      escreval ("")
      escreval ("                       Você pode doar sangue!")
   fimse
   escreval("")
   escreval("         \----------------------------------------------/")
   
Fimalgoritmo