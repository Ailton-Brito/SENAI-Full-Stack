Algoritmo "Pedido de compras"
// Disciplina   : [UC04 - L�gica de Programa��o]
// Professor   : Rolfi Cintas Gomes Luz
// Descri��o   : Simular o valor total de um pedido de compras por meio da estrutura de repeti��o ENQUANTO
// Autor(a)    : Ailton Francisco de Sousa Brito
// Data atual  : 21/02/2021
Var
   // Se��o de Declara��es das vari�veis
   produto : caractere
   resposta : caractere
   preco_unit : real
   total_ped : real
   qtde : inteiro
   j : logico

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...

   total_ped <- 0,00
   j <- verdadeiro

   Enquanto j = Verdadeiro Faca

      Escreva ("Produto: ")
      leia (produto)

      Escreva ("Pre�o Unit�rio: R$")
      leia (preco_unit)

      Escreva ("Quantidade: ")
      leia (qtde)
      escreval()
      Escreva ("Continua? (S/N)")
      leia (resposta)

      se resposta = "n"  entao
         J <- Falso

      fimse

   fimenquanto

   Escreval ("Total do Pedido: R$" , preco_unit * qtde)
   leia (total_ped)
Fimalgoritmo