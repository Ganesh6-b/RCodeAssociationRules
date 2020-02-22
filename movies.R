setwd("F://R//Rfiles")
movies <- read.csv("my_movies.csv")
View(movies)

mydata <- movies[,-c(1:5)]
View(mydata)

mydata <- as.matrix(mydata)

rules <- as(mydata, "transactions")

inspect(rules[1:5])
#apriori algorithm
rules2 <- apriori(mydata, parameter = list(support = 0.002, confidence = 0.5))

inspect(rules2[1:5])
