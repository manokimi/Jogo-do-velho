# Exercícios para praticar lógica em Portugol

A seguir estão exercícios práticos, em ordem crescente de dificuldade, para treinar raciocínio lógico com Portugol.

## 1. Soma de dois números
**Objetivo:** usar entrada, processamento e saída.

Escreva um algoritmo que leia dois números e mostre a soma deles.
---
Algoritmo "somadedoisnumeros"
Var
   n1,n2:inteiro
procedimento soma(x,y:inteiro)
var
   s:inteiro
Inicio
   s <- x + y
   Escreval("A soma de", x, " e", y," é", s)
Fimprocedimento
Inicio
   Escreva("Insira o 1º número: ")
   Leia(n1)
   Escreva("Insira o 2º número: ")
   Leia(n2)
   soma(n1,n2)
Fimalgoritmo
---

## 2. Verificar número maior
**Objetivo:** usar estrutura condicional.

Leia dois números inteiros e escreva qual deles é maior. Se forem iguais, mostre uma mensagem informando isso.
---
Algoritmo "verificarmaior"
Var
   n1,n2:inteiro
Inicio
   Escreva("Insira o 1º número: ")
   Leia(n1)
   Escreva("Insira o 2º número: ")
   Leia(n2)
   Se n1 > n2 entao
    Escreval(n1," é maior que",n2)
   Senao
    Se n2 > n1 entao
     Escreval(n2," é maior que",n1)
     Senao
     Escreval(n1," é igual a",n2)
    FimSe
   FimSe  
Fimalgoritmo
---

## 3. Par ou ímpar
**Objetivo:** trabalhar com condição e módulo.

Leia um número e mostre se ele é par ou ímpar.

---
Algoritmo "parouimpar"
Var
   n:inteiro
   p:caractere
funcao parouimpar(x:inteiro):caractere
Inicio
   Se (x % 2 = 0) entao
      Retorne("par")
   Senao
      Retorne("impar")
   FimSe
Fimfuncao
Inicio
   Escreva("Insira o número: ")
   Leia(n)
   p <- parouimpar(n)
   Escreval("O número",n,"é ",p)
Fimalgoritmo
---

## 4. Tabuada
**Objetivo:** usar repetição.

Leia um número inteiro e mostre a tabuada desse número de 1 a 10.

---
Algoritmo "tabuada"
Var
   n,c:inteiro
Inicio
   Escreva("Insira o número: ")
   Leia(n)
   para c <- 1 ate 10 faca
      Escreval(n," x",c," =",n*c)
   Fimpara
FimAlgoritmo
---

## 5. Soma dos números de 1 a N
**Objetivo:** usar laço de repetição.

Leia um número N e calcule a soma de todos os números de 1 até N.

---
Algoritmo "somannumeros"
Var
   n,c,s:inteiro
Inicio
    s <- o
   Escreva("Insira um número: ")
   Leia(n)
   para c <-1 ate n faca
      s <- s + c
   Fimpara
   Escreval(s)
FimAlgoritmo
---

## 6. Média de notas
**Objetivo:** trabalhar com repetição e acumulador.

Leia 5 notas de um aluno e mostre:
- a média;
- se o aluno foi aprovado (média >= 7);
- se foi reprovado.

---
Algoritmo"medianotas"
Var
cont,c,soma,n: inteiro
media:real 
procedimento aprovado(x:real)
Inicio
    Se x >= 7 entao
        Escreval("Aluno aprovado com a média",x)
    Senao
        Escreval("Aluno reprovado com a média",x) 
Fimprocedimento
Inicio
cont <- 1
para c <- 1 ate 5 faca
    Escreva("Insira a",c,"ªnota do aluno: ")
    Leia(n)
    soma <- soma + n
    cont <- cont + 1
Fimpara
media <- soma/5
aprovado(media)
---

## 7. Contar números positivos
**Objetivo:** usar contador e condição.

