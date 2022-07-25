Algoritmo "SA3 – Atividade 2 – Presencial – Remover usuário da estrutura de dados"
// Disciplina  : UC4 - Logica de Programacao
// Professor   : Wellington Joffre
// Autor(a)    : Ailton Francisco de Sousa Brito
// Data atual  : 26/03/2021

Var
   // Seção de Declarações das variáveis
   menu : inteiro
   funcionario : vetor [1..5,1..2] de caractere
   posicao : inteiro
   aux: caractere

procedimento cadastrar()
var
   nome, idade : caractere
inicio
   limpatela

   se posicao <= 5 então
      Escreva("Digite o nome do usuario: ")
      Leia(nome)
      Escreva("Digite a idade do usuario: ")
      Leia(idade)
      limpatela
      funcionario[posicao,1] <- nome
      funcionario[posicao,2] <- idade
      posicao <- posicao + 1

   senao
      escreval("lista de usuarios está lotada!")
   fimse
fimprocedimento

procedimento listar()
var
   linha : inteiro
inicio
   para linha de 1 até 5 faça
      escreval()
      escreval("Nome: ", funcionario[linha,1])
      escreval("Idade: ", funcionario[linha,2])
   fimpara
fimprocedimento

funcao buscar(nome: caractere): caractere
var
   linha: inteiro
   resultado: caractere

inicio
   resultado <- "nome nao encontrado"
   para linha de 1 ate 5 faca
      se funcionario[linha,1]= nome entao
         resultado <- "nome:" + nome
         resultado <- resultado + "  idade:" + funcionario[linha,2]
      fimse
   fimpara
   retorne resultado
fimfuncao

funcao remover(nome: caractere):caractere
var
   linha: inteiro
   resposta: caractere
   posicaoRem : inteiro

inicio
   para linha de 1 ate 5 faca
      se nome = funcionario[linha,1] entao
         resposta <- "nome removido:" + funcionario[linha,1]
         resposta <- resposta + "  idade:" + funcionario[linha,2]
         funcionario [linha,1]<-""
         funcionario [posicao,2]<-""
         posicaoRem <- linha
         posicao <- posicao -1
      fimse
   fimpara

   se posicaoRem > 0 entao
      para linha de posicaoRem ate 4 faca
         funcionario[linha,1]<-funcionario[linha+1,1]
         funcionario[linha,2]<-funcionario[linha+1,2]
      fimpara
   fimse
   funcionario[5,1]<-""
   funcionario[5,2]<-""
   retorne resposta
fimfuncao

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   posicao <- 1

   Enquanto Menu <> 4 Faça
      escreval()
      Escreva("1-Incluir Usuário")
      escreval()
      Escreva("2-Listar todos os Usuários")
      escreval()
      Escreva("3-Buscar Usuário pelo Nome")
      escreval()
      Escreva("4-Sair")
      escreval()
      escreval("5-Remover usuario")
      Escreva("______________________________________________________________")
      escreval()

      Escreva("Digite uma opção:")
      Leia(Menu)

      limpatela

      Escolha Menu

      Caso 1
         Escreval("cadastre um novo usuario")
         cadastrar()

      Caso 2
         Escreval("lista de todos os usuarios cadastrados")
         listar()

      Caso 3
         Escreval("Buscar Usuário pelo Nome")
         escreval("Digite um nome para buscar na lista")
         leia (aux)
         escreval("", buscar(aux))

      Caso 4
         Escreval("Sair")

      Caso 5
         Escreval("Remover Usuario")
         escreval("Digite um nome para remover da lista")
         leia(aux)
         escreval("",remover(aux))

      fimescolha
   Fimenquanto
fimalgoritmo
