Algoritmo "Aplica��o de Investimento"
// Disciplina   : [UC4-L�gica de Programa��o]
// Professor   : Wellington Joffre
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Ailton Francisco de Sousa Brito
// Data atual  : 16/02/2021
Var
   // Se��o de Declara��es das vari�veis
   valor : real
   taxa: real
   valor_dep : real
   periodo : inteiro
   j : inteiro
   resp : caractere
   continua : logico

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   periodo <- 12
   continua <- verdadeiro

   Escreva ("Valor inicial do investimento: R$")
   Leia (valor)

   Escreva ("Valor mensal do dep�sito: R$")
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
