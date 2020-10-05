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

procedimento pprg_Menu
inicio
   enquanto (vprg_escolhaMenu <> 3) faca
      escreval("O que deseja fazer?")
      escreval("1-Ver Tabela    2- Inserir Jogo    3-Sair")
      leia(vprg_escolhaMenu)
      limpatela
      escolha(vprg_escolhaMenu)
      caso 1
         pprg_tabelaBase
      caso 2
         pprg_inserirJogo
      caso 3
         escreva("Visualização encerrada!")
      outrocaso
         escreva("Opção inválida!")
      fimescolha
   fimenquanto
fimprocedimento


procedimento pprg_tabelaBase
inicio
   escreval("+-----------------------------------------------------------------------------------------------------+")
   escreval("|---------------------------------------Tabela de resultados:-----------------------------------------|")
   escreval("+-----------------------------------------------------------------------------------------------------+")
   escreval("| Jogo | Placar | Mín da Temporada | Máx da temporada | Quebra de recorde mín | Quebra de recorde máx |")
   escreval("+------+--------+------------------+------------------+-----------------------+-----------------------+")
   escreval("|  1   |   12   |        12        |        12        |           0           |           0           |")
   escreval("+------+--------+------------------+------------------+-----------------------+-----------------------+")
   escreval("|  2   |   24   |        12        |        24        |           0           |           1           |")
   escreval("+------+--------+------------------+------------------+-----------------------+-----------------------+")
   escreval("|  3   |   10   |        10        |        24        |           1           |           1           |")
   escreval("+------+--------+------------------+------------------+-----------------------+-----------------------+")
   escreval("|  4   |   24   |        10        |        24        |           1           |           1           |")
   escreval("+------+--------+------------------+------------------+-----------------------+-----------------------+")
fimprocedimento

procedimento pprg_inserirJogo
inicio
   vprg_jogo := 4
   vprg_max := 24
   vprg_min := 10
   vprg_recMin := 1
   vprg_recMax := 1

   escreva("Deseja inserir um novo jogo? ")
   leia(vprg_inserir)
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
         pprg_novaLinha
      fimenquanto
   caso "não"
      escreval("Visualização encerrada!")
   outrocaso
      escreval("Opção inválida!")
fimescolha


fimprocedimento

procedimento pprg_novaLinha
inicio
   escreval("+-----------------------------------------------------------------------------------------------------+")
   escreval("| Jogo | Placar | Mín da Temporada | Máx da temporada | Quebra de recorde mín | Quebra de recorde máx |")
   escreval("+------+--------+------------------+------------------+-----------------------+-----------------------+")
   escreval("| ",vprg_jogo,"   |  ",vprg_placar,"   |       ",vprg_min,"        |       ",vprg_max,"        |          ",vprg_recMin,"           |          ",vprg_recMax,"           |")
   escreval("+------+--------+------------------+------------------+-----------------------+-----------------------+")
   escreva("Deseja inserir um novo jogo? ")
   leia(vprg_inserir)

fimprocedimento

Inicio
   pprg_Menu
Fimalgoritmo