Leia 10 números e conte quantos são positivos, quantos são negativos e quantos são iguais a zero.

---
Algoritmo "contador"
Var
n,cont,p,m,z:inteiro
Inicio
p <- 0
m <- 0
z <- 0
para cont <- 1 ate 10 faca
    Escreva("Insira o",cont,"º número:")
    Leia(n)
    Se n > 0 entao
        p <- p + 1
    Senao
        Se n < 0 entao
         m <- m + 1
        Senao
            z <- z + 1
        FimSe
    FimSe
Fimpara
Escreval("Números positivos:",p)
Escreval("Números negativos:",m)
Escreval("Números iguais a zero:",z)
FimAlgoritmo 
---

## 8. Verificar se um número é primo
**Objetivo:** aplicar lógica de divisão.

Leia um número e diga se ele é primo ou não.

Dica: um número primo só é divisível por 1 e por ele mesmo.

---
Algoritmo "numprimo"
Var
   n,l,cont:inteiro

Inicio
   Escreva("Insira o número: ")
   Leia(n)
   Se(n > 1) entao
      para l <- 1 ate n faca
         Se (n % l = 0) entao
            cont <- cont + 1
         FimSe
      Fimpara
      Se (cont <=2) entao
         Escreval("O número",n," é primo!")
      Senao
         Escreval("O número",n," não é primo!")
      FimSe
   Senao
        Escreval("Numeros menores ou iguais a 1 não são primos!")
   FimSe
Fimalgoritmo
---

## 9. Inverter uma palavra
**Objetivo:** trabalhar com vetor de caracteres.

Leia uma palavra e mostre-a invertida.

Exemplo:
- casa → asac

---
Algoritmo "palavrainvertida"
Var
   n,nome: caractere
   i: inteiro
Inicio
   nome <- ""
   Escreva("Insira o seu nome: ")
   Leia(n)
   para i<-compr(n) ate 1 passo -1 faca
      nome <- nome + copia(n,i,1)
   FimPara
   Escreval("O seu nome invertido é ",nome)
FimAlgoritmo
---

## 10. Jogo de adivinhação
**Objetivo:** combinar condições e repetição.

O programa escolhe um número aleatório entre 1 e 10. O usuário tenta adivinhar.

O programa deve:
- informar se o chute foi maior ou menor que o número sorteado;
- repetir até acertar;
- mostrar quantas tentativas foram necessárias.

---
Algoritmo "adivinhacao"
Var
   n,numero_sorteado,tent:inteiro
Inicio
   tent <- 0
   numero_sorteado <- randi(11)
   Repita
      Escreva("Insira um número entre 0 e 10: ")
      Leia(n)
      Se(n > 10) ou (n < 0) entao
         Escreval("Erro! Somente números entre 0 e 10.")
         tent <- tent + 1
      Senao
         Se(n > numero_sorteado) entao
            Escreval("Número sorteado <",n)
            tent <- tent + 1
         Senao
            Se(n < numero_sorteado) entao
               Escreval("Número sorteado >",n)
               tent <- tent + 1
            FimSe
         FimSe
      FimSe
   Ate(n = numero_sorteado)
   Escreval("Párabens! Acertou o número sorteado:",numero_sorteado)
   Escreval("Total de tentativas",tent)
FimAlgoritmo 
---

## 11. Encontrar o maior valor em um vetor
**Objetivo:** usar vetor e lógica de comparação.

Leia 5 números em um vetor e mostre o maior deles.

---
Algoritmo "maiorvetor"
Var
   v:vetor [1..5] de inteiro
   i,n,maior:inteiro
Inicio
   maior <- 0
   para i <- 1 ate 5 faca
      Escreva("Insira o",i,"º número: ")
      Leia(n)
      v[i] <- n
      Se(n > maior) entao
         maior <- n
      FimSe
   FimPara
   Escreval("O maior valor é",maior)
   FimAlgoritmo

---

