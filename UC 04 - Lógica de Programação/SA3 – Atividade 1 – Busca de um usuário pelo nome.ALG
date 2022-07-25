Algoritmo "SA3 – Atividade 1 – Busca de um usuário pelo nome"
// Disciplina  : UC4 - Logica de Programacao
// Professor   : Rolfi Cintas Gomes Luz
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

      fimescolha
   Fimenquanto

fimalgoritmo
