Algoritmo "Aplicação de Investimento"
// Disciplina   : [UC4-Lógica de Programação]
// Professor   : Wellington Joffre
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Ailton Francisco de Sousa Brito
// Data atual  : 16/02/2021
Var
   // Seção de Declarações das variáveis
   valor : real
   taxa: real
   valor_dep : real
   periodo : inteiro
   j : inteiro
   resp : caractere
   continua : logico

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   periodo <- 12
   continua <- verdadeiro

   Escreva ("Valor inicial do investimento: R$")
   Leia (valor)

   Escreva ("Valor mensal do depósito: R$")
   Leia (valor_dep)

   Escreva ("Taxa de juros mensal: ")
   Leia (taxa)

   Enquanto continua = verdadeiro Faca
      Para j De 1 Ate periodo Faca
         valor := valor + valor * taxa + valor_dep
         Escreval(j," ",valor:8:2)

      Fimpara


      Escreval("Deseja simular mais um ano? S/N")
      Leia(resp)

      Se resp = "N" Entao
         continua <- falso

      Fimse

   Fimenquanto


Fimalgoritmo
