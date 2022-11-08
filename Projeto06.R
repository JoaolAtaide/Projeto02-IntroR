#Nome: João Lucas (www.linkedin.com/in/joaolataide)
#Atividade sugerida pelo professor Wandré (https://www.linkedin.com/in/wandreveloso/)
#-------------------------------------#

#scatter plot
x <- murders$population/10^6
y <- murders$total
plot(x, y) 

#histograma
murders <- mutate(murders, rate = total / population*10^6)
hist(murders$rate)

#Boxplot
boxplot(rate~region, data = murders)

#-------------------------------------#
z <- log10(murders$population)
m <- log10(murders$total)
plot(z,m)

hist(murders$population)

boxplot(population~region, data = murders)

murders <- mutate(murders, rate = total / population * 10^5)
s <- murders %>% filter(region =="West") %>% summarize(minimun = min(rate), median = median(rate), maximum = max(rate))

#ccomo calcular média da taxa de assassinatos
mean(murders$rate) #Não está correto
us_murder_rate <- murders %>% summarize(rate = sum(total) / sum(population) * 10^5) #correto
