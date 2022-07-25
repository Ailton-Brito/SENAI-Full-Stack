Algoritmo "SA4 – Atividade 2 – Presencial - Implementação de Fila"
// Disciplina  : UC4 - Logica de Programação
// Professor   : Wellington Joffre
// Autor(a)    : Ailton Francisco de Sousa Brito
// Data atual  : 29/03/2021
Var
   // Seção de Declarações das variáveis
   fila : vetor [1..25] de caractere
   menu: inteiro
   topo: inteiro
   nome: caractere

procedimento inserir()
var
   nome: caractere
inicio
   se topo < 25 entao
      topo <- topo +1

      escreva("Digite o nome do cliente: ")
      leia(nome)

      fila[topo] <- nome

   senao
      escreval("Nao existe mais espaço na fila")
   fimse

fimprocedimento

funcao remover(): caractere
var
   resposta: caractere
   i: inteiro

inicio
   resposta <- fila[1]
   fila[1] <- ""
   topo <- topo -1

   para i de 1 ate topo faca
      fila[i] <- fila[i+1]
   fimpara

   para i de topo ate 25 faca
      fila[i] <- ""
   fimpara

   retorne resposta
fimfuncao

procedimento limpar()
var

inicio
   topo <- 0
fimprocedimento

procedimento listar()
var
   linha : inteiro
inicio
   se topo >= 1 entao
      para linha de 1 ate topo faca
         escreval("nome: ",fila[linha])
      fimpara
   senao
      escreval("A fila esta vazia")
   fimse
fimprocedimento

funcao vazia() : logico
var
inicio
   se topo = 0 entao
      retorne verdadeiro
   senao
      retorne falso
   fimse

fimfuncao

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   topo <- 0
   menu <- 0

   enquanto menu <> 6 faca
      escreval()
      //limpatela
      escreval("1-Inserir dados na fila")
      escreval("2-remover dados da fila")
      escreval("3-Limpar dados da fila")
      escreval("4-Listar dados da fila")
      escreval("5-Verificar se a fila esta vazia")
      escreval("6-Encerrar o programa")
      escreval("_____________________________________________________________")
      escreva("Digite uma opção: ")

      leia(menu)
      limpatela

      escolha menu

      caso 1
         escreval()
         inserir()

      caso 2
         escreval()
         escreval("Removendo: ", remover())

      caso 3
         escreval()
         limpar()

      caso 4
         escreval()
         escreval("Listando todos os dados da fila")
         listar()

      caso 5
         escreval()

         se vazia = verdadeiro entao
            escreval("A fila esta vazia")

         senao
            escreval("A fila contem dados")
         fimse

         escreval()

      fimescolha
   fimenquanto

fimalgoritmo