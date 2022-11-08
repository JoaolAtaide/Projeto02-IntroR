#Nome: João Lucas (www.linkedin.com/in/joaolataide)
#Atividade sugerida pelo professor Wandré (https://www.linkedin.com/in/wandreveloso/)

murders %>% filter(region == "West") %>% 
  summarize(range = quantile(rate, c(0, 0.5, 1)))
murders <- mutate(murders, rate = murders$total/murders$population)

min(murders$rate)

murders %>% filter(region =="West") %>% summarize(min(rate))
