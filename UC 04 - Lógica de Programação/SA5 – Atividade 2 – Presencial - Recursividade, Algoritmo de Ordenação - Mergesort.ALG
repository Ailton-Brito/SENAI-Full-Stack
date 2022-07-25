Algoritmo "SA5 – Atividade 2 – Presencial - Recursividade, Algoritmo de Ordenação - Mergesort"
// Disciplina  : UC4 - Logica de Programacao
// Professor   : Wellington Joffre
// Autor(a)    : Ailton Francisco de Sousa Brito
// Data atual  : 25/04/2021
Var
   // Seção de Declarações das variáveis
   dados: vetor[1..20] de inteiro
   proxLinha: inteiro
   menu,i, usuario, remov: inteiro
   busc: caractere

procedimento cadastrar()
var

inicio
   escreval("digite a", proxLinha, "ª Senha")
   leia(dados[proxLinha])

   proxLinha <- proxLinha +1
   se proxLinha = 21 entao
      proxLinha <- 20
   fimse

fimprocedimento

procedimento listar()
var
   l: inteiro
inicio

   escreval("mostrar todos os dados na pilha")
   para l de 1 ate 20 faca
      escreval ("senha: ", dados[l])
   fimpara

fimprocedimento

funcao buscar(senhaA: inteiro): caractere
var
   linha: inteiro
   resultado: logico

inicio
   resultado <- falso
   para linha de 1 ate 20 faca
      se senhaA = dados[linha] entao
         escreval("")
         resultado <- verdadeiro
      fimse
   fimpara

   se resultado = verdadeiro entao
      retorne numpcarac(senhaA)
   senao
      retorne "nao encontrado"
   fimse

fimfuncao

funcao removerT(): logico
var
   i: inteiro
   removendo : logico

inicio
   removendo <- falso

   para i de 1 ate 20 faca
      dados[i] <- 0
      removendo <- verdadeiro
   fimpara
   proxLinha <- 1
   retorne removendo

fimfuncao

funcao removerU (senhaA: inteiro): logico
var
   linha: inteiro
   removendo: logico

inicio
   removendo <- falso
   para linha de 1 ate 20 faca
      se senhaA = dados[linha] entao
         removendo <- verdadeiro
         dados[linha] <- -1
         proxLinha <- proxLinha -1
         subir (linha)
      fimse
   fimpara
   retorne removendo

fimfuncao

procedimento subir(removido: inteiro)
var
   linha: inteiro
inicio
   para linha de removido ate 19 faca
      dados[linha] <- dados[linha+1]
   fimpara
   dados[linha+1] <- 0

fimprocedimento

Procedimento MergeSort(comeco, fim: inteiro)
var
   meio:inteiro

inicio
   se (comeco < fim) entao
      meio <- (comeco + fim) div 2
      MergeSort (comeco, meio)
      MergeSort (meio + 1, fim)
      Merge (comeco, meio, fim)
   fimse

fimprocedimento

procedimento Merge(comeco, meio, fim: inteiro)
var
   h,i,j,k: inteiro
   b: vetor [1..20] de inteiro

inicio

   h <- comeco;
   i <- comeco;
   j <- meio + 1;

   enquanto (h <= meio) e (j <= fim) faca

      se dados[h] <= dados[j] entao
         b[i] <- dados[h];
         h <- h + 1;

      senao
         b[i] <- dados[j];
         j <- j + 1;
      fimse

      i <- i + 1;
   fimenquanto

   se h > meio entao
      Para k de j ate fim faca
         b[i] <- dados[k];
         i <- i + 1;
      fimpara

   senao
      Para k de h ate meio faca
         b[i] <- dados[k];
         i <- i + 1;
      fimpara
   fimse

   para k de comeco ate fim faca
      dados[k] <- b[k];
   fimpara

fimprocedimento

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   proxLinha <- 1

   enquanto menu < 7  faca
      escreval("_____________________________________________________________")
      escreval()
      escreval("                  MENU DE OPCOES                            ")
      escreval()
      escreval("1 - Cadastro de senha Automatico")
      escreval("2 - Cadastro de senha Manual")
      escreval("3 - Mostrar todas as senhas")
      escreval("4 - Buscar senha")
      escreval("5 - Remover senha")
      escreval("6 - Ordenar dados")
      escreval("7 - Sair do programa")
      escreval("_____________________________________________________________")
      escreval()
      escreval("Digite uma opção:")
      leia(menu)

      se menu = 1 entao

         limpatela
         escreval("__________________Cadastro Automatico_____________________")
         aleatorio on
         para i de 1 ate 20 faca
            cadastrar()
         fimpara
         aleatorio off
      fimse


      se menu = 2 entao

         limpatela
         escreval("_____________________Cadastro Manual______________________")
         para i de 1 ate 20 faca
            cadastrar()
         fimpara
      fimse


      se menu = 3 entao

         limpatela
         escreval("_________________Mostrando todas as Senhas_________________")

         listar()
      fimse


      se menu = 4 entao

         limpatela
         escreval("______________________Buscar Senha________________________")
         escreval("Digite a senha para buscar")
         leia(usuario)
         busc<- buscar( usuario )
         escreval("Resultado da busca: " ,busc )
      fimse


      se menu = 5 entao

         limpatela
         escreval("_______________________Excluir Senha______________________")
         escreval("1 - Remover todas as senhas")
         escreval("2 - Remover uma senha")
         escreval("3 - Sair")

         leia(remov)

         se remov = 1 entao

            escreval()
            se removerT() = verdadeiro entao

               escreval("Todas as senhas foram removidas com Sucesso")
            fimse

         fimse

         se remov = 2 entao

            escreval("Digite a senha para Excluir")
            leia(usuario)
            escreval("Senha removido:", removerU( usuario ))
         fimse

         se remov = 3 entao

         fimse
      fimse


      se menu = 6 entao
         limpatela
         escreval("________________Ordenando todos os Dados__________________")

         MergeSort(1, 20)
         listar()

      fimse
   fimenquanto


Fimalgoritmo