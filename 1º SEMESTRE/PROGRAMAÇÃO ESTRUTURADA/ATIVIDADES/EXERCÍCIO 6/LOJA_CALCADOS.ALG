Algoritmo "Loja_calcados"
// Descri��o   : Usu�rio faz pedidos e � imprimido os produtos escolhidos e o valor total
// Autor(a)    : Gabriel Henrique
// Data atual  : 14/03/2024
Var

   cod: inteiro
   opc, produtos: caractere
   interacao: logico
   valor: real

Inicio

   interacao <- verdadeiro
   opc <- "S"

   repita

      se (interacao = verdadeiro) entao
         interacao <- falso
      senao
         limpatela()
      fimse
      
      escreval("                   �----    SK STORE    ----�")
      escreval("           ==========================================")
      escreval("           |  C�DIGO  |    PRODUTOS    |    PRE�O   |")
      escreval("           ==========================================")
      escreval("           |    1     |     T�nis      |  R$ 249,99 |")
      escreval("           |    2     |    Sand�lia    |  R$ 95,20  |")
      escreval("           |    3     |    Chinelo     |  R$ 22,90  |")
      escreval("           |    4     |    Sapatilha   |  R$ 87,10  |")
      escreval("           |    5     |     Bota       |  R$ 173,90 |")
      escreval("           ==========================================")
      escreval

      escreva("    * Ol�! Informe o c�digo do produto que deseja -> ")
      leia(cod)
      escreval

      se (cod < 1) ou (cod > 5) entao

         enquanto (cod < 1) ou (cod > 5) faca
         
            escreval("          - Op��o n�o dispon�vel, digite novamente!")
            escreval
            escreva("    * Deseja continuar com a compra? (S/N) -> ")
            leia (opc)
            opc <- maiusc(opc)
         
            se (opc = "N") ou (opc = "NAO") entao
               interrompa
            fimse
            
            escreval
            escreva("    * Informe o c�digo novamente -> ")
            leia(cod)
            escreval
            
         fimenquanto
         
      fimse

      se (opc = "S") ou (opc = "SIM") entao

         escreva("    * Muito bem! Deseja comprar algo mais? (S/N) -> ")
         leia(opc)
         opc <- maiusc(opc)
         
      fimse

      escolha (cod)

         caso 1
            produtos <- produtos + "T�nis - R$ 249,99 | "
            valor <- (valor + 249.99)
         caso 2
            produtos <- produtos + "Sand�lia - R$ 95,20 | "
            valor <- (valor + 95.20)
         caso 3
            produtos <- produtos + "Chinelo - R$ 22,90 | "
            valor <- (valor + 22.90)
         caso 4
            produtos <- produtos + "Sapatilha - R$ 87,10 | "
            valor <- (valor + 87.10)
         caso 5
            produtos <- produtos + "Bota - R$ 173,90 | "
            valor <- (valor + 173.90)
            
      fimescolha
            
   ate (opc = "N") ou (opc = "NAO")
   
   se (produtos = "") entao
      produtos <- "Nenhum produto foi adicionado! |"
   fimse
   
   escreval
   escreval("  �-----------------------------------------------------------�")
   escreval("     � RESUMO DO PEDIDO �")
   escreval
   escreval("    - ITENS : | ", produtos)
   escreval("    - TOTAL DO PEDIDO : R$", valor :6:2)
   escreval("  �-----------------------------------------------------------�")
   
Fimalgoritmo