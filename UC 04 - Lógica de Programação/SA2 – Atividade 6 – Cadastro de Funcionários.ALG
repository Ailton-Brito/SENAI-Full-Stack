gAlgoritmo "Cadastro de Funcionarios"
// Disciplina  : UC 4 - L�gica de Programa��o
// Professor   : Rolfi Cintas Gomes Luz
// Descri��o   : Cadastro de funcionarios na forma de estrutura homog�nea bidimensional
// Autor(a)    : Ailton Francisco de Sousa Brito
// Data atual  : 06/03/2021
Var
   // Se��o de Declara��es das vari�veis
   I : Inteiro
   J : Inteiro
   Funcionario: vetor [0..4, 0..4] de caractere

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...

   Funcionario[0, 0] := "Maria Barbosa"
   Funcionario[0, 1] := "Analista"
   Funcionario[0, 2] := "29"
   Funcionario[0, 3] := "F"
   Funcionario[0, 4] := "4500"
   Funcionario[1, 0] := "Pedro Alc�ntara"
   Funcionario[1, 1] := "Programador"
   Funcionario[1, 2] := "23"
   Funcionario[1, 3] := "M"
   Funcionario[1, 4] := "2500"
   Funcionario[2, 0] := "Regina Silva"
   Funcionario[2, 1] := "Programador"
   Funcionario[2, 2] := "25"
   Funcionario[2, 3] := "F"
   Funcionario[2, 4] := "2500"
   Funcionario[3, 0] := "Ana Pereira"
   Funcionario[3, 1] := "Programador"
   Funcionario[3, 2] := "22"
   Funcionario[3, 3] := "F"
   Funcionario[3, 4] := "2500"
   Funcionario[4, 0] := "Alcides Marques"
   Funcionario[4, 1] := "Coordenador"
   Funcionario[4, 2] := "35"
   Funcionario[4, 3] := "M"
   Funcionario[4, 4] := "7000"

   Escreval ("Informe os dados do funcion�rio na seguinte ordem:")
   Escreval ("Nome")
   Escreval ("Fun��o")
   Escreval ("Idade")
   Escreval ("Sexo")
   Escreval ("Sal�rio")

   Para I de 0 at� 4 fa�a
      Escreval ("Dados Funcionario" , " ", I+1)

      Para J de 0 at� 4 Fa�a
         Escreval (Funcionario[I,J])

      Fimpara
   Fimpara

   Escreval("T�rmino da entrada de dados")

   Escreval("= = = = = = = = = = = = = =")

   Escreval("Leitura da matriz e apresenta��o dos dados")

   Escreval("Nome  Fun��o  Idade  Sexo  Sal�rio")

   Para I de 0 at� 4 Fa�a
      Escreval("   ")

      Para j de 0 at� 4 Fa�a
         Escreva(Funcionario[I,J],"   ")

      Fimpara
   Fimpara

Fimalgoritmo