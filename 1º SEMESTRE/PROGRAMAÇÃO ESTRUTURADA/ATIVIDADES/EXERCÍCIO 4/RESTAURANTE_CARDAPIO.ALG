Algoritmo "Restaurante_Cardapio"
// Descri��o   : Calcula o valor das refei��es escolhidas
// Autor(a)    : Gabriel Henrique
// Data atual  : 01/03/2024
Var

   qtd, qtd2: inteiro
   totalRefeicao: real
   opc, refeicao, bebida: caractere
Inicio

   escreval("                        ===============")
   escreval("                           CARD�PIO")
   escreval("                        ===============")
   escreval
   escreval("           -----------------------------------------------")
   escreval("           |  C�DIGO  |       REFEI��O       |   VALOR   |")
   escreval("           -----------------------------------------------")
   escreval("           |    1     |   MACARR�O NA CHAPA  | R$  20,00 |")
   escreval("           |    2     |       FEIJOADA       | R$  28,00 |")
   escreval("           |    3     |      ALM�NDEGAS      | R$  23,00 |")
   escreval("           |    4     |       TAMBAQUI       | R$  21,75 |")
   escreval("           |    5     |        SALADA        | R$  7,50  |")
   escreval("           |    6     |      PARMEGIANA      | R$  24,10 |")
   escreval("           -----------------------------------------------")
   escreval

   escreva("  * Insira o c�digo da refei��o que deseja comprar -> ")
   leia(refeicao)
   escreval
   escreva("  * Insira a quantidade que deseja -> ")
   leia(qtd)
   escreval
   
   escolha refeicao
      caso "1"
         refeicao <- "MACARR�O NA CHAPA / R$ 20,00"
         totalRefeicao <- (qtd * 20.00)
      caso "2"
         refeicao <- "FEIJOADA / R$ 28,00"
         totalRefeicao <- (qtd * 28.00)
      caso "3"
         refeicao <- "ALM�NDEGAS / R$ 23,00"
         totalRefeicao <- (qtd * 23.00)
      caso "4"
         refeicao <- "TAMBAQUI / R$ 21,75"
         totalRefeicao <- (qtd * 21.75)
      caso "5"
         refeicao <- "SALADA / R$ 7,50"
         totalRefeicao <- (qtd * 7.50)
       caso "6"
         refeicao <- "PARMEGIANA / R$ 24,10"
         totalRefeicao <- (qtd * 24.10)
      outrocaso
         escreval ("       - C�digo inv�lido!")
         fimalgoritmo
   fimescolha

   escreva("  * Informe se deseja comprar alguma bebida (S/N) -> ")
   leia(opc)
   escreval
   opc <- maiusc(opc)
   
   se(opc = "S") entao
      escreval("           -----------------------------------------------")
      escreval("           |  C�DIGO  |        BEBIDA        |   VALOR   |")
      escreval("           -----------------------------------------------")
      escreval("           |    7     |    REFRIGERANTE(2l)  | R$  12,00 |")
      escreval("           |    8     |  REFRIGERANTE(350ml) | R$  5,50  |")
      escreval("           |    9     |     CERVEJA(600ml)   | R$  14,50 |")
      escreval("           |    10    |  �GUA MINERAL(500ml) | R$  2,60  |")
      escreval("           |    11    |  SUCO NATURAL(300ml) | R$  9,00  |")
      escreval("           |    12    |      CH� GELADO      | R$  8,10  |")
      escreval("           -----------------------------------------------")
      escreval
      
      escreva("  * Insira o c�digo da bebida que deseja comprar -> ")
      leia(bebida)
      escreval
      escreva("  * Insira a quantidade que deseja -> ")
      leia(qtd2)
      escreval

      escolha (bebida)
         caso "7"
            bebida <- "REGRIGERANTE(2l) / R$ 12,00"
            totalRefeicao <- totalRefeicao + (qtd2 * 12.00)
         caso "8"
            bebida <- "REFRIGERANTE(350ml) / R$ 5,50"
            totalRefeicao <- totalRefeicao + (qtd2 * 5.50)
         caso "9"
            bebida <- "CERVEJA(600ml) / R$ 14,50"
            totalRefeicao <- totalRefeicao + (qtd2 * 14.50)
         caso "10"
            bebida <- "�GUA MINERAL(500ml) / R$  2,60"
            totalRefeicao <- totalRefeicao + (qtd2 * 2.60)
         caso "11"
            bebida <- "SUCO NATURAL(300ml) / R$  9,00"
            totalRefeicao <- totalRefeicao + (qtd2 * 9.00)
         caso "12"
            bebida <- "CH� GELADO / R$ 8,10"
            totalRefeicao <- totalRefeicao + (qtd2 * 8.10)
         outrocaso
            escreval ("       - C�digo inv�lido!")
            fimalgoritmo
      fimescolha
      
      escreval("     �----------------------------------------------�")
      escreval("       - PEDIDO:")
      escreval("       - ", refeicao, " (",qtd,"x )")
      escreval("       - ", bebida, " (",qtd2,"x )")
      escreval ("       - TOTAL A PAGAR -> R$", totalRefeicao :6:2)
      escreval("     �----------------------------------------------�")
      
   senao
      escreval("     �-----------------------------�")
      escreval("       - PEDIDO:")
      escreval("       - ", refeicao, " (",qtd,"x )")
      escreval ("       - TOTAL A PAGAR -> R$", totalRefeicao :6:2)
      escreval("     �-----------------------------�")
   fimse
   
Fimalgoritmo