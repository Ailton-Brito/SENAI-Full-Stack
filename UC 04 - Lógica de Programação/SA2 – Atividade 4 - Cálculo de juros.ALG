Algoritmo "C�lculo de Juros"
// Disciplina   : UC-4 - L�gica de Programa��o
// Professor   : Rolfi Cintas Gomes Luz
// Descri��o   : Calcular o valor com juros para as duplicatas em atraso
// Autor(a)    : Ailton Francisco de Sousa Brito
// Data atual  : 26/02/2021
Var
   // Se��o de Declara��es das vari�veis
   valor : real
   taxa : real
   vpagar : real
   periodo : inteiro
   j : inteiro

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...

   escreva("Valor principal: R$ ")
   leia(valor)

   escreva("Taxa de multa: ")
   leia(taxa)

   escreva("Periodo: ")
   leia(periodo)

   vpagar <- valor

   para j de 1 at� 5 faca
      vpagar := vpagar + vpagar * taxa
      escreval (j," " , vpagar:2:2)

   fimpara

Fimalgoritmo