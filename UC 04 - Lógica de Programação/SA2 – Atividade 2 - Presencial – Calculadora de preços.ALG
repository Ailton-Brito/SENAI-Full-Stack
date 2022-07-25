Algoritmo "SA2 – Atividade 2 - Presencial – Calculadora de preços"
// Disciplina  :UC4 - Lógica de Programação
// Professor   : Wellington Joffre
// Autor(a)    : Ailton Francisco de Sousa Brito
// Data atual  : 30/03/2021
Var
   // Seção de Declarações das variáveis
   valor1 : real
   valor2 : real
   op : caractere

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

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
      escreval("o resultado é R$", valor1 + valor2)
      escreval("foi realizada a operação de soma")

   senao
      se op = "-" entao
         escreval("o resultado é R$", valor1 - valor2)
         escreval("foi realizada a operação de subtração")

      senao
         se op = "*" entao
            escreval("o resultado é R$", valor1 * valor2)
            escreval("foi realizada a operação de multipicação")

         senao
            se op = "/" entao
               escreval("o resultado é R$", valor1 / valor2)
               escreval("foi realizada a operação de divisao")

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
   escreval("o resultado é R$", valor1 + valor2)
   escreval("foi realizada a operação de soma")

caso "-"
   escreval("o resultado é R$", valor1 - valor2)
   escreval("foi realizada a operação de subtração")

caso "*"
   escreval("o resultado é R$", valor1 * valor2)
   escreval("foi realizada a operação de multipicação")

caso "/"
   escreval("o resultado é R$", valor1 / valor2)
   escreval("foi realizada a operação de divisao")

fimescolha