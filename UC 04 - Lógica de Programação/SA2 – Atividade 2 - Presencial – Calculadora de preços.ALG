Algoritmo "SA2 � Atividade 2 - Presencial � Calculadora de pre�os"
// Disciplina  :UC4 - L�gica de Programa��o
// Professor   : Wellington Joffre
// Autor(a)    : Ailton Francisco de Sousa Brito
// Data atual  : 30/03/2021
Var
   // Se��o de Declara��es das vari�veis
   valor1 : real
   valor2 : real
   op : caractere

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...

   escreva("informe o primeiro valor: R$")
   leia(valor1)
   escreval()
   escreva("informe o segundo valor: R$")
   leia(valor2)
   escreval()
   escreva("informe o operador: ")
   leia (op)
   escreval()

   se op = "+" entao
      escreval("o resultado � R$", valor1 + valor2)
      escreval("foi realizada a opera��o de soma")

   senao
      se op = "-" entao
         escreval("o resultado � R$", valor1 - valor2)
         escreval("foi realizada a opera��o de subtra��o")

      senao
         se op = "*" entao
            escreval("o resultado � R$", valor1 * valor2)
            escreval("foi realizada a opera��o de multipica��o")

         senao
            se op = "/" entao
               escreval("o resultado � R$", valor1 / valor2)
               escreval("foi realizada a opera��o de divisao")

            fimse
         fimse
      fimse
   fimse
Fimalgoritmo

escreva("informe o primeiro valor: R$")
leia(valor1)
ESCREVAL()
escreva("informe o segundo valor: R$")
leia(valor2)
ESCREVAL()
escreva("informe o operador: ")
leia (op)
ESCREVAL()

escolha op
caso "+"
   escreval("o resultado � R$", valor1 + valor2)
   escreval("foi realizada a opera��o de soma")

caso "-"
   escreval("o resultado � R$", valor1 - valor2)
   escreval("foi realizada a opera��o de subtra��o")

caso "*"
   escreval("o resultado � R$", valor1 * valor2)
   escreval("foi realizada a opera��o de multipica��o")

caso "/"
   escreval("o resultado � R$", valor1 / valor2)
   escreval("foi realizada a opera��o de divisao")

fimescolha