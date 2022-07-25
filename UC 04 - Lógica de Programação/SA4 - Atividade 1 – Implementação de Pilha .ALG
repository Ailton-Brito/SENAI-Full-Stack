Algoritmo "SA4 - Atividade 1 – Implementação de Pilha"
// Disciplina  : UC4 - Logica de Programacao
// Professor   : Rolfi Cintas Gomes Luz
// Autor(a)    : Ailton Francisco de Sousa Brito
// Data atual  : 26/03/2021
Var
   // Seção de Declarações das variáveis
   menu : inteiro
   pilha : vetor [0..20,0..1] de caractere
   topo : inteiro

procedimento empilhar()
var
   nome, idade : caractere

inicio
   se topo < 20 entao
      topo <- topo  +1

      escreva("Digite o nome do cliente: ")
      leia(nome)
      escreva("Digite a idade do cliente: ")
      leia(idade)

      pilha[topo,0] <- nome
      pilha[topo,1] <- idade

   senao
      escreval("A pilha está cheia e não cabe mais dados")

   fimse
fimprocedimento

procedimento desempilhar()
var

inicio
   se topo >= 0 entao
      escreval("nome: ",pilha[topo,0],"    idade: ",pilha[topo,1])
      topo <- topo - 1
   senao
      escreval("A pilha esta vazia")

   fimse
fimprocedimento

procedimento limpar()
var

inicio
   topo <- -1
fimprocedimento

procedimento listar()
var
   linha : inteiro
inicio
   se topo >= 0 entao
      para linha de 0 ate topo faca
         escreval("nome: ",pilha[linha,0],"    idade: ",pilha[linha,1])
      fimpara
   senao
      escreval("A lista esta vazia")
   fimse
fimprocedimento

funcao vazia() : logico
var

inicio
   se topo = -1 entao
      retorne verdadeiro
   senao
      retorne falso
   fimse
fimfuncao

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   topo <- -1
   menu <- 0

   enquanto menu <> 6 faca
      escreval()
      escreval("1-Empilhar dados")
      escreval("2-Desempilhar dados")
      escreval("3-Limpar dados")
      escreval("4-Listar dados")
      escreval("5-Verificar se a pilha esta vazia")
      escreval("6-Encerrar o programa")
      escreval("_____________________________________________________________")
      escreva("Digite uma opção: ")

      leia(menu)
      limpatela
      escolha menu

      caso 1
         escreval()
         empilhar()

      caso 2
         escreval()
         desempilhar()

      caso 3
         escreval()
         limpar()

      caso 4
         escreval()
         listar()

      caso 5
         escreval()

         se vazia = verdadeiro entao
            escreval("A pilha esta vazia")

         senao
            escreval("A pilha contem dados")
         fimse

         escreval()

      fimescolha
   fimenquanto

Fimalgoritmo