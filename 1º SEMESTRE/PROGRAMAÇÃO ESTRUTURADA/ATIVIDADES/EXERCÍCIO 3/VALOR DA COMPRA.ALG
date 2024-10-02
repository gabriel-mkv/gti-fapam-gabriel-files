Algoritmo "Calcular Preço"
// Descrição   : Calcula o preço pago por um produto
// Autor(a)    : Gabriel Henrique
// Data atual  : 23/02/2024
Var

   codProduto, qtd: inteiro
   valor: real

Inicio

   escreval("                       LOJA DE SALGADINHOS")
   escreval("")
   escreval("    ----------------------------------------------------------")
   escreval("")
   escreval("             CÓDIGO  |     DESCRIÇÃO    | PREÇO UNITÁRIO ")
   escreval("                1    |      Coxinha     |      0,50 ")
   escreval("                2    |      Pastel      |      0,75 ")
   escreval("                3    |   Pão de queijo  |      0,40 ")
   escreval("                4    |    Enroladinho   |      0,80 ")
   escreval("")
   escreval("    ----------------------------------------------------------")
   escreval("")
   escreva("        Digite o código do produto que quer comprar: ")
   leia(codProduto)
   escreva("        Digite qual a quantidade que deseja comprar: ")
   leia(qtd)
   escreval("")
   escolha codProduto
      caso 1
         valor <- qtd * 0.50
         escreva("                 O valor da sua compra é R$", valor :4:2)
      caso 2
         valor <- qtd * 0.75
         escreva("                 O valor da sua compra é R$", valor :4:2)
      caso 3
         valor <- qtd * 0.40
         escreva("                 O valor da sua compra é R$", valor :4:2)
      caso 4
         valor <- qtd * 0.80
         escreva("                 O valor da sua compra é R$", valor :4:2)
      outrocaso
         escreva("              A opção escolhida não está disponível")
   fimescolha
   escreval("")

Fimalgoritmo