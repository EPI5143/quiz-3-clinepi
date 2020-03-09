#Jessica McCallum 8417055#
#Quiz 3#

install.packages("tidyverse")
library(tidyverse)
library(datasets)
mpg

#Question 1#
view(mpg)
nrow(mpg)
ncol(mpg) 
dim(mpg)

#234 observations#
#11 variables #

library(ggplot2)
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy))

#Question 2#
library(ggplot2)
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, colour=class))

#Question 3#
library(ggplot2)
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, colour=class, shape=drv))

#Question 4#
library(ggplot2)
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, colour=class, shape=drv, 
                                              size=cyl))

#Question 5#
library(ggplot2)
Output<-ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, colour=class, shape=drv, 
                                                      size=cyl))
print(Output+ labs(y="Highway fuel efficiency (miles per gallon)", 
        x = "Engine Size (displacement in L)") + 
        ggtitle("Highway fuel efficiency vs engine size for classes (colour), 
        drive train (shape), and cylinder number (size) "))



