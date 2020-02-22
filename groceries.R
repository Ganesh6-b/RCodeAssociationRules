setwd("F://R//Rfiles")
groceries <- read.csv("groceries.csv")
View(groceries)


str(groceries)

#convert catogorical variable to dummy variable
library(dummies)

a <- dummy(groceries$citrus.fruit)
class(a)
b <- dummy(groceries$semi.finished.bread)

c <- dummy(groceries$margarine)

d <- dummy(groceries$ready.soups)

data_groceries <- data.frame(a,b,c,d)
View(data_groceries)

rules <- as(data_groceries, "transactions")
rules
groceries <- as.matrix(groceries)
table(groceries$semi.finished.bread)