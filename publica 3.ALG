Algoritmo "semnome"
//
//
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 04/10/2020
Var
   vprg_placar, vprg_max, vprg_min     : inteiro
   vprg_jogo, vprg_recMin, vprg_recMax : inteiro
   vprg_inserir, vprg_novaLinha        : caracter
   vprg_escolhaMenu                    : inteiro
   //vprg_cabecalho : vetor [1..1,1..6] de caracter
   //vprg_tabela : vetor [1..n,1..6] de inteiro

procedimento pprg_cabecalho
var
   vprg_cabecalho : vetor [1..6] de caracter
   lin, col : caracter
inicio
   vprg_cabecalho[1] := "Jogo"
   vprg_cabecalho[2] := "Placar"
   vprg_cabecalho[3] := "Mínimo da temporada"
   vprg_cabecalho[4] := "Máximo da temporada"
   vprg_cabecalho[5] := "Quebra de recorde mín."
   vprg_cabecalho[6] := "Quebra de recorde máx."
   escreva(vprg_cabecalho[1]," | ")
   escreva(vprg_cabecalho[2]," | ")
   escreva(vprg_cabecalho[3]," | ")
   escreva(vprg_cabecalho[4]," | ")
   escreva(vprg_cabecalho[5]," | ")
   escreval(vprg_cabecalho[6]," | ")
fimprocedimento

procedimento pprg_tabela
var
   vprg_tabela : vetor [1..4,1..6] de inteiro
inicio
   vprg_tabela[1,1] := 1
   vprg_tabela[1,2] := 12
   vprg_tabela[1,3] := 12
   vprg_tabela[1,4] := 12
   vprg_tabela[1,5] := 0
   vprg_tabela[1,6] := 0
   vprg_tabela[2,1] := 2
   vprg_tabela[2,2] := 24
   vprg_tabela[2,3] := 12
   vprg_tabela[2,4] := 24
   vprg_tabela[2,5] := 0
   vprg_tabela[2,6] := 1
   vprg_tabela[3,1] := 3
   vprg_tabela[3,2] := 10
   vprg_tabela[3,3] := 10
   vprg_tabela[3,4] := 24
   vprg_tabela[3,5] := 1
   vprg_tabela[3,6] := 1
   vprg_tabela[4,1] := 4
   vprg_tabela[4,2] := 24
   vprg_tabela[4,3] := 10
   vprg_tabela[4,4] := 24
   vprg_tabela[4,5] := 1
   vprg_tabela[4,6] := 1
   escreva(vprg_tabela[1,1],"     ")
   escreva(vprg_tabela[1,2],"            ")
   escreva(vprg_tabela[1,3],"                   ")
   escreva(vprg_tabela[1,4],"                       ")
   escreva(vprg_tabela[1,5],"                       ")
   escreval(vprg_tabela[1,6]," ")
   escreva(vprg_tabela[2,1],"     ")
   escreva(vprg_tabela[2,2],"            ")
   escreva(vprg_tabela[2,3],"                   ")
   escreva(vprg_tabela[2,4],"                       ")
   escreva(vprg_tabela[2,5],"                       ")
   escreval(vprg_tabela[2,6]," ")
   escreva(vprg_tabela[3,1],"     ")
   escreva(vprg_tabela[3,2],"            ")
   escreva(vprg_tabela[3,3],"                   ")
   escreva(vprg_tabela[3,4],"                       ")
   escreva(vprg_tabela[3,5],"                       ")
   escreval(vprg_tabela[3,6]," ")
   escreva(vprg_tabela[4,1],"     ")
   escreva(vprg_tabela[4,2],"            ")
   escreva(vprg_tabela[4,3],"                   ")
   escreva(vprg_tabela[4,4],"                       ")
   escreva(vprg_tabela[4,5],"                       ")
   escreval(vprg_tabela[4,6]," ")
fimprocedimento

procedimento pprg_Menu
inicio
   enquanto (vprg_escolhaMenu <> 3) faca
      escreval("O que deseja fazer?")
      escreval("1-Ver Tabela    2- Inserir Jogo    3-Sair")
      leia(vprg_escolhaMenu)
      limpatela
      escolha(vprg_escolhaMenu)
      caso 1
         pprg_verTabela
      caso 2
         pprg_novoJogo
      caso 3
         escreva("Visualização encerrada!")
      outrocaso
         escreva("Opção inválida!")
      fimescolha
   fimenquanto
fimprocedimento

procedimento pprg_novoJogo
var
   vprg_novoJogo : vetor [1..6] de inteiro
   vprg_Jogo     : inteiro
inicio
   vprg_jogo := 4
   vprg_max := 24
   vprg_min := 10
   vprg_recMin := 1
   vprg_recMax := 1
   se (vprg_escolhaMenu = 2) entao
      vprg_inserir := "sim"
   fimse
   escolha(vprg_inserir)
   caso "sim"
      enquanto (vprg_inserir = "sim") faca
         vprg_jogo := vprg_jogo + 1
         se (vprg_placar > vprg_max) entao
            vprg_max := vprg_placar
            vprg_recMax := vprg_recMax + 1
         senao
            vprg_max := vprg_max
         fimse
         escreva("Qual foi o placar? ")
         leia(vprg_placar)
         se (vprg_placar > vprg_max) entao
            vprg_max := vprg_placar
            vprg_recMax := vprg_recMax + 1
         senao
            vprg_max := vprg_max
         fimse
         se (vprg_placar < vprg_min) entao
            vprg_min := vprg_placar
            vprg_recMin := vprg_recMin + 1
         senao
            vprg_min := vprg_min
         fimse
         pprg_cabecalho
         vprg_novoJogo[1] := vprg_Jogo
         vprg_novoJogo[2] := vprg_placar
         vprg_novoJogo[3] := vprg_min
         vprg_novoJogo[4] := vprg_max
         vprg_novoJogo[5] := vprg_recMin
         vprg_novoJogo[6] := vprg_recMax
         escreva(vprg_novoJogo[1],"     ")
         escreva(vprg_novoJogo[2],"            ")
         escreva(vprg_novoJogo[3],"                   ")
         escreva(vprg_novoJogo[4],"                       ")
         escreva(vprg_novoJogo[5],"                       ")
         escreval(vprg_novoJogo[6]," ")
         escreva("Deseja inserir um novo jogo? ")
         leia(vprg_inserir)
      fimenquanto
   caso "não"
      escreval("Visualização encerrada!")
   outrocaso
      escreval("Opção inválida!")
   fimescolha
fimprocedimento

procedimento pprg_verTabela
inicio
   se (vprg_inserir = "sim") entao
      pprg_cabecalho
      pprg_tabela
      pprg_novoJogo
      senao
      pprg_cabecalho
      pprg_tabela

   fimse
fimprocedimento


Inicio
   pprg_Menu

   pprg_novoJogo
Fimalgoritmo