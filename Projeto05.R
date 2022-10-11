#Nome: João Lucas (www.linkedin.com/in/joaolataide)
#Atividade sugerida pelo professor Wandré (https://www.linkedin.com/in/wandreveloso/)

install.packages("dplyr")
library("dplyr")
library("dslabs")

data("murders")
murders <- mutate(murders, rate = total / population * 100000) #adiciona nova coluna no data.frame
filter(murders, rate <= 0.71) #Filter - Filtra linhas

new_table <- select(murders, state, region, rate) #Select - Seleciona colunas
filter(new_table, rate <= 0.71)
murders %>% select(state, region, rate) %>% filter(rate <= 0.71)

grades <- data.frame(names = c("Jao", "Jes", "Jo", "Ju"),
                     exam_1 = c(95L, 80L, 90L, 85L),
                     exam_2 = c(90L, 85L, 85L, 90L)) # Use L para forçar a ser Inteiro (Só funciona se todos tiverem o L)
class(grades)
class(grades$names)
class(grades$exam_1)
class(grades$exam_2)

x <- c(88, 100, 83, 92, 94)
rank(x)  #Rank normal
rank(-x) #Rank dos negativos

rate <- murders_rate
rank <- rank(rate)
rank2 <- rank(-rate)
murders <- mutate(murders, rank)
murders <- mutate(murders, rank2)

select(murders, state, abb)

filter(murders, rank2 <= 5) #Os 5 estados mais perigosos

no_south <- filter(murders, region != "South")
nrow(no_south)

murders_nw <- filter(murders, region %in% c("Northeast", "West"))
filter(murders_nw, rate < 1)

my_states <-  filter(murders_nw, rate < 1)
select(my_states, state, rate, rank)

#----------------------------------------#
data("murders")
my_states <- murders %>% mutate(murders, rate, rank) %>% filter(region %in% c("Northeast", "West"), rate < 1) %>% select(state, rate, rank)

                                                    