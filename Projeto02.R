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
