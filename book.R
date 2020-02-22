setwd("F://R//files")
install.packages("arules")
install.packages("arulesViz")
library(arules)
library(arulesViz)
book <- read.csv("book.csv")
View(book)
books <- as(as.matrix(book), "transactions")
?as
inspect(books[1:5])

#apirori algorithm
book <- as.matrix(book)
rules <- apriori(book, parameter = list(support = 0.002, confidence = 0.5))
inspect(rules[1:10])
attributes(rules)

inspect(rules[1:10])
plot(rules)

#changing parameters

rules2 <- apriori(book, parameter = list(support = 0.001, confidence = 0.8))
inspect(rules2[1:10])
