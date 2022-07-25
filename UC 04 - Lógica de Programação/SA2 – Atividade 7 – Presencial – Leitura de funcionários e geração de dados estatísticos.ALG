Algoritmo "SA2 – Atividade 7 – Presencial – Leitura de funcionários e geração de dados estatísticos"
// Disciplina  : UC4 - Lógica de Programação
// Professor   : Wellington Joffre
// Descrição   : Leitura de funcionarios e geracao de dados estatisticos
// Autor(a)    : Ailton Francisco de Sousa Brito
// Data atual  : 26/03/2021
Var
   // Seção de Declarações das variáveis
   funcionario: vetor[0..4,0..4] de Caractere
   nomeMenor : caractere
   nomeMaior : caractere
   menorIdade : caractere
   maiorIdade: caractere
   salario : inteiro
   contadorF : inteiro
   contadorM : inteiro
   i : inteiro
   j : inteiro
   totSalario : real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   escreval("Informe os dados dos funcionários na serguinte ordem: ")
   escreval()
   escreval("Nome")
   escreval("Função")
   escreval("Idade")
   escreval("Sexo")
   escreval("Salário")
   escreval()

   para i <- 0 ate 4 faca
      escreval("_____________________________________________________________")
      escreval("Dados funcionário "," ", i + 1)

      para j <- 0 ate 4 faca
         leia(funcionario[i,j])

      fimpara
   fimpara

   escreval("________________________________________________________________")

   escreval("Término da entrada de dados")
   escreval()
   escreval("Leitura da matriz e apresentação do dados")
   escreval()

   menorIdade <- funcionario[0,2]
   maiorIdade <- funcionario[0,2]
   contadorF <- 0
   contadorM <- 0
   totSalario <- 0

   escreva("Nome","    ","Função","     ","Idade","     ","Sexo","     ","Salário")

   para i <- 0 ate 4 faca
      escreval(" ")

      para j <- 0 ate 4 faca
         escreva(" ")
         escreva(funcionario[i,j]," ")

         se j = 2 entao

            se funcionario[i,j] < menorIdade entao
               menorIdade <- funcionario[i,j]
               nomeMenor <- funcionario[i,j-2]
            fimse

            se funcionario[i,j] > maiorIdade entao
               maiorIdade <- funcionario[i,j]
               nomeMaior <- funcionario[i,j-2]
            fimse
         fimse

         se j = 3 entao

            se funcionario[i,j] = "f" entao
               contadorF <- contadorF + 1

            senao
               contadorM <- contadorM + 1
            fimse
         fimse

         se j = 4 entao
            totSalario <- totSalario + caracpnum (funcionario[i,j])
         fimse
      fimpara
   fimpara

   escreval()
   escreval("________________________________________________________________")
   escreval("Dados estatisticos da empresa")

   escreva("Menor Idade: ",nomeMenor," - ",menorIdade)
   escreval()

   escreva("Maior Idade: ",nomeMaior," - ",maiorIdade)
   escreval()

   escreva("Sexo Feminino: ",contadorF)
   escreval()

   escreva("Sexo Masculino:",contadorM)
   escreval()
   escreva("Total Salário: R$", totSalario)

Fimalgoritmo