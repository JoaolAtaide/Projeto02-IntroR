#Nome: João Lucas (www.linkedin.com/in/joaolataide)
#Atividade sugerida pelo professor Wandré (https://www.linkedin.com/in/wandreveloso/)

install.packages("tidyverse")
library(tidyverse)
library(ggplot2)

ggplot(data=mpg) + geom_point(mapping = aes(x = displ,y = hwy))

ggplot(data=mpg)

ggplot(data=mpg) + geom_point(mapping = aes(x = cyl,y = hwy))

ggplot(data=mpg) + geom_point(mapping = aes(x = class,y = drv))

ggplot(data=mpg) + geom_point(mapping = aes(x = displ,y = hwy, color = class)) #Fica com cor

ggplot(data=mpg) + geom_point(mapping = aes(x = displ,y = hwy, shape = class)) #Só tem 6 shapes.

ggplot(data=mpg) + geom_point(mapping = aes(x = displ,y = hwy, alpha = class)) #Muda transparência, Difícil de ver

ggplot(data=mpg) + geom_point(mapping = aes(x = displ,y = hwy, size = class)) #Muda tamanho, Também ruim de ver

ggplot(data=mpg) + geom_point(mapping = aes(x = displ,y = hwy), color = "blue")

ggplot(data=mpg) + geom_smooth(mapping=aes(x=displ, y=hwy, linetype=drv))

ggplot(data=mpg) + geom_smooth(mapping=aes(x=displ, y=hwy))

ggplot(data=mpg) + geom_point(mapping = aes(x = displ,y = hwy)) + geom_smooth(mapping=aes(x=displ, y=hwy))

ggplot(data=mpg) + geom_point(mapping = aes(x = displ,y = hwy)) + geom_smooth(mapping=aes(x=displ, y=hwy), se=FALSE)

ggplot(data=mpg) + geom_smooth(mapping=aes(x=displ, y=hwy, line=drv), se=FALSE) + geom_point(mapping = aes(x = displ,y = hwy))

ggplot(data=mpg) + geom_smooth(mapping=aes(x=displ, y=hwy, line=drv, color=drv), se=FALSE) + geom_point(mapping = aes(x = displ,y = hwy, color=drv))

ggplot(data=mpg) + geom_smooth(mapping=aes(x=displ, y=hwy), se=FALSE) + geom_point(mapping = aes(x = displ,y = hwy, color=drv))

ggplot(data=mpg) + geom_smooth(mapping=aes(x=displ, y=hwy, linetype=drv), se=FALSE) + geom_point(mapping = aes(x = displ,y = hwy, color=drv))

ggplot(data=mpg) + geom_point(mapping = aes(x = displ,y = hwy, color=drv)) + geom_point(mapping = aes(x = displ,y = hwy, color=drv), colour='white', pch=21, size=3)

