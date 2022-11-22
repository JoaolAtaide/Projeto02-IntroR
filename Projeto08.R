#Nome: João Lucas (www.linkedin.com/in/joaolataide)
#Atividade sugerida pelo professor Wandré (https://www.linkedin.com/in/wandreveloso/)

install.packages("tidyverse")
library(tidyverse)

ggplot(data=mpg) + geom_point(mapping = aes(x = displ,y = hwy))

ggplot(data=mpg)

ggplot(data=mpg) + geom_point(mapping = aes(x = cyl,y = hwy))

ggplot(data=mpg) + geom_point(mapping = aes(x = class,y = drv))

ggplot(data=mpg) + geom_point(mapping = aes(x = displ,y = hwy, color = class)) #Fica com cor

ggplot(data=mpg) + geom_point(mapping = aes(x = displ,y = hwy, shape = class)) #Só tem 6 shapes.
