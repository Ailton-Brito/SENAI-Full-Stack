Algoritmo "Pedido de compras"
// Disciplina   : [UC04 - Lógica de Programação]
// Professor   : Rolfi Cintas Gomes Luz
// Descrição   : Simular o valor total de um pedido de compras por meio da estrutura de repetição ENQUANTO
// Autor(a)    : Ailton Francisco de Sousa Brito
// Data atual  : 21/02/2021
Var
   // Seção de Declarações das variáveis
   produto : caractere
   resposta : caractere
   preco_unit : real
   total_ped : real
   qtde : inteiro
   j : logico

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   total_ped <- 0,00
   j <- verdadeiro

   Enquanto j = Verdadeiro Faca

      Escreva ("Produto: ")
      leia (produto)

      Escreva ("Preço Unitário: R$")
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