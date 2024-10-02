Algoritmo "Lanchonete"
// Descrição   : Calcula o preço pago por um produto
// Autor(a)    : Gabriel Henrique
// Data atual  : 06/03/2024
Var

   codProduto: inteiro
   valor: real
   opcao, produtos: caractere
   
Inicio

   escreval("                       LOJA DE SALGADINHOS")
   escreval
   escreval("        ==================================================")
   escreval("        |  CÓDIGO  |     DESCRIÇÃO    |  PREÇO UNITÁRIO  |")
   escreval("        |     1    |      Coxinha     |       4,50       |")
   escreval("        |     2    |      Pastel      |       5,75       |")
   escreval("        |     3    |   Pão de queijo  |       3,40       |")
   escreval("        |     4    |    Enroladinho   |       2,00       |")
   escreval("        ==================================================")
   escreval
   
   escreva("         * Digite o código do que deseja -> ")
   leia(codProduto)
   escreval

   se (codProduto > 4) ou (codProduto < 1) entao
         escreval("               SAlGADO ESCOLHIDO NÃO DISPONÍVEL!")
         fimalgoritmo
   fimse
   
   escreva("         * Deseja algo mais (S/N)? -> ")
   leia(opcao)
   opcao <- maiusc(opcao)

   escolha (codProduto)
         caso 1
            valor <- 4.50
            produtos <- "1- COXINHA: R$ 4,50 "
         caso 2
            valor <- 5.75
            produtos <- "1- PASTEL: R$ 5,75 "
         caso 3
            valor <- 3.40
            produtos <- "1- PÃO DE QUEIJO: R$ 3,40 "
         caso 4
            valor <- 2.00
            produtos <- "1- ENROLADINHO: R$ 2,00 "
   fimescolha
   
   se (opcao <> "S") e (opcao <> "N") entao
      escreval
      escreval("                        OPÇÃO INCORRETA!")
      fimalgoritmo
   fimse
   
   enquanto (opcao = "S") faca

      escreval
      escreval(" «------------------------------------------------------------»")
      escreval("        ==================================================")
      escreval("        |  CÓDIGO  |     DESCRIÇÃO    |  PREÇO UNITÁRIO  |")
      escreval("        |     1    |      Coxinha     |       4,50       |")
      escreval("        |     2    |      Pastel      |       5,75       |")
      escreval("        |     3    |   Pão de queijo  |       3,40       |")
      escreval("        |     4    |    Enroladinho   |       2,00       |")
      escreval("        ==================================================")
      escreval

      escreva("        * Digite o código do que deseja -> ")
      leia(codProduto)
      escreval
      
      se (codProduto > 4) ou (codProduto < 1) entao
         escreval("               SAlGADO ESCOLHIDO NÃO DISPONÍVEL!")
         interrompa
      fimse

      escreva("        * Deseja algo mais (S/N)? -> ")
      leia(opcao)
      opcao <- maiusc(opcao)

      se (opcao <> "S") e (opcao <> "N") entao
         escreval
         escreval("                        OPÇÃO INCORRETA!")
         interrompa
      fimse
      
      escolha (codProduto)
         caso 1
            valor <- valor + 4.50
            produtos <- produtos + "| 1- COXINHA: R$ 4,50 "
         caso 2
            valor <- valor + 5.75
            produtos <- produtos + "| 1- PASTEL: R$ 5,75 "
         caso 3
            valor <- valor + 3.40
            produtos <- produtos + "| 1- PÃO DE QUEIJO: R$ 3,40 "
         caso 4
            valor <- valor + 2.00
            produtos <- produtos + "| 1- ENROLADINHO: R$ 2,00 "
      fimescolha

   fimenquanto

   escreval
   escreval(" «------------------------------------------------------------»")
   escreval("      * PEDIDO:")
   escreval
   escreval("       ",produtos)
   escreval("       VALOR TOTAL: R$",valor :5:2)
   escreval(" «------------------------------------------------------------»")

Fimalgoritmo