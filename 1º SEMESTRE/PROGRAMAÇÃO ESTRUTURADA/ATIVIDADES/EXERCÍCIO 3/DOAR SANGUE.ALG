Algoritmo "Doar Sangue"
// Descri��o   : Informa se o usu�rio pode ou n�o doar sangue
// Autor(a)    : Gabriel Henrique
// Data atual  : 23/02/2024
Var

   nome, tatuagem, alcool: caractere
   idade: inteiro
   peso: real
   
Inicio

   escreval("                  FORMUL�RIO DE DOA��O DE SANGUE")
   escreval("")
   escreval("         /----------------------------------------------\")
   escreval("")
   //Informe o nome do usu�rio
   escreva("               Informe o seu nome: ")
   leia(nome)
   //Informe a idade do usu�rio
   escreva("               ",nome, ", informe a sua idade: ")
   leia(idade)
   //Informa se o usu�rio tem a idade necess�ria
   se (idade < 19) ou (idade > 69) entao
      escreval("")
      escreval ("                     Voc� n�o pode doar sangue!")
      Fimalgoritmo
   senao
   //Informe o peso do usu�rio
      escreva ("               Informe o seu peso: ")
      leia(peso)
   fimse
   //Informa se o usu�rio tem o peso necess�rio
   se (peso < 50) entao
      escreval("")
      escreval ("                     Voc� n�o pode doar sangue!")
      Fimalgoritmo
   senao
   //Informe se o usu�rio fez uma tatuagem recente
      escreva ("               Fez alguma tatuagem nesse �ltimo ano? ")
      leia(tatuagem)
   fimse
   //Informe ao usu�rio que fez uma tatuagem recente que ele n�o pode doar sangue
   se (tatuagem = "Sim") ou (tatuagem = "sim") ou (tatuagem = "s") ou (tatuagem = "S") entao
      escreval("")
      escreval ("                     Voc� n�o pode doar sangue!")
      Fimalgoritmo
   senao
   //Informa se o usu�rio ingeriu �lcool nas �ltimas 12 horas
      escreva ("               Ingeriu �lcool nas �ltimas 12 horas? ")
      leia(alcool)
   fimse
   //Informa ao usu�rio que bebeu nas �ltima 12 horas que n�o pode doar sangue
   se (alcool = "Sim") ou (alcool = "sim") ou (alcool = "s") ou (alcool = "S") entao
      escreval("")
      escreval ("                     Voc� n�o pode doar sangue!")
   senao
      escreval ("")
      escreval ("                       Voc� pode doar sangue!")
   fimse
   escreval("")
   escreval("         \----------------------------------------------/")
   
Fimalgoritmo