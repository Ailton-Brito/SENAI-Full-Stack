Algoritmo "verificacao de cadastro"
// Disciplina   : [Logica de Programacao]
// Professor   : Rolfi
// Descri��o   : verificar cadastro com base na estrutura de de controle simples
// Autor(a)    : Ailton Francisco de Sousa Brito
// Data atual  : 02/02/2021
Var
   // Se��o de Declara��es das vari�veis
   renda1 : real
Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...


   escreva ("informe o valor da renda do cliente: R$")
   leia (renda1)

   se (renda1 <=1000.00) entao
      escreval ("o cliente esta na faixa 1 e pode comprar ate R$:" , renda1 / 100 * 30)

   senao
      se (renda1 <=2999.99) entao
         escreval ("o cliente esta na faixa 1 e pode comprar ate R$:" , renda1 / 100 * 30)

      senao
         se (renda1 <=3000.00) entao
            escreval ("o cliente esta na faixa 2 e pode comprar ate R$:" , renda1 / 100 * 35)

         senao
            se (renda1 <=4999.99) entao
               escreval ("o cliente esta na faixa 2 e pode comprar ate R$:" , renda1 / 100 * 35)


            fimse
         fimse
      fimse
   fimse

fimalgoritmo