## 12. Ordenar três números
**Objetivo:** usar estrutura condicional para organização.

Leia três números e mostre-os em ordem crescente.

---
Algoritmo "organizarnumeros"
Var
   v: vetor [1..3] de inteiro
   c,aux: inteiro
Inicio
   para c <- 1 ate 3 faca
      Escreva("Insira o",c,"º número: ")
      Leia(v[c])
   Fimpara

   Escreval()

   Se (v[1] > v[2]) entao
      aux <- v[1]
      v[1] <- v[2]
      v[2] <- aux
   FimSe

   Se (v[1] > v[3]) entao
      aux <- v[1]
      v[1] <- v[3]
      v[3] <- aux
   FimSe

   Se (v[2] > v[3]) entao
      aux <- v[2]
      v[2] <- v[3]
      v[3] <- aux
   FimSe
   
   Escreva("Valores em ordem crescente:")
   para c <- 1 ate 3 faca
      Escreva(v[c])
   Fimpara
FimAlgoritmo
---
## 13. Calculadora simples
**Objetivo:** praticar seleção múltipla.

Leia dois números e a operação desejada (+, -, *, /). Mostre o resultado da operação escolhida.

---
Algoritmo "calculadora"
Var
   n1,n2,o: inteiro
   r:caractere
   repetir:logico

Inicio
   repetir <- verdadeiro
   Escreval("-----------------------------")
   Escreval("    Calculadora simples   ")
   Escreval("-----------------------------")
   Repita
      Escreva("Insira o primeiro número: ")
      Leia(n1)
      Escreva("Insira o segundo número: ")
      Leia(n2)
      Escreval("Selecione a operação desejada")
      Escreval("1. +")
      Escreval("2. -")
      Escreval("3. X")
      Escreval("4. /")
      Leia(o)
      Escolha o
         LimpaTela
      Caso 1
         Escreval(n1," +",n2,"= ",n1+n2)
      Caso 2
         Escreval(n1," -",n2,"= ",n1-n2)
      Caso 3
         Escreval(n1," X",n2,"= ",n1*n2)
      Caso 4
         Repita
            Se (n2 = 0) entao
               Escreval("Erro! Não existe divisão por zero.")
               Escreva("Insira um segundo número válido (diferente de 0): ")
               Leia(n2)
            FimSe
         Ate (n2 <> 0)
         Escreval(n1, " /", n2, "= ", n1 / n2:4:2)
      Fimescolha
      Escreva("Deseja realizar outra operação? [S/N] ")
      Leia(r)
      Se(maiusc(r)="N") entao
         repetir <- falso
      FimSe
   Ate(repetir= falso)
FimAlgoritmo
---
## 14. Fatorial
**Objetivo:** usar repetição com acumulador.

Leia um número N e calcule o fatorial de N.

Exemplo:
- 5! = 5 x 4 x 3 x 2 x 1 = 120

---
Algoritmo "fatorial"
Var
f,n,c:inteiro
Inicio 
f <- 1
Escreva("Insira o número: ")
Leia(n)
para c <- 1 ate n faca
    f <- f*c
fimpara
Escreval("O fatorial de",n,"! é",f)
Fimalgoritmo
---

## 15. Verificar se uma palavra é palíndromo
**Objetivo:** combinar lógica e vetor.

Leia uma palavra e verifique se ela é um palíndromo.

Exemplo:
- arara → é palíndromo
- computador → não é palíndromo

---
Algoritmo "palindromo"
Var
n,palindromo:caractere
l:inteiro
Inicio
palindromo <- ""
Escreva("Inisra uma palavra palíndromo: ")
Leia(n)
para l <- compr(n) ate 1 passo -1 faca
    palindromo <- palindromo + copia(n,l,1)
Fimpara
Se(palindromo = n) entao
    Escreval("A palavra ", n, " é palindromo")
Senao
    Escreval("A palavra ", n, " não é palíndromo")
FimSe
FimAlgoritmo
--


