#Nome: João Lucas (www.linkedin.com/in/joaolataide)
#Atividade sugerida pelo professor Wandré (https://www.linkedin.com/in/wandreveloso/)

x <- c(1, 2, 3)
ind <- c(FALSE, TRUE, FALSE)
x[!ind] # ! = não igual

library(dslabs)
data(na_example)

str(na_example)
mean(na_example)
ind <- is.na(na_example)
sum(ind)
mean(na_example[!ind]) #Média sem usar os NA

city2 <- c("pequim", "lagos", "paris", "rio de janeiro", "san juan", "toronto")
temp2 <- c(35, 88, 42, 84, 81, 30)
temp2 <- 5/9*(temp2-32)
city_temps2 <- data.frame(city2, temp2)

x <- c(1:100)
sum(1/x^2)

#Exercício
x <- c(2, 43, 27, 96, 18)

name <- c("M","A","N","O")
dista <- c(0.8, 3.1, 2.8, 4.0)
tempo <- c(10, 30, 40, 50)
