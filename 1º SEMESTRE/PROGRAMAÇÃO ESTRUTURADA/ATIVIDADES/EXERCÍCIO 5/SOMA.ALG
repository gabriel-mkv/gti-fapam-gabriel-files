Algoritmo "Soma"
// Descrição   : Soma números informados pelo usuário
// Autor(a)    : Gabriel Henrique
// Data atual  : 06/03/2024
Var

   nmr1, nmr2, soma: real
   opcao: caractere

Inicio

   escreval("                          ============")
   escreval("                              SOMA ")
   escreval("                          ============")
   escreval
   escreval("        |==============================================|")
   escreva("           * Insira um número -> ")
   leia(nmr1)
   escreval("        |                                              |")
   escreva("           * Insira outro número -> ")
   leia(nmr2)
   escreval("        |                                              |")
   escreva("           * Deseja prosseguir com a soma (S/N)? -> ")
   leia(opcao)
   escreval("        |                                              |")
   
   opcao <- maiusc(opcao)
   soma <- (nmr1 + nmr2)
   
   se (opcao <> "S") e (opcao <> "N") entao
      escreval("                Digite 'S' ou 'N' para prosseguir!")
      escreval("        |==============================================|")
      fimalgoritmo
   fimse
   
      enquanto (opcao = "S") faca
         escreva("           * Insira outro número -> ")
         leia(nmr2)
         escreval("        |                                              |")
         escreva("           * Deseja prosseguir com a soma (S/N)? -> ")
         leia(opcao)
         escreval("        |                                              |")
         opcao <- maiusc(opcao)
         
         se (opcao <> "S") e (opcao <> "N") entao
            escreval("                Digite 'S' ou 'N' para prosseguir!")
            escreval("        |==============================================|")
            fimalgoritmo
         fimse

         soma <- (soma + nmr2)
      fimenquanto
      
   escreval("               - RESULTADO: ", soma)
   escreval("        |==============================================|")
   
Fimalgoritmo