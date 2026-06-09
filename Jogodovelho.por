Algoritmo "jogodovelho"
Var
   v: vetor [1..3,1..3] de caractere
   i,j,m: inteiro
   x,o: inteiro
   terminou: logico
   jogadas: inteiro
   valido: logico

Procedimento VerificaVelha()
Var
   l : inteiro
Inicio
   //Linhas
   para l <- 1 ate 3 faca
      Se(v[l,1] = v[l,2]) e (v[l,2] = v[l,3]) entao
         Se(v[l,1]= "X") ou (v[l,1]="O") entao
            Escreval("Parabéns [",v[l,1],"] campeão!")
            terminou <- verdadeiro
         Fimse
      FimSe
   Fimpara
   // Colunas
   Para l <- 1 Ate 3 Faca
      Se(v[1,l] = v[2,l]) e (v[2,l] = v[3,l]) entao
         Se(v[1,l] = "X") ou (v[1,l] ="O") entao
            Escreval("Parabéns [", v[1,l],"] campeão!")
            terminou <- verdadeiro
         FimSe
      FimSe
   Fimpara
   // Diagonal Principal
   Se (v[1,1] = v[2,2]) e (v[2,2] = v[3,3]) entao
      Se (v[1,1] = "X") ou (v[1,1] = "O") entao
         Escreval("Parabéns [",v[1,1],"] campeão!")
         terminou <- verdadeiro
      FimSe
   FimSe
   // Diagonal Secundária
   Se(v[1,3] = v[2,2]) e (v[2,2] = v[3,1]) entao
      Se(v[1,3] = "X") ou (v[1,3] = "O") entao
         Escreval("Parabéns [",v[1,3],"] campeão!")
         terminou <- verdadeiro
      FimSe
   FimSe
Fimprocedimento

procedimento Mostrarjogo()
var
   l,c: inteiro
Inicio
   LimpaTela
   para l <- 1 ate 3 faca
      Escreval("+---+---+---+")
      para c <- 1 ate 3 faca
         Escreva("| ",v[l,c]," ")
      FimPara
      Escreval("|")
   Fimpara
   Escreval("+---+---+---+")
FimProcedimento

Inicio
   m <- 1
   jogadas <- 0
   terminou <- falso
   para i <- 1 ate 3 faca
      para j <- 1 ate 3 faca
         v[i,j] <- numpcarac(m)
         m <- m+1
      FimPara
   Fimpara

   Mostrarjogo()

   Repita
      // Jogador X
      Repita
         valido <- falso
         Escreva("Vai jogar [X] em qual posição? ")
         Leia(x)
         Se (x < 1) ou (x > 9) entao
            Escreval("Posição inválida!")
         Senao
            // Verifica se a posição já está ocupada
            para i <- 1 ate 3 faca
               para j <- 1 ate 3 faca
                  Se (v[i,j] = numpcarac(x)) entao
                     valido <- verdadeiro
                  FimSe
               Fimpara
            Fimpara
            Se (valido = falso) entao
               Escreval("Essa posição já está ocupada!")
            FimSe
         FimSe
      Ate (x>=1) e (x<=9) e (valido = verdadeiro)

      para i <- 1 ate 3 faca
         para j <-1 ate 3 faca
            Se (v[i,j] = numpcarac(x)) entao
               v[i,j] <- "X"
               jogadas <- jogadas + 1
            FimSe
         Fimpara
      Fimpara

      Mostrarjogo()
      VerificaVelha()

      Se(terminou = falso) entao
         Se(jogadas = 9) entao
            Escreval("Empate!")
            terminou <- verdadeiro
         Senao
            //Jogador O
            Repita
               valido <- falso
               Escreva("Vai jogar [O] em qual posição? ")
               Leia(o)
               Se (o < 1) ou (o > 9) Entao
                  Escreval("Posição inválida!")
               Senao
                  // Verifica se a posição já está ocupada
                  para i <- 1 ate 3 faca
                     para j <- 1 ate 3 faca
                        Se (v[i,j] = numpcarac(o)) entao
                           valido <- verdadeiro
                        FimSe
                     Fimpara
                  Fimpara
                  Se (valido = falso) entao
                     Escreval("Essa posição já está ocupada!")
                  FimSe
               FimSe
            Ate(o>=1) e (o<=9) e (valido = verdadeiro)

            para i <- 1 ate 3 faca
               para j <-1 ate 3 faca
                  Se(v[i,j] = numpcarac(o)) entao
                     v[i,j] <- "O"
                     jogadas <- jogadas + 1
                  FimSe
               Fimpara
            Fimpara

            Mostrarjogo()
            VerificaVelha()

            Se (terminou = falso) e (jogadas = 9) Entao
               Escreval("Empate!")
               terminou <- verdadeiro
            FimSe
         FimSe
      FimSe

   Ate (terminou = verdadeiro)
Fimalgoritmo