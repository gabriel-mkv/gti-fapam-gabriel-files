Algoritmo "Ficha_Cadastral"
// Descri��o   : Cria uma ficha conforme os dados inseridos
// Autor(a)    : Gabriel Henrique
// Data atual  : 01/03/2024
Var

   nome, sexo, cidade: caractere
   ano, idade: inteiro

Inicio

   escreval("                  -------------------------")
   escreval("                      FA�A SEU CADASTRO")
   escreval("                  -------------------------")
   escreval
   escreva("          * Digite o seu nome: ")
   leia(nome)
   escreva("          * Informe qual o seu sexo (M/F): ")
   leia(sexo)
   escreva("          * Informe a cidade onde voc� mora: ")
   leia(cidade)
   escreva("          * Informe o ano em que voc� nasceu: ")
   leia(ano)
   escreval
   
   idade <- (2024 - ano)
   nome <- maiusc(nome)
   cidade <- maiusc(cidade)
   sexo <- maiusc(sexo)
   
   escreval("        ================================================")
   escreval("        |               FICHA CADASTRAL                |")
   escreval("        ================================================")
   escreval("        |                                              |")

   se (sexo = "F") entao
      escreval("            Sr�: ", nome)
   senao
      escreval("            Sr: ", nome)
   fimse

   escreval("        |                                              |")
   escreval("            Idade: ", idade, " anos")
   escreval("        |                                              |")
   escreval("            Cidade: ", cidade)
   escreval("        |                                              |")
   escreval("        ================================================")
   
Fimalgoritmo