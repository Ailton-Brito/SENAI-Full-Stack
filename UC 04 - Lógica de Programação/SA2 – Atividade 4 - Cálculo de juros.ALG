Algoritmo "Cálculo de Juros"
// Disciplina   : UC-4 - Lógica de Programação
// Professor   : Rolfi Cintas Gomes Luz
// Descrição   : Calcular o valor com juros para as duplicatas em atraso
// Autor(a)    : Ailton Francisco de Sousa Brito
// Data atual  : 26/02/2021
Var
   // Seção de Declarações das variáveis
   valor : real
   taxa : real
   vpagar : real
   periodo : inteiro
   j : inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   escreva("Valor principal: R$ ")
   leia(valor)

   escreva("Taxa de multa: ")
   leia(taxa)

   escreva("Periodo: ")
   leia(periodo)

   vpagar <- valor

   para j de 1 até 5 faca
      vpagar := vpagar + vpagar * taxa
      escreval (j," " , vpagar:2:2)

   fimpara

Fimalgoritmo