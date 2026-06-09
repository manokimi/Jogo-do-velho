Analisa o seguinte código:
Algoritmo "jogovelha00"
Var
   v:vetor [1..3,1..3] de caractere
   i,j,n,m,x,o: inteiro
   terminou: logico

procedimento logicavelha(var l: inteiro; var c: inteiro; var vv: vetor [1..3,1..3] de caractere; var fim:logico)
Inicio
   para l <- 1 ate 3 faca
   //Verificar linha
      Se(vv[l,1]= "X") e (vv[l,2]="X") e (vv[l,3]="X") entao
         Escreval("Parabéns [X] campeão")
         fim <- verdadeiro
      Senao
         Se(vv[l,1]= "O") e (vv[l,2]="O") e (vv[l,3]="O") entao
            Escreval("Parabéns [O] campeão")
            fim <- verdadeiro
         Senao
         //Verificar coluna
            Se(vv[1,l]= "X") e (vv[2,l]="X") e (vv[3,l]="X") entao
               Escreval("Parabéns [X] campeão")
               fim <- verdadeiro
            Senao
               Se(vv[1,l]= "O") e (vv[2,l]="O") e (vv[3,l]="O") entao
                  Escreval("Parabéns [O] campeão")
                  fim <- verdadeiro
               FimSe
            FimSe
         FimSe
      FimSe
   Fimpara

   // Verificar diagonal principal
   Se(vv[1,1]="X") e (vv[2,2]="X") e (vv[3,3]="X") entao
      Escreval("Parabéns [X] campeão")
      fim <- verdadeiro
   Senao
      Se(vv[1,1]="O") e (vv[2,2]="O") e (vv[3,3]="O") entao
         Escreval("Parabéns [O] campeão")
         fim <- verdadeiro
      Senao
      // Verificar diagonal secundária
         Se(vv[1,3]="X") e (vv[2,2]="X") e (vv[3,1]="X") entao
            Escreval("Parabéns [X] campeão")
            fim <- verdadeiro
         Senao
            Se(vv[1,3]="O") e (vv[2,2]="O") e (vv[3,1]="O") entao
               Escreval("Parabéns [O] campeão")
               fim <- verdadeiro
            FimSe
         Fimse
      FimSe
   FimSe
Fimprocedimento

procedimento mostrarjogo(var l:inteiro; var c: inteiro; var vv: vetor [1..3,1..3] de caractere)
Inicio
   LimpaTela
   para l <- 1 ate 3 faca
      Escreval("+---+---+---+")
      para c <- 1 ate 3 faca
         Escreva("| ",vv[l,c],"|")
      FimPara
      Escreval("")
   Fimpara
FimProcedimento

Inicio
   m <- 1
   terminou <- falso
   para i <- 1 ate 3 faca
      Escreval("+---+---+---+")
      para j <- 1 ate 3 faca
         v[i,j] <- numpcarac(m)
         m <- m+1
         Escreva("| ",v[i,j],"|")
      FimPara
      Escreval("")
   Fimpara

   Repita
      // Jogar o jogador "X"
      Escreva("Vai jogar [x] em qual posição? ")
      Leia(x)
      Se(x>=1) e (x<=9) entao
         para i <- 1 ate 3 faca
            para j <-1 ate 3 faca
               Se (v[i,j] = numpcarac(x)) entao
                  Se (v[i,j] = "X") ou (v[i,j] = "O") entao
                  Senao
                     v[i,j] <- "X"
                  FimSe
               FimSe
            Fimpara
         Fimpara
      FimSe

      logicavelha(i,j,v)
      mostrarjogo(i,j,v)

      Se (terminou = falso) entao
         // Jogar o jogador "O"
         Escreva("Vai jogar [o] em qual posição? ")
         Leia(o)
         Se(o>=1) e (o<=9) entao
            para i <- 1 ate 3 faca
               para j <-1 ate 3 faca
                  Se(v[i,j] = numpcarac(o)) entao
                     Se(v[i,j] = "X") ou (v[i,j] = "O") entao
                        Escreval("Posição já ocupada")
                     Senao
                        v[i,j] <- "O"
                     FimSe
                  FimSe
               Fimpara
            Fimpara
         FimSe

         logicavelha(i,j,v)
         mostrarjogo(i,j,v)
      FimSe

   Ate(terminou = verdadeiro)
Fimalgoritmo

