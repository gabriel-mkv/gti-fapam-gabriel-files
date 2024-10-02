Algoritmo "Calcular Multas"
// Descrição   : Calcula o valor da multa
// Autor(a)    : Gabriel Henrique
// Data atual  : 23/02/2024
Var

   velPermitida: inteiro
   velMotorista, porcentagem: real

Inicio

   escreval("                       CALCULADORA DE MULTA")
   escreval("")
   escreval("      |----------------------------------------------------|")
   escreval("")
   escreva("          * Informe a velocidade máxima permitida: ")
   leia(velPermitida)
   escreva("          * Informe a velocidade do motorista: ")
   leia(velMotorista)
   escreval("")
   porcentagem <- ((velMotorista - velPermitida) / (velPermitida) * 100)
   se (porcentagem <= 0) entao
      escreval ("                O motorista não precisa pagar multa.")
      senao
         se (porcentagem > 0) e (porcentagem < 20) entao
            escreval ("                        - Infração Média!")
            escreval ("                        - Multa de R$85,00")
            escreval ("                        - 4 pontos na carteira")
         senao
            se(porcentagem >= 20) e (porcentagem <= 50) entao
               escreval ("                      - Infração Grave!")
               escreval ("                      - Multa de R$127,00")
               escreval ("                      - 5 pontos na carteira")
            senao (porcentagem > 50)
               escreval ("                 - Infração Gravíssima!")
               escreval ("                 - Multa de R$574,00")
               escreval ("                 - 7 pontos na carteira")
               escreval ("                 - Apreensão da Carteira")
               escreval ("                 - Suspensão do direito de dirigir")
            fimse
         fimse
   fimse
   escreval("")
   escreval("      |----------------------------------------------------|")

Fimalgoritmo