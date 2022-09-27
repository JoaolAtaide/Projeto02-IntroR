#Nome: João Lucas (www.linkedin.com/in/joaolataide)
#Atividade sugerida pelo professor Wandré (https://www.linkedin.com/in/wandreveloso/)

codes <- c(380, 124, 818)
class(codes)

country <- c("italy", "canada", "egypt")
class(country)

codes1 <- c(italy = 380, canada = 124, egypt = 818)
codes2 <- c("italy" = 380, "canada" = 124, "egypt" = 818)

#Codes vai receber os dados de country
names(codes) <- country

seq(1, 10)
seq(1, 10, 2)
1:10
seq(1, 10, 0.1)
seq(10, 1, -0.1)

codes[2]                      #pega o segundo elemento
codes[c(1, 3)]                #Pega o primeiro e terceiro elemento
codes[]                       #Pega todos os elementos
codes[1:2]                    #Pega do primeiro ATÉ o segundo
codes["canada"]               #Pega elemento usando o nome
codes[c("egypt", "italy")]    #Pega elementos usando o nome, Mostrando na ordem requerida

v <- c(1, "canada", 3)
class(v)
print(v)

z <- 1:5
y <- as.character(z) #O contrário é "as.numeric()"
class(y)
class(z)
n <- c("1", "b", "3")
as.numeric(n)


#Exercícios

temp <- c(50, 75, 90, 100, 150)
city <- c("Brasilia", "Paris", "Japonvar", "Itu", "Roma")
names(temp) <- city
temp[1:3]
temp[c("Paris", "Itu")]

x <- c(13:71)
length(x)
sum(x)
sum(x[1:3])
sum(x[c(1:59, 2)])

Seven <- seq(0, 300, 7)
Impar <- seq(1, 100, 2)
Exe <- seq(6,55, 4/7)

Exe2 <- seq(0, 100, length.out = 5)
h <- vector("numeric", length = 15)          #Default numeric é 0
c <- vector("character", length = 15)        #Default Character é ""
l <- vector("logical", length = 15)          #Default Logical é FALSE

#13/09

#Matrizes
e <- matrix(ncol=2, nrow=2, data = 1:4)
e[2.1] #Chama um valor da matriz
e[2,]
e[,2]
e[,1:2]
e[1:2,1]
as.data.frame(e)

#Listas
i <- list(2, 3, "c", "d", FALSE, 2+3i, 4+2i)
class(i)
i[1]
class(i[1])

#Ordenação de dados
library(dslabs)
data(murders)
sort(murders$total)
x1 <- c(31, 4, 15, 92, 65)
x1
sort(x1)
index <- order(x1)
index
x1[index]
order(x1) #Coloca o lugar do número menor ao maior (Ex: 4 é o menor número, Então o primeiro número é 2 já que 4 está no segundo lugar)
rank(x1)  #Coloca o rank do número em ordem crescente

murders$state[1:10]
murders$abb[1:10]
index <- order(murders$total)
murders$abb[index]
murders$state[index]
max(murders$total)
i_max <- which.max(murders$total)
i_max #California é o 5 estado na fila, Oque tem mais assassinatos
murders$state[i_max]

#Exercício
pop <- murders$population
pop <- sort(pop)
pop[1]
ord <- order(pop)
ord[1]
murders[order(pop)[1]]

which.min(murders$total)
which.min(murders$population)
i <- which.min(murders$population)
states <- murders$state
states[i]
temp <- c(35,88,42,84,81,30)
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")
city_temps <- data.frame(temp, city)
states <- murders$state
ranks <- rank(states)
my_df <- data.frame(ranks, states)

ind <- order(murders$population)
my_df2 <- data.frame(states = states[ind], ranks[ind])
