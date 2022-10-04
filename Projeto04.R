#Nome: João Lucas (www.linkedin.com/in/joaolataide)
#Atividade sugerida pelo professor Wandré (https://www.linkedin.com/in/wandreveloso/)

west <- murders$region == "West"
murders_rate <- murders$total / murders$population *100000
safe <- murders_rate <= 1
index <- safe & west
east <- murders$region == "East"
index2 <- safe & east
murders$state[index]

x <- c(FALSE,TRUE,FALSE,TRUE,TRUE,FALSE)
which(x)
index3 <- which(murders$state == "Massachusetts")

index4 <- match(c("New York", "Florida", "Texas"), murders$state)
murders$state[index4]

x <- c("a","b","c","d","e")
y <- c("a","d","f")
y %in% x

c("Boston", "Dakota", "Washington") %in% murders$state

low <- murders_rate < 1
under <- murders_rate & low
which(low)
under2 <- murders$state[low]
NE <- murders$region == "Northeast"
SafeNE <- low & NE

UM <- murders_rate < mean(murders_rate)
murders$state[UM]
sum(UM)

abbs <- c("AK", "MI", "IA")
abbs2 <- match(abbs, murders$abb)
murders$state[abbs2]

abbs3 <- c("MA","ME","MI","MO","MU")
abbs4 <- abbs3 %in% murders$abb
ind <- which(!abbs4)
abbs3[ind]
